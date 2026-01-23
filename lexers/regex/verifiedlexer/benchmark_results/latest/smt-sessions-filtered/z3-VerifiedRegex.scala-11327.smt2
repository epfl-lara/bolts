; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597704 () Bool)

(assert start!597704)

(declare-fun e!3580819 () Bool)

(declare-datatypes ((C!32072 0))(
  ( (C!32073 (val!25738 Int)) )
))
(declare-datatypes ((Regex!15901 0))(
  ( (ElementMatch!15901 (c!1034239 C!32072)) (Concat!24746 (regOne!32314 Regex!15901) (regTwo!32314 Regex!15901)) (EmptyExpr!15901) (Star!15901 (reg!16230 Regex!15901)) (EmptyLang!15901) (Union!15901 (regOne!32315 Regex!15901) (regTwo!32315 Regex!15901)) )
))
(declare-datatypes ((List!64002 0))(
  ( (Nil!63878) (Cons!63878 (h!70326 Regex!15901) (t!377357 List!64002)) )
))
(declare-datatypes ((Context!10570 0))(
  ( (Context!10571 (exprs!5785 List!64002)) )
))
(declare-fun setElem!39532 () Context!10570)

(declare-fun setNonEmpty!39532 () Bool)

(declare-fun setRes!39532 () Bool)

(declare-fun tp!1613978 () Bool)

(declare-fun inv!82999 (Context!10570) Bool)

(assert (=> setNonEmpty!39532 (= setRes!39532 (and tp!1613978 (inv!82999 setElem!39532) e!3580819))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10570))

(declare-fun setRest!39532 () (InoxSet Context!10570))

(assert (=> setNonEmpty!39532 (= z!1189 ((_ map or) (store ((as const (Array Context!10570 Bool)) false) setElem!39532 true) setRest!39532))))

(declare-fun b!5837483 () Bool)

(declare-fun e!3580817 () Bool)

(declare-fun e!3580815 () Bool)

(assert (=> b!5837483 (= e!3580817 e!3580815)))

(declare-fun res!2459462 () Bool)

(assert (=> b!5837483 (=> (not res!2459462) (not e!3580815))))

(declare-datatypes ((List!64003 0))(
  ( (Nil!63879) (Cons!63879 (h!70327 Context!10570) (t!377358 List!64003)) )
))
(declare-fun lt!2303402 () List!64003)

(declare-fun zl!343 () List!64003)

(assert (=> b!5837483 (= res!2459462 (= lt!2303402 zl!343))))

(declare-fun toList!9685 ((InoxSet Context!10570)) List!64003)

(assert (=> b!5837483 (= lt!2303402 (toList!9685 z!1189))))

(declare-fun b!5837485 () Bool)

(declare-fun e!3580813 () Bool)

(assert (=> b!5837485 (= e!3580815 (not e!3580813))))

(declare-fun res!2459463 () Bool)

(assert (=> b!5837485 (=> res!2459463 e!3580813)))

(get-info :version)

(assert (=> b!5837485 (= res!2459463 (not ((_ is Cons!63879) zl!343)))))

(declare-fun lt!2303398 () Bool)

(declare-fun r!7292 () Regex!15901)

(declare-datatypes ((List!64004 0))(
  ( (Nil!63880) (Cons!63880 (h!70328 C!32072) (t!377359 List!64004)) )
))
(declare-fun s!2326 () List!64004)

(declare-fun matchRSpec!3002 (Regex!15901 List!64004) Bool)

(assert (=> b!5837485 (= lt!2303398 (matchRSpec!3002 r!7292 s!2326))))

(declare-fun matchR!8084 (Regex!15901 List!64004) Bool)

(assert (=> b!5837485 (= lt!2303398 (matchR!8084 r!7292 s!2326))))

(declare-datatypes ((Unit!157073 0))(
  ( (Unit!157074) )
))
(declare-fun lt!2303399 () Unit!157073)

(declare-fun mainMatchTheorem!3002 (Regex!15901 List!64004) Unit!157073)

(assert (=> b!5837485 (= lt!2303399 (mainMatchTheorem!3002 r!7292 s!2326))))

(declare-fun b!5837486 () Bool)

(declare-fun e!3580811 () Bool)

(declare-fun tp_is_empty!41055 () Bool)

(declare-fun tp!1613982 () Bool)

(assert (=> b!5837486 (= e!3580811 (and tp_is_empty!41055 tp!1613982))))

(declare-fun b!5837487 () Bool)

(declare-fun e!3580818 () Bool)

(declare-fun tp!1613979 () Bool)

(assert (=> b!5837487 (= e!3580818 tp!1613979)))

(declare-fun b!5837488 () Bool)

(declare-fun tp!1613984 () Bool)

(declare-fun tp!1613977 () Bool)

