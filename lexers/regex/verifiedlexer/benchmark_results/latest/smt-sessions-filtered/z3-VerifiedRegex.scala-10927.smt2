; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565614 () Bool)

(assert start!565614)

(declare-fun b!5377711 () Bool)

(assert (=> b!5377711 true))

(assert (=> b!5377711 true))

(declare-fun lambda!278027 () Int)

(declare-fun lambda!278026 () Int)

(assert (=> b!5377711 (not (= lambda!278027 lambda!278026))))

(assert (=> b!5377711 true))

(assert (=> b!5377711 true))

(declare-fun b!5377710 () Bool)

(assert (=> b!5377710 true))

(declare-fun bs!1245046 () Bool)

(declare-fun b!5377701 () Bool)

(assert (= bs!1245046 (and b!5377701 b!5377711)))

(declare-datatypes ((C!30472 0))(
  ( (C!30473 (val!24938 Int)) )
))
(declare-datatypes ((Regex!15101 0))(
  ( (ElementMatch!15101 (c!937169 C!30472)) (Concat!23946 (regOne!30714 Regex!15101) (regTwo!30714 Regex!15101)) (EmptyExpr!15101) (Star!15101 (reg!15430 Regex!15101)) (EmptyLang!15101) (Union!15101 (regOne!30715 Regex!15101) (regTwo!30715 Regex!15101)) )
))
(declare-fun r!7292 () Regex!15101)

(declare-fun lambda!278029 () Int)

(declare-fun lt!2189791 () Regex!15101)

(assert (=> bs!1245046 (= (= lt!2189791 (regOne!30714 r!7292)) (= lambda!278029 lambda!278026))))

(assert (=> bs!1245046 (not (= lambda!278029 lambda!278027))))

(assert (=> b!5377701 true))

(assert (=> b!5377701 true))

(assert (=> b!5377701 true))

(declare-fun lambda!278030 () Int)

(assert (=> bs!1245046 (not (= lambda!278030 lambda!278026))))

(assert (=> bs!1245046 (= (= lt!2189791 (regOne!30714 r!7292)) (= lambda!278030 lambda!278027))))

(assert (=> b!5377701 (not (= lambda!278030 lambda!278029))))

(assert (=> b!5377701 true))

(assert (=> b!5377701 true))

(assert (=> b!5377701 true))

(declare-fun bs!1245047 () Bool)

(declare-fun b!5377687 () Bool)

(assert (= bs!1245047 (and b!5377687 b!5377711)))

(declare-datatypes ((List!61602 0))(
  ( (Nil!61478) (Cons!61478 (h!67926 C!30472) (t!374825 List!61602)) )
))
(declare-fun s!2326 () List!61602)

(declare-fun lambda!278031 () Int)

(declare-datatypes ((tuple2!64600 0))(
  ( (tuple2!64601 (_1!35603 List!61602) (_2!35603 List!61602)) )
))
(declare-fun lt!2189812 () tuple2!64600)

(assert (=> bs!1245047 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) (regOne!30714 r!7292)) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278031 lambda!278026))))

(assert (=> bs!1245047 (not (= lambda!278031 lambda!278027))))

(declare-fun bs!1245048 () Bool)

(assert (= bs!1245048 (and b!5377687 b!5377701)))

(assert (=> bs!1245048 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278031 lambda!278029))))

(assert (=> bs!1245048 (not (= lambda!278031 lambda!278030))))

(assert (=> b!5377687 true))

(assert (=> b!5377687 true))

(assert (=> b!5377687 true))

(declare-fun lambda!278032 () Int)

(assert (=> bs!1245048 (not (= lambda!278032 lambda!278030))))

(assert (=> bs!1245047 (not (= lambda!278032 lambda!278027))))

(assert (=> bs!1245047 (not (= lambda!278032 lambda!278026))))

(assert (=> b!5377687 (not (= lambda!278032 lambda!278031))))

(assert (=> bs!1245048 (not (= lambda!278032 lambda!278029))))

(assert (=> b!5377687 true))

(assert (=> b!5377687 true))

(assert (=> b!5377687 true))

(declare-fun lambda!278033 () Int)

(assert (=> bs!1245047 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) (regOne!30714 r!7292)) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278033 lambda!278027))))

(assert (=> bs!1245047 (not (= lambda!278033 lambda!278026))))

(assert (=> b!5377687 (not (= lambda!278033 lambda!278031))))

(assert (=> bs!1245048 (not (= lambda!278033 lambda!278029))))

(assert (=> b!5377687 (not (= lambda!278033 lambda!278032))))

(assert (=> bs!1245048 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278033 lambda!278030))))

(assert (=> b!5377687 true))

(assert (=> b!5377687 true))

(assert (=> b!5377687 true))

(declare-fun b!5377680 () Bool)

(declare-fun res!2283043 () Bool)

(declare-fun e!3336279 () Bool)

(assert (=> b!5377680 (=> (not res!2283043) (not e!3336279))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61603 0))(
  ( (Nil!61479) (Cons!61479 (h!67927 Regex!15101) (t!374826 List!61603)) )
))
(declare-datatypes ((Context!8970 0))(
  ( (Context!8971 (exprs!4985 List!61603)) )
))
(declare-fun z!1189 () (InoxSet Context!8970))

(declare-datatypes ((List!61604 0))(
  ( (Nil!61480) (Cons!61480 (h!67928 Context!8970) (t!374827 List!61604)) )
))
(declare-fun zl!343 () List!61604)

(declare-fun toList!8885 ((InoxSet Context!8970)) List!61604)

(assert (=> b!5377680 (= res!2283043 (= (toList!8885 z!1189) zl!343))))

(declare-fun b!5377681 () Bool)

(declare-fun e!3336293 () Bool)

(declare-fun e!3336289 () Bool)

(assert (=> b!5377681 (= e!3336293 e!3336289)))

(declare-fun res!2283046 () Bool)

(assert (=> b!5377681 (=> res!2283046 e!3336289)))

(declare-fun lt!2189826 () Regex!15101)

(assert (=> b!5377681 (= res!2283046 (not (= r!7292 lt!2189826)))))

(assert (=> b!5377681 (= lt!2189826 (Concat!23946 lt!2189791 (regTwo!30714 r!7292)))))

(declare-fun b!5377682 () Bool)

(declare-fun res!2283053 () Bool)

(declare-fun e!3336291 () Bool)

(assert (=> b!5377682 (=> res!2283053 e!3336291)))

(get-info :version)

(assert (=> b!5377682 (= res!2283053 (not ((_ is Cons!61479) (exprs!4985 (h!67928 zl!343)))))))

(declare-fun b!5377683 () Bool)

(declare-fun e!3336280 () Bool)

(declare-fun tp!1490973 () Bool)

(assert (=> b!5377683 (= e!3336280 tp!1490973)))

(declare-fun b!5377684 () Bool)

(declare-fun e!3336284 () Bool)

(declare-fun tp!1490976 () Bool)

(declare-fun tp!1490979 () Bool)

(assert (=> b!5377684 (= e!3336284 (and tp!1490976 tp!1490979))))

(declare-fun b!5377685 () Bool)

(declare-fun e!3336292 () Bool)

(declare-fun e!3336277 () Bool)

(assert (=> b!5377685 (= e!3336292 e!3336277)))

(declare-fun res!2283045 () Bool)

(assert (=> b!5377685 (=> res!2283045 e!3336277)))

(declare-fun lt!2189797 () (InoxSet Context!8970))

(declare-fun lt!2189793 () (InoxSet Context!8970))

(assert (=> b!5377685 (= res!2283045 (not (= lt!2189797 lt!2189793)))))

(declare-fun lt!2189815 () Context!8970)

(declare-fun derivationStepZipperDown!549 (Regex!15101 Context!8970 C!30472) (InoxSet Context!8970))

(assert (=> b!5377685 (= lt!2189793 (derivationStepZipperDown!549 (reg!15430 (regOne!30714 r!7292)) lt!2189815 (h!67926 s!2326)))))

(declare-fun lt!2189804 () List!61603)

(assert (=> b!5377685 (= lt!2189815 (Context!8971 lt!2189804))))

(assert (=> b!5377685 (= lt!2189804 (Cons!61479 lt!2189791 (t!374826 (exprs!4985 (h!67928 zl!343)))))))

(assert (=> b!5377685 (= lt!2189791 (Star!15101 (reg!15430 (regOne!30714 r!7292))))))

(declare-fun e!3336282 () Bool)

(declare-fun lt!2189809 () Bool)

(assert (=> b!5377687 (= e!3336282 lt!2189809)))

(declare-fun Exists!2282 (Int) Bool)

(assert (=> b!5377687 (= (Exists!2282 lambda!278031) (Exists!2282 lambda!278033))))

(declare-datatypes ((Unit!153922 0))(
  ( (Unit!153923) )
))
(declare-fun lt!2189811 () Unit!153922)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!936 (Regex!15101 Regex!15101 List!61602) Unit!153922)

(assert (=> b!5377687 (= lt!2189811 (lemmaExistCutMatchRandMatchRSpecEquivalent!936 (reg!15430 (regOne!30714 r!7292)) lt!2189791 (_1!35603 lt!2189812)))))

(assert (=> b!5377687 (= (Exists!2282 lambda!278031) (Exists!2282 lambda!278032))))

(declare-fun lt!2189808 () Unit!153922)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!366 (Regex!15101 List!61602) Unit!153922)

(assert (=> b!5377687 (= lt!2189808 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!366 (reg!15430 (regOne!30714 r!7292)) (_1!35603 lt!2189812)))))

(assert (=> b!5377687 (= lt!2189809 (Exists!2282 lambda!278031))))

(declare-datatypes ((Option!15212 0))(
  ( (None!15211) (Some!15211 (v!51240 tuple2!64600)) )
))
(declare-fun isDefined!11915 (Option!15212) Bool)

(declare-fun findConcatSeparation!1626 (Regex!15101 Regex!15101 List!61602 List!61602 List!61602) Option!15212)

(assert (=> b!5377687 (= lt!2189809 (isDefined!11915 (findConcatSeparation!1626 (reg!15430 (regOne!30714 r!7292)) lt!2189791 Nil!61478 (_1!35603 lt!2189812) (_1!35603 lt!2189812))))))

(declare-fun lt!2189824 () Unit!153922)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1390 (Regex!15101 Regex!15101 List!61602) Unit!153922)

(assert (=> b!5377687 (= lt!2189824 (lemmaFindConcatSeparationEquivalentToExists!1390 (reg!15430 (regOne!30714 r!7292)) lt!2189791 (_1!35603 lt!2189812)))))

(declare-fun matchRSpec!2204 (Regex!15101 List!61602) Bool)

(assert (=> b!5377687 (matchRSpec!2204 lt!2189791 (_1!35603 lt!2189812))))

(declare-fun lt!2189813 () Unit!153922)

(declare-fun mainMatchTheorem!2204 (Regex!15101 List!61602) Unit!153922)

(assert (=> b!5377687 (= lt!2189813 (mainMatchTheorem!2204 lt!2189791 (_1!35603 lt!2189812)))))

(declare-fun b!5377688 () Bool)

(declare-fun e!3336281 () Bool)

(declare-fun lt!2189814 () Bool)

(declare-fun lt!2189819 () Bool)

(assert (=> b!5377688 (= e!3336281 (or (not lt!2189814) lt!2189819))))

(declare-fun b!5377689 () Bool)

(declare-fun res!2283060 () Bool)

(assert (=> b!5377689 (=> res!2283060 e!3336292)))

(declare-fun e!3336290 () Bool)

(assert (=> b!5377689 (= res!2283060 e!3336290)))

(declare-fun res!2283054 () Bool)

(assert (=> b!5377689 (=> (not res!2283054) (not e!3336290))))

(assert (=> b!5377689 (= res!2283054 ((_ is Concat!23946) (regOne!30714 r!7292)))))

(declare-fun b!5377690 () Bool)

(declare-fun e!3336285 () Bool)

(declare-fun tp!1490975 () Bool)

(assert (=> b!5377690 (= e!3336285 tp!1490975)))

(declare-fun b!5377691 () Bool)

(declare-fun res!2283047 () Bool)

(assert (=> b!5377691 (=> res!2283047 e!3336293)))

(declare-fun lt!2189818 () (InoxSet Context!8970))

(declare-fun lt!2189794 () (InoxSet Context!8970))

(declare-fun matchZipper!1345 ((InoxSet Context!8970) List!61602) Bool)

(assert (=> b!5377691 (= res!2283047 (not (= (matchZipper!1345 lt!2189794 s!2326) (matchZipper!1345 lt!2189818 (t!374825 s!2326)))))))

(declare-fun setNonEmpty!34877 () Bool)

(declare-fun setElem!34877 () Context!8970)

(declare-fun tp!1490981 () Bool)

(declare-fun setRes!34877 () Bool)

(declare-fun inv!80999 (Context!8970) Bool)

(assert (=> setNonEmpty!34877 (= setRes!34877 (and tp!1490981 (inv!80999 setElem!34877) e!3336285))))

(declare-fun setRest!34877 () (InoxSet Context!8970))

(assert (=> setNonEmpty!34877 (= z!1189 ((_ map or) (store ((as const (Array Context!8970 Bool)) false) setElem!34877 true) setRest!34877))))

(declare-fun b!5377692 () Bool)

(declare-fun e!3336286 () Unit!153922)

(declare-fun Unit!153924 () Unit!153922)

(assert (=> b!5377692 (= e!3336286 Unit!153924)))

(declare-fun lt!2189820 () (InoxSet Context!8970))

(declare-fun lt!2189806 () Unit!153922)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!338 ((InoxSet Context!8970) (InoxSet Context!8970) List!61602) Unit!153922)

(assert (=> b!5377692 (= lt!2189806 (lemmaZipperConcatMatchesSameAsBothZippers!338 lt!2189797 lt!2189820 (t!374825 s!2326)))))

(declare-fun res!2283056 () Bool)

(assert (=> b!5377692 (= res!2283056 (matchZipper!1345 lt!2189797 (t!374825 s!2326)))))

(declare-fun e!3336274 () Bool)

(assert (=> b!5377692 (=> res!2283056 e!3336274)))

(assert (=> b!5377692 (= (matchZipper!1345 ((_ map or) lt!2189797 lt!2189820) (t!374825 s!2326)) e!3336274)))

(declare-fun b!5377693 () Bool)

(declare-fun e!3336287 () Bool)

(assert (=> b!5377693 (= e!3336289 e!3336287)))

(declare-fun res!2283049 () Bool)

(assert (=> b!5377693 (=> res!2283049 e!3336287)))

(declare-fun lt!2189823 () Context!8970)

(declare-fun lt!2189802 () Regex!15101)

(declare-fun unfocusZipper!843 (List!61604) Regex!15101)

(assert (=> b!5377693 (= res!2283049 (not (= (unfocusZipper!843 (Cons!61480 lt!2189823 Nil!61480)) lt!2189802)))))

(assert (=> b!5377693 (= lt!2189802 (Concat!23946 (reg!15430 (regOne!30714 r!7292)) lt!2189826))))

(declare-fun b!5377694 () Bool)

(assert (=> b!5377694 (= e!3336274 (matchZipper!1345 lt!2189820 (t!374825 s!2326)))))

(declare-fun b!5377695 () Bool)

(declare-fun res!2283040 () Bool)

(assert (=> b!5377695 (=> res!2283040 e!3336292)))

(assert (=> b!5377695 (= res!2283040 (or ((_ is Concat!23946) (regOne!30714 r!7292)) (not ((_ is Star!15101) (regOne!30714 r!7292)))))))

(declare-fun b!5377696 () Bool)

(assert (=> b!5377696 (= e!3336277 e!3336293)))

(declare-fun res!2283037 () Bool)

(assert (=> b!5377696 (=> res!2283037 e!3336293)))

(assert (=> b!5377696 (= res!2283037 (not (= lt!2189818 lt!2189793)))))

(declare-fun lambda!278028 () Int)

(declare-fun flatMap!828 ((InoxSet Context!8970) Int) (InoxSet Context!8970))

(declare-fun derivationStepZipperUp!473 (Context!8970 C!30472) (InoxSet Context!8970))

(assert (=> b!5377696 (= (flatMap!828 lt!2189794 lambda!278028) (derivationStepZipperUp!473 lt!2189823 (h!67926 s!2326)))))

(declare-fun lt!2189810 () Unit!153922)

(declare-fun lemmaFlatMapOnSingletonSet!360 ((InoxSet Context!8970) Context!8970 Int) Unit!153922)

(assert (=> b!5377696 (= lt!2189810 (lemmaFlatMapOnSingletonSet!360 lt!2189794 lt!2189823 lambda!278028))))

(declare-fun lt!2189799 () (InoxSet Context!8970))

(assert (=> b!5377696 (= lt!2189799 (derivationStepZipperUp!473 lt!2189823 (h!67926 s!2326)))))

(declare-fun derivationStepZipper!1340 ((InoxSet Context!8970) C!30472) (InoxSet Context!8970))

(assert (=> b!5377696 (= lt!2189818 (derivationStepZipper!1340 lt!2189794 (h!67926 s!2326)))))

(assert (=> b!5377696 (= lt!2189794 (store ((as const (Array Context!8970 Bool)) false) lt!2189823 true))))

(assert (=> b!5377696 (= lt!2189823 (Context!8971 (Cons!61479 (reg!15430 (regOne!30714 r!7292)) lt!2189804)))))

(declare-fun res!2283055 () Bool)

(assert (=> start!565614 (=> (not res!2283055) (not e!3336279))))

(declare-fun validRegex!6837 (Regex!15101) Bool)

(assert (=> start!565614 (= res!2283055 (validRegex!6837 r!7292))))

(assert (=> start!565614 e!3336279))

(assert (=> start!565614 e!3336284))

(declare-fun condSetEmpty!34877 () Bool)

(assert (=> start!565614 (= condSetEmpty!34877 (= z!1189 ((as const (Array Context!8970 Bool)) false)))))

(assert (=> start!565614 setRes!34877))

(declare-fun e!3336294 () Bool)

(assert (=> start!565614 e!3336294))

(declare-fun e!3336276 () Bool)

(assert (=> start!565614 e!3336276))

(declare-fun b!5377686 () Bool)

(declare-fun res!2283044 () Bool)

(assert (=> b!5377686 (=> res!2283044 e!3336291)))

(assert (=> b!5377686 (= res!2283044 (or ((_ is EmptyExpr!15101) r!7292) ((_ is EmptyLang!15101) r!7292) ((_ is ElementMatch!15101) r!7292) ((_ is Union!15101) r!7292) (not ((_ is Concat!23946) r!7292))))))

(declare-fun b!5377697 () Bool)

(declare-fun res!2283058 () Bool)

(assert (=> b!5377697 (=> res!2283058 e!3336291)))

(declare-fun generalisedUnion!1030 (List!61603) Regex!15101)

(declare-fun unfocusZipperList!543 (List!61604) List!61603)

(assert (=> b!5377697 (= res!2283058 (not (= r!7292 (generalisedUnion!1030 (unfocusZipperList!543 zl!343)))))))

(declare-fun b!5377698 () Bool)

(declare-fun tp_is_empty!39455 () Bool)

(declare-fun tp!1490980 () Bool)

(assert (=> b!5377698 (= e!3336276 (and tp_is_empty!39455 tp!1490980))))

(declare-fun b!5377699 () Bool)

(declare-fun res!2283041 () Bool)

(declare-fun e!3336288 () Bool)

(assert (=> b!5377699 (=> res!2283041 e!3336288)))

(assert (=> b!5377699 (= res!2283041 (not (= (unfocusZipper!843 (Cons!61480 lt!2189815 Nil!61480)) lt!2189826)))))

(declare-fun b!5377700 () Bool)

(declare-fun tp!1490974 () Bool)

(assert (=> b!5377700 (= e!3336294 (and (inv!80999 (h!67928 zl!343)) e!3336280 tp!1490974))))

(declare-fun e!3336283 () Bool)

(assert (=> b!5377701 (= e!3336283 e!3336282)))

(declare-fun res!2283062 () Bool)

(assert (=> b!5377701 (=> res!2283062 e!3336282)))

(declare-fun ++!13404 (List!61602 List!61602) List!61602)

(assert (=> b!5377701 (= res!2283062 (not (= (++!13404 (_1!35603 lt!2189812) (_2!35603 lt!2189812)) s!2326)))))

(declare-fun lt!2189825 () Option!15212)

(declare-fun get!21160 (Option!15212) tuple2!64600)

(assert (=> b!5377701 (= lt!2189812 (get!21160 lt!2189825))))

(assert (=> b!5377701 (= (Exists!2282 lambda!278029) (Exists!2282 lambda!278030))))

(declare-fun lt!2189800 () Unit!153922)

(assert (=> b!5377701 (= lt!2189800 (lemmaExistCutMatchRandMatchRSpecEquivalent!936 lt!2189791 (regTwo!30714 r!7292) s!2326))))

(assert (=> b!5377701 (= (isDefined!11915 lt!2189825) (Exists!2282 lambda!278029))))

(assert (=> b!5377701 (= lt!2189825 (findConcatSeparation!1626 lt!2189791 (regTwo!30714 r!7292) Nil!61478 s!2326 s!2326))))

(declare-fun lt!2189787 () Unit!153922)

(assert (=> b!5377701 (= lt!2189787 (lemmaFindConcatSeparationEquivalentToExists!1390 lt!2189791 (regTwo!30714 r!7292) s!2326))))

(declare-fun b!5377702 () Bool)

(assert (=> b!5377702 (= e!3336288 e!3336283)))

(declare-fun res!2283061 () Bool)

(assert (=> b!5377702 (=> res!2283061 e!3336283)))

(assert (=> b!5377702 (= res!2283061 (not lt!2189814))))

(assert (=> b!5377702 e!3336281))

(declare-fun res!2283052 () Bool)

(assert (=> b!5377702 (=> (not res!2283052) (not e!3336281))))

(declare-fun matchR!7286 (Regex!15101 List!61602) Bool)

(assert (=> b!5377702 (= res!2283052 (= (matchR!7286 lt!2189802 s!2326) (matchRSpec!2204 lt!2189802 s!2326)))))

(declare-fun lt!2189795 () Unit!153922)

(assert (=> b!5377702 (= lt!2189795 (mainMatchTheorem!2204 lt!2189802 s!2326))))

(declare-fun b!5377703 () Bool)

(declare-fun tp!1490977 () Bool)

(assert (=> b!5377703 (= e!3336284 tp!1490977)))

(declare-fun b!5377704 () Bool)

(declare-fun nullable!5270 (Regex!15101) Bool)

(assert (=> b!5377704 (= e!3336290 (nullable!5270 (regOne!30714 (regOne!30714 r!7292))))))

(declare-fun b!5377705 () Bool)

(declare-fun res!2283039 () Bool)

(assert (=> b!5377705 (=> res!2283039 e!3336291)))

(declare-fun isEmpty!33466 (List!61604) Bool)

(assert (=> b!5377705 (= res!2283039 (not (isEmpty!33466 (t!374827 zl!343))))))

(declare-fun b!5377706 () Bool)

(declare-fun e!3336275 () Bool)

(assert (=> b!5377706 (= e!3336279 e!3336275)))

(declare-fun res!2283050 () Bool)

(assert (=> b!5377706 (=> (not res!2283050) (not e!3336275))))

(declare-fun lt!2189805 () Regex!15101)

(assert (=> b!5377706 (= res!2283050 (= r!7292 lt!2189805))))

(assert (=> b!5377706 (= lt!2189805 (unfocusZipper!843 zl!343))))

(declare-fun b!5377707 () Bool)

(assert (=> b!5377707 (= e!3336287 e!3336288)))

(declare-fun res!2283038 () Bool)

(assert (=> b!5377707 (=> res!2283038 e!3336288)))

(declare-fun lt!2189817 () Context!8970)

(assert (=> b!5377707 (= res!2283038 (not (= (unfocusZipper!843 (Cons!61480 lt!2189817 Nil!61480)) (reg!15430 (regOne!30714 r!7292)))))))

(declare-fun lt!2189822 () (InoxSet Context!8970))

(assert (=> b!5377707 (= (flatMap!828 lt!2189822 lambda!278028) (derivationStepZipperUp!473 lt!2189815 (h!67926 s!2326)))))

(declare-fun lt!2189807 () Unit!153922)

(assert (=> b!5377707 (= lt!2189807 (lemmaFlatMapOnSingletonSet!360 lt!2189822 lt!2189815 lambda!278028))))

(declare-fun lt!2189792 () (InoxSet Context!8970))

(assert (=> b!5377707 (= (flatMap!828 lt!2189792 lambda!278028) (derivationStepZipperUp!473 lt!2189817 (h!67926 s!2326)))))

(declare-fun lt!2189821 () Unit!153922)

(assert (=> b!5377707 (= lt!2189821 (lemmaFlatMapOnSingletonSet!360 lt!2189792 lt!2189817 lambda!278028))))

(declare-fun lt!2189789 () (InoxSet Context!8970))

(assert (=> b!5377707 (= lt!2189789 (derivationStepZipperUp!473 lt!2189815 (h!67926 s!2326)))))

(declare-fun lt!2189803 () (InoxSet Context!8970))

(assert (=> b!5377707 (= lt!2189803 (derivationStepZipperUp!473 lt!2189817 (h!67926 s!2326)))))

(assert (=> b!5377707 (= lt!2189822 (store ((as const (Array Context!8970 Bool)) false) lt!2189815 true))))

(assert (=> b!5377707 (= lt!2189792 (store ((as const (Array Context!8970 Bool)) false) lt!2189817 true))))

(assert (=> b!5377707 (= lt!2189817 (Context!8971 (Cons!61479 (reg!15430 (regOne!30714 r!7292)) Nil!61479)))))

(declare-fun b!5377708 () Bool)

(assert (=> b!5377708 (= e!3336284 tp_is_empty!39455)))

(declare-fun b!5377709 () Bool)

(assert (=> b!5377709 (= e!3336275 (not e!3336291))))

(declare-fun res!2283051 () Bool)

(assert (=> b!5377709 (=> res!2283051 e!3336291)))

(assert (=> b!5377709 (= res!2283051 (not ((_ is Cons!61480) zl!343)))))

(assert (=> b!5377709 (= lt!2189814 lt!2189819)))

(assert (=> b!5377709 (= lt!2189819 (matchRSpec!2204 r!7292 s!2326))))

(assert (=> b!5377709 (= lt!2189814 (matchR!7286 r!7292 s!2326))))

(declare-fun lt!2189788 () Unit!153922)

(assert (=> b!5377709 (= lt!2189788 (mainMatchTheorem!2204 r!7292 s!2326))))

(declare-fun e!3336278 () Bool)

(assert (=> b!5377710 (= e!3336278 e!3336292)))

(declare-fun res!2283057 () Bool)

(assert (=> b!5377710 (=> res!2283057 e!3336292)))

(assert (=> b!5377710 (= res!2283057 (or (and ((_ is ElementMatch!15101) (regOne!30714 r!7292)) (= (c!937169 (regOne!30714 r!7292)) (h!67926 s!2326))) ((_ is Union!15101) (regOne!30714 r!7292))))))

(declare-fun lt!2189790 () Unit!153922)

(assert (=> b!5377710 (= lt!2189790 e!3336286)))

(declare-fun c!937168 () Bool)

(assert (=> b!5377710 (= c!937168 (nullable!5270 (h!67927 (exprs!4985 (h!67928 zl!343)))))))

(assert (=> b!5377710 (= (flatMap!828 z!1189 lambda!278028) (derivationStepZipperUp!473 (h!67928 zl!343) (h!67926 s!2326)))))

(declare-fun lt!2189798 () Unit!153922)

(assert (=> b!5377710 (= lt!2189798 (lemmaFlatMapOnSingletonSet!360 z!1189 (h!67928 zl!343) lambda!278028))))

(declare-fun lt!2189785 () Context!8970)

(assert (=> b!5377710 (= lt!2189820 (derivationStepZipperUp!473 lt!2189785 (h!67926 s!2326)))))

(assert (=> b!5377710 (= lt!2189797 (derivationStepZipperDown!549 (h!67927 (exprs!4985 (h!67928 zl!343))) lt!2189785 (h!67926 s!2326)))))

(assert (=> b!5377710 (= lt!2189785 (Context!8971 (t!374826 (exprs!4985 (h!67928 zl!343)))))))

(declare-fun lt!2189786 () (InoxSet Context!8970))

(assert (=> b!5377710 (= lt!2189786 (derivationStepZipperUp!473 (Context!8971 (Cons!61479 (h!67927 (exprs!4985 (h!67928 zl!343))) (t!374826 (exprs!4985 (h!67928 zl!343))))) (h!67926 s!2326)))))

(assert (=> b!5377711 (= e!3336291 e!3336278)))

(declare-fun res!2283059 () Bool)

(assert (=> b!5377711 (=> res!2283059 e!3336278)))

(declare-fun lt!2189801 () Bool)

(assert (=> b!5377711 (= res!2283059 (or (not (= lt!2189814 lt!2189801)) ((_ is Nil!61478) s!2326)))))

(assert (=> b!5377711 (= (Exists!2282 lambda!278026) (Exists!2282 lambda!278027))))

(declare-fun lt!2189796 () Unit!153922)

(assert (=> b!5377711 (= lt!2189796 (lemmaExistCutMatchRandMatchRSpecEquivalent!936 (regOne!30714 r!7292) (regTwo!30714 r!7292) s!2326))))

(assert (=> b!5377711 (= lt!2189801 (Exists!2282 lambda!278026))))

(assert (=> b!5377711 (= lt!2189801 (isDefined!11915 (findConcatSeparation!1626 (regOne!30714 r!7292) (regTwo!30714 r!7292) Nil!61478 s!2326 s!2326)))))

(declare-fun lt!2189816 () Unit!153922)

(assert (=> b!5377711 (= lt!2189816 (lemmaFindConcatSeparationEquivalentToExists!1390 (regOne!30714 r!7292) (regTwo!30714 r!7292) s!2326))))

(declare-fun b!5377712 () Bool)

(declare-fun res!2283048 () Bool)

(assert (=> b!5377712 (=> res!2283048 e!3336282)))

(assert (=> b!5377712 (= res!2283048 (not (matchR!7286 (regTwo!30714 r!7292) (_2!35603 lt!2189812))))))

(declare-fun b!5377713 () Bool)

(declare-fun res!2283063 () Bool)

(assert (=> b!5377713 (=> res!2283063 e!3336282)))

(assert (=> b!5377713 (= res!2283063 (not (matchR!7286 lt!2189791 (_1!35603 lt!2189812))))))

(declare-fun b!5377714 () Bool)

(declare-fun res!2283064 () Bool)

(assert (=> b!5377714 (=> res!2283064 e!3336278)))

(declare-fun isEmpty!33467 (List!61603) Bool)

(assert (=> b!5377714 (= res!2283064 (isEmpty!33467 (t!374826 (exprs!4985 (h!67928 zl!343)))))))

(declare-fun b!5377715 () Bool)

(declare-fun res!2283036 () Bool)

(assert (=> b!5377715 (=> res!2283036 e!3336291)))

(declare-fun generalisedConcat!770 (List!61603) Regex!15101)

(assert (=> b!5377715 (= res!2283036 (not (= r!7292 (generalisedConcat!770 (exprs!4985 (h!67928 zl!343))))))))

(declare-fun b!5377716 () Bool)

(declare-fun Unit!153925 () Unit!153922)

(assert (=> b!5377716 (= e!3336286 Unit!153925)))

(declare-fun setIsEmpty!34877 () Bool)

(assert (=> setIsEmpty!34877 setRes!34877))

(declare-fun b!5377717 () Bool)

(declare-fun tp!1490972 () Bool)

(declare-fun tp!1490978 () Bool)

