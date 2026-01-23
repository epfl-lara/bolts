; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735144 () Bool)

(assert start!735144)

(declare-fun b!7635430 () Bool)

(assert (=> b!7635430 true))

(assert (=> b!7635430 true))

(declare-fun b!7635426 () Bool)

(declare-fun e!4539015 () Bool)

(declare-fun tp!2229077 () Bool)

(assert (=> b!7635426 (= e!4539015 tp!2229077)))

(declare-fun b!7635427 () Bool)

(declare-fun res!3058111 () Bool)

(declare-fun e!4539012 () Bool)

(assert (=> b!7635427 (=> (not res!3058111) (not e!4539012))))

(declare-datatypes ((C!41152 0))(
  ( (C!41153 (val!31016 Int)) )
))
(declare-datatypes ((List!73264 0))(
  ( (Nil!73140) (Cons!73140 (h!79588 C!41152) (t!387999 List!73264)) )
))
(declare-fun s!9605 () List!73264)

(declare-fun isEmpty!41767 (List!73264) Bool)

(assert (=> b!7635427 (= res!3058111 (not (isEmpty!41767 s!9605)))))

(declare-fun b!7635428 () Bool)

(declare-fun tp!2229073 () Bool)

(declare-fun tp!2229072 () Bool)

(assert (=> b!7635428 (= e!4539015 (and tp!2229073 tp!2229072))))

(declare-fun b!7635429 () Bool)

(declare-fun e!4539011 () Bool)

(declare-fun tp_is_empty!51181 () Bool)

(declare-fun tp!2229076 () Bool)

(assert (=> b!7635429 (= e!4539011 (and tp_is_empty!51181 tp!2229076))))

(declare-fun res!3058112 () Bool)

(assert (=> start!735144 (=> (not res!3058112) (not e!4539012))))

(declare-datatypes ((Regex!20413 0))(
  ( (ElementMatch!20413 (c!1406484 C!41152)) (Concat!29258 (regOne!41338 Regex!20413) (regTwo!41338 Regex!20413)) (EmptyExpr!20413) (Star!20413 (reg!20742 Regex!20413)) (EmptyLang!20413) (Union!20413 (regOne!41339 Regex!20413) (regTwo!41339 Regex!20413)) )
))
(declare-fun r!14126 () Regex!20413)

(declare-fun validRegex!10831 (Regex!20413) Bool)

(assert (=> start!735144 (= res!3058112 (validRegex!10831 r!14126))))

(assert (=> start!735144 e!4539012))

(assert (=> start!735144 e!4539015))

(assert (=> start!735144 e!4539011))

(declare-fun e!4539013 () Bool)

(assert (=> b!7635430 (= e!4539012 (not e!4539013))))

(declare-fun res!3058113 () Bool)

(assert (=> b!7635430 (=> res!3058113 e!4539013)))

(declare-fun lt!2659671 () Bool)

(assert (=> b!7635430 (= res!3058113 (not lt!2659671))))

(declare-fun lambda!469353 () Int)

(declare-fun Exists!4567 (Int) Bool)

(assert (=> b!7635430 (= lt!2659671 (Exists!4567 lambda!469353))))

(declare-datatypes ((tuple2!69384 0))(
  ( (tuple2!69385 (_1!37995 List!73264) (_2!37995 List!73264)) )
))
(declare-datatypes ((Option!17486 0))(
  ( (None!17485) (Some!17485 (v!54620 tuple2!69384)) )
))
(declare-fun lt!2659677 () Option!17486)

(declare-fun isDefined!14102 (Option!17486) Bool)

(assert (=> b!7635430 (= lt!2659671 (isDefined!14102 lt!2659677))))

(declare-fun findConcatSeparation!3516 (Regex!20413 Regex!20413 List!73264 List!73264 List!73264) Option!17486)

(assert (=> b!7635430 (= lt!2659677 (findConcatSeparation!3516 (reg!20742 r!14126) r!14126 Nil!73140 s!9605 s!9605))))

(declare-datatypes ((Unit!167802 0))(
  ( (Unit!167803) )
))
(declare-fun lt!2659676 () Unit!167802)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3274 (Regex!20413 Regex!20413 List!73264) Unit!167802)

(assert (=> b!7635430 (= lt!2659676 (lemmaFindConcatSeparationEquivalentToExists!3274 (reg!20742 r!14126) r!14126 s!9605))))

(declare-fun b!7635431 () Bool)

(assert (=> b!7635431 (= e!4539015 tp_is_empty!51181)))

(declare-fun b!7635432 () Bool)

(declare-fun e!4539014 () Bool)

(assert (=> b!7635432 (= e!4539013 e!4539014)))

(declare-fun res!3058110 () Bool)

(assert (=> b!7635432 (=> res!3058110 e!4539014)))

(declare-fun matchR!9916 (Regex!20413 List!73264) Bool)

(assert (=> b!7635432 (= res!3058110 (matchR!9916 r!14126 s!9605))))

(declare-fun lt!2659673 () tuple2!69384)

(declare-fun matchRSpec!4552 (Regex!20413 List!73264) Bool)

(assert (=> b!7635432 (= (matchR!9916 r!14126 (_2!37995 lt!2659673)) (matchRSpec!4552 r!14126 (_2!37995 lt!2659673)))))

(declare-fun lt!2659678 () Unit!167802)

(declare-fun mainMatchTheorem!4538 (Regex!20413 List!73264) Unit!167802)

(assert (=> b!7635432 (= lt!2659678 (mainMatchTheorem!4538 r!14126 (_2!37995 lt!2659673)))))

(assert (=> b!7635432 (= (matchR!9916 (reg!20742 r!14126) (_1!37995 lt!2659673)) (matchRSpec!4552 (reg!20742 r!14126) (_1!37995 lt!2659673)))))

(declare-fun lt!2659674 () Unit!167802)

(assert (=> b!7635432 (= lt!2659674 (mainMatchTheorem!4538 (reg!20742 r!14126) (_1!37995 lt!2659673)))))

(declare-fun get!25884 (Option!17486) tuple2!69384)

(assert (=> b!7635432 (= lt!2659673 (get!25884 lt!2659677))))

(declare-fun b!7635433 () Bool)

(declare-fun tp!2229075 () Bool)

(declare-fun tp!2229074 () Bool)

(assert (=> b!7635433 (= e!4539015 (and tp!2229075 tp!2229074))))

(declare-fun b!7635434 () Bool)

(declare-fun res!3058114 () Bool)

(assert (=> b!7635434 (=> (not res!3058114) (not e!4539012))))

(get-info :version)

(assert (=> b!7635434 (= res!3058114 (and (not ((_ is EmptyExpr!20413) r!14126)) (not ((_ is EmptyLang!20413) r!14126)) (not ((_ is ElementMatch!20413) r!14126)) (not ((_ is Union!20413) r!14126)) ((_ is Star!20413) r!14126)))))

(declare-fun b!7635435 () Bool)

(assert (=> b!7635435 (= e!4539014 false)))

(declare-fun lt!2659670 () List!73264)

(assert (=> b!7635435 (matchR!9916 r!14126 lt!2659670)))

(declare-fun lt!2659672 () Unit!167802)

(declare-fun lemmaStarApp!200 (Regex!20413 List!73264 List!73264) Unit!167802)

(assert (=> b!7635435 (= lt!2659672 (lemmaStarApp!200 (reg!20742 r!14126) (_1!37995 lt!2659673) (_2!37995 lt!2659673)))))

(assert (=> b!7635435 (matchR!9916 (Concat!29258 (reg!20742 r!14126) r!14126) lt!2659670)))

(declare-fun ++!17693 (List!73264 List!73264) List!73264)

(assert (=> b!7635435 (= lt!2659670 (++!17693 (_1!37995 lt!2659673) (_2!37995 lt!2659673)))))

(declare-fun lt!2659675 () Unit!167802)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!170 (Regex!20413 Regex!20413 List!73264 List!73264 List!73264) Unit!167802)

(assert (=> b!7635435 (= lt!2659675 (lemmaFindSeparationIsDefinedThenConcatMatches!170 (reg!20742 r!14126) r!14126 (_1!37995 lt!2659673) (_2!37995 lt!2659673) s!9605))))

(assert (= (and start!735144 res!3058112) b!7635434))

(assert (= (and b!7635434 res!3058114) b!7635427))

(assert (= (and b!7635427 res!3058111) b!7635430))

(assert (= (and b!7635430 (not res!3058113)) b!7635432))

(assert (= (and b!7635432 (not res!3058110)) b!7635435))

(assert (= (and start!735144 ((_ is ElementMatch!20413) r!14126)) b!7635431))

(assert (= (and start!735144 ((_ is Concat!29258) r!14126)) b!7635433))

(assert (= (and start!735144 ((_ is Star!20413) r!14126)) b!7635426))

(assert (= (and start!735144 ((_ is Union!20413) r!14126)) b!7635428))

(assert (= (and start!735144 ((_ is Cons!73140) s!9605)) b!7635429))

(declare-fun m!8160304 () Bool)

(assert (=> b!7635435 m!8160304))

(declare-fun m!8160306 () Bool)

(assert (=> b!7635435 m!8160306))

(declare-fun m!8160308 () Bool)

(assert (=> b!7635435 m!8160308))

(declare-fun m!8160310 () Bool)

(assert (=> b!7635435 m!8160310))

(declare-fun m!8160312 () Bool)

(assert (=> b!7635435 m!8160312))

(declare-fun m!8160314 () Bool)

(assert (=> b!7635427 m!8160314))

(declare-fun m!8160316 () Bool)

(assert (=> start!735144 m!8160316))

(declare-fun m!8160318 () Bool)

(assert (=> b!7635432 m!8160318))

(declare-fun m!8160320 () Bool)

(assert (=> b!7635432 m!8160320))

(declare-fun m!8160322 () Bool)

(assert (=> b!7635432 m!8160322))

(declare-fun m!8160324 () Bool)

(assert (=> b!7635432 m!8160324))

(declare-fun m!8160326 () Bool)

(assert (=> b!7635432 m!8160326))

(declare-fun m!8160328 () Bool)

(assert (=> b!7635432 m!8160328))

(declare-fun m!8160330 () Bool)

(assert (=> b!7635432 m!8160330))

(declare-fun m!8160332 () Bool)

(assert (=> b!7635432 m!8160332))

(declare-fun m!8160334 () Bool)

(assert (=> b!7635430 m!8160334))

(declare-fun m!8160336 () Bool)

(assert (=> b!7635430 m!8160336))

(declare-fun m!8160338 () Bool)

(assert (=> b!7635430 m!8160338))

(declare-fun m!8160340 () Bool)

(assert (=> b!7635430 m!8160340))

(check-sat (not b!7635435) (not b!7635426) tp_is_empty!51181 (not b!7635433) (not b!7635428) (not b!7635429) (not start!735144) (not b!7635427) (not b!7635430) (not b!7635432))
(check-sat)
(get-model)

(declare-fun d!2324542 () Bool)

(declare-fun e!4539030 () Bool)

(assert (=> d!2324542 e!4539030))

(declare-fun c!1406491 () Bool)

(assert (=> d!2324542 (= c!1406491 ((_ is EmptyExpr!20413) (reg!20742 r!14126)))))

