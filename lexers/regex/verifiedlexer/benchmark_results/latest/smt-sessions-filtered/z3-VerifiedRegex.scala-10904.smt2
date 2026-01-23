; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563942 () Bool)

(assert start!563942)

(declare-fun b!5356412 () Bool)

(assert (=> b!5356412 true))

(assert (=> b!5356412 true))

(declare-fun lambda!275538 () Int)

(declare-fun lambda!275537 () Int)

(assert (=> b!5356412 (not (= lambda!275538 lambda!275537))))

(assert (=> b!5356412 true))

(assert (=> b!5356412 true))

(declare-fun b!5356408 () Bool)

(assert (=> b!5356408 true))

(declare-fun b!5356393 () Bool)

(declare-fun res!2272820 () Bool)

(declare-fun e!3324678 () Bool)

(assert (=> b!5356393 (=> res!2272820 e!3324678)))

(declare-datatypes ((C!30380 0))(
  ( (C!30381 (val!24892 Int)) )
))
(declare-datatypes ((Regex!15055 0))(
  ( (ElementMatch!15055 (c!932605 C!30380)) (Concat!23900 (regOne!30622 Regex!15055) (regTwo!30622 Regex!15055)) (EmptyExpr!15055) (Star!15055 (reg!15384 Regex!15055)) (EmptyLang!15055) (Union!15055 (regOne!30623 Regex!15055) (regTwo!30623 Regex!15055)) )
))
(declare-fun lt!2182638 () Regex!15055)

(declare-fun r!7292 () Regex!15055)

(assert (=> b!5356393 (= res!2272820 (not (= lt!2182638 r!7292)))))

(declare-fun b!5356394 () Bool)

(declare-fun e!3324676 () Bool)

(declare-fun e!3324679 () Bool)

(assert (=> b!5356394 (= e!3324676 e!3324679)))

(declare-fun res!2272813 () Bool)

(assert (=> b!5356394 (=> (not res!2272813) (not e!3324679))))

(assert (=> b!5356394 (= res!2272813 (= r!7292 lt!2182638))))

(declare-datatypes ((List!61464 0))(
  ( (Nil!61340) (Cons!61340 (h!67788 Regex!15055) (t!374685 List!61464)) )
))
(declare-datatypes ((Context!8878 0))(
  ( (Context!8879 (exprs!4939 List!61464)) )
))
(declare-datatypes ((List!61465 0))(
  ( (Nil!61341) (Cons!61341 (h!67789 Context!8878) (t!374686 List!61465)) )
))
(declare-fun zl!343 () List!61465)

(declare-fun unfocusZipper!797 (List!61465) Regex!15055)

(assert (=> b!5356394 (= lt!2182638 (unfocusZipper!797 zl!343))))

(declare-fun b!5356395 () Bool)

(declare-fun e!3324668 () Bool)

(assert (=> b!5356395 (= e!3324668 true)))

(declare-fun e!3324663 () Bool)

(assert (=> b!5356395 e!3324663))

(declare-fun res!2272819 () Bool)

(assert (=> b!5356395 (=> (not res!2272819) (not e!3324663))))

(declare-fun lt!2182640 () Regex!15055)

(declare-datatypes ((List!61466 0))(
  ( (Nil!61342) (Cons!61342 (h!67790 C!30380) (t!374687 List!61466)) )
))
(declare-fun s!2326 () List!61466)

(declare-fun matchR!7240 (Regex!15055 List!61466) Bool)

(declare-fun matchRSpec!2158 (Regex!15055 List!61466) Bool)

(assert (=> b!5356395 (= res!2272819 (= (matchR!7240 lt!2182640 s!2326) (matchRSpec!2158 lt!2182640 s!2326)))))

(declare-datatypes ((Unit!153738 0))(
  ( (Unit!153739) )
))
(declare-fun lt!2182635 () Unit!153738)

(declare-fun mainMatchTheorem!2158 (Regex!15055 List!61466) Unit!153738)

(assert (=> b!5356395 (= lt!2182635 (mainMatchTheorem!2158 lt!2182640 s!2326))))

(declare-fun b!5356396 () Bool)

(declare-fun e!3324667 () Unit!153738)

(declare-fun Unit!153740 () Unit!153738)

(assert (=> b!5356396 (= e!3324667 Unit!153740)))