(assert (=> b!5377717 (= e!3336284 (and tp!1490972 tp!1490978))))

(declare-fun b!5377718 () Bool)

(declare-fun res!2283042 () Bool)

(assert (=> b!5377718 (=> res!2283042 e!3336282)))

(declare-fun isEmpty!33468 (List!61602) Bool)

(assert (=> b!5377718 (= res!2283042 (isEmpty!33468 (_1!35603 lt!2189812)))))

(declare-fun b!5377719 () Bool)

(declare-fun res!2283065 () Bool)

(assert (=> b!5377719 (=> res!2283065 e!3336293)))

(assert (=> b!5377719 (= res!2283065 (not (= lt!2189805 r!7292)))))

(assert (= (and start!565614 res!2283055) b!5377680))

(assert (= (and b!5377680 res!2283043) b!5377706))

(assert (= (and b!5377706 res!2283050) b!5377709))

(assert (= (and b!5377709 (not res!2283051)) b!5377705))

(assert (= (and b!5377705 (not res!2283039)) b!5377715))

(assert (= (and b!5377715 (not res!2283036)) b!5377682))

(assert (= (and b!5377682 (not res!2283053)) b!5377697))

(assert (= (and b!5377697 (not res!2283058)) b!5377686))

(assert (= (and b!5377686 (not res!2283044)) b!5377711))

(assert (= (and b!5377711 (not res!2283059)) b!5377714))

(assert (= (and b!5377714 (not res!2283064)) b!5377710))

(assert (= (and b!5377710 c!937168) b!5377692))

(assert (= (and b!5377710 (not c!937168)) b!5377716))

(assert (= (and b!5377692 (not res!2283056)) b!5377694))

(assert (= (and b!5377710 (not res!2283057)) b!5377689))

(assert (= (and b!5377689 res!2283054) b!5377704))

(assert (= (and b!5377689 (not res!2283060)) b!5377695))

(assert (= (and b!5377695 (not res!2283040)) b!5377685))

(assert (= (and b!5377685 (not res!2283045)) b!5377696))

(assert (= (and b!5377696 (not res!2283037)) b!5377691))

(assert (= (and b!5377691 (not res!2283047)) b!5377719))

(assert (= (and b!5377719 (not res!2283065)) b!5377681))

(assert (= (and b!5377681 (not res!2283046)) b!5377693))

(assert (= (and b!5377693 (not res!2283049)) b!5377707))

(assert (= (and b!5377707 (not res!2283038)) b!5377699))

(assert (= (and b!5377699 (not res!2283041)) b!5377702))

(assert (= (and b!5377702 res!2283052) b!5377688))

(assert (= (and b!5377702 (not res!2283061)) b!5377701))

(assert (= (and b!5377701 (not res!2283062)) b!5377713))

(assert (= (and b!5377713 (not res!2283063)) b!5377712))

(assert (= (and b!5377712 (not res!2283048)) b!5377718))

(assert (= (and b!5377718 (not res!2283042)) b!5377687))

(assert (= (and start!565614 ((_ is ElementMatch!15101) r!7292)) b!5377708))

(assert (= (and start!565614 ((_ is Concat!23946) r!7292)) b!5377684))

(assert (= (and start!565614 ((_ is Star!15101) r!7292)) b!5377703))

(assert (= (and start!565614 ((_ is Union!15101) r!7292)) b!5377717))

(assert (= (and start!565614 condSetEmpty!34877) setIsEmpty!34877))

(assert (= (and start!565614 (not condSetEmpty!34877)) setNonEmpty!34877))

(assert (= setNonEmpty!34877 b!5377690))

(assert (= b!5377700 b!5377683))

(assert (= (and start!565614 ((_ is Cons!61480) zl!343)) b!5377700))

(assert (= (and start!565614 ((_ is Cons!61478) s!2326)) b!5377698))

(declare-fun m!6403968 () Bool)

(assert (=> start!565614 m!6403968))

(declare-fun m!6403970 () Bool)

(assert (=> b!5377707 m!6403970))

(declare-fun m!6403972 () Bool)

(assert (=> b!5377707 m!6403972))

(declare-fun m!6403974 () Bool)

(assert (=> b!5377707 m!6403974))

(declare-fun m!6403976 () Bool)

(assert (=> b!5377707 m!6403976))

(declare-fun m!6403978 () Bool)

(assert (=> b!5377707 m!6403978))

(declare-fun m!6403980 () Bool)

(assert (=> b!5377707 m!6403980))

(declare-fun m!6403982 () Bool)

(assert (=> b!5377707 m!6403982))

(declare-fun m!6403984 () Bool)

(assert (=> b!5377707 m!6403984))

(declare-fun m!6403986 () Bool)

(assert (=> b!5377707 m!6403986))

(declare-fun m!6403988 () Bool)

(assert (=> setNonEmpty!34877 m!6403988))

(declare-fun m!6403990 () Bool)

(assert (=> b!5377705 m!6403990))

(declare-fun m!6403992 () Bool)

(assert (=> b!5377715 m!6403992))

(declare-fun m!6403994 () Bool)

(assert (=> b!5377693 m!6403994))

(declare-fun m!6403996 () Bool)

(assert (=> b!5377700 m!6403996))

(declare-fun m!6403998 () Bool)

(assert (=> b!5377691 m!6403998))

(declare-fun m!6404000 () Bool)

(assert (=> b!5377691 m!6404000))

(declare-fun m!6404002 () Bool)

(assert (=> b!5377680 m!6404002))

(declare-fun m!6404004 () Bool)

(assert (=> b!5377711 m!6404004))

(declare-fun m!6404006 () Bool)

(assert (=> b!5377711 m!6404006))

(declare-fun m!6404008 () Bool)

(assert (=> b!5377711 m!6404008))

(declare-fun m!6404010 () Bool)

(assert (=> b!5377711 m!6404010))

(declare-fun m!6404012 () Bool)

(assert (=> b!5377711 m!6404012))

(assert (=> b!5377711 m!6404010))

(assert (=> b!5377711 m!6404004))

(declare-fun m!6404014 () Bool)

(assert (=> b!5377711 m!6404014))

(declare-fun m!6404016 () Bool)

(assert (=> b!5377706 m!6404016))

(declare-fun m!6404018 () Bool)

(assert (=> b!5377701 m!6404018))

(declare-fun m!6404020 () Bool)

(assert (=> b!5377701 m!6404020))

(declare-fun m!6404022 () Bool)

(assert (=> b!5377701 m!6404022))

(declare-fun m!6404024 () Bool)

(assert (=> b!5377701 m!6404024))

(declare-fun m!6404026 () Bool)

(assert (=> b!5377701 m!6404026))

(declare-fun m!6404028 () Bool)

(assert (=> b!5377701 m!6404028))

(declare-fun m!6404030 () Bool)

(assert (=> b!5377701 m!6404030))

(assert (=> b!5377701 m!6404030))

(declare-fun m!6404032 () Bool)

(assert (=> b!5377701 m!6404032))

(declare-fun m!6404034 () Bool)

(assert (=> b!5377713 m!6404034))

(declare-fun m!6404036 () Bool)

(assert (=> b!5377692 m!6404036))

(declare-fun m!6404038 () Bool)

(assert (=> b!5377692 m!6404038))

(declare-fun m!6404040 () Bool)

(assert (=> b!5377692 m!6404040))

(declare-fun m!6404042 () Bool)

(assert (=> b!5377704 m!6404042))

(declare-fun m!6404044 () Bool)

(assert (=> b!5377697 m!6404044))

(assert (=> b!5377697 m!6404044))

(declare-fun m!6404046 () Bool)

(assert (=> b!5377697 m!6404046))

(declare-fun m!6404048 () Bool)

(assert (=> b!5377710 m!6404048))

(declare-fun m!6404050 () Bool)

(assert (=> b!5377710 m!6404050))

(declare-fun m!6404052 () Bool)

(assert (=> b!5377710 m!6404052))

(declare-fun m!6404054 () Bool)

(assert (=> b!5377710 m!6404054))

(declare-fun m!6404056 () Bool)

(assert (=> b!5377710 m!6404056))

(declare-fun m!6404058 () Bool)

(assert (=> b!5377710 m!6404058))

(declare-fun m!6404060 () Bool)

(assert (=> b!5377710 m!6404060))

(declare-fun m!6404062 () Bool)

(assert (=> b!5377696 m!6404062))

(declare-fun m!6404064 () Bool)

(assert (=> b!5377696 m!6404064))

(declare-fun m!6404066 () Bool)

(assert (=> b!5377696 m!6404066))

(declare-fun m!6404068 () Bool)

(assert (=> b!5377696 m!6404068))

(declare-fun m!6404070 () Bool)

(assert (=> b!5377696 m!6404070))

(declare-fun m!6404072 () Bool)

(assert (=> b!5377709 m!6404072))

(declare-fun m!6404074 () Bool)

(assert (=> b!5377709 m!6404074))

(declare-fun m!6404076 () Bool)

(assert (=> b!5377709 m!6404076))

(declare-fun m!6404078 () Bool)

(assert (=> b!5377687 m!6404078))

(declare-fun m!6404080 () Bool)

(assert (=> b!5377687 m!6404080))

(declare-fun m!6404082 () Bool)

(assert (=> b!5377687 m!6404082))

(assert (=> b!5377687 m!6404078))

(declare-fun m!6404084 () Bool)

(assert (=> b!5377687 m!6404084))

(declare-fun m!6404086 () Bool)

(assert (=> b!5377687 m!6404086))

(declare-fun m!6404088 () Bool)

(assert (=> b!5377687 m!6404088))

(declare-fun m!6404090 () Bool)

(assert (=> b!5377687 m!6404090))

(declare-fun m!6404092 () Bool)

(assert (=> b!5377687 m!6404092))

(declare-fun m!6404094 () Bool)

(assert (=> b!5377687 m!6404094))

(declare-fun m!6404096 () Bool)

(assert (=> b!5377687 m!6404096))

(assert (=> b!5377687 m!6404078))

(assert (=> b!5377687 m!6404090))

(declare-fun m!6404098 () Bool)

(assert (=> b!5377718 m!6404098))

(declare-fun m!6404100 () Bool)

(assert (=> b!5377712 m!6404100))

(declare-fun m!6404102 () Bool)

(assert (=> b!5377694 m!6404102))

(declare-fun m!6404104 () Bool)

(assert (=> b!5377685 m!6404104))

(declare-fun m!6404106 () Bool)

(assert (=> b!5377702 m!6404106))

(declare-fun m!6404108 () Bool)

(assert (=> b!5377702 m!6404108))

(declare-fun m!6404110 () Bool)

(assert (=> b!5377702 m!6404110))

(declare-fun m!6404112 () Bool)

(assert (=> b!5377714 m!6404112))

(declare-fun m!6404114 () Bool)

(assert (=> b!5377699 m!6404114))

(check-sat (not b!5377693) (not b!5377694) (not b!5377704) (not b!5377705) (not setNonEmpty!34877) (not b!5377685) (not b!5377711) (not b!5377692) (not b!5377713) (not b!5377703) (not b!5377706) (not b!5377718) (not b!5377697) (not b!5377699) (not b!5377690) (not b!5377712) (not b!5377683) tp_is_empty!39455 (not b!5377715) (not b!5377714) (not b!5377696) (not b!5377717) (not b!5377707) (not b!5377698) (not b!5377701) (not b!5377691) (not b!5377687) (not b!5377710) (not b!5377709) (not b!5377684) (not start!565614) (not b!5377680) (not b!5377702) (not b!5377700))
(check-sat)
(get-model)

(declare-fun b!5377847 () Bool)

(declare-fun e!3336364 () Bool)

(declare-fun e!3336361 () Bool)

(assert (=> b!5377847 (= e!3336364 e!3336361)))

(declare-fun res!2283129 () Bool)

(assert (=> b!5377847 (=> res!2283129 e!3336361)))

(declare-fun call!385088 () Bool)

(assert (=> b!5377847 (= res!2283129 call!385088)))

(declare-fun b!5377848 () Bool)

(declare-fun res!2283127 () Bool)

(declare-fun e!3336363 () Bool)

(assert (=> b!5377848 (=> (not res!2283127) (not e!3336363))))

(assert (=> b!5377848 (= res!2283127 (not call!385088))))

(declare-fun b!5377849 () Bool)

(declare-fun res!2283131 () Bool)

(declare-fun e!3336360 () Bool)

(assert (=> b!5377849 (=> res!2283131 e!3336360)))

(assert (=> b!5377849 (= res!2283131 (not ((_ is ElementMatch!15101) lt!2189802)))))

(declare-fun e!3336362 () Bool)

(assert (=> b!5377849 (= e!3336362 e!3336360)))

(declare-fun b!5377850 () Bool)

(declare-fun e!3336359 () Bool)

(declare-fun lt!2189835 () Bool)

(assert (=> b!5377850 (= e!3336359 (= lt!2189835 call!385088))))

(declare-fun b!5377851 () Bool)

(declare-fun e!3336358 () Bool)

(assert (=> b!5377851 (= e!3336358 (nullable!5270 lt!2189802))))

(declare-fun b!5377852 () Bool)

(declare-fun derivativeStep!4231 (Regex!15101 C!30472) Regex!15101)

(declare-fun head!11537 (List!61602) C!30472)

(declare-fun tail!10634 (List!61602) List!61602)

(assert (=> b!5377852 (= e!3336358 (matchR!7286 (derivativeStep!4231 lt!2189802 (head!11537 s!2326)) (tail!10634 s!2326)))))

(declare-fun bm!385083 () Bool)

(assert (=> bm!385083 (= call!385088 (isEmpty!33468 s!2326))))

(declare-fun b!5377853 () Bool)

(declare-fun res!2283130 () Bool)

(assert (=> b!5377853 (=> (not res!2283130) (not e!3336363))))

(assert (=> b!5377853 (= res!2283130 (isEmpty!33468 (tail!10634 s!2326)))))

(declare-fun d!1721292 () Bool)

(assert (=> d!1721292 e!3336359))

(declare-fun c!937202 () Bool)

(assert (=> d!1721292 (= c!937202 ((_ is EmptyExpr!15101) lt!2189802))))

(assert (=> d!1721292 (= lt!2189835 e!3336358)))

(declare-fun c!937200 () Bool)

(assert (=> d!1721292 (= c!937200 (isEmpty!33468 s!2326))))

(assert (=> d!1721292 (validRegex!6837 lt!2189802)))

(assert (=> d!1721292 (= (matchR!7286 lt!2189802 s!2326) lt!2189835)))

(declare-fun b!5377854 () Bool)

(declare-fun res!2283132 () Bool)

(assert (=> b!5377854 (=> res!2283132 e!3336361)))

(assert (=> b!5377854 (= res!2283132 (not (isEmpty!33468 (tail!10634 s!2326))))))

(declare-fun b!5377855 () Bool)

(assert (=> b!5377855 (= e!3336359 e!3336362)))

(declare-fun c!937201 () Bool)

(assert (=> b!5377855 (= c!937201 ((_ is EmptyLang!15101) lt!2189802))))

(declare-fun b!5377856 () Bool)

(assert (=> b!5377856 (= e!3336361 (not (= (head!11537 s!2326) (c!937169 lt!2189802))))))

(declare-fun b!5377857 () Bool)

(assert (=> b!5377857 (= e!3336360 e!3336364)))

(declare-fun res!2283126 () Bool)

(assert (=> b!5377857 (=> (not res!2283126) (not e!3336364))))

(assert (=> b!5377857 (= res!2283126 (not lt!2189835))))

(declare-fun b!5377858 () Bool)

(declare-fun res!2283125 () Bool)

(assert (=> b!5377858 (=> res!2283125 e!3336360)))

(assert (=> b!5377858 (= res!2283125 e!3336363)))

(declare-fun res!2283128 () Bool)

(assert (=> b!5377858 (=> (not res!2283128) (not e!3336363))))

(assert (=> b!5377858 (= res!2283128 lt!2189835)))

(declare-fun b!5377859 () Bool)

(assert (=> b!5377859 (= e!3336363 (= (head!11537 s!2326) (c!937169 lt!2189802)))))

(declare-fun b!5377860 () Bool)

(assert (=> b!5377860 (= e!3336362 (not lt!2189835))))

(assert (= (and d!1721292 c!937200) b!5377851))

(assert (= (and d!1721292 (not c!937200)) b!5377852))

(assert (= (and d!1721292 c!937202) b!5377850))

(assert (= (and d!1721292 (not c!937202)) b!5377855))

(assert (= (and b!5377855 c!937201) b!5377860))

(assert (= (and b!5377855 (not c!937201)) b!5377849))

(assert (= (and b!5377849 (not res!2283131)) b!5377858))

(assert (= (and b!5377858 res!2283128) b!5377848))

(assert (= (and b!5377848 res!2283127) b!5377853))

(assert (= (and b!5377853 res!2283130) b!5377859))

(assert (= (and b!5377858 (not res!2283125)) b!5377857))

(assert (= (and b!5377857 res!2283126) b!5377847))

(assert (= (and b!5377847 (not res!2283129)) b!5377854))

(assert (= (and b!5377854 (not res!2283132)) b!5377856))

(assert (= (or b!5377850 b!5377847 b!5377848) bm!385083))

(declare-fun m!6404152 () Bool)

(assert (=> b!5377856 m!6404152))

(declare-fun m!6404154 () Bool)

(assert (=> b!5377853 m!6404154))

(assert (=> b!5377853 m!6404154))

(declare-fun m!6404156 () Bool)

(assert (=> b!5377853 m!6404156))

(assert (=> b!5377859 m!6404152))

(assert (=> b!5377852 m!6404152))

(assert (=> b!5377852 m!6404152))

(declare-fun m!6404158 () Bool)

(assert (=> b!5377852 m!6404158))

(assert (=> b!5377852 m!6404154))

(assert (=> b!5377852 m!6404158))

(assert (=> b!5377852 m!6404154))

(declare-fun m!6404162 () Bool)

(assert (=> b!5377852 m!6404162))

(declare-fun m!6404164 () Bool)

(assert (=> b!5377851 m!6404164))

(declare-fun m!6404166 () Bool)

(assert (=> bm!385083 m!6404166))

(assert (=> d!1721292 m!6404166))

(declare-fun m!6404168 () Bool)

(assert (=> d!1721292 m!6404168))

(assert (=> b!5377854 m!6404154))

(assert (=> b!5377854 m!6404154))

(assert (=> b!5377854 m!6404156))

(assert (=> b!5377702 d!1721292))

(declare-fun bs!1245058 () Bool)

(declare-fun b!5377937 () Bool)

(assert (= bs!1245058 (and b!5377937 b!5377687)))

(declare-fun lambda!278050 () Int)

(assert (=> bs!1245058 (not (= lambda!278050 lambda!278033))))

(declare-fun bs!1245059 () Bool)

(assert (= bs!1245059 (and b!5377937 b!5377711)))

(assert (=> bs!1245059 (not (= lambda!278050 lambda!278027))))

(assert (=> bs!1245059 (not (= lambda!278050 lambda!278026))))

(assert (=> bs!1245058 (not (= lambda!278050 lambda!278031))))

(declare-fun bs!1245062 () Bool)

(assert (= bs!1245062 (and b!5377937 b!5377701)))

(assert (=> bs!1245062 (not (= lambda!278050 lambda!278029))))

(assert (=> bs!1245058 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (reg!15430 lt!2189802) (reg!15430 (regOne!30714 r!7292))) (= lt!2189802 lt!2189791)) (= lambda!278050 lambda!278032))))

(assert (=> bs!1245062 (not (= lambda!278050 lambda!278030))))

(assert (=> b!5377937 true))

(assert (=> b!5377937 true))

(declare-fun bs!1245064 () Bool)

(declare-fun b!5377943 () Bool)

(assert (= bs!1245064 (and b!5377943 b!5377687)))

(declare-fun lambda!278054 () Int)

(assert (=> bs!1245064 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 lt!2189802) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 lt!2189802) lt!2189791)) (= lambda!278054 lambda!278033))))

(declare-fun bs!1245065 () Bool)

(assert (= bs!1245065 (and b!5377943 b!5377711)))

(assert (=> bs!1245065 (= (and (= (regOne!30714 lt!2189802) (regOne!30714 r!7292)) (= (regTwo!30714 lt!2189802) (regTwo!30714 r!7292))) (= lambda!278054 lambda!278027))))

(assert (=> bs!1245065 (not (= lambda!278054 lambda!278026))))

(assert (=> bs!1245064 (not (= lambda!278054 lambda!278031))))

(declare-fun bs!1245066 () Bool)

(assert (= bs!1245066 (and b!5377943 b!5377701)))

(assert (=> bs!1245066 (not (= lambda!278054 lambda!278029))))

(declare-fun bs!1245067 () Bool)

(assert (= bs!1245067 (and b!5377943 b!5377937)))

(assert (=> bs!1245067 (not (= lambda!278054 lambda!278050))))

(assert (=> bs!1245064 (not (= lambda!278054 lambda!278032))))

(assert (=> bs!1245066 (= (and (= (regOne!30714 lt!2189802) lt!2189791) (= (regTwo!30714 lt!2189802) (regTwo!30714 r!7292))) (= lambda!278054 lambda!278030))))

(assert (=> b!5377943 true))

(assert (=> b!5377943 true))

(declare-fun b!5377936 () Bool)

(declare-fun e!3336411 () Bool)

(declare-fun e!3336413 () Bool)

(assert (=> b!5377936 (= e!3336411 e!3336413)))

(declare-fun res!2283160 () Bool)

(assert (=> b!5377936 (= res!2283160 (not ((_ is EmptyLang!15101) lt!2189802)))))

(assert (=> b!5377936 (=> (not res!2283160) (not e!3336413))))

(declare-fun d!1721300 () Bool)

(declare-fun c!937231 () Bool)

(assert (=> d!1721300 (= c!937231 ((_ is EmptyExpr!15101) lt!2189802))))

(assert (=> d!1721300 (= (matchRSpec!2204 lt!2189802 s!2326) e!3336411)))

(declare-fun e!3336414 () Bool)

(declare-fun call!385094 () Bool)

(assert (=> b!5377937 (= e!3336414 call!385094)))

(declare-fun b!5377938 () Bool)

(declare-fun e!3336415 () Bool)

(assert (=> b!5377938 (= e!3336415 (matchRSpec!2204 (regTwo!30715 lt!2189802) s!2326))))

(declare-fun b!5377939 () Bool)

(declare-fun c!937228 () Bool)

(assert (=> b!5377939 (= c!937228 ((_ is ElementMatch!15101) lt!2189802))))

(declare-fun e!3336409 () Bool)

(assert (=> b!5377939 (= e!3336413 e!3336409)))

(declare-fun b!5377940 () Bool)

(assert (=> b!5377940 (= e!3336409 (= s!2326 (Cons!61478 (c!937169 lt!2189802) Nil!61478)))))

(declare-fun b!5377941 () Bool)

(declare-fun call!385093 () Bool)

(assert (=> b!5377941 (= e!3336411 call!385093)))

(declare-fun b!5377942 () Bool)

(declare-fun e!3336412 () Bool)

(assert (=> b!5377942 (= e!3336412 e!3336415)))

(declare-fun res!2283159 () Bool)

(assert (=> b!5377942 (= res!2283159 (matchRSpec!2204 (regOne!30715 lt!2189802) s!2326))))

(assert (=> b!5377942 (=> res!2283159 e!3336415)))

(declare-fun e!3336410 () Bool)

(assert (=> b!5377943 (= e!3336410 call!385094)))

(declare-fun bm!385088 () Bool)

(assert (=> bm!385088 (= call!385093 (isEmpty!33468 s!2326))))

(declare-fun c!937229 () Bool)

(declare-fun bm!385089 () Bool)

(assert (=> bm!385089 (= call!385094 (Exists!2282 (ite c!937229 lambda!278050 lambda!278054)))))

(declare-fun b!5377944 () Bool)

(assert (=> b!5377944 (= e!3336412 e!3336410)))

(assert (=> b!5377944 (= c!937229 ((_ is Star!15101) lt!2189802))))

(declare-fun b!5377945 () Bool)

(declare-fun c!937230 () Bool)

(assert (=> b!5377945 (= c!937230 ((_ is Union!15101) lt!2189802))))

(assert (=> b!5377945 (= e!3336409 e!3336412)))

(declare-fun b!5377946 () Bool)

(declare-fun res!2283158 () Bool)

(assert (=> b!5377946 (=> res!2283158 e!3336414)))

(assert (=> b!5377946 (= res!2283158 call!385093)))

(assert (=> b!5377946 (= e!3336410 e!3336414)))

(assert (= (and d!1721300 c!937231) b!5377941))

(assert (= (and d!1721300 (not c!937231)) b!5377936))

(assert (= (and b!5377936 res!2283160) b!5377939))

(assert (= (and b!5377939 c!937228) b!5377940))

(assert (= (and b!5377939 (not c!937228)) b!5377945))

(assert (= (and b!5377945 c!937230) b!5377942))

(assert (= (and b!5377945 (not c!937230)) b!5377944))

(assert (= (and b!5377942 (not res!2283159)) b!5377938))

(assert (= (and b!5377944 c!937229) b!5377946))

(assert (= (and b!5377944 (not c!937229)) b!5377943))

(assert (= (and b!5377946 (not res!2283158)) b!5377937))

(assert (= (or b!5377937 b!5377943) bm!385089))

(assert (= (or b!5377941 b!5377946) bm!385088))

(declare-fun m!6404214 () Bool)

(assert (=> b!5377938 m!6404214))

(declare-fun m!6404216 () Bool)

(assert (=> b!5377942 m!6404216))

(assert (=> bm!385088 m!6404166))

(declare-fun m!6404218 () Bool)

(assert (=> bm!385089 m!6404218))

(assert (=> b!5377702 d!1721300))

(declare-fun d!1721316 () Bool)

(assert (=> d!1721316 (= (matchR!7286 lt!2189802 s!2326) (matchRSpec!2204 lt!2189802 s!2326))))

(declare-fun lt!2189850 () Unit!153922)

(declare-fun choose!40408 (Regex!15101 List!61602) Unit!153922)

(assert (=> d!1721316 (= lt!2189850 (choose!40408 lt!2189802 s!2326))))

(assert (=> d!1721316 (validRegex!6837 lt!2189802)))

(assert (=> d!1721316 (= (mainMatchTheorem!2204 lt!2189802 s!2326) lt!2189850)))

(declare-fun bs!1245070 () Bool)

(assert (= bs!1245070 d!1721316))

(assert (=> bs!1245070 m!6404106))

(assert (=> bs!1245070 m!6404108))

(declare-fun m!6404222 () Bool)

(assert (=> bs!1245070 m!6404222))

(assert (=> bs!1245070 m!6404168))

(assert (=> b!5377702 d!1721316))

(declare-fun d!1721322 () Bool)

(declare-fun choose!40409 (Int) Bool)

(assert (=> d!1721322 (= (Exists!2282 lambda!278029) (choose!40409 lambda!278029))))

(declare-fun bs!1245071 () Bool)

(assert (= bs!1245071 d!1721322))

(declare-fun m!6404224 () Bool)

(assert (=> bs!1245071 m!6404224))

(assert (=> b!5377701 d!1721322))

(declare-fun bs!1245077 () Bool)

(declare-fun d!1721324 () Bool)

(assert (= bs!1245077 (and d!1721324 b!5377687)))

(declare-fun lambda!278062 () Int)

(assert (=> bs!1245077 (not (= lambda!278062 lambda!278033))))

(declare-fun bs!1245078 () Bool)

(assert (= bs!1245078 (and d!1721324 b!5377711)))

(assert (=> bs!1245078 (not (= lambda!278062 lambda!278027))))

(assert (=> bs!1245078 (= (= lt!2189791 (regOne!30714 r!7292)) (= lambda!278062 lambda!278026))))

