; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!680790 () Bool)

(assert start!680790)

(declare-fun b!7039010 () Bool)

(assert (=> b!7039010 true))

(declare-fun b!7039016 () Bool)

(assert (=> b!7039016 true))

(declare-fun b!7039035 () Bool)

(assert (=> b!7039035 true))

(declare-fun b!7039009 () Bool)

(declare-fun e!4231574 () Bool)

(declare-fun e!4231569 () Bool)

(assert (=> b!7039009 (= e!4231574 e!4231569)))

(declare-fun res!2873481 () Bool)

(assert (=> b!7039009 (=> res!2873481 e!4231569)))

(declare-datatypes ((C!35228 0))(
  ( (C!35229 (val!27316 Int)) )
))
(declare-datatypes ((Regex!17479 0))(
  ( (ElementMatch!17479 (c!1310035 C!35228)) (Concat!26324 (regOne!35470 Regex!17479) (regTwo!35470 Regex!17479)) (EmptyExpr!17479) (Star!17479 (reg!17808 Regex!17479)) (EmptyLang!17479) (Union!17479 (regOne!35471 Regex!17479) (regTwo!35471 Regex!17479)) )
))
(declare-datatypes ((List!67965 0))(
  ( (Nil!67841) (Cons!67841 (h!74289 Regex!17479) (t!381736 List!67965)) )
))
(declare-datatypes ((Context!12950 0))(
  ( (Context!12951 (exprs!6975 List!67965)) )
))
(declare-fun lt!2522641 () Context!12950)

(declare-fun nullable!7190 (Regex!17479) Bool)

(assert (=> b!7039009 (= res!2873481 (not (nullable!7190 (h!74289 (exprs!6975 lt!2522641)))))))

(declare-fun lt!2522678 () Context!12950)

(declare-fun lt!2522626 () List!67965)

(assert (=> b!7039009 (= lt!2522678 (Context!12951 lt!2522626))))

(declare-fun tail!13579 (List!67965) List!67965)

(assert (=> b!7039009 (= lt!2522626 (tail!13579 (exprs!6975 lt!2522641)))))

(declare-fun e!4231584 () Bool)

(declare-fun e!4231580 () Bool)

(assert (=> b!7039010 (= e!4231584 (not e!4231580))))

(declare-fun res!2873492 () Bool)

