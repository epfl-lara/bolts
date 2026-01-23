; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!564974 () Bool)

(assert start!564974)

(declare-fun b!5369177 () Bool)

(assert (=> b!5369177 true))

(assert (=> b!5369177 true))

(declare-fun lambda!276913 () Int)

(declare-fun lambda!276912 () Int)

(assert (=> b!5369177 (not (= lambda!276913 lambda!276912))))

(assert (=> b!5369177 true))

(assert (=> b!5369177 true))

(declare-fun b!5369153 () Bool)

(assert (=> b!5369153 true))

(declare-fun bs!1243532 () Bool)

(declare-fun b!5369178 () Bool)

(assert (= bs!1243532 (and b!5369178 b!5369177)))

(declare-datatypes ((C!30432 0))(
  ( (C!30433 (val!24918 Int)) )
))
(declare-datatypes ((Regex!15081 0))(
  ( (ElementMatch!15081 (c!935425 C!30432)) (Concat!23926 (regOne!30674 Regex!15081) (regTwo!30674 Regex!15081)) (EmptyExpr!15081) (Star!15081 (reg!15410 Regex!15081)) (EmptyLang!15081) (Union!15081 (regOne!30675 Regex!15081) (regTwo!30675 Regex!15081)) )
))
(declare-fun r!7292 () Regex!15081)

(declare-fun lambda!276915 () Int)

(declare-fun lt!2186607 () Regex!15081)

(assert (=> bs!1243532 (= (= lt!2186607 (regOne!30674 r!7292)) (= lambda!276915 lambda!276912))))

(assert (=> bs!1243532 (not (= lambda!276915 lambda!276913))))

(assert (=> b!5369178 true))

(assert (=> b!5369178 true))

(assert (=> b!5369178 true))

(declare-fun lambda!276916 () Int)

(assert (=> bs!1243532 (not (= lambda!276916 lambda!276912))))

(assert (=> bs!1243532 (= (= lt!2186607 (regOne!30674 r!7292)) (= lambda!276916 lambda!276913))))

(assert (=> b!5369178 (not (= lambda!276916 lambda!276915))))

(assert (=> b!5369178 true))

(assert (=> b!5369178 true))

(assert (=> b!5369178 true))

(declare-fun b!5369145 () Bool)

(declare-fun e!3331694 () Bool)

(declare-fun tp!1489799 () Bool)

(assert (=> b!5369145 (= e!3331694 tp!1489799)))

(declare-fun b!5369146 () Bool)

(declare-fun res!2278687 () Bool)

(declare-fun e!3331684 () Bool)

(assert (=> b!5369146 (=> res!2278687 e!3331684)))

(declare-fun e!3331706 () Bool)

(assert (=> b!5369146 (= res!2278687 e!3331706)))

(declare-fun res!2278683 () Bool)

(assert (=> b!5369146 (=> (not res!2278683) (not e!3331706))))

(get-info :version)

(assert (=> b!5369146 (= res!2278683 ((_ is Concat!23926) (regOne!30674 r!7292)))))

(declare-fun b!5369147 () Bool)

(declare-fun res!2278704 () Bool)

(declare-fun e!3331703 () Bool)

(assert (=> b!5369147 (=> res!2278704 e!3331703)))

(declare-datatypes ((List!61542 0))(
  ( (Nil!61418) (Cons!61418 (h!67866 Regex!15081) (t!374765 List!61542)) )
))
(declare-datatypes ((Context!8930 0))(
  ( (Context!8931 (exprs!4965 List!61542)) )
))
(declare-fun lt!2186643 () Context!8930)

(declare-fun lt!2186627 () Regex!15081)

(declare-datatypes ((List!61543 0))(
  ( (Nil!61419) (Cons!61419 (h!67867 Context!8930) (t!374766 List!61543)) )
))
(declare-fun unfocusZipper!823 (List!61543) Regex!15081)

(assert (=> b!5369147 (= res!2278704 (not (= (unfocusZipper!823 (Cons!61419 lt!2186643 Nil!61419)) lt!2186627)))))

(declare-fun b!5369148 () Bool)

(declare-datatypes ((Unit!153842 0))(
  ( (Unit!153843) )
))
(declare-fun e!3331700 () Unit!153842)

(declare-fun Unit!153844 () Unit!153842)

(assert (=> b!5369148 (= e!3331700 Unit!153844)))

(declare-datatypes ((List!61544 0))(
  ( (Nil!61420) (Cons!61420 (h!67868 C!30432) (t!374767 List!61544)) )
))
(declare-fun s!2326 () List!61544)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2186620 () (InoxSet Context!8930))

(declare-fun lt!2186637 () Unit!153842)

(declare-fun lt!2186625 () (InoxSet Context!8930))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!318 ((InoxSet Context!8930) (InoxSet Context!8930) List!61544) Unit!153842)

(assert (=> b!5369148 (= lt!2186637 (lemmaZipperConcatMatchesSameAsBothZippers!318 lt!2186625 lt!2186620 (t!374767 s!2326)))))

(declare-fun res!2278694 () Bool)

(declare-fun matchZipper!1325 ((InoxSet Context!8930) List!61544) Bool)

(assert (=> b!5369148 (= res!2278694 (matchZipper!1325 lt!2186625 (t!374767 s!2326)))))

(declare-fun e!3331693 () Bool)

(assert (=> b!5369148 (=> res!2278694 e!3331693)))

(assert (=> b!5369148 (= (matchZipper!1325 ((_ map or) lt!2186625 lt!2186620) (t!374767 s!2326)) e!3331693)))

(declare-fun b!5369149 () Bool)

(declare-fun Unit!153845 () Unit!153842)

(assert (=> b!5369149 (= e!3331700 Unit!153845)))

(declare-fun b!5369150 () Bool)

(declare-fun res!2278693 () Bool)

(assert (=> b!5369150 (=> res!2278693 e!3331684)))

(assert (=> b!5369150 (= res!2278693 (or ((_ is Concat!23926) (regOne!30674 r!7292)) (not ((_ is Star!15081) (regOne!30674 r!7292)))))))

(declare-fun b!5369151 () Bool)

(declare-fun res!2278677 () Bool)

(declare-fun e!3331692 () Bool)

(assert (=> b!5369151 (=> res!2278677 e!3331692)))

(declare-fun zl!343 () List!61543)

(assert (=> b!5369151 (= res!2278677 (not ((_ is Cons!61418) (exprs!4965 (h!67867 zl!343)))))))

(declare-fun b!5369152 () Bool)

(declare-fun e!3331687 () Bool)

(assert (=> b!5369152 (= e!3331684 e!3331687)))

(declare-fun res!2278692 () Bool)

(assert (=> b!5369152 (=> res!2278692 e!3331687)))

(declare-fun lt!2186613 () (InoxSet Context!8930))

(assert (=> b!5369152 (= res!2278692 (not (= lt!2186625 lt!2186613)))))

(declare-fun derivationStepZipperDown!529 (Regex!15081 Context!8930 C!30432) (InoxSet Context!8930))

(assert (=> b!5369152 (= lt!2186613 (derivationStepZipperDown!529 (reg!15410 (regOne!30674 r!7292)) lt!2186643 (h!67868 s!2326)))))

(declare-fun lt!2186611 () List!61542)

(assert (=> b!5369152 (= lt!2186643 (Context!8931 lt!2186611))))

(assert (=> b!5369152 (= lt!2186611 (Cons!61418 lt!2186607 (t!374765 (exprs!4965 (h!67867 zl!343)))))))

(assert (=> b!5369152 (= lt!2186607 (Star!15081 (reg!15410 (regOne!30674 r!7292))))))

(declare-fun e!3331695 () Bool)

(assert (=> b!5369153 (= e!3331695 e!3331684)))

(declare-fun res!2278682 () Bool)

(assert (=> b!5369153 (=> res!2278682 e!3331684)))

(assert (=> b!5369153 (= res!2278682 (or (and ((_ is ElementMatch!15081) (regOne!30674 r!7292)) (= (c!935425 (regOne!30674 r!7292)) (h!67868 s!2326))) ((_ is Union!15081) (regOne!30674 r!7292))))))

(declare-fun lt!2186638 () Unit!153842)

(assert (=> b!5369153 (= lt!2186638 e!3331700)))

(declare-fun c!935424 () Bool)

(declare-fun nullable!5250 (Regex!15081) Bool)