(assert (=> bs!1245077 (= (and (= s!2326 (_1!35603 lt!2189812)) (= lt!2189791 (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278062 lambda!278031))))

(declare-fun bs!1245080 () Bool)

(assert (= bs!1245080 (and d!1721324 b!5377701)))

(assert (=> bs!1245080 (= lambda!278062 lambda!278029)))

(declare-fun bs!1245081 () Bool)

(assert (= bs!1245081 (and d!1721324 b!5377943)))

(assert (=> bs!1245081 (not (= lambda!278062 lambda!278054))))

(declare-fun bs!1245082 () Bool)

(assert (= bs!1245082 (and d!1721324 b!5377937)))

(assert (=> bs!1245082 (not (= lambda!278062 lambda!278050))))

(assert (=> bs!1245077 (not (= lambda!278062 lambda!278032))))

(assert (=> bs!1245080 (not (= lambda!278062 lambda!278030))))

(assert (=> d!1721324 true))

(assert (=> d!1721324 true))

(assert (=> d!1721324 true))

(assert (=> d!1721324 (= (isDefined!11915 (findConcatSeparation!1626 lt!2189791 (regTwo!30714 r!7292) Nil!61478 s!2326 s!2326)) (Exists!2282 lambda!278062))))

(declare-fun lt!2189856 () Unit!153922)

(declare-fun choose!40410 (Regex!15101 Regex!15101 List!61602) Unit!153922)

(assert (=> d!1721324 (= lt!2189856 (choose!40410 lt!2189791 (regTwo!30714 r!7292) s!2326))))

(assert (=> d!1721324 (validRegex!6837 lt!2189791)))

(assert (=> d!1721324 (= (lemmaFindConcatSeparationEquivalentToExists!1390 lt!2189791 (regTwo!30714 r!7292) s!2326) lt!2189856)))

(declare-fun bs!1245083 () Bool)

(assert (= bs!1245083 d!1721324))

(declare-fun m!6404226 () Bool)

(assert (=> bs!1245083 m!6404226))

(declare-fun m!6404230 () Bool)

(assert (=> bs!1245083 m!6404230))

(assert (=> bs!1245083 m!6404032))

(declare-fun m!6404238 () Bool)

(assert (=> bs!1245083 m!6404238))

(declare-fun m!6404240 () Bool)

(assert (=> bs!1245083 m!6404240))

(assert (=> bs!1245083 m!6404032))

(assert (=> b!5377701 d!1721324))

(declare-fun d!1721328 () Bool)

(declare-fun e!3336432 () Bool)

(assert (=> d!1721328 e!3336432))

(declare-fun res!2283184 () Bool)

(assert (=> d!1721328 (=> (not res!2283184) (not e!3336432))))

(declare-fun lt!2189862 () List!61602)

(declare-fun content!10993 (List!61602) (InoxSet C!30472))

(assert (=> d!1721328 (= res!2283184 (= (content!10993 lt!2189862) ((_ map or) (content!10993 (_1!35603 lt!2189812)) (content!10993 (_2!35603 lt!2189812)))))))

(declare-fun e!3336433 () List!61602)

(assert (=> d!1721328 (= lt!2189862 e!3336433)))

(declare-fun c!937237 () Bool)

(assert (=> d!1721328 (= c!937237 ((_ is Nil!61478) (_1!35603 lt!2189812)))))

(assert (=> d!1721328 (= (++!13404 (_1!35603 lt!2189812) (_2!35603 lt!2189812)) lt!2189862)))

(declare-fun b!5377980 () Bool)

(assert (=> b!5377980 (= e!3336433 (Cons!61478 (h!67926 (_1!35603 lt!2189812)) (++!13404 (t!374825 (_1!35603 lt!2189812)) (_2!35603 lt!2189812))))))

(declare-fun b!5377982 () Bool)

(assert (=> b!5377982 (= e!3336432 (or (not (= (_2!35603 lt!2189812) Nil!61478)) (= lt!2189862 (_1!35603 lt!2189812))))))

(declare-fun b!5377981 () Bool)

(declare-fun res!2283183 () Bool)

(assert (=> b!5377981 (=> (not res!2283183) (not e!3336432))))

(declare-fun size!39800 (List!61602) Int)

(assert (=> b!5377981 (= res!2283183 (= (size!39800 lt!2189862) (+ (size!39800 (_1!35603 lt!2189812)) (size!39800 (_2!35603 lt!2189812)))))))

(declare-fun b!5377979 () Bool)

(assert (=> b!5377979 (= e!3336433 (_2!35603 lt!2189812))))

(assert (= (and d!1721328 c!937237) b!5377979))

(assert (= (and d!1721328 (not c!937237)) b!5377980))

(assert (= (and d!1721328 res!2283184) b!5377981))

(assert (= (and b!5377981 res!2283183) b!5377982))

(declare-fun m!6404248 () Bool)

(assert (=> d!1721328 m!6404248))

(declare-fun m!6404250 () Bool)

(assert (=> d!1721328 m!6404250))

(declare-fun m!6404254 () Bool)

(assert (=> d!1721328 m!6404254))

(declare-fun m!6404260 () Bool)

(assert (=> b!5377980 m!6404260))

(declare-fun m!6404264 () Bool)

(assert (=> b!5377981 m!6404264))

(declare-fun m!6404266 () Bool)

(assert (=> b!5377981 m!6404266))

(declare-fun m!6404268 () Bool)

(assert (=> b!5377981 m!6404268))

(assert (=> b!5377701 d!1721328))

(declare-fun d!1721332 () Bool)

(assert (=> d!1721332 (= (get!21160 lt!2189825) (v!51240 lt!2189825))))

(assert (=> b!5377701 d!1721332))

(declare-fun d!1721334 () Bool)

(assert (=> d!1721334 (= (Exists!2282 lambda!278030) (choose!40409 lambda!278030))))

(declare-fun bs!1245084 () Bool)

(assert (= bs!1245084 d!1721334))

(declare-fun m!6404270 () Bool)

(assert (=> bs!1245084 m!6404270))

(assert (=> b!5377701 d!1721334))

(declare-fun bs!1245085 () Bool)

(declare-fun d!1721336 () Bool)

(assert (= bs!1245085 (and d!1721336 b!5377711)))

(declare-fun lambda!278068 () Int)

(assert (=> bs!1245085 (not (= lambda!278068 lambda!278027))))

(assert (=> bs!1245085 (= (= lt!2189791 (regOne!30714 r!7292)) (= lambda!278068 lambda!278026))))

(declare-fun bs!1245086 () Bool)

(assert (= bs!1245086 (and d!1721336 b!5377687)))

(assert (=> bs!1245086 (= (and (= s!2326 (_1!35603 lt!2189812)) (= lt!2189791 (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278068 lambda!278031))))

(declare-fun bs!1245087 () Bool)

(assert (= bs!1245087 (and d!1721336 b!5377701)))

(assert (=> bs!1245087 (= lambda!278068 lambda!278029)))

(declare-fun bs!1245088 () Bool)

(assert (= bs!1245088 (and d!1721336 b!5377943)))

(assert (=> bs!1245088 (not (= lambda!278068 lambda!278054))))

(declare-fun bs!1245089 () Bool)

(assert (= bs!1245089 (and d!1721336 b!5377937)))

(assert (=> bs!1245089 (not (= lambda!278068 lambda!278050))))

(assert (=> bs!1245086 (not (= lambda!278068 lambda!278032))))

(assert (=> bs!1245087 (not (= lambda!278068 lambda!278030))))

(declare-fun bs!1245090 () Bool)

(assert (= bs!1245090 (and d!1721336 d!1721324)))

(assert (=> bs!1245090 (= lambda!278068 lambda!278062)))

(assert (=> bs!1245086 (not (= lambda!278068 lambda!278033))))

(assert (=> d!1721336 true))

(assert (=> d!1721336 true))

(assert (=> d!1721336 true))

(declare-fun lambda!278069 () Int)

(assert (=> bs!1245085 (= (= lt!2189791 (regOne!30714 r!7292)) (= lambda!278069 lambda!278027))))

(declare-fun bs!1245091 () Bool)

(assert (= bs!1245091 d!1721336))

(assert (=> bs!1245091 (not (= lambda!278069 lambda!278068))))

(assert (=> bs!1245085 (not (= lambda!278069 lambda!278026))))

(assert (=> bs!1245086 (not (= lambda!278069 lambda!278031))))

(assert (=> bs!1245087 (not (= lambda!278069 lambda!278029))))

(assert (=> bs!1245088 (= (and (= lt!2189791 (regOne!30714 lt!2189802)) (= (regTwo!30714 r!7292) (regTwo!30714 lt!2189802))) (= lambda!278069 lambda!278054))))

(assert (=> bs!1245089 (not (= lambda!278069 lambda!278050))))

(assert (=> bs!1245086 (not (= lambda!278069 lambda!278032))))

(assert (=> bs!1245087 (= lambda!278069 lambda!278030)))

(assert (=> bs!1245090 (not (= lambda!278069 lambda!278062))))

(assert (=> bs!1245086 (= (and (= s!2326 (_1!35603 lt!2189812)) (= lt!2189791 (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278069 lambda!278033))))

(assert (=> d!1721336 true))

(assert (=> d!1721336 true))

(assert (=> d!1721336 true))

(assert (=> d!1721336 (= (Exists!2282 lambda!278068) (Exists!2282 lambda!278069))))

(declare-fun lt!2189871 () Unit!153922)

(declare-fun choose!40412 (Regex!15101 Regex!15101 List!61602) Unit!153922)

(assert (=> d!1721336 (= lt!2189871 (choose!40412 lt!2189791 (regTwo!30714 r!7292) s!2326))))

(assert (=> d!1721336 (validRegex!6837 lt!2189791)))

(assert (=> d!1721336 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!936 lt!2189791 (regTwo!30714 r!7292) s!2326) lt!2189871)))

(declare-fun m!6404272 () Bool)

(assert (=> bs!1245091 m!6404272))

(declare-fun m!6404274 () Bool)

(assert (=> bs!1245091 m!6404274))

(declare-fun m!6404276 () Bool)

(assert (=> bs!1245091 m!6404276))

(assert (=> bs!1245091 m!6404240))

(assert (=> b!5377701 d!1721336))

(declare-fun d!1721338 () Bool)

(declare-fun isEmpty!33470 (Option!15212) Bool)

(assert (=> d!1721338 (= (isDefined!11915 lt!2189825) (not (isEmpty!33470 lt!2189825)))))

(declare-fun bs!1245092 () Bool)

(assert (= bs!1245092 d!1721338))

(declare-fun m!6404278 () Bool)

(assert (=> bs!1245092 m!6404278))

(assert (=> b!5377701 d!1721338))

(declare-fun b!5378040 () Bool)

(declare-fun res!2283223 () Bool)

(declare-fun e!3336469 () Bool)

(assert (=> b!5378040 (=> (not res!2283223) (not e!3336469))))

(declare-fun lt!2189884 () Option!15212)

(assert (=> b!5378040 (= res!2283223 (matchR!7286 lt!2189791 (_1!35603 (get!21160 lt!2189884))))))

(declare-fun b!5378041 () Bool)

(declare-fun e!3336465 () Option!15212)

(declare-fun e!3336467 () Option!15212)

(assert (=> b!5378041 (= e!3336465 e!3336467)))

(declare-fun c!937248 () Bool)

(assert (=> b!5378041 (= c!937248 ((_ is Nil!61478) s!2326))))

(declare-fun b!5378042 () Bool)

(declare-fun lt!2189885 () Unit!153922)

(declare-fun lt!2189886 () Unit!153922)

(assert (=> b!5378042 (= lt!2189885 lt!2189886)))

(assert (=> b!5378042 (= (++!13404 (++!13404 Nil!61478 (Cons!61478 (h!67926 s!2326) Nil!61478)) (t!374825 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1804 (List!61602 C!30472 List!61602 List!61602) Unit!153922)

(assert (=> b!5378042 (= lt!2189886 (lemmaMoveElementToOtherListKeepsConcatEq!1804 Nil!61478 (h!67926 s!2326) (t!374825 s!2326) s!2326))))

(assert (=> b!5378042 (= e!3336467 (findConcatSeparation!1626 lt!2189791 (regTwo!30714 r!7292) (++!13404 Nil!61478 (Cons!61478 (h!67926 s!2326) Nil!61478)) (t!374825 s!2326) s!2326))))

(declare-fun b!5378043 () Bool)

(declare-fun e!3336466 () Bool)

(assert (=> b!5378043 (= e!3336466 (matchR!7286 (regTwo!30714 r!7292) s!2326))))

(declare-fun b!5378044 () Bool)

(assert (=> b!5378044 (= e!3336467 None!15211)))

(declare-fun b!5378045 () Bool)

(assert (=> b!5378045 (= e!3336465 (Some!15211 (tuple2!64601 Nil!61478 s!2326)))))

(declare-fun d!1721340 () Bool)

(declare-fun e!3336468 () Bool)

(assert (=> d!1721340 e!3336468))

(declare-fun res!2283225 () Bool)

(assert (=> d!1721340 (=> res!2283225 e!3336468)))

(assert (=> d!1721340 (= res!2283225 e!3336469)))

(declare-fun res!2283226 () Bool)

(assert (=> d!1721340 (=> (not res!2283226) (not e!3336469))))

(assert (=> d!1721340 (= res!2283226 (isDefined!11915 lt!2189884))))

(assert (=> d!1721340 (= lt!2189884 e!3336465)))

(declare-fun c!937249 () Bool)

(assert (=> d!1721340 (= c!937249 e!3336466)))

(declare-fun res!2283224 () Bool)

(assert (=> d!1721340 (=> (not res!2283224) (not e!3336466))))

(assert (=> d!1721340 (= res!2283224 (matchR!7286 lt!2189791 Nil!61478))))

(assert (=> d!1721340 (validRegex!6837 lt!2189791)))

(assert (=> d!1721340 (= (findConcatSeparation!1626 lt!2189791 (regTwo!30714 r!7292) Nil!61478 s!2326 s!2326) lt!2189884)))

(declare-fun b!5378046 () Bool)

(assert (=> b!5378046 (= e!3336469 (= (++!13404 (_1!35603 (get!21160 lt!2189884)) (_2!35603 (get!21160 lt!2189884))) s!2326))))

(declare-fun b!5378047 () Bool)

(assert (=> b!5378047 (= e!3336468 (not (isDefined!11915 lt!2189884)))))

(declare-fun b!5378048 () Bool)

(declare-fun res!2283222 () Bool)

(assert (=> b!5378048 (=> (not res!2283222) (not e!3336469))))

(assert (=> b!5378048 (= res!2283222 (matchR!7286 (regTwo!30714 r!7292) (_2!35603 (get!21160 lt!2189884))))))

(assert (= (and d!1721340 res!2283224) b!5378043))

(assert (= (and d!1721340 c!937249) b!5378045))

(assert (= (and d!1721340 (not c!937249)) b!5378041))

(assert (= (and b!5378041 c!937248) b!5378044))

(assert (= (and b!5378041 (not c!937248)) b!5378042))

(assert (= (and d!1721340 res!2283226) b!5378040))

(assert (= (and b!5378040 res!2283223) b!5378048))

(assert (= (and b!5378048 res!2283222) b!5378046))

(assert (= (and d!1721340 (not res!2283225)) b!5378047))

(declare-fun m!6404312 () Bool)

(assert (=> b!5378048 m!6404312))

(declare-fun m!6404314 () Bool)

(assert (=> b!5378048 m!6404314))

(assert (=> b!5378040 m!6404312))

(declare-fun m!6404316 () Bool)

(assert (=> b!5378040 m!6404316))

(declare-fun m!6404318 () Bool)

(assert (=> b!5378047 m!6404318))

(declare-fun m!6404320 () Bool)

(assert (=> b!5378043 m!6404320))

(assert (=> d!1721340 m!6404318))

(declare-fun m!6404322 () Bool)

(assert (=> d!1721340 m!6404322))

(assert (=> d!1721340 m!6404240))

(declare-fun m!6404324 () Bool)

(assert (=> b!5378042 m!6404324))

(assert (=> b!5378042 m!6404324))

(declare-fun m!6404326 () Bool)

(assert (=> b!5378042 m!6404326))

(declare-fun m!6404328 () Bool)

(assert (=> b!5378042 m!6404328))

(assert (=> b!5378042 m!6404324))

(declare-fun m!6404330 () Bool)

(assert (=> b!5378042 m!6404330))

(assert (=> b!5378046 m!6404312))

(declare-fun m!6404332 () Bool)

(assert (=> b!5378046 m!6404332))

(assert (=> b!5377701 d!1721340))

(declare-fun d!1721350 () Bool)

(declare-fun e!3336484 () Bool)

(assert (=> d!1721350 e!3336484))

(declare-fun res!2283233 () Bool)

(assert (=> d!1721350 (=> (not res!2283233) (not e!3336484))))

(declare-fun lt!2189891 () List!61604)

(declare-fun noDuplicate!1363 (List!61604) Bool)

(assert (=> d!1721350 (= res!2283233 (noDuplicate!1363 lt!2189891))))

(declare-fun choose!40413 ((InoxSet Context!8970)) List!61604)

(assert (=> d!1721350 (= lt!2189891 (choose!40413 z!1189))))

(assert (=> d!1721350 (= (toList!8885 z!1189) lt!2189891)))

(declare-fun b!5378071 () Bool)

(declare-fun content!10995 (List!61604) (InoxSet Context!8970))

(assert (=> b!5378071 (= e!3336484 (= (content!10995 lt!2189891) z!1189))))

(assert (= (and d!1721350 res!2283233) b!5378071))

(declare-fun m!6404334 () Bool)

(assert (=> d!1721350 m!6404334))

(declare-fun m!6404336 () Bool)

(assert (=> d!1721350 m!6404336))

(declare-fun m!6404338 () Bool)

(assert (=> b!5378071 m!6404338))

(assert (=> b!5377680 d!1721350))

(declare-fun d!1721352 () Bool)

(declare-fun lambda!278078 () Int)

(declare-fun forall!14503 (List!61603 Int) Bool)

(assert (=> d!1721352 (= (inv!80999 (h!67928 zl!343)) (forall!14503 (exprs!4985 (h!67928 zl!343)) lambda!278078))))

(declare-fun bs!1245104 () Bool)

(assert (= bs!1245104 d!1721352))

(declare-fun m!6404340 () Bool)

(assert (=> bs!1245104 m!6404340))

(assert (=> b!5377700 d!1721352))

(declare-fun d!1721354 () Bool)

(declare-fun lt!2189896 () Regex!15101)

(assert (=> d!1721354 (validRegex!6837 lt!2189896)))

(assert (=> d!1721354 (= lt!2189896 (generalisedUnion!1030 (unfocusZipperList!543 (Cons!61480 lt!2189815 Nil!61480))))))

(assert (=> d!1721354 (= (unfocusZipper!843 (Cons!61480 lt!2189815 Nil!61480)) lt!2189896)))

(declare-fun bs!1245108 () Bool)

(assert (= bs!1245108 d!1721354))

(declare-fun m!6404368 () Bool)

(assert (=> bs!1245108 m!6404368))

(declare-fun m!6404370 () Bool)

(assert (=> bs!1245108 m!6404370))

(assert (=> bs!1245108 m!6404370))

(declare-fun m!6404372 () Bool)

(assert (=> bs!1245108 m!6404372))

(assert (=> b!5377699 d!1721354))

(declare-fun bs!1245109 () Bool)

(declare-fun b!5378083 () Bool)

(assert (= bs!1245109 (and b!5378083 d!1721336)))

(declare-fun lambda!278079 () Int)

(assert (=> bs!1245109 (not (= lambda!278079 lambda!278069))))

(declare-fun bs!1245110 () Bool)

(assert (= bs!1245110 (and b!5378083 b!5377711)))

(assert (=> bs!1245110 (not (= lambda!278079 lambda!278027))))

(assert (=> bs!1245109 (not (= lambda!278079 lambda!278068))))

(assert (=> bs!1245110 (not (= lambda!278079 lambda!278026))))

(declare-fun bs!1245111 () Bool)

(assert (= bs!1245111 (and b!5378083 b!5377687)))

(assert (=> bs!1245111 (not (= lambda!278079 lambda!278031))))

(declare-fun bs!1245112 () Bool)

(assert (= bs!1245112 (and b!5378083 b!5377701)))

(assert (=> bs!1245112 (not (= lambda!278079 lambda!278029))))

(declare-fun bs!1245113 () Bool)

(assert (= bs!1245113 (and b!5378083 b!5377943)))

(assert (=> bs!1245113 (not (= lambda!278079 lambda!278054))))

(declare-fun bs!1245114 () Bool)

(assert (= bs!1245114 (and b!5378083 b!5377937)))

(assert (=> bs!1245114 (= (and (= (reg!15430 r!7292) (reg!15430 lt!2189802)) (= r!7292 lt!2189802)) (= lambda!278079 lambda!278050))))

(assert (=> bs!1245111 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (reg!15430 r!7292) (reg!15430 (regOne!30714 r!7292))) (= r!7292 lt!2189791)) (= lambda!278079 lambda!278032))))

(assert (=> bs!1245112 (not (= lambda!278079 lambda!278030))))

(declare-fun bs!1245115 () Bool)

(assert (= bs!1245115 (and b!5378083 d!1721324)))

(assert (=> bs!1245115 (not (= lambda!278079 lambda!278062))))

(assert (=> bs!1245111 (not (= lambda!278079 lambda!278033))))

(assert (=> b!5378083 true))

(assert (=> b!5378083 true))

(declare-fun bs!1245116 () Bool)

(declare-fun b!5378089 () Bool)

(assert (= bs!1245116 (and b!5378089 d!1721336)))

(declare-fun lambda!278080 () Int)

(assert (=> bs!1245116 (= (= (regOne!30714 r!7292) lt!2189791) (= lambda!278080 lambda!278069))))

(assert (=> bs!1245116 (not (= lambda!278080 lambda!278068))))

(declare-fun bs!1245117 () Bool)

(assert (= bs!1245117 (and b!5378089 b!5377711)))

(assert (=> bs!1245117 (not (= lambda!278080 lambda!278026))))

(declare-fun bs!1245118 () Bool)

(assert (= bs!1245118 (and b!5378089 b!5377687)))

(assert (=> bs!1245118 (not (= lambda!278080 lambda!278031))))

(declare-fun bs!1245119 () Bool)

(assert (= bs!1245119 (and b!5378089 b!5377701)))

(assert (=> bs!1245119 (not (= lambda!278080 lambda!278029))))

(declare-fun bs!1245120 () Bool)

(assert (= bs!1245120 (and b!5378089 b!5377943)))

(assert (=> bs!1245120 (= (and (= (regOne!30714 r!7292) (regOne!30714 lt!2189802)) (= (regTwo!30714 r!7292) (regTwo!30714 lt!2189802))) (= lambda!278080 lambda!278054))))

(declare-fun bs!1245121 () Bool)

(assert (= bs!1245121 (and b!5378089 b!5377937)))

(assert (=> bs!1245121 (not (= lambda!278080 lambda!278050))))

(assert (=> bs!1245118 (not (= lambda!278080 lambda!278032))))

(assert (=> bs!1245119 (= (= (regOne!30714 r!7292) lt!2189791) (= lambda!278080 lambda!278030))))

(declare-fun bs!1245122 () Bool)

(assert (= bs!1245122 (and b!5378089 d!1721324)))

(assert (=> bs!1245122 (not (= lambda!278080 lambda!278062))))

(assert (=> bs!1245118 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278080 lambda!278033))))

(assert (=> bs!1245117 (= lambda!278080 lambda!278027)))

(declare-fun bs!1245123 () Bool)

(assert (= bs!1245123 (and b!5378089 b!5378083)))

(assert (=> bs!1245123 (not (= lambda!278080 lambda!278079))))

(assert (=> b!5378089 true))

(assert (=> b!5378089 true))

(declare-fun b!5378082 () Bool)

(declare-fun e!3336493 () Bool)

(declare-fun e!3336495 () Bool)

(assert (=> b!5378082 (= e!3336493 e!3336495)))

(declare-fun res!2283238 () Bool)

(assert (=> b!5378082 (= res!2283238 (not ((_ is EmptyLang!15101) r!7292)))))

(assert (=> b!5378082 (=> (not res!2283238) (not e!3336495))))

(declare-fun d!1721362 () Bool)

(declare-fun c!937265 () Bool)

(assert (=> d!1721362 (= c!937265 ((_ is EmptyExpr!15101) r!7292))))

(assert (=> d!1721362 (= (matchRSpec!2204 r!7292 s!2326) e!3336493)))

(declare-fun e!3336496 () Bool)

(declare-fun call!385096 () Bool)

(assert (=> b!5378083 (= e!3336496 call!385096)))

(declare-fun b!5378084 () Bool)

(declare-fun e!3336497 () Bool)

(assert (=> b!5378084 (= e!3336497 (matchRSpec!2204 (regTwo!30715 r!7292) s!2326))))

(declare-fun b!5378085 () Bool)

(declare-fun c!937262 () Bool)

(assert (=> b!5378085 (= c!937262 ((_ is ElementMatch!15101) r!7292))))

(declare-fun e!3336491 () Bool)

(assert (=> b!5378085 (= e!3336495 e!3336491)))

(declare-fun b!5378086 () Bool)

(assert (=> b!5378086 (= e!3336491 (= s!2326 (Cons!61478 (c!937169 r!7292) Nil!61478)))))

(declare-fun b!5378087 () Bool)

(declare-fun call!385095 () Bool)

(assert (=> b!5378087 (= e!3336493 call!385095)))

(declare-fun b!5378088 () Bool)

(declare-fun e!3336494 () Bool)

(assert (=> b!5378088 (= e!3336494 e!3336497)))

(declare-fun res!2283237 () Bool)

(assert (=> b!5378088 (= res!2283237 (matchRSpec!2204 (regOne!30715 r!7292) s!2326))))

(assert (=> b!5378088 (=> res!2283237 e!3336497)))

(declare-fun e!3336492 () Bool)

(assert (=> b!5378089 (= e!3336492 call!385096)))

(declare-fun bm!385090 () Bool)

(assert (=> bm!385090 (= call!385095 (isEmpty!33468 s!2326))))

(declare-fun c!937263 () Bool)

(declare-fun bm!385091 () Bool)

(assert (=> bm!385091 (= call!385096 (Exists!2282 (ite c!937263 lambda!278079 lambda!278080)))))

(declare-fun b!5378090 () Bool)

(assert (=> b!5378090 (= e!3336494 e!3336492)))

(assert (=> b!5378090 (= c!937263 ((_ is Star!15101) r!7292))))

(declare-fun b!5378091 () Bool)

(declare-fun c!937264 () Bool)

(assert (=> b!5378091 (= c!937264 ((_ is Union!15101) r!7292))))

(assert (=> b!5378091 (= e!3336491 e!3336494)))

(declare-fun b!5378092 () Bool)

(declare-fun res!2283236 () Bool)

(assert (=> b!5378092 (=> res!2283236 e!3336496)))

(assert (=> b!5378092 (= res!2283236 call!385095)))

(assert (=> b!5378092 (= e!3336492 e!3336496)))

(assert (= (and d!1721362 c!937265) b!5378087))

(assert (= (and d!1721362 (not c!937265)) b!5378082))

(assert (= (and b!5378082 res!2283238) b!5378085))

(assert (= (and b!5378085 c!937262) b!5378086))

(assert (= (and b!5378085 (not c!937262)) b!5378091))

(assert (= (and b!5378091 c!937264) b!5378088))

(assert (= (and b!5378091 (not c!937264)) b!5378090))

(assert (= (and b!5378088 (not res!2283237)) b!5378084))

(assert (= (and b!5378090 c!937263) b!5378092))

(assert (= (and b!5378090 (not c!937263)) b!5378089))

(assert (= (and b!5378092 (not res!2283236)) b!5378083))

(assert (= (or b!5378083 b!5378089) bm!385091))

(assert (= (or b!5378087 b!5378092) bm!385090))

(declare-fun m!6404380 () Bool)

(assert (=> b!5378084 m!6404380))

(declare-fun m!6404382 () Bool)

(assert (=> b!5378088 m!6404382))

(assert (=> bm!385090 m!6404166))

(declare-fun m!6404384 () Bool)

(assert (=> bm!385091 m!6404384))

(assert (=> b!5377709 d!1721362))

(declare-fun b!5378108 () Bool)

(declare-fun e!3336513 () Bool)

(declare-fun e!3336510 () Bool)

(assert (=> b!5378108 (= e!3336513 e!3336510)))

(declare-fun res!2283246 () Bool)

(assert (=> b!5378108 (=> res!2283246 e!3336510)))

(declare-fun call!385100 () Bool)

(assert (=> b!5378108 (= res!2283246 call!385100)))

(declare-fun b!5378109 () Bool)

(declare-fun res!2283244 () Bool)

(declare-fun e!3336512 () Bool)

(assert (=> b!5378109 (=> (not res!2283244) (not e!3336512))))

(assert (=> b!5378109 (= res!2283244 (not call!385100))))

(declare-fun b!5378110 () Bool)

(declare-fun res!2283248 () Bool)

(declare-fun e!3336509 () Bool)

(assert (=> b!5378110 (=> res!2283248 e!3336509)))

(assert (=> b!5378110 (= res!2283248 (not ((_ is ElementMatch!15101) r!7292)))))

(declare-fun e!3336511 () Bool)

(assert (=> b!5378110 (= e!3336511 e!3336509)))

(declare-fun b!5378111 () Bool)

(declare-fun e!3336508 () Bool)

(declare-fun lt!2189897 () Bool)

(assert (=> b!5378111 (= e!3336508 (= lt!2189897 call!385100))))

(declare-fun b!5378112 () Bool)

(declare-fun e!3336507 () Bool)

(assert (=> b!5378112 (= e!3336507 (nullable!5270 r!7292))))

(declare-fun b!5378113 () Bool)

(assert (=> b!5378113 (= e!3336507 (matchR!7286 (derivativeStep!4231 r!7292 (head!11537 s!2326)) (tail!10634 s!2326)))))

(declare-fun bm!385095 () Bool)

(assert (=> bm!385095 (= call!385100 (isEmpty!33468 s!2326))))

(declare-fun b!5378114 () Bool)

(declare-fun res!2283247 () Bool)

(assert (=> b!5378114 (=> (not res!2283247) (not e!3336512))))

(assert (=> b!5378114 (= res!2283247 (isEmpty!33468 (tail!10634 s!2326)))))

(declare-fun d!1721366 () Bool)

(assert (=> d!1721366 e!3336508))

(declare-fun c!937274 () Bool)

(assert (=> d!1721366 (= c!937274 ((_ is EmptyExpr!15101) r!7292))))

(assert (=> d!1721366 (= lt!2189897 e!3336507)))

(declare-fun c!937272 () Bool)

(assert (=> d!1721366 (= c!937272 (isEmpty!33468 s!2326))))

(assert (=> d!1721366 (validRegex!6837 r!7292)))

(assert (=> d!1721366 (= (matchR!7286 r!7292 s!2326) lt!2189897)))

(declare-fun b!5378115 () Bool)

(declare-fun res!2283249 () Bool)

(assert (=> b!5378115 (=> res!2283249 e!3336510)))

(assert (=> b!5378115 (= res!2283249 (not (isEmpty!33468 (tail!10634 s!2326))))))

(declare-fun b!5378116 () Bool)

(assert (=> b!5378116 (= e!3336508 e!3336511)))

(declare-fun c!937273 () Bool)

(assert (=> b!5378116 (= c!937273 ((_ is EmptyLang!15101) r!7292))))

(declare-fun b!5378117 () Bool)

(assert (=> b!5378117 (= e!3336510 (not (= (head!11537 s!2326) (c!937169 r!7292))))))

(declare-fun b!5378118 () Bool)

(assert (=> b!5378118 (= e!3336509 e!3336513)))

(declare-fun res!2283243 () Bool)

(assert (=> b!5378118 (=> (not res!2283243) (not e!3336513))))

(assert (=> b!5378118 (= res!2283243 (not lt!2189897))))

(declare-fun b!5378119 () Bool)

(declare-fun res!2283242 () Bool)

(assert (=> b!5378119 (=> res!2283242 e!3336509)))

(assert (=> b!5378119 (= res!2283242 e!3336512)))

(declare-fun res!2283245 () Bool)

(assert (=> b!5378119 (=> (not res!2283245) (not e!3336512))))

(assert (=> b!5378119 (= res!2283245 lt!2189897)))

(declare-fun b!5378120 () Bool)

(assert (=> b!5378120 (= e!3336512 (= (head!11537 s!2326) (c!937169 r!7292)))))

(declare-fun b!5378121 () Bool)

(assert (=> b!5378121 (= e!3336511 (not lt!2189897))))

(assert (= (and d!1721366 c!937272) b!5378112))

(assert (= (and d!1721366 (not c!937272)) b!5378113))

(assert (= (and d!1721366 c!937274) b!5378111))

(assert (= (and d!1721366 (not c!937274)) b!5378116))

(assert (= (and b!5378116 c!937273) b!5378121))

(assert (= (and b!5378116 (not c!937273)) b!5378110))

(assert (= (and b!5378110 (not res!2283248)) b!5378119))

(assert (= (and b!5378119 res!2283245) b!5378109))

(assert (= (and b!5378109 res!2283244) b!5378114))

(assert (= (and b!5378114 res!2283247) b!5378120))

(assert (= (and b!5378119 (not res!2283242)) b!5378118))

(assert (= (and b!5378118 res!2283243) b!5378108))

(assert (= (and b!5378108 (not res!2283246)) b!5378115))

(assert (= (and b!5378115 (not res!2283249)) b!5378117))

(assert (= (or b!5378111 b!5378108 b!5378109) bm!385095))

(assert (=> b!5378117 m!6404152))

(assert (=> b!5378114 m!6404154))

(assert (=> b!5378114 m!6404154))

(assert (=> b!5378114 m!6404156))

(assert (=> b!5378120 m!6404152))

(assert (=> b!5378113 m!6404152))

(assert (=> b!5378113 m!6404152))

(declare-fun m!6404386 () Bool)

(assert (=> b!5378113 m!6404386))

(assert (=> b!5378113 m!6404154))

(assert (=> b!5378113 m!6404386))

(assert (=> b!5378113 m!6404154))

(declare-fun m!6404388 () Bool)

(assert (=> b!5378113 m!6404388))

(declare-fun m!6404390 () Bool)

(assert (=> b!5378112 m!6404390))

(assert (=> bm!385095 m!6404166))

(assert (=> d!1721366 m!6404166))

(assert (=> d!1721366 m!6403968))

(assert (=> b!5378115 m!6404154))

(assert (=> b!5378115 m!6404154))

(assert (=> b!5378115 m!6404156))

(assert (=> b!5377709 d!1721366))

(declare-fun d!1721368 () Bool)

(assert (=> d!1721368 (= (matchR!7286 r!7292 s!2326) (matchRSpec!2204 r!7292 s!2326))))

(declare-fun lt!2189900 () Unit!153922)

(assert (=> d!1721368 (= lt!2189900 (choose!40408 r!7292 s!2326))))

(assert (=> d!1721368 (validRegex!6837 r!7292)))

(assert (=> d!1721368 (= (mainMatchTheorem!2204 r!7292 s!2326) lt!2189900)))

(declare-fun bs!1245124 () Bool)

(assert (= bs!1245124 d!1721368))

(assert (=> bs!1245124 m!6404074))

(assert (=> bs!1245124 m!6404072))

(declare-fun m!6404392 () Bool)

(assert (=> bs!1245124 m!6404392))

(assert (=> bs!1245124 m!6403968))

(assert (=> b!5377709 d!1721368))

(declare-fun bs!1245126 () Bool)

(declare-fun b!5378123 () Bool)

(assert (= bs!1245126 (and b!5378123 d!1721336)))

(declare-fun lambda!278081 () Int)

(assert (=> bs!1245126 (not (= lambda!278081 lambda!278068))))

(declare-fun bs!1245127 () Bool)

(assert (= bs!1245127 (and b!5378123 b!5377711)))

(assert (=> bs!1245127 (not (= lambda!278081 lambda!278026))))

(declare-fun bs!1245128 () Bool)

(assert (= bs!1245128 (and b!5378123 b!5377687)))

(assert (=> bs!1245128 (not (= lambda!278081 lambda!278031))))

(declare-fun bs!1245129 () Bool)

(assert (= bs!1245129 (and b!5378123 b!5377701)))

(assert (=> bs!1245129 (not (= lambda!278081 lambda!278029))))

(declare-fun bs!1245130 () Bool)

(assert (= bs!1245130 (and b!5378123 b!5377943)))

(assert (=> bs!1245130 (not (= lambda!278081 lambda!278054))))

(declare-fun bs!1245131 () Bool)

(assert (= bs!1245131 (and b!5378123 b!5377937)))

(assert (=> bs!1245131 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 lt!2189791) (reg!15430 lt!2189802)) (= lt!2189791 lt!2189802)) (= lambda!278081 lambda!278050))))

