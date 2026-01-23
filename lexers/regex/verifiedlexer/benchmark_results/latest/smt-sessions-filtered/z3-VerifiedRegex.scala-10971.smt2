; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!568122 () Bool)

(assert start!568122)

(declare-fun b!5410249 () Bool)

(assert (=> b!5410249 true))

(assert (=> b!5410249 true))

(declare-fun lambda!282428 () Int)

(declare-fun lambda!282427 () Int)

(assert (=> b!5410249 (not (= lambda!282428 lambda!282427))))

(assert (=> b!5410249 true))

(assert (=> b!5410249 true))

(declare-fun b!5410267 () Bool)

(assert (=> b!5410267 true))

(declare-fun b!5410285 () Bool)

(assert (=> b!5410285 true))

(declare-fun bs!1249548 () Bool)

(declare-fun b!5410282 () Bool)

(assert (= bs!1249548 (and b!5410282 b!5410249)))

(declare-datatypes ((C!30648 0))(
  ( (C!30649 (val!25026 Int)) )
))
(declare-datatypes ((Regex!15189 0))(
  ( (ElementMatch!15189 (c!943181 C!30648)) (Concat!24034 (regOne!30890 Regex!15189) (regTwo!30890 Regex!15189)) (EmptyExpr!15189) (Star!15189 (reg!15518 Regex!15189)) (EmptyLang!15189) (Union!15189 (regOne!30891 Regex!15189) (regTwo!30891 Regex!15189)) )
))
(declare-fun r!7292 () Regex!15189)

(declare-fun lt!2206378 () Regex!15189)

(declare-fun lambda!282432 () Int)

(assert (=> bs!1249548 (= (= lt!2206378 (regOne!30890 r!7292)) (= lambda!282432 lambda!282427))))

(assert (=> bs!1249548 (not (= lambda!282432 lambda!282428))))

(assert (=> b!5410282 true))

(assert (=> b!5410282 true))

(assert (=> b!5410282 true))

(declare-fun lambda!282433 () Int)

(assert (=> bs!1249548 (not (= lambda!282433 lambda!282427))))

(assert (=> bs!1249548 (= (= lt!2206378 (regOne!30890 r!7292)) (= lambda!282433 lambda!282428))))

(assert (=> b!5410282 (not (= lambda!282433 lambda!282432))))

(assert (=> b!5410282 true))

(assert (=> b!5410282 true))

(assert (=> b!5410282 true))

(declare-fun bs!1249549 () Bool)

(declare-fun b!5410290 () Bool)

(assert (= bs!1249549 (and b!5410290 b!5410249)))

(declare-fun lt!2206369 () Regex!15189)

(declare-datatypes ((List!61866 0))(
  ( (Nil!61742) (Cons!61742 (h!68190 C!30648) (t!375089 List!61866)) )
))
(declare-fun s!2326 () List!61866)

(declare-datatypes ((tuple2!64776 0))(
  ( (tuple2!64777 (_1!35691 List!61866) (_2!35691 List!61866)) )
))
(declare-fun lt!2206341 () tuple2!64776)

(declare-fun lambda!282434 () Int)

(assert (=> bs!1249549 (= (and (= (_1!35691 lt!2206341) s!2326) (= (reg!15518 (regOne!30890 r!7292)) (regOne!30890 r!7292)) (= lt!2206369 (regTwo!30890 r!7292))) (= lambda!282434 lambda!282427))))

(assert (=> bs!1249549 (not (= lambda!282434 lambda!282428))))

(declare-fun bs!1249550 () Bool)

(assert (= bs!1249550 (and b!5410290 b!5410282)))

(assert (=> bs!1249550 (= (and (= (_1!35691 lt!2206341) s!2326) (= (reg!15518 (regOne!30890 r!7292)) lt!2206378) (= lt!2206369 (regTwo!30890 r!7292))) (= lambda!282434 lambda!282432))))

(assert (=> bs!1249550 (not (= lambda!282434 lambda!282433))))

(assert (=> b!5410290 true))

(assert (=> b!5410290 true))

(assert (=> b!5410290 true))

(declare-fun lambda!282435 () Int)

(assert (=> bs!1249549 (= (and (= (_1!35691 lt!2206341) s!2326) (= (reg!15518 (regOne!30890 r!7292)) (regOne!30890 r!7292)) (= lt!2206369 (regTwo!30890 r!7292))) (= lambda!282435 lambda!282428))))

(assert (=> bs!1249550 (not (= lambda!282435 lambda!282432))))

(assert (=> bs!1249549 (not (= lambda!282435 lambda!282427))))

(assert (=> bs!1249550 (= (and (= (_1!35691 lt!2206341) s!2326) (= (reg!15518 (regOne!30890 r!7292)) lt!2206378) (= lt!2206369 (regTwo!30890 r!7292))) (= lambda!282435 lambda!282433))))

(assert (=> b!5410290 (not (= lambda!282435 lambda!282434))))

(assert (=> b!5410290 true))

(assert (=> b!5410290 true))

(assert (=> b!5410290 true))

(declare-fun e!3353872 () Bool)

(declare-fun tp!1495607 () Bool)

(declare-fun e!3353856 () Bool)

(declare-fun b!5410248 () Bool)

(declare-datatypes ((List!61867 0))(
  ( (Nil!61743) (Cons!61743 (h!68191 Regex!15189) (t!375090 List!61867)) )
))
(declare-datatypes ((Context!9146 0))(
  ( (Context!9147 (exprs!5073 List!61867)) )
))
(declare-datatypes ((List!61868 0))(
  ( (Nil!61744) (Cons!61744 (h!68192 Context!9146) (t!375091 List!61868)) )
))
(declare-fun zl!343 () List!61868)

(declare-fun inv!81219 (Context!9146) Bool)

(assert (=> b!5410248 (= e!3353856 (and (inv!81219 (h!68192 zl!343)) e!3353872 tp!1495607))))

(declare-fun e!3353873 () Bool)

(declare-fun e!3353858 () Bool)

(assert (=> b!5410249 (= e!3353873 e!3353858)))

(declare-fun res!2300975 () Bool)

(assert (=> b!5410249 (=> res!2300975 e!3353858)))

(declare-fun lt!2206380 () Bool)

(declare-fun lt!2206358 () Bool)

(get-info :version)

(assert (=> b!5410249 (= res!2300975 (or (not (= lt!2206380 lt!2206358)) ((_ is Nil!61742) s!2326)))))

(declare-fun Exists!2370 (Int) Bool)

(assert (=> b!5410249 (= (Exists!2370 lambda!282427) (Exists!2370 lambda!282428))))

(declare-datatypes ((Unit!154278 0))(
  ( (Unit!154279) )
))
(declare-fun lt!2206361 () Unit!154278)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1024 (Regex!15189 Regex!15189 List!61866) Unit!154278)

