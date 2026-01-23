; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!659264 () Bool)

(assert start!659264)

(declare-fun b!6813905 () Bool)

(assert (=> b!6813905 true))

(assert (=> b!6813905 true))

(declare-fun lambda!384703 () Int)

(declare-fun lambda!384702 () Int)

(assert (=> b!6813905 (not (= lambda!384703 lambda!384702))))

(assert (=> b!6813905 true))

(assert (=> b!6813905 true))

(declare-fun lambda!384704 () Int)

(assert (=> b!6813905 (not (= lambda!384704 lambda!384702))))

(assert (=> b!6813905 (not (= lambda!384704 lambda!384703))))

(assert (=> b!6813905 true))

(assert (=> b!6813905 true))

(declare-fun b!6813913 () Bool)

(assert (=> b!6813913 true))

(declare-fun b!6813910 () Bool)

(assert (=> b!6813910 true))

(declare-fun res!2783844 () Bool)

(declare-fun e!4111354 () Bool)

(assert (=> start!659264 (=> (not res!2783844) (not e!4111354))))

(declare-datatypes ((C!33532 0))(
  ( (C!33533 (val!26468 Int)) )
))
(declare-datatypes ((Regex!16631 0))(
  ( (ElementMatch!16631 (c!1267667 C!33532)) (Concat!25476 (regOne!33774 Regex!16631) (regTwo!33774 Regex!16631)) (EmptyExpr!16631) (Star!16631 (reg!16960 Regex!16631)) (EmptyLang!16631) (Union!16631 (regOne!33775 Regex!16631) (regTwo!33775 Regex!16631)) )
))
(declare-fun r!7292 () Regex!16631)

(declare-fun validRegex!8367 (Regex!16631) Bool)

(assert (=> start!659264 (= res!2783844 (validRegex!8367 r!7292))))

(assert (=> start!659264 e!4111354))

(declare-fun e!4111346 () Bool)

(assert (=> start!659264 e!4111346))

(declare-fun condSetEmpty!46741 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!66192 0))(
  ( (Nil!66068) (Cons!66068 (h!72516 Regex!16631) (t!379927 List!66192)) )
))
(declare-datatypes ((Context!12030 0))(
  ( (Context!12031 (exprs!6515 List!66192)) )
))
(declare-fun z!1189 () (InoxSet Context!12030))

(assert (=> start!659264 (= condSetEmpty!46741 (= z!1189 ((as const (Array Context!12030 Bool)) false)))))

(declare-fun setRes!46741 () Bool)

(assert (=> start!659264 setRes!46741))

(declare-fun e!4111359 () Bool)

(assert (=> start!659264 e!4111359))

(declare-fun e!4111348 () Bool)

(assert (=> start!659264 e!4111348))

(declare-fun b!6813893 () Bool)

(declare-fun e!4111345 () Bool)

(declare-fun e!4111353 () Bool)

(assert (=> b!6813893 (= e!4111345 e!4111353)))

(declare-fun res!2783846 () Bool)

(assert (=> b!6813893 (=> res!2783846 e!4111353)))

(declare-fun lt!2450328 () Context!12030)

(declare-fun lt!2450318 () Regex!16631)

(declare-datatypes ((List!66193 0))(
  ( (Nil!66069) (Cons!66069 (h!72517 Context!12030) (t!379928 List!66193)) )
))
(declare-fun unfocusZipper!2373 (List!66193) Regex!16631)

(assert (=> b!6813893 (= res!2783846 (not (= (unfocusZipper!2373 (Cons!66069 lt!2450328 Nil!66069)) lt!2450318)))))

(assert (=> b!6813893 (= lt!2450318 (Concat!25476 (reg!16960 r!7292) r!7292))))

(declare-fun b!6813894 () Bool)

(declare-fun tp!1865174 () Bool)

(declare-fun tp!1865175 () Bool)

(assert (=> b!6813894 (= e!4111346 (and tp!1865174 tp!1865175))))

(declare-fun b!6813895 () Bool)

(declare-fun tp_is_empty!42515 () Bool)

(declare-fun tp!1865178 () Bool)

(assert (=> b!6813895 (= e!4111348 (and tp_is_empty!42515 tp!1865178))))

(declare-fun b!6813896 () Bool)

(declare-fun res!2783841 () Bool)

(declare-fun e!4111356 () Bool)

(assert (=> b!6813896 (=> res!2783841 e!4111356)))

(get-info :version)

(assert (=> b!6813896 (= res!2783841 (or ((_ is EmptyExpr!16631) r!7292) ((_ is EmptyLang!16631) r!7292) ((_ is ElementMatch!16631) r!7292) ((_ is Union!16631) r!7292) ((_ is Concat!25476) r!7292)))))

(declare-fun b!6813897 () Bool)

(declare-fun res!2783826 () Bool)

(assert (=> b!6813897 (=> res!2783826 e!4111356)))

