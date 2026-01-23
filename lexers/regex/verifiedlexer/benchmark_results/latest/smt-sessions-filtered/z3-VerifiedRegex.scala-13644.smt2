; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731976 () Bool)

(assert start!731976)

(declare-fun b!7581393 () Bool)

(declare-fun res!3037156 () Bool)

(declare-fun e!4512396 () Bool)

(assert (=> b!7581393 (=> (not res!3037156) (not e!4512396))))

(declare-datatypes ((C!40492 0))(
  ( (C!40493 (val!30686 Int)) )
))
(declare-datatypes ((List!72966 0))(
  ( (Nil!72842) (Cons!72842 (h!79290 C!40492) (t!387701 List!72966)) )
))
(declare-fun s!13436 () List!72966)

(declare-fun isEmpty!41515 (List!72966) Bool)

(assert (=> b!7581393 (= res!3037156 (not (isEmpty!41515 s!13436)))))

(declare-fun b!7581394 () Bool)

(declare-fun res!3037154 () Bool)

(assert (=> b!7581394 (=> (not res!3037154) (not e!4512396))))

(declare-datatypes ((Regex!20083 0))(
  ( (ElementMatch!20083 (c!1398402 C!40492)) (Concat!28928 (regOne!40678 Regex!20083) (regTwo!40678 Regex!20083)) (EmptyExpr!20083) (Star!20083 (reg!20412 Regex!20083)) (EmptyLang!20083) (Union!20083 (regOne!40679 Regex!20083) (regTwo!40679 Regex!20083)) )
))
(declare-fun r!22341 () Regex!20083)

(declare-fun lostCause!1859 (Regex!20083) Bool)

(assert (=> b!7581394 (= res!3037154 (lostCause!1859 r!22341))))

(declare-fun res!3037155 () Bool)

(assert (=> start!731976 (=> (not res!3037155) (not e!4512396))))

(declare-fun validRegex!10511 (Regex!20083) Bool)

(assert (=> start!731976 (= res!3037155 (validRegex!10511 r!22341))))

(assert (=> start!731976 e!4512396))

(declare-fun e!4512399 () Bool)

(assert (=> start!731976 e!4512399))

(declare-fun e!4512398 () Bool)

(assert (=> start!731976 e!4512398))

(declare-fun b!7581395 () Bool)

(declare-fun tp!2209403 () Bool)

(declare-fun tp!2209400 () Bool)

(assert (=> b!7581395 (= e!4512399 (and tp!2209403 tp!2209400))))

(declare-fun b!7581396 () Bool)

(declare-fun tp!2209401 () Bool)

(declare-fun tp!2209405 () Bool)

(assert (=> b!7581396 (= e!4512399 (and tp!2209401 tp!2209405))))

(declare-fun b!7581397 () Bool)

(declare-fun e!4512397 () Bool)

(assert (=> b!7581397 (= e!4512396 (not e!4512397))))

(declare-fun res!3037153 () Bool)

(assert (=> b!7581397 (=> res!3037153 e!4512397)))

(get-info :version)

(assert (=> b!7581397 (= res!3037153 (or ((_ is EmptyLang!20083) r!22341) ((_ is EmptyExpr!20083) r!22341) ((_ is ElementMatch!20083) r!22341) (not ((_ is Union!20083) r!22341))))))

(declare-fun matchR!9675 (Regex!20083 List!72966) Bool)

(declare-fun matchRSpec!4396 (Regex!20083 List!72966) Bool)

(assert (=> b!7581397 (= (matchR!9675 r!22341 s!13436) (matchRSpec!4396 r!22341 s!13436))))

(declare-datatypes ((Unit!167122 0))(
  ( (Unit!167123) )
))
(declare-fun lt!2652627 () Unit!167122)

(declare-fun mainMatchTheorem!4390 (Regex!20083 List!72966) Unit!167122)

(assert (=> b!7581397 (= lt!2652627 (mainMatchTheorem!4390 r!22341 s!13436))))

(declare-fun b!7581398 () Bool)

(declare-fun tp_is_empty!50521 () Bool)

(assert (=> b!7581398 (= e!4512399 tp_is_empty!50521)))

(declare-fun b!7581399 () Bool)

(declare-fun tp!2209402 () Bool)

(assert (=> b!7581399 (= e!4512398 (and tp_is_empty!50521 tp!2209402))))

(declare-fun b!7581400 () Bool)

(declare-fun tp!2209404 () Bool)

(assert (=> b!7581400 (= e!4512399 tp!2209404)))

(declare-fun b!7581401 () Bool)

(assert (=> b!7581401 (= e!4512397 (validRegex!10511 (regTwo!40679 r!22341)))))

(assert (=> b!7581401 (not (matchR!9675 (regOne!40679 r!22341) s!13436))))

(declare-fun lt!2652628 () Unit!167122)

(declare-fun lemmaLostCauseCannotMatch!81 (Regex!20083 List!72966) Unit!167122)

(assert (=> b!7581401 (= lt!2652628 (lemmaLostCauseCannotMatch!81 (regOne!40679 r!22341) s!13436))))

(assert (= (and start!731976 res!3037155) b!7581394))

(assert (= (and b!7581394 res!3037154) b!7581393))

(assert (= (and b!7581393 res!3037156) b!7581397))

(assert (= (and b!7581397 (not res!3037153)) b!7581401))

(assert (= (and start!731976 ((_ is ElementMatch!20083) r!22341)) b!7581398))

(assert (= (and start!731976 ((_ is Concat!28928) r!22341)) b!7581396))

(assert (= (and start!731976 ((_ is Star!20083) r!22341)) b!7581400))

(assert (= (and start!731976 ((_ is Union!20083) r!22341)) b!7581395))

(assert (= (and start!731976 ((_ is Cons!72842) s!13436)) b!7581399))

(declare-fun m!8135936 () Bool)

