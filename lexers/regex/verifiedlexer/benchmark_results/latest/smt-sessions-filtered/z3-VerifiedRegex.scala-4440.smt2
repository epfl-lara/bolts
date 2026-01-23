; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!236152 () Bool)

(assert start!236152)

(declare-fun res!1023320 () Bool)

(declare-fun e!1534100 () Bool)

(assert (=> start!236152 (=> (not res!1023320) (not e!1534100))))

(declare-datatypes ((C!14304 0))(
  ( (C!14305 (val!8394 Int)) )
))
(declare-datatypes ((Regex!7073 0))(
  ( (ElementMatch!7073 (c!383837 C!14304)) (Concat!11709 (regOne!14658 Regex!7073) (regTwo!14658 Regex!7073)) (EmptyExpr!7073) (Star!7073 (reg!7402 Regex!7073)) (EmptyLang!7073) (Union!7073 (regOne!14659 Regex!7073) (regTwo!14659 Regex!7073)) )
))
(declare-datatypes ((List!28384 0))(
  ( (Nil!28286) (Cons!28286 (h!33687 Regex!7073) (t!208361 List!28384)) )
))
(declare-fun l!9164 () List!28384)

(declare-fun lambda!90691 () Int)

(declare-fun forall!5707 (List!28384 Int) Bool)

(assert (=> start!236152 (= res!1023320 (forall!5707 l!9164 lambda!90691))))

(assert (=> start!236152 e!1534100))

(declare-fun e!1534094 () Bool)

(assert (=> start!236152 e!1534094))

(declare-fun e!1534093 () Bool)

(assert (=> start!236152 e!1534093))

(declare-fun e!1534099 () Bool)

(assert (=> start!236152 e!1534099))

(declare-fun b!2409545 () Bool)

(declare-fun tp!766663 () Bool)

(assert (=> b!2409545 (= e!1534093 tp!766663)))

(declare-fun b!2409546 () Bool)

(declare-fun e!1534098 () Bool)

(assert (=> b!2409546 (= e!1534100 (not e!1534098))))

(declare-fun res!1023324 () Bool)

(assert (=> b!2409546 (=> res!1023324 e!1534098)))

(declare-fun r!13927 () Regex!7073)

(get-info :version)

(assert (=> b!2409546 (= res!1023324 (or ((_ is Concat!11709) r!13927) ((_ is EmptyExpr!7073) r!13927)))))

(declare-datatypes ((List!28385 0))(
  ( (Nil!28287) (Cons!28287 (h!33688 C!14304) (t!208362 List!28385)) )
))
(declare-fun s!9460 () List!28385)

(declare-fun matchR!3190 (Regex!7073 List!28385) Bool)

(declare-fun matchRSpec!922 (Regex!7073 List!28385) Bool)

(assert (=> b!2409546 (= (matchR!3190 r!13927 s!9460) (matchRSpec!922 r!13927 s!9460))))

(declare-datatypes ((Unit!41417 0))(
  ( (Unit!41418) )
))
(declare-fun lt!873348 () Unit!41417)

(declare-fun mainMatchTheorem!922 (Regex!7073 List!28385) Unit!41417)

(assert (=> b!2409546 (= lt!873348 (mainMatchTheorem!922 r!13927 s!9460))))

(declare-fun b!2409547 () Bool)

(declare-fun e!1534096 () Bool)

(declare-fun lt!873349 () Regex!7073)

(assert (=> b!2409547 (= e!1534096 (matchR!3190 lt!873349 s!9460))))

(declare-fun b!2409548 () Bool)

(declare-fun e!1534095 () Bool)

(assert (=> b!2409548 (= e!1534095 true)))

(assert (=> b!2409548 e!1534096))

(declare-fun res!1023323 () Bool)

(assert (=> b!2409548 (=> (not res!1023323) (not e!1534096))))

(declare-fun ++!7002 (List!28385 List!28385) List!28385)

(assert (=> b!2409548 (= res!1023323 (matchR!3190 lt!873349 (++!7002 s!9460 Nil!28287)))))

(declare-fun lt!873347 () Regex!7073)

(assert (=> b!2409548 (= lt!873349 (Concat!11709 lt!873347 EmptyExpr!7073))))

(declare-fun lt!873346 () Unit!41417)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!72 (Regex!7073 Regex!7073 List!28385 List!28385) Unit!41417)

(assert (=> b!2409548 (= lt!873346 (lemmaTwoRegexMatchThenConcatMatchesConcatString!72 lt!873347 EmptyExpr!7073 s!9460 Nil!28287))))

(declare-fun b!2409549 () Bool)

(declare-fun tp!766662 () Bool)

(declare-fun tp!766668 () Bool)

(assert (=> b!2409549 (= e!1534094 (and tp!766662 tp!766668))))

(declare-fun b!2409550 () Bool)

(declare-fun tp!766665 () Bool)

(declare-fun tp!766669 () Bool)

(assert (=> b!2409550 (= e!1534093 (and tp!766665 tp!766669))))

(declare-fun b!2409551 () Bool)

(declare-fun res!1023319 () Bool)

(declare-fun e!1534097 () Bool)

(assert (=> b!2409551 (=> res!1023319 e!1534097)))

(declare-fun lt!873350 () List!28384)