(assert (=> bs!1245128 (= (= (reg!15430 lt!2189791) (reg!15430 (regOne!30714 r!7292))) (= lambda!278081 lambda!278032))))

(assert (=> bs!1245129 (not (= lambda!278081 lambda!278030))))

(declare-fun bs!1245132 () Bool)

(assert (= bs!1245132 (and b!5378123 b!5378089)))

(assert (=> bs!1245132 (not (= lambda!278081 lambda!278080))))

(assert (=> bs!1245126 (not (= lambda!278081 lambda!278069))))

(declare-fun bs!1245133 () Bool)

(assert (= bs!1245133 (and b!5378123 d!1721324)))

(assert (=> bs!1245133 (not (= lambda!278081 lambda!278062))))

(assert (=> bs!1245128 (not (= lambda!278081 lambda!278033))))

(assert (=> bs!1245127 (not (= lambda!278081 lambda!278027))))

(declare-fun bs!1245134 () Bool)

(assert (= bs!1245134 (and b!5378123 b!5378083)))

(assert (=> bs!1245134 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 lt!2189791) (reg!15430 r!7292)) (= lt!2189791 r!7292)) (= lambda!278081 lambda!278079))))

(assert (=> b!5378123 true))

(assert (=> b!5378123 true))

(declare-fun bs!1245138 () Bool)

(declare-fun b!5378129 () Bool)

(assert (= bs!1245138 (and b!5378129 b!5378123)))

(declare-fun lambda!278085 () Int)

(assert (=> bs!1245138 (not (= lambda!278085 lambda!278081))))

(declare-fun bs!1245139 () Bool)

(assert (= bs!1245139 (and b!5378129 d!1721336)))

(assert (=> bs!1245139 (not (= lambda!278085 lambda!278068))))

(declare-fun bs!1245140 () Bool)

(assert (= bs!1245140 (and b!5378129 b!5377711)))

(assert (=> bs!1245140 (not (= lambda!278085 lambda!278026))))

(declare-fun bs!1245141 () Bool)

(assert (= bs!1245141 (and b!5378129 b!5377687)))

(assert (=> bs!1245141 (not (= lambda!278085 lambda!278031))))

(declare-fun bs!1245142 () Bool)

(assert (= bs!1245142 (and b!5378129 b!5377701)))

(assert (=> bs!1245142 (not (= lambda!278085 lambda!278029))))

(declare-fun bs!1245143 () Bool)

(assert (= bs!1245143 (and b!5378129 b!5377943)))

(assert (=> bs!1245143 (= (and (= (_1!35603 lt!2189812) s!2326) (= (regOne!30714 lt!2189791) (regOne!30714 lt!2189802)) (= (regTwo!30714 lt!2189791) (regTwo!30714 lt!2189802))) (= lambda!278085 lambda!278054))))

(declare-fun bs!1245144 () Bool)

(assert (= bs!1245144 (and b!5378129 b!5377937)))

(assert (=> bs!1245144 (not (= lambda!278085 lambda!278050))))

(assert (=> bs!1245141 (not (= lambda!278085 lambda!278032))))

(assert (=> bs!1245142 (= (and (= (_1!35603 lt!2189812) s!2326) (= (regOne!30714 lt!2189791) lt!2189791) (= (regTwo!30714 lt!2189791) (regTwo!30714 r!7292))) (= lambda!278085 lambda!278030))))

(declare-fun bs!1245145 () Bool)

(assert (= bs!1245145 (and b!5378129 b!5378089)))

(assert (=> bs!1245145 (= (and (= (_1!35603 lt!2189812) s!2326) (= (regOne!30714 lt!2189791) (regOne!30714 r!7292)) (= (regTwo!30714 lt!2189791) (regTwo!30714 r!7292))) (= lambda!278085 lambda!278080))))

(assert (=> bs!1245139 (= (and (= (_1!35603 lt!2189812) s!2326) (= (regOne!30714 lt!2189791) lt!2189791) (= (regTwo!30714 lt!2189791) (regTwo!30714 r!7292))) (= lambda!278085 lambda!278069))))

(declare-fun bs!1245146 () Bool)

(assert (= bs!1245146 (and b!5378129 d!1721324)))

(assert (=> bs!1245146 (not (= lambda!278085 lambda!278062))))

(assert (=> bs!1245141 (= (and (= (regOne!30714 lt!2189791) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 lt!2189791) lt!2189791)) (= lambda!278085 lambda!278033))))

(assert (=> bs!1245140 (= (and (= (_1!35603 lt!2189812) s!2326) (= (regOne!30714 lt!2189791) (regOne!30714 r!7292)) (= (regTwo!30714 lt!2189791) (regTwo!30714 r!7292))) (= lambda!278085 lambda!278027))))

(declare-fun bs!1245147 () Bool)

(assert (= bs!1245147 (and b!5378129 b!5378083)))

(assert (=> bs!1245147 (not (= lambda!278085 lambda!278079))))

(assert (=> b!5378129 true))

(assert (=> b!5378129 true))

(declare-fun b!5378122 () Bool)

(declare-fun e!3336516 () Bool)

(declare-fun e!3336518 () Bool)

(assert (=> b!5378122 (= e!3336516 e!3336518)))

(declare-fun res!2283252 () Bool)

(assert (=> b!5378122 (= res!2283252 (not ((_ is EmptyLang!15101) lt!2189791)))))

(assert (=> b!5378122 (=> (not res!2283252) (not e!3336518))))

(declare-fun d!1721370 () Bool)

(declare-fun c!937278 () Bool)

(assert (=> d!1721370 (= c!937278 ((_ is EmptyExpr!15101) lt!2189791))))

(assert (=> d!1721370 (= (matchRSpec!2204 lt!2189791 (_1!35603 lt!2189812)) e!3336516)))

(declare-fun e!3336519 () Bool)

(declare-fun call!385102 () Bool)

(assert (=> b!5378123 (= e!3336519 call!385102)))

(declare-fun b!5378124 () Bool)

(declare-fun e!3336520 () Bool)

(assert (=> b!5378124 (= e!3336520 (matchRSpec!2204 (regTwo!30715 lt!2189791) (_1!35603 lt!2189812)))))

(declare-fun b!5378125 () Bool)

(declare-fun c!937275 () Bool)

(assert (=> b!5378125 (= c!937275 ((_ is ElementMatch!15101) lt!2189791))))

(declare-fun e!3336514 () Bool)

(assert (=> b!5378125 (= e!3336518 e!3336514)))

(declare-fun b!5378126 () Bool)

(assert (=> b!5378126 (= e!3336514 (= (_1!35603 lt!2189812) (Cons!61478 (c!937169 lt!2189791) Nil!61478)))))

(declare-fun b!5378127 () Bool)

(declare-fun call!385101 () Bool)

(assert (=> b!5378127 (= e!3336516 call!385101)))

(declare-fun b!5378128 () Bool)

(declare-fun e!3336517 () Bool)

(assert (=> b!5378128 (= e!3336517 e!3336520)))

(declare-fun res!2283251 () Bool)

(assert (=> b!5378128 (= res!2283251 (matchRSpec!2204 (regOne!30715 lt!2189791) (_1!35603 lt!2189812)))))

(assert (=> b!5378128 (=> res!2283251 e!3336520)))

(declare-fun e!3336515 () Bool)

(assert (=> b!5378129 (= e!3336515 call!385102)))

(declare-fun bm!385096 () Bool)

(assert (=> bm!385096 (= call!385101 (isEmpty!33468 (_1!35603 lt!2189812)))))

(declare-fun c!937276 () Bool)

(declare-fun bm!385097 () Bool)

(assert (=> bm!385097 (= call!385102 (Exists!2282 (ite c!937276 lambda!278081 lambda!278085)))))

(declare-fun b!5378130 () Bool)

(assert (=> b!5378130 (= e!3336517 e!3336515)))

(assert (=> b!5378130 (= c!937276 ((_ is Star!15101) lt!2189791))))

(declare-fun b!5378131 () Bool)

(declare-fun c!937277 () Bool)

(assert (=> b!5378131 (= c!937277 ((_ is Union!15101) lt!2189791))))

(assert (=> b!5378131 (= e!3336514 e!3336517)))

(declare-fun b!5378132 () Bool)

(declare-fun res!2283250 () Bool)

(assert (=> b!5378132 (=> res!2283250 e!3336519)))

(assert (=> b!5378132 (= res!2283250 call!385101)))

(assert (=> b!5378132 (= e!3336515 e!3336519)))

(assert (= (and d!1721370 c!937278) b!5378127))

(assert (= (and d!1721370 (not c!937278)) b!5378122))

(assert (= (and b!5378122 res!2283252) b!5378125))

(assert (= (and b!5378125 c!937275) b!5378126))

(assert (= (and b!5378125 (not c!937275)) b!5378131))

(assert (= (and b!5378131 c!937277) b!5378128))

(assert (= (and b!5378131 (not c!937277)) b!5378130))

(assert (= (and b!5378128 (not res!2283251)) b!5378124))

(assert (= (and b!5378130 c!937276) b!5378132))

(assert (= (and b!5378130 (not c!937276)) b!5378129))

(assert (= (and b!5378132 (not res!2283250)) b!5378123))

(assert (= (or b!5378123 b!5378129) bm!385097))

(assert (= (or b!5378127 b!5378132) bm!385096))

(declare-fun m!6404402 () Bool)

(assert (=> b!5378124 m!6404402))

(declare-fun m!6404404 () Bool)

(assert (=> b!5378128 m!6404404))

(assert (=> bm!385096 m!6404098))

(declare-fun m!6404406 () Bool)

(assert (=> bm!385097 m!6404406))

(assert (=> b!5377687 d!1721370))

(declare-fun bs!1245149 () Bool)

(declare-fun d!1721378 () Bool)

(assert (= bs!1245149 (and d!1721378 b!5378123)))

(declare-fun lambda!278090 () Int)

(assert (=> bs!1245149 (not (= lambda!278090 lambda!278081))))

(declare-fun bs!1245151 () Bool)

(assert (= bs!1245151 (and d!1721378 b!5378129)))

(assert (=> bs!1245151 (not (= lambda!278090 lambda!278085))))

(declare-fun bs!1245152 () Bool)

(assert (= bs!1245152 (and d!1721378 d!1721336)))

(assert (=> bs!1245152 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= (Star!15101 (reg!15430 (regOne!30714 r!7292))) (regTwo!30714 r!7292))) (= lambda!278090 lambda!278068))))

(declare-fun bs!1245153 () Bool)

(assert (= bs!1245153 (and d!1721378 b!5377711)))

(assert (=> bs!1245153 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) (regOne!30714 r!7292)) (= (Star!15101 (reg!15430 (regOne!30714 r!7292))) (regTwo!30714 r!7292))) (= lambda!278090 lambda!278026))))

(declare-fun bs!1245154 () Bool)

(assert (= bs!1245154 (and d!1721378 b!5377687)))

(assert (=> bs!1245154 (= (= (Star!15101 (reg!15430 (regOne!30714 r!7292))) lt!2189791) (= lambda!278090 lambda!278031))))

(declare-fun bs!1245155 () Bool)

(assert (= bs!1245155 (and d!1721378 b!5377701)))

(assert (=> bs!1245155 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= (Star!15101 (reg!15430 (regOne!30714 r!7292))) (regTwo!30714 r!7292))) (= lambda!278090 lambda!278029))))

(declare-fun bs!1245156 () Bool)

(assert (= bs!1245156 (and d!1721378 b!5377943)))

(assert (=> bs!1245156 (not (= lambda!278090 lambda!278054))))

(declare-fun bs!1245158 () Bool)

(assert (= bs!1245158 (and d!1721378 b!5377937)))

(assert (=> bs!1245158 (not (= lambda!278090 lambda!278050))))

(assert (=> bs!1245154 (not (= lambda!278090 lambda!278032))))

(assert (=> bs!1245155 (not (= lambda!278090 lambda!278030))))

(declare-fun bs!1245162 () Bool)

(assert (= bs!1245162 (and d!1721378 b!5378089)))

(assert (=> bs!1245162 (not (= lambda!278090 lambda!278080))))

(assert (=> bs!1245152 (not (= lambda!278090 lambda!278069))))

(declare-fun bs!1245164 () Bool)

(assert (= bs!1245164 (and d!1721378 d!1721324)))

(assert (=> bs!1245164 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= (Star!15101 (reg!15430 (regOne!30714 r!7292))) (regTwo!30714 r!7292))) (= lambda!278090 lambda!278062))))

(assert (=> bs!1245154 (not (= lambda!278090 lambda!278033))))

(assert (=> bs!1245153 (not (= lambda!278090 lambda!278027))))

(declare-fun bs!1245166 () Bool)

(assert (= bs!1245166 (and d!1721378 b!5378083)))

(assert (=> bs!1245166 (not (= lambda!278090 lambda!278079))))

(assert (=> d!1721378 true))

(assert (=> d!1721378 true))

(declare-fun lambda!278092 () Int)

(assert (=> bs!1245149 (= (and (= (reg!15430 (regOne!30714 r!7292)) (reg!15430 lt!2189791)) (= (Star!15101 (reg!15430 (regOne!30714 r!7292))) lt!2189791)) (= lambda!278092 lambda!278081))))

(assert (=> bs!1245151 (not (= lambda!278092 lambda!278085))))

(declare-fun bs!1245169 () Bool)

(assert (= bs!1245169 d!1721378))

(assert (=> bs!1245169 (not (= lambda!278092 lambda!278090))))

(assert (=> bs!1245152 (not (= lambda!278092 lambda!278068))))

(assert (=> bs!1245153 (not (= lambda!278092 lambda!278026))))

(assert (=> bs!1245154 (not (= lambda!278092 lambda!278031))))

(assert (=> bs!1245155 (not (= lambda!278092 lambda!278029))))

(assert (=> bs!1245156 (not (= lambda!278092 lambda!278054))))

(assert (=> bs!1245158 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) (reg!15430 lt!2189802)) (= (Star!15101 (reg!15430 (regOne!30714 r!7292))) lt!2189802)) (= lambda!278092 lambda!278050))))

(assert (=> bs!1245154 (= (= (Star!15101 (reg!15430 (regOne!30714 r!7292))) lt!2189791) (= lambda!278092 lambda!278032))))

(assert (=> bs!1245155 (not (= lambda!278092 lambda!278030))))

(assert (=> bs!1245162 (not (= lambda!278092 lambda!278080))))

(assert (=> bs!1245152 (not (= lambda!278092 lambda!278069))))

(assert (=> bs!1245164 (not (= lambda!278092 lambda!278062))))

(assert (=> bs!1245154 (not (= lambda!278092 lambda!278033))))

(assert (=> bs!1245153 (not (= lambda!278092 lambda!278027))))

(assert (=> bs!1245166 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) (reg!15430 r!7292)) (= (Star!15101 (reg!15430 (regOne!30714 r!7292))) r!7292)) (= lambda!278092 lambda!278079))))

(assert (=> d!1721378 true))

(assert (=> d!1721378 true))

(assert (=> d!1721378 (= (Exists!2282 lambda!278090) (Exists!2282 lambda!278092))))

(declare-fun lt!2189908 () Unit!153922)

(declare-fun choose!40418 (Regex!15101 List!61602) Unit!153922)

(assert (=> d!1721378 (= lt!2189908 (choose!40418 (reg!15430 (regOne!30714 r!7292)) (_1!35603 lt!2189812)))))

(assert (=> d!1721378 (validRegex!6837 (reg!15430 (regOne!30714 r!7292)))))

(assert (=> d!1721378 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!366 (reg!15430 (regOne!30714 r!7292)) (_1!35603 lt!2189812)) lt!2189908)))

(declare-fun m!6404440 () Bool)

(assert (=> bs!1245169 m!6404440))

(declare-fun m!6404442 () Bool)

(assert (=> bs!1245169 m!6404442))

(declare-fun m!6404444 () Bool)

(assert (=> bs!1245169 m!6404444))

(declare-fun m!6404446 () Bool)

(assert (=> bs!1245169 m!6404446))

(assert (=> b!5377687 d!1721378))

(declare-fun d!1721390 () Bool)

(assert (=> d!1721390 (= (isDefined!11915 (findConcatSeparation!1626 (reg!15430 (regOne!30714 r!7292)) lt!2189791 Nil!61478 (_1!35603 lt!2189812) (_1!35603 lt!2189812))) (not (isEmpty!33470 (findConcatSeparation!1626 (reg!15430 (regOne!30714 r!7292)) lt!2189791 Nil!61478 (_1!35603 lt!2189812) (_1!35603 lt!2189812)))))))

(declare-fun bs!1245178 () Bool)

(assert (= bs!1245178 d!1721390))

(assert (=> bs!1245178 m!6404090))

(declare-fun m!6404448 () Bool)

(assert (=> bs!1245178 m!6404448))

(assert (=> b!5377687 d!1721390))

(declare-fun bs!1245180 () Bool)

(declare-fun d!1721392 () Bool)

(assert (= bs!1245180 (and d!1721392 b!5378123)))

(declare-fun lambda!278095 () Int)

(assert (=> bs!1245180 (not (= lambda!278095 lambda!278081))))

(declare-fun bs!1245181 () Bool)

(assert (= bs!1245181 (and d!1721392 b!5378129)))

(assert (=> bs!1245181 (not (= lambda!278095 lambda!278085))))

(declare-fun bs!1245182 () Bool)

(assert (= bs!1245182 (and d!1721392 d!1721378)))

(assert (=> bs!1245182 (= (= lt!2189791 (Star!15101 (reg!15430 (regOne!30714 r!7292)))) (= lambda!278095 lambda!278090))))

(declare-fun bs!1245183 () Bool)

(assert (= bs!1245183 (and d!1721392 d!1721336)))

(assert (=> bs!1245183 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278095 lambda!278068))))

(declare-fun bs!1245184 () Bool)

(assert (= bs!1245184 (and d!1721392 b!5377711)))

(assert (=> bs!1245184 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) (regOne!30714 r!7292)) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278095 lambda!278026))))

(declare-fun bs!1245185 () Bool)

(assert (= bs!1245185 (and d!1721392 b!5377687)))

(assert (=> bs!1245185 (= lambda!278095 lambda!278031)))

(declare-fun bs!1245186 () Bool)

(assert (= bs!1245186 (and d!1721392 b!5377701)))

(assert (=> bs!1245186 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278095 lambda!278029))))

(declare-fun bs!1245187 () Bool)

(assert (= bs!1245187 (and d!1721392 b!5377943)))

(assert (=> bs!1245187 (not (= lambda!278095 lambda!278054))))

(declare-fun bs!1245188 () Bool)

(assert (= bs!1245188 (and d!1721392 b!5377937)))

(assert (=> bs!1245188 (not (= lambda!278095 lambda!278050))))

(assert (=> bs!1245185 (not (= lambda!278095 lambda!278032))))

(assert (=> bs!1245186 (not (= lambda!278095 lambda!278030))))

(declare-fun bs!1245189 () Bool)

(assert (= bs!1245189 (and d!1721392 b!5378089)))

(assert (=> bs!1245189 (not (= lambda!278095 lambda!278080))))

(assert (=> bs!1245183 (not (= lambda!278095 lambda!278069))))

(assert (=> bs!1245182 (not (= lambda!278095 lambda!278092))))

(declare-fun bs!1245191 () Bool)

(assert (= bs!1245191 (and d!1721392 d!1721324)))

(assert (=> bs!1245191 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278095 lambda!278062))))

(assert (=> bs!1245185 (not (= lambda!278095 lambda!278033))))

(assert (=> bs!1245184 (not (= lambda!278095 lambda!278027))))

(declare-fun bs!1245192 () Bool)

(assert (= bs!1245192 (and d!1721392 b!5378083)))

(assert (=> bs!1245192 (not (= lambda!278095 lambda!278079))))

(assert (=> d!1721392 true))

(assert (=> d!1721392 true))

(assert (=> d!1721392 true))

(declare-fun lambda!278096 () Int)

(assert (=> bs!1245180 (not (= lambda!278096 lambda!278081))))

(assert (=> bs!1245181 (= (and (= (reg!15430 (regOne!30714 r!7292)) (regOne!30714 lt!2189791)) (= lt!2189791 (regTwo!30714 lt!2189791))) (= lambda!278096 lambda!278085))))

(assert (=> bs!1245183 (not (= lambda!278096 lambda!278068))))

(assert (=> bs!1245184 (not (= lambda!278096 lambda!278026))))

(assert (=> bs!1245185 (not (= lambda!278096 lambda!278031))))

(assert (=> bs!1245186 (not (= lambda!278096 lambda!278029))))

(assert (=> bs!1245187 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) (regOne!30714 lt!2189802)) (= lt!2189791 (regTwo!30714 lt!2189802))) (= lambda!278096 lambda!278054))))

(assert (=> bs!1245188 (not (= lambda!278096 lambda!278050))))

(assert (=> bs!1245182 (not (= lambda!278096 lambda!278090))))

(declare-fun bs!1245194 () Bool)

(assert (= bs!1245194 d!1721392))

(assert (=> bs!1245194 (not (= lambda!278096 lambda!278095))))

(assert (=> bs!1245185 (not (= lambda!278096 lambda!278032))))

(assert (=> bs!1245186 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278096 lambda!278030))))

(assert (=> bs!1245189 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) (regOne!30714 r!7292)) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278096 lambda!278080))))

(assert (=> bs!1245183 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278096 lambda!278069))))

(assert (=> bs!1245182 (not (= lambda!278096 lambda!278092))))

(assert (=> bs!1245191 (not (= lambda!278096 lambda!278062))))

(assert (=> bs!1245185 (= lambda!278096 lambda!278033)))

(assert (=> bs!1245184 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) (regOne!30714 r!7292)) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278096 lambda!278027))))

(assert (=> bs!1245192 (not (= lambda!278096 lambda!278079))))

(assert (=> d!1721392 true))

(assert (=> d!1721392 true))

(assert (=> d!1721392 true))

(assert (=> d!1721392 (= (Exists!2282 lambda!278095) (Exists!2282 lambda!278096))))

(declare-fun lt!2189911 () Unit!153922)

(assert (=> d!1721392 (= lt!2189911 (choose!40412 (reg!15430 (regOne!30714 r!7292)) lt!2189791 (_1!35603 lt!2189812)))))

(assert (=> d!1721392 (validRegex!6837 (reg!15430 (regOne!30714 r!7292)))))

(assert (=> d!1721392 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!936 (reg!15430 (regOne!30714 r!7292)) lt!2189791 (_1!35603 lt!2189812)) lt!2189911)))

(declare-fun m!6404482 () Bool)

(assert (=> bs!1245194 m!6404482))

(declare-fun m!6404484 () Bool)

(assert (=> bs!1245194 m!6404484))

(declare-fun m!6404486 () Bool)

(assert (=> bs!1245194 m!6404486))

(assert (=> bs!1245194 m!6404446))

(assert (=> b!5377687 d!1721392))

(declare-fun b!5378196 () Bool)

(declare-fun res!2283277 () Bool)

(declare-fun e!3336557 () Bool)

(assert (=> b!5378196 (=> (not res!2283277) (not e!3336557))))

(declare-fun lt!2189915 () Option!15212)

(assert (=> b!5378196 (= res!2283277 (matchR!7286 (reg!15430 (regOne!30714 r!7292)) (_1!35603 (get!21160 lt!2189915))))))

(declare-fun b!5378197 () Bool)

(declare-fun e!3336553 () Option!15212)

(declare-fun e!3336555 () Option!15212)

(assert (=> b!5378197 (= e!3336553 e!3336555)))

(declare-fun c!937300 () Bool)

(assert (=> b!5378197 (= c!937300 ((_ is Nil!61478) (_1!35603 lt!2189812)))))

(declare-fun b!5378198 () Bool)

(declare-fun lt!2189916 () Unit!153922)

(declare-fun lt!2189917 () Unit!153922)

(assert (=> b!5378198 (= lt!2189916 lt!2189917)))

(assert (=> b!5378198 (= (++!13404 (++!13404 Nil!61478 (Cons!61478 (h!67926 (_1!35603 lt!2189812)) Nil!61478)) (t!374825 (_1!35603 lt!2189812))) (_1!35603 lt!2189812))))

(assert (=> b!5378198 (= lt!2189917 (lemmaMoveElementToOtherListKeepsConcatEq!1804 Nil!61478 (h!67926 (_1!35603 lt!2189812)) (t!374825 (_1!35603 lt!2189812)) (_1!35603 lt!2189812)))))

(assert (=> b!5378198 (= e!3336555 (findConcatSeparation!1626 (reg!15430 (regOne!30714 r!7292)) lt!2189791 (++!13404 Nil!61478 (Cons!61478 (h!67926 (_1!35603 lt!2189812)) Nil!61478)) (t!374825 (_1!35603 lt!2189812)) (_1!35603 lt!2189812)))))

(declare-fun b!5378199 () Bool)

(declare-fun e!3336554 () Bool)

(assert (=> b!5378199 (= e!3336554 (matchR!7286 lt!2189791 (_1!35603 lt!2189812)))))

(declare-fun b!5378200 () Bool)

(assert (=> b!5378200 (= e!3336555 None!15211)))

(declare-fun b!5378201 () Bool)

(assert (=> b!5378201 (= e!3336553 (Some!15211 (tuple2!64601 Nil!61478 (_1!35603 lt!2189812))))))

(declare-fun d!1721402 () Bool)

(declare-fun e!3336556 () Bool)

(assert (=> d!1721402 e!3336556))

(declare-fun res!2283279 () Bool)

(assert (=> d!1721402 (=> res!2283279 e!3336556)))

(assert (=> d!1721402 (= res!2283279 e!3336557)))

(declare-fun res!2283280 () Bool)

(assert (=> d!1721402 (=> (not res!2283280) (not e!3336557))))

(assert (=> d!1721402 (= res!2283280 (isDefined!11915 lt!2189915))))

(assert (=> d!1721402 (= lt!2189915 e!3336553)))

(declare-fun c!937301 () Bool)

(assert (=> d!1721402 (= c!937301 e!3336554)))

(declare-fun res!2283278 () Bool)

(assert (=> d!1721402 (=> (not res!2283278) (not e!3336554))))

(assert (=> d!1721402 (= res!2283278 (matchR!7286 (reg!15430 (regOne!30714 r!7292)) Nil!61478))))

(assert (=> d!1721402 (validRegex!6837 (reg!15430 (regOne!30714 r!7292)))))

(assert (=> d!1721402 (= (findConcatSeparation!1626 (reg!15430 (regOne!30714 r!7292)) lt!2189791 Nil!61478 (_1!35603 lt!2189812) (_1!35603 lt!2189812)) lt!2189915)))

(declare-fun b!5378202 () Bool)

(assert (=> b!5378202 (= e!3336557 (= (++!13404 (_1!35603 (get!21160 lt!2189915)) (_2!35603 (get!21160 lt!2189915))) (_1!35603 lt!2189812)))))

(declare-fun b!5378203 () Bool)

(assert (=> b!5378203 (= e!3336556 (not (isDefined!11915 lt!2189915)))))

(declare-fun b!5378204 () Bool)

(declare-fun res!2283276 () Bool)

(assert (=> b!5378204 (=> (not res!2283276) (not e!3336557))))

(assert (=> b!5378204 (= res!2283276 (matchR!7286 lt!2189791 (_2!35603 (get!21160 lt!2189915))))))

(assert (= (and d!1721402 res!2283278) b!5378199))

(assert (= (and d!1721402 c!937301) b!5378201))

(assert (= (and d!1721402 (not c!937301)) b!5378197))

(assert (= (and b!5378197 c!937300) b!5378200))

(assert (= (and b!5378197 (not c!937300)) b!5378198))

(assert (= (and d!1721402 res!2283280) b!5378196))

(assert (= (and b!5378196 res!2283277) b!5378204))

(assert (= (and b!5378204 res!2283276) b!5378202))

(assert (= (and d!1721402 (not res!2283279)) b!5378203))

(declare-fun m!6404488 () Bool)

(assert (=> b!5378204 m!6404488))

(declare-fun m!6404490 () Bool)

(assert (=> b!5378204 m!6404490))

(assert (=> b!5378196 m!6404488))

(declare-fun m!6404492 () Bool)

(assert (=> b!5378196 m!6404492))

(declare-fun m!6404494 () Bool)

(assert (=> b!5378203 m!6404494))

(assert (=> b!5378199 m!6404034))

(assert (=> d!1721402 m!6404494))

(declare-fun m!6404496 () Bool)

(assert (=> d!1721402 m!6404496))

(assert (=> d!1721402 m!6404446))

(declare-fun m!6404498 () Bool)

(assert (=> b!5378198 m!6404498))

(assert (=> b!5378198 m!6404498))

(declare-fun m!6404500 () Bool)

(assert (=> b!5378198 m!6404500))

(declare-fun m!6404502 () Bool)

(assert (=> b!5378198 m!6404502))

(assert (=> b!5378198 m!6404498))

(declare-fun m!6404504 () Bool)

(assert (=> b!5378198 m!6404504))

(assert (=> b!5378202 m!6404488))

(declare-fun m!6404506 () Bool)

(assert (=> b!5378202 m!6404506))

(assert (=> b!5377687 d!1721402))

(declare-fun d!1721404 () Bool)

(assert (=> d!1721404 (= (Exists!2282 lambda!278031) (choose!40409 lambda!278031))))

(declare-fun bs!1245195 () Bool)

(assert (= bs!1245195 d!1721404))

(declare-fun m!6404508 () Bool)

(assert (=> bs!1245195 m!6404508))

(assert (=> b!5377687 d!1721404))

(declare-fun d!1721406 () Bool)

(assert (=> d!1721406 (= (matchR!7286 lt!2189791 (_1!35603 lt!2189812)) (matchRSpec!2204 lt!2189791 (_1!35603 lt!2189812)))))

(declare-fun lt!2189918 () Unit!153922)

(assert (=> d!1721406 (= lt!2189918 (choose!40408 lt!2189791 (_1!35603 lt!2189812)))))

(assert (=> d!1721406 (validRegex!6837 lt!2189791)))

(assert (=> d!1721406 (= (mainMatchTheorem!2204 lt!2189791 (_1!35603 lt!2189812)) lt!2189918)))

(declare-fun bs!1245196 () Bool)

(assert (= bs!1245196 d!1721406))

(assert (=> bs!1245196 m!6404034))

(assert (=> bs!1245196 m!6404084))

(declare-fun m!6404510 () Bool)