(assert (=> b!7581393 m!8135936))

(declare-fun m!8135938 () Bool)

(assert (=> start!731976 m!8135938))

(declare-fun m!8135940 () Bool)

(assert (=> b!7581401 m!8135940))

(declare-fun m!8135942 () Bool)

(assert (=> b!7581401 m!8135942))

(declare-fun m!8135944 () Bool)

(assert (=> b!7581401 m!8135944))

(declare-fun m!8135946 () Bool)

(assert (=> b!7581397 m!8135946))

(declare-fun m!8135948 () Bool)

(assert (=> b!7581397 m!8135948))

(declare-fun m!8135950 () Bool)

(assert (=> b!7581397 m!8135950))

(declare-fun m!8135952 () Bool)

(assert (=> b!7581394 m!8135952))

(check-sat (not b!7581395) tp_is_empty!50521 (not b!7581397) (not b!7581400) (not b!7581396) (not b!7581394) (not b!7581399) (not b!7581401) (not start!731976) (not b!7581393))
(check-sat)
(get-model)

(declare-fun b!7581438 () Bool)

(declare-fun e!4512428 () Bool)

(declare-fun e!4512432 () Bool)

(assert (=> b!7581438 (= e!4512428 e!4512432)))

(declare-fun res!3037181 () Bool)

(assert (=> b!7581438 (=> (not res!3037181) (not e!4512432))))

(declare-fun call!695111 () Bool)

(assert (=> b!7581438 (= res!3037181 call!695111)))

(declare-fun b!7581439 () Bool)

(declare-fun e!4512434 () Bool)

(declare-fun call!695110 () Bool)

(assert (=> b!7581439 (= e!4512434 call!695110)))

(declare-fun bm!695104 () Bool)

(declare-fun call!695109 () Bool)

(assert (=> bm!695104 (= call!695109 call!695110)))

(declare-fun d!2318465 () Bool)

(declare-fun res!3037180 () Bool)

(declare-fun e!4512430 () Bool)

(assert (=> d!2318465 (=> res!3037180 e!4512430)))

(assert (=> d!2318465 (= res!3037180 ((_ is ElementMatch!20083) (regTwo!40679 r!22341)))))

(assert (=> d!2318465 (= (validRegex!10511 (regTwo!40679 r!22341)) e!4512430)))

(declare-fun b!7581440 () Bool)

(declare-fun e!4512433 () Bool)

(declare-fun e!4512429 () Bool)

(assert (=> b!7581440 (= e!4512433 e!4512429)))

(declare-fun c!1398412 () Bool)

(assert (=> b!7581440 (= c!1398412 ((_ is Union!20083) (regTwo!40679 r!22341)))))

(declare-fun b!7581441 () Bool)

(assert (=> b!7581441 (= e!4512430 e!4512433)))

(declare-fun c!1398411 () Bool)

(assert (=> b!7581441 (= c!1398411 ((_ is Star!20083) (regTwo!40679 r!22341)))))

(declare-fun b!7581442 () Bool)

(declare-fun res!3037179 () Bool)

(declare-fun e!4512431 () Bool)

(assert (=> b!7581442 (=> (not res!3037179) (not e!4512431))))

(assert (=> b!7581442 (= res!3037179 call!695109)))

(assert (=> b!7581442 (= e!4512429 e!4512431)))

(declare-fun b!7581443 () Bool)

(assert (=> b!7581443 (= e!4512431 call!695111)))

(declare-fun b!7581444 () Bool)

(declare-fun res!3037178 () Bool)

(assert (=> b!7581444 (=> res!3037178 e!4512428)))

(assert (=> b!7581444 (= res!3037178 (not ((_ is Concat!28928) (regTwo!40679 r!22341))))))

(assert (=> b!7581444 (= e!4512429 e!4512428)))

(declare-fun b!7581445 () Bool)

(assert (=> b!7581445 (= e!4512432 call!695109)))

(declare-fun b!7581446 () Bool)

(assert (=> b!7581446 (= e!4512433 e!4512434)))

(declare-fun res!3037177 () Bool)

(declare-fun nullable!8776 (Regex!20083) Bool)

(assert (=> b!7581446 (= res!3037177 (not (nullable!8776 (reg!20412 (regTwo!40679 r!22341)))))))

(assert (=> b!7581446 (=> (not res!3037177) (not e!4512434))))

(declare-fun bm!695105 () Bool)

(assert (=> bm!695105 (= call!695110 (validRegex!10511 (ite c!1398411 (reg!20412 (regTwo!40679 r!22341)) (ite c!1398412 (regOne!40679 (regTwo!40679 r!22341)) (regTwo!40678 (regTwo!40679 r!22341))))))))

(declare-fun bm!695106 () Bool)

(assert (=> bm!695106 (= call!695111 (validRegex!10511 (ite c!1398412 (regTwo!40679 (regTwo!40679 r!22341)) (regOne!40678 (regTwo!40679 r!22341)))))))

(assert (= (and d!2318465 (not res!3037180)) b!7581441))

(assert (= (and b!7581441 c!1398411) b!7581446))

(assert (= (and b!7581441 (not c!1398411)) b!7581440))

(assert (= (and b!7581446 res!3037177) b!7581439))

(assert (= (and b!7581440 c!1398412) b!7581442))

(assert (= (and b!7581440 (not c!1398412)) b!7581444))

(assert (= (and b!7581442 res!3037179) b!7581443))

(assert (= (and b!7581444 (not res!3037178)) b!7581438))

(assert (= (and b!7581438 res!3037181) b!7581445))

(assert (= (or b!7581443 b!7581438) bm!695106))

(assert (= (or b!7581442 b!7581445) bm!695104))

(assert (= (or b!7581439 bm!695104) bm!695105))

(declare-fun m!8135956 () Bool)

(assert (=> b!7581446 m!8135956))

