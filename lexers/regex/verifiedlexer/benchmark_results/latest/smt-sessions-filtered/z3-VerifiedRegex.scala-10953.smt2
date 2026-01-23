; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566846 () Bool)

(assert start!566846)

(declare-fun b!5395762 () Bool)

(assert (=> b!5395762 true))

(assert (=> b!5395762 true))

(declare-fun lambda!280608 () Int)

(declare-fun lambda!280607 () Int)

(assert (=> b!5395762 (not (= lambda!280608 lambda!280607))))

(assert (=> b!5395762 true))

(assert (=> b!5395762 true))

(declare-fun b!5395764 () Bool)

(assert (=> b!5395764 true))

(declare-fun b!5395791 () Bool)

(assert (=> b!5395791 true))

(declare-fun b!5395749 () Bool)

(declare-fun e!3345921 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30576 0))(
  ( (C!30577 (val!24990 Int)) )
))
(declare-datatypes ((Regex!15153 0))(
  ( (ElementMatch!15153 (c!940317 C!30576)) (Concat!23998 (regOne!30818 Regex!15153) (regTwo!30818 Regex!15153)) (EmptyExpr!15153) (Star!15153 (reg!15482 Regex!15153)) (EmptyLang!15153) (Union!15153 (regOne!30819 Regex!15153) (regTwo!30819 Regex!15153)) )
))
(declare-datatypes ((List!61758 0))(
  ( (Nil!61634) (Cons!61634 (h!68082 Regex!15153) (t!374981 List!61758)) )
))
(declare-datatypes ((Context!9074 0))(
  ( (Context!9075 (exprs!5037 List!61758)) )
))
(declare-fun lt!2198904 () (InoxSet Context!9074))

(declare-datatypes ((List!61759 0))(
  ( (Nil!61635) (Cons!61635 (h!68083 C!30576) (t!374982 List!61759)) )
))
(declare-fun s!2326 () List!61759)

(declare-fun matchZipper!1397 ((InoxSet Context!9074) List!61759) Bool)

(assert (=> b!5395749 (= e!3345921 (not (matchZipper!1397 lt!2198904 (t!374982 s!2326))))))

(declare-fun res!2293336 () Bool)

(declare-fun e!3345898 () Bool)

(assert (=> start!566846 (=> (not res!2293336) (not e!3345898))))

(declare-fun r!7292 () Regex!15153)

(declare-fun validRegex!6889 (Regex!15153) Bool)

(assert (=> start!566846 (= res!2293336 (validRegex!6889 r!7292))))

(assert (=> start!566846 e!3345898))

(declare-fun e!3345906 () Bool)

(assert (=> start!566846 e!3345906))

(declare-fun condSetEmpty!35087 () Bool)

(declare-fun z!1189 () (InoxSet Context!9074))

(assert (=> start!566846 (= condSetEmpty!35087 (= z!1189 ((as const (Array Context!9074 Bool)) false)))))

(declare-fun setRes!35087 () Bool)

(assert (=> start!566846 setRes!35087))

(declare-fun e!3345910 () Bool)

(assert (=> start!566846 e!3345910))

(declare-fun e!3345901 () Bool)

(assert (=> start!566846 e!3345901))

(declare-fun b!5395750 () Bool)

(declare-fun e!3345907 () Bool)

(declare-fun e!3345902 () Bool)

(assert (=> b!5395750 (= e!3345907 (not e!3345902))))

(declare-fun res!2293324 () Bool)

(assert (=> b!5395750 (=> res!2293324 e!3345902)))

(declare-datatypes ((List!61760 0))(
  ( (Nil!61636) (Cons!61636 (h!68084 Context!9074) (t!374983 List!61760)) )
))
(declare-fun zl!343 () List!61760)

(get-info :version)

(assert (=> b!5395750 (= res!2293324 (not ((_ is Cons!61636) zl!343)))))

(declare-fun lt!2198890 () Bool)

(declare-fun matchRSpec!2256 (Regex!15153 List!61759) Bool)

(assert (=> b!5395750 (= lt!2198890 (matchRSpec!2256 r!7292 s!2326))))

(declare-fun matchR!7338 (Regex!15153 List!61759) Bool)

(assert (=> b!5395750 (= lt!2198890 (matchR!7338 r!7292 s!2326))))

(declare-datatypes ((Unit!154134 0))(
  ( (Unit!154135) )
))
(declare-fun lt!2198907 () Unit!154134)

(declare-fun mainMatchTheorem!2256 (Regex!15153 List!61759) Unit!154134)

(assert (=> b!5395750 (= lt!2198907 (mainMatchTheorem!2256 r!7292 s!2326))))

(declare-fun b!5395751 () Bool)

(declare-fun e!3345922 () Unit!154134)

(declare-fun Unit!154136 () Unit!154134)

(assert (=> b!5395751 (= e!3345922 Unit!154136)))

(declare-fun lt!2198925 () (InoxSet Context!9074))

(declare-fun lt!2198910 () Unit!154134)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!390 ((InoxSet Context!9074) (InoxSet Context!9074) List!61759) Unit!154134)

(assert (=> b!5395751 (= lt!2198910 (lemmaZipperConcatMatchesSameAsBothZippers!390 lt!2198925 lt!2198904 (t!374982 s!2326)))))

(declare-fun res!2293325 () Bool)

(assert (=> b!5395751 (= res!2293325 (matchZipper!1397 lt!2198925 (t!374982 s!2326)))))

(declare-fun e!3345918 () Bool)

(assert (=> b!5395751 (=> res!2293325 e!3345918)))

(assert (=> b!5395751 (= (matchZipper!1397 ((_ map or) lt!2198925 lt!2198904) (t!374982 s!2326)) e!3345918)))

