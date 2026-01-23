; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697434 () Bool)

(assert start!697434)

(declare-fun bs!1889830 () Bool)

(declare-fun b!7155355 () Bool)

(assert (= bs!1889830 (and b!7155355 start!697434)))

(declare-fun lambda!436352 () Int)

(declare-fun lambda!436351 () Int)

(assert (=> bs!1889830 (not (= lambda!436352 lambda!436351))))

(declare-fun b!7155354 () Bool)

(declare-fun res!2917718 () Bool)

(declare-fun e!4298468 () Bool)

(assert (=> b!7155354 (=> (not res!2917718) (not e!4298468))))

(declare-datatypes ((C!36802 0))(
  ( (C!36803 (val!28349 Int)) )
))
(declare-datatypes ((Regex!18264 0))(
  ( (ElementMatch!18264 (c!1333523 C!36802)) (Concat!27109 (regOne!37040 Regex!18264) (regTwo!37040 Regex!18264)) (EmptyExpr!18264) (Star!18264 (reg!18593 Regex!18264)) (EmptyLang!18264) (Union!18264 (regOne!37041 Regex!18264) (regTwo!37041 Regex!18264)) )
))
(declare-datatypes ((List!69568 0))(
  ( (Nil!69444) (Cons!69444 (h!75892 Regex!18264) (t!383585 List!69568)) )
))
(declare-fun l!9132 () List!69568)

(assert (=> b!7155354 (= res!2917718 (not (is-Cons!69444 l!9132)))))

(declare-fun res!2917714 () Bool)

(assert (=> start!697434 (=> (not res!2917714) (not e!4298468))))

(declare-fun forall!17104 (List!69568 Int) Bool)

(assert (=> start!697434 (= res!2917714 (forall!17104 l!9132 lambda!436351))))

(assert (=> start!697434 e!4298468))

(declare-fun e!4298466 () Bool)

(assert (=> start!697434 e!4298466))

(declare-fun e!4298465 () Bool)

(assert (=> start!697434 e!4298465))

(declare-fun r!13749 () Regex!18264)

(declare-fun nullable!7741 (Regex!18264) Bool)

(declare-fun exists!4052 (List!69568 Int) Bool)

(assert (=> b!7155355 (= e!4298468 (not (= (nullable!7741 r!13749) (exists!4052 l!9132 lambda!436352))))))

(declare-fun b!7155356 () Bool)

(declare-fun tp!1978292 () Bool)

(declare-fun tp!1978291 () Bool)

(assert (=> b!7155356 (= e!4298465 (and tp!1978292 tp!1978291))))

(declare-fun b!7155357 () Bool)

(declare-fun tp!1978293 () Bool)

(assert (=> b!7155357 (= e!4298465 tp!1978293)))

(declare-fun b!7155358 () Bool)

(declare-fun tp_is_empty!46161 () Bool)

(assert (=> b!7155358 (= e!4298465 tp_is_empty!46161)))

(declare-fun b!7155359 () Bool)

(declare-fun res!2917715 () Bool)

(assert (=> b!7155359 (=> (not res!2917715) (not e!4298468))))

(declare-fun generalisedUnion!2727 (List!69568) Regex!18264)

(assert (=> b!7155359 (= res!2917715 (= r!13749 (generalisedUnion!2727 l!9132)))))

(declare-fun b!7155360 () Bool)

(declare-fun tp!1978289 () Bool)

(declare-fun tp!1978294 () Bool)

(assert (=> b!7155360 (= e!4298465 (and tp!1978289 tp!1978294))))

(declare-fun b!7155361 () Bool)

(declare-fun res!2917717 () Bool)

(assert (=> b!7155361 (=> (not res!2917717) (not e!4298468))))

(declare-fun e!4298467 () Bool)

(assert (=> b!7155361 (= res!2917717 e!4298467)))

(declare-fun res!2917716 () Bool)

(assert (=> b!7155361 (=> res!2917716 e!4298467)))

(assert (=> b!7155361 (= res!2917716 (not (is-Cons!69444 l!9132)))))

(declare-fun b!7155362 () Bool)

(declare-fun isEmpty!40132 (List!69568) Bool)

(assert (=> b!7155362 (= e!4298467 (not (isEmpty!40132 (t!383585 l!9132))))))

(declare-fun b!7155363 () Bool)

(declare-fun tp!1978288 () Bool)

(declare-fun tp!1978290 () Bool)

(assert (=> b!7155363 (= e!4298466 (and tp!1978288 tp!1978290))))

(assert (= (and start!697434 res!2917714) b!7155359))

(assert (= (and b!7155359 res!2917715) b!7155361))

(assert (= (and b!7155361 (not res!2917716)) b!7155362))

(assert (= (and b!7155361 res!2917717) b!7155354))

(assert (= (and b!7155354 res!2917718) b!7155355))

(assert (= (and start!697434 (is-Cons!69444 l!9132)) b!7155363))

(assert (= (and start!697434 (is-ElementMatch!18264 r!13749)) b!7155358))

(assert (= (and start!697434 (is-Concat!27109 r!13749)) b!7155360))

(assert (= (and start!697434 (is-Star!18264 r!13749)) b!7155357))

(assert (= (and start!697434 (is-Union!18264 r!13749)) b!7155356))

(declare-fun m!7862552 () Bool)

(assert (=> start!697434 m!7862552))

(declare-fun m!7862554 () Bool)

(assert (=> b!7155355 m!7862554))

(declare-fun m!7862556 () Bool)

(assert (=> b!7155355 m!7862556))

(declare-fun m!7862558 () Bool)

(assert (=> b!7155359 m!7862558))

(declare-fun m!7862560 () Bool)

(assert (=> b!7155362 m!7862560))

(push 1)

(assert tp_is_empty!46161)

(assert (not b!7155359))

(assert (not b!7155355))

(assert (not b!7155356))

(assert (not b!7155360))

(assert (not b!7155357))

(assert (not b!7155362))

(assert (not b!7155363))

