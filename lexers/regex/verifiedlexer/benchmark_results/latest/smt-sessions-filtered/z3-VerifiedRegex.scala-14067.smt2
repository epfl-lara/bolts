; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741954 () Bool)

(assert start!741954)

(declare-fun b!7819481 () Bool)

(declare-fun e!4626622 () Bool)

(declare-fun tp!2307435 () Bool)

(declare-fun tp!2307439 () Bool)

(assert (=> b!7819481 (= e!4626622 (and tp!2307435 tp!2307439))))

(declare-fun b!7819482 () Bool)

(declare-fun res!3112408 () Bool)

(declare-fun e!4626625 () Bool)

(assert (=> b!7819482 (=> (not res!3112408) (not e!4626625))))

(declare-datatypes ((C!42184 0))(
  ( (C!42185 (val!31532 Int)) )
))
(declare-datatypes ((List!73766 0))(
  ( (Nil!73642) (Cons!73642 (h!80090 C!42184) (t!388501 List!73766)) )
))
(declare-fun s1Rec!453 () List!73766)

(declare-fun s1!4101 () List!73766)

(declare-fun isPrefix!6279 (List!73766 List!73766) Bool)

(assert (=> b!7819482 (= res!3112408 (isPrefix!6279 s1Rec!453 s1!4101))))

(declare-fun b!7819483 () Bool)

(declare-fun res!3112409 () Bool)

(assert (=> b!7819483 (=> (not res!3112409) (not e!4626625))))

(declare-datatypes ((Regex!20929 0))(
  ( (ElementMatch!20929 (c!1439278 C!42184)) (Concat!29774 (regOne!42370 Regex!20929) (regTwo!42370 Regex!20929)) (EmptyExpr!20929) (Star!20929 (reg!21258 Regex!20929)) (EmptyLang!20929) (Union!20929 (regOne!42371 Regex!20929) (regTwo!42371 Regex!20929)) )
))
(declare-fun r1!6261 () Regex!20929)

(declare-fun matchR!10385 (Regex!20929 List!73766) Bool)

(assert (=> b!7819483 (= res!3112409 (matchR!10385 r1!6261 s1!4101))))

(declare-fun b!7819484 () Bool)

(declare-fun tp!2307443 () Bool)

(declare-fun tp!2307446 () Bool)

(assert (=> b!7819484 (= e!4626622 (and tp!2307443 tp!2307446))))

(declare-fun b!7819485 () Bool)

(declare-fun e!4626620 () Bool)

(declare-fun tp_is_empty!52213 () Bool)

(assert (=> b!7819485 (= e!4626620 tp_is_empty!52213)))

(declare-fun b!7819486 () Bool)

(declare-fun res!3112406 () Bool)

(assert (=> b!7819486 (=> (not res!3112406) (not e!4626625))))

(declare-fun r2!6199 () Regex!20929)

(declare-fun validRegex!11343 (Regex!20929) Bool)

(assert (=> b!7819486 (= res!3112406 (validRegex!11343 r2!6199))))

(declare-fun b!7819487 () Bool)

(declare-fun e!4626624 () Bool)

(declare-fun tp!2307444 () Bool)

(assert (=> b!7819487 (= e!4626624 (and tp_is_empty!52213 tp!2307444))))

(declare-fun b!7819488 () Bool)

(declare-fun e!4626623 () Bool)

(declare-fun tp!2307442 () Bool)

(assert (=> b!7819488 (= e!4626623 (and tp_is_empty!52213 tp!2307442))))

(declare-fun res!3112412 () Bool)

(assert (=> start!741954 (=> (not res!3112412) (not e!4626625))))

(assert (=> start!741954 (= res!3112412 (validRegex!11343 r1!6261))))

(assert (=> start!741954 e!4626625))

(assert (=> start!741954 e!4626620))

(declare-fun e!4626619 () Bool)

(assert (=> start!741954 e!4626619))

(declare-fun e!4626618 () Bool)

(assert (=> start!741954 e!4626618))

(assert (=> start!741954 e!4626623))

(declare-fun e!4626621 () Bool)

(assert (=> start!741954 e!4626621))

(assert (=> start!741954 e!4626622))

(assert (=> start!741954 e!4626624))

(declare-fun b!7819489 () Bool)

(declare-fun tp!2307440 () Bool)

(declare-fun tp!2307438 () Bool)

(assert (=> b!7819489 (= e!4626620 (and tp!2307440 tp!2307438))))

(declare-fun b!7819490 () Bool)

(declare-fun tp!2307434 () Bool)

(assert (=> b!7819490 (= e!4626620 tp!2307434)))

(declare-fun b!7819491 () Bool)

(assert (=> b!7819491 (= e!4626625 false)))

(declare-fun lt!2676126 () Bool)

(declare-fun s2Rec!453 () List!73766)

(assert (=> b!7819491 (= lt!2676126 (matchR!10385 r2!6199 s2Rec!453))))

(declare-fun b!7819492 () Bool)

(declare-fun res!3112407 () Bool)

(assert (=> b!7819492 (=> (not res!3112407) (not e!4626625))))

(assert (=> b!7819492 (= res!3112407 (matchR!10385 r1!6261 s1Rec!453))))