(declare-fun lt!2659681 () Bool)

(declare-fun e!4539036 () Bool)

(assert (=> d!2324542 (= lt!2659681 e!4539036)))

(declare-fun c!1406493 () Bool)

(assert (=> d!2324542 (= c!1406493 (isEmpty!41767 (_1!37995 lt!2659673)))))

(assert (=> d!2324542 (validRegex!10831 (reg!20742 r!14126))))

(assert (=> d!2324542 (= (matchR!9916 (reg!20742 r!14126) (_1!37995 lt!2659673)) lt!2659681)))

(declare-fun b!7635468 () Bool)

(declare-fun e!4539035 () Bool)

(declare-fun e!4539033 () Bool)

(assert (=> b!7635468 (= e!4539035 e!4539033)))

(declare-fun res!3058137 () Bool)

(assert (=> b!7635468 (=> (not res!3058137) (not e!4539033))))

(assert (=> b!7635468 (= res!3058137 (not lt!2659681))))

(declare-fun b!7635469 () Bool)

(declare-fun call!700821 () Bool)

(assert (=> b!7635469 (= e!4539030 (= lt!2659681 call!700821))))

(declare-fun b!7635470 () Bool)

(declare-fun derivativeStep!5900 (Regex!20413 C!41152) Regex!20413)

(declare-fun head!15700 (List!73264) C!41152)

(declare-fun tail!15240 (List!73264) List!73264)

(assert (=> b!7635470 (= e!4539036 (matchR!9916 (derivativeStep!5900 (reg!20742 r!14126) (head!15700 (_1!37995 lt!2659673))) (tail!15240 (_1!37995 lt!2659673))))))

(declare-fun b!7635471 () Bool)

(declare-fun e!4539032 () Bool)

(assert (=> b!7635471 (= e!4539030 e!4539032)))

(declare-fun c!1406492 () Bool)

(assert (=> b!7635471 (= c!1406492 ((_ is EmptyLang!20413) (reg!20742 r!14126)))))

(declare-fun b!7635472 () Bool)

(declare-fun e!4539031 () Bool)

(assert (=> b!7635472 (= e!4539031 (not (= (head!15700 (_1!37995 lt!2659673)) (c!1406484 (reg!20742 r!14126)))))))

(declare-fun b!7635473 () Bool)

(declare-fun nullable!8927 (Regex!20413) Bool)

(assert (=> b!7635473 (= e!4539036 (nullable!8927 (reg!20742 r!14126)))))

(declare-fun b!7635474 () Bool)

(declare-fun res!3058136 () Bool)

(declare-fun e!4539034 () Bool)

(assert (=> b!7635474 (=> (not res!3058136) (not e!4539034))))

(assert (=> b!7635474 (= res!3058136 (not call!700821))))

(declare-fun b!7635475 () Bool)

(assert (=> b!7635475 (= e!4539033 e!4539031)))

(declare-fun res!3058138 () Bool)

(assert (=> b!7635475 (=> res!3058138 e!4539031)))

(assert (=> b!7635475 (= res!3058138 call!700821)))

(declare-fun b!7635476 () Bool)

(assert (=> b!7635476 (= e!4539034 (= (head!15700 (_1!37995 lt!2659673)) (c!1406484 (reg!20742 r!14126))))))

(declare-fun b!7635477 () Bool)

(declare-fun res!3058133 () Bool)

(assert (=> b!7635477 (=> res!3058133 e!4539035)))

(assert (=> b!7635477 (= res!3058133 (not ((_ is ElementMatch!20413) (reg!20742 r!14126))))))

(assert (=> b!7635477 (= e!4539032 e!4539035)))

(declare-fun b!7635478 () Bool)

(assert (=> b!7635478 (= e!4539032 (not lt!2659681))))

(declare-fun bm!700816 () Bool)

(assert (=> bm!700816 (= call!700821 (isEmpty!41767 (_1!37995 lt!2659673)))))

(declare-fun b!7635479 () Bool)

(declare-fun res!3058135 () Bool)

(assert (=> b!7635479 (=> res!3058135 e!4539035)))

(assert (=> b!7635479 (= res!3058135 e!4539034)))

(declare-fun res!3058134 () Bool)

(assert (=> b!7635479 (=> (not res!3058134) (not e!4539034))))

(assert (=> b!7635479 (= res!3058134 lt!2659681)))

(declare-fun b!7635480 () Bool)

(declare-fun res!3058131 () Bool)

(assert (=> b!7635480 (=> (not res!3058131) (not e!4539034))))

(assert (=> b!7635480 (= res!3058131 (isEmpty!41767 (tail!15240 (_1!37995 lt!2659673))))))

(declare-fun b!7635481 () Bool)

(declare-fun res!3058132 () Bool)

(assert (=> b!7635481 (=> res!3058132 e!4539031)))

(assert (=> b!7635481 (= res!3058132 (not (isEmpty!41767 (tail!15240 (_1!37995 lt!2659673)))))))

(assert (= (and d!2324542 c!1406493) b!7635473))

(assert (= (and d!2324542 (not c!1406493)) b!7635470))

(assert (= (and d!2324542 c!1406491) b!7635469))

(assert (= (and d!2324542 (not c!1406491)) b!7635471))

(assert (= (and b!7635471 c!1406492) b!7635478))

(assert (= (and b!7635471 (not c!1406492)) b!7635477))

(assert (= (and b!7635477 (not res!3058133)) b!7635479))

(assert (= (and b!7635479 res!3058134) b!7635474))

(assert (= (and b!7635474 res!3058136) b!7635480))

(assert (= (and b!7635480 res!3058131) b!7635476))

(assert (= (and b!7635479 (not res!3058135)) b!7635468))

(assert (= (and b!7635468 res!3058137) b!7635475))

(assert (= (and b!7635475 (not res!3058138)) b!7635481))

(assert (= (and b!7635481 (not res!3058132)) b!7635472))

(assert (= (or b!7635469 b!7635474 b!7635475) bm!700816))

(declare-fun m!8160346 () Bool)

(assert (=> b!7635472 m!8160346))

(assert (=> b!7635470 m!8160346))

(assert (=> b!7635470 m!8160346))

(declare-fun m!8160348 () Bool)

(assert (=> b!7635470 m!8160348))

(declare-fun m!8160350 () Bool)

(assert (=> b!7635470 m!8160350))

(assert (=> b!7635470 m!8160348))

(assert (=> b!7635470 m!8160350))

(declare-fun m!8160352 () Bool)

(assert (=> b!7635470 m!8160352))

(declare-fun m!8160354 () Bool)

(assert (=> bm!700816 m!8160354))

(assert (=> b!7635480 m!8160350))

(assert (=> b!7635480 m!8160350))

(declare-fun m!8160356 () Bool)

(assert (=> b!7635480 m!8160356))

(assert (=> b!7635481 m!8160350))

(assert (=> b!7635481 m!8160350))

(assert (=> b!7635481 m!8160356))

(assert (=> b!7635476 m!8160346))

(assert (=> d!2324542 m!8160354))

(declare-fun m!8160358 () Bool)

(assert (=> d!2324542 m!8160358))

(declare-fun m!8160360 () Bool)

(assert (=> b!7635473 m!8160360))

(assert (=> b!7635432 d!2324542))

(declare-fun d!2324550 () Bool)

(assert (=> d!2324550 (= (get!25884 lt!2659677) (v!54620 lt!2659677))))

(assert (=> b!7635432 d!2324550))

(declare-fun d!2324552 () Bool)

(assert (=> d!2324552 (= (matchR!9916 r!14126 (_2!37995 lt!2659673)) (matchRSpec!4552 r!14126 (_2!37995 lt!2659673)))))

(declare-fun lt!2659684 () Unit!167802)

(declare-fun choose!58948 (Regex!20413 List!73264) Unit!167802)

(assert (=> d!2324552 (= lt!2659684 (choose!58948 r!14126 (_2!37995 lt!2659673)))))

(assert (=> d!2324552 (validRegex!10831 r!14126)))

(assert (=> d!2324552 (= (mainMatchTheorem!4538 r!14126 (_2!37995 lt!2659673)) lt!2659684)))

(declare-fun bs!1944187 () Bool)

(assert (= bs!1944187 d!2324552))

(assert (=> bs!1944187 m!8160324))

(assert (=> bs!1944187 m!8160320))

(declare-fun m!8160362 () Bool)

(assert (=> bs!1944187 m!8160362))

(assert (=> bs!1944187 m!8160316))

(assert (=> b!7635432 d!2324552))

(declare-fun d!2324554 () Bool)

(declare-fun e!4539037 () Bool)

(assert (=> d!2324554 e!4539037))

(declare-fun c!1406494 () Bool)

(assert (=> d!2324554 (= c!1406494 ((_ is EmptyExpr!20413) r!14126))))

(declare-fun lt!2659685 () Bool)

(declare-fun e!4539043 () Bool)

(assert (=> d!2324554 (= lt!2659685 e!4539043)))

(declare-fun c!1406496 () Bool)

(assert (=> d!2324554 (= c!1406496 (isEmpty!41767 s!9605))))

(assert (=> d!2324554 (validRegex!10831 r!14126)))

(assert (=> d!2324554 (= (matchR!9916 r!14126 s!9605) lt!2659685)))

(declare-fun b!7635482 () Bool)

(declare-fun e!4539042 () Bool)

(declare-fun e!4539040 () Bool)

(assert (=> b!7635482 (= e!4539042 e!4539040)))

(declare-fun res!3058145 () Bool)

(assert (=> b!7635482 (=> (not res!3058145) (not e!4539040))))

(assert (=> b!7635482 (= res!3058145 (not lt!2659685))))

(declare-fun b!7635483 () Bool)

(declare-fun call!700822 () Bool)

(assert (=> b!7635483 (= e!4539037 (= lt!2659685 call!700822))))

(declare-fun b!7635484 () Bool)

(assert (=> b!7635484 (= e!4539043 (matchR!9916 (derivativeStep!5900 r!14126 (head!15700 s!9605)) (tail!15240 s!9605)))))

(declare-fun b!7635485 () Bool)

(declare-fun e!4539039 () Bool)

(assert (=> b!7635485 (= e!4539037 e!4539039)))

(declare-fun c!1406495 () Bool)

(assert (=> b!7635485 (= c!1406495 ((_ is EmptyLang!20413) r!14126))))

(declare-fun b!7635486 () Bool)

(declare-fun e!4539038 () Bool)

(assert (=> b!7635486 (= e!4539038 (not (= (head!15700 s!9605) (c!1406484 r!14126))))))

(declare-fun b!7635487 () Bool)

(assert (=> b!7635487 (= e!4539043 (nullable!8927 r!14126))))

(declare-fun b!7635488 () Bool)

(declare-fun res!3058144 () Bool)

(declare-fun e!4539041 () Bool)

(assert (=> b!7635488 (=> (not res!3058144) (not e!4539041))))

(assert (=> b!7635488 (= res!3058144 (not call!700822))))

(declare-fun b!7635489 () Bool)

(assert (=> b!7635489 (= e!4539040 e!4539038)))

(declare-fun res!3058146 () Bool)

(assert (=> b!7635489 (=> res!3058146 e!4539038)))

(assert (=> b!7635489 (= res!3058146 call!700822)))

(declare-fun b!7635490 () Bool)