(declare-fun m!8135958 () Bool)

(assert (=> bm!695105 m!8135958))

(declare-fun m!8135960 () Bool)

(assert (=> bm!695106 m!8135960))

(assert (=> b!7581401 d!2318465))

(declare-fun b!7581521 () Bool)

(declare-fun res!3037227 () Bool)

(declare-fun e!4512479 () Bool)

(assert (=> b!7581521 (=> (not res!3037227) (not e!4512479))))

(declare-fun call!695122 () Bool)

(assert (=> b!7581521 (= res!3037227 (not call!695122))))

(declare-fun b!7581522 () Bool)

(declare-fun res!3037224 () Bool)

(declare-fun e!4512480 () Bool)

(assert (=> b!7581522 (=> res!3037224 e!4512480)))

(assert (=> b!7581522 (= res!3037224 (not ((_ is ElementMatch!20083) (regOne!40679 r!22341))))))

(declare-fun e!4512482 () Bool)

(assert (=> b!7581522 (= e!4512482 e!4512480)))

(declare-fun b!7581523 () Bool)

(declare-fun e!4512478 () Bool)

(assert (=> b!7581523 (= e!4512478 e!4512482)))

(declare-fun c!1398429 () Bool)

(assert (=> b!7581523 (= c!1398429 ((_ is EmptyLang!20083) (regOne!40679 r!22341)))))

(declare-fun b!7581524 () Bool)

(declare-fun e!4512481 () Bool)

(declare-fun head!15603 (List!72966) C!40492)

(assert (=> b!7581524 (= e!4512481 (not (= (head!15603 s!13436) (c!1398402 (regOne!40679 r!22341)))))))

(declare-fun d!2318473 () Bool)

(assert (=> d!2318473 e!4512478))

(declare-fun c!1398430 () Bool)

(assert (=> d!2318473 (= c!1398430 ((_ is EmptyExpr!20083) (regOne!40679 r!22341)))))

(declare-fun lt!2652633 () Bool)

(declare-fun e!4512477 () Bool)

(assert (=> d!2318473 (= lt!2652633 e!4512477)))

(declare-fun c!1398431 () Bool)

(assert (=> d!2318473 (= c!1398431 (isEmpty!41515 s!13436))))

(assert (=> d!2318473 (validRegex!10511 (regOne!40679 r!22341))))

(assert (=> d!2318473 (= (matchR!9675 (regOne!40679 r!22341) s!13436) lt!2652633)))

(declare-fun b!7581525 () Bool)

(assert (=> b!7581525 (= e!4512482 (not lt!2652633))))

(declare-fun b!7581526 () Bool)

(declare-fun res!3037225 () Bool)

(assert (=> b!7581526 (=> res!3037225 e!4512481)))

(declare-fun tail!15143 (List!72966) List!72966)

(assert (=> b!7581526 (= res!3037225 (not (isEmpty!41515 (tail!15143 s!13436))))))

(declare-fun b!7581527 () Bool)

(declare-fun e!4512483 () Bool)

(assert (=> b!7581527 (= e!4512483 e!4512481)))

(declare-fun res!3037229 () Bool)

(assert (=> b!7581527 (=> res!3037229 e!4512481)))

(assert (=> b!7581527 (= res!3037229 call!695122)))

(declare-fun b!7581528 () Bool)

(declare-fun derivativeStep!5803 (Regex!20083 C!40492) Regex!20083)

(assert (=> b!7581528 (= e!4512477 (matchR!9675 (derivativeStep!5803 (regOne!40679 r!22341) (head!15603 s!13436)) (tail!15143 s!13436)))))

(declare-fun b!7581529 () Bool)

(assert (=> b!7581529 (= e!4512479 (= (head!15603 s!13436) (c!1398402 (regOne!40679 r!22341))))))

(declare-fun b!7581530 () Bool)

(declare-fun res!3037231 () Bool)

(assert (=> b!7581530 (=> (not res!3037231) (not e!4512479))))

(assert (=> b!7581530 (= res!3037231 (isEmpty!41515 (tail!15143 s!13436)))))

(declare-fun b!7581531 () Bool)

(assert (=> b!7581531 (= e!4512477 (nullable!8776 (regOne!40679 r!22341)))))

(declare-fun b!7581532 () Bool)

(assert (=> b!7581532 (= e!4512480 e!4512483)))

(declare-fun res!3037230 () Bool)

(assert (=> b!7581532 (=> (not res!3037230) (not e!4512483))))

(assert (=> b!7581532 (= res!3037230 (not lt!2652633))))

(declare-fun b!7581533 () Bool)

(declare-fun res!3037226 () Bool)

(assert (=> b!7581533 (=> res!3037226 e!4512480)))

(assert (=> b!7581533 (= res!3037226 e!4512479)))

(declare-fun res!3037228 () Bool)

(assert (=> b!7581533 (=> (not res!3037228) (not e!4512479))))

(assert (=> b!7581533 (= res!3037228 lt!2652633)))

(declare-fun bm!695117 () Bool)

(assert (=> bm!695117 (= call!695122 (isEmpty!41515 s!13436))))

(declare-fun b!7581534 () Bool)

(assert (=> b!7581534 (= e!4512478 (= lt!2652633 call!695122))))

(assert (= (and d!2318473 c!1398431) b!7581531))

(assert (= (and d!2318473 (not c!1398431)) b!7581528))

(assert (= (and d!2318473 c!1398430) b!7581534))

(assert (= (and d!2318473 (not c!1398430)) b!7581523))

(assert (= (and b!7581523 c!1398429) b!7581525))

(assert (= (and b!7581523 (not c!1398429)) b!7581522))

(assert (= (and b!7581522 (not res!3037224)) b!7581533))

(assert (= (and b!7581533 res!3037228) b!7581521))

(assert (= (and b!7581521 res!3037227) b!7581530))