(declare-fun b!5395752 () Bool)

(declare-fun e!3345914 () Bool)

(declare-fun e!3345912 () Bool)

(assert (=> b!5395752 (= e!3345914 e!3345912)))

(declare-fun res!2293328 () Bool)

(assert (=> b!5395752 (=> res!2293328 e!3345912)))

(declare-fun lt!2198922 () (InoxSet Context!9074))

(declare-fun lt!2198901 () (InoxSet Context!9074))

(assert (=> b!5395752 (= res!2293328 (not (= lt!2198922 lt!2198901)))))

(declare-fun lt!2198900 () Context!9074)

(declare-fun lt!2198913 () (InoxSet Context!9074))

(declare-fun lambda!280609 () Int)

(declare-fun flatMap!880 ((InoxSet Context!9074) Int) (InoxSet Context!9074))

(declare-fun derivationStepZipperUp!525 (Context!9074 C!30576) (InoxSet Context!9074))

(assert (=> b!5395752 (= (flatMap!880 lt!2198913 lambda!280609) (derivationStepZipperUp!525 lt!2198900 (h!68083 s!2326)))))

(declare-fun lt!2198898 () Unit!154134)

(declare-fun lemmaFlatMapOnSingletonSet!412 ((InoxSet Context!9074) Context!9074 Int) Unit!154134)

(assert (=> b!5395752 (= lt!2198898 (lemmaFlatMapOnSingletonSet!412 lt!2198913 lt!2198900 lambda!280609))))

(declare-fun lt!2198917 () (InoxSet Context!9074))

(assert (=> b!5395752 (= lt!2198917 (derivationStepZipperUp!525 lt!2198900 (h!68083 s!2326)))))

(declare-fun derivationStepZipper!1392 ((InoxSet Context!9074) C!30576) (InoxSet Context!9074))

(assert (=> b!5395752 (= lt!2198922 (derivationStepZipper!1392 lt!2198913 (h!68083 s!2326)))))

(assert (=> b!5395752 (= lt!2198913 (store ((as const (Array Context!9074 Bool)) false) lt!2198900 true))))

(declare-fun lt!2198895 () List!61758)

(assert (=> b!5395752 (= lt!2198900 (Context!9075 (Cons!61634 (reg!15482 (regOne!30818 r!7292)) lt!2198895)))))

(declare-fun b!5395753 () Bool)

(declare-fun res!2293322 () Bool)

(assert (=> b!5395753 (=> res!2293322 e!3345902)))

(assert (=> b!5395753 (= res!2293322 (not ((_ is Cons!61634) (exprs!5037 (h!68084 zl!343)))))))

(declare-fun b!5395754 () Bool)

(declare-fun e!3345908 () Bool)

(declare-fun tp!1493601 () Bool)

(assert (=> b!5395754 (= e!3345908 tp!1493601)))

(declare-fun b!5395755 () Bool)

(declare-fun e!3345899 () Bool)

(declare-fun e!3345905 () Bool)

(assert (=> b!5395755 (= e!3345899 e!3345905)))

(declare-fun res!2293334 () Bool)

(assert (=> b!5395755 (=> res!2293334 e!3345905)))

(assert (=> b!5395755 (= res!2293334 e!3345921)))

(declare-fun res!2293315 () Bool)

(assert (=> b!5395755 (=> (not res!2293315) (not e!3345921))))

(declare-fun lt!2198885 () Bool)

(assert (=> b!5395755 (= res!2293315 (not lt!2198885))))

(assert (=> b!5395755 (= lt!2198885 (matchZipper!1397 lt!2198925 (t!374982 s!2326)))))

(declare-fun b!5395756 () Bool)

(declare-fun e!3345915 () Bool)

(assert (=> b!5395756 (= e!3345915 e!3345914)))

(declare-fun res!2293317 () Bool)

(assert (=> b!5395756 (=> res!2293317 e!3345914)))

(assert (=> b!5395756 (= res!2293317 (not (= lt!2198925 lt!2198901)))))

(declare-fun lt!2198926 () Context!9074)

(declare-fun derivationStepZipperDown!601 (Regex!15153 Context!9074 C!30576) (InoxSet Context!9074))

(assert (=> b!5395756 (= lt!2198901 (derivationStepZipperDown!601 (reg!15482 (regOne!30818 r!7292)) lt!2198926 (h!68083 s!2326)))))

(assert (=> b!5395756 (= lt!2198926 (Context!9075 lt!2198895))))

(declare-fun lt!2198905 () Regex!15153)

(assert (=> b!5395756 (= lt!2198895 (Cons!61634 lt!2198905 (t!374981 (exprs!5037 (h!68084 zl!343)))))))

(assert (=> b!5395756 (= lt!2198905 (Star!15153 (reg!15482 (regOne!30818 r!7292))))))

(declare-fun b!5395757 () Bool)

(declare-fun res!2293321 () Bool)

(assert (=> b!5395757 (=> res!2293321 e!3345902)))

(declare-fun generalisedUnion!1082 (List!61758) Regex!15153)

(declare-fun unfocusZipperList!595 (List!61760) List!61758)

(assert (=> b!5395757 (= res!2293321 (not (= r!7292 (generalisedUnion!1082 (unfocusZipperList!595 zl!343)))))))

(declare-fun b!5395758 () Bool)

(declare-fun tp_is_empty!39559 () Bool)

(assert (=> b!5395758 (= e!3345906 tp_is_empty!39559)))

(declare-fun b!5395759 () Bool)

(declare-fun res!2293337 () Bool)

(assert (=> b!5395759 (=> res!2293337 e!3345902)))

