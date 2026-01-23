; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740570 () Bool)

(assert start!740570)

(declare-fun b!7781466 () Bool)

(declare-fun e!4609485 () Bool)

(declare-fun e!4609482 () Bool)

(assert (=> b!7781466 (= e!4609485 e!4609482)))

(declare-fun res!3101754 () Bool)

(assert (=> b!7781466 (=> (not res!3101754) (not e!4609482))))

(declare-datatypes ((C!41980 0))(
  ( (C!41981 (val!31430 Int)) )
))
(declare-datatypes ((Regex!20827 0))(
  ( (ElementMatch!20827 (c!1433808 C!41980)) (Concat!29672 (regOne!42166 Regex!20827) (regTwo!42166 Regex!20827)) (EmptyExpr!20827) (Star!20827 (reg!21156 Regex!20827)) (EmptyLang!20827) (Union!20827 (regOne!42167 Regex!20827) (regTwo!42167 Regex!20827)) )
))
(declare-fun lt!2673113 () Regex!20827)

(declare-fun lt!2673114 () Regex!20827)

(assert (=> b!7781466 (= res!3101754 (= lt!2673113 (Union!20827 lt!2673114 EmptyLang!20827)))))

(declare-fun lt!2673117 () Regex!20827)

(declare-fun r2!6217 () Regex!20827)

(assert (=> b!7781466 (= lt!2673114 (Concat!29672 lt!2673117 r2!6217))))

(declare-fun r1!6279 () Regex!20827)

(declare-datatypes ((List!73666 0))(
  ( (Nil!73542) (Cons!73542 (h!79990 C!41980) (t!388401 List!73666)) )
))
(declare-fun s!14292 () List!73666)

(declare-fun derivativeStep!6170 (Regex!20827 C!41980) Regex!20827)

(assert (=> b!7781466 (= lt!2673117 (derivativeStep!6170 r1!6279 (h!79990 s!14292)))))

(declare-fun b!7781467 () Bool)

(declare-fun res!3101755 () Bool)

(declare-fun e!4609479 () Bool)

(assert (=> b!7781467 (=> (not res!3101755) (not e!4609479))))

(declare-fun validRegex!11241 (Regex!20827) Bool)

(assert (=> b!7781467 (= res!3101755 (validRegex!11241 r2!6217))))

(declare-fun b!7781468 () Bool)

(declare-fun res!3101752 () Bool)

(declare-fun e!4609477 () Bool)

(assert (=> b!7781468 (=> (not res!3101752) (not e!4609477))))

(get-info :version)

(assert (=> b!7781468 (= res!3101752 ((_ is Cons!73542) s!14292))))

(declare-fun b!7781469 () Bool)

(declare-fun e!4609481 () Bool)

(declare-fun tp!2287158 () Bool)

(assert (=> b!7781469 (= e!4609481 tp!2287158)))

(declare-fun b!7781470 () Bool)

(declare-fun e!4609484 () Bool)

(declare-fun tp_is_empty!52009 () Bool)

(declare-fun tp!2287162 () Bool)

(assert (=> b!7781470 (= e!4609484 (and tp_is_empty!52009 tp!2287162))))

(declare-fun b!7781471 () Bool)

(assert (=> b!7781471 (= e!4609477 e!4609485)))

(declare-fun res!3101747 () Bool)

(assert (=> b!7781471 (=> (not res!3101747) (not e!4609485))))

(declare-fun matchR!10287 (Regex!20827 List!73666) Bool)

(assert (=> b!7781471 (= res!3101747 (matchR!10287 lt!2673113 (t!388401 s!14292)))))

(declare-fun lt!2673108 () Regex!20827)

(assert (=> b!7781471 (= lt!2673113 (derivativeStep!6170 lt!2673108 (h!79990 s!14292)))))

(declare-fun b!7781472 () Bool)

(declare-fun res!3101751 () Bool)

(declare-fun e!4609480 () Bool)