(assert (= (and b!7581530 res!3037231) b!7581529))

(assert (= (and b!7581533 (not res!3037226)) b!7581532))

(assert (= (and b!7581532 res!3037230) b!7581527))

(assert (= (and b!7581527 (not res!3037229)) b!7581526))

(assert (= (and b!7581526 (not res!3037225)) b!7581524))

(assert (= (or b!7581534 b!7581521 b!7581527) bm!695117))

(declare-fun m!8135974 () Bool)

(assert (=> b!7581528 m!8135974))

(assert (=> b!7581528 m!8135974))

(declare-fun m!8135976 () Bool)

(assert (=> b!7581528 m!8135976))

(declare-fun m!8135978 () Bool)

(assert (=> b!7581528 m!8135978))

(assert (=> b!7581528 m!8135976))

(assert (=> b!7581528 m!8135978))

(declare-fun m!8135980 () Bool)

(assert (=> b!7581528 m!8135980))

(assert (=> b!7581524 m!8135974))

(assert (=> b!7581530 m!8135978))

(assert (=> b!7581530 m!8135978))

(declare-fun m!8135982 () Bool)

(assert (=> b!7581530 m!8135982))

(assert (=> bm!695117 m!8135936))

(assert (=> d!2318473 m!8135936))

(declare-fun m!8135984 () Bool)

(assert (=> d!2318473 m!8135984))

(assert (=> b!7581526 m!8135978))

(assert (=> b!7581526 m!8135978))

(assert (=> b!7581526 m!8135982))

(assert (=> b!7581529 m!8135974))

(declare-fun m!8135986 () Bool)

(assert (=> b!7581531 m!8135986))

(assert (=> b!7581401 d!2318473))

(declare-fun d!2318479 () Bool)

(assert (=> d!2318479 (not (matchR!9675 (regOne!40679 r!22341) s!13436))))

(declare-fun lt!2652636 () Unit!167122)

(declare-fun choose!58612 (Regex!20083 List!72966) Unit!167122)

(assert (=> d!2318479 (= lt!2652636 (choose!58612 (regOne!40679 r!22341) s!13436))))

(assert (=> d!2318479 (validRegex!10511 (regOne!40679 r!22341))))

(assert (=> d!2318479 (= (lemmaLostCauseCannotMatch!81 (regOne!40679 r!22341) s!13436) lt!2652636)))

(declare-fun bs!1941056 () Bool)

(assert (= bs!1941056 d!2318479))

(assert (=> bs!1941056 m!8135942))

(declare-fun m!8135988 () Bool)

(assert (=> bs!1941056 m!8135988))

(assert (=> bs!1941056 m!8135984))

(assert (=> b!7581401 d!2318479))

(declare-fun d!2318481 () Bool)

(assert (=> d!2318481 (= (isEmpty!41515 s!13436) ((_ is Nil!72842) s!13436))))

(assert (=> b!7581393 d!2318481))

(declare-fun b!7581549 () Bool)

(declare-fun e!4512491 () Bool)

(declare-fun e!4512495 () Bool)

(assert (=> b!7581549 (= e!4512491 e!4512495)))

(declare-fun res!3037244 () Bool)

(assert (=> b!7581549 (=> (not res!3037244) (not e!4512495))))

(declare-fun call!695126 () Bool)

(assert (=> b!7581549 (= res!3037244 call!695126)))

(declare-fun b!7581550 () Bool)

(declare-fun e!4512497 () Bool)

(declare-fun call!695125 () Bool)

(assert (=> b!7581550 (= e!4512497 call!695125)))

(declare-fun bm!695119 () Bool)

(declare-fun call!695124 () Bool)

(assert (=> bm!695119 (= call!695124 call!695125)))

(declare-fun d!2318483 () Bool)

(declare-fun res!3037243 () Bool)

(declare-fun e!4512493 () Bool)

(assert (=> d!2318483 (=> res!3037243 e!4512493)))

(assert (=> d!2318483 (= res!3037243 ((_ is ElementMatch!20083) r!22341))))

(assert (=> d!2318483 (= (validRegex!10511 r!22341) e!4512493)))

(declare-fun b!7581551 () Bool)

(declare-fun e!4512496 () Bool)

(declare-fun e!4512492 () Bool)

(assert (=> b!7581551 (= e!4512496 e!4512492)))

(declare-fun c!1398436 () Bool)

(assert (=> b!7581551 (= c!1398436 ((_ is Union!20083) r!22341))))

(declare-fun b!7581552 () Bool)

(assert (=> b!7581552 (= e!4512493 e!4512496)))

(declare-fun c!1398435 () Bool)

(assert (=> b!7581552 (= c!1398435 ((_ is Star!20083) r!22341))))

(declare-fun b!7581553 () Bool)

(declare-fun res!3037242 () Bool)

(declare-fun e!4512494 () Bool)

(assert (=> b!7581553 (=> (not res!3037242) (not e!4512494))))

(assert (=> b!7581553 (= res!3037242 call!695124)))

(assert (=> b!7581553 (= e!4512492 e!4512494)))

(declare-fun b!7581554 () Bool)

(assert (=> b!7581554 (= e!4512494 call!695126)))

(declare-fun b!7581555 () Bool)

(declare-fun res!3037241 () Bool)

(assert (=> b!7581555 (=> res!3037241 e!4512491)))

(assert (=> b!7581555 (= res!3037241 (not ((_ is Concat!28928) r!22341)))))

(assert (=> b!7581555 (= e!4512492 e!4512491)))

(declare-fun b!7581556 () Bool)

(assert (=> b!7581556 (= e!4512495 call!695124)))

(declare-fun b!7581557 () Bool)

(assert (=> b!7581557 (= e!4512496 e!4512497)))

(declare-fun res!3037240 () Bool)

