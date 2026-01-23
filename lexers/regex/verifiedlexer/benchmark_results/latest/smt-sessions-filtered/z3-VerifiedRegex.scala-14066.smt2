; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741950 () Bool)

(assert start!741950)

(declare-fun b!7819356 () Bool)

(declare-fun e!4626571 () Bool)

(declare-fun tp!2307349 () Bool)

(assert (=> b!7819356 (= e!4626571 tp!2307349)))

(declare-fun b!7819357 () Bool)

(declare-fun e!4626572 () Bool)

(assert (=> b!7819357 (= e!4626572 false)))

(declare-fun lt!2676120 () Bool)

(declare-datatypes ((C!42180 0))(
  ( (C!42181 (val!31530 Int)) )
))
(declare-datatypes ((Regex!20927 0))(
  ( (ElementMatch!20927 (c!1439276 C!42180)) (Concat!29772 (regOne!42366 Regex!20927) (regTwo!42366 Regex!20927)) (EmptyExpr!20927) (Star!20927 (reg!21256 Regex!20927)) (EmptyLang!20927) (Union!20927 (regOne!42367 Regex!20927) (regTwo!42367 Regex!20927)) )
))
(declare-fun r1!6261 () Regex!20927)

(declare-datatypes ((List!73764 0))(
  ( (Nil!73640) (Cons!73640 (h!80088 C!42180) (t!388499 List!73764)) )
))
(declare-fun s1Rec!453 () List!73764)

(declare-fun matchR!10383 (Regex!20927 List!73764) Bool)

(assert (=> b!7819357 (= lt!2676120 (matchR!10383 r1!6261 s1Rec!453))))

(declare-fun b!7819358 () Bool)

(declare-fun e!4626577 () Bool)

(declare-fun tp_is_empty!52209 () Bool)

(declare-fun tp!2307354 () Bool)

(assert (=> b!7819358 (= e!4626577 (and tp_is_empty!52209 tp!2307354))))

(declare-fun b!7819359 () Bool)

(declare-fun e!4626576 () Bool)

(declare-fun tp!2307353 () Bool)

(declare-fun tp!2307345 () Bool)

(assert (=> b!7819359 (= e!4626576 (and tp!2307353 tp!2307345))))

(declare-fun b!7819360 () Bool)

(declare-fun e!4626570 () Bool)

(declare-fun tp!2307344 () Bool)

(assert (=> b!7819360 (= e!4626570 (and tp_is_empty!52209 tp!2307344))))

(declare-fun b!7819361 () Bool)

(declare-fun e!4626573 () Bool)

(declare-fun tp!2307351 () Bool)

(assert (=> b!7819361 (= e!4626573 (and tp_is_empty!52209 tp!2307351))))

(declare-fun b!7819362 () Bool)

(declare-fun e!4626575 () Bool)

(declare-fun tp!2307347 () Bool)

(assert (=> b!7819362 (= e!4626575 (and tp_is_empty!52209 tp!2307347))))

(declare-fun b!7819363 () Bool)

(declare-fun tp!2307350 () Bool)

(declare-fun tp!2307355 () Bool)

(assert (=> b!7819363 (= e!4626571 (and tp!2307350 tp!2307355))))

(declare-fun b!7819364 () Bool)

(declare-fun tp!2307348 () Bool)

(assert (=> b!7819364 (= e!4626576 tp!2307348)))

(declare-fun b!7819366 () Bool)

(declare-fun res!3112362 () Bool)

(assert (=> b!7819366 (=> (not res!3112362) (not e!4626572))))

(declare-fun s2Rec!453 () List!73764)

(declare-fun s!14274 () List!73764)

(declare-fun ++!17961 (List!73764 List!73764) List!73764)