(assert (=> b!7781472 (=> res!3101751 e!4609480)))

(declare-fun ++!17921 (List!73666 List!73666) List!73666)

(assert (=> b!7781472 (= res!3101751 (not (= (++!17921 Nil!73542 s!14292) s!14292)))))

(declare-fun b!7781473 () Bool)

(assert (=> b!7781473 (= e!4609480 true)))

(declare-fun lt!2673111 () Bool)

(declare-datatypes ((tuple2!69908 0))(
  ( (tuple2!69909 (_1!38257 List!73666) (_2!38257 List!73666)) )
))
(declare-fun lt!2673110 () tuple2!69908)

(assert (=> b!7781473 (= lt!2673111 (matchR!10287 r2!6217 (_2!38257 lt!2673110)))))

(declare-fun b!7781474 () Bool)

(declare-fun res!3101758 () Bool)

(assert (=> b!7781474 (=> (not res!3101758) (not e!4609485))))

(declare-fun nullable!9215 (Regex!20827) Bool)

(assert (=> b!7781474 (= res!3101758 (not (nullable!9215 r1!6279)))))

(declare-fun b!7781475 () Bool)

(assert (=> b!7781475 (= e!4609479 e!4609477)))

(declare-fun res!3101757 () Bool)

(assert (=> b!7781475 (=> (not res!3101757) (not e!4609477))))

(assert (=> b!7781475 (= res!3101757 (matchR!10287 lt!2673108 s!14292))))

(assert (=> b!7781475 (= lt!2673108 (Concat!29672 r1!6279 r2!6217))))

(declare-fun res!3101748 () Bool)

(assert (=> start!740570 (=> (not res!3101748) (not e!4609479))))

(assert (=> start!740570 (= res!3101748 (validRegex!11241 r1!6279))))

(assert (=> start!740570 e!4609479))

(assert (=> start!740570 e!4609481))

(declare-fun e!4609476 () Bool)

(assert (=> start!740570 e!4609476))

(assert (=> start!740570 e!4609484))

(declare-fun b!7781476 () Bool)

(declare-fun e!4609483 () Bool)

(assert (=> b!7781476 (= e!4609483 (matchR!10287 EmptyLang!20827 (t!388401 s!14292)))))

(declare-fun b!7781477 () Bool)

(declare-fun e!4609478 () Bool)

(assert (=> b!7781477 (= e!4609482 (not e!4609478))))

(declare-fun res!3101756 () Bool)

(assert (=> b!7781477 (=> res!3101756 e!4609478)))

(declare-fun lt!2673112 () Bool)

(assert (=> b!7781477 (= res!3101756 (not lt!2673112))))

(declare-fun derivative!555 (Regex!20827 List!73666) Regex!20827)

(assert (=> b!7781477 (= (derivative!555 EmptyLang!20827 (t!388401 s!14292)) EmptyLang!20827)))

(declare-datatypes ((Unit!168544 0))(
  ( (Unit!168545) )
))
(declare-fun lt!2673109 () Unit!168544)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!90 (Regex!20827 List!73666) Unit!168544)

(assert (=> b!7781477 (= lt!2673109 (lemmaEmptyLangDerivativeIsAFixPoint!90 EmptyLang!20827 (t!388401 s!14292)))))

(assert (=> b!7781477 e!4609483))

(declare-fun res!3101750 () Bool)

(assert (=> b!7781477 (=> res!3101750 e!4609483)))

(assert (=> b!7781477 (= res!3101750 lt!2673112)))

(assert (=> b!7781477 (= lt!2673112 (matchR!10287 lt!2673114 (t!388401 s!14292)))))

(declare-fun lt!2673107 () Unit!168544)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!396 (Regex!20827 Regex!20827 List!73666) Unit!168544)

(assert (=> b!7781477 (= lt!2673107 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!396 lt!2673114 EmptyLang!20827 (t!388401 s!14292)))))

(declare-fun b!7781478 () Bool)