(assert (=> b!7581557 (= res!3037240 (not (nullable!8776 (reg!20412 r!22341))))))

(assert (=> b!7581557 (=> (not res!3037240) (not e!4512497))))

(declare-fun bm!695120 () Bool)

(assert (=> bm!695120 (= call!695125 (validRegex!10511 (ite c!1398435 (reg!20412 r!22341) (ite c!1398436 (regOne!40679 r!22341) (regTwo!40678 r!22341)))))))

(declare-fun bm!695121 () Bool)

(assert (=> bm!695121 (= call!695126 (validRegex!10511 (ite c!1398436 (regTwo!40679 r!22341) (regOne!40678 r!22341))))))

(assert (= (and d!2318483 (not res!3037243)) b!7581552))

(assert (= (and b!7581552 c!1398435) b!7581557))

(assert (= (and b!7581552 (not c!1398435)) b!7581551))

(assert (= (and b!7581557 res!3037240) b!7581550))

(assert (= (and b!7581551 c!1398436) b!7581553))

(assert (= (and b!7581551 (not c!1398436)) b!7581555))

(assert (= (and b!7581553 res!3037242) b!7581554))

(assert (= (and b!7581555 (not res!3037241)) b!7581549))

(assert (= (and b!7581549 res!3037244) b!7581556))

(assert (= (or b!7581554 b!7581549) bm!695121))

(assert (= (or b!7581553 b!7581556) bm!695119))

(assert (= (or b!7581550 bm!695119) bm!695120))

(declare-fun m!8136004 () Bool)

(assert (=> b!7581557 m!8136004))

(declare-fun m!8136006 () Bool)

(assert (=> bm!695120 m!8136006))

(declare-fun m!8136008 () Bool)

(assert (=> bm!695121 m!8136008))

(assert (=> start!731976 d!2318483))

(declare-fun d!2318487 () Bool)

(declare-fun lostCauseFct!512 (Regex!20083) Bool)

(assert (=> d!2318487 (= (lostCause!1859 r!22341) (lostCauseFct!512 r!22341))))

(declare-fun bs!1941057 () Bool)

(assert (= bs!1941057 d!2318487))

(declare-fun m!8136010 () Bool)

(assert (=> bs!1941057 m!8136010))

(assert (=> b!7581394 d!2318487))

(declare-fun b!7581558 () Bool)

(declare-fun res!3037248 () Bool)

(declare-fun e!4512500 () Bool)

(assert (=> b!7581558 (=> (not res!3037248) (not e!4512500))))

(declare-fun call!695127 () Bool)

(assert (=> b!7581558 (= res!3037248 (not call!695127))))

(declare-fun b!7581559 () Bool)

(declare-fun res!3037245 () Bool)

(declare-fun e!4512501 () Bool)

(assert (=> b!7581559 (=> res!3037245 e!4512501)))

(assert (=> b!7581559 (= res!3037245 (not ((_ is ElementMatch!20083) r!22341)))))

(declare-fun e!4512503 () Bool)

(assert (=> b!7581559 (= e!4512503 e!4512501)))

(declare-fun b!7581560 () Bool)

(declare-fun e!4512499 () Bool)

(assert (=> b!7581560 (= e!4512499 e!4512503)))

(declare-fun c!1398437 () Bool)

(assert (=> b!7581560 (= c!1398437 ((_ is EmptyLang!20083) r!22341))))

(declare-fun b!7581561 () Bool)

(declare-fun e!4512502 () Bool)

(assert (=> b!7581561 (= e!4512502 (not (= (head!15603 s!13436) (c!1398402 r!22341))))))

(declare-fun d!2318489 () Bool)

(assert (=> d!2318489 e!4512499))

(declare-fun c!1398438 () Bool)

(assert (=> d!2318489 (= c!1398438 ((_ is EmptyExpr!20083) r!22341))))

(declare-fun lt!2652638 () Bool)

(declare-fun e!4512498 () Bool)

(assert (=> d!2318489 (= lt!2652638 e!4512498)))

(declare-fun c!1398439 () Bool)

(assert (=> d!2318489 (= c!1398439 (isEmpty!41515 s!13436))))

(assert (=> d!2318489 (validRegex!10511 r!22341)))

(assert (=> d!2318489 (= (matchR!9675 r!22341 s!13436) lt!2652638)))

(declare-fun b!7581562 () Bool)

(assert (=> b!7581562 (= e!4512503 (not lt!2652638))))

(declare-fun b!7581563 () Bool)

(declare-fun res!3037246 () Bool)

(assert (=> b!7581563 (=> res!3037246 e!4512502)))

(assert (=> b!7581563 (= res!3037246 (not (isEmpty!41515 (tail!15143 s!13436))))))

(declare-fun b!7581564 () Bool)

(declare-fun e!4512504 () Bool)

(assert (=> b!7581564 (= e!4512504 e!4512502)))

(declare-fun res!3037250 () Bool)

(assert (=> b!7581564 (=> res!3037250 e!4512502)))

(assert (=> b!7581564 (= res!3037250 call!695127)))

(declare-fun b!7581565 () Bool)

(assert (=> b!7581565 (= e!4512498 (matchR!9675 (derivativeStep!5803 r!22341 (head!15603 s!13436)) (tail!15143 s!13436)))))

(declare-fun b!7581566 () Bool)

(assert (=> b!7581566 (= e!4512500 (= (head!15603 s!13436) (c!1398402 r!22341)))))

(declare-fun b!7581567 () Bool)

(declare-fun res!3037252 () Bool)

(assert (=> b!7581567 (=> (not res!3037252) (not e!4512500))))

(assert (=> b!7581567 (= res!3037252 (isEmpty!41515 (tail!15143 s!13436)))))

(declare-fun b!7581568 () Bool)

(assert (=> b!7581568 (= e!4512498 (nullable!8776 r!22341))))

(declare-fun b!7581569 () Bool)