(assert (=> bs!1245196 m!6404510))

(assert (=> bs!1245196 m!6404240))

(assert (=> b!5377687 d!1721406))

(declare-fun d!1721408 () Bool)

(assert (=> d!1721408 (= (Exists!2282 lambda!278032) (choose!40409 lambda!278032))))

(declare-fun bs!1245197 () Bool)

(assert (= bs!1245197 d!1721408))

(declare-fun m!6404512 () Bool)

(assert (=> bs!1245197 m!6404512))

(assert (=> b!5377687 d!1721408))

(declare-fun bs!1245198 () Bool)

(declare-fun d!1721410 () Bool)

(assert (= bs!1245198 (and d!1721410 b!5378123)))

(declare-fun lambda!278097 () Int)

(assert (=> bs!1245198 (not (= lambda!278097 lambda!278081))))

(declare-fun bs!1245199 () Bool)

(assert (= bs!1245199 (and d!1721410 b!5378129)))

(assert (=> bs!1245199 (not (= lambda!278097 lambda!278085))))

(declare-fun bs!1245200 () Bool)

(assert (= bs!1245200 (and d!1721410 d!1721336)))

(assert (=> bs!1245200 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278097 lambda!278068))))

(declare-fun bs!1245201 () Bool)

(assert (= bs!1245201 (and d!1721410 b!5377711)))

(assert (=> bs!1245201 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) (regOne!30714 r!7292)) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278097 lambda!278026))))

(declare-fun bs!1245202 () Bool)

(assert (= bs!1245202 (and d!1721410 b!5377687)))

(assert (=> bs!1245202 (= lambda!278097 lambda!278031)))

(declare-fun bs!1245203 () Bool)

(assert (= bs!1245203 (and d!1721410 b!5377701)))

(assert (=> bs!1245203 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278097 lambda!278029))))

(declare-fun bs!1245204 () Bool)

(assert (= bs!1245204 (and d!1721410 b!5377943)))

(assert (=> bs!1245204 (not (= lambda!278097 lambda!278054))))

(declare-fun bs!1245205 () Bool)

(assert (= bs!1245205 (and d!1721410 b!5377937)))

(assert (=> bs!1245205 (not (= lambda!278097 lambda!278050))))

(declare-fun bs!1245206 () Bool)

(assert (= bs!1245206 (and d!1721410 d!1721378)))

(assert (=> bs!1245206 (= (= lt!2189791 (Star!15101 (reg!15430 (regOne!30714 r!7292)))) (= lambda!278097 lambda!278090))))

(declare-fun bs!1245207 () Bool)

(assert (= bs!1245207 (and d!1721410 d!1721392)))

(assert (=> bs!1245207 (= lambda!278097 lambda!278095)))

(assert (=> bs!1245202 (not (= lambda!278097 lambda!278032))))

(assert (=> bs!1245203 (not (= lambda!278097 lambda!278030))))

(declare-fun bs!1245208 () Bool)

(assert (= bs!1245208 (and d!1721410 b!5378089)))

(assert (=> bs!1245208 (not (= lambda!278097 lambda!278080))))

(assert (=> bs!1245200 (not (= lambda!278097 lambda!278069))))

(assert (=> bs!1245206 (not (= lambda!278097 lambda!278092))))

(declare-fun bs!1245209 () Bool)

(assert (= bs!1245209 (and d!1721410 d!1721324)))

(assert (=> bs!1245209 (= (and (= (_1!35603 lt!2189812) s!2326) (= (reg!15430 (regOne!30714 r!7292)) lt!2189791) (= lt!2189791 (regTwo!30714 r!7292))) (= lambda!278097 lambda!278062))))

(assert (=> bs!1245202 (not (= lambda!278097 lambda!278033))))

(assert (=> bs!1245201 (not (= lambda!278097 lambda!278027))))

(assert (=> bs!1245207 (not (= lambda!278097 lambda!278096))))

(declare-fun bs!1245210 () Bool)

(assert (= bs!1245210 (and d!1721410 b!5378083)))

(assert (=> bs!1245210 (not (= lambda!278097 lambda!278079))))

(assert (=> d!1721410 true))

(assert (=> d!1721410 true))

(assert (=> d!1721410 true))

(assert (=> d!1721410 (= (isDefined!11915 (findConcatSeparation!1626 (reg!15430 (regOne!30714 r!7292)) lt!2189791 Nil!61478 (_1!35603 lt!2189812) (_1!35603 lt!2189812))) (Exists!2282 lambda!278097))))

(declare-fun lt!2189919 () Unit!153922)

(assert (=> d!1721410 (= lt!2189919 (choose!40410 (reg!15430 (regOne!30714 r!7292)) lt!2189791 (_1!35603 lt!2189812)))))

(assert (=> d!1721410 (validRegex!6837 (reg!15430 (regOne!30714 r!7292)))))

(assert (=> d!1721410 (= (lemmaFindConcatSeparationEquivalentToExists!1390 (reg!15430 (regOne!30714 r!7292)) lt!2189791 (_1!35603 lt!2189812)) lt!2189919)))

(declare-fun bs!1245211 () Bool)

(assert (= bs!1245211 d!1721410))

(declare-fun m!6404514 () Bool)

(assert (=> bs!1245211 m!6404514))

(declare-fun m!6404516 () Bool)

(assert (=> bs!1245211 m!6404516))

(assert (=> bs!1245211 m!6404090))

(assert (=> bs!1245211 m!6404092))

(assert (=> bs!1245211 m!6404446))

(assert (=> bs!1245211 m!6404090))

(assert (=> b!5377687 d!1721410))

(declare-fun d!1721412 () Bool)

(assert (=> d!1721412 (= (Exists!2282 lambda!278033) (choose!40409 lambda!278033))))

(declare-fun bs!1245212 () Bool)

(assert (= bs!1245212 d!1721412))

(declare-fun m!6404518 () Bool)

(assert (=> bs!1245212 m!6404518))

(assert (=> b!5377687 d!1721412))

(declare-fun d!1721414 () Bool)

(declare-fun dynLambda!24271 (Int Context!8970) (InoxSet Context!8970))

(assert (=> d!1721414 (= (flatMap!828 lt!2189822 lambda!278028) (dynLambda!24271 lambda!278028 lt!2189815))))

(declare-fun lt!2189924 () Unit!153922)

(declare-fun choose!40420 ((InoxSet Context!8970) Context!8970 Int) Unit!153922)

(assert (=> d!1721414 (= lt!2189924 (choose!40420 lt!2189822 lt!2189815 lambda!278028))))

(assert (=> d!1721414 (= lt!2189822 (store ((as const (Array Context!8970 Bool)) false) lt!2189815 true))))

(assert (=> d!1721414 (= (lemmaFlatMapOnSingletonSet!360 lt!2189822 lt!2189815 lambda!278028) lt!2189924)))

(declare-fun b_lambda!206031 () Bool)

(assert (=> (not b_lambda!206031) (not d!1721414)))

(declare-fun bs!1245213 () Bool)

(assert (= bs!1245213 d!1721414))

(assert (=> bs!1245213 m!6403978))

(declare-fun m!6404520 () Bool)

(assert (=> bs!1245213 m!6404520))

(declare-fun m!6404522 () Bool)

(assert (=> bs!1245213 m!6404522))

(assert (=> bs!1245213 m!6403982))

(assert (=> b!5377707 d!1721414))

(declare-fun d!1721416 () Bool)

(declare-fun choose!40421 ((InoxSet Context!8970) Int) (InoxSet Context!8970))

(assert (=> d!1721416 (= (flatMap!828 lt!2189792 lambda!278028) (choose!40421 lt!2189792 lambda!278028))))

(declare-fun bs!1245214 () Bool)

(assert (= bs!1245214 d!1721416))

(declare-fun m!6404524 () Bool)

(assert (=> bs!1245214 m!6404524))

(assert (=> b!5377707 d!1721416))

(declare-fun b!5378225 () Bool)

(declare-fun e!3336568 () (InoxSet Context!8970))

(assert (=> b!5378225 (= e!3336568 ((as const (Array Context!8970 Bool)) false))))

(declare-fun e!3336570 () (InoxSet Context!8970))

(declare-fun b!5378226 () Bool)

(declare-fun call!385123 () (InoxSet Context!8970))

(assert (=> b!5378226 (= e!3336570 ((_ map or) call!385123 (derivationStepZipperUp!473 (Context!8971 (t!374826 (exprs!4985 lt!2189817))) (h!67926 s!2326))))))

(declare-fun d!1721418 () Bool)

(declare-fun c!937306 () Bool)

(declare-fun e!3336569 () Bool)

(assert (=> d!1721418 (= c!937306 e!3336569)))

(declare-fun res!2283293 () Bool)

(assert (=> d!1721418 (=> (not res!2283293) (not e!3336569))))

(assert (=> d!1721418 (= res!2283293 ((_ is Cons!61479) (exprs!4985 lt!2189817)))))

(assert (=> d!1721418 (= (derivationStepZipperUp!473 lt!2189817 (h!67926 s!2326)) e!3336570)))

(declare-fun b!5378227 () Bool)

(assert (=> b!5378227 (= e!3336570 e!3336568)))

(declare-fun c!937307 () Bool)

(assert (=> b!5378227 (= c!937307 ((_ is Cons!61479) (exprs!4985 lt!2189817)))))

(declare-fun bm!385118 () Bool)

(assert (=> bm!385118 (= call!385123 (derivationStepZipperDown!549 (h!67927 (exprs!4985 lt!2189817)) (Context!8971 (t!374826 (exprs!4985 lt!2189817))) (h!67926 s!2326)))))

(declare-fun b!5378228 () Bool)

(assert (=> b!5378228 (= e!3336569 (nullable!5270 (h!67927 (exprs!4985 lt!2189817))))))

(declare-fun b!5378229 () Bool)

(assert (=> b!5378229 (= e!3336568 call!385123)))

(assert (= (and d!1721418 res!2283293) b!5378228))

(assert (= (and d!1721418 c!937306) b!5378226))

(assert (= (and d!1721418 (not c!937306)) b!5378227))

(assert (= (and b!5378227 c!937307) b!5378229))

(assert (= (and b!5378227 (not c!937307)) b!5378225))

(assert (= (or b!5378226 b!5378229) bm!385118))

(declare-fun m!6404526 () Bool)

(assert (=> b!5378226 m!6404526))

(declare-fun m!6404528 () Bool)

(assert (=> bm!385118 m!6404528))

(declare-fun m!6404530 () Bool)

(assert (=> b!5378228 m!6404530))

(assert (=> b!5377707 d!1721418))

(declare-fun b!5378230 () Bool)

(declare-fun e!3336571 () (InoxSet Context!8970))

(assert (=> b!5378230 (= e!3336571 ((as const (Array Context!8970 Bool)) false))))

(declare-fun b!5378231 () Bool)

(declare-fun e!3336573 () (InoxSet Context!8970))

(declare-fun call!385124 () (InoxSet Context!8970))

(assert (=> b!5378231 (= e!3336573 ((_ map or) call!385124 (derivationStepZipperUp!473 (Context!8971 (t!374826 (exprs!4985 lt!2189815))) (h!67926 s!2326))))))

(declare-fun d!1721420 () Bool)

(declare-fun c!937308 () Bool)

(declare-fun e!3336572 () Bool)

(assert (=> d!1721420 (= c!937308 e!3336572)))

(declare-fun res!2283294 () Bool)

(assert (=> d!1721420 (=> (not res!2283294) (not e!3336572))))

(assert (=> d!1721420 (= res!2283294 ((_ is Cons!61479) (exprs!4985 lt!2189815)))))

(assert (=> d!1721420 (= (derivationStepZipperUp!473 lt!2189815 (h!67926 s!2326)) e!3336573)))

(declare-fun b!5378232 () Bool)

(assert (=> b!5378232 (= e!3336573 e!3336571)))

(declare-fun c!937309 () Bool)

(assert (=> b!5378232 (= c!937309 ((_ is Cons!61479) (exprs!4985 lt!2189815)))))

(declare-fun bm!385119 () Bool)

(assert (=> bm!385119 (= call!385124 (derivationStepZipperDown!549 (h!67927 (exprs!4985 lt!2189815)) (Context!8971 (t!374826 (exprs!4985 lt!2189815))) (h!67926 s!2326)))))

(declare-fun b!5378233 () Bool)

(assert (=> b!5378233 (= e!3336572 (nullable!5270 (h!67927 (exprs!4985 lt!2189815))))))

(declare-fun b!5378234 () Bool)

(assert (=> b!5378234 (= e!3336571 call!385124)))

(assert (= (and d!1721420 res!2283294) b!5378233))

(assert (= (and d!1721420 c!937308) b!5378231))

(assert (= (and d!1721420 (not c!937308)) b!5378232))

(assert (= (and b!5378232 c!937309) b!5378234))

(assert (= (and b!5378232 (not c!937309)) b!5378230))

(assert (= (or b!5378231 b!5378234) bm!385119))

(declare-fun m!6404538 () Bool)

(assert (=> b!5378231 m!6404538))

(declare-fun m!6404542 () Bool)

(assert (=> bm!385119 m!6404542))

(declare-fun m!6404544 () Bool)

(assert (=> b!5378233 m!6404544))

(assert (=> b!5377707 d!1721420))

(declare-fun d!1721426 () Bool)

(assert (=> d!1721426 (= (flatMap!828 lt!2189822 lambda!278028) (choose!40421 lt!2189822 lambda!278028))))

(declare-fun bs!1245227 () Bool)

(assert (= bs!1245227 d!1721426))

(declare-fun m!6404546 () Bool)

(assert (=> bs!1245227 m!6404546))

(assert (=> b!5377707 d!1721426))

(declare-fun d!1721428 () Bool)

(declare-fun lt!2189927 () Regex!15101)

(assert (=> d!1721428 (validRegex!6837 lt!2189927)))

(assert (=> d!1721428 (= lt!2189927 (generalisedUnion!1030 (unfocusZipperList!543 (Cons!61480 lt!2189817 Nil!61480))))))

(assert (=> d!1721428 (= (unfocusZipper!843 (Cons!61480 lt!2189817 Nil!61480)) lt!2189927)))

(declare-fun bs!1245228 () Bool)

(assert (= bs!1245228 d!1721428))

(declare-fun m!6404550 () Bool)

(assert (=> bs!1245228 m!6404550))

(declare-fun m!6404552 () Bool)

(assert (=> bs!1245228 m!6404552))

(assert (=> bs!1245228 m!6404552))

(declare-fun m!6404554 () Bool)

(assert (=> bs!1245228 m!6404554))

(assert (=> b!5377707 d!1721428))

(declare-fun d!1721432 () Bool)

(assert (=> d!1721432 (= (flatMap!828 lt!2189792 lambda!278028) (dynLambda!24271 lambda!278028 lt!2189817))))

(declare-fun lt!2189929 () Unit!153922)

(assert (=> d!1721432 (= lt!2189929 (choose!40420 lt!2189792 lt!2189817 lambda!278028))))

(assert (=> d!1721432 (= lt!2189792 (store ((as const (Array Context!8970 Bool)) false) lt!2189817 true))))

(assert (=> d!1721432 (= (lemmaFlatMapOnSingletonSet!360 lt!2189792 lt!2189817 lambda!278028) lt!2189929)))

(declare-fun b_lambda!206033 () Bool)

(assert (=> (not b_lambda!206033) (not d!1721432)))

(declare-fun bs!1245229 () Bool)

(assert (= bs!1245229 d!1721432))

(assert (=> bs!1245229 m!6403974))

(declare-fun m!6404556 () Bool)

(assert (=> bs!1245229 m!6404556))

(declare-fun m!6404558 () Bool)

(assert (=> bs!1245229 m!6404558))

(assert (=> bs!1245229 m!6403972))

(assert (=> b!5377707 d!1721432))

(declare-fun d!1721434 () Bool)

(declare-fun lt!2189930 () Regex!15101)

(assert (=> d!1721434 (validRegex!6837 lt!2189930)))

(assert (=> d!1721434 (= lt!2189930 (generalisedUnion!1030 (unfocusZipperList!543 zl!343)))))

(assert (=> d!1721434 (= (unfocusZipper!843 zl!343) lt!2189930)))

(declare-fun bs!1245231 () Bool)

(assert (= bs!1245231 d!1721434))

(declare-fun m!6404560 () Bool)

(assert (=> bs!1245231 m!6404560))

(assert (=> bs!1245231 m!6404044))

(assert (=> bs!1245231 m!6404044))

(assert (=> bs!1245231 m!6404046))

(assert (=> b!5377706 d!1721434))

(declare-fun b!5378269 () Bool)

(declare-fun e!3336593 () (InoxSet Context!8970))

(declare-fun call!385142 () (InoxSet Context!8970))

(assert (=> b!5378269 (= e!3336593 call!385142)))

(declare-fun c!937324 () Bool)

(declare-fun c!937326 () Bool)

(declare-fun bm!385134 () Bool)

(declare-fun call!385140 () (InoxSet Context!8970))

(declare-fun c!937327 () Bool)

(declare-fun call!385139 () List!61603)

(assert (=> bm!385134 (= call!385140 (derivationStepZipperDown!549 (ite c!937324 (regOne!30715 (reg!15430 (regOne!30714 r!7292))) (ite c!937326 (regTwo!30714 (reg!15430 (regOne!30714 r!7292))) (ite c!937327 (regOne!30714 (reg!15430 (regOne!30714 r!7292))) (reg!15430 (reg!15430 (regOne!30714 r!7292)))))) (ite (or c!937324 c!937326) lt!2189815 (Context!8971 call!385139)) (h!67926 s!2326)))))

(declare-fun b!5378270 () Bool)

(declare-fun e!3336597 () (InoxSet Context!8970))

(assert (=> b!5378270 (= e!3336597 ((as const (Array Context!8970 Bool)) false))))

(declare-fun b!5378271 () Bool)

(declare-fun e!3336595 () (InoxSet Context!8970))

(assert (=> b!5378271 (= e!3336595 (store ((as const (Array Context!8970 Bool)) false) lt!2189815 true))))

(declare-fun call!385144 () (InoxSet Context!8970))

(declare-fun call!385141 () List!61603)

(declare-fun bm!385135 () Bool)

(assert (=> bm!385135 (= call!385144 (derivationStepZipperDown!549 (ite c!937324 (regTwo!30715 (reg!15430 (regOne!30714 r!7292))) (regOne!30714 (reg!15430 (regOne!30714 r!7292)))) (ite c!937324 lt!2189815 (Context!8971 call!385141)) (h!67926 s!2326)))))

(declare-fun b!5378272 () Bool)

(declare-fun e!3336596 () Bool)

(assert (=> b!5378272 (= e!3336596 (nullable!5270 (regOne!30714 (reg!15430 (regOne!30714 r!7292)))))))

(declare-fun bm!385136 () Bool)

(declare-fun call!385143 () (InoxSet Context!8970))

(assert (=> bm!385136 (= call!385142 call!385143)))

(declare-fun b!5378273 () Bool)

(declare-fun c!937325 () Bool)

(assert (=> b!5378273 (= c!937325 ((_ is Star!15101) (reg!15430 (regOne!30714 r!7292))))))

(assert (=> b!5378273 (= e!3336593 e!3336597)))

(declare-fun b!5378274 () Bool)

(declare-fun e!3336598 () (InoxSet Context!8970))

(assert (=> b!5378274 (= e!3336595 e!3336598)))

(assert (=> b!5378274 (= c!937324 ((_ is Union!15101) (reg!15430 (regOne!30714 r!7292))))))

(declare-fun b!5378275 () Bool)

(assert (=> b!5378275 (= e!3336598 ((_ map or) call!385140 call!385144))))

(declare-fun b!5378276 () Bool)

(declare-fun e!3336594 () (InoxSet Context!8970))

(assert (=> b!5378276 (= e!3336594 e!3336593)))

(assert (=> b!5378276 (= c!937327 ((_ is Concat!23946) (reg!15430 (regOne!30714 r!7292))))))

(declare-fun b!5378268 () Bool)

(assert (=> b!5378268 (= c!937326 e!3336596)))

(declare-fun res!2283300 () Bool)

(assert (=> b!5378268 (=> (not res!2283300) (not e!3336596))))

(assert (=> b!5378268 (= res!2283300 ((_ is Concat!23946) (reg!15430 (regOne!30714 r!7292))))))

(assert (=> b!5378268 (= e!3336598 e!3336594)))

(declare-fun d!1721436 () Bool)

(declare-fun c!937328 () Bool)

(assert (=> d!1721436 (= c!937328 (and ((_ is ElementMatch!15101) (reg!15430 (regOne!30714 r!7292))) (= (c!937169 (reg!15430 (regOne!30714 r!7292))) (h!67926 s!2326))))))

(assert (=> d!1721436 (= (derivationStepZipperDown!549 (reg!15430 (regOne!30714 r!7292)) lt!2189815 (h!67926 s!2326)) e!3336595)))

(declare-fun b!5378277 () Bool)

(assert (=> b!5378277 (= e!3336594 ((_ map or) call!385144 call!385143))))

(declare-fun bm!385137 () Bool)

(assert (=> bm!385137 (= call!385139 call!385141)))

(declare-fun bm!385138 () Bool)

(assert (=> bm!385138 (= call!385143 call!385140)))

(declare-fun b!5378278 () Bool)

(assert (=> b!5378278 (= e!3336597 call!385142)))

(declare-fun bm!385139 () Bool)

(declare-fun $colon$colon!1460 (List!61603 Regex!15101) List!61603)

(assert (=> bm!385139 (= call!385141 ($colon$colon!1460 (exprs!4985 lt!2189815) (ite (or c!937326 c!937327) (regTwo!30714 (reg!15430 (regOne!30714 r!7292))) (reg!15430 (regOne!30714 r!7292)))))))

(assert (= (and d!1721436 c!937328) b!5378271))

(assert (= (and d!1721436 (not c!937328)) b!5378274))

(assert (= (and b!5378274 c!937324) b!5378275))

(assert (= (and b!5378274 (not c!937324)) b!5378268))

(assert (= (and b!5378268 res!2283300) b!5378272))

(assert (= (and b!5378268 c!937326) b!5378277))

(assert (= (and b!5378268 (not c!937326)) b!5378276))

(assert (= (and b!5378276 c!937327) b!5378269))

(assert (= (and b!5378276 (not c!937327)) b!5378273))

(assert (= (and b!5378273 c!937325) b!5378278))

(assert (= (and b!5378273 (not c!937325)) b!5378270))

(assert (= (or b!5378269 b!5378278) bm!385137))

(assert (= (or b!5378269 b!5378278) bm!385136))

(assert (= (or b!5378277 bm!385137) bm!385139))

(assert (= (or b!5378277 bm!385136) bm!385138))

(assert (= (or b!5378275 b!5378277) bm!385135))

(assert (= (or b!5378275 bm!385138) bm!385134))

(declare-fun m!6404576 () Bool)

(assert (=> bm!385139 m!6404576))

(declare-fun m!6404578 () Bool)

(assert (=> bm!385135 m!6404578))

(assert (=> b!5378271 m!6403982))

(declare-fun m!6404580 () Bool)

(assert (=> bm!385134 m!6404580))

(declare-fun m!6404582 () Bool)

(assert (=> b!5378272 m!6404582))

(assert (=> b!5377685 d!1721436))

(declare-fun d!1721444 () Bool)

(assert (=> d!1721444 (= (isEmpty!33466 (t!374827 zl!343)) ((_ is Nil!61480) (t!374827 zl!343)))))

(assert (=> b!5377705 d!1721444))

(declare-fun d!1721446 () Bool)

(declare-fun nullableFct!1561 (Regex!15101) Bool)

(assert (=> d!1721446 (= (nullable!5270 (regOne!30714 (regOne!30714 r!7292))) (nullableFct!1561 (regOne!30714 (regOne!30714 r!7292))))))

(declare-fun bs!1245276 () Bool)

(assert (= bs!1245276 d!1721446))

(declare-fun m!6404584 () Bool)

(assert (=> bs!1245276 m!6404584))

(assert (=> b!5377704 d!1721446))

(declare-fun d!1721448 () Bool)

(declare-fun lt!2189932 () Regex!15101)

(assert (=> d!1721448 (validRegex!6837 lt!2189932)))

(assert (=> d!1721448 (= lt!2189932 (generalisedUnion!1030 (unfocusZipperList!543 (Cons!61480 lt!2189823 Nil!61480))))))

(assert (=> d!1721448 (= (unfocusZipper!843 (Cons!61480 lt!2189823 Nil!61480)) lt!2189932)))

(declare-fun bs!1245277 () Bool)

(assert (= bs!1245277 d!1721448))

(declare-fun m!6404586 () Bool)

(assert (=> bs!1245277 m!6404586))

(declare-fun m!6404588 () Bool)

(assert (=> bs!1245277 m!6404588))

(assert (=> bs!1245277 m!6404588))

(declare-fun m!6404590 () Bool)

(assert (=> bs!1245277 m!6404590))

(assert (=> b!5377693 d!1721448))

(declare-fun d!1721450 () Bool)

(assert (=> d!1721450 (= (isEmpty!33467 (t!374826 (exprs!4985 (h!67928 zl!343)))) ((_ is Nil!61479) (t!374826 (exprs!4985 (h!67928 zl!343)))))))

(assert (=> b!5377714 d!1721450))

(declare-fun d!1721452 () Bool)

(declare-fun e!3336613 () Bool)

(assert (=> d!1721452 (= (matchZipper!1345 ((_ map or) lt!2189797 lt!2189820) (t!374825 s!2326)) e!3336613)))

(declare-fun res!2283306 () Bool)

(assert (=> d!1721452 (=> res!2283306 e!3336613)))

(assert (=> d!1721452 (= res!2283306 (matchZipper!1345 lt!2189797 (t!374825 s!2326)))))

(declare-fun lt!2189935 () Unit!153922)

(declare-fun choose!40422 ((InoxSet Context!8970) (InoxSet Context!8970) List!61602) Unit!153922)

(assert (=> d!1721452 (= lt!2189935 (choose!40422 lt!2189797 lt!2189820 (t!374825 s!2326)))))

(assert (=> d!1721452 (= (lemmaZipperConcatMatchesSameAsBothZippers!338 lt!2189797 lt!2189820 (t!374825 s!2326)) lt!2189935)))

(declare-fun b!5378302 () Bool)

(assert (=> b!5378302 (= e!3336613 (matchZipper!1345 lt!2189820 (t!374825 s!2326)))))

(assert (= (and d!1721452 (not res!2283306)) b!5378302))

(assert (=> d!1721452 m!6404040))

(assert (=> d!1721452 m!6404038))

(declare-fun m!6404618 () Bool)

(assert (=> d!1721452 m!6404618))

(assert (=> b!5378302 m!6404102))

(assert (=> b!5377692 d!1721452))

(declare-fun d!1721466 () Bool)

(declare-fun c!937348 () Bool)

(assert (=> d!1721466 (= c!937348 (isEmpty!33468 (t!374825 s!2326)))))

(declare-fun e!3336628 () Bool)

(assert (=> d!1721466 (= (matchZipper!1345 lt!2189797 (t!374825 s!2326)) e!3336628)))

(declare-fun b!5378327 () Bool)

(declare-fun nullableZipper!1410 ((InoxSet Context!8970)) Bool)

(assert (=> b!5378327 (= e!3336628 (nullableZipper!1410 lt!2189797))))

(declare-fun b!5378328 () Bool)

(assert (=> b!5378328 (= e!3336628 (matchZipper!1345 (derivationStepZipper!1340 lt!2189797 (head!11537 (t!374825 s!2326))) (tail!10634 (t!374825 s!2326))))))

(assert (= (and d!1721466 c!937348) b!5378327))

(assert (= (and d!1721466 (not c!937348)) b!5378328))

(declare-fun m!6404648 () Bool)

(assert (=> d!1721466 m!6404648))

(declare-fun m!6404650 () Bool)

(assert (=> b!5378327 m!6404650))

(declare-fun m!6404652 () Bool)

(assert (=> b!5378328 m!6404652))

(assert (=> b!5378328 m!6404652))

(declare-fun m!6404654 () Bool)

(assert (=> b!5378328 m!6404654))

(declare-fun m!6404656 () Bool)

(assert (=> b!5378328 m!6404656))

(assert (=> b!5378328 m!6404654))

(assert (=> b!5378328 m!6404656))

(declare-fun m!6404658 () Bool)

(assert (=> b!5378328 m!6404658))

(assert (=> b!5377692 d!1721466))

(declare-fun d!1721478 () Bool)

(declare-fun c!937349 () Bool)

(assert (=> d!1721478 (= c!937349 (isEmpty!33468 (t!374825 s!2326)))))

(declare-fun e!3336629 () Bool)

(assert (=> d!1721478 (= (matchZipper!1345 ((_ map or) lt!2189797 lt!2189820) (t!374825 s!2326)) e!3336629)))

(declare-fun b!5378329 () Bool)

(assert (=> b!5378329 (= e!3336629 (nullableZipper!1410 ((_ map or) lt!2189797 lt!2189820)))))

(declare-fun b!5378330 () Bool)

(assert (=> b!5378330 (= e!3336629 (matchZipper!1345 (derivationStepZipper!1340 ((_ map or) lt!2189797 lt!2189820) (head!11537 (t!374825 s!2326))) (tail!10634 (t!374825 s!2326))))))

(assert (= (and d!1721478 c!937349) b!5378329))

(assert (= (and d!1721478 (not c!937349)) b!5378330))

(assert (=> d!1721478 m!6404648))

(declare-fun m!6404660 () Bool)

(assert (=> b!5378329 m!6404660))

(assert (=> b!5378330 m!6404652))

(assert (=> b!5378330 m!6404652))

(declare-fun m!6404662 () Bool)

(assert (=> b!5378330 m!6404662))

(assert (=> b!5378330 m!6404656))

(assert (=> b!5378330 m!6404662))

(assert (=> b!5378330 m!6404656))

(declare-fun m!6404664 () Bool)

(assert (=> b!5378330 m!6404664))

(assert (=> b!5377692 d!1721478))

(declare-fun b!5378331 () Bool)

(declare-fun e!3336636 () Bool)

(declare-fun e!3336633 () Bool)

(assert (=> b!5378331 (= e!3336636 e!3336633)))

(declare-fun res!2283315 () Bool)

(assert (=> b!5378331 (=> res!2283315 e!3336633)))

(declare-fun call!385156 () Bool)

(assert (=> b!5378331 (= res!2283315 call!385156)))

(declare-fun b!5378332 () Bool)

(declare-fun res!2283313 () Bool)

(declare-fun e!3336635 () Bool)

(assert (=> b!5378332 (=> (not res!2283313) (not e!3336635))))

(assert (=> b!5378332 (= res!2283313 (not call!385156))))

(declare-fun b!5378333 () Bool)

(declare-fun res!2283317 () Bool)

(declare-fun e!3336632 () Bool)

(assert (=> b!5378333 (=> res!2283317 e!3336632)))

(assert (=> b!5378333 (= res!2283317 (not ((_ is ElementMatch!15101) lt!2189791)))))

(declare-fun e!3336634 () Bool)

(assert (=> b!5378333 (= e!3336634 e!3336632)))

(declare-fun b!5378334 () Bool)

(declare-fun e!3336631 () Bool)

(declare-fun lt!2189937 () Bool)

(assert (=> b!5378334 (= e!3336631 (= lt!2189937 call!385156))))

(declare-fun b!5378335 () Bool)

(declare-fun e!3336630 () Bool)

(assert (=> b!5378335 (= e!3336630 (nullable!5270 lt!2189791))))

(declare-fun b!5378336 () Bool)

(assert (=> b!5378336 (= e!3336630 (matchR!7286 (derivativeStep!4231 lt!2189791 (head!11537 (_1!35603 lt!2189812))) (tail!10634 (_1!35603 lt!2189812))))))

