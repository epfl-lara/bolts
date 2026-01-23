; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694596 () Bool)

(assert start!694596)

(declare-fun b!7130478 () Bool)

(declare-fun e!4285098 () Bool)

(declare-fun tp_is_empty!45723 () Bool)

(declare-fun tp!1965013 () Bool)

(assert (=> b!7130478 (= e!4285098 (and tp_is_empty!45723 tp!1965013))))

(declare-fun b!7130479 () Bool)

(declare-fun e!4285102 () Bool)

(declare-fun tp!1965015 () Bool)

(assert (=> b!7130479 (= e!4285102 (and tp_is_empty!45723 tp!1965015))))

(declare-fun b!7130480 () Bool)

(declare-fun res!2909415 () Bool)

(declare-fun e!4285096 () Bool)

(assert (=> b!7130480 (=> (not res!2909415) (not e!4285096))))

(declare-datatypes ((C!36392 0))(
  ( (C!36393 (val!28122 Int)) )
))
(declare-datatypes ((List!69176 0))(
  ( (Nil!69052) (Cons!69052 (h!75500 C!36392) (t!383153 List!69176)) )
))
(declare-fun s1Rec!140 () List!69176)

(declare-fun s1!1688 () List!69176)

(declare-fun isPrefix!5930 (List!69176 List!69176) Bool)

(assert (=> b!7130480 (= res!2909415 (isPrefix!5930 s1Rec!140 s1!1688))))

(declare-fun setNonEmpty!52002 () Bool)

(declare-fun e!4285094 () Bool)

(declare-fun setRes!52002 () Bool)

(declare-datatypes ((Regex!18061 0))(
  ( (ElementMatch!18061 (c!1330025 C!36392)) (Concat!26906 (regOne!36634 Regex!18061) (regTwo!36634 Regex!18061)) (EmptyExpr!18061) (Star!18061 (reg!18390 Regex!18061)) (EmptyLang!18061) (Union!18061 (regOne!36635 Regex!18061) (regTwo!36635 Regex!18061)) )
))
(declare-datatypes ((List!69177 0))(
  ( (Nil!69053) (Cons!69053 (h!75501 Regex!18061) (t!383154 List!69177)) )
))
(declare-datatypes ((Context!14110 0))(
  ( (Context!14111 (exprs!7555 List!69177)) )
))
(declare-fun setElem!52002 () Context!14110)

(declare-fun tp!1965012 () Bool)

(declare-fun inv!88180 (Context!14110) Bool)