(assert (=> b!5395759 (= res!2293337 (or ((_ is EmptyExpr!15153) r!7292) ((_ is EmptyLang!15153) r!7292) ((_ is ElementMatch!15153) r!7292) ((_ is Union!15153) r!7292) (not ((_ is Concat!23998) r!7292))))))

(declare-fun b!5395760 () Bool)

(declare-fun res!2293316 () Bool)

(assert (=> b!5395760 (=> res!2293316 e!3345915)))

(assert (=> b!5395760 (= res!2293316 (or ((_ is Concat!23998) (regOne!30818 r!7292)) (not ((_ is Star!15153) (regOne!30818 r!7292)))))))

(declare-fun b!5395761 () Bool)

(declare-fun Unit!154137 () Unit!154134)

(assert (=> b!5395761 (= e!3345922 Unit!154137)))

(declare-fun e!3345904 () Bool)

(assert (=> b!5395762 (= e!3345902 e!3345904)))

(declare-fun res!2293303 () Bool)

(assert (=> b!5395762 (=> res!2293303 e!3345904)))

(declare-fun lt!2198924 () Bool)

(assert (=> b!5395762 (= res!2293303 (or (not (= lt!2198890 lt!2198924)) ((_ is Nil!61635) s!2326)))))

(declare-fun Exists!2334 (Int) Bool)

(assert (=> b!5395762 (= (Exists!2334 lambda!280607) (Exists!2334 lambda!280608))))

(declare-fun lt!2198893 () Unit!154134)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!988 (Regex!15153 Regex!15153 List!61759) Unit!154134)

(assert (=> b!5395762 (= lt!2198893 (lemmaExistCutMatchRandMatchRSpecEquivalent!988 (regOne!30818 r!7292) (regTwo!30818 r!7292) s!2326))))

(assert (=> b!5395762 (= lt!2198924 (Exists!2334 lambda!280607))))

(declare-datatypes ((tuple2!64704 0))(
  ( (tuple2!64705 (_1!35655 List!61759) (_2!35655 List!61759)) )
))
(declare-datatypes ((Option!15264 0))(
  ( (None!15263) (Some!15263 (v!51292 tuple2!64704)) )
))
(declare-fun isDefined!11967 (Option!15264) Bool)

(declare-fun findConcatSeparation!1678 (Regex!15153 Regex!15153 List!61759 List!61759 List!61759) Option!15264)

(assert (=> b!5395762 (= lt!2198924 (isDefined!11967 (findConcatSeparation!1678 (regOne!30818 r!7292) (regTwo!30818 r!7292) Nil!61635 s!2326 s!2326)))))

(declare-fun lt!2198918 () Unit!154134)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1442 (Regex!15153 Regex!15153 List!61759) Unit!154134)

(assert (=> b!5395762 (= lt!2198918 (lemmaFindConcatSeparationEquivalentToExists!1442 (regOne!30818 r!7292) (regTwo!30818 r!7292) s!2326))))

(declare-fun b!5395763 () Bool)

(declare-fun e!3345919 () Bool)

(declare-fun e!3345917 () Bool)

(assert (=> b!5395763 (= e!3345919 e!3345917)))

(declare-fun res!2293318 () Bool)

(assert (=> b!5395763 (=> res!2293318 e!3345917)))

(declare-fun lt!2198915 () List!61760)

(declare-fun unfocusZipper!895 (List!61760) Regex!15153)

(assert (=> b!5395763 (= res!2293318 (not (= (unfocusZipper!895 lt!2198915) (reg!15482 (regOne!30818 r!7292)))))))

(declare-fun lt!2198896 () Context!9074)

(assert (=> b!5395763 (= lt!2198915 (Cons!61636 lt!2198896 Nil!61636))))

(declare-fun lt!2198899 () (InoxSet Context!9074))

(assert (=> b!5395763 (= (flatMap!880 lt!2198899 lambda!280609) (derivationStepZipperUp!525 lt!2198926 (h!68083 s!2326)))))

(declare-fun lt!2198909 () Unit!154134)

(assert (=> b!5395763 (= lt!2198909 (lemmaFlatMapOnSingletonSet!412 lt!2198899 lt!2198926 lambda!280609))))

(declare-fun lt!2198923 () (InoxSet Context!9074))

(assert (=> b!5395763 (= (flatMap!880 lt!2198923 lambda!280609) (derivationStepZipperUp!525 lt!2198896 (h!68083 s!2326)))))

(declare-fun lt!2198927 () Unit!154134)

(assert (=> b!5395763 (= lt!2198927 (lemmaFlatMapOnSingletonSet!412 lt!2198923 lt!2198896 lambda!280609))))

(declare-fun lt!2198921 () (InoxSet Context!9074))

(assert (=> b!5395763 (= lt!2198921 (derivationStepZipperUp!525 lt!2198926 (h!68083 s!2326)))))

(declare-fun lt!2198912 () (InoxSet Context!9074))

(assert (=> b!5395763 (= lt!2198912 (derivationStepZipperUp!525 lt!2198896 (h!68083 s!2326)))))

(assert (=> b!5395763 (= lt!2198899 (store ((as const (Array Context!9074 Bool)) false) lt!2198926 true))))

(assert (=> b!5395763 (= lt!2198923 (store ((as const (Array Context!9074 Bool)) false) lt!2198896 true))))

(declare-fun lt!2198892 () List!61758)

(assert (=> b!5395763 (= lt!2198896 (Context!9075 lt!2198892))))

(assert (=> b!5395763 (= lt!2198892 (Cons!61634 (reg!15482 (regOne!30818 r!7292)) Nil!61634))))