(declare-fun zl!343 () List!66193)

(assert (=> b!6813897 (= res!2783826 (not ((_ is Cons!66068) (exprs!6515 (h!72517 zl!343)))))))

(declare-fun b!6813898 () Bool)

(declare-fun res!2783820 () Bool)

(assert (=> b!6813898 (=> res!2783820 e!4111345)))

(declare-fun lt!2450342 () Regex!16631)

(assert (=> b!6813898 (= res!2783820 (or (not (= lt!2450342 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6813899 () Bool)

(declare-fun res!2783845 () Bool)

(declare-fun e!4111360 () Bool)

(assert (=> b!6813899 (=> res!2783845 e!4111360)))

(declare-fun lt!2450312 () (InoxSet Context!12030))

(declare-datatypes ((List!66194 0))(
  ( (Nil!66070) (Cons!66070 (h!72518 C!33532) (t!379929 List!66194)) )
))
(declare-datatypes ((tuple2!67212 0))(
  ( (tuple2!67213 (_1!36909 List!66194) (_2!36909 List!66194)) )
))
(declare-fun lt!2450338 () tuple2!67212)

(declare-fun matchZipper!2617 ((InoxSet Context!12030) List!66194) Bool)

(assert (=> b!6813899 (= res!2783845 (not (matchZipper!2617 lt!2450312 (_2!36909 lt!2450338))))))

(declare-fun b!6813900 () Bool)

(declare-fun res!2783834 () Bool)

(declare-fun e!4111343 () Bool)

(assert (=> b!6813900 (=> res!2783834 e!4111343)))

(declare-fun s!2326 () List!66194)

(assert (=> b!6813900 (= res!2783834 (not (matchZipper!2617 z!1189 s!2326)))))

(declare-fun e!4111358 () Bool)

(declare-fun b!6813901 () Bool)

(declare-fun tp!1865180 () Bool)

(declare-fun inv!84824 (Context!12030) Bool)

(assert (=> b!6813901 (= e!4111359 (and (inv!84824 (h!72517 zl!343)) e!4111358 tp!1865180))))

(declare-fun b!6813902 () Bool)

(declare-fun e!4111344 () Bool)

(declare-fun lt!2450334 () Bool)

(assert (=> b!6813902 (= e!4111344 lt!2450334)))

(declare-fun b!6813903 () Bool)

(declare-fun res!2783821 () Bool)

(assert (=> b!6813903 (=> res!2783821 e!4111345)))

(declare-fun lt!2450319 () (InoxSet Context!12030))

(declare-fun derivationStepZipper!2575 ((InoxSet Context!12030) C!33532) (InoxSet Context!12030))

(assert (=> b!6813903 (= res!2783821 (not (= (matchZipper!2617 lt!2450319 s!2326) (matchZipper!2617 (derivationStepZipper!2575 lt!2450319 (h!72518 s!2326)) (t!379929 s!2326)))))))

(declare-fun b!6813904 () Bool)

(declare-fun res!2783842 () Bool)

(declare-fun e!4111341 () Bool)

(assert (=> b!6813904 (=> res!2783842 e!4111341)))

(declare-fun lt!2450329 () Context!12030)

(assert (=> b!6813904 (= res!2783842 (not (= (unfocusZipper!2373 (Cons!66069 lt!2450329 Nil!66069)) r!7292)))))

(declare-fun e!4111349 () Bool)

(assert (=> b!6813905 (= e!4111356 e!4111349)))

(declare-fun res!2783825 () Bool)

(assert (=> b!6813905 (=> res!2783825 e!4111349)))

(declare-fun lt!2450332 () Bool)

(assert (=> b!6813905 (= res!2783825 (not (= lt!2450332 e!4111344)))))

(declare-fun res!2783835 () Bool)

(assert (=> b!6813905 (=> res!2783835 e!4111344)))

(declare-fun isEmpty!38457 (List!66194) Bool)

(assert (=> b!6813905 (= res!2783835 (isEmpty!38457 s!2326))))

(declare-fun Exists!3699 (Int) Bool)

(assert (=> b!6813905 (= (Exists!3699 lambda!384702) (Exists!3699 lambda!384704))))

(declare-datatypes ((Unit!159953 0))(
  ( (Unit!159954) )
))
(declare-fun lt!2450340 () Unit!159953)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2226 (Regex!16631 Regex!16631 List!66194) Unit!159953)

(assert (=> b!6813905 (= lt!2450340 (lemmaExistCutMatchRandMatchRSpecEquivalent!2226 (reg!16960 r!7292) r!7292 s!2326))))

(assert (=> b!6813905 (= (Exists!3699 lambda!384702) (Exists!3699 lambda!384703))))

(declare-fun lt!2450336 () Unit!159953)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!790 (Regex!16631 List!66194) Unit!159953)

(assert (=> b!6813905 (= lt!2450336 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!790 (reg!16960 r!7292) s!2326))))

(assert (=> b!6813905 (= lt!2450334 (Exists!3699 lambda!384702))))

(declare-datatypes ((Option!16518 0))(
  ( (None!16517) (Some!16517 (v!52725 tuple2!67212)) )
))
(declare-fun isDefined!13221 (Option!16518) Bool)

(declare-fun findConcatSeparation!2932 (Regex!16631 Regex!16631 List!66194 List!66194 List!66194) Option!16518)

(assert (=> b!6813905 (= lt!2450334 (isDefined!13221 (findConcatSeparation!2932 (reg!16960 r!7292) r!7292 Nil!66070 s!2326 s!2326)))))

(declare-fun lt!2450348 () Unit!159953)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2696 (Regex!16631 Regex!16631 List!66194) Unit!159953)

(assert (=> b!6813905 (= lt!2450348 (lemmaFindConcatSeparationEquivalentToExists!2696 (reg!16960 r!7292) r!7292 s!2326))))

(declare-fun b!6813906 () Bool)

(declare-fun e!4111355 () Bool)

(assert (=> b!6813906 (= e!4111355 e!4111360)))

(declare-fun res!2783829 () Bool)

(assert (=> b!6813906 (=> res!2783829 e!4111360)))

(declare-fun lt!2450331 () List!66194)

(assert (=> b!6813906 (= res!2783829 (not (= s!2326 lt!2450331)))))

(declare-fun ++!14808 (List!66194 List!66194) List!66194)

(assert (=> b!6813906 (= lt!2450331 (++!14808 (_1!36909 lt!2450338) (_2!36909 lt!2450338)))))

(declare-fun lt!2450344 () Option!16518)

(declare-fun get!23016 (Option!16518) tuple2!67212)

(assert (=> b!6813906 (= lt!2450338 (get!23016 lt!2450344))))

(assert (=> b!6813906 (isDefined!13221 lt!2450344)))

(declare-fun lt!2450343 () (InoxSet Context!12030))

(declare-fun findConcatSeparationZippers!240 ((InoxSet Context!12030) (InoxSet Context!12030) List!66194 List!66194 List!66194) Option!16518)

(assert (=> b!6813906 (= lt!2450344 (findConcatSeparationZippers!240 lt!2450343 lt!2450312 Nil!66070 s!2326 s!2326))))

(declare-fun lt!2450325 () Unit!159953)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!240 ((InoxSet Context!12030) Context!12030 List!66194) Unit!159953)