(assert (=> b!7581569 (= e!4512501 e!4512504)))

(declare-fun res!3037251 () Bool)

(assert (=> b!7581569 (=> (not res!3037251) (not e!4512504))))

(assert (=> b!7581569 (= res!3037251 (not lt!2652638))))

(declare-fun b!7581570 () Bool)

(declare-fun res!3037247 () Bool)

(assert (=> b!7581570 (=> res!3037247 e!4512501)))

(assert (=> b!7581570 (= res!3037247 e!4512500)))

(declare-fun res!3037249 () Bool)

(assert (=> b!7581570 (=> (not res!3037249) (not e!4512500))))

(assert (=> b!7581570 (= res!3037249 lt!2652638)))

(declare-fun bm!695122 () Bool)

(assert (=> bm!695122 (= call!695127 (isEmpty!41515 s!13436))))

(declare-fun b!7581571 () Bool)

(assert (=> b!7581571 (= e!4512499 (= lt!2652638 call!695127))))

(assert (= (and d!2318489 c!1398439) b!7581568))

(assert (= (and d!2318489 (not c!1398439)) b!7581565))

(assert (= (and d!2318489 c!1398438) b!7581571))

(assert (= (and d!2318489 (not c!1398438)) b!7581560))

(assert (= (and b!7581560 c!1398437) b!7581562))

(assert (= (and b!7581560 (not c!1398437)) b!7581559))

(assert (= (and b!7581559 (not res!3037245)) b!7581570))

(assert (= (and b!7581570 res!3037249) b!7581558))

(assert (= (and b!7581558 res!3037248) b!7581567))

(assert (= (and b!7581567 res!3037252) b!7581566))

(assert (= (and b!7581570 (not res!3037247)) b!7581569))

(assert (= (and b!7581569 res!3037251) b!7581564))

(assert (= (and b!7581564 (not res!3037250)) b!7581563))

(assert (= (and b!7581563 (not res!3037246)) b!7581561))

(assert (= (or b!7581571 b!7581558 b!7581564) bm!695122))

(assert (=> b!7581565 m!8135974))

(assert (=> b!7581565 m!8135974))

(declare-fun m!8136012 () Bool)

(assert (=> b!7581565 m!8136012))

(assert (=> b!7581565 m!8135978))

(assert (=> b!7581565 m!8136012))

(assert (=> b!7581565 m!8135978))

(declare-fun m!8136016 () Bool)

(assert (=> b!7581565 m!8136016))

(assert (=> b!7581561 m!8135974))

(assert (=> b!7581567 m!8135978))

(assert (=> b!7581567 m!8135978))

(assert (=> b!7581567 m!8135982))

(assert (=> bm!695122 m!8135936))

(assert (=> d!2318489 m!8135936))

(assert (=> d!2318489 m!8135938))

(assert (=> b!7581563 m!8135978))

(assert (=> b!7581563 m!8135978))

(assert (=> b!7581563 m!8135982))

(assert (=> b!7581566 m!8135974))

(declare-fun m!8136018 () Bool)

(assert (=> b!7581568 m!8136018))

(assert (=> b!7581397 d!2318489))

(declare-fun b!7581709 () Bool)

(assert (=> b!7581709 true))

(assert (=> b!7581709 true))

(declare-fun bs!1941061 () Bool)

(declare-fun b!7581701 () Bool)

(assert (= bs!1941061 (and b!7581701 b!7581709)))

(declare-fun lambda!466965 () Int)

(declare-fun lambda!466964 () Int)

(assert (=> bs!1941061 (not (= lambda!466965 lambda!466964))))

(assert (=> b!7581701 true))

(assert (=> b!7581701 true))

(declare-fun b!7581700 () Bool)

(declare-fun c!1398466 () Bool)

(assert (=> b!7581700 (= c!1398466 ((_ is ElementMatch!20083) r!22341))))

(declare-fun e!4512570 () Bool)

(declare-fun e!4512569 () Bool)

(assert (=> b!7581700 (= e!4512570 e!4512569)))

(declare-fun e!4512567 () Bool)

(declare-fun call!695139 () Bool)

(assert (=> b!7581701 (= e!4512567 call!695139)))

(declare-fun b!7581702 () Bool)

(declare-fun res!3037297 () Bool)

(declare-fun e!4512566 () Bool)

(assert (=> b!7581702 (=> res!3037297 e!4512566)))

(declare-fun call!695140 () Bool)

(assert (=> b!7581702 (= res!3037297 call!695140)))

(assert (=> b!7581702 (= e!4512567 e!4512566)))

(declare-fun b!7581703 () Bool)

(declare-fun c!1398465 () Bool)

(assert (=> b!7581703 (= c!1398465 ((_ is Union!20083) r!22341))))

(declare-fun e!4512565 () Bool)

(assert (=> b!7581703 (= e!4512569 e!4512565)))

(declare-fun bm!695134 () Bool)

(assert (=> bm!695134 (= call!695140 (isEmpty!41515 s!13436))))

(declare-fun b!7581704 () Bool)

(declare-fun e!4512568 () Bool)

(assert (=> b!7581704 (= e!4512565 e!4512568)))

(declare-fun res!3037296 () Bool)

(assert (=> b!7581704 (= res!3037296 (matchRSpec!4396 (regOne!40679 r!22341) s!13436))))

(assert (=> b!7581704 (=> res!3037296 e!4512568)))

(declare-fun b!7581705 () Bool)

(declare-fun e!4512571 () Bool)

(assert (=> b!7581705 (= e!4512571 e!4512570)))

(declare-fun res!3037298 () Bool)

(assert (=> b!7581705 (= res!3037298 (not ((_ is EmptyLang!20083) r!22341)))))

(assert (=> b!7581705 (=> (not res!3037298) (not e!4512570))))

(declare-fun c!1398463 () Bool)