(assert (=> b!7635490 (= e!4539041 (= (head!15700 s!9605) (c!1406484 r!14126)))))

(declare-fun b!7635491 () Bool)

(declare-fun res!3058141 () Bool)

(assert (=> b!7635491 (=> res!3058141 e!4539042)))

(assert (=> b!7635491 (= res!3058141 (not ((_ is ElementMatch!20413) r!14126)))))

(assert (=> b!7635491 (= e!4539039 e!4539042)))

(declare-fun b!7635492 () Bool)

(assert (=> b!7635492 (= e!4539039 (not lt!2659685))))

(declare-fun bm!700817 () Bool)

(assert (=> bm!700817 (= call!700822 (isEmpty!41767 s!9605))))

(declare-fun b!7635493 () Bool)

(declare-fun res!3058143 () Bool)

(assert (=> b!7635493 (=> res!3058143 e!4539042)))

(assert (=> b!7635493 (= res!3058143 e!4539041)))

(declare-fun res!3058142 () Bool)

(assert (=> b!7635493 (=> (not res!3058142) (not e!4539041))))

(assert (=> b!7635493 (= res!3058142 lt!2659685)))

(declare-fun b!7635494 () Bool)

(declare-fun res!3058139 () Bool)

(assert (=> b!7635494 (=> (not res!3058139) (not e!4539041))))

(assert (=> b!7635494 (= res!3058139 (isEmpty!41767 (tail!15240 s!9605)))))

(declare-fun b!7635495 () Bool)

(declare-fun res!3058140 () Bool)

(assert (=> b!7635495 (=> res!3058140 e!4539038)))

(assert (=> b!7635495 (= res!3058140 (not (isEmpty!41767 (tail!15240 s!9605))))))

(assert (= (and d!2324554 c!1406496) b!7635487))

(assert (= (and d!2324554 (not c!1406496)) b!7635484))

(assert (= (and d!2324554 c!1406494) b!7635483))

(assert (= (and d!2324554 (not c!1406494)) b!7635485))

(assert (= (and b!7635485 c!1406495) b!7635492))

(assert (= (and b!7635485 (not c!1406495)) b!7635491))

(assert (= (and b!7635491 (not res!3058141)) b!7635493))

(assert (= (and b!7635493 res!3058142) b!7635488))

(assert (= (and b!7635488 res!3058144) b!7635494))

(assert (= (and b!7635494 res!3058139) b!7635490))

(assert (= (and b!7635493 (not res!3058143)) b!7635482))

(assert (= (and b!7635482 res!3058145) b!7635489))

(assert (= (and b!7635489 (not res!3058146)) b!7635495))

(assert (= (and b!7635495 (not res!3058140)) b!7635486))

(assert (= (or b!7635483 b!7635488 b!7635489) bm!700817))

(declare-fun m!8160364 () Bool)

(assert (=> b!7635486 m!8160364))

(assert (=> b!7635484 m!8160364))

(assert (=> b!7635484 m!8160364))

(declare-fun m!8160366 () Bool)

(assert (=> b!7635484 m!8160366))

(declare-fun m!8160368 () Bool)

(assert (=> b!7635484 m!8160368))

(assert (=> b!7635484 m!8160366))

(assert (=> b!7635484 m!8160368))

(declare-fun m!8160370 () Bool)

(assert (=> b!7635484 m!8160370))

(assert (=> bm!700817 m!8160314))

(assert (=> b!7635494 m!8160368))

(assert (=> b!7635494 m!8160368))

(declare-fun m!8160372 () Bool)

(assert (=> b!7635494 m!8160372))

(assert (=> b!7635495 m!8160368))

(assert (=> b!7635495 m!8160368))

(assert (=> b!7635495 m!8160372))

(assert (=> b!7635490 m!8160364))

(assert (=> d!2324554 m!8160314))

(assert (=> d!2324554 m!8160316))

(declare-fun m!8160374 () Bool)

(assert (=> b!7635487 m!8160374))

(assert (=> b!7635432 d!2324554))

(declare-fun d!2324556 () Bool)

(assert (=> d!2324556 (= (matchR!9916 (reg!20742 r!14126) (_1!37995 lt!2659673)) (matchRSpec!4552 (reg!20742 r!14126) (_1!37995 lt!2659673)))))

(declare-fun lt!2659686 () Unit!167802)

(assert (=> d!2324556 (= lt!2659686 (choose!58948 (reg!20742 r!14126) (_1!37995 lt!2659673)))))

(assert (=> d!2324556 (validRegex!10831 (reg!20742 r!14126))))

(assert (=> d!2324556 (= (mainMatchTheorem!4538 (reg!20742 r!14126) (_1!37995 lt!2659673)) lt!2659686)))

(declare-fun bs!1944188 () Bool)

(assert (= bs!1944188 d!2324556))

(assert (=> bs!1944188 m!8160328))

(assert (=> bs!1944188 m!8160330))

(declare-fun m!8160376 () Bool)

(assert (=> bs!1944188 m!8160376))

(assert (=> bs!1944188 m!8160358))

(assert (=> b!7635432 d!2324556))

(declare-fun bs!1944189 () Bool)

(declare-fun b!7635563 () Bool)

(assert (= bs!1944189 (and b!7635563 b!7635430)))

(declare-fun lambda!469358 () Int)

(assert (=> bs!1944189 (not (= lambda!469358 lambda!469353))))

(assert (=> b!7635563 true))

(assert (=> b!7635563 true))

(declare-fun bs!1944190 () Bool)

(declare-fun b!7635556 () Bool)

(assert (= bs!1944190 (and b!7635556 b!7635430)))

(declare-fun lambda!469359 () Int)

(assert (=> bs!1944190 (not (= lambda!469359 lambda!469353))))

(declare-fun bs!1944191 () Bool)

(assert (= bs!1944191 (and b!7635556 b!7635563)))

(assert (=> bs!1944191 (not (= lambda!469359 lambda!469358))))

(assert (=> b!7635556 true))

(assert (=> b!7635556 true))

(declare-fun b!7635555 () Bool)

(declare-fun e!4539078 () Bool)

(assert (=> b!7635555 (= e!4539078 (= (_2!37995 lt!2659673) (Cons!73140 (c!1406484 r!14126) Nil!73140)))))

(declare-fun e!4539079 () Bool)

(declare-fun call!700827 () Bool)

(assert (=> b!7635556 (= e!4539079 call!700827)))

(declare-fun b!7635557 () Bool)

(declare-fun c!1406513 () Bool)

(assert (=> b!7635557 (= c!1406513 ((_ is ElementMatch!20413) r!14126))))

(declare-fun e!4539080 () Bool)

(assert (=> b!7635557 (= e!4539080 e!4539078)))

(declare-fun b!7635558 () Bool)

(declare-fun c!1406511 () Bool)

(assert (=> b!7635558 (= c!1406511 ((_ is Union!20413) r!14126))))

(declare-fun e!4539077 () Bool)

(assert (=> b!7635558 (= e!4539078 e!4539077)))

(declare-fun b!7635559 () Bool)

(assert (=> b!7635559 (= e!4539077 e!4539079)))

(declare-fun c!1406512 () Bool)

(assert (=> b!7635559 (= c!1406512 ((_ is Star!20413) r!14126))))

(declare-fun b!7635560 () Bool)

(declare-fun e!4539081 () Bool)

(assert (=> b!7635560 (= e!4539081 (matchRSpec!4552 (regTwo!41339 r!14126) (_2!37995 lt!2659673)))))

(declare-fun b!7635561 () Bool)

(declare-fun e!4539083 () Bool)

(declare-fun call!700828 () Bool)

(assert (=> b!7635561 (= e!4539083 call!700828)))

(declare-fun b!7635562 () Bool)

(assert (=> b!7635562 (= e!4539083 e!4539080)))

(declare-fun res!3058180 () Bool)

(assert (=> b!7635562 (= res!3058180 (not ((_ is EmptyLang!20413) r!14126)))))

(assert (=> b!7635562 (=> (not res!3058180) (not e!4539080))))

(declare-fun d!2324558 () Bool)

(declare-fun c!1406514 () Bool)

(assert (=> d!2324558 (= c!1406514 ((_ is EmptyExpr!20413) r!14126))))

(assert (=> d!2324558 (= (matchRSpec!4552 r!14126 (_2!37995 lt!2659673)) e!4539083)))

(declare-fun e!4539082 () Bool)

(assert (=> b!7635563 (= e!4539082 call!700827)))

(declare-fun bm!700822 () Bool)

(assert (=> bm!700822 (= call!700828 (isEmpty!41767 (_2!37995 lt!2659673)))))

(declare-fun bm!700823 () Bool)

(assert (=> bm!700823 (= call!700827 (Exists!4567 (ite c!1406512 lambda!469358 lambda!469359)))))

(declare-fun b!7635564 () Bool)

(assert (=> b!7635564 (= e!4539077 e!4539081)))

(declare-fun res!3058178 () Bool)

(assert (=> b!7635564 (= res!3058178 (matchRSpec!4552 (regOne!41339 r!14126) (_2!37995 lt!2659673)))))

(assert (=> b!7635564 (=> res!3058178 e!4539081)))

(declare-fun b!7635565 () Bool)

(declare-fun res!3058179 () Bool)

(assert (=> b!7635565 (=> res!3058179 e!4539082)))

(assert (=> b!7635565 (= res!3058179 call!700828)))

(assert (=> b!7635565 (= e!4539079 e!4539082)))

(assert (= (and d!2324558 c!1406514) b!7635561))

(assert (= (and d!2324558 (not c!1406514)) b!7635562))

(assert (= (and b!7635562 res!3058180) b!7635557))

(assert (= (and b!7635557 c!1406513) b!7635555))

(assert (= (and b!7635557 (not c!1406513)) b!7635558))

(assert (= (and b!7635558 c!1406511) b!7635564))

(assert (= (and b!7635558 (not c!1406511)) b!7635559))

(assert (= (and b!7635564 (not res!3058178)) b!7635560))

(assert (= (and b!7635559 c!1406512) b!7635565))

(assert (= (and b!7635559 (not c!1406512)) b!7635556))

(assert (= (and b!7635565 (not res!3058179)) b!7635563))

(assert (= (or b!7635563 b!7635556) bm!700823))

(assert (= (or b!7635561 b!7635565) bm!700822))

(declare-fun m!8160400 () Bool)

(assert (=> b!7635560 m!8160400))

(declare-fun m!8160402 () Bool)

(assert (=> bm!700822 m!8160402))

(declare-fun m!8160404 () Bool)

(assert (=> bm!700823 m!8160404))

(declare-fun m!8160406 () Bool)

(assert (=> b!7635564 m!8160406))

(assert (=> b!7635432 d!2324558))

(declare-fun bs!1944192 () Bool)

(declare-fun b!7635578 () Bool)

(assert (= bs!1944192 (and b!7635578 b!7635430)))

(declare-fun lambda!469362 () Int)

(assert (=> bs!1944192 (not (= lambda!469362 lambda!469353))))

(declare-fun bs!1944193 () Bool)

(assert (= bs!1944193 (and b!7635578 b!7635563)))