(assert (=> b!5395764 (= e!3345904 e!3345915)))

(declare-fun res!2293332 () Bool)

(assert (=> b!5395764 (=> res!2293332 e!3345915)))

(assert (=> b!5395764 (= res!2293332 (or (and ((_ is ElementMatch!15153) (regOne!30818 r!7292)) (= (c!940317 (regOne!30818 r!7292)) (h!68083 s!2326))) ((_ is Union!15153) (regOne!30818 r!7292))))))

(declare-fun lt!2198929 () Unit!154134)

(assert (=> b!5395764 (= lt!2198929 e!3345922)))

(declare-fun c!940316 () Bool)

(declare-fun lt!2198911 () Bool)

(assert (=> b!5395764 (= c!940316 lt!2198911)))

(declare-fun nullable!5322 (Regex!15153) Bool)

(assert (=> b!5395764 (= lt!2198911 (nullable!5322 (h!68082 (exprs!5037 (h!68084 zl!343)))))))

(assert (=> b!5395764 (= (flatMap!880 z!1189 lambda!280609) (derivationStepZipperUp!525 (h!68084 zl!343) (h!68083 s!2326)))))

(declare-fun lt!2198928 () Unit!154134)

(assert (=> b!5395764 (= lt!2198928 (lemmaFlatMapOnSingletonSet!412 z!1189 (h!68084 zl!343) lambda!280609))))

(declare-fun lt!2198897 () Context!9074)

(assert (=> b!5395764 (= lt!2198904 (derivationStepZipperUp!525 lt!2198897 (h!68083 s!2326)))))

(assert (=> b!5395764 (= lt!2198925 (derivationStepZipperDown!601 (h!68082 (exprs!5037 (h!68084 zl!343))) lt!2198897 (h!68083 s!2326)))))

(assert (=> b!5395764 (= lt!2198897 (Context!9075 (t!374981 (exprs!5037 (h!68084 zl!343)))))))

(declare-fun lt!2198891 () (InoxSet Context!9074))

(assert (=> b!5395764 (= lt!2198891 (derivationStepZipperUp!525 (Context!9075 (Cons!61634 (h!68082 (exprs!5037 (h!68084 zl!343))) (t!374981 (exprs!5037 (h!68084 zl!343))))) (h!68083 s!2326)))))

(declare-fun b!5395765 () Bool)

(declare-fun res!2293309 () Bool)

(assert (=> b!5395765 (=> res!2293309 e!3345905)))

(declare-fun lt!2198889 () Bool)

(assert (=> b!5395765 (= res!2293309 (or (not lt!2198885) (not lt!2198889)))))

(declare-fun b!5395766 () Bool)

(assert (=> b!5395766 (= e!3345918 (matchZipper!1397 lt!2198904 (t!374982 s!2326)))))

(declare-fun b!5395767 () Bool)

(declare-fun res!2293312 () Bool)

(assert (=> b!5395767 (=> res!2293312 e!3345902)))

(declare-fun generalisedConcat!822 (List!61758) Regex!15153)

(assert (=> b!5395767 (= res!2293312 (not (= r!7292 (generalisedConcat!822 (exprs!5037 (h!68084 zl!343))))))))

(declare-fun b!5395768 () Bool)

(declare-fun e!3345909 () Bool)

(declare-fun tp!1493598 () Bool)

(assert (=> b!5395768 (= e!3345909 tp!1493598)))

(declare-fun b!5395769 () Bool)

(assert (=> b!5395769 (= e!3345917 e!3345899)))

(declare-fun res!2293323 () Bool)

(assert (=> b!5395769 (=> res!2293323 e!3345899)))

(assert (=> b!5395769 (= res!2293323 lt!2198890)))

(declare-fun lt!2198906 () Regex!15153)

(assert (=> b!5395769 (= (matchR!7338 lt!2198906 s!2326) (matchRSpec!2256 lt!2198906 s!2326))))

(declare-fun lt!2198887 () Unit!154134)

(assert (=> b!5395769 (= lt!2198887 (mainMatchTheorem!2256 lt!2198906 s!2326))))

(declare-fun b!5395770 () Bool)

(declare-fun e!3345913 () Bool)

(assert (=> b!5395770 (= e!3345912 e!3345913)))

(declare-fun res!2293330 () Bool)

(assert (=> b!5395770 (=> res!2293330 e!3345913)))

(assert (=> b!5395770 (= res!2293330 (not (= lt!2198889 (matchZipper!1397 lt!2198922 (t!374982 s!2326)))))))

(assert (=> b!5395770 (= lt!2198889 (matchZipper!1397 lt!2198913 s!2326))))

(declare-fun b!5395771 () Bool)

(declare-fun res!2293319 () Bool)

(declare-fun e!3345900 () Bool)

(assert (=> b!5395771 (=> res!2293319 e!3345900)))

(declare-fun lt!2198914 () tuple2!64704)

(assert (=> b!5395771 (= res!2293319 (not (matchZipper!1397 lt!2198923 (_1!35655 lt!2198914))))))

(declare-fun b!5395772 () Bool)

(declare-fun tp!1493599 () Bool)

(declare-fun tp!1493603 () Bool)

(assert (=> b!5395772 (= e!3345906 (and tp!1493599 tp!1493603))))

(declare-fun b!5395773 () Bool)

(declare-fun res!2293331 () Bool)

(assert (=> b!5395773 (=> res!2293331 e!3345917)))

(declare-fun lt!2198919 () Regex!15153)

(assert (=> b!5395773 (= res!2293331 (not (= (unfocusZipper!895 (Cons!61636 lt!2198926 Nil!61636)) lt!2198919)))))