(declare-fun b!5356397 () Bool)

(declare-fun e!3324672 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2182634 () (InoxSet Context!8878))

(declare-fun matchZipper!1299 ((InoxSet Context!8878) List!61466) Bool)

(assert (=> b!5356397 (= e!3324672 (matchZipper!1299 lt!2182634 (t!374687 s!2326)))))

(declare-fun b!5356398 () Bool)

(declare-fun res!2272836 () Bool)

(declare-fun e!3324671 () Bool)

(assert (=> b!5356398 (=> res!2272836 e!3324671)))

(declare-fun isEmpty!33311 (List!61465) Bool)

(assert (=> b!5356398 (= res!2272836 (not (isEmpty!33311 (t!374686 zl!343))))))

(declare-fun b!5356399 () Bool)

(declare-fun res!2272834 () Bool)

(declare-fun e!3324666 () Bool)

(assert (=> b!5356399 (=> res!2272834 e!3324666)))

(declare-fun isEmpty!33312 (List!61464) Bool)

(assert (=> b!5356399 (= res!2272834 (isEmpty!33312 (t!374685 (exprs!4939 (h!67789 zl!343)))))))

(declare-fun b!5356400 () Bool)

(declare-fun e!3324674 () Bool)

(declare-fun tp_is_empty!39363 () Bool)

(assert (=> b!5356400 (= e!3324674 tp_is_empty!39363)))

(declare-fun b!5356401 () Bool)

(declare-fun res!2272833 () Bool)

(assert (=> b!5356401 (=> res!2272833 e!3324671)))

(declare-fun generalisedUnion!984 (List!61464) Regex!15055)

(declare-fun unfocusZipperList!497 (List!61465) List!61464)

(assert (=> b!5356401 (= res!2272833 (not (= r!7292 (generalisedUnion!984 (unfocusZipperList!497 zl!343)))))))

(declare-fun b!5356402 () Bool)

(declare-fun res!2272828 () Bool)

(assert (=> b!5356402 (=> res!2272828 e!3324668)))

(declare-fun lt!2182645 () Context!8878)

(declare-fun lt!2182639 () Regex!15055)

(assert (=> b!5356402 (= res!2272828 (not (= (unfocusZipper!797 (Cons!61341 lt!2182645 Nil!61341)) lt!2182639)))))

(declare-fun b!5356403 () Bool)

(declare-fun res!2272829 () Bool)

(assert (=> b!5356403 (=> res!2272829 e!3324671)))

(get-info :version)

(assert (=> b!5356403 (= res!2272829 (or ((_ is EmptyExpr!15055) r!7292) ((_ is EmptyLang!15055) r!7292) ((_ is ElementMatch!15055) r!7292) ((_ is Union!15055) r!7292) (not ((_ is Concat!23900) r!7292))))))

(declare-fun b!5356404 () Bool)

(declare-fun res!2272818 () Bool)

(declare-fun e!3324662 () Bool)

(assert (=> b!5356404 (=> res!2272818 e!3324662)))

(declare-fun e!3324665 () Bool)

(assert (=> b!5356404 (= res!2272818 e!3324665)))

(declare-fun res!2272814 () Bool)

(assert (=> b!5356404 (=> (not res!2272814) (not e!3324665))))

(assert (=> b!5356404 (= res!2272814 ((_ is Concat!23900) (regOne!30622 r!7292)))))

(declare-fun b!5356405 () Bool)

(assert (=> b!5356405 (= e!3324679 (not e!3324671))))

(declare-fun res!2272825 () Bool)

(assert (=> b!5356405 (=> res!2272825 e!3324671)))

(assert (=> b!5356405 (= res!2272825 (not ((_ is Cons!61341) zl!343)))))

(declare-fun lt!2182622 () Bool)

(declare-fun lt!2182626 () Bool)

(assert (=> b!5356405 (= lt!2182622 lt!2182626)))

(assert (=> b!5356405 (= lt!2182626 (matchRSpec!2158 r!7292 s!2326))))

(assert (=> b!5356405 (= lt!2182622 (matchR!7240 r!7292 s!2326))))

(declare-fun lt!2182630 () Unit!153738)

(assert (=> b!5356405 (= lt!2182630 (mainMatchTheorem!2158 r!7292 s!2326))))