(declare-fun bm!385151 () Bool)

(assert (=> bm!385151 (= call!385156 (isEmpty!33468 (_1!35603 lt!2189812)))))

(declare-fun b!5378337 () Bool)

(declare-fun res!2283316 () Bool)

(assert (=> b!5378337 (=> (not res!2283316) (not e!3336635))))

(assert (=> b!5378337 (= res!2283316 (isEmpty!33468 (tail!10634 (_1!35603 lt!2189812))))))

(declare-fun d!1721480 () Bool)

(assert (=> d!1721480 e!3336631))

(declare-fun c!937352 () Bool)

(assert (=> d!1721480 (= c!937352 ((_ is EmptyExpr!15101) lt!2189791))))

(assert (=> d!1721480 (= lt!2189937 e!3336630)))

(declare-fun c!937350 () Bool)

(assert (=> d!1721480 (= c!937350 (isEmpty!33468 (_1!35603 lt!2189812)))))

(assert (=> d!1721480 (validRegex!6837 lt!2189791)))

(assert (=> d!1721480 (= (matchR!7286 lt!2189791 (_1!35603 lt!2189812)) lt!2189937)))

(declare-fun b!5378338 () Bool)

(declare-fun res!2283318 () Bool)

(assert (=> b!5378338 (=> res!2283318 e!3336633)))

(assert (=> b!5378338 (= res!2283318 (not (isEmpty!33468 (tail!10634 (_1!35603 lt!2189812)))))))

(declare-fun b!5378339 () Bool)

(assert (=> b!5378339 (= e!3336631 e!3336634)))

(declare-fun c!937351 () Bool)

(assert (=> b!5378339 (= c!937351 ((_ is EmptyLang!15101) lt!2189791))))

(declare-fun b!5378340 () Bool)

(assert (=> b!5378340 (= e!3336633 (not (= (head!11537 (_1!35603 lt!2189812)) (c!937169 lt!2189791))))))

(declare-fun b!5378341 () Bool)

(assert (=> b!5378341 (= e!3336632 e!3336636)))

(declare-fun res!2283312 () Bool)

(assert (=> b!5378341 (=> (not res!2283312) (not e!3336636))))

(assert (=> b!5378341 (= res!2283312 (not lt!2189937))))

(declare-fun b!5378342 () Bool)

(declare-fun res!2283311 () Bool)

(assert (=> b!5378342 (=> res!2283311 e!3336632)))

(assert (=> b!5378342 (= res!2283311 e!3336635)))

(declare-fun res!2283314 () Bool)

(assert (=> b!5378342 (=> (not res!2283314) (not e!3336635))))

(assert (=> b!5378342 (= res!2283314 lt!2189937)))

(declare-fun b!5378343 () Bool)

(assert (=> b!5378343 (= e!3336635 (= (head!11537 (_1!35603 lt!2189812)) (c!937169 lt!2189791)))))

(declare-fun b!5378344 () Bool)

(assert (=> b!5378344 (= e!3336634 (not lt!2189937))))

(assert (= (and d!1721480 c!937350) b!5378335))

(assert (= (and d!1721480 (not c!937350)) b!5378336))

(assert (= (and d!1721480 c!937352) b!5378334))

(assert (= (and d!1721480 (not c!937352)) b!5378339))

(assert (= (and b!5378339 c!937351) b!5378344))

(assert (= (and b!5378339 (not c!937351)) b!5378333))

(assert (= (and b!5378333 (not res!2283317)) b!5378342))

(assert (= (and b!5378342 res!2283314) b!5378332))

(assert (= (and b!5378332 res!2283313) b!5378337))

(assert (= (and b!5378337 res!2283316) b!5378343))

(assert (= (and b!5378342 (not res!2283311)) b!5378341))

(assert (= (and b!5378341 res!2283312) b!5378331))

(assert (= (and b!5378331 (not res!2283315)) b!5378338))

(assert (= (and b!5378338 (not res!2283318)) b!5378340))

(assert (= (or b!5378334 b!5378331 b!5378332) bm!385151))

(declare-fun m!6404666 () Bool)

(assert (=> b!5378340 m!6404666))

(declare-fun m!6404668 () Bool)

(assert (=> b!5378337 m!6404668))

(assert (=> b!5378337 m!6404668))

(declare-fun m!6404670 () Bool)

(assert (=> b!5378337 m!6404670))

(assert (=> b!5378343 m!6404666))

(assert (=> b!5378336 m!6404666))

(assert (=> b!5378336 m!6404666))

(declare-fun m!6404672 () Bool)

(assert (=> b!5378336 m!6404672))

(assert (=> b!5378336 m!6404668))

(assert (=> b!5378336 m!6404672))

(assert (=> b!5378336 m!6404668))

(declare-fun m!6404674 () Bool)

(assert (=> b!5378336 m!6404674))

(declare-fun m!6404676 () Bool)

(assert (=> b!5378335 m!6404676))

(assert (=> bm!385151 m!6404098))

(assert (=> d!1721480 m!6404098))

(assert (=> d!1721480 m!6404240))

(assert (=> b!5378338 m!6404668))

(assert (=> b!5378338 m!6404668))

(assert (=> b!5378338 m!6404670))

(assert (=> b!5377713 d!1721480))

(declare-fun bs!1245300 () Bool)

(declare-fun d!1721482 () Bool)

(assert (= bs!1245300 (and d!1721482 d!1721352)))

(declare-fun lambda!278110 () Int)

(assert (=> bs!1245300 (= lambda!278110 lambda!278078)))

(assert (=> d!1721482 (= (inv!80999 setElem!34877) (forall!14503 (exprs!4985 setElem!34877) lambda!278110))))

(declare-fun bs!1245301 () Bool)

(assert (= bs!1245301 d!1721482))

(declare-fun m!6404678 () Bool)

(assert (=> bs!1245301 m!6404678))

(assert (=> setNonEmpty!34877 d!1721482))

(declare-fun b!5378345 () Bool)

(declare-fun e!3336643 () Bool)

(declare-fun e!3336640 () Bool)

(assert (=> b!5378345 (= e!3336643 e!3336640)))

(declare-fun res!2283323 () Bool)

(assert (=> b!5378345 (=> res!2283323 e!3336640)))

(declare-fun call!385157 () Bool)

(assert (=> b!5378345 (= res!2283323 call!385157)))

(declare-fun b!5378346 () Bool)

(declare-fun res!2283321 () Bool)

(declare-fun e!3336642 () Bool)

(assert (=> b!5378346 (=> (not res!2283321) (not e!3336642))))

(assert (=> b!5378346 (= res!2283321 (not call!385157))))

(declare-fun b!5378347 () Bool)

(declare-fun res!2283325 () Bool)

(declare-fun e!3336639 () Bool)

(assert (=> b!5378347 (=> res!2283325 e!3336639)))

(assert (=> b!5378347 (= res!2283325 (not ((_ is ElementMatch!15101) (regTwo!30714 r!7292))))))

(declare-fun e!3336641 () Bool)

(assert (=> b!5378347 (= e!3336641 e!3336639)))

(declare-fun b!5378348 () Bool)

(declare-fun e!3336638 () Bool)

(declare-fun lt!2189938 () Bool)

(assert (=> b!5378348 (= e!3336638 (= lt!2189938 call!385157))))

(declare-fun b!5378349 () Bool)

(declare-fun e!3336637 () Bool)

(assert (=> b!5378349 (= e!3336637 (nullable!5270 (regTwo!30714 r!7292)))))

(declare-fun b!5378350 () Bool)

(assert (=> b!5378350 (= e!3336637 (matchR!7286 (derivativeStep!4231 (regTwo!30714 r!7292) (head!11537 (_2!35603 lt!2189812))) (tail!10634 (_2!35603 lt!2189812))))))

(declare-fun bm!385152 () Bool)

(assert (=> bm!385152 (= call!385157 (isEmpty!33468 (_2!35603 lt!2189812)))))

(declare-fun b!5378351 () Bool)

(declare-fun res!2283324 () Bool)

(assert (=> b!5378351 (=> (not res!2283324) (not e!3336642))))

(assert (=> b!5378351 (= res!2283324 (isEmpty!33468 (tail!10634 (_2!35603 lt!2189812))))))

(declare-fun d!1721484 () Bool)

(assert (=> d!1721484 e!3336638))

(declare-fun c!937355 () Bool)

(assert (=> d!1721484 (= c!937355 ((_ is EmptyExpr!15101) (regTwo!30714 r!7292)))))

(assert (=> d!1721484 (= lt!2189938 e!3336637)))

(declare-fun c!937353 () Bool)

(assert (=> d!1721484 (= c!937353 (isEmpty!33468 (_2!35603 lt!2189812)))))

(assert (=> d!1721484 (validRegex!6837 (regTwo!30714 r!7292))))

(assert (=> d!1721484 (= (matchR!7286 (regTwo!30714 r!7292) (_2!35603 lt!2189812)) lt!2189938)))

(declare-fun b!5378352 () Bool)

(declare-fun res!2283326 () Bool)

(assert (=> b!5378352 (=> res!2283326 e!3336640)))

(assert (=> b!5378352 (= res!2283326 (not (isEmpty!33468 (tail!10634 (_2!35603 lt!2189812)))))))

(declare-fun b!5378353 () Bool)

(assert (=> b!5378353 (= e!3336638 e!3336641)))

(declare-fun c!937354 () Bool)

(assert (=> b!5378353 (= c!937354 ((_ is EmptyLang!15101) (regTwo!30714 r!7292)))))

(declare-fun b!5378354 () Bool)

(assert (=> b!5378354 (= e!3336640 (not (= (head!11537 (_2!35603 lt!2189812)) (c!937169 (regTwo!30714 r!7292)))))))

(declare-fun b!5378355 () Bool)

(assert (=> b!5378355 (= e!3336639 e!3336643)))

(declare-fun res!2283320 () Bool)

(assert (=> b!5378355 (=> (not res!2283320) (not e!3336643))))

(assert (=> b!5378355 (= res!2283320 (not lt!2189938))))

(declare-fun b!5378356 () Bool)

(declare-fun res!2283319 () Bool)

(assert (=> b!5378356 (=> res!2283319 e!3336639)))

(assert (=> b!5378356 (= res!2283319 e!3336642)))

(declare-fun res!2283322 () Bool)

(assert (=> b!5378356 (=> (not res!2283322) (not e!3336642))))

(assert (=> b!5378356 (= res!2283322 lt!2189938)))

(declare-fun b!5378357 () Bool)

(assert (=> b!5378357 (= e!3336642 (= (head!11537 (_2!35603 lt!2189812)) (c!937169 (regTwo!30714 r!7292))))))

(declare-fun b!5378358 () Bool)

(assert (=> b!5378358 (= e!3336641 (not lt!2189938))))

(assert (= (and d!1721484 c!937353) b!5378349))

(assert (= (and d!1721484 (not c!937353)) b!5378350))

(assert (= (and d!1721484 c!937355) b!5378348))

(assert (= (and d!1721484 (not c!937355)) b!5378353))

(assert (= (and b!5378353 c!937354) b!5378358))

(assert (= (and b!5378353 (not c!937354)) b!5378347))

(assert (= (and b!5378347 (not res!2283325)) b!5378356))

(assert (= (and b!5378356 res!2283322) b!5378346))

(assert (= (and b!5378346 res!2283321) b!5378351))

(assert (= (and b!5378351 res!2283324) b!5378357))

(assert (= (and b!5378356 (not res!2283319)) b!5378355))

(assert (= (and b!5378355 res!2283320) b!5378345))

(assert (= (and b!5378345 (not res!2283323)) b!5378352))

(assert (= (and b!5378352 (not res!2283326)) b!5378354))

(assert (= (or b!5378348 b!5378345 b!5378346) bm!385152))

(declare-fun m!6404680 () Bool)

(assert (=> b!5378354 m!6404680))

(declare-fun m!6404682 () Bool)

(assert (=> b!5378351 m!6404682))

(assert (=> b!5378351 m!6404682))

(declare-fun m!6404684 () Bool)

(assert (=> b!5378351 m!6404684))

(assert (=> b!5378357 m!6404680))

(assert (=> b!5378350 m!6404680))

(assert (=> b!5378350 m!6404680))

(declare-fun m!6404686 () Bool)

(assert (=> b!5378350 m!6404686))

(assert (=> b!5378350 m!6404682))

(assert (=> b!5378350 m!6404686))

(assert (=> b!5378350 m!6404682))

(declare-fun m!6404688 () Bool)

(assert (=> b!5378350 m!6404688))

(declare-fun m!6404690 () Bool)

(assert (=> b!5378349 m!6404690))

(declare-fun m!6404692 () Bool)

(assert (=> bm!385152 m!6404692))

(assert (=> d!1721484 m!6404692))

(declare-fun m!6404694 () Bool)

(assert (=> d!1721484 m!6404694))

(assert (=> b!5378352 m!6404682))

(assert (=> b!5378352 m!6404682))

(assert (=> b!5378352 m!6404684))

(assert (=> b!5377712 d!1721484))

(declare-fun d!1721486 () Bool)

(declare-fun c!937356 () Bool)

(assert (=> d!1721486 (= c!937356 (isEmpty!33468 s!2326))))

(declare-fun e!3336644 () Bool)

(assert (=> d!1721486 (= (matchZipper!1345 lt!2189794 s!2326) e!3336644)))

(declare-fun b!5378359 () Bool)

(assert (=> b!5378359 (= e!3336644 (nullableZipper!1410 lt!2189794))))

(declare-fun b!5378360 () Bool)

(assert (=> b!5378360 (= e!3336644 (matchZipper!1345 (derivationStepZipper!1340 lt!2189794 (head!11537 s!2326)) (tail!10634 s!2326)))))

(assert (= (and d!1721486 c!937356) b!5378359))

(assert (= (and d!1721486 (not c!937356)) b!5378360))

(assert (=> d!1721486 m!6404166))

(declare-fun m!6404696 () Bool)

(assert (=> b!5378359 m!6404696))

(assert (=> b!5378360 m!6404152))

(assert (=> b!5378360 m!6404152))

(declare-fun m!6404698 () Bool)

(assert (=> b!5378360 m!6404698))

(assert (=> b!5378360 m!6404154))

(assert (=> b!5378360 m!6404698))

(assert (=> b!5378360 m!6404154))

(declare-fun m!6404700 () Bool)

(assert (=> b!5378360 m!6404700))

(assert (=> b!5377691 d!1721486))

(declare-fun d!1721488 () Bool)

(declare-fun c!937357 () Bool)

(assert (=> d!1721488 (= c!937357 (isEmpty!33468 (t!374825 s!2326)))))

(declare-fun e!3336645 () Bool)

(assert (=> d!1721488 (= (matchZipper!1345 lt!2189818 (t!374825 s!2326)) e!3336645)))

(declare-fun b!5378361 () Bool)

(assert (=> b!5378361 (= e!3336645 (nullableZipper!1410 lt!2189818))))

(declare-fun b!5378362 () Bool)

(assert (=> b!5378362 (= e!3336645 (matchZipper!1345 (derivationStepZipper!1340 lt!2189818 (head!11537 (t!374825 s!2326))) (tail!10634 (t!374825 s!2326))))))

(assert (= (and d!1721488 c!937357) b!5378361))

(assert (= (and d!1721488 (not c!937357)) b!5378362))

(assert (=> d!1721488 m!6404648))

(declare-fun m!6404702 () Bool)

(assert (=> b!5378361 m!6404702))

(assert (=> b!5378362 m!6404652))

(assert (=> b!5378362 m!6404652))

(declare-fun m!6404704 () Bool)

(assert (=> b!5378362 m!6404704))

(assert (=> b!5378362 m!6404656))

(assert (=> b!5378362 m!6404704))

(assert (=> b!5378362 m!6404656))

(declare-fun m!6404706 () Bool)

(assert (=> b!5378362 m!6404706))

(assert (=> b!5377691 d!1721488))

(declare-fun b!5378363 () Bool)

(declare-fun res!2283328 () Bool)

(declare-fun e!3336650 () Bool)

(assert (=> b!5378363 (=> (not res!2283328) (not e!3336650))))

(declare-fun lt!2189939 () Option!15212)

(assert (=> b!5378363 (= res!2283328 (matchR!7286 (regOne!30714 r!7292) (_1!35603 (get!21160 lt!2189939))))))

(declare-fun b!5378364 () Bool)

(declare-fun e!3336646 () Option!15212)

(declare-fun e!3336648 () Option!15212)

(assert (=> b!5378364 (= e!3336646 e!3336648)))

(declare-fun c!937358 () Bool)

(assert (=> b!5378364 (= c!937358 ((_ is Nil!61478) s!2326))))

(declare-fun b!5378365 () Bool)

(declare-fun lt!2189940 () Unit!153922)

(declare-fun lt!2189941 () Unit!153922)

(assert (=> b!5378365 (= lt!2189940 lt!2189941)))

(assert (=> b!5378365 (= (++!13404 (++!13404 Nil!61478 (Cons!61478 (h!67926 s!2326) Nil!61478)) (t!374825 s!2326)) s!2326)))

(assert (=> b!5378365 (= lt!2189941 (lemmaMoveElementToOtherListKeepsConcatEq!1804 Nil!61478 (h!67926 s!2326) (t!374825 s!2326) s!2326))))

(assert (=> b!5378365 (= e!3336648 (findConcatSeparation!1626 (regOne!30714 r!7292) (regTwo!30714 r!7292) (++!13404 Nil!61478 (Cons!61478 (h!67926 s!2326) Nil!61478)) (t!374825 s!2326) s!2326))))

(declare-fun b!5378366 () Bool)

(declare-fun e!3336647 () Bool)

(assert (=> b!5378366 (= e!3336647 (matchR!7286 (regTwo!30714 r!7292) s!2326))))

(declare-fun b!5378367 () Bool)

(assert (=> b!5378367 (= e!3336648 None!15211)))

(declare-fun b!5378368 () Bool)

(assert (=> b!5378368 (= e!3336646 (Some!15211 (tuple2!64601 Nil!61478 s!2326)))))

(declare-fun d!1721490 () Bool)

(declare-fun e!3336649 () Bool)

(assert (=> d!1721490 e!3336649))

(declare-fun res!2283330 () Bool)

(assert (=> d!1721490 (=> res!2283330 e!3336649)))

(assert (=> d!1721490 (= res!2283330 e!3336650)))

(declare-fun res!2283331 () Bool)

(assert (=> d!1721490 (=> (not res!2283331) (not e!3336650))))

(assert (=> d!1721490 (= res!2283331 (isDefined!11915 lt!2189939))))

(assert (=> d!1721490 (= lt!2189939 e!3336646)))

(declare-fun c!937359 () Bool)

(assert (=> d!1721490 (= c!937359 e!3336647)))

(declare-fun res!2283329 () Bool)

(assert (=> d!1721490 (=> (not res!2283329) (not e!3336647))))

(assert (=> d!1721490 (= res!2283329 (matchR!7286 (regOne!30714 r!7292) Nil!61478))))

(assert (=> d!1721490 (validRegex!6837 (regOne!30714 r!7292))))

(assert (=> d!1721490 (= (findConcatSeparation!1626 (regOne!30714 r!7292) (regTwo!30714 r!7292) Nil!61478 s!2326 s!2326) lt!2189939)))

(declare-fun b!5378369 () Bool)

(assert (=> b!5378369 (= e!3336650 (= (++!13404 (_1!35603 (get!21160 lt!2189939)) (_2!35603 (get!21160 lt!2189939))) s!2326))))

(declare-fun b!5378370 () Bool)

(assert (=> b!5378370 (= e!3336649 (not (isDefined!11915 lt!2189939)))))

(declare-fun b!5378371 () Bool)

(declare-fun res!2283327 () Bool)

(assert (=> b!5378371 (=> (not res!2283327) (not e!3336650))))

(assert (=> b!5378371 (= res!2283327 (matchR!7286 (regTwo!30714 r!7292) (_2!35603 (get!21160 lt!2189939))))))

(assert (= (and d!1721490 res!2283329) b!5378366))

(assert (= (and d!1721490 c!937359) b!5378368))

(assert (= (and d!1721490 (not c!937359)) b!5378364))

(assert (= (and b!5378364 c!937358) b!5378367))

(assert (= (and b!5378364 (not c!937358)) b!5378365))

(assert (= (and d!1721490 res!2283331) b!5378363))

(assert (= (and b!5378363 res!2283328) b!5378371))

(assert (= (and b!5378371 res!2283327) b!5378369))

(assert (= (and d!1721490 (not res!2283330)) b!5378370))

(declare-fun m!6404708 () Bool)

(assert (=> b!5378371 m!6404708))

(declare-fun m!6404710 () Bool)

(assert (=> b!5378371 m!6404710))

(assert (=> b!5378363 m!6404708))

(declare-fun m!6404712 () Bool)

(assert (=> b!5378363 m!6404712))

(declare-fun m!6404714 () Bool)

(assert (=> b!5378370 m!6404714))

(assert (=> b!5378366 m!6404320))

(assert (=> d!1721490 m!6404714))

(declare-fun m!6404716 () Bool)

(assert (=> d!1721490 m!6404716))

(declare-fun m!6404720 () Bool)

(assert (=> d!1721490 m!6404720))

(assert (=> b!5378365 m!6404324))

(assert (=> b!5378365 m!6404324))

(assert (=> b!5378365 m!6404326))

(assert (=> b!5378365 m!6404328))

(assert (=> b!5378365 m!6404324))

(declare-fun m!6404726 () Bool)

(assert (=> b!5378365 m!6404726))

(assert (=> b!5378369 m!6404708))

(declare-fun m!6404728 () Bool)

(assert (=> b!5378369 m!6404728))

(assert (=> b!5377711 d!1721490))

(declare-fun d!1721494 () Bool)

(assert (=> d!1721494 (= (Exists!2282 lambda!278026) (choose!40409 lambda!278026))))

(declare-fun bs!1245317 () Bool)

(assert (= bs!1245317 d!1721494))

(declare-fun m!6404730 () Bool)

(assert (=> bs!1245317 m!6404730))

(assert (=> b!5377711 d!1721494))

(declare-fun d!1721496 () Bool)

(assert (=> d!1721496 (= (Exists!2282 lambda!278027) (choose!40409 lambda!278027))))

(declare-fun bs!1245318 () Bool)

(assert (= bs!1245318 d!1721496))

(declare-fun m!6404732 () Bool)

(assert (=> bs!1245318 m!6404732))

(assert (=> b!5377711 d!1721496))

(declare-fun bs!1245319 () Bool)

(declare-fun d!1721498 () Bool)

(assert (= bs!1245319 (and d!1721498 b!5378123)))

(declare-fun lambda!278112 () Int)

(assert (=> bs!1245319 (not (= lambda!278112 lambda!278081))))

(declare-fun bs!1245320 () Bool)

(assert (= bs!1245320 (and d!1721498 b!5378129)))

(assert (=> bs!1245320 (not (= lambda!278112 lambda!278085))))

(declare-fun bs!1245321 () Bool)

(assert (= bs!1245321 (and d!1721498 d!1721336)))

(assert (=> bs!1245321 (= (= (regOne!30714 r!7292) lt!2189791) (= lambda!278112 lambda!278068))))

(declare-fun bs!1245323 () Bool)

(assert (= bs!1245323 (and d!1721498 b!5377711)))

(assert (=> bs!1245323 (= lambda!278112 lambda!278026)))

(declare-fun bs!1245324 () Bool)

(assert (= bs!1245324 (and d!1721498 b!5377687)))

(assert (=> bs!1245324 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278112 lambda!278031))))

(declare-fun bs!1245325 () Bool)

(assert (= bs!1245325 (and d!1721498 d!1721410)))

(assert (=> bs!1245325 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278112 lambda!278097))))

(declare-fun bs!1245326 () Bool)

(assert (= bs!1245326 (and d!1721498 b!5377701)))

(assert (=> bs!1245326 (= (= (regOne!30714 r!7292) lt!2189791) (= lambda!278112 lambda!278029))))

(declare-fun bs!1245327 () Bool)

(assert (= bs!1245327 (and d!1721498 b!5377943)))

(assert (=> bs!1245327 (not (= lambda!278112 lambda!278054))))

(declare-fun bs!1245328 () Bool)

(assert (= bs!1245328 (and d!1721498 b!5377937)))

(assert (=> bs!1245328 (not (= lambda!278112 lambda!278050))))

(declare-fun bs!1245329 () Bool)

(assert (= bs!1245329 (and d!1721498 d!1721378)))

(assert (=> bs!1245329 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) (Star!15101 (reg!15430 (regOne!30714 r!7292))))) (= lambda!278112 lambda!278090))))

(declare-fun bs!1245330 () Bool)

(assert (= bs!1245330 (and d!1721498 d!1721392)))

(assert (=> bs!1245330 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278112 lambda!278095))))

(assert (=> bs!1245324 (not (= lambda!278112 lambda!278032))))

(assert (=> bs!1245326 (not (= lambda!278112 lambda!278030))))

(declare-fun bs!1245331 () Bool)

(assert (= bs!1245331 (and d!1721498 b!5378089)))

(assert (=> bs!1245331 (not (= lambda!278112 lambda!278080))))

(assert (=> bs!1245321 (not (= lambda!278112 lambda!278069))))

(assert (=> bs!1245329 (not (= lambda!278112 lambda!278092))))

(declare-fun bs!1245332 () Bool)

(assert (= bs!1245332 (and d!1721498 d!1721324)))

(assert (=> bs!1245332 (= (= (regOne!30714 r!7292) lt!2189791) (= lambda!278112 lambda!278062))))

(assert (=> bs!1245324 (not (= lambda!278112 lambda!278033))))

(assert (=> bs!1245323 (not (= lambda!278112 lambda!278027))))

(assert (=> bs!1245330 (not (= lambda!278112 lambda!278096))))

(declare-fun bs!1245333 () Bool)

(assert (= bs!1245333 (and d!1721498 b!5378083)))

(assert (=> bs!1245333 (not (= lambda!278112 lambda!278079))))

(assert (=> d!1721498 true))

(assert (=> d!1721498 true))

(assert (=> d!1721498 true))

(assert (=> d!1721498 (= (isDefined!11915 (findConcatSeparation!1626 (regOne!30714 r!7292) (regTwo!30714 r!7292) Nil!61478 s!2326 s!2326)) (Exists!2282 lambda!278112))))

(declare-fun lt!2189943 () Unit!153922)

(assert (=> d!1721498 (= lt!2189943 (choose!40410 (regOne!30714 r!7292) (regTwo!30714 r!7292) s!2326))))

(assert (=> d!1721498 (validRegex!6837 (regOne!30714 r!7292))))

(assert (=> d!1721498 (= (lemmaFindConcatSeparationEquivalentToExists!1390 (regOne!30714 r!7292) (regTwo!30714 r!7292) s!2326) lt!2189943)))

(declare-fun bs!1245334 () Bool)

(assert (= bs!1245334 d!1721498))

(declare-fun m!6404758 () Bool)

(assert (=> bs!1245334 m!6404758))

(declare-fun m!6404760 () Bool)

(assert (=> bs!1245334 m!6404760))

(assert (=> bs!1245334 m!6404004))

(assert (=> bs!1245334 m!6404006))

(assert (=> bs!1245334 m!6404720))

(assert (=> bs!1245334 m!6404004))

(assert (=> b!5377711 d!1721498))

(declare-fun bs!1245335 () Bool)

(declare-fun d!1721506 () Bool)

(assert (= bs!1245335 (and d!1721506 b!5378123)))

(declare-fun lambda!278113 () Int)

(assert (=> bs!1245335 (not (= lambda!278113 lambda!278081))))

(declare-fun bs!1245336 () Bool)

(assert (= bs!1245336 (and d!1721506 b!5378129)))

(assert (=> bs!1245336 (not (= lambda!278113 lambda!278085))))

(declare-fun bs!1245337 () Bool)

(assert (= bs!1245337 (and d!1721506 d!1721336)))

(assert (=> bs!1245337 (= (= (regOne!30714 r!7292) lt!2189791) (= lambda!278113 lambda!278068))))

(declare-fun bs!1245338 () Bool)

(assert (= bs!1245338 (and d!1721506 b!5377711)))

(assert (=> bs!1245338 (= lambda!278113 lambda!278026)))

(declare-fun bs!1245339 () Bool)

(assert (= bs!1245339 (and d!1721506 b!5377687)))

(assert (=> bs!1245339 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278113 lambda!278031))))

(declare-fun bs!1245340 () Bool)

(assert (= bs!1245340 (and d!1721506 d!1721410)))

(assert (=> bs!1245340 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278113 lambda!278097))))

(declare-fun bs!1245341 () Bool)

(assert (= bs!1245341 (and d!1721506 b!5377701)))

(assert (=> bs!1245341 (= (= (regOne!30714 r!7292) lt!2189791) (= lambda!278113 lambda!278029))))

(declare-fun bs!1245342 () Bool)

(assert (= bs!1245342 (and d!1721506 b!5377943)))

(assert (=> bs!1245342 (not (= lambda!278113 lambda!278054))))

(declare-fun bs!1245343 () Bool)

(assert (= bs!1245343 (and d!1721506 b!5377937)))

(assert (=> bs!1245343 (not (= lambda!278113 lambda!278050))))

(declare-fun bs!1245344 () Bool)

(assert (= bs!1245344 (and d!1721506 d!1721378)))

(assert (=> bs!1245344 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) (Star!15101 (reg!15430 (regOne!30714 r!7292))))) (= lambda!278113 lambda!278090))))

(declare-fun bs!1245345 () Bool)

(assert (= bs!1245345 (and d!1721506 d!1721392)))

(assert (=> bs!1245345 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278113 lambda!278095))))

(assert (=> bs!1245339 (not (= lambda!278113 lambda!278032))))

(assert (=> bs!1245341 (not (= lambda!278113 lambda!278030))))

(declare-fun bs!1245346 () Bool)

(assert (= bs!1245346 (and d!1721506 b!5378089)))

(assert (=> bs!1245346 (not (= lambda!278113 lambda!278080))))

(assert (=> bs!1245337 (not (= lambda!278113 lambda!278069))))

(assert (=> bs!1245344 (not (= lambda!278113 lambda!278092))))

(declare-fun bs!1245347 () Bool)

(assert (= bs!1245347 (and d!1721506 d!1721324)))

(assert (=> bs!1245347 (= (= (regOne!30714 r!7292) lt!2189791) (= lambda!278113 lambda!278062))))

(assert (=> bs!1245339 (not (= lambda!278113 lambda!278033))))

(assert (=> bs!1245338 (not (= lambda!278113 lambda!278027))))

(declare-fun bs!1245348 () Bool)

(assert (= bs!1245348 (and d!1721506 d!1721498)))

(assert (=> bs!1245348 (= lambda!278113 lambda!278112)))

(assert (=> bs!1245345 (not (= lambda!278113 lambda!278096))))

(declare-fun bs!1245351 () Bool)

(assert (= bs!1245351 (and d!1721506 b!5378083)))

(assert (=> bs!1245351 (not (= lambda!278113 lambda!278079))))

(assert (=> d!1721506 true))

(assert (=> d!1721506 true))

(assert (=> d!1721506 true))

(declare-fun lambda!278115 () Int)

(assert (=> bs!1245335 (not (= lambda!278115 lambda!278081))))

(assert (=> bs!1245336 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (regOne!30714 lt!2189791)) (= (regTwo!30714 r!7292) (regTwo!30714 lt!2189791))) (= lambda!278115 lambda!278085))))

(assert (=> bs!1245338 (not (= lambda!278115 lambda!278026))))

(assert (=> bs!1245339 (not (= lambda!278115 lambda!278031))))