(declare-fun b!5395774 () Bool)

(assert (=> b!5395774 (= e!3345898 e!3345907)))

(declare-fun res!2293308 () Bool)

(assert (=> b!5395774 (=> (not res!2293308) (not e!3345907))))

(declare-fun lt!2198908 () Regex!15153)

(assert (=> b!5395774 (= res!2293308 (= r!7292 lt!2198908))))

(assert (=> b!5395774 (= lt!2198908 (unfocusZipper!895 zl!343))))

(declare-fun setNonEmpty!35087 () Bool)

(declare-fun tp!1493605 () Bool)

(declare-fun setElem!35087 () Context!9074)

(declare-fun inv!81129 (Context!9074) Bool)

(assert (=> setNonEmpty!35087 (= setRes!35087 (and tp!1493605 (inv!81129 setElem!35087) e!3345909))))

(declare-fun setRest!35087 () (InoxSet Context!9074))

(assert (=> setNonEmpty!35087 (= z!1189 ((_ map or) (store ((as const (Array Context!9074 Bool)) false) setElem!35087 true) setRest!35087))))

(declare-fun b!5395775 () Bool)

(declare-fun res!2293310 () Bool)

(assert (=> b!5395775 (=> res!2293310 e!3345915)))

(declare-fun e!3345916 () Bool)

(assert (=> b!5395775 (= res!2293310 e!3345916)))

(declare-fun res!2293314 () Bool)

(assert (=> b!5395775 (=> (not res!2293314) (not e!3345916))))

(assert (=> b!5395775 (= res!2293314 ((_ is Concat!23998) (regOne!30818 r!7292)))))

(declare-fun b!5395776 () Bool)

(assert (=> b!5395776 (= e!3345916 (nullable!5322 (regOne!30818 (regOne!30818 r!7292))))))

(declare-fun b!5395777 () Bool)

(declare-fun res!2293305 () Bool)

(assert (=> b!5395777 (=> res!2293305 e!3345899)))

(assert (=> b!5395777 (= res!2293305 (not (matchZipper!1397 z!1189 s!2326)))))

(declare-fun b!5395778 () Bool)

(declare-fun e!3345911 () Bool)

(assert (=> b!5395778 (= e!3345911 e!3345919)))

(declare-fun res!2293333 () Bool)

(assert (=> b!5395778 (=> res!2293333 e!3345919)))

(assert (=> b!5395778 (= res!2293333 (not (= (unfocusZipper!895 (Cons!61636 lt!2198900 Nil!61636)) lt!2198906)))))

(assert (=> b!5395778 (= lt!2198906 (Concat!23998 (reg!15482 (regOne!30818 r!7292)) lt!2198919))))

(declare-fun setIsEmpty!35087 () Bool)

(assert (=> setIsEmpty!35087 setRes!35087))

(declare-fun b!5395779 () Bool)

(declare-fun res!2293313 () Bool)

(assert (=> b!5395779 (=> res!2293313 e!3345902)))

(declare-fun isEmpty!33629 (List!61760) Bool)

(assert (=> b!5395779 (= res!2293313 (not (isEmpty!33629 (t!374983 zl!343))))))

(declare-fun b!5395780 () Bool)

(declare-fun res!2293326 () Bool)

(assert (=> b!5395780 (=> res!2293326 e!3345899)))

(assert (=> b!5395780 (= res!2293326 (not lt!2198911))))

(declare-fun b!5395781 () Bool)

(declare-fun res!2293327 () Bool)

(assert (=> b!5395781 (=> (not res!2293327) (not e!3345898))))

(declare-fun toList!8937 ((InoxSet Context!9074)) List!61760)

(assert (=> b!5395781 (= res!2293327 (= (toList!8937 z!1189) zl!343))))

(declare-fun b!5395782 () Bool)

(declare-fun tp!1493604 () Bool)

(assert (=> b!5395782 (= e!3345910 (and (inv!81129 (h!68084 zl!343)) e!3345908 tp!1493604))))

(declare-fun b!5395783 () Bool)

(assert (=> b!5395783 (= e!3345913 e!3345911)))

(declare-fun res!2293311 () Bool)

(assert (=> b!5395783 (=> res!2293311 e!3345911)))

(assert (=> b!5395783 (= res!2293311 (not (= r!7292 lt!2198919)))))

(assert (=> b!5395783 (= lt!2198919 (Concat!23998 lt!2198905 (regTwo!30818 r!7292)))))

(declare-fun b!5395784 () Bool)

(declare-fun e!3345920 () Bool)

(assert (=> b!5395784 (= e!3345920 e!3345900)))

(declare-fun res!2293320 () Bool)

(assert (=> b!5395784 (=> res!2293320 e!3345900)))

(declare-fun lt!2198916 () List!61759)

(assert (=> b!5395784 (= res!2293320 (not (= s!2326 lt!2198916)))))

(declare-fun ++!13479 (List!61759 List!61759) List!61759)

(assert (=> b!5395784 (= lt!2198916 (++!13479 (_1!35655 lt!2198914) (_2!35655 lt!2198914)))))

(declare-fun lt!2198920 () Option!15264)

(declare-fun get!21232 (Option!15264) tuple2!64704)

(assert (=> b!5395784 (= lt!2198914 (get!21232 lt!2198920))))

(assert (=> b!5395784 (isDefined!11967 lt!2198920)))

(declare-fun findConcatSeparationZippers!10 ((InoxSet Context!9074) (InoxSet Context!9074) List!61759 List!61759 List!61759) Option!15264)

(assert (=> b!5395784 (= lt!2198920 (findConcatSeparationZippers!10 lt!2198923 lt!2198899 Nil!61635 s!2326 s!2326))))

