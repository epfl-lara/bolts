; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!564382 () Bool)

(assert start!564382)

(declare-fun b!5361813 () Bool)

(assert (=> b!5361813 true))

(assert (=> b!5361813 true))

(declare-fun lambda!276164 () Int)

(declare-fun lambda!276163 () Int)

(assert (=> b!5361813 (not (= lambda!276164 lambda!276163))))

(assert (=> b!5361813 true))

(assert (=> b!5361813 true))

(declare-fun b!5361792 () Bool)

(assert (=> b!5361792 true))

(declare-fun bs!1241914 () Bool)

(declare-fun b!5361823 () Bool)

(assert (= bs!1241914 (and b!5361823 b!5361813)))

(declare-datatypes ((C!30408 0))(
  ( (C!30409 (val!24906 Int)) )
))
(declare-datatypes ((Regex!15069 0))(
  ( (ElementMatch!15069 (c!933735 C!30408)) (Concat!23914 (regOne!30650 Regex!15069) (regTwo!30650 Regex!15069)) (EmptyExpr!15069) (Star!15069 (reg!15398 Regex!15069)) (EmptyLang!15069) (Union!15069 (regOne!30651 Regex!15069) (regTwo!30651 Regex!15069)) )
))
(declare-fun r!7292 () Regex!15069)

(declare-fun lambda!276166 () Int)

(declare-fun lt!2184574 () Regex!15069)

(assert (=> bs!1241914 (= (= lt!2184574 (regOne!30650 r!7292)) (= lambda!276166 lambda!276163))))

(assert (=> bs!1241914 (not (= lambda!276166 lambda!276164))))

(assert (=> b!5361823 true))

(assert (=> b!5361823 true))

(assert (=> b!5361823 true))

(declare-fun lambda!276167 () Int)

(assert (=> bs!1241914 (not (= lambda!276167 lambda!276163))))

(assert (=> bs!1241914 (= (= lt!2184574 (regOne!30650 r!7292)) (= lambda!276167 lambda!276164))))

(assert (=> b!5361823 (not (= lambda!276167 lambda!276166))))

(assert (=> b!5361823 true))

(assert (=> b!5361823 true))

(assert (=> b!5361823 true))

(declare-fun b!5361787 () Bool)

(declare-fun e!3327648 () Bool)

(declare-fun validRegex!6805 (Regex!15069) Bool)

(assert (=> b!5361787 (= e!3327648 (validRegex!6805 (regTwo!30650 r!7292)))))

(declare-fun b!5361788 () Bool)

(declare-fun e!3327647 () Bool)

(declare-fun e!3327635 () Bool)

(assert (=> b!5361788 (= e!3327647 e!3327635)))

(declare-fun res!2275410 () Bool)

(assert (=> b!5361788 (=> res!2275410 e!3327635)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61506 0))(
  ( (Nil!61382) (Cons!61382 (h!67830 Regex!15069) (t!374727 List!61506)) )
))
(declare-datatypes ((Context!8906 0))(
  ( (Context!8907 (exprs!4953 List!61506)) )
))
(declare-fun lt!2184571 () (InoxSet Context!8906))

(declare-fun lt!2184590 () (InoxSet Context!8906))

(assert (=> b!5361788 (= res!2275410 (not (= lt!2184571 lt!2184590)))))

(declare-fun lambda!276165 () Int)

(declare-fun lt!2184584 () Context!8906)

(declare-fun lt!2184588 () (InoxSet Context!8906))

(declare-datatypes ((List!61507 0))(
  ( (Nil!61383) (Cons!61383 (h!67831 C!30408) (t!374728 List!61507)) )
))
(declare-fun s!2326 () List!61507)

(declare-fun flatMap!796 ((InoxSet Context!8906) Int) (InoxSet Context!8906))

(declare-fun derivationStepZipperUp!441 (Context!8906 C!30408) (InoxSet Context!8906))

(assert (=> b!5361788 (= (flatMap!796 lt!2184588 lambda!276165) (derivationStepZipperUp!441 lt!2184584 (h!67831 s!2326)))))

(declare-datatypes ((Unit!153794 0))(
  ( (Unit!153795) )
))
(declare-fun lt!2184585 () Unit!153794)

(declare-fun lemmaFlatMapOnSingletonSet!328 ((InoxSet Context!8906) Context!8906 Int) Unit!153794)

(assert (=> b!5361788 (= lt!2184585 (lemmaFlatMapOnSingletonSet!328 lt!2184588 lt!2184584 lambda!276165))))

(declare-fun lt!2184598 () (InoxSet Context!8906))

(assert (=> b!5361788 (= lt!2184598 (derivationStepZipperUp!441 lt!2184584 (h!67831 s!2326)))))

(declare-fun derivationStepZipper!1308 ((InoxSet Context!8906) C!30408) (InoxSet Context!8906))

(assert (=> b!5361788 (= lt!2184571 (derivationStepZipper!1308 lt!2184588 (h!67831 s!2326)))))

(assert (=> b!5361788 (= lt!2184588 (store ((as const (Array Context!8906 Bool)) false) lt!2184584 true))))

(declare-fun lt!2184583 () List!61506)

(assert (=> b!5361788 (= lt!2184584 (Context!8907 (Cons!61382 (reg!15398 (regOne!30650 r!7292)) lt!2184583)))))

(declare-fun b!5361789 () Bool)

(declare-fun res!2275394 () Bool)

(declare-fun e!3327652 () Bool)

(assert (=> b!5361789 (=> res!2275394 e!3327652)))

(declare-datatypes ((List!61508 0))(
  ( (Nil!61384) (Cons!61384 (h!67832 Context!8906) (t!374729 List!61508)) )
))
(declare-fun zl!343 () List!61508)

(declare-fun isEmpty!33355 (List!61508) Bool)

(assert (=> b!5361789 (= res!2275394 (not (isEmpty!33355 (t!374729 zl!343))))))

(declare-fun b!5361790 () Bool)

(declare-fun e!3327645 () Bool)

(declare-fun e!3327644 () Bool)

(assert (=> b!5361790 (= e!3327645 e!3327644)))

(declare-fun res!2275393 () Bool)

(assert (=> b!5361790 (=> res!2275393 e!3327644)))

(declare-fun lt!2184591 () Bool)

(assert (=> b!5361790 (= res!2275393 (not lt!2184591))))

(declare-fun e!3327636 () Bool)

(assert (=> b!5361790 e!3327636))

(declare-fun res!2275413 () Bool)

(assert (=> b!5361790 (=> (not res!2275413) (not e!3327636))))

(declare-fun lt!2184582 () Regex!15069)

(declare-fun matchR!7254 (Regex!15069 List!61507) Bool)

(declare-fun matchRSpec!2172 (Regex!15069 List!61507) Bool)

(assert (=> b!5361790 (= res!2275413 (= (matchR!7254 lt!2184582 s!2326) (matchRSpec!2172 lt!2184582 s!2326)))))

(declare-fun lt!2184596 () Unit!153794)

(declare-fun mainMatchTheorem!2172 (Regex!15069 List!61507) Unit!153794)

(assert (=> b!5361790 (= lt!2184596 (mainMatchTheorem!2172 lt!2184582 s!2326))))

(declare-fun b!5361791 () Bool)

(declare-fun e!3327633 () Bool)

(declare-fun lt!2184562 () (InoxSet Context!8906))

(declare-fun matchZipper!1313 ((InoxSet Context!8906) List!61507) Bool)

(assert (=> b!5361791 (= e!3327633 (matchZipper!1313 lt!2184562 (t!374728 s!2326)))))

(declare-fun e!3327639 () Bool)

(declare-fun e!3327651 () Bool)

(assert (=> b!5361792 (= e!3327639 e!3327651)))

(declare-fun res!2275409 () Bool)

(assert (=> b!5361792 (=> res!2275409 e!3327651)))

(get-info :version)

(assert (=> b!5361792 (= res!2275409 (or (and ((_ is ElementMatch!15069) (regOne!30650 r!7292)) (= (c!933735 (regOne!30650 r!7292)) (h!67831 s!2326))) ((_ is Union!15069) (regOne!30650 r!7292))))))

(declare-fun lt!2184564 () Unit!153794)

(declare-fun e!3327640 () Unit!153794)

(assert (=> b!5361792 (= lt!2184564 e!3327640)))

(declare-fun c!933734 () Bool)

(declare-fun nullable!5238 (Regex!15069) Bool)