(declare-fun b!7819493 () Bool)

(declare-fun tp!2307447 () Bool)

(assert (=> b!7819493 (= e!4626618 (and tp_is_empty!52213 tp!2307447))))

(declare-fun b!7819494 () Bool)

(declare-fun tp!2307433 () Bool)

(assert (=> b!7819494 (= e!4626622 tp!2307433)))

(declare-fun b!7819495 () Bool)

(declare-fun res!3112410 () Bool)

(assert (=> b!7819495 (=> (not res!3112410) (not e!4626625))))

(declare-fun s2!3721 () List!73766)

(declare-fun s!14274 () List!73766)

(declare-fun ++!17963 (List!73766 List!73766) List!73766)

(assert (=> b!7819495 (= res!3112410 (= (++!17963 s1!4101 s2!3721) s!14274))))

(declare-fun b!7819496 () Bool)

(assert (=> b!7819496 (= e!4626622 tp_is_empty!52213)))

(declare-fun b!7819497 () Bool)

(declare-fun tp!2307437 () Bool)

(assert (=> b!7819497 (= e!4626621 (and tp_is_empty!52213 tp!2307437))))

(declare-fun b!7819498 () Bool)

(declare-fun tp!2307441 () Bool)

(declare-fun tp!2307436 () Bool)

(assert (=> b!7819498 (= e!4626620 (and tp!2307441 tp!2307436))))

(declare-fun b!7819499 () Bool)

(declare-fun res!3112405 () Bool)

(assert (=> b!7819499 (=> (not res!3112405) (not e!4626625))))

(assert (=> b!7819499 (= res!3112405 (= (++!17963 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7819500 () Bool)

(declare-fun tp!2307445 () Bool)

(assert (=> b!7819500 (= e!4626619 (and tp_is_empty!52213 tp!2307445))))

(declare-fun b!7819501 () Bool)

(declare-fun res!3112411 () Bool)

(assert (=> b!7819501 (=> (not res!3112411) (not e!4626625))))

(assert (=> b!7819501 (= res!3112411 (matchR!10385 r2!6199 s2!3721))))

(assert (= (and start!741954 res!3112412) b!7819486))

(assert (= (and b!7819486 res!3112406) b!7819495))

(assert (= (and b!7819495 res!3112410) b!7819482))

(assert (= (and b!7819482 res!3112408) b!7819499))

(assert (= (and b!7819499 res!3112405) b!7819483))

(assert (= (and b!7819483 res!3112409) b!7819501))

(assert (= (and b!7819501 res!3112411) b!7819492))

(assert (= (and b!7819492 res!3112407) b!7819491))

(get-info :version)

(assert (= (and start!741954 ((_ is ElementMatch!20929) r2!6199)) b!7819485))

(assert (= (and start!741954 ((_ is Concat!29774) r2!6199)) b!7819489))

(assert (= (and start!741954 ((_ is Star!20929) r2!6199)) b!7819490))

(assert (= (and start!741954 ((_ is Union!20929) r2!6199)) b!7819498))

(assert (= (and start!741954 ((_ is Cons!73642) s1!4101)) b!7819500))

(assert (= (and start!741954 ((_ is Cons!73642) s2!3721)) b!7819493))

(assert (= (and start!741954 ((_ is Cons!73642) s2Rec!453)) b!7819488))

(assert (= (and start!741954 ((_ is Cons!73642) s!14274)) b!7819497))

(assert (= (and start!741954 ((_ is ElementMatch!20929) r1!6261)) b!7819496))

(assert (= (and start!741954 ((_ is Concat!29774) r1!6261)) b!7819481))

(assert (= (and start!741954 ((_ is Star!20929) r1!6261)) b!7819494))

(assert (= (and start!741954 ((_ is Union!20929) r1!6261)) b!7819484))

(assert (= (and start!741954 ((_ is Cons!73642) s1Rec!453)) b!7819487))

(declare-fun m!8244504 () Bool)

(assert (=> b!7819483 m!8244504))

(declare-fun m!8244506 () Bool)

(assert (=> b!7819501 m!8244506))

(declare-fun m!8244508 () Bool)

(assert (=> b!7819491 m!8244508))

(declare-fun m!8244510 () Bool)

(assert (=> b!7819486 m!8244510))

(declare-fun m!8244512 () Bool)

(assert (=> start!741954 m!8244512))

(declare-fun m!8244514 () Bool)

(assert (=> b!7819495 m!8244514))

(declare-fun m!8244516 () Bool)

(assert (=> b!7819482 m!8244516))

(declare-fun m!8244518 () Bool)

(assert (=> b!7819492 m!8244518))

(declare-fun m!8244520 () Bool)

(assert (=> b!7819499 m!8244520))

(check-sat (not b!7819483) (not b!7819486) (not b!7819489) (not b!7819501) tp_is_empty!52213 (not b!7819495) (not b!7819500) (not b!7819499) (not b!7819492) (not start!741954) (not b!7819493) (not b!7819488) (not b!7819482) (not b!7819491) (not b!7819487) (not b!7819481) (not b!7819490) (not b!7819497) (not b!7819494) (not b!7819484) (not b!7819498))
(check-sat)
