; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718956 () Bool)

(assert start!718956)

(declare-fun b!7364403 () Bool)

(declare-fun e!4409144 () Bool)

(declare-fun tp!2092947 () Bool)

(assert (=> b!7364403 (= e!4409144 tp!2092947)))

(declare-fun b!7364404 () Bool)

(declare-fun e!4409142 () Bool)

(declare-fun e!4409145 () Bool)

(assert (=> b!7364404 (= e!4409142 e!4409145)))

(declare-fun res!2972542 () Bool)

(assert (=> b!7364404 (=> (not res!2972542) (not e!4409145))))

(declare-datatypes ((C!38776 0))(
  ( (C!38777 (val!29748 Int)) )
))
(declare-datatypes ((Regex!19251 0))(
  ( (ElementMatch!19251 (c!1368433 C!38776)) (Concat!28096 (regOne!39014 Regex!19251) (regTwo!39014 Regex!19251)) (EmptyExpr!19251) (Star!19251 (reg!19580 Regex!19251)) (EmptyLang!19251) (Union!19251 (regOne!39015 Regex!19251) (regTwo!39015 Regex!19251)) )
))
(declare-datatypes ((List!71747 0))(
  ( (Nil!71623) (Cons!71623 (h!78071 Regex!19251) (t!386196 List!71747)) )
))
(declare-datatypes ((Context!16382 0))(
  ( (Context!16383 (exprs!8691 List!71747)) )
))
(declare-fun cWitness!61 () Context!16382)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2614587 () (InoxSet Context!16382))

(assert (=> b!7364404 (= res!2972542 (select lt!2614587 cWitness!61))))

(declare-fun r1!2370 () Regex!19251)

(declare-fun ct1!282 () Context!16382)

(declare-fun c!10362 () C!38776)

(declare-fun derivationStepZipperDown!3077 (Regex!19251 Context!16382 C!38776) (InoxSet Context!16382))

(assert (=> b!7364404 (= lt!2614587 (derivationStepZipperDown!3077 r1!2370 ct1!282 c!10362))))

(declare-fun b!7364405 () Bool)

(declare-fun tp!2092944 () Bool)

(declare-fun tp!2092950 () Bool)

(assert (=> b!7364405 (= e!4409144 (and tp!2092944 tp!2092950))))

(declare-fun b!7364406 () Bool)

(declare-fun e!4409146 () Bool)

(declare-fun tp!2092951 () Bool)

(assert (=> b!7364406 (= e!4409146 tp!2092951)))

(declare-fun b!7364407 () Bool)

(declare-fun res!2972539 () Bool)

(declare-fun e!4409141 () Bool)

(assert (=> b!7364407 (=> (not res!2972539) (not e!4409141))))

(declare-fun validRegex!9847 (Regex!19251) Bool)

(assert (=> b!7364407 (= res!2972539 (validRegex!9847 (regTwo!39015 r1!2370)))))

(declare-fun b!7364408 () Bool)

(declare-fun e!4409143 () Bool)

(declare-fun tp!2092946 () Bool)

(assert (=> b!7364408 (= e!4409143 tp!2092946)))

(declare-fun b!7364409 () Bool)

(declare-fun tp_is_empty!48747 () Bool)

(assert (=> b!7364409 (= e!4409144 tp_is_empty!48747)))

(declare-fun res!2972537 () Bool)

(assert (=> start!718956 (=> (not res!2972537) (not e!4409142))))

(assert (=> start!718956 (= res!2972537 (validRegex!9847 r1!2370))))

(assert (=> start!718956 e!4409142))

(assert (=> start!718956 tp_is_empty!48747))

(declare-fun inv!91467 (Context!16382) Bool)

(assert (=> start!718956 (and (inv!91467 cWitness!61) e!4409143)))

(declare-fun e!4409148 () Bool)

(assert (=> start!718956 (and (inv!91467 ct1!282) e!4409148)))

(assert (=> start!718956 e!4409144))

(declare-fun ct2!378 () Context!16382)

(assert (=> start!718956 (and (inv!91467 ct2!378) e!4409146)))

(declare-fun b!7364410 () Bool)

(declare-fun tp!2092949 () Bool)

(assert (=> b!7364410 (= e!4409148 tp!2092949)))

(declare-fun b!7364411 () Bool)

(declare-fun regexDepth!437 (Regex!19251) Int)

(assert (=> b!7364411 (= e!4409141 (>= (regexDepth!437 (regTwo!39015 r1!2370)) (regexDepth!437 r1!2370)))))

(declare-fun b!7364412 () Bool)

(declare-fun tp!2092948 () Bool)

(declare-fun tp!2092945 () Bool)

(assert (=> b!7364412 (= e!4409144 (and tp!2092948 tp!2092945))))

(declare-fun b!7364413 () Bool)

(declare-fun e!4409147 () Bool)

(assert (=> b!7364413 (= e!4409145 e!4409147)))

(declare-fun res!2972541 () Bool)

(assert (=> b!7364413 (=> (not res!2972541) (not e!4409147))))

(get-info :version)

(assert (=> b!7364413 (= res!2972541 (and (or (not ((_ is ElementMatch!19251) r1!2370)) (not (= c!10362 (c!1368433 r1!2370)))) ((_ is Union!19251) r1!2370)))))

(declare-fun lt!2614588 () (InoxSet Context!16382))

(declare-fun ++!17067 (List!71747 List!71747) List!71747)