(declare-fun lt!2198903 () Unit!154134)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!10 ((InoxSet Context!9074) Context!9074 List!61759) Unit!154134)

(assert (=> b!5395784 (= lt!2198903 (lemmaConcatZipperMatchesStringThenFindConcatDefined!10 lt!2198923 lt!2198926 s!2326))))

(declare-fun b!5395785 () Bool)

(declare-fun tp!1493600 () Bool)

(declare-fun tp!1493597 () Bool)

(assert (=> b!5395785 (= e!3345906 (and tp!1493600 tp!1493597))))

(declare-fun b!5395786 () Bool)

(declare-fun e!3345903 () Bool)

(assert (=> b!5395786 (= e!3345903 true)))

(declare-fun lt!2198894 () List!61760)

(assert (=> b!5395786 (= lt!2198894 (toList!8937 lt!2198899))))

(declare-fun b!5395787 () Bool)

(assert (=> b!5395787 (= e!3345900 e!3345903)))

(declare-fun res!2293335 () Bool)

(assert (=> b!5395787 (=> res!2293335 e!3345903)))

(assert (=> b!5395787 (= res!2293335 (not (validRegex!6889 lt!2198919)))))

(assert (=> b!5395787 (matchR!7338 (reg!15482 (regOne!30818 r!7292)) (_1!35655 lt!2198914))))

(declare-fun lt!2198888 () Unit!154134)

(declare-fun theoremZipperRegexEquiv!467 ((InoxSet Context!9074) List!61760 Regex!15153 List!61759) Unit!154134)

(assert (=> b!5395787 (= lt!2198888 (theoremZipperRegexEquiv!467 lt!2198923 lt!2198915 (reg!15482 (regOne!30818 r!7292)) (_1!35655 lt!2198914)))))

(declare-fun ++!13480 (List!61758 List!61758) List!61758)

(assert (=> b!5395787 (matchZipper!1397 (store ((as const (Array Context!9074 Bool)) false) (Context!9075 (++!13480 lt!2198892 lt!2198895)) true) lt!2198916)))

(declare-fun lt!2198902 () Unit!154134)

(declare-fun lambda!280611 () Int)

(declare-fun lemmaConcatPreservesForall!178 (List!61758 List!61758 Int) Unit!154134)

(assert (=> b!5395787 (= lt!2198902 (lemmaConcatPreservesForall!178 lt!2198892 lt!2198895 lambda!280611))))

(declare-fun lt!2198930 () Unit!154134)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!26 (Context!9074 Context!9074 List!61759 List!61759) Unit!154134)

(assert (=> b!5395787 (= lt!2198930 (lemmaConcatenateContextMatchesConcatOfStrings!26 lt!2198896 lt!2198926 (_1!35655 lt!2198914) (_2!35655 lt!2198914)))))

(declare-fun b!5395788 () Bool)

(declare-fun res!2293307 () Bool)

(assert (=> b!5395788 (=> res!2293307 e!3345900)))

(assert (=> b!5395788 (= res!2293307 (not (matchZipper!1397 lt!2198899 (_2!35655 lt!2198914))))))

(declare-fun b!5395789 () Bool)

(declare-fun tp!1493602 () Bool)

(assert (=> b!5395789 (= e!3345906 tp!1493602)))

(declare-fun b!5395790 () Bool)

(declare-fun tp!1493596 () Bool)

(assert (=> b!5395790 (= e!3345901 (and tp_is_empty!39559 tp!1493596))))

(assert (=> b!5395791 (= e!3345905 e!3345920)))

(declare-fun res!2293304 () Bool)

(assert (=> b!5395791 (=> res!2293304 e!3345920)))

(declare-fun appendTo!12 ((InoxSet Context!9074) Context!9074) (InoxSet Context!9074))

(assert (=> b!5395791 (= res!2293304 (not (= (appendTo!12 lt!2198923 lt!2198926) lt!2198913)))))

(declare-fun lambda!280610 () Int)

(declare-fun map!14114 ((InoxSet Context!9074) Int) (InoxSet Context!9074))

(assert (=> b!5395791 (= (map!14114 lt!2198923 lambda!280610) (store ((as const (Array Context!9074 Bool)) false) (Context!9075 (++!13480 lt!2198892 lt!2198895)) true))))

(declare-fun lt!2198884 () Unit!154134)

(assert (=> b!5395791 (= lt!2198884 (lemmaConcatPreservesForall!178 lt!2198892 lt!2198895 lambda!280611))))

(declare-fun lt!2198886 () Unit!154134)

(declare-fun lemmaMapOnSingletonSet!12 ((InoxSet Context!9074) Context!9074 Int) Unit!154134)

(assert (=> b!5395791 (= lt!2198886 (lemmaMapOnSingletonSet!12 lt!2198923 lt!2198896 lambda!280610))))

(declare-fun b!5395792 () Bool)

(declare-fun res!2293329 () Bool)

(assert (=> b!5395792 (=> res!2293329 e!3345904)))

(declare-fun isEmpty!33630 (List!61758) Bool)

(assert (=> b!5395792 (= res!2293329 (isEmpty!33630 (t!374981 (exprs!5037 (h!68084 zl!343)))))))

(declare-fun b!5395793 () Bool)

(declare-fun res!2293306 () Bool)

(assert (=> b!5395793 (=> res!2293306 e!3345913)))

(assert (=> b!5395793 (= res!2293306 (not (= lt!2198908 r!7292)))))

(assert (= (and start!566846 res!2293336) b!5395781))

(assert (= (and b!5395781 res!2293327) b!5395774))

(assert (= (and b!5395774 res!2293308) b!5395750))