(assert (=> setNonEmpty!52002 (= setRes!52002 (and tp!1965012 (inv!88180 setElem!52002) e!4285094))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z2!471 () (InoxSet Context!14110))

(declare-fun setRest!52002 () (InoxSet Context!14110))

(assert (=> setNonEmpty!52002 (= z2!471 ((_ map or) (store ((as const (Array Context!14110 Bool)) false) setElem!52002 true) setRest!52002))))

(declare-fun b!7130481 () Bool)

(declare-datatypes ((Unit!162983 0))(
  ( (Unit!162984) )
))
(declare-fun e!4285100 () Unit!162983)

(declare-fun Unit!162985 () Unit!162983)

(assert (=> b!7130481 (= e!4285100 Unit!162985)))

(declare-fun res!2909409 () Bool)

(declare-fun e!4285099 () Bool)

(assert (=> start!694596 (=> (not res!2909409) (not e!4285099))))

(declare-fun z1!552 () (InoxSet Context!14110))

(declare-fun matchZipper!3317 ((InoxSet Context!14110) List!69176) Bool)

(assert (=> start!694596 (= res!2909409 (matchZipper!3317 z1!552 s1!1688))))

(assert (=> start!694596 e!4285099))

(assert (=> start!694596 e!4285098))

(declare-fun condSetEmpty!52002 () Bool)

(assert (=> start!694596 (= condSetEmpty!52002 (= z1!552 ((as const (Array Context!14110 Bool)) false)))))

(declare-fun setRes!52003 () Bool)

(assert (=> start!694596 setRes!52003))

(declare-fun e!4285103 () Bool)

(assert (=> start!694596 e!4285103))

(declare-fun condSetEmpty!52003 () Bool)

(assert (=> start!694596 (= condSetEmpty!52003 (= z2!471 ((as const (Array Context!14110 Bool)) false)))))

(assert (=> start!694596 setRes!52002))

(declare-fun e!4285101 () Bool)

(assert (=> start!694596 e!4285101))

(assert (=> start!694596 e!4285102))

(declare-fun e!4285093 () Bool)

(assert (=> start!694596 e!4285093))

(declare-fun b!7130482 () Bool)

(declare-fun e!4285104 () Bool)

(declare-fun s2Rec!140 () List!69176)

(assert (=> b!7130482 (= e!4285104 (not (matchZipper!3317 z2!471 s2Rec!140)))))

(declare-fun b!7130483 () Bool)

(declare-fun e!4285105 () Bool)

(declare-fun lt!2564347 () List!69176)

(declare-fun s!7390 () List!69176)

(assert (=> b!7130483 (= e!4285105 (isPrefix!5930 lt!2564347 s!7390))))

(declare-fun b!7130484 () Bool)

(declare-fun res!2909412 () Bool)

(declare-fun e!4285092 () Bool)

(assert (=> b!7130484 (=> (not res!2909412) (not e!4285092))))

(assert (=> b!7130484 (= res!2909412 e!4285104)))

(declare-fun res!2909411 () Bool)

(assert (=> b!7130484 (=> res!2909411 e!4285104)))

(assert (=> b!7130484 (= res!2909411 (not (matchZipper!3317 z1!552 s1Rec!140)))))

(declare-fun b!7130485 () Bool)

(assert (=> b!7130485 (= e!4285092 (not e!4285105))))

(declare-fun res!2909416 () Bool)

(assert (=> b!7130485 (=> res!2909416 e!4285105)))

(assert (=> b!7130485 (= res!2909416 (not (isPrefix!5930 s1!1688 s!7390)))))

(declare-fun lt!2564352 () Unit!162983)

(declare-fun e!4285095 () Unit!162983)

(assert (=> b!7130485 (= lt!2564352 e!4285095)))

(declare-fun c!1330024 () Bool)

(declare-fun size!41486 (List!69176) Int)

(assert (=> b!7130485 (= c!1330024 (= (size!41486 s1Rec!140) (size!41486 s1!1688)))))

(declare-fun lt!2564355 () List!69176)

(assert (=> b!7130485 (isPrefix!5930 lt!2564347 lt!2564355)))

(declare-fun lt!2564354 () Unit!162983)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3643 (List!69176 List!69176) Unit!162983)

(assert (=> b!7130485 (= lt!2564354 (lemmaConcatTwoListThenFirstIsPrefix!3643 lt!2564347 (t!383153 s2Rec!140)))))

(assert (=> b!7130485 (= lt!2564355 s!7390)))

(declare-fun ++!16199 (List!69176 List!69176) List!69176)

(assert (=> b!7130485 (= lt!2564355 (++!16199 lt!2564347 (t!383153 s2Rec!140)))))

(assert (=> b!7130485 (= lt!2564347 (++!16199 s1Rec!140 (Cons!69052 (h!75500 s2Rec!140) Nil!69052)))))

(declare-fun lt!2564349 () Unit!162983)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3021 (List!69176 C!36392 List!69176 List!69176) Unit!162983)

(assert (=> b!7130485 (= lt!2564349 (lemmaMoveElementToOtherListKeepsConcatEq!3021 s1Rec!140 (h!75500 s2Rec!140) (t!383153 s2Rec!140) s!7390))))

(declare-fun lt!2564358 () Unit!162983)

(assert (=> b!7130485 (= lt!2564358 e!4285100)))

(declare-fun c!1330023 () Bool)

(assert (=> b!7130485 (= c!1330023 (= s1Rec!140 s1!1688))))

(declare-fun lt!2564348 () List!69176)

(assert (=> b!7130485 (isPrefix!5930 s1Rec!140 lt!2564348)))

(declare-fun lt!2564351 () Unit!162983)

(assert (=> b!7130485 (= lt!2564351 (lemmaConcatTwoListThenFirstIsPrefix!3643 s1Rec!140 s2Rec!140))))

(declare-fun lt!2564350 () List!69176)

(assert (=> b!7130485 (isPrefix!5930 s1!1688 lt!2564350)))

(declare-fun lt!2564353 () Unit!162983)

(declare-fun s2!1620 () List!69176)

(assert (=> b!7130485 (= lt!2564353 (lemmaConcatTwoListThenFirstIsPrefix!3643 s1!1688 s2!1620))))

(declare-fun b!7130486 () Bool)

(declare-fun tp!1965014 () Bool)

(assert (=> b!7130486 (= e!4285094 tp!1965014)))