(declare-fun b!5356406 () Bool)

(declare-fun Unit!153741 () Unit!153738)

(assert (=> b!5356406 (= e!3324667 Unit!153741)))

(declare-fun lt!2182632 () (InoxSet Context!8878))

(declare-fun lt!2182647 () Unit!153738)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!292 ((InoxSet Context!8878) (InoxSet Context!8878) List!61466) Unit!153738)

(assert (=> b!5356406 (= lt!2182647 (lemmaZipperConcatMatchesSameAsBothZippers!292 lt!2182632 lt!2182634 (t!374687 s!2326)))))

(declare-fun res!2272830 () Bool)

(assert (=> b!5356406 (= res!2272830 (matchZipper!1299 lt!2182632 (t!374687 s!2326)))))

(assert (=> b!5356406 (=> res!2272830 e!3324672)))

(assert (=> b!5356406 (= (matchZipper!1299 ((_ map or) lt!2182632 lt!2182634) (t!374687 s!2326)) e!3324672)))

(declare-fun b!5356407 () Bool)

(declare-fun e!3324677 () Bool)

(declare-fun tp!1487749 () Bool)

(assert (=> b!5356407 (= e!3324677 tp!1487749)))

(assert (=> b!5356408 (= e!3324666 e!3324662)))

(declare-fun res!2272823 () Bool)

(assert (=> b!5356408 (=> res!2272823 e!3324662)))

(assert (=> b!5356408 (= res!2272823 (or (and ((_ is ElementMatch!15055) (regOne!30622 r!7292)) (= (c!932605 (regOne!30622 r!7292)) (h!67790 s!2326))) ((_ is Union!15055) (regOne!30622 r!7292))))))

(declare-fun lt!2182636 () Unit!153738)

(assert (=> b!5356408 (= lt!2182636 e!3324667)))

(declare-fun c!932604 () Bool)

(declare-fun nullable!5224 (Regex!15055) Bool)

(assert (=> b!5356408 (= c!932604 (nullable!5224 (h!67788 (exprs!4939 (h!67789 zl!343)))))))

(declare-fun lambda!275539 () Int)

(declare-fun z!1189 () (InoxSet Context!8878))

(declare-fun flatMap!782 ((InoxSet Context!8878) Int) (InoxSet Context!8878))

(declare-fun derivationStepZipperUp!427 (Context!8878 C!30380) (InoxSet Context!8878))

(assert (=> b!5356408 (= (flatMap!782 z!1189 lambda!275539) (derivationStepZipperUp!427 (h!67789 zl!343) (h!67790 s!2326)))))

(declare-fun lt!2182643 () Unit!153738)

(declare-fun lemmaFlatMapOnSingletonSet!314 ((InoxSet Context!8878) Context!8878 Int) Unit!153738)

(assert (=> b!5356408 (= lt!2182643 (lemmaFlatMapOnSingletonSet!314 z!1189 (h!67789 zl!343) lambda!275539))))

(declare-fun lt!2182644 () Context!8878)

(assert (=> b!5356408 (= lt!2182634 (derivationStepZipperUp!427 lt!2182644 (h!67790 s!2326)))))

(declare-fun derivationStepZipperDown!503 (Regex!15055 Context!8878 C!30380) (InoxSet Context!8878))

(assert (=> b!5356408 (= lt!2182632 (derivationStepZipperDown!503 (h!67788 (exprs!4939 (h!67789 zl!343))) lt!2182644 (h!67790 s!2326)))))

(assert (=> b!5356408 (= lt!2182644 (Context!8879 (t!374685 (exprs!4939 (h!67789 zl!343)))))))

(declare-fun lt!2182651 () (InoxSet Context!8878))

(assert (=> b!5356408 (= lt!2182651 (derivationStepZipperUp!427 (Context!8879 (Cons!61340 (h!67788 (exprs!4939 (h!67789 zl!343))) (t!374685 (exprs!4939 (h!67789 zl!343))))) (h!67790 s!2326)))))

(declare-fun b!5356409 () Bool)

(declare-fun e!3324670 () Bool)

(assert (=> b!5356409 (= e!3324670 e!3324678)))

(declare-fun res!2272815 () Bool)

(assert (=> b!5356409 (=> res!2272815 e!3324678)))

(declare-fun lt!2182648 () (InoxSet Context!8878))