(assert (=> b!5410249 (= lt!2206361 (lemmaExistCutMatchRandMatchRSpecEquivalent!1024 (regOne!30890 r!7292) (regTwo!30890 r!7292) s!2326))))

(assert (=> b!5410249 (= lt!2206358 (Exists!2370 lambda!282427))))

(declare-datatypes ((Option!15300 0))(
  ( (None!15299) (Some!15299 (v!51328 tuple2!64776)) )
))
(declare-fun isDefined!12003 (Option!15300) Bool)

(declare-fun findConcatSeparation!1714 (Regex!15189 Regex!15189 List!61866 List!61866 List!61866) Option!15300)

(assert (=> b!5410249 (= lt!2206358 (isDefined!12003 (findConcatSeparation!1714 (regOne!30890 r!7292) (regTwo!30890 r!7292) Nil!61742 s!2326 s!2326)))))

(declare-fun lt!2206336 () Unit!154278)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1478 (Regex!15189 Regex!15189 List!61866) Unit!154278)

(assert (=> b!5410249 (= lt!2206336 (lemmaFindConcatSeparationEquivalentToExists!1478 (regOne!30890 r!7292) (regTwo!30890 r!7292) s!2326))))

(declare-fun b!5410250 () Bool)

(declare-fun res!2300978 () Bool)

(assert (=> b!5410250 (=> res!2300978 e!3353873)))

(declare-fun isEmpty!33732 (List!61868) Bool)

(assert (=> b!5410250 (= res!2300978 (not (isEmpty!33732 (t!375091 zl!343))))))

(declare-fun b!5410251 () Bool)

(declare-fun res!2300996 () Bool)

(declare-fun e!3353855 () Bool)

(assert (=> b!5410251 (=> res!2300996 e!3353855)))

(assert (=> b!5410251 (= res!2300996 (or ((_ is Concat!24034) (regOne!30890 r!7292)) (not ((_ is Star!15189) (regOne!30890 r!7292)))))))

(declare-fun b!5410252 () Bool)

(declare-fun res!2300972 () Bool)

(declare-fun e!3353878 () Bool)