(declare-fun b!7130487 () Bool)

(assert (=> b!7130487 (= e!4285099 e!4285096)))

(declare-fun res!2909417 () Bool)

(assert (=> b!7130487 (=> (not res!2909417) (not e!4285096))))

(assert (=> b!7130487 (= res!2909417 (= lt!2564350 s!7390))))

(assert (=> b!7130487 (= lt!2564350 (++!16199 s1!1688 s2!1620))))

(declare-fun b!7130488 () Bool)

(declare-fun Unit!162986 () Unit!162983)

(assert (=> b!7130488 (= e!4285095 Unit!162986)))

(declare-fun b!7130489 () Bool)

(declare-fun tp!1965009 () Bool)

(assert (=> b!7130489 (= e!4285101 (and tp_is_empty!45723 tp!1965009))))

(declare-fun setIsEmpty!52002 () Bool)

(assert (=> setIsEmpty!52002 setRes!52003))

(declare-fun b!7130490 () Bool)

(declare-fun tp!1965017 () Bool)

(assert (=> b!7130490 (= e!4285103 (and tp_is_empty!45723 tp!1965017))))

(declare-fun b!7130491 () Bool)

(declare-fun res!2909414 () Bool)

(assert (=> b!7130491 (=> (not res!2909414) (not e!4285092))))

(get-info :version)

(assert (=> b!7130491 (= res!2909414 (not ((_ is Nil!69052) s2Rec!140)))))

(declare-fun b!7130492 () Bool)

(assert (=> b!7130492 (= e!4285096 e!4285092)))

(declare-fun res!2909410 () Bool)

(assert (=> b!7130492 (=> (not res!2909410) (not e!4285092))))

(assert (=> b!7130492 (= res!2909410 (= lt!2564348 s!7390))))

(assert (=> b!7130492 (= lt!2564348 (++!16199 s1Rec!140 s2Rec!140))))

(declare-fun setIsEmpty!52003 () Bool)

(assert (=> setIsEmpty!52003 setRes!52002))

(declare-fun b!7130493 () Bool)

(declare-fun Unit!162987 () Unit!162983)

(assert (=> b!7130493 (= e!4285100 Unit!162987)))

(declare-fun lt!2564356 () Unit!162983)

(declare-fun lemmaSamePrefixThenSameSuffix!2741 (List!69176 List!69176 List!69176 List!69176 List!69176) Unit!162983)