(assert (=> b!6813906 (= lt!2450325 (lemmaConcatZipperMatchesStringThenFindConcatDefined!240 lt!2450343 lt!2450329 s!2326))))

(declare-fun b!6813907 () Bool)

(declare-fun tp!1865179 () Bool)

(assert (=> b!6813907 (= e!4111358 tp!1865179)))

(declare-fun b!6813908 () Bool)

(declare-fun e!4111347 () Bool)

(assert (=> b!6813908 (= e!4111353 e!4111347)))

(declare-fun res!2783848 () Bool)

(assert (=> b!6813908 (=> res!2783848 e!4111347)))

(declare-fun lt!2450323 () (InoxSet Context!12030))

(assert (=> b!6813908 (= res!2783848 (not (= lt!2450323 (derivationStepZipper!2575 lt!2450312 (h!72518 s!2326)))))))

(declare-fun lambda!384705 () Int)

(declare-fun flatMap!2112 ((InoxSet Context!12030) Int) (InoxSet Context!12030))

(declare-fun derivationStepZipperUp!1785 (Context!12030 C!33532) (InoxSet Context!12030))

(assert (=> b!6813908 (= (flatMap!2112 lt!2450312 lambda!384705) (derivationStepZipperUp!1785 lt!2450329 (h!72518 s!2326)))))

(declare-fun lt!2450341 () Unit!159953)

(declare-fun lemmaFlatMapOnSingletonSet!1638 ((InoxSet Context!12030) Context!12030 Int) Unit!159953)

(assert (=> b!6813908 (= lt!2450341 (lemmaFlatMapOnSingletonSet!1638 lt!2450312 lt!2450329 lambda!384705))))

(declare-fun lt!2450347 () Context!12030)

(assert (=> b!6813908 (= (flatMap!2112 lt!2450343 lambda!384705) (derivationStepZipperUp!1785 lt!2450347 (h!72518 s!2326)))))

(declare-fun lt!2450346 () Unit!159953)

(assert (=> b!6813908 (= lt!2450346 (lemmaFlatMapOnSingletonSet!1638 lt!2450343 lt!2450347 lambda!384705))))

(declare-fun lt!2450315 () (InoxSet Context!12030))

(assert (=> b!6813908 (= lt!2450315 (derivationStepZipperUp!1785 lt!2450329 (h!72518 s!2326)))))