(assert (=> b!7819366 (= res!3112362 (= (++!17961 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7819367 () Bool)

(declare-fun tp!2307346 () Bool)

(declare-fun tp!2307356 () Bool)

(assert (=> b!7819367 (= e!4626571 (and tp!2307346 tp!2307356))))

(declare-fun b!7819368 () Bool)

(declare-fun res!3112359 () Bool)

(assert (=> b!7819368 (=> (not res!3112359) (not e!4626572))))

(declare-fun r2!6199 () Regex!20927)

(declare-fun s2!3721 () List!73764)

(assert (=> b!7819368 (= res!3112359 (matchR!10383 r2!6199 s2!3721))))

(declare-fun b!7819369 () Bool)

(declare-fun tp!2307343 () Bool)

(declare-fun tp!2307352 () Bool)

(assert (=> b!7819369 (= e!4626576 (and tp!2307343 tp!2307352))))

(declare-fun b!7819370 () Bool)

(declare-fun res!3112364 () Bool)

(assert (=> b!7819370 (=> (not res!3112364) (not e!4626572))))

(declare-fun validRegex!11341 (Regex!20927) Bool)

(assert (=> b!7819370 (= res!3112364 (validRegex!11341 r2!6199))))

(declare-fun b!7819371 () Bool)

(declare-fun res!3112361 () Bool)

(assert (=> b!7819371 (=> (not res!3112361) (not e!4626572))))

(declare-fun s1!4101 () List!73764)

(assert (=> b!7819371 (= res!3112361 (matchR!10383 r1!6261 s1!4101))))

(declare-fun b!7819372 () Bool)

(declare-fun e!4626574 () Bool)

(declare-fun tp!2307357 () Bool)

(assert (=> b!7819372 (= e!4626574 (and tp_is_empty!52209 tp!2307357))))

(declare-fun b!7819373 () Bool)

(assert (=> b!7819373 (= e!4626576 tp_is_empty!52209)))

(declare-fun b!7819374 () Bool)

(declare-fun res!3112363 () Bool)

(assert (=> b!7819374 (=> (not res!3112363) (not e!4626572))))

(assert (=> b!7819374 (= res!3112363 (= (++!17961 s1!4101 s2!3721) s!14274))))

(declare-fun b!7819375 () Bool)

(declare-fun res!3112360 () Bool)

(assert (=> b!7819375 (=> (not res!3112360) (not e!4626572))))

(declare-fun isPrefix!6277 (List!73764 List!73764) Bool)

(assert (=> b!7819375 (= res!3112360 (isPrefix!6277 s1Rec!453 s1!4101))))

(declare-fun res!3112358 () Bool)

(assert (=> start!741950 (=> (not res!3112358) (not e!4626572))))

(assert (=> start!741950 (= res!3112358 (validRegex!11341 r1!6261))))

(assert (=> start!741950 e!4626572))

(assert (=> start!741950 e!4626571))

(assert (=> start!741950 e!4626570))

(assert (=> start!741950 e!4626577))

(assert (=> start!741950 e!4626574))

(assert (=> start!741950 e!4626575))

(assert (=> start!741950 e!4626576))

(assert (=> start!741950 e!4626573))

(declare-fun b!7819365 () Bool)

(assert (=> b!7819365 (= e!4626571 tp_is_empty!52209)))

(assert (= (and start!741950 res!3112358) b!7819370))

(assert (= (and b!7819370 res!3112364) b!7819374))

(assert (= (and b!7819374 res!3112363) b!7819375))

(assert (= (and b!7819375 res!3112360) b!7819366))

(assert (= (and b!7819366 res!3112362) b!7819371))

(assert (= (and b!7819371 res!3112361) b!7819368))

(assert (= (and b!7819368 res!3112359) b!7819357))

(get-info :version)

(assert (= (and start!741950 ((_ is ElementMatch!20927) r2!6199)) b!7819365))

(assert (= (and start!741950 ((_ is Concat!29772) r2!6199)) b!7819363))

(assert (= (and start!741950 ((_ is Star!20927) r2!6199)) b!7819356))

(assert (= (and start!741950 ((_ is Union!20927) r2!6199)) b!7819367))

(assert (= (and start!741950 ((_ is Cons!73640) s1!4101)) b!7819360))

(assert (= (and start!741950 ((_ is Cons!73640) s2!3721)) b!7819358))

(assert (= (and start!741950 ((_ is Cons!73640) s2Rec!453)) b!7819372))

(assert (= (and start!741950 ((_ is Cons!73640) s!14274)) b!7819362))

(assert (= (and start!741950 ((_ is ElementMatch!20927) r1!6261)) b!7819373))

(assert (= (and start!741950 ((_ is Concat!29772) r1!6261)) b!7819359))

(assert (= (and start!741950 ((_ is Star!20927) r1!6261)) b!7819364))

(assert (= (and start!741950 ((_ is Union!20927) r1!6261)) b!7819369))

(assert (= (and start!741950 ((_ is Cons!73640) s1Rec!453)) b!7819361))

(declare-fun m!8244470 () Bool)

(assert (=> b!7819368 m!8244470))

(declare-fun m!8244472 () Bool)

(assert (=> b!7819357 m!8244472))

(declare-fun m!8244474 () Bool)

(assert (=> b!7819370 m!8244474))

(declare-fun m!8244476 () Bool)

(assert (=> b!7819371 m!8244476))

(declare-fun m!8244478 () Bool)

(assert (=> b!7819366 m!8244478))

(declare-fun m!8244480 () Bool)

(assert (=> b!7819374 m!8244480))

(declare-fun m!8244482 () Bool)

(assert (=> start!741950 m!8244482))

(declare-fun m!8244484 () Bool)

(assert (=> b!7819375 m!8244484))

(check-sat (not b!7819370) (not b!7819371) (not b!7819359) (not b!7819367) (not start!741950) (not b!7819357) (not b!7819363) (not b!7819358) (not b!7819366) (not b!7819369) (not b!7819364) tp_is_empty!52209 (not b!7819374) (not b!7819362) (not b!7819360) (not b!7819356) (not b!7819372) (not b!7819368) (not b!7819375) (not b!7819361))
(check-sat)