(assert (=> b!5410252 (=> res!2300972 e!3353878)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2206370 () (InoxSet Context!9146))

(declare-fun lt!2206323 () tuple2!64776)

(declare-fun matchZipper!1433 ((InoxSet Context!9146) List!61866) Bool)

(assert (=> b!5410252 (= res!2300972 (not (matchZipper!1433 lt!2206370 (_1!35691 lt!2206323))))))

(declare-fun b!5410253 () Bool)

(declare-fun res!2300999 () Bool)

(declare-fun e!3353870 () Bool)

(assert (=> b!5410253 (=> res!2300999 e!3353870)))

(declare-fun lt!2206368 () Regex!15189)

(assert (=> b!5410253 (= res!2300999 (not (= lt!2206368 r!7292)))))

(declare-fun b!5410254 () Bool)

(declare-fun res!2300988 () Bool)

(assert (=> b!5410254 (=> res!2300988 e!3353873)))

(assert (=> b!5410254 (= res!2300988 (not ((_ is Cons!61743) (exprs!5073 (h!68192 zl!343)))))))

(declare-fun b!5410255 () Bool)

(declare-fun e!3353860 () Bool)

(declare-fun e!3353854 () Bool)

(assert (=> b!5410255 (= e!3353860 e!3353854)))

(declare-fun res!2300979 () Bool)

(assert (=> b!5410255 (=> (not res!2300979) (not e!3353854))))

(assert (=> b!5410255 (= res!2300979 (= r!7292 lt!2206368))))

(declare-fun unfocusZipper!931 (List!61868) Regex!15189)

(assert (=> b!5410255 (= lt!2206368 (unfocusZipper!931 zl!343))))

(declare-fun b!5410256 () Bool)

(declare-fun e!3353861 () Bool)

(declare-fun tp!1495610 () Bool)

(declare-fun tp!1495606 () Bool)

(assert (=> b!5410256 (= e!3353861 (and tp!1495610 tp!1495606))))

(declare-fun b!5410257 () Bool)

(declare-fun tp!1495609 () Bool)

(assert (=> b!5410257 (= e!3353872 tp!1495609)))

(declare-fun b!5410258 () Bool)

(declare-fun e!3353868 () Bool)

(declare-fun lt!2206325 () Bool)

(assert (=> b!5410258 (= e!3353868 lt!2206325)))

(declare-fun b!5410259 () Bool)

(declare-fun res!2300970 () Bool)

(assert (=> b!5410259 (=> res!2300970 e!3353873)))

(declare-fun generalisedUnion!1118 (List!61867) Regex!15189)

(declare-fun unfocusZipperList!631 (List!61868) List!61867)

(assert (=> b!5410259 (= res!2300970 (not (= r!7292 (generalisedUnion!1118 (unfocusZipperList!631 zl!343)))))))

(declare-fun b!5410260 () Bool)

(declare-fun e!3353864 () Bool)

(declare-fun tp_is_empty!39631 () Bool)

(declare-fun tp!1495605 () Bool)

(assert (=> b!5410260 (= e!3353864 (and tp_is_empty!39631 tp!1495605))))

(declare-fun b!5410261 () Bool)

(declare-fun res!2300965 () Bool)

(assert (=> b!5410261 (=> res!2300965 e!3353873)))

(declare-fun generalisedConcat!858 (List!61867) Regex!15189)

(assert (=> b!5410261 (= res!2300965 (not (= r!7292 (generalisedConcat!858 (exprs!5073 (h!68192 zl!343))))))))

(declare-fun b!5410262 () Bool)

(declare-fun e!3353879 () Bool)

(assert (=> b!5410262 (= e!3353870 e!3353879)))

(declare-fun res!2300980 () Bool)

(assert (=> b!5410262 (=> res!2300980 e!3353879)))

(declare-fun lt!2206382 () Regex!15189)

(assert (=> b!5410262 (= res!2300980 (not (= r!7292 lt!2206382)))))

(assert (=> b!5410262 (= lt!2206382 (Concat!24034 lt!2206369 (regTwo!30890 r!7292)))))

(declare-fun b!5410263 () Bool)

(declare-fun res!2300987 () Bool)

(declare-fun e!3353863 () Bool)

(assert (=> b!5410263 (=> res!2300987 e!3353863)))

(declare-fun lt!2206373 () Bool)

(declare-fun lt!2206376 () Bool)

(assert (=> b!5410263 (= res!2300987 (or (not lt!2206373) (not lt!2206376)))))

(declare-fun b!5410264 () Bool)

(declare-fun e!3353866 () Bool)

(assert (=> b!5410264 (= e!3353866 e!3353863)))

(declare-fun res!2300985 () Bool)

(assert (=> b!5410264 (=> res!2300985 e!3353863)))

(declare-fun e!3353871 () Bool)

(assert (=> b!5410264 (= res!2300985 e!3353871)))

(declare-fun res!2300998 () Bool)

(assert (=> b!5410264 (=> (not res!2300998) (not e!3353871))))

(assert (=> b!5410264 (= res!2300998 (not lt!2206373))))

(declare-fun lt!2206360 () (InoxSet Context!9146))

(assert (=> b!5410264 (= lt!2206373 (matchZipper!1433 lt!2206360 (t!375089 s!2326)))))

(declare-fun b!5410265 () Bool)

(declare-fun e!3353877 () Bool)

(assert (=> b!5410265 (= e!3353877 e!3353866)))

(declare-fun res!2300986 () Bool)

(assert (=> b!5410265 (=> res!2300986 e!3353866)))

(assert (=> b!5410265 (= res!2300986 lt!2206380)))

(declare-fun lt!2206333 () Regex!15189)

(declare-fun matchRSpec!2292 (Regex!15189 List!61866) Bool)

(assert (=> b!5410265 (= lt!2206325 (matchRSpec!2292 lt!2206333 s!2326))))

(declare-fun matchR!7374 (Regex!15189 List!61866) Bool)

(assert (=> b!5410265 (= lt!2206325 (matchR!7374 lt!2206333 s!2326))))

(declare-fun lt!2206342 () Unit!154278)

(declare-fun mainMatchTheorem!2292 (Regex!15189 List!61866) Unit!154278)

(assert (=> b!5410265 (= lt!2206342 (mainMatchTheorem!2292 lt!2206333 s!2326))))

(declare-fun b!5410266 () Bool)

(declare-fun res!2300995 () Bool)

(assert (=> b!5410266 (=> res!2300995 e!3353858)))

(declare-fun isEmpty!33733 (List!61867) Bool)

(assert (=> b!5410266 (= res!2300995 (isEmpty!33733 (t!375090 (exprs!5073 (h!68192 zl!343)))))))

(assert (=> b!5410267 (= e!3353858 e!3353855)))

(declare-fun res!2300968 () Bool)

(assert (=> b!5410267 (=> res!2300968 e!3353855)))

(assert (=> b!5410267 (= res!2300968 (or (and ((_ is ElementMatch!15189) (regOne!30890 r!7292)) (= (c!943181 (regOne!30890 r!7292)) (h!68190 s!2326))) ((_ is Union!15189) (regOne!30890 r!7292))))))

(declare-fun lt!2206329 () Unit!154278)

(declare-fun e!3353857 () Unit!154278)

(assert (=> b!5410267 (= lt!2206329 e!3353857)))

(declare-fun c!943180 () Bool)

(declare-fun lt!2206359 () Bool)

(assert (=> b!5410267 (= c!943180 lt!2206359)))

(declare-fun nullable!5358 (Regex!15189) Bool)

(assert (=> b!5410267 (= lt!2206359 (nullable!5358 (h!68191 (exprs!5073 (h!68192 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!9146))

(declare-fun lambda!282429 () Int)

(declare-fun flatMap!916 ((InoxSet Context!9146) Int) (InoxSet Context!9146))

(declare-fun derivationStepZipperUp!561 (Context!9146 C!30648) (InoxSet Context!9146))

(assert (=> b!5410267 (= (flatMap!916 z!1189 lambda!282429) (derivationStepZipperUp!561 (h!68192 zl!343) (h!68190 s!2326)))))

(declare-fun lt!2206334 () Unit!154278)

(declare-fun lemmaFlatMapOnSingletonSet!448 ((InoxSet Context!9146) Context!9146 Int) Unit!154278)

(assert (=> b!5410267 (= lt!2206334 (lemmaFlatMapOnSingletonSet!448 z!1189 (h!68192 zl!343) lambda!282429))))

(declare-fun lt!2206326 () (InoxSet Context!9146))

(declare-fun lt!2206375 () Context!9146)

(assert (=> b!5410267 (= lt!2206326 (derivationStepZipperUp!561 lt!2206375 (h!68190 s!2326)))))

(declare-fun derivationStepZipperDown!637 (Regex!15189 Context!9146 C!30648) (InoxSet Context!9146))

(assert (=> b!5410267 (= lt!2206360 (derivationStepZipperDown!637 (h!68191 (exprs!5073 (h!68192 zl!343))) lt!2206375 (h!68190 s!2326)))))

(assert (=> b!5410267 (= lt!2206375 (Context!9147 (t!375090 (exprs!5073 (h!68192 zl!343)))))))

(declare-fun lt!2206343 () (InoxSet Context!9146))

(assert (=> b!5410267 (= lt!2206343 (derivationStepZipperUp!561 (Context!9147 (Cons!61743 (h!68191 (exprs!5073 (h!68192 zl!343))) (t!375090 (exprs!5073 (h!68192 zl!343))))) (h!68190 s!2326)))))

(declare-fun tp!1495612 () Bool)

(declare-fun setRes!35243 () Bool)

(declare-fun setElem!35243 () Context!9146)

(declare-fun e!3353874 () Bool)

(declare-fun setNonEmpty!35243 () Bool)

(assert (=> setNonEmpty!35243 (= setRes!35243 (and tp!1495612 (inv!81219 setElem!35243) e!3353874))))

(declare-fun setRest!35243 () (InoxSet Context!9146))

(assert (=> setNonEmpty!35243 (= z!1189 ((_ map or) (store ((as const (Array Context!9146 Bool)) false) setElem!35243 true) setRest!35243))))

(declare-fun b!5410268 () Bool)

(declare-fun res!2300982 () Bool)

(assert (=> b!5410268 (=> res!2300982 e!3353873)))

(assert (=> b!5410268 (= res!2300982 (or ((_ is EmptyExpr!15189) r!7292) ((_ is EmptyLang!15189) r!7292) ((_ is ElementMatch!15189) r!7292) ((_ is Union!15189) r!7292) (not ((_ is Concat!24034) r!7292))))))

(declare-fun b!5410269 () Bool)

(declare-fun e!3353862 () Bool)

(assert (=> b!5410269 (= e!3353862 e!3353878)))

(declare-fun res!2300994 () Bool)

(assert (=> b!5410269 (=> res!2300994 e!3353878)))

(declare-fun lt!2206348 () List!61866)

(assert (=> b!5410269 (= res!2300994 (not (= s!2326 lt!2206348)))))

(declare-fun ++!13551 (List!61866 List!61866) List!61866)

(assert (=> b!5410269 (= lt!2206348 (++!13551 (_1!35691 lt!2206323) (_2!35691 lt!2206323)))))

(declare-fun lt!2206365 () Option!15300)

(declare-fun get!21286 (Option!15300) tuple2!64776)

(assert (=> b!5410269 (= lt!2206323 (get!21286 lt!2206365))))

(assert (=> b!5410269 (isDefined!12003 lt!2206365)))

(declare-fun lt!2206353 () (InoxSet Context!9146))

(declare-fun findConcatSeparationZippers!46 ((InoxSet Context!9146) (InoxSet Context!9146) List!61866 List!61866 List!61866) Option!15300)

(assert (=> b!5410269 (= lt!2206365 (findConcatSeparationZippers!46 lt!2206370 lt!2206353 Nil!61742 s!2326 s!2326))))

(declare-fun lt!2206322 () Context!9146)

(declare-fun lt!2206366 () Unit!154278)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!46 ((InoxSet Context!9146) Context!9146 List!61866) Unit!154278)

(assert (=> b!5410269 (= lt!2206366 (lemmaConcatZipperMatchesStringThenFindConcatDefined!46 lt!2206370 lt!2206322 s!2326))))

(declare-fun b!5410270 () Bool)

(declare-fun tp!1495608 () Bool)

(assert (=> b!5410270 (= e!3353861 tp!1495608)))

(declare-fun b!5410271 () Bool)

(declare-fun e!3353865 () Bool)

(assert (=> b!5410271 (= e!3353879 e!3353865)))

(declare-fun res!2300984 () Bool)

(assert (=> b!5410271 (=> res!2300984 e!3353865)))

(declare-fun lt!2206332 () Context!9146)

(assert (=> b!5410271 (= res!2300984 (not (= (unfocusZipper!931 (Cons!61744 lt!2206332 Nil!61744)) lt!2206333)))))

(assert (=> b!5410271 (= lt!2206333 (Concat!24034 (reg!15518 (regOne!30890 r!7292)) lt!2206382))))

(declare-fun b!5410272 () Bool)

(declare-fun e!3353875 () Bool)

(assert (=> b!5410272 (= e!3353855 e!3353875)))

(declare-fun res!2300981 () Bool)

(assert (=> b!5410272 (=> res!2300981 e!3353875)))

(declare-fun lt!2206328 () (InoxSet Context!9146))

(assert (=> b!5410272 (= res!2300981 (not (= lt!2206360 lt!2206328)))))

(assert (=> b!5410272 (= lt!2206328 (derivationStepZipperDown!637 (reg!15518 (regOne!30890 r!7292)) lt!2206322 (h!68190 s!2326)))))

(declare-fun lt!2206371 () List!61867)

(assert (=> b!5410272 (= lt!2206322 (Context!9147 lt!2206371))))

(assert (=> b!5410272 (= lt!2206371 (Cons!61743 lt!2206369 (t!375090 (exprs!5073 (h!68192 zl!343)))))))

(assert (=> b!5410272 (= lt!2206369 (Star!15189 (reg!15518 (regOne!30890 r!7292))))))

(declare-fun b!5410273 () Bool)

(declare-fun e!3353869 () Bool)

(assert (=> b!5410273 (= e!3353869 (matchZipper!1433 lt!2206326 (t!375089 s!2326)))))

(declare-fun b!5410274 () Bool)

(declare-fun e!3353876 () Bool)

(assert (=> b!5410274 (= e!3353876 (nullable!5358 (regOne!30890 (regOne!30890 r!7292))))))

(declare-fun b!5410275 () Bool)

(declare-fun e!3353867 () Bool)

(assert (=> b!5410275 (= e!3353875 e!3353867)))

(declare-fun res!2300992 () Bool)

(assert (=> b!5410275 (=> res!2300992 e!3353867)))

(declare-fun lt!2206337 () (InoxSet Context!9146))

(assert (=> b!5410275 (= res!2300992 (not (= lt!2206337 lt!2206328)))))

(declare-fun lt!2206367 () (InoxSet Context!9146))

(assert (=> b!5410275 (= (flatMap!916 lt!2206367 lambda!282429) (derivationStepZipperUp!561 lt!2206332 (h!68190 s!2326)))))

(declare-fun lt!2206347 () Unit!154278)

(assert (=> b!5410275 (= lt!2206347 (lemmaFlatMapOnSingletonSet!448 lt!2206367 lt!2206332 lambda!282429))))

(declare-fun lt!2206350 () (InoxSet Context!9146))

(assert (=> b!5410275 (= lt!2206350 (derivationStepZipperUp!561 lt!2206332 (h!68190 s!2326)))))

(declare-fun derivationStepZipper!1428 ((InoxSet Context!9146) C!30648) (InoxSet Context!9146))

(assert (=> b!5410275 (= lt!2206337 (derivationStepZipper!1428 lt!2206367 (h!68190 s!2326)))))

(assert (=> b!5410275 (= lt!2206367 (store ((as const (Array Context!9146 Bool)) false) lt!2206332 true))))

(assert (=> b!5410275 (= lt!2206332 (Context!9147 (Cons!61743 (reg!15518 (regOne!30890 r!7292)) lt!2206371)))))

(declare-fun b!5410276 () Bool)

(declare-fun res!2300977 () Bool)

(assert (=> b!5410276 (=> (not res!2300977) (not e!3353860))))

(declare-fun toList!8973 ((InoxSet Context!9146)) List!61868)

(assert (=> b!5410276 (= res!2300977 (= (toList!8973 z!1189) zl!343))))

(declare-fun b!5410277 () Bool)

(declare-fun e!3353880 () Bool)

(assert (=> b!5410277 (= e!3353880 e!3353877)))

(declare-fun res!2300964 () Bool)

(assert (=> b!5410277 (=> res!2300964 e!3353877)))

(declare-fun lt!2206344 () List!61868)

(assert (=> b!5410277 (= res!2300964 (not (= (unfocusZipper!931 lt!2206344) lt!2206382)))))

(assert (=> b!5410277 (= lt!2206344 (Cons!61744 lt!2206322 Nil!61744))))

(declare-fun setIsEmpty!35243 () Bool)

(assert (=> setIsEmpty!35243 setRes!35243))

(declare-fun b!5410278 () Bool)

(declare-fun res!2300997 () Bool)

(assert (=> b!5410278 (=> res!2300997 e!3353878)))

(assert (=> b!5410278 (= res!2300997 (not (matchZipper!1433 lt!2206353 (_2!35691 lt!2206323))))))

(declare-fun b!5410279 () Bool)

(assert (=> b!5410279 (= e!3353865 e!3353880)))

(declare-fun res!2300983 () Bool)

(assert (=> b!5410279 (=> res!2300983 e!3353880)))

(declare-fun lt!2206351 () List!61868)

(assert (=> b!5410279 (= res!2300983 (not (= (unfocusZipper!931 lt!2206351) (reg!15518 (regOne!30890 r!7292)))))))

(declare-fun lt!2206379 () Context!9146)

(assert (=> b!5410279 (= lt!2206351 (Cons!61744 lt!2206379 Nil!61744))))

(assert (=> b!5410279 (= (flatMap!916 lt!2206353 lambda!282429) (derivationStepZipperUp!561 lt!2206322 (h!68190 s!2326)))))

(declare-fun lt!2206363 () Unit!154278)

(assert (=> b!5410279 (= lt!2206363 (lemmaFlatMapOnSingletonSet!448 lt!2206353 lt!2206322 lambda!282429))))

(assert (=> b!5410279 (= (flatMap!916 lt!2206370 lambda!282429) (derivationStepZipperUp!561 lt!2206379 (h!68190 s!2326)))))

(declare-fun lt!2206345 () Unit!154278)

(assert (=> b!5410279 (= lt!2206345 (lemmaFlatMapOnSingletonSet!448 lt!2206370 lt!2206379 lambda!282429))))

(declare-fun lt!2206340 () (InoxSet Context!9146))

(assert (=> b!5410279 (= lt!2206340 (derivationStepZipperUp!561 lt!2206322 (h!68190 s!2326)))))

(declare-fun lt!2206346 () (InoxSet Context!9146))

(assert (=> b!5410279 (= lt!2206346 (derivationStepZipperUp!561 lt!2206379 (h!68190 s!2326)))))

(assert (=> b!5410279 (= lt!2206353 (store ((as const (Array Context!9146 Bool)) false) lt!2206322 true))))

(assert (=> b!5410279 (= lt!2206370 (store ((as const (Array Context!9146 Bool)) false) lt!2206379 true))))

(declare-fun lt!2206364 () List!61867)

(assert (=> b!5410279 (= lt!2206379 (Context!9147 lt!2206364))))

(assert (=> b!5410279 (= lt!2206364 (Cons!61743 (reg!15518 (regOne!30890 r!7292)) Nil!61743))))

(declare-fun b!5410280 () Bool)

(declare-fun Unit!154280 () Unit!154278)

(assert (=> b!5410280 (= e!3353857 Unit!154280)))

(declare-fun res!2300971 () Bool)

(assert (=> start!568122 (=> (not res!2300971) (not e!3353860))))

(declare-fun validRegex!6925 (Regex!15189) Bool)

(assert (=> start!568122 (= res!2300971 (validRegex!6925 r!7292))))

(assert (=> start!568122 e!3353860))

(assert (=> start!568122 e!3353861))

(declare-fun condSetEmpty!35243 () Bool)

(assert (=> start!568122 (= condSetEmpty!35243 (= z!1189 ((as const (Array Context!9146 Bool)) false)))))

(assert (=> start!568122 setRes!35243))

(assert (=> start!568122 e!3353856))

(assert (=> start!568122 e!3353864))

(declare-fun b!5410281 () Bool)

(declare-fun res!2300991 () Bool)

(assert (=> b!5410281 (=> res!2300991 e!3353866)))

(assert (=> b!5410281 (= res!2300991 (not lt!2206359))))

(declare-fun e!3353859 () Bool)

(assert (=> b!5410282 (= e!3353878 e!3353859)))

(declare-fun res!2300966 () Bool)

(assert (=> b!5410282 (=> res!2300966 e!3353859)))

(assert (=> b!5410282 (= res!2300966 (not (matchR!7374 lt!2206378 (_1!35691 lt!2206341))))))

(declare-fun lt!2206330 () Option!15300)

(assert (=> b!5410282 (= lt!2206341 (get!21286 lt!2206330))))

(assert (=> b!5410282 (= (Exists!2370 lambda!282432) (Exists!2370 lambda!282433))))

(declare-fun lt!2206331 () Unit!154278)

(assert (=> b!5410282 (= lt!2206331 (lemmaExistCutMatchRandMatchRSpecEquivalent!1024 lt!2206378 (regTwo!30890 r!7292) s!2326))))

(assert (=> b!5410282 (= (isDefined!12003 lt!2206330) (Exists!2370 lambda!282432))))

(assert (=> b!5410282 (= lt!2206330 (findConcatSeparation!1714 lt!2206378 (regTwo!30890 r!7292) Nil!61742 s!2326 s!2326))))

(declare-fun lt!2206355 () Unit!154278)

(assert (=> b!5410282 (= lt!2206355 (lemmaFindConcatSeparationEquivalentToExists!1478 lt!2206378 (regTwo!30890 r!7292) s!2326))))

(declare-fun lt!2206324 () Regex!15189)

(assert (=> b!5410282 (matchRSpec!2292 lt!2206324 s!2326)))

(declare-fun lt!2206339 () Unit!154278)

(assert (=> b!5410282 (= lt!2206339 (mainMatchTheorem!2292 lt!2206324 s!2326))))

(assert (=> b!5410282 (matchR!7374 lt!2206324 s!2326)))

(assert (=> b!5410282 (= lt!2206324 (Concat!24034 lt!2206378 (regTwo!30890 r!7292)))))

(assert (=> b!5410282 (= lt!2206378 (Concat!24034 (reg!15518 (regOne!30890 r!7292)) lt!2206369))))

(declare-fun lt!2206372 () Unit!154278)

(declare-fun lemmaConcatAssociative!42 (Regex!15189 Regex!15189 Regex!15189 List!61866) Unit!154278)

(assert (=> b!5410282 (= lt!2206372 (lemmaConcatAssociative!42 (reg!15518 (regOne!30890 r!7292)) lt!2206369 (regTwo!30890 r!7292) s!2326))))

(assert (=> b!5410282 e!3353868))

(declare-fun res!2300993 () Bool)

(assert (=> b!5410282 (=> (not res!2300993) (not e!3353868))))

(assert (=> b!5410282 (= res!2300993 (matchR!7374 lt!2206333 lt!2206348))))

(declare-fun lt!2206356 () Unit!154278)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!212 (Regex!15189 Regex!15189 List!61866 List!61866) Unit!154278)

(assert (=> b!5410282 (= lt!2206356 (lemmaTwoRegexMatchThenConcatMatchesConcatString!212 (reg!15518 (regOne!30890 r!7292)) lt!2206382 (_1!35691 lt!2206323) (_2!35691 lt!2206323)))))

(assert (=> b!5410282 (matchR!7374 lt!2206382 (_2!35691 lt!2206323))))

(declare-fun lt!2206381 () Unit!154278)

(declare-fun theoremZipperRegexEquiv!503 ((InoxSet Context!9146) List!61868 Regex!15189 List!61866) Unit!154278)

(assert (=> b!5410282 (= lt!2206381 (theoremZipperRegexEquiv!503 lt!2206353 lt!2206344 lt!2206382 (_2!35691 lt!2206323)))))

(assert (=> b!5410282 (matchR!7374 (reg!15518 (regOne!30890 r!7292)) (_1!35691 lt!2206323))))

(declare-fun lt!2206338 () Unit!154278)

(assert (=> b!5410282 (= lt!2206338 (theoremZipperRegexEquiv!503 lt!2206370 lt!2206351 (reg!15518 (regOne!30890 r!7292)) (_1!35691 lt!2206323)))))

(declare-fun ++!13552 (List!61867 List!61867) List!61867)

(assert (=> b!5410282 (matchZipper!1433 (store ((as const (Array Context!9146 Bool)) false) (Context!9147 (++!13552 lt!2206364 lt!2206371)) true) lt!2206348)))

(declare-fun lambda!282431 () Int)

(declare-fun lt!2206335 () Unit!154278)

(declare-fun lemmaConcatPreservesForall!214 (List!61867 List!61867 Int) Unit!154278)

(assert (=> b!5410282 (= lt!2206335 (lemmaConcatPreservesForall!214 lt!2206364 lt!2206371 lambda!282431))))

(declare-fun lt!2206374 () Unit!154278)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!62 (Context!9146 Context!9146 List!61866 List!61866) Unit!154278)

(assert (=> b!5410282 (= lt!2206374 (lemmaConcatenateContextMatchesConcatOfStrings!62 lt!2206379 lt!2206322 (_1!35691 lt!2206323) (_2!35691 lt!2206323)))))

(declare-fun b!5410283 () Bool)

(declare-fun res!2300974 () Bool)

(assert (=> b!5410283 (=> res!2300974 e!3353855)))

(assert (=> b!5410283 (= res!2300974 e!3353876)))

(declare-fun res!2300990 () Bool)

(assert (=> b!5410283 (=> (not res!2300990) (not e!3353876))))

(assert (=> b!5410283 (= res!2300990 ((_ is Concat!24034) (regOne!30890 r!7292)))))

(declare-fun b!5410284 () Bool)

(declare-fun tp!1495604 () Bool)

(declare-fun tp!1495611 () Bool)

(assert (=> b!5410284 (= e!3353861 (and tp!1495604 tp!1495611))))

(assert (=> b!5410285 (= e!3353863 e!3353862)))

(declare-fun res!2300976 () Bool)

(assert (=> b!5410285 (=> res!2300976 e!3353862)))

(declare-fun appendTo!48 ((InoxSet Context!9146) Context!9146) (InoxSet Context!9146))

(assert (=> b!5410285 (= res!2300976 (not (= (appendTo!48 lt!2206370 lt!2206322) lt!2206367)))))

(declare-fun lambda!282430 () Int)

(declare-fun map!14168 ((InoxSet Context!9146) Int) (InoxSet Context!9146))

(assert (=> b!5410285 (= (map!14168 lt!2206370 lambda!282430) (store ((as const (Array Context!9146 Bool)) false) (Context!9147 (++!13552 lt!2206364 lt!2206371)) true))))

(declare-fun lt!2206352 () Unit!154278)

(assert (=> b!5410285 (= lt!2206352 (lemmaConcatPreservesForall!214 lt!2206364 lt!2206371 lambda!282431))))

(declare-fun lt!2206377 () Unit!154278)

(declare-fun lemmaMapOnSingletonSet!48 ((InoxSet Context!9146) Context!9146 Int) Unit!154278)

(assert (=> b!5410285 (= lt!2206377 (lemmaMapOnSingletonSet!48 lt!2206370 lt!2206379 lambda!282430))))

(declare-fun b!5410286 () Bool)

(assert (=> b!5410286 (= e!3353871 (not (matchZipper!1433 lt!2206326 (t!375089 s!2326))))))

(declare-fun b!5410287 () Bool)

(declare-fun tp!1495613 () Bool)

(assert (=> b!5410287 (= e!3353874 tp!1495613)))

(declare-fun b!5410288 () Bool)

(assert (=> b!5410288 (= e!3353867 e!3353870)))

(declare-fun res!2300989 () Bool)

(assert (=> b!5410288 (=> res!2300989 e!3353870)))

(assert (=> b!5410288 (= res!2300989 (not (= lt!2206376 (matchZipper!1433 lt!2206337 (t!375089 s!2326)))))))

(assert (=> b!5410288 (= lt!2206376 (matchZipper!1433 lt!2206367 s!2326))))

(declare-fun b!5410289 () Bool)

(declare-fun res!2300967 () Bool)

(assert (=> b!5410289 (=> res!2300967 e!3353866)))

(assert (=> b!5410289 (= res!2300967 (not (matchZipper!1433 z!1189 s!2326)))))

(assert (=> b!5410290 (= e!3353859 true)))

(assert (=> b!5410290 (= (Exists!2370 lambda!282434) (Exists!2370 lambda!282435))))

(declare-fun lt!2206357 () Unit!154278)

(assert (=> b!5410290 (= lt!2206357 (lemmaExistCutMatchRandMatchRSpecEquivalent!1024 (reg!15518 (regOne!30890 r!7292)) lt!2206369 (_1!35691 lt!2206341)))))

(assert (=> b!5410290 (= (isDefined!12003 (findConcatSeparation!1714 (reg!15518 (regOne!30890 r!7292)) lt!2206369 Nil!61742 (_1!35691 lt!2206341) (_1!35691 lt!2206341))) (Exists!2370 lambda!282434))))

(declare-fun lt!2206327 () Unit!154278)

(assert (=> b!5410290 (= lt!2206327 (lemmaFindConcatSeparationEquivalentToExists!1478 (reg!15518 (regOne!30890 r!7292)) lt!2206369 (_1!35691 lt!2206341)))))

(assert (=> b!5410290 (matchRSpec!2292 lt!2206378 (_1!35691 lt!2206341))))

(declare-fun lt!2206354 () Unit!154278)

(assert (=> b!5410290 (= lt!2206354 (mainMatchTheorem!2292 lt!2206378 (_1!35691 lt!2206341)))))

(declare-fun b!5410291 () Bool)

(assert (=> b!5410291 (= e!3353861 tp_is_empty!39631)))

(declare-fun b!5410292 () Bool)

(declare-fun Unit!154281 () Unit!154278)

(assert (=> b!5410292 (= e!3353857 Unit!154281)))

(declare-fun lt!2206362 () Unit!154278)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!426 ((InoxSet Context!9146) (InoxSet Context!9146) List!61866) Unit!154278)

(assert (=> b!5410292 (= lt!2206362 (lemmaZipperConcatMatchesSameAsBothZippers!426 lt!2206360 lt!2206326 (t!375089 s!2326)))))

(declare-fun res!2300973 () Bool)

(assert (=> b!5410292 (= res!2300973 (matchZipper!1433 lt!2206360 (t!375089 s!2326)))))

(assert (=> b!5410292 (=> res!2300973 e!3353869)))

(assert (=> b!5410292 (= (matchZipper!1433 ((_ map or) lt!2206360 lt!2206326) (t!375089 s!2326)) e!3353869)))

(declare-fun b!5410293 () Bool)

(assert (=> b!5410293 (= e!3353854 (not e!3353873))))

(declare-fun res!2300969 () Bool)

(assert (=> b!5410293 (=> res!2300969 e!3353873)))

(assert (=> b!5410293 (= res!2300969 (not ((_ is Cons!61744) zl!343)))))

(assert (=> b!5410293 (= lt!2206380 (matchRSpec!2292 r!7292 s!2326))))

(assert (=> b!5410293 (= lt!2206380 (matchR!7374 r!7292 s!2326))))

(declare-fun lt!2206349 () Unit!154278)

(assert (=> b!5410293 (= lt!2206349 (mainMatchTheorem!2292 r!7292 s!2326))))

(assert (= (and start!568122 res!2300971) b!5410276))

(assert (= (and b!5410276 res!2300977) b!5410255))

(assert (= (and b!5410255 res!2300979) b!5410293))

(assert (= (and b!5410293 (not res!2300969)) b!5410250))

(assert (= (and b!5410250 (not res!2300978)) b!5410261))

(assert (= (and b!5410261 (not res!2300965)) b!5410254))

(assert (= (and b!5410254 (not res!2300988)) b!5410259))

(assert (= (and b!5410259 (not res!2300970)) b!5410268))

(assert (= (and b!5410268 (not res!2300982)) b!5410249))

(assert (= (and b!5410249 (not res!2300975)) b!5410266))

(assert (= (and b!5410266 (not res!2300995)) b!5410267))

(assert (= (and b!5410267 c!943180) b!5410292))

(assert (= (and b!5410267 (not c!943180)) b!5410280))

(assert (= (and b!5410292 (not res!2300973)) b!5410273))

(assert (= (and b!5410267 (not res!2300968)) b!5410283))

(assert (= (and b!5410283 res!2300990) b!5410274))

(assert (= (and b!5410283 (not res!2300974)) b!5410251))

(assert (= (and b!5410251 (not res!2300996)) b!5410272))

(assert (= (and b!5410272 (not res!2300981)) b!5410275))

(assert (= (and b!5410275 (not res!2300992)) b!5410288))

(assert (= (and b!5410288 (not res!2300989)) b!5410253))

(assert (= (and b!5410253 (not res!2300999)) b!5410262))

(assert (= (and b!5410262 (not res!2300980)) b!5410271))

(assert (= (and b!5410271 (not res!2300984)) b!5410279))

(assert (= (and b!5410279 (not res!2300983)) b!5410277))

(assert (= (and b!5410277 (not res!2300964)) b!5410265))

(assert (= (and b!5410265 (not res!2300986)) b!5410289))

(assert (= (and b!5410289 (not res!2300967)) b!5410281))

(assert (= (and b!5410281 (not res!2300991)) b!5410264))

(assert (= (and b!5410264 res!2300998) b!5410286))

(assert (= (and b!5410264 (not res!2300985)) b!5410263))

(assert (= (and b!5410263 (not res!2300987)) b!5410285))

(assert (= (and b!5410285 (not res!2300976)) b!5410269))

(assert (= (and b!5410269 (not res!2300994)) b!5410252))

(assert (= (and b!5410252 (not res!2300972)) b!5410278))

(assert (= (and b!5410278 (not res!2300997)) b!5410282))

(assert (= (and b!5410282 res!2300993) b!5410258))

(assert (= (and b!5410282 (not res!2300966)) b!5410290))

(assert (= (and start!568122 ((_ is ElementMatch!15189) r!7292)) b!5410291))

(assert (= (and start!568122 ((_ is Concat!24034) r!7292)) b!5410284))

(assert (= (and start!568122 ((_ is Star!15189) r!7292)) b!5410270))

(assert (= (and start!568122 ((_ is Union!15189) r!7292)) b!5410256))

(assert (= (and start!568122 condSetEmpty!35243) setIsEmpty!35243))

(assert (= (and start!568122 (not condSetEmpty!35243)) setNonEmpty!35243))

(assert (= setNonEmpty!35243 b!5410287))

(assert (= b!5410248 b!5410257))

(assert (= (and start!568122 ((_ is Cons!61744) zl!343)) b!5410248))

(assert (= (and start!568122 ((_ is Cons!61742) s!2326)) b!5410260))

(declare-fun m!6434278 () Bool)

(assert (=> b!5410269 m!6434278))

(declare-fun m!6434280 () Bool)

(assert (=> b!5410269 m!6434280))

(declare-fun m!6434282 () Bool)

(assert (=> b!5410269 m!6434282))

(declare-fun m!6434284 () Bool)

(assert (=> b!5410269 m!6434284))

(declare-fun m!6434286 () Bool)

(assert (=> b!5410269 m!6434286))

(declare-fun m!6434288 () Bool)

(assert (=> b!5410276 m!6434288))

(declare-fun m!6434290 () Bool)

(assert (=> b!5410274 m!6434290))

(declare-fun m!6434292 () Bool)

(assert (=> b!5410278 m!6434292))

(declare-fun m!6434294 () Bool)

(assert (=> b!5410282 m!6434294))

(declare-fun m!6434296 () Bool)

(assert (=> b!5410282 m!6434296))

(declare-fun m!6434298 () Bool)

(assert (=> b!5410282 m!6434298))

(declare-fun m!6434300 () Bool)

(assert (=> b!5410282 m!6434300))

(declare-fun m!6434302 () Bool)

(assert (=> b!5410282 m!6434302))

(declare-fun m!6434304 () Bool)

(assert (=> b!5410282 m!6434304))

(declare-fun m!6434306 () Bool)

(assert (=> b!5410282 m!6434306))

(declare-fun m!6434308 () Bool)

(assert (=> b!5410282 m!6434308))

(declare-fun m!6434310 () Bool)

(assert (=> b!5410282 m!6434310))

(declare-fun m!6434312 () Bool)

(assert (=> b!5410282 m!6434312))

(declare-fun m!6434314 () Bool)

(assert (=> b!5410282 m!6434314))

(declare-fun m!6434316 () Bool)

(assert (=> b!5410282 m!6434316))

(declare-fun m!6434318 () Bool)

(assert (=> b!5410282 m!6434318))

(declare-fun m!6434320 () Bool)

(assert (=> b!5410282 m!6434320))

(declare-fun m!6434322 () Bool)

(assert (=> b!5410282 m!6434322))

(declare-fun m!6434324 () Bool)

(assert (=> b!5410282 m!6434324))

(declare-fun m!6434326 () Bool)

(assert (=> b!5410282 m!6434326))

(declare-fun m!6434328 () Bool)

(assert (=> b!5410282 m!6434328))

(declare-fun m!6434330 () Bool)

(assert (=> b!5410282 m!6434330))

(declare-fun m!6434332 () Bool)

(assert (=> b!5410282 m!6434332))

(assert (=> b!5410282 m!6434314))

(assert (=> b!5410282 m!6434308))

(declare-fun m!6434334 () Bool)

(assert (=> b!5410282 m!6434334))

(declare-fun m!6434336 () Bool)

(assert (=> b!5410282 m!6434336))

(declare-fun m!6434338 () Bool)

(assert (=> b!5410282 m!6434338))

(declare-fun m!6434340 () Bool)

(assert (=> b!5410275 m!6434340))

(declare-fun m!6434342 () Bool)

(assert (=> b!5410275 m!6434342))

(declare-fun m!6434344 () Bool)

(assert (=> b!5410275 m!6434344))

(declare-fun m!6434346 () Bool)

(assert (=> b!5410275 m!6434346))

(declare-fun m!6434348 () Bool)

(assert (=> b!5410275 m!6434348))

(declare-fun m!6434350 () Bool)

(assert (=> b!5410264 m!6434350))

(declare-fun m!6434352 () Bool)

(assert (=> b!5410286 m!6434352))

(declare-fun m!6434354 () Bool)

(assert (=> setNonEmpty!35243 m!6434354))

(declare-fun m!6434356 () Bool)

(assert (=> b!5410293 m!6434356))

(declare-fun m!6434358 () Bool)

(assert (=> b!5410293 m!6434358))

(declare-fun m!6434360 () Bool)

(assert (=> b!5410293 m!6434360))

(declare-fun m!6434362 () Bool)

(assert (=> b!5410289 m!6434362))

(declare-fun m!6434364 () Bool)

(assert (=> b!5410288 m!6434364))

(declare-fun m!6434366 () Bool)

(assert (=> b!5410288 m!6434366))

(declare-fun m!6434368 () Bool)

(assert (=> b!5410272 m!6434368))

(declare-fun m!6434370 () Bool)

(assert (=> b!5410290 m!6434370))

(declare-fun m!6434372 () Bool)

(assert (=> b!5410290 m!6434372))

(declare-fun m!6434374 () Bool)

(assert (=> b!5410290 m!6434374))

(declare-fun m!6434376 () Bool)

(assert (=> b!5410290 m!6434376))

(declare-fun m!6434378 () Bool)

(assert (=> b!5410290 m!6434378))

(declare-fun m!6434380 () Bool)

(assert (=> b!5410290 m!6434380))

(assert (=> b!5410290 m!6434378))

(declare-fun m!6434382 () Bool)

(assert (=> b!5410290 m!6434382))

(declare-fun m!6434384 () Bool)

(assert (=> b!5410290 m!6434384))

(assert (=> b!5410290 m!6434372))

(declare-fun m!6434386 () Bool)

(assert (=> b!5410277 m!6434386))

(declare-fun m!6434388 () Bool)

(assert (=> b!5410252 m!6434388))

(declare-fun m!6434390 () Bool)

(assert (=> b!5410248 m!6434390))

(declare-fun m!6434392 () Bool)

(assert (=> b!5410266 m!6434392))

(declare-fun m!6434394 () Bool)

(assert (=> start!568122 m!6434394))

(assert (=> b!5410273 m!6434352))

(declare-fun m!6434396 () Bool)

(assert (=> b!5410261 m!6434396))

(declare-fun m!6434398 () Bool)

(assert (=> b!5410271 m!6434398))

(declare-fun m!6434400 () Bool)

(assert (=> b!5410259 m!6434400))

(assert (=> b!5410259 m!6434400))

(declare-fun m!6434402 () Bool)

(assert (=> b!5410259 m!6434402))

(declare-fun m!6434404 () Bool)

(assert (=> b!5410255 m!6434404))

(declare-fun m!6434406 () Bool)

(assert (=> b!5410249 m!6434406))

(declare-fun m!6434408 () Bool)

(assert (=> b!5410249 m!6434408))

(declare-fun m!6434410 () Bool)

(assert (=> b!5410249 m!6434410))

(declare-fun m!6434412 () Bool)

(assert (=> b!5410249 m!6434412))

(assert (=> b!5410249 m!6434406))

(declare-fun m!6434414 () Bool)

(assert (=> b!5410249 m!6434414))

(assert (=> b!5410249 m!6434410))

(declare-fun m!6434416 () Bool)

(assert (=> b!5410249 m!6434416))

(declare-fun m!6434418 () Bool)

(assert (=> b!5410292 m!6434418))

(assert (=> b!5410292 m!6434350))

(declare-fun m!6434420 () Bool)

(assert (=> b!5410292 m!6434420))

(declare-fun m!6434422 () Bool)

(assert (=> b!5410265 m!6434422))

(declare-fun m!6434424 () Bool)

(assert (=> b!5410265 m!6434424))

(declare-fun m!6434426 () Bool)

(assert (=> b!5410265 m!6434426))

(declare-fun m!6434428 () Bool)

(assert (=> b!5410267 m!6434428))

(declare-fun m!6434430 () Bool)

(assert (=> b!5410267 m!6434430))

(declare-fun m!6434432 () Bool)

(assert (=> b!5410267 m!6434432))

(declare-fun m!6434434 () Bool)

(assert (=> b!5410267 m!6434434))

(declare-fun m!6434436 () Bool)

(assert (=> b!5410267 m!6434436))

(declare-fun m!6434438 () Bool)

(assert (=> b!5410267 m!6434438))

(declare-fun m!6434440 () Bool)

(assert (=> b!5410267 m!6434440))

(declare-fun m!6434442 () Bool)

(assert (=> b!5410279 m!6434442))

(declare-fun m!6434444 () Bool)

(assert (=> b!5410279 m!6434444))

(declare-fun m!6434446 () Bool)

(assert (=> b!5410279 m!6434446))

(declare-fun m!6434448 () Bool)

(assert (=> b!5410279 m!6434448))

(declare-fun m!6434450 () Bool)

(assert (=> b!5410279 m!6434450))

(declare-fun m!6434452 () Bool)

(assert (=> b!5410279 m!6434452))

(declare-fun m!6434454 () Bool)

(assert (=> b!5410279 m!6434454))

(declare-fun m!6434456 () Bool)

(assert (=> b!5410279 m!6434456))

(declare-fun m!6434458 () Bool)

(assert (=> b!5410279 m!6434458))

(declare-fun m!6434460 () Bool)

(assert (=> b!5410250 m!6434460))

(assert (=> b!5410285 m!6434304))

(assert (=> b!5410285 m!6434294))

(declare-fun m!6434462 () Bool)

(assert (=> b!5410285 m!6434462))

(declare-fun m!6434464 () Bool)

(assert (=> b!5410285 m!6434464))

(declare-fun m!6434466 () Bool)

(assert (=> b!5410285 m!6434466))

(assert (=> b!5410285 m!6434308))

(check-sat (not b!5410266) (not b!5410287) tp_is_empty!39631 (not b!5410279) (not b!5410272) (not b!5410288) (not b!5410293) (not b!5410286) (not b!5410265) (not b!5410257) (not b!5410264) (not b!5410278) (not b!5410259) (not b!5410267) (not b!5410250) (not b!5410284) (not b!5410249) (not b!5410248) (not b!5410273) (not b!5410290) (not setNonEmpty!35243) (not b!5410292) (not b!5410285) (not b!5410275) (not b!5410269) (not b!5410274) (not b!5410260) (not b!5410256) (not b!5410282) (not b!5410255) (not b!5410276) (not b!5410289) (not b!5410277) (not b!5410261) (not b!5410271) (not b!5410252) (not start!568122) (not b!5410270))
(check-sat)