(declare-fun lt!2450313 () (InoxSet Context!12030))

(assert (=> b!6813908 (= lt!2450313 (derivationStepZipperUp!1785 lt!2450347 (h!72518 s!2326)))))

(assert (=> b!6813908 (= lt!2450312 (store ((as const (Array Context!12030 Bool)) false) lt!2450329 true))))

(assert (=> b!6813908 (= lt!2450343 (store ((as const (Array Context!12030 Bool)) false) lt!2450347 true))))

(declare-fun lt!2450333 () List!66192)

(assert (=> b!6813908 (= lt!2450347 (Context!12031 lt!2450333))))

(assert (=> b!6813908 (= lt!2450333 (Cons!66068 (reg!16960 r!7292) Nil!66068))))

(declare-fun b!6813909 () Bool)

(declare-fun e!4111357 () Bool)

(assert (=> b!6813909 (= e!4111349 e!4111357)))

(declare-fun res!2783843 () Bool)

(assert (=> b!6813909 (=> res!2783843 e!4111357)))

(declare-fun lt!2450320 () (InoxSet Context!12030))

(declare-fun lt!2450345 () (InoxSet Context!12030))

(assert (=> b!6813909 (= res!2783843 (not (= lt!2450320 lt!2450345)))))

(declare-fun derivationStepZipperDown!1859 (Regex!16631 Context!12030 C!33532) (InoxSet Context!12030))

(assert (=> b!6813909 (= lt!2450345 (derivationStepZipperDown!1859 r!7292 (Context!12031 Nil!66068) (h!72518 s!2326)))))

(assert (=> b!6813909 (= lt!2450320 (derivationStepZipperUp!1785 (Context!12031 (Cons!66068 r!7292 Nil!66068)) (h!72518 s!2326)))))

(assert (=> b!6813909 (= lt!2450323 (derivationStepZipper!2575 z!1189 (h!72518 s!2326)))))

(assert (=> b!6813910 (= e!4111343 e!4111355)))

(declare-fun res!2783837 () Bool)

(assert (=> b!6813910 (=> res!2783837 e!4111355)))

(declare-fun appendTo!236 ((InoxSet Context!12030) Context!12030) (InoxSet Context!12030))

(assert (=> b!6813910 (= res!2783837 (not (= (appendTo!236 lt!2450343 lt!2450329) lt!2450319)))))

(declare-fun lt!2450314 () List!66192)

(declare-fun lambda!384706 () Int)

(declare-fun map!15107 ((InoxSet Context!12030) Int) (InoxSet Context!12030))

(declare-fun ++!14809 (List!66192 List!66192) List!66192)

(assert (=> b!6813910 (= (map!15107 lt!2450343 lambda!384706) (store ((as const (Array Context!12030 Bool)) false) (Context!12031 (++!14809 lt!2450333 lt!2450314)) true))))

(declare-fun lambda!384707 () Int)

(declare-fun lt!2450322 () Unit!159953)

(declare-fun lemmaConcatPreservesForall!460 (List!66192 List!66192 Int) Unit!159953)

(assert (=> b!6813910 (= lt!2450322 (lemmaConcatPreservesForall!460 lt!2450333 lt!2450314 lambda!384707))))

(declare-fun lt!2450327 () Unit!159953)

(declare-fun lemmaMapOnSingletonSet!266 ((InoxSet Context!12030) Context!12030 Int) Unit!159953)

(assert (=> b!6813910 (= lt!2450327 (lemmaMapOnSingletonSet!266 lt!2450343 lt!2450347 lambda!384706))))

(declare-fun b!6813911 () Bool)

(declare-fun e!4111350 () Bool)

(declare-fun tp!1865182 () Bool)

(assert (=> b!6813911 (= e!4111350 tp!1865182)))

(declare-fun b!6813912 () Bool)

(assert (=> b!6813912 (= e!4111347 e!4111341)))

(declare-fun res!2783836 () Bool)

(assert (=> b!6813912 (=> res!2783836 e!4111341)))

(declare-fun lt!2450330 () Regex!16631)

(assert (=> b!6813912 (= res!2783836 (not (= lt!2450330 (reg!16960 r!7292))))))

(declare-fun lt!2450337 () List!66193)

(assert (=> b!6813912 (= lt!2450330 (unfocusZipper!2373 lt!2450337))))

(assert (=> b!6813912 (= lt!2450337 (Cons!66069 lt!2450347 Nil!66069))))

(declare-fun e!4111351 () Bool)

(assert (=> b!6813913 (= e!4111357 e!4111351)))

(declare-fun res!2783832 () Bool)

(assert (=> b!6813913 (=> res!2783832 e!4111351)))

(assert (=> b!6813913 (= res!2783832 (not (= lt!2450323 lt!2450345)))))

(assert (=> b!6813913 (= (flatMap!2112 z!1189 lambda!384705) (derivationStepZipperUp!1785 (h!72517 zl!343) (h!72518 s!2326)))))