(assert (=> b!7039010 (=> res!2873492 e!4231580)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2522649 () (InoxSet Context!12950))

(declare-datatypes ((List!67966 0))(
  ( (Nil!67842) (Cons!67842 (h!74290 C!35228) (t!381737 List!67966)) )
))
(declare-fun s!7408 () List!67966)

(declare-fun matchZipper!3019 ((InoxSet Context!12950) List!67966) Bool)

(assert (=> b!7039010 (= res!2873492 (not (matchZipper!3019 lt!2522649 s!7408)))))

(declare-fun lt!2522666 () Context!12950)

(assert (=> b!7039010 (= lt!2522649 (store ((as const (Array Context!12950 Bool)) false) lt!2522666 true))))

(declare-fun lt!2522682 () (InoxSet Context!12950))

(declare-fun lambda!416157 () Int)

(declare-fun getWitness!1496 ((InoxSet Context!12950) Int) Context!12950)

(assert (=> b!7039010 (= lt!2522666 (getWitness!1496 lt!2522682 lambda!416157))))

(declare-datatypes ((List!67967 0))(
  ( (Nil!67843) (Cons!67843 (h!74291 Context!12950) (t!381738 List!67967)) )
))
(declare-fun lt!2522639 () List!67967)

(declare-fun exists!3417 (List!67967 Int) Bool)

(assert (=> b!7039010 (exists!3417 lt!2522639 lambda!416157)))

(declare-datatypes ((Unit!161638 0))(
  ( (Unit!161639) )
))
(declare-fun lt!2522683 () Unit!161638)

(declare-fun lemmaZipperMatchesExistsMatchingContext!418 (List!67967 List!67966) Unit!161638)

(assert (=> b!7039010 (= lt!2522683 (lemmaZipperMatchesExistsMatchingContext!418 lt!2522639 s!7408))))

(declare-fun toList!10822 ((InoxSet Context!12950)) List!67967)

(assert (=> b!7039010 (= lt!2522639 (toList!10822 lt!2522682))))

(declare-fun b!7039011 () Bool)

(declare-fun e!4231583 () Bool)

(declare-fun e!4231568 () Bool)

(assert (=> b!7039011 (= e!4231583 e!4231568)))

(declare-fun res!2873484 () Bool)

(assert (=> b!7039011 (=> res!2873484 e!4231568)))

(declare-fun e!4231582 () Bool)

(assert (=> b!7039011 (= res!2873484 e!4231582)))

(declare-fun res!2873469 () Bool)

(assert (=> b!7039011 (=> (not res!2873469) (not e!4231582))))

(declare-fun lt!2522631 () Bool)

(declare-fun lt!2522688 () Bool)

(assert (=> b!7039011 (= res!2873469 (not (= lt!2522631 lt!2522688)))))

(declare-fun lt!2522671 () (InoxSet Context!12950))

(assert (=> b!7039011 (= lt!2522631 (matchZipper!3019 lt!2522671 (t!381737 s!7408)))))

(declare-fun lt!2522629 () Unit!161638)

(declare-fun ct2!306 () Context!12950)

(declare-fun lambda!416159 () Int)

(declare-fun lemmaConcatPreservesForall!800 (List!67965 List!67965 Int) Unit!161638)

(assert (=> b!7039011 (= lt!2522629 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun lt!2522630 () (InoxSet Context!12950))

(declare-fun e!4231566 () Bool)

(assert (=> b!7039011 (= (matchZipper!3019 lt!2522630 (t!381737 s!7408)) e!4231566)))

(declare-fun res!2873465 () Bool)

(assert (=> b!7039011 (=> res!2873465 e!4231566)))

(assert (=> b!7039011 (= res!2873465 lt!2522688)))

(declare-fun lt!2522642 () (InoxSet Context!12950))

(assert (=> b!7039011 (= lt!2522688 (matchZipper!3019 lt!2522642 (t!381737 s!7408)))))

(declare-fun lt!2522657 () (InoxSet Context!12950))

(declare-fun lt!2522681 () Unit!161638)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1552 ((InoxSet Context!12950) (InoxSet Context!12950) List!67966) Unit!161638)

(assert (=> b!7039011 (= lt!2522681 (lemmaZipperConcatMatchesSameAsBothZippers!1552 lt!2522642 lt!2522657 (t!381737 s!7408)))))

(declare-fun lt!2522684 () Unit!161638)

(assert (=> b!7039011 (= lt!2522684 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun lt!2522663 () Unit!161638)

(assert (=> b!7039011 (= lt!2522663 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun setIsEmpty!49294 () Bool)

(declare-fun setRes!49294 () Bool)

(assert (=> setIsEmpty!49294 setRes!49294))

(declare-fun setNonEmpty!49294 () Bool)

(declare-fun e!4231575 () Bool)

(declare-fun setElem!49294 () Context!12950)

(declare-fun tp!1937155 () Bool)

(declare-fun inv!86556 (Context!12950) Bool)

(assert (=> setNonEmpty!49294 (= setRes!49294 (and tp!1937155 (inv!86556 setElem!49294) e!4231575))))

(declare-fun z1!570 () (InoxSet Context!12950))

(declare-fun setRest!49294 () (InoxSet Context!12950))

(assert (=> setNonEmpty!49294 (= z1!570 ((_ map or) (store ((as const (Array Context!12950 Bool)) false) setElem!49294 true) setRest!49294))))

(declare-fun b!7039012 () Bool)

(declare-fun e!4231572 () Bool)

(declare-fun e!4231585 () Bool)

(assert (=> b!7039012 (= e!4231572 e!4231585)))

(declare-fun res!2873480 () Bool)

(assert (=> b!7039012 (=> res!2873480 e!4231585)))

(declare-fun lt!2522638 () Int)

(declare-fun contextDepthTotal!514 (Context!12950) Int)

(assert (=> b!7039012 (= res!2873480 (<= lt!2522638 (contextDepthTotal!514 lt!2522678)))))

(declare-fun lt!2522653 () Int)

(assert (=> b!7039012 (<= lt!2522638 lt!2522653)))

(declare-fun lt!2522674 () List!67967)

(declare-fun zipperDepthTotal!542 (List!67967) Int)

(assert (=> b!7039012 (= lt!2522653 (zipperDepthTotal!542 lt!2522674))))

(assert (=> b!7039012 (= lt!2522638 (contextDepthTotal!514 lt!2522641))))

(declare-fun lt!2522647 () Unit!161638)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!82 (List!67967 Context!12950) Unit!161638)

(assert (=> b!7039012 (= lt!2522647 (lemmaTotalDepthZipperLargerThanOfAnyContext!82 lt!2522674 lt!2522641))))

(assert (=> b!7039012 (= lt!2522674 (toList!10822 z1!570))))

(declare-fun lt!2522636 () Unit!161638)

(assert (=> b!7039012 (= lt!2522636 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun lt!2522675 () Unit!161638)

(assert (=> b!7039012 (= lt!2522675 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun lt!2522655 () Unit!161638)

(assert (=> b!7039012 (= lt!2522655 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun lt!2522654 () (InoxSet Context!12950))

(declare-fun lambda!416160 () Int)

(declare-fun flatMap!2426 ((InoxSet Context!12950) Int) (InoxSet Context!12950))

(declare-fun derivationStepZipperUp!2089 (Context!12950 C!35228) (InoxSet Context!12950))

(assert (=> b!7039012 (= (flatMap!2426 lt!2522654 lambda!416160) (derivationStepZipperUp!2089 lt!2522678 (h!74290 s!7408)))))

(declare-fun lt!2522632 () Unit!161638)

(declare-fun lemmaFlatMapOnSingletonSet!1940 ((InoxSet Context!12950) Context!12950 Int) Unit!161638)

(assert (=> b!7039012 (= lt!2522632 (lemmaFlatMapOnSingletonSet!1940 lt!2522654 lt!2522678 lambda!416160))))

(declare-fun lambda!416158 () Int)

(declare-fun map!15786 ((InoxSet Context!12950) Int) (InoxSet Context!12950))

(declare-fun ++!15538 (List!67965 List!67965) List!67965)

(assert (=> b!7039012 (= (map!15786 lt!2522654 lambda!416158) (store ((as const (Array Context!12950 Bool)) false) (Context!12951 (++!15538 lt!2522626 (exprs!6975 ct2!306))) true))))

(declare-fun lt!2522685 () Unit!161638)

(assert (=> b!7039012 (= lt!2522685 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun lt!2522656 () Unit!161638)

(declare-fun lemmaMapOnSingletonSet!390 ((InoxSet Context!12950) Context!12950 Int) Unit!161638)

(assert (=> b!7039012 (= lt!2522656 (lemmaMapOnSingletonSet!390 lt!2522654 lt!2522678 lambda!416158))))

(assert (=> b!7039012 (= lt!2522654 (store ((as const (Array Context!12950 Bool)) false) lt!2522678 true))))

(declare-fun b!7039013 () Bool)

(declare-fun res!2873470 () Bool)

(declare-fun e!4231581 () Bool)

(assert (=> b!7039013 (=> res!2873470 e!4231581)))

(declare-datatypes ((tuple2!68104 0))(
  ( (tuple2!68105 (_1!37355 List!67966) (_2!37355 List!67966)) )
))
(declare-fun lt!2522646 () tuple2!68104)

(declare-fun isEmpty!39583 (List!67966) Bool)

(assert (=> b!7039013 (= res!2873470 (isEmpty!39583 (_1!37355 lt!2522646)))))

(declare-fun b!7039014 () Bool)

(declare-fun e!4231578 () Bool)

(assert (=> b!7039014 (= e!4231578 e!4231572)))

(declare-fun res!2873494 () Bool)

(assert (=> b!7039014 (=> res!2873494 e!4231572)))

(declare-fun lt!2522669 () (InoxSet Context!12950))

(assert (=> b!7039014 (= res!2873494 (not (matchZipper!3019 lt!2522669 s!7408)))))

(declare-fun lt!2522637 () Unit!161638)

(assert (=> b!7039014 (= lt!2522637 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun b!7039015 () Bool)

(declare-fun res!2873487 () Bool)

(assert (=> b!7039015 (=> res!2873487 e!4231574)))

(declare-fun isEmpty!39584 (List!67965) Bool)

(assert (=> b!7039015 (= res!2873487 (isEmpty!39584 (exprs!6975 lt!2522641)))))

(declare-fun e!4231564 () Bool)

(assert (=> b!7039016 (= e!4231580 e!4231564)))

(declare-fun res!2873473 () Bool)

(assert (=> b!7039016 (=> res!2873473 e!4231564)))

(declare-fun lt!2522635 () Context!12950)

(assert (=> b!7039016 (= res!2873473 (or (not (= lt!2522635 lt!2522666)) (not (select z1!570 lt!2522641))))))

(assert (=> b!7039016 (= lt!2522635 (Context!12951 (++!15538 (exprs!6975 lt!2522641) (exprs!6975 ct2!306))))))

(declare-fun lt!2522640 () Unit!161638)

(assert (=> b!7039016 (= lt!2522640 (lemmaConcatPreservesForall!800 (exprs!6975 lt!2522641) (exprs!6975 ct2!306) lambda!416159))))

(declare-fun mapPost2!320 ((InoxSet Context!12950) Int Context!12950) Context!12950)

(assert (=> b!7039016 (= lt!2522641 (mapPost2!320 z1!570 lambda!416158 lt!2522666))))

(declare-fun b!7039017 () Bool)

(assert (=> b!7039017 (= e!4231569 e!4231583)))

(declare-fun res!2873488 () Bool)

(assert (=> b!7039017 (=> res!2873488 e!4231583)))

(assert (=> b!7039017 (= res!2873488 (not (= lt!2522671 lt!2522630)))))

(assert (=> b!7039017 (= lt!2522630 ((_ map or) lt!2522642 lt!2522657))))

(declare-fun lt!2522633 () Context!12950)

(assert (=> b!7039017 (= lt!2522657 (derivationStepZipperUp!2089 lt!2522633 (h!74290 s!7408)))))

(declare-fun derivationStepZipperDown!2143 (Regex!17479 Context!12950 C!35228) (InoxSet Context!12950))

(assert (=> b!7039017 (= lt!2522642 (derivationStepZipperDown!2143 (h!74289 (exprs!6975 lt!2522641)) lt!2522633 (h!74290 s!7408)))))

(assert (=> b!7039017 (= lt!2522633 (Context!12951 (++!15538 lt!2522626 (exprs!6975 ct2!306))))))

(declare-fun lt!2522658 () Unit!161638)

(assert (=> b!7039017 (= lt!2522658 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun lt!2522628 () Unit!161638)

(assert (=> b!7039017 (= lt!2522628 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun b!7039018 () Bool)

(declare-fun e!4231567 () Bool)

(declare-fun tp!1937154 () Bool)

(assert (=> b!7039018 (= e!4231567 tp!1937154)))

(declare-fun b!7039019 () Bool)

(declare-fun res!2873486 () Bool)

(assert (=> b!7039019 (=> (not res!2873486) (not e!4231584))))

(get-info :version)

(assert (=> b!7039019 (= res!2873486 ((_ is Cons!67842) s!7408))))

(declare-fun b!7039021 () Bool)

(assert (=> b!7039021 (= e!4231582 (not (matchZipper!3019 lt!2522657 (t!381737 s!7408))))))

(declare-fun lt!2522686 () Unit!161638)

(assert (=> b!7039021 (= lt!2522686 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun b!7039022 () Bool)

(declare-fun e!4231570 () Bool)

(assert (=> b!7039022 (= e!4231570 e!4231578)))

(declare-fun res!2873468 () Bool)

(assert (=> b!7039022 (=> res!2873468 e!4231578)))

(declare-fun derivationStepZipper!2935 ((InoxSet Context!12950) C!35228) (InoxSet Context!12950))

(assert (=> b!7039022 (= res!2873468 (not (= (derivationStepZipper!2935 lt!2522669 (h!74290 s!7408)) lt!2522657)))))

(declare-fun lt!2522676 () Unit!161638)

(assert (=> b!7039022 (= lt!2522676 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun lt!2522625 () Unit!161638)

(assert (=> b!7039022 (= lt!2522625 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(assert (=> b!7039022 (= (flatMap!2426 lt!2522669 lambda!416160) (derivationStepZipperUp!2089 lt!2522633 (h!74290 s!7408)))))

(declare-fun lt!2522643 () Unit!161638)

(assert (=> b!7039022 (= lt!2522643 (lemmaFlatMapOnSingletonSet!1940 lt!2522669 lt!2522633 lambda!416160))))

(assert (=> b!7039022 (= lt!2522669 (store ((as const (Array Context!12950 Bool)) false) lt!2522633 true))))

(declare-fun lt!2522670 () Unit!161638)

(assert (=> b!7039022 (= lt!2522670 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun lt!2522660 () Unit!161638)

(assert (=> b!7039022 (= lt!2522660 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun b!7039023 () Bool)

(declare-fun res!2873474 () Bool)

(assert (=> b!7039023 (=> res!2873474 e!4231580)))

(assert (=> b!7039023 (= res!2873474 (not (select lt!2522682 lt!2522666)))))

(declare-fun b!7039024 () Bool)

(declare-fun e!4231571 () Bool)

(declare-fun lt!2522659 () (InoxSet Context!12950))

(declare-fun lt!2522664 () List!67966)

(assert (=> b!7039024 (= e!4231571 (matchZipper!3019 lt!2522659 lt!2522664))))

(declare-fun b!7039025 () Bool)

(declare-fun tp!1937152 () Bool)

(assert (=> b!7039025 (= e!4231575 tp!1937152)))

(declare-fun b!7039026 () Bool)

(declare-fun e!4231573 () Bool)

(assert (=> b!7039026 (= e!4231573 (not (matchZipper!3019 lt!2522659 lt!2522664)))))

(declare-fun b!7039027 () Bool)

(declare-fun e!4231579 () Bool)

(assert (=> b!7039027 (= e!4231564 e!4231579)))

(declare-fun res!2873467 () Bool)

(assert (=> b!7039027 (=> res!2873467 e!4231579)))

(declare-fun lt!2522634 () (InoxSet Context!12950))

(assert (=> b!7039027 (= res!2873467 (not (= lt!2522634 lt!2522649)))))

(assert (=> b!7039027 (= lt!2522634 (store ((as const (Array Context!12950 Bool)) false) lt!2522635 true))))

(declare-fun lt!2522677 () Unit!161638)

(assert (=> b!7039027 (= lt!2522677 (lemmaConcatPreservesForall!800 (exprs!6975 lt!2522641) (exprs!6975 ct2!306) lambda!416159))))

(declare-fun b!7039028 () Bool)

(declare-fun res!2873475 () Bool)

(assert (=> b!7039028 (=> res!2873475 e!4231574)))

(assert (=> b!7039028 (= res!2873475 (not ((_ is Cons!67841) (exprs!6975 lt!2522641))))))

(declare-fun b!7039029 () Bool)

(declare-fun e!4231586 () Bool)

(declare-fun e!4231577 () Bool)

(assert (=> b!7039029 (= e!4231586 e!4231577)))

(declare-fun res!2873478 () Bool)

(assert (=> b!7039029 (=> res!2873478 e!4231577)))

(assert (=> b!7039029 (= res!2873478 e!4231573)))

(declare-fun res!2873471 () Bool)

(assert (=> b!7039029 (=> (not res!2873471) (not e!4231573))))

(declare-fun lt!2522627 () (InoxSet Context!12950))

(declare-fun lt!2522644 () Bool)

(assert (=> b!7039029 (= res!2873471 (not (= (matchZipper!3019 lt!2522627 (_1!37355 lt!2522646)) lt!2522644)))))

(declare-fun lt!2522679 () (InoxSet Context!12950))

(assert (=> b!7039029 (= (matchZipper!3019 lt!2522679 lt!2522664) e!4231571)))

(declare-fun res!2873485 () Bool)

(assert (=> b!7039029 (=> res!2873485 e!4231571)))

(assert (=> b!7039029 (= res!2873485 lt!2522644)))

(declare-fun lt!2522662 () (InoxSet Context!12950))

(assert (=> b!7039029 (= lt!2522644 (matchZipper!3019 lt!2522662 lt!2522664))))

(declare-fun lt!2522680 () Unit!161638)

(assert (=> b!7039029 (= lt!2522680 (lemmaZipperConcatMatchesSameAsBothZippers!1552 lt!2522662 lt!2522659 lt!2522664))))

(declare-fun tail!13580 (List!67966) List!67966)

(assert (=> b!7039029 (= lt!2522664 (tail!13580 (_1!37355 lt!2522646)))))

(declare-fun b!7039030 () Bool)

(declare-fun e!4231563 () Bool)

(assert (=> b!7039030 (= e!4231577 e!4231563)))

(declare-fun res!2873489 () Bool)

(assert (=> b!7039030 (=> res!2873489 e!4231563)))

(declare-fun lt!2522672 () C!35228)

(declare-fun lt!2522687 () (InoxSet Context!12950))

(assert (=> b!7039030 (= res!2873489 (not (= (derivationStepZipper!2935 lt!2522654 lt!2522672) lt!2522687)))))

(assert (=> b!7039030 (= lt!2522687 (derivationStepZipperUp!2089 lt!2522678 lt!2522672))))

(declare-fun head!14281 (List!67966) C!35228)

(assert (=> b!7039030 (= lt!2522672 (head!14281 (_1!37355 lt!2522646)))))

(assert (=> b!7039030 (= (flatMap!2426 lt!2522654 lambda!416160) (derivationStepZipperUp!2089 lt!2522678 (h!74290 s!7408)))))

(declare-fun lt!2522665 () Unit!161638)

(assert (=> b!7039030 (= lt!2522665 (lemmaFlatMapOnSingletonSet!1940 lt!2522654 lt!2522678 lambda!416160))))

(declare-fun b!7039031 () Bool)

(declare-fun e!4231576 () Bool)

(assert (=> b!7039031 (= e!4231576 e!4231586)))

(declare-fun res!2873491 () Bool)

(assert (=> b!7039031 (=> res!2873491 e!4231586)))

(declare-fun lt!2522652 () (InoxSet Context!12950))

(assert (=> b!7039031 (= res!2873491 (not (= lt!2522652 lt!2522679)))))

(assert (=> b!7039031 (= lt!2522679 ((_ map or) lt!2522662 lt!2522659))))

(assert (=> b!7039031 (= lt!2522659 (derivationStepZipperUp!2089 lt!2522678 (h!74290 s!7408)))))

(assert (=> b!7039031 (= lt!2522662 (derivationStepZipperDown!2143 (h!74289 (exprs!6975 lt!2522641)) lt!2522678 (h!74290 s!7408)))))

(declare-fun b!7039032 () Bool)

(assert (=> b!7039032 (= e!4231563 true)))

(declare-fun lt!2522648 () Bool)

(assert (=> b!7039032 (= lt!2522648 (matchZipper!3019 lt!2522687 lt!2522664))))

(declare-fun b!7039033 () Bool)

(assert (=> b!7039033 (= e!4231585 e!4231581)))

(declare-fun res!2873493 () Bool)

(assert (=> b!7039033 (=> res!2873493 e!4231581)))

(assert (=> b!7039033 (= res!2873493 (not (matchZipper!3019 lt!2522654 (_1!37355 lt!2522646))))))

(declare-datatypes ((Option!16884 0))(
  ( (None!16883) (Some!16883 (v!53173 tuple2!68104)) )
))
(declare-fun lt!2522668 () Option!16884)

(declare-fun get!23774 (Option!16884) tuple2!68104)

(assert (=> b!7039033 (= lt!2522646 (get!23774 lt!2522668))))

(declare-fun isDefined!13585 (Option!16884) Bool)

(assert (=> b!7039033 (isDefined!13585 lt!2522668)))

(declare-fun lt!2522661 () (InoxSet Context!12950))

(declare-fun findConcatSeparationZippers!400 ((InoxSet Context!12950) (InoxSet Context!12950) List!67966 List!67966 List!67966) Option!16884)

(assert (=> b!7039033 (= lt!2522668 (findConcatSeparationZippers!400 lt!2522654 lt!2522661 Nil!67842 s!7408 s!7408))))

(assert (=> b!7039033 (= lt!2522661 (store ((as const (Array Context!12950 Bool)) false) ct2!306 true))))

(declare-fun lt!2522645 () Unit!161638)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!388 ((InoxSet Context!12950) Context!12950 List!67966) Unit!161638)

(assert (=> b!7039033 (= lt!2522645 (lemmaConcatZipperMatchesStringThenFindConcatDefined!388 lt!2522654 ct2!306 s!7408))))

(declare-fun b!7039034 () Bool)

(declare-fun e!4231565 () Bool)

(declare-fun tp_is_empty!44183 () Bool)

(declare-fun tp!1937153 () Bool)

(assert (=> b!7039034 (= e!4231565 (and tp_is_empty!44183 tp!1937153))))

(assert (=> b!7039035 (= e!4231579 e!4231574)))

(declare-fun res!2873483 () Bool)

(assert (=> b!7039035 (=> res!2873483 e!4231574)))

(assert (=> b!7039035 (= res!2873483 (not (= (derivationStepZipper!2935 lt!2522634 (h!74290 s!7408)) lt!2522671)))))

(assert (=> b!7039035 (= (flatMap!2426 lt!2522634 lambda!416160) (derivationStepZipperUp!2089 lt!2522635 (h!74290 s!7408)))))

(declare-fun lt!2522673 () Unit!161638)

(assert (=> b!7039035 (= lt!2522673 (lemmaFlatMapOnSingletonSet!1940 lt!2522634 lt!2522635 lambda!416160))))

(assert (=> b!7039035 (= lt!2522671 (derivationStepZipperUp!2089 lt!2522635 (h!74290 s!7408)))))

(declare-fun lt!2522667 () Unit!161638)

(assert (=> b!7039035 (= lt!2522667 (lemmaConcatPreservesForall!800 (exprs!6975 lt!2522641) (exprs!6975 ct2!306) lambda!416159))))

(declare-fun b!7039036 () Bool)

(declare-fun res!2873477 () Bool)

(assert (=> b!7039036 (=> res!2873477 e!4231585)))

(assert (=> b!7039036 (= res!2873477 (>= (zipperDepthTotal!542 (Cons!67843 lt!2522678 Nil!67843)) lt!2522653))))

(declare-fun b!7039037 () Bool)

(assert (=> b!7039037 (= e!4231568 e!4231570)))

(declare-fun res!2873476 () Bool)

(assert (=> b!7039037 (=> res!2873476 e!4231570)))

(assert (=> b!7039037 (= res!2873476 (not (matchZipper!3019 lt!2522657 (t!381737 s!7408))))))

(declare-fun lt!2522651 () Unit!161638)

(assert (=> b!7039037 (= lt!2522651 (lemmaConcatPreservesForall!800 lt!2522626 (exprs!6975 ct2!306) lambda!416159))))

(declare-fun b!7039038 () Bool)

(declare-fun res!2873479 () Bool)

(assert (=> b!7039038 (=> res!2873479 e!4231581)))

(declare-fun ++!15539 (List!67966 List!67966) List!67966)

(assert (=> b!7039038 (= res!2873479 (not (= (++!15539 (_1!37355 lt!2522646) (_2!37355 lt!2522646)) s!7408)))))

(declare-fun b!7039039 () Bool)

(assert (=> b!7039039 (= e!4231566 (matchZipper!3019 lt!2522657 (t!381737 s!7408)))))

(declare-fun res!2873472 () Bool)

(assert (=> start!680790 (=> (not res!2873472) (not e!4231584))))

(assert (=> start!680790 (= res!2873472 (matchZipper!3019 lt!2522682 s!7408))))

(declare-fun appendTo!600 ((InoxSet Context!12950) Context!12950) (InoxSet Context!12950))

(assert (=> start!680790 (= lt!2522682 (appendTo!600 z1!570 ct2!306))))

(assert (=> start!680790 e!4231584))

(declare-fun condSetEmpty!49294 () Bool)

(assert (=> start!680790 (= condSetEmpty!49294 (= z1!570 ((as const (Array Context!12950 Bool)) false)))))

(assert (=> start!680790 setRes!49294))

(assert (=> start!680790 (and (inv!86556 ct2!306) e!4231567)))

(assert (=> start!680790 e!4231565))

(declare-fun b!7039020 () Bool)

(assert (=> b!7039020 (= e!4231581 e!4231576)))

(declare-fun res!2873482 () Bool)

(assert (=> b!7039020 (=> res!2873482 e!4231576)))

(assert (=> b!7039020 (= res!2873482 (not (= (derivationStepZipper!2935 lt!2522627 (h!74290 s!7408)) lt!2522652)))))

(assert (=> b!7039020 (= lt!2522652 (derivationStepZipperUp!2089 lt!2522641 (h!74290 s!7408)))))

(assert (=> b!7039020 (= (flatMap!2426 lt!2522627 lambda!416160) (derivationStepZipperUp!2089 lt!2522641 (h!74290 s!7408)))))

(declare-fun lt!2522650 () Unit!161638)

(assert (=> b!7039020 (= lt!2522650 (lemmaFlatMapOnSingletonSet!1940 lt!2522627 lt!2522641 lambda!416160))))

(assert (=> b!7039020 (= lt!2522627 (store ((as const (Array Context!12950 Bool)) false) lt!2522641 true))))

(declare-fun b!7039040 () Bool)

(declare-fun res!2873466 () Bool)

(assert (=> b!7039040 (=> res!2873466 e!4231568)))

(assert (=> b!7039040 (= res!2873466 (not lt!2522631))))

(declare-fun b!7039041 () Bool)

(declare-fun res!2873490 () Bool)

(assert (=> b!7039041 (=> res!2873490 e!4231581)))

(assert (=> b!7039041 (= res!2873490 (not (matchZipper!3019 lt!2522661 (_2!37355 lt!2522646))))))

(assert (= (and start!680790 res!2873472) b!7039019))

(assert (= (and b!7039019 res!2873486) b!7039010))

(assert (= (and b!7039010 (not res!2873492)) b!7039023))

(assert (= (and b!7039023 (not res!2873474)) b!7039016))

(assert (= (and b!7039016 (not res!2873473)) b!7039027))

(assert (= (and b!7039027 (not res!2873467)) b!7039035))

(assert (= (and b!7039035 (not res!2873483)) b!7039028))

(assert (= (and b!7039028 (not res!2873475)) b!7039015))

(assert (= (and b!7039015 (not res!2873487)) b!7039009))

(assert (= (and b!7039009 (not res!2873481)) b!7039017))

(assert (= (and b!7039017 (not res!2873488)) b!7039011))

(assert (= (and b!7039011 (not res!2873465)) b!7039039))

(assert (= (and b!7039011 res!2873469) b!7039021))

(assert (= (and b!7039011 (not res!2873484)) b!7039040))

(assert (= (and b!7039040 (not res!2873466)) b!7039037))

(assert (= (and b!7039037 (not res!2873476)) b!7039022))

(assert (= (and b!7039022 (not res!2873468)) b!7039014))

(assert (= (and b!7039014 (not res!2873494)) b!7039012))

(assert (= (and b!7039012 (not res!2873480)) b!7039036))

(assert (= (and b!7039036 (not res!2873477)) b!7039033))

(assert (= (and b!7039033 (not res!2873493)) b!7039041))

(assert (= (and b!7039041 (not res!2873490)) b!7039038))

(assert (= (and b!7039038 (not res!2873479)) b!7039013))

(assert (= (and b!7039013 (not res!2873470)) b!7039020))

(assert (= (and b!7039020 (not res!2873482)) b!7039031))

(assert (= (and b!7039031 (not res!2873491)) b!7039029))

(assert (= (and b!7039029 (not res!2873485)) b!7039024))

(assert (= (and b!7039029 res!2873471) b!7039026))

(assert (= (and b!7039029 (not res!2873478)) b!7039030))

(assert (= (and b!7039030 (not res!2873489)) b!7039032))

(assert (= (and start!680790 condSetEmpty!49294) setIsEmpty!49294))

(assert (= (and start!680790 (not condSetEmpty!49294)) setNonEmpty!49294))

(assert (= setNonEmpty!49294 b!7039025))

(assert (= start!680790 b!7039018))

(assert (= (and start!680790 ((_ is Cons!67842) s!7408)) b!7039034))

(declare-fun m!7749460 () Bool)

(assert (=> b!7039020 m!7749460))

(declare-fun m!7749462 () Bool)

(assert (=> b!7039020 m!7749462))

(declare-fun m!7749464 () Bool)

(assert (=> b!7039020 m!7749464))

(declare-fun m!7749466 () Bool)

(assert (=> b!7039020 m!7749466))

(declare-fun m!7749468 () Bool)

(assert (=> b!7039020 m!7749468))

(declare-fun m!7749470 () Bool)

(assert (=> start!680790 m!7749470))

(declare-fun m!7749472 () Bool)

(assert (=> start!680790 m!7749472))

(declare-fun m!7749474 () Bool)

(assert (=> start!680790 m!7749474))

(declare-fun m!7749476 () Bool)

(assert (=> b!7039041 m!7749476))

(declare-fun m!7749478 () Bool)

(assert (=> b!7039036 m!7749478))

(declare-fun m!7749480 () Bool)

(assert (=> b!7039031 m!7749480))

(declare-fun m!7749482 () Bool)

(assert (=> b!7039031 m!7749482))

(declare-fun m!7749484 () Bool)

(assert (=> b!7039012 m!7749484))

(declare-fun m!7749486 () Bool)

(assert (=> b!7039012 m!7749486))

(declare-fun m!7749488 () Bool)

(assert (=> b!7039012 m!7749488))

(declare-fun m!7749490 () Bool)

(assert (=> b!7039012 m!7749490))

(declare-fun m!7749492 () Bool)

(assert (=> b!7039012 m!7749492))

(declare-fun m!7749494 () Bool)

(assert (=> b!7039012 m!7749494))

(declare-fun m!7749496 () Bool)

(assert (=> b!7039012 m!7749496))

(declare-fun m!7749498 () Bool)

(assert (=> b!7039012 m!7749498))

(declare-fun m!7749500 () Bool)

(assert (=> b!7039012 m!7749500))

(declare-fun m!7749502 () Bool)

(assert (=> b!7039012 m!7749502))

(assert (=> b!7039012 m!7749480))

(declare-fun m!7749504 () Bool)

(assert (=> b!7039012 m!7749504))

(declare-fun m!7749506 () Bool)

(assert (=> b!7039012 m!7749506))

(declare-fun m!7749508 () Bool)

(assert (=> b!7039012 m!7749508))

(assert (=> b!7039012 m!7749484))

(assert (=> b!7039012 m!7749484))

(assert (=> b!7039012 m!7749484))

(declare-fun m!7749510 () Bool)

(assert (=> b!7039017 m!7749510))

(assert (=> b!7039017 m!7749484))

(assert (=> b!7039017 m!7749484))

(declare-fun m!7749512 () Bool)

(assert (=> b!7039017 m!7749512))

(assert (=> b!7039017 m!7749502))

(declare-fun m!7749514 () Bool)

(assert (=> b!7039030 m!7749514))

(declare-fun m!7749516 () Bool)

(assert (=> b!7039030 m!7749516))

(assert (=> b!7039030 m!7749486))

(assert (=> b!7039030 m!7749498))

(assert (=> b!7039030 m!7749480))

(declare-fun m!7749518 () Bool)

(assert (=> b!7039030 m!7749518))

(declare-fun m!7749520 () Bool)

(assert (=> b!7039021 m!7749520))

(assert (=> b!7039021 m!7749484))

(declare-fun m!7749522 () Bool)

(assert (=> b!7039015 m!7749522))

(declare-fun m!7749524 () Bool)

(assert (=> b!7039033 m!7749524))

(declare-fun m!7749526 () Bool)

(assert (=> b!7039033 m!7749526))

(declare-fun m!7749528 () Bool)

(assert (=> b!7039033 m!7749528))

(declare-fun m!7749530 () Bool)

(assert (=> b!7039033 m!7749530))

(declare-fun m!7749532 () Bool)

(assert (=> b!7039033 m!7749532))

(declare-fun m!7749534 () Bool)

(assert (=> b!7039033 m!7749534))

(declare-fun m!7749536 () Bool)

(assert (=> b!7039024 m!7749536))

(declare-fun m!7749538 () Bool)

(assert (=> b!7039038 m!7749538))

(declare-fun m!7749540 () Bool)

(assert (=> b!7039014 m!7749540))

(assert (=> b!7039014 m!7749484))

(assert (=> b!7039037 m!7749520))

(assert (=> b!7039037 m!7749484))

(declare-fun m!7749542 () Bool)

(assert (=> b!7039023 m!7749542))

(declare-fun m!7749544 () Bool)

(assert (=> b!7039029 m!7749544))

(declare-fun m!7749546 () Bool)

(assert (=> b!7039029 m!7749546))

(declare-fun m!7749548 () Bool)

(assert (=> b!7039029 m!7749548))

(declare-fun m!7749550 () Bool)

(assert (=> b!7039029 m!7749550))

(declare-fun m!7749552 () Bool)

(assert (=> b!7039029 m!7749552))

(assert (=> b!7039039 m!7749520))

(declare-fun m!7749554 () Bool)

(assert (=> b!7039013 m!7749554))

(assert (=> b!7039026 m!7749536))

(declare-fun m!7749556 () Bool)

(assert (=> b!7039009 m!7749556))

(declare-fun m!7749558 () Bool)

(assert (=> b!7039009 m!7749558))

(declare-fun m!7749560 () Bool)

(assert (=> b!7039022 m!7749560))

(assert (=> b!7039022 m!7749484))

(assert (=> b!7039022 m!7749484))

(assert (=> b!7039022 m!7749484))

(assert (=> b!7039022 m!7749484))

(declare-fun m!7749562 () Bool)

(assert (=> b!7039022 m!7749562))

(declare-fun m!7749564 () Bool)

(assert (=> b!7039022 m!7749564))

(assert (=> b!7039022 m!7749510))

(declare-fun m!7749566 () Bool)

(assert (=> b!7039022 m!7749566))

(assert (=> b!7039011 m!7749484))

(assert (=> b!7039011 m!7749484))

(assert (=> b!7039011 m!7749484))

(declare-fun m!7749568 () Bool)

(assert (=> b!7039011 m!7749568))

(declare-fun m!7749570 () Bool)

(assert (=> b!7039011 m!7749570))

(declare-fun m!7749572 () Bool)

(assert (=> b!7039011 m!7749572))

(declare-fun m!7749574 () Bool)

(assert (=> b!7039011 m!7749574))

(declare-fun m!7749576 () Bool)

(assert (=> setNonEmpty!49294 m!7749576))

(declare-fun m!7749578 () Bool)

(assert (=> b!7039032 m!7749578))

(declare-fun m!7749580 () Bool)

(assert (=> b!7039016 m!7749580))

(declare-fun m!7749582 () Bool)

(assert (=> b!7039016 m!7749582))

(declare-fun m!7749584 () Bool)

(assert (=> b!7039016 m!7749584))

(declare-fun m!7749586 () Bool)

(assert (=> b!7039016 m!7749586))

(declare-fun m!7749588 () Bool)

(assert (=> b!7039010 m!7749588))

(declare-fun m!7749590 () Bool)

(assert (=> b!7039010 m!7749590))

(declare-fun m!7749592 () Bool)

(assert (=> b!7039010 m!7749592))

(declare-fun m!7749594 () Bool)

(assert (=> b!7039010 m!7749594))

(declare-fun m!7749596 () Bool)

(assert (=> b!7039010 m!7749596))

(declare-fun m!7749598 () Bool)

(assert (=> b!7039010 m!7749598))

(declare-fun m!7749600 () Bool)

(assert (=> b!7039035 m!7749600))

(declare-fun m!7749602 () Bool)

(assert (=> b!7039035 m!7749602))

(assert (=> b!7039035 m!7749584))

(declare-fun m!7749604 () Bool)

(assert (=> b!7039035 m!7749604))

(declare-fun m!7749606 () Bool)

(assert (=> b!7039035 m!7749606))

(declare-fun m!7749608 () Bool)

(assert (=> b!7039027 m!7749608))

(assert (=> b!7039027 m!7749584))

(check-sat (not b!7039013) (not b!7039017) (not b!7039010) (not b!7039036) (not start!680790) (not b!7039015) (not b!7039009) (not b!7039011) (not b!7039041) (not b!7039035) (not b!7039029) (not b!7039033) (not setNonEmpty!49294) (not b!7039024) (not b!7039027) (not b!7039025) (not b!7039031) (not b!7039026) (not b!7039032) (not b!7039020) (not b!7039034) (not b!7039022) (not b!7039039) (not b!7039038) (not b!7039030) tp_is_empty!44183 (not b!7039014) (not b!7039021) (not b!7039037) (not b!7039012) (not b!7039016) (not b!7039018))
(check-sat)