(declare-fun lt!2182646 () (InoxSet Context!8878))

(assert (=> b!5356409 (= res!2272815 (not (= lt!2182648 lt!2182646)))))

(declare-fun lt!2182649 () Context!8878)

(declare-fun lt!2182625 () (InoxSet Context!8878))

(assert (=> b!5356409 (= (flatMap!782 lt!2182625 lambda!275539) (derivationStepZipperUp!427 lt!2182649 (h!67790 s!2326)))))

(declare-fun lt!2182621 () Unit!153738)

(assert (=> b!5356409 (= lt!2182621 (lemmaFlatMapOnSingletonSet!314 lt!2182625 lt!2182649 lambda!275539))))

(declare-fun lt!2182641 () (InoxSet Context!8878))

(assert (=> b!5356409 (= lt!2182641 (derivationStepZipperUp!427 lt!2182649 (h!67790 s!2326)))))

(declare-fun derivationStepZipper!1294 ((InoxSet Context!8878) C!30380) (InoxSet Context!8878))

(assert (=> b!5356409 (= lt!2182648 (derivationStepZipper!1294 lt!2182625 (h!67790 s!2326)))))

(assert (=> b!5356409 (= lt!2182625 (store ((as const (Array Context!8878 Bool)) false) lt!2182649 true))))

(declare-fun lt!2182633 () List!61464)

(assert (=> b!5356409 (= lt!2182649 (Context!8879 (Cons!61340 (reg!15384 (regOne!30622 r!7292)) lt!2182633)))))

(declare-fun b!5356410 () Bool)

(assert (=> b!5356410 (= e!3324663 (or (not lt!2182622) lt!2182626))))

(declare-fun tp!1487756 () Bool)

(declare-fun setRes!34645 () Bool)

(declare-fun e!3324680 () Bool)

(declare-fun setElem!34645 () Context!8878)

(declare-fun setNonEmpty!34645 () Bool)

(declare-fun inv!80884 (Context!8878) Bool)

(assert (=> setNonEmpty!34645 (= setRes!34645 (and tp!1487756 (inv!80884 setElem!34645) e!3324680))))

(declare-fun setRest!34645 () (InoxSet Context!8878))

(assert (=> setNonEmpty!34645 (= z!1189 ((_ map or) (store ((as const (Array Context!8878 Bool)) false) setElem!34645 true) setRest!34645))))

(declare-fun b!5356411 () Bool)

(declare-fun e!3324673 () Bool)

(assert (=> b!5356411 (= e!3324678 e!3324673)))

(declare-fun res!2272832 () Bool)

(assert (=> b!5356411 (=> res!2272832 e!3324673)))

(assert (=> b!5356411 (= res!2272832 (not (= r!7292 lt!2182639)))))

(declare-fun lt!2182631 () Regex!15055)

(assert (=> b!5356411 (= lt!2182639 (Concat!23900 lt!2182631 (regTwo!30622 r!7292)))))

(assert (=> b!5356412 (= e!3324671 e!3324666)))

(declare-fun res!2272837 () Bool)

(assert (=> b!5356412 (=> res!2272837 e!3324666)))

(declare-fun lt!2182637 () Bool)

(assert (=> b!5356412 (= res!2272837 (or (not (= lt!2182622 lt!2182637)) ((_ is Nil!61342) s!2326)))))

(declare-fun Exists!2236 (Int) Bool)

(assert (=> b!5356412 (= (Exists!2236 lambda!275537) (Exists!2236 lambda!275538))))

(declare-fun lt!2182627 () Unit!153738)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!890 (Regex!15055 Regex!15055 List!61466) Unit!153738)

(assert (=> b!5356412 (= lt!2182627 (lemmaExistCutMatchRandMatchRSpecEquivalent!890 (regOne!30622 r!7292) (regTwo!30622 r!7292) s!2326))))

(assert (=> b!5356412 (= lt!2182637 (Exists!2236 lambda!275537))))

(declare-datatypes ((tuple2!64508 0))(
  ( (tuple2!64509 (_1!35557 List!61466) (_2!35557 List!61466)) )
))
(declare-datatypes ((Option!15166 0))(
  ( (None!15165) (Some!15165 (v!51194 tuple2!64508)) )
))
(declare-fun isDefined!11869 (Option!15166) Bool)