(assert (=> b!7130493 (= lt!2564356 (lemmaSamePrefixThenSameSuffix!2741 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7130493 false))

(declare-fun b!7130494 () Bool)

(declare-fun Unit!162988 () Unit!162983)

(assert (=> b!7130494 (= e!4285095 Unit!162988)))

(declare-fun lt!2564357 () Unit!162983)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1451 (List!69176 List!69176 List!69176) Unit!162983)

(assert (=> b!7130494 (= lt!2564357 (lemmaIsPrefixSameLengthThenSameList!1451 s1!1688 s1Rec!140 s!7390))))

(assert (=> b!7130494 false))

(declare-fun setElem!52003 () Context!14110)

(declare-fun e!4285097 () Bool)

(declare-fun tp!1965010 () Bool)

(declare-fun setNonEmpty!52003 () Bool)

(assert (=> setNonEmpty!52003 (= setRes!52003 (and tp!1965010 (inv!88180 setElem!52003) e!4285097))))

(declare-fun setRest!52003 () (InoxSet Context!14110))

(assert (=> setNonEmpty!52003 (= z1!552 ((_ map or) (store ((as const (Array Context!14110 Bool)) false) setElem!52003 true) setRest!52003))))

(declare-fun b!7130495 () Bool)

(declare-fun tp!1965011 () Bool)

(assert (=> b!7130495 (= e!4285093 (and tp_is_empty!45723 tp!1965011))))

(declare-fun b!7130496 () Bool)

(declare-fun tp!1965016 () Bool)

(assert (=> b!7130496 (= e!4285097 tp!1965016)))

(declare-fun b!7130497 () Bool)

(declare-fun res!2909413 () Bool)

(assert (=> b!7130497 (=> (not res!2909413) (not e!4285099))))

(assert (=> b!7130497 (= res!2909413 (matchZipper!3317 z2!471 s2!1620))))

(assert (= (and start!694596 res!2909409) b!7130497))

(assert (= (and b!7130497 res!2909413) b!7130487))

(assert (= (and b!7130487 res!2909417) b!7130480))

(assert (= (and b!7130480 res!2909415) b!7130492))

(assert (= (and b!7130492 res!2909410) b!7130484))

(assert (= (and b!7130484 (not res!2909411)) b!7130482))

(assert (= (and b!7130484 res!2909412) b!7130491))

(assert (= (and b!7130491 res!2909414) b!7130485))

(assert (= (and b!7130485 c!1330023) b!7130493))

(assert (= (and b!7130485 (not c!1330023)) b!7130481))

(assert (= (and b!7130485 c!1330024) b!7130494))

(assert (= (and b!7130485 (not c!1330024)) b!7130488))

(assert (= (and b!7130485 (not res!2909416)) b!7130483))

(assert (= (and start!694596 ((_ is Cons!69052) s1Rec!140)) b!7130478))

(assert (= (and start!694596 condSetEmpty!52002) setIsEmpty!52002))

(assert (= (and start!694596 (not condSetEmpty!52002)) setNonEmpty!52003))

(assert (= setNonEmpty!52003 b!7130496))

(assert (= (and start!694596 ((_ is Cons!69052) s2Rec!140)) b!7130490))

(assert (= (and start!694596 condSetEmpty!52003) setIsEmpty!52003))

(assert (= (and start!694596 (not condSetEmpty!52003)) setNonEmpty!52002))

(assert (= setNonEmpty!52002 b!7130486))

(assert (= (and start!694596 ((_ is Cons!69052) s2!1620)) b!7130489))

(assert (= (and start!694596 ((_ is Cons!69052) s1!1688)) b!7130479))

(assert (= (and start!694596 ((_ is Cons!69052) s!7390)) b!7130495))

(declare-fun m!7847344 () Bool)

(assert (=> b!7130482 m!7847344))

(declare-fun m!7847346 () Bool)

(assert (=> b!7130480 m!7847346))

(declare-fun m!7847348 () Bool)

(assert (=> b!7130484 m!7847348))

(declare-fun m!7847350 () Bool)

(assert (=> start!694596 m!7847350))

(declare-fun m!7847352 () Bool)

(assert (=> b!7130487 m!7847352))

(declare-fun m!7847354 () Bool)

(assert (=> b!7130485 m!7847354))

(declare-fun m!7847356 () Bool)

(assert (=> b!7130485 m!7847356))

(declare-fun m!7847358 () Bool)

(assert (=> b!7130485 m!7847358))

(declare-fun m!7847360 () Bool)

(assert (=> b!7130485 m!7847360))

(declare-fun m!7847362 () Bool)

(assert (=> b!7130485 m!7847362))

(declare-fun m!7847364 () Bool)

(assert (=> b!7130485 m!7847364))

(declare-fun m!7847366 () Bool)

(assert (=> b!7130485 m!7847366))

(declare-fun m!7847368 () Bool)

(assert (=> b!7130485 m!7847368))

(declare-fun m!7847370 () Bool)

(assert (=> b!7130485 m!7847370))

(declare-fun m!7847372 () Bool)

(assert (=> b!7130485 m!7847372))

(declare-fun m!7847374 () Bool)

(assert (=> b!7130485 m!7847374))

(declare-fun m!7847376 () Bool)

(assert (=> b!7130485 m!7847376))

(declare-fun m!7847378 () Bool)

(assert (=> b!7130493 m!7847378))

(declare-fun m!7847380 () Bool)

(assert (=> b!7130494 m!7847380))

(declare-fun m!7847382 () Bool)

(assert (=> setNonEmpty!52003 m!7847382))

(declare-fun m!7847384 () Bool)

(assert (=> b!7130492 m!7847384))

(declare-fun m!7847386 () Bool)

(assert (=> setNonEmpty!52002 m!7847386))

(declare-fun m!7847388 () Bool)

(assert (=> b!7130483 m!7847388))

(declare-fun m!7847390 () Bool)

(assert (=> b!7130497 m!7847390))

(check-sat (not b!7130497) (not b!7130489) (not setNonEmpty!52002) (not b!7130493) (not b!7130480) (not b!7130484) (not b!7130494) (not b!7130486) (not b!7130485) tp_is_empty!45723 (not b!7130482) (not b!7130487) (not b!7130492) (not start!694596) (not b!7130478) (not b!7130490) (not b!7130483) (not b!7130495) (not b!7130496) (not setNonEmpty!52003) (not b!7130479))
(check-sat)