(assert (=> bs!1944193 (= (and (= (_1!37995 lt!2659673) (_2!37995 lt!2659673)) (= (reg!20742 (reg!20742 r!14126)) (reg!20742 r!14126)) (= (reg!20742 r!14126) r!14126)) (= lambda!469362 lambda!469358))))

(declare-fun bs!1944194 () Bool)

(assert (= bs!1944194 (and b!7635578 b!7635556)))

(assert (=> bs!1944194 (not (= lambda!469362 lambda!469359))))

(assert (=> b!7635578 true))

(assert (=> b!7635578 true))

(declare-fun bs!1944197 () Bool)

(declare-fun b!7635571 () Bool)

(assert (= bs!1944197 (and b!7635571 b!7635430)))

(declare-fun lambda!469364 () Int)

(assert (=> bs!1944197 (not (= lambda!469364 lambda!469353))))

(declare-fun bs!1944198 () Bool)

(assert (= bs!1944198 (and b!7635571 b!7635563)))

(assert (=> bs!1944198 (not (= lambda!469364 lambda!469358))))

(declare-fun bs!1944199 () Bool)

(assert (= bs!1944199 (and b!7635571 b!7635556)))

(assert (=> bs!1944199 (= (and (= (_1!37995 lt!2659673) (_2!37995 lt!2659673)) (= (regOne!41338 (reg!20742 r!14126)) (regOne!41338 r!14126)) (= (regTwo!41338 (reg!20742 r!14126)) (regTwo!41338 r!14126))) (= lambda!469364 lambda!469359))))

(declare-fun bs!1944200 () Bool)

(assert (= bs!1944200 (and b!7635571 b!7635578)))

(assert (=> bs!1944200 (not (= lambda!469364 lambda!469362))))

(assert (=> b!7635571 true))

(assert (=> b!7635571 true))

(declare-fun b!7635570 () Bool)

(declare-fun e!4539087 () Bool)

(assert (=> b!7635570 (= e!4539087 (= (_1!37995 lt!2659673) (Cons!73140 (c!1406484 (reg!20742 r!14126)) Nil!73140)))))

(declare-fun e!4539088 () Bool)

(declare-fun call!700829 () Bool)

(assert (=> b!7635571 (= e!4539088 call!700829)))

(declare-fun b!7635572 () Bool)

(declare-fun c!1406517 () Bool)

(assert (=> b!7635572 (= c!1406517 ((_ is ElementMatch!20413) (reg!20742 r!14126)))))

(declare-fun e!4539089 () Bool)

(assert (=> b!7635572 (= e!4539089 e!4539087)))

(declare-fun b!7635573 () Bool)

(declare-fun c!1406515 () Bool)

(assert (=> b!7635573 (= c!1406515 ((_ is Union!20413) (reg!20742 r!14126)))))

(declare-fun e!4539086 () Bool)

(assert (=> b!7635573 (= e!4539087 e!4539086)))

(declare-fun b!7635574 () Bool)

(assert (=> b!7635574 (= e!4539086 e!4539088)))

(declare-fun c!1406516 () Bool)

(assert (=> b!7635574 (= c!1406516 ((_ is Star!20413) (reg!20742 r!14126)))))

(declare-fun b!7635575 () Bool)

(declare-fun e!4539090 () Bool)

(assert (=> b!7635575 (= e!4539090 (matchRSpec!4552 (regTwo!41339 (reg!20742 r!14126)) (_1!37995 lt!2659673)))))

(declare-fun b!7635576 () Bool)

(declare-fun e!4539092 () Bool)

(declare-fun call!700830 () Bool)

(assert (=> b!7635576 (= e!4539092 call!700830)))

(declare-fun b!7635577 () Bool)

(assert (=> b!7635577 (= e!4539092 e!4539089)))

(declare-fun res!3058187 () Bool)

(assert (=> b!7635577 (= res!3058187 (not ((_ is EmptyLang!20413) (reg!20742 r!14126))))))

(assert (=> b!7635577 (=> (not res!3058187) (not e!4539089))))

(declare-fun d!2324562 () Bool)

(declare-fun c!1406518 () Bool)

(assert (=> d!2324562 (= c!1406518 ((_ is EmptyExpr!20413) (reg!20742 r!14126)))))

(assert (=> d!2324562 (= (matchRSpec!4552 (reg!20742 r!14126) (_1!37995 lt!2659673)) e!4539092)))

(declare-fun e!4539091 () Bool)

(assert (=> b!7635578 (= e!4539091 call!700829)))

(declare-fun bm!700824 () Bool)

(assert (=> bm!700824 (= call!700830 (isEmpty!41767 (_1!37995 lt!2659673)))))

(declare-fun bm!700825 () Bool)

(assert (=> bm!700825 (= call!700829 (Exists!4567 (ite c!1406516 lambda!469362 lambda!469364)))))

(declare-fun b!7635579 () Bool)

(assert (=> b!7635579 (= e!4539086 e!4539090)))

(declare-fun res!3058185 () Bool)

(assert (=> b!7635579 (= res!3058185 (matchRSpec!4552 (regOne!41339 (reg!20742 r!14126)) (_1!37995 lt!2659673)))))

(assert (=> b!7635579 (=> res!3058185 e!4539090)))

(declare-fun b!7635580 () Bool)

(declare-fun res!3058186 () Bool)

(assert (=> b!7635580 (=> res!3058186 e!4539091)))

(assert (=> b!7635580 (= res!3058186 call!700830)))

(assert (=> b!7635580 (= e!4539088 e!4539091)))

(assert (= (and d!2324562 c!1406518) b!7635576))

(assert (= (and d!2324562 (not c!1406518)) b!7635577))

(assert (= (and b!7635577 res!3058187) b!7635572))

(assert (= (and b!7635572 c!1406517) b!7635570))

(assert (= (and b!7635572 (not c!1406517)) b!7635573))

(assert (= (and b!7635573 c!1406515) b!7635579))

(assert (= (and b!7635573 (not c!1406515)) b!7635574))

(assert (= (and b!7635579 (not res!3058185)) b!7635575))

(assert (= (and b!7635574 c!1406516) b!7635580))

(assert (= (and b!7635574 (not c!1406516)) b!7635571))

(assert (= (and b!7635580 (not res!3058186)) b!7635578))

(assert (= (or b!7635578 b!7635571) bm!700825))

(assert (= (or b!7635576 b!7635580) bm!700824))

(declare-fun m!8160414 () Bool)

(assert (=> b!7635575 m!8160414))

(assert (=> bm!700824 m!8160354))

(declare-fun m!8160416 () Bool)

(assert (=> bm!700825 m!8160416))

(declare-fun m!8160418 () Bool)

(assert (=> b!7635579 m!8160418))

(assert (=> b!7635432 d!2324562))

(declare-fun d!2324566 () Bool)

(declare-fun e!4539093 () Bool)

(assert (=> d!2324566 e!4539093))

(declare-fun c!1406519 () Bool)

(assert (=> d!2324566 (= c!1406519 ((_ is EmptyExpr!20413) r!14126))))

(declare-fun lt!2659699 () Bool)

(declare-fun e!4539099 () Bool)

(assert (=> d!2324566 (= lt!2659699 e!4539099)))

(declare-fun c!1406521 () Bool)

(assert (=> d!2324566 (= c!1406521 (isEmpty!41767 (_2!37995 lt!2659673)))))

(assert (=> d!2324566 (validRegex!10831 r!14126)))

(assert (=> d!2324566 (= (matchR!9916 r!14126 (_2!37995 lt!2659673)) lt!2659699)))

(declare-fun b!7635581 () Bool)

(declare-fun e!4539098 () Bool)

(declare-fun e!4539096 () Bool)

(assert (=> b!7635581 (= e!4539098 e!4539096)))

(declare-fun res!3058194 () Bool)

(assert (=> b!7635581 (=> (not res!3058194) (not e!4539096))))

(assert (=> b!7635581 (= res!3058194 (not lt!2659699))))

(declare-fun b!7635582 () Bool)

(declare-fun call!700831 () Bool)

(assert (=> b!7635582 (= e!4539093 (= lt!2659699 call!700831))))

(declare-fun b!7635583 () Bool)

(assert (=> b!7635583 (= e!4539099 (matchR!9916 (derivativeStep!5900 r!14126 (head!15700 (_2!37995 lt!2659673))) (tail!15240 (_2!37995 lt!2659673))))))

(declare-fun b!7635584 () Bool)

(declare-fun e!4539095 () Bool)

(assert (=> b!7635584 (= e!4539093 e!4539095)))

(declare-fun c!1406520 () Bool)

(assert (=> b!7635584 (= c!1406520 ((_ is EmptyLang!20413) r!14126))))

(declare-fun b!7635585 () Bool)

(declare-fun e!4539094 () Bool)

(assert (=> b!7635585 (= e!4539094 (not (= (head!15700 (_2!37995 lt!2659673)) (c!1406484 r!14126))))))

(declare-fun b!7635586 () Bool)

(assert (=> b!7635586 (= e!4539099 (nullable!8927 r!14126))))

(declare-fun b!7635587 () Bool)

(declare-fun res!3058193 () Bool)

(declare-fun e!4539097 () Bool)

(assert (=> b!7635587 (=> (not res!3058193) (not e!4539097))))

(assert (=> b!7635587 (= res!3058193 (not call!700831))))

(declare-fun b!7635588 () Bool)

(assert (=> b!7635588 (= e!4539096 e!4539094)))

(declare-fun res!3058195 () Bool)

(assert (=> b!7635588 (=> res!3058195 e!4539094)))

(assert (=> b!7635588 (= res!3058195 call!700831)))

(declare-fun b!7635589 () Bool)

(assert (=> b!7635589 (= e!4539097 (= (head!15700 (_2!37995 lt!2659673)) (c!1406484 r!14126)))))

(declare-fun b!7635590 () Bool)

(declare-fun res!3058190 () Bool)

(assert (=> b!7635590 (=> res!3058190 e!4539098)))

(assert (=> b!7635590 (= res!3058190 (not ((_ is ElementMatch!20413) r!14126)))))

(assert (=> b!7635590 (= e!4539095 e!4539098)))

(declare-fun b!7635591 () Bool)

(assert (=> b!7635591 (= e!4539095 (not lt!2659699))))

(declare-fun bm!700826 () Bool)

(assert (=> bm!700826 (= call!700831 (isEmpty!41767 (_2!37995 lt!2659673)))))

(declare-fun b!7635592 () Bool)

(declare-fun res!3058192 () Bool)

(assert (=> b!7635592 (=> res!3058192 e!4539098)))

(assert (=> b!7635592 (= res!3058192 e!4539097)))

(declare-fun res!3058191 () Bool)

(assert (=> b!7635592 (=> (not res!3058191) (not e!4539097))))

(assert (=> b!7635592 (= res!3058191 lt!2659699)))

(declare-fun b!7635593 () Bool)

(declare-fun res!3058188 () Bool)

(assert (=> b!7635593 (=> (not res!3058188) (not e!4539097))))

(assert (=> b!7635593 (= res!3058188 (isEmpty!41767 (tail!15240 (_2!37995 lt!2659673))))))

(declare-fun b!7635594 () Bool)

(declare-fun res!3058189 () Bool)

(assert (=> b!7635594 (=> res!3058189 e!4539094)))

(assert (=> b!7635594 (= res!3058189 (not (isEmpty!41767 (tail!15240 (_2!37995 lt!2659673)))))))