(declare-fun lt!2450316 () Unit!159953)

(assert (=> b!6813913 (= lt!2450316 (lemmaFlatMapOnSingletonSet!1638 z!1189 (h!72517 zl!343) lambda!384705))))

(declare-fun b!6813914 () Bool)

(declare-fun res!2783831 () Bool)

(declare-fun e!4111342 () Bool)

(assert (=> b!6813914 (=> res!2783831 e!4111342)))

(declare-fun toList!10415 ((InoxSet Context!12030)) List!66193)

(assert (=> b!6813914 (= res!2783831 (not (= (toList!10415 lt!2450343) lt!2450337)))))

(declare-fun b!6813915 () Bool)

(declare-fun e!4111352 () Bool)

(assert (=> b!6813915 (= e!4111352 (not e!4111356))))

(declare-fun res!2783822 () Bool)

(assert (=> b!6813915 (=> res!2783822 e!4111356)))

(assert (=> b!6813915 (= res!2783822 (not ((_ is Cons!66069) zl!343)))))

(declare-fun matchRSpec!3732 (Regex!16631 List!66194) Bool)

(assert (=> b!6813915 (= lt!2450332 (matchRSpec!3732 r!7292 s!2326))))

(declare-fun matchR!8814 (Regex!16631 List!66194) Bool)

(assert (=> b!6813915 (= lt!2450332 (matchR!8814 r!7292 s!2326))))

(declare-fun lt!2450324 () Unit!159953)

(declare-fun mainMatchTheorem!3732 (Regex!16631 List!66194) Unit!159953)

(assert (=> b!6813915 (= lt!2450324 (mainMatchTheorem!3732 r!7292 s!2326))))

(declare-fun tp!1865177 () Bool)

(declare-fun setElem!46741 () Context!12030)

(declare-fun setNonEmpty!46741 () Bool)

(assert (=> setNonEmpty!46741 (= setRes!46741 (and tp!1865177 (inv!84824 setElem!46741) e!4111350))))

(declare-fun setRest!46741 () (InoxSet Context!12030))

(assert (=> setNonEmpty!46741 (= z!1189 ((_ map or) (store ((as const (Array Context!12030 Bool)) false) setElem!46741 true) setRest!46741))))

(declare-fun setIsEmpty!46741 () Bool)

(assert (=> setIsEmpty!46741 setRes!46741))

(declare-fun b!6813916 () Bool)

(declare-fun res!2783847 () Bool)

(assert (=> b!6813916 (=> res!2783847 e!4111360)))

(assert (=> b!6813916 (= res!2783847 (not (matchZipper!2617 lt!2450343 (_1!36909 lt!2450338))))))

(declare-fun b!6813917 () Bool)

(assert (=> b!6813917 (= e!4111342 (= (reg!16960 r!7292) lt!2450330))))

(declare-fun b!6813918 () Bool)

(assert (=> b!6813918 (= e!4111341 e!4111343)))

(declare-fun res!2783823 () Bool)

(assert (=> b!6813918 (=> res!2783823 e!4111343)))

(declare-fun lt!2450335 () Bool)

(assert (=> b!6813918 (= res!2783823 lt!2450335)))

(assert (=> b!6813918 (= lt!2450335 (matchRSpec!3732 lt!2450318 s!2326))))

(assert (=> b!6813918 (= lt!2450335 (matchR!8814 lt!2450318 s!2326))))

(declare-fun lt!2450326 () Unit!159953)

(assert (=> b!6813918 (= lt!2450326 (mainMatchTheorem!3732 lt!2450318 s!2326))))

(declare-fun b!6813919 () Bool)

(assert (=> b!6813919 (= e!4111351 e!4111345)))

(declare-fun res!2783827 () Bool)

(assert (=> b!6813919 (=> res!2783827 e!4111345)))

(assert (=> b!6813919 (= res!2783827 (not (= lt!2450323 (derivationStepZipperDown!1859 (reg!16960 r!7292) lt!2450329 (h!72518 s!2326)))))))

(assert (=> b!6813919 (= lt!2450329 (Context!12031 lt!2450314))))

(assert (=> b!6813919 (= (flatMap!2112 lt!2450319 lambda!384705) (derivationStepZipperUp!1785 lt!2450328 (h!72518 s!2326)))))

(declare-fun lt!2450339 () Unit!159953)

(assert (=> b!6813919 (= lt!2450339 (lemmaFlatMapOnSingletonSet!1638 lt!2450319 lt!2450328 lambda!384705))))

(declare-fun lt!2450317 () (InoxSet Context!12030))

(assert (=> b!6813919 (= lt!2450317 (derivationStepZipperUp!1785 lt!2450328 (h!72518 s!2326)))))

(assert (=> b!6813919 (= lt!2450319 (store ((as const (Array Context!12030 Bool)) false) lt!2450328 true))))