(assert (=> b!5369153 (= c!935424 (nullable!5250 (h!67866 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun lambda!276914 () Int)

(declare-fun z!1189 () (InoxSet Context!8930))

(declare-fun flatMap!808 ((InoxSet Context!8930) Int) (InoxSet Context!8930))

(declare-fun derivationStepZipperUp!453 (Context!8930 C!30432) (InoxSet Context!8930))

(assert (=> b!5369153 (= (flatMap!808 z!1189 lambda!276914) (derivationStepZipperUp!453 (h!67867 zl!343) (h!67868 s!2326)))))

(declare-fun lt!2186612 () Unit!153842)

(declare-fun lemmaFlatMapOnSingletonSet!340 ((InoxSet Context!8930) Context!8930 Int) Unit!153842)

(assert (=> b!5369153 (= lt!2186612 (lemmaFlatMapOnSingletonSet!340 z!1189 (h!67867 zl!343) lambda!276914))))

(declare-fun lt!2186626 () Context!8930)

(assert (=> b!5369153 (= lt!2186620 (derivationStepZipperUp!453 lt!2186626 (h!67868 s!2326)))))

(assert (=> b!5369153 (= lt!2186625 (derivationStepZipperDown!529 (h!67866 (exprs!4965 (h!67867 zl!343))) lt!2186626 (h!67868 s!2326)))))

(assert (=> b!5369153 (= lt!2186626 (Context!8931 (t!374765 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun lt!2186614 () (InoxSet Context!8930))

(assert (=> b!5369153 (= lt!2186614 (derivationStepZipperUp!453 (Context!8931 (Cons!61418 (h!67866 (exprs!4965 (h!67867 zl!343))) (t!374765 (exprs!4965 (h!67867 zl!343))))) (h!67868 s!2326)))))

(declare-fun b!5369154 () Bool)

(declare-fun res!2278676 () Bool)

(declare-fun e!3331699 () Bool)

(assert (=> b!5369154 (=> res!2278676 e!3331699)))

(declare-fun lt!2186616 () Regex!15081)

(assert (=> b!5369154 (= res!2278676 (not (= lt!2186616 r!7292)))))

(declare-fun setIsEmpty!34787 () Bool)

(declare-fun setRes!34787 () Bool)

(assert (=> setIsEmpty!34787 setRes!34787))

(declare-fun b!5369156 () Bool)

(declare-fun e!3331701 () Bool)

(declare-fun e!3331688 () Bool)

(assert (=> b!5369156 (= e!3331701 e!3331688)))

(declare-fun res!2278698 () Bool)

(assert (=> b!5369156 (=> res!2278698 e!3331688)))

(declare-fun lt!2186618 () List!61543)

(declare-fun zipperDepth!154 (List!61543) Int)

(assert (=> b!5369156 (= res!2278698 (< (zipperDepth!154 zl!343) (zipperDepth!154 lt!2186618)))))

(assert (=> b!5369156 (= lt!2186618 (Cons!61419 lt!2186626 Nil!61419))))

(declare-fun b!5369157 () Bool)

(declare-fun tp!1489795 () Bool)

(declare-fun tp!1489801 () Bool)

(assert (=> b!5369157 (= e!3331694 (and tp!1489795 tp!1489801))))

(declare-fun b!5369158 () Bool)

(declare-fun e!3331689 () Bool)

(declare-fun tp_is_empty!39415 () Bool)

(declare-fun tp!1489797 () Bool)

(assert (=> b!5369158 (= e!3331689 (and tp_is_empty!39415 tp!1489797))))

(declare-fun b!5369159 () Bool)

(declare-fun e!3331691 () Bool)

(assert (=> b!5369159 (= e!3331699 e!3331691)))

(declare-fun res!2278691 () Bool)

(assert (=> b!5369159 (=> res!2278691 e!3331691)))

(assert (=> b!5369159 (= res!2278691 (not (= r!7292 lt!2186627)))))

(assert (=> b!5369159 (= lt!2186627 (Concat!23926 lt!2186607 (regTwo!30674 r!7292)))))

(declare-fun b!5369160 () Bool)

(declare-fun res!2278680 () Bool)

(assert (=> b!5369160 (=> res!2278680 e!3331692)))

(declare-fun isEmpty!33398 (List!61543) Bool)

(assert (=> b!5369160 (= res!2278680 (not (isEmpty!33398 (t!374766 zl!343))))))

(declare-fun tp!1489800 () Bool)

(declare-fun e!3331698 () Bool)

(declare-fun e!3331683 () Bool)

(declare-fun b!5369161 () Bool)

(declare-fun inv!80949 (Context!8930) Bool)

(assert (=> b!5369161 (= e!3331683 (and (inv!80949 (h!67867 zl!343)) e!3331698 tp!1489800))))

(declare-fun b!5369162 () Bool)

(declare-fun e!3331685 () Bool)

(declare-fun lt!2186636 () Bool)

(declare-fun lt!2186617 () Bool)

(assert (=> b!5369162 (= e!3331685 (or (not lt!2186636) lt!2186617))))

(declare-fun b!5369163 () Bool)

(declare-fun e!3331704 () Bool)

(declare-fun e!3331686 () Bool)

(assert (=> b!5369163 (= e!3331704 e!3331686)))

(declare-fun res!2278705 () Bool)

(assert (=> b!5369163 (=> (not res!2278705) (not e!3331686))))

(assert (=> b!5369163 (= res!2278705 (= r!7292 lt!2186616))))

(assert (=> b!5369163 (= lt!2186616 (unfocusZipper!823 zl!343))))

(declare-fun b!5369164 () Bool)

(declare-fun e!3331697 () Bool)

(assert (=> b!5369164 (= e!3331697 e!3331701)))

(declare-fun res!2278701 () Bool)

(assert (=> b!5369164 (=> res!2278701 e!3331701)))

(declare-fun lt!2186633 () Regex!15081)

(declare-fun regexDepth!169 (Regex!15081) Int)

(assert (=> b!5369164 (= res!2278701 (< (regexDepth!169 r!7292) (regexDepth!169 lt!2186633)))))

(declare-fun generalisedConcat!750 (List!61542) Regex!15081)

(assert (=> b!5369164 (= lt!2186633 (generalisedConcat!750 (t!374765 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun b!5369165 () Bool)

(assert (=> b!5369165 (= e!3331693 (matchZipper!1325 lt!2186620 (t!374767 s!2326)))))

(declare-fun b!5369166 () Bool)

(assert (=> b!5369166 (= e!3331706 (nullable!5250 (regOne!30674 (regOne!30674 r!7292))))))

(declare-fun b!5369167 () Bool)

(declare-fun res!2278703 () Bool)

(assert (=> b!5369167 (=> res!2278703 e!3331692)))

(declare-fun generalisedUnion!1010 (List!61542) Regex!15081)

(declare-fun unfocusZipperList!523 (List!61543) List!61542)

(assert (=> b!5369167 (= res!2278703 (not (= r!7292 (generalisedUnion!1010 (unfocusZipperList!523 zl!343)))))))

(declare-fun b!5369168 () Bool)

(declare-fun e!3331696 () Bool)

(assert (=> b!5369168 (= e!3331696 e!3331703)))

(declare-fun res!2278688 () Bool)

(assert (=> b!5369168 (=> res!2278688 e!3331703)))

(declare-fun lt!2186623 () Context!8930)

(assert (=> b!5369168 (= res!2278688 (not (= (unfocusZipper!823 (Cons!61419 lt!2186623 Nil!61419)) (reg!15410 (regOne!30674 r!7292)))))))

(declare-fun lt!2186621 () (InoxSet Context!8930))

(assert (=> b!5369168 (= (flatMap!808 lt!2186621 lambda!276914) (derivationStepZipperUp!453 lt!2186643 (h!67868 s!2326)))))

(declare-fun lt!2186648 () Unit!153842)

(assert (=> b!5369168 (= lt!2186648 (lemmaFlatMapOnSingletonSet!340 lt!2186621 lt!2186643 lambda!276914))))

(declare-fun lt!2186619 () (InoxSet Context!8930))

(assert (=> b!5369168 (= (flatMap!808 lt!2186619 lambda!276914) (derivationStepZipperUp!453 lt!2186623 (h!67868 s!2326)))))

(declare-fun lt!2186646 () Unit!153842)

(assert (=> b!5369168 (= lt!2186646 (lemmaFlatMapOnSingletonSet!340 lt!2186619 lt!2186623 lambda!276914))))

(declare-fun lt!2186639 () (InoxSet Context!8930))

(assert (=> b!5369168 (= lt!2186639 (derivationStepZipperUp!453 lt!2186643 (h!67868 s!2326)))))

(declare-fun lt!2186644 () (InoxSet Context!8930))

(assert (=> b!5369168 (= lt!2186644 (derivationStepZipperUp!453 lt!2186623 (h!67868 s!2326)))))

(assert (=> b!5369168 (= lt!2186621 (store ((as const (Array Context!8930 Bool)) false) lt!2186643 true))))

(assert (=> b!5369168 (= lt!2186619 (store ((as const (Array Context!8930 Bool)) false) lt!2186623 true))))

(assert (=> b!5369168 (= lt!2186623 (Context!8931 (Cons!61418 (reg!15410 (regOne!30674 r!7292)) Nil!61418)))))

(declare-fun b!5369169 () Bool)

(declare-fun e!3331702 () Bool)

(assert (=> b!5369169 (= e!3331703 e!3331702)))

(declare-fun res!2278696 () Bool)

(assert (=> b!5369169 (=> res!2278696 e!3331702)))

(assert (=> b!5369169 (= res!2278696 (not lt!2186636))))

(assert (=> b!5369169 e!3331685))

(declare-fun res!2278702 () Bool)

(assert (=> b!5369169 (=> (not res!2278702) (not e!3331685))))

(declare-fun lt!2186628 () Regex!15081)

(declare-fun matchR!7266 (Regex!15081 List!61544) Bool)

(declare-fun matchRSpec!2184 (Regex!15081 List!61544) Bool)

(assert (=> b!5369169 (= res!2278702 (= (matchR!7266 lt!2186628 s!2326) (matchRSpec!2184 lt!2186628 s!2326)))))

(declare-fun lt!2186624 () Unit!153842)

(declare-fun mainMatchTheorem!2184 (Regex!15081 List!61544) Unit!153842)

(assert (=> b!5369169 (= lt!2186624 (mainMatchTheorem!2184 lt!2186628 s!2326))))

(declare-fun b!5369170 () Bool)

(declare-fun res!2278684 () Bool)

(assert (=> b!5369170 (=> res!2278684 e!3331695)))

(declare-fun isEmpty!33399 (List!61542) Bool)

(assert (=> b!5369170 (= res!2278684 (isEmpty!33399 (t!374765 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun b!5369171 () Bool)

(assert (=> b!5369171 (= e!3331687 e!3331699)))

(declare-fun res!2278699 () Bool)

(assert (=> b!5369171 (=> res!2278699 e!3331699)))

(declare-fun lt!2186640 () (InoxSet Context!8930))

(assert (=> b!5369171 (= res!2278699 (not (= lt!2186640 lt!2186613)))))

(declare-fun lt!2186610 () Context!8930)

(declare-fun lt!2186615 () (InoxSet Context!8930))

(assert (=> b!5369171 (= (flatMap!808 lt!2186615 lambda!276914) (derivationStepZipperUp!453 lt!2186610 (h!67868 s!2326)))))

(declare-fun lt!2186641 () Unit!153842)

(assert (=> b!5369171 (= lt!2186641 (lemmaFlatMapOnSingletonSet!340 lt!2186615 lt!2186610 lambda!276914))))

(declare-fun lt!2186630 () (InoxSet Context!8930))

(assert (=> b!5369171 (= lt!2186630 (derivationStepZipperUp!453 lt!2186610 (h!67868 s!2326)))))

(declare-fun derivationStepZipper!1320 ((InoxSet Context!8930) C!30432) (InoxSet Context!8930))

(assert (=> b!5369171 (= lt!2186640 (derivationStepZipper!1320 lt!2186615 (h!67868 s!2326)))))

(assert (=> b!5369171 (= lt!2186615 (store ((as const (Array Context!8930 Bool)) false) lt!2186610 true))))

(assert (=> b!5369171 (= lt!2186610 (Context!8931 (Cons!61418 (reg!15410 (regOne!30674 r!7292)) lt!2186611)))))

(declare-fun b!5369172 () Bool)

(declare-fun e!3331705 () Bool)

(declare-fun tp!1489792 () Bool)

(assert (=> b!5369172 (= e!3331705 tp!1489792)))

(declare-fun setElem!34787 () Context!8930)

(declare-fun setNonEmpty!34787 () Bool)

(declare-fun tp!1489796 () Bool)

(assert (=> setNonEmpty!34787 (= setRes!34787 (and tp!1489796 (inv!80949 setElem!34787) e!3331705))))

(declare-fun setRest!34787 () (InoxSet Context!8930))

(assert (=> setNonEmpty!34787 (= z!1189 ((_ map or) (store ((as const (Array Context!8930 Bool)) false) setElem!34787 true) setRest!34787))))

(declare-fun b!5369173 () Bool)

(declare-fun tp!1489794 () Bool)

(declare-fun tp!1489798 () Bool)

(assert (=> b!5369173 (= e!3331694 (and tp!1489794 tp!1489798))))

(declare-fun b!5369174 () Bool)

(declare-fun res!2278685 () Bool)

(declare-fun e!3331690 () Bool)

(assert (=> b!5369174 (=> res!2278685 e!3331690)))

(declare-datatypes ((tuple2!64560 0))(
  ( (tuple2!64561 (_1!35583 List!61544) (_2!35583 List!61544)) )
))
(declare-fun lt!2186609 () tuple2!64560)

(assert (=> b!5369174 (= res!2278685 (not (matchR!7266 lt!2186607 (_1!35583 lt!2186609))))))

(declare-fun b!5369175 () Bool)

(declare-fun tp!1489793 () Bool)

(assert (=> b!5369175 (= e!3331698 tp!1489793)))

(declare-fun b!5369176 () Bool)

(assert (=> b!5369176 (= e!3331686 (not e!3331692))))

(declare-fun res!2278700 () Bool)

(assert (=> b!5369176 (=> res!2278700 e!3331692)))

(assert (=> b!5369176 (= res!2278700 (not ((_ is Cons!61419) zl!343)))))

(assert (=> b!5369176 (= lt!2186636 lt!2186617)))

(assert (=> b!5369176 (= lt!2186617 (matchRSpec!2184 r!7292 s!2326))))

(assert (=> b!5369176 (= lt!2186636 (matchR!7266 r!7292 s!2326))))

(declare-fun lt!2186634 () Unit!153842)

(assert (=> b!5369176 (= lt!2186634 (mainMatchTheorem!2184 r!7292 s!2326))))

(assert (=> b!5369177 (= e!3331692 e!3331695)))

(declare-fun res!2278707 () Bool)

(assert (=> b!5369177 (=> res!2278707 e!3331695)))

(declare-fun lt!2186608 () Bool)

(assert (=> b!5369177 (= res!2278707 (or (not (= lt!2186636 lt!2186608)) ((_ is Nil!61420) s!2326)))))

(declare-fun Exists!2262 (Int) Bool)

(assert (=> b!5369177 (= (Exists!2262 lambda!276912) (Exists!2262 lambda!276913))))

(declare-fun lt!2186622 () Unit!153842)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!916 (Regex!15081 Regex!15081 List!61544) Unit!153842)

(assert (=> b!5369177 (= lt!2186622 (lemmaExistCutMatchRandMatchRSpecEquivalent!916 (regOne!30674 r!7292) (regTwo!30674 r!7292) s!2326))))

(assert (=> b!5369177 (= lt!2186608 (Exists!2262 lambda!276912))))

(declare-datatypes ((Option!15192 0))(
  ( (None!15191) (Some!15191 (v!51220 tuple2!64560)) )
))
(declare-fun isDefined!11895 (Option!15192) Bool)

(declare-fun findConcatSeparation!1606 (Regex!15081 Regex!15081 List!61544 List!61544 List!61544) Option!15192)

(assert (=> b!5369177 (= lt!2186608 (isDefined!11895 (findConcatSeparation!1606 (regOne!30674 r!7292) (regTwo!30674 r!7292) Nil!61420 s!2326 s!2326)))))

(declare-fun lt!2186631 () Unit!153842)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1370 (Regex!15081 Regex!15081 List!61544) Unit!153842)

(assert (=> b!5369177 (= lt!2186631 (lemmaFindConcatSeparationEquivalentToExists!1370 (regOne!30674 r!7292) (regTwo!30674 r!7292) s!2326))))

(assert (=> b!5369178 (= e!3331702 e!3331690)))

(declare-fun res!2278690 () Bool)

(assert (=> b!5369178 (=> res!2278690 e!3331690)))

(declare-fun ++!13384 (List!61544 List!61544) List!61544)

(assert (=> b!5369178 (= res!2278690 (not (= (++!13384 (_1!35583 lt!2186609) (_2!35583 lt!2186609)) s!2326)))))

(declare-fun lt!2186642 () Option!15192)

(declare-fun get!21130 (Option!15192) tuple2!64560)

(assert (=> b!5369178 (= lt!2186609 (get!21130 lt!2186642))))

(assert (=> b!5369178 (= (Exists!2262 lambda!276915) (Exists!2262 lambda!276916))))

(declare-fun lt!2186632 () Unit!153842)

(assert (=> b!5369178 (= lt!2186632 (lemmaExistCutMatchRandMatchRSpecEquivalent!916 lt!2186607 (regTwo!30674 r!7292) s!2326))))

(assert (=> b!5369178 (= (isDefined!11895 lt!2186642) (Exists!2262 lambda!276915))))

(assert (=> b!5369178 (= lt!2186642 (findConcatSeparation!1606 lt!2186607 (regTwo!30674 r!7292) Nil!61420 s!2326 s!2326))))

(declare-fun lt!2186647 () Unit!153842)

(assert (=> b!5369178 (= lt!2186647 (lemmaFindConcatSeparationEquivalentToExists!1370 lt!2186607 (regTwo!30674 r!7292) s!2326))))

(declare-fun b!5369179 () Bool)

(assert (=> b!5369179 (= e!3331694 tp_is_empty!39415)))

(declare-fun b!5369180 () Bool)

(declare-fun res!2278695 () Bool)

(assert (=> b!5369180 (=> res!2278695 e!3331699)))

(assert (=> b!5369180 (= res!2278695 (not (= (matchZipper!1325 lt!2186615 s!2326) (matchZipper!1325 lt!2186640 (t!374767 s!2326)))))))

(declare-fun b!5369181 () Bool)

(declare-fun lambda!276917 () Int)

(declare-fun forall!14489 (List!61542 Int) Bool)

(assert (=> b!5369181 (= e!3331688 (forall!14489 (t!374765 (exprs!4965 (h!67867 zl!343))) lambda!276917))))

(declare-fun lt!2186645 () (InoxSet Context!8930))

(assert (=> b!5369181 (= (matchR!7266 lt!2186633 s!2326) (matchZipper!1325 lt!2186645 s!2326))))

(declare-fun lt!2186629 () Unit!153842)

(declare-fun theoremZipperRegexEquiv!439 ((InoxSet Context!8930) List!61543 Regex!15081 List!61544) Unit!153842)

(assert (=> b!5369181 (= lt!2186629 (theoremZipperRegexEquiv!439 lt!2186645 lt!2186618 lt!2186633 s!2326))))

(declare-fun b!5369182 () Bool)

(declare-fun res!2278681 () Bool)

(assert (=> b!5369182 (=> res!2278681 e!3331690)))

(declare-fun isEmpty!33400 (List!61544) Bool)

(assert (=> b!5369182 (= res!2278681 (not (isEmpty!33400 (_1!35583 lt!2186609))))))

(declare-fun b!5369183 () Bool)

(declare-fun res!2278675 () Bool)

(assert (=> b!5369183 (=> res!2278675 e!3331690)))

(assert (=> b!5369183 (= res!2278675 (not (matchR!7266 (regTwo!30674 r!7292) (_2!35583 lt!2186609))))))

(declare-fun b!5369184 () Bool)

(declare-fun res!2278686 () Bool)

(assert (=> b!5369184 (=> res!2278686 e!3331692)))

(assert (=> b!5369184 (= res!2278686 (or ((_ is EmptyExpr!15081) r!7292) ((_ is EmptyLang!15081) r!7292) ((_ is ElementMatch!15081) r!7292) ((_ is Union!15081) r!7292) (not ((_ is Concat!23926) r!7292))))))

(declare-fun b!5369185 () Bool)

(assert (=> b!5369185 (= e!3331690 e!3331697)))

(declare-fun res!2278679 () Bool)

(assert (=> b!5369185 (=> res!2278679 e!3331697)))

(assert (=> b!5369185 (= res!2278679 (not (= lt!2186620 (derivationStepZipper!1320 lt!2186645 (h!67868 s!2326)))))))

(assert (=> b!5369185 (= (flatMap!808 lt!2186645 lambda!276914) (derivationStepZipperUp!453 lt!2186626 (h!67868 s!2326)))))

(declare-fun lt!2186635 () Unit!153842)

(assert (=> b!5369185 (= lt!2186635 (lemmaFlatMapOnSingletonSet!340 lt!2186645 lt!2186626 lambda!276914))))

(assert (=> b!5369185 (= lt!2186645 (store ((as const (Array Context!8930 Bool)) false) lt!2186626 true))))

(declare-fun b!5369186 () Bool)

(assert (=> b!5369186 (= e!3331691 e!3331696)))

(declare-fun res!2278678 () Bool)

(assert (=> b!5369186 (=> res!2278678 e!3331696)))

(assert (=> b!5369186 (= res!2278678 (not (= (unfocusZipper!823 (Cons!61419 lt!2186610 Nil!61419)) lt!2186628)))))

(assert (=> b!5369186 (= lt!2186628 (Concat!23926 (reg!15410 (regOne!30674 r!7292)) lt!2186627))))

(declare-fun b!5369187 () Bool)

(declare-fun res!2278706 () Bool)

(assert (=> b!5369187 (=> (not res!2278706) (not e!3331704))))

(declare-fun toList!8865 ((InoxSet Context!8930)) List!61543)

(assert (=> b!5369187 (= res!2278706 (= (toList!8865 z!1189) zl!343))))

(declare-fun b!5369155 () Bool)

(declare-fun res!2278689 () Bool)

(assert (=> b!5369155 (=> res!2278689 e!3331692)))

(assert (=> b!5369155 (= res!2278689 (not (= r!7292 (generalisedConcat!750 (exprs!4965 (h!67867 zl!343))))))))

(declare-fun res!2278697 () Bool)

(assert (=> start!564974 (=> (not res!2278697) (not e!3331704))))

(declare-fun validRegex!6817 (Regex!15081) Bool)

(assert (=> start!564974 (= res!2278697 (validRegex!6817 r!7292))))

(assert (=> start!564974 e!3331704))

(assert (=> start!564974 e!3331694))

(declare-fun condSetEmpty!34787 () Bool)

(assert (=> start!564974 (= condSetEmpty!34787 (= z!1189 ((as const (Array Context!8930 Bool)) false)))))

(assert (=> start!564974 setRes!34787))

(assert (=> start!564974 e!3331683))

(assert (=> start!564974 e!3331689))

(assert (= (and start!564974 res!2278697) b!5369187))

(assert (= (and b!5369187 res!2278706) b!5369163))

(assert (= (and b!5369163 res!2278705) b!5369176))

(assert (= (and b!5369176 (not res!2278700)) b!5369160))

(assert (= (and b!5369160 (not res!2278680)) b!5369155))

(assert (= (and b!5369155 (not res!2278689)) b!5369151))

(assert (= (and b!5369151 (not res!2278677)) b!5369167))

(assert (= (and b!5369167 (not res!2278703)) b!5369184))

(assert (= (and b!5369184 (not res!2278686)) b!5369177))

(assert (= (and b!5369177 (not res!2278707)) b!5369170))

(assert (= (and b!5369170 (not res!2278684)) b!5369153))

(assert (= (and b!5369153 c!935424) b!5369148))

(assert (= (and b!5369153 (not c!935424)) b!5369149))

(assert (= (and b!5369148 (not res!2278694)) b!5369165))

(assert (= (and b!5369153 (not res!2278682)) b!5369146))

(assert (= (and b!5369146 res!2278683) b!5369166))

(assert (= (and b!5369146 (not res!2278687)) b!5369150))

(assert (= (and b!5369150 (not res!2278693)) b!5369152))

(assert (= (and b!5369152 (not res!2278692)) b!5369171))

(assert (= (and b!5369171 (not res!2278699)) b!5369180))

(assert (= (and b!5369180 (not res!2278695)) b!5369154))

(assert (= (and b!5369154 (not res!2278676)) b!5369159))

(assert (= (and b!5369159 (not res!2278691)) b!5369186))

(assert (= (and b!5369186 (not res!2278678)) b!5369168))

(assert (= (and b!5369168 (not res!2278688)) b!5369147))

(assert (= (and b!5369147 (not res!2278704)) b!5369169))

(assert (= (and b!5369169 res!2278702) b!5369162))

(assert (= (and b!5369169 (not res!2278696)) b!5369178))

(assert (= (and b!5369178 (not res!2278690)) b!5369174))

(assert (= (and b!5369174 (not res!2278685)) b!5369183))

(assert (= (and b!5369183 (not res!2278675)) b!5369182))

(assert (= (and b!5369182 (not res!2278681)) b!5369185))

(assert (= (and b!5369185 (not res!2278679)) b!5369164))

(assert (= (and b!5369164 (not res!2278701)) b!5369156))

(assert (= (and b!5369156 (not res!2278698)) b!5369181))

(assert (= (and start!564974 ((_ is ElementMatch!15081) r!7292)) b!5369179))

(assert (= (and start!564974 ((_ is Concat!23926) r!7292)) b!5369157))

(assert (= (and start!564974 ((_ is Star!15081) r!7292)) b!5369145))

(assert (= (and start!564974 ((_ is Union!15081) r!7292)) b!5369173))

(assert (= (and start!564974 condSetEmpty!34787) setIsEmpty!34787))

(assert (= (and start!564974 (not condSetEmpty!34787)) setNonEmpty!34787))

(assert (= setNonEmpty!34787 b!5369172))

(assert (= b!5369161 b!5369175))

(assert (= (and start!564974 ((_ is Cons!61419) zl!343)) b!5369161))

(assert (= (and start!564974 ((_ is Cons!61420) s!2326)) b!5369158))

(declare-fun m!6396746 () Bool)

(assert (=> b!5369182 m!6396746))

(declare-fun m!6396748 () Bool)

(assert (=> b!5369147 m!6396748))

(declare-fun m!6396750 () Bool)

(assert (=> b!5369155 m!6396750))

(declare-fun m!6396752 () Bool)

(assert (=> b!5369177 m!6396752))

(declare-fun m!6396754 () Bool)

(assert (=> b!5369177 m!6396754))

(declare-fun m!6396756 () Bool)

(assert (=> b!5369177 m!6396756))

(declare-fun m!6396758 () Bool)

(assert (=> b!5369177 m!6396758))

(assert (=> b!5369177 m!6396752))

(declare-fun m!6396760 () Bool)

(assert (=> b!5369177 m!6396760))

(assert (=> b!5369177 m!6396756))

(declare-fun m!6396762 () Bool)

(assert (=> b!5369177 m!6396762))

(declare-fun m!6396764 () Bool)

(assert (=> b!5369170 m!6396764))

(declare-fun m!6396766 () Bool)

(assert (=> b!5369163 m!6396766))

(declare-fun m!6396768 () Bool)

(assert (=> b!5369161 m!6396768))

(declare-fun m!6396770 () Bool)

(assert (=> start!564974 m!6396770))

(declare-fun m!6396772 () Bool)

(assert (=> b!5369167 m!6396772))

(assert (=> b!5369167 m!6396772))

(declare-fun m!6396774 () Bool)

(assert (=> b!5369167 m!6396774))

(declare-fun m!6396776 () Bool)

(assert (=> b!5369169 m!6396776))

(declare-fun m!6396778 () Bool)

(assert (=> b!5369169 m!6396778))

(declare-fun m!6396780 () Bool)

(assert (=> b!5369169 m!6396780))

(declare-fun m!6396782 () Bool)

(assert (=> b!5369166 m!6396782))

(declare-fun m!6396784 () Bool)

(assert (=> b!5369176 m!6396784))

(declare-fun m!6396786 () Bool)

(assert (=> b!5369176 m!6396786))

(declare-fun m!6396788 () Bool)

(assert (=> b!5369176 m!6396788))

(declare-fun m!6396790 () Bool)

(assert (=> b!5369187 m!6396790))

(declare-fun m!6396792 () Bool)

(assert (=> b!5369171 m!6396792))

(declare-fun m!6396794 () Bool)

(assert (=> b!5369171 m!6396794))

(declare-fun m!6396796 () Bool)

(assert (=> b!5369171 m!6396796))

(declare-fun m!6396798 () Bool)

(assert (=> b!5369171 m!6396798))

(declare-fun m!6396800 () Bool)

(assert (=> b!5369171 m!6396800))

(declare-fun m!6396802 () Bool)

(assert (=> b!5369160 m!6396802))

(declare-fun m!6396804 () Bool)

(assert (=> b!5369186 m!6396804))

(declare-fun m!6396806 () Bool)

(assert (=> b!5369174 m!6396806))

(declare-fun m!6396808 () Bool)

(assert (=> b!5369180 m!6396808))

(declare-fun m!6396810 () Bool)

(assert (=> b!5369180 m!6396810))

(declare-fun m!6396812 () Bool)

(assert (=> b!5369183 m!6396812))

(declare-fun m!6396814 () Bool)

(assert (=> b!5369152 m!6396814))

(declare-fun m!6396816 () Bool)

(assert (=> b!5369181 m!6396816))

(declare-fun m!6396818 () Bool)

(assert (=> b!5369181 m!6396818))

(declare-fun m!6396820 () Bool)

(assert (=> b!5369181 m!6396820))

(declare-fun m!6396822 () Bool)

(assert (=> b!5369181 m!6396822))

(declare-fun m!6396824 () Bool)

(assert (=> b!5369164 m!6396824))

(declare-fun m!6396826 () Bool)

(assert (=> b!5369164 m!6396826))

(declare-fun m!6396828 () Bool)

(assert (=> b!5369164 m!6396828))

(declare-fun m!6396830 () Bool)

(assert (=> b!5369165 m!6396830))

(declare-fun m!6396832 () Bool)

(assert (=> b!5369153 m!6396832))

(declare-fun m!6396834 () Bool)

(assert (=> b!5369153 m!6396834))

(declare-fun m!6396836 () Bool)

(assert (=> b!5369153 m!6396836))

(declare-fun m!6396838 () Bool)

(assert (=> b!5369153 m!6396838))

(declare-fun m!6396840 () Bool)

(assert (=> b!5369153 m!6396840))

(declare-fun m!6396842 () Bool)

(assert (=> b!5369153 m!6396842))

(declare-fun m!6396844 () Bool)

(assert (=> b!5369153 m!6396844))

(declare-fun m!6396846 () Bool)

(assert (=> b!5369168 m!6396846))

(declare-fun m!6396848 () Bool)

(assert (=> b!5369168 m!6396848))

(declare-fun m!6396850 () Bool)

(assert (=> b!5369168 m!6396850))

(declare-fun m!6396852 () Bool)

(assert (=> b!5369168 m!6396852))

(declare-fun m!6396854 () Bool)

(assert (=> b!5369168 m!6396854))

(declare-fun m!6396856 () Bool)

(assert (=> b!5369168 m!6396856))

(declare-fun m!6396858 () Bool)

(assert (=> b!5369168 m!6396858))

(declare-fun m!6396860 () Bool)

(assert (=> b!5369168 m!6396860))

(declare-fun m!6396862 () Bool)

(assert (=> b!5369168 m!6396862))

(declare-fun m!6396864 () Bool)

(assert (=> setNonEmpty!34787 m!6396864))

(declare-fun m!6396866 () Bool)

(assert (=> b!5369178 m!6396866))

(assert (=> b!5369178 m!6396866))

(declare-fun m!6396868 () Bool)

(assert (=> b!5369178 m!6396868))

(declare-fun m!6396870 () Bool)

(assert (=> b!5369178 m!6396870))

(declare-fun m!6396872 () Bool)

(assert (=> b!5369178 m!6396872))

(declare-fun m!6396874 () Bool)

(assert (=> b!5369178 m!6396874))

(declare-fun m!6396876 () Bool)

(assert (=> b!5369178 m!6396876))

(declare-fun m!6396878 () Bool)

(assert (=> b!5369178 m!6396878))

(declare-fun m!6396880 () Bool)

(assert (=> b!5369178 m!6396880))

(declare-fun m!6396882 () Bool)

(assert (=> b!5369185 m!6396882))

(assert (=> b!5369185 m!6396838))

(declare-fun m!6396884 () Bool)

(assert (=> b!5369185 m!6396884))

(declare-fun m!6396886 () Bool)

(assert (=> b!5369185 m!6396886))

(declare-fun m!6396888 () Bool)

(assert (=> b!5369185 m!6396888))

(declare-fun m!6396890 () Bool)

(assert (=> b!5369156 m!6396890))

(declare-fun m!6396892 () Bool)

(assert (=> b!5369156 m!6396892))

(declare-fun m!6396894 () Bool)

(assert (=> b!5369148 m!6396894))

(declare-fun m!6396896 () Bool)

(assert (=> b!5369148 m!6396896))

(declare-fun m!6396898 () Bool)

(assert (=> b!5369148 m!6396898))

(check-sat (not b!5369163) (not b!5369172) (not b!5369161) (not b!5369157) (not b!5369186) (not b!5369187) (not start!564974) (not b!5369185) (not b!5369170) (not b!5369153) (not b!5369181) (not b!5369167) (not b!5369180) (not b!5369156) (not b!5369182) (not b!5369176) (not b!5369166) (not b!5369148) (not b!5369152) (not setNonEmpty!34787) (not b!5369155) (not b!5369174) (not b!5369164) (not b!5369178) (not b!5369158) (not b!5369145) (not b!5369175) (not b!5369165) (not b!5369168) (not b!5369171) tp_is_empty!39415 (not b!5369147) (not b!5369160) (not b!5369183) (not b!5369177) (not b!5369169) (not b!5369173))
(check-sat)
(get-model)

(declare-fun bs!1243599 () Bool)

(declare-fun d!1719834 () Bool)

(assert (= bs!1243599 (and d!1719834 b!5369153)))

(declare-fun lambda!276960 () Int)

(assert (=> bs!1243599 (= lambda!276960 lambda!276914)))

(assert (=> d!1719834 true))

(assert (=> d!1719834 (= (derivationStepZipper!1320 lt!2186645 (h!67868 s!2326)) (flatMap!808 lt!2186645 lambda!276960))))

(declare-fun bs!1243600 () Bool)

(assert (= bs!1243600 d!1719834))

(declare-fun m!6397206 () Bool)

(assert (=> bs!1243600 m!6397206))

(assert (=> b!5369185 d!1719834))

(declare-fun d!1719836 () Bool)

(declare-fun choose!40322 ((InoxSet Context!8930) Int) (InoxSet Context!8930))

(assert (=> d!1719836 (= (flatMap!808 lt!2186645 lambda!276914) (choose!40322 lt!2186645 lambda!276914))))

(declare-fun bs!1243601 () Bool)

(assert (= bs!1243601 d!1719836))

(declare-fun m!6397208 () Bool)

(assert (=> bs!1243601 m!6397208))

(assert (=> b!5369185 d!1719836))

(declare-fun bm!384426 () Bool)

(declare-fun call!384431 () (InoxSet Context!8930))

(assert (=> bm!384426 (= call!384431 (derivationStepZipperDown!529 (h!67866 (exprs!4965 lt!2186626)) (Context!8931 (t!374765 (exprs!4965 lt!2186626))) (h!67868 s!2326)))))

(declare-fun b!5369588 () Bool)

(declare-fun e!3331934 () Bool)

(assert (=> b!5369588 (= e!3331934 (nullable!5250 (h!67866 (exprs!4965 lt!2186626))))))

(declare-fun b!5369590 () Bool)

(declare-fun e!3331933 () (InoxSet Context!8930))

(declare-fun e!3331932 () (InoxSet Context!8930))

(assert (=> b!5369590 (= e!3331933 e!3331932)))

(declare-fun c!935556 () Bool)

(assert (=> b!5369590 (= c!935556 ((_ is Cons!61418) (exprs!4965 lt!2186626)))))

(declare-fun d!1719838 () Bool)

(declare-fun c!935557 () Bool)

(assert (=> d!1719838 (= c!935557 e!3331934)))

(declare-fun res!2278856 () Bool)

(assert (=> d!1719838 (=> (not res!2278856) (not e!3331934))))

(assert (=> d!1719838 (= res!2278856 ((_ is Cons!61418) (exprs!4965 lt!2186626)))))

(assert (=> d!1719838 (= (derivationStepZipperUp!453 lt!2186626 (h!67868 s!2326)) e!3331933)))

(declare-fun b!5369589 () Bool)

(assert (=> b!5369589 (= e!3331932 call!384431)))

(declare-fun b!5369591 () Bool)

(assert (=> b!5369591 (= e!3331932 ((as const (Array Context!8930 Bool)) false))))

(declare-fun b!5369592 () Bool)

(assert (=> b!5369592 (= e!3331933 ((_ map or) call!384431 (derivationStepZipperUp!453 (Context!8931 (t!374765 (exprs!4965 lt!2186626))) (h!67868 s!2326))))))

(assert (= (and d!1719838 res!2278856) b!5369588))

(assert (= (and d!1719838 c!935557) b!5369592))

(assert (= (and d!1719838 (not c!935557)) b!5369590))

(assert (= (and b!5369590 c!935556) b!5369589))

(assert (= (and b!5369590 (not c!935556)) b!5369591))

(assert (= (or b!5369592 b!5369589) bm!384426))

(declare-fun m!6397210 () Bool)

(assert (=> bm!384426 m!6397210))

(declare-fun m!6397212 () Bool)

(assert (=> b!5369588 m!6397212))

(declare-fun m!6397214 () Bool)

(assert (=> b!5369592 m!6397214))

(assert (=> b!5369185 d!1719838))

(declare-fun d!1719840 () Bool)

(declare-fun dynLambda!24260 (Int Context!8930) (InoxSet Context!8930))

(assert (=> d!1719840 (= (flatMap!808 lt!2186645 lambda!276914) (dynLambda!24260 lambda!276914 lt!2186626))))

(declare-fun lt!2186716 () Unit!153842)

(declare-fun choose!40323 ((InoxSet Context!8930) Context!8930 Int) Unit!153842)

(assert (=> d!1719840 (= lt!2186716 (choose!40323 lt!2186645 lt!2186626 lambda!276914))))

(assert (=> d!1719840 (= lt!2186645 (store ((as const (Array Context!8930 Bool)) false) lt!2186626 true))))

(assert (=> d!1719840 (= (lemmaFlatMapOnSingletonSet!340 lt!2186645 lt!2186626 lambda!276914) lt!2186716)))

(declare-fun b_lambda!205855 () Bool)

(assert (=> (not b_lambda!205855) (not d!1719840)))

(declare-fun bs!1243602 () Bool)

(assert (= bs!1243602 d!1719840))

(assert (=> bs!1243602 m!6396882))

(declare-fun m!6397216 () Bool)

(assert (=> bs!1243602 m!6397216))

(declare-fun m!6397218 () Bool)

(assert (=> bs!1243602 m!6397218))

(assert (=> bs!1243602 m!6396884))

(assert (=> b!5369185 d!1719840))

(declare-fun d!1719842 () Bool)

(declare-fun c!935581 () Bool)

(assert (=> d!1719842 (= c!935581 (isEmpty!33400 (t!374767 s!2326)))))

(declare-fun e!3331970 () Bool)

(assert (=> d!1719842 (= (matchZipper!1325 lt!2186620 (t!374767 s!2326)) e!3331970)))

(declare-fun b!5369655 () Bool)

(declare-fun nullableZipper!1399 ((InoxSet Context!8930)) Bool)

(assert (=> b!5369655 (= e!3331970 (nullableZipper!1399 lt!2186620))))

(declare-fun b!5369656 () Bool)

(declare-fun head!11518 (List!61544) C!30432)

(declare-fun tail!10615 (List!61544) List!61544)

(assert (=> b!5369656 (= e!3331970 (matchZipper!1325 (derivationStepZipper!1320 lt!2186620 (head!11518 (t!374767 s!2326))) (tail!10615 (t!374767 s!2326))))))

(assert (= (and d!1719842 c!935581) b!5369655))

(assert (= (and d!1719842 (not c!935581)) b!5369656))

(declare-fun m!6397258 () Bool)

(assert (=> d!1719842 m!6397258))

(declare-fun m!6397262 () Bool)

(assert (=> b!5369655 m!6397262))

(declare-fun m!6397264 () Bool)

(assert (=> b!5369656 m!6397264))

(assert (=> b!5369656 m!6397264))

(declare-fun m!6397270 () Bool)

(assert (=> b!5369656 m!6397270))

(declare-fun m!6397274 () Bool)

(assert (=> b!5369656 m!6397274))

(assert (=> b!5369656 m!6397270))

(assert (=> b!5369656 m!6397274))

(declare-fun m!6397278 () Bool)

(assert (=> b!5369656 m!6397278))

(assert (=> b!5369165 d!1719842))

(declare-fun d!1719850 () Bool)

(declare-fun lt!2186723 () Regex!15081)

(assert (=> d!1719850 (validRegex!6817 lt!2186723)))

(assert (=> d!1719850 (= lt!2186723 (generalisedUnion!1010 (unfocusZipperList!523 (Cons!61419 lt!2186610 Nil!61419))))))

(assert (=> d!1719850 (= (unfocusZipper!823 (Cons!61419 lt!2186610 Nil!61419)) lt!2186723)))

(declare-fun bs!1243608 () Bool)

(assert (= bs!1243608 d!1719850))

(declare-fun m!6397288 () Bool)

(assert (=> bs!1243608 m!6397288))

(declare-fun m!6397290 () Bool)

(assert (=> bs!1243608 m!6397290))

(assert (=> bs!1243608 m!6397290))

(declare-fun m!6397292 () Bool)

(assert (=> bs!1243608 m!6397292))

(assert (=> b!5369186 d!1719850))

(declare-fun d!1719856 () Bool)

(declare-fun nullableFct!1552 (Regex!15081) Bool)

(assert (=> d!1719856 (= (nullable!5250 (regOne!30674 (regOne!30674 r!7292))) (nullableFct!1552 (regOne!30674 (regOne!30674 r!7292))))))

(declare-fun bs!1243609 () Bool)

(assert (= bs!1243609 d!1719856))

(declare-fun m!6397294 () Bool)

(assert (=> bs!1243609 m!6397294))

(assert (=> b!5369166 d!1719856))

(declare-fun d!1719858 () Bool)

(declare-fun e!3331973 () Bool)

(assert (=> d!1719858 e!3331973))

(declare-fun res!2278875 () Bool)

(assert (=> d!1719858 (=> (not res!2278875) (not e!3331973))))

(declare-fun lt!2186726 () List!61543)

(declare-fun noDuplicate!1353 (List!61543) Bool)

(assert (=> d!1719858 (= res!2278875 (noDuplicate!1353 lt!2186726))))

(declare-fun choose!40324 ((InoxSet Context!8930)) List!61543)

(assert (=> d!1719858 (= lt!2186726 (choose!40324 z!1189))))

(assert (=> d!1719858 (= (toList!8865 z!1189) lt!2186726)))

(declare-fun b!5369659 () Bool)

(declare-fun content!10974 (List!61543) (InoxSet Context!8930))

(assert (=> b!5369659 (= e!3331973 (= (content!10974 lt!2186726) z!1189))))

(assert (= (and d!1719858 res!2278875) b!5369659))

(declare-fun m!6397296 () Bool)

(assert (=> d!1719858 m!6397296))

(declare-fun m!6397298 () Bool)

(assert (=> d!1719858 m!6397298))

(declare-fun m!6397300 () Bool)

(assert (=> b!5369659 m!6397300))

(assert (=> b!5369187 d!1719858))

(declare-fun d!1719860 () Bool)

(assert (=> d!1719860 (= (isEmpty!33400 (_1!35583 lt!2186609)) ((_ is Nil!61420) (_1!35583 lt!2186609)))))

(assert (=> b!5369182 d!1719860))

(declare-fun b!5369708 () Bool)

(declare-fun e!3332008 () Bool)

(declare-fun e!3332006 () Bool)

(assert (=> b!5369708 (= e!3332008 e!3332006)))

(declare-fun res!2278892 () Bool)

(assert (=> b!5369708 (=> (not res!2278892) (not e!3332006))))

(declare-fun call!384455 () Bool)

(assert (=> b!5369708 (= res!2278892 call!384455)))

(declare-fun b!5369709 () Bool)

(declare-fun e!3332011 () Bool)

(declare-fun e!3332007 () Bool)

(assert (=> b!5369709 (= e!3332011 e!3332007)))

(declare-fun res!2278894 () Bool)

(assert (=> b!5369709 (= res!2278894 (not (nullable!5250 (reg!15410 r!7292))))))

(assert (=> b!5369709 (=> (not res!2278894) (not e!3332007))))

(declare-fun b!5369710 () Bool)

(declare-fun e!3332010 () Bool)

(declare-fun call!384454 () Bool)

(assert (=> b!5369710 (= e!3332010 call!384454)))

(declare-fun call!384453 () Bool)

(declare-fun c!935598 () Bool)

(declare-fun bm!384448 () Bool)

(declare-fun c!935599 () Bool)

(assert (=> bm!384448 (= call!384453 (validRegex!6817 (ite c!935599 (reg!15410 r!7292) (ite c!935598 (regOne!30675 r!7292) (regOne!30674 r!7292)))))))

(declare-fun b!5369711 () Bool)

(declare-fun e!3332009 () Bool)

(assert (=> b!5369711 (= e!3332011 e!3332009)))

(assert (=> b!5369711 (= c!935598 ((_ is Union!15081) r!7292))))

(declare-fun b!5369712 () Bool)

(assert (=> b!5369712 (= e!3332006 call!384454)))

(declare-fun b!5369713 () Bool)

(declare-fun res!2278895 () Bool)

(assert (=> b!5369713 (=> (not res!2278895) (not e!3332010))))

(assert (=> b!5369713 (= res!2278895 call!384455)))

(assert (=> b!5369713 (= e!3332009 e!3332010)))

(declare-fun bm!384449 () Bool)

(assert (=> bm!384449 (= call!384454 (validRegex!6817 (ite c!935598 (regTwo!30675 r!7292) (regTwo!30674 r!7292))))))

(declare-fun b!5369715 () Bool)

(declare-fun e!3332012 () Bool)

(assert (=> b!5369715 (= e!3332012 e!3332011)))

(assert (=> b!5369715 (= c!935599 ((_ is Star!15081) r!7292))))

(declare-fun d!1719862 () Bool)

(declare-fun res!2278896 () Bool)

(assert (=> d!1719862 (=> res!2278896 e!3332012)))

(assert (=> d!1719862 (= res!2278896 ((_ is ElementMatch!15081) r!7292))))

(assert (=> d!1719862 (= (validRegex!6817 r!7292) e!3332012)))

(declare-fun b!5369714 () Bool)

(declare-fun res!2278893 () Bool)

(assert (=> b!5369714 (=> res!2278893 e!3332008)))

(assert (=> b!5369714 (= res!2278893 (not ((_ is Concat!23926) r!7292)))))

(assert (=> b!5369714 (= e!3332009 e!3332008)))

(declare-fun b!5369716 () Bool)

(assert (=> b!5369716 (= e!3332007 call!384453)))

(declare-fun bm!384450 () Bool)

(assert (=> bm!384450 (= call!384455 call!384453)))

(assert (= (and d!1719862 (not res!2278896)) b!5369715))

(assert (= (and b!5369715 c!935599) b!5369709))

(assert (= (and b!5369715 (not c!935599)) b!5369711))

(assert (= (and b!5369709 res!2278894) b!5369716))

(assert (= (and b!5369711 c!935598) b!5369713))

(assert (= (and b!5369711 (not c!935598)) b!5369714))

(assert (= (and b!5369713 res!2278895) b!5369710))

(assert (= (and b!5369714 (not res!2278893)) b!5369708))

(assert (= (and b!5369708 res!2278892) b!5369712))

(assert (= (or b!5369710 b!5369712) bm!384449))

(assert (= (or b!5369713 b!5369708) bm!384450))

(assert (= (or b!5369716 bm!384450) bm!384448))

(declare-fun m!6397322 () Bool)

(assert (=> b!5369709 m!6397322))

(declare-fun m!6397324 () Bool)

(assert (=> bm!384448 m!6397324))

(declare-fun m!6397326 () Bool)

(assert (=> bm!384449 m!6397326))

(assert (=> start!564974 d!1719862))

(declare-fun b!5369779 () Bool)

(declare-fun e!3332053 () Bool)

(declare-fun e!3332047 () Bool)

(assert (=> b!5369779 (= e!3332053 e!3332047)))

(declare-fun c!935616 () Bool)

(assert (=> b!5369779 (= c!935616 ((_ is EmptyLang!15081) (regTwo!30674 r!7292)))))

(declare-fun b!5369780 () Bool)

(declare-fun e!3332052 () Bool)

(declare-fun derivativeStep!4221 (Regex!15081 C!30432) Regex!15081)

(assert (=> b!5369780 (= e!3332052 (matchR!7266 (derivativeStep!4221 (regTwo!30674 r!7292) (head!11518 (_2!35583 lt!2186609))) (tail!10615 (_2!35583 lt!2186609))))))

(declare-fun b!5369781 () Bool)

(declare-fun res!2278931 () Bool)

(declare-fun e!3332051 () Bool)

(assert (=> b!5369781 (=> (not res!2278931) (not e!3332051))))

(assert (=> b!5369781 (= res!2278931 (isEmpty!33400 (tail!10615 (_2!35583 lt!2186609))))))

(declare-fun b!5369782 () Bool)

(declare-fun res!2278929 () Bool)

(assert (=> b!5369782 (=> (not res!2278929) (not e!3332051))))

(declare-fun call!384461 () Bool)

(assert (=> b!5369782 (= res!2278929 (not call!384461))))

(declare-fun b!5369783 () Bool)

(declare-fun lt!2186739 () Bool)

(assert (=> b!5369783 (= e!3332053 (= lt!2186739 call!384461))))

(declare-fun b!5369784 () Bool)

(assert (=> b!5369784 (= e!3332051 (= (head!11518 (_2!35583 lt!2186609)) (c!935425 (regTwo!30674 r!7292))))))

(declare-fun b!5369785 () Bool)

(assert (=> b!5369785 (= e!3332047 (not lt!2186739))))

(declare-fun b!5369786 () Bool)

(assert (=> b!5369786 (= e!3332052 (nullable!5250 (regTwo!30674 r!7292)))))

(declare-fun b!5369787 () Bool)

(declare-fun res!2278930 () Bool)

(declare-fun e!3332050 () Bool)

(assert (=> b!5369787 (=> res!2278930 e!3332050)))

(assert (=> b!5369787 (= res!2278930 e!3332051)))

(declare-fun res!2278928 () Bool)

(assert (=> b!5369787 (=> (not res!2278928) (not e!3332051))))

(assert (=> b!5369787 (= res!2278928 lt!2186739)))

(declare-fun bm!384456 () Bool)

(assert (=> bm!384456 (= call!384461 (isEmpty!33400 (_2!35583 lt!2186609)))))

(declare-fun d!1719866 () Bool)

(assert (=> d!1719866 e!3332053))

(declare-fun c!935618 () Bool)

(assert (=> d!1719866 (= c!935618 ((_ is EmptyExpr!15081) (regTwo!30674 r!7292)))))

(assert (=> d!1719866 (= lt!2186739 e!3332052)))

(declare-fun c!935617 () Bool)

(assert (=> d!1719866 (= c!935617 (isEmpty!33400 (_2!35583 lt!2186609)))))

(assert (=> d!1719866 (validRegex!6817 (regTwo!30674 r!7292))))

(assert (=> d!1719866 (= (matchR!7266 (regTwo!30674 r!7292) (_2!35583 lt!2186609)) lt!2186739)))

(declare-fun b!5369788 () Bool)

(declare-fun e!3332049 () Bool)

(assert (=> b!5369788 (= e!3332050 e!3332049)))

(declare-fun res!2278932 () Bool)

(assert (=> b!5369788 (=> (not res!2278932) (not e!3332049))))

(assert (=> b!5369788 (= res!2278932 (not lt!2186739))))

(declare-fun b!5369789 () Bool)

(declare-fun e!3332048 () Bool)

(assert (=> b!5369789 (= e!3332049 e!3332048)))

(declare-fun res!2278927 () Bool)

(assert (=> b!5369789 (=> res!2278927 e!3332048)))

(assert (=> b!5369789 (= res!2278927 call!384461)))

(declare-fun b!5369790 () Bool)

(declare-fun res!2278934 () Bool)

(assert (=> b!5369790 (=> res!2278934 e!3332050)))

(assert (=> b!5369790 (= res!2278934 (not ((_ is ElementMatch!15081) (regTwo!30674 r!7292))))))

(assert (=> b!5369790 (= e!3332047 e!3332050)))

(declare-fun b!5369791 () Bool)

(assert (=> b!5369791 (= e!3332048 (not (= (head!11518 (_2!35583 lt!2186609)) (c!935425 (regTwo!30674 r!7292)))))))

(declare-fun b!5369792 () Bool)

(declare-fun res!2278933 () Bool)

(assert (=> b!5369792 (=> res!2278933 e!3332048)))

(assert (=> b!5369792 (= res!2278933 (not (isEmpty!33400 (tail!10615 (_2!35583 lt!2186609)))))))

(assert (= (and d!1719866 c!935617) b!5369786))

(assert (= (and d!1719866 (not c!935617)) b!5369780))

(assert (= (and d!1719866 c!935618) b!5369783))

(assert (= (and d!1719866 (not c!935618)) b!5369779))

(assert (= (and b!5369779 c!935616) b!5369785))

(assert (= (and b!5369779 (not c!935616)) b!5369790))

(assert (= (and b!5369790 (not res!2278934)) b!5369787))

(assert (= (and b!5369787 res!2278928) b!5369782))

(assert (= (and b!5369782 res!2278929) b!5369781))

(assert (= (and b!5369781 res!2278931) b!5369784))

(assert (= (and b!5369787 (not res!2278930)) b!5369788))

(assert (= (and b!5369788 res!2278932) b!5369789))

(assert (= (and b!5369789 (not res!2278927)) b!5369792))

(assert (= (and b!5369792 (not res!2278933)) b!5369791))

(assert (= (or b!5369783 b!5369782 b!5369789) bm!384456))

(declare-fun m!6397352 () Bool)

(assert (=> bm!384456 m!6397352))

(assert (=> d!1719866 m!6397352))

(declare-fun m!6397354 () Bool)

(assert (=> d!1719866 m!6397354))

(declare-fun m!6397356 () Bool)

(assert (=> b!5369784 m!6397356))

(assert (=> b!5369780 m!6397356))

(assert (=> b!5369780 m!6397356))

(declare-fun m!6397358 () Bool)

(assert (=> b!5369780 m!6397358))

(declare-fun m!6397360 () Bool)

(assert (=> b!5369780 m!6397360))

(assert (=> b!5369780 m!6397358))

(assert (=> b!5369780 m!6397360))

(declare-fun m!6397362 () Bool)

(assert (=> b!5369780 m!6397362))

(assert (=> b!5369792 m!6397360))

(assert (=> b!5369792 m!6397360))

(declare-fun m!6397364 () Bool)

(assert (=> b!5369792 m!6397364))

(assert (=> b!5369791 m!6397356))

(assert (=> b!5369781 m!6397360))

(assert (=> b!5369781 m!6397360))

(assert (=> b!5369781 m!6397364))

(declare-fun m!6397366 () Bool)

(assert (=> b!5369786 m!6397366))

(assert (=> b!5369183 d!1719866))

(declare-fun d!1719878 () Bool)

(declare-fun lt!2186741 () Regex!15081)

(assert (=> d!1719878 (validRegex!6817 lt!2186741)))

(assert (=> d!1719878 (= lt!2186741 (generalisedUnion!1010 (unfocusZipperList!523 zl!343)))))

(assert (=> d!1719878 (= (unfocusZipper!823 zl!343) lt!2186741)))

(declare-fun bs!1243642 () Bool)

(assert (= bs!1243642 d!1719878))

(declare-fun m!6397370 () Bool)

(assert (=> bs!1243642 m!6397370))

(assert (=> bs!1243642 m!6396772))

(assert (=> bs!1243642 m!6396772))

(assert (=> bs!1243642 m!6396774))

(assert (=> b!5369163 d!1719878))

(declare-fun b!5369888 () Bool)

(declare-fun e!3332105 () Int)

(declare-fun e!3332108 () Int)

(assert (=> b!5369888 (= e!3332105 e!3332108)))

(declare-fun c!935636 () Bool)

(assert (=> b!5369888 (= c!935636 ((_ is Star!15081) r!7292))))

(declare-fun call!384480 () Int)

(declare-fun c!935638 () Bool)

(declare-fun bm!384471 () Bool)

(assert (=> bm!384471 (= call!384480 (regexDepth!169 (ite c!935636 (reg!15410 r!7292) (ite c!935638 (regOne!30675 r!7292) (regTwo!30674 r!7292)))))))

(declare-fun b!5369889 () Bool)

(declare-fun e!3332106 () Int)

(declare-fun call!384476 () Int)

(assert (=> b!5369889 (= e!3332106 (+ 1 call!384476))))

(declare-fun b!5369890 () Bool)

(declare-fun e!3332109 () Bool)

(declare-fun lt!2186750 () Int)

(declare-fun call!384478 () Int)

(assert (=> b!5369890 (= e!3332109 (> lt!2186750 call!384478))))

(declare-fun b!5369891 () Bool)

(declare-fun e!3332103 () Int)

(assert (=> b!5369891 (= e!3332103 e!3332106)))

(declare-fun c!935639 () Bool)

(assert (=> b!5369891 (= c!935639 ((_ is Concat!23926) r!7292))))

(declare-fun b!5369892 () Bool)

(assert (=> b!5369892 (= c!935638 ((_ is Union!15081) r!7292))))

(assert (=> b!5369892 (= e!3332108 e!3332103)))

(declare-fun bm!384472 () Bool)

(declare-fun call!384481 () Int)

(assert (=> bm!384472 (= call!384481 call!384480)))

(declare-fun b!5369893 () Bool)

(declare-fun e!3332111 () Bool)

(assert (=> b!5369893 (= e!3332111 (= lt!2186750 1))))

(declare-fun c!935641 () Bool)

(declare-fun bm!384473 () Bool)

(declare-fun c!935635 () Bool)

(assert (=> bm!384473 (= call!384478 (regexDepth!169 (ite c!935641 (regTwo!30675 r!7292) (ite c!935635 (regOne!30674 r!7292) (reg!15410 r!7292)))))))

(declare-fun b!5369894 () Bool)

(declare-fun e!3332102 () Bool)

(assert (=> b!5369894 (= e!3332102 e!3332109)))

(declare-fun res!2278946 () Bool)

(declare-fun call!384477 () Int)

(assert (=> b!5369894 (= res!2278946 (> lt!2186750 call!384477))))

(assert (=> b!5369894 (=> (not res!2278946) (not e!3332109))))

(declare-fun bm!384474 () Bool)

(declare-fun call!384482 () Int)

(assert (=> bm!384474 (= call!384482 call!384478)))

(declare-fun b!5369895 () Bool)

(declare-fun c!935640 () Bool)

(assert (=> b!5369895 (= c!935640 ((_ is Star!15081) r!7292))))

(declare-fun e!3332107 () Bool)

(assert (=> b!5369895 (= e!3332107 e!3332111)))

(declare-fun bm!384475 () Bool)

(declare-fun call!384479 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!384475 (= call!384476 (maxBigInt!0 (ite c!935638 call!384481 call!384479) (ite c!935638 call!384479 call!384481)))))

(declare-fun b!5369896 () Bool)

(assert (=> b!5369896 (= e!3332105 1)))

(declare-fun b!5369897 () Bool)

(assert (=> b!5369897 (= e!3332103 (+ 1 call!384476))))

(declare-fun d!1719882 () Bool)

(declare-fun e!3332110 () Bool)

(assert (=> d!1719882 e!3332110))

(declare-fun res!2278944 () Bool)

(assert (=> d!1719882 (=> (not res!2278944) (not e!3332110))))

(assert (=> d!1719882 (= res!2278944 (> lt!2186750 0))))

(assert (=> d!1719882 (= lt!2186750 e!3332105)))

(declare-fun c!935637 () Bool)

(assert (=> d!1719882 (= c!935637 ((_ is ElementMatch!15081) r!7292))))

(assert (=> d!1719882 (= (regexDepth!169 r!7292) lt!2186750)))

(declare-fun b!5369898 () Bool)

(assert (=> b!5369898 (= e!3332108 (+ 1 call!384480))))

(declare-fun b!5369899 () Bool)

(assert (=> b!5369899 (= e!3332102 e!3332107)))

(assert (=> b!5369899 (= c!935635 ((_ is Concat!23926) r!7292))))

(declare-fun b!5369900 () Bool)

(declare-fun res!2278945 () Bool)

(declare-fun e!3332104 () Bool)

(assert (=> b!5369900 (=> (not res!2278945) (not e!3332104))))

(assert (=> b!5369900 (= res!2278945 (> lt!2186750 call!384482))))

(assert (=> b!5369900 (= e!3332107 e!3332104)))

(declare-fun bm!384476 () Bool)

(assert (=> bm!384476 (= call!384479 (regexDepth!169 (ite c!935638 (regTwo!30675 r!7292) (regOne!30674 r!7292))))))

(declare-fun b!5369901 () Bool)

(assert (=> b!5369901 (= e!3332104 (> lt!2186750 call!384477))))

(declare-fun b!5369902 () Bool)

(assert (=> b!5369902 (= e!3332110 e!3332102)))

(assert (=> b!5369902 (= c!935641 ((_ is Union!15081) r!7292))))

(declare-fun b!5369903 () Bool)

(assert (=> b!5369903 (= e!3332106 1)))

(declare-fun bm!384477 () Bool)

(assert (=> bm!384477 (= call!384477 (regexDepth!169 (ite c!935641 (regOne!30675 r!7292) (regTwo!30674 r!7292))))))

(declare-fun b!5369904 () Bool)

(assert (=> b!5369904 (= e!3332111 (> lt!2186750 call!384482))))

(assert (= (and d!1719882 c!935637) b!5369896))

(assert (= (and d!1719882 (not c!935637)) b!5369888))

(assert (= (and b!5369888 c!935636) b!5369898))

(assert (= (and b!5369888 (not c!935636)) b!5369892))

(assert (= (and b!5369892 c!935638) b!5369897))

(assert (= (and b!5369892 (not c!935638)) b!5369891))

(assert (= (and b!5369891 c!935639) b!5369889))

(assert (= (and b!5369891 (not c!935639)) b!5369903))

(assert (= (or b!5369897 b!5369889) bm!384476))

(assert (= (or b!5369897 b!5369889) bm!384472))

(assert (= (or b!5369897 b!5369889) bm!384475))

(assert (= (or b!5369898 bm!384472) bm!384471))

(assert (= (and d!1719882 res!2278944) b!5369902))

(assert (= (and b!5369902 c!935641) b!5369894))

(assert (= (and b!5369902 (not c!935641)) b!5369899))

(assert (= (and b!5369894 res!2278946) b!5369890))

(assert (= (and b!5369899 c!935635) b!5369900))

(assert (= (and b!5369899 (not c!935635)) b!5369895))

(assert (= (and b!5369900 res!2278945) b!5369901))

(assert (= (and b!5369895 c!935640) b!5369904))

(assert (= (and b!5369895 (not c!935640)) b!5369893))

(assert (= (or b!5369900 b!5369904) bm!384474))

(assert (= (or b!5369890 bm!384474) bm!384473))

(assert (= (or b!5369894 b!5369901) bm!384477))

(declare-fun m!6397410 () Bool)

(assert (=> bm!384475 m!6397410))

(declare-fun m!6397412 () Bool)

(assert (=> bm!384476 m!6397412))

(declare-fun m!6397414 () Bool)

(assert (=> bm!384477 m!6397414))

(declare-fun m!6397416 () Bool)

(assert (=> bm!384471 m!6397416))

(declare-fun m!6397418 () Bool)

(assert (=> bm!384473 m!6397418))

(assert (=> b!5369164 d!1719882))

(declare-fun b!5369905 () Bool)

(declare-fun e!3332115 () Int)

(declare-fun e!3332118 () Int)

(assert (=> b!5369905 (= e!3332115 e!3332118)))

(declare-fun c!935643 () Bool)

(assert (=> b!5369905 (= c!935643 ((_ is Star!15081) lt!2186633))))

(declare-fun c!935645 () Bool)

(declare-fun call!384487 () Int)

(declare-fun bm!384478 () Bool)

(assert (=> bm!384478 (= call!384487 (regexDepth!169 (ite c!935643 (reg!15410 lt!2186633) (ite c!935645 (regOne!30675 lt!2186633) (regTwo!30674 lt!2186633)))))))

(declare-fun b!5369906 () Bool)

(declare-fun e!3332116 () Int)

(declare-fun call!384483 () Int)

(assert (=> b!5369906 (= e!3332116 (+ 1 call!384483))))

(declare-fun b!5369907 () Bool)

(declare-fun e!3332119 () Bool)

(declare-fun lt!2186751 () Int)

(declare-fun call!384485 () Int)

(assert (=> b!5369907 (= e!3332119 (> lt!2186751 call!384485))))

(declare-fun b!5369908 () Bool)

(declare-fun e!3332113 () Int)

(assert (=> b!5369908 (= e!3332113 e!3332116)))

(declare-fun c!935646 () Bool)

(assert (=> b!5369908 (= c!935646 ((_ is Concat!23926) lt!2186633))))

(declare-fun b!5369909 () Bool)

(assert (=> b!5369909 (= c!935645 ((_ is Union!15081) lt!2186633))))

(assert (=> b!5369909 (= e!3332118 e!3332113)))

(declare-fun bm!384479 () Bool)

(declare-fun call!384488 () Int)

(assert (=> bm!384479 (= call!384488 call!384487)))

(declare-fun b!5369910 () Bool)

(declare-fun e!3332121 () Bool)

(assert (=> b!5369910 (= e!3332121 (= lt!2186751 1))))

(declare-fun bm!384480 () Bool)

(declare-fun c!935648 () Bool)

(declare-fun c!935642 () Bool)

(assert (=> bm!384480 (= call!384485 (regexDepth!169 (ite c!935648 (regTwo!30675 lt!2186633) (ite c!935642 (regOne!30674 lt!2186633) (reg!15410 lt!2186633)))))))

(declare-fun b!5369911 () Bool)

(declare-fun e!3332112 () Bool)

(assert (=> b!5369911 (= e!3332112 e!3332119)))

(declare-fun res!2278949 () Bool)

(declare-fun call!384484 () Int)

(assert (=> b!5369911 (= res!2278949 (> lt!2186751 call!384484))))

(assert (=> b!5369911 (=> (not res!2278949) (not e!3332119))))

(declare-fun bm!384481 () Bool)

(declare-fun call!384489 () Int)

(assert (=> bm!384481 (= call!384489 call!384485)))

(declare-fun b!5369912 () Bool)

(declare-fun c!935647 () Bool)

(assert (=> b!5369912 (= c!935647 ((_ is Star!15081) lt!2186633))))

(declare-fun e!3332117 () Bool)

(assert (=> b!5369912 (= e!3332117 e!3332121)))

(declare-fun bm!384482 () Bool)

(declare-fun call!384486 () Int)

(assert (=> bm!384482 (= call!384483 (maxBigInt!0 (ite c!935645 call!384488 call!384486) (ite c!935645 call!384486 call!384488)))))

(declare-fun b!5369913 () Bool)

(assert (=> b!5369913 (= e!3332115 1)))

(declare-fun b!5369914 () Bool)

(assert (=> b!5369914 (= e!3332113 (+ 1 call!384483))))

(declare-fun d!1719908 () Bool)

(declare-fun e!3332120 () Bool)

(assert (=> d!1719908 e!3332120))

(declare-fun res!2278947 () Bool)

(assert (=> d!1719908 (=> (not res!2278947) (not e!3332120))))

(assert (=> d!1719908 (= res!2278947 (> lt!2186751 0))))

(assert (=> d!1719908 (= lt!2186751 e!3332115)))

(declare-fun c!935644 () Bool)

(assert (=> d!1719908 (= c!935644 ((_ is ElementMatch!15081) lt!2186633))))

(assert (=> d!1719908 (= (regexDepth!169 lt!2186633) lt!2186751)))

(declare-fun b!5369915 () Bool)

(assert (=> b!5369915 (= e!3332118 (+ 1 call!384487))))

(declare-fun b!5369916 () Bool)

(assert (=> b!5369916 (= e!3332112 e!3332117)))

(assert (=> b!5369916 (= c!935642 ((_ is Concat!23926) lt!2186633))))

(declare-fun b!5369917 () Bool)

(declare-fun res!2278948 () Bool)

(declare-fun e!3332114 () Bool)

(assert (=> b!5369917 (=> (not res!2278948) (not e!3332114))))

(assert (=> b!5369917 (= res!2278948 (> lt!2186751 call!384489))))

(assert (=> b!5369917 (= e!3332117 e!3332114)))

(declare-fun bm!384483 () Bool)

(assert (=> bm!384483 (= call!384486 (regexDepth!169 (ite c!935645 (regTwo!30675 lt!2186633) (regOne!30674 lt!2186633))))))

(declare-fun b!5369918 () Bool)

(assert (=> b!5369918 (= e!3332114 (> lt!2186751 call!384484))))

(declare-fun b!5369919 () Bool)

(assert (=> b!5369919 (= e!3332120 e!3332112)))

(assert (=> b!5369919 (= c!935648 ((_ is Union!15081) lt!2186633))))

(declare-fun b!5369920 () Bool)

(assert (=> b!5369920 (= e!3332116 1)))

(declare-fun bm!384484 () Bool)

(assert (=> bm!384484 (= call!384484 (regexDepth!169 (ite c!935648 (regOne!30675 lt!2186633) (regTwo!30674 lt!2186633))))))

(declare-fun b!5369921 () Bool)

(assert (=> b!5369921 (= e!3332121 (> lt!2186751 call!384489))))

(assert (= (and d!1719908 c!935644) b!5369913))

(assert (= (and d!1719908 (not c!935644)) b!5369905))

(assert (= (and b!5369905 c!935643) b!5369915))

(assert (= (and b!5369905 (not c!935643)) b!5369909))

(assert (= (and b!5369909 c!935645) b!5369914))

(assert (= (and b!5369909 (not c!935645)) b!5369908))

(assert (= (and b!5369908 c!935646) b!5369906))

(assert (= (and b!5369908 (not c!935646)) b!5369920))

(assert (= (or b!5369914 b!5369906) bm!384483))

(assert (= (or b!5369914 b!5369906) bm!384479))

(assert (= (or b!5369914 b!5369906) bm!384482))

(assert (= (or b!5369915 bm!384479) bm!384478))

(assert (= (and d!1719908 res!2278947) b!5369919))

(assert (= (and b!5369919 c!935648) b!5369911))

(assert (= (and b!5369919 (not c!935648)) b!5369916))

(assert (= (and b!5369911 res!2278949) b!5369907))

(assert (= (and b!5369916 c!935642) b!5369917))

(assert (= (and b!5369916 (not c!935642)) b!5369912))

(assert (= (and b!5369917 res!2278948) b!5369918))

(assert (= (and b!5369912 c!935647) b!5369921))

(assert (= (and b!5369912 (not c!935647)) b!5369910))

(assert (= (or b!5369917 b!5369921) bm!384481))

(assert (= (or b!5369907 bm!384481) bm!384480))

(assert (= (or b!5369911 b!5369918) bm!384484))

(declare-fun m!6397420 () Bool)

(assert (=> bm!384482 m!6397420))

(declare-fun m!6397422 () Bool)

(assert (=> bm!384483 m!6397422))

(declare-fun m!6397424 () Bool)

(assert (=> bm!384484 m!6397424))

(declare-fun m!6397426 () Bool)

(assert (=> bm!384478 m!6397426))

(declare-fun m!6397428 () Bool)

(assert (=> bm!384480 m!6397428))

(assert (=> b!5369164 d!1719908))

(declare-fun bs!1243653 () Bool)

(declare-fun d!1719910 () Bool)

(assert (= bs!1243653 (and d!1719910 b!5369181)))

(declare-fun lambda!276973 () Int)

(assert (=> bs!1243653 (= lambda!276973 lambda!276917)))

(declare-fun b!5369942 () Bool)

(declare-fun e!3332139 () Regex!15081)

(assert (=> b!5369942 (= e!3332139 EmptyExpr!15081)))

(declare-fun b!5369943 () Bool)

(declare-fun e!3332134 () Bool)

(declare-fun lt!2186754 () Regex!15081)

(declare-fun head!11519 (List!61542) Regex!15081)

(assert (=> b!5369943 (= e!3332134 (= lt!2186754 (head!11519 (t!374765 (exprs!4965 (h!67867 zl!343))))))))

(declare-fun b!5369944 () Bool)

(declare-fun isConcat!458 (Regex!15081) Bool)

(assert (=> b!5369944 (= e!3332134 (isConcat!458 lt!2186754))))

(declare-fun b!5369945 () Bool)

(declare-fun e!3332136 () Bool)

(declare-fun isEmptyExpr!935 (Regex!15081) Bool)

(assert (=> b!5369945 (= e!3332136 (isEmptyExpr!935 lt!2186754))))

(declare-fun e!3332135 () Bool)

(assert (=> d!1719910 e!3332135))

(declare-fun res!2278955 () Bool)

(assert (=> d!1719910 (=> (not res!2278955) (not e!3332135))))

(assert (=> d!1719910 (= res!2278955 (validRegex!6817 lt!2186754))))

(declare-fun e!3332138 () Regex!15081)

(assert (=> d!1719910 (= lt!2186754 e!3332138)))

(declare-fun c!935657 () Bool)

(declare-fun e!3332137 () Bool)

(assert (=> d!1719910 (= c!935657 e!3332137)))

(declare-fun res!2278954 () Bool)

(assert (=> d!1719910 (=> (not res!2278954) (not e!3332137))))

(assert (=> d!1719910 (= res!2278954 ((_ is Cons!61418) (t!374765 (exprs!4965 (h!67867 zl!343)))))))

(assert (=> d!1719910 (forall!14489 (t!374765 (exprs!4965 (h!67867 zl!343))) lambda!276973)))

(assert (=> d!1719910 (= (generalisedConcat!750 (t!374765 (exprs!4965 (h!67867 zl!343)))) lt!2186754)))

(declare-fun b!5369946 () Bool)

(assert (=> b!5369946 (= e!3332137 (isEmpty!33399 (t!374765 (t!374765 (exprs!4965 (h!67867 zl!343))))))))

(declare-fun b!5369947 () Bool)

(assert (=> b!5369947 (= e!3332135 e!3332136)))

(declare-fun c!935658 () Bool)

(assert (=> b!5369947 (= c!935658 (isEmpty!33399 (t!374765 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun b!5369948 () Bool)

(assert (=> b!5369948 (= e!3332139 (Concat!23926 (h!67866 (t!374765 (exprs!4965 (h!67867 zl!343)))) (generalisedConcat!750 (t!374765 (t!374765 (exprs!4965 (h!67867 zl!343)))))))))

(declare-fun b!5369949 () Bool)

(assert (=> b!5369949 (= e!3332138 (h!67866 (t!374765 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun b!5369950 () Bool)

(assert (=> b!5369950 (= e!3332136 e!3332134)))

(declare-fun c!935659 () Bool)

(declare-fun tail!10616 (List!61542) List!61542)

(assert (=> b!5369950 (= c!935659 (isEmpty!33399 (tail!10616 (t!374765 (exprs!4965 (h!67867 zl!343))))))))

(declare-fun b!5369951 () Bool)

(assert (=> b!5369951 (= e!3332138 e!3332139)))

(declare-fun c!935660 () Bool)

(assert (=> b!5369951 (= c!935660 ((_ is Cons!61418) (t!374765 (exprs!4965 (h!67867 zl!343)))))))

(assert (= (and d!1719910 res!2278954) b!5369946))

(assert (= (and d!1719910 c!935657) b!5369949))

(assert (= (and d!1719910 (not c!935657)) b!5369951))

(assert (= (and b!5369951 c!935660) b!5369948))

(assert (= (and b!5369951 (not c!935660)) b!5369942))

(assert (= (and d!1719910 res!2278955) b!5369947))

(assert (= (and b!5369947 c!935658) b!5369945))

(assert (= (and b!5369947 (not c!935658)) b!5369950))

(assert (= (and b!5369950 c!935659) b!5369943))

(assert (= (and b!5369950 (not c!935659)) b!5369944))

(declare-fun m!6397430 () Bool)

(assert (=> b!5369943 m!6397430))

(declare-fun m!6397432 () Bool)

(assert (=> b!5369945 m!6397432))

(declare-fun m!6397434 () Bool)

(assert (=> b!5369946 m!6397434))

(declare-fun m!6397436 () Bool)

(assert (=> b!5369944 m!6397436))

(declare-fun m!6397438 () Bool)

(assert (=> d!1719910 m!6397438))

(declare-fun m!6397440 () Bool)

(assert (=> d!1719910 m!6397440))

(declare-fun m!6397442 () Bool)

(assert (=> b!5369950 m!6397442))

(assert (=> b!5369950 m!6397442))

(declare-fun m!6397444 () Bool)

(assert (=> b!5369950 m!6397444))

(declare-fun m!6397446 () Bool)

(assert (=> b!5369948 m!6397446))

(assert (=> b!5369947 m!6396764))

(assert (=> b!5369164 d!1719910))

(declare-fun d!1719912 () Bool)

(declare-fun c!935661 () Bool)

(assert (=> d!1719912 (= c!935661 (isEmpty!33400 s!2326))))

(declare-fun e!3332140 () Bool)

(assert (=> d!1719912 (= (matchZipper!1325 lt!2186615 s!2326) e!3332140)))

(declare-fun b!5369952 () Bool)

(assert (=> b!5369952 (= e!3332140 (nullableZipper!1399 lt!2186615))))

(declare-fun b!5369953 () Bool)

(assert (=> b!5369953 (= e!3332140 (matchZipper!1325 (derivationStepZipper!1320 lt!2186615 (head!11518 s!2326)) (tail!10615 s!2326)))))

(assert (= (and d!1719912 c!935661) b!5369952))

(assert (= (and d!1719912 (not c!935661)) b!5369953))

(declare-fun m!6397448 () Bool)

(assert (=> d!1719912 m!6397448))

(declare-fun m!6397450 () Bool)

(assert (=> b!5369952 m!6397450))

(declare-fun m!6397452 () Bool)

(assert (=> b!5369953 m!6397452))

(assert (=> b!5369953 m!6397452))

(declare-fun m!6397454 () Bool)

(assert (=> b!5369953 m!6397454))

(declare-fun m!6397456 () Bool)

(assert (=> b!5369953 m!6397456))

(assert (=> b!5369953 m!6397454))

(assert (=> b!5369953 m!6397456))

(declare-fun m!6397458 () Bool)

(assert (=> b!5369953 m!6397458))

(assert (=> b!5369180 d!1719912))

(declare-fun d!1719914 () Bool)

(declare-fun c!935662 () Bool)

(assert (=> d!1719914 (= c!935662 (isEmpty!33400 (t!374767 s!2326)))))

(declare-fun e!3332141 () Bool)

(assert (=> d!1719914 (= (matchZipper!1325 lt!2186640 (t!374767 s!2326)) e!3332141)))

(declare-fun b!5369954 () Bool)

(assert (=> b!5369954 (= e!3332141 (nullableZipper!1399 lt!2186640))))

(declare-fun b!5369955 () Bool)

(assert (=> b!5369955 (= e!3332141 (matchZipper!1325 (derivationStepZipper!1320 lt!2186640 (head!11518 (t!374767 s!2326))) (tail!10615 (t!374767 s!2326))))))

(assert (= (and d!1719914 c!935662) b!5369954))

(assert (= (and d!1719914 (not c!935662)) b!5369955))

(assert (=> d!1719914 m!6397258))

(declare-fun m!6397460 () Bool)

(assert (=> b!5369954 m!6397460))

(assert (=> b!5369955 m!6397264))

(assert (=> b!5369955 m!6397264))

(declare-fun m!6397462 () Bool)

(assert (=> b!5369955 m!6397462))

(assert (=> b!5369955 m!6397274))

(assert (=> b!5369955 m!6397462))

(assert (=> b!5369955 m!6397274))

(declare-fun m!6397464 () Bool)

(assert (=> b!5369955 m!6397464))

(assert (=> b!5369180 d!1719914))

(declare-fun d!1719916 () Bool)

(assert (=> d!1719916 (= (isEmpty!33398 (t!374766 zl!343)) ((_ is Nil!61419) (t!374766 zl!343)))))

(assert (=> b!5369160 d!1719916))

(declare-fun d!1719918 () Bool)

(declare-fun res!2278960 () Bool)

(declare-fun e!3332146 () Bool)

(assert (=> d!1719918 (=> res!2278960 e!3332146)))

(assert (=> d!1719918 (= res!2278960 ((_ is Nil!61418) (t!374765 (exprs!4965 (h!67867 zl!343)))))))

(assert (=> d!1719918 (= (forall!14489 (t!374765 (exprs!4965 (h!67867 zl!343))) lambda!276917) e!3332146)))

(declare-fun b!5369960 () Bool)

(declare-fun e!3332147 () Bool)

(assert (=> b!5369960 (= e!3332146 e!3332147)))

(declare-fun res!2278961 () Bool)

(assert (=> b!5369960 (=> (not res!2278961) (not e!3332147))))

(declare-fun dynLambda!24261 (Int Regex!15081) Bool)

(assert (=> b!5369960 (= res!2278961 (dynLambda!24261 lambda!276917 (h!67866 (t!374765 (exprs!4965 (h!67867 zl!343))))))))

(declare-fun b!5369961 () Bool)

(assert (=> b!5369961 (= e!3332147 (forall!14489 (t!374765 (t!374765 (exprs!4965 (h!67867 zl!343)))) lambda!276917))))

(assert (= (and d!1719918 (not res!2278960)) b!5369960))

(assert (= (and b!5369960 res!2278961) b!5369961))

(declare-fun b_lambda!205871 () Bool)

(assert (=> (not b_lambda!205871) (not b!5369960)))

(declare-fun m!6397466 () Bool)

(assert (=> b!5369960 m!6397466))

(declare-fun m!6397468 () Bool)

(assert (=> b!5369961 m!6397468))

(assert (=> b!5369181 d!1719918))

(declare-fun b!5369962 () Bool)

(declare-fun e!3332154 () Bool)

(declare-fun e!3332148 () Bool)

(assert (=> b!5369962 (= e!3332154 e!3332148)))

(declare-fun c!935663 () Bool)

(assert (=> b!5369962 (= c!935663 ((_ is EmptyLang!15081) lt!2186633))))

(declare-fun b!5369963 () Bool)

(declare-fun e!3332153 () Bool)

(assert (=> b!5369963 (= e!3332153 (matchR!7266 (derivativeStep!4221 lt!2186633 (head!11518 s!2326)) (tail!10615 s!2326)))))

(declare-fun b!5369964 () Bool)

(declare-fun res!2278966 () Bool)

(declare-fun e!3332152 () Bool)

(assert (=> b!5369964 (=> (not res!2278966) (not e!3332152))))

(assert (=> b!5369964 (= res!2278966 (isEmpty!33400 (tail!10615 s!2326)))))

(declare-fun b!5369965 () Bool)

(declare-fun res!2278964 () Bool)

(assert (=> b!5369965 (=> (not res!2278964) (not e!3332152))))

(declare-fun call!384490 () Bool)

(assert (=> b!5369965 (= res!2278964 (not call!384490))))

(declare-fun b!5369966 () Bool)

(declare-fun lt!2186755 () Bool)

(assert (=> b!5369966 (= e!3332154 (= lt!2186755 call!384490))))

(declare-fun b!5369967 () Bool)

(assert (=> b!5369967 (= e!3332152 (= (head!11518 s!2326) (c!935425 lt!2186633)))))

(declare-fun b!5369968 () Bool)

(assert (=> b!5369968 (= e!3332148 (not lt!2186755))))

(declare-fun b!5369969 () Bool)

(assert (=> b!5369969 (= e!3332153 (nullable!5250 lt!2186633))))

(declare-fun b!5369970 () Bool)

(declare-fun res!2278965 () Bool)

(declare-fun e!3332151 () Bool)

(assert (=> b!5369970 (=> res!2278965 e!3332151)))

(assert (=> b!5369970 (= res!2278965 e!3332152)))

(declare-fun res!2278963 () Bool)

(assert (=> b!5369970 (=> (not res!2278963) (not e!3332152))))

(assert (=> b!5369970 (= res!2278963 lt!2186755)))

(declare-fun bm!384485 () Bool)

(assert (=> bm!384485 (= call!384490 (isEmpty!33400 s!2326))))

(declare-fun d!1719920 () Bool)

(assert (=> d!1719920 e!3332154))

(declare-fun c!935665 () Bool)

(assert (=> d!1719920 (= c!935665 ((_ is EmptyExpr!15081) lt!2186633))))

(assert (=> d!1719920 (= lt!2186755 e!3332153)))

(declare-fun c!935664 () Bool)

(assert (=> d!1719920 (= c!935664 (isEmpty!33400 s!2326))))

(assert (=> d!1719920 (validRegex!6817 lt!2186633)))

(assert (=> d!1719920 (= (matchR!7266 lt!2186633 s!2326) lt!2186755)))

(declare-fun b!5369971 () Bool)

(declare-fun e!3332150 () Bool)

(assert (=> b!5369971 (= e!3332151 e!3332150)))

(declare-fun res!2278967 () Bool)

(assert (=> b!5369971 (=> (not res!2278967) (not e!3332150))))

(assert (=> b!5369971 (= res!2278967 (not lt!2186755))))

(declare-fun b!5369972 () Bool)

(declare-fun e!3332149 () Bool)

(assert (=> b!5369972 (= e!3332150 e!3332149)))

(declare-fun res!2278962 () Bool)

(assert (=> b!5369972 (=> res!2278962 e!3332149)))

(assert (=> b!5369972 (= res!2278962 call!384490)))

(declare-fun b!5369973 () Bool)

(declare-fun res!2278969 () Bool)

(assert (=> b!5369973 (=> res!2278969 e!3332151)))

(assert (=> b!5369973 (= res!2278969 (not ((_ is ElementMatch!15081) lt!2186633)))))

(assert (=> b!5369973 (= e!3332148 e!3332151)))

(declare-fun b!5369974 () Bool)

(assert (=> b!5369974 (= e!3332149 (not (= (head!11518 s!2326) (c!935425 lt!2186633))))))

(declare-fun b!5369975 () Bool)

(declare-fun res!2278968 () Bool)

(assert (=> b!5369975 (=> res!2278968 e!3332149)))

(assert (=> b!5369975 (= res!2278968 (not (isEmpty!33400 (tail!10615 s!2326))))))

(assert (= (and d!1719920 c!935664) b!5369969))

(assert (= (and d!1719920 (not c!935664)) b!5369963))

(assert (= (and d!1719920 c!935665) b!5369966))

(assert (= (and d!1719920 (not c!935665)) b!5369962))

(assert (= (and b!5369962 c!935663) b!5369968))

(assert (= (and b!5369962 (not c!935663)) b!5369973))

(assert (= (and b!5369973 (not res!2278969)) b!5369970))

(assert (= (and b!5369970 res!2278963) b!5369965))

(assert (= (and b!5369965 res!2278964) b!5369964))

(assert (= (and b!5369964 res!2278966) b!5369967))

(assert (= (and b!5369970 (not res!2278965)) b!5369971))

(assert (= (and b!5369971 res!2278967) b!5369972))

(assert (= (and b!5369972 (not res!2278962)) b!5369975))

(assert (= (and b!5369975 (not res!2278968)) b!5369974))

(assert (= (or b!5369966 b!5369965 b!5369972) bm!384485))

(assert (=> bm!384485 m!6397448))

(assert (=> d!1719920 m!6397448))

(declare-fun m!6397470 () Bool)

(assert (=> d!1719920 m!6397470))

(assert (=> b!5369967 m!6397452))

(assert (=> b!5369963 m!6397452))

(assert (=> b!5369963 m!6397452))

(declare-fun m!6397472 () Bool)

(assert (=> b!5369963 m!6397472))

(assert (=> b!5369963 m!6397456))

(assert (=> b!5369963 m!6397472))

(assert (=> b!5369963 m!6397456))

(declare-fun m!6397474 () Bool)

(assert (=> b!5369963 m!6397474))

(assert (=> b!5369975 m!6397456))

(assert (=> b!5369975 m!6397456))

(declare-fun m!6397476 () Bool)

(assert (=> b!5369975 m!6397476))

(assert (=> b!5369974 m!6397452))

(assert (=> b!5369964 m!6397456))

(assert (=> b!5369964 m!6397456))

(assert (=> b!5369964 m!6397476))

(declare-fun m!6397478 () Bool)

(assert (=> b!5369969 m!6397478))

(assert (=> b!5369181 d!1719920))

(declare-fun d!1719922 () Bool)

(declare-fun c!935666 () Bool)

(assert (=> d!1719922 (= c!935666 (isEmpty!33400 s!2326))))

(declare-fun e!3332155 () Bool)

(assert (=> d!1719922 (= (matchZipper!1325 lt!2186645 s!2326) e!3332155)))

(declare-fun b!5369976 () Bool)

(assert (=> b!5369976 (= e!3332155 (nullableZipper!1399 lt!2186645))))

(declare-fun b!5369977 () Bool)

(assert (=> b!5369977 (= e!3332155 (matchZipper!1325 (derivationStepZipper!1320 lt!2186645 (head!11518 s!2326)) (tail!10615 s!2326)))))

(assert (= (and d!1719922 c!935666) b!5369976))

(assert (= (and d!1719922 (not c!935666)) b!5369977))

(assert (=> d!1719922 m!6397448))

(declare-fun m!6397480 () Bool)

(assert (=> b!5369976 m!6397480))

(assert (=> b!5369977 m!6397452))

(assert (=> b!5369977 m!6397452))

(declare-fun m!6397482 () Bool)

(assert (=> b!5369977 m!6397482))

(assert (=> b!5369977 m!6397456))

(assert (=> b!5369977 m!6397482))

(assert (=> b!5369977 m!6397456))

(declare-fun m!6397484 () Bool)

(assert (=> b!5369977 m!6397484))

(assert (=> b!5369181 d!1719922))

(declare-fun d!1719924 () Bool)

(assert (=> d!1719924 (= (matchR!7266 lt!2186633 s!2326) (matchZipper!1325 lt!2186645 s!2326))))

(declare-fun lt!2186758 () Unit!153842)

(declare-fun choose!40326 ((InoxSet Context!8930) List!61543 Regex!15081 List!61544) Unit!153842)

(assert (=> d!1719924 (= lt!2186758 (choose!40326 lt!2186645 lt!2186618 lt!2186633 s!2326))))

(assert (=> d!1719924 (validRegex!6817 lt!2186633)))

(assert (=> d!1719924 (= (theoremZipperRegexEquiv!439 lt!2186645 lt!2186618 lt!2186633 s!2326) lt!2186758)))

(declare-fun bs!1243654 () Bool)

(assert (= bs!1243654 d!1719924))

(assert (=> bs!1243654 m!6396818))

(assert (=> bs!1243654 m!6396820))

(declare-fun m!6397486 () Bool)

(assert (=> bs!1243654 m!6397486))

(assert (=> bs!1243654 m!6397470))

(assert (=> b!5369181 d!1719924))

(declare-fun bs!1243655 () Bool)

(declare-fun d!1719926 () Bool)

(assert (= bs!1243655 (and d!1719926 b!5369181)))

(declare-fun lambda!276976 () Int)

(assert (=> bs!1243655 (= lambda!276976 lambda!276917)))

(declare-fun bs!1243656 () Bool)

(assert (= bs!1243656 (and d!1719926 d!1719910)))

(assert (=> bs!1243656 (= lambda!276976 lambda!276973)))

(assert (=> d!1719926 (= (inv!80949 (h!67867 zl!343)) (forall!14489 (exprs!4965 (h!67867 zl!343)) lambda!276976))))

(declare-fun bs!1243657 () Bool)

(assert (= bs!1243657 d!1719926))

(declare-fun m!6397488 () Bool)

(assert (=> bs!1243657 m!6397488))

(assert (=> b!5369161 d!1719926))

(declare-fun b!5369996 () Bool)

(declare-fun res!2278980 () Bool)

(declare-fun e!3332170 () Bool)

(assert (=> b!5369996 (=> (not res!2278980) (not e!3332170))))

(declare-fun lt!2186765 () Option!15192)

(assert (=> b!5369996 (= res!2278980 (matchR!7266 (regTwo!30674 r!7292) (_2!35583 (get!21130 lt!2186765))))))

(declare-fun b!5369997 () Bool)

(declare-fun e!3332168 () Option!15192)

(assert (=> b!5369997 (= e!3332168 None!15191)))

(declare-fun b!5369999 () Bool)

(declare-fun e!3332166 () Option!15192)

(assert (=> b!5369999 (= e!3332166 (Some!15191 (tuple2!64561 Nil!61420 s!2326)))))

(declare-fun b!5370000 () Bool)

(declare-fun res!2278982 () Bool)

(assert (=> b!5370000 (=> (not res!2278982) (not e!3332170))))

(assert (=> b!5370000 (= res!2278982 (matchR!7266 (regOne!30674 r!7292) (_1!35583 (get!21130 lt!2186765))))))

(declare-fun b!5370001 () Bool)

(declare-fun lt!2186767 () Unit!153842)

(declare-fun lt!2186766 () Unit!153842)

(assert (=> b!5370001 (= lt!2186767 lt!2186766)))

(assert (=> b!5370001 (= (++!13384 (++!13384 Nil!61420 (Cons!61420 (h!67868 s!2326) Nil!61420)) (t!374767 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1795 (List!61544 C!30432 List!61544 List!61544) Unit!153842)

(assert (=> b!5370001 (= lt!2186766 (lemmaMoveElementToOtherListKeepsConcatEq!1795 Nil!61420 (h!67868 s!2326) (t!374767 s!2326) s!2326))))

(assert (=> b!5370001 (= e!3332168 (findConcatSeparation!1606 (regOne!30674 r!7292) (regTwo!30674 r!7292) (++!13384 Nil!61420 (Cons!61420 (h!67868 s!2326) Nil!61420)) (t!374767 s!2326) s!2326))))

(declare-fun b!5370002 () Bool)

(assert (=> b!5370002 (= e!3332166 e!3332168)))

(declare-fun c!935672 () Bool)

(assert (=> b!5370002 (= c!935672 ((_ is Nil!61420) s!2326))))

(declare-fun b!5369998 () Bool)

(declare-fun e!3332169 () Bool)

(assert (=> b!5369998 (= e!3332169 (matchR!7266 (regTwo!30674 r!7292) s!2326))))

(declare-fun d!1719928 () Bool)

(declare-fun e!3332167 () Bool)

(assert (=> d!1719928 e!3332167))

(declare-fun res!2278983 () Bool)

(assert (=> d!1719928 (=> res!2278983 e!3332167)))

(assert (=> d!1719928 (= res!2278983 e!3332170)))

(declare-fun res!2278984 () Bool)

(assert (=> d!1719928 (=> (not res!2278984) (not e!3332170))))

(assert (=> d!1719928 (= res!2278984 (isDefined!11895 lt!2186765))))

(assert (=> d!1719928 (= lt!2186765 e!3332166)))

(declare-fun c!935671 () Bool)

(assert (=> d!1719928 (= c!935671 e!3332169)))

(declare-fun res!2278981 () Bool)

(assert (=> d!1719928 (=> (not res!2278981) (not e!3332169))))

(assert (=> d!1719928 (= res!2278981 (matchR!7266 (regOne!30674 r!7292) Nil!61420))))

(assert (=> d!1719928 (validRegex!6817 (regOne!30674 r!7292))))

(assert (=> d!1719928 (= (findConcatSeparation!1606 (regOne!30674 r!7292) (regTwo!30674 r!7292) Nil!61420 s!2326 s!2326) lt!2186765)))

(declare-fun b!5370003 () Bool)

(assert (=> b!5370003 (= e!3332170 (= (++!13384 (_1!35583 (get!21130 lt!2186765)) (_2!35583 (get!21130 lt!2186765))) s!2326))))

(declare-fun b!5370004 () Bool)

(assert (=> b!5370004 (= e!3332167 (not (isDefined!11895 lt!2186765)))))

(assert (= (and d!1719928 res!2278981) b!5369998))

(assert (= (and d!1719928 c!935671) b!5369999))

(assert (= (and d!1719928 (not c!935671)) b!5370002))

(assert (= (and b!5370002 c!935672) b!5369997))

(assert (= (and b!5370002 (not c!935672)) b!5370001))

(assert (= (and d!1719928 res!2278984) b!5370000))

(assert (= (and b!5370000 res!2278982) b!5369996))

(assert (= (and b!5369996 res!2278980) b!5370003))

(assert (= (and d!1719928 (not res!2278983)) b!5370004))

(declare-fun m!6397490 () Bool)

(assert (=> b!5370000 m!6397490))

(declare-fun m!6397492 () Bool)

(assert (=> b!5370000 m!6397492))

(assert (=> b!5370003 m!6397490))

(declare-fun m!6397494 () Bool)

(assert (=> b!5370003 m!6397494))

(declare-fun m!6397496 () Bool)

(assert (=> b!5370004 m!6397496))

(assert (=> b!5369996 m!6397490))

(declare-fun m!6397498 () Bool)

(assert (=> b!5369996 m!6397498))

(declare-fun m!6397500 () Bool)

(assert (=> b!5369998 m!6397500))

(declare-fun m!6397502 () Bool)

(assert (=> b!5370001 m!6397502))

(assert (=> b!5370001 m!6397502))

(declare-fun m!6397504 () Bool)

(assert (=> b!5370001 m!6397504))

(declare-fun m!6397506 () Bool)

(assert (=> b!5370001 m!6397506))

(assert (=> b!5370001 m!6397502))

(declare-fun m!6397508 () Bool)

(assert (=> b!5370001 m!6397508))

(assert (=> d!1719928 m!6397496))

(declare-fun m!6397510 () Bool)

(assert (=> d!1719928 m!6397510))

(declare-fun m!6397512 () Bool)

(assert (=> d!1719928 m!6397512))

(assert (=> b!5369177 d!1719928))

(declare-fun d!1719930 () Bool)

(declare-fun choose!40327 (Int) Bool)

(assert (=> d!1719930 (= (Exists!2262 lambda!276913) (choose!40327 lambda!276913))))

(declare-fun bs!1243658 () Bool)

(assert (= bs!1243658 d!1719930))

(declare-fun m!6397514 () Bool)

(assert (=> bs!1243658 m!6397514))

(assert (=> b!5369177 d!1719930))

(declare-fun d!1719932 () Bool)

(assert (=> d!1719932 (= (Exists!2262 lambda!276912) (choose!40327 lambda!276912))))

(declare-fun bs!1243659 () Bool)

(assert (= bs!1243659 d!1719932))

(declare-fun m!6397516 () Bool)

(assert (=> bs!1243659 m!6397516))

(assert (=> b!5369177 d!1719932))

(declare-fun bs!1243660 () Bool)

(declare-fun d!1719934 () Bool)

(assert (= bs!1243660 (and d!1719934 b!5369177)))

(declare-fun lambda!276979 () Int)

(assert (=> bs!1243660 (= lambda!276979 lambda!276912)))

(assert (=> bs!1243660 (not (= lambda!276979 lambda!276913))))

(declare-fun bs!1243661 () Bool)

(assert (= bs!1243661 (and d!1719934 b!5369178)))

(assert (=> bs!1243661 (= (= (regOne!30674 r!7292) lt!2186607) (= lambda!276979 lambda!276915))))

(assert (=> bs!1243661 (not (= lambda!276979 lambda!276916))))

(assert (=> d!1719934 true))

(assert (=> d!1719934 true))

(assert (=> d!1719934 true))

(assert (=> d!1719934 (= (isDefined!11895 (findConcatSeparation!1606 (regOne!30674 r!7292) (regTwo!30674 r!7292) Nil!61420 s!2326 s!2326)) (Exists!2262 lambda!276979))))

(declare-fun lt!2186770 () Unit!153842)

(declare-fun choose!40328 (Regex!15081 Regex!15081 List!61544) Unit!153842)

(assert (=> d!1719934 (= lt!2186770 (choose!40328 (regOne!30674 r!7292) (regTwo!30674 r!7292) s!2326))))

(assert (=> d!1719934 (validRegex!6817 (regOne!30674 r!7292))))

(assert (=> d!1719934 (= (lemmaFindConcatSeparationEquivalentToExists!1370 (regOne!30674 r!7292) (regTwo!30674 r!7292) s!2326) lt!2186770)))

(declare-fun bs!1243662 () Bool)

(assert (= bs!1243662 d!1719934))

(declare-fun m!6397518 () Bool)

(assert (=> bs!1243662 m!6397518))

(assert (=> bs!1243662 m!6397512))

(assert (=> bs!1243662 m!6396756))

(assert (=> bs!1243662 m!6396758))

(declare-fun m!6397520 () Bool)

(assert (=> bs!1243662 m!6397520))

(assert (=> bs!1243662 m!6396756))

(assert (=> b!5369177 d!1719934))

(declare-fun bs!1243663 () Bool)

(declare-fun d!1719936 () Bool)

(assert (= bs!1243663 (and d!1719936 b!5369178)))

(declare-fun lambda!276984 () Int)

(assert (=> bs!1243663 (= (= (regOne!30674 r!7292) lt!2186607) (= lambda!276984 lambda!276915))))

(declare-fun bs!1243664 () Bool)

(assert (= bs!1243664 (and d!1719936 b!5369177)))

(assert (=> bs!1243664 (= lambda!276984 lambda!276912)))

(assert (=> bs!1243664 (not (= lambda!276984 lambda!276913))))

(declare-fun bs!1243665 () Bool)

(assert (= bs!1243665 (and d!1719936 d!1719934)))

(assert (=> bs!1243665 (= lambda!276984 lambda!276979)))

(assert (=> bs!1243663 (not (= lambda!276984 lambda!276916))))

(assert (=> d!1719936 true))

(assert (=> d!1719936 true))

(assert (=> d!1719936 true))

(declare-fun lambda!276985 () Int)

(assert (=> bs!1243663 (not (= lambda!276985 lambda!276915))))

(assert (=> bs!1243664 (not (= lambda!276985 lambda!276912))))

(assert (=> bs!1243664 (= lambda!276985 lambda!276913)))

(declare-fun bs!1243666 () Bool)

(assert (= bs!1243666 d!1719936))

(assert (=> bs!1243666 (not (= lambda!276985 lambda!276984))))

(assert (=> bs!1243665 (not (= lambda!276985 lambda!276979))))

(assert (=> bs!1243663 (= (= (regOne!30674 r!7292) lt!2186607) (= lambda!276985 lambda!276916))))

(assert (=> d!1719936 true))

(assert (=> d!1719936 true))

(assert (=> d!1719936 true))

(assert (=> d!1719936 (= (Exists!2262 lambda!276984) (Exists!2262 lambda!276985))))

(declare-fun lt!2186773 () Unit!153842)

(declare-fun choose!40329 (Regex!15081 Regex!15081 List!61544) Unit!153842)

(assert (=> d!1719936 (= lt!2186773 (choose!40329 (regOne!30674 r!7292) (regTwo!30674 r!7292) s!2326))))

(assert (=> d!1719936 (validRegex!6817 (regOne!30674 r!7292))))

(assert (=> d!1719936 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!916 (regOne!30674 r!7292) (regTwo!30674 r!7292) s!2326) lt!2186773)))

(declare-fun m!6397522 () Bool)

(assert (=> bs!1243666 m!6397522))

(declare-fun m!6397524 () Bool)

(assert (=> bs!1243666 m!6397524))

(declare-fun m!6397526 () Bool)

(assert (=> bs!1243666 m!6397526))

(assert (=> bs!1243666 m!6397512))

(assert (=> b!5369177 d!1719936))

(declare-fun d!1719938 () Bool)

(declare-fun isEmpty!33402 (Option!15192) Bool)

(assert (=> d!1719938 (= (isDefined!11895 (findConcatSeparation!1606 (regOne!30674 r!7292) (regTwo!30674 r!7292) Nil!61420 s!2326 s!2326)) (not (isEmpty!33402 (findConcatSeparation!1606 (regOne!30674 r!7292) (regTwo!30674 r!7292) Nil!61420 s!2326 s!2326))))))

(declare-fun bs!1243667 () Bool)

(assert (= bs!1243667 d!1719938))

(assert (=> bs!1243667 m!6396756))

(declare-fun m!6397528 () Bool)

(assert (=> bs!1243667 m!6397528))

(assert (=> b!5369177 d!1719938))

(declare-fun bs!1243668 () Bool)

(declare-fun d!1719940 () Bool)

(assert (= bs!1243668 (and d!1719940 b!5369178)))

(declare-fun lambda!276986 () Int)

(assert (=> bs!1243668 (= lambda!276986 lambda!276915)))

(declare-fun bs!1243669 () Bool)

(assert (= bs!1243669 (and d!1719940 b!5369177)))

(assert (=> bs!1243669 (= (= lt!2186607 (regOne!30674 r!7292)) (= lambda!276986 lambda!276912))))

(assert (=> bs!1243669 (not (= lambda!276986 lambda!276913))))

(declare-fun bs!1243670 () Bool)

(assert (= bs!1243670 (and d!1719940 d!1719936)))

(assert (=> bs!1243670 (not (= lambda!276986 lambda!276985))))

(assert (=> bs!1243670 (= (= lt!2186607 (regOne!30674 r!7292)) (= lambda!276986 lambda!276984))))

(declare-fun bs!1243671 () Bool)

(assert (= bs!1243671 (and d!1719940 d!1719934)))

(assert (=> bs!1243671 (= (= lt!2186607 (regOne!30674 r!7292)) (= lambda!276986 lambda!276979))))

(assert (=> bs!1243668 (not (= lambda!276986 lambda!276916))))

(assert (=> d!1719940 true))

(assert (=> d!1719940 true))

(assert (=> d!1719940 true))

(declare-fun lambda!276987 () Int)

(assert (=> bs!1243668 (not (= lambda!276987 lambda!276915))))

(assert (=> bs!1243669 (not (= lambda!276987 lambda!276912))))

(assert (=> bs!1243669 (= (= lt!2186607 (regOne!30674 r!7292)) (= lambda!276987 lambda!276913))))

(declare-fun bs!1243672 () Bool)

(assert (= bs!1243672 d!1719940))

(assert (=> bs!1243672 (not (= lambda!276987 lambda!276986))))

(assert (=> bs!1243670 (= (= lt!2186607 (regOne!30674 r!7292)) (= lambda!276987 lambda!276985))))

(assert (=> bs!1243670 (not (= lambda!276987 lambda!276984))))

(assert (=> bs!1243671 (not (= lambda!276987 lambda!276979))))

(assert (=> bs!1243668 (= lambda!276987 lambda!276916)))

(assert (=> d!1719940 true))

(assert (=> d!1719940 true))

(assert (=> d!1719940 true))

(assert (=> d!1719940 (= (Exists!2262 lambda!276986) (Exists!2262 lambda!276987))))

(declare-fun lt!2186774 () Unit!153842)

(assert (=> d!1719940 (= lt!2186774 (choose!40329 lt!2186607 (regTwo!30674 r!7292) s!2326))))

(assert (=> d!1719940 (validRegex!6817 lt!2186607)))

(assert (=> d!1719940 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!916 lt!2186607 (regTwo!30674 r!7292) s!2326) lt!2186774)))

(declare-fun m!6397530 () Bool)

(assert (=> bs!1243672 m!6397530))

(declare-fun m!6397532 () Bool)

(assert (=> bs!1243672 m!6397532))

(declare-fun m!6397534 () Bool)

(assert (=> bs!1243672 m!6397534))

(declare-fun m!6397536 () Bool)

(assert (=> bs!1243672 m!6397536))

(assert (=> b!5369178 d!1719940))

(declare-fun d!1719942 () Bool)

(assert (=> d!1719942 (= (Exists!2262 lambda!276916) (choose!40327 lambda!276916))))

(declare-fun bs!1243673 () Bool)

(assert (= bs!1243673 d!1719942))

(declare-fun m!6397538 () Bool)

(assert (=> bs!1243673 m!6397538))

(assert (=> b!5369178 d!1719942))

(declare-fun b!5370017 () Bool)

(declare-fun res!2278997 () Bool)

(declare-fun e!3332181 () Bool)

(assert (=> b!5370017 (=> (not res!2278997) (not e!3332181))))

(declare-fun lt!2186775 () Option!15192)

(assert (=> b!5370017 (= res!2278997 (matchR!7266 (regTwo!30674 r!7292) (_2!35583 (get!21130 lt!2186775))))))

(declare-fun b!5370018 () Bool)

(declare-fun e!3332179 () Option!15192)

(assert (=> b!5370018 (= e!3332179 None!15191)))

(declare-fun b!5370020 () Bool)

(declare-fun e!3332177 () Option!15192)

(assert (=> b!5370020 (= e!3332177 (Some!15191 (tuple2!64561 Nil!61420 s!2326)))))

(declare-fun b!5370021 () Bool)

(declare-fun res!2278999 () Bool)

(assert (=> b!5370021 (=> (not res!2278999) (not e!3332181))))

(assert (=> b!5370021 (= res!2278999 (matchR!7266 lt!2186607 (_1!35583 (get!21130 lt!2186775))))))

(declare-fun b!5370022 () Bool)

(declare-fun lt!2186777 () Unit!153842)

(declare-fun lt!2186776 () Unit!153842)

(assert (=> b!5370022 (= lt!2186777 lt!2186776)))

(assert (=> b!5370022 (= (++!13384 (++!13384 Nil!61420 (Cons!61420 (h!67868 s!2326) Nil!61420)) (t!374767 s!2326)) s!2326)))

(assert (=> b!5370022 (= lt!2186776 (lemmaMoveElementToOtherListKeepsConcatEq!1795 Nil!61420 (h!67868 s!2326) (t!374767 s!2326) s!2326))))

(assert (=> b!5370022 (= e!3332179 (findConcatSeparation!1606 lt!2186607 (regTwo!30674 r!7292) (++!13384 Nil!61420 (Cons!61420 (h!67868 s!2326) Nil!61420)) (t!374767 s!2326) s!2326))))

(declare-fun b!5370023 () Bool)

(assert (=> b!5370023 (= e!3332177 e!3332179)))

(declare-fun c!935674 () Bool)

(assert (=> b!5370023 (= c!935674 ((_ is Nil!61420) s!2326))))

(declare-fun b!5370019 () Bool)

(declare-fun e!3332180 () Bool)

(assert (=> b!5370019 (= e!3332180 (matchR!7266 (regTwo!30674 r!7292) s!2326))))

(declare-fun d!1719944 () Bool)

(declare-fun e!3332178 () Bool)

(assert (=> d!1719944 e!3332178))

(declare-fun res!2279000 () Bool)

(assert (=> d!1719944 (=> res!2279000 e!3332178)))

(assert (=> d!1719944 (= res!2279000 e!3332181)))

(declare-fun res!2279001 () Bool)

(assert (=> d!1719944 (=> (not res!2279001) (not e!3332181))))

(assert (=> d!1719944 (= res!2279001 (isDefined!11895 lt!2186775))))

(assert (=> d!1719944 (= lt!2186775 e!3332177)))

(declare-fun c!935673 () Bool)

(assert (=> d!1719944 (= c!935673 e!3332180)))

(declare-fun res!2278998 () Bool)

(assert (=> d!1719944 (=> (not res!2278998) (not e!3332180))))

(assert (=> d!1719944 (= res!2278998 (matchR!7266 lt!2186607 Nil!61420))))

(assert (=> d!1719944 (validRegex!6817 lt!2186607)))

(assert (=> d!1719944 (= (findConcatSeparation!1606 lt!2186607 (regTwo!30674 r!7292) Nil!61420 s!2326 s!2326) lt!2186775)))

(declare-fun b!5370024 () Bool)

(assert (=> b!5370024 (= e!3332181 (= (++!13384 (_1!35583 (get!21130 lt!2186775)) (_2!35583 (get!21130 lt!2186775))) s!2326))))

(declare-fun b!5370025 () Bool)

(assert (=> b!5370025 (= e!3332178 (not (isDefined!11895 lt!2186775)))))

(assert (= (and d!1719944 res!2278998) b!5370019))

(assert (= (and d!1719944 c!935673) b!5370020))

(assert (= (and d!1719944 (not c!935673)) b!5370023))

(assert (= (and b!5370023 c!935674) b!5370018))

(assert (= (and b!5370023 (not c!935674)) b!5370022))

(assert (= (and d!1719944 res!2279001) b!5370021))

(assert (= (and b!5370021 res!2278999) b!5370017))

(assert (= (and b!5370017 res!2278997) b!5370024))

(assert (= (and d!1719944 (not res!2279000)) b!5370025))

(declare-fun m!6397540 () Bool)

(assert (=> b!5370021 m!6397540))

(declare-fun m!6397542 () Bool)

(assert (=> b!5370021 m!6397542))

(assert (=> b!5370024 m!6397540))

(declare-fun m!6397544 () Bool)

(assert (=> b!5370024 m!6397544))

(declare-fun m!6397546 () Bool)

(assert (=> b!5370025 m!6397546))

(assert (=> b!5370017 m!6397540))

(declare-fun m!6397548 () Bool)

(assert (=> b!5370017 m!6397548))

(assert (=> b!5370019 m!6397500))

(assert (=> b!5370022 m!6397502))

(assert (=> b!5370022 m!6397502))

(assert (=> b!5370022 m!6397504))

(assert (=> b!5370022 m!6397506))

(assert (=> b!5370022 m!6397502))

(declare-fun m!6397550 () Bool)

(assert (=> b!5370022 m!6397550))

(assert (=> d!1719944 m!6397546))

(declare-fun m!6397552 () Bool)

(assert (=> d!1719944 m!6397552))

(assert (=> d!1719944 m!6397536))

(assert (=> b!5369178 d!1719944))

(declare-fun b!5370036 () Bool)

(declare-fun res!2279006 () Bool)

(declare-fun e!3332186 () Bool)

(assert (=> b!5370036 (=> (not res!2279006) (not e!3332186))))

(declare-fun lt!2186780 () List!61544)

(declare-fun size!39791 (List!61544) Int)

(assert (=> b!5370036 (= res!2279006 (= (size!39791 lt!2186780) (+ (size!39791 (_1!35583 lt!2186609)) (size!39791 (_2!35583 lt!2186609)))))))

(declare-fun b!5370037 () Bool)

(assert (=> b!5370037 (= e!3332186 (or (not (= (_2!35583 lt!2186609) Nil!61420)) (= lt!2186780 (_1!35583 lt!2186609))))))

(declare-fun b!5370035 () Bool)

(declare-fun e!3332187 () List!61544)

(assert (=> b!5370035 (= e!3332187 (Cons!61420 (h!67868 (_1!35583 lt!2186609)) (++!13384 (t!374767 (_1!35583 lt!2186609)) (_2!35583 lt!2186609))))))

(declare-fun b!5370034 () Bool)

(assert (=> b!5370034 (= e!3332187 (_2!35583 lt!2186609))))

(declare-fun d!1719946 () Bool)

(assert (=> d!1719946 e!3332186))

(declare-fun res!2279007 () Bool)

(assert (=> d!1719946 (=> (not res!2279007) (not e!3332186))))

(declare-fun content!10975 (List!61544) (InoxSet C!30432))

(assert (=> d!1719946 (= res!2279007 (= (content!10975 lt!2186780) ((_ map or) (content!10975 (_1!35583 lt!2186609)) (content!10975 (_2!35583 lt!2186609)))))))

(assert (=> d!1719946 (= lt!2186780 e!3332187)))

(declare-fun c!935677 () Bool)

(assert (=> d!1719946 (= c!935677 ((_ is Nil!61420) (_1!35583 lt!2186609)))))

(assert (=> d!1719946 (= (++!13384 (_1!35583 lt!2186609) (_2!35583 lt!2186609)) lt!2186780)))

(assert (= (and d!1719946 c!935677) b!5370034))

(assert (= (and d!1719946 (not c!935677)) b!5370035))

(assert (= (and d!1719946 res!2279007) b!5370036))

(assert (= (and b!5370036 res!2279006) b!5370037))

(declare-fun m!6397554 () Bool)

(assert (=> b!5370036 m!6397554))

(declare-fun m!6397556 () Bool)

(assert (=> b!5370036 m!6397556))

(declare-fun m!6397558 () Bool)

(assert (=> b!5370036 m!6397558))

(declare-fun m!6397560 () Bool)

(assert (=> b!5370035 m!6397560))

(declare-fun m!6397562 () Bool)

(assert (=> d!1719946 m!6397562))

(declare-fun m!6397564 () Bool)

(assert (=> d!1719946 m!6397564))

(declare-fun m!6397566 () Bool)

(assert (=> d!1719946 m!6397566))

(assert (=> b!5369178 d!1719946))

(declare-fun d!1719948 () Bool)

(assert (=> d!1719948 (= (isDefined!11895 lt!2186642) (not (isEmpty!33402 lt!2186642)))))

(declare-fun bs!1243674 () Bool)

(assert (= bs!1243674 d!1719948))

(declare-fun m!6397568 () Bool)

(assert (=> bs!1243674 m!6397568))

(assert (=> b!5369178 d!1719948))

(declare-fun d!1719950 () Bool)

(assert (=> d!1719950 (= (get!21130 lt!2186642) (v!51220 lt!2186642))))

(assert (=> b!5369178 d!1719950))

(declare-fun d!1719952 () Bool)

(assert (=> d!1719952 (= (Exists!2262 lambda!276915) (choose!40327 lambda!276915))))

(declare-fun bs!1243675 () Bool)

(assert (= bs!1243675 d!1719952))

(declare-fun m!6397570 () Bool)

(assert (=> bs!1243675 m!6397570))

(assert (=> b!5369178 d!1719952))

(declare-fun bs!1243676 () Bool)

(declare-fun d!1719954 () Bool)

(assert (= bs!1243676 (and d!1719954 b!5369178)))

(declare-fun lambda!276988 () Int)

(assert (=> bs!1243676 (= lambda!276988 lambda!276915)))

(declare-fun bs!1243677 () Bool)

(assert (= bs!1243677 (and d!1719954 b!5369177)))

(assert (=> bs!1243677 (= (= lt!2186607 (regOne!30674 r!7292)) (= lambda!276988 lambda!276912))))

(assert (=> bs!1243677 (not (= lambda!276988 lambda!276913))))

(declare-fun bs!1243678 () Bool)

(assert (= bs!1243678 (and d!1719954 d!1719940)))

(assert (=> bs!1243678 (= lambda!276988 lambda!276986)))

(declare-fun bs!1243679 () Bool)

(assert (= bs!1243679 (and d!1719954 d!1719936)))

(assert (=> bs!1243679 (not (= lambda!276988 lambda!276985))))

(assert (=> bs!1243679 (= (= lt!2186607 (regOne!30674 r!7292)) (= lambda!276988 lambda!276984))))

(assert (=> bs!1243678 (not (= lambda!276988 lambda!276987))))

(declare-fun bs!1243680 () Bool)

(assert (= bs!1243680 (and d!1719954 d!1719934)))

(assert (=> bs!1243680 (= (= lt!2186607 (regOne!30674 r!7292)) (= lambda!276988 lambda!276979))))

(assert (=> bs!1243676 (not (= lambda!276988 lambda!276916))))

(assert (=> d!1719954 true))

(assert (=> d!1719954 true))

(assert (=> d!1719954 true))

(assert (=> d!1719954 (= (isDefined!11895 (findConcatSeparation!1606 lt!2186607 (regTwo!30674 r!7292) Nil!61420 s!2326 s!2326)) (Exists!2262 lambda!276988))))

(declare-fun lt!2186781 () Unit!153842)

(assert (=> d!1719954 (= lt!2186781 (choose!40328 lt!2186607 (regTwo!30674 r!7292) s!2326))))

(assert (=> d!1719954 (validRegex!6817 lt!2186607)))

(assert (=> d!1719954 (= (lemmaFindConcatSeparationEquivalentToExists!1370 lt!2186607 (regTwo!30674 r!7292) s!2326) lt!2186781)))

(declare-fun bs!1243681 () Bool)

(assert (= bs!1243681 d!1719954))

(declare-fun m!6397572 () Bool)

(assert (=> bs!1243681 m!6397572))

(assert (=> bs!1243681 m!6397536))

(assert (=> bs!1243681 m!6396876))

(declare-fun m!6397574 () Bool)

(assert (=> bs!1243681 m!6397574))

(declare-fun m!6397576 () Bool)

(assert (=> bs!1243681 m!6397576))

(assert (=> bs!1243681 m!6396876))

(assert (=> b!5369178 d!1719954))

(declare-fun b!5370038 () Bool)

(declare-fun e!3332194 () Bool)

(declare-fun e!3332188 () Bool)

(assert (=> b!5370038 (= e!3332194 e!3332188)))

(declare-fun c!935678 () Bool)

(assert (=> b!5370038 (= c!935678 ((_ is EmptyLang!15081) lt!2186607))))

(declare-fun b!5370039 () Bool)

(declare-fun e!3332193 () Bool)

(assert (=> b!5370039 (= e!3332193 (matchR!7266 (derivativeStep!4221 lt!2186607 (head!11518 (_1!35583 lt!2186609))) (tail!10615 (_1!35583 lt!2186609))))))

(declare-fun b!5370040 () Bool)

(declare-fun res!2279012 () Bool)

(declare-fun e!3332192 () Bool)

(assert (=> b!5370040 (=> (not res!2279012) (not e!3332192))))

(assert (=> b!5370040 (= res!2279012 (isEmpty!33400 (tail!10615 (_1!35583 lt!2186609))))))

(declare-fun b!5370041 () Bool)

(declare-fun res!2279010 () Bool)

(assert (=> b!5370041 (=> (not res!2279010) (not e!3332192))))

(declare-fun call!384491 () Bool)

(assert (=> b!5370041 (= res!2279010 (not call!384491))))

(declare-fun b!5370042 () Bool)

(declare-fun lt!2186782 () Bool)

(assert (=> b!5370042 (= e!3332194 (= lt!2186782 call!384491))))

(declare-fun b!5370043 () Bool)

(assert (=> b!5370043 (= e!3332192 (= (head!11518 (_1!35583 lt!2186609)) (c!935425 lt!2186607)))))

(declare-fun b!5370044 () Bool)

(assert (=> b!5370044 (= e!3332188 (not lt!2186782))))

(declare-fun b!5370045 () Bool)

(assert (=> b!5370045 (= e!3332193 (nullable!5250 lt!2186607))))

(declare-fun b!5370046 () Bool)

(declare-fun res!2279011 () Bool)

(declare-fun e!3332191 () Bool)

(assert (=> b!5370046 (=> res!2279011 e!3332191)))

(assert (=> b!5370046 (= res!2279011 e!3332192)))

(declare-fun res!2279009 () Bool)

(assert (=> b!5370046 (=> (not res!2279009) (not e!3332192))))

(assert (=> b!5370046 (= res!2279009 lt!2186782)))

(declare-fun bm!384486 () Bool)

(assert (=> bm!384486 (= call!384491 (isEmpty!33400 (_1!35583 lt!2186609)))))

(declare-fun d!1719956 () Bool)

(assert (=> d!1719956 e!3332194))

(declare-fun c!935680 () Bool)

(assert (=> d!1719956 (= c!935680 ((_ is EmptyExpr!15081) lt!2186607))))

(assert (=> d!1719956 (= lt!2186782 e!3332193)))

(declare-fun c!935679 () Bool)

(assert (=> d!1719956 (= c!935679 (isEmpty!33400 (_1!35583 lt!2186609)))))

(assert (=> d!1719956 (validRegex!6817 lt!2186607)))

(assert (=> d!1719956 (= (matchR!7266 lt!2186607 (_1!35583 lt!2186609)) lt!2186782)))

(declare-fun b!5370047 () Bool)

(declare-fun e!3332190 () Bool)

(assert (=> b!5370047 (= e!3332191 e!3332190)))

(declare-fun res!2279013 () Bool)

(assert (=> b!5370047 (=> (not res!2279013) (not e!3332190))))

(assert (=> b!5370047 (= res!2279013 (not lt!2186782))))

(declare-fun b!5370048 () Bool)

(declare-fun e!3332189 () Bool)

(assert (=> b!5370048 (= e!3332190 e!3332189)))

(declare-fun res!2279008 () Bool)

(assert (=> b!5370048 (=> res!2279008 e!3332189)))

(assert (=> b!5370048 (= res!2279008 call!384491)))

(declare-fun b!5370049 () Bool)

(declare-fun res!2279015 () Bool)

(assert (=> b!5370049 (=> res!2279015 e!3332191)))

(assert (=> b!5370049 (= res!2279015 (not ((_ is ElementMatch!15081) lt!2186607)))))

(assert (=> b!5370049 (= e!3332188 e!3332191)))

(declare-fun b!5370050 () Bool)

(assert (=> b!5370050 (= e!3332189 (not (= (head!11518 (_1!35583 lt!2186609)) (c!935425 lt!2186607))))))

(declare-fun b!5370051 () Bool)

(declare-fun res!2279014 () Bool)

(assert (=> b!5370051 (=> res!2279014 e!3332189)))

(assert (=> b!5370051 (= res!2279014 (not (isEmpty!33400 (tail!10615 (_1!35583 lt!2186609)))))))

(assert (= (and d!1719956 c!935679) b!5370045))

(assert (= (and d!1719956 (not c!935679)) b!5370039))

(assert (= (and d!1719956 c!935680) b!5370042))

(assert (= (and d!1719956 (not c!935680)) b!5370038))

(assert (= (and b!5370038 c!935678) b!5370044))

(assert (= (and b!5370038 (not c!935678)) b!5370049))

(assert (= (and b!5370049 (not res!2279015)) b!5370046))

(assert (= (and b!5370046 res!2279009) b!5370041))

(assert (= (and b!5370041 res!2279010) b!5370040))

(assert (= (and b!5370040 res!2279012) b!5370043))

(assert (= (and b!5370046 (not res!2279011)) b!5370047))

(assert (= (and b!5370047 res!2279013) b!5370048))

(assert (= (and b!5370048 (not res!2279008)) b!5370051))

(assert (= (and b!5370051 (not res!2279014)) b!5370050))

(assert (= (or b!5370042 b!5370041 b!5370048) bm!384486))

(assert (=> bm!384486 m!6396746))

(assert (=> d!1719956 m!6396746))

(assert (=> d!1719956 m!6397536))

(declare-fun m!6397578 () Bool)

(assert (=> b!5370043 m!6397578))

(assert (=> b!5370039 m!6397578))

(assert (=> b!5370039 m!6397578))

(declare-fun m!6397580 () Bool)

(assert (=> b!5370039 m!6397580))

(declare-fun m!6397582 () Bool)

(assert (=> b!5370039 m!6397582))

(assert (=> b!5370039 m!6397580))

(assert (=> b!5370039 m!6397582))

(declare-fun m!6397584 () Bool)

(assert (=> b!5370039 m!6397584))

(assert (=> b!5370051 m!6397582))

(assert (=> b!5370051 m!6397582))

(declare-fun m!6397586 () Bool)

(assert (=> b!5370051 m!6397586))

(assert (=> b!5370050 m!6397578))

(assert (=> b!5370040 m!6397582))

(assert (=> b!5370040 m!6397582))

(assert (=> b!5370040 m!6397586))

(declare-fun m!6397588 () Bool)

(assert (=> b!5370045 m!6397588))

(assert (=> b!5369174 d!1719956))

(declare-fun bs!1243682 () Bool)

(declare-fun d!1719958 () Bool)

(assert (= bs!1243682 (and d!1719958 b!5369181)))

(declare-fun lambda!276989 () Int)

(assert (=> bs!1243682 (= lambda!276989 lambda!276917)))

(declare-fun bs!1243683 () Bool)

(assert (= bs!1243683 (and d!1719958 d!1719910)))

(assert (=> bs!1243683 (= lambda!276989 lambda!276973)))

(declare-fun bs!1243684 () Bool)

(assert (= bs!1243684 (and d!1719958 d!1719926)))

(assert (=> bs!1243684 (= lambda!276989 lambda!276976)))

(declare-fun b!5370052 () Bool)

(declare-fun e!3332200 () Regex!15081)

(assert (=> b!5370052 (= e!3332200 EmptyExpr!15081)))

(declare-fun b!5370053 () Bool)

(declare-fun e!3332195 () Bool)

(declare-fun lt!2186783 () Regex!15081)

(assert (=> b!5370053 (= e!3332195 (= lt!2186783 (head!11519 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun b!5370054 () Bool)

(assert (=> b!5370054 (= e!3332195 (isConcat!458 lt!2186783))))

(declare-fun b!5370055 () Bool)

(declare-fun e!3332197 () Bool)

(assert (=> b!5370055 (= e!3332197 (isEmptyExpr!935 lt!2186783))))

(declare-fun e!3332196 () Bool)

(assert (=> d!1719958 e!3332196))

(declare-fun res!2279017 () Bool)

(assert (=> d!1719958 (=> (not res!2279017) (not e!3332196))))

(assert (=> d!1719958 (= res!2279017 (validRegex!6817 lt!2186783))))

(declare-fun e!3332199 () Regex!15081)

(assert (=> d!1719958 (= lt!2186783 e!3332199)))

(declare-fun c!935681 () Bool)

(declare-fun e!3332198 () Bool)

(assert (=> d!1719958 (= c!935681 e!3332198)))

(declare-fun res!2279016 () Bool)

(assert (=> d!1719958 (=> (not res!2279016) (not e!3332198))))

(assert (=> d!1719958 (= res!2279016 ((_ is Cons!61418) (exprs!4965 (h!67867 zl!343))))))

(assert (=> d!1719958 (forall!14489 (exprs!4965 (h!67867 zl!343)) lambda!276989)))

(assert (=> d!1719958 (= (generalisedConcat!750 (exprs!4965 (h!67867 zl!343))) lt!2186783)))

(declare-fun b!5370056 () Bool)

(assert (=> b!5370056 (= e!3332198 (isEmpty!33399 (t!374765 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun b!5370057 () Bool)

(assert (=> b!5370057 (= e!3332196 e!3332197)))

(declare-fun c!935682 () Bool)

(assert (=> b!5370057 (= c!935682 (isEmpty!33399 (exprs!4965 (h!67867 zl!343))))))

(declare-fun b!5370058 () Bool)

(assert (=> b!5370058 (= e!3332200 (Concat!23926 (h!67866 (exprs!4965 (h!67867 zl!343))) (generalisedConcat!750 (t!374765 (exprs!4965 (h!67867 zl!343))))))))

(declare-fun b!5370059 () Bool)

(assert (=> b!5370059 (= e!3332199 (h!67866 (exprs!4965 (h!67867 zl!343))))))

(declare-fun b!5370060 () Bool)

(assert (=> b!5370060 (= e!3332197 e!3332195)))

(declare-fun c!935683 () Bool)

(assert (=> b!5370060 (= c!935683 (isEmpty!33399 (tail!10616 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun b!5370061 () Bool)

(assert (=> b!5370061 (= e!3332199 e!3332200)))

(declare-fun c!935684 () Bool)

(assert (=> b!5370061 (= c!935684 ((_ is Cons!61418) (exprs!4965 (h!67867 zl!343))))))

(assert (= (and d!1719958 res!2279016) b!5370056))

(assert (= (and d!1719958 c!935681) b!5370059))

(assert (= (and d!1719958 (not c!935681)) b!5370061))

(assert (= (and b!5370061 c!935684) b!5370058))

(assert (= (and b!5370061 (not c!935684)) b!5370052))

(assert (= (and d!1719958 res!2279017) b!5370057))

(assert (= (and b!5370057 c!935682) b!5370055))

(assert (= (and b!5370057 (not c!935682)) b!5370060))

(assert (= (and b!5370060 c!935683) b!5370053))

(assert (= (and b!5370060 (not c!935683)) b!5370054))

(declare-fun m!6397590 () Bool)

(assert (=> b!5370053 m!6397590))

(declare-fun m!6397592 () Bool)

(assert (=> b!5370055 m!6397592))

(assert (=> b!5370056 m!6396764))

(declare-fun m!6397594 () Bool)

(assert (=> b!5370054 m!6397594))

(declare-fun m!6397596 () Bool)

(assert (=> d!1719958 m!6397596))

(declare-fun m!6397598 () Bool)

(assert (=> d!1719958 m!6397598))

(declare-fun m!6397600 () Bool)

(assert (=> b!5370060 m!6397600))

(assert (=> b!5370060 m!6397600))

(declare-fun m!6397602 () Bool)

(assert (=> b!5370060 m!6397602))

(assert (=> b!5370058 m!6396828))

(declare-fun m!6397604 () Bool)

(assert (=> b!5370057 m!6397604))

(assert (=> b!5369155 d!1719958))

(declare-fun bs!1243685 () Bool)

(declare-fun b!5370101 () Bool)

(assert (= bs!1243685 (and b!5370101 b!5369178)))

(declare-fun lambda!276994 () Int)

(assert (=> bs!1243685 (not (= lambda!276994 lambda!276915))))

(declare-fun bs!1243686 () Bool)

(assert (= bs!1243686 (and b!5370101 b!5369177)))

(assert (=> bs!1243686 (not (= lambda!276994 lambda!276912))))

(assert (=> bs!1243686 (not (= lambda!276994 lambda!276913))))

(declare-fun bs!1243687 () Bool)

(assert (= bs!1243687 (and b!5370101 d!1719940)))

(assert (=> bs!1243687 (not (= lambda!276994 lambda!276986))))

(declare-fun bs!1243688 () Bool)

(assert (= bs!1243688 (and b!5370101 d!1719936)))

(assert (=> bs!1243688 (not (= lambda!276994 lambda!276985))))

(assert (=> bs!1243688 (not (= lambda!276994 lambda!276984))))

(assert (=> bs!1243687 (not (= lambda!276994 lambda!276987))))

(declare-fun bs!1243689 () Bool)

(assert (= bs!1243689 (and b!5370101 d!1719934)))

(assert (=> bs!1243689 (not (= lambda!276994 lambda!276979))))

(assert (=> bs!1243685 (not (= lambda!276994 lambda!276916))))

(declare-fun bs!1243690 () Bool)

(assert (= bs!1243690 (and b!5370101 d!1719954)))

(assert (=> bs!1243690 (not (= lambda!276994 lambda!276988))))

(assert (=> b!5370101 true))

(assert (=> b!5370101 true))

(declare-fun bs!1243691 () Bool)

(declare-fun b!5370096 () Bool)

(assert (= bs!1243691 (and b!5370096 b!5369178)))

(declare-fun lambda!276995 () Int)

(assert (=> bs!1243691 (not (= lambda!276995 lambda!276915))))

(declare-fun bs!1243692 () Bool)

(assert (= bs!1243692 (and b!5370096 b!5369177)))

(assert (=> bs!1243692 (not (= lambda!276995 lambda!276912))))

(assert (=> bs!1243692 (= lambda!276995 lambda!276913)))

(declare-fun bs!1243693 () Bool)

(assert (= bs!1243693 (and b!5370096 d!1719940)))

(assert (=> bs!1243693 (not (= lambda!276995 lambda!276986))))

(declare-fun bs!1243694 () Bool)

(assert (= bs!1243694 (and b!5370096 d!1719936)))

(assert (=> bs!1243694 (= lambda!276995 lambda!276985)))

(assert (=> bs!1243694 (not (= lambda!276995 lambda!276984))))

(assert (=> bs!1243693 (= (= (regOne!30674 r!7292) lt!2186607) (= lambda!276995 lambda!276987))))

(declare-fun bs!1243695 () Bool)

(assert (= bs!1243695 (and b!5370096 d!1719934)))

(assert (=> bs!1243695 (not (= lambda!276995 lambda!276979))))

(declare-fun bs!1243696 () Bool)

(assert (= bs!1243696 (and b!5370096 d!1719954)))

(assert (=> bs!1243696 (not (= lambda!276995 lambda!276988))))

(assert (=> bs!1243691 (= (= (regOne!30674 r!7292) lt!2186607) (= lambda!276995 lambda!276916))))

(declare-fun bs!1243697 () Bool)

(assert (= bs!1243697 (and b!5370096 b!5370101)))

(assert (=> bs!1243697 (not (= lambda!276995 lambda!276994))))

(assert (=> b!5370096 true))

(assert (=> b!5370096 true))

(declare-fun d!1719960 () Bool)

(declare-fun c!935695 () Bool)

(assert (=> d!1719960 (= c!935695 ((_ is EmptyExpr!15081) r!7292))))

(declare-fun e!3332224 () Bool)

(assert (=> d!1719960 (= (matchRSpec!2184 r!7292 s!2326) e!3332224)))

(declare-fun b!5370094 () Bool)

(declare-fun e!3332225 () Bool)

(assert (=> b!5370094 (= e!3332225 (= s!2326 (Cons!61420 (c!935425 r!7292) Nil!61420)))))

(declare-fun b!5370095 () Bool)

(declare-fun e!3332223 () Bool)

(declare-fun e!3332220 () Bool)

(assert (=> b!5370095 (= e!3332223 e!3332220)))

(declare-fun c!935693 () Bool)

(assert (=> b!5370095 (= c!935693 ((_ is Star!15081) r!7292))))

(declare-fun call!384496 () Bool)

(assert (=> b!5370096 (= e!3332220 call!384496)))

(declare-fun b!5370097 () Bool)

(declare-fun c!935696 () Bool)

(assert (=> b!5370097 (= c!935696 ((_ is ElementMatch!15081) r!7292))))

(declare-fun e!3332221 () Bool)

(assert (=> b!5370097 (= e!3332221 e!3332225)))

(declare-fun b!5370098 () Bool)

(assert (=> b!5370098 (= e!3332224 e!3332221)))

(declare-fun res!2279036 () Bool)

(assert (=> b!5370098 (= res!2279036 (not ((_ is EmptyLang!15081) r!7292)))))

(assert (=> b!5370098 (=> (not res!2279036) (not e!3332221))))

(declare-fun b!5370099 () Bool)

(declare-fun c!935694 () Bool)

(assert (=> b!5370099 (= c!935694 ((_ is Union!15081) r!7292))))

(assert (=> b!5370099 (= e!3332225 e!3332223)))

(declare-fun b!5370100 () Bool)

(declare-fun e!3332219 () Bool)

(assert (=> b!5370100 (= e!3332219 (matchRSpec!2184 (regTwo!30675 r!7292) s!2326))))

(declare-fun e!3332222 () Bool)

(assert (=> b!5370101 (= e!3332222 call!384496)))

(declare-fun b!5370102 () Bool)

(declare-fun call!384497 () Bool)

(assert (=> b!5370102 (= e!3332224 call!384497)))

(declare-fun b!5370103 () Bool)

(declare-fun res!2279034 () Bool)

(assert (=> b!5370103 (=> res!2279034 e!3332222)))

(assert (=> b!5370103 (= res!2279034 call!384497)))

(assert (=> b!5370103 (= e!3332220 e!3332222)))

(declare-fun bm!384491 () Bool)

(assert (=> bm!384491 (= call!384496 (Exists!2262 (ite c!935693 lambda!276994 lambda!276995)))))

(declare-fun bm!384492 () Bool)

(assert (=> bm!384492 (= call!384497 (isEmpty!33400 s!2326))))

(declare-fun b!5370104 () Bool)

(assert (=> b!5370104 (= e!3332223 e!3332219)))

(declare-fun res!2279035 () Bool)

(assert (=> b!5370104 (= res!2279035 (matchRSpec!2184 (regOne!30675 r!7292) s!2326))))

(assert (=> b!5370104 (=> res!2279035 e!3332219)))

(assert (= (and d!1719960 c!935695) b!5370102))

(assert (= (and d!1719960 (not c!935695)) b!5370098))

(assert (= (and b!5370098 res!2279036) b!5370097))

(assert (= (and b!5370097 c!935696) b!5370094))

(assert (= (and b!5370097 (not c!935696)) b!5370099))

(assert (= (and b!5370099 c!935694) b!5370104))

(assert (= (and b!5370099 (not c!935694)) b!5370095))

(assert (= (and b!5370104 (not res!2279035)) b!5370100))

(assert (= (and b!5370095 c!935693) b!5370103))

(assert (= (and b!5370095 (not c!935693)) b!5370096))

(assert (= (and b!5370103 (not res!2279034)) b!5370101))

(assert (= (or b!5370101 b!5370096) bm!384491))

(assert (= (or b!5370102 b!5370103) bm!384492))

(declare-fun m!6397606 () Bool)

(assert (=> b!5370100 m!6397606))

(declare-fun m!6397608 () Bool)

(assert (=> bm!384491 m!6397608))

(assert (=> bm!384492 m!6397448))

(declare-fun m!6397610 () Bool)

(assert (=> b!5370104 m!6397610))

(assert (=> b!5369176 d!1719960))

(declare-fun b!5370105 () Bool)

(declare-fun e!3332232 () Bool)

(declare-fun e!3332226 () Bool)

(assert (=> b!5370105 (= e!3332232 e!3332226)))

(declare-fun c!935697 () Bool)

(assert (=> b!5370105 (= c!935697 ((_ is EmptyLang!15081) r!7292))))

(declare-fun b!5370106 () Bool)

(declare-fun e!3332231 () Bool)

(assert (=> b!5370106 (= e!3332231 (matchR!7266 (derivativeStep!4221 r!7292 (head!11518 s!2326)) (tail!10615 s!2326)))))

(declare-fun b!5370107 () Bool)

(declare-fun res!2279041 () Bool)

(declare-fun e!3332230 () Bool)

(assert (=> b!5370107 (=> (not res!2279041) (not e!3332230))))

(assert (=> b!5370107 (= res!2279041 (isEmpty!33400 (tail!10615 s!2326)))))

(declare-fun b!5370108 () Bool)

(declare-fun res!2279039 () Bool)

(assert (=> b!5370108 (=> (not res!2279039) (not e!3332230))))

(declare-fun call!384498 () Bool)

(assert (=> b!5370108 (= res!2279039 (not call!384498))))

(declare-fun b!5370109 () Bool)

(declare-fun lt!2186784 () Bool)

(assert (=> b!5370109 (= e!3332232 (= lt!2186784 call!384498))))

(declare-fun b!5370110 () Bool)

(assert (=> b!5370110 (= e!3332230 (= (head!11518 s!2326) (c!935425 r!7292)))))

(declare-fun b!5370111 () Bool)

(assert (=> b!5370111 (= e!3332226 (not lt!2186784))))

(declare-fun b!5370112 () Bool)

(assert (=> b!5370112 (= e!3332231 (nullable!5250 r!7292))))

(declare-fun b!5370113 () Bool)

(declare-fun res!2279040 () Bool)

(declare-fun e!3332229 () Bool)

(assert (=> b!5370113 (=> res!2279040 e!3332229)))

(assert (=> b!5370113 (= res!2279040 e!3332230)))

(declare-fun res!2279038 () Bool)

(assert (=> b!5370113 (=> (not res!2279038) (not e!3332230))))

(assert (=> b!5370113 (= res!2279038 lt!2186784)))

(declare-fun bm!384493 () Bool)

(assert (=> bm!384493 (= call!384498 (isEmpty!33400 s!2326))))

(declare-fun d!1719962 () Bool)

(assert (=> d!1719962 e!3332232))

(declare-fun c!935699 () Bool)

(assert (=> d!1719962 (= c!935699 ((_ is EmptyExpr!15081) r!7292))))

(assert (=> d!1719962 (= lt!2186784 e!3332231)))

(declare-fun c!935698 () Bool)

(assert (=> d!1719962 (= c!935698 (isEmpty!33400 s!2326))))

(assert (=> d!1719962 (validRegex!6817 r!7292)))

(assert (=> d!1719962 (= (matchR!7266 r!7292 s!2326) lt!2186784)))

(declare-fun b!5370114 () Bool)

(declare-fun e!3332228 () Bool)

(assert (=> b!5370114 (= e!3332229 e!3332228)))

(declare-fun res!2279042 () Bool)

(assert (=> b!5370114 (=> (not res!2279042) (not e!3332228))))

(assert (=> b!5370114 (= res!2279042 (not lt!2186784))))

(declare-fun b!5370115 () Bool)

(declare-fun e!3332227 () Bool)

(assert (=> b!5370115 (= e!3332228 e!3332227)))

(declare-fun res!2279037 () Bool)

(assert (=> b!5370115 (=> res!2279037 e!3332227)))

(assert (=> b!5370115 (= res!2279037 call!384498)))

(declare-fun b!5370116 () Bool)

(declare-fun res!2279044 () Bool)

(assert (=> b!5370116 (=> res!2279044 e!3332229)))

(assert (=> b!5370116 (= res!2279044 (not ((_ is ElementMatch!15081) r!7292)))))

(assert (=> b!5370116 (= e!3332226 e!3332229)))

(declare-fun b!5370117 () Bool)

(assert (=> b!5370117 (= e!3332227 (not (= (head!11518 s!2326) (c!935425 r!7292))))))

(declare-fun b!5370118 () Bool)

(declare-fun res!2279043 () Bool)

(assert (=> b!5370118 (=> res!2279043 e!3332227)))

(assert (=> b!5370118 (= res!2279043 (not (isEmpty!33400 (tail!10615 s!2326))))))

(assert (= (and d!1719962 c!935698) b!5370112))

(assert (= (and d!1719962 (not c!935698)) b!5370106))

(assert (= (and d!1719962 c!935699) b!5370109))

(assert (= (and d!1719962 (not c!935699)) b!5370105))

(assert (= (and b!5370105 c!935697) b!5370111))

(assert (= (and b!5370105 (not c!935697)) b!5370116))

(assert (= (and b!5370116 (not res!2279044)) b!5370113))

(assert (= (and b!5370113 res!2279038) b!5370108))

(assert (= (and b!5370108 res!2279039) b!5370107))

(assert (= (and b!5370107 res!2279041) b!5370110))

(assert (= (and b!5370113 (not res!2279040)) b!5370114))

(assert (= (and b!5370114 res!2279042) b!5370115))

(assert (= (and b!5370115 (not res!2279037)) b!5370118))

(assert (= (and b!5370118 (not res!2279043)) b!5370117))

(assert (= (or b!5370109 b!5370108 b!5370115) bm!384493))

(assert (=> bm!384493 m!6397448))

(assert (=> d!1719962 m!6397448))

(assert (=> d!1719962 m!6396770))

(assert (=> b!5370110 m!6397452))

(assert (=> b!5370106 m!6397452))

(assert (=> b!5370106 m!6397452))

(declare-fun m!6397612 () Bool)

(assert (=> b!5370106 m!6397612))

(assert (=> b!5370106 m!6397456))

(assert (=> b!5370106 m!6397612))

(assert (=> b!5370106 m!6397456))

(declare-fun m!6397614 () Bool)

(assert (=> b!5370106 m!6397614))

(assert (=> b!5370118 m!6397456))

(assert (=> b!5370118 m!6397456))

(assert (=> b!5370118 m!6397476))

(assert (=> b!5370117 m!6397452))

(assert (=> b!5370107 m!6397456))

(assert (=> b!5370107 m!6397456))

(assert (=> b!5370107 m!6397476))

(declare-fun m!6397616 () Bool)

(assert (=> b!5370112 m!6397616))

(assert (=> b!5369176 d!1719962))

(declare-fun d!1719964 () Bool)

(assert (=> d!1719964 (= (matchR!7266 r!7292 s!2326) (matchRSpec!2184 r!7292 s!2326))))

(declare-fun lt!2186787 () Unit!153842)

(declare-fun choose!40331 (Regex!15081 List!61544) Unit!153842)

(assert (=> d!1719964 (= lt!2186787 (choose!40331 r!7292 s!2326))))

(assert (=> d!1719964 (validRegex!6817 r!7292)))

(assert (=> d!1719964 (= (mainMatchTheorem!2184 r!7292 s!2326) lt!2186787)))

(declare-fun bs!1243698 () Bool)

(assert (= bs!1243698 d!1719964))

(assert (=> bs!1243698 m!6396786))

(assert (=> bs!1243698 m!6396784))

(declare-fun m!6397618 () Bool)

(assert (=> bs!1243698 m!6397618))

(assert (=> bs!1243698 m!6396770))

(assert (=> b!5369176 d!1719964))

(declare-fun b!5370125 () Bool)

(assert (=> b!5370125 true))

(declare-fun bs!1243699 () Bool)

(declare-fun b!5370127 () Bool)

(assert (= bs!1243699 (and b!5370127 b!5370125)))

(declare-fun lt!2186799 () Int)

(declare-fun lambda!277003 () Int)

(declare-fun lambda!277004 () Int)

(declare-fun lt!2186797 () Int)

(assert (=> bs!1243699 (= (= lt!2186797 lt!2186799) (= lambda!277004 lambda!277003))))

(assert (=> b!5370127 true))

(declare-fun d!1719966 () Bool)

(declare-fun e!3332237 () Bool)

(assert (=> d!1719966 e!3332237))

(declare-fun res!2279047 () Bool)

(assert (=> d!1719966 (=> (not res!2279047) (not e!3332237))))

(assert (=> d!1719966 (= res!2279047 (>= lt!2186797 0))))

(declare-fun e!3332238 () Int)

(assert (=> d!1719966 (= lt!2186797 e!3332238)))

(declare-fun c!935708 () Bool)

(assert (=> d!1719966 (= c!935708 ((_ is Cons!61419) zl!343))))

(assert (=> d!1719966 (= (zipperDepth!154 zl!343) lt!2186797)))

(assert (=> b!5370125 (= e!3332238 lt!2186799)))

(declare-fun contextDepth!88 (Context!8930) Int)

(assert (=> b!5370125 (= lt!2186799 (maxBigInt!0 (contextDepth!88 (h!67867 zl!343)) (zipperDepth!154 (t!374766 zl!343))))))

(declare-fun lt!2186798 () Unit!153842)

(declare-fun lambda!277002 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!82 (List!61543 Int Int Int) Unit!153842)

(assert (=> b!5370125 (= lt!2186798 (lemmaForallContextDepthBiggerThanTransitive!82 (t!374766 zl!343) lt!2186799 (zipperDepth!154 (t!374766 zl!343)) lambda!277002))))

(declare-fun forall!14491 (List!61543 Int) Bool)

(assert (=> b!5370125 (forall!14491 (t!374766 zl!343) lambda!277003)))

(declare-fun lt!2186796 () Unit!153842)

(assert (=> b!5370125 (= lt!2186796 lt!2186798)))

(declare-fun b!5370126 () Bool)

(assert (=> b!5370126 (= e!3332238 0)))

(assert (=> b!5370127 (= e!3332237 (forall!14491 zl!343 lambda!277004))))

(assert (= (and d!1719966 c!935708) b!5370125))

(assert (= (and d!1719966 (not c!935708)) b!5370126))

(assert (= (and d!1719966 res!2279047) b!5370127))

(declare-fun m!6397620 () Bool)

(assert (=> b!5370125 m!6397620))

(declare-fun m!6397622 () Bool)

(assert (=> b!5370125 m!6397622))

(declare-fun m!6397624 () Bool)

(assert (=> b!5370125 m!6397624))

(assert (=> b!5370125 m!6397622))

(assert (=> b!5370125 m!6397620))

(assert (=> b!5370125 m!6397622))

(declare-fun m!6397626 () Bool)

(assert (=> b!5370125 m!6397626))

(declare-fun m!6397628 () Bool)

(assert (=> b!5370125 m!6397628))

(declare-fun m!6397630 () Bool)

(assert (=> b!5370127 m!6397630))

(assert (=> b!5369156 d!1719966))

(declare-fun bs!1243700 () Bool)

(declare-fun b!5370130 () Bool)

(assert (= bs!1243700 (and b!5370130 b!5370125)))

(declare-fun lambda!277005 () Int)

(assert (=> bs!1243700 (= lambda!277005 lambda!277002)))

(declare-fun lt!2186803 () Int)

(declare-fun lambda!277006 () Int)

(assert (=> bs!1243700 (= (= lt!2186803 lt!2186799) (= lambda!277006 lambda!277003))))

(declare-fun bs!1243701 () Bool)

(assert (= bs!1243701 (and b!5370130 b!5370127)))

(assert (=> bs!1243701 (= (= lt!2186803 lt!2186797) (= lambda!277006 lambda!277004))))

(assert (=> b!5370130 true))

(declare-fun bs!1243702 () Bool)

(declare-fun b!5370132 () Bool)

(assert (= bs!1243702 (and b!5370132 b!5370125)))

(declare-fun lambda!277007 () Int)

(declare-fun lt!2186801 () Int)

(assert (=> bs!1243702 (= (= lt!2186801 lt!2186799) (= lambda!277007 lambda!277003))))

(declare-fun bs!1243703 () Bool)

(assert (= bs!1243703 (and b!5370132 b!5370127)))

(assert (=> bs!1243703 (= (= lt!2186801 lt!2186797) (= lambda!277007 lambda!277004))))

(declare-fun bs!1243704 () Bool)

(assert (= bs!1243704 (and b!5370132 b!5370130)))

(assert (=> bs!1243704 (= (= lt!2186801 lt!2186803) (= lambda!277007 lambda!277006))))

(assert (=> b!5370132 true))

(declare-fun d!1719968 () Bool)

(declare-fun e!3332239 () Bool)

(assert (=> d!1719968 e!3332239))

(declare-fun res!2279048 () Bool)

(assert (=> d!1719968 (=> (not res!2279048) (not e!3332239))))

(assert (=> d!1719968 (= res!2279048 (>= lt!2186801 0))))

(declare-fun e!3332240 () Int)

(assert (=> d!1719968 (= lt!2186801 e!3332240)))

(declare-fun c!935709 () Bool)

(assert (=> d!1719968 (= c!935709 ((_ is Cons!61419) lt!2186618))))

(assert (=> d!1719968 (= (zipperDepth!154 lt!2186618) lt!2186801)))

(assert (=> b!5370130 (= e!3332240 lt!2186803)))

(assert (=> b!5370130 (= lt!2186803 (maxBigInt!0 (contextDepth!88 (h!67867 lt!2186618)) (zipperDepth!154 (t!374766 lt!2186618))))))

(declare-fun lt!2186802 () Unit!153842)

(assert (=> b!5370130 (= lt!2186802 (lemmaForallContextDepthBiggerThanTransitive!82 (t!374766 lt!2186618) lt!2186803 (zipperDepth!154 (t!374766 lt!2186618)) lambda!277005))))

(assert (=> b!5370130 (forall!14491 (t!374766 lt!2186618) lambda!277006)))

(declare-fun lt!2186800 () Unit!153842)

(assert (=> b!5370130 (= lt!2186800 lt!2186802)))

(declare-fun b!5370131 () Bool)

(assert (=> b!5370131 (= e!3332240 0)))

(assert (=> b!5370132 (= e!3332239 (forall!14491 lt!2186618 lambda!277007))))

(assert (= (and d!1719968 c!935709) b!5370130))

(assert (= (and d!1719968 (not c!935709)) b!5370131))

(assert (= (and d!1719968 res!2279048) b!5370132))

(declare-fun m!6397632 () Bool)

(assert (=> b!5370130 m!6397632))

(declare-fun m!6397634 () Bool)

(assert (=> b!5370130 m!6397634))

(declare-fun m!6397636 () Bool)

(assert (=> b!5370130 m!6397636))

(assert (=> b!5370130 m!6397634))

(assert (=> b!5370130 m!6397632))

(assert (=> b!5370130 m!6397634))

(declare-fun m!6397638 () Bool)

(assert (=> b!5370130 m!6397638))

(declare-fun m!6397640 () Bool)

(assert (=> b!5370130 m!6397640))

(declare-fun m!6397642 () Bool)

(assert (=> b!5370132 m!6397642))

(assert (=> b!5369156 d!1719968))

(declare-fun b!5370155 () Bool)

(declare-fun e!3332258 () (InoxSet Context!8930))

(assert (=> b!5370155 (= e!3332258 (store ((as const (Array Context!8930 Bool)) false) lt!2186643 true))))

(declare-fun d!1719970 () Bool)

(declare-fun c!935724 () Bool)

(assert (=> d!1719970 (= c!935724 (and ((_ is ElementMatch!15081) (reg!15410 (regOne!30674 r!7292))) (= (c!935425 (reg!15410 (regOne!30674 r!7292))) (h!67868 s!2326))))))

(assert (=> d!1719970 (= (derivationStepZipperDown!529 (reg!15410 (regOne!30674 r!7292)) lt!2186643 (h!67868 s!2326)) e!3332258)))

(declare-fun b!5370156 () Bool)

(declare-fun c!935721 () Bool)

(assert (=> b!5370156 (= c!935721 ((_ is Star!15081) (reg!15410 (regOne!30674 r!7292))))))

(declare-fun e!3332255 () (InoxSet Context!8930))

(declare-fun e!3332256 () (InoxSet Context!8930))

(assert (=> b!5370156 (= e!3332255 e!3332256)))

(declare-fun call!384515 () (InoxSet Context!8930))

(declare-fun call!384513 () List!61542)

(declare-fun bm!384506 () Bool)

(declare-fun c!935722 () Bool)

(declare-fun c!935720 () Bool)

(declare-fun c!935723 () Bool)

(assert (=> bm!384506 (= call!384515 (derivationStepZipperDown!529 (ite c!935720 (regOne!30675 (reg!15410 (regOne!30674 r!7292))) (ite c!935723 (regTwo!30674 (reg!15410 (regOne!30674 r!7292))) (ite c!935722 (regOne!30674 (reg!15410 (regOne!30674 r!7292))) (reg!15410 (reg!15410 (regOne!30674 r!7292)))))) (ite (or c!935720 c!935723) lt!2186643 (Context!8931 call!384513)) (h!67868 s!2326)))))

(declare-fun bm!384507 () Bool)

(declare-fun call!384514 () (InoxSet Context!8930))

(declare-fun call!384512 () (InoxSet Context!8930))

(assert (=> bm!384507 (= call!384514 call!384512)))

(declare-fun call!384511 () List!61542)

(declare-fun bm!384508 () Bool)

(declare-fun $colon$colon!1450 (List!61542 Regex!15081) List!61542)

(assert (=> bm!384508 (= call!384511 ($colon$colon!1450 (exprs!4965 lt!2186643) (ite (or c!935723 c!935722) (regTwo!30674 (reg!15410 (regOne!30674 r!7292))) (reg!15410 (regOne!30674 r!7292)))))))

(declare-fun b!5370157 () Bool)

(assert (=> b!5370157 (= e!3332256 ((as const (Array Context!8930 Bool)) false))))

(declare-fun bm!384509 () Bool)

(assert (=> bm!384509 (= call!384513 call!384511)))

(declare-fun b!5370158 () Bool)

(assert (=> b!5370158 (= e!3332256 call!384514)))

(declare-fun b!5370159 () Bool)

(declare-fun e!3332254 () (InoxSet Context!8930))

(assert (=> b!5370159 (= e!3332258 e!3332254)))

(assert (=> b!5370159 (= c!935720 ((_ is Union!15081) (reg!15410 (regOne!30674 r!7292))))))

(declare-fun b!5370160 () Bool)

(declare-fun e!3332257 () (InoxSet Context!8930))

(assert (=> b!5370160 (= e!3332257 e!3332255)))

(assert (=> b!5370160 (= c!935722 ((_ is Concat!23926) (reg!15410 (regOne!30674 r!7292))))))

(declare-fun b!5370161 () Bool)

(declare-fun e!3332253 () Bool)

(assert (=> b!5370161 (= e!3332253 (nullable!5250 (regOne!30674 (reg!15410 (regOne!30674 r!7292)))))))

(declare-fun b!5370162 () Bool)

(declare-fun call!384516 () (InoxSet Context!8930))

(assert (=> b!5370162 (= e!3332254 ((_ map or) call!384515 call!384516))))

(declare-fun b!5370163 () Bool)

(assert (=> b!5370163 (= e!3332255 call!384514)))

(declare-fun bm!384510 () Bool)

(assert (=> bm!384510 (= call!384512 call!384515)))

(declare-fun bm!384511 () Bool)

(assert (=> bm!384511 (= call!384516 (derivationStepZipperDown!529 (ite c!935720 (regTwo!30675 (reg!15410 (regOne!30674 r!7292))) (regOne!30674 (reg!15410 (regOne!30674 r!7292)))) (ite c!935720 lt!2186643 (Context!8931 call!384511)) (h!67868 s!2326)))))

(declare-fun b!5370164 () Bool)

(assert (=> b!5370164 (= c!935723 e!3332253)))

(declare-fun res!2279051 () Bool)

(assert (=> b!5370164 (=> (not res!2279051) (not e!3332253))))

(assert (=> b!5370164 (= res!2279051 ((_ is Concat!23926) (reg!15410 (regOne!30674 r!7292))))))

(assert (=> b!5370164 (= e!3332254 e!3332257)))

(declare-fun b!5370165 () Bool)

(assert (=> b!5370165 (= e!3332257 ((_ map or) call!384516 call!384512))))

(assert (= (and d!1719970 c!935724) b!5370155))

(assert (= (and d!1719970 (not c!935724)) b!5370159))

(assert (= (and b!5370159 c!935720) b!5370162))

(assert (= (and b!5370159 (not c!935720)) b!5370164))

(assert (= (and b!5370164 res!2279051) b!5370161))

(assert (= (and b!5370164 c!935723) b!5370165))

(assert (= (and b!5370164 (not c!935723)) b!5370160))

(assert (= (and b!5370160 c!935722) b!5370163))

(assert (= (and b!5370160 (not c!935722)) b!5370156))

(assert (= (and b!5370156 c!935721) b!5370158))

(assert (= (and b!5370156 (not c!935721)) b!5370157))

(assert (= (or b!5370163 b!5370158) bm!384509))

(assert (= (or b!5370163 b!5370158) bm!384507))

(assert (= (or b!5370165 bm!384509) bm!384508))

(assert (= (or b!5370165 bm!384507) bm!384510))

(assert (= (or b!5370162 b!5370165) bm!384511))

(assert (= (or b!5370162 bm!384510) bm!384506))

(declare-fun m!6397644 () Bool)

(assert (=> bm!384511 m!6397644))

(declare-fun m!6397646 () Bool)

(assert (=> bm!384508 m!6397646))

(declare-fun m!6397648 () Bool)

(assert (=> b!5370161 m!6397648))

(declare-fun m!6397650 () Bool)

(assert (=> bm!384506 m!6397650))

(assert (=> b!5370155 m!6396862))

(assert (=> b!5369152 d!1719970))

(declare-fun bs!1243705 () Bool)

(declare-fun d!1719972 () Bool)

(assert (= bs!1243705 (and d!1719972 b!5369181)))

(declare-fun lambda!277008 () Int)

(assert (=> bs!1243705 (= lambda!277008 lambda!276917)))

(declare-fun bs!1243706 () Bool)

(assert (= bs!1243706 (and d!1719972 d!1719910)))

(assert (=> bs!1243706 (= lambda!277008 lambda!276973)))

(declare-fun bs!1243707 () Bool)

(assert (= bs!1243707 (and d!1719972 d!1719926)))

(assert (=> bs!1243707 (= lambda!277008 lambda!276976)))

(declare-fun bs!1243708 () Bool)

(assert (= bs!1243708 (and d!1719972 d!1719958)))

(assert (=> bs!1243708 (= lambda!277008 lambda!276989)))

(assert (=> d!1719972 (= (inv!80949 setElem!34787) (forall!14489 (exprs!4965 setElem!34787) lambda!277008))))

(declare-fun bs!1243709 () Bool)

(assert (= bs!1243709 d!1719972))

(declare-fun m!6397652 () Bool)

(assert (=> bs!1243709 m!6397652))

(assert (=> setNonEmpty!34787 d!1719972))

(declare-fun b!5370166 () Bool)

(declare-fun e!3332264 () (InoxSet Context!8930))

(assert (=> b!5370166 (= e!3332264 (store ((as const (Array Context!8930 Bool)) false) lt!2186626 true))))

(declare-fun d!1719974 () Bool)

(declare-fun c!935729 () Bool)

(assert (=> d!1719974 (= c!935729 (and ((_ is ElementMatch!15081) (h!67866 (exprs!4965 (h!67867 zl!343)))) (= (c!935425 (h!67866 (exprs!4965 (h!67867 zl!343)))) (h!67868 s!2326))))))

(assert (=> d!1719974 (= (derivationStepZipperDown!529 (h!67866 (exprs!4965 (h!67867 zl!343))) lt!2186626 (h!67868 s!2326)) e!3332264)))

(declare-fun b!5370167 () Bool)

(declare-fun c!935726 () Bool)

(assert (=> b!5370167 (= c!935726 ((_ is Star!15081) (h!67866 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun e!3332261 () (InoxSet Context!8930))

(declare-fun e!3332262 () (InoxSet Context!8930))

(assert (=> b!5370167 (= e!3332261 e!3332262)))

(declare-fun c!935725 () Bool)

(declare-fun c!935728 () Bool)

(declare-fun call!384521 () (InoxSet Context!8930))

(declare-fun c!935727 () Bool)

(declare-fun bm!384512 () Bool)

(declare-fun call!384519 () List!61542)

(assert (=> bm!384512 (= call!384521 (derivationStepZipperDown!529 (ite c!935725 (regOne!30675 (h!67866 (exprs!4965 (h!67867 zl!343)))) (ite c!935728 (regTwo!30674 (h!67866 (exprs!4965 (h!67867 zl!343)))) (ite c!935727 (regOne!30674 (h!67866 (exprs!4965 (h!67867 zl!343)))) (reg!15410 (h!67866 (exprs!4965 (h!67867 zl!343))))))) (ite (or c!935725 c!935728) lt!2186626 (Context!8931 call!384519)) (h!67868 s!2326)))))

(declare-fun bm!384513 () Bool)

(declare-fun call!384520 () (InoxSet Context!8930))

(declare-fun call!384518 () (InoxSet Context!8930))

(assert (=> bm!384513 (= call!384520 call!384518)))

(declare-fun bm!384514 () Bool)

(declare-fun call!384517 () List!61542)

(assert (=> bm!384514 (= call!384517 ($colon$colon!1450 (exprs!4965 lt!2186626) (ite (or c!935728 c!935727) (regTwo!30674 (h!67866 (exprs!4965 (h!67867 zl!343)))) (h!67866 (exprs!4965 (h!67867 zl!343))))))))

(declare-fun b!5370168 () Bool)

(assert (=> b!5370168 (= e!3332262 ((as const (Array Context!8930 Bool)) false))))

(declare-fun bm!384515 () Bool)

(assert (=> bm!384515 (= call!384519 call!384517)))

(declare-fun b!5370169 () Bool)

(assert (=> b!5370169 (= e!3332262 call!384520)))

(declare-fun b!5370170 () Bool)

(declare-fun e!3332260 () (InoxSet Context!8930))

(assert (=> b!5370170 (= e!3332264 e!3332260)))

(assert (=> b!5370170 (= c!935725 ((_ is Union!15081) (h!67866 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun b!5370171 () Bool)

(declare-fun e!3332263 () (InoxSet Context!8930))

(assert (=> b!5370171 (= e!3332263 e!3332261)))

(assert (=> b!5370171 (= c!935727 ((_ is Concat!23926) (h!67866 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun b!5370172 () Bool)

(declare-fun e!3332259 () Bool)

(assert (=> b!5370172 (= e!3332259 (nullable!5250 (regOne!30674 (h!67866 (exprs!4965 (h!67867 zl!343))))))))

(declare-fun b!5370173 () Bool)

(declare-fun call!384522 () (InoxSet Context!8930))

(assert (=> b!5370173 (= e!3332260 ((_ map or) call!384521 call!384522))))

(declare-fun b!5370174 () Bool)

(assert (=> b!5370174 (= e!3332261 call!384520)))

(declare-fun bm!384516 () Bool)

(assert (=> bm!384516 (= call!384518 call!384521)))

(declare-fun bm!384517 () Bool)

(assert (=> bm!384517 (= call!384522 (derivationStepZipperDown!529 (ite c!935725 (regTwo!30675 (h!67866 (exprs!4965 (h!67867 zl!343)))) (regOne!30674 (h!67866 (exprs!4965 (h!67867 zl!343))))) (ite c!935725 lt!2186626 (Context!8931 call!384517)) (h!67868 s!2326)))))

(declare-fun b!5370175 () Bool)

(assert (=> b!5370175 (= c!935728 e!3332259)))

(declare-fun res!2279052 () Bool)

(assert (=> b!5370175 (=> (not res!2279052) (not e!3332259))))

(assert (=> b!5370175 (= res!2279052 ((_ is Concat!23926) (h!67866 (exprs!4965 (h!67867 zl!343)))))))

(assert (=> b!5370175 (= e!3332260 e!3332263)))

(declare-fun b!5370176 () Bool)

(assert (=> b!5370176 (= e!3332263 ((_ map or) call!384522 call!384518))))

(assert (= (and d!1719974 c!935729) b!5370166))

(assert (= (and d!1719974 (not c!935729)) b!5370170))

(assert (= (and b!5370170 c!935725) b!5370173))

(assert (= (and b!5370170 (not c!935725)) b!5370175))

(assert (= (and b!5370175 res!2279052) b!5370172))

(assert (= (and b!5370175 c!935728) b!5370176))

(assert (= (and b!5370175 (not c!935728)) b!5370171))

(assert (= (and b!5370171 c!935727) b!5370174))

(assert (= (and b!5370171 (not c!935727)) b!5370167))

(assert (= (and b!5370167 c!935726) b!5370169))

(assert (= (and b!5370167 (not c!935726)) b!5370168))

(assert (= (or b!5370174 b!5370169) bm!384515))

(assert (= (or b!5370174 b!5370169) bm!384513))

(assert (= (or b!5370176 bm!384515) bm!384514))

(assert (= (or b!5370176 bm!384513) bm!384516))

(assert (= (or b!5370173 b!5370176) bm!384517))

(assert (= (or b!5370173 bm!384516) bm!384512))

(declare-fun m!6397654 () Bool)

(assert (=> bm!384517 m!6397654))

(declare-fun m!6397656 () Bool)

(assert (=> bm!384514 m!6397656))

(declare-fun m!6397658 () Bool)

(assert (=> b!5370172 m!6397658))

(declare-fun m!6397660 () Bool)

(assert (=> bm!384512 m!6397660))

(assert (=> b!5370166 m!6396884))

(assert (=> b!5369153 d!1719974))

(declare-fun d!1719976 () Bool)

(assert (=> d!1719976 (= (nullable!5250 (h!67866 (exprs!4965 (h!67867 zl!343)))) (nullableFct!1552 (h!67866 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun bs!1243710 () Bool)

(assert (= bs!1243710 d!1719976))

(declare-fun m!6397662 () Bool)

(assert (=> bs!1243710 m!6397662))

(assert (=> b!5369153 d!1719976))

(declare-fun bm!384518 () Bool)

(declare-fun call!384523 () (InoxSet Context!8930))

(assert (=> bm!384518 (= call!384523 (derivationStepZipperDown!529 (h!67866 (exprs!4965 (Context!8931 (Cons!61418 (h!67866 (exprs!4965 (h!67867 zl!343))) (t!374765 (exprs!4965 (h!67867 zl!343))))))) (Context!8931 (t!374765 (exprs!4965 (Context!8931 (Cons!61418 (h!67866 (exprs!4965 (h!67867 zl!343))) (t!374765 (exprs!4965 (h!67867 zl!343)))))))) (h!67868 s!2326)))))

(declare-fun b!5370177 () Bool)

(declare-fun e!3332267 () Bool)

(assert (=> b!5370177 (= e!3332267 (nullable!5250 (h!67866 (exprs!4965 (Context!8931 (Cons!61418 (h!67866 (exprs!4965 (h!67867 zl!343))) (t!374765 (exprs!4965 (h!67867 zl!343)))))))))))

(declare-fun b!5370179 () Bool)

(declare-fun e!3332266 () (InoxSet Context!8930))

(declare-fun e!3332265 () (InoxSet Context!8930))

(assert (=> b!5370179 (= e!3332266 e!3332265)))

(declare-fun c!935730 () Bool)

(assert (=> b!5370179 (= c!935730 ((_ is Cons!61418) (exprs!4965 (Context!8931 (Cons!61418 (h!67866 (exprs!4965 (h!67867 zl!343))) (t!374765 (exprs!4965 (h!67867 zl!343))))))))))

(declare-fun d!1719978 () Bool)

(declare-fun c!935731 () Bool)

(assert (=> d!1719978 (= c!935731 e!3332267)))

(declare-fun res!2279053 () Bool)

(assert (=> d!1719978 (=> (not res!2279053) (not e!3332267))))

(assert (=> d!1719978 (= res!2279053 ((_ is Cons!61418) (exprs!4965 (Context!8931 (Cons!61418 (h!67866 (exprs!4965 (h!67867 zl!343))) (t!374765 (exprs!4965 (h!67867 zl!343))))))))))

(assert (=> d!1719978 (= (derivationStepZipperUp!453 (Context!8931 (Cons!61418 (h!67866 (exprs!4965 (h!67867 zl!343))) (t!374765 (exprs!4965 (h!67867 zl!343))))) (h!67868 s!2326)) e!3332266)))

(declare-fun b!5370178 () Bool)

(assert (=> b!5370178 (= e!3332265 call!384523)))

(declare-fun b!5370180 () Bool)

(assert (=> b!5370180 (= e!3332265 ((as const (Array Context!8930 Bool)) false))))

(declare-fun b!5370181 () Bool)

(assert (=> b!5370181 (= e!3332266 ((_ map or) call!384523 (derivationStepZipperUp!453 (Context!8931 (t!374765 (exprs!4965 (Context!8931 (Cons!61418 (h!67866 (exprs!4965 (h!67867 zl!343))) (t!374765 (exprs!4965 (h!67867 zl!343)))))))) (h!67868 s!2326))))))

(assert (= (and d!1719978 res!2279053) b!5370177))

(assert (= (and d!1719978 c!935731) b!5370181))

(assert (= (and d!1719978 (not c!935731)) b!5370179))

(assert (= (and b!5370179 c!935730) b!5370178))

(assert (= (and b!5370179 (not c!935730)) b!5370180))

(assert (= (or b!5370181 b!5370178) bm!384518))

(declare-fun m!6397664 () Bool)

(assert (=> bm!384518 m!6397664))

(declare-fun m!6397666 () Bool)

(assert (=> b!5370177 m!6397666))

(declare-fun m!6397668 () Bool)

(assert (=> b!5370181 m!6397668))

(assert (=> b!5369153 d!1719978))

(declare-fun d!1719980 () Bool)

(assert (=> d!1719980 (= (flatMap!808 z!1189 lambda!276914) (choose!40322 z!1189 lambda!276914))))

(declare-fun bs!1243711 () Bool)

(assert (= bs!1243711 d!1719980))

(declare-fun m!6397670 () Bool)

(assert (=> bs!1243711 m!6397670))

(assert (=> b!5369153 d!1719980))

(assert (=> b!5369153 d!1719838))

(declare-fun bm!384519 () Bool)

(declare-fun call!384524 () (InoxSet Context!8930))

(assert (=> bm!384519 (= call!384524 (derivationStepZipperDown!529 (h!67866 (exprs!4965 (h!67867 zl!343))) (Context!8931 (t!374765 (exprs!4965 (h!67867 zl!343)))) (h!67868 s!2326)))))

(declare-fun b!5370182 () Bool)

(declare-fun e!3332270 () Bool)

(assert (=> b!5370182 (= e!3332270 (nullable!5250 (h!67866 (exprs!4965 (h!67867 zl!343)))))))

(declare-fun b!5370184 () Bool)

(declare-fun e!3332269 () (InoxSet Context!8930))

(declare-fun e!3332268 () (InoxSet Context!8930))

(assert (=> b!5370184 (= e!3332269 e!3332268)))

(declare-fun c!935732 () Bool)

(assert (=> b!5370184 (= c!935732 ((_ is Cons!61418) (exprs!4965 (h!67867 zl!343))))))

(declare-fun d!1719982 () Bool)

(declare-fun c!935733 () Bool)

(assert (=> d!1719982 (= c!935733 e!3332270)))

(declare-fun res!2279054 () Bool)

(assert (=> d!1719982 (=> (not res!2279054) (not e!3332270))))

(assert (=> d!1719982 (= res!2279054 ((_ is Cons!61418) (exprs!4965 (h!67867 zl!343))))))

(assert (=> d!1719982 (= (derivationStepZipperUp!453 (h!67867 zl!343) (h!67868 s!2326)) e!3332269)))

(declare-fun b!5370183 () Bool)

(assert (=> b!5370183 (= e!3332268 call!384524)))

(declare-fun b!5370185 () Bool)

(assert (=> b!5370185 (= e!3332268 ((as const (Array Context!8930 Bool)) false))))

(declare-fun b!5370186 () Bool)

(assert (=> b!5370186 (= e!3332269 ((_ map or) call!384524 (derivationStepZipperUp!453 (Context!8931 (t!374765 (exprs!4965 (h!67867 zl!343)))) (h!67868 s!2326))))))

(assert (= (and d!1719982 res!2279054) b!5370182))

(assert (= (and d!1719982 c!935733) b!5370186))

(assert (= (and d!1719982 (not c!935733)) b!5370184))

(assert (= (and b!5370184 c!935732) b!5370183))

(assert (= (and b!5370184 (not c!935732)) b!5370185))

(assert (= (or b!5370186 b!5370183) bm!384519))

(declare-fun m!6397672 () Bool)

(assert (=> bm!384519 m!6397672))

(assert (=> b!5370182 m!6396840))

(declare-fun m!6397674 () Bool)

(assert (=> b!5370186 m!6397674))

(assert (=> b!5369153 d!1719982))

(declare-fun d!1719984 () Bool)

(assert (=> d!1719984 (= (flatMap!808 z!1189 lambda!276914) (dynLambda!24260 lambda!276914 (h!67867 zl!343)))))

(declare-fun lt!2186804 () Unit!153842)

(assert (=> d!1719984 (= lt!2186804 (choose!40323 z!1189 (h!67867 zl!343) lambda!276914))))

(assert (=> d!1719984 (= z!1189 (store ((as const (Array Context!8930 Bool)) false) (h!67867 zl!343) true))))

(assert (=> d!1719984 (= (lemmaFlatMapOnSingletonSet!340 z!1189 (h!67867 zl!343) lambda!276914) lt!2186804)))

(declare-fun b_lambda!205873 () Bool)

(assert (=> (not b_lambda!205873) (not d!1719984)))

(declare-fun bs!1243712 () Bool)

(assert (= bs!1243712 d!1719984))

(assert (=> bs!1243712 m!6396834))

(declare-fun m!6397676 () Bool)

(assert (=> bs!1243712 m!6397676))

(declare-fun m!6397678 () Bool)

(assert (=> bs!1243712 m!6397678))

(declare-fun m!6397680 () Bool)

(assert (=> bs!1243712 m!6397680))

(assert (=> b!5369153 d!1719984))

(declare-fun d!1719986 () Bool)

(assert (=> d!1719986 (= (isEmpty!33399 (t!374765 (exprs!4965 (h!67867 zl!343)))) ((_ is Nil!61418) (t!374765 (exprs!4965 (h!67867 zl!343)))))))

(assert (=> b!5369170 d!1719986))

(declare-fun d!1719988 () Bool)

(assert (=> d!1719988 (= (flatMap!808 lt!2186615 lambda!276914) (choose!40322 lt!2186615 lambda!276914))))

(declare-fun bs!1243713 () Bool)

(assert (= bs!1243713 d!1719988))

(declare-fun m!6397682 () Bool)

(assert (=> bs!1243713 m!6397682))

(assert (=> b!5369171 d!1719988))

(declare-fun bm!384520 () Bool)

(declare-fun call!384525 () (InoxSet Context!8930))

(assert (=> bm!384520 (= call!384525 (derivationStepZipperDown!529 (h!67866 (exprs!4965 lt!2186610)) (Context!8931 (t!374765 (exprs!4965 lt!2186610))) (h!67868 s!2326)))))

(declare-fun b!5370187 () Bool)

(declare-fun e!3332273 () Bool)

(assert (=> b!5370187 (= e!3332273 (nullable!5250 (h!67866 (exprs!4965 lt!2186610))))))

(declare-fun b!5370189 () Bool)

(declare-fun e!3332272 () (InoxSet Context!8930))

(declare-fun e!3332271 () (InoxSet Context!8930))

(assert (=> b!5370189 (= e!3332272 e!3332271)))

(declare-fun c!935734 () Bool)

(assert (=> b!5370189 (= c!935734 ((_ is Cons!61418) (exprs!4965 lt!2186610)))))

(declare-fun d!1719990 () Bool)

(declare-fun c!935735 () Bool)

(assert (=> d!1719990 (= c!935735 e!3332273)))

(declare-fun res!2279055 () Bool)

(assert (=> d!1719990 (=> (not res!2279055) (not e!3332273))))

(assert (=> d!1719990 (= res!2279055 ((_ is Cons!61418) (exprs!4965 lt!2186610)))))

(assert (=> d!1719990 (= (derivationStepZipperUp!453 lt!2186610 (h!67868 s!2326)) e!3332272)))

(declare-fun b!5370188 () Bool)

(assert (=> b!5370188 (= e!3332271 call!384525)))

(declare-fun b!5370190 () Bool)

(assert (=> b!5370190 (= e!3332271 ((as const (Array Context!8930 Bool)) false))))

(declare-fun b!5370191 () Bool)

(assert (=> b!5370191 (= e!3332272 ((_ map or) call!384525 (derivationStepZipperUp!453 (Context!8931 (t!374765 (exprs!4965 lt!2186610))) (h!67868 s!2326))))))

(assert (= (and d!1719990 res!2279055) b!5370187))

(assert (= (and d!1719990 c!935735) b!5370191))

(assert (= (and d!1719990 (not c!935735)) b!5370189))

(assert (= (and b!5370189 c!935734) b!5370188))

(assert (= (and b!5370189 (not c!935734)) b!5370190))

(assert (= (or b!5370191 b!5370188) bm!384520))

(declare-fun m!6397684 () Bool)

(assert (=> bm!384520 m!6397684))

(declare-fun m!6397686 () Bool)

(assert (=> b!5370187 m!6397686))

(declare-fun m!6397688 () Bool)

(assert (=> b!5370191 m!6397688))

(assert (=> b!5369171 d!1719990))

(declare-fun d!1719992 () Bool)

(assert (=> d!1719992 (= (flatMap!808 lt!2186615 lambda!276914) (dynLambda!24260 lambda!276914 lt!2186610))))

(declare-fun lt!2186805 () Unit!153842)

(assert (=> d!1719992 (= lt!2186805 (choose!40323 lt!2186615 lt!2186610 lambda!276914))))

(assert (=> d!1719992 (= lt!2186615 (store ((as const (Array Context!8930 Bool)) false) lt!2186610 true))))

(assert (=> d!1719992 (= (lemmaFlatMapOnSingletonSet!340 lt!2186615 lt!2186610 lambda!276914) lt!2186805)))

(declare-fun b_lambda!205875 () Bool)

(assert (=> (not b_lambda!205875) (not d!1719992)))

(declare-fun bs!1243714 () Bool)

(assert (= bs!1243714 d!1719992))

(assert (=> bs!1243714 m!6396792))

(declare-fun m!6397690 () Bool)

(assert (=> bs!1243714 m!6397690))

(declare-fun m!6397692 () Bool)

(assert (=> bs!1243714 m!6397692))

(assert (=> bs!1243714 m!6396800))

(assert (=> b!5369171 d!1719992))

(declare-fun bs!1243715 () Bool)

(declare-fun d!1719994 () Bool)

(assert (= bs!1243715 (and d!1719994 b!5369153)))

(declare-fun lambda!277009 () Int)

(assert (=> bs!1243715 (= lambda!277009 lambda!276914)))

(declare-fun bs!1243716 () Bool)

(assert (= bs!1243716 (and d!1719994 d!1719834)))

(assert (=> bs!1243716 (= lambda!277009 lambda!276960)))

(assert (=> d!1719994 true))

(assert (=> d!1719994 (= (derivationStepZipper!1320 lt!2186615 (h!67868 s!2326)) (flatMap!808 lt!2186615 lambda!277009))))

(declare-fun bs!1243717 () Bool)

(assert (= bs!1243717 d!1719994))

(declare-fun m!6397694 () Bool)

(assert (=> bs!1243717 m!6397694))

(assert (=> b!5369171 d!1719994))

(declare-fun bs!1243718 () Bool)

(declare-fun d!1719996 () Bool)

(assert (= bs!1243718 (and d!1719996 d!1719910)))

(declare-fun lambda!277012 () Int)

(assert (=> bs!1243718 (= lambda!277012 lambda!276973)))

(declare-fun bs!1243719 () Bool)

(assert (= bs!1243719 (and d!1719996 d!1719926)))

(assert (=> bs!1243719 (= lambda!277012 lambda!276976)))

(declare-fun bs!1243720 () Bool)

(assert (= bs!1243720 (and d!1719996 d!1719958)))

(assert (=> bs!1243720 (= lambda!277012 lambda!276989)))

(declare-fun bs!1243721 () Bool)

(assert (= bs!1243721 (and d!1719996 b!5369181)))

(assert (=> bs!1243721 (= lambda!277012 lambda!276917)))

(declare-fun bs!1243722 () Bool)

(assert (= bs!1243722 (and d!1719996 d!1719972)))

(assert (=> bs!1243722 (= lambda!277012 lambda!277008)))

(declare-fun b!5370212 () Bool)

(declare-fun e!3332287 () Bool)

(declare-fun lt!2186808 () Regex!15081)

(assert (=> b!5370212 (= e!3332287 (= lt!2186808 (head!11519 (unfocusZipperList!523 zl!343))))))

(declare-fun b!5370214 () Bool)

(declare-fun e!3332286 () Bool)

(assert (=> b!5370214 (= e!3332286 e!3332287)))

(declare-fun c!935746 () Bool)

(assert (=> b!5370214 (= c!935746 (isEmpty!33399 (tail!10616 (unfocusZipperList!523 zl!343))))))

(declare-fun b!5370215 () Bool)

(declare-fun isUnion!375 (Regex!15081) Bool)

(assert (=> b!5370215 (= e!3332287 (isUnion!375 lt!2186808))))

(declare-fun b!5370216 () Bool)

(declare-fun e!3332289 () Regex!15081)

(declare-fun e!3332288 () Regex!15081)

(assert (=> b!5370216 (= e!3332289 e!3332288)))

(declare-fun c!935747 () Bool)

(assert (=> b!5370216 (= c!935747 ((_ is Cons!61418) (unfocusZipperList!523 zl!343)))))

(declare-fun b!5370217 () Bool)

(assert (=> b!5370217 (= e!3332288 (Union!15081 (h!67866 (unfocusZipperList!523 zl!343)) (generalisedUnion!1010 (t!374765 (unfocusZipperList!523 zl!343)))))))

(declare-fun b!5370218 () Bool)

(assert (=> b!5370218 (= e!3332288 EmptyLang!15081)))

(declare-fun b!5370219 () Bool)

(declare-fun e!3332291 () Bool)

(assert (=> b!5370219 (= e!3332291 (isEmpty!33399 (t!374765 (unfocusZipperList!523 zl!343))))))

(declare-fun b!5370213 () Bool)

(declare-fun isEmptyLang!943 (Regex!15081) Bool)

(assert (=> b!5370213 (= e!3332286 (isEmptyLang!943 lt!2186808))))

(declare-fun e!3332290 () Bool)

(assert (=> d!1719996 e!3332290))

(declare-fun res!2279061 () Bool)

(assert (=> d!1719996 (=> (not res!2279061) (not e!3332290))))

(assert (=> d!1719996 (= res!2279061 (validRegex!6817 lt!2186808))))

(assert (=> d!1719996 (= lt!2186808 e!3332289)))

(declare-fun c!935745 () Bool)

(assert (=> d!1719996 (= c!935745 e!3332291)))

(declare-fun res!2279060 () Bool)

(assert (=> d!1719996 (=> (not res!2279060) (not e!3332291))))

(assert (=> d!1719996 (= res!2279060 ((_ is Cons!61418) (unfocusZipperList!523 zl!343)))))

(assert (=> d!1719996 (forall!14489 (unfocusZipperList!523 zl!343) lambda!277012)))

(assert (=> d!1719996 (= (generalisedUnion!1010 (unfocusZipperList!523 zl!343)) lt!2186808)))

(declare-fun b!5370220 () Bool)

(assert (=> b!5370220 (= e!3332289 (h!67866 (unfocusZipperList!523 zl!343)))))

(declare-fun b!5370221 () Bool)

(assert (=> b!5370221 (= e!3332290 e!3332286)))

(declare-fun c!935744 () Bool)

(assert (=> b!5370221 (= c!935744 (isEmpty!33399 (unfocusZipperList!523 zl!343)))))

(assert (= (and d!1719996 res!2279060) b!5370219))

(assert (= (and d!1719996 c!935745) b!5370220))

(assert (= (and d!1719996 (not c!935745)) b!5370216))

(assert (= (and b!5370216 c!935747) b!5370217))

(assert (= (and b!5370216 (not c!935747)) b!5370218))

(assert (= (and d!1719996 res!2279061) b!5370221))

(assert (= (and b!5370221 c!935744) b!5370213))

(assert (= (and b!5370221 (not c!935744)) b!5370214))

(assert (= (and b!5370214 c!935746) b!5370212))

(assert (= (and b!5370214 (not c!935746)) b!5370215))

(declare-fun m!6397696 () Bool)

(assert (=> b!5370219 m!6397696))

(declare-fun m!6397698 () Bool)

(assert (=> b!5370215 m!6397698))

(assert (=> b!5370212 m!6396772))

(declare-fun m!6397700 () Bool)

(assert (=> b!5370212 m!6397700))

(assert (=> b!5370221 m!6396772))

(declare-fun m!6397702 () Bool)

(assert (=> b!5370221 m!6397702))

(declare-fun m!6397704 () Bool)

(assert (=> d!1719996 m!6397704))

(assert (=> d!1719996 m!6396772))

(declare-fun m!6397706 () Bool)

(assert (=> d!1719996 m!6397706))

(declare-fun m!6397708 () Bool)

(assert (=> b!5370213 m!6397708))

(declare-fun m!6397710 () Bool)

(assert (=> b!5370217 m!6397710))

(assert (=> b!5370214 m!6396772))

(declare-fun m!6397712 () Bool)

(assert (=> b!5370214 m!6397712))

(assert (=> b!5370214 m!6397712))

(declare-fun m!6397714 () Bool)

(assert (=> b!5370214 m!6397714))

(assert (=> b!5369167 d!1719996))

(declare-fun bs!1243723 () Bool)

(declare-fun d!1719998 () Bool)

(assert (= bs!1243723 (and d!1719998 d!1719910)))

(declare-fun lambda!277015 () Int)

(assert (=> bs!1243723 (= lambda!277015 lambda!276973)))

(declare-fun bs!1243724 () Bool)

(assert (= bs!1243724 (and d!1719998 d!1719926)))

(assert (=> bs!1243724 (= lambda!277015 lambda!276976)))

(declare-fun bs!1243725 () Bool)

(assert (= bs!1243725 (and d!1719998 d!1719996)))

(assert (=> bs!1243725 (= lambda!277015 lambda!277012)))

(declare-fun bs!1243726 () Bool)

(assert (= bs!1243726 (and d!1719998 d!1719958)))

(assert (=> bs!1243726 (= lambda!277015 lambda!276989)))

(declare-fun bs!1243727 () Bool)

(assert (= bs!1243727 (and d!1719998 b!5369181)))

(assert (=> bs!1243727 (= lambda!277015 lambda!276917)))

(declare-fun bs!1243728 () Bool)

(assert (= bs!1243728 (and d!1719998 d!1719972)))

(assert (=> bs!1243728 (= lambda!277015 lambda!277008)))

(declare-fun lt!2186811 () List!61542)

(assert (=> d!1719998 (forall!14489 lt!2186811 lambda!277015)))

(declare-fun e!3332294 () List!61542)

(assert (=> d!1719998 (= lt!2186811 e!3332294)))

(declare-fun c!935750 () Bool)

(assert (=> d!1719998 (= c!935750 ((_ is Cons!61419) zl!343))))

(assert (=> d!1719998 (= (unfocusZipperList!523 zl!343) lt!2186811)))

(declare-fun b!5370226 () Bool)

(assert (=> b!5370226 (= e!3332294 (Cons!61418 (generalisedConcat!750 (exprs!4965 (h!67867 zl!343))) (unfocusZipperList!523 (t!374766 zl!343))))))

(declare-fun b!5370227 () Bool)

(assert (=> b!5370227 (= e!3332294 Nil!61418)))

(assert (= (and d!1719998 c!935750) b!5370226))

(assert (= (and d!1719998 (not c!935750)) b!5370227))

(declare-fun m!6397716 () Bool)

(assert (=> d!1719998 m!6397716))

(assert (=> b!5370226 m!6396750))

(declare-fun m!6397718 () Bool)

(assert (=> b!5370226 m!6397718))

(assert (=> b!5369167 d!1719998))

(declare-fun d!1720000 () Bool)

(declare-fun lt!2186812 () Regex!15081)

(assert (=> d!1720000 (validRegex!6817 lt!2186812)))

(assert (=> d!1720000 (= lt!2186812 (generalisedUnion!1010 (unfocusZipperList!523 (Cons!61419 lt!2186643 Nil!61419))))))

(assert (=> d!1720000 (= (unfocusZipper!823 (Cons!61419 lt!2186643 Nil!61419)) lt!2186812)))

(declare-fun bs!1243729 () Bool)

(assert (= bs!1243729 d!1720000))

(declare-fun m!6397720 () Bool)

(assert (=> bs!1243729 m!6397720))

(declare-fun m!6397722 () Bool)

(assert (=> bs!1243729 m!6397722))

(assert (=> bs!1243729 m!6397722))

(declare-fun m!6397724 () Bool)

(assert (=> bs!1243729 m!6397724))

(assert (=> b!5369147 d!1720000))

(declare-fun bm!384521 () Bool)

(declare-fun call!384526 () (InoxSet Context!8930))

(assert (=> bm!384521 (= call!384526 (derivationStepZipperDown!529 (h!67866 (exprs!4965 lt!2186623)) (Context!8931 (t!374765 (exprs!4965 lt!2186623))) (h!67868 s!2326)))))

(declare-fun b!5370228 () Bool)

(declare-fun e!3332297 () Bool)

(assert (=> b!5370228 (= e!3332297 (nullable!5250 (h!67866 (exprs!4965 lt!2186623))))))

(declare-fun b!5370230 () Bool)

(declare-fun e!3332296 () (InoxSet Context!8930))

(declare-fun e!3332295 () (InoxSet Context!8930))

(assert (=> b!5370230 (= e!3332296 e!3332295)))

(declare-fun c!935751 () Bool)

(assert (=> b!5370230 (= c!935751 ((_ is Cons!61418) (exprs!4965 lt!2186623)))))

(declare-fun d!1720002 () Bool)

(declare-fun c!935752 () Bool)

(assert (=> d!1720002 (= c!935752 e!3332297)))

(declare-fun res!2279062 () Bool)

(assert (=> d!1720002 (=> (not res!2279062) (not e!3332297))))

(assert (=> d!1720002 (= res!2279062 ((_ is Cons!61418) (exprs!4965 lt!2186623)))))

(assert (=> d!1720002 (= (derivationStepZipperUp!453 lt!2186623 (h!67868 s!2326)) e!3332296)))

(declare-fun b!5370229 () Bool)

(assert (=> b!5370229 (= e!3332295 call!384526)))

(declare-fun b!5370231 () Bool)

(assert (=> b!5370231 (= e!3332295 ((as const (Array Context!8930 Bool)) false))))

(declare-fun b!5370232 () Bool)

(assert (=> b!5370232 (= e!3332296 ((_ map or) call!384526 (derivationStepZipperUp!453 (Context!8931 (t!374765 (exprs!4965 lt!2186623))) (h!67868 s!2326))))))

(assert (= (and d!1720002 res!2279062) b!5370228))

(assert (= (and d!1720002 c!935752) b!5370232))

(assert (= (and d!1720002 (not c!935752)) b!5370230))

(assert (= (and b!5370230 c!935751) b!5370229))

(assert (= (and b!5370230 (not c!935751)) b!5370231))

(assert (= (or b!5370232 b!5370229) bm!384521))

(declare-fun m!6397726 () Bool)

(assert (=> bm!384521 m!6397726))

(declare-fun m!6397728 () Bool)

(assert (=> b!5370228 m!6397728))

(declare-fun m!6397730 () Bool)

(assert (=> b!5370232 m!6397730))

(assert (=> b!5369168 d!1720002))

(declare-fun bm!384522 () Bool)

(declare-fun call!384527 () (InoxSet Context!8930))

(assert (=> bm!384522 (= call!384527 (derivationStepZipperDown!529 (h!67866 (exprs!4965 lt!2186643)) (Context!8931 (t!374765 (exprs!4965 lt!2186643))) (h!67868 s!2326)))))

(declare-fun b!5370233 () Bool)

(declare-fun e!3332300 () Bool)

(assert (=> b!5370233 (= e!3332300 (nullable!5250 (h!67866 (exprs!4965 lt!2186643))))))

(declare-fun b!5370235 () Bool)

(declare-fun e!3332299 () (InoxSet Context!8930))

(declare-fun e!3332298 () (InoxSet Context!8930))

(assert (=> b!5370235 (= e!3332299 e!3332298)))

(declare-fun c!935753 () Bool)

(assert (=> b!5370235 (= c!935753 ((_ is Cons!61418) (exprs!4965 lt!2186643)))))

(declare-fun d!1720004 () Bool)

(declare-fun c!935754 () Bool)

(assert (=> d!1720004 (= c!935754 e!3332300)))

(declare-fun res!2279063 () Bool)

(assert (=> d!1720004 (=> (not res!2279063) (not e!3332300))))

(assert (=> d!1720004 (= res!2279063 ((_ is Cons!61418) (exprs!4965 lt!2186643)))))

(assert (=> d!1720004 (= (derivationStepZipperUp!453 lt!2186643 (h!67868 s!2326)) e!3332299)))

(declare-fun b!5370234 () Bool)

(assert (=> b!5370234 (= e!3332298 call!384527)))

(declare-fun b!5370236 () Bool)

(assert (=> b!5370236 (= e!3332298 ((as const (Array Context!8930 Bool)) false))))

(declare-fun b!5370237 () Bool)

(assert (=> b!5370237 (= e!3332299 ((_ map or) call!384527 (derivationStepZipperUp!453 (Context!8931 (t!374765 (exprs!4965 lt!2186643))) (h!67868 s!2326))))))

(assert (= (and d!1720004 res!2279063) b!5370233))

(assert (= (and d!1720004 c!935754) b!5370237))

(assert (= (and d!1720004 (not c!935754)) b!5370235))

(assert (= (and b!5370235 c!935753) b!5370234))

(assert (= (and b!5370235 (not c!935753)) b!5370236))

(assert (= (or b!5370237 b!5370234) bm!384522))

(declare-fun m!6397732 () Bool)

(assert (=> bm!384522 m!6397732))

(declare-fun m!6397734 () Bool)

(assert (=> b!5370233 m!6397734))

(declare-fun m!6397736 () Bool)

(assert (=> b!5370237 m!6397736))

(assert (=> b!5369168 d!1720004))

(declare-fun d!1720006 () Bool)

(assert (=> d!1720006 (= (flatMap!808 lt!2186619 lambda!276914) (dynLambda!24260 lambda!276914 lt!2186623))))

(declare-fun lt!2186813 () Unit!153842)

(assert (=> d!1720006 (= lt!2186813 (choose!40323 lt!2186619 lt!2186623 lambda!276914))))

(assert (=> d!1720006 (= lt!2186619 (store ((as const (Array Context!8930 Bool)) false) lt!2186623 true))))

(assert (=> d!1720006 (= (lemmaFlatMapOnSingletonSet!340 lt!2186619 lt!2186623 lambda!276914) lt!2186813)))

(declare-fun b_lambda!205877 () Bool)

(assert (=> (not b_lambda!205877) (not d!1720006)))

(declare-fun bs!1243730 () Bool)

(assert (= bs!1243730 d!1720006))

(assert (=> bs!1243730 m!6396858))

(declare-fun m!6397738 () Bool)

(assert (=> bs!1243730 m!6397738))

(declare-fun m!6397740 () Bool)

(assert (=> bs!1243730 m!6397740))

(assert (=> bs!1243730 m!6396854))

(assert (=> b!5369168 d!1720006))

(declare-fun d!1720008 () Bool)

(assert (=> d!1720008 (= (flatMap!808 lt!2186619 lambda!276914) (choose!40322 lt!2186619 lambda!276914))))

(declare-fun bs!1243731 () Bool)

(assert (= bs!1243731 d!1720008))

(declare-fun m!6397742 () Bool)

(assert (=> bs!1243731 m!6397742))

(assert (=> b!5369168 d!1720008))

(declare-fun d!1720010 () Bool)

(assert (=> d!1720010 (= (flatMap!808 lt!2186621 lambda!276914) (dynLambda!24260 lambda!276914 lt!2186643))))

(declare-fun lt!2186814 () Unit!153842)

(assert (=> d!1720010 (= lt!2186814 (choose!40323 lt!2186621 lt!2186643 lambda!276914))))

(assert (=> d!1720010 (= lt!2186621 (store ((as const (Array Context!8930 Bool)) false) lt!2186643 true))))

(assert (=> d!1720010 (= (lemmaFlatMapOnSingletonSet!340 lt!2186621 lt!2186643 lambda!276914) lt!2186814)))

(declare-fun b_lambda!205879 () Bool)

(assert (=> (not b_lambda!205879) (not d!1720010)))

(declare-fun bs!1243732 () Bool)

(assert (= bs!1243732 d!1720010))

(assert (=> bs!1243732 m!6396856))

(declare-fun m!6397744 () Bool)

(assert (=> bs!1243732 m!6397744))

(declare-fun m!6397746 () Bool)

(assert (=> bs!1243732 m!6397746))

(assert (=> bs!1243732 m!6396862))

(assert (=> b!5369168 d!1720010))

(declare-fun d!1720012 () Bool)

(declare-fun lt!2186815 () Regex!15081)

(assert (=> d!1720012 (validRegex!6817 lt!2186815)))

(assert (=> d!1720012 (= lt!2186815 (generalisedUnion!1010 (unfocusZipperList!523 (Cons!61419 lt!2186623 Nil!61419))))))

(assert (=> d!1720012 (= (unfocusZipper!823 (Cons!61419 lt!2186623 Nil!61419)) lt!2186815)))

(declare-fun bs!1243733 () Bool)

(assert (= bs!1243733 d!1720012))

(declare-fun m!6397748 () Bool)

(assert (=> bs!1243733 m!6397748))

(declare-fun m!6397750 () Bool)

(assert (=> bs!1243733 m!6397750))

(assert (=> bs!1243733 m!6397750))

(declare-fun m!6397752 () Bool)

(assert (=> bs!1243733 m!6397752))

(assert (=> b!5369168 d!1720012))

(declare-fun d!1720014 () Bool)

(assert (=> d!1720014 (= (flatMap!808 lt!2186621 lambda!276914) (choose!40322 lt!2186621 lambda!276914))))

(declare-fun bs!1243734 () Bool)

(assert (= bs!1243734 d!1720014))

(declare-fun m!6397754 () Bool)

(assert (=> bs!1243734 m!6397754))

(assert (=> b!5369168 d!1720014))

(declare-fun e!3332303 () Bool)

(declare-fun d!1720016 () Bool)

(assert (=> d!1720016 (= (matchZipper!1325 ((_ map or) lt!2186625 lt!2186620) (t!374767 s!2326)) e!3332303)))

(declare-fun res!2279066 () Bool)

(assert (=> d!1720016 (=> res!2279066 e!3332303)))

(assert (=> d!1720016 (= res!2279066 (matchZipper!1325 lt!2186625 (t!374767 s!2326)))))

(declare-fun lt!2186818 () Unit!153842)

(declare-fun choose!40333 ((InoxSet Context!8930) (InoxSet Context!8930) List!61544) Unit!153842)

(assert (=> d!1720016 (= lt!2186818 (choose!40333 lt!2186625 lt!2186620 (t!374767 s!2326)))))

(assert (=> d!1720016 (= (lemmaZipperConcatMatchesSameAsBothZippers!318 lt!2186625 lt!2186620 (t!374767 s!2326)) lt!2186818)))

(declare-fun b!5370240 () Bool)

(assert (=> b!5370240 (= e!3332303 (matchZipper!1325 lt!2186620 (t!374767 s!2326)))))

(assert (= (and d!1720016 (not res!2279066)) b!5370240))

(assert (=> d!1720016 m!6396898))

(assert (=> d!1720016 m!6396896))

(declare-fun m!6397756 () Bool)

(assert (=> d!1720016 m!6397756))

(assert (=> b!5370240 m!6396830))

(assert (=> b!5369148 d!1720016))

(declare-fun d!1720018 () Bool)

(declare-fun c!935755 () Bool)

(assert (=> d!1720018 (= c!935755 (isEmpty!33400 (t!374767 s!2326)))))

(declare-fun e!3332304 () Bool)

(assert (=> d!1720018 (= (matchZipper!1325 lt!2186625 (t!374767 s!2326)) e!3332304)))

(declare-fun b!5370241 () Bool)

(assert (=> b!5370241 (= e!3332304 (nullableZipper!1399 lt!2186625))))

(declare-fun b!5370242 () Bool)

(assert (=> b!5370242 (= e!3332304 (matchZipper!1325 (derivationStepZipper!1320 lt!2186625 (head!11518 (t!374767 s!2326))) (tail!10615 (t!374767 s!2326))))))

(assert (= (and d!1720018 c!935755) b!5370241))

(assert (= (and d!1720018 (not c!935755)) b!5370242))

(assert (=> d!1720018 m!6397258))

(declare-fun m!6397758 () Bool)

(assert (=> b!5370241 m!6397758))

(assert (=> b!5370242 m!6397264))

(assert (=> b!5370242 m!6397264))

(declare-fun m!6397760 () Bool)

(assert (=> b!5370242 m!6397760))

(assert (=> b!5370242 m!6397274))

(assert (=> b!5370242 m!6397760))

(assert (=> b!5370242 m!6397274))

(declare-fun m!6397762 () Bool)

(assert (=> b!5370242 m!6397762))

(assert (=> b!5369148 d!1720018))

(declare-fun d!1720020 () Bool)

(declare-fun c!935756 () Bool)

(assert (=> d!1720020 (= c!935756 (isEmpty!33400 (t!374767 s!2326)))))

(declare-fun e!3332305 () Bool)

(assert (=> d!1720020 (= (matchZipper!1325 ((_ map or) lt!2186625 lt!2186620) (t!374767 s!2326)) e!3332305)))

(declare-fun b!5370243 () Bool)

(assert (=> b!5370243 (= e!3332305 (nullableZipper!1399 ((_ map or) lt!2186625 lt!2186620)))))

(declare-fun b!5370244 () Bool)

(assert (=> b!5370244 (= e!3332305 (matchZipper!1325 (derivationStepZipper!1320 ((_ map or) lt!2186625 lt!2186620) (head!11518 (t!374767 s!2326))) (tail!10615 (t!374767 s!2326))))))

(assert (= (and d!1720020 c!935756) b!5370243))

(assert (= (and d!1720020 (not c!935756)) b!5370244))

(assert (=> d!1720020 m!6397258))

(declare-fun m!6397764 () Bool)

(assert (=> b!5370243 m!6397764))

(assert (=> b!5370244 m!6397264))

(assert (=> b!5370244 m!6397264))

(declare-fun m!6397766 () Bool)

(assert (=> b!5370244 m!6397766))

(assert (=> b!5370244 m!6397274))

(assert (=> b!5370244 m!6397766))

(assert (=> b!5370244 m!6397274))

(declare-fun m!6397768 () Bool)

(assert (=> b!5370244 m!6397768))

(assert (=> b!5369148 d!1720020))

(declare-fun b!5370245 () Bool)

(declare-fun e!3332312 () Bool)

(declare-fun e!3332306 () Bool)

(assert (=> b!5370245 (= e!3332312 e!3332306)))

(declare-fun c!935757 () Bool)

(assert (=> b!5370245 (= c!935757 ((_ is EmptyLang!15081) lt!2186628))))

(declare-fun b!5370246 () Bool)

(declare-fun e!3332311 () Bool)

(assert (=> b!5370246 (= e!3332311 (matchR!7266 (derivativeStep!4221 lt!2186628 (head!11518 s!2326)) (tail!10615 s!2326)))))

(declare-fun b!5370247 () Bool)

(declare-fun res!2279071 () Bool)

(declare-fun e!3332310 () Bool)

(assert (=> b!5370247 (=> (not res!2279071) (not e!3332310))))

(assert (=> b!5370247 (= res!2279071 (isEmpty!33400 (tail!10615 s!2326)))))

(declare-fun b!5370248 () Bool)

(declare-fun res!2279069 () Bool)

(assert (=> b!5370248 (=> (not res!2279069) (not e!3332310))))

(declare-fun call!384528 () Bool)

(assert (=> b!5370248 (= res!2279069 (not call!384528))))

(declare-fun b!5370249 () Bool)

(declare-fun lt!2186819 () Bool)

(assert (=> b!5370249 (= e!3332312 (= lt!2186819 call!384528))))

(declare-fun b!5370250 () Bool)

(assert (=> b!5370250 (= e!3332310 (= (head!11518 s!2326) (c!935425 lt!2186628)))))

(declare-fun b!5370251 () Bool)

(assert (=> b!5370251 (= e!3332306 (not lt!2186819))))

(declare-fun b!5370252 () Bool)

(assert (=> b!5370252 (= e!3332311 (nullable!5250 lt!2186628))))

(declare-fun b!5370253 () Bool)

(declare-fun res!2279070 () Bool)

(declare-fun e!3332309 () Bool)

(assert (=> b!5370253 (=> res!2279070 e!3332309)))

(assert (=> b!5370253 (= res!2279070 e!3332310)))

(declare-fun res!2279068 () Bool)

(assert (=> b!5370253 (=> (not res!2279068) (not e!3332310))))

(assert (=> b!5370253 (= res!2279068 lt!2186819)))

(declare-fun bm!384523 () Bool)

(assert (=> bm!384523 (= call!384528 (isEmpty!33400 s!2326))))

(declare-fun d!1720022 () Bool)

(assert (=> d!1720022 e!3332312))

(declare-fun c!935759 () Bool)

(assert (=> d!1720022 (= c!935759 ((_ is EmptyExpr!15081) lt!2186628))))

(assert (=> d!1720022 (= lt!2186819 e!3332311)))

(declare-fun c!935758 () Bool)

(assert (=> d!1720022 (= c!935758 (isEmpty!33400 s!2326))))

(assert (=> d!1720022 (validRegex!6817 lt!2186628)))

(assert (=> d!1720022 (= (matchR!7266 lt!2186628 s!2326) lt!2186819)))

(declare-fun b!5370254 () Bool)

(declare-fun e!3332308 () Bool)

(assert (=> b!5370254 (= e!3332309 e!3332308)))

(declare-fun res!2279072 () Bool)

(assert (=> b!5370254 (=> (not res!2279072) (not e!3332308))))

(assert (=> b!5370254 (= res!2279072 (not lt!2186819))))

(declare-fun b!5370255 () Bool)

(declare-fun e!3332307 () Bool)

(assert (=> b!5370255 (= e!3332308 e!3332307)))

(declare-fun res!2279067 () Bool)

(assert (=> b!5370255 (=> res!2279067 e!3332307)))

(assert (=> b!5370255 (= res!2279067 call!384528)))

(declare-fun b!5370256 () Bool)

(declare-fun res!2279074 () Bool)

(assert (=> b!5370256 (=> res!2279074 e!3332309)))

(assert (=> b!5370256 (= res!2279074 (not ((_ is ElementMatch!15081) lt!2186628)))))

(assert (=> b!5370256 (= e!3332306 e!3332309)))

(declare-fun b!5370257 () Bool)

(assert (=> b!5370257 (= e!3332307 (not (= (head!11518 s!2326) (c!935425 lt!2186628))))))

(declare-fun b!5370258 () Bool)

(declare-fun res!2279073 () Bool)

(assert (=> b!5370258 (=> res!2279073 e!3332307)))

(assert (=> b!5370258 (= res!2279073 (not (isEmpty!33400 (tail!10615 s!2326))))))

(assert (= (and d!1720022 c!935758) b!5370252))

(assert (= (and d!1720022 (not c!935758)) b!5370246))

(assert (= (and d!1720022 c!935759) b!5370249))

(assert (= (and d!1720022 (not c!935759)) b!5370245))

(assert (= (and b!5370245 c!935757) b!5370251))

(assert (= (and b!5370245 (not c!935757)) b!5370256))

(assert (= (and b!5370256 (not res!2279074)) b!5370253))

(assert (= (and b!5370253 res!2279068) b!5370248))

(assert (= (and b!5370248 res!2279069) b!5370247))

(assert (= (and b!5370247 res!2279071) b!5370250))

(assert (= (and b!5370253 (not res!2279070)) b!5370254))

(assert (= (and b!5370254 res!2279072) b!5370255))

(assert (= (and b!5370255 (not res!2279067)) b!5370258))

(assert (= (and b!5370258 (not res!2279073)) b!5370257))

(assert (= (or b!5370249 b!5370248 b!5370255) bm!384523))

(assert (=> bm!384523 m!6397448))

(assert (=> d!1720022 m!6397448))

(declare-fun m!6397770 () Bool)

(assert (=> d!1720022 m!6397770))

(assert (=> b!5370250 m!6397452))

(assert (=> b!5370246 m!6397452))

(assert (=> b!5370246 m!6397452))

(declare-fun m!6397772 () Bool)

(assert (=> b!5370246 m!6397772))

(assert (=> b!5370246 m!6397456))

(assert (=> b!5370246 m!6397772))

(assert (=> b!5370246 m!6397456))

(declare-fun m!6397774 () Bool)

(assert (=> b!5370246 m!6397774))

(assert (=> b!5370258 m!6397456))

(assert (=> b!5370258 m!6397456))

(assert (=> b!5370258 m!6397476))

(assert (=> b!5370257 m!6397452))

(assert (=> b!5370247 m!6397456))

(assert (=> b!5370247 m!6397456))

(assert (=> b!5370247 m!6397476))

(declare-fun m!6397776 () Bool)

(assert (=> b!5370252 m!6397776))

(assert (=> b!5369169 d!1720022))

(declare-fun bs!1243735 () Bool)

(declare-fun b!5370266 () Bool)

(assert (= bs!1243735 (and b!5370266 b!5370096)))

(declare-fun lambda!277016 () Int)

(assert (=> bs!1243735 (not (= lambda!277016 lambda!276995))))

(declare-fun bs!1243736 () Bool)

(assert (= bs!1243736 (and b!5370266 b!5369178)))

(assert (=> bs!1243736 (not (= lambda!277016 lambda!276915))))

(declare-fun bs!1243737 () Bool)

(assert (= bs!1243737 (and b!5370266 b!5369177)))

(assert (=> bs!1243737 (not (= lambda!277016 lambda!276912))))

(assert (=> bs!1243737 (not (= lambda!277016 lambda!276913))))

(declare-fun bs!1243738 () Bool)

(assert (= bs!1243738 (and b!5370266 d!1719940)))

(assert (=> bs!1243738 (not (= lambda!277016 lambda!276986))))

(declare-fun bs!1243739 () Bool)

(assert (= bs!1243739 (and b!5370266 d!1719936)))

(assert (=> bs!1243739 (not (= lambda!277016 lambda!276985))))

(assert (=> bs!1243739 (not (= lambda!277016 lambda!276984))))

(assert (=> bs!1243738 (not (= lambda!277016 lambda!276987))))

(declare-fun bs!1243740 () Bool)

(assert (= bs!1243740 (and b!5370266 d!1719934)))

(assert (=> bs!1243740 (not (= lambda!277016 lambda!276979))))

(declare-fun bs!1243741 () Bool)

(assert (= bs!1243741 (and b!5370266 d!1719954)))

(assert (=> bs!1243741 (not (= lambda!277016 lambda!276988))))

(assert (=> bs!1243736 (not (= lambda!277016 lambda!276916))))

(declare-fun bs!1243742 () Bool)

(assert (= bs!1243742 (and b!5370266 b!5370101)))

(assert (=> bs!1243742 (= (and (= (reg!15410 lt!2186628) (reg!15410 r!7292)) (= lt!2186628 r!7292)) (= lambda!277016 lambda!276994))))

(assert (=> b!5370266 true))

(assert (=> b!5370266 true))

(declare-fun bs!1243743 () Bool)

(declare-fun b!5370261 () Bool)

(assert (= bs!1243743 (and b!5370261 b!5370096)))

(declare-fun lambda!277017 () Int)

(assert (=> bs!1243743 (= (and (= (regOne!30674 lt!2186628) (regOne!30674 r!7292)) (= (regTwo!30674 lt!2186628) (regTwo!30674 r!7292))) (= lambda!277017 lambda!276995))))

(declare-fun bs!1243744 () Bool)

(assert (= bs!1243744 (and b!5370261 b!5369178)))

(assert (=> bs!1243744 (not (= lambda!277017 lambda!276915))))

(declare-fun bs!1243745 () Bool)

(assert (= bs!1243745 (and b!5370261 b!5369177)))

(assert (=> bs!1243745 (not (= lambda!277017 lambda!276912))))

(assert (=> bs!1243745 (= (and (= (regOne!30674 lt!2186628) (regOne!30674 r!7292)) (= (regTwo!30674 lt!2186628) (regTwo!30674 r!7292))) (= lambda!277017 lambda!276913))))

(declare-fun bs!1243746 () Bool)

(assert (= bs!1243746 (and b!5370261 d!1719940)))

(assert (=> bs!1243746 (not (= lambda!277017 lambda!276986))))

(declare-fun bs!1243747 () Bool)

(assert (= bs!1243747 (and b!5370261 d!1719936)))

(assert (=> bs!1243747 (= (and (= (regOne!30674 lt!2186628) (regOne!30674 r!7292)) (= (regTwo!30674 lt!2186628) (regTwo!30674 r!7292))) (= lambda!277017 lambda!276985))))

(assert (=> bs!1243747 (not (= lambda!277017 lambda!276984))))

(declare-fun bs!1243748 () Bool)

(assert (= bs!1243748 (and b!5370261 d!1719934)))

(assert (=> bs!1243748 (not (= lambda!277017 lambda!276979))))

(declare-fun bs!1243749 () Bool)

(assert (= bs!1243749 (and b!5370261 d!1719954)))

(assert (=> bs!1243749 (not (= lambda!277017 lambda!276988))))

(assert (=> bs!1243746 (= (and (= (regOne!30674 lt!2186628) lt!2186607) (= (regTwo!30674 lt!2186628) (regTwo!30674 r!7292))) (= lambda!277017 lambda!276987))))

(declare-fun bs!1243750 () Bool)

(assert (= bs!1243750 (and b!5370261 b!5370266)))

(assert (=> bs!1243750 (not (= lambda!277017 lambda!277016))))

(assert (=> bs!1243744 (= (and (= (regOne!30674 lt!2186628) lt!2186607) (= (regTwo!30674 lt!2186628) (regTwo!30674 r!7292))) (= lambda!277017 lambda!276916))))

(declare-fun bs!1243751 () Bool)

(assert (= bs!1243751 (and b!5370261 b!5370101)))

(assert (=> bs!1243751 (not (= lambda!277017 lambda!276994))))

(assert (=> b!5370261 true))

(assert (=> b!5370261 true))

(declare-fun d!1720024 () Bool)

(declare-fun c!935762 () Bool)

(assert (=> d!1720024 (= c!935762 ((_ is EmptyExpr!15081) lt!2186628))))

(declare-fun e!3332318 () Bool)

(assert (=> d!1720024 (= (matchRSpec!2184 lt!2186628 s!2326) e!3332318)))

(declare-fun b!5370259 () Bool)

(declare-fun e!3332319 () Bool)

(assert (=> b!5370259 (= e!3332319 (= s!2326 (Cons!61420 (c!935425 lt!2186628) Nil!61420)))))

(declare-fun b!5370260 () Bool)

(declare-fun e!3332317 () Bool)

(declare-fun e!3332314 () Bool)

(assert (=> b!5370260 (= e!3332317 e!3332314)))

(declare-fun c!935760 () Bool)

(assert (=> b!5370260 (= c!935760 ((_ is Star!15081) lt!2186628))))

(declare-fun call!384529 () Bool)

(assert (=> b!5370261 (= e!3332314 call!384529)))

(declare-fun b!5370262 () Bool)

(declare-fun c!935763 () Bool)

(assert (=> b!5370262 (= c!935763 ((_ is ElementMatch!15081) lt!2186628))))

(declare-fun e!3332315 () Bool)

(assert (=> b!5370262 (= e!3332315 e!3332319)))

(declare-fun b!5370263 () Bool)

(assert (=> b!5370263 (= e!3332318 e!3332315)))

(declare-fun res!2279077 () Bool)

(assert (=> b!5370263 (= res!2279077 (not ((_ is EmptyLang!15081) lt!2186628)))))

(assert (=> b!5370263 (=> (not res!2279077) (not e!3332315))))

(declare-fun b!5370264 () Bool)

(declare-fun c!935761 () Bool)

(assert (=> b!5370264 (= c!935761 ((_ is Union!15081) lt!2186628))))

(assert (=> b!5370264 (= e!3332319 e!3332317)))

(declare-fun b!5370265 () Bool)

(declare-fun e!3332313 () Bool)

(assert (=> b!5370265 (= e!3332313 (matchRSpec!2184 (regTwo!30675 lt!2186628) s!2326))))

(declare-fun e!3332316 () Bool)

(assert (=> b!5370266 (= e!3332316 call!384529)))

(declare-fun b!5370267 () Bool)

(declare-fun call!384530 () Bool)

(assert (=> b!5370267 (= e!3332318 call!384530)))

(declare-fun b!5370268 () Bool)

(declare-fun res!2279075 () Bool)

(assert (=> b!5370268 (=> res!2279075 e!3332316)))

(assert (=> b!5370268 (= res!2279075 call!384530)))

(assert (=> b!5370268 (= e!3332314 e!3332316)))

(declare-fun bm!384524 () Bool)

(assert (=> bm!384524 (= call!384529 (Exists!2262 (ite c!935760 lambda!277016 lambda!277017)))))

(declare-fun bm!384525 () Bool)

(assert (=> bm!384525 (= call!384530 (isEmpty!33400 s!2326))))

(declare-fun b!5370269 () Bool)

(assert (=> b!5370269 (= e!3332317 e!3332313)))

(declare-fun res!2279076 () Bool)

(assert (=> b!5370269 (= res!2279076 (matchRSpec!2184 (regOne!30675 lt!2186628) s!2326))))

(assert (=> b!5370269 (=> res!2279076 e!3332313)))

(assert (= (and d!1720024 c!935762) b!5370267))

(assert (= (and d!1720024 (not c!935762)) b!5370263))

(assert (= (and b!5370263 res!2279077) b!5370262))

(assert (= (and b!5370262 c!935763) b!5370259))

(assert (= (and b!5370262 (not c!935763)) b!5370264))

(assert (= (and b!5370264 c!935761) b!5370269))

(assert (= (and b!5370264 (not c!935761)) b!5370260))

(assert (= (and b!5370269 (not res!2279076)) b!5370265))

(assert (= (and b!5370260 c!935760) b!5370268))

(assert (= (and b!5370260 (not c!935760)) b!5370261))

(assert (= (and b!5370268 (not res!2279075)) b!5370266))

(assert (= (or b!5370266 b!5370261) bm!384524))

(assert (= (or b!5370267 b!5370268) bm!384525))

(declare-fun m!6397778 () Bool)

(assert (=> b!5370265 m!6397778))

(declare-fun m!6397780 () Bool)

(assert (=> bm!384524 m!6397780))

(assert (=> bm!384525 m!6397448))

(declare-fun m!6397782 () Bool)

(assert (=> b!5370269 m!6397782))

(assert (=> b!5369169 d!1720024))

(declare-fun d!1720026 () Bool)

(assert (=> d!1720026 (= (matchR!7266 lt!2186628 s!2326) (matchRSpec!2184 lt!2186628 s!2326))))

(declare-fun lt!2186820 () Unit!153842)

(assert (=> d!1720026 (= lt!2186820 (choose!40331 lt!2186628 s!2326))))

(assert (=> d!1720026 (validRegex!6817 lt!2186628)))

(assert (=> d!1720026 (= (mainMatchTheorem!2184 lt!2186628 s!2326) lt!2186820)))

(declare-fun bs!1243752 () Bool)

(assert (= bs!1243752 d!1720026))

(assert (=> bs!1243752 m!6396776))

(assert (=> bs!1243752 m!6396778))

(declare-fun m!6397784 () Bool)

(assert (=> bs!1243752 m!6397784))

(assert (=> bs!1243752 m!6397770))

(assert (=> b!5369169 d!1720026))

(declare-fun b!5370274 () Bool)

(declare-fun e!3332322 () Bool)

(declare-fun tp!1489864 () Bool)

(declare-fun tp!1489865 () Bool)

(assert (=> b!5370274 (= e!3332322 (and tp!1489864 tp!1489865))))

(assert (=> b!5369175 (= tp!1489793 e!3332322)))

(assert (= (and b!5369175 ((_ is Cons!61418) (exprs!4965 (h!67867 zl!343)))) b!5370274))

(declare-fun b!5370286 () Bool)

(declare-fun e!3332325 () Bool)

(declare-fun tp!1489877 () Bool)

(declare-fun tp!1489879 () Bool)

(assert (=> b!5370286 (= e!3332325 (and tp!1489877 tp!1489879))))

(assert (=> b!5369145 (= tp!1489799 e!3332325)))

(declare-fun b!5370285 () Bool)

(assert (=> b!5370285 (= e!3332325 tp_is_empty!39415)))

(declare-fun b!5370288 () Bool)

(declare-fun tp!1489876 () Bool)

(declare-fun tp!1489878 () Bool)

(assert (=> b!5370288 (= e!3332325 (and tp!1489876 tp!1489878))))

(declare-fun b!5370287 () Bool)

(declare-fun tp!1489880 () Bool)

(assert (=> b!5370287 (= e!3332325 tp!1489880)))

(assert (= (and b!5369145 ((_ is ElementMatch!15081) (reg!15410 r!7292))) b!5370285))

(assert (= (and b!5369145 ((_ is Concat!23926) (reg!15410 r!7292))) b!5370286))

(assert (= (and b!5369145 ((_ is Star!15081) (reg!15410 r!7292))) b!5370287))

(assert (= (and b!5369145 ((_ is Union!15081) (reg!15410 r!7292))) b!5370288))

(declare-fun b!5370296 () Bool)

(declare-fun e!3332331 () Bool)

(declare-fun tp!1489885 () Bool)

(assert (=> b!5370296 (= e!3332331 tp!1489885)))

(declare-fun e!3332330 () Bool)

(declare-fun tp!1489886 () Bool)

(declare-fun b!5370295 () Bool)

(assert (=> b!5370295 (= e!3332330 (and (inv!80949 (h!67867 (t!374766 zl!343))) e!3332331 tp!1489886))))

(assert (=> b!5369161 (= tp!1489800 e!3332330)))

(assert (= b!5370295 b!5370296))

(assert (= (and b!5369161 ((_ is Cons!61419) (t!374766 zl!343))) b!5370295))

(declare-fun m!6397786 () Bool)

(assert (=> b!5370295 m!6397786))

(declare-fun b!5370297 () Bool)

(declare-fun e!3332332 () Bool)

(declare-fun tp!1489887 () Bool)

(declare-fun tp!1489888 () Bool)

(assert (=> b!5370297 (= e!3332332 (and tp!1489887 tp!1489888))))

(assert (=> b!5369172 (= tp!1489792 e!3332332)))

(assert (= (and b!5369172 ((_ is Cons!61418) (exprs!4965 setElem!34787))) b!5370297))

(declare-fun condSetEmpty!34793 () Bool)

(assert (=> setNonEmpty!34787 (= condSetEmpty!34793 (= setRest!34787 ((as const (Array Context!8930 Bool)) false)))))

(declare-fun setRes!34793 () Bool)

(assert (=> setNonEmpty!34787 (= tp!1489796 setRes!34793)))

(declare-fun setIsEmpty!34793 () Bool)

(assert (=> setIsEmpty!34793 setRes!34793))

(declare-fun setElem!34793 () Context!8930)

(declare-fun tp!1489894 () Bool)

(declare-fun e!3332335 () Bool)

(declare-fun setNonEmpty!34793 () Bool)

(assert (=> setNonEmpty!34793 (= setRes!34793 (and tp!1489894 (inv!80949 setElem!34793) e!3332335))))

(declare-fun setRest!34793 () (InoxSet Context!8930))

(assert (=> setNonEmpty!34793 (= setRest!34787 ((_ map or) (store ((as const (Array Context!8930 Bool)) false) setElem!34793 true) setRest!34793))))

(declare-fun b!5370302 () Bool)

(declare-fun tp!1489893 () Bool)

(assert (=> b!5370302 (= e!3332335 tp!1489893)))

(assert (= (and setNonEmpty!34787 condSetEmpty!34793) setIsEmpty!34793))

(assert (= (and setNonEmpty!34787 (not condSetEmpty!34793)) setNonEmpty!34793))

(assert (= setNonEmpty!34793 b!5370302))

(declare-fun m!6397788 () Bool)

(assert (=> setNonEmpty!34793 m!6397788))

(declare-fun b!5370304 () Bool)

(declare-fun e!3332336 () Bool)

(declare-fun tp!1489896 () Bool)

(declare-fun tp!1489898 () Bool)

(assert (=> b!5370304 (= e!3332336 (and tp!1489896 tp!1489898))))

(assert (=> b!5369157 (= tp!1489795 e!3332336)))

(declare-fun b!5370303 () Bool)

(assert (=> b!5370303 (= e!3332336 tp_is_empty!39415)))

(declare-fun b!5370306 () Bool)

(declare-fun tp!1489895 () Bool)

(declare-fun tp!1489897 () Bool)

(assert (=> b!5370306 (= e!3332336 (and tp!1489895 tp!1489897))))

(declare-fun b!5370305 () Bool)

(declare-fun tp!1489899 () Bool)

(assert (=> b!5370305 (= e!3332336 tp!1489899)))

(assert (= (and b!5369157 ((_ is ElementMatch!15081) (regOne!30674 r!7292))) b!5370303))

(assert (= (and b!5369157 ((_ is Concat!23926) (regOne!30674 r!7292))) b!5370304))

(assert (= (and b!5369157 ((_ is Star!15081) (regOne!30674 r!7292))) b!5370305))

(assert (= (and b!5369157 ((_ is Union!15081) (regOne!30674 r!7292))) b!5370306))

(declare-fun b!5370308 () Bool)

(declare-fun e!3332337 () Bool)

(declare-fun tp!1489901 () Bool)

(declare-fun tp!1489903 () Bool)

(assert (=> b!5370308 (= e!3332337 (and tp!1489901 tp!1489903))))

(assert (=> b!5369157 (= tp!1489801 e!3332337)))

(declare-fun b!5370307 () Bool)

(assert (=> b!5370307 (= e!3332337 tp_is_empty!39415)))

(declare-fun b!5370310 () Bool)

(declare-fun tp!1489900 () Bool)

(declare-fun tp!1489902 () Bool)

(assert (=> b!5370310 (= e!3332337 (and tp!1489900 tp!1489902))))

(declare-fun b!5370309 () Bool)

(declare-fun tp!1489904 () Bool)

(assert (=> b!5370309 (= e!3332337 tp!1489904)))

(assert (= (and b!5369157 ((_ is ElementMatch!15081) (regTwo!30674 r!7292))) b!5370307))

(assert (= (and b!5369157 ((_ is Concat!23926) (regTwo!30674 r!7292))) b!5370308))

(assert (= (and b!5369157 ((_ is Star!15081) (regTwo!30674 r!7292))) b!5370309))

(assert (= (and b!5369157 ((_ is Union!15081) (regTwo!30674 r!7292))) b!5370310))

(declare-fun b!5370312 () Bool)

(declare-fun e!3332338 () Bool)

(declare-fun tp!1489906 () Bool)

(declare-fun tp!1489908 () Bool)

(assert (=> b!5370312 (= e!3332338 (and tp!1489906 tp!1489908))))

(assert (=> b!5369173 (= tp!1489794 e!3332338)))

(declare-fun b!5370311 () Bool)

(assert (=> b!5370311 (= e!3332338 tp_is_empty!39415)))

(declare-fun b!5370314 () Bool)

(declare-fun tp!1489905 () Bool)

(declare-fun tp!1489907 () Bool)

(assert (=> b!5370314 (= e!3332338 (and tp!1489905 tp!1489907))))

(declare-fun b!5370313 () Bool)

(declare-fun tp!1489909 () Bool)

(assert (=> b!5370313 (= e!3332338 tp!1489909)))

(assert (= (and b!5369173 ((_ is ElementMatch!15081) (regOne!30675 r!7292))) b!5370311))

(assert (= (and b!5369173 ((_ is Concat!23926) (regOne!30675 r!7292))) b!5370312))

(assert (= (and b!5369173 ((_ is Star!15081) (regOne!30675 r!7292))) b!5370313))

(assert (= (and b!5369173 ((_ is Union!15081) (regOne!30675 r!7292))) b!5370314))

(declare-fun b!5370316 () Bool)

(declare-fun e!3332339 () Bool)

(declare-fun tp!1489911 () Bool)

(declare-fun tp!1489913 () Bool)

(assert (=> b!5370316 (= e!3332339 (and tp!1489911 tp!1489913))))

(assert (=> b!5369173 (= tp!1489798 e!3332339)))

(declare-fun b!5370315 () Bool)

(assert (=> b!5370315 (= e!3332339 tp_is_empty!39415)))

(declare-fun b!5370318 () Bool)

(declare-fun tp!1489910 () Bool)

(declare-fun tp!1489912 () Bool)

(assert (=> b!5370318 (= e!3332339 (and tp!1489910 tp!1489912))))

(declare-fun b!5370317 () Bool)

(declare-fun tp!1489914 () Bool)

(assert (=> b!5370317 (= e!3332339 tp!1489914)))

(assert (= (and b!5369173 ((_ is ElementMatch!15081) (regTwo!30675 r!7292))) b!5370315))

(assert (= (and b!5369173 ((_ is Concat!23926) (regTwo!30675 r!7292))) b!5370316))

(assert (= (and b!5369173 ((_ is Star!15081) (regTwo!30675 r!7292))) b!5370317))

(assert (= (and b!5369173 ((_ is Union!15081) (regTwo!30675 r!7292))) b!5370318))

(declare-fun b!5370323 () Bool)

(declare-fun e!3332342 () Bool)

(declare-fun tp!1489917 () Bool)

(assert (=> b!5370323 (= e!3332342 (and tp_is_empty!39415 tp!1489917))))

(assert (=> b!5369158 (= tp!1489797 e!3332342)))

(assert (= (and b!5369158 ((_ is Cons!61420) (t!374767 s!2326))) b!5370323))

(declare-fun b_lambda!205881 () Bool)

(assert (= b_lambda!205877 (or b!5369153 b_lambda!205881)))

(declare-fun bs!1243753 () Bool)

(declare-fun d!1720028 () Bool)

(assert (= bs!1243753 (and d!1720028 b!5369153)))

(assert (=> bs!1243753 (= (dynLambda!24260 lambda!276914 lt!2186623) (derivationStepZipperUp!453 lt!2186623 (h!67868 s!2326)))))

(assert (=> bs!1243753 m!6396850))

(assert (=> d!1720006 d!1720028))

(declare-fun b_lambda!205883 () Bool)

(assert (= b_lambda!205871 (or b!5369181 b_lambda!205883)))

(declare-fun bs!1243754 () Bool)

(declare-fun d!1720030 () Bool)

(assert (= bs!1243754 (and d!1720030 b!5369181)))

(assert (=> bs!1243754 (= (dynLambda!24261 lambda!276917 (h!67866 (t!374765 (exprs!4965 (h!67867 zl!343))))) (validRegex!6817 (h!67866 (t!374765 (exprs!4965 (h!67867 zl!343))))))))

(declare-fun m!6397790 () Bool)

(assert (=> bs!1243754 m!6397790))

(assert (=> b!5369960 d!1720030))

(declare-fun b_lambda!205885 () Bool)

(assert (= b_lambda!205875 (or b!5369153 b_lambda!205885)))

(declare-fun bs!1243755 () Bool)

(declare-fun d!1720032 () Bool)

(assert (= bs!1243755 (and d!1720032 b!5369153)))

(assert (=> bs!1243755 (= (dynLambda!24260 lambda!276914 lt!2186610) (derivationStepZipperUp!453 lt!2186610 (h!67868 s!2326)))))

(assert (=> bs!1243755 m!6396798))

(assert (=> d!1719992 d!1720032))

(declare-fun b_lambda!205887 () Bool)

(assert (= b_lambda!205873 (or b!5369153 b_lambda!205887)))

(declare-fun bs!1243756 () Bool)

(declare-fun d!1720034 () Bool)

(assert (= bs!1243756 (and d!1720034 b!5369153)))

(assert (=> bs!1243756 (= (dynLambda!24260 lambda!276914 (h!67867 zl!343)) (derivationStepZipperUp!453 (h!67867 zl!343) (h!67868 s!2326)))))

(assert (=> bs!1243756 m!6396836))

(assert (=> d!1719984 d!1720034))

(declare-fun b_lambda!205889 () Bool)

(assert (= b_lambda!205855 (or b!5369153 b_lambda!205889)))

(declare-fun bs!1243757 () Bool)

(declare-fun d!1720036 () Bool)

(assert (= bs!1243757 (and d!1720036 b!5369153)))

(assert (=> bs!1243757 (= (dynLambda!24260 lambda!276914 lt!2186626) (derivationStepZipperUp!453 lt!2186626 (h!67868 s!2326)))))

(assert (=> bs!1243757 m!6396838))

(assert (=> d!1719840 d!1720036))

(declare-fun b_lambda!205891 () Bool)

(assert (= b_lambda!205879 (or b!5369153 b_lambda!205891)))

(declare-fun bs!1243758 () Bool)

(declare-fun d!1720038 () Bool)

(assert (= bs!1243758 (and d!1720038 b!5369153)))

(assert (=> bs!1243758 (= (dynLambda!24260 lambda!276914 lt!2186643) (derivationStepZipperUp!453 lt!2186643 (h!67868 s!2326)))))

(assert (=> bs!1243758 m!6396852))

(assert (=> d!1720010 d!1720038))

(check-sat (not d!1719972) (not b!5370130) (not b!5370161) (not bm!384476) (not bs!1243754) (not b!5370177) (not b_lambda!205891) (not b!5370308) (not b!5370237) (not b_lambda!205881) (not b_lambda!205887) (not b!5370118) (not bm!384514) (not bm!384512) (not d!1720016) (not b!5370172) (not b!5370318) (not b!5370217) (not b!5370051) (not b!5370132) (not d!1719962) (not d!1719944) (not b!5370053) (not b_lambda!205889) (not b!5369969) (not b!5370240) (not b!5369709) (not b!5370213) (not d!1719956) (not bm!384519) (not b!5370313) (not b!5370250) (not d!1719866) (not b!5370112) (not d!1719912) (not b!5369952) (not bm!384475) (not b_lambda!205885) (not bm!384484) (not b!5369791) (not d!1719942) (not b!5370060) (not d!1719952) (not d!1719842) (not b!5370219) (not b!5370107) (not bm!384471) (not b!5370232) (not bm!384521) (not b!5370000) (not b!5370186) (not b!5370035) (not d!1720020) (not d!1719994) (not b!5370022) (not b!5370317) (not d!1720000) (not bm!384448) (not b!5370323) (not d!1719926) (not b!5370257) (not bm!384506) (not b!5369588) (not d!1719836) (not b!5369953) (not b!5370302) (not b!5370001) (not d!1719976) (not b!5370314) (not bm!384477) (not b!5369954) (not b!5370117) (not b!5369659) (not d!1719910) (not bs!1243756) (not b!5370265) (not d!1719858) (not b!5370306) (not b!5370043) (not d!1720022) (not d!1719988) (not d!1719992) (not d!1719928) (not b!5370212) (not b!5369964) (not b!5370003) (not b!5369977) (not bm!384486) (not b!5370309) (not bs!1243753) (not b!5370055) (not d!1719948) (not b!5370191) (not b!5370305) (not b!5370296) (not b!5369946) (not d!1719936) (not b!5369963) (not b!5369945) (not b!5370269) (not d!1720012) (not bm!384491) (not bm!384525) (not d!1720010) (not d!1719996) (not b!5370004) (not b!5370258) (not b!5370058) (not b!5370226) (not d!1719920) (not b!5369976) (not d!1719938) (not b!5369655) (not b!5369786) (not b!5369944) (not b!5370187) (not b!5369947) (not b!5369961) tp_is_empty!39415 (not bm!384483) (not d!1720026) (not bm!384482) (not b!5370106) (not bs!1243758) (not b!5370241) (not b!5369996) (not d!1719932) (not b!5370045) (not b!5369656) (not bm!384508) (not b!5370242) (not bm!384518) (not bs!1243755) (not b!5370181) (not d!1719958) (not b!5370050) (not b!5370056) (not b!5370021) (not b!5369975) (not b!5369784) (not d!1719946) (not b!5370304) (not d!1719878) (not b!5370110) (not d!1720018) (not bm!384522) (not d!1719934) (not bm!384520) (not b!5370287) (not d!1720014) (not d!1719984) (not b!5369781) (not b!5370274) (not d!1719922) (not b!5370214) (not b!5370024) (not b!5369943) (not bm!384456) (not b!5370025) (not d!1719914) (not b!5370104) (not bs!1243757) (not bm!384524) (not d!1719924) (not b!5370036) (not b!5370247) (not b!5370286) (not b!5370040) (not b!5369780) (not b!5370182) (not bm!384493) (not b!5370316) (not d!1719964) (not b!5370243) (not d!1719940) (not b!5369998) (not b!5369792) (not b!5369974) (not b!5370054) (not d!1719954) (not bm!384473) (not b!5369950) (not b!5370246) (not b!5369967) (not b!5370312) (not bm!384523) (not bm!384480) (not b!5370221) (not bm!384511) (not bm!384426) (not d!1719834) (not b!5370019) (not b_lambda!205883) (not b!5370017) (not d!1719930) (not b!5370233) (not b!5370295) (not b!5370252) (not b!5370244) (not setNonEmpty!34793) (not b!5370288) (not b!5370310) (not b!5370057) (not d!1719840) (not bm!384492) (not b!5370039) (not b!5369948) (not b!5369592) (not d!1719980) (not b!5370228) (not d!1720008) (not d!1719850) (not b!5370215) (not b!5370125) (not b!5370127) (not bm!384517) (not d!1720006) (not bm!384485) (not b!5370100) (not b!5369955) (not bm!384449) (not d!1719856) (not d!1719998) (not bm!384478) (not b!5370297))
(check-sat)