(assert (= (and b!5395750 (not res!2293324)) b!5395779))

(assert (= (and b!5395779 (not res!2293313)) b!5395767))

(assert (= (and b!5395767 (not res!2293312)) b!5395753))

(assert (= (and b!5395753 (not res!2293322)) b!5395757))

(assert (= (and b!5395757 (not res!2293321)) b!5395759))

(assert (= (and b!5395759 (not res!2293337)) b!5395762))

(assert (= (and b!5395762 (not res!2293303)) b!5395792))

(assert (= (and b!5395792 (not res!2293329)) b!5395764))

(assert (= (and b!5395764 c!940316) b!5395751))

(assert (= (and b!5395764 (not c!940316)) b!5395761))

(assert (= (and b!5395751 (not res!2293325)) b!5395766))

(assert (= (and b!5395764 (not res!2293332)) b!5395775))

(assert (= (and b!5395775 res!2293314) b!5395776))

(assert (= (and b!5395775 (not res!2293310)) b!5395760))

(assert (= (and b!5395760 (not res!2293316)) b!5395756))

(assert (= (and b!5395756 (not res!2293317)) b!5395752))

(assert (= (and b!5395752 (not res!2293328)) b!5395770))

(assert (= (and b!5395770 (not res!2293330)) b!5395793))

(assert (= (and b!5395793 (not res!2293306)) b!5395783))

(assert (= (and b!5395783 (not res!2293311)) b!5395778))

(assert (= (and b!5395778 (not res!2293333)) b!5395763))

(assert (= (and b!5395763 (not res!2293318)) b!5395773))

(assert (= (and b!5395773 (not res!2293331)) b!5395769))

(assert (= (and b!5395769 (not res!2293323)) b!5395777))

(assert (= (and b!5395777 (not res!2293305)) b!5395780))

(assert (= (and b!5395780 (not res!2293326)) b!5395755))

(assert (= (and b!5395755 res!2293315) b!5395749))

(assert (= (and b!5395755 (not res!2293334)) b!5395765))

(assert (= (and b!5395765 (not res!2293309)) b!5395791))

(assert (= (and b!5395791 (not res!2293304)) b!5395784))

(assert (= (and b!5395784 (not res!2293320)) b!5395771))

(assert (= (and b!5395771 (not res!2293319)) b!5395788))

(assert (= (and b!5395788 (not res!2293307)) b!5395787))

(assert (= (and b!5395787 (not res!2293335)) b!5395786))

(assert (= (and start!566846 ((_ is ElementMatch!15153) r!7292)) b!5395758))

(assert (= (and start!566846 ((_ is Concat!23998) r!7292)) b!5395785))

(assert (= (and start!566846 ((_ is Star!15153) r!7292)) b!5395789))

(assert (= (and start!566846 ((_ is Union!15153) r!7292)) b!5395772))

(assert (= (and start!566846 condSetEmpty!35087) setIsEmpty!35087))

(assert (= (and start!566846 (not condSetEmpty!35087)) setNonEmpty!35087))

(assert (= setNonEmpty!35087 b!5395768))

(assert (= b!5395782 b!5395754))

(assert (= (and start!566846 ((_ is Cons!61636) zl!343)) b!5395782))

(assert (= (and start!566846 ((_ is Cons!61635) s!2326)) b!5395790))

(declare-fun m!6420670 () Bool)

(assert (=> b!5395773 m!6420670))

(declare-fun m!6420672 () Bool)

(assert (=> setNonEmpty!35087 m!6420672))

(declare-fun m!6420674 () Bool)

(assert (=> b!5395786 m!6420674))

(declare-fun m!6420676 () Bool)

(assert (=> b!5395764 m!6420676))

(declare-fun m!6420678 () Bool)

(assert (=> b!5395764 m!6420678))

(declare-fun m!6420680 () Bool)

(assert (=> b!5395764 m!6420680))

(declare-fun m!6420682 () Bool)

(assert (=> b!5395764 m!6420682))

(declare-fun m!6420684 () Bool)

(assert (=> b!5395764 m!6420684))

(declare-fun m!6420686 () Bool)

(assert (=> b!5395764 m!6420686))

(declare-fun m!6420688 () Bool)

(assert (=> b!5395764 m!6420688))

(declare-fun m!6420690 () Bool)

(assert (=> b!5395781 m!6420690))

(declare-fun m!6420692 () Bool)

(assert (=> b!5395769 m!6420692))

(declare-fun m!6420694 () Bool)

(assert (=> b!5395769 m!6420694))

(declare-fun m!6420696 () Bool)

(assert (=> b!5395769 m!6420696))

(declare-fun m!6420698 () Bool)

(assert (=> b!5395784 m!6420698))

(declare-fun m!6420700 () Bool)

(assert (=> b!5395784 m!6420700))

(declare-fun m!6420702 () Bool)

(assert (=> b!5395784 m!6420702))

(declare-fun m!6420704 () Bool)

(assert (=> b!5395784 m!6420704))

(declare-fun m!6420706 () Bool)

(assert (=> b!5395784 m!6420706))

(declare-fun m!6420708 () Bool)

(assert (=> b!5395766 m!6420708))

(assert (=> b!5395749 m!6420708))

(declare-fun m!6420710 () Bool)

(assert (=> b!5395762 m!6420710))

(declare-fun m!6420712 () Bool)

(assert (=> b!5395762 m!6420712))

(declare-fun m!6420714 () Bool)

(assert (=> b!5395762 m!6420714))

(declare-fun m!6420716 () Bool)

(assert (=> b!5395762 m!6420716))

(declare-fun m!6420718 () Bool)

(assert (=> b!5395762 m!6420718))