(assert (=> b!7364413 (= lt!2614588 (derivationStepZipperDown!3077 r1!2370 (Context!16383 (++!17067 (exprs!8691 ct1!282) (exprs!8691 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165451 0))(
  ( (Unit!165452) )
))
(declare-fun lt!2614585 () Unit!165451)

(declare-fun lambda!457625 () Int)

(declare-fun lemmaConcatPreservesForall!1924 (List!71747 List!71747 Int) Unit!165451)

(assert (=> b!7364413 (= lt!2614585 (lemmaConcatPreservesForall!1924 (exprs!8691 ct1!282) (exprs!8691 ct2!378) lambda!457625))))

(declare-fun b!7364414 () Bool)

(declare-fun res!2972538 () Bool)

(assert (=> b!7364414 (=> (not res!2972538) (not e!4409141))))

(declare-fun lt!2614589 () (InoxSet Context!16382))

(assert (=> b!7364414 (= res!2972538 (select lt!2614589 cWitness!61))))

(declare-fun b!7364415 () Bool)

(assert (=> b!7364415 (= e!4409147 e!4409141)))

(declare-fun res!2972540 () Bool)

(assert (=> b!7364415 (=> (not res!2972540) (not e!4409141))))

(declare-fun lt!2614586 () (InoxSet Context!16382))

(assert (=> b!7364415 (= res!2972540 (and (= lt!2614587 ((_ map or) lt!2614586 lt!2614589)) (not (select lt!2614586 cWitness!61))))))

(assert (=> b!7364415 (= lt!2614589 (derivationStepZipperDown!3077 (regTwo!39015 r1!2370) ct1!282 c!10362))))

(assert (=> b!7364415 (= lt!2614586 (derivationStepZipperDown!3077 (regOne!39015 r1!2370) ct1!282 c!10362))))

(assert (= (and start!718956 res!2972537) b!7364404))

(assert (= (and b!7364404 res!2972542) b!7364413))

(assert (= (and b!7364413 res!2972541) b!7364415))

(assert (= (and b!7364415 res!2972540) b!7364407))

(assert (= (and b!7364407 res!2972539) b!7364414))

(assert (= (and b!7364414 res!2972538) b!7364411))

(assert (= start!718956 b!7364408))

(assert (= start!718956 b!7364410))

(assert (= (and start!718956 ((_ is ElementMatch!19251) r1!2370)) b!7364409))

(assert (= (and start!718956 ((_ is Concat!28096) r1!2370)) b!7364412))

(assert (= (and start!718956 ((_ is Star!19251) r1!2370)) b!7364403))

(assert (= (and start!718956 ((_ is Union!19251) r1!2370)) b!7364405))

(assert (= start!718956 b!7364406))

(declare-fun m!8020626 () Bool)

(assert (=> b!7364407 m!8020626))

(declare-fun m!8020628 () Bool)

(assert (=> b!7364415 m!8020628))

(declare-fun m!8020630 () Bool)

(assert (=> b!7364415 m!8020630))

(declare-fun m!8020632 () Bool)

(assert (=> b!7364415 m!8020632))

(declare-fun m!8020634 () Bool)

(assert (=> start!718956 m!8020634))

(declare-fun m!8020636 () Bool)

(assert (=> start!718956 m!8020636))

(declare-fun m!8020638 () Bool)

(assert (=> start!718956 m!8020638))

(declare-fun m!8020640 () Bool)

(assert (=> start!718956 m!8020640))

(declare-fun m!8020642 () Bool)

(assert (=> b!7364413 m!8020642))

(declare-fun m!8020644 () Bool)

(assert (=> b!7364413 m!8020644))

(declare-fun m!8020646 () Bool)

(assert (=> b!7364413 m!8020646))

(declare-fun m!8020648 () Bool)

(assert (=> b!7364404 m!8020648))

(declare-fun m!8020650 () Bool)

(assert (=> b!7364404 m!8020650))

(declare-fun m!8020652 () Bool)

(assert (=> b!7364411 m!8020652))

(declare-fun m!8020654 () Bool)

(assert (=> b!7364411 m!8020654))

(declare-fun m!8020656 () Bool)

(assert (=> b!7364414 m!8020656))

(check-sat (not b!7364408) (not start!718956) (not b!7364412) (not b!7364406) (not b!7364403) (not b!7364410) (not b!7364413) (not b!7364405) tp_is_empty!48747 (not b!7364415) (not b!7364411) (not b!7364407) (not b!7364404))
(check-sat)
(get-model)

(declare-fun d!2282556 () Bool)

(declare-fun c!1368452 () Bool)

(assert (=> d!2282556 (= c!1368452 (and ((_ is ElementMatch!19251) (regTwo!39015 r1!2370)) (= (c!1368433 (regTwo!39015 r1!2370)) c!10362)))))

(declare-fun e!4409176 () (InoxSet Context!16382))

(assert (=> d!2282556 (= (derivationStepZipperDown!3077 (regTwo!39015 r1!2370) ct1!282 c!10362) e!4409176)))

(declare-fun c!1368451 () Bool)

(declare-fun call!675377 () List!71747)

(declare-fun c!1368449 () Bool)

(declare-fun c!1368448 () Bool)

(declare-fun call!675378 () (InoxSet Context!16382))

(declare-fun bm!675369 () Bool)

(assert (=> bm!675369 (= call!675378 (derivationStepZipperDown!3077 (ite c!1368449 (regTwo!39015 (regTwo!39015 r1!2370)) (ite c!1368448 (regTwo!39014 (regTwo!39015 r1!2370)) (ite c!1368451 (regOne!39014 (regTwo!39015 r1!2370)) (reg!19580 (regTwo!39015 r1!2370))))) (ite (or c!1368449 c!1368448) ct1!282 (Context!16383 call!675377)) c!10362))))

(declare-fun bm!675370 () Bool)

(declare-fun call!675374 () (InoxSet Context!16382))

(assert (=> bm!675370 (= call!675374 call!675378)))

(declare-fun bm!675371 () Bool)

(declare-fun call!675379 () List!71747)

(assert (=> bm!675371 (= call!675377 call!675379)))

(declare-fun bm!675372 () Bool)

(declare-fun call!675376 () (InoxSet Context!16382))

(assert (=> bm!675372 (= call!675376 call!675374)))

(declare-fun b!7364456 () Bool)

(declare-fun e!4409180 () Bool)

(assert (=> b!7364456 (= c!1368448 e!4409180)))

(declare-fun res!2972555 () Bool)

(assert (=> b!7364456 (=> (not res!2972555) (not e!4409180))))

(assert (=> b!7364456 (= res!2972555 ((_ is Concat!28096) (regTwo!39015 r1!2370)))))

(declare-fun e!4409178 () (InoxSet Context!16382))

(declare-fun e!4409179 () (InoxSet Context!16382))

(assert (=> b!7364456 (= e!4409178 e!4409179)))

(declare-fun b!7364457 () Bool)

(assert (=> b!7364457 (= e!4409176 (store ((as const (Array Context!16382 Bool)) false) ct1!282 true))))

(declare-fun b!7364458 () Bool)

(declare-fun nullable!8328 (Regex!19251) Bool)

(assert (=> b!7364458 (= e!4409180 (nullable!8328 (regOne!39014 (regTwo!39015 r1!2370))))))

(declare-fun b!7364459 () Bool)

(declare-fun call!675375 () (InoxSet Context!16382))

(assert (=> b!7364459 (= e!4409178 ((_ map or) call!675375 call!675378))))

(declare-fun b!7364460 () Bool)

(declare-fun c!1368450 () Bool)

(assert (=> b!7364460 (= c!1368450 ((_ is Star!19251) (regTwo!39015 r1!2370)))))

(declare-fun e!4409177 () (InoxSet Context!16382))

(declare-fun e!4409175 () (InoxSet Context!16382))

(assert (=> b!7364460 (= e!4409177 e!4409175)))

(declare-fun b!7364461 () Bool)

(assert (=> b!7364461 (= e!4409176 e!4409178)))

(assert (=> b!7364461 (= c!1368449 ((_ is Union!19251) (regTwo!39015 r1!2370)))))

(declare-fun b!7364462 () Bool)

(assert (=> b!7364462 (= e!4409179 e!4409177)))

(assert (=> b!7364462 (= c!1368451 ((_ is Concat!28096) (regTwo!39015 r1!2370)))))

(declare-fun bm!675373 () Bool)

(declare-fun $colon$colon!3234 (List!71747 Regex!19251) List!71747)

(assert (=> bm!675373 (= call!675379 ($colon$colon!3234 (exprs!8691 ct1!282) (ite (or c!1368448 c!1368451) (regTwo!39014 (regTwo!39015 r1!2370)) (regTwo!39015 r1!2370))))))

(declare-fun b!7364463 () Bool)

(assert (=> b!7364463 (= e!4409175 ((as const (Array Context!16382 Bool)) false))))

(declare-fun bm!675374 () Bool)

(assert (=> bm!675374 (= call!675375 (derivationStepZipperDown!3077 (ite c!1368449 (regOne!39015 (regTwo!39015 r1!2370)) (regOne!39014 (regTwo!39015 r1!2370))) (ite c!1368449 ct1!282 (Context!16383 call!675379)) c!10362))))

(declare-fun b!7364464 () Bool)

(assert (=> b!7364464 (= e!4409175 call!675376)))

(declare-fun b!7364465 () Bool)

(assert (=> b!7364465 (= e!4409179 ((_ map or) call!675375 call!675374))))

(declare-fun b!7364466 () Bool)

(assert (=> b!7364466 (= e!4409177 call!675376)))

(assert (= (and d!2282556 c!1368452) b!7364457))

(assert (= (and d!2282556 (not c!1368452)) b!7364461))

(assert (= (and b!7364461 c!1368449) b!7364459))

(assert (= (and b!7364461 (not c!1368449)) b!7364456))

(assert (= (and b!7364456 res!2972555) b!7364458))

(assert (= (and b!7364456 c!1368448) b!7364465))

(assert (= (and b!7364456 (not c!1368448)) b!7364462))

(assert (= (and b!7364462 c!1368451) b!7364466))

(assert (= (and b!7364462 (not c!1368451)) b!7364460))

(assert (= (and b!7364460 c!1368450) b!7364464))

(assert (= (and b!7364460 (not c!1368450)) b!7364463))

(assert (= (or b!7364466 b!7364464) bm!675371))

(assert (= (or b!7364466 b!7364464) bm!675372))

(assert (= (or b!7364465 bm!675372) bm!675370))

(assert (= (or b!7364465 bm!675371) bm!675373))

(assert (= (or b!7364459 bm!675370) bm!675369))

(assert (= (or b!7364459 b!7364465) bm!675374))

(declare-fun m!8020658 () Bool)

(assert (=> b!7364457 m!8020658))

(declare-fun m!8020660 () Bool)

(assert (=> bm!675369 m!8020660))

(declare-fun m!8020662 () Bool)

(assert (=> b!7364458 m!8020662))

(declare-fun m!8020664 () Bool)

(assert (=> bm!675374 m!8020664))

(declare-fun m!8020666 () Bool)

(assert (=> bm!675373 m!8020666))

(assert (=> b!7364415 d!2282556))

(declare-fun d!2282560 () Bool)

(declare-fun c!1368457 () Bool)

(assert (=> d!2282560 (= c!1368457 (and ((_ is ElementMatch!19251) (regOne!39015 r1!2370)) (= (c!1368433 (regOne!39015 r1!2370)) c!10362)))))

(declare-fun e!4409182 () (InoxSet Context!16382))

(assert (=> d!2282560 (= (derivationStepZipperDown!3077 (regOne!39015 r1!2370) ct1!282 c!10362) e!4409182)))

(declare-fun c!1368456 () Bool)

(declare-fun call!675383 () List!71747)

(declare-fun call!675384 () (InoxSet Context!16382))

(declare-fun c!1368453 () Bool)

(declare-fun bm!675375 () Bool)

(declare-fun c!1368454 () Bool)

(assert (=> bm!675375 (= call!675384 (derivationStepZipperDown!3077 (ite c!1368454 (regTwo!39015 (regOne!39015 r1!2370)) (ite c!1368453 (regTwo!39014 (regOne!39015 r1!2370)) (ite c!1368456 (regOne!39014 (regOne!39015 r1!2370)) (reg!19580 (regOne!39015 r1!2370))))) (ite (or c!1368454 c!1368453) ct1!282 (Context!16383 call!675383)) c!10362))))

(declare-fun bm!675376 () Bool)

(declare-fun call!675380 () (InoxSet Context!16382))

(assert (=> bm!675376 (= call!675380 call!675384)))

(declare-fun bm!675377 () Bool)

(declare-fun call!675385 () List!71747)

(assert (=> bm!675377 (= call!675383 call!675385)))

(declare-fun bm!675378 () Bool)

(declare-fun call!675382 () (InoxSet Context!16382))

(assert (=> bm!675378 (= call!675382 call!675380)))

(declare-fun b!7364467 () Bool)

(declare-fun e!4409186 () Bool)

(assert (=> b!7364467 (= c!1368453 e!4409186)))

(declare-fun res!2972556 () Bool)

(assert (=> b!7364467 (=> (not res!2972556) (not e!4409186))))

(assert (=> b!7364467 (= res!2972556 ((_ is Concat!28096) (regOne!39015 r1!2370)))))

(declare-fun e!4409184 () (InoxSet Context!16382))

(declare-fun e!4409185 () (InoxSet Context!16382))

(assert (=> b!7364467 (= e!4409184 e!4409185)))

(declare-fun b!7364468 () Bool)

(assert (=> b!7364468 (= e!4409182 (store ((as const (Array Context!16382 Bool)) false) ct1!282 true))))

(declare-fun b!7364469 () Bool)

(assert (=> b!7364469 (= e!4409186 (nullable!8328 (regOne!39014 (regOne!39015 r1!2370))))))

(declare-fun b!7364470 () Bool)

(declare-fun call!675381 () (InoxSet Context!16382))

(assert (=> b!7364470 (= e!4409184 ((_ map or) call!675381 call!675384))))

(declare-fun b!7364471 () Bool)

(declare-fun c!1368455 () Bool)

(assert (=> b!7364471 (= c!1368455 ((_ is Star!19251) (regOne!39015 r1!2370)))))

(declare-fun e!4409183 () (InoxSet Context!16382))

(declare-fun e!4409181 () (InoxSet Context!16382))

(assert (=> b!7364471 (= e!4409183 e!4409181)))

(declare-fun b!7364472 () Bool)

(assert (=> b!7364472 (= e!4409182 e!4409184)))

(assert (=> b!7364472 (= c!1368454 ((_ is Union!19251) (regOne!39015 r1!2370)))))

(declare-fun b!7364473 () Bool)

(assert (=> b!7364473 (= e!4409185 e!4409183)))

(assert (=> b!7364473 (= c!1368456 ((_ is Concat!28096) (regOne!39015 r1!2370)))))

(declare-fun bm!675379 () Bool)

(assert (=> bm!675379 (= call!675385 ($colon$colon!3234 (exprs!8691 ct1!282) (ite (or c!1368453 c!1368456) (regTwo!39014 (regOne!39015 r1!2370)) (regOne!39015 r1!2370))))))

(declare-fun b!7364474 () Bool)

(assert (=> b!7364474 (= e!4409181 ((as const (Array Context!16382 Bool)) false))))

(declare-fun bm!675380 () Bool)

(assert (=> bm!675380 (= call!675381 (derivationStepZipperDown!3077 (ite c!1368454 (regOne!39015 (regOne!39015 r1!2370)) (regOne!39014 (regOne!39015 r1!2370))) (ite c!1368454 ct1!282 (Context!16383 call!675385)) c!10362))))

(declare-fun b!7364475 () Bool)

(assert (=> b!7364475 (= e!4409181 call!675382)))

(declare-fun b!7364476 () Bool)

(assert (=> b!7364476 (= e!4409185 ((_ map or) call!675381 call!675380))))

(declare-fun b!7364477 () Bool)

(assert (=> b!7364477 (= e!4409183 call!675382)))

(assert (= (and d!2282560 c!1368457) b!7364468))

(assert (= (and d!2282560 (not c!1368457)) b!7364472))

(assert (= (and b!7364472 c!1368454) b!7364470))

(assert (= (and b!7364472 (not c!1368454)) b!7364467))

(assert (= (and b!7364467 res!2972556) b!7364469))

(assert (= (and b!7364467 c!1368453) b!7364476))

(assert (= (and b!7364467 (not c!1368453)) b!7364473))

(assert (= (and b!7364473 c!1368456) b!7364477))

(assert (= (and b!7364473 (not c!1368456)) b!7364471))

(assert (= (and b!7364471 c!1368455) b!7364475))

(assert (= (and b!7364471 (not c!1368455)) b!7364474))

(assert (= (or b!7364477 b!7364475) bm!675377))

(assert (= (or b!7364477 b!7364475) bm!675378))

(assert (= (or b!7364476 bm!675378) bm!675376))

(assert (= (or b!7364476 bm!675377) bm!675379))

(assert (= (or b!7364470 bm!675376) bm!675375))

(assert (= (or b!7364470 b!7364476) bm!675380))

(assert (=> b!7364468 m!8020658))

(declare-fun m!8020668 () Bool)

(assert (=> bm!675375 m!8020668))

(declare-fun m!8020670 () Bool)

(assert (=> b!7364469 m!8020670))

(declare-fun m!8020672 () Bool)

(assert (=> bm!675380 m!8020672))

(declare-fun m!8020674 () Bool)

(assert (=> bm!675379 m!8020674))

(assert (=> b!7364415 d!2282560))

(declare-fun d!2282562 () Bool)

(declare-fun c!1368464 () Bool)

(assert (=> d!2282562 (= c!1368464 (and ((_ is ElementMatch!19251) r1!2370) (= (c!1368433 r1!2370) c!10362)))))

(declare-fun e!4409195 () (InoxSet Context!16382))

(assert (=> d!2282562 (= (derivationStepZipperDown!3077 r1!2370 ct1!282 c!10362) e!4409195)))

(declare-fun c!1368460 () Bool)

(declare-fun c!1368461 () Bool)

(declare-fun c!1368463 () Bool)

(declare-fun call!675393 () (InoxSet Context!16382))

(declare-fun call!675392 () List!71747)

(declare-fun bm!675384 () Bool)

(assert (=> bm!675384 (= call!675393 (derivationStepZipperDown!3077 (ite c!1368461 (regTwo!39015 r1!2370) (ite c!1368460 (regTwo!39014 r1!2370) (ite c!1368463 (regOne!39014 r1!2370) (reg!19580 r1!2370)))) (ite (or c!1368461 c!1368460) ct1!282 (Context!16383 call!675392)) c!10362))))

(declare-fun bm!675385 () Bool)

(declare-fun call!675389 () (InoxSet Context!16382))

(assert (=> bm!675385 (= call!675389 call!675393)))

(declare-fun bm!675386 () Bool)

(declare-fun call!675394 () List!71747)

(assert (=> bm!675386 (= call!675392 call!675394)))

(declare-fun bm!675387 () Bool)

(declare-fun call!675391 () (InoxSet Context!16382))

(assert (=> bm!675387 (= call!675391 call!675389)))

(declare-fun b!7364487 () Bool)

(declare-fun e!4409199 () Bool)

(assert (=> b!7364487 (= c!1368460 e!4409199)))

(declare-fun res!2972562 () Bool)

(assert (=> b!7364487 (=> (not res!2972562) (not e!4409199))))

(assert (=> b!7364487 (= res!2972562 ((_ is Concat!28096) r1!2370))))

(declare-fun e!4409197 () (InoxSet Context!16382))

(declare-fun e!4409198 () (InoxSet Context!16382))

(assert (=> b!7364487 (= e!4409197 e!4409198)))

(declare-fun b!7364488 () Bool)

(assert (=> b!7364488 (= e!4409195 (store ((as const (Array Context!16382 Bool)) false) ct1!282 true))))

(declare-fun b!7364489 () Bool)

(assert (=> b!7364489 (= e!4409199 (nullable!8328 (regOne!39014 r1!2370)))))

(declare-fun b!7364490 () Bool)

(declare-fun call!675390 () (InoxSet Context!16382))

(assert (=> b!7364490 (= e!4409197 ((_ map or) call!675390 call!675393))))

(declare-fun b!7364491 () Bool)

(declare-fun c!1368462 () Bool)

(assert (=> b!7364491 (= c!1368462 ((_ is Star!19251) r1!2370))))

(declare-fun e!4409196 () (InoxSet Context!16382))

(declare-fun e!4409194 () (InoxSet Context!16382))

(assert (=> b!7364491 (= e!4409196 e!4409194)))

(declare-fun b!7364492 () Bool)

(assert (=> b!7364492 (= e!4409195 e!4409197)))

(assert (=> b!7364492 (= c!1368461 ((_ is Union!19251) r1!2370))))

(declare-fun b!7364493 () Bool)

(assert (=> b!7364493 (= e!4409198 e!4409196)))

(assert (=> b!7364493 (= c!1368463 ((_ is Concat!28096) r1!2370))))

(declare-fun bm!675388 () Bool)

(assert (=> bm!675388 (= call!675394 ($colon$colon!3234 (exprs!8691 ct1!282) (ite (or c!1368460 c!1368463) (regTwo!39014 r1!2370) r1!2370)))))

(declare-fun b!7364494 () Bool)

(assert (=> b!7364494 (= e!4409194 ((as const (Array Context!16382 Bool)) false))))

(declare-fun bm!675389 () Bool)

(assert (=> bm!675389 (= call!675390 (derivationStepZipperDown!3077 (ite c!1368461 (regOne!39015 r1!2370) (regOne!39014 r1!2370)) (ite c!1368461 ct1!282 (Context!16383 call!675394)) c!10362))))

(declare-fun b!7364495 () Bool)

(assert (=> b!7364495 (= e!4409194 call!675391)))

(declare-fun b!7364496 () Bool)

(assert (=> b!7364496 (= e!4409198 ((_ map or) call!675390 call!675389))))

(declare-fun b!7364497 () Bool)

(assert (=> b!7364497 (= e!4409196 call!675391)))

(assert (= (and d!2282562 c!1368464) b!7364488))

(assert (= (and d!2282562 (not c!1368464)) b!7364492))

(assert (= (and b!7364492 c!1368461) b!7364490))

(assert (= (and b!7364492 (not c!1368461)) b!7364487))

(assert (= (and b!7364487 res!2972562) b!7364489))

(assert (= (and b!7364487 c!1368460) b!7364496))

(assert (= (and b!7364487 (not c!1368460)) b!7364493))

(assert (= (and b!7364493 c!1368463) b!7364497))

(assert (= (and b!7364493 (not c!1368463)) b!7364491))

(assert (= (and b!7364491 c!1368462) b!7364495))

(assert (= (and b!7364491 (not c!1368462)) b!7364494))

(assert (= (or b!7364497 b!7364495) bm!675386))

(assert (= (or b!7364497 b!7364495) bm!675387))

(assert (= (or b!7364496 bm!675387) bm!675385))

(assert (= (or b!7364496 bm!675386) bm!675388))

(assert (= (or b!7364490 bm!675385) bm!675384))

(assert (= (or b!7364490 b!7364496) bm!675389))

(assert (=> b!7364488 m!8020658))

(declare-fun m!8020682 () Bool)

(assert (=> bm!675384 m!8020682))

(declare-fun m!8020684 () Bool)

(assert (=> b!7364489 m!8020684))

(declare-fun m!8020686 () Bool)

(assert (=> bm!675389 m!8020686))

(declare-fun m!8020688 () Bool)

(assert (=> bm!675388 m!8020688))

(assert (=> b!7364404 d!2282562))

(declare-fun b!7364565 () Bool)

(declare-fun e!4409238 () Bool)

(declare-fun lt!2614592 () Int)

(declare-fun call!675429 () Int)

(assert (=> b!7364565 (= e!4409238 (> lt!2614592 call!675429))))

(declare-fun b!7364567 () Bool)

(declare-fun e!4409241 () Bool)

(assert (=> b!7364567 (= e!4409241 (= lt!2614592 1))))

(declare-fun b!7364568 () Bool)

(declare-fun e!4409245 () Int)

(declare-fun call!675433 () Int)

(assert (=> b!7364568 (= e!4409245 (+ 1 call!675433))))

(declare-fun bm!675422 () Bool)

(declare-fun call!675428 () Int)

(assert (=> bm!675422 (= call!675428 call!675433)))

(declare-fun bm!675423 () Bool)

(declare-fun call!675430 () Int)

(declare-fun c!1368496 () Bool)

(assert (=> bm!675423 (= call!675430 (regexDepth!437 (ite c!1368496 (regTwo!39015 (regTwo!39015 r1!2370)) (regOne!39014 (regTwo!39015 r1!2370)))))))

(declare-fun b!7364569 () Bool)

(declare-fun e!4409246 () Int)

(declare-fun e!4409247 () Int)

(assert (=> b!7364569 (= e!4409246 e!4409247)))

(declare-fun c!1368494 () Bool)

(assert (=> b!7364569 (= c!1368494 ((_ is Concat!28096) (regTwo!39015 r1!2370)))))

(declare-fun b!7364570 () Bool)

(declare-fun call!675431 () Int)

(assert (=> b!7364570 (= e!4409246 (+ 1 call!675431))))

(declare-fun call!675432 () Int)

(declare-fun c!1368499 () Bool)

(declare-fun c!1368500 () Bool)

(declare-fun bm!675424 () Bool)

(assert (=> bm!675424 (= call!675432 (regexDepth!437 (ite c!1368500 (regOne!39015 (regTwo!39015 r1!2370)) (ite c!1368499 (regOne!39014 (regTwo!39015 r1!2370)) (reg!19580 (regTwo!39015 r1!2370))))))))

(declare-fun b!7364571 () Bool)

(declare-fun e!4409244 () Bool)

(assert (=> b!7364571 (= e!4409244 (> lt!2614592 call!675429))))

(declare-fun b!7364572 () Bool)

(assert (=> b!7364572 (= c!1368496 ((_ is Union!19251) (regTwo!39015 r1!2370)))))

(assert (=> b!7364572 (= e!4409245 e!4409246)))

(declare-fun b!7364573 () Bool)

(declare-fun res!2972573 () Bool)

(assert (=> b!7364573 (=> (not res!2972573) (not e!4409244))))

(declare-fun call!675427 () Int)

(assert (=> b!7364573 (= res!2972573 (> lt!2614592 call!675427))))

(declare-fun e!4409240 () Bool)

(assert (=> b!7364573 (= e!4409240 e!4409244)))

(declare-fun b!7364574 () Bool)

(declare-fun e!4409239 () Bool)

(assert (=> b!7364574 (= e!4409239 e!4409238)))

(declare-fun res!2972574 () Bool)

(assert (=> b!7364574 (= res!2972574 (> lt!2614592 call!675432))))

(assert (=> b!7364574 (=> (not res!2972574) (not e!4409238))))

(declare-fun bm!675425 () Bool)

(declare-fun c!1368498 () Bool)

(assert (=> bm!675425 (= call!675433 (regexDepth!437 (ite c!1368498 (reg!19580 (regTwo!39015 r1!2370)) (ite c!1368496 (regOne!39015 (regTwo!39015 r1!2370)) (regTwo!39014 (regTwo!39015 r1!2370))))))))

(declare-fun bm!675426 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!675426 (= call!675431 (maxBigInt!0 (ite c!1368496 call!675428 call!675430) (ite c!1368496 call!675430 call!675428)))))

(declare-fun b!7364575 () Bool)

(declare-fun e!4409242 () Int)

(assert (=> b!7364575 (= e!4409242 1)))

(declare-fun b!7364566 () Bool)

(assert (=> b!7364566 (= e!4409247 1)))

(declare-fun d!2282566 () Bool)

(declare-fun e!4409243 () Bool)

(assert (=> d!2282566 e!4409243))

(declare-fun res!2972572 () Bool)

(assert (=> d!2282566 (=> (not res!2972572) (not e!4409243))))

(assert (=> d!2282566 (= res!2972572 (> lt!2614592 0))))

(assert (=> d!2282566 (= lt!2614592 e!4409242)))

(declare-fun c!1368495 () Bool)

(assert (=> d!2282566 (= c!1368495 ((_ is ElementMatch!19251) (regTwo!39015 r1!2370)))))

(assert (=> d!2282566 (= (regexDepth!437 (regTwo!39015 r1!2370)) lt!2614592)))

(declare-fun bm!675427 () Bool)

(assert (=> bm!675427 (= call!675427 call!675432)))

(declare-fun b!7364576 () Bool)

(assert (=> b!7364576 (= e!4409247 (+ 1 call!675431))))

(declare-fun b!7364577 () Bool)

(assert (=> b!7364577 (= e!4409241 (> lt!2614592 call!675427))))

(declare-fun b!7364578 () Bool)

(assert (=> b!7364578 (= e!4409243 e!4409239)))

(assert (=> b!7364578 (= c!1368500 ((_ is Union!19251) (regTwo!39015 r1!2370)))))

(declare-fun bm!675428 () Bool)

(assert (=> bm!675428 (= call!675429 (regexDepth!437 (ite c!1368500 (regTwo!39015 (regTwo!39015 r1!2370)) (regTwo!39014 (regTwo!39015 r1!2370)))))))

(declare-fun b!7364579 () Bool)

(assert (=> b!7364579 (= e!4409242 e!4409245)))

(assert (=> b!7364579 (= c!1368498 ((_ is Star!19251) (regTwo!39015 r1!2370)))))

(declare-fun b!7364580 () Bool)

(assert (=> b!7364580 (= e!4409239 e!4409240)))

(assert (=> b!7364580 (= c!1368499 ((_ is Concat!28096) (regTwo!39015 r1!2370)))))

(declare-fun b!7364581 () Bool)

(declare-fun c!1368497 () Bool)

(assert (=> b!7364581 (= c!1368497 ((_ is Star!19251) (regTwo!39015 r1!2370)))))

(assert (=> b!7364581 (= e!4409240 e!4409241)))

(assert (= (and d!2282566 c!1368495) b!7364575))

(assert (= (and d!2282566 (not c!1368495)) b!7364579))

(assert (= (and b!7364579 c!1368498) b!7364568))

(assert (= (and b!7364579 (not c!1368498)) b!7364572))

(assert (= (and b!7364572 c!1368496) b!7364570))

(assert (= (and b!7364572 (not c!1368496)) b!7364569))

(assert (= (and b!7364569 c!1368494) b!7364576))

(assert (= (and b!7364569 (not c!1368494)) b!7364566))

(assert (= (or b!7364570 b!7364576) bm!675423))

(assert (= (or b!7364570 b!7364576) bm!675422))

(assert (= (or b!7364570 b!7364576) bm!675426))

(assert (= (or b!7364568 bm!675422) bm!675425))

(assert (= (and d!2282566 res!2972572) b!7364578))

(assert (= (and b!7364578 c!1368500) b!7364574))

(assert (= (and b!7364578 (not c!1368500)) b!7364580))

(assert (= (and b!7364574 res!2972574) b!7364565))

(assert (= (and b!7364580 c!1368499) b!7364573))

(assert (= (and b!7364580 (not c!1368499)) b!7364581))

(assert (= (and b!7364573 res!2972573) b!7364571))

(assert (= (and b!7364581 c!1368497) b!7364577))

(assert (= (and b!7364581 (not c!1368497)) b!7364567))

(assert (= (or b!7364573 b!7364577) bm!675427))

(assert (= (or b!7364565 b!7364571) bm!675428))

(assert (= (or b!7364574 bm!675427) bm!675424))

(declare-fun m!8020700 () Bool)

(assert (=> bm!675425 m!8020700))

(declare-fun m!8020702 () Bool)

(assert (=> bm!675424 m!8020702))

(declare-fun m!8020704 () Bool)

(assert (=> bm!675428 m!8020704))

(declare-fun m!8020706 () Bool)

(assert (=> bm!675426 m!8020706))

(declare-fun m!8020708 () Bool)

(assert (=> bm!675423 m!8020708))

(assert (=> b!7364411 d!2282566))

(declare-fun b!7364582 () Bool)

(declare-fun e!4409248 () Bool)

(declare-fun lt!2614593 () Int)

(declare-fun call!675436 () Int)

(assert (=> b!7364582 (= e!4409248 (> lt!2614593 call!675436))))

(declare-fun b!7364584 () Bool)

(declare-fun e!4409251 () Bool)

(assert (=> b!7364584 (= e!4409251 (= lt!2614593 1))))

(declare-fun b!7364585 () Bool)

(declare-fun e!4409255 () Int)

(declare-fun call!675440 () Int)

(assert (=> b!7364585 (= e!4409255 (+ 1 call!675440))))

(declare-fun bm!675429 () Bool)

(declare-fun call!675435 () Int)

(assert (=> bm!675429 (= call!675435 call!675440)))

(declare-fun bm!675430 () Bool)

(declare-fun call!675437 () Int)

(declare-fun c!1368503 () Bool)

(assert (=> bm!675430 (= call!675437 (regexDepth!437 (ite c!1368503 (regTwo!39015 r1!2370) (regOne!39014 r1!2370))))))

(declare-fun b!7364586 () Bool)

(declare-fun e!4409256 () Int)

(declare-fun e!4409257 () Int)

(assert (=> b!7364586 (= e!4409256 e!4409257)))

(declare-fun c!1368501 () Bool)

(assert (=> b!7364586 (= c!1368501 ((_ is Concat!28096) r1!2370))))

(declare-fun b!7364587 () Bool)

(declare-fun call!675438 () Int)

(assert (=> b!7364587 (= e!4409256 (+ 1 call!675438))))

(declare-fun bm!675431 () Bool)

(declare-fun call!675439 () Int)

(declare-fun c!1368507 () Bool)

(declare-fun c!1368506 () Bool)

(assert (=> bm!675431 (= call!675439 (regexDepth!437 (ite c!1368507 (regOne!39015 r1!2370) (ite c!1368506 (regOne!39014 r1!2370) (reg!19580 r1!2370)))))))

(declare-fun b!7364588 () Bool)

(declare-fun e!4409254 () Bool)

(assert (=> b!7364588 (= e!4409254 (> lt!2614593 call!675436))))

(declare-fun b!7364589 () Bool)

(assert (=> b!7364589 (= c!1368503 ((_ is Union!19251) r1!2370))))

(assert (=> b!7364589 (= e!4409255 e!4409256)))

(declare-fun b!7364590 () Bool)

(declare-fun res!2972576 () Bool)

(assert (=> b!7364590 (=> (not res!2972576) (not e!4409254))))

(declare-fun call!675434 () Int)

(assert (=> b!7364590 (= res!2972576 (> lt!2614593 call!675434))))

(declare-fun e!4409250 () Bool)

(assert (=> b!7364590 (= e!4409250 e!4409254)))

(declare-fun b!7364591 () Bool)

(declare-fun e!4409249 () Bool)

(assert (=> b!7364591 (= e!4409249 e!4409248)))

(declare-fun res!2972577 () Bool)

(assert (=> b!7364591 (= res!2972577 (> lt!2614593 call!675439))))

(assert (=> b!7364591 (=> (not res!2972577) (not e!4409248))))

(declare-fun c!1368505 () Bool)

(declare-fun bm!675432 () Bool)

(assert (=> bm!675432 (= call!675440 (regexDepth!437 (ite c!1368505 (reg!19580 r1!2370) (ite c!1368503 (regOne!39015 r1!2370) (regTwo!39014 r1!2370)))))))

(declare-fun bm!675433 () Bool)

(assert (=> bm!675433 (= call!675438 (maxBigInt!0 (ite c!1368503 call!675435 call!675437) (ite c!1368503 call!675437 call!675435)))))

(declare-fun b!7364592 () Bool)

(declare-fun e!4409252 () Int)

(assert (=> b!7364592 (= e!4409252 1)))

(declare-fun b!7364583 () Bool)

(assert (=> b!7364583 (= e!4409257 1)))

(declare-fun d!2282570 () Bool)

(declare-fun e!4409253 () Bool)

(assert (=> d!2282570 e!4409253))

(declare-fun res!2972575 () Bool)

(assert (=> d!2282570 (=> (not res!2972575) (not e!4409253))))

(assert (=> d!2282570 (= res!2972575 (> lt!2614593 0))))

(assert (=> d!2282570 (= lt!2614593 e!4409252)))

(declare-fun c!1368502 () Bool)

(assert (=> d!2282570 (= c!1368502 ((_ is ElementMatch!19251) r1!2370))))

(assert (=> d!2282570 (= (regexDepth!437 r1!2370) lt!2614593)))

(declare-fun bm!675434 () Bool)

(assert (=> bm!675434 (= call!675434 call!675439)))

(declare-fun b!7364593 () Bool)

(assert (=> b!7364593 (= e!4409257 (+ 1 call!675438))))

(declare-fun b!7364594 () Bool)

(assert (=> b!7364594 (= e!4409251 (> lt!2614593 call!675434))))

(declare-fun b!7364595 () Bool)

(assert (=> b!7364595 (= e!4409253 e!4409249)))

(assert (=> b!7364595 (= c!1368507 ((_ is Union!19251) r1!2370))))

(declare-fun bm!675435 () Bool)

(assert (=> bm!675435 (= call!675436 (regexDepth!437 (ite c!1368507 (regTwo!39015 r1!2370) (regTwo!39014 r1!2370))))))

(declare-fun b!7364596 () Bool)

(assert (=> b!7364596 (= e!4409252 e!4409255)))

(assert (=> b!7364596 (= c!1368505 ((_ is Star!19251) r1!2370))))

(declare-fun b!7364597 () Bool)

(assert (=> b!7364597 (= e!4409249 e!4409250)))

(assert (=> b!7364597 (= c!1368506 ((_ is Concat!28096) r1!2370))))

(declare-fun b!7364598 () Bool)

(declare-fun c!1368504 () Bool)

(assert (=> b!7364598 (= c!1368504 ((_ is Star!19251) r1!2370))))

(assert (=> b!7364598 (= e!4409250 e!4409251)))

(assert (= (and d!2282570 c!1368502) b!7364592))

(assert (= (and d!2282570 (not c!1368502)) b!7364596))

(assert (= (and b!7364596 c!1368505) b!7364585))

(assert (= (and b!7364596 (not c!1368505)) b!7364589))

(assert (= (and b!7364589 c!1368503) b!7364587))

(assert (= (and b!7364589 (not c!1368503)) b!7364586))

(assert (= (and b!7364586 c!1368501) b!7364593))

(assert (= (and b!7364586 (not c!1368501)) b!7364583))

(assert (= (or b!7364587 b!7364593) bm!675430))

(assert (= (or b!7364587 b!7364593) bm!675429))

(assert (= (or b!7364587 b!7364593) bm!675433))

(assert (= (or b!7364585 bm!675429) bm!675432))

(assert (= (and d!2282570 res!2972575) b!7364595))

(assert (= (and b!7364595 c!1368507) b!7364591))

(assert (= (and b!7364595 (not c!1368507)) b!7364597))

(assert (= (and b!7364591 res!2972577) b!7364582))

(assert (= (and b!7364597 c!1368506) b!7364590))

(assert (= (and b!7364597 (not c!1368506)) b!7364598))

(assert (= (and b!7364590 res!2972576) b!7364588))

(assert (= (and b!7364598 c!1368504) b!7364594))

(assert (= (and b!7364598 (not c!1368504)) b!7364584))

(assert (= (or b!7364590 b!7364594) bm!675434))

(assert (= (or b!7364582 b!7364588) bm!675435))

(assert (= (or b!7364591 bm!675434) bm!675431))

(declare-fun m!8020710 () Bool)

(assert (=> bm!675432 m!8020710))

(declare-fun m!8020712 () Bool)

(assert (=> bm!675431 m!8020712))

(declare-fun m!8020714 () Bool)

(assert (=> bm!675435 m!8020714))

(declare-fun m!8020716 () Bool)

(assert (=> bm!675433 m!8020716))

(declare-fun m!8020718 () Bool)

(assert (=> bm!675430 m!8020718))

(assert (=> b!7364411 d!2282570))

(declare-fun b!7364629 () Bool)

(declare-fun e!4409279 () Bool)

(declare-fun e!4409278 () Bool)

(assert (=> b!7364629 (= e!4409279 e!4409278)))

(declare-fun res!2972594 () Bool)

(assert (=> b!7364629 (= res!2972594 (not (nullable!8328 (reg!19580 (regTwo!39015 r1!2370)))))))

(assert (=> b!7364629 (=> (not res!2972594) (not e!4409278))))

(declare-fun b!7364630 () Bool)

(declare-fun res!2972596 () Bool)

(declare-fun e!4409280 () Bool)

(assert (=> b!7364630 (=> (not res!2972596) (not e!4409280))))

(declare-fun call!675447 () Bool)

(assert (=> b!7364630 (= res!2972596 call!675447)))

(declare-fun e!4409281 () Bool)

(assert (=> b!7364630 (= e!4409281 e!4409280)))

(declare-fun b!7364631 () Bool)

(declare-fun e!4409282 () Bool)

(declare-fun e!4409283 () Bool)

(assert (=> b!7364631 (= e!4409282 e!4409283)))

(declare-fun res!2972597 () Bool)

(assert (=> b!7364631 (=> (not res!2972597) (not e!4409283))))

(declare-fun call!675448 () Bool)

(assert (=> b!7364631 (= res!2972597 call!675448)))

(declare-fun b!7364632 () Bool)

(assert (=> b!7364632 (= e!4409283 call!675447)))

(declare-fun b!7364633 () Bool)

(declare-fun call!675449 () Bool)

(assert (=> b!7364633 (= e!4409278 call!675449)))

(declare-fun bm!675442 () Bool)

(declare-fun c!1368515 () Bool)

(assert (=> bm!675442 (= call!675447 (validRegex!9847 (ite c!1368515 (regOne!39015 (regTwo!39015 r1!2370)) (regTwo!39014 (regTwo!39015 r1!2370)))))))

(declare-fun b!7364634 () Bool)

(assert (=> b!7364634 (= e!4409280 call!675448)))

(declare-fun bm!675443 () Bool)

(assert (=> bm!675443 (= call!675448 call!675449)))

(declare-fun b!7364636 () Bool)

(declare-fun e!4409284 () Bool)

(assert (=> b!7364636 (= e!4409284 e!4409279)))

(declare-fun c!1368516 () Bool)

(assert (=> b!7364636 (= c!1368516 ((_ is Star!19251) (regTwo!39015 r1!2370)))))

(declare-fun b!7364635 () Bool)

(assert (=> b!7364635 (= e!4409279 e!4409281)))

(assert (=> b!7364635 (= c!1368515 ((_ is Union!19251) (regTwo!39015 r1!2370)))))

(declare-fun d!2282572 () Bool)

(declare-fun res!2972595 () Bool)

(assert (=> d!2282572 (=> res!2972595 e!4409284)))

(assert (=> d!2282572 (= res!2972595 ((_ is ElementMatch!19251) (regTwo!39015 r1!2370)))))

(assert (=> d!2282572 (= (validRegex!9847 (regTwo!39015 r1!2370)) e!4409284)))

(declare-fun bm!675444 () Bool)

(assert (=> bm!675444 (= call!675449 (validRegex!9847 (ite c!1368516 (reg!19580 (regTwo!39015 r1!2370)) (ite c!1368515 (regTwo!39015 (regTwo!39015 r1!2370)) (regOne!39014 (regTwo!39015 r1!2370))))))))

(declare-fun b!7364637 () Bool)

(declare-fun res!2972598 () Bool)

(assert (=> b!7364637 (=> res!2972598 e!4409282)))

(assert (=> b!7364637 (= res!2972598 (not ((_ is Concat!28096) (regTwo!39015 r1!2370))))))

(assert (=> b!7364637 (= e!4409281 e!4409282)))

(assert (= (and d!2282572 (not res!2972595)) b!7364636))

(assert (= (and b!7364636 c!1368516) b!7364629))

(assert (= (and b!7364636 (not c!1368516)) b!7364635))

(assert (= (and b!7364629 res!2972594) b!7364633))

(assert (= (and b!7364635 c!1368515) b!7364630))

(assert (= (and b!7364635 (not c!1368515)) b!7364637))

(assert (= (and b!7364630 res!2972596) b!7364634))

(assert (= (and b!7364637 (not res!2972598)) b!7364631))

(assert (= (and b!7364631 res!2972597) b!7364632))

(assert (= (or b!7364630 b!7364632) bm!675442))

(assert (= (or b!7364634 b!7364631) bm!675443))

(assert (= (or b!7364633 bm!675443) bm!675444))

(declare-fun m!8020740 () Bool)

(assert (=> b!7364629 m!8020740))

(declare-fun m!8020742 () Bool)

(assert (=> bm!675442 m!8020742))

(declare-fun m!8020744 () Bool)

(assert (=> bm!675444 m!8020744))

(assert (=> b!7364407 d!2282572))

(declare-fun b!7364638 () Bool)

(declare-fun e!4409286 () Bool)

(declare-fun e!4409285 () Bool)

(assert (=> b!7364638 (= e!4409286 e!4409285)))

(declare-fun res!2972599 () Bool)

(assert (=> b!7364638 (= res!2972599 (not (nullable!8328 (reg!19580 r1!2370))))))

(assert (=> b!7364638 (=> (not res!2972599) (not e!4409285))))

(declare-fun b!7364639 () Bool)

(declare-fun res!2972601 () Bool)

(declare-fun e!4409287 () Bool)

(assert (=> b!7364639 (=> (not res!2972601) (not e!4409287))))

(declare-fun call!675450 () Bool)

(assert (=> b!7364639 (= res!2972601 call!675450)))

(declare-fun e!4409288 () Bool)

(assert (=> b!7364639 (= e!4409288 e!4409287)))

(declare-fun b!7364640 () Bool)

(declare-fun e!4409289 () Bool)

(declare-fun e!4409290 () Bool)

(assert (=> b!7364640 (= e!4409289 e!4409290)))

(declare-fun res!2972602 () Bool)

(assert (=> b!7364640 (=> (not res!2972602) (not e!4409290))))

(declare-fun call!675451 () Bool)

(assert (=> b!7364640 (= res!2972602 call!675451)))

(declare-fun b!7364641 () Bool)

(assert (=> b!7364641 (= e!4409290 call!675450)))

(declare-fun b!7364642 () Bool)

(declare-fun call!675452 () Bool)

(assert (=> b!7364642 (= e!4409285 call!675452)))

(declare-fun bm!675445 () Bool)

(declare-fun c!1368517 () Bool)

(assert (=> bm!675445 (= call!675450 (validRegex!9847 (ite c!1368517 (regOne!39015 r1!2370) (regTwo!39014 r1!2370))))))

(declare-fun b!7364643 () Bool)

(assert (=> b!7364643 (= e!4409287 call!675451)))

(declare-fun bm!675446 () Bool)

(assert (=> bm!675446 (= call!675451 call!675452)))

(declare-fun b!7364645 () Bool)

(declare-fun e!4409291 () Bool)

(assert (=> b!7364645 (= e!4409291 e!4409286)))

(declare-fun c!1368518 () Bool)

(assert (=> b!7364645 (= c!1368518 ((_ is Star!19251) r1!2370))))

(declare-fun b!7364644 () Bool)

(assert (=> b!7364644 (= e!4409286 e!4409288)))

(assert (=> b!7364644 (= c!1368517 ((_ is Union!19251) r1!2370))))

(declare-fun d!2282578 () Bool)

(declare-fun res!2972600 () Bool)

(assert (=> d!2282578 (=> res!2972600 e!4409291)))

(assert (=> d!2282578 (= res!2972600 ((_ is ElementMatch!19251) r1!2370))))

(assert (=> d!2282578 (= (validRegex!9847 r1!2370) e!4409291)))

(declare-fun bm!675447 () Bool)

(assert (=> bm!675447 (= call!675452 (validRegex!9847 (ite c!1368518 (reg!19580 r1!2370) (ite c!1368517 (regTwo!39015 r1!2370) (regOne!39014 r1!2370)))))))

(declare-fun b!7364646 () Bool)

(declare-fun res!2972603 () Bool)

(assert (=> b!7364646 (=> res!2972603 e!4409289)))

(assert (=> b!7364646 (= res!2972603 (not ((_ is Concat!28096) r1!2370)))))

(assert (=> b!7364646 (= e!4409288 e!4409289)))

(assert (= (and d!2282578 (not res!2972600)) b!7364645))

(assert (= (and b!7364645 c!1368518) b!7364638))

(assert (= (and b!7364645 (not c!1368518)) b!7364644))

(assert (= (and b!7364638 res!2972599) b!7364642))

(assert (= (and b!7364644 c!1368517) b!7364639))

(assert (= (and b!7364644 (not c!1368517)) b!7364646))

(assert (= (and b!7364639 res!2972601) b!7364643))

(assert (= (and b!7364646 (not res!2972603)) b!7364640))

(assert (= (and b!7364640 res!2972602) b!7364641))

(assert (= (or b!7364639 b!7364641) bm!675445))

(assert (= (or b!7364643 b!7364640) bm!675446))

(assert (= (or b!7364642 bm!675446) bm!675447))

(declare-fun m!8020746 () Bool)

(assert (=> b!7364638 m!8020746))

(declare-fun m!8020748 () Bool)

(assert (=> bm!675445 m!8020748))

(declare-fun m!8020750 () Bool)

(assert (=> bm!675447 m!8020750))

(assert (=> start!718956 d!2282578))

(declare-fun bs!1920403 () Bool)

(declare-fun d!2282580 () Bool)

(assert (= bs!1920403 (and d!2282580 b!7364413)))

(declare-fun lambda!457628 () Int)

(assert (=> bs!1920403 (= lambda!457628 lambda!457625)))

(declare-fun forall!18059 (List!71747 Int) Bool)

(assert (=> d!2282580 (= (inv!91467 cWitness!61) (forall!18059 (exprs!8691 cWitness!61) lambda!457628))))

(declare-fun bs!1920404 () Bool)

(assert (= bs!1920404 d!2282580))

(declare-fun m!8020752 () Bool)

(assert (=> bs!1920404 m!8020752))

(assert (=> start!718956 d!2282580))

(declare-fun bs!1920405 () Bool)

(declare-fun d!2282582 () Bool)

(assert (= bs!1920405 (and d!2282582 b!7364413)))

(declare-fun lambda!457629 () Int)

(assert (=> bs!1920405 (= lambda!457629 lambda!457625)))

(declare-fun bs!1920406 () Bool)

(assert (= bs!1920406 (and d!2282582 d!2282580)))

(assert (=> bs!1920406 (= lambda!457629 lambda!457628)))

(assert (=> d!2282582 (= (inv!91467 ct1!282) (forall!18059 (exprs!8691 ct1!282) lambda!457629))))

(declare-fun bs!1920407 () Bool)

(assert (= bs!1920407 d!2282582))

(declare-fun m!8020754 () Bool)

(assert (=> bs!1920407 m!8020754))

(assert (=> start!718956 d!2282582))

(declare-fun bs!1920408 () Bool)

(declare-fun d!2282584 () Bool)

(assert (= bs!1920408 (and d!2282584 b!7364413)))

(declare-fun lambda!457630 () Int)

(assert (=> bs!1920408 (= lambda!457630 lambda!457625)))

(declare-fun bs!1920409 () Bool)

(assert (= bs!1920409 (and d!2282584 d!2282580)))

(assert (=> bs!1920409 (= lambda!457630 lambda!457628)))

(declare-fun bs!1920410 () Bool)

(assert (= bs!1920410 (and d!2282584 d!2282582)))

(assert (=> bs!1920410 (= lambda!457630 lambda!457629)))

(assert (=> d!2282584 (= (inv!91467 ct2!378) (forall!18059 (exprs!8691 ct2!378) lambda!457630))))

(declare-fun bs!1920411 () Bool)

(assert (= bs!1920411 d!2282584))

(declare-fun m!8020756 () Bool)

(assert (=> bs!1920411 m!8020756))

(assert (=> start!718956 d!2282584))

(declare-fun d!2282586 () Bool)

(declare-fun c!1368531 () Bool)

(assert (=> d!2282586 (= c!1368531 (and ((_ is ElementMatch!19251) r1!2370) (= (c!1368433 r1!2370) c!10362)))))

(declare-fun e!4409301 () (InoxSet Context!16382))

(assert (=> d!2282586 (= (derivationStepZipperDown!3077 r1!2370 (Context!16383 (++!17067 (exprs!8691 ct1!282) (exprs!8691 ct2!378))) c!10362) e!4409301)))

(declare-fun call!675463 () (InoxSet Context!16382))

(declare-fun call!675462 () List!71747)

(declare-fun c!1368528 () Bool)

(declare-fun bm!675454 () Bool)

(declare-fun c!1368530 () Bool)

(declare-fun c!1368527 () Bool)

(assert (=> bm!675454 (= call!675463 (derivationStepZipperDown!3077 (ite c!1368528 (regTwo!39015 r1!2370) (ite c!1368527 (regTwo!39014 r1!2370) (ite c!1368530 (regOne!39014 r1!2370) (reg!19580 r1!2370)))) (ite (or c!1368528 c!1368527) (Context!16383 (++!17067 (exprs!8691 ct1!282) (exprs!8691 ct2!378))) (Context!16383 call!675462)) c!10362))))

(declare-fun bm!675455 () Bool)

(declare-fun call!675459 () (InoxSet Context!16382))

(assert (=> bm!675455 (= call!675459 call!675463)))

(declare-fun bm!675456 () Bool)

(declare-fun call!675464 () List!71747)

(assert (=> bm!675456 (= call!675462 call!675464)))

(declare-fun bm!675457 () Bool)

(declare-fun call!675461 () (InoxSet Context!16382))

(assert (=> bm!675457 (= call!675461 call!675459)))

(declare-fun b!7364663 () Bool)

(declare-fun e!4409305 () Bool)

(assert (=> b!7364663 (= c!1368527 e!4409305)))

(declare-fun res!2972604 () Bool)

(assert (=> b!7364663 (=> (not res!2972604) (not e!4409305))))

(assert (=> b!7364663 (= res!2972604 ((_ is Concat!28096) r1!2370))))

(declare-fun e!4409303 () (InoxSet Context!16382))

(declare-fun e!4409304 () (InoxSet Context!16382))

(assert (=> b!7364663 (= e!4409303 e!4409304)))

(declare-fun b!7364664 () Bool)

(assert (=> b!7364664 (= e!4409301 (store ((as const (Array Context!16382 Bool)) false) (Context!16383 (++!17067 (exprs!8691 ct1!282) (exprs!8691 ct2!378))) true))))

(declare-fun b!7364665 () Bool)

(assert (=> b!7364665 (= e!4409305 (nullable!8328 (regOne!39014 r1!2370)))))

(declare-fun b!7364666 () Bool)

(declare-fun call!675460 () (InoxSet Context!16382))

(assert (=> b!7364666 (= e!4409303 ((_ map or) call!675460 call!675463))))

(declare-fun b!7364667 () Bool)

(declare-fun c!1368529 () Bool)

(assert (=> b!7364667 (= c!1368529 ((_ is Star!19251) r1!2370))))

(declare-fun e!4409302 () (InoxSet Context!16382))

(declare-fun e!4409300 () (InoxSet Context!16382))

(assert (=> b!7364667 (= e!4409302 e!4409300)))

(declare-fun b!7364668 () Bool)

(assert (=> b!7364668 (= e!4409301 e!4409303)))

(assert (=> b!7364668 (= c!1368528 ((_ is Union!19251) r1!2370))))

(declare-fun b!7364669 () Bool)

(assert (=> b!7364669 (= e!4409304 e!4409302)))

(assert (=> b!7364669 (= c!1368530 ((_ is Concat!28096) r1!2370))))

(declare-fun bm!675458 () Bool)

(assert (=> bm!675458 (= call!675464 ($colon$colon!3234 (exprs!8691 (Context!16383 (++!17067 (exprs!8691 ct1!282) (exprs!8691 ct2!378)))) (ite (or c!1368527 c!1368530) (regTwo!39014 r1!2370) r1!2370)))))

(declare-fun b!7364670 () Bool)

(assert (=> b!7364670 (= e!4409300 ((as const (Array Context!16382 Bool)) false))))

(declare-fun bm!675459 () Bool)

(assert (=> bm!675459 (= call!675460 (derivationStepZipperDown!3077 (ite c!1368528 (regOne!39015 r1!2370) (regOne!39014 r1!2370)) (ite c!1368528 (Context!16383 (++!17067 (exprs!8691 ct1!282) (exprs!8691 ct2!378))) (Context!16383 call!675464)) c!10362))))

(declare-fun b!7364671 () Bool)

(assert (=> b!7364671 (= e!4409300 call!675461)))

(declare-fun b!7364672 () Bool)

(assert (=> b!7364672 (= e!4409304 ((_ map or) call!675460 call!675459))))

(declare-fun b!7364673 () Bool)

(assert (=> b!7364673 (= e!4409302 call!675461)))

(assert (= (and d!2282586 c!1368531) b!7364664))

(assert (= (and d!2282586 (not c!1368531)) b!7364668))

(assert (= (and b!7364668 c!1368528) b!7364666))

(assert (= (and b!7364668 (not c!1368528)) b!7364663))

(assert (= (and b!7364663 res!2972604) b!7364665))

(assert (= (and b!7364663 c!1368527) b!7364672))

(assert (= (and b!7364663 (not c!1368527)) b!7364669))

(assert (= (and b!7364669 c!1368530) b!7364673))

(assert (= (and b!7364669 (not c!1368530)) b!7364667))

(assert (= (and b!7364667 c!1368529) b!7364671))

(assert (= (and b!7364667 (not c!1368529)) b!7364670))

(assert (= (or b!7364673 b!7364671) bm!675456))

(assert (= (or b!7364673 b!7364671) bm!675457))

(assert (= (or b!7364672 bm!675457) bm!675455))

(assert (= (or b!7364672 bm!675456) bm!675458))

(assert (= (or b!7364666 bm!675455) bm!675454))

(assert (= (or b!7364666 b!7364672) bm!675459))

(declare-fun m!8020758 () Bool)

(assert (=> b!7364664 m!8020758))

(declare-fun m!8020760 () Bool)

(assert (=> bm!675454 m!8020760))

(assert (=> b!7364665 m!8020684))

(declare-fun m!8020762 () Bool)

(assert (=> bm!675459 m!8020762))

(declare-fun m!8020764 () Bool)

(assert (=> bm!675458 m!8020764))

(assert (=> b!7364413 d!2282586))

(declare-fun b!7364702 () Bool)

(declare-fun res!2972615 () Bool)

(declare-fun e!4409322 () Bool)

(assert (=> b!7364702 (=> (not res!2972615) (not e!4409322))))

(declare-fun lt!2614604 () List!71747)

(declare-fun size!42113 (List!71747) Int)

(assert (=> b!7364702 (= res!2972615 (= (size!42113 lt!2614604) (+ (size!42113 (exprs!8691 ct1!282)) (size!42113 (exprs!8691 ct2!378)))))))

(declare-fun d!2282588 () Bool)

(assert (=> d!2282588 e!4409322))

(declare-fun res!2972616 () Bool)

(assert (=> d!2282588 (=> (not res!2972616) (not e!4409322))))

(declare-fun content!15135 (List!71747) (InoxSet Regex!19251))

(assert (=> d!2282588 (= res!2972616 (= (content!15135 lt!2614604) ((_ map or) (content!15135 (exprs!8691 ct1!282)) (content!15135 (exprs!8691 ct2!378)))))))

(declare-fun e!4409323 () List!71747)

(assert (=> d!2282588 (= lt!2614604 e!4409323)))

(declare-fun c!1368540 () Bool)

(assert (=> d!2282588 (= c!1368540 ((_ is Nil!71623) (exprs!8691 ct1!282)))))

(assert (=> d!2282588 (= (++!17067 (exprs!8691 ct1!282) (exprs!8691 ct2!378)) lt!2614604)))

(declare-fun b!7364700 () Bool)

(assert (=> b!7364700 (= e!4409323 (exprs!8691 ct2!378))))

(declare-fun b!7364701 () Bool)

(assert (=> b!7364701 (= e!4409323 (Cons!71623 (h!78071 (exprs!8691 ct1!282)) (++!17067 (t!386196 (exprs!8691 ct1!282)) (exprs!8691 ct2!378))))))

(declare-fun b!7364703 () Bool)

(assert (=> b!7364703 (= e!4409322 (or (not (= (exprs!8691 ct2!378) Nil!71623)) (= lt!2614604 (exprs!8691 ct1!282))))))

(assert (= (and d!2282588 c!1368540) b!7364700))

(assert (= (and d!2282588 (not c!1368540)) b!7364701))

(assert (= (and d!2282588 res!2972616) b!7364702))

(assert (= (and b!7364702 res!2972615) b!7364703))

(declare-fun m!8020766 () Bool)

(assert (=> b!7364702 m!8020766))

(declare-fun m!8020768 () Bool)

(assert (=> b!7364702 m!8020768))

(declare-fun m!8020770 () Bool)

(assert (=> b!7364702 m!8020770))

(declare-fun m!8020772 () Bool)

(assert (=> d!2282588 m!8020772))

(declare-fun m!8020774 () Bool)

(assert (=> d!2282588 m!8020774))

(declare-fun m!8020776 () Bool)

(assert (=> d!2282588 m!8020776))

(declare-fun m!8020778 () Bool)

(assert (=> b!7364701 m!8020778))

(assert (=> b!7364413 d!2282588))

(declare-fun d!2282590 () Bool)

(assert (=> d!2282590 (forall!18059 (++!17067 (exprs!8691 ct1!282) (exprs!8691 ct2!378)) lambda!457625)))

(declare-fun lt!2614608 () Unit!165451)

(declare-fun choose!57272 (List!71747 List!71747 Int) Unit!165451)

(assert (=> d!2282590 (= lt!2614608 (choose!57272 (exprs!8691 ct1!282) (exprs!8691 ct2!378) lambda!457625))))

(assert (=> d!2282590 (forall!18059 (exprs!8691 ct1!282) lambda!457625)))

(assert (=> d!2282590 (= (lemmaConcatPreservesForall!1924 (exprs!8691 ct1!282) (exprs!8691 ct2!378) lambda!457625) lt!2614608)))

(declare-fun bs!1920412 () Bool)

(assert (= bs!1920412 d!2282590))

(assert (=> bs!1920412 m!8020642))

(assert (=> bs!1920412 m!8020642))

(declare-fun m!8020790 () Bool)

(assert (=> bs!1920412 m!8020790))

(declare-fun m!8020792 () Bool)

(assert (=> bs!1920412 m!8020792))

(declare-fun m!8020794 () Bool)

(assert (=> bs!1920412 m!8020794))

(assert (=> b!7364413 d!2282590))

(declare-fun e!4409353 () Bool)

(assert (=> b!7364405 (= tp!2092944 e!4409353)))

(declare-fun b!7364759 () Bool)

(declare-fun tp!2092963 () Bool)

(assert (=> b!7364759 (= e!4409353 tp!2092963)))

(declare-fun b!7364757 () Bool)

(assert (=> b!7364757 (= e!4409353 tp_is_empty!48747)))

(declare-fun b!7364758 () Bool)

(declare-fun tp!2092964 () Bool)

(declare-fun tp!2092966 () Bool)

(assert (=> b!7364758 (= e!4409353 (and tp!2092964 tp!2092966))))

(declare-fun b!7364760 () Bool)

(declare-fun tp!2092965 () Bool)

(declare-fun tp!2092962 () Bool)

(assert (=> b!7364760 (= e!4409353 (and tp!2092965 tp!2092962))))

(assert (= (and b!7364405 ((_ is ElementMatch!19251) (regOne!39015 r1!2370))) b!7364757))

(assert (= (and b!7364405 ((_ is Concat!28096) (regOne!39015 r1!2370))) b!7364758))

(assert (= (and b!7364405 ((_ is Star!19251) (regOne!39015 r1!2370))) b!7364759))

(assert (= (and b!7364405 ((_ is Union!19251) (regOne!39015 r1!2370))) b!7364760))

(declare-fun e!4409354 () Bool)

(assert (=> b!7364405 (= tp!2092950 e!4409354)))

(declare-fun b!7364763 () Bool)

(declare-fun tp!2092968 () Bool)

(assert (=> b!7364763 (= e!4409354 tp!2092968)))

(declare-fun b!7364761 () Bool)

(assert (=> b!7364761 (= e!4409354 tp_is_empty!48747)))

(declare-fun b!7364762 () Bool)

(declare-fun tp!2092969 () Bool)

(declare-fun tp!2092971 () Bool)

(assert (=> b!7364762 (= e!4409354 (and tp!2092969 tp!2092971))))

(declare-fun b!7364764 () Bool)

(declare-fun tp!2092970 () Bool)

(declare-fun tp!2092967 () Bool)

(assert (=> b!7364764 (= e!4409354 (and tp!2092970 tp!2092967))))

(assert (= (and b!7364405 ((_ is ElementMatch!19251) (regTwo!39015 r1!2370))) b!7364761))

(assert (= (and b!7364405 ((_ is Concat!28096) (regTwo!39015 r1!2370))) b!7364762))

(assert (= (and b!7364405 ((_ is Star!19251) (regTwo!39015 r1!2370))) b!7364763))

(assert (= (and b!7364405 ((_ is Union!19251) (regTwo!39015 r1!2370))) b!7364764))

(declare-fun b!7364769 () Bool)

(declare-fun e!4409357 () Bool)

(declare-fun tp!2092976 () Bool)

(declare-fun tp!2092977 () Bool)

(assert (=> b!7364769 (= e!4409357 (and tp!2092976 tp!2092977))))

(assert (=> b!7364410 (= tp!2092949 e!4409357)))

(assert (= (and b!7364410 ((_ is Cons!71623) (exprs!8691 ct1!282))) b!7364769))

(declare-fun b!7364770 () Bool)

(declare-fun e!4409358 () Bool)

(declare-fun tp!2092978 () Bool)

(declare-fun tp!2092979 () Bool)

(assert (=> b!7364770 (= e!4409358 (and tp!2092978 tp!2092979))))

(assert (=> b!7364406 (= tp!2092951 e!4409358)))

(assert (= (and b!7364406 ((_ is Cons!71623) (exprs!8691 ct2!378))) b!7364770))

(declare-fun e!4409359 () Bool)

(assert (=> b!7364412 (= tp!2092948 e!4409359)))

(declare-fun b!7364773 () Bool)

(declare-fun tp!2092981 () Bool)

(assert (=> b!7364773 (= e!4409359 tp!2092981)))

(declare-fun b!7364771 () Bool)

(assert (=> b!7364771 (= e!4409359 tp_is_empty!48747)))

(declare-fun b!7364772 () Bool)

(declare-fun tp!2092982 () Bool)

(declare-fun tp!2092984 () Bool)

(assert (=> b!7364772 (= e!4409359 (and tp!2092982 tp!2092984))))

(declare-fun b!7364774 () Bool)

(declare-fun tp!2092983 () Bool)

(declare-fun tp!2092980 () Bool)

(assert (=> b!7364774 (= e!4409359 (and tp!2092983 tp!2092980))))

(assert (= (and b!7364412 ((_ is ElementMatch!19251) (regOne!39014 r1!2370))) b!7364771))

(assert (= (and b!7364412 ((_ is Concat!28096) (regOne!39014 r1!2370))) b!7364772))

(assert (= (and b!7364412 ((_ is Star!19251) (regOne!39014 r1!2370))) b!7364773))

(assert (= (and b!7364412 ((_ is Union!19251) (regOne!39014 r1!2370))) b!7364774))

(declare-fun e!4409360 () Bool)

(assert (=> b!7364412 (= tp!2092945 e!4409360)))

(declare-fun b!7364777 () Bool)

(declare-fun tp!2092986 () Bool)

(assert (=> b!7364777 (= e!4409360 tp!2092986)))

(declare-fun b!7364775 () Bool)

(assert (=> b!7364775 (= e!4409360 tp_is_empty!48747)))

(declare-fun b!7364776 () Bool)

(declare-fun tp!2092987 () Bool)

(declare-fun tp!2092989 () Bool)

(assert (=> b!7364776 (= e!4409360 (and tp!2092987 tp!2092989))))

(declare-fun b!7364778 () Bool)

(declare-fun tp!2092988 () Bool)

(declare-fun tp!2092985 () Bool)

(assert (=> b!7364778 (= e!4409360 (and tp!2092988 tp!2092985))))

(assert (= (and b!7364412 ((_ is ElementMatch!19251) (regTwo!39014 r1!2370))) b!7364775))

(assert (= (and b!7364412 ((_ is Concat!28096) (regTwo!39014 r1!2370))) b!7364776))

(assert (= (and b!7364412 ((_ is Star!19251) (regTwo!39014 r1!2370))) b!7364777))

(assert (= (and b!7364412 ((_ is Union!19251) (regTwo!39014 r1!2370))) b!7364778))

(declare-fun e!4409361 () Bool)

(assert (=> b!7364403 (= tp!2092947 e!4409361)))

(declare-fun b!7364781 () Bool)

(declare-fun tp!2092991 () Bool)

(assert (=> b!7364781 (= e!4409361 tp!2092991)))

(declare-fun b!7364779 () Bool)

(assert (=> b!7364779 (= e!4409361 tp_is_empty!48747)))

(declare-fun b!7364780 () Bool)

(declare-fun tp!2092992 () Bool)

(declare-fun tp!2092994 () Bool)

(assert (=> b!7364780 (= e!4409361 (and tp!2092992 tp!2092994))))

(declare-fun b!7364782 () Bool)

(declare-fun tp!2092993 () Bool)

(declare-fun tp!2092990 () Bool)

(assert (=> b!7364782 (= e!4409361 (and tp!2092993 tp!2092990))))

(assert (= (and b!7364403 ((_ is ElementMatch!19251) (reg!19580 r1!2370))) b!7364779))

(assert (= (and b!7364403 ((_ is Concat!28096) (reg!19580 r1!2370))) b!7364780))

(assert (= (and b!7364403 ((_ is Star!19251) (reg!19580 r1!2370))) b!7364781))

(assert (= (and b!7364403 ((_ is Union!19251) (reg!19580 r1!2370))) b!7364782))

(declare-fun b!7364783 () Bool)

(declare-fun e!4409362 () Bool)

(declare-fun tp!2092995 () Bool)

(declare-fun tp!2092996 () Bool)

(assert (=> b!7364783 (= e!4409362 (and tp!2092995 tp!2092996))))

(assert (=> b!7364408 (= tp!2092946 e!4409362)))

(assert (= (and b!7364408 ((_ is Cons!71623) (exprs!8691 cWitness!61))) b!7364783))

(check-sat (not bm!675428) (not b!7364665) (not bm!675445) (not b!7364782) (not d!2282588) (not bm!675444) (not bm!675459) (not b!7364489) (not bm!675388) (not b!7364780) (not bm!675426) (not b!7364758) (not d!2282590) (not b!7364629) (not b!7364702) (not b!7364762) (not b!7364769) (not b!7364778) (not bm!675384) (not bm!675423) (not bm!675369) (not bm!675458) (not b!7364638) (not bm!675379) (not b!7364701) (not bm!675424) (not b!7364759) (not bm!675389) (not b!7364469) (not b!7364760) (not b!7364783) (not d!2282582) (not b!7364764) (not bm!675442) (not b!7364763) (not bm!675435) (not bm!675380) (not bm!675433) (not bm!675374) (not bm!675375) (not b!7364773) (not d!2282584) (not d!2282580) (not bm!675373) (not bm!675454) tp_is_empty!48747 (not bm!675447) (not b!7364777) (not bm!675431) (not b!7364458) (not b!7364781) (not b!7364770) (not bm!675430) (not b!7364772) (not bm!675432) (not b!7364774) (not b!7364776) (not bm!675425))
(check-sat)