(declare-fun bm!695135 () Bool)

(declare-fun Exists!4317 (Int) Bool)

(assert (=> bm!695135 (= call!695139 (Exists!4317 (ite c!1398463 lambda!466964 lambda!466965)))))

(declare-fun d!2318493 () Bool)

(declare-fun c!1398464 () Bool)

(assert (=> d!2318493 (= c!1398464 ((_ is EmptyExpr!20083) r!22341))))

(assert (=> d!2318493 (= (matchRSpec!4396 r!22341 s!13436) e!4512571)))

(declare-fun b!7581706 () Bool)

(assert (=> b!7581706 (= e!4512568 (matchRSpec!4396 (regTwo!40679 r!22341) s!13436))))

(declare-fun b!7581707 () Bool)

(assert (=> b!7581707 (= e!4512565 e!4512567)))

(assert (=> b!7581707 (= c!1398463 ((_ is Star!20083) r!22341))))

(declare-fun b!7581708 () Bool)

(assert (=> b!7581708 (= e!4512569 (= s!13436 (Cons!72842 (c!1398402 r!22341) Nil!72842)))))

(assert (=> b!7581709 (= e!4512566 call!695139)))

(declare-fun b!7581710 () Bool)

(assert (=> b!7581710 (= e!4512571 call!695140)))

(assert (= (and d!2318493 c!1398464) b!7581710))

(assert (= (and d!2318493 (not c!1398464)) b!7581705))

(assert (= (and b!7581705 res!3037298) b!7581700))

(assert (= (and b!7581700 c!1398466) b!7581708))

(assert (= (and b!7581700 (not c!1398466)) b!7581703))

(assert (= (and b!7581703 c!1398465) b!7581704))

(assert (= (and b!7581703 (not c!1398465)) b!7581707))

(assert (= (and b!7581704 (not res!3037296)) b!7581706))

(assert (= (and b!7581707 c!1398463) b!7581702))

(assert (= (and b!7581707 (not c!1398463)) b!7581701))

(assert (= (and b!7581702 (not res!3037297)) b!7581709))

(assert (= (or b!7581709 b!7581701) bm!695135))

(assert (= (or b!7581710 b!7581702) bm!695134))

(assert (=> bm!695134 m!8135936))

(declare-fun m!8136034 () Bool)

(assert (=> b!7581704 m!8136034))

(declare-fun m!8136036 () Bool)

(assert (=> bm!695135 m!8136036))

(declare-fun m!8136038 () Bool)

(assert (=> b!7581706 m!8136038))

(assert (=> b!7581397 d!2318493))

(declare-fun d!2318499 () Bool)

(assert (=> d!2318499 (= (matchR!9675 r!22341 s!13436) (matchRSpec!4396 r!22341 s!13436))))

(declare-fun lt!2652648 () Unit!167122)

(declare-fun choose!58614 (Regex!20083 List!72966) Unit!167122)

(assert (=> d!2318499 (= lt!2652648 (choose!58614 r!22341 s!13436))))

(assert (=> d!2318499 (validRegex!10511 r!22341)))

(assert (=> d!2318499 (= (mainMatchTheorem!4390 r!22341 s!13436) lt!2652648)))

(declare-fun bs!1941062 () Bool)

(assert (= bs!1941062 d!2318499))

(assert (=> bs!1941062 m!8135946))

(assert (=> bs!1941062 m!8135948))

(declare-fun m!8136040 () Bool)

(assert (=> bs!1941062 m!8136040))

(assert (=> bs!1941062 m!8135938))

(assert (=> b!7581397 d!2318499))

(declare-fun b!7581726 () Bool)

(declare-fun e!4512574 () Bool)

(declare-fun tp!2209454 () Bool)

(declare-fun tp!2209456 () Bool)

(assert (=> b!7581726 (= e!4512574 (and tp!2209454 tp!2209456))))

(declare-fun b!7581727 () Bool)

(declare-fun tp!2209455 () Bool)

(assert (=> b!7581727 (= e!4512574 tp!2209455)))

(declare-fun b!7581728 () Bool)

(declare-fun tp!2209458 () Bool)

(declare-fun tp!2209457 () Bool)

(assert (=> b!7581728 (= e!4512574 (and tp!2209458 tp!2209457))))

(declare-fun b!7581725 () Bool)

(assert (=> b!7581725 (= e!4512574 tp_is_empty!50521)))

(assert (=> b!7581396 (= tp!2209401 e!4512574)))

(assert (= (and b!7581396 ((_ is ElementMatch!20083) (regOne!40678 r!22341))) b!7581725))

(assert (= (and b!7581396 ((_ is Concat!28928) (regOne!40678 r!22341))) b!7581726))

(assert (= (and b!7581396 ((_ is Star!20083) (regOne!40678 r!22341))) b!7581727))

(assert (= (and b!7581396 ((_ is Union!20083) (regOne!40678 r!22341))) b!7581728))

(declare-fun b!7581730 () Bool)

(declare-fun e!4512575 () Bool)

(declare-fun tp!2209459 () Bool)

(declare-fun tp!2209461 () Bool)

(assert (=> b!7581730 (= e!4512575 (and tp!2209459 tp!2209461))))

(declare-fun b!7581731 () Bool)

(declare-fun tp!2209460 () Bool)

(assert (=> b!7581731 (= e!4512575 tp!2209460)))

(declare-fun b!7581732 () Bool)

(declare-fun tp!2209463 () Bool)

(declare-fun tp!2209462 () Bool)

(assert (=> b!7581732 (= e!4512575 (and tp!2209463 tp!2209462))))

(declare-fun b!7581729 () Bool)

(assert (=> b!7581729 (= e!4512575 tp_is_empty!50521)))

(assert (=> b!7581396 (= tp!2209405 e!4512575)))