(declare-fun generalisedConcat!174 (List!28384) Regex!7073)

(assert (=> b!2409551 (= res!1023319 (not (= (generalisedConcat!174 lt!873350) EmptyExpr!7073)))))

(declare-fun b!2409552 () Bool)

(declare-fun tp_is_empty!11559 () Bool)

(assert (=> b!2409552 (= e!1534093 tp_is_empty!11559)))

(declare-fun b!2409553 () Bool)

(assert (=> b!2409553 (= e!1534098 e!1534097)))

(declare-fun res!1023322 () Bool)

(assert (=> b!2409553 (=> res!1023322 e!1534097)))

(declare-fun isEmpty!16288 (List!28384) Bool)

(assert (=> b!2409553 (= res!1023322 (not (isEmpty!16288 lt!873350)))))

(declare-fun tail!3638 (List!28384) List!28384)

(assert (=> b!2409553 (= lt!873350 (tail!3638 l!9164))))

(declare-fun b!2409554 () Bool)

(declare-fun res!1023321 () Bool)

(assert (=> b!2409554 (=> res!1023321 e!1534098)))

(assert (=> b!2409554 (= res!1023321 (isEmpty!16288 l!9164))))

(declare-fun b!2409555 () Bool)

(assert (=> b!2409555 (= e!1534097 e!1534095)))

(declare-fun res!1023318 () Bool)

(assert (=> b!2409555 (=> res!1023318 e!1534095)))

(assert (=> b!2409555 (= res!1023318 (not (matchR!3190 lt!873347 s!9460)))))

(declare-fun head!5366 (List!28384) Regex!7073)

(assert (=> b!2409555 (= lt!873347 (head!5366 l!9164))))

(declare-fun b!2409556 () Bool)

(declare-fun res!1023317 () Bool)

(assert (=> b!2409556 (=> (not res!1023317) (not e!1534100))))

(assert (=> b!2409556 (= res!1023317 (= r!13927 (generalisedConcat!174 l!9164)))))

(declare-fun b!2409557 () Bool)

(declare-fun tp!766666 () Bool)

(declare-fun tp!766664 () Bool)

(assert (=> b!2409557 (= e!1534093 (and tp!766666 tp!766664))))

(declare-fun b!2409558 () Bool)

(declare-fun tp!766667 () Bool)

(assert (=> b!2409558 (= e!1534099 (and tp_is_empty!11559 tp!766667))))

(assert (= (and start!236152 res!1023320) b!2409556))

(assert (= (and b!2409556 res!1023317) b!2409546))

(assert (= (and b!2409546 (not res!1023324)) b!2409554))

(assert (= (and b!2409554 (not res!1023321)) b!2409553))

(assert (= (and b!2409553 (not res!1023322)) b!2409551))

(assert (= (and b!2409551 (not res!1023319)) b!2409555))

(assert (= (and b!2409555 (not res!1023318)) b!2409548))

(assert (= (and b!2409548 res!1023323) b!2409547))

(assert (= (and start!236152 ((_ is Cons!28286) l!9164)) b!2409549))

(assert (= (and start!236152 ((_ is ElementMatch!7073) r!13927)) b!2409552))

(assert (= (and start!236152 ((_ is Concat!11709) r!13927)) b!2409557))

(assert (= (and start!236152 ((_ is Star!7073) r!13927)) b!2409545))

(assert (= (and start!236152 ((_ is Union!7073) r!13927)) b!2409550))

(assert (= (and start!236152 ((_ is Cons!28287) s!9460)) b!2409558))

(declare-fun m!2801457 () Bool)

(assert (=> b!2409554 m!2801457))

(declare-fun m!2801459 () Bool)

(assert (=> b!2409548 m!2801459))

(assert (=> b!2409548 m!2801459))

(declare-fun m!2801461 () Bool)

(assert (=> b!2409548 m!2801461))

(declare-fun m!2801463 () Bool)

(assert (=> b!2409548 m!2801463))

(declare-fun m!2801465 () Bool)

(assert (=> start!236152 m!2801465))

(declare-fun m!2801467 () Bool)

(assert (=> b!2409556 m!2801467))

(declare-fun m!2801469 () Bool)

(assert (=> b!2409555 m!2801469))

(declare-fun m!2801471 () Bool)

(assert (=> b!2409555 m!2801471))

(declare-fun m!2801473 () Bool)

(assert (=> b!2409546 m!2801473))

(declare-fun m!2801475 () Bool)

(assert (=> b!2409546 m!2801475))

(declare-fun m!2801477 () Bool)

(assert (=> b!2409546 m!2801477))

(declare-fun m!2801479 () Bool)

(assert (=> b!2409553 m!2801479))

(declare-fun m!2801481 () Bool)

(assert (=> b!2409553 m!2801481))

(declare-fun m!2801483 () Bool)

(assert (=> b!2409547 m!2801483))

(declare-fun m!2801485 () Bool)

(assert (=> b!2409551 m!2801485))

(check-sat (not b!2409555) (not b!2409551) (not b!2409554) (not b!2409556) (not start!236152) (not b!2409553) (not b!2409557) (not b!2409547) (not b!2409548) (not b!2409546) (not b!2409545) (not b!2409558) (not b!2409549) tp_is_empty!11559 (not b!2409550))
(check-sat)