(assert (not start!697434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229525 () Bool)

(declare-fun nullableFct!3019 (Regex!18264) Bool)

(assert (=> d!2229525 (= (nullable!7741 r!13749) (nullableFct!3019 r!13749))))

(declare-fun bs!1889832 () Bool)

(assert (= bs!1889832 d!2229525))

(declare-fun m!7862572 () Bool)

(assert (=> bs!1889832 m!7862572))

(assert (=> b!7155355 d!2229525))

(declare-fun bs!1889833 () Bool)

(declare-fun d!2229527 () Bool)

(assert (= bs!1889833 (and d!2229527 start!697434)))

(declare-fun lambda!436361 () Int)

(assert (=> bs!1889833 (not (= lambda!436361 lambda!436351))))

(declare-fun bs!1889834 () Bool)

(assert (= bs!1889834 (and d!2229527 b!7155355)))

(assert (=> bs!1889834 (not (= lambda!436361 lambda!436352))))

(assert (=> d!2229527 true))

(declare-fun order!28635 () Int)

(declare-fun dynLambda!28303 (Int Int) Int)

(assert (=> d!2229527 (< (dynLambda!28303 order!28635 lambda!436352) (dynLambda!28303 order!28635 lambda!436361))))

(assert (=> d!2229527 (= (exists!4052 l!9132 lambda!436352) (not (forall!17104 l!9132 lambda!436361)))))

(declare-fun bs!1889835 () Bool)

(assert (= bs!1889835 d!2229527))

(declare-fun m!7862574 () Bool)

(assert (=> bs!1889835 m!7862574))

(assert (=> b!7155355 d!2229527))

(declare-fun d!2229529 () Bool)

(declare-fun res!2917738 () Bool)

(declare-fun e!4298485 () Bool)

(assert (=> d!2229529 (=> res!2917738 e!4298485)))

(assert (=> d!2229529 (= res!2917738 (is-Nil!69444 l!9132))))

(assert (=> d!2229529 (= (forall!17104 l!9132 lambda!436351) e!4298485)))

(declare-fun b!7155400 () Bool)

(declare-fun e!4298486 () Bool)

(assert (=> b!7155400 (= e!4298485 e!4298486)))

(declare-fun res!2917739 () Bool)

(assert (=> b!7155400 (=> (not res!2917739) (not e!4298486))))

(declare-fun dynLambda!28304 (Int Regex!18264) Bool)

(assert (=> b!7155400 (= res!2917739 (dynLambda!28304 lambda!436351 (h!75892 l!9132)))))

(declare-fun b!7155401 () Bool)

(assert (=> b!7155401 (= e!4298486 (forall!17104 (t!383585 l!9132) lambda!436351))))

(assert (= (and d!2229529 (not res!2917738)) b!7155400))

(assert (= (and b!7155400 res!2917739) b!7155401))

(declare-fun b_lambda!273299 () Bool)

(assert (=> (not b_lambda!273299) (not b!7155400)))

(declare-fun m!7862576 () Bool)

(assert (=> b!7155400 m!7862576))

(declare-fun m!7862578 () Bool)

(assert (=> b!7155401 m!7862578))

(assert (=> start!697434 d!2229529))

(declare-fun d!2229533 () Bool)

(assert (=> d!2229533 (= (isEmpty!40132 (t!383585 l!9132)) (is-Nil!69444 (t!383585 l!9132)))))

(assert (=> b!7155362 d!2229533))

(declare-fun bs!1889837 () Bool)

(declare-fun d!2229535 () Bool)

(assert (= bs!1889837 (and d!2229535 start!697434)))

(declare-fun lambda!436366 () Int)

(assert (=> bs!1889837 (= lambda!436366 lambda!436351)))

(declare-fun bs!1889838 () Bool)

(assert (= bs!1889838 (and d!2229535 b!7155355)))

(assert (=> bs!1889838 (not (= lambda!436366 lambda!436352))))

(declare-fun bs!1889839 () Bool)

(assert (= bs!1889839 (and d!2229535 d!2229527)))

(assert (=> bs!1889839 (not (= lambda!436366 lambda!436361))))

(declare-fun b!7155428 () Bool)

(declare-fun e!4298505 () Regex!18264)

(assert (=> b!7155428 (= e!4298505 (h!75892 l!9132))))

(declare-fun b!7155429 () Bool)

(declare-fun e!4298506 () Bool)

(declare-fun e!4298509 () Bool)

(assert (=> b!7155429 (= e!4298506 e!4298509)))

(declare-fun c!1333536 () Bool)

(assert (=> b!7155429 (= c!1333536 (isEmpty!40132 l!9132))))

(declare-fun b!7155430 () Bool)

(declare-fun e!4298507 () Bool)

(declare-fun lt!2569179 () Regex!18264)

(declare-fun isUnion!1556 (Regex!18264) Bool)

(assert (=> b!7155430 (= e!4298507 (isUnion!1556 lt!2569179))))

(declare-fun b!7155431 () Bool)

(declare-fun e!4298510 () Regex!18264)

(assert (=> b!7155431 (= e!4298510 EmptyLang!18264)))

(declare-fun b!7155432 () Bool)

(declare-fun e!4298508 () Bool)

(assert (=> b!7155432 (= e!4298508 (isEmpty!40132 (t!383585 l!9132)))))

(assert (=> d!2229535 e!4298506))

(declare-fun res!2917751 () Bool)

(assert (=> d!2229535 (=> (not res!2917751) (not e!4298506))))

(declare-fun validRegex!9412 (Regex!18264) Bool)

(assert (=> d!2229535 (= res!2917751 (validRegex!9412 lt!2569179))))

(assert (=> d!2229535 (= lt!2569179 e!4298505)))

(declare-fun c!1333535 () Bool)

(assert (=> d!2229535 (= c!1333535 e!4298508)))

(declare-fun res!2917750 () Bool)

(assert (=> d!2229535 (=> (not res!2917750) (not e!4298508))))

(assert (=> d!2229535 (= res!2917750 (is-Cons!69444 l!9132))))

(assert (=> d!2229535 (forall!17104 l!9132 lambda!436366)))

(assert (=> d!2229535 (= (generalisedUnion!2727 l!9132) lt!2569179)))

(declare-fun b!7155433 () Bool)

(declare-fun head!14564 (List!69568) Regex!18264)

(assert (=> b!7155433 (= e!4298507 (= lt!2569179 (head!14564 l!9132)))))

(declare-fun b!7155434 () Bool)

(assert (=> b!7155434 (= e!4298509 e!4298507)))

(declare-fun c!1333534 () Bool)

(declare-fun tail!14033 (List!69568) List!69568)

(assert (=> b!7155434 (= c!1333534 (isEmpty!40132 (tail!14033 l!9132)))))

(declare-fun b!7155435 () Bool)

(assert (=> b!7155435 (= e!4298505 e!4298510)))

(declare-fun c!1333533 () Bool)

(assert (=> b!7155435 (= c!1333533 (is-Cons!69444 l!9132))))

(declare-fun b!7155436 () Bool)

(declare-fun isEmptyLang!2128 (Regex!18264) Bool)

(assert (=> b!7155436 (= e!4298509 (isEmptyLang!2128 lt!2569179))))

(declare-fun b!7155437 () Bool)

(assert (=> b!7155437 (= e!4298510 (Union!18264 (h!75892 l!9132) (generalisedUnion!2727 (t!383585 l!9132))))))

(assert (= (and d!2229535 res!2917750) b!7155432))

(assert (= (and d!2229535 c!1333535) b!7155428))

(assert (= (and d!2229535 (not c!1333535)) b!7155435))

(assert (= (and b!7155435 c!1333533) b!7155437))

(assert (= (and b!7155435 (not c!1333533)) b!7155431))

(assert (= (and d!2229535 res!2917751) b!7155429))

(assert (= (and b!7155429 c!1333536) b!7155436))

(assert (= (and b!7155429 (not c!1333536)) b!7155434))

(assert (= (and b!7155434 c!1333534) b!7155433))

(assert (= (and b!7155434 (not c!1333534)) b!7155430))

(declare-fun m!7862586 () Bool)

(assert (=> b!7155437 m!7862586))

(declare-fun m!7862588 () Bool)

(assert (=> b!7155429 m!7862588))

(declare-fun m!7862590 () Bool)

(assert (=> b!7155433 m!7862590))

(declare-fun m!7862592 () Bool)

(assert (=> d!2229535 m!7862592))

(declare-fun m!7862594 () Bool)

(assert (=> d!2229535 m!7862594))

(declare-fun m!7862596 () Bool)

(assert (=> b!7155434 m!7862596))

(assert (=> b!7155434 m!7862596))

(declare-fun m!7862598 () Bool)

(assert (=> b!7155434 m!7862598))

(declare-fun m!7862600 () Bool)

(assert (=> b!7155436 m!7862600))

(declare-fun m!7862602 () Bool)

(assert (=> b!7155430 m!7862602))

(assert (=> b!7155432 m!7862560))

(assert (=> b!7155359 d!2229535))

(declare-fun e!4298513 () Bool)

(assert (=> b!7155360 (= tp!1978289 e!4298513)))

(declare-fun b!7155451 () Bool)

(declare-fun tp!1978327 () Bool)

(declare-fun tp!1978326 () Bool)

(assert (=> b!7155451 (= e!4298513 (and tp!1978327 tp!1978326))))

(declare-fun b!7155450 () Bool)

(assert (=> b!7155450 (= e!4298513 tp_is_empty!46161)))

(declare-fun b!7155452 () Bool)

(declare-fun tp!1978330 () Bool)

(assert (=> b!7155452 (= e!4298513 tp!1978330)))

(declare-fun b!7155453 () Bool)

(declare-fun tp!1978328 () Bool)

(declare-fun tp!1978329 () Bool)

(assert (=> b!7155453 (= e!4298513 (and tp!1978328 tp!1978329))))

(assert (= (and b!7155360 (is-ElementMatch!18264 (regOne!37040 r!13749))) b!7155450))

(assert (= (and b!7155360 (is-Concat!27109 (regOne!37040 r!13749))) b!7155451))

(assert (= (and b!7155360 (is-Star!18264 (regOne!37040 r!13749))) b!7155452))

(assert (= (and b!7155360 (is-Union!18264 (regOne!37040 r!13749))) b!7155453))

(declare-fun e!4298514 () Bool)

(assert (=> b!7155360 (= tp!1978294 e!4298514)))

(declare-fun b!7155455 () Bool)

(declare-fun tp!1978332 () Bool)

(declare-fun tp!1978331 () Bool)

(assert (=> b!7155455 (= e!4298514 (and tp!1978332 tp!1978331))))

(declare-fun b!7155454 () Bool)

(assert (=> b!7155454 (= e!4298514 tp_is_empty!46161)))

(declare-fun b!7155456 () Bool)

(declare-fun tp!1978335 () Bool)

(assert (=> b!7155456 (= e!4298514 tp!1978335)))

(declare-fun b!7155457 () Bool)

(declare-fun tp!1978333 () Bool)

(declare-fun tp!1978334 () Bool)

(assert (=> b!7155457 (= e!4298514 (and tp!1978333 tp!1978334))))

(assert (= (and b!7155360 (is-ElementMatch!18264 (regTwo!37040 r!13749))) b!7155454))

(assert (= (and b!7155360 (is-Concat!27109 (regTwo!37040 r!13749))) b!7155455))

(assert (= (and b!7155360 (is-Star!18264 (regTwo!37040 r!13749))) b!7155456))

(assert (= (and b!7155360 (is-Union!18264 (regTwo!37040 r!13749))) b!7155457))

(declare-fun e!4298515 () Bool)

(assert (=> b!7155356 (= tp!1978292 e!4298515)))

(declare-fun b!7155459 () Bool)

(declare-fun tp!1978337 () Bool)

(declare-fun tp!1978336 () Bool)

(assert (=> b!7155459 (= e!4298515 (and tp!1978337 tp!1978336))))

(declare-fun b!7155458 () Bool)

(assert (=> b!7155458 (= e!4298515 tp_is_empty!46161)))

(declare-fun b!7155460 () Bool)

(declare-fun tp!1978340 () Bool)

(assert (=> b!7155460 (= e!4298515 tp!1978340)))

(declare-fun b!7155461 () Bool)

(declare-fun tp!1978338 () Bool)

(declare-fun tp!1978339 () Bool)

(assert (=> b!7155461 (= e!4298515 (and tp!1978338 tp!1978339))))

(assert (= (and b!7155356 (is-ElementMatch!18264 (regOne!37041 r!13749))) b!7155458))

(assert (= (and b!7155356 (is-Concat!27109 (regOne!37041 r!13749))) b!7155459))

(assert (= (and b!7155356 (is-Star!18264 (regOne!37041 r!13749))) b!7155460))

(assert (= (and b!7155356 (is-Union!18264 (regOne!37041 r!13749))) b!7155461))

(declare-fun e!4298516 () Bool)

(assert (=> b!7155356 (= tp!1978291 e!4298516)))

(declare-fun b!7155463 () Bool)

(declare-fun tp!1978342 () Bool)

(declare-fun tp!1978341 () Bool)

(assert (=> b!7155463 (= e!4298516 (and tp!1978342 tp!1978341))))

(declare-fun b!7155462 () Bool)

(assert (=> b!7155462 (= e!4298516 tp_is_empty!46161)))

(declare-fun b!7155464 () Bool)

(declare-fun tp!1978345 () Bool)

(assert (=> b!7155464 (= e!4298516 tp!1978345)))

(declare-fun b!7155465 () Bool)

(declare-fun tp!1978343 () Bool)

(declare-fun tp!1978344 () Bool)

(assert (=> b!7155465 (= e!4298516 (and tp!1978343 tp!1978344))))

(assert (= (and b!7155356 (is-ElementMatch!18264 (regTwo!37041 r!13749))) b!7155462))

(assert (= (and b!7155356 (is-Concat!27109 (regTwo!37041 r!13749))) b!7155463))

(assert (= (and b!7155356 (is-Star!18264 (regTwo!37041 r!13749))) b!7155464))

(assert (= (and b!7155356 (is-Union!18264 (regTwo!37041 r!13749))) b!7155465))

(declare-fun e!4298517 () Bool)

(assert (=> b!7155357 (= tp!1978293 e!4298517)))

(declare-fun b!7155467 () Bool)

(declare-fun tp!1978347 () Bool)

(declare-fun tp!1978346 () Bool)

(assert (=> b!7155467 (= e!4298517 (and tp!1978347 tp!1978346))))

(declare-fun b!7155466 () Bool)

(assert (=> b!7155466 (= e!4298517 tp_is_empty!46161)))

(declare-fun b!7155468 () Bool)

(declare-fun tp!1978350 () Bool)

(assert (=> b!7155468 (= e!4298517 tp!1978350)))

(declare-fun b!7155469 () Bool)

(declare-fun tp!1978348 () Bool)

(declare-fun tp!1978349 () Bool)

(assert (=> b!7155469 (= e!4298517 (and tp!1978348 tp!1978349))))

(assert (= (and b!7155357 (is-ElementMatch!18264 (reg!18593 r!13749))) b!7155466))

(assert (= (and b!7155357 (is-Concat!27109 (reg!18593 r!13749))) b!7155467))

(assert (= (and b!7155357 (is-Star!18264 (reg!18593 r!13749))) b!7155468))

(assert (= (and b!7155357 (is-Union!18264 (reg!18593 r!13749))) b!7155469))

(declare-fun e!4298518 () Bool)

(assert (=> b!7155363 (= tp!1978288 e!4298518)))

(declare-fun b!7155471 () Bool)

(declare-fun tp!1978352 () Bool)

(declare-fun tp!1978351 () Bool)

(assert (=> b!7155471 (= e!4298518 (and tp!1978352 tp!1978351))))

(declare-fun b!7155470 () Bool)

(assert (=> b!7155470 (= e!4298518 tp_is_empty!46161)))

(declare-fun b!7155472 () Bool)

(declare-fun tp!1978355 () Bool)

(assert (=> b!7155472 (= e!4298518 tp!1978355)))

(declare-fun b!7155473 () Bool)

(declare-fun tp!1978353 () Bool)

(declare-fun tp!1978354 () Bool)

(assert (=> b!7155473 (= e!4298518 (and tp!1978353 tp!1978354))))

(assert (= (and b!7155363 (is-ElementMatch!18264 (h!75892 l!9132))) b!7155470))

(assert (= (and b!7155363 (is-Concat!27109 (h!75892 l!9132))) b!7155471))

(assert (= (and b!7155363 (is-Star!18264 (h!75892 l!9132))) b!7155472))

(assert (= (and b!7155363 (is-Union!18264 (h!75892 l!9132))) b!7155473))

(declare-fun b!7155478 () Bool)

(declare-fun e!4298521 () Bool)

(declare-fun tp!1978360 () Bool)

(declare-fun tp!1978361 () Bool)

(assert (=> b!7155478 (= e!4298521 (and tp!1978360 tp!1978361))))

(assert (=> b!7155363 (= tp!1978290 e!4298521)))

(assert (= (and b!7155363 (is-Cons!69444 (t!383585 l!9132))) b!7155478))

(declare-fun b_lambda!273303 () Bool)

(assert (= b_lambda!273299 (or start!697434 b_lambda!273303)))

(declare-fun bs!1889843 () Bool)

(declare-fun d!2229545 () Bool)

(assert (= bs!1889843 (and d!2229545 start!697434)))

(assert (=> bs!1889843 (= (dynLambda!28304 lambda!436351 (h!75892 l!9132)) (validRegex!9412 (h!75892 l!9132)))))

(declare-fun m!7862606 () Bool)

(assert (=> bs!1889843 m!7862606))

(assert (=> b!7155400 d!2229545))

(push 1)

(assert (not b!7155478))

(assert (not b!7155463))

(assert (not b!7155472))

(assert (not b!7155436))

(assert (not b!7155457))

(assert (not b!7155432))

(assert (not b!7155460))

(assert (not b!7155434))

(assert (not b!7155455))

(assert tp_is_empty!46161)

(assert (not b!7155461))

(assert (not b!7155467))

(assert (not b!7155464))

(assert (not b!7155465))

(assert (not d!2229525))

(assert (not b!7155437))

(assert (not bs!1889843))

(assert (not b!7155459))

(assert (not b!7155429))

(assert (not b!7155453))

(assert (not b!7155456))

(assert (not b!7155473))

(assert (not b!7155468))

(assert (not b!7155401))

(assert (not b!7155451))

(assert (not b_lambda!273303))

(assert (not b!7155471))

(assert (not b!7155469))

(assert (not b!7155452))

(assert (not d!2229535))

(assert (not d!2229527))

(assert (not b!7155430))

(assert (not b!7155433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229549 () Bool)

(assert (=> d!2229549 (= (isEmpty!40132 (tail!14033 l!9132)) (is-Nil!69444 (tail!14033 l!9132)))))

(assert (=> b!7155434 d!2229549))

(declare-fun d!2229551 () Bool)

(assert (=> d!2229551 (= (tail!14033 l!9132) (t!383585 l!9132))))

(assert (=> b!7155434 d!2229551))

(declare-fun bm!651698 () Bool)

(declare-fun call!651704 () Bool)

(declare-fun call!651703 () Bool)

(assert (=> bm!651698 (= call!651704 call!651703)))

(declare-fun d!2229553 () Bool)

(declare-fun res!2917769 () Bool)

(declare-fun e!4298568 () Bool)

(assert (=> d!2229553 (=> res!2917769 e!4298568)))

(assert (=> d!2229553 (= res!2917769 (is-ElementMatch!18264 (h!75892 l!9132)))))

(assert (=> d!2229553 (= (validRegex!9412 (h!75892 l!9132)) e!4298568)))

(declare-fun b!7155566 () Bool)

(declare-fun res!2917768 () Bool)

(declare-fun e!4298569 () Bool)

(assert (=> b!7155566 (=> (not res!2917768) (not e!4298569))))

(declare-fun call!651705 () Bool)

(assert (=> b!7155566 (= res!2917768 call!651705)))

(declare-fun e!4298567 () Bool)

(assert (=> b!7155566 (= e!4298567 e!4298569)))

(declare-fun bm!651699 () Bool)

(declare-fun c!1333554 () Bool)

(declare-fun c!1333553 () Bool)

(assert (=> bm!651699 (= call!651703 (validRegex!9412 (ite c!1333554 (reg!18593 (h!75892 l!9132)) (ite c!1333553 (regTwo!37041 (h!75892 l!9132)) (regTwo!37040 (h!75892 l!9132))))))))

(declare-fun b!7155567 () Bool)

(declare-fun e!4298571 () Bool)

(declare-fun e!4298570 () Bool)

(assert (=> b!7155567 (= e!4298571 e!4298570)))

(declare-fun res!2917771 () Bool)

(assert (=> b!7155567 (=> (not res!2917771) (not e!4298570))))

(assert (=> b!7155567 (= res!2917771 call!651705)))

(declare-fun b!7155568 () Bool)

(declare-fun e!4298565 () Bool)

(declare-fun e!4298566 () Bool)

(assert (=> b!7155568 (= e!4298565 e!4298566)))

(declare-fun res!2917772 () Bool)

(assert (=> b!7155568 (= res!2917772 (not (nullable!7741 (reg!18593 (h!75892 l!9132)))))))

(assert (=> b!7155568 (=> (not res!2917772) (not e!4298566))))

(declare-fun b!7155569 () Bool)

(declare-fun res!2917770 () Bool)

(assert (=> b!7155569 (=> res!2917770 e!4298571)))

(assert (=> b!7155569 (= res!2917770 (not (is-Concat!27109 (h!75892 l!9132))))))

(assert (=> b!7155569 (= e!4298567 e!4298571)))

(declare-fun b!7155570 () Bool)

(assert (=> b!7155570 (= e!4298565 e!4298567)))

(assert (=> b!7155570 (= c!1333553 (is-Union!18264 (h!75892 l!9132)))))

(declare-fun b!7155571 () Bool)

(assert (=> b!7155571 (= e!4298568 e!4298565)))

(assert (=> b!7155571 (= c!1333554 (is-Star!18264 (h!75892 l!9132)))))

(declare-fun b!7155572 () Bool)

(assert (=> b!7155572 (= e!4298566 call!651703)))

(declare-fun bm!651700 () Bool)

(assert (=> bm!651700 (= call!651705 (validRegex!9412 (ite c!1333553 (regOne!37041 (h!75892 l!9132)) (regOne!37040 (h!75892 l!9132)))))))

(declare-fun b!7155573 () Bool)

(assert (=> b!7155573 (= e!4298569 call!651704)))

(declare-fun b!7155574 () Bool)

(assert (=> b!7155574 (= e!4298570 call!651704)))

(assert (= (and d!2229553 (not res!2917769)) b!7155571))

(assert (= (and b!7155571 c!1333554) b!7155568))

(assert (= (and b!7155571 (not c!1333554)) b!7155570))

(assert (= (and b!7155568 res!2917772) b!7155572))

(assert (= (and b!7155570 c!1333553) b!7155566))

(assert (= (and b!7155570 (not c!1333553)) b!7155569))

(assert (= (and b!7155566 res!2917768) b!7155573))

(assert (= (and b!7155569 (not res!2917770)) b!7155567))

(assert (= (and b!7155567 res!2917771) b!7155574))

(assert (= (or b!7155566 b!7155567) bm!651700))

(assert (= (or b!7155573 b!7155574) bm!651698))

(assert (= (or b!7155572 bm!651698) bm!651699))

(declare-fun m!7862628 () Bool)

(assert (=> bm!651699 m!7862628))

(declare-fun m!7862630 () Bool)

(assert (=> b!7155568 m!7862630))

(declare-fun m!7862632 () Bool)

(assert (=> bm!651700 m!7862632))

(assert (=> bs!1889843 d!2229553))

(declare-fun d!2229555 () Bool)

(declare-fun res!2917773 () Bool)

(declare-fun e!4298572 () Bool)

(assert (=> d!2229555 (=> res!2917773 e!4298572)))

(assert (=> d!2229555 (= res!2917773 (is-Nil!69444 (t!383585 l!9132)))))

(assert (=> d!2229555 (= (forall!17104 (t!383585 l!9132) lambda!436351) e!4298572)))

(declare-fun b!7155575 () Bool)

(declare-fun e!4298573 () Bool)

(assert (=> b!7155575 (= e!4298572 e!4298573)))

(declare-fun res!2917774 () Bool)

(assert (=> b!7155575 (=> (not res!2917774) (not e!4298573))))

(assert (=> b!7155575 (= res!2917774 (dynLambda!28304 lambda!436351 (h!75892 (t!383585 l!9132))))))

(declare-fun b!7155576 () Bool)

(assert (=> b!7155576 (= e!4298573 (forall!17104 (t!383585 (t!383585 l!9132)) lambda!436351))))

(assert (= (and d!2229555 (not res!2917773)) b!7155575))

(assert (= (and b!7155575 res!2917774) b!7155576))

(declare-fun b_lambda!273307 () Bool)

(assert (=> (not b_lambda!273307) (not b!7155575)))

(declare-fun m!7862634 () Bool)

(assert (=> b!7155575 m!7862634))

(declare-fun m!7862636 () Bool)

(assert (=> b!7155576 m!7862636))

(assert (=> b!7155401 d!2229555))

(declare-fun d!2229557 () Bool)

(assert (=> d!2229557 (= (isEmptyLang!2128 lt!2569179) (is-EmptyLang!18264 lt!2569179))))

(assert (=> b!7155436 d!2229557))

(declare-fun b!7155591 () Bool)

(declare-fun e!4298591 () Bool)

(declare-fun call!651711 () Bool)

(assert (=> b!7155591 (= e!4298591 call!651711)))

(declare-fun d!2229559 () Bool)

(declare-fun res!2917787 () Bool)

(declare-fun e!4298590 () Bool)

(assert (=> d!2229559 (=> res!2917787 e!4298590)))

(assert (=> d!2229559 (= res!2917787 (is-EmptyExpr!18264 r!13749))))

(assert (=> d!2229559 (= (nullableFct!3019 r!13749) e!4298590)))

(declare-fun b!7155592 () Bool)

(declare-fun e!4298586 () Bool)

(declare-fun e!4298589 () Bool)

(assert (=> b!7155592 (= e!4298586 e!4298589)))

(declare-fun res!2917789 () Bool)

(assert (=> b!7155592 (= res!2917789 call!651711)))

(assert (=> b!7155592 (=> res!2917789 e!4298589)))

(declare-fun b!7155593 () Bool)

(declare-fun e!4298587 () Bool)

(assert (=> b!7155593 (= e!4298587 e!4298586)))

(declare-fun c!1333557 () Bool)

(assert (=> b!7155593 (= c!1333557 (is-Union!18264 r!13749))))

(declare-fun b!7155594 () Bool)

(declare-fun call!651710 () Bool)

(assert (=> b!7155594 (= e!4298589 call!651710)))

(declare-fun bm!651705 () Bool)

(assert (=> bm!651705 (= call!651710 (nullable!7741 (ite c!1333557 (regTwo!37041 r!13749) (regOne!37040 r!13749))))))

(declare-fun bm!651706 () Bool)

(assert (=> bm!651706 (= call!651711 (nullable!7741 (ite c!1333557 (regOne!37041 r!13749) (regTwo!37040 r!13749))))))

(declare-fun b!7155595 () Bool)

(declare-fun e!4298588 () Bool)

(assert (=> b!7155595 (= e!4298588 e!4298587)))

(declare-fun res!2917786 () Bool)

(assert (=> b!7155595 (=> res!2917786 e!4298587)))

(assert (=> b!7155595 (= res!2917786 (is-Star!18264 r!13749))))

(declare-fun b!7155596 () Bool)

(assert (=> b!7155596 (= e!4298590 e!4298588)))

(declare-fun res!2917788 () Bool)

(assert (=> b!7155596 (=> (not res!2917788) (not e!4298588))))

(assert (=> b!7155596 (= res!2917788 (and (not (is-EmptyLang!18264 r!13749)) (not (is-ElementMatch!18264 r!13749))))))

(declare-fun b!7155597 () Bool)

(assert (=> b!7155597 (= e!4298586 e!4298591)))

(declare-fun res!2917785 () Bool)

(assert (=> b!7155597 (= res!2917785 call!651710)))

(assert (=> b!7155597 (=> (not res!2917785) (not e!4298591))))

(assert (= (and d!2229559 (not res!2917787)) b!7155596))

(assert (= (and b!7155596 res!2917788) b!7155595))

(assert (= (and b!7155595 (not res!2917786)) b!7155593))

(assert (= (and b!7155593 c!1333557) b!7155592))

(assert (= (and b!7155593 (not c!1333557)) b!7155597))

(assert (= (and b!7155592 (not res!2917789)) b!7155594))

(assert (= (and b!7155597 res!2917785) b!7155591))

(assert (= (or b!7155594 b!7155597) bm!651705))

(assert (= (or b!7155592 b!7155591) bm!651706))

(declare-fun m!7862638 () Bool)

(assert (=> bm!651705 m!7862638))

(declare-fun m!7862640 () Bool)

(assert (=> bm!651706 m!7862640))

(assert (=> d!2229525 d!2229559))

(declare-fun bs!1889848 () Bool)

(declare-fun d!2229561 () Bool)

(assert (= bs!1889848 (and d!2229561 start!697434)))

(declare-fun lambda!436371 () Int)

(assert (=> bs!1889848 (= lambda!436371 lambda!436351)))

(declare-fun bs!1889849 () Bool)

(assert (= bs!1889849 (and d!2229561 b!7155355)))

(assert (=> bs!1889849 (not (= lambda!436371 lambda!436352))))

(declare-fun bs!1889850 () Bool)

(assert (= bs!1889850 (and d!2229561 d!2229527)))

(assert (=> bs!1889850 (not (= lambda!436371 lambda!436361))))

(declare-fun bs!1889851 () Bool)

(assert (= bs!1889851 (and d!2229561 d!2229535)))

(assert (=> bs!1889851 (= lambda!436371 lambda!436366)))

(declare-fun b!7155598 () Bool)

(declare-fun e!4298592 () Regex!18264)

(assert (=> b!7155598 (= e!4298592 (h!75892 (t!383585 l!9132)))))

(declare-fun b!7155599 () Bool)

(declare-fun e!4298593 () Bool)

(declare-fun e!4298596 () Bool)

(assert (=> b!7155599 (= e!4298593 e!4298596)))

(declare-fun c!1333561 () Bool)

(assert (=> b!7155599 (= c!1333561 (isEmpty!40132 (t!383585 l!9132)))))

(declare-fun b!7155600 () Bool)

(declare-fun e!4298594 () Bool)

(declare-fun lt!2569183 () Regex!18264)

(assert (=> b!7155600 (= e!4298594 (isUnion!1556 lt!2569183))))

(declare-fun b!7155601 () Bool)

(declare-fun e!4298597 () Regex!18264)

(assert (=> b!7155601 (= e!4298597 EmptyLang!18264)))

(declare-fun b!7155602 () Bool)

(declare-fun e!4298595 () Bool)

(assert (=> b!7155602 (= e!4298595 (isEmpty!40132 (t!383585 (t!383585 l!9132))))))

(assert (=> d!2229561 e!4298593))

(declare-fun res!2917791 () Bool)

(assert (=> d!2229561 (=> (not res!2917791) (not e!4298593))))

(assert (=> d!2229561 (= res!2917791 (validRegex!9412 lt!2569183))))

(assert (=> d!2229561 (= lt!2569183 e!4298592)))

(declare-fun c!1333560 () Bool)

(assert (=> d!2229561 (= c!1333560 e!4298595)))

(declare-fun res!2917790 () Bool)

(assert (=> d!2229561 (=> (not res!2917790) (not e!4298595))))

(assert (=> d!2229561 (= res!2917790 (is-Cons!69444 (t!383585 l!9132)))))

(assert (=> d!2229561 (forall!17104 (t!383585 l!9132) lambda!436371)))

(assert (=> d!2229561 (= (generalisedUnion!2727 (t!383585 l!9132)) lt!2569183)))

(declare-fun b!7155603 () Bool)

(assert (=> b!7155603 (= e!4298594 (= lt!2569183 (head!14564 (t!383585 l!9132))))))

(declare-fun b!7155604 () Bool)

(assert (=> b!7155604 (= e!4298596 e!4298594)))

(declare-fun c!1333559 () Bool)

(assert (=> b!7155604 (= c!1333559 (isEmpty!40132 (tail!14033 (t!383585 l!9132))))))

(declare-fun b!7155605 () Bool)

(assert (=> b!7155605 (= e!4298592 e!4298597)))

(declare-fun c!1333558 () Bool)

(assert (=> b!7155605 (= c!1333558 (is-Cons!69444 (t!383585 l!9132)))))

(declare-fun b!7155606 () Bool)

(assert (=> b!7155606 (= e!4298596 (isEmptyLang!2128 lt!2569183))))

(declare-fun b!7155607 () Bool)

(assert (=> b!7155607 (= e!4298597 (Union!18264 (h!75892 (t!383585 l!9132)) (generalisedUnion!2727 (t!383585 (t!383585 l!9132)))))))

(assert (= (and d!2229561 res!2917790) b!7155602))

(assert (= (and d!2229561 c!1333560) b!7155598))

(assert (= (and d!2229561 (not c!1333560)) b!7155605))

(assert (= (and b!7155605 c!1333558) b!7155607))

(assert (= (and b!7155605 (not c!1333558)) b!7155601))

(assert (= (and d!2229561 res!2917791) b!7155599))

(assert (= (and b!7155599 c!1333561) b!7155606))

(assert (= (and b!7155599 (not c!1333561)) b!7155604))

(assert (= (and b!7155604 c!1333559) b!7155603))

(assert (= (and b!7155604 (not c!1333559)) b!7155600))

(declare-fun m!7862642 () Bool)

(assert (=> b!7155607 m!7862642))

(assert (=> b!7155599 m!7862560))

(declare-fun m!7862644 () Bool)

(assert (=> b!7155603 m!7862644))

(declare-fun m!7862646 () Bool)

(assert (=> d!2229561 m!7862646))

(declare-fun m!7862648 () Bool)

(assert (=> d!2229561 m!7862648))

(declare-fun m!7862650 () Bool)

(assert (=> b!7155604 m!7862650))

(assert (=> b!7155604 m!7862650))

(declare-fun m!7862652 () Bool)

(assert (=> b!7155604 m!7862652))

(declare-fun m!7862654 () Bool)

(assert (=> b!7155606 m!7862654))

(declare-fun m!7862656 () Bool)

(assert (=> b!7155600 m!7862656))

(declare-fun m!7862658 () Bool)

(assert (=> b!7155602 m!7862658))

(assert (=> b!7155437 d!2229561))

(declare-fun d!2229563 () Bool)

(declare-fun res!2917792 () Bool)

(declare-fun e!4298598 () Bool)

(assert (=> d!2229563 (=> res!2917792 e!4298598)))

(assert (=> d!2229563 (= res!2917792 (is-Nil!69444 l!9132))))

(assert (=> d!2229563 (= (forall!17104 l!9132 lambda!436361) e!4298598)))

(declare-fun b!7155608 () Bool)

(declare-fun e!4298599 () Bool)

(assert (=> b!7155608 (= e!4298598 e!4298599)))

(declare-fun res!2917793 () Bool)

(assert (=> b!7155608 (=> (not res!2917793) (not e!4298599))))

(assert (=> b!7155608 (= res!2917793 (dynLambda!28304 lambda!436361 (h!75892 l!9132)))))

(declare-fun b!7155609 () Bool)

(assert (=> b!7155609 (= e!4298599 (forall!17104 (t!383585 l!9132) lambda!436361))))

(assert (= (and d!2229563 (not res!2917792)) b!7155608))

(assert (= (and b!7155608 res!2917793) b!7155609))

(declare-fun b_lambda!273309 () Bool)

(assert (=> (not b_lambda!273309) (not b!7155608)))

(declare-fun m!7862660 () Bool)

(assert (=> b!7155608 m!7862660))

(declare-fun m!7862662 () Bool)

(assert (=> b!7155609 m!7862662))

(assert (=> d!2229527 d!2229563))

(declare-fun bm!651707 () Bool)

(declare-fun call!651713 () Bool)

(declare-fun call!651712 () Bool)

(assert (=> bm!651707 (= call!651713 call!651712)))

(declare-fun d!2229565 () Bool)

(declare-fun res!2917795 () Bool)

(declare-fun e!4298603 () Bool)

(assert (=> d!2229565 (=> res!2917795 e!4298603)))

(assert (=> d!2229565 (= res!2917795 (is-ElementMatch!18264 lt!2569179))))

(assert (=> d!2229565 (= (validRegex!9412 lt!2569179) e!4298603)))

(declare-fun b!7155610 () Bool)

(declare-fun res!2917794 () Bool)

(declare-fun e!4298604 () Bool)

(assert (=> b!7155610 (=> (not res!2917794) (not e!4298604))))

(declare-fun call!651714 () Bool)

(assert (=> b!7155610 (= res!2917794 call!651714)))

(declare-fun e!4298602 () Bool)

(assert (=> b!7155610 (= e!4298602 e!4298604)))

(declare-fun c!1333562 () Bool)

(declare-fun bm!651708 () Bool)

(declare-fun c!1333563 () Bool)

(assert (=> bm!651708 (= call!651712 (validRegex!9412 (ite c!1333563 (reg!18593 lt!2569179) (ite c!1333562 (regTwo!37041 lt!2569179) (regTwo!37040 lt!2569179)))))))

(declare-fun b!7155611 () Bool)

(declare-fun e!4298606 () Bool)

(declare-fun e!4298605 () Bool)

(assert (=> b!7155611 (= e!4298606 e!4298605)))

(declare-fun res!2917797 () Bool)

(assert (=> b!7155611 (=> (not res!2917797) (not e!4298605))))

(assert (=> b!7155611 (= res!2917797 call!651714)))

(declare-fun b!7155612 () Bool)

(declare-fun e!4298600 () Bool)

(declare-fun e!4298601 () Bool)

(assert (=> b!7155612 (= e!4298600 e!4298601)))

(declare-fun res!2917798 () Bool)

(assert (=> b!7155612 (= res!2917798 (not (nullable!7741 (reg!18593 lt!2569179))))))

(assert (=> b!7155612 (=> (not res!2917798) (not e!4298601))))

(declare-fun b!7155613 () Bool)

(declare-fun res!2917796 () Bool)

(assert (=> b!7155613 (=> res!2917796 e!4298606)))

(assert (=> b!7155613 (= res!2917796 (not (is-Concat!27109 lt!2569179)))))

(assert (=> b!7155613 (= e!4298602 e!4298606)))

(declare-fun b!7155614 () Bool)

(assert (=> b!7155614 (= e!4298600 e!4298602)))

(assert (=> b!7155614 (= c!1333562 (is-Union!18264 lt!2569179))))

(declare-fun b!7155615 () Bool)

(assert (=> b!7155615 (= e!4298603 e!4298600)))

(assert (=> b!7155615 (= c!1333563 (is-Star!18264 lt!2569179))))

(declare-fun b!7155616 () Bool)

(assert (=> b!7155616 (= e!4298601 call!651712)))

(declare-fun bm!651709 () Bool)

(assert (=> bm!651709 (= call!651714 (validRegex!9412 (ite c!1333562 (regOne!37041 lt!2569179) (regOne!37040 lt!2569179))))))

(declare-fun b!7155617 () Bool)

(assert (=> b!7155617 (= e!4298604 call!651713)))

(declare-fun b!7155618 () Bool)

(assert (=> b!7155618 (= e!4298605 call!651713)))

(assert (= (and d!2229565 (not res!2917795)) b!7155615))

(assert (= (and b!7155615 c!1333563) b!7155612))

(assert (= (and b!7155615 (not c!1333563)) b!7155614))

(assert (= (and b!7155612 res!2917798) b!7155616))

(assert (= (and b!7155614 c!1333562) b!7155610))

(assert (= (and b!7155614 (not c!1333562)) b!7155613))

(assert (= (and b!7155610 res!2917794) b!7155617))

(assert (= (and b!7155613 (not res!2917796)) b!7155611))

(assert (= (and b!7155611 res!2917797) b!7155618))

(assert (= (or b!7155610 b!7155611) bm!651709))

(assert (= (or b!7155617 b!7155618) bm!651707))

(assert (= (or b!7155616 bm!651707) bm!651708))

(declare-fun m!7862664 () Bool)

(assert (=> bm!651708 m!7862664))

(declare-fun m!7862666 () Bool)

(assert (=> b!7155612 m!7862666))

(declare-fun m!7862668 () Bool)

(assert (=> bm!651709 m!7862668))

(assert (=> d!2229535 d!2229565))

(declare-fun d!2229567 () Bool)

(declare-fun res!2917799 () Bool)

(declare-fun e!4298607 () Bool)

(assert (=> d!2229567 (=> res!2917799 e!4298607)))

(assert (=> d!2229567 (= res!2917799 (is-Nil!69444 l!9132))))

(assert (=> d!2229567 (= (forall!17104 l!9132 lambda!436366) e!4298607)))

(declare-fun b!7155619 () Bool)

(declare-fun e!4298608 () Bool)

(assert (=> b!7155619 (= e!4298607 e!4298608)))

(declare-fun res!2917800 () Bool)

(assert (=> b!7155619 (=> (not res!2917800) (not e!4298608))))

(assert (=> b!7155619 (= res!2917800 (dynLambda!28304 lambda!436366 (h!75892 l!9132)))))

(declare-fun b!7155620 () Bool)

(assert (=> b!7155620 (= e!4298608 (forall!17104 (t!383585 l!9132) lambda!436366))))

(assert (= (and d!2229567 (not res!2917799)) b!7155619))

(assert (= (and b!7155619 res!2917800) b!7155620))

(declare-fun b_lambda!273311 () Bool)

(assert (=> (not b_lambda!273311) (not b!7155619)))

(declare-fun m!7862670 () Bool)

(assert (=> b!7155619 m!7862670))

(declare-fun m!7862672 () Bool)

(assert (=> b!7155620 m!7862672))

(assert (=> d!2229535 d!2229567))

(declare-fun d!2229569 () Bool)

(assert (=> d!2229569 (= (isEmpty!40132 l!9132) (is-Nil!69444 l!9132))))

(assert (=> b!7155429 d!2229569))

(declare-fun d!2229571 () Bool)

(assert (=> d!2229571 (= (isUnion!1556 lt!2569179) (is-Union!18264 lt!2569179))))

(assert (=> b!7155430 d!2229571))

(assert (=> b!7155432 d!2229533))

(declare-fun d!2229573 () Bool)

(assert (=> d!2229573 (= (head!14564 l!9132) (h!75892 l!9132))))

(assert (=> b!7155433 d!2229573))

(declare-fun e!4298609 () Bool)

(assert (=> b!7155457 (= tp!1978333 e!4298609)))

(declare-fun b!7155622 () Bool)

(declare-fun tp!1978409 () Bool)

(declare-fun tp!1978408 () Bool)

(assert (=> b!7155622 (= e!4298609 (and tp!1978409 tp!1978408))))

(declare-fun b!7155621 () Bool)

(assert (=> b!7155621 (= e!4298609 tp_is_empty!46161)))

(declare-fun b!7155623 () Bool)

(declare-fun tp!1978412 () Bool)

(assert (=> b!7155623 (= e!4298609 tp!1978412)))

(declare-fun b!7155624 () Bool)

(declare-fun tp!1978410 () Bool)

(declare-fun tp!1978411 () Bool)

(assert (=> b!7155624 (= e!4298609 (and tp!1978410 tp!1978411))))

(assert (= (and b!7155457 (is-ElementMatch!18264 (regOne!37041 (regTwo!37040 r!13749)))) b!7155621))

(assert (= (and b!7155457 (is-Concat!27109 (regOne!37041 (regTwo!37040 r!13749)))) b!7155622))

(assert (= (and b!7155457 (is-Star!18264 (regOne!37041 (regTwo!37040 r!13749)))) b!7155623))

(assert (= (and b!7155457 (is-Union!18264 (regOne!37041 (regTwo!37040 r!13749)))) b!7155624))

(declare-fun e!4298610 () Bool)

(assert (=> b!7155457 (= tp!1978334 e!4298610)))

(declare-fun b!7155626 () Bool)

(declare-fun tp!1978414 () Bool)

(declare-fun tp!1978413 () Bool)

(assert (=> b!7155626 (= e!4298610 (and tp!1978414 tp!1978413))))

(declare-fun b!7155625 () Bool)

(assert (=> b!7155625 (= e!4298610 tp_is_empty!46161)))

(declare-fun b!7155627 () Bool)

(declare-fun tp!1978417 () Bool)

(assert (=> b!7155627 (= e!4298610 tp!1978417)))

(declare-fun b!7155628 () Bool)

(declare-fun tp!1978415 () Bool)

(declare-fun tp!1978416 () Bool)

(assert (=> b!7155628 (= e!4298610 (and tp!1978415 tp!1978416))))

(assert (= (and b!7155457 (is-ElementMatch!18264 (regTwo!37041 (regTwo!37040 r!13749)))) b!7155625))

(assert (= (and b!7155457 (is-Concat!27109 (regTwo!37041 (regTwo!37040 r!13749)))) b!7155626))

(assert (= (and b!7155457 (is-Star!18264 (regTwo!37041 (regTwo!37040 r!13749)))) b!7155627))

(assert (= (and b!7155457 (is-Union!18264 (regTwo!37041 (regTwo!37040 r!13749)))) b!7155628))

(declare-fun e!4298611 () Bool)

(assert (=> b!7155461 (= tp!1978338 e!4298611)))

(declare-fun b!7155630 () Bool)

(declare-fun tp!1978419 () Bool)

(declare-fun tp!1978418 () Bool)

(assert (=> b!7155630 (= e!4298611 (and tp!1978419 tp!1978418))))

(declare-fun b!7155629 () Bool)

(assert (=> b!7155629 (= e!4298611 tp_is_empty!46161)))

(declare-fun b!7155631 () Bool)

(declare-fun tp!1978422 () Bool)

(assert (=> b!7155631 (= e!4298611 tp!1978422)))

(declare-fun b!7155632 () Bool)

(declare-fun tp!1978420 () Bool)

(declare-fun tp!1978421 () Bool)

(assert (=> b!7155632 (= e!4298611 (and tp!1978420 tp!1978421))))

(assert (= (and b!7155461 (is-ElementMatch!18264 (regOne!37041 (regOne!37041 r!13749)))) b!7155629))

(assert (= (and b!7155461 (is-Concat!27109 (regOne!37041 (regOne!37041 r!13749)))) b!7155630))

(assert (= (and b!7155461 (is-Star!18264 (regOne!37041 (regOne!37041 r!13749)))) b!7155631))

(assert (= (and b!7155461 (is-Union!18264 (regOne!37041 (regOne!37041 r!13749)))) b!7155632))

(declare-fun e!4298612 () Bool)

(assert (=> b!7155461 (= tp!1978339 e!4298612)))

(declare-fun b!7155634 () Bool)

(declare-fun tp!1978424 () Bool)

(declare-fun tp!1978423 () Bool)

(assert (=> b!7155634 (= e!4298612 (and tp!1978424 tp!1978423))))

(declare-fun b!7155633 () Bool)

(assert (=> b!7155633 (= e!4298612 tp_is_empty!46161)))

(declare-fun b!7155635 () Bool)

(declare-fun tp!1978427 () Bool)

(assert (=> b!7155635 (= e!4298612 tp!1978427)))

(declare-fun b!7155636 () Bool)

(declare-fun tp!1978425 () Bool)

(declare-fun tp!1978426 () Bool)

(assert (=> b!7155636 (= e!4298612 (and tp!1978425 tp!1978426))))

(assert (= (and b!7155461 (is-ElementMatch!18264 (regTwo!37041 (regOne!37041 r!13749)))) b!7155633))

(assert (= (and b!7155461 (is-Concat!27109 (regTwo!37041 (regOne!37041 r!13749)))) b!7155634))

(assert (= (and b!7155461 (is-Star!18264 (regTwo!37041 (regOne!37041 r!13749)))) b!7155635))

(assert (= (and b!7155461 (is-Union!18264 (regTwo!37041 (regOne!37041 r!13749)))) b!7155636))

(declare-fun e!4298613 () Bool)

(assert (=> b!7155456 (= tp!1978335 e!4298613)))

(declare-fun b!7155638 () Bool)

(declare-fun tp!1978429 () Bool)

(declare-fun tp!1978428 () Bool)

(assert (=> b!7155638 (= e!4298613 (and tp!1978429 tp!1978428))))

(declare-fun b!7155637 () Bool)

(assert (=> b!7155637 (= e!4298613 tp_is_empty!46161)))

(declare-fun b!7155639 () Bool)

(declare-fun tp!1978432 () Bool)

(assert (=> b!7155639 (= e!4298613 tp!1978432)))

(declare-fun b!7155640 () Bool)

(declare-fun tp!1978430 () Bool)

(declare-fun tp!1978431 () Bool)

(assert (=> b!7155640 (= e!4298613 (and tp!1978430 tp!1978431))))

(assert (= (and b!7155456 (is-ElementMatch!18264 (reg!18593 (regTwo!37040 r!13749)))) b!7155637))

(assert (= (and b!7155456 (is-Concat!27109 (reg!18593 (regTwo!37040 r!13749)))) b!7155638))

(assert (= (and b!7155456 (is-Star!18264 (reg!18593 (regTwo!37040 r!13749)))) b!7155639))

(assert (= (and b!7155456 (is-Union!18264 (reg!18593 (regTwo!37040 r!13749)))) b!7155640))

(declare-fun e!4298614 () Bool)

(assert (=> b!7155465 (= tp!1978343 e!4298614)))

(declare-fun b!7155642 () Bool)

(declare-fun tp!1978434 () Bool)

(declare-fun tp!1978433 () Bool)

(assert (=> b!7155642 (= e!4298614 (and tp!1978434 tp!1978433))))

(declare-fun b!7155641 () Bool)

(assert (=> b!7155641 (= e!4298614 tp_is_empty!46161)))

(declare-fun b!7155643 () Bool)

(declare-fun tp!1978437 () Bool)

(assert (=> b!7155643 (= e!4298614 tp!1978437)))

(declare-fun b!7155644 () Bool)

(declare-fun tp!1978435 () Bool)

(declare-fun tp!1978436 () Bool)

(assert (=> b!7155644 (= e!4298614 (and tp!1978435 tp!1978436))))

(assert (= (and b!7155465 (is-ElementMatch!18264 (regOne!37041 (regTwo!37041 r!13749)))) b!7155641))

(assert (= (and b!7155465 (is-Concat!27109 (regOne!37041 (regTwo!37041 r!13749)))) b!7155642))

(assert (= (and b!7155465 (is-Star!18264 (regOne!37041 (regTwo!37041 r!13749)))) b!7155643))

(assert (= (and b!7155465 (is-Union!18264 (regOne!37041 (regTwo!37041 r!13749)))) b!7155644))

(declare-fun e!4298615 () Bool)

(assert (=> b!7155465 (= tp!1978344 e!4298615)))

(declare-fun b!7155646 () Bool)

(declare-fun tp!1978439 () Bool)

(declare-fun tp!1978438 () Bool)

(assert (=> b!7155646 (= e!4298615 (and tp!1978439 tp!1978438))))

(declare-fun b!7155645 () Bool)

(assert (=> b!7155645 (= e!4298615 tp_is_empty!46161)))

(declare-fun b!7155647 () Bool)

(declare-fun tp!1978442 () Bool)

(assert (=> b!7155647 (= e!4298615 tp!1978442)))

(declare-fun b!7155648 () Bool)

(declare-fun tp!1978440 () Bool)

(declare-fun tp!1978441 () Bool)

(assert (=> b!7155648 (= e!4298615 (and tp!1978440 tp!1978441))))

(assert (= (and b!7155465 (is-ElementMatch!18264 (regTwo!37041 (regTwo!37041 r!13749)))) b!7155645))

(assert (= (and b!7155465 (is-Concat!27109 (regTwo!37041 (regTwo!37041 r!13749)))) b!7155646))

(assert (= (and b!7155465 (is-Star!18264 (regTwo!37041 (regTwo!37041 r!13749)))) b!7155647))

(assert (= (and b!7155465 (is-Union!18264 (regTwo!37041 (regTwo!37041 r!13749)))) b!7155648))

(declare-fun e!4298616 () Bool)

(assert (=> b!7155460 (= tp!1978340 e!4298616)))

(declare-fun b!7155650 () Bool)

(declare-fun tp!1978444 () Bool)

(declare-fun tp!1978443 () Bool)

(assert (=> b!7155650 (= e!4298616 (and tp!1978444 tp!1978443))))

(declare-fun b!7155649 () Bool)

(assert (=> b!7155649 (= e!4298616 tp_is_empty!46161)))

(declare-fun b!7155651 () Bool)

(declare-fun tp!1978447 () Bool)

(assert (=> b!7155651 (= e!4298616 tp!1978447)))

(declare-fun b!7155652 () Bool)

(declare-fun tp!1978445 () Bool)

(declare-fun tp!1978446 () Bool)

(assert (=> b!7155652 (= e!4298616 (and tp!1978445 tp!1978446))))

(assert (= (and b!7155460 (is-ElementMatch!18264 (reg!18593 (regOne!37041 r!13749)))) b!7155649))

(assert (= (and b!7155460 (is-Concat!27109 (reg!18593 (regOne!37041 r!13749)))) b!7155650))

(assert (= (and b!7155460 (is-Star!18264 (reg!18593 (regOne!37041 r!13749)))) b!7155651))

(assert (= (and b!7155460 (is-Union!18264 (reg!18593 (regOne!37041 r!13749)))) b!7155652))

(declare-fun e!4298617 () Bool)

(assert (=> b!7155469 (= tp!1978348 e!4298617)))

(declare-fun b!7155654 () Bool)

(declare-fun tp!1978449 () Bool)

(declare-fun tp!1978448 () Bool)

(assert (=> b!7155654 (= e!4298617 (and tp!1978449 tp!1978448))))

(declare-fun b!7155653 () Bool)

(assert (=> b!7155653 (= e!4298617 tp_is_empty!46161)))

(declare-fun b!7155655 () Bool)

(declare-fun tp!1978452 () Bool)

(assert (=> b!7155655 (= e!4298617 tp!1978452)))

(declare-fun b!7155656 () Bool)

(declare-fun tp!1978450 () Bool)

(declare-fun tp!1978451 () Bool)

(assert (=> b!7155656 (= e!4298617 (and tp!1978450 tp!1978451))))

(assert (= (and b!7155469 (is-ElementMatch!18264 (regOne!37041 (reg!18593 r!13749)))) b!7155653))

(assert (= (and b!7155469 (is-Concat!27109 (regOne!37041 (reg!18593 r!13749)))) b!7155654))

(assert (= (and b!7155469 (is-Star!18264 (regOne!37041 (reg!18593 r!13749)))) b!7155655))

(assert (= (and b!7155469 (is-Union!18264 (regOne!37041 (reg!18593 r!13749)))) b!7155656))

(declare-fun e!4298618 () Bool)

(assert (=> b!7155469 (= tp!1978349 e!4298618)))

(declare-fun b!7155658 () Bool)

(declare-fun tp!1978454 () Bool)

(declare-fun tp!1978453 () Bool)

(assert (=> b!7155658 (= e!4298618 (and tp!1978454 tp!1978453))))

(declare-fun b!7155657 () Bool)

(assert (=> b!7155657 (= e!4298618 tp_is_empty!46161)))

(declare-fun b!7155659 () Bool)

(declare-fun tp!1978457 () Bool)

(assert (=> b!7155659 (= e!4298618 tp!1978457)))

(declare-fun b!7155660 () Bool)

(declare-fun tp!1978455 () Bool)

(declare-fun tp!1978456 () Bool)

(assert (=> b!7155660 (= e!4298618 (and tp!1978455 tp!1978456))))

(assert (= (and b!7155469 (is-ElementMatch!18264 (regTwo!37041 (reg!18593 r!13749)))) b!7155657))

(assert (= (and b!7155469 (is-Concat!27109 (regTwo!37041 (reg!18593 r!13749)))) b!7155658))

(assert (= (and b!7155469 (is-Star!18264 (regTwo!37041 (reg!18593 r!13749)))) b!7155659))

(assert (= (and b!7155469 (is-Union!18264 (regTwo!37041 (reg!18593 r!13749)))) b!7155660))

(declare-fun e!4298619 () Bool)

(assert (=> b!7155455 (= tp!1978332 e!4298619)))

(declare-fun b!7155662 () Bool)

(declare-fun tp!1978459 () Bool)

(declare-fun tp!1978458 () Bool)

(assert (=> b!7155662 (= e!4298619 (and tp!1978459 tp!1978458))))

(declare-fun b!7155661 () Bool)

(assert (=> b!7155661 (= e!4298619 tp_is_empty!46161)))

(declare-fun b!7155663 () Bool)

(declare-fun tp!1978462 () Bool)

(assert (=> b!7155663 (= e!4298619 tp!1978462)))

(declare-fun b!7155664 () Bool)

(declare-fun tp!1978460 () Bool)

(declare-fun tp!1978461 () Bool)

(assert (=> b!7155664 (= e!4298619 (and tp!1978460 tp!1978461))))

(assert (= (and b!7155455 (is-ElementMatch!18264 (regOne!37040 (regTwo!37040 r!13749)))) b!7155661))

(assert (= (and b!7155455 (is-Concat!27109 (regOne!37040 (regTwo!37040 r!13749)))) b!7155662))

(assert (= (and b!7155455 (is-Star!18264 (regOne!37040 (regTwo!37040 r!13749)))) b!7155663))

(assert (= (and b!7155455 (is-Union!18264 (regOne!37040 (regTwo!37040 r!13749)))) b!7155664))

(declare-fun e!4298620 () Bool)

(assert (=> b!7155455 (= tp!1978331 e!4298620)))

(declare-fun b!7155666 () Bool)

(declare-fun tp!1978464 () Bool)

(declare-fun tp!1978463 () Bool)

(assert (=> b!7155666 (= e!4298620 (and tp!1978464 tp!1978463))))

(declare-fun b!7155665 () Bool)

(assert (=> b!7155665 (= e!4298620 tp_is_empty!46161)))

(declare-fun b!7155667 () Bool)

(declare-fun tp!1978467 () Bool)

(assert (=> b!7155667 (= e!4298620 tp!1978467)))

(declare-fun b!7155668 () Bool)

(declare-fun tp!1978465 () Bool)

(declare-fun tp!1978466 () Bool)

(assert (=> b!7155668 (= e!4298620 (and tp!1978465 tp!1978466))))

(assert (= (and b!7155455 (is-ElementMatch!18264 (regTwo!37040 (regTwo!37040 r!13749)))) b!7155665))

(assert (= (and b!7155455 (is-Concat!27109 (regTwo!37040 (regTwo!37040 r!13749)))) b!7155666))

(assert (= (and b!7155455 (is-Star!18264 (regTwo!37040 (regTwo!37040 r!13749)))) b!7155667))

(assert (= (and b!7155455 (is-Union!18264 (regTwo!37040 (regTwo!37040 r!13749)))) b!7155668))

(declare-fun e!4298621 () Bool)

(assert (=> b!7155464 (= tp!1978345 e!4298621)))

(declare-fun b!7155670 () Bool)

(declare-fun tp!1978469 () Bool)

(declare-fun tp!1978468 () Bool)

(assert (=> b!7155670 (= e!4298621 (and tp!1978469 tp!1978468))))

(declare-fun b!7155669 () Bool)

(assert (=> b!7155669 (= e!4298621 tp_is_empty!46161)))

(declare-fun b!7155671 () Bool)

(declare-fun tp!1978472 () Bool)

(assert (=> b!7155671 (= e!4298621 tp!1978472)))

(declare-fun b!7155672 () Bool)

(declare-fun tp!1978470 () Bool)

(declare-fun tp!1978471 () Bool)

(assert (=> b!7155672 (= e!4298621 (and tp!1978470 tp!1978471))))

(assert (= (and b!7155464 (is-ElementMatch!18264 (reg!18593 (regTwo!37041 r!13749)))) b!7155669))

(assert (= (and b!7155464 (is-Concat!27109 (reg!18593 (regTwo!37041 r!13749)))) b!7155670))

(assert (= (and b!7155464 (is-Star!18264 (reg!18593 (regTwo!37041 r!13749)))) b!7155671))

(assert (= (and b!7155464 (is-Union!18264 (reg!18593 (regTwo!37041 r!13749)))) b!7155672))

(declare-fun e!4298622 () Bool)

(assert (=> b!7155473 (= tp!1978353 e!4298622)))

(declare-fun b!7155674 () Bool)

(declare-fun tp!1978474 () Bool)

(declare-fun tp!1978473 () Bool)

(assert (=> b!7155674 (= e!4298622 (and tp!1978474 tp!1978473))))

(declare-fun b!7155673 () Bool)

(assert (=> b!7155673 (= e!4298622 tp_is_empty!46161)))

(declare-fun b!7155675 () Bool)

(declare-fun tp!1978477 () Bool)

(assert (=> b!7155675 (= e!4298622 tp!1978477)))

(declare-fun b!7155676 () Bool)

(declare-fun tp!1978475 () Bool)

(declare-fun tp!1978476 () Bool)

(assert (=> b!7155676 (= e!4298622 (and tp!1978475 tp!1978476))))

(assert (= (and b!7155473 (is-ElementMatch!18264 (regOne!37041 (h!75892 l!9132)))) b!7155673))

(assert (= (and b!7155473 (is-Concat!27109 (regOne!37041 (h!75892 l!9132)))) b!7155674))

(assert (= (and b!7155473 (is-Star!18264 (regOne!37041 (h!75892 l!9132)))) b!7155675))

(assert (= (and b!7155473 (is-Union!18264 (regOne!37041 (h!75892 l!9132)))) b!7155676))

(declare-fun e!4298623 () Bool)

(assert (=> b!7155473 (= tp!1978354 e!4298623)))

(declare-fun b!7155678 () Bool)

(declare-fun tp!1978479 () Bool)

(declare-fun tp!1978478 () Bool)

(assert (=> b!7155678 (= e!4298623 (and tp!1978479 tp!1978478))))

(declare-fun b!7155677 () Bool)

(assert (=> b!7155677 (= e!4298623 tp_is_empty!46161)))

(declare-fun b!7155679 () Bool)

(declare-fun tp!1978482 () Bool)

(assert (=> b!7155679 (= e!4298623 tp!1978482)))

(declare-fun b!7155680 () Bool)

(declare-fun tp!1978480 () Bool)

(declare-fun tp!1978481 () Bool)

(assert (=> b!7155680 (= e!4298623 (and tp!1978480 tp!1978481))))

(assert (= (and b!7155473 (is-ElementMatch!18264 (regTwo!37041 (h!75892 l!9132)))) b!7155677))

(assert (= (and b!7155473 (is-Concat!27109 (regTwo!37041 (h!75892 l!9132)))) b!7155678))

(assert (= (and b!7155473 (is-Star!18264 (regTwo!37041 (h!75892 l!9132)))) b!7155679))

(assert (= (and b!7155473 (is-Union!18264 (regTwo!37041 (h!75892 l!9132)))) b!7155680))

(declare-fun e!4298624 () Bool)

(assert (=> b!7155459 (= tp!1978337 e!4298624)))

(declare-fun b!7155682 () Bool)

(declare-fun tp!1978484 () Bool)

(declare-fun tp!1978483 () Bool)

(assert (=> b!7155682 (= e!4298624 (and tp!1978484 tp!1978483))))

(declare-fun b!7155681 () Bool)

(assert (=> b!7155681 (= e!4298624 tp_is_empty!46161)))

(declare-fun b!7155683 () Bool)

(declare-fun tp!1978487 () Bool)

(assert (=> b!7155683 (= e!4298624 tp!1978487)))

(declare-fun b!7155684 () Bool)

(declare-fun tp!1978485 () Bool)

(declare-fun tp!1978486 () Bool)

(assert (=> b!7155684 (= e!4298624 (and tp!1978485 tp!1978486))))

(assert (= (and b!7155459 (is-ElementMatch!18264 (regOne!37040 (regOne!37041 r!13749)))) b!7155681))

(assert (= (and b!7155459 (is-Concat!27109 (regOne!37040 (regOne!37041 r!13749)))) b!7155682))

(assert (= (and b!7155459 (is-Star!18264 (regOne!37040 (regOne!37041 r!13749)))) b!7155683))

(assert (= (and b!7155459 (is-Union!18264 (regOne!37040 (regOne!37041 r!13749)))) b!7155684))

(declare-fun e!4298625 () Bool)

(assert (=> b!7155459 (= tp!1978336 e!4298625)))

(declare-fun b!7155686 () Bool)

(declare-fun tp!1978489 () Bool)

(declare-fun tp!1978488 () Bool)

(assert (=> b!7155686 (= e!4298625 (and tp!1978489 tp!1978488))))

(declare-fun b!7155685 () Bool)

(assert (=> b!7155685 (= e!4298625 tp_is_empty!46161)))

(declare-fun b!7155687 () Bool)

(declare-fun tp!1978492 () Bool)

(assert (=> b!7155687 (= e!4298625 tp!1978492)))

(declare-fun b!7155688 () Bool)

(declare-fun tp!1978490 () Bool)

(declare-fun tp!1978491 () Bool)

(assert (=> b!7155688 (= e!4298625 (and tp!1978490 tp!1978491))))

(assert (= (and b!7155459 (is-ElementMatch!18264 (regTwo!37040 (regOne!37041 r!13749)))) b!7155685))

(assert (= (and b!7155459 (is-Concat!27109 (regTwo!37040 (regOne!37041 r!13749)))) b!7155686))

(assert (= (and b!7155459 (is-Star!18264 (regTwo!37040 (regOne!37041 r!13749)))) b!7155687))

(assert (= (and b!7155459 (is-Union!18264 (regTwo!37040 (regOne!37041 r!13749)))) b!7155688))

(declare-fun e!4298626 () Bool)

(assert (=> b!7155468 (= tp!1978350 e!4298626)))

(declare-fun b!7155690 () Bool)

(declare-fun tp!1978494 () Bool)

(declare-fun tp!1978493 () Bool)

(assert (=> b!7155690 (= e!4298626 (and tp!1978494 tp!1978493))))

(declare-fun b!7155689 () Bool)

(assert (=> b!7155689 (= e!4298626 tp_is_empty!46161)))

(declare-fun b!7155691 () Bool)

(declare-fun tp!1978497 () Bool)

(assert (=> b!7155691 (= e!4298626 tp!1978497)))

(declare-fun b!7155692 () Bool)

(declare-fun tp!1978495 () Bool)

(declare-fun tp!1978496 () Bool)

(assert (=> b!7155692 (= e!4298626 (and tp!1978495 tp!1978496))))

(assert (= (and b!7155468 (is-ElementMatch!18264 (reg!18593 (reg!18593 r!13749)))) b!7155689))

(assert (= (and b!7155468 (is-Concat!27109 (reg!18593 (reg!18593 r!13749)))) b!7155690))

(assert (= (and b!7155468 (is-Star!18264 (reg!18593 (reg!18593 r!13749)))) b!7155691))

(assert (= (and b!7155468 (is-Union!18264 (reg!18593 (reg!18593 r!13749)))) b!7155692))

(declare-fun e!4298627 () Bool)

(assert (=> b!7155463 (= tp!1978342 e!4298627)))

(declare-fun b!7155694 () Bool)

(declare-fun tp!1978499 () Bool)

(declare-fun tp!1978498 () Bool)

(assert (=> b!7155694 (= e!4298627 (and tp!1978499 tp!1978498))))

(declare-fun b!7155693 () Bool)

(assert (=> b!7155693 (= e!4298627 tp_is_empty!46161)))

(declare-fun b!7155695 () Bool)

(declare-fun tp!1978502 () Bool)

(assert (=> b!7155695 (= e!4298627 tp!1978502)))

(declare-fun b!7155696 () Bool)

(declare-fun tp!1978500 () Bool)

(declare-fun tp!1978501 () Bool)

(assert (=> b!7155696 (= e!4298627 (and tp!1978500 tp!1978501))))

(assert (= (and b!7155463 (is-ElementMatch!18264 (regOne!37040 (regTwo!37041 r!13749)))) b!7155693))

(assert (= (and b!7155463 (is-Concat!27109 (regOne!37040 (regTwo!37041 r!13749)))) b!7155694))

(assert (= (and b!7155463 (is-Star!18264 (regOne!37040 (regTwo!37041 r!13749)))) b!7155695))

(assert (= (and b!7155463 (is-Union!18264 (regOne!37040 (regTwo!37041 r!13749)))) b!7155696))

(declare-fun e!4298628 () Bool)

(assert (=> b!7155463 (= tp!1978341 e!4298628)))

(declare-fun b!7155698 () Bool)

(declare-fun tp!1978504 () Bool)

(declare-fun tp!1978503 () Bool)

(assert (=> b!7155698 (= e!4298628 (and tp!1978504 tp!1978503))))

(declare-fun b!7155697 () Bool)

(assert (=> b!7155697 (= e!4298628 tp_is_empty!46161)))

(declare-fun b!7155699 () Bool)

(declare-fun tp!1978507 () Bool)

(assert (=> b!7155699 (= e!4298628 tp!1978507)))

(declare-fun b!7155700 () Bool)

(declare-fun tp!1978505 () Bool)

(declare-fun tp!1978506 () Bool)

(assert (=> b!7155700 (= e!4298628 (and tp!1978505 tp!1978506))))

(assert (= (and b!7155463 (is-ElementMatch!18264 (regTwo!37040 (regTwo!37041 r!13749)))) b!7155697))

(assert (= (and b!7155463 (is-Concat!27109 (regTwo!37040 (regTwo!37041 r!13749)))) b!7155698))

(assert (= (and b!7155463 (is-Star!18264 (regTwo!37040 (regTwo!37041 r!13749)))) b!7155699))

(assert (= (and b!7155463 (is-Union!18264 (regTwo!37040 (regTwo!37041 r!13749)))) b!7155700))

(declare-fun e!4298629 () Bool)

(assert (=> b!7155472 (= tp!1978355 e!4298629)))

(declare-fun b!7155702 () Bool)

(declare-fun tp!1978509 () Bool)

(declare-fun tp!1978508 () Bool)

(assert (=> b!7155702 (= e!4298629 (and tp!1978509 tp!1978508))))

(declare-fun b!7155701 () Bool)

(assert (=> b!7155701 (= e!4298629 tp_is_empty!46161)))

(declare-fun b!7155703 () Bool)

(declare-fun tp!1978512 () Bool)

(assert (=> b!7155703 (= e!4298629 tp!1978512)))

(declare-fun b!7155704 () Bool)

(declare-fun tp!1978510 () Bool)

(declare-fun tp!1978511 () Bool)

(assert (=> b!7155704 (= e!4298629 (and tp!1978510 tp!1978511))))

(assert (= (and b!7155472 (is-ElementMatch!18264 (reg!18593 (h!75892 l!9132)))) b!7155701))

(assert (= (and b!7155472 (is-Concat!27109 (reg!18593 (h!75892 l!9132)))) b!7155702))

(assert (= (and b!7155472 (is-Star!18264 (reg!18593 (h!75892 l!9132)))) b!7155703))

(assert (= (and b!7155472 (is-Union!18264 (reg!18593 (h!75892 l!9132)))) b!7155704))

(declare-fun e!4298630 () Bool)

(assert (=> b!7155467 (= tp!1978347 e!4298630)))

(declare-fun b!7155706 () Bool)

(declare-fun tp!1978514 () Bool)

(declare-fun tp!1978513 () Bool)

(assert (=> b!7155706 (= e!4298630 (and tp!1978514 tp!1978513))))

(declare-fun b!7155705 () Bool)

(assert (=> b!7155705 (= e!4298630 tp_is_empty!46161)))

(declare-fun b!7155707 () Bool)

(declare-fun tp!1978517 () Bool)

(assert (=> b!7155707 (= e!4298630 tp!1978517)))

(declare-fun b!7155708 () Bool)

(declare-fun tp!1978515 () Bool)

(declare-fun tp!1978516 () Bool)

(assert (=> b!7155708 (= e!4298630 (and tp!1978515 tp!1978516))))

(assert (= (and b!7155467 (is-ElementMatch!18264 (regOne!37040 (reg!18593 r!13749)))) b!7155705))

(assert (= (and b!7155467 (is-Concat!27109 (regOne!37040 (reg!18593 r!13749)))) b!7155706))

(assert (= (and b!7155467 (is-Star!18264 (regOne!37040 (reg!18593 r!13749)))) b!7155707))

(assert (= (and b!7155467 (is-Union!18264 (regOne!37040 (reg!18593 r!13749)))) b!7155708))

(declare-fun e!4298631 () Bool)

(assert (=> b!7155467 (= tp!1978346 e!4298631)))

(declare-fun b!7155710 () Bool)

(declare-fun tp!1978519 () Bool)

(declare-fun tp!1978518 () Bool)

(assert (=> b!7155710 (= e!4298631 (and tp!1978519 tp!1978518))))

(declare-fun b!7155709 () Bool)

(assert (=> b!7155709 (= e!4298631 tp_is_empty!46161)))

(declare-fun b!7155711 () Bool)

(declare-fun tp!1978522 () Bool)

(assert (=> b!7155711 (= e!4298631 tp!1978522)))

(declare-fun b!7155712 () Bool)

(declare-fun tp!1978520 () Bool)

(declare-fun tp!1978521 () Bool)

(assert (=> b!7155712 (= e!4298631 (and tp!1978520 tp!1978521))))

(assert (= (and b!7155467 (is-ElementMatch!18264 (regTwo!37040 (reg!18593 r!13749)))) b!7155709))

(assert (= (and b!7155467 (is-Concat!27109 (regTwo!37040 (reg!18593 r!13749)))) b!7155710))

(assert (= (and b!7155467 (is-Star!18264 (regTwo!37040 (reg!18593 r!13749)))) b!7155711))

(assert (= (and b!7155467 (is-Union!18264 (regTwo!37040 (reg!18593 r!13749)))) b!7155712))

(declare-fun e!4298632 () Bool)

(assert (=> b!7155453 (= tp!1978328 e!4298632)))

(declare-fun b!7155714 () Bool)

(declare-fun tp!1978524 () Bool)

(declare-fun tp!1978523 () Bool)

(assert (=> b!7155714 (= e!4298632 (and tp!1978524 tp!1978523))))

(declare-fun b!7155713 () Bool)

(assert (=> b!7155713 (= e!4298632 tp_is_empty!46161)))

(declare-fun b!7155715 () Bool)

(declare-fun tp!1978527 () Bool)

(assert (=> b!7155715 (= e!4298632 tp!1978527)))

(declare-fun b!7155716 () Bool)

(declare-fun tp!1978525 () Bool)

(declare-fun tp!1978526 () Bool)

(assert (=> b!7155716 (= e!4298632 (and tp!1978525 tp!1978526))))

(assert (= (and b!7155453 (is-ElementMatch!18264 (regOne!37041 (regOne!37040 r!13749)))) b!7155713))

(assert (= (and b!7155453 (is-Concat!27109 (regOne!37041 (regOne!37040 r!13749)))) b!7155714))

(assert (= (and b!7155453 (is-Star!18264 (regOne!37041 (regOne!37040 r!13749)))) b!7155715))

(assert (= (and b!7155453 (is-Union!18264 (regOne!37041 (regOne!37040 r!13749)))) b!7155716))

(declare-fun e!4298633 () Bool)

(assert (=> b!7155453 (= tp!1978329 e!4298633)))

(declare-fun b!7155718 () Bool)

(declare-fun tp!1978529 () Bool)

(declare-fun tp!1978528 () Bool)

(assert (=> b!7155718 (= e!4298633 (and tp!1978529 tp!1978528))))

(declare-fun b!7155717 () Bool)

(assert (=> b!7155717 (= e!4298633 tp_is_empty!46161)))

(declare-fun b!7155719 () Bool)

(declare-fun tp!1978532 () Bool)

(assert (=> b!7155719 (= e!4298633 tp!1978532)))

(declare-fun b!7155720 () Bool)

(declare-fun tp!1978530 () Bool)

(declare-fun tp!1978531 () Bool)

(assert (=> b!7155720 (= e!4298633 (and tp!1978530 tp!1978531))))

(assert (= (and b!7155453 (is-ElementMatch!18264 (regTwo!37041 (regOne!37040 r!13749)))) b!7155717))

(assert (= (and b!7155453 (is-Concat!27109 (regTwo!37041 (regOne!37040 r!13749)))) b!7155718))

(assert (= (and b!7155453 (is-Star!18264 (regTwo!37041 (regOne!37040 r!13749)))) b!7155719))

(assert (= (and b!7155453 (is-Union!18264 (regTwo!37041 (regOne!37040 r!13749)))) b!7155720))

(declare-fun e!4298634 () Bool)

(assert (=> b!7155471 (= tp!1978352 e!4298634)))

(declare-fun b!7155722 () Bool)

(declare-fun tp!1978534 () Bool)

(declare-fun tp!1978533 () Bool)

(assert (=> b!7155722 (= e!4298634 (and tp!1978534 tp!1978533))))

(declare-fun b!7155721 () Bool)

(assert (=> b!7155721 (= e!4298634 tp_is_empty!46161)))

(declare-fun b!7155723 () Bool)

(declare-fun tp!1978537 () Bool)

(assert (=> b!7155723 (= e!4298634 tp!1978537)))

(declare-fun b!7155724 () Bool)

(declare-fun tp!1978535 () Bool)

(declare-fun tp!1978536 () Bool)

(assert (=> b!7155724 (= e!4298634 (and tp!1978535 tp!1978536))))

(assert (= (and b!7155471 (is-ElementMatch!18264 (regOne!37040 (h!75892 l!9132)))) b!7155721))

(assert (= (and b!7155471 (is-Concat!27109 (regOne!37040 (h!75892 l!9132)))) b!7155722))

(assert (= (and b!7155471 (is-Star!18264 (regOne!37040 (h!75892 l!9132)))) b!7155723))

(assert (= (and b!7155471 (is-Union!18264 (regOne!37040 (h!75892 l!9132)))) b!7155724))

(declare-fun e!4298635 () Bool)

(assert (=> b!7155471 (= tp!1978351 e!4298635)))

(declare-fun b!7155726 () Bool)

(declare-fun tp!1978539 () Bool)

(declare-fun tp!1978538 () Bool)

(assert (=> b!7155726 (= e!4298635 (and tp!1978539 tp!1978538))))

(declare-fun b!7155725 () Bool)

(assert (=> b!7155725 (= e!4298635 tp_is_empty!46161)))

(declare-fun b!7155727 () Bool)

(declare-fun tp!1978542 () Bool)

(assert (=> b!7155727 (= e!4298635 tp!1978542)))

(declare-fun b!7155728 () Bool)

(declare-fun tp!1978540 () Bool)

(declare-fun tp!1978541 () Bool)

(assert (=> b!7155728 (= e!4298635 (and tp!1978540 tp!1978541))))

(assert (= (and b!7155471 (is-ElementMatch!18264 (regTwo!37040 (h!75892 l!9132)))) b!7155725))

(assert (= (and b!7155471 (is-Concat!27109 (regTwo!37040 (h!75892 l!9132)))) b!7155726))

(assert (= (and b!7155471 (is-Star!18264 (regTwo!37040 (h!75892 l!9132)))) b!7155727))

(assert (= (and b!7155471 (is-Union!18264 (regTwo!37040 (h!75892 l!9132)))) b!7155728))

(declare-fun e!4298636 () Bool)

(assert (=> b!7155452 (= tp!1978330 e!4298636)))

(declare-fun b!7155730 () Bool)

(declare-fun tp!1978544 () Bool)

(declare-fun tp!1978543 () Bool)

(assert (=> b!7155730 (= e!4298636 (and tp!1978544 tp!1978543))))

(declare-fun b!7155729 () Bool)

(assert (=> b!7155729 (= e!4298636 tp_is_empty!46161)))

(declare-fun b!7155731 () Bool)

(declare-fun tp!1978547 () Bool)

(assert (=> b!7155731 (= e!4298636 tp!1978547)))

(declare-fun b!7155732 () Bool)

(declare-fun tp!1978545 () Bool)

(declare-fun tp!1978546 () Bool)

(assert (=> b!7155732 (= e!4298636 (and tp!1978545 tp!1978546))))

(assert (= (and b!7155452 (is-ElementMatch!18264 (reg!18593 (regOne!37040 r!13749)))) b!7155729))

(assert (= (and b!7155452 (is-Concat!27109 (reg!18593 (regOne!37040 r!13749)))) b!7155730))

(assert (= (and b!7155452 (is-Star!18264 (reg!18593 (regOne!37040 r!13749)))) b!7155731))

(assert (= (and b!7155452 (is-Union!18264 (reg!18593 (regOne!37040 r!13749)))) b!7155732))

(declare-fun e!4298637 () Bool)

(assert (=> b!7155478 (= tp!1978360 e!4298637)))

(declare-fun b!7155734 () Bool)

(declare-fun tp!1978549 () Bool)

(declare-fun tp!1978548 () Bool)

(assert (=> b!7155734 (= e!4298637 (and tp!1978549 tp!1978548))))

(declare-fun b!7155733 () Bool)

(assert (=> b!7155733 (= e!4298637 tp_is_empty!46161)))

(declare-fun b!7155735 () Bool)

(declare-fun tp!1978552 () Bool)

(assert (=> b!7155735 (= e!4298637 tp!1978552)))

(declare-fun b!7155736 () Bool)

(declare-fun tp!1978550 () Bool)

(declare-fun tp!1978551 () Bool)

(assert (=> b!7155736 (= e!4298637 (and tp!1978550 tp!1978551))))

(assert (= (and b!7155478 (is-ElementMatch!18264 (h!75892 (t!383585 l!9132)))) b!7155733))

(assert (= (and b!7155478 (is-Concat!27109 (h!75892 (t!383585 l!9132)))) b!7155734))

(assert (= (and b!7155478 (is-Star!18264 (h!75892 (t!383585 l!9132)))) b!7155735))

(assert (= (and b!7155478 (is-Union!18264 (h!75892 (t!383585 l!9132)))) b!7155736))

(declare-fun b!7155737 () Bool)

(declare-fun e!4298638 () Bool)

(declare-fun tp!1978553 () Bool)

(declare-fun tp!1978554 () Bool)

(assert (=> b!7155737 (= e!4298638 (and tp!1978553 tp!1978554))))

(assert (=> b!7155478 (= tp!1978361 e!4298638)))

(assert (= (and b!7155478 (is-Cons!69444 (t!383585 (t!383585 l!9132)))) b!7155737))

(declare-fun e!4298639 () Bool)

(assert (=> b!7155451 (= tp!1978327 e!4298639)))

(declare-fun b!7155739 () Bool)

(declare-fun tp!1978556 () Bool)

(declare-fun tp!1978555 () Bool)

(assert (=> b!7155739 (= e!4298639 (and tp!1978556 tp!1978555))))

(declare-fun b!7155738 () Bool)

(assert (=> b!7155738 (= e!4298639 tp_is_empty!46161)))

(declare-fun b!7155740 () Bool)

(declare-fun tp!1978559 () Bool)

(assert (=> b!7155740 (= e!4298639 tp!1978559)))

(declare-fun b!7155741 () Bool)

(declare-fun tp!1978557 () Bool)

(declare-fun tp!1978558 () Bool)

(assert (=> b!7155741 (= e!4298639 (and tp!1978557 tp!1978558))))

(assert (= (and b!7155451 (is-ElementMatch!18264 (regOne!37040 (regOne!37040 r!13749)))) b!7155738))

(assert (= (and b!7155451 (is-Concat!27109 (regOne!37040 (regOne!37040 r!13749)))) b!7155739))

(assert (= (and b!7155451 (is-Star!18264 (regOne!37040 (regOne!37040 r!13749)))) b!7155740))

(assert (= (and b!7155451 (is-Union!18264 (regOne!37040 (regOne!37040 r!13749)))) b!7155741))

(declare-fun e!4298640 () Bool)

(assert (=> b!7155451 (= tp!1978326 e!4298640)))

(declare-fun b!7155743 () Bool)

(declare-fun tp!1978561 () Bool)

(declare-fun tp!1978560 () Bool)

(assert (=> b!7155743 (= e!4298640 (and tp!1978561 tp!1978560))))

(declare-fun b!7155742 () Bool)

(assert (=> b!7155742 (= e!4298640 tp_is_empty!46161)))

(declare-fun b!7155744 () Bool)

(declare-fun tp!1978564 () Bool)

(assert (=> b!7155744 (= e!4298640 tp!1978564)))

(declare-fun b!7155745 () Bool)

(declare-fun tp!1978562 () Bool)

(declare-fun tp!1978563 () Bool)

(assert (=> b!7155745 (= e!4298640 (and tp!1978562 tp!1978563))))

(assert (= (and b!7155451 (is-ElementMatch!18264 (regTwo!37040 (regOne!37040 r!13749)))) b!7155742))

(assert (= (and b!7155451 (is-Concat!27109 (regTwo!37040 (regOne!37040 r!13749)))) b!7155743))

(assert (= (and b!7155451 (is-Star!18264 (regTwo!37040 (regOne!37040 r!13749)))) b!7155744))

(assert (= (and b!7155451 (is-Union!18264 (regTwo!37040 (regOne!37040 r!13749)))) b!7155745))

(declare-fun b_lambda!273313 () Bool)

(assert (= b_lambda!273311 (or d!2229535 b_lambda!273313)))

(declare-fun bs!1889852 () Bool)

(declare-fun d!2229575 () Bool)

(assert (= bs!1889852 (and d!2229575 d!2229535)))

(assert (=> bs!1889852 (= (dynLambda!28304 lambda!436366 (h!75892 l!9132)) (validRegex!9412 (h!75892 l!9132)))))

(assert (=> bs!1889852 m!7862606))

(assert (=> b!7155619 d!2229575))

(declare-fun b_lambda!273315 () Bool)

(assert (= b_lambda!273307 (or start!697434 b_lambda!273315)))

(declare-fun bs!1889853 () Bool)

(declare-fun d!2229577 () Bool)

(assert (= bs!1889853 (and d!2229577 start!697434)))

(assert (=> bs!1889853 (= (dynLambda!28304 lambda!436351 (h!75892 (t!383585 l!9132))) (validRegex!9412 (h!75892 (t!383585 l!9132))))))

(declare-fun m!7862674 () Bool)

(assert (=> bs!1889853 m!7862674))

(assert (=> b!7155575 d!2229577))

(declare-fun b_lambda!273317 () Bool)

(assert (= b_lambda!273309 (or d!2229527 b_lambda!273317)))

(declare-fun bs!1889854 () Bool)

(declare-fun d!2229579 () Bool)

(assert (= bs!1889854 (and d!2229579 d!2229527)))

(assert (=> bs!1889854 (= (dynLambda!28304 lambda!436361 (h!75892 l!9132)) (not (dynLambda!28304 lambda!436352 (h!75892 l!9132))))))

(declare-fun b_lambda!273319 () Bool)

(assert (=> (not b_lambda!273319) (not bs!1889854)))

(declare-fun m!7862676 () Bool)

(assert (=> bs!1889854 m!7862676))

(assert (=> b!7155608 d!2229579))

(push 1)

(assert (not b!7155679))

(assert (not b!7155620))

(assert (not b!7155627))

(assert (not b!7155630))

(assert (not b_lambda!273317))

(assert (not b!7155740))

(assert (not b!7155698))

(assert (not b!7155658))

(assert tp_is_empty!46161)

(assert (not b!7155696))

(assert (not b!7155642))

(assert (not b!7155683))

(assert (not b!7155640))

(assert (not b!7155678))

(assert (not b!7155734))

(assert (not b!7155703))

(assert (not b!7155722))

(assert (not b!7155719))

(assert (not b_lambda!273315))

(assert (not b!7155690))

(assert (not b!7155666))

(assert (not b!7155707))

(assert (not b!7155576))

(assert (not b!7155612))

(assert (not b!7155626))

(assert (not b!7155647))

(assert (not b!7155675))

(assert (not b!7155624))

(assert (not b!7155712))

(assert (not b!7155606))

(assert (not b!7155743))

(assert (not bm!651705))

(assert (not b!7155659))

(assert (not b!7155706))

(assert (not b!7155622))

(assert (not b!7155720))

(assert (not b!7155646))

(assert (not b!7155674))

(assert (not b!7155711))

(assert (not b!7155736))

(assert (not b!7155724))

(assert (not b!7155631))

(assert (not b!7155708))

(assert (not b!7155732))

(assert (not b!7155670))

(assert (not b!7155628))

(assert (not b!7155744))

(assert (not bs!1889853))

(assert (not b!7155648))

(assert (not bm!651700))

(assert (not b!7155682))

(assert (not b!7155718))

(assert (not b!7155568))

(assert (not b!7155656))

(assert (not b!7155737))

(assert (not b!7155710))

(assert (not b!7155735))

(assert (not b!7155662))

(assert (not b!7155635))

(assert (not b!7155639))

(assert (not b!7155638))

(assert (not b!7155623))

(assert (not b!7155651))

(assert (not b!7155634))

(assert (not b!7155726))

(assert (not b!7155655))

(assert (not b!7155668))

(assert (not b!7155741))

(assert (not b_lambda!273319))

(assert (not b!7155650))

(assert (not b!7155684))

(assert (not b!7155700))

(assert (not b!7155680))

(assert (not b!7155652))

(assert (not b!7155715))

(assert (not b!7155603))

(assert (not b!7155672))

(assert (not b!7155695))

(assert (not b!7155714))

(assert (not b_lambda!273303))

(assert (not d!2229561))

(assert (not b!7155716))

(assert (not b!7155688))

(assert (not b!7155731))

(assert (not b!7155643))

(assert (not bm!651706))

(assert (not b!7155664))

(assert (not b!7155692))

(assert (not b!7155727))

(assert (not b_lambda!273313))

(assert (not b!7155607))

(assert (not b!7155702))

(assert (not b!7155604))

(assert (not b!7155730))

(assert (not b!7155663))

(assert (not b!7155671))

(assert (not b!7155687))

(assert (not b!7155609))

(assert (not b!7155660))

(assert (not b!7155739))

(assert (not b!7155654))

(assert (not b!7155704))

(assert (not b!7155723))

(assert (not b!7155691))

(assert (not b!7155676))

(assert (not b!7155745))

(assert (not bm!651709))

(assert (not bs!1889852))

(assert (not b!7155644))

(assert (not b!7155599))

(assert (not b!7155694))

(assert (not b!7155600))

(assert (not bm!651699))

(assert (not b!7155699))

(assert (not b!7155667))

(assert (not b!7155686))

(assert (not b!7155636))

(assert (not b!7155632))

(assert (not bm!651708))

(assert (not b!7155728))

(assert (not b!7155602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