(assert (= (and d!2324566 c!1406521) b!7635586))

(assert (= (and d!2324566 (not c!1406521)) b!7635583))

(assert (= (and d!2324566 c!1406519) b!7635582))

(assert (= (and d!2324566 (not c!1406519)) b!7635584))

(assert (= (and b!7635584 c!1406520) b!7635591))

(assert (= (and b!7635584 (not c!1406520)) b!7635590))

(assert (= (and b!7635590 (not res!3058190)) b!7635592))

(assert (= (and b!7635592 res!3058191) b!7635587))

(assert (= (and b!7635587 res!3058193) b!7635593))

(assert (= (and b!7635593 res!3058188) b!7635589))

(assert (= (and b!7635592 (not res!3058192)) b!7635581))

(assert (= (and b!7635581 res!3058194) b!7635588))

(assert (= (and b!7635588 (not res!3058195)) b!7635594))

(assert (= (and b!7635594 (not res!3058189)) b!7635585))

(assert (= (or b!7635582 b!7635587 b!7635588) bm!700826))

(declare-fun m!8160420 () Bool)

(assert (=> b!7635585 m!8160420))

(assert (=> b!7635583 m!8160420))

(assert (=> b!7635583 m!8160420))

(declare-fun m!8160422 () Bool)

(assert (=> b!7635583 m!8160422))

(declare-fun m!8160424 () Bool)

(assert (=> b!7635583 m!8160424))

(assert (=> b!7635583 m!8160422))

(assert (=> b!7635583 m!8160424))

(declare-fun m!8160426 () Bool)

(assert (=> b!7635583 m!8160426))

(assert (=> bm!700826 m!8160402))

(assert (=> b!7635593 m!8160424))

(assert (=> b!7635593 m!8160424))

(declare-fun m!8160428 () Bool)

(assert (=> b!7635593 m!8160428))

(assert (=> b!7635594 m!8160424))

(assert (=> b!7635594 m!8160424))

(assert (=> b!7635594 m!8160428))

(assert (=> b!7635589 m!8160420))

(assert (=> d!2324566 m!8160402))

(assert (=> d!2324566 m!8160316))

(assert (=> b!7635586 m!8160374))

(assert (=> b!7635432 d!2324566))

(declare-fun d!2324568 () Bool)

(assert (=> d!2324568 (= (isEmpty!41767 s!9605) ((_ is Nil!73140) s!9605))))

(assert (=> b!7635427 d!2324568))

(declare-fun d!2324570 () Bool)

(declare-fun res!3058215 () Bool)

(declare-fun e!4539121 () Bool)

(assert (=> d!2324570 (=> res!3058215 e!4539121)))

(assert (=> d!2324570 (= res!3058215 ((_ is ElementMatch!20413) r!14126))))

(assert (=> d!2324570 (= (validRegex!10831 r!14126) e!4539121)))

(declare-fun bm!700833 () Bool)

(declare-fun c!1406529 () Bool)

(declare-fun c!1406530 () Bool)

(declare-fun call!700840 () Bool)

(assert (=> bm!700833 (= call!700840 (validRegex!10831 (ite c!1406529 (reg!20742 r!14126) (ite c!1406530 (regOne!41339 r!14126) (regOne!41338 r!14126)))))))

(declare-fun b!7635625 () Bool)

(declare-fun e!4539122 () Bool)

(declare-fun call!700839 () Bool)

(assert (=> b!7635625 (= e!4539122 call!700839)))

(declare-fun b!7635626 () Bool)

(declare-fun res!3058216 () Bool)

(declare-fun e!4539123 () Bool)

(assert (=> b!7635626 (=> (not res!3058216) (not e!4539123))))

(declare-fun call!700838 () Bool)

(assert (=> b!7635626 (= res!3058216 call!700838)))

(declare-fun e!4539120 () Bool)

(assert (=> b!7635626 (= e!4539120 e!4539123)))

(declare-fun b!7635627 () Bool)

(declare-fun e!4539124 () Bool)

(assert (=> b!7635627 (= e!4539124 e!4539122)))

(declare-fun res!3058212 () Bool)

(assert (=> b!7635627 (=> (not res!3058212) (not e!4539122))))

(assert (=> b!7635627 (= res!3058212 call!700838)))

(declare-fun bm!700834 () Bool)

(assert (=> bm!700834 (= call!700839 (validRegex!10831 (ite c!1406530 (regTwo!41339 r!14126) (regTwo!41338 r!14126))))))

(declare-fun b!7635628 () Bool)

(assert (=> b!7635628 (= e!4539123 call!700839)))

(declare-fun b!7635629 () Bool)

(declare-fun e!4539125 () Bool)

(declare-fun e!4539126 () Bool)

(assert (=> b!7635629 (= e!4539125 e!4539126)))

(declare-fun res!3058214 () Bool)

(assert (=> b!7635629 (= res!3058214 (not (nullable!8927 (reg!20742 r!14126))))))

(assert (=> b!7635629 (=> (not res!3058214) (not e!4539126))))

(declare-fun bm!700835 () Bool)

(assert (=> bm!700835 (= call!700838 call!700840)))

(declare-fun b!7635630 () Bool)

(declare-fun res!3058213 () Bool)

(assert (=> b!7635630 (=> res!3058213 e!4539124)))

(assert (=> b!7635630 (= res!3058213 (not ((_ is Concat!29258) r!14126)))))

(assert (=> b!7635630 (= e!4539120 e!4539124)))

(declare-fun b!7635631 () Bool)

(assert (=> b!7635631 (= e!4539121 e!4539125)))

(assert (=> b!7635631 (= c!1406529 ((_ is Star!20413) r!14126))))

(declare-fun b!7635632 () Bool)

(assert (=> b!7635632 (= e!4539126 call!700840)))

(declare-fun b!7635633 () Bool)

(assert (=> b!7635633 (= e!4539125 e!4539120)))

(assert (=> b!7635633 (= c!1406530 ((_ is Union!20413) r!14126))))

(assert (= (and d!2324570 (not res!3058215)) b!7635631))

(assert (= (and b!7635631 c!1406529) b!7635629))

(assert (= (and b!7635631 (not c!1406529)) b!7635633))

(assert (= (and b!7635629 res!3058214) b!7635632))

(assert (= (and b!7635633 c!1406530) b!7635626))

(assert (= (and b!7635633 (not c!1406530)) b!7635630))

(assert (= (and b!7635626 res!3058216) b!7635628))

(assert (= (and b!7635630 (not res!3058213)) b!7635627))

(assert (= (and b!7635627 res!3058212) b!7635625))

(assert (= (or b!7635626 b!7635627) bm!700835))

(assert (= (or b!7635628 b!7635625) bm!700834))

(assert (= (or b!7635632 bm!700835) bm!700833))

(declare-fun m!8160450 () Bool)

(assert (=> bm!700833 m!8160450))

(declare-fun m!8160452 () Bool)

(assert (=> bm!700834 m!8160452))

(assert (=> b!7635629 m!8160360))

(assert (=> start!735144 d!2324570))

(declare-fun d!2324576 () Bool)

(declare-fun e!4539127 () Bool)

(assert (=> d!2324576 e!4539127))

(declare-fun c!1406531 () Bool)

(assert (=> d!2324576 (= c!1406531 ((_ is EmptyExpr!20413) (Concat!29258 (reg!20742 r!14126) r!14126)))))

(declare-fun lt!2659706 () Bool)

(declare-fun e!4539133 () Bool)

(assert (=> d!2324576 (= lt!2659706 e!4539133)))

(declare-fun c!1406533 () Bool)

(assert (=> d!2324576 (= c!1406533 (isEmpty!41767 lt!2659670))))

(assert (=> d!2324576 (validRegex!10831 (Concat!29258 (reg!20742 r!14126) r!14126))))

(assert (=> d!2324576 (= (matchR!9916 (Concat!29258 (reg!20742 r!14126) r!14126) lt!2659670) lt!2659706)))

(declare-fun b!7635634 () Bool)

(declare-fun e!4539132 () Bool)

(declare-fun e!4539130 () Bool)

(assert (=> b!7635634 (= e!4539132 e!4539130)))

(declare-fun res!3058223 () Bool)

(assert (=> b!7635634 (=> (not res!3058223) (not e!4539130))))

(assert (=> b!7635634 (= res!3058223 (not lt!2659706))))

(declare-fun b!7635635 () Bool)

(declare-fun call!700841 () Bool)

(assert (=> b!7635635 (= e!4539127 (= lt!2659706 call!700841))))

(declare-fun b!7635636 () Bool)

(assert (=> b!7635636 (= e!4539133 (matchR!9916 (derivativeStep!5900 (Concat!29258 (reg!20742 r!14126) r!14126) (head!15700 lt!2659670)) (tail!15240 lt!2659670)))))

(declare-fun b!7635637 () Bool)

(declare-fun e!4539129 () Bool)

(assert (=> b!7635637 (= e!4539127 e!4539129)))

(declare-fun c!1406532 () Bool)

(assert (=> b!7635637 (= c!1406532 ((_ is EmptyLang!20413) (Concat!29258 (reg!20742 r!14126) r!14126)))))

(declare-fun b!7635638 () Bool)

(declare-fun e!4539128 () Bool)

(assert (=> b!7635638 (= e!4539128 (not (= (head!15700 lt!2659670) (c!1406484 (Concat!29258 (reg!20742 r!14126) r!14126)))))))

(declare-fun b!7635639 () Bool)

(assert (=> b!7635639 (= e!4539133 (nullable!8927 (Concat!29258 (reg!20742 r!14126) r!14126)))))

(declare-fun b!7635640 () Bool)

(declare-fun res!3058222 () Bool)

(declare-fun e!4539131 () Bool)

(assert (=> b!7635640 (=> (not res!3058222) (not e!4539131))))

(assert (=> b!7635640 (= res!3058222 (not call!700841))))

(declare-fun b!7635641 () Bool)

(assert (=> b!7635641 (= e!4539130 e!4539128)))

(declare-fun res!3058224 () Bool)

(assert (=> b!7635641 (=> res!3058224 e!4539128)))

(assert (=> b!7635641 (= res!3058224 call!700841)))

(declare-fun b!7635642 () Bool)

(assert (=> b!7635642 (= e!4539131 (= (head!15700 lt!2659670) (c!1406484 (Concat!29258 (reg!20742 r!14126) r!14126))))))

(declare-fun b!7635643 () Bool)

(declare-fun res!3058219 () Bool)

(assert (=> b!7635643 (=> res!3058219 e!4539132)))

(assert (=> b!7635643 (= res!3058219 (not ((_ is ElementMatch!20413) (Concat!29258 (reg!20742 r!14126) r!14126))))))

(assert (=> b!7635643 (= e!4539129 e!4539132)))

(declare-fun b!7635644 () Bool)

(assert (=> b!7635644 (= e!4539129 (not lt!2659706))))

(declare-fun bm!700836 () Bool)

(assert (=> bm!700836 (= call!700841 (isEmpty!41767 lt!2659670))))

(declare-fun b!7635645 () Bool)

(declare-fun res!3058221 () Bool)

(assert (=> b!7635645 (=> res!3058221 e!4539132)))