(assert (=> bs!1245340 (not (= lambda!278115 lambda!278097))))

(assert (=> bs!1245341 (not (= lambda!278115 lambda!278029))))

(assert (=> bs!1245342 (= (and (= (regOne!30714 r!7292) (regOne!30714 lt!2189802)) (= (regTwo!30714 r!7292) (regTwo!30714 lt!2189802))) (= lambda!278115 lambda!278054))))

(assert (=> bs!1245343 (not (= lambda!278115 lambda!278050))))

(assert (=> bs!1245344 (not (= lambda!278115 lambda!278090))))

(assert (=> bs!1245345 (not (= lambda!278115 lambda!278095))))

(assert (=> bs!1245339 (not (= lambda!278115 lambda!278032))))

(assert (=> bs!1245341 (= (= (regOne!30714 r!7292) lt!2189791) (= lambda!278115 lambda!278030))))

(assert (=> bs!1245346 (= lambda!278115 lambda!278080)))

(assert (=> bs!1245337 (= (= (regOne!30714 r!7292) lt!2189791) (= lambda!278115 lambda!278069))))

(assert (=> bs!1245344 (not (= lambda!278115 lambda!278092))))

(assert (=> bs!1245347 (not (= lambda!278115 lambda!278062))))

(assert (=> bs!1245339 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278115 lambda!278033))))

(assert (=> bs!1245338 (= lambda!278115 lambda!278027)))

(assert (=> bs!1245348 (not (= lambda!278115 lambda!278112))))

(assert (=> bs!1245345 (= (and (= s!2326 (_1!35603 lt!2189812)) (= (regOne!30714 r!7292) (reg!15430 (regOne!30714 r!7292))) (= (regTwo!30714 r!7292) lt!2189791)) (= lambda!278115 lambda!278096))))

(assert (=> bs!1245351 (not (= lambda!278115 lambda!278079))))

(assert (=> bs!1245337 (not (= lambda!278115 lambda!278068))))

(declare-fun bs!1245356 () Bool)

(assert (= bs!1245356 d!1721506))

(assert (=> bs!1245356 (not (= lambda!278115 lambda!278113))))

(assert (=> d!1721506 true))

(assert (=> d!1721506 true))

(assert (=> d!1721506 true))

(assert (=> d!1721506 (= (Exists!2282 lambda!278113) (Exists!2282 lambda!278115))))

(declare-fun lt!2189948 () Unit!153922)

(assert (=> d!1721506 (= lt!2189948 (choose!40412 (regOne!30714 r!7292) (regTwo!30714 r!7292) s!2326))))

(assert (=> d!1721506 (validRegex!6837 (regOne!30714 r!7292))))

(assert (=> d!1721506 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!936 (regOne!30714 r!7292) (regTwo!30714 r!7292) s!2326) lt!2189948)))

(declare-fun m!6404784 () Bool)

(assert (=> bs!1245356 m!6404784))

(declare-fun m!6404786 () Bool)

(assert (=> bs!1245356 m!6404786))

(declare-fun m!6404788 () Bool)

(assert (=> bs!1245356 m!6404788))

(assert (=> bs!1245356 m!6404720))

(assert (=> b!5377711 d!1721506))

(declare-fun d!1721520 () Bool)

(assert (=> d!1721520 (= (isDefined!11915 (findConcatSeparation!1626 (regOne!30714 r!7292) (regTwo!30714 r!7292) Nil!61478 s!2326 s!2326)) (not (isEmpty!33470 (findConcatSeparation!1626 (regOne!30714 r!7292) (regTwo!30714 r!7292) Nil!61478 s!2326 s!2326))))))

(declare-fun bs!1245357 () Bool)

(assert (= bs!1245357 d!1721520))

(assert (=> bs!1245357 m!6404004))

(declare-fun m!6404790 () Bool)

(assert (=> bs!1245357 m!6404790))

(assert (=> b!5377711 d!1721520))

(declare-fun d!1721522 () Bool)

(assert (=> d!1721522 (= (flatMap!828 z!1189 lambda!278028) (dynLambda!24271 lambda!278028 (h!67928 zl!343)))))

(declare-fun lt!2189951 () Unit!153922)

(assert (=> d!1721522 (= lt!2189951 (choose!40420 z!1189 (h!67928 zl!343) lambda!278028))))

(assert (=> d!1721522 (= z!1189 (store ((as const (Array Context!8970 Bool)) false) (h!67928 zl!343) true))))

(assert (=> d!1721522 (= (lemmaFlatMapOnSingletonSet!360 z!1189 (h!67928 zl!343) lambda!278028) lt!2189951)))

(declare-fun b_lambda!206037 () Bool)

(assert (=> (not b_lambda!206037) (not d!1721522)))

(declare-fun bs!1245358 () Bool)

(assert (= bs!1245358 d!1721522))

(assert (=> bs!1245358 m!6404050))

(declare-fun m!6404792 () Bool)

(assert (=> bs!1245358 m!6404792))

(declare-fun m!6404794 () Bool)

(assert (=> bs!1245358 m!6404794))

(declare-fun m!6404796 () Bool)

(assert (=> bs!1245358 m!6404796))

(assert (=> b!5377710 d!1721522))

(declare-fun d!1721524 () Bool)

(assert (=> d!1721524 (= (flatMap!828 z!1189 lambda!278028) (choose!40421 z!1189 lambda!278028))))

(declare-fun bs!1245359 () Bool)

(assert (= bs!1245359 d!1721524))

(declare-fun m!6404798 () Bool)

(assert (=> bs!1245359 m!6404798))

(assert (=> b!5377710 d!1721524))

(declare-fun d!1721526 () Bool)

(assert (=> d!1721526 (= (nullable!5270 (h!67927 (exprs!4985 (h!67928 zl!343)))) (nullableFct!1561 (h!67927 (exprs!4985 (h!67928 zl!343)))))))

(declare-fun bs!1245360 () Bool)

(assert (= bs!1245360 d!1721526))

(declare-fun m!6404800 () Bool)

(assert (=> bs!1245360 m!6404800))

(assert (=> b!5377710 d!1721526))

(declare-fun b!5378435 () Bool)

(declare-fun e!3336689 () (InoxSet Context!8970))

(assert (=> b!5378435 (= e!3336689 ((as const (Array Context!8970 Bool)) false))))

(declare-fun e!3336691 () (InoxSet Context!8970))

(declare-fun b!5378436 () Bool)

(declare-fun call!385167 () (InoxSet Context!8970))

(assert (=> b!5378436 (= e!3336691 ((_ map or) call!385167 (derivationStepZipperUp!473 (Context!8971 (t!374826 (exprs!4985 (Context!8971 (Cons!61479 (h!67927 (exprs!4985 (h!67928 zl!343))) (t!374826 (exprs!4985 (h!67928 zl!343)))))))) (h!67926 s!2326))))))

(declare-fun d!1721528 () Bool)

(declare-fun c!937373 () Bool)

(declare-fun e!3336690 () Bool)

(assert (=> d!1721528 (= c!937373 e!3336690)))

(declare-fun res!2283369 () Bool)

(assert (=> d!1721528 (=> (not res!2283369) (not e!3336690))))

(assert (=> d!1721528 (= res!2283369 ((_ is Cons!61479) (exprs!4985 (Context!8971 (Cons!61479 (h!67927 (exprs!4985 (h!67928 zl!343))) (t!374826 (exprs!4985 (h!67928 zl!343))))))))))

(assert (=> d!1721528 (= (derivationStepZipperUp!473 (Context!8971 (Cons!61479 (h!67927 (exprs!4985 (h!67928 zl!343))) (t!374826 (exprs!4985 (h!67928 zl!343))))) (h!67926 s!2326)) e!3336691)))

(declare-fun b!5378437 () Bool)

(assert (=> b!5378437 (= e!3336691 e!3336689)))

(declare-fun c!937374 () Bool)

(assert (=> b!5378437 (= c!937374 ((_ is Cons!61479) (exprs!4985 (Context!8971 (Cons!61479 (h!67927 (exprs!4985 (h!67928 zl!343))) (t!374826 (exprs!4985 (h!67928 zl!343))))))))))

(declare-fun bm!385162 () Bool)

(assert (=> bm!385162 (= call!385167 (derivationStepZipperDown!549 (h!67927 (exprs!4985 (Context!8971 (Cons!61479 (h!67927 (exprs!4985 (h!67928 zl!343))) (t!374826 (exprs!4985 (h!67928 zl!343))))))) (Context!8971 (t!374826 (exprs!4985 (Context!8971 (Cons!61479 (h!67927 (exprs!4985 (h!67928 zl!343))) (t!374826 (exprs!4985 (h!67928 zl!343)))))))) (h!67926 s!2326)))))

(declare-fun b!5378438 () Bool)

(assert (=> b!5378438 (= e!3336690 (nullable!5270 (h!67927 (exprs!4985 (Context!8971 (Cons!61479 (h!67927 (exprs!4985 (h!67928 zl!343))) (t!374826 (exprs!4985 (h!67928 zl!343)))))))))))

(declare-fun b!5378439 () Bool)

(assert (=> b!5378439 (= e!3336689 call!385167)))

(assert (= (and d!1721528 res!2283369) b!5378438))

(assert (= (and d!1721528 c!937373) b!5378436))

(assert (= (and d!1721528 (not c!937373)) b!5378437))

(assert (= (and b!5378437 c!937374) b!5378439))

(assert (= (and b!5378437 (not c!937374)) b!5378435))

(assert (= (or b!5378436 b!5378439) bm!385162))

(declare-fun m!6404802 () Bool)

(assert (=> b!5378436 m!6404802))

(declare-fun m!6404804 () Bool)

(assert (=> bm!385162 m!6404804))

(declare-fun m!6404806 () Bool)

(assert (=> b!5378438 m!6404806))

(assert (=> b!5377710 d!1721528))

(declare-fun b!5378440 () Bool)

(declare-fun e!3336692 () (InoxSet Context!8970))

(assert (=> b!5378440 (= e!3336692 ((as const (Array Context!8970 Bool)) false))))

(declare-fun e!3336694 () (InoxSet Context!8970))

(declare-fun b!5378441 () Bool)

(declare-fun call!385168 () (InoxSet Context!8970))

(assert (=> b!5378441 (= e!3336694 ((_ map or) call!385168 (derivationStepZipperUp!473 (Context!8971 (t!374826 (exprs!4985 lt!2189785))) (h!67926 s!2326))))))

(declare-fun d!1721530 () Bool)

(declare-fun c!937375 () Bool)

(declare-fun e!3336693 () Bool)

(assert (=> d!1721530 (= c!937375 e!3336693)))

(declare-fun res!2283370 () Bool)

(assert (=> d!1721530 (=> (not res!2283370) (not e!3336693))))

(assert (=> d!1721530 (= res!2283370 ((_ is Cons!61479) (exprs!4985 lt!2189785)))))

(assert (=> d!1721530 (= (derivationStepZipperUp!473 lt!2189785 (h!67926 s!2326)) e!3336694)))

(declare-fun b!5378442 () Bool)

(assert (=> b!5378442 (= e!3336694 e!3336692)))

(declare-fun c!937376 () Bool)

(assert (=> b!5378442 (= c!937376 ((_ is Cons!61479) (exprs!4985 lt!2189785)))))

(declare-fun bm!385163 () Bool)

(assert (=> bm!385163 (= call!385168 (derivationStepZipperDown!549 (h!67927 (exprs!4985 lt!2189785)) (Context!8971 (t!374826 (exprs!4985 lt!2189785))) (h!67926 s!2326)))))

(declare-fun b!5378443 () Bool)

(assert (=> b!5378443 (= e!3336693 (nullable!5270 (h!67927 (exprs!4985 lt!2189785))))))

(declare-fun b!5378444 () Bool)

(assert (=> b!5378444 (= e!3336692 call!385168)))

(assert (= (and d!1721530 res!2283370) b!5378443))

(assert (= (and d!1721530 c!937375) b!5378441))

(assert (= (and d!1721530 (not c!937375)) b!5378442))

(assert (= (and b!5378442 c!937376) b!5378444))

(assert (= (and b!5378442 (not c!937376)) b!5378440))

(assert (= (or b!5378441 b!5378444) bm!385163))

(declare-fun m!6404808 () Bool)

(assert (=> b!5378441 m!6404808))

(declare-fun m!6404810 () Bool)

(assert (=> bm!385163 m!6404810))

(declare-fun m!6404812 () Bool)

(assert (=> b!5378443 m!6404812))

(assert (=> b!5377710 d!1721530))

(declare-fun b!5378446 () Bool)

(declare-fun e!3336695 () (InoxSet Context!8970))

(declare-fun call!385172 () (InoxSet Context!8970))

(assert (=> b!5378446 (= e!3336695 call!385172)))

(declare-fun c!937380 () Bool)

(declare-fun call!385170 () (InoxSet Context!8970))

(declare-fun bm!385164 () Bool)

(declare-fun c!937379 () Bool)

(declare-fun c!937377 () Bool)

(declare-fun call!385169 () List!61603)

(assert (=> bm!385164 (= call!385170 (derivationStepZipperDown!549 (ite c!937377 (regOne!30715 (h!67927 (exprs!4985 (h!67928 zl!343)))) (ite c!937379 (regTwo!30714 (h!67927 (exprs!4985 (h!67928 zl!343)))) (ite c!937380 (regOne!30714 (h!67927 (exprs!4985 (h!67928 zl!343)))) (reg!15430 (h!67927 (exprs!4985 (h!67928 zl!343))))))) (ite (or c!937377 c!937379) lt!2189785 (Context!8971 call!385169)) (h!67926 s!2326)))))

(declare-fun b!5378447 () Bool)

(declare-fun e!3336699 () (InoxSet Context!8970))

(assert (=> b!5378447 (= e!3336699 ((as const (Array Context!8970 Bool)) false))))

(declare-fun b!5378448 () Bool)

(declare-fun e!3336697 () (InoxSet Context!8970))

(assert (=> b!5378448 (= e!3336697 (store ((as const (Array Context!8970 Bool)) false) lt!2189785 true))))

(declare-fun bm!385165 () Bool)

(declare-fun call!385174 () (InoxSet Context!8970))

(declare-fun call!385171 () List!61603)

(assert (=> bm!385165 (= call!385174 (derivationStepZipperDown!549 (ite c!937377 (regTwo!30715 (h!67927 (exprs!4985 (h!67928 zl!343)))) (regOne!30714 (h!67927 (exprs!4985 (h!67928 zl!343))))) (ite c!937377 lt!2189785 (Context!8971 call!385171)) (h!67926 s!2326)))))

(declare-fun b!5378449 () Bool)

(declare-fun e!3336698 () Bool)

(assert (=> b!5378449 (= e!3336698 (nullable!5270 (regOne!30714 (h!67927 (exprs!4985 (h!67928 zl!343))))))))

(declare-fun bm!385166 () Bool)

(declare-fun call!385173 () (InoxSet Context!8970))

(assert (=> bm!385166 (= call!385172 call!385173)))

(declare-fun b!5378450 () Bool)

(declare-fun c!937378 () Bool)

(assert (=> b!5378450 (= c!937378 ((_ is Star!15101) (h!67927 (exprs!4985 (h!67928 zl!343)))))))

(assert (=> b!5378450 (= e!3336695 e!3336699)))

(declare-fun b!5378451 () Bool)

(declare-fun e!3336700 () (InoxSet Context!8970))

(assert (=> b!5378451 (= e!3336697 e!3336700)))

(assert (=> b!5378451 (= c!937377 ((_ is Union!15101) (h!67927 (exprs!4985 (h!67928 zl!343)))))))

(declare-fun b!5378452 () Bool)

(assert (=> b!5378452 (= e!3336700 ((_ map or) call!385170 call!385174))))

(declare-fun b!5378453 () Bool)

(declare-fun e!3336696 () (InoxSet Context!8970))

(assert (=> b!5378453 (= e!3336696 e!3336695)))

(assert (=> b!5378453 (= c!937380 ((_ is Concat!23946) (h!67927 (exprs!4985 (h!67928 zl!343)))))))

(declare-fun b!5378445 () Bool)

(assert (=> b!5378445 (= c!937379 e!3336698)))

(declare-fun res!2283371 () Bool)

(assert (=> b!5378445 (=> (not res!2283371) (not e!3336698))))

(assert (=> b!5378445 (= res!2283371 ((_ is Concat!23946) (h!67927 (exprs!4985 (h!67928 zl!343)))))))

(assert (=> b!5378445 (= e!3336700 e!3336696)))

(declare-fun d!1721532 () Bool)

(declare-fun c!937381 () Bool)

(assert (=> d!1721532 (= c!937381 (and ((_ is ElementMatch!15101) (h!67927 (exprs!4985 (h!67928 zl!343)))) (= (c!937169 (h!67927 (exprs!4985 (h!67928 zl!343)))) (h!67926 s!2326))))))

(assert (=> d!1721532 (= (derivationStepZipperDown!549 (h!67927 (exprs!4985 (h!67928 zl!343))) lt!2189785 (h!67926 s!2326)) e!3336697)))

(declare-fun b!5378454 () Bool)

(assert (=> b!5378454 (= e!3336696 ((_ map or) call!385174 call!385173))))

(declare-fun bm!385167 () Bool)

(assert (=> bm!385167 (= call!385169 call!385171)))

(declare-fun bm!385168 () Bool)

(assert (=> bm!385168 (= call!385173 call!385170)))

(declare-fun b!5378455 () Bool)

(assert (=> b!5378455 (= e!3336699 call!385172)))

(declare-fun bm!385169 () Bool)

(assert (=> bm!385169 (= call!385171 ($colon$colon!1460 (exprs!4985 lt!2189785) (ite (or c!937379 c!937380) (regTwo!30714 (h!67927 (exprs!4985 (h!67928 zl!343)))) (h!67927 (exprs!4985 (h!67928 zl!343))))))))

(assert (= (and d!1721532 c!937381) b!5378448))

(assert (= (and d!1721532 (not c!937381)) b!5378451))

(assert (= (and b!5378451 c!937377) b!5378452))

(assert (= (and b!5378451 (not c!937377)) b!5378445))

(assert (= (and b!5378445 res!2283371) b!5378449))

(assert (= (and b!5378445 c!937379) b!5378454))

(assert (= (and b!5378445 (not c!937379)) b!5378453))

(assert (= (and b!5378453 c!937380) b!5378446))

(assert (= (and b!5378453 (not c!937380)) b!5378450))

(assert (= (and b!5378450 c!937378) b!5378455))

(assert (= (and b!5378450 (not c!937378)) b!5378447))

(assert (= (or b!5378446 b!5378455) bm!385167))

(assert (= (or b!5378446 b!5378455) bm!385166))

(assert (= (or b!5378454 bm!385167) bm!385169))

(assert (= (or b!5378454 bm!385166) bm!385168))

(assert (= (or b!5378452 b!5378454) bm!385165))

(assert (= (or b!5378452 bm!385168) bm!385164))

(declare-fun m!6404814 () Bool)

(assert (=> bm!385169 m!6404814))

(declare-fun m!6404816 () Bool)

(assert (=> bm!385165 m!6404816))

(declare-fun m!6404818 () Bool)

(assert (=> b!5378448 m!6404818))

(declare-fun m!6404820 () Bool)

(assert (=> bm!385164 m!6404820))

(declare-fun m!6404822 () Bool)

(assert (=> b!5378449 m!6404822))

(assert (=> b!5377710 d!1721532))

(declare-fun b!5378456 () Bool)

(declare-fun e!3336701 () (InoxSet Context!8970))

(assert (=> b!5378456 (= e!3336701 ((as const (Array Context!8970 Bool)) false))))

(declare-fun call!385175 () (InoxSet Context!8970))

(declare-fun b!5378457 () Bool)

(declare-fun e!3336703 () (InoxSet Context!8970))

(assert (=> b!5378457 (= e!3336703 ((_ map or) call!385175 (derivationStepZipperUp!473 (Context!8971 (t!374826 (exprs!4985 (h!67928 zl!343)))) (h!67926 s!2326))))))

(declare-fun d!1721534 () Bool)

(declare-fun c!937382 () Bool)

(declare-fun e!3336702 () Bool)

(assert (=> d!1721534 (= c!937382 e!3336702)))

(declare-fun res!2283372 () Bool)

(assert (=> d!1721534 (=> (not res!2283372) (not e!3336702))))

(assert (=> d!1721534 (= res!2283372 ((_ is Cons!61479) (exprs!4985 (h!67928 zl!343))))))

(assert (=> d!1721534 (= (derivationStepZipperUp!473 (h!67928 zl!343) (h!67926 s!2326)) e!3336703)))

(declare-fun b!5378458 () Bool)

(assert (=> b!5378458 (= e!3336703 e!3336701)))

(declare-fun c!937383 () Bool)

(assert (=> b!5378458 (= c!937383 ((_ is Cons!61479) (exprs!4985 (h!67928 zl!343))))))

(declare-fun bm!385170 () Bool)

(assert (=> bm!385170 (= call!385175 (derivationStepZipperDown!549 (h!67927 (exprs!4985 (h!67928 zl!343))) (Context!8971 (t!374826 (exprs!4985 (h!67928 zl!343)))) (h!67926 s!2326)))))

(declare-fun b!5378459 () Bool)

(assert (=> b!5378459 (= e!3336702 (nullable!5270 (h!67927 (exprs!4985 (h!67928 zl!343)))))))

(declare-fun b!5378460 () Bool)

(assert (=> b!5378460 (= e!3336701 call!385175)))

(assert (= (and d!1721534 res!2283372) b!5378459))

(assert (= (and d!1721534 c!937382) b!5378457))

(assert (= (and d!1721534 (not c!937382)) b!5378458))

(assert (= (and b!5378458 c!937383) b!5378460))

(assert (= (and b!5378458 (not c!937383)) b!5378456))

(assert (= (or b!5378457 b!5378460) bm!385170))

(declare-fun m!6404824 () Bool)

(assert (=> b!5378457 m!6404824))

(declare-fun m!6404826 () Bool)

(assert (=> bm!385170 m!6404826))

(assert (=> b!5378459 m!6404058))

(assert (=> b!5377710 d!1721534))

(declare-fun b!5378544 () Bool)

(declare-fun e!3336749 () Bool)

(declare-fun e!3336750 () Bool)

(assert (=> b!5378544 (= e!3336749 e!3336750)))

(declare-fun res!2283391 () Bool)

(assert (=> b!5378544 (=> (not res!2283391) (not e!3336750))))

(declare-fun call!385189 () Bool)

(assert (=> b!5378544 (= res!2283391 call!385189)))

(declare-fun b!5378545 () Bool)

(declare-fun res!2283394 () Bool)

(declare-fun e!3336748 () Bool)

(assert (=> b!5378545 (=> (not res!2283394) (not e!3336748))))

(assert (=> b!5378545 (= res!2283394 call!385189)))

(declare-fun e!3336754 () Bool)

(assert (=> b!5378545 (= e!3336754 e!3336748)))

(declare-fun d!1721536 () Bool)

(declare-fun res!2283390 () Bool)

(declare-fun e!3336752 () Bool)

(assert (=> d!1721536 (=> res!2283390 e!3336752)))

(assert (=> d!1721536 (= res!2283390 ((_ is ElementMatch!15101) r!7292))))

(assert (=> d!1721536 (= (validRegex!6837 r!7292) e!3336752)))

(declare-fun b!5378546 () Bool)

(declare-fun e!3336753 () Bool)

(declare-fun e!3336751 () Bool)

(assert (=> b!5378546 (= e!3336753 e!3336751)))

(declare-fun res!2283393 () Bool)

(assert (=> b!5378546 (= res!2283393 (not (nullable!5270 (reg!15430 r!7292))))))

(assert (=> b!5378546 (=> (not res!2283393) (not e!3336751))))

(declare-fun b!5378547 () Bool)

(assert (=> b!5378547 (= e!3336752 e!3336753)))

(declare-fun c!937394 () Bool)

(assert (=> b!5378547 (= c!937394 ((_ is Star!15101) r!7292))))

(declare-fun b!5378548 () Bool)

(declare-fun call!385188 () Bool)

(assert (=> b!5378548 (= e!3336751 call!385188)))

(declare-fun bm!385182 () Bool)

(declare-fun c!937395 () Bool)

(assert (=> bm!385182 (= call!385188 (validRegex!6837 (ite c!937394 (reg!15430 r!7292) (ite c!937395 (regTwo!30715 r!7292) (regTwo!30714 r!7292)))))))

(declare-fun bm!385183 () Bool)

(declare-fun call!385187 () Bool)

(assert (=> bm!385183 (= call!385187 call!385188)))

(declare-fun b!5378549 () Bool)

(declare-fun res!2283392 () Bool)

(assert (=> b!5378549 (=> res!2283392 e!3336749)))

(assert (=> b!5378549 (= res!2283392 (not ((_ is Concat!23946) r!7292)))))

(assert (=> b!5378549 (= e!3336754 e!3336749)))

(declare-fun b!5378550 () Bool)

(assert (=> b!5378550 (= e!3336750 call!385187)))

(declare-fun b!5378551 () Bool)

(assert (=> b!5378551 (= e!3336753 e!3336754)))

(assert (=> b!5378551 (= c!937395 ((_ is Union!15101) r!7292))))

(declare-fun bm!385184 () Bool)

(assert (=> bm!385184 (= call!385189 (validRegex!6837 (ite c!937395 (regOne!30715 r!7292) (regOne!30714 r!7292))))))

(declare-fun b!5378552 () Bool)

(assert (=> b!5378552 (= e!3336748 call!385187)))

(assert (= (and d!1721536 (not res!2283390)) b!5378547))

(assert (= (and b!5378547 c!937394) b!5378546))

(assert (= (and b!5378547 (not c!937394)) b!5378551))

(assert (= (and b!5378546 res!2283393) b!5378548))

(assert (= (and b!5378551 c!937395) b!5378545))

(assert (= (and b!5378551 (not c!937395)) b!5378549))

(assert (= (and b!5378545 res!2283394) b!5378552))

(assert (= (and b!5378549 (not res!2283392)) b!5378544))

(assert (= (and b!5378544 res!2283391) b!5378550))

(assert (= (or b!5378552 b!5378550) bm!385183))

(assert (= (or b!5378545 b!5378544) bm!385184))

(assert (= (or b!5378548 bm!385183) bm!385182))

(declare-fun m!6404866 () Bool)

(assert (=> b!5378546 m!6404866))

(declare-fun m!6404868 () Bool)

(assert (=> bm!385182 m!6404868))

(declare-fun m!6404870 () Bool)

(assert (=> bm!385184 m!6404870))

(assert (=> start!565614 d!1721536))

(declare-fun d!1721552 () Bool)

(assert (=> d!1721552 (= (isEmpty!33468 (_1!35603 lt!2189812)) ((_ is Nil!61478) (_1!35603 lt!2189812)))))

(assert (=> b!5377718 d!1721552))

(declare-fun bs!1245370 () Bool)

(declare-fun d!1721554 () Bool)

(assert (= bs!1245370 (and d!1721554 d!1721352)))

(declare-fun lambda!278118 () Int)

(assert (=> bs!1245370 (= lambda!278118 lambda!278078)))

(declare-fun bs!1245371 () Bool)

(assert (= bs!1245371 (and d!1721554 d!1721482)))

(assert (=> bs!1245371 (= lambda!278118 lambda!278110)))

(declare-fun b!5378581 () Bool)

(declare-fun e!3336774 () Regex!15101)

(assert (=> b!5378581 (= e!3336774 (Union!15101 (h!67927 (unfocusZipperList!543 zl!343)) (generalisedUnion!1030 (t!374826 (unfocusZipperList!543 zl!343)))))))

(declare-fun b!5378582 () Bool)

(declare-fun e!3336773 () Bool)

(declare-fun lt!2189957 () Regex!15101)

(declare-fun isUnion!385 (Regex!15101) Bool)

(assert (=> b!5378582 (= e!3336773 (isUnion!385 lt!2189957))))

(declare-fun b!5378583 () Bool)

(declare-fun e!3336777 () Bool)

(declare-fun e!3336778 () Bool)

(assert (=> b!5378583 (= e!3336777 e!3336778)))

(declare-fun c!937407 () Bool)

(assert (=> b!5378583 (= c!937407 (isEmpty!33467 (unfocusZipperList!543 zl!343)))))

(declare-fun b!5378584 () Bool)

(declare-fun e!3336775 () Regex!15101)

(assert (=> b!5378584 (= e!3336775 e!3336774)))

(declare-fun c!937405 () Bool)

(assert (=> b!5378584 (= c!937405 ((_ is Cons!61479) (unfocusZipperList!543 zl!343)))))

(assert (=> d!1721554 e!3336777))

(declare-fun res!2283399 () Bool)

(assert (=> d!1721554 (=> (not res!2283399) (not e!3336777))))

(assert (=> d!1721554 (= res!2283399 (validRegex!6837 lt!2189957))))

(assert (=> d!1721554 (= lt!2189957 e!3336775)))

(declare-fun c!937406 () Bool)

(declare-fun e!3336776 () Bool)

(assert (=> d!1721554 (= c!937406 e!3336776)))

(declare-fun res!2283400 () Bool)

(assert (=> d!1721554 (=> (not res!2283400) (not e!3336776))))

(assert (=> d!1721554 (= res!2283400 ((_ is Cons!61479) (unfocusZipperList!543 zl!343)))))

(assert (=> d!1721554 (forall!14503 (unfocusZipperList!543 zl!343) lambda!278118)))

(assert (=> d!1721554 (= (generalisedUnion!1030 (unfocusZipperList!543 zl!343)) lt!2189957)))

(declare-fun b!5378585 () Bool)

(assert (=> b!5378585 (= e!3336775 (h!67927 (unfocusZipperList!543 zl!343)))))

(declare-fun b!5378586 () Bool)

(assert (=> b!5378586 (= e!3336776 (isEmpty!33467 (t!374826 (unfocusZipperList!543 zl!343))))))

(declare-fun b!5378587 () Bool)

(declare-fun head!11539 (List!61603) Regex!15101)

(assert (=> b!5378587 (= e!3336773 (= lt!2189957 (head!11539 (unfocusZipperList!543 zl!343))))))

(declare-fun b!5378588 () Bool)

(assert (=> b!5378588 (= e!3336774 EmptyLang!15101)))

(declare-fun b!5378589 () Bool)

(declare-fun isEmptyLang!953 (Regex!15101) Bool)

(assert (=> b!5378589 (= e!3336778 (isEmptyLang!953 lt!2189957))))

(declare-fun b!5378590 () Bool)

(assert (=> b!5378590 (= e!3336778 e!3336773)))

(declare-fun c!937404 () Bool)

(declare-fun tail!10636 (List!61603) List!61603)

(assert (=> b!5378590 (= c!937404 (isEmpty!33467 (tail!10636 (unfocusZipperList!543 zl!343))))))

(assert (= (and d!1721554 res!2283400) b!5378586))

(assert (= (and d!1721554 c!937406) b!5378585))

(assert (= (and d!1721554 (not c!937406)) b!5378584))

(assert (= (and b!5378584 c!937405) b!5378581))

(assert (= (and b!5378584 (not c!937405)) b!5378588))

(assert (= (and d!1721554 res!2283399) b!5378583))

(assert (= (and b!5378583 c!937407) b!5378589))

(assert (= (and b!5378583 (not c!937407)) b!5378590))

(assert (= (and b!5378590 c!937404) b!5378587))

(assert (= (and b!5378590 (not c!937404)) b!5378582))

(declare-fun m!6404874 () Bool)

(assert (=> b!5378589 m!6404874))

(declare-fun m!6404876 () Bool)

(assert (=> b!5378582 m!6404876))

(assert (=> b!5378590 m!6404044))

(declare-fun m!6404878 () Bool)