(assert (=> b!5837488 (= e!3580818 (and tp!1613984 tp!1613977))))

(declare-fun b!5837489 () Bool)

(declare-fun res!2459467 () Bool)

(assert (=> b!5837489 (=> res!2459467 e!3580813)))

(declare-fun isEmpty!35744 (List!64003) Bool)

(assert (=> b!5837489 (= res!2459467 (not (isEmpty!35744 (t!377358 zl!343))))))

(declare-fun b!5837490 () Bool)

(declare-fun tp!1613981 () Bool)

(assert (=> b!5837490 (= e!3580819 tp!1613981)))

(declare-fun b!5837491 () Bool)

(declare-fun res!2459464 () Bool)

(assert (=> b!5837491 (=> res!2459464 e!3580813)))

(assert (=> b!5837491 (= res!2459464 (or ((_ is EmptyExpr!15901) r!7292) ((_ is EmptyLang!15901) r!7292) ((_ is ElementMatch!15901) r!7292) (not ((_ is Union!15901) r!7292))))))

(declare-fun b!5837492 () Bool)

(declare-fun res!2459461 () Bool)

(assert (=> b!5837492 (=> res!2459461 e!3580813)))

(assert (=> b!5837492 (= res!2459461 (not ((_ is Cons!63878) (exprs!5785 (h!70327 zl!343)))))))

(declare-fun b!5837493 () Bool)

(declare-fun e!3580814 () Bool)

(declare-fun tp!1613975 () Bool)

(assert (=> b!5837493 (= e!3580814 tp!1613975)))

(declare-fun b!5837494 () Bool)

(declare-fun res!2459469 () Bool)

(assert (=> b!5837494 (=> res!2459469 e!3580813)))

(declare-fun generalisedConcat!1498 (List!64002) Regex!15901)

(assert (=> b!5837494 (= res!2459469 (not (= r!7292 (generalisedConcat!1498 (exprs!5785 (h!70327 zl!343))))))))

(declare-fun b!5837495 () Bool)

(declare-fun tp!1613983 () Bool)

(declare-fun e!3580812 () Bool)

(assert (=> b!5837495 (= e!3580812 (and (inv!82999 (h!70327 zl!343)) e!3580814 tp!1613983))))

(declare-fun b!5837484 () Bool)

(declare-fun tp!1613980 () Bool)

(declare-fun tp!1613976 () Bool)

(assert (=> b!5837484 (= e!3580818 (and tp!1613980 tp!1613976))))

(declare-fun res!2459470 () Bool)

(assert (=> start!597704 (=> (not res!2459470) (not e!3580817))))

(declare-fun validRegex!7637 (Regex!15901) Bool)

(assert (=> start!597704 (= res!2459470 (validRegex!7637 r!7292))))

(assert (=> start!597704 e!3580817))

(assert (=> start!597704 e!3580818))

(assert (=> start!597704 e!3580811))

(declare-fun condSetEmpty!39532 () Bool)

(assert (=> start!597704 (= condSetEmpty!39532 (= z!1189 ((as const (Array Context!10570 Bool)) false)))))

(assert (=> start!597704 setRes!39532))

(assert (=> start!597704 e!3580812))

(declare-fun b!5837496 () Bool)

(declare-fun res!2459468 () Bool)

(assert (=> b!5837496 (=> (not res!2459468) (not e!3580815))))

(declare-fun unfocusZipper!1643 (List!64003) Regex!15901)

(assert (=> b!5837496 (= res!2459468 (= r!7292 (unfocusZipper!1643 zl!343)))))

(declare-fun b!5837497 () Bool)

(declare-fun e!3580816 () Bool)

(assert (=> b!5837497 (= e!3580813 e!3580816)))

(declare-fun res!2459466 () Bool)

(assert (=> b!5837497 (=> res!2459466 e!3580816)))

(declare-fun lt!2303396 () Bool)

(declare-fun lt!2303400 () Bool)

(assert (=> b!5837497 (= res!2459466 (or (not (= lt!2303398 (or lt!2303396 lt!2303400))) (not ((_ is Nil!63880) s!2326))))))

(assert (=> b!5837497 (= lt!2303400 (matchRSpec!3002 (regTwo!32315 r!7292) s!2326))))

(assert (=> b!5837497 (= lt!2303400 (matchR!8084 (regTwo!32315 r!7292) s!2326))))

(declare-fun lt!2303397 () Unit!157073)

(assert (=> b!5837497 (= lt!2303397 (mainMatchTheorem!3002 (regTwo!32315 r!7292) s!2326))))

(assert (=> b!5837497 (= lt!2303396 (matchRSpec!3002 (regOne!32315 r!7292) s!2326))))

(assert (=> b!5837497 (= lt!2303396 (matchR!8084 (regOne!32315 r!7292) s!2326))))

(declare-fun lt!2303401 () Unit!157073)