(assert (=> b!6813919 (= lt!2450328 (Context!12031 (Cons!66068 (reg!16960 r!7292) lt!2450314)))))

(assert (=> b!6813919 (= lt!2450314 (Cons!66068 r!7292 Nil!66068))))

(declare-fun b!6813920 () Bool)

(declare-fun res!2783828 () Bool)

(assert (=> b!6813920 (=> (not res!2783828) (not e!4111354))))

(assert (=> b!6813920 (= res!2783828 (= (toList!10415 z!1189) zl!343))))

(declare-fun b!6813921 () Bool)

(declare-fun tp!1865181 () Bool)

(declare-fun tp!1865176 () Bool)

(assert (=> b!6813921 (= e!4111346 (and tp!1865181 tp!1865176))))

(declare-fun b!6813922 () Bool)

(assert (=> b!6813922 (= e!4111360 e!4111342)))

(declare-fun res!2783824 () Bool)

(assert (=> b!6813922 (=> res!2783824 e!4111342)))

(assert (=> b!6813922 (= res!2783824 (not (validRegex!8367 (reg!16960 r!7292))))))

(assert (=> b!6813922 (matchZipper!2617 (store ((as const (Array Context!12030 Bool)) false) (Context!12031 (++!14809 lt!2450333 lt!2450314)) true) lt!2450331)))

(declare-fun lt!2450311 () Unit!159953)

(assert (=> b!6813922 (= lt!2450311 (lemmaConcatPreservesForall!460 lt!2450333 lt!2450314 lambda!384707))))

(declare-fun lt!2450321 () Unit!159953)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!254 (Context!12030 Context!12030 List!66194 List!66194) Unit!159953)

(assert (=> b!6813922 (= lt!2450321 (lemmaConcatenateContextMatchesConcatOfStrings!254 lt!2450347 lt!2450329 (_1!36909 lt!2450338) (_2!36909 lt!2450338)))))

(declare-fun b!6813923 () Bool)

(declare-fun res!2783838 () Bool)

(assert (=> b!6813923 (=> res!2783838 e!4111356)))

(declare-fun generalisedConcat!2228 (List!66192) Regex!16631)

(assert (=> b!6813923 (= res!2783838 (not (= r!7292 (generalisedConcat!2228 (exprs!6515 (h!72517 zl!343))))))))

(declare-fun b!6813924 () Bool)

(assert (=> b!6813924 (= e!4111354 e!4111352)))

(declare-fun res!2783833 () Bool)

(assert (=> b!6813924 (=> (not res!2783833) (not e!4111352))))

(assert (=> b!6813924 (= res!2783833 (= r!7292 lt!2450342))))

(assert (=> b!6813924 (= lt!2450342 (unfocusZipper!2373 zl!343))))

(declare-fun b!6813925 () Bool)

(declare-fun res!2783830 () Bool)

(assert (=> b!6813925 (=> res!2783830 e!4111356)))

(declare-fun isEmpty!38458 (List!66193) Bool)

(assert (=> b!6813925 (= res!2783830 (not (isEmpty!38458 (t!379928 zl!343))))))

(declare-fun b!6813926 () Bool)

(declare-fun tp!1865183 () Bool)

(assert (=> b!6813926 (= e!4111346 tp!1865183)))

(declare-fun b!6813927 () Bool)

(declare-fun res!2783839 () Bool)

(assert (=> b!6813927 (=> res!2783839 e!4111349)))

(assert (=> b!6813927 (= res!2783839 ((_ is Nil!66070) s!2326))))

(declare-fun b!6813928 () Bool)

(assert (=> b!6813928 (= e!4111346 tp_is_empty!42515)))

(declare-fun b!6813929 () Bool)

(declare-fun res!2783840 () Bool)

(assert (=> b!6813929 (=> res!2783840 e!4111356)))

(declare-fun generalisedUnion!2475 (List!66192) Regex!16631)

(declare-fun unfocusZipperList!2052 (List!66193) List!66192)

(assert (=> b!6813929 (= res!2783840 (not (= r!7292 (generalisedUnion!2475 (unfocusZipperList!2052 zl!343)))))))

(assert (= (and start!659264 res!2783844) b!6813920))

(assert (= (and b!6813920 res!2783828) b!6813924))

(assert (= (and b!6813924 res!2783833) b!6813915))

(assert (= (and b!6813915 (not res!2783822)) b!6813925))

(assert (= (and b!6813925 (not res!2783830)) b!6813923))

(assert (= (and b!6813923 (not res!2783838)) b!6813897))

(assert (= (and b!6813897 (not res!2783826)) b!6813929))

(assert (= (and b!6813929 (not res!2783840)) b!6813896))

(assert (= (and b!6813896 (not res!2783841)) b!6813905))

(assert (= (and b!6813905 (not res!2783835)) b!6813902))