(declare-fun findConcatSeparation!1580 (Regex!15055 Regex!15055 List!61466 List!61466 List!61466) Option!15166)

(assert (=> b!5356412 (= lt!2182637 (isDefined!11869 (findConcatSeparation!1580 (regOne!30622 r!7292) (regTwo!30622 r!7292) Nil!61342 s!2326 s!2326)))))

(declare-fun lt!2182629 () Unit!153738)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1344 (Regex!15055 Regex!15055 List!61466) Unit!153738)

(assert (=> b!5356412 (= lt!2182629 (lemmaFindConcatSeparationEquivalentToExists!1344 (regOne!30622 r!7292) (regTwo!30622 r!7292) s!2326))))

(declare-fun res!2272835 () Bool)

(assert (=> start!563942 (=> (not res!2272835) (not e!3324676))))

(declare-fun validRegex!6791 (Regex!15055) Bool)

(assert (=> start!563942 (= res!2272835 (validRegex!6791 r!7292))))

(assert (=> start!563942 e!3324676))

(assert (=> start!563942 e!3324674))

(declare-fun condSetEmpty!34645 () Bool)

(assert (=> start!563942 (= condSetEmpty!34645 (= z!1189 ((as const (Array Context!8878 Bool)) false)))))

(assert (=> start!563942 setRes!34645))

(declare-fun e!3324675 () Bool)

(assert (=> start!563942 e!3324675))

(declare-fun e!3324669 () Bool)

(assert (=> start!563942 e!3324669))

(declare-fun b!5356413 () Bool)

(declare-fun e!3324664 () Bool)

(assert (=> b!5356413 (= e!3324664 e!3324668)))

(declare-fun res!2272822 () Bool)

(assert (=> b!5356413 (=> res!2272822 e!3324668)))

(declare-fun lt!2182624 () Context!8878)

(assert (=> b!5356413 (= res!2272822 (not (= (unfocusZipper!797 (Cons!61341 lt!2182624 Nil!61341)) (reg!15384 (regOne!30622 r!7292)))))))

(declare-fun lt!2182652 () (InoxSet Context!8878))

(assert (=> b!5356413 (= (flatMap!782 lt!2182652 lambda!275539) (derivationStepZipperUp!427 lt!2182645 (h!67790 s!2326)))))

(declare-fun lt!2182628 () Unit!153738)

(assert (=> b!5356413 (= lt!2182628 (lemmaFlatMapOnSingletonSet!314 lt!2182652 lt!2182645 lambda!275539))))

(declare-fun lt!2182642 () (InoxSet Context!8878))

(assert (=> b!5356413 (= (flatMap!782 lt!2182642 lambda!275539) (derivationStepZipperUp!427 lt!2182624 (h!67790 s!2326)))))

(declare-fun lt!2182620 () Unit!153738)

(assert (=> b!5356413 (= lt!2182620 (lemmaFlatMapOnSingletonSet!314 lt!2182642 lt!2182624 lambda!275539))))

(declare-fun lt!2182623 () (InoxSet Context!8878))

(assert (=> b!5356413 (= lt!2182623 (derivationStepZipperUp!427 lt!2182645 (h!67790 s!2326)))))

(declare-fun lt!2182650 () (InoxSet Context!8878))

(assert (=> b!5356413 (= lt!2182650 (derivationStepZipperUp!427 lt!2182624 (h!67790 s!2326)))))

(assert (=> b!5356413 (= lt!2182652 (store ((as const (Array Context!8878 Bool)) false) lt!2182645 true))))

(assert (=> b!5356413 (= lt!2182642 (store ((as const (Array Context!8878 Bool)) false) lt!2182624 true))))

(assert (=> b!5356413 (= lt!2182624 (Context!8879 (Cons!61340 (reg!15384 (regOne!30622 r!7292)) Nil!61340)))))

(declare-fun b!5356414 () Bool)

(declare-fun tp!1487754 () Bool)

(assert (=> b!5356414 (= e!3324674 tp!1487754)))

(declare-fun b!5356415 () Bool)

(declare-fun res!2272816 () Bool)

(assert (=> b!5356415 (=> res!2272816 e!3324671)))

(declare-fun generalisedConcat!724 (List!61464) Regex!15055)