(declare-fun res!3101746 () Bool)

(assert (=> b!7781478 (=> res!3101746 e!4609480)))

(declare-fun lt!2673116 () List!73666)

(assert (=> b!7781478 (= res!3101746 (not (matchR!10287 r1!6279 lt!2673116)))))

(declare-fun b!7781479 () Bool)

(declare-fun tp!2287161 () Bool)

(declare-fun tp!2287159 () Bool)

(assert (=> b!7781479 (= e!4609481 (and tp!2287161 tp!2287159))))

(declare-fun b!7781480 () Bool)

(declare-fun tp!2287155 () Bool)

(declare-fun tp!2287156 () Bool)

(assert (=> b!7781480 (= e!4609481 (and tp!2287155 tp!2287156))))

(declare-fun b!7781481 () Bool)

(declare-fun res!3101749 () Bool)

(assert (=> b!7781481 (=> res!3101749 e!4609480)))

(declare-fun isPrefix!6251 (List!73666 List!73666) Bool)

(assert (=> b!7781481 (= res!3101749 (not (isPrefix!6251 Nil!73542 lt!2673116)))))

(declare-fun b!7781482 () Bool)

(assert (=> b!7781482 (= e!4609481 tp_is_empty!52009)))

(declare-fun b!7781483 () Bool)

(assert (=> b!7781483 (= e!4609478 e!4609480)))

(declare-fun res!3101753 () Bool)

(assert (=> b!7781483 (=> res!3101753 e!4609480)))

(assert (=> b!7781483 (= res!3101753 (not (= (++!17921 lt!2673116 (_2!38257 lt!2673110)) s!14292)))))

(assert (=> b!7781483 (= lt!2673116 (Cons!73542 (h!79990 s!14292) (_1!38257 lt!2673110)))))

(declare-datatypes ((Option!17748 0))(
  ( (None!17747) (Some!17747 (v!54882 tuple2!69908)) )
))
(declare-fun lt!2673118 () Option!17748)

(declare-fun get!26288 (Option!17748) tuple2!69908)

(assert (=> b!7781483 (= lt!2673110 (get!26288 lt!2673118))))

(declare-fun isDefined!14360 (Option!17748) Bool)

(assert (=> b!7781483 (isDefined!14360 lt!2673118)))

(declare-fun findConcatSeparation!3778 (Regex!20827 Regex!20827 List!73666 List!73666 List!73666) Option!17748)

(assert (=> b!7781483 (= lt!2673118 (findConcatSeparation!3778 lt!2673117 r2!6217 Nil!73542 (t!388401 s!14292) (t!388401 s!14292)))))

(declare-fun lt!2673115 () Unit!168544)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!368 (Regex!20827 Regex!20827 List!73666) Unit!168544)

(assert (=> b!7781483 (= lt!2673115 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!368 lt!2673117 r2!6217 (t!388401 s!14292)))))

(declare-fun b!7781484 () Bool)

(assert (=> b!7781484 (= e!4609476 tp_is_empty!52009)))

(declare-fun b!7781485 () Bool)

(declare-fun tp!2287154 () Bool)

(assert (=> b!7781485 (= e!4609476 tp!2287154)))

(declare-fun b!7781486 () Bool)

(declare-fun tp!2287153 () Bool)

(declare-fun tp!2287157 () Bool)

(assert (=> b!7781486 (= e!4609476 (and tp!2287153 tp!2287157))))

(declare-fun b!7781487 () Bool)

(declare-fun tp!2287163 () Bool)

(declare-fun tp!2287160 () Bool)

(assert (=> b!7781487 (= e!4609476 (and tp!2287163 tp!2287160))))

(assert (= (and start!740570 res!3101748) b!7781467))

(assert (= (and b!7781467 res!3101755) b!7781475))

(assert (= (and b!7781475 res!3101757) b!7781468))

(assert (= (and b!7781468 res!3101752) b!7781471))