(assert (=> b!5378590 m!6404878))

(assert (=> b!5378590 m!6404878))

(declare-fun m!6404880 () Bool)

(assert (=> b!5378590 m!6404880))

(declare-fun m!6404882 () Bool)

(assert (=> d!1721554 m!6404882))

(assert (=> d!1721554 m!6404044))

(declare-fun m!6404884 () Bool)

(assert (=> d!1721554 m!6404884))

(declare-fun m!6404886 () Bool)

(assert (=> b!5378586 m!6404886))

(assert (=> b!5378587 m!6404044))

(declare-fun m!6404888 () Bool)

(assert (=> b!5378587 m!6404888))

(declare-fun m!6404890 () Bool)

(assert (=> b!5378581 m!6404890))

(assert (=> b!5378583 m!6404044))

(declare-fun m!6404892 () Bool)

(assert (=> b!5378583 m!6404892))

(assert (=> b!5377697 d!1721554))

(declare-fun bs!1245372 () Bool)

(declare-fun d!1721564 () Bool)

(assert (= bs!1245372 (and d!1721564 d!1721352)))

(declare-fun lambda!278121 () Int)

(assert (=> bs!1245372 (= lambda!278121 lambda!278078)))

(declare-fun bs!1245373 () Bool)

(assert (= bs!1245373 (and d!1721564 d!1721482)))

(assert (=> bs!1245373 (= lambda!278121 lambda!278110)))

(declare-fun bs!1245374 () Bool)

(assert (= bs!1245374 (and d!1721564 d!1721554)))

(assert (=> bs!1245374 (= lambda!278121 lambda!278118)))

(declare-fun lt!2189960 () List!61603)

(assert (=> d!1721564 (forall!14503 lt!2189960 lambda!278121)))

(declare-fun e!3336781 () List!61603)

(assert (=> d!1721564 (= lt!2189960 e!3336781)))

(declare-fun c!937410 () Bool)

(assert (=> d!1721564 (= c!937410 ((_ is Cons!61480) zl!343))))

(assert (=> d!1721564 (= (unfocusZipperList!543 zl!343) lt!2189960)))

(declare-fun b!5378595 () Bool)

(assert (=> b!5378595 (= e!3336781 (Cons!61479 (generalisedConcat!770 (exprs!4985 (h!67928 zl!343))) (unfocusZipperList!543 (t!374827 zl!343))))))

(declare-fun b!5378596 () Bool)

(assert (=> b!5378596 (= e!3336781 Nil!61479)))

(assert (= (and d!1721564 c!937410) b!5378595))

(assert (= (and d!1721564 (not c!937410)) b!5378596))

(declare-fun m!6404894 () Bool)

(assert (=> d!1721564 m!6404894))

(assert (=> b!5378595 m!6403992))

(declare-fun m!6404896 () Bool)

(assert (=> b!5378595 m!6404896))

(assert (=> b!5377697 d!1721564))

(declare-fun d!1721566 () Bool)

(assert (=> d!1721566 (= (flatMap!828 lt!2189794 lambda!278028) (choose!40421 lt!2189794 lambda!278028))))

(declare-fun bs!1245375 () Bool)

(assert (= bs!1245375 d!1721566))

(declare-fun m!6404898 () Bool)

(assert (=> bs!1245375 m!6404898))

(assert (=> b!5377696 d!1721566))

(declare-fun b!5378597 () Bool)

(declare-fun e!3336782 () (InoxSet Context!8970))

(assert (=> b!5378597 (= e!3336782 ((as const (Array Context!8970 Bool)) false))))

(declare-fun call!385190 () (InoxSet Context!8970))

(declare-fun e!3336784 () (InoxSet Context!8970))

(declare-fun b!5378598 () Bool)

(assert (=> b!5378598 (= e!3336784 ((_ map or) call!385190 (derivationStepZipperUp!473 (Context!8971 (t!374826 (exprs!4985 lt!2189823))) (h!67926 s!2326))))))

(declare-fun d!1721568 () Bool)

(declare-fun c!937411 () Bool)

(declare-fun e!3336783 () Bool)

(assert (=> d!1721568 (= c!937411 e!3336783)))

(declare-fun res!2283401 () Bool)

(assert (=> d!1721568 (=> (not res!2283401) (not e!3336783))))

(assert (=> d!1721568 (= res!2283401 ((_ is Cons!61479) (exprs!4985 lt!2189823)))))

(assert (=> d!1721568 (= (derivationStepZipperUp!473 lt!2189823 (h!67926 s!2326)) e!3336784)))

(declare-fun b!5378599 () Bool)

(assert (=> b!5378599 (= e!3336784 e!3336782)))

(declare-fun c!937412 () Bool)

(assert (=> b!5378599 (= c!937412 ((_ is Cons!61479) (exprs!4985 lt!2189823)))))

(declare-fun bm!385185 () Bool)

(assert (=> bm!385185 (= call!385190 (derivationStepZipperDown!549 (h!67927 (exprs!4985 lt!2189823)) (Context!8971 (t!374826 (exprs!4985 lt!2189823))) (h!67926 s!2326)))))

(declare-fun b!5378600 () Bool)

(assert (=> b!5378600 (= e!3336783 (nullable!5270 (h!67927 (exprs!4985 lt!2189823))))))

(declare-fun b!5378601 () Bool)

(assert (=> b!5378601 (= e!3336782 call!385190)))

(assert (= (and d!1721568 res!2283401) b!5378600))

(assert (= (and d!1721568 c!937411) b!5378598))

(assert (= (and d!1721568 (not c!937411)) b!5378599))

(assert (= (and b!5378599 c!937412) b!5378601))

(assert (= (and b!5378599 (not c!937412)) b!5378597))

(assert (= (or b!5378598 b!5378601) bm!385185))

(declare-fun m!6404900 () Bool)

(assert (=> b!5378598 m!6404900))

(declare-fun m!6404902 () Bool)

(assert (=> bm!385185 m!6404902))

(declare-fun m!6404904 () Bool)

(assert (=> b!5378600 m!6404904))

(assert (=> b!5377696 d!1721568))

(declare-fun d!1721570 () Bool)

(assert (=> d!1721570 (= (flatMap!828 lt!2189794 lambda!278028) (dynLambda!24271 lambda!278028 lt!2189823))))

(declare-fun lt!2189961 () Unit!153922)

(assert (=> d!1721570 (= lt!2189961 (choose!40420 lt!2189794 lt!2189823 lambda!278028))))

(assert (=> d!1721570 (= lt!2189794 (store ((as const (Array Context!8970 Bool)) false) lt!2189823 true))))

(assert (=> d!1721570 (= (lemmaFlatMapOnSingletonSet!360 lt!2189794 lt!2189823 lambda!278028) lt!2189961)))

(declare-fun b_lambda!206051 () Bool)

(assert (=> (not b_lambda!206051) (not d!1721570)))

(declare-fun bs!1245376 () Bool)

(assert (= bs!1245376 d!1721570))

(assert (=> bs!1245376 m!6404064))

(declare-fun m!6404906 () Bool)

(assert (=> bs!1245376 m!6404906))

(declare-fun m!6404908 () Bool)

(assert (=> bs!1245376 m!6404908))

(assert (=> bs!1245376 m!6404062))

(assert (=> b!5377696 d!1721570))

(declare-fun bs!1245377 () Bool)

(declare-fun d!1721572 () Bool)

(assert (= bs!1245377 (and d!1721572 b!5377710)))

(declare-fun lambda!278124 () Int)

(assert (=> bs!1245377 (= lambda!278124 lambda!278028)))

(assert (=> d!1721572 true))

(assert (=> d!1721572 (= (derivationStepZipper!1340 lt!2189794 (h!67926 s!2326)) (flatMap!828 lt!2189794 lambda!278124))))

(declare-fun bs!1245378 () Bool)

(assert (= bs!1245378 d!1721572))

(declare-fun m!6404910 () Bool)

(assert (=> bs!1245378 m!6404910))

(assert (=> b!5377696 d!1721572))

(declare-fun d!1721574 () Bool)

(declare-fun c!937415 () Bool)

(assert (=> d!1721574 (= c!937415 (isEmpty!33468 (t!374825 s!2326)))))

(declare-fun e!3336785 () Bool)

(assert (=> d!1721574 (= (matchZipper!1345 lt!2189820 (t!374825 s!2326)) e!3336785)))

(declare-fun b!5378604 () Bool)

(assert (=> b!5378604 (= e!3336785 (nullableZipper!1410 lt!2189820))))

(declare-fun b!5378605 () Bool)

(assert (=> b!5378605 (= e!3336785 (matchZipper!1345 (derivationStepZipper!1340 lt!2189820 (head!11537 (t!374825 s!2326))) (tail!10634 (t!374825 s!2326))))))

(assert (= (and d!1721574 c!937415) b!5378604))

(assert (= (and d!1721574 (not c!937415)) b!5378605))

(assert (=> d!1721574 m!6404648))

(declare-fun m!6404912 () Bool)

(assert (=> b!5378604 m!6404912))

(assert (=> b!5378605 m!6404652))

(assert (=> b!5378605 m!6404652))

(declare-fun m!6404914 () Bool)

(assert (=> b!5378605 m!6404914))

(assert (=> b!5378605 m!6404656))

(assert (=> b!5378605 m!6404914))

(assert (=> b!5378605 m!6404656))

(declare-fun m!6404916 () Bool)

(assert (=> b!5378605 m!6404916))

(assert (=> b!5377694 d!1721574))

(declare-fun bs!1245379 () Bool)

(declare-fun d!1721576 () Bool)

(assert (= bs!1245379 (and d!1721576 d!1721352)))

(declare-fun lambda!278127 () Int)

(assert (=> bs!1245379 (= lambda!278127 lambda!278078)))

(declare-fun bs!1245380 () Bool)

(assert (= bs!1245380 (and d!1721576 d!1721482)))

(assert (=> bs!1245380 (= lambda!278127 lambda!278110)))

(declare-fun bs!1245381 () Bool)

(assert (= bs!1245381 (and d!1721576 d!1721554)))

(assert (=> bs!1245381 (= lambda!278127 lambda!278118)))

(declare-fun bs!1245382 () Bool)

(assert (= bs!1245382 (and d!1721576 d!1721564)))

(assert (=> bs!1245382 (= lambda!278127 lambda!278121)))

(declare-fun b!5378626 () Bool)

(declare-fun e!3336801 () Bool)

(declare-fun lt!2189964 () Regex!15101)

(assert (=> b!5378626 (= e!3336801 (= lt!2189964 (head!11539 (exprs!4985 (h!67928 zl!343)))))))

(declare-fun b!5378627 () Bool)

(declare-fun e!3336798 () Bool)

(declare-fun isEmptyExpr!944 (Regex!15101) Bool)

(assert (=> b!5378627 (= e!3336798 (isEmptyExpr!944 lt!2189964))))

(declare-fun b!5378628 () Bool)

(declare-fun e!3336800 () Regex!15101)

(assert (=> b!5378628 (= e!3336800 EmptyExpr!15101)))

(declare-fun b!5378629 () Bool)

(assert (=> b!5378629 (= e!3336800 (Concat!23946 (h!67927 (exprs!4985 (h!67928 zl!343))) (generalisedConcat!770 (t!374826 (exprs!4985 (h!67928 zl!343))))))))

(declare-fun b!5378630 () Bool)

(assert (=> b!5378630 (= e!3336798 e!3336801)))

(declare-fun c!937424 () Bool)

(assert (=> b!5378630 (= c!937424 (isEmpty!33467 (tail!10636 (exprs!4985 (h!67928 zl!343)))))))

(declare-fun b!5378631 () Bool)

(declare-fun e!3336802 () Bool)

(assert (=> b!5378631 (= e!3336802 e!3336798)))

(declare-fun c!937425 () Bool)

(assert (=> b!5378631 (= c!937425 (isEmpty!33467 (exprs!4985 (h!67928 zl!343))))))

(assert (=> d!1721576 e!3336802))

(declare-fun res!2283407 () Bool)

(assert (=> d!1721576 (=> (not res!2283407) (not e!3336802))))

(assert (=> d!1721576 (= res!2283407 (validRegex!6837 lt!2189964))))

(declare-fun e!3336799 () Regex!15101)

(assert (=> d!1721576 (= lt!2189964 e!3336799)))

(declare-fun c!937426 () Bool)

(declare-fun e!3336803 () Bool)

(assert (=> d!1721576 (= c!937426 e!3336803)))

(declare-fun res!2283406 () Bool)

(assert (=> d!1721576 (=> (not res!2283406) (not e!3336803))))

(assert (=> d!1721576 (= res!2283406 ((_ is Cons!61479) (exprs!4985 (h!67928 zl!343))))))

(assert (=> d!1721576 (forall!14503 (exprs!4985 (h!67928 zl!343)) lambda!278127)))

(assert (=> d!1721576 (= (generalisedConcat!770 (exprs!4985 (h!67928 zl!343))) lt!2189964)))

(declare-fun b!5378632 () Bool)

(assert (=> b!5378632 (= e!3336799 e!3336800)))

(declare-fun c!937427 () Bool)

(assert (=> b!5378632 (= c!937427 ((_ is Cons!61479) (exprs!4985 (h!67928 zl!343))))))

(declare-fun b!5378633 () Bool)

(declare-fun isConcat!467 (Regex!15101) Bool)

(assert (=> b!5378633 (= e!3336801 (isConcat!467 lt!2189964))))

(declare-fun b!5378634 () Bool)

(assert (=> b!5378634 (= e!3336803 (isEmpty!33467 (t!374826 (exprs!4985 (h!67928 zl!343)))))))

(declare-fun b!5378635 () Bool)

(assert (=> b!5378635 (= e!3336799 (h!67927 (exprs!4985 (h!67928 zl!343))))))

(assert (= (and d!1721576 res!2283406) b!5378634))

(assert (= (and d!1721576 c!937426) b!5378635))

(assert (= (and d!1721576 (not c!937426)) b!5378632))

(assert (= (and b!5378632 c!937427) b!5378629))

(assert (= (and b!5378632 (not c!937427)) b!5378628))

(assert (= (and d!1721576 res!2283407) b!5378631))

(assert (= (and b!5378631 c!937425) b!5378627))

(assert (= (and b!5378631 (not c!937425)) b!5378630))

(assert (= (and b!5378630 c!937424) b!5378626))

(assert (= (and b!5378630 (not c!937424)) b!5378633))

(declare-fun m!6404918 () Bool)

(assert (=> d!1721576 m!6404918))

(declare-fun m!6404920 () Bool)

(assert (=> d!1721576 m!6404920))

(declare-fun m!6404922 () Bool)

(assert (=> b!5378626 m!6404922))

(declare-fun m!6404924 () Bool)

(assert (=> b!5378633 m!6404924))

(declare-fun m!6404926 () Bool)

(assert (=> b!5378629 m!6404926))

(assert (=> b!5378634 m!6404112))

(declare-fun m!6404928 () Bool)

(assert (=> b!5378630 m!6404928))

(assert (=> b!5378630 m!6404928))

(declare-fun m!6404930 () Bool)

(assert (=> b!5378630 m!6404930))

(declare-fun m!6404932 () Bool)

(assert (=> b!5378631 m!6404932))

(declare-fun m!6404934 () Bool)

(assert (=> b!5378627 m!6404934))

(assert (=> b!5377715 d!1721576))

(declare-fun b!5378640 () Bool)

(declare-fun e!3336806 () Bool)

(declare-fun tp!1491042 () Bool)

(assert (=> b!5378640 (= e!3336806 (and tp_is_empty!39455 tp!1491042))))

(assert (=> b!5377698 (= tp!1490980 e!3336806)))

(assert (= (and b!5377698 ((_ is Cons!61478) (t!374825 s!2326))) b!5378640))

(declare-fun b!5378645 () Bool)

(declare-fun e!3336809 () Bool)

(declare-fun tp!1491047 () Bool)

(declare-fun tp!1491048 () Bool)

(assert (=> b!5378645 (= e!3336809 (and tp!1491047 tp!1491048))))

(assert (=> b!5377683 (= tp!1490973 e!3336809)))

(assert (= (and b!5377683 ((_ is Cons!61479) (exprs!4985 (h!67928 zl!343)))) b!5378645))

(declare-fun b!5378658 () Bool)

(declare-fun e!3336812 () Bool)

(declare-fun tp!1491060 () Bool)

(assert (=> b!5378658 (= e!3336812 tp!1491060)))

(declare-fun b!5378657 () Bool)

(declare-fun tp!1491061 () Bool)

(declare-fun tp!1491059 () Bool)

(assert (=> b!5378657 (= e!3336812 (and tp!1491061 tp!1491059))))

(declare-fun b!5378659 () Bool)

(declare-fun tp!1491063 () Bool)

(declare-fun tp!1491062 () Bool)

(assert (=> b!5378659 (= e!3336812 (and tp!1491063 tp!1491062))))

(assert (=> b!5377703 (= tp!1490977 e!3336812)))

(declare-fun b!5378656 () Bool)

(assert (=> b!5378656 (= e!3336812 tp_is_empty!39455)))

(assert (= (and b!5377703 ((_ is ElementMatch!15101) (reg!15430 r!7292))) b!5378656))

(assert (= (and b!5377703 ((_ is Concat!23946) (reg!15430 r!7292))) b!5378657))

(assert (= (and b!5377703 ((_ is Star!15101) (reg!15430 r!7292))) b!5378658))

(assert (= (and b!5377703 ((_ is Union!15101) (reg!15430 r!7292))) b!5378659))

(declare-fun b!5378662 () Bool)

(declare-fun e!3336813 () Bool)

(declare-fun tp!1491065 () Bool)

(assert (=> b!5378662 (= e!3336813 tp!1491065)))

(declare-fun b!5378661 () Bool)

(declare-fun tp!1491066 () Bool)

(declare-fun tp!1491064 () Bool)

(assert (=> b!5378661 (= e!3336813 (and tp!1491066 tp!1491064))))

(declare-fun b!5378663 () Bool)

(declare-fun tp!1491068 () Bool)

(declare-fun tp!1491067 () Bool)

(assert (=> b!5378663 (= e!3336813 (and tp!1491068 tp!1491067))))

(assert (=> b!5377717 (= tp!1490972 e!3336813)))

(declare-fun b!5378660 () Bool)

(assert (=> b!5378660 (= e!3336813 tp_is_empty!39455)))

(assert (= (and b!5377717 ((_ is ElementMatch!15101) (regOne!30715 r!7292))) b!5378660))

(assert (= (and b!5377717 ((_ is Concat!23946) (regOne!30715 r!7292))) b!5378661))

(assert (= (and b!5377717 ((_ is Star!15101) (regOne!30715 r!7292))) b!5378662))

(assert (= (and b!5377717 ((_ is Union!15101) (regOne!30715 r!7292))) b!5378663))

(declare-fun b!5378666 () Bool)

(declare-fun e!3336814 () Bool)

(declare-fun tp!1491070 () Bool)

(assert (=> b!5378666 (= e!3336814 tp!1491070)))

(declare-fun b!5378665 () Bool)

(declare-fun tp!1491071 () Bool)

(declare-fun tp!1491069 () Bool)

(assert (=> b!5378665 (= e!3336814 (and tp!1491071 tp!1491069))))

(declare-fun b!5378667 () Bool)

(declare-fun tp!1491073 () Bool)

(declare-fun tp!1491072 () Bool)

(assert (=> b!5378667 (= e!3336814 (and tp!1491073 tp!1491072))))

(assert (=> b!5377717 (= tp!1490978 e!3336814)))

(declare-fun b!5378664 () Bool)

(assert (=> b!5378664 (= e!3336814 tp_is_empty!39455)))

(assert (= (and b!5377717 ((_ is ElementMatch!15101) (regTwo!30715 r!7292))) b!5378664))

(assert (= (and b!5377717 ((_ is Concat!23946) (regTwo!30715 r!7292))) b!5378665))

(assert (= (and b!5377717 ((_ is Star!15101) (regTwo!30715 r!7292))) b!5378666))

(assert (= (and b!5377717 ((_ is Union!15101) (regTwo!30715 r!7292))) b!5378667))

(declare-fun condSetEmpty!34883 () Bool)

(assert (=> setNonEmpty!34877 (= condSetEmpty!34883 (= setRest!34877 ((as const (Array Context!8970 Bool)) false)))))

(declare-fun setRes!34883 () Bool)

(assert (=> setNonEmpty!34877 (= tp!1490981 setRes!34883)))

(declare-fun setIsEmpty!34883 () Bool)

(assert (=> setIsEmpty!34883 setRes!34883))

(declare-fun setElem!34883 () Context!8970)

(declare-fun e!3336817 () Bool)

(declare-fun setNonEmpty!34883 () Bool)

(declare-fun tp!1491078 () Bool)

(assert (=> setNonEmpty!34883 (= setRes!34883 (and tp!1491078 (inv!80999 setElem!34883) e!3336817))))

(declare-fun setRest!34883 () (InoxSet Context!8970))

(assert (=> setNonEmpty!34883 (= setRest!34877 ((_ map or) (store ((as const (Array Context!8970 Bool)) false) setElem!34883 true) setRest!34883))))

(declare-fun b!5378672 () Bool)

(declare-fun tp!1491079 () Bool)

(assert (=> b!5378672 (= e!3336817 tp!1491079)))

(assert (= (and setNonEmpty!34877 condSetEmpty!34883) setIsEmpty!34883))

(assert (= (and setNonEmpty!34877 (not condSetEmpty!34883)) setNonEmpty!34883))

(assert (= setNonEmpty!34883 b!5378672))

(declare-fun m!6404936 () Bool)

(assert (=> setNonEmpty!34883 m!6404936))

(declare-fun b!5378680 () Bool)

(declare-fun e!3336823 () Bool)

(declare-fun tp!1491084 () Bool)

(assert (=> b!5378680 (= e!3336823 tp!1491084)))

(declare-fun b!5378679 () Bool)

(declare-fun e!3336822 () Bool)

(declare-fun tp!1491085 () Bool)

(assert (=> b!5378679 (= e!3336822 (and (inv!80999 (h!67928 (t!374827 zl!343))) e!3336823 tp!1491085))))

(assert (=> b!5377700 (= tp!1490974 e!3336822)))

(assert (= b!5378679 b!5378680))

(assert (= (and b!5377700 ((_ is Cons!61480) (t!374827 zl!343))) b!5378679))

(declare-fun m!6404938 () Bool)

(assert (=> b!5378679 m!6404938))

(declare-fun b!5378681 () Bool)

(declare-fun e!3336824 () Bool)

(declare-fun tp!1491086 () Bool)

(declare-fun tp!1491087 () Bool)

(assert (=> b!5378681 (= e!3336824 (and tp!1491086 tp!1491087))))

(assert (=> b!5377690 (= tp!1490975 e!3336824)))

(assert (= (and b!5377690 ((_ is Cons!61479) (exprs!4985 setElem!34877))) b!5378681))

(declare-fun b!5378684 () Bool)

(declare-fun e!3336825 () Bool)

(declare-fun tp!1491089 () Bool)

(assert (=> b!5378684 (= e!3336825 tp!1491089)))

(declare-fun b!5378683 () Bool)

(declare-fun tp!1491090 () Bool)

(declare-fun tp!1491088 () Bool)

(assert (=> b!5378683 (= e!3336825 (and tp!1491090 tp!1491088))))

(declare-fun b!5378685 () Bool)

(declare-fun tp!1491092 () Bool)

(declare-fun tp!1491091 () Bool)

(assert (=> b!5378685 (= e!3336825 (and tp!1491092 tp!1491091))))

(assert (=> b!5377684 (= tp!1490976 e!3336825)))

(declare-fun b!5378682 () Bool)

(assert (=> b!5378682 (= e!3336825 tp_is_empty!39455)))

(assert (= (and b!5377684 ((_ is ElementMatch!15101) (regOne!30714 r!7292))) b!5378682))

(assert (= (and b!5377684 ((_ is Concat!23946) (regOne!30714 r!7292))) b!5378683))

(assert (= (and b!5377684 ((_ is Star!15101) (regOne!30714 r!7292))) b!5378684))

(assert (= (and b!5377684 ((_ is Union!15101) (regOne!30714 r!7292))) b!5378685))

(declare-fun b!5378688 () Bool)

(declare-fun e!3336826 () Bool)

(declare-fun tp!1491094 () Bool)

(assert (=> b!5378688 (= e!3336826 tp!1491094)))

(declare-fun b!5378687 () Bool)

(declare-fun tp!1491095 () Bool)

(declare-fun tp!1491093 () Bool)

(assert (=> b!5378687 (= e!3336826 (and tp!1491095 tp!1491093))))

(declare-fun b!5378689 () Bool)

(declare-fun tp!1491097 () Bool)

(declare-fun tp!1491096 () Bool)

(assert (=> b!5378689 (= e!3336826 (and tp!1491097 tp!1491096))))

(assert (=> b!5377684 (= tp!1490979 e!3336826)))

(declare-fun b!5378686 () Bool)

(assert (=> b!5378686 (= e!3336826 tp_is_empty!39455)))

(assert (= (and b!5377684 ((_ is ElementMatch!15101) (regTwo!30714 r!7292))) b!5378686))

(assert (= (and b!5377684 ((_ is Concat!23946) (regTwo!30714 r!7292))) b!5378687))

(assert (= (and b!5377684 ((_ is Star!15101) (regTwo!30714 r!7292))) b!5378688))

(assert (= (and b!5377684 ((_ is Union!15101) (regTwo!30714 r!7292))) b!5378689))

(declare-fun b_lambda!206053 () Bool)

(assert (= b_lambda!206037 (or b!5377710 b_lambda!206053)))

(declare-fun bs!1245383 () Bool)

(declare-fun d!1721578 () Bool)

(assert (= bs!1245383 (and d!1721578 b!5377710)))

(assert (=> bs!1245383 (= (dynLambda!24271 lambda!278028 (h!67928 zl!343)) (derivationStepZipperUp!473 (h!67928 zl!343) (h!67926 s!2326)))))

(assert (=> bs!1245383 m!6404052))

(assert (=> d!1721522 d!1721578))

(declare-fun b_lambda!206055 () Bool)

(assert (= b_lambda!206033 (or b!5377710 b_lambda!206055)))

(declare-fun bs!1245384 () Bool)

(declare-fun d!1721580 () Bool)

(assert (= bs!1245384 (and d!1721580 b!5377710)))

(assert (=> bs!1245384 (= (dynLambda!24271 lambda!278028 lt!2189817) (derivationStepZipperUp!473 lt!2189817 (h!67926 s!2326)))))

(assert (=> bs!1245384 m!6403986))

(assert (=> d!1721432 d!1721580))

(declare-fun b_lambda!206057 () Bool)

(assert (= b_lambda!206031 (or b!5377710 b_lambda!206057)))

(declare-fun bs!1245385 () Bool)

(declare-fun d!1721582 () Bool)

(assert (= bs!1245385 (and d!1721582 b!5377710)))

(assert (=> bs!1245385 (= (dynLambda!24271 lambda!278028 lt!2189815) (derivationStepZipperUp!473 lt!2189815 (h!67926 s!2326)))))

(assert (=> bs!1245385 m!6403970))

(assert (=> d!1721414 d!1721582))

(declare-fun b_lambda!206059 () Bool)

(assert (= b_lambda!206051 (or b!5377710 b_lambda!206059)))

(declare-fun bs!1245386 () Bool)

(declare-fun d!1721584 () Bool)

(assert (= bs!1245386 (and d!1721584 b!5377710)))

(assert (=> bs!1245386 (= (dynLambda!24271 lambda!278028 lt!2189823) (derivationStepZipperUp!473 lt!2189823 (h!67926 s!2326)))))

(assert (=> bs!1245386 m!6404070))

(assert (=> d!1721570 d!1721584))

(check-sat (not b!5378199) (not bm!385151) (not bm!385095) (not bm!385096) (not bm!385097) (not d!1721354) (not b!5378338) (not b!5378681) (not b!5377859) (not d!1721366) (not d!1721524) (not b!5377856) (not bm!385089) (not b!5378604) (not b!5378115) (not b!5377854) (not b!5378684) (not b!5378114) (not bs!1245385) (not b!5378124) (not b!5377938) (not b!5378685) (not d!1721488) tp_is_empty!39455 (not b!5378583) (not b!5378371) (not d!1721490) (not b!5378198) (not d!1721564) (not d!1721408) (not b!5377981) (not b!5377853) (not d!1721434) (not b!5378272) (not bm!385163) (not d!1721554) (not d!1721340) (not d!1721352) (not d!1721404) (not b!5378231) (not b!5378688) (not b!5378363) (not b!5377980) (not bm!385118) (not b!5378352) (not b!5378128) (not d!1721452) (not d!1721506) (not d!1721570) (not b!5378357) (not d!1721522) (not b!5378441) (not b!5378084) (not bm!385134) (not b!5378627) (not bm!385135) (not b!5377851) (not d!1721572) (not b!5378658) (not b!5378672) (not d!1721336) (not bm!385185) (not d!1721402) (not b!5378359) (not d!1721448) (not b!5378546) (not b!5378600) (not d!1721324) (not b!5378657) (not d!1721350) (not b!5378335) (not b!5378595) (not d!1721410) (not b_lambda!206057) (not b!5378689) (not b!5378370) (not b!5378634) (not b!5378360) (not b!5378457) (not b!5378587) (not b!5378327) (not b!5378047) (not b!5377852) (not b!5378349) (not b!5378667) (not b!5378088) (not b!5378582) (not b!5378340) (not b!5378343) (not d!1721574) (not b!5378459) (not d!1721328) (not d!1721406) (not b!5378680) (not b!5378666) (not d!1721338) (not d!1721446) (not b!5378351) (not bm!385182) (not b!5378630) (not b!5378233) (not b!5378330) (not b!5378337) (not b!5378661) (not b!5378120) (not b!5378436) (not b!5378361) (not b!5378204) (not b!5378589) (not d!1721484) (not b!5378449) (not b!5378354) (not b!5378687) (not b!5378117) (not bm!385164) (not d!1721526) (not b!5378626) (not b!5378046) (not b!5378366) (not b!5378629) (not b!5378112) (not bm!385152) (not bm!385088) (not b!5378598) (not d!1721566) (not d!1721498) (not b!5378369) (not d!1721486) (not d!1721466) (not b!5378362) (not d!1721390) (not d!1721412) (not b!5378640) (not d!1721482) (not b!5378228) (not bm!385165) (not b!5378113) (not b!5378329) (not b!5378663) (not d!1721316) (not d!1721478) (not b!5378665) (not d!1721576) (not b!5378443) (not d!1721428) (not b!5378365) (not bm!385119) (not b!5378633) (not b!5378042) (not d!1721292) (not b_lambda!206059) (not bm!385169) (not b!5378040) (not b!5378581) (not d!1721416) (not d!1721378) (not b!5378659) (not b!5378350) (not d!1721480) (not setNonEmpty!34883) (not bm!385170) (not b_lambda!206055) (not b!5378071) (not b!5378662) (not d!1721496) (not d!1721432) (not d!1721392) (not bm!385083) (not b!5378683) (not d!1721368) (not bm!385091) (not b!5378203) (not d!1721322) (not b!5378202) (not bm!385139) (not bs!1245386) (not b!5378679) (not b!5378590) (not d!1721520) (not d!1721334) (not bm!385162) (not b!5378631) (not b!5378438) (not b!5378605) (not b!5378645) (not d!1721426) (not bm!385090) (not b_lambda!206053) (not bs!1245383) (not bs!1245384) (not b!5378302) (not d!1721414) (not b!5378043) (not b!5378586) (not b!5378196) (not d!1721494) (not b!5378048) (not b!5377942) (not bm!385184) (not b!5378336) (not b!5378226) (not b!5378328))
(check-sat)