(assert (=> b!5356415 (= res!2272816 (not (= r!7292 (generalisedConcat!724 (exprs!4939 (h!67789 zl!343))))))))

(declare-fun b!5356416 () Bool)

(declare-fun tp!1487755 () Bool)

(declare-fun tp!1487753 () Bool)

(assert (=> b!5356416 (= e!3324674 (and tp!1487755 tp!1487753))))

(declare-fun b!5356417 () Bool)

(declare-fun res!2272831 () Bool)

(assert (=> b!5356417 (=> res!2272831 e!3324671)))

(assert (=> b!5356417 (= res!2272831 (not ((_ is Cons!61340) (exprs!4939 (h!67789 zl!343)))))))

(declare-fun b!5356418 () Bool)

(declare-fun res!2272821 () Bool)

(assert (=> b!5356418 (=> res!2272821 e!3324662)))

(assert (=> b!5356418 (= res!2272821 (or ((_ is Concat!23900) (regOne!30622 r!7292)) (not ((_ is Star!15055) (regOne!30622 r!7292)))))))

(declare-fun b!5356419 () Bool)

(assert (=> b!5356419 (= e!3324673 e!3324664)))

(declare-fun res!2272827 () Bool)

(assert (=> b!5356419 (=> res!2272827 e!3324664)))

(assert (=> b!5356419 (= res!2272827 (not (= (unfocusZipper!797 (Cons!61341 lt!2182649 Nil!61341)) lt!2182640)))))

(assert (=> b!5356419 (= lt!2182640 (Concat!23900 (reg!15384 (regOne!30622 r!7292)) lt!2182639))))

(declare-fun setIsEmpty!34645 () Bool)

(assert (=> setIsEmpty!34645 setRes!34645))

(declare-fun b!5356420 () Bool)

(declare-fun tp!1487751 () Bool)

(assert (=> b!5356420 (= e!3324680 tp!1487751)))

(declare-fun b!5356421 () Bool)

(declare-fun res!2272824 () Bool)

(assert (=> b!5356421 (=> (not res!2272824) (not e!3324676))))

(declare-fun toList!8839 ((InoxSet Context!8878)) List!61465)

(assert (=> b!5356421 (= res!2272824 (= (toList!8839 z!1189) zl!343))))

(declare-fun b!5356422 () Bool)

(declare-fun tp!1487748 () Bool)

(assert (=> b!5356422 (= e!3324675 (and (inv!80884 (h!67789 zl!343)) e!3324677 tp!1487748))))

(declare-fun b!5356423 () Bool)

(declare-fun tp!1487752 () Bool)

(assert (=> b!5356423 (= e!3324669 (and tp_is_empty!39363 tp!1487752))))

(declare-fun b!5356424 () Bool)

(assert (=> b!5356424 (= e!3324662 e!3324670)))

(declare-fun res!2272826 () Bool)

(assert (=> b!5356424 (=> res!2272826 e!3324670)))

(assert (=> b!5356424 (= res!2272826 (not (= lt!2182632 lt!2182646)))))

(assert (=> b!5356424 (= lt!2182646 (derivationStepZipperDown!503 (reg!15384 (regOne!30622 r!7292)) lt!2182645 (h!67790 s!2326)))))

(assert (=> b!5356424 (= lt!2182645 (Context!8879 lt!2182633))))

(assert (=> b!5356424 (= lt!2182633 (Cons!61340 lt!2182631 (t!374685 (exprs!4939 (h!67789 zl!343)))))))

(assert (=> b!5356424 (= lt!2182631 (Star!15055 (reg!15384 (regOne!30622 r!7292))))))

(declare-fun b!5356425 () Bool)

(declare-fun res!2272817 () Bool)

(assert (=> b!5356425 (=> res!2272817 e!3324678)))

(assert (=> b!5356425 (= res!2272817 (not (= (matchZipper!1299 lt!2182625 s!2326) (matchZipper!1299 lt!2182648 (t!374687 s!2326)))))))

(declare-fun b!5356426 () Bool)

(declare-fun tp!1487757 () Bool)

(declare-fun tp!1487750 () Bool)

(assert (=> b!5356426 (= e!3324674 (and tp!1487757 tp!1487750))))

(declare-fun b!5356427 () Bool)