(assert (= (and b!7581396 ((_ is ElementMatch!20083) (regTwo!40678 r!22341))) b!7581729))

(assert (= (and b!7581396 ((_ is Concat!28928) (regTwo!40678 r!22341))) b!7581730))

(assert (= (and b!7581396 ((_ is Star!20083) (regTwo!40678 r!22341))) b!7581731))

(assert (= (and b!7581396 ((_ is Union!20083) (regTwo!40678 r!22341))) b!7581732))

(declare-fun b!7581734 () Bool)

(declare-fun e!4512576 () Bool)

(declare-fun tp!2209464 () Bool)

(declare-fun tp!2209466 () Bool)

(assert (=> b!7581734 (= e!4512576 (and tp!2209464 tp!2209466))))

(declare-fun b!7581735 () Bool)

(declare-fun tp!2209465 () Bool)

(assert (=> b!7581735 (= e!4512576 tp!2209465)))

(declare-fun b!7581736 () Bool)

(declare-fun tp!2209468 () Bool)

(declare-fun tp!2209467 () Bool)

(assert (=> b!7581736 (= e!4512576 (and tp!2209468 tp!2209467))))

(declare-fun b!7581733 () Bool)

(assert (=> b!7581733 (= e!4512576 tp_is_empty!50521)))

(assert (=> b!7581400 (= tp!2209404 e!4512576)))

(assert (= (and b!7581400 ((_ is ElementMatch!20083) (reg!20412 r!22341))) b!7581733))

(assert (= (and b!7581400 ((_ is Concat!28928) (reg!20412 r!22341))) b!7581734))

(assert (= (and b!7581400 ((_ is Star!20083) (reg!20412 r!22341))) b!7581735))

(assert (= (and b!7581400 ((_ is Union!20083) (reg!20412 r!22341))) b!7581736))

(declare-fun b!7581738 () Bool)

(declare-fun e!4512577 () Bool)

(declare-fun tp!2209469 () Bool)

(declare-fun tp!2209471 () Bool)

(assert (=> b!7581738 (= e!4512577 (and tp!2209469 tp!2209471))))

(declare-fun b!7581739 () Bool)

(declare-fun tp!2209470 () Bool)

(assert (=> b!7581739 (= e!4512577 tp!2209470)))

(declare-fun b!7581740 () Bool)

(declare-fun tp!2209473 () Bool)

(declare-fun tp!2209472 () Bool)

(assert (=> b!7581740 (= e!4512577 (and tp!2209473 tp!2209472))))

(declare-fun b!7581737 () Bool)

(assert (=> b!7581737 (= e!4512577 tp_is_empty!50521)))

(assert (=> b!7581395 (= tp!2209403 e!4512577)))

(assert (= (and b!7581395 ((_ is ElementMatch!20083) (regOne!40679 r!22341))) b!7581737))

(assert (= (and b!7581395 ((_ is Concat!28928) (regOne!40679 r!22341))) b!7581738))

(assert (= (and b!7581395 ((_ is Star!20083) (regOne!40679 r!22341))) b!7581739))

(assert (= (and b!7581395 ((_ is Union!20083) (regOne!40679 r!22341))) b!7581740))

(declare-fun b!7581742 () Bool)

(declare-fun e!4512578 () Bool)

(declare-fun tp!2209474 () Bool)

(declare-fun tp!2209476 () Bool)

(assert (=> b!7581742 (= e!4512578 (and tp!2209474 tp!2209476))))

(declare-fun b!7581743 () Bool)

(declare-fun tp!2209475 () Bool)

(assert (=> b!7581743 (= e!4512578 tp!2209475)))

(declare-fun b!7581744 () Bool)

(declare-fun tp!2209478 () Bool)

(declare-fun tp!2209477 () Bool)

(assert (=> b!7581744 (= e!4512578 (and tp!2209478 tp!2209477))))

(declare-fun b!7581741 () Bool)

(assert (=> b!7581741 (= e!4512578 tp_is_empty!50521)))

(assert (=> b!7581395 (= tp!2209400 e!4512578)))

(assert (= (and b!7581395 ((_ is ElementMatch!20083) (regTwo!40679 r!22341))) b!7581741))

(assert (= (and b!7581395 ((_ is Concat!28928) (regTwo!40679 r!22341))) b!7581742))

(assert (= (and b!7581395 ((_ is Star!20083) (regTwo!40679 r!22341))) b!7581743))

(assert (= (and b!7581395 ((_ is Union!20083) (regTwo!40679 r!22341))) b!7581744))

(declare-fun b!7581749 () Bool)

(declare-fun e!4512581 () Bool)

(declare-fun tp!2209481 () Bool)

(assert (=> b!7581749 (= e!4512581 (and tp_is_empty!50521 tp!2209481))))

(assert (=> b!7581399 (= tp!2209402 e!4512581)))

(assert (= (and b!7581399 ((_ is Cons!72842) (t!387701 s!13436))) b!7581749))

(check-sat (not b!7581529) (not b!7581524) (not bm!695117) (not bm!695106) (not d!2318479) (not bm!695120) (not b!7581565) (not b!7581731) (not b!7581566) (not bm!695135) (not b!7581557) (not b!7581740) (not b!7581567) (not bm!695134) (not b!7581749) (not b!7581743) (not b!7581739) (not b!7581744) (not b!7581736) tp_is_empty!50521 (not b!7581735) (not bm!695105) (not b!7581568) (not b!7581706) (not b!7581730) (not b!7581704) (not b!7581526) (not b!7581726) (not b!7581563) (not bm!695122) (not d!2318489) (not b!7581738) (not d!2318499) (not b!7581531) (not b!7581727) (not b!7581530) (not d!2318473) (not b!7581446) (not b!7581742) (not b!7581732) (not b!7581561) (not b!7581734) (not b!7581728) (not d!2318487) (not bm!695121) (not b!7581528))
(check-sat)