(assert (= (and b!6813905 (not res!2783825)) b!6813927))

(assert (= (and b!6813927 (not res!2783839)) b!6813909))

(assert (= (and b!6813909 (not res!2783843)) b!6813913))

(assert (= (and b!6813913 (not res!2783832)) b!6813919))

(assert (= (and b!6813919 (not res!2783827)) b!6813903))

(assert (= (and b!6813903 (not res!2783821)) b!6813898))

(assert (= (and b!6813898 (not res!2783820)) b!6813893))

(assert (= (and b!6813893 (not res!2783846)) b!6813908))

(assert (= (and b!6813908 (not res!2783848)) b!6813912))

(assert (= (and b!6813912 (not res!2783836)) b!6813904))

(assert (= (and b!6813904 (not res!2783842)) b!6813918))

(assert (= (and b!6813918 (not res!2783823)) b!6813900))

(assert (= (and b!6813900 (not res!2783834)) b!6813910))

(assert (= (and b!6813910 (not res!2783837)) b!6813906))

(assert (= (and b!6813906 (not res!2783829)) b!6813916))

(assert (= (and b!6813916 (not res!2783847)) b!6813899))

(assert (= (and b!6813899 (not res!2783845)) b!6813922))

(assert (= (and b!6813922 (not res!2783824)) b!6813914))

(assert (= (and b!6813914 (not res!2783831)) b!6813917))

(assert (= (and start!659264 ((_ is ElementMatch!16631) r!7292)) b!6813928))

(assert (= (and start!659264 ((_ is Concat!25476) r!7292)) b!6813921))

(assert (= (and start!659264 ((_ is Star!16631) r!7292)) b!6813926))

(assert (= (and start!659264 ((_ is Union!16631) r!7292)) b!6813894))

(assert (= (and start!659264 condSetEmpty!46741) setIsEmpty!46741))

(assert (= (and start!659264 (not condSetEmpty!46741)) setNonEmpty!46741))

(assert (= setNonEmpty!46741 b!6813911))

(assert (= b!6813901 b!6813907))

(assert (= (and start!659264 ((_ is Cons!66069) zl!343)) b!6813901))

(assert (= (and start!659264 ((_ is Cons!66070) s!2326)) b!6813895))

(declare-fun m!7559632 () Bool)

(assert (=> b!6813908 m!7559632))

(declare-fun m!7559634 () Bool)

(assert (=> b!6813908 m!7559634))

(declare-fun m!7559636 () Bool)

(assert (=> b!6813908 m!7559636))

(declare-fun m!7559638 () Bool)

(assert (=> b!6813908 m!7559638))

(declare-fun m!7559640 () Bool)

(assert (=> b!6813908 m!7559640))

(declare-fun m!7559642 () Bool)

(assert (=> b!6813908 m!7559642))

(declare-fun m!7559644 () Bool)

(assert (=> b!6813908 m!7559644))

(declare-fun m!7559646 () Bool)

(assert (=> b!6813908 m!7559646))

(declare-fun m!7559648 () Bool)

(assert (=> b!6813908 m!7559648))

(declare-fun m!7559650 () Bool)

(assert (=> b!6813913 m!7559650))

(declare-fun m!7559652 () Bool)

(assert (=> b!6813913 m!7559652))

(declare-fun m!7559654 () Bool)

(assert (=> b!6813913 m!7559654))

(declare-fun m!7559656 () Bool)

(assert (=> b!6813929 m!7559656))

(assert (=> b!6813929 m!7559656))

(declare-fun m!7559658 () Bool)

(assert (=> b!6813929 m!7559658))

(declare-fun m!7559660 () Bool)

(assert (=> b!6813904 m!7559660))

(declare-fun m!7559662 () Bool)

(assert (=> b!6813906 m!7559662))

(declare-fun m!7559664 () Bool)

(assert (=> b!6813906 m!7559664))

(declare-fun m!7559666 () Bool)

(assert (=> b!6813906 m!7559666))

(declare-fun m!7559668 () Bool)

(assert (=> b!6813906 m!7559668))

(declare-fun m!7559670 () Bool)

(assert (=> b!6813906 m!7559670))

(declare-fun m!7559672 () Bool)

(assert (=> b!6813910 m!7559672))

(declare-fun m!7559674 () Bool)

(assert (=> b!6813910 m!7559674))

(declare-fun m!7559676 () Bool)

(assert (=> b!6813910 m!7559676))

(declare-fun m!7559678 () Bool)

(assert (=> b!6813910 m!7559678))

(declare-fun m!7559680 () Bool)

(assert (=> b!6813910 m!7559680))

(declare-fun m!7559682 () Bool)

(assert (=> b!6813910 m!7559682))

(declare-fun m!7559684 () Bool)

(assert (=> b!6813920 m!7559684))

(declare-fun m!7559686 () Bool)