(assert (=> b!5356427 (= e!3324665 (nullable!5224 (regOne!30622 (regOne!30622 r!7292))))))

(assert (= (and start!563942 res!2272835) b!5356421))

(assert (= (and b!5356421 res!2272824) b!5356394))

(assert (= (and b!5356394 res!2272813) b!5356405))

(assert (= (and b!5356405 (not res!2272825)) b!5356398))

(assert (= (and b!5356398 (not res!2272836)) b!5356415))

(assert (= (and b!5356415 (not res!2272816)) b!5356417))

(assert (= (and b!5356417 (not res!2272831)) b!5356401))

(assert (= (and b!5356401 (not res!2272833)) b!5356403))

(assert (= (and b!5356403 (not res!2272829)) b!5356412))

(assert (= (and b!5356412 (not res!2272837)) b!5356399))

(assert (= (and b!5356399 (not res!2272834)) b!5356408))

(assert (= (and b!5356408 c!932604) b!5356406))

(assert (= (and b!5356408 (not c!932604)) b!5356396))

(assert (= (and b!5356406 (not res!2272830)) b!5356397))

(assert (= (and b!5356408 (not res!2272823)) b!5356404))

(assert (= (and b!5356404 res!2272814) b!5356427))

(assert (= (and b!5356404 (not res!2272818)) b!5356418))

(assert (= (and b!5356418 (not res!2272821)) b!5356424))

(assert (= (and b!5356424 (not res!2272826)) b!5356409))

(assert (= (and b!5356409 (not res!2272815)) b!5356425))

(assert (= (and b!5356425 (not res!2272817)) b!5356393))

(assert (= (and b!5356393 (not res!2272820)) b!5356411))

(assert (= (and b!5356411 (not res!2272832)) b!5356419))

(assert (= (and b!5356419 (not res!2272827)) b!5356413))

(assert (= (and b!5356413 (not res!2272822)) b!5356402))

(assert (= (and b!5356402 (not res!2272828)) b!5356395))

(assert (= (and b!5356395 res!2272819) b!5356410))

(assert (= (and start!563942 ((_ is ElementMatch!15055) r!7292)) b!5356400))

(assert (= (and start!563942 ((_ is Concat!23900) r!7292)) b!5356426))

(assert (= (and start!563942 ((_ is Star!15055) r!7292)) b!5356414))

(assert (= (and start!563942 ((_ is Union!15055) r!7292)) b!5356416))

(assert (= (and start!563942 condSetEmpty!34645) setIsEmpty!34645))

(assert (= (and start!563942 (not condSetEmpty!34645)) setNonEmpty!34645))

(assert (= setNonEmpty!34645 b!5356420))

(assert (= b!5356422 b!5356407))

(assert (= (and start!563942 ((_ is Cons!61341) zl!343)) b!5356422))

(assert (= (and start!563942 ((_ is Cons!61342) s!2326)) b!5356423))

(declare-fun m!6386082 () Bool)

(assert (=> b!5356405 m!6386082))

(declare-fun m!6386084 () Bool)

(assert (=> b!5356405 m!6386084))

(declare-fun m!6386086 () Bool)

(assert (=> b!5356405 m!6386086))

(declare-fun m!6386088 () Bool)

(assert (=> b!5356398 m!6386088))

(declare-fun m!6386090 () Bool)

(assert (=> b!5356395 m!6386090))

(declare-fun m!6386092 () Bool)

(assert (=> b!5356395 m!6386092))

(declare-fun m!6386094 () Bool)

(assert (=> b!5356395 m!6386094))

(declare-fun m!6386096 () Bool)

(assert (=> b!5356409 m!6386096))

(declare-fun m!6386098 () Bool)

(assert (=> b!5356409 m!6386098))

(declare-fun m!6386100 () Bool)

(assert (=> b!5356409 m!6386100))

(declare-fun m!6386102 () Bool)

(assert (=> b!5356409 m!6386102))

(declare-fun m!6386104 () Bool)

(assert (=> b!5356409 m!6386104))

(declare-fun m!6386106 () Bool)

(assert (=> b!5356419 m!6386106))

(declare-fun m!6386108 () Bool)

(assert (=> setNonEmpty!34645 m!6386108))

(declare-fun m!6386110 () Bool)

(assert (=> b!5356427 m!6386110))

(declare-fun m!6386112 () Bool)

