; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!637878 () Bool)

(assert start!637878)

(declare-fun b!6490649 () Bool)

(assert (=> b!6490649 true))

(assert (=> b!6490649 true))

(declare-fun lambda!359437 () Int)

(declare-fun lambda!359436 () Int)

(assert (=> b!6490649 (not (= lambda!359437 lambda!359436))))

(assert (=> b!6490649 true))

(assert (=> b!6490649 true))

(declare-fun b!6490636 () Bool)

(assert (=> b!6490636 true))

(declare-fun bs!1647617 () Bool)

(declare-fun b!6490618 () Bool)

(assert (= bs!1647617 (and b!6490618 b!6490649)))

(declare-datatypes ((C!33008 0))(
  ( (C!33009 (val!26206 Int)) )
))
(declare-datatypes ((Regex!16369 0))(
  ( (ElementMatch!16369 (c!1189393 C!33008)) (Concat!25214 (regOne!33250 Regex!16369) (regTwo!33250 Regex!16369)) (EmptyExpr!16369) (Star!16369 (reg!16698 Regex!16369)) (EmptyLang!16369) (Union!16369 (regOne!33251 Regex!16369) (regTwo!33251 Regex!16369)) )
))
(declare-fun r!7292 () Regex!16369)

(declare-fun lt!2389631 () Regex!16369)

(declare-fun lambda!359439 () Int)

(assert (=> bs!1647617 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359439 lambda!359436))))

(assert (=> bs!1647617 (not (= lambda!359439 lambda!359437))))

(assert (=> b!6490618 true))

(assert (=> b!6490618 true))

(assert (=> b!6490618 true))

(declare-fun lambda!359440 () Int)

(assert (=> bs!1647617 (not (= lambda!359440 lambda!359436))))

(assert (=> bs!1647617 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359440 lambda!359437))))

(assert (=> b!6490618 (not (= lambda!359440 lambda!359439))))

(assert (=> b!6490618 true))

(assert (=> b!6490618 true))

(assert (=> b!6490618 true))

(declare-fun bs!1647618 () Bool)

(declare-fun b!6490643 () Bool)

(assert (= bs!1647618 (and b!6490643 b!6490649)))

(declare-datatypes ((List!65406 0))(
  ( (Nil!65282) (Cons!65282 (h!71730 C!33008) (t!379034 List!65406)) )
))
(declare-fun s!2326 () List!65406)

(declare-fun lambda!359441 () Int)

(declare-datatypes ((tuple2!66696 0))(
  ( (tuple2!66697 (_1!36651 List!65406) (_2!36651 List!65406)) )
))
(declare-fun lt!2389655 () tuple2!66696)

(assert (=> bs!1647618 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359441 lambda!359436))))

(assert (=> bs!1647618 (not (= lambda!359441 lambda!359437))))

(declare-fun bs!1647619 () Bool)

(assert (= bs!1647619 (and b!6490643 b!6490618)))

(assert (=> bs!1647619 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359441 lambda!359439))))

(assert (=> bs!1647619 (not (= lambda!359441 lambda!359440))))

(assert (=> b!6490643 true))

(assert (=> b!6490643 true))

(assert (=> b!6490643 true))

(declare-fun lambda!359442 () Int)

(assert (=> bs!1647619 (not (= lambda!359442 lambda!359439))))

(assert (=> b!6490643 (not (= lambda!359442 lambda!359441))))

(assert (=> bs!1647618 (not (= lambda!359442 lambda!359437))))

(assert (=> bs!1647618 (not (= lambda!359442 lambda!359436))))

(assert (=> bs!1647619 (not (= lambda!359442 lambda!359440))))

(assert (=> b!6490643 true))

(assert (=> b!6490643 true))

(assert (=> b!6490643 true))

(declare-fun lambda!359443 () Int)

(assert (=> b!6490643 (not (= lambda!359443 lambda!359442))))

(assert (=> bs!1647619 (not (= lambda!359443 lambda!359439))))

(assert (=> b!6490643 (not (= lambda!359443 lambda!359441))))

(assert (=> bs!1647618 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359443 lambda!359437))))

(assert (=> bs!1647618 (not (= lambda!359443 lambda!359436))))

(assert (=> bs!1647619 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359443 lambda!359440))))

(assert (=> b!6490643 true))

(assert (=> b!6490643 true))

(assert (=> b!6490643 true))

(declare-fun b!6490606 () Bool)

(declare-fun e!3933519 () Bool)

(declare-fun e!3933526 () Bool)

(assert (=> b!6490606 (= e!3933519 e!3933526)))

(declare-fun res!2665707 () Bool)

(assert (=> b!6490606 (=> res!2665707 e!3933526)))

(declare-datatypes ((List!65407 0))(
  ( (Nil!65283) (Cons!65283 (h!71731 Regex!16369) (t!379035 List!65407)) )
))
(declare-datatypes ((Context!11506 0))(
  ( (Context!11507 (exprs!6253 List!65407)) )
))
(declare-fun lt!2389611 () Context!11506)

(declare-fun lt!2389659 () Regex!16369)

(declare-datatypes ((List!65408 0))(
  ( (Nil!65284) (Cons!65284 (h!71732 Context!11506) (t!379036 List!65408)) )
))
(declare-fun unfocusZipper!2111 (List!65408) Regex!16369)

(assert (=> b!6490606 (= res!2665707 (not (= (unfocusZipper!2111 (Cons!65284 lt!2389611 Nil!65284)) lt!2389659)))))

(declare-fun lt!2389661 () Regex!16369)

(assert (=> b!6490606 (= lt!2389659 (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661))))

(declare-fun b!6490607 () Bool)

(declare-fun e!3933510 () Bool)

(declare-fun tp_is_empty!41991 () Bool)

(assert (=> b!6490607 (= e!3933510 tp_is_empty!41991)))

(declare-fun b!6490608 () Bool)

(declare-fun e!3933528 () Bool)

(assert (=> b!6490608 (= e!3933526 e!3933528)))

(declare-fun res!2665730 () Bool)

(assert (=> b!6490608 (=> res!2665730 e!3933528)))

(declare-fun lt!2389621 () List!65408)

(assert (=> b!6490608 (= res!2665730 (not (= (unfocusZipper!2111 lt!2389621) (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun lt!2389610 () Context!11506)

(assert (=> b!6490608 (= lt!2389621 (Cons!65284 lt!2389610 Nil!65284))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2389616 () (InoxSet Context!11506))

(declare-fun lt!2389656 () Context!11506)

(declare-fun lambda!359438 () Int)

(declare-fun flatMap!1874 ((InoxSet Context!11506) Int) (InoxSet Context!11506))

(declare-fun derivationStepZipperUp!1543 (Context!11506 C!33008) (InoxSet Context!11506))

(assert (=> b!6490608 (= (flatMap!1874 lt!2389616 lambda!359438) (derivationStepZipperUp!1543 lt!2389656 (h!71730 s!2326)))))

(declare-datatypes ((Unit!158807 0))(
  ( (Unit!158808) )
))
(declare-fun lt!2389633 () Unit!158807)

(declare-fun lemmaFlatMapOnSingletonSet!1400 ((InoxSet Context!11506) Context!11506 Int) Unit!158807)

(assert (=> b!6490608 (= lt!2389633 (lemmaFlatMapOnSingletonSet!1400 lt!2389616 lt!2389656 lambda!359438))))

(declare-fun lt!2389651 () (InoxSet Context!11506))

(assert (=> b!6490608 (= (flatMap!1874 lt!2389651 lambda!359438) (derivationStepZipperUp!1543 lt!2389610 (h!71730 s!2326)))))

(declare-fun lt!2389629 () Unit!158807)

(assert (=> b!6490608 (= lt!2389629 (lemmaFlatMapOnSingletonSet!1400 lt!2389651 lt!2389610 lambda!359438))))

(declare-fun lt!2389630 () (InoxSet Context!11506))

(assert (=> b!6490608 (= lt!2389630 (derivationStepZipperUp!1543 lt!2389656 (h!71730 s!2326)))))

(declare-fun lt!2389653 () (InoxSet Context!11506))

(assert (=> b!6490608 (= lt!2389653 (derivationStepZipperUp!1543 lt!2389610 (h!71730 s!2326)))))

(assert (=> b!6490608 (= lt!2389616 (store ((as const (Array Context!11506 Bool)) false) lt!2389656 true))))

(assert (=> b!6490608 (= lt!2389651 (store ((as const (Array Context!11506 Bool)) false) lt!2389610 true))))

(declare-fun lt!2389623 () List!65407)

(assert (=> b!6490608 (= lt!2389610 (Context!11507 lt!2389623))))

(assert (=> b!6490608 (= lt!2389623 (Cons!65283 (reg!16698 (regOne!33250 r!7292)) Nil!65283))))

(declare-fun b!6490609 () Bool)

(declare-fun e!3933518 () Bool)

(declare-fun nullable!6362 (Regex!16369) Bool)

(assert (=> b!6490609 (= e!3933518 (nullable!6362 (regOne!33250 (regOne!33250 r!7292))))))

(declare-fun b!6490610 () Bool)

(declare-fun e!3933534 () Bool)

(declare-fun lt!2389666 () (InoxSet Context!11506))

(declare-fun matchZipper!2381 ((InoxSet Context!11506) List!65406) Bool)

(assert (=> b!6490610 (= e!3933534 (matchZipper!2381 lt!2389666 (t!379034 s!2326)))))

(declare-fun b!6490611 () Bool)

(declare-fun res!2665703 () Bool)

(declare-fun e!3933514 () Bool)

(assert (=> b!6490611 (=> res!2665703 e!3933514)))

(declare-fun zl!343 () List!65408)

(declare-fun generalisedConcat!1966 (List!65407) Regex!16369)

(assert (=> b!6490611 (= res!2665703 (not (= r!7292 (generalisedConcat!1966 (exprs!6253 (h!71732 zl!343))))))))

(declare-fun setIsEmpty!44219 () Bool)

(declare-fun setRes!44219 () Bool)

(assert (=> setIsEmpty!44219 setRes!44219))

(declare-fun b!6490612 () Bool)

(declare-fun e!3933532 () Bool)

(declare-fun e!3933515 () Bool)

(assert (=> b!6490612 (= e!3933532 e!3933515)))

(declare-fun res!2665735 () Bool)

(assert (=> b!6490612 (=> (not res!2665735) (not e!3933515))))

(declare-fun lt!2389615 () Regex!16369)

(assert (=> b!6490612 (= res!2665735 (= r!7292 lt!2389615))))

(assert (=> b!6490612 (= lt!2389615 (unfocusZipper!2111 zl!343))))

(declare-fun e!3933516 () Bool)

(declare-fun tp!1796696 () Bool)

(declare-fun e!3933513 () Bool)

(declare-fun b!6490614 () Bool)

(declare-fun inv!84169 (Context!11506) Bool)

(assert (=> b!6490614 (= e!3933516 (and (inv!84169 (h!71732 zl!343)) e!3933513 tp!1796696))))

(declare-fun b!6490615 () Bool)

(declare-fun res!2665728 () Bool)

(assert (=> b!6490615 (=> (not res!2665728) (not e!3933532))))

(declare-fun z!1189 () (InoxSet Context!11506))

(declare-fun toList!10153 ((InoxSet Context!11506)) List!65408)

(assert (=> b!6490615 (= res!2665728 (= (toList!10153 z!1189) zl!343))))

(declare-fun b!6490616 () Bool)

(declare-fun e!3933520 () Bool)

(declare-fun e!3933525 () Bool)

(assert (=> b!6490616 (= e!3933520 e!3933525)))

(declare-fun res!2665711 () Bool)

(assert (=> b!6490616 (=> res!2665711 e!3933525)))

(declare-fun lt!2389614 () (InoxSet Context!11506))

(declare-fun lt!2389649 () (InoxSet Context!11506))

(assert (=> b!6490616 (= res!2665711 (not (= lt!2389614 lt!2389649)))))

(declare-fun lt!2389660 () (InoxSet Context!11506))

(assert (=> b!6490616 (= (flatMap!1874 lt!2389660 lambda!359438) (derivationStepZipperUp!1543 lt!2389611 (h!71730 s!2326)))))

(declare-fun lt!2389648 () Unit!158807)

(assert (=> b!6490616 (= lt!2389648 (lemmaFlatMapOnSingletonSet!1400 lt!2389660 lt!2389611 lambda!359438))))

(declare-fun lt!2389622 () (InoxSet Context!11506))

(assert (=> b!6490616 (= lt!2389622 (derivationStepZipperUp!1543 lt!2389611 (h!71730 s!2326)))))

(declare-fun derivationStepZipper!2335 ((InoxSet Context!11506) C!33008) (InoxSet Context!11506))

(assert (=> b!6490616 (= lt!2389614 (derivationStepZipper!2335 lt!2389660 (h!71730 s!2326)))))

(assert (=> b!6490616 (= lt!2389660 (store ((as const (Array Context!11506 Bool)) false) lt!2389611 true))))

(declare-fun lt!2389636 () List!65407)

(assert (=> b!6490616 (= lt!2389611 (Context!11507 (Cons!65283 (reg!16698 (regOne!33250 r!7292)) lt!2389636)))))

(declare-fun b!6490617 () Bool)

(declare-fun res!2665717 () Bool)

(assert (=> b!6490617 (=> res!2665717 e!3933514)))

(get-info :version)

(assert (=> b!6490617 (= res!2665717 (or ((_ is EmptyExpr!16369) r!7292) ((_ is EmptyLang!16369) r!7292) ((_ is ElementMatch!16369) r!7292) ((_ is Union!16369) r!7292) (not ((_ is Concat!25214) r!7292))))))

(declare-fun e!3933530 () Bool)

(declare-fun e!3933523 () Bool)

(assert (=> b!6490618 (= e!3933530 e!3933523)))

(declare-fun res!2665709 () Bool)

(assert (=> b!6490618 (=> res!2665709 e!3933523)))

(declare-fun ++!14448 (List!65406 List!65406) List!65406)

(assert (=> b!6490618 (= res!2665709 (not (= (++!14448 (_1!36651 lt!2389655) (_2!36651 lt!2389655)) s!2326)))))

(declare-datatypes ((Option!16260 0))(
  ( (None!16259) (Some!16259 (v!52438 tuple2!66696)) )
))
(declare-fun lt!2389624 () Option!16260)

(declare-fun get!22637 (Option!16260) tuple2!66696)

(assert (=> b!6490618 (= lt!2389655 (get!22637 lt!2389624))))

(declare-fun Exists!3439 (Int) Bool)

(assert (=> b!6490618 (= (Exists!3439 lambda!359439) (Exists!3439 lambda!359440))))

(declare-fun lt!2389647 () Unit!158807)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1976 (Regex!16369 Regex!16369 List!65406) Unit!158807)

(assert (=> b!6490618 (= lt!2389647 (lemmaExistCutMatchRandMatchRSpecEquivalent!1976 lt!2389631 (regTwo!33250 r!7292) s!2326))))

(declare-fun isDefined!12963 (Option!16260) Bool)

(assert (=> b!6490618 (= (isDefined!12963 lt!2389624) (Exists!3439 lambda!359439))))

(declare-fun findConcatSeparation!2674 (Regex!16369 Regex!16369 List!65406 List!65406 List!65406) Option!16260)

(assert (=> b!6490618 (= lt!2389624 (findConcatSeparation!2674 lt!2389631 (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326))))

(declare-fun lt!2389609 () Unit!158807)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2438 (Regex!16369 Regex!16369 List!65406) Unit!158807)

(assert (=> b!6490618 (= lt!2389609 (lemmaFindConcatSeparationEquivalentToExists!2438 lt!2389631 (regTwo!33250 r!7292) s!2326))))

(declare-fun b!6490619 () Bool)

(declare-fun res!2665714 () Bool)

(declare-fun e!3933517 () Bool)

(assert (=> b!6490619 (=> res!2665714 e!3933517)))

(assert (=> b!6490619 (= res!2665714 (or ((_ is Concat!25214) (regOne!33250 r!7292)) (not ((_ is Star!16369) (regOne!33250 r!7292)))))))

(declare-fun b!6490620 () Bool)

(declare-fun e!3933529 () Bool)

(declare-fun lt!2389635 () Bool)

(assert (=> b!6490620 (= e!3933529 lt!2389635)))

(declare-fun b!6490621 () Bool)

(declare-fun res!2665706 () Bool)

(assert (=> b!6490621 (=> res!2665706 e!3933523)))

(declare-fun matchR!8552 (Regex!16369 List!65406) Bool)

(assert (=> b!6490621 (= res!2665706 (not (matchR!8552 lt!2389631 (_1!36651 lt!2389655))))))

(declare-fun b!6490622 () Bool)

(declare-fun e!3933511 () Bool)

(assert (=> b!6490622 (= e!3933511 (matchZipper!2381 z!1189 s!2326))))

(declare-fun b!6490623 () Bool)

(declare-fun res!2665725 () Bool)

(declare-fun e!3933524 () Bool)

(assert (=> b!6490623 (=> res!2665725 e!3933524)))

(declare-fun lt!2389638 () tuple2!66696)

(assert (=> b!6490623 (= res!2665725 (not (matchR!8552 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638))))))

(declare-fun b!6490624 () Bool)

(declare-fun res!2665738 () Bool)

(assert (=> b!6490624 (=> res!2665738 e!3933514)))

(declare-fun generalisedUnion!2213 (List!65407) Regex!16369)

(declare-fun unfocusZipperList!1790 (List!65408) List!65407)

(assert (=> b!6490624 (= res!2665738 (not (= r!7292 (generalisedUnion!2213 (unfocusZipperList!1790 zl!343)))))))

(declare-fun b!6490625 () Bool)

(declare-fun tp!1796692 () Bool)

(declare-fun tp!1796690 () Bool)

(assert (=> b!6490625 (= e!3933510 (and tp!1796692 tp!1796690))))

(declare-fun b!6490626 () Bool)

(declare-fun e!3933522 () Bool)

(assert (=> b!6490626 (= e!3933522 e!3933530)))

(declare-fun res!2665733 () Bool)

(assert (=> b!6490626 (=> res!2665733 e!3933530)))

(declare-fun lt!2389664 () Bool)

(assert (=> b!6490626 (= res!2665733 (not lt!2389664))))

(declare-fun e!3933531 () Bool)

(assert (=> b!6490626 e!3933531))

(declare-fun res!2665724 () Bool)

(assert (=> b!6490626 (=> (not res!2665724) (not e!3933531))))

(declare-fun matchRSpec!3470 (Regex!16369 List!65406) Bool)

(assert (=> b!6490626 (= res!2665724 (= lt!2389635 (matchRSpec!3470 lt!2389659 s!2326)))))

(assert (=> b!6490626 (= lt!2389635 (matchR!8552 lt!2389659 s!2326))))

(declare-fun lt!2389665 () Unit!158807)

(declare-fun mainMatchTheorem!3470 (Regex!16369 List!65406) Unit!158807)

(assert (=> b!6490626 (= lt!2389665 (mainMatchTheorem!3470 lt!2389659 s!2326))))

(declare-fun b!6490627 () Bool)

(assert (=> b!6490627 (= e!3933525 e!3933519)))

(declare-fun res!2665718 () Bool)

(assert (=> b!6490627 (=> res!2665718 e!3933519)))

(assert (=> b!6490627 (= res!2665718 (not (= r!7292 lt!2389661)))))

(assert (=> b!6490627 (= lt!2389661 (Concat!25214 lt!2389631 (regTwo!33250 r!7292)))))

(declare-fun b!6490628 () Bool)

(declare-fun res!2665720 () Bool)

(assert (=> b!6490628 (=> res!2665720 e!3933525)))

(assert (=> b!6490628 (= res!2665720 (not (= lt!2389615 r!7292)))))

(declare-fun b!6490629 () Bool)

(assert (=> b!6490629 (= e!3933524 e!3933511)))

(declare-fun res!2665732 () Bool)

(assert (=> b!6490629 (=> res!2665732 e!3933511)))

(declare-fun lt!2389663 () List!65406)

(assert (=> b!6490629 (= res!2665732 (not (matchZipper!2381 lt!2389660 lt!2389663)))))

(declare-fun lambda!359444 () Int)

(declare-fun lt!2389634 () Unit!158807)

(declare-fun lemmaConcatPreservesForall!348 (List!65407 List!65407 Int) Unit!158807)

(assert (=> b!6490629 (= lt!2389634 (lemmaConcatPreservesForall!348 lt!2389623 lt!2389636 lambda!359444))))

(assert (=> b!6490629 e!3933529))

(declare-fun res!2665708 () Bool)

(assert (=> b!6490629 (=> (not res!2665708) (not e!3933529))))

(assert (=> b!6490629 (= res!2665708 (matchR!8552 lt!2389659 lt!2389663))))

(declare-fun lt!2389627 () Unit!158807)

(declare-fun lt!2389641 () List!65406)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!332 (Regex!16369 Regex!16369 List!65406 List!65406) Unit!158807)

(assert (=> b!6490629 (= lt!2389627 (lemmaTwoRegexMatchThenConcatMatchesConcatString!332 (reg!16698 (regOne!33250 r!7292)) lt!2389661 (_1!36651 lt!2389638) lt!2389641))))

(declare-fun ++!14449 (List!65407 List!65407) List!65407)

(assert (=> b!6490629 (matchZipper!2381 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 lt!2389623 lt!2389636)) true) lt!2389663)))

(declare-fun lt!2389618 () Unit!158807)

(assert (=> b!6490629 (= lt!2389618 (lemmaConcatPreservesForall!348 lt!2389623 lt!2389636 lambda!359444))))

(declare-fun lt!2389657 () Unit!158807)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!170 (Context!11506 Context!11506 List!65406 List!65406) Unit!158807)

(assert (=> b!6490629 (= lt!2389657 (lemmaConcatenateContextMatchesConcatOfStrings!170 lt!2389610 lt!2389656 (_1!36651 lt!2389638) lt!2389641))))

(assert (=> b!6490629 (matchZipper!2381 lt!2389616 lt!2389641)))

(declare-fun lt!2389643 () Unit!158807)

(declare-fun lt!2389640 () List!65408)

(declare-fun theoremZipperRegexEquiv!835 ((InoxSet Context!11506) List!65408 Regex!16369 List!65406) Unit!158807)

(assert (=> b!6490629 (= lt!2389643 (theoremZipperRegexEquiv!835 lt!2389616 lt!2389640 lt!2389661 lt!2389641))))

(assert (=> b!6490629 (matchZipper!2381 lt!2389651 (_1!36651 lt!2389638))))

(declare-fun lt!2389617 () Unit!158807)

(assert (=> b!6490629 (= lt!2389617 (theoremZipperRegexEquiv!835 lt!2389651 lt!2389621 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638)))))

(assert (=> b!6490629 (matchR!8552 lt!2389661 lt!2389641)))

(declare-fun lt!2389654 () Unit!158807)

(assert (=> b!6490629 (= lt!2389654 (lemmaTwoRegexMatchThenConcatMatchesConcatString!332 lt!2389631 (regTwo!33250 r!7292) (_2!36651 lt!2389638) (_2!36651 lt!2389655)))))

(declare-fun lt!2389620 () List!65406)

(assert (=> b!6490629 (matchR!8552 lt!2389631 lt!2389620)))

(declare-fun lt!2389667 () Unit!158807)

(declare-fun lemmaStarApp!146 (Regex!16369 List!65406 List!65406) Unit!158807)

(assert (=> b!6490629 (= lt!2389667 (lemmaStarApp!146 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638) (_2!36651 lt!2389638)))))

(declare-fun b!6490630 () Bool)

(declare-fun e!3933521 () Bool)

(assert (=> b!6490630 (= e!3933521 e!3933524)))

(declare-fun res!2665721 () Bool)

(assert (=> b!6490630 (=> res!2665721 e!3933524)))

(declare-fun lt!2389644 () List!65406)

(assert (=> b!6490630 (= res!2665721 (not (= lt!2389644 s!2326)))))

(assert (=> b!6490630 (= lt!2389644 lt!2389663)))

(assert (=> b!6490630 (= lt!2389663 (++!14448 (_1!36651 lt!2389638) lt!2389641))))

(assert (=> b!6490630 (= lt!2389644 (++!14448 lt!2389620 (_2!36651 lt!2389655)))))

(assert (=> b!6490630 (= lt!2389641 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655)))))

(declare-fun lt!2389625 () Unit!158807)

(declare-fun lemmaConcatAssociativity!2940 (List!65406 List!65406 List!65406) Unit!158807)

(assert (=> b!6490630 (= lt!2389625 (lemmaConcatAssociativity!2940 (_1!36651 lt!2389638) (_2!36651 lt!2389638) (_2!36651 lt!2389655)))))

(declare-fun b!6490631 () Bool)

(declare-fun tp!1796691 () Bool)

(assert (=> b!6490631 (= e!3933513 tp!1796691)))

(declare-fun b!6490632 () Bool)

(declare-fun res!2665710 () Bool)

(assert (=> b!6490632 (=> res!2665710 e!3933525)))

(assert (=> b!6490632 (= res!2665710 (not (= (matchZipper!2381 lt!2389660 s!2326) (matchZipper!2381 lt!2389614 (t!379034 s!2326)))))))

(declare-fun b!6490633 () Bool)

(declare-fun e!3933527 () Bool)

(declare-fun tp!1796695 () Bool)

(assert (=> b!6490633 (= e!3933527 tp!1796695)))

(declare-fun b!6490634 () Bool)

(declare-fun e!3933509 () Bool)

(declare-fun tp!1796693 () Bool)

(assert (=> b!6490634 (= e!3933509 (and tp_is_empty!41991 tp!1796693))))

(declare-fun b!6490635 () Bool)

(declare-fun lt!2389668 () Bool)

(assert (=> b!6490635 (= e!3933531 (or (not lt!2389664) lt!2389668))))

(declare-fun e!3933533 () Bool)

(assert (=> b!6490636 (= e!3933533 e!3933517)))

(declare-fun res!2665715 () Bool)

(assert (=> b!6490636 (=> res!2665715 e!3933517)))

(assert (=> b!6490636 (= res!2665715 (or (and ((_ is ElementMatch!16369) (regOne!33250 r!7292)) (= (c!1189393 (regOne!33250 r!7292)) (h!71730 s!2326))) ((_ is Union!16369) (regOne!33250 r!7292))))))

(declare-fun lt!2389619 () Unit!158807)

(declare-fun e!3933512 () Unit!158807)

(assert (=> b!6490636 (= lt!2389619 e!3933512)))

(declare-fun c!1189392 () Bool)

(assert (=> b!6490636 (= c!1189392 (nullable!6362 (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(assert (=> b!6490636 (= (flatMap!1874 z!1189 lambda!359438) (derivationStepZipperUp!1543 (h!71732 zl!343) (h!71730 s!2326)))))

(declare-fun lt!2389626 () Unit!158807)

(assert (=> b!6490636 (= lt!2389626 (lemmaFlatMapOnSingletonSet!1400 z!1189 (h!71732 zl!343) lambda!359438))))

(declare-fun lt!2389642 () Context!11506)

(assert (=> b!6490636 (= lt!2389666 (derivationStepZipperUp!1543 lt!2389642 (h!71730 s!2326)))))

(declare-fun lt!2389628 () (InoxSet Context!11506))

(declare-fun derivationStepZipperDown!1617 (Regex!16369 Context!11506 C!33008) (InoxSet Context!11506))

(assert (=> b!6490636 (= lt!2389628 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (h!71732 zl!343))) lt!2389642 (h!71730 s!2326)))))

(assert (=> b!6490636 (= lt!2389642 (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun lt!2389658 () (InoxSet Context!11506))

(assert (=> b!6490636 (= lt!2389658 (derivationStepZipperUp!1543 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))) (h!71730 s!2326)))))

(declare-fun b!6490637 () Bool)

(assert (=> b!6490637 (= e!3933517 e!3933520)))

(declare-fun res!2665705 () Bool)

(assert (=> b!6490637 (=> res!2665705 e!3933520)))

(assert (=> b!6490637 (= res!2665705 (not (= lt!2389628 lt!2389649)))))

(assert (=> b!6490637 (= lt!2389649 (derivationStepZipperDown!1617 (reg!16698 (regOne!33250 r!7292)) lt!2389656 (h!71730 s!2326)))))

(assert (=> b!6490637 (= lt!2389656 (Context!11507 lt!2389636))))

(assert (=> b!6490637 (= lt!2389636 (Cons!65283 lt!2389631 (t!379035 (exprs!6253 (h!71732 zl!343)))))))

(assert (=> b!6490637 (= lt!2389631 (Star!16369 (reg!16698 (regOne!33250 r!7292))))))

(declare-fun b!6490638 () Bool)

(assert (=> b!6490638 (= e!3933528 e!3933522)))

(declare-fun res!2665726 () Bool)

(assert (=> b!6490638 (=> res!2665726 e!3933522)))

(assert (=> b!6490638 (= res!2665726 (not (= (unfocusZipper!2111 lt!2389640) lt!2389661)))))

(assert (=> b!6490638 (= lt!2389640 (Cons!65284 lt!2389656 Nil!65284))))

(declare-fun res!2665727 () Bool)

(assert (=> start!637878 (=> (not res!2665727) (not e!3933532))))

(declare-fun validRegex!8105 (Regex!16369) Bool)

(assert (=> start!637878 (= res!2665727 (validRegex!8105 r!7292))))

(assert (=> start!637878 e!3933532))

(assert (=> start!637878 e!3933510))

(declare-fun condSetEmpty!44219 () Bool)

(assert (=> start!637878 (= condSetEmpty!44219 (= z!1189 ((as const (Array Context!11506 Bool)) false)))))

(assert (=> start!637878 setRes!44219))

(assert (=> start!637878 e!3933516))

(assert (=> start!637878 e!3933509))

(declare-fun b!6490613 () Bool)

(assert (=> b!6490613 (= e!3933515 (not e!3933514))))

(declare-fun res!2665713 () Bool)

(assert (=> b!6490613 (=> res!2665713 e!3933514)))

(assert (=> b!6490613 (= res!2665713 (not ((_ is Cons!65284) zl!343)))))

(assert (=> b!6490613 (= lt!2389664 lt!2389668)))

(assert (=> b!6490613 (= lt!2389668 (matchRSpec!3470 r!7292 s!2326))))

(assert (=> b!6490613 (= lt!2389664 (matchR!8552 r!7292 s!2326))))

(declare-fun lt!2389645 () Unit!158807)

(assert (=> b!6490613 (= lt!2389645 (mainMatchTheorem!3470 r!7292 s!2326))))

(declare-fun b!6490639 () Bool)

(declare-fun res!2665731 () Bool)

(assert (=> b!6490639 (=> res!2665731 e!3933514)))

(assert (=> b!6490639 (= res!2665731 (not ((_ is Cons!65283) (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6490640 () Bool)

(declare-fun tp!1796687 () Bool)

(assert (=> b!6490640 (= e!3933510 tp!1796687)))

(declare-fun b!6490641 () Bool)

(declare-fun res!2665704 () Bool)

(assert (=> b!6490641 (=> res!2665704 e!3933533)))

(declare-fun isEmpty!37476 (List!65407) Bool)

(assert (=> b!6490641 (= res!2665704 (isEmpty!37476 (t!379035 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6490642 () Bool)

(declare-fun Unit!158809 () Unit!158807)

(assert (=> b!6490642 (= e!3933512 Unit!158809)))

(assert (=> b!6490643 (= e!3933523 e!3933521)))

(declare-fun res!2665712 () Bool)

(assert (=> b!6490643 (=> res!2665712 e!3933521)))

(assert (=> b!6490643 (= res!2665712 (not (= (_1!36651 lt!2389655) lt!2389620)))))

(assert (=> b!6490643 (= lt!2389620 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638)))))

(declare-fun lt!2389650 () Option!16260)

(assert (=> b!6490643 (= lt!2389638 (get!22637 lt!2389650))))

(assert (=> b!6490643 (= (Exists!3439 lambda!359441) (Exists!3439 lambda!359443))))

(declare-fun lt!2389639 () Unit!158807)

(assert (=> b!6490643 (= lt!2389639 (lemmaExistCutMatchRandMatchRSpecEquivalent!1976 (reg!16698 (regOne!33250 r!7292)) lt!2389631 (_1!36651 lt!2389655)))))

(assert (=> b!6490643 (= (Exists!3439 lambda!359441) (Exists!3439 lambda!359442))))

(declare-fun lt!2389612 () Unit!158807)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!660 (Regex!16369 List!65406) Unit!158807)

(assert (=> b!6490643 (= lt!2389612 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!660 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389655)))))

(assert (=> b!6490643 (= (isDefined!12963 lt!2389650) (Exists!3439 lambda!359441))))

(assert (=> b!6490643 (= lt!2389650 (findConcatSeparation!2674 (reg!16698 (regOne!33250 r!7292)) lt!2389631 Nil!65282 (_1!36651 lt!2389655) (_1!36651 lt!2389655)))))

(declare-fun lt!2389652 () Unit!158807)

(assert (=> b!6490643 (= lt!2389652 (lemmaFindConcatSeparationEquivalentToExists!2438 (reg!16698 (regOne!33250 r!7292)) lt!2389631 (_1!36651 lt!2389655)))))

(assert (=> b!6490643 (matchRSpec!3470 lt!2389631 (_1!36651 lt!2389655))))

(declare-fun lt!2389613 () Unit!158807)

(assert (=> b!6490643 (= lt!2389613 (mainMatchTheorem!3470 lt!2389631 (_1!36651 lt!2389655)))))

(declare-fun b!6490644 () Bool)

(declare-fun res!2665729 () Bool)

(assert (=> b!6490644 (=> res!2665729 e!3933524)))

(assert (=> b!6490644 (= res!2665729 (not (matchR!8552 lt!2389631 (_2!36651 lt!2389638))))))

(declare-fun b!6490645 () Bool)

(declare-fun tp!1796694 () Bool)

(declare-fun tp!1796688 () Bool)

(assert (=> b!6490645 (= e!3933510 (and tp!1796694 tp!1796688))))

(declare-fun b!6490646 () Bool)

(declare-fun res!2665719 () Bool)

(assert (=> b!6490646 (=> res!2665719 e!3933523)))

(assert (=> b!6490646 (= res!2665719 (not (matchR!8552 (regTwo!33250 r!7292) (_2!36651 lt!2389655))))))

(declare-fun b!6490647 () Bool)

(declare-fun res!2665734 () Bool)

(assert (=> b!6490647 (=> res!2665734 e!3933523)))

(declare-fun isEmpty!37477 (List!65406) Bool)

(assert (=> b!6490647 (= res!2665734 (isEmpty!37477 (_1!36651 lt!2389655)))))

(declare-fun b!6490648 () Bool)

(declare-fun res!2665736 () Bool)

(assert (=> b!6490648 (=> res!2665736 e!3933514)))

(declare-fun isEmpty!37478 (List!65408) Bool)

(assert (=> b!6490648 (= res!2665736 (not (isEmpty!37478 (t!379036 zl!343))))))

(declare-fun setNonEmpty!44219 () Bool)

(declare-fun setElem!44219 () Context!11506)

(declare-fun tp!1796689 () Bool)

(assert (=> setNonEmpty!44219 (= setRes!44219 (and tp!1796689 (inv!84169 setElem!44219) e!3933527))))

(declare-fun setRest!44219 () (InoxSet Context!11506))

(assert (=> setNonEmpty!44219 (= z!1189 ((_ map or) (store ((as const (Array Context!11506 Bool)) false) setElem!44219 true) setRest!44219))))

(assert (=> b!6490649 (= e!3933514 e!3933533)))

(declare-fun res!2665716 () Bool)

(assert (=> b!6490649 (=> res!2665716 e!3933533)))

(declare-fun lt!2389632 () Bool)

(assert (=> b!6490649 (= res!2665716 (or (not (= lt!2389664 lt!2389632)) ((_ is Nil!65282) s!2326)))))

(assert (=> b!6490649 (= (Exists!3439 lambda!359436) (Exists!3439 lambda!359437))))

(declare-fun lt!2389637 () Unit!158807)

(assert (=> b!6490649 (= lt!2389637 (lemmaExistCutMatchRandMatchRSpecEquivalent!1976 (regOne!33250 r!7292) (regTwo!33250 r!7292) s!2326))))

(assert (=> b!6490649 (= lt!2389632 (Exists!3439 lambda!359436))))

(assert (=> b!6490649 (= lt!2389632 (isDefined!12963 (findConcatSeparation!2674 (regOne!33250 r!7292) (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326)))))

(declare-fun lt!2389662 () Unit!158807)

(assert (=> b!6490649 (= lt!2389662 (lemmaFindConcatSeparationEquivalentToExists!2438 (regOne!33250 r!7292) (regTwo!33250 r!7292) s!2326))))

(declare-fun b!6490650 () Bool)

(declare-fun res!2665737 () Bool)

(assert (=> b!6490650 (=> res!2665737 e!3933517)))

(assert (=> b!6490650 (= res!2665737 e!3933518)))

(declare-fun res!2665723 () Bool)

(assert (=> b!6490650 (=> (not res!2665723) (not e!3933518))))

(assert (=> b!6490650 (= res!2665723 ((_ is Concat!25214) (regOne!33250 r!7292)))))

(declare-fun b!6490651 () Bool)

(declare-fun Unit!158810 () Unit!158807)

(assert (=> b!6490651 (= e!3933512 Unit!158810)))

(declare-fun lt!2389646 () Unit!158807)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1200 ((InoxSet Context!11506) (InoxSet Context!11506) List!65406) Unit!158807)

(assert (=> b!6490651 (= lt!2389646 (lemmaZipperConcatMatchesSameAsBothZippers!1200 lt!2389628 lt!2389666 (t!379034 s!2326)))))

(declare-fun res!2665722 () Bool)

(assert (=> b!6490651 (= res!2665722 (matchZipper!2381 lt!2389628 (t!379034 s!2326)))))

(assert (=> b!6490651 (=> res!2665722 e!3933534)))

(assert (=> b!6490651 (= (matchZipper!2381 ((_ map or) lt!2389628 lt!2389666) (t!379034 s!2326)) e!3933534)))

(assert (= (and start!637878 res!2665727) b!6490615))

(assert (= (and b!6490615 res!2665728) b!6490612))

(assert (= (and b!6490612 res!2665735) b!6490613))

(assert (= (and b!6490613 (not res!2665713)) b!6490648))

(assert (= (and b!6490648 (not res!2665736)) b!6490611))

(assert (= (and b!6490611 (not res!2665703)) b!6490639))

(assert (= (and b!6490639 (not res!2665731)) b!6490624))

(assert (= (and b!6490624 (not res!2665738)) b!6490617))

(assert (= (and b!6490617 (not res!2665717)) b!6490649))

(assert (= (and b!6490649 (not res!2665716)) b!6490641))

(assert (= (and b!6490641 (not res!2665704)) b!6490636))

(assert (= (and b!6490636 c!1189392) b!6490651))

(assert (= (and b!6490636 (not c!1189392)) b!6490642))

(assert (= (and b!6490651 (not res!2665722)) b!6490610))

(assert (= (and b!6490636 (not res!2665715)) b!6490650))

(assert (= (and b!6490650 res!2665723) b!6490609))

(assert (= (and b!6490650 (not res!2665737)) b!6490619))

(assert (= (and b!6490619 (not res!2665714)) b!6490637))

(assert (= (and b!6490637 (not res!2665705)) b!6490616))

(assert (= (and b!6490616 (not res!2665711)) b!6490632))

(assert (= (and b!6490632 (not res!2665710)) b!6490628))

(assert (= (and b!6490628 (not res!2665720)) b!6490627))

(assert (= (and b!6490627 (not res!2665718)) b!6490606))

(assert (= (and b!6490606 (not res!2665707)) b!6490608))

(assert (= (and b!6490608 (not res!2665730)) b!6490638))

(assert (= (and b!6490638 (not res!2665726)) b!6490626))

(assert (= (and b!6490626 res!2665724) b!6490635))

(assert (= (and b!6490626 (not res!2665733)) b!6490618))

(assert (= (and b!6490618 (not res!2665709)) b!6490621))

(assert (= (and b!6490621 (not res!2665706)) b!6490646))

(assert (= (and b!6490646 (not res!2665719)) b!6490647))

(assert (= (and b!6490647 (not res!2665734)) b!6490643))

(assert (= (and b!6490643 (not res!2665712)) b!6490630))

(assert (= (and b!6490630 (not res!2665721)) b!6490623))

(assert (= (and b!6490623 (not res!2665725)) b!6490644))

(assert (= (and b!6490644 (not res!2665729)) b!6490629))

(assert (= (and b!6490629 res!2665708) b!6490620))

(assert (= (and b!6490629 (not res!2665732)) b!6490622))

(assert (= (and start!637878 ((_ is ElementMatch!16369) r!7292)) b!6490607))

(assert (= (and start!637878 ((_ is Concat!25214) r!7292)) b!6490645))

(assert (= (and start!637878 ((_ is Star!16369) r!7292)) b!6490640))

(assert (= (and start!637878 ((_ is Union!16369) r!7292)) b!6490625))

(assert (= (and start!637878 condSetEmpty!44219) setIsEmpty!44219))

(assert (= (and start!637878 (not condSetEmpty!44219)) setNonEmpty!44219))

(assert (= setNonEmpty!44219 b!6490633))

(assert (= b!6490614 b!6490631))

(assert (= (and start!637878 ((_ is Cons!65284) zl!343)) b!6490614))

(assert (= (and start!637878 ((_ is Cons!65282) s!2326)) b!6490634))

(declare-fun m!7279072 () Bool)

(assert (=> b!6490616 m!7279072))

(declare-fun m!7279074 () Bool)

(assert (=> b!6490616 m!7279074))

(declare-fun m!7279076 () Bool)

(assert (=> b!6490616 m!7279076))

(declare-fun m!7279078 () Bool)

(assert (=> b!6490616 m!7279078))

(declare-fun m!7279080 () Bool)

(assert (=> b!6490616 m!7279080))

(declare-fun m!7279082 () Bool)

(assert (=> b!6490626 m!7279082))

(declare-fun m!7279084 () Bool)

(assert (=> b!6490626 m!7279084))

(declare-fun m!7279086 () Bool)

(assert (=> b!6490626 m!7279086))

(declare-fun m!7279088 () Bool)

(assert (=> b!6490608 m!7279088))

(declare-fun m!7279090 () Bool)

(assert (=> b!6490608 m!7279090))

(declare-fun m!7279092 () Bool)

(assert (=> b!6490608 m!7279092))

(declare-fun m!7279094 () Bool)

(assert (=> b!6490608 m!7279094))

(declare-fun m!7279096 () Bool)

(assert (=> b!6490608 m!7279096))

(declare-fun m!7279098 () Bool)

(assert (=> b!6490608 m!7279098))

(declare-fun m!7279100 () Bool)

(assert (=> b!6490608 m!7279100))

(declare-fun m!7279102 () Bool)

(assert (=> b!6490608 m!7279102))

(declare-fun m!7279104 () Bool)

(assert (=> b!6490608 m!7279104))

(declare-fun m!7279106 () Bool)

(assert (=> start!637878 m!7279106))

(declare-fun m!7279108 () Bool)

(assert (=> b!6490632 m!7279108))

(declare-fun m!7279110 () Bool)

(assert (=> b!6490632 m!7279110))

(declare-fun m!7279112 () Bool)

(assert (=> b!6490614 m!7279112))

(declare-fun m!7279114 () Bool)

(assert (=> b!6490606 m!7279114))

(declare-fun m!7279116 () Bool)

(assert (=> b!6490610 m!7279116))

(declare-fun m!7279118 () Bool)

(assert (=> b!6490613 m!7279118))

(declare-fun m!7279120 () Bool)

(assert (=> b!6490613 m!7279120))

(declare-fun m!7279122 () Bool)

(assert (=> b!6490613 m!7279122))

(declare-fun m!7279124 () Bool)

(assert (=> b!6490615 m!7279124))

(declare-fun m!7279126 () Bool)

(assert (=> b!6490638 m!7279126))

(declare-fun m!7279128 () Bool)

(assert (=> b!6490622 m!7279128))

(declare-fun m!7279130 () Bool)

(assert (=> b!6490621 m!7279130))

(declare-fun m!7279132 () Bool)

(assert (=> b!6490649 m!7279132))

(declare-fun m!7279134 () Bool)

(assert (=> b!6490649 m!7279134))

(declare-fun m!7279136 () Bool)

(assert (=> b!6490649 m!7279136))

(declare-fun m!7279138 () Bool)

(assert (=> b!6490649 m!7279138))

(assert (=> b!6490649 m!7279134))

(declare-fun m!7279140 () Bool)

(assert (=> b!6490649 m!7279140))

(declare-fun m!7279142 () Bool)

(assert (=> b!6490649 m!7279142))

(assert (=> b!6490649 m!7279132))

(declare-fun m!7279144 () Bool)

(assert (=> setNonEmpty!44219 m!7279144))

(declare-fun m!7279146 () Bool)

(assert (=> b!6490629 m!7279146))

(declare-fun m!7279148 () Bool)

(assert (=> b!6490629 m!7279148))

(declare-fun m!7279150 () Bool)

(assert (=> b!6490629 m!7279150))

(declare-fun m!7279152 () Bool)

(assert (=> b!6490629 m!7279152))

(assert (=> b!6490629 m!7279148))

(declare-fun m!7279154 () Bool)

(assert (=> b!6490629 m!7279154))

(declare-fun m!7279156 () Bool)

(assert (=> b!6490629 m!7279156))

(declare-fun m!7279158 () Bool)

(assert (=> b!6490629 m!7279158))

(declare-fun m!7279160 () Bool)

(assert (=> b!6490629 m!7279160))

(declare-fun m!7279162 () Bool)

(assert (=> b!6490629 m!7279162))

(declare-fun m!7279164 () Bool)

(assert (=> b!6490629 m!7279164))

(declare-fun m!7279166 () Bool)

(assert (=> b!6490629 m!7279166))

(declare-fun m!7279168 () Bool)

(assert (=> b!6490629 m!7279168))

(declare-fun m!7279170 () Bool)

(assert (=> b!6490629 m!7279170))

(declare-fun m!7279172 () Bool)

(assert (=> b!6490629 m!7279172))

(assert (=> b!6490629 m!7279154))

(declare-fun m!7279174 () Bool)

(assert (=> b!6490629 m!7279174))

(declare-fun m!7279176 () Bool)

(assert (=> b!6490629 m!7279176))

(declare-fun m!7279178 () Bool)

(assert (=> b!6490618 m!7279178))

(declare-fun m!7279180 () Bool)

(assert (=> b!6490618 m!7279180))

(declare-fun m!7279182 () Bool)

(assert (=> b!6490618 m!7279182))

(declare-fun m!7279184 () Bool)

(assert (=> b!6490618 m!7279184))

(declare-fun m!7279186 () Bool)

(assert (=> b!6490618 m!7279186))

(declare-fun m!7279188 () Bool)

(assert (=> b!6490618 m!7279188))

(declare-fun m!7279190 () Bool)

(assert (=> b!6490618 m!7279190))

(declare-fun m!7279192 () Bool)

(assert (=> b!6490618 m!7279192))

(assert (=> b!6490618 m!7279186))

(declare-fun m!7279194 () Bool)

(assert (=> b!6490643 m!7279194))

(declare-fun m!7279196 () Bool)

(assert (=> b!6490643 m!7279196))

(declare-fun m!7279198 () Bool)

(assert (=> b!6490643 m!7279198))

(declare-fun m!7279200 () Bool)

(assert (=> b!6490643 m!7279200))

(declare-fun m!7279202 () Bool)

(assert (=> b!6490643 m!7279202))

(declare-fun m!7279204 () Bool)

(assert (=> b!6490643 m!7279204))

(declare-fun m!7279206 () Bool)

(assert (=> b!6490643 m!7279206))

(declare-fun m!7279208 () Bool)

(assert (=> b!6490643 m!7279208))

(declare-fun m!7279210 () Bool)

(assert (=> b!6490643 m!7279210))

(declare-fun m!7279212 () Bool)

(assert (=> b!6490643 m!7279212))

(assert (=> b!6490643 m!7279206))

(declare-fun m!7279214 () Bool)

(assert (=> b!6490643 m!7279214))

(assert (=> b!6490643 m!7279206))

(declare-fun m!7279216 () Bool)

(assert (=> b!6490643 m!7279216))

(declare-fun m!7279218 () Bool)

(assert (=> b!6490630 m!7279218))

(declare-fun m!7279220 () Bool)

(assert (=> b!6490630 m!7279220))

(declare-fun m!7279222 () Bool)

(assert (=> b!6490630 m!7279222))

(declare-fun m!7279224 () Bool)

(assert (=> b!6490630 m!7279224))

(declare-fun m!7279226 () Bool)

(assert (=> b!6490623 m!7279226))

(declare-fun m!7279228 () Bool)

(assert (=> b!6490609 m!7279228))

(declare-fun m!7279230 () Bool)

(assert (=> b!6490641 m!7279230))

(declare-fun m!7279232 () Bool)

(assert (=> b!6490646 m!7279232))

(declare-fun m!7279234 () Bool)

(assert (=> b!6490636 m!7279234))

(declare-fun m!7279236 () Bool)

(assert (=> b!6490636 m!7279236))

(declare-fun m!7279238 () Bool)

(assert (=> b!6490636 m!7279238))

(declare-fun m!7279240 () Bool)

(assert (=> b!6490636 m!7279240))

(declare-fun m!7279242 () Bool)

(assert (=> b!6490636 m!7279242))

(declare-fun m!7279244 () Bool)

(assert (=> b!6490636 m!7279244))

(declare-fun m!7279246 () Bool)

(assert (=> b!6490636 m!7279246))

(declare-fun m!7279248 () Bool)

(assert (=> b!6490647 m!7279248))

(declare-fun m!7279250 () Bool)

(assert (=> b!6490648 m!7279250))

(declare-fun m!7279252 () Bool)

(assert (=> b!6490651 m!7279252))

(declare-fun m!7279254 () Bool)

(assert (=> b!6490651 m!7279254))

(declare-fun m!7279256 () Bool)

(assert (=> b!6490651 m!7279256))

(declare-fun m!7279258 () Bool)

(assert (=> b!6490612 m!7279258))

(declare-fun m!7279260 () Bool)

(assert (=> b!6490637 m!7279260))

(declare-fun m!7279262 () Bool)

(assert (=> b!6490624 m!7279262))

(assert (=> b!6490624 m!7279262))

(declare-fun m!7279264 () Bool)

(assert (=> b!6490624 m!7279264))

(declare-fun m!7279266 () Bool)

(assert (=> b!6490611 m!7279266))

(declare-fun m!7279268 () Bool)

(assert (=> b!6490644 m!7279268))

(check-sat (not b!6490622) (not b!6490646) (not b!6490624) (not b!6490643) (not b!6490648) (not b!6490651) (not b!6490647) (not b!6490636) (not b!6490612) (not b!6490634) (not b!6490640) (not b!6490609) (not b!6490614) (not setNonEmpty!44219) (not b!6490631) (not b!6490649) (not b!6490637) (not b!6490615) (not b!6490621) (not b!6490618) tp_is_empty!41991 (not b!6490629) (not b!6490623) (not b!6490641) (not b!6490616) (not b!6490630) (not start!637878) (not b!6490644) (not b!6490606) (not b!6490611) (not b!6490633) (not b!6490613) (not b!6490645) (not b!6490638) (not b!6490625) (not b!6490626) (not b!6490608) (not b!6490610) (not b!6490632))
(check-sat)
(get-model)

(declare-fun d!2036394 () Bool)

(declare-fun c!1189407 () Bool)

(assert (=> d!2036394 (= c!1189407 (and ((_ is ElementMatch!16369) (reg!16698 (regOne!33250 r!7292))) (= (c!1189393 (reg!16698 (regOne!33250 r!7292))) (h!71730 s!2326))))))

(declare-fun e!3933551 () (InoxSet Context!11506))

(assert (=> d!2036394 (= (derivationStepZipperDown!1617 (reg!16698 (regOne!33250 r!7292)) lt!2389656 (h!71730 s!2326)) e!3933551)))

(declare-fun b!6490682 () Bool)

(declare-fun e!3933550 () Bool)

(assert (=> b!6490682 (= e!3933550 (nullable!6362 (regOne!33250 (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun bm!561907 () Bool)

(declare-fun c!1189406 () Bool)

(declare-fun call!561917 () List!65407)

(declare-fun c!1189404 () Bool)

(declare-fun $colon$colon!2221 (List!65407 Regex!16369) List!65407)

(assert (=> bm!561907 (= call!561917 ($colon$colon!2221 (exprs!6253 lt!2389656) (ite (or c!1189406 c!1189404) (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun b!6490683 () Bool)

(declare-fun c!1189408 () Bool)

(assert (=> b!6490683 (= c!1189408 ((_ is Star!16369) (reg!16698 (regOne!33250 r!7292))))))

(declare-fun e!3933548 () (InoxSet Context!11506))

(declare-fun e!3933549 () (InoxSet Context!11506))

(assert (=> b!6490683 (= e!3933548 e!3933549)))

(declare-fun bm!561908 () Bool)

(declare-fun call!561914 () List!65407)

(assert (=> bm!561908 (= call!561914 call!561917)))

(declare-fun bm!561909 () Bool)

(declare-fun call!561915 () (InoxSet Context!11506))

(declare-fun call!561912 () (InoxSet Context!11506))

(assert (=> bm!561909 (= call!561915 call!561912)))

(declare-fun bm!561910 () Bool)

(declare-fun call!561916 () (InoxSet Context!11506))

(assert (=> bm!561910 (= call!561916 call!561915)))

(declare-fun c!1189405 () Bool)

(declare-fun call!561913 () (InoxSet Context!11506))

(declare-fun bm!561911 () Bool)

(assert (=> bm!561911 (= call!561913 (derivationStepZipperDown!1617 (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292)))) (ite c!1189405 lt!2389656 (Context!11507 call!561917)) (h!71730 s!2326)))))

(declare-fun b!6490684 () Bool)

(assert (=> b!6490684 (= e!3933549 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6490685 () Bool)

(assert (=> b!6490685 (= e!3933551 (store ((as const (Array Context!11506 Bool)) false) lt!2389656 true))))

(declare-fun b!6490686 () Bool)

(assert (=> b!6490686 (= c!1189406 e!3933550)))

(declare-fun res!2665741 () Bool)

(assert (=> b!6490686 (=> (not res!2665741) (not e!3933550))))

(assert (=> b!6490686 (= res!2665741 ((_ is Concat!25214) (reg!16698 (regOne!33250 r!7292))))))

(declare-fun e!3933552 () (InoxSet Context!11506))

(declare-fun e!3933547 () (InoxSet Context!11506))

(assert (=> b!6490686 (= e!3933552 e!3933547)))

(declare-fun bm!561912 () Bool)

(assert (=> bm!561912 (= call!561912 (derivationStepZipperDown!1617 (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292)))))) (ite (or c!1189405 c!1189406) lt!2389656 (Context!11507 call!561914)) (h!71730 s!2326)))))

(declare-fun b!6490687 () Bool)

(assert (=> b!6490687 (= e!3933549 call!561916)))

(declare-fun b!6490688 () Bool)

(assert (=> b!6490688 (= e!3933552 ((_ map or) call!561912 call!561913))))

(declare-fun b!6490689 () Bool)

(assert (=> b!6490689 (= e!3933547 ((_ map or) call!561913 call!561915))))

(declare-fun b!6490690 () Bool)

(assert (=> b!6490690 (= e!3933548 call!561916)))

(declare-fun b!6490691 () Bool)

(assert (=> b!6490691 (= e!3933551 e!3933552)))

(assert (=> b!6490691 (= c!1189405 ((_ is Union!16369) (reg!16698 (regOne!33250 r!7292))))))

(declare-fun b!6490692 () Bool)

(assert (=> b!6490692 (= e!3933547 e!3933548)))

(assert (=> b!6490692 (= c!1189404 ((_ is Concat!25214) (reg!16698 (regOne!33250 r!7292))))))

(assert (= (and d!2036394 c!1189407) b!6490685))

(assert (= (and d!2036394 (not c!1189407)) b!6490691))

(assert (= (and b!6490691 c!1189405) b!6490688))

(assert (= (and b!6490691 (not c!1189405)) b!6490686))

(assert (= (and b!6490686 res!2665741) b!6490682))

(assert (= (and b!6490686 c!1189406) b!6490689))

(assert (= (and b!6490686 (not c!1189406)) b!6490692))

(assert (= (and b!6490692 c!1189404) b!6490690))

(assert (= (and b!6490692 (not c!1189404)) b!6490683))

(assert (= (and b!6490683 c!1189408) b!6490687))

(assert (= (and b!6490683 (not c!1189408)) b!6490684))

(assert (= (or b!6490690 b!6490687) bm!561908))

(assert (= (or b!6490690 b!6490687) bm!561910))

(assert (= (or b!6490689 bm!561908) bm!561907))

(assert (= (or b!6490689 bm!561910) bm!561909))

(assert (= (or b!6490688 b!6490689) bm!561911))

(assert (= (or b!6490688 bm!561909) bm!561912))

(assert (=> b!6490685 m!7279102))

(declare-fun m!7279270 () Bool)

(assert (=> b!6490682 m!7279270))

(declare-fun m!7279272 () Bool)

(assert (=> bm!561912 m!7279272))

(declare-fun m!7279274 () Bool)

(assert (=> bm!561911 m!7279274))

(declare-fun m!7279276 () Bool)

(assert (=> bm!561907 m!7279276))

(assert (=> b!6490637 d!2036394))

(declare-fun d!2036396 () Bool)

(declare-fun choose!48171 ((InoxSet Context!11506) Int) (InoxSet Context!11506))

(assert (=> d!2036396 (= (flatMap!1874 lt!2389660 lambda!359438) (choose!48171 lt!2389660 lambda!359438))))

(declare-fun bs!1647620 () Bool)

(assert (= bs!1647620 d!2036396))

(declare-fun m!7279278 () Bool)

(assert (=> bs!1647620 m!7279278))

(assert (=> b!6490616 d!2036396))

(declare-fun b!6490703 () Bool)

(declare-fun e!3933560 () Bool)

(assert (=> b!6490703 (= e!3933560 (nullable!6362 (h!71731 (exprs!6253 lt!2389611))))))

(declare-fun b!6490704 () Bool)

(declare-fun e!3933559 () (InoxSet Context!11506))

(declare-fun e!3933561 () (InoxSet Context!11506))

(assert (=> b!6490704 (= e!3933559 e!3933561)))

(declare-fun c!1189414 () Bool)

(assert (=> b!6490704 (= c!1189414 ((_ is Cons!65283) (exprs!6253 lt!2389611)))))

(declare-fun b!6490705 () Bool)

(declare-fun call!561920 () (InoxSet Context!11506))

(assert (=> b!6490705 (= e!3933561 call!561920)))

(declare-fun bm!561915 () Bool)

(assert (=> bm!561915 (= call!561920 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 lt!2389611)) (Context!11507 (t!379035 (exprs!6253 lt!2389611))) (h!71730 s!2326)))))

(declare-fun b!6490707 () Bool)

(assert (=> b!6490707 (= e!3933561 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2036398 () Bool)

(declare-fun c!1189413 () Bool)

(assert (=> d!2036398 (= c!1189413 e!3933560)))

(declare-fun res!2665744 () Bool)

(assert (=> d!2036398 (=> (not res!2665744) (not e!3933560))))

(assert (=> d!2036398 (= res!2665744 ((_ is Cons!65283) (exprs!6253 lt!2389611)))))

(assert (=> d!2036398 (= (derivationStepZipperUp!1543 lt!2389611 (h!71730 s!2326)) e!3933559)))

(declare-fun b!6490706 () Bool)

(assert (=> b!6490706 (= e!3933559 ((_ map or) call!561920 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 lt!2389611))) (h!71730 s!2326))))))

(assert (= (and d!2036398 res!2665744) b!6490703))

(assert (= (and d!2036398 c!1189413) b!6490706))

(assert (= (and d!2036398 (not c!1189413)) b!6490704))

(assert (= (and b!6490704 c!1189414) b!6490705))

(assert (= (and b!6490704 (not c!1189414)) b!6490707))

(assert (= (or b!6490706 b!6490705) bm!561915))

(declare-fun m!7279280 () Bool)

(assert (=> b!6490703 m!7279280))

(declare-fun m!7279282 () Bool)

(assert (=> bm!561915 m!7279282))

(declare-fun m!7279284 () Bool)

(assert (=> b!6490706 m!7279284))

(assert (=> b!6490616 d!2036398))

(declare-fun d!2036400 () Bool)

(declare-fun dynLambda!25930 (Int Context!11506) (InoxSet Context!11506))

(assert (=> d!2036400 (= (flatMap!1874 lt!2389660 lambda!359438) (dynLambda!25930 lambda!359438 lt!2389611))))

(declare-fun lt!2389671 () Unit!158807)

(declare-fun choose!48172 ((InoxSet Context!11506) Context!11506 Int) Unit!158807)

(assert (=> d!2036400 (= lt!2389671 (choose!48172 lt!2389660 lt!2389611 lambda!359438))))

(assert (=> d!2036400 (= lt!2389660 (store ((as const (Array Context!11506 Bool)) false) lt!2389611 true))))

(assert (=> d!2036400 (= (lemmaFlatMapOnSingletonSet!1400 lt!2389660 lt!2389611 lambda!359438) lt!2389671)))

(declare-fun b_lambda!245729 () Bool)

(assert (=> (not b_lambda!245729) (not d!2036400)))

(declare-fun bs!1647621 () Bool)

(assert (= bs!1647621 d!2036400))

(assert (=> bs!1647621 m!7279072))

(declare-fun m!7279286 () Bool)

(assert (=> bs!1647621 m!7279286))

(declare-fun m!7279288 () Bool)

(assert (=> bs!1647621 m!7279288))

(assert (=> bs!1647621 m!7279074))

(assert (=> b!6490616 d!2036400))

(declare-fun bs!1647622 () Bool)

(declare-fun d!2036402 () Bool)

(assert (= bs!1647622 (and d!2036402 b!6490636)))

(declare-fun lambda!359447 () Int)

(assert (=> bs!1647622 (= lambda!359447 lambda!359438)))

(assert (=> d!2036402 true))

(assert (=> d!2036402 (= (derivationStepZipper!2335 lt!2389660 (h!71730 s!2326)) (flatMap!1874 lt!2389660 lambda!359447))))

(declare-fun bs!1647623 () Bool)

(assert (= bs!1647623 d!2036402))

(declare-fun m!7279290 () Bool)

(assert (=> bs!1647623 m!7279290))

(assert (=> b!6490616 d!2036402))

(declare-fun d!2036404 () Bool)

(declare-fun lt!2389674 () Regex!16369)

(assert (=> d!2036404 (validRegex!8105 lt!2389674)))

(assert (=> d!2036404 (= lt!2389674 (generalisedUnion!2213 (unfocusZipperList!1790 lt!2389640)))))

(assert (=> d!2036404 (= (unfocusZipper!2111 lt!2389640) lt!2389674)))

(declare-fun bs!1647624 () Bool)

(assert (= bs!1647624 d!2036404))

(declare-fun m!7279292 () Bool)

(assert (=> bs!1647624 m!7279292))

(declare-fun m!7279294 () Bool)

(assert (=> bs!1647624 m!7279294))

(assert (=> bs!1647624 m!7279294))

(declare-fun m!7279296 () Bool)

(assert (=> bs!1647624 m!7279296))

(assert (=> b!6490638 d!2036404))

(declare-fun bs!1647625 () Bool)

(declare-fun b!6490748 () Bool)

(assert (= bs!1647625 (and b!6490748 b!6490643)))

(declare-fun lambda!359452 () Int)

(assert (=> bs!1647625 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 r!7292) (reg!16698 (regOne!33250 r!7292))) (= r!7292 lt!2389631)) (= lambda!359452 lambda!359442))))

(declare-fun bs!1647626 () Bool)

(assert (= bs!1647626 (and b!6490748 b!6490618)))

(assert (=> bs!1647626 (not (= lambda!359452 lambda!359439))))

(assert (=> bs!1647625 (not (= lambda!359452 lambda!359441))))

(assert (=> bs!1647625 (not (= lambda!359452 lambda!359443))))

(declare-fun bs!1647627 () Bool)

(assert (= bs!1647627 (and b!6490748 b!6490649)))

(assert (=> bs!1647627 (not (= lambda!359452 lambda!359437))))

(assert (=> bs!1647627 (not (= lambda!359452 lambda!359436))))

(assert (=> bs!1647626 (not (= lambda!359452 lambda!359440))))

(assert (=> b!6490748 true))

(assert (=> b!6490748 true))

(declare-fun bs!1647628 () Bool)

(declare-fun b!6490750 () Bool)

(assert (= bs!1647628 (and b!6490750 b!6490643)))

(declare-fun lambda!359453 () Int)

(assert (=> bs!1647628 (not (= lambda!359453 lambda!359442))))

(declare-fun bs!1647629 () Bool)

(assert (= bs!1647629 (and b!6490750 b!6490618)))

(assert (=> bs!1647629 (not (= lambda!359453 lambda!359439))))

(assert (=> bs!1647628 (not (= lambda!359453 lambda!359441))))

(assert (=> bs!1647628 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359453 lambda!359443))))

(declare-fun bs!1647630 () Bool)

(assert (= bs!1647630 (and b!6490750 b!6490649)))

(assert (=> bs!1647630 (= lambda!359453 lambda!359437)))

(assert (=> bs!1647630 (not (= lambda!359453 lambda!359436))))

(assert (=> bs!1647629 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359453 lambda!359440))))

(declare-fun bs!1647631 () Bool)

(assert (= bs!1647631 (and b!6490750 b!6490748)))

(assert (=> bs!1647631 (not (= lambda!359453 lambda!359452))))

(assert (=> b!6490750 true))

(assert (=> b!6490750 true))

(declare-fun b!6490742 () Bool)

(declare-fun e!3933585 () Bool)

(declare-fun e!3933586 () Bool)

(assert (=> b!6490742 (= e!3933585 e!3933586)))

(declare-fun res!2665763 () Bool)

(assert (=> b!6490742 (= res!2665763 (not ((_ is EmptyLang!16369) r!7292)))))

(assert (=> b!6490742 (=> (not res!2665763) (not e!3933586))))

(declare-fun bm!561920 () Bool)

(declare-fun call!561925 () Bool)

(assert (=> bm!561920 (= call!561925 (isEmpty!37477 s!2326))))

(declare-fun b!6490743 () Bool)

(declare-fun e!3933581 () Bool)

(declare-fun e!3933580 () Bool)

(assert (=> b!6490743 (= e!3933581 e!3933580)))

(declare-fun res!2665762 () Bool)

(assert (=> b!6490743 (= res!2665762 (matchRSpec!3470 (regOne!33251 r!7292) s!2326))))

(assert (=> b!6490743 (=> res!2665762 e!3933580)))

(declare-fun b!6490744 () Bool)

(assert (=> b!6490744 (= e!3933580 (matchRSpec!3470 (regTwo!33251 r!7292) s!2326))))

(declare-fun b!6490745 () Bool)

(declare-fun res!2665761 () Bool)

(declare-fun e!3933583 () Bool)

(assert (=> b!6490745 (=> res!2665761 e!3933583)))

(assert (=> b!6490745 (= res!2665761 call!561925)))

(declare-fun e!3933584 () Bool)

(assert (=> b!6490745 (= e!3933584 e!3933583)))

(declare-fun d!2036406 () Bool)

(declare-fun c!1189425 () Bool)

(assert (=> d!2036406 (= c!1189425 ((_ is EmptyExpr!16369) r!7292))))

(assert (=> d!2036406 (= (matchRSpec!3470 r!7292 s!2326) e!3933585)))

(declare-fun b!6490746 () Bool)

(declare-fun e!3933582 () Bool)

(assert (=> b!6490746 (= e!3933582 (= s!2326 (Cons!65282 (c!1189393 r!7292) Nil!65282)))))

(declare-fun b!6490747 () Bool)

(assert (=> b!6490747 (= e!3933585 call!561925)))

(declare-fun call!561926 () Bool)

(assert (=> b!6490748 (= e!3933583 call!561926)))

(declare-fun b!6490749 () Bool)

(assert (=> b!6490749 (= e!3933581 e!3933584)))

(declare-fun c!1189426 () Bool)

(assert (=> b!6490749 (= c!1189426 ((_ is Star!16369) r!7292))))

(assert (=> b!6490750 (= e!3933584 call!561926)))

(declare-fun bm!561921 () Bool)

(assert (=> bm!561921 (= call!561926 (Exists!3439 (ite c!1189426 lambda!359452 lambda!359453)))))

(declare-fun b!6490751 () Bool)

(declare-fun c!1189427 () Bool)

(assert (=> b!6490751 (= c!1189427 ((_ is Union!16369) r!7292))))

(assert (=> b!6490751 (= e!3933582 e!3933581)))

(declare-fun b!6490752 () Bool)

(declare-fun c!1189428 () Bool)

(assert (=> b!6490752 (= c!1189428 ((_ is ElementMatch!16369) r!7292))))

(assert (=> b!6490752 (= e!3933586 e!3933582)))

(assert (= (and d!2036406 c!1189425) b!6490747))

(assert (= (and d!2036406 (not c!1189425)) b!6490742))

(assert (= (and b!6490742 res!2665763) b!6490752))

(assert (= (and b!6490752 c!1189428) b!6490746))

(assert (= (and b!6490752 (not c!1189428)) b!6490751))

(assert (= (and b!6490751 c!1189427) b!6490743))

(assert (= (and b!6490751 (not c!1189427)) b!6490749))

(assert (= (and b!6490743 (not res!2665762)) b!6490744))

(assert (= (and b!6490749 c!1189426) b!6490745))

(assert (= (and b!6490749 (not c!1189426)) b!6490750))

(assert (= (and b!6490745 (not res!2665761)) b!6490748))

(assert (= (or b!6490748 b!6490750) bm!561921))

(assert (= (or b!6490747 b!6490745) bm!561920))

(declare-fun m!7279298 () Bool)

(assert (=> bm!561920 m!7279298))

(declare-fun m!7279302 () Bool)

(assert (=> b!6490743 m!7279302))

(declare-fun m!7279304 () Bool)

(assert (=> b!6490744 m!7279304))

(declare-fun m!7279308 () Bool)

(assert (=> bm!561921 m!7279308))

(assert (=> b!6490613 d!2036406))

(declare-fun b!6490823 () Bool)

(declare-fun res!2665791 () Bool)

(declare-fun e!3933625 () Bool)

(assert (=> b!6490823 (=> res!2665791 e!3933625)))

(declare-fun e!3933629 () Bool)

(assert (=> b!6490823 (= res!2665791 e!3933629)))

(declare-fun res!2665788 () Bool)

(assert (=> b!6490823 (=> (not res!2665788) (not e!3933629))))

(declare-fun lt!2389680 () Bool)

(assert (=> b!6490823 (= res!2665788 lt!2389680)))

(declare-fun b!6490824 () Bool)

(declare-fun res!2665789 () Bool)

(assert (=> b!6490824 (=> (not res!2665789) (not e!3933629))))

(declare-fun tail!12296 (List!65406) List!65406)

(assert (=> b!6490824 (= res!2665789 (isEmpty!37477 (tail!12296 s!2326)))))

(declare-fun b!6490826 () Bool)

(declare-fun e!3933627 () Bool)

(assert (=> b!6490826 (= e!3933625 e!3933627)))

(declare-fun res!2665792 () Bool)

(assert (=> b!6490826 (=> (not res!2665792) (not e!3933627))))

(assert (=> b!6490826 (= res!2665792 (not lt!2389680))))

(declare-fun bm!561936 () Bool)

(declare-fun call!561941 () Bool)

(assert (=> bm!561936 (= call!561941 (isEmpty!37477 s!2326))))

(declare-fun b!6490827 () Bool)

(declare-fun e!3933628 () Bool)

(declare-fun head!13211 (List!65406) C!33008)

(assert (=> b!6490827 (= e!3933628 (not (= (head!13211 s!2326) (c!1189393 r!7292))))))

(declare-fun b!6490828 () Bool)

(declare-fun e!3933631 () Bool)

(declare-fun derivativeStep!5064 (Regex!16369 C!33008) Regex!16369)

(assert (=> b!6490828 (= e!3933631 (matchR!8552 (derivativeStep!5064 r!7292 (head!13211 s!2326)) (tail!12296 s!2326)))))

(declare-fun b!6490829 () Bool)

(declare-fun res!2665793 () Bool)

(assert (=> b!6490829 (=> res!2665793 e!3933628)))

(assert (=> b!6490829 (= res!2665793 (not (isEmpty!37477 (tail!12296 s!2326))))))

(declare-fun b!6490830 () Bool)

(declare-fun res!2665790 () Bool)

(assert (=> b!6490830 (=> res!2665790 e!3933625)))

(assert (=> b!6490830 (= res!2665790 (not ((_ is ElementMatch!16369) r!7292)))))

(declare-fun e!3933626 () Bool)

(assert (=> b!6490830 (= e!3933626 e!3933625)))

(declare-fun b!6490831 () Bool)

(declare-fun e!3933630 () Bool)

(assert (=> b!6490831 (= e!3933630 (= lt!2389680 call!561941))))

(declare-fun b!6490832 () Bool)

(assert (=> b!6490832 (= e!3933627 e!3933628)))

(declare-fun res!2665787 () Bool)

(assert (=> b!6490832 (=> res!2665787 e!3933628)))

(assert (=> b!6490832 (= res!2665787 call!561941)))

(declare-fun b!6490833 () Bool)

(assert (=> b!6490833 (= e!3933631 (nullable!6362 r!7292))))

(declare-fun b!6490834 () Bool)

(assert (=> b!6490834 (= e!3933629 (= (head!13211 s!2326) (c!1189393 r!7292)))))

(declare-fun d!2036412 () Bool)

(assert (=> d!2036412 e!3933630))

(declare-fun c!1189455 () Bool)

(assert (=> d!2036412 (= c!1189455 ((_ is EmptyExpr!16369) r!7292))))

(assert (=> d!2036412 (= lt!2389680 e!3933631)))

(declare-fun c!1189454 () Bool)

(assert (=> d!2036412 (= c!1189454 (isEmpty!37477 s!2326))))

(assert (=> d!2036412 (validRegex!8105 r!7292)))

(assert (=> d!2036412 (= (matchR!8552 r!7292 s!2326) lt!2389680)))

(declare-fun b!6490825 () Bool)

(assert (=> b!6490825 (= e!3933630 e!3933626)))

(declare-fun c!1189453 () Bool)

(assert (=> b!6490825 (= c!1189453 ((_ is EmptyLang!16369) r!7292))))

(declare-fun b!6490835 () Bool)

(assert (=> b!6490835 (= e!3933626 (not lt!2389680))))

(declare-fun b!6490836 () Bool)

(declare-fun res!2665786 () Bool)

(assert (=> b!6490836 (=> (not res!2665786) (not e!3933629))))

(assert (=> b!6490836 (= res!2665786 (not call!561941))))

(assert (= (and d!2036412 c!1189454) b!6490833))

(assert (= (and d!2036412 (not c!1189454)) b!6490828))

(assert (= (and d!2036412 c!1189455) b!6490831))

(assert (= (and d!2036412 (not c!1189455)) b!6490825))

(assert (= (and b!6490825 c!1189453) b!6490835))

(assert (= (and b!6490825 (not c!1189453)) b!6490830))

(assert (= (and b!6490830 (not res!2665790)) b!6490823))

(assert (= (and b!6490823 res!2665788) b!6490836))

(assert (= (and b!6490836 res!2665786) b!6490824))

(assert (= (and b!6490824 res!2665789) b!6490834))

(assert (= (and b!6490823 (not res!2665791)) b!6490826))

(assert (= (and b!6490826 res!2665792) b!6490832))

(assert (= (and b!6490832 (not res!2665787)) b!6490829))

(assert (= (and b!6490829 (not res!2665793)) b!6490827))

(assert (= (or b!6490831 b!6490832 b!6490836) bm!561936))

(declare-fun m!7279326 () Bool)

(assert (=> b!6490824 m!7279326))

(assert (=> b!6490824 m!7279326))

(declare-fun m!7279328 () Bool)

(assert (=> b!6490824 m!7279328))

(assert (=> d!2036412 m!7279298))

(assert (=> d!2036412 m!7279106))

(assert (=> b!6490829 m!7279326))

(assert (=> b!6490829 m!7279326))

(assert (=> b!6490829 m!7279328))

(declare-fun m!7279330 () Bool)

(assert (=> b!6490827 m!7279330))

(declare-fun m!7279332 () Bool)

(assert (=> b!6490833 m!7279332))

(assert (=> bm!561936 m!7279298))

(assert (=> b!6490834 m!7279330))

(assert (=> b!6490828 m!7279330))

(assert (=> b!6490828 m!7279330))

(declare-fun m!7279334 () Bool)

(assert (=> b!6490828 m!7279334))

(assert (=> b!6490828 m!7279326))

(assert (=> b!6490828 m!7279334))

(assert (=> b!6490828 m!7279326))

(declare-fun m!7279336 () Bool)

(assert (=> b!6490828 m!7279336))

(assert (=> b!6490613 d!2036412))

(declare-fun d!2036424 () Bool)

(assert (=> d!2036424 (= (matchR!8552 r!7292 s!2326) (matchRSpec!3470 r!7292 s!2326))))

(declare-fun lt!2389683 () Unit!158807)

(declare-fun choose!48175 (Regex!16369 List!65406) Unit!158807)

(assert (=> d!2036424 (= lt!2389683 (choose!48175 r!7292 s!2326))))

(assert (=> d!2036424 (validRegex!8105 r!7292)))

(assert (=> d!2036424 (= (mainMatchTheorem!3470 r!7292 s!2326) lt!2389683)))

(declare-fun bs!1647635 () Bool)

(assert (= bs!1647635 d!2036424))

(assert (=> bs!1647635 m!7279120))

(assert (=> bs!1647635 m!7279118))

(declare-fun m!7279338 () Bool)

(assert (=> bs!1647635 m!7279338))

(assert (=> bs!1647635 m!7279106))

(assert (=> b!6490613 d!2036424))

(declare-fun bs!1647636 () Bool)

(declare-fun d!2036426 () Bool)

(assert (= bs!1647636 (and d!2036426 b!6490629)))

(declare-fun lambda!359456 () Int)

(assert (=> bs!1647636 (= lambda!359456 lambda!359444)))

(declare-fun forall!15551 (List!65407 Int) Bool)

(assert (=> d!2036426 (= (inv!84169 (h!71732 zl!343)) (forall!15551 (exprs!6253 (h!71732 zl!343)) lambda!359456))))

(declare-fun bs!1647637 () Bool)

(assert (= bs!1647637 d!2036426))

(declare-fun m!7279348 () Bool)

(assert (=> bs!1647637 m!7279348))

(assert (=> b!6490614 d!2036426))

(declare-fun b!6490848 () Bool)

(declare-fun e!3933639 () Bool)

(assert (=> b!6490848 (= e!3933639 (nullable!6362 (h!71731 (exprs!6253 lt!2389642))))))

(declare-fun b!6490849 () Bool)

(declare-fun e!3933638 () (InoxSet Context!11506))

(declare-fun e!3933640 () (InoxSet Context!11506))

(assert (=> b!6490849 (= e!3933638 e!3933640)))

(declare-fun c!1189462 () Bool)

(assert (=> b!6490849 (= c!1189462 ((_ is Cons!65283) (exprs!6253 lt!2389642)))))

(declare-fun b!6490850 () Bool)

(declare-fun call!561952 () (InoxSet Context!11506))

(assert (=> b!6490850 (= e!3933640 call!561952)))

(declare-fun bm!561947 () Bool)

(assert (=> bm!561947 (= call!561952 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 lt!2389642)) (Context!11507 (t!379035 (exprs!6253 lt!2389642))) (h!71730 s!2326)))))

(declare-fun b!6490852 () Bool)

(assert (=> b!6490852 (= e!3933640 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2036430 () Bool)

(declare-fun c!1189461 () Bool)

(assert (=> d!2036430 (= c!1189461 e!3933639)))

(declare-fun res!2665795 () Bool)

(assert (=> d!2036430 (=> (not res!2665795) (not e!3933639))))

(assert (=> d!2036430 (= res!2665795 ((_ is Cons!65283) (exprs!6253 lt!2389642)))))

(assert (=> d!2036430 (= (derivationStepZipperUp!1543 lt!2389642 (h!71730 s!2326)) e!3933638)))

(declare-fun b!6490851 () Bool)

(assert (=> b!6490851 (= e!3933638 ((_ map or) call!561952 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 lt!2389642))) (h!71730 s!2326))))))

(assert (= (and d!2036430 res!2665795) b!6490848))

(assert (= (and d!2036430 c!1189461) b!6490851))

(assert (= (and d!2036430 (not c!1189461)) b!6490849))

(assert (= (and b!6490849 c!1189462) b!6490850))

(assert (= (and b!6490849 (not c!1189462)) b!6490852))

(assert (= (or b!6490851 b!6490850) bm!561947))

(declare-fun m!7279352 () Bool)

(assert (=> b!6490848 m!7279352))

(declare-fun m!7279354 () Bool)

(assert (=> bm!561947 m!7279354))

(declare-fun m!7279358 () Bool)

(assert (=> b!6490851 m!7279358))

(assert (=> b!6490636 d!2036430))

(declare-fun d!2036432 () Bool)

(declare-fun c!1189468 () Bool)

(assert (=> d!2036432 (= c!1189468 (and ((_ is ElementMatch!16369) (h!71731 (exprs!6253 (h!71732 zl!343)))) (= (c!1189393 (h!71731 (exprs!6253 (h!71732 zl!343)))) (h!71730 s!2326))))))

(declare-fun e!3933648 () (InoxSet Context!11506))

(assert (=> d!2036432 (= (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (h!71732 zl!343))) lt!2389642 (h!71730 s!2326)) e!3933648)))

(declare-fun b!6490858 () Bool)

(declare-fun e!3933647 () Bool)

(assert (=> b!6490858 (= e!3933647 (nullable!6362 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343))))))))

(declare-fun c!1189467 () Bool)

(declare-fun call!561959 () List!65407)

(declare-fun bm!561949 () Bool)

(declare-fun c!1189465 () Bool)

(assert (=> bm!561949 (= call!561959 ($colon$colon!2221 (exprs!6253 lt!2389642) (ite (or c!1189467 c!1189465) (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (h!71731 (exprs!6253 (h!71732 zl!343))))))))

(declare-fun b!6490859 () Bool)

(declare-fun c!1189469 () Bool)

(assert (=> b!6490859 (= c!1189469 ((_ is Star!16369) (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun e!3933645 () (InoxSet Context!11506))

(declare-fun e!3933646 () (InoxSet Context!11506))

(assert (=> b!6490859 (= e!3933645 e!3933646)))

(declare-fun bm!561950 () Bool)

(declare-fun call!561956 () List!65407)

(assert (=> bm!561950 (= call!561956 call!561959)))

(declare-fun bm!561951 () Bool)

(declare-fun call!561957 () (InoxSet Context!11506))

(declare-fun call!561954 () (InoxSet Context!11506))

(assert (=> bm!561951 (= call!561957 call!561954)))

(declare-fun bm!561952 () Bool)

(declare-fun call!561958 () (InoxSet Context!11506))

(assert (=> bm!561952 (= call!561958 call!561957)))

(declare-fun call!561955 () (InoxSet Context!11506))

(declare-fun c!1189466 () Bool)

(declare-fun bm!561953 () Bool)

(assert (=> bm!561953 (= call!561955 (derivationStepZipperDown!1617 (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343))))) (ite c!1189466 lt!2389642 (Context!11507 call!561959)) (h!71730 s!2326)))))

(declare-fun b!6490860 () Bool)

(assert (=> b!6490860 (= e!3933646 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6490861 () Bool)

(assert (=> b!6490861 (= e!3933648 (store ((as const (Array Context!11506 Bool)) false) lt!2389642 true))))

(declare-fun b!6490862 () Bool)

(assert (=> b!6490862 (= c!1189467 e!3933647)))

(declare-fun res!2665797 () Bool)

(assert (=> b!6490862 (=> (not res!2665797) (not e!3933647))))

(assert (=> b!6490862 (= res!2665797 ((_ is Concat!25214) (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun e!3933649 () (InoxSet Context!11506))

(declare-fun e!3933644 () (InoxSet Context!11506))

(assert (=> b!6490862 (= e!3933649 e!3933644)))

(declare-fun bm!561954 () Bool)

(assert (=> bm!561954 (= call!561954 (derivationStepZipperDown!1617 (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343))))))) (ite (or c!1189466 c!1189467) lt!2389642 (Context!11507 call!561956)) (h!71730 s!2326)))))

(declare-fun b!6490863 () Bool)

(assert (=> b!6490863 (= e!3933646 call!561958)))

(declare-fun b!6490864 () Bool)

(assert (=> b!6490864 (= e!3933649 ((_ map or) call!561954 call!561955))))

(declare-fun b!6490865 () Bool)

(assert (=> b!6490865 (= e!3933644 ((_ map or) call!561955 call!561957))))

(declare-fun b!6490866 () Bool)

(assert (=> b!6490866 (= e!3933645 call!561958)))

(declare-fun b!6490867 () Bool)

(assert (=> b!6490867 (= e!3933648 e!3933649)))

(assert (=> b!6490867 (= c!1189466 ((_ is Union!16369) (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6490868 () Bool)

(assert (=> b!6490868 (= e!3933644 e!3933645)))

(assert (=> b!6490868 (= c!1189465 ((_ is Concat!25214) (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(assert (= (and d!2036432 c!1189468) b!6490861))

(assert (= (and d!2036432 (not c!1189468)) b!6490867))

(assert (= (and b!6490867 c!1189466) b!6490864))

(assert (= (and b!6490867 (not c!1189466)) b!6490862))

(assert (= (and b!6490862 res!2665797) b!6490858))

(assert (= (and b!6490862 c!1189467) b!6490865))

(assert (= (and b!6490862 (not c!1189467)) b!6490868))

(assert (= (and b!6490868 c!1189465) b!6490866))

(assert (= (and b!6490868 (not c!1189465)) b!6490859))

(assert (= (and b!6490859 c!1189469) b!6490863))

(assert (= (and b!6490859 (not c!1189469)) b!6490860))

(assert (= (or b!6490866 b!6490863) bm!561950))

(assert (= (or b!6490866 b!6490863) bm!561952))

(assert (= (or b!6490865 bm!561950) bm!561949))

(assert (= (or b!6490865 bm!561952) bm!561951))

(assert (= (or b!6490864 b!6490865) bm!561953))

(assert (= (or b!6490864 bm!561951) bm!561954))

(declare-fun m!7279364 () Bool)

(assert (=> b!6490861 m!7279364))

(declare-fun m!7279366 () Bool)

(assert (=> b!6490858 m!7279366))

(declare-fun m!7279368 () Bool)

(assert (=> bm!561954 m!7279368))

(declare-fun m!7279370 () Bool)

(assert (=> bm!561953 m!7279370))

(declare-fun m!7279372 () Bool)

(assert (=> bm!561949 m!7279372))

(assert (=> b!6490636 d!2036432))

(declare-fun d!2036436 () Bool)

(declare-fun nullableFct!2300 (Regex!16369) Bool)

(assert (=> d!2036436 (= (nullable!6362 (h!71731 (exprs!6253 (h!71732 zl!343)))) (nullableFct!2300 (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun bs!1647638 () Bool)

(assert (= bs!1647638 d!2036436))

(declare-fun m!7279374 () Bool)

(assert (=> bs!1647638 m!7279374))

(assert (=> b!6490636 d!2036436))

(declare-fun b!6490869 () Bool)

(declare-fun e!3933651 () Bool)

(assert (=> b!6490869 (= e!3933651 (nullable!6362 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))))))

(declare-fun b!6490870 () Bool)

(declare-fun e!3933650 () (InoxSet Context!11506))

(declare-fun e!3933652 () (InoxSet Context!11506))

(assert (=> b!6490870 (= e!3933650 e!3933652)))

(declare-fun c!1189471 () Bool)

(assert (=> b!6490870 (= c!1189471 ((_ is Cons!65283) (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))))))

(declare-fun b!6490871 () Bool)

(declare-fun call!561960 () (InoxSet Context!11506))

(assert (=> b!6490871 (= e!3933652 call!561960)))

(declare-fun bm!561955 () Bool)

(assert (=> bm!561955 (= call!561960 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))) (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (h!71730 s!2326)))))

(declare-fun b!6490873 () Bool)

(assert (=> b!6490873 (= e!3933652 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2036438 () Bool)

(declare-fun c!1189470 () Bool)

(assert (=> d!2036438 (= c!1189470 e!3933651)))

(declare-fun res!2665798 () Bool)

(assert (=> d!2036438 (=> (not res!2665798) (not e!3933651))))

(assert (=> d!2036438 (= res!2665798 ((_ is Cons!65283) (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))))))

(assert (=> d!2036438 (= (derivationStepZipperUp!1543 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))) (h!71730 s!2326)) e!3933650)))

(declare-fun b!6490872 () Bool)

(assert (=> b!6490872 (= e!3933650 ((_ map or) call!561960 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (h!71730 s!2326))))))

(assert (= (and d!2036438 res!2665798) b!6490869))

(assert (= (and d!2036438 c!1189470) b!6490872))

(assert (= (and d!2036438 (not c!1189470)) b!6490870))

(assert (= (and b!6490870 c!1189471) b!6490871))

(assert (= (and b!6490870 (not c!1189471)) b!6490873))

(assert (= (or b!6490872 b!6490871) bm!561955))

(declare-fun m!7279376 () Bool)

(assert (=> b!6490869 m!7279376))

(declare-fun m!7279378 () Bool)

(assert (=> bm!561955 m!7279378))

(declare-fun m!7279380 () Bool)

(assert (=> b!6490872 m!7279380))

(assert (=> b!6490636 d!2036438))

(declare-fun d!2036440 () Bool)

(assert (=> d!2036440 (= (flatMap!1874 z!1189 lambda!359438) (dynLambda!25930 lambda!359438 (h!71732 zl!343)))))

(declare-fun lt!2389684 () Unit!158807)

(assert (=> d!2036440 (= lt!2389684 (choose!48172 z!1189 (h!71732 zl!343) lambda!359438))))

(assert (=> d!2036440 (= z!1189 (store ((as const (Array Context!11506 Bool)) false) (h!71732 zl!343) true))))

(assert (=> d!2036440 (= (lemmaFlatMapOnSingletonSet!1400 z!1189 (h!71732 zl!343) lambda!359438) lt!2389684)))

(declare-fun b_lambda!245733 () Bool)

(assert (=> (not b_lambda!245733) (not d!2036440)))

(declare-fun bs!1647639 () Bool)

(assert (= bs!1647639 d!2036440))

(assert (=> bs!1647639 m!7279242))

(declare-fun m!7279382 () Bool)

(assert (=> bs!1647639 m!7279382))

(declare-fun m!7279384 () Bool)

(assert (=> bs!1647639 m!7279384))

(declare-fun m!7279386 () Bool)

(assert (=> bs!1647639 m!7279386))

(assert (=> b!6490636 d!2036440))

(declare-fun d!2036442 () Bool)

(assert (=> d!2036442 (= (flatMap!1874 z!1189 lambda!359438) (choose!48171 z!1189 lambda!359438))))

(declare-fun bs!1647640 () Bool)

(assert (= bs!1647640 d!2036442))

(declare-fun m!7279388 () Bool)

(assert (=> bs!1647640 m!7279388))

(assert (=> b!6490636 d!2036442))

(declare-fun b!6490874 () Bool)

(declare-fun e!3933654 () Bool)

(assert (=> b!6490874 (= e!3933654 (nullable!6362 (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6490875 () Bool)

(declare-fun e!3933653 () (InoxSet Context!11506))

(declare-fun e!3933655 () (InoxSet Context!11506))

(assert (=> b!6490875 (= e!3933653 e!3933655)))

(declare-fun c!1189473 () Bool)

(assert (=> b!6490875 (= c!1189473 ((_ is Cons!65283) (exprs!6253 (h!71732 zl!343))))))

(declare-fun b!6490876 () Bool)

(declare-fun call!561961 () (InoxSet Context!11506))

(assert (=> b!6490876 (= e!3933655 call!561961)))

(declare-fun bm!561956 () Bool)

(assert (=> bm!561956 (= call!561961 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (h!71732 zl!343))) (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343)))) (h!71730 s!2326)))))

(declare-fun b!6490878 () Bool)

(assert (=> b!6490878 (= e!3933655 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2036444 () Bool)

(declare-fun c!1189472 () Bool)

(assert (=> d!2036444 (= c!1189472 e!3933654)))

(declare-fun res!2665799 () Bool)

(assert (=> d!2036444 (=> (not res!2665799) (not e!3933654))))

(assert (=> d!2036444 (= res!2665799 ((_ is Cons!65283) (exprs!6253 (h!71732 zl!343))))))

(assert (=> d!2036444 (= (derivationStepZipperUp!1543 (h!71732 zl!343) (h!71730 s!2326)) e!3933653)))

(declare-fun b!6490877 () Bool)

(assert (=> b!6490877 (= e!3933653 ((_ map or) call!561961 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343)))) (h!71730 s!2326))))))

(assert (= (and d!2036444 res!2665799) b!6490874))

(assert (= (and d!2036444 c!1189472) b!6490877))

(assert (= (and d!2036444 (not c!1189472)) b!6490875))

(assert (= (and b!6490875 c!1189473) b!6490876))

(assert (= (and b!6490875 (not c!1189473)) b!6490878))

(assert (= (or b!6490877 b!6490876) bm!561956))

(assert (=> b!6490874 m!7279244))

(declare-fun m!7279390 () Bool)

(assert (=> bm!561956 m!7279390))

(declare-fun m!7279392 () Bool)

(assert (=> b!6490877 m!7279392))

(assert (=> b!6490636 d!2036444))

(declare-fun d!2036446 () Bool)

(declare-fun e!3933672 () Bool)

(assert (=> d!2036446 e!3933672))

(declare-fun res!2665808 () Bool)

(assert (=> d!2036446 (=> (not res!2665808) (not e!3933672))))

(declare-fun lt!2389687 () List!65408)

(declare-fun noDuplicate!2188 (List!65408) Bool)

(assert (=> d!2036446 (= res!2665808 (noDuplicate!2188 lt!2389687))))

(declare-fun choose!48176 ((InoxSet Context!11506)) List!65408)

(assert (=> d!2036446 (= lt!2389687 (choose!48176 z!1189))))

(assert (=> d!2036446 (= (toList!10153 z!1189) lt!2389687)))

(declare-fun b!6490903 () Bool)

(declare-fun content!12441 (List!65408) (InoxSet Context!11506))

(assert (=> b!6490903 (= e!3933672 (= (content!12441 lt!2389687) z!1189))))

(assert (= (and d!2036446 res!2665808) b!6490903))

(declare-fun m!7279394 () Bool)

(assert (=> d!2036446 m!7279394))

(declare-fun m!7279396 () Bool)

(assert (=> d!2036446 m!7279396))

(declare-fun m!7279398 () Bool)

(assert (=> b!6490903 m!7279398))

(assert (=> b!6490615 d!2036446))

(declare-fun b!6490904 () Bool)

(declare-fun res!2665814 () Bool)

(declare-fun e!3933673 () Bool)

(assert (=> b!6490904 (=> res!2665814 e!3933673)))

(declare-fun e!3933677 () Bool)

(assert (=> b!6490904 (= res!2665814 e!3933677)))

(declare-fun res!2665811 () Bool)

(assert (=> b!6490904 (=> (not res!2665811) (not e!3933677))))

(declare-fun lt!2389688 () Bool)

(assert (=> b!6490904 (= res!2665811 lt!2389688)))

(declare-fun b!6490905 () Bool)

(declare-fun res!2665812 () Bool)

(assert (=> b!6490905 (=> (not res!2665812) (not e!3933677))))

(assert (=> b!6490905 (= res!2665812 (isEmpty!37477 (tail!12296 (_1!36651 lt!2389655))))))

(declare-fun b!6490907 () Bool)

(declare-fun e!3933675 () Bool)

(assert (=> b!6490907 (= e!3933673 e!3933675)))

(declare-fun res!2665815 () Bool)

(assert (=> b!6490907 (=> (not res!2665815) (not e!3933675))))

(assert (=> b!6490907 (= res!2665815 (not lt!2389688))))

(declare-fun bm!561957 () Bool)

(declare-fun call!561962 () Bool)

(assert (=> bm!561957 (= call!561962 (isEmpty!37477 (_1!36651 lt!2389655)))))

(declare-fun b!6490908 () Bool)

(declare-fun e!3933676 () Bool)

(assert (=> b!6490908 (= e!3933676 (not (= (head!13211 (_1!36651 lt!2389655)) (c!1189393 lt!2389631))))))

(declare-fun b!6490909 () Bool)

(declare-fun e!3933679 () Bool)

(assert (=> b!6490909 (= e!3933679 (matchR!8552 (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 lt!2389655))) (tail!12296 (_1!36651 lt!2389655))))))

(declare-fun b!6490910 () Bool)

(declare-fun res!2665816 () Bool)

(assert (=> b!6490910 (=> res!2665816 e!3933676)))

(assert (=> b!6490910 (= res!2665816 (not (isEmpty!37477 (tail!12296 (_1!36651 lt!2389655)))))))

(declare-fun b!6490911 () Bool)

(declare-fun res!2665813 () Bool)

(assert (=> b!6490911 (=> res!2665813 e!3933673)))

(assert (=> b!6490911 (= res!2665813 (not ((_ is ElementMatch!16369) lt!2389631)))))

(declare-fun e!3933674 () Bool)

(assert (=> b!6490911 (= e!3933674 e!3933673)))

(declare-fun b!6490912 () Bool)

(declare-fun e!3933678 () Bool)

(assert (=> b!6490912 (= e!3933678 (= lt!2389688 call!561962))))

(declare-fun b!6490913 () Bool)

(assert (=> b!6490913 (= e!3933675 e!3933676)))

(declare-fun res!2665810 () Bool)

(assert (=> b!6490913 (=> res!2665810 e!3933676)))

(assert (=> b!6490913 (= res!2665810 call!561962)))

(declare-fun b!6490914 () Bool)

(assert (=> b!6490914 (= e!3933679 (nullable!6362 lt!2389631))))

(declare-fun b!6490915 () Bool)

(assert (=> b!6490915 (= e!3933677 (= (head!13211 (_1!36651 lt!2389655)) (c!1189393 lt!2389631)))))

(declare-fun d!2036448 () Bool)

(assert (=> d!2036448 e!3933678))

(declare-fun c!1189484 () Bool)

(assert (=> d!2036448 (= c!1189484 ((_ is EmptyExpr!16369) lt!2389631))))

(assert (=> d!2036448 (= lt!2389688 e!3933679)))

(declare-fun c!1189483 () Bool)

(assert (=> d!2036448 (= c!1189483 (isEmpty!37477 (_1!36651 lt!2389655)))))

(assert (=> d!2036448 (validRegex!8105 lt!2389631)))

(assert (=> d!2036448 (= (matchR!8552 lt!2389631 (_1!36651 lt!2389655)) lt!2389688)))

(declare-fun b!6490906 () Bool)

(assert (=> b!6490906 (= e!3933678 e!3933674)))

(declare-fun c!1189482 () Bool)

(assert (=> b!6490906 (= c!1189482 ((_ is EmptyLang!16369) lt!2389631))))

(declare-fun b!6490916 () Bool)

(assert (=> b!6490916 (= e!3933674 (not lt!2389688))))

(declare-fun b!6490917 () Bool)

(declare-fun res!2665809 () Bool)

(assert (=> b!6490917 (=> (not res!2665809) (not e!3933677))))

(assert (=> b!6490917 (= res!2665809 (not call!561962))))

(assert (= (and d!2036448 c!1189483) b!6490914))

(assert (= (and d!2036448 (not c!1189483)) b!6490909))

(assert (= (and d!2036448 c!1189484) b!6490912))

(assert (= (and d!2036448 (not c!1189484)) b!6490906))

(assert (= (and b!6490906 c!1189482) b!6490916))

(assert (= (and b!6490906 (not c!1189482)) b!6490911))

(assert (= (and b!6490911 (not res!2665813)) b!6490904))

(assert (= (and b!6490904 res!2665811) b!6490917))

(assert (= (and b!6490917 res!2665809) b!6490905))

(assert (= (and b!6490905 res!2665812) b!6490915))

(assert (= (and b!6490904 (not res!2665814)) b!6490907))

(assert (= (and b!6490907 res!2665815) b!6490913))

(assert (= (and b!6490913 (not res!2665810)) b!6490910))

(assert (= (and b!6490910 (not res!2665816)) b!6490908))

(assert (= (or b!6490912 b!6490913 b!6490917) bm!561957))

(declare-fun m!7279400 () Bool)

(assert (=> b!6490905 m!7279400))

(assert (=> b!6490905 m!7279400))

(declare-fun m!7279402 () Bool)

(assert (=> b!6490905 m!7279402))

(assert (=> d!2036448 m!7279248))

(declare-fun m!7279404 () Bool)

(assert (=> d!2036448 m!7279404))

(assert (=> b!6490910 m!7279400))

(assert (=> b!6490910 m!7279400))

(assert (=> b!6490910 m!7279402))

(declare-fun m!7279406 () Bool)

(assert (=> b!6490908 m!7279406))

(declare-fun m!7279408 () Bool)

(assert (=> b!6490914 m!7279408))

(assert (=> bm!561957 m!7279248))

(assert (=> b!6490915 m!7279406))

(assert (=> b!6490909 m!7279406))

(assert (=> b!6490909 m!7279406))

(declare-fun m!7279410 () Bool)

(assert (=> b!6490909 m!7279410))

(assert (=> b!6490909 m!7279400))

(assert (=> b!6490909 m!7279410))

(assert (=> b!6490909 m!7279400))

(declare-fun m!7279412 () Bool)

(assert (=> b!6490909 m!7279412))

(assert (=> b!6490621 d!2036448))

(declare-fun bs!1647641 () Bool)

(declare-fun b!6490930 () Bool)

(assert (= bs!1647641 (and b!6490930 b!6490643)))

(declare-fun lambda!359459 () Int)

(assert (=> bs!1647641 (= (= (reg!16698 lt!2389631) (reg!16698 (regOne!33250 r!7292))) (= lambda!359459 lambda!359442))))

(declare-fun bs!1647642 () Bool)

(assert (= bs!1647642 (and b!6490930 b!6490618)))

(assert (=> bs!1647642 (not (= lambda!359459 lambda!359439))))

(assert (=> bs!1647641 (not (= lambda!359459 lambda!359441))))

(assert (=> bs!1647641 (not (= lambda!359459 lambda!359443))))

(declare-fun bs!1647643 () Bool)

(assert (= bs!1647643 (and b!6490930 b!6490649)))

(assert (=> bs!1647643 (not (= lambda!359459 lambda!359437))))

(declare-fun bs!1647644 () Bool)

(assert (= bs!1647644 (and b!6490930 b!6490750)))

(assert (=> bs!1647644 (not (= lambda!359459 lambda!359453))))

(assert (=> bs!1647643 (not (= lambda!359459 lambda!359436))))

(assert (=> bs!1647642 (not (= lambda!359459 lambda!359440))))

(declare-fun bs!1647645 () Bool)

(assert (= bs!1647645 (and b!6490930 b!6490748)))

(assert (=> bs!1647645 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 lt!2389631) (reg!16698 r!7292)) (= lt!2389631 r!7292)) (= lambda!359459 lambda!359452))))

(assert (=> b!6490930 true))

(assert (=> b!6490930 true))

(declare-fun bs!1647646 () Bool)

(declare-fun b!6490932 () Bool)

(assert (= bs!1647646 (and b!6490932 b!6490643)))

(declare-fun lambda!359462 () Int)

(assert (=> bs!1647646 (not (= lambda!359462 lambda!359442))))

(declare-fun bs!1647647 () Bool)

(assert (= bs!1647647 (and b!6490932 b!6490618)))

(assert (=> bs!1647647 (not (= lambda!359462 lambda!359439))))

(assert (=> bs!1647646 (not (= lambda!359462 lambda!359441))))

(assert (=> bs!1647646 (= (and (= (regOne!33250 lt!2389631) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 lt!2389631) lt!2389631)) (= lambda!359462 lambda!359443))))

(declare-fun bs!1647648 () Bool)

(assert (= bs!1647648 (and b!6490932 b!6490649)))

(assert (=> bs!1647648 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 lt!2389631) (regOne!33250 r!7292)) (= (regTwo!33250 lt!2389631) (regTwo!33250 r!7292))) (= lambda!359462 lambda!359437))))

(declare-fun bs!1647649 () Bool)

(assert (= bs!1647649 (and b!6490932 b!6490750)))

(assert (=> bs!1647649 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 lt!2389631) (regOne!33250 r!7292)) (= (regTwo!33250 lt!2389631) (regTwo!33250 r!7292))) (= lambda!359462 lambda!359453))))

(assert (=> bs!1647648 (not (= lambda!359462 lambda!359436))))

(declare-fun bs!1647650 () Bool)

(assert (= bs!1647650 (and b!6490932 b!6490930)))

(assert (=> bs!1647650 (not (= lambda!359462 lambda!359459))))

(assert (=> bs!1647647 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 lt!2389631) lt!2389631) (= (regTwo!33250 lt!2389631) (regTwo!33250 r!7292))) (= lambda!359462 lambda!359440))))

(declare-fun bs!1647651 () Bool)

(assert (= bs!1647651 (and b!6490932 b!6490748)))

(assert (=> bs!1647651 (not (= lambda!359462 lambda!359452))))

(assert (=> b!6490932 true))

(assert (=> b!6490932 true))

(declare-fun b!6490924 () Bool)

(declare-fun e!3933687 () Bool)

(declare-fun e!3933688 () Bool)

(assert (=> b!6490924 (= e!3933687 e!3933688)))

(declare-fun res!2665825 () Bool)

(assert (=> b!6490924 (= res!2665825 (not ((_ is EmptyLang!16369) lt!2389631)))))

(assert (=> b!6490924 (=> (not res!2665825) (not e!3933688))))

(declare-fun bm!561958 () Bool)

(declare-fun call!561963 () Bool)

(assert (=> bm!561958 (= call!561963 (isEmpty!37477 (_1!36651 lt!2389655)))))

(declare-fun b!6490925 () Bool)

(declare-fun e!3933683 () Bool)

(declare-fun e!3933682 () Bool)

(assert (=> b!6490925 (= e!3933683 e!3933682)))

(declare-fun res!2665824 () Bool)

(assert (=> b!6490925 (= res!2665824 (matchRSpec!3470 (regOne!33251 lt!2389631) (_1!36651 lt!2389655)))))

(assert (=> b!6490925 (=> res!2665824 e!3933682)))

(declare-fun b!6490926 () Bool)

(assert (=> b!6490926 (= e!3933682 (matchRSpec!3470 (regTwo!33251 lt!2389631) (_1!36651 lt!2389655)))))

(declare-fun b!6490927 () Bool)

(declare-fun res!2665823 () Bool)

(declare-fun e!3933685 () Bool)

(assert (=> b!6490927 (=> res!2665823 e!3933685)))

(assert (=> b!6490927 (= res!2665823 call!561963)))

(declare-fun e!3933686 () Bool)

(assert (=> b!6490927 (= e!3933686 e!3933685)))

(declare-fun d!2036450 () Bool)

(declare-fun c!1189485 () Bool)

(assert (=> d!2036450 (= c!1189485 ((_ is EmptyExpr!16369) lt!2389631))))

(assert (=> d!2036450 (= (matchRSpec!3470 lt!2389631 (_1!36651 lt!2389655)) e!3933687)))

(declare-fun b!6490928 () Bool)

(declare-fun e!3933684 () Bool)

(assert (=> b!6490928 (= e!3933684 (= (_1!36651 lt!2389655) (Cons!65282 (c!1189393 lt!2389631) Nil!65282)))))

(declare-fun b!6490929 () Bool)

(assert (=> b!6490929 (= e!3933687 call!561963)))

(declare-fun call!561964 () Bool)

(assert (=> b!6490930 (= e!3933685 call!561964)))

(declare-fun b!6490931 () Bool)

(assert (=> b!6490931 (= e!3933683 e!3933686)))

(declare-fun c!1189486 () Bool)

(assert (=> b!6490931 (= c!1189486 ((_ is Star!16369) lt!2389631))))

(assert (=> b!6490932 (= e!3933686 call!561964)))

(declare-fun bm!561959 () Bool)

(assert (=> bm!561959 (= call!561964 (Exists!3439 (ite c!1189486 lambda!359459 lambda!359462)))))

(declare-fun b!6490933 () Bool)

(declare-fun c!1189487 () Bool)

(assert (=> b!6490933 (= c!1189487 ((_ is Union!16369) lt!2389631))))

(assert (=> b!6490933 (= e!3933684 e!3933683)))

(declare-fun b!6490934 () Bool)

(declare-fun c!1189488 () Bool)

(assert (=> b!6490934 (= c!1189488 ((_ is ElementMatch!16369) lt!2389631))))

(assert (=> b!6490934 (= e!3933688 e!3933684)))

(assert (= (and d!2036450 c!1189485) b!6490929))

(assert (= (and d!2036450 (not c!1189485)) b!6490924))

(assert (= (and b!6490924 res!2665825) b!6490934))

(assert (= (and b!6490934 c!1189488) b!6490928))

(assert (= (and b!6490934 (not c!1189488)) b!6490933))

(assert (= (and b!6490933 c!1189487) b!6490925))

(assert (= (and b!6490933 (not c!1189487)) b!6490931))

(assert (= (and b!6490925 (not res!2665824)) b!6490926))

(assert (= (and b!6490931 c!1189486) b!6490927))

(assert (= (and b!6490931 (not c!1189486)) b!6490932))

(assert (= (and b!6490927 (not res!2665823)) b!6490930))

(assert (= (or b!6490930 b!6490932) bm!561959))

(assert (= (or b!6490929 b!6490927) bm!561958))

(assert (=> bm!561958 m!7279248))

(declare-fun m!7279414 () Bool)

(assert (=> b!6490925 m!7279414))

(declare-fun m!7279416 () Bool)

(assert (=> b!6490926 m!7279416))

(declare-fun m!7279418 () Bool)

(assert (=> bm!561959 m!7279418))

(assert (=> b!6490643 d!2036450))

(declare-fun d!2036452 () Bool)

(assert (=> d!2036452 (= (get!22637 lt!2389650) (v!52438 lt!2389650))))

(assert (=> b!6490643 d!2036452))

(declare-fun b!6490961 () Bool)

(declare-fun e!3933703 () Bool)

(declare-fun lt!2389691 () List!65406)

(assert (=> b!6490961 (= e!3933703 (or (not (= (_2!36651 lt!2389638) Nil!65282)) (= lt!2389691 (_1!36651 lt!2389638))))))

(declare-fun b!6490960 () Bool)

(declare-fun res!2665838 () Bool)

(assert (=> b!6490960 (=> (not res!2665838) (not e!3933703))))

(declare-fun size!40427 (List!65406) Int)

(assert (=> b!6490960 (= res!2665838 (= (size!40427 lt!2389691) (+ (size!40427 (_1!36651 lt!2389638)) (size!40427 (_2!36651 lt!2389638)))))))

(declare-fun d!2036454 () Bool)

(assert (=> d!2036454 e!3933703))

(declare-fun res!2665837 () Bool)

(assert (=> d!2036454 (=> (not res!2665837) (not e!3933703))))

(declare-fun content!12442 (List!65406) (InoxSet C!33008))

(assert (=> d!2036454 (= res!2665837 (= (content!12442 lt!2389691) ((_ map or) (content!12442 (_1!36651 lt!2389638)) (content!12442 (_2!36651 lt!2389638)))))))

(declare-fun e!3933702 () List!65406)

(assert (=> d!2036454 (= lt!2389691 e!3933702)))

(declare-fun c!1189495 () Bool)

(assert (=> d!2036454 (= c!1189495 ((_ is Nil!65282) (_1!36651 lt!2389638)))))

(assert (=> d!2036454 (= (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638)) lt!2389691)))

(declare-fun b!6490959 () Bool)

(assert (=> b!6490959 (= e!3933702 (Cons!65282 (h!71730 (_1!36651 lt!2389638)) (++!14448 (t!379034 (_1!36651 lt!2389638)) (_2!36651 lt!2389638))))))

(declare-fun b!6490958 () Bool)

(assert (=> b!6490958 (= e!3933702 (_2!36651 lt!2389638))))

(assert (= (and d!2036454 c!1189495) b!6490958))

(assert (= (and d!2036454 (not c!1189495)) b!6490959))

(assert (= (and d!2036454 res!2665837) b!6490960))

(assert (= (and b!6490960 res!2665838) b!6490961))

(declare-fun m!7279420 () Bool)

(assert (=> b!6490960 m!7279420))

(declare-fun m!7279422 () Bool)

(assert (=> b!6490960 m!7279422))

(declare-fun m!7279424 () Bool)

(assert (=> b!6490960 m!7279424))

(declare-fun m!7279426 () Bool)

(assert (=> d!2036454 m!7279426))

(declare-fun m!7279428 () Bool)

(assert (=> d!2036454 m!7279428))

(declare-fun m!7279430 () Bool)

(assert (=> d!2036454 m!7279430))

(declare-fun m!7279432 () Bool)

(assert (=> b!6490959 m!7279432))

(assert (=> b!6490643 d!2036454))

(declare-fun d!2036456 () Bool)

(declare-fun isEmpty!37479 (Option!16260) Bool)

(assert (=> d!2036456 (= (isDefined!12963 lt!2389650) (not (isEmpty!37479 lt!2389650)))))

(declare-fun bs!1647659 () Bool)

(assert (= bs!1647659 d!2036456))

(declare-fun m!7279434 () Bool)

(assert (=> bs!1647659 m!7279434))

(assert (=> b!6490643 d!2036456))

(declare-fun bs!1647660 () Bool)

(declare-fun d!2036458 () Bool)

(assert (= bs!1647660 (and d!2036458 b!6490643)))

(declare-fun lambda!359469 () Int)

(assert (=> bs!1647660 (not (= lambda!359469 lambda!359442))))

(declare-fun bs!1647661 () Bool)

(assert (= bs!1647661 (and d!2036458 b!6490618)))

(assert (=> bs!1647661 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33250 r!7292))) (= lambda!359469 lambda!359439))))

(assert (=> bs!1647660 (= (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) lt!2389631) (= lambda!359469 lambda!359441))))

(assert (=> bs!1647660 (not (= lambda!359469 lambda!359443))))

(declare-fun bs!1647662 () Bool)

(assert (= bs!1647662 (and d!2036458 b!6490649)))

(assert (=> bs!1647662 (not (= lambda!359469 lambda!359437))))

(declare-fun bs!1647663 () Bool)

(assert (= bs!1647663 (and d!2036458 b!6490750)))

(assert (=> bs!1647663 (not (= lambda!359469 lambda!359453))))

(assert (=> bs!1647662 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33250 r!7292))) (= lambda!359469 lambda!359436))))

(assert (=> bs!1647661 (not (= lambda!359469 lambda!359440))))

(declare-fun bs!1647664 () Bool)

(assert (= bs!1647664 (and d!2036458 b!6490748)))

(assert (=> bs!1647664 (not (= lambda!359469 lambda!359452))))

(declare-fun bs!1647665 () Bool)

(assert (= bs!1647665 (and d!2036458 b!6490932)))

(assert (=> bs!1647665 (not (= lambda!359469 lambda!359462))))

(declare-fun bs!1647666 () Bool)

(assert (= bs!1647666 (and d!2036458 b!6490930)))

(assert (=> bs!1647666 (not (= lambda!359469 lambda!359459))))

(assert (=> d!2036458 true))

(assert (=> d!2036458 true))

(declare-fun lambda!359470 () Int)

(assert (=> bs!1647660 (= (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) lt!2389631) (= lambda!359470 lambda!359442))))

(assert (=> bs!1647661 (not (= lambda!359470 lambda!359439))))

(assert (=> bs!1647660 (not (= lambda!359470 lambda!359441))))

(assert (=> bs!1647660 (not (= lambda!359470 lambda!359443))))

(declare-fun bs!1647667 () Bool)

(assert (= bs!1647667 d!2036458))

(assert (=> bs!1647667 (not (= lambda!359470 lambda!359469))))

(assert (=> bs!1647662 (not (= lambda!359470 lambda!359437))))

(assert (=> bs!1647663 (not (= lambda!359470 lambda!359453))))

(assert (=> bs!1647662 (not (= lambda!359470 lambda!359436))))

(assert (=> bs!1647661 (not (= lambda!359470 lambda!359440))))

(assert (=> bs!1647664 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (reg!16698 r!7292)) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) r!7292)) (= lambda!359470 lambda!359452))))

(assert (=> bs!1647665 (not (= lambda!359470 lambda!359462))))

(assert (=> bs!1647666 (= (and (= (reg!16698 (regOne!33250 r!7292)) (reg!16698 lt!2389631)) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) lt!2389631)) (= lambda!359470 lambda!359459))))

(assert (=> d!2036458 true))

(assert (=> d!2036458 true))

(assert (=> d!2036458 (= (Exists!3439 lambda!359469) (Exists!3439 lambda!359470))))

(declare-fun lt!2389696 () Unit!158807)

(declare-fun choose!48179 (Regex!16369 List!65406) Unit!158807)

(assert (=> d!2036458 (= lt!2389696 (choose!48179 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389655)))))

(assert (=> d!2036458 (validRegex!8105 (reg!16698 (regOne!33250 r!7292)))))

(assert (=> d!2036458 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!660 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389655)) lt!2389696)))

(declare-fun m!7279458 () Bool)

(assert (=> bs!1647667 m!7279458))

(declare-fun m!7279460 () Bool)

(assert (=> bs!1647667 m!7279460))

(declare-fun m!7279462 () Bool)

(assert (=> bs!1647667 m!7279462))

(declare-fun m!7279464 () Bool)

(assert (=> bs!1647667 m!7279464))

(assert (=> b!6490643 d!2036458))

(declare-fun bs!1647669 () Bool)

(declare-fun d!2036464 () Bool)

(assert (= bs!1647669 (and d!2036464 b!6490643)))

(declare-fun lambda!359477 () Int)

(assert (=> bs!1647669 (not (= lambda!359477 lambda!359442))))

(assert (=> bs!1647669 (= lambda!359477 lambda!359441)))

(assert (=> bs!1647669 (not (= lambda!359477 lambda!359443))))

(declare-fun bs!1647670 () Bool)

(assert (= bs!1647670 (and d!2036464 d!2036458)))

(assert (=> bs!1647670 (= (= lt!2389631 (Star!16369 (reg!16698 (regOne!33250 r!7292)))) (= lambda!359477 lambda!359469))))

(declare-fun bs!1647671 () Bool)

(assert (= bs!1647671 (and d!2036464 b!6490649)))

(assert (=> bs!1647671 (not (= lambda!359477 lambda!359437))))

(declare-fun bs!1647672 () Bool)

(assert (= bs!1647672 (and d!2036464 b!6490750)))

(assert (=> bs!1647672 (not (= lambda!359477 lambda!359453))))

(assert (=> bs!1647671 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359477 lambda!359436))))

(declare-fun bs!1647673 () Bool)

(assert (= bs!1647673 (and d!2036464 b!6490618)))

(assert (=> bs!1647673 (not (= lambda!359477 lambda!359440))))

(declare-fun bs!1647674 () Bool)

(assert (= bs!1647674 (and d!2036464 b!6490748)))

(assert (=> bs!1647674 (not (= lambda!359477 lambda!359452))))

(assert (=> bs!1647670 (not (= lambda!359477 lambda!359470))))

(assert (=> bs!1647673 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359477 lambda!359439))))

(declare-fun bs!1647675 () Bool)

(assert (= bs!1647675 (and d!2036464 b!6490932)))

(assert (=> bs!1647675 (not (= lambda!359477 lambda!359462))))

(declare-fun bs!1647676 () Bool)

(assert (= bs!1647676 (and d!2036464 b!6490930)))

(assert (=> bs!1647676 (not (= lambda!359477 lambda!359459))))

(assert (=> d!2036464 true))

(assert (=> d!2036464 true))

(assert (=> d!2036464 true))

(declare-fun lambda!359480 () Int)

(assert (=> bs!1647669 (not (= lambda!359480 lambda!359442))))

(assert (=> bs!1647669 (not (= lambda!359480 lambda!359441))))

(assert (=> bs!1647669 (= lambda!359480 lambda!359443)))

(assert (=> bs!1647670 (not (= lambda!359480 lambda!359469))))

(assert (=> bs!1647671 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359480 lambda!359437))))

(assert (=> bs!1647672 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359480 lambda!359453))))

(assert (=> bs!1647671 (not (= lambda!359480 lambda!359436))))

(assert (=> bs!1647673 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359480 lambda!359440))))

(assert (=> bs!1647674 (not (= lambda!359480 lambda!359452))))

(assert (=> bs!1647670 (not (= lambda!359480 lambda!359470))))

(assert (=> bs!1647673 (not (= lambda!359480 lambda!359439))))

(assert (=> bs!1647675 (= (and (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 lt!2389631)) (= lt!2389631 (regTwo!33250 lt!2389631))) (= lambda!359480 lambda!359462))))

(declare-fun bs!1647678 () Bool)

(assert (= bs!1647678 d!2036464))

(assert (=> bs!1647678 (not (= lambda!359480 lambda!359477))))

(assert (=> bs!1647676 (not (= lambda!359480 lambda!359459))))

(assert (=> d!2036464 true))

(assert (=> d!2036464 true))

(assert (=> d!2036464 true))

(assert (=> d!2036464 (= (Exists!3439 lambda!359477) (Exists!3439 lambda!359480))))

(declare-fun lt!2389707 () Unit!158807)

(declare-fun choose!48181 (Regex!16369 Regex!16369 List!65406) Unit!158807)

(assert (=> d!2036464 (= lt!2389707 (choose!48181 (reg!16698 (regOne!33250 r!7292)) lt!2389631 (_1!36651 lt!2389655)))))

(assert (=> d!2036464 (validRegex!8105 (reg!16698 (regOne!33250 r!7292)))))

(assert (=> d!2036464 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1976 (reg!16698 (regOne!33250 r!7292)) lt!2389631 (_1!36651 lt!2389655)) lt!2389707)))

(declare-fun m!7279500 () Bool)

(assert (=> bs!1647678 m!7279500))

(declare-fun m!7279502 () Bool)

(assert (=> bs!1647678 m!7279502))

(declare-fun m!7279504 () Bool)

(assert (=> bs!1647678 m!7279504))

(assert (=> bs!1647678 m!7279464))

(assert (=> b!6490643 d!2036464))

(declare-fun bs!1647685 () Bool)

(declare-fun d!2036472 () Bool)

(assert (= bs!1647685 (and d!2036472 b!6490643)))

(declare-fun lambda!359485 () Int)

(assert (=> bs!1647685 (not (= lambda!359485 lambda!359442))))

(assert (=> bs!1647685 (= lambda!359485 lambda!359441)))

(declare-fun bs!1647686 () Bool)

(assert (= bs!1647686 (and d!2036472 d!2036464)))

(assert (=> bs!1647686 (not (= lambda!359485 lambda!359480))))

(assert (=> bs!1647685 (not (= lambda!359485 lambda!359443))))

(declare-fun bs!1647688 () Bool)

(assert (= bs!1647688 (and d!2036472 d!2036458)))

(assert (=> bs!1647688 (= (= lt!2389631 (Star!16369 (reg!16698 (regOne!33250 r!7292)))) (= lambda!359485 lambda!359469))))

(declare-fun bs!1647689 () Bool)

(assert (= bs!1647689 (and d!2036472 b!6490649)))

(assert (=> bs!1647689 (not (= lambda!359485 lambda!359437))))

(declare-fun bs!1647690 () Bool)

(assert (= bs!1647690 (and d!2036472 b!6490750)))

(assert (=> bs!1647690 (not (= lambda!359485 lambda!359453))))

(assert (=> bs!1647689 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359485 lambda!359436))))

(declare-fun bs!1647691 () Bool)

(assert (= bs!1647691 (and d!2036472 b!6490618)))

(assert (=> bs!1647691 (not (= lambda!359485 lambda!359440))))

(declare-fun bs!1647692 () Bool)

(assert (= bs!1647692 (and d!2036472 b!6490748)))

(assert (=> bs!1647692 (not (= lambda!359485 lambda!359452))))

(assert (=> bs!1647688 (not (= lambda!359485 lambda!359470))))

(assert (=> bs!1647691 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359485 lambda!359439))))

(declare-fun bs!1647693 () Bool)

(assert (= bs!1647693 (and d!2036472 b!6490932)))

(assert (=> bs!1647693 (not (= lambda!359485 lambda!359462))))

(assert (=> bs!1647686 (= lambda!359485 lambda!359477)))

(declare-fun bs!1647694 () Bool)

(assert (= bs!1647694 (and d!2036472 b!6490930)))

(assert (=> bs!1647694 (not (= lambda!359485 lambda!359459))))

(assert (=> d!2036472 true))

(assert (=> d!2036472 true))

(assert (=> d!2036472 true))

(assert (=> d!2036472 (= (isDefined!12963 (findConcatSeparation!2674 (reg!16698 (regOne!33250 r!7292)) lt!2389631 Nil!65282 (_1!36651 lt!2389655) (_1!36651 lt!2389655))) (Exists!3439 lambda!359485))))

(declare-fun lt!2389715 () Unit!158807)

(declare-fun choose!48182 (Regex!16369 Regex!16369 List!65406) Unit!158807)

(assert (=> d!2036472 (= lt!2389715 (choose!48182 (reg!16698 (regOne!33250 r!7292)) lt!2389631 (_1!36651 lt!2389655)))))

(assert (=> d!2036472 (validRegex!8105 (reg!16698 (regOne!33250 r!7292)))))

(assert (=> d!2036472 (= (lemmaFindConcatSeparationEquivalentToExists!2438 (reg!16698 (regOne!33250 r!7292)) lt!2389631 (_1!36651 lt!2389655)) lt!2389715)))

(declare-fun bs!1647695 () Bool)

(assert (= bs!1647695 d!2036472))

(declare-fun m!7279532 () Bool)

(assert (=> bs!1647695 m!7279532))

(declare-fun m!7279534 () Bool)

(assert (=> bs!1647695 m!7279534))

(assert (=> bs!1647695 m!7279210))

(assert (=> bs!1647695 m!7279464))

(assert (=> bs!1647695 m!7279210))

(declare-fun m!7279536 () Bool)

(assert (=> bs!1647695 m!7279536))

(assert (=> b!6490643 d!2036472))

(declare-fun d!2036484 () Bool)

(declare-fun choose!48184 (Int) Bool)

(assert (=> d!2036484 (= (Exists!3439 lambda!359441) (choose!48184 lambda!359441))))

(declare-fun bs!1647696 () Bool)

(assert (= bs!1647696 d!2036484))

(declare-fun m!7279538 () Bool)

(assert (=> bs!1647696 m!7279538))

(assert (=> b!6490643 d!2036484))

(declare-fun d!2036486 () Bool)

(assert (=> d!2036486 (= (Exists!3439 lambda!359443) (choose!48184 lambda!359443))))

(declare-fun bs!1647697 () Bool)

(assert (= bs!1647697 d!2036486))

(declare-fun m!7279540 () Bool)

(assert (=> bs!1647697 m!7279540))

(assert (=> b!6490643 d!2036486))

(declare-fun d!2036488 () Bool)

(assert (=> d!2036488 (= (Exists!3439 lambda!359442) (choose!48184 lambda!359442))))

(declare-fun bs!1647698 () Bool)

(assert (= bs!1647698 d!2036488))

(declare-fun m!7279542 () Bool)

(assert (=> bs!1647698 m!7279542))

(assert (=> b!6490643 d!2036488))

(declare-fun d!2036490 () Bool)

(assert (=> d!2036490 (= (matchR!8552 lt!2389631 (_1!36651 lt!2389655)) (matchRSpec!3470 lt!2389631 (_1!36651 lt!2389655)))))

(declare-fun lt!2389716 () Unit!158807)

(assert (=> d!2036490 (= lt!2389716 (choose!48175 lt!2389631 (_1!36651 lt!2389655)))))

(assert (=> d!2036490 (validRegex!8105 lt!2389631)))

(assert (=> d!2036490 (= (mainMatchTheorem!3470 lt!2389631 (_1!36651 lt!2389655)) lt!2389716)))

(declare-fun bs!1647699 () Bool)

(assert (= bs!1647699 d!2036490))

(assert (=> bs!1647699 m!7279130))

(assert (=> bs!1647699 m!7279212))

(declare-fun m!7279544 () Bool)

(assert (=> bs!1647699 m!7279544))

(assert (=> bs!1647699 m!7279404))

(assert (=> b!6490643 d!2036490))

(declare-fun b!6491113 () Bool)

(declare-fun e!3933781 () Option!16260)

(declare-fun e!3933783 () Option!16260)

(assert (=> b!6491113 (= e!3933781 e!3933783)))

(declare-fun c!1189522 () Bool)

(assert (=> b!6491113 (= c!1189522 ((_ is Nil!65282) (_1!36651 lt!2389655)))))

(declare-fun b!6491114 () Bool)

(declare-fun e!3933782 () Bool)

(assert (=> b!6491114 (= e!3933782 (matchR!8552 lt!2389631 (_1!36651 lt!2389655)))))

(declare-fun b!6491115 () Bool)

(declare-fun e!3933780 () Bool)

(declare-fun lt!2389727 () Option!16260)

(assert (=> b!6491115 (= e!3933780 (not (isDefined!12963 lt!2389727)))))

(declare-fun b!6491116 () Bool)

(declare-fun lt!2389728 () Unit!158807)

(declare-fun lt!2389726 () Unit!158807)

(assert (=> b!6491116 (= lt!2389728 lt!2389726)))

(assert (=> b!6491116 (= (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)) (t!379034 (_1!36651 lt!2389655))) (_1!36651 lt!2389655))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2523 (List!65406 C!33008 List!65406 List!65406) Unit!158807)

(assert (=> b!6491116 (= lt!2389726 (lemmaMoveElementToOtherListKeepsConcatEq!2523 Nil!65282 (h!71730 (_1!36651 lt!2389655)) (t!379034 (_1!36651 lt!2389655)) (_1!36651 lt!2389655)))))

(assert (=> b!6491116 (= e!3933783 (findConcatSeparation!2674 (reg!16698 (regOne!33250 r!7292)) lt!2389631 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)) (t!379034 (_1!36651 lt!2389655)) (_1!36651 lt!2389655)))))

(declare-fun b!6491117 () Bool)

(declare-fun res!2665942 () Bool)

(declare-fun e!3933784 () Bool)

(assert (=> b!6491117 (=> (not res!2665942) (not e!3933784))))

(assert (=> b!6491117 (= res!2665942 (matchR!8552 (reg!16698 (regOne!33250 r!7292)) (_1!36651 (get!22637 lt!2389727))))))

(declare-fun b!6491118 () Bool)

(assert (=> b!6491118 (= e!3933781 (Some!16259 (tuple2!66697 Nil!65282 (_1!36651 lt!2389655))))))

(declare-fun d!2036492 () Bool)

(assert (=> d!2036492 e!3933780))

(declare-fun res!2665940 () Bool)

(assert (=> d!2036492 (=> res!2665940 e!3933780)))

(assert (=> d!2036492 (= res!2665940 e!3933784)))

(declare-fun res!2665939 () Bool)

(assert (=> d!2036492 (=> (not res!2665939) (not e!3933784))))

(assert (=> d!2036492 (= res!2665939 (isDefined!12963 lt!2389727))))

(assert (=> d!2036492 (= lt!2389727 e!3933781)))

(declare-fun c!1189523 () Bool)

(assert (=> d!2036492 (= c!1189523 e!3933782)))

(declare-fun res!2665938 () Bool)

(assert (=> d!2036492 (=> (not res!2665938) (not e!3933782))))

(assert (=> d!2036492 (= res!2665938 (matchR!8552 (reg!16698 (regOne!33250 r!7292)) Nil!65282))))

(assert (=> d!2036492 (validRegex!8105 (reg!16698 (regOne!33250 r!7292)))))

(assert (=> d!2036492 (= (findConcatSeparation!2674 (reg!16698 (regOne!33250 r!7292)) lt!2389631 Nil!65282 (_1!36651 lt!2389655) (_1!36651 lt!2389655)) lt!2389727)))

(declare-fun b!6491119 () Bool)

(assert (=> b!6491119 (= e!3933784 (= (++!14448 (_1!36651 (get!22637 lt!2389727)) (_2!36651 (get!22637 lt!2389727))) (_1!36651 lt!2389655)))))

(declare-fun b!6491120 () Bool)

(declare-fun res!2665941 () Bool)

(assert (=> b!6491120 (=> (not res!2665941) (not e!3933784))))

(assert (=> b!6491120 (= res!2665941 (matchR!8552 lt!2389631 (_2!36651 (get!22637 lt!2389727))))))

(declare-fun b!6491121 () Bool)

(assert (=> b!6491121 (= e!3933783 None!16259)))

(assert (= (and d!2036492 res!2665938) b!6491114))

(assert (= (and d!2036492 c!1189523) b!6491118))

(assert (= (and d!2036492 (not c!1189523)) b!6491113))

(assert (= (and b!6491113 c!1189522) b!6491121))

(assert (= (and b!6491113 (not c!1189522)) b!6491116))

(assert (= (and d!2036492 res!2665939) b!6491117))

(assert (= (and b!6491117 res!2665942) b!6491120))

(assert (= (and b!6491120 res!2665941) b!6491119))

(assert (= (and d!2036492 (not res!2665940)) b!6491115))

(declare-fun m!7279554 () Bool)

(assert (=> d!2036492 m!7279554))

(declare-fun m!7279556 () Bool)

(assert (=> d!2036492 m!7279556))

(assert (=> d!2036492 m!7279464))

(declare-fun m!7279558 () Bool)

(assert (=> b!6491117 m!7279558))

(declare-fun m!7279560 () Bool)

(assert (=> b!6491117 m!7279560))

(assert (=> b!6491119 m!7279558))

(declare-fun m!7279562 () Bool)

(assert (=> b!6491119 m!7279562))

(declare-fun m!7279564 () Bool)

(assert (=> b!6491116 m!7279564))

(assert (=> b!6491116 m!7279564))

(declare-fun m!7279566 () Bool)

(assert (=> b!6491116 m!7279566))

(declare-fun m!7279568 () Bool)

(assert (=> b!6491116 m!7279568))

(assert (=> b!6491116 m!7279564))

(declare-fun m!7279570 () Bool)

(assert (=> b!6491116 m!7279570))

(assert (=> b!6491114 m!7279130))

(assert (=> b!6491115 m!7279554))

(assert (=> b!6491120 m!7279558))

(declare-fun m!7279572 () Bool)

(assert (=> b!6491120 m!7279572))

(assert (=> b!6490643 d!2036492))

(declare-fun d!2036498 () Bool)

(declare-fun c!1189526 () Bool)

(assert (=> d!2036498 (= c!1189526 (isEmpty!37477 s!2326))))

(declare-fun e!3933787 () Bool)

(assert (=> d!2036498 (= (matchZipper!2381 z!1189 s!2326) e!3933787)))

(declare-fun b!6491126 () Bool)

(declare-fun nullableZipper!2125 ((InoxSet Context!11506)) Bool)

(assert (=> b!6491126 (= e!3933787 (nullableZipper!2125 z!1189))))

(declare-fun b!6491127 () Bool)

(assert (=> b!6491127 (= e!3933787 (matchZipper!2381 (derivationStepZipper!2335 z!1189 (head!13211 s!2326)) (tail!12296 s!2326)))))

(assert (= (and d!2036498 c!1189526) b!6491126))

(assert (= (and d!2036498 (not c!1189526)) b!6491127))

(assert (=> d!2036498 m!7279298))

(declare-fun m!7279580 () Bool)

(assert (=> b!6491126 m!7279580))

(assert (=> b!6491127 m!7279330))

(assert (=> b!6491127 m!7279330))

(declare-fun m!7279582 () Bool)

(assert (=> b!6491127 m!7279582))

(assert (=> b!6491127 m!7279326))

(assert (=> b!6491127 m!7279582))

(assert (=> b!6491127 m!7279326))

(declare-fun m!7279584 () Bool)

(assert (=> b!6491127 m!7279584))

(assert (=> b!6490622 d!2036498))

(declare-fun b!6491128 () Bool)

(declare-fun res!2665948 () Bool)

(declare-fun e!3933788 () Bool)

(assert (=> b!6491128 (=> res!2665948 e!3933788)))

(declare-fun e!3933792 () Bool)

(assert (=> b!6491128 (= res!2665948 e!3933792)))

(declare-fun res!2665945 () Bool)

(assert (=> b!6491128 (=> (not res!2665945) (not e!3933792))))

(declare-fun lt!2389729 () Bool)

(assert (=> b!6491128 (= res!2665945 lt!2389729)))

(declare-fun b!6491129 () Bool)

(declare-fun res!2665946 () Bool)

(assert (=> b!6491129 (=> (not res!2665946) (not e!3933792))))

(assert (=> b!6491129 (= res!2665946 (isEmpty!37477 (tail!12296 (_2!36651 lt!2389638))))))

(declare-fun b!6491131 () Bool)

(declare-fun e!3933790 () Bool)

(assert (=> b!6491131 (= e!3933788 e!3933790)))

(declare-fun res!2665949 () Bool)

(assert (=> b!6491131 (=> (not res!2665949) (not e!3933790))))

(assert (=> b!6491131 (= res!2665949 (not lt!2389729))))

(declare-fun bm!561973 () Bool)

(declare-fun call!561978 () Bool)

(assert (=> bm!561973 (= call!561978 (isEmpty!37477 (_2!36651 lt!2389638)))))

(declare-fun b!6491132 () Bool)

(declare-fun e!3933791 () Bool)

(assert (=> b!6491132 (= e!3933791 (not (= (head!13211 (_2!36651 lt!2389638)) (c!1189393 lt!2389631))))))

(declare-fun b!6491133 () Bool)

(declare-fun e!3933794 () Bool)

(assert (=> b!6491133 (= e!3933794 (matchR!8552 (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 lt!2389638))) (tail!12296 (_2!36651 lt!2389638))))))

(declare-fun b!6491134 () Bool)

(declare-fun res!2665950 () Bool)

(assert (=> b!6491134 (=> res!2665950 e!3933791)))

(assert (=> b!6491134 (= res!2665950 (not (isEmpty!37477 (tail!12296 (_2!36651 lt!2389638)))))))

(declare-fun b!6491135 () Bool)

(declare-fun res!2665947 () Bool)

(assert (=> b!6491135 (=> res!2665947 e!3933788)))

(assert (=> b!6491135 (= res!2665947 (not ((_ is ElementMatch!16369) lt!2389631)))))

(declare-fun e!3933789 () Bool)

(assert (=> b!6491135 (= e!3933789 e!3933788)))

(declare-fun b!6491136 () Bool)

(declare-fun e!3933793 () Bool)

(assert (=> b!6491136 (= e!3933793 (= lt!2389729 call!561978))))

(declare-fun b!6491137 () Bool)

(assert (=> b!6491137 (= e!3933790 e!3933791)))

(declare-fun res!2665944 () Bool)

(assert (=> b!6491137 (=> res!2665944 e!3933791)))

(assert (=> b!6491137 (= res!2665944 call!561978)))

(declare-fun b!6491138 () Bool)

(assert (=> b!6491138 (= e!3933794 (nullable!6362 lt!2389631))))

(declare-fun b!6491139 () Bool)

(assert (=> b!6491139 (= e!3933792 (= (head!13211 (_2!36651 lt!2389638)) (c!1189393 lt!2389631)))))

(declare-fun d!2036502 () Bool)

(assert (=> d!2036502 e!3933793))

(declare-fun c!1189529 () Bool)

(assert (=> d!2036502 (= c!1189529 ((_ is EmptyExpr!16369) lt!2389631))))

(assert (=> d!2036502 (= lt!2389729 e!3933794)))

(declare-fun c!1189528 () Bool)

(assert (=> d!2036502 (= c!1189528 (isEmpty!37477 (_2!36651 lt!2389638)))))

(assert (=> d!2036502 (validRegex!8105 lt!2389631)))

(assert (=> d!2036502 (= (matchR!8552 lt!2389631 (_2!36651 lt!2389638)) lt!2389729)))

(declare-fun b!6491130 () Bool)

(assert (=> b!6491130 (= e!3933793 e!3933789)))

(declare-fun c!1189527 () Bool)

(assert (=> b!6491130 (= c!1189527 ((_ is EmptyLang!16369) lt!2389631))))

(declare-fun b!6491140 () Bool)

(assert (=> b!6491140 (= e!3933789 (not lt!2389729))))

(declare-fun b!6491141 () Bool)

(declare-fun res!2665943 () Bool)

(assert (=> b!6491141 (=> (not res!2665943) (not e!3933792))))

(assert (=> b!6491141 (= res!2665943 (not call!561978))))

(assert (= (and d!2036502 c!1189528) b!6491138))

(assert (= (and d!2036502 (not c!1189528)) b!6491133))

(assert (= (and d!2036502 c!1189529) b!6491136))

(assert (= (and d!2036502 (not c!1189529)) b!6491130))

(assert (= (and b!6491130 c!1189527) b!6491140))

(assert (= (and b!6491130 (not c!1189527)) b!6491135))

(assert (= (and b!6491135 (not res!2665947)) b!6491128))

(assert (= (and b!6491128 res!2665945) b!6491141))

(assert (= (and b!6491141 res!2665943) b!6491129))

(assert (= (and b!6491129 res!2665946) b!6491139))

(assert (= (and b!6491128 (not res!2665948)) b!6491131))

(assert (= (and b!6491131 res!2665949) b!6491137))

(assert (= (and b!6491137 (not res!2665944)) b!6491134))

(assert (= (and b!6491134 (not res!2665950)) b!6491132))

(assert (= (or b!6491136 b!6491137 b!6491141) bm!561973))

(declare-fun m!7279586 () Bool)

(assert (=> b!6491129 m!7279586))

(assert (=> b!6491129 m!7279586))

(declare-fun m!7279588 () Bool)

(assert (=> b!6491129 m!7279588))

(declare-fun m!7279590 () Bool)

(assert (=> d!2036502 m!7279590))

(assert (=> d!2036502 m!7279404))

(assert (=> b!6491134 m!7279586))

(assert (=> b!6491134 m!7279586))

(assert (=> b!6491134 m!7279588))

(declare-fun m!7279592 () Bool)

(assert (=> b!6491132 m!7279592))

(assert (=> b!6491138 m!7279408))

(assert (=> bm!561973 m!7279590))

(assert (=> b!6491139 m!7279592))

(assert (=> b!6491133 m!7279592))

(assert (=> b!6491133 m!7279592))

(declare-fun m!7279594 () Bool)

(assert (=> b!6491133 m!7279594))

(assert (=> b!6491133 m!7279586))

(assert (=> b!6491133 m!7279594))

(assert (=> b!6491133 m!7279586))

(declare-fun m!7279596 () Bool)

(assert (=> b!6491133 m!7279596))

(assert (=> b!6490644 d!2036502))

(declare-fun b!6491142 () Bool)

(declare-fun res!2665956 () Bool)

(declare-fun e!3933795 () Bool)

(assert (=> b!6491142 (=> res!2665956 e!3933795)))

(declare-fun e!3933799 () Bool)

(assert (=> b!6491142 (= res!2665956 e!3933799)))

(declare-fun res!2665953 () Bool)

(assert (=> b!6491142 (=> (not res!2665953) (not e!3933799))))

(declare-fun lt!2389730 () Bool)

(assert (=> b!6491142 (= res!2665953 lt!2389730)))

(declare-fun b!6491143 () Bool)

(declare-fun res!2665954 () Bool)

(assert (=> b!6491143 (=> (not res!2665954) (not e!3933799))))

(assert (=> b!6491143 (= res!2665954 (isEmpty!37477 (tail!12296 (_1!36651 lt!2389638))))))

(declare-fun b!6491145 () Bool)

(declare-fun e!3933797 () Bool)

(assert (=> b!6491145 (= e!3933795 e!3933797)))

(declare-fun res!2665957 () Bool)

(assert (=> b!6491145 (=> (not res!2665957) (not e!3933797))))

(assert (=> b!6491145 (= res!2665957 (not lt!2389730))))

(declare-fun bm!561974 () Bool)

(declare-fun call!561979 () Bool)

(assert (=> bm!561974 (= call!561979 (isEmpty!37477 (_1!36651 lt!2389638)))))

(declare-fun b!6491146 () Bool)

(declare-fun e!3933798 () Bool)

(assert (=> b!6491146 (= e!3933798 (not (= (head!13211 (_1!36651 lt!2389638)) (c!1189393 (reg!16698 (regOne!33250 r!7292))))))))

(declare-fun b!6491147 () Bool)

(declare-fun e!3933801 () Bool)

(assert (=> b!6491147 (= e!3933801 (matchR!8552 (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 lt!2389638))) (tail!12296 (_1!36651 lt!2389638))))))

(declare-fun b!6491148 () Bool)

(declare-fun res!2665958 () Bool)

(assert (=> b!6491148 (=> res!2665958 e!3933798)))

(assert (=> b!6491148 (= res!2665958 (not (isEmpty!37477 (tail!12296 (_1!36651 lt!2389638)))))))

(declare-fun b!6491149 () Bool)

(declare-fun res!2665955 () Bool)

(assert (=> b!6491149 (=> res!2665955 e!3933795)))

(assert (=> b!6491149 (= res!2665955 (not ((_ is ElementMatch!16369) (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun e!3933796 () Bool)

(assert (=> b!6491149 (= e!3933796 e!3933795)))

(declare-fun b!6491150 () Bool)

(declare-fun e!3933800 () Bool)

(assert (=> b!6491150 (= e!3933800 (= lt!2389730 call!561979))))

(declare-fun b!6491151 () Bool)

(assert (=> b!6491151 (= e!3933797 e!3933798)))

(declare-fun res!2665952 () Bool)

(assert (=> b!6491151 (=> res!2665952 e!3933798)))

(assert (=> b!6491151 (= res!2665952 call!561979)))

(declare-fun b!6491152 () Bool)

(assert (=> b!6491152 (= e!3933801 (nullable!6362 (reg!16698 (regOne!33250 r!7292))))))

(declare-fun b!6491153 () Bool)

(assert (=> b!6491153 (= e!3933799 (= (head!13211 (_1!36651 lt!2389638)) (c!1189393 (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun d!2036504 () Bool)

(assert (=> d!2036504 e!3933800))

(declare-fun c!1189532 () Bool)

(assert (=> d!2036504 (= c!1189532 ((_ is EmptyExpr!16369) (reg!16698 (regOne!33250 r!7292))))))

(assert (=> d!2036504 (= lt!2389730 e!3933801)))

(declare-fun c!1189531 () Bool)

(assert (=> d!2036504 (= c!1189531 (isEmpty!37477 (_1!36651 lt!2389638)))))

(assert (=> d!2036504 (validRegex!8105 (reg!16698 (regOne!33250 r!7292)))))

(assert (=> d!2036504 (= (matchR!8552 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638)) lt!2389730)))

(declare-fun b!6491144 () Bool)

(assert (=> b!6491144 (= e!3933800 e!3933796)))

(declare-fun c!1189530 () Bool)

(assert (=> b!6491144 (= c!1189530 ((_ is EmptyLang!16369) (reg!16698 (regOne!33250 r!7292))))))

(declare-fun b!6491154 () Bool)

(assert (=> b!6491154 (= e!3933796 (not lt!2389730))))

(declare-fun b!6491155 () Bool)

(declare-fun res!2665951 () Bool)

(assert (=> b!6491155 (=> (not res!2665951) (not e!3933799))))

(assert (=> b!6491155 (= res!2665951 (not call!561979))))

(assert (= (and d!2036504 c!1189531) b!6491152))

(assert (= (and d!2036504 (not c!1189531)) b!6491147))

(assert (= (and d!2036504 c!1189532) b!6491150))

(assert (= (and d!2036504 (not c!1189532)) b!6491144))

(assert (= (and b!6491144 c!1189530) b!6491154))

(assert (= (and b!6491144 (not c!1189530)) b!6491149))

(assert (= (and b!6491149 (not res!2665955)) b!6491142))

(assert (= (and b!6491142 res!2665953) b!6491155))

(assert (= (and b!6491155 res!2665951) b!6491143))

(assert (= (and b!6491143 res!2665954) b!6491153))

(assert (= (and b!6491142 (not res!2665956)) b!6491145))

(assert (= (and b!6491145 res!2665957) b!6491151))

(assert (= (and b!6491151 (not res!2665952)) b!6491148))

(assert (= (and b!6491148 (not res!2665958)) b!6491146))

(assert (= (or b!6491150 b!6491151 b!6491155) bm!561974))

(declare-fun m!7279598 () Bool)

(assert (=> b!6491143 m!7279598))

(assert (=> b!6491143 m!7279598))

(declare-fun m!7279600 () Bool)

(assert (=> b!6491143 m!7279600))

(declare-fun m!7279602 () Bool)

(assert (=> d!2036504 m!7279602))

(assert (=> d!2036504 m!7279464))

(assert (=> b!6491148 m!7279598))

(assert (=> b!6491148 m!7279598))

(assert (=> b!6491148 m!7279600))

(declare-fun m!7279604 () Bool)

(assert (=> b!6491146 m!7279604))

(declare-fun m!7279606 () Bool)

(assert (=> b!6491152 m!7279606))

(assert (=> bm!561974 m!7279602))

(assert (=> b!6491153 m!7279604))

(assert (=> b!6491147 m!7279604))

(assert (=> b!6491147 m!7279604))

(declare-fun m!7279608 () Bool)

(assert (=> b!6491147 m!7279608))

(assert (=> b!6491147 m!7279598))

(assert (=> b!6491147 m!7279608))

(assert (=> b!6491147 m!7279598))

(declare-fun m!7279610 () Bool)

(assert (=> b!6491147 m!7279610))

(assert (=> b!6490623 d!2036504))

(declare-fun d!2036506 () Bool)

(assert (=> d!2036506 (= (Exists!3439 lambda!359439) (choose!48184 lambda!359439))))

(declare-fun bs!1647723 () Bool)

(assert (= bs!1647723 d!2036506))

(declare-fun m!7279612 () Bool)

(assert (=> bs!1647723 m!7279612))

(assert (=> b!6490618 d!2036506))

(declare-fun b!6491160 () Bool)

(declare-fun e!3933805 () Option!16260)

(declare-fun e!3933807 () Option!16260)

(assert (=> b!6491160 (= e!3933805 e!3933807)))

(declare-fun c!1189533 () Bool)

(assert (=> b!6491160 (= c!1189533 ((_ is Nil!65282) s!2326))))

(declare-fun b!6491161 () Bool)

(declare-fun e!3933806 () Bool)

(assert (=> b!6491161 (= e!3933806 (matchR!8552 (regTwo!33250 r!7292) s!2326))))

(declare-fun b!6491162 () Bool)

(declare-fun e!3933804 () Bool)

(declare-fun lt!2389734 () Option!16260)

(assert (=> b!6491162 (= e!3933804 (not (isDefined!12963 lt!2389734)))))

(declare-fun b!6491163 () Bool)

(declare-fun lt!2389735 () Unit!158807)

(declare-fun lt!2389733 () Unit!158807)

(assert (=> b!6491163 (= lt!2389735 lt!2389733)))

(assert (=> b!6491163 (= (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (t!379034 s!2326)) s!2326)))

(assert (=> b!6491163 (= lt!2389733 (lemmaMoveElementToOtherListKeepsConcatEq!2523 Nil!65282 (h!71730 s!2326) (t!379034 s!2326) s!2326))))

(assert (=> b!6491163 (= e!3933807 (findConcatSeparation!2674 lt!2389631 (regTwo!33250 r!7292) (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (t!379034 s!2326) s!2326))))

(declare-fun b!6491164 () Bool)

(declare-fun res!2665967 () Bool)

(declare-fun e!3933808 () Bool)

(assert (=> b!6491164 (=> (not res!2665967) (not e!3933808))))

(assert (=> b!6491164 (= res!2665967 (matchR!8552 lt!2389631 (_1!36651 (get!22637 lt!2389734))))))

(declare-fun b!6491165 () Bool)

(assert (=> b!6491165 (= e!3933805 (Some!16259 (tuple2!66697 Nil!65282 s!2326)))))

(declare-fun d!2036508 () Bool)

(assert (=> d!2036508 e!3933804))

(declare-fun res!2665965 () Bool)

(assert (=> d!2036508 (=> res!2665965 e!3933804)))

(assert (=> d!2036508 (= res!2665965 e!3933808)))

(declare-fun res!2665964 () Bool)

(assert (=> d!2036508 (=> (not res!2665964) (not e!3933808))))

(assert (=> d!2036508 (= res!2665964 (isDefined!12963 lt!2389734))))

(assert (=> d!2036508 (= lt!2389734 e!3933805)))

(declare-fun c!1189534 () Bool)

(assert (=> d!2036508 (= c!1189534 e!3933806)))

(declare-fun res!2665963 () Bool)

(assert (=> d!2036508 (=> (not res!2665963) (not e!3933806))))

(assert (=> d!2036508 (= res!2665963 (matchR!8552 lt!2389631 Nil!65282))))

(assert (=> d!2036508 (validRegex!8105 lt!2389631)))

(assert (=> d!2036508 (= (findConcatSeparation!2674 lt!2389631 (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326) lt!2389734)))

(declare-fun b!6491166 () Bool)

(assert (=> b!6491166 (= e!3933808 (= (++!14448 (_1!36651 (get!22637 lt!2389734)) (_2!36651 (get!22637 lt!2389734))) s!2326))))

(declare-fun b!6491167 () Bool)

(declare-fun res!2665966 () Bool)

(assert (=> b!6491167 (=> (not res!2665966) (not e!3933808))))

(assert (=> b!6491167 (= res!2665966 (matchR!8552 (regTwo!33250 r!7292) (_2!36651 (get!22637 lt!2389734))))))

(declare-fun b!6491168 () Bool)

(assert (=> b!6491168 (= e!3933807 None!16259)))

(assert (= (and d!2036508 res!2665963) b!6491161))

(assert (= (and d!2036508 c!1189534) b!6491165))

(assert (= (and d!2036508 (not c!1189534)) b!6491160))

(assert (= (and b!6491160 c!1189533) b!6491168))

(assert (= (and b!6491160 (not c!1189533)) b!6491163))

(assert (= (and d!2036508 res!2665964) b!6491164))

(assert (= (and b!6491164 res!2665967) b!6491167))

(assert (= (and b!6491167 res!2665966) b!6491166))

(assert (= (and d!2036508 (not res!2665965)) b!6491162))

(declare-fun m!7279614 () Bool)

(assert (=> d!2036508 m!7279614))

(declare-fun m!7279616 () Bool)

(assert (=> d!2036508 m!7279616))

(assert (=> d!2036508 m!7279404))

(declare-fun m!7279618 () Bool)

(assert (=> b!6491164 m!7279618))

(declare-fun m!7279620 () Bool)

(assert (=> b!6491164 m!7279620))

(assert (=> b!6491166 m!7279618))

(declare-fun m!7279622 () Bool)

(assert (=> b!6491166 m!7279622))

(declare-fun m!7279624 () Bool)

(assert (=> b!6491163 m!7279624))

(assert (=> b!6491163 m!7279624))

(declare-fun m!7279626 () Bool)

(assert (=> b!6491163 m!7279626))

(declare-fun m!7279628 () Bool)

(assert (=> b!6491163 m!7279628))

(assert (=> b!6491163 m!7279624))

(declare-fun m!7279630 () Bool)

(assert (=> b!6491163 m!7279630))

(declare-fun m!7279632 () Bool)

(assert (=> b!6491161 m!7279632))

(assert (=> b!6491162 m!7279614))

(assert (=> b!6491167 m!7279618))

(declare-fun m!7279634 () Bool)

(assert (=> b!6491167 m!7279634))

(assert (=> b!6490618 d!2036508))

(declare-fun d!2036510 () Bool)

(assert (=> d!2036510 (= (Exists!3439 lambda!359440) (choose!48184 lambda!359440))))

(declare-fun bs!1647724 () Bool)

(assert (= bs!1647724 d!2036510))

(declare-fun m!7279636 () Bool)

(assert (=> bs!1647724 m!7279636))

(assert (=> b!6490618 d!2036510))

(declare-fun d!2036512 () Bool)

(assert (=> d!2036512 (= (get!22637 lt!2389624) (v!52438 lt!2389624))))

(assert (=> b!6490618 d!2036512))

(declare-fun b!6491172 () Bool)

(declare-fun e!3933810 () Bool)

(declare-fun lt!2389736 () List!65406)

(assert (=> b!6491172 (= e!3933810 (or (not (= (_2!36651 lt!2389655) Nil!65282)) (= lt!2389736 (_1!36651 lt!2389655))))))

(declare-fun b!6491171 () Bool)

(declare-fun res!2665969 () Bool)

(assert (=> b!6491171 (=> (not res!2665969) (not e!3933810))))

(assert (=> b!6491171 (= res!2665969 (= (size!40427 lt!2389736) (+ (size!40427 (_1!36651 lt!2389655)) (size!40427 (_2!36651 lt!2389655)))))))

(declare-fun d!2036514 () Bool)

(assert (=> d!2036514 e!3933810))

(declare-fun res!2665968 () Bool)

(assert (=> d!2036514 (=> (not res!2665968) (not e!3933810))))

(assert (=> d!2036514 (= res!2665968 (= (content!12442 lt!2389736) ((_ map or) (content!12442 (_1!36651 lt!2389655)) (content!12442 (_2!36651 lt!2389655)))))))

(declare-fun e!3933809 () List!65406)

(assert (=> d!2036514 (= lt!2389736 e!3933809)))

(declare-fun c!1189535 () Bool)

(assert (=> d!2036514 (= c!1189535 ((_ is Nil!65282) (_1!36651 lt!2389655)))))

(assert (=> d!2036514 (= (++!14448 (_1!36651 lt!2389655) (_2!36651 lt!2389655)) lt!2389736)))

(declare-fun b!6491170 () Bool)

(assert (=> b!6491170 (= e!3933809 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) (++!14448 (t!379034 (_1!36651 lt!2389655)) (_2!36651 lt!2389655))))))

(declare-fun b!6491169 () Bool)

(assert (=> b!6491169 (= e!3933809 (_2!36651 lt!2389655))))

(assert (= (and d!2036514 c!1189535) b!6491169))

(assert (= (and d!2036514 (not c!1189535)) b!6491170))

(assert (= (and d!2036514 res!2665968) b!6491171))

(assert (= (and b!6491171 res!2665969) b!6491172))

(declare-fun m!7279638 () Bool)

(assert (=> b!6491171 m!7279638))

(declare-fun m!7279640 () Bool)

(assert (=> b!6491171 m!7279640))

(declare-fun m!7279642 () Bool)

(assert (=> b!6491171 m!7279642))

(declare-fun m!7279644 () Bool)

(assert (=> d!2036514 m!7279644))

(declare-fun m!7279646 () Bool)

(assert (=> d!2036514 m!7279646))

(declare-fun m!7279648 () Bool)

(assert (=> d!2036514 m!7279648))

(declare-fun m!7279650 () Bool)

(assert (=> b!6491170 m!7279650))

(assert (=> b!6490618 d!2036514))

(declare-fun bs!1647728 () Bool)

(declare-fun d!2036516 () Bool)

(assert (= bs!1647728 (and d!2036516 b!6490643)))

(declare-fun lambda!359497 () Int)

(assert (=> bs!1647728 (not (= lambda!359497 lambda!359442))))

(assert (=> bs!1647728 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359497 lambda!359441))))

(declare-fun bs!1647731 () Bool)

(assert (= bs!1647731 (and d!2036516 d!2036464)))

(assert (=> bs!1647731 (not (= lambda!359497 lambda!359480))))

(assert (=> bs!1647728 (not (= lambda!359497 lambda!359443))))

(declare-fun bs!1647733 () Bool)

(assert (= bs!1647733 (and d!2036516 d!2036472)))

(assert (=> bs!1647733 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359497 lambda!359485))))

(declare-fun bs!1647735 () Bool)

(assert (= bs!1647735 (and d!2036516 d!2036458)))

(assert (=> bs!1647735 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359497 lambda!359469))))

(declare-fun bs!1647738 () Bool)

(assert (= bs!1647738 (and d!2036516 b!6490649)))

(assert (=> bs!1647738 (not (= lambda!359497 lambda!359437))))

(declare-fun bs!1647739 () Bool)

(assert (= bs!1647739 (and d!2036516 b!6490750)))

(assert (=> bs!1647739 (not (= lambda!359497 lambda!359453))))

(assert (=> bs!1647738 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359497 lambda!359436))))

(declare-fun bs!1647740 () Bool)

(assert (= bs!1647740 (and d!2036516 b!6490618)))

(assert (=> bs!1647740 (not (= lambda!359497 lambda!359440))))

(declare-fun bs!1647741 () Bool)

(assert (= bs!1647741 (and d!2036516 b!6490748)))

(assert (=> bs!1647741 (not (= lambda!359497 lambda!359452))))

(assert (=> bs!1647735 (not (= lambda!359497 lambda!359470))))

(assert (=> bs!1647740 (= lambda!359497 lambda!359439)))

(declare-fun bs!1647743 () Bool)

(assert (= bs!1647743 (and d!2036516 b!6490932)))

(assert (=> bs!1647743 (not (= lambda!359497 lambda!359462))))

(assert (=> bs!1647731 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359497 lambda!359477))))

(declare-fun bs!1647745 () Bool)

(assert (= bs!1647745 (and d!2036516 b!6490930)))

(assert (=> bs!1647745 (not (= lambda!359497 lambda!359459))))

(assert (=> d!2036516 true))

(assert (=> d!2036516 true))

(assert (=> d!2036516 true))

(declare-fun lambda!359498 () Int)

(assert (=> bs!1647728 (not (= lambda!359498 lambda!359442))))

(assert (=> bs!1647728 (not (= lambda!359498 lambda!359441))))

(assert (=> bs!1647731 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359498 lambda!359480))))

(assert (=> bs!1647728 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359498 lambda!359443))))

(assert (=> bs!1647733 (not (= lambda!359498 lambda!359485))))

(assert (=> bs!1647735 (not (= lambda!359498 lambda!359469))))

(assert (=> bs!1647739 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359498 lambda!359453))))

(assert (=> bs!1647738 (not (= lambda!359498 lambda!359436))))

(assert (=> bs!1647740 (= lambda!359498 lambda!359440)))

(assert (=> bs!1647741 (not (= lambda!359498 lambda!359452))))

(assert (=> bs!1647735 (not (= lambda!359498 lambda!359470))))

(assert (=> bs!1647740 (not (= lambda!359498 lambda!359439))))

(declare-fun bs!1647747 () Bool)

(assert (= bs!1647747 d!2036516))

(assert (=> bs!1647747 (not (= lambda!359498 lambda!359497))))

(assert (=> bs!1647738 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359498 lambda!359437))))

(assert (=> bs!1647743 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (regOne!33250 lt!2389631)) (= (regTwo!33250 r!7292) (regTwo!33250 lt!2389631))) (= lambda!359498 lambda!359462))))

(assert (=> bs!1647731 (not (= lambda!359498 lambda!359477))))

(assert (=> bs!1647745 (not (= lambda!359498 lambda!359459))))

(assert (=> d!2036516 true))

(assert (=> d!2036516 true))

(assert (=> d!2036516 true))

(assert (=> d!2036516 (= (Exists!3439 lambda!359497) (Exists!3439 lambda!359498))))

(declare-fun lt!2389738 () Unit!158807)

(assert (=> d!2036516 (= lt!2389738 (choose!48181 lt!2389631 (regTwo!33250 r!7292) s!2326))))

(assert (=> d!2036516 (validRegex!8105 lt!2389631)))

(assert (=> d!2036516 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1976 lt!2389631 (regTwo!33250 r!7292) s!2326) lt!2389738)))

(declare-fun m!7279662 () Bool)

(assert (=> bs!1647747 m!7279662))

(declare-fun m!7279664 () Bool)

(assert (=> bs!1647747 m!7279664))

(declare-fun m!7279666 () Bool)

(assert (=> bs!1647747 m!7279666))

(assert (=> bs!1647747 m!7279404))

(assert (=> b!6490618 d!2036516))

(declare-fun bs!1647748 () Bool)

(declare-fun d!2036524 () Bool)

(assert (= bs!1647748 (and d!2036524 b!6490643)))

(declare-fun lambda!359499 () Int)

(assert (=> bs!1647748 (not (= lambda!359499 lambda!359442))))

(assert (=> bs!1647748 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359499 lambda!359441))))

(declare-fun bs!1647749 () Bool)

(assert (= bs!1647749 (and d!2036524 d!2036464)))

(assert (=> bs!1647749 (not (= lambda!359499 lambda!359480))))

(assert (=> bs!1647748 (not (= lambda!359499 lambda!359443))))

(declare-fun bs!1647750 () Bool)

(assert (= bs!1647750 (and d!2036524 d!2036516)))

(assert (=> bs!1647750 (not (= lambda!359499 lambda!359498))))

(declare-fun bs!1647751 () Bool)

(assert (= bs!1647751 (and d!2036524 d!2036472)))

(assert (=> bs!1647751 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359499 lambda!359485))))

(declare-fun bs!1647752 () Bool)

(assert (= bs!1647752 (and d!2036524 d!2036458)))

(assert (=> bs!1647752 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359499 lambda!359469))))

(declare-fun bs!1647753 () Bool)

(assert (= bs!1647753 (and d!2036524 b!6490750)))

(assert (=> bs!1647753 (not (= lambda!359499 lambda!359453))))

(declare-fun bs!1647754 () Bool)

(assert (= bs!1647754 (and d!2036524 b!6490649)))

(assert (=> bs!1647754 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359499 lambda!359436))))

(declare-fun bs!1647755 () Bool)

(assert (= bs!1647755 (and d!2036524 b!6490618)))

(assert (=> bs!1647755 (not (= lambda!359499 lambda!359440))))

(declare-fun bs!1647756 () Bool)

(assert (= bs!1647756 (and d!2036524 b!6490748)))

(assert (=> bs!1647756 (not (= lambda!359499 lambda!359452))))

(assert (=> bs!1647752 (not (= lambda!359499 lambda!359470))))

(assert (=> bs!1647755 (= lambda!359499 lambda!359439)))

(assert (=> bs!1647750 (= lambda!359499 lambda!359497)))

(assert (=> bs!1647754 (not (= lambda!359499 lambda!359437))))

(declare-fun bs!1647757 () Bool)

(assert (= bs!1647757 (and d!2036524 b!6490932)))

(assert (=> bs!1647757 (not (= lambda!359499 lambda!359462))))

(assert (=> bs!1647749 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359499 lambda!359477))))

(declare-fun bs!1647758 () Bool)

(assert (= bs!1647758 (and d!2036524 b!6490930)))

(assert (=> bs!1647758 (not (= lambda!359499 lambda!359459))))

(assert (=> d!2036524 true))

(assert (=> d!2036524 true))

(assert (=> d!2036524 true))

(assert (=> d!2036524 (= (isDefined!12963 (findConcatSeparation!2674 lt!2389631 (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326)) (Exists!3439 lambda!359499))))

(declare-fun lt!2389739 () Unit!158807)

(assert (=> d!2036524 (= lt!2389739 (choose!48182 lt!2389631 (regTwo!33250 r!7292) s!2326))))

(assert (=> d!2036524 (validRegex!8105 lt!2389631)))

(assert (=> d!2036524 (= (lemmaFindConcatSeparationEquivalentToExists!2438 lt!2389631 (regTwo!33250 r!7292) s!2326) lt!2389739)))

(declare-fun bs!1647759 () Bool)

(assert (= bs!1647759 d!2036524))

(declare-fun m!7279668 () Bool)

(assert (=> bs!1647759 m!7279668))

(declare-fun m!7279670 () Bool)

(assert (=> bs!1647759 m!7279670))

(assert (=> bs!1647759 m!7279188))

(assert (=> bs!1647759 m!7279404))

(assert (=> bs!1647759 m!7279188))

(declare-fun m!7279672 () Bool)

(assert (=> bs!1647759 m!7279672))

(assert (=> b!6490618 d!2036524))

(declare-fun d!2036526 () Bool)

(assert (=> d!2036526 (= (isDefined!12963 lt!2389624) (not (isEmpty!37479 lt!2389624)))))

(declare-fun bs!1647760 () Bool)

(assert (= bs!1647760 d!2036526))

(declare-fun m!7279674 () Bool)

(assert (=> bs!1647760 m!7279674))

(assert (=> b!6490618 d!2036526))

(declare-fun d!2036528 () Bool)

(assert (=> d!2036528 (= (isEmpty!37476 (t!379035 (exprs!6253 (h!71732 zl!343)))) ((_ is Nil!65283) (t!379035 (exprs!6253 (h!71732 zl!343)))))))

(assert (=> b!6490641 d!2036528))

(declare-fun bs!1647761 () Bool)

(declare-fun b!6491179 () Bool)

(assert (= bs!1647761 (and b!6491179 b!6490643)))

(declare-fun lambda!359500 () Int)

(assert (=> bs!1647761 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 lt!2389659) (reg!16698 (regOne!33250 r!7292))) (= lt!2389659 lt!2389631)) (= lambda!359500 lambda!359442))))

(assert (=> bs!1647761 (not (= lambda!359500 lambda!359441))))

(declare-fun bs!1647762 () Bool)

(assert (= bs!1647762 (and b!6491179 d!2036464)))

(assert (=> bs!1647762 (not (= lambda!359500 lambda!359480))))

(assert (=> bs!1647761 (not (= lambda!359500 lambda!359443))))

(declare-fun bs!1647763 () Bool)

(assert (= bs!1647763 (and b!6491179 d!2036516)))

(assert (=> bs!1647763 (not (= lambda!359500 lambda!359498))))

(declare-fun bs!1647764 () Bool)

(assert (= bs!1647764 (and b!6491179 d!2036472)))

(assert (=> bs!1647764 (not (= lambda!359500 lambda!359485))))

(declare-fun bs!1647765 () Bool)

(assert (= bs!1647765 (and b!6491179 d!2036458)))

(assert (=> bs!1647765 (not (= lambda!359500 lambda!359469))))

(declare-fun bs!1647766 () Bool)

(assert (= bs!1647766 (and b!6491179 b!6490750)))

(assert (=> bs!1647766 (not (= lambda!359500 lambda!359453))))

(declare-fun bs!1647767 () Bool)

(assert (= bs!1647767 (and b!6491179 b!6490649)))

(assert (=> bs!1647767 (not (= lambda!359500 lambda!359436))))

(declare-fun bs!1647768 () Bool)

(assert (= bs!1647768 (and b!6491179 b!6490618)))

(assert (=> bs!1647768 (not (= lambda!359500 lambda!359440))))

(declare-fun bs!1647769 () Bool)

(assert (= bs!1647769 (and b!6491179 b!6490748)))

(assert (=> bs!1647769 (= (and (= (reg!16698 lt!2389659) (reg!16698 r!7292)) (= lt!2389659 r!7292)) (= lambda!359500 lambda!359452))))

(declare-fun bs!1647770 () Bool)

(assert (= bs!1647770 (and b!6491179 d!2036524)))

(assert (=> bs!1647770 (not (= lambda!359500 lambda!359499))))

(assert (=> bs!1647765 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 lt!2389659) (reg!16698 (regOne!33250 r!7292))) (= lt!2389659 (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359500 lambda!359470))))

(assert (=> bs!1647768 (not (= lambda!359500 lambda!359439))))

(assert (=> bs!1647763 (not (= lambda!359500 lambda!359497))))

(assert (=> bs!1647767 (not (= lambda!359500 lambda!359437))))

(declare-fun bs!1647771 () Bool)

(assert (= bs!1647771 (and b!6491179 b!6490932)))

(assert (=> bs!1647771 (not (= lambda!359500 lambda!359462))))

(assert (=> bs!1647762 (not (= lambda!359500 lambda!359477))))

(declare-fun bs!1647772 () Bool)

(assert (= bs!1647772 (and b!6491179 b!6490930)))

(assert (=> bs!1647772 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 lt!2389659) (reg!16698 lt!2389631)) (= lt!2389659 lt!2389631)) (= lambda!359500 lambda!359459))))

(assert (=> b!6491179 true))

(assert (=> b!6491179 true))

(declare-fun bs!1647773 () Bool)

(declare-fun b!6491181 () Bool)

(assert (= bs!1647773 (and b!6491181 b!6490643)))

(declare-fun lambda!359501 () Int)

(assert (=> bs!1647773 (not (= lambda!359501 lambda!359442))))

(assert (=> bs!1647773 (not (= lambda!359501 lambda!359441))))

(declare-fun bs!1647774 () Bool)

(assert (= bs!1647774 (and b!6491181 d!2036464)))

(assert (=> bs!1647774 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 lt!2389659) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 lt!2389659) lt!2389631)) (= lambda!359501 lambda!359480))))

(assert (=> bs!1647773 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 lt!2389659) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 lt!2389659) lt!2389631)) (= lambda!359501 lambda!359443))))

(declare-fun bs!1647775 () Bool)

(assert (= bs!1647775 (and b!6491181 d!2036472)))

(assert (=> bs!1647775 (not (= lambda!359501 lambda!359485))))

(declare-fun bs!1647776 () Bool)

(assert (= bs!1647776 (and b!6491181 d!2036458)))

(assert (=> bs!1647776 (not (= lambda!359501 lambda!359469))))

(declare-fun bs!1647777 () Bool)

(assert (= bs!1647777 (and b!6491181 b!6490750)))

(assert (=> bs!1647777 (= (and (= (regOne!33250 lt!2389659) (regOne!33250 r!7292)) (= (regTwo!33250 lt!2389659) (regTwo!33250 r!7292))) (= lambda!359501 lambda!359453))))

(declare-fun bs!1647778 () Bool)

(assert (= bs!1647778 (and b!6491181 b!6490649)))

(assert (=> bs!1647778 (not (= lambda!359501 lambda!359436))))

(declare-fun bs!1647779 () Bool)

(assert (= bs!1647779 (and b!6491181 b!6490618)))

(assert (=> bs!1647779 (= (and (= (regOne!33250 lt!2389659) lt!2389631) (= (regTwo!33250 lt!2389659) (regTwo!33250 r!7292))) (= lambda!359501 lambda!359440))))

(declare-fun bs!1647780 () Bool)

(assert (= bs!1647780 (and b!6491181 b!6490748)))

(assert (=> bs!1647780 (not (= lambda!359501 lambda!359452))))

(declare-fun bs!1647781 () Bool)

(assert (= bs!1647781 (and b!6491181 d!2036524)))

(assert (=> bs!1647781 (not (= lambda!359501 lambda!359499))))

(assert (=> bs!1647776 (not (= lambda!359501 lambda!359470))))

(assert (=> bs!1647779 (not (= lambda!359501 lambda!359439))))

(declare-fun bs!1647782 () Bool)

(assert (= bs!1647782 (and b!6491181 d!2036516)))

(assert (=> bs!1647782 (= (and (= (regOne!33250 lt!2389659) lt!2389631) (= (regTwo!33250 lt!2389659) (regTwo!33250 r!7292))) (= lambda!359501 lambda!359498))))

(declare-fun bs!1647783 () Bool)

(assert (= bs!1647783 (and b!6491181 b!6491179)))

(assert (=> bs!1647783 (not (= lambda!359501 lambda!359500))))

(assert (=> bs!1647782 (not (= lambda!359501 lambda!359497))))

(assert (=> bs!1647778 (= (and (= (regOne!33250 lt!2389659) (regOne!33250 r!7292)) (= (regTwo!33250 lt!2389659) (regTwo!33250 r!7292))) (= lambda!359501 lambda!359437))))

(declare-fun bs!1647784 () Bool)

(assert (= bs!1647784 (and b!6491181 b!6490932)))

(assert (=> bs!1647784 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 lt!2389659) (regOne!33250 lt!2389631)) (= (regTwo!33250 lt!2389659) (regTwo!33250 lt!2389631))) (= lambda!359501 lambda!359462))))

(assert (=> bs!1647774 (not (= lambda!359501 lambda!359477))))

(declare-fun bs!1647785 () Bool)

(assert (= bs!1647785 (and b!6491181 b!6490930)))

(assert (=> bs!1647785 (not (= lambda!359501 lambda!359459))))

(assert (=> b!6491181 true))

(assert (=> b!6491181 true))

(declare-fun b!6491173 () Bool)

(declare-fun e!3933816 () Bool)

(declare-fun e!3933817 () Bool)

(assert (=> b!6491173 (= e!3933816 e!3933817)))

(declare-fun res!2665972 () Bool)

(assert (=> b!6491173 (= res!2665972 (not ((_ is EmptyLang!16369) lt!2389659)))))

(assert (=> b!6491173 (=> (not res!2665972) (not e!3933817))))

(declare-fun bm!561975 () Bool)

(declare-fun call!561980 () Bool)

(assert (=> bm!561975 (= call!561980 (isEmpty!37477 s!2326))))

(declare-fun b!6491174 () Bool)

(declare-fun e!3933812 () Bool)

(declare-fun e!3933811 () Bool)

(assert (=> b!6491174 (= e!3933812 e!3933811)))

(declare-fun res!2665971 () Bool)

(assert (=> b!6491174 (= res!2665971 (matchRSpec!3470 (regOne!33251 lt!2389659) s!2326))))

(assert (=> b!6491174 (=> res!2665971 e!3933811)))

(declare-fun b!6491175 () Bool)

(assert (=> b!6491175 (= e!3933811 (matchRSpec!3470 (regTwo!33251 lt!2389659) s!2326))))

(declare-fun b!6491176 () Bool)

(declare-fun res!2665970 () Bool)

(declare-fun e!3933814 () Bool)

(assert (=> b!6491176 (=> res!2665970 e!3933814)))

(assert (=> b!6491176 (= res!2665970 call!561980)))

(declare-fun e!3933815 () Bool)

(assert (=> b!6491176 (= e!3933815 e!3933814)))

(declare-fun d!2036530 () Bool)

(declare-fun c!1189536 () Bool)

(assert (=> d!2036530 (= c!1189536 ((_ is EmptyExpr!16369) lt!2389659))))

(assert (=> d!2036530 (= (matchRSpec!3470 lt!2389659 s!2326) e!3933816)))

(declare-fun b!6491177 () Bool)

(declare-fun e!3933813 () Bool)

(assert (=> b!6491177 (= e!3933813 (= s!2326 (Cons!65282 (c!1189393 lt!2389659) Nil!65282)))))

(declare-fun b!6491178 () Bool)

(assert (=> b!6491178 (= e!3933816 call!561980)))

(declare-fun call!561981 () Bool)

(assert (=> b!6491179 (= e!3933814 call!561981)))

(declare-fun b!6491180 () Bool)

(assert (=> b!6491180 (= e!3933812 e!3933815)))

(declare-fun c!1189537 () Bool)

(assert (=> b!6491180 (= c!1189537 ((_ is Star!16369) lt!2389659))))

(assert (=> b!6491181 (= e!3933815 call!561981)))

(declare-fun bm!561976 () Bool)

(assert (=> bm!561976 (= call!561981 (Exists!3439 (ite c!1189537 lambda!359500 lambda!359501)))))

(declare-fun b!6491182 () Bool)

(declare-fun c!1189538 () Bool)

(assert (=> b!6491182 (= c!1189538 ((_ is Union!16369) lt!2389659))))

(assert (=> b!6491182 (= e!3933813 e!3933812)))

(declare-fun b!6491183 () Bool)

(declare-fun c!1189539 () Bool)

(assert (=> b!6491183 (= c!1189539 ((_ is ElementMatch!16369) lt!2389659))))

(assert (=> b!6491183 (= e!3933817 e!3933813)))

(assert (= (and d!2036530 c!1189536) b!6491178))

(assert (= (and d!2036530 (not c!1189536)) b!6491173))

(assert (= (and b!6491173 res!2665972) b!6491183))

(assert (= (and b!6491183 c!1189539) b!6491177))

(assert (= (and b!6491183 (not c!1189539)) b!6491182))

(assert (= (and b!6491182 c!1189538) b!6491174))

(assert (= (and b!6491182 (not c!1189538)) b!6491180))

(assert (= (and b!6491174 (not res!2665971)) b!6491175))

(assert (= (and b!6491180 c!1189537) b!6491176))

(assert (= (and b!6491180 (not c!1189537)) b!6491181))

(assert (= (and b!6491176 (not res!2665970)) b!6491179))

(assert (= (or b!6491179 b!6491181) bm!561976))

(assert (= (or b!6491178 b!6491176) bm!561975))

(assert (=> bm!561975 m!7279298))

(declare-fun m!7279676 () Bool)

(assert (=> b!6491174 m!7279676))

(declare-fun m!7279678 () Bool)

(assert (=> b!6491175 m!7279678))

(declare-fun m!7279680 () Bool)

(assert (=> bm!561976 m!7279680))

(assert (=> b!6490626 d!2036530))

(declare-fun b!6491202 () Bool)

(declare-fun res!2665988 () Bool)

(declare-fun e!3933828 () Bool)

(assert (=> b!6491202 (=> res!2665988 e!3933828)))

(declare-fun e!3933832 () Bool)

(assert (=> b!6491202 (= res!2665988 e!3933832)))

(declare-fun res!2665985 () Bool)

(assert (=> b!6491202 (=> (not res!2665985) (not e!3933832))))

(declare-fun lt!2389746 () Bool)

(assert (=> b!6491202 (= res!2665985 lt!2389746)))

(declare-fun b!6491203 () Bool)

(declare-fun res!2665986 () Bool)

(assert (=> b!6491203 (=> (not res!2665986) (not e!3933832))))

(assert (=> b!6491203 (= res!2665986 (isEmpty!37477 (tail!12296 s!2326)))))

(declare-fun b!6491205 () Bool)

(declare-fun e!3933830 () Bool)

(assert (=> b!6491205 (= e!3933828 e!3933830)))

(declare-fun res!2665989 () Bool)

(assert (=> b!6491205 (=> (not res!2665989) (not e!3933830))))

(assert (=> b!6491205 (= res!2665989 (not lt!2389746))))

(declare-fun bm!561977 () Bool)

(declare-fun call!561982 () Bool)

(assert (=> bm!561977 (= call!561982 (isEmpty!37477 s!2326))))

(declare-fun b!6491206 () Bool)

(declare-fun e!3933831 () Bool)

(assert (=> b!6491206 (= e!3933831 (not (= (head!13211 s!2326) (c!1189393 lt!2389659))))))

(declare-fun b!6491207 () Bool)

(declare-fun e!3933834 () Bool)

(assert (=> b!6491207 (= e!3933834 (matchR!8552 (derivativeStep!5064 lt!2389659 (head!13211 s!2326)) (tail!12296 s!2326)))))

(declare-fun b!6491208 () Bool)

(declare-fun res!2665990 () Bool)

(assert (=> b!6491208 (=> res!2665990 e!3933831)))

(assert (=> b!6491208 (= res!2665990 (not (isEmpty!37477 (tail!12296 s!2326))))))

(declare-fun b!6491209 () Bool)

(declare-fun res!2665987 () Bool)

(assert (=> b!6491209 (=> res!2665987 e!3933828)))

(assert (=> b!6491209 (= res!2665987 (not ((_ is ElementMatch!16369) lt!2389659)))))

(declare-fun e!3933829 () Bool)

(assert (=> b!6491209 (= e!3933829 e!3933828)))

(declare-fun b!6491210 () Bool)

(declare-fun e!3933833 () Bool)

(assert (=> b!6491210 (= e!3933833 (= lt!2389746 call!561982))))

(declare-fun b!6491211 () Bool)

(assert (=> b!6491211 (= e!3933830 e!3933831)))

(declare-fun res!2665984 () Bool)

(assert (=> b!6491211 (=> res!2665984 e!3933831)))

(assert (=> b!6491211 (= res!2665984 call!561982)))

(declare-fun b!6491212 () Bool)

(assert (=> b!6491212 (= e!3933834 (nullable!6362 lt!2389659))))

(declare-fun b!6491213 () Bool)

(assert (=> b!6491213 (= e!3933832 (= (head!13211 s!2326) (c!1189393 lt!2389659)))))

(declare-fun d!2036532 () Bool)

(assert (=> d!2036532 e!3933833))

(declare-fun c!1189546 () Bool)

(assert (=> d!2036532 (= c!1189546 ((_ is EmptyExpr!16369) lt!2389659))))

(assert (=> d!2036532 (= lt!2389746 e!3933834)))

(declare-fun c!1189545 () Bool)

(assert (=> d!2036532 (= c!1189545 (isEmpty!37477 s!2326))))

(assert (=> d!2036532 (validRegex!8105 lt!2389659)))

(assert (=> d!2036532 (= (matchR!8552 lt!2389659 s!2326) lt!2389746)))

(declare-fun b!6491204 () Bool)

(assert (=> b!6491204 (= e!3933833 e!3933829)))

(declare-fun c!1189544 () Bool)

(assert (=> b!6491204 (= c!1189544 ((_ is EmptyLang!16369) lt!2389659))))

(declare-fun b!6491214 () Bool)

(assert (=> b!6491214 (= e!3933829 (not lt!2389746))))

(declare-fun b!6491215 () Bool)

(declare-fun res!2665983 () Bool)

(assert (=> b!6491215 (=> (not res!2665983) (not e!3933832))))

(assert (=> b!6491215 (= res!2665983 (not call!561982))))

(assert (= (and d!2036532 c!1189545) b!6491212))

(assert (= (and d!2036532 (not c!1189545)) b!6491207))

(assert (= (and d!2036532 c!1189546) b!6491210))

(assert (= (and d!2036532 (not c!1189546)) b!6491204))

(assert (= (and b!6491204 c!1189544) b!6491214))

(assert (= (and b!6491204 (not c!1189544)) b!6491209))

(assert (= (and b!6491209 (not res!2665987)) b!6491202))

(assert (= (and b!6491202 res!2665985) b!6491215))

(assert (= (and b!6491215 res!2665983) b!6491203))

(assert (= (and b!6491203 res!2665986) b!6491213))

(assert (= (and b!6491202 (not res!2665988)) b!6491205))

(assert (= (and b!6491205 res!2665989) b!6491211))

(assert (= (and b!6491211 (not res!2665984)) b!6491208))

(assert (= (and b!6491208 (not res!2665990)) b!6491206))

(assert (= (or b!6491210 b!6491211 b!6491215) bm!561977))

(assert (=> b!6491203 m!7279326))

(assert (=> b!6491203 m!7279326))

(assert (=> b!6491203 m!7279328))

(assert (=> d!2036532 m!7279298))

(declare-fun m!7279682 () Bool)

(assert (=> d!2036532 m!7279682))

(assert (=> b!6491208 m!7279326))

(assert (=> b!6491208 m!7279326))

(assert (=> b!6491208 m!7279328))

(assert (=> b!6491206 m!7279330))

(declare-fun m!7279684 () Bool)

(assert (=> b!6491212 m!7279684))

(assert (=> bm!561977 m!7279298))

(assert (=> b!6491213 m!7279330))

(assert (=> b!6491207 m!7279330))

(assert (=> b!6491207 m!7279330))

(declare-fun m!7279686 () Bool)

(assert (=> b!6491207 m!7279686))

(assert (=> b!6491207 m!7279326))

(assert (=> b!6491207 m!7279686))

(assert (=> b!6491207 m!7279326))

(declare-fun m!7279688 () Bool)

(assert (=> b!6491207 m!7279688))

(assert (=> b!6490626 d!2036532))

(declare-fun d!2036534 () Bool)

(assert (=> d!2036534 (= (matchR!8552 lt!2389659 s!2326) (matchRSpec!3470 lt!2389659 s!2326))))

(declare-fun lt!2389750 () Unit!158807)

(assert (=> d!2036534 (= lt!2389750 (choose!48175 lt!2389659 s!2326))))

(assert (=> d!2036534 (validRegex!8105 lt!2389659)))

(assert (=> d!2036534 (= (mainMatchTheorem!3470 lt!2389659 s!2326) lt!2389750)))

(declare-fun bs!1647786 () Bool)

(assert (= bs!1647786 d!2036534))

(assert (=> bs!1647786 m!7279084))

(assert (=> bs!1647786 m!7279082))

(declare-fun m!7279690 () Bool)

(assert (=> bs!1647786 m!7279690))

(assert (=> bs!1647786 m!7279682))

(assert (=> b!6490626 d!2036534))

(declare-fun d!2036536 () Bool)

(declare-fun lt!2389751 () Regex!16369)

(assert (=> d!2036536 (validRegex!8105 lt!2389751)))

(assert (=> d!2036536 (= lt!2389751 (generalisedUnion!2213 (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284))))))

(assert (=> d!2036536 (= (unfocusZipper!2111 (Cons!65284 lt!2389611 Nil!65284)) lt!2389751)))

(declare-fun bs!1647787 () Bool)

(assert (= bs!1647787 d!2036536))

(declare-fun m!7279692 () Bool)

(assert (=> bs!1647787 m!7279692))

(declare-fun m!7279694 () Bool)

(assert (=> bs!1647787 m!7279694))

(assert (=> bs!1647787 m!7279694))

(declare-fun m!7279696 () Bool)

(assert (=> bs!1647787 m!7279696))

(assert (=> b!6490606 d!2036536))

(declare-fun d!2036538 () Bool)

(assert (=> d!2036538 (= (isEmpty!37478 (t!379036 zl!343)) ((_ is Nil!65284) (t!379036 zl!343)))))

(assert (=> b!6490648 d!2036538))

(declare-fun bs!1647788 () Bool)

(declare-fun d!2036540 () Bool)

(assert (= bs!1647788 (and d!2036540 b!6490629)))

(declare-fun lambda!359502 () Int)

(assert (=> bs!1647788 (= lambda!359502 lambda!359444)))

(declare-fun bs!1647789 () Bool)

(assert (= bs!1647789 (and d!2036540 d!2036426)))

(assert (=> bs!1647789 (= lambda!359502 lambda!359456)))

(assert (=> d!2036540 (= (inv!84169 setElem!44219) (forall!15551 (exprs!6253 setElem!44219) lambda!359502))))

(declare-fun bs!1647790 () Bool)

(assert (= bs!1647790 d!2036540))

(declare-fun m!7279710 () Bool)

(assert (=> bs!1647790 m!7279710))

(assert (=> setNonEmpty!44219 d!2036540))

(declare-fun d!2036542 () Bool)

(declare-fun lt!2389752 () Regex!16369)

(assert (=> d!2036542 (validRegex!8105 lt!2389752)))

(assert (=> d!2036542 (= lt!2389752 (generalisedUnion!2213 (unfocusZipperList!1790 lt!2389621)))))

(assert (=> d!2036542 (= (unfocusZipper!2111 lt!2389621) lt!2389752)))

(declare-fun bs!1647791 () Bool)

(assert (= bs!1647791 d!2036542))

(declare-fun m!7279718 () Bool)

(assert (=> bs!1647791 m!7279718))

(declare-fun m!7279720 () Bool)

(assert (=> bs!1647791 m!7279720))

(assert (=> bs!1647791 m!7279720))

(declare-fun m!7279724 () Bool)

(assert (=> bs!1647791 m!7279724))

(assert (=> b!6490608 d!2036542))

(declare-fun b!6491225 () Bool)

(declare-fun e!3933841 () Bool)

(assert (=> b!6491225 (= e!3933841 (nullable!6362 (h!71731 (exprs!6253 lt!2389656))))))

(declare-fun b!6491226 () Bool)

(declare-fun e!3933840 () (InoxSet Context!11506))

(declare-fun e!3933842 () (InoxSet Context!11506))

(assert (=> b!6491226 (= e!3933840 e!3933842)))

(declare-fun c!1189550 () Bool)

(assert (=> b!6491226 (= c!1189550 ((_ is Cons!65283) (exprs!6253 lt!2389656)))))

(declare-fun b!6491227 () Bool)

(declare-fun call!561983 () (InoxSet Context!11506))

(assert (=> b!6491227 (= e!3933842 call!561983)))

(declare-fun bm!561978 () Bool)

(assert (=> bm!561978 (= call!561983 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 lt!2389656)) (Context!11507 (t!379035 (exprs!6253 lt!2389656))) (h!71730 s!2326)))))

(declare-fun b!6491229 () Bool)

(assert (=> b!6491229 (= e!3933842 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2036544 () Bool)

(declare-fun c!1189549 () Bool)

(assert (=> d!2036544 (= c!1189549 e!3933841)))

(declare-fun res!2665996 () Bool)

(assert (=> d!2036544 (=> (not res!2665996) (not e!3933841))))

(assert (=> d!2036544 (= res!2665996 ((_ is Cons!65283) (exprs!6253 lt!2389656)))))

(assert (=> d!2036544 (= (derivationStepZipperUp!1543 lt!2389656 (h!71730 s!2326)) e!3933840)))

(declare-fun b!6491228 () Bool)

(assert (=> b!6491228 (= e!3933840 ((_ map or) call!561983 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 lt!2389656))) (h!71730 s!2326))))))

(assert (= (and d!2036544 res!2665996) b!6491225))

(assert (= (and d!2036544 c!1189549) b!6491228))

(assert (= (and d!2036544 (not c!1189549)) b!6491226))

(assert (= (and b!6491226 c!1189550) b!6491227))

(assert (= (and b!6491226 (not c!1189550)) b!6491229))

(assert (= (or b!6491228 b!6491227) bm!561978))

(declare-fun m!7279726 () Bool)

(assert (=> b!6491225 m!7279726))

(declare-fun m!7279728 () Bool)

(assert (=> bm!561978 m!7279728))

(declare-fun m!7279730 () Bool)

(assert (=> b!6491228 m!7279730))

(assert (=> b!6490608 d!2036544))

(declare-fun b!6491230 () Bool)

(declare-fun e!3933844 () Bool)

(assert (=> b!6491230 (= e!3933844 (nullable!6362 (h!71731 (exprs!6253 lt!2389610))))))

(declare-fun b!6491231 () Bool)

(declare-fun e!3933843 () (InoxSet Context!11506))

(declare-fun e!3933845 () (InoxSet Context!11506))

(assert (=> b!6491231 (= e!3933843 e!3933845)))

(declare-fun c!1189552 () Bool)

(assert (=> b!6491231 (= c!1189552 ((_ is Cons!65283) (exprs!6253 lt!2389610)))))

(declare-fun b!6491232 () Bool)

(declare-fun call!561984 () (InoxSet Context!11506))

(assert (=> b!6491232 (= e!3933845 call!561984)))

(declare-fun bm!561979 () Bool)

(assert (=> bm!561979 (= call!561984 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 lt!2389610)) (Context!11507 (t!379035 (exprs!6253 lt!2389610))) (h!71730 s!2326)))))

(declare-fun b!6491234 () Bool)

(assert (=> b!6491234 (= e!3933845 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2036548 () Bool)

(declare-fun c!1189551 () Bool)

(assert (=> d!2036548 (= c!1189551 e!3933844)))

(declare-fun res!2665997 () Bool)

(assert (=> d!2036548 (=> (not res!2665997) (not e!3933844))))

(assert (=> d!2036548 (= res!2665997 ((_ is Cons!65283) (exprs!6253 lt!2389610)))))

(assert (=> d!2036548 (= (derivationStepZipperUp!1543 lt!2389610 (h!71730 s!2326)) e!3933843)))

(declare-fun b!6491233 () Bool)

(assert (=> b!6491233 (= e!3933843 ((_ map or) call!561984 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 lt!2389610))) (h!71730 s!2326))))))

(assert (= (and d!2036548 res!2665997) b!6491230))

(assert (= (and d!2036548 c!1189551) b!6491233))

(assert (= (and d!2036548 (not c!1189551)) b!6491231))

(assert (= (and b!6491231 c!1189552) b!6491232))

(assert (= (and b!6491231 (not c!1189552)) b!6491234))

(assert (= (or b!6491233 b!6491232) bm!561979))

(declare-fun m!7279732 () Bool)

(assert (=> b!6491230 m!7279732))

(declare-fun m!7279734 () Bool)

(assert (=> bm!561979 m!7279734))

(declare-fun m!7279736 () Bool)

(assert (=> b!6491233 m!7279736))

(assert (=> b!6490608 d!2036548))

(declare-fun d!2036550 () Bool)

(assert (=> d!2036550 (= (flatMap!1874 lt!2389616 lambda!359438) (dynLambda!25930 lambda!359438 lt!2389656))))

(declare-fun lt!2389753 () Unit!158807)

(assert (=> d!2036550 (= lt!2389753 (choose!48172 lt!2389616 lt!2389656 lambda!359438))))

(assert (=> d!2036550 (= lt!2389616 (store ((as const (Array Context!11506 Bool)) false) lt!2389656 true))))

(assert (=> d!2036550 (= (lemmaFlatMapOnSingletonSet!1400 lt!2389616 lt!2389656 lambda!359438) lt!2389753)))

(declare-fun b_lambda!245735 () Bool)

(assert (=> (not b_lambda!245735) (not d!2036550)))

(declare-fun bs!1647792 () Bool)

(assert (= bs!1647792 d!2036550))

(assert (=> bs!1647792 m!7279094))

(declare-fun m!7279738 () Bool)

(assert (=> bs!1647792 m!7279738))

(declare-fun m!7279740 () Bool)

(assert (=> bs!1647792 m!7279740))

(assert (=> bs!1647792 m!7279102))

(assert (=> b!6490608 d!2036550))

(declare-fun d!2036552 () Bool)

(assert (=> d!2036552 (= (flatMap!1874 lt!2389651 lambda!359438) (choose!48171 lt!2389651 lambda!359438))))

(declare-fun bs!1647793 () Bool)

(assert (= bs!1647793 d!2036552))

(declare-fun m!7279742 () Bool)

(assert (=> bs!1647793 m!7279742))

(assert (=> b!6490608 d!2036552))

(declare-fun d!2036554 () Bool)

(assert (=> d!2036554 (= (flatMap!1874 lt!2389616 lambda!359438) (choose!48171 lt!2389616 lambda!359438))))

(declare-fun bs!1647794 () Bool)

(assert (= bs!1647794 d!2036554))

(declare-fun m!7279744 () Bool)

(assert (=> bs!1647794 m!7279744))

(assert (=> b!6490608 d!2036554))

(declare-fun d!2036556 () Bool)

(assert (=> d!2036556 (= (flatMap!1874 lt!2389651 lambda!359438) (dynLambda!25930 lambda!359438 lt!2389610))))

(declare-fun lt!2389754 () Unit!158807)

(assert (=> d!2036556 (= lt!2389754 (choose!48172 lt!2389651 lt!2389610 lambda!359438))))

(assert (=> d!2036556 (= lt!2389651 (store ((as const (Array Context!11506 Bool)) false) lt!2389610 true))))

(assert (=> d!2036556 (= (lemmaFlatMapOnSingletonSet!1400 lt!2389651 lt!2389610 lambda!359438) lt!2389754)))

(declare-fun b_lambda!245737 () Bool)

(assert (=> (not b_lambda!245737) (not d!2036556)))

(declare-fun bs!1647795 () Bool)

(assert (= bs!1647795 d!2036556))

(assert (=> bs!1647795 m!7279090))

(declare-fun m!7279746 () Bool)

(assert (=> bs!1647795 m!7279746))

(declare-fun m!7279748 () Bool)

(assert (=> bs!1647795 m!7279748))

(assert (=> bs!1647795 m!7279100))

(assert (=> b!6490608 d!2036556))

(declare-fun bs!1647796 () Bool)

(declare-fun d!2036558 () Bool)

(assert (= bs!1647796 (and d!2036558 b!6490629)))

(declare-fun lambda!359507 () Int)

(assert (=> bs!1647796 (= lambda!359507 lambda!359444)))

(declare-fun bs!1647797 () Bool)

(assert (= bs!1647797 (and d!2036558 d!2036426)))

(assert (=> bs!1647797 (= lambda!359507 lambda!359456)))

(declare-fun bs!1647798 () Bool)

(assert (= bs!1647798 (and d!2036558 d!2036540)))

(assert (=> bs!1647798 (= lambda!359507 lambda!359502)))

(declare-fun b!6491281 () Bool)

(declare-fun e!3933873 () Regex!16369)

(declare-fun e!3933874 () Regex!16369)

(assert (=> b!6491281 (= e!3933873 e!3933874)))

(declare-fun c!1189573 () Bool)

(assert (=> b!6491281 (= c!1189573 ((_ is Cons!65283) (unfocusZipperList!1790 zl!343)))))

(declare-fun b!6491282 () Bool)

(declare-fun e!3933875 () Bool)

(declare-fun lt!2389759 () Regex!16369)

(declare-fun isUnion!1199 (Regex!16369) Bool)

(assert (=> b!6491282 (= e!3933875 (isUnion!1199 lt!2389759))))

(declare-fun b!6491283 () Bool)

(declare-fun head!13214 (List!65407) Regex!16369)

(assert (=> b!6491283 (= e!3933875 (= lt!2389759 (head!13214 (unfocusZipperList!1790 zl!343))))))

(declare-fun b!6491284 () Bool)

(assert (=> b!6491284 (= e!3933873 (h!71731 (unfocusZipperList!1790 zl!343)))))

(declare-fun e!3933877 () Bool)

(assert (=> d!2036558 e!3933877))

(declare-fun res!2666007 () Bool)

(assert (=> d!2036558 (=> (not res!2666007) (not e!3933877))))

(assert (=> d!2036558 (= res!2666007 (validRegex!8105 lt!2389759))))

(assert (=> d!2036558 (= lt!2389759 e!3933873)))

(declare-fun c!1189575 () Bool)

(declare-fun e!3933878 () Bool)

(assert (=> d!2036558 (= c!1189575 e!3933878)))

(declare-fun res!2666006 () Bool)

(assert (=> d!2036558 (=> (not res!2666006) (not e!3933878))))

(assert (=> d!2036558 (= res!2666006 ((_ is Cons!65283) (unfocusZipperList!1790 zl!343)))))

(assert (=> d!2036558 (forall!15551 (unfocusZipperList!1790 zl!343) lambda!359507)))

(assert (=> d!2036558 (= (generalisedUnion!2213 (unfocusZipperList!1790 zl!343)) lt!2389759)))

(declare-fun b!6491285 () Bool)

(declare-fun e!3933876 () Bool)

(assert (=> b!6491285 (= e!3933877 e!3933876)))

(declare-fun c!1189574 () Bool)

(assert (=> b!6491285 (= c!1189574 (isEmpty!37476 (unfocusZipperList!1790 zl!343)))))

(declare-fun b!6491286 () Bool)

(assert (=> b!6491286 (= e!3933874 EmptyLang!16369)))

(declare-fun b!6491287 () Bool)

(assert (=> b!6491287 (= e!3933878 (isEmpty!37476 (t!379035 (unfocusZipperList!1790 zl!343))))))

(declare-fun b!6491288 () Bool)

(assert (=> b!6491288 (= e!3933874 (Union!16369 (h!71731 (unfocusZipperList!1790 zl!343)) (generalisedUnion!2213 (t!379035 (unfocusZipperList!1790 zl!343)))))))

(declare-fun b!6491289 () Bool)

(declare-fun isEmptyLang!1769 (Regex!16369) Bool)

(assert (=> b!6491289 (= e!3933876 (isEmptyLang!1769 lt!2389759))))

(declare-fun b!6491290 () Bool)

(assert (=> b!6491290 (= e!3933876 e!3933875)))

(declare-fun c!1189572 () Bool)

(declare-fun tail!12299 (List!65407) List!65407)

(assert (=> b!6491290 (= c!1189572 (isEmpty!37476 (tail!12299 (unfocusZipperList!1790 zl!343))))))

(assert (= (and d!2036558 res!2666006) b!6491287))

(assert (= (and d!2036558 c!1189575) b!6491284))

(assert (= (and d!2036558 (not c!1189575)) b!6491281))

(assert (= (and b!6491281 c!1189573) b!6491288))

(assert (= (and b!6491281 (not c!1189573)) b!6491286))

(assert (= (and d!2036558 res!2666007) b!6491285))

(assert (= (and b!6491285 c!1189574) b!6491289))

(assert (= (and b!6491285 (not c!1189574)) b!6491290))

(assert (= (and b!6491290 c!1189572) b!6491283))

(assert (= (and b!6491290 (not c!1189572)) b!6491282))

(declare-fun m!7279762 () Bool)

(assert (=> b!6491282 m!7279762))

(assert (=> b!6491283 m!7279262))

(declare-fun m!7279764 () Bool)

(assert (=> b!6491283 m!7279764))

(declare-fun m!7279766 () Bool)

(assert (=> b!6491287 m!7279766))

(assert (=> b!6491290 m!7279262))

(declare-fun m!7279768 () Bool)

(assert (=> b!6491290 m!7279768))

(assert (=> b!6491290 m!7279768))

(declare-fun m!7279770 () Bool)

(assert (=> b!6491290 m!7279770))

(assert (=> b!6491285 m!7279262))

(declare-fun m!7279772 () Bool)

(assert (=> b!6491285 m!7279772))

(declare-fun m!7279774 () Bool)

(assert (=> b!6491288 m!7279774))

(declare-fun m!7279776 () Bool)

(assert (=> b!6491289 m!7279776))

(declare-fun m!7279778 () Bool)

(assert (=> d!2036558 m!7279778))

(assert (=> d!2036558 m!7279262))

(declare-fun m!7279780 () Bool)

(assert (=> d!2036558 m!7279780))

(assert (=> b!6490624 d!2036558))

(declare-fun bs!1647800 () Bool)

(declare-fun d!2036562 () Bool)

(assert (= bs!1647800 (and d!2036562 b!6490629)))

(declare-fun lambda!359513 () Int)

(assert (=> bs!1647800 (= lambda!359513 lambda!359444)))

(declare-fun bs!1647801 () Bool)

(assert (= bs!1647801 (and d!2036562 d!2036426)))

(assert (=> bs!1647801 (= lambda!359513 lambda!359456)))

(declare-fun bs!1647802 () Bool)

(assert (= bs!1647802 (and d!2036562 d!2036540)))

(assert (=> bs!1647802 (= lambda!359513 lambda!359502)))

(declare-fun bs!1647803 () Bool)

(assert (= bs!1647803 (and d!2036562 d!2036558)))

(assert (=> bs!1647803 (= lambda!359513 lambda!359507)))

(declare-fun lt!2389765 () List!65407)

(assert (=> d!2036562 (forall!15551 lt!2389765 lambda!359513)))

(declare-fun e!3933889 () List!65407)

(assert (=> d!2036562 (= lt!2389765 e!3933889)))

(declare-fun c!1189584 () Bool)

(assert (=> d!2036562 (= c!1189584 ((_ is Cons!65284) zl!343))))

(assert (=> d!2036562 (= (unfocusZipperList!1790 zl!343) lt!2389765)))

(declare-fun b!6491309 () Bool)

(assert (=> b!6491309 (= e!3933889 (Cons!65283 (generalisedConcat!1966 (exprs!6253 (h!71732 zl!343))) (unfocusZipperList!1790 (t!379036 zl!343))))))

(declare-fun b!6491310 () Bool)

(assert (=> b!6491310 (= e!3933889 Nil!65283)))

(assert (= (and d!2036562 c!1189584) b!6491309))

(assert (= (and d!2036562 (not c!1189584)) b!6491310))

(declare-fun m!7279802 () Bool)

(assert (=> d!2036562 m!7279802))

(assert (=> b!6491309 m!7279266))

(declare-fun m!7279804 () Bool)

(assert (=> b!6491309 m!7279804))

(assert (=> b!6490624 d!2036562))

(declare-fun b!6491311 () Bool)

(declare-fun res!2666015 () Bool)

(declare-fun e!3933890 () Bool)

(assert (=> b!6491311 (=> res!2666015 e!3933890)))

(declare-fun e!3933894 () Bool)

(assert (=> b!6491311 (= res!2666015 e!3933894)))

(declare-fun res!2666012 () Bool)

(assert (=> b!6491311 (=> (not res!2666012) (not e!3933894))))

(declare-fun lt!2389766 () Bool)

(assert (=> b!6491311 (= res!2666012 lt!2389766)))

(declare-fun b!6491312 () Bool)

(declare-fun res!2666013 () Bool)

(assert (=> b!6491312 (=> (not res!2666013) (not e!3933894))))

(assert (=> b!6491312 (= res!2666013 (isEmpty!37477 (tail!12296 (_2!36651 lt!2389655))))))

(declare-fun b!6491314 () Bool)

(declare-fun e!3933892 () Bool)

(assert (=> b!6491314 (= e!3933890 e!3933892)))

(declare-fun res!2666016 () Bool)

(assert (=> b!6491314 (=> (not res!2666016) (not e!3933892))))

(assert (=> b!6491314 (= res!2666016 (not lt!2389766))))

(declare-fun bm!561980 () Bool)

(declare-fun call!561985 () Bool)

(assert (=> bm!561980 (= call!561985 (isEmpty!37477 (_2!36651 lt!2389655)))))

(declare-fun b!6491315 () Bool)

(declare-fun e!3933893 () Bool)

(assert (=> b!6491315 (= e!3933893 (not (= (head!13211 (_2!36651 lt!2389655)) (c!1189393 (regTwo!33250 r!7292)))))))

(declare-fun b!6491316 () Bool)

(declare-fun e!3933896 () Bool)

(assert (=> b!6491316 (= e!3933896 (matchR!8552 (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 lt!2389655))) (tail!12296 (_2!36651 lt!2389655))))))

(declare-fun b!6491317 () Bool)

(declare-fun res!2666017 () Bool)

(assert (=> b!6491317 (=> res!2666017 e!3933893)))

(assert (=> b!6491317 (= res!2666017 (not (isEmpty!37477 (tail!12296 (_2!36651 lt!2389655)))))))

(declare-fun b!6491318 () Bool)

(declare-fun res!2666014 () Bool)

(assert (=> b!6491318 (=> res!2666014 e!3933890)))

(assert (=> b!6491318 (= res!2666014 (not ((_ is ElementMatch!16369) (regTwo!33250 r!7292))))))

(declare-fun e!3933891 () Bool)

(assert (=> b!6491318 (= e!3933891 e!3933890)))

(declare-fun b!6491319 () Bool)

(declare-fun e!3933895 () Bool)

(assert (=> b!6491319 (= e!3933895 (= lt!2389766 call!561985))))

(declare-fun b!6491320 () Bool)

(assert (=> b!6491320 (= e!3933892 e!3933893)))

(declare-fun res!2666011 () Bool)

(assert (=> b!6491320 (=> res!2666011 e!3933893)))

(assert (=> b!6491320 (= res!2666011 call!561985)))

(declare-fun b!6491321 () Bool)

(assert (=> b!6491321 (= e!3933896 (nullable!6362 (regTwo!33250 r!7292)))))

(declare-fun b!6491322 () Bool)

(assert (=> b!6491322 (= e!3933894 (= (head!13211 (_2!36651 lt!2389655)) (c!1189393 (regTwo!33250 r!7292))))))

(declare-fun d!2036566 () Bool)

(assert (=> d!2036566 e!3933895))

(declare-fun c!1189587 () Bool)

(assert (=> d!2036566 (= c!1189587 ((_ is EmptyExpr!16369) (regTwo!33250 r!7292)))))

(assert (=> d!2036566 (= lt!2389766 e!3933896)))

(declare-fun c!1189586 () Bool)

(assert (=> d!2036566 (= c!1189586 (isEmpty!37477 (_2!36651 lt!2389655)))))

(assert (=> d!2036566 (validRegex!8105 (regTwo!33250 r!7292))))

(assert (=> d!2036566 (= (matchR!8552 (regTwo!33250 r!7292) (_2!36651 lt!2389655)) lt!2389766)))

(declare-fun b!6491313 () Bool)

(assert (=> b!6491313 (= e!3933895 e!3933891)))

(declare-fun c!1189585 () Bool)

(assert (=> b!6491313 (= c!1189585 ((_ is EmptyLang!16369) (regTwo!33250 r!7292)))))

(declare-fun b!6491323 () Bool)

(assert (=> b!6491323 (= e!3933891 (not lt!2389766))))

(declare-fun b!6491324 () Bool)

(declare-fun res!2666010 () Bool)

(assert (=> b!6491324 (=> (not res!2666010) (not e!3933894))))

(assert (=> b!6491324 (= res!2666010 (not call!561985))))

(assert (= (and d!2036566 c!1189586) b!6491321))

(assert (= (and d!2036566 (not c!1189586)) b!6491316))

(assert (= (and d!2036566 c!1189587) b!6491319))

(assert (= (and d!2036566 (not c!1189587)) b!6491313))

(assert (= (and b!6491313 c!1189585) b!6491323))

(assert (= (and b!6491313 (not c!1189585)) b!6491318))

(assert (= (and b!6491318 (not res!2666014)) b!6491311))

(assert (= (and b!6491311 res!2666012) b!6491324))

(assert (= (and b!6491324 res!2666010) b!6491312))

(assert (= (and b!6491312 res!2666013) b!6491322))

(assert (= (and b!6491311 (not res!2666015)) b!6491314))

(assert (= (and b!6491314 res!2666016) b!6491320))

(assert (= (and b!6491320 (not res!2666011)) b!6491317))

(assert (= (and b!6491317 (not res!2666017)) b!6491315))

(assert (= (or b!6491319 b!6491320 b!6491324) bm!561980))

(declare-fun m!7279810 () Bool)

(assert (=> b!6491312 m!7279810))

(assert (=> b!6491312 m!7279810))

(declare-fun m!7279812 () Bool)

(assert (=> b!6491312 m!7279812))

(declare-fun m!7279814 () Bool)

(assert (=> d!2036566 m!7279814))

(declare-fun m!7279816 () Bool)

(assert (=> d!2036566 m!7279816))

(assert (=> b!6491317 m!7279810))

(assert (=> b!6491317 m!7279810))

(assert (=> b!6491317 m!7279812))

(declare-fun m!7279818 () Bool)

(assert (=> b!6491315 m!7279818))

(declare-fun m!7279820 () Bool)

(assert (=> b!6491321 m!7279820))

(assert (=> bm!561980 m!7279814))

(assert (=> b!6491322 m!7279818))

(assert (=> b!6491316 m!7279818))

(assert (=> b!6491316 m!7279818))

(declare-fun m!7279822 () Bool)

(assert (=> b!6491316 m!7279822))

(assert (=> b!6491316 m!7279810))

(assert (=> b!6491316 m!7279822))

(assert (=> b!6491316 m!7279810))

(declare-fun m!7279824 () Bool)

(assert (=> b!6491316 m!7279824))

(assert (=> b!6490646 d!2036566))

(declare-fun d!2036570 () Bool)

(assert (=> d!2036570 (= (isEmpty!37477 (_1!36651 lt!2389655)) ((_ is Nil!65282) (_1!36651 lt!2389655)))))

(assert (=> b!6490647 d!2036570))

(declare-fun bs!1647809 () Bool)

(declare-fun d!2036572 () Bool)

(assert (= bs!1647809 (and d!2036572 d!2036540)))

(declare-fun lambda!359520 () Int)

(assert (=> bs!1647809 (= lambda!359520 lambda!359502)))

(declare-fun bs!1647810 () Bool)

(assert (= bs!1647810 (and d!2036572 b!6490629)))

(assert (=> bs!1647810 (= lambda!359520 lambda!359444)))

(declare-fun bs!1647811 () Bool)

(assert (= bs!1647811 (and d!2036572 d!2036426)))

(assert (=> bs!1647811 (= lambda!359520 lambda!359456)))

(declare-fun bs!1647812 () Bool)

(assert (= bs!1647812 (and d!2036572 d!2036562)))

(assert (=> bs!1647812 (= lambda!359520 lambda!359513)))

(declare-fun bs!1647813 () Bool)

(assert (= bs!1647813 (and d!2036572 d!2036558)))

(assert (=> bs!1647813 (= lambda!359520 lambda!359507)))

(declare-fun b!6491377 () Bool)

(declare-fun e!3933930 () Bool)

(declare-fun lt!2389773 () Regex!16369)

(declare-fun isEmptyExpr!1761 (Regex!16369) Bool)

(assert (=> b!6491377 (= e!3933930 (isEmptyExpr!1761 lt!2389773))))

(declare-fun b!6491378 () Bool)

(declare-fun e!3933928 () Bool)

(assert (=> b!6491378 (= e!3933928 (isEmpty!37476 (t!379035 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6491379 () Bool)

(declare-fun e!3933931 () Bool)

(assert (=> b!6491379 (= e!3933930 e!3933931)))

(declare-fun c!1189610 () Bool)

(assert (=> b!6491379 (= c!1189610 (isEmpty!37476 (tail!12299 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6491380 () Bool)

(declare-fun e!3933929 () Regex!16369)

(assert (=> b!6491380 (= e!3933929 EmptyExpr!16369)))

(declare-fun b!6491381 () Bool)

(declare-fun e!3933932 () Regex!16369)

(assert (=> b!6491381 (= e!3933932 (h!71731 (exprs!6253 (h!71732 zl!343))))))

(declare-fun b!6491382 () Bool)

(declare-fun e!3933933 () Bool)

(assert (=> b!6491382 (= e!3933933 e!3933930)))

(declare-fun c!1189609 () Bool)

(assert (=> b!6491382 (= c!1189609 (isEmpty!37476 (exprs!6253 (h!71732 zl!343))))))

(declare-fun b!6491383 () Bool)

(assert (=> b!6491383 (= e!3933929 (Concat!25214 (h!71731 (exprs!6253 (h!71732 zl!343))) (generalisedConcat!1966 (t!379035 (exprs!6253 (h!71732 zl!343))))))))

(declare-fun b!6491384 () Bool)

(declare-fun isConcat!1284 (Regex!16369) Bool)

(assert (=> b!6491384 (= e!3933931 (isConcat!1284 lt!2389773))))

(declare-fun b!6491385 () Bool)

(assert (=> b!6491385 (= e!3933932 e!3933929)))

(declare-fun c!1189612 () Bool)

(assert (=> b!6491385 (= c!1189612 ((_ is Cons!65283) (exprs!6253 (h!71732 zl!343))))))

(assert (=> d!2036572 e!3933933))

(declare-fun res!2666029 () Bool)

(assert (=> d!2036572 (=> (not res!2666029) (not e!3933933))))

(assert (=> d!2036572 (= res!2666029 (validRegex!8105 lt!2389773))))

(assert (=> d!2036572 (= lt!2389773 e!3933932)))

(declare-fun c!1189611 () Bool)

(assert (=> d!2036572 (= c!1189611 e!3933928)))

(declare-fun res!2666028 () Bool)

(assert (=> d!2036572 (=> (not res!2666028) (not e!3933928))))

(assert (=> d!2036572 (= res!2666028 ((_ is Cons!65283) (exprs!6253 (h!71732 zl!343))))))

(assert (=> d!2036572 (forall!15551 (exprs!6253 (h!71732 zl!343)) lambda!359520)))

(assert (=> d!2036572 (= (generalisedConcat!1966 (exprs!6253 (h!71732 zl!343))) lt!2389773)))

(declare-fun b!6491386 () Bool)

(assert (=> b!6491386 (= e!3933931 (= lt!2389773 (head!13214 (exprs!6253 (h!71732 zl!343)))))))

(assert (= (and d!2036572 res!2666028) b!6491378))

(assert (= (and d!2036572 c!1189611) b!6491381))

(assert (= (and d!2036572 (not c!1189611)) b!6491385))

(assert (= (and b!6491385 c!1189612) b!6491383))

(assert (= (and b!6491385 (not c!1189612)) b!6491380))

(assert (= (and d!2036572 res!2666029) b!6491382))

(assert (= (and b!6491382 c!1189609) b!6491377))

(assert (= (and b!6491382 (not c!1189609)) b!6491379))

(assert (= (and b!6491379 c!1189610) b!6491386))

(assert (= (and b!6491379 (not c!1189610)) b!6491384))

(declare-fun m!7279850 () Bool)

(assert (=> b!6491384 m!7279850))

(declare-fun m!7279854 () Bool)

(assert (=> b!6491382 m!7279854))

(declare-fun m!7279856 () Bool)

(assert (=> b!6491379 m!7279856))

(assert (=> b!6491379 m!7279856))

(declare-fun m!7279858 () Bool)

(assert (=> b!6491379 m!7279858))

(declare-fun m!7279860 () Bool)

(assert (=> b!6491383 m!7279860))

(declare-fun m!7279862 () Bool)

(assert (=> b!6491377 m!7279862))

(assert (=> b!6491378 m!7279230))

(declare-fun m!7279864 () Bool)

(assert (=> b!6491386 m!7279864))

(declare-fun m!7279866 () Bool)

(assert (=> d!2036572 m!7279866))

(declare-fun m!7279868 () Bool)

(assert (=> d!2036572 m!7279868))

(assert (=> b!6490611 d!2036572))

(declare-fun d!2036580 () Bool)

(declare-fun c!1189615 () Bool)

(assert (=> d!2036580 (= c!1189615 (isEmpty!37477 s!2326))))

(declare-fun e!3933937 () Bool)

(assert (=> d!2036580 (= (matchZipper!2381 lt!2389660 s!2326) e!3933937)))

(declare-fun b!6491392 () Bool)

(assert (=> b!6491392 (= e!3933937 (nullableZipper!2125 lt!2389660))))

(declare-fun b!6491393 () Bool)

(assert (=> b!6491393 (= e!3933937 (matchZipper!2381 (derivationStepZipper!2335 lt!2389660 (head!13211 s!2326)) (tail!12296 s!2326)))))

(assert (= (and d!2036580 c!1189615) b!6491392))

(assert (= (and d!2036580 (not c!1189615)) b!6491393))

(assert (=> d!2036580 m!7279298))

(declare-fun m!7279874 () Bool)

(assert (=> b!6491392 m!7279874))

(assert (=> b!6491393 m!7279330))

(assert (=> b!6491393 m!7279330))

(declare-fun m!7279876 () Bool)

(assert (=> b!6491393 m!7279876))

(assert (=> b!6491393 m!7279326))

(assert (=> b!6491393 m!7279876))

(assert (=> b!6491393 m!7279326))

(declare-fun m!7279878 () Bool)

(assert (=> b!6491393 m!7279878))

(assert (=> b!6490632 d!2036580))

(declare-fun d!2036584 () Bool)

(declare-fun c!1189616 () Bool)

(assert (=> d!2036584 (= c!1189616 (isEmpty!37477 (t!379034 s!2326)))))

(declare-fun e!3933938 () Bool)

(assert (=> d!2036584 (= (matchZipper!2381 lt!2389614 (t!379034 s!2326)) e!3933938)))

(declare-fun b!6491394 () Bool)

(assert (=> b!6491394 (= e!3933938 (nullableZipper!2125 lt!2389614))))

(declare-fun b!6491395 () Bool)

(assert (=> b!6491395 (= e!3933938 (matchZipper!2381 (derivationStepZipper!2335 lt!2389614 (head!13211 (t!379034 s!2326))) (tail!12296 (t!379034 s!2326))))))

(assert (= (and d!2036584 c!1189616) b!6491394))

(assert (= (and d!2036584 (not c!1189616)) b!6491395))

(declare-fun m!7279880 () Bool)

(assert (=> d!2036584 m!7279880))

(declare-fun m!7279882 () Bool)

(assert (=> b!6491394 m!7279882))

(declare-fun m!7279884 () Bool)

(assert (=> b!6491395 m!7279884))

(assert (=> b!6491395 m!7279884))

(declare-fun m!7279886 () Bool)

(assert (=> b!6491395 m!7279886))

(declare-fun m!7279888 () Bool)

(assert (=> b!6491395 m!7279888))

(assert (=> b!6491395 m!7279886))

(assert (=> b!6491395 m!7279888))

(declare-fun m!7279890 () Bool)

(assert (=> b!6491395 m!7279890))

(assert (=> b!6490632 d!2036584))

(declare-fun d!2036586 () Bool)

(declare-fun lt!2389775 () Regex!16369)

(assert (=> d!2036586 (validRegex!8105 lt!2389775)))

(assert (=> d!2036586 (= lt!2389775 (generalisedUnion!2213 (unfocusZipperList!1790 zl!343)))))

(assert (=> d!2036586 (= (unfocusZipper!2111 zl!343) lt!2389775)))

(declare-fun bs!1647816 () Bool)

(assert (= bs!1647816 d!2036586))

(declare-fun m!7279892 () Bool)

(assert (=> bs!1647816 m!7279892))

(assert (=> bs!1647816 m!7279262))

(assert (=> bs!1647816 m!7279262))

(assert (=> bs!1647816 m!7279264))

(assert (=> b!6490612 d!2036586))

(declare-fun b!6491396 () Bool)

(declare-fun e!3933940 () Option!16260)

(declare-fun e!3933942 () Option!16260)

(assert (=> b!6491396 (= e!3933940 e!3933942)))

(declare-fun c!1189619 () Bool)

(assert (=> b!6491396 (= c!1189619 ((_ is Nil!65282) s!2326))))

(declare-fun b!6491397 () Bool)

(declare-fun e!3933941 () Bool)

(assert (=> b!6491397 (= e!3933941 (matchR!8552 (regTwo!33250 r!7292) s!2326))))

(declare-fun b!6491398 () Bool)

(declare-fun e!3933939 () Bool)

(declare-fun lt!2389777 () Option!16260)

(assert (=> b!6491398 (= e!3933939 (not (isDefined!12963 lt!2389777)))))

(declare-fun b!6491399 () Bool)

(declare-fun lt!2389778 () Unit!158807)

(declare-fun lt!2389776 () Unit!158807)

(assert (=> b!6491399 (= lt!2389778 lt!2389776)))

(assert (=> b!6491399 (= (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (t!379034 s!2326)) s!2326)))

(assert (=> b!6491399 (= lt!2389776 (lemmaMoveElementToOtherListKeepsConcatEq!2523 Nil!65282 (h!71730 s!2326) (t!379034 s!2326) s!2326))))

(assert (=> b!6491399 (= e!3933942 (findConcatSeparation!2674 (regOne!33250 r!7292) (regTwo!33250 r!7292) (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (t!379034 s!2326) s!2326))))

(declare-fun b!6491400 () Bool)

(declare-fun res!2666035 () Bool)

(declare-fun e!3933943 () Bool)

(assert (=> b!6491400 (=> (not res!2666035) (not e!3933943))))

(assert (=> b!6491400 (= res!2666035 (matchR!8552 (regOne!33250 r!7292) (_1!36651 (get!22637 lt!2389777))))))

(declare-fun b!6491401 () Bool)

(assert (=> b!6491401 (= e!3933940 (Some!16259 (tuple2!66697 Nil!65282 s!2326)))))

(declare-fun d!2036588 () Bool)

(assert (=> d!2036588 e!3933939))

(declare-fun res!2666033 () Bool)

(assert (=> d!2036588 (=> res!2666033 e!3933939)))

(assert (=> d!2036588 (= res!2666033 e!3933943)))

(declare-fun res!2666032 () Bool)

(assert (=> d!2036588 (=> (not res!2666032) (not e!3933943))))

(assert (=> d!2036588 (= res!2666032 (isDefined!12963 lt!2389777))))

(assert (=> d!2036588 (= lt!2389777 e!3933940)))

(declare-fun c!1189620 () Bool)

(assert (=> d!2036588 (= c!1189620 e!3933941)))

(declare-fun res!2666031 () Bool)

(assert (=> d!2036588 (=> (not res!2666031) (not e!3933941))))

(assert (=> d!2036588 (= res!2666031 (matchR!8552 (regOne!33250 r!7292) Nil!65282))))

(assert (=> d!2036588 (validRegex!8105 (regOne!33250 r!7292))))

(assert (=> d!2036588 (= (findConcatSeparation!2674 (regOne!33250 r!7292) (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326) lt!2389777)))

(declare-fun b!6491402 () Bool)

(assert (=> b!6491402 (= e!3933943 (= (++!14448 (_1!36651 (get!22637 lt!2389777)) (_2!36651 (get!22637 lt!2389777))) s!2326))))

(declare-fun b!6491403 () Bool)

(declare-fun res!2666034 () Bool)

(assert (=> b!6491403 (=> (not res!2666034) (not e!3933943))))

(assert (=> b!6491403 (= res!2666034 (matchR!8552 (regTwo!33250 r!7292) (_2!36651 (get!22637 lt!2389777))))))

(declare-fun b!6491404 () Bool)

(assert (=> b!6491404 (= e!3933942 None!16259)))

(assert (= (and d!2036588 res!2666031) b!6491397))

(assert (= (and d!2036588 c!1189620) b!6491401))

(assert (= (and d!2036588 (not c!1189620)) b!6491396))

(assert (= (and b!6491396 c!1189619) b!6491404))

(assert (= (and b!6491396 (not c!1189619)) b!6491399))

(assert (= (and d!2036588 res!2666032) b!6491400))

(assert (= (and b!6491400 res!2666035) b!6491403))

(assert (= (and b!6491403 res!2666034) b!6491402))

(assert (= (and d!2036588 (not res!2666033)) b!6491398))

(declare-fun m!7279894 () Bool)

(assert (=> d!2036588 m!7279894))

(declare-fun m!7279898 () Bool)

(assert (=> d!2036588 m!7279898))

(declare-fun m!7279900 () Bool)

(assert (=> d!2036588 m!7279900))

(declare-fun m!7279902 () Bool)

(assert (=> b!6491400 m!7279902))

(declare-fun m!7279904 () Bool)

(assert (=> b!6491400 m!7279904))

(assert (=> b!6491402 m!7279902))

(declare-fun m!7279906 () Bool)

(assert (=> b!6491402 m!7279906))

(assert (=> b!6491399 m!7279624))

(assert (=> b!6491399 m!7279624))

(assert (=> b!6491399 m!7279626))

(assert (=> b!6491399 m!7279628))

(assert (=> b!6491399 m!7279624))

(declare-fun m!7279910 () Bool)

(assert (=> b!6491399 m!7279910))

(assert (=> b!6491397 m!7279632))

(assert (=> b!6491398 m!7279894))

(assert (=> b!6491403 m!7279902))

(declare-fun m!7279916 () Bool)

(assert (=> b!6491403 m!7279916))

(assert (=> b!6490649 d!2036588))

(declare-fun d!2036594 () Bool)

(assert (=> d!2036594 (= (Exists!3439 lambda!359437) (choose!48184 lambda!359437))))

(declare-fun bs!1647819 () Bool)

(assert (= bs!1647819 d!2036594))

(declare-fun m!7279918 () Bool)

(assert (=> bs!1647819 m!7279918))

(assert (=> b!6490649 d!2036594))

(declare-fun d!2036596 () Bool)

(assert (=> d!2036596 (= (Exists!3439 lambda!359436) (choose!48184 lambda!359436))))

(declare-fun bs!1647820 () Bool)

(assert (= bs!1647820 d!2036596))

(declare-fun m!7279920 () Bool)

(assert (=> bs!1647820 m!7279920))

(assert (=> b!6490649 d!2036596))

(declare-fun bs!1647821 () Bool)

(declare-fun d!2036598 () Bool)

(assert (= bs!1647821 (and d!2036598 b!6490643)))

(declare-fun lambda!359524 () Int)

(assert (=> bs!1647821 (not (= lambda!359524 lambda!359442))))

(assert (=> bs!1647821 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359524 lambda!359441))))

(declare-fun bs!1647822 () Bool)

(assert (= bs!1647822 (and d!2036598 d!2036464)))

(assert (=> bs!1647822 (not (= lambda!359524 lambda!359480))))

(assert (=> bs!1647821 (not (= lambda!359524 lambda!359443))))

(declare-fun bs!1647823 () Bool)

(assert (= bs!1647823 (and d!2036598 d!2036472)))

(assert (=> bs!1647823 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359524 lambda!359485))))

(declare-fun bs!1647824 () Bool)

(assert (= bs!1647824 (and d!2036598 d!2036458)))

(assert (=> bs!1647824 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359524 lambda!359469))))

(declare-fun bs!1647825 () Bool)

(assert (= bs!1647825 (and d!2036598 b!6490750)))

(assert (=> bs!1647825 (not (= lambda!359524 lambda!359453))))

(declare-fun bs!1647826 () Bool)

(assert (= bs!1647826 (and d!2036598 b!6490649)))

(assert (=> bs!1647826 (= lambda!359524 lambda!359436)))

(declare-fun bs!1647827 () Bool)

(assert (= bs!1647827 (and d!2036598 b!6490618)))

(assert (=> bs!1647827 (not (= lambda!359524 lambda!359440))))

(declare-fun bs!1647828 () Bool)

(assert (= bs!1647828 (and d!2036598 b!6490748)))

(assert (=> bs!1647828 (not (= lambda!359524 lambda!359452))))

(declare-fun bs!1647829 () Bool)

(assert (= bs!1647829 (and d!2036598 d!2036524)))

(assert (=> bs!1647829 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359524 lambda!359499))))

(assert (=> bs!1647824 (not (= lambda!359524 lambda!359470))))

(assert (=> bs!1647827 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359524 lambda!359439))))

(declare-fun bs!1647830 () Bool)

(assert (= bs!1647830 (and d!2036598 d!2036516)))

(assert (=> bs!1647830 (not (= lambda!359524 lambda!359498))))

(declare-fun bs!1647831 () Bool)

(assert (= bs!1647831 (and d!2036598 b!6491179)))

(assert (=> bs!1647831 (not (= lambda!359524 lambda!359500))))

(assert (=> bs!1647830 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359524 lambda!359497))))

(assert (=> bs!1647826 (not (= lambda!359524 lambda!359437))))

(declare-fun bs!1647835 () Bool)

(assert (= bs!1647835 (and d!2036598 b!6490932)))

(assert (=> bs!1647835 (not (= lambda!359524 lambda!359462))))

(assert (=> bs!1647822 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359524 lambda!359477))))

(declare-fun bs!1647837 () Bool)

(assert (= bs!1647837 (and d!2036598 b!6490930)))

(assert (=> bs!1647837 (not (= lambda!359524 lambda!359459))))

(declare-fun bs!1647839 () Bool)

(assert (= bs!1647839 (and d!2036598 b!6491181)))

(assert (=> bs!1647839 (not (= lambda!359524 lambda!359501))))

(assert (=> d!2036598 true))

(assert (=> d!2036598 true))

(assert (=> d!2036598 true))

(assert (=> d!2036598 (= (isDefined!12963 (findConcatSeparation!2674 (regOne!33250 r!7292) (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326)) (Exists!3439 lambda!359524))))

(declare-fun lt!2389780 () Unit!158807)

(assert (=> d!2036598 (= lt!2389780 (choose!48182 (regOne!33250 r!7292) (regTwo!33250 r!7292) s!2326))))

(assert (=> d!2036598 (validRegex!8105 (regOne!33250 r!7292))))

(assert (=> d!2036598 (= (lemmaFindConcatSeparationEquivalentToExists!2438 (regOne!33250 r!7292) (regTwo!33250 r!7292) s!2326) lt!2389780)))

(declare-fun bs!1647840 () Bool)

(assert (= bs!1647840 d!2036598))

(declare-fun m!7279946 () Bool)

(assert (=> bs!1647840 m!7279946))

(declare-fun m!7279948 () Bool)

(assert (=> bs!1647840 m!7279948))

(assert (=> bs!1647840 m!7279134))

(assert (=> bs!1647840 m!7279900))

(assert (=> bs!1647840 m!7279134))

(assert (=> bs!1647840 m!7279136))

(assert (=> b!6490649 d!2036598))

(declare-fun bs!1647841 () Bool)

(declare-fun d!2036606 () Bool)

(assert (= bs!1647841 (and d!2036606 b!6490643)))

(declare-fun lambda!359528 () Int)

(assert (=> bs!1647841 (not (= lambda!359528 lambda!359442))))

(assert (=> bs!1647841 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359528 lambda!359441))))

(declare-fun bs!1647842 () Bool)

(assert (= bs!1647842 (and d!2036606 d!2036598)))

(assert (=> bs!1647842 (= lambda!359528 lambda!359524)))

(declare-fun bs!1647843 () Bool)

(assert (= bs!1647843 (and d!2036606 d!2036464)))

(assert (=> bs!1647843 (not (= lambda!359528 lambda!359480))))

(assert (=> bs!1647841 (not (= lambda!359528 lambda!359443))))

(declare-fun bs!1647844 () Bool)

(assert (= bs!1647844 (and d!2036606 d!2036472)))

(assert (=> bs!1647844 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359528 lambda!359485))))

(declare-fun bs!1647845 () Bool)

(assert (= bs!1647845 (and d!2036606 d!2036458)))

(assert (=> bs!1647845 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359528 lambda!359469))))

(declare-fun bs!1647846 () Bool)

(assert (= bs!1647846 (and d!2036606 b!6490750)))

(assert (=> bs!1647846 (not (= lambda!359528 lambda!359453))))

(declare-fun bs!1647847 () Bool)

(assert (= bs!1647847 (and d!2036606 b!6490649)))

(assert (=> bs!1647847 (= lambda!359528 lambda!359436)))

(declare-fun bs!1647848 () Bool)

(assert (= bs!1647848 (and d!2036606 b!6490618)))

(assert (=> bs!1647848 (not (= lambda!359528 lambda!359440))))

(declare-fun bs!1647849 () Bool)

(assert (= bs!1647849 (and d!2036606 b!6490748)))

(assert (=> bs!1647849 (not (= lambda!359528 lambda!359452))))

(declare-fun bs!1647850 () Bool)

(assert (= bs!1647850 (and d!2036606 d!2036524)))

(assert (=> bs!1647850 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359528 lambda!359499))))

(assert (=> bs!1647845 (not (= lambda!359528 lambda!359470))))

(assert (=> bs!1647848 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359528 lambda!359439))))

(declare-fun bs!1647851 () Bool)

(assert (= bs!1647851 (and d!2036606 d!2036516)))

(assert (=> bs!1647851 (not (= lambda!359528 lambda!359498))))

(declare-fun bs!1647852 () Bool)

(assert (= bs!1647852 (and d!2036606 b!6491179)))

(assert (=> bs!1647852 (not (= lambda!359528 lambda!359500))))

(assert (=> bs!1647851 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359528 lambda!359497))))

(assert (=> bs!1647847 (not (= lambda!359528 lambda!359437))))

(declare-fun bs!1647853 () Bool)

(assert (= bs!1647853 (and d!2036606 b!6490932)))

(assert (=> bs!1647853 (not (= lambda!359528 lambda!359462))))

(assert (=> bs!1647843 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359528 lambda!359477))))

(declare-fun bs!1647854 () Bool)

(assert (= bs!1647854 (and d!2036606 b!6490930)))

(assert (=> bs!1647854 (not (= lambda!359528 lambda!359459))))

(declare-fun bs!1647855 () Bool)

(assert (= bs!1647855 (and d!2036606 b!6491181)))

(assert (=> bs!1647855 (not (= lambda!359528 lambda!359501))))

(assert (=> d!2036606 true))

(assert (=> d!2036606 true))

(assert (=> d!2036606 true))

(declare-fun lambda!359529 () Int)

(assert (=> bs!1647841 (not (= lambda!359529 lambda!359442))))

(assert (=> bs!1647841 (not (= lambda!359529 lambda!359441))))

(assert (=> bs!1647842 (not (= lambda!359529 lambda!359524))))

(assert (=> bs!1647843 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359529 lambda!359480))))

(assert (=> bs!1647841 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359529 lambda!359443))))

(assert (=> bs!1647844 (not (= lambda!359529 lambda!359485))))

(assert (=> bs!1647845 (not (= lambda!359529 lambda!359469))))

(assert (=> bs!1647846 (= lambda!359529 lambda!359453)))

(assert (=> bs!1647847 (not (= lambda!359529 lambda!359436))))

(assert (=> bs!1647848 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359529 lambda!359440))))

(assert (=> bs!1647849 (not (= lambda!359529 lambda!359452))))

(assert (=> bs!1647850 (not (= lambda!359529 lambda!359499))))

(assert (=> bs!1647845 (not (= lambda!359529 lambda!359470))))

(assert (=> bs!1647848 (not (= lambda!359529 lambda!359439))))

(declare-fun bs!1647857 () Bool)

(assert (= bs!1647857 d!2036606))

(assert (=> bs!1647857 (not (= lambda!359529 lambda!359528))))

(assert (=> bs!1647851 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359529 lambda!359498))))

(assert (=> bs!1647852 (not (= lambda!359529 lambda!359500))))

(assert (=> bs!1647851 (not (= lambda!359529 lambda!359497))))

(assert (=> bs!1647847 (= lambda!359529 lambda!359437)))

(assert (=> bs!1647853 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (regOne!33250 lt!2389631)) (= (regTwo!33250 r!7292) (regTwo!33250 lt!2389631))) (= lambda!359529 lambda!359462))))

(assert (=> bs!1647843 (not (= lambda!359529 lambda!359477))))

(assert (=> bs!1647854 (not (= lambda!359529 lambda!359459))))

(assert (=> bs!1647855 (= (and (= (regOne!33250 r!7292) (regOne!33250 lt!2389659)) (= (regTwo!33250 r!7292) (regTwo!33250 lt!2389659))) (= lambda!359529 lambda!359501))))

(assert (=> d!2036606 true))

(assert (=> d!2036606 true))

(assert (=> d!2036606 true))

(assert (=> d!2036606 (= (Exists!3439 lambda!359528) (Exists!3439 lambda!359529))))

(declare-fun lt!2389781 () Unit!158807)

(assert (=> d!2036606 (= lt!2389781 (choose!48181 (regOne!33250 r!7292) (regTwo!33250 r!7292) s!2326))))

(assert (=> d!2036606 (validRegex!8105 (regOne!33250 r!7292))))

(assert (=> d!2036606 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1976 (regOne!33250 r!7292) (regTwo!33250 r!7292) s!2326) lt!2389781)))

(declare-fun m!7279966 () Bool)

(assert (=> bs!1647857 m!7279966))

(declare-fun m!7279968 () Bool)

(assert (=> bs!1647857 m!7279968))

(declare-fun m!7279970 () Bool)

(assert (=> bs!1647857 m!7279970))

(assert (=> bs!1647857 m!7279900))

(assert (=> b!6490649 d!2036606))

(declare-fun d!2036612 () Bool)

(assert (=> d!2036612 (= (isDefined!12963 (findConcatSeparation!2674 (regOne!33250 r!7292) (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326)) (not (isEmpty!37479 (findConcatSeparation!2674 (regOne!33250 r!7292) (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326))))))

(declare-fun bs!1647858 () Bool)

(assert (= bs!1647858 d!2036612))

(assert (=> bs!1647858 m!7279134))

(declare-fun m!7279972 () Bool)

(assert (=> bs!1647858 m!7279972))

(assert (=> b!6490649 d!2036612))

(declare-fun d!2036614 () Bool)

(assert (=> d!2036614 (forall!15551 (++!14449 lt!2389623 lt!2389636) lambda!359444)))

(declare-fun lt!2389789 () Unit!158807)

(declare-fun choose!48192 (List!65407 List!65407 Int) Unit!158807)

(assert (=> d!2036614 (= lt!2389789 (choose!48192 lt!2389623 lt!2389636 lambda!359444))))

(assert (=> d!2036614 (forall!15551 lt!2389623 lambda!359444)))

(assert (=> d!2036614 (= (lemmaConcatPreservesForall!348 lt!2389623 lt!2389636 lambda!359444) lt!2389789)))

(declare-fun bs!1647859 () Bool)

(assert (= bs!1647859 d!2036614))

(assert (=> bs!1647859 m!7279162))

(assert (=> bs!1647859 m!7279162))

(declare-fun m!7279974 () Bool)

(assert (=> bs!1647859 m!7279974))

(declare-fun m!7279976 () Bool)

(assert (=> bs!1647859 m!7279976))

(declare-fun m!7279978 () Bool)

(assert (=> bs!1647859 m!7279978))

(assert (=> b!6490629 d!2036614))

(declare-fun d!2036616 () Bool)

(assert (=> d!2036616 (matchR!8552 (Star!16369 (reg!16698 (regOne!33250 r!7292))) (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638)))))

(declare-fun lt!2389795 () Unit!158807)

(declare-fun choose!48193 (Regex!16369 List!65406 List!65406) Unit!158807)

(assert (=> d!2036616 (= lt!2389795 (choose!48193 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638) (_2!36651 lt!2389638)))))

(assert (=> d!2036616 (validRegex!8105 (Star!16369 (reg!16698 (regOne!33250 r!7292))))))

(assert (=> d!2036616 (= (lemmaStarApp!146 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638) (_2!36651 lt!2389638)) lt!2389795)))

(declare-fun bs!1647861 () Bool)

(assert (= bs!1647861 d!2036616))

(assert (=> bs!1647861 m!7279200))

(assert (=> bs!1647861 m!7279200))

(declare-fun m!7280004 () Bool)

(assert (=> bs!1647861 m!7280004))

(declare-fun m!7280006 () Bool)

(assert (=> bs!1647861 m!7280006))

(declare-fun m!7280008 () Bool)

(assert (=> bs!1647861 m!7280008))

(assert (=> b!6490629 d!2036616))

(declare-fun b!6491463 () Bool)

(declare-fun e!3933973 () List!65407)

(assert (=> b!6491463 (= e!3933973 lt!2389636)))

(declare-fun lt!2389803 () List!65407)

(declare-fun b!6491466 () Bool)

(declare-fun e!3933974 () Bool)

(assert (=> b!6491466 (= e!3933974 (or (not (= lt!2389636 Nil!65283)) (= lt!2389803 lt!2389623)))))

(declare-fun b!6491464 () Bool)

(assert (=> b!6491464 (= e!3933973 (Cons!65283 (h!71731 lt!2389623) (++!14449 (t!379035 lt!2389623) lt!2389636)))))

(declare-fun d!2036624 () Bool)

(assert (=> d!2036624 e!3933974))

(declare-fun res!2666064 () Bool)

(assert (=> d!2036624 (=> (not res!2666064) (not e!3933974))))

(declare-fun content!12445 (List!65407) (InoxSet Regex!16369))

(assert (=> d!2036624 (= res!2666064 (= (content!12445 lt!2389803) ((_ map or) (content!12445 lt!2389623) (content!12445 lt!2389636))))))

(assert (=> d!2036624 (= lt!2389803 e!3933973)))

(declare-fun c!1189635 () Bool)

(assert (=> d!2036624 (= c!1189635 ((_ is Nil!65283) lt!2389623))))

(assert (=> d!2036624 (= (++!14449 lt!2389623 lt!2389636) lt!2389803)))

(declare-fun b!6491465 () Bool)

(declare-fun res!2666065 () Bool)

(assert (=> b!6491465 (=> (not res!2666065) (not e!3933974))))

(declare-fun size!40430 (List!65407) Int)

(assert (=> b!6491465 (= res!2666065 (= (size!40430 lt!2389803) (+ (size!40430 lt!2389623) (size!40430 lt!2389636))))))

(assert (= (and d!2036624 c!1189635) b!6491463))

(assert (= (and d!2036624 (not c!1189635)) b!6491464))

(assert (= (and d!2036624 res!2666064) b!6491465))

(assert (= (and b!6491465 res!2666065) b!6491466))

(declare-fun m!7280016 () Bool)

(assert (=> b!6491464 m!7280016))

(declare-fun m!7280018 () Bool)

(assert (=> d!2036624 m!7280018))

(declare-fun m!7280020 () Bool)

(assert (=> d!2036624 m!7280020))

(declare-fun m!7280022 () Bool)

(assert (=> d!2036624 m!7280022))

(declare-fun m!7280024 () Bool)

(assert (=> b!6491465 m!7280024))

(declare-fun m!7280026 () Bool)

(assert (=> b!6491465 m!7280026))

(declare-fun m!7280028 () Bool)

(assert (=> b!6491465 m!7280028))

(assert (=> b!6490629 d!2036624))

(declare-fun d!2036628 () Bool)

(declare-fun c!1189636 () Bool)

(assert (=> d!2036628 (= c!1189636 (isEmpty!37477 lt!2389663))))

(declare-fun e!3933976 () Bool)

(assert (=> d!2036628 (= (matchZipper!2381 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 lt!2389623 lt!2389636)) true) lt!2389663) e!3933976)))

(declare-fun b!6491468 () Bool)

(assert (=> b!6491468 (= e!3933976 (nullableZipper!2125 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 lt!2389623 lt!2389636)) true)))))

(declare-fun b!6491469 () Bool)

(assert (=> b!6491469 (= e!3933976 (matchZipper!2381 (derivationStepZipper!2335 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 lt!2389623 lt!2389636)) true) (head!13211 lt!2389663)) (tail!12296 lt!2389663)))))

(assert (= (and d!2036628 c!1189636) b!6491468))

(assert (= (and d!2036628 (not c!1189636)) b!6491469))

(declare-fun m!7280034 () Bool)

(assert (=> d!2036628 m!7280034))

(assert (=> b!6491468 m!7279154))

(declare-fun m!7280036 () Bool)

(assert (=> b!6491468 m!7280036))

(declare-fun m!7280038 () Bool)

(assert (=> b!6491469 m!7280038))

(assert (=> b!6491469 m!7279154))

(assert (=> b!6491469 m!7280038))

(declare-fun m!7280040 () Bool)

(assert (=> b!6491469 m!7280040))

(declare-fun m!7280042 () Bool)

(assert (=> b!6491469 m!7280042))

(assert (=> b!6491469 m!7280040))

(assert (=> b!6491469 m!7280042))

(declare-fun m!7280044 () Bool)

(assert (=> b!6491469 m!7280044))

(assert (=> b!6490629 d!2036628))

(declare-fun bs!1647864 () Bool)

(declare-fun d!2036632 () Bool)

(assert (= bs!1647864 (and d!2036632 d!2036540)))

(declare-fun lambda!359532 () Int)

(assert (=> bs!1647864 (= lambda!359532 lambda!359502)))

(declare-fun bs!1647865 () Bool)

(assert (= bs!1647865 (and d!2036632 b!6490629)))

(assert (=> bs!1647865 (= lambda!359532 lambda!359444)))

(declare-fun bs!1647866 () Bool)

(assert (= bs!1647866 (and d!2036632 d!2036426)))

(assert (=> bs!1647866 (= lambda!359532 lambda!359456)))

(declare-fun bs!1647867 () Bool)

(assert (= bs!1647867 (and d!2036632 d!2036572)))

(assert (=> bs!1647867 (= lambda!359532 lambda!359520)))

(declare-fun bs!1647868 () Bool)

(assert (= bs!1647868 (and d!2036632 d!2036562)))

(assert (=> bs!1647868 (= lambda!359532 lambda!359513)))

(declare-fun bs!1647869 () Bool)

(assert (= bs!1647869 (and d!2036632 d!2036558)))

(assert (=> bs!1647869 (= lambda!359532 lambda!359507)))

(assert (=> d!2036632 (matchZipper!2381 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 (exprs!6253 lt!2389610) (exprs!6253 lt!2389656))) true) (++!14448 (_1!36651 lt!2389638) lt!2389641))))

(declare-fun lt!2389815 () Unit!158807)

(assert (=> d!2036632 (= lt!2389815 (lemmaConcatPreservesForall!348 (exprs!6253 lt!2389610) (exprs!6253 lt!2389656) lambda!359532))))

(declare-fun lt!2389814 () Unit!158807)

(declare-fun choose!48194 (Context!11506 Context!11506 List!65406 List!65406) Unit!158807)

(assert (=> d!2036632 (= lt!2389814 (choose!48194 lt!2389610 lt!2389656 (_1!36651 lt!2389638) lt!2389641))))

(assert (=> d!2036632 (matchZipper!2381 (store ((as const (Array Context!11506 Bool)) false) lt!2389610 true) (_1!36651 lt!2389638))))

(assert (=> d!2036632 (= (lemmaConcatenateContextMatchesConcatOfStrings!170 lt!2389610 lt!2389656 (_1!36651 lt!2389638) lt!2389641) lt!2389814)))

(declare-fun bs!1647870 () Bool)

(assert (= bs!1647870 d!2036632))

(assert (=> bs!1647870 m!7279100))

(declare-fun m!7280076 () Bool)

(assert (=> bs!1647870 m!7280076))

(declare-fun m!7280078 () Bool)

(assert (=> bs!1647870 m!7280078))

(assert (=> bs!1647870 m!7279100))

(assert (=> bs!1647870 m!7280078))

(assert (=> bs!1647870 m!7279218))

(declare-fun m!7280080 () Bool)

(assert (=> bs!1647870 m!7280080))

(declare-fun m!7280082 () Bool)

(assert (=> bs!1647870 m!7280082))

(declare-fun m!7280084 () Bool)

(assert (=> bs!1647870 m!7280084))

(assert (=> bs!1647870 m!7279218))

(declare-fun m!7280086 () Bool)

(assert (=> bs!1647870 m!7280086))

(assert (=> b!6490629 d!2036632))

(declare-fun d!2036642 () Bool)

(declare-fun c!1189644 () Bool)

(assert (=> d!2036642 (= c!1189644 (isEmpty!37477 lt!2389663))))

(declare-fun e!3933992 () Bool)

(assert (=> d!2036642 (= (matchZipper!2381 lt!2389660 lt!2389663) e!3933992)))

(declare-fun b!6491500 () Bool)

(assert (=> b!6491500 (= e!3933992 (nullableZipper!2125 lt!2389660))))

(declare-fun b!6491501 () Bool)

(assert (=> b!6491501 (= e!3933992 (matchZipper!2381 (derivationStepZipper!2335 lt!2389660 (head!13211 lt!2389663)) (tail!12296 lt!2389663)))))

(assert (= (and d!2036642 c!1189644) b!6491500))

(assert (= (and d!2036642 (not c!1189644)) b!6491501))

(assert (=> d!2036642 m!7280034))

(assert (=> b!6491500 m!7279874))

(assert (=> b!6491501 m!7280038))

(assert (=> b!6491501 m!7280038))

(declare-fun m!7280088 () Bool)

(assert (=> b!6491501 m!7280088))

(assert (=> b!6491501 m!7280042))

(assert (=> b!6491501 m!7280088))

(assert (=> b!6491501 m!7280042))

(declare-fun m!7280090 () Bool)

(assert (=> b!6491501 m!7280090))

(assert (=> b!6490629 d!2036642))

(declare-fun b!6491502 () Bool)

(declare-fun res!2666088 () Bool)

(declare-fun e!3933993 () Bool)

(assert (=> b!6491502 (=> res!2666088 e!3933993)))

(declare-fun e!3933997 () Bool)

(assert (=> b!6491502 (= res!2666088 e!3933997)))

(declare-fun res!2666085 () Bool)

(assert (=> b!6491502 (=> (not res!2666085) (not e!3933997))))

(declare-fun lt!2389816 () Bool)

(assert (=> b!6491502 (= res!2666085 lt!2389816)))

(declare-fun b!6491503 () Bool)

(declare-fun res!2666086 () Bool)

(assert (=> b!6491503 (=> (not res!2666086) (not e!3933997))))

(assert (=> b!6491503 (= res!2666086 (isEmpty!37477 (tail!12296 lt!2389663)))))

(declare-fun b!6491505 () Bool)

(declare-fun e!3933995 () Bool)

(assert (=> b!6491505 (= e!3933993 e!3933995)))

(declare-fun res!2666089 () Bool)

(assert (=> b!6491505 (=> (not res!2666089) (not e!3933995))))

(assert (=> b!6491505 (= res!2666089 (not lt!2389816))))

(declare-fun bm!561986 () Bool)

(declare-fun call!561991 () Bool)

(assert (=> bm!561986 (= call!561991 (isEmpty!37477 lt!2389663))))

(declare-fun b!6491506 () Bool)

(declare-fun e!3933996 () Bool)

(assert (=> b!6491506 (= e!3933996 (not (= (head!13211 lt!2389663) (c!1189393 lt!2389659))))))

(declare-fun b!6491507 () Bool)

(declare-fun e!3933999 () Bool)

(assert (=> b!6491507 (= e!3933999 (matchR!8552 (derivativeStep!5064 lt!2389659 (head!13211 lt!2389663)) (tail!12296 lt!2389663)))))

(declare-fun b!6491508 () Bool)

(declare-fun res!2666090 () Bool)

(assert (=> b!6491508 (=> res!2666090 e!3933996)))

(assert (=> b!6491508 (= res!2666090 (not (isEmpty!37477 (tail!12296 lt!2389663))))))

(declare-fun b!6491509 () Bool)

(declare-fun res!2666087 () Bool)

(assert (=> b!6491509 (=> res!2666087 e!3933993)))

(assert (=> b!6491509 (= res!2666087 (not ((_ is ElementMatch!16369) lt!2389659)))))

(declare-fun e!3933994 () Bool)

(assert (=> b!6491509 (= e!3933994 e!3933993)))

(declare-fun b!6491510 () Bool)

(declare-fun e!3933998 () Bool)

(assert (=> b!6491510 (= e!3933998 (= lt!2389816 call!561991))))

(declare-fun b!6491511 () Bool)

(assert (=> b!6491511 (= e!3933995 e!3933996)))

(declare-fun res!2666084 () Bool)

(assert (=> b!6491511 (=> res!2666084 e!3933996)))

(assert (=> b!6491511 (= res!2666084 call!561991)))

(declare-fun b!6491512 () Bool)

(assert (=> b!6491512 (= e!3933999 (nullable!6362 lt!2389659))))

(declare-fun b!6491513 () Bool)

(assert (=> b!6491513 (= e!3933997 (= (head!13211 lt!2389663) (c!1189393 lt!2389659)))))

(declare-fun d!2036644 () Bool)

(assert (=> d!2036644 e!3933998))

(declare-fun c!1189647 () Bool)

(assert (=> d!2036644 (= c!1189647 ((_ is EmptyExpr!16369) lt!2389659))))

(assert (=> d!2036644 (= lt!2389816 e!3933999)))

(declare-fun c!1189646 () Bool)

(assert (=> d!2036644 (= c!1189646 (isEmpty!37477 lt!2389663))))

(assert (=> d!2036644 (validRegex!8105 lt!2389659)))

(assert (=> d!2036644 (= (matchR!8552 lt!2389659 lt!2389663) lt!2389816)))

(declare-fun b!6491504 () Bool)

(assert (=> b!6491504 (= e!3933998 e!3933994)))

(declare-fun c!1189645 () Bool)

(assert (=> b!6491504 (= c!1189645 ((_ is EmptyLang!16369) lt!2389659))))

(declare-fun b!6491514 () Bool)

(assert (=> b!6491514 (= e!3933994 (not lt!2389816))))

(declare-fun b!6491515 () Bool)

(declare-fun res!2666083 () Bool)

(assert (=> b!6491515 (=> (not res!2666083) (not e!3933997))))

(assert (=> b!6491515 (= res!2666083 (not call!561991))))

(assert (= (and d!2036644 c!1189646) b!6491512))

(assert (= (and d!2036644 (not c!1189646)) b!6491507))

(assert (= (and d!2036644 c!1189647) b!6491510))

(assert (= (and d!2036644 (not c!1189647)) b!6491504))

(assert (= (and b!6491504 c!1189645) b!6491514))

(assert (= (and b!6491504 (not c!1189645)) b!6491509))

(assert (= (and b!6491509 (not res!2666087)) b!6491502))

(assert (= (and b!6491502 res!2666085) b!6491515))

(assert (= (and b!6491515 res!2666083) b!6491503))

(assert (= (and b!6491503 res!2666086) b!6491513))

(assert (= (and b!6491502 (not res!2666088)) b!6491505))

(assert (= (and b!6491505 res!2666089) b!6491511))

(assert (= (and b!6491511 (not res!2666084)) b!6491508))

(assert (= (and b!6491508 (not res!2666090)) b!6491506))

(assert (= (or b!6491510 b!6491511 b!6491515) bm!561986))

(assert (=> b!6491503 m!7280042))

(assert (=> b!6491503 m!7280042))

(declare-fun m!7280092 () Bool)

(assert (=> b!6491503 m!7280092))

(assert (=> d!2036644 m!7280034))

(assert (=> d!2036644 m!7279682))

(assert (=> b!6491508 m!7280042))

(assert (=> b!6491508 m!7280042))

(assert (=> b!6491508 m!7280092))

(assert (=> b!6491506 m!7280038))

(assert (=> b!6491512 m!7279684))

(assert (=> bm!561986 m!7280034))

(assert (=> b!6491513 m!7280038))

(assert (=> b!6491507 m!7280038))

(assert (=> b!6491507 m!7280038))

(declare-fun m!7280094 () Bool)

(assert (=> b!6491507 m!7280094))

(assert (=> b!6491507 m!7280042))

(assert (=> b!6491507 m!7280094))

(assert (=> b!6491507 m!7280042))

(declare-fun m!7280096 () Bool)

(assert (=> b!6491507 m!7280096))

(assert (=> b!6490629 d!2036644))

(declare-fun d!2036646 () Bool)

(assert (=> d!2036646 (= (matchR!8552 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638)) (matchZipper!2381 lt!2389651 (_1!36651 lt!2389638)))))

(declare-fun lt!2389826 () Unit!158807)

(declare-fun choose!48195 ((InoxSet Context!11506) List!65408 Regex!16369 List!65406) Unit!158807)

(assert (=> d!2036646 (= lt!2389826 (choose!48195 lt!2389651 lt!2389621 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638)))))

(assert (=> d!2036646 (validRegex!8105 (reg!16698 (regOne!33250 r!7292)))))

(assert (=> d!2036646 (= (theoremZipperRegexEquiv!835 lt!2389651 lt!2389621 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638)) lt!2389826)))

(declare-fun bs!1647877 () Bool)

(assert (= bs!1647877 d!2036646))

(assert (=> bs!1647877 m!7279226))

(assert (=> bs!1647877 m!7279170))

(declare-fun m!7280126 () Bool)

(assert (=> bs!1647877 m!7280126))

(assert (=> bs!1647877 m!7279464))

(assert (=> b!6490629 d!2036646))

(declare-fun d!2036654 () Bool)

(assert (=> d!2036654 (= (matchR!8552 lt!2389661 lt!2389641) (matchZipper!2381 lt!2389616 lt!2389641))))

(declare-fun lt!2389827 () Unit!158807)

(assert (=> d!2036654 (= lt!2389827 (choose!48195 lt!2389616 lt!2389640 lt!2389661 lt!2389641))))

(assert (=> d!2036654 (validRegex!8105 lt!2389661)))

(assert (=> d!2036654 (= (theoremZipperRegexEquiv!835 lt!2389616 lt!2389640 lt!2389661 lt!2389641) lt!2389827)))

(declare-fun bs!1647878 () Bool)

(assert (= bs!1647878 d!2036654))

(assert (=> bs!1647878 m!7279152))

(assert (=> bs!1647878 m!7279160))

(declare-fun m!7280128 () Bool)

(assert (=> bs!1647878 m!7280128))

(declare-fun m!7280130 () Bool)

(assert (=> bs!1647878 m!7280130))

(assert (=> b!6490629 d!2036654))

(declare-fun d!2036656 () Bool)

(declare-fun c!1189649 () Bool)

(assert (=> d!2036656 (= c!1189649 (isEmpty!37477 lt!2389641))))

(declare-fun e!3934002 () Bool)

(assert (=> d!2036656 (= (matchZipper!2381 lt!2389616 lt!2389641) e!3934002)))

(declare-fun b!6491519 () Bool)

(assert (=> b!6491519 (= e!3934002 (nullableZipper!2125 lt!2389616))))

(declare-fun b!6491520 () Bool)

(assert (=> b!6491520 (= e!3934002 (matchZipper!2381 (derivationStepZipper!2335 lt!2389616 (head!13211 lt!2389641)) (tail!12296 lt!2389641)))))

(assert (= (and d!2036656 c!1189649) b!6491519))

(assert (= (and d!2036656 (not c!1189649)) b!6491520))

(declare-fun m!7280132 () Bool)

(assert (=> d!2036656 m!7280132))

(declare-fun m!7280134 () Bool)

(assert (=> b!6491519 m!7280134))

(declare-fun m!7280136 () Bool)

(assert (=> b!6491520 m!7280136))

(assert (=> b!6491520 m!7280136))

(declare-fun m!7280138 () Bool)

(assert (=> b!6491520 m!7280138))

(declare-fun m!7280140 () Bool)

(assert (=> b!6491520 m!7280140))

(assert (=> b!6491520 m!7280138))

(assert (=> b!6491520 m!7280140))

(declare-fun m!7280142 () Bool)

(assert (=> b!6491520 m!7280142))

(assert (=> b!6490629 d!2036656))

(declare-fun d!2036658 () Bool)

(assert (=> d!2036658 (matchR!8552 (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661) (++!14448 (_1!36651 lt!2389638) lt!2389641))))

(declare-fun lt!2389834 () Unit!158807)

(declare-fun choose!48196 (Regex!16369 Regex!16369 List!65406 List!65406) Unit!158807)

(assert (=> d!2036658 (= lt!2389834 (choose!48196 (reg!16698 (regOne!33250 r!7292)) lt!2389661 (_1!36651 lt!2389638) lt!2389641))))

(declare-fun e!3934012 () Bool)

(assert (=> d!2036658 e!3934012))

(declare-fun res!2666097 () Bool)

(assert (=> d!2036658 (=> (not res!2666097) (not e!3934012))))

(assert (=> d!2036658 (= res!2666097 (validRegex!8105 (reg!16698 (regOne!33250 r!7292))))))

(assert (=> d!2036658 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!332 (reg!16698 (regOne!33250 r!7292)) lt!2389661 (_1!36651 lt!2389638) lt!2389641) lt!2389834)))

(declare-fun b!6491534 () Bool)

(assert (=> b!6491534 (= e!3934012 (validRegex!8105 lt!2389661))))

(assert (= (and d!2036658 res!2666097) b!6491534))

(assert (=> d!2036658 m!7279218))

(assert (=> d!2036658 m!7279218))

(declare-fun m!7280156 () Bool)

(assert (=> d!2036658 m!7280156))

(declare-fun m!7280158 () Bool)

(assert (=> d!2036658 m!7280158))

(assert (=> d!2036658 m!7279464))

(assert (=> b!6491534 m!7280130))

(assert (=> b!6490629 d!2036658))

(declare-fun b!6491535 () Bool)

(declare-fun res!2666103 () Bool)

(declare-fun e!3934013 () Bool)

(assert (=> b!6491535 (=> res!2666103 e!3934013)))

(declare-fun e!3934017 () Bool)

(assert (=> b!6491535 (= res!2666103 e!3934017)))

(declare-fun res!2666100 () Bool)

(assert (=> b!6491535 (=> (not res!2666100) (not e!3934017))))

(declare-fun lt!2389835 () Bool)

(assert (=> b!6491535 (= res!2666100 lt!2389835)))

(declare-fun b!6491536 () Bool)

(declare-fun res!2666101 () Bool)

(assert (=> b!6491536 (=> (not res!2666101) (not e!3934017))))

(assert (=> b!6491536 (= res!2666101 (isEmpty!37477 (tail!12296 lt!2389641)))))

(declare-fun b!6491538 () Bool)

(declare-fun e!3934015 () Bool)

(assert (=> b!6491538 (= e!3934013 e!3934015)))

(declare-fun res!2666104 () Bool)

(assert (=> b!6491538 (=> (not res!2666104) (not e!3934015))))

(assert (=> b!6491538 (= res!2666104 (not lt!2389835))))

(declare-fun bm!561989 () Bool)

(declare-fun call!561994 () Bool)

(assert (=> bm!561989 (= call!561994 (isEmpty!37477 lt!2389641))))

(declare-fun b!6491539 () Bool)

(declare-fun e!3934016 () Bool)

(assert (=> b!6491539 (= e!3934016 (not (= (head!13211 lt!2389641) (c!1189393 lt!2389661))))))

(declare-fun b!6491540 () Bool)

(declare-fun e!3934019 () Bool)

(assert (=> b!6491540 (= e!3934019 (matchR!8552 (derivativeStep!5064 lt!2389661 (head!13211 lt!2389641)) (tail!12296 lt!2389641)))))

(declare-fun b!6491541 () Bool)

(declare-fun res!2666105 () Bool)

(assert (=> b!6491541 (=> res!2666105 e!3934016)))

(assert (=> b!6491541 (= res!2666105 (not (isEmpty!37477 (tail!12296 lt!2389641))))))

(declare-fun b!6491542 () Bool)

(declare-fun res!2666102 () Bool)

(assert (=> b!6491542 (=> res!2666102 e!3934013)))

(assert (=> b!6491542 (= res!2666102 (not ((_ is ElementMatch!16369) lt!2389661)))))

(declare-fun e!3934014 () Bool)

(assert (=> b!6491542 (= e!3934014 e!3934013)))

(declare-fun b!6491543 () Bool)

(declare-fun e!3934018 () Bool)

(assert (=> b!6491543 (= e!3934018 (= lt!2389835 call!561994))))

(declare-fun b!6491544 () Bool)

(assert (=> b!6491544 (= e!3934015 e!3934016)))

(declare-fun res!2666099 () Bool)

(assert (=> b!6491544 (=> res!2666099 e!3934016)))

(assert (=> b!6491544 (= res!2666099 call!561994)))

(declare-fun b!6491545 () Bool)

(assert (=> b!6491545 (= e!3934019 (nullable!6362 lt!2389661))))

(declare-fun b!6491546 () Bool)

(assert (=> b!6491546 (= e!3934017 (= (head!13211 lt!2389641) (c!1189393 lt!2389661)))))

(declare-fun d!2036666 () Bool)

(assert (=> d!2036666 e!3934018))

(declare-fun c!1189656 () Bool)

(assert (=> d!2036666 (= c!1189656 ((_ is EmptyExpr!16369) lt!2389661))))

(assert (=> d!2036666 (= lt!2389835 e!3934019)))

(declare-fun c!1189655 () Bool)

(assert (=> d!2036666 (= c!1189655 (isEmpty!37477 lt!2389641))))

(assert (=> d!2036666 (validRegex!8105 lt!2389661)))

(assert (=> d!2036666 (= (matchR!8552 lt!2389661 lt!2389641) lt!2389835)))

(declare-fun b!6491537 () Bool)

(assert (=> b!6491537 (= e!3934018 e!3934014)))

(declare-fun c!1189654 () Bool)

(assert (=> b!6491537 (= c!1189654 ((_ is EmptyLang!16369) lt!2389661))))

(declare-fun b!6491547 () Bool)

(assert (=> b!6491547 (= e!3934014 (not lt!2389835))))

(declare-fun b!6491548 () Bool)

(declare-fun res!2666098 () Bool)

(assert (=> b!6491548 (=> (not res!2666098) (not e!3934017))))

(assert (=> b!6491548 (= res!2666098 (not call!561994))))

(assert (= (and d!2036666 c!1189655) b!6491545))

(assert (= (and d!2036666 (not c!1189655)) b!6491540))

(assert (= (and d!2036666 c!1189656) b!6491543))

(assert (= (and d!2036666 (not c!1189656)) b!6491537))

(assert (= (and b!6491537 c!1189654) b!6491547))

(assert (= (and b!6491537 (not c!1189654)) b!6491542))

(assert (= (and b!6491542 (not res!2666102)) b!6491535))

(assert (= (and b!6491535 res!2666100) b!6491548))

(assert (= (and b!6491548 res!2666098) b!6491536))

(assert (= (and b!6491536 res!2666101) b!6491546))

(assert (= (and b!6491535 (not res!2666103)) b!6491538))

(assert (= (and b!6491538 res!2666104) b!6491544))

(assert (= (and b!6491544 (not res!2666099)) b!6491541))

(assert (= (and b!6491541 (not res!2666105)) b!6491539))

(assert (= (or b!6491543 b!6491544 b!6491548) bm!561989))

(assert (=> b!6491536 m!7280140))

(assert (=> b!6491536 m!7280140))

(declare-fun m!7280160 () Bool)

(assert (=> b!6491536 m!7280160))

(assert (=> d!2036666 m!7280132))

(assert (=> d!2036666 m!7280130))

(assert (=> b!6491541 m!7280140))

(assert (=> b!6491541 m!7280140))

(assert (=> b!6491541 m!7280160))

(assert (=> b!6491539 m!7280136))

(declare-fun m!7280162 () Bool)

(assert (=> b!6491545 m!7280162))

(assert (=> bm!561989 m!7280132))

(assert (=> b!6491546 m!7280136))

(assert (=> b!6491540 m!7280136))

(assert (=> b!6491540 m!7280136))

(declare-fun m!7280164 () Bool)

(assert (=> b!6491540 m!7280164))

(assert (=> b!6491540 m!7280140))

(assert (=> b!6491540 m!7280164))

(assert (=> b!6491540 m!7280140))

(declare-fun m!7280166 () Bool)

(assert (=> b!6491540 m!7280166))

(assert (=> b!6490629 d!2036666))

(declare-fun d!2036668 () Bool)

(declare-fun c!1189657 () Bool)

(assert (=> d!2036668 (= c!1189657 (isEmpty!37477 (_1!36651 lt!2389638)))))

(declare-fun e!3934020 () Bool)

(assert (=> d!2036668 (= (matchZipper!2381 lt!2389651 (_1!36651 lt!2389638)) e!3934020)))

(declare-fun b!6491549 () Bool)

(assert (=> b!6491549 (= e!3934020 (nullableZipper!2125 lt!2389651))))

(declare-fun b!6491550 () Bool)

(assert (=> b!6491550 (= e!3934020 (matchZipper!2381 (derivationStepZipper!2335 lt!2389651 (head!13211 (_1!36651 lt!2389638))) (tail!12296 (_1!36651 lt!2389638))))))

(assert (= (and d!2036668 c!1189657) b!6491549))

(assert (= (and d!2036668 (not c!1189657)) b!6491550))

(assert (=> d!2036668 m!7279602))

(declare-fun m!7280168 () Bool)

(assert (=> b!6491549 m!7280168))

(assert (=> b!6491550 m!7279604))

(assert (=> b!6491550 m!7279604))

(declare-fun m!7280170 () Bool)

(assert (=> b!6491550 m!7280170))

(assert (=> b!6491550 m!7279598))

(assert (=> b!6491550 m!7280170))

(assert (=> b!6491550 m!7279598))

(declare-fun m!7280172 () Bool)

(assert (=> b!6491550 m!7280172))

(assert (=> b!6490629 d!2036668))

(declare-fun b!6491551 () Bool)

(declare-fun res!2666111 () Bool)

(declare-fun e!3934021 () Bool)

(assert (=> b!6491551 (=> res!2666111 e!3934021)))

(declare-fun e!3934025 () Bool)

(assert (=> b!6491551 (= res!2666111 e!3934025)))

(declare-fun res!2666108 () Bool)

(assert (=> b!6491551 (=> (not res!2666108) (not e!3934025))))

(declare-fun lt!2389836 () Bool)

(assert (=> b!6491551 (= res!2666108 lt!2389836)))

(declare-fun b!6491552 () Bool)

(declare-fun res!2666109 () Bool)

(assert (=> b!6491552 (=> (not res!2666109) (not e!3934025))))

(assert (=> b!6491552 (= res!2666109 (isEmpty!37477 (tail!12296 lt!2389620)))))

(declare-fun b!6491554 () Bool)

(declare-fun e!3934023 () Bool)

(assert (=> b!6491554 (= e!3934021 e!3934023)))

(declare-fun res!2666112 () Bool)

(assert (=> b!6491554 (=> (not res!2666112) (not e!3934023))))

(assert (=> b!6491554 (= res!2666112 (not lt!2389836))))

(declare-fun bm!561990 () Bool)

(declare-fun call!561995 () Bool)

(assert (=> bm!561990 (= call!561995 (isEmpty!37477 lt!2389620))))

(declare-fun b!6491555 () Bool)

(declare-fun e!3934024 () Bool)

(assert (=> b!6491555 (= e!3934024 (not (= (head!13211 lt!2389620) (c!1189393 lt!2389631))))))

(declare-fun b!6491556 () Bool)

(declare-fun e!3934027 () Bool)

(assert (=> b!6491556 (= e!3934027 (matchR!8552 (derivativeStep!5064 lt!2389631 (head!13211 lt!2389620)) (tail!12296 lt!2389620)))))

(declare-fun b!6491557 () Bool)

(declare-fun res!2666113 () Bool)

(assert (=> b!6491557 (=> res!2666113 e!3934024)))

(assert (=> b!6491557 (= res!2666113 (not (isEmpty!37477 (tail!12296 lt!2389620))))))

(declare-fun b!6491558 () Bool)

(declare-fun res!2666110 () Bool)

(assert (=> b!6491558 (=> res!2666110 e!3934021)))

(assert (=> b!6491558 (= res!2666110 (not ((_ is ElementMatch!16369) lt!2389631)))))

(declare-fun e!3934022 () Bool)

(assert (=> b!6491558 (= e!3934022 e!3934021)))

(declare-fun b!6491559 () Bool)

(declare-fun e!3934026 () Bool)

(assert (=> b!6491559 (= e!3934026 (= lt!2389836 call!561995))))

(declare-fun b!6491560 () Bool)

(assert (=> b!6491560 (= e!3934023 e!3934024)))

(declare-fun res!2666107 () Bool)

(assert (=> b!6491560 (=> res!2666107 e!3934024)))

(assert (=> b!6491560 (= res!2666107 call!561995)))

(declare-fun b!6491561 () Bool)

(assert (=> b!6491561 (= e!3934027 (nullable!6362 lt!2389631))))

(declare-fun b!6491562 () Bool)

(assert (=> b!6491562 (= e!3934025 (= (head!13211 lt!2389620) (c!1189393 lt!2389631)))))

(declare-fun d!2036670 () Bool)

(assert (=> d!2036670 e!3934026))

(declare-fun c!1189660 () Bool)

(assert (=> d!2036670 (= c!1189660 ((_ is EmptyExpr!16369) lt!2389631))))

(assert (=> d!2036670 (= lt!2389836 e!3934027)))

(declare-fun c!1189659 () Bool)

(assert (=> d!2036670 (= c!1189659 (isEmpty!37477 lt!2389620))))

(assert (=> d!2036670 (validRegex!8105 lt!2389631)))

(assert (=> d!2036670 (= (matchR!8552 lt!2389631 lt!2389620) lt!2389836)))

(declare-fun b!6491553 () Bool)

(assert (=> b!6491553 (= e!3934026 e!3934022)))

(declare-fun c!1189658 () Bool)

(assert (=> b!6491553 (= c!1189658 ((_ is EmptyLang!16369) lt!2389631))))

(declare-fun b!6491563 () Bool)

(assert (=> b!6491563 (= e!3934022 (not lt!2389836))))

(declare-fun b!6491564 () Bool)

(declare-fun res!2666106 () Bool)

(assert (=> b!6491564 (=> (not res!2666106) (not e!3934025))))

(assert (=> b!6491564 (= res!2666106 (not call!561995))))

(assert (= (and d!2036670 c!1189659) b!6491561))

(assert (= (and d!2036670 (not c!1189659)) b!6491556))

(assert (= (and d!2036670 c!1189660) b!6491559))

(assert (= (and d!2036670 (not c!1189660)) b!6491553))

(assert (= (and b!6491553 c!1189658) b!6491563))

(assert (= (and b!6491553 (not c!1189658)) b!6491558))

(assert (= (and b!6491558 (not res!2666110)) b!6491551))

(assert (= (and b!6491551 res!2666108) b!6491564))

(assert (= (and b!6491564 res!2666106) b!6491552))

(assert (= (and b!6491552 res!2666109) b!6491562))

(assert (= (and b!6491551 (not res!2666111)) b!6491554))

(assert (= (and b!6491554 res!2666112) b!6491560))

(assert (= (and b!6491560 (not res!2666107)) b!6491557))

(assert (= (and b!6491557 (not res!2666113)) b!6491555))

(assert (= (or b!6491559 b!6491560 b!6491564) bm!561990))

(declare-fun m!7280174 () Bool)

(assert (=> b!6491552 m!7280174))

(assert (=> b!6491552 m!7280174))

(declare-fun m!7280176 () Bool)

(assert (=> b!6491552 m!7280176))

(declare-fun m!7280178 () Bool)

(assert (=> d!2036670 m!7280178))

(assert (=> d!2036670 m!7279404))

(assert (=> b!6491557 m!7280174))

(assert (=> b!6491557 m!7280174))

(assert (=> b!6491557 m!7280176))

(declare-fun m!7280180 () Bool)

(assert (=> b!6491555 m!7280180))

(assert (=> b!6491561 m!7279408))

(assert (=> bm!561990 m!7280178))

(assert (=> b!6491562 m!7280180))

(assert (=> b!6491556 m!7280180))

(assert (=> b!6491556 m!7280180))

(declare-fun m!7280182 () Bool)

(assert (=> b!6491556 m!7280182))

(assert (=> b!6491556 m!7280174))

(assert (=> b!6491556 m!7280182))

(assert (=> b!6491556 m!7280174))

(declare-fun m!7280184 () Bool)

(assert (=> b!6491556 m!7280184))

(assert (=> b!6490629 d!2036670))

(declare-fun d!2036672 () Bool)

(assert (=> d!2036672 (matchR!8552 (Concat!25214 lt!2389631 (regTwo!33250 r!7292)) (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655)))))

(declare-fun lt!2389837 () Unit!158807)

(assert (=> d!2036672 (= lt!2389837 (choose!48196 lt!2389631 (regTwo!33250 r!7292) (_2!36651 lt!2389638) (_2!36651 lt!2389655)))))

(declare-fun e!3934028 () Bool)

(assert (=> d!2036672 e!3934028))

(declare-fun res!2666114 () Bool)

(assert (=> d!2036672 (=> (not res!2666114) (not e!3934028))))

(assert (=> d!2036672 (= res!2666114 (validRegex!8105 lt!2389631))))

(assert (=> d!2036672 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!332 lt!2389631 (regTwo!33250 r!7292) (_2!36651 lt!2389638) (_2!36651 lt!2389655)) lt!2389837)))

(declare-fun b!6491565 () Bool)

(assert (=> b!6491565 (= e!3934028 (validRegex!8105 (regTwo!33250 r!7292)))))

(assert (= (and d!2036672 res!2666114) b!6491565))

(assert (=> d!2036672 m!7279222))

(assert (=> d!2036672 m!7279222))

(declare-fun m!7280186 () Bool)

(assert (=> d!2036672 m!7280186))

(declare-fun m!7280188 () Bool)

(assert (=> d!2036672 m!7280188))

(assert (=> d!2036672 m!7279404))

(assert (=> b!6491565 m!7279816))

(assert (=> b!6490629 d!2036672))

(declare-fun d!2036674 () Bool)

(assert (=> d!2036674 (= (nullable!6362 (regOne!33250 (regOne!33250 r!7292))) (nullableFct!2300 (regOne!33250 (regOne!33250 r!7292))))))

(declare-fun bs!1647902 () Bool)

(assert (= bs!1647902 d!2036674))

(declare-fun m!7280190 () Bool)

(assert (=> bs!1647902 m!7280190))

(assert (=> b!6490609 d!2036674))

(declare-fun b!6491569 () Bool)

(declare-fun lt!2389838 () List!65406)

(declare-fun e!3934030 () Bool)

(assert (=> b!6491569 (= e!3934030 (or (not (= lt!2389641 Nil!65282)) (= lt!2389838 (_1!36651 lt!2389638))))))

(declare-fun b!6491568 () Bool)

(declare-fun res!2666116 () Bool)

(assert (=> b!6491568 (=> (not res!2666116) (not e!3934030))))

(assert (=> b!6491568 (= res!2666116 (= (size!40427 lt!2389838) (+ (size!40427 (_1!36651 lt!2389638)) (size!40427 lt!2389641))))))

(declare-fun d!2036676 () Bool)

(assert (=> d!2036676 e!3934030))

(declare-fun res!2666115 () Bool)

(assert (=> d!2036676 (=> (not res!2666115) (not e!3934030))))

(assert (=> d!2036676 (= res!2666115 (= (content!12442 lt!2389838) ((_ map or) (content!12442 (_1!36651 lt!2389638)) (content!12442 lt!2389641))))))

(declare-fun e!3934029 () List!65406)

(assert (=> d!2036676 (= lt!2389838 e!3934029)))

(declare-fun c!1189661 () Bool)

(assert (=> d!2036676 (= c!1189661 ((_ is Nil!65282) (_1!36651 lt!2389638)))))

(assert (=> d!2036676 (= (++!14448 (_1!36651 lt!2389638) lt!2389641) lt!2389838)))

(declare-fun b!6491567 () Bool)

(assert (=> b!6491567 (= e!3934029 (Cons!65282 (h!71730 (_1!36651 lt!2389638)) (++!14448 (t!379034 (_1!36651 lt!2389638)) lt!2389641)))))

(declare-fun b!6491566 () Bool)

(assert (=> b!6491566 (= e!3934029 lt!2389641)))

(assert (= (and d!2036676 c!1189661) b!6491566))

(assert (= (and d!2036676 (not c!1189661)) b!6491567))

(assert (= (and d!2036676 res!2666115) b!6491568))

(assert (= (and b!6491568 res!2666116) b!6491569))

(declare-fun m!7280198 () Bool)

(assert (=> b!6491568 m!7280198))

(assert (=> b!6491568 m!7279422))

(declare-fun m!7280200 () Bool)

(assert (=> b!6491568 m!7280200))

(declare-fun m!7280202 () Bool)

(assert (=> d!2036676 m!7280202))

(assert (=> d!2036676 m!7279428))

(declare-fun m!7280204 () Bool)

(assert (=> d!2036676 m!7280204))

(declare-fun m!7280206 () Bool)

(assert (=> b!6491567 m!7280206))

(assert (=> b!6490630 d!2036676))

(declare-fun b!6491587 () Bool)

(declare-fun e!3934039 () Bool)

(declare-fun lt!2389840 () List!65406)

(assert (=> b!6491587 (= e!3934039 (or (not (= (_2!36651 lt!2389655) Nil!65282)) (= lt!2389840 lt!2389620)))))

(declare-fun b!6491586 () Bool)

(declare-fun res!2666126 () Bool)

(assert (=> b!6491586 (=> (not res!2666126) (not e!3934039))))

(assert (=> b!6491586 (= res!2666126 (= (size!40427 lt!2389840) (+ (size!40427 lt!2389620) (size!40427 (_2!36651 lt!2389655)))))))

(declare-fun d!2036680 () Bool)

(assert (=> d!2036680 e!3934039))

(declare-fun res!2666125 () Bool)

(assert (=> d!2036680 (=> (not res!2666125) (not e!3934039))))

(assert (=> d!2036680 (= res!2666125 (= (content!12442 lt!2389840) ((_ map or) (content!12442 lt!2389620) (content!12442 (_2!36651 lt!2389655)))))))

(declare-fun e!3934038 () List!65406)

(assert (=> d!2036680 (= lt!2389840 e!3934038)))

(declare-fun c!1189665 () Bool)

(assert (=> d!2036680 (= c!1189665 ((_ is Nil!65282) lt!2389620))))

(assert (=> d!2036680 (= (++!14448 lt!2389620 (_2!36651 lt!2389655)) lt!2389840)))

(declare-fun b!6491585 () Bool)

(assert (=> b!6491585 (= e!3934038 (Cons!65282 (h!71730 lt!2389620) (++!14448 (t!379034 lt!2389620) (_2!36651 lt!2389655))))))

(declare-fun b!6491584 () Bool)

(assert (=> b!6491584 (= e!3934038 (_2!36651 lt!2389655))))

(assert (= (and d!2036680 c!1189665) b!6491584))

(assert (= (and d!2036680 (not c!1189665)) b!6491585))

(assert (= (and d!2036680 res!2666125) b!6491586))

(assert (= (and b!6491586 res!2666126) b!6491587))

(declare-fun m!7280208 () Bool)

(assert (=> b!6491586 m!7280208))

(declare-fun m!7280210 () Bool)

(assert (=> b!6491586 m!7280210))

(assert (=> b!6491586 m!7279642))

(declare-fun m!7280212 () Bool)

(assert (=> d!2036680 m!7280212))

(declare-fun m!7280214 () Bool)

(assert (=> d!2036680 m!7280214))

(assert (=> d!2036680 m!7279648))

(declare-fun m!7280216 () Bool)

(assert (=> b!6491585 m!7280216))

(assert (=> b!6490630 d!2036680))

(declare-fun e!3934041 () Bool)

(declare-fun b!6491591 () Bool)

(declare-fun lt!2389841 () List!65406)

(assert (=> b!6491591 (= e!3934041 (or (not (= (_2!36651 lt!2389655) Nil!65282)) (= lt!2389841 (_2!36651 lt!2389638))))))

(declare-fun b!6491590 () Bool)

(declare-fun res!2666128 () Bool)

(assert (=> b!6491590 (=> (not res!2666128) (not e!3934041))))

(assert (=> b!6491590 (= res!2666128 (= (size!40427 lt!2389841) (+ (size!40427 (_2!36651 lt!2389638)) (size!40427 (_2!36651 lt!2389655)))))))

(declare-fun d!2036682 () Bool)

(assert (=> d!2036682 e!3934041))

(declare-fun res!2666127 () Bool)

(assert (=> d!2036682 (=> (not res!2666127) (not e!3934041))))

(assert (=> d!2036682 (= res!2666127 (= (content!12442 lt!2389841) ((_ map or) (content!12442 (_2!36651 lt!2389638)) (content!12442 (_2!36651 lt!2389655)))))))

(declare-fun e!3934040 () List!65406)

(assert (=> d!2036682 (= lt!2389841 e!3934040)))

(declare-fun c!1189666 () Bool)

(assert (=> d!2036682 (= c!1189666 ((_ is Nil!65282) (_2!36651 lt!2389638)))))

(assert (=> d!2036682 (= (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655)) lt!2389841)))

(declare-fun b!6491589 () Bool)

(assert (=> b!6491589 (= e!3934040 (Cons!65282 (h!71730 (_2!36651 lt!2389638)) (++!14448 (t!379034 (_2!36651 lt!2389638)) (_2!36651 lt!2389655))))))

(declare-fun b!6491588 () Bool)

(assert (=> b!6491588 (= e!3934040 (_2!36651 lt!2389655))))

(assert (= (and d!2036682 c!1189666) b!6491588))

(assert (= (and d!2036682 (not c!1189666)) b!6491589))

(assert (= (and d!2036682 res!2666127) b!6491590))

(assert (= (and b!6491590 res!2666128) b!6491591))

(declare-fun m!7280224 () Bool)

(assert (=> b!6491590 m!7280224))

(assert (=> b!6491590 m!7279424))

(assert (=> b!6491590 m!7279642))

(declare-fun m!7280226 () Bool)

(assert (=> d!2036682 m!7280226))

(assert (=> d!2036682 m!7279430))

(assert (=> d!2036682 m!7279648))

(declare-fun m!7280228 () Bool)

(assert (=> b!6491589 m!7280228))

(assert (=> b!6490630 d!2036682))

(declare-fun d!2036686 () Bool)

(assert (=> d!2036686 (= (++!14448 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638)) (_2!36651 lt!2389655)) (++!14448 (_1!36651 lt!2389638) (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655))))))

(declare-fun lt!2389845 () Unit!158807)

(declare-fun choose!48197 (List!65406 List!65406 List!65406) Unit!158807)

(assert (=> d!2036686 (= lt!2389845 (choose!48197 (_1!36651 lt!2389638) (_2!36651 lt!2389638) (_2!36651 lt!2389655)))))

(assert (=> d!2036686 (= (lemmaConcatAssociativity!2940 (_1!36651 lt!2389638) (_2!36651 lt!2389638) (_2!36651 lt!2389655)) lt!2389845)))

(declare-fun bs!1647904 () Bool)

(assert (= bs!1647904 d!2036686))

(assert (=> bs!1647904 m!7279200))

(declare-fun m!7280232 () Bool)

(assert (=> bs!1647904 m!7280232))

(assert (=> bs!1647904 m!7279222))

(declare-fun m!7280234 () Bool)

(assert (=> bs!1647904 m!7280234))

(assert (=> bs!1647904 m!7279200))

(assert (=> bs!1647904 m!7279222))

(declare-fun m!7280236 () Bool)

(assert (=> bs!1647904 m!7280236))

(assert (=> b!6490630 d!2036686))

(declare-fun d!2036690 () Bool)

(declare-fun c!1189667 () Bool)

(assert (=> d!2036690 (= c!1189667 (isEmpty!37477 (t!379034 s!2326)))))

(declare-fun e!3934042 () Bool)

(assert (=> d!2036690 (= (matchZipper!2381 lt!2389666 (t!379034 s!2326)) e!3934042)))

(declare-fun b!6491592 () Bool)

(assert (=> b!6491592 (= e!3934042 (nullableZipper!2125 lt!2389666))))

(declare-fun b!6491593 () Bool)

(assert (=> b!6491593 (= e!3934042 (matchZipper!2381 (derivationStepZipper!2335 lt!2389666 (head!13211 (t!379034 s!2326))) (tail!12296 (t!379034 s!2326))))))

(assert (= (and d!2036690 c!1189667) b!6491592))

(assert (= (and d!2036690 (not c!1189667)) b!6491593))

(assert (=> d!2036690 m!7279880))

(declare-fun m!7280238 () Bool)

(assert (=> b!6491592 m!7280238))

(assert (=> b!6491593 m!7279884))

(assert (=> b!6491593 m!7279884))

(declare-fun m!7280240 () Bool)

(assert (=> b!6491593 m!7280240))

(assert (=> b!6491593 m!7279888))

(assert (=> b!6491593 m!7280240))

(assert (=> b!6491593 m!7279888))

(declare-fun m!7280242 () Bool)

(assert (=> b!6491593 m!7280242))

(assert (=> b!6490610 d!2036690))

(declare-fun b!6491639 () Bool)

(declare-fun res!2666148 () Bool)

(declare-fun e!3934074 () Bool)

(assert (=> b!6491639 (=> res!2666148 e!3934074)))

(assert (=> b!6491639 (= res!2666148 (not ((_ is Concat!25214) r!7292)))))

(declare-fun e!3934076 () Bool)

(assert (=> b!6491639 (= e!3934076 e!3934074)))

(declare-fun b!6491640 () Bool)

(declare-fun e!3934078 () Bool)

(assert (=> b!6491640 (= e!3934074 e!3934078)))

(declare-fun res!2666152 () Bool)

(assert (=> b!6491640 (=> (not res!2666152) (not e!3934078))))

(declare-fun call!562009 () Bool)

(assert (=> b!6491640 (= res!2666152 call!562009)))

(declare-fun b!6491641 () Bool)

(declare-fun call!562011 () Bool)

(assert (=> b!6491641 (= e!3934078 call!562011)))

(declare-fun bm!562004 () Bool)

(declare-fun c!1189682 () Bool)

(assert (=> bm!562004 (= call!562011 (validRegex!8105 (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292))))))

(declare-fun b!6491642 () Bool)

(declare-fun e!3934075 () Bool)

(declare-fun e!3934079 () Bool)

(assert (=> b!6491642 (= e!3934075 e!3934079)))

(declare-fun res!2666151 () Bool)

(assert (=> b!6491642 (= res!2666151 (not (nullable!6362 (reg!16698 r!7292))))))

(assert (=> b!6491642 (=> (not res!2666151) (not e!3934079))))

(declare-fun b!6491643 () Bool)

(declare-fun e!3934073 () Bool)

(assert (=> b!6491643 (= e!3934073 e!3934075)))

(declare-fun c!1189681 () Bool)

(assert (=> b!6491643 (= c!1189681 ((_ is Star!16369) r!7292))))

(declare-fun b!6491644 () Bool)

(declare-fun call!562010 () Bool)

(assert (=> b!6491644 (= e!3934079 call!562010)))

(declare-fun b!6491645 () Bool)

(assert (=> b!6491645 (= e!3934075 e!3934076)))

(assert (=> b!6491645 (= c!1189682 ((_ is Union!16369) r!7292))))

(declare-fun d!2036692 () Bool)

(declare-fun res!2666149 () Bool)

(assert (=> d!2036692 (=> res!2666149 e!3934073)))

(assert (=> d!2036692 (= res!2666149 ((_ is ElementMatch!16369) r!7292))))

(assert (=> d!2036692 (= (validRegex!8105 r!7292) e!3934073)))

(declare-fun bm!562005 () Bool)

(assert (=> bm!562005 (= call!562010 (validRegex!8105 (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292)))))))

(declare-fun b!6491646 () Bool)

(declare-fun e!3934077 () Bool)

(assert (=> b!6491646 (= e!3934077 call!562011)))

(declare-fun b!6491647 () Bool)

(declare-fun res!2666150 () Bool)

(assert (=> b!6491647 (=> (not res!2666150) (not e!3934077))))

(assert (=> b!6491647 (= res!2666150 call!562009)))

(assert (=> b!6491647 (= e!3934076 e!3934077)))

(declare-fun bm!562006 () Bool)

(assert (=> bm!562006 (= call!562009 call!562010)))

(assert (= (and d!2036692 (not res!2666149)) b!6491643))

(assert (= (and b!6491643 c!1189681) b!6491642))

(assert (= (and b!6491643 (not c!1189681)) b!6491645))

(assert (= (and b!6491642 res!2666151) b!6491644))

(assert (= (and b!6491645 c!1189682) b!6491647))

(assert (= (and b!6491645 (not c!1189682)) b!6491639))

(assert (= (and b!6491647 res!2666150) b!6491646))

(assert (= (and b!6491639 (not res!2666148)) b!6491640))

(assert (= (and b!6491640 res!2666152) b!6491641))

(assert (= (or b!6491646 b!6491641) bm!562004))

(assert (= (or b!6491647 b!6491640) bm!562006))

(assert (= (or b!6491644 bm!562006) bm!562005))

(declare-fun m!7280296 () Bool)

(assert (=> bm!562004 m!7280296))

(declare-fun m!7280298 () Bool)

(assert (=> b!6491642 m!7280298))

(declare-fun m!7280300 () Bool)

(assert (=> bm!562005 m!7280300))

(assert (=> start!637878 d!2036692))

(declare-fun e!3934082 () Bool)

(declare-fun d!2036710 () Bool)

(assert (=> d!2036710 (= (matchZipper!2381 ((_ map or) lt!2389628 lt!2389666) (t!379034 s!2326)) e!3934082)))

(declare-fun res!2666155 () Bool)

(assert (=> d!2036710 (=> res!2666155 e!3934082)))

(assert (=> d!2036710 (= res!2666155 (matchZipper!2381 lt!2389628 (t!379034 s!2326)))))

(declare-fun lt!2389856 () Unit!158807)

(declare-fun choose!48198 ((InoxSet Context!11506) (InoxSet Context!11506) List!65406) Unit!158807)

(assert (=> d!2036710 (= lt!2389856 (choose!48198 lt!2389628 lt!2389666 (t!379034 s!2326)))))

(assert (=> d!2036710 (= (lemmaZipperConcatMatchesSameAsBothZippers!1200 lt!2389628 lt!2389666 (t!379034 s!2326)) lt!2389856)))

(declare-fun b!6491650 () Bool)

(assert (=> b!6491650 (= e!3934082 (matchZipper!2381 lt!2389666 (t!379034 s!2326)))))

(assert (= (and d!2036710 (not res!2666155)) b!6491650))

(assert (=> d!2036710 m!7279256))

(assert (=> d!2036710 m!7279254))

(declare-fun m!7280306 () Bool)

(assert (=> d!2036710 m!7280306))

(assert (=> b!6491650 m!7279116))

(assert (=> b!6490651 d!2036710))

(declare-fun d!2036714 () Bool)

(declare-fun c!1189683 () Bool)

(assert (=> d!2036714 (= c!1189683 (isEmpty!37477 (t!379034 s!2326)))))

(declare-fun e!3934083 () Bool)

(assert (=> d!2036714 (= (matchZipper!2381 lt!2389628 (t!379034 s!2326)) e!3934083)))

(declare-fun b!6491651 () Bool)

(assert (=> b!6491651 (= e!3934083 (nullableZipper!2125 lt!2389628))))

(declare-fun b!6491652 () Bool)

(assert (=> b!6491652 (= e!3934083 (matchZipper!2381 (derivationStepZipper!2335 lt!2389628 (head!13211 (t!379034 s!2326))) (tail!12296 (t!379034 s!2326))))))

(assert (= (and d!2036714 c!1189683) b!6491651))

(assert (= (and d!2036714 (not c!1189683)) b!6491652))

(assert (=> d!2036714 m!7279880))

(declare-fun m!7280308 () Bool)

(assert (=> b!6491651 m!7280308))

(assert (=> b!6491652 m!7279884))

(assert (=> b!6491652 m!7279884))

(declare-fun m!7280310 () Bool)

(assert (=> b!6491652 m!7280310))

(assert (=> b!6491652 m!7279888))

(assert (=> b!6491652 m!7280310))

(assert (=> b!6491652 m!7279888))

(declare-fun m!7280312 () Bool)

(assert (=> b!6491652 m!7280312))

(assert (=> b!6490651 d!2036714))

(declare-fun d!2036716 () Bool)

(declare-fun c!1189684 () Bool)

(assert (=> d!2036716 (= c!1189684 (isEmpty!37477 (t!379034 s!2326)))))

(declare-fun e!3934084 () Bool)

(assert (=> d!2036716 (= (matchZipper!2381 ((_ map or) lt!2389628 lt!2389666) (t!379034 s!2326)) e!3934084)))

(declare-fun b!6491653 () Bool)

(assert (=> b!6491653 (= e!3934084 (nullableZipper!2125 ((_ map or) lt!2389628 lt!2389666)))))

(declare-fun b!6491654 () Bool)

(assert (=> b!6491654 (= e!3934084 (matchZipper!2381 (derivationStepZipper!2335 ((_ map or) lt!2389628 lt!2389666) (head!13211 (t!379034 s!2326))) (tail!12296 (t!379034 s!2326))))))

(assert (= (and d!2036716 c!1189684) b!6491653))

(assert (= (and d!2036716 (not c!1189684)) b!6491654))

(assert (=> d!2036716 m!7279880))

(declare-fun m!7280314 () Bool)

(assert (=> b!6491653 m!7280314))

(assert (=> b!6491654 m!7279884))

(assert (=> b!6491654 m!7279884))

(declare-fun m!7280316 () Bool)

(assert (=> b!6491654 m!7280316))

(assert (=> b!6491654 m!7279888))

(assert (=> b!6491654 m!7280316))

(assert (=> b!6491654 m!7279888))

(declare-fun m!7280318 () Bool)

(assert (=> b!6491654 m!7280318))

(assert (=> b!6490651 d!2036716))

(declare-fun condSetEmpty!44222 () Bool)

(assert (=> setNonEmpty!44219 (= condSetEmpty!44222 (= setRest!44219 ((as const (Array Context!11506 Bool)) false)))))

(declare-fun setRes!44222 () Bool)

(assert (=> setNonEmpty!44219 (= tp!1796689 setRes!44222)))

(declare-fun setIsEmpty!44222 () Bool)

(assert (=> setIsEmpty!44222 setRes!44222))

(declare-fun setNonEmpty!44222 () Bool)

(declare-fun e!3934087 () Bool)

(declare-fun setElem!44222 () Context!11506)

(declare-fun tp!1796701 () Bool)

(assert (=> setNonEmpty!44222 (= setRes!44222 (and tp!1796701 (inv!84169 setElem!44222) e!3934087))))

(declare-fun setRest!44222 () (InoxSet Context!11506))

(assert (=> setNonEmpty!44222 (= setRest!44219 ((_ map or) (store ((as const (Array Context!11506 Bool)) false) setElem!44222 true) setRest!44222))))

(declare-fun b!6491659 () Bool)

(declare-fun tp!1796702 () Bool)

(assert (=> b!6491659 (= e!3934087 tp!1796702)))

(assert (= (and setNonEmpty!44219 condSetEmpty!44222) setIsEmpty!44222))

(assert (= (and setNonEmpty!44219 (not condSetEmpty!44222)) setNonEmpty!44222))

(assert (= setNonEmpty!44222 b!6491659))

(declare-fun m!7280320 () Bool)

(assert (=> setNonEmpty!44222 m!7280320))

(declare-fun b!6491664 () Bool)

(declare-fun e!3934090 () Bool)

(declare-fun tp!1796707 () Bool)

(declare-fun tp!1796708 () Bool)

(assert (=> b!6491664 (= e!3934090 (and tp!1796707 tp!1796708))))

(assert (=> b!6490633 (= tp!1796695 e!3934090)))

(assert (= (and b!6490633 ((_ is Cons!65283) (exprs!6253 setElem!44219))) b!6491664))

(declare-fun b!6491669 () Bool)

(declare-fun e!3934093 () Bool)

(declare-fun tp!1796711 () Bool)

(assert (=> b!6491669 (= e!3934093 (and tp_is_empty!41991 tp!1796711))))

(assert (=> b!6490634 (= tp!1796693 e!3934093)))

(assert (= (and b!6490634 ((_ is Cons!65282) (t!379034 s!2326))) b!6491669))

(declare-fun b!6491681 () Bool)

(declare-fun e!3934096 () Bool)

(declare-fun tp!1796725 () Bool)

(declare-fun tp!1796726 () Bool)

(assert (=> b!6491681 (= e!3934096 (and tp!1796725 tp!1796726))))

(declare-fun b!6491680 () Bool)

(assert (=> b!6491680 (= e!3934096 tp_is_empty!41991)))

(declare-fun b!6491683 () Bool)

(declare-fun tp!1796724 () Bool)

(declare-fun tp!1796723 () Bool)

(assert (=> b!6491683 (= e!3934096 (and tp!1796724 tp!1796723))))

(assert (=> b!6490645 (= tp!1796694 e!3934096)))

(declare-fun b!6491682 () Bool)

(declare-fun tp!1796722 () Bool)

(assert (=> b!6491682 (= e!3934096 tp!1796722)))

(assert (= (and b!6490645 ((_ is ElementMatch!16369) (regOne!33250 r!7292))) b!6491680))

(assert (= (and b!6490645 ((_ is Concat!25214) (regOne!33250 r!7292))) b!6491681))

(assert (= (and b!6490645 ((_ is Star!16369) (regOne!33250 r!7292))) b!6491682))

(assert (= (and b!6490645 ((_ is Union!16369) (regOne!33250 r!7292))) b!6491683))

(declare-fun b!6491687 () Bool)

(declare-fun e!3934098 () Bool)

(declare-fun tp!1796730 () Bool)

(declare-fun tp!1796731 () Bool)

(assert (=> b!6491687 (= e!3934098 (and tp!1796730 tp!1796731))))

(declare-fun b!6491686 () Bool)

(assert (=> b!6491686 (= e!3934098 tp_is_empty!41991)))

(declare-fun b!6491689 () Bool)

(declare-fun tp!1796729 () Bool)

(declare-fun tp!1796728 () Bool)

(assert (=> b!6491689 (= e!3934098 (and tp!1796729 tp!1796728))))

(assert (=> b!6490645 (= tp!1796688 e!3934098)))

(declare-fun b!6491688 () Bool)

(declare-fun tp!1796727 () Bool)

(assert (=> b!6491688 (= e!3934098 tp!1796727)))

(assert (= (and b!6490645 ((_ is ElementMatch!16369) (regTwo!33250 r!7292))) b!6491686))

(assert (= (and b!6490645 ((_ is Concat!25214) (regTwo!33250 r!7292))) b!6491687))

(assert (= (and b!6490645 ((_ is Star!16369) (regTwo!33250 r!7292))) b!6491688))

(assert (= (and b!6490645 ((_ is Union!16369) (regTwo!33250 r!7292))) b!6491689))

(declare-fun b!6491691 () Bool)

(declare-fun e!3934099 () Bool)

(declare-fun tp!1796735 () Bool)

(declare-fun tp!1796736 () Bool)

(assert (=> b!6491691 (= e!3934099 (and tp!1796735 tp!1796736))))

(declare-fun b!6491690 () Bool)

(assert (=> b!6491690 (= e!3934099 tp_is_empty!41991)))

(declare-fun b!6491693 () Bool)

(declare-fun tp!1796734 () Bool)

(declare-fun tp!1796733 () Bool)

(assert (=> b!6491693 (= e!3934099 (and tp!1796734 tp!1796733))))

(assert (=> b!6490640 (= tp!1796687 e!3934099)))

(declare-fun b!6491692 () Bool)

(declare-fun tp!1796732 () Bool)

(assert (=> b!6491692 (= e!3934099 tp!1796732)))

(assert (= (and b!6490640 ((_ is ElementMatch!16369) (reg!16698 r!7292))) b!6491690))

(assert (= (and b!6490640 ((_ is Concat!25214) (reg!16698 r!7292))) b!6491691))

(assert (= (and b!6490640 ((_ is Star!16369) (reg!16698 r!7292))) b!6491692))

(assert (= (and b!6490640 ((_ is Union!16369) (reg!16698 r!7292))) b!6491693))

(declare-fun b!6491703 () Bool)

(declare-fun e!3934106 () Bool)

(declare-fun tp!1796741 () Bool)

(assert (=> b!6491703 (= e!3934106 tp!1796741)))

(declare-fun e!3934105 () Bool)

(declare-fun b!6491702 () Bool)

(declare-fun tp!1796742 () Bool)

(assert (=> b!6491702 (= e!3934105 (and (inv!84169 (h!71732 (t!379036 zl!343))) e!3934106 tp!1796742))))

(assert (=> b!6490614 (= tp!1796696 e!3934105)))

(assert (= b!6491702 b!6491703))

(assert (= (and b!6490614 ((_ is Cons!65284) (t!379036 zl!343))) b!6491702))

(declare-fun m!7280346 () Bool)

(assert (=> b!6491702 m!7280346))

(declare-fun b!6491705 () Bool)

(declare-fun e!3934107 () Bool)

(declare-fun tp!1796746 () Bool)

(declare-fun tp!1796747 () Bool)

(assert (=> b!6491705 (= e!3934107 (and tp!1796746 tp!1796747))))

(declare-fun b!6491704 () Bool)

(assert (=> b!6491704 (= e!3934107 tp_is_empty!41991)))

(declare-fun b!6491707 () Bool)

(declare-fun tp!1796745 () Bool)

(declare-fun tp!1796744 () Bool)

(assert (=> b!6491707 (= e!3934107 (and tp!1796745 tp!1796744))))

(assert (=> b!6490625 (= tp!1796692 e!3934107)))

(declare-fun b!6491706 () Bool)

(declare-fun tp!1796743 () Bool)

(assert (=> b!6491706 (= e!3934107 tp!1796743)))

(assert (= (and b!6490625 ((_ is ElementMatch!16369) (regOne!33251 r!7292))) b!6491704))

(assert (= (and b!6490625 ((_ is Concat!25214) (regOne!33251 r!7292))) b!6491705))

(assert (= (and b!6490625 ((_ is Star!16369) (regOne!33251 r!7292))) b!6491706))

(assert (= (and b!6490625 ((_ is Union!16369) (regOne!33251 r!7292))) b!6491707))

(declare-fun b!6491709 () Bool)

(declare-fun e!3934108 () Bool)

(declare-fun tp!1796751 () Bool)

(declare-fun tp!1796752 () Bool)

(assert (=> b!6491709 (= e!3934108 (and tp!1796751 tp!1796752))))

(declare-fun b!6491708 () Bool)

(assert (=> b!6491708 (= e!3934108 tp_is_empty!41991)))

(declare-fun b!6491711 () Bool)

(declare-fun tp!1796750 () Bool)

(declare-fun tp!1796749 () Bool)

(assert (=> b!6491711 (= e!3934108 (and tp!1796750 tp!1796749))))

(assert (=> b!6490625 (= tp!1796690 e!3934108)))

(declare-fun b!6491710 () Bool)

(declare-fun tp!1796748 () Bool)

(assert (=> b!6491710 (= e!3934108 tp!1796748)))

(assert (= (and b!6490625 ((_ is ElementMatch!16369) (regTwo!33251 r!7292))) b!6491708))

(assert (= (and b!6490625 ((_ is Concat!25214) (regTwo!33251 r!7292))) b!6491709))

(assert (= (and b!6490625 ((_ is Star!16369) (regTwo!33251 r!7292))) b!6491710))

(assert (= (and b!6490625 ((_ is Union!16369) (regTwo!33251 r!7292))) b!6491711))

(declare-fun b!6491717 () Bool)

(declare-fun e!3934112 () Bool)

(declare-fun tp!1796753 () Bool)

(declare-fun tp!1796754 () Bool)

(assert (=> b!6491717 (= e!3934112 (and tp!1796753 tp!1796754))))

(assert (=> b!6490631 (= tp!1796691 e!3934112)))

(assert (= (and b!6490631 ((_ is Cons!65283) (exprs!6253 (h!71732 zl!343)))) b!6491717))

(declare-fun b_lambda!245743 () Bool)

(assert (= b_lambda!245729 (or b!6490636 b_lambda!245743)))

(declare-fun bs!1647946 () Bool)

(declare-fun d!2036734 () Bool)

(assert (= bs!1647946 (and d!2036734 b!6490636)))

(assert (=> bs!1647946 (= (dynLambda!25930 lambda!359438 lt!2389611) (derivationStepZipperUp!1543 lt!2389611 (h!71730 s!2326)))))

(assert (=> bs!1647946 m!7279076))

(assert (=> d!2036400 d!2036734))

(declare-fun b_lambda!245745 () Bool)

(assert (= b_lambda!245733 (or b!6490636 b_lambda!245745)))

(declare-fun bs!1647947 () Bool)

(declare-fun d!2036738 () Bool)

(assert (= bs!1647947 (and d!2036738 b!6490636)))

(assert (=> bs!1647947 (= (dynLambda!25930 lambda!359438 (h!71732 zl!343)) (derivationStepZipperUp!1543 (h!71732 zl!343) (h!71730 s!2326)))))

(assert (=> bs!1647947 m!7279240))

(assert (=> d!2036440 d!2036738))

(declare-fun b_lambda!245747 () Bool)

(assert (= b_lambda!245735 (or b!6490636 b_lambda!245747)))

(declare-fun bs!1647948 () Bool)

(declare-fun d!2036740 () Bool)

(assert (= bs!1647948 (and d!2036740 b!6490636)))

(assert (=> bs!1647948 (= (dynLambda!25930 lambda!359438 lt!2389656) (derivationStepZipperUp!1543 lt!2389656 (h!71730 s!2326)))))

(assert (=> bs!1647948 m!7279096))

(assert (=> d!2036550 d!2036740))

(declare-fun b_lambda!245749 () Bool)

(assert (= b_lambda!245737 (or b!6490636 b_lambda!245749)))

(declare-fun bs!1647950 () Bool)

(declare-fun d!2036742 () Bool)

(assert (= bs!1647950 (and d!2036742 b!6490636)))

(assert (=> bs!1647950 (= (dynLambda!25930 lambda!359438 lt!2389610) (derivationStepZipperUp!1543 lt!2389610 (h!71730 s!2326)))))

(assert (=> bs!1647950 m!7279098))

(assert (=> d!2036556 d!2036742))

(check-sat (not b!6491705) (not d!2036486) (not bs!1647950) (not d!2036596) (not d!2036532) (not b!6491116) (not b_lambda!245747) (not d!2036542) (not bm!561990) (not b!6491392) (not b!6490827) (not b!6491561) (not bm!562005) (not b!6491399) (not b!6491288) (not bm!561973) (not b!6490828) (not bs!1647946) (not d!2036598) (not b!6491400) (not b!6491659) (not b!6491593) (not b!6491163) (not b!6491126) (not b!6491469) (not b!6491289) (not b!6491397) (not b!6491589) (not bm!561989) (not d!2036624) (not b!6491164) (not b!6490851) (not b!6491175) (not b!6491395) (not b!6491316) (not b!6491309) (not d!2036506) (not b!6491717) (not bm!561955) (not b!6491115) (not b!6490914) (not d!2036584) (not b!6490960) (not d!2036644) (not b!6490833) (not d!2036472) (not b!6491315) (not bm!561977) (not bm!562004) (not bm!561912) (not b!6491233) (not d!2036490) (not d!2036616) (not b!6491556) (not b!6491702) (not b!6491536) (not b!6491501) (not b!6491403) (not b!6491653) (not b!6491147) (not d!2036396) (not b!6491555) (not d!2036670) (not b!6491382) (not d!2036612) (not b!6491707) (not bm!561956) (not d!2036668) (not b!6491322) (not bs!1647948) (not b!6491687) (not d!2036656) (not d!2036642) (not d!2036566) (not d!2036554) (not bm!561986) (not d!2036658) (not b!6491654) (not b!6491585) (not d!2036424) (not d!2036550) (not d!2036606) (not b!6491552) (not d!2036412) (not d!2036510) (not bm!561975) (not b!6491148) (not bm!561947) (not d!2036682) tp_is_empty!41991 (not b!6491134) (not bm!561911) (not d!2036666) (not b!6491693) (not d!2036536) (not b!6491652) (not b!6491225) (not b!6491213) (not b!6490909) (not b!6490915) (not b!6491171) (not b!6490874) (not d!2036458) (not b!6491540) (not b!6491283) (not b!6491143) (not b!6491691) (not b!6491398) (not b!6491212) (not d!2036402) (not b!6491119) (not b!6491681) (not b!6491534) (not b!6491208) (not d!2036676) (not b!6491317) (not d!2036572) (not d!2036674) (not d!2036680) (not b!6490959) (not b!6491394) (not b!6491207) (not d!2036440) (not d!2036552) (not b!6491174) (not b!6491508) (not b!6491503) (not d!2036580) (not b!6491167) (not b!6491203) (not b!6491500) (not b!6491512) (not b!6490872) (not b!6491539) (not bm!561958) (not b!6491384) (not b!6491550) (not b!6491285) (not bm!561920) (not b!6491290) (not d!2036690) (not b!6490925) (not b!6491464) (not d!2036514) (not b!6491386) (not b!6491377) (not d!2036502) (not b!6490706) (not bm!561978) (not b!6491465) (not b!6491312) (not b!6491688) (not d!2036534) (not b!6490829) (not b!6491692) (not d!2036614) (not b!6491129) (not d!2036526) (not b!6491586) (not b_lambda!245749) (not b!6491468) (not b!6491590) (not d!2036504) (not b!6491520) (not bm!561957) (not d!2036464) (not b!6491230) (not b!6491592) (not b!6491146) (not b!6491513) (not d!2036594) (not b!6491709) (not b!6491710) (not b!6491132) (not b!6491507) (not b!6491120) (not bm!561979) (not b!6491703) (not b!6491170) (not d!2036516) (not bm!561954) (not b!6491393) (not bm!561949) (not b!6490824) (not b!6491166) (not d!2036498) (not b!6491541) (not b!6491545) (not b!6490869) (not b!6490926) (not b!6491682) (not d!2036562) (not d!2036446) (not b!6491706) (not bm!561959) (not b!6490682) (not b!6491557) (not bm!561907) (not d!2036632) (not b!6490903) (not b!6491567) (not setNonEmpty!44222) (not d!2036654) (not b!6491651) (not b!6491402) (not b!6490743) (not d!2036714) (not b!6491379) (not b!6491206) (not b!6490910) (not d!2036540) (not b!6491383) (not b!6491127) (not bm!561936) (not b!6491228) (not b!6491282) (not b!6490905) (not b!6491650) (not d!2036436) (not b!6490703) (not b!6491152) (not d!2036628) (not b!6491139) (not b_lambda!245743) (not b!6491711) (not d!2036672) (not b!6491321) (not bm!561953) (not b!6490834) (not d!2036404) (not b!6491133) (not d!2036588) (not bm!561915) (not d!2036456) (not b!6490877) (not b!6491689) (not b!6491642) (not b!6491549) (not d!2036524) (not b!6491562) (not b!6491153) (not bm!561976) (not d!2036400) (not b!6491546) (not bm!561921) (not d!2036686) (not b!6490858) (not d!2036442) (not b!6491117) (not b!6491138) (not d!2036454) (not b!6491287) (not d!2036646) (not b!6491506) (not bm!561974) (not d!2036710) (not b!6491664) (not d!2036426) (not d!2036488) (not b_lambda!245745) (not b!6491161) (not b!6491114) (not b!6490848) (not d!2036558) (not d!2036508) (not bm!561980) (not d!2036484) (not b!6490908) (not b!6491669) (not b!6491519) (not d!2036492) (not d!2036586) (not b!6491568) (not bs!1647947) (not b!6491162) (not b!6491378) (not b!6490744) (not d!2036448) (not d!2036556) (not b!6491565) (not d!2036716) (not b!6491683))
(check-sat)
(get-model)

(declare-fun d!2036790 () Bool)

(assert (=> d!2036790 (= (isEmpty!37477 (tail!12296 (_1!36651 lt!2389655))) ((_ is Nil!65282) (tail!12296 (_1!36651 lt!2389655))))))

(assert (=> b!6490905 d!2036790))

(declare-fun d!2036792 () Bool)

(assert (=> d!2036792 (= (tail!12296 (_1!36651 lt!2389655)) (t!379034 (_1!36651 lt!2389655)))))

(assert (=> b!6490905 d!2036792))

(declare-fun d!2036794 () Bool)

(assert (=> d!2036794 true))

(assert (=> d!2036794 true))

(declare-fun res!2666199 () Bool)

(assert (=> d!2036794 (= (choose!48184 lambda!359442) res!2666199)))

(assert (=> d!2036488 d!2036794))

(declare-fun b!6491849 () Bool)

(declare-fun e!3934184 () Bool)

(declare-fun lt!2389877 () List!65406)

(assert (=> b!6491849 (= e!3934184 (or (not (= lt!2389641 Nil!65282)) (= lt!2389877 (t!379034 (_1!36651 lt!2389638)))))))

(declare-fun b!6491848 () Bool)

(declare-fun res!2666201 () Bool)

(assert (=> b!6491848 (=> (not res!2666201) (not e!3934184))))

(assert (=> b!6491848 (= res!2666201 (= (size!40427 lt!2389877) (+ (size!40427 (t!379034 (_1!36651 lt!2389638))) (size!40427 lt!2389641))))))

(declare-fun d!2036796 () Bool)

(assert (=> d!2036796 e!3934184))

(declare-fun res!2666200 () Bool)

(assert (=> d!2036796 (=> (not res!2666200) (not e!3934184))))

(assert (=> d!2036796 (= res!2666200 (= (content!12442 lt!2389877) ((_ map or) (content!12442 (t!379034 (_1!36651 lt!2389638))) (content!12442 lt!2389641))))))

(declare-fun e!3934183 () List!65406)

(assert (=> d!2036796 (= lt!2389877 e!3934183)))

(declare-fun c!1189706 () Bool)

(assert (=> d!2036796 (= c!1189706 ((_ is Nil!65282) (t!379034 (_1!36651 lt!2389638))))))

(assert (=> d!2036796 (= (++!14448 (t!379034 (_1!36651 lt!2389638)) lt!2389641) lt!2389877)))

(declare-fun b!6491847 () Bool)

(assert (=> b!6491847 (= e!3934183 (Cons!65282 (h!71730 (t!379034 (_1!36651 lt!2389638))) (++!14448 (t!379034 (t!379034 (_1!36651 lt!2389638))) lt!2389641)))))

(declare-fun b!6491846 () Bool)

(assert (=> b!6491846 (= e!3934183 lt!2389641)))

(assert (= (and d!2036796 c!1189706) b!6491846))

(assert (= (and d!2036796 (not c!1189706)) b!6491847))

(assert (= (and d!2036796 res!2666200) b!6491848))

(assert (= (and b!6491848 res!2666201) b!6491849))

(declare-fun m!7280478 () Bool)

(assert (=> b!6491848 m!7280478))

(declare-fun m!7280480 () Bool)

(assert (=> b!6491848 m!7280480))

(assert (=> b!6491848 m!7280200))

(declare-fun m!7280482 () Bool)

(assert (=> d!2036796 m!7280482))

(declare-fun m!7280484 () Bool)

(assert (=> d!2036796 m!7280484))

(assert (=> d!2036796 m!7280204))

(declare-fun m!7280486 () Bool)

(assert (=> b!6491847 m!7280486))

(assert (=> b!6491567 d!2036796))

(declare-fun d!2036798 () Bool)

(assert (=> d!2036798 (= ($colon$colon!2221 (exprs!6253 lt!2389642) (ite (or c!1189467 c!1189465) (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (h!71731 (exprs!6253 (h!71732 zl!343))))) (Cons!65283 (ite (or c!1189467 c!1189465) (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (h!71731 (exprs!6253 (h!71732 zl!343)))) (exprs!6253 lt!2389642)))))

(assert (=> bm!561949 d!2036798))

(declare-fun d!2036800 () Bool)

(assert (=> d!2036800 (= (head!13214 (exprs!6253 (h!71732 zl!343))) (h!71731 (exprs!6253 (h!71732 zl!343))))))

(assert (=> b!6491386 d!2036800))

(assert (=> bs!1647946 d!2036398))

(declare-fun bs!1647992 () Bool)

(declare-fun d!2036802 () Bool)

(assert (= bs!1647992 (and d!2036802 d!2036540)))

(declare-fun lambda!359545 () Int)

(assert (=> bs!1647992 (= lambda!359545 lambda!359502)))

(declare-fun bs!1647993 () Bool)

(assert (= bs!1647993 (and d!2036802 b!6490629)))

(assert (=> bs!1647993 (= lambda!359545 lambda!359444)))

(declare-fun bs!1647994 () Bool)

(assert (= bs!1647994 (and d!2036802 d!2036426)))

(assert (=> bs!1647994 (= lambda!359545 lambda!359456)))

(declare-fun bs!1647995 () Bool)

(assert (= bs!1647995 (and d!2036802 d!2036572)))

(assert (=> bs!1647995 (= lambda!359545 lambda!359520)))

(declare-fun bs!1647996 () Bool)

(assert (= bs!1647996 (and d!2036802 d!2036562)))

(assert (=> bs!1647996 (= lambda!359545 lambda!359513)))

(declare-fun bs!1647997 () Bool)

(assert (= bs!1647997 (and d!2036802 d!2036632)))

(assert (=> bs!1647997 (= lambda!359545 lambda!359532)))

(declare-fun bs!1647998 () Bool)

(assert (= bs!1647998 (and d!2036802 d!2036558)))

(assert (=> bs!1647998 (= lambda!359545 lambda!359507)))

(assert (=> d!2036802 (= (inv!84169 setElem!44222) (forall!15551 (exprs!6253 setElem!44222) lambda!359545))))

(declare-fun bs!1647999 () Bool)

(assert (= bs!1647999 d!2036802))

(declare-fun m!7280488 () Bool)

(assert (=> bs!1647999 m!7280488))

(assert (=> setNonEmpty!44222 d!2036802))

(declare-fun b!6491850 () Bool)

(declare-fun e!3934186 () Bool)

(assert (=> b!6491850 (= e!3934186 (nullable!6362 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343))))))))))

(declare-fun b!6491851 () Bool)

(declare-fun e!3934185 () (InoxSet Context!11506))

(declare-fun e!3934187 () (InoxSet Context!11506))

(assert (=> b!6491851 (= e!3934185 e!3934187)))

(declare-fun c!1189708 () Bool)

(assert (=> b!6491851 (= c!1189708 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343)))))))))

(declare-fun b!6491852 () Bool)

(declare-fun call!562024 () (InoxSet Context!11506))

(assert (=> b!6491852 (= e!3934187 call!562024)))

(declare-fun bm!562019 () Bool)

(assert (=> bm!562019 (= call!562024 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343)))))) (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343))))))) (h!71730 s!2326)))))

(declare-fun b!6491854 () Bool)

(assert (=> b!6491854 (= e!3934187 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2036804 () Bool)

(declare-fun c!1189707 () Bool)

(assert (=> d!2036804 (= c!1189707 e!3934186)))

(declare-fun res!2666202 () Bool)

(assert (=> d!2036804 (=> (not res!2666202) (not e!3934186))))

(assert (=> d!2036804 (= res!2666202 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343)))))))))

(assert (=> d!2036804 (= (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343)))) (h!71730 s!2326)) e!3934185)))

(declare-fun b!6491853 () Bool)

(assert (=> b!6491853 (= e!3934185 ((_ map or) call!562024 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343))))))) (h!71730 s!2326))))))

(assert (= (and d!2036804 res!2666202) b!6491850))

(assert (= (and d!2036804 c!1189707) b!6491853))

(assert (= (and d!2036804 (not c!1189707)) b!6491851))

(assert (= (and b!6491851 c!1189708) b!6491852))

(assert (= (and b!6491851 (not c!1189708)) b!6491854))

(assert (= (or b!6491853 b!6491852) bm!562019))

(declare-fun m!7280490 () Bool)

(assert (=> b!6491850 m!7280490))

(declare-fun m!7280492 () Bool)

(assert (=> bm!562019 m!7280492))

(declare-fun m!7280494 () Bool)

(assert (=> b!6491853 m!7280494))

(assert (=> b!6490877 d!2036804))

(declare-fun d!2036806 () Bool)

(assert (=> d!2036806 (= (nullable!6362 lt!2389659) (nullableFct!2300 lt!2389659))))

(declare-fun bs!1648000 () Bool)

(assert (= bs!1648000 d!2036806))

(declare-fun m!7280496 () Bool)

(assert (=> bs!1648000 m!7280496))

(assert (=> b!6491212 d!2036806))

(declare-fun b!6491858 () Bool)

(declare-fun e!3934189 () Bool)

(declare-fun lt!2389878 () List!65406)

(assert (=> b!6491858 (= e!3934189 (or (not (= (_2!36651 lt!2389638) Nil!65282)) (= lt!2389878 (t!379034 (_1!36651 lt!2389638)))))))

(declare-fun b!6491857 () Bool)

(declare-fun res!2666204 () Bool)

(assert (=> b!6491857 (=> (not res!2666204) (not e!3934189))))

(assert (=> b!6491857 (= res!2666204 (= (size!40427 lt!2389878) (+ (size!40427 (t!379034 (_1!36651 lt!2389638))) (size!40427 (_2!36651 lt!2389638)))))))

(declare-fun d!2036808 () Bool)

(assert (=> d!2036808 e!3934189))

(declare-fun res!2666203 () Bool)

(assert (=> d!2036808 (=> (not res!2666203) (not e!3934189))))

(assert (=> d!2036808 (= res!2666203 (= (content!12442 lt!2389878) ((_ map or) (content!12442 (t!379034 (_1!36651 lt!2389638))) (content!12442 (_2!36651 lt!2389638)))))))

(declare-fun e!3934188 () List!65406)

(assert (=> d!2036808 (= lt!2389878 e!3934188)))

(declare-fun c!1189709 () Bool)

(assert (=> d!2036808 (= c!1189709 ((_ is Nil!65282) (t!379034 (_1!36651 lt!2389638))))))

(assert (=> d!2036808 (= (++!14448 (t!379034 (_1!36651 lt!2389638)) (_2!36651 lt!2389638)) lt!2389878)))

(declare-fun b!6491856 () Bool)

(assert (=> b!6491856 (= e!3934188 (Cons!65282 (h!71730 (t!379034 (_1!36651 lt!2389638))) (++!14448 (t!379034 (t!379034 (_1!36651 lt!2389638))) (_2!36651 lt!2389638))))))

(declare-fun b!6491855 () Bool)

(assert (=> b!6491855 (= e!3934188 (_2!36651 lt!2389638))))

(assert (= (and d!2036808 c!1189709) b!6491855))

(assert (= (and d!2036808 (not c!1189709)) b!6491856))

(assert (= (and d!2036808 res!2666203) b!6491857))

(assert (= (and b!6491857 res!2666204) b!6491858))

(declare-fun m!7280498 () Bool)

(assert (=> b!6491857 m!7280498))

(assert (=> b!6491857 m!7280480))

(assert (=> b!6491857 m!7279424))

(declare-fun m!7280500 () Bool)

(assert (=> d!2036808 m!7280500))

(assert (=> d!2036808 m!7280484))

(assert (=> d!2036808 m!7279430))

(declare-fun m!7280502 () Bool)

(assert (=> b!6491856 m!7280502))

(assert (=> b!6490959 d!2036808))

(declare-fun b!6491859 () Bool)

(declare-fun res!2666210 () Bool)

(declare-fun e!3934190 () Bool)

(assert (=> b!6491859 (=> res!2666210 e!3934190)))

(declare-fun e!3934194 () Bool)

(assert (=> b!6491859 (= res!2666210 e!3934194)))

(declare-fun res!2666207 () Bool)

(assert (=> b!6491859 (=> (not res!2666207) (not e!3934194))))

(declare-fun lt!2389879 () Bool)

(assert (=> b!6491859 (= res!2666207 lt!2389879)))

(declare-fun b!6491860 () Bool)

(declare-fun res!2666208 () Bool)

(assert (=> b!6491860 (=> (not res!2666208) (not e!3934194))))

(assert (=> b!6491860 (= res!2666208 (isEmpty!37477 (tail!12296 (_2!36651 (get!22637 lt!2389727)))))))

(declare-fun b!6491862 () Bool)

(declare-fun e!3934192 () Bool)

(assert (=> b!6491862 (= e!3934190 e!3934192)))

(declare-fun res!2666211 () Bool)

(assert (=> b!6491862 (=> (not res!2666211) (not e!3934192))))

(assert (=> b!6491862 (= res!2666211 (not lt!2389879))))

(declare-fun bm!562020 () Bool)

(declare-fun call!562025 () Bool)

(assert (=> bm!562020 (= call!562025 (isEmpty!37477 (_2!36651 (get!22637 lt!2389727))))))

(declare-fun b!6491863 () Bool)

(declare-fun e!3934193 () Bool)

(assert (=> b!6491863 (= e!3934193 (not (= (head!13211 (_2!36651 (get!22637 lt!2389727))) (c!1189393 lt!2389631))))))

(declare-fun b!6491864 () Bool)

(declare-fun e!3934196 () Bool)

(assert (=> b!6491864 (= e!3934196 (matchR!8552 (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 (get!22637 lt!2389727)))) (tail!12296 (_2!36651 (get!22637 lt!2389727)))))))

(declare-fun b!6491865 () Bool)

(declare-fun res!2666212 () Bool)

(assert (=> b!6491865 (=> res!2666212 e!3934193)))

(assert (=> b!6491865 (= res!2666212 (not (isEmpty!37477 (tail!12296 (_2!36651 (get!22637 lt!2389727))))))))

(declare-fun b!6491866 () Bool)

(declare-fun res!2666209 () Bool)

(assert (=> b!6491866 (=> res!2666209 e!3934190)))

(assert (=> b!6491866 (= res!2666209 (not ((_ is ElementMatch!16369) lt!2389631)))))

(declare-fun e!3934191 () Bool)

(assert (=> b!6491866 (= e!3934191 e!3934190)))

(declare-fun b!6491867 () Bool)

(declare-fun e!3934195 () Bool)

(assert (=> b!6491867 (= e!3934195 (= lt!2389879 call!562025))))

(declare-fun b!6491868 () Bool)

(assert (=> b!6491868 (= e!3934192 e!3934193)))

(declare-fun res!2666206 () Bool)

(assert (=> b!6491868 (=> res!2666206 e!3934193)))

(assert (=> b!6491868 (= res!2666206 call!562025)))

(declare-fun b!6491869 () Bool)

(assert (=> b!6491869 (= e!3934196 (nullable!6362 lt!2389631))))

(declare-fun b!6491870 () Bool)

(assert (=> b!6491870 (= e!3934194 (= (head!13211 (_2!36651 (get!22637 lt!2389727))) (c!1189393 lt!2389631)))))

(declare-fun d!2036810 () Bool)

(assert (=> d!2036810 e!3934195))

(declare-fun c!1189712 () Bool)

(assert (=> d!2036810 (= c!1189712 ((_ is EmptyExpr!16369) lt!2389631))))

(assert (=> d!2036810 (= lt!2389879 e!3934196)))

(declare-fun c!1189711 () Bool)

(assert (=> d!2036810 (= c!1189711 (isEmpty!37477 (_2!36651 (get!22637 lt!2389727))))))

(assert (=> d!2036810 (validRegex!8105 lt!2389631)))

(assert (=> d!2036810 (= (matchR!8552 lt!2389631 (_2!36651 (get!22637 lt!2389727))) lt!2389879)))

(declare-fun b!6491861 () Bool)

(assert (=> b!6491861 (= e!3934195 e!3934191)))

(declare-fun c!1189710 () Bool)

(assert (=> b!6491861 (= c!1189710 ((_ is EmptyLang!16369) lt!2389631))))

(declare-fun b!6491871 () Bool)

(assert (=> b!6491871 (= e!3934191 (not lt!2389879))))

(declare-fun b!6491872 () Bool)

(declare-fun res!2666205 () Bool)

(assert (=> b!6491872 (=> (not res!2666205) (not e!3934194))))

(assert (=> b!6491872 (= res!2666205 (not call!562025))))

(assert (= (and d!2036810 c!1189711) b!6491869))

(assert (= (and d!2036810 (not c!1189711)) b!6491864))

(assert (= (and d!2036810 c!1189712) b!6491867))

(assert (= (and d!2036810 (not c!1189712)) b!6491861))

(assert (= (and b!6491861 c!1189710) b!6491871))

(assert (= (and b!6491861 (not c!1189710)) b!6491866))

(assert (= (and b!6491866 (not res!2666209)) b!6491859))

(assert (= (and b!6491859 res!2666207) b!6491872))

(assert (= (and b!6491872 res!2666205) b!6491860))

(assert (= (and b!6491860 res!2666208) b!6491870))

(assert (= (and b!6491859 (not res!2666210)) b!6491862))

(assert (= (and b!6491862 res!2666211) b!6491868))

(assert (= (and b!6491868 (not res!2666206)) b!6491865))

(assert (= (and b!6491865 (not res!2666212)) b!6491863))

(assert (= (or b!6491867 b!6491868 b!6491872) bm!562020))

(declare-fun m!7280504 () Bool)

(assert (=> b!6491860 m!7280504))

(assert (=> b!6491860 m!7280504))

(declare-fun m!7280506 () Bool)

(assert (=> b!6491860 m!7280506))

(declare-fun m!7280508 () Bool)

(assert (=> d!2036810 m!7280508))

(assert (=> d!2036810 m!7279404))

(assert (=> b!6491865 m!7280504))

(assert (=> b!6491865 m!7280504))

(assert (=> b!6491865 m!7280506))

(declare-fun m!7280510 () Bool)

(assert (=> b!6491863 m!7280510))

(assert (=> b!6491869 m!7279408))

(assert (=> bm!562020 m!7280508))

(assert (=> b!6491870 m!7280510))

(assert (=> b!6491864 m!7280510))

(assert (=> b!6491864 m!7280510))

(declare-fun m!7280512 () Bool)

(assert (=> b!6491864 m!7280512))

(assert (=> b!6491864 m!7280504))

(assert (=> b!6491864 m!7280512))

(assert (=> b!6491864 m!7280504))

(declare-fun m!7280514 () Bool)

(assert (=> b!6491864 m!7280514))

(assert (=> b!6491120 d!2036810))

(declare-fun d!2036812 () Bool)

(assert (=> d!2036812 (= (get!22637 lt!2389727) (v!52438 lt!2389727))))

(assert (=> b!6491120 d!2036812))

(declare-fun d!2036814 () Bool)

(assert (=> d!2036814 (= (head!13211 lt!2389663) (h!71730 lt!2389663))))

(assert (=> b!6491506 d!2036814))

(declare-fun d!2036816 () Bool)

(declare-fun lambda!359548 () Int)

(declare-fun exists!2618 ((InoxSet Context!11506) Int) Bool)

(assert (=> d!2036816 (= (nullableZipper!2125 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 lt!2389623 lt!2389636)) true)) (exists!2618 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 lt!2389623 lt!2389636)) true) lambda!359548))))

(declare-fun bs!1648001 () Bool)

(assert (= bs!1648001 d!2036816))

(assert (=> bs!1648001 m!7279154))

(declare-fun m!7280516 () Bool)

(assert (=> bs!1648001 m!7280516))

(assert (=> b!6491468 d!2036816))

(declare-fun b!6491873 () Bool)

(declare-fun e!3934198 () Bool)

(assert (=> b!6491873 (= e!3934198 (nullable!6362 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389656)))))))))

(declare-fun b!6491874 () Bool)

(declare-fun e!3934197 () (InoxSet Context!11506))

(declare-fun e!3934199 () (InoxSet Context!11506))

(assert (=> b!6491874 (= e!3934197 e!3934199)))

(declare-fun c!1189716 () Bool)

(assert (=> b!6491874 (= c!1189716 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389656))))))))

(declare-fun b!6491875 () Bool)

(declare-fun call!562026 () (InoxSet Context!11506))

(assert (=> b!6491875 (= e!3934199 call!562026)))

(declare-fun bm!562021 () Bool)

(assert (=> bm!562021 (= call!562026 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389656))))) (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389656)))))) (h!71730 s!2326)))))

(declare-fun b!6491877 () Bool)

(assert (=> b!6491877 (= e!3934199 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2036818 () Bool)

(declare-fun c!1189715 () Bool)

(assert (=> d!2036818 (= c!1189715 e!3934198)))

(declare-fun res!2666213 () Bool)

(assert (=> d!2036818 (=> (not res!2666213) (not e!3934198))))

(assert (=> d!2036818 (= res!2666213 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389656))))))))

(assert (=> d!2036818 (= (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 lt!2389656))) (h!71730 s!2326)) e!3934197)))

(declare-fun b!6491876 () Bool)

(assert (=> b!6491876 (= e!3934197 ((_ map or) call!562026 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389656)))))) (h!71730 s!2326))))))

(assert (= (and d!2036818 res!2666213) b!6491873))

(assert (= (and d!2036818 c!1189715) b!6491876))

(assert (= (and d!2036818 (not c!1189715)) b!6491874))

(assert (= (and b!6491874 c!1189716) b!6491875))

(assert (= (and b!6491874 (not c!1189716)) b!6491877))

(assert (= (or b!6491876 b!6491875) bm!562021))

(declare-fun m!7280518 () Bool)

(assert (=> b!6491873 m!7280518))

(declare-fun m!7280520 () Bool)

(assert (=> bm!562021 m!7280520))

(declare-fun m!7280522 () Bool)

(assert (=> b!6491876 m!7280522))

(assert (=> b!6491228 d!2036818))

(declare-fun d!2036820 () Bool)

(declare-fun c!1189717 () Bool)

(assert (=> d!2036820 (= c!1189717 (isEmpty!37477 (tail!12296 (t!379034 s!2326))))))

(declare-fun e!3934200 () Bool)

(assert (=> d!2036820 (= (matchZipper!2381 (derivationStepZipper!2335 lt!2389628 (head!13211 (t!379034 s!2326))) (tail!12296 (t!379034 s!2326))) e!3934200)))

(declare-fun b!6491878 () Bool)

(assert (=> b!6491878 (= e!3934200 (nullableZipper!2125 (derivationStepZipper!2335 lt!2389628 (head!13211 (t!379034 s!2326)))))))

(declare-fun b!6491879 () Bool)

(assert (=> b!6491879 (= e!3934200 (matchZipper!2381 (derivationStepZipper!2335 (derivationStepZipper!2335 lt!2389628 (head!13211 (t!379034 s!2326))) (head!13211 (tail!12296 (t!379034 s!2326)))) (tail!12296 (tail!12296 (t!379034 s!2326)))))))

(assert (= (and d!2036820 c!1189717) b!6491878))

(assert (= (and d!2036820 (not c!1189717)) b!6491879))

(assert (=> d!2036820 m!7279888))

(declare-fun m!7280524 () Bool)

(assert (=> d!2036820 m!7280524))

(assert (=> b!6491878 m!7280310))

(declare-fun m!7280526 () Bool)

(assert (=> b!6491878 m!7280526))

(assert (=> b!6491879 m!7279888))

(declare-fun m!7280528 () Bool)

(assert (=> b!6491879 m!7280528))

(assert (=> b!6491879 m!7280310))

(assert (=> b!6491879 m!7280528))

(declare-fun m!7280530 () Bool)

(assert (=> b!6491879 m!7280530))

(assert (=> b!6491879 m!7279888))

(declare-fun m!7280532 () Bool)

(assert (=> b!6491879 m!7280532))

(assert (=> b!6491879 m!7280530))

(assert (=> b!6491879 m!7280532))

(declare-fun m!7280534 () Bool)

(assert (=> b!6491879 m!7280534))

(assert (=> b!6491652 d!2036820))

(declare-fun bs!1648002 () Bool)

(declare-fun d!2036822 () Bool)

(assert (= bs!1648002 (and d!2036822 b!6490636)))

(declare-fun lambda!359549 () Int)

(assert (=> bs!1648002 (= (= (head!13211 (t!379034 s!2326)) (h!71730 s!2326)) (= lambda!359549 lambda!359438))))

(declare-fun bs!1648003 () Bool)

(assert (= bs!1648003 (and d!2036822 d!2036402)))

(assert (=> bs!1648003 (= (= (head!13211 (t!379034 s!2326)) (h!71730 s!2326)) (= lambda!359549 lambda!359447))))

(assert (=> d!2036822 true))

(assert (=> d!2036822 (= (derivationStepZipper!2335 lt!2389628 (head!13211 (t!379034 s!2326))) (flatMap!1874 lt!2389628 lambda!359549))))

(declare-fun bs!1648004 () Bool)

(assert (= bs!1648004 d!2036822))

(declare-fun m!7280536 () Bool)

(assert (=> bs!1648004 m!7280536))

(assert (=> b!6491652 d!2036822))

(declare-fun d!2036824 () Bool)

(assert (=> d!2036824 (= (head!13211 (t!379034 s!2326)) (h!71730 (t!379034 s!2326)))))

(assert (=> b!6491652 d!2036824))

(declare-fun d!2036826 () Bool)

(assert (=> d!2036826 (= (tail!12296 (t!379034 s!2326)) (t!379034 (t!379034 s!2326)))))

(assert (=> b!6491652 d!2036826))

(declare-fun bs!1648005 () Bool)

(declare-fun b!6491886 () Bool)

(assert (= bs!1648005 (and b!6491886 b!6490643)))

(declare-fun lambda!359550 () Int)

(assert (=> bs!1648005 (= (and (= (reg!16698 (regOne!33251 lt!2389631)) (reg!16698 (regOne!33250 r!7292))) (= (regOne!33251 lt!2389631) lt!2389631)) (= lambda!359550 lambda!359442))))

(assert (=> bs!1648005 (not (= lambda!359550 lambda!359441))))

(declare-fun bs!1648006 () Bool)

(assert (= bs!1648006 (and b!6491886 d!2036598)))

(assert (=> bs!1648006 (not (= lambda!359550 lambda!359524))))

(declare-fun bs!1648007 () Bool)

(assert (= bs!1648007 (and b!6491886 d!2036464)))

(assert (=> bs!1648007 (not (= lambda!359550 lambda!359480))))

(assert (=> bs!1648005 (not (= lambda!359550 lambda!359443))))

(declare-fun bs!1648008 () Bool)

(assert (= bs!1648008 (and b!6491886 d!2036472)))

(assert (=> bs!1648008 (not (= lambda!359550 lambda!359485))))

(declare-fun bs!1648009 () Bool)

(assert (= bs!1648009 (and b!6491886 d!2036458)))

(assert (=> bs!1648009 (not (= lambda!359550 lambda!359469))))

(declare-fun bs!1648010 () Bool)

(assert (= bs!1648010 (and b!6491886 b!6490750)))

(assert (=> bs!1648010 (not (= lambda!359550 lambda!359453))))

(declare-fun bs!1648011 () Bool)

(assert (= bs!1648011 (and b!6491886 b!6490649)))

(assert (=> bs!1648011 (not (= lambda!359550 lambda!359436))))

(declare-fun bs!1648012 () Bool)

(assert (= bs!1648012 (and b!6491886 b!6490618)))

(assert (=> bs!1648012 (not (= lambda!359550 lambda!359440))))

(declare-fun bs!1648013 () Bool)

(assert (= bs!1648013 (and b!6491886 b!6490748)))

(assert (=> bs!1648013 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33251 lt!2389631)) (reg!16698 r!7292)) (= (regOne!33251 lt!2389631) r!7292)) (= lambda!359550 lambda!359452))))

(declare-fun bs!1648014 () Bool)

(assert (= bs!1648014 (and b!6491886 d!2036524)))

(assert (=> bs!1648014 (not (= lambda!359550 lambda!359499))))

(assert (=> bs!1648009 (= (and (= (reg!16698 (regOne!33251 lt!2389631)) (reg!16698 (regOne!33250 r!7292))) (= (regOne!33251 lt!2389631) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359550 lambda!359470))))

(assert (=> bs!1648012 (not (= lambda!359550 lambda!359439))))

(declare-fun bs!1648015 () Bool)

(assert (= bs!1648015 (and b!6491886 d!2036606)))

(assert (=> bs!1648015 (not (= lambda!359550 lambda!359528))))

(declare-fun bs!1648016 () Bool)

(assert (= bs!1648016 (and b!6491886 d!2036516)))

(assert (=> bs!1648016 (not (= lambda!359550 lambda!359498))))

(declare-fun bs!1648017 () Bool)

(assert (= bs!1648017 (and b!6491886 b!6491179)))

(assert (=> bs!1648017 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33251 lt!2389631)) (reg!16698 lt!2389659)) (= (regOne!33251 lt!2389631) lt!2389659)) (= lambda!359550 lambda!359500))))

(assert (=> bs!1648015 (not (= lambda!359550 lambda!359529))))

(assert (=> bs!1648016 (not (= lambda!359550 lambda!359497))))

(assert (=> bs!1648011 (not (= lambda!359550 lambda!359437))))

(declare-fun bs!1648018 () Bool)

(assert (= bs!1648018 (and b!6491886 b!6490932)))

(assert (=> bs!1648018 (not (= lambda!359550 lambda!359462))))

(assert (=> bs!1648007 (not (= lambda!359550 lambda!359477))))

(declare-fun bs!1648019 () Bool)

(assert (= bs!1648019 (and b!6491886 b!6490930)))

(assert (=> bs!1648019 (= (and (= (reg!16698 (regOne!33251 lt!2389631)) (reg!16698 lt!2389631)) (= (regOne!33251 lt!2389631) lt!2389631)) (= lambda!359550 lambda!359459))))

(declare-fun bs!1648020 () Bool)

(assert (= bs!1648020 (and b!6491886 b!6491181)))

(assert (=> bs!1648020 (not (= lambda!359550 lambda!359501))))

(assert (=> b!6491886 true))

(assert (=> b!6491886 true))

(declare-fun bs!1648021 () Bool)

(declare-fun b!6491888 () Bool)

(assert (= bs!1648021 (and b!6491888 b!6490643)))

(declare-fun lambda!359551 () Int)

(assert (=> bs!1648021 (not (= lambda!359551 lambda!359442))))

(assert (=> bs!1648021 (not (= lambda!359551 lambda!359441))))

(declare-fun bs!1648022 () Bool)

(assert (= bs!1648022 (and b!6491888 d!2036598)))

(assert (=> bs!1648022 (not (= lambda!359551 lambda!359524))))

(declare-fun bs!1648023 () Bool)

(assert (= bs!1648023 (and b!6491888 d!2036464)))

(assert (=> bs!1648023 (= (and (= (regOne!33250 (regOne!33251 lt!2389631)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regOne!33251 lt!2389631)) lt!2389631)) (= lambda!359551 lambda!359480))))

(assert (=> bs!1648021 (= (and (= (regOne!33250 (regOne!33251 lt!2389631)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regOne!33251 lt!2389631)) lt!2389631)) (= lambda!359551 lambda!359443))))

(declare-fun bs!1648024 () Bool)

(assert (= bs!1648024 (and b!6491888 d!2036472)))

(assert (=> bs!1648024 (not (= lambda!359551 lambda!359485))))

(declare-fun bs!1648025 () Bool)

(assert (= bs!1648025 (and b!6491888 b!6490750)))

(assert (=> bs!1648025 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regOne!33251 lt!2389631)) (regOne!33250 r!7292)) (= (regTwo!33250 (regOne!33251 lt!2389631)) (regTwo!33250 r!7292))) (= lambda!359551 lambda!359453))))

(declare-fun bs!1648026 () Bool)

(assert (= bs!1648026 (and b!6491888 b!6490649)))

(assert (=> bs!1648026 (not (= lambda!359551 lambda!359436))))

(declare-fun bs!1648027 () Bool)

(assert (= bs!1648027 (and b!6491888 b!6490618)))

(assert (=> bs!1648027 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regOne!33251 lt!2389631)) lt!2389631) (= (regTwo!33250 (regOne!33251 lt!2389631)) (regTwo!33250 r!7292))) (= lambda!359551 lambda!359440))))

(declare-fun bs!1648028 () Bool)

(assert (= bs!1648028 (and b!6491888 b!6490748)))

(assert (=> bs!1648028 (not (= lambda!359551 lambda!359452))))

(declare-fun bs!1648029 () Bool)

(assert (= bs!1648029 (and b!6491888 d!2036524)))

(assert (=> bs!1648029 (not (= lambda!359551 lambda!359499))))

(declare-fun bs!1648030 () Bool)

(assert (= bs!1648030 (and b!6491888 d!2036458)))

(assert (=> bs!1648030 (not (= lambda!359551 lambda!359470))))

(assert (=> bs!1648027 (not (= lambda!359551 lambda!359439))))

(declare-fun bs!1648031 () Bool)

(assert (= bs!1648031 (and b!6491888 d!2036606)))

(assert (=> bs!1648031 (not (= lambda!359551 lambda!359528))))

(declare-fun bs!1648032 () Bool)

(assert (= bs!1648032 (and b!6491888 d!2036516)))

(assert (=> bs!1648032 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regOne!33251 lt!2389631)) lt!2389631) (= (regTwo!33250 (regOne!33251 lt!2389631)) (regTwo!33250 r!7292))) (= lambda!359551 lambda!359498))))

(declare-fun bs!1648033 () Bool)

(assert (= bs!1648033 (and b!6491888 b!6491179)))

(assert (=> bs!1648033 (not (= lambda!359551 lambda!359500))))

(declare-fun bs!1648034 () Bool)

(assert (= bs!1648034 (and b!6491888 b!6491886)))

(assert (=> bs!1648034 (not (= lambda!359551 lambda!359550))))

(assert (=> bs!1648030 (not (= lambda!359551 lambda!359469))))

(assert (=> bs!1648031 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regOne!33251 lt!2389631)) (regOne!33250 r!7292)) (= (regTwo!33250 (regOne!33251 lt!2389631)) (regTwo!33250 r!7292))) (= lambda!359551 lambda!359529))))

(assert (=> bs!1648032 (not (= lambda!359551 lambda!359497))))

(assert (=> bs!1648026 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regOne!33251 lt!2389631)) (regOne!33250 r!7292)) (= (regTwo!33250 (regOne!33251 lt!2389631)) (regTwo!33250 r!7292))) (= lambda!359551 lambda!359437))))

(declare-fun bs!1648035 () Bool)

(assert (= bs!1648035 (and b!6491888 b!6490932)))

(assert (=> bs!1648035 (= (and (= (regOne!33250 (regOne!33251 lt!2389631)) (regOne!33250 lt!2389631)) (= (regTwo!33250 (regOne!33251 lt!2389631)) (regTwo!33250 lt!2389631))) (= lambda!359551 lambda!359462))))

(assert (=> bs!1648023 (not (= lambda!359551 lambda!359477))))

(declare-fun bs!1648036 () Bool)

(assert (= bs!1648036 (and b!6491888 b!6490930)))

(assert (=> bs!1648036 (not (= lambda!359551 lambda!359459))))

(declare-fun bs!1648037 () Bool)

(assert (= bs!1648037 (and b!6491888 b!6491181)))

(assert (=> bs!1648037 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regOne!33251 lt!2389631)) (regOne!33250 lt!2389659)) (= (regTwo!33250 (regOne!33251 lt!2389631)) (regTwo!33250 lt!2389659))) (= lambda!359551 lambda!359501))))

(assert (=> b!6491888 true))

(assert (=> b!6491888 true))

(declare-fun b!6491880 () Bool)

(declare-fun e!3934206 () Bool)

(declare-fun e!3934207 () Bool)

(assert (=> b!6491880 (= e!3934206 e!3934207)))

(declare-fun res!2666216 () Bool)

(assert (=> b!6491880 (= res!2666216 (not ((_ is EmptyLang!16369) (regOne!33251 lt!2389631))))))

(assert (=> b!6491880 (=> (not res!2666216) (not e!3934207))))

(declare-fun bm!562022 () Bool)

(declare-fun call!562027 () Bool)

(assert (=> bm!562022 (= call!562027 (isEmpty!37477 (_1!36651 lt!2389655)))))

(declare-fun b!6491881 () Bool)

(declare-fun e!3934202 () Bool)

(declare-fun e!3934201 () Bool)

(assert (=> b!6491881 (= e!3934202 e!3934201)))

(declare-fun res!2666215 () Bool)

(assert (=> b!6491881 (= res!2666215 (matchRSpec!3470 (regOne!33251 (regOne!33251 lt!2389631)) (_1!36651 lt!2389655)))))

(assert (=> b!6491881 (=> res!2666215 e!3934201)))

(declare-fun b!6491882 () Bool)

(assert (=> b!6491882 (= e!3934201 (matchRSpec!3470 (regTwo!33251 (regOne!33251 lt!2389631)) (_1!36651 lt!2389655)))))

(declare-fun b!6491883 () Bool)

(declare-fun res!2666214 () Bool)

(declare-fun e!3934204 () Bool)

(assert (=> b!6491883 (=> res!2666214 e!3934204)))

(assert (=> b!6491883 (= res!2666214 call!562027)))

(declare-fun e!3934205 () Bool)

(assert (=> b!6491883 (= e!3934205 e!3934204)))

(declare-fun d!2036828 () Bool)

(declare-fun c!1189718 () Bool)

(assert (=> d!2036828 (= c!1189718 ((_ is EmptyExpr!16369) (regOne!33251 lt!2389631)))))

(assert (=> d!2036828 (= (matchRSpec!3470 (regOne!33251 lt!2389631) (_1!36651 lt!2389655)) e!3934206)))

(declare-fun b!6491884 () Bool)

(declare-fun e!3934203 () Bool)

(assert (=> b!6491884 (= e!3934203 (= (_1!36651 lt!2389655) (Cons!65282 (c!1189393 (regOne!33251 lt!2389631)) Nil!65282)))))

(declare-fun b!6491885 () Bool)

(assert (=> b!6491885 (= e!3934206 call!562027)))

(declare-fun call!562028 () Bool)

(assert (=> b!6491886 (= e!3934204 call!562028)))

(declare-fun b!6491887 () Bool)

(assert (=> b!6491887 (= e!3934202 e!3934205)))

(declare-fun c!1189719 () Bool)

(assert (=> b!6491887 (= c!1189719 ((_ is Star!16369) (regOne!33251 lt!2389631)))))

(assert (=> b!6491888 (= e!3934205 call!562028)))

(declare-fun bm!562023 () Bool)

(assert (=> bm!562023 (= call!562028 (Exists!3439 (ite c!1189719 lambda!359550 lambda!359551)))))

(declare-fun b!6491889 () Bool)

(declare-fun c!1189720 () Bool)

(assert (=> b!6491889 (= c!1189720 ((_ is Union!16369) (regOne!33251 lt!2389631)))))

(assert (=> b!6491889 (= e!3934203 e!3934202)))

(declare-fun b!6491890 () Bool)

(declare-fun c!1189721 () Bool)

(assert (=> b!6491890 (= c!1189721 ((_ is ElementMatch!16369) (regOne!33251 lt!2389631)))))

(assert (=> b!6491890 (= e!3934207 e!3934203)))

(assert (= (and d!2036828 c!1189718) b!6491885))

(assert (= (and d!2036828 (not c!1189718)) b!6491880))

(assert (= (and b!6491880 res!2666216) b!6491890))

(assert (= (and b!6491890 c!1189721) b!6491884))

(assert (= (and b!6491890 (not c!1189721)) b!6491889))

(assert (= (and b!6491889 c!1189720) b!6491881))

(assert (= (and b!6491889 (not c!1189720)) b!6491887))

(assert (= (and b!6491881 (not res!2666215)) b!6491882))

(assert (= (and b!6491887 c!1189719) b!6491883))

(assert (= (and b!6491887 (not c!1189719)) b!6491888))

(assert (= (and b!6491883 (not res!2666214)) b!6491886))

(assert (= (or b!6491886 b!6491888) bm!562023))

(assert (= (or b!6491885 b!6491883) bm!562022))

(assert (=> bm!562022 m!7279248))

(declare-fun m!7280538 () Bool)

(assert (=> b!6491881 m!7280538))

(declare-fun m!7280540 () Bool)

(assert (=> b!6491882 m!7280540))

(declare-fun m!7280542 () Bool)

(assert (=> bm!562023 m!7280542))

(assert (=> b!6490925 d!2036828))

(declare-fun b!6491905 () Bool)

(declare-fun e!3934221 () Bool)

(declare-fun e!3934225 () Bool)

(assert (=> b!6491905 (= e!3934221 e!3934225)))

(declare-fun res!2666227 () Bool)

(declare-fun call!562034 () Bool)

(assert (=> b!6491905 (= res!2666227 call!562034)))

(assert (=> b!6491905 (=> res!2666227 e!3934225)))

(declare-fun b!6491906 () Bool)

(declare-fun e!3934220 () Bool)

(declare-fun e!3934223 () Bool)

(assert (=> b!6491906 (= e!3934220 e!3934223)))

(declare-fun res!2666231 () Bool)

(assert (=> b!6491906 (=> res!2666231 e!3934223)))

(assert (=> b!6491906 (= res!2666231 ((_ is Star!16369) (regOne!33250 (regOne!33250 r!7292))))))

(declare-fun b!6491907 () Bool)

(declare-fun e!3934222 () Bool)

(declare-fun call!562033 () Bool)

(assert (=> b!6491907 (= e!3934222 call!562033)))

(declare-fun b!6491908 () Bool)

(assert (=> b!6491908 (= e!3934223 e!3934221)))

(declare-fun c!1189724 () Bool)

(assert (=> b!6491908 (= c!1189724 ((_ is Union!16369) (regOne!33250 (regOne!33250 r!7292))))))

(declare-fun b!6491909 () Bool)

(assert (=> b!6491909 (= e!3934221 e!3934222)))

(declare-fun res!2666228 () Bool)

(assert (=> b!6491909 (= res!2666228 call!562034)))

(assert (=> b!6491909 (=> (not res!2666228) (not e!3934222))))

(declare-fun bm!562028 () Bool)

(assert (=> bm!562028 (= call!562034 (nullable!6362 (ite c!1189724 (regOne!33251 (regOne!33250 (regOne!33250 r!7292))) (regOne!33250 (regOne!33250 (regOne!33250 r!7292))))))))

(declare-fun b!6491910 () Bool)

(assert (=> b!6491910 (= e!3934225 call!562033)))

(declare-fun d!2036830 () Bool)

(declare-fun res!2666230 () Bool)

(declare-fun e!3934224 () Bool)

(assert (=> d!2036830 (=> res!2666230 e!3934224)))

(assert (=> d!2036830 (= res!2666230 ((_ is EmptyExpr!16369) (regOne!33250 (regOne!33250 r!7292))))))

(assert (=> d!2036830 (= (nullableFct!2300 (regOne!33250 (regOne!33250 r!7292))) e!3934224)))

(declare-fun b!6491911 () Bool)

(assert (=> b!6491911 (= e!3934224 e!3934220)))

(declare-fun res!2666229 () Bool)

(assert (=> b!6491911 (=> (not res!2666229) (not e!3934220))))

(assert (=> b!6491911 (= res!2666229 (and (not ((_ is EmptyLang!16369) (regOne!33250 (regOne!33250 r!7292)))) (not ((_ is ElementMatch!16369) (regOne!33250 (regOne!33250 r!7292))))))))

(declare-fun bm!562029 () Bool)

(assert (=> bm!562029 (= call!562033 (nullable!6362 (ite c!1189724 (regTwo!33251 (regOne!33250 (regOne!33250 r!7292))) (regTwo!33250 (regOne!33250 (regOne!33250 r!7292))))))))

(assert (= (and d!2036830 (not res!2666230)) b!6491911))

(assert (= (and b!6491911 res!2666229) b!6491906))

(assert (= (and b!6491906 (not res!2666231)) b!6491908))

(assert (= (and b!6491908 c!1189724) b!6491905))

(assert (= (and b!6491908 (not c!1189724)) b!6491909))

(assert (= (and b!6491905 (not res!2666227)) b!6491910))

(assert (= (and b!6491909 res!2666228) b!6491907))

(assert (= (or b!6491910 b!6491907) bm!562029))

(assert (= (or b!6491905 b!6491909) bm!562028))

(declare-fun m!7280544 () Bool)

(assert (=> bm!562028 m!7280544))

(declare-fun m!7280546 () Bool)

(assert (=> bm!562029 m!7280546))

(assert (=> d!2036674 d!2036830))

(declare-fun d!2036832 () Bool)

(assert (=> d!2036832 (= (isEmpty!37477 (tail!12296 (_2!36651 lt!2389638))) ((_ is Nil!65282) (tail!12296 (_2!36651 lt!2389638))))))

(assert (=> b!6491134 d!2036832))

(declare-fun d!2036834 () Bool)

(assert (=> d!2036834 (= (tail!12296 (_2!36651 lt!2389638)) (t!379034 (_2!36651 lt!2389638)))))

(assert (=> b!6491134 d!2036834))

(declare-fun bs!1648038 () Bool)

(declare-fun d!2036836 () Bool)

(assert (= bs!1648038 (and d!2036836 d!2036540)))

(declare-fun lambda!359552 () Int)

(assert (=> bs!1648038 (= lambda!359552 lambda!359502)))

(declare-fun bs!1648039 () Bool)

(assert (= bs!1648039 (and d!2036836 b!6490629)))

(assert (=> bs!1648039 (= lambda!359552 lambda!359444)))

(declare-fun bs!1648040 () Bool)

(assert (= bs!1648040 (and d!2036836 d!2036802)))

(assert (=> bs!1648040 (= lambda!359552 lambda!359545)))

(declare-fun bs!1648041 () Bool)

(assert (= bs!1648041 (and d!2036836 d!2036426)))

(assert (=> bs!1648041 (= lambda!359552 lambda!359456)))

(declare-fun bs!1648042 () Bool)

(assert (= bs!1648042 (and d!2036836 d!2036572)))

(assert (=> bs!1648042 (= lambda!359552 lambda!359520)))

(declare-fun bs!1648043 () Bool)

(assert (= bs!1648043 (and d!2036836 d!2036562)))

(assert (=> bs!1648043 (= lambda!359552 lambda!359513)))

(declare-fun bs!1648044 () Bool)

(assert (= bs!1648044 (and d!2036836 d!2036632)))

(assert (=> bs!1648044 (= lambda!359552 lambda!359532)))

(declare-fun bs!1648045 () Bool)

(assert (= bs!1648045 (and d!2036836 d!2036558)))

(assert (=> bs!1648045 (= lambda!359552 lambda!359507)))

(declare-fun b!6491912 () Bool)

(declare-fun e!3934226 () Regex!16369)

(declare-fun e!3934227 () Regex!16369)

(assert (=> b!6491912 (= e!3934226 e!3934227)))

(declare-fun c!1189726 () Bool)

(assert (=> b!6491912 (= c!1189726 ((_ is Cons!65283) (t!379035 (unfocusZipperList!1790 zl!343))))))

(declare-fun b!6491913 () Bool)

(declare-fun e!3934228 () Bool)

(declare-fun lt!2389880 () Regex!16369)

(assert (=> b!6491913 (= e!3934228 (isUnion!1199 lt!2389880))))

(declare-fun b!6491914 () Bool)

(assert (=> b!6491914 (= e!3934228 (= lt!2389880 (head!13214 (t!379035 (unfocusZipperList!1790 zl!343)))))))

(declare-fun b!6491915 () Bool)

(assert (=> b!6491915 (= e!3934226 (h!71731 (t!379035 (unfocusZipperList!1790 zl!343))))))

(declare-fun e!3934230 () Bool)

(assert (=> d!2036836 e!3934230))

(declare-fun res!2666233 () Bool)

(assert (=> d!2036836 (=> (not res!2666233) (not e!3934230))))

(assert (=> d!2036836 (= res!2666233 (validRegex!8105 lt!2389880))))

(assert (=> d!2036836 (= lt!2389880 e!3934226)))

(declare-fun c!1189728 () Bool)

(declare-fun e!3934231 () Bool)

(assert (=> d!2036836 (= c!1189728 e!3934231)))

(declare-fun res!2666232 () Bool)

(assert (=> d!2036836 (=> (not res!2666232) (not e!3934231))))

(assert (=> d!2036836 (= res!2666232 ((_ is Cons!65283) (t!379035 (unfocusZipperList!1790 zl!343))))))

(assert (=> d!2036836 (forall!15551 (t!379035 (unfocusZipperList!1790 zl!343)) lambda!359552)))

(assert (=> d!2036836 (= (generalisedUnion!2213 (t!379035 (unfocusZipperList!1790 zl!343))) lt!2389880)))

(declare-fun b!6491916 () Bool)

(declare-fun e!3934229 () Bool)

(assert (=> b!6491916 (= e!3934230 e!3934229)))

(declare-fun c!1189727 () Bool)

(assert (=> b!6491916 (= c!1189727 (isEmpty!37476 (t!379035 (unfocusZipperList!1790 zl!343))))))

(declare-fun b!6491917 () Bool)

(assert (=> b!6491917 (= e!3934227 EmptyLang!16369)))

(declare-fun b!6491918 () Bool)

(assert (=> b!6491918 (= e!3934231 (isEmpty!37476 (t!379035 (t!379035 (unfocusZipperList!1790 zl!343)))))))

(declare-fun b!6491919 () Bool)

(assert (=> b!6491919 (= e!3934227 (Union!16369 (h!71731 (t!379035 (unfocusZipperList!1790 zl!343))) (generalisedUnion!2213 (t!379035 (t!379035 (unfocusZipperList!1790 zl!343))))))))

(declare-fun b!6491920 () Bool)

(assert (=> b!6491920 (= e!3934229 (isEmptyLang!1769 lt!2389880))))

(declare-fun b!6491921 () Bool)

(assert (=> b!6491921 (= e!3934229 e!3934228)))

(declare-fun c!1189725 () Bool)

(assert (=> b!6491921 (= c!1189725 (isEmpty!37476 (tail!12299 (t!379035 (unfocusZipperList!1790 zl!343)))))))

(assert (= (and d!2036836 res!2666232) b!6491918))

(assert (= (and d!2036836 c!1189728) b!6491915))

(assert (= (and d!2036836 (not c!1189728)) b!6491912))

(assert (= (and b!6491912 c!1189726) b!6491919))

(assert (= (and b!6491912 (not c!1189726)) b!6491917))

(assert (= (and d!2036836 res!2666233) b!6491916))

(assert (= (and b!6491916 c!1189727) b!6491920))

(assert (= (and b!6491916 (not c!1189727)) b!6491921))

(assert (= (and b!6491921 c!1189725) b!6491914))

(assert (= (and b!6491921 (not c!1189725)) b!6491913))

(declare-fun m!7280548 () Bool)

(assert (=> b!6491913 m!7280548))

(declare-fun m!7280550 () Bool)

(assert (=> b!6491914 m!7280550))

(declare-fun m!7280552 () Bool)

(assert (=> b!6491918 m!7280552))

(declare-fun m!7280554 () Bool)

(assert (=> b!6491921 m!7280554))

(assert (=> b!6491921 m!7280554))

(declare-fun m!7280556 () Bool)

(assert (=> b!6491921 m!7280556))

(assert (=> b!6491916 m!7279766))

(declare-fun m!7280558 () Bool)

(assert (=> b!6491919 m!7280558))

(declare-fun m!7280560 () Bool)

(assert (=> b!6491920 m!7280560))

(declare-fun m!7280562 () Bool)

(assert (=> d!2036836 m!7280562))

(declare-fun m!7280564 () Bool)

(assert (=> d!2036836 m!7280564))

(assert (=> b!6491288 d!2036836))

(assert (=> bs!1647947 d!2036444))

(declare-fun d!2036838 () Bool)

(declare-fun res!2666238 () Bool)

(declare-fun e!3934236 () Bool)

(assert (=> d!2036838 (=> res!2666238 e!3934236)))

(assert (=> d!2036838 (= res!2666238 ((_ is Nil!65284) lt!2389687))))

(assert (=> d!2036838 (= (noDuplicate!2188 lt!2389687) e!3934236)))

(declare-fun b!6491926 () Bool)

(declare-fun e!3934237 () Bool)

(assert (=> b!6491926 (= e!3934236 e!3934237)))

(declare-fun res!2666239 () Bool)

(assert (=> b!6491926 (=> (not res!2666239) (not e!3934237))))

(declare-fun contains!20191 (List!65408 Context!11506) Bool)

(assert (=> b!6491926 (= res!2666239 (not (contains!20191 (t!379036 lt!2389687) (h!71732 lt!2389687))))))

(declare-fun b!6491927 () Bool)

(assert (=> b!6491927 (= e!3934237 (noDuplicate!2188 (t!379036 lt!2389687)))))

(assert (= (and d!2036838 (not res!2666238)) b!6491926))

(assert (= (and b!6491926 res!2666239) b!6491927))

(declare-fun m!7280566 () Bool)

(assert (=> b!6491926 m!7280566))

(declare-fun m!7280568 () Bool)

(assert (=> b!6491927 m!7280568))

(assert (=> d!2036446 d!2036838))

(declare-fun d!2036840 () Bool)

(declare-fun e!3934245 () Bool)

(assert (=> d!2036840 e!3934245))

(declare-fun res!2666245 () Bool)

(assert (=> d!2036840 (=> (not res!2666245) (not e!3934245))))

(declare-fun res!2666244 () List!65408)

(assert (=> d!2036840 (= res!2666245 (noDuplicate!2188 res!2666244))))

(declare-fun e!3934244 () Bool)

(assert (=> d!2036840 e!3934244))

(assert (=> d!2036840 (= (choose!48176 z!1189) res!2666244)))

(declare-fun b!6491935 () Bool)

(declare-fun e!3934246 () Bool)

(declare-fun tp!1796817 () Bool)

(assert (=> b!6491935 (= e!3934246 tp!1796817)))

(declare-fun b!6491934 () Bool)

(declare-fun tp!1796818 () Bool)

(assert (=> b!6491934 (= e!3934244 (and (inv!84169 (h!71732 res!2666244)) e!3934246 tp!1796818))))

(declare-fun b!6491936 () Bool)

(assert (=> b!6491936 (= e!3934245 (= (content!12441 res!2666244) z!1189))))

(assert (= b!6491934 b!6491935))

(assert (= (and d!2036840 ((_ is Cons!65284) res!2666244)) b!6491934))

(assert (= (and d!2036840 res!2666245) b!6491936))

(declare-fun m!7280570 () Bool)

(assert (=> d!2036840 m!7280570))

(declare-fun m!7280572 () Bool)

(assert (=> b!6491934 m!7280572))

(declare-fun m!7280574 () Bool)

(assert (=> b!6491936 m!7280574))

(assert (=> d!2036446 d!2036840))

(declare-fun d!2036842 () Bool)

(assert (=> d!2036842 true))

(assert (=> d!2036842 true))

(declare-fun res!2666246 () Bool)

(assert (=> d!2036842 (= (choose!48184 lambda!359439) res!2666246)))

(assert (=> d!2036506 d!2036842))

(declare-fun c!1189732 () Bool)

(declare-fun d!2036844 () Bool)

(assert (=> d!2036844 (= c!1189732 (and ((_ is ElementMatch!16369) (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292))))) (= (c!1189393 (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292))))) (h!71730 s!2326))))))

(declare-fun e!3934251 () (InoxSet Context!11506))

(assert (=> d!2036844 (= (derivationStepZipperDown!1617 (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292)))) (ite c!1189405 lt!2389656 (Context!11507 call!561917)) (h!71730 s!2326)) e!3934251)))

(declare-fun b!6491937 () Bool)

(declare-fun e!3934250 () Bool)

(assert (=> b!6491937 (= e!3934250 (nullable!6362 (regOne!33250 (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292)))))))))

(declare-fun c!1189729 () Bool)

(declare-fun bm!562030 () Bool)

(declare-fun call!562040 () List!65407)

(declare-fun c!1189731 () Bool)

(assert (=> bm!562030 (= call!562040 ($colon$colon!2221 (exprs!6253 (ite c!1189405 lt!2389656 (Context!11507 call!561917))) (ite (or c!1189731 c!1189729) (regTwo!33250 (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292))))) (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292)))))))))

(declare-fun b!6491938 () Bool)

(declare-fun c!1189733 () Bool)

(assert (=> b!6491938 (= c!1189733 ((_ is Star!16369) (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292))))))))

(declare-fun e!3934248 () (InoxSet Context!11506))

(declare-fun e!3934249 () (InoxSet Context!11506))

(assert (=> b!6491938 (= e!3934248 e!3934249)))

(declare-fun bm!562031 () Bool)

(declare-fun call!562037 () List!65407)

(assert (=> bm!562031 (= call!562037 call!562040)))

(declare-fun bm!562032 () Bool)

(declare-fun call!562038 () (InoxSet Context!11506))

(declare-fun call!562035 () (InoxSet Context!11506))

(assert (=> bm!562032 (= call!562038 call!562035)))

(declare-fun bm!562033 () Bool)

(declare-fun call!562039 () (InoxSet Context!11506))

(assert (=> bm!562033 (= call!562039 call!562038)))

(declare-fun c!1189730 () Bool)

(declare-fun call!562036 () (InoxSet Context!11506))

(declare-fun bm!562034 () Bool)

(assert (=> bm!562034 (= call!562036 (derivationStepZipperDown!1617 (ite c!1189730 (regTwo!33251 (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292))))) (regOne!33250 (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292)))))) (ite c!1189730 (ite c!1189405 lt!2389656 (Context!11507 call!561917)) (Context!11507 call!562040)) (h!71730 s!2326)))))

(declare-fun b!6491939 () Bool)

(assert (=> b!6491939 (= e!3934249 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6491940 () Bool)

(assert (=> b!6491940 (= e!3934251 (store ((as const (Array Context!11506 Bool)) false) (ite c!1189405 lt!2389656 (Context!11507 call!561917)) true))))

(declare-fun b!6491941 () Bool)

(assert (=> b!6491941 (= c!1189731 e!3934250)))

(declare-fun res!2666247 () Bool)

(assert (=> b!6491941 (=> (not res!2666247) (not e!3934250))))

(assert (=> b!6491941 (= res!2666247 ((_ is Concat!25214) (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292))))))))

(declare-fun e!3934252 () (InoxSet Context!11506))

(declare-fun e!3934247 () (InoxSet Context!11506))

(assert (=> b!6491941 (= e!3934252 e!3934247)))

(declare-fun bm!562035 () Bool)

(assert (=> bm!562035 (= call!562035 (derivationStepZipperDown!1617 (ite c!1189730 (regOne!33251 (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292))))) (ite c!1189731 (regTwo!33250 (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292))))) (ite c!1189729 (regOne!33250 (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292))))) (reg!16698 (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292)))))))) (ite (or c!1189730 c!1189731) (ite c!1189405 lt!2389656 (Context!11507 call!561917)) (Context!11507 call!562037)) (h!71730 s!2326)))))

(declare-fun b!6491942 () Bool)

(assert (=> b!6491942 (= e!3934249 call!562039)))

(declare-fun b!6491943 () Bool)

(assert (=> b!6491943 (= e!3934252 ((_ map or) call!562035 call!562036))))

(declare-fun b!6491944 () Bool)

(assert (=> b!6491944 (= e!3934247 ((_ map or) call!562036 call!562038))))

(declare-fun b!6491945 () Bool)

(assert (=> b!6491945 (= e!3934248 call!562039)))

(declare-fun b!6491946 () Bool)

(assert (=> b!6491946 (= e!3934251 e!3934252)))

(assert (=> b!6491946 (= c!1189730 ((_ is Union!16369) (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292))))))))

(declare-fun b!6491947 () Bool)

(assert (=> b!6491947 (= e!3934247 e!3934248)))

(assert (=> b!6491947 (= c!1189729 ((_ is Concat!25214) (ite c!1189405 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292))))))))

(assert (= (and d!2036844 c!1189732) b!6491940))

(assert (= (and d!2036844 (not c!1189732)) b!6491946))

(assert (= (and b!6491946 c!1189730) b!6491943))

(assert (= (and b!6491946 (not c!1189730)) b!6491941))

(assert (= (and b!6491941 res!2666247) b!6491937))

(assert (= (and b!6491941 c!1189731) b!6491944))

(assert (= (and b!6491941 (not c!1189731)) b!6491947))

(assert (= (and b!6491947 c!1189729) b!6491945))

(assert (= (and b!6491947 (not c!1189729)) b!6491938))

(assert (= (and b!6491938 c!1189733) b!6491942))

(assert (= (and b!6491938 (not c!1189733)) b!6491939))

(assert (= (or b!6491945 b!6491942) bm!562031))

(assert (= (or b!6491945 b!6491942) bm!562033))

(assert (= (or b!6491944 bm!562031) bm!562030))

(assert (= (or b!6491944 bm!562033) bm!562032))

(assert (= (or b!6491943 b!6491944) bm!562034))

(assert (= (or b!6491943 bm!562032) bm!562035))

(declare-fun m!7280576 () Bool)

(assert (=> b!6491940 m!7280576))

(declare-fun m!7280578 () Bool)

(assert (=> b!6491937 m!7280578))

(declare-fun m!7280580 () Bool)

(assert (=> bm!562035 m!7280580))

(declare-fun m!7280582 () Bool)

(assert (=> bm!562034 m!7280582))

(declare-fun m!7280584 () Bool)

(assert (=> bm!562030 m!7280584))

(assert (=> bm!561911 d!2036844))

(declare-fun b!6491948 () Bool)

(declare-fun res!2666253 () Bool)

(declare-fun e!3934253 () Bool)

(assert (=> b!6491948 (=> res!2666253 e!3934253)))

(declare-fun e!3934257 () Bool)

(assert (=> b!6491948 (= res!2666253 e!3934257)))

(declare-fun res!2666250 () Bool)

(assert (=> b!6491948 (=> (not res!2666250) (not e!3934257))))

(declare-fun lt!2389881 () Bool)

(assert (=> b!6491948 (= res!2666250 lt!2389881)))

(declare-fun b!6491949 () Bool)

(declare-fun res!2666251 () Bool)

(assert (=> b!6491949 (=> (not res!2666251) (not e!3934257))))

(assert (=> b!6491949 (= res!2666251 (isEmpty!37477 (tail!12296 (tail!12296 lt!2389641))))))

(declare-fun b!6491951 () Bool)

(declare-fun e!3934255 () Bool)

(assert (=> b!6491951 (= e!3934253 e!3934255)))

(declare-fun res!2666254 () Bool)

(assert (=> b!6491951 (=> (not res!2666254) (not e!3934255))))

(assert (=> b!6491951 (= res!2666254 (not lt!2389881))))

(declare-fun bm!562036 () Bool)

(declare-fun call!562041 () Bool)

(assert (=> bm!562036 (= call!562041 (isEmpty!37477 (tail!12296 lt!2389641)))))

(declare-fun b!6491952 () Bool)

(declare-fun e!3934256 () Bool)

(assert (=> b!6491952 (= e!3934256 (not (= (head!13211 (tail!12296 lt!2389641)) (c!1189393 (derivativeStep!5064 lt!2389661 (head!13211 lt!2389641))))))))

(declare-fun b!6491953 () Bool)

(declare-fun e!3934259 () Bool)

(assert (=> b!6491953 (= e!3934259 (matchR!8552 (derivativeStep!5064 (derivativeStep!5064 lt!2389661 (head!13211 lt!2389641)) (head!13211 (tail!12296 lt!2389641))) (tail!12296 (tail!12296 lt!2389641))))))

(declare-fun b!6491954 () Bool)

(declare-fun res!2666255 () Bool)

(assert (=> b!6491954 (=> res!2666255 e!3934256)))

(assert (=> b!6491954 (= res!2666255 (not (isEmpty!37477 (tail!12296 (tail!12296 lt!2389641)))))))

(declare-fun b!6491955 () Bool)

(declare-fun res!2666252 () Bool)

(assert (=> b!6491955 (=> res!2666252 e!3934253)))

(assert (=> b!6491955 (= res!2666252 (not ((_ is ElementMatch!16369) (derivativeStep!5064 lt!2389661 (head!13211 lt!2389641)))))))

(declare-fun e!3934254 () Bool)

(assert (=> b!6491955 (= e!3934254 e!3934253)))

(declare-fun b!6491956 () Bool)

(declare-fun e!3934258 () Bool)

(assert (=> b!6491956 (= e!3934258 (= lt!2389881 call!562041))))

(declare-fun b!6491957 () Bool)

(assert (=> b!6491957 (= e!3934255 e!3934256)))

(declare-fun res!2666249 () Bool)

(assert (=> b!6491957 (=> res!2666249 e!3934256)))

(assert (=> b!6491957 (= res!2666249 call!562041)))

(declare-fun b!6491958 () Bool)

(assert (=> b!6491958 (= e!3934259 (nullable!6362 (derivativeStep!5064 lt!2389661 (head!13211 lt!2389641))))))

(declare-fun b!6491959 () Bool)

(assert (=> b!6491959 (= e!3934257 (= (head!13211 (tail!12296 lt!2389641)) (c!1189393 (derivativeStep!5064 lt!2389661 (head!13211 lt!2389641)))))))

(declare-fun d!2036846 () Bool)

(assert (=> d!2036846 e!3934258))

(declare-fun c!1189736 () Bool)

(assert (=> d!2036846 (= c!1189736 ((_ is EmptyExpr!16369) (derivativeStep!5064 lt!2389661 (head!13211 lt!2389641))))))

(assert (=> d!2036846 (= lt!2389881 e!3934259)))

(declare-fun c!1189735 () Bool)

(assert (=> d!2036846 (= c!1189735 (isEmpty!37477 (tail!12296 lt!2389641)))))

(assert (=> d!2036846 (validRegex!8105 (derivativeStep!5064 lt!2389661 (head!13211 lt!2389641)))))

(assert (=> d!2036846 (= (matchR!8552 (derivativeStep!5064 lt!2389661 (head!13211 lt!2389641)) (tail!12296 lt!2389641)) lt!2389881)))

(declare-fun b!6491950 () Bool)

(assert (=> b!6491950 (= e!3934258 e!3934254)))

(declare-fun c!1189734 () Bool)

(assert (=> b!6491950 (= c!1189734 ((_ is EmptyLang!16369) (derivativeStep!5064 lt!2389661 (head!13211 lt!2389641))))))

(declare-fun b!6491960 () Bool)

(assert (=> b!6491960 (= e!3934254 (not lt!2389881))))

(declare-fun b!6491961 () Bool)

(declare-fun res!2666248 () Bool)

(assert (=> b!6491961 (=> (not res!2666248) (not e!3934257))))

(assert (=> b!6491961 (= res!2666248 (not call!562041))))

(assert (= (and d!2036846 c!1189735) b!6491958))

(assert (= (and d!2036846 (not c!1189735)) b!6491953))

(assert (= (and d!2036846 c!1189736) b!6491956))

(assert (= (and d!2036846 (not c!1189736)) b!6491950))

(assert (= (and b!6491950 c!1189734) b!6491960))

(assert (= (and b!6491950 (not c!1189734)) b!6491955))

(assert (= (and b!6491955 (not res!2666252)) b!6491948))

(assert (= (and b!6491948 res!2666250) b!6491961))

(assert (= (and b!6491961 res!2666248) b!6491949))

(assert (= (and b!6491949 res!2666251) b!6491959))

(assert (= (and b!6491948 (not res!2666253)) b!6491951))

(assert (= (and b!6491951 res!2666254) b!6491957))

(assert (= (and b!6491957 (not res!2666249)) b!6491954))

(assert (= (and b!6491954 (not res!2666255)) b!6491952))

(assert (= (or b!6491956 b!6491957 b!6491961) bm!562036))

(assert (=> b!6491949 m!7280140))

(declare-fun m!7280586 () Bool)

(assert (=> b!6491949 m!7280586))

(assert (=> b!6491949 m!7280586))

(declare-fun m!7280588 () Bool)

(assert (=> b!6491949 m!7280588))

(assert (=> d!2036846 m!7280140))

(assert (=> d!2036846 m!7280160))

(assert (=> d!2036846 m!7280164))

(declare-fun m!7280590 () Bool)

(assert (=> d!2036846 m!7280590))

(assert (=> b!6491954 m!7280140))

(assert (=> b!6491954 m!7280586))

(assert (=> b!6491954 m!7280586))

(assert (=> b!6491954 m!7280588))

(assert (=> b!6491952 m!7280140))

(declare-fun m!7280592 () Bool)

(assert (=> b!6491952 m!7280592))

(assert (=> b!6491958 m!7280164))

(declare-fun m!7280594 () Bool)

(assert (=> b!6491958 m!7280594))

(assert (=> bm!562036 m!7280140))

(assert (=> bm!562036 m!7280160))

(assert (=> b!6491959 m!7280140))

(assert (=> b!6491959 m!7280592))

(assert (=> b!6491953 m!7280140))

(assert (=> b!6491953 m!7280592))

(assert (=> b!6491953 m!7280164))

(assert (=> b!6491953 m!7280592))

(declare-fun m!7280596 () Bool)

(assert (=> b!6491953 m!7280596))

(assert (=> b!6491953 m!7280140))

(assert (=> b!6491953 m!7280586))

(assert (=> b!6491953 m!7280596))

(assert (=> b!6491953 m!7280586))

(declare-fun m!7280598 () Bool)

(assert (=> b!6491953 m!7280598))

(assert (=> b!6491540 d!2036846))

(declare-fun b!6491982 () Bool)

(declare-fun e!3934273 () Regex!16369)

(assert (=> b!6491982 (= e!3934273 (ite (= (head!13211 lt!2389641) (c!1189393 lt!2389661)) EmptyExpr!16369 EmptyLang!16369))))

(declare-fun b!6491983 () Bool)

(declare-fun e!3934270 () Regex!16369)

(declare-fun call!562053 () Regex!16369)

(declare-fun call!562050 () Regex!16369)

(assert (=> b!6491983 (= e!3934270 (Union!16369 call!562053 call!562050))))

(declare-fun d!2036848 () Bool)

(declare-fun lt!2389884 () Regex!16369)

(assert (=> d!2036848 (validRegex!8105 lt!2389884)))

(declare-fun e!3934272 () Regex!16369)

(assert (=> d!2036848 (= lt!2389884 e!3934272)))

(declare-fun c!1189749 () Bool)

(assert (=> d!2036848 (= c!1189749 (or ((_ is EmptyExpr!16369) lt!2389661) ((_ is EmptyLang!16369) lt!2389661)))))

(assert (=> d!2036848 (validRegex!8105 lt!2389661)))

(assert (=> d!2036848 (= (derivativeStep!5064 lt!2389661 (head!13211 lt!2389641)) lt!2389884)))

(declare-fun call!562051 () Regex!16369)

(declare-fun b!6491984 () Bool)

(declare-fun e!3934271 () Regex!16369)

(assert (=> b!6491984 (= e!3934271 (Union!16369 (Concat!25214 call!562053 (regTwo!33250 lt!2389661)) call!562051))))

(declare-fun bm!562045 () Bool)

(declare-fun c!1189751 () Bool)

(assert (=> bm!562045 (= call!562053 (derivativeStep!5064 (ite c!1189751 (regOne!33251 lt!2389661) (regOne!33250 lt!2389661)) (head!13211 lt!2389641)))))

(declare-fun bm!562046 () Bool)

(declare-fun call!562052 () Regex!16369)

(assert (=> bm!562046 (= call!562052 call!562050)))

(declare-fun b!6491985 () Bool)

(declare-fun c!1189748 () Bool)

(assert (=> b!6491985 (= c!1189748 (nullable!6362 (regOne!33250 lt!2389661)))))

(declare-fun e!3934274 () Regex!16369)

(assert (=> b!6491985 (= e!3934274 e!3934271)))

(declare-fun c!1189750 () Bool)

(declare-fun bm!562047 () Bool)

(assert (=> bm!562047 (= call!562050 (derivativeStep!5064 (ite c!1189751 (regTwo!33251 lt!2389661) (ite c!1189750 (reg!16698 lt!2389661) (ite c!1189748 (regTwo!33250 lt!2389661) (regOne!33250 lt!2389661)))) (head!13211 lt!2389641)))))

(declare-fun b!6491986 () Bool)

(assert (=> b!6491986 (= e!3934271 (Union!16369 (Concat!25214 call!562051 (regTwo!33250 lt!2389661)) EmptyLang!16369))))

(declare-fun b!6491987 () Bool)

(assert (=> b!6491987 (= e!3934270 e!3934274)))

(assert (=> b!6491987 (= c!1189750 ((_ is Star!16369) lt!2389661))))

(declare-fun b!6491988 () Bool)

(assert (=> b!6491988 (= e!3934272 EmptyLang!16369)))

(declare-fun bm!562048 () Bool)

(assert (=> bm!562048 (= call!562051 call!562052)))

(declare-fun b!6491989 () Bool)

(assert (=> b!6491989 (= e!3934274 (Concat!25214 call!562052 lt!2389661))))

(declare-fun b!6491990 () Bool)

(assert (=> b!6491990 (= c!1189751 ((_ is Union!16369) lt!2389661))))

(assert (=> b!6491990 (= e!3934273 e!3934270)))

(declare-fun b!6491991 () Bool)

(assert (=> b!6491991 (= e!3934272 e!3934273)))

(declare-fun c!1189747 () Bool)

(assert (=> b!6491991 (= c!1189747 ((_ is ElementMatch!16369) lt!2389661))))

(assert (= (and d!2036848 c!1189749) b!6491988))

(assert (= (and d!2036848 (not c!1189749)) b!6491991))

(assert (= (and b!6491991 c!1189747) b!6491982))

(assert (= (and b!6491991 (not c!1189747)) b!6491990))

(assert (= (and b!6491990 c!1189751) b!6491983))

(assert (= (and b!6491990 (not c!1189751)) b!6491987))

(assert (= (and b!6491987 c!1189750) b!6491989))

(assert (= (and b!6491987 (not c!1189750)) b!6491985))

(assert (= (and b!6491985 c!1189748) b!6491984))

(assert (= (and b!6491985 (not c!1189748)) b!6491986))

(assert (= (or b!6491984 b!6491986) bm!562048))

(assert (= (or b!6491989 bm!562048) bm!562046))

(assert (= (or b!6491983 bm!562046) bm!562047))

(assert (= (or b!6491983 b!6491984) bm!562045))

(declare-fun m!7280600 () Bool)

(assert (=> d!2036848 m!7280600))

(assert (=> d!2036848 m!7280130))

(assert (=> bm!562045 m!7280136))

(declare-fun m!7280602 () Bool)

(assert (=> bm!562045 m!7280602))

(declare-fun m!7280604 () Bool)

(assert (=> b!6491985 m!7280604))

(assert (=> bm!562047 m!7280136))

(declare-fun m!7280606 () Bool)

(assert (=> bm!562047 m!7280606))

(assert (=> b!6491540 d!2036848))

(declare-fun d!2036850 () Bool)

(assert (=> d!2036850 (= (head!13211 lt!2389641) (h!71730 lt!2389641))))

(assert (=> b!6491540 d!2036850))

(declare-fun d!2036852 () Bool)

(assert (=> d!2036852 (= (tail!12296 lt!2389641) (t!379034 lt!2389641))))

(assert (=> b!6491540 d!2036852))

(declare-fun d!2036854 () Bool)

(assert (=> d!2036854 (= (nullable!6362 r!7292) (nullableFct!2300 r!7292))))

(declare-fun bs!1648046 () Bool)

(assert (= bs!1648046 d!2036854))

(declare-fun m!7280608 () Bool)

(assert (=> bs!1648046 m!7280608))

(assert (=> b!6490833 d!2036854))

(declare-fun d!2036856 () Bool)

(assert (=> d!2036856 (= (isEmptyExpr!1761 lt!2389773) ((_ is EmptyExpr!16369) lt!2389773))))

(assert (=> b!6491377 d!2036856))

(declare-fun d!2036858 () Bool)

(declare-fun c!1189754 () Bool)

(assert (=> d!2036858 (= c!1189754 ((_ is Nil!65282) lt!2389841))))

(declare-fun e!3934277 () (InoxSet C!33008))

(assert (=> d!2036858 (= (content!12442 lt!2389841) e!3934277)))

(declare-fun b!6491996 () Bool)

(assert (=> b!6491996 (= e!3934277 ((as const (Array C!33008 Bool)) false))))

(declare-fun b!6491997 () Bool)

(assert (=> b!6491997 (= e!3934277 ((_ map or) (store ((as const (Array C!33008 Bool)) false) (h!71730 lt!2389841) true) (content!12442 (t!379034 lt!2389841))))))

(assert (= (and d!2036858 c!1189754) b!6491996))

(assert (= (and d!2036858 (not c!1189754)) b!6491997))

(declare-fun m!7280610 () Bool)

(assert (=> b!6491997 m!7280610))

(declare-fun m!7280612 () Bool)

(assert (=> b!6491997 m!7280612))

(assert (=> d!2036682 d!2036858))

(declare-fun d!2036860 () Bool)

(declare-fun c!1189755 () Bool)

(assert (=> d!2036860 (= c!1189755 ((_ is Nil!65282) (_2!36651 lt!2389638)))))

(declare-fun e!3934278 () (InoxSet C!33008))

(assert (=> d!2036860 (= (content!12442 (_2!36651 lt!2389638)) e!3934278)))

(declare-fun b!6491998 () Bool)

(assert (=> b!6491998 (= e!3934278 ((as const (Array C!33008 Bool)) false))))

(declare-fun b!6491999 () Bool)

(assert (=> b!6491999 (= e!3934278 ((_ map or) (store ((as const (Array C!33008 Bool)) false) (h!71730 (_2!36651 lt!2389638)) true) (content!12442 (t!379034 (_2!36651 lt!2389638)))))))

(assert (= (and d!2036860 c!1189755) b!6491998))

(assert (= (and d!2036860 (not c!1189755)) b!6491999))

(declare-fun m!7280614 () Bool)

(assert (=> b!6491999 m!7280614))

(declare-fun m!7280616 () Bool)

(assert (=> b!6491999 m!7280616))

(assert (=> d!2036682 d!2036860))

(declare-fun d!2036862 () Bool)

(declare-fun c!1189756 () Bool)

(assert (=> d!2036862 (= c!1189756 ((_ is Nil!65282) (_2!36651 lt!2389655)))))

(declare-fun e!3934279 () (InoxSet C!33008))

(assert (=> d!2036862 (= (content!12442 (_2!36651 lt!2389655)) e!3934279)))

(declare-fun b!6492000 () Bool)

(assert (=> b!6492000 (= e!3934279 ((as const (Array C!33008 Bool)) false))))

(declare-fun b!6492001 () Bool)

(assert (=> b!6492001 (= e!3934279 ((_ map or) (store ((as const (Array C!33008 Bool)) false) (h!71730 (_2!36651 lt!2389655)) true) (content!12442 (t!379034 (_2!36651 lt!2389655)))))))

(assert (= (and d!2036862 c!1189756) b!6492000))

(assert (= (and d!2036862 (not c!1189756)) b!6492001))

(declare-fun m!7280618 () Bool)

(assert (=> b!6492001 m!7280618))

(declare-fun m!7280620 () Bool)

(assert (=> b!6492001 m!7280620))

(assert (=> d!2036682 d!2036862))

(declare-fun d!2036864 () Bool)

(assert (=> d!2036864 (= (head!13211 (_2!36651 lt!2389655)) (h!71730 (_2!36651 lt!2389655)))))

(assert (=> b!6491315 d!2036864))

(assert (=> d!2036424 d!2036412))

(assert (=> d!2036424 d!2036406))

(declare-fun d!2036866 () Bool)

(assert (=> d!2036866 (= (matchR!8552 r!7292 s!2326) (matchRSpec!3470 r!7292 s!2326))))

(assert (=> d!2036866 true))

(declare-fun _$88!5184 () Unit!158807)

(assert (=> d!2036866 (= (choose!48175 r!7292 s!2326) _$88!5184)))

(declare-fun bs!1648047 () Bool)

(assert (= bs!1648047 d!2036866))

(assert (=> bs!1648047 m!7279120))

(assert (=> bs!1648047 m!7279118))

(assert (=> d!2036424 d!2036866))

(assert (=> d!2036424 d!2036692))

(declare-fun b!6492002 () Bool)

(declare-fun e!3934281 () Bool)

(assert (=> b!6492002 (= e!3934281 (nullable!6362 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389642)))))))))

(declare-fun b!6492003 () Bool)

(declare-fun e!3934280 () (InoxSet Context!11506))

(declare-fun e!3934282 () (InoxSet Context!11506))

(assert (=> b!6492003 (= e!3934280 e!3934282)))

(declare-fun c!1189758 () Bool)

(assert (=> b!6492003 (= c!1189758 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389642))))))))

(declare-fun b!6492004 () Bool)

(declare-fun call!562054 () (InoxSet Context!11506))

(assert (=> b!6492004 (= e!3934282 call!562054)))

(declare-fun bm!562049 () Bool)

(assert (=> bm!562049 (= call!562054 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389642))))) (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389642)))))) (h!71730 s!2326)))))

(declare-fun b!6492006 () Bool)

(assert (=> b!6492006 (= e!3934282 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2036868 () Bool)

(declare-fun c!1189757 () Bool)

(assert (=> d!2036868 (= c!1189757 e!3934281)))

(declare-fun res!2666256 () Bool)

(assert (=> d!2036868 (=> (not res!2666256) (not e!3934281))))

(assert (=> d!2036868 (= res!2666256 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389642))))))))

(assert (=> d!2036868 (= (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 lt!2389642))) (h!71730 s!2326)) e!3934280)))

(declare-fun b!6492005 () Bool)

(assert (=> b!6492005 (= e!3934280 ((_ map or) call!562054 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389642)))))) (h!71730 s!2326))))))

(assert (= (and d!2036868 res!2666256) b!6492002))

(assert (= (and d!2036868 c!1189757) b!6492005))

(assert (= (and d!2036868 (not c!1189757)) b!6492003))

(assert (= (and b!6492003 c!1189758) b!6492004))

(assert (= (and b!6492003 (not c!1189758)) b!6492006))

(assert (= (or b!6492005 b!6492004) bm!562049))

(declare-fun m!7280622 () Bool)

(assert (=> b!6492002 m!7280622))

(declare-fun m!7280624 () Bool)

(assert (=> bm!562049 m!7280624))

(declare-fun m!7280626 () Bool)

(assert (=> b!6492005 m!7280626))

(assert (=> b!6490851 d!2036868))

(declare-fun d!2036870 () Bool)

(assert (=> d!2036870 (= (Exists!3439 (ite c!1189486 lambda!359459 lambda!359462)) (choose!48184 (ite c!1189486 lambda!359459 lambda!359462)))))

(declare-fun bs!1648048 () Bool)

(assert (= bs!1648048 d!2036870))

(declare-fun m!7280628 () Bool)

(assert (=> bs!1648048 m!7280628))

(assert (=> bm!561959 d!2036870))

(declare-fun d!2036872 () Bool)

(declare-fun res!2666261 () Bool)

(declare-fun e!3934287 () Bool)

(assert (=> d!2036872 (=> res!2666261 e!3934287)))

(assert (=> d!2036872 (= res!2666261 ((_ is Nil!65283) (exprs!6253 setElem!44219)))))

(assert (=> d!2036872 (= (forall!15551 (exprs!6253 setElem!44219) lambda!359502) e!3934287)))

(declare-fun b!6492011 () Bool)

(declare-fun e!3934288 () Bool)

(assert (=> b!6492011 (= e!3934287 e!3934288)))

(declare-fun res!2666262 () Bool)

(assert (=> b!6492011 (=> (not res!2666262) (not e!3934288))))

(declare-fun dynLambda!25932 (Int Regex!16369) Bool)

(assert (=> b!6492011 (= res!2666262 (dynLambda!25932 lambda!359502 (h!71731 (exprs!6253 setElem!44219))))))

(declare-fun b!6492012 () Bool)

(assert (=> b!6492012 (= e!3934288 (forall!15551 (t!379035 (exprs!6253 setElem!44219)) lambda!359502))))

(assert (= (and d!2036872 (not res!2666261)) b!6492011))

(assert (= (and b!6492011 res!2666262) b!6492012))

(declare-fun b_lambda!245761 () Bool)

(assert (=> (not b_lambda!245761) (not b!6492011)))

(declare-fun m!7280630 () Bool)

(assert (=> b!6492011 m!7280630))

(declare-fun m!7280632 () Bool)

(assert (=> b!6492012 m!7280632))

(assert (=> d!2036540 d!2036872))

(declare-fun d!2036874 () Bool)

(assert (=> d!2036874 (= (nullable!6362 (h!71731 (exprs!6253 lt!2389611))) (nullableFct!2300 (h!71731 (exprs!6253 lt!2389611))))))

(declare-fun bs!1648049 () Bool)

(assert (= bs!1648049 d!2036874))

(declare-fun m!7280634 () Bool)

(assert (=> bs!1648049 m!7280634))

(assert (=> b!6490703 d!2036874))

(declare-fun d!2036876 () Bool)

(assert (=> d!2036876 (= (isEmpty!37477 lt!2389663) ((_ is Nil!65282) lt!2389663))))

(assert (=> d!2036644 d!2036876))

(declare-fun b!6492013 () Bool)

(declare-fun res!2666263 () Bool)

(declare-fun e!3934290 () Bool)

(assert (=> b!6492013 (=> res!2666263 e!3934290)))

(assert (=> b!6492013 (= res!2666263 (not ((_ is Concat!25214) lt!2389659)))))

(declare-fun e!3934292 () Bool)

(assert (=> b!6492013 (= e!3934292 e!3934290)))

(declare-fun b!6492014 () Bool)

(declare-fun e!3934294 () Bool)

(assert (=> b!6492014 (= e!3934290 e!3934294)))

(declare-fun res!2666267 () Bool)

(assert (=> b!6492014 (=> (not res!2666267) (not e!3934294))))

(declare-fun call!562055 () Bool)

(assert (=> b!6492014 (= res!2666267 call!562055)))

(declare-fun b!6492015 () Bool)

(declare-fun call!562057 () Bool)

(assert (=> b!6492015 (= e!3934294 call!562057)))

(declare-fun bm!562050 () Bool)

(declare-fun c!1189760 () Bool)

(assert (=> bm!562050 (= call!562057 (validRegex!8105 (ite c!1189760 (regTwo!33251 lt!2389659) (regTwo!33250 lt!2389659))))))

(declare-fun b!6492016 () Bool)

(declare-fun e!3934291 () Bool)

(declare-fun e!3934295 () Bool)

(assert (=> b!6492016 (= e!3934291 e!3934295)))

(declare-fun res!2666266 () Bool)

(assert (=> b!6492016 (= res!2666266 (not (nullable!6362 (reg!16698 lt!2389659))))))

(assert (=> b!6492016 (=> (not res!2666266) (not e!3934295))))

(declare-fun b!6492017 () Bool)

(declare-fun e!3934289 () Bool)

(assert (=> b!6492017 (= e!3934289 e!3934291)))

(declare-fun c!1189759 () Bool)

(assert (=> b!6492017 (= c!1189759 ((_ is Star!16369) lt!2389659))))

(declare-fun b!6492018 () Bool)

(declare-fun call!562056 () Bool)

(assert (=> b!6492018 (= e!3934295 call!562056)))

(declare-fun b!6492019 () Bool)

(assert (=> b!6492019 (= e!3934291 e!3934292)))

(assert (=> b!6492019 (= c!1189760 ((_ is Union!16369) lt!2389659))))

(declare-fun d!2036878 () Bool)

(declare-fun res!2666264 () Bool)

(assert (=> d!2036878 (=> res!2666264 e!3934289)))

(assert (=> d!2036878 (= res!2666264 ((_ is ElementMatch!16369) lt!2389659))))

(assert (=> d!2036878 (= (validRegex!8105 lt!2389659) e!3934289)))

(declare-fun bm!562051 () Bool)

(assert (=> bm!562051 (= call!562056 (validRegex!8105 (ite c!1189759 (reg!16698 lt!2389659) (ite c!1189760 (regOne!33251 lt!2389659) (regOne!33250 lt!2389659)))))))

(declare-fun b!6492020 () Bool)

(declare-fun e!3934293 () Bool)

(assert (=> b!6492020 (= e!3934293 call!562057)))

(declare-fun b!6492021 () Bool)

(declare-fun res!2666265 () Bool)

(assert (=> b!6492021 (=> (not res!2666265) (not e!3934293))))

(assert (=> b!6492021 (= res!2666265 call!562055)))

(assert (=> b!6492021 (= e!3934292 e!3934293)))

(declare-fun bm!562052 () Bool)

(assert (=> bm!562052 (= call!562055 call!562056)))

(assert (= (and d!2036878 (not res!2666264)) b!6492017))

(assert (= (and b!6492017 c!1189759) b!6492016))

(assert (= (and b!6492017 (not c!1189759)) b!6492019))

(assert (= (and b!6492016 res!2666266) b!6492018))

(assert (= (and b!6492019 c!1189760) b!6492021))

(assert (= (and b!6492019 (not c!1189760)) b!6492013))

(assert (= (and b!6492021 res!2666265) b!6492020))

(assert (= (and b!6492013 (not res!2666263)) b!6492014))

(assert (= (and b!6492014 res!2666267) b!6492015))

(assert (= (or b!6492020 b!6492015) bm!562050))

(assert (= (or b!6492021 b!6492014) bm!562052))

(assert (= (or b!6492018 bm!562052) bm!562051))

(declare-fun m!7280636 () Bool)

(assert (=> bm!562050 m!7280636))

(declare-fun m!7280638 () Bool)

(assert (=> b!6492016 m!7280638))

(declare-fun m!7280640 () Bool)

(assert (=> bm!562051 m!7280640))

(assert (=> d!2036644 d!2036878))

(declare-fun d!2036880 () Bool)

(assert (=> d!2036880 true))

(assert (=> d!2036880 true))

(declare-fun res!2666268 () Bool)

(assert (=> d!2036880 (= (choose!48184 lambda!359436) res!2666268)))

(assert (=> d!2036596 d!2036880))

(declare-fun b!6492022 () Bool)

(declare-fun res!2666269 () Bool)

(declare-fun e!3934297 () Bool)

(assert (=> b!6492022 (=> res!2666269 e!3934297)))

(assert (=> b!6492022 (= res!2666269 (not ((_ is Concat!25214) lt!2389661)))))

(declare-fun e!3934299 () Bool)

(assert (=> b!6492022 (= e!3934299 e!3934297)))

(declare-fun b!6492023 () Bool)

(declare-fun e!3934301 () Bool)

(assert (=> b!6492023 (= e!3934297 e!3934301)))

(declare-fun res!2666273 () Bool)

(assert (=> b!6492023 (=> (not res!2666273) (not e!3934301))))

(declare-fun call!562058 () Bool)

(assert (=> b!6492023 (= res!2666273 call!562058)))

(declare-fun b!6492024 () Bool)

(declare-fun call!562060 () Bool)

(assert (=> b!6492024 (= e!3934301 call!562060)))

(declare-fun bm!562053 () Bool)

(declare-fun c!1189762 () Bool)

(assert (=> bm!562053 (= call!562060 (validRegex!8105 (ite c!1189762 (regTwo!33251 lt!2389661) (regTwo!33250 lt!2389661))))))

(declare-fun b!6492025 () Bool)

(declare-fun e!3934298 () Bool)

(declare-fun e!3934302 () Bool)

(assert (=> b!6492025 (= e!3934298 e!3934302)))

(declare-fun res!2666272 () Bool)

(assert (=> b!6492025 (= res!2666272 (not (nullable!6362 (reg!16698 lt!2389661))))))

(assert (=> b!6492025 (=> (not res!2666272) (not e!3934302))))

(declare-fun b!6492026 () Bool)

(declare-fun e!3934296 () Bool)

(assert (=> b!6492026 (= e!3934296 e!3934298)))

(declare-fun c!1189761 () Bool)

(assert (=> b!6492026 (= c!1189761 ((_ is Star!16369) lt!2389661))))

(declare-fun b!6492027 () Bool)

(declare-fun call!562059 () Bool)

(assert (=> b!6492027 (= e!3934302 call!562059)))

(declare-fun b!6492028 () Bool)

(assert (=> b!6492028 (= e!3934298 e!3934299)))

(assert (=> b!6492028 (= c!1189762 ((_ is Union!16369) lt!2389661))))

(declare-fun d!2036882 () Bool)

(declare-fun res!2666270 () Bool)

(assert (=> d!2036882 (=> res!2666270 e!3934296)))

(assert (=> d!2036882 (= res!2666270 ((_ is ElementMatch!16369) lt!2389661))))

(assert (=> d!2036882 (= (validRegex!8105 lt!2389661) e!3934296)))

(declare-fun bm!562054 () Bool)

(assert (=> bm!562054 (= call!562059 (validRegex!8105 (ite c!1189761 (reg!16698 lt!2389661) (ite c!1189762 (regOne!33251 lt!2389661) (regOne!33250 lt!2389661)))))))

(declare-fun b!6492029 () Bool)

(declare-fun e!3934300 () Bool)

(assert (=> b!6492029 (= e!3934300 call!562060)))

(declare-fun b!6492030 () Bool)

(declare-fun res!2666271 () Bool)

(assert (=> b!6492030 (=> (not res!2666271) (not e!3934300))))

(assert (=> b!6492030 (= res!2666271 call!562058)))

(assert (=> b!6492030 (= e!3934299 e!3934300)))

(declare-fun bm!562055 () Bool)

(assert (=> bm!562055 (= call!562058 call!562059)))

(assert (= (and d!2036882 (not res!2666270)) b!6492026))

(assert (= (and b!6492026 c!1189761) b!6492025))

(assert (= (and b!6492026 (not c!1189761)) b!6492028))

(assert (= (and b!6492025 res!2666272) b!6492027))

(assert (= (and b!6492028 c!1189762) b!6492030))

(assert (= (and b!6492028 (not c!1189762)) b!6492022))

(assert (= (and b!6492030 res!2666271) b!6492029))

(assert (= (and b!6492022 (not res!2666269)) b!6492023))

(assert (= (and b!6492023 res!2666273) b!6492024))

(assert (= (or b!6492029 b!6492024) bm!562053))

(assert (= (or b!6492030 b!6492023) bm!562055))

(assert (= (or b!6492027 bm!562055) bm!562054))

(declare-fun m!7280642 () Bool)

(assert (=> bm!562053 m!7280642))

(declare-fun m!7280644 () Bool)

(assert (=> b!6492025 m!7280644))

(declare-fun m!7280646 () Bool)

(assert (=> bm!562054 m!7280646))

(assert (=> b!6491534 d!2036882))

(declare-fun lt!2389885 () List!65406)

(declare-fun e!3934304 () Bool)

(declare-fun b!6492034 () Bool)

(assert (=> b!6492034 (= e!3934304 (or (not (= (_2!36651 lt!2389655) Nil!65282)) (= lt!2389885 (t!379034 (_2!36651 lt!2389638)))))))

(declare-fun b!6492033 () Bool)

(declare-fun res!2666275 () Bool)

(assert (=> b!6492033 (=> (not res!2666275) (not e!3934304))))

(assert (=> b!6492033 (= res!2666275 (= (size!40427 lt!2389885) (+ (size!40427 (t!379034 (_2!36651 lt!2389638))) (size!40427 (_2!36651 lt!2389655)))))))

(declare-fun d!2036884 () Bool)

(assert (=> d!2036884 e!3934304))

(declare-fun res!2666274 () Bool)

(assert (=> d!2036884 (=> (not res!2666274) (not e!3934304))))

(assert (=> d!2036884 (= res!2666274 (= (content!12442 lt!2389885) ((_ map or) (content!12442 (t!379034 (_2!36651 lt!2389638))) (content!12442 (_2!36651 lt!2389655)))))))

(declare-fun e!3934303 () List!65406)

(assert (=> d!2036884 (= lt!2389885 e!3934303)))

(declare-fun c!1189763 () Bool)

(assert (=> d!2036884 (= c!1189763 ((_ is Nil!65282) (t!379034 (_2!36651 lt!2389638))))))

(assert (=> d!2036884 (= (++!14448 (t!379034 (_2!36651 lt!2389638)) (_2!36651 lt!2389655)) lt!2389885)))

(declare-fun b!6492032 () Bool)

(assert (=> b!6492032 (= e!3934303 (Cons!65282 (h!71730 (t!379034 (_2!36651 lt!2389638))) (++!14448 (t!379034 (t!379034 (_2!36651 lt!2389638))) (_2!36651 lt!2389655))))))

(declare-fun b!6492031 () Bool)

(assert (=> b!6492031 (= e!3934303 (_2!36651 lt!2389655))))

(assert (= (and d!2036884 c!1189763) b!6492031))

(assert (= (and d!2036884 (not c!1189763)) b!6492032))

(assert (= (and d!2036884 res!2666274) b!6492033))

(assert (= (and b!6492033 res!2666275) b!6492034))

(declare-fun m!7280648 () Bool)

(assert (=> b!6492033 m!7280648))

(declare-fun m!7280650 () Bool)

(assert (=> b!6492033 m!7280650))

(assert (=> b!6492033 m!7279642))

(declare-fun m!7280652 () Bool)

(assert (=> d!2036884 m!7280652))

(assert (=> d!2036884 m!7280616))

(assert (=> d!2036884 m!7279648))

(declare-fun m!7280654 () Bool)

(assert (=> b!6492032 m!7280654))

(assert (=> b!6491589 d!2036884))

(declare-fun d!2036886 () Bool)

(assert (=> d!2036886 (= (isEmpty!37477 s!2326) ((_ is Nil!65282) s!2326))))

(assert (=> bm!561920 d!2036886))

(declare-fun d!2036888 () Bool)

(assert (=> d!2036888 (= (nullable!6362 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (nullableFct!2300 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))))))

(declare-fun bs!1648050 () Bool)

(assert (= bs!1648050 d!2036888))

(declare-fun m!7280656 () Bool)

(assert (=> bs!1648050 m!7280656))

(assert (=> b!6490869 d!2036888))

(declare-fun d!2036890 () Bool)

(assert (=> d!2036890 true))

(assert (=> d!2036890 true))

(declare-fun res!2666276 () Bool)

(assert (=> d!2036890 (= (choose!48184 lambda!359437) res!2666276)))

(assert (=> d!2036594 d!2036890))

(declare-fun d!2036892 () Bool)

(assert (=> d!2036892 (= (nullable!6362 (h!71731 (exprs!6253 lt!2389610))) (nullableFct!2300 (h!71731 (exprs!6253 lt!2389610))))))

(declare-fun bs!1648051 () Bool)

(assert (= bs!1648051 d!2036892))

(declare-fun m!7280658 () Bool)

(assert (=> bs!1648051 m!7280658))

(assert (=> b!6491230 d!2036892))

(declare-fun d!2036894 () Bool)

(declare-fun c!1189767 () Bool)

(assert (=> d!2036894 (= c!1189767 (and ((_ is ElementMatch!16369) (h!71731 (exprs!6253 (h!71732 zl!343)))) (= (c!1189393 (h!71731 (exprs!6253 (h!71732 zl!343)))) (h!71730 s!2326))))))

(declare-fun e!3934309 () (InoxSet Context!11506))

(assert (=> d!2036894 (= (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (h!71732 zl!343))) (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343)))) (h!71730 s!2326)) e!3934309)))

(declare-fun b!6492035 () Bool)

(declare-fun e!3934308 () Bool)

(assert (=> b!6492035 (= e!3934308 (nullable!6362 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343))))))))

(declare-fun c!1189766 () Bool)

(declare-fun bm!562056 () Bool)

(declare-fun call!562066 () List!65407)

(declare-fun c!1189764 () Bool)

(assert (=> bm!562056 (= call!562066 ($colon$colon!2221 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343))))) (ite (or c!1189766 c!1189764) (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (h!71731 (exprs!6253 (h!71732 zl!343))))))))

(declare-fun b!6492036 () Bool)

(declare-fun c!1189768 () Bool)

(assert (=> b!6492036 (= c!1189768 ((_ is Star!16369) (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun e!3934306 () (InoxSet Context!11506))

(declare-fun e!3934307 () (InoxSet Context!11506))

(assert (=> b!6492036 (= e!3934306 e!3934307)))

(declare-fun bm!562057 () Bool)

(declare-fun call!562063 () List!65407)

(assert (=> bm!562057 (= call!562063 call!562066)))

(declare-fun bm!562058 () Bool)

(declare-fun call!562064 () (InoxSet Context!11506))

(declare-fun call!562061 () (InoxSet Context!11506))

(assert (=> bm!562058 (= call!562064 call!562061)))

(declare-fun bm!562059 () Bool)

(declare-fun call!562065 () (InoxSet Context!11506))

(assert (=> bm!562059 (= call!562065 call!562064)))

(declare-fun bm!562060 () Bool)

(declare-fun c!1189765 () Bool)

(declare-fun call!562062 () (InoxSet Context!11506))

(assert (=> bm!562060 (= call!562062 (derivationStepZipperDown!1617 (ite c!1189765 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343))))) (ite c!1189765 (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343)))) (Context!11507 call!562066)) (h!71730 s!2326)))))

(declare-fun b!6492037 () Bool)

(assert (=> b!6492037 (= e!3934307 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6492038 () Bool)

(assert (=> b!6492038 (= e!3934309 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343)))) true))))

(declare-fun b!6492039 () Bool)

(assert (=> b!6492039 (= c!1189766 e!3934308)))

(declare-fun res!2666277 () Bool)

(assert (=> b!6492039 (=> (not res!2666277) (not e!3934308))))

(assert (=> b!6492039 (= res!2666277 ((_ is Concat!25214) (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun e!3934310 () (InoxSet Context!11506))

(declare-fun e!3934305 () (InoxSet Context!11506))

(assert (=> b!6492039 (= e!3934310 e!3934305)))

(declare-fun bm!562061 () Bool)

(assert (=> bm!562061 (= call!562061 (derivationStepZipperDown!1617 (ite c!1189765 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189766 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189764 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343))))))) (ite (or c!1189765 c!1189766) (Context!11507 (t!379035 (exprs!6253 (h!71732 zl!343)))) (Context!11507 call!562063)) (h!71730 s!2326)))))

(declare-fun b!6492040 () Bool)

(assert (=> b!6492040 (= e!3934307 call!562065)))

(declare-fun b!6492041 () Bool)

(assert (=> b!6492041 (= e!3934310 ((_ map or) call!562061 call!562062))))

(declare-fun b!6492042 () Bool)

(assert (=> b!6492042 (= e!3934305 ((_ map or) call!562062 call!562064))))

(declare-fun b!6492043 () Bool)

(assert (=> b!6492043 (= e!3934306 call!562065)))

(declare-fun b!6492044 () Bool)

(assert (=> b!6492044 (= e!3934309 e!3934310)))

(assert (=> b!6492044 (= c!1189765 ((_ is Union!16369) (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6492045 () Bool)

(assert (=> b!6492045 (= e!3934305 e!3934306)))

(assert (=> b!6492045 (= c!1189764 ((_ is Concat!25214) (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(assert (= (and d!2036894 c!1189767) b!6492038))

(assert (= (and d!2036894 (not c!1189767)) b!6492044))

(assert (= (and b!6492044 c!1189765) b!6492041))

(assert (= (and b!6492044 (not c!1189765)) b!6492039))

(assert (= (and b!6492039 res!2666277) b!6492035))

(assert (= (and b!6492039 c!1189766) b!6492042))

(assert (= (and b!6492039 (not c!1189766)) b!6492045))

(assert (= (and b!6492045 c!1189764) b!6492043))

(assert (= (and b!6492045 (not c!1189764)) b!6492036))

(assert (= (and b!6492036 c!1189768) b!6492040))

(assert (= (and b!6492036 (not c!1189768)) b!6492037))

(assert (= (or b!6492043 b!6492040) bm!562057))

(assert (= (or b!6492043 b!6492040) bm!562059))

(assert (= (or b!6492042 bm!562057) bm!562056))

(assert (= (or b!6492042 bm!562059) bm!562058))

(assert (= (or b!6492041 b!6492042) bm!562060))

(assert (= (or b!6492041 bm!562058) bm!562061))

(declare-fun m!7280660 () Bool)

(assert (=> b!6492038 m!7280660))

(assert (=> b!6492035 m!7279366))

(declare-fun m!7280662 () Bool)

(assert (=> bm!562061 m!7280662))

(declare-fun m!7280664 () Bool)

(assert (=> bm!562060 m!7280664))

(declare-fun m!7280666 () Bool)

(assert (=> bm!562056 m!7280666))

(assert (=> bm!561956 d!2036894))

(declare-fun d!2036896 () Bool)

(assert (=> d!2036896 (= (isDefined!12963 lt!2389734) (not (isEmpty!37479 lt!2389734)))))

(declare-fun bs!1648052 () Bool)

(assert (= bs!1648052 d!2036896))

(declare-fun m!7280668 () Bool)

(assert (=> bs!1648052 m!7280668))

(assert (=> b!6491162 d!2036896))

(declare-fun b!6492046 () Bool)

(declare-fun res!2666278 () Bool)

(declare-fun e!3934312 () Bool)

(assert (=> b!6492046 (=> res!2666278 e!3934312)))

(assert (=> b!6492046 (= res!2666278 (not ((_ is Concat!25214) lt!2389674)))))

(declare-fun e!3934314 () Bool)

(assert (=> b!6492046 (= e!3934314 e!3934312)))

(declare-fun b!6492047 () Bool)

(declare-fun e!3934316 () Bool)

(assert (=> b!6492047 (= e!3934312 e!3934316)))

(declare-fun res!2666282 () Bool)

(assert (=> b!6492047 (=> (not res!2666282) (not e!3934316))))

(declare-fun call!562067 () Bool)

(assert (=> b!6492047 (= res!2666282 call!562067)))

(declare-fun b!6492048 () Bool)

(declare-fun call!562069 () Bool)

(assert (=> b!6492048 (= e!3934316 call!562069)))

(declare-fun bm!562062 () Bool)

(declare-fun c!1189770 () Bool)

(assert (=> bm!562062 (= call!562069 (validRegex!8105 (ite c!1189770 (regTwo!33251 lt!2389674) (regTwo!33250 lt!2389674))))))

(declare-fun b!6492049 () Bool)

(declare-fun e!3934313 () Bool)

(declare-fun e!3934317 () Bool)

(assert (=> b!6492049 (= e!3934313 e!3934317)))

(declare-fun res!2666281 () Bool)

(assert (=> b!6492049 (= res!2666281 (not (nullable!6362 (reg!16698 lt!2389674))))))

(assert (=> b!6492049 (=> (not res!2666281) (not e!3934317))))

(declare-fun b!6492050 () Bool)

(declare-fun e!3934311 () Bool)

(assert (=> b!6492050 (= e!3934311 e!3934313)))

(declare-fun c!1189769 () Bool)

(assert (=> b!6492050 (= c!1189769 ((_ is Star!16369) lt!2389674))))

(declare-fun b!6492051 () Bool)

(declare-fun call!562068 () Bool)

(assert (=> b!6492051 (= e!3934317 call!562068)))

(declare-fun b!6492052 () Bool)

(assert (=> b!6492052 (= e!3934313 e!3934314)))

(assert (=> b!6492052 (= c!1189770 ((_ is Union!16369) lt!2389674))))

(declare-fun d!2036898 () Bool)

(declare-fun res!2666279 () Bool)

(assert (=> d!2036898 (=> res!2666279 e!3934311)))

(assert (=> d!2036898 (= res!2666279 ((_ is ElementMatch!16369) lt!2389674))))

(assert (=> d!2036898 (= (validRegex!8105 lt!2389674) e!3934311)))

(declare-fun bm!562063 () Bool)

(assert (=> bm!562063 (= call!562068 (validRegex!8105 (ite c!1189769 (reg!16698 lt!2389674) (ite c!1189770 (regOne!33251 lt!2389674) (regOne!33250 lt!2389674)))))))

(declare-fun b!6492053 () Bool)

(declare-fun e!3934315 () Bool)

(assert (=> b!6492053 (= e!3934315 call!562069)))

(declare-fun b!6492054 () Bool)

(declare-fun res!2666280 () Bool)

(assert (=> b!6492054 (=> (not res!2666280) (not e!3934315))))

(assert (=> b!6492054 (= res!2666280 call!562067)))

(assert (=> b!6492054 (= e!3934314 e!3934315)))

(declare-fun bm!562064 () Bool)

(assert (=> bm!562064 (= call!562067 call!562068)))

(assert (= (and d!2036898 (not res!2666279)) b!6492050))

(assert (= (and b!6492050 c!1189769) b!6492049))

(assert (= (and b!6492050 (not c!1189769)) b!6492052))

(assert (= (and b!6492049 res!2666281) b!6492051))

(assert (= (and b!6492052 c!1189770) b!6492054))

(assert (= (and b!6492052 (not c!1189770)) b!6492046))

(assert (= (and b!6492054 res!2666280) b!6492053))

(assert (= (and b!6492046 (not res!2666278)) b!6492047))

(assert (= (and b!6492047 res!2666282) b!6492048))

(assert (= (or b!6492053 b!6492048) bm!562062))

(assert (= (or b!6492054 b!6492047) bm!562064))

(assert (= (or b!6492051 bm!562064) bm!562063))

(declare-fun m!7280670 () Bool)

(assert (=> bm!562062 m!7280670))

(declare-fun m!7280672 () Bool)

(assert (=> b!6492049 m!7280672))

(declare-fun m!7280674 () Bool)

(assert (=> bm!562063 m!7280674))

(assert (=> d!2036404 d!2036898))

(declare-fun bs!1648053 () Bool)

(declare-fun d!2036900 () Bool)

(assert (= bs!1648053 (and d!2036900 d!2036540)))

(declare-fun lambda!359553 () Int)

(assert (=> bs!1648053 (= lambda!359553 lambda!359502)))

(declare-fun bs!1648054 () Bool)

(assert (= bs!1648054 (and d!2036900 b!6490629)))

(assert (=> bs!1648054 (= lambda!359553 lambda!359444)))

(declare-fun bs!1648055 () Bool)

(assert (= bs!1648055 (and d!2036900 d!2036426)))

(assert (=> bs!1648055 (= lambda!359553 lambda!359456)))

(declare-fun bs!1648056 () Bool)

(assert (= bs!1648056 (and d!2036900 d!2036572)))

(assert (=> bs!1648056 (= lambda!359553 lambda!359520)))

(declare-fun bs!1648057 () Bool)

(assert (= bs!1648057 (and d!2036900 d!2036562)))

(assert (=> bs!1648057 (= lambda!359553 lambda!359513)))

(declare-fun bs!1648058 () Bool)

(assert (= bs!1648058 (and d!2036900 d!2036632)))

(assert (=> bs!1648058 (= lambda!359553 lambda!359532)))

(declare-fun bs!1648059 () Bool)

(assert (= bs!1648059 (and d!2036900 d!2036558)))

(assert (=> bs!1648059 (= lambda!359553 lambda!359507)))

(declare-fun bs!1648060 () Bool)

(assert (= bs!1648060 (and d!2036900 d!2036836)))

(assert (=> bs!1648060 (= lambda!359553 lambda!359552)))

(declare-fun bs!1648061 () Bool)

(assert (= bs!1648061 (and d!2036900 d!2036802)))

(assert (=> bs!1648061 (= lambda!359553 lambda!359545)))

(declare-fun b!6492055 () Bool)

(declare-fun e!3934318 () Regex!16369)

(declare-fun e!3934319 () Regex!16369)

(assert (=> b!6492055 (= e!3934318 e!3934319)))

(declare-fun c!1189772 () Bool)

(assert (=> b!6492055 (= c!1189772 ((_ is Cons!65283) (unfocusZipperList!1790 lt!2389640)))))

(declare-fun b!6492056 () Bool)

(declare-fun e!3934320 () Bool)

(declare-fun lt!2389886 () Regex!16369)

(assert (=> b!6492056 (= e!3934320 (isUnion!1199 lt!2389886))))

(declare-fun b!6492057 () Bool)

(assert (=> b!6492057 (= e!3934320 (= lt!2389886 (head!13214 (unfocusZipperList!1790 lt!2389640))))))

(declare-fun b!6492058 () Bool)

(assert (=> b!6492058 (= e!3934318 (h!71731 (unfocusZipperList!1790 lt!2389640)))))

(declare-fun e!3934322 () Bool)

(assert (=> d!2036900 e!3934322))

(declare-fun res!2666284 () Bool)

(assert (=> d!2036900 (=> (not res!2666284) (not e!3934322))))

(assert (=> d!2036900 (= res!2666284 (validRegex!8105 lt!2389886))))

(assert (=> d!2036900 (= lt!2389886 e!3934318)))

(declare-fun c!1189774 () Bool)

(declare-fun e!3934323 () Bool)

(assert (=> d!2036900 (= c!1189774 e!3934323)))

(declare-fun res!2666283 () Bool)

(assert (=> d!2036900 (=> (not res!2666283) (not e!3934323))))

(assert (=> d!2036900 (= res!2666283 ((_ is Cons!65283) (unfocusZipperList!1790 lt!2389640)))))

(assert (=> d!2036900 (forall!15551 (unfocusZipperList!1790 lt!2389640) lambda!359553)))

(assert (=> d!2036900 (= (generalisedUnion!2213 (unfocusZipperList!1790 lt!2389640)) lt!2389886)))

(declare-fun b!6492059 () Bool)

(declare-fun e!3934321 () Bool)

(assert (=> b!6492059 (= e!3934322 e!3934321)))

(declare-fun c!1189773 () Bool)

(assert (=> b!6492059 (= c!1189773 (isEmpty!37476 (unfocusZipperList!1790 lt!2389640)))))

(declare-fun b!6492060 () Bool)

(assert (=> b!6492060 (= e!3934319 EmptyLang!16369)))

(declare-fun b!6492061 () Bool)

(assert (=> b!6492061 (= e!3934323 (isEmpty!37476 (t!379035 (unfocusZipperList!1790 lt!2389640))))))

(declare-fun b!6492062 () Bool)

(assert (=> b!6492062 (= e!3934319 (Union!16369 (h!71731 (unfocusZipperList!1790 lt!2389640)) (generalisedUnion!2213 (t!379035 (unfocusZipperList!1790 lt!2389640)))))))

(declare-fun b!6492063 () Bool)

(assert (=> b!6492063 (= e!3934321 (isEmptyLang!1769 lt!2389886))))

(declare-fun b!6492064 () Bool)

(assert (=> b!6492064 (= e!3934321 e!3934320)))

(declare-fun c!1189771 () Bool)

(assert (=> b!6492064 (= c!1189771 (isEmpty!37476 (tail!12299 (unfocusZipperList!1790 lt!2389640))))))

(assert (= (and d!2036900 res!2666283) b!6492061))

(assert (= (and d!2036900 c!1189774) b!6492058))

(assert (= (and d!2036900 (not c!1189774)) b!6492055))

(assert (= (and b!6492055 c!1189772) b!6492062))

(assert (= (and b!6492055 (not c!1189772)) b!6492060))

(assert (= (and d!2036900 res!2666284) b!6492059))

(assert (= (and b!6492059 c!1189773) b!6492063))

(assert (= (and b!6492059 (not c!1189773)) b!6492064))

(assert (= (and b!6492064 c!1189771) b!6492057))

(assert (= (and b!6492064 (not c!1189771)) b!6492056))

(declare-fun m!7280676 () Bool)

(assert (=> b!6492056 m!7280676))

(assert (=> b!6492057 m!7279294))

(declare-fun m!7280678 () Bool)

(assert (=> b!6492057 m!7280678))

(declare-fun m!7280680 () Bool)

(assert (=> b!6492061 m!7280680))

(assert (=> b!6492064 m!7279294))

(declare-fun m!7280682 () Bool)

(assert (=> b!6492064 m!7280682))

(assert (=> b!6492064 m!7280682))

(declare-fun m!7280684 () Bool)

(assert (=> b!6492064 m!7280684))

(assert (=> b!6492059 m!7279294))

(declare-fun m!7280686 () Bool)

(assert (=> b!6492059 m!7280686))

(declare-fun m!7280688 () Bool)

(assert (=> b!6492062 m!7280688))

(declare-fun m!7280690 () Bool)

(assert (=> b!6492063 m!7280690))

(declare-fun m!7280692 () Bool)

(assert (=> d!2036900 m!7280692))

(assert (=> d!2036900 m!7279294))

(declare-fun m!7280694 () Bool)

(assert (=> d!2036900 m!7280694))

(assert (=> d!2036404 d!2036900))

(declare-fun bs!1648062 () Bool)

(declare-fun d!2036902 () Bool)

(assert (= bs!1648062 (and d!2036902 d!2036540)))

(declare-fun lambda!359554 () Int)

(assert (=> bs!1648062 (= lambda!359554 lambda!359502)))

(declare-fun bs!1648063 () Bool)

(assert (= bs!1648063 (and d!2036902 b!6490629)))

(assert (=> bs!1648063 (= lambda!359554 lambda!359444)))

(declare-fun bs!1648064 () Bool)

(assert (= bs!1648064 (and d!2036902 d!2036426)))

(assert (=> bs!1648064 (= lambda!359554 lambda!359456)))

(declare-fun bs!1648065 () Bool)

(assert (= bs!1648065 (and d!2036902 d!2036562)))

(assert (=> bs!1648065 (= lambda!359554 lambda!359513)))

(declare-fun bs!1648066 () Bool)

(assert (= bs!1648066 (and d!2036902 d!2036632)))

(assert (=> bs!1648066 (= lambda!359554 lambda!359532)))

(declare-fun bs!1648067 () Bool)

(assert (= bs!1648067 (and d!2036902 d!2036558)))

(assert (=> bs!1648067 (= lambda!359554 lambda!359507)))

(declare-fun bs!1648068 () Bool)

(assert (= bs!1648068 (and d!2036902 d!2036836)))

(assert (=> bs!1648068 (= lambda!359554 lambda!359552)))

(declare-fun bs!1648069 () Bool)

(assert (= bs!1648069 (and d!2036902 d!2036802)))

(assert (=> bs!1648069 (= lambda!359554 lambda!359545)))

(declare-fun bs!1648070 () Bool)

(assert (= bs!1648070 (and d!2036902 d!2036572)))

(assert (=> bs!1648070 (= lambda!359554 lambda!359520)))

(declare-fun bs!1648071 () Bool)

(assert (= bs!1648071 (and d!2036902 d!2036900)))

(assert (=> bs!1648071 (= lambda!359554 lambda!359553)))

(declare-fun lt!2389887 () List!65407)

(assert (=> d!2036902 (forall!15551 lt!2389887 lambda!359554)))

(declare-fun e!3934324 () List!65407)

(assert (=> d!2036902 (= lt!2389887 e!3934324)))

(declare-fun c!1189775 () Bool)

(assert (=> d!2036902 (= c!1189775 ((_ is Cons!65284) lt!2389640))))

(assert (=> d!2036902 (= (unfocusZipperList!1790 lt!2389640) lt!2389887)))

(declare-fun b!6492065 () Bool)

(assert (=> b!6492065 (= e!3934324 (Cons!65283 (generalisedConcat!1966 (exprs!6253 (h!71732 lt!2389640))) (unfocusZipperList!1790 (t!379036 lt!2389640))))))

(declare-fun b!6492066 () Bool)

(assert (=> b!6492066 (= e!3934324 Nil!65283)))

(assert (= (and d!2036902 c!1189775) b!6492065))

(assert (= (and d!2036902 (not c!1189775)) b!6492066))

(declare-fun m!7280696 () Bool)

(assert (=> d!2036902 m!7280696))

(declare-fun m!7280698 () Bool)

(assert (=> b!6492065 m!7280698))

(declare-fun m!7280700 () Bool)

(assert (=> b!6492065 m!7280700))

(assert (=> d!2036404 d!2036902))

(declare-fun bs!1648072 () Bool)

(declare-fun d!2036904 () Bool)

(assert (= bs!1648072 (and d!2036904 d!2036816)))

(declare-fun lambda!359555 () Int)

(assert (=> bs!1648072 (= lambda!359555 lambda!359548)))

(assert (=> d!2036904 (= (nullableZipper!2125 lt!2389666) (exists!2618 lt!2389666 lambda!359555))))

(declare-fun bs!1648073 () Bool)

(assert (= bs!1648073 d!2036904))

(declare-fun m!7280702 () Bool)

(assert (=> bs!1648073 m!7280702))

(assert (=> b!6491592 d!2036904))

(assert (=> bm!561936 d!2036886))

(declare-fun d!2036906 () Bool)

(assert (=> d!2036906 (= (head!13211 s!2326) (h!71730 s!2326))))

(assert (=> b!6491213 d!2036906))

(declare-fun d!2036908 () Bool)

(declare-fun lt!2389890 () Int)

(assert (=> d!2036908 (>= lt!2389890 0)))

(declare-fun e!3934327 () Int)

(assert (=> d!2036908 (= lt!2389890 e!3934327)))

(declare-fun c!1189778 () Bool)

(assert (=> d!2036908 (= c!1189778 ((_ is Nil!65282) lt!2389691))))

(assert (=> d!2036908 (= (size!40427 lt!2389691) lt!2389890)))

(declare-fun b!6492071 () Bool)

(assert (=> b!6492071 (= e!3934327 0)))

(declare-fun b!6492072 () Bool)

(assert (=> b!6492072 (= e!3934327 (+ 1 (size!40427 (t!379034 lt!2389691))))))

(assert (= (and d!2036908 c!1189778) b!6492071))

(assert (= (and d!2036908 (not c!1189778)) b!6492072))

(declare-fun m!7280704 () Bool)

(assert (=> b!6492072 m!7280704))

(assert (=> b!6490960 d!2036908))

(declare-fun d!2036910 () Bool)

(declare-fun lt!2389891 () Int)

(assert (=> d!2036910 (>= lt!2389891 0)))

(declare-fun e!3934328 () Int)

(assert (=> d!2036910 (= lt!2389891 e!3934328)))

(declare-fun c!1189779 () Bool)

(assert (=> d!2036910 (= c!1189779 ((_ is Nil!65282) (_1!36651 lt!2389638)))))

(assert (=> d!2036910 (= (size!40427 (_1!36651 lt!2389638)) lt!2389891)))

(declare-fun b!6492073 () Bool)

(assert (=> b!6492073 (= e!3934328 0)))

(declare-fun b!6492074 () Bool)

(assert (=> b!6492074 (= e!3934328 (+ 1 (size!40427 (t!379034 (_1!36651 lt!2389638)))))))

(assert (= (and d!2036910 c!1189779) b!6492073))

(assert (= (and d!2036910 (not c!1189779)) b!6492074))

(assert (=> b!6492074 m!7280480))

(assert (=> b!6490960 d!2036910))

(declare-fun d!2036912 () Bool)

(declare-fun lt!2389892 () Int)

(assert (=> d!2036912 (>= lt!2389892 0)))

(declare-fun e!3934329 () Int)

(assert (=> d!2036912 (= lt!2389892 e!3934329)))

(declare-fun c!1189780 () Bool)

(assert (=> d!2036912 (= c!1189780 ((_ is Nil!65282) (_2!36651 lt!2389638)))))

(assert (=> d!2036912 (= (size!40427 (_2!36651 lt!2389638)) lt!2389892)))

(declare-fun b!6492075 () Bool)

(assert (=> b!6492075 (= e!3934329 0)))

(declare-fun b!6492076 () Bool)

(assert (=> b!6492076 (= e!3934329 (+ 1 (size!40427 (t!379034 (_2!36651 lt!2389638)))))))

(assert (= (and d!2036912 c!1189780) b!6492075))

(assert (= (and d!2036912 (not c!1189780)) b!6492076))

(assert (=> b!6492076 m!7280650))

(assert (=> b!6490960 d!2036912))

(declare-fun b!6492077 () Bool)

(declare-fun res!2666290 () Bool)

(declare-fun e!3934330 () Bool)

(assert (=> b!6492077 (=> res!2666290 e!3934330)))

(declare-fun e!3934334 () Bool)

(assert (=> b!6492077 (= res!2666290 e!3934334)))

(declare-fun res!2666287 () Bool)

(assert (=> b!6492077 (=> (not res!2666287) (not e!3934334))))

(declare-fun lt!2389893 () Bool)

(assert (=> b!6492077 (= res!2666287 lt!2389893)))

(declare-fun b!6492078 () Bool)

(declare-fun res!2666288 () Bool)

(assert (=> b!6492078 (=> (not res!2666288) (not e!3934334))))

(assert (=> b!6492078 (= res!2666288 (isEmpty!37477 (tail!12296 (tail!12296 lt!2389663))))))

(declare-fun b!6492080 () Bool)

(declare-fun e!3934332 () Bool)

(assert (=> b!6492080 (= e!3934330 e!3934332)))

(declare-fun res!2666291 () Bool)

(assert (=> b!6492080 (=> (not res!2666291) (not e!3934332))))

(assert (=> b!6492080 (= res!2666291 (not lt!2389893))))

(declare-fun bm!562065 () Bool)

(declare-fun call!562070 () Bool)

(assert (=> bm!562065 (= call!562070 (isEmpty!37477 (tail!12296 lt!2389663)))))

(declare-fun b!6492081 () Bool)

(declare-fun e!3934333 () Bool)

(assert (=> b!6492081 (= e!3934333 (not (= (head!13211 (tail!12296 lt!2389663)) (c!1189393 (derivativeStep!5064 lt!2389659 (head!13211 lt!2389663))))))))

(declare-fun b!6492082 () Bool)

(declare-fun e!3934336 () Bool)

(assert (=> b!6492082 (= e!3934336 (matchR!8552 (derivativeStep!5064 (derivativeStep!5064 lt!2389659 (head!13211 lt!2389663)) (head!13211 (tail!12296 lt!2389663))) (tail!12296 (tail!12296 lt!2389663))))))

(declare-fun b!6492083 () Bool)

(declare-fun res!2666292 () Bool)

(assert (=> b!6492083 (=> res!2666292 e!3934333)))

(assert (=> b!6492083 (= res!2666292 (not (isEmpty!37477 (tail!12296 (tail!12296 lt!2389663)))))))

(declare-fun b!6492084 () Bool)

(declare-fun res!2666289 () Bool)

(assert (=> b!6492084 (=> res!2666289 e!3934330)))

(assert (=> b!6492084 (= res!2666289 (not ((_ is ElementMatch!16369) (derivativeStep!5064 lt!2389659 (head!13211 lt!2389663)))))))

(declare-fun e!3934331 () Bool)

(assert (=> b!6492084 (= e!3934331 e!3934330)))

(declare-fun b!6492085 () Bool)

(declare-fun e!3934335 () Bool)

(assert (=> b!6492085 (= e!3934335 (= lt!2389893 call!562070))))

(declare-fun b!6492086 () Bool)

(assert (=> b!6492086 (= e!3934332 e!3934333)))

(declare-fun res!2666286 () Bool)

(assert (=> b!6492086 (=> res!2666286 e!3934333)))

(assert (=> b!6492086 (= res!2666286 call!562070)))

(declare-fun b!6492087 () Bool)

(assert (=> b!6492087 (= e!3934336 (nullable!6362 (derivativeStep!5064 lt!2389659 (head!13211 lt!2389663))))))

(declare-fun b!6492088 () Bool)

(assert (=> b!6492088 (= e!3934334 (= (head!13211 (tail!12296 lt!2389663)) (c!1189393 (derivativeStep!5064 lt!2389659 (head!13211 lt!2389663)))))))

(declare-fun d!2036914 () Bool)

(assert (=> d!2036914 e!3934335))

(declare-fun c!1189783 () Bool)

(assert (=> d!2036914 (= c!1189783 ((_ is EmptyExpr!16369) (derivativeStep!5064 lt!2389659 (head!13211 lt!2389663))))))

(assert (=> d!2036914 (= lt!2389893 e!3934336)))

(declare-fun c!1189782 () Bool)

(assert (=> d!2036914 (= c!1189782 (isEmpty!37477 (tail!12296 lt!2389663)))))

(assert (=> d!2036914 (validRegex!8105 (derivativeStep!5064 lt!2389659 (head!13211 lt!2389663)))))

(assert (=> d!2036914 (= (matchR!8552 (derivativeStep!5064 lt!2389659 (head!13211 lt!2389663)) (tail!12296 lt!2389663)) lt!2389893)))

(declare-fun b!6492079 () Bool)

(assert (=> b!6492079 (= e!3934335 e!3934331)))

(declare-fun c!1189781 () Bool)

(assert (=> b!6492079 (= c!1189781 ((_ is EmptyLang!16369) (derivativeStep!5064 lt!2389659 (head!13211 lt!2389663))))))

(declare-fun b!6492089 () Bool)

(assert (=> b!6492089 (= e!3934331 (not lt!2389893))))

(declare-fun b!6492090 () Bool)

(declare-fun res!2666285 () Bool)

(assert (=> b!6492090 (=> (not res!2666285) (not e!3934334))))

(assert (=> b!6492090 (= res!2666285 (not call!562070))))

(assert (= (and d!2036914 c!1189782) b!6492087))

(assert (= (and d!2036914 (not c!1189782)) b!6492082))

(assert (= (and d!2036914 c!1189783) b!6492085))

(assert (= (and d!2036914 (not c!1189783)) b!6492079))

(assert (= (and b!6492079 c!1189781) b!6492089))

(assert (= (and b!6492079 (not c!1189781)) b!6492084))

(assert (= (and b!6492084 (not res!2666289)) b!6492077))

(assert (= (and b!6492077 res!2666287) b!6492090))

(assert (= (and b!6492090 res!2666285) b!6492078))

(assert (= (and b!6492078 res!2666288) b!6492088))

(assert (= (and b!6492077 (not res!2666290)) b!6492080))

(assert (= (and b!6492080 res!2666291) b!6492086))

(assert (= (and b!6492086 (not res!2666286)) b!6492083))

(assert (= (and b!6492083 (not res!2666292)) b!6492081))

(assert (= (or b!6492085 b!6492086 b!6492090) bm!562065))

(assert (=> b!6492078 m!7280042))

(declare-fun m!7280706 () Bool)

(assert (=> b!6492078 m!7280706))

(assert (=> b!6492078 m!7280706))

(declare-fun m!7280708 () Bool)

(assert (=> b!6492078 m!7280708))

(assert (=> d!2036914 m!7280042))

(assert (=> d!2036914 m!7280092))

(assert (=> d!2036914 m!7280094))

(declare-fun m!7280710 () Bool)

(assert (=> d!2036914 m!7280710))

(assert (=> b!6492083 m!7280042))

(assert (=> b!6492083 m!7280706))

(assert (=> b!6492083 m!7280706))

(assert (=> b!6492083 m!7280708))

(assert (=> b!6492081 m!7280042))

(declare-fun m!7280712 () Bool)

(assert (=> b!6492081 m!7280712))

(assert (=> b!6492087 m!7280094))

(declare-fun m!7280714 () Bool)

(assert (=> b!6492087 m!7280714))

(assert (=> bm!562065 m!7280042))

(assert (=> bm!562065 m!7280092))

(assert (=> b!6492088 m!7280042))

(assert (=> b!6492088 m!7280712))

(assert (=> b!6492082 m!7280042))

(assert (=> b!6492082 m!7280712))

(assert (=> b!6492082 m!7280094))

(assert (=> b!6492082 m!7280712))

(declare-fun m!7280716 () Bool)

(assert (=> b!6492082 m!7280716))

(assert (=> b!6492082 m!7280042))

(assert (=> b!6492082 m!7280706))

(assert (=> b!6492082 m!7280716))

(assert (=> b!6492082 m!7280706))

(declare-fun m!7280718 () Bool)

(assert (=> b!6492082 m!7280718))

(assert (=> b!6491507 d!2036914))

(declare-fun b!6492091 () Bool)

(declare-fun e!3934340 () Regex!16369)

(assert (=> b!6492091 (= e!3934340 (ite (= (head!13211 lt!2389663) (c!1189393 lt!2389659)) EmptyExpr!16369 EmptyLang!16369))))

(declare-fun b!6492092 () Bool)

(declare-fun e!3934337 () Regex!16369)

(declare-fun call!562074 () Regex!16369)

(declare-fun call!562071 () Regex!16369)

(assert (=> b!6492092 (= e!3934337 (Union!16369 call!562074 call!562071))))

(declare-fun d!2036916 () Bool)

(declare-fun lt!2389894 () Regex!16369)

(assert (=> d!2036916 (validRegex!8105 lt!2389894)))

(declare-fun e!3934339 () Regex!16369)

(assert (=> d!2036916 (= lt!2389894 e!3934339)))

(declare-fun c!1189786 () Bool)

(assert (=> d!2036916 (= c!1189786 (or ((_ is EmptyExpr!16369) lt!2389659) ((_ is EmptyLang!16369) lt!2389659)))))

(assert (=> d!2036916 (validRegex!8105 lt!2389659)))

(assert (=> d!2036916 (= (derivativeStep!5064 lt!2389659 (head!13211 lt!2389663)) lt!2389894)))

(declare-fun e!3934338 () Regex!16369)

(declare-fun b!6492093 () Bool)

(declare-fun call!562072 () Regex!16369)

(assert (=> b!6492093 (= e!3934338 (Union!16369 (Concat!25214 call!562074 (regTwo!33250 lt!2389659)) call!562072))))

(declare-fun c!1189788 () Bool)

(declare-fun bm!562066 () Bool)

(assert (=> bm!562066 (= call!562074 (derivativeStep!5064 (ite c!1189788 (regOne!33251 lt!2389659) (regOne!33250 lt!2389659)) (head!13211 lt!2389663)))))

(declare-fun bm!562067 () Bool)

(declare-fun call!562073 () Regex!16369)

(assert (=> bm!562067 (= call!562073 call!562071)))

(declare-fun b!6492094 () Bool)

(declare-fun c!1189785 () Bool)

(assert (=> b!6492094 (= c!1189785 (nullable!6362 (regOne!33250 lt!2389659)))))

(declare-fun e!3934341 () Regex!16369)

(assert (=> b!6492094 (= e!3934341 e!3934338)))

(declare-fun c!1189787 () Bool)

(declare-fun bm!562068 () Bool)

(assert (=> bm!562068 (= call!562071 (derivativeStep!5064 (ite c!1189788 (regTwo!33251 lt!2389659) (ite c!1189787 (reg!16698 lt!2389659) (ite c!1189785 (regTwo!33250 lt!2389659) (regOne!33250 lt!2389659)))) (head!13211 lt!2389663)))))

(declare-fun b!6492095 () Bool)

(assert (=> b!6492095 (= e!3934338 (Union!16369 (Concat!25214 call!562072 (regTwo!33250 lt!2389659)) EmptyLang!16369))))

(declare-fun b!6492096 () Bool)

(assert (=> b!6492096 (= e!3934337 e!3934341)))

(assert (=> b!6492096 (= c!1189787 ((_ is Star!16369) lt!2389659))))

(declare-fun b!6492097 () Bool)

(assert (=> b!6492097 (= e!3934339 EmptyLang!16369)))

(declare-fun bm!562069 () Bool)

(assert (=> bm!562069 (= call!562072 call!562073)))

(declare-fun b!6492098 () Bool)

(assert (=> b!6492098 (= e!3934341 (Concat!25214 call!562073 lt!2389659))))

(declare-fun b!6492099 () Bool)

(assert (=> b!6492099 (= c!1189788 ((_ is Union!16369) lt!2389659))))

(assert (=> b!6492099 (= e!3934340 e!3934337)))

(declare-fun b!6492100 () Bool)

(assert (=> b!6492100 (= e!3934339 e!3934340)))

(declare-fun c!1189784 () Bool)

(assert (=> b!6492100 (= c!1189784 ((_ is ElementMatch!16369) lt!2389659))))

(assert (= (and d!2036916 c!1189786) b!6492097))

(assert (= (and d!2036916 (not c!1189786)) b!6492100))

(assert (= (and b!6492100 c!1189784) b!6492091))

(assert (= (and b!6492100 (not c!1189784)) b!6492099))

(assert (= (and b!6492099 c!1189788) b!6492092))

(assert (= (and b!6492099 (not c!1189788)) b!6492096))

(assert (= (and b!6492096 c!1189787) b!6492098))

(assert (= (and b!6492096 (not c!1189787)) b!6492094))

(assert (= (and b!6492094 c!1189785) b!6492093))

(assert (= (and b!6492094 (not c!1189785)) b!6492095))

(assert (= (or b!6492093 b!6492095) bm!562069))

(assert (= (or b!6492098 bm!562069) bm!562067))

(assert (= (or b!6492092 bm!562067) bm!562068))

(assert (= (or b!6492092 b!6492093) bm!562066))

(declare-fun m!7280720 () Bool)

(assert (=> d!2036916 m!7280720))

(assert (=> d!2036916 m!7279682))

(assert (=> bm!562066 m!7280038))

(declare-fun m!7280722 () Bool)

(assert (=> bm!562066 m!7280722))

(declare-fun m!7280724 () Bool)

(assert (=> b!6492094 m!7280724))

(assert (=> bm!562068 m!7280038))

(declare-fun m!7280726 () Bool)

(assert (=> bm!562068 m!7280726))

(assert (=> b!6491507 d!2036916))

(assert (=> b!6491507 d!2036814))

(declare-fun d!2036918 () Bool)

(assert (=> d!2036918 (= (tail!12296 lt!2389663) (t!379034 lt!2389663))))

(assert (=> b!6491507 d!2036918))

(declare-fun d!2036920 () Bool)

(declare-fun lt!2389895 () Int)

(assert (=> d!2036920 (>= lt!2389895 0)))

(declare-fun e!3934342 () Int)

(assert (=> d!2036920 (= lt!2389895 e!3934342)))

(declare-fun c!1189789 () Bool)

(assert (=> d!2036920 (= c!1189789 ((_ is Nil!65282) lt!2389838))))

(assert (=> d!2036920 (= (size!40427 lt!2389838) lt!2389895)))

(declare-fun b!6492101 () Bool)

(assert (=> b!6492101 (= e!3934342 0)))

(declare-fun b!6492102 () Bool)

(assert (=> b!6492102 (= e!3934342 (+ 1 (size!40427 (t!379034 lt!2389838))))))

(assert (= (and d!2036920 c!1189789) b!6492101))

(assert (= (and d!2036920 (not c!1189789)) b!6492102))

(declare-fun m!7280728 () Bool)

(assert (=> b!6492102 m!7280728))

(assert (=> b!6491568 d!2036920))

(assert (=> b!6491568 d!2036910))

(declare-fun d!2036922 () Bool)

(declare-fun lt!2389896 () Int)

(assert (=> d!2036922 (>= lt!2389896 0)))

(declare-fun e!3934343 () Int)

(assert (=> d!2036922 (= lt!2389896 e!3934343)))

(declare-fun c!1189790 () Bool)

(assert (=> d!2036922 (= c!1189790 ((_ is Nil!65282) lt!2389641))))

(assert (=> d!2036922 (= (size!40427 lt!2389641) lt!2389896)))

(declare-fun b!6492103 () Bool)

(assert (=> b!6492103 (= e!3934343 0)))

(declare-fun b!6492104 () Bool)

(assert (=> b!6492104 (= e!3934343 (+ 1 (size!40427 (t!379034 lt!2389641))))))

(assert (= (and d!2036922 c!1189790) b!6492103))

(assert (= (and d!2036922 (not c!1189790)) b!6492104))

(declare-fun m!7280730 () Bool)

(assert (=> b!6492104 m!7280730))

(assert (=> b!6491568 d!2036922))

(declare-fun b!6492105 () Bool)

(declare-fun res!2666293 () Bool)

(declare-fun e!3934345 () Bool)

(assert (=> b!6492105 (=> res!2666293 e!3934345)))

(assert (=> b!6492105 (= res!2666293 (not ((_ is Concat!25214) lt!2389751)))))

(declare-fun e!3934347 () Bool)

(assert (=> b!6492105 (= e!3934347 e!3934345)))

(declare-fun b!6492106 () Bool)

(declare-fun e!3934349 () Bool)

(assert (=> b!6492106 (= e!3934345 e!3934349)))

(declare-fun res!2666297 () Bool)

(assert (=> b!6492106 (=> (not res!2666297) (not e!3934349))))

(declare-fun call!562075 () Bool)

(assert (=> b!6492106 (= res!2666297 call!562075)))

(declare-fun b!6492107 () Bool)

(declare-fun call!562077 () Bool)

(assert (=> b!6492107 (= e!3934349 call!562077)))

(declare-fun bm!562070 () Bool)

(declare-fun c!1189792 () Bool)

(assert (=> bm!562070 (= call!562077 (validRegex!8105 (ite c!1189792 (regTwo!33251 lt!2389751) (regTwo!33250 lt!2389751))))))

(declare-fun b!6492108 () Bool)

(declare-fun e!3934346 () Bool)

(declare-fun e!3934350 () Bool)

(assert (=> b!6492108 (= e!3934346 e!3934350)))

(declare-fun res!2666296 () Bool)

(assert (=> b!6492108 (= res!2666296 (not (nullable!6362 (reg!16698 lt!2389751))))))

(assert (=> b!6492108 (=> (not res!2666296) (not e!3934350))))

(declare-fun b!6492109 () Bool)

(declare-fun e!3934344 () Bool)

(assert (=> b!6492109 (= e!3934344 e!3934346)))

(declare-fun c!1189791 () Bool)

(assert (=> b!6492109 (= c!1189791 ((_ is Star!16369) lt!2389751))))

(declare-fun b!6492110 () Bool)

(declare-fun call!562076 () Bool)

(assert (=> b!6492110 (= e!3934350 call!562076)))

(declare-fun b!6492111 () Bool)

(assert (=> b!6492111 (= e!3934346 e!3934347)))

(assert (=> b!6492111 (= c!1189792 ((_ is Union!16369) lt!2389751))))

(declare-fun d!2036924 () Bool)

(declare-fun res!2666294 () Bool)

(assert (=> d!2036924 (=> res!2666294 e!3934344)))

(assert (=> d!2036924 (= res!2666294 ((_ is ElementMatch!16369) lt!2389751))))

(assert (=> d!2036924 (= (validRegex!8105 lt!2389751) e!3934344)))

(declare-fun bm!562071 () Bool)

(assert (=> bm!562071 (= call!562076 (validRegex!8105 (ite c!1189791 (reg!16698 lt!2389751) (ite c!1189792 (regOne!33251 lt!2389751) (regOne!33250 lt!2389751)))))))

(declare-fun b!6492112 () Bool)

(declare-fun e!3934348 () Bool)

(assert (=> b!6492112 (= e!3934348 call!562077)))

(declare-fun b!6492113 () Bool)

(declare-fun res!2666295 () Bool)

(assert (=> b!6492113 (=> (not res!2666295) (not e!3934348))))

(assert (=> b!6492113 (= res!2666295 call!562075)))

(assert (=> b!6492113 (= e!3934347 e!3934348)))

(declare-fun bm!562072 () Bool)

(assert (=> bm!562072 (= call!562075 call!562076)))

(assert (= (and d!2036924 (not res!2666294)) b!6492109))

(assert (= (and b!6492109 c!1189791) b!6492108))

(assert (= (and b!6492109 (not c!1189791)) b!6492111))

(assert (= (and b!6492108 res!2666296) b!6492110))

(assert (= (and b!6492111 c!1189792) b!6492113))

(assert (= (and b!6492111 (not c!1189792)) b!6492105))

(assert (= (and b!6492113 res!2666295) b!6492112))

(assert (= (and b!6492105 (not res!2666293)) b!6492106))

(assert (= (and b!6492106 res!2666297) b!6492107))

(assert (= (or b!6492112 b!6492107) bm!562070))

(assert (= (or b!6492113 b!6492106) bm!562072))

(assert (= (or b!6492110 bm!562072) bm!562071))

(declare-fun m!7280732 () Bool)

(assert (=> bm!562070 m!7280732))

(declare-fun m!7280734 () Bool)

(assert (=> b!6492108 m!7280734))

(declare-fun m!7280736 () Bool)

(assert (=> bm!562071 m!7280736))

(assert (=> d!2036536 d!2036924))

(declare-fun bs!1648074 () Bool)

(declare-fun d!2036926 () Bool)

(assert (= bs!1648074 (and d!2036926 d!2036540)))

(declare-fun lambda!359556 () Int)

(assert (=> bs!1648074 (= lambda!359556 lambda!359502)))

(declare-fun bs!1648075 () Bool)

(assert (= bs!1648075 (and d!2036926 d!2036902)))

(assert (=> bs!1648075 (= lambda!359556 lambda!359554)))

(declare-fun bs!1648076 () Bool)

(assert (= bs!1648076 (and d!2036926 b!6490629)))

(assert (=> bs!1648076 (= lambda!359556 lambda!359444)))

(declare-fun bs!1648077 () Bool)

(assert (= bs!1648077 (and d!2036926 d!2036426)))

(assert (=> bs!1648077 (= lambda!359556 lambda!359456)))

(declare-fun bs!1648078 () Bool)

(assert (= bs!1648078 (and d!2036926 d!2036562)))

(assert (=> bs!1648078 (= lambda!359556 lambda!359513)))

(declare-fun bs!1648079 () Bool)

(assert (= bs!1648079 (and d!2036926 d!2036632)))

(assert (=> bs!1648079 (= lambda!359556 lambda!359532)))

(declare-fun bs!1648080 () Bool)

(assert (= bs!1648080 (and d!2036926 d!2036558)))

(assert (=> bs!1648080 (= lambda!359556 lambda!359507)))

(declare-fun bs!1648081 () Bool)

(assert (= bs!1648081 (and d!2036926 d!2036836)))

(assert (=> bs!1648081 (= lambda!359556 lambda!359552)))

(declare-fun bs!1648082 () Bool)

(assert (= bs!1648082 (and d!2036926 d!2036802)))

(assert (=> bs!1648082 (= lambda!359556 lambda!359545)))

(declare-fun bs!1648083 () Bool)

(assert (= bs!1648083 (and d!2036926 d!2036572)))

(assert (=> bs!1648083 (= lambda!359556 lambda!359520)))

(declare-fun bs!1648084 () Bool)

(assert (= bs!1648084 (and d!2036926 d!2036900)))

(assert (=> bs!1648084 (= lambda!359556 lambda!359553)))

(declare-fun b!6492114 () Bool)

(declare-fun e!3934351 () Regex!16369)

(declare-fun e!3934352 () Regex!16369)

(assert (=> b!6492114 (= e!3934351 e!3934352)))

(declare-fun c!1189794 () Bool)

(assert (=> b!6492114 (= c!1189794 ((_ is Cons!65283) (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284))))))

(declare-fun b!6492115 () Bool)

(declare-fun e!3934353 () Bool)

(declare-fun lt!2389897 () Regex!16369)

(assert (=> b!6492115 (= e!3934353 (isUnion!1199 lt!2389897))))

(declare-fun b!6492116 () Bool)

(assert (=> b!6492116 (= e!3934353 (= lt!2389897 (head!13214 (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284)))))))

(declare-fun b!6492117 () Bool)

(assert (=> b!6492117 (= e!3934351 (h!71731 (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284))))))

(declare-fun e!3934355 () Bool)

(assert (=> d!2036926 e!3934355))

(declare-fun res!2666299 () Bool)

(assert (=> d!2036926 (=> (not res!2666299) (not e!3934355))))

(assert (=> d!2036926 (= res!2666299 (validRegex!8105 lt!2389897))))

(assert (=> d!2036926 (= lt!2389897 e!3934351)))

(declare-fun c!1189796 () Bool)

(declare-fun e!3934356 () Bool)

(assert (=> d!2036926 (= c!1189796 e!3934356)))

(declare-fun res!2666298 () Bool)

(assert (=> d!2036926 (=> (not res!2666298) (not e!3934356))))

(assert (=> d!2036926 (= res!2666298 ((_ is Cons!65283) (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284))))))

(assert (=> d!2036926 (forall!15551 (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284)) lambda!359556)))

(assert (=> d!2036926 (= (generalisedUnion!2213 (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284))) lt!2389897)))

(declare-fun b!6492118 () Bool)

(declare-fun e!3934354 () Bool)

(assert (=> b!6492118 (= e!3934355 e!3934354)))

(declare-fun c!1189795 () Bool)

(assert (=> b!6492118 (= c!1189795 (isEmpty!37476 (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284))))))

(declare-fun b!6492119 () Bool)

(assert (=> b!6492119 (= e!3934352 EmptyLang!16369)))

(declare-fun b!6492120 () Bool)

(assert (=> b!6492120 (= e!3934356 (isEmpty!37476 (t!379035 (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284)))))))

(declare-fun b!6492121 () Bool)

(assert (=> b!6492121 (= e!3934352 (Union!16369 (h!71731 (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284))) (generalisedUnion!2213 (t!379035 (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284))))))))

(declare-fun b!6492122 () Bool)

(assert (=> b!6492122 (= e!3934354 (isEmptyLang!1769 lt!2389897))))

(declare-fun b!6492123 () Bool)

(assert (=> b!6492123 (= e!3934354 e!3934353)))

(declare-fun c!1189793 () Bool)

(assert (=> b!6492123 (= c!1189793 (isEmpty!37476 (tail!12299 (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284)))))))

(assert (= (and d!2036926 res!2666298) b!6492120))

(assert (= (and d!2036926 c!1189796) b!6492117))

(assert (= (and d!2036926 (not c!1189796)) b!6492114))

(assert (= (and b!6492114 c!1189794) b!6492121))

(assert (= (and b!6492114 (not c!1189794)) b!6492119))

(assert (= (and d!2036926 res!2666299) b!6492118))

(assert (= (and b!6492118 c!1189795) b!6492122))

(assert (= (and b!6492118 (not c!1189795)) b!6492123))

(assert (= (and b!6492123 c!1189793) b!6492116))

(assert (= (and b!6492123 (not c!1189793)) b!6492115))

(declare-fun m!7280738 () Bool)

(assert (=> b!6492115 m!7280738))

(assert (=> b!6492116 m!7279694))

(declare-fun m!7280740 () Bool)

(assert (=> b!6492116 m!7280740))

(declare-fun m!7280742 () Bool)

(assert (=> b!6492120 m!7280742))

(assert (=> b!6492123 m!7279694))

(declare-fun m!7280744 () Bool)

(assert (=> b!6492123 m!7280744))

(assert (=> b!6492123 m!7280744))

(declare-fun m!7280746 () Bool)

(assert (=> b!6492123 m!7280746))

(assert (=> b!6492118 m!7279694))

(declare-fun m!7280748 () Bool)

(assert (=> b!6492118 m!7280748))

(declare-fun m!7280750 () Bool)

(assert (=> b!6492121 m!7280750))

(declare-fun m!7280752 () Bool)

(assert (=> b!6492122 m!7280752))

(declare-fun m!7280754 () Bool)

(assert (=> d!2036926 m!7280754))

(assert (=> d!2036926 m!7279694))

(declare-fun m!7280756 () Bool)

(assert (=> d!2036926 m!7280756))

(assert (=> d!2036536 d!2036926))

(declare-fun bs!1648085 () Bool)

(declare-fun d!2036928 () Bool)

(assert (= bs!1648085 (and d!2036928 d!2036540)))

(declare-fun lambda!359557 () Int)

(assert (=> bs!1648085 (= lambda!359557 lambda!359502)))

(declare-fun bs!1648086 () Bool)

(assert (= bs!1648086 (and d!2036928 d!2036902)))

(assert (=> bs!1648086 (= lambda!359557 lambda!359554)))

(declare-fun bs!1648087 () Bool)

(assert (= bs!1648087 (and d!2036928 b!6490629)))

(assert (=> bs!1648087 (= lambda!359557 lambda!359444)))

(declare-fun bs!1648088 () Bool)

(assert (= bs!1648088 (and d!2036928 d!2036426)))

(assert (=> bs!1648088 (= lambda!359557 lambda!359456)))

(declare-fun bs!1648089 () Bool)

(assert (= bs!1648089 (and d!2036928 d!2036926)))

(assert (=> bs!1648089 (= lambda!359557 lambda!359556)))

(declare-fun bs!1648090 () Bool)

(assert (= bs!1648090 (and d!2036928 d!2036562)))

(assert (=> bs!1648090 (= lambda!359557 lambda!359513)))

(declare-fun bs!1648091 () Bool)

(assert (= bs!1648091 (and d!2036928 d!2036632)))

(assert (=> bs!1648091 (= lambda!359557 lambda!359532)))

(declare-fun bs!1648092 () Bool)

(assert (= bs!1648092 (and d!2036928 d!2036558)))

(assert (=> bs!1648092 (= lambda!359557 lambda!359507)))

(declare-fun bs!1648093 () Bool)

(assert (= bs!1648093 (and d!2036928 d!2036836)))

(assert (=> bs!1648093 (= lambda!359557 lambda!359552)))

(declare-fun bs!1648094 () Bool)

(assert (= bs!1648094 (and d!2036928 d!2036802)))

(assert (=> bs!1648094 (= lambda!359557 lambda!359545)))

(declare-fun bs!1648095 () Bool)

(assert (= bs!1648095 (and d!2036928 d!2036572)))

(assert (=> bs!1648095 (= lambda!359557 lambda!359520)))

(declare-fun bs!1648096 () Bool)

(assert (= bs!1648096 (and d!2036928 d!2036900)))

(assert (=> bs!1648096 (= lambda!359557 lambda!359553)))

(declare-fun lt!2389898 () List!65407)

(assert (=> d!2036928 (forall!15551 lt!2389898 lambda!359557)))

(declare-fun e!3934357 () List!65407)

(assert (=> d!2036928 (= lt!2389898 e!3934357)))

(declare-fun c!1189797 () Bool)

(assert (=> d!2036928 (= c!1189797 ((_ is Cons!65284) (Cons!65284 lt!2389611 Nil!65284)))))

(assert (=> d!2036928 (= (unfocusZipperList!1790 (Cons!65284 lt!2389611 Nil!65284)) lt!2389898)))

(declare-fun b!6492124 () Bool)

(assert (=> b!6492124 (= e!3934357 (Cons!65283 (generalisedConcat!1966 (exprs!6253 (h!71732 (Cons!65284 lt!2389611 Nil!65284)))) (unfocusZipperList!1790 (t!379036 (Cons!65284 lt!2389611 Nil!65284)))))))

(declare-fun b!6492125 () Bool)

(assert (=> b!6492125 (= e!3934357 Nil!65283)))

(assert (= (and d!2036928 c!1189797) b!6492124))

(assert (= (and d!2036928 (not c!1189797)) b!6492125))

(declare-fun m!7280758 () Bool)

(assert (=> d!2036928 m!7280758))

(declare-fun m!7280760 () Bool)

(assert (=> b!6492124 m!7280760))

(declare-fun m!7280762 () Bool)

(assert (=> b!6492124 m!7280762))

(assert (=> d!2036536 d!2036928))

(declare-fun d!2036930 () Bool)

(assert (=> d!2036930 (= (isEmpty!37479 (findConcatSeparation!2674 (regOne!33250 r!7292) (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326)) (not ((_ is Some!16259) (findConcatSeparation!2674 (regOne!33250 r!7292) (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326))))))

(assert (=> d!2036612 d!2036930))

(declare-fun bs!1648097 () Bool)

(declare-fun b!6492132 () Bool)

(assert (= bs!1648097 (and b!6492132 b!6490643)))

(declare-fun lambda!359558 () Int)

(assert (=> bs!1648097 (= (and (= (reg!16698 (regTwo!33251 lt!2389631)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33251 lt!2389631) lt!2389631)) (= lambda!359558 lambda!359442))))

(assert (=> bs!1648097 (not (= lambda!359558 lambda!359441))))

(declare-fun bs!1648098 () Bool)

(assert (= bs!1648098 (and b!6492132 d!2036598)))

(assert (=> bs!1648098 (not (= lambda!359558 lambda!359524))))

(declare-fun bs!1648099 () Bool)

(assert (= bs!1648099 (and b!6492132 d!2036464)))

(assert (=> bs!1648099 (not (= lambda!359558 lambda!359480))))

(assert (=> bs!1648097 (not (= lambda!359558 lambda!359443))))

(declare-fun bs!1648100 () Bool)

(assert (= bs!1648100 (and b!6492132 d!2036472)))

(assert (=> bs!1648100 (not (= lambda!359558 lambda!359485))))

(declare-fun bs!1648101 () Bool)

(assert (= bs!1648101 (and b!6492132 b!6491888)))

(assert (=> bs!1648101 (not (= lambda!359558 lambda!359551))))

(declare-fun bs!1648102 () Bool)

(assert (= bs!1648102 (and b!6492132 b!6490750)))

(assert (=> bs!1648102 (not (= lambda!359558 lambda!359453))))

(declare-fun bs!1648103 () Bool)

(assert (= bs!1648103 (and b!6492132 b!6490649)))

(assert (=> bs!1648103 (not (= lambda!359558 lambda!359436))))

(declare-fun bs!1648104 () Bool)

(assert (= bs!1648104 (and b!6492132 b!6490618)))

(assert (=> bs!1648104 (not (= lambda!359558 lambda!359440))))

(declare-fun bs!1648105 () Bool)

(assert (= bs!1648105 (and b!6492132 b!6490748)))

(assert (=> bs!1648105 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regTwo!33251 lt!2389631)) (reg!16698 r!7292)) (= (regTwo!33251 lt!2389631) r!7292)) (= lambda!359558 lambda!359452))))

(declare-fun bs!1648106 () Bool)

(assert (= bs!1648106 (and b!6492132 d!2036524)))

(assert (=> bs!1648106 (not (= lambda!359558 lambda!359499))))

(declare-fun bs!1648107 () Bool)

(assert (= bs!1648107 (and b!6492132 d!2036458)))

(assert (=> bs!1648107 (= (and (= (reg!16698 (regTwo!33251 lt!2389631)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33251 lt!2389631) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359558 lambda!359470))))

(assert (=> bs!1648104 (not (= lambda!359558 lambda!359439))))

(declare-fun bs!1648108 () Bool)

(assert (= bs!1648108 (and b!6492132 d!2036606)))

(assert (=> bs!1648108 (not (= lambda!359558 lambda!359528))))

(declare-fun bs!1648109 () Bool)

(assert (= bs!1648109 (and b!6492132 d!2036516)))

(assert (=> bs!1648109 (not (= lambda!359558 lambda!359498))))

(declare-fun bs!1648110 () Bool)

(assert (= bs!1648110 (and b!6492132 b!6491179)))

(assert (=> bs!1648110 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regTwo!33251 lt!2389631)) (reg!16698 lt!2389659)) (= (regTwo!33251 lt!2389631) lt!2389659)) (= lambda!359558 lambda!359500))))

(declare-fun bs!1648111 () Bool)

(assert (= bs!1648111 (and b!6492132 b!6491886)))

(assert (=> bs!1648111 (= (and (= (reg!16698 (regTwo!33251 lt!2389631)) (reg!16698 (regOne!33251 lt!2389631))) (= (regTwo!33251 lt!2389631) (regOne!33251 lt!2389631))) (= lambda!359558 lambda!359550))))

(assert (=> bs!1648107 (not (= lambda!359558 lambda!359469))))

(assert (=> bs!1648108 (not (= lambda!359558 lambda!359529))))

(assert (=> bs!1648109 (not (= lambda!359558 lambda!359497))))

(assert (=> bs!1648103 (not (= lambda!359558 lambda!359437))))

(declare-fun bs!1648112 () Bool)

(assert (= bs!1648112 (and b!6492132 b!6490932)))

(assert (=> bs!1648112 (not (= lambda!359558 lambda!359462))))

(assert (=> bs!1648099 (not (= lambda!359558 lambda!359477))))

(declare-fun bs!1648113 () Bool)

(assert (= bs!1648113 (and b!6492132 b!6490930)))

(assert (=> bs!1648113 (= (and (= (reg!16698 (regTwo!33251 lt!2389631)) (reg!16698 lt!2389631)) (= (regTwo!33251 lt!2389631) lt!2389631)) (= lambda!359558 lambda!359459))))

(declare-fun bs!1648114 () Bool)

(assert (= bs!1648114 (and b!6492132 b!6491181)))

(assert (=> bs!1648114 (not (= lambda!359558 lambda!359501))))

(assert (=> b!6492132 true))

(assert (=> b!6492132 true))

(declare-fun bs!1648115 () Bool)

(declare-fun b!6492134 () Bool)

(assert (= bs!1648115 (and b!6492134 b!6490643)))

(declare-fun lambda!359559 () Int)

(assert (=> bs!1648115 (not (= lambda!359559 lambda!359442))))

(assert (=> bs!1648115 (not (= lambda!359559 lambda!359441))))

(declare-fun bs!1648116 () Bool)

(assert (= bs!1648116 (and b!6492134 d!2036598)))

(assert (=> bs!1648116 (not (= lambda!359559 lambda!359524))))

(declare-fun bs!1648117 () Bool)

(assert (= bs!1648117 (and b!6492134 d!2036464)))

(assert (=> bs!1648117 (= (and (= (regOne!33250 (regTwo!33251 lt!2389631)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regTwo!33251 lt!2389631)) lt!2389631)) (= lambda!359559 lambda!359480))))

(assert (=> bs!1648115 (= (and (= (regOne!33250 (regTwo!33251 lt!2389631)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regTwo!33251 lt!2389631)) lt!2389631)) (= lambda!359559 lambda!359443))))

(declare-fun bs!1648118 () Bool)

(assert (= bs!1648118 (and b!6492134 d!2036472)))

(assert (=> bs!1648118 (not (= lambda!359559 lambda!359485))))

(declare-fun bs!1648119 () Bool)

(assert (= bs!1648119 (and b!6492134 b!6491888)))

(assert (=> bs!1648119 (= (and (= (regOne!33250 (regTwo!33251 lt!2389631)) (regOne!33250 (regOne!33251 lt!2389631))) (= (regTwo!33250 (regTwo!33251 lt!2389631)) (regTwo!33250 (regOne!33251 lt!2389631)))) (= lambda!359559 lambda!359551))))

(declare-fun bs!1648120 () Bool)

(assert (= bs!1648120 (and b!6492134 b!6490750)))

(assert (=> bs!1648120 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regTwo!33251 lt!2389631)) (regOne!33250 r!7292)) (= (regTwo!33250 (regTwo!33251 lt!2389631)) (regTwo!33250 r!7292))) (= lambda!359559 lambda!359453))))

(declare-fun bs!1648121 () Bool)

(assert (= bs!1648121 (and b!6492134 b!6490649)))

(assert (=> bs!1648121 (not (= lambda!359559 lambda!359436))))

(declare-fun bs!1648122 () Bool)

(assert (= bs!1648122 (and b!6492134 b!6490618)))

(assert (=> bs!1648122 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regTwo!33251 lt!2389631)) lt!2389631) (= (regTwo!33250 (regTwo!33251 lt!2389631)) (regTwo!33250 r!7292))) (= lambda!359559 lambda!359440))))

(declare-fun bs!1648123 () Bool)

(assert (= bs!1648123 (and b!6492134 b!6490748)))

(assert (=> bs!1648123 (not (= lambda!359559 lambda!359452))))

(declare-fun bs!1648124 () Bool)

(assert (= bs!1648124 (and b!6492134 d!2036524)))

(assert (=> bs!1648124 (not (= lambda!359559 lambda!359499))))

(declare-fun bs!1648125 () Bool)

(assert (= bs!1648125 (and b!6492134 b!6492132)))

(assert (=> bs!1648125 (not (= lambda!359559 lambda!359558))))

(declare-fun bs!1648126 () Bool)

(assert (= bs!1648126 (and b!6492134 d!2036458)))

(assert (=> bs!1648126 (not (= lambda!359559 lambda!359470))))

(assert (=> bs!1648122 (not (= lambda!359559 lambda!359439))))

(declare-fun bs!1648127 () Bool)

(assert (= bs!1648127 (and b!6492134 d!2036606)))

(assert (=> bs!1648127 (not (= lambda!359559 lambda!359528))))

(declare-fun bs!1648128 () Bool)

(assert (= bs!1648128 (and b!6492134 d!2036516)))

(assert (=> bs!1648128 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regTwo!33251 lt!2389631)) lt!2389631) (= (regTwo!33250 (regTwo!33251 lt!2389631)) (regTwo!33250 r!7292))) (= lambda!359559 lambda!359498))))

(declare-fun bs!1648129 () Bool)

(assert (= bs!1648129 (and b!6492134 b!6491179)))

(assert (=> bs!1648129 (not (= lambda!359559 lambda!359500))))

(declare-fun bs!1648130 () Bool)

(assert (= bs!1648130 (and b!6492134 b!6491886)))

(assert (=> bs!1648130 (not (= lambda!359559 lambda!359550))))

(assert (=> bs!1648126 (not (= lambda!359559 lambda!359469))))

(assert (=> bs!1648127 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regTwo!33251 lt!2389631)) (regOne!33250 r!7292)) (= (regTwo!33250 (regTwo!33251 lt!2389631)) (regTwo!33250 r!7292))) (= lambda!359559 lambda!359529))))

(assert (=> bs!1648128 (not (= lambda!359559 lambda!359497))))

(assert (=> bs!1648121 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regTwo!33251 lt!2389631)) (regOne!33250 r!7292)) (= (regTwo!33250 (regTwo!33251 lt!2389631)) (regTwo!33250 r!7292))) (= lambda!359559 lambda!359437))))

(declare-fun bs!1648131 () Bool)

(assert (= bs!1648131 (and b!6492134 b!6490932)))

(assert (=> bs!1648131 (= (and (= (regOne!33250 (regTwo!33251 lt!2389631)) (regOne!33250 lt!2389631)) (= (regTwo!33250 (regTwo!33251 lt!2389631)) (regTwo!33250 lt!2389631))) (= lambda!359559 lambda!359462))))

(assert (=> bs!1648117 (not (= lambda!359559 lambda!359477))))

(declare-fun bs!1648132 () Bool)

(assert (= bs!1648132 (and b!6492134 b!6490930)))

(assert (=> bs!1648132 (not (= lambda!359559 lambda!359459))))

(declare-fun bs!1648133 () Bool)

(assert (= bs!1648133 (and b!6492134 b!6491181)))

(assert (=> bs!1648133 (= (and (= (_1!36651 lt!2389655) s!2326) (= (regOne!33250 (regTwo!33251 lt!2389631)) (regOne!33250 lt!2389659)) (= (regTwo!33250 (regTwo!33251 lt!2389631)) (regTwo!33250 lt!2389659))) (= lambda!359559 lambda!359501))))

(assert (=> b!6492134 true))

(assert (=> b!6492134 true))

(declare-fun b!6492126 () Bool)

(declare-fun e!3934363 () Bool)

(declare-fun e!3934364 () Bool)

(assert (=> b!6492126 (= e!3934363 e!3934364)))

(declare-fun res!2666302 () Bool)

(assert (=> b!6492126 (= res!2666302 (not ((_ is EmptyLang!16369) (regTwo!33251 lt!2389631))))))

(assert (=> b!6492126 (=> (not res!2666302) (not e!3934364))))

(declare-fun bm!562073 () Bool)

(declare-fun call!562078 () Bool)

(assert (=> bm!562073 (= call!562078 (isEmpty!37477 (_1!36651 lt!2389655)))))

(declare-fun b!6492127 () Bool)

(declare-fun e!3934359 () Bool)

(declare-fun e!3934358 () Bool)

(assert (=> b!6492127 (= e!3934359 e!3934358)))

(declare-fun res!2666301 () Bool)

(assert (=> b!6492127 (= res!2666301 (matchRSpec!3470 (regOne!33251 (regTwo!33251 lt!2389631)) (_1!36651 lt!2389655)))))

(assert (=> b!6492127 (=> res!2666301 e!3934358)))

(declare-fun b!6492128 () Bool)

(assert (=> b!6492128 (= e!3934358 (matchRSpec!3470 (regTwo!33251 (regTwo!33251 lt!2389631)) (_1!36651 lt!2389655)))))

(declare-fun b!6492129 () Bool)

(declare-fun res!2666300 () Bool)

(declare-fun e!3934361 () Bool)

(assert (=> b!6492129 (=> res!2666300 e!3934361)))

(assert (=> b!6492129 (= res!2666300 call!562078)))

(declare-fun e!3934362 () Bool)

(assert (=> b!6492129 (= e!3934362 e!3934361)))

(declare-fun d!2036932 () Bool)

(declare-fun c!1189798 () Bool)

(assert (=> d!2036932 (= c!1189798 ((_ is EmptyExpr!16369) (regTwo!33251 lt!2389631)))))

(assert (=> d!2036932 (= (matchRSpec!3470 (regTwo!33251 lt!2389631) (_1!36651 lt!2389655)) e!3934363)))

(declare-fun b!6492130 () Bool)

(declare-fun e!3934360 () Bool)

(assert (=> b!6492130 (= e!3934360 (= (_1!36651 lt!2389655) (Cons!65282 (c!1189393 (regTwo!33251 lt!2389631)) Nil!65282)))))

(declare-fun b!6492131 () Bool)

(assert (=> b!6492131 (= e!3934363 call!562078)))

(declare-fun call!562079 () Bool)

(assert (=> b!6492132 (= e!3934361 call!562079)))

(declare-fun b!6492133 () Bool)

(assert (=> b!6492133 (= e!3934359 e!3934362)))

(declare-fun c!1189799 () Bool)

(assert (=> b!6492133 (= c!1189799 ((_ is Star!16369) (regTwo!33251 lt!2389631)))))

(assert (=> b!6492134 (= e!3934362 call!562079)))

(declare-fun bm!562074 () Bool)

(assert (=> bm!562074 (= call!562079 (Exists!3439 (ite c!1189799 lambda!359558 lambda!359559)))))

(declare-fun b!6492135 () Bool)

(declare-fun c!1189800 () Bool)

(assert (=> b!6492135 (= c!1189800 ((_ is Union!16369) (regTwo!33251 lt!2389631)))))

(assert (=> b!6492135 (= e!3934360 e!3934359)))

(declare-fun b!6492136 () Bool)

(declare-fun c!1189801 () Bool)

(assert (=> b!6492136 (= c!1189801 ((_ is ElementMatch!16369) (regTwo!33251 lt!2389631)))))

(assert (=> b!6492136 (= e!3934364 e!3934360)))

(assert (= (and d!2036932 c!1189798) b!6492131))

(assert (= (and d!2036932 (not c!1189798)) b!6492126))

(assert (= (and b!6492126 res!2666302) b!6492136))

(assert (= (and b!6492136 c!1189801) b!6492130))

(assert (= (and b!6492136 (not c!1189801)) b!6492135))

(assert (= (and b!6492135 c!1189800) b!6492127))

(assert (= (and b!6492135 (not c!1189800)) b!6492133))

(assert (= (and b!6492127 (not res!2666301)) b!6492128))

(assert (= (and b!6492133 c!1189799) b!6492129))

(assert (= (and b!6492133 (not c!1189799)) b!6492134))

(assert (= (and b!6492129 (not res!2666300)) b!6492132))

(assert (= (or b!6492132 b!6492134) bm!562074))

(assert (= (or b!6492131 b!6492129) bm!562073))

(assert (=> bm!562073 m!7279248))

(declare-fun m!7280764 () Bool)

(assert (=> b!6492127 m!7280764))

(declare-fun m!7280766 () Bool)

(assert (=> b!6492128 m!7280766))

(declare-fun m!7280768 () Bool)

(assert (=> bm!562074 m!7280768))

(assert (=> b!6490926 d!2036932))

(declare-fun d!2036934 () Bool)

(declare-fun c!1189805 () Bool)

(assert (=> d!2036934 (= c!1189805 (and ((_ is ElementMatch!16369) (h!71731 (exprs!6253 lt!2389656))) (= (c!1189393 (h!71731 (exprs!6253 lt!2389656))) (h!71730 s!2326))))))

(declare-fun e!3934369 () (InoxSet Context!11506))

(assert (=> d!2036934 (= (derivationStepZipperDown!1617 (h!71731 (exprs!6253 lt!2389656)) (Context!11507 (t!379035 (exprs!6253 lt!2389656))) (h!71730 s!2326)) e!3934369)))

(declare-fun b!6492137 () Bool)

(declare-fun e!3934368 () Bool)

(assert (=> b!6492137 (= e!3934368 (nullable!6362 (regOne!33250 (h!71731 (exprs!6253 lt!2389656)))))))

(declare-fun c!1189802 () Bool)

(declare-fun c!1189804 () Bool)

(declare-fun bm!562075 () Bool)

(declare-fun call!562085 () List!65407)

(assert (=> bm!562075 (= call!562085 ($colon$colon!2221 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389656)))) (ite (or c!1189804 c!1189802) (regTwo!33250 (h!71731 (exprs!6253 lt!2389656))) (h!71731 (exprs!6253 lt!2389656)))))))

(declare-fun b!6492138 () Bool)

(declare-fun c!1189806 () Bool)

(assert (=> b!6492138 (= c!1189806 ((_ is Star!16369) (h!71731 (exprs!6253 lt!2389656))))))

(declare-fun e!3934366 () (InoxSet Context!11506))

(declare-fun e!3934367 () (InoxSet Context!11506))

(assert (=> b!6492138 (= e!3934366 e!3934367)))

(declare-fun bm!562076 () Bool)

(declare-fun call!562082 () List!65407)

(assert (=> bm!562076 (= call!562082 call!562085)))

(declare-fun bm!562077 () Bool)

(declare-fun call!562083 () (InoxSet Context!11506))

(declare-fun call!562080 () (InoxSet Context!11506))

(assert (=> bm!562077 (= call!562083 call!562080)))

(declare-fun bm!562078 () Bool)

(declare-fun call!562084 () (InoxSet Context!11506))

(assert (=> bm!562078 (= call!562084 call!562083)))

(declare-fun c!1189803 () Bool)

(declare-fun call!562081 () (InoxSet Context!11506))

(declare-fun bm!562079 () Bool)

(assert (=> bm!562079 (= call!562081 (derivationStepZipperDown!1617 (ite c!1189803 (regTwo!33251 (h!71731 (exprs!6253 lt!2389656))) (regOne!33250 (h!71731 (exprs!6253 lt!2389656)))) (ite c!1189803 (Context!11507 (t!379035 (exprs!6253 lt!2389656))) (Context!11507 call!562085)) (h!71730 s!2326)))))

(declare-fun b!6492139 () Bool)

(assert (=> b!6492139 (= e!3934367 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6492140 () Bool)

(assert (=> b!6492140 (= e!3934369 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (t!379035 (exprs!6253 lt!2389656))) true))))

(declare-fun b!6492141 () Bool)

(assert (=> b!6492141 (= c!1189804 e!3934368)))

(declare-fun res!2666303 () Bool)

(assert (=> b!6492141 (=> (not res!2666303) (not e!3934368))))

(assert (=> b!6492141 (= res!2666303 ((_ is Concat!25214) (h!71731 (exprs!6253 lt!2389656))))))

(declare-fun e!3934370 () (InoxSet Context!11506))

(declare-fun e!3934365 () (InoxSet Context!11506))

(assert (=> b!6492141 (= e!3934370 e!3934365)))

(declare-fun bm!562080 () Bool)

(assert (=> bm!562080 (= call!562080 (derivationStepZipperDown!1617 (ite c!1189803 (regOne!33251 (h!71731 (exprs!6253 lt!2389656))) (ite c!1189804 (regTwo!33250 (h!71731 (exprs!6253 lt!2389656))) (ite c!1189802 (regOne!33250 (h!71731 (exprs!6253 lt!2389656))) (reg!16698 (h!71731 (exprs!6253 lt!2389656)))))) (ite (or c!1189803 c!1189804) (Context!11507 (t!379035 (exprs!6253 lt!2389656))) (Context!11507 call!562082)) (h!71730 s!2326)))))

(declare-fun b!6492142 () Bool)

(assert (=> b!6492142 (= e!3934367 call!562084)))

(declare-fun b!6492143 () Bool)

(assert (=> b!6492143 (= e!3934370 ((_ map or) call!562080 call!562081))))

(declare-fun b!6492144 () Bool)

(assert (=> b!6492144 (= e!3934365 ((_ map or) call!562081 call!562083))))

(declare-fun b!6492145 () Bool)

(assert (=> b!6492145 (= e!3934366 call!562084)))

(declare-fun b!6492146 () Bool)

(assert (=> b!6492146 (= e!3934369 e!3934370)))

(assert (=> b!6492146 (= c!1189803 ((_ is Union!16369) (h!71731 (exprs!6253 lt!2389656))))))

(declare-fun b!6492147 () Bool)

(assert (=> b!6492147 (= e!3934365 e!3934366)))

(assert (=> b!6492147 (= c!1189802 ((_ is Concat!25214) (h!71731 (exprs!6253 lt!2389656))))))

(assert (= (and d!2036934 c!1189805) b!6492140))

(assert (= (and d!2036934 (not c!1189805)) b!6492146))

(assert (= (and b!6492146 c!1189803) b!6492143))

(assert (= (and b!6492146 (not c!1189803)) b!6492141))

(assert (= (and b!6492141 res!2666303) b!6492137))

(assert (= (and b!6492141 c!1189804) b!6492144))

(assert (= (and b!6492141 (not c!1189804)) b!6492147))

(assert (= (and b!6492147 c!1189802) b!6492145))

(assert (= (and b!6492147 (not c!1189802)) b!6492138))

(assert (= (and b!6492138 c!1189806) b!6492142))

(assert (= (and b!6492138 (not c!1189806)) b!6492139))

(assert (= (or b!6492145 b!6492142) bm!562076))

(assert (= (or b!6492145 b!6492142) bm!562078))

(assert (= (or b!6492144 bm!562076) bm!562075))

(assert (= (or b!6492144 bm!562078) bm!562077))

(assert (= (or b!6492143 b!6492144) bm!562079))

(assert (= (or b!6492143 bm!562077) bm!562080))

(declare-fun m!7280770 () Bool)

(assert (=> b!6492140 m!7280770))

(declare-fun m!7280772 () Bool)

(assert (=> b!6492137 m!7280772))

(declare-fun m!7280774 () Bool)

(assert (=> bm!562080 m!7280774))

(declare-fun m!7280776 () Bool)

(assert (=> bm!562079 m!7280776))

(declare-fun m!7280778 () Bool)

(assert (=> bm!562075 m!7280778))

(assert (=> bm!561978 d!2036934))

(declare-fun d!2036936 () Bool)

(assert (=> d!2036936 true))

(declare-fun setRes!44228 () Bool)

(assert (=> d!2036936 setRes!44228))

(declare-fun condSetEmpty!44228 () Bool)

(declare-fun res!2666306 () (InoxSet Context!11506))

(assert (=> d!2036936 (= condSetEmpty!44228 (= res!2666306 ((as const (Array Context!11506 Bool)) false)))))

(assert (=> d!2036936 (= (choose!48171 z!1189 lambda!359438) res!2666306)))

(declare-fun setIsEmpty!44228 () Bool)

(assert (=> setIsEmpty!44228 setRes!44228))

(declare-fun setElem!44228 () Context!11506)

(declare-fun setNonEmpty!44228 () Bool)

(declare-fun tp!1796824 () Bool)

(declare-fun e!3934373 () Bool)

(assert (=> setNonEmpty!44228 (= setRes!44228 (and tp!1796824 (inv!84169 setElem!44228) e!3934373))))

(declare-fun setRest!44228 () (InoxSet Context!11506))

(assert (=> setNonEmpty!44228 (= res!2666306 ((_ map or) (store ((as const (Array Context!11506 Bool)) false) setElem!44228 true) setRest!44228))))

(declare-fun b!6492150 () Bool)

(declare-fun tp!1796823 () Bool)

(assert (=> b!6492150 (= e!3934373 tp!1796823)))

(assert (= (and d!2036936 condSetEmpty!44228) setIsEmpty!44228))

(assert (= (and d!2036936 (not condSetEmpty!44228)) setNonEmpty!44228))

(assert (= setNonEmpty!44228 b!6492150))

(declare-fun m!7280780 () Bool)

(assert (=> setNonEmpty!44228 m!7280780))

(assert (=> d!2036442 d!2036936))

(declare-fun d!2036938 () Bool)

(declare-fun c!1189810 () Bool)

(assert (=> d!2036938 (= c!1189810 (and ((_ is ElementMatch!16369) (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343)))))))) (= (c!1189393 (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343)))))))) (h!71730 s!2326))))))

(declare-fun e!3934378 () (InoxSet Context!11506))

(assert (=> d!2036938 (= (derivationStepZipperDown!1617 (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343))))))) (ite (or c!1189466 c!1189467) lt!2389642 (Context!11507 call!561956)) (h!71730 s!2326)) e!3934378)))

(declare-fun e!3934377 () Bool)

(declare-fun b!6492151 () Bool)

(assert (=> b!6492151 (= e!3934377 (nullable!6362 (regOne!33250 (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343))))))))))))

(declare-fun bm!562081 () Bool)

(declare-fun c!1189807 () Bool)

(declare-fun c!1189809 () Bool)

(declare-fun call!562091 () List!65407)

(assert (=> bm!562081 (= call!562091 ($colon$colon!2221 (exprs!6253 (ite (or c!1189466 c!1189467) lt!2389642 (Context!11507 call!561956))) (ite (or c!1189809 c!1189807) (regTwo!33250 (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343)))))))) (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343))))))))))))

(declare-fun c!1189811 () Bool)

(declare-fun b!6492152 () Bool)

(assert (=> b!6492152 (= c!1189811 ((_ is Star!16369) (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343)))))))))))

(declare-fun e!3934375 () (InoxSet Context!11506))

(declare-fun e!3934376 () (InoxSet Context!11506))

(assert (=> b!6492152 (= e!3934375 e!3934376)))

(declare-fun bm!562082 () Bool)

(declare-fun call!562088 () List!65407)

(assert (=> bm!562082 (= call!562088 call!562091)))

(declare-fun bm!562083 () Bool)

(declare-fun call!562089 () (InoxSet Context!11506))

(declare-fun call!562086 () (InoxSet Context!11506))

(assert (=> bm!562083 (= call!562089 call!562086)))

(declare-fun bm!562084 () Bool)

(declare-fun call!562090 () (InoxSet Context!11506))

(assert (=> bm!562084 (= call!562090 call!562089)))

(declare-fun call!562087 () (InoxSet Context!11506))

(declare-fun c!1189808 () Bool)

(declare-fun bm!562085 () Bool)

(assert (=> bm!562085 (= call!562087 (derivationStepZipperDown!1617 (ite c!1189808 (regTwo!33251 (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343)))))))) (regOne!33250 (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343))))))))) (ite c!1189808 (ite (or c!1189466 c!1189467) lt!2389642 (Context!11507 call!561956)) (Context!11507 call!562091)) (h!71730 s!2326)))))

(declare-fun b!6492153 () Bool)

(assert (=> b!6492153 (= e!3934376 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6492154 () Bool)

(assert (=> b!6492154 (= e!3934378 (store ((as const (Array Context!11506 Bool)) false) (ite (or c!1189466 c!1189467) lt!2389642 (Context!11507 call!561956)) true))))

(declare-fun b!6492155 () Bool)

(assert (=> b!6492155 (= c!1189809 e!3934377)))

(declare-fun res!2666307 () Bool)

(assert (=> b!6492155 (=> (not res!2666307) (not e!3934377))))

(assert (=> b!6492155 (= res!2666307 ((_ is Concat!25214) (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343)))))))))))

(declare-fun e!3934379 () (InoxSet Context!11506))

(declare-fun e!3934374 () (InoxSet Context!11506))

(assert (=> b!6492155 (= e!3934379 e!3934374)))

(declare-fun bm!562086 () Bool)

(assert (=> bm!562086 (= call!562086 (derivationStepZipperDown!1617 (ite c!1189808 (regOne!33251 (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343)))))))) (ite c!1189809 (regTwo!33250 (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343)))))))) (ite c!1189807 (regOne!33250 (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343)))))))) (reg!16698 (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343))))))))))) (ite (or c!1189808 c!1189809) (ite (or c!1189466 c!1189467) lt!2389642 (Context!11507 call!561956)) (Context!11507 call!562088)) (h!71730 s!2326)))))

(declare-fun b!6492156 () Bool)

(assert (=> b!6492156 (= e!3934376 call!562090)))

(declare-fun b!6492157 () Bool)

(assert (=> b!6492157 (= e!3934379 ((_ map or) call!562086 call!562087))))

(declare-fun b!6492158 () Bool)

(assert (=> b!6492158 (= e!3934374 ((_ map or) call!562087 call!562089))))

(declare-fun b!6492159 () Bool)

(assert (=> b!6492159 (= e!3934375 call!562090)))

(declare-fun b!6492160 () Bool)

(assert (=> b!6492160 (= e!3934378 e!3934379)))

(assert (=> b!6492160 (= c!1189808 ((_ is Union!16369) (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343)))))))))))

(declare-fun b!6492161 () Bool)

(assert (=> b!6492161 (= e!3934374 e!3934375)))

(assert (=> b!6492161 (= c!1189807 ((_ is Concat!25214) (ite c!1189466 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189467 (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (ite c!1189465 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))) (reg!16698 (h!71731 (exprs!6253 (h!71732 zl!343)))))))))))

(assert (= (and d!2036938 c!1189810) b!6492154))

(assert (= (and d!2036938 (not c!1189810)) b!6492160))

(assert (= (and b!6492160 c!1189808) b!6492157))

(assert (= (and b!6492160 (not c!1189808)) b!6492155))

(assert (= (and b!6492155 res!2666307) b!6492151))

(assert (= (and b!6492155 c!1189809) b!6492158))

(assert (= (and b!6492155 (not c!1189809)) b!6492161))

(assert (= (and b!6492161 c!1189807) b!6492159))

(assert (= (and b!6492161 (not c!1189807)) b!6492152))

(assert (= (and b!6492152 c!1189811) b!6492156))

(assert (= (and b!6492152 (not c!1189811)) b!6492153))

(assert (= (or b!6492159 b!6492156) bm!562082))

(assert (= (or b!6492159 b!6492156) bm!562084))

(assert (= (or b!6492158 bm!562082) bm!562081))

(assert (= (or b!6492158 bm!562084) bm!562083))

(assert (= (or b!6492157 b!6492158) bm!562085))

(assert (= (or b!6492157 bm!562083) bm!562086))

(declare-fun m!7280782 () Bool)

(assert (=> b!6492154 m!7280782))

(declare-fun m!7280784 () Bool)

(assert (=> b!6492151 m!7280784))

(declare-fun m!7280786 () Bool)

(assert (=> bm!562086 m!7280786))

(declare-fun m!7280788 () Bool)

(assert (=> bm!562085 m!7280788))

(declare-fun m!7280790 () Bool)

(assert (=> bm!562081 m!7280790))

(assert (=> bm!561954 d!2036938))

(declare-fun d!2036940 () Bool)

(assert (=> d!2036940 (= (isEmpty!37477 (tail!12296 (_1!36651 lt!2389638))) ((_ is Nil!65282) (tail!12296 (_1!36651 lt!2389638))))))

(assert (=> b!6491143 d!2036940))

(declare-fun d!2036942 () Bool)

(assert (=> d!2036942 (= (tail!12296 (_1!36651 lt!2389638)) (t!379034 (_1!36651 lt!2389638)))))

(assert (=> b!6491143 d!2036942))

(declare-fun d!2036944 () Bool)

(declare-fun c!1189812 () Bool)

(assert (=> d!2036944 (= c!1189812 (isEmpty!37477 (tail!12296 lt!2389663)))))

(declare-fun e!3934380 () Bool)

(assert (=> d!2036944 (= (matchZipper!2381 (derivationStepZipper!2335 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 lt!2389623 lt!2389636)) true) (head!13211 lt!2389663)) (tail!12296 lt!2389663)) e!3934380)))

(declare-fun b!6492162 () Bool)

(assert (=> b!6492162 (= e!3934380 (nullableZipper!2125 (derivationStepZipper!2335 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 lt!2389623 lt!2389636)) true) (head!13211 lt!2389663))))))

(declare-fun b!6492163 () Bool)

(assert (=> b!6492163 (= e!3934380 (matchZipper!2381 (derivationStepZipper!2335 (derivationStepZipper!2335 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 lt!2389623 lt!2389636)) true) (head!13211 lt!2389663)) (head!13211 (tail!12296 lt!2389663))) (tail!12296 (tail!12296 lt!2389663))))))

(assert (= (and d!2036944 c!1189812) b!6492162))

(assert (= (and d!2036944 (not c!1189812)) b!6492163))

(assert (=> d!2036944 m!7280042))

(assert (=> d!2036944 m!7280092))

(assert (=> b!6492162 m!7280040))

(declare-fun m!7280792 () Bool)

(assert (=> b!6492162 m!7280792))

(assert (=> b!6492163 m!7280042))

(assert (=> b!6492163 m!7280712))

(assert (=> b!6492163 m!7280040))

(assert (=> b!6492163 m!7280712))

(declare-fun m!7280794 () Bool)

(assert (=> b!6492163 m!7280794))

(assert (=> b!6492163 m!7280042))

(assert (=> b!6492163 m!7280706))

(assert (=> b!6492163 m!7280794))

(assert (=> b!6492163 m!7280706))

(declare-fun m!7280796 () Bool)

(assert (=> b!6492163 m!7280796))

(assert (=> b!6491469 d!2036944))

(declare-fun bs!1648134 () Bool)

(declare-fun d!2036946 () Bool)

(assert (= bs!1648134 (and d!2036946 b!6490636)))

(declare-fun lambda!359560 () Int)

(assert (=> bs!1648134 (= (= (head!13211 lt!2389663) (h!71730 s!2326)) (= lambda!359560 lambda!359438))))

(declare-fun bs!1648135 () Bool)

(assert (= bs!1648135 (and d!2036946 d!2036402)))

(assert (=> bs!1648135 (= (= (head!13211 lt!2389663) (h!71730 s!2326)) (= lambda!359560 lambda!359447))))

(declare-fun bs!1648136 () Bool)

(assert (= bs!1648136 (and d!2036946 d!2036822)))

(assert (=> bs!1648136 (= (= (head!13211 lt!2389663) (head!13211 (t!379034 s!2326))) (= lambda!359560 lambda!359549))))

(assert (=> d!2036946 true))

(assert (=> d!2036946 (= (derivationStepZipper!2335 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 lt!2389623 lt!2389636)) true) (head!13211 lt!2389663)) (flatMap!1874 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 lt!2389623 lt!2389636)) true) lambda!359560))))

(declare-fun bs!1648137 () Bool)

(assert (= bs!1648137 d!2036946))

(assert (=> bs!1648137 m!7279154))

(declare-fun m!7280798 () Bool)

(assert (=> bs!1648137 m!7280798))

(assert (=> b!6491469 d!2036946))

(assert (=> b!6491469 d!2036814))

(assert (=> b!6491469 d!2036918))

(declare-fun d!2036948 () Bool)

(assert (=> d!2036948 (= (isEmpty!37477 (tail!12296 lt!2389620)) ((_ is Nil!65282) (tail!12296 lt!2389620)))))

(assert (=> b!6491552 d!2036948))

(declare-fun d!2036950 () Bool)

(assert (=> d!2036950 (= (tail!12296 lt!2389620) (t!379034 lt!2389620))))

(assert (=> b!6491552 d!2036950))

(assert (=> b!6490834 d!2036906))

(assert (=> d!2036580 d!2036886))

(declare-fun b!6492164 () Bool)

(declare-fun res!2666313 () Bool)

(declare-fun e!3934381 () Bool)

(assert (=> b!6492164 (=> res!2666313 e!3934381)))

(declare-fun e!3934385 () Bool)

(assert (=> b!6492164 (= res!2666313 e!3934385)))

(declare-fun res!2666310 () Bool)

(assert (=> b!6492164 (=> (not res!2666310) (not e!3934385))))

(declare-fun lt!2389899 () Bool)

(assert (=> b!6492164 (= res!2666310 lt!2389899)))

(declare-fun b!6492165 () Bool)

(declare-fun res!2666311 () Bool)

(assert (=> b!6492165 (=> (not res!2666311) (not e!3934385))))

(assert (=> b!6492165 (= res!2666311 (isEmpty!37477 (tail!12296 (tail!12296 (_2!36651 lt!2389655)))))))

(declare-fun b!6492167 () Bool)

(declare-fun e!3934383 () Bool)

(assert (=> b!6492167 (= e!3934381 e!3934383)))

(declare-fun res!2666314 () Bool)

(assert (=> b!6492167 (=> (not res!2666314) (not e!3934383))))

(assert (=> b!6492167 (= res!2666314 (not lt!2389899))))

(declare-fun bm!562087 () Bool)

(declare-fun call!562092 () Bool)

(assert (=> bm!562087 (= call!562092 (isEmpty!37477 (tail!12296 (_2!36651 lt!2389655))))))

(declare-fun b!6492168 () Bool)

(declare-fun e!3934384 () Bool)

(assert (=> b!6492168 (= e!3934384 (not (= (head!13211 (tail!12296 (_2!36651 lt!2389655))) (c!1189393 (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 lt!2389655)))))))))

(declare-fun b!6492169 () Bool)

(declare-fun e!3934387 () Bool)

(assert (=> b!6492169 (= e!3934387 (matchR!8552 (derivativeStep!5064 (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 lt!2389655))) (head!13211 (tail!12296 (_2!36651 lt!2389655)))) (tail!12296 (tail!12296 (_2!36651 lt!2389655)))))))

(declare-fun b!6492170 () Bool)

(declare-fun res!2666315 () Bool)

(assert (=> b!6492170 (=> res!2666315 e!3934384)))

(assert (=> b!6492170 (= res!2666315 (not (isEmpty!37477 (tail!12296 (tail!12296 (_2!36651 lt!2389655))))))))

(declare-fun b!6492171 () Bool)

(declare-fun res!2666312 () Bool)

(assert (=> b!6492171 (=> res!2666312 e!3934381)))

(assert (=> b!6492171 (= res!2666312 (not ((_ is ElementMatch!16369) (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 lt!2389655))))))))

(declare-fun e!3934382 () Bool)

(assert (=> b!6492171 (= e!3934382 e!3934381)))

(declare-fun b!6492172 () Bool)

(declare-fun e!3934386 () Bool)

(assert (=> b!6492172 (= e!3934386 (= lt!2389899 call!562092))))

(declare-fun b!6492173 () Bool)

(assert (=> b!6492173 (= e!3934383 e!3934384)))

(declare-fun res!2666309 () Bool)

(assert (=> b!6492173 (=> res!2666309 e!3934384)))

(assert (=> b!6492173 (= res!2666309 call!562092)))

(declare-fun b!6492174 () Bool)

(assert (=> b!6492174 (= e!3934387 (nullable!6362 (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 lt!2389655)))))))

(declare-fun b!6492175 () Bool)

(assert (=> b!6492175 (= e!3934385 (= (head!13211 (tail!12296 (_2!36651 lt!2389655))) (c!1189393 (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 lt!2389655))))))))

(declare-fun d!2036952 () Bool)

(assert (=> d!2036952 e!3934386))

(declare-fun c!1189815 () Bool)

(assert (=> d!2036952 (= c!1189815 ((_ is EmptyExpr!16369) (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 lt!2389655)))))))

(assert (=> d!2036952 (= lt!2389899 e!3934387)))

(declare-fun c!1189814 () Bool)

(assert (=> d!2036952 (= c!1189814 (isEmpty!37477 (tail!12296 (_2!36651 lt!2389655))))))

(assert (=> d!2036952 (validRegex!8105 (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 lt!2389655))))))

(assert (=> d!2036952 (= (matchR!8552 (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 lt!2389655))) (tail!12296 (_2!36651 lt!2389655))) lt!2389899)))

(declare-fun b!6492166 () Bool)

(assert (=> b!6492166 (= e!3934386 e!3934382)))

(declare-fun c!1189813 () Bool)

(assert (=> b!6492166 (= c!1189813 ((_ is EmptyLang!16369) (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 lt!2389655)))))))

(declare-fun b!6492176 () Bool)

(assert (=> b!6492176 (= e!3934382 (not lt!2389899))))

(declare-fun b!6492177 () Bool)

(declare-fun res!2666308 () Bool)

(assert (=> b!6492177 (=> (not res!2666308) (not e!3934385))))

(assert (=> b!6492177 (= res!2666308 (not call!562092))))

(assert (= (and d!2036952 c!1189814) b!6492174))

(assert (= (and d!2036952 (not c!1189814)) b!6492169))

(assert (= (and d!2036952 c!1189815) b!6492172))

(assert (= (and d!2036952 (not c!1189815)) b!6492166))

(assert (= (and b!6492166 c!1189813) b!6492176))

(assert (= (and b!6492166 (not c!1189813)) b!6492171))

(assert (= (and b!6492171 (not res!2666312)) b!6492164))

(assert (= (and b!6492164 res!2666310) b!6492177))

(assert (= (and b!6492177 res!2666308) b!6492165))

(assert (= (and b!6492165 res!2666311) b!6492175))

(assert (= (and b!6492164 (not res!2666313)) b!6492167))

(assert (= (and b!6492167 res!2666314) b!6492173))

(assert (= (and b!6492173 (not res!2666309)) b!6492170))

(assert (= (and b!6492170 (not res!2666315)) b!6492168))

(assert (= (or b!6492172 b!6492173 b!6492177) bm!562087))

(assert (=> b!6492165 m!7279810))

(declare-fun m!7280800 () Bool)

(assert (=> b!6492165 m!7280800))

(assert (=> b!6492165 m!7280800))

(declare-fun m!7280802 () Bool)

(assert (=> b!6492165 m!7280802))

(assert (=> d!2036952 m!7279810))

(assert (=> d!2036952 m!7279812))

(assert (=> d!2036952 m!7279822))

(declare-fun m!7280804 () Bool)

(assert (=> d!2036952 m!7280804))

(assert (=> b!6492170 m!7279810))

(assert (=> b!6492170 m!7280800))

(assert (=> b!6492170 m!7280800))

(assert (=> b!6492170 m!7280802))

(assert (=> b!6492168 m!7279810))

(declare-fun m!7280806 () Bool)

(assert (=> b!6492168 m!7280806))

(assert (=> b!6492174 m!7279822))

(declare-fun m!7280808 () Bool)

(assert (=> b!6492174 m!7280808))

(assert (=> bm!562087 m!7279810))

(assert (=> bm!562087 m!7279812))

(assert (=> b!6492175 m!7279810))

(assert (=> b!6492175 m!7280806))

(assert (=> b!6492169 m!7279810))

(assert (=> b!6492169 m!7280806))

(assert (=> b!6492169 m!7279822))

(assert (=> b!6492169 m!7280806))

(declare-fun m!7280810 () Bool)

(assert (=> b!6492169 m!7280810))

(assert (=> b!6492169 m!7279810))

(assert (=> b!6492169 m!7280800))

(assert (=> b!6492169 m!7280810))

(assert (=> b!6492169 m!7280800))

(declare-fun m!7280812 () Bool)

(assert (=> b!6492169 m!7280812))

(assert (=> b!6491316 d!2036952))

(declare-fun b!6492178 () Bool)

(declare-fun e!3934391 () Regex!16369)

(assert (=> b!6492178 (= e!3934391 (ite (= (head!13211 (_2!36651 lt!2389655)) (c!1189393 (regTwo!33250 r!7292))) EmptyExpr!16369 EmptyLang!16369))))

(declare-fun b!6492179 () Bool)

(declare-fun e!3934388 () Regex!16369)

(declare-fun call!562096 () Regex!16369)

(declare-fun call!562093 () Regex!16369)

(assert (=> b!6492179 (= e!3934388 (Union!16369 call!562096 call!562093))))

(declare-fun d!2036954 () Bool)

(declare-fun lt!2389900 () Regex!16369)

(assert (=> d!2036954 (validRegex!8105 lt!2389900)))

(declare-fun e!3934390 () Regex!16369)

(assert (=> d!2036954 (= lt!2389900 e!3934390)))

(declare-fun c!1189818 () Bool)

(assert (=> d!2036954 (= c!1189818 (or ((_ is EmptyExpr!16369) (regTwo!33250 r!7292)) ((_ is EmptyLang!16369) (regTwo!33250 r!7292))))))

(assert (=> d!2036954 (validRegex!8105 (regTwo!33250 r!7292))))

(assert (=> d!2036954 (= (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 lt!2389655))) lt!2389900)))

(declare-fun call!562094 () Regex!16369)

(declare-fun b!6492180 () Bool)

(declare-fun e!3934389 () Regex!16369)

(assert (=> b!6492180 (= e!3934389 (Union!16369 (Concat!25214 call!562096 (regTwo!33250 (regTwo!33250 r!7292))) call!562094))))

(declare-fun c!1189820 () Bool)

(declare-fun bm!562088 () Bool)

(assert (=> bm!562088 (= call!562096 (derivativeStep!5064 (ite c!1189820 (regOne!33251 (regTwo!33250 r!7292)) (regOne!33250 (regTwo!33250 r!7292))) (head!13211 (_2!36651 lt!2389655))))))

(declare-fun bm!562089 () Bool)

(declare-fun call!562095 () Regex!16369)

(assert (=> bm!562089 (= call!562095 call!562093)))

(declare-fun b!6492181 () Bool)

(declare-fun c!1189817 () Bool)

(assert (=> b!6492181 (= c!1189817 (nullable!6362 (regOne!33250 (regTwo!33250 r!7292))))))

(declare-fun e!3934392 () Regex!16369)

(assert (=> b!6492181 (= e!3934392 e!3934389)))

(declare-fun bm!562090 () Bool)

(declare-fun c!1189819 () Bool)

(assert (=> bm!562090 (= call!562093 (derivativeStep!5064 (ite c!1189820 (regTwo!33251 (regTwo!33250 r!7292)) (ite c!1189819 (reg!16698 (regTwo!33250 r!7292)) (ite c!1189817 (regTwo!33250 (regTwo!33250 r!7292)) (regOne!33250 (regTwo!33250 r!7292))))) (head!13211 (_2!36651 lt!2389655))))))

(declare-fun b!6492182 () Bool)

(assert (=> b!6492182 (= e!3934389 (Union!16369 (Concat!25214 call!562094 (regTwo!33250 (regTwo!33250 r!7292))) EmptyLang!16369))))

(declare-fun b!6492183 () Bool)

(assert (=> b!6492183 (= e!3934388 e!3934392)))

(assert (=> b!6492183 (= c!1189819 ((_ is Star!16369) (regTwo!33250 r!7292)))))

(declare-fun b!6492184 () Bool)

(assert (=> b!6492184 (= e!3934390 EmptyLang!16369)))

(declare-fun bm!562091 () Bool)

(assert (=> bm!562091 (= call!562094 call!562095)))

(declare-fun b!6492185 () Bool)

(assert (=> b!6492185 (= e!3934392 (Concat!25214 call!562095 (regTwo!33250 r!7292)))))

(declare-fun b!6492186 () Bool)

(assert (=> b!6492186 (= c!1189820 ((_ is Union!16369) (regTwo!33250 r!7292)))))

(assert (=> b!6492186 (= e!3934391 e!3934388)))

(declare-fun b!6492187 () Bool)

(assert (=> b!6492187 (= e!3934390 e!3934391)))

(declare-fun c!1189816 () Bool)

(assert (=> b!6492187 (= c!1189816 ((_ is ElementMatch!16369) (regTwo!33250 r!7292)))))

(assert (= (and d!2036954 c!1189818) b!6492184))

(assert (= (and d!2036954 (not c!1189818)) b!6492187))

(assert (= (and b!6492187 c!1189816) b!6492178))

(assert (= (and b!6492187 (not c!1189816)) b!6492186))

(assert (= (and b!6492186 c!1189820) b!6492179))

(assert (= (and b!6492186 (not c!1189820)) b!6492183))

(assert (= (and b!6492183 c!1189819) b!6492185))

(assert (= (and b!6492183 (not c!1189819)) b!6492181))

(assert (= (and b!6492181 c!1189817) b!6492180))

(assert (= (and b!6492181 (not c!1189817)) b!6492182))

(assert (= (or b!6492180 b!6492182) bm!562091))

(assert (= (or b!6492185 bm!562091) bm!562089))

(assert (= (or b!6492179 bm!562089) bm!562090))

(assert (= (or b!6492179 b!6492180) bm!562088))

(declare-fun m!7280814 () Bool)

(assert (=> d!2036954 m!7280814))

(assert (=> d!2036954 m!7279816))

(assert (=> bm!562088 m!7279818))

(declare-fun m!7280816 () Bool)

(assert (=> bm!562088 m!7280816))

(declare-fun m!7280818 () Bool)

(assert (=> b!6492181 m!7280818))

(assert (=> bm!562090 m!7279818))

(declare-fun m!7280820 () Bool)

(assert (=> bm!562090 m!7280820))

(assert (=> b!6491316 d!2036954))

(assert (=> b!6491316 d!2036864))

(declare-fun d!2036956 () Bool)

(assert (=> d!2036956 (= (tail!12296 (_2!36651 lt!2389655)) (t!379034 (_2!36651 lt!2389655)))))

(assert (=> b!6491316 d!2036956))

(declare-fun d!2036958 () Bool)

(assert (=> d!2036958 (= (isEmpty!37477 (tail!12296 lt!2389641)) ((_ is Nil!65282) (tail!12296 lt!2389641)))))

(assert (=> b!6491541 d!2036958))

(assert (=> b!6491541 d!2036852))

(declare-fun d!2036960 () Bool)

(assert (=> d!2036960 (= (isEmptyLang!1769 lt!2389759) ((_ is EmptyLang!16369) lt!2389759))))

(assert (=> b!6491289 d!2036960))

(declare-fun d!2036962 () Bool)

(declare-fun c!1189824 () Bool)

(assert (=> d!2036962 (= c!1189824 (and ((_ is ElementMatch!16369) (h!71731 (exprs!6253 lt!2389642))) (= (c!1189393 (h!71731 (exprs!6253 lt!2389642))) (h!71730 s!2326))))))

(declare-fun e!3934397 () (InoxSet Context!11506))

(assert (=> d!2036962 (= (derivationStepZipperDown!1617 (h!71731 (exprs!6253 lt!2389642)) (Context!11507 (t!379035 (exprs!6253 lt!2389642))) (h!71730 s!2326)) e!3934397)))

(declare-fun b!6492188 () Bool)

(declare-fun e!3934396 () Bool)

(assert (=> b!6492188 (= e!3934396 (nullable!6362 (regOne!33250 (h!71731 (exprs!6253 lt!2389642)))))))

(declare-fun bm!562092 () Bool)

(declare-fun c!1189823 () Bool)

(declare-fun c!1189821 () Bool)

(declare-fun call!562102 () List!65407)

(assert (=> bm!562092 (= call!562102 ($colon$colon!2221 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389642)))) (ite (or c!1189823 c!1189821) (regTwo!33250 (h!71731 (exprs!6253 lt!2389642))) (h!71731 (exprs!6253 lt!2389642)))))))

(declare-fun b!6492189 () Bool)

(declare-fun c!1189825 () Bool)

(assert (=> b!6492189 (= c!1189825 ((_ is Star!16369) (h!71731 (exprs!6253 lt!2389642))))))

(declare-fun e!3934394 () (InoxSet Context!11506))

(declare-fun e!3934395 () (InoxSet Context!11506))

(assert (=> b!6492189 (= e!3934394 e!3934395)))

(declare-fun bm!562093 () Bool)

(declare-fun call!562099 () List!65407)

(assert (=> bm!562093 (= call!562099 call!562102)))

(declare-fun bm!562094 () Bool)

(declare-fun call!562100 () (InoxSet Context!11506))

(declare-fun call!562097 () (InoxSet Context!11506))

(assert (=> bm!562094 (= call!562100 call!562097)))

(declare-fun bm!562095 () Bool)

(declare-fun call!562101 () (InoxSet Context!11506))

(assert (=> bm!562095 (= call!562101 call!562100)))

(declare-fun call!562098 () (InoxSet Context!11506))

(declare-fun c!1189822 () Bool)

(declare-fun bm!562096 () Bool)

(assert (=> bm!562096 (= call!562098 (derivationStepZipperDown!1617 (ite c!1189822 (regTwo!33251 (h!71731 (exprs!6253 lt!2389642))) (regOne!33250 (h!71731 (exprs!6253 lt!2389642)))) (ite c!1189822 (Context!11507 (t!379035 (exprs!6253 lt!2389642))) (Context!11507 call!562102)) (h!71730 s!2326)))))

(declare-fun b!6492190 () Bool)

(assert (=> b!6492190 (= e!3934395 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6492191 () Bool)

(assert (=> b!6492191 (= e!3934397 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (t!379035 (exprs!6253 lt!2389642))) true))))

(declare-fun b!6492192 () Bool)

(assert (=> b!6492192 (= c!1189823 e!3934396)))

(declare-fun res!2666316 () Bool)

(assert (=> b!6492192 (=> (not res!2666316) (not e!3934396))))

(assert (=> b!6492192 (= res!2666316 ((_ is Concat!25214) (h!71731 (exprs!6253 lt!2389642))))))

(declare-fun e!3934398 () (InoxSet Context!11506))

(declare-fun e!3934393 () (InoxSet Context!11506))

(assert (=> b!6492192 (= e!3934398 e!3934393)))

(declare-fun bm!562097 () Bool)

(assert (=> bm!562097 (= call!562097 (derivationStepZipperDown!1617 (ite c!1189822 (regOne!33251 (h!71731 (exprs!6253 lt!2389642))) (ite c!1189823 (regTwo!33250 (h!71731 (exprs!6253 lt!2389642))) (ite c!1189821 (regOne!33250 (h!71731 (exprs!6253 lt!2389642))) (reg!16698 (h!71731 (exprs!6253 lt!2389642)))))) (ite (or c!1189822 c!1189823) (Context!11507 (t!379035 (exprs!6253 lt!2389642))) (Context!11507 call!562099)) (h!71730 s!2326)))))

(declare-fun b!6492193 () Bool)

(assert (=> b!6492193 (= e!3934395 call!562101)))

(declare-fun b!6492194 () Bool)

(assert (=> b!6492194 (= e!3934398 ((_ map or) call!562097 call!562098))))

(declare-fun b!6492195 () Bool)

(assert (=> b!6492195 (= e!3934393 ((_ map or) call!562098 call!562100))))

(declare-fun b!6492196 () Bool)

(assert (=> b!6492196 (= e!3934394 call!562101)))

(declare-fun b!6492197 () Bool)

(assert (=> b!6492197 (= e!3934397 e!3934398)))

(assert (=> b!6492197 (= c!1189822 ((_ is Union!16369) (h!71731 (exprs!6253 lt!2389642))))))

(declare-fun b!6492198 () Bool)

(assert (=> b!6492198 (= e!3934393 e!3934394)))

(assert (=> b!6492198 (= c!1189821 ((_ is Concat!25214) (h!71731 (exprs!6253 lt!2389642))))))

(assert (= (and d!2036962 c!1189824) b!6492191))

(assert (= (and d!2036962 (not c!1189824)) b!6492197))

(assert (= (and b!6492197 c!1189822) b!6492194))

(assert (= (and b!6492197 (not c!1189822)) b!6492192))

(assert (= (and b!6492192 res!2666316) b!6492188))

(assert (= (and b!6492192 c!1189823) b!6492195))

(assert (= (and b!6492192 (not c!1189823)) b!6492198))

(assert (= (and b!6492198 c!1189821) b!6492196))

(assert (= (and b!6492198 (not c!1189821)) b!6492189))

(assert (= (and b!6492189 c!1189825) b!6492193))

(assert (= (and b!6492189 (not c!1189825)) b!6492190))

(assert (= (or b!6492196 b!6492193) bm!562093))

(assert (= (or b!6492196 b!6492193) bm!562095))

(assert (= (or b!6492195 bm!562093) bm!562092))

(assert (= (or b!6492195 bm!562095) bm!562094))

(assert (= (or b!6492194 b!6492195) bm!562096))

(assert (= (or b!6492194 bm!562094) bm!562097))

(declare-fun m!7280822 () Bool)

(assert (=> b!6492191 m!7280822))

(declare-fun m!7280824 () Bool)

(assert (=> b!6492188 m!7280824))

(declare-fun m!7280826 () Bool)

(assert (=> bm!562097 m!7280826))

(declare-fun m!7280828 () Bool)

(assert (=> bm!562096 m!7280828))

(declare-fun m!7280830 () Bool)

(assert (=> bm!562092 m!7280830))

(assert (=> bm!561947 d!2036962))

(declare-fun d!2036964 () Bool)

(declare-fun c!1189826 () Bool)

(assert (=> d!2036964 (= c!1189826 ((_ is Nil!65282) lt!2389838))))

(declare-fun e!3934399 () (InoxSet C!33008))

(assert (=> d!2036964 (= (content!12442 lt!2389838) e!3934399)))

(declare-fun b!6492199 () Bool)

(assert (=> b!6492199 (= e!3934399 ((as const (Array C!33008 Bool)) false))))

(declare-fun b!6492200 () Bool)

(assert (=> b!6492200 (= e!3934399 ((_ map or) (store ((as const (Array C!33008 Bool)) false) (h!71730 lt!2389838) true) (content!12442 (t!379034 lt!2389838))))))

(assert (= (and d!2036964 c!1189826) b!6492199))

(assert (= (and d!2036964 (not c!1189826)) b!6492200))

(declare-fun m!7280832 () Bool)

(assert (=> b!6492200 m!7280832))

(declare-fun m!7280834 () Bool)

(assert (=> b!6492200 m!7280834))

(assert (=> d!2036676 d!2036964))

(declare-fun d!2036966 () Bool)

(declare-fun c!1189827 () Bool)

(assert (=> d!2036966 (= c!1189827 ((_ is Nil!65282) (_1!36651 lt!2389638)))))

(declare-fun e!3934400 () (InoxSet C!33008))

(assert (=> d!2036966 (= (content!12442 (_1!36651 lt!2389638)) e!3934400)))

(declare-fun b!6492201 () Bool)

(assert (=> b!6492201 (= e!3934400 ((as const (Array C!33008 Bool)) false))))

(declare-fun b!6492202 () Bool)

(assert (=> b!6492202 (= e!3934400 ((_ map or) (store ((as const (Array C!33008 Bool)) false) (h!71730 (_1!36651 lt!2389638)) true) (content!12442 (t!379034 (_1!36651 lt!2389638)))))))

(assert (= (and d!2036966 c!1189827) b!6492201))

(assert (= (and d!2036966 (not c!1189827)) b!6492202))

(declare-fun m!7280836 () Bool)

(assert (=> b!6492202 m!7280836))

(assert (=> b!6492202 m!7280484))

(assert (=> d!2036676 d!2036966))

(declare-fun d!2036968 () Bool)

(declare-fun c!1189828 () Bool)

(assert (=> d!2036968 (= c!1189828 ((_ is Nil!65282) lt!2389641))))

(declare-fun e!3934401 () (InoxSet C!33008))

(assert (=> d!2036968 (= (content!12442 lt!2389641) e!3934401)))

(declare-fun b!6492203 () Bool)

(assert (=> b!6492203 (= e!3934401 ((as const (Array C!33008 Bool)) false))))

(declare-fun b!6492204 () Bool)

(assert (=> b!6492204 (= e!3934401 ((_ map or) (store ((as const (Array C!33008 Bool)) false) (h!71730 lt!2389641) true) (content!12442 (t!379034 lt!2389641))))))

(assert (= (and d!2036968 c!1189828) b!6492203))

(assert (= (and d!2036968 (not c!1189828)) b!6492204))

(declare-fun m!7280838 () Bool)

(assert (=> b!6492204 m!7280838))

(declare-fun m!7280840 () Bool)

(assert (=> b!6492204 m!7280840))

(assert (=> d!2036676 d!2036968))

(declare-fun b!6492205 () Bool)

(declare-fun res!2666322 () Bool)

(declare-fun e!3934402 () Bool)

(assert (=> b!6492205 (=> res!2666322 e!3934402)))

(declare-fun e!3934406 () Bool)

(assert (=> b!6492205 (= res!2666322 e!3934406)))

(declare-fun res!2666319 () Bool)

(assert (=> b!6492205 (=> (not res!2666319) (not e!3934406))))

(declare-fun lt!2389901 () Bool)

(assert (=> b!6492205 (= res!2666319 lt!2389901)))

(declare-fun b!6492206 () Bool)

(declare-fun res!2666320 () Bool)

(assert (=> b!6492206 (=> (not res!2666320) (not e!3934406))))

(assert (=> b!6492206 (= res!2666320 (isEmpty!37477 (tail!12296 s!2326)))))

(declare-fun b!6492208 () Bool)

(declare-fun e!3934404 () Bool)

(assert (=> b!6492208 (= e!3934402 e!3934404)))

(declare-fun res!2666323 () Bool)

(assert (=> b!6492208 (=> (not res!2666323) (not e!3934404))))

(assert (=> b!6492208 (= res!2666323 (not lt!2389901))))

(declare-fun bm!562098 () Bool)

(declare-fun call!562103 () Bool)

(assert (=> bm!562098 (= call!562103 (isEmpty!37477 s!2326))))

(declare-fun b!6492209 () Bool)

(declare-fun e!3934405 () Bool)

(assert (=> b!6492209 (= e!3934405 (not (= (head!13211 s!2326) (c!1189393 (regTwo!33250 r!7292)))))))

(declare-fun b!6492210 () Bool)

(declare-fun e!3934408 () Bool)

(assert (=> b!6492210 (= e!3934408 (matchR!8552 (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 s!2326)) (tail!12296 s!2326)))))

(declare-fun b!6492211 () Bool)

(declare-fun res!2666324 () Bool)

(assert (=> b!6492211 (=> res!2666324 e!3934405)))

(assert (=> b!6492211 (= res!2666324 (not (isEmpty!37477 (tail!12296 s!2326))))))

(declare-fun b!6492212 () Bool)

(declare-fun res!2666321 () Bool)

(assert (=> b!6492212 (=> res!2666321 e!3934402)))

(assert (=> b!6492212 (= res!2666321 (not ((_ is ElementMatch!16369) (regTwo!33250 r!7292))))))

(declare-fun e!3934403 () Bool)

(assert (=> b!6492212 (= e!3934403 e!3934402)))

(declare-fun b!6492213 () Bool)

(declare-fun e!3934407 () Bool)

(assert (=> b!6492213 (= e!3934407 (= lt!2389901 call!562103))))

(declare-fun b!6492214 () Bool)

(assert (=> b!6492214 (= e!3934404 e!3934405)))

(declare-fun res!2666318 () Bool)

(assert (=> b!6492214 (=> res!2666318 e!3934405)))

(assert (=> b!6492214 (= res!2666318 call!562103)))

(declare-fun b!6492215 () Bool)

(assert (=> b!6492215 (= e!3934408 (nullable!6362 (regTwo!33250 r!7292)))))

(declare-fun b!6492216 () Bool)

(assert (=> b!6492216 (= e!3934406 (= (head!13211 s!2326) (c!1189393 (regTwo!33250 r!7292))))))

(declare-fun d!2036970 () Bool)

(assert (=> d!2036970 e!3934407))

(declare-fun c!1189831 () Bool)

(assert (=> d!2036970 (= c!1189831 ((_ is EmptyExpr!16369) (regTwo!33250 r!7292)))))

(assert (=> d!2036970 (= lt!2389901 e!3934408)))

(declare-fun c!1189830 () Bool)

(assert (=> d!2036970 (= c!1189830 (isEmpty!37477 s!2326))))

(assert (=> d!2036970 (validRegex!8105 (regTwo!33250 r!7292))))

(assert (=> d!2036970 (= (matchR!8552 (regTwo!33250 r!7292) s!2326) lt!2389901)))

(declare-fun b!6492207 () Bool)

(assert (=> b!6492207 (= e!3934407 e!3934403)))

(declare-fun c!1189829 () Bool)

(assert (=> b!6492207 (= c!1189829 ((_ is EmptyLang!16369) (regTwo!33250 r!7292)))))

(declare-fun b!6492217 () Bool)

(assert (=> b!6492217 (= e!3934403 (not lt!2389901))))

(declare-fun b!6492218 () Bool)

(declare-fun res!2666317 () Bool)

(assert (=> b!6492218 (=> (not res!2666317) (not e!3934406))))

(assert (=> b!6492218 (= res!2666317 (not call!562103))))

(assert (= (and d!2036970 c!1189830) b!6492215))

(assert (= (and d!2036970 (not c!1189830)) b!6492210))

(assert (= (and d!2036970 c!1189831) b!6492213))

(assert (= (and d!2036970 (not c!1189831)) b!6492207))

(assert (= (and b!6492207 c!1189829) b!6492217))

(assert (= (and b!6492207 (not c!1189829)) b!6492212))

(assert (= (and b!6492212 (not res!2666321)) b!6492205))

(assert (= (and b!6492205 res!2666319) b!6492218))

(assert (= (and b!6492218 res!2666317) b!6492206))

(assert (= (and b!6492206 res!2666320) b!6492216))

(assert (= (and b!6492205 (not res!2666322)) b!6492208))

(assert (= (and b!6492208 res!2666323) b!6492214))

(assert (= (and b!6492214 (not res!2666318)) b!6492211))

(assert (= (and b!6492211 (not res!2666324)) b!6492209))

(assert (= (or b!6492213 b!6492214 b!6492218) bm!562098))

(assert (=> b!6492206 m!7279326))

(assert (=> b!6492206 m!7279326))

(assert (=> b!6492206 m!7279328))

(assert (=> d!2036970 m!7279298))

(assert (=> d!2036970 m!7279816))

(assert (=> b!6492211 m!7279326))

(assert (=> b!6492211 m!7279326))

(assert (=> b!6492211 m!7279328))

(assert (=> b!6492209 m!7279330))

(assert (=> b!6492215 m!7279820))

(assert (=> bm!562098 m!7279298))

(assert (=> b!6492216 m!7279330))

(assert (=> b!6492210 m!7279330))

(assert (=> b!6492210 m!7279330))

(declare-fun m!7280842 () Bool)

(assert (=> b!6492210 m!7280842))

(assert (=> b!6492210 m!7279326))

(assert (=> b!6492210 m!7280842))

(assert (=> b!6492210 m!7279326))

(declare-fun m!7280844 () Bool)

(assert (=> b!6492210 m!7280844))

(assert (=> b!6491397 d!2036970))

(assert (=> d!2036556 d!2036552))

(declare-fun d!2036972 () Bool)

(assert (=> d!2036972 (= (flatMap!1874 lt!2389651 lambda!359438) (dynLambda!25930 lambda!359438 lt!2389610))))

(assert (=> d!2036972 true))

(declare-fun _$13!3719 () Unit!158807)

(assert (=> d!2036972 (= (choose!48172 lt!2389651 lt!2389610 lambda!359438) _$13!3719)))

(declare-fun b_lambda!245763 () Bool)

(assert (=> (not b_lambda!245763) (not d!2036972)))

(declare-fun bs!1648138 () Bool)

(assert (= bs!1648138 d!2036972))

(assert (=> bs!1648138 m!7279090))

(assert (=> bs!1648138 m!7279746))

(assert (=> d!2036556 d!2036972))

(assert (=> b!6491378 d!2036528))

(declare-fun bs!1648139 () Bool)

(declare-fun d!2036974 () Bool)

(assert (= bs!1648139 (and d!2036974 d!2036816)))

(declare-fun lambda!359561 () Int)

(assert (=> bs!1648139 (= lambda!359561 lambda!359548)))

(declare-fun bs!1648140 () Bool)

(assert (= bs!1648140 (and d!2036974 d!2036904)))

(assert (=> bs!1648140 (= lambda!359561 lambda!359555)))

(assert (=> d!2036974 (= (nullableZipper!2125 lt!2389660) (exists!2618 lt!2389660 lambda!359561))))

(declare-fun bs!1648141 () Bool)

(assert (= bs!1648141 d!2036974))

(declare-fun m!7280846 () Bool)

(assert (=> bs!1648141 m!7280846))

(assert (=> b!6491500 d!2036974))

(declare-fun d!2036976 () Bool)

(declare-fun res!2666325 () Bool)

(declare-fun e!3934409 () Bool)

(assert (=> d!2036976 (=> res!2666325 e!3934409)))

(assert (=> d!2036976 (= res!2666325 ((_ is Nil!65283) lt!2389765))))

(assert (=> d!2036976 (= (forall!15551 lt!2389765 lambda!359513) e!3934409)))

(declare-fun b!6492219 () Bool)

(declare-fun e!3934410 () Bool)

(assert (=> b!6492219 (= e!3934409 e!3934410)))

(declare-fun res!2666326 () Bool)

(assert (=> b!6492219 (=> (not res!2666326) (not e!3934410))))

(assert (=> b!6492219 (= res!2666326 (dynLambda!25932 lambda!359513 (h!71731 lt!2389765)))))

(declare-fun b!6492220 () Bool)

(assert (=> b!6492220 (= e!3934410 (forall!15551 (t!379035 lt!2389765) lambda!359513))))

(assert (= (and d!2036976 (not res!2666325)) b!6492219))

(assert (= (and b!6492219 res!2666326) b!6492220))

(declare-fun b_lambda!245765 () Bool)

(assert (=> (not b_lambda!245765) (not b!6492219)))

(declare-fun m!7280848 () Bool)

(assert (=> b!6492219 m!7280848))

(declare-fun m!7280850 () Bool)

(assert (=> b!6492220 m!7280850))

(assert (=> d!2036562 d!2036976))

(declare-fun bs!1648142 () Bool)

(declare-fun d!2036978 () Bool)

(assert (= bs!1648142 (and d!2036978 d!2036816)))

(declare-fun lambda!359562 () Int)

(assert (=> bs!1648142 (= lambda!359562 lambda!359548)))

(declare-fun bs!1648143 () Bool)

(assert (= bs!1648143 (and d!2036978 d!2036904)))

(assert (=> bs!1648143 (= lambda!359562 lambda!359555)))

(declare-fun bs!1648144 () Bool)

(assert (= bs!1648144 (and d!2036978 d!2036974)))

(assert (=> bs!1648144 (= lambda!359562 lambda!359561)))

(assert (=> d!2036978 (= (nullableZipper!2125 lt!2389651) (exists!2618 lt!2389651 lambda!359562))))

(declare-fun bs!1648145 () Bool)

(assert (= bs!1648145 d!2036978))

(declare-fun m!7280852 () Bool)

(assert (=> bs!1648145 m!7280852))

(assert (=> b!6491549 d!2036978))

(declare-fun d!2036980 () Bool)

(declare-fun c!1189832 () Bool)

(assert (=> d!2036980 (= c!1189832 (isEmpty!37477 (tail!12296 s!2326)))))

(declare-fun e!3934411 () Bool)

(assert (=> d!2036980 (= (matchZipper!2381 (derivationStepZipper!2335 lt!2389660 (head!13211 s!2326)) (tail!12296 s!2326)) e!3934411)))

(declare-fun b!6492221 () Bool)

(assert (=> b!6492221 (= e!3934411 (nullableZipper!2125 (derivationStepZipper!2335 lt!2389660 (head!13211 s!2326))))))

(declare-fun b!6492222 () Bool)

(assert (=> b!6492222 (= e!3934411 (matchZipper!2381 (derivationStepZipper!2335 (derivationStepZipper!2335 lt!2389660 (head!13211 s!2326)) (head!13211 (tail!12296 s!2326))) (tail!12296 (tail!12296 s!2326))))))

(assert (= (and d!2036980 c!1189832) b!6492221))

(assert (= (and d!2036980 (not c!1189832)) b!6492222))

(assert (=> d!2036980 m!7279326))

(assert (=> d!2036980 m!7279328))

(assert (=> b!6492221 m!7279876))

(declare-fun m!7280854 () Bool)

(assert (=> b!6492221 m!7280854))

(assert (=> b!6492222 m!7279326))

(declare-fun m!7280856 () Bool)

(assert (=> b!6492222 m!7280856))

(assert (=> b!6492222 m!7279876))

(assert (=> b!6492222 m!7280856))

(declare-fun m!7280858 () Bool)

(assert (=> b!6492222 m!7280858))

(assert (=> b!6492222 m!7279326))

(declare-fun m!7280860 () Bool)

(assert (=> b!6492222 m!7280860))

(assert (=> b!6492222 m!7280858))

(assert (=> b!6492222 m!7280860))

(declare-fun m!7280862 () Bool)

(assert (=> b!6492222 m!7280862))

(assert (=> b!6491393 d!2036980))

(declare-fun bs!1648146 () Bool)

(declare-fun d!2036982 () Bool)

(assert (= bs!1648146 (and d!2036982 b!6490636)))

(declare-fun lambda!359563 () Int)

(assert (=> bs!1648146 (= (= (head!13211 s!2326) (h!71730 s!2326)) (= lambda!359563 lambda!359438))))

(declare-fun bs!1648147 () Bool)

(assert (= bs!1648147 (and d!2036982 d!2036402)))

(assert (=> bs!1648147 (= (= (head!13211 s!2326) (h!71730 s!2326)) (= lambda!359563 lambda!359447))))

(declare-fun bs!1648148 () Bool)

(assert (= bs!1648148 (and d!2036982 d!2036822)))

(assert (=> bs!1648148 (= (= (head!13211 s!2326) (head!13211 (t!379034 s!2326))) (= lambda!359563 lambda!359549))))

(declare-fun bs!1648149 () Bool)

(assert (= bs!1648149 (and d!2036982 d!2036946)))

(assert (=> bs!1648149 (= (= (head!13211 s!2326) (head!13211 lt!2389663)) (= lambda!359563 lambda!359560))))

(assert (=> d!2036982 true))

(assert (=> d!2036982 (= (derivationStepZipper!2335 lt!2389660 (head!13211 s!2326)) (flatMap!1874 lt!2389660 lambda!359563))))

(declare-fun bs!1648150 () Bool)

(assert (= bs!1648150 d!2036982))

(declare-fun m!7280864 () Bool)

(assert (=> bs!1648150 m!7280864))

(assert (=> b!6491393 d!2036982))

(assert (=> b!6491393 d!2036906))

(declare-fun d!2036984 () Bool)

(assert (=> d!2036984 (= (tail!12296 s!2326) (t!379034 s!2326))))

(assert (=> b!6491393 d!2036984))

(assert (=> b!6491161 d!2036970))

(assert (=> d!2036646 d!2036504))

(assert (=> d!2036646 d!2036668))

(declare-fun d!2036986 () Bool)

(assert (=> d!2036986 (= (matchR!8552 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638)) (matchZipper!2381 lt!2389651 (_1!36651 lt!2389638)))))

(assert (=> d!2036986 true))

(declare-fun _$44!1673 () Unit!158807)

(assert (=> d!2036986 (= (choose!48195 lt!2389651 lt!2389621 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638)) _$44!1673)))

(declare-fun bs!1648151 () Bool)

(assert (= bs!1648151 d!2036986))

(assert (=> bs!1648151 m!7279226))

(assert (=> bs!1648151 m!7279170))

(assert (=> d!2036646 d!2036986))

(declare-fun b!6492223 () Bool)

(declare-fun res!2666327 () Bool)

(declare-fun e!3934413 () Bool)

(assert (=> b!6492223 (=> res!2666327 e!3934413)))

(assert (=> b!6492223 (= res!2666327 (not ((_ is Concat!25214) (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun e!3934415 () Bool)

(assert (=> b!6492223 (= e!3934415 e!3934413)))

(declare-fun b!6492224 () Bool)

(declare-fun e!3934417 () Bool)

(assert (=> b!6492224 (= e!3934413 e!3934417)))

(declare-fun res!2666331 () Bool)

(assert (=> b!6492224 (=> (not res!2666331) (not e!3934417))))

(declare-fun call!562104 () Bool)

(assert (=> b!6492224 (= res!2666331 call!562104)))

(declare-fun b!6492225 () Bool)

(declare-fun call!562106 () Bool)

(assert (=> b!6492225 (= e!3934417 call!562106)))

(declare-fun bm!562099 () Bool)

(declare-fun c!1189834 () Bool)

(assert (=> bm!562099 (= call!562106 (validRegex!8105 (ite c!1189834 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (regTwo!33250 (reg!16698 (regOne!33250 r!7292))))))))

(declare-fun b!6492226 () Bool)

(declare-fun e!3934414 () Bool)

(declare-fun e!3934418 () Bool)

(assert (=> b!6492226 (= e!3934414 e!3934418)))

(declare-fun res!2666330 () Bool)

(assert (=> b!6492226 (= res!2666330 (not (nullable!6362 (reg!16698 (reg!16698 (regOne!33250 r!7292))))))))

(assert (=> b!6492226 (=> (not res!2666330) (not e!3934418))))

(declare-fun b!6492227 () Bool)

(declare-fun e!3934412 () Bool)

(assert (=> b!6492227 (= e!3934412 e!3934414)))

(declare-fun c!1189833 () Bool)

(assert (=> b!6492227 (= c!1189833 ((_ is Star!16369) (reg!16698 (regOne!33250 r!7292))))))

(declare-fun b!6492228 () Bool)

(declare-fun call!562105 () Bool)

(assert (=> b!6492228 (= e!3934418 call!562105)))

(declare-fun b!6492229 () Bool)

(assert (=> b!6492229 (= e!3934414 e!3934415)))

(assert (=> b!6492229 (= c!1189834 ((_ is Union!16369) (reg!16698 (regOne!33250 r!7292))))))

(declare-fun d!2036988 () Bool)

(declare-fun res!2666328 () Bool)

(assert (=> d!2036988 (=> res!2666328 e!3934412)))

(assert (=> d!2036988 (= res!2666328 ((_ is ElementMatch!16369) (reg!16698 (regOne!33250 r!7292))))))

(assert (=> d!2036988 (= (validRegex!8105 (reg!16698 (regOne!33250 r!7292))) e!3934412)))

(declare-fun bm!562100 () Bool)

(assert (=> bm!562100 (= call!562105 (validRegex!8105 (ite c!1189833 (reg!16698 (reg!16698 (regOne!33250 r!7292))) (ite c!1189834 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292)))))))))

(declare-fun b!6492230 () Bool)

(declare-fun e!3934416 () Bool)

(assert (=> b!6492230 (= e!3934416 call!562106)))

(declare-fun b!6492231 () Bool)

(declare-fun res!2666329 () Bool)

(assert (=> b!6492231 (=> (not res!2666329) (not e!3934416))))

(assert (=> b!6492231 (= res!2666329 call!562104)))

(assert (=> b!6492231 (= e!3934415 e!3934416)))

(declare-fun bm!562101 () Bool)

(assert (=> bm!562101 (= call!562104 call!562105)))

(assert (= (and d!2036988 (not res!2666328)) b!6492227))

(assert (= (and b!6492227 c!1189833) b!6492226))

(assert (= (and b!6492227 (not c!1189833)) b!6492229))

(assert (= (and b!6492226 res!2666330) b!6492228))

(assert (= (and b!6492229 c!1189834) b!6492231))

(assert (= (and b!6492229 (not c!1189834)) b!6492223))

(assert (= (and b!6492231 res!2666329) b!6492230))

(assert (= (and b!6492223 (not res!2666327)) b!6492224))

(assert (= (and b!6492224 res!2666331) b!6492225))

(assert (= (or b!6492230 b!6492225) bm!562099))

(assert (= (or b!6492231 b!6492224) bm!562101))

(assert (= (or b!6492228 bm!562101) bm!562100))

(declare-fun m!7280866 () Bool)

(assert (=> bm!562099 m!7280866))

(declare-fun m!7280868 () Bool)

(assert (=> b!6492226 m!7280868))

(declare-fun m!7280870 () Bool)

(assert (=> bm!562100 m!7280870))

(assert (=> d!2036646 d!2036988))

(declare-fun d!2036990 () Bool)

(declare-fun c!1189835 () Bool)

(assert (=> d!2036990 (= c!1189835 ((_ is Nil!65282) lt!2389691))))

(declare-fun e!3934419 () (InoxSet C!33008))

(assert (=> d!2036990 (= (content!12442 lt!2389691) e!3934419)))

(declare-fun b!6492232 () Bool)

(assert (=> b!6492232 (= e!3934419 ((as const (Array C!33008 Bool)) false))))

(declare-fun b!6492233 () Bool)

(assert (=> b!6492233 (= e!3934419 ((_ map or) (store ((as const (Array C!33008 Bool)) false) (h!71730 lt!2389691) true) (content!12442 (t!379034 lt!2389691))))))

(assert (= (and d!2036990 c!1189835) b!6492232))

(assert (= (and d!2036990 (not c!1189835)) b!6492233))

(declare-fun m!7280872 () Bool)

(assert (=> b!6492233 m!7280872))

(declare-fun m!7280874 () Bool)

(assert (=> b!6492233 m!7280874))

(assert (=> d!2036454 d!2036990))

(assert (=> d!2036454 d!2036966))

(assert (=> d!2036454 d!2036860))

(declare-fun b!6492234 () Bool)

(declare-fun res!2666332 () Bool)

(declare-fun e!3934421 () Bool)

(assert (=> b!6492234 (=> res!2666332 e!3934421)))

(assert (=> b!6492234 (= res!2666332 (not ((_ is Concat!25214) lt!2389759)))))

(declare-fun e!3934423 () Bool)

(assert (=> b!6492234 (= e!3934423 e!3934421)))

(declare-fun b!6492235 () Bool)

(declare-fun e!3934425 () Bool)

(assert (=> b!6492235 (= e!3934421 e!3934425)))

(declare-fun res!2666336 () Bool)

(assert (=> b!6492235 (=> (not res!2666336) (not e!3934425))))

(declare-fun call!562107 () Bool)

(assert (=> b!6492235 (= res!2666336 call!562107)))

(declare-fun b!6492236 () Bool)

(declare-fun call!562109 () Bool)

(assert (=> b!6492236 (= e!3934425 call!562109)))

(declare-fun bm!562102 () Bool)

(declare-fun c!1189837 () Bool)

(assert (=> bm!562102 (= call!562109 (validRegex!8105 (ite c!1189837 (regTwo!33251 lt!2389759) (regTwo!33250 lt!2389759))))))

(declare-fun b!6492237 () Bool)

(declare-fun e!3934422 () Bool)

(declare-fun e!3934426 () Bool)

(assert (=> b!6492237 (= e!3934422 e!3934426)))

(declare-fun res!2666335 () Bool)

(assert (=> b!6492237 (= res!2666335 (not (nullable!6362 (reg!16698 lt!2389759))))))

(assert (=> b!6492237 (=> (not res!2666335) (not e!3934426))))

(declare-fun b!6492238 () Bool)

(declare-fun e!3934420 () Bool)

(assert (=> b!6492238 (= e!3934420 e!3934422)))

(declare-fun c!1189836 () Bool)

(assert (=> b!6492238 (= c!1189836 ((_ is Star!16369) lt!2389759))))

(declare-fun b!6492239 () Bool)

(declare-fun call!562108 () Bool)

(assert (=> b!6492239 (= e!3934426 call!562108)))

(declare-fun b!6492240 () Bool)

(assert (=> b!6492240 (= e!3934422 e!3934423)))

(assert (=> b!6492240 (= c!1189837 ((_ is Union!16369) lt!2389759))))

(declare-fun d!2036992 () Bool)

(declare-fun res!2666333 () Bool)

(assert (=> d!2036992 (=> res!2666333 e!3934420)))

(assert (=> d!2036992 (= res!2666333 ((_ is ElementMatch!16369) lt!2389759))))

(assert (=> d!2036992 (= (validRegex!8105 lt!2389759) e!3934420)))

(declare-fun bm!562103 () Bool)

(assert (=> bm!562103 (= call!562108 (validRegex!8105 (ite c!1189836 (reg!16698 lt!2389759) (ite c!1189837 (regOne!33251 lt!2389759) (regOne!33250 lt!2389759)))))))

(declare-fun b!6492241 () Bool)

(declare-fun e!3934424 () Bool)

(assert (=> b!6492241 (= e!3934424 call!562109)))

(declare-fun b!6492242 () Bool)

(declare-fun res!2666334 () Bool)

(assert (=> b!6492242 (=> (not res!2666334) (not e!3934424))))

(assert (=> b!6492242 (= res!2666334 call!562107)))

(assert (=> b!6492242 (= e!3934423 e!3934424)))

(declare-fun bm!562104 () Bool)

(assert (=> bm!562104 (= call!562107 call!562108)))

(assert (= (and d!2036992 (not res!2666333)) b!6492238))

(assert (= (and b!6492238 c!1189836) b!6492237))

(assert (= (and b!6492238 (not c!1189836)) b!6492240))

(assert (= (and b!6492237 res!2666335) b!6492239))

(assert (= (and b!6492240 c!1189837) b!6492242))

(assert (= (and b!6492240 (not c!1189837)) b!6492234))

(assert (= (and b!6492242 res!2666334) b!6492241))

(assert (= (and b!6492234 (not res!2666332)) b!6492235))

(assert (= (and b!6492235 res!2666336) b!6492236))

(assert (= (or b!6492241 b!6492236) bm!562102))

(assert (= (or b!6492242 b!6492235) bm!562104))

(assert (= (or b!6492239 bm!562104) bm!562103))

(declare-fun m!7280876 () Bool)

(assert (=> bm!562102 m!7280876))

(declare-fun m!7280878 () Bool)

(assert (=> b!6492237 m!7280878))

(declare-fun m!7280880 () Bool)

(assert (=> bm!562103 m!7280880))

(assert (=> d!2036558 d!2036992))

(declare-fun d!2036994 () Bool)

(declare-fun res!2666337 () Bool)

(declare-fun e!3934427 () Bool)

(assert (=> d!2036994 (=> res!2666337 e!3934427)))

(assert (=> d!2036994 (= res!2666337 ((_ is Nil!65283) (unfocusZipperList!1790 zl!343)))))

(assert (=> d!2036994 (= (forall!15551 (unfocusZipperList!1790 zl!343) lambda!359507) e!3934427)))

(declare-fun b!6492243 () Bool)

(declare-fun e!3934428 () Bool)

(assert (=> b!6492243 (= e!3934427 e!3934428)))

(declare-fun res!2666338 () Bool)

(assert (=> b!6492243 (=> (not res!2666338) (not e!3934428))))

(assert (=> b!6492243 (= res!2666338 (dynLambda!25932 lambda!359507 (h!71731 (unfocusZipperList!1790 zl!343))))))

(declare-fun b!6492244 () Bool)

(assert (=> b!6492244 (= e!3934428 (forall!15551 (t!379035 (unfocusZipperList!1790 zl!343)) lambda!359507))))

(assert (= (and d!2036994 (not res!2666337)) b!6492243))

(assert (= (and b!6492243 res!2666338) b!6492244))

(declare-fun b_lambda!245767 () Bool)

(assert (=> (not b_lambda!245767) (not b!6492243)))

(declare-fun m!7280882 () Bool)

(assert (=> b!6492243 m!7280882))

(declare-fun m!7280884 () Bool)

(assert (=> b!6492244 m!7280884))

(assert (=> d!2036558 d!2036994))

(declare-fun d!2036996 () Bool)

(declare-fun c!1189838 () Bool)

(assert (=> d!2036996 (= c!1189838 (isEmpty!37477 (tail!12296 (t!379034 s!2326))))))

(declare-fun e!3934429 () Bool)

(assert (=> d!2036996 (= (matchZipper!2381 (derivationStepZipper!2335 lt!2389666 (head!13211 (t!379034 s!2326))) (tail!12296 (t!379034 s!2326))) e!3934429)))

(declare-fun b!6492245 () Bool)

(assert (=> b!6492245 (= e!3934429 (nullableZipper!2125 (derivationStepZipper!2335 lt!2389666 (head!13211 (t!379034 s!2326)))))))

(declare-fun b!6492246 () Bool)

(assert (=> b!6492246 (= e!3934429 (matchZipper!2381 (derivationStepZipper!2335 (derivationStepZipper!2335 lt!2389666 (head!13211 (t!379034 s!2326))) (head!13211 (tail!12296 (t!379034 s!2326)))) (tail!12296 (tail!12296 (t!379034 s!2326)))))))

(assert (= (and d!2036996 c!1189838) b!6492245))

(assert (= (and d!2036996 (not c!1189838)) b!6492246))

(assert (=> d!2036996 m!7279888))

(assert (=> d!2036996 m!7280524))

(assert (=> b!6492245 m!7280240))

(declare-fun m!7280886 () Bool)

(assert (=> b!6492245 m!7280886))

(assert (=> b!6492246 m!7279888))

(assert (=> b!6492246 m!7280528))

(assert (=> b!6492246 m!7280240))

(assert (=> b!6492246 m!7280528))

(declare-fun m!7280888 () Bool)

(assert (=> b!6492246 m!7280888))

(assert (=> b!6492246 m!7279888))

(assert (=> b!6492246 m!7280532))

(assert (=> b!6492246 m!7280888))

(assert (=> b!6492246 m!7280532))

(declare-fun m!7280890 () Bool)

(assert (=> b!6492246 m!7280890))

(assert (=> b!6491593 d!2036996))

(declare-fun bs!1648152 () Bool)

(declare-fun d!2036998 () Bool)

(assert (= bs!1648152 (and d!2036998 d!2036946)))

(declare-fun lambda!359564 () Int)

(assert (=> bs!1648152 (= (= (head!13211 (t!379034 s!2326)) (head!13211 lt!2389663)) (= lambda!359564 lambda!359560))))

(declare-fun bs!1648153 () Bool)

(assert (= bs!1648153 (and d!2036998 d!2036402)))

(assert (=> bs!1648153 (= (= (head!13211 (t!379034 s!2326)) (h!71730 s!2326)) (= lambda!359564 lambda!359447))))

(declare-fun bs!1648154 () Bool)

(assert (= bs!1648154 (and d!2036998 d!2036822)))

(assert (=> bs!1648154 (= lambda!359564 lambda!359549)))

(declare-fun bs!1648155 () Bool)

(assert (= bs!1648155 (and d!2036998 b!6490636)))

(assert (=> bs!1648155 (= (= (head!13211 (t!379034 s!2326)) (h!71730 s!2326)) (= lambda!359564 lambda!359438))))

(declare-fun bs!1648156 () Bool)

(assert (= bs!1648156 (and d!2036998 d!2036982)))

(assert (=> bs!1648156 (= (= (head!13211 (t!379034 s!2326)) (head!13211 s!2326)) (= lambda!359564 lambda!359563))))

(assert (=> d!2036998 true))

(assert (=> d!2036998 (= (derivationStepZipper!2335 lt!2389666 (head!13211 (t!379034 s!2326))) (flatMap!1874 lt!2389666 lambda!359564))))

(declare-fun bs!1648157 () Bool)

(assert (= bs!1648157 d!2036998))

(declare-fun m!7280892 () Bool)

(assert (=> bs!1648157 m!7280892))

(assert (=> b!6491593 d!2036998))

(assert (=> b!6491593 d!2036824))

(assert (=> b!6491593 d!2036826))

(declare-fun b!6492250 () Bool)

(declare-fun e!3934431 () Bool)

(declare-fun lt!2389902 () List!65406)

(assert (=> b!6492250 (= e!3934431 (or (not (= (t!379034 s!2326) Nil!65282)) (= lt!2389902 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)))))))

(declare-fun b!6492249 () Bool)

(declare-fun res!2666340 () Bool)

(assert (=> b!6492249 (=> (not res!2666340) (not e!3934431))))

(assert (=> b!6492249 (= res!2666340 (= (size!40427 lt!2389902) (+ (size!40427 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282))) (size!40427 (t!379034 s!2326)))))))

(declare-fun d!2037000 () Bool)

(assert (=> d!2037000 e!3934431))

(declare-fun res!2666339 () Bool)

(assert (=> d!2037000 (=> (not res!2666339) (not e!3934431))))

(assert (=> d!2037000 (= res!2666339 (= (content!12442 lt!2389902) ((_ map or) (content!12442 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282))) (content!12442 (t!379034 s!2326)))))))

(declare-fun e!3934430 () List!65406)

(assert (=> d!2037000 (= lt!2389902 e!3934430)))

(declare-fun c!1189839 () Bool)

(assert (=> d!2037000 (= c!1189839 ((_ is Nil!65282) (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282))))))

(assert (=> d!2037000 (= (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (t!379034 s!2326)) lt!2389902)))

(declare-fun b!6492248 () Bool)

(assert (=> b!6492248 (= e!3934430 (Cons!65282 (h!71730 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282))) (++!14448 (t!379034 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282))) (t!379034 s!2326))))))

(declare-fun b!6492247 () Bool)

(assert (=> b!6492247 (= e!3934430 (t!379034 s!2326))))

(assert (= (and d!2037000 c!1189839) b!6492247))

(assert (= (and d!2037000 (not c!1189839)) b!6492248))

(assert (= (and d!2037000 res!2666339) b!6492249))

(assert (= (and b!6492249 res!2666340) b!6492250))

(declare-fun m!7280894 () Bool)

(assert (=> b!6492249 m!7280894))

(assert (=> b!6492249 m!7279624))

(declare-fun m!7280896 () Bool)

(assert (=> b!6492249 m!7280896))

(declare-fun m!7280898 () Bool)

(assert (=> b!6492249 m!7280898))

(declare-fun m!7280900 () Bool)

(assert (=> d!2037000 m!7280900))

(assert (=> d!2037000 m!7279624))

(declare-fun m!7280902 () Bool)

(assert (=> d!2037000 m!7280902))

(declare-fun m!7280904 () Bool)

(assert (=> d!2037000 m!7280904))

(declare-fun m!7280906 () Bool)

(assert (=> b!6492248 m!7280906))

(assert (=> b!6491163 d!2037000))

(declare-fun b!6492254 () Bool)

(declare-fun e!3934433 () Bool)

(declare-fun lt!2389903 () List!65406)

(assert (=> b!6492254 (= e!3934433 (or (not (= (Cons!65282 (h!71730 s!2326) Nil!65282) Nil!65282)) (= lt!2389903 Nil!65282)))))

(declare-fun b!6492253 () Bool)

(declare-fun res!2666342 () Bool)

(assert (=> b!6492253 (=> (not res!2666342) (not e!3934433))))

(assert (=> b!6492253 (= res!2666342 (= (size!40427 lt!2389903) (+ (size!40427 Nil!65282) (size!40427 (Cons!65282 (h!71730 s!2326) Nil!65282)))))))

(declare-fun d!2037002 () Bool)

(assert (=> d!2037002 e!3934433))

(declare-fun res!2666341 () Bool)

(assert (=> d!2037002 (=> (not res!2666341) (not e!3934433))))

(assert (=> d!2037002 (= res!2666341 (= (content!12442 lt!2389903) ((_ map or) (content!12442 Nil!65282) (content!12442 (Cons!65282 (h!71730 s!2326) Nil!65282)))))))

(declare-fun e!3934432 () List!65406)

(assert (=> d!2037002 (= lt!2389903 e!3934432)))

(declare-fun c!1189840 () Bool)

(assert (=> d!2037002 (= c!1189840 ((_ is Nil!65282) Nil!65282))))

(assert (=> d!2037002 (= (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) lt!2389903)))

(declare-fun b!6492252 () Bool)

(assert (=> b!6492252 (= e!3934432 (Cons!65282 (h!71730 Nil!65282) (++!14448 (t!379034 Nil!65282) (Cons!65282 (h!71730 s!2326) Nil!65282))))))

(declare-fun b!6492251 () Bool)

(assert (=> b!6492251 (= e!3934432 (Cons!65282 (h!71730 s!2326) Nil!65282))))

(assert (= (and d!2037002 c!1189840) b!6492251))

(assert (= (and d!2037002 (not c!1189840)) b!6492252))

(assert (= (and d!2037002 res!2666341) b!6492253))

(assert (= (and b!6492253 res!2666342) b!6492254))

(declare-fun m!7280908 () Bool)

(assert (=> b!6492253 m!7280908))

(declare-fun m!7280910 () Bool)

(assert (=> b!6492253 m!7280910))

(declare-fun m!7280912 () Bool)

(assert (=> b!6492253 m!7280912))

(declare-fun m!7280914 () Bool)

(assert (=> d!2037002 m!7280914))

(declare-fun m!7280916 () Bool)

(assert (=> d!2037002 m!7280916))

(declare-fun m!7280918 () Bool)

(assert (=> d!2037002 m!7280918))

(declare-fun m!7280920 () Bool)

(assert (=> b!6492252 m!7280920))

(assert (=> b!6491163 d!2037002))

(declare-fun d!2037004 () Bool)

(assert (=> d!2037004 (= (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (t!379034 s!2326)) s!2326)))

(declare-fun lt!2389906 () Unit!158807)

(declare-fun choose!48201 (List!65406 C!33008 List!65406 List!65406) Unit!158807)

(assert (=> d!2037004 (= lt!2389906 (choose!48201 Nil!65282 (h!71730 s!2326) (t!379034 s!2326) s!2326))))

(assert (=> d!2037004 (= (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) (t!379034 s!2326))) s!2326)))

(assert (=> d!2037004 (= (lemmaMoveElementToOtherListKeepsConcatEq!2523 Nil!65282 (h!71730 s!2326) (t!379034 s!2326) s!2326) lt!2389906)))

(declare-fun bs!1648158 () Bool)

(assert (= bs!1648158 d!2037004))

(assert (=> bs!1648158 m!7279624))

(assert (=> bs!1648158 m!7279624))

(assert (=> bs!1648158 m!7279626))

(declare-fun m!7280922 () Bool)

(assert (=> bs!1648158 m!7280922))

(declare-fun m!7280924 () Bool)

(assert (=> bs!1648158 m!7280924))

(assert (=> b!6491163 d!2037004))

(declare-fun b!6492255 () Bool)

(declare-fun e!3934435 () Option!16260)

(declare-fun e!3934437 () Option!16260)

(assert (=> b!6492255 (= e!3934435 e!3934437)))

(declare-fun c!1189841 () Bool)

(assert (=> b!6492255 (= c!1189841 ((_ is Nil!65282) (t!379034 s!2326)))))

(declare-fun b!6492256 () Bool)

(declare-fun e!3934436 () Bool)

(assert (=> b!6492256 (= e!3934436 (matchR!8552 (regTwo!33250 r!7292) (t!379034 s!2326)))))

(declare-fun b!6492257 () Bool)

(declare-fun e!3934434 () Bool)

(declare-fun lt!2389908 () Option!16260)

(assert (=> b!6492257 (= e!3934434 (not (isDefined!12963 lt!2389908)))))

(declare-fun b!6492258 () Bool)

(declare-fun lt!2389909 () Unit!158807)

(declare-fun lt!2389907 () Unit!158807)

(assert (=> b!6492258 (= lt!2389909 lt!2389907)))

(assert (=> b!6492258 (= (++!14448 (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (Cons!65282 (h!71730 (t!379034 s!2326)) Nil!65282)) (t!379034 (t!379034 s!2326))) s!2326)))

(assert (=> b!6492258 (= lt!2389907 (lemmaMoveElementToOtherListKeepsConcatEq!2523 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (h!71730 (t!379034 s!2326)) (t!379034 (t!379034 s!2326)) s!2326))))

(assert (=> b!6492258 (= e!3934437 (findConcatSeparation!2674 lt!2389631 (regTwo!33250 r!7292) (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (Cons!65282 (h!71730 (t!379034 s!2326)) Nil!65282)) (t!379034 (t!379034 s!2326)) s!2326))))

(declare-fun b!6492259 () Bool)

(declare-fun res!2666347 () Bool)

(declare-fun e!3934438 () Bool)

(assert (=> b!6492259 (=> (not res!2666347) (not e!3934438))))

(assert (=> b!6492259 (= res!2666347 (matchR!8552 lt!2389631 (_1!36651 (get!22637 lt!2389908))))))

(declare-fun b!6492260 () Bool)

(assert (=> b!6492260 (= e!3934435 (Some!16259 (tuple2!66697 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (t!379034 s!2326))))))

(declare-fun d!2037006 () Bool)

(assert (=> d!2037006 e!3934434))

(declare-fun res!2666345 () Bool)

(assert (=> d!2037006 (=> res!2666345 e!3934434)))

(assert (=> d!2037006 (= res!2666345 e!3934438)))

(declare-fun res!2666344 () Bool)

(assert (=> d!2037006 (=> (not res!2666344) (not e!3934438))))

(assert (=> d!2037006 (= res!2666344 (isDefined!12963 lt!2389908))))

(assert (=> d!2037006 (= lt!2389908 e!3934435)))

(declare-fun c!1189842 () Bool)

(assert (=> d!2037006 (= c!1189842 e!3934436)))

(declare-fun res!2666343 () Bool)

(assert (=> d!2037006 (=> (not res!2666343) (not e!3934436))))

(assert (=> d!2037006 (= res!2666343 (matchR!8552 lt!2389631 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282))))))

(assert (=> d!2037006 (validRegex!8105 lt!2389631)))

(assert (=> d!2037006 (= (findConcatSeparation!2674 lt!2389631 (regTwo!33250 r!7292) (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (t!379034 s!2326) s!2326) lt!2389908)))

(declare-fun b!6492261 () Bool)

(assert (=> b!6492261 (= e!3934438 (= (++!14448 (_1!36651 (get!22637 lt!2389908)) (_2!36651 (get!22637 lt!2389908))) s!2326))))

(declare-fun b!6492262 () Bool)

(declare-fun res!2666346 () Bool)

(assert (=> b!6492262 (=> (not res!2666346) (not e!3934438))))

(assert (=> b!6492262 (= res!2666346 (matchR!8552 (regTwo!33250 r!7292) (_2!36651 (get!22637 lt!2389908))))))

(declare-fun b!6492263 () Bool)

(assert (=> b!6492263 (= e!3934437 None!16259)))

(assert (= (and d!2037006 res!2666343) b!6492256))

(assert (= (and d!2037006 c!1189842) b!6492260))

(assert (= (and d!2037006 (not c!1189842)) b!6492255))

(assert (= (and b!6492255 c!1189841) b!6492263))

(assert (= (and b!6492255 (not c!1189841)) b!6492258))

(assert (= (and d!2037006 res!2666344) b!6492259))

(assert (= (and b!6492259 res!2666347) b!6492262))

(assert (= (and b!6492262 res!2666346) b!6492261))

(assert (= (and d!2037006 (not res!2666345)) b!6492257))

(declare-fun m!7280926 () Bool)

(assert (=> d!2037006 m!7280926))

(assert (=> d!2037006 m!7279624))

(declare-fun m!7280928 () Bool)

(assert (=> d!2037006 m!7280928))

(assert (=> d!2037006 m!7279404))

(declare-fun m!7280930 () Bool)

(assert (=> b!6492259 m!7280930))

(declare-fun m!7280932 () Bool)

(assert (=> b!6492259 m!7280932))

(assert (=> b!6492261 m!7280930))

(declare-fun m!7280934 () Bool)

(assert (=> b!6492261 m!7280934))

(assert (=> b!6492258 m!7279624))

(declare-fun m!7280936 () Bool)

(assert (=> b!6492258 m!7280936))

(assert (=> b!6492258 m!7280936))

(declare-fun m!7280938 () Bool)

(assert (=> b!6492258 m!7280938))

(assert (=> b!6492258 m!7279624))

(declare-fun m!7280940 () Bool)

(assert (=> b!6492258 m!7280940))

(assert (=> b!6492258 m!7280936))

(declare-fun m!7280942 () Bool)

(assert (=> b!6492258 m!7280942))

(declare-fun m!7280944 () Bool)

(assert (=> b!6492256 m!7280944))

(assert (=> b!6492257 m!7280926))

(assert (=> b!6492262 m!7280930))

(declare-fun m!7280946 () Bool)

(assert (=> b!6492262 m!7280946))

(assert (=> b!6491163 d!2037006))

(assert (=> bs!1647950 d!2036548))

(declare-fun d!2037008 () Bool)

(assert (=> d!2037008 (= (isEmpty!37479 lt!2389650) (not ((_ is Some!16259) lt!2389650)))))

(assert (=> d!2036456 d!2037008))

(declare-fun b!6492264 () Bool)

(declare-fun res!2666348 () Bool)

(declare-fun e!3934440 () Bool)

(assert (=> b!6492264 (=> res!2666348 e!3934440)))

(assert (=> b!6492264 (= res!2666348 (not ((_ is Concat!25214) (regTwo!33250 r!7292))))))

(declare-fun e!3934442 () Bool)

(assert (=> b!6492264 (= e!3934442 e!3934440)))

(declare-fun b!6492265 () Bool)

(declare-fun e!3934444 () Bool)

(assert (=> b!6492265 (= e!3934440 e!3934444)))

(declare-fun res!2666352 () Bool)

(assert (=> b!6492265 (=> (not res!2666352) (not e!3934444))))

(declare-fun call!562110 () Bool)

(assert (=> b!6492265 (= res!2666352 call!562110)))

(declare-fun b!6492266 () Bool)

(declare-fun call!562112 () Bool)

(assert (=> b!6492266 (= e!3934444 call!562112)))

(declare-fun bm!562105 () Bool)

(declare-fun c!1189844 () Bool)

(assert (=> bm!562105 (= call!562112 (validRegex!8105 (ite c!1189844 (regTwo!33251 (regTwo!33250 r!7292)) (regTwo!33250 (regTwo!33250 r!7292)))))))

(declare-fun b!6492267 () Bool)

(declare-fun e!3934441 () Bool)

(declare-fun e!3934445 () Bool)

(assert (=> b!6492267 (= e!3934441 e!3934445)))

(declare-fun res!2666351 () Bool)

(assert (=> b!6492267 (= res!2666351 (not (nullable!6362 (reg!16698 (regTwo!33250 r!7292)))))))

(assert (=> b!6492267 (=> (not res!2666351) (not e!3934445))))

(declare-fun b!6492268 () Bool)

(declare-fun e!3934439 () Bool)

(assert (=> b!6492268 (= e!3934439 e!3934441)))

(declare-fun c!1189843 () Bool)

(assert (=> b!6492268 (= c!1189843 ((_ is Star!16369) (regTwo!33250 r!7292)))))

(declare-fun b!6492269 () Bool)

(declare-fun call!562111 () Bool)

(assert (=> b!6492269 (= e!3934445 call!562111)))

(declare-fun b!6492270 () Bool)

(assert (=> b!6492270 (= e!3934441 e!3934442)))

(assert (=> b!6492270 (= c!1189844 ((_ is Union!16369) (regTwo!33250 r!7292)))))

(declare-fun d!2037010 () Bool)

(declare-fun res!2666349 () Bool)

(assert (=> d!2037010 (=> res!2666349 e!3934439)))

(assert (=> d!2037010 (= res!2666349 ((_ is ElementMatch!16369) (regTwo!33250 r!7292)))))

(assert (=> d!2037010 (= (validRegex!8105 (regTwo!33250 r!7292)) e!3934439)))

(declare-fun bm!562106 () Bool)

(assert (=> bm!562106 (= call!562111 (validRegex!8105 (ite c!1189843 (reg!16698 (regTwo!33250 r!7292)) (ite c!1189844 (regOne!33251 (regTwo!33250 r!7292)) (regOne!33250 (regTwo!33250 r!7292))))))))

(declare-fun b!6492271 () Bool)

(declare-fun e!3934443 () Bool)

(assert (=> b!6492271 (= e!3934443 call!562112)))

(declare-fun b!6492272 () Bool)

(declare-fun res!2666350 () Bool)

(assert (=> b!6492272 (=> (not res!2666350) (not e!3934443))))

(assert (=> b!6492272 (= res!2666350 call!562110)))

(assert (=> b!6492272 (= e!3934442 e!3934443)))

(declare-fun bm!562107 () Bool)

(assert (=> bm!562107 (= call!562110 call!562111)))

(assert (= (and d!2037010 (not res!2666349)) b!6492268))

(assert (= (and b!6492268 c!1189843) b!6492267))

(assert (= (and b!6492268 (not c!1189843)) b!6492270))

(assert (= (and b!6492267 res!2666351) b!6492269))

(assert (= (and b!6492270 c!1189844) b!6492272))

(assert (= (and b!6492270 (not c!1189844)) b!6492264))

(assert (= (and b!6492272 res!2666350) b!6492271))

(assert (= (and b!6492264 (not res!2666348)) b!6492265))

(assert (= (and b!6492265 res!2666352) b!6492266))

(assert (= (or b!6492271 b!6492266) bm!562105))

(assert (= (or b!6492272 b!6492265) bm!562107))

(assert (= (or b!6492269 bm!562107) bm!562106))

(declare-fun m!7280948 () Bool)

(assert (=> bm!562105 m!7280948))

(declare-fun m!7280950 () Bool)

(assert (=> b!6492267 m!7280950))

(declare-fun m!7280952 () Bool)

(assert (=> bm!562106 m!7280952))

(assert (=> b!6491565 d!2037010))

(declare-fun d!2037012 () Bool)

(assert (=> d!2037012 (= (isUnion!1199 lt!2389759) ((_ is Union!16369) lt!2389759))))

(assert (=> b!6491282 d!2037012))

(declare-fun d!2037014 () Bool)

(declare-fun lt!2389910 () Int)

(assert (=> d!2037014 (>= lt!2389910 0)))

(declare-fun e!3934446 () Int)

(assert (=> d!2037014 (= lt!2389910 e!3934446)))

(declare-fun c!1189845 () Bool)

(assert (=> d!2037014 (= c!1189845 ((_ is Nil!65282) lt!2389841))))

(assert (=> d!2037014 (= (size!40427 lt!2389841) lt!2389910)))

(declare-fun b!6492273 () Bool)

(assert (=> b!6492273 (= e!3934446 0)))

(declare-fun b!6492274 () Bool)

(assert (=> b!6492274 (= e!3934446 (+ 1 (size!40427 (t!379034 lt!2389841))))))

(assert (= (and d!2037014 c!1189845) b!6492273))

(assert (= (and d!2037014 (not c!1189845)) b!6492274))

(declare-fun m!7280954 () Bool)

(assert (=> b!6492274 m!7280954))

(assert (=> b!6491590 d!2037014))

(assert (=> b!6491590 d!2036912))

(declare-fun d!2037016 () Bool)

(declare-fun lt!2389911 () Int)

(assert (=> d!2037016 (>= lt!2389911 0)))

(declare-fun e!3934447 () Int)

(assert (=> d!2037016 (= lt!2389911 e!3934447)))

(declare-fun c!1189846 () Bool)

(assert (=> d!2037016 (= c!1189846 ((_ is Nil!65282) (_2!36651 lt!2389655)))))

(assert (=> d!2037016 (= (size!40427 (_2!36651 lt!2389655)) lt!2389911)))

(declare-fun b!6492275 () Bool)

(assert (=> b!6492275 (= e!3934447 0)))

(declare-fun b!6492276 () Bool)

(assert (=> b!6492276 (= e!3934447 (+ 1 (size!40427 (t!379034 (_2!36651 lt!2389655)))))))

(assert (= (and d!2037016 c!1189846) b!6492275))

(assert (= (and d!2037016 (not c!1189846)) b!6492276))

(declare-fun m!7280956 () Bool)

(assert (=> b!6492276 m!7280956))

(assert (=> b!6491590 d!2037016))

(assert (=> b!6491129 d!2036832))

(assert (=> b!6491129 d!2036834))

(declare-fun bs!1648159 () Bool)

(declare-fun b!6492283 () Bool)

(assert (= bs!1648159 (and b!6492283 b!6490643)))

(declare-fun lambda!359565 () Int)

(assert (=> bs!1648159 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regOne!33251 r!7292)) (reg!16698 (regOne!33250 r!7292))) (= (regOne!33251 r!7292) lt!2389631)) (= lambda!359565 lambda!359442))))

(declare-fun bs!1648160 () Bool)

(assert (= bs!1648160 (and b!6492283 d!2036598)))

(assert (=> bs!1648160 (not (= lambda!359565 lambda!359524))))

(declare-fun bs!1648161 () Bool)

(assert (= bs!1648161 (and b!6492283 d!2036464)))

(assert (=> bs!1648161 (not (= lambda!359565 lambda!359480))))

(assert (=> bs!1648159 (not (= lambda!359565 lambda!359443))))

(declare-fun bs!1648162 () Bool)

(assert (= bs!1648162 (and b!6492283 d!2036472)))

(assert (=> bs!1648162 (not (= lambda!359565 lambda!359485))))

(declare-fun bs!1648163 () Bool)

(assert (= bs!1648163 (and b!6492283 b!6491888)))

(assert (=> bs!1648163 (not (= lambda!359565 lambda!359551))))

(declare-fun bs!1648164 () Bool)

(assert (= bs!1648164 (and b!6492283 b!6490750)))

(assert (=> bs!1648164 (not (= lambda!359565 lambda!359453))))

(declare-fun bs!1648165 () Bool)

(assert (= bs!1648165 (and b!6492283 b!6490649)))

(assert (=> bs!1648165 (not (= lambda!359565 lambda!359436))))

(declare-fun bs!1648166 () Bool)

(assert (= bs!1648166 (and b!6492283 b!6490618)))

(assert (=> bs!1648166 (not (= lambda!359565 lambda!359440))))

(declare-fun bs!1648167 () Bool)

(assert (= bs!1648167 (and b!6492283 b!6490748)))

(assert (=> bs!1648167 (= (and (= (reg!16698 (regOne!33251 r!7292)) (reg!16698 r!7292)) (= (regOne!33251 r!7292) r!7292)) (= lambda!359565 lambda!359452))))

(declare-fun bs!1648168 () Bool)

(assert (= bs!1648168 (and b!6492283 d!2036524)))

(assert (=> bs!1648168 (not (= lambda!359565 lambda!359499))))

(declare-fun bs!1648169 () Bool)

(assert (= bs!1648169 (and b!6492283 b!6492132)))

(assert (=> bs!1648169 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regOne!33251 r!7292)) (reg!16698 (regTwo!33251 lt!2389631))) (= (regOne!33251 r!7292) (regTwo!33251 lt!2389631))) (= lambda!359565 lambda!359558))))

(declare-fun bs!1648170 () Bool)

(assert (= bs!1648170 (and b!6492283 d!2036458)))

(assert (=> bs!1648170 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regOne!33251 r!7292)) (reg!16698 (regOne!33250 r!7292))) (= (regOne!33251 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359565 lambda!359470))))

(assert (=> bs!1648166 (not (= lambda!359565 lambda!359439))))

(declare-fun bs!1648171 () Bool)

(assert (= bs!1648171 (and b!6492283 d!2036606)))

(assert (=> bs!1648171 (not (= lambda!359565 lambda!359528))))

(assert (=> bs!1648159 (not (= lambda!359565 lambda!359441))))

(declare-fun bs!1648172 () Bool)

(assert (= bs!1648172 (and b!6492283 b!6492134)))

(assert (=> bs!1648172 (not (= lambda!359565 lambda!359559))))

(declare-fun bs!1648173 () Bool)

(assert (= bs!1648173 (and b!6492283 d!2036516)))

(assert (=> bs!1648173 (not (= lambda!359565 lambda!359498))))

(declare-fun bs!1648174 () Bool)

(assert (= bs!1648174 (and b!6492283 b!6491179)))

(assert (=> bs!1648174 (= (and (= (reg!16698 (regOne!33251 r!7292)) (reg!16698 lt!2389659)) (= (regOne!33251 r!7292) lt!2389659)) (= lambda!359565 lambda!359500))))

(declare-fun bs!1648175 () Bool)

(assert (= bs!1648175 (and b!6492283 b!6491886)))

(assert (=> bs!1648175 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regOne!33251 r!7292)) (reg!16698 (regOne!33251 lt!2389631))) (= (regOne!33251 r!7292) (regOne!33251 lt!2389631))) (= lambda!359565 lambda!359550))))

(assert (=> bs!1648170 (not (= lambda!359565 lambda!359469))))

(assert (=> bs!1648171 (not (= lambda!359565 lambda!359529))))

(assert (=> bs!1648173 (not (= lambda!359565 lambda!359497))))

(assert (=> bs!1648165 (not (= lambda!359565 lambda!359437))))

(declare-fun bs!1648176 () Bool)

(assert (= bs!1648176 (and b!6492283 b!6490932)))

(assert (=> bs!1648176 (not (= lambda!359565 lambda!359462))))

(assert (=> bs!1648161 (not (= lambda!359565 lambda!359477))))

(declare-fun bs!1648177 () Bool)

(assert (= bs!1648177 (and b!6492283 b!6490930)))

(assert (=> bs!1648177 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regOne!33251 r!7292)) (reg!16698 lt!2389631)) (= (regOne!33251 r!7292) lt!2389631)) (= lambda!359565 lambda!359459))))

(declare-fun bs!1648178 () Bool)

(assert (= bs!1648178 (and b!6492283 b!6491181)))

(assert (=> bs!1648178 (not (= lambda!359565 lambda!359501))))

(assert (=> b!6492283 true))

(assert (=> b!6492283 true))

(declare-fun bs!1648179 () Bool)

(declare-fun b!6492285 () Bool)

(assert (= bs!1648179 (and b!6492285 b!6490643)))

(declare-fun lambda!359566 () Int)

(assert (=> bs!1648179 (not (= lambda!359566 lambda!359442))))

(declare-fun bs!1648180 () Bool)

(assert (= bs!1648180 (and b!6492285 d!2036598)))

(assert (=> bs!1648180 (not (= lambda!359566 lambda!359524))))

(declare-fun bs!1648181 () Bool)

(assert (= bs!1648181 (and b!6492285 d!2036464)))

(assert (=> bs!1648181 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regOne!33251 r!7292)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regOne!33251 r!7292)) lt!2389631)) (= lambda!359566 lambda!359480))))

(assert (=> bs!1648179 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regOne!33251 r!7292)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regOne!33251 r!7292)) lt!2389631)) (= lambda!359566 lambda!359443))))

(declare-fun bs!1648182 () Bool)

(assert (= bs!1648182 (and b!6492285 b!6492283)))

(assert (=> bs!1648182 (not (= lambda!359566 lambda!359565))))

(declare-fun bs!1648183 () Bool)

(assert (= bs!1648183 (and b!6492285 d!2036472)))

(assert (=> bs!1648183 (not (= lambda!359566 lambda!359485))))

(declare-fun bs!1648184 () Bool)

(assert (= bs!1648184 (and b!6492285 b!6491888)))

(assert (=> bs!1648184 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regOne!33251 r!7292)) (regOne!33250 (regOne!33251 lt!2389631))) (= (regTwo!33250 (regOne!33251 r!7292)) (regTwo!33250 (regOne!33251 lt!2389631)))) (= lambda!359566 lambda!359551))))

(declare-fun bs!1648185 () Bool)

(assert (= bs!1648185 (and b!6492285 b!6490750)))

(assert (=> bs!1648185 (= (and (= (regOne!33250 (regOne!33251 r!7292)) (regOne!33250 r!7292)) (= (regTwo!33250 (regOne!33251 r!7292)) (regTwo!33250 r!7292))) (= lambda!359566 lambda!359453))))

(declare-fun bs!1648186 () Bool)

(assert (= bs!1648186 (and b!6492285 b!6490649)))

(assert (=> bs!1648186 (not (= lambda!359566 lambda!359436))))

(declare-fun bs!1648187 () Bool)

(assert (= bs!1648187 (and b!6492285 b!6490618)))

(assert (=> bs!1648187 (= (and (= (regOne!33250 (regOne!33251 r!7292)) lt!2389631) (= (regTwo!33250 (regOne!33251 r!7292)) (regTwo!33250 r!7292))) (= lambda!359566 lambda!359440))))

(declare-fun bs!1648188 () Bool)

(assert (= bs!1648188 (and b!6492285 b!6490748)))

(assert (=> bs!1648188 (not (= lambda!359566 lambda!359452))))

(declare-fun bs!1648189 () Bool)

(assert (= bs!1648189 (and b!6492285 d!2036524)))

(assert (=> bs!1648189 (not (= lambda!359566 lambda!359499))))

(declare-fun bs!1648190 () Bool)

(assert (= bs!1648190 (and b!6492285 b!6492132)))

(assert (=> bs!1648190 (not (= lambda!359566 lambda!359558))))

(declare-fun bs!1648191 () Bool)

(assert (= bs!1648191 (and b!6492285 d!2036458)))

(assert (=> bs!1648191 (not (= lambda!359566 lambda!359470))))

(assert (=> bs!1648187 (not (= lambda!359566 lambda!359439))))

(declare-fun bs!1648192 () Bool)

(assert (= bs!1648192 (and b!6492285 d!2036606)))

(assert (=> bs!1648192 (not (= lambda!359566 lambda!359528))))

(assert (=> bs!1648179 (not (= lambda!359566 lambda!359441))))

(declare-fun bs!1648193 () Bool)

(assert (= bs!1648193 (and b!6492285 b!6492134)))

(assert (=> bs!1648193 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regOne!33251 r!7292)) (regOne!33250 (regTwo!33251 lt!2389631))) (= (regTwo!33250 (regOne!33251 r!7292)) (regTwo!33250 (regTwo!33251 lt!2389631)))) (= lambda!359566 lambda!359559))))

(declare-fun bs!1648194 () Bool)

(assert (= bs!1648194 (and b!6492285 d!2036516)))

(assert (=> bs!1648194 (= (and (= (regOne!33250 (regOne!33251 r!7292)) lt!2389631) (= (regTwo!33250 (regOne!33251 r!7292)) (regTwo!33250 r!7292))) (= lambda!359566 lambda!359498))))

(declare-fun bs!1648195 () Bool)

(assert (= bs!1648195 (and b!6492285 b!6491179)))

(assert (=> bs!1648195 (not (= lambda!359566 lambda!359500))))

(declare-fun bs!1648196 () Bool)

(assert (= bs!1648196 (and b!6492285 b!6491886)))

(assert (=> bs!1648196 (not (= lambda!359566 lambda!359550))))

(assert (=> bs!1648191 (not (= lambda!359566 lambda!359469))))

(assert (=> bs!1648192 (= (and (= (regOne!33250 (regOne!33251 r!7292)) (regOne!33250 r!7292)) (= (regTwo!33250 (regOne!33251 r!7292)) (regTwo!33250 r!7292))) (= lambda!359566 lambda!359529))))

(assert (=> bs!1648194 (not (= lambda!359566 lambda!359497))))

(assert (=> bs!1648186 (= (and (= (regOne!33250 (regOne!33251 r!7292)) (regOne!33250 r!7292)) (= (regTwo!33250 (regOne!33251 r!7292)) (regTwo!33250 r!7292))) (= lambda!359566 lambda!359437))))

(declare-fun bs!1648197 () Bool)

(assert (= bs!1648197 (and b!6492285 b!6490932)))

(assert (=> bs!1648197 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regOne!33251 r!7292)) (regOne!33250 lt!2389631)) (= (regTwo!33250 (regOne!33251 r!7292)) (regTwo!33250 lt!2389631))) (= lambda!359566 lambda!359462))))

(assert (=> bs!1648181 (not (= lambda!359566 lambda!359477))))

(declare-fun bs!1648198 () Bool)

(assert (= bs!1648198 (and b!6492285 b!6490930)))

(assert (=> bs!1648198 (not (= lambda!359566 lambda!359459))))

(declare-fun bs!1648199 () Bool)

(assert (= bs!1648199 (and b!6492285 b!6491181)))

(assert (=> bs!1648199 (= (and (= (regOne!33250 (regOne!33251 r!7292)) (regOne!33250 lt!2389659)) (= (regTwo!33250 (regOne!33251 r!7292)) (regTwo!33250 lt!2389659))) (= lambda!359566 lambda!359501))))

(assert (=> b!6492285 true))

(assert (=> b!6492285 true))

(declare-fun b!6492277 () Bool)

(declare-fun e!3934453 () Bool)

(declare-fun e!3934454 () Bool)

(assert (=> b!6492277 (= e!3934453 e!3934454)))

(declare-fun res!2666355 () Bool)

(assert (=> b!6492277 (= res!2666355 (not ((_ is EmptyLang!16369) (regOne!33251 r!7292))))))

(assert (=> b!6492277 (=> (not res!2666355) (not e!3934454))))

(declare-fun bm!562108 () Bool)

(declare-fun call!562113 () Bool)

(assert (=> bm!562108 (= call!562113 (isEmpty!37477 s!2326))))

(declare-fun b!6492278 () Bool)

(declare-fun e!3934449 () Bool)

(declare-fun e!3934448 () Bool)

(assert (=> b!6492278 (= e!3934449 e!3934448)))

(declare-fun res!2666354 () Bool)

(assert (=> b!6492278 (= res!2666354 (matchRSpec!3470 (regOne!33251 (regOne!33251 r!7292)) s!2326))))

(assert (=> b!6492278 (=> res!2666354 e!3934448)))

(declare-fun b!6492279 () Bool)

(assert (=> b!6492279 (= e!3934448 (matchRSpec!3470 (regTwo!33251 (regOne!33251 r!7292)) s!2326))))

(declare-fun b!6492280 () Bool)

(declare-fun res!2666353 () Bool)

(declare-fun e!3934451 () Bool)

(assert (=> b!6492280 (=> res!2666353 e!3934451)))

(assert (=> b!6492280 (= res!2666353 call!562113)))

(declare-fun e!3934452 () Bool)

(assert (=> b!6492280 (= e!3934452 e!3934451)))

(declare-fun d!2037018 () Bool)

(declare-fun c!1189847 () Bool)

(assert (=> d!2037018 (= c!1189847 ((_ is EmptyExpr!16369) (regOne!33251 r!7292)))))

(assert (=> d!2037018 (= (matchRSpec!3470 (regOne!33251 r!7292) s!2326) e!3934453)))

(declare-fun b!6492281 () Bool)

(declare-fun e!3934450 () Bool)

(assert (=> b!6492281 (= e!3934450 (= s!2326 (Cons!65282 (c!1189393 (regOne!33251 r!7292)) Nil!65282)))))

(declare-fun b!6492282 () Bool)

(assert (=> b!6492282 (= e!3934453 call!562113)))

(declare-fun call!562114 () Bool)

(assert (=> b!6492283 (= e!3934451 call!562114)))

(declare-fun b!6492284 () Bool)

(assert (=> b!6492284 (= e!3934449 e!3934452)))

(declare-fun c!1189848 () Bool)

(assert (=> b!6492284 (= c!1189848 ((_ is Star!16369) (regOne!33251 r!7292)))))

(assert (=> b!6492285 (= e!3934452 call!562114)))

(declare-fun bm!562109 () Bool)

(assert (=> bm!562109 (= call!562114 (Exists!3439 (ite c!1189848 lambda!359565 lambda!359566)))))

(declare-fun b!6492286 () Bool)

(declare-fun c!1189849 () Bool)

(assert (=> b!6492286 (= c!1189849 ((_ is Union!16369) (regOne!33251 r!7292)))))

(assert (=> b!6492286 (= e!3934450 e!3934449)))

(declare-fun b!6492287 () Bool)

(declare-fun c!1189850 () Bool)

(assert (=> b!6492287 (= c!1189850 ((_ is ElementMatch!16369) (regOne!33251 r!7292)))))

(assert (=> b!6492287 (= e!3934454 e!3934450)))

(assert (= (and d!2037018 c!1189847) b!6492282))

(assert (= (and d!2037018 (not c!1189847)) b!6492277))

(assert (= (and b!6492277 res!2666355) b!6492287))

(assert (= (and b!6492287 c!1189850) b!6492281))

(assert (= (and b!6492287 (not c!1189850)) b!6492286))

(assert (= (and b!6492286 c!1189849) b!6492278))

(assert (= (and b!6492286 (not c!1189849)) b!6492284))

(assert (= (and b!6492278 (not res!2666354)) b!6492279))

(assert (= (and b!6492284 c!1189848) b!6492280))

(assert (= (and b!6492284 (not c!1189848)) b!6492285))

(assert (= (and b!6492280 (not res!2666353)) b!6492283))

(assert (= (or b!6492283 b!6492285) bm!562109))

(assert (= (or b!6492282 b!6492280) bm!562108))

(assert (=> bm!562108 m!7279298))

(declare-fun m!7280958 () Bool)

(assert (=> b!6492278 m!7280958))

(declare-fun m!7280960 () Bool)

(assert (=> b!6492279 m!7280960))

(declare-fun m!7280962 () Bool)

(assert (=> bm!562109 m!7280962))

(assert (=> b!6490743 d!2037018))

(declare-fun b!6492288 () Bool)

(declare-fun e!3934456 () Bool)

(declare-fun e!3934460 () Bool)

(assert (=> b!6492288 (= e!3934456 e!3934460)))

(declare-fun res!2666356 () Bool)

(declare-fun call!562116 () Bool)

(assert (=> b!6492288 (= res!2666356 call!562116)))

(assert (=> b!6492288 (=> res!2666356 e!3934460)))

(declare-fun b!6492289 () Bool)

(declare-fun e!3934455 () Bool)

(declare-fun e!3934458 () Bool)

(assert (=> b!6492289 (= e!3934455 e!3934458)))

(declare-fun res!2666360 () Bool)

(assert (=> b!6492289 (=> res!2666360 e!3934458)))

(assert (=> b!6492289 (= res!2666360 ((_ is Star!16369) (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6492290 () Bool)

(declare-fun e!3934457 () Bool)

(declare-fun call!562115 () Bool)

(assert (=> b!6492290 (= e!3934457 call!562115)))

(declare-fun b!6492291 () Bool)

(assert (=> b!6492291 (= e!3934458 e!3934456)))

(declare-fun c!1189851 () Bool)

(assert (=> b!6492291 (= c!1189851 ((_ is Union!16369) (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6492292 () Bool)

(assert (=> b!6492292 (= e!3934456 e!3934457)))

(declare-fun res!2666357 () Bool)

(assert (=> b!6492292 (= res!2666357 call!562116)))

(assert (=> b!6492292 (=> (not res!2666357) (not e!3934457))))

(declare-fun bm!562110 () Bool)

(assert (=> bm!562110 (= call!562116 (nullable!6362 (ite c!1189851 (regOne!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))))))

(declare-fun b!6492293 () Bool)

(assert (=> b!6492293 (= e!3934460 call!562115)))

(declare-fun d!2037020 () Bool)

(declare-fun res!2666359 () Bool)

(declare-fun e!3934459 () Bool)

(assert (=> d!2037020 (=> res!2666359 e!3934459)))

(assert (=> d!2037020 (= res!2666359 ((_ is EmptyExpr!16369) (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(assert (=> d!2037020 (= (nullableFct!2300 (h!71731 (exprs!6253 (h!71732 zl!343)))) e!3934459)))

(declare-fun b!6492294 () Bool)

(assert (=> b!6492294 (= e!3934459 e!3934455)))

(declare-fun res!2666358 () Bool)

(assert (=> b!6492294 (=> (not res!2666358) (not e!3934455))))

(assert (=> b!6492294 (= res!2666358 (and (not ((_ is EmptyLang!16369) (h!71731 (exprs!6253 (h!71732 zl!343))))) (not ((_ is ElementMatch!16369) (h!71731 (exprs!6253 (h!71732 zl!343)))))))))

(declare-fun bm!562111 () Bool)

(assert (=> bm!562111 (= call!562115 (nullable!6362 (ite c!1189851 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regTwo!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))))))

(assert (= (and d!2037020 (not res!2666359)) b!6492294))

(assert (= (and b!6492294 res!2666358) b!6492289))

(assert (= (and b!6492289 (not res!2666360)) b!6492291))

(assert (= (and b!6492291 c!1189851) b!6492288))

(assert (= (and b!6492291 (not c!1189851)) b!6492292))

(assert (= (and b!6492288 (not res!2666356)) b!6492293))

(assert (= (and b!6492292 res!2666357) b!6492290))

(assert (= (or b!6492293 b!6492290) bm!562111))

(assert (= (or b!6492288 b!6492292) bm!562110))

(declare-fun m!7280964 () Bool)

(assert (=> bm!562110 m!7280964))

(declare-fun m!7280966 () Bool)

(assert (=> bm!562111 m!7280966))

(assert (=> d!2036436 d!2037020))

(declare-fun d!2037022 () Bool)

(assert (=> d!2037022 (= (Exists!3439 (ite c!1189537 lambda!359500 lambda!359501)) (choose!48184 (ite c!1189537 lambda!359500 lambda!359501)))))

(declare-fun bs!1648200 () Bool)

(assert (= bs!1648200 d!2037022))

(declare-fun m!7280968 () Bool)

(assert (=> bs!1648200 m!7280968))

(assert (=> bm!561976 d!2037022))

(assert (=> b!6490827 d!2036906))

(declare-fun d!2037024 () Bool)

(assert (=> d!2037024 (= (isEmpty!37477 (tail!12296 lt!2389663)) ((_ is Nil!65282) (tail!12296 lt!2389663)))))

(assert (=> b!6491508 d!2037024))

(assert (=> b!6491508 d!2036918))

(declare-fun d!2037026 () Bool)

(assert (=> d!2037026 (= (nullable!6362 (regOne!33250 (reg!16698 (regOne!33250 r!7292)))) (nullableFct!2300 (regOne!33250 (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun bs!1648201 () Bool)

(assert (= bs!1648201 d!2037026))

(declare-fun m!7280970 () Bool)

(assert (=> bs!1648201 m!7280970))

(assert (=> b!6490682 d!2037026))

(declare-fun d!2037028 () Bool)

(assert (=> d!2037028 (= (isEmpty!37477 (t!379034 s!2326)) ((_ is Nil!65282) (t!379034 s!2326)))))

(assert (=> d!2036584 d!2037028))

(declare-fun d!2037030 () Bool)

(assert (=> d!2037030 (= (isEmpty!37476 (tail!12299 (unfocusZipperList!1790 zl!343))) ((_ is Nil!65283) (tail!12299 (unfocusZipperList!1790 zl!343))))))

(assert (=> b!6491290 d!2037030))

(declare-fun d!2037032 () Bool)

(assert (=> d!2037032 (= (tail!12299 (unfocusZipperList!1790 zl!343)) (t!379035 (unfocusZipperList!1790 zl!343)))))

(assert (=> b!6491290 d!2037032))

(declare-fun d!2037034 () Bool)

(assert (=> d!2037034 (= (nullable!6362 lt!2389631) (nullableFct!2300 lt!2389631))))

(declare-fun bs!1648202 () Bool)

(assert (= bs!1648202 d!2037034))

(declare-fun m!7280972 () Bool)

(assert (=> bs!1648202 m!7280972))

(assert (=> b!6490914 d!2037034))

(declare-fun bs!1648203 () Bool)

(declare-fun d!2037036 () Bool)

(assert (= bs!1648203 (and d!2037036 b!6490643)))

(declare-fun lambda!359569 () Int)

(assert (=> bs!1648203 (not (= lambda!359569 lambda!359442))))

(declare-fun bs!1648204 () Bool)

(assert (= bs!1648204 (and d!2037036 d!2036598)))

(assert (=> bs!1648204 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359569 lambda!359524))))

(declare-fun bs!1648205 () Bool)

(assert (= bs!1648205 (and d!2037036 d!2036464)))

(assert (=> bs!1648205 (not (= lambda!359569 lambda!359480))))

(assert (=> bs!1648203 (not (= lambda!359569 lambda!359443))))

(declare-fun bs!1648206 () Bool)

(assert (= bs!1648206 (and d!2037036 b!6492283)))

(assert (=> bs!1648206 (not (= lambda!359569 lambda!359565))))

(declare-fun bs!1648207 () Bool)

(assert (= bs!1648207 (and d!2037036 d!2036472)))

(assert (=> bs!1648207 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359569 lambda!359485))))

(declare-fun bs!1648208 () Bool)

(assert (= bs!1648208 (and d!2037036 b!6491888)))

(assert (=> bs!1648208 (not (= lambda!359569 lambda!359551))))

(declare-fun bs!1648209 () Bool)

(assert (= bs!1648209 (and d!2037036 b!6490750)))

(assert (=> bs!1648209 (not (= lambda!359569 lambda!359453))))

(declare-fun bs!1648210 () Bool)

(assert (= bs!1648210 (and d!2037036 b!6490649)))

(assert (=> bs!1648210 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359569 lambda!359436))))

(declare-fun bs!1648211 () Bool)

(assert (= bs!1648211 (and d!2037036 b!6490618)))

(assert (=> bs!1648211 (not (= lambda!359569 lambda!359440))))

(declare-fun bs!1648212 () Bool)

(assert (= bs!1648212 (and d!2037036 b!6490748)))

(assert (=> bs!1648212 (not (= lambda!359569 lambda!359452))))

(declare-fun bs!1648213 () Bool)

(assert (= bs!1648213 (and d!2037036 d!2036524)))

(assert (=> bs!1648213 (= lambda!359569 lambda!359499)))

(declare-fun bs!1648214 () Bool)

(assert (= bs!1648214 (and d!2037036 b!6492132)))

(assert (=> bs!1648214 (not (= lambda!359569 lambda!359558))))

(declare-fun bs!1648215 () Bool)

(assert (= bs!1648215 (and d!2037036 d!2036458)))

(assert (=> bs!1648215 (not (= lambda!359569 lambda!359470))))

(assert (=> bs!1648211 (= lambda!359569 lambda!359439)))

(declare-fun bs!1648216 () Bool)

(assert (= bs!1648216 (and d!2037036 d!2036606)))

(assert (=> bs!1648216 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359569 lambda!359528))))

(assert (=> bs!1648203 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359569 lambda!359441))))

(declare-fun bs!1648217 () Bool)

(assert (= bs!1648217 (and d!2037036 b!6492134)))

(assert (=> bs!1648217 (not (= lambda!359569 lambda!359559))))

(declare-fun bs!1648218 () Bool)

(assert (= bs!1648218 (and d!2037036 d!2036516)))

(assert (=> bs!1648218 (not (= lambda!359569 lambda!359498))))

(declare-fun bs!1648219 () Bool)

(assert (= bs!1648219 (and d!2037036 b!6491179)))

(assert (=> bs!1648219 (not (= lambda!359569 lambda!359500))))

(declare-fun bs!1648220 () Bool)

(assert (= bs!1648220 (and d!2037036 b!6492285)))

(assert (=> bs!1648220 (not (= lambda!359569 lambda!359566))))

(declare-fun bs!1648221 () Bool)

(assert (= bs!1648221 (and d!2037036 b!6491886)))

(assert (=> bs!1648221 (not (= lambda!359569 lambda!359550))))

(assert (=> bs!1648215 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359569 lambda!359469))))

(assert (=> bs!1648216 (not (= lambda!359569 lambda!359529))))

(assert (=> bs!1648218 (= lambda!359569 lambda!359497)))

(assert (=> bs!1648210 (not (= lambda!359569 lambda!359437))))

(declare-fun bs!1648222 () Bool)

(assert (= bs!1648222 (and d!2037036 b!6490932)))

(assert (=> bs!1648222 (not (= lambda!359569 lambda!359462))))

(assert (=> bs!1648205 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359569 lambda!359477))))

(declare-fun bs!1648223 () Bool)

(assert (= bs!1648223 (and d!2037036 b!6490930)))

(assert (=> bs!1648223 (not (= lambda!359569 lambda!359459))))

(declare-fun bs!1648224 () Bool)

(assert (= bs!1648224 (and d!2037036 b!6491181)))

(assert (=> bs!1648224 (not (= lambda!359569 lambda!359501))))

(assert (=> d!2037036 true))

(assert (=> d!2037036 true))

(assert (=> d!2037036 true))

(assert (=> d!2037036 (= (isDefined!12963 (findConcatSeparation!2674 lt!2389631 (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326)) (Exists!3439 lambda!359569))))

(assert (=> d!2037036 true))

(declare-fun _$89!2730 () Unit!158807)

(assert (=> d!2037036 (= (choose!48182 lt!2389631 (regTwo!33250 r!7292) s!2326) _$89!2730)))

(declare-fun bs!1648225 () Bool)

(assert (= bs!1648225 d!2037036))

(assert (=> bs!1648225 m!7279188))

(assert (=> bs!1648225 m!7279188))

(assert (=> bs!1648225 m!7279672))

(declare-fun m!7280974 () Bool)

(assert (=> bs!1648225 m!7280974))

(assert (=> d!2036524 d!2037036))

(assert (=> d!2036524 d!2036508))

(declare-fun b!6492299 () Bool)

(declare-fun res!2666365 () Bool)

(declare-fun e!3934464 () Bool)

(assert (=> b!6492299 (=> res!2666365 e!3934464)))

(assert (=> b!6492299 (= res!2666365 (not ((_ is Concat!25214) lt!2389631)))))

(declare-fun e!3934466 () Bool)

(assert (=> b!6492299 (= e!3934466 e!3934464)))

(declare-fun b!6492300 () Bool)

(declare-fun e!3934468 () Bool)

(assert (=> b!6492300 (= e!3934464 e!3934468)))

(declare-fun res!2666369 () Bool)

(assert (=> b!6492300 (=> (not res!2666369) (not e!3934468))))

(declare-fun call!562117 () Bool)

(assert (=> b!6492300 (= res!2666369 call!562117)))

(declare-fun b!6492301 () Bool)

(declare-fun call!562119 () Bool)

(assert (=> b!6492301 (= e!3934468 call!562119)))

(declare-fun bm!562112 () Bool)

(declare-fun c!1189853 () Bool)

(assert (=> bm!562112 (= call!562119 (validRegex!8105 (ite c!1189853 (regTwo!33251 lt!2389631) (regTwo!33250 lt!2389631))))))

(declare-fun b!6492302 () Bool)

(declare-fun e!3934465 () Bool)

(declare-fun e!3934469 () Bool)

(assert (=> b!6492302 (= e!3934465 e!3934469)))

(declare-fun res!2666368 () Bool)

(assert (=> b!6492302 (= res!2666368 (not (nullable!6362 (reg!16698 lt!2389631))))))

(assert (=> b!6492302 (=> (not res!2666368) (not e!3934469))))

(declare-fun b!6492303 () Bool)

(declare-fun e!3934463 () Bool)

(assert (=> b!6492303 (= e!3934463 e!3934465)))

(declare-fun c!1189852 () Bool)

(assert (=> b!6492303 (= c!1189852 ((_ is Star!16369) lt!2389631))))

(declare-fun b!6492304 () Bool)

(declare-fun call!562118 () Bool)

(assert (=> b!6492304 (= e!3934469 call!562118)))

(declare-fun b!6492305 () Bool)

(assert (=> b!6492305 (= e!3934465 e!3934466)))

(assert (=> b!6492305 (= c!1189853 ((_ is Union!16369) lt!2389631))))

(declare-fun d!2037038 () Bool)

(declare-fun res!2666366 () Bool)

(assert (=> d!2037038 (=> res!2666366 e!3934463)))

(assert (=> d!2037038 (= res!2666366 ((_ is ElementMatch!16369) lt!2389631))))

(assert (=> d!2037038 (= (validRegex!8105 lt!2389631) e!3934463)))

(declare-fun bm!562113 () Bool)

(assert (=> bm!562113 (= call!562118 (validRegex!8105 (ite c!1189852 (reg!16698 lt!2389631) (ite c!1189853 (regOne!33251 lt!2389631) (regOne!33250 lt!2389631)))))))

(declare-fun b!6492306 () Bool)

(declare-fun e!3934467 () Bool)

(assert (=> b!6492306 (= e!3934467 call!562119)))

(declare-fun b!6492307 () Bool)

(declare-fun res!2666367 () Bool)

(assert (=> b!6492307 (=> (not res!2666367) (not e!3934467))))

(assert (=> b!6492307 (= res!2666367 call!562117)))

(assert (=> b!6492307 (= e!3934466 e!3934467)))

(declare-fun bm!562114 () Bool)

(assert (=> bm!562114 (= call!562117 call!562118)))

(assert (= (and d!2037038 (not res!2666366)) b!6492303))

(assert (= (and b!6492303 c!1189852) b!6492302))

(assert (= (and b!6492303 (not c!1189852)) b!6492305))

(assert (= (and b!6492302 res!2666368) b!6492304))

(assert (= (and b!6492305 c!1189853) b!6492307))

(assert (= (and b!6492305 (not c!1189853)) b!6492299))

(assert (= (and b!6492307 res!2666367) b!6492306))

(assert (= (and b!6492299 (not res!2666365)) b!6492300))

(assert (= (and b!6492300 res!2666369) b!6492301))

(assert (= (or b!6492306 b!6492301) bm!562112))

(assert (= (or b!6492307 b!6492300) bm!562114))

(assert (= (or b!6492304 bm!562114) bm!562113))

(declare-fun m!7280976 () Bool)

(assert (=> bm!562112 m!7280976))

(declare-fun m!7280978 () Bool)

(assert (=> b!6492302 m!7280978))

(declare-fun m!7280980 () Bool)

(assert (=> bm!562113 m!7280980))

(assert (=> d!2036524 d!2037038))

(declare-fun d!2037040 () Bool)

(assert (=> d!2037040 (= (isDefined!12963 (findConcatSeparation!2674 lt!2389631 (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326)) (not (isEmpty!37479 (findConcatSeparation!2674 lt!2389631 (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326))))))

(declare-fun bs!1648226 () Bool)

(assert (= bs!1648226 d!2037040))

(assert (=> bs!1648226 m!7279188))

(declare-fun m!7280982 () Bool)

(assert (=> bs!1648226 m!7280982))

(assert (=> d!2036524 d!2037040))

(declare-fun d!2037042 () Bool)

(assert (=> d!2037042 (= (Exists!3439 lambda!359499) (choose!48184 lambda!359499))))

(declare-fun bs!1648227 () Bool)

(assert (= bs!1648227 d!2037042))

(declare-fun m!7280984 () Bool)

(assert (=> bs!1648227 m!7280984))

(assert (=> d!2036524 d!2037042))

(declare-fun d!2037044 () Bool)

(assert (=> d!2037044 (= (Exists!3439 (ite c!1189426 lambda!359452 lambda!359453)) (choose!48184 (ite c!1189426 lambda!359452 lambda!359453)))))

(declare-fun bs!1648228 () Bool)

(assert (= bs!1648228 d!2037044))

(declare-fun m!7280986 () Bool)

(assert (=> bs!1648228 m!7280986))

(assert (=> bm!561921 d!2037044))

(declare-fun d!2037046 () Bool)

(assert (=> d!2037046 (= (isEmpty!37476 (tail!12299 (exprs!6253 (h!71732 zl!343)))) ((_ is Nil!65283) (tail!12299 (exprs!6253 (h!71732 zl!343)))))))

(assert (=> b!6491379 d!2037046))

(declare-fun d!2037048 () Bool)

(assert (=> d!2037048 (= (tail!12299 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))

(assert (=> b!6491379 d!2037048))

(declare-fun bs!1648229 () Bool)

(declare-fun d!2037050 () Bool)

(assert (= bs!1648229 (and d!2037050 d!2036540)))

(declare-fun lambda!359570 () Int)

(assert (=> bs!1648229 (= lambda!359570 lambda!359502)))

(declare-fun bs!1648230 () Bool)

(assert (= bs!1648230 (and d!2037050 d!2036928)))

(assert (=> bs!1648230 (= lambda!359570 lambda!359557)))

(declare-fun bs!1648231 () Bool)

(assert (= bs!1648231 (and d!2037050 d!2036902)))

(assert (=> bs!1648231 (= lambda!359570 lambda!359554)))

(declare-fun bs!1648232 () Bool)

(assert (= bs!1648232 (and d!2037050 b!6490629)))

(assert (=> bs!1648232 (= lambda!359570 lambda!359444)))

(declare-fun bs!1648233 () Bool)

(assert (= bs!1648233 (and d!2037050 d!2036426)))

(assert (=> bs!1648233 (= lambda!359570 lambda!359456)))

(declare-fun bs!1648234 () Bool)

(assert (= bs!1648234 (and d!2037050 d!2036926)))

(assert (=> bs!1648234 (= lambda!359570 lambda!359556)))

(declare-fun bs!1648235 () Bool)

(assert (= bs!1648235 (and d!2037050 d!2036562)))

(assert (=> bs!1648235 (= lambda!359570 lambda!359513)))

(declare-fun bs!1648236 () Bool)

(assert (= bs!1648236 (and d!2037050 d!2036632)))

(assert (=> bs!1648236 (= lambda!359570 lambda!359532)))

(declare-fun bs!1648237 () Bool)

(assert (= bs!1648237 (and d!2037050 d!2036558)))

(assert (=> bs!1648237 (= lambda!359570 lambda!359507)))

(declare-fun bs!1648238 () Bool)

(assert (= bs!1648238 (and d!2037050 d!2036836)))

(assert (=> bs!1648238 (= lambda!359570 lambda!359552)))

(declare-fun bs!1648239 () Bool)

(assert (= bs!1648239 (and d!2037050 d!2036802)))

(assert (=> bs!1648239 (= lambda!359570 lambda!359545)))

(declare-fun bs!1648240 () Bool)

(assert (= bs!1648240 (and d!2037050 d!2036572)))

(assert (=> bs!1648240 (= lambda!359570 lambda!359520)))

(declare-fun bs!1648241 () Bool)

(assert (= bs!1648241 (and d!2037050 d!2036900)))

(assert (=> bs!1648241 (= lambda!359570 lambda!359553)))

(assert (=> d!2037050 (= (inv!84169 (h!71732 (t!379036 zl!343))) (forall!15551 (exprs!6253 (h!71732 (t!379036 zl!343))) lambda!359570))))

(declare-fun bs!1648242 () Bool)

(assert (= bs!1648242 d!2037050))

(declare-fun m!7280988 () Bool)

(assert (=> bs!1648242 m!7280988))

(assert (=> b!6491702 d!2037050))

(assert (=> d!2036532 d!2036886))

(assert (=> d!2036532 d!2036878))

(declare-fun d!2037052 () Bool)

(assert (=> d!2037052 (= (isEmpty!37477 (tail!12296 (_2!36651 lt!2389655))) ((_ is Nil!65282) (tail!12296 (_2!36651 lt!2389655))))))

(assert (=> b!6491317 d!2037052))

(assert (=> b!6491317 d!2036956))

(assert (=> b!6491309 d!2036572))

(declare-fun bs!1648243 () Bool)

(declare-fun d!2037054 () Bool)

(assert (= bs!1648243 (and d!2037054 d!2036540)))

(declare-fun lambda!359571 () Int)

(assert (=> bs!1648243 (= lambda!359571 lambda!359502)))

(declare-fun bs!1648244 () Bool)

(assert (= bs!1648244 (and d!2037054 d!2036928)))

(assert (=> bs!1648244 (= lambda!359571 lambda!359557)))

(declare-fun bs!1648245 () Bool)

(assert (= bs!1648245 (and d!2037054 d!2036902)))

(assert (=> bs!1648245 (= lambda!359571 lambda!359554)))

(declare-fun bs!1648246 () Bool)

(assert (= bs!1648246 (and d!2037054 b!6490629)))

(assert (=> bs!1648246 (= lambda!359571 lambda!359444)))

(declare-fun bs!1648247 () Bool)

(assert (= bs!1648247 (and d!2037054 d!2036426)))

(assert (=> bs!1648247 (= lambda!359571 lambda!359456)))

(declare-fun bs!1648248 () Bool)

(assert (= bs!1648248 (and d!2037054 d!2036926)))

(assert (=> bs!1648248 (= lambda!359571 lambda!359556)))

(declare-fun bs!1648249 () Bool)

(assert (= bs!1648249 (and d!2037054 d!2036632)))

(assert (=> bs!1648249 (= lambda!359571 lambda!359532)))

(declare-fun bs!1648250 () Bool)

(assert (= bs!1648250 (and d!2037054 d!2036558)))

(assert (=> bs!1648250 (= lambda!359571 lambda!359507)))

(declare-fun bs!1648251 () Bool)

(assert (= bs!1648251 (and d!2037054 d!2036836)))

(assert (=> bs!1648251 (= lambda!359571 lambda!359552)))

(declare-fun bs!1648252 () Bool)

(assert (= bs!1648252 (and d!2037054 d!2036802)))

(assert (=> bs!1648252 (= lambda!359571 lambda!359545)))

(declare-fun bs!1648253 () Bool)

(assert (= bs!1648253 (and d!2037054 d!2036572)))

(assert (=> bs!1648253 (= lambda!359571 lambda!359520)))

(declare-fun bs!1648254 () Bool)

(assert (= bs!1648254 (and d!2037054 d!2036900)))

(assert (=> bs!1648254 (= lambda!359571 lambda!359553)))

(declare-fun bs!1648255 () Bool)

(assert (= bs!1648255 (and d!2037054 d!2037050)))

(assert (=> bs!1648255 (= lambda!359571 lambda!359570)))

(declare-fun bs!1648256 () Bool)

(assert (= bs!1648256 (and d!2037054 d!2036562)))

(assert (=> bs!1648256 (= lambda!359571 lambda!359513)))

(declare-fun lt!2389912 () List!65407)

(assert (=> d!2037054 (forall!15551 lt!2389912 lambda!359571)))

(declare-fun e!3934470 () List!65407)

(assert (=> d!2037054 (= lt!2389912 e!3934470)))

(declare-fun c!1189854 () Bool)

(assert (=> d!2037054 (= c!1189854 ((_ is Cons!65284) (t!379036 zl!343)))))

(assert (=> d!2037054 (= (unfocusZipperList!1790 (t!379036 zl!343)) lt!2389912)))

(declare-fun b!6492308 () Bool)

(assert (=> b!6492308 (= e!3934470 (Cons!65283 (generalisedConcat!1966 (exprs!6253 (h!71732 (t!379036 zl!343)))) (unfocusZipperList!1790 (t!379036 (t!379036 zl!343)))))))

(declare-fun b!6492309 () Bool)

(assert (=> b!6492309 (= e!3934470 Nil!65283)))

(assert (= (and d!2037054 c!1189854) b!6492308))

(assert (= (and d!2037054 (not c!1189854)) b!6492309))

(declare-fun m!7280990 () Bool)

(assert (=> d!2037054 m!7280990))

(declare-fun m!7280992 () Bool)

(assert (=> b!6492308 m!7280992))

(declare-fun m!7280994 () Bool)

(assert (=> b!6492308 m!7280994))

(assert (=> b!6491309 d!2037054))

(declare-fun d!2037056 () Bool)

(declare-fun c!1189855 () Bool)

(assert (=> d!2037056 (= c!1189855 (isEmpty!37477 (tail!12296 lt!2389663)))))

(declare-fun e!3934471 () Bool)

(assert (=> d!2037056 (= (matchZipper!2381 (derivationStepZipper!2335 lt!2389660 (head!13211 lt!2389663)) (tail!12296 lt!2389663)) e!3934471)))

(declare-fun b!6492310 () Bool)

(assert (=> b!6492310 (= e!3934471 (nullableZipper!2125 (derivationStepZipper!2335 lt!2389660 (head!13211 lt!2389663))))))

(declare-fun b!6492311 () Bool)

(assert (=> b!6492311 (= e!3934471 (matchZipper!2381 (derivationStepZipper!2335 (derivationStepZipper!2335 lt!2389660 (head!13211 lt!2389663)) (head!13211 (tail!12296 lt!2389663))) (tail!12296 (tail!12296 lt!2389663))))))

(assert (= (and d!2037056 c!1189855) b!6492310))

(assert (= (and d!2037056 (not c!1189855)) b!6492311))

(assert (=> d!2037056 m!7280042))

(assert (=> d!2037056 m!7280092))

(assert (=> b!6492310 m!7280088))

(declare-fun m!7280996 () Bool)

(assert (=> b!6492310 m!7280996))

(assert (=> b!6492311 m!7280042))

(assert (=> b!6492311 m!7280712))

(assert (=> b!6492311 m!7280088))

(assert (=> b!6492311 m!7280712))

(declare-fun m!7280998 () Bool)

(assert (=> b!6492311 m!7280998))

(assert (=> b!6492311 m!7280042))

(assert (=> b!6492311 m!7280706))

(assert (=> b!6492311 m!7280998))

(assert (=> b!6492311 m!7280706))

(declare-fun m!7281000 () Bool)

(assert (=> b!6492311 m!7281000))

(assert (=> b!6491501 d!2037056))

(declare-fun bs!1648257 () Bool)

(declare-fun d!2037058 () Bool)

(assert (= bs!1648257 (and d!2037058 d!2036946)))

(declare-fun lambda!359572 () Int)

(assert (=> bs!1648257 (= lambda!359572 lambda!359560)))

(declare-fun bs!1648258 () Bool)

(assert (= bs!1648258 (and d!2037058 d!2036402)))

(assert (=> bs!1648258 (= (= (head!13211 lt!2389663) (h!71730 s!2326)) (= lambda!359572 lambda!359447))))

(declare-fun bs!1648259 () Bool)

(assert (= bs!1648259 (and d!2037058 d!2036822)))

(assert (=> bs!1648259 (= (= (head!13211 lt!2389663) (head!13211 (t!379034 s!2326))) (= lambda!359572 lambda!359549))))

(declare-fun bs!1648260 () Bool)

(assert (= bs!1648260 (and d!2037058 d!2036998)))

(assert (=> bs!1648260 (= (= (head!13211 lt!2389663) (head!13211 (t!379034 s!2326))) (= lambda!359572 lambda!359564))))

(declare-fun bs!1648261 () Bool)

(assert (= bs!1648261 (and d!2037058 b!6490636)))

(assert (=> bs!1648261 (= (= (head!13211 lt!2389663) (h!71730 s!2326)) (= lambda!359572 lambda!359438))))

(declare-fun bs!1648262 () Bool)

(assert (= bs!1648262 (and d!2037058 d!2036982)))

(assert (=> bs!1648262 (= (= (head!13211 lt!2389663) (head!13211 s!2326)) (= lambda!359572 lambda!359563))))

(assert (=> d!2037058 true))

(assert (=> d!2037058 (= (derivationStepZipper!2335 lt!2389660 (head!13211 lt!2389663)) (flatMap!1874 lt!2389660 lambda!359572))))

(declare-fun bs!1648263 () Bool)

(assert (= bs!1648263 d!2037058))

(declare-fun m!7281002 () Bool)

(assert (=> bs!1648263 m!7281002))

(assert (=> b!6491501 d!2037058))

(assert (=> b!6491501 d!2036814))

(assert (=> b!6491501 d!2036918))

(assert (=> d!2036508 d!2036896))

(declare-fun b!6492312 () Bool)

(declare-fun res!2666375 () Bool)

(declare-fun e!3934472 () Bool)

(assert (=> b!6492312 (=> res!2666375 e!3934472)))

(declare-fun e!3934476 () Bool)

(assert (=> b!6492312 (= res!2666375 e!3934476)))

(declare-fun res!2666372 () Bool)

(assert (=> b!6492312 (=> (not res!2666372) (not e!3934476))))

(declare-fun lt!2389913 () Bool)

(assert (=> b!6492312 (= res!2666372 lt!2389913)))

(declare-fun b!6492313 () Bool)

(declare-fun res!2666373 () Bool)

(assert (=> b!6492313 (=> (not res!2666373) (not e!3934476))))

(assert (=> b!6492313 (= res!2666373 (isEmpty!37477 (tail!12296 Nil!65282)))))

(declare-fun b!6492315 () Bool)

(declare-fun e!3934474 () Bool)

(assert (=> b!6492315 (= e!3934472 e!3934474)))

(declare-fun res!2666376 () Bool)

(assert (=> b!6492315 (=> (not res!2666376) (not e!3934474))))

(assert (=> b!6492315 (= res!2666376 (not lt!2389913))))

(declare-fun bm!562115 () Bool)

(declare-fun call!562120 () Bool)

(assert (=> bm!562115 (= call!562120 (isEmpty!37477 Nil!65282))))

(declare-fun b!6492316 () Bool)

(declare-fun e!3934475 () Bool)

(assert (=> b!6492316 (= e!3934475 (not (= (head!13211 Nil!65282) (c!1189393 lt!2389631))))))

(declare-fun b!6492317 () Bool)

(declare-fun e!3934478 () Bool)

(assert (=> b!6492317 (= e!3934478 (matchR!8552 (derivativeStep!5064 lt!2389631 (head!13211 Nil!65282)) (tail!12296 Nil!65282)))))

(declare-fun b!6492318 () Bool)

(declare-fun res!2666377 () Bool)

(assert (=> b!6492318 (=> res!2666377 e!3934475)))

(assert (=> b!6492318 (= res!2666377 (not (isEmpty!37477 (tail!12296 Nil!65282))))))

(declare-fun b!6492319 () Bool)

(declare-fun res!2666374 () Bool)

(assert (=> b!6492319 (=> res!2666374 e!3934472)))

(assert (=> b!6492319 (= res!2666374 (not ((_ is ElementMatch!16369) lt!2389631)))))

(declare-fun e!3934473 () Bool)

(assert (=> b!6492319 (= e!3934473 e!3934472)))

(declare-fun b!6492320 () Bool)

(declare-fun e!3934477 () Bool)

(assert (=> b!6492320 (= e!3934477 (= lt!2389913 call!562120))))

(declare-fun b!6492321 () Bool)

(assert (=> b!6492321 (= e!3934474 e!3934475)))

(declare-fun res!2666371 () Bool)

(assert (=> b!6492321 (=> res!2666371 e!3934475)))

(assert (=> b!6492321 (= res!2666371 call!562120)))

(declare-fun b!6492322 () Bool)

(assert (=> b!6492322 (= e!3934478 (nullable!6362 lt!2389631))))

(declare-fun b!6492323 () Bool)

(assert (=> b!6492323 (= e!3934476 (= (head!13211 Nil!65282) (c!1189393 lt!2389631)))))

(declare-fun d!2037060 () Bool)

(assert (=> d!2037060 e!3934477))

(declare-fun c!1189858 () Bool)

(assert (=> d!2037060 (= c!1189858 ((_ is EmptyExpr!16369) lt!2389631))))

(assert (=> d!2037060 (= lt!2389913 e!3934478)))

(declare-fun c!1189857 () Bool)

(assert (=> d!2037060 (= c!1189857 (isEmpty!37477 Nil!65282))))

(assert (=> d!2037060 (validRegex!8105 lt!2389631)))

(assert (=> d!2037060 (= (matchR!8552 lt!2389631 Nil!65282) lt!2389913)))

(declare-fun b!6492314 () Bool)

(assert (=> b!6492314 (= e!3934477 e!3934473)))

(declare-fun c!1189856 () Bool)

(assert (=> b!6492314 (= c!1189856 ((_ is EmptyLang!16369) lt!2389631))))

(declare-fun b!6492324 () Bool)

(assert (=> b!6492324 (= e!3934473 (not lt!2389913))))

(declare-fun b!6492325 () Bool)

(declare-fun res!2666370 () Bool)

(assert (=> b!6492325 (=> (not res!2666370) (not e!3934476))))

(assert (=> b!6492325 (= res!2666370 (not call!562120))))

(assert (= (and d!2037060 c!1189857) b!6492322))

(assert (= (and d!2037060 (not c!1189857)) b!6492317))

(assert (= (and d!2037060 c!1189858) b!6492320))

(assert (= (and d!2037060 (not c!1189858)) b!6492314))

(assert (= (and b!6492314 c!1189856) b!6492324))

(assert (= (and b!6492314 (not c!1189856)) b!6492319))

(assert (= (and b!6492319 (not res!2666374)) b!6492312))

(assert (= (and b!6492312 res!2666372) b!6492325))

(assert (= (and b!6492325 res!2666370) b!6492313))

(assert (= (and b!6492313 res!2666373) b!6492323))

(assert (= (and b!6492312 (not res!2666375)) b!6492315))

(assert (= (and b!6492315 res!2666376) b!6492321))

(assert (= (and b!6492321 (not res!2666371)) b!6492318))

(assert (= (and b!6492318 (not res!2666377)) b!6492316))

(assert (= (or b!6492320 b!6492321 b!6492325) bm!562115))

(declare-fun m!7281004 () Bool)

(assert (=> b!6492313 m!7281004))

(assert (=> b!6492313 m!7281004))

(declare-fun m!7281006 () Bool)

(assert (=> b!6492313 m!7281006))

(declare-fun m!7281008 () Bool)

(assert (=> d!2037060 m!7281008))

(assert (=> d!2037060 m!7279404))

(assert (=> b!6492318 m!7281004))

(assert (=> b!6492318 m!7281004))

(assert (=> b!6492318 m!7281006))

(declare-fun m!7281010 () Bool)

(assert (=> b!6492316 m!7281010))

(assert (=> b!6492322 m!7279408))

(assert (=> bm!562115 m!7281008))

(assert (=> b!6492323 m!7281010))

(assert (=> b!6492317 m!7281010))

(assert (=> b!6492317 m!7281010))

(declare-fun m!7281012 () Bool)

(assert (=> b!6492317 m!7281012))

(assert (=> b!6492317 m!7281004))

(assert (=> b!6492317 m!7281012))

(assert (=> b!6492317 m!7281004))

(declare-fun m!7281014 () Bool)

(assert (=> b!6492317 m!7281014))

(assert (=> d!2036508 d!2037060))

(assert (=> d!2036508 d!2037038))

(assert (=> bm!561977 d!2036886))

(declare-fun d!2037062 () Bool)

(declare-fun c!1189859 () Bool)

(assert (=> d!2037062 (= c!1189859 (isEmpty!37477 (tail!12296 (_1!36651 lt!2389638))))))

(declare-fun e!3934479 () Bool)

(assert (=> d!2037062 (= (matchZipper!2381 (derivationStepZipper!2335 lt!2389651 (head!13211 (_1!36651 lt!2389638))) (tail!12296 (_1!36651 lt!2389638))) e!3934479)))

(declare-fun b!6492326 () Bool)

(assert (=> b!6492326 (= e!3934479 (nullableZipper!2125 (derivationStepZipper!2335 lt!2389651 (head!13211 (_1!36651 lt!2389638)))))))

(declare-fun b!6492327 () Bool)

(assert (=> b!6492327 (= e!3934479 (matchZipper!2381 (derivationStepZipper!2335 (derivationStepZipper!2335 lt!2389651 (head!13211 (_1!36651 lt!2389638))) (head!13211 (tail!12296 (_1!36651 lt!2389638)))) (tail!12296 (tail!12296 (_1!36651 lt!2389638)))))))

(assert (= (and d!2037062 c!1189859) b!6492326))

(assert (= (and d!2037062 (not c!1189859)) b!6492327))

(assert (=> d!2037062 m!7279598))

(assert (=> d!2037062 m!7279600))

(assert (=> b!6492326 m!7280170))

(declare-fun m!7281016 () Bool)

(assert (=> b!6492326 m!7281016))

(assert (=> b!6492327 m!7279598))

(declare-fun m!7281018 () Bool)

(assert (=> b!6492327 m!7281018))

(assert (=> b!6492327 m!7280170))

(assert (=> b!6492327 m!7281018))

(declare-fun m!7281020 () Bool)

(assert (=> b!6492327 m!7281020))

(assert (=> b!6492327 m!7279598))

(declare-fun m!7281022 () Bool)

(assert (=> b!6492327 m!7281022))

(assert (=> b!6492327 m!7281020))

(assert (=> b!6492327 m!7281022))

(declare-fun m!7281024 () Bool)

(assert (=> b!6492327 m!7281024))

(assert (=> b!6491550 d!2037062))

(declare-fun bs!1648264 () Bool)

(declare-fun d!2037064 () Bool)

(assert (= bs!1648264 (and d!2037064 d!2036946)))

(declare-fun lambda!359573 () Int)

(assert (=> bs!1648264 (= (= (head!13211 (_1!36651 lt!2389638)) (head!13211 lt!2389663)) (= lambda!359573 lambda!359560))))

(declare-fun bs!1648265 () Bool)

(assert (= bs!1648265 (and d!2037064 d!2036402)))

(assert (=> bs!1648265 (= (= (head!13211 (_1!36651 lt!2389638)) (h!71730 s!2326)) (= lambda!359573 lambda!359447))))

(declare-fun bs!1648266 () Bool)

(assert (= bs!1648266 (and d!2037064 d!2036822)))

(assert (=> bs!1648266 (= (= (head!13211 (_1!36651 lt!2389638)) (head!13211 (t!379034 s!2326))) (= lambda!359573 lambda!359549))))

(declare-fun bs!1648267 () Bool)

(assert (= bs!1648267 (and d!2037064 d!2036998)))

(assert (=> bs!1648267 (= (= (head!13211 (_1!36651 lt!2389638)) (head!13211 (t!379034 s!2326))) (= lambda!359573 lambda!359564))))

(declare-fun bs!1648268 () Bool)

(assert (= bs!1648268 (and d!2037064 d!2037058)))

(assert (=> bs!1648268 (= (= (head!13211 (_1!36651 lt!2389638)) (head!13211 lt!2389663)) (= lambda!359573 lambda!359572))))

(declare-fun bs!1648269 () Bool)

(assert (= bs!1648269 (and d!2037064 b!6490636)))

(assert (=> bs!1648269 (= (= (head!13211 (_1!36651 lt!2389638)) (h!71730 s!2326)) (= lambda!359573 lambda!359438))))

(declare-fun bs!1648270 () Bool)

(assert (= bs!1648270 (and d!2037064 d!2036982)))

(assert (=> bs!1648270 (= (= (head!13211 (_1!36651 lt!2389638)) (head!13211 s!2326)) (= lambda!359573 lambda!359563))))

(assert (=> d!2037064 true))

(assert (=> d!2037064 (= (derivationStepZipper!2335 lt!2389651 (head!13211 (_1!36651 lt!2389638))) (flatMap!1874 lt!2389651 lambda!359573))))

(declare-fun bs!1648271 () Bool)

(assert (= bs!1648271 d!2037064))

(declare-fun m!7281026 () Bool)

(assert (=> bs!1648271 m!7281026))

(assert (=> b!6491550 d!2037064))

(declare-fun d!2037066 () Bool)

(assert (=> d!2037066 (= (head!13211 (_1!36651 lt!2389638)) (h!71730 (_1!36651 lt!2389638)))))

(assert (=> b!6491550 d!2037066))

(assert (=> b!6491550 d!2036942))

(declare-fun d!2037068 () Bool)

(assert (=> d!2037068 (= (isDefined!12963 lt!2389777) (not (isEmpty!37479 lt!2389777)))))

(declare-fun bs!1648272 () Bool)

(assert (= bs!1648272 d!2037068))

(declare-fun m!7281028 () Bool)

(assert (=> bs!1648272 m!7281028))

(assert (=> b!6491398 d!2037068))

(assert (=> bm!561975 d!2036886))

(declare-fun e!3934481 () Bool)

(declare-fun b!6492331 () Bool)

(declare-fun lt!2389914 () List!65406)

(assert (=> b!6492331 (= e!3934481 (or (not (= (_2!36651 lt!2389655) Nil!65282)) (= lt!2389914 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638)))))))

(declare-fun b!6492330 () Bool)

(declare-fun res!2666379 () Bool)

(assert (=> b!6492330 (=> (not res!2666379) (not e!3934481))))

(assert (=> b!6492330 (= res!2666379 (= (size!40427 lt!2389914) (+ (size!40427 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638))) (size!40427 (_2!36651 lt!2389655)))))))

(declare-fun d!2037070 () Bool)

(assert (=> d!2037070 e!3934481))

(declare-fun res!2666378 () Bool)

(assert (=> d!2037070 (=> (not res!2666378) (not e!3934481))))

(assert (=> d!2037070 (= res!2666378 (= (content!12442 lt!2389914) ((_ map or) (content!12442 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638))) (content!12442 (_2!36651 lt!2389655)))))))

(declare-fun e!3934480 () List!65406)

(assert (=> d!2037070 (= lt!2389914 e!3934480)))

(declare-fun c!1189860 () Bool)

(assert (=> d!2037070 (= c!1189860 ((_ is Nil!65282) (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638))))))

(assert (=> d!2037070 (= (++!14448 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638)) (_2!36651 lt!2389655)) lt!2389914)))

(declare-fun b!6492329 () Bool)

(assert (=> b!6492329 (= e!3934480 (Cons!65282 (h!71730 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638))) (++!14448 (t!379034 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638))) (_2!36651 lt!2389655))))))

(declare-fun b!6492328 () Bool)

(assert (=> b!6492328 (= e!3934480 (_2!36651 lt!2389655))))

(assert (= (and d!2037070 c!1189860) b!6492328))

(assert (= (and d!2037070 (not c!1189860)) b!6492329))

(assert (= (and d!2037070 res!2666378) b!6492330))

(assert (= (and b!6492330 res!2666379) b!6492331))

(declare-fun m!7281030 () Bool)

(assert (=> b!6492330 m!7281030))

(assert (=> b!6492330 m!7279200))

(declare-fun m!7281032 () Bool)

(assert (=> b!6492330 m!7281032))

(assert (=> b!6492330 m!7279642))

(declare-fun m!7281034 () Bool)

(assert (=> d!2037070 m!7281034))

(assert (=> d!2037070 m!7279200))

(declare-fun m!7281036 () Bool)

(assert (=> d!2037070 m!7281036))

(assert (=> d!2037070 m!7279648))

(declare-fun m!7281038 () Bool)

(assert (=> b!6492329 m!7281038))

(assert (=> d!2036686 d!2037070))

(declare-fun lt!2389915 () List!65406)

(declare-fun b!6492335 () Bool)

(declare-fun e!3934483 () Bool)

(assert (=> b!6492335 (= e!3934483 (or (not (= (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655)) Nil!65282)) (= lt!2389915 (_1!36651 lt!2389638))))))

(declare-fun b!6492334 () Bool)

(declare-fun res!2666381 () Bool)

(assert (=> b!6492334 (=> (not res!2666381) (not e!3934483))))

(assert (=> b!6492334 (= res!2666381 (= (size!40427 lt!2389915) (+ (size!40427 (_1!36651 lt!2389638)) (size!40427 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655))))))))

(declare-fun d!2037072 () Bool)

(assert (=> d!2037072 e!3934483))

(declare-fun res!2666380 () Bool)

(assert (=> d!2037072 (=> (not res!2666380) (not e!3934483))))

(assert (=> d!2037072 (= res!2666380 (= (content!12442 lt!2389915) ((_ map or) (content!12442 (_1!36651 lt!2389638)) (content!12442 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655))))))))

(declare-fun e!3934482 () List!65406)

(assert (=> d!2037072 (= lt!2389915 e!3934482)))

(declare-fun c!1189861 () Bool)

(assert (=> d!2037072 (= c!1189861 ((_ is Nil!65282) (_1!36651 lt!2389638)))))

(assert (=> d!2037072 (= (++!14448 (_1!36651 lt!2389638) (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655))) lt!2389915)))

(declare-fun b!6492333 () Bool)

(assert (=> b!6492333 (= e!3934482 (Cons!65282 (h!71730 (_1!36651 lt!2389638)) (++!14448 (t!379034 (_1!36651 lt!2389638)) (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655)))))))

(declare-fun b!6492332 () Bool)

(assert (=> b!6492332 (= e!3934482 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655)))))

(assert (= (and d!2037072 c!1189861) b!6492332))

(assert (= (and d!2037072 (not c!1189861)) b!6492333))

(assert (= (and d!2037072 res!2666380) b!6492334))

(assert (= (and b!6492334 res!2666381) b!6492335))

(declare-fun m!7281040 () Bool)

(assert (=> b!6492334 m!7281040))

(assert (=> b!6492334 m!7279422))

(assert (=> b!6492334 m!7279222))

(declare-fun m!7281042 () Bool)

(assert (=> b!6492334 m!7281042))

(declare-fun m!7281044 () Bool)

(assert (=> d!2037072 m!7281044))

(assert (=> d!2037072 m!7279428))

(assert (=> d!2037072 m!7279222))

(declare-fun m!7281046 () Bool)

(assert (=> d!2037072 m!7281046))

(assert (=> b!6492333 m!7279222))

(declare-fun m!7281048 () Bool)

(assert (=> b!6492333 m!7281048))

(assert (=> d!2036686 d!2037072))

(declare-fun d!2037074 () Bool)

(assert (=> d!2037074 (= (++!14448 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638)) (_2!36651 lt!2389655)) (++!14448 (_1!36651 lt!2389638) (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655))))))

(assert (=> d!2037074 true))

(declare-fun _$52!2434 () Unit!158807)

(assert (=> d!2037074 (= (choose!48197 (_1!36651 lt!2389638) (_2!36651 lt!2389638) (_2!36651 lt!2389655)) _$52!2434)))

(declare-fun bs!1648273 () Bool)

(assert (= bs!1648273 d!2037074))

(assert (=> bs!1648273 m!7279200))

(assert (=> bs!1648273 m!7279200))

(assert (=> bs!1648273 m!7280232))

(assert (=> bs!1648273 m!7279222))

(assert (=> bs!1648273 m!7279222))

(assert (=> bs!1648273 m!7280234))

(assert (=> d!2036686 d!2037074))

(assert (=> d!2036686 d!2036454))

(assert (=> d!2036686 d!2036682))

(assert (=> d!2036448 d!2036570))

(assert (=> d!2036448 d!2037038))

(assert (=> d!2036628 d!2036876))

(declare-fun d!2037076 () Bool)

(declare-fun lt!2389916 () Int)

(assert (=> d!2037076 (>= lt!2389916 0)))

(declare-fun e!3934484 () Int)

(assert (=> d!2037076 (= lt!2389916 e!3934484)))

(declare-fun c!1189862 () Bool)

(assert (=> d!2037076 (= c!1189862 ((_ is Nil!65282) lt!2389840))))

(assert (=> d!2037076 (= (size!40427 lt!2389840) lt!2389916)))

(declare-fun b!6492336 () Bool)

(assert (=> b!6492336 (= e!3934484 0)))

(declare-fun b!6492337 () Bool)

(assert (=> b!6492337 (= e!3934484 (+ 1 (size!40427 (t!379034 lt!2389840))))))

(assert (= (and d!2037076 c!1189862) b!6492336))

(assert (= (and d!2037076 (not c!1189862)) b!6492337))

(declare-fun m!7281050 () Bool)

(assert (=> b!6492337 m!7281050))

(assert (=> b!6491586 d!2037076))

(declare-fun d!2037078 () Bool)

(declare-fun lt!2389917 () Int)

(assert (=> d!2037078 (>= lt!2389917 0)))

(declare-fun e!3934485 () Int)

(assert (=> d!2037078 (= lt!2389917 e!3934485)))

(declare-fun c!1189863 () Bool)

(assert (=> d!2037078 (= c!1189863 ((_ is Nil!65282) lt!2389620))))

(assert (=> d!2037078 (= (size!40427 lt!2389620) lt!2389917)))

(declare-fun b!6492338 () Bool)

(assert (=> b!6492338 (= e!3934485 0)))

(declare-fun b!6492339 () Bool)

(assert (=> b!6492339 (= e!3934485 (+ 1 (size!40427 (t!379034 lt!2389620))))))

(assert (= (and d!2037078 c!1189863) b!6492338))

(assert (= (and d!2037078 (not c!1189863)) b!6492339))

(declare-fun m!7281052 () Bool)

(assert (=> b!6492339 m!7281052))

(assert (=> b!6491586 d!2037078))

(assert (=> b!6491586 d!2037016))

(declare-fun bs!1648274 () Bool)

(declare-fun b!6492346 () Bool)

(assert (= bs!1648274 (and b!6492346 b!6490643)))

(declare-fun lambda!359574 () Int)

(assert (=> bs!1648274 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regTwo!33251 lt!2389659)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33251 lt!2389659) lt!2389631)) (= lambda!359574 lambda!359442))))

(declare-fun bs!1648275 () Bool)

(assert (= bs!1648275 (and b!6492346 d!2036598)))

(assert (=> bs!1648275 (not (= lambda!359574 lambda!359524))))

(declare-fun bs!1648276 () Bool)

(assert (= bs!1648276 (and b!6492346 d!2036464)))

(assert (=> bs!1648276 (not (= lambda!359574 lambda!359480))))

(assert (=> bs!1648274 (not (= lambda!359574 lambda!359443))))

(declare-fun bs!1648277 () Bool)

(assert (= bs!1648277 (and b!6492346 b!6492283)))

(assert (=> bs!1648277 (= (and (= (reg!16698 (regTwo!33251 lt!2389659)) (reg!16698 (regOne!33251 r!7292))) (= (regTwo!33251 lt!2389659) (regOne!33251 r!7292))) (= lambda!359574 lambda!359565))))

(declare-fun bs!1648278 () Bool)

(assert (= bs!1648278 (and b!6492346 d!2036472)))

(assert (=> bs!1648278 (not (= lambda!359574 lambda!359485))))

(declare-fun bs!1648279 () Bool)

(assert (= bs!1648279 (and b!6492346 b!6491888)))

(assert (=> bs!1648279 (not (= lambda!359574 lambda!359551))))

(declare-fun bs!1648280 () Bool)

(assert (= bs!1648280 (and b!6492346 b!6490750)))

(assert (=> bs!1648280 (not (= lambda!359574 lambda!359453))))

(declare-fun bs!1648281 () Bool)

(assert (= bs!1648281 (and b!6492346 b!6490649)))

(assert (=> bs!1648281 (not (= lambda!359574 lambda!359436))))

(declare-fun bs!1648282 () Bool)

(assert (= bs!1648282 (and b!6492346 b!6490618)))

(assert (=> bs!1648282 (not (= lambda!359574 lambda!359440))))

(declare-fun bs!1648283 () Bool)

(assert (= bs!1648283 (and b!6492346 b!6490748)))

(assert (=> bs!1648283 (= (and (= (reg!16698 (regTwo!33251 lt!2389659)) (reg!16698 r!7292)) (= (regTwo!33251 lt!2389659) r!7292)) (= lambda!359574 lambda!359452))))

(declare-fun bs!1648284 () Bool)

(assert (= bs!1648284 (and b!6492346 b!6492132)))

(assert (=> bs!1648284 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regTwo!33251 lt!2389659)) (reg!16698 (regTwo!33251 lt!2389631))) (= (regTwo!33251 lt!2389659) (regTwo!33251 lt!2389631))) (= lambda!359574 lambda!359558))))

(declare-fun bs!1648285 () Bool)

(assert (= bs!1648285 (and b!6492346 d!2036458)))

(assert (=> bs!1648285 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regTwo!33251 lt!2389659)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33251 lt!2389659) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359574 lambda!359470))))

(assert (=> bs!1648282 (not (= lambda!359574 lambda!359439))))

(declare-fun bs!1648286 () Bool)

(assert (= bs!1648286 (and b!6492346 d!2036606)))

(assert (=> bs!1648286 (not (= lambda!359574 lambda!359528))))

(assert (=> bs!1648274 (not (= lambda!359574 lambda!359441))))

(declare-fun bs!1648287 () Bool)

(assert (= bs!1648287 (and b!6492346 b!6492134)))

(assert (=> bs!1648287 (not (= lambda!359574 lambda!359559))))

(declare-fun bs!1648288 () Bool)

(assert (= bs!1648288 (and b!6492346 d!2036516)))

(assert (=> bs!1648288 (not (= lambda!359574 lambda!359498))))

(declare-fun bs!1648289 () Bool)

(assert (= bs!1648289 (and b!6492346 b!6491179)))

(assert (=> bs!1648289 (= (and (= (reg!16698 (regTwo!33251 lt!2389659)) (reg!16698 lt!2389659)) (= (regTwo!33251 lt!2389659) lt!2389659)) (= lambda!359574 lambda!359500))))

(declare-fun bs!1648290 () Bool)

(assert (= bs!1648290 (and b!6492346 b!6492285)))

(assert (=> bs!1648290 (not (= lambda!359574 lambda!359566))))

(declare-fun bs!1648291 () Bool)

(assert (= bs!1648291 (and b!6492346 b!6491886)))

(assert (=> bs!1648291 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regTwo!33251 lt!2389659)) (reg!16698 (regOne!33251 lt!2389631))) (= (regTwo!33251 lt!2389659) (regOne!33251 lt!2389631))) (= lambda!359574 lambda!359550))))

(assert (=> bs!1648285 (not (= lambda!359574 lambda!359469))))

(assert (=> bs!1648286 (not (= lambda!359574 lambda!359529))))

(assert (=> bs!1648288 (not (= lambda!359574 lambda!359497))))

(assert (=> bs!1648281 (not (= lambda!359574 lambda!359437))))

(declare-fun bs!1648292 () Bool)

(assert (= bs!1648292 (and b!6492346 b!6490932)))

(assert (=> bs!1648292 (not (= lambda!359574 lambda!359462))))

(assert (=> bs!1648276 (not (= lambda!359574 lambda!359477))))

(declare-fun bs!1648293 () Bool)

(assert (= bs!1648293 (and b!6492346 b!6490930)))

(assert (=> bs!1648293 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regTwo!33251 lt!2389659)) (reg!16698 lt!2389631)) (= (regTwo!33251 lt!2389659) lt!2389631)) (= lambda!359574 lambda!359459))))

(declare-fun bs!1648294 () Bool)

(assert (= bs!1648294 (and b!6492346 b!6491181)))

(assert (=> bs!1648294 (not (= lambda!359574 lambda!359501))))

(declare-fun bs!1648295 () Bool)

(assert (= bs!1648295 (and b!6492346 d!2036524)))

(assert (=> bs!1648295 (not (= lambda!359574 lambda!359499))))

(declare-fun bs!1648296 () Bool)

(assert (= bs!1648296 (and b!6492346 d!2037036)))

(assert (=> bs!1648296 (not (= lambda!359574 lambda!359569))))

(assert (=> b!6492346 true))

(assert (=> b!6492346 true))

(declare-fun bs!1648297 () Bool)

(declare-fun b!6492348 () Bool)

(assert (= bs!1648297 (and b!6492348 b!6490643)))

(declare-fun lambda!359575 () Int)

(assert (=> bs!1648297 (not (= lambda!359575 lambda!359442))))

(declare-fun bs!1648298 () Bool)

(assert (= bs!1648298 (and b!6492348 d!2036598)))

(assert (=> bs!1648298 (not (= lambda!359575 lambda!359524))))

(declare-fun bs!1648299 () Bool)

(assert (= bs!1648299 (and b!6492348 d!2036464)))

(assert (=> bs!1648299 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regTwo!33251 lt!2389659)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regTwo!33251 lt!2389659)) lt!2389631)) (= lambda!359575 lambda!359480))))

(assert (=> bs!1648297 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regTwo!33251 lt!2389659)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regTwo!33251 lt!2389659)) lt!2389631)) (= lambda!359575 lambda!359443))))

(declare-fun bs!1648300 () Bool)

(assert (= bs!1648300 (and b!6492348 b!6492283)))

(assert (=> bs!1648300 (not (= lambda!359575 lambda!359565))))

(declare-fun bs!1648301 () Bool)

(assert (= bs!1648301 (and b!6492348 d!2036472)))

(assert (=> bs!1648301 (not (= lambda!359575 lambda!359485))))

(declare-fun bs!1648302 () Bool)

(assert (= bs!1648302 (and b!6492348 b!6491888)))

(assert (=> bs!1648302 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regTwo!33251 lt!2389659)) (regOne!33250 (regOne!33251 lt!2389631))) (= (regTwo!33250 (regTwo!33251 lt!2389659)) (regTwo!33250 (regOne!33251 lt!2389631)))) (= lambda!359575 lambda!359551))))

(declare-fun bs!1648303 () Bool)

(assert (= bs!1648303 (and b!6492348 b!6490750)))

(assert (=> bs!1648303 (= (and (= (regOne!33250 (regTwo!33251 lt!2389659)) (regOne!33250 r!7292)) (= (regTwo!33250 (regTwo!33251 lt!2389659)) (regTwo!33250 r!7292))) (= lambda!359575 lambda!359453))))

(declare-fun bs!1648304 () Bool)

(assert (= bs!1648304 (and b!6492348 b!6490649)))

(assert (=> bs!1648304 (not (= lambda!359575 lambda!359436))))

(declare-fun bs!1648305 () Bool)

(assert (= bs!1648305 (and b!6492348 b!6490618)))

(assert (=> bs!1648305 (= (and (= (regOne!33250 (regTwo!33251 lt!2389659)) lt!2389631) (= (regTwo!33250 (regTwo!33251 lt!2389659)) (regTwo!33250 r!7292))) (= lambda!359575 lambda!359440))))

(declare-fun bs!1648306 () Bool)

(assert (= bs!1648306 (and b!6492348 b!6490748)))

(assert (=> bs!1648306 (not (= lambda!359575 lambda!359452))))

(declare-fun bs!1648307 () Bool)

(assert (= bs!1648307 (and b!6492348 b!6492132)))

(assert (=> bs!1648307 (not (= lambda!359575 lambda!359558))))

(declare-fun bs!1648308 () Bool)

(assert (= bs!1648308 (and b!6492348 d!2036458)))

(assert (=> bs!1648308 (not (= lambda!359575 lambda!359470))))

(assert (=> bs!1648305 (not (= lambda!359575 lambda!359439))))

(declare-fun bs!1648309 () Bool)

(assert (= bs!1648309 (and b!6492348 d!2036606)))

(assert (=> bs!1648309 (not (= lambda!359575 lambda!359528))))

(assert (=> bs!1648297 (not (= lambda!359575 lambda!359441))))

(declare-fun bs!1648310 () Bool)

(assert (= bs!1648310 (and b!6492348 b!6492134)))

(assert (=> bs!1648310 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regTwo!33251 lt!2389659)) (regOne!33250 (regTwo!33251 lt!2389631))) (= (regTwo!33250 (regTwo!33251 lt!2389659)) (regTwo!33250 (regTwo!33251 lt!2389631)))) (= lambda!359575 lambda!359559))))

(declare-fun bs!1648311 () Bool)

(assert (= bs!1648311 (and b!6492348 d!2036516)))

(assert (=> bs!1648311 (= (and (= (regOne!33250 (regTwo!33251 lt!2389659)) lt!2389631) (= (regTwo!33250 (regTwo!33251 lt!2389659)) (regTwo!33250 r!7292))) (= lambda!359575 lambda!359498))))

(declare-fun bs!1648312 () Bool)

(assert (= bs!1648312 (and b!6492348 b!6491179)))

(assert (=> bs!1648312 (not (= lambda!359575 lambda!359500))))

(declare-fun bs!1648313 () Bool)

(assert (= bs!1648313 (and b!6492348 b!6492285)))

(assert (=> bs!1648313 (= (and (= (regOne!33250 (regTwo!33251 lt!2389659)) (regOne!33250 (regOne!33251 r!7292))) (= (regTwo!33250 (regTwo!33251 lt!2389659)) (regTwo!33250 (regOne!33251 r!7292)))) (= lambda!359575 lambda!359566))))

(declare-fun bs!1648314 () Bool)

(assert (= bs!1648314 (and b!6492348 b!6491886)))

(assert (=> bs!1648314 (not (= lambda!359575 lambda!359550))))

(assert (=> bs!1648308 (not (= lambda!359575 lambda!359469))))

(declare-fun bs!1648315 () Bool)

(assert (= bs!1648315 (and b!6492348 b!6492346)))

(assert (=> bs!1648315 (not (= lambda!359575 lambda!359574))))

(assert (=> bs!1648309 (= (and (= (regOne!33250 (regTwo!33251 lt!2389659)) (regOne!33250 r!7292)) (= (regTwo!33250 (regTwo!33251 lt!2389659)) (regTwo!33250 r!7292))) (= lambda!359575 lambda!359529))))

(assert (=> bs!1648311 (not (= lambda!359575 lambda!359497))))

(assert (=> bs!1648304 (= (and (= (regOne!33250 (regTwo!33251 lt!2389659)) (regOne!33250 r!7292)) (= (regTwo!33250 (regTwo!33251 lt!2389659)) (regTwo!33250 r!7292))) (= lambda!359575 lambda!359437))))

(declare-fun bs!1648316 () Bool)

(assert (= bs!1648316 (and b!6492348 b!6490932)))

(assert (=> bs!1648316 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regTwo!33251 lt!2389659)) (regOne!33250 lt!2389631)) (= (regTwo!33250 (regTwo!33251 lt!2389659)) (regTwo!33250 lt!2389631))) (= lambda!359575 lambda!359462))))

(assert (=> bs!1648299 (not (= lambda!359575 lambda!359477))))

(declare-fun bs!1648317 () Bool)

(assert (= bs!1648317 (and b!6492348 b!6490930)))

(assert (=> bs!1648317 (not (= lambda!359575 lambda!359459))))

(declare-fun bs!1648318 () Bool)

(assert (= bs!1648318 (and b!6492348 b!6491181)))

(assert (=> bs!1648318 (= (and (= (regOne!33250 (regTwo!33251 lt!2389659)) (regOne!33250 lt!2389659)) (= (regTwo!33250 (regTwo!33251 lt!2389659)) (regTwo!33250 lt!2389659))) (= lambda!359575 lambda!359501))))

(declare-fun bs!1648319 () Bool)

(assert (= bs!1648319 (and b!6492348 d!2036524)))

(assert (=> bs!1648319 (not (= lambda!359575 lambda!359499))))

(declare-fun bs!1648320 () Bool)

(assert (= bs!1648320 (and b!6492348 d!2037036)))

(assert (=> bs!1648320 (not (= lambda!359575 lambda!359569))))

(assert (=> b!6492348 true))

(assert (=> b!6492348 true))

(declare-fun b!6492340 () Bool)

(declare-fun e!3934491 () Bool)

(declare-fun e!3934492 () Bool)

(assert (=> b!6492340 (= e!3934491 e!3934492)))

(declare-fun res!2666384 () Bool)

(assert (=> b!6492340 (= res!2666384 (not ((_ is EmptyLang!16369) (regTwo!33251 lt!2389659))))))

(assert (=> b!6492340 (=> (not res!2666384) (not e!3934492))))

(declare-fun bm!562116 () Bool)

(declare-fun call!562121 () Bool)

(assert (=> bm!562116 (= call!562121 (isEmpty!37477 s!2326))))

(declare-fun b!6492341 () Bool)

(declare-fun e!3934487 () Bool)

(declare-fun e!3934486 () Bool)

(assert (=> b!6492341 (= e!3934487 e!3934486)))

(declare-fun res!2666383 () Bool)

(assert (=> b!6492341 (= res!2666383 (matchRSpec!3470 (regOne!33251 (regTwo!33251 lt!2389659)) s!2326))))

(assert (=> b!6492341 (=> res!2666383 e!3934486)))

(declare-fun b!6492342 () Bool)

(assert (=> b!6492342 (= e!3934486 (matchRSpec!3470 (regTwo!33251 (regTwo!33251 lt!2389659)) s!2326))))

(declare-fun b!6492343 () Bool)

(declare-fun res!2666382 () Bool)

(declare-fun e!3934489 () Bool)

(assert (=> b!6492343 (=> res!2666382 e!3934489)))

(assert (=> b!6492343 (= res!2666382 call!562121)))

(declare-fun e!3934490 () Bool)

(assert (=> b!6492343 (= e!3934490 e!3934489)))

(declare-fun d!2037080 () Bool)

(declare-fun c!1189864 () Bool)

(assert (=> d!2037080 (= c!1189864 ((_ is EmptyExpr!16369) (regTwo!33251 lt!2389659)))))

(assert (=> d!2037080 (= (matchRSpec!3470 (regTwo!33251 lt!2389659) s!2326) e!3934491)))

(declare-fun b!6492344 () Bool)

(declare-fun e!3934488 () Bool)

(assert (=> b!6492344 (= e!3934488 (= s!2326 (Cons!65282 (c!1189393 (regTwo!33251 lt!2389659)) Nil!65282)))))

(declare-fun b!6492345 () Bool)

(assert (=> b!6492345 (= e!3934491 call!562121)))

(declare-fun call!562122 () Bool)

(assert (=> b!6492346 (= e!3934489 call!562122)))

(declare-fun b!6492347 () Bool)

(assert (=> b!6492347 (= e!3934487 e!3934490)))

(declare-fun c!1189865 () Bool)

(assert (=> b!6492347 (= c!1189865 ((_ is Star!16369) (regTwo!33251 lt!2389659)))))

(assert (=> b!6492348 (= e!3934490 call!562122)))

(declare-fun bm!562117 () Bool)

(assert (=> bm!562117 (= call!562122 (Exists!3439 (ite c!1189865 lambda!359574 lambda!359575)))))

(declare-fun b!6492349 () Bool)

(declare-fun c!1189866 () Bool)

(assert (=> b!6492349 (= c!1189866 ((_ is Union!16369) (regTwo!33251 lt!2389659)))))

(assert (=> b!6492349 (= e!3934488 e!3934487)))

(declare-fun b!6492350 () Bool)

(declare-fun c!1189867 () Bool)

(assert (=> b!6492350 (= c!1189867 ((_ is ElementMatch!16369) (regTwo!33251 lt!2389659)))))

(assert (=> b!6492350 (= e!3934492 e!3934488)))

(assert (= (and d!2037080 c!1189864) b!6492345))

(assert (= (and d!2037080 (not c!1189864)) b!6492340))

(assert (= (and b!6492340 res!2666384) b!6492350))

(assert (= (and b!6492350 c!1189867) b!6492344))

(assert (= (and b!6492350 (not c!1189867)) b!6492349))

(assert (= (and b!6492349 c!1189866) b!6492341))

(assert (= (and b!6492349 (not c!1189866)) b!6492347))

(assert (= (and b!6492341 (not res!2666383)) b!6492342))

(assert (= (and b!6492347 c!1189865) b!6492343))

(assert (= (and b!6492347 (not c!1189865)) b!6492348))

(assert (= (and b!6492343 (not res!2666382)) b!6492346))

(assert (= (or b!6492346 b!6492348) bm!562117))

(assert (= (or b!6492345 b!6492343) bm!562116))

(assert (=> bm!562116 m!7279298))

(declare-fun m!7281054 () Bool)

(assert (=> b!6492341 m!7281054))

(declare-fun m!7281056 () Bool)

(assert (=> b!6492342 m!7281056))

(declare-fun m!7281058 () Bool)

(assert (=> bm!562117 m!7281058))

(assert (=> b!6491175 d!2037080))

(declare-fun d!2037082 () Bool)

(assert (=> d!2037082 (= (isEmpty!37477 lt!2389641) ((_ is Nil!65282) lt!2389641))))

(assert (=> d!2036656 d!2037082))

(declare-fun d!2037084 () Bool)

(assert (=> d!2037084 (= (head!13214 (unfocusZipperList!1790 zl!343)) (h!71731 (unfocusZipperList!1790 zl!343)))))

(assert (=> b!6491283 d!2037084))

(declare-fun bs!1648321 () Bool)

(declare-fun b!6492357 () Bool)

(assert (= bs!1648321 (and b!6492357 b!6490643)))

(declare-fun lambda!359576 () Int)

(assert (=> bs!1648321 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regTwo!33251 r!7292)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33251 r!7292) lt!2389631)) (= lambda!359576 lambda!359442))))

(declare-fun bs!1648322 () Bool)

(assert (= bs!1648322 (and b!6492357 d!2036598)))

(assert (=> bs!1648322 (not (= lambda!359576 lambda!359524))))

(declare-fun bs!1648323 () Bool)

(assert (= bs!1648323 (and b!6492357 d!2036464)))

(assert (=> bs!1648323 (not (= lambda!359576 lambda!359480))))

(assert (=> bs!1648321 (not (= lambda!359576 lambda!359443))))

(declare-fun bs!1648324 () Bool)

(assert (= bs!1648324 (and b!6492357 b!6492283)))

(assert (=> bs!1648324 (= (and (= (reg!16698 (regTwo!33251 r!7292)) (reg!16698 (regOne!33251 r!7292))) (= (regTwo!33251 r!7292) (regOne!33251 r!7292))) (= lambda!359576 lambda!359565))))

(declare-fun bs!1648325 () Bool)

(assert (= bs!1648325 (and b!6492357 d!2036472)))

(assert (=> bs!1648325 (not (= lambda!359576 lambda!359485))))

(declare-fun bs!1648326 () Bool)

(assert (= bs!1648326 (and b!6492357 b!6492348)))

(assert (=> bs!1648326 (not (= lambda!359576 lambda!359575))))

(declare-fun bs!1648327 () Bool)

(assert (= bs!1648327 (and b!6492357 b!6491888)))

(assert (=> bs!1648327 (not (= lambda!359576 lambda!359551))))

(declare-fun bs!1648328 () Bool)

(assert (= bs!1648328 (and b!6492357 b!6490750)))

(assert (=> bs!1648328 (not (= lambda!359576 lambda!359453))))

(declare-fun bs!1648329 () Bool)

(assert (= bs!1648329 (and b!6492357 b!6490649)))

(assert (=> bs!1648329 (not (= lambda!359576 lambda!359436))))

(declare-fun bs!1648330 () Bool)

(assert (= bs!1648330 (and b!6492357 b!6490618)))

(assert (=> bs!1648330 (not (= lambda!359576 lambda!359440))))

(declare-fun bs!1648331 () Bool)

(assert (= bs!1648331 (and b!6492357 b!6490748)))

(assert (=> bs!1648331 (= (and (= (reg!16698 (regTwo!33251 r!7292)) (reg!16698 r!7292)) (= (regTwo!33251 r!7292) r!7292)) (= lambda!359576 lambda!359452))))

(declare-fun bs!1648332 () Bool)

(assert (= bs!1648332 (and b!6492357 b!6492132)))

(assert (=> bs!1648332 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regTwo!33251 r!7292)) (reg!16698 (regTwo!33251 lt!2389631))) (= (regTwo!33251 r!7292) (regTwo!33251 lt!2389631))) (= lambda!359576 lambda!359558))))

(declare-fun bs!1648333 () Bool)

(assert (= bs!1648333 (and b!6492357 d!2036458)))

(assert (=> bs!1648333 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regTwo!33251 r!7292)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33251 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359576 lambda!359470))))

(assert (=> bs!1648330 (not (= lambda!359576 lambda!359439))))

(declare-fun bs!1648334 () Bool)

(assert (= bs!1648334 (and b!6492357 d!2036606)))

(assert (=> bs!1648334 (not (= lambda!359576 lambda!359528))))

(assert (=> bs!1648321 (not (= lambda!359576 lambda!359441))))

(declare-fun bs!1648335 () Bool)

(assert (= bs!1648335 (and b!6492357 b!6492134)))

(assert (=> bs!1648335 (not (= lambda!359576 lambda!359559))))

(declare-fun bs!1648336 () Bool)

(assert (= bs!1648336 (and b!6492357 d!2036516)))

(assert (=> bs!1648336 (not (= lambda!359576 lambda!359498))))

(declare-fun bs!1648337 () Bool)

(assert (= bs!1648337 (and b!6492357 b!6491179)))

(assert (=> bs!1648337 (= (and (= (reg!16698 (regTwo!33251 r!7292)) (reg!16698 lt!2389659)) (= (regTwo!33251 r!7292) lt!2389659)) (= lambda!359576 lambda!359500))))

(declare-fun bs!1648338 () Bool)

(assert (= bs!1648338 (and b!6492357 b!6492285)))

(assert (=> bs!1648338 (not (= lambda!359576 lambda!359566))))

(declare-fun bs!1648339 () Bool)

(assert (= bs!1648339 (and b!6492357 b!6491886)))

(assert (=> bs!1648339 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regTwo!33251 r!7292)) (reg!16698 (regOne!33251 lt!2389631))) (= (regTwo!33251 r!7292) (regOne!33251 lt!2389631))) (= lambda!359576 lambda!359550))))

(assert (=> bs!1648333 (not (= lambda!359576 lambda!359469))))

(declare-fun bs!1648340 () Bool)

(assert (= bs!1648340 (and b!6492357 b!6492346)))

(assert (=> bs!1648340 (= (and (= (reg!16698 (regTwo!33251 r!7292)) (reg!16698 (regTwo!33251 lt!2389659))) (= (regTwo!33251 r!7292) (regTwo!33251 lt!2389659))) (= lambda!359576 lambda!359574))))

(assert (=> bs!1648334 (not (= lambda!359576 lambda!359529))))

(assert (=> bs!1648336 (not (= lambda!359576 lambda!359497))))

(assert (=> bs!1648329 (not (= lambda!359576 lambda!359437))))

(declare-fun bs!1648341 () Bool)

(assert (= bs!1648341 (and b!6492357 b!6490932)))

(assert (=> bs!1648341 (not (= lambda!359576 lambda!359462))))

(assert (=> bs!1648323 (not (= lambda!359576 lambda!359477))))

(declare-fun bs!1648342 () Bool)

(assert (= bs!1648342 (and b!6492357 b!6490930)))

(assert (=> bs!1648342 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regTwo!33251 r!7292)) (reg!16698 lt!2389631)) (= (regTwo!33251 r!7292) lt!2389631)) (= lambda!359576 lambda!359459))))

(declare-fun bs!1648343 () Bool)

(assert (= bs!1648343 (and b!6492357 b!6491181)))

(assert (=> bs!1648343 (not (= lambda!359576 lambda!359501))))

(declare-fun bs!1648344 () Bool)

(assert (= bs!1648344 (and b!6492357 d!2036524)))

(assert (=> bs!1648344 (not (= lambda!359576 lambda!359499))))

(declare-fun bs!1648345 () Bool)

(assert (= bs!1648345 (and b!6492357 d!2037036)))

(assert (=> bs!1648345 (not (= lambda!359576 lambda!359569))))

(assert (=> b!6492357 true))

(assert (=> b!6492357 true))

(declare-fun bs!1648346 () Bool)

(declare-fun b!6492359 () Bool)

(assert (= bs!1648346 (and b!6492359 b!6490643)))

(declare-fun lambda!359577 () Int)

(assert (=> bs!1648346 (not (= lambda!359577 lambda!359442))))

(declare-fun bs!1648347 () Bool)

(assert (= bs!1648347 (and b!6492359 d!2036598)))

(assert (=> bs!1648347 (not (= lambda!359577 lambda!359524))))

(declare-fun bs!1648348 () Bool)

(assert (= bs!1648348 (and b!6492359 d!2036464)))

(assert (=> bs!1648348 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regTwo!33251 r!7292)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regTwo!33251 r!7292)) lt!2389631)) (= lambda!359577 lambda!359480))))

(assert (=> bs!1648346 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regTwo!33251 r!7292)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regTwo!33251 r!7292)) lt!2389631)) (= lambda!359577 lambda!359443))))

(declare-fun bs!1648349 () Bool)

(assert (= bs!1648349 (and b!6492359 b!6492283)))

(assert (=> bs!1648349 (not (= lambda!359577 lambda!359565))))

(declare-fun bs!1648350 () Bool)

(assert (= bs!1648350 (and b!6492359 d!2036472)))

(assert (=> bs!1648350 (not (= lambda!359577 lambda!359485))))

(declare-fun bs!1648351 () Bool)

(assert (= bs!1648351 (and b!6492359 b!6492348)))

(assert (=> bs!1648351 (= (and (= (regOne!33250 (regTwo!33251 r!7292)) (regOne!33250 (regTwo!33251 lt!2389659))) (= (regTwo!33250 (regTwo!33251 r!7292)) (regTwo!33250 (regTwo!33251 lt!2389659)))) (= lambda!359577 lambda!359575))))

(declare-fun bs!1648352 () Bool)

(assert (= bs!1648352 (and b!6492359 b!6491888)))

(assert (=> bs!1648352 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regTwo!33251 r!7292)) (regOne!33250 (regOne!33251 lt!2389631))) (= (regTwo!33250 (regTwo!33251 r!7292)) (regTwo!33250 (regOne!33251 lt!2389631)))) (= lambda!359577 lambda!359551))))

(declare-fun bs!1648353 () Bool)

(assert (= bs!1648353 (and b!6492359 b!6490750)))

(assert (=> bs!1648353 (= (and (= (regOne!33250 (regTwo!33251 r!7292)) (regOne!33250 r!7292)) (= (regTwo!33250 (regTwo!33251 r!7292)) (regTwo!33250 r!7292))) (= lambda!359577 lambda!359453))))

(declare-fun bs!1648354 () Bool)

(assert (= bs!1648354 (and b!6492359 b!6490649)))

(assert (=> bs!1648354 (not (= lambda!359577 lambda!359436))))

(declare-fun bs!1648355 () Bool)

(assert (= bs!1648355 (and b!6492359 b!6490618)))

(assert (=> bs!1648355 (= (and (= (regOne!33250 (regTwo!33251 r!7292)) lt!2389631) (= (regTwo!33250 (regTwo!33251 r!7292)) (regTwo!33250 r!7292))) (= lambda!359577 lambda!359440))))

(declare-fun bs!1648356 () Bool)

(assert (= bs!1648356 (and b!6492359 b!6490748)))

(assert (=> bs!1648356 (not (= lambda!359577 lambda!359452))))

(declare-fun bs!1648357 () Bool)

(assert (= bs!1648357 (and b!6492359 b!6492132)))

(assert (=> bs!1648357 (not (= lambda!359577 lambda!359558))))

(declare-fun bs!1648358 () Bool)

(assert (= bs!1648358 (and b!6492359 b!6492357)))

(assert (=> bs!1648358 (not (= lambda!359577 lambda!359576))))

(declare-fun bs!1648359 () Bool)

(assert (= bs!1648359 (and b!6492359 d!2036458)))

(assert (=> bs!1648359 (not (= lambda!359577 lambda!359470))))

(assert (=> bs!1648355 (not (= lambda!359577 lambda!359439))))

(declare-fun bs!1648360 () Bool)

(assert (= bs!1648360 (and b!6492359 d!2036606)))

(assert (=> bs!1648360 (not (= lambda!359577 lambda!359528))))

(assert (=> bs!1648346 (not (= lambda!359577 lambda!359441))))

(declare-fun bs!1648361 () Bool)

(assert (= bs!1648361 (and b!6492359 b!6492134)))

(assert (=> bs!1648361 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regTwo!33251 r!7292)) (regOne!33250 (regTwo!33251 lt!2389631))) (= (regTwo!33250 (regTwo!33251 r!7292)) (regTwo!33250 (regTwo!33251 lt!2389631)))) (= lambda!359577 lambda!359559))))

(declare-fun bs!1648362 () Bool)

(assert (= bs!1648362 (and b!6492359 d!2036516)))

(assert (=> bs!1648362 (= (and (= (regOne!33250 (regTwo!33251 r!7292)) lt!2389631) (= (regTwo!33250 (regTwo!33251 r!7292)) (regTwo!33250 r!7292))) (= lambda!359577 lambda!359498))))

(declare-fun bs!1648363 () Bool)

(assert (= bs!1648363 (and b!6492359 b!6491179)))

(assert (=> bs!1648363 (not (= lambda!359577 lambda!359500))))

(declare-fun bs!1648364 () Bool)

(assert (= bs!1648364 (and b!6492359 b!6492285)))

(assert (=> bs!1648364 (= (and (= (regOne!33250 (regTwo!33251 r!7292)) (regOne!33250 (regOne!33251 r!7292))) (= (regTwo!33250 (regTwo!33251 r!7292)) (regTwo!33250 (regOne!33251 r!7292)))) (= lambda!359577 lambda!359566))))

(declare-fun bs!1648365 () Bool)

(assert (= bs!1648365 (and b!6492359 b!6491886)))

(assert (=> bs!1648365 (not (= lambda!359577 lambda!359550))))

(assert (=> bs!1648359 (not (= lambda!359577 lambda!359469))))

(declare-fun bs!1648366 () Bool)

(assert (= bs!1648366 (and b!6492359 b!6492346)))

(assert (=> bs!1648366 (not (= lambda!359577 lambda!359574))))

(assert (=> bs!1648360 (= (and (= (regOne!33250 (regTwo!33251 r!7292)) (regOne!33250 r!7292)) (= (regTwo!33250 (regTwo!33251 r!7292)) (regTwo!33250 r!7292))) (= lambda!359577 lambda!359529))))

(assert (=> bs!1648362 (not (= lambda!359577 lambda!359497))))

(assert (=> bs!1648354 (= (and (= (regOne!33250 (regTwo!33251 r!7292)) (regOne!33250 r!7292)) (= (regTwo!33250 (regTwo!33251 r!7292)) (regTwo!33250 r!7292))) (= lambda!359577 lambda!359437))))

(declare-fun bs!1648367 () Bool)

(assert (= bs!1648367 (and b!6492359 b!6490932)))

(assert (=> bs!1648367 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regTwo!33251 r!7292)) (regOne!33250 lt!2389631)) (= (regTwo!33250 (regTwo!33251 r!7292)) (regTwo!33250 lt!2389631))) (= lambda!359577 lambda!359462))))

(assert (=> bs!1648348 (not (= lambda!359577 lambda!359477))))

(declare-fun bs!1648368 () Bool)

(assert (= bs!1648368 (and b!6492359 b!6490930)))

(assert (=> bs!1648368 (not (= lambda!359577 lambda!359459))))

(declare-fun bs!1648369 () Bool)

(assert (= bs!1648369 (and b!6492359 b!6491181)))

(assert (=> bs!1648369 (= (and (= (regOne!33250 (regTwo!33251 r!7292)) (regOne!33250 lt!2389659)) (= (regTwo!33250 (regTwo!33251 r!7292)) (regTwo!33250 lt!2389659))) (= lambda!359577 lambda!359501))))

(declare-fun bs!1648370 () Bool)

(assert (= bs!1648370 (and b!6492359 d!2036524)))

(assert (=> bs!1648370 (not (= lambda!359577 lambda!359499))))

(declare-fun bs!1648371 () Bool)

(assert (= bs!1648371 (and b!6492359 d!2037036)))

(assert (=> bs!1648371 (not (= lambda!359577 lambda!359569))))

(assert (=> b!6492359 true))

(assert (=> b!6492359 true))

(declare-fun b!6492351 () Bool)

(declare-fun e!3934498 () Bool)

(declare-fun e!3934499 () Bool)

(assert (=> b!6492351 (= e!3934498 e!3934499)))

(declare-fun res!2666387 () Bool)

(assert (=> b!6492351 (= res!2666387 (not ((_ is EmptyLang!16369) (regTwo!33251 r!7292))))))

(assert (=> b!6492351 (=> (not res!2666387) (not e!3934499))))

(declare-fun bm!562118 () Bool)

(declare-fun call!562123 () Bool)

(assert (=> bm!562118 (= call!562123 (isEmpty!37477 s!2326))))

(declare-fun b!6492352 () Bool)

(declare-fun e!3934494 () Bool)

(declare-fun e!3934493 () Bool)

(assert (=> b!6492352 (= e!3934494 e!3934493)))

(declare-fun res!2666386 () Bool)

(assert (=> b!6492352 (= res!2666386 (matchRSpec!3470 (regOne!33251 (regTwo!33251 r!7292)) s!2326))))

(assert (=> b!6492352 (=> res!2666386 e!3934493)))

(declare-fun b!6492353 () Bool)

(assert (=> b!6492353 (= e!3934493 (matchRSpec!3470 (regTwo!33251 (regTwo!33251 r!7292)) s!2326))))

(declare-fun b!6492354 () Bool)

(declare-fun res!2666385 () Bool)

(declare-fun e!3934496 () Bool)

(assert (=> b!6492354 (=> res!2666385 e!3934496)))

(assert (=> b!6492354 (= res!2666385 call!562123)))

(declare-fun e!3934497 () Bool)

(assert (=> b!6492354 (= e!3934497 e!3934496)))

(declare-fun d!2037086 () Bool)

(declare-fun c!1189868 () Bool)

(assert (=> d!2037086 (= c!1189868 ((_ is EmptyExpr!16369) (regTwo!33251 r!7292)))))

(assert (=> d!2037086 (= (matchRSpec!3470 (regTwo!33251 r!7292) s!2326) e!3934498)))

(declare-fun b!6492355 () Bool)

(declare-fun e!3934495 () Bool)

(assert (=> b!6492355 (= e!3934495 (= s!2326 (Cons!65282 (c!1189393 (regTwo!33251 r!7292)) Nil!65282)))))

(declare-fun b!6492356 () Bool)

(assert (=> b!6492356 (= e!3934498 call!562123)))

(declare-fun call!562124 () Bool)

(assert (=> b!6492357 (= e!3934496 call!562124)))

(declare-fun b!6492358 () Bool)

(assert (=> b!6492358 (= e!3934494 e!3934497)))

(declare-fun c!1189869 () Bool)

(assert (=> b!6492358 (= c!1189869 ((_ is Star!16369) (regTwo!33251 r!7292)))))

(assert (=> b!6492359 (= e!3934497 call!562124)))

(declare-fun bm!562119 () Bool)

(assert (=> bm!562119 (= call!562124 (Exists!3439 (ite c!1189869 lambda!359576 lambda!359577)))))

(declare-fun b!6492360 () Bool)

(declare-fun c!1189870 () Bool)

(assert (=> b!6492360 (= c!1189870 ((_ is Union!16369) (regTwo!33251 r!7292)))))

(assert (=> b!6492360 (= e!3934495 e!3934494)))

(declare-fun b!6492361 () Bool)

(declare-fun c!1189871 () Bool)

(assert (=> b!6492361 (= c!1189871 ((_ is ElementMatch!16369) (regTwo!33251 r!7292)))))

(assert (=> b!6492361 (= e!3934499 e!3934495)))

(assert (= (and d!2037086 c!1189868) b!6492356))

(assert (= (and d!2037086 (not c!1189868)) b!6492351))

(assert (= (and b!6492351 res!2666387) b!6492361))

(assert (= (and b!6492361 c!1189871) b!6492355))

(assert (= (and b!6492361 (not c!1189871)) b!6492360))

(assert (= (and b!6492360 c!1189870) b!6492352))

(assert (= (and b!6492360 (not c!1189870)) b!6492358))

(assert (= (and b!6492352 (not res!2666386)) b!6492353))

(assert (= (and b!6492358 c!1189869) b!6492354))

(assert (= (and b!6492358 (not c!1189869)) b!6492359))

(assert (= (and b!6492354 (not res!2666385)) b!6492357))

(assert (= (or b!6492357 b!6492359) bm!562119))

(assert (= (or b!6492356 b!6492354) bm!562118))

(assert (=> bm!562118 m!7279298))

(declare-fun m!7281060 () Bool)

(assert (=> b!6492352 m!7281060))

(declare-fun m!7281062 () Bool)

(assert (=> b!6492353 m!7281062))

(declare-fun m!7281064 () Bool)

(assert (=> bm!562119 m!7281064))

(assert (=> b!6490744 d!2037086))

(declare-fun b!6492362 () Bool)

(declare-fun res!2666393 () Bool)

(declare-fun e!3934500 () Bool)

(assert (=> b!6492362 (=> res!2666393 e!3934500)))

(declare-fun e!3934504 () Bool)

(assert (=> b!6492362 (= res!2666393 e!3934504)))

(declare-fun res!2666390 () Bool)

(assert (=> b!6492362 (=> (not res!2666390) (not e!3934504))))

(declare-fun lt!2389918 () Bool)

(assert (=> b!6492362 (= res!2666390 lt!2389918)))

(declare-fun b!6492363 () Bool)

(declare-fun res!2666391 () Bool)

(assert (=> b!6492363 (=> (not res!2666391) (not e!3934504))))

(assert (=> b!6492363 (= res!2666391 (isEmpty!37477 (tail!12296 (_1!36651 (get!22637 lt!2389734)))))))

(declare-fun b!6492365 () Bool)

(declare-fun e!3934502 () Bool)

(assert (=> b!6492365 (= e!3934500 e!3934502)))

(declare-fun res!2666394 () Bool)

(assert (=> b!6492365 (=> (not res!2666394) (not e!3934502))))

(assert (=> b!6492365 (= res!2666394 (not lt!2389918))))

(declare-fun bm!562120 () Bool)

(declare-fun call!562125 () Bool)

(assert (=> bm!562120 (= call!562125 (isEmpty!37477 (_1!36651 (get!22637 lt!2389734))))))

(declare-fun b!6492366 () Bool)

(declare-fun e!3934503 () Bool)

(assert (=> b!6492366 (= e!3934503 (not (= (head!13211 (_1!36651 (get!22637 lt!2389734))) (c!1189393 lt!2389631))))))

(declare-fun b!6492367 () Bool)

(declare-fun e!3934506 () Bool)

(assert (=> b!6492367 (= e!3934506 (matchR!8552 (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 (get!22637 lt!2389734)))) (tail!12296 (_1!36651 (get!22637 lt!2389734)))))))

(declare-fun b!6492368 () Bool)

(declare-fun res!2666395 () Bool)

(assert (=> b!6492368 (=> res!2666395 e!3934503)))

(assert (=> b!6492368 (= res!2666395 (not (isEmpty!37477 (tail!12296 (_1!36651 (get!22637 lt!2389734))))))))

(declare-fun b!6492369 () Bool)

(declare-fun res!2666392 () Bool)

(assert (=> b!6492369 (=> res!2666392 e!3934500)))

(assert (=> b!6492369 (= res!2666392 (not ((_ is ElementMatch!16369) lt!2389631)))))

(declare-fun e!3934501 () Bool)

(assert (=> b!6492369 (= e!3934501 e!3934500)))

(declare-fun b!6492370 () Bool)

(declare-fun e!3934505 () Bool)

(assert (=> b!6492370 (= e!3934505 (= lt!2389918 call!562125))))

(declare-fun b!6492371 () Bool)

(assert (=> b!6492371 (= e!3934502 e!3934503)))

(declare-fun res!2666389 () Bool)

(assert (=> b!6492371 (=> res!2666389 e!3934503)))

(assert (=> b!6492371 (= res!2666389 call!562125)))

(declare-fun b!6492372 () Bool)

(assert (=> b!6492372 (= e!3934506 (nullable!6362 lt!2389631))))

(declare-fun b!6492373 () Bool)

(assert (=> b!6492373 (= e!3934504 (= (head!13211 (_1!36651 (get!22637 lt!2389734))) (c!1189393 lt!2389631)))))

(declare-fun d!2037088 () Bool)

(assert (=> d!2037088 e!3934505))

(declare-fun c!1189874 () Bool)

(assert (=> d!2037088 (= c!1189874 ((_ is EmptyExpr!16369) lt!2389631))))

(assert (=> d!2037088 (= lt!2389918 e!3934506)))

(declare-fun c!1189873 () Bool)

(assert (=> d!2037088 (= c!1189873 (isEmpty!37477 (_1!36651 (get!22637 lt!2389734))))))

(assert (=> d!2037088 (validRegex!8105 lt!2389631)))

(assert (=> d!2037088 (= (matchR!8552 lt!2389631 (_1!36651 (get!22637 lt!2389734))) lt!2389918)))

(declare-fun b!6492364 () Bool)

(assert (=> b!6492364 (= e!3934505 e!3934501)))

(declare-fun c!1189872 () Bool)

(assert (=> b!6492364 (= c!1189872 ((_ is EmptyLang!16369) lt!2389631))))

(declare-fun b!6492374 () Bool)

(assert (=> b!6492374 (= e!3934501 (not lt!2389918))))

(declare-fun b!6492375 () Bool)

(declare-fun res!2666388 () Bool)

(assert (=> b!6492375 (=> (not res!2666388) (not e!3934504))))

(assert (=> b!6492375 (= res!2666388 (not call!562125))))

(assert (= (and d!2037088 c!1189873) b!6492372))

(assert (= (and d!2037088 (not c!1189873)) b!6492367))

(assert (= (and d!2037088 c!1189874) b!6492370))

(assert (= (and d!2037088 (not c!1189874)) b!6492364))

(assert (= (and b!6492364 c!1189872) b!6492374))

(assert (= (and b!6492364 (not c!1189872)) b!6492369))

(assert (= (and b!6492369 (not res!2666392)) b!6492362))

(assert (= (and b!6492362 res!2666390) b!6492375))

(assert (= (and b!6492375 res!2666388) b!6492363))

(assert (= (and b!6492363 res!2666391) b!6492373))

(assert (= (and b!6492362 (not res!2666393)) b!6492365))

(assert (= (and b!6492365 res!2666394) b!6492371))

(assert (= (and b!6492371 (not res!2666389)) b!6492368))

(assert (= (and b!6492368 (not res!2666395)) b!6492366))

(assert (= (or b!6492370 b!6492371 b!6492375) bm!562120))

(declare-fun m!7281066 () Bool)

(assert (=> b!6492363 m!7281066))

(assert (=> b!6492363 m!7281066))

(declare-fun m!7281068 () Bool)

(assert (=> b!6492363 m!7281068))

(declare-fun m!7281070 () Bool)

(assert (=> d!2037088 m!7281070))

(assert (=> d!2037088 m!7279404))

(assert (=> b!6492368 m!7281066))

(assert (=> b!6492368 m!7281066))

(assert (=> b!6492368 m!7281068))

(declare-fun m!7281072 () Bool)

(assert (=> b!6492366 m!7281072))

(assert (=> b!6492372 m!7279408))

(assert (=> bm!562120 m!7281070))

(assert (=> b!6492373 m!7281072))

(assert (=> b!6492367 m!7281072))

(assert (=> b!6492367 m!7281072))

(declare-fun m!7281074 () Bool)

(assert (=> b!6492367 m!7281074))

(assert (=> b!6492367 m!7281066))

(assert (=> b!6492367 m!7281074))

(assert (=> b!6492367 m!7281066))

(declare-fun m!7281076 () Bool)

(assert (=> b!6492367 m!7281076))

(assert (=> b!6491164 d!2037088))

(declare-fun d!2037090 () Bool)

(assert (=> d!2037090 (= (get!22637 lt!2389734) (v!52438 lt!2389734))))

(assert (=> b!6491164 d!2037090))

(declare-fun d!2037092 () Bool)

(assert (=> d!2037092 (= ($colon$colon!2221 (exprs!6253 lt!2389656) (ite (or c!1189406 c!1189404) (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (regOne!33250 r!7292)))) (Cons!65283 (ite (or c!1189406 c!1189404) (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (regOne!33250 r!7292))) (exprs!6253 lt!2389656)))))

(assert (=> bm!561907 d!2037092))

(assert (=> b!6491536 d!2036958))

(assert (=> b!6491536 d!2036852))

(declare-fun b!6492376 () Bool)

(declare-fun res!2666401 () Bool)

(declare-fun e!3934507 () Bool)

(assert (=> b!6492376 (=> res!2666401 e!3934507)))

(declare-fun e!3934511 () Bool)

(assert (=> b!6492376 (= res!2666401 e!3934511)))

(declare-fun res!2666398 () Bool)

(assert (=> b!6492376 (=> (not res!2666398) (not e!3934511))))

(declare-fun lt!2389919 () Bool)

(assert (=> b!6492376 (= res!2666398 lt!2389919)))

(declare-fun b!6492377 () Bool)

(declare-fun res!2666399 () Bool)

(assert (=> b!6492377 (=> (not res!2666399) (not e!3934511))))

(assert (=> b!6492377 (= res!2666399 (isEmpty!37477 (tail!12296 (tail!12296 s!2326))))))

(declare-fun b!6492379 () Bool)

(declare-fun e!3934509 () Bool)

(assert (=> b!6492379 (= e!3934507 e!3934509)))

(declare-fun res!2666402 () Bool)

(assert (=> b!6492379 (=> (not res!2666402) (not e!3934509))))

(assert (=> b!6492379 (= res!2666402 (not lt!2389919))))

(declare-fun bm!562121 () Bool)

(declare-fun call!562126 () Bool)

(assert (=> bm!562121 (= call!562126 (isEmpty!37477 (tail!12296 s!2326)))))

(declare-fun b!6492380 () Bool)

(declare-fun e!3934510 () Bool)

(assert (=> b!6492380 (= e!3934510 (not (= (head!13211 (tail!12296 s!2326)) (c!1189393 (derivativeStep!5064 r!7292 (head!13211 s!2326))))))))

(declare-fun b!6492381 () Bool)

(declare-fun e!3934513 () Bool)

(assert (=> b!6492381 (= e!3934513 (matchR!8552 (derivativeStep!5064 (derivativeStep!5064 r!7292 (head!13211 s!2326)) (head!13211 (tail!12296 s!2326))) (tail!12296 (tail!12296 s!2326))))))

(declare-fun b!6492382 () Bool)

(declare-fun res!2666403 () Bool)

(assert (=> b!6492382 (=> res!2666403 e!3934510)))

(assert (=> b!6492382 (= res!2666403 (not (isEmpty!37477 (tail!12296 (tail!12296 s!2326)))))))

(declare-fun b!6492383 () Bool)

(declare-fun res!2666400 () Bool)

(assert (=> b!6492383 (=> res!2666400 e!3934507)))

(assert (=> b!6492383 (= res!2666400 (not ((_ is ElementMatch!16369) (derivativeStep!5064 r!7292 (head!13211 s!2326)))))))

(declare-fun e!3934508 () Bool)

(assert (=> b!6492383 (= e!3934508 e!3934507)))

(declare-fun b!6492384 () Bool)

(declare-fun e!3934512 () Bool)

(assert (=> b!6492384 (= e!3934512 (= lt!2389919 call!562126))))

(declare-fun b!6492385 () Bool)

(assert (=> b!6492385 (= e!3934509 e!3934510)))

(declare-fun res!2666397 () Bool)

(assert (=> b!6492385 (=> res!2666397 e!3934510)))

(assert (=> b!6492385 (= res!2666397 call!562126)))

(declare-fun b!6492386 () Bool)

(assert (=> b!6492386 (= e!3934513 (nullable!6362 (derivativeStep!5064 r!7292 (head!13211 s!2326))))))

(declare-fun b!6492387 () Bool)

(assert (=> b!6492387 (= e!3934511 (= (head!13211 (tail!12296 s!2326)) (c!1189393 (derivativeStep!5064 r!7292 (head!13211 s!2326)))))))

(declare-fun d!2037094 () Bool)

(assert (=> d!2037094 e!3934512))

(declare-fun c!1189877 () Bool)

(assert (=> d!2037094 (= c!1189877 ((_ is EmptyExpr!16369) (derivativeStep!5064 r!7292 (head!13211 s!2326))))))

(assert (=> d!2037094 (= lt!2389919 e!3934513)))

(declare-fun c!1189876 () Bool)

(assert (=> d!2037094 (= c!1189876 (isEmpty!37477 (tail!12296 s!2326)))))

(assert (=> d!2037094 (validRegex!8105 (derivativeStep!5064 r!7292 (head!13211 s!2326)))))

(assert (=> d!2037094 (= (matchR!8552 (derivativeStep!5064 r!7292 (head!13211 s!2326)) (tail!12296 s!2326)) lt!2389919)))

(declare-fun b!6492378 () Bool)

(assert (=> b!6492378 (= e!3934512 e!3934508)))

(declare-fun c!1189875 () Bool)

(assert (=> b!6492378 (= c!1189875 ((_ is EmptyLang!16369) (derivativeStep!5064 r!7292 (head!13211 s!2326))))))

(declare-fun b!6492388 () Bool)

(assert (=> b!6492388 (= e!3934508 (not lt!2389919))))

(declare-fun b!6492389 () Bool)

(declare-fun res!2666396 () Bool)

(assert (=> b!6492389 (=> (not res!2666396) (not e!3934511))))

(assert (=> b!6492389 (= res!2666396 (not call!562126))))

(assert (= (and d!2037094 c!1189876) b!6492386))

(assert (= (and d!2037094 (not c!1189876)) b!6492381))

(assert (= (and d!2037094 c!1189877) b!6492384))

(assert (= (and d!2037094 (not c!1189877)) b!6492378))

(assert (= (and b!6492378 c!1189875) b!6492388))

(assert (= (and b!6492378 (not c!1189875)) b!6492383))

(assert (= (and b!6492383 (not res!2666400)) b!6492376))

(assert (= (and b!6492376 res!2666398) b!6492389))

(assert (= (and b!6492389 res!2666396) b!6492377))

(assert (= (and b!6492377 res!2666399) b!6492387))

(assert (= (and b!6492376 (not res!2666401)) b!6492379))

(assert (= (and b!6492379 res!2666402) b!6492385))

(assert (= (and b!6492385 (not res!2666397)) b!6492382))

(assert (= (and b!6492382 (not res!2666403)) b!6492380))

(assert (= (or b!6492384 b!6492385 b!6492389) bm!562121))

(assert (=> b!6492377 m!7279326))

(assert (=> b!6492377 m!7280860))

(assert (=> b!6492377 m!7280860))

(declare-fun m!7281078 () Bool)

(assert (=> b!6492377 m!7281078))

(assert (=> d!2037094 m!7279326))

(assert (=> d!2037094 m!7279328))

(assert (=> d!2037094 m!7279334))

(declare-fun m!7281080 () Bool)

(assert (=> d!2037094 m!7281080))

(assert (=> b!6492382 m!7279326))

(assert (=> b!6492382 m!7280860))

(assert (=> b!6492382 m!7280860))

(assert (=> b!6492382 m!7281078))

(assert (=> b!6492380 m!7279326))

(assert (=> b!6492380 m!7280856))

(assert (=> b!6492386 m!7279334))

(declare-fun m!7281082 () Bool)

(assert (=> b!6492386 m!7281082))

(assert (=> bm!562121 m!7279326))

(assert (=> bm!562121 m!7279328))

(assert (=> b!6492387 m!7279326))

(assert (=> b!6492387 m!7280856))

(assert (=> b!6492381 m!7279326))

(assert (=> b!6492381 m!7280856))

(assert (=> b!6492381 m!7279334))

(assert (=> b!6492381 m!7280856))

(declare-fun m!7281084 () Bool)

(assert (=> b!6492381 m!7281084))

(assert (=> b!6492381 m!7279326))

(assert (=> b!6492381 m!7280860))

(assert (=> b!6492381 m!7281084))

(assert (=> b!6492381 m!7280860))

(declare-fun m!7281086 () Bool)

(assert (=> b!6492381 m!7281086))

(assert (=> b!6490828 d!2037094))

(declare-fun b!6492390 () Bool)

(declare-fun e!3934517 () Regex!16369)

(assert (=> b!6492390 (= e!3934517 (ite (= (head!13211 s!2326) (c!1189393 r!7292)) EmptyExpr!16369 EmptyLang!16369))))

(declare-fun b!6492391 () Bool)

(declare-fun e!3934514 () Regex!16369)

(declare-fun call!562130 () Regex!16369)

(declare-fun call!562127 () Regex!16369)

(assert (=> b!6492391 (= e!3934514 (Union!16369 call!562130 call!562127))))

(declare-fun d!2037096 () Bool)

(declare-fun lt!2389920 () Regex!16369)

(assert (=> d!2037096 (validRegex!8105 lt!2389920)))

(declare-fun e!3934516 () Regex!16369)

(assert (=> d!2037096 (= lt!2389920 e!3934516)))

(declare-fun c!1189880 () Bool)

(assert (=> d!2037096 (= c!1189880 (or ((_ is EmptyExpr!16369) r!7292) ((_ is EmptyLang!16369) r!7292)))))

(assert (=> d!2037096 (validRegex!8105 r!7292)))

(assert (=> d!2037096 (= (derivativeStep!5064 r!7292 (head!13211 s!2326)) lt!2389920)))

(declare-fun call!562128 () Regex!16369)

(declare-fun e!3934515 () Regex!16369)

(declare-fun b!6492392 () Bool)

(assert (=> b!6492392 (= e!3934515 (Union!16369 (Concat!25214 call!562130 (regTwo!33250 r!7292)) call!562128))))

(declare-fun bm!562122 () Bool)

(declare-fun c!1189882 () Bool)

(assert (=> bm!562122 (= call!562130 (derivativeStep!5064 (ite c!1189882 (regOne!33251 r!7292) (regOne!33250 r!7292)) (head!13211 s!2326)))))

(declare-fun bm!562123 () Bool)

(declare-fun call!562129 () Regex!16369)

(assert (=> bm!562123 (= call!562129 call!562127)))

(declare-fun b!6492393 () Bool)

(declare-fun c!1189879 () Bool)

(assert (=> b!6492393 (= c!1189879 (nullable!6362 (regOne!33250 r!7292)))))

(declare-fun e!3934518 () Regex!16369)

(assert (=> b!6492393 (= e!3934518 e!3934515)))

(declare-fun c!1189881 () Bool)

(declare-fun bm!562124 () Bool)

(assert (=> bm!562124 (= call!562127 (derivativeStep!5064 (ite c!1189882 (regTwo!33251 r!7292) (ite c!1189881 (reg!16698 r!7292) (ite c!1189879 (regTwo!33250 r!7292) (regOne!33250 r!7292)))) (head!13211 s!2326)))))

(declare-fun b!6492394 () Bool)

(assert (=> b!6492394 (= e!3934515 (Union!16369 (Concat!25214 call!562128 (regTwo!33250 r!7292)) EmptyLang!16369))))

(declare-fun b!6492395 () Bool)

(assert (=> b!6492395 (= e!3934514 e!3934518)))

(assert (=> b!6492395 (= c!1189881 ((_ is Star!16369) r!7292))))

(declare-fun b!6492396 () Bool)

(assert (=> b!6492396 (= e!3934516 EmptyLang!16369)))

(declare-fun bm!562125 () Bool)

(assert (=> bm!562125 (= call!562128 call!562129)))

(declare-fun b!6492397 () Bool)

(assert (=> b!6492397 (= e!3934518 (Concat!25214 call!562129 r!7292))))

(declare-fun b!6492398 () Bool)

(assert (=> b!6492398 (= c!1189882 ((_ is Union!16369) r!7292))))

(assert (=> b!6492398 (= e!3934517 e!3934514)))

(declare-fun b!6492399 () Bool)

(assert (=> b!6492399 (= e!3934516 e!3934517)))

(declare-fun c!1189878 () Bool)

(assert (=> b!6492399 (= c!1189878 ((_ is ElementMatch!16369) r!7292))))

(assert (= (and d!2037096 c!1189880) b!6492396))

(assert (= (and d!2037096 (not c!1189880)) b!6492399))

(assert (= (and b!6492399 c!1189878) b!6492390))

(assert (= (and b!6492399 (not c!1189878)) b!6492398))

(assert (= (and b!6492398 c!1189882) b!6492391))

(assert (= (and b!6492398 (not c!1189882)) b!6492395))

(assert (= (and b!6492395 c!1189881) b!6492397))

(assert (= (and b!6492395 (not c!1189881)) b!6492393))

(assert (= (and b!6492393 c!1189879) b!6492392))

(assert (= (and b!6492393 (not c!1189879)) b!6492394))

(assert (= (or b!6492392 b!6492394) bm!562125))

(assert (= (or b!6492397 bm!562125) bm!562123))

(assert (= (or b!6492391 bm!562123) bm!562124))

(assert (= (or b!6492391 b!6492392) bm!562122))

(declare-fun m!7281088 () Bool)

(assert (=> d!2037096 m!7281088))

(assert (=> d!2037096 m!7279106))

(assert (=> bm!562122 m!7279330))

(declare-fun m!7281090 () Bool)

(assert (=> bm!562122 m!7281090))

(declare-fun m!7281092 () Bool)

(assert (=> b!6492393 m!7281092))

(assert (=> bm!562124 m!7279330))

(declare-fun m!7281094 () Bool)

(assert (=> bm!562124 m!7281094))

(assert (=> b!6490828 d!2037096))

(assert (=> b!6490828 d!2036906))

(assert (=> b!6490828 d!2036984))

(declare-fun d!2037098 () Bool)

(declare-fun res!2666404 () Bool)

(declare-fun e!3934519 () Bool)

(assert (=> d!2037098 (=> res!2666404 e!3934519)))

(assert (=> d!2037098 (= res!2666404 ((_ is Nil!65283) (exprs!6253 (h!71732 zl!343))))))

(assert (=> d!2037098 (= (forall!15551 (exprs!6253 (h!71732 zl!343)) lambda!359456) e!3934519)))

(declare-fun b!6492400 () Bool)

(declare-fun e!3934520 () Bool)

(assert (=> b!6492400 (= e!3934519 e!3934520)))

(declare-fun res!2666405 () Bool)

(assert (=> b!6492400 (=> (not res!2666405) (not e!3934520))))

(assert (=> b!6492400 (= res!2666405 (dynLambda!25932 lambda!359456 (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6492401 () Bool)

(assert (=> b!6492401 (= e!3934520 (forall!15551 (t!379035 (exprs!6253 (h!71732 zl!343))) lambda!359456))))

(assert (= (and d!2037098 (not res!2666404)) b!6492400))

(assert (= (and b!6492400 res!2666405) b!6492401))

(declare-fun b_lambda!245769 () Bool)

(assert (=> (not b_lambda!245769) (not b!6492400)))

(declare-fun m!7281096 () Bool)

(assert (=> b!6492400 m!7281096))

(declare-fun m!7281098 () Bool)

(assert (=> b!6492401 m!7281098))

(assert (=> d!2036426 d!2037098))

(declare-fun b!6492402 () Bool)

(declare-fun res!2666406 () Bool)

(declare-fun e!3934522 () Bool)

(assert (=> b!6492402 (=> res!2666406 e!3934522)))

(assert (=> b!6492402 (= res!2666406 (not ((_ is Concat!25214) lt!2389775)))))

(declare-fun e!3934524 () Bool)

(assert (=> b!6492402 (= e!3934524 e!3934522)))

(declare-fun b!6492403 () Bool)

(declare-fun e!3934526 () Bool)

(assert (=> b!6492403 (= e!3934522 e!3934526)))

(declare-fun res!2666410 () Bool)

(assert (=> b!6492403 (=> (not res!2666410) (not e!3934526))))

(declare-fun call!562131 () Bool)

(assert (=> b!6492403 (= res!2666410 call!562131)))

(declare-fun b!6492404 () Bool)

(declare-fun call!562133 () Bool)

(assert (=> b!6492404 (= e!3934526 call!562133)))

(declare-fun bm!562126 () Bool)

(declare-fun c!1189884 () Bool)

(assert (=> bm!562126 (= call!562133 (validRegex!8105 (ite c!1189884 (regTwo!33251 lt!2389775) (regTwo!33250 lt!2389775))))))

(declare-fun b!6492405 () Bool)

(declare-fun e!3934523 () Bool)

(declare-fun e!3934527 () Bool)

(assert (=> b!6492405 (= e!3934523 e!3934527)))

(declare-fun res!2666409 () Bool)

(assert (=> b!6492405 (= res!2666409 (not (nullable!6362 (reg!16698 lt!2389775))))))

(assert (=> b!6492405 (=> (not res!2666409) (not e!3934527))))

(declare-fun b!6492406 () Bool)

(declare-fun e!3934521 () Bool)

(assert (=> b!6492406 (= e!3934521 e!3934523)))

(declare-fun c!1189883 () Bool)

(assert (=> b!6492406 (= c!1189883 ((_ is Star!16369) lt!2389775))))

(declare-fun b!6492407 () Bool)

(declare-fun call!562132 () Bool)

(assert (=> b!6492407 (= e!3934527 call!562132)))

(declare-fun b!6492408 () Bool)

(assert (=> b!6492408 (= e!3934523 e!3934524)))

(assert (=> b!6492408 (= c!1189884 ((_ is Union!16369) lt!2389775))))

(declare-fun d!2037100 () Bool)

(declare-fun res!2666407 () Bool)

(assert (=> d!2037100 (=> res!2666407 e!3934521)))

(assert (=> d!2037100 (= res!2666407 ((_ is ElementMatch!16369) lt!2389775))))

(assert (=> d!2037100 (= (validRegex!8105 lt!2389775) e!3934521)))

(declare-fun bm!562127 () Bool)

(assert (=> bm!562127 (= call!562132 (validRegex!8105 (ite c!1189883 (reg!16698 lt!2389775) (ite c!1189884 (regOne!33251 lt!2389775) (regOne!33250 lt!2389775)))))))

(declare-fun b!6492409 () Bool)

(declare-fun e!3934525 () Bool)

(assert (=> b!6492409 (= e!3934525 call!562133)))

(declare-fun b!6492410 () Bool)

(declare-fun res!2666408 () Bool)

(assert (=> b!6492410 (=> (not res!2666408) (not e!3934525))))

(assert (=> b!6492410 (= res!2666408 call!562131)))

(assert (=> b!6492410 (= e!3934524 e!3934525)))

(declare-fun bm!562128 () Bool)

(assert (=> bm!562128 (= call!562131 call!562132)))

(assert (= (and d!2037100 (not res!2666407)) b!6492406))

(assert (= (and b!6492406 c!1189883) b!6492405))

(assert (= (and b!6492406 (not c!1189883)) b!6492408))

(assert (= (and b!6492405 res!2666409) b!6492407))

(assert (= (and b!6492408 c!1189884) b!6492410))

(assert (= (and b!6492408 (not c!1189884)) b!6492402))

(assert (= (and b!6492410 res!2666408) b!6492409))

(assert (= (and b!6492402 (not res!2666406)) b!6492403))

(assert (= (and b!6492403 res!2666410) b!6492404))

(assert (= (or b!6492409 b!6492404) bm!562126))

(assert (= (or b!6492410 b!6492403) bm!562128))

(assert (= (or b!6492407 bm!562128) bm!562127))

(declare-fun m!7281100 () Bool)

(assert (=> bm!562126 m!7281100))

(declare-fun m!7281102 () Bool)

(assert (=> b!6492405 m!7281102))

(declare-fun m!7281104 () Bool)

(assert (=> bm!562127 m!7281104))

(assert (=> d!2036586 d!2037100))

(assert (=> d!2036586 d!2036558))

(assert (=> d!2036586 d!2036562))

(assert (=> bm!561957 d!2036570))

(declare-fun d!2037102 () Bool)

(assert (=> d!2037102 (= (isDefined!12963 lt!2389727) (not (isEmpty!37479 lt!2389727)))))

(declare-fun bs!1648372 () Bool)

(assert (= bs!1648372 d!2037102))

(declare-fun m!7281106 () Bool)

(assert (=> bs!1648372 m!7281106))

(assert (=> d!2036492 d!2037102))

(declare-fun b!6492411 () Bool)

(declare-fun res!2666416 () Bool)

(declare-fun e!3934528 () Bool)

(assert (=> b!6492411 (=> res!2666416 e!3934528)))

(declare-fun e!3934532 () Bool)

(assert (=> b!6492411 (= res!2666416 e!3934532)))

(declare-fun res!2666413 () Bool)

(assert (=> b!6492411 (=> (not res!2666413) (not e!3934532))))

(declare-fun lt!2389921 () Bool)

(assert (=> b!6492411 (= res!2666413 lt!2389921)))

(declare-fun b!6492412 () Bool)

(declare-fun res!2666414 () Bool)

(assert (=> b!6492412 (=> (not res!2666414) (not e!3934532))))

(assert (=> b!6492412 (= res!2666414 (isEmpty!37477 (tail!12296 Nil!65282)))))

(declare-fun b!6492414 () Bool)

(declare-fun e!3934530 () Bool)

(assert (=> b!6492414 (= e!3934528 e!3934530)))

(declare-fun res!2666417 () Bool)

(assert (=> b!6492414 (=> (not res!2666417) (not e!3934530))))

(assert (=> b!6492414 (= res!2666417 (not lt!2389921))))

(declare-fun bm!562129 () Bool)

(declare-fun call!562134 () Bool)

(assert (=> bm!562129 (= call!562134 (isEmpty!37477 Nil!65282))))

(declare-fun b!6492415 () Bool)

(declare-fun e!3934531 () Bool)

(assert (=> b!6492415 (= e!3934531 (not (= (head!13211 Nil!65282) (c!1189393 (reg!16698 (regOne!33250 r!7292))))))))

(declare-fun b!6492416 () Bool)

(declare-fun e!3934534 () Bool)

(assert (=> b!6492416 (= e!3934534 (matchR!8552 (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 Nil!65282)) (tail!12296 Nil!65282)))))

(declare-fun b!6492417 () Bool)

(declare-fun res!2666418 () Bool)

(assert (=> b!6492417 (=> res!2666418 e!3934531)))

(assert (=> b!6492417 (= res!2666418 (not (isEmpty!37477 (tail!12296 Nil!65282))))))

(declare-fun b!6492418 () Bool)

(declare-fun res!2666415 () Bool)

(assert (=> b!6492418 (=> res!2666415 e!3934528)))

(assert (=> b!6492418 (= res!2666415 (not ((_ is ElementMatch!16369) (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun e!3934529 () Bool)

(assert (=> b!6492418 (= e!3934529 e!3934528)))

(declare-fun b!6492419 () Bool)

(declare-fun e!3934533 () Bool)

(assert (=> b!6492419 (= e!3934533 (= lt!2389921 call!562134))))

(declare-fun b!6492420 () Bool)

(assert (=> b!6492420 (= e!3934530 e!3934531)))

(declare-fun res!2666412 () Bool)

(assert (=> b!6492420 (=> res!2666412 e!3934531)))

(assert (=> b!6492420 (= res!2666412 call!562134)))

(declare-fun b!6492421 () Bool)

(assert (=> b!6492421 (= e!3934534 (nullable!6362 (reg!16698 (regOne!33250 r!7292))))))

(declare-fun b!6492422 () Bool)

(assert (=> b!6492422 (= e!3934532 (= (head!13211 Nil!65282) (c!1189393 (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun d!2037104 () Bool)

(assert (=> d!2037104 e!3934533))

(declare-fun c!1189887 () Bool)

(assert (=> d!2037104 (= c!1189887 ((_ is EmptyExpr!16369) (reg!16698 (regOne!33250 r!7292))))))

(assert (=> d!2037104 (= lt!2389921 e!3934534)))

(declare-fun c!1189886 () Bool)

(assert (=> d!2037104 (= c!1189886 (isEmpty!37477 Nil!65282))))

(assert (=> d!2037104 (validRegex!8105 (reg!16698 (regOne!33250 r!7292)))))

(assert (=> d!2037104 (= (matchR!8552 (reg!16698 (regOne!33250 r!7292)) Nil!65282) lt!2389921)))

(declare-fun b!6492413 () Bool)

(assert (=> b!6492413 (= e!3934533 e!3934529)))

(declare-fun c!1189885 () Bool)

(assert (=> b!6492413 (= c!1189885 ((_ is EmptyLang!16369) (reg!16698 (regOne!33250 r!7292))))))

(declare-fun b!6492423 () Bool)

(assert (=> b!6492423 (= e!3934529 (not lt!2389921))))

(declare-fun b!6492424 () Bool)

(declare-fun res!2666411 () Bool)

(assert (=> b!6492424 (=> (not res!2666411) (not e!3934532))))

(assert (=> b!6492424 (= res!2666411 (not call!562134))))

(assert (= (and d!2037104 c!1189886) b!6492421))

(assert (= (and d!2037104 (not c!1189886)) b!6492416))

(assert (= (and d!2037104 c!1189887) b!6492419))

(assert (= (and d!2037104 (not c!1189887)) b!6492413))

(assert (= (and b!6492413 c!1189885) b!6492423))

(assert (= (and b!6492413 (not c!1189885)) b!6492418))

(assert (= (and b!6492418 (not res!2666415)) b!6492411))

(assert (= (and b!6492411 res!2666413) b!6492424))

(assert (= (and b!6492424 res!2666411) b!6492412))

(assert (= (and b!6492412 res!2666414) b!6492422))

(assert (= (and b!6492411 (not res!2666416)) b!6492414))

(assert (= (and b!6492414 res!2666417) b!6492420))

(assert (= (and b!6492420 (not res!2666412)) b!6492417))

(assert (= (and b!6492417 (not res!2666418)) b!6492415))

(assert (= (or b!6492419 b!6492420 b!6492424) bm!562129))

(assert (=> b!6492412 m!7281004))

(assert (=> b!6492412 m!7281004))

(assert (=> b!6492412 m!7281006))

(assert (=> d!2037104 m!7281008))

(assert (=> d!2037104 m!7279464))

(assert (=> b!6492417 m!7281004))

(assert (=> b!6492417 m!7281004))

(assert (=> b!6492417 m!7281006))

(assert (=> b!6492415 m!7281010))

(assert (=> b!6492421 m!7279606))

(assert (=> bm!562129 m!7281008))

(assert (=> b!6492422 m!7281010))

(assert (=> b!6492416 m!7281010))

(assert (=> b!6492416 m!7281010))

(declare-fun m!7281108 () Bool)

(assert (=> b!6492416 m!7281108))

(assert (=> b!6492416 m!7281004))

(assert (=> b!6492416 m!7281108))

(assert (=> b!6492416 m!7281004))

(declare-fun m!7281110 () Bool)

(assert (=> b!6492416 m!7281110))

(assert (=> d!2036492 d!2037104))

(assert (=> d!2036492 d!2036988))

(declare-fun d!2037106 () Bool)

(declare-fun c!1189888 () Bool)

(assert (=> d!2037106 (= c!1189888 ((_ is Nil!65282) lt!2389840))))

(declare-fun e!3934535 () (InoxSet C!33008))

(assert (=> d!2037106 (= (content!12442 lt!2389840) e!3934535)))

(declare-fun b!6492425 () Bool)

(assert (=> b!6492425 (= e!3934535 ((as const (Array C!33008 Bool)) false))))

(declare-fun b!6492426 () Bool)

(assert (=> b!6492426 (= e!3934535 ((_ map or) (store ((as const (Array C!33008 Bool)) false) (h!71730 lt!2389840) true) (content!12442 (t!379034 lt!2389840))))))

(assert (= (and d!2037106 c!1189888) b!6492425))

(assert (= (and d!2037106 (not c!1189888)) b!6492426))

(declare-fun m!7281112 () Bool)

(assert (=> b!6492426 m!7281112))

(declare-fun m!7281114 () Bool)

(assert (=> b!6492426 m!7281114))

(assert (=> d!2036680 d!2037106))

(declare-fun d!2037108 () Bool)

(declare-fun c!1189889 () Bool)

(assert (=> d!2037108 (= c!1189889 ((_ is Nil!65282) lt!2389620))))

(declare-fun e!3934536 () (InoxSet C!33008))

(assert (=> d!2037108 (= (content!12442 lt!2389620) e!3934536)))

(declare-fun b!6492427 () Bool)

(assert (=> b!6492427 (= e!3934536 ((as const (Array C!33008 Bool)) false))))

(declare-fun b!6492428 () Bool)

(assert (=> b!6492428 (= e!3934536 ((_ map or) (store ((as const (Array C!33008 Bool)) false) (h!71730 lt!2389620) true) (content!12442 (t!379034 lt!2389620))))))

(assert (= (and d!2037108 c!1189889) b!6492427))

(assert (= (and d!2037108 (not c!1189889)) b!6492428))

(declare-fun m!7281116 () Bool)

(assert (=> b!6492428 m!7281116))

(declare-fun m!7281118 () Bool)

(assert (=> b!6492428 m!7281118))

(assert (=> d!2036680 d!2037108))

(assert (=> d!2036680 d!2036862))

(declare-fun b!6492429 () Bool)

(declare-fun res!2666419 () Bool)

(declare-fun e!3934538 () Bool)

(assert (=> b!6492429 (=> res!2666419 e!3934538)))

(assert (=> b!6492429 (= res!2666419 (not ((_ is Concat!25214) (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292))))))))

(declare-fun e!3934540 () Bool)

(assert (=> b!6492429 (= e!3934540 e!3934538)))

(declare-fun b!6492430 () Bool)

(declare-fun e!3934542 () Bool)

(assert (=> b!6492430 (= e!3934538 e!3934542)))

(declare-fun res!2666423 () Bool)

(assert (=> b!6492430 (=> (not res!2666423) (not e!3934542))))

(declare-fun call!562135 () Bool)

(assert (=> b!6492430 (= res!2666423 call!562135)))

(declare-fun b!6492431 () Bool)

(declare-fun call!562137 () Bool)

(assert (=> b!6492431 (= e!3934542 call!562137)))

(declare-fun bm!562130 () Bool)

(declare-fun c!1189891 () Bool)

(assert (=> bm!562130 (= call!562137 (validRegex!8105 (ite c!1189891 (regTwo!33251 (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292)))) (regTwo!33250 (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292)))))))))

(declare-fun b!6492432 () Bool)

(declare-fun e!3934539 () Bool)

(declare-fun e!3934543 () Bool)

(assert (=> b!6492432 (= e!3934539 e!3934543)))

(declare-fun res!2666422 () Bool)

(assert (=> b!6492432 (= res!2666422 (not (nullable!6362 (reg!16698 (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292)))))))))

(assert (=> b!6492432 (=> (not res!2666422) (not e!3934543))))

(declare-fun b!6492433 () Bool)

(declare-fun e!3934537 () Bool)

(assert (=> b!6492433 (= e!3934537 e!3934539)))

(declare-fun c!1189890 () Bool)

(assert (=> b!6492433 (= c!1189890 ((_ is Star!16369) (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292)))))))

(declare-fun b!6492434 () Bool)

(declare-fun call!562136 () Bool)

(assert (=> b!6492434 (= e!3934543 call!562136)))

(declare-fun b!6492435 () Bool)

(assert (=> b!6492435 (= e!3934539 e!3934540)))

(assert (=> b!6492435 (= c!1189891 ((_ is Union!16369) (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292)))))))

(declare-fun d!2037110 () Bool)

(declare-fun res!2666420 () Bool)

(assert (=> d!2037110 (=> res!2666420 e!3934537)))

(assert (=> d!2037110 (= res!2666420 ((_ is ElementMatch!16369) (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292)))))))

(assert (=> d!2037110 (= (validRegex!8105 (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292)))) e!3934537)))

(declare-fun bm!562131 () Bool)

(assert (=> bm!562131 (= call!562136 (validRegex!8105 (ite c!1189890 (reg!16698 (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292)))) (ite c!1189891 (regOne!33251 (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292)))) (regOne!33250 (ite c!1189681 (reg!16698 r!7292) (ite c!1189682 (regOne!33251 r!7292) (regOne!33250 r!7292))))))))))

(declare-fun b!6492436 () Bool)

(declare-fun e!3934541 () Bool)

(assert (=> b!6492436 (= e!3934541 call!562137)))

(declare-fun b!6492437 () Bool)

(declare-fun res!2666421 () Bool)

(assert (=> b!6492437 (=> (not res!2666421) (not e!3934541))))

(assert (=> b!6492437 (= res!2666421 call!562135)))

(assert (=> b!6492437 (= e!3934540 e!3934541)))

(declare-fun bm!562132 () Bool)

(assert (=> bm!562132 (= call!562135 call!562136)))

(assert (= (and d!2037110 (not res!2666420)) b!6492433))

(assert (= (and b!6492433 c!1189890) b!6492432))

(assert (= (and b!6492433 (not c!1189890)) b!6492435))

(assert (= (and b!6492432 res!2666422) b!6492434))

(assert (= (and b!6492435 c!1189891) b!6492437))

(assert (= (and b!6492435 (not c!1189891)) b!6492429))

(assert (= (and b!6492437 res!2666421) b!6492436))

(assert (= (and b!6492429 (not res!2666419)) b!6492430))

(assert (= (and b!6492430 res!2666423) b!6492431))

(assert (= (or b!6492436 b!6492431) bm!562130))

(assert (= (or b!6492437 b!6492430) bm!562132))

(assert (= (or b!6492434 bm!562132) bm!562131))

(declare-fun m!7281120 () Bool)

(assert (=> bm!562130 m!7281120))

(declare-fun m!7281122 () Bool)

(assert (=> b!6492432 m!7281122))

(declare-fun m!7281124 () Bool)

(assert (=> bm!562131 m!7281124))

(assert (=> bm!562005 d!2037110))

(declare-fun d!2037112 () Bool)

(assert (=> d!2037112 true))

(declare-fun setRes!44229 () Bool)

(assert (=> d!2037112 setRes!44229))

(declare-fun condSetEmpty!44229 () Bool)

(declare-fun res!2666424 () (InoxSet Context!11506))

(assert (=> d!2037112 (= condSetEmpty!44229 (= res!2666424 ((as const (Array Context!11506 Bool)) false)))))

(assert (=> d!2037112 (= (choose!48171 lt!2389660 lambda!359438) res!2666424)))

(declare-fun setIsEmpty!44229 () Bool)

(assert (=> setIsEmpty!44229 setRes!44229))

(declare-fun tp!1796826 () Bool)

(declare-fun setNonEmpty!44229 () Bool)

(declare-fun setElem!44229 () Context!11506)

(declare-fun e!3934544 () Bool)

(assert (=> setNonEmpty!44229 (= setRes!44229 (and tp!1796826 (inv!84169 setElem!44229) e!3934544))))

(declare-fun setRest!44229 () (InoxSet Context!11506))

(assert (=> setNonEmpty!44229 (= res!2666424 ((_ map or) (store ((as const (Array Context!11506 Bool)) false) setElem!44229 true) setRest!44229))))

(declare-fun b!6492438 () Bool)

(declare-fun tp!1796825 () Bool)

(assert (=> b!6492438 (= e!3934544 tp!1796825)))

(assert (= (and d!2037112 condSetEmpty!44229) setIsEmpty!44229))

(assert (= (and d!2037112 (not condSetEmpty!44229)) setNonEmpty!44229))

(assert (= setNonEmpty!44229 b!6492438))

(declare-fun m!7281126 () Bool)

(assert (=> setNonEmpty!44229 m!7281126))

(assert (=> d!2036396 d!2037112))

(declare-fun d!2037114 () Bool)

(assert (=> d!2037114 (= (head!13211 (_1!36651 lt!2389655)) (h!71730 (_1!36651 lt!2389655)))))

(assert (=> b!6490915 d!2037114))

(assert (=> b!6491114 d!2036448))

(assert (=> b!6491399 d!2037000))

(assert (=> b!6491399 d!2037002))

(assert (=> b!6491399 d!2037004))

(declare-fun b!6492439 () Bool)

(declare-fun e!3934546 () Option!16260)

(declare-fun e!3934548 () Option!16260)

(assert (=> b!6492439 (= e!3934546 e!3934548)))

(declare-fun c!1189892 () Bool)

(assert (=> b!6492439 (= c!1189892 ((_ is Nil!65282) (t!379034 s!2326)))))

(declare-fun b!6492440 () Bool)

(declare-fun e!3934547 () Bool)

(assert (=> b!6492440 (= e!3934547 (matchR!8552 (regTwo!33250 r!7292) (t!379034 s!2326)))))

(declare-fun b!6492441 () Bool)

(declare-fun e!3934545 () Bool)

(declare-fun lt!2389923 () Option!16260)

(assert (=> b!6492441 (= e!3934545 (not (isDefined!12963 lt!2389923)))))

(declare-fun b!6492442 () Bool)

(declare-fun lt!2389924 () Unit!158807)

(declare-fun lt!2389922 () Unit!158807)

(assert (=> b!6492442 (= lt!2389924 lt!2389922)))

(assert (=> b!6492442 (= (++!14448 (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (Cons!65282 (h!71730 (t!379034 s!2326)) Nil!65282)) (t!379034 (t!379034 s!2326))) s!2326)))

(assert (=> b!6492442 (= lt!2389922 (lemmaMoveElementToOtherListKeepsConcatEq!2523 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (h!71730 (t!379034 s!2326)) (t!379034 (t!379034 s!2326)) s!2326))))

(assert (=> b!6492442 (= e!3934548 (findConcatSeparation!2674 (regOne!33250 r!7292) (regTwo!33250 r!7292) (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (Cons!65282 (h!71730 (t!379034 s!2326)) Nil!65282)) (t!379034 (t!379034 s!2326)) s!2326))))

(declare-fun b!6492443 () Bool)

(declare-fun res!2666429 () Bool)

(declare-fun e!3934549 () Bool)

(assert (=> b!6492443 (=> (not res!2666429) (not e!3934549))))

(assert (=> b!6492443 (= res!2666429 (matchR!8552 (regOne!33250 r!7292) (_1!36651 (get!22637 lt!2389923))))))

(declare-fun b!6492444 () Bool)

(assert (=> b!6492444 (= e!3934546 (Some!16259 (tuple2!66697 (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (t!379034 s!2326))))))

(declare-fun d!2037116 () Bool)

(assert (=> d!2037116 e!3934545))

(declare-fun res!2666427 () Bool)

(assert (=> d!2037116 (=> res!2666427 e!3934545)))

(assert (=> d!2037116 (= res!2666427 e!3934549)))

(declare-fun res!2666426 () Bool)

(assert (=> d!2037116 (=> (not res!2666426) (not e!3934549))))

(assert (=> d!2037116 (= res!2666426 (isDefined!12963 lt!2389923))))

(assert (=> d!2037116 (= lt!2389923 e!3934546)))

(declare-fun c!1189893 () Bool)

(assert (=> d!2037116 (= c!1189893 e!3934547)))

(declare-fun res!2666425 () Bool)

(assert (=> d!2037116 (=> (not res!2666425) (not e!3934547))))

(assert (=> d!2037116 (= res!2666425 (matchR!8552 (regOne!33250 r!7292) (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282))))))

(assert (=> d!2037116 (validRegex!8105 (regOne!33250 r!7292))))

(assert (=> d!2037116 (= (findConcatSeparation!2674 (regOne!33250 r!7292) (regTwo!33250 r!7292) (++!14448 Nil!65282 (Cons!65282 (h!71730 s!2326) Nil!65282)) (t!379034 s!2326) s!2326) lt!2389923)))

(declare-fun b!6492445 () Bool)

(assert (=> b!6492445 (= e!3934549 (= (++!14448 (_1!36651 (get!22637 lt!2389923)) (_2!36651 (get!22637 lt!2389923))) s!2326))))

(declare-fun b!6492446 () Bool)

(declare-fun res!2666428 () Bool)

(assert (=> b!6492446 (=> (not res!2666428) (not e!3934549))))

(assert (=> b!6492446 (= res!2666428 (matchR!8552 (regTwo!33250 r!7292) (_2!36651 (get!22637 lt!2389923))))))

(declare-fun b!6492447 () Bool)

(assert (=> b!6492447 (= e!3934548 None!16259)))

(assert (= (and d!2037116 res!2666425) b!6492440))

(assert (= (and d!2037116 c!1189893) b!6492444))

(assert (= (and d!2037116 (not c!1189893)) b!6492439))

(assert (= (and b!6492439 c!1189892) b!6492447))

(assert (= (and b!6492439 (not c!1189892)) b!6492442))

(assert (= (and d!2037116 res!2666426) b!6492443))

(assert (= (and b!6492443 res!2666429) b!6492446))

(assert (= (and b!6492446 res!2666428) b!6492445))

(assert (= (and d!2037116 (not res!2666427)) b!6492441))

(declare-fun m!7281128 () Bool)

(assert (=> d!2037116 m!7281128))

(assert (=> d!2037116 m!7279624))

(declare-fun m!7281130 () Bool)

(assert (=> d!2037116 m!7281130))

(assert (=> d!2037116 m!7279900))

(declare-fun m!7281132 () Bool)

(assert (=> b!6492443 m!7281132))

(declare-fun m!7281134 () Bool)

(assert (=> b!6492443 m!7281134))

(assert (=> b!6492445 m!7281132))

(declare-fun m!7281136 () Bool)

(assert (=> b!6492445 m!7281136))

(assert (=> b!6492442 m!7279624))

(assert (=> b!6492442 m!7280936))

(assert (=> b!6492442 m!7280936))

(assert (=> b!6492442 m!7280938))

(assert (=> b!6492442 m!7279624))

(assert (=> b!6492442 m!7280940))

(assert (=> b!6492442 m!7280936))

(declare-fun m!7281138 () Bool)

(assert (=> b!6492442 m!7281138))

(assert (=> b!6492440 m!7280944))

(assert (=> b!6492441 m!7281128))

(assert (=> b!6492446 m!7281132))

(declare-fun m!7281140 () Bool)

(assert (=> b!6492446 m!7281140))

(assert (=> b!6491399 d!2037116))

(declare-fun b!6492448 () Bool)

(declare-fun e!3934551 () Bool)

(assert (=> b!6492448 (= e!3934551 (nullable!6362 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389611)))))))))

(declare-fun b!6492449 () Bool)

(declare-fun e!3934550 () (InoxSet Context!11506))

(declare-fun e!3934552 () (InoxSet Context!11506))

(assert (=> b!6492449 (= e!3934550 e!3934552)))

(declare-fun c!1189895 () Bool)

(assert (=> b!6492449 (= c!1189895 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389611))))))))

(declare-fun b!6492450 () Bool)

(declare-fun call!562138 () (InoxSet Context!11506))

(assert (=> b!6492450 (= e!3934552 call!562138)))

(declare-fun bm!562133 () Bool)

(assert (=> bm!562133 (= call!562138 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389611))))) (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389611)))))) (h!71730 s!2326)))))

(declare-fun b!6492452 () Bool)

(assert (=> b!6492452 (= e!3934552 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2037118 () Bool)

(declare-fun c!1189894 () Bool)

(assert (=> d!2037118 (= c!1189894 e!3934551)))

(declare-fun res!2666430 () Bool)

(assert (=> d!2037118 (=> (not res!2666430) (not e!3934551))))

(assert (=> d!2037118 (= res!2666430 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389611))))))))

(assert (=> d!2037118 (= (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 lt!2389611))) (h!71730 s!2326)) e!3934550)))

(declare-fun b!6492451 () Bool)

(assert (=> b!6492451 (= e!3934550 ((_ map or) call!562138 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389611)))))) (h!71730 s!2326))))))

(assert (= (and d!2037118 res!2666430) b!6492448))

(assert (= (and d!2037118 c!1189894) b!6492451))

(assert (= (and d!2037118 (not c!1189894)) b!6492449))

(assert (= (and b!6492449 c!1189895) b!6492450))

(assert (= (and b!6492449 (not c!1189895)) b!6492452))

(assert (= (or b!6492451 b!6492450) bm!562133))

(declare-fun m!7281142 () Bool)

(assert (=> b!6492448 m!7281142))

(declare-fun m!7281144 () Bool)

(assert (=> bm!562133 m!7281144))

(declare-fun m!7281146 () Bool)

(assert (=> b!6492451 m!7281146))

(assert (=> b!6490706 d!2037118))

(assert (=> b!6491206 d!2036906))

(assert (=> b!6491561 d!2037034))

(assert (=> d!2036716 d!2037028))

(declare-fun e!3934554 () Bool)

(declare-fun b!6492456 () Bool)

(declare-fun lt!2389925 () List!65406)

(assert (=> b!6492456 (= e!3934554 (or (not (= (_2!36651 lt!2389655) Nil!65282)) (= lt!2389925 (t!379034 lt!2389620))))))

(declare-fun b!6492455 () Bool)

(declare-fun res!2666432 () Bool)

(assert (=> b!6492455 (=> (not res!2666432) (not e!3934554))))

(assert (=> b!6492455 (= res!2666432 (= (size!40427 lt!2389925) (+ (size!40427 (t!379034 lt!2389620)) (size!40427 (_2!36651 lt!2389655)))))))

(declare-fun d!2037120 () Bool)

(assert (=> d!2037120 e!3934554))

(declare-fun res!2666431 () Bool)

(assert (=> d!2037120 (=> (not res!2666431) (not e!3934554))))

(assert (=> d!2037120 (= res!2666431 (= (content!12442 lt!2389925) ((_ map or) (content!12442 (t!379034 lt!2389620)) (content!12442 (_2!36651 lt!2389655)))))))

(declare-fun e!3934553 () List!65406)

(assert (=> d!2037120 (= lt!2389925 e!3934553)))

(declare-fun c!1189896 () Bool)

(assert (=> d!2037120 (= c!1189896 ((_ is Nil!65282) (t!379034 lt!2389620)))))

(assert (=> d!2037120 (= (++!14448 (t!379034 lt!2389620) (_2!36651 lt!2389655)) lt!2389925)))

(declare-fun b!6492454 () Bool)

(assert (=> b!6492454 (= e!3934553 (Cons!65282 (h!71730 (t!379034 lt!2389620)) (++!14448 (t!379034 (t!379034 lt!2389620)) (_2!36651 lt!2389655))))))

(declare-fun b!6492453 () Bool)

(assert (=> b!6492453 (= e!3934553 (_2!36651 lt!2389655))))

(assert (= (and d!2037120 c!1189896) b!6492453))

(assert (= (and d!2037120 (not c!1189896)) b!6492454))

(assert (= (and d!2037120 res!2666431) b!6492455))

(assert (= (and b!6492455 res!2666432) b!6492456))

(declare-fun m!7281148 () Bool)

(assert (=> b!6492455 m!7281148))

(assert (=> b!6492455 m!7281052))

(assert (=> b!6492455 m!7279642))

(declare-fun m!7281150 () Bool)

(assert (=> d!2037120 m!7281150))

(assert (=> d!2037120 m!7281118))

(assert (=> d!2037120 m!7279648))

(declare-fun m!7281152 () Bool)

(assert (=> b!6492454 m!7281152))

(assert (=> b!6491585 d!2037120))

(declare-fun d!2037122 () Bool)

(assert (=> d!2037122 (= (nullable!6362 (reg!16698 (regOne!33250 r!7292))) (nullableFct!2300 (reg!16698 (regOne!33250 r!7292))))))

(declare-fun bs!1648373 () Bool)

(assert (= bs!1648373 d!2037122))

(declare-fun m!7281154 () Bool)

(assert (=> bs!1648373 m!7281154))

(assert (=> b!6491152 d!2037122))

(declare-fun bs!1648374 () Bool)

(declare-fun b!6492463 () Bool)

(assert (= bs!1648374 (and b!6492463 b!6490643)))

(declare-fun lambda!359578 () Int)

(assert (=> bs!1648374 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regOne!33251 lt!2389659)) (reg!16698 (regOne!33250 r!7292))) (= (regOne!33251 lt!2389659) lt!2389631)) (= lambda!359578 lambda!359442))))

(declare-fun bs!1648375 () Bool)

(assert (= bs!1648375 (and b!6492463 b!6492359)))

(assert (=> bs!1648375 (not (= lambda!359578 lambda!359577))))

(declare-fun bs!1648376 () Bool)

(assert (= bs!1648376 (and b!6492463 d!2036598)))

(assert (=> bs!1648376 (not (= lambda!359578 lambda!359524))))

(declare-fun bs!1648377 () Bool)

(assert (= bs!1648377 (and b!6492463 d!2036464)))

(assert (=> bs!1648377 (not (= lambda!359578 lambda!359480))))

(assert (=> bs!1648374 (not (= lambda!359578 lambda!359443))))

(declare-fun bs!1648378 () Bool)

(assert (= bs!1648378 (and b!6492463 b!6492283)))

(assert (=> bs!1648378 (= (and (= (reg!16698 (regOne!33251 lt!2389659)) (reg!16698 (regOne!33251 r!7292))) (= (regOne!33251 lt!2389659) (regOne!33251 r!7292))) (= lambda!359578 lambda!359565))))

(declare-fun bs!1648379 () Bool)

(assert (= bs!1648379 (and b!6492463 d!2036472)))

(assert (=> bs!1648379 (not (= lambda!359578 lambda!359485))))

(declare-fun bs!1648380 () Bool)

(assert (= bs!1648380 (and b!6492463 b!6492348)))

(assert (=> bs!1648380 (not (= lambda!359578 lambda!359575))))

(declare-fun bs!1648381 () Bool)

(assert (= bs!1648381 (and b!6492463 b!6491888)))

(assert (=> bs!1648381 (not (= lambda!359578 lambda!359551))))

(declare-fun bs!1648382 () Bool)

(assert (= bs!1648382 (and b!6492463 b!6490750)))

(assert (=> bs!1648382 (not (= lambda!359578 lambda!359453))))

(declare-fun bs!1648383 () Bool)

(assert (= bs!1648383 (and b!6492463 b!6490649)))

(assert (=> bs!1648383 (not (= lambda!359578 lambda!359436))))

(declare-fun bs!1648384 () Bool)

(assert (= bs!1648384 (and b!6492463 b!6490618)))

(assert (=> bs!1648384 (not (= lambda!359578 lambda!359440))))

(declare-fun bs!1648385 () Bool)

(assert (= bs!1648385 (and b!6492463 b!6490748)))

(assert (=> bs!1648385 (= (and (= (reg!16698 (regOne!33251 lt!2389659)) (reg!16698 r!7292)) (= (regOne!33251 lt!2389659) r!7292)) (= lambda!359578 lambda!359452))))

(declare-fun bs!1648386 () Bool)

(assert (= bs!1648386 (and b!6492463 b!6492132)))

(assert (=> bs!1648386 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regOne!33251 lt!2389659)) (reg!16698 (regTwo!33251 lt!2389631))) (= (regOne!33251 lt!2389659) (regTwo!33251 lt!2389631))) (= lambda!359578 lambda!359558))))

(declare-fun bs!1648387 () Bool)

(assert (= bs!1648387 (and b!6492463 b!6492357)))

(assert (=> bs!1648387 (= (and (= (reg!16698 (regOne!33251 lt!2389659)) (reg!16698 (regTwo!33251 r!7292))) (= (regOne!33251 lt!2389659) (regTwo!33251 r!7292))) (= lambda!359578 lambda!359576))))

(declare-fun bs!1648388 () Bool)

(assert (= bs!1648388 (and b!6492463 d!2036458)))

(assert (=> bs!1648388 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regOne!33251 lt!2389659)) (reg!16698 (regOne!33250 r!7292))) (= (regOne!33251 lt!2389659) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359578 lambda!359470))))

(assert (=> bs!1648384 (not (= lambda!359578 lambda!359439))))

(declare-fun bs!1648389 () Bool)

(assert (= bs!1648389 (and b!6492463 d!2036606)))

(assert (=> bs!1648389 (not (= lambda!359578 lambda!359528))))

(assert (=> bs!1648374 (not (= lambda!359578 lambda!359441))))

(declare-fun bs!1648390 () Bool)

(assert (= bs!1648390 (and b!6492463 b!6492134)))

(assert (=> bs!1648390 (not (= lambda!359578 lambda!359559))))

(declare-fun bs!1648391 () Bool)

(assert (= bs!1648391 (and b!6492463 d!2036516)))

(assert (=> bs!1648391 (not (= lambda!359578 lambda!359498))))

(declare-fun bs!1648392 () Bool)

(assert (= bs!1648392 (and b!6492463 b!6491179)))

(assert (=> bs!1648392 (= (and (= (reg!16698 (regOne!33251 lt!2389659)) (reg!16698 lt!2389659)) (= (regOne!33251 lt!2389659) lt!2389659)) (= lambda!359578 lambda!359500))))

(declare-fun bs!1648393 () Bool)

(assert (= bs!1648393 (and b!6492463 b!6492285)))

(assert (=> bs!1648393 (not (= lambda!359578 lambda!359566))))

(declare-fun bs!1648394 () Bool)

(assert (= bs!1648394 (and b!6492463 b!6491886)))

(assert (=> bs!1648394 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regOne!33251 lt!2389659)) (reg!16698 (regOne!33251 lt!2389631))) (= (regOne!33251 lt!2389659) (regOne!33251 lt!2389631))) (= lambda!359578 lambda!359550))))

(assert (=> bs!1648388 (not (= lambda!359578 lambda!359469))))

(declare-fun bs!1648395 () Bool)

(assert (= bs!1648395 (and b!6492463 b!6492346)))

(assert (=> bs!1648395 (= (and (= (reg!16698 (regOne!33251 lt!2389659)) (reg!16698 (regTwo!33251 lt!2389659))) (= (regOne!33251 lt!2389659) (regTwo!33251 lt!2389659))) (= lambda!359578 lambda!359574))))

(assert (=> bs!1648389 (not (= lambda!359578 lambda!359529))))

(assert (=> bs!1648391 (not (= lambda!359578 lambda!359497))))

(assert (=> bs!1648383 (not (= lambda!359578 lambda!359437))))

(declare-fun bs!1648396 () Bool)

(assert (= bs!1648396 (and b!6492463 b!6490932)))

(assert (=> bs!1648396 (not (= lambda!359578 lambda!359462))))

(assert (=> bs!1648377 (not (= lambda!359578 lambda!359477))))

(declare-fun bs!1648397 () Bool)

(assert (= bs!1648397 (and b!6492463 b!6490930)))

(assert (=> bs!1648397 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (reg!16698 (regOne!33251 lt!2389659)) (reg!16698 lt!2389631)) (= (regOne!33251 lt!2389659) lt!2389631)) (= lambda!359578 lambda!359459))))

(declare-fun bs!1648398 () Bool)

(assert (= bs!1648398 (and b!6492463 b!6491181)))

(assert (=> bs!1648398 (not (= lambda!359578 lambda!359501))))

(declare-fun bs!1648399 () Bool)

(assert (= bs!1648399 (and b!6492463 d!2036524)))

(assert (=> bs!1648399 (not (= lambda!359578 lambda!359499))))

(declare-fun bs!1648400 () Bool)

(assert (= bs!1648400 (and b!6492463 d!2037036)))

(assert (=> bs!1648400 (not (= lambda!359578 lambda!359569))))

(assert (=> b!6492463 true))

(assert (=> b!6492463 true))

(declare-fun bs!1648401 () Bool)

(declare-fun b!6492465 () Bool)

(assert (= bs!1648401 (and b!6492465 b!6490643)))

(declare-fun lambda!359579 () Int)

(assert (=> bs!1648401 (not (= lambda!359579 lambda!359442))))

(declare-fun bs!1648402 () Bool)

(assert (= bs!1648402 (and b!6492465 b!6492359)))

(assert (=> bs!1648402 (= (and (= (regOne!33250 (regOne!33251 lt!2389659)) (regOne!33250 (regTwo!33251 r!7292))) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 (regTwo!33251 r!7292)))) (= lambda!359579 lambda!359577))))

(declare-fun bs!1648403 () Bool)

(assert (= bs!1648403 (and b!6492465 d!2036598)))

(assert (=> bs!1648403 (not (= lambda!359579 lambda!359524))))

(declare-fun bs!1648404 () Bool)

(assert (= bs!1648404 (and b!6492465 b!6492463)))

(assert (=> bs!1648404 (not (= lambda!359579 lambda!359578))))

(declare-fun bs!1648405 () Bool)

(assert (= bs!1648405 (and b!6492465 d!2036464)))

(assert (=> bs!1648405 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regOne!33251 lt!2389659)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regOne!33251 lt!2389659)) lt!2389631)) (= lambda!359579 lambda!359480))))

(assert (=> bs!1648401 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regOne!33251 lt!2389659)) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 (regOne!33251 lt!2389659)) lt!2389631)) (= lambda!359579 lambda!359443))))

(declare-fun bs!1648406 () Bool)

(assert (= bs!1648406 (and b!6492465 b!6492283)))

(assert (=> bs!1648406 (not (= lambda!359579 lambda!359565))))

(declare-fun bs!1648407 () Bool)

(assert (= bs!1648407 (and b!6492465 d!2036472)))

(assert (=> bs!1648407 (not (= lambda!359579 lambda!359485))))

(declare-fun bs!1648408 () Bool)

(assert (= bs!1648408 (and b!6492465 b!6492348)))

(assert (=> bs!1648408 (= (and (= (regOne!33250 (regOne!33251 lt!2389659)) (regOne!33250 (regTwo!33251 lt!2389659))) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 (regTwo!33251 lt!2389659)))) (= lambda!359579 lambda!359575))))

(declare-fun bs!1648409 () Bool)

(assert (= bs!1648409 (and b!6492465 b!6491888)))

(assert (=> bs!1648409 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regOne!33251 lt!2389659)) (regOne!33250 (regOne!33251 lt!2389631))) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 (regOne!33251 lt!2389631)))) (= lambda!359579 lambda!359551))))

(declare-fun bs!1648410 () Bool)

(assert (= bs!1648410 (and b!6492465 b!6490750)))

(assert (=> bs!1648410 (= (and (= (regOne!33250 (regOne!33251 lt!2389659)) (regOne!33250 r!7292)) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 r!7292))) (= lambda!359579 lambda!359453))))

(declare-fun bs!1648411 () Bool)

(assert (= bs!1648411 (and b!6492465 b!6490649)))

(assert (=> bs!1648411 (not (= lambda!359579 lambda!359436))))

(declare-fun bs!1648412 () Bool)

(assert (= bs!1648412 (and b!6492465 b!6490618)))

(assert (=> bs!1648412 (= (and (= (regOne!33250 (regOne!33251 lt!2389659)) lt!2389631) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 r!7292))) (= lambda!359579 lambda!359440))))

(declare-fun bs!1648413 () Bool)

(assert (= bs!1648413 (and b!6492465 b!6490748)))

(assert (=> bs!1648413 (not (= lambda!359579 lambda!359452))))

(declare-fun bs!1648414 () Bool)

(assert (= bs!1648414 (and b!6492465 b!6492132)))

(assert (=> bs!1648414 (not (= lambda!359579 lambda!359558))))

(declare-fun bs!1648415 () Bool)

(assert (= bs!1648415 (and b!6492465 b!6492357)))

(assert (=> bs!1648415 (not (= lambda!359579 lambda!359576))))

(declare-fun bs!1648416 () Bool)

(assert (= bs!1648416 (and b!6492465 d!2036458)))

(assert (=> bs!1648416 (not (= lambda!359579 lambda!359470))))

(assert (=> bs!1648412 (not (= lambda!359579 lambda!359439))))

(declare-fun bs!1648417 () Bool)

(assert (= bs!1648417 (and b!6492465 d!2036606)))

(assert (=> bs!1648417 (not (= lambda!359579 lambda!359528))))

(assert (=> bs!1648401 (not (= lambda!359579 lambda!359441))))

(declare-fun bs!1648418 () Bool)

(assert (= bs!1648418 (and b!6492465 b!6492134)))

(assert (=> bs!1648418 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regOne!33251 lt!2389659)) (regOne!33250 (regTwo!33251 lt!2389631))) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 (regTwo!33251 lt!2389631)))) (= lambda!359579 lambda!359559))))

(declare-fun bs!1648419 () Bool)

(assert (= bs!1648419 (and b!6492465 d!2036516)))

(assert (=> bs!1648419 (= (and (= (regOne!33250 (regOne!33251 lt!2389659)) lt!2389631) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 r!7292))) (= lambda!359579 lambda!359498))))

(declare-fun bs!1648420 () Bool)

(assert (= bs!1648420 (and b!6492465 b!6491179)))

(assert (=> bs!1648420 (not (= lambda!359579 lambda!359500))))

(declare-fun bs!1648421 () Bool)

(assert (= bs!1648421 (and b!6492465 b!6492285)))

(assert (=> bs!1648421 (= (and (= (regOne!33250 (regOne!33251 lt!2389659)) (regOne!33250 (regOne!33251 r!7292))) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 (regOne!33251 r!7292)))) (= lambda!359579 lambda!359566))))

(declare-fun bs!1648422 () Bool)

(assert (= bs!1648422 (and b!6492465 b!6491886)))

(assert (=> bs!1648422 (not (= lambda!359579 lambda!359550))))

(assert (=> bs!1648416 (not (= lambda!359579 lambda!359469))))

(declare-fun bs!1648423 () Bool)

(assert (= bs!1648423 (and b!6492465 b!6492346)))

(assert (=> bs!1648423 (not (= lambda!359579 lambda!359574))))

(assert (=> bs!1648417 (= (and (= (regOne!33250 (regOne!33251 lt!2389659)) (regOne!33250 r!7292)) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 r!7292))) (= lambda!359579 lambda!359529))))

(assert (=> bs!1648419 (not (= lambda!359579 lambda!359497))))

(assert (=> bs!1648411 (= (and (= (regOne!33250 (regOne!33251 lt!2389659)) (regOne!33250 r!7292)) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 r!7292))) (= lambda!359579 lambda!359437))))

(declare-fun bs!1648424 () Bool)

(assert (= bs!1648424 (and b!6492465 b!6490932)))

(assert (=> bs!1648424 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 (regOne!33251 lt!2389659)) (regOne!33250 lt!2389631)) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 lt!2389631))) (= lambda!359579 lambda!359462))))

(assert (=> bs!1648405 (not (= lambda!359579 lambda!359477))))

(declare-fun bs!1648425 () Bool)

(assert (= bs!1648425 (and b!6492465 b!6490930)))

(assert (=> bs!1648425 (not (= lambda!359579 lambda!359459))))

(declare-fun bs!1648426 () Bool)

(assert (= bs!1648426 (and b!6492465 b!6491181)))

(assert (=> bs!1648426 (= (and (= (regOne!33250 (regOne!33251 lt!2389659)) (regOne!33250 lt!2389659)) (= (regTwo!33250 (regOne!33251 lt!2389659)) (regTwo!33250 lt!2389659))) (= lambda!359579 lambda!359501))))

(declare-fun bs!1648427 () Bool)

(assert (= bs!1648427 (and b!6492465 d!2036524)))

(assert (=> bs!1648427 (not (= lambda!359579 lambda!359499))))

(declare-fun bs!1648428 () Bool)

(assert (= bs!1648428 (and b!6492465 d!2037036)))

(assert (=> bs!1648428 (not (= lambda!359579 lambda!359569))))

(assert (=> b!6492465 true))

(assert (=> b!6492465 true))

(declare-fun b!6492457 () Bool)

(declare-fun e!3934560 () Bool)

(declare-fun e!3934561 () Bool)

(assert (=> b!6492457 (= e!3934560 e!3934561)))

(declare-fun res!2666435 () Bool)

(assert (=> b!6492457 (= res!2666435 (not ((_ is EmptyLang!16369) (regOne!33251 lt!2389659))))))

(assert (=> b!6492457 (=> (not res!2666435) (not e!3934561))))

(declare-fun bm!562134 () Bool)

(declare-fun call!562139 () Bool)

(assert (=> bm!562134 (= call!562139 (isEmpty!37477 s!2326))))

(declare-fun b!6492458 () Bool)

(declare-fun e!3934556 () Bool)

(declare-fun e!3934555 () Bool)

(assert (=> b!6492458 (= e!3934556 e!3934555)))

(declare-fun res!2666434 () Bool)

(assert (=> b!6492458 (= res!2666434 (matchRSpec!3470 (regOne!33251 (regOne!33251 lt!2389659)) s!2326))))

(assert (=> b!6492458 (=> res!2666434 e!3934555)))

(declare-fun b!6492459 () Bool)

(assert (=> b!6492459 (= e!3934555 (matchRSpec!3470 (regTwo!33251 (regOne!33251 lt!2389659)) s!2326))))

(declare-fun b!6492460 () Bool)

(declare-fun res!2666433 () Bool)

(declare-fun e!3934558 () Bool)

(assert (=> b!6492460 (=> res!2666433 e!3934558)))

(assert (=> b!6492460 (= res!2666433 call!562139)))

(declare-fun e!3934559 () Bool)

(assert (=> b!6492460 (= e!3934559 e!3934558)))

(declare-fun d!2037124 () Bool)

(declare-fun c!1189897 () Bool)

(assert (=> d!2037124 (= c!1189897 ((_ is EmptyExpr!16369) (regOne!33251 lt!2389659)))))

(assert (=> d!2037124 (= (matchRSpec!3470 (regOne!33251 lt!2389659) s!2326) e!3934560)))

(declare-fun b!6492461 () Bool)

(declare-fun e!3934557 () Bool)

(assert (=> b!6492461 (= e!3934557 (= s!2326 (Cons!65282 (c!1189393 (regOne!33251 lt!2389659)) Nil!65282)))))

(declare-fun b!6492462 () Bool)

(assert (=> b!6492462 (= e!3934560 call!562139)))

(declare-fun call!562140 () Bool)

(assert (=> b!6492463 (= e!3934558 call!562140)))

(declare-fun b!6492464 () Bool)

(assert (=> b!6492464 (= e!3934556 e!3934559)))

(declare-fun c!1189898 () Bool)

(assert (=> b!6492464 (= c!1189898 ((_ is Star!16369) (regOne!33251 lt!2389659)))))

(assert (=> b!6492465 (= e!3934559 call!562140)))

(declare-fun bm!562135 () Bool)

(assert (=> bm!562135 (= call!562140 (Exists!3439 (ite c!1189898 lambda!359578 lambda!359579)))))

(declare-fun b!6492466 () Bool)

(declare-fun c!1189899 () Bool)

(assert (=> b!6492466 (= c!1189899 ((_ is Union!16369) (regOne!33251 lt!2389659)))))

(assert (=> b!6492466 (= e!3934557 e!3934556)))

(declare-fun b!6492467 () Bool)

(declare-fun c!1189900 () Bool)

(assert (=> b!6492467 (= c!1189900 ((_ is ElementMatch!16369) (regOne!33251 lt!2389659)))))

(assert (=> b!6492467 (= e!3934561 e!3934557)))

(assert (= (and d!2037124 c!1189897) b!6492462))

(assert (= (and d!2037124 (not c!1189897)) b!6492457))

(assert (= (and b!6492457 res!2666435) b!6492467))

(assert (= (and b!6492467 c!1189900) b!6492461))

(assert (= (and b!6492467 (not c!1189900)) b!6492466))

(assert (= (and b!6492466 c!1189899) b!6492458))

(assert (= (and b!6492466 (not c!1189899)) b!6492464))

(assert (= (and b!6492458 (not res!2666434)) b!6492459))

(assert (= (and b!6492464 c!1189898) b!6492460))

(assert (= (and b!6492464 (not c!1189898)) b!6492465))

(assert (= (and b!6492460 (not res!2666433)) b!6492463))

(assert (= (or b!6492463 b!6492465) bm!562135))

(assert (= (or b!6492462 b!6492460) bm!562134))

(assert (=> bm!562134 m!7279298))

(declare-fun m!7281156 () Bool)

(assert (=> b!6492458 m!7281156))

(declare-fun m!7281158 () Bool)

(assert (=> b!6492459 m!7281158))

(declare-fun m!7281160 () Bool)

(assert (=> bm!562135 m!7281160))

(assert (=> b!6491174 d!2037124))

(declare-fun b!6492468 () Bool)

(declare-fun e!3934562 () List!65407)

(assert (=> b!6492468 (= e!3934562 lt!2389636)))

(declare-fun e!3934563 () Bool)

(declare-fun b!6492471 () Bool)

(declare-fun lt!2389926 () List!65407)

(assert (=> b!6492471 (= e!3934563 (or (not (= lt!2389636 Nil!65283)) (= lt!2389926 (t!379035 lt!2389623))))))

(declare-fun b!6492469 () Bool)

(assert (=> b!6492469 (= e!3934562 (Cons!65283 (h!71731 (t!379035 lt!2389623)) (++!14449 (t!379035 (t!379035 lt!2389623)) lt!2389636)))))

(declare-fun d!2037126 () Bool)

(assert (=> d!2037126 e!3934563))

(declare-fun res!2666436 () Bool)

(assert (=> d!2037126 (=> (not res!2666436) (not e!3934563))))

(assert (=> d!2037126 (= res!2666436 (= (content!12445 lt!2389926) ((_ map or) (content!12445 (t!379035 lt!2389623)) (content!12445 lt!2389636))))))

(assert (=> d!2037126 (= lt!2389926 e!3934562)))

(declare-fun c!1189901 () Bool)

(assert (=> d!2037126 (= c!1189901 ((_ is Nil!65283) (t!379035 lt!2389623)))))

(assert (=> d!2037126 (= (++!14449 (t!379035 lt!2389623) lt!2389636) lt!2389926)))

(declare-fun b!6492470 () Bool)

(declare-fun res!2666437 () Bool)

(assert (=> b!6492470 (=> (not res!2666437) (not e!3934563))))

(assert (=> b!6492470 (= res!2666437 (= (size!40430 lt!2389926) (+ (size!40430 (t!379035 lt!2389623)) (size!40430 lt!2389636))))))

(assert (= (and d!2037126 c!1189901) b!6492468))

(assert (= (and d!2037126 (not c!1189901)) b!6492469))

(assert (= (and d!2037126 res!2666436) b!6492470))

(assert (= (and b!6492470 res!2666437) b!6492471))

(declare-fun m!7281162 () Bool)

(assert (=> b!6492469 m!7281162))

(declare-fun m!7281164 () Bool)

(assert (=> d!2037126 m!7281164))

(declare-fun m!7281166 () Bool)

(assert (=> d!2037126 m!7281166))

(assert (=> d!2037126 m!7280022))

(declare-fun m!7281168 () Bool)

(assert (=> b!6492470 m!7281168))

(declare-fun m!7281170 () Bool)

(assert (=> b!6492470 m!7281170))

(assert (=> b!6492470 m!7280028))

(assert (=> b!6491464 d!2037126))

(declare-fun d!2037128 () Bool)

(assert (=> d!2037128 (= (flatMap!1874 lt!2389660 lambda!359447) (choose!48171 lt!2389660 lambda!359447))))

(declare-fun bs!1648429 () Bool)

(assert (= bs!1648429 d!2037128))

(declare-fun m!7281172 () Bool)

(assert (=> bs!1648429 m!7281172))

(assert (=> d!2036402 d!2037128))

(declare-fun b!6492472 () Bool)

(declare-fun e!3934565 () Bool)

(assert (=> b!6492472 (= e!3934565 (nullable!6362 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))))))))))

(declare-fun b!6492473 () Bool)

(declare-fun e!3934564 () (InoxSet Context!11506))

(declare-fun e!3934566 () (InoxSet Context!11506))

(assert (=> b!6492473 (= e!3934564 e!3934566)))

(declare-fun c!1189903 () Bool)

(assert (=> b!6492473 (= c!1189903 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))))))))

(declare-fun b!6492474 () Bool)

(declare-fun call!562141 () (InoxSet Context!11506))

(assert (=> b!6492474 (= e!3934566 call!562141)))

(declare-fun bm!562136 () Bool)

(assert (=> bm!562136 (= call!562141 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))))) (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))))))) (h!71730 s!2326)))))

(declare-fun b!6492476 () Bool)

(assert (=> b!6492476 (= e!3934566 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2037130 () Bool)

(declare-fun c!1189902 () Bool)

(assert (=> d!2037130 (= c!1189902 e!3934565)))

(declare-fun res!2666438 () Bool)

(assert (=> d!2037130 (=> (not res!2666438) (not e!3934565))))

(assert (=> d!2037130 (= res!2666438 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))))))))

(assert (=> d!2037130 (= (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (h!71730 s!2326)) e!3934564)))

(declare-fun b!6492475 () Bool)

(assert (=> b!6492475 (= e!3934564 ((_ map or) call!562141 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))))))) (h!71730 s!2326))))))

(assert (= (and d!2037130 res!2666438) b!6492472))

(assert (= (and d!2037130 c!1189902) b!6492475))

(assert (= (and d!2037130 (not c!1189902)) b!6492473))

(assert (= (and b!6492473 c!1189903) b!6492474))

(assert (= (and b!6492473 (not c!1189903)) b!6492476))

(assert (= (or b!6492475 b!6492474) bm!562136))

(declare-fun m!7281174 () Bool)

(assert (=> b!6492472 m!7281174))

(declare-fun m!7281176 () Bool)

(assert (=> bm!562136 m!7281176))

(declare-fun m!7281178 () Bool)

(assert (=> b!6492475 m!7281178))

(assert (=> b!6490872 d!2037130))

(declare-fun b!6492477 () Bool)

(declare-fun e!3934568 () Bool)

(assert (=> b!6492477 (= e!3934568 (nullable!6362 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389610)))))))))

(declare-fun b!6492478 () Bool)

(declare-fun e!3934567 () (InoxSet Context!11506))

(declare-fun e!3934569 () (InoxSet Context!11506))

(assert (=> b!6492478 (= e!3934567 e!3934569)))

(declare-fun c!1189905 () Bool)

(assert (=> b!6492478 (= c!1189905 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389610))))))))

(declare-fun b!6492479 () Bool)

(declare-fun call!562142 () (InoxSet Context!11506))

(assert (=> b!6492479 (= e!3934569 call!562142)))

(declare-fun bm!562137 () Bool)

(assert (=> bm!562137 (= call!562142 (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389610))))) (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389610)))))) (h!71730 s!2326)))))

(declare-fun b!6492481 () Bool)

(assert (=> b!6492481 (= e!3934569 ((as const (Array Context!11506 Bool)) false))))

(declare-fun d!2037132 () Bool)

(declare-fun c!1189904 () Bool)

(assert (=> d!2037132 (= c!1189904 e!3934568)))

(declare-fun res!2666439 () Bool)

(assert (=> d!2037132 (=> (not res!2666439) (not e!3934568))))

(assert (=> d!2037132 (= res!2666439 ((_ is Cons!65283) (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389610))))))))

(assert (=> d!2037132 (= (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 lt!2389610))) (h!71730 s!2326)) e!3934567)))

(declare-fun b!6492480 () Bool)

(assert (=> b!6492480 (= e!3934567 ((_ map or) call!562142 (derivationStepZipperUp!1543 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389610)))))) (h!71730 s!2326))))))

(assert (= (and d!2037132 res!2666439) b!6492477))

(assert (= (and d!2037132 c!1189904) b!6492480))

(assert (= (and d!2037132 (not c!1189904)) b!6492478))

(assert (= (and b!6492478 c!1189905) b!6492479))

(assert (= (and b!6492478 (not c!1189905)) b!6492481))

(assert (= (or b!6492480 b!6492479) bm!562137))

(declare-fun m!7281180 () Bool)

(assert (=> b!6492477 m!7281180))

(declare-fun m!7281182 () Bool)

(assert (=> bm!562137 m!7281182))

(declare-fun m!7281184 () Bool)

(assert (=> b!6492480 m!7281184))

(assert (=> b!6491233 d!2037132))

(assert (=> d!2036714 d!2037028))

(assert (=> d!2036598 d!2036588))

(declare-fun b!6492482 () Bool)

(declare-fun res!2666440 () Bool)

(declare-fun e!3934571 () Bool)

(assert (=> b!6492482 (=> res!2666440 e!3934571)))

(assert (=> b!6492482 (= res!2666440 (not ((_ is Concat!25214) (regOne!33250 r!7292))))))

(declare-fun e!3934573 () Bool)

(assert (=> b!6492482 (= e!3934573 e!3934571)))

(declare-fun b!6492483 () Bool)

(declare-fun e!3934575 () Bool)

(assert (=> b!6492483 (= e!3934571 e!3934575)))

(declare-fun res!2666444 () Bool)

(assert (=> b!6492483 (=> (not res!2666444) (not e!3934575))))

(declare-fun call!562143 () Bool)

(assert (=> b!6492483 (= res!2666444 call!562143)))

(declare-fun b!6492484 () Bool)

(declare-fun call!562145 () Bool)

(assert (=> b!6492484 (= e!3934575 call!562145)))

(declare-fun bm!562138 () Bool)

(declare-fun c!1189907 () Bool)

(assert (=> bm!562138 (= call!562145 (validRegex!8105 (ite c!1189907 (regTwo!33251 (regOne!33250 r!7292)) (regTwo!33250 (regOne!33250 r!7292)))))))

(declare-fun b!6492485 () Bool)

(declare-fun e!3934572 () Bool)

(declare-fun e!3934576 () Bool)

(assert (=> b!6492485 (= e!3934572 e!3934576)))

(declare-fun res!2666443 () Bool)

(assert (=> b!6492485 (= res!2666443 (not (nullable!6362 (reg!16698 (regOne!33250 r!7292)))))))

(assert (=> b!6492485 (=> (not res!2666443) (not e!3934576))))

(declare-fun b!6492486 () Bool)

(declare-fun e!3934570 () Bool)

(assert (=> b!6492486 (= e!3934570 e!3934572)))

(declare-fun c!1189906 () Bool)

(assert (=> b!6492486 (= c!1189906 ((_ is Star!16369) (regOne!33250 r!7292)))))

(declare-fun b!6492487 () Bool)

(declare-fun call!562144 () Bool)

(assert (=> b!6492487 (= e!3934576 call!562144)))

(declare-fun b!6492488 () Bool)

(assert (=> b!6492488 (= e!3934572 e!3934573)))

(assert (=> b!6492488 (= c!1189907 ((_ is Union!16369) (regOne!33250 r!7292)))))

(declare-fun d!2037134 () Bool)

(declare-fun res!2666441 () Bool)

(assert (=> d!2037134 (=> res!2666441 e!3934570)))

(assert (=> d!2037134 (= res!2666441 ((_ is ElementMatch!16369) (regOne!33250 r!7292)))))

(assert (=> d!2037134 (= (validRegex!8105 (regOne!33250 r!7292)) e!3934570)))

(declare-fun bm!562139 () Bool)

(assert (=> bm!562139 (= call!562144 (validRegex!8105 (ite c!1189906 (reg!16698 (regOne!33250 r!7292)) (ite c!1189907 (regOne!33251 (regOne!33250 r!7292)) (regOne!33250 (regOne!33250 r!7292))))))))

(declare-fun b!6492489 () Bool)

(declare-fun e!3934574 () Bool)

(assert (=> b!6492489 (= e!3934574 call!562145)))

(declare-fun b!6492490 () Bool)

(declare-fun res!2666442 () Bool)

(assert (=> b!6492490 (=> (not res!2666442) (not e!3934574))))

(assert (=> b!6492490 (= res!2666442 call!562143)))

(assert (=> b!6492490 (= e!3934573 e!3934574)))

(declare-fun bm!562140 () Bool)

(assert (=> bm!562140 (= call!562143 call!562144)))

(assert (= (and d!2037134 (not res!2666441)) b!6492486))

(assert (= (and b!6492486 c!1189906) b!6492485))

(assert (= (and b!6492486 (not c!1189906)) b!6492488))

(assert (= (and b!6492485 res!2666443) b!6492487))

(assert (= (and b!6492488 c!1189907) b!6492490))

(assert (= (and b!6492488 (not c!1189907)) b!6492482))

(assert (= (and b!6492490 res!2666442) b!6492489))

(assert (= (and b!6492482 (not res!2666440)) b!6492483))

(assert (= (and b!6492483 res!2666444) b!6492484))

(assert (= (or b!6492489 b!6492484) bm!562138))

(assert (= (or b!6492490 b!6492483) bm!562140))

(assert (= (or b!6492487 bm!562140) bm!562139))

(declare-fun m!7281186 () Bool)

(assert (=> bm!562138 m!7281186))

(assert (=> b!6492485 m!7279606))

(declare-fun m!7281188 () Bool)

(assert (=> bm!562139 m!7281188))

(assert (=> d!2036598 d!2037134))

(assert (=> d!2036598 d!2036612))

(declare-fun d!2037136 () Bool)

(assert (=> d!2037136 (= (Exists!3439 lambda!359524) (choose!48184 lambda!359524))))

(declare-fun bs!1648430 () Bool)

(assert (= bs!1648430 d!2037136))

(declare-fun m!7281190 () Bool)

(assert (=> bs!1648430 m!7281190))

(assert (=> d!2036598 d!2037136))

(declare-fun bs!1648431 () Bool)

(declare-fun d!2037138 () Bool)

(assert (= bs!1648431 (and d!2037138 b!6490643)))

(declare-fun lambda!359580 () Int)

(assert (=> bs!1648431 (not (= lambda!359580 lambda!359442))))

(declare-fun bs!1648432 () Bool)

(assert (= bs!1648432 (and d!2037138 b!6492359)))

(assert (=> bs!1648432 (not (= lambda!359580 lambda!359577))))

(declare-fun bs!1648433 () Bool)

(assert (= bs!1648433 (and d!2037138 d!2036598)))

(assert (=> bs!1648433 (= lambda!359580 lambda!359524)))

(declare-fun bs!1648434 () Bool)

(assert (= bs!1648434 (and d!2037138 b!6492463)))

(assert (=> bs!1648434 (not (= lambda!359580 lambda!359578))))

(declare-fun bs!1648435 () Bool)

(assert (= bs!1648435 (and d!2037138 d!2036464)))

(assert (=> bs!1648435 (not (= lambda!359580 lambda!359480))))

(assert (=> bs!1648431 (not (= lambda!359580 lambda!359443))))

(declare-fun bs!1648436 () Bool)

(assert (= bs!1648436 (and d!2037138 d!2036472)))

(assert (=> bs!1648436 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359580 lambda!359485))))

(declare-fun bs!1648437 () Bool)

(assert (= bs!1648437 (and d!2037138 b!6492348)))

(assert (=> bs!1648437 (not (= lambda!359580 lambda!359575))))

(declare-fun bs!1648438 () Bool)

(assert (= bs!1648438 (and d!2037138 b!6491888)))

(assert (=> bs!1648438 (not (= lambda!359580 lambda!359551))))

(declare-fun bs!1648439 () Bool)

(assert (= bs!1648439 (and d!2037138 b!6490750)))

(assert (=> bs!1648439 (not (= lambda!359580 lambda!359453))))

(declare-fun bs!1648440 () Bool)

(assert (= bs!1648440 (and d!2037138 b!6490649)))

(assert (=> bs!1648440 (= lambda!359580 lambda!359436)))

(declare-fun bs!1648441 () Bool)

(assert (= bs!1648441 (and d!2037138 b!6490618)))

(assert (=> bs!1648441 (not (= lambda!359580 lambda!359440))))

(declare-fun bs!1648442 () Bool)

(assert (= bs!1648442 (and d!2037138 b!6490748)))

(assert (=> bs!1648442 (not (= lambda!359580 lambda!359452))))

(declare-fun bs!1648443 () Bool)

(assert (= bs!1648443 (and d!2037138 b!6492132)))

(assert (=> bs!1648443 (not (= lambda!359580 lambda!359558))))

(declare-fun bs!1648444 () Bool)

(assert (= bs!1648444 (and d!2037138 b!6492357)))

(assert (=> bs!1648444 (not (= lambda!359580 lambda!359576))))

(declare-fun bs!1648445 () Bool)

(assert (= bs!1648445 (and d!2037138 d!2036458)))

(assert (=> bs!1648445 (not (= lambda!359580 lambda!359470))))

(assert (=> bs!1648441 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359580 lambda!359439))))

(declare-fun bs!1648446 () Bool)

(assert (= bs!1648446 (and d!2037138 d!2036606)))

(assert (=> bs!1648446 (= lambda!359580 lambda!359528)))

(assert (=> bs!1648431 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359580 lambda!359441))))

(declare-fun bs!1648447 () Bool)

(assert (= bs!1648447 (and d!2037138 b!6492134)))

(assert (=> bs!1648447 (not (= lambda!359580 lambda!359559))))

(declare-fun bs!1648448 () Bool)

(assert (= bs!1648448 (and d!2037138 b!6492465)))

(assert (=> bs!1648448 (not (= lambda!359580 lambda!359579))))

(declare-fun bs!1648449 () Bool)

(assert (= bs!1648449 (and d!2037138 b!6492283)))

(assert (=> bs!1648449 (not (= lambda!359580 lambda!359565))))

(declare-fun bs!1648450 () Bool)

(assert (= bs!1648450 (and d!2037138 d!2036516)))

(assert (=> bs!1648450 (not (= lambda!359580 lambda!359498))))

(declare-fun bs!1648451 () Bool)

(assert (= bs!1648451 (and d!2037138 b!6491179)))

(assert (=> bs!1648451 (not (= lambda!359580 lambda!359500))))

(declare-fun bs!1648452 () Bool)

(assert (= bs!1648452 (and d!2037138 b!6492285)))

(assert (=> bs!1648452 (not (= lambda!359580 lambda!359566))))

(declare-fun bs!1648453 () Bool)

(assert (= bs!1648453 (and d!2037138 b!6491886)))

(assert (=> bs!1648453 (not (= lambda!359580 lambda!359550))))

(assert (=> bs!1648445 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359580 lambda!359469))))

(declare-fun bs!1648454 () Bool)

(assert (= bs!1648454 (and d!2037138 b!6492346)))

(assert (=> bs!1648454 (not (= lambda!359580 lambda!359574))))

(assert (=> bs!1648446 (not (= lambda!359580 lambda!359529))))

(assert (=> bs!1648450 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359580 lambda!359497))))

(assert (=> bs!1648440 (not (= lambda!359580 lambda!359437))))

(declare-fun bs!1648455 () Bool)

(assert (= bs!1648455 (and d!2037138 b!6490932)))

(assert (=> bs!1648455 (not (= lambda!359580 lambda!359462))))

(assert (=> bs!1648435 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359580 lambda!359477))))

(declare-fun bs!1648456 () Bool)

(assert (= bs!1648456 (and d!2037138 b!6490930)))

(assert (=> bs!1648456 (not (= lambda!359580 lambda!359459))))

(declare-fun bs!1648457 () Bool)

(assert (= bs!1648457 (and d!2037138 b!6491181)))

(assert (=> bs!1648457 (not (= lambda!359580 lambda!359501))))

(declare-fun bs!1648458 () Bool)

(assert (= bs!1648458 (and d!2037138 d!2036524)))

(assert (=> bs!1648458 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359580 lambda!359499))))

(declare-fun bs!1648459 () Bool)

(assert (= bs!1648459 (and d!2037138 d!2037036)))

(assert (=> bs!1648459 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359580 lambda!359569))))

(assert (=> d!2037138 true))

(assert (=> d!2037138 true))

(assert (=> d!2037138 true))

(assert (=> d!2037138 (= (isDefined!12963 (findConcatSeparation!2674 (regOne!33250 r!7292) (regTwo!33250 r!7292) Nil!65282 s!2326 s!2326)) (Exists!3439 lambda!359580))))

(assert (=> d!2037138 true))

(declare-fun _$89!2731 () Unit!158807)

(assert (=> d!2037138 (= (choose!48182 (regOne!33250 r!7292) (regTwo!33250 r!7292) s!2326) _$89!2731)))

(declare-fun bs!1648460 () Bool)

(assert (= bs!1648460 d!2037138))

(assert (=> bs!1648460 m!7279134))

(assert (=> bs!1648460 m!7279134))

(assert (=> bs!1648460 m!7279136))

(declare-fun m!7281192 () Bool)

(assert (=> bs!1648460 m!7281192))

(assert (=> d!2036598 d!2037138))

(declare-fun b!6492491 () Bool)

(declare-fun res!2666445 () Bool)

(declare-fun e!3934578 () Bool)

(assert (=> b!6492491 (=> res!2666445 e!3934578)))

(assert (=> b!6492491 (= res!2666445 (not ((_ is Concat!25214) (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292)))))))

(declare-fun e!3934580 () Bool)

(assert (=> b!6492491 (= e!3934580 e!3934578)))

(declare-fun b!6492492 () Bool)

(declare-fun e!3934582 () Bool)

(assert (=> b!6492492 (= e!3934578 e!3934582)))

(declare-fun res!2666449 () Bool)

(assert (=> b!6492492 (=> (not res!2666449) (not e!3934582))))

(declare-fun call!562146 () Bool)

(assert (=> b!6492492 (= res!2666449 call!562146)))

(declare-fun b!6492493 () Bool)

(declare-fun call!562148 () Bool)

(assert (=> b!6492493 (= e!3934582 call!562148)))

(declare-fun bm!562141 () Bool)

(declare-fun c!1189909 () Bool)

(assert (=> bm!562141 (= call!562148 (validRegex!8105 (ite c!1189909 (regTwo!33251 (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292))) (regTwo!33250 (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292))))))))

(declare-fun b!6492494 () Bool)

(declare-fun e!3934579 () Bool)

(declare-fun e!3934583 () Bool)

(assert (=> b!6492494 (= e!3934579 e!3934583)))

(declare-fun res!2666448 () Bool)

(assert (=> b!6492494 (= res!2666448 (not (nullable!6362 (reg!16698 (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292))))))))

(assert (=> b!6492494 (=> (not res!2666448) (not e!3934583))))

(declare-fun b!6492495 () Bool)

(declare-fun e!3934577 () Bool)

(assert (=> b!6492495 (= e!3934577 e!3934579)))

(declare-fun c!1189908 () Bool)

(assert (=> b!6492495 (= c!1189908 ((_ is Star!16369) (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292))))))

(declare-fun b!6492496 () Bool)

(declare-fun call!562147 () Bool)

(assert (=> b!6492496 (= e!3934583 call!562147)))

(declare-fun b!6492497 () Bool)

(assert (=> b!6492497 (= e!3934579 e!3934580)))

(assert (=> b!6492497 (= c!1189909 ((_ is Union!16369) (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292))))))

(declare-fun d!2037140 () Bool)

(declare-fun res!2666446 () Bool)

(assert (=> d!2037140 (=> res!2666446 e!3934577)))

(assert (=> d!2037140 (= res!2666446 ((_ is ElementMatch!16369) (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292))))))

(assert (=> d!2037140 (= (validRegex!8105 (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292))) e!3934577)))

(declare-fun bm!562142 () Bool)

(assert (=> bm!562142 (= call!562147 (validRegex!8105 (ite c!1189908 (reg!16698 (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292))) (ite c!1189909 (regOne!33251 (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292))) (regOne!33250 (ite c!1189682 (regTwo!33251 r!7292) (regTwo!33250 r!7292)))))))))

(declare-fun b!6492498 () Bool)

(declare-fun e!3934581 () Bool)

(assert (=> b!6492498 (= e!3934581 call!562148)))

(declare-fun b!6492499 () Bool)

(declare-fun res!2666447 () Bool)

(assert (=> b!6492499 (=> (not res!2666447) (not e!3934581))))

(assert (=> b!6492499 (= res!2666447 call!562146)))

(assert (=> b!6492499 (= e!3934580 e!3934581)))

(declare-fun bm!562143 () Bool)

(assert (=> bm!562143 (= call!562146 call!562147)))

(assert (= (and d!2037140 (not res!2666446)) b!6492495))

(assert (= (and b!6492495 c!1189908) b!6492494))

(assert (= (and b!6492495 (not c!1189908)) b!6492497))

(assert (= (and b!6492494 res!2666448) b!6492496))

(assert (= (and b!6492497 c!1189909) b!6492499))

(assert (= (and b!6492497 (not c!1189909)) b!6492491))

(assert (= (and b!6492499 res!2666447) b!6492498))

(assert (= (and b!6492491 (not res!2666445)) b!6492492))

(assert (= (and b!6492492 res!2666449) b!6492493))

(assert (= (or b!6492498 b!6492493) bm!562141))

(assert (= (or b!6492499 b!6492492) bm!562143))

(assert (= (or b!6492496 bm!562143) bm!562142))

(declare-fun m!7281194 () Bool)

(assert (=> bm!562141 m!7281194))

(declare-fun m!7281196 () Bool)

(assert (=> b!6492494 m!7281196))

(declare-fun m!7281198 () Bool)

(assert (=> bm!562142 m!7281198))

(assert (=> bm!562004 d!2037140))

(assert (=> d!2036400 d!2036396))

(declare-fun d!2037142 () Bool)

(assert (=> d!2037142 (= (flatMap!1874 lt!2389660 lambda!359438) (dynLambda!25930 lambda!359438 lt!2389611))))

(assert (=> d!2037142 true))

(declare-fun _$13!3720 () Unit!158807)

(assert (=> d!2037142 (= (choose!48172 lt!2389660 lt!2389611 lambda!359438) _$13!3720)))

(declare-fun b_lambda!245771 () Bool)

(assert (=> (not b_lambda!245771) (not d!2037142)))

(declare-fun bs!1648461 () Bool)

(assert (= bs!1648461 d!2037142))

(assert (=> bs!1648461 m!7279072))

(assert (=> bs!1648461 m!7279286))

(assert (=> d!2036400 d!2037142))

(assert (=> b!6491312 d!2037052))

(assert (=> b!6491312 d!2036956))

(declare-fun d!2037144 () Bool)

(assert (=> d!2037144 (= (isEmpty!37477 lt!2389620) ((_ is Nil!65282) lt!2389620))))

(assert (=> d!2036670 d!2037144))

(assert (=> d!2036670 d!2037038))

(assert (=> b!6490908 d!2037114))

(declare-fun d!2037146 () Bool)

(assert (=> d!2037146 true))

(assert (=> d!2037146 true))

(declare-fun res!2666450 () Bool)

(assert (=> d!2037146 (= (choose!48184 lambda!359441) res!2666450)))

(assert (=> d!2036484 d!2037146))

(declare-fun d!2037148 () Bool)

(assert (=> d!2037148 (= (isEmpty!37477 (_1!36651 lt!2389638)) ((_ is Nil!65282) (_1!36651 lt!2389638)))))

(assert (=> d!2036504 d!2037148))

(assert (=> d!2036504 d!2036988))

(declare-fun d!2037150 () Bool)

(assert (=> d!2037150 (= (isEmpty!37477 (tail!12296 s!2326)) ((_ is Nil!65282) (tail!12296 s!2326)))))

(assert (=> b!6490829 d!2037150))

(assert (=> b!6490829 d!2036984))

(declare-fun d!2037152 () Bool)

(assert (=> d!2037152 true))

(declare-fun setRes!44230 () Bool)

(assert (=> d!2037152 setRes!44230))

(declare-fun condSetEmpty!44230 () Bool)

(declare-fun res!2666451 () (InoxSet Context!11506))

(assert (=> d!2037152 (= condSetEmpty!44230 (= res!2666451 ((as const (Array Context!11506 Bool)) false)))))

(assert (=> d!2037152 (= (choose!48171 lt!2389616 lambda!359438) res!2666451)))

(declare-fun setIsEmpty!44230 () Bool)

(assert (=> setIsEmpty!44230 setRes!44230))

(declare-fun e!3934584 () Bool)

(declare-fun tp!1796828 () Bool)

(declare-fun setElem!44230 () Context!11506)

(declare-fun setNonEmpty!44230 () Bool)

(assert (=> setNonEmpty!44230 (= setRes!44230 (and tp!1796828 (inv!84169 setElem!44230) e!3934584))))

(declare-fun setRest!44230 () (InoxSet Context!11506))

(assert (=> setNonEmpty!44230 (= res!2666451 ((_ map or) (store ((as const (Array Context!11506 Bool)) false) setElem!44230 true) setRest!44230))))

(declare-fun b!6492500 () Bool)

(declare-fun tp!1796827 () Bool)

(assert (=> b!6492500 (= e!3934584 tp!1796827)))

(assert (= (and d!2037152 condSetEmpty!44230) setIsEmpty!44230))

(assert (= (and d!2037152 (not condSetEmpty!44230)) setNonEmpty!44230))

(assert (= setNonEmpty!44230 b!6492500))

(declare-fun m!7281200 () Bool)

(assert (=> setNonEmpty!44230 m!7281200))

(assert (=> d!2036554 d!2037152))

(assert (=> bm!561974 d!2037148))

(assert (=> bm!561990 d!2037144))

(declare-fun b!6492501 () Bool)

(declare-fun res!2666452 () Bool)

(declare-fun e!3934586 () Bool)

(assert (=> b!6492501 (=> res!2666452 e!3934586)))

(assert (=> b!6492501 (= res!2666452 (not ((_ is Concat!25214) lt!2389773)))))

(declare-fun e!3934588 () Bool)

(assert (=> b!6492501 (= e!3934588 e!3934586)))

(declare-fun b!6492502 () Bool)

(declare-fun e!3934590 () Bool)

(assert (=> b!6492502 (= e!3934586 e!3934590)))

(declare-fun res!2666456 () Bool)

(assert (=> b!6492502 (=> (not res!2666456) (not e!3934590))))

(declare-fun call!562149 () Bool)

(assert (=> b!6492502 (= res!2666456 call!562149)))

(declare-fun b!6492503 () Bool)

(declare-fun call!562151 () Bool)

(assert (=> b!6492503 (= e!3934590 call!562151)))

(declare-fun bm!562144 () Bool)

(declare-fun c!1189911 () Bool)

(assert (=> bm!562144 (= call!562151 (validRegex!8105 (ite c!1189911 (regTwo!33251 lt!2389773) (regTwo!33250 lt!2389773))))))

(declare-fun b!6492504 () Bool)

(declare-fun e!3934587 () Bool)

(declare-fun e!3934591 () Bool)

(assert (=> b!6492504 (= e!3934587 e!3934591)))

(declare-fun res!2666455 () Bool)

(assert (=> b!6492504 (= res!2666455 (not (nullable!6362 (reg!16698 lt!2389773))))))

(assert (=> b!6492504 (=> (not res!2666455) (not e!3934591))))

(declare-fun b!6492505 () Bool)

(declare-fun e!3934585 () Bool)

(assert (=> b!6492505 (= e!3934585 e!3934587)))

(declare-fun c!1189910 () Bool)

(assert (=> b!6492505 (= c!1189910 ((_ is Star!16369) lt!2389773))))

(declare-fun b!6492506 () Bool)

(declare-fun call!562150 () Bool)

(assert (=> b!6492506 (= e!3934591 call!562150)))

(declare-fun b!6492507 () Bool)

(assert (=> b!6492507 (= e!3934587 e!3934588)))

(assert (=> b!6492507 (= c!1189911 ((_ is Union!16369) lt!2389773))))

(declare-fun d!2037154 () Bool)

(declare-fun res!2666453 () Bool)

(assert (=> d!2037154 (=> res!2666453 e!3934585)))

(assert (=> d!2037154 (= res!2666453 ((_ is ElementMatch!16369) lt!2389773))))

(assert (=> d!2037154 (= (validRegex!8105 lt!2389773) e!3934585)))

(declare-fun bm!562145 () Bool)

(assert (=> bm!562145 (= call!562150 (validRegex!8105 (ite c!1189910 (reg!16698 lt!2389773) (ite c!1189911 (regOne!33251 lt!2389773) (regOne!33250 lt!2389773)))))))

(declare-fun b!6492508 () Bool)

(declare-fun e!3934589 () Bool)

(assert (=> b!6492508 (= e!3934589 call!562151)))

(declare-fun b!6492509 () Bool)

(declare-fun res!2666454 () Bool)

(assert (=> b!6492509 (=> (not res!2666454) (not e!3934589))))

(assert (=> b!6492509 (= res!2666454 call!562149)))

(assert (=> b!6492509 (= e!3934588 e!3934589)))

(declare-fun bm!562146 () Bool)

(assert (=> bm!562146 (= call!562149 call!562150)))

(assert (= (and d!2037154 (not res!2666453)) b!6492505))

(assert (= (and b!6492505 c!1189910) b!6492504))

(assert (= (and b!6492505 (not c!1189910)) b!6492507))

(assert (= (and b!6492504 res!2666455) b!6492506))

(assert (= (and b!6492507 c!1189911) b!6492509))

(assert (= (and b!6492507 (not c!1189911)) b!6492501))

(assert (= (and b!6492509 res!2666454) b!6492508))

(assert (= (and b!6492501 (not res!2666452)) b!6492502))

(assert (= (and b!6492502 res!2666456) b!6492503))

(assert (= (or b!6492508 b!6492503) bm!562144))

(assert (= (or b!6492509 b!6492502) bm!562146))

(assert (= (or b!6492506 bm!562146) bm!562145))

(declare-fun m!7281202 () Bool)

(assert (=> bm!562144 m!7281202))

(declare-fun m!7281204 () Bool)

(assert (=> b!6492504 m!7281204))

(declare-fun m!7281206 () Bool)

(assert (=> bm!562145 m!7281206))

(assert (=> d!2036572 d!2037154))

(declare-fun d!2037156 () Bool)

(declare-fun res!2666457 () Bool)

(declare-fun e!3934592 () Bool)

(assert (=> d!2037156 (=> res!2666457 e!3934592)))

(assert (=> d!2037156 (= res!2666457 ((_ is Nil!65283) (exprs!6253 (h!71732 zl!343))))))

(assert (=> d!2037156 (= (forall!15551 (exprs!6253 (h!71732 zl!343)) lambda!359520) e!3934592)))

(declare-fun b!6492510 () Bool)

(declare-fun e!3934593 () Bool)

(assert (=> b!6492510 (= e!3934592 e!3934593)))

(declare-fun res!2666458 () Bool)

(assert (=> b!6492510 (=> (not res!2666458) (not e!3934593))))

(assert (=> b!6492510 (= res!2666458 (dynLambda!25932 lambda!359520 (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6492511 () Bool)

(assert (=> b!6492511 (= e!3934593 (forall!15551 (t!379035 (exprs!6253 (h!71732 zl!343))) lambda!359520))))

(assert (= (and d!2037156 (not res!2666457)) b!6492510))

(assert (= (and b!6492510 res!2666458) b!6492511))

(declare-fun b_lambda!245773 () Bool)

(assert (=> (not b_lambda!245773) (not b!6492510)))

(declare-fun m!7281208 () Bool)

(assert (=> b!6492510 m!7281208))

(declare-fun m!7281210 () Bool)

(assert (=> b!6492511 m!7281210))

(assert (=> d!2036572 d!2037156))

(declare-fun d!2037158 () Bool)

(declare-fun c!1189914 () Bool)

(assert (=> d!2037158 (= c!1189914 ((_ is Nil!65284) lt!2389687))))

(declare-fun e!3934596 () (InoxSet Context!11506))

(assert (=> d!2037158 (= (content!12441 lt!2389687) e!3934596)))

(declare-fun b!6492516 () Bool)

(assert (=> b!6492516 (= e!3934596 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6492517 () Bool)

(assert (=> b!6492517 (= e!3934596 ((_ map or) (store ((as const (Array Context!11506 Bool)) false) (h!71732 lt!2389687) true) (content!12441 (t!379036 lt!2389687))))))

(assert (= (and d!2037158 c!1189914) b!6492516))

(assert (= (and d!2037158 (not c!1189914)) b!6492517))

(declare-fun m!7281212 () Bool)

(assert (=> b!6492517 m!7281212))

(declare-fun m!7281214 () Bool)

(assert (=> b!6492517 m!7281214))

(assert (=> b!6490903 d!2037158))

(assert (=> b!6491138 d!2037034))

(assert (=> d!2036654 d!2036666))

(assert (=> d!2036654 d!2036656))

(declare-fun d!2037160 () Bool)

(assert (=> d!2037160 (= (matchR!8552 lt!2389661 lt!2389641) (matchZipper!2381 lt!2389616 lt!2389641))))

(assert (=> d!2037160 true))

(declare-fun _$44!1674 () Unit!158807)

(assert (=> d!2037160 (= (choose!48195 lt!2389616 lt!2389640 lt!2389661 lt!2389641) _$44!1674)))

(declare-fun bs!1648462 () Bool)

(assert (= bs!1648462 d!2037160))

(assert (=> bs!1648462 m!7279152))

(assert (=> bs!1648462 m!7279160))

(assert (=> d!2036654 d!2037160))

(assert (=> d!2036654 d!2036882))

(declare-fun d!2037162 () Bool)

(assert (=> d!2037162 true))

(assert (=> d!2037162 true))

(declare-fun res!2666459 () Bool)

(assert (=> d!2037162 (= (choose!48184 lambda!359443) res!2666459)))

(assert (=> d!2036486 d!2037162))

(declare-fun b!6492518 () Bool)

(declare-fun res!2666465 () Bool)

(declare-fun e!3934597 () Bool)

(assert (=> b!6492518 (=> res!2666465 e!3934597)))

(declare-fun e!3934601 () Bool)

(assert (=> b!6492518 (= res!2666465 e!3934601)))

(declare-fun res!2666462 () Bool)

(assert (=> b!6492518 (=> (not res!2666462) (not e!3934601))))

(declare-fun lt!2389927 () Bool)

(assert (=> b!6492518 (= res!2666462 lt!2389927)))

(declare-fun b!6492519 () Bool)

(declare-fun res!2666463 () Bool)

(assert (=> b!6492519 (=> (not res!2666463) (not e!3934601))))

(assert (=> b!6492519 (= res!2666463 (isEmpty!37477 (tail!12296 (_1!36651 (get!22637 lt!2389777)))))))

(declare-fun b!6492521 () Bool)

(declare-fun e!3934599 () Bool)

(assert (=> b!6492521 (= e!3934597 e!3934599)))

(declare-fun res!2666466 () Bool)

(assert (=> b!6492521 (=> (not res!2666466) (not e!3934599))))

(assert (=> b!6492521 (= res!2666466 (not lt!2389927))))

(declare-fun bm!562147 () Bool)

(declare-fun call!562152 () Bool)

(assert (=> bm!562147 (= call!562152 (isEmpty!37477 (_1!36651 (get!22637 lt!2389777))))))

(declare-fun b!6492522 () Bool)

(declare-fun e!3934600 () Bool)

(assert (=> b!6492522 (= e!3934600 (not (= (head!13211 (_1!36651 (get!22637 lt!2389777))) (c!1189393 (regOne!33250 r!7292)))))))

(declare-fun b!6492523 () Bool)

(declare-fun e!3934603 () Bool)

(assert (=> b!6492523 (= e!3934603 (matchR!8552 (derivativeStep!5064 (regOne!33250 r!7292) (head!13211 (_1!36651 (get!22637 lt!2389777)))) (tail!12296 (_1!36651 (get!22637 lt!2389777)))))))

(declare-fun b!6492524 () Bool)

(declare-fun res!2666467 () Bool)

(assert (=> b!6492524 (=> res!2666467 e!3934600)))

(assert (=> b!6492524 (= res!2666467 (not (isEmpty!37477 (tail!12296 (_1!36651 (get!22637 lt!2389777))))))))

(declare-fun b!6492525 () Bool)

(declare-fun res!2666464 () Bool)

(assert (=> b!6492525 (=> res!2666464 e!3934597)))

(assert (=> b!6492525 (= res!2666464 (not ((_ is ElementMatch!16369) (regOne!33250 r!7292))))))

(declare-fun e!3934598 () Bool)

(assert (=> b!6492525 (= e!3934598 e!3934597)))

(declare-fun b!6492526 () Bool)

(declare-fun e!3934602 () Bool)

(assert (=> b!6492526 (= e!3934602 (= lt!2389927 call!562152))))

(declare-fun b!6492527 () Bool)

(assert (=> b!6492527 (= e!3934599 e!3934600)))

(declare-fun res!2666461 () Bool)

(assert (=> b!6492527 (=> res!2666461 e!3934600)))

(assert (=> b!6492527 (= res!2666461 call!562152)))

(declare-fun b!6492528 () Bool)

(assert (=> b!6492528 (= e!3934603 (nullable!6362 (regOne!33250 r!7292)))))

(declare-fun b!6492529 () Bool)

(assert (=> b!6492529 (= e!3934601 (= (head!13211 (_1!36651 (get!22637 lt!2389777))) (c!1189393 (regOne!33250 r!7292))))))

(declare-fun d!2037164 () Bool)

(assert (=> d!2037164 e!3934602))

(declare-fun c!1189917 () Bool)

(assert (=> d!2037164 (= c!1189917 ((_ is EmptyExpr!16369) (regOne!33250 r!7292)))))

(assert (=> d!2037164 (= lt!2389927 e!3934603)))

(declare-fun c!1189916 () Bool)

(assert (=> d!2037164 (= c!1189916 (isEmpty!37477 (_1!36651 (get!22637 lt!2389777))))))

(assert (=> d!2037164 (validRegex!8105 (regOne!33250 r!7292))))

(assert (=> d!2037164 (= (matchR!8552 (regOne!33250 r!7292) (_1!36651 (get!22637 lt!2389777))) lt!2389927)))

(declare-fun b!6492520 () Bool)

(assert (=> b!6492520 (= e!3934602 e!3934598)))

(declare-fun c!1189915 () Bool)

(assert (=> b!6492520 (= c!1189915 ((_ is EmptyLang!16369) (regOne!33250 r!7292)))))

(declare-fun b!6492530 () Bool)

(assert (=> b!6492530 (= e!3934598 (not lt!2389927))))

(declare-fun b!6492531 () Bool)

(declare-fun res!2666460 () Bool)

(assert (=> b!6492531 (=> (not res!2666460) (not e!3934601))))

(assert (=> b!6492531 (= res!2666460 (not call!562152))))

(assert (= (and d!2037164 c!1189916) b!6492528))

(assert (= (and d!2037164 (not c!1189916)) b!6492523))

(assert (= (and d!2037164 c!1189917) b!6492526))

(assert (= (and d!2037164 (not c!1189917)) b!6492520))

(assert (= (and b!6492520 c!1189915) b!6492530))

(assert (= (and b!6492520 (not c!1189915)) b!6492525))

(assert (= (and b!6492525 (not res!2666464)) b!6492518))

(assert (= (and b!6492518 res!2666462) b!6492531))

(assert (= (and b!6492531 res!2666460) b!6492519))

(assert (= (and b!6492519 res!2666463) b!6492529))

(assert (= (and b!6492518 (not res!2666465)) b!6492521))

(assert (= (and b!6492521 res!2666466) b!6492527))

(assert (= (and b!6492527 (not res!2666461)) b!6492524))

(assert (= (and b!6492524 (not res!2666467)) b!6492522))

(assert (= (or b!6492526 b!6492527 b!6492531) bm!562147))

(declare-fun m!7281216 () Bool)

(assert (=> b!6492519 m!7281216))

(assert (=> b!6492519 m!7281216))

(declare-fun m!7281218 () Bool)

(assert (=> b!6492519 m!7281218))

(declare-fun m!7281220 () Bool)

(assert (=> d!2037164 m!7281220))

(assert (=> d!2037164 m!7279900))

(assert (=> b!6492524 m!7281216))

(assert (=> b!6492524 m!7281216))

(assert (=> b!6492524 m!7281218))

(declare-fun m!7281222 () Bool)

(assert (=> b!6492522 m!7281222))

(assert (=> b!6492528 m!7281092))

(assert (=> bm!562147 m!7281220))

(assert (=> b!6492529 m!7281222))

(assert (=> b!6492523 m!7281222))

(assert (=> b!6492523 m!7281222))

(declare-fun m!7281224 () Bool)

(assert (=> b!6492523 m!7281224))

(assert (=> b!6492523 m!7281216))

(assert (=> b!6492523 m!7281224))

(assert (=> b!6492523 m!7281216))

(declare-fun m!7281226 () Bool)

(assert (=> b!6492523 m!7281226))

(assert (=> b!6491400 d!2037164))

(declare-fun d!2037166 () Bool)

(assert (=> d!2037166 (= (get!22637 lt!2389777) (v!52438 lt!2389777))))

(assert (=> b!6491400 d!2037166))

(assert (=> d!2036710 d!2036716))

(assert (=> d!2036710 d!2036714))

(declare-fun e!3934606 () Bool)

(declare-fun d!2037168 () Bool)

(assert (=> d!2037168 (= (matchZipper!2381 ((_ map or) lt!2389628 lt!2389666) (t!379034 s!2326)) e!3934606)))

(declare-fun res!2666470 () Bool)

(assert (=> d!2037168 (=> res!2666470 e!3934606)))

(assert (=> d!2037168 (= res!2666470 (matchZipper!2381 lt!2389628 (t!379034 s!2326)))))

(assert (=> d!2037168 true))

(declare-fun _$48!2249 () Unit!158807)

(assert (=> d!2037168 (= (choose!48198 lt!2389628 lt!2389666 (t!379034 s!2326)) _$48!2249)))

(declare-fun b!6492534 () Bool)

(assert (=> b!6492534 (= e!3934606 (matchZipper!2381 lt!2389666 (t!379034 s!2326)))))

(assert (= (and d!2037168 (not res!2666470)) b!6492534))

(assert (=> d!2037168 m!7279256))

(assert (=> d!2037168 m!7279254))

(assert (=> b!6492534 m!7279116))

(assert (=> d!2036710 d!2037168))

(declare-fun d!2037170 () Bool)

(declare-fun c!1189921 () Bool)

(assert (=> d!2037170 (= c!1189921 (and ((_ is ElementMatch!16369) (h!71731 (exprs!6253 lt!2389611))) (= (c!1189393 (h!71731 (exprs!6253 lt!2389611))) (h!71730 s!2326))))))

(declare-fun e!3934611 () (InoxSet Context!11506))

(assert (=> d!2037170 (= (derivationStepZipperDown!1617 (h!71731 (exprs!6253 lt!2389611)) (Context!11507 (t!379035 (exprs!6253 lt!2389611))) (h!71730 s!2326)) e!3934611)))

(declare-fun b!6492535 () Bool)

(declare-fun e!3934610 () Bool)

(assert (=> b!6492535 (= e!3934610 (nullable!6362 (regOne!33250 (h!71731 (exprs!6253 lt!2389611)))))))

(declare-fun call!562158 () List!65407)

(declare-fun bm!562148 () Bool)

(declare-fun c!1189918 () Bool)

(declare-fun c!1189920 () Bool)

(assert (=> bm!562148 (= call!562158 ($colon$colon!2221 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389611)))) (ite (or c!1189920 c!1189918) (regTwo!33250 (h!71731 (exprs!6253 lt!2389611))) (h!71731 (exprs!6253 lt!2389611)))))))

(declare-fun b!6492536 () Bool)

(declare-fun c!1189922 () Bool)

(assert (=> b!6492536 (= c!1189922 ((_ is Star!16369) (h!71731 (exprs!6253 lt!2389611))))))

(declare-fun e!3934608 () (InoxSet Context!11506))

(declare-fun e!3934609 () (InoxSet Context!11506))

(assert (=> b!6492536 (= e!3934608 e!3934609)))

(declare-fun bm!562149 () Bool)

(declare-fun call!562155 () List!65407)

(assert (=> bm!562149 (= call!562155 call!562158)))

(declare-fun bm!562150 () Bool)

(declare-fun call!562156 () (InoxSet Context!11506))

(declare-fun call!562153 () (InoxSet Context!11506))

(assert (=> bm!562150 (= call!562156 call!562153)))

(declare-fun bm!562151 () Bool)

(declare-fun call!562157 () (InoxSet Context!11506))

(assert (=> bm!562151 (= call!562157 call!562156)))

(declare-fun bm!562152 () Bool)

(declare-fun call!562154 () (InoxSet Context!11506))

(declare-fun c!1189919 () Bool)

(assert (=> bm!562152 (= call!562154 (derivationStepZipperDown!1617 (ite c!1189919 (regTwo!33251 (h!71731 (exprs!6253 lt!2389611))) (regOne!33250 (h!71731 (exprs!6253 lt!2389611)))) (ite c!1189919 (Context!11507 (t!379035 (exprs!6253 lt!2389611))) (Context!11507 call!562158)) (h!71730 s!2326)))))

(declare-fun b!6492537 () Bool)

(assert (=> b!6492537 (= e!3934609 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6492538 () Bool)

(assert (=> b!6492538 (= e!3934611 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (t!379035 (exprs!6253 lt!2389611))) true))))

(declare-fun b!6492539 () Bool)

(assert (=> b!6492539 (= c!1189920 e!3934610)))

(declare-fun res!2666471 () Bool)

(assert (=> b!6492539 (=> (not res!2666471) (not e!3934610))))

(assert (=> b!6492539 (= res!2666471 ((_ is Concat!25214) (h!71731 (exprs!6253 lt!2389611))))))

(declare-fun e!3934612 () (InoxSet Context!11506))

(declare-fun e!3934607 () (InoxSet Context!11506))

(assert (=> b!6492539 (= e!3934612 e!3934607)))

(declare-fun bm!562153 () Bool)

(assert (=> bm!562153 (= call!562153 (derivationStepZipperDown!1617 (ite c!1189919 (regOne!33251 (h!71731 (exprs!6253 lt!2389611))) (ite c!1189920 (regTwo!33250 (h!71731 (exprs!6253 lt!2389611))) (ite c!1189918 (regOne!33250 (h!71731 (exprs!6253 lt!2389611))) (reg!16698 (h!71731 (exprs!6253 lt!2389611)))))) (ite (or c!1189919 c!1189920) (Context!11507 (t!379035 (exprs!6253 lt!2389611))) (Context!11507 call!562155)) (h!71730 s!2326)))))

(declare-fun b!6492540 () Bool)

(assert (=> b!6492540 (= e!3934609 call!562157)))

(declare-fun b!6492541 () Bool)

(assert (=> b!6492541 (= e!3934612 ((_ map or) call!562153 call!562154))))

(declare-fun b!6492542 () Bool)

(assert (=> b!6492542 (= e!3934607 ((_ map or) call!562154 call!562156))))

(declare-fun b!6492543 () Bool)

(assert (=> b!6492543 (= e!3934608 call!562157)))

(declare-fun b!6492544 () Bool)

(assert (=> b!6492544 (= e!3934611 e!3934612)))

(assert (=> b!6492544 (= c!1189919 ((_ is Union!16369) (h!71731 (exprs!6253 lt!2389611))))))

(declare-fun b!6492545 () Bool)

(assert (=> b!6492545 (= e!3934607 e!3934608)))

(assert (=> b!6492545 (= c!1189918 ((_ is Concat!25214) (h!71731 (exprs!6253 lt!2389611))))))

(assert (= (and d!2037170 c!1189921) b!6492538))

(assert (= (and d!2037170 (not c!1189921)) b!6492544))

(assert (= (and b!6492544 c!1189919) b!6492541))

(assert (= (and b!6492544 (not c!1189919)) b!6492539))

(assert (= (and b!6492539 res!2666471) b!6492535))

(assert (= (and b!6492539 c!1189920) b!6492542))

(assert (= (and b!6492539 (not c!1189920)) b!6492545))

(assert (= (and b!6492545 c!1189918) b!6492543))

(assert (= (and b!6492545 (not c!1189918)) b!6492536))

(assert (= (and b!6492536 c!1189922) b!6492540))

(assert (= (and b!6492536 (not c!1189922)) b!6492537))

(assert (= (or b!6492543 b!6492540) bm!562149))

(assert (= (or b!6492543 b!6492540) bm!562151))

(assert (= (or b!6492542 bm!562149) bm!562148))

(assert (= (or b!6492542 bm!562151) bm!562150))

(assert (= (or b!6492541 b!6492542) bm!562152))

(assert (= (or b!6492541 bm!562150) bm!562153))

(declare-fun m!7281228 () Bool)

(assert (=> b!6492538 m!7281228))

(declare-fun m!7281230 () Bool)

(assert (=> b!6492535 m!7281230))

(declare-fun m!7281232 () Bool)

(assert (=> bm!562153 m!7281232))

(declare-fun m!7281234 () Bool)

(assert (=> bm!562152 m!7281234))

(declare-fun m!7281236 () Bool)

(assert (=> bm!562148 m!7281236))

(assert (=> bm!561915 d!2037170))

(assert (=> b!6491153 d!2037066))

(declare-fun c!1189926 () Bool)

(declare-fun d!2037172 () Bool)

(assert (=> d!2037172 (= c!1189926 (and ((_ is ElementMatch!16369) (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292))))))) (= (c!1189393 (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292))))))) (h!71730 s!2326))))))

(declare-fun e!3934617 () (InoxSet Context!11506))

(assert (=> d!2037172 (= (derivationStepZipperDown!1617 (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292)))))) (ite (or c!1189405 c!1189406) lt!2389656 (Context!11507 call!561914)) (h!71730 s!2326)) e!3934617)))

(declare-fun e!3934616 () Bool)

(declare-fun b!6492546 () Bool)

(assert (=> b!6492546 (= e!3934616 (nullable!6362 (regOne!33250 (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292)))))))))))

(declare-fun c!1189923 () Bool)

(declare-fun bm!562154 () Bool)

(declare-fun call!562164 () List!65407)

(declare-fun c!1189925 () Bool)

(assert (=> bm!562154 (= call!562164 ($colon$colon!2221 (exprs!6253 (ite (or c!1189405 c!1189406) lt!2389656 (Context!11507 call!561914))) (ite (or c!1189925 c!1189923) (regTwo!33250 (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292))))))) (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292)))))))))))

(declare-fun b!6492547 () Bool)

(declare-fun c!1189927 () Bool)

(assert (=> b!6492547 (= c!1189927 ((_ is Star!16369) (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292))))))))))

(declare-fun e!3934614 () (InoxSet Context!11506))

(declare-fun e!3934615 () (InoxSet Context!11506))

(assert (=> b!6492547 (= e!3934614 e!3934615)))

(declare-fun bm!562155 () Bool)

(declare-fun call!562161 () List!65407)

(assert (=> bm!562155 (= call!562161 call!562164)))

(declare-fun bm!562156 () Bool)

(declare-fun call!562162 () (InoxSet Context!11506))

(declare-fun call!562159 () (InoxSet Context!11506))

(assert (=> bm!562156 (= call!562162 call!562159)))

(declare-fun bm!562157 () Bool)

(declare-fun call!562163 () (InoxSet Context!11506))

(assert (=> bm!562157 (= call!562163 call!562162)))

(declare-fun call!562160 () (InoxSet Context!11506))

(declare-fun bm!562158 () Bool)

(declare-fun c!1189924 () Bool)

(assert (=> bm!562158 (= call!562160 (derivationStepZipperDown!1617 (ite c!1189924 (regTwo!33251 (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292))))))) (regOne!33250 (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292)))))))) (ite c!1189924 (ite (or c!1189405 c!1189406) lt!2389656 (Context!11507 call!561914)) (Context!11507 call!562164)) (h!71730 s!2326)))))

(declare-fun b!6492548 () Bool)

(assert (=> b!6492548 (= e!3934615 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6492549 () Bool)

(assert (=> b!6492549 (= e!3934617 (store ((as const (Array Context!11506 Bool)) false) (ite (or c!1189405 c!1189406) lt!2389656 (Context!11507 call!561914)) true))))

(declare-fun b!6492550 () Bool)

(assert (=> b!6492550 (= c!1189925 e!3934616)))

(declare-fun res!2666472 () Bool)

(assert (=> b!6492550 (=> (not res!2666472) (not e!3934616))))

(assert (=> b!6492550 (= res!2666472 ((_ is Concat!25214) (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292))))))))))

(declare-fun e!3934618 () (InoxSet Context!11506))

(declare-fun e!3934613 () (InoxSet Context!11506))

(assert (=> b!6492550 (= e!3934618 e!3934613)))

(declare-fun bm!562159 () Bool)

(assert (=> bm!562159 (= call!562159 (derivationStepZipperDown!1617 (ite c!1189924 (regOne!33251 (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292))))))) (ite c!1189925 (regTwo!33250 (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292))))))) (ite c!1189923 (regOne!33250 (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292))))))) (reg!16698 (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292)))))))))) (ite (or c!1189924 c!1189925) (ite (or c!1189405 c!1189406) lt!2389656 (Context!11507 call!561914)) (Context!11507 call!562161)) (h!71730 s!2326)))))

(declare-fun b!6492551 () Bool)

(assert (=> b!6492551 (= e!3934615 call!562163)))

(declare-fun b!6492552 () Bool)

(assert (=> b!6492552 (= e!3934618 ((_ map or) call!562159 call!562160))))

(declare-fun b!6492553 () Bool)

(assert (=> b!6492553 (= e!3934613 ((_ map or) call!562160 call!562162))))

(declare-fun b!6492554 () Bool)

(assert (=> b!6492554 (= e!3934614 call!562163)))

(declare-fun b!6492555 () Bool)

(assert (=> b!6492555 (= e!3934617 e!3934618)))

(assert (=> b!6492555 (= c!1189924 ((_ is Union!16369) (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292))))))))))

(declare-fun b!6492556 () Bool)

(assert (=> b!6492556 (= e!3934613 e!3934614)))

(assert (=> b!6492556 (= c!1189923 ((_ is Concat!25214) (ite c!1189405 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1189406 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (ite c!1189404 (regOne!33250 (reg!16698 (regOne!33250 r!7292))) (reg!16698 (reg!16698 (regOne!33250 r!7292))))))))))

(assert (= (and d!2037172 c!1189926) b!6492549))

(assert (= (and d!2037172 (not c!1189926)) b!6492555))

(assert (= (and b!6492555 c!1189924) b!6492552))

(assert (= (and b!6492555 (not c!1189924)) b!6492550))

(assert (= (and b!6492550 res!2666472) b!6492546))

(assert (= (and b!6492550 c!1189925) b!6492553))

(assert (= (and b!6492550 (not c!1189925)) b!6492556))

(assert (= (and b!6492556 c!1189923) b!6492554))

(assert (= (and b!6492556 (not c!1189923)) b!6492547))

(assert (= (and b!6492547 c!1189927) b!6492551))

(assert (= (and b!6492547 (not c!1189927)) b!6492548))

(assert (= (or b!6492554 b!6492551) bm!562155))

(assert (= (or b!6492554 b!6492551) bm!562157))

(assert (= (or b!6492553 bm!562155) bm!562154))

(assert (= (or b!6492553 bm!562157) bm!562156))

(assert (= (or b!6492552 b!6492553) bm!562158))

(assert (= (or b!6492552 bm!562156) bm!562159))

(declare-fun m!7281238 () Bool)

(assert (=> b!6492549 m!7281238))

(declare-fun m!7281240 () Bool)

(assert (=> b!6492546 m!7281240))

(declare-fun m!7281242 () Bool)

(assert (=> bm!562159 m!7281242))

(declare-fun m!7281244 () Bool)

(assert (=> bm!562158 m!7281244))

(declare-fun m!7281246 () Bool)

(assert (=> bm!562154 m!7281246))

(assert (=> bm!561912 d!2037172))

(assert (=> b!6491115 d!2037102))

(assert (=> d!2036534 d!2036532))

(assert (=> d!2036534 d!2036530))

(declare-fun d!2037174 () Bool)

(assert (=> d!2037174 (= (matchR!8552 lt!2389659 s!2326) (matchRSpec!3470 lt!2389659 s!2326))))

(assert (=> d!2037174 true))

(declare-fun _$88!5185 () Unit!158807)

(assert (=> d!2037174 (= (choose!48175 lt!2389659 s!2326) _$88!5185)))

(declare-fun bs!1648463 () Bool)

(assert (= bs!1648463 d!2037174))

(assert (=> bs!1648463 m!7279084))

(assert (=> bs!1648463 m!7279082))

(assert (=> d!2036534 d!2037174))

(assert (=> d!2036534 d!2036878))

(declare-fun d!2037176 () Bool)

(assert (=> d!2037176 (= (head!13211 lt!2389620) (h!71730 lt!2389620))))

(assert (=> b!6491562 d!2037176))

(declare-fun b!6492557 () Bool)

(declare-fun res!2666478 () Bool)

(declare-fun e!3934619 () Bool)

(assert (=> b!6492557 (=> res!2666478 e!3934619)))

(declare-fun e!3934623 () Bool)

(assert (=> b!6492557 (= res!2666478 e!3934623)))

(declare-fun res!2666475 () Bool)

(assert (=> b!6492557 (=> (not res!2666475) (not e!3934623))))

(declare-fun lt!2389928 () Bool)

(assert (=> b!6492557 (= res!2666475 lt!2389928)))

(declare-fun b!6492558 () Bool)

(declare-fun res!2666476 () Bool)

(assert (=> b!6492558 (=> (not res!2666476) (not e!3934623))))

(assert (=> b!6492558 (= res!2666476 (isEmpty!37477 (tail!12296 (tail!12296 s!2326))))))

(declare-fun b!6492560 () Bool)

(declare-fun e!3934621 () Bool)

(assert (=> b!6492560 (= e!3934619 e!3934621)))

(declare-fun res!2666479 () Bool)

(assert (=> b!6492560 (=> (not res!2666479) (not e!3934621))))

(assert (=> b!6492560 (= res!2666479 (not lt!2389928))))

(declare-fun bm!562160 () Bool)

(declare-fun call!562165 () Bool)

(assert (=> bm!562160 (= call!562165 (isEmpty!37477 (tail!12296 s!2326)))))

(declare-fun b!6492561 () Bool)

(declare-fun e!3934622 () Bool)

(assert (=> b!6492561 (= e!3934622 (not (= (head!13211 (tail!12296 s!2326)) (c!1189393 (derivativeStep!5064 lt!2389659 (head!13211 s!2326))))))))

(declare-fun b!6492562 () Bool)

(declare-fun e!3934625 () Bool)

(assert (=> b!6492562 (= e!3934625 (matchR!8552 (derivativeStep!5064 (derivativeStep!5064 lt!2389659 (head!13211 s!2326)) (head!13211 (tail!12296 s!2326))) (tail!12296 (tail!12296 s!2326))))))

(declare-fun b!6492563 () Bool)

(declare-fun res!2666480 () Bool)

(assert (=> b!6492563 (=> res!2666480 e!3934622)))

(assert (=> b!6492563 (= res!2666480 (not (isEmpty!37477 (tail!12296 (tail!12296 s!2326)))))))

(declare-fun b!6492564 () Bool)

(declare-fun res!2666477 () Bool)

(assert (=> b!6492564 (=> res!2666477 e!3934619)))

(assert (=> b!6492564 (= res!2666477 (not ((_ is ElementMatch!16369) (derivativeStep!5064 lt!2389659 (head!13211 s!2326)))))))

(declare-fun e!3934620 () Bool)

(assert (=> b!6492564 (= e!3934620 e!3934619)))

(declare-fun b!6492565 () Bool)

(declare-fun e!3934624 () Bool)

(assert (=> b!6492565 (= e!3934624 (= lt!2389928 call!562165))))

(declare-fun b!6492566 () Bool)

(assert (=> b!6492566 (= e!3934621 e!3934622)))

(declare-fun res!2666474 () Bool)

(assert (=> b!6492566 (=> res!2666474 e!3934622)))

(assert (=> b!6492566 (= res!2666474 call!562165)))

(declare-fun b!6492567 () Bool)

(assert (=> b!6492567 (= e!3934625 (nullable!6362 (derivativeStep!5064 lt!2389659 (head!13211 s!2326))))))

(declare-fun b!6492568 () Bool)

(assert (=> b!6492568 (= e!3934623 (= (head!13211 (tail!12296 s!2326)) (c!1189393 (derivativeStep!5064 lt!2389659 (head!13211 s!2326)))))))

(declare-fun d!2037178 () Bool)

(assert (=> d!2037178 e!3934624))

(declare-fun c!1189930 () Bool)

(assert (=> d!2037178 (= c!1189930 ((_ is EmptyExpr!16369) (derivativeStep!5064 lt!2389659 (head!13211 s!2326))))))

(assert (=> d!2037178 (= lt!2389928 e!3934625)))

(declare-fun c!1189929 () Bool)

(assert (=> d!2037178 (= c!1189929 (isEmpty!37477 (tail!12296 s!2326)))))

(assert (=> d!2037178 (validRegex!8105 (derivativeStep!5064 lt!2389659 (head!13211 s!2326)))))

(assert (=> d!2037178 (= (matchR!8552 (derivativeStep!5064 lt!2389659 (head!13211 s!2326)) (tail!12296 s!2326)) lt!2389928)))

(declare-fun b!6492559 () Bool)

(assert (=> b!6492559 (= e!3934624 e!3934620)))

(declare-fun c!1189928 () Bool)

(assert (=> b!6492559 (= c!1189928 ((_ is EmptyLang!16369) (derivativeStep!5064 lt!2389659 (head!13211 s!2326))))))

(declare-fun b!6492569 () Bool)

(assert (=> b!6492569 (= e!3934620 (not lt!2389928))))

(declare-fun b!6492570 () Bool)

(declare-fun res!2666473 () Bool)

(assert (=> b!6492570 (=> (not res!2666473) (not e!3934623))))

(assert (=> b!6492570 (= res!2666473 (not call!562165))))

(assert (= (and d!2037178 c!1189929) b!6492567))

(assert (= (and d!2037178 (not c!1189929)) b!6492562))

(assert (= (and d!2037178 c!1189930) b!6492565))

(assert (= (and d!2037178 (not c!1189930)) b!6492559))

(assert (= (and b!6492559 c!1189928) b!6492569))

(assert (= (and b!6492559 (not c!1189928)) b!6492564))

(assert (= (and b!6492564 (not res!2666477)) b!6492557))

(assert (= (and b!6492557 res!2666475) b!6492570))

(assert (= (and b!6492570 res!2666473) b!6492558))

(assert (= (and b!6492558 res!2666476) b!6492568))

(assert (= (and b!6492557 (not res!2666478)) b!6492560))

(assert (= (and b!6492560 res!2666479) b!6492566))

(assert (= (and b!6492566 (not res!2666474)) b!6492563))

(assert (= (and b!6492563 (not res!2666480)) b!6492561))

(assert (= (or b!6492565 b!6492566 b!6492570) bm!562160))

(assert (=> b!6492558 m!7279326))

(assert (=> b!6492558 m!7280860))

(assert (=> b!6492558 m!7280860))

(assert (=> b!6492558 m!7281078))

(assert (=> d!2037178 m!7279326))

(assert (=> d!2037178 m!7279328))

(assert (=> d!2037178 m!7279686))

(declare-fun m!7281248 () Bool)

(assert (=> d!2037178 m!7281248))

(assert (=> b!6492563 m!7279326))

(assert (=> b!6492563 m!7280860))

(assert (=> b!6492563 m!7280860))

(assert (=> b!6492563 m!7281078))

(assert (=> b!6492561 m!7279326))

(assert (=> b!6492561 m!7280856))

(assert (=> b!6492567 m!7279686))

(declare-fun m!7281250 () Bool)

(assert (=> b!6492567 m!7281250))

(assert (=> bm!562160 m!7279326))

(assert (=> bm!562160 m!7279328))

(assert (=> b!6492568 m!7279326))

(assert (=> b!6492568 m!7280856))

(assert (=> b!6492562 m!7279326))

(assert (=> b!6492562 m!7280856))

(assert (=> b!6492562 m!7279686))

(assert (=> b!6492562 m!7280856))

(declare-fun m!7281252 () Bool)

(assert (=> b!6492562 m!7281252))

(assert (=> b!6492562 m!7279326))

(assert (=> b!6492562 m!7280860))

(assert (=> b!6492562 m!7281252))

(assert (=> b!6492562 m!7280860))

(declare-fun m!7281254 () Bool)

(assert (=> b!6492562 m!7281254))

(assert (=> b!6491207 d!2037178))

(declare-fun b!6492571 () Bool)

(declare-fun e!3934629 () Regex!16369)

(assert (=> b!6492571 (= e!3934629 (ite (= (head!13211 s!2326) (c!1189393 lt!2389659)) EmptyExpr!16369 EmptyLang!16369))))

(declare-fun b!6492572 () Bool)

(declare-fun e!3934626 () Regex!16369)

(declare-fun call!562169 () Regex!16369)

(declare-fun call!562166 () Regex!16369)

(assert (=> b!6492572 (= e!3934626 (Union!16369 call!562169 call!562166))))

(declare-fun d!2037180 () Bool)

(declare-fun lt!2389929 () Regex!16369)

(assert (=> d!2037180 (validRegex!8105 lt!2389929)))

(declare-fun e!3934628 () Regex!16369)

(assert (=> d!2037180 (= lt!2389929 e!3934628)))

(declare-fun c!1189933 () Bool)

(assert (=> d!2037180 (= c!1189933 (or ((_ is EmptyExpr!16369) lt!2389659) ((_ is EmptyLang!16369) lt!2389659)))))

(assert (=> d!2037180 (validRegex!8105 lt!2389659)))

(assert (=> d!2037180 (= (derivativeStep!5064 lt!2389659 (head!13211 s!2326)) lt!2389929)))

(declare-fun e!3934627 () Regex!16369)

(declare-fun b!6492573 () Bool)

(declare-fun call!562167 () Regex!16369)

(assert (=> b!6492573 (= e!3934627 (Union!16369 (Concat!25214 call!562169 (regTwo!33250 lt!2389659)) call!562167))))

(declare-fun c!1189935 () Bool)

(declare-fun bm!562161 () Bool)

(assert (=> bm!562161 (= call!562169 (derivativeStep!5064 (ite c!1189935 (regOne!33251 lt!2389659) (regOne!33250 lt!2389659)) (head!13211 s!2326)))))

(declare-fun bm!562162 () Bool)

(declare-fun call!562168 () Regex!16369)

(assert (=> bm!562162 (= call!562168 call!562166)))

(declare-fun b!6492574 () Bool)

(declare-fun c!1189932 () Bool)

(assert (=> b!6492574 (= c!1189932 (nullable!6362 (regOne!33250 lt!2389659)))))

(declare-fun e!3934630 () Regex!16369)

(assert (=> b!6492574 (= e!3934630 e!3934627)))

(declare-fun c!1189934 () Bool)

(declare-fun bm!562163 () Bool)

(assert (=> bm!562163 (= call!562166 (derivativeStep!5064 (ite c!1189935 (regTwo!33251 lt!2389659) (ite c!1189934 (reg!16698 lt!2389659) (ite c!1189932 (regTwo!33250 lt!2389659) (regOne!33250 lt!2389659)))) (head!13211 s!2326)))))

(declare-fun b!6492575 () Bool)

(assert (=> b!6492575 (= e!3934627 (Union!16369 (Concat!25214 call!562167 (regTwo!33250 lt!2389659)) EmptyLang!16369))))

(declare-fun b!6492576 () Bool)

(assert (=> b!6492576 (= e!3934626 e!3934630)))

(assert (=> b!6492576 (= c!1189934 ((_ is Star!16369) lt!2389659))))

(declare-fun b!6492577 () Bool)

(assert (=> b!6492577 (= e!3934628 EmptyLang!16369)))

(declare-fun bm!562164 () Bool)

(assert (=> bm!562164 (= call!562167 call!562168)))

(declare-fun b!6492578 () Bool)

(assert (=> b!6492578 (= e!3934630 (Concat!25214 call!562168 lt!2389659))))

(declare-fun b!6492579 () Bool)

(assert (=> b!6492579 (= c!1189935 ((_ is Union!16369) lt!2389659))))

(assert (=> b!6492579 (= e!3934629 e!3934626)))

(declare-fun b!6492580 () Bool)

(assert (=> b!6492580 (= e!3934628 e!3934629)))

(declare-fun c!1189931 () Bool)

(assert (=> b!6492580 (= c!1189931 ((_ is ElementMatch!16369) lt!2389659))))

(assert (= (and d!2037180 c!1189933) b!6492577))

(assert (= (and d!2037180 (not c!1189933)) b!6492580))

(assert (= (and b!6492580 c!1189931) b!6492571))

(assert (= (and b!6492580 (not c!1189931)) b!6492579))

(assert (= (and b!6492579 c!1189935) b!6492572))

(assert (= (and b!6492579 (not c!1189935)) b!6492576))

(assert (= (and b!6492576 c!1189934) b!6492578))

(assert (= (and b!6492576 (not c!1189934)) b!6492574))

(assert (= (and b!6492574 c!1189932) b!6492573))

(assert (= (and b!6492574 (not c!1189932)) b!6492575))

(assert (= (or b!6492573 b!6492575) bm!562164))

(assert (= (or b!6492578 bm!562164) bm!562162))

(assert (= (or b!6492572 bm!562162) bm!562163))

(assert (= (or b!6492572 b!6492573) bm!562161))

(declare-fun m!7281256 () Bool)

(assert (=> d!2037180 m!7281256))

(assert (=> d!2037180 m!7279682))

(assert (=> bm!562161 m!7279330))

(declare-fun m!7281258 () Bool)

(assert (=> bm!562161 m!7281258))

(assert (=> b!6492574 m!7280724))

(assert (=> bm!562163 m!7279330))

(declare-fun m!7281260 () Bool)

(assert (=> bm!562163 m!7281260))

(assert (=> b!6491207 d!2037180))

(assert (=> b!6491207 d!2036906))

(assert (=> b!6491207 d!2036984))

(declare-fun d!2037182 () Bool)

(declare-fun lt!2389932 () Int)

(assert (=> d!2037182 (>= lt!2389932 0)))

(declare-fun e!3934633 () Int)

(assert (=> d!2037182 (= lt!2389932 e!3934633)))

(declare-fun c!1189938 () Bool)

(assert (=> d!2037182 (= c!1189938 ((_ is Nil!65283) lt!2389803))))

(assert (=> d!2037182 (= (size!40430 lt!2389803) lt!2389932)))

(declare-fun b!6492585 () Bool)

(assert (=> b!6492585 (= e!3934633 0)))

(declare-fun b!6492586 () Bool)

(assert (=> b!6492586 (= e!3934633 (+ 1 (size!40430 (t!379035 lt!2389803))))))

(assert (= (and d!2037182 c!1189938) b!6492585))

(assert (= (and d!2037182 (not c!1189938)) b!6492586))

(declare-fun m!7281262 () Bool)

(assert (=> b!6492586 m!7281262))

(assert (=> b!6491465 d!2037182))

(declare-fun d!2037184 () Bool)

(declare-fun lt!2389933 () Int)

(assert (=> d!2037184 (>= lt!2389933 0)))

(declare-fun e!3934634 () Int)

(assert (=> d!2037184 (= lt!2389933 e!3934634)))

(declare-fun c!1189939 () Bool)

(assert (=> d!2037184 (= c!1189939 ((_ is Nil!65283) lt!2389623))))

(assert (=> d!2037184 (= (size!40430 lt!2389623) lt!2389933)))

(declare-fun b!6492587 () Bool)

(assert (=> b!6492587 (= e!3934634 0)))

(declare-fun b!6492588 () Bool)

(assert (=> b!6492588 (= e!3934634 (+ 1 (size!40430 (t!379035 lt!2389623))))))

(assert (= (and d!2037184 c!1189939) b!6492587))

(assert (= (and d!2037184 (not c!1189939)) b!6492588))

(assert (=> b!6492588 m!7281170))

(assert (=> b!6491465 d!2037184))

(declare-fun d!2037186 () Bool)

(declare-fun lt!2389934 () Int)

(assert (=> d!2037186 (>= lt!2389934 0)))

(declare-fun e!3934635 () Int)

(assert (=> d!2037186 (= lt!2389934 e!3934635)))

(declare-fun c!1189940 () Bool)

(assert (=> d!2037186 (= c!1189940 ((_ is Nil!65283) lt!2389636))))

(assert (=> d!2037186 (= (size!40430 lt!2389636) lt!2389934)))

(declare-fun b!6492589 () Bool)

(assert (=> b!6492589 (= e!3934635 0)))

(declare-fun b!6492590 () Bool)

(assert (=> b!6492590 (= e!3934635 (+ 1 (size!40430 (t!379035 lt!2389636))))))

(assert (= (and d!2037186 c!1189940) b!6492589))

(assert (= (and d!2037186 (not c!1189940)) b!6492590))

(declare-fun m!7281264 () Bool)

(assert (=> b!6492590 m!7281264))

(assert (=> b!6491465 d!2037186))

(declare-fun d!2037188 () Bool)

(assert (=> d!2037188 (= (nullable!6362 (h!71731 (exprs!6253 lt!2389656))) (nullableFct!2300 (h!71731 (exprs!6253 lt!2389656))))))

(declare-fun bs!1648464 () Bool)

(assert (= bs!1648464 d!2037188))

(declare-fun m!7281266 () Bool)

(assert (=> bs!1648464 m!7281266))

(assert (=> b!6491225 d!2037188))

(declare-fun b!6492591 () Bool)

(declare-fun res!2666486 () Bool)

(declare-fun e!3934636 () Bool)

(assert (=> b!6492591 (=> res!2666486 e!3934636)))

(declare-fun e!3934640 () Bool)

(assert (=> b!6492591 (= res!2666486 e!3934640)))

(declare-fun res!2666483 () Bool)

(assert (=> b!6492591 (=> (not res!2666483) (not e!3934640))))

(declare-fun lt!2389935 () Bool)

(assert (=> b!6492591 (= res!2666483 lt!2389935)))

(declare-fun b!6492592 () Bool)

(declare-fun res!2666484 () Bool)

(assert (=> b!6492592 (=> (not res!2666484) (not e!3934640))))

(assert (=> b!6492592 (= res!2666484 (isEmpty!37477 (tail!12296 (_1!36651 (get!22637 lt!2389727)))))))

(declare-fun b!6492594 () Bool)

(declare-fun e!3934638 () Bool)

(assert (=> b!6492594 (= e!3934636 e!3934638)))

(declare-fun res!2666487 () Bool)

(assert (=> b!6492594 (=> (not res!2666487) (not e!3934638))))

(assert (=> b!6492594 (= res!2666487 (not lt!2389935))))

(declare-fun bm!562165 () Bool)

(declare-fun call!562170 () Bool)

(assert (=> bm!562165 (= call!562170 (isEmpty!37477 (_1!36651 (get!22637 lt!2389727))))))

(declare-fun b!6492595 () Bool)

(declare-fun e!3934639 () Bool)

(assert (=> b!6492595 (= e!3934639 (not (= (head!13211 (_1!36651 (get!22637 lt!2389727))) (c!1189393 (reg!16698 (regOne!33250 r!7292))))))))

(declare-fun b!6492596 () Bool)

(declare-fun e!3934642 () Bool)

(assert (=> b!6492596 (= e!3934642 (matchR!8552 (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 (get!22637 lt!2389727)))) (tail!12296 (_1!36651 (get!22637 lt!2389727)))))))

(declare-fun b!6492597 () Bool)

(declare-fun res!2666488 () Bool)

(assert (=> b!6492597 (=> res!2666488 e!3934639)))

(assert (=> b!6492597 (= res!2666488 (not (isEmpty!37477 (tail!12296 (_1!36651 (get!22637 lt!2389727))))))))

(declare-fun b!6492598 () Bool)

(declare-fun res!2666485 () Bool)

(assert (=> b!6492598 (=> res!2666485 e!3934636)))

(assert (=> b!6492598 (= res!2666485 (not ((_ is ElementMatch!16369) (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun e!3934637 () Bool)

(assert (=> b!6492598 (= e!3934637 e!3934636)))

(declare-fun b!6492599 () Bool)

(declare-fun e!3934641 () Bool)

(assert (=> b!6492599 (= e!3934641 (= lt!2389935 call!562170))))

(declare-fun b!6492600 () Bool)

(assert (=> b!6492600 (= e!3934638 e!3934639)))

(declare-fun res!2666482 () Bool)

(assert (=> b!6492600 (=> res!2666482 e!3934639)))

(assert (=> b!6492600 (= res!2666482 call!562170)))

(declare-fun b!6492601 () Bool)

(assert (=> b!6492601 (= e!3934642 (nullable!6362 (reg!16698 (regOne!33250 r!7292))))))

(declare-fun b!6492602 () Bool)

(assert (=> b!6492602 (= e!3934640 (= (head!13211 (_1!36651 (get!22637 lt!2389727))) (c!1189393 (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun d!2037190 () Bool)

(assert (=> d!2037190 e!3934641))

(declare-fun c!1189943 () Bool)

(assert (=> d!2037190 (= c!1189943 ((_ is EmptyExpr!16369) (reg!16698 (regOne!33250 r!7292))))))

(assert (=> d!2037190 (= lt!2389935 e!3934642)))

(declare-fun c!1189942 () Bool)

(assert (=> d!2037190 (= c!1189942 (isEmpty!37477 (_1!36651 (get!22637 lt!2389727))))))

(assert (=> d!2037190 (validRegex!8105 (reg!16698 (regOne!33250 r!7292)))))

(assert (=> d!2037190 (= (matchR!8552 (reg!16698 (regOne!33250 r!7292)) (_1!36651 (get!22637 lt!2389727))) lt!2389935)))

(declare-fun b!6492593 () Bool)

(assert (=> b!6492593 (= e!3934641 e!3934637)))

(declare-fun c!1189941 () Bool)

(assert (=> b!6492593 (= c!1189941 ((_ is EmptyLang!16369) (reg!16698 (regOne!33250 r!7292))))))

(declare-fun b!6492603 () Bool)

(assert (=> b!6492603 (= e!3934637 (not lt!2389935))))

(declare-fun b!6492604 () Bool)

(declare-fun res!2666481 () Bool)

(assert (=> b!6492604 (=> (not res!2666481) (not e!3934640))))

(assert (=> b!6492604 (= res!2666481 (not call!562170))))

(assert (= (and d!2037190 c!1189942) b!6492601))

(assert (= (and d!2037190 (not c!1189942)) b!6492596))

(assert (= (and d!2037190 c!1189943) b!6492599))

(assert (= (and d!2037190 (not c!1189943)) b!6492593))

(assert (= (and b!6492593 c!1189941) b!6492603))

(assert (= (and b!6492593 (not c!1189941)) b!6492598))

(assert (= (and b!6492598 (not res!2666485)) b!6492591))

(assert (= (and b!6492591 res!2666483) b!6492604))

(assert (= (and b!6492604 res!2666481) b!6492592))

(assert (= (and b!6492592 res!2666484) b!6492602))

(assert (= (and b!6492591 (not res!2666486)) b!6492594))

(assert (= (and b!6492594 res!2666487) b!6492600))

(assert (= (and b!6492600 (not res!2666482)) b!6492597))

(assert (= (and b!6492597 (not res!2666488)) b!6492595))

(assert (= (or b!6492599 b!6492600 b!6492604) bm!562165))

(declare-fun m!7281268 () Bool)

(assert (=> b!6492592 m!7281268))

(assert (=> b!6492592 m!7281268))

(declare-fun m!7281270 () Bool)

(assert (=> b!6492592 m!7281270))

(declare-fun m!7281272 () Bool)

(assert (=> d!2037190 m!7281272))

(assert (=> d!2037190 m!7279464))

(assert (=> b!6492597 m!7281268))

(assert (=> b!6492597 m!7281268))

(assert (=> b!6492597 m!7281270))

(declare-fun m!7281274 () Bool)

(assert (=> b!6492595 m!7281274))

(assert (=> b!6492601 m!7279606))

(assert (=> bm!562165 m!7281272))

(assert (=> b!6492602 m!7281274))

(assert (=> b!6492596 m!7281274))

(assert (=> b!6492596 m!7281274))

(declare-fun m!7281276 () Bool)

(assert (=> b!6492596 m!7281276))

(assert (=> b!6492596 m!7281268))

(assert (=> b!6492596 m!7281276))

(assert (=> b!6492596 m!7281268))

(declare-fun m!7281278 () Bool)

(assert (=> b!6492596 m!7281278))

(assert (=> b!6491117 d!2037190))

(assert (=> b!6491117 d!2036812))

(declare-fun b!6492608 () Bool)

(declare-fun e!3934644 () Bool)

(declare-fun lt!2389936 () List!65406)

(assert (=> b!6492608 (= e!3934644 (or (not (= (_2!36651 (get!22637 lt!2389734)) Nil!65282)) (= lt!2389936 (_1!36651 (get!22637 lt!2389734)))))))

(declare-fun b!6492607 () Bool)

(declare-fun res!2666490 () Bool)

(assert (=> b!6492607 (=> (not res!2666490) (not e!3934644))))

(assert (=> b!6492607 (= res!2666490 (= (size!40427 lt!2389936) (+ (size!40427 (_1!36651 (get!22637 lt!2389734))) (size!40427 (_2!36651 (get!22637 lt!2389734))))))))

(declare-fun d!2037192 () Bool)

(assert (=> d!2037192 e!3934644))

(declare-fun res!2666489 () Bool)

(assert (=> d!2037192 (=> (not res!2666489) (not e!3934644))))

(assert (=> d!2037192 (= res!2666489 (= (content!12442 lt!2389936) ((_ map or) (content!12442 (_1!36651 (get!22637 lt!2389734))) (content!12442 (_2!36651 (get!22637 lt!2389734))))))))

(declare-fun e!3934643 () List!65406)

(assert (=> d!2037192 (= lt!2389936 e!3934643)))

(declare-fun c!1189944 () Bool)

(assert (=> d!2037192 (= c!1189944 ((_ is Nil!65282) (_1!36651 (get!22637 lt!2389734))))))

(assert (=> d!2037192 (= (++!14448 (_1!36651 (get!22637 lt!2389734)) (_2!36651 (get!22637 lt!2389734))) lt!2389936)))

(declare-fun b!6492606 () Bool)

(assert (=> b!6492606 (= e!3934643 (Cons!65282 (h!71730 (_1!36651 (get!22637 lt!2389734))) (++!14448 (t!379034 (_1!36651 (get!22637 lt!2389734))) (_2!36651 (get!22637 lt!2389734)))))))

(declare-fun b!6492605 () Bool)

(assert (=> b!6492605 (= e!3934643 (_2!36651 (get!22637 lt!2389734)))))

(assert (= (and d!2037192 c!1189944) b!6492605))

(assert (= (and d!2037192 (not c!1189944)) b!6492606))

(assert (= (and d!2037192 res!2666489) b!6492607))

(assert (= (and b!6492607 res!2666490) b!6492608))

(declare-fun m!7281280 () Bool)

(assert (=> b!6492607 m!7281280))

(declare-fun m!7281282 () Bool)

(assert (=> b!6492607 m!7281282))

(declare-fun m!7281284 () Bool)

(assert (=> b!6492607 m!7281284))

(declare-fun m!7281286 () Bool)

(assert (=> d!2037192 m!7281286))

(declare-fun m!7281288 () Bool)

(assert (=> d!2037192 m!7281288))

(declare-fun m!7281290 () Bool)

(assert (=> d!2037192 m!7281290))

(declare-fun m!7281292 () Bool)

(assert (=> b!6492606 m!7281292))

(assert (=> b!6491166 d!2037192))

(assert (=> b!6491166 d!2037090))

(declare-fun b!6492612 () Bool)

(declare-fun e!3934646 () Bool)

(declare-fun lt!2389937 () List!65406)

(assert (=> b!6492612 (= e!3934646 (or (not (= (_2!36651 lt!2389655) Nil!65282)) (= lt!2389937 (t!379034 (_1!36651 lt!2389655)))))))

(declare-fun b!6492611 () Bool)

(declare-fun res!2666492 () Bool)

(assert (=> b!6492611 (=> (not res!2666492) (not e!3934646))))

(assert (=> b!6492611 (= res!2666492 (= (size!40427 lt!2389937) (+ (size!40427 (t!379034 (_1!36651 lt!2389655))) (size!40427 (_2!36651 lt!2389655)))))))

(declare-fun d!2037194 () Bool)

(assert (=> d!2037194 e!3934646))

(declare-fun res!2666491 () Bool)

(assert (=> d!2037194 (=> (not res!2666491) (not e!3934646))))

(assert (=> d!2037194 (= res!2666491 (= (content!12442 lt!2389937) ((_ map or) (content!12442 (t!379034 (_1!36651 lt!2389655))) (content!12442 (_2!36651 lt!2389655)))))))

(declare-fun e!3934645 () List!65406)

(assert (=> d!2037194 (= lt!2389937 e!3934645)))

(declare-fun c!1189945 () Bool)

(assert (=> d!2037194 (= c!1189945 ((_ is Nil!65282) (t!379034 (_1!36651 lt!2389655))))))

(assert (=> d!2037194 (= (++!14448 (t!379034 (_1!36651 lt!2389655)) (_2!36651 lt!2389655)) lt!2389937)))

(declare-fun b!6492610 () Bool)

(assert (=> b!6492610 (= e!3934645 (Cons!65282 (h!71730 (t!379034 (_1!36651 lt!2389655))) (++!14448 (t!379034 (t!379034 (_1!36651 lt!2389655))) (_2!36651 lt!2389655))))))

(declare-fun b!6492609 () Bool)

(assert (=> b!6492609 (= e!3934645 (_2!36651 lt!2389655))))

(assert (= (and d!2037194 c!1189945) b!6492609))

(assert (= (and d!2037194 (not c!1189945)) b!6492610))

(assert (= (and d!2037194 res!2666491) b!6492611))

(assert (= (and b!6492611 res!2666492) b!6492612))

(declare-fun m!7281294 () Bool)

(assert (=> b!6492611 m!7281294))

(declare-fun m!7281296 () Bool)

(assert (=> b!6492611 m!7281296))

(assert (=> b!6492611 m!7279642))

(declare-fun m!7281298 () Bool)

(assert (=> d!2037194 m!7281298))

(declare-fun m!7281300 () Bool)

(assert (=> d!2037194 m!7281300))

(assert (=> d!2037194 m!7279648))

(declare-fun m!7281302 () Bool)

(assert (=> b!6492610 m!7281302))

(assert (=> b!6491170 d!2037194))

(declare-fun d!2037196 () Bool)

(assert (=> d!2037196 (= (isEmpty!37477 (_2!36651 lt!2389638)) ((_ is Nil!65282) (_2!36651 lt!2389638)))))

(assert (=> d!2036502 d!2037196))

(assert (=> d!2036502 d!2037038))

(declare-fun d!2037198 () Bool)

(assert (=> d!2037198 (= (isEmpty!37476 (unfocusZipperList!1790 zl!343)) ((_ is Nil!65283) (unfocusZipperList!1790 zl!343)))))

(assert (=> b!6491285 d!2037198))

(declare-fun b!6492613 () Bool)

(declare-fun res!2666498 () Bool)

(declare-fun e!3934647 () Bool)

(assert (=> b!6492613 (=> res!2666498 e!3934647)))

(declare-fun e!3934651 () Bool)

(assert (=> b!6492613 (= res!2666498 e!3934651)))

(declare-fun res!2666495 () Bool)

(assert (=> b!6492613 (=> (not res!2666495) (not e!3934651))))

(declare-fun lt!2389938 () Bool)

(assert (=> b!6492613 (= res!2666495 lt!2389938)))

(declare-fun b!6492614 () Bool)

(declare-fun res!2666496 () Bool)

(assert (=> b!6492614 (=> (not res!2666496) (not e!3934651))))

(assert (=> b!6492614 (= res!2666496 (isEmpty!37477 (tail!12296 (tail!12296 (_1!36651 lt!2389655)))))))

(declare-fun b!6492616 () Bool)

(declare-fun e!3934649 () Bool)

(assert (=> b!6492616 (= e!3934647 e!3934649)))

(declare-fun res!2666499 () Bool)

(assert (=> b!6492616 (=> (not res!2666499) (not e!3934649))))

(assert (=> b!6492616 (= res!2666499 (not lt!2389938))))

(declare-fun bm!562166 () Bool)

(declare-fun call!562171 () Bool)

(assert (=> bm!562166 (= call!562171 (isEmpty!37477 (tail!12296 (_1!36651 lt!2389655))))))

(declare-fun b!6492617 () Bool)

(declare-fun e!3934650 () Bool)

(assert (=> b!6492617 (= e!3934650 (not (= (head!13211 (tail!12296 (_1!36651 lt!2389655))) (c!1189393 (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 lt!2389655)))))))))

(declare-fun b!6492618 () Bool)

(declare-fun e!3934653 () Bool)

(assert (=> b!6492618 (= e!3934653 (matchR!8552 (derivativeStep!5064 (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 lt!2389655))) (head!13211 (tail!12296 (_1!36651 lt!2389655)))) (tail!12296 (tail!12296 (_1!36651 lt!2389655)))))))

(declare-fun b!6492619 () Bool)

(declare-fun res!2666500 () Bool)

(assert (=> b!6492619 (=> res!2666500 e!3934650)))

(assert (=> b!6492619 (= res!2666500 (not (isEmpty!37477 (tail!12296 (tail!12296 (_1!36651 lt!2389655))))))))

(declare-fun b!6492620 () Bool)

(declare-fun res!2666497 () Bool)

(assert (=> b!6492620 (=> res!2666497 e!3934647)))

(assert (=> b!6492620 (= res!2666497 (not ((_ is ElementMatch!16369) (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 lt!2389655))))))))

(declare-fun e!3934648 () Bool)

(assert (=> b!6492620 (= e!3934648 e!3934647)))

(declare-fun b!6492621 () Bool)

(declare-fun e!3934652 () Bool)

(assert (=> b!6492621 (= e!3934652 (= lt!2389938 call!562171))))

(declare-fun b!6492622 () Bool)

(assert (=> b!6492622 (= e!3934649 e!3934650)))

(declare-fun res!2666494 () Bool)

(assert (=> b!6492622 (=> res!2666494 e!3934650)))

(assert (=> b!6492622 (= res!2666494 call!562171)))

(declare-fun b!6492623 () Bool)

(assert (=> b!6492623 (= e!3934653 (nullable!6362 (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 lt!2389655)))))))

(declare-fun b!6492624 () Bool)

(assert (=> b!6492624 (= e!3934651 (= (head!13211 (tail!12296 (_1!36651 lt!2389655))) (c!1189393 (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 lt!2389655))))))))

(declare-fun d!2037200 () Bool)

(assert (=> d!2037200 e!3934652))

(declare-fun c!1189948 () Bool)

(assert (=> d!2037200 (= c!1189948 ((_ is EmptyExpr!16369) (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 lt!2389655)))))))

(assert (=> d!2037200 (= lt!2389938 e!3934653)))

(declare-fun c!1189947 () Bool)

(assert (=> d!2037200 (= c!1189947 (isEmpty!37477 (tail!12296 (_1!36651 lt!2389655))))))

(assert (=> d!2037200 (validRegex!8105 (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 lt!2389655))))))

(assert (=> d!2037200 (= (matchR!8552 (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 lt!2389655))) (tail!12296 (_1!36651 lt!2389655))) lt!2389938)))

(declare-fun b!6492615 () Bool)

(assert (=> b!6492615 (= e!3934652 e!3934648)))

(declare-fun c!1189946 () Bool)

(assert (=> b!6492615 (= c!1189946 ((_ is EmptyLang!16369) (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 lt!2389655)))))))

(declare-fun b!6492625 () Bool)

(assert (=> b!6492625 (= e!3934648 (not lt!2389938))))

(declare-fun b!6492626 () Bool)

(declare-fun res!2666493 () Bool)

(assert (=> b!6492626 (=> (not res!2666493) (not e!3934651))))

(assert (=> b!6492626 (= res!2666493 (not call!562171))))

(assert (= (and d!2037200 c!1189947) b!6492623))

(assert (= (and d!2037200 (not c!1189947)) b!6492618))

(assert (= (and d!2037200 c!1189948) b!6492621))

(assert (= (and d!2037200 (not c!1189948)) b!6492615))

(assert (= (and b!6492615 c!1189946) b!6492625))

(assert (= (and b!6492615 (not c!1189946)) b!6492620))

(assert (= (and b!6492620 (not res!2666497)) b!6492613))

(assert (= (and b!6492613 res!2666495) b!6492626))

(assert (= (and b!6492626 res!2666493) b!6492614))

(assert (= (and b!6492614 res!2666496) b!6492624))

(assert (= (and b!6492613 (not res!2666498)) b!6492616))

(assert (= (and b!6492616 res!2666499) b!6492622))

(assert (= (and b!6492622 (not res!2666494)) b!6492619))

(assert (= (and b!6492619 (not res!2666500)) b!6492617))

(assert (= (or b!6492621 b!6492622 b!6492626) bm!562166))

(assert (=> b!6492614 m!7279400))

(declare-fun m!7281304 () Bool)

(assert (=> b!6492614 m!7281304))

(assert (=> b!6492614 m!7281304))

(declare-fun m!7281306 () Bool)

(assert (=> b!6492614 m!7281306))

(assert (=> d!2037200 m!7279400))

(assert (=> d!2037200 m!7279402))

(assert (=> d!2037200 m!7279410))

(declare-fun m!7281308 () Bool)

(assert (=> d!2037200 m!7281308))

(assert (=> b!6492619 m!7279400))

(assert (=> b!6492619 m!7281304))

(assert (=> b!6492619 m!7281304))

(assert (=> b!6492619 m!7281306))

(assert (=> b!6492617 m!7279400))

(declare-fun m!7281310 () Bool)

(assert (=> b!6492617 m!7281310))

(assert (=> b!6492623 m!7279410))

(declare-fun m!7281312 () Bool)

(assert (=> b!6492623 m!7281312))

(assert (=> bm!562166 m!7279400))

(assert (=> bm!562166 m!7279402))

(assert (=> b!6492624 m!7279400))

(assert (=> b!6492624 m!7281310))

(assert (=> b!6492618 m!7279400))

(assert (=> b!6492618 m!7281310))

(assert (=> b!6492618 m!7279410))

(assert (=> b!6492618 m!7281310))

(declare-fun m!7281314 () Bool)

(assert (=> b!6492618 m!7281314))

(assert (=> b!6492618 m!7279400))

(assert (=> b!6492618 m!7281304))

(assert (=> b!6492618 m!7281314))

(assert (=> b!6492618 m!7281304))

(declare-fun m!7281316 () Bool)

(assert (=> b!6492618 m!7281316))

(assert (=> b!6490909 d!2037200))

(declare-fun b!6492627 () Bool)

(declare-fun e!3934657 () Regex!16369)

(assert (=> b!6492627 (= e!3934657 (ite (= (head!13211 (_1!36651 lt!2389655)) (c!1189393 lt!2389631)) EmptyExpr!16369 EmptyLang!16369))))

(declare-fun b!6492628 () Bool)

(declare-fun e!3934654 () Regex!16369)

(declare-fun call!562175 () Regex!16369)

(declare-fun call!562172 () Regex!16369)

(assert (=> b!6492628 (= e!3934654 (Union!16369 call!562175 call!562172))))

(declare-fun d!2037202 () Bool)

(declare-fun lt!2389939 () Regex!16369)

(assert (=> d!2037202 (validRegex!8105 lt!2389939)))

(declare-fun e!3934656 () Regex!16369)

(assert (=> d!2037202 (= lt!2389939 e!3934656)))

(declare-fun c!1189951 () Bool)

(assert (=> d!2037202 (= c!1189951 (or ((_ is EmptyExpr!16369) lt!2389631) ((_ is EmptyLang!16369) lt!2389631)))))

(assert (=> d!2037202 (validRegex!8105 lt!2389631)))

(assert (=> d!2037202 (= (derivativeStep!5064 lt!2389631 (head!13211 (_1!36651 lt!2389655))) lt!2389939)))

(declare-fun b!6492629 () Bool)

(declare-fun e!3934655 () Regex!16369)

(declare-fun call!562173 () Regex!16369)

(assert (=> b!6492629 (= e!3934655 (Union!16369 (Concat!25214 call!562175 (regTwo!33250 lt!2389631)) call!562173))))

(declare-fun c!1189953 () Bool)

(declare-fun bm!562167 () Bool)

(assert (=> bm!562167 (= call!562175 (derivativeStep!5064 (ite c!1189953 (regOne!33251 lt!2389631) (regOne!33250 lt!2389631)) (head!13211 (_1!36651 lt!2389655))))))

(declare-fun bm!562168 () Bool)

(declare-fun call!562174 () Regex!16369)

(assert (=> bm!562168 (= call!562174 call!562172)))

(declare-fun b!6492630 () Bool)

(declare-fun c!1189950 () Bool)

(assert (=> b!6492630 (= c!1189950 (nullable!6362 (regOne!33250 lt!2389631)))))

(declare-fun e!3934658 () Regex!16369)

(assert (=> b!6492630 (= e!3934658 e!3934655)))

(declare-fun c!1189952 () Bool)

(declare-fun bm!562169 () Bool)

(assert (=> bm!562169 (= call!562172 (derivativeStep!5064 (ite c!1189953 (regTwo!33251 lt!2389631) (ite c!1189952 (reg!16698 lt!2389631) (ite c!1189950 (regTwo!33250 lt!2389631) (regOne!33250 lt!2389631)))) (head!13211 (_1!36651 lt!2389655))))))

(declare-fun b!6492631 () Bool)

(assert (=> b!6492631 (= e!3934655 (Union!16369 (Concat!25214 call!562173 (regTwo!33250 lt!2389631)) EmptyLang!16369))))

(declare-fun b!6492632 () Bool)

(assert (=> b!6492632 (= e!3934654 e!3934658)))

(assert (=> b!6492632 (= c!1189952 ((_ is Star!16369) lt!2389631))))

(declare-fun b!6492633 () Bool)

(assert (=> b!6492633 (= e!3934656 EmptyLang!16369)))

(declare-fun bm!562170 () Bool)

(assert (=> bm!562170 (= call!562173 call!562174)))

(declare-fun b!6492634 () Bool)

(assert (=> b!6492634 (= e!3934658 (Concat!25214 call!562174 lt!2389631))))

(declare-fun b!6492635 () Bool)

(assert (=> b!6492635 (= c!1189953 ((_ is Union!16369) lt!2389631))))

(assert (=> b!6492635 (= e!3934657 e!3934654)))

(declare-fun b!6492636 () Bool)

(assert (=> b!6492636 (= e!3934656 e!3934657)))

(declare-fun c!1189949 () Bool)

(assert (=> b!6492636 (= c!1189949 ((_ is ElementMatch!16369) lt!2389631))))

(assert (= (and d!2037202 c!1189951) b!6492633))

(assert (= (and d!2037202 (not c!1189951)) b!6492636))

(assert (= (and b!6492636 c!1189949) b!6492627))

(assert (= (and b!6492636 (not c!1189949)) b!6492635))

(assert (= (and b!6492635 c!1189953) b!6492628))

(assert (= (and b!6492635 (not c!1189953)) b!6492632))

(assert (= (and b!6492632 c!1189952) b!6492634))

(assert (= (and b!6492632 (not c!1189952)) b!6492630))

(assert (= (and b!6492630 c!1189950) b!6492629))

(assert (= (and b!6492630 (not c!1189950)) b!6492631))

(assert (= (or b!6492629 b!6492631) bm!562170))

(assert (= (or b!6492634 bm!562170) bm!562168))

(assert (= (or b!6492628 bm!562168) bm!562169))

(assert (= (or b!6492628 b!6492629) bm!562167))

(declare-fun m!7281318 () Bool)

(assert (=> d!2037202 m!7281318))

(assert (=> d!2037202 m!7279404))

(assert (=> bm!562167 m!7279406))

(declare-fun m!7281320 () Bool)

(assert (=> bm!562167 m!7281320))

(declare-fun m!7281322 () Bool)

(assert (=> b!6492630 m!7281322))

(assert (=> bm!562169 m!7279406))

(declare-fun m!7281324 () Bool)

(assert (=> bm!562169 m!7281324))

(assert (=> b!6490909 d!2037202))

(assert (=> b!6490909 d!2037114))

(assert (=> b!6490909 d!2036792))

(assert (=> bm!561973 d!2037196))

(assert (=> d!2036490 d!2036448))

(assert (=> d!2036490 d!2036450))

(declare-fun d!2037204 () Bool)

(assert (=> d!2037204 (= (matchR!8552 lt!2389631 (_1!36651 lt!2389655)) (matchRSpec!3470 lt!2389631 (_1!36651 lt!2389655)))))

(assert (=> d!2037204 true))

(declare-fun _$88!5186 () Unit!158807)

(assert (=> d!2037204 (= (choose!48175 lt!2389631 (_1!36651 lt!2389655)) _$88!5186)))

(declare-fun bs!1648465 () Bool)

(assert (= bs!1648465 d!2037204))

(assert (=> bs!1648465 m!7279130))

(assert (=> bs!1648465 m!7279212))

(assert (=> d!2036490 d!2037204))

(assert (=> d!2036490 d!2037038))

(declare-fun d!2037206 () Bool)

(assert (=> d!2037206 (= (nullable!6362 (reg!16698 r!7292)) (nullableFct!2300 (reg!16698 r!7292)))))

(declare-fun bs!1648466 () Bool)

(assert (= bs!1648466 d!2037206))

(declare-fun m!7281326 () Bool)

(assert (=> bs!1648466 m!7281326))

(assert (=> b!6491642 d!2037206))

(declare-fun d!2037208 () Bool)

(declare-fun c!1189957 () Bool)

(assert (=> d!2037208 (= c!1189957 (and ((_ is ElementMatch!16369) (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))) (= (c!1189393 (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))) (h!71730 s!2326))))))

(declare-fun e!3934663 () (InoxSet Context!11506))

(assert (=> d!2037208 (= (derivationStepZipperDown!1617 (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343))))) (ite c!1189466 lt!2389642 (Context!11507 call!561959)) (h!71730 s!2326)) e!3934663)))

(declare-fun b!6492637 () Bool)

(declare-fun e!3934662 () Bool)

(assert (=> b!6492637 (= e!3934662 (nullable!6362 (regOne!33250 (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343))))))))))

(declare-fun bm!562171 () Bool)

(declare-fun call!562181 () List!65407)

(declare-fun c!1189956 () Bool)

(declare-fun c!1189954 () Bool)

(assert (=> bm!562171 (= call!562181 ($colon$colon!2221 (exprs!6253 (ite c!1189466 lt!2389642 (Context!11507 call!561959))) (ite (or c!1189956 c!1189954) (regTwo!33250 (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))) (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343))))))))))

(declare-fun b!6492638 () Bool)

(declare-fun c!1189958 () Bool)

(assert (=> b!6492638 (= c!1189958 ((_ is Star!16369) (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))))))

(declare-fun e!3934660 () (InoxSet Context!11506))

(declare-fun e!3934661 () (InoxSet Context!11506))

(assert (=> b!6492638 (= e!3934660 e!3934661)))

(declare-fun bm!562172 () Bool)

(declare-fun call!562178 () List!65407)

(assert (=> bm!562172 (= call!562178 call!562181)))

(declare-fun bm!562173 () Bool)

(declare-fun call!562179 () (InoxSet Context!11506))

(declare-fun call!562176 () (InoxSet Context!11506))

(assert (=> bm!562173 (= call!562179 call!562176)))

(declare-fun bm!562174 () Bool)

(declare-fun call!562180 () (InoxSet Context!11506))

(assert (=> bm!562174 (= call!562180 call!562179)))

(declare-fun c!1189955 () Bool)

(declare-fun bm!562175 () Bool)

(declare-fun call!562177 () (InoxSet Context!11506))

(assert (=> bm!562175 (= call!562177 (derivationStepZipperDown!1617 (ite c!1189955 (regTwo!33251 (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))) (regOne!33250 (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343))))))) (ite c!1189955 (ite c!1189466 lt!2389642 (Context!11507 call!561959)) (Context!11507 call!562181)) (h!71730 s!2326)))))

(declare-fun b!6492639 () Bool)

(assert (=> b!6492639 (= e!3934661 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6492640 () Bool)

(assert (=> b!6492640 (= e!3934663 (store ((as const (Array Context!11506 Bool)) false) (ite c!1189466 lt!2389642 (Context!11507 call!561959)) true))))

(declare-fun b!6492641 () Bool)

(assert (=> b!6492641 (= c!1189956 e!3934662)))

(declare-fun res!2666501 () Bool)

(assert (=> b!6492641 (=> (not res!2666501) (not e!3934662))))

(assert (=> b!6492641 (= res!2666501 ((_ is Concat!25214) (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))))))

(declare-fun e!3934664 () (InoxSet Context!11506))

(declare-fun e!3934659 () (InoxSet Context!11506))

(assert (=> b!6492641 (= e!3934664 e!3934659)))

(declare-fun bm!562176 () Bool)

(assert (=> bm!562176 (= call!562176 (derivationStepZipperDown!1617 (ite c!1189955 (regOne!33251 (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))) (ite c!1189956 (regTwo!33250 (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))) (ite c!1189954 (regOne!33250 (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))) (reg!16698 (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343))))))))) (ite (or c!1189955 c!1189956) (ite c!1189466 lt!2389642 (Context!11507 call!561959)) (Context!11507 call!562178)) (h!71730 s!2326)))))

(declare-fun b!6492642 () Bool)

(assert (=> b!6492642 (= e!3934661 call!562180)))

(declare-fun b!6492643 () Bool)

(assert (=> b!6492643 (= e!3934664 ((_ map or) call!562176 call!562177))))

(declare-fun b!6492644 () Bool)

(assert (=> b!6492644 (= e!3934659 ((_ map or) call!562177 call!562179))))

(declare-fun b!6492645 () Bool)

(assert (=> b!6492645 (= e!3934660 call!562180)))

(declare-fun b!6492646 () Bool)

(assert (=> b!6492646 (= e!3934663 e!3934664)))

(assert (=> b!6492646 (= c!1189955 ((_ is Union!16369) (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))))))

(declare-fun b!6492647 () Bool)

(assert (=> b!6492647 (= e!3934659 e!3934660)))

(assert (=> b!6492647 (= c!1189954 ((_ is Concat!25214) (ite c!1189466 (regTwo!33251 (h!71731 (exprs!6253 (h!71732 zl!343)))) (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343)))))))))

(assert (= (and d!2037208 c!1189957) b!6492640))

(assert (= (and d!2037208 (not c!1189957)) b!6492646))

(assert (= (and b!6492646 c!1189955) b!6492643))

(assert (= (and b!6492646 (not c!1189955)) b!6492641))

(assert (= (and b!6492641 res!2666501) b!6492637))

(assert (= (and b!6492641 c!1189956) b!6492644))

(assert (= (and b!6492641 (not c!1189956)) b!6492647))

(assert (= (and b!6492647 c!1189954) b!6492645))

(assert (= (and b!6492647 (not c!1189954)) b!6492638))

(assert (= (and b!6492638 c!1189958) b!6492642))

(assert (= (and b!6492638 (not c!1189958)) b!6492639))

(assert (= (or b!6492645 b!6492642) bm!562172))

(assert (= (or b!6492645 b!6492642) bm!562174))

(assert (= (or b!6492644 bm!562172) bm!562171))

(assert (= (or b!6492644 bm!562174) bm!562173))

(assert (= (or b!6492643 b!6492644) bm!562175))

(assert (= (or b!6492643 bm!562173) bm!562176))

(declare-fun m!7281328 () Bool)

(assert (=> b!6492640 m!7281328))

(declare-fun m!7281330 () Bool)

(assert (=> b!6492637 m!7281330))

(declare-fun m!7281332 () Bool)

(assert (=> bm!562176 m!7281332))

(declare-fun m!7281334 () Bool)

(assert (=> bm!562175 m!7281334))

(declare-fun m!7281336 () Bool)

(assert (=> bm!562171 m!7281336))

(assert (=> bm!561953 d!2037208))

(declare-fun d!2037210 () Bool)

(declare-fun c!1189962 () Bool)

(assert (=> d!2037210 (= c!1189962 (and ((_ is ElementMatch!16369) (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (= (c!1189393 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (h!71730 s!2326))))))

(declare-fun e!3934669 () (InoxSet Context!11506))

(assert (=> d!2037210 (= (derivationStepZipperDown!1617 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))) (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (h!71730 s!2326)) e!3934669)))

(declare-fun b!6492648 () Bool)

(declare-fun e!3934668 () Bool)

(assert (=> b!6492648 (= e!3934668 (nullable!6362 (regOne!33250 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))))))))

(declare-fun bm!562177 () Bool)

(declare-fun call!562187 () List!65407)

(declare-fun c!1189961 () Bool)

(declare-fun c!1189959 () Bool)

(assert (=> bm!562177 (= call!562187 ($colon$colon!2221 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))))) (ite (or c!1189961 c!1189959) (regTwo!33250 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))))))))

(declare-fun b!6492649 () Bool)

(declare-fun c!1189963 () Bool)

(assert (=> b!6492649 (= c!1189963 ((_ is Star!16369) (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))))))

(declare-fun e!3934666 () (InoxSet Context!11506))

(declare-fun e!3934667 () (InoxSet Context!11506))

(assert (=> b!6492649 (= e!3934666 e!3934667)))

(declare-fun bm!562178 () Bool)

(declare-fun call!562184 () List!65407)

(assert (=> bm!562178 (= call!562184 call!562187)))

(declare-fun bm!562179 () Bool)

(declare-fun call!562185 () (InoxSet Context!11506))

(declare-fun call!562182 () (InoxSet Context!11506))

(assert (=> bm!562179 (= call!562185 call!562182)))

(declare-fun bm!562180 () Bool)

(declare-fun call!562186 () (InoxSet Context!11506))

(assert (=> bm!562180 (= call!562186 call!562185)))

(declare-fun bm!562181 () Bool)

(declare-fun c!1189960 () Bool)

(declare-fun call!562183 () (InoxSet Context!11506))

(assert (=> bm!562181 (= call!562183 (derivationStepZipperDown!1617 (ite c!1189960 (regTwo!33251 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (regOne!33250 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))))) (ite c!1189960 (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (Context!11507 call!562187)) (h!71730 s!2326)))))

(declare-fun b!6492650 () Bool)

(assert (=> b!6492650 (= e!3934667 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6492651 () Bool)

(assert (=> b!6492651 (= e!3934669 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) true))))

(declare-fun b!6492652 () Bool)

(assert (=> b!6492652 (= c!1189961 e!3934668)))

(declare-fun res!2666502 () Bool)

(assert (=> b!6492652 (=> (not res!2666502) (not e!3934668))))

(assert (=> b!6492652 (= res!2666502 ((_ is Concat!25214) (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))))))

(declare-fun e!3934670 () (InoxSet Context!11506))

(declare-fun e!3934665 () (InoxSet Context!11506))

(assert (=> b!6492652 (= e!3934670 e!3934665)))

(declare-fun bm!562182 () Bool)

(assert (=> bm!562182 (= call!562182 (derivationStepZipperDown!1617 (ite c!1189960 (regOne!33251 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (ite c!1189961 (regTwo!33250 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (ite c!1189959 (regOne!33250 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (reg!16698 (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343))))))))))) (ite (or c!1189960 c!1189961) (Context!11507 (t!379035 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))) (Context!11507 call!562184)) (h!71730 s!2326)))))

(declare-fun b!6492653 () Bool)

(assert (=> b!6492653 (= e!3934667 call!562186)))

(declare-fun b!6492654 () Bool)

(assert (=> b!6492654 (= e!3934670 ((_ map or) call!562182 call!562183))))

(declare-fun b!6492655 () Bool)

(assert (=> b!6492655 (= e!3934665 ((_ map or) call!562183 call!562185))))

(declare-fun b!6492656 () Bool)

(assert (=> b!6492656 (= e!3934666 call!562186)))

(declare-fun b!6492657 () Bool)

(assert (=> b!6492657 (= e!3934669 e!3934670)))

(assert (=> b!6492657 (= c!1189960 ((_ is Union!16369) (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))))))

(declare-fun b!6492658 () Bool)

(assert (=> b!6492658 (= e!3934665 e!3934666)))

(assert (=> b!6492658 (= c!1189959 ((_ is Concat!25214) (h!71731 (exprs!6253 (Context!11507 (Cons!65283 (h!71731 (exprs!6253 (h!71732 zl!343))) (t!379035 (exprs!6253 (h!71732 zl!343)))))))))))

(assert (= (and d!2037210 c!1189962) b!6492651))

(assert (= (and d!2037210 (not c!1189962)) b!6492657))

(assert (= (and b!6492657 c!1189960) b!6492654))

(assert (= (and b!6492657 (not c!1189960)) b!6492652))

(assert (= (and b!6492652 res!2666502) b!6492648))

(assert (= (and b!6492652 c!1189961) b!6492655))

(assert (= (and b!6492652 (not c!1189961)) b!6492658))

(assert (= (and b!6492658 c!1189959) b!6492656))

(assert (= (and b!6492658 (not c!1189959)) b!6492649))

(assert (= (and b!6492649 c!1189963) b!6492653))

(assert (= (and b!6492649 (not c!1189963)) b!6492650))

(assert (= (or b!6492656 b!6492653) bm!562178))

(assert (= (or b!6492656 b!6492653) bm!562180))

(assert (= (or b!6492655 bm!562178) bm!562177))

(assert (= (or b!6492655 bm!562180) bm!562179))

(assert (= (or b!6492654 b!6492655) bm!562181))

(assert (= (or b!6492654 bm!562179) bm!562182))

(declare-fun m!7281338 () Bool)

(assert (=> b!6492651 m!7281338))

(declare-fun m!7281340 () Bool)

(assert (=> b!6492648 m!7281340))

(declare-fun m!7281342 () Bool)

(assert (=> bm!562182 m!7281342))

(declare-fun m!7281344 () Bool)

(assert (=> bm!562181 m!7281344))

(declare-fun m!7281346 () Bool)

(assert (=> bm!562177 m!7281346))

(assert (=> bm!561955 d!2037210))

(declare-fun d!2037212 () Bool)

(declare-fun c!1189967 () Bool)

(assert (=> d!2037212 (= c!1189967 (and ((_ is ElementMatch!16369) (h!71731 (exprs!6253 lt!2389610))) (= (c!1189393 (h!71731 (exprs!6253 lt!2389610))) (h!71730 s!2326))))))

(declare-fun e!3934675 () (InoxSet Context!11506))

(assert (=> d!2037212 (= (derivationStepZipperDown!1617 (h!71731 (exprs!6253 lt!2389610)) (Context!11507 (t!379035 (exprs!6253 lt!2389610))) (h!71730 s!2326)) e!3934675)))

(declare-fun b!6492659 () Bool)

(declare-fun e!3934674 () Bool)

(assert (=> b!6492659 (= e!3934674 (nullable!6362 (regOne!33250 (h!71731 (exprs!6253 lt!2389610)))))))

(declare-fun c!1189966 () Bool)

(declare-fun c!1189964 () Bool)

(declare-fun call!562193 () List!65407)

(declare-fun bm!562183 () Bool)

(assert (=> bm!562183 (= call!562193 ($colon$colon!2221 (exprs!6253 (Context!11507 (t!379035 (exprs!6253 lt!2389610)))) (ite (or c!1189966 c!1189964) (regTwo!33250 (h!71731 (exprs!6253 lt!2389610))) (h!71731 (exprs!6253 lt!2389610)))))))

(declare-fun b!6492660 () Bool)

(declare-fun c!1189968 () Bool)

(assert (=> b!6492660 (= c!1189968 ((_ is Star!16369) (h!71731 (exprs!6253 lt!2389610))))))

(declare-fun e!3934672 () (InoxSet Context!11506))

(declare-fun e!3934673 () (InoxSet Context!11506))

(assert (=> b!6492660 (= e!3934672 e!3934673)))

(declare-fun bm!562184 () Bool)

(declare-fun call!562190 () List!65407)

(assert (=> bm!562184 (= call!562190 call!562193)))

(declare-fun bm!562185 () Bool)

(declare-fun call!562191 () (InoxSet Context!11506))

(declare-fun call!562188 () (InoxSet Context!11506))

(assert (=> bm!562185 (= call!562191 call!562188)))

(declare-fun bm!562186 () Bool)

(declare-fun call!562192 () (InoxSet Context!11506))

(assert (=> bm!562186 (= call!562192 call!562191)))

(declare-fun c!1189965 () Bool)

(declare-fun bm!562187 () Bool)

(declare-fun call!562189 () (InoxSet Context!11506))

(assert (=> bm!562187 (= call!562189 (derivationStepZipperDown!1617 (ite c!1189965 (regTwo!33251 (h!71731 (exprs!6253 lt!2389610))) (regOne!33250 (h!71731 (exprs!6253 lt!2389610)))) (ite c!1189965 (Context!11507 (t!379035 (exprs!6253 lt!2389610))) (Context!11507 call!562193)) (h!71730 s!2326)))))

(declare-fun b!6492661 () Bool)

(assert (=> b!6492661 (= e!3934673 ((as const (Array Context!11506 Bool)) false))))

(declare-fun b!6492662 () Bool)

(assert (=> b!6492662 (= e!3934675 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (t!379035 (exprs!6253 lt!2389610))) true))))

(declare-fun b!6492663 () Bool)

(assert (=> b!6492663 (= c!1189966 e!3934674)))

(declare-fun res!2666503 () Bool)

(assert (=> b!6492663 (=> (not res!2666503) (not e!3934674))))

(assert (=> b!6492663 (= res!2666503 ((_ is Concat!25214) (h!71731 (exprs!6253 lt!2389610))))))

(declare-fun e!3934676 () (InoxSet Context!11506))

(declare-fun e!3934671 () (InoxSet Context!11506))

(assert (=> b!6492663 (= e!3934676 e!3934671)))

(declare-fun bm!562188 () Bool)

(assert (=> bm!562188 (= call!562188 (derivationStepZipperDown!1617 (ite c!1189965 (regOne!33251 (h!71731 (exprs!6253 lt!2389610))) (ite c!1189966 (regTwo!33250 (h!71731 (exprs!6253 lt!2389610))) (ite c!1189964 (regOne!33250 (h!71731 (exprs!6253 lt!2389610))) (reg!16698 (h!71731 (exprs!6253 lt!2389610)))))) (ite (or c!1189965 c!1189966) (Context!11507 (t!379035 (exprs!6253 lt!2389610))) (Context!11507 call!562190)) (h!71730 s!2326)))))

(declare-fun b!6492664 () Bool)

(assert (=> b!6492664 (= e!3934673 call!562192)))

(declare-fun b!6492665 () Bool)

(assert (=> b!6492665 (= e!3934676 ((_ map or) call!562188 call!562189))))

(declare-fun b!6492666 () Bool)

(assert (=> b!6492666 (= e!3934671 ((_ map or) call!562189 call!562191))))

(declare-fun b!6492667 () Bool)

(assert (=> b!6492667 (= e!3934672 call!562192)))

(declare-fun b!6492668 () Bool)

(assert (=> b!6492668 (= e!3934675 e!3934676)))

(assert (=> b!6492668 (= c!1189965 ((_ is Union!16369) (h!71731 (exprs!6253 lt!2389610))))))

(declare-fun b!6492669 () Bool)

(assert (=> b!6492669 (= e!3934671 e!3934672)))

(assert (=> b!6492669 (= c!1189964 ((_ is Concat!25214) (h!71731 (exprs!6253 lt!2389610))))))

(assert (= (and d!2037212 c!1189967) b!6492662))

(assert (= (and d!2037212 (not c!1189967)) b!6492668))

(assert (= (and b!6492668 c!1189965) b!6492665))

(assert (= (and b!6492668 (not c!1189965)) b!6492663))

(assert (= (and b!6492663 res!2666503) b!6492659))

(assert (= (and b!6492663 c!1189966) b!6492666))

(assert (= (and b!6492663 (not c!1189966)) b!6492669))

(assert (= (and b!6492669 c!1189964) b!6492667))

(assert (= (and b!6492669 (not c!1189964)) b!6492660))

(assert (= (and b!6492660 c!1189968) b!6492664))

(assert (= (and b!6492660 (not c!1189968)) b!6492661))

(assert (= (or b!6492667 b!6492664) bm!562184))

(assert (= (or b!6492667 b!6492664) bm!562186))

(assert (= (or b!6492666 bm!562184) bm!562183))

(assert (= (or b!6492666 bm!562186) bm!562185))

(assert (= (or b!6492665 b!6492666) bm!562187))

(assert (= (or b!6492665 bm!562185) bm!562188))

(declare-fun m!7281348 () Bool)

(assert (=> b!6492662 m!7281348))

(declare-fun m!7281350 () Bool)

(assert (=> b!6492659 m!7281350))

(declare-fun m!7281352 () Bool)

(assert (=> bm!562188 m!7281352))

(declare-fun m!7281354 () Bool)

(assert (=> bm!562187 m!7281354))

(declare-fun m!7281356 () Bool)

(assert (=> bm!562183 m!7281356))

(assert (=> bm!561979 d!2037212))

(assert (=> b!6491555 d!2037176))

(declare-fun bs!1648467 () Bool)

(declare-fun d!2037214 () Bool)

(assert (= bs!1648467 (and d!2037214 d!2036816)))

(declare-fun lambda!359581 () Int)

(assert (=> bs!1648467 (= lambda!359581 lambda!359548)))

(declare-fun bs!1648468 () Bool)

(assert (= bs!1648468 (and d!2037214 d!2036904)))

(assert (=> bs!1648468 (= lambda!359581 lambda!359555)))

(declare-fun bs!1648469 () Bool)

(assert (= bs!1648469 (and d!2037214 d!2036974)))

(assert (=> bs!1648469 (= lambda!359581 lambda!359561)))

(declare-fun bs!1648470 () Bool)

(assert (= bs!1648470 (and d!2037214 d!2036978)))

(assert (=> bs!1648470 (= lambda!359581 lambda!359562)))

(assert (=> d!2037214 (= (nullableZipper!2125 lt!2389614) (exists!2618 lt!2389614 lambda!359581))))

(declare-fun bs!1648471 () Bool)

(assert (= bs!1648471 d!2037214))

(declare-fun m!7281358 () Bool)

(assert (=> bs!1648471 m!7281358))

(assert (=> b!6491394 d!2037214))

(declare-fun d!2037216 () Bool)

(assert (=> d!2037216 (= (nullable!6362 (h!71731 (exprs!6253 lt!2389642))) (nullableFct!2300 (h!71731 (exprs!6253 lt!2389642))))))

(declare-fun bs!1648472 () Bool)

(assert (= bs!1648472 d!2037216))

(declare-fun m!7281360 () Bool)

(assert (=> bs!1648472 m!7281360))

(assert (=> b!6490848 d!2037216))

(declare-fun b!6492670 () Bool)

(declare-fun res!2666509 () Bool)

(declare-fun e!3934677 () Bool)

(assert (=> b!6492670 (=> res!2666509 e!3934677)))

(declare-fun e!3934681 () Bool)

(assert (=> b!6492670 (= res!2666509 e!3934681)))

(declare-fun res!2666506 () Bool)

(assert (=> b!6492670 (=> (not res!2666506) (not e!3934681))))

(declare-fun lt!2389940 () Bool)

(assert (=> b!6492670 (= res!2666506 lt!2389940)))

(declare-fun b!6492671 () Bool)

(declare-fun res!2666507 () Bool)

(assert (=> b!6492671 (=> (not res!2666507) (not e!3934681))))

(assert (=> b!6492671 (= res!2666507 (isEmpty!37477 (tail!12296 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638)))))))

(declare-fun b!6492673 () Bool)

(declare-fun e!3934679 () Bool)

(assert (=> b!6492673 (= e!3934677 e!3934679)))

(declare-fun res!2666510 () Bool)

(assert (=> b!6492673 (=> (not res!2666510) (not e!3934679))))

(assert (=> b!6492673 (= res!2666510 (not lt!2389940))))

(declare-fun bm!562189 () Bool)

(declare-fun call!562194 () Bool)

(assert (=> bm!562189 (= call!562194 (isEmpty!37477 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638))))))

(declare-fun b!6492674 () Bool)

(declare-fun e!3934680 () Bool)

(assert (=> b!6492674 (= e!3934680 (not (= (head!13211 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638))) (c!1189393 (Star!16369 (reg!16698 (regOne!33250 r!7292)))))))))

(declare-fun b!6492675 () Bool)

(declare-fun e!3934683 () Bool)

(assert (=> b!6492675 (= e!3934683 (matchR!8552 (derivativeStep!5064 (Star!16369 (reg!16698 (regOne!33250 r!7292))) (head!13211 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638)))) (tail!12296 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638)))))))

(declare-fun b!6492676 () Bool)

(declare-fun res!2666511 () Bool)

(assert (=> b!6492676 (=> res!2666511 e!3934680)))

(assert (=> b!6492676 (= res!2666511 (not (isEmpty!37477 (tail!12296 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638))))))))

(declare-fun b!6492677 () Bool)

(declare-fun res!2666508 () Bool)

(assert (=> b!6492677 (=> res!2666508 e!3934677)))

(assert (=> b!6492677 (= res!2666508 (not ((_ is ElementMatch!16369) (Star!16369 (reg!16698 (regOne!33250 r!7292))))))))

(declare-fun e!3934678 () Bool)

(assert (=> b!6492677 (= e!3934678 e!3934677)))

(declare-fun b!6492678 () Bool)

(declare-fun e!3934682 () Bool)

(assert (=> b!6492678 (= e!3934682 (= lt!2389940 call!562194))))

(declare-fun b!6492679 () Bool)

(assert (=> b!6492679 (= e!3934679 e!3934680)))

(declare-fun res!2666505 () Bool)

(assert (=> b!6492679 (=> res!2666505 e!3934680)))

(assert (=> b!6492679 (= res!2666505 call!562194)))

(declare-fun b!6492680 () Bool)

(assert (=> b!6492680 (= e!3934683 (nullable!6362 (Star!16369 (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun b!6492681 () Bool)

(assert (=> b!6492681 (= e!3934681 (= (head!13211 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638))) (c!1189393 (Star!16369 (reg!16698 (regOne!33250 r!7292))))))))

(declare-fun d!2037218 () Bool)

(assert (=> d!2037218 e!3934682))

(declare-fun c!1189971 () Bool)

(assert (=> d!2037218 (= c!1189971 ((_ is EmptyExpr!16369) (Star!16369 (reg!16698 (regOne!33250 r!7292)))))))

(assert (=> d!2037218 (= lt!2389940 e!3934683)))

(declare-fun c!1189970 () Bool)

(assert (=> d!2037218 (= c!1189970 (isEmpty!37477 (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638))))))

(assert (=> d!2037218 (validRegex!8105 (Star!16369 (reg!16698 (regOne!33250 r!7292))))))

(assert (=> d!2037218 (= (matchR!8552 (Star!16369 (reg!16698 (regOne!33250 r!7292))) (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638))) lt!2389940)))

(declare-fun b!6492672 () Bool)

(assert (=> b!6492672 (= e!3934682 e!3934678)))

(declare-fun c!1189969 () Bool)

(assert (=> b!6492672 (= c!1189969 ((_ is EmptyLang!16369) (Star!16369 (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun b!6492682 () Bool)

(assert (=> b!6492682 (= e!3934678 (not lt!2389940))))

(declare-fun b!6492683 () Bool)

(declare-fun res!2666504 () Bool)

(assert (=> b!6492683 (=> (not res!2666504) (not e!3934681))))

(assert (=> b!6492683 (= res!2666504 (not call!562194))))

(assert (= (and d!2037218 c!1189970) b!6492680))

(assert (= (and d!2037218 (not c!1189970)) b!6492675))

(assert (= (and d!2037218 c!1189971) b!6492678))

(assert (= (and d!2037218 (not c!1189971)) b!6492672))

(assert (= (and b!6492672 c!1189969) b!6492682))

(assert (= (and b!6492672 (not c!1189969)) b!6492677))

(assert (= (and b!6492677 (not res!2666508)) b!6492670))

(assert (= (and b!6492670 res!2666506) b!6492683))

(assert (= (and b!6492683 res!2666504) b!6492671))

(assert (= (and b!6492671 res!2666507) b!6492681))

(assert (= (and b!6492670 (not res!2666509)) b!6492673))

(assert (= (and b!6492673 res!2666510) b!6492679))

(assert (= (and b!6492679 (not res!2666505)) b!6492676))

(assert (= (and b!6492676 (not res!2666511)) b!6492674))

(assert (= (or b!6492678 b!6492679 b!6492683) bm!562189))

(assert (=> b!6492671 m!7279200))

(declare-fun m!7281362 () Bool)

(assert (=> b!6492671 m!7281362))

(assert (=> b!6492671 m!7281362))

(declare-fun m!7281364 () Bool)

(assert (=> b!6492671 m!7281364))

(assert (=> d!2037218 m!7279200))

(declare-fun m!7281366 () Bool)

(assert (=> d!2037218 m!7281366))

(assert (=> d!2037218 m!7280008))

(assert (=> b!6492676 m!7279200))

(assert (=> b!6492676 m!7281362))

(assert (=> b!6492676 m!7281362))

(assert (=> b!6492676 m!7281364))

(assert (=> b!6492674 m!7279200))

(declare-fun m!7281368 () Bool)

(assert (=> b!6492674 m!7281368))

(declare-fun m!7281370 () Bool)

(assert (=> b!6492680 m!7281370))

(assert (=> bm!562189 m!7279200))

(assert (=> bm!562189 m!7281366))

(assert (=> b!6492681 m!7279200))

(assert (=> b!6492681 m!7281368))

(assert (=> b!6492675 m!7279200))

(assert (=> b!6492675 m!7281368))

(assert (=> b!6492675 m!7281368))

(declare-fun m!7281372 () Bool)

(assert (=> b!6492675 m!7281372))

(assert (=> b!6492675 m!7279200))

(assert (=> b!6492675 m!7281362))

(assert (=> b!6492675 m!7281372))

(assert (=> b!6492675 m!7281362))

(declare-fun m!7281374 () Bool)

(assert (=> b!6492675 m!7281374))

(assert (=> d!2036616 d!2037218))

(assert (=> d!2036616 d!2036454))

(declare-fun d!2037220 () Bool)

(assert (=> d!2037220 (matchR!8552 (Star!16369 (reg!16698 (regOne!33250 r!7292))) (++!14448 (_1!36651 lt!2389638) (_2!36651 lt!2389638)))))

(assert (=> d!2037220 true))

(declare-fun _$125!342 () Unit!158807)

(assert (=> d!2037220 (= (choose!48193 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389638) (_2!36651 lt!2389638)) _$125!342)))

(declare-fun bs!1648473 () Bool)

(assert (= bs!1648473 d!2037220))

(assert (=> bs!1648473 m!7279200))

(assert (=> bs!1648473 m!7279200))

(assert (=> bs!1648473 m!7280004))

(assert (=> d!2036616 d!2037220))

(declare-fun b!6492684 () Bool)

(declare-fun res!2666512 () Bool)

(declare-fun e!3934685 () Bool)

(assert (=> b!6492684 (=> res!2666512 e!3934685)))

(assert (=> b!6492684 (= res!2666512 (not ((_ is Concat!25214) (Star!16369 (reg!16698 (regOne!33250 r!7292))))))))

(declare-fun e!3934687 () Bool)

(assert (=> b!6492684 (= e!3934687 e!3934685)))

(declare-fun b!6492685 () Bool)

(declare-fun e!3934689 () Bool)

(assert (=> b!6492685 (= e!3934685 e!3934689)))

(declare-fun res!2666516 () Bool)

(assert (=> b!6492685 (=> (not res!2666516) (not e!3934689))))

(declare-fun call!562195 () Bool)

(assert (=> b!6492685 (= res!2666516 call!562195)))

(declare-fun b!6492686 () Bool)

(declare-fun call!562197 () Bool)

(assert (=> b!6492686 (= e!3934689 call!562197)))

(declare-fun bm!562190 () Bool)

(declare-fun c!1189973 () Bool)

(assert (=> bm!562190 (= call!562197 (validRegex!8105 (ite c!1189973 (regTwo!33251 (Star!16369 (reg!16698 (regOne!33250 r!7292)))) (regTwo!33250 (Star!16369 (reg!16698 (regOne!33250 r!7292)))))))))

(declare-fun b!6492687 () Bool)

(declare-fun e!3934686 () Bool)

(declare-fun e!3934690 () Bool)

(assert (=> b!6492687 (= e!3934686 e!3934690)))

(declare-fun res!2666515 () Bool)

(assert (=> b!6492687 (= res!2666515 (not (nullable!6362 (reg!16698 (Star!16369 (reg!16698 (regOne!33250 r!7292)))))))))

(assert (=> b!6492687 (=> (not res!2666515) (not e!3934690))))

(declare-fun b!6492688 () Bool)

(declare-fun e!3934684 () Bool)

(assert (=> b!6492688 (= e!3934684 e!3934686)))

(declare-fun c!1189972 () Bool)

(assert (=> b!6492688 (= c!1189972 ((_ is Star!16369) (Star!16369 (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun b!6492689 () Bool)

(declare-fun call!562196 () Bool)

(assert (=> b!6492689 (= e!3934690 call!562196)))

(declare-fun b!6492690 () Bool)

(assert (=> b!6492690 (= e!3934686 e!3934687)))

(assert (=> b!6492690 (= c!1189973 ((_ is Union!16369) (Star!16369 (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun d!2037222 () Bool)

(declare-fun res!2666513 () Bool)

(assert (=> d!2037222 (=> res!2666513 e!3934684)))

(assert (=> d!2037222 (= res!2666513 ((_ is ElementMatch!16369) (Star!16369 (reg!16698 (regOne!33250 r!7292)))))))

(assert (=> d!2037222 (= (validRegex!8105 (Star!16369 (reg!16698 (regOne!33250 r!7292)))) e!3934684)))

(declare-fun bm!562191 () Bool)

(assert (=> bm!562191 (= call!562196 (validRegex!8105 (ite c!1189972 (reg!16698 (Star!16369 (reg!16698 (regOne!33250 r!7292)))) (ite c!1189973 (regOne!33251 (Star!16369 (reg!16698 (regOne!33250 r!7292)))) (regOne!33250 (Star!16369 (reg!16698 (regOne!33250 r!7292))))))))))

(declare-fun b!6492691 () Bool)

(declare-fun e!3934688 () Bool)

(assert (=> b!6492691 (= e!3934688 call!562197)))

(declare-fun b!6492692 () Bool)

(declare-fun res!2666514 () Bool)

(assert (=> b!6492692 (=> (not res!2666514) (not e!3934688))))

(assert (=> b!6492692 (= res!2666514 call!562195)))

(assert (=> b!6492692 (= e!3934687 e!3934688)))

(declare-fun bm!562192 () Bool)

(assert (=> bm!562192 (= call!562195 call!562196)))

(assert (= (and d!2037222 (not res!2666513)) b!6492688))

(assert (= (and b!6492688 c!1189972) b!6492687))

(assert (= (and b!6492688 (not c!1189972)) b!6492690))

(assert (= (and b!6492687 res!2666515) b!6492689))

(assert (= (and b!6492690 c!1189973) b!6492692))

(assert (= (and b!6492690 (not c!1189973)) b!6492684))

(assert (= (and b!6492692 res!2666514) b!6492691))

(assert (= (and b!6492684 (not res!2666512)) b!6492685))

(assert (= (and b!6492685 res!2666516) b!6492686))

(assert (= (or b!6492691 b!6492686) bm!562190))

(assert (= (or b!6492692 b!6492685) bm!562192))

(assert (= (or b!6492689 bm!562192) bm!562191))

(declare-fun m!7281376 () Bool)

(assert (=> bm!562190 m!7281376))

(declare-fun m!7281378 () Bool)

(assert (=> b!6492687 m!7281378))

(declare-fun m!7281380 () Bool)

(assert (=> bm!562191 m!7281380))

(assert (=> d!2036616 d!2037222))

(declare-fun bs!1648474 () Bool)

(declare-fun d!2037224 () Bool)

(assert (= bs!1648474 (and d!2037224 d!2036978)))

(declare-fun lambda!359582 () Int)

(assert (=> bs!1648474 (= lambda!359582 lambda!359562)))

(declare-fun bs!1648475 () Bool)

(assert (= bs!1648475 (and d!2037224 d!2036974)))

(assert (=> bs!1648475 (= lambda!359582 lambda!359561)))

(declare-fun bs!1648476 () Bool)

(assert (= bs!1648476 (and d!2037224 d!2037214)))

(assert (=> bs!1648476 (= lambda!359582 lambda!359581)))

(declare-fun bs!1648477 () Bool)

(assert (= bs!1648477 (and d!2037224 d!2036904)))

(assert (=> bs!1648477 (= lambda!359582 lambda!359555)))

(declare-fun bs!1648478 () Bool)

(assert (= bs!1648478 (and d!2037224 d!2036816)))

(assert (=> bs!1648478 (= lambda!359582 lambda!359548)))

(assert (=> d!2037224 (= (nullableZipper!2125 z!1189) (exists!2618 z!1189 lambda!359582))))

(declare-fun bs!1648479 () Bool)

(assert (= bs!1648479 d!2037224))

(declare-fun m!7281382 () Bool)

(assert (=> bs!1648479 m!7281382))

(assert (=> b!6491126 d!2037224))

(declare-fun d!2037226 () Bool)

(assert (=> d!2037226 (= (head!13211 (_2!36651 lt!2389638)) (h!71730 (_2!36651 lt!2389638)))))

(assert (=> b!6491139 d!2037226))

(assert (=> b!6491146 d!2037066))

(assert (=> bs!1647948 d!2036544))

(declare-fun d!2037228 () Bool)

(assert (=> d!2037228 (= (isDefined!12963 (findConcatSeparation!2674 (reg!16698 (regOne!33250 r!7292)) lt!2389631 Nil!65282 (_1!36651 lt!2389655) (_1!36651 lt!2389655))) (not (isEmpty!37479 (findConcatSeparation!2674 (reg!16698 (regOne!33250 r!7292)) lt!2389631 Nil!65282 (_1!36651 lt!2389655) (_1!36651 lt!2389655)))))))

(declare-fun bs!1648480 () Bool)

(assert (= bs!1648480 d!2037228))

(assert (=> bs!1648480 m!7279210))

(declare-fun m!7281384 () Bool)

(assert (=> bs!1648480 m!7281384))

(assert (=> d!2036472 d!2037228))

(assert (=> d!2036472 d!2036988))

(declare-fun d!2037230 () Bool)

(assert (=> d!2037230 (= (Exists!3439 lambda!359485) (choose!48184 lambda!359485))))

(declare-fun bs!1648481 () Bool)

(assert (= bs!1648481 d!2037230))

(declare-fun m!7281386 () Bool)

(assert (=> bs!1648481 m!7281386))

(assert (=> d!2036472 d!2037230))

(declare-fun bs!1648482 () Bool)

(declare-fun d!2037232 () Bool)

(assert (= bs!1648482 (and d!2037232 b!6490643)))

(declare-fun lambda!359583 () Int)

(assert (=> bs!1648482 (not (= lambda!359583 lambda!359442))))

(declare-fun bs!1648483 () Bool)

(assert (= bs!1648483 (and d!2037232 b!6492359)))

(assert (=> bs!1648483 (not (= lambda!359583 lambda!359577))))

(declare-fun bs!1648484 () Bool)

(assert (= bs!1648484 (and d!2037232 d!2036598)))

(assert (=> bs!1648484 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359583 lambda!359524))))

(declare-fun bs!1648485 () Bool)

(assert (= bs!1648485 (and d!2037232 b!6492463)))

(assert (=> bs!1648485 (not (= lambda!359583 lambda!359578))))

(declare-fun bs!1648486 () Bool)

(assert (= bs!1648486 (and d!2037232 d!2036464)))

(assert (=> bs!1648486 (not (= lambda!359583 lambda!359480))))

(assert (=> bs!1648482 (not (= lambda!359583 lambda!359443))))

(declare-fun bs!1648487 () Bool)

(assert (= bs!1648487 (and d!2037232 d!2036472)))

(assert (=> bs!1648487 (= lambda!359583 lambda!359485)))

(declare-fun bs!1648488 () Bool)

(assert (= bs!1648488 (and d!2037232 b!6492348)))

(assert (=> bs!1648488 (not (= lambda!359583 lambda!359575))))

(declare-fun bs!1648489 () Bool)

(assert (= bs!1648489 (and d!2037232 b!6491888)))

(assert (=> bs!1648489 (not (= lambda!359583 lambda!359551))))

(declare-fun bs!1648490 () Bool)

(assert (= bs!1648490 (and d!2037232 b!6490750)))

(assert (=> bs!1648490 (not (= lambda!359583 lambda!359453))))

(declare-fun bs!1648491 () Bool)

(assert (= bs!1648491 (and d!2037232 b!6490649)))

(assert (=> bs!1648491 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359583 lambda!359436))))

(declare-fun bs!1648492 () Bool)

(assert (= bs!1648492 (and d!2037232 b!6490618)))

(assert (=> bs!1648492 (not (= lambda!359583 lambda!359440))))

(declare-fun bs!1648493 () Bool)

(assert (= bs!1648493 (and d!2037232 b!6492132)))

(assert (=> bs!1648493 (not (= lambda!359583 lambda!359558))))

(declare-fun bs!1648494 () Bool)

(assert (= bs!1648494 (and d!2037232 b!6492357)))

(assert (=> bs!1648494 (not (= lambda!359583 lambda!359576))))

(declare-fun bs!1648495 () Bool)

(assert (= bs!1648495 (and d!2037232 d!2036458)))

(assert (=> bs!1648495 (not (= lambda!359583 lambda!359470))))

(assert (=> bs!1648492 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359583 lambda!359439))))

(declare-fun bs!1648496 () Bool)

(assert (= bs!1648496 (and d!2037232 d!2036606)))

(assert (=> bs!1648496 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359583 lambda!359528))))

(assert (=> bs!1648482 (= lambda!359583 lambda!359441)))

(declare-fun bs!1648497 () Bool)

(assert (= bs!1648497 (and d!2037232 b!6492134)))

(assert (=> bs!1648497 (not (= lambda!359583 lambda!359559))))

(declare-fun bs!1648498 () Bool)

(assert (= bs!1648498 (and d!2037232 b!6492465)))

(assert (=> bs!1648498 (not (= lambda!359583 lambda!359579))))

(declare-fun bs!1648499 () Bool)

(assert (= bs!1648499 (and d!2037232 b!6492283)))

(assert (=> bs!1648499 (not (= lambda!359583 lambda!359565))))

(declare-fun bs!1648500 () Bool)

(assert (= bs!1648500 (and d!2037232 d!2036516)))

(assert (=> bs!1648500 (not (= lambda!359583 lambda!359498))))

(declare-fun bs!1648501 () Bool)

(assert (= bs!1648501 (and d!2037232 b!6491179)))

(assert (=> bs!1648501 (not (= lambda!359583 lambda!359500))))

(declare-fun bs!1648502 () Bool)

(assert (= bs!1648502 (and d!2037232 b!6492285)))

(assert (=> bs!1648502 (not (= lambda!359583 lambda!359566))))

(declare-fun bs!1648503 () Bool)

(assert (= bs!1648503 (and d!2037232 b!6491886)))

(assert (=> bs!1648503 (not (= lambda!359583 lambda!359550))))

(assert (=> bs!1648495 (= (= lt!2389631 (Star!16369 (reg!16698 (regOne!33250 r!7292)))) (= lambda!359583 lambda!359469))))

(declare-fun bs!1648504 () Bool)

(assert (= bs!1648504 (and d!2037232 b!6492346)))

(assert (=> bs!1648504 (not (= lambda!359583 lambda!359574))))

(assert (=> bs!1648496 (not (= lambda!359583 lambda!359529))))

(assert (=> bs!1648500 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359583 lambda!359497))))

(assert (=> bs!1648491 (not (= lambda!359583 lambda!359437))))

(declare-fun bs!1648505 () Bool)

(assert (= bs!1648505 (and d!2037232 b!6490932)))

(assert (=> bs!1648505 (not (= lambda!359583 lambda!359462))))

(assert (=> bs!1648486 (= lambda!359583 lambda!359477)))

(declare-fun bs!1648506 () Bool)

(assert (= bs!1648506 (and d!2037232 b!6490930)))

(assert (=> bs!1648506 (not (= lambda!359583 lambda!359459))))

(declare-fun bs!1648507 () Bool)

(assert (= bs!1648507 (and d!2037232 b!6491181)))

(assert (=> bs!1648507 (not (= lambda!359583 lambda!359501))))

(declare-fun bs!1648508 () Bool)

(assert (= bs!1648508 (and d!2037232 b!6490748)))

(assert (=> bs!1648508 (not (= lambda!359583 lambda!359452))))

(declare-fun bs!1648509 () Bool)

(assert (= bs!1648509 (and d!2037232 d!2037138)))

(assert (=> bs!1648509 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359583 lambda!359580))))

(declare-fun bs!1648510 () Bool)

(assert (= bs!1648510 (and d!2037232 d!2036524)))

(assert (=> bs!1648510 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359583 lambda!359499))))

(declare-fun bs!1648511 () Bool)

(assert (= bs!1648511 (and d!2037232 d!2037036)))

(assert (=> bs!1648511 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359583 lambda!359569))))

(assert (=> d!2037232 true))

(assert (=> d!2037232 true))

(assert (=> d!2037232 true))

(assert (=> d!2037232 (= (isDefined!12963 (findConcatSeparation!2674 (reg!16698 (regOne!33250 r!7292)) lt!2389631 Nil!65282 (_1!36651 lt!2389655) (_1!36651 lt!2389655))) (Exists!3439 lambda!359583))))

(assert (=> d!2037232 true))

(declare-fun _$89!2732 () Unit!158807)

(assert (=> d!2037232 (= (choose!48182 (reg!16698 (regOne!33250 r!7292)) lt!2389631 (_1!36651 lt!2389655)) _$89!2732)))

(declare-fun bs!1648512 () Bool)

(assert (= bs!1648512 d!2037232))

(assert (=> bs!1648512 m!7279210))

(assert (=> bs!1648512 m!7279210))

(assert (=> bs!1648512 m!7279536))

(declare-fun m!7281388 () Bool)

(assert (=> bs!1648512 m!7281388))

(assert (=> d!2036472 d!2037232))

(assert (=> d!2036472 d!2036492))

(declare-fun d!2037234 () Bool)

(assert (=> d!2037234 (= (isEmpty!37476 (exprs!6253 (h!71732 zl!343))) ((_ is Nil!65283) (exprs!6253 (h!71732 zl!343))))))

(assert (=> b!6491382 d!2037234))

(assert (=> b!6491650 d!2036690))

(assert (=> d!2036412 d!2036886))

(assert (=> d!2036412 d!2036692))

(declare-fun d!2037236 () Bool)

(declare-fun c!1189974 () Bool)

(assert (=> d!2037236 (= c!1189974 ((_ is Nil!65282) lt!2389736))))

(declare-fun e!3934691 () (InoxSet C!33008))

(assert (=> d!2037236 (= (content!12442 lt!2389736) e!3934691)))

(declare-fun b!6492693 () Bool)

(assert (=> b!6492693 (= e!3934691 ((as const (Array C!33008 Bool)) false))))

(declare-fun b!6492694 () Bool)

(assert (=> b!6492694 (= e!3934691 ((_ map or) (store ((as const (Array C!33008 Bool)) false) (h!71730 lt!2389736) true) (content!12442 (t!379034 lt!2389736))))))

(assert (= (and d!2037236 c!1189974) b!6492693))

(assert (= (and d!2037236 (not c!1189974)) b!6492694))

(declare-fun m!7281390 () Bool)

(assert (=> b!6492694 m!7281390))

(declare-fun m!7281392 () Bool)

(assert (=> b!6492694 m!7281392))

(assert (=> d!2036514 d!2037236))

(declare-fun d!2037238 () Bool)

(declare-fun c!1189975 () Bool)

(assert (=> d!2037238 (= c!1189975 ((_ is Nil!65282) (_1!36651 lt!2389655)))))

(declare-fun e!3934692 () (InoxSet C!33008))

(assert (=> d!2037238 (= (content!12442 (_1!36651 lt!2389655)) e!3934692)))

(declare-fun b!6492695 () Bool)

(assert (=> b!6492695 (= e!3934692 ((as const (Array C!33008 Bool)) false))))

(declare-fun b!6492696 () Bool)

(assert (=> b!6492696 (= e!3934692 ((_ map or) (store ((as const (Array C!33008 Bool)) false) (h!71730 (_1!36651 lt!2389655)) true) (content!12442 (t!379034 (_1!36651 lt!2389655)))))))

(assert (= (and d!2037238 c!1189975) b!6492695))

(assert (= (and d!2037238 (not c!1189975)) b!6492696))

(declare-fun m!7281394 () Bool)

(assert (=> b!6492696 m!7281394))

(assert (=> b!6492696 m!7281300))

(assert (=> d!2036514 d!2037238))

(assert (=> d!2036514 d!2036862))

(declare-fun d!2037240 () Bool)

(assert (=> d!2037240 (= (nullable!6362 lt!2389661) (nullableFct!2300 lt!2389661))))

(declare-fun bs!1648513 () Bool)

(assert (= bs!1648513 d!2037240))

(declare-fun m!7281396 () Bool)

(assert (=> bs!1648513 m!7281396))

(assert (=> b!6491545 d!2037240))

(assert (=> b!6491208 d!2037150))

(assert (=> b!6491208 d!2036984))

(declare-fun d!2037242 () Bool)

(assert (=> d!2037242 (= (Exists!3439 lambda!359477) (choose!48184 lambda!359477))))

(declare-fun bs!1648514 () Bool)

(assert (= bs!1648514 d!2037242))

(declare-fun m!7281398 () Bool)

(assert (=> bs!1648514 m!7281398))

(assert (=> d!2036464 d!2037242))

(declare-fun d!2037244 () Bool)

(assert (=> d!2037244 (= (Exists!3439 lambda!359480) (choose!48184 lambda!359480))))

(declare-fun bs!1648515 () Bool)

(assert (= bs!1648515 d!2037244))

(declare-fun m!7281400 () Bool)

(assert (=> bs!1648515 m!7281400))

(assert (=> d!2036464 d!2037244))

(declare-fun bs!1648516 () Bool)

(declare-fun d!2037246 () Bool)

(assert (= bs!1648516 (and d!2037246 b!6490643)))

(declare-fun lambda!359588 () Int)

(assert (=> bs!1648516 (not (= lambda!359588 lambda!359442))))

(declare-fun bs!1648517 () Bool)

(assert (= bs!1648517 (and d!2037246 b!6492359)))

(assert (=> bs!1648517 (not (= lambda!359588 lambda!359577))))

(declare-fun bs!1648518 () Bool)

(assert (= bs!1648518 (and d!2037246 d!2036598)))

(assert (=> bs!1648518 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359588 lambda!359524))))

(declare-fun bs!1648519 () Bool)

(assert (= bs!1648519 (and d!2037246 b!6492463)))

(assert (=> bs!1648519 (not (= lambda!359588 lambda!359578))))

(declare-fun bs!1648520 () Bool)

(assert (= bs!1648520 (and d!2037246 d!2036464)))

(assert (=> bs!1648520 (not (= lambda!359588 lambda!359480))))

(assert (=> bs!1648516 (not (= lambda!359588 lambda!359443))))

(declare-fun bs!1648521 () Bool)

(assert (= bs!1648521 (and d!2037246 d!2036472)))

(assert (=> bs!1648521 (= lambda!359588 lambda!359485)))

(declare-fun bs!1648522 () Bool)

(assert (= bs!1648522 (and d!2037246 b!6492348)))

(assert (=> bs!1648522 (not (= lambda!359588 lambda!359575))))

(declare-fun bs!1648523 () Bool)

(assert (= bs!1648523 (and d!2037246 b!6491888)))

(assert (=> bs!1648523 (not (= lambda!359588 lambda!359551))))

(declare-fun bs!1648524 () Bool)

(assert (= bs!1648524 (and d!2037246 b!6490750)))

(assert (=> bs!1648524 (not (= lambda!359588 lambda!359453))))

(declare-fun bs!1648525 () Bool)

(assert (= bs!1648525 (and d!2037246 b!6490649)))

(assert (=> bs!1648525 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359588 lambda!359436))))

(declare-fun bs!1648526 () Bool)

(assert (= bs!1648526 (and d!2037246 b!6490618)))

(assert (=> bs!1648526 (not (= lambda!359588 lambda!359440))))

(declare-fun bs!1648527 () Bool)

(assert (= bs!1648527 (and d!2037246 b!6492132)))

(assert (=> bs!1648527 (not (= lambda!359588 lambda!359558))))

(declare-fun bs!1648528 () Bool)

(assert (= bs!1648528 (and d!2037246 b!6492357)))

(assert (=> bs!1648528 (not (= lambda!359588 lambda!359576))))

(declare-fun bs!1648529 () Bool)

(assert (= bs!1648529 (and d!2037246 d!2036458)))

(assert (=> bs!1648529 (not (= lambda!359588 lambda!359470))))

(assert (=> bs!1648526 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359588 lambda!359439))))

(declare-fun bs!1648530 () Bool)

(assert (= bs!1648530 (and d!2037246 d!2036606)))

(assert (=> bs!1648530 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359588 lambda!359528))))

(assert (=> bs!1648516 (= lambda!359588 lambda!359441)))

(declare-fun bs!1648531 () Bool)

(assert (= bs!1648531 (and d!2037246 b!6492134)))

(assert (=> bs!1648531 (not (= lambda!359588 lambda!359559))))

(declare-fun bs!1648532 () Bool)

(assert (= bs!1648532 (and d!2037246 d!2037232)))

(assert (=> bs!1648532 (= lambda!359588 lambda!359583)))

(declare-fun bs!1648533 () Bool)

(assert (= bs!1648533 (and d!2037246 b!6492465)))

(assert (=> bs!1648533 (not (= lambda!359588 lambda!359579))))

(declare-fun bs!1648534 () Bool)

(assert (= bs!1648534 (and d!2037246 b!6492283)))

(assert (=> bs!1648534 (not (= lambda!359588 lambda!359565))))

(declare-fun bs!1648535 () Bool)

(assert (= bs!1648535 (and d!2037246 d!2036516)))

(assert (=> bs!1648535 (not (= lambda!359588 lambda!359498))))

(declare-fun bs!1648536 () Bool)

(assert (= bs!1648536 (and d!2037246 b!6491179)))

(assert (=> bs!1648536 (not (= lambda!359588 lambda!359500))))

(declare-fun bs!1648537 () Bool)

(assert (= bs!1648537 (and d!2037246 b!6492285)))

(assert (=> bs!1648537 (not (= lambda!359588 lambda!359566))))

(declare-fun bs!1648538 () Bool)

(assert (= bs!1648538 (and d!2037246 b!6491886)))

(assert (=> bs!1648538 (not (= lambda!359588 lambda!359550))))

(assert (=> bs!1648529 (= (= lt!2389631 (Star!16369 (reg!16698 (regOne!33250 r!7292)))) (= lambda!359588 lambda!359469))))

(declare-fun bs!1648539 () Bool)

(assert (= bs!1648539 (and d!2037246 b!6492346)))

(assert (=> bs!1648539 (not (= lambda!359588 lambda!359574))))

(assert (=> bs!1648530 (not (= lambda!359588 lambda!359529))))

(assert (=> bs!1648535 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359588 lambda!359497))))

(assert (=> bs!1648525 (not (= lambda!359588 lambda!359437))))

(declare-fun bs!1648540 () Bool)

(assert (= bs!1648540 (and d!2037246 b!6490932)))

(assert (=> bs!1648540 (not (= lambda!359588 lambda!359462))))

(assert (=> bs!1648520 (= lambda!359588 lambda!359477)))

(declare-fun bs!1648541 () Bool)

(assert (= bs!1648541 (and d!2037246 b!6490930)))

(assert (=> bs!1648541 (not (= lambda!359588 lambda!359459))))

(declare-fun bs!1648542 () Bool)

(assert (= bs!1648542 (and d!2037246 b!6491181)))

(assert (=> bs!1648542 (not (= lambda!359588 lambda!359501))))

(declare-fun bs!1648543 () Bool)

(assert (= bs!1648543 (and d!2037246 b!6490748)))

(assert (=> bs!1648543 (not (= lambda!359588 lambda!359452))))

(declare-fun bs!1648544 () Bool)

(assert (= bs!1648544 (and d!2037246 d!2037138)))

(assert (=> bs!1648544 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359588 lambda!359580))))

(declare-fun bs!1648545 () Bool)

(assert (= bs!1648545 (and d!2037246 d!2036524)))

(assert (=> bs!1648545 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359588 lambda!359499))))

(declare-fun bs!1648546 () Bool)

(assert (= bs!1648546 (and d!2037246 d!2037036)))

(assert (=> bs!1648546 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359588 lambda!359569))))

(assert (=> d!2037246 true))

(assert (=> d!2037246 true))

(assert (=> d!2037246 true))

(declare-fun lambda!359589 () Int)

(assert (=> bs!1648516 (not (= lambda!359589 lambda!359442))))

(assert (=> bs!1648517 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 (regTwo!33251 r!7292))) (= lt!2389631 (regTwo!33250 (regTwo!33251 r!7292)))) (= lambda!359589 lambda!359577))))

(assert (=> bs!1648518 (not (= lambda!359589 lambda!359524))))

(assert (=> bs!1648519 (not (= lambda!359589 lambda!359578))))

(assert (=> bs!1648520 (= lambda!359589 lambda!359480)))

(assert (=> bs!1648516 (= lambda!359589 lambda!359443)))

(declare-fun bs!1648547 () Bool)

(assert (= bs!1648547 d!2037246))

(assert (=> bs!1648547 (not (= lambda!359589 lambda!359588))))

(assert (=> bs!1648521 (not (= lambda!359589 lambda!359485))))

(assert (=> bs!1648522 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 (regTwo!33251 lt!2389659))) (= lt!2389631 (regTwo!33250 (regTwo!33251 lt!2389659)))) (= lambda!359589 lambda!359575))))

(assert (=> bs!1648523 (= (and (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 (regOne!33251 lt!2389631))) (= lt!2389631 (regTwo!33250 (regOne!33251 lt!2389631)))) (= lambda!359589 lambda!359551))))

(assert (=> bs!1648524 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359589 lambda!359453))))

(assert (=> bs!1648525 (not (= lambda!359589 lambda!359436))))

(assert (=> bs!1648526 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359589 lambda!359440))))

(assert (=> bs!1648527 (not (= lambda!359589 lambda!359558))))

(assert (=> bs!1648528 (not (= lambda!359589 lambda!359576))))

(assert (=> bs!1648529 (not (= lambda!359589 lambda!359470))))

(assert (=> bs!1648526 (not (= lambda!359589 lambda!359439))))

(assert (=> bs!1648530 (not (= lambda!359589 lambda!359528))))

(assert (=> bs!1648516 (not (= lambda!359589 lambda!359441))))

(assert (=> bs!1648531 (= (and (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 (regTwo!33251 lt!2389631))) (= lt!2389631 (regTwo!33250 (regTwo!33251 lt!2389631)))) (= lambda!359589 lambda!359559))))

(assert (=> bs!1648532 (not (= lambda!359589 lambda!359583))))

(assert (=> bs!1648533 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 (regOne!33251 lt!2389659))) (= lt!2389631 (regTwo!33250 (regOne!33251 lt!2389659)))) (= lambda!359589 lambda!359579))))

(assert (=> bs!1648534 (not (= lambda!359589 lambda!359565))))

(assert (=> bs!1648535 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359589 lambda!359498))))

(assert (=> bs!1648536 (not (= lambda!359589 lambda!359500))))

(assert (=> bs!1648537 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 (regOne!33251 r!7292))) (= lt!2389631 (regTwo!33250 (regOne!33251 r!7292)))) (= lambda!359589 lambda!359566))))

(assert (=> bs!1648538 (not (= lambda!359589 lambda!359550))))

(assert (=> bs!1648529 (not (= lambda!359589 lambda!359469))))

(assert (=> bs!1648539 (not (= lambda!359589 lambda!359574))))

(assert (=> bs!1648530 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359589 lambda!359529))))

(assert (=> bs!1648535 (not (= lambda!359589 lambda!359497))))

(assert (=> bs!1648525 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= lt!2389631 (regTwo!33250 r!7292))) (= lambda!359589 lambda!359437))))

(assert (=> bs!1648540 (= (and (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 lt!2389631)) (= lt!2389631 (regTwo!33250 lt!2389631))) (= lambda!359589 lambda!359462))))

(assert (=> bs!1648520 (not (= lambda!359589 lambda!359477))))

(assert (=> bs!1648541 (not (= lambda!359589 lambda!359459))))

(assert (=> bs!1648542 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 lt!2389659)) (= lt!2389631 (regTwo!33250 lt!2389659))) (= lambda!359589 lambda!359501))))

(assert (=> bs!1648543 (not (= lambda!359589 lambda!359452))))

(assert (=> bs!1648544 (not (= lambda!359589 lambda!359580))))

(assert (=> bs!1648545 (not (= lambda!359589 lambda!359499))))

(assert (=> bs!1648546 (not (= lambda!359589 lambda!359569))))

(assert (=> d!2037246 true))

(assert (=> d!2037246 true))

(assert (=> d!2037246 true))

(assert (=> d!2037246 (= (Exists!3439 lambda!359588) (Exists!3439 lambda!359589))))

(assert (=> d!2037246 true))

(declare-fun _$90!2352 () Unit!158807)

(assert (=> d!2037246 (= (choose!48181 (reg!16698 (regOne!33250 r!7292)) lt!2389631 (_1!36651 lt!2389655)) _$90!2352)))

(declare-fun m!7281402 () Bool)

(assert (=> bs!1648547 m!7281402))

(declare-fun m!7281404 () Bool)

(assert (=> bs!1648547 m!7281404))

(assert (=> d!2036464 d!2037246))

(assert (=> d!2036464 d!2036988))

(declare-fun b!6492708 () Bool)

(declare-fun e!3934698 () Bool)

(declare-fun lt!2389941 () List!65406)

(assert (=> b!6492708 (= e!3934698 (or (not (= (t!379034 (_1!36651 lt!2389655)) Nil!65282)) (= lt!2389941 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)))))))

(declare-fun b!6492707 () Bool)

(declare-fun res!2666526 () Bool)

(assert (=> b!6492707 (=> (not res!2666526) (not e!3934698))))

(assert (=> b!6492707 (= res!2666526 (= (size!40427 lt!2389941) (+ (size!40427 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282))) (size!40427 (t!379034 (_1!36651 lt!2389655))))))))

(declare-fun d!2037248 () Bool)

(assert (=> d!2037248 e!3934698))

(declare-fun res!2666525 () Bool)

(assert (=> d!2037248 (=> (not res!2666525) (not e!3934698))))

(assert (=> d!2037248 (= res!2666525 (= (content!12442 lt!2389941) ((_ map or) (content!12442 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282))) (content!12442 (t!379034 (_1!36651 lt!2389655))))))))

(declare-fun e!3934697 () List!65406)

(assert (=> d!2037248 (= lt!2389941 e!3934697)))

(declare-fun c!1189976 () Bool)

(assert (=> d!2037248 (= c!1189976 ((_ is Nil!65282) (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282))))))

(assert (=> d!2037248 (= (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)) (t!379034 (_1!36651 lt!2389655))) lt!2389941)))

(declare-fun b!6492706 () Bool)

(assert (=> b!6492706 (= e!3934697 (Cons!65282 (h!71730 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282))) (++!14448 (t!379034 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282))) (t!379034 (_1!36651 lt!2389655)))))))

(declare-fun b!6492705 () Bool)

(assert (=> b!6492705 (= e!3934697 (t!379034 (_1!36651 lt!2389655)))))

(assert (= (and d!2037248 c!1189976) b!6492705))

(assert (= (and d!2037248 (not c!1189976)) b!6492706))

(assert (= (and d!2037248 res!2666525) b!6492707))

(assert (= (and b!6492707 res!2666526) b!6492708))

(declare-fun m!7281406 () Bool)

(assert (=> b!6492707 m!7281406))

(assert (=> b!6492707 m!7279564))

(declare-fun m!7281408 () Bool)

(assert (=> b!6492707 m!7281408))

(assert (=> b!6492707 m!7281296))

(declare-fun m!7281410 () Bool)

(assert (=> d!2037248 m!7281410))

(assert (=> d!2037248 m!7279564))

(declare-fun m!7281412 () Bool)

(assert (=> d!2037248 m!7281412))

(assert (=> d!2037248 m!7281300))

(declare-fun m!7281414 () Bool)

(assert (=> b!6492706 m!7281414))

(assert (=> b!6491116 d!2037248))

(declare-fun b!6492712 () Bool)

(declare-fun e!3934700 () Bool)

(declare-fun lt!2389942 () List!65406)

(assert (=> b!6492712 (= e!3934700 (or (not (= (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282) Nil!65282)) (= lt!2389942 Nil!65282)))))

(declare-fun b!6492711 () Bool)

(declare-fun res!2666528 () Bool)

(assert (=> b!6492711 (=> (not res!2666528) (not e!3934700))))

(assert (=> b!6492711 (= res!2666528 (= (size!40427 lt!2389942) (+ (size!40427 Nil!65282) (size!40427 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)))))))

(declare-fun d!2037250 () Bool)

(assert (=> d!2037250 e!3934700))

(declare-fun res!2666527 () Bool)

(assert (=> d!2037250 (=> (not res!2666527) (not e!3934700))))

(assert (=> d!2037250 (= res!2666527 (= (content!12442 lt!2389942) ((_ map or) (content!12442 Nil!65282) (content!12442 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)))))))

(declare-fun e!3934699 () List!65406)

(assert (=> d!2037250 (= lt!2389942 e!3934699)))

(declare-fun c!1189977 () Bool)

(assert (=> d!2037250 (= c!1189977 ((_ is Nil!65282) Nil!65282))))

(assert (=> d!2037250 (= (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)) lt!2389942)))

(declare-fun b!6492710 () Bool)

(assert (=> b!6492710 (= e!3934699 (Cons!65282 (h!71730 Nil!65282) (++!14448 (t!379034 Nil!65282) (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282))))))

(declare-fun b!6492709 () Bool)

(assert (=> b!6492709 (= e!3934699 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282))))

(assert (= (and d!2037250 c!1189977) b!6492709))

(assert (= (and d!2037250 (not c!1189977)) b!6492710))

(assert (= (and d!2037250 res!2666527) b!6492711))

(assert (= (and b!6492711 res!2666528) b!6492712))

(declare-fun m!7281416 () Bool)

(assert (=> b!6492711 m!7281416))

(assert (=> b!6492711 m!7280910))

(declare-fun m!7281418 () Bool)

(assert (=> b!6492711 m!7281418))

(declare-fun m!7281420 () Bool)

(assert (=> d!2037250 m!7281420))

(assert (=> d!2037250 m!7280916))

(declare-fun m!7281422 () Bool)

(assert (=> d!2037250 m!7281422))

(declare-fun m!7281424 () Bool)

(assert (=> b!6492710 m!7281424))

(assert (=> b!6491116 d!2037250))

(declare-fun d!2037252 () Bool)

(assert (=> d!2037252 (= (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)) (t!379034 (_1!36651 lt!2389655))) (_1!36651 lt!2389655))))

(declare-fun lt!2389943 () Unit!158807)

(assert (=> d!2037252 (= lt!2389943 (choose!48201 Nil!65282 (h!71730 (_1!36651 lt!2389655)) (t!379034 (_1!36651 lt!2389655)) (_1!36651 lt!2389655)))))

(assert (=> d!2037252 (= (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) (t!379034 (_1!36651 lt!2389655)))) (_1!36651 lt!2389655))))

(assert (=> d!2037252 (= (lemmaMoveElementToOtherListKeepsConcatEq!2523 Nil!65282 (h!71730 (_1!36651 lt!2389655)) (t!379034 (_1!36651 lt!2389655)) (_1!36651 lt!2389655)) lt!2389943)))

(declare-fun bs!1648548 () Bool)

(assert (= bs!1648548 d!2037252))

(assert (=> bs!1648548 m!7279564))

(assert (=> bs!1648548 m!7279564))

(assert (=> bs!1648548 m!7279566))

(declare-fun m!7281426 () Bool)

(assert (=> bs!1648548 m!7281426))

(declare-fun m!7281428 () Bool)

(assert (=> bs!1648548 m!7281428))

(assert (=> b!6491116 d!2037252))

(declare-fun b!6492713 () Bool)

(declare-fun e!3934702 () Option!16260)

(declare-fun e!3934704 () Option!16260)

(assert (=> b!6492713 (= e!3934702 e!3934704)))

(declare-fun c!1189978 () Bool)

(assert (=> b!6492713 (= c!1189978 ((_ is Nil!65282) (t!379034 (_1!36651 lt!2389655))))))

(declare-fun b!6492714 () Bool)

(declare-fun e!3934703 () Bool)

(assert (=> b!6492714 (= e!3934703 (matchR!8552 lt!2389631 (t!379034 (_1!36651 lt!2389655))))))

(declare-fun b!6492715 () Bool)

(declare-fun e!3934701 () Bool)

(declare-fun lt!2389945 () Option!16260)

(assert (=> b!6492715 (= e!3934701 (not (isDefined!12963 lt!2389945)))))

(declare-fun b!6492716 () Bool)

(declare-fun lt!2389946 () Unit!158807)

(declare-fun lt!2389944 () Unit!158807)

(assert (=> b!6492716 (= lt!2389946 lt!2389944)))

(assert (=> b!6492716 (= (++!14448 (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)) (Cons!65282 (h!71730 (t!379034 (_1!36651 lt!2389655))) Nil!65282)) (t!379034 (t!379034 (_1!36651 lt!2389655)))) (_1!36651 lt!2389655))))

(assert (=> b!6492716 (= lt!2389944 (lemmaMoveElementToOtherListKeepsConcatEq!2523 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)) (h!71730 (t!379034 (_1!36651 lt!2389655))) (t!379034 (t!379034 (_1!36651 lt!2389655))) (_1!36651 lt!2389655)))))

(assert (=> b!6492716 (= e!3934704 (findConcatSeparation!2674 (reg!16698 (regOne!33250 r!7292)) lt!2389631 (++!14448 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)) (Cons!65282 (h!71730 (t!379034 (_1!36651 lt!2389655))) Nil!65282)) (t!379034 (t!379034 (_1!36651 lt!2389655))) (_1!36651 lt!2389655)))))

(declare-fun b!6492717 () Bool)

(declare-fun res!2666533 () Bool)

(declare-fun e!3934705 () Bool)

(assert (=> b!6492717 (=> (not res!2666533) (not e!3934705))))

(assert (=> b!6492717 (= res!2666533 (matchR!8552 (reg!16698 (regOne!33250 r!7292)) (_1!36651 (get!22637 lt!2389945))))))

(declare-fun b!6492718 () Bool)

(assert (=> b!6492718 (= e!3934702 (Some!16259 (tuple2!66697 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)) (t!379034 (_1!36651 lt!2389655)))))))

(declare-fun d!2037254 () Bool)

(assert (=> d!2037254 e!3934701))

(declare-fun res!2666531 () Bool)

(assert (=> d!2037254 (=> res!2666531 e!3934701)))

(assert (=> d!2037254 (= res!2666531 e!3934705)))

(declare-fun res!2666530 () Bool)

(assert (=> d!2037254 (=> (not res!2666530) (not e!3934705))))

(assert (=> d!2037254 (= res!2666530 (isDefined!12963 lt!2389945))))

(assert (=> d!2037254 (= lt!2389945 e!3934702)))

(declare-fun c!1189979 () Bool)

(assert (=> d!2037254 (= c!1189979 e!3934703)))

(declare-fun res!2666529 () Bool)

(assert (=> d!2037254 (=> (not res!2666529) (not e!3934703))))

(assert (=> d!2037254 (= res!2666529 (matchR!8552 (reg!16698 (regOne!33250 r!7292)) (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282))))))

(assert (=> d!2037254 (validRegex!8105 (reg!16698 (regOne!33250 r!7292)))))

(assert (=> d!2037254 (= (findConcatSeparation!2674 (reg!16698 (regOne!33250 r!7292)) lt!2389631 (++!14448 Nil!65282 (Cons!65282 (h!71730 (_1!36651 lt!2389655)) Nil!65282)) (t!379034 (_1!36651 lt!2389655)) (_1!36651 lt!2389655)) lt!2389945)))

(declare-fun b!6492719 () Bool)

(assert (=> b!6492719 (= e!3934705 (= (++!14448 (_1!36651 (get!22637 lt!2389945)) (_2!36651 (get!22637 lt!2389945))) (_1!36651 lt!2389655)))))

(declare-fun b!6492720 () Bool)

(declare-fun res!2666532 () Bool)

(assert (=> b!6492720 (=> (not res!2666532) (not e!3934705))))

(assert (=> b!6492720 (= res!2666532 (matchR!8552 lt!2389631 (_2!36651 (get!22637 lt!2389945))))))

(declare-fun b!6492721 () Bool)

(assert (=> b!6492721 (= e!3934704 None!16259)))

(assert (= (and d!2037254 res!2666529) b!6492714))

(assert (= (and d!2037254 c!1189979) b!6492718))

(assert (= (and d!2037254 (not c!1189979)) b!6492713))

(assert (= (and b!6492713 c!1189978) b!6492721))

(assert (= (and b!6492713 (not c!1189978)) b!6492716))

(assert (= (and d!2037254 res!2666530) b!6492717))

(assert (= (and b!6492717 res!2666533) b!6492720))

(assert (= (and b!6492720 res!2666532) b!6492719))

(assert (= (and d!2037254 (not res!2666531)) b!6492715))

(declare-fun m!7281430 () Bool)

(assert (=> d!2037254 m!7281430))

(assert (=> d!2037254 m!7279564))

(declare-fun m!7281432 () Bool)

(assert (=> d!2037254 m!7281432))

(assert (=> d!2037254 m!7279464))

(declare-fun m!7281434 () Bool)

(assert (=> b!6492717 m!7281434))

(declare-fun m!7281436 () Bool)

(assert (=> b!6492717 m!7281436))

(assert (=> b!6492719 m!7281434))

(declare-fun m!7281438 () Bool)

(assert (=> b!6492719 m!7281438))

(assert (=> b!6492716 m!7279564))

(declare-fun m!7281440 () Bool)

(assert (=> b!6492716 m!7281440))

(assert (=> b!6492716 m!7281440))

(declare-fun m!7281442 () Bool)

(assert (=> b!6492716 m!7281442))

(assert (=> b!6492716 m!7279564))

(declare-fun m!7281444 () Bool)

(assert (=> b!6492716 m!7281444))

(assert (=> b!6492716 m!7281440))

(declare-fun m!7281446 () Bool)

(assert (=> b!6492716 m!7281446))

(declare-fun m!7281448 () Bool)

(assert (=> b!6492714 m!7281448))

(assert (=> b!6492715 m!7281430))

(assert (=> b!6492720 m!7281434))

(declare-fun m!7281450 () Bool)

(assert (=> b!6492720 m!7281450))

(assert (=> b!6491116 d!2037254))

(assert (=> b!6491503 d!2037024))

(assert (=> b!6491503 d!2036918))

(declare-fun b!6492722 () Bool)

(declare-fun res!2666534 () Bool)

(declare-fun e!3934707 () Bool)

(assert (=> b!6492722 (=> res!2666534 e!3934707)))

(assert (=> b!6492722 (= res!2666534 (not ((_ is Concat!25214) lt!2389752)))))

(declare-fun e!3934709 () Bool)

(assert (=> b!6492722 (= e!3934709 e!3934707)))

(declare-fun b!6492723 () Bool)

(declare-fun e!3934711 () Bool)

(assert (=> b!6492723 (= e!3934707 e!3934711)))

(declare-fun res!2666538 () Bool)

(assert (=> b!6492723 (=> (not res!2666538) (not e!3934711))))

(declare-fun call!562198 () Bool)

(assert (=> b!6492723 (= res!2666538 call!562198)))

(declare-fun b!6492724 () Bool)

(declare-fun call!562200 () Bool)

(assert (=> b!6492724 (= e!3934711 call!562200)))

(declare-fun bm!562193 () Bool)

(declare-fun c!1189981 () Bool)

(assert (=> bm!562193 (= call!562200 (validRegex!8105 (ite c!1189981 (regTwo!33251 lt!2389752) (regTwo!33250 lt!2389752))))))

(declare-fun b!6492725 () Bool)

(declare-fun e!3934708 () Bool)

(declare-fun e!3934712 () Bool)

(assert (=> b!6492725 (= e!3934708 e!3934712)))

(declare-fun res!2666537 () Bool)

(assert (=> b!6492725 (= res!2666537 (not (nullable!6362 (reg!16698 lt!2389752))))))

(assert (=> b!6492725 (=> (not res!2666537) (not e!3934712))))

(declare-fun b!6492726 () Bool)

(declare-fun e!3934706 () Bool)

(assert (=> b!6492726 (= e!3934706 e!3934708)))

(declare-fun c!1189980 () Bool)

(assert (=> b!6492726 (= c!1189980 ((_ is Star!16369) lt!2389752))))

(declare-fun b!6492727 () Bool)

(declare-fun call!562199 () Bool)

(assert (=> b!6492727 (= e!3934712 call!562199)))

(declare-fun b!6492728 () Bool)

(assert (=> b!6492728 (= e!3934708 e!3934709)))

(assert (=> b!6492728 (= c!1189981 ((_ is Union!16369) lt!2389752))))

(declare-fun d!2037256 () Bool)

(declare-fun res!2666535 () Bool)

(assert (=> d!2037256 (=> res!2666535 e!3934706)))

(assert (=> d!2037256 (= res!2666535 ((_ is ElementMatch!16369) lt!2389752))))

(assert (=> d!2037256 (= (validRegex!8105 lt!2389752) e!3934706)))

(declare-fun bm!562194 () Bool)

(assert (=> bm!562194 (= call!562199 (validRegex!8105 (ite c!1189980 (reg!16698 lt!2389752) (ite c!1189981 (regOne!33251 lt!2389752) (regOne!33250 lt!2389752)))))))

(declare-fun b!6492729 () Bool)

(declare-fun e!3934710 () Bool)

(assert (=> b!6492729 (= e!3934710 call!562200)))

(declare-fun b!6492730 () Bool)

(declare-fun res!2666536 () Bool)

(assert (=> b!6492730 (=> (not res!2666536) (not e!3934710))))

(assert (=> b!6492730 (= res!2666536 call!562198)))

(assert (=> b!6492730 (= e!3934709 e!3934710)))

(declare-fun bm!562195 () Bool)

(assert (=> bm!562195 (= call!562198 call!562199)))

(assert (= (and d!2037256 (not res!2666535)) b!6492726))

(assert (= (and b!6492726 c!1189980) b!6492725))

(assert (= (and b!6492726 (not c!1189980)) b!6492728))

(assert (= (and b!6492725 res!2666537) b!6492727))

(assert (= (and b!6492728 c!1189981) b!6492730))

(assert (= (and b!6492728 (not c!1189981)) b!6492722))

(assert (= (and b!6492730 res!2666536) b!6492729))

(assert (= (and b!6492722 (not res!2666534)) b!6492723))

(assert (= (and b!6492723 res!2666538) b!6492724))

(assert (= (or b!6492729 b!6492724) bm!562193))

(assert (= (or b!6492730 b!6492723) bm!562195))

(assert (= (or b!6492727 bm!562195) bm!562194))

(declare-fun m!7281452 () Bool)

(assert (=> bm!562193 m!7281452))

(declare-fun m!7281454 () Bool)

(assert (=> b!6492725 m!7281454))

(declare-fun m!7281456 () Bool)

(assert (=> bm!562194 m!7281456))

(assert (=> d!2036542 d!2037256))

(declare-fun bs!1648549 () Bool)

(declare-fun d!2037258 () Bool)

(assert (= bs!1648549 (and d!2037258 d!2037054)))

(declare-fun lambda!359590 () Int)

(assert (=> bs!1648549 (= lambda!359590 lambda!359571)))

(declare-fun bs!1648550 () Bool)

(assert (= bs!1648550 (and d!2037258 d!2036540)))

(assert (=> bs!1648550 (= lambda!359590 lambda!359502)))

(declare-fun bs!1648551 () Bool)

(assert (= bs!1648551 (and d!2037258 d!2036928)))

(assert (=> bs!1648551 (= lambda!359590 lambda!359557)))

(declare-fun bs!1648552 () Bool)

(assert (= bs!1648552 (and d!2037258 d!2036902)))

(assert (=> bs!1648552 (= lambda!359590 lambda!359554)))

(declare-fun bs!1648553 () Bool)

(assert (= bs!1648553 (and d!2037258 b!6490629)))

(assert (=> bs!1648553 (= lambda!359590 lambda!359444)))

(declare-fun bs!1648554 () Bool)

(assert (= bs!1648554 (and d!2037258 d!2036426)))

(assert (=> bs!1648554 (= lambda!359590 lambda!359456)))

(declare-fun bs!1648555 () Bool)

(assert (= bs!1648555 (and d!2037258 d!2036926)))

(assert (=> bs!1648555 (= lambda!359590 lambda!359556)))

(declare-fun bs!1648556 () Bool)

(assert (= bs!1648556 (and d!2037258 d!2036632)))

(assert (=> bs!1648556 (= lambda!359590 lambda!359532)))

(declare-fun bs!1648557 () Bool)

(assert (= bs!1648557 (and d!2037258 d!2036558)))

(assert (=> bs!1648557 (= lambda!359590 lambda!359507)))

(declare-fun bs!1648558 () Bool)

(assert (= bs!1648558 (and d!2037258 d!2036836)))

(assert (=> bs!1648558 (= lambda!359590 lambda!359552)))

(declare-fun bs!1648559 () Bool)

(assert (= bs!1648559 (and d!2037258 d!2036802)))

(assert (=> bs!1648559 (= lambda!359590 lambda!359545)))

(declare-fun bs!1648560 () Bool)

(assert (= bs!1648560 (and d!2037258 d!2036572)))

(assert (=> bs!1648560 (= lambda!359590 lambda!359520)))

(declare-fun bs!1648561 () Bool)

(assert (= bs!1648561 (and d!2037258 d!2036900)))

(assert (=> bs!1648561 (= lambda!359590 lambda!359553)))

(declare-fun bs!1648562 () Bool)

(assert (= bs!1648562 (and d!2037258 d!2037050)))

(assert (=> bs!1648562 (= lambda!359590 lambda!359570)))

(declare-fun bs!1648563 () Bool)

(assert (= bs!1648563 (and d!2037258 d!2036562)))

(assert (=> bs!1648563 (= lambda!359590 lambda!359513)))

(declare-fun b!6492731 () Bool)

(declare-fun e!3934713 () Regex!16369)

(declare-fun e!3934714 () Regex!16369)

(assert (=> b!6492731 (= e!3934713 e!3934714)))

(declare-fun c!1189983 () Bool)

(assert (=> b!6492731 (= c!1189983 ((_ is Cons!65283) (unfocusZipperList!1790 lt!2389621)))))

(declare-fun b!6492732 () Bool)

(declare-fun e!3934715 () Bool)

(declare-fun lt!2389947 () Regex!16369)

(assert (=> b!6492732 (= e!3934715 (isUnion!1199 lt!2389947))))

(declare-fun b!6492733 () Bool)

(assert (=> b!6492733 (= e!3934715 (= lt!2389947 (head!13214 (unfocusZipperList!1790 lt!2389621))))))

(declare-fun b!6492734 () Bool)

(assert (=> b!6492734 (= e!3934713 (h!71731 (unfocusZipperList!1790 lt!2389621)))))

(declare-fun e!3934717 () Bool)

(assert (=> d!2037258 e!3934717))

(declare-fun res!2666540 () Bool)

(assert (=> d!2037258 (=> (not res!2666540) (not e!3934717))))

(assert (=> d!2037258 (= res!2666540 (validRegex!8105 lt!2389947))))

(assert (=> d!2037258 (= lt!2389947 e!3934713)))

(declare-fun c!1189985 () Bool)

(declare-fun e!3934718 () Bool)

(assert (=> d!2037258 (= c!1189985 e!3934718)))

(declare-fun res!2666539 () Bool)

(assert (=> d!2037258 (=> (not res!2666539) (not e!3934718))))

(assert (=> d!2037258 (= res!2666539 ((_ is Cons!65283) (unfocusZipperList!1790 lt!2389621)))))

(assert (=> d!2037258 (forall!15551 (unfocusZipperList!1790 lt!2389621) lambda!359590)))

(assert (=> d!2037258 (= (generalisedUnion!2213 (unfocusZipperList!1790 lt!2389621)) lt!2389947)))

(declare-fun b!6492735 () Bool)

(declare-fun e!3934716 () Bool)

(assert (=> b!6492735 (= e!3934717 e!3934716)))

(declare-fun c!1189984 () Bool)

(assert (=> b!6492735 (= c!1189984 (isEmpty!37476 (unfocusZipperList!1790 lt!2389621)))))

(declare-fun b!6492736 () Bool)

(assert (=> b!6492736 (= e!3934714 EmptyLang!16369)))

(declare-fun b!6492737 () Bool)

(assert (=> b!6492737 (= e!3934718 (isEmpty!37476 (t!379035 (unfocusZipperList!1790 lt!2389621))))))

(declare-fun b!6492738 () Bool)

(assert (=> b!6492738 (= e!3934714 (Union!16369 (h!71731 (unfocusZipperList!1790 lt!2389621)) (generalisedUnion!2213 (t!379035 (unfocusZipperList!1790 lt!2389621)))))))

(declare-fun b!6492739 () Bool)

(assert (=> b!6492739 (= e!3934716 (isEmptyLang!1769 lt!2389947))))

(declare-fun b!6492740 () Bool)

(assert (=> b!6492740 (= e!3934716 e!3934715)))

(declare-fun c!1189982 () Bool)

(assert (=> b!6492740 (= c!1189982 (isEmpty!37476 (tail!12299 (unfocusZipperList!1790 lt!2389621))))))

(assert (= (and d!2037258 res!2666539) b!6492737))

(assert (= (and d!2037258 c!1189985) b!6492734))

(assert (= (and d!2037258 (not c!1189985)) b!6492731))

(assert (= (and b!6492731 c!1189983) b!6492738))

(assert (= (and b!6492731 (not c!1189983)) b!6492736))

(assert (= (and d!2037258 res!2666540) b!6492735))

(assert (= (and b!6492735 c!1189984) b!6492739))

(assert (= (and b!6492735 (not c!1189984)) b!6492740))

(assert (= (and b!6492740 c!1189982) b!6492733))

(assert (= (and b!6492740 (not c!1189982)) b!6492732))

(declare-fun m!7281458 () Bool)

(assert (=> b!6492732 m!7281458))

(assert (=> b!6492733 m!7279720))

(declare-fun m!7281460 () Bool)

(assert (=> b!6492733 m!7281460))

(declare-fun m!7281462 () Bool)

(assert (=> b!6492737 m!7281462))

(assert (=> b!6492740 m!7279720))

(declare-fun m!7281464 () Bool)

(assert (=> b!6492740 m!7281464))

(assert (=> b!6492740 m!7281464))

(declare-fun m!7281466 () Bool)

(assert (=> b!6492740 m!7281466))

(assert (=> b!6492735 m!7279720))

(declare-fun m!7281468 () Bool)

(assert (=> b!6492735 m!7281468))

(declare-fun m!7281470 () Bool)

(assert (=> b!6492738 m!7281470))

(declare-fun m!7281472 () Bool)

(assert (=> b!6492739 m!7281472))

(declare-fun m!7281474 () Bool)

(assert (=> d!2037258 m!7281474))

(assert (=> d!2037258 m!7279720))

(declare-fun m!7281476 () Bool)

(assert (=> d!2037258 m!7281476))

(assert (=> d!2036542 d!2037258))

(declare-fun bs!1648564 () Bool)

(declare-fun d!2037260 () Bool)

(assert (= bs!1648564 (and d!2037260 d!2037054)))

(declare-fun lambda!359591 () Int)

(assert (=> bs!1648564 (= lambda!359591 lambda!359571)))

(declare-fun bs!1648565 () Bool)

(assert (= bs!1648565 (and d!2037260 d!2036540)))

(assert (=> bs!1648565 (= lambda!359591 lambda!359502)))

(declare-fun bs!1648566 () Bool)

(assert (= bs!1648566 (and d!2037260 d!2036928)))

(assert (=> bs!1648566 (= lambda!359591 lambda!359557)))

(declare-fun bs!1648567 () Bool)

(assert (= bs!1648567 (and d!2037260 d!2036902)))

(assert (=> bs!1648567 (= lambda!359591 lambda!359554)))

(declare-fun bs!1648568 () Bool)

(assert (= bs!1648568 (and d!2037260 b!6490629)))

(assert (=> bs!1648568 (= lambda!359591 lambda!359444)))

(declare-fun bs!1648569 () Bool)

(assert (= bs!1648569 (and d!2037260 d!2037258)))

(assert (=> bs!1648569 (= lambda!359591 lambda!359590)))

(declare-fun bs!1648570 () Bool)

(assert (= bs!1648570 (and d!2037260 d!2036426)))

(assert (=> bs!1648570 (= lambda!359591 lambda!359456)))

(declare-fun bs!1648571 () Bool)

(assert (= bs!1648571 (and d!2037260 d!2036926)))

(assert (=> bs!1648571 (= lambda!359591 lambda!359556)))

(declare-fun bs!1648572 () Bool)

(assert (= bs!1648572 (and d!2037260 d!2036632)))

(assert (=> bs!1648572 (= lambda!359591 lambda!359532)))

(declare-fun bs!1648573 () Bool)

(assert (= bs!1648573 (and d!2037260 d!2036558)))

(assert (=> bs!1648573 (= lambda!359591 lambda!359507)))

(declare-fun bs!1648574 () Bool)

(assert (= bs!1648574 (and d!2037260 d!2036836)))

(assert (=> bs!1648574 (= lambda!359591 lambda!359552)))

(declare-fun bs!1648575 () Bool)

(assert (= bs!1648575 (and d!2037260 d!2036802)))

(assert (=> bs!1648575 (= lambda!359591 lambda!359545)))

(declare-fun bs!1648576 () Bool)

(assert (= bs!1648576 (and d!2037260 d!2036572)))

(assert (=> bs!1648576 (= lambda!359591 lambda!359520)))

(declare-fun bs!1648577 () Bool)

(assert (= bs!1648577 (and d!2037260 d!2036900)))

(assert (=> bs!1648577 (= lambda!359591 lambda!359553)))

(declare-fun bs!1648578 () Bool)

(assert (= bs!1648578 (and d!2037260 d!2037050)))

(assert (=> bs!1648578 (= lambda!359591 lambda!359570)))

(declare-fun bs!1648579 () Bool)

(assert (= bs!1648579 (and d!2037260 d!2036562)))

(assert (=> bs!1648579 (= lambda!359591 lambda!359513)))

(declare-fun lt!2389948 () List!65407)

(assert (=> d!2037260 (forall!15551 lt!2389948 lambda!359591)))

(declare-fun e!3934719 () List!65407)

(assert (=> d!2037260 (= lt!2389948 e!3934719)))

(declare-fun c!1189986 () Bool)

(assert (=> d!2037260 (= c!1189986 ((_ is Cons!65284) lt!2389621))))

(assert (=> d!2037260 (= (unfocusZipperList!1790 lt!2389621) lt!2389948)))

(declare-fun b!6492741 () Bool)

(assert (=> b!6492741 (= e!3934719 (Cons!65283 (generalisedConcat!1966 (exprs!6253 (h!71732 lt!2389621))) (unfocusZipperList!1790 (t!379036 lt!2389621))))))

(declare-fun b!6492742 () Bool)

(assert (=> b!6492742 (= e!3934719 Nil!65283)))

(assert (= (and d!2037260 c!1189986) b!6492741))

(assert (= (and d!2037260 (not c!1189986)) b!6492742))

(declare-fun m!7281478 () Bool)

(assert (=> d!2037260 m!7281478))

(declare-fun m!7281480 () Bool)

(assert (=> b!6492741 m!7281480))

(declare-fun m!7281482 () Bool)

(assert (=> b!6492741 m!7281482))

(assert (=> d!2036542 d!2037260))

(declare-fun b!6492743 () Bool)

(declare-fun res!2666546 () Bool)

(declare-fun e!3934720 () Bool)

(assert (=> b!6492743 (=> res!2666546 e!3934720)))

(declare-fun e!3934724 () Bool)

(assert (=> b!6492743 (= res!2666546 e!3934724)))

(declare-fun res!2666543 () Bool)

(assert (=> b!6492743 (=> (not res!2666543) (not e!3934724))))

(declare-fun lt!2389949 () Bool)

(assert (=> b!6492743 (= res!2666543 lt!2389949)))

(declare-fun b!6492744 () Bool)

(declare-fun res!2666544 () Bool)

(assert (=> b!6492744 (=> (not res!2666544) (not e!3934724))))

(assert (=> b!6492744 (= res!2666544 (isEmpty!37477 (tail!12296 (++!14448 (_1!36651 lt!2389638) lt!2389641))))))

(declare-fun b!6492746 () Bool)

(declare-fun e!3934722 () Bool)

(assert (=> b!6492746 (= e!3934720 e!3934722)))

(declare-fun res!2666547 () Bool)

(assert (=> b!6492746 (=> (not res!2666547) (not e!3934722))))

(assert (=> b!6492746 (= res!2666547 (not lt!2389949))))

(declare-fun bm!562196 () Bool)

(declare-fun call!562201 () Bool)

(assert (=> bm!562196 (= call!562201 (isEmpty!37477 (++!14448 (_1!36651 lt!2389638) lt!2389641)))))

(declare-fun b!6492747 () Bool)

(declare-fun e!3934723 () Bool)

(assert (=> b!6492747 (= e!3934723 (not (= (head!13211 (++!14448 (_1!36651 lt!2389638) lt!2389641)) (c!1189393 (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661)))))))

(declare-fun e!3934726 () Bool)

(declare-fun b!6492748 () Bool)

(assert (=> b!6492748 (= e!3934726 (matchR!8552 (derivativeStep!5064 (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661) (head!13211 (++!14448 (_1!36651 lt!2389638) lt!2389641))) (tail!12296 (++!14448 (_1!36651 lt!2389638) lt!2389641))))))

(declare-fun b!6492749 () Bool)

(declare-fun res!2666548 () Bool)

(assert (=> b!6492749 (=> res!2666548 e!3934723)))

(assert (=> b!6492749 (= res!2666548 (not (isEmpty!37477 (tail!12296 (++!14448 (_1!36651 lt!2389638) lt!2389641)))))))

(declare-fun b!6492750 () Bool)

(declare-fun res!2666545 () Bool)

(assert (=> b!6492750 (=> res!2666545 e!3934720)))

(assert (=> b!6492750 (= res!2666545 (not ((_ is ElementMatch!16369) (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661))))))

(declare-fun e!3934721 () Bool)

(assert (=> b!6492750 (= e!3934721 e!3934720)))

(declare-fun b!6492751 () Bool)

(declare-fun e!3934725 () Bool)

(assert (=> b!6492751 (= e!3934725 (= lt!2389949 call!562201))))

(declare-fun b!6492752 () Bool)

(assert (=> b!6492752 (= e!3934722 e!3934723)))

(declare-fun res!2666542 () Bool)

(assert (=> b!6492752 (=> res!2666542 e!3934723)))

(assert (=> b!6492752 (= res!2666542 call!562201)))

(declare-fun b!6492753 () Bool)

(assert (=> b!6492753 (= e!3934726 (nullable!6362 (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661)))))

(declare-fun b!6492754 () Bool)

(assert (=> b!6492754 (= e!3934724 (= (head!13211 (++!14448 (_1!36651 lt!2389638) lt!2389641)) (c!1189393 (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661))))))

(declare-fun d!2037262 () Bool)

(assert (=> d!2037262 e!3934725))

(declare-fun c!1189989 () Bool)

(assert (=> d!2037262 (= c!1189989 ((_ is EmptyExpr!16369) (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661)))))

(assert (=> d!2037262 (= lt!2389949 e!3934726)))

(declare-fun c!1189988 () Bool)

(assert (=> d!2037262 (= c!1189988 (isEmpty!37477 (++!14448 (_1!36651 lt!2389638) lt!2389641)))))

(assert (=> d!2037262 (validRegex!8105 (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661))))

(assert (=> d!2037262 (= (matchR!8552 (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661) (++!14448 (_1!36651 lt!2389638) lt!2389641)) lt!2389949)))

(declare-fun b!6492745 () Bool)

(assert (=> b!6492745 (= e!3934725 e!3934721)))

(declare-fun c!1189987 () Bool)

(assert (=> b!6492745 (= c!1189987 ((_ is EmptyLang!16369) (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661)))))

(declare-fun b!6492755 () Bool)

(assert (=> b!6492755 (= e!3934721 (not lt!2389949))))

(declare-fun b!6492756 () Bool)

(declare-fun res!2666541 () Bool)

(assert (=> b!6492756 (=> (not res!2666541) (not e!3934724))))

(assert (=> b!6492756 (= res!2666541 (not call!562201))))

(assert (= (and d!2037262 c!1189988) b!6492753))

(assert (= (and d!2037262 (not c!1189988)) b!6492748))

(assert (= (and d!2037262 c!1189989) b!6492751))

(assert (= (and d!2037262 (not c!1189989)) b!6492745))

(assert (= (and b!6492745 c!1189987) b!6492755))

(assert (= (and b!6492745 (not c!1189987)) b!6492750))

(assert (= (and b!6492750 (not res!2666545)) b!6492743))

(assert (= (and b!6492743 res!2666543) b!6492756))

(assert (= (and b!6492756 res!2666541) b!6492744))

(assert (= (and b!6492744 res!2666544) b!6492754))

(assert (= (and b!6492743 (not res!2666546)) b!6492746))

(assert (= (and b!6492746 res!2666547) b!6492752))

(assert (= (and b!6492752 (not res!2666542)) b!6492749))

(assert (= (and b!6492749 (not res!2666548)) b!6492747))

(assert (= (or b!6492751 b!6492752 b!6492756) bm!562196))

(assert (=> b!6492744 m!7279218))

(declare-fun m!7281484 () Bool)

(assert (=> b!6492744 m!7281484))

(assert (=> b!6492744 m!7281484))

(declare-fun m!7281486 () Bool)

(assert (=> b!6492744 m!7281486))

(assert (=> d!2037262 m!7279218))

(declare-fun m!7281488 () Bool)

(assert (=> d!2037262 m!7281488))

(declare-fun m!7281490 () Bool)

(assert (=> d!2037262 m!7281490))

(assert (=> b!6492749 m!7279218))

(assert (=> b!6492749 m!7281484))

(assert (=> b!6492749 m!7281484))

(assert (=> b!6492749 m!7281486))

(assert (=> b!6492747 m!7279218))

(declare-fun m!7281492 () Bool)

(assert (=> b!6492747 m!7281492))

(declare-fun m!7281494 () Bool)

(assert (=> b!6492753 m!7281494))

(assert (=> bm!562196 m!7279218))

(assert (=> bm!562196 m!7281488))

(assert (=> b!6492754 m!7279218))

(assert (=> b!6492754 m!7281492))

(assert (=> b!6492748 m!7279218))

(assert (=> b!6492748 m!7281492))

(assert (=> b!6492748 m!7281492))

(declare-fun m!7281496 () Bool)

(assert (=> b!6492748 m!7281496))

(assert (=> b!6492748 m!7279218))

(assert (=> b!6492748 m!7281484))

(assert (=> b!6492748 m!7281496))

(assert (=> b!6492748 m!7281484))

(declare-fun m!7281498 () Bool)

(assert (=> b!6492748 m!7281498))

(assert (=> d!2036658 d!2037262))

(assert (=> d!2036658 d!2036676))

(declare-fun d!2037264 () Bool)

(assert (=> d!2037264 (matchR!8552 (Concat!25214 (reg!16698 (regOne!33250 r!7292)) lt!2389661) (++!14448 (_1!36651 lt!2389638) lt!2389641))))

(assert (=> d!2037264 true))

(declare-fun _$119!485 () Unit!158807)

(assert (=> d!2037264 (= (choose!48196 (reg!16698 (regOne!33250 r!7292)) lt!2389661 (_1!36651 lt!2389638) lt!2389641) _$119!485)))

(declare-fun bs!1648580 () Bool)

(assert (= bs!1648580 d!2037264))

(assert (=> bs!1648580 m!7279218))

(assert (=> bs!1648580 m!7279218))

(assert (=> bs!1648580 m!7280156))

(assert (=> d!2036658 d!2037264))

(assert (=> d!2036658 d!2036988))

(assert (=> b!6490824 d!2037150))

(assert (=> b!6490824 d!2036984))

(declare-fun d!2037266 () Bool)

(declare-fun c!1189990 () Bool)

(assert (=> d!2037266 (= c!1189990 (isEmpty!37477 (tail!12296 (t!379034 s!2326))))))

(declare-fun e!3934727 () Bool)

(assert (=> d!2037266 (= (matchZipper!2381 (derivationStepZipper!2335 ((_ map or) lt!2389628 lt!2389666) (head!13211 (t!379034 s!2326))) (tail!12296 (t!379034 s!2326))) e!3934727)))

(declare-fun b!6492757 () Bool)

(assert (=> b!6492757 (= e!3934727 (nullableZipper!2125 (derivationStepZipper!2335 ((_ map or) lt!2389628 lt!2389666) (head!13211 (t!379034 s!2326)))))))

(declare-fun b!6492758 () Bool)

(assert (=> b!6492758 (= e!3934727 (matchZipper!2381 (derivationStepZipper!2335 (derivationStepZipper!2335 ((_ map or) lt!2389628 lt!2389666) (head!13211 (t!379034 s!2326))) (head!13211 (tail!12296 (t!379034 s!2326)))) (tail!12296 (tail!12296 (t!379034 s!2326)))))))

(assert (= (and d!2037266 c!1189990) b!6492757))

(assert (= (and d!2037266 (not c!1189990)) b!6492758))

(assert (=> d!2037266 m!7279888))

(assert (=> d!2037266 m!7280524))

(assert (=> b!6492757 m!7280316))

(declare-fun m!7281500 () Bool)

(assert (=> b!6492757 m!7281500))

(assert (=> b!6492758 m!7279888))

(assert (=> b!6492758 m!7280528))

(assert (=> b!6492758 m!7280316))

(assert (=> b!6492758 m!7280528))

(declare-fun m!7281502 () Bool)

(assert (=> b!6492758 m!7281502))

(assert (=> b!6492758 m!7279888))

(assert (=> b!6492758 m!7280532))

(assert (=> b!6492758 m!7281502))

(assert (=> b!6492758 m!7280532))

(declare-fun m!7281504 () Bool)

(assert (=> b!6492758 m!7281504))

(assert (=> b!6491654 d!2037266))

(declare-fun bs!1648581 () Bool)

(declare-fun d!2037268 () Bool)

(assert (= bs!1648581 (and d!2037268 d!2036946)))

(declare-fun lambda!359592 () Int)

(assert (=> bs!1648581 (= (= (head!13211 (t!379034 s!2326)) (head!13211 lt!2389663)) (= lambda!359592 lambda!359560))))

(declare-fun bs!1648582 () Bool)

(assert (= bs!1648582 (and d!2037268 d!2036402)))

(assert (=> bs!1648582 (= (= (head!13211 (t!379034 s!2326)) (h!71730 s!2326)) (= lambda!359592 lambda!359447))))

(declare-fun bs!1648583 () Bool)

(assert (= bs!1648583 (and d!2037268 d!2036822)))

(assert (=> bs!1648583 (= lambda!359592 lambda!359549)))

(declare-fun bs!1648584 () Bool)

(assert (= bs!1648584 (and d!2037268 d!2036998)))

(assert (=> bs!1648584 (= lambda!359592 lambda!359564)))

(declare-fun bs!1648585 () Bool)

(assert (= bs!1648585 (and d!2037268 d!2037058)))

(assert (=> bs!1648585 (= (= (head!13211 (t!379034 s!2326)) (head!13211 lt!2389663)) (= lambda!359592 lambda!359572))))

(declare-fun bs!1648586 () Bool)

(assert (= bs!1648586 (and d!2037268 d!2037064)))

(assert (=> bs!1648586 (= (= (head!13211 (t!379034 s!2326)) (head!13211 (_1!36651 lt!2389638))) (= lambda!359592 lambda!359573))))

(declare-fun bs!1648587 () Bool)

(assert (= bs!1648587 (and d!2037268 b!6490636)))

(assert (=> bs!1648587 (= (= (head!13211 (t!379034 s!2326)) (h!71730 s!2326)) (= lambda!359592 lambda!359438))))

(declare-fun bs!1648588 () Bool)

(assert (= bs!1648588 (and d!2037268 d!2036982)))

(assert (=> bs!1648588 (= (= (head!13211 (t!379034 s!2326)) (head!13211 s!2326)) (= lambda!359592 lambda!359563))))

(assert (=> d!2037268 true))

(assert (=> d!2037268 (= (derivationStepZipper!2335 ((_ map or) lt!2389628 lt!2389666) (head!13211 (t!379034 s!2326))) (flatMap!1874 ((_ map or) lt!2389628 lt!2389666) lambda!359592))))

(declare-fun bs!1648589 () Bool)

(assert (= bs!1648589 d!2037268))

(declare-fun m!7281506 () Bool)

(assert (=> bs!1648589 m!7281506))

(assert (=> b!6491654 d!2037268))

(assert (=> b!6491654 d!2036824))

(assert (=> b!6491654 d!2036826))

(declare-fun b!6492759 () Bool)

(declare-fun res!2666554 () Bool)

(declare-fun e!3934728 () Bool)

(assert (=> b!6492759 (=> res!2666554 e!3934728)))

(declare-fun e!3934732 () Bool)

(assert (=> b!6492759 (= res!2666554 e!3934732)))

(declare-fun res!2666551 () Bool)

(assert (=> b!6492759 (=> (not res!2666551) (not e!3934732))))

(declare-fun lt!2389950 () Bool)

(assert (=> b!6492759 (= res!2666551 lt!2389950)))

(declare-fun b!6492760 () Bool)

(declare-fun res!2666552 () Bool)

(assert (=> b!6492760 (=> (not res!2666552) (not e!3934732))))

(assert (=> b!6492760 (= res!2666552 (isEmpty!37477 (tail!12296 (_2!36651 (get!22637 lt!2389777)))))))

(declare-fun b!6492762 () Bool)

(declare-fun e!3934730 () Bool)

(assert (=> b!6492762 (= e!3934728 e!3934730)))

(declare-fun res!2666555 () Bool)

(assert (=> b!6492762 (=> (not res!2666555) (not e!3934730))))

(assert (=> b!6492762 (= res!2666555 (not lt!2389950))))

(declare-fun bm!562197 () Bool)

(declare-fun call!562202 () Bool)

(assert (=> bm!562197 (= call!562202 (isEmpty!37477 (_2!36651 (get!22637 lt!2389777))))))

(declare-fun b!6492763 () Bool)

(declare-fun e!3934731 () Bool)

(assert (=> b!6492763 (= e!3934731 (not (= (head!13211 (_2!36651 (get!22637 lt!2389777))) (c!1189393 (regTwo!33250 r!7292)))))))

(declare-fun b!6492764 () Bool)

(declare-fun e!3934734 () Bool)

(assert (=> b!6492764 (= e!3934734 (matchR!8552 (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 (get!22637 lt!2389777)))) (tail!12296 (_2!36651 (get!22637 lt!2389777)))))))

(declare-fun b!6492765 () Bool)

(declare-fun res!2666556 () Bool)

(assert (=> b!6492765 (=> res!2666556 e!3934731)))

(assert (=> b!6492765 (= res!2666556 (not (isEmpty!37477 (tail!12296 (_2!36651 (get!22637 lt!2389777))))))))

(declare-fun b!6492766 () Bool)

(declare-fun res!2666553 () Bool)

(assert (=> b!6492766 (=> res!2666553 e!3934728)))

(assert (=> b!6492766 (= res!2666553 (not ((_ is ElementMatch!16369) (regTwo!33250 r!7292))))))

(declare-fun e!3934729 () Bool)

(assert (=> b!6492766 (= e!3934729 e!3934728)))

(declare-fun b!6492767 () Bool)

(declare-fun e!3934733 () Bool)

(assert (=> b!6492767 (= e!3934733 (= lt!2389950 call!562202))))

(declare-fun b!6492768 () Bool)

(assert (=> b!6492768 (= e!3934730 e!3934731)))

(declare-fun res!2666550 () Bool)

(assert (=> b!6492768 (=> res!2666550 e!3934731)))

(assert (=> b!6492768 (= res!2666550 call!562202)))

(declare-fun b!6492769 () Bool)

(assert (=> b!6492769 (= e!3934734 (nullable!6362 (regTwo!33250 r!7292)))))

(declare-fun b!6492770 () Bool)

(assert (=> b!6492770 (= e!3934732 (= (head!13211 (_2!36651 (get!22637 lt!2389777))) (c!1189393 (regTwo!33250 r!7292))))))

(declare-fun d!2037270 () Bool)

(assert (=> d!2037270 e!3934733))

(declare-fun c!1189993 () Bool)

(assert (=> d!2037270 (= c!1189993 ((_ is EmptyExpr!16369) (regTwo!33250 r!7292)))))

(assert (=> d!2037270 (= lt!2389950 e!3934734)))

(declare-fun c!1189992 () Bool)

(assert (=> d!2037270 (= c!1189992 (isEmpty!37477 (_2!36651 (get!22637 lt!2389777))))))

(assert (=> d!2037270 (validRegex!8105 (regTwo!33250 r!7292))))

(assert (=> d!2037270 (= (matchR!8552 (regTwo!33250 r!7292) (_2!36651 (get!22637 lt!2389777))) lt!2389950)))

(declare-fun b!6492761 () Bool)

(assert (=> b!6492761 (= e!3934733 e!3934729)))

(declare-fun c!1189991 () Bool)

(assert (=> b!6492761 (= c!1189991 ((_ is EmptyLang!16369) (regTwo!33250 r!7292)))))

(declare-fun b!6492771 () Bool)

(assert (=> b!6492771 (= e!3934729 (not lt!2389950))))

(declare-fun b!6492772 () Bool)

(declare-fun res!2666549 () Bool)

(assert (=> b!6492772 (=> (not res!2666549) (not e!3934732))))

(assert (=> b!6492772 (= res!2666549 (not call!562202))))

(assert (= (and d!2037270 c!1189992) b!6492769))

(assert (= (and d!2037270 (not c!1189992)) b!6492764))

(assert (= (and d!2037270 c!1189993) b!6492767))

(assert (= (and d!2037270 (not c!1189993)) b!6492761))

(assert (= (and b!6492761 c!1189991) b!6492771))

(assert (= (and b!6492761 (not c!1189991)) b!6492766))

(assert (= (and b!6492766 (not res!2666553)) b!6492759))

(assert (= (and b!6492759 res!2666551) b!6492772))

(assert (= (and b!6492772 res!2666549) b!6492760))

(assert (= (and b!6492760 res!2666552) b!6492770))

(assert (= (and b!6492759 (not res!2666554)) b!6492762))

(assert (= (and b!6492762 res!2666555) b!6492768))

(assert (= (and b!6492768 (not res!2666550)) b!6492765))

(assert (= (and b!6492765 (not res!2666556)) b!6492763))

(assert (= (or b!6492767 b!6492768 b!6492772) bm!562197))

(declare-fun m!7281508 () Bool)

(assert (=> b!6492760 m!7281508))

(assert (=> b!6492760 m!7281508))

(declare-fun m!7281510 () Bool)

(assert (=> b!6492760 m!7281510))

(declare-fun m!7281512 () Bool)

(assert (=> d!2037270 m!7281512))

(assert (=> d!2037270 m!7279816))

(assert (=> b!6492765 m!7281508))

(assert (=> b!6492765 m!7281508))

(assert (=> b!6492765 m!7281510))

(declare-fun m!7281514 () Bool)

(assert (=> b!6492763 m!7281514))

(assert (=> b!6492769 m!7279820))

(assert (=> bm!562197 m!7281512))

(assert (=> b!6492770 m!7281514))

(assert (=> b!6492764 m!7281514))

(assert (=> b!6492764 m!7281514))

(declare-fun m!7281516 () Bool)

(assert (=> b!6492764 m!7281516))

(assert (=> b!6492764 m!7281508))

(assert (=> b!6492764 m!7281516))

(assert (=> b!6492764 m!7281508))

(declare-fun m!7281518 () Bool)

(assert (=> b!6492764 m!7281518))

(assert (=> b!6491403 d!2037270))

(assert (=> b!6491403 d!2037166))

(declare-fun d!2037272 () Bool)

(assert (=> d!2037272 (forall!15551 (++!14449 (exprs!6253 lt!2389610) (exprs!6253 lt!2389656)) lambda!359532)))

(declare-fun lt!2389951 () Unit!158807)

(assert (=> d!2037272 (= lt!2389951 (choose!48192 (exprs!6253 lt!2389610) (exprs!6253 lt!2389656) lambda!359532))))

(assert (=> d!2037272 (forall!15551 (exprs!6253 lt!2389610) lambda!359532)))

(assert (=> d!2037272 (= (lemmaConcatPreservesForall!348 (exprs!6253 lt!2389610) (exprs!6253 lt!2389656) lambda!359532) lt!2389951)))

(declare-fun bs!1648590 () Bool)

(assert (= bs!1648590 d!2037272))

(assert (=> bs!1648590 m!7280082))

(assert (=> bs!1648590 m!7280082))

(declare-fun m!7281520 () Bool)

(assert (=> bs!1648590 m!7281520))

(declare-fun m!7281522 () Bool)

(assert (=> bs!1648590 m!7281522))

(declare-fun m!7281524 () Bool)

(assert (=> bs!1648590 m!7281524))

(assert (=> d!2036632 d!2037272))

(declare-fun d!2037274 () Bool)

(declare-fun c!1189994 () Bool)

(assert (=> d!2037274 (= c!1189994 (isEmpty!37477 (++!14448 (_1!36651 lt!2389638) lt!2389641)))))

(declare-fun e!3934735 () Bool)

(assert (=> d!2037274 (= (matchZipper!2381 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 (exprs!6253 lt!2389610) (exprs!6253 lt!2389656))) true) (++!14448 (_1!36651 lt!2389638) lt!2389641)) e!3934735)))

(declare-fun b!6492773 () Bool)

(assert (=> b!6492773 (= e!3934735 (nullableZipper!2125 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 (exprs!6253 lt!2389610) (exprs!6253 lt!2389656))) true)))))

(declare-fun b!6492774 () Bool)

(assert (=> b!6492774 (= e!3934735 (matchZipper!2381 (derivationStepZipper!2335 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 (exprs!6253 lt!2389610) (exprs!6253 lt!2389656))) true) (head!13211 (++!14448 (_1!36651 lt!2389638) lt!2389641))) (tail!12296 (++!14448 (_1!36651 lt!2389638) lt!2389641))))))

(assert (= (and d!2037274 c!1189994) b!6492773))

(assert (= (and d!2037274 (not c!1189994)) b!6492774))

(assert (=> d!2037274 m!7279218))

(assert (=> d!2037274 m!7281488))

(assert (=> b!6492773 m!7280078))

(declare-fun m!7281526 () Bool)

(assert (=> b!6492773 m!7281526))

(assert (=> b!6492774 m!7279218))

(assert (=> b!6492774 m!7281492))

(assert (=> b!6492774 m!7280078))

(assert (=> b!6492774 m!7281492))

(declare-fun m!7281528 () Bool)

(assert (=> b!6492774 m!7281528))

(assert (=> b!6492774 m!7279218))

(assert (=> b!6492774 m!7281484))

(assert (=> b!6492774 m!7281528))

(assert (=> b!6492774 m!7281484))

(declare-fun m!7281530 () Bool)

(assert (=> b!6492774 m!7281530))

(assert (=> d!2036632 d!2037274))

(assert (=> d!2036632 d!2036676))

(declare-fun bs!1648591 () Bool)

(declare-fun d!2037276 () Bool)

(assert (= bs!1648591 (and d!2037276 d!2037054)))

(declare-fun lambda!359595 () Int)

(assert (=> bs!1648591 (= lambda!359595 lambda!359571)))

(declare-fun bs!1648592 () Bool)

(assert (= bs!1648592 (and d!2037276 d!2036540)))

(assert (=> bs!1648592 (= lambda!359595 lambda!359502)))

(declare-fun bs!1648593 () Bool)

(assert (= bs!1648593 (and d!2037276 d!2036928)))

(assert (=> bs!1648593 (= lambda!359595 lambda!359557)))

(declare-fun bs!1648594 () Bool)

(assert (= bs!1648594 (and d!2037276 d!2036902)))

(assert (=> bs!1648594 (= lambda!359595 lambda!359554)))

(declare-fun bs!1648595 () Bool)

(assert (= bs!1648595 (and d!2037276 b!6490629)))

(assert (=> bs!1648595 (= lambda!359595 lambda!359444)))

(declare-fun bs!1648596 () Bool)

(assert (= bs!1648596 (and d!2037276 d!2037258)))

(assert (=> bs!1648596 (= lambda!359595 lambda!359590)))

(declare-fun bs!1648597 () Bool)

(assert (= bs!1648597 (and d!2037276 d!2036426)))

(assert (=> bs!1648597 (= lambda!359595 lambda!359456)))

(declare-fun bs!1648598 () Bool)

(assert (= bs!1648598 (and d!2037276 d!2036926)))

(assert (=> bs!1648598 (= lambda!359595 lambda!359556)))

(declare-fun bs!1648599 () Bool)

(assert (= bs!1648599 (and d!2037276 d!2036632)))

(assert (=> bs!1648599 (= lambda!359595 lambda!359532)))

(declare-fun bs!1648600 () Bool)

(assert (= bs!1648600 (and d!2037276 d!2037260)))

(assert (=> bs!1648600 (= lambda!359595 lambda!359591)))

(declare-fun bs!1648601 () Bool)

(assert (= bs!1648601 (and d!2037276 d!2036558)))

(assert (=> bs!1648601 (= lambda!359595 lambda!359507)))

(declare-fun bs!1648602 () Bool)

(assert (= bs!1648602 (and d!2037276 d!2036836)))

(assert (=> bs!1648602 (= lambda!359595 lambda!359552)))

(declare-fun bs!1648603 () Bool)

(assert (= bs!1648603 (and d!2037276 d!2036802)))

(assert (=> bs!1648603 (= lambda!359595 lambda!359545)))

(declare-fun bs!1648604 () Bool)

(assert (= bs!1648604 (and d!2037276 d!2036572)))

(assert (=> bs!1648604 (= lambda!359595 lambda!359520)))

(declare-fun bs!1648605 () Bool)

(assert (= bs!1648605 (and d!2037276 d!2036900)))

(assert (=> bs!1648605 (= lambda!359595 lambda!359553)))

(declare-fun bs!1648606 () Bool)

(assert (= bs!1648606 (and d!2037276 d!2037050)))

(assert (=> bs!1648606 (= lambda!359595 lambda!359570)))

(declare-fun bs!1648607 () Bool)

(assert (= bs!1648607 (and d!2037276 d!2036562)))

(assert (=> bs!1648607 (= lambda!359595 lambda!359513)))

(assert (=> d!2037276 (matchZipper!2381 (store ((as const (Array Context!11506 Bool)) false) (Context!11507 (++!14449 (exprs!6253 lt!2389610) (exprs!6253 lt!2389656))) true) (++!14448 (_1!36651 lt!2389638) lt!2389641))))

(declare-fun lt!2389954 () Unit!158807)

(assert (=> d!2037276 (= lt!2389954 (lemmaConcatPreservesForall!348 (exprs!6253 lt!2389610) (exprs!6253 lt!2389656) lambda!359595))))

(assert (=> d!2037276 true))

(declare-fun _$56!386 () Unit!158807)

(assert (=> d!2037276 (= (choose!48194 lt!2389610 lt!2389656 (_1!36651 lt!2389638) lt!2389641) _$56!386)))

(declare-fun bs!1648608 () Bool)

(assert (= bs!1648608 d!2037276))

(assert (=> bs!1648608 m!7280082))

(assert (=> bs!1648608 m!7279218))

(assert (=> bs!1648608 m!7280078))

(assert (=> bs!1648608 m!7280078))

(assert (=> bs!1648608 m!7279218))

(assert (=> bs!1648608 m!7280080))

(declare-fun m!7281532 () Bool)

(assert (=> bs!1648608 m!7281532))

(assert (=> d!2036632 d!2037276))

(declare-fun d!2037278 () Bool)

(declare-fun c!1189995 () Bool)

(assert (=> d!2037278 (= c!1189995 (isEmpty!37477 (_1!36651 lt!2389638)))))

(declare-fun e!3934736 () Bool)

(assert (=> d!2037278 (= (matchZipper!2381 (store ((as const (Array Context!11506 Bool)) false) lt!2389610 true) (_1!36651 lt!2389638)) e!3934736)))

(declare-fun b!6492775 () Bool)

(assert (=> b!6492775 (= e!3934736 (nullableZipper!2125 (store ((as const (Array Context!11506 Bool)) false) lt!2389610 true)))))

(declare-fun b!6492776 () Bool)

(assert (=> b!6492776 (= e!3934736 (matchZipper!2381 (derivationStepZipper!2335 (store ((as const (Array Context!11506 Bool)) false) lt!2389610 true) (head!13211 (_1!36651 lt!2389638))) (tail!12296 (_1!36651 lt!2389638))))))

(assert (= (and d!2037278 c!1189995) b!6492775))

(assert (= (and d!2037278 (not c!1189995)) b!6492776))

(assert (=> d!2037278 m!7279602))

(assert (=> b!6492775 m!7279100))

(declare-fun m!7281534 () Bool)

(assert (=> b!6492775 m!7281534))

(assert (=> b!6492776 m!7279604))

(assert (=> b!6492776 m!7279100))

(assert (=> b!6492776 m!7279604))

(declare-fun m!7281536 () Bool)

(assert (=> b!6492776 m!7281536))

(assert (=> b!6492776 m!7279598))

(assert (=> b!6492776 m!7281536))

(assert (=> b!6492776 m!7279598))

(declare-fun m!7281538 () Bool)

(assert (=> b!6492776 m!7281538))

(assert (=> d!2036632 d!2037278))

(declare-fun b!6492777 () Bool)

(declare-fun e!3934737 () List!65407)

(assert (=> b!6492777 (= e!3934737 (exprs!6253 lt!2389656))))

(declare-fun lt!2389955 () List!65407)

(declare-fun b!6492780 () Bool)

(declare-fun e!3934738 () Bool)

(assert (=> b!6492780 (= e!3934738 (or (not (= (exprs!6253 lt!2389656) Nil!65283)) (= lt!2389955 (exprs!6253 lt!2389610))))))

(declare-fun b!6492778 () Bool)

(assert (=> b!6492778 (= e!3934737 (Cons!65283 (h!71731 (exprs!6253 lt!2389610)) (++!14449 (t!379035 (exprs!6253 lt!2389610)) (exprs!6253 lt!2389656))))))

(declare-fun d!2037280 () Bool)

(assert (=> d!2037280 e!3934738))

(declare-fun res!2666557 () Bool)

(assert (=> d!2037280 (=> (not res!2666557) (not e!3934738))))

(assert (=> d!2037280 (= res!2666557 (= (content!12445 lt!2389955) ((_ map or) (content!12445 (exprs!6253 lt!2389610)) (content!12445 (exprs!6253 lt!2389656)))))))

(assert (=> d!2037280 (= lt!2389955 e!3934737)))

(declare-fun c!1189996 () Bool)

(assert (=> d!2037280 (= c!1189996 ((_ is Nil!65283) (exprs!6253 lt!2389610)))))

(assert (=> d!2037280 (= (++!14449 (exprs!6253 lt!2389610) (exprs!6253 lt!2389656)) lt!2389955)))

(declare-fun b!6492779 () Bool)

(declare-fun res!2666558 () Bool)

(assert (=> b!6492779 (=> (not res!2666558) (not e!3934738))))

(assert (=> b!6492779 (= res!2666558 (= (size!40430 lt!2389955) (+ (size!40430 (exprs!6253 lt!2389610)) (size!40430 (exprs!6253 lt!2389656)))))))

(assert (= (and d!2037280 c!1189996) b!6492777))

(assert (= (and d!2037280 (not c!1189996)) b!6492778))

(assert (= (and d!2037280 res!2666557) b!6492779))

(assert (= (and b!6492779 res!2666558) b!6492780))

(declare-fun m!7281540 () Bool)

(assert (=> b!6492778 m!7281540))

(declare-fun m!7281542 () Bool)

(assert (=> d!2037280 m!7281542))

(declare-fun m!7281544 () Bool)

(assert (=> d!2037280 m!7281544))

(declare-fun m!7281546 () Bool)

(assert (=> d!2037280 m!7281546))

(declare-fun m!7281548 () Bool)

(assert (=> b!6492779 m!7281548))

(declare-fun m!7281550 () Bool)

(assert (=> b!6492779 m!7281550))

(declare-fun m!7281552 () Bool)

(assert (=> b!6492779 m!7281552))

(assert (=> d!2036632 d!2037280))

(declare-fun bs!1648609 () Bool)

(declare-fun d!2037282 () Bool)

(assert (= bs!1648609 (and d!2037282 d!2036978)))

(declare-fun lambda!359596 () Int)

(assert (=> bs!1648609 (= lambda!359596 lambda!359562)))

(declare-fun bs!1648610 () Bool)

(assert (= bs!1648610 (and d!2037282 d!2036974)))

(assert (=> bs!1648610 (= lambda!359596 lambda!359561)))

(declare-fun bs!1648611 () Bool)

(assert (= bs!1648611 (and d!2037282 d!2037224)))

(assert (=> bs!1648611 (= lambda!359596 lambda!359582)))

(declare-fun bs!1648612 () Bool)

(assert (= bs!1648612 (and d!2037282 d!2037214)))

(assert (=> bs!1648612 (= lambda!359596 lambda!359581)))

(declare-fun bs!1648613 () Bool)

(assert (= bs!1648613 (and d!2037282 d!2036904)))

(assert (=> bs!1648613 (= lambda!359596 lambda!359555)))

(declare-fun bs!1648614 () Bool)

(assert (= bs!1648614 (and d!2037282 d!2036816)))

(assert (=> bs!1648614 (= lambda!359596 lambda!359548)))

(assert (=> d!2037282 (= (nullableZipper!2125 lt!2389616) (exists!2618 lt!2389616 lambda!359596))))

(declare-fun bs!1648615 () Bool)

(assert (= bs!1648615 d!2037282))

(declare-fun m!7281554 () Bool)

(assert (=> bs!1648615 m!7281554))

(assert (=> b!6491519 d!2037282))

(declare-fun d!2037284 () Bool)

(declare-fun lt!2389956 () Int)

(assert (=> d!2037284 (>= lt!2389956 0)))

(declare-fun e!3934739 () Int)

(assert (=> d!2037284 (= lt!2389956 e!3934739)))

(declare-fun c!1189997 () Bool)

(assert (=> d!2037284 (= c!1189997 ((_ is Nil!65282) lt!2389736))))

(assert (=> d!2037284 (= (size!40427 lt!2389736) lt!2389956)))

(declare-fun b!6492781 () Bool)

(assert (=> b!6492781 (= e!3934739 0)))

(declare-fun b!6492782 () Bool)

(assert (=> b!6492782 (= e!3934739 (+ 1 (size!40427 (t!379034 lt!2389736))))))

(assert (= (and d!2037284 c!1189997) b!6492781))

(assert (= (and d!2037284 (not c!1189997)) b!6492782))

(declare-fun m!7281556 () Bool)

(assert (=> b!6492782 m!7281556))

(assert (=> b!6491171 d!2037284))

(declare-fun d!2037286 () Bool)

(declare-fun lt!2389957 () Int)

(assert (=> d!2037286 (>= lt!2389957 0)))

(declare-fun e!3934740 () Int)

(assert (=> d!2037286 (= lt!2389957 e!3934740)))

(declare-fun c!1189998 () Bool)

(assert (=> d!2037286 (= c!1189998 ((_ is Nil!65282) (_1!36651 lt!2389655)))))

(assert (=> d!2037286 (= (size!40427 (_1!36651 lt!2389655)) lt!2389957)))

(declare-fun b!6492783 () Bool)

(assert (=> b!6492783 (= e!3934740 0)))

(declare-fun b!6492784 () Bool)

(assert (=> b!6492784 (= e!3934740 (+ 1 (size!40427 (t!379034 (_1!36651 lt!2389655)))))))

(assert (= (and d!2037286 c!1189998) b!6492783))

(assert (= (and d!2037286 (not c!1189998)) b!6492784))

(assert (=> b!6492784 m!7281296))

(assert (=> b!6491171 d!2037286))

(assert (=> b!6491171 d!2037016))

(assert (=> b!6491132 d!2037226))

(declare-fun b!6492785 () Bool)

(declare-fun res!2666564 () Bool)

(declare-fun e!3934741 () Bool)

(assert (=> b!6492785 (=> res!2666564 e!3934741)))

(declare-fun e!3934745 () Bool)

(assert (=> b!6492785 (= res!2666564 e!3934745)))

(declare-fun res!2666561 () Bool)

(assert (=> b!6492785 (=> (not res!2666561) (not e!3934745))))

(declare-fun lt!2389958 () Bool)

(assert (=> b!6492785 (= res!2666561 lt!2389958)))

(declare-fun b!6492786 () Bool)

(declare-fun res!2666562 () Bool)

(assert (=> b!6492786 (=> (not res!2666562) (not e!3934745))))

(assert (=> b!6492786 (= res!2666562 (isEmpty!37477 (tail!12296 (_2!36651 (get!22637 lt!2389734)))))))

(declare-fun b!6492788 () Bool)

(declare-fun e!3934743 () Bool)

(assert (=> b!6492788 (= e!3934741 e!3934743)))

(declare-fun res!2666565 () Bool)

(assert (=> b!6492788 (=> (not res!2666565) (not e!3934743))))

(assert (=> b!6492788 (= res!2666565 (not lt!2389958))))

(declare-fun bm!562198 () Bool)

(declare-fun call!562203 () Bool)

(assert (=> bm!562198 (= call!562203 (isEmpty!37477 (_2!36651 (get!22637 lt!2389734))))))

(declare-fun b!6492789 () Bool)

(declare-fun e!3934744 () Bool)

(assert (=> b!6492789 (= e!3934744 (not (= (head!13211 (_2!36651 (get!22637 lt!2389734))) (c!1189393 (regTwo!33250 r!7292)))))))

(declare-fun b!6492790 () Bool)

(declare-fun e!3934747 () Bool)

(assert (=> b!6492790 (= e!3934747 (matchR!8552 (derivativeStep!5064 (regTwo!33250 r!7292) (head!13211 (_2!36651 (get!22637 lt!2389734)))) (tail!12296 (_2!36651 (get!22637 lt!2389734)))))))

(declare-fun b!6492791 () Bool)

(declare-fun res!2666566 () Bool)

(assert (=> b!6492791 (=> res!2666566 e!3934744)))

(assert (=> b!6492791 (= res!2666566 (not (isEmpty!37477 (tail!12296 (_2!36651 (get!22637 lt!2389734))))))))

(declare-fun b!6492792 () Bool)

(declare-fun res!2666563 () Bool)

(assert (=> b!6492792 (=> res!2666563 e!3934741)))

(assert (=> b!6492792 (= res!2666563 (not ((_ is ElementMatch!16369) (regTwo!33250 r!7292))))))

(declare-fun e!3934742 () Bool)

(assert (=> b!6492792 (= e!3934742 e!3934741)))

(declare-fun b!6492793 () Bool)

(declare-fun e!3934746 () Bool)

(assert (=> b!6492793 (= e!3934746 (= lt!2389958 call!562203))))

(declare-fun b!6492794 () Bool)

(assert (=> b!6492794 (= e!3934743 e!3934744)))

(declare-fun res!2666560 () Bool)

(assert (=> b!6492794 (=> res!2666560 e!3934744)))

(assert (=> b!6492794 (= res!2666560 call!562203)))

(declare-fun b!6492795 () Bool)

(assert (=> b!6492795 (= e!3934747 (nullable!6362 (regTwo!33250 r!7292)))))

(declare-fun b!6492796 () Bool)

(assert (=> b!6492796 (= e!3934745 (= (head!13211 (_2!36651 (get!22637 lt!2389734))) (c!1189393 (regTwo!33250 r!7292))))))

(declare-fun d!2037288 () Bool)

(assert (=> d!2037288 e!3934746))

(declare-fun c!1190001 () Bool)

(assert (=> d!2037288 (= c!1190001 ((_ is EmptyExpr!16369) (regTwo!33250 r!7292)))))

(assert (=> d!2037288 (= lt!2389958 e!3934747)))

(declare-fun c!1190000 () Bool)

(assert (=> d!2037288 (= c!1190000 (isEmpty!37477 (_2!36651 (get!22637 lt!2389734))))))

(assert (=> d!2037288 (validRegex!8105 (regTwo!33250 r!7292))))

(assert (=> d!2037288 (= (matchR!8552 (regTwo!33250 r!7292) (_2!36651 (get!22637 lt!2389734))) lt!2389958)))

(declare-fun b!6492787 () Bool)

(assert (=> b!6492787 (= e!3934746 e!3934742)))

(declare-fun c!1189999 () Bool)

(assert (=> b!6492787 (= c!1189999 ((_ is EmptyLang!16369) (regTwo!33250 r!7292)))))

(declare-fun b!6492797 () Bool)

(assert (=> b!6492797 (= e!3934742 (not lt!2389958))))

(declare-fun b!6492798 () Bool)

(declare-fun res!2666559 () Bool)

(assert (=> b!6492798 (=> (not res!2666559) (not e!3934745))))

(assert (=> b!6492798 (= res!2666559 (not call!562203))))

(assert (= (and d!2037288 c!1190000) b!6492795))

(assert (= (and d!2037288 (not c!1190000)) b!6492790))

(assert (= (and d!2037288 c!1190001) b!6492793))

(assert (= (and d!2037288 (not c!1190001)) b!6492787))

(assert (= (and b!6492787 c!1189999) b!6492797))

(assert (= (and b!6492787 (not c!1189999)) b!6492792))

(assert (= (and b!6492792 (not res!2666563)) b!6492785))

(assert (= (and b!6492785 res!2666561) b!6492798))

(assert (= (and b!6492798 res!2666559) b!6492786))

(assert (= (and b!6492786 res!2666562) b!6492796))

(assert (= (and b!6492785 (not res!2666564)) b!6492788))

(assert (= (and b!6492788 res!2666565) b!6492794))

(assert (= (and b!6492794 (not res!2666560)) b!6492791))

(assert (= (and b!6492791 (not res!2666566)) b!6492789))

(assert (= (or b!6492793 b!6492794 b!6492798) bm!562198))

(declare-fun m!7281558 () Bool)

(assert (=> b!6492786 m!7281558))

(assert (=> b!6492786 m!7281558))

(declare-fun m!7281560 () Bool)

(assert (=> b!6492786 m!7281560))

(declare-fun m!7281562 () Bool)

(assert (=> d!2037288 m!7281562))

(assert (=> d!2037288 m!7279816))

(assert (=> b!6492791 m!7281558))

(assert (=> b!6492791 m!7281558))

(assert (=> b!6492791 m!7281560))

(declare-fun m!7281564 () Bool)

(assert (=> b!6492789 m!7281564))

(assert (=> b!6492795 m!7279820))

(assert (=> bm!562198 m!7281562))

(assert (=> b!6492796 m!7281564))

(assert (=> b!6492790 m!7281564))

(assert (=> b!6492790 m!7281564))

(declare-fun m!7281566 () Bool)

(assert (=> b!6492790 m!7281566))

(assert (=> b!6492790 m!7281558))

(assert (=> b!6492790 m!7281566))

(assert (=> b!6492790 m!7281558))

(declare-fun m!7281568 () Bool)

(assert (=> b!6492790 m!7281568))

(assert (=> b!6491167 d!2037288))

(assert (=> b!6491167 d!2037090))

(assert (=> d!2036666 d!2037082))

(assert (=> d!2036666 d!2036882))

(assert (=> b!6491512 d!2036806))

(declare-fun d!2037290 () Bool)

(assert (=> d!2037290 true))

(assert (=> d!2037290 true))

(declare-fun res!2666567 () Bool)

(assert (=> d!2037290 (= (choose!48184 lambda!359440) res!2666567)))

(assert (=> d!2036510 d!2037290))

(assert (=> bm!561989 d!2037082))

(assert (=> d!2036642 d!2036876))

(assert (=> b!6490910 d!2036790))

(assert (=> b!6490910 d!2036792))

(declare-fun d!2037292 () Bool)

(assert (=> d!2037292 (= (Exists!3439 lambda!359469) (choose!48184 lambda!359469))))

(declare-fun bs!1648616 () Bool)

(assert (= bs!1648616 d!2037292))

(declare-fun m!7281570 () Bool)

(assert (=> bs!1648616 m!7281570))

(assert (=> d!2036458 d!2037292))

(declare-fun d!2037294 () Bool)

(assert (=> d!2037294 (= (Exists!3439 lambda!359470) (choose!48184 lambda!359470))))

(declare-fun bs!1648617 () Bool)

(assert (= bs!1648617 d!2037294))

(declare-fun m!7281572 () Bool)

(assert (=> bs!1648617 m!7281572))

(assert (=> d!2036458 d!2037294))

(declare-fun bs!1648618 () Bool)

(declare-fun d!2037296 () Bool)

(assert (= bs!1648618 (and d!2037296 b!6490643)))

(declare-fun lambda!359601 () Int)

(assert (=> bs!1648618 (not (= lambda!359601 lambda!359442))))

(declare-fun bs!1648619 () Bool)

(assert (= bs!1648619 (and d!2037296 b!6492359)))

(assert (=> bs!1648619 (not (= lambda!359601 lambda!359577))))

(declare-fun bs!1648620 () Bool)

(assert (= bs!1648620 (and d!2037296 d!2036598)))

(assert (=> bs!1648620 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33250 r!7292))) (= lambda!359601 lambda!359524))))

(declare-fun bs!1648621 () Bool)

(assert (= bs!1648621 (and d!2037296 b!6492463)))

(assert (=> bs!1648621 (not (= lambda!359601 lambda!359578))))

(declare-fun bs!1648622 () Bool)

(assert (= bs!1648622 (and d!2037296 d!2036464)))

(assert (=> bs!1648622 (not (= lambda!359601 lambda!359480))))

(assert (=> bs!1648618 (not (= lambda!359601 lambda!359443))))

(declare-fun bs!1648623 () Bool)

(assert (= bs!1648623 (and d!2037296 d!2037246)))

(assert (=> bs!1648623 (= (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) lt!2389631) (= lambda!359601 lambda!359588))))

(declare-fun bs!1648624 () Bool)

(assert (= bs!1648624 (and d!2037296 d!2036472)))

(assert (=> bs!1648624 (= (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) lt!2389631) (= lambda!359601 lambda!359485))))

(declare-fun bs!1648625 () Bool)

(assert (= bs!1648625 (and d!2037296 b!6491888)))

(assert (=> bs!1648625 (not (= lambda!359601 lambda!359551))))

(declare-fun bs!1648626 () Bool)

(assert (= bs!1648626 (and d!2037296 b!6490750)))

(assert (=> bs!1648626 (not (= lambda!359601 lambda!359453))))

(declare-fun bs!1648627 () Bool)

(assert (= bs!1648627 (and d!2037296 b!6490649)))

(assert (=> bs!1648627 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33250 r!7292))) (= lambda!359601 lambda!359436))))

(declare-fun bs!1648628 () Bool)

(assert (= bs!1648628 (and d!2037296 b!6490618)))

(assert (=> bs!1648628 (not (= lambda!359601 lambda!359440))))

(declare-fun bs!1648629 () Bool)

(assert (= bs!1648629 (and d!2037296 b!6492132)))

(assert (=> bs!1648629 (not (= lambda!359601 lambda!359558))))

(declare-fun bs!1648630 () Bool)

(assert (= bs!1648630 (and d!2037296 b!6492357)))

(assert (=> bs!1648630 (not (= lambda!359601 lambda!359576))))

(declare-fun bs!1648631 () Bool)

(assert (= bs!1648631 (and d!2037296 d!2036458)))

(assert (=> bs!1648631 (not (= lambda!359601 lambda!359470))))

(assert (=> bs!1648628 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33250 r!7292))) (= lambda!359601 lambda!359439))))

(declare-fun bs!1648632 () Bool)

(assert (= bs!1648632 (and d!2037296 d!2036606)))

(assert (=> bs!1648632 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33250 r!7292))) (= lambda!359601 lambda!359528))))

(assert (=> bs!1648618 (= (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) lt!2389631) (= lambda!359601 lambda!359441))))

(declare-fun bs!1648633 () Bool)

(assert (= bs!1648633 (and d!2037296 b!6492134)))

(assert (=> bs!1648633 (not (= lambda!359601 lambda!359559))))

(declare-fun bs!1648634 () Bool)

(assert (= bs!1648634 (and d!2037296 d!2037232)))

(assert (=> bs!1648634 (= (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) lt!2389631) (= lambda!359601 lambda!359583))))

(declare-fun bs!1648635 () Bool)

(assert (= bs!1648635 (and d!2037296 b!6492465)))

(assert (=> bs!1648635 (not (= lambda!359601 lambda!359579))))

(declare-fun bs!1648636 () Bool)

(assert (= bs!1648636 (and d!2037296 b!6492283)))

(assert (=> bs!1648636 (not (= lambda!359601 lambda!359565))))

(declare-fun bs!1648637 () Bool)

(assert (= bs!1648637 (and d!2037296 d!2036516)))

(assert (=> bs!1648637 (not (= lambda!359601 lambda!359498))))

(declare-fun bs!1648638 () Bool)

(assert (= bs!1648638 (and d!2037296 b!6491179)))

(assert (=> bs!1648638 (not (= lambda!359601 lambda!359500))))

(declare-fun bs!1648639 () Bool)

(assert (= bs!1648639 (and d!2037296 b!6492285)))

(assert (=> bs!1648639 (not (= lambda!359601 lambda!359566))))

(declare-fun bs!1648640 () Bool)

(assert (= bs!1648640 (and d!2037296 b!6491886)))

(assert (=> bs!1648640 (not (= lambda!359601 lambda!359550))))

(assert (=> bs!1648631 (= lambda!359601 lambda!359469)))

(declare-fun bs!1648641 () Bool)

(assert (= bs!1648641 (and d!2037296 b!6492346)))

(assert (=> bs!1648641 (not (= lambda!359601 lambda!359574))))

(assert (=> bs!1648632 (not (= lambda!359601 lambda!359529))))

(assert (=> bs!1648637 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33250 r!7292))) (= lambda!359601 lambda!359497))))

(assert (=> bs!1648627 (not (= lambda!359601 lambda!359437))))

(assert (=> bs!1648623 (not (= lambda!359601 lambda!359589))))

(declare-fun bs!1648642 () Bool)

(assert (= bs!1648642 (and d!2037296 b!6492348)))

(assert (=> bs!1648642 (not (= lambda!359601 lambda!359575))))

(declare-fun bs!1648643 () Bool)

(assert (= bs!1648643 (and d!2037296 b!6490932)))

(assert (=> bs!1648643 (not (= lambda!359601 lambda!359462))))

(assert (=> bs!1648622 (= (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) lt!2389631) (= lambda!359601 lambda!359477))))

(declare-fun bs!1648644 () Bool)

(assert (= bs!1648644 (and d!2037296 b!6490930)))

(assert (=> bs!1648644 (not (= lambda!359601 lambda!359459))))

(declare-fun bs!1648645 () Bool)

(assert (= bs!1648645 (and d!2037296 b!6491181)))

(assert (=> bs!1648645 (not (= lambda!359601 lambda!359501))))

(declare-fun bs!1648646 () Bool)

(assert (= bs!1648646 (and d!2037296 b!6490748)))

(assert (=> bs!1648646 (not (= lambda!359601 lambda!359452))))

(declare-fun bs!1648647 () Bool)

(assert (= bs!1648647 (and d!2037296 d!2037138)))

(assert (=> bs!1648647 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (regOne!33250 r!7292)) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33250 r!7292))) (= lambda!359601 lambda!359580))))

(declare-fun bs!1648648 () Bool)

(assert (= bs!1648648 (and d!2037296 d!2036524)))

(assert (=> bs!1648648 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33250 r!7292))) (= lambda!359601 lambda!359499))))

(declare-fun bs!1648649 () Bool)

(assert (= bs!1648649 (and d!2037296 d!2037036)))

(assert (=> bs!1648649 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) lt!2389631) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33250 r!7292))) (= lambda!359601 lambda!359569))))

(assert (=> d!2037296 true))

(assert (=> d!2037296 true))

(declare-fun lambda!359602 () Int)

(assert (=> bs!1648618 (= (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) lt!2389631) (= lambda!359602 lambda!359442))))

(assert (=> bs!1648619 (not (= lambda!359602 lambda!359577))))

(declare-fun bs!1648650 () Bool)

(assert (= bs!1648650 d!2037296))

(assert (=> bs!1648650 (not (= lambda!359602 lambda!359601))))

(assert (=> bs!1648620 (not (= lambda!359602 lambda!359524))))

(assert (=> bs!1648621 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (reg!16698 (regOne!33251 lt!2389659))) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regOne!33251 lt!2389659))) (= lambda!359602 lambda!359578))))

(assert (=> bs!1648622 (not (= lambda!359602 lambda!359480))))

(assert (=> bs!1648618 (not (= lambda!359602 lambda!359443))))

(assert (=> bs!1648623 (not (= lambda!359602 lambda!359588))))

(assert (=> bs!1648624 (not (= lambda!359602 lambda!359485))))

(assert (=> bs!1648625 (not (= lambda!359602 lambda!359551))))

(assert (=> bs!1648626 (not (= lambda!359602 lambda!359453))))

(assert (=> bs!1648627 (not (= lambda!359602 lambda!359436))))

(assert (=> bs!1648628 (not (= lambda!359602 lambda!359440))))

(assert (=> bs!1648629 (= (and (= (reg!16698 (regOne!33250 r!7292)) (reg!16698 (regTwo!33251 lt!2389631))) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33251 lt!2389631))) (= lambda!359602 lambda!359558))))

(assert (=> bs!1648630 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (reg!16698 (regTwo!33251 r!7292))) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33251 r!7292))) (= lambda!359602 lambda!359576))))

(assert (=> bs!1648631 (= lambda!359602 lambda!359470)))

(assert (=> bs!1648628 (not (= lambda!359602 lambda!359439))))

(assert (=> bs!1648632 (not (= lambda!359602 lambda!359528))))

(assert (=> bs!1648618 (not (= lambda!359602 lambda!359441))))

(assert (=> bs!1648633 (not (= lambda!359602 lambda!359559))))

(assert (=> bs!1648634 (not (= lambda!359602 lambda!359583))))

(assert (=> bs!1648635 (not (= lambda!359602 lambda!359579))))

(assert (=> bs!1648636 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (reg!16698 (regOne!33251 r!7292))) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regOne!33251 r!7292))) (= lambda!359602 lambda!359565))))

(assert (=> bs!1648637 (not (= lambda!359602 lambda!359498))))

(assert (=> bs!1648638 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (reg!16698 lt!2389659)) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) lt!2389659)) (= lambda!359602 lambda!359500))))

(assert (=> bs!1648639 (not (= lambda!359602 lambda!359566))))

(assert (=> bs!1648640 (= (and (= (reg!16698 (regOne!33250 r!7292)) (reg!16698 (regOne!33251 lt!2389631))) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regOne!33251 lt!2389631))) (= lambda!359602 lambda!359550))))

(assert (=> bs!1648631 (not (= lambda!359602 lambda!359469))))

(assert (=> bs!1648641 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (reg!16698 (regTwo!33251 lt!2389659))) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) (regTwo!33251 lt!2389659))) (= lambda!359602 lambda!359574))))

(assert (=> bs!1648632 (not (= lambda!359602 lambda!359529))))

(assert (=> bs!1648637 (not (= lambda!359602 lambda!359497))))

(assert (=> bs!1648627 (not (= lambda!359602 lambda!359437))))

(assert (=> bs!1648623 (not (= lambda!359602 lambda!359589))))

(assert (=> bs!1648642 (not (= lambda!359602 lambda!359575))))

(assert (=> bs!1648643 (not (= lambda!359602 lambda!359462))))

(assert (=> bs!1648622 (not (= lambda!359602 lambda!359477))))

(assert (=> bs!1648644 (= (and (= (reg!16698 (regOne!33250 r!7292)) (reg!16698 lt!2389631)) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) lt!2389631)) (= lambda!359602 lambda!359459))))

(assert (=> bs!1648645 (not (= lambda!359602 lambda!359501))))

(assert (=> bs!1648646 (= (and (= (_1!36651 lt!2389655) s!2326) (= (reg!16698 (regOne!33250 r!7292)) (reg!16698 r!7292)) (= (Star!16369 (reg!16698 (regOne!33250 r!7292))) r!7292)) (= lambda!359602 lambda!359452))))

(assert (=> bs!1648647 (not (= lambda!359602 lambda!359580))))

(assert (=> bs!1648648 (not (= lambda!359602 lambda!359499))))

(assert (=> bs!1648649 (not (= lambda!359602 lambda!359569))))

(assert (=> d!2037296 true))

(assert (=> d!2037296 true))

(assert (=> d!2037296 (= (Exists!3439 lambda!359601) (Exists!3439 lambda!359602))))

(assert (=> d!2037296 true))

(declare-fun _$91!608 () Unit!158807)

(assert (=> d!2037296 (= (choose!48179 (reg!16698 (regOne!33250 r!7292)) (_1!36651 lt!2389655)) _$91!608)))

(declare-fun m!7281574 () Bool)

(assert (=> bs!1648650 m!7281574))

(declare-fun m!7281576 () Bool)

(assert (=> bs!1648650 m!7281576))

(assert (=> d!2036458 d!2037296))

(assert (=> d!2036458 d!2036988))

(declare-fun d!2037298 () Bool)

(declare-fun c!1190002 () Bool)

(assert (=> d!2037298 (= c!1190002 (isEmpty!37477 (tail!12296 (t!379034 s!2326))))))

(declare-fun e!3934752 () Bool)

(assert (=> d!2037298 (= (matchZipper!2381 (derivationStepZipper!2335 lt!2389614 (head!13211 (t!379034 s!2326))) (tail!12296 (t!379034 s!2326))) e!3934752)))

(declare-fun b!6492809 () Bool)

(assert (=> b!6492809 (= e!3934752 (nullableZipper!2125 (derivationStepZipper!2335 lt!2389614 (head!13211 (t!379034 s!2326)))))))

(declare-fun b!6492810 () Bool)

(assert (=> b!6492810 (= e!3934752 (matchZipper!2381 (derivationStepZipper!2335 (derivationStepZipper!2335 lt!2389614 (head!13211 (t!379034 s!2326))) (head!13211 (tail!12296 (t!379034 s!2326)))) (tail!12296 (tail!12296 (t!379034 s!2326)))))))

(assert (= (and d!2037298 c!1190002) b!6492809))

(assert (= (and d!2037298 (not c!1190002)) b!6492810))

(assert (=> d!2037298 m!7279888))

(assert (=> d!2037298 m!7280524))

(assert (=> b!6492809 m!7279886))

(declare-fun m!7281578 () Bool)

(assert (=> b!6492809 m!7281578))

(assert (=> b!6492810 m!7279888))

(assert (=> b!6492810 m!7280528))

(assert (=> b!6492810 m!7279886))

(assert (=> b!6492810 m!7280528))

(declare-fun m!7281580 () Bool)

(assert (=> b!6492810 m!7281580))

(assert (=> b!6492810 m!7279888))

(assert (=> b!6492810 m!7280532))

(assert (=> b!6492810 m!7281580))

(assert (=> b!6492810 m!7280532))

(declare-fun m!7281582 () Bool)

(assert (=> b!6492810 m!7281582))

(assert (=> b!6491395 d!2037298))

(declare-fun bs!1648651 () Bool)

(declare-fun d!2037300 () Bool)

(assert (= bs!1648651 (and d!2037300 d!2036946)))

(declare-fun lambda!359603 () Int)

(assert (=> bs!1648651 (= (= (head!13211 (t!379034 s!2326)) (head!13211 lt!2389663)) (= lambda!359603 lambda!359560))))

(declare-fun bs!1648652 () Bool)

(assert (= bs!1648652 (and d!2037300 d!2037268)))

(assert (=> bs!1648652 (= lambda!359603 lambda!359592)))

(declare-fun bs!1648653 () Bool)

(assert (= bs!1648653 (and d!2037300 d!2036402)))

(assert (=> bs!1648653 (= (= (head!13211 (t!379034 s!2326)) (h!71730 s!2326)) (= lambda!359603 lambda!359447))))

(declare-fun bs!1648654 () Bool)

(assert (= bs!1648654 (and d!2037300 d!2036822)))

(assert (=> bs!1648654 (= lambda!359603 lambda!359549)))

(declare-fun bs!1648655 () Bool)

(assert (= bs!1648655 (and d!2037300 d!2036998)))

(assert (=> bs!1648655 (= lambda!359603 lambda!359564)))

(declare-fun bs!1648656 () Bool)

(assert (= bs!1648656 (and d!2037300 d!2037058)))

(assert (=> bs!1648656 (= (= (head!13211 (t!379034 s!2326)) (head!13211 lt!2389663)) (= lambda!359603 lambda!359572))))

(declare-fun bs!1648657 () Bool)

(assert (= bs!1648657 (and d!2037300 d!2037064)))

(assert (=> bs!1648657 (= (= (head!13211 (t!379034 s!2326)) (head!13211 (_1!36651 lt!2389638))) (= lambda!359603 lambda!359573))))

(declare-fun bs!1648658 () Bool)

(assert (= bs!1648658 (and d!2037300 b!6490636)))

(assert (=> bs!1648658 (= (= (head!13211 (t!379034 s!2326)) (h!71730 s!2326)) (= lambda!359603 lambda!359438))))

(declare-fun bs!1648659 () Bool)

(assert (= bs!1648659 (and d!2037300 d!2036982)))

(assert (=> bs!1648659 (= (= (head!13211 (t!379034 s!2326)) (head!13211 s!2326)) (= lambda!359603 lambda!359563))))

(assert (=> d!2037300 true))

(assert (=> d!2037300 (= (derivationStepZipper!2335 lt!2389614 (head!13211 (t!379034 s!2326))) (flatMap!1874 lt!2389614 lambda!359603))))

(declare-fun bs!1648660 () Bool)

(assert (= bs!1648660 d!2037300))

(declare-fun m!7281584 () Bool)

(assert (=> bs!1648660 m!7281584))

(assert (=> b!6491395 d!2037300))

(assert (=> b!6491395 d!2036824))

(assert (=> b!6491395 d!2036826))

(declare-fun d!2037302 () Bool)

(declare-fun res!2666578 () Bool)

(declare-fun e!3934753 () Bool)

(assert (=> d!2037302 (=> res!2666578 e!3934753)))

(assert (=> d!2037302 (= res!2666578 ((_ is Nil!65283) (++!14449 lt!2389623 lt!2389636)))))

(assert (=> d!2037302 (= (forall!15551 (++!14449 lt!2389623 lt!2389636) lambda!359444) e!3934753)))

(declare-fun b!6492811 () Bool)

(declare-fun e!3934754 () Bool)

(assert (=> b!6492811 (= e!3934753 e!3934754)))

(declare-fun res!2666579 () Bool)

(assert (=> b!6492811 (=> (not res!2666579) (not e!3934754))))

(assert (=> b!6492811 (= res!2666579 (dynLambda!25932 lambda!359444 (h!71731 (++!14449 lt!2389623 lt!2389636))))))

(declare-fun b!6492812 () Bool)

(assert (=> b!6492812 (= e!3934754 (forall!15551 (t!379035 (++!14449 lt!2389623 lt!2389636)) lambda!359444))))

(assert (= (and d!2037302 (not res!2666578)) b!6492811))

(assert (= (and b!6492811 res!2666579) b!6492812))

(declare-fun b_lambda!245775 () Bool)

(assert (=> (not b_lambda!245775) (not b!6492811)))

(declare-fun m!7281586 () Bool)

(assert (=> b!6492811 m!7281586))

(declare-fun m!7281588 () Bool)

(assert (=> b!6492812 m!7281588))

(assert (=> d!2036614 d!2037302))

(assert (=> d!2036614 d!2036624))

(declare-fun d!2037304 () Bool)

(assert (=> d!2037304 (forall!15551 (++!14449 lt!2389623 lt!2389636) lambda!359444)))

(assert (=> d!2037304 true))

(declare-fun _$78!304 () Unit!158807)

(assert (=> d!2037304 (= (choose!48192 lt!2389623 lt!2389636 lambda!359444) _$78!304)))

(declare-fun bs!1648661 () Bool)

(assert (= bs!1648661 d!2037304))

(assert (=> bs!1648661 m!7279162))

(assert (=> bs!1648661 m!7279162))

(assert (=> bs!1648661 m!7279974))

(assert (=> d!2036614 d!2037304))

(declare-fun d!2037306 () Bool)

(declare-fun res!2666580 () Bool)

(declare-fun e!3934755 () Bool)

(assert (=> d!2037306 (=> res!2666580 e!3934755)))

(assert (=> d!2037306 (= res!2666580 ((_ is Nil!65283) lt!2389623))))

(assert (=> d!2037306 (= (forall!15551 lt!2389623 lambda!359444) e!3934755)))

(declare-fun b!6492813 () Bool)

(declare-fun e!3934756 () Bool)

(assert (=> b!6492813 (= e!3934755 e!3934756)))

(declare-fun res!2666581 () Bool)

(assert (=> b!6492813 (=> (not res!2666581) (not e!3934756))))

(assert (=> b!6492813 (= res!2666581 (dynLambda!25932 lambda!359444 (h!71731 lt!2389623)))))

(declare-fun b!6492814 () Bool)

(assert (=> b!6492814 (= e!3934756 (forall!15551 (t!379035 lt!2389623) lambda!359444))))

(assert (= (and d!2037306 (not res!2666580)) b!6492813))

(assert (= (and b!6492813 res!2666581) b!6492814))

(declare-fun b_lambda!245777 () Bool)

(assert (=> (not b_lambda!245777) (not b!6492813)))

(declare-fun m!7281590 () Bool)

(assert (=> b!6492813 m!7281590))

(declare-fun m!7281592 () Bool)

(assert (=> b!6492814 m!7281592))

(assert (=> d!2036614 d!2037306))

(declare-fun b!6492815 () Bool)

(declare-fun res!2666587 () Bool)

(declare-fun e!3934757 () Bool)

(assert (=> b!6492815 (=> res!2666587 e!3934757)))

(declare-fun e!3934761 () Bool)

(assert (=> b!6492815 (= res!2666587 e!3934761)))

(declare-fun res!2666584 () Bool)

(assert (=> b!6492815 (=> (not res!2666584) (not e!3934761))))

(declare-fun lt!2389959 () Bool)

(assert (=> b!6492815 (= res!2666584 lt!2389959)))

(declare-fun b!6492816 () Bool)

(declare-fun res!2666585 () Bool)

(assert (=> b!6492816 (=> (not res!2666585) (not e!3934761))))

(assert (=> b!6492816 (= res!2666585 (isEmpty!37477 (tail!12296 (tail!12296 lt!2389620))))))

(declare-fun b!6492818 () Bool)

(declare-fun e!3934759 () Bool)

(assert (=> b!6492818 (= e!3934757 e!3934759)))

(declare-fun res!2666588 () Bool)

(assert (=> b!6492818 (=> (not res!2666588) (not e!3934759))))

(assert (=> b!6492818 (= res!2666588 (not lt!2389959))))

(declare-fun bm!562199 () Bool)

(declare-fun call!562204 () Bool)

(assert (=> bm!562199 (= call!562204 (isEmpty!37477 (tail!12296 lt!2389620)))))

(declare-fun b!6492819 () Bool)

(declare-fun e!3934760 () Bool)

(assert (=> b!6492819 (= e!3934760 (not (= (head!13211 (tail!12296 lt!2389620)) (c!1189393 (derivativeStep!5064 lt!2389631 (head!13211 lt!2389620))))))))

(declare-fun b!6492820 () Bool)

(declare-fun e!3934763 () Bool)

(assert (=> b!6492820 (= e!3934763 (matchR!8552 (derivativeStep!5064 (derivativeStep!5064 lt!2389631 (head!13211 lt!2389620)) (head!13211 (tail!12296 lt!2389620))) (tail!12296 (tail!12296 lt!2389620))))))

(declare-fun b!6492821 () Bool)

(declare-fun res!2666589 () Bool)

(assert (=> b!6492821 (=> res!2666589 e!3934760)))

(assert (=> b!6492821 (= res!2666589 (not (isEmpty!37477 (tail!12296 (tail!12296 lt!2389620)))))))

(declare-fun b!6492822 () Bool)

(declare-fun res!2666586 () Bool)

(assert (=> b!6492822 (=> res!2666586 e!3934757)))

(assert (=> b!6492822 (= res!2666586 (not ((_ is ElementMatch!16369) (derivativeStep!5064 lt!2389631 (head!13211 lt!2389620)))))))

(declare-fun e!3934758 () Bool)

(assert (=> b!6492822 (= e!3934758 e!3934757)))

(declare-fun b!6492823 () Bool)

(declare-fun e!3934762 () Bool)

(assert (=> b!6492823 (= e!3934762 (= lt!2389959 call!562204))))

(declare-fun b!6492824 () Bool)

(assert (=> b!6492824 (= e!3934759 e!3934760)))

(declare-fun res!2666583 () Bool)

(assert (=> b!6492824 (=> res!2666583 e!3934760)))

(assert (=> b!6492824 (= res!2666583 call!562204)))

(declare-fun b!6492825 () Bool)

(assert (=> b!6492825 (= e!3934763 (nullable!6362 (derivativeStep!5064 lt!2389631 (head!13211 lt!2389620))))))

(declare-fun b!6492826 () Bool)

(assert (=> b!6492826 (= e!3934761 (= (head!13211 (tail!12296 lt!2389620)) (c!1189393 (derivativeStep!5064 lt!2389631 (head!13211 lt!2389620)))))))

(declare-fun d!2037308 () Bool)

(assert (=> d!2037308 e!3934762))

(declare-fun c!1190005 () Bool)

(assert (=> d!2037308 (= c!1190005 ((_ is EmptyExpr!16369) (derivativeStep!5064 lt!2389631 (head!13211 lt!2389620))))))

(assert (=> d!2037308 (= lt!2389959 e!3934763)))

(declare-fun c!1190004 () Bool)

(assert (=> d!2037308 (= c!1190004 (isEmpty!37477 (tail!12296 lt!2389620)))))

(assert (=> d!2037308 (validRegex!8105 (derivativeStep!5064 lt!2389631 (head!13211 lt!2389620)))))

(assert (=> d!2037308 (= (matchR!8552 (derivativeStep!5064 lt!2389631 (head!13211 lt!2389620)) (tail!12296 lt!2389620)) lt!2389959)))

(declare-fun b!6492817 () Bool)

(assert (=> b!6492817 (= e!3934762 e!3934758)))

(declare-fun c!1190003 () Bool)

(assert (=> b!6492817 (= c!1190003 ((_ is EmptyLang!16369) (derivativeStep!5064 lt!2389631 (head!13211 lt!2389620))))))

(declare-fun b!6492827 () Bool)

(assert (=> b!6492827 (= e!3934758 (not lt!2389959))))

(declare-fun b!6492828 () Bool)

(declare-fun res!2666582 () Bool)

(assert (=> b!6492828 (=> (not res!2666582) (not e!3934761))))

(assert (=> b!6492828 (= res!2666582 (not call!562204))))

(assert (= (and d!2037308 c!1190004) b!6492825))

(assert (= (and d!2037308 (not c!1190004)) b!6492820))

(assert (= (and d!2037308 c!1190005) b!6492823))

(assert (= (and d!2037308 (not c!1190005)) b!6492817))

(assert (= (and b!6492817 c!1190003) b!6492827))

(assert (= (and b!6492817 (not c!1190003)) b!6492822))

(assert (= (and b!6492822 (not res!2666586)) b!6492815))

(assert (= (and b!6492815 res!2666584) b!6492828))

(assert (= (and b!6492828 res!2666582) b!6492816))

(assert (= (and b!6492816 res!2666585) b!6492826))

(assert (= (and b!6492815 (not res!2666587)) b!6492818))

(assert (= (and b!6492818 res!2666588) b!6492824))

(assert (= (and b!6492824 (not res!2666583)) b!6492821))

(assert (= (and b!6492821 (not res!2666589)) b!6492819))

(assert (= (or b!6492823 b!6492824 b!6492828) bm!562199))

(assert (=> b!6492816 m!7280174))

(declare-fun m!7281594 () Bool)

(assert (=> b!6492816 m!7281594))

(assert (=> b!6492816 m!7281594))

(declare-fun m!7281596 () Bool)

(assert (=> b!6492816 m!7281596))

(assert (=> d!2037308 m!7280174))

(assert (=> d!2037308 m!7280176))

(assert (=> d!2037308 m!7280182))

(declare-fun m!7281598 () Bool)

(assert (=> d!2037308 m!7281598))

(assert (=> b!6492821 m!7280174))

(assert (=> b!6492821 m!7281594))

(assert (=> b!6492821 m!7281594))

(assert (=> b!6492821 m!7281596))

(assert (=> b!6492819 m!7280174))

(declare-fun m!7281600 () Bool)

(assert (=> b!6492819 m!7281600))

(assert (=> b!6492825 m!7280182))

(declare-fun m!7281602 () Bool)

(assert (=> b!6492825 m!7281602))

(assert (=> bm!562199 m!7280174))

(assert (=> bm!562199 m!7280176))

(assert (=> b!6492826 m!7280174))

(assert (=> b!6492826 m!7281600))

(assert (=> b!6492820 m!7280174))

(assert (=> b!6492820 m!7281600))

(assert (=> b!6492820 m!7280182))

(assert (=> b!6492820 m!7281600))

(declare-fun m!7281604 () Bool)

(assert (=> b!6492820 m!7281604))

(assert (=> b!6492820 m!7280174))

(assert (=> b!6492820 m!7281594))

(assert (=> b!6492820 m!7281604))

(assert (=> b!6492820 m!7281594))

(declare-fun m!7281606 () Bool)

(assert (=> b!6492820 m!7281606))

(assert (=> b!6491556 d!2037308))

(declare-fun b!6492829 () Bool)

(declare-fun e!3934767 () Regex!16369)

(assert (=> b!6492829 (= e!3934767 (ite (= (head!13211 lt!2389620) (c!1189393 lt!2389631)) EmptyExpr!16369 EmptyLang!16369))))

(declare-fun b!6492830 () Bool)

(declare-fun e!3934764 () Regex!16369)

(declare-fun call!562208 () Regex!16369)

(declare-fun call!562205 () Regex!16369)

(assert (=> b!6492830 (= e!3934764 (Union!16369 call!562208 call!562205))))

(declare-fun d!2037310 () Bool)

(declare-fun lt!2389960 () Regex!16369)

(assert (=> d!2037310 (validRegex!8105 lt!2389960)))

(declare-fun e!3934766 () Regex!16369)

(assert (=> d!2037310 (= lt!2389960 e!3934766)))

(declare-fun c!1190008 () Bool)

(assert (=> d!2037310 (= c!1190008 (or ((_ is EmptyExpr!16369) lt!2389631) ((_ is EmptyLang!16369) lt!2389631)))))

(assert (=> d!2037310 (validRegex!8105 lt!2389631)))

(assert (=> d!2037310 (= (derivativeStep!5064 lt!2389631 (head!13211 lt!2389620)) lt!2389960)))

(declare-fun call!562206 () Regex!16369)

(declare-fun e!3934765 () Regex!16369)

(declare-fun b!6492831 () Bool)

(assert (=> b!6492831 (= e!3934765 (Union!16369 (Concat!25214 call!562208 (regTwo!33250 lt!2389631)) call!562206))))

(declare-fun bm!562200 () Bool)

(declare-fun c!1190010 () Bool)

(assert (=> bm!562200 (= call!562208 (derivativeStep!5064 (ite c!1190010 (regOne!33251 lt!2389631) (regOne!33250 lt!2389631)) (head!13211 lt!2389620)))))

(declare-fun bm!562201 () Bool)

(declare-fun call!562207 () Regex!16369)

(assert (=> bm!562201 (= call!562207 call!562205)))

(declare-fun b!6492832 () Bool)

(declare-fun c!1190007 () Bool)

(assert (=> b!6492832 (= c!1190007 (nullable!6362 (regOne!33250 lt!2389631)))))

(declare-fun e!3934768 () Regex!16369)

(assert (=> b!6492832 (= e!3934768 e!3934765)))

(declare-fun c!1190009 () Bool)

(declare-fun bm!562202 () Bool)

(assert (=> bm!562202 (= call!562205 (derivativeStep!5064 (ite c!1190010 (regTwo!33251 lt!2389631) (ite c!1190009 (reg!16698 lt!2389631) (ite c!1190007 (regTwo!33250 lt!2389631) (regOne!33250 lt!2389631)))) (head!13211 lt!2389620)))))

(declare-fun b!6492833 () Bool)

(assert (=> b!6492833 (= e!3934765 (Union!16369 (Concat!25214 call!562206 (regTwo!33250 lt!2389631)) EmptyLang!16369))))

(declare-fun b!6492834 () Bool)

(assert (=> b!6492834 (= e!3934764 e!3934768)))

(assert (=> b!6492834 (= c!1190009 ((_ is Star!16369) lt!2389631))))

(declare-fun b!6492835 () Bool)

(assert (=> b!6492835 (= e!3934766 EmptyLang!16369)))

(declare-fun bm!562203 () Bool)

(assert (=> bm!562203 (= call!562206 call!562207)))

(declare-fun b!6492836 () Bool)

(assert (=> b!6492836 (= e!3934768 (Concat!25214 call!562207 lt!2389631))))

(declare-fun b!6492837 () Bool)

(assert (=> b!6492837 (= c!1190010 ((_ is Union!16369) lt!2389631))))

(assert (=> b!6492837 (= e!3934767 e!3934764)))

(declare-fun b!6492838 () Bool)

(assert (=> b!6492838 (= e!3934766 e!3934767)))

(declare-fun c!1190006 () Bool)

(assert (=> b!6492838 (= c!1190006 ((_ is ElementMatch!16369) lt!2389631))))

(assert (= (and d!2037310 c!1190008) b!6492835))

(assert (= (and d!2037310 (not c!1190008)) b!6492838))

(assert (= (and b!6492838 c!1190006) b!6492829))

(assert (= (and b!6492838 (not c!1190006)) b!6492837))

(assert (= (and b!6492837 c!1190010) b!6492830))

(assert (= (and b!6492837 (not c!1190010)) b!6492834))

(assert (= (and b!6492834 c!1190009) b!6492836))

(assert (= (and b!6492834 (not c!1190009)) b!6492832))

(assert (= (and b!6492832 c!1190007) b!6492831))

(assert (= (and b!6492832 (not c!1190007)) b!6492833))

(assert (= (or b!6492831 b!6492833) bm!562203))

(assert (= (or b!6492836 bm!562203) bm!562201))

(assert (= (or b!6492830 bm!562201) bm!562202))

(assert (= (or b!6492830 b!6492831) bm!562200))

(declare-fun m!7281608 () Bool)

(assert (=> d!2037310 m!7281608))

(assert (=> d!2037310 m!7279404))

(assert (=> bm!562200 m!7280180))

(declare-fun m!7281610 () Bool)

(assert (=> bm!562200 m!7281610))

(assert (=> b!6492832 m!7281322))

(assert (=> bm!562202 m!7280180))

(declare-fun m!7281612 () Bool)

(assert (=> bm!562202 m!7281612))

(assert (=> b!6491556 d!2037310))

(assert (=> b!6491556 d!2037176))

(assert (=> b!6491556 d!2036950))

(assert (=> d!2036550 d!2036554))

(declare-fun d!2037312 () Bool)

(assert (=> d!2037312 (= (flatMap!1874 lt!2389616 lambda!359438) (dynLambda!25930 lambda!359438 lt!2389656))))

(assert (=> d!2037312 true))

(declare-fun _$13!3721 () Unit!158807)

(assert (=> d!2037312 (= (choose!48172 lt!2389616 lt!2389656 lambda!359438) _$13!3721)))

(declare-fun b_lambda!245779 () Bool)

(assert (=> (not b_lambda!245779) (not d!2037312)))

(declare-fun bs!1648662 () Bool)

(assert (= bs!1648662 d!2037312))

(assert (=> bs!1648662 m!7279094))

(assert (=> bs!1648662 m!7279738))

(assert (=> d!2036550 d!2037312))

(assert (=> d!2036440 d!2036442))

(declare-fun d!2037314 () Bool)

(assert (=> d!2037314 (= (flatMap!1874 z!1189 lambda!359438) (dynLambda!25930 lambda!359438 (h!71732 zl!343)))))

(assert (=> d!2037314 true))

(declare-fun _$13!3722 () Unit!158807)

(assert (=> d!2037314 (= (choose!48172 z!1189 (h!71732 zl!343) lambda!359438) _$13!3722)))

(declare-fun b_lambda!245781 () Bool)

(assert (=> (not b_lambda!245781) (not d!2037314)))

(declare-fun bs!1648663 () Bool)

(assert (= bs!1648663 d!2037314))

(assert (=> bs!1648663 m!7279242))

(assert (=> bs!1648663 m!7279382))

(assert (=> d!2036440 d!2037314))

(declare-fun b!6492839 () Bool)

(declare-fun res!2666595 () Bool)

(declare-fun e!3934769 () Bool)

(assert (=> b!6492839 (=> res!2666595 e!3934769)))

(declare-fun e!3934773 () Bool)

(assert (=> b!6492839 (= res!2666595 e!3934773)))

(declare-fun res!2666592 () Bool)

(assert (=> b!6492839 (=> (not res!2666592) (not e!3934773))))

(declare-fun lt!2389961 () Bool)

(assert (=> b!6492839 (= res!2666592 lt!2389961)))

(declare-fun b!6492840 () Bool)

(declare-fun res!2666593 () Bool)

(assert (=> b!6492840 (=> (not res!2666593) (not e!3934773))))

(assert (=> b!6492840 (= res!2666593 (isEmpty!37477 (tail!12296 (tail!12296 (_1!36651 lt!2389638)))))))

(declare-fun b!6492842 () Bool)

(declare-fun e!3934771 () Bool)

(assert (=> b!6492842 (= e!3934769 e!3934771)))

(declare-fun res!2666596 () Bool)

(assert (=> b!6492842 (=> (not res!2666596) (not e!3934771))))

(assert (=> b!6492842 (= res!2666596 (not lt!2389961))))

(declare-fun bm!562204 () Bool)

(declare-fun call!562209 () Bool)

(assert (=> bm!562204 (= call!562209 (isEmpty!37477 (tail!12296 (_1!36651 lt!2389638))))))

(declare-fun b!6492843 () Bool)

(declare-fun e!3934772 () Bool)

(assert (=> b!6492843 (= e!3934772 (not (= (head!13211 (tail!12296 (_1!36651 lt!2389638))) (c!1189393 (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 lt!2389638)))))))))

(declare-fun b!6492844 () Bool)

(declare-fun e!3934775 () Bool)

(assert (=> b!6492844 (= e!3934775 (matchR!8552 (derivativeStep!5064 (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 lt!2389638))) (head!13211 (tail!12296 (_1!36651 lt!2389638)))) (tail!12296 (tail!12296 (_1!36651 lt!2389638)))))))

(declare-fun b!6492845 () Bool)

(declare-fun res!2666597 () Bool)

(assert (=> b!6492845 (=> res!2666597 e!3934772)))

(assert (=> b!6492845 (= res!2666597 (not (isEmpty!37477 (tail!12296 (tail!12296 (_1!36651 lt!2389638))))))))

(declare-fun b!6492846 () Bool)

(declare-fun res!2666594 () Bool)

(assert (=> b!6492846 (=> res!2666594 e!3934769)))

(assert (=> b!6492846 (= res!2666594 (not ((_ is ElementMatch!16369) (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 lt!2389638))))))))

(declare-fun e!3934770 () Bool)

(assert (=> b!6492846 (= e!3934770 e!3934769)))

(declare-fun b!6492847 () Bool)

(declare-fun e!3934774 () Bool)

(assert (=> b!6492847 (= e!3934774 (= lt!2389961 call!562209))))

(declare-fun b!6492848 () Bool)

(assert (=> b!6492848 (= e!3934771 e!3934772)))

(declare-fun res!2666591 () Bool)

(assert (=> b!6492848 (=> res!2666591 e!3934772)))

(assert (=> b!6492848 (= res!2666591 call!562209)))

(declare-fun b!6492849 () Bool)

(assert (=> b!6492849 (= e!3934775 (nullable!6362 (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 lt!2389638)))))))

(declare-fun b!6492850 () Bool)

(assert (=> b!6492850 (= e!3934773 (= (head!13211 (tail!12296 (_1!36651 lt!2389638))) (c!1189393 (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 lt!2389638))))))))

(declare-fun d!2037316 () Bool)

(assert (=> d!2037316 e!3934774))

(declare-fun c!1190013 () Bool)

(assert (=> d!2037316 (= c!1190013 ((_ is EmptyExpr!16369) (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 lt!2389638)))))))

(assert (=> d!2037316 (= lt!2389961 e!3934775)))

(declare-fun c!1190012 () Bool)

(assert (=> d!2037316 (= c!1190012 (isEmpty!37477 (tail!12296 (_1!36651 lt!2389638))))))

(assert (=> d!2037316 (validRegex!8105 (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 lt!2389638))))))

(assert (=> d!2037316 (= (matchR!8552 (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 lt!2389638))) (tail!12296 (_1!36651 lt!2389638))) lt!2389961)))

(declare-fun b!6492841 () Bool)

(assert (=> b!6492841 (= e!3934774 e!3934770)))

(declare-fun c!1190011 () Bool)

(assert (=> b!6492841 (= c!1190011 ((_ is EmptyLang!16369) (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 lt!2389638)))))))

(declare-fun b!6492851 () Bool)

(assert (=> b!6492851 (= e!3934770 (not lt!2389961))))

(declare-fun b!6492852 () Bool)

(declare-fun res!2666590 () Bool)

(assert (=> b!6492852 (=> (not res!2666590) (not e!3934773))))

(assert (=> b!6492852 (= res!2666590 (not call!562209))))

(assert (= (and d!2037316 c!1190012) b!6492849))

(assert (= (and d!2037316 (not c!1190012)) b!6492844))

(assert (= (and d!2037316 c!1190013) b!6492847))

(assert (= (and d!2037316 (not c!1190013)) b!6492841))

(assert (= (and b!6492841 c!1190011) b!6492851))

(assert (= (and b!6492841 (not c!1190011)) b!6492846))

(assert (= (and b!6492846 (not res!2666594)) b!6492839))

(assert (= (and b!6492839 res!2666592) b!6492852))

(assert (= (and b!6492852 res!2666590) b!6492840))

(assert (= (and b!6492840 res!2666593) b!6492850))

(assert (= (and b!6492839 (not res!2666595)) b!6492842))

(assert (= (and b!6492842 res!2666596) b!6492848))

(assert (= (and b!6492848 (not res!2666591)) b!6492845))

(assert (= (and b!6492845 (not res!2666597)) b!6492843))

(assert (= (or b!6492847 b!6492848 b!6492852) bm!562204))

(assert (=> b!6492840 m!7279598))

(assert (=> b!6492840 m!7281022))

(assert (=> b!6492840 m!7281022))

(declare-fun m!7281614 () Bool)

(assert (=> b!6492840 m!7281614))

(assert (=> d!2037316 m!7279598))

(assert (=> d!2037316 m!7279600))

(assert (=> d!2037316 m!7279608))

(declare-fun m!7281616 () Bool)

(assert (=> d!2037316 m!7281616))

(assert (=> b!6492845 m!7279598))

(assert (=> b!6492845 m!7281022))

(assert (=> b!6492845 m!7281022))

(assert (=> b!6492845 m!7281614))

(assert (=> b!6492843 m!7279598))

(assert (=> b!6492843 m!7281018))

(assert (=> b!6492849 m!7279608))

(declare-fun m!7281618 () Bool)

(assert (=> b!6492849 m!7281618))

(assert (=> bm!562204 m!7279598))

(assert (=> bm!562204 m!7279600))

(assert (=> b!6492850 m!7279598))

(assert (=> b!6492850 m!7281018))

(assert (=> b!6492844 m!7279598))

(assert (=> b!6492844 m!7281018))

(assert (=> b!6492844 m!7279608))

(assert (=> b!6492844 m!7281018))

(declare-fun m!7281620 () Bool)

(assert (=> b!6492844 m!7281620))

(assert (=> b!6492844 m!7279598))

(assert (=> b!6492844 m!7281022))

(assert (=> b!6492844 m!7281620))

(assert (=> b!6492844 m!7281022))

(declare-fun m!7281622 () Bool)

(assert (=> b!6492844 m!7281622))

(assert (=> b!6491147 d!2037316))

(declare-fun b!6492853 () Bool)

(declare-fun e!3934779 () Regex!16369)

(assert (=> b!6492853 (= e!3934779 (ite (= (head!13211 (_1!36651 lt!2389638)) (c!1189393 (reg!16698 (regOne!33250 r!7292)))) EmptyExpr!16369 EmptyLang!16369))))

(declare-fun b!6492854 () Bool)

(declare-fun e!3934776 () Regex!16369)

(declare-fun call!562213 () Regex!16369)

(declare-fun call!562210 () Regex!16369)

(assert (=> b!6492854 (= e!3934776 (Union!16369 call!562213 call!562210))))

(declare-fun d!2037318 () Bool)

(declare-fun lt!2389962 () Regex!16369)

(assert (=> d!2037318 (validRegex!8105 lt!2389962)))

(declare-fun e!3934778 () Regex!16369)

(assert (=> d!2037318 (= lt!2389962 e!3934778)))

(declare-fun c!1190016 () Bool)

(assert (=> d!2037318 (= c!1190016 (or ((_ is EmptyExpr!16369) (reg!16698 (regOne!33250 r!7292))) ((_ is EmptyLang!16369) (reg!16698 (regOne!33250 r!7292)))))))

(assert (=> d!2037318 (validRegex!8105 (reg!16698 (regOne!33250 r!7292)))))

(assert (=> d!2037318 (= (derivativeStep!5064 (reg!16698 (regOne!33250 r!7292)) (head!13211 (_1!36651 lt!2389638))) lt!2389962)))

(declare-fun b!6492855 () Bool)

(declare-fun call!562211 () Regex!16369)

(declare-fun e!3934777 () Regex!16369)

(assert (=> b!6492855 (= e!3934777 (Union!16369 (Concat!25214 call!562213 (regTwo!33250 (reg!16698 (regOne!33250 r!7292)))) call!562211))))

(declare-fun bm!562205 () Bool)

(declare-fun c!1190018 () Bool)

(assert (=> bm!562205 (= call!562213 (derivativeStep!5064 (ite c!1190018 (regOne!33251 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292)))) (head!13211 (_1!36651 lt!2389638))))))

(declare-fun bm!562206 () Bool)

(declare-fun call!562212 () Regex!16369)

(assert (=> bm!562206 (= call!562212 call!562210)))

(declare-fun b!6492856 () Bool)

(declare-fun c!1190015 () Bool)

(assert (=> b!6492856 (= c!1190015 (nullable!6362 (regOne!33250 (reg!16698 (regOne!33250 r!7292)))))))

(declare-fun e!3934780 () Regex!16369)

(assert (=> b!6492856 (= e!3934780 e!3934777)))

(declare-fun bm!562207 () Bool)

(declare-fun c!1190017 () Bool)

(assert (=> bm!562207 (= call!562210 (derivativeStep!5064 (ite c!1190018 (regTwo!33251 (reg!16698 (regOne!33250 r!7292))) (ite c!1190017 (reg!16698 (reg!16698 (regOne!33250 r!7292))) (ite c!1190015 (regTwo!33250 (reg!16698 (regOne!33250 r!7292))) (regOne!33250 (reg!16698 (regOne!33250 r!7292)))))) (head!13211 (_1!36651 lt!2389638))))))

(declare-fun b!6492857 () Bool)

(assert (=> b!6492857 (= e!3934777 (Union!16369 (Concat!25214 call!562211 (regTwo!33250 (reg!16698 (regOne!33250 r!7292)))) EmptyLang!16369))))

(declare-fun b!6492858 () Bool)

(assert (=> b!6492858 (= e!3934776 e!3934780)))

(assert (=> b!6492858 (= c!1190017 ((_ is Star!16369) (reg!16698 (regOne!33250 r!7292))))))

(declare-fun b!6492859 () Bool)

(assert (=> b!6492859 (= e!3934778 EmptyLang!16369)))

(declare-fun bm!562208 () Bool)

(assert (=> bm!562208 (= call!562211 call!562212)))

(declare-fun b!6492860 () Bool)

(assert (=> b!6492860 (= e!3934780 (Concat!25214 call!562212 (reg!16698 (regOne!33250 r!7292))))))

(declare-fun b!6492861 () Bool)

(assert (=> b!6492861 (= c!1190018 ((_ is Union!16369) (reg!16698 (regOne!33250 r!7292))))))

(assert (=> b!6492861 (= e!3934779 e!3934776)))

(declare-fun b!6492862 () Bool)

(assert (=> b!6492862 (= e!3934778 e!3934779)))

(declare-fun c!1190014 () Bool)

(assert (=> b!6492862 (= c!1190014 ((_ is ElementMatch!16369) (reg!16698 (regOne!33250 r!7292))))))

(assert (= (and d!2037318 c!1190016) b!6492859))

(assert (= (and d!2037318 (not c!1190016)) b!6492862))

(assert (= (and b!6492862 c!1190014) b!6492853))

(assert (= (and b!6492862 (not c!1190014)) b!6492861))

(assert (= (and b!6492861 c!1190018) b!6492854))

(assert (= (and b!6492861 (not c!1190018)) b!6492858))

(assert (= (and b!6492858 c!1190017) b!6492860))

(assert (= (and b!6492858 (not c!1190017)) b!6492856))

(assert (= (and b!6492856 c!1190015) b!6492855))

(assert (= (and b!6492856 (not c!1190015)) b!6492857))

(assert (= (or b!6492855 b!6492857) bm!562208))

(assert (= (or b!6492860 bm!562208) bm!562206))

(assert (= (or b!6492854 bm!562206) bm!562207))

(assert (= (or b!6492854 b!6492855) bm!562205))

(declare-fun m!7281624 () Bool)

(assert (=> d!2037318 m!7281624))

(assert (=> d!2037318 m!7279464))

(assert (=> bm!562205 m!7279604))

(declare-fun m!7281626 () Bool)

(assert (=> bm!562205 m!7281626))

(assert (=> b!6492856 m!7279270))

(assert (=> bm!562207 m!7279604))

(declare-fun m!7281628 () Bool)

(assert (=> bm!562207 m!7281628))

(assert (=> b!6491147 d!2037318))

(assert (=> b!6491147 d!2037066))

(assert (=> b!6491147 d!2036942))

(assert (=> d!2036668 d!2037148))

(assert (=> b!6490874 d!2036436))

(declare-fun d!2037320 () Bool)

(assert (=> d!2037320 (= (nullable!6362 (regTwo!33250 r!7292)) (nullableFct!2300 (regTwo!33250 r!7292)))))

(declare-fun bs!1648664 () Bool)

(assert (= bs!1648664 d!2037320))

(declare-fun m!7281630 () Bool)

(assert (=> bs!1648664 m!7281630))

(assert (=> b!6491321 d!2037320))

(assert (=> b!6491392 d!2036974))

(assert (=> b!6491546 d!2036850))

(declare-fun d!2037322 () Bool)

(declare-fun c!1190019 () Bool)

(assert (=> d!2037322 (= c!1190019 (isEmpty!37477 (tail!12296 s!2326)))))

(declare-fun e!3934781 () Bool)

(assert (=> d!2037322 (= (matchZipper!2381 (derivationStepZipper!2335 z!1189 (head!13211 s!2326)) (tail!12296 s!2326)) e!3934781)))

(declare-fun b!6492863 () Bool)

(assert (=> b!6492863 (= e!3934781 (nullableZipper!2125 (derivationStepZipper!2335 z!1189 (head!13211 s!2326))))))

(declare-fun b!6492864 () Bool)

(assert (=> b!6492864 (= e!3934781 (matchZipper!2381 (derivationStepZipper!2335 (derivationStepZipper!2335 z!1189 (head!13211 s!2326)) (head!13211 (tail!12296 s!2326))) (tail!12296 (tail!12296 s!2326))))))

(assert (= (and d!2037322 c!1190019) b!6492863))

(assert (= (and d!2037322 (not c!1190019)) b!6492864))

(assert (=> d!2037322 m!7279326))

(assert (=> d!2037322 m!7279328))

(assert (=> b!6492863 m!7279582))

(declare-fun m!7281632 () Bool)

(assert (=> b!6492863 m!7281632))

(assert (=> b!6492864 m!7279326))

(assert (=> b!6492864 m!7280856))

(assert (=> b!6492864 m!7279582))

(assert (=> b!6492864 m!7280856))

(declare-fun m!7281634 () Bool)

(assert (=> b!6492864 m!7281634))

(assert (=> b!6492864 m!7279326))

(assert (=> b!6492864 m!7280860))

(assert (=> b!6492864 m!7281634))

(assert (=> b!6492864 m!7280860))

(declare-fun m!7281636 () Bool)

(assert (=> b!6492864 m!7281636))

(assert (=> b!6491127 d!2037322))

(declare-fun bs!1648665 () Bool)

(declare-fun d!2037324 () Bool)

(assert (= bs!1648665 (and d!2037324 d!2037268)))

(declare-fun lambda!359604 () Int)

(assert (=> bs!1648665 (= (= (head!13211 s!2326) (head!13211 (t!379034 s!2326))) (= lambda!359604 lambda!359592))))

(declare-fun bs!1648666 () Bool)

(assert (= bs!1648666 (and d!2037324 d!2036402)))

(assert (=> bs!1648666 (= (= (head!13211 s!2326) (h!71730 s!2326)) (= lambda!359604 lambda!359447))))

(declare-fun bs!1648667 () Bool)

(assert (= bs!1648667 (and d!2037324 d!2036822)))

(assert (=> bs!1648667 (= (= (head!13211 s!2326) (head!13211 (t!379034 s!2326))) (= lambda!359604 lambda!359549))))

(declare-fun bs!1648668 () Bool)

(assert (= bs!1648668 (and d!2037324 d!2036998)))

(assert (=> bs!1648668 (= (= (head!13211 s!2326) (head!13211 (t!379034 s!2326))) (= lambda!359604 lambda!359564))))

(declare-fun bs!1648669 () Bool)

(assert (= bs!1648669 (and d!2037324 d!2037058)))

(assert (=> bs!1648669 (= (= (head!13211 s!2326) (head!13211 lt!2389663)) (= lambda!359604 lambda!359572))))

(declare-fun bs!1648670 () Bool)

(assert (= bs!1648670 (and d!2037324 d!2037064)))

(assert (=> bs!1648670 (= (= (head!13211 s!2326) (head!13211 (_1!36651 lt!2389638))) (= lambda!359604 lambda!359573))))

(declare-fun bs!1648671 () Bool)

(assert (= bs!1648671 (and d!2037324 d!2037300)))

(assert (=> bs!1648671 (= (= (head!13211 s!2326) (head!13211 (t!379034 s!2326))) (= lambda!359604 lambda!359603))))

(declare-fun bs!1648672 () Bool)

(assert (= bs!1648672 (and d!2037324 d!2036946)))

(assert (=> bs!1648672 (= (= (head!13211 s!2326) (head!13211 lt!2389663)) (= lambda!359604 lambda!359560))))

(declare-fun bs!1648673 () Bool)

(assert (= bs!1648673 (and d!2037324 b!6490636)))

(assert (=> bs!1648673 (= (= (head!13211 s!2326) (h!71730 s!2326)) (= lambda!359604 lambda!359438))))

(declare-fun bs!1648674 () Bool)

(assert (= bs!1648674 (and d!2037324 d!2036982)))

(assert (=> bs!1648674 (= lambda!359604 lambda!359563)))

(assert (=> d!2037324 true))

(assert (=> d!2037324 (= (derivationStepZipper!2335 z!1189 (head!13211 s!2326)) (flatMap!1874 z!1189 lambda!359604))))

(declare-fun bs!1648675 () Bool)

(assert (= bs!1648675 d!2037324))

(declare-fun m!7281638 () Bool)

(assert (=> bs!1648675 m!7281638))

(assert (=> b!6491127 d!2037324))

(assert (=> b!6491127 d!2036906))

(assert (=> b!6491127 d!2036984))

(declare-fun b!6492868 () Bool)

(declare-fun e!3934783 () Bool)

(declare-fun lt!2389963 () List!65406)

(assert (=> b!6492868 (= e!3934783 (or (not (= (_2!36651 (get!22637 lt!2389777)) Nil!65282)) (= lt!2389963 (_1!36651 (get!22637 lt!2389777)))))))

(declare-fun b!6492867 () Bool)

(declare-fun res!2666599 () Bool)

(assert (=> b!6492867 (=> (not res!2666599) (not e!3934783))))

(assert (=> b!6492867 (= res!2666599 (= (size!40427 lt!2389963) (+ (size!40427 (_1!36651 (get!22637 lt!2389777))) (size!40427 (_2!36651 (get!22637 lt!2389777))))))))

(declare-fun d!2037326 () Bool)

(assert (=> d!2037326 e!3934783))

(declare-fun res!2666598 () Bool)

(assert (=> d!2037326 (=> (not res!2666598) (not e!3934783))))

(assert (=> d!2037326 (= res!2666598 (= (content!12442 lt!2389963) ((_ map or) (content!12442 (_1!36651 (get!22637 lt!2389777))) (content!12442 (_2!36651 (get!22637 lt!2389777))))))))

(declare-fun e!3934782 () List!65406)

(assert (=> d!2037326 (= lt!2389963 e!3934782)))

(declare-fun c!1190020 () Bool)

(assert (=> d!2037326 (= c!1190020 ((_ is Nil!65282) (_1!36651 (get!22637 lt!2389777))))))

(assert (=> d!2037326 (= (++!14448 (_1!36651 (get!22637 lt!2389777)) (_2!36651 (get!22637 lt!2389777))) lt!2389963)))

(declare-fun b!6492866 () Bool)

(assert (=> b!6492866 (= e!3934782 (Cons!65282 (h!71730 (_1!36651 (get!22637 lt!2389777))) (++!14448 (t!379034 (_1!36651 (get!22637 lt!2389777))) (_2!36651 (get!22637 lt!2389777)))))))

(declare-fun b!6492865 () Bool)

(assert (=> b!6492865 (= e!3934782 (_2!36651 (get!22637 lt!2389777)))))

(assert (= (and d!2037326 c!1190020) b!6492865))

(assert (= (and d!2037326 (not c!1190020)) b!6492866))

(assert (= (and d!2037326 res!2666598) b!6492867))

(assert (= (and b!6492867 res!2666599) b!6492868))

(declare-fun m!7281640 () Bool)

(assert (=> b!6492867 m!7281640))

(declare-fun m!7281642 () Bool)

(assert (=> b!6492867 m!7281642))

(declare-fun m!7281644 () Bool)

(assert (=> b!6492867 m!7281644))

(declare-fun m!7281646 () Bool)

(assert (=> d!2037326 m!7281646))

(declare-fun m!7281648 () Bool)

(assert (=> d!2037326 m!7281648))

(declare-fun m!7281650 () Bool)

(assert (=> d!2037326 m!7281650))

(declare-fun m!7281652 () Bool)

(assert (=> b!6492866 m!7281652))

(assert (=> b!6491402 d!2037326))

(assert (=> b!6491402 d!2037166))

(declare-fun bs!1648676 () Bool)

(declare-fun d!2037328 () Bool)

(assert (= bs!1648676 (and d!2037328 d!2036978)))

(declare-fun lambda!359605 () Int)

(assert (=> bs!1648676 (= lambda!359605 lambda!359562)))

(declare-fun bs!1648677 () Bool)

(assert (= bs!1648677 (and d!2037328 d!2036974)))

(assert (=> bs!1648677 (= lambda!359605 lambda!359561)))

(declare-fun bs!1648678 () Bool)

(assert (= bs!1648678 (and d!2037328 d!2037224)))

(assert (=> bs!1648678 (= lambda!359605 lambda!359582)))

(declare-fun bs!1648679 () Bool)

(assert (= bs!1648679 (and d!2037328 d!2037214)))

(assert (=> bs!1648679 (= lambda!359605 lambda!359581)))

(declare-fun bs!1648680 () Bool)

(assert (= bs!1648680 (and d!2037328 d!2036904)))

(assert (=> bs!1648680 (= lambda!359605 lambda!359555)))

(declare-fun bs!1648681 () Bool)

(assert (= bs!1648681 (and d!2037328 d!2037282)))

(assert (=> bs!1648681 (= lambda!359605 lambda!359596)))

(declare-fun bs!1648682 () Bool)

(assert (= bs!1648682 (and d!2037328 d!2036816)))

(assert (=> bs!1648682 (= lambda!359605 lambda!359548)))

(assert (=> d!2037328 (= (nullableZipper!2125 ((_ map or) lt!2389628 lt!2389666)) (exists!2618 ((_ map or) lt!2389628 lt!2389666) lambda!359605))))

(declare-fun bs!1648683 () Bool)

(assert (= bs!1648683 d!2037328))

(declare-fun m!7281654 () Bool)

(assert (=> bs!1648683 m!7281654))

(assert (=> b!6491653 d!2037328))

(declare-fun bs!1648684 () Bool)

(declare-fun d!2037330 () Bool)

(assert (= bs!1648684 (and d!2037330 d!2037054)))

(declare-fun lambda!359606 () Int)

(assert (=> bs!1648684 (= lambda!359606 lambda!359571)))

(declare-fun bs!1648685 () Bool)

(assert (= bs!1648685 (and d!2037330 d!2036540)))

(assert (=> bs!1648685 (= lambda!359606 lambda!359502)))

(declare-fun bs!1648686 () Bool)

(assert (= bs!1648686 (and d!2037330 d!2036928)))

(assert (=> bs!1648686 (= lambda!359606 lambda!359557)))

(declare-fun bs!1648687 () Bool)

(assert (= bs!1648687 (and d!2037330 d!2036902)))

(assert (=> bs!1648687 (= lambda!359606 lambda!359554)))

(declare-fun bs!1648688 () Bool)

(assert (= bs!1648688 (and d!2037330 d!2037276)))

(assert (=> bs!1648688 (= lambda!359606 lambda!359595)))

(declare-fun bs!1648689 () Bool)

(assert (= bs!1648689 (and d!2037330 b!6490629)))

(assert (=> bs!1648689 (= lambda!359606 lambda!359444)))

(declare-fun bs!1648690 () Bool)

(assert (= bs!1648690 (and d!2037330 d!2037258)))

(assert (=> bs!1648690 (= lambda!359606 lambda!359590)))

(declare-fun bs!1648691 () Bool)

(assert (= bs!1648691 (and d!2037330 d!2036426)))

(assert (=> bs!1648691 (= lambda!359606 lambda!359456)))

(declare-fun bs!1648692 () Bool)

(assert (= bs!1648692 (and d!2037330 d!2036926)))

(assert (=> bs!1648692 (= lambda!359606 lambda!359556)))

(declare-fun bs!1648693 () Bool)

(assert (= bs!1648693 (and d!2037330 d!2036632)))

(assert (=> bs!1648693 (= lambda!359606 lambda!359532)))

(declare-fun bs!1648694 () Bool)

(assert (= bs!1648694 (and d!2037330 d!2037260)))

(assert (=> bs!1648694 (= lambda!359606 lambda!359591)))

(declare-fun bs!1648695 () Bool)

(assert (= bs!1648695 (and d!2037330 d!2036558)))

(assert (=> bs!1648695 (= lambda!359606 lambda!359507)))

(declare-fun bs!1648696 () Bool)

(assert (= bs!1648696 (and d!2037330 d!2036836)))

(assert (=> bs!1648696 (= lambda!359606 lambda!359552)))

(declare-fun bs!1648697 () Bool)

(assert (= bs!1648697 (and d!2037330 d!2036802)))

(assert (=> bs!1648697 (= lambda!359606 lambda!359545)))

(declare-fun bs!1648698 () Bool)

(assert (= bs!1648698 (and d!2037330 d!2036572)))

(assert (=> bs!1648698 (= lambda!359606 lambda!359520)))

(declare-fun bs!1648699 () Bool)

(assert (= bs!1648699 (and d!2037330 d!2036900)))

(assert (=> bs!1648699 (= lambda!359606 lambda!359553)))

(declare-fun bs!1648700 () Bool)

(assert (= bs!1648700 (and d!2037330 d!2037050)))

(assert (=> bs!1648700 (= lambda!359606 lambda!359570)))

(declare-fun bs!1648701 () Bool)

(assert (= bs!1648701 (and d!2037330 d!2036562)))

(assert (=> bs!1648701 (= lambda!359606 lambda!359513)))

(declare-fun b!6492869 () Bool)

(declare-fun e!3934786 () Bool)

(declare-fun lt!2389964 () Regex!16369)

(assert (=> b!6492869 (= e!3934786 (isEmptyExpr!1761 lt!2389964))))

(declare-fun b!6492870 () Bool)

(declare-fun e!3934784 () Bool)

(assert (=> b!6492870 (= e!3934784 (isEmpty!37476 (t!379035 (t!379035 (exprs!6253 (h!71732 zl!343))))))))

(declare-fun b!6492871 () Bool)

(declare-fun e!3934787 () Bool)

(assert (=> b!6492871 (= e!3934786 e!3934787)))

(declare-fun c!1190022 () Bool)

(assert (=> b!6492871 (= c!1190022 (isEmpty!37476 (tail!12299 (t!379035 (exprs!6253 (h!71732 zl!343))))))))

(declare-fun b!6492872 () Bool)

(declare-fun e!3934785 () Regex!16369)

(assert (=> b!6492872 (= e!3934785 EmptyExpr!16369)))

(declare-fun b!6492873 () Bool)

(declare-fun e!3934788 () Regex!16369)

(assert (=> b!6492873 (= e!3934788 (h!71731 (t!379035 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6492874 () Bool)

(declare-fun e!3934789 () Bool)

(assert (=> b!6492874 (= e!3934789 e!3934786)))

(declare-fun c!1190021 () Bool)

(assert (=> b!6492874 (= c!1190021 (isEmpty!37476 (t!379035 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun b!6492875 () Bool)

(assert (=> b!6492875 (= e!3934785 (Concat!25214 (h!71731 (t!379035 (exprs!6253 (h!71732 zl!343)))) (generalisedConcat!1966 (t!379035 (t!379035 (exprs!6253 (h!71732 zl!343)))))))))

(declare-fun b!6492876 () Bool)

(assert (=> b!6492876 (= e!3934787 (isConcat!1284 lt!2389964))))

(declare-fun b!6492877 () Bool)

(assert (=> b!6492877 (= e!3934788 e!3934785)))

(declare-fun c!1190024 () Bool)

(assert (=> b!6492877 (= c!1190024 ((_ is Cons!65283) (t!379035 (exprs!6253 (h!71732 zl!343)))))))

(assert (=> d!2037330 e!3934789))

(declare-fun res!2666601 () Bool)

(assert (=> d!2037330 (=> (not res!2666601) (not e!3934789))))

(assert (=> d!2037330 (= res!2666601 (validRegex!8105 lt!2389964))))

(assert (=> d!2037330 (= lt!2389964 e!3934788)))

(declare-fun c!1190023 () Bool)

(assert (=> d!2037330 (= c!1190023 e!3934784)))

(declare-fun res!2666600 () Bool)

(assert (=> d!2037330 (=> (not res!2666600) (not e!3934784))))

(assert (=> d!2037330 (= res!2666600 ((_ is Cons!65283) (t!379035 (exprs!6253 (h!71732 zl!343)))))))

(assert (=> d!2037330 (forall!15551 (t!379035 (exprs!6253 (h!71732 zl!343))) lambda!359606)))

(assert (=> d!2037330 (= (generalisedConcat!1966 (t!379035 (exprs!6253 (h!71732 zl!343)))) lt!2389964)))

(declare-fun b!6492878 () Bool)

(assert (=> b!6492878 (= e!3934787 (= lt!2389964 (head!13214 (t!379035 (exprs!6253 (h!71732 zl!343))))))))

(assert (= (and d!2037330 res!2666600) b!6492870))

(assert (= (and d!2037330 c!1190023) b!6492873))

(assert (= (and d!2037330 (not c!1190023)) b!6492877))

(assert (= (and b!6492877 c!1190024) b!6492875))

(assert (= (and b!6492877 (not c!1190024)) b!6492872))

(assert (= (and d!2037330 res!2666601) b!6492874))

(assert (= (and b!6492874 c!1190021) b!6492869))

(assert (= (and b!6492874 (not c!1190021)) b!6492871))

(assert (= (and b!6492871 c!1190022) b!6492878))

(assert (= (and b!6492871 (not c!1190022)) b!6492876))

(declare-fun m!7281656 () Bool)

(assert (=> b!6492876 m!7281656))

(assert (=> b!6492874 m!7279230))

(declare-fun m!7281658 () Bool)

(assert (=> b!6492871 m!7281658))

(assert (=> b!6492871 m!7281658))

(declare-fun m!7281660 () Bool)

(assert (=> b!6492871 m!7281660))

(declare-fun m!7281662 () Bool)

(assert (=> b!6492875 m!7281662))

(declare-fun m!7281664 () Bool)

(assert (=> b!6492869 m!7281664))

(declare-fun m!7281666 () Bool)

(assert (=> b!6492870 m!7281666))

(declare-fun m!7281668 () Bool)

(assert (=> b!6492878 m!7281668))

(declare-fun m!7281670 () Bool)

(assert (=> d!2037330 m!7281670))

(declare-fun m!7281672 () Bool)

(assert (=> d!2037330 m!7281672))

(assert (=> b!6491383 d!2037330))

(declare-fun b!6492882 () Bool)

(declare-fun e!3934791 () Bool)

(declare-fun lt!2389965 () List!65406)

(assert (=> b!6492882 (= e!3934791 (or (not (= (_2!36651 (get!22637 lt!2389727)) Nil!65282)) (= lt!2389965 (_1!36651 (get!22637 lt!2389727)))))))

(declare-fun b!6492881 () Bool)

(declare-fun res!2666603 () Bool)

(assert (=> b!6492881 (=> (not res!2666603) (not e!3934791))))

(assert (=> b!6492881 (= res!2666603 (= (size!40427 lt!2389965) (+ (size!40427 (_1!36651 (get!22637 lt!2389727))) (size!40427 (_2!36651 (get!22637 lt!2389727))))))))

(declare-fun d!2037332 () Bool)

(assert (=> d!2037332 e!3934791))

(declare-fun res!2666602 () Bool)

(assert (=> d!2037332 (=> (not res!2666602) (not e!3934791))))

(assert (=> d!2037332 (= res!2666602 (= (content!12442 lt!2389965) ((_ map or) (content!12442 (_1!36651 (get!22637 lt!2389727))) (content!12442 (_2!36651 (get!22637 lt!2389727))))))))

(declare-fun e!3934790 () List!65406)

(assert (=> d!2037332 (= lt!2389965 e!3934790)))

(declare-fun c!1190025 () Bool)

(assert (=> d!2037332 (= c!1190025 ((_ is Nil!65282) (_1!36651 (get!22637 lt!2389727))))))

(assert (=> d!2037332 (= (++!14448 (_1!36651 (get!22637 lt!2389727)) (_2!36651 (get!22637 lt!2389727))) lt!2389965)))

(declare-fun b!6492880 () Bool)

(assert (=> b!6492880 (= e!3934790 (Cons!65282 (h!71730 (_1!36651 (get!22637 lt!2389727))) (++!14448 (t!379034 (_1!36651 (get!22637 lt!2389727))) (_2!36651 (get!22637 lt!2389727)))))))

(declare-fun b!6492879 () Bool)

(assert (=> b!6492879 (= e!3934790 (_2!36651 (get!22637 lt!2389727)))))

(assert (= (and d!2037332 c!1190025) b!6492879))

(assert (= (and d!2037332 (not c!1190025)) b!6492880))

(assert (= (and d!2037332 res!2666602) b!6492881))

(assert (= (and b!6492881 res!2666603) b!6492882))

(declare-fun m!7281674 () Bool)

(assert (=> b!6492881 m!7281674))

(declare-fun m!7281676 () Bool)

(assert (=> b!6492881 m!7281676))

(declare-fun m!7281678 () Bool)

(assert (=> b!6492881 m!7281678))

(declare-fun m!7281680 () Bool)

(assert (=> d!2037332 m!7281680))

(declare-fun m!7281682 () Bool)

(assert (=> d!2037332 m!7281682))

(declare-fun m!7281684 () Bool)

(assert (=> d!2037332 m!7281684))

(declare-fun m!7281686 () Bool)

(assert (=> b!6492880 m!7281686))

(assert (=> b!6491119 d!2037332))

(assert (=> b!6491119 d!2036812))

(declare-fun d!2037334 () Bool)

(assert (=> d!2037334 (= (Exists!3439 lambda!359497) (choose!48184 lambda!359497))))

(declare-fun bs!1648702 () Bool)

(assert (= bs!1648702 d!2037334))

(declare-fun m!7281688 () Bool)

(assert (=> bs!1648702 m!7281688))

(assert (=> d!2036516 d!2037334))

(declare-fun d!2037336 () Bool)

(assert (=> d!2037336 (= (Exists!3439 lambda!359498) (choose!48184 lambda!359498))))

(declare-fun bs!1648703 () Bool)

(assert (= bs!1648703 d!2037336))

(declare-fun m!7281690 () Bool)

(assert (=> bs!1648703 m!7281690))

(assert (=> d!2036516 d!2037336))

(declare-fun bs!1648704 () Bool)

(declare-fun d!2037338 () Bool)

(assert (= bs!1648704 (and d!2037338 b!6490643)))

(declare-fun lambda!359607 () Int)

(assert (=> bs!1648704 (not (= lambda!359607 lambda!359442))))

(declare-fun bs!1648705 () Bool)

(assert (= bs!1648705 (and d!2037338 b!6492359)))

(assert (=> bs!1648705 (not (= lambda!359607 lambda!359577))))

(declare-fun bs!1648706 () Bool)

(assert (= bs!1648706 (and d!2037338 d!2037296)))

(assert (=> bs!1648706 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359607 lambda!359601))))

(declare-fun bs!1648707 () Bool)

(assert (= bs!1648707 (and d!2037338 d!2036598)))

(assert (=> bs!1648707 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359607 lambda!359524))))

(declare-fun bs!1648708 () Bool)

(assert (= bs!1648708 (and d!2037338 b!6492463)))

(assert (=> bs!1648708 (not (= lambda!359607 lambda!359578))))

(assert (=> bs!1648706 (not (= lambda!359607 lambda!359602))))

(declare-fun bs!1648709 () Bool)

(assert (= bs!1648709 (and d!2037338 d!2036464)))

(assert (=> bs!1648709 (not (= lambda!359607 lambda!359480))))

(assert (=> bs!1648704 (not (= lambda!359607 lambda!359443))))

(declare-fun bs!1648710 () Bool)

(assert (= bs!1648710 (and d!2037338 d!2037246)))

(assert (=> bs!1648710 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359607 lambda!359588))))

(declare-fun bs!1648711 () Bool)

(assert (= bs!1648711 (and d!2037338 d!2036472)))

(assert (=> bs!1648711 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359607 lambda!359485))))

(declare-fun bs!1648712 () Bool)

(assert (= bs!1648712 (and d!2037338 b!6491888)))

(assert (=> bs!1648712 (not (= lambda!359607 lambda!359551))))

(declare-fun bs!1648713 () Bool)

(assert (= bs!1648713 (and d!2037338 b!6490750)))

(assert (=> bs!1648713 (not (= lambda!359607 lambda!359453))))

(declare-fun bs!1648714 () Bool)

(assert (= bs!1648714 (and d!2037338 b!6490649)))

(assert (=> bs!1648714 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359607 lambda!359436))))

(declare-fun bs!1648715 () Bool)

(assert (= bs!1648715 (and d!2037338 b!6490618)))

(assert (=> bs!1648715 (not (= lambda!359607 lambda!359440))))

(declare-fun bs!1648716 () Bool)

(assert (= bs!1648716 (and d!2037338 b!6492132)))

(assert (=> bs!1648716 (not (= lambda!359607 lambda!359558))))

(declare-fun bs!1648717 () Bool)

(assert (= bs!1648717 (and d!2037338 b!6492357)))

(assert (=> bs!1648717 (not (= lambda!359607 lambda!359576))))

(declare-fun bs!1648718 () Bool)

(assert (= bs!1648718 (and d!2037338 d!2036458)))

(assert (=> bs!1648718 (not (= lambda!359607 lambda!359470))))

(assert (=> bs!1648715 (= lambda!359607 lambda!359439)))

(declare-fun bs!1648719 () Bool)

(assert (= bs!1648719 (and d!2037338 d!2036606)))

(assert (=> bs!1648719 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359607 lambda!359528))))

(assert (=> bs!1648704 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359607 lambda!359441))))

(declare-fun bs!1648720 () Bool)

(assert (= bs!1648720 (and d!2037338 b!6492134)))

(assert (=> bs!1648720 (not (= lambda!359607 lambda!359559))))

(declare-fun bs!1648721 () Bool)

(assert (= bs!1648721 (and d!2037338 d!2037232)))

(assert (=> bs!1648721 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359607 lambda!359583))))

(declare-fun bs!1648722 () Bool)

(assert (= bs!1648722 (and d!2037338 b!6492465)))

(assert (=> bs!1648722 (not (= lambda!359607 lambda!359579))))

(declare-fun bs!1648723 () Bool)

(assert (= bs!1648723 (and d!2037338 b!6492283)))

(assert (=> bs!1648723 (not (= lambda!359607 lambda!359565))))

(declare-fun bs!1648724 () Bool)

(assert (= bs!1648724 (and d!2037338 d!2036516)))

(assert (=> bs!1648724 (not (= lambda!359607 lambda!359498))))

(declare-fun bs!1648725 () Bool)

(assert (= bs!1648725 (and d!2037338 b!6491179)))

(assert (=> bs!1648725 (not (= lambda!359607 lambda!359500))))

(declare-fun bs!1648726 () Bool)

(assert (= bs!1648726 (and d!2037338 b!6492285)))

(assert (=> bs!1648726 (not (= lambda!359607 lambda!359566))))

(declare-fun bs!1648727 () Bool)

(assert (= bs!1648727 (and d!2037338 b!6491886)))

(assert (=> bs!1648727 (not (= lambda!359607 lambda!359550))))

(assert (=> bs!1648718 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359607 lambda!359469))))

(declare-fun bs!1648728 () Bool)

(assert (= bs!1648728 (and d!2037338 b!6492346)))

(assert (=> bs!1648728 (not (= lambda!359607 lambda!359574))))

(assert (=> bs!1648719 (not (= lambda!359607 lambda!359529))))

(assert (=> bs!1648724 (= lambda!359607 lambda!359497)))

(assert (=> bs!1648714 (not (= lambda!359607 lambda!359437))))

(assert (=> bs!1648710 (not (= lambda!359607 lambda!359589))))

(declare-fun bs!1648729 () Bool)

(assert (= bs!1648729 (and d!2037338 b!6492348)))

(assert (=> bs!1648729 (not (= lambda!359607 lambda!359575))))

(declare-fun bs!1648730 () Bool)

(assert (= bs!1648730 (and d!2037338 b!6490932)))

(assert (=> bs!1648730 (not (= lambda!359607 lambda!359462))))

(assert (=> bs!1648709 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359607 lambda!359477))))

(declare-fun bs!1648731 () Bool)

(assert (= bs!1648731 (and d!2037338 b!6490930)))

(assert (=> bs!1648731 (not (= lambda!359607 lambda!359459))))

(declare-fun bs!1648732 () Bool)

(assert (= bs!1648732 (and d!2037338 b!6491181)))

(assert (=> bs!1648732 (not (= lambda!359607 lambda!359501))))

(declare-fun bs!1648733 () Bool)

(assert (= bs!1648733 (and d!2037338 b!6490748)))

(assert (=> bs!1648733 (not (= lambda!359607 lambda!359452))))

(declare-fun bs!1648734 () Bool)

(assert (= bs!1648734 (and d!2037338 d!2037138)))

(assert (=> bs!1648734 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359607 lambda!359580))))

(declare-fun bs!1648735 () Bool)

(assert (= bs!1648735 (and d!2037338 d!2036524)))

(assert (=> bs!1648735 (= lambda!359607 lambda!359499)))

(declare-fun bs!1648736 () Bool)

(assert (= bs!1648736 (and d!2037338 d!2037036)))

(assert (=> bs!1648736 (= lambda!359607 lambda!359569)))

(assert (=> d!2037338 true))

(assert (=> d!2037338 true))

(assert (=> d!2037338 true))

(declare-fun lambda!359608 () Int)

(assert (=> bs!1648704 (not (= lambda!359608 lambda!359442))))

(assert (=> bs!1648705 (= (and (= lt!2389631 (regOne!33250 (regTwo!33251 r!7292))) (= (regTwo!33250 r!7292) (regTwo!33250 (regTwo!33251 r!7292)))) (= lambda!359608 lambda!359577))))

(assert (=> bs!1648706 (not (= lambda!359608 lambda!359601))))

(assert (=> bs!1648707 (not (= lambda!359608 lambda!359524))))

(assert (=> bs!1648708 (not (= lambda!359608 lambda!359578))))

(assert (=> bs!1648706 (not (= lambda!359608 lambda!359602))))

(assert (=> bs!1648709 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359608 lambda!359480))))

(assert (=> bs!1648704 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359608 lambda!359443))))

(assert (=> bs!1648710 (not (= lambda!359608 lambda!359588))))

(assert (=> bs!1648711 (not (= lambda!359608 lambda!359485))))

(assert (=> bs!1648712 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (regOne!33250 (regOne!33251 lt!2389631))) (= (regTwo!33250 r!7292) (regTwo!33250 (regOne!33251 lt!2389631)))) (= lambda!359608 lambda!359551))))

(assert (=> bs!1648713 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359608 lambda!359453))))

(assert (=> bs!1648714 (not (= lambda!359608 lambda!359436))))

(assert (=> bs!1648715 (= lambda!359608 lambda!359440)))

(assert (=> bs!1648716 (not (= lambda!359608 lambda!359558))))

(assert (=> bs!1648717 (not (= lambda!359608 lambda!359576))))

(assert (=> bs!1648718 (not (= lambda!359608 lambda!359470))))

(assert (=> bs!1648715 (not (= lambda!359608 lambda!359439))))

(assert (=> bs!1648719 (not (= lambda!359608 lambda!359528))))

(assert (=> bs!1648720 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (regOne!33250 (regTwo!33251 lt!2389631))) (= (regTwo!33250 r!7292) (regTwo!33250 (regTwo!33251 lt!2389631)))) (= lambda!359608 lambda!359559))))

(declare-fun bs!1648737 () Bool)

(assert (= bs!1648737 d!2037338))

(assert (=> bs!1648737 (not (= lambda!359608 lambda!359607))))

(assert (=> bs!1648704 (not (= lambda!359608 lambda!359441))))

(assert (=> bs!1648721 (not (= lambda!359608 lambda!359583))))

(assert (=> bs!1648722 (= (and (= lt!2389631 (regOne!33250 (regOne!33251 lt!2389659))) (= (regTwo!33250 r!7292) (regTwo!33250 (regOne!33251 lt!2389659)))) (= lambda!359608 lambda!359579))))

(assert (=> bs!1648723 (not (= lambda!359608 lambda!359565))))

(assert (=> bs!1648724 (= lambda!359608 lambda!359498)))

(assert (=> bs!1648725 (not (= lambda!359608 lambda!359500))))

(assert (=> bs!1648726 (= (and (= lt!2389631 (regOne!33250 (regOne!33251 r!7292))) (= (regTwo!33250 r!7292) (regTwo!33250 (regOne!33251 r!7292)))) (= lambda!359608 lambda!359566))))

(assert (=> bs!1648727 (not (= lambda!359608 lambda!359550))))

(assert (=> bs!1648718 (not (= lambda!359608 lambda!359469))))

(assert (=> bs!1648728 (not (= lambda!359608 lambda!359574))))

(assert (=> bs!1648719 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359608 lambda!359529))))

(assert (=> bs!1648724 (not (= lambda!359608 lambda!359497))))

(assert (=> bs!1648714 (= (= lt!2389631 (regOne!33250 r!7292)) (= lambda!359608 lambda!359437))))

(assert (=> bs!1648710 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359608 lambda!359589))))

(assert (=> bs!1648729 (= (and (= lt!2389631 (regOne!33250 (regTwo!33251 lt!2389659))) (= (regTwo!33250 r!7292) (regTwo!33250 (regTwo!33251 lt!2389659)))) (= lambda!359608 lambda!359575))))

(assert (=> bs!1648730 (= (and (= s!2326 (_1!36651 lt!2389655)) (= lt!2389631 (regOne!33250 lt!2389631)) (= (regTwo!33250 r!7292) (regTwo!33250 lt!2389631))) (= lambda!359608 lambda!359462))))

(assert (=> bs!1648709 (not (= lambda!359608 lambda!359477))))

(assert (=> bs!1648731 (not (= lambda!359608 lambda!359459))))

(assert (=> bs!1648732 (= (and (= lt!2389631 (regOne!33250 lt!2389659)) (= (regTwo!33250 r!7292) (regTwo!33250 lt!2389659))) (= lambda!359608 lambda!359501))))

(assert (=> bs!1648733 (not (= lambda!359608 lambda!359452))))

(assert (=> bs!1648734 (not (= lambda!359608 lambda!359580))))

(assert (=> bs!1648735 (not (= lambda!359608 lambda!359499))))

(assert (=> bs!1648736 (not (= lambda!359608 lambda!359569))))

(assert (=> d!2037338 true))

(assert (=> d!2037338 true))

(assert (=> d!2037338 true))

(assert (=> d!2037338 (= (Exists!3439 lambda!359607) (Exists!3439 lambda!359608))))

(assert (=> d!2037338 true))

(declare-fun _$90!2353 () Unit!158807)

(assert (=> d!2037338 (= (choose!48181 lt!2389631 (regTwo!33250 r!7292) s!2326) _$90!2353)))

(declare-fun m!7281692 () Bool)

(assert (=> bs!1648737 m!7281692))

(declare-fun m!7281694 () Bool)

(assert (=> bs!1648737 m!7281694))

(assert (=> d!2036516 d!2037338))

(assert (=> d!2036516 d!2037038))

(declare-fun d!2037340 () Bool)

(assert (=> d!2037340 (= (nullable!6362 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343))))) (nullableFct!2300 (regOne!33250 (h!71731 (exprs!6253 (h!71732 zl!343))))))))

(declare-fun bs!1648738 () Bool)

(assert (= bs!1648738 d!2037340))

(declare-fun m!7281696 () Bool)

(assert (=> bs!1648738 m!7281696))

(assert (=> b!6490858 d!2037340))

(assert (=> bm!561958 d!2036570))

(declare-fun d!2037342 () Bool)

(declare-fun c!1190026 () Bool)

(assert (=> d!2037342 (= c!1190026 (isEmpty!37477 (tail!12296 lt!2389641)))))

(declare-fun e!3934792 () Bool)

(assert (=> d!2037342 (= (matchZipper!2381 (derivationStepZipper!2335 lt!2389616 (head!13211 lt!2389641)) (tail!12296 lt!2389641)) e!3934792)))

(declare-fun b!6492883 () Bool)

(assert (=> b!6492883 (= e!3934792 (nullableZipper!2125 (derivationStepZipper!2335 lt!2389616 (head!13211 lt!2389641))))))

(declare-fun b!6492884 () Bool)

(assert (=> b!6492884 (= e!3934792 (matchZipper!2381 (derivationStepZipper!2335 (derivationStepZipper!2335 lt!2389616 (head!13211 lt!2389641)) (head!13211 (tail!12296 lt!2389641))) (tail!12296 (tail!12296 lt!2389641))))))

(assert (= (and d!2037342 c!1190026) b!6492883))

(assert (= (and d!2037342 (not c!1190026)) b!6492884))

(assert (=> d!2037342 m!7280140))

(assert (=> d!2037342 m!7280160))

(assert (=> b!6492883 m!7280138))

(declare-fun m!7281698 () Bool)

(assert (=> b!6492883 m!7281698))

(assert (=> b!6492884 m!7280140))

(assert (=> b!6492884 m!7280592))

(assert (=> b!6492884 m!7280138))

(assert (=> b!6492884 m!7280592))

(declare-fun m!7281700 () Bool)

(assert (=> b!6492884 m!7281700))

(assert (=> b!6492884 m!7280140))

(assert (=> b!6492884 m!7280586))

(assert (=> b!6492884 m!7281700))

(assert (=> b!6492884 m!7280586))

(declare-fun m!7281702 () Bool)

(assert (=> b!6492884 m!7281702))

(assert (=> b!6491520 d!2037342))

(declare-fun bs!1648739 () Bool)

(declare-fun d!2037344 () Bool)

(assert (= bs!1648739 (and d!2037344 d!2037268)))

(declare-fun lambda!359609 () Int)

(assert (=> bs!1648739 (= (= (head!13211 lt!2389641) (head!13211 (t!379034 s!2326))) (= lambda!359609 lambda!359592))))

(declare-fun bs!1648740 () Bool)

(assert (= bs!1648740 (and d!2037344 d!2036402)))

(assert (=> bs!1648740 (= (= (head!13211 lt!2389641) (h!71730 s!2326)) (= lambda!359609 lambda!359447))))

(declare-fun bs!1648741 () Bool)

(assert (= bs!1648741 (and d!2037344 d!2036822)))

(assert (=> bs!1648741 (= (= (head!13211 lt!2389641) (head!13211 (t!379034 s!2326))) (= lambda!359609 lambda!359549))))

(declare-fun bs!1648742 () Bool)

(assert (= bs!1648742 (and d!2037344 d!2036998)))

(assert (=> bs!1648742 (= (= (head!13211 lt!2389641) (head!13211 (t!379034 s!2326))) (= lambda!359609 lambda!359564))))

(declare-fun bs!1648743 () Bool)

(assert (= bs!1648743 (and d!2037344 d!2037058)))

(assert (=> bs!1648743 (= (= (head!13211 lt!2389641) (head!13211 lt!2389663)) (= lambda!359609 lambda!359572))))

(declare-fun bs!1648744 () Bool)

(assert (= bs!1648744 (and d!2037344 d!2037064)))

(assert (=> bs!1648744 (= (= (head!13211 lt!2389641) (head!13211 (_1!36651 lt!2389638))) (= lambda!359609 lambda!359573))))

(declare-fun bs!1648745 () Bool)

(assert (= bs!1648745 (and d!2037344 d!2037324)))

(assert (=> bs!1648745 (= (= (head!13211 lt!2389641) (head!13211 s!2326)) (= lambda!359609 lambda!359604))))

(declare-fun bs!1648746 () Bool)

(assert (= bs!1648746 (and d!2037344 d!2037300)))

(assert (=> bs!1648746 (= (= (head!13211 lt!2389641) (head!13211 (t!379034 s!2326))) (= lambda!359609 lambda!359603))))

(declare-fun bs!1648747 () Bool)

(assert (= bs!1648747 (and d!2037344 d!2036946)))

(assert (=> bs!1648747 (= (= (head!13211 lt!2389641) (head!13211 lt!2389663)) (= lambda!359609 lambda!359560))))

(declare-fun bs!1648748 () Bool)

(assert (= bs!1648748 (and d!2037344 b!6490636)))

(assert (=> bs!1648748 (= (= (head!13211 lt!2389641) (h!71730 s!2326)) (= lambda!359609 lambda!359438))))

(declare-fun bs!1648749 () Bool)

(assert (= bs!1648749 (and d!2037344 d!2036982)))

(assert (=> bs!1648749 (= (= (head!13211 lt!2389641) (head!13211 s!2326)) (= lambda!359609 lambda!359563))))

(assert (=> d!2037344 true))

(assert (=> d!2037344 (= (derivationStepZipper!2335 lt!2389616 (head!13211 lt!2389641)) (flatMap!1874 lt!2389616 lambda!359609))))

(declare-fun bs!1648750 () Bool)

(assert (= bs!1648750 d!2037344))

(declare-fun m!7281704 () Bool)

(assert (=> bs!1648750 m!7281704))

(assert (=> b!6491520 d!2037344))

(assert (=> b!6491520 d!2036850))

(assert (=> b!6491520 d!2036852))

(assert (=> bm!561986 d!2036876))

(declare-fun d!2037346 () Bool)

(assert (=> d!2037346 true))

(declare-fun setRes!44231 () Bool)

(assert (=> d!2037346 setRes!44231))

(declare-fun condSetEmpty!44231 () Bool)

(declare-fun res!2666604 () (InoxSet Context!11506))

(assert (=> d!2037346 (= condSetEmpty!44231 (= res!2666604 ((as const (Array Context!11506 Bool)) false)))))

(assert (=> d!2037346 (= (choose!48171 lt!2389651 lambda!359438) res!2666604)))

(declare-fun setIsEmpty!44231 () Bool)

(assert (=> setIsEmpty!44231 setRes!44231))

(declare-fun tp!1796830 () Bool)

(declare-fun e!3934793 () Bool)

(declare-fun setNonEmpty!44231 () Bool)

(declare-fun setElem!44231 () Context!11506)

(assert (=> setNonEmpty!44231 (= setRes!44231 (and tp!1796830 (inv!84169 setElem!44231) e!3934793))))

(declare-fun setRest!44231 () (InoxSet Context!11506))

(assert (=> setNonEmpty!44231 (= res!2666604 ((_ map or) (store ((as const (Array Context!11506 Bool)) false) setElem!44231 true) setRest!44231))))

(declare-fun b!6492885 () Bool)

(declare-fun tp!1796829 () Bool)

(assert (=> b!6492885 (= e!3934793 tp!1796829)))

(assert (= (and d!2037346 condSetEmpty!44231) setIsEmpty!44231))

(assert (= (and d!2037346 (not condSetEmpty!44231)) setNonEmpty!44231))

(assert (= setNonEmpty!44231 b!6492885))

(declare-fun m!7281706 () Bool)

(assert (=> setNonEmpty!44231 m!7281706))

(assert (=> d!2036552 d!2037346))

(declare-fun d!2037348 () Bool)

(assert (=> d!2037348 (= (isEmpty!37477 (_2!36651 lt!2389655)) ((_ is Nil!65282) (_2!36651 lt!2389655)))))

(assert (=> d!2036566 d!2037348))

(assert (=> d!2036566 d!2037010))

(declare-fun bs!1648751 () Bool)

(declare-fun d!2037350 () Bool)

(assert (= bs!1648751 (and d!2037350 d!2036978)))

(declare-fun lambda!359610 () Int)

(assert (=> bs!1648751 (= lambda!359610 lambda!359562)))

(declare-fun bs!1648752 () Bool)

(assert (= bs!1648752 (and d!2037350 d!2036974)))

(assert (=> bs!1648752 (= lambda!359610 lambda!359561)))

(declare-fun bs!1648753 () Bool)

(assert (= bs!1648753 (and d!2037350 d!2037328)))

(assert (=> bs!1648753 (= lambda!359610 lambda!359605)))

(declare-fun bs!1648754 () Bool)

(assert (= bs!1648754 (and d!2037350 d!2037224)))

(assert (=> bs!1648754 (= lambda!359610 lambda!359582)))

(declare-fun bs!1648755 () Bool)

(assert (= bs!1648755 (and d!2037350 d!2037214)))

(assert (=> bs!1648755 (= lambda!359610 lambda!359581)))

(declare-fun bs!1648756 () Bool)

(assert (= bs!1648756 (and d!2037350 d!2036904)))

(assert (=> bs!1648756 (= lambda!359610 lambda!359555)))

(declare-fun bs!1648757 () Bool)

(assert (= bs!1648757 (and d!2037350 d!2037282)))

(assert (=> bs!1648757 (= lambda!359610 lambda!359596)))

(declare-fun bs!1648758 () Bool)

(assert (= bs!1648758 (and d!2037350 d!2036816)))

(assert (=> bs!1648758 (= lambda!359610 lambda!359548)))

(assert (=> d!2037350 (= (nullableZipper!2125 lt!2389628) (exists!2618 lt!2389628 lambda!359610))))

(declare-fun bs!1648759 () Bool)

(assert (= bs!1648759 d!2037350))

(declare-fun m!7281708 () Bool)

(assert (=> bs!1648759 m!7281708))

(assert (=> b!6491651 d!2037350))

(declare-fun b!6492886 () Bool)

(declare-fun res!2666610 () Bool)

(declare-fun e!3934794 () Bool)

(assert (=> b!6492886 (=> res!2666610 e!3934794)))

(declare-fun e!3934798 () Bool)

(assert (=> b!6492886 (= res!2666610 e!3934798)))

(declare-fun res!2666607 () Bool)

(assert (=> b!6492886 (=> (not res!2666607) (not e!3934798))))

(declare-fun lt!2389966 () Bool)

(assert (=> b!6492886 (= res!2666607 lt!2389966)))

(declare-fun b!6492887 () Bool)

(declare-fun res!2666608 () Bool)

(assert (=> b!6492887 (=> (not res!2666608) (not e!3934798))))

(assert (=> b!6492887 (= res!2666608 (isEmpty!37477 (tail!12296 (tail!12296 (_2!36651 lt!2389638)))))))

(declare-fun b!6492889 () Bool)

(declare-fun e!3934796 () Bool)

(assert (=> b!6492889 (= e!3934794 e!3934796)))

(declare-fun res!2666611 () Bool)

(assert (=> b!6492889 (=> (not res!2666611) (not e!3934796))))

(assert (=> b!6492889 (= res!2666611 (not lt!2389966))))

(declare-fun bm!562209 () Bool)

(declare-fun call!562214 () Bool)

(assert (=> bm!562209 (= call!562214 (isEmpty!37477 (tail!12296 (_2!36651 lt!2389638))))))

(declare-fun b!6492890 () Bool)

(declare-fun e!3934797 () Bool)

(assert (=> b!6492890 (= e!3934797 (not (= (head!13211 (tail!12296 (_2!36651 lt!2389638))) (c!1189393 (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 lt!2389638)))))))))

(declare-fun b!6492891 () Bool)

(declare-fun e!3934800 () Bool)

(assert (=> b!6492891 (= e!3934800 (matchR!8552 (derivativeStep!5064 (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 lt!2389638))) (head!13211 (tail!12296 (_2!36651 lt!2389638)))) (tail!12296 (tail!12296 (_2!36651 lt!2389638)))))))

(declare-fun b!6492892 () Bool)

(declare-fun res!2666612 () Bool)

(assert (=> b!6492892 (=> res!2666612 e!3934797)))

(assert (=> b!6492892 (= res!2666612 (not (isEmpty!37477 (tail!12296 (tail!12296 (_2!36651 lt!2389638))))))))

(declare-fun b!6492893 () Bool)

(declare-fun res!2666609 () Bool)

(assert (=> b!6492893 (=> res!2666609 e!3934794)))

(assert (=> b!6492893 (= res!2666609 (not ((_ is ElementMatch!16369) (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 lt!2389638))))))))

(declare-fun e!3934795 () Bool)

(assert (=> b!6492893 (= e!3934795 e!3934794)))

(declare-fun b!6492894 () Bool)

(declare-fun e!3934799 () Bool)

(assert (=> b!6492894 (= e!3934799 (= lt!2389966 call!562214))))

(declare-fun b!6492895 () Bool)

(assert (=> b!6492895 (= e!3934796 e!3934797)))

(declare-fun res!2666606 () Bool)

(assert (=> b!6492895 (=> res!2666606 e!3934797)))

(assert (=> b!6492895 (= res!2666606 call!562214)))

(declare-fun b!6492896 () Bool)

(assert (=> b!6492896 (= e!3934800 (nullable!6362 (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 lt!2389638)))))))

(declare-fun b!6492897 () Bool)

(assert (=> b!6492897 (= e!3934798 (= (head!13211 (tail!12296 (_2!36651 lt!2389638))) (c!1189393 (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 lt!2389638))))))))

(declare-fun d!2037352 () Bool)

(assert (=> d!2037352 e!3934799))

(declare-fun c!1190029 () Bool)

(assert (=> d!2037352 (= c!1190029 ((_ is EmptyExpr!16369) (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 lt!2389638)))))))

(assert (=> d!2037352 (= lt!2389966 e!3934800)))

(declare-fun c!1190028 () Bool)

(assert (=> d!2037352 (= c!1190028 (isEmpty!37477 (tail!12296 (_2!36651 lt!2389638))))))

(assert (=> d!2037352 (validRegex!8105 (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 lt!2389638))))))

(assert (=> d!2037352 (= (matchR!8552 (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 lt!2389638))) (tail!12296 (_2!36651 lt!2389638))) lt!2389966)))

(declare-fun b!6492888 () Bool)

(assert (=> b!6492888 (= e!3934799 e!3934795)))

(declare-fun c!1190027 () Bool)

(assert (=> b!6492888 (= c!1190027 ((_ is EmptyLang!16369) (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 lt!2389638)))))))

(declare-fun b!6492898 () Bool)

(assert (=> b!6492898 (= e!3934795 (not lt!2389966))))

(declare-fun b!6492899 () Bool)

(declare-fun res!2666605 () Bool)

(assert (=> b!6492899 (=> (not res!2666605) (not e!3934798))))

(assert (=> b!6492899 (= res!2666605 (not call!562214))))

(assert (= (and d!2037352 c!1190028) b!6492896))

(assert (= (and d!2037352 (not c!1190028)) b!6492891))

(assert (= (and d!2037352 c!1190029) b!6492894))

(assert (= (and d!2037352 (not c!1190029)) b!6492888))

(assert (= (and b!6492888 c!1190027) b!6492898))

(assert (= (and b!6492888 (not c!1190027)) b!6492893))

(assert (= (and b!6492893 (not res!2666609)) b!6492886))

(assert (= (and b!6492886 res!2666607) b!6492899))

(assert (= (and b!6492899 res!2666605) b!6492887))

(assert (= (and b!6492887 res!2666608) b!6492897))

(assert (= (and b!6492886 (not res!2666610)) b!6492889))

(assert (= (and b!6492889 res!2666611) b!6492895))

(assert (= (and b!6492895 (not res!2666606)) b!6492892))

(assert (= (and b!6492892 (not res!2666612)) b!6492890))

(assert (= (or b!6492894 b!6492895 b!6492899) bm!562209))

(assert (=> b!6492887 m!7279586))

(declare-fun m!7281710 () Bool)

(assert (=> b!6492887 m!7281710))

(assert (=> b!6492887 m!7281710))

(declare-fun m!7281712 () Bool)

(assert (=> b!6492887 m!7281712))

(assert (=> d!2037352 m!7279586))

(assert (=> d!2037352 m!7279588))

(assert (=> d!2037352 m!7279594))

(declare-fun m!7281714 () Bool)

(assert (=> d!2037352 m!7281714))

(assert (=> b!6492892 m!7279586))

(assert (=> b!6492892 m!7281710))

(assert (=> b!6492892 m!7281710))

(assert (=> b!6492892 m!7281712))

(assert (=> b!6492890 m!7279586))

(declare-fun m!7281716 () Bool)

(assert (=> b!6492890 m!7281716))

(assert (=> b!6492896 m!7279594))

(declare-fun m!7281718 () Bool)

(assert (=> b!6492896 m!7281718))

(assert (=> bm!562209 m!7279586))

(assert (=> bm!562209 m!7279588))

(assert (=> b!6492897 m!7279586))

(assert (=> b!6492897 m!7281716))

(assert (=> b!6492891 m!7279586))

(assert (=> b!6492891 m!7281716))

(assert (=> b!6492891 m!7279594))

(assert (=> b!6492891 m!7281716))

(declare-fun m!7281720 () Bool)

(assert (=> b!6492891 m!7281720))

(assert (=> b!6492891 m!7279586))

(assert (=> b!6492891 m!7281710))

(assert (=> b!6492891 m!7281720))

(assert (=> b!6492891 m!7281710))

(declare-fun m!7281722 () Bool)

(assert (=> b!6492891 m!7281722))

(assert (=> b!6491133 d!2037352))

(declare-fun b!6492900 () Bool)

(declare-fun e!3934804 () Regex!16369)

(assert (=> b!6492900 (= e!3934804 (ite (= (head!13211 (_2!36651 lt!2389638)) (c!1189393 lt!2389631)) EmptyExpr!16369 EmptyLang!16369))))

(declare-fun b!6492901 () Bool)

(declare-fun e!3934801 () Regex!16369)

(declare-fun call!562218 () Regex!16369)

(declare-fun call!562215 () Regex!16369)

(assert (=> b!6492901 (= e!3934801 (Union!16369 call!562218 call!562215))))

(declare-fun d!2037354 () Bool)

(declare-fun lt!2389967 () Regex!16369)

(assert (=> d!2037354 (validRegex!8105 lt!2389967)))

(declare-fun e!3934803 () Regex!16369)

(assert (=> d!2037354 (= lt!2389967 e!3934803)))

(declare-fun c!1190032 () Bool)

(assert (=> d!2037354 (= c!1190032 (or ((_ is EmptyExpr!16369) lt!2389631) ((_ is EmptyLang!16369) lt!2389631)))))

(assert (=> d!2037354 (validRegex!8105 lt!2389631)))

(assert (=> d!2037354 (= (derivativeStep!5064 lt!2389631 (head!13211 (_2!36651 lt!2389638))) lt!2389967)))

(declare-fun b!6492902 () Bool)

(declare-fun call!562216 () Regex!16369)

(declare-fun e!3934802 () Regex!16369)

(assert (=> b!6492902 (= e!3934802 (Union!16369 (Concat!25214 call!562218 (regTwo!33250 lt!2389631)) call!562216))))

(declare-fun c!1190034 () Bool)

(declare-fun bm!562210 () Bool)

(assert (=> bm!562210 (= call!562218 (derivativeStep!5064 (ite c!1190034 (regOne!33251 lt!2389631) (regOne!33250 lt!2389631)) (head!13211 (_2!36651 lt!2389638))))))

(declare-fun bm!562211 () Bool)

(declare-fun call!562217 () Regex!16369)

(assert (=> bm!562211 (= call!562217 call!562215)))

(declare-fun b!6492903 () Bool)

(declare-fun c!1190031 () Bool)

(assert (=> b!6492903 (= c!1190031 (nullable!6362 (regOne!33250 lt!2389631)))))

(declare-fun e!3934805 () Regex!16369)

(assert (=> b!6492903 (= e!3934805 e!3934802)))

(declare-fun c!1190033 () Bool)

(declare-fun bm!562212 () Bool)

(assert (=> bm!562212 (= call!562215 (derivativeStep!5064 (ite c!1190034 (regTwo!33251 lt!2389631) (ite c!1190033 (reg!16698 lt!2389631) (ite c!1190031 (regTwo!33250 lt!2389631) (regOne!33250 lt!2389631)))) (head!13211 (_2!36651 lt!2389638))))))

(declare-fun b!6492904 () Bool)

(assert (=> b!6492904 (= e!3934802 (Union!16369 (Concat!25214 call!562216 (regTwo!33250 lt!2389631)) EmptyLang!16369))))

(declare-fun b!6492905 () Bool)

(assert (=> b!6492905 (= e!3934801 e!3934805)))

(assert (=> b!6492905 (= c!1190033 ((_ is Star!16369) lt!2389631))))

(declare-fun b!6492906 () Bool)

(assert (=> b!6492906 (= e!3934803 EmptyLang!16369)))

(declare-fun bm!562213 () Bool)

(assert (=> bm!562213 (= call!562216 call!562217)))

(declare-fun b!6492907 () Bool)

(assert (=> b!6492907 (= e!3934805 (Concat!25214 call!562217 lt!2389631))))

(declare-fun b!6492908 () Bool)

(assert (=> b!6492908 (= c!1190034 ((_ is Union!16369) lt!2389631))))

(assert (=> b!6492908 (= e!3934804 e!3934801)))

(declare-fun b!6492909 () Bool)

(assert (=> b!6492909 (= e!3934803 e!3934804)))

(declare-fun c!1190030 () Bool)

(assert (=> b!6492909 (= c!1190030 ((_ is ElementMatch!16369) lt!2389631))))

(assert (= (and d!2037354 c!1190032) b!6492906))

(assert (= (and d!2037354 (not c!1190032)) b!6492909))

(assert (= (and b!6492909 c!1190030) b!6492900))

(assert (= (and b!6492909 (not c!1190030)) b!6492908))

(assert (= (and b!6492908 c!1190034) b!6492901))

(assert (= (and b!6492908 (not c!1190034)) b!6492905))

(assert (= (and b!6492905 c!1190033) b!6492907))

(assert (= (and b!6492905 (not c!1190033)) b!6492903))

(assert (= (and b!6492903 c!1190031) b!6492902))

(assert (= (and b!6492903 (not c!1190031)) b!6492904))

(assert (= (or b!6492902 b!6492904) bm!562213))

(assert (= (or b!6492907 bm!562213) bm!562211))

(assert (= (or b!6492901 bm!562211) bm!562212))

(assert (= (or b!6492901 b!6492902) bm!562210))

(declare-fun m!7281724 () Bool)

(assert (=> d!2037354 m!7281724))

(assert (=> d!2037354 m!7279404))

(assert (=> bm!562210 m!7279592))

(declare-fun m!7281726 () Bool)

(assert (=> bm!562210 m!7281726))

(assert (=> b!6492903 m!7281322))

(assert (=> bm!562212 m!7279592))

(declare-fun m!7281728 () Bool)

(assert (=> bm!562212 m!7281728))

(assert (=> b!6491133 d!2037354))

(assert (=> b!6491133 d!2037226))

(assert (=> b!6491133 d!2036834))

(declare-fun d!2037356 () Bool)

(assert (=> d!2037356 (= (isEmpty!37476 (t!379035 (unfocusZipperList!1790 zl!343))) ((_ is Nil!65283) (t!379035 (unfocusZipperList!1790 zl!343))))))

(assert (=> b!6491287 d!2037356))

(declare-fun d!2037358 () Bool)

(assert (=> d!2037358 (= (isEmpty!37479 lt!2389624) (not ((_ is Some!16259) lt!2389624)))))

(assert (=> d!2036526 d!2037358))

(assert (=> b!6491513 d!2036814))

(declare-fun d!2037360 () Bool)

(assert (=> d!2037360 (= (Exists!3439 lambda!359528) (choose!48184 lambda!359528))))

(declare-fun bs!1648760 () Bool)

(assert (= bs!1648760 d!2037360))

(declare-fun m!7281730 () Bool)

(assert (=> bs!1648760 m!7281730))

(assert (=> d!2036606 d!2037360))

(declare-fun d!2037362 () Bool)

(assert (=> d!2037362 (= (Exists!3439 lambda!359529) (choose!48184 lambda!359529))))

(declare-fun bs!1648761 () Bool)

(assert (= bs!1648761 d!2037362))

(declare-fun m!7281732 () Bool)

(assert (=> bs!1648761 m!7281732))

(assert (=> d!2036606 d!2037362))

(declare-fun bs!1648762 () Bool)

(declare-fun d!2037364 () Bool)

(assert (= bs!1648762 (and d!2037364 b!6490643)))

(declare-fun lambda!359611 () Int)

(assert (=> bs!1648762 (not (= lambda!359611 lambda!359442))))

(declare-fun bs!1648763 () Bool)

(assert (= bs!1648763 (and d!2037364 b!6492359)))

(assert (=> bs!1648763 (not (= lambda!359611 lambda!359577))))

(declare-fun bs!1648764 () Bool)

(assert (= bs!1648764 (and d!2037364 d!2037296)))

(assert (=> bs!1648764 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359611 lambda!359601))))

(declare-fun bs!1648765 () Bool)

(assert (= bs!1648765 (and d!2037364 d!2036598)))

(assert (=> bs!1648765 (= lambda!359611 lambda!359524)))

(declare-fun bs!1648766 () Bool)

(assert (= bs!1648766 (and d!2037364 b!6492463)))

(assert (=> bs!1648766 (not (= lambda!359611 lambda!359578))))

(assert (=> bs!1648764 (not (= lambda!359611 lambda!359602))))

(declare-fun bs!1648767 () Bool)

(assert (= bs!1648767 (and d!2037364 d!2036464)))

(assert (=> bs!1648767 (not (= lambda!359611 lambda!359480))))

(assert (=> bs!1648762 (not (= lambda!359611 lambda!359443))))

(declare-fun bs!1648768 () Bool)

(assert (= bs!1648768 (and d!2037364 d!2037246)))

(assert (=> bs!1648768 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359611 lambda!359588))))

(declare-fun bs!1648769 () Bool)

(assert (= bs!1648769 (and d!2037364 d!2036472)))

(assert (=> bs!1648769 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359611 lambda!359485))))

(declare-fun bs!1648770 () Bool)

(assert (= bs!1648770 (and d!2037364 b!6491888)))

(assert (=> bs!1648770 (not (= lambda!359611 lambda!359551))))

(declare-fun bs!1648771 () Bool)

(assert (= bs!1648771 (and d!2037364 b!6490750)))

(assert (=> bs!1648771 (not (= lambda!359611 lambda!359453))))

(declare-fun bs!1648772 () Bool)

(assert (= bs!1648772 (and d!2037364 b!6490649)))

(assert (=> bs!1648772 (= lambda!359611 lambda!359436)))

(declare-fun bs!1648773 () Bool)

(assert (= bs!1648773 (and d!2037364 b!6490618)))

(assert (=> bs!1648773 (not (= lambda!359611 lambda!359440))))

(declare-fun bs!1648774 () Bool)

(assert (= bs!1648774 (and d!2037364 b!6492132)))

(assert (=> bs!1648774 (not (= lambda!359611 lambda!359558))))

(declare-fun bs!1648775 () Bool)

(assert (= bs!1648775 (and d!2037364 b!6492357)))

(assert (=> bs!1648775 (not (= lambda!359611 lambda!359576))))

(declare-fun bs!1648776 () Bool)

(assert (= bs!1648776 (and d!2037364 d!2037338)))

(assert (=> bs!1648776 (not (= lambda!359611 lambda!359608))))

(declare-fun bs!1648777 () Bool)

(assert (= bs!1648777 (and d!2037364 d!2036458)))

(assert (=> bs!1648777 (not (= lambda!359611 lambda!359470))))

(assert (=> bs!1648773 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359611 lambda!359439))))

(declare-fun bs!1648778 () Bool)

(assert (= bs!1648778 (and d!2037364 d!2036606)))

(assert (=> bs!1648778 (= lambda!359611 lambda!359528)))

(declare-fun bs!1648779 () Bool)

(assert (= bs!1648779 (and d!2037364 b!6492134)))

(assert (=> bs!1648779 (not (= lambda!359611 lambda!359559))))

(assert (=> bs!1648776 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359611 lambda!359607))))

(assert (=> bs!1648762 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359611 lambda!359441))))

(declare-fun bs!1648780 () Bool)

(assert (= bs!1648780 (and d!2037364 d!2037232)))

(assert (=> bs!1648780 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359611 lambda!359583))))

(declare-fun bs!1648781 () Bool)

(assert (= bs!1648781 (and d!2037364 b!6492465)))

(assert (=> bs!1648781 (not (= lambda!359611 lambda!359579))))

(declare-fun bs!1648782 () Bool)

(assert (= bs!1648782 (and d!2037364 b!6492283)))

(assert (=> bs!1648782 (not (= lambda!359611 lambda!359565))))

(declare-fun bs!1648783 () Bool)

(assert (= bs!1648783 (and d!2037364 d!2036516)))

(assert (=> bs!1648783 (not (= lambda!359611 lambda!359498))))

(declare-fun bs!1648784 () Bool)

(assert (= bs!1648784 (and d!2037364 b!6491179)))

(assert (=> bs!1648784 (not (= lambda!359611 lambda!359500))))

(declare-fun bs!1648785 () Bool)

(assert (= bs!1648785 (and d!2037364 b!6492285)))

(assert (=> bs!1648785 (not (= lambda!359611 lambda!359566))))

(declare-fun bs!1648786 () Bool)

(assert (= bs!1648786 (and d!2037364 b!6491886)))

(assert (=> bs!1648786 (not (= lambda!359611 lambda!359550))))

(assert (=> bs!1648777 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) (Star!16369 (reg!16698 (regOne!33250 r!7292))))) (= lambda!359611 lambda!359469))))

(declare-fun bs!1648787 () Bool)

(assert (= bs!1648787 (and d!2037364 b!6492346)))

(assert (=> bs!1648787 (not (= lambda!359611 lambda!359574))))

(assert (=> bs!1648778 (not (= lambda!359611 lambda!359529))))

(assert (=> bs!1648783 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359611 lambda!359497))))

(assert (=> bs!1648772 (not (= lambda!359611 lambda!359437))))

(assert (=> bs!1648768 (not (= lambda!359611 lambda!359589))))

(declare-fun bs!1648788 () Bool)

(assert (= bs!1648788 (and d!2037364 b!6492348)))

(assert (=> bs!1648788 (not (= lambda!359611 lambda!359575))))

(declare-fun bs!1648789 () Bool)

(assert (= bs!1648789 (and d!2037364 b!6490932)))

(assert (=> bs!1648789 (not (= lambda!359611 lambda!359462))))

(assert (=> bs!1648767 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359611 lambda!359477))))

(declare-fun bs!1648790 () Bool)

(assert (= bs!1648790 (and d!2037364 b!6490930)))

(assert (=> bs!1648790 (not (= lambda!359611 lambda!359459))))

(declare-fun bs!1648791 () Bool)

(assert (= bs!1648791 (and d!2037364 b!6491181)))

(assert (=> bs!1648791 (not (= lambda!359611 lambda!359501))))

(declare-fun bs!1648792 () Bool)

(assert (= bs!1648792 (and d!2037364 b!6490748)))

(assert (=> bs!1648792 (not (= lambda!359611 lambda!359452))))

(declare-fun bs!1648793 () Bool)

(assert (= bs!1648793 (and d!2037364 d!2037138)))

(assert (=> bs!1648793 (= lambda!359611 lambda!359580)))

(declare-fun bs!1648794 () Bool)

(assert (= bs!1648794 (and d!2037364 d!2036524)))

(assert (=> bs!1648794 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359611 lambda!359499))))

(declare-fun bs!1648795 () Bool)

(assert (= bs!1648795 (and d!2037364 d!2037036)))

(assert (=> bs!1648795 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359611 lambda!359569))))

(assert (=> d!2037364 true))

(assert (=> d!2037364 true))

(assert (=> d!2037364 true))

(declare-fun lambda!359612 () Int)

(assert (=> bs!1648762 (not (= lambda!359612 lambda!359442))))

(assert (=> bs!1648763 (= (and (= (regOne!33250 r!7292) (regOne!33250 (regTwo!33251 r!7292))) (= (regTwo!33250 r!7292) (regTwo!33250 (regTwo!33251 r!7292)))) (= lambda!359612 lambda!359577))))

(assert (=> bs!1648764 (not (= lambda!359612 lambda!359601))))

(assert (=> bs!1648765 (not (= lambda!359612 lambda!359524))))

(assert (=> bs!1648764 (not (= lambda!359612 lambda!359602))))

(assert (=> bs!1648767 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359612 lambda!359480))))

(assert (=> bs!1648762 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359612 lambda!359443))))

(assert (=> bs!1648768 (not (= lambda!359612 lambda!359588))))

(assert (=> bs!1648769 (not (= lambda!359612 lambda!359485))))

(assert (=> bs!1648770 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (regOne!33250 (regOne!33251 lt!2389631))) (= (regTwo!33250 r!7292) (regTwo!33250 (regOne!33251 lt!2389631)))) (= lambda!359612 lambda!359551))))

(assert (=> bs!1648771 (= lambda!359612 lambda!359453)))

(assert (=> bs!1648772 (not (= lambda!359612 lambda!359436))))

(assert (=> bs!1648773 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359612 lambda!359440))))

(assert (=> bs!1648774 (not (= lambda!359612 lambda!359558))))

(assert (=> bs!1648775 (not (= lambda!359612 lambda!359576))))

(assert (=> bs!1648776 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359612 lambda!359608))))

(assert (=> bs!1648777 (not (= lambda!359612 lambda!359470))))

(assert (=> bs!1648773 (not (= lambda!359612 lambda!359439))))

(assert (=> bs!1648778 (not (= lambda!359612 lambda!359528))))

(assert (=> bs!1648779 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (regOne!33250 (regTwo!33251 lt!2389631))) (= (regTwo!33250 r!7292) (regTwo!33250 (regTwo!33251 lt!2389631)))) (= lambda!359612 lambda!359559))))

(assert (=> bs!1648776 (not (= lambda!359612 lambda!359607))))

(assert (=> bs!1648762 (not (= lambda!359612 lambda!359441))))

(declare-fun bs!1648796 () Bool)

(assert (= bs!1648796 d!2037364))

(assert (=> bs!1648796 (not (= lambda!359612 lambda!359611))))

(assert (=> bs!1648766 (not (= lambda!359612 lambda!359578))))

(assert (=> bs!1648780 (not (= lambda!359612 lambda!359583))))

(assert (=> bs!1648781 (= (and (= (regOne!33250 r!7292) (regOne!33250 (regOne!33251 lt!2389659))) (= (regTwo!33250 r!7292) (regTwo!33250 (regOne!33251 lt!2389659)))) (= lambda!359612 lambda!359579))))

(assert (=> bs!1648782 (not (= lambda!359612 lambda!359565))))

(assert (=> bs!1648783 (= (= (regOne!33250 r!7292) lt!2389631) (= lambda!359612 lambda!359498))))

(assert (=> bs!1648784 (not (= lambda!359612 lambda!359500))))

(assert (=> bs!1648785 (= (and (= (regOne!33250 r!7292) (regOne!33250 (regOne!33251 r!7292))) (= (regTwo!33250 r!7292) (regTwo!33250 (regOne!33251 r!7292)))) (= lambda!359612 lambda!359566))))

(assert (=> bs!1648786 (not (= lambda!359612 lambda!359550))))

(assert (=> bs!1648777 (not (= lambda!359612 lambda!359469))))

(assert (=> bs!1648787 (not (= lambda!359612 lambda!359574))))

(assert (=> bs!1648778 (= lambda!359612 lambda!359529)))

(assert (=> bs!1648783 (not (= lambda!359612 lambda!359497))))

(assert (=> bs!1648772 (= lambda!359612 lambda!359437)))

(assert (=> bs!1648768 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (reg!16698 (regOne!33250 r!7292))) (= (regTwo!33250 r!7292) lt!2389631)) (= lambda!359612 lambda!359589))))

(assert (=> bs!1648788 (= (and (= (regOne!33250 r!7292) (regOne!33250 (regTwo!33251 lt!2389659))) (= (regTwo!33250 r!7292) (regTwo!33250 (regTwo!33251 lt!2389659)))) (= lambda!359612 lambda!359575))))

(assert (=> bs!1648789 (= (and (= s!2326 (_1!36651 lt!2389655)) (= (regOne!33250 r!7292) (regOne!33250 lt!2389631)) (= (regTwo!33250 r!7292) (regTwo!33250 lt!2389631))) (= lambda!359612 lambda!359462))))

(assert (=> bs!1648767 (not (= lambda!359612 lambda!359477))))

(assert (=> bs!1648790 (not (= lambda!359612 lambda!359459))))

(assert (=> bs!1648791 (= (and (= (regOne!33250 r!7292) (regOne!33250 lt!2389659)) (= (regTwo!33250 r!7292) (regTwo!33250 lt!2389659))) (= lambda!359612 lambda!359501))))

(assert (=> bs!1648792 (not (= lambda!359612 lambda!359452))))

(assert (=> bs!1648793 (not (= lambda!359612 lambda!359580))))

(assert (=> bs!1648794 (not (= lambda!359612 lambda!359499))))

(assert (=> bs!1648795 (not (= lambda!359612 lambda!359569))))

(assert (=> d!2037364 true))

(assert (=> d!2037364 true))

(assert (=> d!2037364 true))

(assert (=> d!2037364 (= (Exists!3439 lambda!359611) (Exists!3439 lambda!359612))))

(assert (=> d!2037364 true))

(declare-fun _$90!2354 () Unit!158807)

(assert (=> d!2037364 (= (choose!48181 (regOne!33250 r!7292) (regTwo!33250 r!7292) s!2326) _$90!2354)))

(declare-fun m!7281734 () Bool)

(assert (=> bs!1648796 m!7281734))

(declare-fun m!7281736 () Bool)

(assert (=> bs!1648796 m!7281736))

(assert (=> d!2036606 d!2037364))

(assert (=> d!2036606 d!2037134))

(assert (=> bm!561980 d!2037348))

(assert (=> b!6491539 d!2036850))

(assert (=> b!6491203 d!2037150))

(assert (=> b!6491203 d!2036984))

(assert (=> b!6491557 d!2036948))

(assert (=> b!6491557 d!2036950))

(assert (=> d!2036498 d!2036886))

(assert (=> d!2036588 d!2037068))

(declare-fun b!6492910 () Bool)

(declare-fun res!2666618 () Bool)

(declare-fun e!3934806 () Bool)

(assert (=> b!6492910 (=> res!2666618 e!3934806)))

(declare-fun e!3934810 () Bool)

(assert (=> b!6492910 (= res!2666618 e!3934810)))

(declare-fun res!2666615 () Bool)

(assert (=> b!6492910 (=> (not res!2666615) (not e!3934810))))

(declare-fun lt!2389968 () Bool)

(assert (=> b!6492910 (= res!2666615 lt!2389968)))

(declare-fun b!6492911 () Bool)

(declare-fun res!2666616 () Bool)

(assert (=> b!6492911 (=> (not res!2666616) (not e!3934810))))

(assert (=> b!6492911 (= res!2666616 (isEmpty!37477 (tail!12296 Nil!65282)))))

(declare-fun b!6492913 () Bool)

(declare-fun e!3934808 () Bool)

(assert (=> b!6492913 (= e!3934806 e!3934808)))

(declare-fun res!2666619 () Bool)

(assert (=> b!6492913 (=> (not res!2666619) (not e!3934808))))

(assert (=> b!6492913 (= res!2666619 (not lt!2389968))))

(declare-fun bm!562214 () Bool)

(declare-fun call!562219 () Bool)

(assert (=> bm!562214 (= call!562219 (isEmpty!37477 Nil!65282))))

(declare-fun b!6492914 () Bool)

(declare-fun e!3934809 () Bool)

(assert (=> b!6492914 (= e!3934809 (not (= (head!13211 Nil!65282) (c!1189393 (regOne!33250 r!7292)))))))

(declare-fun b!6492915 () Bool)

(declare-fun e!3934812 () Bool)

(assert (=> b!6492915 (= e!3934812 (matchR!8552 (derivativeStep!5064 (regOne!33250 r!7292) (head!13211 Nil!65282)) (tail!12296 Nil!65282)))))

(declare-fun b!6492916 () Bool)

(declare-fun res!2666620 () Bool)

(assert (=> b!6492916 (=> res!2666620 e!3934809)))

(assert (=> b!6492916 (= res!2666620 (not (isEmpty!37477 (tail!12296 Nil!65282))))))

(declare-fun b!6492917 () Bool)

(declare-fun res!2666617 () Bool)

(assert (=> b!6492917 (=> res!2666617 e!3934806)))

(assert (=> b!6492917 (= res!2666617 (not ((_ is ElementMatch!16369) (regOne!33250 r!7292))))))

(declare-fun e!3934807 () Bool)

(assert (=> b!6492917 (= e!3934807 e!3934806)))

(declare-fun b!6492918 () Bool)

(declare-fun e!3934811 () Bool)

(assert (=> b!6492918 (= e!3934811 (= lt!2389968 call!562219))))

(declare-fun b!6492919 () Bool)

(assert (=> b!6492919 (= e!3934808 e!3934809)))

(declare-fun res!2666614 () Bool)

(assert (=> b!6492919 (=> res!2666614 e!3934809)))

(assert (=> b!6492919 (= res!2666614 call!562219)))

(declare-fun b!6492920 () Bool)

(assert (=> b!6492920 (= e!3934812 (nullable!6362 (regOne!33250 r!7292)))))

(declare-fun b!6492921 () Bool)

(assert (=> b!6492921 (= e!3934810 (= (head!13211 Nil!65282) (c!1189393 (regOne!33250 r!7292))))))

(declare-fun d!2037366 () Bool)

(assert (=> d!2037366 e!3934811))

(declare-fun c!1190037 () Bool)

(assert (=> d!2037366 (= c!1190037 ((_ is EmptyExpr!16369) (regOne!33250 r!7292)))))

(assert (=> d!2037366 (= lt!2389968 e!3934812)))

(declare-fun c!1190036 () Bool)

(assert (=> d!2037366 (= c!1190036 (isEmpty!37477 Nil!65282))))

(assert (=> d!2037366 (validRegex!8105 (regOne!33250 r!7292))))

(assert (=> d!2037366 (= (matchR!8552 (regOne!33250 r!7292) Nil!65282) lt!2389968)))

(declare-fun b!6492912 () Bool)

(assert (=> b!6492912 (= e!3934811 e!3934807)))

(declare-fun c!1190035 () Bool)

(assert (=> b!6492912 (= c!1190035 ((_ is EmptyLang!16369) (regOne!33250 r!7292)))))

(declare-fun b!6492922 () Bool)

(assert (=> b!6492922 (= e!3934807 (not lt!2389968))))

(declare-fun b!6492923 () Bool)

(declare-fun res!2666613 () Bool)

(assert (=> b!6492923 (=> (not res!2666613) (not e!3934810))))

(assert (=> b!6492923 (= res!2666613 (not call!562219))))

(assert (= (and d!2037366 c!1190036) b!6492920))

(assert (= (and d!2037366 (not c!1190036)) b!6492915))

(assert (= (and d!2037366 c!1190037) b!6492918))

(assert (= (and d!2037366 (not c!1190037)) b!6492912))

(assert (= (and b!6492912 c!1190035) b!6492922))

(assert (= (and b!6492912 (not c!1190035)) b!6492917))

(assert (= (and b!6492917 (not res!2666617)) b!6492910))

(assert (= (and b!6492910 res!2666615) b!6492923))

(assert (= (and b!6492923 res!2666613) b!6492911))

(assert (= (and b!6492911 res!2666616) b!6492921))

(assert (= (and b!6492910 (not res!2666618)) b!6492913))

(assert (= (and b!6492913 res!2666619) b!6492919))

(assert (= (and b!6492919 (not res!2666614)) b!6492916))

(assert (= (and b!6492916 (not res!2666620)) b!6492914))

(assert (= (or b!6492918 b!6492919 b!6492923) bm!562214))

(assert (=> b!6492911 m!7281004))

(assert (=> b!6492911 m!7281004))

(assert (=> b!6492911 m!7281006))

(assert (=> d!2037366 m!7281008))

(assert (=> d!2037366 m!7279900))

(assert (=> b!6492916 m!7281004))

(assert (=> b!6492916 m!7281004))

(assert (=> b!6492916 m!7281006))

(assert (=> b!6492914 m!7281010))

(assert (=> b!6492920 m!7281092))

(assert (=> bm!562214 m!7281008))

(assert (=> b!6492921 m!7281010))

(assert (=> b!6492915 m!7281010))

(assert (=> b!6492915 m!7281010))

(declare-fun m!7281738 () Bool)

(assert (=> b!6492915 m!7281738))

(assert (=> b!6492915 m!7281004))

(assert (=> b!6492915 m!7281738))

(assert (=> b!6492915 m!7281004))

(declare-fun m!7281740 () Bool)

(assert (=> b!6492915 m!7281740))

(assert (=> d!2036588 d!2037366))

(assert (=> d!2036588 d!2037134))

(declare-fun b!6492924 () Bool)

(declare-fun res!2666626 () Bool)

(declare-fun e!3934813 () Bool)

(assert (=> b!6492924 (=> res!2666626 e!3934813)))

(declare-fun e!3934817 () Bool)

(assert (=> b!6492924 (= res!2666626 e!3934817)))

(declare-fun res!2666623 () Bool)

(assert (=> b!6492924 (=> (not res!2666623) (not e!3934817))))

(declare-fun lt!2389969 () Bool)

(assert (=> b!6492924 (= res!2666623 lt!2389969)))

(declare-fun b!6492925 () Bool)

(declare-fun res!2666624 () Bool)

(assert (=> b!6492925 (=> (not res!2666624) (not e!3934817))))

(assert (=> b!6492925 (= res!2666624 (isEmpty!37477 (tail!12296 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655)))))))

(declare-fun b!6492927 () Bool)

(declare-fun e!3934815 () Bool)

(assert (=> b!6492927 (= e!3934813 e!3934815)))

(declare-fun res!2666627 () Bool)

(assert (=> b!6492927 (=> (not res!2666627) (not e!3934815))))

(assert (=> b!6492927 (= res!2666627 (not lt!2389969))))

(declare-fun bm!562215 () Bool)

(declare-fun call!562220 () Bool)

(assert (=> bm!562215 (= call!562220 (isEmpty!37477 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655))))))

(declare-fun e!3934816 () Bool)

(declare-fun b!6492928 () Bool)

(assert (=> b!6492928 (= e!3934816 (not (= (head!13211 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655))) (c!1189393 (Concat!25214 lt!2389631 (regTwo!33250 r!7292))))))))

(declare-fun b!6492929 () Bool)

(declare-fun e!3934819 () Bool)

(assert (=> b!6492929 (= e!3934819 (matchR!8552 (derivativeStep!5064 (Concat!25214 lt!2389631 (regTwo!33250 r!7292)) (head!13211 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655)))) (tail!12296 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655)))))))

(declare-fun b!6492930 () Bool)

(declare-fun res!2666628 () Bool)

(assert (=> b!6492930 (=> res!2666628 e!3934816)))

(assert (=> b!6492930 (= res!2666628 (not (isEmpty!37477 (tail!12296 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655))))))))

(declare-fun b!6492931 () Bool)

(declare-fun res!2666625 () Bool)

(assert (=> b!6492931 (=> res!2666625 e!3934813)))

(assert (=> b!6492931 (= res!2666625 (not ((_ is ElementMatch!16369) (Concat!25214 lt!2389631 (regTwo!33250 r!7292)))))))

(declare-fun e!3934814 () Bool)

(assert (=> b!6492931 (= e!3934814 e!3934813)))

(declare-fun b!6492932 () Bool)

(declare-fun e!3934818 () Bool)

(assert (=> b!6492932 (= e!3934818 (= lt!2389969 call!562220))))

(declare-fun b!6492933 () Bool)

(assert (=> b!6492933 (= e!3934815 e!3934816)))

(declare-fun res!2666622 () Bool)

(assert (=> b!6492933 (=> res!2666622 e!3934816)))

(assert (=> b!6492933 (= res!2666622 call!562220)))

(declare-fun b!6492934 () Bool)

(assert (=> b!6492934 (= e!3934819 (nullable!6362 (Concat!25214 lt!2389631 (regTwo!33250 r!7292))))))

(declare-fun b!6492935 () Bool)

(assert (=> b!6492935 (= e!3934817 (= (head!13211 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655))) (c!1189393 (Concat!25214 lt!2389631 (regTwo!33250 r!7292)))))))

(declare-fun d!2037368 () Bool)

(assert (=> d!2037368 e!3934818))

(declare-fun c!1190040 () Bool)

(assert (=> d!2037368 (= c!1190040 ((_ is EmptyExpr!16369) (Concat!25214 lt!2389631 (regTwo!33250 r!7292))))))

(assert (=> d!2037368 (= lt!2389969 e!3934819)))

(declare-fun c!1190039 () Bool)

(assert (=> d!2037368 (= c!1190039 (isEmpty!37477 (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655))))))

(assert (=> d!2037368 (validRegex!8105 (Concat!25214 lt!2389631 (regTwo!33250 r!7292)))))

(assert (=> d!2037368 (= (matchR!8552 (Concat!25214 lt!2389631 (regTwo!33250 r!7292)) (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655))) lt!2389969)))

(declare-fun b!6492926 () Bool)

(assert (=> b!6492926 (= e!3934818 e!3934814)))

(declare-fun c!1190038 () Bool)

(assert (=> b!6492926 (= c!1190038 ((_ is EmptyLang!16369) (Concat!25214 lt!2389631 (regTwo!33250 r!7292))))))

(declare-fun b!6492936 () Bool)

(assert (=> b!6492936 (= e!3934814 (not lt!2389969))))

(declare-fun b!6492937 () Bool)

(declare-fun res!2666621 () Bool)

(assert (=> b!6492937 (=> (not res!2666621) (not e!3934817))))

(assert (=> b!6492937 (= res!2666621 (not call!562220))))

(assert (= (and d!2037368 c!1190039) b!6492934))

(assert (= (and d!2037368 (not c!1190039)) b!6492929))

(assert (= (and d!2037368 c!1190040) b!6492932))

(assert (= (and d!2037368 (not c!1190040)) b!6492926))

(assert (= (and b!6492926 c!1190038) b!6492936))

(assert (= (and b!6492926 (not c!1190038)) b!6492931))

(assert (= (and b!6492931 (not res!2666625)) b!6492924))

(assert (= (and b!6492924 res!2666623) b!6492937))

(assert (= (and b!6492937 res!2666621) b!6492925))

(assert (= (and b!6492925 res!2666624) b!6492935))

(assert (= (and b!6492924 (not res!2666626)) b!6492927))

(assert (= (and b!6492927 res!2666627) b!6492933))

(assert (= (and b!6492933 (not res!2666622)) b!6492930))

(assert (= (and b!6492930 (not res!2666628)) b!6492928))

(assert (= (or b!6492932 b!6492933 b!6492937) bm!562215))

(assert (=> b!6492925 m!7279222))

(declare-fun m!7281742 () Bool)

(assert (=> b!6492925 m!7281742))

(assert (=> b!6492925 m!7281742))

(declare-fun m!7281744 () Bool)

(assert (=> b!6492925 m!7281744))

(assert (=> d!2037368 m!7279222))

(declare-fun m!7281746 () Bool)

(assert (=> d!2037368 m!7281746))

(declare-fun m!7281748 () Bool)

(assert (=> d!2037368 m!7281748))

(assert (=> b!6492930 m!7279222))

(assert (=> b!6492930 m!7281742))

(assert (=> b!6492930 m!7281742))

(assert (=> b!6492930 m!7281744))

(assert (=> b!6492928 m!7279222))

(declare-fun m!7281750 () Bool)

(assert (=> b!6492928 m!7281750))

(declare-fun m!7281752 () Bool)

(assert (=> b!6492934 m!7281752))

(assert (=> bm!562215 m!7279222))

(assert (=> bm!562215 m!7281746))

(assert (=> b!6492935 m!7279222))

(assert (=> b!6492935 m!7281750))

(assert (=> b!6492929 m!7279222))

(assert (=> b!6492929 m!7281750))

(assert (=> b!6492929 m!7281750))

(declare-fun m!7281754 () Bool)

(assert (=> b!6492929 m!7281754))

(assert (=> b!6492929 m!7279222))

(assert (=> b!6492929 m!7281742))

(assert (=> b!6492929 m!7281754))

(assert (=> b!6492929 m!7281742))

(declare-fun m!7281756 () Bool)

(assert (=> b!6492929 m!7281756))

(assert (=> d!2036672 d!2037368))

(assert (=> d!2036672 d!2036682))

(declare-fun d!2037370 () Bool)

(assert (=> d!2037370 (matchR!8552 (Concat!25214 lt!2389631 (regTwo!33250 r!7292)) (++!14448 (_2!36651 lt!2389638) (_2!36651 lt!2389655)))))

(assert (=> d!2037370 true))

(declare-fun _$119!486 () Unit!158807)

(assert (=> d!2037370 (= (choose!48196 lt!2389631 (regTwo!33250 r!7292) (_2!36651 lt!2389638) (_2!36651 lt!2389655)) _$119!486)))

(declare-fun bs!1648797 () Bool)

(assert (= bs!1648797 d!2037370))

(assert (=> bs!1648797 m!7279222))

(assert (=> bs!1648797 m!7279222))

(assert (=> bs!1648797 m!7280186))

(assert (=> d!2036672 d!2037370))

(assert (=> d!2036672 d!2037038))

(assert (=> b!6491148 d!2036940))

(assert (=> b!6491148 d!2036942))

(assert (=> b!6491322 d!2036864))

(declare-fun d!2037372 () Bool)

(assert (=> d!2037372 (= (isConcat!1284 lt!2389773) ((_ is Concat!25214) lt!2389773))))

(assert (=> b!6491384 d!2037372))

(assert (=> d!2036690 d!2037028))

(declare-fun d!2037374 () Bool)

(declare-fun c!1190043 () Bool)

(assert (=> d!2037374 (= c!1190043 ((_ is Nil!65283) lt!2389803))))

(declare-fun e!3934822 () (InoxSet Regex!16369))

(assert (=> d!2037374 (= (content!12445 lt!2389803) e!3934822)))

(declare-fun b!6492942 () Bool)

(assert (=> b!6492942 (= e!3934822 ((as const (Array Regex!16369 Bool)) false))))

(declare-fun b!6492943 () Bool)

(assert (=> b!6492943 (= e!3934822 ((_ map or) (store ((as const (Array Regex!16369 Bool)) false) (h!71731 lt!2389803) true) (content!12445 (t!379035 lt!2389803))))))

(assert (= (and d!2037374 c!1190043) b!6492942))

(assert (= (and d!2037374 (not c!1190043)) b!6492943))

(declare-fun m!7281758 () Bool)

(assert (=> b!6492943 m!7281758))

(declare-fun m!7281760 () Bool)

(assert (=> b!6492943 m!7281760))

(assert (=> d!2036624 d!2037374))

(declare-fun d!2037376 () Bool)

(declare-fun c!1190044 () Bool)

(assert (=> d!2037376 (= c!1190044 ((_ is Nil!65283) lt!2389623))))

(declare-fun e!3934823 () (InoxSet Regex!16369))

(assert (=> d!2037376 (= (content!12445 lt!2389623) e!3934823)))

(declare-fun b!6492944 () Bool)

(assert (=> b!6492944 (= e!3934823 ((as const (Array Regex!16369 Bool)) false))))

(declare-fun b!6492945 () Bool)

(assert (=> b!6492945 (= e!3934823 ((_ map or) (store ((as const (Array Regex!16369 Bool)) false) (h!71731 lt!2389623) true) (content!12445 (t!379035 lt!2389623))))))

(assert (= (and d!2037376 c!1190044) b!6492944))

(assert (= (and d!2037376 (not c!1190044)) b!6492945))

(declare-fun m!7281762 () Bool)

(assert (=> b!6492945 m!7281762))

(assert (=> b!6492945 m!7281166))

(assert (=> d!2036624 d!2037376))

(declare-fun d!2037378 () Bool)

(declare-fun c!1190045 () Bool)

(assert (=> d!2037378 (= c!1190045 ((_ is Nil!65283) lt!2389636))))

(declare-fun e!3934824 () (InoxSet Regex!16369))

(assert (=> d!2037378 (= (content!12445 lt!2389636) e!3934824)))

(declare-fun b!6492946 () Bool)

(assert (=> b!6492946 (= e!3934824 ((as const (Array Regex!16369 Bool)) false))))

(declare-fun b!6492947 () Bool)

(assert (=> b!6492947 (= e!3934824 ((_ map or) (store ((as const (Array Regex!16369 Bool)) false) (h!71731 lt!2389636) true) (content!12445 (t!379035 lt!2389636))))))

(assert (= (and d!2037378 c!1190045) b!6492946))

(assert (= (and d!2037378 (not c!1190045)) b!6492947))

(declare-fun m!7281764 () Bool)

(assert (=> b!6492947 m!7281764))

(declare-fun m!7281766 () Bool)

(assert (=> b!6492947 m!7281766))

(assert (=> d!2036624 d!2037378))

(declare-fun b!6492949 () Bool)

(declare-fun e!3934825 () Bool)

(declare-fun tp!1796834 () Bool)

(declare-fun tp!1796835 () Bool)

(assert (=> b!6492949 (= e!3934825 (and tp!1796834 tp!1796835))))

(declare-fun b!6492948 () Bool)

(assert (=> b!6492948 (= e!3934825 tp_is_empty!41991)))

(declare-fun b!6492951 () Bool)

(declare-fun tp!1796833 () Bool)

(declare-fun tp!1796832 () Bool)

(assert (=> b!6492951 (= e!3934825 (and tp!1796833 tp!1796832))))

(assert (=> b!6491691 (= tp!1796735 e!3934825)))

(declare-fun b!6492950 () Bool)

(declare-fun tp!1796831 () Bool)

(assert (=> b!6492950 (= e!3934825 tp!1796831)))

(assert (= (and b!6491691 ((_ is ElementMatch!16369) (regOne!33250 (reg!16698 r!7292)))) b!6492948))

(assert (= (and b!6491691 ((_ is Concat!25214) (regOne!33250 (reg!16698 r!7292)))) b!6492949))

(assert (= (and b!6491691 ((_ is Star!16369) (regOne!33250 (reg!16698 r!7292)))) b!6492950))

(assert (= (and b!6491691 ((_ is Union!16369) (regOne!33250 (reg!16698 r!7292)))) b!6492951))

(declare-fun b!6492953 () Bool)

(declare-fun e!3934826 () Bool)

(declare-fun tp!1796839 () Bool)

(declare-fun tp!1796840 () Bool)

(assert (=> b!6492953 (= e!3934826 (and tp!1796839 tp!1796840))))

(declare-fun b!6492952 () Bool)

(assert (=> b!6492952 (= e!3934826 tp_is_empty!41991)))

(declare-fun b!6492955 () Bool)

(declare-fun tp!1796838 () Bool)

(declare-fun tp!1796837 () Bool)

(assert (=> b!6492955 (= e!3934826 (and tp!1796838 tp!1796837))))

(assert (=> b!6491691 (= tp!1796736 e!3934826)))

(declare-fun b!6492954 () Bool)

(declare-fun tp!1796836 () Bool)

(assert (=> b!6492954 (= e!3934826 tp!1796836)))

(assert (= (and b!6491691 ((_ is ElementMatch!16369) (regTwo!33250 (reg!16698 r!7292)))) b!6492952))

(assert (= (and b!6491691 ((_ is Concat!25214) (regTwo!33250 (reg!16698 r!7292)))) b!6492953))

(assert (= (and b!6491691 ((_ is Star!16369) (regTwo!33250 (reg!16698 r!7292)))) b!6492954))

(assert (= (and b!6491691 ((_ is Union!16369) (regTwo!33250 (reg!16698 r!7292)))) b!6492955))

(declare-fun condSetEmpty!44232 () Bool)

(assert (=> setNonEmpty!44222 (= condSetEmpty!44232 (= setRest!44222 ((as const (Array Context!11506 Bool)) false)))))

(declare-fun setRes!44232 () Bool)

(assert (=> setNonEmpty!44222 (= tp!1796701 setRes!44232)))

(declare-fun setIsEmpty!44232 () Bool)

(assert (=> setIsEmpty!44232 setRes!44232))

(declare-fun tp!1796841 () Bool)

(declare-fun setNonEmpty!44232 () Bool)

(declare-fun setElem!44232 () Context!11506)

(declare-fun e!3934827 () Bool)

(assert (=> setNonEmpty!44232 (= setRes!44232 (and tp!1796841 (inv!84169 setElem!44232) e!3934827))))

(declare-fun setRest!44232 () (InoxSet Context!11506))

(assert (=> setNonEmpty!44232 (= setRest!44222 ((_ map or) (store ((as const (Array Context!11506 Bool)) false) setElem!44232 true) setRest!44232))))

(declare-fun b!6492956 () Bool)

(declare-fun tp!1796842 () Bool)

(assert (=> b!6492956 (= e!3934827 tp!1796842)))

(assert (= (and setNonEmpty!44222 condSetEmpty!44232) setIsEmpty!44232))

(assert (= (and setNonEmpty!44222 (not condSetEmpty!44232)) setNonEmpty!44232))

(assert (= setNonEmpty!44232 b!6492956))

(declare-fun m!7281768 () Bool)

(assert (=> setNonEmpty!44232 m!7281768))

(declare-fun b!6492958 () Bool)

(declare-fun e!3934828 () Bool)

(declare-fun tp!1796846 () Bool)

(declare-fun tp!1796847 () Bool)

(assert (=> b!6492958 (= e!3934828 (and tp!1796846 tp!1796847))))

(declare-fun b!6492957 () Bool)

(assert (=> b!6492957 (= e!3934828 tp_is_empty!41991)))

(declare-fun b!6492960 () Bool)

(declare-fun tp!1796845 () Bool)

(declare-fun tp!1796844 () Bool)

(assert (=> b!6492960 (= e!3934828 (and tp!1796845 tp!1796844))))

(assert (=> b!6491664 (= tp!1796707 e!3934828)))

(declare-fun b!6492959 () Bool)

(declare-fun tp!1796843 () Bool)

(assert (=> b!6492959 (= e!3934828 tp!1796843)))

(assert (= (and b!6491664 ((_ is ElementMatch!16369) (h!71731 (exprs!6253 setElem!44219)))) b!6492957))

(assert (= (and b!6491664 ((_ is Concat!25214) (h!71731 (exprs!6253 setElem!44219)))) b!6492958))

(assert (= (and b!6491664 ((_ is Star!16369) (h!71731 (exprs!6253 setElem!44219)))) b!6492959))

(assert (= (and b!6491664 ((_ is Union!16369) (h!71731 (exprs!6253 setElem!44219)))) b!6492960))

(declare-fun b!6492961 () Bool)

(declare-fun e!3934829 () Bool)

(declare-fun tp!1796848 () Bool)

(declare-fun tp!1796849 () Bool)

(assert (=> b!6492961 (= e!3934829 (and tp!1796848 tp!1796849))))

(assert (=> b!6491664 (= tp!1796708 e!3934829)))

(assert (= (and b!6491664 ((_ is Cons!65283) (t!379035 (exprs!6253 setElem!44219)))) b!6492961))

(declare-fun b!6492963 () Bool)

(declare-fun e!3934830 () Bool)

(declare-fun tp!1796853 () Bool)

(declare-fun tp!1796854 () Bool)

(assert (=> b!6492963 (= e!3934830 (and tp!1796853 tp!1796854))))

(declare-fun b!6492962 () Bool)

(assert (=> b!6492962 (= e!3934830 tp_is_empty!41991)))

(declare-fun b!6492965 () Bool)

(declare-fun tp!1796852 () Bool)

(declare-fun tp!1796851 () Bool)

(assert (=> b!6492965 (= e!3934830 (and tp!1796852 tp!1796851))))

(assert (=> b!6491692 (= tp!1796732 e!3934830)))

(declare-fun b!6492964 () Bool)

(declare-fun tp!1796850 () Bool)

(assert (=> b!6492964 (= e!3934830 tp!1796850)))

(assert (= (and b!6491692 ((_ is ElementMatch!16369) (reg!16698 (reg!16698 r!7292)))) b!6492962))

(assert (= (and b!6491692 ((_ is Concat!25214) (reg!16698 (reg!16698 r!7292)))) b!6492963))

(assert (= (and b!6491692 ((_ is Star!16369) (reg!16698 (reg!16698 r!7292)))) b!6492964))

(assert (= (and b!6491692 ((_ is Union!16369) (reg!16698 (reg!16698 r!7292)))) b!6492965))

(declare-fun b!6492966 () Bool)

(declare-fun e!3934831 () Bool)

(declare-fun tp!1796855 () Bool)

(declare-fun tp!1796856 () Bool)

(assert (=> b!6492966 (= e!3934831 (and tp!1796855 tp!1796856))))

(assert (=> b!6491659 (= tp!1796702 e!3934831)))

(assert (= (and b!6491659 ((_ is Cons!65283) (exprs!6253 setElem!44222))) b!6492966))

(declare-fun b!6492968 () Bool)

(declare-fun e!3934832 () Bool)

(declare-fun tp!1796860 () Bool)

(declare-fun tp!1796861 () Bool)

(assert (=> b!6492968 (= e!3934832 (and tp!1796860 tp!1796861))))

(declare-fun b!6492967 () Bool)

(assert (=> b!6492967 (= e!3934832 tp_is_empty!41991)))

(declare-fun b!6492970 () Bool)

(declare-fun tp!1796859 () Bool)

(declare-fun tp!1796858 () Bool)

(assert (=> b!6492970 (= e!3934832 (and tp!1796859 tp!1796858))))

(assert (=> b!6491693 (= tp!1796734 e!3934832)))

(declare-fun b!6492969 () Bool)

(declare-fun tp!1796857 () Bool)

(assert (=> b!6492969 (= e!3934832 tp!1796857)))

(assert (= (and b!6491693 ((_ is ElementMatch!16369) (regOne!33251 (reg!16698 r!7292)))) b!6492967))

(assert (= (and b!6491693 ((_ is Concat!25214) (regOne!33251 (reg!16698 r!7292)))) b!6492968))

(assert (= (and b!6491693 ((_ is Star!16369) (regOne!33251 (reg!16698 r!7292)))) b!6492969))

(assert (= (and b!6491693 ((_ is Union!16369) (regOne!33251 (reg!16698 r!7292)))) b!6492970))

(declare-fun b!6492972 () Bool)

(declare-fun e!3934833 () Bool)

(declare-fun tp!1796865 () Bool)

(declare-fun tp!1796866 () Bool)

(assert (=> b!6492972 (= e!3934833 (and tp!1796865 tp!1796866))))

(declare-fun b!6492971 () Bool)

(assert (=> b!6492971 (= e!3934833 tp_is_empty!41991)))

(declare-fun b!6492974 () Bool)

(declare-fun tp!1796864 () Bool)

(declare-fun tp!1796863 () Bool)

(assert (=> b!6492974 (= e!3934833 (and tp!1796864 tp!1796863))))

(assert (=> b!6491693 (= tp!1796733 e!3934833)))

(declare-fun b!6492973 () Bool)

(declare-fun tp!1796862 () Bool)

(assert (=> b!6492973 (= e!3934833 tp!1796862)))

(assert (= (and b!6491693 ((_ is ElementMatch!16369) (regTwo!33251 (reg!16698 r!7292)))) b!6492971))

(assert (= (and b!6491693 ((_ is Concat!25214) (regTwo!33251 (reg!16698 r!7292)))) b!6492972))

(assert (= (and b!6491693 ((_ is Star!16369) (regTwo!33251 (reg!16698 r!7292)))) b!6492973))

(assert (= (and b!6491693 ((_ is Union!16369) (regTwo!33251 (reg!16698 r!7292)))) b!6492974))

(declare-fun b!6492976 () Bool)

(declare-fun e!3934834 () Bool)

(declare-fun tp!1796870 () Bool)

(declare-fun tp!1796871 () Bool)

(assert (=> b!6492976 (= e!3934834 (and tp!1796870 tp!1796871))))

(declare-fun b!6492975 () Bool)

(assert (=> b!6492975 (= e!3934834 tp_is_empty!41991)))

(declare-fun b!6492978 () Bool)

(declare-fun tp!1796869 () Bool)

(declare-fun tp!1796868 () Bool)

(assert (=> b!6492978 (= e!3934834 (and tp!1796869 tp!1796868))))

(assert (=> b!6491709 (= tp!1796751 e!3934834)))

(declare-fun b!6492977 () Bool)

(declare-fun tp!1796867 () Bool)

(assert (=> b!6492977 (= e!3934834 tp!1796867)))

(assert (= (and b!6491709 ((_ is ElementMatch!16369) (regOne!33250 (regTwo!33251 r!7292)))) b!6492975))

(assert (= (and b!6491709 ((_ is Concat!25214) (regOne!33250 (regTwo!33251 r!7292)))) b!6492976))

(assert (= (and b!6491709 ((_ is Star!16369) (regOne!33250 (regTwo!33251 r!7292)))) b!6492977))

(assert (= (and b!6491709 ((_ is Union!16369) (regOne!33250 (regTwo!33251 r!7292)))) b!6492978))

(declare-fun b!6492980 () Bool)

(declare-fun e!3934835 () Bool)

(declare-fun tp!1796875 () Bool)

(declare-fun tp!1796876 () Bool)

(assert (=> b!6492980 (= e!3934835 (and tp!1796875 tp!1796876))))

(declare-fun b!6492979 () Bool)

(assert (=> b!6492979 (= e!3934835 tp_is_empty!41991)))

(declare-fun b!6492982 () Bool)

(declare-fun tp!1796874 () Bool)

(declare-fun tp!1796873 () Bool)

(assert (=> b!6492982 (= e!3934835 (and tp!1796874 tp!1796873))))

(assert (=> b!6491709 (= tp!1796752 e!3934835)))

(declare-fun b!6492981 () Bool)

(declare-fun tp!1796872 () Bool)

(assert (=> b!6492981 (= e!3934835 tp!1796872)))

(assert (= (and b!6491709 ((_ is ElementMatch!16369) (regTwo!33250 (regTwo!33251 r!7292)))) b!6492979))

(assert (= (and b!6491709 ((_ is Concat!25214) (regTwo!33250 (regTwo!33251 r!7292)))) b!6492980))

(assert (= (and b!6491709 ((_ is Star!16369) (regTwo!33250 (regTwo!33251 r!7292)))) b!6492981))

(assert (= (and b!6491709 ((_ is Union!16369) (regTwo!33250 (regTwo!33251 r!7292)))) b!6492982))

(declare-fun b!6492984 () Bool)

(declare-fun e!3934836 () Bool)

(declare-fun tp!1796880 () Bool)

(declare-fun tp!1796881 () Bool)

(assert (=> b!6492984 (= e!3934836 (and tp!1796880 tp!1796881))))

(declare-fun b!6492983 () Bool)

(assert (=> b!6492983 (= e!3934836 tp_is_empty!41991)))

(declare-fun b!6492986 () Bool)

(declare-fun tp!1796879 () Bool)

(declare-fun tp!1796878 () Bool)

(assert (=> b!6492986 (= e!3934836 (and tp!1796879 tp!1796878))))

(assert (=> b!6491710 (= tp!1796748 e!3934836)))

(declare-fun b!6492985 () Bool)

(declare-fun tp!1796877 () Bool)

(assert (=> b!6492985 (= e!3934836 tp!1796877)))

(assert (= (and b!6491710 ((_ is ElementMatch!16369) (reg!16698 (regTwo!33251 r!7292)))) b!6492983))

(assert (= (and b!6491710 ((_ is Concat!25214) (reg!16698 (regTwo!33251 r!7292)))) b!6492984))

(assert (= (and b!6491710 ((_ is Star!16369) (reg!16698 (regTwo!33251 r!7292)))) b!6492985))

(assert (= (and b!6491710 ((_ is Union!16369) (reg!16698 (regTwo!33251 r!7292)))) b!6492986))

(declare-fun b!6492988 () Bool)

(declare-fun e!3934837 () Bool)

(declare-fun tp!1796885 () Bool)

(declare-fun tp!1796886 () Bool)

(assert (=> b!6492988 (= e!3934837 (and tp!1796885 tp!1796886))))

(declare-fun b!6492987 () Bool)

(assert (=> b!6492987 (= e!3934837 tp_is_empty!41991)))

(declare-fun b!6492990 () Bool)

(declare-fun tp!1796884 () Bool)

(declare-fun tp!1796883 () Bool)

(assert (=> b!6492990 (= e!3934837 (and tp!1796884 tp!1796883))))

(assert (=> b!6491717 (= tp!1796753 e!3934837)))

(declare-fun b!6492989 () Bool)

(declare-fun tp!1796882 () Bool)

(assert (=> b!6492989 (= e!3934837 tp!1796882)))

(assert (= (and b!6491717 ((_ is ElementMatch!16369) (h!71731 (exprs!6253 (h!71732 zl!343))))) b!6492987))

(assert (= (and b!6491717 ((_ is Concat!25214) (h!71731 (exprs!6253 (h!71732 zl!343))))) b!6492988))

(assert (= (and b!6491717 ((_ is Star!16369) (h!71731 (exprs!6253 (h!71732 zl!343))))) b!6492989))

(assert (= (and b!6491717 ((_ is Union!16369) (h!71731 (exprs!6253 (h!71732 zl!343))))) b!6492990))

(declare-fun b!6492991 () Bool)

(declare-fun e!3934838 () Bool)

(declare-fun tp!1796887 () Bool)

(declare-fun tp!1796888 () Bool)

(assert (=> b!6492991 (= e!3934838 (and tp!1796887 tp!1796888))))

(assert (=> b!6491717 (= tp!1796754 e!3934838)))

(assert (= (and b!6491717 ((_ is Cons!65283) (t!379035 (exprs!6253 (h!71732 zl!343))))) b!6492991))

(declare-fun b!6492993 () Bool)

(declare-fun e!3934839 () Bool)

(declare-fun tp!1796892 () Bool)

(declare-fun tp!1796893 () Bool)

(assert (=> b!6492993 (= e!3934839 (and tp!1796892 tp!1796893))))

(declare-fun b!6492992 () Bool)

(assert (=> b!6492992 (= e!3934839 tp_is_empty!41991)))

(declare-fun b!6492995 () Bool)

(declare-fun tp!1796891 () Bool)

(declare-fun tp!1796890 () Bool)

(assert (=> b!6492995 (= e!3934839 (and tp!1796891 tp!1796890))))

(assert (=> b!6491705 (= tp!1796746 e!3934839)))

(declare-fun b!6492994 () Bool)

(declare-fun tp!1796889 () Bool)

(assert (=> b!6492994 (= e!3934839 tp!1796889)))

(assert (= (and b!6491705 ((_ is ElementMatch!16369) (regOne!33250 (regOne!33251 r!7292)))) b!6492992))

(assert (= (and b!6491705 ((_ is Concat!25214) (regOne!33250 (regOne!33251 r!7292)))) b!6492993))

(assert (= (and b!6491705 ((_ is Star!16369) (regOne!33250 (regOne!33251 r!7292)))) b!6492994))

(assert (= (and b!6491705 ((_ is Union!16369) (regOne!33250 (regOne!33251 r!7292)))) b!6492995))

(declare-fun b!6492997 () Bool)

(declare-fun e!3934840 () Bool)

(declare-fun tp!1796897 () Bool)

(declare-fun tp!1796898 () Bool)

(assert (=> b!6492997 (= e!3934840 (and tp!1796897 tp!1796898))))

(declare-fun b!6492996 () Bool)

(assert (=> b!6492996 (= e!3934840 tp_is_empty!41991)))

(declare-fun b!6492999 () Bool)

(declare-fun tp!1796896 () Bool)

(declare-fun tp!1796895 () Bool)

(assert (=> b!6492999 (= e!3934840 (and tp!1796896 tp!1796895))))

(assert (=> b!6491705 (= tp!1796747 e!3934840)))

(declare-fun b!6492998 () Bool)

(declare-fun tp!1796894 () Bool)

(assert (=> b!6492998 (= e!3934840 tp!1796894)))

(assert (= (and b!6491705 ((_ is ElementMatch!16369) (regTwo!33250 (regOne!33251 r!7292)))) b!6492996))

(assert (= (and b!6491705 ((_ is Concat!25214) (regTwo!33250 (regOne!33251 r!7292)))) b!6492997))

(assert (= (and b!6491705 ((_ is Star!16369) (regTwo!33250 (regOne!33251 r!7292)))) b!6492998))

(assert (= (and b!6491705 ((_ is Union!16369) (regTwo!33250 (regOne!33251 r!7292)))) b!6492999))

(declare-fun b!6493001 () Bool)

(declare-fun e!3934841 () Bool)

(declare-fun tp!1796902 () Bool)

(declare-fun tp!1796903 () Bool)

(assert (=> b!6493001 (= e!3934841 (and tp!1796902 tp!1796903))))

(declare-fun b!6493000 () Bool)

(assert (=> b!6493000 (= e!3934841 tp_is_empty!41991)))

(declare-fun b!6493003 () Bool)

(declare-fun tp!1796901 () Bool)

(declare-fun tp!1796900 () Bool)

(assert (=> b!6493003 (= e!3934841 (and tp!1796901 tp!1796900))))

(assert (=> b!6491711 (= tp!1796750 e!3934841)))

(declare-fun b!6493002 () Bool)

(declare-fun tp!1796899 () Bool)

(assert (=> b!6493002 (= e!3934841 tp!1796899)))

(assert (= (and b!6491711 ((_ is ElementMatch!16369) (regOne!33251 (regTwo!33251 r!7292)))) b!6493000))

(assert (= (and b!6491711 ((_ is Concat!25214) (regOne!33251 (regTwo!33251 r!7292)))) b!6493001))

(assert (= (and b!6491711 ((_ is Star!16369) (regOne!33251 (regTwo!33251 r!7292)))) b!6493002))

(assert (= (and b!6491711 ((_ is Union!16369) (regOne!33251 (regTwo!33251 r!7292)))) b!6493003))

(declare-fun b!6493005 () Bool)

(declare-fun e!3934842 () Bool)

(declare-fun tp!1796907 () Bool)

(declare-fun tp!1796908 () Bool)

(assert (=> b!6493005 (= e!3934842 (and tp!1796907 tp!1796908))))

(declare-fun b!6493004 () Bool)

(assert (=> b!6493004 (= e!3934842 tp_is_empty!41991)))

(declare-fun b!6493007 () Bool)

(declare-fun tp!1796906 () Bool)

(declare-fun tp!1796905 () Bool)

(assert (=> b!6493007 (= e!3934842 (and tp!1796906 tp!1796905))))

(assert (=> b!6491711 (= tp!1796749 e!3934842)))

(declare-fun b!6493006 () Bool)

(declare-fun tp!1796904 () Bool)

(assert (=> b!6493006 (= e!3934842 tp!1796904)))

(assert (= (and b!6491711 ((_ is ElementMatch!16369) (regTwo!33251 (regTwo!33251 r!7292)))) b!6493004))

(assert (= (and b!6491711 ((_ is Concat!25214) (regTwo!33251 (regTwo!33251 r!7292)))) b!6493005))

(assert (= (and b!6491711 ((_ is Star!16369) (regTwo!33251 (regTwo!33251 r!7292)))) b!6493006))

(assert (= (and b!6491711 ((_ is Union!16369) (regTwo!33251 (regTwo!33251 r!7292)))) b!6493007))

(declare-fun b!6493009 () Bool)

(declare-fun e!3934843 () Bool)

(declare-fun tp!1796912 () Bool)

(declare-fun tp!1796913 () Bool)

(assert (=> b!6493009 (= e!3934843 (and tp!1796912 tp!1796913))))

(declare-fun b!6493008 () Bool)

(assert (=> b!6493008 (= e!3934843 tp_is_empty!41991)))

(declare-fun b!6493011 () Bool)

(declare-fun tp!1796911 () Bool)

(declare-fun tp!1796910 () Bool)

(assert (=> b!6493011 (= e!3934843 (and tp!1796911 tp!1796910))))

(assert (=> b!6491707 (= tp!1796745 e!3934843)))

(declare-fun b!6493010 () Bool)

(declare-fun tp!1796909 () Bool)

(assert (=> b!6493010 (= e!3934843 tp!1796909)))

(assert (= (and b!6491707 ((_ is ElementMatch!16369) (regOne!33251 (regOne!33251 r!7292)))) b!6493008))

(assert (= (and b!6491707 ((_ is Concat!25214) (regOne!33251 (regOne!33251 r!7292)))) b!6493009))

(assert (= (and b!6491707 ((_ is Star!16369) (regOne!33251 (regOne!33251 r!7292)))) b!6493010))

(assert (= (and b!6491707 ((_ is Union!16369) (regOne!33251 (regOne!33251 r!7292)))) b!6493011))

(declare-fun b!6493013 () Bool)

(declare-fun e!3934844 () Bool)

(declare-fun tp!1796917 () Bool)

(declare-fun tp!1796918 () Bool)

(assert (=> b!6493013 (= e!3934844 (and tp!1796917 tp!1796918))))

(declare-fun b!6493012 () Bool)

(assert (=> b!6493012 (= e!3934844 tp_is_empty!41991)))

(declare-fun b!6493015 () Bool)

(declare-fun tp!1796916 () Bool)

(declare-fun tp!1796915 () Bool)

(assert (=> b!6493015 (= e!3934844 (and tp!1796916 tp!1796915))))

(assert (=> b!6491707 (= tp!1796744 e!3934844)))

(declare-fun b!6493014 () Bool)

(declare-fun tp!1796914 () Bool)

(assert (=> b!6493014 (= e!3934844 tp!1796914)))

(assert (= (and b!6491707 ((_ is ElementMatch!16369) (regTwo!33251 (regOne!33251 r!7292)))) b!6493012))

(assert (= (and b!6491707 ((_ is Concat!25214) (regTwo!33251 (regOne!33251 r!7292)))) b!6493013))

(assert (= (and b!6491707 ((_ is Star!16369) (regTwo!33251 (regOne!33251 r!7292)))) b!6493014))

(assert (= (and b!6491707 ((_ is Union!16369) (regTwo!33251 (regOne!33251 r!7292)))) b!6493015))

(declare-fun b!6493017 () Bool)

(declare-fun e!3934845 () Bool)

(declare-fun tp!1796922 () Bool)

(declare-fun tp!1796923 () Bool)

(assert (=> b!6493017 (= e!3934845 (and tp!1796922 tp!1796923))))

(declare-fun b!6493016 () Bool)

(assert (=> b!6493016 (= e!3934845 tp_is_empty!41991)))

(declare-fun b!6493019 () Bool)

(declare-fun tp!1796921 () Bool)

(declare-fun tp!1796920 () Bool)

(assert (=> b!6493019 (= e!3934845 (and tp!1796921 tp!1796920))))

(assert (=> b!6491706 (= tp!1796743 e!3934845)))

(declare-fun b!6493018 () Bool)

(declare-fun tp!1796919 () Bool)

(assert (=> b!6493018 (= e!3934845 tp!1796919)))

(assert (= (and b!6491706 ((_ is ElementMatch!16369) (reg!16698 (regOne!33251 r!7292)))) b!6493016))

(assert (= (and b!6491706 ((_ is Concat!25214) (reg!16698 (regOne!33251 r!7292)))) b!6493017))

(assert (= (and b!6491706 ((_ is Star!16369) (reg!16698 (regOne!33251 r!7292)))) b!6493018))

(assert (= (and b!6491706 ((_ is Union!16369) (reg!16698 (regOne!33251 r!7292)))) b!6493019))

(declare-fun b!6493021 () Bool)

(declare-fun e!3934847 () Bool)

(declare-fun tp!1796924 () Bool)

(assert (=> b!6493021 (= e!3934847 tp!1796924)))

(declare-fun e!3934846 () Bool)

(declare-fun b!6493020 () Bool)

(declare-fun tp!1796925 () Bool)

(assert (=> b!6493020 (= e!3934846 (and (inv!84169 (h!71732 (t!379036 (t!379036 zl!343)))) e!3934847 tp!1796925))))

(assert (=> b!6491702 (= tp!1796742 e!3934846)))

(assert (= b!6493020 b!6493021))

(assert (= (and b!6491702 ((_ is Cons!65284) (t!379036 (t!379036 zl!343)))) b!6493020))

(declare-fun m!7281770 () Bool)

(assert (=> b!6493020 m!7281770))

(declare-fun b!6493023 () Bool)

(declare-fun e!3934848 () Bool)

(declare-fun tp!1796929 () Bool)

(declare-fun tp!1796930 () Bool)

(assert (=> b!6493023 (= e!3934848 (and tp!1796929 tp!1796930))))

(declare-fun b!6493022 () Bool)

(assert (=> b!6493022 (= e!3934848 tp_is_empty!41991)))

(declare-fun b!6493025 () Bool)

(declare-fun tp!1796928 () Bool)

(declare-fun tp!1796927 () Bool)

(assert (=> b!6493025 (= e!3934848 (and tp!1796928 tp!1796927))))

(assert (=> b!6491687 (= tp!1796730 e!3934848)))

(declare-fun b!6493024 () Bool)

(declare-fun tp!1796926 () Bool)

(assert (=> b!6493024 (= e!3934848 tp!1796926)))

(assert (= (and b!6491687 ((_ is ElementMatch!16369) (regOne!33250 (regTwo!33250 r!7292)))) b!6493022))

(assert (= (and b!6491687 ((_ is Concat!25214) (regOne!33250 (regTwo!33250 r!7292)))) b!6493023))

(assert (= (and b!6491687 ((_ is Star!16369) (regOne!33250 (regTwo!33250 r!7292)))) b!6493024))

(assert (= (and b!6491687 ((_ is Union!16369) (regOne!33250 (regTwo!33250 r!7292)))) b!6493025))

(declare-fun b!6493027 () Bool)

(declare-fun e!3934849 () Bool)

(declare-fun tp!1796934 () Bool)

(declare-fun tp!1796935 () Bool)

(assert (=> b!6493027 (= e!3934849 (and tp!1796934 tp!1796935))))

(declare-fun b!6493026 () Bool)

(assert (=> b!6493026 (= e!3934849 tp_is_empty!41991)))

(declare-fun b!6493029 () Bool)

(declare-fun tp!1796933 () Bool)

(declare-fun tp!1796932 () Bool)

(assert (=> b!6493029 (= e!3934849 (and tp!1796933 tp!1796932))))

(assert (=> b!6491687 (= tp!1796731 e!3934849)))

(declare-fun b!6493028 () Bool)

(declare-fun tp!1796931 () Bool)

(assert (=> b!6493028 (= e!3934849 tp!1796931)))

(assert (= (and b!6491687 ((_ is ElementMatch!16369) (regTwo!33250 (regTwo!33250 r!7292)))) b!6493026))

(assert (= (and b!6491687 ((_ is Concat!25214) (regTwo!33250 (regTwo!33250 r!7292)))) b!6493027))

(assert (= (and b!6491687 ((_ is Star!16369) (regTwo!33250 (regTwo!33250 r!7292)))) b!6493028))

(assert (= (and b!6491687 ((_ is Union!16369) (regTwo!33250 (regTwo!33250 r!7292)))) b!6493029))

(declare-fun b!6493031 () Bool)

(declare-fun e!3934850 () Bool)

(declare-fun tp!1796939 () Bool)

(declare-fun tp!1796940 () Bool)

(assert (=> b!6493031 (= e!3934850 (and tp!1796939 tp!1796940))))

(declare-fun b!6493030 () Bool)

(assert (=> b!6493030 (= e!3934850 tp_is_empty!41991)))

(declare-fun b!6493033 () Bool)

(declare-fun tp!1796938 () Bool)

(declare-fun tp!1796937 () Bool)

(assert (=> b!6493033 (= e!3934850 (and tp!1796938 tp!1796937))))

(assert (=> b!6491689 (= tp!1796729 e!3934850)))

(declare-fun b!6493032 () Bool)

(declare-fun tp!1796936 () Bool)

(assert (=> b!6493032 (= e!3934850 tp!1796936)))

(assert (= (and b!6491689 ((_ is ElementMatch!16369) (regOne!33251 (regTwo!33250 r!7292)))) b!6493030))

(assert (= (and b!6491689 ((_ is Concat!25214) (regOne!33251 (regTwo!33250 r!7292)))) b!6493031))

(assert (= (and b!6491689 ((_ is Star!16369) (regOne!33251 (regTwo!33250 r!7292)))) b!6493032))

(assert (= (and b!6491689 ((_ is Union!16369) (regOne!33251 (regTwo!33250 r!7292)))) b!6493033))

(declare-fun b!6493035 () Bool)

(declare-fun e!3934851 () Bool)

(declare-fun tp!1796944 () Bool)

(declare-fun tp!1796945 () Bool)

(assert (=> b!6493035 (= e!3934851 (and tp!1796944 tp!1796945))))

(declare-fun b!6493034 () Bool)

(assert (=> b!6493034 (= e!3934851 tp_is_empty!41991)))

(declare-fun b!6493037 () Bool)

(declare-fun tp!1796943 () Bool)

(declare-fun tp!1796942 () Bool)

(assert (=> b!6493037 (= e!3934851 (and tp!1796943 tp!1796942))))

(assert (=> b!6491689 (= tp!1796728 e!3934851)))

(declare-fun b!6493036 () Bool)

(declare-fun tp!1796941 () Bool)

(assert (=> b!6493036 (= e!3934851 tp!1796941)))

(assert (= (and b!6491689 ((_ is ElementMatch!16369) (regTwo!33251 (regTwo!33250 r!7292)))) b!6493034))

(assert (= (and b!6491689 ((_ is Concat!25214) (regTwo!33251 (regTwo!33250 r!7292)))) b!6493035))

(assert (= (and b!6491689 ((_ is Star!16369) (regTwo!33251 (regTwo!33250 r!7292)))) b!6493036))

(assert (= (and b!6491689 ((_ is Union!16369) (regTwo!33251 (regTwo!33250 r!7292)))) b!6493037))

(declare-fun b!6493038 () Bool)

(declare-fun e!3934852 () Bool)

(declare-fun tp!1796946 () Bool)

(declare-fun tp!1796947 () Bool)

(assert (=> b!6493038 (= e!3934852 (and tp!1796946 tp!1796947))))

(assert (=> b!6491703 (= tp!1796741 e!3934852)))

(assert (= (and b!6491703 ((_ is Cons!65283) (exprs!6253 (h!71732 (t!379036 zl!343))))) b!6493038))

(declare-fun b!6493040 () Bool)

(declare-fun e!3934853 () Bool)

(declare-fun tp!1796951 () Bool)

(declare-fun tp!1796952 () Bool)

(assert (=> b!6493040 (= e!3934853 (and tp!1796951 tp!1796952))))

(declare-fun b!6493039 () Bool)

(assert (=> b!6493039 (= e!3934853 tp_is_empty!41991)))

(declare-fun b!6493042 () Bool)

(declare-fun tp!1796950 () Bool)

(declare-fun tp!1796949 () Bool)

(assert (=> b!6493042 (= e!3934853 (and tp!1796950 tp!1796949))))

(assert (=> b!6491688 (= tp!1796727 e!3934853)))

(declare-fun b!6493041 () Bool)

(declare-fun tp!1796948 () Bool)

(assert (=> b!6493041 (= e!3934853 tp!1796948)))

(assert (= (and b!6491688 ((_ is ElementMatch!16369) (reg!16698 (regTwo!33250 r!7292)))) b!6493039))

(assert (= (and b!6491688 ((_ is Concat!25214) (reg!16698 (regTwo!33250 r!7292)))) b!6493040))

(assert (= (and b!6491688 ((_ is Star!16369) (reg!16698 (regTwo!33250 r!7292)))) b!6493041))

(assert (= (and b!6491688 ((_ is Union!16369) (reg!16698 (regTwo!33250 r!7292)))) b!6493042))

(declare-fun b!6493044 () Bool)

(declare-fun e!3934854 () Bool)

(declare-fun tp!1796956 () Bool)

(declare-fun tp!1796957 () Bool)

(assert (=> b!6493044 (= e!3934854 (and tp!1796956 tp!1796957))))

(declare-fun b!6493043 () Bool)

(assert (=> b!6493043 (= e!3934854 tp_is_empty!41991)))

(declare-fun b!6493046 () Bool)

(declare-fun tp!1796955 () Bool)

(declare-fun tp!1796954 () Bool)

(assert (=> b!6493046 (= e!3934854 (and tp!1796955 tp!1796954))))

(assert (=> b!6491682 (= tp!1796722 e!3934854)))

(declare-fun b!6493045 () Bool)

(declare-fun tp!1796953 () Bool)

(assert (=> b!6493045 (= e!3934854 tp!1796953)))

(assert (= (and b!6491682 ((_ is ElementMatch!16369) (reg!16698 (regOne!33250 r!7292)))) b!6493043))

(assert (= (and b!6491682 ((_ is Concat!25214) (reg!16698 (regOne!33250 r!7292)))) b!6493044))

(assert (= (and b!6491682 ((_ is Star!16369) (reg!16698 (regOne!33250 r!7292)))) b!6493045))

(assert (= (and b!6491682 ((_ is Union!16369) (reg!16698 (regOne!33250 r!7292)))) b!6493046))

(declare-fun b!6493047 () Bool)

(declare-fun e!3934855 () Bool)

(declare-fun tp!1796958 () Bool)

(assert (=> b!6493047 (= e!3934855 (and tp_is_empty!41991 tp!1796958))))

(assert (=> b!6491669 (= tp!1796711 e!3934855)))

(assert (= (and b!6491669 ((_ is Cons!65282) (t!379034 (t!379034 s!2326)))) b!6493047))

(declare-fun b!6493049 () Bool)

(declare-fun e!3934856 () Bool)

(declare-fun tp!1796962 () Bool)

(declare-fun tp!1796963 () Bool)

(assert (=> b!6493049 (= e!3934856 (and tp!1796962 tp!1796963))))

(declare-fun b!6493048 () Bool)

(assert (=> b!6493048 (= e!3934856 tp_is_empty!41991)))

(declare-fun b!6493051 () Bool)

(declare-fun tp!1796961 () Bool)

(declare-fun tp!1796960 () Bool)

(assert (=> b!6493051 (= e!3934856 (and tp!1796961 tp!1796960))))

(assert (=> b!6491681 (= tp!1796725 e!3934856)))

(declare-fun b!6493050 () Bool)

(declare-fun tp!1796959 () Bool)

(assert (=> b!6493050 (= e!3934856 tp!1796959)))

(assert (= (and b!6491681 ((_ is ElementMatch!16369) (regOne!33250 (regOne!33250 r!7292)))) b!6493048))

(assert (= (and b!6491681 ((_ is Concat!25214) (regOne!33250 (regOne!33250 r!7292)))) b!6493049))

(assert (= (and b!6491681 ((_ is Star!16369) (regOne!33250 (regOne!33250 r!7292)))) b!6493050))

(assert (= (and b!6491681 ((_ is Union!16369) (regOne!33250 (regOne!33250 r!7292)))) b!6493051))

(declare-fun b!6493053 () Bool)

(declare-fun e!3934857 () Bool)

(declare-fun tp!1796967 () Bool)

(declare-fun tp!1796968 () Bool)

(assert (=> b!6493053 (= e!3934857 (and tp!1796967 tp!1796968))))

(declare-fun b!6493052 () Bool)

(assert (=> b!6493052 (= e!3934857 tp_is_empty!41991)))

(declare-fun b!6493055 () Bool)

(declare-fun tp!1796966 () Bool)

(declare-fun tp!1796965 () Bool)

(assert (=> b!6493055 (= e!3934857 (and tp!1796966 tp!1796965))))

(assert (=> b!6491681 (= tp!1796726 e!3934857)))

(declare-fun b!6493054 () Bool)

(declare-fun tp!1796964 () Bool)

(assert (=> b!6493054 (= e!3934857 tp!1796964)))

(assert (= (and b!6491681 ((_ is ElementMatch!16369) (regTwo!33250 (regOne!33250 r!7292)))) b!6493052))

(assert (= (and b!6491681 ((_ is Concat!25214) (regTwo!33250 (regOne!33250 r!7292)))) b!6493053))

(assert (= (and b!6491681 ((_ is Star!16369) (regTwo!33250 (regOne!33250 r!7292)))) b!6493054))

(assert (= (and b!6491681 ((_ is Union!16369) (regTwo!33250 (regOne!33250 r!7292)))) b!6493055))

(declare-fun b!6493057 () Bool)

(declare-fun e!3934858 () Bool)

(declare-fun tp!1796972 () Bool)

(declare-fun tp!1796973 () Bool)

(assert (=> b!6493057 (= e!3934858 (and tp!1796972 tp!1796973))))

(declare-fun b!6493056 () Bool)

(assert (=> b!6493056 (= e!3934858 tp_is_empty!41991)))

(declare-fun b!6493059 () Bool)

(declare-fun tp!1796971 () Bool)

(declare-fun tp!1796970 () Bool)

(assert (=> b!6493059 (= e!3934858 (and tp!1796971 tp!1796970))))

(assert (=> b!6491683 (= tp!1796724 e!3934858)))

(declare-fun b!6493058 () Bool)

(declare-fun tp!1796969 () Bool)

(assert (=> b!6493058 (= e!3934858 tp!1796969)))

(assert (= (and b!6491683 ((_ is ElementMatch!16369) (regOne!33251 (regOne!33250 r!7292)))) b!6493056))

(assert (= (and b!6491683 ((_ is Concat!25214) (regOne!33251 (regOne!33250 r!7292)))) b!6493057))

(assert (= (and b!6491683 ((_ is Star!16369) (regOne!33251 (regOne!33250 r!7292)))) b!6493058))

(assert (= (and b!6491683 ((_ is Union!16369) (regOne!33251 (regOne!33250 r!7292)))) b!6493059))

(declare-fun b!6493061 () Bool)

(declare-fun e!3934859 () Bool)

(declare-fun tp!1796977 () Bool)

(declare-fun tp!1796978 () Bool)

(assert (=> b!6493061 (= e!3934859 (and tp!1796977 tp!1796978))))

(declare-fun b!6493060 () Bool)

(assert (=> b!6493060 (= e!3934859 tp_is_empty!41991)))

(declare-fun b!6493063 () Bool)

(declare-fun tp!1796976 () Bool)

(declare-fun tp!1796975 () Bool)

(assert (=> b!6493063 (= e!3934859 (and tp!1796976 tp!1796975))))

(assert (=> b!6491683 (= tp!1796723 e!3934859)))

(declare-fun b!6493062 () Bool)

(declare-fun tp!1796974 () Bool)

(assert (=> b!6493062 (= e!3934859 tp!1796974)))

(assert (= (and b!6491683 ((_ is ElementMatch!16369) (regTwo!33251 (regOne!33250 r!7292)))) b!6493060))

(assert (= (and b!6491683 ((_ is Concat!25214) (regTwo!33251 (regOne!33250 r!7292)))) b!6493061))

(assert (= (and b!6491683 ((_ is Star!16369) (regTwo!33251 (regOne!33250 r!7292)))) b!6493062))

(assert (= (and b!6491683 ((_ is Union!16369) (regTwo!33251 (regOne!33250 r!7292)))) b!6493063))

(declare-fun b_lambda!245783 () Bool)

(assert (= b_lambda!245767 (or d!2036558 b_lambda!245783)))

(declare-fun bs!1648798 () Bool)

(declare-fun d!2037380 () Bool)

(assert (= bs!1648798 (and d!2037380 d!2036558)))

(assert (=> bs!1648798 (= (dynLambda!25932 lambda!359507 (h!71731 (unfocusZipperList!1790 zl!343))) (validRegex!8105 (h!71731 (unfocusZipperList!1790 zl!343))))))

(declare-fun m!7281772 () Bool)

(assert (=> bs!1648798 m!7281772))

(assert (=> b!6492243 d!2037380))

(declare-fun b_lambda!245785 () Bool)

(assert (= b_lambda!245777 (or b!6490629 b_lambda!245785)))

(declare-fun bs!1648799 () Bool)

(declare-fun d!2037382 () Bool)

(assert (= bs!1648799 (and d!2037382 b!6490629)))

(assert (=> bs!1648799 (= (dynLambda!25932 lambda!359444 (h!71731 lt!2389623)) (validRegex!8105 (h!71731 lt!2389623)))))

(declare-fun m!7281774 () Bool)

(assert (=> bs!1648799 m!7281774))

(assert (=> b!6492813 d!2037382))

(declare-fun b_lambda!245787 () Bool)

(assert (= b_lambda!245769 (or d!2036426 b_lambda!245787)))

(declare-fun bs!1648800 () Bool)

(declare-fun d!2037384 () Bool)

(assert (= bs!1648800 (and d!2037384 d!2036426)))

(assert (=> bs!1648800 (= (dynLambda!25932 lambda!359456 (h!71731 (exprs!6253 (h!71732 zl!343)))) (validRegex!8105 (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(declare-fun m!7281776 () Bool)

(assert (=> bs!1648800 m!7281776))

(assert (=> b!6492400 d!2037384))

(declare-fun b_lambda!245789 () Bool)

(assert (= b_lambda!245771 (or b!6490636 b_lambda!245789)))

(assert (=> d!2037142 d!2036734))

(declare-fun b_lambda!245791 () Bool)

(assert (= b_lambda!245765 (or d!2036562 b_lambda!245791)))

(declare-fun bs!1648801 () Bool)

(declare-fun d!2037386 () Bool)

(assert (= bs!1648801 (and d!2037386 d!2036562)))

(assert (=> bs!1648801 (= (dynLambda!25932 lambda!359513 (h!71731 lt!2389765)) (validRegex!8105 (h!71731 lt!2389765)))))

(declare-fun m!7281778 () Bool)

(assert (=> bs!1648801 m!7281778))

(assert (=> b!6492219 d!2037386))

(declare-fun b_lambda!245793 () Bool)

(assert (= b_lambda!245761 (or d!2036540 b_lambda!245793)))

(declare-fun bs!1648802 () Bool)

(declare-fun d!2037388 () Bool)

(assert (= bs!1648802 (and d!2037388 d!2036540)))

(assert (=> bs!1648802 (= (dynLambda!25932 lambda!359502 (h!71731 (exprs!6253 setElem!44219))) (validRegex!8105 (h!71731 (exprs!6253 setElem!44219))))))

(declare-fun m!7281780 () Bool)

(assert (=> bs!1648802 m!7281780))

(assert (=> b!6492011 d!2037388))

(declare-fun b_lambda!245795 () Bool)

(assert (= b_lambda!245781 (or b!6490636 b_lambda!245795)))

(assert (=> d!2037314 d!2036738))

(declare-fun b_lambda!245797 () Bool)

(assert (= b_lambda!245773 (or d!2036572 b_lambda!245797)))

(declare-fun bs!1648803 () Bool)

(declare-fun d!2037390 () Bool)

(assert (= bs!1648803 (and d!2037390 d!2036572)))

(assert (=> bs!1648803 (= (dynLambda!25932 lambda!359520 (h!71731 (exprs!6253 (h!71732 zl!343)))) (validRegex!8105 (h!71731 (exprs!6253 (h!71732 zl!343)))))))

(assert (=> bs!1648803 m!7281776))

(assert (=> b!6492510 d!2037390))

(declare-fun b_lambda!245799 () Bool)

(assert (= b_lambda!245775 (or b!6490629 b_lambda!245799)))

(declare-fun bs!1648804 () Bool)

(declare-fun d!2037392 () Bool)

(assert (= bs!1648804 (and d!2037392 b!6490629)))

(assert (=> bs!1648804 (= (dynLambda!25932 lambda!359444 (h!71731 (++!14449 lt!2389623 lt!2389636))) (validRegex!8105 (h!71731 (++!14449 lt!2389623 lt!2389636))))))

(declare-fun m!7281782 () Bool)

(assert (=> bs!1648804 m!7281782))

(assert (=> b!6492811 d!2037392))

(declare-fun b_lambda!245801 () Bool)

(assert (= b_lambda!245763 (or b!6490636 b_lambda!245801)))

(assert (=> d!2036972 d!2036742))

(declare-fun b_lambda!245803 () Bool)

(assert (= b_lambda!245779 (or b!6490636 b_lambda!245803)))

(assert (=> d!2037312 d!2036740))

(check-sat (not bs!1648802) (not bm!562205) (not b!6492367) (not d!2037192) (not bm!562049) (not b_lambda!245747) (not b!6492256) (not b!6492162) (not b!6493021) (not b!6492845) (not b!6492372) (not b!6492458) (not d!2037298) (not b!6492981) (not bm!562113) (not b!6492122) (not b!6492951) (not bm!562189) (not b!6492563) (not bm!562190) (not d!2036808) (not d!2037204) (not d!2036822) (not bm!562202) (not b!6492648) (not b!6492740) (not bs!1648804) (not bm!562165) (not bm!562075) (not bm!562099) (not d!2037340) (not b_lambda!245793) (not bm!562207) (not b!6492814) (not b!6492386) (not b!6493061) (not b!6492758) (not b!6492925) (not bm!562066) (not bm!562215) (not b!6492337) (not b!6492769) (not b!6492790) (not b!6492352) (not b!6492965) (not bm!562169) (not bm!562175) (not d!2037064) (not b!6492472) (not d!2037164) (not bm!562177) (not d!2037292) (not b!6492065) (not b!6492124) (not b!6491937) (not b!6492181) (not b!6492353) (not b!6492267) (not b!6492169) (not setNonEmpty!44229) (not b!6492733) (not b!6492175) (not b!6491865) (not bs!1648800) (not bm!562148) (not d!2037026) (not bm!562153) (not bm!562193) (not b!6492262) (not d!2037136) (not d!2037054) (not bm!562097) (not b!6492840) (not b!6492747) (not bm!562116) (not d!2037310) (not bm!562191) (not b!6493013) (not b!6492504) (not b!6493007) (not b!6492494) (not b!6493054) (not b!6493038) (not b!6492016) (not d!2037216) (not b!6492680) (not b!6492316) (not b!6492253) (not b!6493024) (not d!2036916) (not b_lambda!245789) (not b!6492244) (not bm!562079) (not b!6491954) (not bm!562167) (not bm!562131) (not b!6491879) (not b!6492056) (not bm!562117) (not b!6492221) (not bm!562137) (not b!6492116) (not bm!562200) (not b!6492763) (not d!2036874) (not b!6492276) (not b!6492061) (not b!6492257) (not bm!562050) (not b!6492866) (not b!6492878) (not b!6493035) (not b!6492278) (not b!6492440) (not d!2037120) (not b!6492428) (not d!2037128) (not b!6492137) (not b!6491878) (not b!6492885) (not b!6492998) (not b!6492887) (not b!6492816) (not bm!562152) (not b!6492455) (not b!6492896) (not b!6491918) (not bm!562087) (not b!6492784) (not b!6492317) (not d!2037260) (not b!6492920) (not b!6492870) (not d!2037002) (not b_lambda!245801) (not b!6493051) (not b!6492088) (not d!2036866) (not d!2037228) (not b!6492590) (not bm!562142) (not b!6493025) (not b!6492970) (not bm!562209) (not b!6492849) (not d!2037338) (not bm!562096) (not bm!562023) (not b!6492844) (not b!6492215) (not b!6492955) (not b!6491853) (not b_lambda!245785) (not bm!562047) (not b!6492867) (not b!6493028) (not b!6492002) (not b!6492985) (not b!6492820) (not b!6491934) (not b!6492415) (not d!2036802) (not b!6492637) (not bm!562210) (not d!2036816) (not b!6493003) (not bm!562126) (not b!6492993) (not bm!562136) (not bm!562188) (not d!2037314) (not b!6492454) (not b!6491857) (not d!2036998) (not b!6492821) (not b!6492334) (not d!2037096) (not bm!562034) (not d!2036980) (not b_lambda!245783) (not b!6492916) (not bm!562166) (not b!6492749) (not b!6492150) (not b!6491920) (not b!6493040) (not b!6492623) (not b!6492707) (not bm!562020) (not b!6492741) (not b!6492368) (not b!6492617) (not b!6492261) (not b!6492342) (not d!2037116) (not b!6491864) (not d!2037072) (not b!6492884) (not bm!562071) (not b!6492812) (not b!6492204) (not b!6492165) (not bm!562045) (not b!6492102) (not d!2037328) (not b!6492108) (not b!6491856) (not b!6492602) (not bm!562088) (not b!6492074) (not b_lambda!245803) (not d!2036892) (not d!2037194) (not d!2037334) (not b!6493032) tp_is_empty!41991 (not b!6492480) (not b!6492561) (not d!2037350) (not b!6491935) (not b!6491926) (not d!2036810) (not b!6493001) (not bm!562171) (not b!6492451) (not b!6492326) (not b!6492104) (not bm!562029) (not b!6492076) (not b!6492078) (not d!2037232) (not b!6492973) (not b!6492597) (not b!6492477) (not b!6491999) (not b!6492786) (not b!6492880) (not b!6492956) (not b!6493033) (not bm!562197) (not bm!562086) (not d!2037296) (not b!6492876) (not bm!562022) (not d!2037004) (not d!2036888) (not bm!562176) (not d!2036840) (not bm!562021) (not d!2037262) (not b!6492774) (not b!6493042) (not b!6492735) (not b!6493002) (not b!6491953) (not b!6492717) (not b!6492687) (not b!6492770) (not bs!1648799) (not b!6492914) (not d!2037224) (not bm!562019) (not b!6492422) (not d!2037088) (not d!2037282) (not b!6492943) (not b!6492033) (not b!6491919) (not d!2037042) (not b!6492991) (not b!6492524) (not d!2037258) (not d!2037264) (not bm!562124) (not b!6492832) (not b!6492534) (not bm!562090) (not b!6492417) (not bm!562133) (not b!6492118) (not b!6492120) (not b!6492401) (not b!6492744) (not b!6492310) (not b!6493037) (not b!6492226) (not d!2037142) (not b!6492960) (not b!6492082) (not b!6493029) (not bm!562159) (not b!6492329) (not d!2036870) (not d!2037094) (not b!6492779) (not b!6492997) (not b!6492001) (not d!2037300) (not b!6493063) (not b!6491860) (not b!6492318) (not b!6493011) (not b!6492322) (not b!6493046) (not b!6492032) (not d!2037188) (not bm!562127) (not b!6492875) (not d!2037272) (not b!6492202) (not b!6492737) (not b!6492995) (not b!6492714) (not b!6491913) (not b!6492200) (not d!2037330) (not d!2037278) (not bm!562141) (not setNonEmpty!44231) (not d!2037242) (not bm!562144) (not b!6491936) (not b!6492115) (not b!6492448) (not b!6492279) (not d!2036978) (not bm!562138) (not bm!562106) (not b!6493036) (not b!6492614) (not b!6492825) (not d!2037318) (not b!6492237) (not b_lambda!245791) (not d!2037342) (not b!6492595) (not bm!562102) (not b!6492974) (not bm!562108) (not setNonEmpty!44228) (not b!6492809) (not b!6492810) (not b!6493014) (not d!2036904) (not d!2037364) (not bm!562100) (not bm!562196) (not b!6492891) (not d!2037006) (not b!6492596) (not b!6492776) (not d!2037332) (not b!6492978) (not bm!562130) (not d!2037036) (not b!6492380) (not d!2037362) (not bm!562199) (not d!2037316) (not b!6492441) (not b!6493062) (not b!6492988) (not d!2037270) (not b!6492611) (not b!6492856) (not b!6492459) (not b!6492953) (not b!6492947) (not b!6493019) (not b!6493010) (not bm!562121) (not b!6492671) (not b!6492373) (not b!6492211) (not d!2037240) (not b!6492049) (not b!6492188) (not b!6492568) (not b!6492438) (not d!2037174) (not b!6492529) (not b!6492715) (not bs!1648803) (not b!6492586) (not b!6492850) (not b!6492795) (not b!6492005) (not bm!562198) (not bm!562204) (not b!6492994) (not d!2036900) (not d!2036954) (not bm!562181) (not d!2036952) (not b!6492170) (not d!2036846) (not b!6492778) (not b!6492826) (not d!2037244) (not d!2036896) (not d!2037104) (not b!6492719) (not bm!562030) (not b!6492966) (not b!6492739) (not d!2037126) (not b!6492341) (not b!6492081) (not b!6493031) (not bm!562112) (not b!6492959) (not d!2036854) (not b!6492470) (not b!6492958) (not bm!562068) (not b_lambda!245749) (not d!2037294) (not b!6492062) (not b!6492245) (not b!6492911) (not d!2037062) (not b!6491850) (not bs!1648801) (not b!6493053) (not d!2037050) (not b!6492775) (not b!6492897) (not b!6492986) (not b!6491848) (not b!6492863) (not b!6492915) (not b!6492274) (not b!6492546) (not d!2037266) (not b!6492072) (not b!6492754) (not b!6493045) (not b!6492475) (not b!6492881) (not b!6491881) (not d!2037000) (not d!2037354) (not b!6492259) (not bm!562182) (not b!6492968) (not b!6492954) (not bm!562119) (not b!6492706) (not b!6492387) (not d!2037324) (not d!2037056) (not b!6492619) (not b!6492064) (not b!6492311) (not d!2037214) (not b!6492127) (not b!6492961) (not b!6492765) (not d!2037220) (not bm!562161) (not d!2037370) (not b!6492523) (not b!6492618) (not b!6492934) (not d!2037180) (not b!6492964) (not d!2037248) (not b!6491997) (not b!6492528) (not b!6491927) (not b!6492903) (not b!6492308) (not d!2037178) (not bm!562061) (not b!6493041) (not b!6491870) (not bm!562145) (not b!6492302) (not b!6492676) (not b!6492864) (not b!6492558) (not b!6492720) (not d!2036820) (not bm!562028) (not b!6491914) (not b!6492327) (not b!6493057) (not b!6492412) (not b!6492711) (not b!6492980) (not b!6492984) (not b!6492760) (not bm!562062) (not d!2036836) (not b!6492363) (not d!2036972) (not b!6492675) (not b!6493058) (not b!6492443) (not bm!562110) (not b!6492890) (not d!2037352) (not b!6492123) (not d!2037160) (not d!2036926) (not d!2037040) (not b!6493009) (not d!2037044) (not b!6493059) (not b!6492416) (not d!2037168) (not b!6492248) (not b!6492963) (not b!6492977) (not bm!562111) (not b!6492393) (not b!6492405) (not d!2037320) (not b!6492442) (not b!6492330) (not b!6492796) (not b!6493055) (not d!2037254) (not b!6492819) (not b!6492949) (not b!6491985) (not b!6491916) (not b!6492782) (not b!6492094) (not b!6492469) (not b!6492206) (not b!6492681) (not d!2036806) (not b!6493023) (not bm!562154) (not bm!562103) (not b!6492323) (not bm!562070) (not d!2037366) (not b!6492233) (not b!6491847) (not bm!562098) (not d!2037344) (not bm!562122) (not b!6492432) (not b!6492063) (not d!2037288) (not b!6492592) (not b!6491952) (not bm!562054) (not b!6492753) (not setNonEmpty!44230) (not b!6492421) (not b!6491873) (not b!6493017) (not bm!562036) (not d!2037274) (not b!6493005) (not b!6492659) (not b!6492921) (not b!6492607) (not b!6492990) (not b!6492535) (not b!6492059) (not d!2036982) (not b!6492246) (not b!6492696) (not bm!562085) (not b!6492216) (not bm!562063) (not bs!1648798) (not b!6492222) (not b!6492843) (not bm!562194) (not b!6492381) (not b!6492748) (not d!2037246) (not b!6492738) (not bm!562183) (not b_lambda!245743) (not b!6493027) (not b!6492519) (not b!6492982) (not d!2037202) (not b!6492151) (not d!2037326) (not b!6492945) (not b!6492511) (not b!6492446) (not b!6492249) (not b_lambda!245797) (not b!6492012) (not d!2036946) (not bm!562187) (not bm!562163) (not b!6492874) (not b!6491959) (not b!6491949) (not b!6492883) (not d!2037230) (not bm!562147) (not b!6492630) (not bm!562051) (not bm!562080) (not d!2037276) (not setNonEmpty!44232) (not b!6492892) (not bm!562139) (not b!6492121) (not d!2037138) (not b!6492025) (not d!2037034) (not b!6491869) (not d!2036996) (not d!2037250) (not b!6492624) (not bm!562065) (not b!6492377) (not b!6492757) (not b!6492333) (not d!2037058) (not b!6492710) (not b!6492999) (not b!6492789) (not d!2037304) (not d!2037218) (not bm!562212) (not d!2037268) (not d!2037022) (not b!6492601) (not bm!562129) (not b!6492209) (not b!6492485) (not b!6492339) (not b!6492258) (not bm!562056) (not b!6492588) (not b_lambda!245799) (not b!6492929) (not b!6492313) (not b!6492871) (not d!2037060) (not b!6492445) (not b!6493015) (not b!6492083) (not bm!562158) (not d!2037308) (not b!6492791) (not d!2036884) (not bm!562081) (not b_lambda!245787) (not b!6492725) (not b!6492969) (not d!2037336) (not b!6492382) (not d!2037190) (not b!6492694) (not bm!562118) (not bm!562092) (not bm!562160) (not b_lambda!245795) (not b!6492035) (not d!2036928) (not b!6492732) (not b!6492567) (not b!6491882) (not b!6491863) (not d!2037070) (not b!6492128) (not b!6492220) (not b!6492522) (not bm!562109) (not d!2037280) (not b!6492163) (not b!6493050) (not b!6493006) (not d!2036970) (not b!6493020) (not d!2037200) (not d!2037074) (not d!2036902) (not b!6492087) (not b!6492210) (not d!2036986) (not b_lambda!245745) (not b!6491958) (not d!2037252) (not bm!562060) (not d!2036848) (not d!2036914) (not bm!562214) (not b!6493018) (not bm!562073) (not b!6492057) (not b!6492869) (not b!6491876) (not b!6492989) (not d!2037122) (not b!6492426) (not b!6492252) (not bm!562035) (not b!6492168) (not b!6492716) (not b!6493049) (not d!2037312) (not d!2037102) (not bm!562105) (not b!6492950) (not d!2036944) (not b!6492517) (not bm!562134) (not bm!562120) (not b!6492935) (not d!2036796) (not b!6492174) (not b!6492930) (not b!6493047) (not b!6492366) (not b!6492972) (not b!6493044) (not b!6492764) (not bm!562074) (not b!6492773) (not d!2037322) (not d!2037206) (not b!6492610) (not bm!562053) (not d!2037368) (not bm!562135) (not b!6491921) (not b!6492928) (not b!6492562) (not b!6492674) (not b!6492976) (not b!6492500) (not d!2037360) (not b!6492574) (not d!2037068) (not bm!562115) (not d!2036974) (not b!6492606))
(check-sat)