(assert (=> b!7635645 (= res!3058221 e!4539131)))

(declare-fun res!3058220 () Bool)

(assert (=> b!7635645 (=> (not res!3058220) (not e!4539131))))

(assert (=> b!7635645 (= res!3058220 lt!2659706)))

(declare-fun b!7635646 () Bool)

(declare-fun res!3058217 () Bool)

(assert (=> b!7635646 (=> (not res!3058217) (not e!4539131))))

(assert (=> b!7635646 (= res!3058217 (isEmpty!41767 (tail!15240 lt!2659670)))))

(declare-fun b!7635647 () Bool)

(declare-fun res!3058218 () Bool)

(assert (=> b!7635647 (=> res!3058218 e!4539128)))

(assert (=> b!7635647 (= res!3058218 (not (isEmpty!41767 (tail!15240 lt!2659670))))))

(assert (= (and d!2324576 c!1406533) b!7635639))

(assert (= (and d!2324576 (not c!1406533)) b!7635636))

(assert (= (and d!2324576 c!1406531) b!7635635))

(assert (= (and d!2324576 (not c!1406531)) b!7635637))

(assert (= (and b!7635637 c!1406532) b!7635644))

(assert (= (and b!7635637 (not c!1406532)) b!7635643))

(assert (= (and b!7635643 (not res!3058219)) b!7635645))

(assert (= (and b!7635645 res!3058220) b!7635640))

(assert (= (and b!7635640 res!3058222) b!7635646))

(assert (= (and b!7635646 res!3058217) b!7635642))

(assert (= (and b!7635645 (not res!3058221)) b!7635634))

(assert (= (and b!7635634 res!3058223) b!7635641))

(assert (= (and b!7635641 (not res!3058224)) b!7635647))

(assert (= (and b!7635647 (not res!3058218)) b!7635638))

(assert (= (or b!7635635 b!7635640 b!7635641) bm!700836))

(declare-fun m!8160454 () Bool)

(assert (=> b!7635638 m!8160454))

(assert (=> b!7635636 m!8160454))

(assert (=> b!7635636 m!8160454))

(declare-fun m!8160456 () Bool)

(assert (=> b!7635636 m!8160456))

(declare-fun m!8160458 () Bool)

(assert (=> b!7635636 m!8160458))

(assert (=> b!7635636 m!8160456))

(assert (=> b!7635636 m!8160458))

(declare-fun m!8160460 () Bool)

(assert (=> b!7635636 m!8160460))

(declare-fun m!8160462 () Bool)

(assert (=> bm!700836 m!8160462))

(assert (=> b!7635646 m!8160458))

(assert (=> b!7635646 m!8160458))

(declare-fun m!8160464 () Bool)

(assert (=> b!7635646 m!8160464))

(assert (=> b!7635647 m!8160458))

(assert (=> b!7635647 m!8160458))

(assert (=> b!7635647 m!8160464))

(assert (=> b!7635642 m!8160454))

(assert (=> d!2324576 m!8160462))

(declare-fun m!8160466 () Bool)

(assert (=> d!2324576 m!8160466))

(declare-fun m!8160468 () Bool)

(assert (=> b!7635639 m!8160468))

(assert (=> b!7635435 d!2324576))

(declare-fun b!7635680 () Bool)

(declare-fun res!3058239 () Bool)

(declare-fun e!4539149 () Bool)

(assert (=> b!7635680 (=> (not res!3058239) (not e!4539149))))

(declare-fun lt!2659711 () List!73264)

(declare-fun size!42577 (List!73264) Int)

(assert (=> b!7635680 (= res!3058239 (= (size!42577 lt!2659711) (+ (size!42577 (_1!37995 lt!2659673)) (size!42577 (_2!37995 lt!2659673)))))))

(declare-fun d!2324578 () Bool)

(assert (=> d!2324578 e!4539149))

(declare-fun res!3058240 () Bool)