(assert (=> b!5837497 (= lt!2303401 (mainMatchTheorem!3002 (regOne!32315 r!7292) s!2326))))

(declare-fun b!5837498 () Bool)

(assert (=> b!5837498 (= e!3580816 (= r!7292 (unfocusZipper!1643 lt!2303402)))))

(declare-fun setIsEmpty!39532 () Bool)

(assert (=> setIsEmpty!39532 setRes!39532))

(declare-fun b!5837499 () Bool)

(declare-fun res!2459465 () Bool)

(assert (=> b!5837499 (=> res!2459465 e!3580813)))

(declare-fun generalisedUnion!1745 (List!64002) Regex!15901)

(declare-fun unfocusZipperList!1322 (List!64003) List!64002)

(assert (=> b!5837499 (= res!2459465 (not (= r!7292 (generalisedUnion!1745 (unfocusZipperList!1322 zl!343)))))))

(declare-fun b!5837500 () Bool)

(assert (=> b!5837500 (= e!3580818 tp_is_empty!41055)))

(assert (= (and start!597704 res!2459470) b!5837483))

(assert (= (and b!5837483 res!2459462) b!5837496))

(assert (= (and b!5837496 res!2459468) b!5837485))

(assert (= (and b!5837485 (not res!2459463)) b!5837489))

(assert (= (and b!5837489 (not res!2459467)) b!5837494))

(assert (= (and b!5837494 (not res!2459469)) b!5837492))

(assert (= (and b!5837492 (not res!2459461)) b!5837499))

(assert (= (and b!5837499 (not res!2459465)) b!5837491))

(assert (= (and b!5837491 (not res!2459464)) b!5837497))

(assert (= (and b!5837497 (not res!2459466)) b!5837498))

(assert (= (and start!597704 ((_ is ElementMatch!15901) r!7292)) b!5837500))

(assert (= (and start!597704 ((_ is Concat!24746) r!7292)) b!5837484))

(assert (= (and start!597704 ((_ is Star!15901) r!7292)) b!5837487))

(assert (= (and start!597704 ((_ is Union!15901) r!7292)) b!5837488))

(assert (= (and start!597704 ((_ is Cons!63880) s!2326)) b!5837486))

(assert (= (and start!597704 condSetEmpty!39532) setIsEmpty!39532))

(assert (= (and start!597704 (not condSetEmpty!39532)) setNonEmpty!39532))

(assert (= setNonEmpty!39532 b!5837490))

(assert (= b!5837495 b!5837493))

(assert (= (and start!597704 ((_ is Cons!63879) zl!343)) b!5837495))

(declare-fun m!6763330 () Bool)

(assert (=> setNonEmpty!39532 m!6763330))

(declare-fun m!6763332 () Bool)

(assert (=> b!5837498 m!6763332))

(declare-fun m!6763334 () Bool)

(assert (=> b!5837483 m!6763334))

(declare-fun m!6763336 () Bool)

(assert (=> b!5837499 m!6763336))

(assert (=> b!5837499 m!6763336))

(declare-fun m!6763338 () Bool)

(assert (=> b!5837499 m!6763338))

(declare-fun m!6763340 () Bool)

(assert (=> start!597704 m!6763340))

(declare-fun m!6763342 () Bool)

(assert (=> b!5837494 m!6763342))

(declare-fun m!6763344 () Bool)

(assert (=> b!5837496 m!6763344))

(declare-fun m!6763346 () Bool)

(assert (=> b!5837495 m!6763346))

(declare-fun m!6763348 () Bool)

(assert (=> b!5837497 m!6763348))

(declare-fun m!6763350 () Bool)

(assert (=> b!5837497 m!6763350))

(declare-fun m!6763352 () Bool)

(assert (=> b!5837497 m!6763352))

(declare-fun m!6763354 () Bool)

(assert (=> b!5837497 m!6763354))

(declare-fun m!6763356 () Bool)

(assert (=> b!5837497 m!6763356))

(declare-fun m!6763358 () Bool)

(assert (=> b!5837497 m!6763358))

(declare-fun m!6763360 () Bool)

(assert (=> b!5837489 m!6763360))

(declare-fun m!6763362 () Bool)

(assert (=> b!5837485 m!6763362))

(declare-fun m!6763364 () Bool)

(assert (=> b!5837485 m!6763364))

(declare-fun m!6763366 () Bool)

(assert (=> b!5837485 m!6763366))

(check-sat (not b!5837485) (not b!5837498) (not b!5837488) (not start!597704) (not b!5837496) (not b!5837484) (not b!5837483) (not b!5837486) (not b!5837494) (not b!5837493) (not b!5837490) (not b!5837497) tp_is_empty!41055 (not b!5837499) (not b!5837487) (not setNonEmpty!39532) (not b!5837489) (not b!5837495))
(check-sat)