(assert (=> b!5361792 (= c!933734 (nullable!5238 (h!67830 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8906))

(assert (=> b!5361792 (= (flatMap!796 z!1189 lambda!276165) (derivationStepZipperUp!441 (h!67832 zl!343) (h!67831 s!2326)))))

(declare-fun lt!2184563 () Unit!153794)

(assert (=> b!5361792 (= lt!2184563 (lemmaFlatMapOnSingletonSet!328 z!1189 (h!67832 zl!343) lambda!276165))))

(declare-fun lt!2184589 () Context!8906)

(assert (=> b!5361792 (= lt!2184562 (derivationStepZipperUp!441 lt!2184589 (h!67831 s!2326)))))

(declare-fun lt!2184567 () (InoxSet Context!8906))

(declare-fun derivationStepZipperDown!517 (Regex!15069 Context!8906 C!30408) (InoxSet Context!8906))

(assert (=> b!5361792 (= lt!2184567 (derivationStepZipperDown!517 (h!67830 (exprs!4953 (h!67832 zl!343))) lt!2184589 (h!67831 s!2326)))))

(assert (=> b!5361792 (= lt!2184589 (Context!8907 (t!374727 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun lt!2184577 () (InoxSet Context!8906))

(assert (=> b!5361792 (= lt!2184577 (derivationStepZipperUp!441 (Context!8907 (Cons!61382 (h!67830 (exprs!4953 (h!67832 zl!343))) (t!374727 (exprs!4953 (h!67832 zl!343))))) (h!67831 s!2326)))))

(declare-fun b!5361793 () Bool)

(declare-fun e!3327643 () Bool)

(assert (=> b!5361793 (= e!3327635 e!3327643)))

(declare-fun res!2275396 () Bool)

(assert (=> b!5361793 (=> res!2275396 e!3327643)))

(declare-fun lt!2184595 () Regex!15069)

(assert (=> b!5361793 (= res!2275396 (not (= r!7292 lt!2184595)))))

(assert (=> b!5361793 (= lt!2184595 (Concat!23914 lt!2184574 (regTwo!30650 r!7292)))))

(declare-fun b!5361794 () Bool)

(declare-fun e!3327650 () Bool)

(assert (=> b!5361794 (= e!3327650 (nullable!5238 (regOne!30650 (regOne!30650 r!7292))))))

(declare-fun b!5361795 () Bool)

(declare-fun e!3327632 () Bool)

(assert (=> b!5361795 (= e!3327632 e!3327645)))

(declare-fun res!2275390 () Bool)

(assert (=> b!5361795 (=> res!2275390 e!3327645)))

(declare-fun lt!2184565 () Context!8906)

(declare-fun unfocusZipper!811 (List!61508) Regex!15069)

(assert (=> b!5361795 (= res!2275390 (not (= (unfocusZipper!811 (Cons!61384 lt!2184565 Nil!61384)) (reg!15398 (regOne!30650 r!7292)))))))

(declare-fun lt!2184592 () (InoxSet Context!8906))

(declare-fun lt!2184568 () Context!8906)

(assert (=> b!5361795 (= (flatMap!796 lt!2184592 lambda!276165) (derivationStepZipperUp!441 lt!2184568 (h!67831 s!2326)))))

(declare-fun lt!2184566 () Unit!153794)

(assert (=> b!5361795 (= lt!2184566 (lemmaFlatMapOnSingletonSet!328 lt!2184592 lt!2184568 lambda!276165))))

(declare-fun lt!2184593 () (InoxSet Context!8906))

(assert (=> b!5361795 (= (flatMap!796 lt!2184593 lambda!276165) (derivationStepZipperUp!441 lt!2184565 (h!67831 s!2326)))))

(declare-fun lt!2184597 () Unit!153794)

(assert (=> b!5361795 (= lt!2184597 (lemmaFlatMapOnSingletonSet!328 lt!2184593 lt!2184565 lambda!276165))))

(declare-fun lt!2184578 () (InoxSet Context!8906))

(assert (=> b!5361795 (= lt!2184578 (derivationStepZipperUp!441 lt!2184568 (h!67831 s!2326)))))

(declare-fun lt!2184586 () (InoxSet Context!8906))

(assert (=> b!5361795 (= lt!2184586 (derivationStepZipperUp!441 lt!2184565 (h!67831 s!2326)))))

(assert (=> b!5361795 (= lt!2184592 (store ((as const (Array Context!8906 Bool)) false) lt!2184568 true))))

(assert (=> b!5361795 (= lt!2184593 (store ((as const (Array Context!8906 Bool)) false) lt!2184565 true))))

(assert (=> b!5361795 (= lt!2184565 (Context!8907 (Cons!61382 (reg!15398 (regOne!30650 r!7292)) Nil!61382)))))

(declare-fun b!5361796 () Bool)

(declare-fun res!2275404 () Bool)

(assert (=> b!5361796 (=> res!2275404 e!3327652)))

(declare-fun generalisedConcat!738 (List!61506) Regex!15069)

(assert (=> b!5361796 (= res!2275404 (not (= r!7292 (generalisedConcat!738 (exprs!4953 (h!67832 zl!343))))))))

(declare-fun b!5361797 () Bool)

(declare-fun e!3327641 () Bool)

(declare-fun tp!1488640 () Bool)

(assert (=> b!5361797 (= e!3327641 tp!1488640)))

(declare-fun res!2275411 () Bool)

(declare-fun e!3327638 () Bool)

(assert (=> start!564382 (=> (not res!2275411) (not e!3327638))))

(assert (=> start!564382 (= res!2275411 (validRegex!6805 r!7292))))

(assert (=> start!564382 e!3327638))

(declare-fun e!3327637 () Bool)

(assert (=> start!564382 e!3327637))

(declare-fun condSetEmpty!34711 () Bool)

(assert (=> start!564382 (= condSetEmpty!34711 (= z!1189 ((as const (Array Context!8906 Bool)) false)))))

(declare-fun setRes!34711 () Bool)

(assert (=> start!564382 setRes!34711))

(declare-fun e!3327649 () Bool)

(assert (=> start!564382 e!3327649))

(declare-fun e!3327642 () Bool)

(assert (=> start!564382 e!3327642))

(declare-fun b!5361786 () Bool)

(declare-fun tp_is_empty!39391 () Bool)

(assert (=> b!5361786 (= e!3327637 tp_is_empty!39391)))

(declare-fun b!5361798 () Bool)

(declare-fun e!3327646 () Bool)

(assert (=> b!5361798 (= e!3327646 (not e!3327652))))

(declare-fun res!2275417 () Bool)

(assert (=> b!5361798 (=> res!2275417 e!3327652)))

(assert (=> b!5361798 (= res!2275417 (not ((_ is Cons!61384) zl!343)))))

(declare-fun lt!2184576 () Bool)

(assert (=> b!5361798 (= lt!2184591 lt!2184576)))

(assert (=> b!5361798 (= lt!2184576 (matchRSpec!2172 r!7292 s!2326))))

(assert (=> b!5361798 (= lt!2184591 (matchR!7254 r!7292 s!2326))))

(declare-fun lt!2184573 () Unit!153794)

(assert (=> b!5361798 (= lt!2184573 (mainMatchTheorem!2172 r!7292 s!2326))))

(declare-fun tp!1488632 () Bool)

(declare-fun setElem!34711 () Context!8906)

(declare-fun setNonEmpty!34711 () Bool)

(declare-fun e!3327634 () Bool)

(declare-fun inv!80919 (Context!8906) Bool)

(assert (=> setNonEmpty!34711 (= setRes!34711 (and tp!1488632 (inv!80919 setElem!34711) e!3327634))))

(declare-fun setRest!34711 () (InoxSet Context!8906))

(assert (=> setNonEmpty!34711 (= z!1189 ((_ map or) (store ((as const (Array Context!8906 Bool)) false) setElem!34711 true) setRest!34711))))

(declare-fun setIsEmpty!34711 () Bool)

(assert (=> setIsEmpty!34711 setRes!34711))

(declare-fun b!5361799 () Bool)

(declare-fun res!2275397 () Bool)

(assert (=> b!5361799 (=> res!2275397 e!3327652)))

(declare-fun generalisedUnion!998 (List!61506) Regex!15069)

(declare-fun unfocusZipperList!511 (List!61508) List!61506)

(assert (=> b!5361799 (= res!2275397 (not (= r!7292 (generalisedUnion!998 (unfocusZipperList!511 zl!343)))))))

(declare-fun b!5361800 () Bool)

(declare-fun res!2275406 () Bool)

(assert (=> b!5361800 (=> res!2275406 e!3327651)))

(assert (=> b!5361800 (= res!2275406 (or ((_ is Concat!23914) (regOne!30650 r!7292)) (not ((_ is Star!15069) (regOne!30650 r!7292)))))))

(declare-fun b!5361801 () Bool)

(declare-fun Unit!153796 () Unit!153794)

(assert (=> b!5361801 (= e!3327640 Unit!153796)))

(declare-fun b!5361802 () Bool)

(assert (=> b!5361802 (= e!3327651 e!3327647)))

(declare-fun res!2275408 () Bool)

(assert (=> b!5361802 (=> res!2275408 e!3327647)))

(assert (=> b!5361802 (= res!2275408 (not (= lt!2184567 lt!2184590)))))

(assert (=> b!5361802 (= lt!2184590 (derivationStepZipperDown!517 (reg!15398 (regOne!30650 r!7292)) lt!2184568 (h!67831 s!2326)))))

(assert (=> b!5361802 (= lt!2184568 (Context!8907 lt!2184583))))

(assert (=> b!5361802 (= lt!2184583 (Cons!61382 lt!2184574 (t!374727 (exprs!4953 (h!67832 zl!343)))))))

(assert (=> b!5361802 (= lt!2184574 (Star!15069 (reg!15398 (regOne!30650 r!7292))))))

(declare-fun b!5361803 () Bool)

(declare-fun res!2275400 () Bool)

(assert (=> b!5361803 (=> (not res!2275400) (not e!3327638))))

(declare-fun toList!8853 ((InoxSet Context!8906)) List!61508)

(assert (=> b!5361803 (= res!2275400 (= (toList!8853 z!1189) zl!343))))

(declare-fun b!5361804 () Bool)

(assert (=> b!5361804 (= e!3327636 (or (not lt!2184591) lt!2184576))))

(declare-fun b!5361805 () Bool)

(assert (=> b!5361805 (= e!3327638 e!3327646)))

(declare-fun res!2275414 () Bool)

(assert (=> b!5361805 (=> (not res!2275414) (not e!3327646))))

(declare-fun lt!2184575 () Regex!15069)

(assert (=> b!5361805 (= res!2275414 (= r!7292 lt!2184575))))

(assert (=> b!5361805 (= lt!2184575 (unfocusZipper!811 zl!343))))

(declare-fun b!5361806 () Bool)

(declare-fun res!2275395 () Bool)

(assert (=> b!5361806 (=> res!2275395 e!3327652)))

(assert (=> b!5361806 (= res!2275395 (not ((_ is Cons!61382) (exprs!4953 (h!67832 zl!343)))))))

(declare-fun b!5361807 () Bool)

(declare-fun tp!1488637 () Bool)

(assert (=> b!5361807 (= e!3327642 (and tp_is_empty!39391 tp!1488637))))

(declare-fun b!5361808 () Bool)

(declare-fun Unit!153797 () Unit!153794)

(assert (=> b!5361808 (= e!3327640 Unit!153797)))

(declare-fun lt!2184581 () Unit!153794)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!306 ((InoxSet Context!8906) (InoxSet Context!8906) List!61507) Unit!153794)

(assert (=> b!5361808 (= lt!2184581 (lemmaZipperConcatMatchesSameAsBothZippers!306 lt!2184567 lt!2184562 (t!374728 s!2326)))))

(declare-fun res!2275407 () Bool)

(assert (=> b!5361808 (= res!2275407 (matchZipper!1313 lt!2184567 (t!374728 s!2326)))))

(assert (=> b!5361808 (=> res!2275407 e!3327633)))

(assert (=> b!5361808 (= (matchZipper!1313 ((_ map or) lt!2184567 lt!2184562) (t!374728 s!2326)) e!3327633)))

(declare-fun b!5361809 () Bool)

(declare-fun tp!1488639 () Bool)

(declare-fun tp!1488634 () Bool)

(assert (=> b!5361809 (= e!3327637 (and tp!1488639 tp!1488634))))

(declare-fun b!5361810 () Bool)

(declare-fun res!2275399 () Bool)

(assert (=> b!5361810 (=> res!2275399 e!3327645)))

(assert (=> b!5361810 (= res!2275399 (not (= (unfocusZipper!811 (Cons!61384 lt!2184568 Nil!61384)) lt!2184595)))))

(declare-fun b!5361811 () Bool)

(declare-fun res!2275415 () Bool)

(assert (=> b!5361811 (=> res!2275415 e!3327639)))

(declare-fun isEmpty!33356 (List!61506) Bool)

(assert (=> b!5361811 (= res!2275415 (isEmpty!33356 (t!374727 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun b!5361812 () Bool)

(declare-fun res!2275403 () Bool)

(assert (=> b!5361812 (=> res!2275403 e!3327635)))

(assert (=> b!5361812 (= res!2275403 (not (= (matchZipper!1313 lt!2184588 s!2326) (matchZipper!1313 lt!2184571 (t!374728 s!2326)))))))

(assert (=> b!5361813 (= e!3327652 e!3327639)))

(declare-fun res!2275416 () Bool)

(assert (=> b!5361813 (=> res!2275416 e!3327639)))

(declare-fun lt!2184594 () Bool)

(assert (=> b!5361813 (= res!2275416 (or (not (= lt!2184591 lt!2184594)) ((_ is Nil!61383) s!2326)))))

(declare-fun Exists!2250 (Int) Bool)

(assert (=> b!5361813 (= (Exists!2250 lambda!276163) (Exists!2250 lambda!276164))))

(declare-fun lt!2184572 () Unit!153794)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!904 (Regex!15069 Regex!15069 List!61507) Unit!153794)

(assert (=> b!5361813 (= lt!2184572 (lemmaExistCutMatchRandMatchRSpecEquivalent!904 (regOne!30650 r!7292) (regTwo!30650 r!7292) s!2326))))

(assert (=> b!5361813 (= lt!2184594 (Exists!2250 lambda!276163))))

(declare-datatypes ((tuple2!64536 0))(
  ( (tuple2!64537 (_1!35571 List!61507) (_2!35571 List!61507)) )
))
(declare-datatypes ((Option!15180 0))(
  ( (None!15179) (Some!15179 (v!51208 tuple2!64536)) )
))
(declare-fun isDefined!11883 (Option!15180) Bool)

(declare-fun findConcatSeparation!1594 (Regex!15069 Regex!15069 List!61507 List!61507 List!61507) Option!15180)

(assert (=> b!5361813 (= lt!2184594 (isDefined!11883 (findConcatSeparation!1594 (regOne!30650 r!7292) (regTwo!30650 r!7292) Nil!61383 s!2326 s!2326)))))

(declare-fun lt!2184570 () Unit!153794)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1358 (Regex!15069 Regex!15069 List!61507) Unit!153794)

(assert (=> b!5361813 (= lt!2184570 (lemmaFindConcatSeparationEquivalentToExists!1358 (regOne!30650 r!7292) (regTwo!30650 r!7292) s!2326))))

(declare-fun b!5361814 () Bool)

(declare-fun tp!1488638 () Bool)

(assert (=> b!5361814 (= e!3327637 tp!1488638)))

(declare-fun b!5361815 () Bool)

(declare-fun res!2275391 () Bool)

(assert (=> b!5361815 (=> res!2275391 e!3327635)))

(assert (=> b!5361815 (= res!2275391 (not (= lt!2184575 r!7292)))))

(declare-fun b!5361816 () Bool)

(declare-fun res!2275392 () Bool)

(assert (=> b!5361816 (=> res!2275392 e!3327652)))

(assert (=> b!5361816 (= res!2275392 (or ((_ is EmptyExpr!15069) r!7292) ((_ is EmptyLang!15069) r!7292) ((_ is ElementMatch!15069) r!7292) ((_ is Union!15069) r!7292) (not ((_ is Concat!23914) r!7292))))))

(declare-fun b!5361817 () Bool)

(assert (=> b!5361817 (= e!3327643 e!3327632)))

(declare-fun res!2275398 () Bool)

(assert (=> b!5361817 (=> res!2275398 e!3327632)))

(assert (=> b!5361817 (= res!2275398 (not (= (unfocusZipper!811 (Cons!61384 lt!2184584 Nil!61384)) lt!2184582)))))

(assert (=> b!5361817 (= lt!2184582 (Concat!23914 (reg!15398 (regOne!30650 r!7292)) lt!2184595))))

(declare-fun b!5361818 () Bool)

(declare-fun tp!1488633 () Bool)

(assert (=> b!5361818 (= e!3327634 tp!1488633)))

(declare-fun b!5361819 () Bool)

(declare-fun tp!1488635 () Bool)

(assert (=> b!5361819 (= e!3327649 (and (inv!80919 (h!67832 zl!343)) e!3327641 tp!1488635))))

(declare-fun b!5361820 () Bool)

(declare-fun res!2275412 () Bool)

(assert (=> b!5361820 (=> res!2275412 e!3327651)))

(assert (=> b!5361820 (= res!2275412 e!3327650)))

(declare-fun res!2275405 () Bool)

(assert (=> b!5361820 (=> (not res!2275405) (not e!3327650))))

(assert (=> b!5361820 (= res!2275405 ((_ is Concat!23914) (regOne!30650 r!7292)))))

(declare-fun b!5361821 () Bool)

(declare-fun tp!1488636 () Bool)

(declare-fun tp!1488641 () Bool)

(assert (=> b!5361821 (= e!3327637 (and tp!1488636 tp!1488641))))

(declare-fun b!5361822 () Bool)

(declare-fun res!2275402 () Bool)

(assert (=> b!5361822 (=> res!2275402 e!3327648)))

(declare-fun lt!2184569 () tuple2!64536)

(assert (=> b!5361822 (= res!2275402 (not (matchR!7254 lt!2184574 (_1!35571 lt!2184569))))))

(assert (=> b!5361823 (= e!3327644 e!3327648)))

(declare-fun res!2275401 () Bool)

(assert (=> b!5361823 (=> res!2275401 e!3327648)))

(declare-fun ++!13372 (List!61507 List!61507) List!61507)

(assert (=> b!5361823 (= res!2275401 (not (= (++!13372 (_1!35571 lt!2184569) (_2!35571 lt!2184569)) s!2326)))))

(declare-fun lt!2184579 () Option!15180)

(declare-fun get!21112 (Option!15180) tuple2!64536)

(assert (=> b!5361823 (= lt!2184569 (get!21112 lt!2184579))))

(assert (=> b!5361823 (= (Exists!2250 lambda!276166) (Exists!2250 lambda!276167))))

(declare-fun lt!2184587 () Unit!153794)

(assert (=> b!5361823 (= lt!2184587 (lemmaExistCutMatchRandMatchRSpecEquivalent!904 lt!2184574 (regTwo!30650 r!7292) s!2326))))

(assert (=> b!5361823 (= (isDefined!11883 lt!2184579) (Exists!2250 lambda!276166))))

(assert (=> b!5361823 (= lt!2184579 (findConcatSeparation!1594 lt!2184574 (regTwo!30650 r!7292) Nil!61383 s!2326 s!2326))))

(declare-fun lt!2184580 () Unit!153794)

(assert (=> b!5361823 (= lt!2184580 (lemmaFindConcatSeparationEquivalentToExists!1358 lt!2184574 (regTwo!30650 r!7292) s!2326))))

(assert (= (and start!564382 res!2275411) b!5361803))

(assert (= (and b!5361803 res!2275400) b!5361805))

(assert (= (and b!5361805 res!2275414) b!5361798))

(assert (= (and b!5361798 (not res!2275417)) b!5361789))

(assert (= (and b!5361789 (not res!2275394)) b!5361796))

(assert (= (and b!5361796 (not res!2275404)) b!5361806))

(assert (= (and b!5361806 (not res!2275395)) b!5361799))

(assert (= (and b!5361799 (not res!2275397)) b!5361816))

(assert (= (and b!5361816 (not res!2275392)) b!5361813))

(assert (= (and b!5361813 (not res!2275416)) b!5361811))

(assert (= (and b!5361811 (not res!2275415)) b!5361792))

(assert (= (and b!5361792 c!933734) b!5361808))

(assert (= (and b!5361792 (not c!933734)) b!5361801))

(assert (= (and b!5361808 (not res!2275407)) b!5361791))

(assert (= (and b!5361792 (not res!2275409)) b!5361820))

(assert (= (and b!5361820 res!2275405) b!5361794))

(assert (= (and b!5361820 (not res!2275412)) b!5361800))

(assert (= (and b!5361800 (not res!2275406)) b!5361802))

(assert (= (and b!5361802 (not res!2275408)) b!5361788))

(assert (= (and b!5361788 (not res!2275410)) b!5361812))

(assert (= (and b!5361812 (not res!2275403)) b!5361815))

(assert (= (and b!5361815 (not res!2275391)) b!5361793))

(assert (= (and b!5361793 (not res!2275396)) b!5361817))

(assert (= (and b!5361817 (not res!2275398)) b!5361795))

(assert (= (and b!5361795 (not res!2275390)) b!5361810))

(assert (= (and b!5361810 (not res!2275399)) b!5361790))

(assert (= (and b!5361790 res!2275413) b!5361804))

(assert (= (and b!5361790 (not res!2275393)) b!5361823))

(assert (= (and b!5361823 (not res!2275401)) b!5361822))

(assert (= (and b!5361822 (not res!2275402)) b!5361787))

(assert (= (and start!564382 ((_ is ElementMatch!15069) r!7292)) b!5361786))

(assert (= (and start!564382 ((_ is Concat!23914) r!7292)) b!5361821))

(assert (= (and start!564382 ((_ is Star!15069) r!7292)) b!5361814))

(assert (= (and start!564382 ((_ is Union!15069) r!7292)) b!5361809))

(assert (= (and start!564382 condSetEmpty!34711) setIsEmpty!34711))

(assert (= (and start!564382 (not condSetEmpty!34711)) setNonEmpty!34711))

(assert (= setNonEmpty!34711 b!5361818))

(assert (= b!5361819 b!5361797))

(assert (= (and start!564382 ((_ is Cons!61384) zl!343)) b!5361819))

(assert (= (and start!564382 ((_ is Cons!61383) s!2326)) b!5361807))

(declare-fun m!6390386 () Bool)

(assert (=> b!5361787 m!6390386))

(declare-fun m!6390388 () Bool)

(assert (=> setNonEmpty!34711 m!6390388))

(declare-fun m!6390390 () Bool)

(assert (=> b!5361810 m!6390390))

(declare-fun m!6390392 () Bool)

(assert (=> b!5361798 m!6390392))

(declare-fun m!6390394 () Bool)

(assert (=> b!5361798 m!6390394))

(declare-fun m!6390396 () Bool)

(assert (=> b!5361798 m!6390396))

(declare-fun m!6390398 () Bool)

(assert (=> b!5361822 m!6390398))

(declare-fun m!6390400 () Bool)

(assert (=> b!5361813 m!6390400))

(declare-fun m!6390402 () Bool)

(assert (=> b!5361813 m!6390402))

(declare-fun m!6390404 () Bool)

(assert (=> b!5361813 m!6390404))

(declare-fun m!6390406 () Bool)

(assert (=> b!5361813 m!6390406))

(declare-fun m!6390408 () Bool)

(assert (=> b!5361813 m!6390408))

(assert (=> b!5361813 m!6390400))

(assert (=> b!5361813 m!6390402))

(declare-fun m!6390410 () Bool)

(assert (=> b!5361813 m!6390410))

(declare-fun m!6390412 () Bool)

(assert (=> b!5361790 m!6390412))

(declare-fun m!6390414 () Bool)

(assert (=> b!5361790 m!6390414))

(declare-fun m!6390416 () Bool)

(assert (=> b!5361790 m!6390416))

(declare-fun m!6390418 () Bool)

(assert (=> b!5361803 m!6390418))

(declare-fun m!6390420 () Bool)

(assert (=> b!5361817 m!6390420))

(declare-fun m!6390422 () Bool)

(assert (=> b!5361802 m!6390422))

(declare-fun m!6390424 () Bool)

(assert (=> b!5361792 m!6390424))

(declare-fun m!6390426 () Bool)

(assert (=> b!5361792 m!6390426))

(declare-fun m!6390428 () Bool)

(assert (=> b!5361792 m!6390428))

(declare-fun m!6390430 () Bool)

(assert (=> b!5361792 m!6390430))

(declare-fun m!6390432 () Bool)

(assert (=> b!5361792 m!6390432))

(declare-fun m!6390434 () Bool)

(assert (=> b!5361792 m!6390434))

(declare-fun m!6390436 () Bool)

(assert (=> b!5361792 m!6390436))

(declare-fun m!6390438 () Bool)

(assert (=> b!5361788 m!6390438))

(declare-fun m!6390440 () Bool)

(assert (=> b!5361788 m!6390440))

(declare-fun m!6390442 () Bool)

(assert (=> b!5361788 m!6390442))

(declare-fun m!6390444 () Bool)

(assert (=> b!5361788 m!6390444))

(declare-fun m!6390446 () Bool)

(assert (=> b!5361788 m!6390446))

(declare-fun m!6390448 () Bool)

(assert (=> b!5361805 m!6390448))

(declare-fun m!6390450 () Bool)

(assert (=> b!5361811 m!6390450))

(declare-fun m!6390452 () Bool)

(assert (=> start!564382 m!6390452))

(declare-fun m!6390454 () Bool)

(assert (=> b!5361819 m!6390454))

(declare-fun m!6390456 () Bool)

(assert (=> b!5361823 m!6390456))

(declare-fun m!6390458 () Bool)

(assert (=> b!5361823 m!6390458))

(declare-fun m!6390460 () Bool)

(assert (=> b!5361823 m!6390460))

(declare-fun m!6390462 () Bool)

(assert (=> b!5361823 m!6390462))

(declare-fun m!6390464 () Bool)

(assert (=> b!5361823 m!6390464))

(declare-fun m!6390466 () Bool)

(assert (=> b!5361823 m!6390466))

(assert (=> b!5361823 m!6390460))

(declare-fun m!6390468 () Bool)

(assert (=> b!5361823 m!6390468))

(declare-fun m!6390470 () Bool)

(assert (=> b!5361823 m!6390470))

(declare-fun m!6390472 () Bool)

(assert (=> b!5361791 m!6390472))

(declare-fun m!6390474 () Bool)

(assert (=> b!5361795 m!6390474))

(declare-fun m!6390476 () Bool)

(assert (=> b!5361795 m!6390476))

(declare-fun m!6390478 () Bool)

(assert (=> b!5361795 m!6390478))

(declare-fun m!6390480 () Bool)

(assert (=> b!5361795 m!6390480))

(declare-fun m!6390482 () Bool)

(assert (=> b!5361795 m!6390482))

(declare-fun m!6390484 () Bool)

(assert (=> b!5361795 m!6390484))

(declare-fun m!6390486 () Bool)

(assert (=> b!5361795 m!6390486))

(declare-fun m!6390488 () Bool)

(assert (=> b!5361795 m!6390488))

(declare-fun m!6390490 () Bool)

(assert (=> b!5361795 m!6390490))

(declare-fun m!6390492 () Bool)

(assert (=> b!5361789 m!6390492))

(declare-fun m!6390494 () Bool)

(assert (=> b!5361796 m!6390494))

(declare-fun m!6390496 () Bool)

(assert (=> b!5361799 m!6390496))

(assert (=> b!5361799 m!6390496))

(declare-fun m!6390498 () Bool)

(assert (=> b!5361799 m!6390498))

(declare-fun m!6390500 () Bool)

(assert (=> b!5361794 m!6390500))

(declare-fun m!6390502 () Bool)

(assert (=> b!5361808 m!6390502))

(declare-fun m!6390504 () Bool)

(assert (=> b!5361808 m!6390504))

(declare-fun m!6390506 () Bool)

(assert (=> b!5361808 m!6390506))

(declare-fun m!6390508 () Bool)

(assert (=> b!5361812 m!6390508))

(declare-fun m!6390510 () Bool)

(assert (=> b!5361812 m!6390510))

(check-sat (not b!5361819) (not b!5361814) (not b!5361823) (not b!5361788) (not b!5361821) (not b!5361792) (not b!5361810) (not b!5361803) (not b!5361802) (not b!5361807) tp_is_empty!39391 (not b!5361812) (not setNonEmpty!34711) (not b!5361799) (not b!5361790) (not b!5361794) (not b!5361787) (not b!5361809) (not b!5361791) (not b!5361818) (not b!5361789) (not b!5361811) (not b!5361813) (not b!5361805) (not b!5361798) (not b!5361796) (not start!564382) (not b!5361797) (not b!5361822) (not b!5361795) (not b!5361817) (not b!5361808))
(check-sat)
(get-model)

(declare-fun d!1717870 () Bool)

(declare-fun e!3327703 () Bool)

(assert (=> d!1717870 e!3327703))

(declare-fun res!2275445 () Bool)

(assert (=> d!1717870 (=> (not res!2275445) (not e!3327703))))

(declare-fun lt!2184607 () List!61508)

(declare-fun noDuplicate!1345 (List!61508) Bool)

(assert (=> d!1717870 (= res!2275445 (noDuplicate!1345 lt!2184607))))

(declare-fun choose!40256 ((InoxSet Context!8906)) List!61508)

(assert (=> d!1717870 (= lt!2184607 (choose!40256 z!1189))))

(assert (=> d!1717870 (= (toList!8853 z!1189) lt!2184607)))

(declare-fun b!5361907 () Bool)

(declare-fun content!10957 (List!61508) (InoxSet Context!8906))

(assert (=> b!5361907 (= e!3327703 (= (content!10957 lt!2184607) z!1189))))

(assert (= (and d!1717870 res!2275445) b!5361907))

(declare-fun m!6390558 () Bool)

(assert (=> d!1717870 m!6390558))

(declare-fun m!6390560 () Bool)

(assert (=> d!1717870 m!6390560))

(declare-fun m!6390562 () Bool)

(assert (=> b!5361907 m!6390562))

(assert (=> b!5361803 d!1717870))

(declare-fun d!1717876 () Bool)

(declare-fun lt!2184610 () Regex!15069)

(assert (=> d!1717876 (validRegex!6805 lt!2184610)))

(assert (=> d!1717876 (= lt!2184610 (generalisedUnion!998 (unfocusZipperList!511 zl!343)))))

(assert (=> d!1717876 (= (unfocusZipper!811 zl!343) lt!2184610)))

(declare-fun bs!1241921 () Bool)

(assert (= bs!1241921 d!1717876))

(declare-fun m!6390564 () Bool)

(assert (=> bs!1241921 m!6390564))

(assert (=> bs!1241921 m!6390496))

(assert (=> bs!1241921 m!6390496))

(assert (=> bs!1241921 m!6390498))

(assert (=> b!5361805 d!1717876))

(declare-fun b!5361971 () Bool)

(declare-fun res!2275486 () Bool)

(declare-fun e!3327741 () Bool)

(assert (=> b!5361971 (=> res!2275486 e!3327741)))

(declare-fun e!3327737 () Bool)

(assert (=> b!5361971 (= res!2275486 e!3327737)))

(declare-fun res!2275489 () Bool)

(assert (=> b!5361971 (=> (not res!2275489) (not e!3327737))))

(declare-fun lt!2184625 () Bool)

(assert (=> b!5361971 (= res!2275489 lt!2184625)))

(declare-fun b!5361972 () Bool)

(declare-fun res!2275492 () Bool)

(declare-fun e!3327740 () Bool)

(assert (=> b!5361972 (=> res!2275492 e!3327740)))

(declare-fun isEmpty!33359 (List!61507) Bool)

(declare-fun tail!10598 (List!61507) List!61507)

(assert (=> b!5361972 (= res!2275492 (not (isEmpty!33359 (tail!10598 (_1!35571 lt!2184569)))))))

(declare-fun bm!383575 () Bool)

(declare-fun call!383580 () Bool)

(assert (=> bm!383575 (= call!383580 (isEmpty!33359 (_1!35571 lt!2184569)))))

(declare-fun b!5361973 () Bool)

(declare-fun e!3327743 () Bool)

(assert (=> b!5361973 (= e!3327743 e!3327740)))

(declare-fun res!2275485 () Bool)

(assert (=> b!5361973 (=> res!2275485 e!3327740)))

(assert (=> b!5361973 (= res!2275485 call!383580)))

(declare-fun b!5361974 () Bool)

(declare-fun res!2275487 () Bool)

(assert (=> b!5361974 (=> res!2275487 e!3327741)))

(assert (=> b!5361974 (= res!2275487 (not ((_ is ElementMatch!15069) lt!2184574)))))

(declare-fun e!3327738 () Bool)

(assert (=> b!5361974 (= e!3327738 e!3327741)))

(declare-fun b!5361975 () Bool)

(declare-fun res!2275491 () Bool)

(assert (=> b!5361975 (=> (not res!2275491) (not e!3327737))))

(assert (=> b!5361975 (= res!2275491 (not call!383580))))

(declare-fun b!5361976 () Bool)

(assert (=> b!5361976 (= e!3327741 e!3327743)))

(declare-fun res!2275490 () Bool)

(assert (=> b!5361976 (=> (not res!2275490) (not e!3327743))))

(assert (=> b!5361976 (= res!2275490 (not lt!2184625))))

(declare-fun b!5361977 () Bool)

(declare-fun e!3327739 () Bool)

(assert (=> b!5361977 (= e!3327739 (= lt!2184625 call!383580))))

(declare-fun b!5361978 () Bool)

(declare-fun e!3327742 () Bool)

(declare-fun derivativeStep!4212 (Regex!15069 C!30408) Regex!15069)

(declare-fun head!11501 (List!61507) C!30408)

(assert (=> b!5361978 (= e!3327742 (matchR!7254 (derivativeStep!4212 lt!2184574 (head!11501 (_1!35571 lt!2184569))) (tail!10598 (_1!35571 lt!2184569))))))

(declare-fun b!5361979 () Bool)

(assert (=> b!5361979 (= e!3327737 (= (head!11501 (_1!35571 lt!2184569)) (c!933735 lt!2184574)))))

(declare-fun b!5361980 () Bool)

(assert (=> b!5361980 (= e!3327739 e!3327738)))

(declare-fun c!933773 () Bool)

(assert (=> b!5361980 (= c!933773 ((_ is EmptyLang!15069) lt!2184574))))

(declare-fun b!5361981 () Bool)

(declare-fun res!2275488 () Bool)

(assert (=> b!5361981 (=> (not res!2275488) (not e!3327737))))

(assert (=> b!5361981 (= res!2275488 (isEmpty!33359 (tail!10598 (_1!35571 lt!2184569))))))

(declare-fun d!1717878 () Bool)

(assert (=> d!1717878 e!3327739))

(declare-fun c!933774 () Bool)

(assert (=> d!1717878 (= c!933774 ((_ is EmptyExpr!15069) lt!2184574))))

(assert (=> d!1717878 (= lt!2184625 e!3327742)))

(declare-fun c!933775 () Bool)

(assert (=> d!1717878 (= c!933775 (isEmpty!33359 (_1!35571 lt!2184569)))))

(assert (=> d!1717878 (validRegex!6805 lt!2184574)))

(assert (=> d!1717878 (= (matchR!7254 lt!2184574 (_1!35571 lt!2184569)) lt!2184625)))

(declare-fun b!5361982 () Bool)

(assert (=> b!5361982 (= e!3327740 (not (= (head!11501 (_1!35571 lt!2184569)) (c!933735 lt!2184574))))))

(declare-fun b!5361983 () Bool)

(assert (=> b!5361983 (= e!3327742 (nullable!5238 lt!2184574))))

(declare-fun b!5361984 () Bool)

(assert (=> b!5361984 (= e!3327738 (not lt!2184625))))

(assert (= (and d!1717878 c!933775) b!5361983))

(assert (= (and d!1717878 (not c!933775)) b!5361978))

(assert (= (and d!1717878 c!933774) b!5361977))

(assert (= (and d!1717878 (not c!933774)) b!5361980))

(assert (= (and b!5361980 c!933773) b!5361984))

(assert (= (and b!5361980 (not c!933773)) b!5361974))

(assert (= (and b!5361974 (not res!2275487)) b!5361971))

(assert (= (and b!5361971 res!2275489) b!5361975))

(assert (= (and b!5361975 res!2275491) b!5361981))

(assert (= (and b!5361981 res!2275488) b!5361979))

(assert (= (and b!5361971 (not res!2275486)) b!5361976))

(assert (= (and b!5361976 res!2275490) b!5361973))

(assert (= (and b!5361973 (not res!2275485)) b!5361972))

(assert (= (and b!5361972 (not res!2275492)) b!5361982))

(assert (= (or b!5361977 b!5361973 b!5361975) bm!383575))

(declare-fun m!6390594 () Bool)

(assert (=> b!5361972 m!6390594))

(assert (=> b!5361972 m!6390594))

(declare-fun m!6390596 () Bool)

(assert (=> b!5361972 m!6390596))

(declare-fun m!6390598 () Bool)

(assert (=> b!5361983 m!6390598))

(declare-fun m!6390600 () Bool)

(assert (=> b!5361979 m!6390600))

(assert (=> b!5361981 m!6390594))

(assert (=> b!5361981 m!6390594))

(assert (=> b!5361981 m!6390596))

(assert (=> b!5361982 m!6390600))

(assert (=> b!5361978 m!6390600))

(assert (=> b!5361978 m!6390600))

(declare-fun m!6390602 () Bool)

(assert (=> b!5361978 m!6390602))

(assert (=> b!5361978 m!6390594))

(assert (=> b!5361978 m!6390602))

(assert (=> b!5361978 m!6390594))

(declare-fun m!6390604 () Bool)

(assert (=> b!5361978 m!6390604))

(declare-fun m!6390608 () Bool)

(assert (=> d!1717878 m!6390608))

(declare-fun m!6390610 () Bool)

(assert (=> d!1717878 m!6390610))

(assert (=> bm!383575 m!6390608))

(assert (=> b!5361822 d!1717878))

(declare-fun b!5362020 () Bool)

(declare-fun res!2275506 () Bool)

(declare-fun e!3327772 () Bool)

(assert (=> b!5362020 (=> res!2275506 e!3327772)))

(assert (=> b!5362020 (= res!2275506 (not ((_ is Concat!23914) r!7292)))))

(declare-fun e!3327773 () Bool)

(assert (=> b!5362020 (= e!3327773 e!3327772)))

(declare-fun d!1717886 () Bool)

(declare-fun res!2275510 () Bool)

(declare-fun e!3327767 () Bool)

(assert (=> d!1717886 (=> res!2275510 e!3327767)))

(assert (=> d!1717886 (= res!2275510 ((_ is ElementMatch!15069) r!7292))))

(assert (=> d!1717886 (= (validRegex!6805 r!7292) e!3327767)))

(declare-fun b!5362021 () Bool)

(declare-fun e!3327770 () Bool)

(declare-fun call!383591 () Bool)

(assert (=> b!5362021 (= e!3327770 call!383591)))

(declare-fun b!5362022 () Bool)

(assert (=> b!5362022 (= e!3327772 e!3327770)))

(declare-fun res!2275508 () Bool)

(assert (=> b!5362022 (=> (not res!2275508) (not e!3327770))))

(declare-fun call!383592 () Bool)

(assert (=> b!5362022 (= res!2275508 call!383592)))

(declare-fun b!5362023 () Bool)

(declare-fun e!3327771 () Bool)

(assert (=> b!5362023 (= e!3327771 call!383591)))

(declare-fun b!5362024 () Bool)

(declare-fun e!3327769 () Bool)

(declare-fun call!383590 () Bool)

(assert (=> b!5362024 (= e!3327769 call!383590)))

(declare-fun b!5362025 () Bool)

(declare-fun e!3327768 () Bool)

(assert (=> b!5362025 (= e!3327768 e!3327769)))

(declare-fun res!2275507 () Bool)

(assert (=> b!5362025 (= res!2275507 (not (nullable!5238 (reg!15398 r!7292))))))

(assert (=> b!5362025 (=> (not res!2275507) (not e!3327769))))

(declare-fun bm!383585 () Bool)

(declare-fun c!933789 () Bool)

(assert (=> bm!383585 (= call!383592 (validRegex!6805 (ite c!933789 (regOne!30651 r!7292) (regOne!30650 r!7292))))))

(declare-fun bm!383586 () Bool)

(assert (=> bm!383586 (= call!383591 call!383590)))

(declare-fun b!5362026 () Bool)

(declare-fun res!2275509 () Bool)

(assert (=> b!5362026 (=> (not res!2275509) (not e!3327771))))

(assert (=> b!5362026 (= res!2275509 call!383592)))

(assert (=> b!5362026 (= e!3327773 e!3327771)))

(declare-fun b!5362027 () Bool)

(assert (=> b!5362027 (= e!3327768 e!3327773)))

(assert (=> b!5362027 (= c!933789 ((_ is Union!15069) r!7292))))

(declare-fun bm!383587 () Bool)

(declare-fun c!933788 () Bool)

(assert (=> bm!383587 (= call!383590 (validRegex!6805 (ite c!933788 (reg!15398 r!7292) (ite c!933789 (regTwo!30651 r!7292) (regTwo!30650 r!7292)))))))

(declare-fun b!5362028 () Bool)

(assert (=> b!5362028 (= e!3327767 e!3327768)))

(assert (=> b!5362028 (= c!933788 ((_ is Star!15069) r!7292))))

(assert (= (and d!1717886 (not res!2275510)) b!5362028))

(assert (= (and b!5362028 c!933788) b!5362025))

(assert (= (and b!5362028 (not c!933788)) b!5362027))

(assert (= (and b!5362025 res!2275507) b!5362024))

(assert (= (and b!5362027 c!933789) b!5362026))

(assert (= (and b!5362027 (not c!933789)) b!5362020))

(assert (= (and b!5362026 res!2275509) b!5362023))

(assert (= (and b!5362020 (not res!2275506)) b!5362022))

(assert (= (and b!5362022 res!2275508) b!5362021))

(assert (= (or b!5362023 b!5362021) bm!383586))

(assert (= (or b!5362026 b!5362022) bm!383585))

(assert (= (or b!5362024 bm!383586) bm!383587))

(declare-fun m!6390626 () Bool)

(assert (=> b!5362025 m!6390626))

(declare-fun m!6390628 () Bool)

(assert (=> bm!383585 m!6390628))

(declare-fun m!6390630 () Bool)

(assert (=> bm!383587 m!6390630))

(assert (=> start!564382 d!1717886))

(declare-fun bm!383602 () Bool)

(declare-fun call!383610 () (InoxSet Context!8906))

(declare-fun call!383607 () (InoxSet Context!8906))

(assert (=> bm!383602 (= call!383610 call!383607)))

(declare-fun b!5362082 () Bool)

(declare-fun e!3327805 () (InoxSet Context!8906))

(declare-fun e!3327808 () (InoxSet Context!8906))

(assert (=> b!5362082 (= e!3327805 e!3327808)))

(declare-fun c!933809 () Bool)

(assert (=> b!5362082 (= c!933809 ((_ is Union!15069) (reg!15398 (regOne!30650 r!7292))))))

(declare-fun b!5362083 () Bool)

(declare-fun c!933812 () Bool)

(declare-fun e!3327807 () Bool)

(assert (=> b!5362083 (= c!933812 e!3327807)))

(declare-fun res!2275526 () Bool)

(assert (=> b!5362083 (=> (not res!2275526) (not e!3327807))))

(assert (=> b!5362083 (= res!2275526 ((_ is Concat!23914) (reg!15398 (regOne!30650 r!7292))))))

(declare-fun e!3327803 () (InoxSet Context!8906))

(assert (=> b!5362083 (= e!3327808 e!3327803)))

(declare-fun b!5362084 () Bool)

(declare-fun e!3327804 () (InoxSet Context!8906))

(declare-fun call!383608 () (InoxSet Context!8906))

(assert (=> b!5362084 (= e!3327804 call!383608)))

(declare-fun bm!383603 () Bool)

(declare-fun call!383611 () List!61506)

(declare-fun call!383612 () List!61506)

(assert (=> bm!383603 (= call!383611 call!383612)))

(declare-fun bm!383604 () Bool)

(declare-fun c!933811 () Bool)

(assert (=> bm!383604 (= call!383607 (derivationStepZipperDown!517 (ite c!933809 (regOne!30651 (reg!15398 (regOne!30650 r!7292))) (ite c!933812 (regTwo!30650 (reg!15398 (regOne!30650 r!7292))) (ite c!933811 (regOne!30650 (reg!15398 (regOne!30650 r!7292))) (reg!15398 (reg!15398 (regOne!30650 r!7292)))))) (ite (or c!933809 c!933812) lt!2184568 (Context!8907 call!383611)) (h!67831 s!2326)))))

(declare-fun b!5362085 () Bool)

(assert (=> b!5362085 (= e!3327803 e!3327804)))

(assert (=> b!5362085 (= c!933811 ((_ is Concat!23914) (reg!15398 (regOne!30650 r!7292))))))

(declare-fun bm!383605 () Bool)

(assert (=> bm!383605 (= call!383608 call!383610)))

(declare-fun b!5362086 () Bool)

(assert (=> b!5362086 (= e!3327807 (nullable!5238 (regOne!30650 (reg!15398 (regOne!30650 r!7292)))))))

(declare-fun d!1717896 () Bool)

(declare-fun c!933813 () Bool)

(assert (=> d!1717896 (= c!933813 (and ((_ is ElementMatch!15069) (reg!15398 (regOne!30650 r!7292))) (= (c!933735 (reg!15398 (regOne!30650 r!7292))) (h!67831 s!2326))))))

(assert (=> d!1717896 (= (derivationStepZipperDown!517 (reg!15398 (regOne!30650 r!7292)) lt!2184568 (h!67831 s!2326)) e!3327805)))

(declare-fun call!383609 () (InoxSet Context!8906))

(declare-fun bm!383606 () Bool)

(assert (=> bm!383606 (= call!383609 (derivationStepZipperDown!517 (ite c!933809 (regTwo!30651 (reg!15398 (regOne!30650 r!7292))) (regOne!30650 (reg!15398 (regOne!30650 r!7292)))) (ite c!933809 lt!2184568 (Context!8907 call!383612)) (h!67831 s!2326)))))

(declare-fun b!5362087 () Bool)

(assert (=> b!5362087 (= e!3327808 ((_ map or) call!383607 call!383609))))

(declare-fun b!5362088 () Bool)

(assert (=> b!5362088 (= e!3327803 ((_ map or) call!383609 call!383610))))

(declare-fun b!5362089 () Bool)

(declare-fun c!933810 () Bool)

(assert (=> b!5362089 (= c!933810 ((_ is Star!15069) (reg!15398 (regOne!30650 r!7292))))))

(declare-fun e!3327806 () (InoxSet Context!8906))

(assert (=> b!5362089 (= e!3327804 e!3327806)))

(declare-fun b!5362090 () Bool)

(assert (=> b!5362090 (= e!3327806 call!383608)))

(declare-fun bm!383607 () Bool)

(declare-fun $colon$colon!1442 (List!61506 Regex!15069) List!61506)

(assert (=> bm!383607 (= call!383612 ($colon$colon!1442 (exprs!4953 lt!2184568) (ite (or c!933812 c!933811) (regTwo!30650 (reg!15398 (regOne!30650 r!7292))) (reg!15398 (regOne!30650 r!7292)))))))

(declare-fun b!5362091 () Bool)

(assert (=> b!5362091 (= e!3327806 ((as const (Array Context!8906 Bool)) false))))

(declare-fun b!5362092 () Bool)

(assert (=> b!5362092 (= e!3327805 (store ((as const (Array Context!8906 Bool)) false) lt!2184568 true))))

(assert (= (and d!1717896 c!933813) b!5362092))

(assert (= (and d!1717896 (not c!933813)) b!5362082))

(assert (= (and b!5362082 c!933809) b!5362087))

(assert (= (and b!5362082 (not c!933809)) b!5362083))

(assert (= (and b!5362083 res!2275526) b!5362086))

(assert (= (and b!5362083 c!933812) b!5362088))

(assert (= (and b!5362083 (not c!933812)) b!5362085))

(assert (= (and b!5362085 c!933811) b!5362084))

(assert (= (and b!5362085 (not c!933811)) b!5362089))

(assert (= (and b!5362089 c!933810) b!5362090))

(assert (= (and b!5362089 (not c!933810)) b!5362091))

(assert (= (or b!5362084 b!5362090) bm!383603))

(assert (= (or b!5362084 b!5362090) bm!383605))

(assert (= (or b!5362088 bm!383603) bm!383607))

(assert (= (or b!5362088 bm!383605) bm!383602))

(assert (= (or b!5362087 b!5362088) bm!383606))

(assert (= (or b!5362087 bm!383602) bm!383604))

(declare-fun m!6390718 () Bool)

(assert (=> bm!383604 m!6390718))

(declare-fun m!6390720 () Bool)

(assert (=> bm!383607 m!6390720))

(declare-fun m!6390722 () Bool)

(assert (=> bm!383606 m!6390722))

(assert (=> b!5362092 m!6390482))

(declare-fun m!6390724 () Bool)

(assert (=> b!5362086 m!6390724))

(assert (=> b!5361802 d!1717896))

(declare-fun bs!1241955 () Bool)

(declare-fun d!1717932 () Bool)

(assert (= bs!1241955 (and d!1717932 b!5361813)))

(declare-fun lambda!276195 () Int)

(assert (=> bs!1241955 (= (= lt!2184574 (regOne!30650 r!7292)) (= lambda!276195 lambda!276163))))

(assert (=> bs!1241955 (not (= lambda!276195 lambda!276164))))

(declare-fun bs!1241956 () Bool)

(assert (= bs!1241956 (and d!1717932 b!5361823)))

(assert (=> bs!1241956 (= lambda!276195 lambda!276166)))

(assert (=> bs!1241956 (not (= lambda!276195 lambda!276167))))

(assert (=> d!1717932 true))

(assert (=> d!1717932 true))

(assert (=> d!1717932 true))

(declare-fun lambda!276196 () Int)

(assert (=> bs!1241956 (not (= lambda!276196 lambda!276166))))

(assert (=> bs!1241956 (= lambda!276196 lambda!276167)))

(assert (=> bs!1241955 (not (= lambda!276196 lambda!276163))))

(assert (=> bs!1241955 (= (= lt!2184574 (regOne!30650 r!7292)) (= lambda!276196 lambda!276164))))

(declare-fun bs!1241957 () Bool)

(assert (= bs!1241957 d!1717932))

(assert (=> bs!1241957 (not (= lambda!276196 lambda!276195))))

(assert (=> d!1717932 true))

(assert (=> d!1717932 true))

(assert (=> d!1717932 true))

(assert (=> d!1717932 (= (Exists!2250 lambda!276195) (Exists!2250 lambda!276196))))

(declare-fun lt!2184650 () Unit!153794)

(declare-fun choose!40257 (Regex!15069 Regex!15069 List!61507) Unit!153794)

(assert (=> d!1717932 (= lt!2184650 (choose!40257 lt!2184574 (regTwo!30650 r!7292) s!2326))))

(assert (=> d!1717932 (validRegex!6805 lt!2184574)))

(assert (=> d!1717932 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!904 lt!2184574 (regTwo!30650 r!7292) s!2326) lt!2184650)))

(declare-fun m!6390760 () Bool)

(assert (=> bs!1241957 m!6390760))

(declare-fun m!6390762 () Bool)

(assert (=> bs!1241957 m!6390762))

(declare-fun m!6390764 () Bool)

(assert (=> bs!1241957 m!6390764))

(assert (=> bs!1241957 m!6390610))

(assert (=> b!5361823 d!1717932))

(declare-fun d!1717942 () Bool)

(declare-fun choose!40258 (Int) Bool)

(assert (=> d!1717942 (= (Exists!2250 lambda!276167) (choose!40258 lambda!276167))))

(declare-fun bs!1241960 () Bool)

(assert (= bs!1241960 d!1717942))

(declare-fun m!6390766 () Bool)

(assert (=> bs!1241960 m!6390766))

(assert (=> b!5361823 d!1717942))

(declare-fun d!1717944 () Bool)

(assert (=> d!1717944 (= (Exists!2250 lambda!276166) (choose!40258 lambda!276166))))

(declare-fun bs!1241962 () Bool)

(assert (= bs!1241962 d!1717944))

(declare-fun m!6390768 () Bool)

(assert (=> bs!1241962 m!6390768))

(assert (=> b!5361823 d!1717944))

(declare-fun b!5362250 () Bool)

(declare-fun e!3327895 () Bool)

(declare-fun lt!2184665 () Option!15180)

(assert (=> b!5362250 (= e!3327895 (= (++!13372 (_1!35571 (get!21112 lt!2184665)) (_2!35571 (get!21112 lt!2184665))) s!2326))))

(declare-fun b!5362251 () Bool)

(declare-fun e!3327896 () Bool)

(assert (=> b!5362251 (= e!3327896 (not (isDefined!11883 lt!2184665)))))

(declare-fun b!5362252 () Bool)

(declare-fun e!3327897 () Bool)

(assert (=> b!5362252 (= e!3327897 (matchR!7254 (regTwo!30650 r!7292) s!2326))))

(declare-fun b!5362253 () Bool)

(declare-fun lt!2184663 () Unit!153794)

(declare-fun lt!2184664 () Unit!153794)

(assert (=> b!5362253 (= lt!2184663 lt!2184664)))

(assert (=> b!5362253 (= (++!13372 (++!13372 Nil!61383 (Cons!61383 (h!67831 s!2326) Nil!61383)) (t!374728 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1787 (List!61507 C!30408 List!61507 List!61507) Unit!153794)

(assert (=> b!5362253 (= lt!2184664 (lemmaMoveElementToOtherListKeepsConcatEq!1787 Nil!61383 (h!67831 s!2326) (t!374728 s!2326) s!2326))))

(declare-fun e!3327899 () Option!15180)

(assert (=> b!5362253 (= e!3327899 (findConcatSeparation!1594 lt!2184574 (regTwo!30650 r!7292) (++!13372 Nil!61383 (Cons!61383 (h!67831 s!2326) Nil!61383)) (t!374728 s!2326) s!2326))))

(declare-fun b!5362254 () Bool)

(declare-fun e!3327898 () Option!15180)

(assert (=> b!5362254 (= e!3327898 (Some!15179 (tuple2!64537 Nil!61383 s!2326)))))

(declare-fun b!5362255 () Bool)

(declare-fun res!2275605 () Bool)

(assert (=> b!5362255 (=> (not res!2275605) (not e!3327895))))

(assert (=> b!5362255 (= res!2275605 (matchR!7254 lt!2184574 (_1!35571 (get!21112 lt!2184665))))))

(declare-fun b!5362256 () Bool)

(declare-fun res!2275606 () Bool)

(assert (=> b!5362256 (=> (not res!2275606) (not e!3327895))))

(assert (=> b!5362256 (= res!2275606 (matchR!7254 (regTwo!30650 r!7292) (_2!35571 (get!21112 lt!2184665))))))

(declare-fun b!5362257 () Bool)

(assert (=> b!5362257 (= e!3327898 e!3327899)))

(declare-fun c!933855 () Bool)

(assert (=> b!5362257 (= c!933855 ((_ is Nil!61383) s!2326))))

(declare-fun d!1717946 () Bool)

(assert (=> d!1717946 e!3327896))

(declare-fun res!2275604 () Bool)

(assert (=> d!1717946 (=> res!2275604 e!3327896)))

(assert (=> d!1717946 (= res!2275604 e!3327895)))

(declare-fun res!2275603 () Bool)

(assert (=> d!1717946 (=> (not res!2275603) (not e!3327895))))

(assert (=> d!1717946 (= res!2275603 (isDefined!11883 lt!2184665))))

(assert (=> d!1717946 (= lt!2184665 e!3327898)))

(declare-fun c!933856 () Bool)

(assert (=> d!1717946 (= c!933856 e!3327897)))

(declare-fun res!2275602 () Bool)

(assert (=> d!1717946 (=> (not res!2275602) (not e!3327897))))

(assert (=> d!1717946 (= res!2275602 (matchR!7254 lt!2184574 Nil!61383))))

(assert (=> d!1717946 (validRegex!6805 lt!2184574)))

(assert (=> d!1717946 (= (findConcatSeparation!1594 lt!2184574 (regTwo!30650 r!7292) Nil!61383 s!2326 s!2326) lt!2184665)))

(declare-fun b!5362258 () Bool)

(assert (=> b!5362258 (= e!3327899 None!15179)))

(assert (= (and d!1717946 res!2275602) b!5362252))

(assert (= (and d!1717946 c!933856) b!5362254))

(assert (= (and d!1717946 (not c!933856)) b!5362257))

(assert (= (and b!5362257 c!933855) b!5362258))

(assert (= (and b!5362257 (not c!933855)) b!5362253))

(assert (= (and d!1717946 res!2275603) b!5362255))

(assert (= (and b!5362255 res!2275605) b!5362256))

(assert (= (and b!5362256 res!2275606) b!5362250))

(assert (= (and d!1717946 (not res!2275604)) b!5362251))

(declare-fun m!6390804 () Bool)

(assert (=> b!5362255 m!6390804))

(declare-fun m!6390806 () Bool)

(assert (=> b!5362255 m!6390806))

(declare-fun m!6390808 () Bool)

(assert (=> d!1717946 m!6390808))

(declare-fun m!6390810 () Bool)

(assert (=> d!1717946 m!6390810))

(assert (=> d!1717946 m!6390610))

(assert (=> b!5362251 m!6390808))

(assert (=> b!5362250 m!6390804))

(declare-fun m!6390812 () Bool)

(assert (=> b!5362250 m!6390812))

(declare-fun m!6390814 () Bool)

(assert (=> b!5362252 m!6390814))

(declare-fun m!6390816 () Bool)

(assert (=> b!5362253 m!6390816))

(assert (=> b!5362253 m!6390816))

(declare-fun m!6390818 () Bool)

(assert (=> b!5362253 m!6390818))

(declare-fun m!6390820 () Bool)

(assert (=> b!5362253 m!6390820))

(assert (=> b!5362253 m!6390816))

(declare-fun m!6390822 () Bool)

(assert (=> b!5362253 m!6390822))

(assert (=> b!5362256 m!6390804))

(declare-fun m!6390824 () Bool)

(assert (=> b!5362256 m!6390824))

(assert (=> b!5361823 d!1717946))

(declare-fun d!1717956 () Bool)

(declare-fun e!3327909 () Bool)

(assert (=> d!1717956 e!3327909))

(declare-fun res!2275611 () Bool)

(assert (=> d!1717956 (=> (not res!2275611) (not e!3327909))))

(declare-fun lt!2184671 () List!61507)

(declare-fun content!10959 (List!61507) (InoxSet C!30408))

(assert (=> d!1717956 (= res!2275611 (= (content!10959 lt!2184671) ((_ map or) (content!10959 (_1!35571 lt!2184569)) (content!10959 (_2!35571 lt!2184569)))))))

(declare-fun e!3327910 () List!61507)

(assert (=> d!1717956 (= lt!2184671 e!3327910)))

(declare-fun c!933864 () Bool)

(assert (=> d!1717956 (= c!933864 ((_ is Nil!61383) (_1!35571 lt!2184569)))))

(assert (=> d!1717956 (= (++!13372 (_1!35571 lt!2184569) (_2!35571 lt!2184569)) lt!2184671)))

(declare-fun b!5362278 () Bool)

(assert (=> b!5362278 (= e!3327910 (Cons!61383 (h!67831 (_1!35571 lt!2184569)) (++!13372 (t!374728 (_1!35571 lt!2184569)) (_2!35571 lt!2184569))))))

(declare-fun b!5362277 () Bool)

(assert (=> b!5362277 (= e!3327910 (_2!35571 lt!2184569))))

(declare-fun b!5362280 () Bool)

(assert (=> b!5362280 (= e!3327909 (or (not (= (_2!35571 lt!2184569) Nil!61383)) (= lt!2184671 (_1!35571 lt!2184569))))))

(declare-fun b!5362279 () Bool)

(declare-fun res!2275612 () Bool)

(assert (=> b!5362279 (=> (not res!2275612) (not e!3327909))))

(declare-fun size!39783 (List!61507) Int)

(assert (=> b!5362279 (= res!2275612 (= (size!39783 lt!2184671) (+ (size!39783 (_1!35571 lt!2184569)) (size!39783 (_2!35571 lt!2184569)))))))

(assert (= (and d!1717956 c!933864) b!5362277))

(assert (= (and d!1717956 (not c!933864)) b!5362278))

(assert (= (and d!1717956 res!2275611) b!5362279))

(assert (= (and b!5362279 res!2275612) b!5362280))

(declare-fun m!6390842 () Bool)

(assert (=> d!1717956 m!6390842))

(declare-fun m!6390844 () Bool)

(assert (=> d!1717956 m!6390844))

(declare-fun m!6390846 () Bool)

(assert (=> d!1717956 m!6390846))

(declare-fun m!6390848 () Bool)

(assert (=> b!5362278 m!6390848))

(declare-fun m!6390850 () Bool)

(assert (=> b!5362279 m!6390850))

(declare-fun m!6390852 () Bool)

(assert (=> b!5362279 m!6390852))

(declare-fun m!6390854 () Bool)

(assert (=> b!5362279 m!6390854))

(assert (=> b!5361823 d!1717956))

(declare-fun bs!1241982 () Bool)

(declare-fun d!1717964 () Bool)

(assert (= bs!1241982 (and d!1717964 b!5361823)))

(declare-fun lambda!276207 () Int)

(assert (=> bs!1241982 (= lambda!276207 lambda!276166)))

(assert (=> bs!1241982 (not (= lambda!276207 lambda!276167))))

(declare-fun bs!1241983 () Bool)

(assert (= bs!1241983 (and d!1717964 b!5361813)))

(assert (=> bs!1241983 (= (= lt!2184574 (regOne!30650 r!7292)) (= lambda!276207 lambda!276163))))

(declare-fun bs!1241984 () Bool)

(assert (= bs!1241984 (and d!1717964 d!1717932)))

(assert (=> bs!1241984 (not (= lambda!276207 lambda!276196))))

(assert (=> bs!1241983 (not (= lambda!276207 lambda!276164))))

(assert (=> bs!1241984 (= lambda!276207 lambda!276195)))

(assert (=> d!1717964 true))

(assert (=> d!1717964 true))

(assert (=> d!1717964 true))

(assert (=> d!1717964 (= (isDefined!11883 (findConcatSeparation!1594 lt!2184574 (regTwo!30650 r!7292) Nil!61383 s!2326 s!2326)) (Exists!2250 lambda!276207))))

(declare-fun lt!2184678 () Unit!153794)

(declare-fun choose!40259 (Regex!15069 Regex!15069 List!61507) Unit!153794)

(assert (=> d!1717964 (= lt!2184678 (choose!40259 lt!2184574 (regTwo!30650 r!7292) s!2326))))

(assert (=> d!1717964 (validRegex!6805 lt!2184574)))

(assert (=> d!1717964 (= (lemmaFindConcatSeparationEquivalentToExists!1358 lt!2184574 (regTwo!30650 r!7292) s!2326) lt!2184678)))

(declare-fun bs!1241985 () Bool)

(assert (= bs!1241985 d!1717964))

(declare-fun m!6390904 () Bool)

(assert (=> bs!1241985 m!6390904))

(assert (=> bs!1241985 m!6390456))

(assert (=> bs!1241985 m!6390610))

(assert (=> bs!1241985 m!6390456))

(declare-fun m!6390906 () Bool)

(assert (=> bs!1241985 m!6390906))

(declare-fun m!6390908 () Bool)

(assert (=> bs!1241985 m!6390908))

(assert (=> b!5361823 d!1717964))

(declare-fun d!1717986 () Bool)

(assert (=> d!1717986 (= (get!21112 lt!2184579) (v!51208 lt!2184579))))

(assert (=> b!5361823 d!1717986))

(declare-fun d!1717988 () Bool)

(declare-fun isEmpty!33360 (Option!15180) Bool)

(assert (=> d!1717988 (= (isDefined!11883 lt!2184579) (not (isEmpty!33360 lt!2184579)))))

(declare-fun bs!1241986 () Bool)

(assert (= bs!1241986 d!1717988))

(declare-fun m!6390910 () Bool)

(assert (=> bs!1241986 m!6390910))

(assert (=> b!5361823 d!1717988))

(declare-fun d!1717990 () Bool)

(declare-fun lambda!276212 () Int)

(declare-fun forall!14479 (List!61506 Int) Bool)

(assert (=> d!1717990 (= (inv!80919 (h!67832 zl!343)) (forall!14479 (exprs!4953 (h!67832 zl!343)) lambda!276212))))

(declare-fun bs!1241987 () Bool)

(assert (= bs!1241987 d!1717990))

(declare-fun m!6390912 () Bool)

(assert (=> bs!1241987 m!6390912))

(assert (=> b!5361819 d!1717990))

(declare-fun bs!1242008 () Bool)

(declare-fun d!1717992 () Bool)

(assert (= bs!1242008 (and d!1717992 d!1717990)))

(declare-fun lambda!276218 () Int)

(assert (=> bs!1242008 (= lambda!276218 lambda!276212)))

(declare-fun b!5362384 () Bool)

(declare-fun e!3327977 () Bool)

(declare-fun lt!2184684 () Regex!15069)

(declare-fun isUnion!366 (Regex!15069) Bool)

(assert (=> b!5362384 (= e!3327977 (isUnion!366 lt!2184684))))

(declare-fun b!5362385 () Bool)

(declare-fun e!3327975 () Regex!15069)

(assert (=> b!5362385 (= e!3327975 (Union!15069 (h!67830 (unfocusZipperList!511 zl!343)) (generalisedUnion!998 (t!374727 (unfocusZipperList!511 zl!343)))))))

(declare-fun b!5362386 () Bool)

(declare-fun head!11502 (List!61506) Regex!15069)

(assert (=> b!5362386 (= e!3327977 (= lt!2184684 (head!11502 (unfocusZipperList!511 zl!343))))))

(declare-fun b!5362387 () Bool)

(declare-fun e!3327976 () Bool)

(declare-fun isEmptyLang!934 (Regex!15069) Bool)

(assert (=> b!5362387 (= e!3327976 (isEmptyLang!934 lt!2184684))))

(declare-fun e!3327979 () Bool)

(assert (=> d!1717992 e!3327979))

(declare-fun res!2275643 () Bool)

(assert (=> d!1717992 (=> (not res!2275643) (not e!3327979))))

(assert (=> d!1717992 (= res!2275643 (validRegex!6805 lt!2184684))))

(declare-fun e!3327980 () Regex!15069)

(assert (=> d!1717992 (= lt!2184684 e!3327980)))

(declare-fun c!933902 () Bool)

(declare-fun e!3327978 () Bool)

(assert (=> d!1717992 (= c!933902 e!3327978)))

(declare-fun res!2275642 () Bool)

(assert (=> d!1717992 (=> (not res!2275642) (not e!3327978))))

(assert (=> d!1717992 (= res!2275642 ((_ is Cons!61382) (unfocusZipperList!511 zl!343)))))

(assert (=> d!1717992 (forall!14479 (unfocusZipperList!511 zl!343) lambda!276218)))

(assert (=> d!1717992 (= (generalisedUnion!998 (unfocusZipperList!511 zl!343)) lt!2184684)))

(declare-fun b!5362388 () Bool)

(assert (=> b!5362388 (= e!3327979 e!3327976)))

(declare-fun c!933904 () Bool)

(assert (=> b!5362388 (= c!933904 (isEmpty!33356 (unfocusZipperList!511 zl!343)))))

(declare-fun b!5362389 () Bool)

(assert (=> b!5362389 (= e!3327980 (h!67830 (unfocusZipperList!511 zl!343)))))

(declare-fun b!5362390 () Bool)

(assert (=> b!5362390 (= e!3327980 e!3327975)))

(declare-fun c!933905 () Bool)

(assert (=> b!5362390 (= c!933905 ((_ is Cons!61382) (unfocusZipperList!511 zl!343)))))

(declare-fun b!5362391 () Bool)

(assert (=> b!5362391 (= e!3327978 (isEmpty!33356 (t!374727 (unfocusZipperList!511 zl!343))))))

(declare-fun b!5362392 () Bool)

(assert (=> b!5362392 (= e!3327976 e!3327977)))

(declare-fun c!933903 () Bool)

(declare-fun tail!10599 (List!61506) List!61506)

(assert (=> b!5362392 (= c!933903 (isEmpty!33356 (tail!10599 (unfocusZipperList!511 zl!343))))))

(declare-fun b!5362393 () Bool)

(assert (=> b!5362393 (= e!3327975 EmptyLang!15069)))

(assert (= (and d!1717992 res!2275642) b!5362391))

(assert (= (and d!1717992 c!933902) b!5362389))

(assert (= (and d!1717992 (not c!933902)) b!5362390))

(assert (= (and b!5362390 c!933905) b!5362385))

(assert (= (and b!5362390 (not c!933905)) b!5362393))

(assert (= (and d!1717992 res!2275643) b!5362388))

(assert (= (and b!5362388 c!933904) b!5362387))

(assert (= (and b!5362388 (not c!933904)) b!5362392))

(assert (= (and b!5362392 c!933903) b!5362386))

(assert (= (and b!5362392 (not c!933903)) b!5362384))

(declare-fun m!6390938 () Bool)

(assert (=> b!5362391 m!6390938))

(declare-fun m!6390940 () Bool)

(assert (=> b!5362385 m!6390940))

(assert (=> b!5362388 m!6390496))

(declare-fun m!6390942 () Bool)

(assert (=> b!5362388 m!6390942))

(declare-fun m!6390944 () Bool)

(assert (=> d!1717992 m!6390944))

(assert (=> d!1717992 m!6390496))

(declare-fun m!6390946 () Bool)

(assert (=> d!1717992 m!6390946))

(assert (=> b!5362386 m!6390496))

(declare-fun m!6390948 () Bool)

(assert (=> b!5362386 m!6390948))

(assert (=> b!5362392 m!6390496))

(declare-fun m!6390950 () Bool)

(assert (=> b!5362392 m!6390950))

(assert (=> b!5362392 m!6390950))

(declare-fun m!6390952 () Bool)

(assert (=> b!5362392 m!6390952))

(declare-fun m!6390954 () Bool)

(assert (=> b!5362384 m!6390954))

(declare-fun m!6390956 () Bool)

(assert (=> b!5362387 m!6390956))

(assert (=> b!5361799 d!1717992))

(declare-fun bs!1242012 () Bool)

(declare-fun d!1717998 () Bool)

(assert (= bs!1242012 (and d!1717998 d!1717990)))

(declare-fun lambda!276221 () Int)

(assert (=> bs!1242012 (= lambda!276221 lambda!276212)))

(declare-fun bs!1242013 () Bool)

(assert (= bs!1242013 (and d!1717998 d!1717992)))

(assert (=> bs!1242013 (= lambda!276221 lambda!276218)))

(declare-fun lt!2184690 () List!61506)

(assert (=> d!1717998 (forall!14479 lt!2184690 lambda!276221)))

(declare-fun e!3327995 () List!61506)

(assert (=> d!1717998 (= lt!2184690 e!3327995)))

(declare-fun c!933911 () Bool)

(assert (=> d!1717998 (= c!933911 ((_ is Cons!61384) zl!343))))

(assert (=> d!1717998 (= (unfocusZipperList!511 zl!343) lt!2184690)))

(declare-fun b!5362421 () Bool)

(assert (=> b!5362421 (= e!3327995 (Cons!61382 (generalisedConcat!738 (exprs!4953 (h!67832 zl!343))) (unfocusZipperList!511 (t!374729 zl!343))))))

(declare-fun b!5362422 () Bool)

(assert (=> b!5362422 (= e!3327995 Nil!61382)))

(assert (= (and d!1717998 c!933911) b!5362421))

(assert (= (and d!1717998 (not c!933911)) b!5362422))

(declare-fun m!6390974 () Bool)

(assert (=> d!1717998 m!6390974))

(assert (=> b!5362421 m!6390494))

(declare-fun m!6390976 () Bool)

(assert (=> b!5362421 m!6390976))

(assert (=> b!5361799 d!1717998))

(declare-fun d!1718006 () Bool)

(declare-fun lt!2184691 () Regex!15069)

(assert (=> d!1718006 (validRegex!6805 lt!2184691)))

(assert (=> d!1718006 (= lt!2184691 (generalisedUnion!998 (unfocusZipperList!511 (Cons!61384 lt!2184584 Nil!61384))))))

(assert (=> d!1718006 (= (unfocusZipper!811 (Cons!61384 lt!2184584 Nil!61384)) lt!2184691)))

(declare-fun bs!1242014 () Bool)

(assert (= bs!1242014 d!1718006))

(declare-fun m!6390978 () Bool)

(assert (=> bs!1242014 m!6390978))

(declare-fun m!6390980 () Bool)

(assert (=> bs!1242014 m!6390980))

(assert (=> bs!1242014 m!6390980))

(declare-fun m!6390982 () Bool)

(assert (=> bs!1242014 m!6390982))

(assert (=> b!5361817 d!1718006))

(declare-fun bs!1242015 () Bool)

(declare-fun d!1718008 () Bool)

(assert (= bs!1242015 (and d!1718008 d!1717990)))

(declare-fun lambda!276222 () Int)

(assert (=> bs!1242015 (= lambda!276222 lambda!276212)))

(declare-fun bs!1242016 () Bool)

(assert (= bs!1242016 (and d!1718008 d!1717992)))

(assert (=> bs!1242016 (= lambda!276222 lambda!276218)))

(declare-fun bs!1242017 () Bool)

(assert (= bs!1242017 (and d!1718008 d!1717998)))

(assert (=> bs!1242017 (= lambda!276222 lambda!276221)))

(assert (=> d!1718008 (= (inv!80919 setElem!34711) (forall!14479 (exprs!4953 setElem!34711) lambda!276222))))

(declare-fun bs!1242018 () Bool)

(assert (= bs!1242018 d!1718008))

(declare-fun m!6390984 () Bool)

(assert (=> bs!1242018 m!6390984))

(assert (=> setNonEmpty!34711 d!1718008))

(declare-fun bs!1242023 () Bool)

(declare-fun b!5362503 () Bool)

(assert (= bs!1242023 (and b!5362503 b!5361823)))

(declare-fun lambda!276227 () Int)

(assert (=> bs!1242023 (not (= lambda!276227 lambda!276166))))

(assert (=> bs!1242023 (not (= lambda!276227 lambda!276167))))

(declare-fun bs!1242024 () Bool)

(assert (= bs!1242024 (and b!5362503 d!1717964)))

(assert (=> bs!1242024 (not (= lambda!276227 lambda!276207))))

(declare-fun bs!1242025 () Bool)

(assert (= bs!1242025 (and b!5362503 b!5361813)))

(assert (=> bs!1242025 (not (= lambda!276227 lambda!276163))))

(declare-fun bs!1242026 () Bool)

(assert (= bs!1242026 (and b!5362503 d!1717932)))

(assert (=> bs!1242026 (not (= lambda!276227 lambda!276196))))

(assert (=> bs!1242025 (not (= lambda!276227 lambda!276164))))

(assert (=> bs!1242026 (not (= lambda!276227 lambda!276195))))

(assert (=> b!5362503 true))

(assert (=> b!5362503 true))

(declare-fun bs!1242027 () Bool)

(declare-fun b!5362501 () Bool)

(assert (= bs!1242027 (and b!5362501 b!5361823)))

(declare-fun lambda!276228 () Int)

(assert (=> bs!1242027 (not (= lambda!276228 lambda!276166))))

(assert (=> bs!1242027 (= (= (regOne!30650 r!7292) lt!2184574) (= lambda!276228 lambda!276167))))

(declare-fun bs!1242028 () Bool)

(assert (= bs!1242028 (and b!5362501 d!1717964)))

(assert (=> bs!1242028 (not (= lambda!276228 lambda!276207))))

(declare-fun bs!1242029 () Bool)

(assert (= bs!1242029 (and b!5362501 b!5361813)))

(assert (=> bs!1242029 (not (= lambda!276228 lambda!276163))))

(declare-fun bs!1242030 () Bool)

(assert (= bs!1242030 (and b!5362501 b!5362503)))

(assert (=> bs!1242030 (not (= lambda!276228 lambda!276227))))

(declare-fun bs!1242031 () Bool)

(assert (= bs!1242031 (and b!5362501 d!1717932)))

(assert (=> bs!1242031 (= (= (regOne!30650 r!7292) lt!2184574) (= lambda!276228 lambda!276196))))

(assert (=> bs!1242029 (= lambda!276228 lambda!276164)))

(assert (=> bs!1242031 (not (= lambda!276228 lambda!276195))))

(assert (=> b!5362501 true))

(assert (=> b!5362501 true))

(declare-fun b!5362500 () Bool)

(declare-fun e!3328032 () Bool)

(assert (=> b!5362500 (= e!3328032 (matchRSpec!2172 (regTwo!30651 r!7292) s!2326))))

(declare-fun e!3328036 () Bool)

(declare-fun call!383642 () Bool)

(assert (=> b!5362501 (= e!3328036 call!383642)))

(declare-fun bm!383637 () Bool)

(declare-fun call!383643 () Bool)

(assert (=> bm!383637 (= call!383643 (isEmpty!33359 s!2326))))

(declare-fun b!5362502 () Bool)

(declare-fun c!933920 () Bool)

(assert (=> b!5362502 (= c!933920 ((_ is Union!15069) r!7292))))

(declare-fun e!3328033 () Bool)

(declare-fun e!3328038 () Bool)

(assert (=> b!5362502 (= e!3328033 e!3328038)))

(declare-fun e!3328037 () Bool)

(assert (=> b!5362503 (= e!3328037 call!383642)))

(declare-fun b!5362504 () Bool)

(declare-fun c!933921 () Bool)

(assert (=> b!5362504 (= c!933921 ((_ is ElementMatch!15069) r!7292))))

(declare-fun e!3328035 () Bool)

(assert (=> b!5362504 (= e!3328035 e!3328033)))

(declare-fun b!5362505 () Bool)

(assert (=> b!5362505 (= e!3328033 (= s!2326 (Cons!61383 (c!933735 r!7292) Nil!61383)))))

(declare-fun b!5362506 () Bool)

(declare-fun res!2275668 () Bool)

(assert (=> b!5362506 (=> res!2275668 e!3328037)))

(assert (=> b!5362506 (= res!2275668 call!383643)))

(assert (=> b!5362506 (= e!3328036 e!3328037)))

(declare-fun d!1718010 () Bool)

(declare-fun c!933923 () Bool)

(assert (=> d!1718010 (= c!933923 ((_ is EmptyExpr!15069) r!7292))))

(declare-fun e!3328034 () Bool)

(assert (=> d!1718010 (= (matchRSpec!2172 r!7292 s!2326) e!3328034)))

(declare-fun b!5362507 () Bool)

(assert (=> b!5362507 (= e!3328034 call!383643)))

(declare-fun bm!383638 () Bool)

(declare-fun c!933922 () Bool)

(assert (=> bm!383638 (= call!383642 (Exists!2250 (ite c!933922 lambda!276227 lambda!276228)))))

(declare-fun b!5362508 () Bool)

(assert (=> b!5362508 (= e!3328034 e!3328035)))

(declare-fun res!2275670 () Bool)

(assert (=> b!5362508 (= res!2275670 (not ((_ is EmptyLang!15069) r!7292)))))

(assert (=> b!5362508 (=> (not res!2275670) (not e!3328035))))

(declare-fun b!5362509 () Bool)

(assert (=> b!5362509 (= e!3328038 e!3328032)))

(declare-fun res!2275669 () Bool)

(assert (=> b!5362509 (= res!2275669 (matchRSpec!2172 (regOne!30651 r!7292) s!2326))))

(assert (=> b!5362509 (=> res!2275669 e!3328032)))

(declare-fun b!5362510 () Bool)

(assert (=> b!5362510 (= e!3328038 e!3328036)))

(assert (=> b!5362510 (= c!933922 ((_ is Star!15069) r!7292))))

(assert (= (and d!1718010 c!933923) b!5362507))

(assert (= (and d!1718010 (not c!933923)) b!5362508))

(assert (= (and b!5362508 res!2275670) b!5362504))

(assert (= (and b!5362504 c!933921) b!5362505))

(assert (= (and b!5362504 (not c!933921)) b!5362502))

(assert (= (and b!5362502 c!933920) b!5362509))

(assert (= (and b!5362502 (not c!933920)) b!5362510))

(assert (= (and b!5362509 (not res!2275669)) b!5362500))

(assert (= (and b!5362510 c!933922) b!5362506))

(assert (= (and b!5362510 (not c!933922)) b!5362501))

(assert (= (and b!5362506 (not res!2275668)) b!5362503))

(assert (= (or b!5362503 b!5362501) bm!383638))

(assert (= (or b!5362507 b!5362506) bm!383637))

(declare-fun m!6390988 () Bool)

(assert (=> b!5362500 m!6390988))

(declare-fun m!6390990 () Bool)

(assert (=> bm!383637 m!6390990))

(declare-fun m!6390992 () Bool)

(assert (=> bm!383638 m!6390992))

(declare-fun m!6390994 () Bool)

(assert (=> b!5362509 m!6390994))

(assert (=> b!5361798 d!1718010))

(declare-fun b!5362511 () Bool)

(declare-fun res!2275672 () Bool)

(declare-fun e!3328043 () Bool)

(assert (=> b!5362511 (=> res!2275672 e!3328043)))

(declare-fun e!3328039 () Bool)

(assert (=> b!5362511 (= res!2275672 e!3328039)))

(declare-fun res!2275675 () Bool)

(assert (=> b!5362511 (=> (not res!2275675) (not e!3328039))))

(declare-fun lt!2184692 () Bool)

(assert (=> b!5362511 (= res!2275675 lt!2184692)))

(declare-fun b!5362512 () Bool)

(declare-fun res!2275678 () Bool)

(declare-fun e!3328042 () Bool)

(assert (=> b!5362512 (=> res!2275678 e!3328042)))

(assert (=> b!5362512 (= res!2275678 (not (isEmpty!33359 (tail!10598 s!2326))))))

(declare-fun bm!383639 () Bool)

(declare-fun call!383644 () Bool)

(assert (=> bm!383639 (= call!383644 (isEmpty!33359 s!2326))))

(declare-fun b!5362513 () Bool)

(declare-fun e!3328045 () Bool)

(assert (=> b!5362513 (= e!3328045 e!3328042)))

(declare-fun res!2275671 () Bool)

(assert (=> b!5362513 (=> res!2275671 e!3328042)))

(assert (=> b!5362513 (= res!2275671 call!383644)))

(declare-fun b!5362514 () Bool)

(declare-fun res!2275673 () Bool)

(assert (=> b!5362514 (=> res!2275673 e!3328043)))

(assert (=> b!5362514 (= res!2275673 (not ((_ is ElementMatch!15069) r!7292)))))

(declare-fun e!3328040 () Bool)

(assert (=> b!5362514 (= e!3328040 e!3328043)))

(declare-fun b!5362515 () Bool)

(declare-fun res!2275677 () Bool)

(assert (=> b!5362515 (=> (not res!2275677) (not e!3328039))))

(assert (=> b!5362515 (= res!2275677 (not call!383644))))

(declare-fun b!5362516 () Bool)

(assert (=> b!5362516 (= e!3328043 e!3328045)))

(declare-fun res!2275676 () Bool)

(assert (=> b!5362516 (=> (not res!2275676) (not e!3328045))))

(assert (=> b!5362516 (= res!2275676 (not lt!2184692))))

(declare-fun b!5362517 () Bool)

(declare-fun e!3328041 () Bool)

(assert (=> b!5362517 (= e!3328041 (= lt!2184692 call!383644))))

(declare-fun b!5362518 () Bool)

(declare-fun e!3328044 () Bool)

(assert (=> b!5362518 (= e!3328044 (matchR!7254 (derivativeStep!4212 r!7292 (head!11501 s!2326)) (tail!10598 s!2326)))))

(declare-fun b!5362519 () Bool)

(assert (=> b!5362519 (= e!3328039 (= (head!11501 s!2326) (c!933735 r!7292)))))

(declare-fun b!5362520 () Bool)

(assert (=> b!5362520 (= e!3328041 e!3328040)))

(declare-fun c!933924 () Bool)

(assert (=> b!5362520 (= c!933924 ((_ is EmptyLang!15069) r!7292))))

(declare-fun b!5362521 () Bool)

(declare-fun res!2275674 () Bool)

(assert (=> b!5362521 (=> (not res!2275674) (not e!3328039))))

(assert (=> b!5362521 (= res!2275674 (isEmpty!33359 (tail!10598 s!2326)))))

(declare-fun d!1718020 () Bool)

(assert (=> d!1718020 e!3328041))

(declare-fun c!933925 () Bool)

(assert (=> d!1718020 (= c!933925 ((_ is EmptyExpr!15069) r!7292))))

(assert (=> d!1718020 (= lt!2184692 e!3328044)))

(declare-fun c!933926 () Bool)

(assert (=> d!1718020 (= c!933926 (isEmpty!33359 s!2326))))

(assert (=> d!1718020 (validRegex!6805 r!7292)))

(assert (=> d!1718020 (= (matchR!7254 r!7292 s!2326) lt!2184692)))

(declare-fun b!5362522 () Bool)

(assert (=> b!5362522 (= e!3328042 (not (= (head!11501 s!2326) (c!933735 r!7292))))))

(declare-fun b!5362523 () Bool)

(assert (=> b!5362523 (= e!3328044 (nullable!5238 r!7292))))

(declare-fun b!5362524 () Bool)

(assert (=> b!5362524 (= e!3328040 (not lt!2184692))))

(assert (= (and d!1718020 c!933926) b!5362523))

(assert (= (and d!1718020 (not c!933926)) b!5362518))

(assert (= (and d!1718020 c!933925) b!5362517))

(assert (= (and d!1718020 (not c!933925)) b!5362520))

(assert (= (and b!5362520 c!933924) b!5362524))

(assert (= (and b!5362520 (not c!933924)) b!5362514))

(assert (= (and b!5362514 (not res!2275673)) b!5362511))

(assert (= (and b!5362511 res!2275675) b!5362515))

(assert (= (and b!5362515 res!2275677) b!5362521))

(assert (= (and b!5362521 res!2275674) b!5362519))

(assert (= (and b!5362511 (not res!2275672)) b!5362516))

(assert (= (and b!5362516 res!2275676) b!5362513))

(assert (= (and b!5362513 (not res!2275671)) b!5362512))

(assert (= (and b!5362512 (not res!2275678)) b!5362522))

(assert (= (or b!5362517 b!5362513 b!5362515) bm!383639))

(declare-fun m!6390996 () Bool)

(assert (=> b!5362512 m!6390996))

(assert (=> b!5362512 m!6390996))

(declare-fun m!6390998 () Bool)

(assert (=> b!5362512 m!6390998))

(declare-fun m!6391000 () Bool)

(assert (=> b!5362523 m!6391000))

(declare-fun m!6391002 () Bool)

(assert (=> b!5362519 m!6391002))

(assert (=> b!5362521 m!6390996))

(assert (=> b!5362521 m!6390996))

(assert (=> b!5362521 m!6390998))

(assert (=> b!5362522 m!6391002))

(assert (=> b!5362518 m!6391002))

(assert (=> b!5362518 m!6391002))

(declare-fun m!6391004 () Bool)

(assert (=> b!5362518 m!6391004))

(assert (=> b!5362518 m!6390996))

(assert (=> b!5362518 m!6391004))

(assert (=> b!5362518 m!6390996))

(declare-fun m!6391006 () Bool)

(assert (=> b!5362518 m!6391006))

(assert (=> d!1718020 m!6390990))

(assert (=> d!1718020 m!6390452))

(assert (=> bm!383639 m!6390990))

(assert (=> b!5361798 d!1718020))

(declare-fun d!1718022 () Bool)

(assert (=> d!1718022 (= (matchR!7254 r!7292 s!2326) (matchRSpec!2172 r!7292 s!2326))))

(declare-fun lt!2184695 () Unit!153794)

(declare-fun choose!40261 (Regex!15069 List!61507) Unit!153794)

(assert (=> d!1718022 (= lt!2184695 (choose!40261 r!7292 s!2326))))

(assert (=> d!1718022 (validRegex!6805 r!7292)))

(assert (=> d!1718022 (= (mainMatchTheorem!2172 r!7292 s!2326) lt!2184695)))

(declare-fun bs!1242032 () Bool)

(assert (= bs!1242032 d!1718022))

(assert (=> bs!1242032 m!6390394))

(assert (=> bs!1242032 m!6390392))

(declare-fun m!6391008 () Bool)

(assert (=> bs!1242032 m!6391008))

(assert (=> bs!1242032 m!6390452))

(assert (=> b!5361798 d!1718022))

(declare-fun b!5362535 () Bool)

(declare-fun call!383647 () (InoxSet Context!8906))

(declare-fun e!3328054 () (InoxSet Context!8906))

(assert (=> b!5362535 (= e!3328054 ((_ map or) call!383647 (derivationStepZipperUp!441 (Context!8907 (t!374727 (exprs!4953 lt!2184565))) (h!67831 s!2326))))))

(declare-fun b!5362536 () Bool)

(declare-fun e!3328052 () (InoxSet Context!8906))

(assert (=> b!5362536 (= e!3328052 call!383647)))

(declare-fun b!5362537 () Bool)

(assert (=> b!5362537 (= e!3328054 e!3328052)))

(declare-fun c!933932 () Bool)

(assert (=> b!5362537 (= c!933932 ((_ is Cons!61382) (exprs!4953 lt!2184565)))))

(declare-fun d!1718024 () Bool)

(declare-fun c!933931 () Bool)

(declare-fun e!3328053 () Bool)

(assert (=> d!1718024 (= c!933931 e!3328053)))

(declare-fun res!2275681 () Bool)

(assert (=> d!1718024 (=> (not res!2275681) (not e!3328053))))

(assert (=> d!1718024 (= res!2275681 ((_ is Cons!61382) (exprs!4953 lt!2184565)))))

(assert (=> d!1718024 (= (derivationStepZipperUp!441 lt!2184565 (h!67831 s!2326)) e!3328054)))

(declare-fun b!5362538 () Bool)

(assert (=> b!5362538 (= e!3328053 (nullable!5238 (h!67830 (exprs!4953 lt!2184565))))))

(declare-fun b!5362539 () Bool)

(assert (=> b!5362539 (= e!3328052 ((as const (Array Context!8906 Bool)) false))))

(declare-fun bm!383642 () Bool)

(assert (=> bm!383642 (= call!383647 (derivationStepZipperDown!517 (h!67830 (exprs!4953 lt!2184565)) (Context!8907 (t!374727 (exprs!4953 lt!2184565))) (h!67831 s!2326)))))

(assert (= (and d!1718024 res!2275681) b!5362538))

(assert (= (and d!1718024 c!933931) b!5362535))

(assert (= (and d!1718024 (not c!933931)) b!5362537))

(assert (= (and b!5362537 c!933932) b!5362536))

(assert (= (and b!5362537 (not c!933932)) b!5362539))

(assert (= (or b!5362535 b!5362536) bm!383642))

(declare-fun m!6391010 () Bool)

(assert (=> b!5362535 m!6391010))

(declare-fun m!6391012 () Bool)

(assert (=> b!5362538 m!6391012))

(declare-fun m!6391014 () Bool)

(assert (=> bm!383642 m!6391014))

(assert (=> b!5361795 d!1718024))

(declare-fun d!1718026 () Bool)

(declare-fun dynLambda!24245 (Int Context!8906) (InoxSet Context!8906))

(assert (=> d!1718026 (= (flatMap!796 lt!2184592 lambda!276165) (dynLambda!24245 lambda!276165 lt!2184568))))

(declare-fun lt!2184698 () Unit!153794)

(declare-fun choose!40262 ((InoxSet Context!8906) Context!8906 Int) Unit!153794)

(assert (=> d!1718026 (= lt!2184698 (choose!40262 lt!2184592 lt!2184568 lambda!276165))))

(assert (=> d!1718026 (= lt!2184592 (store ((as const (Array Context!8906 Bool)) false) lt!2184568 true))))

(assert (=> d!1718026 (= (lemmaFlatMapOnSingletonSet!328 lt!2184592 lt!2184568 lambda!276165) lt!2184698)))

(declare-fun b_lambda!205597 () Bool)

(assert (=> (not b_lambda!205597) (not d!1718026)))

(declare-fun bs!1242033 () Bool)

(assert (= bs!1242033 d!1718026))

(assert (=> bs!1242033 m!6390480))

(declare-fun m!6391016 () Bool)

(assert (=> bs!1242033 m!6391016))

(declare-fun m!6391018 () Bool)

(assert (=> bs!1242033 m!6391018))

(assert (=> bs!1242033 m!6390482))

(assert (=> b!5361795 d!1718026))

(declare-fun d!1718028 () Bool)

(assert (=> d!1718028 (= (flatMap!796 lt!2184593 lambda!276165) (dynLambda!24245 lambda!276165 lt!2184565))))

(declare-fun lt!2184699 () Unit!153794)

(assert (=> d!1718028 (= lt!2184699 (choose!40262 lt!2184593 lt!2184565 lambda!276165))))

(assert (=> d!1718028 (= lt!2184593 (store ((as const (Array Context!8906 Bool)) false) lt!2184565 true))))

(assert (=> d!1718028 (= (lemmaFlatMapOnSingletonSet!328 lt!2184593 lt!2184565 lambda!276165) lt!2184699)))

(declare-fun b_lambda!205599 () Bool)

(assert (=> (not b_lambda!205599) (not d!1718028)))

(declare-fun bs!1242034 () Bool)

(assert (= bs!1242034 d!1718028))

(assert (=> bs!1242034 m!6390488))

(declare-fun m!6391020 () Bool)

(assert (=> bs!1242034 m!6391020))

(declare-fun m!6391022 () Bool)

(assert (=> bs!1242034 m!6391022))

(assert (=> bs!1242034 m!6390478))

(assert (=> b!5361795 d!1718028))

(declare-fun b!5362540 () Bool)

(declare-fun call!383648 () (InoxSet Context!8906))

(declare-fun e!3328057 () (InoxSet Context!8906))

(assert (=> b!5362540 (= e!3328057 ((_ map or) call!383648 (derivationStepZipperUp!441 (Context!8907 (t!374727 (exprs!4953 lt!2184568))) (h!67831 s!2326))))))

(declare-fun b!5362541 () Bool)

(declare-fun e!3328055 () (InoxSet Context!8906))

(assert (=> b!5362541 (= e!3328055 call!383648)))

(declare-fun b!5362542 () Bool)

(assert (=> b!5362542 (= e!3328057 e!3328055)))

(declare-fun c!933934 () Bool)

(assert (=> b!5362542 (= c!933934 ((_ is Cons!61382) (exprs!4953 lt!2184568)))))

(declare-fun d!1718030 () Bool)

(declare-fun c!933933 () Bool)

(declare-fun e!3328056 () Bool)

(assert (=> d!1718030 (= c!933933 e!3328056)))

(declare-fun res!2275682 () Bool)

(assert (=> d!1718030 (=> (not res!2275682) (not e!3328056))))

(assert (=> d!1718030 (= res!2275682 ((_ is Cons!61382) (exprs!4953 lt!2184568)))))

(assert (=> d!1718030 (= (derivationStepZipperUp!441 lt!2184568 (h!67831 s!2326)) e!3328057)))

(declare-fun b!5362543 () Bool)

(assert (=> b!5362543 (= e!3328056 (nullable!5238 (h!67830 (exprs!4953 lt!2184568))))))

(declare-fun b!5362544 () Bool)

(assert (=> b!5362544 (= e!3328055 ((as const (Array Context!8906 Bool)) false))))

(declare-fun bm!383643 () Bool)

(assert (=> bm!383643 (= call!383648 (derivationStepZipperDown!517 (h!67830 (exprs!4953 lt!2184568)) (Context!8907 (t!374727 (exprs!4953 lt!2184568))) (h!67831 s!2326)))))

(assert (= (and d!1718030 res!2275682) b!5362543))

(assert (= (and d!1718030 c!933933) b!5362540))

(assert (= (and d!1718030 (not c!933933)) b!5362542))

(assert (= (and b!5362542 c!933934) b!5362541))

(assert (= (and b!5362542 (not c!933934)) b!5362544))

(assert (= (or b!5362540 b!5362541) bm!383643))

(declare-fun m!6391024 () Bool)

(assert (=> b!5362540 m!6391024))

(declare-fun m!6391026 () Bool)

(assert (=> b!5362543 m!6391026))

(declare-fun m!6391028 () Bool)

(assert (=> bm!383643 m!6391028))

(assert (=> b!5361795 d!1718030))

(declare-fun d!1718032 () Bool)

(declare-fun choose!40264 ((InoxSet Context!8906) Int) (InoxSet Context!8906))

(assert (=> d!1718032 (= (flatMap!796 lt!2184593 lambda!276165) (choose!40264 lt!2184593 lambda!276165))))

(declare-fun bs!1242035 () Bool)

(assert (= bs!1242035 d!1718032))

(declare-fun m!6391030 () Bool)

(assert (=> bs!1242035 m!6391030))

(assert (=> b!5361795 d!1718032))

(declare-fun d!1718034 () Bool)

(assert (=> d!1718034 (= (flatMap!796 lt!2184592 lambda!276165) (choose!40264 lt!2184592 lambda!276165))))

(declare-fun bs!1242036 () Bool)

(assert (= bs!1242036 d!1718034))

(declare-fun m!6391032 () Bool)

(assert (=> bs!1242036 m!6391032))

(assert (=> b!5361795 d!1718034))

(declare-fun d!1718036 () Bool)

(declare-fun lt!2184700 () Regex!15069)

(assert (=> d!1718036 (validRegex!6805 lt!2184700)))

(assert (=> d!1718036 (= lt!2184700 (generalisedUnion!998 (unfocusZipperList!511 (Cons!61384 lt!2184565 Nil!61384))))))

(assert (=> d!1718036 (= (unfocusZipper!811 (Cons!61384 lt!2184565 Nil!61384)) lt!2184700)))

(declare-fun bs!1242037 () Bool)

(assert (= bs!1242037 d!1718036))

(declare-fun m!6391034 () Bool)

(assert (=> bs!1242037 m!6391034))

(declare-fun m!6391036 () Bool)

(assert (=> bs!1242037 m!6391036))

(assert (=> bs!1242037 m!6391036))

(declare-fun m!6391038 () Bool)

(assert (=> bs!1242037 m!6391038))

(assert (=> b!5361795 d!1718036))

(declare-fun d!1718038 () Bool)

(declare-fun nullableFct!1544 (Regex!15069) Bool)

(assert (=> d!1718038 (= (nullable!5238 (regOne!30650 (regOne!30650 r!7292))) (nullableFct!1544 (regOne!30650 (regOne!30650 r!7292))))))

(declare-fun bs!1242038 () Bool)

(assert (= bs!1242038 d!1718038))

(declare-fun m!6391040 () Bool)

(assert (=> bs!1242038 m!6391040))

(assert (=> b!5361794 d!1718038))

(declare-fun bs!1242039 () Bool)

(declare-fun d!1718040 () Bool)

(assert (= bs!1242039 (and d!1718040 d!1717990)))

(declare-fun lambda!276231 () Int)

(assert (=> bs!1242039 (= lambda!276231 lambda!276212)))

(declare-fun bs!1242040 () Bool)

(assert (= bs!1242040 (and d!1718040 d!1717992)))

(assert (=> bs!1242040 (= lambda!276231 lambda!276218)))

(declare-fun bs!1242041 () Bool)

(assert (= bs!1242041 (and d!1718040 d!1717998)))

(assert (=> bs!1242041 (= lambda!276231 lambda!276221)))

(declare-fun bs!1242042 () Bool)

(assert (= bs!1242042 (and d!1718040 d!1718008)))

(assert (=> bs!1242042 (= lambda!276231 lambda!276222)))

(declare-fun b!5362565 () Bool)

(declare-fun e!3328075 () Bool)

(declare-fun lt!2184703 () Regex!15069)

(declare-fun isConcat!449 (Regex!15069) Bool)

(assert (=> b!5362565 (= e!3328075 (isConcat!449 lt!2184703))))

(declare-fun b!5362566 () Bool)

(declare-fun e!3328073 () Regex!15069)

(assert (=> b!5362566 (= e!3328073 (Concat!23914 (h!67830 (exprs!4953 (h!67832 zl!343))) (generalisedConcat!738 (t!374727 (exprs!4953 (h!67832 zl!343))))))))

(declare-fun b!5362567 () Bool)

(declare-fun e!3328071 () Regex!15069)

(assert (=> b!5362567 (= e!3328071 e!3328073)))

(declare-fun c!933944 () Bool)

(assert (=> b!5362567 (= c!933944 ((_ is Cons!61382) (exprs!4953 (h!67832 zl!343))))))

(declare-fun b!5362568 () Bool)

(declare-fun e!3328072 () Bool)

(declare-fun e!3328070 () Bool)

(assert (=> b!5362568 (= e!3328072 e!3328070)))

(declare-fun c!933943 () Bool)

(assert (=> b!5362568 (= c!933943 (isEmpty!33356 (exprs!4953 (h!67832 zl!343))))))

(declare-fun b!5362569 () Bool)

(assert (=> b!5362569 (= e!3328071 (h!67830 (exprs!4953 (h!67832 zl!343))))))

(assert (=> d!1718040 e!3328072))

(declare-fun res!2275688 () Bool)

(assert (=> d!1718040 (=> (not res!2275688) (not e!3328072))))

(assert (=> d!1718040 (= res!2275688 (validRegex!6805 lt!2184703))))

(assert (=> d!1718040 (= lt!2184703 e!3328071)))

(declare-fun c!933945 () Bool)

(declare-fun e!3328074 () Bool)

(assert (=> d!1718040 (= c!933945 e!3328074)))

(declare-fun res!2275687 () Bool)

(assert (=> d!1718040 (=> (not res!2275687) (not e!3328074))))

(assert (=> d!1718040 (= res!2275687 ((_ is Cons!61382) (exprs!4953 (h!67832 zl!343))))))

(assert (=> d!1718040 (forall!14479 (exprs!4953 (h!67832 zl!343)) lambda!276231)))

(assert (=> d!1718040 (= (generalisedConcat!738 (exprs!4953 (h!67832 zl!343))) lt!2184703)))

(declare-fun b!5362570 () Bool)

(declare-fun isEmptyExpr!926 (Regex!15069) Bool)

(assert (=> b!5362570 (= e!3328070 (isEmptyExpr!926 lt!2184703))))

(declare-fun b!5362571 () Bool)

(assert (=> b!5362571 (= e!3328070 e!3328075)))

(declare-fun c!933946 () Bool)

(assert (=> b!5362571 (= c!933946 (isEmpty!33356 (tail!10599 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun b!5362572 () Bool)

(assert (=> b!5362572 (= e!3328075 (= lt!2184703 (head!11502 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun b!5362573 () Bool)

(assert (=> b!5362573 (= e!3328074 (isEmpty!33356 (t!374727 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun b!5362574 () Bool)

(assert (=> b!5362574 (= e!3328073 EmptyExpr!15069)))

(assert (= (and d!1718040 res!2275687) b!5362573))

(assert (= (and d!1718040 c!933945) b!5362569))

(assert (= (and d!1718040 (not c!933945)) b!5362567))

(assert (= (and b!5362567 c!933944) b!5362566))

(assert (= (and b!5362567 (not c!933944)) b!5362574))

(assert (= (and d!1718040 res!2275688) b!5362568))

(assert (= (and b!5362568 c!933943) b!5362570))

(assert (= (and b!5362568 (not c!933943)) b!5362571))

(assert (= (and b!5362571 c!933946) b!5362572))

(assert (= (and b!5362571 (not c!933946)) b!5362565))

(declare-fun m!6391042 () Bool)

(assert (=> b!5362565 m!6391042))

(declare-fun m!6391044 () Bool)

(assert (=> d!1718040 m!6391044))

(declare-fun m!6391046 () Bool)

(assert (=> d!1718040 m!6391046))

(declare-fun m!6391048 () Bool)

(assert (=> b!5362568 m!6391048))

(declare-fun m!6391050 () Bool)

(assert (=> b!5362571 m!6391050))

(assert (=> b!5362571 m!6391050))

(declare-fun m!6391052 () Bool)

(assert (=> b!5362571 m!6391052))

(assert (=> b!5362573 m!6390450))

(declare-fun m!6391054 () Bool)

(assert (=> b!5362570 m!6391054))

(declare-fun m!6391056 () Bool)

(assert (=> b!5362572 m!6391056))

(declare-fun m!6391058 () Bool)

(assert (=> b!5362566 m!6391058))

(assert (=> b!5361796 d!1718040))

(declare-fun d!1718042 () Bool)

(assert (=> d!1718042 (= (flatMap!796 z!1189 lambda!276165) (dynLambda!24245 lambda!276165 (h!67832 zl!343)))))

(declare-fun lt!2184704 () Unit!153794)

(assert (=> d!1718042 (= lt!2184704 (choose!40262 z!1189 (h!67832 zl!343) lambda!276165))))

(assert (=> d!1718042 (= z!1189 (store ((as const (Array Context!8906 Bool)) false) (h!67832 zl!343) true))))

(assert (=> d!1718042 (= (lemmaFlatMapOnSingletonSet!328 z!1189 (h!67832 zl!343) lambda!276165) lt!2184704)))

(declare-fun b_lambda!205601 () Bool)

(assert (=> (not b_lambda!205601) (not d!1718042)))

(declare-fun bs!1242043 () Bool)

(assert (= bs!1242043 d!1718042))

(assert (=> bs!1242043 m!6390436))

(declare-fun m!6391060 () Bool)

(assert (=> bs!1242043 m!6391060))

(declare-fun m!6391062 () Bool)

(assert (=> bs!1242043 m!6391062))

(declare-fun m!6391064 () Bool)

(assert (=> bs!1242043 m!6391064))

(assert (=> b!5361792 d!1718042))

(declare-fun d!1718044 () Bool)

(assert (=> d!1718044 (= (flatMap!796 z!1189 lambda!276165) (choose!40264 z!1189 lambda!276165))))

(declare-fun bs!1242044 () Bool)

(assert (= bs!1242044 d!1718044))

(declare-fun m!6391066 () Bool)

(assert (=> bs!1242044 m!6391066))

(assert (=> b!5361792 d!1718044))

(declare-fun d!1718046 () Bool)

(assert (=> d!1718046 (= (nullable!5238 (h!67830 (exprs!4953 (h!67832 zl!343)))) (nullableFct!1544 (h!67830 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun bs!1242045 () Bool)

(assert (= bs!1242045 d!1718046))

(declare-fun m!6391068 () Bool)

(assert (=> bs!1242045 m!6391068))

(assert (=> b!5361792 d!1718046))

(declare-fun e!3328078 () (InoxSet Context!8906))

(declare-fun call!383649 () (InoxSet Context!8906))

(declare-fun b!5362575 () Bool)

(assert (=> b!5362575 (= e!3328078 ((_ map or) call!383649 (derivationStepZipperUp!441 (Context!8907 (t!374727 (exprs!4953 (Context!8907 (Cons!61382 (h!67830 (exprs!4953 (h!67832 zl!343))) (t!374727 (exprs!4953 (h!67832 zl!343)))))))) (h!67831 s!2326))))))

(declare-fun b!5362576 () Bool)

(declare-fun e!3328076 () (InoxSet Context!8906))

(assert (=> b!5362576 (= e!3328076 call!383649)))

(declare-fun b!5362577 () Bool)

(assert (=> b!5362577 (= e!3328078 e!3328076)))

(declare-fun c!933948 () Bool)

(assert (=> b!5362577 (= c!933948 ((_ is Cons!61382) (exprs!4953 (Context!8907 (Cons!61382 (h!67830 (exprs!4953 (h!67832 zl!343))) (t!374727 (exprs!4953 (h!67832 zl!343))))))))))

(declare-fun d!1718048 () Bool)

(declare-fun c!933947 () Bool)

(declare-fun e!3328077 () Bool)

(assert (=> d!1718048 (= c!933947 e!3328077)))

(declare-fun res!2275689 () Bool)

(assert (=> d!1718048 (=> (not res!2275689) (not e!3328077))))

(assert (=> d!1718048 (= res!2275689 ((_ is Cons!61382) (exprs!4953 (Context!8907 (Cons!61382 (h!67830 (exprs!4953 (h!67832 zl!343))) (t!374727 (exprs!4953 (h!67832 zl!343))))))))))

(assert (=> d!1718048 (= (derivationStepZipperUp!441 (Context!8907 (Cons!61382 (h!67830 (exprs!4953 (h!67832 zl!343))) (t!374727 (exprs!4953 (h!67832 zl!343))))) (h!67831 s!2326)) e!3328078)))

(declare-fun b!5362578 () Bool)

(assert (=> b!5362578 (= e!3328077 (nullable!5238 (h!67830 (exprs!4953 (Context!8907 (Cons!61382 (h!67830 (exprs!4953 (h!67832 zl!343))) (t!374727 (exprs!4953 (h!67832 zl!343)))))))))))

(declare-fun b!5362579 () Bool)

(assert (=> b!5362579 (= e!3328076 ((as const (Array Context!8906 Bool)) false))))

(declare-fun bm!383644 () Bool)

(assert (=> bm!383644 (= call!383649 (derivationStepZipperDown!517 (h!67830 (exprs!4953 (Context!8907 (Cons!61382 (h!67830 (exprs!4953 (h!67832 zl!343))) (t!374727 (exprs!4953 (h!67832 zl!343))))))) (Context!8907 (t!374727 (exprs!4953 (Context!8907 (Cons!61382 (h!67830 (exprs!4953 (h!67832 zl!343))) (t!374727 (exprs!4953 (h!67832 zl!343)))))))) (h!67831 s!2326)))))

(assert (= (and d!1718048 res!2275689) b!5362578))

(assert (= (and d!1718048 c!933947) b!5362575))

(assert (= (and d!1718048 (not c!933947)) b!5362577))

(assert (= (and b!5362577 c!933948) b!5362576))

(assert (= (and b!5362577 (not c!933948)) b!5362579))

(assert (= (or b!5362575 b!5362576) bm!383644))

(declare-fun m!6391070 () Bool)

(assert (=> b!5362575 m!6391070))

(declare-fun m!6391072 () Bool)

(assert (=> b!5362578 m!6391072))

(declare-fun m!6391074 () Bool)

(assert (=> bm!383644 m!6391074))

(assert (=> b!5361792 d!1718048))

(declare-fun b!5362580 () Bool)

(declare-fun e!3328081 () (InoxSet Context!8906))

(declare-fun call!383650 () (InoxSet Context!8906))

(assert (=> b!5362580 (= e!3328081 ((_ map or) call!383650 (derivationStepZipperUp!441 (Context!8907 (t!374727 (exprs!4953 lt!2184589))) (h!67831 s!2326))))))

(declare-fun b!5362581 () Bool)

(declare-fun e!3328079 () (InoxSet Context!8906))

(assert (=> b!5362581 (= e!3328079 call!383650)))

(declare-fun b!5362582 () Bool)

(assert (=> b!5362582 (= e!3328081 e!3328079)))

(declare-fun c!933950 () Bool)

(assert (=> b!5362582 (= c!933950 ((_ is Cons!61382) (exprs!4953 lt!2184589)))))

(declare-fun d!1718050 () Bool)

(declare-fun c!933949 () Bool)

(declare-fun e!3328080 () Bool)

(assert (=> d!1718050 (= c!933949 e!3328080)))

(declare-fun res!2275690 () Bool)

(assert (=> d!1718050 (=> (not res!2275690) (not e!3328080))))

(assert (=> d!1718050 (= res!2275690 ((_ is Cons!61382) (exprs!4953 lt!2184589)))))

(assert (=> d!1718050 (= (derivationStepZipperUp!441 lt!2184589 (h!67831 s!2326)) e!3328081)))

(declare-fun b!5362583 () Bool)

(assert (=> b!5362583 (= e!3328080 (nullable!5238 (h!67830 (exprs!4953 lt!2184589))))))

(declare-fun b!5362584 () Bool)

(assert (=> b!5362584 (= e!3328079 ((as const (Array Context!8906 Bool)) false))))

(declare-fun bm!383645 () Bool)

(assert (=> bm!383645 (= call!383650 (derivationStepZipperDown!517 (h!67830 (exprs!4953 lt!2184589)) (Context!8907 (t!374727 (exprs!4953 lt!2184589))) (h!67831 s!2326)))))

(assert (= (and d!1718050 res!2275690) b!5362583))

(assert (= (and d!1718050 c!933949) b!5362580))

(assert (= (and d!1718050 (not c!933949)) b!5362582))

(assert (= (and b!5362582 c!933950) b!5362581))

(assert (= (and b!5362582 (not c!933950)) b!5362584))

(assert (= (or b!5362580 b!5362581) bm!383645))

(declare-fun m!6391076 () Bool)

(assert (=> b!5362580 m!6391076))

(declare-fun m!6391078 () Bool)

(assert (=> b!5362583 m!6391078))

(declare-fun m!6391080 () Bool)

(assert (=> bm!383645 m!6391080))

(assert (=> b!5361792 d!1718050))

(declare-fun call!383651 () (InoxSet Context!8906))

(declare-fun e!3328084 () (InoxSet Context!8906))

(declare-fun b!5362585 () Bool)

(assert (=> b!5362585 (= e!3328084 ((_ map or) call!383651 (derivationStepZipperUp!441 (Context!8907 (t!374727 (exprs!4953 (h!67832 zl!343)))) (h!67831 s!2326))))))

(declare-fun b!5362586 () Bool)

(declare-fun e!3328082 () (InoxSet Context!8906))

(assert (=> b!5362586 (= e!3328082 call!383651)))

(declare-fun b!5362587 () Bool)

(assert (=> b!5362587 (= e!3328084 e!3328082)))

(declare-fun c!933952 () Bool)

(assert (=> b!5362587 (= c!933952 ((_ is Cons!61382) (exprs!4953 (h!67832 zl!343))))))

(declare-fun d!1718052 () Bool)

(declare-fun c!933951 () Bool)

(declare-fun e!3328083 () Bool)

(assert (=> d!1718052 (= c!933951 e!3328083)))

(declare-fun res!2275691 () Bool)

(assert (=> d!1718052 (=> (not res!2275691) (not e!3328083))))

(assert (=> d!1718052 (= res!2275691 ((_ is Cons!61382) (exprs!4953 (h!67832 zl!343))))))

(assert (=> d!1718052 (= (derivationStepZipperUp!441 (h!67832 zl!343) (h!67831 s!2326)) e!3328084)))

(declare-fun b!5362588 () Bool)

(assert (=> b!5362588 (= e!3328083 (nullable!5238 (h!67830 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun b!5362589 () Bool)

(assert (=> b!5362589 (= e!3328082 ((as const (Array Context!8906 Bool)) false))))

(declare-fun bm!383646 () Bool)

(assert (=> bm!383646 (= call!383651 (derivationStepZipperDown!517 (h!67830 (exprs!4953 (h!67832 zl!343))) (Context!8907 (t!374727 (exprs!4953 (h!67832 zl!343)))) (h!67831 s!2326)))))

(assert (= (and d!1718052 res!2275691) b!5362588))

(assert (= (and d!1718052 c!933951) b!5362585))

(assert (= (and d!1718052 (not c!933951)) b!5362587))

(assert (= (and b!5362587 c!933952) b!5362586))

(assert (= (and b!5362587 (not c!933952)) b!5362589))

(assert (= (or b!5362585 b!5362586) bm!383646))

(declare-fun m!6391082 () Bool)

(assert (=> b!5362585 m!6391082))

(assert (=> b!5362588 m!6390434))

(declare-fun m!6391084 () Bool)

(assert (=> bm!383646 m!6391084))

(assert (=> b!5361792 d!1718052))

(declare-fun bm!383647 () Bool)

(declare-fun call!383655 () (InoxSet Context!8906))

(declare-fun call!383652 () (InoxSet Context!8906))

(assert (=> bm!383647 (= call!383655 call!383652)))

(declare-fun b!5362590 () Bool)

(declare-fun e!3328087 () (InoxSet Context!8906))

(declare-fun e!3328090 () (InoxSet Context!8906))

(assert (=> b!5362590 (= e!3328087 e!3328090)))

(declare-fun c!933953 () Bool)

(assert (=> b!5362590 (= c!933953 ((_ is Union!15069) (h!67830 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun b!5362591 () Bool)

(declare-fun c!933956 () Bool)

(declare-fun e!3328089 () Bool)

(assert (=> b!5362591 (= c!933956 e!3328089)))

(declare-fun res!2275692 () Bool)

(assert (=> b!5362591 (=> (not res!2275692) (not e!3328089))))

(assert (=> b!5362591 (= res!2275692 ((_ is Concat!23914) (h!67830 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun e!3328085 () (InoxSet Context!8906))

(assert (=> b!5362591 (= e!3328090 e!3328085)))

(declare-fun b!5362592 () Bool)

(declare-fun e!3328086 () (InoxSet Context!8906))

(declare-fun call!383653 () (InoxSet Context!8906))

(assert (=> b!5362592 (= e!3328086 call!383653)))

(declare-fun bm!383648 () Bool)

(declare-fun call!383656 () List!61506)

(declare-fun call!383657 () List!61506)

(assert (=> bm!383648 (= call!383656 call!383657)))

(declare-fun bm!383649 () Bool)

(declare-fun c!933955 () Bool)

(assert (=> bm!383649 (= call!383652 (derivationStepZipperDown!517 (ite c!933953 (regOne!30651 (h!67830 (exprs!4953 (h!67832 zl!343)))) (ite c!933956 (regTwo!30650 (h!67830 (exprs!4953 (h!67832 zl!343)))) (ite c!933955 (regOne!30650 (h!67830 (exprs!4953 (h!67832 zl!343)))) (reg!15398 (h!67830 (exprs!4953 (h!67832 zl!343))))))) (ite (or c!933953 c!933956) lt!2184589 (Context!8907 call!383656)) (h!67831 s!2326)))))

(declare-fun b!5362593 () Bool)

(assert (=> b!5362593 (= e!3328085 e!3328086)))

(assert (=> b!5362593 (= c!933955 ((_ is Concat!23914) (h!67830 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun bm!383650 () Bool)

(assert (=> bm!383650 (= call!383653 call!383655)))

(declare-fun b!5362594 () Bool)

(assert (=> b!5362594 (= e!3328089 (nullable!5238 (regOne!30650 (h!67830 (exprs!4953 (h!67832 zl!343))))))))

(declare-fun d!1718054 () Bool)

(declare-fun c!933957 () Bool)

(assert (=> d!1718054 (= c!933957 (and ((_ is ElementMatch!15069) (h!67830 (exprs!4953 (h!67832 zl!343)))) (= (c!933735 (h!67830 (exprs!4953 (h!67832 zl!343)))) (h!67831 s!2326))))))

(assert (=> d!1718054 (= (derivationStepZipperDown!517 (h!67830 (exprs!4953 (h!67832 zl!343))) lt!2184589 (h!67831 s!2326)) e!3328087)))

(declare-fun call!383654 () (InoxSet Context!8906))

(declare-fun bm!383651 () Bool)

(assert (=> bm!383651 (= call!383654 (derivationStepZipperDown!517 (ite c!933953 (regTwo!30651 (h!67830 (exprs!4953 (h!67832 zl!343)))) (regOne!30650 (h!67830 (exprs!4953 (h!67832 zl!343))))) (ite c!933953 lt!2184589 (Context!8907 call!383657)) (h!67831 s!2326)))))

(declare-fun b!5362595 () Bool)

(assert (=> b!5362595 (= e!3328090 ((_ map or) call!383652 call!383654))))

(declare-fun b!5362596 () Bool)

(assert (=> b!5362596 (= e!3328085 ((_ map or) call!383654 call!383655))))

(declare-fun b!5362597 () Bool)

(declare-fun c!933954 () Bool)

(assert (=> b!5362597 (= c!933954 ((_ is Star!15069) (h!67830 (exprs!4953 (h!67832 zl!343)))))))

(declare-fun e!3328088 () (InoxSet Context!8906))

(assert (=> b!5362597 (= e!3328086 e!3328088)))

(declare-fun b!5362598 () Bool)

(assert (=> b!5362598 (= e!3328088 call!383653)))

(declare-fun bm!383652 () Bool)

(assert (=> bm!383652 (= call!383657 ($colon$colon!1442 (exprs!4953 lt!2184589) (ite (or c!933956 c!933955) (regTwo!30650 (h!67830 (exprs!4953 (h!67832 zl!343)))) (h!67830 (exprs!4953 (h!67832 zl!343))))))))

(declare-fun b!5362599 () Bool)

(assert (=> b!5362599 (= e!3328088 ((as const (Array Context!8906 Bool)) false))))

(declare-fun b!5362600 () Bool)

(assert (=> b!5362600 (= e!3328087 (store ((as const (Array Context!8906 Bool)) false) lt!2184589 true))))

(assert (= (and d!1718054 c!933957) b!5362600))

(assert (= (and d!1718054 (not c!933957)) b!5362590))

(assert (= (and b!5362590 c!933953) b!5362595))

(assert (= (and b!5362590 (not c!933953)) b!5362591))

(assert (= (and b!5362591 res!2275692) b!5362594))

(assert (= (and b!5362591 c!933956) b!5362596))

(assert (= (and b!5362591 (not c!933956)) b!5362593))

(assert (= (and b!5362593 c!933955) b!5362592))

(assert (= (and b!5362593 (not c!933955)) b!5362597))

(assert (= (and b!5362597 c!933954) b!5362598))

(assert (= (and b!5362597 (not c!933954)) b!5362599))

(assert (= (or b!5362592 b!5362598) bm!383648))

(assert (= (or b!5362592 b!5362598) bm!383650))

(assert (= (or b!5362596 bm!383648) bm!383652))

(assert (= (or b!5362596 bm!383650) bm!383647))

(assert (= (or b!5362595 b!5362596) bm!383651))

(assert (= (or b!5362595 bm!383647) bm!383649))

(declare-fun m!6391086 () Bool)

(assert (=> bm!383649 m!6391086))

(declare-fun m!6391088 () Bool)

(assert (=> bm!383652 m!6391088))

(declare-fun m!6391090 () Bool)

(assert (=> bm!383651 m!6391090))

(declare-fun m!6391092 () Bool)

(assert (=> b!5362600 m!6391092))

(declare-fun m!6391094 () Bool)

(assert (=> b!5362594 m!6391094))

(assert (=> b!5361792 d!1718054))

(declare-fun d!1718056 () Bool)

(assert (=> d!1718056 (= (isEmpty!33356 (t!374727 (exprs!4953 (h!67832 zl!343)))) ((_ is Nil!61382) (t!374727 (exprs!4953 (h!67832 zl!343)))))))

(assert (=> b!5361811 d!1718056))

(declare-fun b!5362601 () Bool)

(declare-fun e!3328091 () Bool)

(declare-fun lt!2184707 () Option!15180)

(assert (=> b!5362601 (= e!3328091 (= (++!13372 (_1!35571 (get!21112 lt!2184707)) (_2!35571 (get!21112 lt!2184707))) s!2326))))

(declare-fun b!5362602 () Bool)

(declare-fun e!3328092 () Bool)

(assert (=> b!5362602 (= e!3328092 (not (isDefined!11883 lt!2184707)))))

(declare-fun b!5362603 () Bool)

(declare-fun e!3328093 () Bool)

(assert (=> b!5362603 (= e!3328093 (matchR!7254 (regTwo!30650 r!7292) s!2326))))

(declare-fun b!5362604 () Bool)

(declare-fun lt!2184705 () Unit!153794)

(declare-fun lt!2184706 () Unit!153794)

(assert (=> b!5362604 (= lt!2184705 lt!2184706)))

(assert (=> b!5362604 (= (++!13372 (++!13372 Nil!61383 (Cons!61383 (h!67831 s!2326) Nil!61383)) (t!374728 s!2326)) s!2326)))

(assert (=> b!5362604 (= lt!2184706 (lemmaMoveElementToOtherListKeepsConcatEq!1787 Nil!61383 (h!67831 s!2326) (t!374728 s!2326) s!2326))))

(declare-fun e!3328095 () Option!15180)

(assert (=> b!5362604 (= e!3328095 (findConcatSeparation!1594 (regOne!30650 r!7292) (regTwo!30650 r!7292) (++!13372 Nil!61383 (Cons!61383 (h!67831 s!2326) Nil!61383)) (t!374728 s!2326) s!2326))))

(declare-fun b!5362605 () Bool)

(declare-fun e!3328094 () Option!15180)

(assert (=> b!5362605 (= e!3328094 (Some!15179 (tuple2!64537 Nil!61383 s!2326)))))

(declare-fun b!5362606 () Bool)

(declare-fun res!2275696 () Bool)

(assert (=> b!5362606 (=> (not res!2275696) (not e!3328091))))

(assert (=> b!5362606 (= res!2275696 (matchR!7254 (regOne!30650 r!7292) (_1!35571 (get!21112 lt!2184707))))))

(declare-fun b!5362607 () Bool)

(declare-fun res!2275697 () Bool)

(assert (=> b!5362607 (=> (not res!2275697) (not e!3328091))))

(assert (=> b!5362607 (= res!2275697 (matchR!7254 (regTwo!30650 r!7292) (_2!35571 (get!21112 lt!2184707))))))

(declare-fun b!5362608 () Bool)

(assert (=> b!5362608 (= e!3328094 e!3328095)))

(declare-fun c!933958 () Bool)

(assert (=> b!5362608 (= c!933958 ((_ is Nil!61383) s!2326))))

(declare-fun d!1718058 () Bool)

(assert (=> d!1718058 e!3328092))

(declare-fun res!2275695 () Bool)

(assert (=> d!1718058 (=> res!2275695 e!3328092)))

(assert (=> d!1718058 (= res!2275695 e!3328091)))

(declare-fun res!2275694 () Bool)

(assert (=> d!1718058 (=> (not res!2275694) (not e!3328091))))

(assert (=> d!1718058 (= res!2275694 (isDefined!11883 lt!2184707))))

(assert (=> d!1718058 (= lt!2184707 e!3328094)))

(declare-fun c!933959 () Bool)

(assert (=> d!1718058 (= c!933959 e!3328093)))

(declare-fun res!2275693 () Bool)

(assert (=> d!1718058 (=> (not res!2275693) (not e!3328093))))

(assert (=> d!1718058 (= res!2275693 (matchR!7254 (regOne!30650 r!7292) Nil!61383))))

(assert (=> d!1718058 (validRegex!6805 (regOne!30650 r!7292))))

(assert (=> d!1718058 (= (findConcatSeparation!1594 (regOne!30650 r!7292) (regTwo!30650 r!7292) Nil!61383 s!2326 s!2326) lt!2184707)))

(declare-fun b!5362609 () Bool)

(assert (=> b!5362609 (= e!3328095 None!15179)))

(assert (= (and d!1718058 res!2275693) b!5362603))

(assert (= (and d!1718058 c!933959) b!5362605))

(assert (= (and d!1718058 (not c!933959)) b!5362608))

(assert (= (and b!5362608 c!933958) b!5362609))

(assert (= (and b!5362608 (not c!933958)) b!5362604))

(assert (= (and d!1718058 res!2275694) b!5362606))

(assert (= (and b!5362606 res!2275696) b!5362607))

(assert (= (and b!5362607 res!2275697) b!5362601))

(assert (= (and d!1718058 (not res!2275695)) b!5362602))

(declare-fun m!6391096 () Bool)

(assert (=> b!5362606 m!6391096))

(declare-fun m!6391098 () Bool)

(assert (=> b!5362606 m!6391098))

(declare-fun m!6391100 () Bool)

(assert (=> d!1718058 m!6391100))

(declare-fun m!6391102 () Bool)

(assert (=> d!1718058 m!6391102))

(declare-fun m!6391104 () Bool)

(assert (=> d!1718058 m!6391104))

(assert (=> b!5362602 m!6391100))

(assert (=> b!5362601 m!6391096))

(declare-fun m!6391106 () Bool)

(assert (=> b!5362601 m!6391106))

(assert (=> b!5362603 m!6390814))

(assert (=> b!5362604 m!6390816))

(assert (=> b!5362604 m!6390816))

(assert (=> b!5362604 m!6390818))

(assert (=> b!5362604 m!6390820))

(assert (=> b!5362604 m!6390816))

(declare-fun m!6391108 () Bool)

(assert (=> b!5362604 m!6391108))

(assert (=> b!5362607 m!6391096))

(declare-fun m!6391110 () Bool)

(assert (=> b!5362607 m!6391110))

(assert (=> b!5361813 d!1718058))

(declare-fun d!1718060 () Bool)

(assert (=> d!1718060 (= (Exists!2250 lambda!276163) (choose!40258 lambda!276163))))

(declare-fun bs!1242046 () Bool)

(assert (= bs!1242046 d!1718060))

(declare-fun m!6391112 () Bool)

(assert (=> bs!1242046 m!6391112))

(assert (=> b!5361813 d!1718060))

(declare-fun d!1718062 () Bool)

(assert (=> d!1718062 (= (Exists!2250 lambda!276164) (choose!40258 lambda!276164))))

(declare-fun bs!1242047 () Bool)

(assert (= bs!1242047 d!1718062))

(declare-fun m!6391114 () Bool)

(assert (=> bs!1242047 m!6391114))

(assert (=> b!5361813 d!1718062))

(declare-fun bs!1242048 () Bool)

(declare-fun d!1718064 () Bool)

(assert (= bs!1242048 (and d!1718064 b!5362501)))

(declare-fun lambda!276232 () Int)

(assert (=> bs!1242048 (not (= lambda!276232 lambda!276228))))

(declare-fun bs!1242049 () Bool)

(assert (= bs!1242049 (and d!1718064 b!5361823)))

(assert (=> bs!1242049 (= (= (regOne!30650 r!7292) lt!2184574) (= lambda!276232 lambda!276166))))

(assert (=> bs!1242049 (not (= lambda!276232 lambda!276167))))

(declare-fun bs!1242050 () Bool)

(assert (= bs!1242050 (and d!1718064 d!1717964)))

(assert (=> bs!1242050 (= (= (regOne!30650 r!7292) lt!2184574) (= lambda!276232 lambda!276207))))

(declare-fun bs!1242051 () Bool)

(assert (= bs!1242051 (and d!1718064 b!5361813)))

(assert (=> bs!1242051 (= lambda!276232 lambda!276163)))

(declare-fun bs!1242052 () Bool)

(assert (= bs!1242052 (and d!1718064 b!5362503)))

(assert (=> bs!1242052 (not (= lambda!276232 lambda!276227))))

(declare-fun bs!1242053 () Bool)

(assert (= bs!1242053 (and d!1718064 d!1717932)))

(assert (=> bs!1242053 (not (= lambda!276232 lambda!276196))))

(assert (=> bs!1242051 (not (= lambda!276232 lambda!276164))))

(assert (=> bs!1242053 (= (= (regOne!30650 r!7292) lt!2184574) (= lambda!276232 lambda!276195))))

(assert (=> d!1718064 true))

(assert (=> d!1718064 true))

(assert (=> d!1718064 true))

(assert (=> d!1718064 (= (isDefined!11883 (findConcatSeparation!1594 (regOne!30650 r!7292) (regTwo!30650 r!7292) Nil!61383 s!2326 s!2326)) (Exists!2250 lambda!276232))))

(declare-fun lt!2184708 () Unit!153794)

(assert (=> d!1718064 (= lt!2184708 (choose!40259 (regOne!30650 r!7292) (regTwo!30650 r!7292) s!2326))))

(assert (=> d!1718064 (validRegex!6805 (regOne!30650 r!7292))))

(assert (=> d!1718064 (= (lemmaFindConcatSeparationEquivalentToExists!1358 (regOne!30650 r!7292) (regTwo!30650 r!7292) s!2326) lt!2184708)))

(declare-fun bs!1242054 () Bool)

(assert (= bs!1242054 d!1718064))

(declare-fun m!6391116 () Bool)

(assert (=> bs!1242054 m!6391116))

(assert (=> bs!1242054 m!6390402))

(assert (=> bs!1242054 m!6391104))

(assert (=> bs!1242054 m!6390402))

(assert (=> bs!1242054 m!6390404))

(declare-fun m!6391118 () Bool)

(assert (=> bs!1242054 m!6391118))

(assert (=> b!5361813 d!1718064))

(declare-fun bs!1242055 () Bool)

(declare-fun d!1718066 () Bool)

(assert (= bs!1242055 (and d!1718066 b!5362501)))

(declare-fun lambda!276233 () Int)

(assert (=> bs!1242055 (not (= lambda!276233 lambda!276228))))

(declare-fun bs!1242056 () Bool)

(assert (= bs!1242056 (and d!1718066 b!5361823)))

(assert (=> bs!1242056 (= (= (regOne!30650 r!7292) lt!2184574) (= lambda!276233 lambda!276166))))

(assert (=> bs!1242056 (not (= lambda!276233 lambda!276167))))

(declare-fun bs!1242057 () Bool)

(assert (= bs!1242057 (and d!1718066 d!1717964)))

(assert (=> bs!1242057 (= (= (regOne!30650 r!7292) lt!2184574) (= lambda!276233 lambda!276207))))

(declare-fun bs!1242058 () Bool)

(assert (= bs!1242058 (and d!1718066 d!1718064)))

(assert (=> bs!1242058 (= lambda!276233 lambda!276232)))

(declare-fun bs!1242059 () Bool)

(assert (= bs!1242059 (and d!1718066 b!5361813)))

(assert (=> bs!1242059 (= lambda!276233 lambda!276163)))

(declare-fun bs!1242060 () Bool)

(assert (= bs!1242060 (and d!1718066 b!5362503)))

(assert (=> bs!1242060 (not (= lambda!276233 lambda!276227))))

(declare-fun bs!1242061 () Bool)

(assert (= bs!1242061 (and d!1718066 d!1717932)))

(assert (=> bs!1242061 (not (= lambda!276233 lambda!276196))))

(assert (=> bs!1242059 (not (= lambda!276233 lambda!276164))))

(assert (=> bs!1242061 (= (= (regOne!30650 r!7292) lt!2184574) (= lambda!276233 lambda!276195))))

(assert (=> d!1718066 true))

(assert (=> d!1718066 true))

(assert (=> d!1718066 true))

(declare-fun lambda!276234 () Int)

(assert (=> bs!1242055 (= lambda!276234 lambda!276228)))

(assert (=> bs!1242056 (not (= lambda!276234 lambda!276166))))

(declare-fun bs!1242062 () Bool)

(assert (= bs!1242062 d!1718066))

(assert (=> bs!1242062 (not (= lambda!276234 lambda!276233))))

(assert (=> bs!1242056 (= (= (regOne!30650 r!7292) lt!2184574) (= lambda!276234 lambda!276167))))

(assert (=> bs!1242057 (not (= lambda!276234 lambda!276207))))

(assert (=> bs!1242058 (not (= lambda!276234 lambda!276232))))

(assert (=> bs!1242059 (not (= lambda!276234 lambda!276163))))

(assert (=> bs!1242060 (not (= lambda!276234 lambda!276227))))

(assert (=> bs!1242061 (= (= (regOne!30650 r!7292) lt!2184574) (= lambda!276234 lambda!276196))))

(assert (=> bs!1242059 (= lambda!276234 lambda!276164)))

(assert (=> bs!1242061 (not (= lambda!276234 lambda!276195))))

(assert (=> d!1718066 true))

(assert (=> d!1718066 true))

(assert (=> d!1718066 true))

(assert (=> d!1718066 (= (Exists!2250 lambda!276233) (Exists!2250 lambda!276234))))

(declare-fun lt!2184709 () Unit!153794)

(assert (=> d!1718066 (= lt!2184709 (choose!40257 (regOne!30650 r!7292) (regTwo!30650 r!7292) s!2326))))

(assert (=> d!1718066 (validRegex!6805 (regOne!30650 r!7292))))

(assert (=> d!1718066 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!904 (regOne!30650 r!7292) (regTwo!30650 r!7292) s!2326) lt!2184709)))

(declare-fun m!6391120 () Bool)

(assert (=> bs!1242062 m!6391120))

(declare-fun m!6391122 () Bool)

(assert (=> bs!1242062 m!6391122))

(declare-fun m!6391124 () Bool)

(assert (=> bs!1242062 m!6391124))

(assert (=> bs!1242062 m!6391104))

(assert (=> b!5361813 d!1718066))

(declare-fun d!1718068 () Bool)

(assert (=> d!1718068 (= (isDefined!11883 (findConcatSeparation!1594 (regOne!30650 r!7292) (regTwo!30650 r!7292) Nil!61383 s!2326 s!2326)) (not (isEmpty!33360 (findConcatSeparation!1594 (regOne!30650 r!7292) (regTwo!30650 r!7292) Nil!61383 s!2326 s!2326))))))

(declare-fun bs!1242063 () Bool)

(assert (= bs!1242063 d!1718068))

(assert (=> bs!1242063 m!6390402))

(declare-fun m!6391126 () Bool)

(assert (=> bs!1242063 m!6391126))

(assert (=> b!5361813 d!1718068))

(declare-fun d!1718070 () Bool)

(declare-fun c!933962 () Bool)

(assert (=> d!1718070 (= c!933962 (isEmpty!33359 s!2326))))

(declare-fun e!3328098 () Bool)

(assert (=> d!1718070 (= (matchZipper!1313 lt!2184588 s!2326) e!3328098)))

(declare-fun b!5362614 () Bool)

(declare-fun nullableZipper!1392 ((InoxSet Context!8906)) Bool)

(assert (=> b!5362614 (= e!3328098 (nullableZipper!1392 lt!2184588))))

(declare-fun b!5362615 () Bool)

(assert (=> b!5362615 (= e!3328098 (matchZipper!1313 (derivationStepZipper!1308 lt!2184588 (head!11501 s!2326)) (tail!10598 s!2326)))))

(assert (= (and d!1718070 c!933962) b!5362614))

(assert (= (and d!1718070 (not c!933962)) b!5362615))

(assert (=> d!1718070 m!6390990))

(declare-fun m!6391128 () Bool)

(assert (=> b!5362614 m!6391128))

(assert (=> b!5362615 m!6391002))

(assert (=> b!5362615 m!6391002))

(declare-fun m!6391130 () Bool)

(assert (=> b!5362615 m!6391130))

(assert (=> b!5362615 m!6390996))

(assert (=> b!5362615 m!6391130))

(assert (=> b!5362615 m!6390996))

(declare-fun m!6391132 () Bool)

(assert (=> b!5362615 m!6391132))

(assert (=> b!5361812 d!1718070))

(declare-fun d!1718072 () Bool)

(declare-fun c!933963 () Bool)

(assert (=> d!1718072 (= c!933963 (isEmpty!33359 (t!374728 s!2326)))))

(declare-fun e!3328099 () Bool)

(assert (=> d!1718072 (= (matchZipper!1313 lt!2184571 (t!374728 s!2326)) e!3328099)))

(declare-fun b!5362616 () Bool)

(assert (=> b!5362616 (= e!3328099 (nullableZipper!1392 lt!2184571))))

(declare-fun b!5362617 () Bool)

(assert (=> b!5362617 (= e!3328099 (matchZipper!1313 (derivationStepZipper!1308 lt!2184571 (head!11501 (t!374728 s!2326))) (tail!10598 (t!374728 s!2326))))))

(assert (= (and d!1718072 c!933963) b!5362616))

(assert (= (and d!1718072 (not c!933963)) b!5362617))

(declare-fun m!6391134 () Bool)

(assert (=> d!1718072 m!6391134))

(declare-fun m!6391136 () Bool)

(assert (=> b!5362616 m!6391136))

(declare-fun m!6391138 () Bool)

(assert (=> b!5362617 m!6391138))

(assert (=> b!5362617 m!6391138))

(declare-fun m!6391140 () Bool)

(assert (=> b!5362617 m!6391140))

(declare-fun m!6391142 () Bool)

(assert (=> b!5362617 m!6391142))

(assert (=> b!5362617 m!6391140))

(assert (=> b!5362617 m!6391142))

(declare-fun m!6391144 () Bool)

(assert (=> b!5362617 m!6391144))

(assert (=> b!5361812 d!1718072))

(declare-fun d!1718074 () Bool)

(assert (=> d!1718074 (= (isEmpty!33355 (t!374729 zl!343)) ((_ is Nil!61384) (t!374729 zl!343)))))

(assert (=> b!5361789 d!1718074))

(declare-fun d!1718076 () Bool)

(declare-fun e!3328102 () Bool)

(assert (=> d!1718076 (= (matchZipper!1313 ((_ map or) lt!2184567 lt!2184562) (t!374728 s!2326)) e!3328102)))

(declare-fun res!2275700 () Bool)

(assert (=> d!1718076 (=> res!2275700 e!3328102)))

(assert (=> d!1718076 (= res!2275700 (matchZipper!1313 lt!2184567 (t!374728 s!2326)))))

(declare-fun lt!2184712 () Unit!153794)

(declare-fun choose!40265 ((InoxSet Context!8906) (InoxSet Context!8906) List!61507) Unit!153794)

(assert (=> d!1718076 (= lt!2184712 (choose!40265 lt!2184567 lt!2184562 (t!374728 s!2326)))))

(assert (=> d!1718076 (= (lemmaZipperConcatMatchesSameAsBothZippers!306 lt!2184567 lt!2184562 (t!374728 s!2326)) lt!2184712)))

(declare-fun b!5362620 () Bool)

(assert (=> b!5362620 (= e!3328102 (matchZipper!1313 lt!2184562 (t!374728 s!2326)))))

(assert (= (and d!1718076 (not res!2275700)) b!5362620))

(assert (=> d!1718076 m!6390506))

(assert (=> d!1718076 m!6390504))

(declare-fun m!6391146 () Bool)

(assert (=> d!1718076 m!6391146))

(assert (=> b!5362620 m!6390472))

(assert (=> b!5361808 d!1718076))

(declare-fun d!1718078 () Bool)

(declare-fun c!933964 () Bool)

(assert (=> d!1718078 (= c!933964 (isEmpty!33359 (t!374728 s!2326)))))

(declare-fun e!3328103 () Bool)

(assert (=> d!1718078 (= (matchZipper!1313 lt!2184567 (t!374728 s!2326)) e!3328103)))

(declare-fun b!5362621 () Bool)

(assert (=> b!5362621 (= e!3328103 (nullableZipper!1392 lt!2184567))))

(declare-fun b!5362622 () Bool)

(assert (=> b!5362622 (= e!3328103 (matchZipper!1313 (derivationStepZipper!1308 lt!2184567 (head!11501 (t!374728 s!2326))) (tail!10598 (t!374728 s!2326))))))

(assert (= (and d!1718078 c!933964) b!5362621))

(assert (= (and d!1718078 (not c!933964)) b!5362622))

(assert (=> d!1718078 m!6391134))

(declare-fun m!6391148 () Bool)

(assert (=> b!5362621 m!6391148))

(assert (=> b!5362622 m!6391138))

(assert (=> b!5362622 m!6391138))

(declare-fun m!6391150 () Bool)

(assert (=> b!5362622 m!6391150))

(assert (=> b!5362622 m!6391142))

(assert (=> b!5362622 m!6391150))

(assert (=> b!5362622 m!6391142))

(declare-fun m!6391152 () Bool)

(assert (=> b!5362622 m!6391152))

(assert (=> b!5361808 d!1718078))

(declare-fun d!1718080 () Bool)

(declare-fun c!933965 () Bool)

(assert (=> d!1718080 (= c!933965 (isEmpty!33359 (t!374728 s!2326)))))

(declare-fun e!3328104 () Bool)

(assert (=> d!1718080 (= (matchZipper!1313 ((_ map or) lt!2184567 lt!2184562) (t!374728 s!2326)) e!3328104)))

(declare-fun b!5362623 () Bool)

(assert (=> b!5362623 (= e!3328104 (nullableZipper!1392 ((_ map or) lt!2184567 lt!2184562)))))

(declare-fun b!5362624 () Bool)

(assert (=> b!5362624 (= e!3328104 (matchZipper!1313 (derivationStepZipper!1308 ((_ map or) lt!2184567 lt!2184562) (head!11501 (t!374728 s!2326))) (tail!10598 (t!374728 s!2326))))))

(assert (= (and d!1718080 c!933965) b!5362623))

(assert (= (and d!1718080 (not c!933965)) b!5362624))

(assert (=> d!1718080 m!6391134))

(declare-fun m!6391154 () Bool)

(assert (=> b!5362623 m!6391154))

(assert (=> b!5362624 m!6391138))

(assert (=> b!5362624 m!6391138))

(declare-fun m!6391156 () Bool)

(assert (=> b!5362624 m!6391156))

(assert (=> b!5362624 m!6391142))

(assert (=> b!5362624 m!6391156))

(assert (=> b!5362624 m!6391142))

(declare-fun m!6391158 () Bool)

(assert (=> b!5362624 m!6391158))

(assert (=> b!5361808 d!1718080))

(declare-fun d!1718082 () Bool)

(declare-fun c!933966 () Bool)

(assert (=> d!1718082 (= c!933966 (isEmpty!33359 (t!374728 s!2326)))))

(declare-fun e!3328105 () Bool)

(assert (=> d!1718082 (= (matchZipper!1313 lt!2184562 (t!374728 s!2326)) e!3328105)))

(declare-fun b!5362625 () Bool)

(assert (=> b!5362625 (= e!3328105 (nullableZipper!1392 lt!2184562))))

(declare-fun b!5362626 () Bool)

(assert (=> b!5362626 (= e!3328105 (matchZipper!1313 (derivationStepZipper!1308 lt!2184562 (head!11501 (t!374728 s!2326))) (tail!10598 (t!374728 s!2326))))))

(assert (= (and d!1718082 c!933966) b!5362625))

(assert (= (and d!1718082 (not c!933966)) b!5362626))

(assert (=> d!1718082 m!6391134))

(declare-fun m!6391160 () Bool)

(assert (=> b!5362625 m!6391160))

(assert (=> b!5362626 m!6391138))

(assert (=> b!5362626 m!6391138))

(declare-fun m!6391162 () Bool)

(assert (=> b!5362626 m!6391162))

(assert (=> b!5362626 m!6391142))

(assert (=> b!5362626 m!6391162))

(assert (=> b!5362626 m!6391142))

(declare-fun m!6391164 () Bool)

(assert (=> b!5362626 m!6391164))

(assert (=> b!5361791 d!1718082))

(declare-fun d!1718084 () Bool)

(declare-fun lt!2184713 () Regex!15069)

(assert (=> d!1718084 (validRegex!6805 lt!2184713)))

(assert (=> d!1718084 (= lt!2184713 (generalisedUnion!998 (unfocusZipperList!511 (Cons!61384 lt!2184568 Nil!61384))))))

(assert (=> d!1718084 (= (unfocusZipper!811 (Cons!61384 lt!2184568 Nil!61384)) lt!2184713)))

(declare-fun bs!1242064 () Bool)

(assert (= bs!1242064 d!1718084))

(declare-fun m!6391166 () Bool)

(assert (=> bs!1242064 m!6391166))

(declare-fun m!6391168 () Bool)

(assert (=> bs!1242064 m!6391168))

(assert (=> bs!1242064 m!6391168))

(declare-fun m!6391170 () Bool)

(assert (=> bs!1242064 m!6391170))

(assert (=> b!5361810 d!1718084))

(declare-fun b!5362627 () Bool)

(declare-fun res!2275702 () Bool)

(declare-fun e!3328110 () Bool)

(assert (=> b!5362627 (=> res!2275702 e!3328110)))

(declare-fun e!3328106 () Bool)

(assert (=> b!5362627 (= res!2275702 e!3328106)))

(declare-fun res!2275705 () Bool)

(assert (=> b!5362627 (=> (not res!2275705) (not e!3328106))))

(declare-fun lt!2184714 () Bool)

(assert (=> b!5362627 (= res!2275705 lt!2184714)))

(declare-fun b!5362628 () Bool)

(declare-fun res!2275708 () Bool)

(declare-fun e!3328109 () Bool)

(assert (=> b!5362628 (=> res!2275708 e!3328109)))

(assert (=> b!5362628 (= res!2275708 (not (isEmpty!33359 (tail!10598 s!2326))))))

(declare-fun bm!383653 () Bool)

(declare-fun call!383658 () Bool)

(assert (=> bm!383653 (= call!383658 (isEmpty!33359 s!2326))))

(declare-fun b!5362629 () Bool)

(declare-fun e!3328112 () Bool)

(assert (=> b!5362629 (= e!3328112 e!3328109)))

(declare-fun res!2275701 () Bool)

(assert (=> b!5362629 (=> res!2275701 e!3328109)))

(assert (=> b!5362629 (= res!2275701 call!383658)))

(declare-fun b!5362630 () Bool)

(declare-fun res!2275703 () Bool)

(assert (=> b!5362630 (=> res!2275703 e!3328110)))

(assert (=> b!5362630 (= res!2275703 (not ((_ is ElementMatch!15069) lt!2184582)))))

(declare-fun e!3328107 () Bool)

(assert (=> b!5362630 (= e!3328107 e!3328110)))

(declare-fun b!5362631 () Bool)

(declare-fun res!2275707 () Bool)

(assert (=> b!5362631 (=> (not res!2275707) (not e!3328106))))

(assert (=> b!5362631 (= res!2275707 (not call!383658))))

(declare-fun b!5362632 () Bool)

(assert (=> b!5362632 (= e!3328110 e!3328112)))

(declare-fun res!2275706 () Bool)

(assert (=> b!5362632 (=> (not res!2275706) (not e!3328112))))

(assert (=> b!5362632 (= res!2275706 (not lt!2184714))))

(declare-fun b!5362633 () Bool)

(declare-fun e!3328108 () Bool)

(assert (=> b!5362633 (= e!3328108 (= lt!2184714 call!383658))))

(declare-fun b!5362634 () Bool)

(declare-fun e!3328111 () Bool)

(assert (=> b!5362634 (= e!3328111 (matchR!7254 (derivativeStep!4212 lt!2184582 (head!11501 s!2326)) (tail!10598 s!2326)))))

(declare-fun b!5362635 () Bool)

(assert (=> b!5362635 (= e!3328106 (= (head!11501 s!2326) (c!933735 lt!2184582)))))

(declare-fun b!5362636 () Bool)

(assert (=> b!5362636 (= e!3328108 e!3328107)))

(declare-fun c!933967 () Bool)

(assert (=> b!5362636 (= c!933967 ((_ is EmptyLang!15069) lt!2184582))))

(declare-fun b!5362637 () Bool)

(declare-fun res!2275704 () Bool)

(assert (=> b!5362637 (=> (not res!2275704) (not e!3328106))))

(assert (=> b!5362637 (= res!2275704 (isEmpty!33359 (tail!10598 s!2326)))))

(declare-fun d!1718086 () Bool)

(assert (=> d!1718086 e!3328108))

(declare-fun c!933968 () Bool)

(assert (=> d!1718086 (= c!933968 ((_ is EmptyExpr!15069) lt!2184582))))

(assert (=> d!1718086 (= lt!2184714 e!3328111)))

(declare-fun c!933969 () Bool)

(assert (=> d!1718086 (= c!933969 (isEmpty!33359 s!2326))))

(assert (=> d!1718086 (validRegex!6805 lt!2184582)))

(assert (=> d!1718086 (= (matchR!7254 lt!2184582 s!2326) lt!2184714)))

(declare-fun b!5362638 () Bool)

(assert (=> b!5362638 (= e!3328109 (not (= (head!11501 s!2326) (c!933735 lt!2184582))))))

(declare-fun b!5362639 () Bool)

(assert (=> b!5362639 (= e!3328111 (nullable!5238 lt!2184582))))

(declare-fun b!5362640 () Bool)

(assert (=> b!5362640 (= e!3328107 (not lt!2184714))))

(assert (= (and d!1718086 c!933969) b!5362639))

(assert (= (and d!1718086 (not c!933969)) b!5362634))

(assert (= (and d!1718086 c!933968) b!5362633))

(assert (= (and d!1718086 (not c!933968)) b!5362636))

(assert (= (and b!5362636 c!933967) b!5362640))

(assert (= (and b!5362636 (not c!933967)) b!5362630))

(assert (= (and b!5362630 (not res!2275703)) b!5362627))

(assert (= (and b!5362627 res!2275705) b!5362631))

(assert (= (and b!5362631 res!2275707) b!5362637))

(assert (= (and b!5362637 res!2275704) b!5362635))

(assert (= (and b!5362627 (not res!2275702)) b!5362632))

(assert (= (and b!5362632 res!2275706) b!5362629))

(assert (= (and b!5362629 (not res!2275701)) b!5362628))

(assert (= (and b!5362628 (not res!2275708)) b!5362638))

(assert (= (or b!5362633 b!5362629 b!5362631) bm!383653))

(assert (=> b!5362628 m!6390996))

(assert (=> b!5362628 m!6390996))

(assert (=> b!5362628 m!6390998))

(declare-fun m!6391172 () Bool)

(assert (=> b!5362639 m!6391172))

(assert (=> b!5362635 m!6391002))

(assert (=> b!5362637 m!6390996))

(assert (=> b!5362637 m!6390996))

(assert (=> b!5362637 m!6390998))

(assert (=> b!5362638 m!6391002))

(assert (=> b!5362634 m!6391002))

(assert (=> b!5362634 m!6391002))

(declare-fun m!6391174 () Bool)

(assert (=> b!5362634 m!6391174))

(assert (=> b!5362634 m!6390996))

(assert (=> b!5362634 m!6391174))

(assert (=> b!5362634 m!6390996))

(declare-fun m!6391176 () Bool)

(assert (=> b!5362634 m!6391176))

(assert (=> d!1718086 m!6390990))

(declare-fun m!6391178 () Bool)

(assert (=> d!1718086 m!6391178))

(assert (=> bm!383653 m!6390990))

(assert (=> b!5361790 d!1718086))

(declare-fun bs!1242065 () Bool)

(declare-fun b!5362644 () Bool)

(assert (= bs!1242065 (and b!5362644 b!5362501)))

(declare-fun lambda!276235 () Int)

(assert (=> bs!1242065 (not (= lambda!276235 lambda!276228))))

(declare-fun bs!1242066 () Bool)

(assert (= bs!1242066 (and b!5362644 b!5361823)))

(assert (=> bs!1242066 (not (= lambda!276235 lambda!276166))))

(declare-fun bs!1242067 () Bool)

(assert (= bs!1242067 (and b!5362644 d!1718066)))

(assert (=> bs!1242067 (not (= lambda!276235 lambda!276233))))

(assert (=> bs!1242066 (not (= lambda!276235 lambda!276167))))

(declare-fun bs!1242068 () Bool)

(assert (= bs!1242068 (and b!5362644 d!1717964)))

(assert (=> bs!1242068 (not (= lambda!276235 lambda!276207))))

(declare-fun bs!1242069 () Bool)

(assert (= bs!1242069 (and b!5362644 d!1718064)))

(assert (=> bs!1242069 (not (= lambda!276235 lambda!276232))))

(declare-fun bs!1242070 () Bool)

(assert (= bs!1242070 (and b!5362644 b!5361813)))

(assert (=> bs!1242070 (not (= lambda!276235 lambda!276163))))

(declare-fun bs!1242071 () Bool)

(assert (= bs!1242071 (and b!5362644 b!5362503)))

(assert (=> bs!1242071 (= (and (= (reg!15398 lt!2184582) (reg!15398 r!7292)) (= lt!2184582 r!7292)) (= lambda!276235 lambda!276227))))

(assert (=> bs!1242067 (not (= lambda!276235 lambda!276234))))

(declare-fun bs!1242072 () Bool)

(assert (= bs!1242072 (and b!5362644 d!1717932)))

(assert (=> bs!1242072 (not (= lambda!276235 lambda!276196))))

(assert (=> bs!1242070 (not (= lambda!276235 lambda!276164))))

(assert (=> bs!1242072 (not (= lambda!276235 lambda!276195))))

(assert (=> b!5362644 true))

(assert (=> b!5362644 true))

(declare-fun bs!1242073 () Bool)

(declare-fun b!5362642 () Bool)

(assert (= bs!1242073 (and b!5362642 b!5362501)))

(declare-fun lambda!276236 () Int)

(assert (=> bs!1242073 (= (and (= (regOne!30650 lt!2184582) (regOne!30650 r!7292)) (= (regTwo!30650 lt!2184582) (regTwo!30650 r!7292))) (= lambda!276236 lambda!276228))))

(declare-fun bs!1242074 () Bool)

(assert (= bs!1242074 (and b!5362642 b!5361823)))

(assert (=> bs!1242074 (not (= lambda!276236 lambda!276166))))

(declare-fun bs!1242075 () Bool)

(assert (= bs!1242075 (and b!5362642 d!1718066)))

(assert (=> bs!1242075 (not (= lambda!276236 lambda!276233))))

(assert (=> bs!1242074 (= (and (= (regOne!30650 lt!2184582) lt!2184574) (= (regTwo!30650 lt!2184582) (regTwo!30650 r!7292))) (= lambda!276236 lambda!276167))))

(declare-fun bs!1242076 () Bool)

(assert (= bs!1242076 (and b!5362642 d!1717964)))

(assert (=> bs!1242076 (not (= lambda!276236 lambda!276207))))

(declare-fun bs!1242077 () Bool)

(assert (= bs!1242077 (and b!5362642 d!1718064)))

(assert (=> bs!1242077 (not (= lambda!276236 lambda!276232))))

(declare-fun bs!1242078 () Bool)

(assert (= bs!1242078 (and b!5362642 b!5361813)))

(assert (=> bs!1242078 (not (= lambda!276236 lambda!276163))))

(declare-fun bs!1242079 () Bool)

(assert (= bs!1242079 (and b!5362642 b!5362503)))

(assert (=> bs!1242079 (not (= lambda!276236 lambda!276227))))

(declare-fun bs!1242080 () Bool)

(assert (= bs!1242080 (and b!5362642 b!5362644)))

(assert (=> bs!1242080 (not (= lambda!276236 lambda!276235))))

(assert (=> bs!1242075 (= (and (= (regOne!30650 lt!2184582) (regOne!30650 r!7292)) (= (regTwo!30650 lt!2184582) (regTwo!30650 r!7292))) (= lambda!276236 lambda!276234))))

(declare-fun bs!1242081 () Bool)

(assert (= bs!1242081 (and b!5362642 d!1717932)))

(assert (=> bs!1242081 (= (and (= (regOne!30650 lt!2184582) lt!2184574) (= (regTwo!30650 lt!2184582) (regTwo!30650 r!7292))) (= lambda!276236 lambda!276196))))

(assert (=> bs!1242078 (= (and (= (regOne!30650 lt!2184582) (regOne!30650 r!7292)) (= (regTwo!30650 lt!2184582) (regTwo!30650 r!7292))) (= lambda!276236 lambda!276164))))

(assert (=> bs!1242081 (not (= lambda!276236 lambda!276195))))

(assert (=> b!5362642 true))

(assert (=> b!5362642 true))

(declare-fun b!5362641 () Bool)

(declare-fun e!3328113 () Bool)

(assert (=> b!5362641 (= e!3328113 (matchRSpec!2172 (regTwo!30651 lt!2184582) s!2326))))

(declare-fun e!3328117 () Bool)

(declare-fun call!383659 () Bool)

(assert (=> b!5362642 (= e!3328117 call!383659)))

(declare-fun bm!383654 () Bool)

(declare-fun call!383660 () Bool)

(assert (=> bm!383654 (= call!383660 (isEmpty!33359 s!2326))))

(declare-fun b!5362643 () Bool)

(declare-fun c!933970 () Bool)

(assert (=> b!5362643 (= c!933970 ((_ is Union!15069) lt!2184582))))

(declare-fun e!3328114 () Bool)

(declare-fun e!3328119 () Bool)

(assert (=> b!5362643 (= e!3328114 e!3328119)))

(declare-fun e!3328118 () Bool)

(assert (=> b!5362644 (= e!3328118 call!383659)))

(declare-fun b!5362645 () Bool)

(declare-fun c!933971 () Bool)

(assert (=> b!5362645 (= c!933971 ((_ is ElementMatch!15069) lt!2184582))))

(declare-fun e!3328116 () Bool)

(assert (=> b!5362645 (= e!3328116 e!3328114)))

(declare-fun b!5362646 () Bool)

(assert (=> b!5362646 (= e!3328114 (= s!2326 (Cons!61383 (c!933735 lt!2184582) Nil!61383)))))

(declare-fun b!5362647 () Bool)

(declare-fun res!2275709 () Bool)

(assert (=> b!5362647 (=> res!2275709 e!3328118)))

(assert (=> b!5362647 (= res!2275709 call!383660)))

(assert (=> b!5362647 (= e!3328117 e!3328118)))

(declare-fun d!1718088 () Bool)

(declare-fun c!933973 () Bool)

(assert (=> d!1718088 (= c!933973 ((_ is EmptyExpr!15069) lt!2184582))))

(declare-fun e!3328115 () Bool)

(assert (=> d!1718088 (= (matchRSpec!2172 lt!2184582 s!2326) e!3328115)))

(declare-fun b!5362648 () Bool)

(assert (=> b!5362648 (= e!3328115 call!383660)))

(declare-fun bm!383655 () Bool)

(declare-fun c!933972 () Bool)

(assert (=> bm!383655 (= call!383659 (Exists!2250 (ite c!933972 lambda!276235 lambda!276236)))))

(declare-fun b!5362649 () Bool)

(assert (=> b!5362649 (= e!3328115 e!3328116)))

(declare-fun res!2275711 () Bool)

(assert (=> b!5362649 (= res!2275711 (not ((_ is EmptyLang!15069) lt!2184582)))))

(assert (=> b!5362649 (=> (not res!2275711) (not e!3328116))))

(declare-fun b!5362650 () Bool)

(assert (=> b!5362650 (= e!3328119 e!3328113)))

(declare-fun res!2275710 () Bool)

(assert (=> b!5362650 (= res!2275710 (matchRSpec!2172 (regOne!30651 lt!2184582) s!2326))))

(assert (=> b!5362650 (=> res!2275710 e!3328113)))

(declare-fun b!5362651 () Bool)

(assert (=> b!5362651 (= e!3328119 e!3328117)))

(assert (=> b!5362651 (= c!933972 ((_ is Star!15069) lt!2184582))))

(assert (= (and d!1718088 c!933973) b!5362648))

(assert (= (and d!1718088 (not c!933973)) b!5362649))

(assert (= (and b!5362649 res!2275711) b!5362645))

(assert (= (and b!5362645 c!933971) b!5362646))

(assert (= (and b!5362645 (not c!933971)) b!5362643))

(assert (= (and b!5362643 c!933970) b!5362650))

(assert (= (and b!5362643 (not c!933970)) b!5362651))

(assert (= (and b!5362650 (not res!2275710)) b!5362641))

(assert (= (and b!5362651 c!933972) b!5362647))

(assert (= (and b!5362651 (not c!933972)) b!5362642))

(assert (= (and b!5362647 (not res!2275709)) b!5362644))

(assert (= (or b!5362644 b!5362642) bm!383655))

(assert (= (or b!5362648 b!5362647) bm!383654))

(declare-fun m!6391180 () Bool)

(assert (=> b!5362641 m!6391180))

(assert (=> bm!383654 m!6390990))

(declare-fun m!6391182 () Bool)

(assert (=> bm!383655 m!6391182))

(declare-fun m!6391184 () Bool)

(assert (=> b!5362650 m!6391184))

(assert (=> b!5361790 d!1718088))

(declare-fun d!1718090 () Bool)

(assert (=> d!1718090 (= (matchR!7254 lt!2184582 s!2326) (matchRSpec!2172 lt!2184582 s!2326))))

(declare-fun lt!2184715 () Unit!153794)

(assert (=> d!1718090 (= lt!2184715 (choose!40261 lt!2184582 s!2326))))

(assert (=> d!1718090 (validRegex!6805 lt!2184582)))

(assert (=> d!1718090 (= (mainMatchTheorem!2172 lt!2184582 s!2326) lt!2184715)))

(declare-fun bs!1242082 () Bool)

(assert (= bs!1242082 d!1718090))

(assert (=> bs!1242082 m!6390412))

(assert (=> bs!1242082 m!6390414))

(declare-fun m!6391186 () Bool)

(assert (=> bs!1242082 m!6391186))

(assert (=> bs!1242082 m!6391178))

(assert (=> b!5361790 d!1718090))

(declare-fun b!5362652 () Bool)

(declare-fun res!2275712 () Bool)

(declare-fun e!3328125 () Bool)

(assert (=> b!5362652 (=> res!2275712 e!3328125)))

(assert (=> b!5362652 (= res!2275712 (not ((_ is Concat!23914) (regTwo!30650 r!7292))))))

(declare-fun e!3328126 () Bool)

(assert (=> b!5362652 (= e!3328126 e!3328125)))

(declare-fun d!1718092 () Bool)

(declare-fun res!2275716 () Bool)

(declare-fun e!3328120 () Bool)

(assert (=> d!1718092 (=> res!2275716 e!3328120)))

(assert (=> d!1718092 (= res!2275716 ((_ is ElementMatch!15069) (regTwo!30650 r!7292)))))

(assert (=> d!1718092 (= (validRegex!6805 (regTwo!30650 r!7292)) e!3328120)))

(declare-fun b!5362653 () Bool)

(declare-fun e!3328123 () Bool)

(declare-fun call!383662 () Bool)

(assert (=> b!5362653 (= e!3328123 call!383662)))

(declare-fun b!5362654 () Bool)

(assert (=> b!5362654 (= e!3328125 e!3328123)))

(declare-fun res!2275714 () Bool)

(assert (=> b!5362654 (=> (not res!2275714) (not e!3328123))))

(declare-fun call!383663 () Bool)

(assert (=> b!5362654 (= res!2275714 call!383663)))

(declare-fun b!5362655 () Bool)

(declare-fun e!3328124 () Bool)

(assert (=> b!5362655 (= e!3328124 call!383662)))

(declare-fun b!5362656 () Bool)

(declare-fun e!3328122 () Bool)

(declare-fun call!383661 () Bool)

(assert (=> b!5362656 (= e!3328122 call!383661)))

(declare-fun b!5362657 () Bool)

(declare-fun e!3328121 () Bool)

(assert (=> b!5362657 (= e!3328121 e!3328122)))

(declare-fun res!2275713 () Bool)

(assert (=> b!5362657 (= res!2275713 (not (nullable!5238 (reg!15398 (regTwo!30650 r!7292)))))))

(assert (=> b!5362657 (=> (not res!2275713) (not e!3328122))))

(declare-fun bm!383656 () Bool)

(declare-fun c!933975 () Bool)

(assert (=> bm!383656 (= call!383663 (validRegex!6805 (ite c!933975 (regOne!30651 (regTwo!30650 r!7292)) (regOne!30650 (regTwo!30650 r!7292)))))))

(declare-fun bm!383657 () Bool)

(assert (=> bm!383657 (= call!383662 call!383661)))

(declare-fun b!5362658 () Bool)

(declare-fun res!2275715 () Bool)

(assert (=> b!5362658 (=> (not res!2275715) (not e!3328124))))

(assert (=> b!5362658 (= res!2275715 call!383663)))

(assert (=> b!5362658 (= e!3328126 e!3328124)))

(declare-fun b!5362659 () Bool)

(assert (=> b!5362659 (= e!3328121 e!3328126)))

(assert (=> b!5362659 (= c!933975 ((_ is Union!15069) (regTwo!30650 r!7292)))))

(declare-fun bm!383658 () Bool)

(declare-fun c!933974 () Bool)

(assert (=> bm!383658 (= call!383661 (validRegex!6805 (ite c!933974 (reg!15398 (regTwo!30650 r!7292)) (ite c!933975 (regTwo!30651 (regTwo!30650 r!7292)) (regTwo!30650 (regTwo!30650 r!7292))))))))

(declare-fun b!5362660 () Bool)

(assert (=> b!5362660 (= e!3328120 e!3328121)))

(assert (=> b!5362660 (= c!933974 ((_ is Star!15069) (regTwo!30650 r!7292)))))

(assert (= (and d!1718092 (not res!2275716)) b!5362660))

(assert (= (and b!5362660 c!933974) b!5362657))

(assert (= (and b!5362660 (not c!933974)) b!5362659))

(assert (= (and b!5362657 res!2275713) b!5362656))

(assert (= (and b!5362659 c!933975) b!5362658))

(assert (= (and b!5362659 (not c!933975)) b!5362652))

(assert (= (and b!5362658 res!2275715) b!5362655))

(assert (= (and b!5362652 (not res!2275712)) b!5362654))

(assert (= (and b!5362654 res!2275714) b!5362653))

(assert (= (or b!5362655 b!5362653) bm!383657))

(assert (= (or b!5362658 b!5362654) bm!383656))

(assert (= (or b!5362656 bm!383657) bm!383658))

(declare-fun m!6391188 () Bool)

(assert (=> b!5362657 m!6391188))

(declare-fun m!6391190 () Bool)

(assert (=> bm!383656 m!6391190))

(declare-fun m!6391192 () Bool)

(assert (=> bm!383658 m!6391192))

(assert (=> b!5361787 d!1718092))

(declare-fun d!1718094 () Bool)

(assert (=> d!1718094 (= (flatMap!796 lt!2184588 lambda!276165) (choose!40264 lt!2184588 lambda!276165))))

(declare-fun bs!1242083 () Bool)

(assert (= bs!1242083 d!1718094))

(declare-fun m!6391194 () Bool)

(assert (=> bs!1242083 m!6391194))

(assert (=> b!5361788 d!1718094))

(declare-fun b!5362661 () Bool)

(declare-fun call!383664 () (InoxSet Context!8906))

(declare-fun e!3328129 () (InoxSet Context!8906))

(assert (=> b!5362661 (= e!3328129 ((_ map or) call!383664 (derivationStepZipperUp!441 (Context!8907 (t!374727 (exprs!4953 lt!2184584))) (h!67831 s!2326))))))

(declare-fun b!5362662 () Bool)

(declare-fun e!3328127 () (InoxSet Context!8906))

(assert (=> b!5362662 (= e!3328127 call!383664)))

(declare-fun b!5362663 () Bool)

(assert (=> b!5362663 (= e!3328129 e!3328127)))

(declare-fun c!933977 () Bool)

(assert (=> b!5362663 (= c!933977 ((_ is Cons!61382) (exprs!4953 lt!2184584)))))

(declare-fun d!1718096 () Bool)

(declare-fun c!933976 () Bool)

(declare-fun e!3328128 () Bool)

(assert (=> d!1718096 (= c!933976 e!3328128)))

(declare-fun res!2275717 () Bool)

(assert (=> d!1718096 (=> (not res!2275717) (not e!3328128))))

(assert (=> d!1718096 (= res!2275717 ((_ is Cons!61382) (exprs!4953 lt!2184584)))))

(assert (=> d!1718096 (= (derivationStepZipperUp!441 lt!2184584 (h!67831 s!2326)) e!3328129)))

(declare-fun b!5362664 () Bool)

(assert (=> b!5362664 (= e!3328128 (nullable!5238 (h!67830 (exprs!4953 lt!2184584))))))

(declare-fun b!5362665 () Bool)

(assert (=> b!5362665 (= e!3328127 ((as const (Array Context!8906 Bool)) false))))

(declare-fun bm!383659 () Bool)

(assert (=> bm!383659 (= call!383664 (derivationStepZipperDown!517 (h!67830 (exprs!4953 lt!2184584)) (Context!8907 (t!374727 (exprs!4953 lt!2184584))) (h!67831 s!2326)))))

(assert (= (and d!1718096 res!2275717) b!5362664))

(assert (= (and d!1718096 c!933976) b!5362661))

(assert (= (and d!1718096 (not c!933976)) b!5362663))

(assert (= (and b!5362663 c!933977) b!5362662))

(assert (= (and b!5362663 (not c!933977)) b!5362665))

(assert (= (or b!5362661 b!5362662) bm!383659))

(declare-fun m!6391196 () Bool)

(assert (=> b!5362661 m!6391196))

(declare-fun m!6391198 () Bool)

(assert (=> b!5362664 m!6391198))

(declare-fun m!6391200 () Bool)

(assert (=> bm!383659 m!6391200))

(assert (=> b!5361788 d!1718096))

(declare-fun d!1718098 () Bool)

(assert (=> d!1718098 (= (flatMap!796 lt!2184588 lambda!276165) (dynLambda!24245 lambda!276165 lt!2184584))))

(declare-fun lt!2184716 () Unit!153794)

(assert (=> d!1718098 (= lt!2184716 (choose!40262 lt!2184588 lt!2184584 lambda!276165))))

(assert (=> d!1718098 (= lt!2184588 (store ((as const (Array Context!8906 Bool)) false) lt!2184584 true))))

(assert (=> d!1718098 (= (lemmaFlatMapOnSingletonSet!328 lt!2184588 lt!2184584 lambda!276165) lt!2184716)))

(declare-fun b_lambda!205603 () Bool)

(assert (=> (not b_lambda!205603) (not d!1718098)))

(declare-fun bs!1242084 () Bool)

(assert (= bs!1242084 d!1718098))

(assert (=> bs!1242084 m!6390438))

(declare-fun m!6391202 () Bool)

(assert (=> bs!1242084 m!6391202))

(declare-fun m!6391204 () Bool)

(assert (=> bs!1242084 m!6391204))

(assert (=> bs!1242084 m!6390446))

(assert (=> b!5361788 d!1718098))

(declare-fun bs!1242085 () Bool)

(declare-fun d!1718100 () Bool)

(assert (= bs!1242085 (and d!1718100 b!5361792)))

(declare-fun lambda!276239 () Int)

(assert (=> bs!1242085 (= lambda!276239 lambda!276165)))

(assert (=> d!1718100 true))

(assert (=> d!1718100 (= (derivationStepZipper!1308 lt!2184588 (h!67831 s!2326)) (flatMap!796 lt!2184588 lambda!276239))))

(declare-fun bs!1242086 () Bool)

(assert (= bs!1242086 d!1718100))

(declare-fun m!6391206 () Bool)

(assert (=> bs!1242086 m!6391206))

(assert (=> b!5361788 d!1718100))

(declare-fun b!5362681 () Bool)

(declare-fun e!3328132 () Bool)

(declare-fun tp!1488710 () Bool)

(declare-fun tp!1488713 () Bool)

(assert (=> b!5362681 (= e!3328132 (and tp!1488710 tp!1488713))))

(declare-fun b!5362679 () Bool)

(declare-fun tp!1488711 () Bool)

(declare-fun tp!1488714 () Bool)

(assert (=> b!5362679 (= e!3328132 (and tp!1488711 tp!1488714))))

(declare-fun b!5362678 () Bool)

(assert (=> b!5362678 (= e!3328132 tp_is_empty!39391)))

(assert (=> b!5361809 (= tp!1488639 e!3328132)))

(declare-fun b!5362680 () Bool)

(declare-fun tp!1488712 () Bool)

(assert (=> b!5362680 (= e!3328132 tp!1488712)))

(assert (= (and b!5361809 ((_ is ElementMatch!15069) (regOne!30651 r!7292))) b!5362678))

(assert (= (and b!5361809 ((_ is Concat!23914) (regOne!30651 r!7292))) b!5362679))

(assert (= (and b!5361809 ((_ is Star!15069) (regOne!30651 r!7292))) b!5362680))

(assert (= (and b!5361809 ((_ is Union!15069) (regOne!30651 r!7292))) b!5362681))

(declare-fun b!5362685 () Bool)

(declare-fun e!3328133 () Bool)

(declare-fun tp!1488715 () Bool)

(declare-fun tp!1488718 () Bool)

(assert (=> b!5362685 (= e!3328133 (and tp!1488715 tp!1488718))))

(declare-fun b!5362683 () Bool)

(declare-fun tp!1488716 () Bool)

(declare-fun tp!1488719 () Bool)

(assert (=> b!5362683 (= e!3328133 (and tp!1488716 tp!1488719))))

(declare-fun b!5362682 () Bool)

(assert (=> b!5362682 (= e!3328133 tp_is_empty!39391)))

(assert (=> b!5361809 (= tp!1488634 e!3328133)))

(declare-fun b!5362684 () Bool)

(declare-fun tp!1488717 () Bool)

(assert (=> b!5362684 (= e!3328133 tp!1488717)))

(assert (= (and b!5361809 ((_ is ElementMatch!15069) (regTwo!30651 r!7292))) b!5362682))

(assert (= (and b!5361809 ((_ is Concat!23914) (regTwo!30651 r!7292))) b!5362683))

(assert (= (and b!5361809 ((_ is Star!15069) (regTwo!30651 r!7292))) b!5362684))

(assert (= (and b!5361809 ((_ is Union!15069) (regTwo!30651 r!7292))) b!5362685))

(declare-fun b!5362689 () Bool)

(declare-fun e!3328134 () Bool)

(declare-fun tp!1488720 () Bool)

(declare-fun tp!1488723 () Bool)

(assert (=> b!5362689 (= e!3328134 (and tp!1488720 tp!1488723))))

(declare-fun b!5362687 () Bool)

(declare-fun tp!1488721 () Bool)

(declare-fun tp!1488724 () Bool)

(assert (=> b!5362687 (= e!3328134 (and tp!1488721 tp!1488724))))

(declare-fun b!5362686 () Bool)

(assert (=> b!5362686 (= e!3328134 tp_is_empty!39391)))

(assert (=> b!5361814 (= tp!1488638 e!3328134)))

(declare-fun b!5362688 () Bool)

(declare-fun tp!1488722 () Bool)

(assert (=> b!5362688 (= e!3328134 tp!1488722)))

(assert (= (and b!5361814 ((_ is ElementMatch!15069) (reg!15398 r!7292))) b!5362686))

(assert (= (and b!5361814 ((_ is Concat!23914) (reg!15398 r!7292))) b!5362687))

(assert (= (and b!5361814 ((_ is Star!15069) (reg!15398 r!7292))) b!5362688))

(assert (= (and b!5361814 ((_ is Union!15069) (reg!15398 r!7292))) b!5362689))

(declare-fun b!5362697 () Bool)

(declare-fun e!3328140 () Bool)

(declare-fun tp!1488729 () Bool)

(assert (=> b!5362697 (= e!3328140 tp!1488729)))

(declare-fun b!5362696 () Bool)

(declare-fun e!3328139 () Bool)

(declare-fun tp!1488730 () Bool)

(assert (=> b!5362696 (= e!3328139 (and (inv!80919 (h!67832 (t!374729 zl!343))) e!3328140 tp!1488730))))

(assert (=> b!5361819 (= tp!1488635 e!3328139)))

(assert (= b!5362696 b!5362697))

(assert (= (and b!5361819 ((_ is Cons!61384) (t!374729 zl!343))) b!5362696))

(declare-fun m!6391208 () Bool)

(assert (=> b!5362696 m!6391208))

(declare-fun b!5362701 () Bool)

(declare-fun e!3328141 () Bool)

(declare-fun tp!1488731 () Bool)

(declare-fun tp!1488734 () Bool)

(assert (=> b!5362701 (= e!3328141 (and tp!1488731 tp!1488734))))

(declare-fun b!5362699 () Bool)

(declare-fun tp!1488732 () Bool)

(declare-fun tp!1488735 () Bool)

(assert (=> b!5362699 (= e!3328141 (and tp!1488732 tp!1488735))))

(declare-fun b!5362698 () Bool)

(assert (=> b!5362698 (= e!3328141 tp_is_empty!39391)))

(assert (=> b!5361821 (= tp!1488636 e!3328141)))

(declare-fun b!5362700 () Bool)

(declare-fun tp!1488733 () Bool)

(assert (=> b!5362700 (= e!3328141 tp!1488733)))

(assert (= (and b!5361821 ((_ is ElementMatch!15069) (regOne!30650 r!7292))) b!5362698))

(assert (= (and b!5361821 ((_ is Concat!23914) (regOne!30650 r!7292))) b!5362699))

(assert (= (and b!5361821 ((_ is Star!15069) (regOne!30650 r!7292))) b!5362700))

(assert (= (and b!5361821 ((_ is Union!15069) (regOne!30650 r!7292))) b!5362701))

(declare-fun b!5362705 () Bool)

(declare-fun e!3328142 () Bool)

(declare-fun tp!1488736 () Bool)

(declare-fun tp!1488739 () Bool)

(assert (=> b!5362705 (= e!3328142 (and tp!1488736 tp!1488739))))

(declare-fun b!5362703 () Bool)

(declare-fun tp!1488737 () Bool)

(declare-fun tp!1488740 () Bool)

(assert (=> b!5362703 (= e!3328142 (and tp!1488737 tp!1488740))))

(declare-fun b!5362702 () Bool)

(assert (=> b!5362702 (= e!3328142 tp_is_empty!39391)))

(assert (=> b!5361821 (= tp!1488641 e!3328142)))

(declare-fun b!5362704 () Bool)

(declare-fun tp!1488738 () Bool)

(assert (=> b!5362704 (= e!3328142 tp!1488738)))

(assert (= (and b!5361821 ((_ is ElementMatch!15069) (regTwo!30650 r!7292))) b!5362702))

(assert (= (and b!5361821 ((_ is Concat!23914) (regTwo!30650 r!7292))) b!5362703))

(assert (= (and b!5361821 ((_ is Star!15069) (regTwo!30650 r!7292))) b!5362704))

(assert (= (and b!5361821 ((_ is Union!15069) (regTwo!30650 r!7292))) b!5362705))

(declare-fun b!5362710 () Bool)

(declare-fun e!3328145 () Bool)

(declare-fun tp!1488745 () Bool)

(declare-fun tp!1488746 () Bool)

(assert (=> b!5362710 (= e!3328145 (and tp!1488745 tp!1488746))))

(assert (=> b!5361797 (= tp!1488640 e!3328145)))

(assert (= (and b!5361797 ((_ is Cons!61382) (exprs!4953 (h!67832 zl!343)))) b!5362710))

(declare-fun condSetEmpty!34717 () Bool)

(assert (=> setNonEmpty!34711 (= condSetEmpty!34717 (= setRest!34711 ((as const (Array Context!8906 Bool)) false)))))

(declare-fun setRes!34717 () Bool)

(assert (=> setNonEmpty!34711 (= tp!1488632 setRes!34717)))

(declare-fun setIsEmpty!34717 () Bool)

(assert (=> setIsEmpty!34717 setRes!34717))

(declare-fun setElem!34717 () Context!8906)

(declare-fun e!3328148 () Bool)

(declare-fun tp!1488751 () Bool)

(declare-fun setNonEmpty!34717 () Bool)

(assert (=> setNonEmpty!34717 (= setRes!34717 (and tp!1488751 (inv!80919 setElem!34717) e!3328148))))

(declare-fun setRest!34717 () (InoxSet Context!8906))

(assert (=> setNonEmpty!34717 (= setRest!34711 ((_ map or) (store ((as const (Array Context!8906 Bool)) false) setElem!34717 true) setRest!34717))))

(declare-fun b!5362715 () Bool)

(declare-fun tp!1488752 () Bool)

(assert (=> b!5362715 (= e!3328148 tp!1488752)))

(assert (= (and setNonEmpty!34711 condSetEmpty!34717) setIsEmpty!34717))

(assert (= (and setNonEmpty!34711 (not condSetEmpty!34717)) setNonEmpty!34717))

(assert (= setNonEmpty!34717 b!5362715))

(declare-fun m!6391210 () Bool)

(assert (=> setNonEmpty!34717 m!6391210))

(declare-fun b!5362716 () Bool)

(declare-fun e!3328149 () Bool)

(declare-fun tp!1488753 () Bool)

(declare-fun tp!1488754 () Bool)

(assert (=> b!5362716 (= e!3328149 (and tp!1488753 tp!1488754))))

(assert (=> b!5361818 (= tp!1488633 e!3328149)))

(assert (= (and b!5361818 ((_ is Cons!61382) (exprs!4953 setElem!34711))) b!5362716))

(declare-fun b!5362721 () Bool)

(declare-fun e!3328152 () Bool)

(declare-fun tp!1488757 () Bool)

(assert (=> b!5362721 (= e!3328152 (and tp_is_empty!39391 tp!1488757))))

(assert (=> b!5361807 (= tp!1488637 e!3328152)))

(assert (= (and b!5361807 ((_ is Cons!61383) (t!374728 s!2326))) b!5362721))

(declare-fun b_lambda!205605 () Bool)

(assert (= b_lambda!205603 (or b!5361792 b_lambda!205605)))

(declare-fun bs!1242087 () Bool)

(declare-fun d!1718102 () Bool)

(assert (= bs!1242087 (and d!1718102 b!5361792)))

(assert (=> bs!1242087 (= (dynLambda!24245 lambda!276165 lt!2184584) (derivationStepZipperUp!441 lt!2184584 (h!67831 s!2326)))))

(assert (=> bs!1242087 m!6390440))

(assert (=> d!1718098 d!1718102))

(declare-fun b_lambda!205607 () Bool)

(assert (= b_lambda!205601 (or b!5361792 b_lambda!205607)))

(declare-fun bs!1242088 () Bool)

(declare-fun d!1718104 () Bool)

(assert (= bs!1242088 (and d!1718104 b!5361792)))

(assert (=> bs!1242088 (= (dynLambda!24245 lambda!276165 (h!67832 zl!343)) (derivationStepZipperUp!441 (h!67832 zl!343) (h!67831 s!2326)))))

(assert (=> bs!1242088 m!6390430))

(assert (=> d!1718042 d!1718104))

(declare-fun b_lambda!205609 () Bool)

(assert (= b_lambda!205597 (or b!5361792 b_lambda!205609)))

(declare-fun bs!1242089 () Bool)

(declare-fun d!1718106 () Bool)

(assert (= bs!1242089 (and d!1718106 b!5361792)))

(assert (=> bs!1242089 (= (dynLambda!24245 lambda!276165 lt!2184568) (derivationStepZipperUp!441 lt!2184568 (h!67831 s!2326)))))

(assert (=> bs!1242089 m!6390486))

(assert (=> d!1718026 d!1718106))

(declare-fun b_lambda!205611 () Bool)

(assert (= b_lambda!205599 (or b!5361792 b_lambda!205611)))

(declare-fun bs!1242090 () Bool)

(declare-fun d!1718108 () Bool)

(assert (= bs!1242090 (and d!1718108 b!5361792)))

(assert (=> bs!1242090 (= (dynLambda!24245 lambda!276165 lt!2184565) (derivationStepZipperUp!441 lt!2184565 (h!67831 s!2326)))))

(assert (=> bs!1242090 m!6390484))

(assert (=> d!1718028 d!1718108))

(check-sat (not b!5362626) (not bm!383649) (not d!1717956) (not b!5362681) (not d!1718006) (not b!5362384) (not b!5362602) (not d!1718062) (not bm!383607) (not b!5362696) (not b!5362578) (not b!5362684) (not d!1718058) (not b!5362699) (not d!1718072) (not b!5361907) (not b!5362715) (not b_lambda!205607) (not bm!383651) (not b!5362637) (not b!5361982) (not d!1717876) (not d!1718032) (not b!5362252) (not d!1717932) (not bs!1242089) (not b!5362594) (not b_lambda!205609) (not b!5362572) (not b!5362680) (not b!5362509) (not b!5362601) (not bs!1242090) (not b!5362573) (not b!5362500) (not b!5362086) (not b!5362604) (not b!5362689) (not bm!383656) (not d!1718066) (not d!1717942) (not b!5362685) (not bm!383587) (not bm!383642) (not b!5361978) (not bm!383604) (not b_lambda!205605) (not bm!383645) (not d!1718064) (not b!5362392) (not b!5362716) (not d!1717998) (not d!1718038) (not b!5362606) (not b!5362386) (not b!5362620) (not b!5362519) (not b!5362617) (not b!5362421) (not b!5362634) (not bm!383643) (not b!5362625) (not b!5362628) (not b!5361983) (not d!1717878) (not d!1718044) (not b!5361972) (not b!5362385) (not b!5362580) (not b!5362616) (not d!1718080) (not d!1718034) (not b!5362607) (not bm!383639) (not b!5362518) (not b!5362538) (not b!5362535) (not d!1718076) (not b!5362566) (not b!5362255) (not b!5362614) (not b!5362388) (not bm!383658) (not b!5362622) (not b!5362583) (not b!5362512) (not d!1718078) (not d!1718026) (not bm!383644) (not b!5362683) (not bs!1242087) (not b!5362568) (not b!5362621) (not d!1718040) (not b!5362279) (not b!5362278) (not bm!383653) (not b!5362664) (not b!5362565) (not b!5362615) (not b!5362638) (not b!5362250) (not b!5362635) (not d!1718090) (not d!1717992) (not d!1718046) (not b!5362657) (not d!1718100) (not b!5362624) (not bm!383659) (not b!5361979) (not bm!383575) (not b!5362650) (not d!1718008) (not bm!383655) (not d!1717990) (not d!1717964) (not bs!1242088) (not b!5362603) (not b!5362661) (not b!5362575) (not b!5362523) (not b!5362623) (not b!5362571) (not b!5362641) (not b!5362588) (not d!1718070) tp_is_empty!39391 (not b!5362700) (not b!5362697) (not b!5362687) (not d!1718082) (not b!5362704) (not bm!383638) (not b!5362701) (not d!1718022) (not d!1717870) (not b!5362256) (not d!1718098) (not d!1718020) (not b!5362703) (not b!5362391) (not b!5362251) (not bm!383646) (not d!1718086) (not b!5362585) (not b!5362639) (not d!1717988) (not setNonEmpty!34717) (not d!1718028) (not b!5362387) (not b!5362540) (not b!5362570) (not b!5362679) (not d!1718094) (not bm!383606) (not b!5362688) (not d!1718060) (not d!1717944) (not b!5362522) (not b!5362705) (not b!5362025) (not d!1718036) (not d!1718084) (not b_lambda!205611) (not d!1718042) (not b!5362710) (not bm!383652) (not bm!383637) (not b!5362721) (not b!5361981) (not b!5362543) (not bm!383654) (not d!1718068) (not bm!383585) (not d!1717946) (not b!5362521) (not b!5362253))
(check-sat)