(assert (= (and b!7781471 res!3101747) b!7781474))

(assert (= (and b!7781474 res!3101758) b!7781466))

(assert (= (and b!7781466 res!3101754) b!7781477))

(assert (= (and b!7781477 (not res!3101750)) b!7781476))

(assert (= (and b!7781477 (not res!3101756)) b!7781483))

(assert (= (and b!7781483 (not res!3101753)) b!7781481))

(assert (= (and b!7781481 (not res!3101749)) b!7781472))

(assert (= (and b!7781472 (not res!3101751)) b!7781478))

(assert (= (and b!7781478 (not res!3101746)) b!7781473))

(assert (= (and start!740570 ((_ is ElementMatch!20827) r1!6279)) b!7781482))

(assert (= (and start!740570 ((_ is Concat!29672) r1!6279)) b!7781479))

(assert (= (and start!740570 ((_ is Star!20827) r1!6279)) b!7781469))

(assert (= (and start!740570 ((_ is Union!20827) r1!6279)) b!7781480))

(assert (= (and start!740570 ((_ is ElementMatch!20827) r2!6217)) b!7781484))

(assert (= (and start!740570 ((_ is Concat!29672) r2!6217)) b!7781487))

(assert (= (and start!740570 ((_ is Star!20827) r2!6217)) b!7781485))

(assert (= (and start!740570 ((_ is Union!20827) r2!6217)) b!7781486))

(assert (= (and start!740570 ((_ is Cons!73542) s!14292)) b!7781470))

(declare-fun m!8229332 () Bool)

(assert (=> b!7781471 m!8229332))

(declare-fun m!8229334 () Bool)

(assert (=> b!7781471 m!8229334))

(declare-fun m!8229336 () Bool)

(assert (=> b!7781478 m!8229336))

(declare-fun m!8229338 () Bool)

(assert (=> start!740570 m!8229338))

(declare-fun m!8229340 () Bool)

(assert (=> b!7781466 m!8229340))

(declare-fun m!8229342 () Bool)

(assert (=> b!7781481 m!8229342))

(declare-fun m!8229344 () Bool)

(assert (=> b!7781483 m!8229344))

(declare-fun m!8229346 () Bool)

(assert (=> b!7781483 m!8229346))

(declare-fun m!8229348 () Bool)

(assert (=> b!7781483 m!8229348))

(declare-fun m!8229350 () Bool)

(assert (=> b!7781483 m!8229350))

(declare-fun m!8229352 () Bool)

(assert (=> b!7781483 m!8229352))

(declare-fun m!8229354 () Bool)

(assert (=> b!7781472 m!8229354))

(declare-fun m!8229356 () Bool)

(assert (=> b!7781475 m!8229356))

(declare-fun m!8229358 () Bool)

(assert (=> b!7781474 m!8229358))

(declare-fun m!8229360 () Bool)

(assert (=> b!7781473 m!8229360))

(declare-fun m!8229362 () Bool)

(assert (=> b!7781476 m!8229362))

(declare-fun m!8229364 () Bool)

(assert (=> b!7781467 m!8229364))

(declare-fun m!8229366 () Bool)

(assert (=> b!7781477 m!8229366))

(declare-fun m!8229368 () Bool)

(assert (=> b!7781477 m!8229368))

(declare-fun m!8229370 () Bool)

(assert (=> b!7781477 m!8229370))

(declare-fun m!8229372 () Bool)

(assert (=> b!7781477 m!8229372))

(check-sat (not b!7781483) (not b!7781474) (not b!7781472) (not b!7781475) tp_is_empty!52009 (not start!740570) (not b!7781481) (not b!7781469) (not b!7781467) (not b!7781487) (not b!7781479) (not b!7781473) (not b!7781476) (not b!7781486) (not b!7781477) (not b!7781478) (not b!7781471) (not b!7781466) (not b!7781470) (not b!7781480) (not b!7781485))
(check-sat)