(assert (=> d!2324578 (=> (not res!3058240) (not e!4539149))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15484 (List!73264) (InoxSet C!41152))

(assert (=> d!2324578 (= res!3058240 (= (content!15484 lt!2659711) ((_ map or) (content!15484 (_1!37995 lt!2659673)) (content!15484 (_2!37995 lt!2659673)))))))

(declare-fun e!4539148 () List!73264)

(assert (=> d!2324578 (= lt!2659711 e!4539148)))

(declare-fun c!1406542 () Bool)

(assert (=> d!2324578 (= c!1406542 ((_ is Nil!73140) (_1!37995 lt!2659673)))))

(assert (=> d!2324578 (= (++!17693 (_1!37995 lt!2659673) (_2!37995 lt!2659673)) lt!2659711)))

(declare-fun b!7635678 () Bool)

(assert (=> b!7635678 (= e!4539148 (_2!37995 lt!2659673))))

(declare-fun b!7635681 () Bool)

(assert (=> b!7635681 (= e!4539149 (or (not (= (_2!37995 lt!2659673) Nil!73140)) (= lt!2659711 (_1!37995 lt!2659673))))))

(declare-fun b!7635679 () Bool)

(assert (=> b!7635679 (= e!4539148 (Cons!73140 (h!79588 (_1!37995 lt!2659673)) (++!17693 (t!387999 (_1!37995 lt!2659673)) (_2!37995 lt!2659673))))))

(assert (= (and d!2324578 c!1406542) b!7635678))

(assert (= (and d!2324578 (not c!1406542)) b!7635679))

(assert (= (and d!2324578 res!3058240) b!7635680))

(assert (= (and b!7635680 res!3058239) b!7635681))

(declare-fun m!8160470 () Bool)

(assert (=> b!7635680 m!8160470))

(declare-fun m!8160472 () Bool)

(assert (=> b!7635680 m!8160472))

(declare-fun m!8160474 () Bool)

(assert (=> b!7635680 m!8160474))

(declare-fun m!8160476 () Bool)

(assert (=> d!2324578 m!8160476))

(declare-fun m!8160478 () Bool)

(assert (=> d!2324578 m!8160478))

(declare-fun m!8160480 () Bool)

(assert (=> d!2324578 m!8160480))

(declare-fun m!8160482 () Bool)

(assert (=> b!7635679 m!8160482))

(assert (=> b!7635435 d!2324578))

(declare-fun d!2324580 () Bool)

(declare-fun e!4539154 () Bool)

(assert (=> d!2324580 e!4539154))

(declare-fun c!1406543 () Bool)

(assert (=> d!2324580 (= c!1406543 ((_ is EmptyExpr!20413) r!14126))))

(declare-fun lt!2659712 () Bool)

(declare-fun e!4539160 () Bool)

(assert (=> d!2324580 (= lt!2659712 e!4539160)))

(declare-fun c!1406545 () Bool)

(assert (=> d!2324580 (= c!1406545 (isEmpty!41767 lt!2659670))))

(assert (=> d!2324580 (validRegex!10831 r!14126)))

(assert (=> d!2324580 (= (matchR!9916 r!14126 lt!2659670) lt!2659712)))

(declare-fun b!7635688 () Bool)

(declare-fun e!4539159 () Bool)

(declare-fun e!4539157 () Bool)

(assert (=> b!7635688 (= e!4539159 e!4539157)))

(declare-fun res!3058253 () Bool)

(assert (=> b!7635688 (=> (not res!3058253) (not e!4539157))))

(assert (=> b!7635688 (= res!3058253 (not lt!2659712))))

(declare-fun b!7635689 () Bool)

(declare-fun call!700842 () Bool)

(assert (=> b!7635689 (= e!4539154 (= lt!2659712 call!700842))))

(declare-fun b!7635690 () Bool)

(assert (=> b!7635690 (= e!4539160 (matchR!9916 (derivativeStep!5900 r!14126 (head!15700 lt!2659670)) (tail!15240 lt!2659670)))))

(declare-fun b!7635691 () Bool)

(declare-fun e!4539156 () Bool)

(assert (=> b!7635691 (= e!4539154 e!4539156)))

(declare-fun c!1406544 () Bool)

(assert (=> b!7635691 (= c!1406544 ((_ is EmptyLang!20413) r!14126))))

(declare-fun b!7635692 () Bool)

(declare-fun e!4539155 () Bool)

(assert (=> b!7635692 (= e!4539155 (not (= (head!15700 lt!2659670) (c!1406484 r!14126))))))

(declare-fun b!7635693 () Bool)

(assert (=> b!7635693 (= e!4539160 (nullable!8927 r!14126))))

(declare-fun b!7635694 () Bool)

(declare-fun res!3058252 () Bool)

(declare-fun e!4539158 () Bool)

(assert (=> b!7635694 (=> (not res!3058252) (not e!4539158))))

(assert (=> b!7635694 (= res!3058252 (not call!700842))))

(declare-fun b!7635695 () Bool)

(assert (=> b!7635695 (= e!4539157 e!4539155)))

(declare-fun res!3058254 () Bool)

(assert (=> b!7635695 (=> res!3058254 e!4539155)))

(assert (=> b!7635695 (= res!3058254 call!700842)))

(declare-fun b!7635696 () Bool)

(assert (=> b!7635696 (= e!4539158 (= (head!15700 lt!2659670) (c!1406484 r!14126)))))

(declare-fun b!7635697 () Bool)

(declare-fun res!3058249 () Bool)

(assert (=> b!7635697 (=> res!3058249 e!4539159)))

(assert (=> b!7635697 (= res!3058249 (not ((_ is ElementMatch!20413) r!14126)))))

(assert (=> b!7635697 (= e!4539156 e!4539159)))

(declare-fun b!7635698 () Bool)

(assert (=> b!7635698 (= e!4539156 (not lt!2659712))))

(declare-fun bm!700837 () Bool)

(assert (=> bm!700837 (= call!700842 (isEmpty!41767 lt!2659670))))

(declare-fun b!7635699 () Bool)

(declare-fun res!3058251 () Bool)

(assert (=> b!7635699 (=> res!3058251 e!4539159)))

(assert (=> b!7635699 (= res!3058251 e!4539158)))

(declare-fun res!3058250 () Bool)

(assert (=> b!7635699 (=> (not res!3058250) (not e!4539158))))

(assert (=> b!7635699 (= res!3058250 lt!2659712)))

(declare-fun b!7635700 () Bool)

(declare-fun res!3058247 () Bool)

(assert (=> b!7635700 (=> (not res!3058247) (not e!4539158))))

(assert (=> b!7635700 (= res!3058247 (isEmpty!41767 (tail!15240 lt!2659670)))))

(declare-fun b!7635701 () Bool)

(declare-fun res!3058248 () Bool)

(assert (=> b!7635701 (=> res!3058248 e!4539155)))

(assert (=> b!7635701 (= res!3058248 (not (isEmpty!41767 (tail!15240 lt!2659670))))))

(assert (= (and d!2324580 c!1406545) b!7635693))

(assert (= (and d!2324580 (not c!1406545)) b!7635690))

(assert (= (and d!2324580 c!1406543) b!7635689))

(assert (= (and d!2324580 (not c!1406543)) b!7635691))

(assert (= (and b!7635691 c!1406544) b!7635698))

(assert (= (and b!7635691 (not c!1406544)) b!7635697))

(assert (= (and b!7635697 (not res!3058249)) b!7635699))

(assert (= (and b!7635699 res!3058250) b!7635694))

(assert (= (and b!7635694 res!3058252) b!7635700))

(assert (= (and b!7635700 res!3058247) b!7635696))

(assert (= (and b!7635699 (not res!3058251)) b!7635688))

(assert (= (and b!7635688 res!3058253) b!7635695))

(assert (= (and b!7635695 (not res!3058254)) b!7635701))

(assert (= (and b!7635701 (not res!3058248)) b!7635692))

(assert (= (or b!7635689 b!7635694 b!7635695) bm!700837))

(assert (=> b!7635692 m!8160454))

(assert (=> b!7635690 m!8160454))

(assert (=> b!7635690 m!8160454))

(declare-fun m!8160484 () Bool)

(assert (=> b!7635690 m!8160484))

(assert (=> b!7635690 m!8160458))

(assert (=> b!7635690 m!8160484))

(assert (=> b!7635690 m!8160458))

(declare-fun m!8160486 () Bool)

(assert (=> b!7635690 m!8160486))

(assert (=> bm!700837 m!8160462))

(assert (=> b!7635700 m!8160458))

(assert (=> b!7635700 m!8160458))

(assert (=> b!7635700 m!8160464))

(assert (=> b!7635701 m!8160458))

(assert (=> b!7635701 m!8160458))

(assert (=> b!7635701 m!8160464))

(assert (=> b!7635696 m!8160454))

(assert (=> d!2324580 m!8160462))

(assert (=> d!2324580 m!8160316))

(assert (=> b!7635693 m!8160374))

(assert (=> b!7635435 d!2324580))

(declare-fun d!2324582 () Bool)

(assert (=> d!2324582 (matchR!9916 (Concat!29258 (reg!20742 r!14126) r!14126) (++!17693 (_1!37995 lt!2659673) (_2!37995 lt!2659673)))))

(declare-fun lt!2659716 () Unit!167802)

(declare-fun choose!58952 (Regex!20413 Regex!20413 List!73264 List!73264 List!73264) Unit!167802)

(assert (=> d!2324582 (= lt!2659716 (choose!58952 (reg!20742 r!14126) r!14126 (_1!37995 lt!2659673) (_2!37995 lt!2659673) s!9605))))

(assert (=> d!2324582 (validRegex!10831 (reg!20742 r!14126))))

(assert (=> d!2324582 (= (lemmaFindSeparationIsDefinedThenConcatMatches!170 (reg!20742 r!14126) r!14126 (_1!37995 lt!2659673) (_2!37995 lt!2659673) s!9605) lt!2659716)))

(declare-fun bs!1944202 () Bool)

(assert (= bs!1944202 d!2324582))

(assert (=> bs!1944202 m!8160312))

(assert (=> bs!1944202 m!8160312))

(declare-fun m!8160488 () Bool)

(assert (=> bs!1944202 m!8160488))

(declare-fun m!8160490 () Bool)

(assert (=> bs!1944202 m!8160490))

(assert (=> bs!1944202 m!8160358))

(assert (=> b!7635435 d!2324582))

(declare-fun d!2324584 () Bool)

(assert (=> d!2324584 (matchR!9916 (Star!20413 (reg!20742 r!14126)) (++!17693 (_1!37995 lt!2659673) (_2!37995 lt!2659673)))))

(declare-fun lt!2659720 () Unit!167802)

(declare-fun choose!58953 (Regex!20413 List!73264 List!73264) Unit!167802)

(assert (=> d!2324584 (= lt!2659720 (choose!58953 (reg!20742 r!14126) (_1!37995 lt!2659673) (_2!37995 lt!2659673)))))

(assert (=> d!2324584 (validRegex!10831 (Star!20413 (reg!20742 r!14126)))))

(assert (=> d!2324584 (= (lemmaStarApp!200 (reg!20742 r!14126) (_1!37995 lt!2659673) (_2!37995 lt!2659673)) lt!2659720)))

(declare-fun bs!1944203 () Bool)

(assert (= bs!1944203 d!2324584))

(assert (=> bs!1944203 m!8160312))

(assert (=> bs!1944203 m!8160312))

(declare-fun m!8160514 () Bool)

(assert (=> bs!1944203 m!8160514))

(declare-fun m!8160516 () Bool)

(assert (=> bs!1944203 m!8160516))

(declare-fun m!8160518 () Bool)

(assert (=> bs!1944203 m!8160518))

(assert (=> b!7635435 d!2324584))

(declare-fun d!2324590 () Bool)

(declare-fun choose!58954 (Int) Bool)

(assert (=> d!2324590 (= (Exists!4567 lambda!469353) (choose!58954 lambda!469353))))

(declare-fun bs!1944204 () Bool)

(assert (= bs!1944204 d!2324590))

(declare-fun m!8160520 () Bool)

(assert (=> bs!1944204 m!8160520))

(assert (=> b!7635430 d!2324590))

(declare-fun d!2324592 () Bool)

(declare-fun isEmpty!41769 (Option!17486) Bool)

(assert (=> d!2324592 (= (isDefined!14102 lt!2659677) (not (isEmpty!41769 lt!2659677)))))

(declare-fun bs!1944205 () Bool)

(assert (= bs!1944205 d!2324592))

(declare-fun m!8160522 () Bool)

(assert (=> bs!1944205 m!8160522))

(assert (=> b!7635430 d!2324592))

(declare-fun d!2324594 () Bool)

(declare-fun e!4539227 () Bool)

(assert (=> d!2324594 e!4539227))

(declare-fun res!3058314 () Bool)

(assert (=> d!2324594 (=> res!3058314 e!4539227)))

(declare-fun e!4539229 () Bool)

(assert (=> d!2324594 (= res!3058314 e!4539229)))

(declare-fun res!3058312 () Bool)

(assert (=> d!2324594 (=> (not res!3058312) (not e!4539229))))

(declare-fun lt!2659733 () Option!17486)

(assert (=> d!2324594 (= res!3058312 (isDefined!14102 lt!2659733))))

(declare-fun e!4539228 () Option!17486)

(assert (=> d!2324594 (= lt!2659733 e!4539228)))

(declare-fun c!1406573 () Bool)

(declare-fun e!4539230 () Bool)

(assert (=> d!2324594 (= c!1406573 e!4539230)))

(declare-fun res!3058313 () Bool)

(assert (=> d!2324594 (=> (not res!3058313) (not e!4539230))))

(assert (=> d!2324594 (= res!3058313 (matchR!9916 (reg!20742 r!14126) Nil!73140))))

(assert (=> d!2324594 (validRegex!10831 (reg!20742 r!14126))))

(assert (=> d!2324594 (= (findConcatSeparation!3516 (reg!20742 r!14126) r!14126 Nil!73140 s!9605 s!9605) lt!2659733)))

(declare-fun b!7635811 () Bool)

(declare-fun lt!2659732 () Unit!167802)

(declare-fun lt!2659731 () Unit!167802)

(assert (=> b!7635811 (= lt!2659732 lt!2659731)))

(assert (=> b!7635811 (= (++!17693 (++!17693 Nil!73140 (Cons!73140 (h!79588 s!9605) Nil!73140)) (t!387999 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3255 (List!73264 C!41152 List!73264 List!73264) Unit!167802)

(assert (=> b!7635811 (= lt!2659731 (lemmaMoveElementToOtherListKeepsConcatEq!3255 Nil!73140 (h!79588 s!9605) (t!387999 s!9605) s!9605))))

(declare-fun e!4539231 () Option!17486)

(assert (=> b!7635811 (= e!4539231 (findConcatSeparation!3516 (reg!20742 r!14126) r!14126 (++!17693 Nil!73140 (Cons!73140 (h!79588 s!9605) Nil!73140)) (t!387999 s!9605) s!9605))))

(declare-fun b!7635812 () Bool)

(assert (=> b!7635812 (= e!4539227 (not (isDefined!14102 lt!2659733)))))

(declare-fun b!7635813 () Bool)

(assert (=> b!7635813 (= e!4539230 (matchR!9916 r!14126 s!9605))))

(declare-fun b!7635814 () Bool)

(assert (=> b!7635814 (= e!4539228 (Some!17485 (tuple2!69385 Nil!73140 s!9605)))))

(declare-fun b!7635815 () Bool)

(assert (=> b!7635815 (= e!4539228 e!4539231)))

(declare-fun c!1406574 () Bool)

(assert (=> b!7635815 (= c!1406574 ((_ is Nil!73140) s!9605))))

(declare-fun b!7635816 () Bool)

(assert (=> b!7635816 (= e!4539229 (= (++!17693 (_1!37995 (get!25884 lt!2659733)) (_2!37995 (get!25884 lt!2659733))) s!9605))))

(declare-fun b!7635817 () Bool)

(declare-fun res!3058311 () Bool)

(assert (=> b!7635817 (=> (not res!3058311) (not e!4539229))))

(assert (=> b!7635817 (= res!3058311 (matchR!9916 r!14126 (_2!37995 (get!25884 lt!2659733))))))

(declare-fun b!7635818 () Bool)

(declare-fun res!3058310 () Bool)

(assert (=> b!7635818 (=> (not res!3058310) (not e!4539229))))

(assert (=> b!7635818 (= res!3058310 (matchR!9916 (reg!20742 r!14126) (_1!37995 (get!25884 lt!2659733))))))

(declare-fun b!7635819 () Bool)

(assert (=> b!7635819 (= e!4539231 None!17485)))

(assert (= (and d!2324594 res!3058313) b!7635813))

(assert (= (and d!2324594 c!1406573) b!7635814))

(assert (= (and d!2324594 (not c!1406573)) b!7635815))

(assert (= (and b!7635815 c!1406574) b!7635819))

(assert (= (and b!7635815 (not c!1406574)) b!7635811))

(assert (= (and d!2324594 res!3058312) b!7635818))

(assert (= (and b!7635818 res!3058310) b!7635817))

(assert (= (and b!7635817 res!3058311) b!7635816))

(assert (= (and d!2324594 (not res!3058314)) b!7635812))

(declare-fun m!8160544 () Bool)

(assert (=> d!2324594 m!8160544))

(declare-fun m!8160546 () Bool)

(assert (=> d!2324594 m!8160546))

(assert (=> d!2324594 m!8160358))

(declare-fun m!8160548 () Bool)

(assert (=> b!7635816 m!8160548))

(declare-fun m!8160550 () Bool)

(assert (=> b!7635816 m!8160550))

(declare-fun m!8160552 () Bool)

(assert (=> b!7635811 m!8160552))

(assert (=> b!7635811 m!8160552))

(declare-fun m!8160554 () Bool)

(assert (=> b!7635811 m!8160554))

(declare-fun m!8160556 () Bool)

(assert (=> b!7635811 m!8160556))

(assert (=> b!7635811 m!8160552))

(declare-fun m!8160558 () Bool)

(assert (=> b!7635811 m!8160558))

(assert (=> b!7635818 m!8160548))

(declare-fun m!8160560 () Bool)

(assert (=> b!7635818 m!8160560))

(assert (=> b!7635817 m!8160548))

(declare-fun m!8160562 () Bool)

(assert (=> b!7635817 m!8160562))

(assert (=> b!7635812 m!8160544))

(assert (=> b!7635813 m!8160322))

(assert (=> b!7635430 d!2324594))

(declare-fun bs!1944209 () Bool)

(declare-fun d!2324604 () Bool)

(assert (= bs!1944209 (and d!2324604 b!7635430)))

(declare-fun lambda!469372 () Int)

(assert (=> bs!1944209 (= lambda!469372 lambda!469353)))

(declare-fun bs!1944210 () Bool)

(assert (= bs!1944210 (and d!2324604 b!7635556)))

(assert (=> bs!1944210 (not (= lambda!469372 lambda!469359))))

(declare-fun bs!1944211 () Bool)

(assert (= bs!1944211 (and d!2324604 b!7635563)))

(assert (=> bs!1944211 (not (= lambda!469372 lambda!469358))))

(declare-fun bs!1944212 () Bool)

(assert (= bs!1944212 (and d!2324604 b!7635578)))

(assert (=> bs!1944212 (not (= lambda!469372 lambda!469362))))

(declare-fun bs!1944214 () Bool)

(assert (= bs!1944214 (and d!2324604 b!7635571)))

(assert (=> bs!1944214 (not (= lambda!469372 lambda!469364))))

(assert (=> d!2324604 true))

(assert (=> d!2324604 true))

(assert (=> d!2324604 true))

(assert (=> d!2324604 (= (isDefined!14102 (findConcatSeparation!3516 (reg!20742 r!14126) r!14126 Nil!73140 s!9605 s!9605)) (Exists!4567 lambda!469372))))

(declare-fun lt!2659736 () Unit!167802)

(declare-fun choose!58956 (Regex!20413 Regex!20413 List!73264) Unit!167802)

(assert (=> d!2324604 (= lt!2659736 (choose!58956 (reg!20742 r!14126) r!14126 s!9605))))

(assert (=> d!2324604 (validRegex!10831 (reg!20742 r!14126))))

(assert (=> d!2324604 (= (lemmaFindConcatSeparationEquivalentToExists!3274 (reg!20742 r!14126) r!14126 s!9605) lt!2659736)))

(declare-fun bs!1944217 () Bool)

(assert (= bs!1944217 d!2324604))

(declare-fun m!8160564 () Bool)

(assert (=> bs!1944217 m!8160564))

(assert (=> bs!1944217 m!8160338))

(declare-fun m!8160566 () Bool)

(assert (=> bs!1944217 m!8160566))

(assert (=> bs!1944217 m!8160338))

(declare-fun m!8160568 () Bool)

(assert (=> bs!1944217 m!8160568))

(assert (=> bs!1944217 m!8160358))

(assert (=> b!7635430 d!2324604))

(declare-fun b!7635870 () Bool)

(declare-fun e!4539254 () Bool)

(declare-fun tp!2229088 () Bool)

(declare-fun tp!2229089 () Bool)

(assert (=> b!7635870 (= e!4539254 (and tp!2229088 tp!2229089))))

(declare-fun b!7635871 () Bool)

(declare-fun tp!2229092 () Bool)

(assert (=> b!7635871 (= e!4539254 tp!2229092)))

(declare-fun b!7635869 () Bool)

(assert (=> b!7635869 (= e!4539254 tp_is_empty!51181)))

(assert (=> b!7635426 (= tp!2229077 e!4539254)))

(declare-fun b!7635872 () Bool)

(declare-fun tp!2229091 () Bool)

(declare-fun tp!2229090 () Bool)

(assert (=> b!7635872 (= e!4539254 (and tp!2229091 tp!2229090))))

(assert (= (and b!7635426 ((_ is ElementMatch!20413) (reg!20742 r!14126))) b!7635869))

(assert (= (and b!7635426 ((_ is Concat!29258) (reg!20742 r!14126))) b!7635870))

(assert (= (and b!7635426 ((_ is Star!20413) (reg!20742 r!14126))) b!7635871))

(assert (= (and b!7635426 ((_ is Union!20413) (reg!20742 r!14126))) b!7635872))

(declare-fun b!7635874 () Bool)

(declare-fun e!4539255 () Bool)

(declare-fun tp!2229093 () Bool)

(declare-fun tp!2229094 () Bool)

(assert (=> b!7635874 (= e!4539255 (and tp!2229093 tp!2229094))))

(declare-fun b!7635875 () Bool)

(declare-fun tp!2229097 () Bool)

(assert (=> b!7635875 (= e!4539255 tp!2229097)))

(declare-fun b!7635873 () Bool)

(assert (=> b!7635873 (= e!4539255 tp_is_empty!51181)))

(assert (=> b!7635433 (= tp!2229075 e!4539255)))

(declare-fun b!7635876 () Bool)

(declare-fun tp!2229096 () Bool)

(declare-fun tp!2229095 () Bool)

(assert (=> b!7635876 (= e!4539255 (and tp!2229096 tp!2229095))))

(assert (= (and b!7635433 ((_ is ElementMatch!20413) (regOne!41338 r!14126))) b!7635873))

(assert (= (and b!7635433 ((_ is Concat!29258) (regOne!41338 r!14126))) b!7635874))

(assert (= (and b!7635433 ((_ is Star!20413) (regOne!41338 r!14126))) b!7635875))

(assert (= (and b!7635433 ((_ is Union!20413) (regOne!41338 r!14126))) b!7635876))

(declare-fun b!7635878 () Bool)

(declare-fun e!4539256 () Bool)

(declare-fun tp!2229098 () Bool)

(declare-fun tp!2229099 () Bool)

(assert (=> b!7635878 (= e!4539256 (and tp!2229098 tp!2229099))))

(declare-fun b!7635879 () Bool)

(declare-fun tp!2229102 () Bool)

(assert (=> b!7635879 (= e!4539256 tp!2229102)))

(declare-fun b!7635877 () Bool)

(assert (=> b!7635877 (= e!4539256 tp_is_empty!51181)))

(assert (=> b!7635433 (= tp!2229074 e!4539256)))

(declare-fun b!7635880 () Bool)

(declare-fun tp!2229101 () Bool)

(declare-fun tp!2229100 () Bool)

(assert (=> b!7635880 (= e!4539256 (and tp!2229101 tp!2229100))))

(assert (= (and b!7635433 ((_ is ElementMatch!20413) (regTwo!41338 r!14126))) b!7635877))

(assert (= (and b!7635433 ((_ is Concat!29258) (regTwo!41338 r!14126))) b!7635878))

(assert (= (and b!7635433 ((_ is Star!20413) (regTwo!41338 r!14126))) b!7635879))

(assert (= (and b!7635433 ((_ is Union!20413) (regTwo!41338 r!14126))) b!7635880))

(declare-fun b!7635882 () Bool)

(declare-fun e!4539257 () Bool)

(declare-fun tp!2229103 () Bool)

(declare-fun tp!2229104 () Bool)

(assert (=> b!7635882 (= e!4539257 (and tp!2229103 tp!2229104))))

(declare-fun b!7635883 () Bool)

(declare-fun tp!2229107 () Bool)

(assert (=> b!7635883 (= e!4539257 tp!2229107)))

(declare-fun b!7635881 () Bool)

(assert (=> b!7635881 (= e!4539257 tp_is_empty!51181)))

(assert (=> b!7635428 (= tp!2229073 e!4539257)))

(declare-fun b!7635884 () Bool)

(declare-fun tp!2229106 () Bool)

(declare-fun tp!2229105 () Bool)

(assert (=> b!7635884 (= e!4539257 (and tp!2229106 tp!2229105))))

(assert (= (and b!7635428 ((_ is ElementMatch!20413) (regOne!41339 r!14126))) b!7635881))

(assert (= (and b!7635428 ((_ is Concat!29258) (regOne!41339 r!14126))) b!7635882))

(assert (= (and b!7635428 ((_ is Star!20413) (regOne!41339 r!14126))) b!7635883))

(assert (= (and b!7635428 ((_ is Union!20413) (regOne!41339 r!14126))) b!7635884))

(declare-fun b!7635897 () Bool)

(declare-fun e!4539265 () Bool)

(declare-fun tp!2229108 () Bool)

(declare-fun tp!2229109 () Bool)

(assert (=> b!7635897 (= e!4539265 (and tp!2229108 tp!2229109))))

(declare-fun b!7635898 () Bool)

(declare-fun tp!2229112 () Bool)

(assert (=> b!7635898 (= e!4539265 tp!2229112)))

(declare-fun b!7635896 () Bool)

(assert (=> b!7635896 (= e!4539265 tp_is_empty!51181)))

(assert (=> b!7635428 (= tp!2229072 e!4539265)))

(declare-fun b!7635899 () Bool)

(declare-fun tp!2229111 () Bool)

(declare-fun tp!2229110 () Bool)

(assert (=> b!7635899 (= e!4539265 (and tp!2229111 tp!2229110))))

(assert (= (and b!7635428 ((_ is ElementMatch!20413) (regTwo!41339 r!14126))) b!7635896))

(assert (= (and b!7635428 ((_ is Concat!29258) (regTwo!41339 r!14126))) b!7635897))

(assert (= (and b!7635428 ((_ is Star!20413) (regTwo!41339 r!14126))) b!7635898))

(assert (= (and b!7635428 ((_ is Union!20413) (regTwo!41339 r!14126))) b!7635899))

(declare-fun b!7635904 () Bool)

(declare-fun e!4539268 () Bool)

(declare-fun tp!2229115 () Bool)

(assert (=> b!7635904 (= e!4539268 (and tp_is_empty!51181 tp!2229115))))

(assert (=> b!7635429 (= tp!2229076 e!4539268)))

(assert (= (and b!7635429 ((_ is Cons!73140) (t!387999 s!9605))) b!7635904))

(check-sat (not b!7635564) (not b!7635680) (not b!7635898) (not b!7635470) (not b!7635897) (not b!7635811) (not b!7635883) (not b!7635638) (not b!7635875) (not b!7635472) (not b!7635476) (not b!7635585) (not d!2324552) (not b!7635593) (not b!7635629) (not b!7635700) (not b!7635560) (not b!7635812) (not b!7635490) (not b!7635693) (not b!7635817) (not b!7635639) (not b!7635692) (not b!7635575) (not b!7635495) (not b!7635586) (not b!7635878) (not b!7635880) (not d!2324580) (not b!7635872) (not b!7635646) (not b!7635899) (not b!7635480) (not bm!700834) tp_is_empty!51181 (not b!7635884) (not d!2324554) (not b!7635594) (not b!7635904) (not d!2324594) (not b!7635813) (not bm!700833) (not bm!700826) (not bm!700822) (not b!7635879) (not b!7635583) (not b!7635874) (not d!2324590) (not b!7635484) (not b!7635579) (not bm!700816) (not bm!700836) (not d!2324576) (not b!7635870) (not bm!700817) (not bm!700837) (not b!7635818) (not b!7635647) (not b!7635701) (not d!2324584) (not b!7635690) (not b!7635871) (not b!7635696) (not b!7635679) (not d!2324556) (not d!2324592) (not bm!700825) (not bm!700824) (not b!7635816) (not d!2324582) (not b!7635589) (not d!2324604) (not b!7635882) (not b!7635481) (not b!7635642) (not b!7635473) (not bm!700823) (not b!7635636) (not b!7635487) (not d!2324578) (not b!7635486) (not d!2324566) (not d!2324542) (not b!7635876) (not b!7635494))
(check-sat)