(assert (=> b!5356415 m!6386112))

(declare-fun m!6386114 () Bool)

(assert (=> b!5356397 m!6386114))

(declare-fun m!6386116 () Bool)

(assert (=> b!5356399 m!6386116))

(declare-fun m!6386118 () Bool)

(assert (=> b!5356394 m!6386118))

(declare-fun m!6386120 () Bool)

(assert (=> b!5356408 m!6386120))

(declare-fun m!6386122 () Bool)

(assert (=> b!5356408 m!6386122))

(declare-fun m!6386124 () Bool)

(assert (=> b!5356408 m!6386124))

(declare-fun m!6386126 () Bool)

(assert (=> b!5356408 m!6386126))

(declare-fun m!6386128 () Bool)

(assert (=> b!5356408 m!6386128))

(declare-fun m!6386130 () Bool)

(assert (=> b!5356408 m!6386130))

(declare-fun m!6386132 () Bool)

(assert (=> b!5356408 m!6386132))

(declare-fun m!6386134 () Bool)

(assert (=> b!5356401 m!6386134))

(assert (=> b!5356401 m!6386134))

(declare-fun m!6386136 () Bool)

(assert (=> b!5356401 m!6386136))

(declare-fun m!6386138 () Bool)

(assert (=> start!563942 m!6386138))

(declare-fun m!6386140 () Bool)

(assert (=> b!5356422 m!6386140))

(declare-fun m!6386142 () Bool)

(assert (=> b!5356424 m!6386142))

(declare-fun m!6386144 () Bool)

(assert (=> b!5356413 m!6386144))

(declare-fun m!6386146 () Bool)

(assert (=> b!5356413 m!6386146))

(declare-fun m!6386148 () Bool)

(assert (=> b!5356413 m!6386148))

(declare-fun m!6386150 () Bool)

(assert (=> b!5356413 m!6386150))

(declare-fun m!6386152 () Bool)

(assert (=> b!5356413 m!6386152))

(declare-fun m!6386154 () Bool)

(assert (=> b!5356413 m!6386154))

(declare-fun m!6386156 () Bool)

(assert (=> b!5356413 m!6386156))

(declare-fun m!6386158 () Bool)

(assert (=> b!5356413 m!6386158))

(declare-fun m!6386160 () Bool)

(assert (=> b!5356413 m!6386160))

(declare-fun m!6386162 () Bool)

(assert (=> b!5356412 m!6386162))

(declare-fun m!6386164 () Bool)

(assert (=> b!5356412 m!6386164))

(declare-fun m!6386166 () Bool)

(assert (=> b!5356412 m!6386166))

(assert (=> b!5356412 m!6386166))

(declare-fun m!6386168 () Bool)

(assert (=> b!5356412 m!6386168))

(declare-fun m!6386170 () Bool)

(assert (=> b!5356412 m!6386170))

(assert (=> b!5356412 m!6386162))

(declare-fun m!6386172 () Bool)

(assert (=> b!5356412 m!6386172))

(declare-fun m!6386174 () Bool)

(assert (=> b!5356406 m!6386174))

(declare-fun m!6386176 () Bool)

(assert (=> b!5356406 m!6386176))

(declare-fun m!6386178 () Bool)

(assert (=> b!5356406 m!6386178))

(declare-fun m!6386180 () Bool)

(assert (=> b!5356421 m!6386180))

(declare-fun m!6386182 () Bool)

(assert (=> b!5356402 m!6386182))

(declare-fun m!6386184 () Bool)

(assert (=> b!5356425 m!6386184))

(declare-fun m!6386186 () Bool)

(assert (=> b!5356425 m!6386186))

(check-sat (not b!5356395) (not start!563942) (not b!5356407) (not b!5356402) (not b!5356422) (not b!5356425) (not b!5356406) (not b!5356414) (not b!5356412) (not b!5356424) (not b!5356427) (not b!5356394) (not b!5356405) (not b!5356398) (not setNonEmpty!34645) (not b!5356408) (not b!5356426) (not b!5356421) (not b!5356416) (not b!5356423) (not b!5356415) tp_is_empty!39363 (not b!5356413) (not b!5356419) (not b!5356399) (not b!5356409) (not b!5356420) (not b!5356401) (not b!5356397))
(check-sat)