(assert (=> b!5395762 m!6420714))

(assert (=> b!5395762 m!6420710))

(declare-fun m!6420720 () Bool)

(assert (=> b!5395762 m!6420720))

(declare-fun m!6420722 () Bool)

(assert (=> b!5395755 m!6420722))

(declare-fun m!6420724 () Bool)

(assert (=> b!5395770 m!6420724))

(declare-fun m!6420726 () Bool)

(assert (=> b!5395770 m!6420726))

(declare-fun m!6420728 () Bool)

(assert (=> b!5395752 m!6420728))

(declare-fun m!6420730 () Bool)

(assert (=> b!5395752 m!6420730))

(declare-fun m!6420732 () Bool)

(assert (=> b!5395752 m!6420732))

(declare-fun m!6420734 () Bool)

(assert (=> b!5395752 m!6420734))

(declare-fun m!6420736 () Bool)

(assert (=> b!5395752 m!6420736))

(declare-fun m!6420738 () Bool)

(assert (=> b!5395777 m!6420738))

(declare-fun m!6420740 () Bool)

(assert (=> b!5395778 m!6420740))

(declare-fun m!6420742 () Bool)

(assert (=> b!5395776 m!6420742))

(declare-fun m!6420744 () Bool)

(assert (=> b!5395788 m!6420744))

(declare-fun m!6420746 () Bool)

(assert (=> b!5395782 m!6420746))

(declare-fun m!6420748 () Bool)

(assert (=> b!5395791 m!6420748))

(declare-fun m!6420750 () Bool)

(assert (=> b!5395791 m!6420750))

(declare-fun m!6420752 () Bool)

(assert (=> b!5395791 m!6420752))

(declare-fun m!6420754 () Bool)

(assert (=> b!5395791 m!6420754))

(declare-fun m!6420756 () Bool)

(assert (=> b!5395791 m!6420756))

(declare-fun m!6420758 () Bool)

(assert (=> b!5395791 m!6420758))

(declare-fun m!6420760 () Bool)

(assert (=> b!5395779 m!6420760))

(declare-fun m!6420762 () Bool)

(assert (=> b!5395792 m!6420762))

(declare-fun m!6420764 () Bool)

(assert (=> b!5395771 m!6420764))

(declare-fun m!6420766 () Bool)

(assert (=> b!5395763 m!6420766))

(declare-fun m!6420768 () Bool)

(assert (=> b!5395763 m!6420768))

(declare-fun m!6420770 () Bool)

(assert (=> b!5395763 m!6420770))

(declare-fun m!6420772 () Bool)

(assert (=> b!5395763 m!6420772))

(declare-fun m!6420774 () Bool)

(assert (=> b!5395763 m!6420774))

(declare-fun m!6420776 () Bool)

(assert (=> b!5395763 m!6420776))

(declare-fun m!6420778 () Bool)

(assert (=> b!5395763 m!6420778))

(declare-fun m!6420780 () Bool)

(assert (=> b!5395763 m!6420780))

(declare-fun m!6420782 () Bool)

(assert (=> b!5395763 m!6420782))

(declare-fun m!6420784 () Bool)

(assert (=> b!5395751 m!6420784))

(assert (=> b!5395751 m!6420722))

(declare-fun m!6420786 () Bool)

(assert (=> b!5395751 m!6420786))

(declare-fun m!6420788 () Bool)

(assert (=> b!5395750 m!6420788))

(declare-fun m!6420790 () Bool)

(assert (=> b!5395750 m!6420790))

(declare-fun m!6420792 () Bool)

(assert (=> b!5395750 m!6420792))

(declare-fun m!6420794 () Bool)

(assert (=> b!5395757 m!6420794))

(assert (=> b!5395757 m!6420794))

(declare-fun m!6420796 () Bool)

(assert (=> b!5395757 m!6420796))

(declare-fun m!6420798 () Bool)

(assert (=> b!5395756 m!6420798))

(assert (=> b!5395787 m!6420752))

(declare-fun m!6420800 () Bool)

(assert (=> b!5395787 m!6420800))

(declare-fun m!6420802 () Bool)

(assert (=> b!5395787 m!6420802))

(declare-fun m!6420804 () Bool)

(assert (=> b!5395787 m!6420804))

(assert (=> b!5395787 m!6420756))

(declare-fun m!6420806 () Bool)

(assert (=> b!5395787 m!6420806))

(assert (=> b!5395787 m!6420758))

(declare-fun m!6420808 () Bool)

(assert (=> b!5395787 m!6420808))

(assert (=> b!5395787 m!6420756))

(declare-fun m!6420810 () Bool)

(assert (=> b!5395767 m!6420810))

(declare-fun m!6420812 () Bool)

(assert (=> start!566846 m!6420812))

(declare-fun m!6420814 () Bool)

(assert (=> b!5395774 m!6420814))

(check-sat (not b!5395774) (not b!5395771) (not b!5395752) (not b!5395784) (not b!5395785) (not b!5395779) (not b!5395750) (not b!5395788) (not b!5395756) (not setNonEmpty!35087) (not b!5395778) (not b!5395766) (not b!5395786) (not b!5395777) (not b!5395769) (not b!5395781) (not b!5395792) (not b!5395773) (not b!5395751) (not b!5395770) (not b!5395772) (not b!5395762) (not b!5395768) (not b!5395757) (not b!5395764) (not b!5395789) (not b!5395782) (not b!5395749) (not b!5395776) (not b!5395755) (not b!5395787) (not b!5395790) (not b!5395754) (not b!5395791) (not b!5395763) (not b!5395767) tp_is_empty!39559 (not start!566846))
(check-sat)