(assert (=> b!6813903 m!7559686))

(declare-fun m!7559688 () Bool)

(assert (=> b!6813903 m!7559688))

(assert (=> b!6813903 m!7559688))

(declare-fun m!7559690 () Bool)

(assert (=> b!6813903 m!7559690))

(declare-fun m!7559692 () Bool)

(assert (=> b!6813893 m!7559692))

(declare-fun m!7559694 () Bool)

(assert (=> b!6813915 m!7559694))

(declare-fun m!7559696 () Bool)

(assert (=> b!6813915 m!7559696))

(declare-fun m!7559698 () Bool)

(assert (=> b!6813915 m!7559698))

(declare-fun m!7559700 () Bool)

(assert (=> b!6813919 m!7559700))

(declare-fun m!7559702 () Bool)

(assert (=> b!6813919 m!7559702))

(declare-fun m!7559704 () Bool)

(assert (=> b!6813919 m!7559704))

(declare-fun m!7559706 () Bool)

(assert (=> b!6813919 m!7559706))

(declare-fun m!7559708 () Bool)

(assert (=> b!6813919 m!7559708))

(assert (=> b!6813922 m!7559680))

(declare-fun m!7559710 () Bool)

(assert (=> b!6813922 m!7559710))

(declare-fun m!7559712 () Bool)

(assert (=> b!6813922 m!7559712))

(assert (=> b!6813922 m!7559678))

(assert (=> b!6813922 m!7559680))

(declare-fun m!7559714 () Bool)

(assert (=> b!6813922 m!7559714))

(assert (=> b!6813922 m!7559682))

(declare-fun m!7559716 () Bool)

(assert (=> b!6813925 m!7559716))

(declare-fun m!7559718 () Bool)

(assert (=> b!6813900 m!7559718))

(declare-fun m!7559720 () Bool)

(assert (=> b!6813918 m!7559720))

(declare-fun m!7559722 () Bool)

(assert (=> b!6813918 m!7559722))

(declare-fun m!7559724 () Bool)

(assert (=> b!6813918 m!7559724))

(declare-fun m!7559726 () Bool)

(assert (=> b!6813924 m!7559726))

(declare-fun m!7559728 () Bool)

(assert (=> setNonEmpty!46741 m!7559728))

(declare-fun m!7559730 () Bool)

(assert (=> start!659264 m!7559730))

(declare-fun m!7559732 () Bool)

(assert (=> b!6813923 m!7559732))

(declare-fun m!7559734 () Bool)

(assert (=> b!6813912 m!7559734))

(declare-fun m!7559736 () Bool)

(assert (=> b!6813909 m!7559736))

(declare-fun m!7559738 () Bool)

(assert (=> b!6813909 m!7559738))

(declare-fun m!7559740 () Bool)

(assert (=> b!6813909 m!7559740))

(declare-fun m!7559742 () Bool)

(assert (=> b!6813914 m!7559742))

(declare-fun m!7559744 () Bool)

(assert (=> b!6813901 m!7559744))

(declare-fun m!7559746 () Bool)

(assert (=> b!6813899 m!7559746))

(declare-fun m!7559748 () Bool)

(assert (=> b!6813905 m!7559748))

(declare-fun m!7559750 () Bool)

(assert (=> b!6813905 m!7559750))

(declare-fun m!7559752 () Bool)

(assert (=> b!6813905 m!7559752))

(declare-fun m!7559754 () Bool)

(assert (=> b!6813905 m!7559754))

(declare-fun m!7559756 () Bool)

(assert (=> b!6813905 m!7559756))

(declare-fun m!7559758 () Bool)

(assert (=> b!6813905 m!7559758))

(declare-fun m!7559760 () Bool)

(assert (=> b!6813905 m!7559760))

(assert (=> b!6813905 m!7559760))

(declare-fun m!7559762 () Bool)

(assert (=> b!6813905 m!7559762))

(declare-fun m!7559764 () Bool)

(assert (=> b!6813905 m!7559764))

(assert (=> b!6813905 m!7559752))

(assert (=> b!6813905 m!7559752))

(declare-fun m!7559766 () Bool)

(assert (=> b!6813916 m!7559766))

(check-sat (not b!6813895) (not b!6813914) (not start!659264) (not b!6813910) (not b!6813905) (not b!6813929) (not b!6813926) (not b!6813921) (not b!6813901) (not b!6813904) (not b!6813923) (not b!6813907) (not b!6813918) (not b!6813915) (not b!6813894) (not b!6813906) (not b!6813900) (not b!6813916) (not setNonEmpty!46741) (not b!6813911) (not b!6813920) (not b!6813922) (not b!6813908) (not b!6813924) (not b!6813912) tp_is_empty!42515 (not b!6813899) (not b!6813913) (not b!6813903) (not b!6813893) (not b!6813925) (not b!6813909) (not b!6813919))
(check-sat)
