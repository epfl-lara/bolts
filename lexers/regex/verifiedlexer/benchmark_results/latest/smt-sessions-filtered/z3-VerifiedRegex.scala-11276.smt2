; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!593520 () Bool)

(assert start!593520)

(declare-fun b!5786794 () Bool)

(assert (=> b!5786794 true))

(assert (=> b!5786794 true))

(declare-fun lambda!315444 () Int)

(declare-fun lambda!315443 () Int)

(assert (=> b!5786794 (not (= lambda!315444 lambda!315443))))

(assert (=> b!5786794 true))

(assert (=> b!5786794 true))

(declare-fun lambda!315445 () Int)

(assert (=> b!5786794 (not (= lambda!315445 lambda!315443))))

(assert (=> b!5786794 (not (= lambda!315445 lambda!315444))))

(assert (=> b!5786794 true))

(assert (=> b!5786794 true))

(declare-fun b!5786785 () Bool)

(assert (=> b!5786785 true))

(declare-fun b!5786776 () Bool)

(declare-fun e!3554108 () Bool)

(declare-fun e!3554110 () Bool)

(assert (=> b!5786776 (= e!3554108 e!3554110)))

(declare-fun res!2441854 () Bool)

(assert (=> b!5786776 (=> res!2441854 e!3554110)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31868 0))(
  ( (C!31869 (val!25636 Int)) )
))
(declare-datatypes ((Regex!15799 0))(
  ( (ElementMatch!15799 (c!1024501 C!31868)) (Concat!24644 (regOne!32110 Regex!15799) (regTwo!32110 Regex!15799)) (EmptyExpr!15799) (Star!15799 (reg!16128 Regex!15799)) (EmptyLang!15799) (Union!15799 (regOne!32111 Regex!15799) (regTwo!32111 Regex!15799)) )
))
(declare-datatypes ((List!63696 0))(
  ( (Nil!63572) (Cons!63572 (h!70020 Regex!15799) (t!377037 List!63696)) )
))
(declare-datatypes ((Context!10366 0))(
  ( (Context!10367 (exprs!5683 List!63696)) )
))
(declare-fun lt!2296576 () (InoxSet Context!10366))

(declare-fun lt!2296579 () (InoxSet Context!10366))

(assert (=> b!5786776 (= res!2441854 (not (= lt!2296576 lt!2296579)))))

(declare-fun r!7292 () Regex!15799)

(declare-datatypes ((List!63697 0))(
  ( (Nil!63573) (Cons!63573 (h!70021 C!31868) (t!377038 List!63697)) )
))
(declare-fun s!2326 () List!63697)

(declare-fun derivationStepZipperDown!1137 (Regex!15799 Context!10366 C!31868) (InoxSet Context!10366))

(assert (=> b!5786776 (= lt!2296579 (derivationStepZipperDown!1137 r!7292 (Context!10367 Nil!63572) (h!70021 s!2326)))))

(declare-fun derivationStepZipperUp!1063 (Context!10366 C!31868) (InoxSet Context!10366))

(assert (=> b!5786776 (= lt!2296576 (derivationStepZipperUp!1063 (Context!10367 (Cons!63572 r!7292 Nil!63572)) (h!70021 s!2326)))))

(declare-fun b!5786777 () Bool)

(declare-fun e!3554113 () Bool)

(declare-fun tp_is_empty!40851 () Bool)

(assert (=> b!5786777 (= e!3554113 tp_is_empty!40851)))

(declare-fun b!5786778 () Bool)

(declare-fun e!3554115 () Bool)

(declare-fun e!3554109 () Bool)

(declare-fun tp!1596495 () Bool)

(declare-datatypes ((List!63698 0))(
  ( (Nil!63574) (Cons!63574 (h!70022 Context!10366) (t!377039 List!63698)) )
))
(declare-fun zl!343 () List!63698)

(declare-fun inv!82744 (Context!10366) Bool)

(assert (=> b!5786778 (= e!3554115 (and (inv!82744 (h!70022 zl!343)) e!3554109 tp!1596495))))

(declare-fun b!5786779 () Bool)

(declare-fun res!2441846 () Bool)

(declare-fun e!3554117 () Bool)

(assert (=> b!5786779 (=> (not res!2441846) (not e!3554117))))

(declare-fun z!1189 () (InoxSet Context!10366))

(declare-fun toList!9583 ((InoxSet Context!10366)) List!63698)

(assert (=> b!5786779 (= res!2441846 (= (toList!9583 z!1189) zl!343))))

(declare-fun b!5786780 () Bool)

(declare-fun tp!1596489 () Bool)

(assert (=> b!5786780 (= e!3554109 tp!1596489)))

(declare-fun b!5786781 () Bool)

(declare-fun res!2441842 () Bool)

(declare-fun e!3554111 () Bool)

(assert (=> b!5786781 (=> res!2441842 e!3554111)))

(declare-fun isEmpty!35475 (List!63698) Bool)

(assert (=> b!5786781 (= res!2441842 (not (isEmpty!35475 (t!377039 zl!343))))))

(declare-fun b!5786782 () Bool)

(declare-fun res!2441852 () Bool)

(assert (=> b!5786782 (=> (not res!2441852) (not e!3554117))))

(declare-fun unfocusZipper!1541 (List!63698) Regex!15799)

(assert (=> b!5786782 (= res!2441852 (= r!7292 (unfocusZipper!1541 zl!343)))))

(declare-fun b!5786783 () Bool)

(declare-fun e!3554116 () Bool)

(declare-fun tp!1596487 () Bool)

(assert (=> b!5786783 (= e!3554116 (and tp_is_empty!40851 tp!1596487))))

(declare-fun b!5786784 () Bool)

(declare-fun e!3554114 () Bool)

(declare-fun lt!2296583 () Bool)

(assert (=> b!5786784 (= e!3554114 lt!2296583)))

(declare-fun derivationStepZipper!1868 ((InoxSet Context!10366) C!31868) (InoxSet Context!10366))

(assert (=> b!5786785 (= e!3554110 (= (derivationStepZipper!1868 z!1189 (h!70021 s!2326)) lt!2296579))))

(declare-fun lambda!315446 () Int)

(declare-fun flatMap!1406 ((InoxSet Context!10366) Int) (InoxSet Context!10366))

(assert (=> b!5786785 (= (flatMap!1406 z!1189 lambda!315446) (derivationStepZipperUp!1063 (h!70022 zl!343) (h!70021 s!2326)))))

(declare-datatypes ((Unit!156858 0))(
  ( (Unit!156859) )
))
(declare-fun lt!2296581 () Unit!156858)

(declare-fun lemmaFlatMapOnSingletonSet!938 ((InoxSet Context!10366) Context!10366 Int) Unit!156858)

(assert (=> b!5786785 (= lt!2296581 (lemmaFlatMapOnSingletonSet!938 z!1189 (h!70022 zl!343) lambda!315446))))

(declare-fun setNonEmpty!38880 () Bool)

(declare-fun tp!1596496 () Bool)

(declare-fun e!3554112 () Bool)

(declare-fun setElem!38880 () Context!10366)

(declare-fun setRes!38880 () Bool)

(assert (=> setNonEmpty!38880 (= setRes!38880 (and tp!1596496 (inv!82744 setElem!38880) e!3554112))))

(declare-fun setRest!38880 () (InoxSet Context!10366))

(assert (=> setNonEmpty!38880 (= z!1189 ((_ map or) (store ((as const (Array Context!10366 Bool)) false) setElem!38880 true) setRest!38880))))

(declare-fun b!5786786 () Bool)

(declare-fun res!2441845 () Bool)

(assert (=> b!5786786 (=> res!2441845 e!3554111)))

(get-info :version)

(assert (=> b!5786786 (= res!2441845 (not ((_ is Cons!63572) (exprs!5683 (h!70022 zl!343)))))))

(declare-fun res!2441853 () Bool)

(assert (=> start!593520 (=> (not res!2441853) (not e!3554117))))

(declare-fun validRegex!7535 (Regex!15799) Bool)

(assert (=> start!593520 (= res!2441853 (validRegex!7535 r!7292))))

(assert (=> start!593520 e!3554117))

(assert (=> start!593520 e!3554113))

(declare-fun condSetEmpty!38880 () Bool)

(assert (=> start!593520 (= condSetEmpty!38880 (= z!1189 ((as const (Array Context!10366 Bool)) false)))))

(assert (=> start!593520 setRes!38880))

(assert (=> start!593520 e!3554115))

(assert (=> start!593520 e!3554116))

(declare-fun b!5786787 () Bool)

(declare-fun res!2441850 () Bool)

(assert (=> b!5786787 (=> res!2441850 e!3554111)))

(declare-fun generalisedConcat!1414 (List!63696) Regex!15799)

(assert (=> b!5786787 (= res!2441850 (not (= r!7292 (generalisedConcat!1414 (exprs!5683 (h!70022 zl!343))))))))

(declare-fun b!5786788 () Bool)

(declare-fun res!2441848 () Bool)

(assert (=> b!5786788 (=> res!2441848 e!3554111)))

(declare-fun generalisedUnion!1662 (List!63696) Regex!15799)

(declare-fun unfocusZipperList!1227 (List!63698) List!63696)

(assert (=> b!5786788 (= res!2441848 (not (= r!7292 (generalisedUnion!1662 (unfocusZipperList!1227 zl!343)))))))

(declare-fun setIsEmpty!38880 () Bool)

(assert (=> setIsEmpty!38880 setRes!38880))

(declare-fun b!5786789 () Bool)

(assert (=> b!5786789 (= e!3554117 (not e!3554111))))

(declare-fun res!2441844 () Bool)

(assert (=> b!5786789 (=> res!2441844 e!3554111)))

(assert (=> b!5786789 (= res!2441844 (not ((_ is Cons!63574) zl!343)))))

(declare-fun lt!2296582 () Bool)

(declare-fun matchRSpec!2902 (Regex!15799 List!63697) Bool)

(assert (=> b!5786789 (= lt!2296582 (matchRSpec!2902 r!7292 s!2326))))

(declare-fun matchR!7984 (Regex!15799 List!63697) Bool)

(assert (=> b!5786789 (= lt!2296582 (matchR!7984 r!7292 s!2326))))

(declare-fun lt!2296578 () Unit!156858)

(declare-fun mainMatchTheorem!2902 (Regex!15799 List!63697) Unit!156858)

(assert (=> b!5786789 (= lt!2296578 (mainMatchTheorem!2902 r!7292 s!2326))))

(declare-fun b!5786790 () Bool)

(declare-fun tp!1596490 () Bool)

(declare-fun tp!1596488 () Bool)

(assert (=> b!5786790 (= e!3554113 (and tp!1596490 tp!1596488))))

(declare-fun b!5786791 () Bool)

(declare-fun tp!1596491 () Bool)

(declare-fun tp!1596494 () Bool)

(assert (=> b!5786791 (= e!3554113 (and tp!1596491 tp!1596494))))

(declare-fun b!5786792 () Bool)

(declare-fun tp!1596492 () Bool)

(assert (=> b!5786792 (= e!3554113 tp!1596492)))

(declare-fun b!5786793 () Bool)

(declare-fun res!2441849 () Bool)

(assert (=> b!5786793 (=> res!2441849 e!3554108)))

(assert (=> b!5786793 (= res!2441849 ((_ is Nil!63573) s!2326))))

(assert (=> b!5786794 (= e!3554111 e!3554108)))

(declare-fun res!2441847 () Bool)

(assert (=> b!5786794 (=> res!2441847 e!3554108)))

(assert (=> b!5786794 (= res!2441847 (not (= lt!2296582 e!3554114)))))

(declare-fun res!2441851 () Bool)

(assert (=> b!5786794 (=> res!2441851 e!3554114)))

(declare-fun isEmpty!35476 (List!63697) Bool)

(assert (=> b!5786794 (= res!2441851 (isEmpty!35476 s!2326))))

(declare-fun Exists!2899 (Int) Bool)

(assert (=> b!5786794 (= (Exists!2899 lambda!315443) (Exists!2899 lambda!315445))))

(declare-fun lt!2296577 () Unit!156858)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1528 (Regex!15799 Regex!15799 List!63697) Unit!156858)

(assert (=> b!5786794 (= lt!2296577 (lemmaExistCutMatchRandMatchRSpecEquivalent!1528 (reg!16128 r!7292) r!7292 s!2326))))

(assert (=> b!5786794 (= (Exists!2899 lambda!315443) (Exists!2899 lambda!315444))))

(declare-fun lt!2296580 () Unit!156858)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!580 (Regex!15799 List!63697) Unit!156858)

(assert (=> b!5786794 (= lt!2296580 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!580 (reg!16128 r!7292) s!2326))))

(assert (=> b!5786794 (= lt!2296583 (Exists!2899 lambda!315443))))

(declare-datatypes ((tuple2!65792 0))(
  ( (tuple2!65793 (_1!36199 List!63697) (_2!36199 List!63697)) )
))
(declare-datatypes ((Option!15808 0))(
  ( (None!15807) (Some!15807 (v!51867 tuple2!65792)) )
))
(declare-fun isDefined!12511 (Option!15808) Bool)

(declare-fun findConcatSeparation!2222 (Regex!15799 Regex!15799 List!63697 List!63697 List!63697) Option!15808)

(assert (=> b!5786794 (= lt!2296583 (isDefined!12511 (findConcatSeparation!2222 (reg!16128 r!7292) r!7292 Nil!63573 s!2326 s!2326)))))

(declare-fun lt!2296584 () Unit!156858)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1986 (Regex!15799 Regex!15799 List!63697) Unit!156858)

(assert (=> b!5786794 (= lt!2296584 (lemmaFindConcatSeparationEquivalentToExists!1986 (reg!16128 r!7292) r!7292 s!2326))))

(declare-fun b!5786795 () Bool)

(declare-fun res!2441843 () Bool)

(assert (=> b!5786795 (=> res!2441843 e!3554111)))

(assert (=> b!5786795 (= res!2441843 (or ((_ is EmptyExpr!15799) r!7292) ((_ is EmptyLang!15799) r!7292) ((_ is ElementMatch!15799) r!7292) ((_ is Union!15799) r!7292) ((_ is Concat!24644) r!7292)))))

(declare-fun b!5786796 () Bool)

(declare-fun tp!1596493 () Bool)

(assert (=> b!5786796 (= e!3554112 tp!1596493)))

(assert (= (and start!593520 res!2441853) b!5786779))

(assert (= (and b!5786779 res!2441846) b!5786782))

(assert (= (and b!5786782 res!2441852) b!5786789))

(assert (= (and b!5786789 (not res!2441844)) b!5786781))

(assert (= (and b!5786781 (not res!2441842)) b!5786787))

(assert (= (and b!5786787 (not res!2441850)) b!5786786))

(assert (= (and b!5786786 (not res!2441845)) b!5786788))

(assert (= (and b!5786788 (not res!2441848)) b!5786795))

(assert (= (and b!5786795 (not res!2441843)) b!5786794))

(assert (= (and b!5786794 (not res!2441851)) b!5786784))

(assert (= (and b!5786794 (not res!2441847)) b!5786793))

(assert (= (and b!5786793 (not res!2441849)) b!5786776))

(assert (= (and b!5786776 (not res!2441854)) b!5786785))

(assert (= (and start!593520 ((_ is ElementMatch!15799) r!7292)) b!5786777))

(assert (= (and start!593520 ((_ is Concat!24644) r!7292)) b!5786791))

(assert (= (and start!593520 ((_ is Star!15799) r!7292)) b!5786792))

(assert (= (and start!593520 ((_ is Union!15799) r!7292)) b!5786790))

(assert (= (and start!593520 condSetEmpty!38880) setIsEmpty!38880))

(assert (= (and start!593520 (not condSetEmpty!38880)) setNonEmpty!38880))

(assert (= setNonEmpty!38880 b!5786796))

(assert (= b!5786778 b!5786780))

(assert (= (and start!593520 ((_ is Cons!63574) zl!343)) b!5786778))

(assert (= (and start!593520 ((_ is Cons!63573) s!2326)) b!5786783))

(declare-fun m!6731418 () Bool)

(assert (=> b!5786776 m!6731418))

(declare-fun m!6731420 () Bool)

(assert (=> b!5786776 m!6731420))

(declare-fun m!6731422 () Bool)

(assert (=> b!5786794 m!6731422))

(declare-fun m!6731424 () Bool)

(assert (=> b!5786794 m!6731424))

(declare-fun m!6731426 () Bool)

(assert (=> b!5786794 m!6731426))

(assert (=> b!5786794 m!6731422))

(assert (=> b!5786794 m!6731426))

(declare-fun m!6731428 () Bool)

(assert (=> b!5786794 m!6731428))

(declare-fun m!6731430 () Bool)

(assert (=> b!5786794 m!6731430))

(declare-fun m!6731432 () Bool)

(assert (=> b!5786794 m!6731432))

(declare-fun m!6731434 () Bool)

(assert (=> b!5786794 m!6731434))

(assert (=> b!5786794 m!6731422))

(declare-fun m!6731436 () Bool)

(assert (=> b!5786794 m!6731436))

(declare-fun m!6731438 () Bool)

(assert (=> b!5786794 m!6731438))

(declare-fun m!6731440 () Bool)

(assert (=> b!5786782 m!6731440))

(declare-fun m!6731442 () Bool)

(assert (=> start!593520 m!6731442))

(declare-fun m!6731444 () Bool)

(assert (=> b!5786785 m!6731444))

(declare-fun m!6731446 () Bool)

(assert (=> b!5786785 m!6731446))

(declare-fun m!6731448 () Bool)

(assert (=> b!5786785 m!6731448))

(declare-fun m!6731450 () Bool)

(assert (=> b!5786785 m!6731450))

(declare-fun m!6731452 () Bool)

(assert (=> b!5786778 m!6731452))

(declare-fun m!6731454 () Bool)

(assert (=> b!5786787 m!6731454))

(declare-fun m!6731456 () Bool)

(assert (=> setNonEmpty!38880 m!6731456))

(declare-fun m!6731458 () Bool)

(assert (=> b!5786789 m!6731458))

(declare-fun m!6731460 () Bool)

(assert (=> b!5786789 m!6731460))

(declare-fun m!6731462 () Bool)

(assert (=> b!5786789 m!6731462))

(declare-fun m!6731464 () Bool)

(assert (=> b!5786788 m!6731464))

(assert (=> b!5786788 m!6731464))

(declare-fun m!6731466 () Bool)

(assert (=> b!5786788 m!6731466))

(declare-fun m!6731468 () Bool)

(assert (=> b!5786781 m!6731468))

(declare-fun m!6731470 () Bool)

(assert (=> b!5786779 m!6731470))

(check-sat (not b!5786781) (not b!5786789) (not b!5786796) (not b!5786790) tp_is_empty!40851 (not b!5786779) (not b!5786778) (not b!5786776) (not b!5786783) (not b!5786788) (not b!5786785) (not start!593520) (not setNonEmpty!38880) (not b!5786794) (not b!5786791) (not b!5786787) (not b!5786792) (not b!5786782) (not b!5786780))
(check-sat)
(get-model)

(declare-fun bs!1366273 () Bool)

(declare-fun b!5786985 () Bool)

(assert (= bs!1366273 (and b!5786985 b!5786794)))

(declare-fun lambda!315464 () Int)

(assert (=> bs!1366273 (not (= lambda!315464 lambda!315443))))

(assert (=> bs!1366273 (= lambda!315464 lambda!315444)))

(assert (=> bs!1366273 (not (= lambda!315464 lambda!315445))))

(assert (=> b!5786985 true))

(assert (=> b!5786985 true))

(declare-fun bs!1366274 () Bool)

(declare-fun b!5786979 () Bool)

(assert (= bs!1366274 (and b!5786979 b!5786794)))

(declare-fun lambda!315465 () Int)

(assert (=> bs!1366274 (not (= lambda!315465 lambda!315443))))

(assert (=> bs!1366274 (not (= lambda!315465 lambda!315444))))

(assert (=> bs!1366274 (= (and (= (regOne!32110 r!7292) (reg!16128 r!7292)) (= (regTwo!32110 r!7292) r!7292)) (= lambda!315465 lambda!315445))))

(declare-fun bs!1366275 () Bool)

(assert (= bs!1366275 (and b!5786979 b!5786985)))

(assert (=> bs!1366275 (not (= lambda!315465 lambda!315464))))

(assert (=> b!5786979 true))

(assert (=> b!5786979 true))

(declare-fun b!5786977 () Bool)

(declare-fun c!1024551 () Bool)

(assert (=> b!5786977 (= c!1024551 ((_ is Union!15799) r!7292))))

(declare-fun e!3554223 () Bool)

(declare-fun e!3554225 () Bool)

(assert (=> b!5786977 (= e!3554223 e!3554225)))

(declare-fun b!5786978 () Bool)

(declare-fun e!3554224 () Bool)

(declare-fun e!3554222 () Bool)

(assert (=> b!5786978 (= e!3554224 e!3554222)))

(declare-fun res!2441936 () Bool)

(assert (=> b!5786978 (= res!2441936 (not ((_ is EmptyLang!15799) r!7292)))))

(assert (=> b!5786978 (=> (not res!2441936) (not e!3554222))))

(declare-fun e!3554227 () Bool)

(declare-fun call!450561 () Bool)

(assert (=> b!5786979 (= e!3554227 call!450561)))

(declare-fun b!5786980 () Bool)

(declare-fun res!2441937 () Bool)

(declare-fun e!3554226 () Bool)

(assert (=> b!5786980 (=> res!2441937 e!3554226)))

(declare-fun call!450562 () Bool)

(assert (=> b!5786980 (= res!2441937 call!450562)))

(assert (=> b!5786980 (= e!3554227 e!3554226)))

(declare-fun d!1823211 () Bool)

(declare-fun c!1024552 () Bool)

(assert (=> d!1823211 (= c!1024552 ((_ is EmptyExpr!15799) r!7292))))

(assert (=> d!1823211 (= (matchRSpec!2902 r!7292 s!2326) e!3554224)))

(declare-fun b!5786981 () Bool)

(assert (=> b!5786981 (= e!3554224 call!450562)))

(declare-fun c!1024549 () Bool)

(declare-fun bm!450556 () Bool)

(assert (=> bm!450556 (= call!450561 (Exists!2899 (ite c!1024549 lambda!315464 lambda!315465)))))

(declare-fun b!5786982 () Bool)

(declare-fun e!3554221 () Bool)

(assert (=> b!5786982 (= e!3554225 e!3554221)))

(declare-fun res!2441935 () Bool)

(assert (=> b!5786982 (= res!2441935 (matchRSpec!2902 (regOne!32111 r!7292) s!2326))))

(assert (=> b!5786982 (=> res!2441935 e!3554221)))

(declare-fun b!5786983 () Bool)

(declare-fun c!1024550 () Bool)

(assert (=> b!5786983 (= c!1024550 ((_ is ElementMatch!15799) r!7292))))

(assert (=> b!5786983 (= e!3554222 e!3554223)))

(declare-fun b!5786984 () Bool)

(assert (=> b!5786984 (= e!3554225 e!3554227)))

(assert (=> b!5786984 (= c!1024549 ((_ is Star!15799) r!7292))))

(declare-fun bm!450557 () Bool)

(assert (=> bm!450557 (= call!450562 (isEmpty!35476 s!2326))))

(assert (=> b!5786985 (= e!3554226 call!450561)))

(declare-fun b!5786986 () Bool)

(assert (=> b!5786986 (= e!3554223 (= s!2326 (Cons!63573 (c!1024501 r!7292) Nil!63573)))))

(declare-fun b!5786987 () Bool)

(assert (=> b!5786987 (= e!3554221 (matchRSpec!2902 (regTwo!32111 r!7292) s!2326))))

(assert (= (and d!1823211 c!1024552) b!5786981))

(assert (= (and d!1823211 (not c!1024552)) b!5786978))

(assert (= (and b!5786978 res!2441936) b!5786983))

(assert (= (and b!5786983 c!1024550) b!5786986))

(assert (= (and b!5786983 (not c!1024550)) b!5786977))

(assert (= (and b!5786977 c!1024551) b!5786982))

(assert (= (and b!5786977 (not c!1024551)) b!5786984))

(assert (= (and b!5786982 (not res!2441935)) b!5786987))

(assert (= (and b!5786984 c!1024549) b!5786980))

(assert (= (and b!5786984 (not c!1024549)) b!5786979))

(assert (= (and b!5786980 (not res!2441937)) b!5786985))

(assert (= (or b!5786985 b!5786979) bm!450556))

(assert (= (or b!5786981 b!5786980) bm!450557))

(declare-fun m!6731522 () Bool)

(assert (=> bm!450556 m!6731522))

(declare-fun m!6731524 () Bool)

(assert (=> b!5786982 m!6731524))

(assert (=> bm!450557 m!6731432))

(declare-fun m!6731526 () Bool)

(assert (=> b!5786987 m!6731526))

(assert (=> b!5786789 d!1823211))

(declare-fun b!5787072 () Bool)

(declare-fun e!3554276 () Bool)

(declare-fun nullable!5831 (Regex!15799) Bool)

(assert (=> b!5787072 (= e!3554276 (nullable!5831 r!7292))))

(declare-fun d!1823225 () Bool)

(declare-fun e!3554278 () Bool)

(assert (=> d!1823225 e!3554278))

(declare-fun c!1024582 () Bool)

(assert (=> d!1823225 (= c!1024582 ((_ is EmptyExpr!15799) r!7292))))

(declare-fun lt!2296602 () Bool)

(assert (=> d!1823225 (= lt!2296602 e!3554276)))

(declare-fun c!1024580 () Bool)

(assert (=> d!1823225 (= c!1024580 (isEmpty!35476 s!2326))))

(assert (=> d!1823225 (validRegex!7535 r!7292)))

(assert (=> d!1823225 (= (matchR!7984 r!7292 s!2326) lt!2296602)))

(declare-fun b!5787073 () Bool)

(declare-fun res!2441971 () Bool)

(declare-fun e!3554273 () Bool)

(assert (=> b!5787073 (=> res!2441971 e!3554273)))

(declare-fun e!3554274 () Bool)

(assert (=> b!5787073 (= res!2441971 e!3554274)))

(declare-fun res!2441968 () Bool)

(assert (=> b!5787073 (=> (not res!2441968) (not e!3554274))))

(assert (=> b!5787073 (= res!2441968 lt!2296602)))

(declare-fun bm!450581 () Bool)

(declare-fun call!450586 () Bool)

(assert (=> bm!450581 (= call!450586 (isEmpty!35476 s!2326))))

(declare-fun b!5787074 () Bool)

(declare-fun res!2441973 () Bool)

(declare-fun e!3554277 () Bool)

(assert (=> b!5787074 (=> res!2441973 e!3554277)))

(declare-fun tail!11317 (List!63697) List!63697)

(assert (=> b!5787074 (= res!2441973 (not (isEmpty!35476 (tail!11317 s!2326))))))

(declare-fun b!5787075 () Bool)

(declare-fun e!3554279 () Bool)

(assert (=> b!5787075 (= e!3554279 (not lt!2296602))))

(declare-fun b!5787076 () Bool)

(declare-fun head!12222 (List!63697) C!31868)

(assert (=> b!5787076 (= e!3554277 (not (= (head!12222 s!2326) (c!1024501 r!7292))))))

(declare-fun b!5787077 () Bool)

(declare-fun res!2441970 () Bool)

(assert (=> b!5787077 (=> res!2441970 e!3554273)))

(assert (=> b!5787077 (= res!2441970 (not ((_ is ElementMatch!15799) r!7292)))))

(assert (=> b!5787077 (= e!3554279 e!3554273)))

(declare-fun b!5787078 () Bool)

(declare-fun res!2441974 () Bool)

(assert (=> b!5787078 (=> (not res!2441974) (not e!3554274))))

(assert (=> b!5787078 (= res!2441974 (not call!450586))))

(declare-fun b!5787079 () Bool)

(assert (=> b!5787079 (= e!3554274 (= (head!12222 s!2326) (c!1024501 r!7292)))))

(declare-fun b!5787080 () Bool)

(declare-fun derivativeStep!4574 (Regex!15799 C!31868) Regex!15799)

(assert (=> b!5787080 (= e!3554276 (matchR!7984 (derivativeStep!4574 r!7292 (head!12222 s!2326)) (tail!11317 s!2326)))))

(declare-fun b!5787081 () Bool)

(declare-fun e!3554275 () Bool)

(assert (=> b!5787081 (= e!3554273 e!3554275)))

(declare-fun res!2441972 () Bool)

(assert (=> b!5787081 (=> (not res!2441972) (not e!3554275))))

(assert (=> b!5787081 (= res!2441972 (not lt!2296602))))

(declare-fun b!5787082 () Bool)

(assert (=> b!5787082 (= e!3554278 e!3554279)))

(declare-fun c!1024581 () Bool)

(assert (=> b!5787082 (= c!1024581 ((_ is EmptyLang!15799) r!7292))))

(declare-fun b!5787083 () Bool)

(declare-fun res!2441969 () Bool)

(assert (=> b!5787083 (=> (not res!2441969) (not e!3554274))))

(assert (=> b!5787083 (= res!2441969 (isEmpty!35476 (tail!11317 s!2326)))))

(declare-fun b!5787084 () Bool)

(assert (=> b!5787084 (= e!3554275 e!3554277)))

(declare-fun res!2441975 () Bool)

(assert (=> b!5787084 (=> res!2441975 e!3554277)))

(assert (=> b!5787084 (= res!2441975 call!450586)))

(declare-fun b!5787085 () Bool)

(assert (=> b!5787085 (= e!3554278 (= lt!2296602 call!450586))))

(assert (= (and d!1823225 c!1024580) b!5787072))

(assert (= (and d!1823225 (not c!1024580)) b!5787080))

(assert (= (and d!1823225 c!1024582) b!5787085))

(assert (= (and d!1823225 (not c!1024582)) b!5787082))

(assert (= (and b!5787082 c!1024581) b!5787075))

(assert (= (and b!5787082 (not c!1024581)) b!5787077))

(assert (= (and b!5787077 (not res!2441970)) b!5787073))

(assert (= (and b!5787073 res!2441968) b!5787078))

(assert (= (and b!5787078 res!2441974) b!5787083))

(assert (= (and b!5787083 res!2441969) b!5787079))

(assert (= (and b!5787073 (not res!2441971)) b!5787081))

(assert (= (and b!5787081 res!2441972) b!5787084))

(assert (= (and b!5787084 (not res!2441975)) b!5787074))

(assert (= (and b!5787074 (not res!2441973)) b!5787076))

(assert (= (or b!5787085 b!5787084 b!5787078) bm!450581))

(declare-fun m!6731558 () Bool)

(assert (=> b!5787072 m!6731558))

(declare-fun m!6731560 () Bool)

(assert (=> b!5787076 m!6731560))

(declare-fun m!6731562 () Bool)

(assert (=> b!5787074 m!6731562))

(assert (=> b!5787074 m!6731562))

(declare-fun m!6731564 () Bool)

(assert (=> b!5787074 m!6731564))

(assert (=> b!5787083 m!6731562))

(assert (=> b!5787083 m!6731562))

(assert (=> b!5787083 m!6731564))

(assert (=> d!1823225 m!6731432))

(assert (=> d!1823225 m!6731442))

(assert (=> b!5787080 m!6731560))

(assert (=> b!5787080 m!6731560))

(declare-fun m!6731566 () Bool)

(assert (=> b!5787080 m!6731566))

(assert (=> b!5787080 m!6731562))

(assert (=> b!5787080 m!6731566))

(assert (=> b!5787080 m!6731562))

(declare-fun m!6731568 () Bool)

(assert (=> b!5787080 m!6731568))

(assert (=> b!5787079 m!6731560))

(assert (=> bm!450581 m!6731432))

(assert (=> b!5786789 d!1823225))

(declare-fun d!1823239 () Bool)

(assert (=> d!1823239 (= (matchR!7984 r!7292 s!2326) (matchRSpec!2902 r!7292 s!2326))))

(declare-fun lt!2296608 () Unit!156858)

(declare-fun choose!43940 (Regex!15799 List!63697) Unit!156858)

(assert (=> d!1823239 (= lt!2296608 (choose!43940 r!7292 s!2326))))

(assert (=> d!1823239 (validRegex!7535 r!7292)))

(assert (=> d!1823239 (= (mainMatchTheorem!2902 r!7292 s!2326) lt!2296608)))

(declare-fun bs!1366287 () Bool)

(assert (= bs!1366287 d!1823239))

(assert (=> bs!1366287 m!6731460))

(assert (=> bs!1366287 m!6731458))

(declare-fun m!6731570 () Bool)

(assert (=> bs!1366287 m!6731570))

(assert (=> bs!1366287 m!6731442))

(assert (=> b!5786789 d!1823239))

(declare-fun b!5787143 () Bool)

(declare-fun e!3554314 () Regex!15799)

(assert (=> b!5787143 (= e!3554314 (Union!15799 (h!70020 (unfocusZipperList!1227 zl!343)) (generalisedUnion!1662 (t!377037 (unfocusZipperList!1227 zl!343)))))))

(declare-fun b!5787144 () Bool)

(declare-fun e!3554315 () Bool)

(declare-fun lt!2296620 () Regex!15799)

(declare-fun isUnion!718 (Regex!15799) Bool)

(assert (=> b!5787144 (= e!3554315 (isUnion!718 lt!2296620))))

(declare-fun b!5787145 () Bool)

(declare-fun e!3554312 () Bool)

(declare-fun isEmptyLang!1288 (Regex!15799) Bool)

(assert (=> b!5787145 (= e!3554312 (isEmptyLang!1288 lt!2296620))))

(declare-fun b!5787146 () Bool)

(assert (=> b!5787146 (= e!3554314 EmptyLang!15799)))

(declare-fun b!5787147 () Bool)

(assert (=> b!5787147 (= e!3554312 e!3554315)))

(declare-fun c!1024599 () Bool)

(declare-fun isEmpty!35479 (List!63696) Bool)

(declare-fun tail!11318 (List!63696) List!63696)

(assert (=> b!5787147 (= c!1024599 (isEmpty!35479 (tail!11318 (unfocusZipperList!1227 zl!343))))))

(declare-fun b!5787148 () Bool)

(declare-fun e!3554316 () Regex!15799)

(assert (=> b!5787148 (= e!3554316 (h!70020 (unfocusZipperList!1227 zl!343)))))

(declare-fun d!1823241 () Bool)

(declare-fun e!3554311 () Bool)

(assert (=> d!1823241 e!3554311))

(declare-fun res!2442006 () Bool)

(assert (=> d!1823241 (=> (not res!2442006) (not e!3554311))))

(assert (=> d!1823241 (= res!2442006 (validRegex!7535 lt!2296620))))

(assert (=> d!1823241 (= lt!2296620 e!3554316)))

(declare-fun c!1024598 () Bool)

(declare-fun e!3554313 () Bool)

(assert (=> d!1823241 (= c!1024598 e!3554313)))

(declare-fun res!2442005 () Bool)

(assert (=> d!1823241 (=> (not res!2442005) (not e!3554313))))

(assert (=> d!1823241 (= res!2442005 ((_ is Cons!63572) (unfocusZipperList!1227 zl!343)))))

(declare-fun lambda!315480 () Int)

(declare-fun forall!14913 (List!63696 Int) Bool)

(assert (=> d!1823241 (forall!14913 (unfocusZipperList!1227 zl!343) lambda!315480)))

(assert (=> d!1823241 (= (generalisedUnion!1662 (unfocusZipperList!1227 zl!343)) lt!2296620)))

(declare-fun b!5787149 () Bool)

(assert (=> b!5787149 (= e!3554313 (isEmpty!35479 (t!377037 (unfocusZipperList!1227 zl!343))))))

(declare-fun b!5787150 () Bool)

(declare-fun head!12223 (List!63696) Regex!15799)

(assert (=> b!5787150 (= e!3554315 (= lt!2296620 (head!12223 (unfocusZipperList!1227 zl!343))))))

(declare-fun b!5787151 () Bool)

(assert (=> b!5787151 (= e!3554311 e!3554312)))

(declare-fun c!1024597 () Bool)

(assert (=> b!5787151 (= c!1024597 (isEmpty!35479 (unfocusZipperList!1227 zl!343)))))

(declare-fun b!5787152 () Bool)

(assert (=> b!5787152 (= e!3554316 e!3554314)))

(declare-fun c!1024600 () Bool)

(assert (=> b!5787152 (= c!1024600 ((_ is Cons!63572) (unfocusZipperList!1227 zl!343)))))

(assert (= (and d!1823241 res!2442005) b!5787149))

(assert (= (and d!1823241 c!1024598) b!5787148))

(assert (= (and d!1823241 (not c!1024598)) b!5787152))

(assert (= (and b!5787152 c!1024600) b!5787143))

(assert (= (and b!5787152 (not c!1024600)) b!5787146))

(assert (= (and d!1823241 res!2442006) b!5787151))

(assert (= (and b!5787151 c!1024597) b!5787145))

(assert (= (and b!5787151 (not c!1024597)) b!5787147))

(assert (= (and b!5787147 c!1024599) b!5787150))

(assert (= (and b!5787147 (not c!1024599)) b!5787144))

(declare-fun m!6731602 () Bool)

(assert (=> b!5787145 m!6731602))

(declare-fun m!6731604 () Bool)

(assert (=> d!1823241 m!6731604))

(assert (=> d!1823241 m!6731464))

(declare-fun m!6731606 () Bool)

(assert (=> d!1823241 m!6731606))

(assert (=> b!5787150 m!6731464))

(declare-fun m!6731608 () Bool)

(assert (=> b!5787150 m!6731608))

(assert (=> b!5787151 m!6731464))

(declare-fun m!6731610 () Bool)

(assert (=> b!5787151 m!6731610))

(declare-fun m!6731612 () Bool)

(assert (=> b!5787149 m!6731612))

(declare-fun m!6731614 () Bool)

(assert (=> b!5787143 m!6731614))

(declare-fun m!6731616 () Bool)

(assert (=> b!5787144 m!6731616))

(assert (=> b!5787147 m!6731464))

(declare-fun m!6731618 () Bool)

(assert (=> b!5787147 m!6731618))

(assert (=> b!5787147 m!6731618))

(declare-fun m!6731620 () Bool)

(assert (=> b!5787147 m!6731620))

(assert (=> b!5786788 d!1823241))

(declare-fun bs!1366300 () Bool)

(declare-fun d!1823253 () Bool)

(assert (= bs!1366300 (and d!1823253 d!1823241)))

(declare-fun lambda!315489 () Int)

(assert (=> bs!1366300 (= lambda!315489 lambda!315480)))

(declare-fun lt!2296628 () List!63696)

(assert (=> d!1823253 (forall!14913 lt!2296628 lambda!315489)))

(declare-fun e!3554324 () List!63696)

(assert (=> d!1823253 (= lt!2296628 e!3554324)))

(declare-fun c!1024607 () Bool)

(assert (=> d!1823253 (= c!1024607 ((_ is Cons!63574) zl!343))))

(assert (=> d!1823253 (= (unfocusZipperList!1227 zl!343) lt!2296628)))

(declare-fun b!5787168 () Bool)

(assert (=> b!5787168 (= e!3554324 (Cons!63572 (generalisedConcat!1414 (exprs!5683 (h!70022 zl!343))) (unfocusZipperList!1227 (t!377039 zl!343))))))

(declare-fun b!5787169 () Bool)

(assert (=> b!5787169 (= e!3554324 Nil!63572)))

(assert (= (and d!1823253 c!1024607) b!5787168))

(assert (= (and d!1823253 (not c!1024607)) b!5787169))

(declare-fun m!6731642 () Bool)

(assert (=> d!1823253 m!6731642))

(assert (=> b!5787168 m!6731454))

(declare-fun m!6731644 () Bool)

(assert (=> b!5787168 m!6731644))

(assert (=> b!5786788 d!1823253))

(declare-fun d!1823265 () Bool)

(declare-fun e!3554330 () Bool)

(assert (=> d!1823265 e!3554330))

(declare-fun res!2442017 () Bool)

(assert (=> d!1823265 (=> (not res!2442017) (not e!3554330))))

(declare-fun lt!2296635 () List!63698)

(declare-fun noDuplicate!1700 (List!63698) Bool)

(assert (=> d!1823265 (= res!2442017 (noDuplicate!1700 lt!2296635))))

(declare-fun choose!43941 ((InoxSet Context!10366)) List!63698)

(assert (=> d!1823265 (= lt!2296635 (choose!43941 z!1189))))

(assert (=> d!1823265 (= (toList!9583 z!1189) lt!2296635)))

(declare-fun b!5787175 () Bool)

(declare-fun content!11625 (List!63698) (InoxSet Context!10366))

(assert (=> b!5787175 (= e!3554330 (= (content!11625 lt!2296635) z!1189))))

(assert (= (and d!1823265 res!2442017) b!5787175))

(declare-fun m!6731652 () Bool)

(assert (=> d!1823265 m!6731652))

(declare-fun m!6731654 () Bool)

(assert (=> d!1823265 m!6731654))

(declare-fun m!6731656 () Bool)

(assert (=> b!5787175 m!6731656))

(assert (=> b!5786779 d!1823265))

(declare-fun d!1823271 () Bool)

(assert (=> d!1823271 (= (isEmpty!35475 (t!377039 zl!343)) ((_ is Nil!63574) (t!377039 zl!343)))))

(assert (=> b!5786781 d!1823271))

(declare-fun d!1823273 () Bool)

(declare-fun lt!2296640 () Regex!15799)

(assert (=> d!1823273 (validRegex!7535 lt!2296640)))

(assert (=> d!1823273 (= lt!2296640 (generalisedUnion!1662 (unfocusZipperList!1227 zl!343)))))

(assert (=> d!1823273 (= (unfocusZipper!1541 zl!343) lt!2296640)))

(declare-fun bs!1366302 () Bool)

(assert (= bs!1366302 d!1823273))

(declare-fun m!6731658 () Bool)

(assert (=> bs!1366302 m!6731658))

(assert (=> bs!1366302 m!6731464))

(assert (=> bs!1366302 m!6731464))

(assert (=> bs!1366302 m!6731466))

(assert (=> b!5786782 d!1823273))

(declare-fun bs!1366306 () Bool)

(declare-fun d!1823275 () Bool)

(assert (= bs!1366306 (and d!1823275 b!5786785)))

(declare-fun lambda!315495 () Int)

(assert (=> bs!1366306 (= lambda!315495 lambda!315446)))

(assert (=> d!1823275 true))

(assert (=> d!1823275 (= (derivationStepZipper!1868 z!1189 (h!70021 s!2326)) (flatMap!1406 z!1189 lambda!315495))))

(declare-fun bs!1366307 () Bool)

(assert (= bs!1366307 d!1823275))

(declare-fun m!6731680 () Bool)

(assert (=> bs!1366307 m!6731680))

(assert (=> b!5786785 d!1823275))

(declare-fun d!1823279 () Bool)

(declare-fun choose!43942 ((InoxSet Context!10366) Int) (InoxSet Context!10366))

(assert (=> d!1823279 (= (flatMap!1406 z!1189 lambda!315446) (choose!43942 z!1189 lambda!315446))))

(declare-fun bs!1366308 () Bool)

(assert (= bs!1366308 d!1823279))

(declare-fun m!6731682 () Bool)

(assert (=> bs!1366308 m!6731682))

(assert (=> b!5786785 d!1823279))

(declare-fun b!5787278 () Bool)

(declare-fun e!3554382 () (InoxSet Context!10366))

(assert (=> b!5787278 (= e!3554382 ((as const (Array Context!10366 Bool)) false))))

(declare-fun d!1823281 () Bool)

(declare-fun c!1024630 () Bool)

(declare-fun e!3554381 () Bool)

(assert (=> d!1823281 (= c!1024630 e!3554381)))

(declare-fun res!2442026 () Bool)

(assert (=> d!1823281 (=> (not res!2442026) (not e!3554381))))

(assert (=> d!1823281 (= res!2442026 ((_ is Cons!63572) (exprs!5683 (h!70022 zl!343))))))

(declare-fun e!3554383 () (InoxSet Context!10366))

(assert (=> d!1823281 (= (derivationStepZipperUp!1063 (h!70022 zl!343) (h!70021 s!2326)) e!3554383)))

(declare-fun bm!450585 () Bool)

(declare-fun call!450590 () (InoxSet Context!10366))

(assert (=> bm!450585 (= call!450590 (derivationStepZipperDown!1137 (h!70020 (exprs!5683 (h!70022 zl!343))) (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343)))) (h!70021 s!2326)))))

(declare-fun b!5787279 () Bool)

(assert (=> b!5787279 (= e!3554383 ((_ map or) call!450590 (derivationStepZipperUp!1063 (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343)))) (h!70021 s!2326))))))

(declare-fun b!5787280 () Bool)

(assert (=> b!5787280 (= e!3554383 e!3554382)))

(declare-fun c!1024629 () Bool)

(assert (=> b!5787280 (= c!1024629 ((_ is Cons!63572) (exprs!5683 (h!70022 zl!343))))))

(declare-fun b!5787281 () Bool)

(assert (=> b!5787281 (= e!3554381 (nullable!5831 (h!70020 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun b!5787282 () Bool)

(assert (=> b!5787282 (= e!3554382 call!450590)))

(assert (= (and d!1823281 res!2442026) b!5787281))

(assert (= (and d!1823281 c!1024630) b!5787279))

(assert (= (and d!1823281 (not c!1024630)) b!5787280))

(assert (= (and b!5787280 c!1024629) b!5787282))

(assert (= (and b!5787280 (not c!1024629)) b!5787278))

(assert (= (or b!5787279 b!5787282) bm!450585))

(declare-fun m!6731692 () Bool)

(assert (=> bm!450585 m!6731692))

(declare-fun m!6731694 () Bool)

(assert (=> b!5787279 m!6731694))

(declare-fun m!6731696 () Bool)

(assert (=> b!5787281 m!6731696))

(assert (=> b!5786785 d!1823281))

(declare-fun d!1823285 () Bool)

(declare-fun dynLambda!24888 (Int Context!10366) (InoxSet Context!10366))

(assert (=> d!1823285 (= (flatMap!1406 z!1189 lambda!315446) (dynLambda!24888 lambda!315446 (h!70022 zl!343)))))

(declare-fun lt!2296647 () Unit!156858)

(declare-fun choose!43943 ((InoxSet Context!10366) Context!10366 Int) Unit!156858)

(assert (=> d!1823285 (= lt!2296647 (choose!43943 z!1189 (h!70022 zl!343) lambda!315446))))

(assert (=> d!1823285 (= z!1189 (store ((as const (Array Context!10366 Bool)) false) (h!70022 zl!343) true))))

(assert (=> d!1823285 (= (lemmaFlatMapOnSingletonSet!938 z!1189 (h!70022 zl!343) lambda!315446) lt!2296647)))

(declare-fun b_lambda!218169 () Bool)

(assert (=> (not b_lambda!218169) (not d!1823285)))

(declare-fun bs!1366314 () Bool)

(assert (= bs!1366314 d!1823285))

(assert (=> bs!1366314 m!6731446))

(declare-fun m!6731698 () Bool)

(assert (=> bs!1366314 m!6731698))

(declare-fun m!6731700 () Bool)

(assert (=> bs!1366314 m!6731700))

(declare-fun m!6731702 () Bool)

(assert (=> bs!1366314 m!6731702))

(assert (=> b!5786785 d!1823285))

(declare-fun d!1823287 () Bool)

(declare-fun isEmpty!35480 (Option!15808) Bool)

(assert (=> d!1823287 (= (isDefined!12511 (findConcatSeparation!2222 (reg!16128 r!7292) r!7292 Nil!63573 s!2326 s!2326)) (not (isEmpty!35480 (findConcatSeparation!2222 (reg!16128 r!7292) r!7292 Nil!63573 s!2326 s!2326))))))

(declare-fun bs!1366315 () Bool)

(assert (= bs!1366315 d!1823287))

(assert (=> bs!1366315 m!6731426))

(declare-fun m!6731704 () Bool)

(assert (=> bs!1366315 m!6731704))

(assert (=> b!5786794 d!1823287))

(declare-fun bs!1366316 () Bool)

(declare-fun d!1823289 () Bool)

(assert (= bs!1366316 (and d!1823289 b!5786794)))

(declare-fun lambda!315503 () Int)

(assert (=> bs!1366316 (not (= lambda!315503 lambda!315445))))

(assert (=> bs!1366316 (not (= lambda!315503 lambda!315444))))

(declare-fun bs!1366317 () Bool)

(assert (= bs!1366317 (and d!1823289 b!5786985)))

(assert (=> bs!1366317 (not (= lambda!315503 lambda!315464))))

(assert (=> bs!1366316 (= lambda!315503 lambda!315443)))

(declare-fun bs!1366318 () Bool)

(assert (= bs!1366318 (and d!1823289 b!5786979)))

(assert (=> bs!1366318 (not (= lambda!315503 lambda!315465))))

(assert (=> d!1823289 true))

(assert (=> d!1823289 true))

(assert (=> d!1823289 true))

(declare-fun lambda!315504 () Int)

(assert (=> bs!1366316 (= lambda!315504 lambda!315445)))

(assert (=> bs!1366316 (not (= lambda!315504 lambda!315444))))

(assert (=> bs!1366317 (not (= lambda!315504 lambda!315464))))

(declare-fun bs!1366319 () Bool)

(assert (= bs!1366319 d!1823289))

(assert (=> bs!1366319 (not (= lambda!315504 lambda!315503))))

(assert (=> bs!1366316 (not (= lambda!315504 lambda!315443))))

(assert (=> bs!1366318 (= (and (= (reg!16128 r!7292) (regOne!32110 r!7292)) (= r!7292 (regTwo!32110 r!7292))) (= lambda!315504 lambda!315465))))

(assert (=> d!1823289 true))

(assert (=> d!1823289 true))

(assert (=> d!1823289 true))

(assert (=> d!1823289 (= (Exists!2899 lambda!315503) (Exists!2899 lambda!315504))))

(declare-fun lt!2296650 () Unit!156858)

(declare-fun choose!43944 (Regex!15799 Regex!15799 List!63697) Unit!156858)

(assert (=> d!1823289 (= lt!2296650 (choose!43944 (reg!16128 r!7292) r!7292 s!2326))))

(assert (=> d!1823289 (validRegex!7535 (reg!16128 r!7292))))

(assert (=> d!1823289 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1528 (reg!16128 r!7292) r!7292 s!2326) lt!2296650)))

(declare-fun m!6731706 () Bool)

(assert (=> bs!1366319 m!6731706))

(declare-fun m!6731708 () Bool)

(assert (=> bs!1366319 m!6731708))

(declare-fun m!6731710 () Bool)

(assert (=> bs!1366319 m!6731710))

(declare-fun m!6731712 () Bool)

(assert (=> bs!1366319 m!6731712))

(assert (=> b!5786794 d!1823289))

(declare-fun d!1823291 () Bool)

(declare-fun choose!43945 (Int) Bool)

(assert (=> d!1823291 (= (Exists!2899 lambda!315444) (choose!43945 lambda!315444))))

(declare-fun bs!1366320 () Bool)

(assert (= bs!1366320 d!1823291))

(declare-fun m!6731714 () Bool)

(assert (=> bs!1366320 m!6731714))

(assert (=> b!5786794 d!1823291))

(declare-fun d!1823293 () Bool)

(assert (=> d!1823293 (= (isEmpty!35476 s!2326) ((_ is Nil!63573) s!2326))))

(assert (=> b!5786794 d!1823293))

(declare-fun d!1823295 () Bool)

(assert (=> d!1823295 (= (Exists!2899 lambda!315443) (choose!43945 lambda!315443))))

(declare-fun bs!1366321 () Bool)

(assert (= bs!1366321 d!1823295))

(declare-fun m!6731716 () Bool)

(assert (=> bs!1366321 m!6731716))

(assert (=> b!5786794 d!1823295))

(declare-fun d!1823297 () Bool)

(assert (=> d!1823297 (= (Exists!2899 lambda!315445) (choose!43945 lambda!315445))))

(declare-fun bs!1366322 () Bool)

(assert (= bs!1366322 d!1823297))

(declare-fun m!6731718 () Bool)

(assert (=> bs!1366322 m!6731718))

(assert (=> b!5786794 d!1823297))

(declare-fun bs!1366323 () Bool)

(declare-fun d!1823299 () Bool)

(assert (= bs!1366323 (and d!1823299 b!5786794)))

(declare-fun lambda!315509 () Int)

(assert (=> bs!1366323 (not (= lambda!315509 lambda!315445))))

(declare-fun bs!1366324 () Bool)

(assert (= bs!1366324 (and d!1823299 b!5786985)))

(assert (=> bs!1366324 (not (= lambda!315509 lambda!315464))))

(declare-fun bs!1366325 () Bool)

(assert (= bs!1366325 (and d!1823299 d!1823289)))

(assert (=> bs!1366325 (= (= (Star!15799 (reg!16128 r!7292)) r!7292) (= lambda!315509 lambda!315503))))

(assert (=> bs!1366323 (not (= lambda!315509 lambda!315444))))

(assert (=> bs!1366325 (not (= lambda!315509 lambda!315504))))

(assert (=> bs!1366323 (= (= (Star!15799 (reg!16128 r!7292)) r!7292) (= lambda!315509 lambda!315443))))

(declare-fun bs!1366326 () Bool)

(assert (= bs!1366326 (and d!1823299 b!5786979)))

(assert (=> bs!1366326 (not (= lambda!315509 lambda!315465))))

(assert (=> d!1823299 true))

(assert (=> d!1823299 true))

(declare-fun lambda!315510 () Int)

(assert (=> bs!1366323 (not (= lambda!315510 lambda!315445))))

(declare-fun bs!1366327 () Bool)

(assert (= bs!1366327 d!1823299))

(assert (=> bs!1366327 (not (= lambda!315510 lambda!315509))))

(assert (=> bs!1366324 (= (= (Star!15799 (reg!16128 r!7292)) r!7292) (= lambda!315510 lambda!315464))))

(assert (=> bs!1366325 (not (= lambda!315510 lambda!315503))))

(assert (=> bs!1366323 (= (= (Star!15799 (reg!16128 r!7292)) r!7292) (= lambda!315510 lambda!315444))))

(assert (=> bs!1366325 (not (= lambda!315510 lambda!315504))))

(assert (=> bs!1366323 (not (= lambda!315510 lambda!315443))))

(assert (=> bs!1366326 (not (= lambda!315510 lambda!315465))))

(assert (=> d!1823299 true))

(assert (=> d!1823299 true))

(assert (=> d!1823299 (= (Exists!2899 lambda!315509) (Exists!2899 lambda!315510))))

(declare-fun lt!2296653 () Unit!156858)

(declare-fun choose!43946 (Regex!15799 List!63697) Unit!156858)

(assert (=> d!1823299 (= lt!2296653 (choose!43946 (reg!16128 r!7292) s!2326))))

(assert (=> d!1823299 (validRegex!7535 (reg!16128 r!7292))))

(assert (=> d!1823299 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!580 (reg!16128 r!7292) s!2326) lt!2296653)))

(declare-fun m!6731720 () Bool)

(assert (=> bs!1366327 m!6731720))

(declare-fun m!6731722 () Bool)

(assert (=> bs!1366327 m!6731722))

(declare-fun m!6731724 () Bool)

(assert (=> bs!1366327 m!6731724))

(assert (=> bs!1366327 m!6731712))

(assert (=> b!5786794 d!1823299))

(declare-fun b!5787319 () Bool)

(declare-fun e!3554402 () Bool)

(declare-fun lt!2296660 () Option!15808)

(declare-fun ++!14017 (List!63697 List!63697) List!63697)

(declare-fun get!21942 (Option!15808) tuple2!65792)

(assert (=> b!5787319 (= e!3554402 (= (++!14017 (_1!36199 (get!21942 lt!2296660)) (_2!36199 (get!21942 lt!2296660))) s!2326))))

(declare-fun b!5787320 () Bool)

(declare-fun lt!2296662 () Unit!156858)

(declare-fun lt!2296661 () Unit!156858)

(assert (=> b!5787320 (= lt!2296662 lt!2296661)))

(assert (=> b!5787320 (= (++!14017 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573)) (t!377038 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2124 (List!63697 C!31868 List!63697 List!63697) Unit!156858)

(assert (=> b!5787320 (= lt!2296661 (lemmaMoveElementToOtherListKeepsConcatEq!2124 Nil!63573 (h!70021 s!2326) (t!377038 s!2326) s!2326))))

(declare-fun e!3554404 () Option!15808)

(assert (=> b!5787320 (= e!3554404 (findConcatSeparation!2222 (reg!16128 r!7292) r!7292 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573)) (t!377038 s!2326) s!2326))))

(declare-fun b!5787321 () Bool)

(declare-fun e!3554406 () Bool)

(assert (=> b!5787321 (= e!3554406 (not (isDefined!12511 lt!2296660)))))

(declare-fun b!5787322 () Bool)

(assert (=> b!5787322 (= e!3554404 None!15807)))

(declare-fun b!5787323 () Bool)

(declare-fun res!2442057 () Bool)

(assert (=> b!5787323 (=> (not res!2442057) (not e!3554402))))

(assert (=> b!5787323 (= res!2442057 (matchR!7984 (reg!16128 r!7292) (_1!36199 (get!21942 lt!2296660))))))

(declare-fun b!5787324 () Bool)

(declare-fun e!3554403 () Bool)

(assert (=> b!5787324 (= e!3554403 (matchR!7984 r!7292 s!2326))))

(declare-fun b!5787325 () Bool)

(declare-fun e!3554405 () Option!15808)

(assert (=> b!5787325 (= e!3554405 e!3554404)))

(declare-fun c!1024636 () Bool)

(assert (=> b!5787325 (= c!1024636 ((_ is Nil!63573) s!2326))))

(declare-fun b!5787326 () Bool)

(assert (=> b!5787326 (= e!3554405 (Some!15807 (tuple2!65793 Nil!63573 s!2326)))))

(declare-fun b!5787327 () Bool)

(declare-fun res!2442058 () Bool)

(assert (=> b!5787327 (=> (not res!2442058) (not e!3554402))))

(assert (=> b!5787327 (= res!2442058 (matchR!7984 r!7292 (_2!36199 (get!21942 lt!2296660))))))

(declare-fun d!1823301 () Bool)

(assert (=> d!1823301 e!3554406))

(declare-fun res!2442056 () Bool)

(assert (=> d!1823301 (=> res!2442056 e!3554406)))

(assert (=> d!1823301 (= res!2442056 e!3554402)))

(declare-fun res!2442059 () Bool)

(assert (=> d!1823301 (=> (not res!2442059) (not e!3554402))))

(assert (=> d!1823301 (= res!2442059 (isDefined!12511 lt!2296660))))

(assert (=> d!1823301 (= lt!2296660 e!3554405)))

(declare-fun c!1024635 () Bool)

(assert (=> d!1823301 (= c!1024635 e!3554403)))

(declare-fun res!2442055 () Bool)

(assert (=> d!1823301 (=> (not res!2442055) (not e!3554403))))

(assert (=> d!1823301 (= res!2442055 (matchR!7984 (reg!16128 r!7292) Nil!63573))))

(assert (=> d!1823301 (validRegex!7535 (reg!16128 r!7292))))

(assert (=> d!1823301 (= (findConcatSeparation!2222 (reg!16128 r!7292) r!7292 Nil!63573 s!2326 s!2326) lt!2296660)))

(assert (= (and d!1823301 res!2442055) b!5787324))

(assert (= (and d!1823301 c!1024635) b!5787326))

(assert (= (and d!1823301 (not c!1024635)) b!5787325))

(assert (= (and b!5787325 c!1024636) b!5787322))

(assert (= (and b!5787325 (not c!1024636)) b!5787320))

(assert (= (and d!1823301 res!2442059) b!5787323))

(assert (= (and b!5787323 res!2442057) b!5787327))

(assert (= (and b!5787327 res!2442058) b!5787319))

(assert (= (and d!1823301 (not res!2442056)) b!5787321))

(declare-fun m!6731726 () Bool)

(assert (=> b!5787327 m!6731726))

(declare-fun m!6731728 () Bool)

(assert (=> b!5787327 m!6731728))

(declare-fun m!6731730 () Bool)

(assert (=> b!5787321 m!6731730))

(assert (=> d!1823301 m!6731730))

(declare-fun m!6731732 () Bool)

(assert (=> d!1823301 m!6731732))

(assert (=> d!1823301 m!6731712))

(declare-fun m!6731734 () Bool)

(assert (=> b!5787320 m!6731734))

(assert (=> b!5787320 m!6731734))

(declare-fun m!6731736 () Bool)

(assert (=> b!5787320 m!6731736))

(declare-fun m!6731738 () Bool)

(assert (=> b!5787320 m!6731738))

(assert (=> b!5787320 m!6731734))

(declare-fun m!6731740 () Bool)

(assert (=> b!5787320 m!6731740))

(assert (=> b!5787324 m!6731460))

(assert (=> b!5787323 m!6731726))

(declare-fun m!6731742 () Bool)

(assert (=> b!5787323 m!6731742))

(assert (=> b!5787319 m!6731726))

(declare-fun m!6731744 () Bool)

(assert (=> b!5787319 m!6731744))

(assert (=> b!5786794 d!1823301))

(declare-fun bs!1366328 () Bool)

(declare-fun d!1823303 () Bool)

(assert (= bs!1366328 (and d!1823303 b!5786794)))

(declare-fun lambda!315513 () Int)

(assert (=> bs!1366328 (not (= lambda!315513 lambda!315445))))

(declare-fun bs!1366329 () Bool)

(assert (= bs!1366329 (and d!1823303 d!1823299)))

(assert (=> bs!1366329 (not (= lambda!315513 lambda!315510))))

(assert (=> bs!1366329 (= (= r!7292 (Star!15799 (reg!16128 r!7292))) (= lambda!315513 lambda!315509))))

(declare-fun bs!1366330 () Bool)

(assert (= bs!1366330 (and d!1823303 b!5786985)))

(assert (=> bs!1366330 (not (= lambda!315513 lambda!315464))))

(declare-fun bs!1366331 () Bool)

(assert (= bs!1366331 (and d!1823303 d!1823289)))

(assert (=> bs!1366331 (= lambda!315513 lambda!315503)))

(assert (=> bs!1366328 (not (= lambda!315513 lambda!315444))))

(assert (=> bs!1366331 (not (= lambda!315513 lambda!315504))))

(assert (=> bs!1366328 (= lambda!315513 lambda!315443)))

(declare-fun bs!1366332 () Bool)

(assert (= bs!1366332 (and d!1823303 b!5786979)))

(assert (=> bs!1366332 (not (= lambda!315513 lambda!315465))))

(assert (=> d!1823303 true))

(assert (=> d!1823303 true))

(assert (=> d!1823303 true))

(assert (=> d!1823303 (= (isDefined!12511 (findConcatSeparation!2222 (reg!16128 r!7292) r!7292 Nil!63573 s!2326 s!2326)) (Exists!2899 lambda!315513))))

(declare-fun lt!2296665 () Unit!156858)

(declare-fun choose!43947 (Regex!15799 Regex!15799 List!63697) Unit!156858)

(assert (=> d!1823303 (= lt!2296665 (choose!43947 (reg!16128 r!7292) r!7292 s!2326))))

(assert (=> d!1823303 (validRegex!7535 (reg!16128 r!7292))))

(assert (=> d!1823303 (= (lemmaFindConcatSeparationEquivalentToExists!1986 (reg!16128 r!7292) r!7292 s!2326) lt!2296665)))

(declare-fun bs!1366333 () Bool)

(assert (= bs!1366333 d!1823303))

(assert (=> bs!1366333 m!6731712))

(assert (=> bs!1366333 m!6731426))

(assert (=> bs!1366333 m!6731428))

(declare-fun m!6731746 () Bool)

(assert (=> bs!1366333 m!6731746))

(assert (=> bs!1366333 m!6731426))

(declare-fun m!6731748 () Bool)

(assert (=> bs!1366333 m!6731748))

(assert (=> b!5786794 d!1823303))

(declare-fun bs!1366334 () Bool)

(declare-fun d!1823305 () Bool)

(assert (= bs!1366334 (and d!1823305 d!1823241)))

(declare-fun lambda!315516 () Int)

(assert (=> bs!1366334 (= lambda!315516 lambda!315480)))

(declare-fun bs!1366335 () Bool)

(assert (= bs!1366335 (and d!1823305 d!1823253)))

(assert (=> bs!1366335 (= lambda!315516 lambda!315489)))

(assert (=> d!1823305 (= (inv!82744 setElem!38880) (forall!14913 (exprs!5683 setElem!38880) lambda!315516))))

(declare-fun bs!1366336 () Bool)

(assert (= bs!1366336 d!1823305))

(declare-fun m!6731750 () Bool)

(assert (=> bs!1366336 m!6731750))

(assert (=> setNonEmpty!38880 d!1823305))

(declare-fun b!5787350 () Bool)

(declare-fun res!2442078 () Bool)

(declare-fun e!3554428 () Bool)

(assert (=> b!5787350 (=> res!2442078 e!3554428)))

(assert (=> b!5787350 (= res!2442078 (not ((_ is Concat!24644) r!7292)))))

(declare-fun e!3554426 () Bool)

(assert (=> b!5787350 (= e!3554426 e!3554428)))

(declare-fun b!5787351 () Bool)

(declare-fun e!3554429 () Bool)

(assert (=> b!5787351 (= e!3554428 e!3554429)))

(declare-fun res!2442075 () Bool)

(assert (=> b!5787351 (=> (not res!2442075) (not e!3554429))))

(declare-fun call!450597 () Bool)

(assert (=> b!5787351 (= res!2442075 call!450597)))

(declare-fun b!5787352 () Bool)

(declare-fun call!450598 () Bool)

(assert (=> b!5787352 (= e!3554429 call!450598)))

(declare-fun c!1024642 () Bool)

(declare-fun call!450599 () Bool)

(declare-fun bm!450592 () Bool)

(declare-fun c!1024641 () Bool)

(assert (=> bm!450592 (= call!450599 (validRegex!7535 (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292)))))))

(declare-fun bm!450593 () Bool)

(assert (=> bm!450593 (= call!450597 call!450599)))

(declare-fun b!5787353 () Bool)

(declare-fun e!3554425 () Bool)

(declare-fun e!3554427 () Bool)

(assert (=> b!5787353 (= e!3554425 e!3554427)))

(assert (=> b!5787353 (= c!1024642 ((_ is Star!15799) r!7292))))

(declare-fun d!1823307 () Bool)

(declare-fun res!2442077 () Bool)

(assert (=> d!1823307 (=> res!2442077 e!3554425)))

(assert (=> d!1823307 (= res!2442077 ((_ is ElementMatch!15799) r!7292))))

(assert (=> d!1823307 (= (validRegex!7535 r!7292) e!3554425)))

(declare-fun b!5787354 () Bool)

(declare-fun e!3554423 () Bool)

(assert (=> b!5787354 (= e!3554423 call!450599)))

(declare-fun b!5787355 () Bool)

(assert (=> b!5787355 (= e!3554427 e!3554426)))

(assert (=> b!5787355 (= c!1024641 ((_ is Union!15799) r!7292))))

(declare-fun bm!450594 () Bool)

(assert (=> bm!450594 (= call!450598 (validRegex!7535 (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292))))))

(declare-fun b!5787356 () Bool)

(assert (=> b!5787356 (= e!3554427 e!3554423)))

(declare-fun res!2442076 () Bool)

(assert (=> b!5787356 (= res!2442076 (not (nullable!5831 (reg!16128 r!7292))))))

(assert (=> b!5787356 (=> (not res!2442076) (not e!3554423))))

(declare-fun b!5787357 () Bool)

(declare-fun res!2442074 () Bool)

(declare-fun e!3554424 () Bool)

(assert (=> b!5787357 (=> (not res!2442074) (not e!3554424))))

(assert (=> b!5787357 (= res!2442074 call!450597)))

(assert (=> b!5787357 (= e!3554426 e!3554424)))

(declare-fun b!5787358 () Bool)

(assert (=> b!5787358 (= e!3554424 call!450598)))

(assert (= (and d!1823307 (not res!2442077)) b!5787353))

(assert (= (and b!5787353 c!1024642) b!5787356))

(assert (= (and b!5787353 (not c!1024642)) b!5787355))

(assert (= (and b!5787356 res!2442076) b!5787354))

(assert (= (and b!5787355 c!1024641) b!5787357))

(assert (= (and b!5787355 (not c!1024641)) b!5787350))

(assert (= (and b!5787357 res!2442074) b!5787358))

(assert (= (and b!5787350 (not res!2442078)) b!5787351))

(assert (= (and b!5787351 res!2442075) b!5787352))

(assert (= (or b!5787358 b!5787352) bm!450594))

(assert (= (or b!5787357 b!5787351) bm!450593))

(assert (= (or b!5787354 bm!450593) bm!450592))

(declare-fun m!6731752 () Bool)

(assert (=> bm!450592 m!6731752))

(declare-fun m!6731754 () Bool)

(assert (=> bm!450594 m!6731754))

(declare-fun m!6731756 () Bool)

(assert (=> b!5787356 m!6731756))

(assert (=> start!593520 d!1823307))

(declare-fun bs!1366337 () Bool)

(declare-fun d!1823309 () Bool)

(assert (= bs!1366337 (and d!1823309 d!1823241)))

(declare-fun lambda!315519 () Int)

(assert (=> bs!1366337 (= lambda!315519 lambda!315480)))

(declare-fun bs!1366338 () Bool)

(assert (= bs!1366338 (and d!1823309 d!1823253)))

(assert (=> bs!1366338 (= lambda!315519 lambda!315489)))

(declare-fun bs!1366339 () Bool)

(assert (= bs!1366339 (and d!1823309 d!1823305)))

(assert (=> bs!1366339 (= lambda!315519 lambda!315516)))

(declare-fun b!5787379 () Bool)

(declare-fun e!3554442 () Bool)

(declare-fun lt!2296668 () Regex!15799)

(assert (=> b!5787379 (= e!3554442 (= lt!2296668 (head!12223 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun b!5787380 () Bool)

(declare-fun e!3554445 () Bool)

(assert (=> b!5787380 (= e!3554445 (isEmpty!35479 (t!377037 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun b!5787381 () Bool)

(declare-fun e!3554446 () Bool)

(declare-fun e!3554447 () Bool)

(assert (=> b!5787381 (= e!3554446 e!3554447)))

(declare-fun c!1024654 () Bool)

(assert (=> b!5787381 (= c!1024654 (isEmpty!35479 (exprs!5683 (h!70022 zl!343))))))

(declare-fun b!5787382 () Bool)

(declare-fun isConcat!802 (Regex!15799) Bool)

(assert (=> b!5787382 (= e!3554442 (isConcat!802 lt!2296668))))

(declare-fun b!5787384 () Bool)

(declare-fun e!3554443 () Regex!15799)

(assert (=> b!5787384 (= e!3554443 (h!70020 (exprs!5683 (h!70022 zl!343))))))

(declare-fun b!5787385 () Bool)

(declare-fun isEmptyExpr!1279 (Regex!15799) Bool)

(assert (=> b!5787385 (= e!3554447 (isEmptyExpr!1279 lt!2296668))))

(declare-fun b!5787386 () Bool)

(declare-fun e!3554444 () Regex!15799)

(assert (=> b!5787386 (= e!3554443 e!3554444)))

(declare-fun c!1024651 () Bool)

(assert (=> b!5787386 (= c!1024651 ((_ is Cons!63572) (exprs!5683 (h!70022 zl!343))))))

(declare-fun b!5787383 () Bool)

(assert (=> b!5787383 (= e!3554444 (Concat!24644 (h!70020 (exprs!5683 (h!70022 zl!343))) (generalisedConcat!1414 (t!377037 (exprs!5683 (h!70022 zl!343))))))))

(assert (=> d!1823309 e!3554446))

(declare-fun res!2442083 () Bool)

(assert (=> d!1823309 (=> (not res!2442083) (not e!3554446))))

(assert (=> d!1823309 (= res!2442083 (validRegex!7535 lt!2296668))))

(assert (=> d!1823309 (= lt!2296668 e!3554443)))

(declare-fun c!1024652 () Bool)

(assert (=> d!1823309 (= c!1024652 e!3554445)))

(declare-fun res!2442084 () Bool)

(assert (=> d!1823309 (=> (not res!2442084) (not e!3554445))))

(assert (=> d!1823309 (= res!2442084 ((_ is Cons!63572) (exprs!5683 (h!70022 zl!343))))))

(assert (=> d!1823309 (forall!14913 (exprs!5683 (h!70022 zl!343)) lambda!315519)))

(assert (=> d!1823309 (= (generalisedConcat!1414 (exprs!5683 (h!70022 zl!343))) lt!2296668)))

(declare-fun b!5787387 () Bool)

(assert (=> b!5787387 (= e!3554444 EmptyExpr!15799)))

(declare-fun b!5787388 () Bool)

(assert (=> b!5787388 (= e!3554447 e!3554442)))

(declare-fun c!1024653 () Bool)

(assert (=> b!5787388 (= c!1024653 (isEmpty!35479 (tail!11318 (exprs!5683 (h!70022 zl!343)))))))

(assert (= (and d!1823309 res!2442084) b!5787380))

(assert (= (and d!1823309 c!1024652) b!5787384))

(assert (= (and d!1823309 (not c!1024652)) b!5787386))

(assert (= (and b!5787386 c!1024651) b!5787383))

(assert (= (and b!5787386 (not c!1024651)) b!5787387))

(assert (= (and d!1823309 res!2442083) b!5787381))

(assert (= (and b!5787381 c!1024654) b!5787385))

(assert (= (and b!5787381 (not c!1024654)) b!5787388))

(assert (= (and b!5787388 c!1024653) b!5787379))

(assert (= (and b!5787388 (not c!1024653)) b!5787382))

(declare-fun m!6731758 () Bool)

(assert (=> b!5787380 m!6731758))

(declare-fun m!6731760 () Bool)

(assert (=> d!1823309 m!6731760))

(declare-fun m!6731762 () Bool)

(assert (=> d!1823309 m!6731762))

(declare-fun m!6731764 () Bool)

(assert (=> b!5787382 m!6731764))

(declare-fun m!6731766 () Bool)

(assert (=> b!5787379 m!6731766))

(declare-fun m!6731768 () Bool)

(assert (=> b!5787385 m!6731768))

(declare-fun m!6731770 () Bool)

(assert (=> b!5787388 m!6731770))

(assert (=> b!5787388 m!6731770))

(declare-fun m!6731772 () Bool)

(assert (=> b!5787388 m!6731772))

(declare-fun m!6731774 () Bool)

(assert (=> b!5787383 m!6731774))

(declare-fun m!6731776 () Bool)

(assert (=> b!5787381 m!6731776))

(assert (=> b!5786787 d!1823309))

(declare-fun bs!1366340 () Bool)

(declare-fun d!1823311 () Bool)

(assert (= bs!1366340 (and d!1823311 d!1823241)))

(declare-fun lambda!315520 () Int)

(assert (=> bs!1366340 (= lambda!315520 lambda!315480)))

(declare-fun bs!1366341 () Bool)

(assert (= bs!1366341 (and d!1823311 d!1823253)))

(assert (=> bs!1366341 (= lambda!315520 lambda!315489)))

(declare-fun bs!1366342 () Bool)

(assert (= bs!1366342 (and d!1823311 d!1823305)))

(assert (=> bs!1366342 (= lambda!315520 lambda!315516)))

(declare-fun bs!1366343 () Bool)

(assert (= bs!1366343 (and d!1823311 d!1823309)))

(assert (=> bs!1366343 (= lambda!315520 lambda!315519)))

(assert (=> d!1823311 (= (inv!82744 (h!70022 zl!343)) (forall!14913 (exprs!5683 (h!70022 zl!343)) lambda!315520))))

(declare-fun bs!1366344 () Bool)

(assert (= bs!1366344 d!1823311))

(declare-fun m!6731778 () Bool)

(assert (=> bs!1366344 m!6731778))

(assert (=> b!5786778 d!1823311))

(declare-fun b!5787411 () Bool)

(declare-fun e!3554462 () (InoxSet Context!10366))

(declare-fun call!450614 () (InoxSet Context!10366))

(declare-fun call!450616 () (InoxSet Context!10366))

(assert (=> b!5787411 (= e!3554462 ((_ map or) call!450614 call!450616))))

(declare-fun b!5787412 () Bool)

(declare-fun e!3554465 () Bool)

(assert (=> b!5787412 (= e!3554465 (nullable!5831 (regOne!32110 r!7292)))))

(declare-fun c!1024667 () Bool)

(declare-fun call!450615 () List!63696)

(declare-fun bm!450607 () Bool)

(assert (=> bm!450607 (= call!450614 (derivationStepZipperDown!1137 (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292)) (ite c!1024667 (Context!10367 Nil!63572) (Context!10367 call!450615)) (h!70021 s!2326)))))

(declare-fun c!1024666 () Bool)

(declare-fun bm!450608 () Bool)

(declare-fun c!1024669 () Bool)

(declare-fun $colon$colon!1786 (List!63696 Regex!15799) List!63696)

(assert (=> bm!450608 (= call!450615 ($colon$colon!1786 (exprs!5683 (Context!10367 Nil!63572)) (ite (or c!1024669 c!1024666) (regTwo!32110 r!7292) r!7292)))))

(declare-fun b!5787413 () Bool)

(declare-fun e!3554461 () (InoxSet Context!10366))

(assert (=> b!5787413 (= e!3554461 e!3554462)))

(assert (=> b!5787413 (= c!1024667 ((_ is Union!15799) r!7292))))

(declare-fun b!5787414 () Bool)

(declare-fun e!3554464 () (InoxSet Context!10366))

(declare-fun call!450612 () (InoxSet Context!10366))

(assert (=> b!5787414 (= e!3554464 ((_ map or) call!450614 call!450612))))

(declare-fun b!5787415 () Bool)

(declare-fun e!3554460 () (InoxSet Context!10366))

(declare-fun call!450613 () (InoxSet Context!10366))

(assert (=> b!5787415 (= e!3554460 call!450613)))

(declare-fun d!1823313 () Bool)

(declare-fun c!1024665 () Bool)

(assert (=> d!1823313 (= c!1024665 (and ((_ is ElementMatch!15799) r!7292) (= (c!1024501 r!7292) (h!70021 s!2326))))))

(assert (=> d!1823313 (= (derivationStepZipperDown!1137 r!7292 (Context!10367 Nil!63572) (h!70021 s!2326)) e!3554461)))

(declare-fun b!5787416 () Bool)

(assert (=> b!5787416 (= c!1024669 e!3554465)))

(declare-fun res!2442087 () Bool)

(assert (=> b!5787416 (=> (not res!2442087) (not e!3554465))))

(assert (=> b!5787416 (= res!2442087 ((_ is Concat!24644) r!7292))))

(assert (=> b!5787416 (= e!3554462 e!3554464)))

(declare-fun bm!450609 () Bool)

(assert (=> bm!450609 (= call!450612 call!450616)))

(declare-fun b!5787417 () Bool)

(assert (=> b!5787417 (= e!3554460 ((as const (Array Context!10366 Bool)) false))))

(declare-fun b!5787418 () Bool)

(declare-fun c!1024668 () Bool)

(assert (=> b!5787418 (= c!1024668 ((_ is Star!15799) r!7292))))

(declare-fun e!3554463 () (InoxSet Context!10366))

(assert (=> b!5787418 (= e!3554463 e!3554460)))

(declare-fun b!5787419 () Bool)

(assert (=> b!5787419 (= e!3554461 (store ((as const (Array Context!10366 Bool)) false) (Context!10367 Nil!63572) true))))

(declare-fun bm!450610 () Bool)

(declare-fun call!450617 () List!63696)

(assert (=> bm!450610 (= call!450617 call!450615)))

(declare-fun bm!450611 () Bool)

(assert (=> bm!450611 (= call!450613 call!450612)))

(declare-fun bm!450612 () Bool)

(assert (=> bm!450612 (= call!450616 (derivationStepZipperDown!1137 (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292)))) (ite (or c!1024667 c!1024669) (Context!10367 Nil!63572) (Context!10367 call!450617)) (h!70021 s!2326)))))

(declare-fun b!5787420 () Bool)

(assert (=> b!5787420 (= e!3554464 e!3554463)))

(assert (=> b!5787420 (= c!1024666 ((_ is Concat!24644) r!7292))))

(declare-fun b!5787421 () Bool)

(assert (=> b!5787421 (= e!3554463 call!450613)))

(assert (= (and d!1823313 c!1024665) b!5787419))

(assert (= (and d!1823313 (not c!1024665)) b!5787413))

(assert (= (and b!5787413 c!1024667) b!5787411))

(assert (= (and b!5787413 (not c!1024667)) b!5787416))

(assert (= (and b!5787416 res!2442087) b!5787412))

(assert (= (and b!5787416 c!1024669) b!5787414))

(assert (= (and b!5787416 (not c!1024669)) b!5787420))

(assert (= (and b!5787420 c!1024666) b!5787421))

(assert (= (and b!5787420 (not c!1024666)) b!5787418))

(assert (= (and b!5787418 c!1024668) b!5787415))

(assert (= (and b!5787418 (not c!1024668)) b!5787417))

(assert (= (or b!5787421 b!5787415) bm!450610))

(assert (= (or b!5787421 b!5787415) bm!450611))

(assert (= (or b!5787414 bm!450610) bm!450608))

(assert (= (or b!5787414 bm!450611) bm!450609))

(assert (= (or b!5787411 bm!450609) bm!450612))

(assert (= (or b!5787411 b!5787414) bm!450607))

(declare-fun m!6731780 () Bool)

(assert (=> b!5787412 m!6731780))

(declare-fun m!6731782 () Bool)

(assert (=> bm!450608 m!6731782))

(declare-fun m!6731784 () Bool)

(assert (=> b!5787419 m!6731784))

(declare-fun m!6731786 () Bool)

(assert (=> bm!450612 m!6731786))

(declare-fun m!6731788 () Bool)

(assert (=> bm!450607 m!6731788))

(assert (=> b!5786776 d!1823313))

(declare-fun b!5787422 () Bool)

(declare-fun e!3554467 () (InoxSet Context!10366))

(assert (=> b!5787422 (= e!3554467 ((as const (Array Context!10366 Bool)) false))))

(declare-fun d!1823315 () Bool)

(declare-fun c!1024671 () Bool)

(declare-fun e!3554466 () Bool)

(assert (=> d!1823315 (= c!1024671 e!3554466)))

(declare-fun res!2442088 () Bool)

(assert (=> d!1823315 (=> (not res!2442088) (not e!3554466))))

(assert (=> d!1823315 (= res!2442088 ((_ is Cons!63572) (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))))))

(declare-fun e!3554468 () (InoxSet Context!10366))

(assert (=> d!1823315 (= (derivationStepZipperUp!1063 (Context!10367 (Cons!63572 r!7292 Nil!63572)) (h!70021 s!2326)) e!3554468)))

(declare-fun bm!450613 () Bool)

(declare-fun call!450618 () (InoxSet Context!10366))

(assert (=> bm!450613 (= call!450618 (derivationStepZipperDown!1137 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))) (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (h!70021 s!2326)))))

(declare-fun b!5787423 () Bool)

(assert (=> b!5787423 (= e!3554468 ((_ map or) call!450618 (derivationStepZipperUp!1063 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (h!70021 s!2326))))))

(declare-fun b!5787424 () Bool)

(assert (=> b!5787424 (= e!3554468 e!3554467)))

(declare-fun c!1024670 () Bool)

(assert (=> b!5787424 (= c!1024670 ((_ is Cons!63572) (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))))))

(declare-fun b!5787425 () Bool)

(assert (=> b!5787425 (= e!3554466 (nullable!5831 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))))))

(declare-fun b!5787426 () Bool)

(assert (=> b!5787426 (= e!3554467 call!450618)))

(assert (= (and d!1823315 res!2442088) b!5787425))

(assert (= (and d!1823315 c!1024671) b!5787423))

(assert (= (and d!1823315 (not c!1024671)) b!5787424))

(assert (= (and b!5787424 c!1024670) b!5787426))

(assert (= (and b!5787424 (not c!1024670)) b!5787422))

(assert (= (or b!5787423 b!5787426) bm!450613))

(declare-fun m!6731790 () Bool)

(assert (=> bm!450613 m!6731790))

(declare-fun m!6731792 () Bool)

(assert (=> b!5787423 m!6731792))

(declare-fun m!6731794 () Bool)

(assert (=> b!5787425 m!6731794))

(assert (=> b!5786776 d!1823315))

(declare-fun b!5787431 () Bool)

(declare-fun e!3554471 () Bool)

(declare-fun tp!1596559 () Bool)

(declare-fun tp!1596560 () Bool)

(assert (=> b!5787431 (= e!3554471 (and tp!1596559 tp!1596560))))

(assert (=> b!5786780 (= tp!1596489 e!3554471)))

(assert (= (and b!5786780 ((_ is Cons!63572) (exprs!5683 (h!70022 zl!343)))) b!5787431))

(declare-fun condSetEmpty!38886 () Bool)

(assert (=> setNonEmpty!38880 (= condSetEmpty!38886 (= setRest!38880 ((as const (Array Context!10366 Bool)) false)))))

(declare-fun setRes!38886 () Bool)

(assert (=> setNonEmpty!38880 (= tp!1596496 setRes!38886)))

(declare-fun setIsEmpty!38886 () Bool)

(assert (=> setIsEmpty!38886 setRes!38886))

(declare-fun setNonEmpty!38886 () Bool)

(declare-fun e!3554474 () Bool)

(declare-fun tp!1596566 () Bool)

(declare-fun setElem!38886 () Context!10366)

(assert (=> setNonEmpty!38886 (= setRes!38886 (and tp!1596566 (inv!82744 setElem!38886) e!3554474))))

(declare-fun setRest!38886 () (InoxSet Context!10366))

(assert (=> setNonEmpty!38886 (= setRest!38880 ((_ map or) (store ((as const (Array Context!10366 Bool)) false) setElem!38886 true) setRest!38886))))

(declare-fun b!5787436 () Bool)

(declare-fun tp!1596565 () Bool)

(assert (=> b!5787436 (= e!3554474 tp!1596565)))

(assert (= (and setNonEmpty!38880 condSetEmpty!38886) setIsEmpty!38886))

(assert (= (and setNonEmpty!38880 (not condSetEmpty!38886)) setNonEmpty!38886))

(assert (= setNonEmpty!38886 b!5787436))

(declare-fun m!6731796 () Bool)

(assert (=> setNonEmpty!38886 m!6731796))

(declare-fun b!5787447 () Bool)

(declare-fun e!3554477 () Bool)

(assert (=> b!5787447 (= e!3554477 tp_is_empty!40851)))

(declare-fun b!5787448 () Bool)

(declare-fun tp!1596580 () Bool)

(declare-fun tp!1596579 () Bool)

(assert (=> b!5787448 (= e!3554477 (and tp!1596580 tp!1596579))))

(declare-fun b!5787449 () Bool)

(declare-fun tp!1596577 () Bool)

(assert (=> b!5787449 (= e!3554477 tp!1596577)))

(declare-fun b!5787450 () Bool)

(declare-fun tp!1596581 () Bool)

(declare-fun tp!1596578 () Bool)

(assert (=> b!5787450 (= e!3554477 (and tp!1596581 tp!1596578))))

(assert (=> b!5786791 (= tp!1596491 e!3554477)))

(assert (= (and b!5786791 ((_ is ElementMatch!15799) (regOne!32110 r!7292))) b!5787447))

(assert (= (and b!5786791 ((_ is Concat!24644) (regOne!32110 r!7292))) b!5787448))

(assert (= (and b!5786791 ((_ is Star!15799) (regOne!32110 r!7292))) b!5787449))

(assert (= (and b!5786791 ((_ is Union!15799) (regOne!32110 r!7292))) b!5787450))

(declare-fun b!5787451 () Bool)

(declare-fun e!3554478 () Bool)

(assert (=> b!5787451 (= e!3554478 tp_is_empty!40851)))

(declare-fun b!5787452 () Bool)

(declare-fun tp!1596585 () Bool)

(declare-fun tp!1596584 () Bool)

(assert (=> b!5787452 (= e!3554478 (and tp!1596585 tp!1596584))))

(declare-fun b!5787453 () Bool)

(declare-fun tp!1596582 () Bool)

(assert (=> b!5787453 (= e!3554478 tp!1596582)))

(declare-fun b!5787454 () Bool)

(declare-fun tp!1596586 () Bool)

(declare-fun tp!1596583 () Bool)

(assert (=> b!5787454 (= e!3554478 (and tp!1596586 tp!1596583))))

(assert (=> b!5786791 (= tp!1596494 e!3554478)))

(assert (= (and b!5786791 ((_ is ElementMatch!15799) (regTwo!32110 r!7292))) b!5787451))

(assert (= (and b!5786791 ((_ is Concat!24644) (regTwo!32110 r!7292))) b!5787452))

(assert (= (and b!5786791 ((_ is Star!15799) (regTwo!32110 r!7292))) b!5787453))

(assert (= (and b!5786791 ((_ is Union!15799) (regTwo!32110 r!7292))) b!5787454))

(declare-fun b!5787459 () Bool)

(declare-fun e!3554481 () Bool)

(declare-fun tp!1596589 () Bool)

(assert (=> b!5787459 (= e!3554481 (and tp_is_empty!40851 tp!1596589))))

(assert (=> b!5786783 (= tp!1596487 e!3554481)))

(assert (= (and b!5786783 ((_ is Cons!63573) (t!377038 s!2326))) b!5787459))

(declare-fun b!5787467 () Bool)

(declare-fun e!3554487 () Bool)

(declare-fun tp!1596594 () Bool)

(assert (=> b!5787467 (= e!3554487 tp!1596594)))

(declare-fun b!5787466 () Bool)

(declare-fun e!3554486 () Bool)

(declare-fun tp!1596595 () Bool)

(assert (=> b!5787466 (= e!3554486 (and (inv!82744 (h!70022 (t!377039 zl!343))) e!3554487 tp!1596595))))

(assert (=> b!5786778 (= tp!1596495 e!3554486)))

(assert (= b!5787466 b!5787467))

(assert (= (and b!5786778 ((_ is Cons!63574) (t!377039 zl!343))) b!5787466))

(declare-fun m!6731798 () Bool)

(assert (=> b!5787466 m!6731798))

(declare-fun b!5787468 () Bool)

(declare-fun e!3554488 () Bool)

(assert (=> b!5787468 (= e!3554488 tp_is_empty!40851)))

(declare-fun b!5787469 () Bool)

(declare-fun tp!1596599 () Bool)

(declare-fun tp!1596598 () Bool)

(assert (=> b!5787469 (= e!3554488 (and tp!1596599 tp!1596598))))

(declare-fun b!5787470 () Bool)

(declare-fun tp!1596596 () Bool)

(assert (=> b!5787470 (= e!3554488 tp!1596596)))

(declare-fun b!5787471 () Bool)

(declare-fun tp!1596600 () Bool)

(declare-fun tp!1596597 () Bool)

(assert (=> b!5787471 (= e!3554488 (and tp!1596600 tp!1596597))))

(assert (=> b!5786792 (= tp!1596492 e!3554488)))

(assert (= (and b!5786792 ((_ is ElementMatch!15799) (reg!16128 r!7292))) b!5787468))

(assert (= (and b!5786792 ((_ is Concat!24644) (reg!16128 r!7292))) b!5787469))

(assert (= (and b!5786792 ((_ is Star!15799) (reg!16128 r!7292))) b!5787470))

(assert (= (and b!5786792 ((_ is Union!15799) (reg!16128 r!7292))) b!5787471))

(declare-fun b!5787472 () Bool)

(declare-fun e!3554489 () Bool)

(assert (=> b!5787472 (= e!3554489 tp_is_empty!40851)))

(declare-fun b!5787473 () Bool)

(declare-fun tp!1596604 () Bool)

(declare-fun tp!1596603 () Bool)

(assert (=> b!5787473 (= e!3554489 (and tp!1596604 tp!1596603))))

(declare-fun b!5787474 () Bool)

(declare-fun tp!1596601 () Bool)

(assert (=> b!5787474 (= e!3554489 tp!1596601)))

(declare-fun b!5787475 () Bool)

(declare-fun tp!1596605 () Bool)

(declare-fun tp!1596602 () Bool)

(assert (=> b!5787475 (= e!3554489 (and tp!1596605 tp!1596602))))

(assert (=> b!5786790 (= tp!1596490 e!3554489)))

(assert (= (and b!5786790 ((_ is ElementMatch!15799) (regOne!32111 r!7292))) b!5787472))

(assert (= (and b!5786790 ((_ is Concat!24644) (regOne!32111 r!7292))) b!5787473))

(assert (= (and b!5786790 ((_ is Star!15799) (regOne!32111 r!7292))) b!5787474))

(assert (= (and b!5786790 ((_ is Union!15799) (regOne!32111 r!7292))) b!5787475))

(declare-fun b!5787476 () Bool)

(declare-fun e!3554490 () Bool)

(assert (=> b!5787476 (= e!3554490 tp_is_empty!40851)))

(declare-fun b!5787477 () Bool)

(declare-fun tp!1596609 () Bool)

(declare-fun tp!1596608 () Bool)

(assert (=> b!5787477 (= e!3554490 (and tp!1596609 tp!1596608))))

(declare-fun b!5787478 () Bool)

(declare-fun tp!1596606 () Bool)

(assert (=> b!5787478 (= e!3554490 tp!1596606)))

(declare-fun b!5787479 () Bool)

(declare-fun tp!1596610 () Bool)

(declare-fun tp!1596607 () Bool)

(assert (=> b!5787479 (= e!3554490 (and tp!1596610 tp!1596607))))

(assert (=> b!5786790 (= tp!1596488 e!3554490)))

(assert (= (and b!5786790 ((_ is ElementMatch!15799) (regTwo!32111 r!7292))) b!5787476))

(assert (= (and b!5786790 ((_ is Concat!24644) (regTwo!32111 r!7292))) b!5787477))

(assert (= (and b!5786790 ((_ is Star!15799) (regTwo!32111 r!7292))) b!5787478))

(assert (= (and b!5786790 ((_ is Union!15799) (regTwo!32111 r!7292))) b!5787479))

(declare-fun b!5787480 () Bool)

(declare-fun e!3554491 () Bool)

(declare-fun tp!1596611 () Bool)

(declare-fun tp!1596612 () Bool)

(assert (=> b!5787480 (= e!3554491 (and tp!1596611 tp!1596612))))

(assert (=> b!5786796 (= tp!1596493 e!3554491)))

(assert (= (and b!5786796 ((_ is Cons!63572) (exprs!5683 setElem!38880))) b!5787480))

(declare-fun b_lambda!218171 () Bool)

(assert (= b_lambda!218169 (or b!5786785 b_lambda!218171)))

(declare-fun bs!1366345 () Bool)

(declare-fun d!1823317 () Bool)

(assert (= bs!1366345 (and d!1823317 b!5786785)))

(assert (=> bs!1366345 (= (dynLambda!24888 lambda!315446 (h!70022 zl!343)) (derivationStepZipperUp!1063 (h!70022 zl!343) (h!70021 s!2326)))))

(assert (=> bs!1366345 m!6731448))

(assert (=> d!1823285 d!1823317))

(check-sat (not b!5787425) (not d!1823225) (not b!5787450) (not bm!450613) (not b!5787479) (not b!5787168) (not b!5787074) (not b!5787079) (not bm!450608) (not b!5787281) (not b!5787072) (not bm!450594) (not b!5787436) (not b!5787448) (not d!1823309) (not b!5787467) (not b!5787477) (not d!1823291) (not d!1823285) (not b!5787431) tp_is_empty!40851 (not b!5787382) (not b!5787470) (not b!5787279) (not b!5787147) (not b!5787143) (not b!5787469) (not bm!450557) (not b!5787083) (not b!5787452) (not b!5787379) (not bm!450585) (not bs!1366345) (not d!1823299) (not b!5787473) (not b!5787454) (not d!1823279) (not b!5787381) (not b!5787471) (not b!5787474) (not b!5787385) (not bm!450556) (not b!5787320) (not setNonEmpty!38886) (not b!5787388) (not d!1823289) (not b!5787327) (not b!5787475) (not b!5787321) (not d!1823265) (not d!1823273) (not d!1823297) (not d!1823305) (not d!1823295) (not bm!450592) (not b!5787080) (not d!1823275) (not d!1823311) (not b!5787324) (not d!1823303) (not b_lambda!218171) (not d!1823253) (not b!5787144) (not b!5787149) (not d!1823301) (not b!5787423) (not b!5787356) (not b!5787150) (not b!5787145) (not d!1823239) (not b!5787449) (not b!5787459) (not bm!450581) (not b!5787319) (not b!5787478) (not b!5787076) (not b!5786987) (not b!5787151) (not b!5787412) (not b!5787480) (not d!1823287) (not b!5787466) (not b!5787175) (not b!5787323) (not d!1823241) (not b!5787383) (not b!5787380) (not bm!450612) (not bm!450607) (not b!5786982) (not b!5787453))
(check-sat)
(get-model)

(declare-fun d!1823387 () Bool)

(declare-fun c!1024717 () Bool)

(assert (=> d!1823387 (= c!1024717 ((_ is Nil!63574) lt!2296635))))

(declare-fun e!3554586 () (InoxSet Context!10366))

(assert (=> d!1823387 (= (content!11625 lt!2296635) e!3554586)))

(declare-fun b!5787644 () Bool)

(assert (=> b!5787644 (= e!3554586 ((as const (Array Context!10366 Bool)) false))))

(declare-fun b!5787645 () Bool)

(assert (=> b!5787645 (= e!3554586 ((_ map or) (store ((as const (Array Context!10366 Bool)) false) (h!70022 lt!2296635) true) (content!11625 (t!377039 lt!2296635))))))

(assert (= (and d!1823387 c!1024717) b!5787644))

(assert (= (and d!1823387 (not c!1024717)) b!5787645))

(declare-fun m!6731964 () Bool)

(assert (=> b!5787645 m!6731964))

(declare-fun m!6731966 () Bool)

(assert (=> b!5787645 m!6731966))

(assert (=> b!5787175 d!1823387))

(declare-fun d!1823389 () Bool)

(assert (=> d!1823389 (= (Exists!2899 lambda!315509) (choose!43945 lambda!315509))))

(declare-fun bs!1366367 () Bool)

(assert (= bs!1366367 d!1823389))

(declare-fun m!6731968 () Bool)

(assert (=> bs!1366367 m!6731968))

(assert (=> d!1823299 d!1823389))

(declare-fun d!1823391 () Bool)

(assert (=> d!1823391 (= (Exists!2899 lambda!315510) (choose!43945 lambda!315510))))

(declare-fun bs!1366368 () Bool)

(assert (= bs!1366368 d!1823391))

(declare-fun m!6731970 () Bool)

(assert (=> bs!1366368 m!6731970))

(assert (=> d!1823299 d!1823391))

(declare-fun bs!1366377 () Bool)

(declare-fun d!1823393 () Bool)

(assert (= bs!1366377 (and d!1823393 b!5786794)))

(declare-fun lambda!315538 () Int)

(assert (=> bs!1366377 (not (= lambda!315538 lambda!315445))))

(declare-fun bs!1366378 () Bool)

(assert (= bs!1366378 (and d!1823393 d!1823299)))

(assert (=> bs!1366378 (not (= lambda!315538 lambda!315510))))

(assert (=> bs!1366378 (= lambda!315538 lambda!315509)))

(declare-fun bs!1366379 () Bool)

(assert (= bs!1366379 (and d!1823393 d!1823289)))

(assert (=> bs!1366379 (= (= (Star!15799 (reg!16128 r!7292)) r!7292) (= lambda!315538 lambda!315503))))

(assert (=> bs!1366377 (not (= lambda!315538 lambda!315444))))

(assert (=> bs!1366379 (not (= lambda!315538 lambda!315504))))

(declare-fun bs!1366380 () Bool)

(assert (= bs!1366380 (and d!1823393 d!1823303)))

(assert (=> bs!1366380 (= (= (Star!15799 (reg!16128 r!7292)) r!7292) (= lambda!315538 lambda!315513))))

(declare-fun bs!1366381 () Bool)

(assert (= bs!1366381 (and d!1823393 b!5786985)))

(assert (=> bs!1366381 (not (= lambda!315538 lambda!315464))))

(assert (=> bs!1366377 (= (= (Star!15799 (reg!16128 r!7292)) r!7292) (= lambda!315538 lambda!315443))))

(declare-fun bs!1366382 () Bool)

(assert (= bs!1366382 (and d!1823393 b!5786979)))

(assert (=> bs!1366382 (not (= lambda!315538 lambda!315465))))

(assert (=> d!1823393 true))

(assert (=> d!1823393 true))

(declare-fun lambda!315541 () Int)

(assert (=> bs!1366377 (not (= lambda!315541 lambda!315445))))

(assert (=> bs!1366378 (not (= lambda!315541 lambda!315509))))

(assert (=> bs!1366379 (not (= lambda!315541 lambda!315503))))

(assert (=> bs!1366378 (= lambda!315541 lambda!315510)))

(declare-fun bs!1366383 () Bool)

(assert (= bs!1366383 d!1823393))

(assert (=> bs!1366383 (not (= lambda!315541 lambda!315538))))

(assert (=> bs!1366377 (= (= (Star!15799 (reg!16128 r!7292)) r!7292) (= lambda!315541 lambda!315444))))

(assert (=> bs!1366379 (not (= lambda!315541 lambda!315504))))

(assert (=> bs!1366380 (not (= lambda!315541 lambda!315513))))

(assert (=> bs!1366381 (= (= (Star!15799 (reg!16128 r!7292)) r!7292) (= lambda!315541 lambda!315464))))

(assert (=> bs!1366377 (not (= lambda!315541 lambda!315443))))

(assert (=> bs!1366382 (not (= lambda!315541 lambda!315465))))

(assert (=> d!1823393 true))

(assert (=> d!1823393 true))

(assert (=> d!1823393 (= (Exists!2899 lambda!315538) (Exists!2899 lambda!315541))))

(assert (=> d!1823393 true))

(declare-fun _$91!533 () Unit!156858)

(assert (=> d!1823393 (= (choose!43946 (reg!16128 r!7292) s!2326) _$91!533)))

(declare-fun m!6731976 () Bool)

(assert (=> bs!1366383 m!6731976))

(declare-fun m!6731978 () Bool)

(assert (=> bs!1366383 m!6731978))

(assert (=> d!1823299 d!1823393))

(declare-fun b!5787668 () Bool)

(declare-fun res!2442188 () Bool)

(declare-fun e!3554602 () Bool)

(assert (=> b!5787668 (=> res!2442188 e!3554602)))

(assert (=> b!5787668 (= res!2442188 (not ((_ is Concat!24644) (reg!16128 r!7292))))))

(declare-fun e!3554600 () Bool)

(assert (=> b!5787668 (= e!3554600 e!3554602)))

(declare-fun b!5787669 () Bool)

(declare-fun e!3554603 () Bool)

(assert (=> b!5787669 (= e!3554602 e!3554603)))

(declare-fun res!2442185 () Bool)

(assert (=> b!5787669 (=> (not res!2442185) (not e!3554603))))

(declare-fun call!450648 () Bool)

(assert (=> b!5787669 (= res!2442185 call!450648)))

(declare-fun b!5787670 () Bool)

(declare-fun call!450649 () Bool)

(assert (=> b!5787670 (= e!3554603 call!450649)))

(declare-fun call!450650 () Bool)

(declare-fun bm!450643 () Bool)

(declare-fun c!1024719 () Bool)

(declare-fun c!1024718 () Bool)

(assert (=> bm!450643 (= call!450650 (validRegex!7535 (ite c!1024719 (reg!16128 (reg!16128 r!7292)) (ite c!1024718 (regOne!32111 (reg!16128 r!7292)) (regOne!32110 (reg!16128 r!7292))))))))

(declare-fun bm!450644 () Bool)

(assert (=> bm!450644 (= call!450648 call!450650)))

(declare-fun b!5787671 () Bool)

(declare-fun e!3554599 () Bool)

(declare-fun e!3554601 () Bool)

(assert (=> b!5787671 (= e!3554599 e!3554601)))

(assert (=> b!5787671 (= c!1024719 ((_ is Star!15799) (reg!16128 r!7292)))))

(declare-fun d!1823399 () Bool)

(declare-fun res!2442187 () Bool)

(assert (=> d!1823399 (=> res!2442187 e!3554599)))

(assert (=> d!1823399 (= res!2442187 ((_ is ElementMatch!15799) (reg!16128 r!7292)))))

(assert (=> d!1823399 (= (validRegex!7535 (reg!16128 r!7292)) e!3554599)))

(declare-fun b!5787672 () Bool)

(declare-fun e!3554597 () Bool)

(assert (=> b!5787672 (= e!3554597 call!450650)))

(declare-fun b!5787673 () Bool)

(assert (=> b!5787673 (= e!3554601 e!3554600)))

(assert (=> b!5787673 (= c!1024718 ((_ is Union!15799) (reg!16128 r!7292)))))

(declare-fun bm!450645 () Bool)

(assert (=> bm!450645 (= call!450649 (validRegex!7535 (ite c!1024718 (regTwo!32111 (reg!16128 r!7292)) (regTwo!32110 (reg!16128 r!7292)))))))

(declare-fun b!5787674 () Bool)

(assert (=> b!5787674 (= e!3554601 e!3554597)))

(declare-fun res!2442186 () Bool)

(assert (=> b!5787674 (= res!2442186 (not (nullable!5831 (reg!16128 (reg!16128 r!7292)))))))

(assert (=> b!5787674 (=> (not res!2442186) (not e!3554597))))

(declare-fun b!5787675 () Bool)

(declare-fun res!2442184 () Bool)

(declare-fun e!3554598 () Bool)

(assert (=> b!5787675 (=> (not res!2442184) (not e!3554598))))

(assert (=> b!5787675 (= res!2442184 call!450648)))

(assert (=> b!5787675 (= e!3554600 e!3554598)))

(declare-fun b!5787676 () Bool)

(assert (=> b!5787676 (= e!3554598 call!450649)))

(assert (= (and d!1823399 (not res!2442187)) b!5787671))

(assert (= (and b!5787671 c!1024719) b!5787674))

(assert (= (and b!5787671 (not c!1024719)) b!5787673))

(assert (= (and b!5787674 res!2442186) b!5787672))

(assert (= (and b!5787673 c!1024718) b!5787675))

(assert (= (and b!5787673 (not c!1024718)) b!5787668))

(assert (= (and b!5787675 res!2442184) b!5787676))

(assert (= (and b!5787668 (not res!2442188)) b!5787669))

(assert (= (and b!5787669 res!2442185) b!5787670))

(assert (= (or b!5787676 b!5787670) bm!450645))

(assert (= (or b!5787675 b!5787669) bm!450644))

(assert (= (or b!5787672 bm!450644) bm!450643))

(declare-fun m!6731980 () Bool)

(assert (=> bm!450643 m!6731980))

(declare-fun m!6731982 () Bool)

(assert (=> bm!450645 m!6731982))

(declare-fun m!6731984 () Bool)

(assert (=> b!5787674 m!6731984))

(assert (=> d!1823299 d!1823399))

(declare-fun d!1823401 () Bool)

(assert (=> d!1823401 (= (isEmpty!35476 (tail!11317 s!2326)) ((_ is Nil!63573) (tail!11317 s!2326)))))

(assert (=> b!5787083 d!1823401))

(declare-fun d!1823403 () Bool)

(assert (=> d!1823403 (= (tail!11317 s!2326) (t!377038 s!2326))))

(assert (=> b!5787083 d!1823403))

(declare-fun d!1823405 () Bool)

(assert (=> d!1823405 (= (isEmptyLang!1288 lt!2296620) ((_ is EmptyLang!15799) lt!2296620))))

(assert (=> b!5787145 d!1823405))

(declare-fun d!1823407 () Bool)

(assert (=> d!1823407 (= (Exists!2899 lambda!315503) (choose!43945 lambda!315503))))

(declare-fun bs!1366393 () Bool)

(assert (= bs!1366393 d!1823407))

(declare-fun m!6731986 () Bool)

(assert (=> bs!1366393 m!6731986))

(assert (=> d!1823289 d!1823407))

(declare-fun d!1823409 () Bool)

(assert (=> d!1823409 (= (Exists!2899 lambda!315504) (choose!43945 lambda!315504))))

(declare-fun bs!1366394 () Bool)

(assert (= bs!1366394 d!1823409))

(declare-fun m!6731990 () Bool)

(assert (=> bs!1366394 m!6731990))

(assert (=> d!1823289 d!1823409))

(declare-fun bs!1366415 () Bool)

(declare-fun d!1823413 () Bool)

(assert (= bs!1366415 (and d!1823413 b!5786794)))

(declare-fun lambda!315549 () Int)

(assert (=> bs!1366415 (not (= lambda!315549 lambda!315445))))

(declare-fun bs!1366416 () Bool)

(assert (= bs!1366416 (and d!1823413 d!1823299)))

(assert (=> bs!1366416 (= (= r!7292 (Star!15799 (reg!16128 r!7292))) (= lambda!315549 lambda!315509))))

(declare-fun bs!1366417 () Bool)

(assert (= bs!1366417 (and d!1823413 d!1823393)))

(assert (=> bs!1366417 (not (= lambda!315549 lambda!315541))))

(declare-fun bs!1366418 () Bool)

(assert (= bs!1366418 (and d!1823413 d!1823289)))

(assert (=> bs!1366418 (= lambda!315549 lambda!315503)))

(assert (=> bs!1366416 (not (= lambda!315549 lambda!315510))))

(assert (=> bs!1366417 (= (= r!7292 (Star!15799 (reg!16128 r!7292))) (= lambda!315549 lambda!315538))))

(assert (=> bs!1366415 (not (= lambda!315549 lambda!315444))))

(assert (=> bs!1366418 (not (= lambda!315549 lambda!315504))))

(declare-fun bs!1366419 () Bool)

(assert (= bs!1366419 (and d!1823413 d!1823303)))

(assert (=> bs!1366419 (= lambda!315549 lambda!315513)))

(declare-fun bs!1366420 () Bool)

(assert (= bs!1366420 (and d!1823413 b!5786985)))

(assert (=> bs!1366420 (not (= lambda!315549 lambda!315464))))

(assert (=> bs!1366415 (= lambda!315549 lambda!315443)))

(declare-fun bs!1366421 () Bool)

(assert (= bs!1366421 (and d!1823413 b!5786979)))

(assert (=> bs!1366421 (not (= lambda!315549 lambda!315465))))

(assert (=> d!1823413 true))

(assert (=> d!1823413 true))

(assert (=> d!1823413 true))

(declare-fun lambda!315550 () Int)

(assert (=> bs!1366415 (= lambda!315550 lambda!315445)))

(declare-fun bs!1366422 () Bool)

(assert (= bs!1366422 d!1823413))

(assert (=> bs!1366422 (not (= lambda!315550 lambda!315549))))

(assert (=> bs!1366416 (not (= lambda!315550 lambda!315509))))

(assert (=> bs!1366417 (not (= lambda!315550 lambda!315541))))

(assert (=> bs!1366418 (not (= lambda!315550 lambda!315503))))

(assert (=> bs!1366416 (not (= lambda!315550 lambda!315510))))

(assert (=> bs!1366417 (not (= lambda!315550 lambda!315538))))

(assert (=> bs!1366415 (not (= lambda!315550 lambda!315444))))

(assert (=> bs!1366418 (= lambda!315550 lambda!315504)))

(assert (=> bs!1366419 (not (= lambda!315550 lambda!315513))))

(assert (=> bs!1366420 (not (= lambda!315550 lambda!315464))))

(assert (=> bs!1366415 (not (= lambda!315550 lambda!315443))))

(assert (=> bs!1366421 (= (and (= (reg!16128 r!7292) (regOne!32110 r!7292)) (= r!7292 (regTwo!32110 r!7292))) (= lambda!315550 lambda!315465))))

(assert (=> d!1823413 true))

(assert (=> d!1823413 true))

(assert (=> d!1823413 true))

(assert (=> d!1823413 (= (Exists!2899 lambda!315549) (Exists!2899 lambda!315550))))

(assert (=> d!1823413 true))

(declare-fun _$90!1530 () Unit!156858)

(assert (=> d!1823413 (= (choose!43944 (reg!16128 r!7292) r!7292 s!2326) _$90!1530)))

(declare-fun m!6732016 () Bool)

(assert (=> bs!1366422 m!6732016))

(declare-fun m!6732018 () Bool)

(assert (=> bs!1366422 m!6732018))

(assert (=> d!1823289 d!1823413))

(assert (=> d!1823289 d!1823399))

(declare-fun d!1823433 () Bool)

(assert (=> d!1823433 (= (isEmpty!35479 (tail!11318 (unfocusZipperList!1227 zl!343))) ((_ is Nil!63572) (tail!11318 (unfocusZipperList!1227 zl!343))))))

(assert (=> b!5787147 d!1823433))

(declare-fun d!1823437 () Bool)

(assert (=> d!1823437 (= (tail!11318 (unfocusZipperList!1227 zl!343)) (t!377037 (unfocusZipperList!1227 zl!343)))))

(assert (=> b!5787147 d!1823437))

(declare-fun d!1823443 () Bool)

(declare-fun nullableFct!1863 (Regex!15799) Bool)

(assert (=> d!1823443 (= (nullable!5831 (regOne!32110 r!7292)) (nullableFct!1863 (regOne!32110 r!7292)))))

(declare-fun bs!1366427 () Bool)

(assert (= bs!1366427 d!1823443))

(declare-fun m!6732042 () Bool)

(assert (=> bs!1366427 m!6732042))

(assert (=> b!5787412 d!1823443))

(declare-fun d!1823447 () Bool)

(assert (=> d!1823447 (= (isDefined!12511 lt!2296660) (not (isEmpty!35480 lt!2296660)))))

(declare-fun bs!1366430 () Bool)

(assert (= bs!1366430 d!1823447))

(declare-fun m!6732044 () Bool)

(assert (=> bs!1366430 m!6732044))

(assert (=> d!1823301 d!1823447))

(declare-fun b!5787731 () Bool)

(declare-fun e!3554641 () Bool)

(assert (=> b!5787731 (= e!3554641 (nullable!5831 (reg!16128 r!7292)))))

(declare-fun d!1823449 () Bool)

(declare-fun e!3554643 () Bool)

(assert (=> d!1823449 e!3554643))

(declare-fun c!1024737 () Bool)

(assert (=> d!1823449 (= c!1024737 ((_ is EmptyExpr!15799) (reg!16128 r!7292)))))

(declare-fun lt!2296687 () Bool)

(assert (=> d!1823449 (= lt!2296687 e!3554641)))

(declare-fun c!1024735 () Bool)

(assert (=> d!1823449 (= c!1024735 (isEmpty!35476 Nil!63573))))

(assert (=> d!1823449 (validRegex!7535 (reg!16128 r!7292))))

(assert (=> d!1823449 (= (matchR!7984 (reg!16128 r!7292) Nil!63573) lt!2296687)))

(declare-fun b!5787732 () Bool)

(declare-fun res!2442220 () Bool)

(declare-fun e!3554638 () Bool)

(assert (=> b!5787732 (=> res!2442220 e!3554638)))

(declare-fun e!3554639 () Bool)

(assert (=> b!5787732 (= res!2442220 e!3554639)))

(declare-fun res!2442217 () Bool)

(assert (=> b!5787732 (=> (not res!2442217) (not e!3554639))))

(assert (=> b!5787732 (= res!2442217 lt!2296687)))

(declare-fun bm!450660 () Bool)

(declare-fun call!450665 () Bool)

(assert (=> bm!450660 (= call!450665 (isEmpty!35476 Nil!63573))))

(declare-fun b!5787733 () Bool)

(declare-fun res!2442222 () Bool)

(declare-fun e!3554642 () Bool)

(assert (=> b!5787733 (=> res!2442222 e!3554642)))

(assert (=> b!5787733 (= res!2442222 (not (isEmpty!35476 (tail!11317 Nil!63573))))))

(declare-fun b!5787734 () Bool)

(declare-fun e!3554644 () Bool)

(assert (=> b!5787734 (= e!3554644 (not lt!2296687))))

(declare-fun b!5787735 () Bool)

(assert (=> b!5787735 (= e!3554642 (not (= (head!12222 Nil!63573) (c!1024501 (reg!16128 r!7292)))))))

(declare-fun b!5787736 () Bool)

(declare-fun res!2442219 () Bool)

(assert (=> b!5787736 (=> res!2442219 e!3554638)))

(assert (=> b!5787736 (= res!2442219 (not ((_ is ElementMatch!15799) (reg!16128 r!7292))))))

(assert (=> b!5787736 (= e!3554644 e!3554638)))

(declare-fun b!5787737 () Bool)

(declare-fun res!2442223 () Bool)

(assert (=> b!5787737 (=> (not res!2442223) (not e!3554639))))

(assert (=> b!5787737 (= res!2442223 (not call!450665))))

(declare-fun b!5787738 () Bool)

(assert (=> b!5787738 (= e!3554639 (= (head!12222 Nil!63573) (c!1024501 (reg!16128 r!7292))))))

(declare-fun b!5787739 () Bool)

(assert (=> b!5787739 (= e!3554641 (matchR!7984 (derivativeStep!4574 (reg!16128 r!7292) (head!12222 Nil!63573)) (tail!11317 Nil!63573)))))

(declare-fun b!5787740 () Bool)

(declare-fun e!3554640 () Bool)

(assert (=> b!5787740 (= e!3554638 e!3554640)))

(declare-fun res!2442221 () Bool)

(assert (=> b!5787740 (=> (not res!2442221) (not e!3554640))))

(assert (=> b!5787740 (= res!2442221 (not lt!2296687))))

(declare-fun b!5787741 () Bool)

(assert (=> b!5787741 (= e!3554643 e!3554644)))

(declare-fun c!1024736 () Bool)

(assert (=> b!5787741 (= c!1024736 ((_ is EmptyLang!15799) (reg!16128 r!7292)))))

(declare-fun b!5787742 () Bool)

(declare-fun res!2442218 () Bool)

(assert (=> b!5787742 (=> (not res!2442218) (not e!3554639))))

(assert (=> b!5787742 (= res!2442218 (isEmpty!35476 (tail!11317 Nil!63573)))))

(declare-fun b!5787743 () Bool)

(assert (=> b!5787743 (= e!3554640 e!3554642)))

(declare-fun res!2442224 () Bool)

(assert (=> b!5787743 (=> res!2442224 e!3554642)))

(assert (=> b!5787743 (= res!2442224 call!450665)))

(declare-fun b!5787744 () Bool)

(assert (=> b!5787744 (= e!3554643 (= lt!2296687 call!450665))))

(assert (= (and d!1823449 c!1024735) b!5787731))

(assert (= (and d!1823449 (not c!1024735)) b!5787739))

(assert (= (and d!1823449 c!1024737) b!5787744))

(assert (= (and d!1823449 (not c!1024737)) b!5787741))

(assert (= (and b!5787741 c!1024736) b!5787734))

(assert (= (and b!5787741 (not c!1024736)) b!5787736))

(assert (= (and b!5787736 (not res!2442219)) b!5787732))

(assert (= (and b!5787732 res!2442217) b!5787737))

(assert (= (and b!5787737 res!2442223) b!5787742))

(assert (= (and b!5787742 res!2442218) b!5787738))

(assert (= (and b!5787732 (not res!2442220)) b!5787740))

(assert (= (and b!5787740 res!2442221) b!5787743))

(assert (= (and b!5787743 (not res!2442224)) b!5787733))

(assert (= (and b!5787733 (not res!2442222)) b!5787735))

(assert (= (or b!5787744 b!5787743 b!5787737) bm!450660))

(assert (=> b!5787731 m!6731756))

(declare-fun m!6732054 () Bool)

(assert (=> b!5787735 m!6732054))

(declare-fun m!6732056 () Bool)

(assert (=> b!5787733 m!6732056))

(assert (=> b!5787733 m!6732056))

(declare-fun m!6732060 () Bool)

(assert (=> b!5787733 m!6732060))

(assert (=> b!5787742 m!6732056))

(assert (=> b!5787742 m!6732056))

(assert (=> b!5787742 m!6732060))

(declare-fun m!6732062 () Bool)

(assert (=> d!1823449 m!6732062))

(assert (=> d!1823449 m!6731712))

(assert (=> b!5787739 m!6732054))

(assert (=> b!5787739 m!6732054))

(declare-fun m!6732064 () Bool)

(assert (=> b!5787739 m!6732064))

(assert (=> b!5787739 m!6732056))

(assert (=> b!5787739 m!6732064))

(assert (=> b!5787739 m!6732056))

(declare-fun m!6732066 () Bool)

(assert (=> b!5787739 m!6732066))

(assert (=> b!5787738 m!6732054))

(assert (=> bm!450660 m!6732062))

(assert (=> d!1823301 d!1823449))

(assert (=> d!1823301 d!1823399))

(declare-fun b!5787756 () Bool)

(declare-fun e!3554653 () (InoxSet Context!10366))

(declare-fun call!450674 () (InoxSet Context!10366))

(declare-fun call!450676 () (InoxSet Context!10366))

(assert (=> b!5787756 (= e!3554653 ((_ map or) call!450674 call!450676))))

(declare-fun b!5787757 () Bool)

(declare-fun e!3554656 () Bool)

(assert (=> b!5787757 (= e!3554656 (nullable!5831 (regOne!32110 (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292)))))))))

(declare-fun call!450675 () List!63696)

(declare-fun bm!450667 () Bool)

(declare-fun c!1024745 () Bool)

(assert (=> bm!450667 (= call!450674 (derivationStepZipperDown!1137 (ite c!1024745 (regOne!32111 (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292))))) (regOne!32110 (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292)))))) (ite c!1024745 (ite (or c!1024667 c!1024669) (Context!10367 Nil!63572) (Context!10367 call!450617)) (Context!10367 call!450675)) (h!70021 s!2326)))))

(declare-fun bm!450668 () Bool)

(declare-fun c!1024744 () Bool)

(declare-fun c!1024747 () Bool)

(assert (=> bm!450668 (= call!450675 ($colon$colon!1786 (exprs!5683 (ite (or c!1024667 c!1024669) (Context!10367 Nil!63572) (Context!10367 call!450617))) (ite (or c!1024747 c!1024744) (regTwo!32110 (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292))))) (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292)))))))))

(declare-fun b!5787758 () Bool)

(declare-fun e!3554652 () (InoxSet Context!10366))

(assert (=> b!5787758 (= e!3554652 e!3554653)))

(assert (=> b!5787758 (= c!1024745 ((_ is Union!15799) (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292))))))))

(declare-fun b!5787759 () Bool)

(declare-fun e!3554655 () (InoxSet Context!10366))

(declare-fun call!450672 () (InoxSet Context!10366))

(assert (=> b!5787759 (= e!3554655 ((_ map or) call!450674 call!450672))))

(declare-fun b!5787760 () Bool)

(declare-fun e!3554651 () (InoxSet Context!10366))

(declare-fun call!450673 () (InoxSet Context!10366))

(assert (=> b!5787760 (= e!3554651 call!450673)))

(declare-fun c!1024743 () Bool)

(declare-fun d!1823457 () Bool)

(assert (=> d!1823457 (= c!1024743 (and ((_ is ElementMatch!15799) (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292))))) (= (c!1024501 (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292))))) (h!70021 s!2326))))))

(assert (=> d!1823457 (= (derivationStepZipperDown!1137 (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292)))) (ite (or c!1024667 c!1024669) (Context!10367 Nil!63572) (Context!10367 call!450617)) (h!70021 s!2326)) e!3554652)))

(declare-fun b!5787761 () Bool)

(assert (=> b!5787761 (= c!1024747 e!3554656)))

(declare-fun res!2442226 () Bool)

(assert (=> b!5787761 (=> (not res!2442226) (not e!3554656))))

(assert (=> b!5787761 (= res!2442226 ((_ is Concat!24644) (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292))))))))

(assert (=> b!5787761 (= e!3554653 e!3554655)))

(declare-fun bm!450669 () Bool)

(assert (=> bm!450669 (= call!450672 call!450676)))

(declare-fun b!5787762 () Bool)

(assert (=> b!5787762 (= e!3554651 ((as const (Array Context!10366 Bool)) false))))

(declare-fun b!5787763 () Bool)

(declare-fun c!1024746 () Bool)

(assert (=> b!5787763 (= c!1024746 ((_ is Star!15799) (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292))))))))

(declare-fun e!3554654 () (InoxSet Context!10366))

(assert (=> b!5787763 (= e!3554654 e!3554651)))

(declare-fun b!5787764 () Bool)

(assert (=> b!5787764 (= e!3554652 (store ((as const (Array Context!10366 Bool)) false) (ite (or c!1024667 c!1024669) (Context!10367 Nil!63572) (Context!10367 call!450617)) true))))

(declare-fun bm!450670 () Bool)

(declare-fun call!450677 () List!63696)

(assert (=> bm!450670 (= call!450677 call!450675)))

(declare-fun bm!450671 () Bool)

(assert (=> bm!450671 (= call!450673 call!450672)))

(declare-fun bm!450672 () Bool)

(assert (=> bm!450672 (= call!450676 (derivationStepZipperDown!1137 (ite c!1024745 (regTwo!32111 (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292))))) (ite c!1024747 (regTwo!32110 (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292))))) (ite c!1024744 (regOne!32110 (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292))))) (reg!16128 (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292)))))))) (ite (or c!1024745 c!1024747) (ite (or c!1024667 c!1024669) (Context!10367 Nil!63572) (Context!10367 call!450617)) (Context!10367 call!450677)) (h!70021 s!2326)))))

(declare-fun b!5787765 () Bool)

(assert (=> b!5787765 (= e!3554655 e!3554654)))

(assert (=> b!5787765 (= c!1024744 ((_ is Concat!24644) (ite c!1024667 (regTwo!32111 r!7292) (ite c!1024669 (regTwo!32110 r!7292) (ite c!1024666 (regOne!32110 r!7292) (reg!16128 r!7292))))))))

(declare-fun b!5787766 () Bool)

(assert (=> b!5787766 (= e!3554654 call!450673)))

(assert (= (and d!1823457 c!1024743) b!5787764))

(assert (= (and d!1823457 (not c!1024743)) b!5787758))

(assert (= (and b!5787758 c!1024745) b!5787756))

(assert (= (and b!5787758 (not c!1024745)) b!5787761))

(assert (= (and b!5787761 res!2442226) b!5787757))

(assert (= (and b!5787761 c!1024747) b!5787759))

(assert (= (and b!5787761 (not c!1024747)) b!5787765))

(assert (= (and b!5787765 c!1024744) b!5787766))

(assert (= (and b!5787765 (not c!1024744)) b!5787763))

(assert (= (and b!5787763 c!1024746) b!5787760))

(assert (= (and b!5787763 (not c!1024746)) b!5787762))

(assert (= (or b!5787766 b!5787760) bm!450670))

(assert (= (or b!5787766 b!5787760) bm!450671))

(assert (= (or b!5787759 bm!450670) bm!450668))

(assert (= (or b!5787759 bm!450671) bm!450669))

(assert (= (or b!5787756 bm!450669) bm!450672))

(assert (= (or b!5787756 b!5787759) bm!450667))

(declare-fun m!6732078 () Bool)

(assert (=> b!5787757 m!6732078))

(declare-fun m!6732080 () Bool)

(assert (=> bm!450668 m!6732080))

(declare-fun m!6732082 () Bool)

(assert (=> b!5787764 m!6732082))

(declare-fun m!6732084 () Bool)

(assert (=> bm!450672 m!6732084))

(declare-fun m!6732090 () Bool)

(assert (=> bm!450667 m!6732090))

(assert (=> bm!450612 d!1823457))

(assert (=> d!1823285 d!1823279))

(declare-fun d!1823463 () Bool)

(assert (=> d!1823463 (= (flatMap!1406 z!1189 lambda!315446) (dynLambda!24888 lambda!315446 (h!70022 zl!343)))))

(assert (=> d!1823463 true))

(declare-fun _$13!2487 () Unit!156858)

(assert (=> d!1823463 (= (choose!43943 z!1189 (h!70022 zl!343) lambda!315446) _$13!2487)))

(declare-fun b_lambda!218183 () Bool)

(assert (=> (not b_lambda!218183) (not d!1823463)))

(declare-fun bs!1366435 () Bool)

(assert (= bs!1366435 d!1823463))

(assert (=> bs!1366435 m!6731446))

(assert (=> bs!1366435 m!6731698))

(assert (=> d!1823285 d!1823463))

(declare-fun b!5787788 () Bool)

(declare-fun res!2442240 () Bool)

(declare-fun e!3554677 () Bool)

(assert (=> b!5787788 (=> res!2442240 e!3554677)))

(assert (=> b!5787788 (= res!2442240 (not ((_ is Concat!24644) lt!2296620)))))

(declare-fun e!3554675 () Bool)

(assert (=> b!5787788 (= e!3554675 e!3554677)))

(declare-fun b!5787789 () Bool)

(declare-fun e!3554678 () Bool)

(assert (=> b!5787789 (= e!3554677 e!3554678)))

(declare-fun res!2442237 () Bool)

(assert (=> b!5787789 (=> (not res!2442237) (not e!3554678))))

(declare-fun call!450681 () Bool)

(assert (=> b!5787789 (= res!2442237 call!450681)))

(declare-fun b!5787790 () Bool)

(declare-fun call!450682 () Bool)

(assert (=> b!5787790 (= e!3554678 call!450682)))

(declare-fun call!450683 () Bool)

(declare-fun c!1024755 () Bool)

(declare-fun bm!450676 () Bool)

(declare-fun c!1024753 () Bool)

(assert (=> bm!450676 (= call!450683 (validRegex!7535 (ite c!1024755 (reg!16128 lt!2296620) (ite c!1024753 (regOne!32111 lt!2296620) (regOne!32110 lt!2296620)))))))

(declare-fun bm!450677 () Bool)

(assert (=> bm!450677 (= call!450681 call!450683)))

(declare-fun b!5787791 () Bool)

(declare-fun e!3554674 () Bool)

(declare-fun e!3554676 () Bool)

(assert (=> b!5787791 (= e!3554674 e!3554676)))

(assert (=> b!5787791 (= c!1024755 ((_ is Star!15799) lt!2296620))))

(declare-fun d!1823477 () Bool)

(declare-fun res!2442239 () Bool)

(assert (=> d!1823477 (=> res!2442239 e!3554674)))

(assert (=> d!1823477 (= res!2442239 ((_ is ElementMatch!15799) lt!2296620))))

(assert (=> d!1823477 (= (validRegex!7535 lt!2296620) e!3554674)))

(declare-fun b!5787792 () Bool)

(declare-fun e!3554672 () Bool)

(assert (=> b!5787792 (= e!3554672 call!450683)))

(declare-fun b!5787793 () Bool)

(assert (=> b!5787793 (= e!3554676 e!3554675)))

(assert (=> b!5787793 (= c!1024753 ((_ is Union!15799) lt!2296620))))

(declare-fun bm!450678 () Bool)

(assert (=> bm!450678 (= call!450682 (validRegex!7535 (ite c!1024753 (regTwo!32111 lt!2296620) (regTwo!32110 lt!2296620))))))

(declare-fun b!5787794 () Bool)

(assert (=> b!5787794 (= e!3554676 e!3554672)))

(declare-fun res!2442238 () Bool)

(assert (=> b!5787794 (= res!2442238 (not (nullable!5831 (reg!16128 lt!2296620))))))

(assert (=> b!5787794 (=> (not res!2442238) (not e!3554672))))

(declare-fun b!5787795 () Bool)

(declare-fun res!2442236 () Bool)

(declare-fun e!3554673 () Bool)

(assert (=> b!5787795 (=> (not res!2442236) (not e!3554673))))

(assert (=> b!5787795 (= res!2442236 call!450681)))

(assert (=> b!5787795 (= e!3554675 e!3554673)))

(declare-fun b!5787796 () Bool)

(assert (=> b!5787796 (= e!3554673 call!450682)))

(assert (= (and d!1823477 (not res!2442239)) b!5787791))

(assert (= (and b!5787791 c!1024755) b!5787794))

(assert (= (and b!5787791 (not c!1024755)) b!5787793))

(assert (= (and b!5787794 res!2442238) b!5787792))

(assert (= (and b!5787793 c!1024753) b!5787795))

(assert (= (and b!5787793 (not c!1024753)) b!5787788))

(assert (= (and b!5787795 res!2442236) b!5787796))

(assert (= (and b!5787788 (not res!2442240)) b!5787789))

(assert (= (and b!5787789 res!2442237) b!5787790))

(assert (= (or b!5787796 b!5787790) bm!450678))

(assert (= (or b!5787795 b!5787789) bm!450677))

(assert (= (or b!5787792 bm!450677) bm!450676))

(declare-fun m!6732100 () Bool)

(assert (=> bm!450676 m!6732100))

(declare-fun m!6732102 () Bool)

(assert (=> bm!450678 m!6732102))

(declare-fun m!6732104 () Bool)

(assert (=> b!5787794 m!6732104))

(assert (=> d!1823241 d!1823477))

(declare-fun d!1823479 () Bool)

(declare-fun res!2442246 () Bool)

(declare-fun e!3554689 () Bool)

(assert (=> d!1823479 (=> res!2442246 e!3554689)))

(assert (=> d!1823479 (= res!2442246 ((_ is Nil!63572) (unfocusZipperList!1227 zl!343)))))

(assert (=> d!1823479 (= (forall!14913 (unfocusZipperList!1227 zl!343) lambda!315480) e!3554689)))

(declare-fun b!5787812 () Bool)

(declare-fun e!3554690 () Bool)

(assert (=> b!5787812 (= e!3554689 e!3554690)))

(declare-fun res!2442247 () Bool)

(assert (=> b!5787812 (=> (not res!2442247) (not e!3554690))))

(declare-fun dynLambda!24890 (Int Regex!15799) Bool)

(assert (=> b!5787812 (= res!2442247 (dynLambda!24890 lambda!315480 (h!70020 (unfocusZipperList!1227 zl!343))))))

(declare-fun b!5787813 () Bool)

(assert (=> b!5787813 (= e!3554690 (forall!14913 (t!377037 (unfocusZipperList!1227 zl!343)) lambda!315480))))

(assert (= (and d!1823479 (not res!2442246)) b!5787812))

(assert (= (and b!5787812 res!2442247) b!5787813))

(declare-fun b_lambda!218185 () Bool)

(assert (=> (not b_lambda!218185) (not b!5787812)))

(declare-fun m!6732124 () Bool)

(assert (=> b!5787812 m!6732124))

(declare-fun m!6732128 () Bool)

(assert (=> b!5787813 m!6732128))

(assert (=> d!1823241 d!1823479))

(declare-fun b!5787814 () Bool)

(declare-fun e!3554693 () (InoxSet Context!10366))

(declare-fun call!450692 () (InoxSet Context!10366))

(declare-fun call!450694 () (InoxSet Context!10366))

(assert (=> b!5787814 (= e!3554693 ((_ map or) call!450692 call!450694))))

(declare-fun b!5787815 () Bool)

(declare-fun e!3554696 () Bool)

(assert (=> b!5787815 (= e!3554696 (nullable!5831 (regOne!32110 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))))))))

(declare-fun call!450693 () List!63696)

(declare-fun bm!450685 () Bool)

(declare-fun c!1024763 () Bool)

(assert (=> bm!450685 (= call!450692 (derivationStepZipperDown!1137 (ite c!1024763 (regOne!32111 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (regOne!32110 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))))) (ite c!1024763 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (Context!10367 call!450693)) (h!70021 s!2326)))))

(declare-fun bm!450686 () Bool)

(declare-fun c!1024762 () Bool)

(declare-fun c!1024765 () Bool)

(assert (=> bm!450686 (= call!450693 ($colon$colon!1786 (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))))) (ite (or c!1024765 c!1024762) (regTwo!32110 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))))))))

(declare-fun b!5787816 () Bool)

(declare-fun e!3554692 () (InoxSet Context!10366))

(assert (=> b!5787816 (= e!3554692 e!3554693)))

(assert (=> b!5787816 (= c!1024763 ((_ is Union!15799) (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))))))

(declare-fun b!5787817 () Bool)

(declare-fun e!3554695 () (InoxSet Context!10366))

(declare-fun call!450690 () (InoxSet Context!10366))

(assert (=> b!5787817 (= e!3554695 ((_ map or) call!450692 call!450690))))

(declare-fun b!5787818 () Bool)

(declare-fun e!3554691 () (InoxSet Context!10366))

(declare-fun call!450691 () (InoxSet Context!10366))

(assert (=> b!5787818 (= e!3554691 call!450691)))

(declare-fun d!1823483 () Bool)

(declare-fun c!1024761 () Bool)

(assert (=> d!1823483 (= c!1024761 (and ((_ is ElementMatch!15799) (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (= (c!1024501 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (h!70021 s!2326))))))

(assert (=> d!1823483 (= (derivationStepZipperDown!1137 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))) (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (h!70021 s!2326)) e!3554692)))

(declare-fun b!5787819 () Bool)

(assert (=> b!5787819 (= c!1024765 e!3554696)))

(declare-fun res!2442248 () Bool)

(assert (=> b!5787819 (=> (not res!2442248) (not e!3554696))))

(assert (=> b!5787819 (= res!2442248 ((_ is Concat!24644) (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))))))

(assert (=> b!5787819 (= e!3554693 e!3554695)))

(declare-fun bm!450687 () Bool)

(assert (=> bm!450687 (= call!450690 call!450694)))

(declare-fun b!5787820 () Bool)

(assert (=> b!5787820 (= e!3554691 ((as const (Array Context!10366 Bool)) false))))

(declare-fun b!5787821 () Bool)

(declare-fun c!1024764 () Bool)

(assert (=> b!5787821 (= c!1024764 ((_ is Star!15799) (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))))))

(declare-fun e!3554694 () (InoxSet Context!10366))

(assert (=> b!5787821 (= e!3554694 e!3554691)))

(declare-fun b!5787822 () Bool)

(assert (=> b!5787822 (= e!3554692 (store ((as const (Array Context!10366 Bool)) false) (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) true))))

(declare-fun bm!450688 () Bool)

(declare-fun call!450695 () List!63696)

(assert (=> bm!450688 (= call!450695 call!450693)))

(declare-fun bm!450689 () Bool)

(assert (=> bm!450689 (= call!450691 call!450690)))

(declare-fun bm!450690 () Bool)

(assert (=> bm!450690 (= call!450694 (derivationStepZipperDown!1137 (ite c!1024763 (regTwo!32111 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (ite c!1024765 (regTwo!32110 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (ite c!1024762 (regOne!32110 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (reg!16128 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))))))) (ite (or c!1024763 c!1024765) (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (Context!10367 call!450695)) (h!70021 s!2326)))))

(declare-fun b!5787823 () Bool)

(assert (=> b!5787823 (= e!3554695 e!3554694)))

(assert (=> b!5787823 (= c!1024762 ((_ is Concat!24644) (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))))))

(declare-fun b!5787824 () Bool)

(assert (=> b!5787824 (= e!3554694 call!450691)))

(assert (= (and d!1823483 c!1024761) b!5787822))

(assert (= (and d!1823483 (not c!1024761)) b!5787816))

(assert (= (and b!5787816 c!1024763) b!5787814))

(assert (= (and b!5787816 (not c!1024763)) b!5787819))

(assert (= (and b!5787819 res!2442248) b!5787815))

(assert (= (and b!5787819 c!1024765) b!5787817))

(assert (= (and b!5787819 (not c!1024765)) b!5787823))

(assert (= (and b!5787823 c!1024762) b!5787824))

(assert (= (and b!5787823 (not c!1024762)) b!5787821))

(assert (= (and b!5787821 c!1024764) b!5787818))

(assert (= (and b!5787821 (not c!1024764)) b!5787820))

(assert (= (or b!5787824 b!5787818) bm!450688))

(assert (= (or b!5787824 b!5787818) bm!450689))

(assert (= (or b!5787817 bm!450688) bm!450686))

(assert (= (or b!5787817 bm!450689) bm!450687))

(assert (= (or b!5787814 bm!450687) bm!450690))

(assert (= (or b!5787814 b!5787817) bm!450685))

(declare-fun m!6732140 () Bool)

(assert (=> b!5787815 m!6732140))

(declare-fun m!6732142 () Bool)

(assert (=> bm!450686 m!6732142))

(declare-fun m!6732144 () Bool)

(assert (=> b!5787822 m!6732144))

(declare-fun m!6732146 () Bool)

(assert (=> bm!450690 m!6732146))

(declare-fun m!6732148 () Bool)

(assert (=> bm!450685 m!6732148))

(assert (=> bm!450613 d!1823483))

(declare-fun bs!1366444 () Bool)

(declare-fun d!1823489 () Bool)

(assert (= bs!1366444 (and d!1823489 d!1823311)))

(declare-fun lambda!315553 () Int)

(assert (=> bs!1366444 (= lambda!315553 lambda!315520)))

(declare-fun bs!1366445 () Bool)

(assert (= bs!1366445 (and d!1823489 d!1823305)))

(assert (=> bs!1366445 (= lambda!315553 lambda!315516)))

(declare-fun bs!1366446 () Bool)

(assert (= bs!1366446 (and d!1823489 d!1823241)))

(assert (=> bs!1366446 (= lambda!315553 lambda!315480)))

(declare-fun bs!1366447 () Bool)

(assert (= bs!1366447 (and d!1823489 d!1823309)))

(assert (=> bs!1366447 (= lambda!315553 lambda!315519)))

(declare-fun bs!1366448 () Bool)

(assert (= bs!1366448 (and d!1823489 d!1823253)))

(assert (=> bs!1366448 (= lambda!315553 lambda!315489)))

(assert (=> d!1823489 (= (inv!82744 setElem!38886) (forall!14913 (exprs!5683 setElem!38886) lambda!315553))))

(declare-fun bs!1366449 () Bool)

(assert (= bs!1366449 d!1823489))

(declare-fun m!6732150 () Bool)

(assert (=> bs!1366449 m!6732150))

(assert (=> setNonEmpty!38886 d!1823489))

(assert (=> bs!1366345 d!1823281))

(declare-fun d!1823491 () Bool)

(assert (=> d!1823491 (= (head!12222 s!2326) (h!70021 s!2326))))

(assert (=> b!5787079 d!1823491))

(declare-fun b!5787831 () Bool)

(declare-fun res!2442259 () Bool)

(declare-fun e!3554708 () Bool)

(assert (=> b!5787831 (=> res!2442259 e!3554708)))

(assert (=> b!5787831 (= res!2442259 (not ((_ is Concat!24644) lt!2296640)))))

(declare-fun e!3554706 () Bool)

(assert (=> b!5787831 (= e!3554706 e!3554708)))

(declare-fun b!5787832 () Bool)

(declare-fun e!3554709 () Bool)

(assert (=> b!5787832 (= e!3554708 e!3554709)))

(declare-fun res!2442256 () Bool)

(assert (=> b!5787832 (=> (not res!2442256) (not e!3554709))))

(declare-fun call!450696 () Bool)

(assert (=> b!5787832 (= res!2442256 call!450696)))

(declare-fun b!5787833 () Bool)

(declare-fun call!450697 () Bool)

(assert (=> b!5787833 (= e!3554709 call!450697)))

(declare-fun c!1024766 () Bool)

(declare-fun c!1024767 () Bool)

(declare-fun bm!450691 () Bool)

(declare-fun call!450698 () Bool)

(assert (=> bm!450691 (= call!450698 (validRegex!7535 (ite c!1024767 (reg!16128 lt!2296640) (ite c!1024766 (regOne!32111 lt!2296640) (regOne!32110 lt!2296640)))))))

(declare-fun bm!450692 () Bool)

(assert (=> bm!450692 (= call!450696 call!450698)))

(declare-fun b!5787834 () Bool)

(declare-fun e!3554705 () Bool)

(declare-fun e!3554707 () Bool)

(assert (=> b!5787834 (= e!3554705 e!3554707)))

(assert (=> b!5787834 (= c!1024767 ((_ is Star!15799) lt!2296640))))

(declare-fun d!1823495 () Bool)

(declare-fun res!2442258 () Bool)

(assert (=> d!1823495 (=> res!2442258 e!3554705)))

(assert (=> d!1823495 (= res!2442258 ((_ is ElementMatch!15799) lt!2296640))))

(assert (=> d!1823495 (= (validRegex!7535 lt!2296640) e!3554705)))

(declare-fun b!5787835 () Bool)

(declare-fun e!3554703 () Bool)

(assert (=> b!5787835 (= e!3554703 call!450698)))

(declare-fun b!5787836 () Bool)

(assert (=> b!5787836 (= e!3554707 e!3554706)))

(assert (=> b!5787836 (= c!1024766 ((_ is Union!15799) lt!2296640))))

(declare-fun bm!450693 () Bool)

(assert (=> bm!450693 (= call!450697 (validRegex!7535 (ite c!1024766 (regTwo!32111 lt!2296640) (regTwo!32110 lt!2296640))))))

(declare-fun b!5787837 () Bool)

(assert (=> b!5787837 (= e!3554707 e!3554703)))

(declare-fun res!2442257 () Bool)

(assert (=> b!5787837 (= res!2442257 (not (nullable!5831 (reg!16128 lt!2296640))))))

(assert (=> b!5787837 (=> (not res!2442257) (not e!3554703))))

(declare-fun b!5787838 () Bool)

(declare-fun res!2442255 () Bool)

(declare-fun e!3554704 () Bool)

(assert (=> b!5787838 (=> (not res!2442255) (not e!3554704))))

(assert (=> b!5787838 (= res!2442255 call!450696)))

(assert (=> b!5787838 (= e!3554706 e!3554704)))

(declare-fun b!5787839 () Bool)

(assert (=> b!5787839 (= e!3554704 call!450697)))

(assert (= (and d!1823495 (not res!2442258)) b!5787834))

(assert (= (and b!5787834 c!1024767) b!5787837))

(assert (= (and b!5787834 (not c!1024767)) b!5787836))

(assert (= (and b!5787837 res!2442257) b!5787835))

(assert (= (and b!5787836 c!1024766) b!5787838))

(assert (= (and b!5787836 (not c!1024766)) b!5787831))

(assert (= (and b!5787838 res!2442255) b!5787839))

(assert (= (and b!5787831 (not res!2442259)) b!5787832))

(assert (= (and b!5787832 res!2442256) b!5787833))

(assert (= (or b!5787839 b!5787833) bm!450693))

(assert (= (or b!5787838 b!5787832) bm!450692))

(assert (= (or b!5787835 bm!450692) bm!450691))

(declare-fun m!6732156 () Bool)

(assert (=> bm!450691 m!6732156))

(declare-fun m!6732158 () Bool)

(assert (=> bm!450693 m!6732158))

(declare-fun m!6732160 () Bool)

(assert (=> b!5787837 m!6732160))

(assert (=> d!1823273 d!1823495))

(assert (=> d!1823273 d!1823241))

(assert (=> d!1823273 d!1823253))

(declare-fun b!5787844 () Bool)

(declare-fun e!3554717 () Bool)

(assert (=> b!5787844 (= e!3554717 (nullable!5831 r!7292))))

(declare-fun d!1823497 () Bool)

(declare-fun e!3554719 () Bool)

(assert (=> d!1823497 e!3554719))

(declare-fun c!1024770 () Bool)

(assert (=> d!1823497 (= c!1024770 ((_ is EmptyExpr!15799) r!7292))))

(declare-fun lt!2296689 () Bool)

(assert (=> d!1823497 (= lt!2296689 e!3554717)))

(declare-fun c!1024768 () Bool)

(assert (=> d!1823497 (= c!1024768 (isEmpty!35476 (_2!36199 (get!21942 lt!2296660))))))

(assert (=> d!1823497 (validRegex!7535 r!7292)))

(assert (=> d!1823497 (= (matchR!7984 r!7292 (_2!36199 (get!21942 lt!2296660))) lt!2296689)))

(declare-fun b!5787845 () Bool)

(declare-fun res!2442265 () Bool)

(declare-fun e!3554714 () Bool)

(assert (=> b!5787845 (=> res!2442265 e!3554714)))

(declare-fun e!3554715 () Bool)

(assert (=> b!5787845 (= res!2442265 e!3554715)))

(declare-fun res!2442262 () Bool)

(assert (=> b!5787845 (=> (not res!2442262) (not e!3554715))))

(assert (=> b!5787845 (= res!2442262 lt!2296689)))

(declare-fun bm!450694 () Bool)

(declare-fun call!450699 () Bool)

(assert (=> bm!450694 (= call!450699 (isEmpty!35476 (_2!36199 (get!21942 lt!2296660))))))

(declare-fun b!5787846 () Bool)

(declare-fun res!2442267 () Bool)

(declare-fun e!3554718 () Bool)

(assert (=> b!5787846 (=> res!2442267 e!3554718)))

(assert (=> b!5787846 (= res!2442267 (not (isEmpty!35476 (tail!11317 (_2!36199 (get!21942 lt!2296660))))))))

(declare-fun b!5787847 () Bool)

(declare-fun e!3554720 () Bool)

(assert (=> b!5787847 (= e!3554720 (not lt!2296689))))

(declare-fun b!5787848 () Bool)

(assert (=> b!5787848 (= e!3554718 (not (= (head!12222 (_2!36199 (get!21942 lt!2296660))) (c!1024501 r!7292))))))

(declare-fun b!5787849 () Bool)

(declare-fun res!2442264 () Bool)

(assert (=> b!5787849 (=> res!2442264 e!3554714)))

(assert (=> b!5787849 (= res!2442264 (not ((_ is ElementMatch!15799) r!7292)))))

(assert (=> b!5787849 (= e!3554720 e!3554714)))

(declare-fun b!5787850 () Bool)

(declare-fun res!2442268 () Bool)

(assert (=> b!5787850 (=> (not res!2442268) (not e!3554715))))

(assert (=> b!5787850 (= res!2442268 (not call!450699))))

(declare-fun b!5787851 () Bool)

(assert (=> b!5787851 (= e!3554715 (= (head!12222 (_2!36199 (get!21942 lt!2296660))) (c!1024501 r!7292)))))

(declare-fun b!5787852 () Bool)

(assert (=> b!5787852 (= e!3554717 (matchR!7984 (derivativeStep!4574 r!7292 (head!12222 (_2!36199 (get!21942 lt!2296660)))) (tail!11317 (_2!36199 (get!21942 lt!2296660)))))))

(declare-fun b!5787853 () Bool)

(declare-fun e!3554716 () Bool)

(assert (=> b!5787853 (= e!3554714 e!3554716)))

(declare-fun res!2442266 () Bool)

(assert (=> b!5787853 (=> (not res!2442266) (not e!3554716))))

(assert (=> b!5787853 (= res!2442266 (not lt!2296689))))

(declare-fun b!5787854 () Bool)

(assert (=> b!5787854 (= e!3554719 e!3554720)))

(declare-fun c!1024769 () Bool)

(assert (=> b!5787854 (= c!1024769 ((_ is EmptyLang!15799) r!7292))))

(declare-fun b!5787855 () Bool)

(declare-fun res!2442263 () Bool)

(assert (=> b!5787855 (=> (not res!2442263) (not e!3554715))))

(assert (=> b!5787855 (= res!2442263 (isEmpty!35476 (tail!11317 (_2!36199 (get!21942 lt!2296660)))))))

(declare-fun b!5787856 () Bool)

(assert (=> b!5787856 (= e!3554716 e!3554718)))

(declare-fun res!2442269 () Bool)

(assert (=> b!5787856 (=> res!2442269 e!3554718)))

(assert (=> b!5787856 (= res!2442269 call!450699)))

(declare-fun b!5787857 () Bool)

(assert (=> b!5787857 (= e!3554719 (= lt!2296689 call!450699))))

(assert (= (and d!1823497 c!1024768) b!5787844))

(assert (= (and d!1823497 (not c!1024768)) b!5787852))

(assert (= (and d!1823497 c!1024770) b!5787857))

(assert (= (and d!1823497 (not c!1024770)) b!5787854))

(assert (= (and b!5787854 c!1024769) b!5787847))

(assert (= (and b!5787854 (not c!1024769)) b!5787849))

(assert (= (and b!5787849 (not res!2442264)) b!5787845))

(assert (= (and b!5787845 res!2442262) b!5787850))

(assert (= (and b!5787850 res!2442268) b!5787855))

(assert (= (and b!5787855 res!2442263) b!5787851))

(assert (= (and b!5787845 (not res!2442265)) b!5787853))

(assert (= (and b!5787853 res!2442266) b!5787856))

(assert (= (and b!5787856 (not res!2442269)) b!5787846))

(assert (= (and b!5787846 (not res!2442267)) b!5787848))

(assert (= (or b!5787857 b!5787856 b!5787850) bm!450694))

(assert (=> b!5787844 m!6731558))

(declare-fun m!6732162 () Bool)

(assert (=> b!5787848 m!6732162))

(declare-fun m!6732164 () Bool)

(assert (=> b!5787846 m!6732164))

(assert (=> b!5787846 m!6732164))

(declare-fun m!6732166 () Bool)

(assert (=> b!5787846 m!6732166))

(assert (=> b!5787855 m!6732164))

(assert (=> b!5787855 m!6732164))

(assert (=> b!5787855 m!6732166))

(declare-fun m!6732168 () Bool)

(assert (=> d!1823497 m!6732168))

(assert (=> d!1823497 m!6731442))

(assert (=> b!5787852 m!6732162))

(assert (=> b!5787852 m!6732162))

(declare-fun m!6732170 () Bool)

(assert (=> b!5787852 m!6732170))

(assert (=> b!5787852 m!6732164))

(assert (=> b!5787852 m!6732170))

(assert (=> b!5787852 m!6732164))

(declare-fun m!6732172 () Bool)

(assert (=> b!5787852 m!6732172))

(assert (=> b!5787851 m!6732162))

(assert (=> bm!450694 m!6732168))

(assert (=> b!5787327 d!1823497))

(declare-fun d!1823499 () Bool)

(assert (=> d!1823499 (= (get!21942 lt!2296660) (v!51867 lt!2296660))))

(assert (=> b!5787327 d!1823499))

(declare-fun bs!1366450 () Bool)

(declare-fun d!1823503 () Bool)

(assert (= bs!1366450 (and d!1823503 d!1823311)))

(declare-fun lambda!315554 () Int)

(assert (=> bs!1366450 (= lambda!315554 lambda!315520)))

(declare-fun bs!1366451 () Bool)

(assert (= bs!1366451 (and d!1823503 d!1823305)))

(assert (=> bs!1366451 (= lambda!315554 lambda!315516)))

(declare-fun bs!1366452 () Bool)

(assert (= bs!1366452 (and d!1823503 d!1823241)))

(assert (=> bs!1366452 (= lambda!315554 lambda!315480)))

(declare-fun bs!1366453 () Bool)

(assert (= bs!1366453 (and d!1823503 d!1823309)))

(assert (=> bs!1366453 (= lambda!315554 lambda!315519)))

(declare-fun bs!1366454 () Bool)

(assert (= bs!1366454 (and d!1823503 d!1823253)))

(assert (=> bs!1366454 (= lambda!315554 lambda!315489)))

(declare-fun bs!1366455 () Bool)

(assert (= bs!1366455 (and d!1823503 d!1823489)))

(assert (=> bs!1366455 (= lambda!315554 lambda!315553)))

(declare-fun b!5787863 () Bool)

(declare-fun e!3554729 () Regex!15799)

(assert (=> b!5787863 (= e!3554729 (Union!15799 (h!70020 (t!377037 (unfocusZipperList!1227 zl!343))) (generalisedUnion!1662 (t!377037 (t!377037 (unfocusZipperList!1227 zl!343))))))))

(declare-fun b!5787864 () Bool)

(declare-fun e!3554730 () Bool)

(declare-fun lt!2296690 () Regex!15799)

(assert (=> b!5787864 (= e!3554730 (isUnion!718 lt!2296690))))

(declare-fun b!5787865 () Bool)

(declare-fun e!3554727 () Bool)

(assert (=> b!5787865 (= e!3554727 (isEmptyLang!1288 lt!2296690))))

(declare-fun b!5787866 () Bool)

(assert (=> b!5787866 (= e!3554729 EmptyLang!15799)))

(declare-fun b!5787867 () Bool)

(assert (=> b!5787867 (= e!3554727 e!3554730)))

(declare-fun c!1024773 () Bool)

(assert (=> b!5787867 (= c!1024773 (isEmpty!35479 (tail!11318 (t!377037 (unfocusZipperList!1227 zl!343)))))))

(declare-fun b!5787868 () Bool)

(declare-fun e!3554731 () Regex!15799)

(assert (=> b!5787868 (= e!3554731 (h!70020 (t!377037 (unfocusZipperList!1227 zl!343))))))

(declare-fun e!3554726 () Bool)

(assert (=> d!1823503 e!3554726))

(declare-fun res!2442275 () Bool)

(assert (=> d!1823503 (=> (not res!2442275) (not e!3554726))))

(assert (=> d!1823503 (= res!2442275 (validRegex!7535 lt!2296690))))

(assert (=> d!1823503 (= lt!2296690 e!3554731)))

(declare-fun c!1024772 () Bool)

(declare-fun e!3554728 () Bool)

(assert (=> d!1823503 (= c!1024772 e!3554728)))

(declare-fun res!2442274 () Bool)

(assert (=> d!1823503 (=> (not res!2442274) (not e!3554728))))

(assert (=> d!1823503 (= res!2442274 ((_ is Cons!63572) (t!377037 (unfocusZipperList!1227 zl!343))))))

(assert (=> d!1823503 (forall!14913 (t!377037 (unfocusZipperList!1227 zl!343)) lambda!315554)))

(assert (=> d!1823503 (= (generalisedUnion!1662 (t!377037 (unfocusZipperList!1227 zl!343))) lt!2296690)))

(declare-fun b!5787869 () Bool)

(assert (=> b!5787869 (= e!3554728 (isEmpty!35479 (t!377037 (t!377037 (unfocusZipperList!1227 zl!343)))))))

(declare-fun b!5787870 () Bool)

(assert (=> b!5787870 (= e!3554730 (= lt!2296690 (head!12223 (t!377037 (unfocusZipperList!1227 zl!343)))))))

(declare-fun b!5787871 () Bool)

(assert (=> b!5787871 (= e!3554726 e!3554727)))

(declare-fun c!1024771 () Bool)

(assert (=> b!5787871 (= c!1024771 (isEmpty!35479 (t!377037 (unfocusZipperList!1227 zl!343))))))

(declare-fun b!5787872 () Bool)

(assert (=> b!5787872 (= e!3554731 e!3554729)))

(declare-fun c!1024774 () Bool)

(assert (=> b!5787872 (= c!1024774 ((_ is Cons!63572) (t!377037 (unfocusZipperList!1227 zl!343))))))

(assert (= (and d!1823503 res!2442274) b!5787869))

(assert (= (and d!1823503 c!1024772) b!5787868))

(assert (= (and d!1823503 (not c!1024772)) b!5787872))

(assert (= (and b!5787872 c!1024774) b!5787863))

(assert (= (and b!5787872 (not c!1024774)) b!5787866))

(assert (= (and d!1823503 res!2442275) b!5787871))

(assert (= (and b!5787871 c!1024771) b!5787865))

(assert (= (and b!5787871 (not c!1024771)) b!5787867))

(assert (= (and b!5787867 c!1024773) b!5787870))

(assert (= (and b!5787867 (not c!1024773)) b!5787864))

(declare-fun m!6732184 () Bool)

(assert (=> b!5787865 m!6732184))

(declare-fun m!6732186 () Bool)

(assert (=> d!1823503 m!6732186))

(declare-fun m!6732188 () Bool)

(assert (=> d!1823503 m!6732188))

(declare-fun m!6732190 () Bool)

(assert (=> b!5787870 m!6732190))

(assert (=> b!5787871 m!6731612))

(declare-fun m!6732192 () Bool)

(assert (=> b!5787869 m!6732192))

(declare-fun m!6732194 () Bool)

(assert (=> b!5787863 m!6732194))

(declare-fun m!6732196 () Bool)

(assert (=> b!5787864 m!6732196))

(declare-fun m!6732198 () Bool)

(assert (=> b!5787867 m!6732198))

(assert (=> b!5787867 m!6732198))

(declare-fun m!6732200 () Bool)

(assert (=> b!5787867 m!6732200))

(assert (=> b!5787143 d!1823503))

(declare-fun d!1823509 () Bool)

(declare-fun res!2442285 () Bool)

(declare-fun e!3554742 () Bool)

(assert (=> d!1823509 (=> res!2442285 e!3554742)))

(assert (=> d!1823509 (= res!2442285 ((_ is Nil!63572) (exprs!5683 (h!70022 zl!343))))))

(assert (=> d!1823509 (= (forall!14913 (exprs!5683 (h!70022 zl!343)) lambda!315520) e!3554742)))

(declare-fun b!5787893 () Bool)

(declare-fun e!3554743 () Bool)

(assert (=> b!5787893 (= e!3554742 e!3554743)))

(declare-fun res!2442286 () Bool)

(assert (=> b!5787893 (=> (not res!2442286) (not e!3554743))))

(assert (=> b!5787893 (= res!2442286 (dynLambda!24890 lambda!315520 (h!70020 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun b!5787894 () Bool)

(assert (=> b!5787894 (= e!3554743 (forall!14913 (t!377037 (exprs!5683 (h!70022 zl!343))) lambda!315520))))

(assert (= (and d!1823509 (not res!2442285)) b!5787893))

(assert (= (and b!5787893 res!2442286) b!5787894))

(declare-fun b_lambda!218187 () Bool)

(assert (=> (not b_lambda!218187) (not b!5787893)))

(declare-fun m!6732202 () Bool)

(assert (=> b!5787893 m!6732202))

(declare-fun m!6732204 () Bool)

(assert (=> b!5787894 m!6732204))

(assert (=> d!1823311 d!1823509))

(declare-fun bs!1366456 () Bool)

(declare-fun d!1823511 () Bool)

(assert (= bs!1366456 (and d!1823511 d!1823311)))

(declare-fun lambda!315555 () Int)

(assert (=> bs!1366456 (= lambda!315555 lambda!315520)))

(declare-fun bs!1366457 () Bool)

(assert (= bs!1366457 (and d!1823511 d!1823305)))

(assert (=> bs!1366457 (= lambda!315555 lambda!315516)))

(declare-fun bs!1366458 () Bool)

(assert (= bs!1366458 (and d!1823511 d!1823503)))

(assert (=> bs!1366458 (= lambda!315555 lambda!315554)))

(declare-fun bs!1366459 () Bool)

(assert (= bs!1366459 (and d!1823511 d!1823241)))

(assert (=> bs!1366459 (= lambda!315555 lambda!315480)))

(declare-fun bs!1366460 () Bool)

(assert (= bs!1366460 (and d!1823511 d!1823309)))

(assert (=> bs!1366460 (= lambda!315555 lambda!315519)))

(declare-fun bs!1366461 () Bool)

(assert (= bs!1366461 (and d!1823511 d!1823253)))

(assert (=> bs!1366461 (= lambda!315555 lambda!315489)))

(declare-fun bs!1366462 () Bool)

(assert (= bs!1366462 (and d!1823511 d!1823489)))

(assert (=> bs!1366462 (= lambda!315555 lambda!315553)))

(assert (=> d!1823511 (= (inv!82744 (h!70022 (t!377039 zl!343))) (forall!14913 (exprs!5683 (h!70022 (t!377039 zl!343))) lambda!315555))))

(declare-fun bs!1366463 () Bool)

(assert (= bs!1366463 d!1823511))

(declare-fun m!6732216 () Bool)

(assert (=> bs!1366463 m!6732216))

(assert (=> b!5787466 d!1823511))

(declare-fun bs!1366464 () Bool)

(declare-fun b!5787903 () Bool)

(assert (= bs!1366464 (and b!5787903 b!5786794)))

(declare-fun lambda!315556 () Int)

(assert (=> bs!1366464 (not (= lambda!315556 lambda!315445))))

(declare-fun bs!1366465 () Bool)

(assert (= bs!1366465 (and b!5787903 d!1823413)))

(assert (=> bs!1366465 (not (= lambda!315556 lambda!315549))))

(declare-fun bs!1366466 () Bool)

(assert (= bs!1366466 (and b!5787903 d!1823299)))

(assert (=> bs!1366466 (not (= lambda!315556 lambda!315509))))

(declare-fun bs!1366467 () Bool)

(assert (= bs!1366467 (and b!5787903 d!1823393)))

(assert (=> bs!1366467 (= (and (= (reg!16128 (regOne!32111 r!7292)) (reg!16128 r!7292)) (= (regOne!32111 r!7292) (Star!15799 (reg!16128 r!7292)))) (= lambda!315556 lambda!315541))))

(declare-fun bs!1366468 () Bool)

(assert (= bs!1366468 (and b!5787903 d!1823289)))

(assert (=> bs!1366468 (not (= lambda!315556 lambda!315503))))

(assert (=> bs!1366465 (not (= lambda!315556 lambda!315550))))

(assert (=> bs!1366466 (= (and (= (reg!16128 (regOne!32111 r!7292)) (reg!16128 r!7292)) (= (regOne!32111 r!7292) (Star!15799 (reg!16128 r!7292)))) (= lambda!315556 lambda!315510))))

(assert (=> bs!1366467 (not (= lambda!315556 lambda!315538))))

(assert (=> bs!1366464 (= (and (= (reg!16128 (regOne!32111 r!7292)) (reg!16128 r!7292)) (= (regOne!32111 r!7292) r!7292)) (= lambda!315556 lambda!315444))))

(assert (=> bs!1366468 (not (= lambda!315556 lambda!315504))))

(declare-fun bs!1366474 () Bool)

(assert (= bs!1366474 (and b!5787903 d!1823303)))

(assert (=> bs!1366474 (not (= lambda!315556 lambda!315513))))

(declare-fun bs!1366476 () Bool)

(assert (= bs!1366476 (and b!5787903 b!5786985)))

(assert (=> bs!1366476 (= (and (= (reg!16128 (regOne!32111 r!7292)) (reg!16128 r!7292)) (= (regOne!32111 r!7292) r!7292)) (= lambda!315556 lambda!315464))))

(assert (=> bs!1366464 (not (= lambda!315556 lambda!315443))))

(declare-fun bs!1366479 () Bool)

(assert (= bs!1366479 (and b!5787903 b!5786979)))

(assert (=> bs!1366479 (not (= lambda!315556 lambda!315465))))

(assert (=> b!5787903 true))

(assert (=> b!5787903 true))

(declare-fun bs!1366482 () Bool)

(declare-fun b!5787897 () Bool)

(assert (= bs!1366482 (and b!5787897 b!5786794)))

(declare-fun lambda!315558 () Int)

(assert (=> bs!1366482 (= (and (= (regOne!32110 (regOne!32111 r!7292)) (reg!16128 r!7292)) (= (regTwo!32110 (regOne!32111 r!7292)) r!7292)) (= lambda!315558 lambda!315445))))

(declare-fun bs!1366484 () Bool)

(assert (= bs!1366484 (and b!5787897 d!1823413)))

(assert (=> bs!1366484 (not (= lambda!315558 lambda!315549))))

(declare-fun bs!1366485 () Bool)

(assert (= bs!1366485 (and b!5787897 d!1823299)))

(assert (=> bs!1366485 (not (= lambda!315558 lambda!315509))))

(declare-fun bs!1366486 () Bool)

(assert (= bs!1366486 (and b!5787897 d!1823393)))

(assert (=> bs!1366486 (not (= lambda!315558 lambda!315541))))

(declare-fun bs!1366487 () Bool)

(assert (= bs!1366487 (and b!5787897 b!5787903)))

(assert (=> bs!1366487 (not (= lambda!315558 lambda!315556))))

(declare-fun bs!1366488 () Bool)

(assert (= bs!1366488 (and b!5787897 d!1823289)))

(assert (=> bs!1366488 (not (= lambda!315558 lambda!315503))))

(assert (=> bs!1366484 (= (and (= (regOne!32110 (regOne!32111 r!7292)) (reg!16128 r!7292)) (= (regTwo!32110 (regOne!32111 r!7292)) r!7292)) (= lambda!315558 lambda!315550))))

(assert (=> bs!1366485 (not (= lambda!315558 lambda!315510))))

(assert (=> bs!1366486 (not (= lambda!315558 lambda!315538))))

(assert (=> bs!1366482 (not (= lambda!315558 lambda!315444))))

(assert (=> bs!1366488 (= (and (= (regOne!32110 (regOne!32111 r!7292)) (reg!16128 r!7292)) (= (regTwo!32110 (regOne!32111 r!7292)) r!7292)) (= lambda!315558 lambda!315504))))

(declare-fun bs!1366493 () Bool)

(assert (= bs!1366493 (and b!5787897 d!1823303)))

(assert (=> bs!1366493 (not (= lambda!315558 lambda!315513))))

(declare-fun bs!1366495 () Bool)

(assert (= bs!1366495 (and b!5787897 b!5786985)))

(assert (=> bs!1366495 (not (= lambda!315558 lambda!315464))))

(assert (=> bs!1366482 (not (= lambda!315558 lambda!315443))))

(declare-fun bs!1366498 () Bool)

(assert (= bs!1366498 (and b!5787897 b!5786979)))

(assert (=> bs!1366498 (= (and (= (regOne!32110 (regOne!32111 r!7292)) (regOne!32110 r!7292)) (= (regTwo!32110 (regOne!32111 r!7292)) (regTwo!32110 r!7292))) (= lambda!315558 lambda!315465))))

(assert (=> b!5787897 true))

(assert (=> b!5787897 true))

(declare-fun b!5787895 () Bool)

(declare-fun c!1024783 () Bool)

(assert (=> b!5787895 (= c!1024783 ((_ is Union!15799) (regOne!32111 r!7292)))))

(declare-fun e!3554746 () Bool)

(declare-fun e!3554748 () Bool)

(assert (=> b!5787895 (= e!3554746 e!3554748)))

(declare-fun b!5787896 () Bool)

(declare-fun e!3554747 () Bool)

(declare-fun e!3554745 () Bool)

(assert (=> b!5787896 (= e!3554747 e!3554745)))

(declare-fun res!2442288 () Bool)

(assert (=> b!5787896 (= res!2442288 (not ((_ is EmptyLang!15799) (regOne!32111 r!7292))))))

(assert (=> b!5787896 (=> (not res!2442288) (not e!3554745))))

(declare-fun e!3554750 () Bool)

(declare-fun call!450701 () Bool)

(assert (=> b!5787897 (= e!3554750 call!450701)))

(declare-fun b!5787898 () Bool)

(declare-fun res!2442289 () Bool)

(declare-fun e!3554749 () Bool)

(assert (=> b!5787898 (=> res!2442289 e!3554749)))

(declare-fun call!450702 () Bool)

(assert (=> b!5787898 (= res!2442289 call!450702)))

(assert (=> b!5787898 (= e!3554750 e!3554749)))

(declare-fun d!1823513 () Bool)

(declare-fun c!1024784 () Bool)

(assert (=> d!1823513 (= c!1024784 ((_ is EmptyExpr!15799) (regOne!32111 r!7292)))))

(assert (=> d!1823513 (= (matchRSpec!2902 (regOne!32111 r!7292) s!2326) e!3554747)))

(declare-fun b!5787899 () Bool)

(assert (=> b!5787899 (= e!3554747 call!450702)))

(declare-fun c!1024781 () Bool)

(declare-fun bm!450696 () Bool)

(assert (=> bm!450696 (= call!450701 (Exists!2899 (ite c!1024781 lambda!315556 lambda!315558)))))

(declare-fun b!5787900 () Bool)

(declare-fun e!3554744 () Bool)

(assert (=> b!5787900 (= e!3554748 e!3554744)))

(declare-fun res!2442287 () Bool)

(assert (=> b!5787900 (= res!2442287 (matchRSpec!2902 (regOne!32111 (regOne!32111 r!7292)) s!2326))))

(assert (=> b!5787900 (=> res!2442287 e!3554744)))

(declare-fun b!5787901 () Bool)

(declare-fun c!1024782 () Bool)

(assert (=> b!5787901 (= c!1024782 ((_ is ElementMatch!15799) (regOne!32111 r!7292)))))

(assert (=> b!5787901 (= e!3554745 e!3554746)))

(declare-fun b!5787902 () Bool)

(assert (=> b!5787902 (= e!3554748 e!3554750)))

(assert (=> b!5787902 (= c!1024781 ((_ is Star!15799) (regOne!32111 r!7292)))))

(declare-fun bm!450697 () Bool)

(assert (=> bm!450697 (= call!450702 (isEmpty!35476 s!2326))))

(assert (=> b!5787903 (= e!3554749 call!450701)))

(declare-fun b!5787904 () Bool)

(assert (=> b!5787904 (= e!3554746 (= s!2326 (Cons!63573 (c!1024501 (regOne!32111 r!7292)) Nil!63573)))))

(declare-fun b!5787905 () Bool)

(assert (=> b!5787905 (= e!3554744 (matchRSpec!2902 (regTwo!32111 (regOne!32111 r!7292)) s!2326))))

(assert (= (and d!1823513 c!1024784) b!5787899))

(assert (= (and d!1823513 (not c!1024784)) b!5787896))

(assert (= (and b!5787896 res!2442288) b!5787901))

(assert (= (and b!5787901 c!1024782) b!5787904))

(assert (= (and b!5787901 (not c!1024782)) b!5787895))

(assert (= (and b!5787895 c!1024783) b!5787900))

(assert (= (and b!5787895 (not c!1024783)) b!5787902))

(assert (= (and b!5787900 (not res!2442287)) b!5787905))

(assert (= (and b!5787902 c!1024781) b!5787898))

(assert (= (and b!5787902 (not c!1024781)) b!5787897))

(assert (= (and b!5787898 (not res!2442289)) b!5787903))

(assert (= (or b!5787903 b!5787897) bm!450696))

(assert (= (or b!5787899 b!5787898) bm!450697))

(declare-fun m!6732220 () Bool)

(assert (=> bm!450696 m!6732220))

(declare-fun m!6732222 () Bool)

(assert (=> b!5787900 m!6732222))

(assert (=> bm!450697 m!6731432))

(declare-fun m!6732224 () Bool)

(assert (=> b!5787905 m!6732224))

(assert (=> b!5786982 d!1823513))

(declare-fun d!1823519 () Bool)

(assert (=> d!1823519 (= (nullable!5831 r!7292) (nullableFct!1863 r!7292))))

(declare-fun bs!1366503 () Bool)

(assert (= bs!1366503 d!1823519))

(declare-fun m!6732226 () Bool)

(assert (=> bs!1366503 m!6732226))

(assert (=> b!5787072 d!1823519))

(declare-fun b!5787946 () Bool)

(declare-fun e!3554778 () List!63697)

(assert (=> b!5787946 (= e!3554778 (_2!36199 (get!21942 lt!2296660)))))

(declare-fun b!5787949 () Bool)

(declare-fun e!3554777 () Bool)

(declare-fun lt!2296695 () List!63697)

(assert (=> b!5787949 (= e!3554777 (or (not (= (_2!36199 (get!21942 lt!2296660)) Nil!63573)) (= lt!2296695 (_1!36199 (get!21942 lt!2296660)))))))

(declare-fun b!5787947 () Bool)

(assert (=> b!5787947 (= e!3554778 (Cons!63573 (h!70021 (_1!36199 (get!21942 lt!2296660))) (++!14017 (t!377038 (_1!36199 (get!21942 lt!2296660))) (_2!36199 (get!21942 lt!2296660)))))))

(declare-fun b!5787948 () Bool)

(declare-fun res!2442306 () Bool)

(assert (=> b!5787948 (=> (not res!2442306) (not e!3554777))))

(declare-fun size!40093 (List!63697) Int)

(assert (=> b!5787948 (= res!2442306 (= (size!40093 lt!2296695) (+ (size!40093 (_1!36199 (get!21942 lt!2296660))) (size!40093 (_2!36199 (get!21942 lt!2296660))))))))

(declare-fun d!1823521 () Bool)

(assert (=> d!1823521 e!3554777))

(declare-fun res!2442307 () Bool)

(assert (=> d!1823521 (=> (not res!2442307) (not e!3554777))))

(declare-fun content!11627 (List!63697) (InoxSet C!31868))

(assert (=> d!1823521 (= res!2442307 (= (content!11627 lt!2296695) ((_ map or) (content!11627 (_1!36199 (get!21942 lt!2296660))) (content!11627 (_2!36199 (get!21942 lt!2296660))))))))

(assert (=> d!1823521 (= lt!2296695 e!3554778)))

(declare-fun c!1024797 () Bool)

(assert (=> d!1823521 (= c!1024797 ((_ is Nil!63573) (_1!36199 (get!21942 lt!2296660))))))

(assert (=> d!1823521 (= (++!14017 (_1!36199 (get!21942 lt!2296660)) (_2!36199 (get!21942 lt!2296660))) lt!2296695)))

(assert (= (and d!1823521 c!1024797) b!5787946))

(assert (= (and d!1823521 (not c!1024797)) b!5787947))

(assert (= (and d!1823521 res!2442307) b!5787948))

(assert (= (and b!5787948 res!2442306) b!5787949))

(declare-fun m!6732246 () Bool)

(assert (=> b!5787947 m!6732246))

(declare-fun m!6732248 () Bool)

(assert (=> b!5787948 m!6732248))

(declare-fun m!6732254 () Bool)

(assert (=> b!5787948 m!6732254))

(declare-fun m!6732258 () Bool)

(assert (=> b!5787948 m!6732258))

(declare-fun m!6732262 () Bool)

(assert (=> d!1823521 m!6732262))

(declare-fun m!6732266 () Bool)

(assert (=> d!1823521 m!6732266))

(declare-fun m!6732268 () Bool)

(assert (=> d!1823521 m!6732268))

(assert (=> b!5787319 d!1823521))

(assert (=> b!5787319 d!1823499))

(declare-fun bs!1366523 () Bool)

(declare-fun d!1823533 () Bool)

(assert (= bs!1366523 (and d!1823533 d!1823311)))

(declare-fun lambda!315562 () Int)

(assert (=> bs!1366523 (= lambda!315562 lambda!315520)))

(declare-fun bs!1366524 () Bool)

(assert (= bs!1366524 (and d!1823533 d!1823305)))

(assert (=> bs!1366524 (= lambda!315562 lambda!315516)))

(declare-fun bs!1366525 () Bool)

(assert (= bs!1366525 (and d!1823533 d!1823503)))

(assert (=> bs!1366525 (= lambda!315562 lambda!315554)))

(declare-fun bs!1366526 () Bool)

(assert (= bs!1366526 (and d!1823533 d!1823241)))

(assert (=> bs!1366526 (= lambda!315562 lambda!315480)))

(declare-fun bs!1366527 () Bool)

(assert (= bs!1366527 (and d!1823533 d!1823309)))

(assert (=> bs!1366527 (= lambda!315562 lambda!315519)))

(declare-fun bs!1366528 () Bool)

(assert (= bs!1366528 (and d!1823533 d!1823511)))

(assert (=> bs!1366528 (= lambda!315562 lambda!315555)))

(declare-fun bs!1366529 () Bool)

(assert (= bs!1366529 (and d!1823533 d!1823253)))

(assert (=> bs!1366529 (= lambda!315562 lambda!315489)))

(declare-fun bs!1366530 () Bool)

(assert (= bs!1366530 (and d!1823533 d!1823489)))

(assert (=> bs!1366530 (= lambda!315562 lambda!315553)))

(declare-fun b!5787950 () Bool)

(declare-fun e!3554779 () Bool)

(declare-fun lt!2296696 () Regex!15799)

(assert (=> b!5787950 (= e!3554779 (= lt!2296696 (head!12223 (t!377037 (exprs!5683 (h!70022 zl!343))))))))

(declare-fun b!5787951 () Bool)

(declare-fun e!3554782 () Bool)

(assert (=> b!5787951 (= e!3554782 (isEmpty!35479 (t!377037 (t!377037 (exprs!5683 (h!70022 zl!343))))))))

(declare-fun b!5787952 () Bool)

(declare-fun e!3554783 () Bool)

(declare-fun e!3554784 () Bool)

(assert (=> b!5787952 (= e!3554783 e!3554784)))

(declare-fun c!1024801 () Bool)

(assert (=> b!5787952 (= c!1024801 (isEmpty!35479 (t!377037 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun b!5787953 () Bool)

(assert (=> b!5787953 (= e!3554779 (isConcat!802 lt!2296696))))

(declare-fun b!5787955 () Bool)

(declare-fun e!3554780 () Regex!15799)

(assert (=> b!5787955 (= e!3554780 (h!70020 (t!377037 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun b!5787956 () Bool)

(assert (=> b!5787956 (= e!3554784 (isEmptyExpr!1279 lt!2296696))))

(declare-fun b!5787957 () Bool)

(declare-fun e!3554781 () Regex!15799)

(assert (=> b!5787957 (= e!3554780 e!3554781)))

(declare-fun c!1024798 () Bool)

(assert (=> b!5787957 (= c!1024798 ((_ is Cons!63572) (t!377037 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun b!5787954 () Bool)

(assert (=> b!5787954 (= e!3554781 (Concat!24644 (h!70020 (t!377037 (exprs!5683 (h!70022 zl!343)))) (generalisedConcat!1414 (t!377037 (t!377037 (exprs!5683 (h!70022 zl!343)))))))))

(assert (=> d!1823533 e!3554783))

(declare-fun res!2442308 () Bool)

(assert (=> d!1823533 (=> (not res!2442308) (not e!3554783))))

(assert (=> d!1823533 (= res!2442308 (validRegex!7535 lt!2296696))))

(assert (=> d!1823533 (= lt!2296696 e!3554780)))

(declare-fun c!1024799 () Bool)

(assert (=> d!1823533 (= c!1024799 e!3554782)))

(declare-fun res!2442309 () Bool)

(assert (=> d!1823533 (=> (not res!2442309) (not e!3554782))))

(assert (=> d!1823533 (= res!2442309 ((_ is Cons!63572) (t!377037 (exprs!5683 (h!70022 zl!343)))))))

(assert (=> d!1823533 (forall!14913 (t!377037 (exprs!5683 (h!70022 zl!343))) lambda!315562)))

(assert (=> d!1823533 (= (generalisedConcat!1414 (t!377037 (exprs!5683 (h!70022 zl!343)))) lt!2296696)))

(declare-fun b!5787958 () Bool)

(assert (=> b!5787958 (= e!3554781 EmptyExpr!15799)))

(declare-fun b!5787959 () Bool)

(assert (=> b!5787959 (= e!3554784 e!3554779)))

(declare-fun c!1024800 () Bool)

(assert (=> b!5787959 (= c!1024800 (isEmpty!35479 (tail!11318 (t!377037 (exprs!5683 (h!70022 zl!343))))))))

(assert (= (and d!1823533 res!2442309) b!5787951))

(assert (= (and d!1823533 c!1024799) b!5787955))

(assert (= (and d!1823533 (not c!1024799)) b!5787957))

(assert (= (and b!5787957 c!1024798) b!5787954))

(assert (= (and b!5787957 (not c!1024798)) b!5787958))

(assert (= (and d!1823533 res!2442308) b!5787952))

(assert (= (and b!5787952 c!1024801) b!5787956))

(assert (= (and b!5787952 (not c!1024801)) b!5787959))

(assert (= (and b!5787959 c!1024800) b!5787950))

(assert (= (and b!5787959 (not c!1024800)) b!5787953))

(declare-fun m!6732278 () Bool)

(assert (=> b!5787951 m!6732278))

(declare-fun m!6732280 () Bool)

(assert (=> d!1823533 m!6732280))

(declare-fun m!6732282 () Bool)

(assert (=> d!1823533 m!6732282))

(declare-fun m!6732284 () Bool)

(assert (=> b!5787953 m!6732284))

(declare-fun m!6732286 () Bool)

(assert (=> b!5787950 m!6732286))

(declare-fun m!6732288 () Bool)

(assert (=> b!5787956 m!6732288))

(declare-fun m!6732290 () Bool)

(assert (=> b!5787959 m!6732290))

(assert (=> b!5787959 m!6732290))

(declare-fun m!6732292 () Bool)

(assert (=> b!5787959 m!6732292))

(declare-fun m!6732294 () Bool)

(assert (=> b!5787954 m!6732294))

(assert (=> b!5787952 m!6731758))

(assert (=> b!5787383 d!1823533))

(assert (=> b!5787321 d!1823447))

(declare-fun d!1823537 () Bool)

(assert (=> d!1823537 (= (isEmptyExpr!1279 lt!2296668) ((_ is EmptyExpr!15799) lt!2296668))))

(assert (=> b!5787385 d!1823537))

(declare-fun b!5787960 () Bool)

(declare-fun res!2442314 () Bool)

(declare-fun e!3554790 () Bool)

(assert (=> b!5787960 (=> res!2442314 e!3554790)))

(assert (=> b!5787960 (= res!2442314 (not ((_ is Concat!24644) (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292)))))))

(declare-fun e!3554788 () Bool)

(assert (=> b!5787960 (= e!3554788 e!3554790)))

(declare-fun b!5787961 () Bool)

(declare-fun e!3554791 () Bool)

(assert (=> b!5787961 (= e!3554790 e!3554791)))

(declare-fun res!2442311 () Bool)

(assert (=> b!5787961 (=> (not res!2442311) (not e!3554791))))

(declare-fun call!450708 () Bool)

(assert (=> b!5787961 (= res!2442311 call!450708)))

(declare-fun b!5787962 () Bool)

(declare-fun call!450709 () Bool)

(assert (=> b!5787962 (= e!3554791 call!450709)))

(declare-fun c!1024803 () Bool)

(declare-fun call!450710 () Bool)

(declare-fun c!1024802 () Bool)

(declare-fun bm!450703 () Bool)

(assert (=> bm!450703 (= call!450710 (validRegex!7535 (ite c!1024803 (reg!16128 (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292))) (ite c!1024802 (regOne!32111 (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292))) (regOne!32110 (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292)))))))))

(declare-fun bm!450704 () Bool)

(assert (=> bm!450704 (= call!450708 call!450710)))

(declare-fun b!5787963 () Bool)

(declare-fun e!3554787 () Bool)

(declare-fun e!3554789 () Bool)

(assert (=> b!5787963 (= e!3554787 e!3554789)))

(assert (=> b!5787963 (= c!1024803 ((_ is Star!15799) (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292))))))

(declare-fun d!1823541 () Bool)

(declare-fun res!2442313 () Bool)

(assert (=> d!1823541 (=> res!2442313 e!3554787)))

(assert (=> d!1823541 (= res!2442313 ((_ is ElementMatch!15799) (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292))))))

(assert (=> d!1823541 (= (validRegex!7535 (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292))) e!3554787)))

(declare-fun b!5787964 () Bool)

(declare-fun e!3554785 () Bool)

(assert (=> b!5787964 (= e!3554785 call!450710)))

(declare-fun b!5787965 () Bool)

(assert (=> b!5787965 (= e!3554789 e!3554788)))

(assert (=> b!5787965 (= c!1024802 ((_ is Union!15799) (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292))))))

(declare-fun bm!450705 () Bool)

(assert (=> bm!450705 (= call!450709 (validRegex!7535 (ite c!1024802 (regTwo!32111 (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292))) (regTwo!32110 (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292))))))))

(declare-fun b!5787966 () Bool)

(assert (=> b!5787966 (= e!3554789 e!3554785)))

(declare-fun res!2442312 () Bool)

(assert (=> b!5787966 (= res!2442312 (not (nullable!5831 (reg!16128 (ite c!1024641 (regTwo!32111 r!7292) (regTwo!32110 r!7292))))))))

(assert (=> b!5787966 (=> (not res!2442312) (not e!3554785))))

(declare-fun b!5787967 () Bool)

(declare-fun res!2442310 () Bool)

(declare-fun e!3554786 () Bool)

(assert (=> b!5787967 (=> (not res!2442310) (not e!3554786))))

(assert (=> b!5787967 (= res!2442310 call!450708)))

(assert (=> b!5787967 (= e!3554788 e!3554786)))

(declare-fun b!5787968 () Bool)

(assert (=> b!5787968 (= e!3554786 call!450709)))

(assert (= (and d!1823541 (not res!2442313)) b!5787963))

(assert (= (and b!5787963 c!1024803) b!5787966))

(assert (= (and b!5787963 (not c!1024803)) b!5787965))

(assert (= (and b!5787966 res!2442312) b!5787964))

(assert (= (and b!5787965 c!1024802) b!5787967))

(assert (= (and b!5787965 (not c!1024802)) b!5787960))

(assert (= (and b!5787967 res!2442310) b!5787968))

(assert (= (and b!5787960 (not res!2442314)) b!5787961))

(assert (= (and b!5787961 res!2442311) b!5787962))

(assert (= (or b!5787968 b!5787962) bm!450705))

(assert (= (or b!5787967 b!5787961) bm!450704))

(assert (= (or b!5787964 bm!450704) bm!450703))

(declare-fun m!6732298 () Bool)

(assert (=> bm!450703 m!6732298))

(declare-fun m!6732300 () Bool)

(assert (=> bm!450705 m!6732300))

(declare-fun m!6732302 () Bool)

(assert (=> b!5787966 m!6732302))

(assert (=> bm!450594 d!1823541))

(declare-fun d!1823547 () Bool)

(assert (=> d!1823547 true))

(assert (=> d!1823547 true))

(declare-fun res!2442317 () Bool)

(assert (=> d!1823547 (= (choose!43945 lambda!315443) res!2442317)))

(assert (=> d!1823295 d!1823547))

(assert (=> bm!450581 d!1823293))

(declare-fun d!1823549 () Bool)

(assert (=> d!1823549 true))

(declare-fun setRes!38892 () Bool)

(assert (=> d!1823549 setRes!38892))

(declare-fun condSetEmpty!38892 () Bool)

(declare-fun res!2442320 () (InoxSet Context!10366))

(assert (=> d!1823549 (= condSetEmpty!38892 (= res!2442320 ((as const (Array Context!10366 Bool)) false)))))

(assert (=> d!1823549 (= (choose!43942 z!1189 lambda!315446) res!2442320)))

(declare-fun setIsEmpty!38892 () Bool)

(assert (=> setIsEmpty!38892 setRes!38892))

(declare-fun setNonEmpty!38892 () Bool)

(declare-fun tp!1596705 () Bool)

(declare-fun e!3554811 () Bool)

(declare-fun setElem!38892 () Context!10366)

(assert (=> setNonEmpty!38892 (= setRes!38892 (and tp!1596705 (inv!82744 setElem!38892) e!3554811))))

(declare-fun setRest!38892 () (InoxSet Context!10366))

(assert (=> setNonEmpty!38892 (= res!2442320 ((_ map or) (store ((as const (Array Context!10366 Bool)) false) setElem!38892 true) setRest!38892))))

(declare-fun b!5788030 () Bool)

(declare-fun tp!1596704 () Bool)

(assert (=> b!5788030 (= e!3554811 tp!1596704)))

(assert (= (and d!1823549 condSetEmpty!38892) setIsEmpty!38892))

(assert (= (and d!1823549 (not condSetEmpty!38892)) setNonEmpty!38892))

(assert (= setNonEmpty!38892 b!5788030))

(declare-fun m!6732304 () Bool)

(assert (=> setNonEmpty!38892 m!6732304))

(assert (=> d!1823279 d!1823549))

(declare-fun d!1823551 () Bool)

(assert (=> d!1823551 (= (isEmpty!35480 (findConcatSeparation!2222 (reg!16128 r!7292) r!7292 Nil!63573 s!2326 s!2326)) (not ((_ is Some!15807) (findConcatSeparation!2222 (reg!16128 r!7292) r!7292 Nil!63573 s!2326 s!2326))))))

(assert (=> d!1823287 d!1823551))

(declare-fun b!5788054 () Bool)

(declare-fun e!3554823 () Bool)

(assert (=> b!5788054 (= e!3554823 (nullable!5831 (reg!16128 r!7292)))))

(declare-fun d!1823553 () Bool)

(declare-fun e!3554825 () Bool)

(assert (=> d!1823553 e!3554825))

(declare-fun c!1024806 () Bool)

(assert (=> d!1823553 (= c!1024806 ((_ is EmptyExpr!15799) (reg!16128 r!7292)))))

(declare-fun lt!2296697 () Bool)

(assert (=> d!1823553 (= lt!2296697 e!3554823)))

(declare-fun c!1024804 () Bool)

(assert (=> d!1823553 (= c!1024804 (isEmpty!35476 (_1!36199 (get!21942 lt!2296660))))))

(assert (=> d!1823553 (validRegex!7535 (reg!16128 r!7292))))

(assert (=> d!1823553 (= (matchR!7984 (reg!16128 r!7292) (_1!36199 (get!21942 lt!2296660))) lt!2296697)))

(declare-fun b!5788055 () Bool)

(declare-fun res!2442324 () Bool)

(declare-fun e!3554819 () Bool)

(assert (=> b!5788055 (=> res!2442324 e!3554819)))

(declare-fun e!3554820 () Bool)

(assert (=> b!5788055 (= res!2442324 e!3554820)))

(declare-fun res!2442321 () Bool)

(assert (=> b!5788055 (=> (not res!2442321) (not e!3554820))))

(assert (=> b!5788055 (= res!2442321 lt!2296697)))

(declare-fun bm!450706 () Bool)

(declare-fun call!450711 () Bool)

(assert (=> bm!450706 (= call!450711 (isEmpty!35476 (_1!36199 (get!21942 lt!2296660))))))

(declare-fun b!5788056 () Bool)

(declare-fun res!2442326 () Bool)

(declare-fun e!3554824 () Bool)

(assert (=> b!5788056 (=> res!2442326 e!3554824)))

(assert (=> b!5788056 (= res!2442326 (not (isEmpty!35476 (tail!11317 (_1!36199 (get!21942 lt!2296660))))))))

(declare-fun b!5788057 () Bool)

(declare-fun e!3554826 () Bool)

(assert (=> b!5788057 (= e!3554826 (not lt!2296697))))

(declare-fun b!5788058 () Bool)

(assert (=> b!5788058 (= e!3554824 (not (= (head!12222 (_1!36199 (get!21942 lt!2296660))) (c!1024501 (reg!16128 r!7292)))))))

(declare-fun b!5788059 () Bool)

(declare-fun res!2442323 () Bool)

(assert (=> b!5788059 (=> res!2442323 e!3554819)))

(assert (=> b!5788059 (= res!2442323 (not ((_ is ElementMatch!15799) (reg!16128 r!7292))))))

(assert (=> b!5788059 (= e!3554826 e!3554819)))

(declare-fun b!5788060 () Bool)

(declare-fun res!2442327 () Bool)

(assert (=> b!5788060 (=> (not res!2442327) (not e!3554820))))

(assert (=> b!5788060 (= res!2442327 (not call!450711))))

(declare-fun b!5788061 () Bool)

(assert (=> b!5788061 (= e!3554820 (= (head!12222 (_1!36199 (get!21942 lt!2296660))) (c!1024501 (reg!16128 r!7292))))))

(declare-fun b!5788062 () Bool)

(assert (=> b!5788062 (= e!3554823 (matchR!7984 (derivativeStep!4574 (reg!16128 r!7292) (head!12222 (_1!36199 (get!21942 lt!2296660)))) (tail!11317 (_1!36199 (get!21942 lt!2296660)))))))

(declare-fun b!5788063 () Bool)

(declare-fun e!3554821 () Bool)

(assert (=> b!5788063 (= e!3554819 e!3554821)))

(declare-fun res!2442325 () Bool)

(assert (=> b!5788063 (=> (not res!2442325) (not e!3554821))))

(assert (=> b!5788063 (= res!2442325 (not lt!2296697))))

(declare-fun b!5788064 () Bool)

(assert (=> b!5788064 (= e!3554825 e!3554826)))

(declare-fun c!1024805 () Bool)

(assert (=> b!5788064 (= c!1024805 ((_ is EmptyLang!15799) (reg!16128 r!7292)))))

(declare-fun b!5788065 () Bool)

(declare-fun res!2442322 () Bool)

(assert (=> b!5788065 (=> (not res!2442322) (not e!3554820))))

(assert (=> b!5788065 (= res!2442322 (isEmpty!35476 (tail!11317 (_1!36199 (get!21942 lt!2296660)))))))

(declare-fun b!5788066 () Bool)

(assert (=> b!5788066 (= e!3554821 e!3554824)))

(declare-fun res!2442328 () Bool)

(assert (=> b!5788066 (=> res!2442328 e!3554824)))

(assert (=> b!5788066 (= res!2442328 call!450711)))

(declare-fun b!5788067 () Bool)

(assert (=> b!5788067 (= e!3554825 (= lt!2296697 call!450711))))

(assert (= (and d!1823553 c!1024804) b!5788054))

(assert (= (and d!1823553 (not c!1024804)) b!5788062))

(assert (= (and d!1823553 c!1024806) b!5788067))

(assert (= (and d!1823553 (not c!1024806)) b!5788064))

(assert (= (and b!5788064 c!1024805) b!5788057))

(assert (= (and b!5788064 (not c!1024805)) b!5788059))

(assert (= (and b!5788059 (not res!2442323)) b!5788055))

(assert (= (and b!5788055 res!2442321) b!5788060))

(assert (= (and b!5788060 res!2442327) b!5788065))

(assert (= (and b!5788065 res!2442322) b!5788061))

(assert (= (and b!5788055 (not res!2442324)) b!5788063))

(assert (= (and b!5788063 res!2442325) b!5788066))

(assert (= (and b!5788066 (not res!2442328)) b!5788056))

(assert (= (and b!5788056 (not res!2442326)) b!5788058))

(assert (= (or b!5788067 b!5788066 b!5788060) bm!450706))

(assert (=> b!5788054 m!6731756))

(declare-fun m!6732310 () Bool)

(assert (=> b!5788058 m!6732310))

(declare-fun m!6732312 () Bool)

(assert (=> b!5788056 m!6732312))

(assert (=> b!5788056 m!6732312))

(declare-fun m!6732314 () Bool)

(assert (=> b!5788056 m!6732314))

(assert (=> b!5788065 m!6732312))

(assert (=> b!5788065 m!6732312))

(assert (=> b!5788065 m!6732314))

(declare-fun m!6732316 () Bool)

(assert (=> d!1823553 m!6732316))

(assert (=> d!1823553 m!6731712))

(assert (=> b!5788062 m!6732310))

(assert (=> b!5788062 m!6732310))

(declare-fun m!6732318 () Bool)

(assert (=> b!5788062 m!6732318))

(assert (=> b!5788062 m!6732312))

(assert (=> b!5788062 m!6732318))

(assert (=> b!5788062 m!6732312))

(declare-fun m!6732320 () Bool)

(assert (=> b!5788062 m!6732320))

(assert (=> b!5788061 m!6732310))

(assert (=> bm!450706 m!6732316))

(assert (=> b!5787323 d!1823553))

(assert (=> b!5787323 d!1823499))

(declare-fun d!1823555 () Bool)

(assert (=> d!1823555 (= (head!12223 (unfocusZipperList!1227 zl!343)) (h!70020 (unfocusZipperList!1227 zl!343)))))

(assert (=> b!5787150 d!1823555))

(declare-fun d!1823557 () Bool)

(assert (=> d!1823557 (= (head!12223 (exprs!5683 (h!70022 zl!343))) (h!70020 (exprs!5683 (h!70022 zl!343))))))

(assert (=> b!5787379 d!1823557))

(declare-fun d!1823559 () Bool)

(assert (=> d!1823559 (= (isEmpty!35479 (exprs!5683 (h!70022 zl!343))) ((_ is Nil!63572) (exprs!5683 (h!70022 zl!343))))))

(assert (=> b!5787381 d!1823559))

(assert (=> bm!450557 d!1823293))

(declare-fun d!1823561 () Bool)

(assert (=> d!1823561 (= (isUnion!718 lt!2296620) ((_ is Union!15799) lt!2296620))))

(assert (=> b!5787144 d!1823561))

(assert (=> b!5787168 d!1823309))

(declare-fun bs!1366535 () Bool)

(declare-fun d!1823563 () Bool)

(assert (= bs!1366535 (and d!1823563 d!1823311)))

(declare-fun lambda!315563 () Int)

(assert (=> bs!1366535 (= lambda!315563 lambda!315520)))

(declare-fun bs!1366537 () Bool)

(assert (= bs!1366537 (and d!1823563 d!1823305)))

(assert (=> bs!1366537 (= lambda!315563 lambda!315516)))

(declare-fun bs!1366539 () Bool)

(assert (= bs!1366539 (and d!1823563 d!1823503)))

(assert (=> bs!1366539 (= lambda!315563 lambda!315554)))

(declare-fun bs!1366541 () Bool)

(assert (= bs!1366541 (and d!1823563 d!1823241)))

(assert (=> bs!1366541 (= lambda!315563 lambda!315480)))

(declare-fun bs!1366542 () Bool)

(assert (= bs!1366542 (and d!1823563 d!1823309)))

(assert (=> bs!1366542 (= lambda!315563 lambda!315519)))

(declare-fun bs!1366543 () Bool)

(assert (= bs!1366543 (and d!1823563 d!1823533)))

(assert (=> bs!1366543 (= lambda!315563 lambda!315562)))

(declare-fun bs!1366544 () Bool)

(assert (= bs!1366544 (and d!1823563 d!1823511)))

(assert (=> bs!1366544 (= lambda!315563 lambda!315555)))

(declare-fun bs!1366545 () Bool)

(assert (= bs!1366545 (and d!1823563 d!1823253)))

(assert (=> bs!1366545 (= lambda!315563 lambda!315489)))

(declare-fun bs!1366546 () Bool)

(assert (= bs!1366546 (and d!1823563 d!1823489)))

(assert (=> bs!1366546 (= lambda!315563 lambda!315553)))

(declare-fun lt!2296698 () List!63696)

(assert (=> d!1823563 (forall!14913 lt!2296698 lambda!315563)))

(declare-fun e!3554837 () List!63696)

(assert (=> d!1823563 (= lt!2296698 e!3554837)))

(declare-fun c!1024807 () Bool)

(assert (=> d!1823563 (= c!1024807 ((_ is Cons!63574) (t!377039 zl!343)))))

(assert (=> d!1823563 (= (unfocusZipperList!1227 (t!377039 zl!343)) lt!2296698)))

(declare-fun b!5788102 () Bool)

(assert (=> b!5788102 (= e!3554837 (Cons!63572 (generalisedConcat!1414 (exprs!5683 (h!70022 (t!377039 zl!343)))) (unfocusZipperList!1227 (t!377039 (t!377039 zl!343)))))))

(declare-fun b!5788103 () Bool)

(assert (=> b!5788103 (= e!3554837 Nil!63572)))

(assert (= (and d!1823563 c!1024807) b!5788102))

(assert (= (and d!1823563 (not c!1024807)) b!5788103))

(declare-fun m!6732330 () Bool)

(assert (=> d!1823563 m!6732330))

(declare-fun m!6732332 () Bool)

(assert (=> b!5788102 m!6732332))

(declare-fun m!6732334 () Bool)

(assert (=> b!5788102 m!6732334))

(assert (=> b!5787168 d!1823563))

(declare-fun d!1823575 () Bool)

(assert (=> d!1823575 (= (nullable!5831 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (nullableFct!1863 (h!70020 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))))))

(declare-fun bs!1366547 () Bool)

(assert (= bs!1366547 d!1823575))

(declare-fun m!6732336 () Bool)

(assert (=> bs!1366547 m!6732336))

(assert (=> b!5787425 d!1823575))

(declare-fun d!1823577 () Bool)

(declare-fun res!2442333 () Bool)

(declare-fun e!3554842 () Bool)

(assert (=> d!1823577 (=> res!2442333 e!3554842)))

(assert (=> d!1823577 (= res!2442333 ((_ is Nil!63574) lt!2296635))))

(assert (=> d!1823577 (= (noDuplicate!1700 lt!2296635) e!3554842)))

(declare-fun b!5788108 () Bool)

(declare-fun e!3554843 () Bool)

(assert (=> b!5788108 (= e!3554842 e!3554843)))

(declare-fun res!2442334 () Bool)

(assert (=> b!5788108 (=> (not res!2442334) (not e!3554843))))

(declare-fun contains!19873 (List!63698 Context!10366) Bool)

(assert (=> b!5788108 (= res!2442334 (not (contains!19873 (t!377039 lt!2296635) (h!70022 lt!2296635))))))

(declare-fun b!5788109 () Bool)

(assert (=> b!5788109 (= e!3554843 (noDuplicate!1700 (t!377039 lt!2296635)))))

(assert (= (and d!1823577 (not res!2442333)) b!5788108))

(assert (= (and b!5788108 res!2442334) b!5788109))

(declare-fun m!6732338 () Bool)

(assert (=> b!5788108 m!6732338))

(declare-fun m!6732340 () Bool)

(assert (=> b!5788109 m!6732340))

(assert (=> d!1823265 d!1823577))

(declare-fun d!1823579 () Bool)

(declare-fun e!3554852 () Bool)

(assert (=> d!1823579 e!3554852))

(declare-fun res!2442339 () Bool)

(assert (=> d!1823579 (=> (not res!2442339) (not e!3554852))))

(declare-fun res!2442340 () List!63698)

(assert (=> d!1823579 (= res!2442339 (noDuplicate!1700 res!2442340))))

(declare-fun e!3554850 () Bool)

(assert (=> d!1823579 e!3554850))

(assert (=> d!1823579 (= (choose!43941 z!1189) res!2442340)))

(declare-fun b!5788117 () Bool)

(declare-fun e!3554851 () Bool)

(declare-fun tp!1596784 () Bool)

(assert (=> b!5788117 (= e!3554851 tp!1596784)))

(declare-fun b!5788116 () Bool)

(declare-fun tp!1596783 () Bool)

(assert (=> b!5788116 (= e!3554850 (and (inv!82744 (h!70022 res!2442340)) e!3554851 tp!1596783))))

(declare-fun b!5788118 () Bool)

(assert (=> b!5788118 (= e!3554852 (= (content!11625 res!2442340) z!1189))))

(assert (= b!5788116 b!5788117))

(assert (= (and d!1823579 ((_ is Cons!63574) res!2442340)) b!5788116))

(assert (= (and d!1823579 res!2442339) b!5788118))

(declare-fun m!6732342 () Bool)

(assert (=> d!1823579 m!6732342))

(declare-fun m!6732344 () Bool)

(assert (=> b!5788116 m!6732344))

(declare-fun m!6732346 () Bool)

(assert (=> b!5788118 m!6732346))

(assert (=> d!1823265 d!1823579))

(declare-fun b!5788119 () Bool)

(declare-fun res!2442345 () Bool)

(declare-fun e!3554858 () Bool)

(assert (=> b!5788119 (=> res!2442345 e!3554858)))

(assert (=> b!5788119 (= res!2442345 (not ((_ is Concat!24644) lt!2296668)))))

(declare-fun e!3554856 () Bool)

(assert (=> b!5788119 (= e!3554856 e!3554858)))

(declare-fun b!5788120 () Bool)

(declare-fun e!3554859 () Bool)

(assert (=> b!5788120 (= e!3554858 e!3554859)))

(declare-fun res!2442342 () Bool)

(assert (=> b!5788120 (=> (not res!2442342) (not e!3554859))))

(declare-fun call!450712 () Bool)

(assert (=> b!5788120 (= res!2442342 call!450712)))

(declare-fun b!5788121 () Bool)

(declare-fun call!450713 () Bool)

(assert (=> b!5788121 (= e!3554859 call!450713)))

(declare-fun bm!450707 () Bool)

(declare-fun c!1024809 () Bool)

(declare-fun c!1024808 () Bool)

(declare-fun call!450714 () Bool)

(assert (=> bm!450707 (= call!450714 (validRegex!7535 (ite c!1024809 (reg!16128 lt!2296668) (ite c!1024808 (regOne!32111 lt!2296668) (regOne!32110 lt!2296668)))))))

(declare-fun bm!450708 () Bool)

(assert (=> bm!450708 (= call!450712 call!450714)))

(declare-fun b!5788122 () Bool)

(declare-fun e!3554855 () Bool)

(declare-fun e!3554857 () Bool)

(assert (=> b!5788122 (= e!3554855 e!3554857)))

(assert (=> b!5788122 (= c!1024809 ((_ is Star!15799) lt!2296668))))

(declare-fun d!1823581 () Bool)

(declare-fun res!2442344 () Bool)

(assert (=> d!1823581 (=> res!2442344 e!3554855)))

(assert (=> d!1823581 (= res!2442344 ((_ is ElementMatch!15799) lt!2296668))))

(assert (=> d!1823581 (= (validRegex!7535 lt!2296668) e!3554855)))

(declare-fun b!5788123 () Bool)

(declare-fun e!3554853 () Bool)

(assert (=> b!5788123 (= e!3554853 call!450714)))

(declare-fun b!5788124 () Bool)

(assert (=> b!5788124 (= e!3554857 e!3554856)))

(assert (=> b!5788124 (= c!1024808 ((_ is Union!15799) lt!2296668))))

(declare-fun bm!450709 () Bool)

(assert (=> bm!450709 (= call!450713 (validRegex!7535 (ite c!1024808 (regTwo!32111 lt!2296668) (regTwo!32110 lt!2296668))))))

(declare-fun b!5788125 () Bool)

(assert (=> b!5788125 (= e!3554857 e!3554853)))

(declare-fun res!2442343 () Bool)

(assert (=> b!5788125 (= res!2442343 (not (nullable!5831 (reg!16128 lt!2296668))))))

(assert (=> b!5788125 (=> (not res!2442343) (not e!3554853))))

(declare-fun b!5788126 () Bool)

(declare-fun res!2442341 () Bool)

(declare-fun e!3554854 () Bool)

(assert (=> b!5788126 (=> (not res!2442341) (not e!3554854))))

(assert (=> b!5788126 (= res!2442341 call!450712)))

(assert (=> b!5788126 (= e!3554856 e!3554854)))

(declare-fun b!5788127 () Bool)

(assert (=> b!5788127 (= e!3554854 call!450713)))

(assert (= (and d!1823581 (not res!2442344)) b!5788122))

(assert (= (and b!5788122 c!1024809) b!5788125))

(assert (= (and b!5788122 (not c!1024809)) b!5788124))

(assert (= (and b!5788125 res!2442343) b!5788123))

(assert (= (and b!5788124 c!1024808) b!5788126))

(assert (= (and b!5788124 (not c!1024808)) b!5788119))

(assert (= (and b!5788126 res!2442341) b!5788127))

(assert (= (and b!5788119 (not res!2442345)) b!5788120))

(assert (= (and b!5788120 res!2442342) b!5788121))

(assert (= (or b!5788127 b!5788121) bm!450709))

(assert (= (or b!5788126 b!5788120) bm!450708))

(assert (= (or b!5788123 bm!450708) bm!450707))

(declare-fun m!6732348 () Bool)

(assert (=> bm!450707 m!6732348))

(declare-fun m!6732350 () Bool)

(assert (=> bm!450709 m!6732350))

(declare-fun m!6732352 () Bool)

(assert (=> b!5788125 m!6732352))

(assert (=> d!1823309 d!1823581))

(declare-fun d!1823583 () Bool)

(declare-fun res!2442346 () Bool)

(declare-fun e!3554860 () Bool)

(assert (=> d!1823583 (=> res!2442346 e!3554860)))

(assert (=> d!1823583 (= res!2442346 ((_ is Nil!63572) (exprs!5683 (h!70022 zl!343))))))

(assert (=> d!1823583 (= (forall!14913 (exprs!5683 (h!70022 zl!343)) lambda!315519) e!3554860)))

(declare-fun b!5788128 () Bool)

(declare-fun e!3554861 () Bool)

(assert (=> b!5788128 (= e!3554860 e!3554861)))

(declare-fun res!2442347 () Bool)

(assert (=> b!5788128 (=> (not res!2442347) (not e!3554861))))

(assert (=> b!5788128 (= res!2442347 (dynLambda!24890 lambda!315519 (h!70020 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun b!5788129 () Bool)

(assert (=> b!5788129 (= e!3554861 (forall!14913 (t!377037 (exprs!5683 (h!70022 zl!343))) lambda!315519))))

(assert (= (and d!1823583 (not res!2442346)) b!5788128))

(assert (= (and b!5788128 res!2442347) b!5788129))

(declare-fun b_lambda!218203 () Bool)

(assert (=> (not b_lambda!218203) (not b!5788128)))

(declare-fun m!6732354 () Bool)

(assert (=> b!5788128 m!6732354))

(declare-fun m!6732356 () Bool)

(assert (=> b!5788129 m!6732356))

(assert (=> d!1823309 d!1823583))

(declare-fun b!5788130 () Bool)

(declare-fun e!3554864 () (InoxSet Context!10366))

(declare-fun call!450717 () (InoxSet Context!10366))

(declare-fun call!450719 () (InoxSet Context!10366))

(assert (=> b!5788130 (= e!3554864 ((_ map or) call!450717 call!450719))))

(declare-fun b!5788131 () Bool)

(declare-fun e!3554867 () Bool)

(assert (=> b!5788131 (= e!3554867 (nullable!5831 (regOne!32110 (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292)))))))

(declare-fun c!1024812 () Bool)

(declare-fun bm!450710 () Bool)

(declare-fun call!450718 () List!63696)

(assert (=> bm!450710 (= call!450717 (derivationStepZipperDown!1137 (ite c!1024812 (regOne!32111 (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292))) (regOne!32110 (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292)))) (ite c!1024812 (ite c!1024667 (Context!10367 Nil!63572) (Context!10367 call!450615)) (Context!10367 call!450718)) (h!70021 s!2326)))))

(declare-fun c!1024814 () Bool)

(declare-fun bm!450711 () Bool)

(declare-fun c!1024811 () Bool)

(assert (=> bm!450711 (= call!450718 ($colon$colon!1786 (exprs!5683 (ite c!1024667 (Context!10367 Nil!63572) (Context!10367 call!450615))) (ite (or c!1024814 c!1024811) (regTwo!32110 (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292))) (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292)))))))

(declare-fun b!5788132 () Bool)

(declare-fun e!3554863 () (InoxSet Context!10366))

(assert (=> b!5788132 (= e!3554863 e!3554864)))

(assert (=> b!5788132 (= c!1024812 ((_ is Union!15799) (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292))))))

(declare-fun b!5788133 () Bool)

(declare-fun e!3554866 () (InoxSet Context!10366))

(declare-fun call!450715 () (InoxSet Context!10366))

(assert (=> b!5788133 (= e!3554866 ((_ map or) call!450717 call!450715))))

(declare-fun b!5788134 () Bool)

(declare-fun e!3554862 () (InoxSet Context!10366))

(declare-fun call!450716 () (InoxSet Context!10366))

(assert (=> b!5788134 (= e!3554862 call!450716)))

(declare-fun d!1823585 () Bool)

(declare-fun c!1024810 () Bool)

(assert (=> d!1823585 (= c!1024810 (and ((_ is ElementMatch!15799) (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292))) (= (c!1024501 (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292))) (h!70021 s!2326))))))

(assert (=> d!1823585 (= (derivationStepZipperDown!1137 (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292)) (ite c!1024667 (Context!10367 Nil!63572) (Context!10367 call!450615)) (h!70021 s!2326)) e!3554863)))

(declare-fun b!5788135 () Bool)

(assert (=> b!5788135 (= c!1024814 e!3554867)))

(declare-fun res!2442348 () Bool)

(assert (=> b!5788135 (=> (not res!2442348) (not e!3554867))))

(assert (=> b!5788135 (= res!2442348 ((_ is Concat!24644) (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292))))))

(assert (=> b!5788135 (= e!3554864 e!3554866)))

(declare-fun bm!450712 () Bool)

(assert (=> bm!450712 (= call!450715 call!450719)))

(declare-fun b!5788136 () Bool)

(assert (=> b!5788136 (= e!3554862 ((as const (Array Context!10366 Bool)) false))))

(declare-fun b!5788137 () Bool)

(declare-fun c!1024813 () Bool)

(assert (=> b!5788137 (= c!1024813 ((_ is Star!15799) (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292))))))

(declare-fun e!3554865 () (InoxSet Context!10366))

(assert (=> b!5788137 (= e!3554865 e!3554862)))

(declare-fun b!5788138 () Bool)

(assert (=> b!5788138 (= e!3554863 (store ((as const (Array Context!10366 Bool)) false) (ite c!1024667 (Context!10367 Nil!63572) (Context!10367 call!450615)) true))))

(declare-fun bm!450713 () Bool)

(declare-fun call!450720 () List!63696)

(assert (=> bm!450713 (= call!450720 call!450718)))

(declare-fun bm!450714 () Bool)

(assert (=> bm!450714 (= call!450716 call!450715)))

(declare-fun bm!450715 () Bool)

(assert (=> bm!450715 (= call!450719 (derivationStepZipperDown!1137 (ite c!1024812 (regTwo!32111 (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292))) (ite c!1024814 (regTwo!32110 (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292))) (ite c!1024811 (regOne!32110 (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292))) (reg!16128 (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292)))))) (ite (or c!1024812 c!1024814) (ite c!1024667 (Context!10367 Nil!63572) (Context!10367 call!450615)) (Context!10367 call!450720)) (h!70021 s!2326)))))

(declare-fun b!5788139 () Bool)

(assert (=> b!5788139 (= e!3554866 e!3554865)))

(assert (=> b!5788139 (= c!1024811 ((_ is Concat!24644) (ite c!1024667 (regOne!32111 r!7292) (regOne!32110 r!7292))))))

(declare-fun b!5788140 () Bool)

(assert (=> b!5788140 (= e!3554865 call!450716)))

(assert (= (and d!1823585 c!1024810) b!5788138))

(assert (= (and d!1823585 (not c!1024810)) b!5788132))

(assert (= (and b!5788132 c!1024812) b!5788130))

(assert (= (and b!5788132 (not c!1024812)) b!5788135))

(assert (= (and b!5788135 res!2442348) b!5788131))

(assert (= (and b!5788135 c!1024814) b!5788133))

(assert (= (and b!5788135 (not c!1024814)) b!5788139))

(assert (= (and b!5788139 c!1024811) b!5788140))

(assert (= (and b!5788139 (not c!1024811)) b!5788137))

(assert (= (and b!5788137 c!1024813) b!5788134))

(assert (= (and b!5788137 (not c!1024813)) b!5788136))

(assert (= (or b!5788140 b!5788134) bm!450713))

(assert (= (or b!5788140 b!5788134) bm!450714))

(assert (= (or b!5788133 bm!450713) bm!450711))

(assert (= (or b!5788133 bm!450714) bm!450712))

(assert (= (or b!5788130 bm!450712) bm!450715))

(assert (= (or b!5788130 b!5788133) bm!450710))

(declare-fun m!6732358 () Bool)

(assert (=> b!5788131 m!6732358))

(declare-fun m!6732360 () Bool)

(assert (=> bm!450711 m!6732360))

(declare-fun m!6732362 () Bool)

(assert (=> b!5788138 m!6732362))

(declare-fun m!6732364 () Bool)

(assert (=> bm!450715 m!6732364))

(declare-fun m!6732366 () Bool)

(assert (=> bm!450710 m!6732366))

(assert (=> bm!450607 d!1823585))

(declare-fun b!5788141 () Bool)

(declare-fun e!3554870 () (InoxSet Context!10366))

(declare-fun call!450723 () (InoxSet Context!10366))

(declare-fun call!450725 () (InoxSet Context!10366))

(assert (=> b!5788141 (= e!3554870 ((_ map or) call!450723 call!450725))))

(declare-fun b!5788142 () Bool)

(declare-fun e!3554873 () Bool)

(assert (=> b!5788142 (= e!3554873 (nullable!5831 (regOne!32110 (h!70020 (exprs!5683 (h!70022 zl!343))))))))

(declare-fun c!1024817 () Bool)

(declare-fun bm!450716 () Bool)

(declare-fun call!450724 () List!63696)

(assert (=> bm!450716 (= call!450723 (derivationStepZipperDown!1137 (ite c!1024817 (regOne!32111 (h!70020 (exprs!5683 (h!70022 zl!343)))) (regOne!32110 (h!70020 (exprs!5683 (h!70022 zl!343))))) (ite c!1024817 (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343)))) (Context!10367 call!450724)) (h!70021 s!2326)))))

(declare-fun c!1024816 () Bool)

(declare-fun bm!450717 () Bool)

(declare-fun c!1024819 () Bool)

(assert (=> bm!450717 (= call!450724 ($colon$colon!1786 (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343))))) (ite (or c!1024819 c!1024816) (regTwo!32110 (h!70020 (exprs!5683 (h!70022 zl!343)))) (h!70020 (exprs!5683 (h!70022 zl!343))))))))

(declare-fun b!5788143 () Bool)

(declare-fun e!3554869 () (InoxSet Context!10366))

(assert (=> b!5788143 (= e!3554869 e!3554870)))

(assert (=> b!5788143 (= c!1024817 ((_ is Union!15799) (h!70020 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun b!5788144 () Bool)

(declare-fun e!3554872 () (InoxSet Context!10366))

(declare-fun call!450721 () (InoxSet Context!10366))

(assert (=> b!5788144 (= e!3554872 ((_ map or) call!450723 call!450721))))

(declare-fun b!5788145 () Bool)

(declare-fun e!3554868 () (InoxSet Context!10366))

(declare-fun call!450722 () (InoxSet Context!10366))

(assert (=> b!5788145 (= e!3554868 call!450722)))

(declare-fun d!1823587 () Bool)

(declare-fun c!1024815 () Bool)

(assert (=> d!1823587 (= c!1024815 (and ((_ is ElementMatch!15799) (h!70020 (exprs!5683 (h!70022 zl!343)))) (= (c!1024501 (h!70020 (exprs!5683 (h!70022 zl!343)))) (h!70021 s!2326))))))

(assert (=> d!1823587 (= (derivationStepZipperDown!1137 (h!70020 (exprs!5683 (h!70022 zl!343))) (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343)))) (h!70021 s!2326)) e!3554869)))

(declare-fun b!5788146 () Bool)

(assert (=> b!5788146 (= c!1024819 e!3554873)))

(declare-fun res!2442349 () Bool)

(assert (=> b!5788146 (=> (not res!2442349) (not e!3554873))))

(assert (=> b!5788146 (= res!2442349 ((_ is Concat!24644) (h!70020 (exprs!5683 (h!70022 zl!343)))))))

(assert (=> b!5788146 (= e!3554870 e!3554872)))

(declare-fun bm!450718 () Bool)

(assert (=> bm!450718 (= call!450721 call!450725)))

(declare-fun b!5788147 () Bool)

(assert (=> b!5788147 (= e!3554868 ((as const (Array Context!10366 Bool)) false))))

(declare-fun b!5788148 () Bool)

(declare-fun c!1024818 () Bool)

(assert (=> b!5788148 (= c!1024818 ((_ is Star!15799) (h!70020 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun e!3554871 () (InoxSet Context!10366))

(assert (=> b!5788148 (= e!3554871 e!3554868)))

(declare-fun b!5788149 () Bool)

(assert (=> b!5788149 (= e!3554869 (store ((as const (Array Context!10366 Bool)) false) (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343)))) true))))

(declare-fun bm!450719 () Bool)

(declare-fun call!450726 () List!63696)

(assert (=> bm!450719 (= call!450726 call!450724)))

(declare-fun bm!450720 () Bool)

(assert (=> bm!450720 (= call!450722 call!450721)))

(declare-fun bm!450721 () Bool)

(assert (=> bm!450721 (= call!450725 (derivationStepZipperDown!1137 (ite c!1024817 (regTwo!32111 (h!70020 (exprs!5683 (h!70022 zl!343)))) (ite c!1024819 (regTwo!32110 (h!70020 (exprs!5683 (h!70022 zl!343)))) (ite c!1024816 (regOne!32110 (h!70020 (exprs!5683 (h!70022 zl!343)))) (reg!16128 (h!70020 (exprs!5683 (h!70022 zl!343))))))) (ite (or c!1024817 c!1024819) (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343)))) (Context!10367 call!450726)) (h!70021 s!2326)))))

(declare-fun b!5788150 () Bool)

(assert (=> b!5788150 (= e!3554872 e!3554871)))

(assert (=> b!5788150 (= c!1024816 ((_ is Concat!24644) (h!70020 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun b!5788151 () Bool)

(assert (=> b!5788151 (= e!3554871 call!450722)))

(assert (= (and d!1823587 c!1024815) b!5788149))

(assert (= (and d!1823587 (not c!1024815)) b!5788143))

(assert (= (and b!5788143 c!1024817) b!5788141))

(assert (= (and b!5788143 (not c!1024817)) b!5788146))

(assert (= (and b!5788146 res!2442349) b!5788142))

(assert (= (and b!5788146 c!1024819) b!5788144))

(assert (= (and b!5788146 (not c!1024819)) b!5788150))

(assert (= (and b!5788150 c!1024816) b!5788151))

(assert (= (and b!5788150 (not c!1024816)) b!5788148))

(assert (= (and b!5788148 c!1024818) b!5788145))

(assert (= (and b!5788148 (not c!1024818)) b!5788147))

(assert (= (or b!5788151 b!5788145) bm!450719))

(assert (= (or b!5788151 b!5788145) bm!450720))

(assert (= (or b!5788144 bm!450719) bm!450717))

(assert (= (or b!5788144 bm!450720) bm!450718))

(assert (= (or b!5788141 bm!450718) bm!450721))

(assert (= (or b!5788141 b!5788144) bm!450716))

(declare-fun m!6732368 () Bool)

(assert (=> b!5788142 m!6732368))

(declare-fun m!6732370 () Bool)

(assert (=> bm!450717 m!6732370))

(declare-fun m!6732372 () Bool)

(assert (=> b!5788149 m!6732372))

(declare-fun m!6732374 () Bool)

(assert (=> bm!450721 m!6732374))

(declare-fun m!6732376 () Bool)

(assert (=> bm!450716 m!6732376))

(assert (=> bm!450585 d!1823587))

(declare-fun d!1823589 () Bool)

(declare-fun res!2442350 () Bool)

(declare-fun e!3554874 () Bool)

(assert (=> d!1823589 (=> res!2442350 e!3554874)))

(assert (=> d!1823589 (= res!2442350 ((_ is Nil!63572) lt!2296628))))

(assert (=> d!1823589 (= (forall!14913 lt!2296628 lambda!315489) e!3554874)))

(declare-fun b!5788152 () Bool)

(declare-fun e!3554875 () Bool)

(assert (=> b!5788152 (= e!3554874 e!3554875)))

(declare-fun res!2442351 () Bool)

(assert (=> b!5788152 (=> (not res!2442351) (not e!3554875))))

(assert (=> b!5788152 (= res!2442351 (dynLambda!24890 lambda!315489 (h!70020 lt!2296628)))))

(declare-fun b!5788153 () Bool)

(assert (=> b!5788153 (= e!3554875 (forall!14913 (t!377037 lt!2296628) lambda!315489))))

(assert (= (and d!1823589 (not res!2442350)) b!5788152))

(assert (= (and b!5788152 res!2442351) b!5788153))

(declare-fun b_lambda!218205 () Bool)

(assert (=> (not b_lambda!218205) (not b!5788152)))

(declare-fun m!6732378 () Bool)

(assert (=> b!5788152 m!6732378))

(declare-fun m!6732380 () Bool)

(assert (=> b!5788153 m!6732380))

(assert (=> d!1823253 d!1823589))

(assert (=> b!5787076 d!1823491))

(assert (=> b!5787324 d!1823225))

(declare-fun d!1823591 () Bool)

(assert (=> d!1823591 (= (isEmpty!35479 (tail!11318 (exprs!5683 (h!70022 zl!343)))) ((_ is Nil!63572) (tail!11318 (exprs!5683 (h!70022 zl!343)))))))

(assert (=> b!5787388 d!1823591))

(declare-fun d!1823593 () Bool)

(assert (=> d!1823593 (= (tail!11318 (exprs!5683 (h!70022 zl!343))) (t!377037 (exprs!5683 (h!70022 zl!343))))))

(assert (=> b!5787388 d!1823593))

(assert (=> d!1823239 d!1823225))

(assert (=> d!1823239 d!1823211))

(declare-fun d!1823595 () Bool)

(assert (=> d!1823595 (= (matchR!7984 r!7292 s!2326) (matchRSpec!2902 r!7292 s!2326))))

(assert (=> d!1823595 true))

(declare-fun _$88!4100 () Unit!156858)

(assert (=> d!1823595 (= (choose!43940 r!7292 s!2326) _$88!4100)))

(declare-fun bs!1366548 () Bool)

(assert (= bs!1366548 d!1823595))

(assert (=> bs!1366548 m!6731460))

(assert (=> bs!1366548 m!6731458))

(assert (=> d!1823239 d!1823595))

(assert (=> d!1823239 d!1823307))

(declare-fun d!1823597 () Bool)

(assert (=> d!1823597 true))

(assert (=> d!1823597 true))

(declare-fun res!2442352 () Bool)

(assert (=> d!1823597 (= (choose!43945 lambda!315445) res!2442352)))

(assert (=> d!1823297 d!1823597))

(declare-fun b!5788154 () Bool)

(declare-fun e!3554877 () (InoxSet Context!10366))

(assert (=> b!5788154 (= e!3554877 ((as const (Array Context!10366 Bool)) false))))

(declare-fun d!1823599 () Bool)

(declare-fun c!1024821 () Bool)

(declare-fun e!3554876 () Bool)

(assert (=> d!1823599 (= c!1024821 e!3554876)))

(declare-fun res!2442353 () Bool)

(assert (=> d!1823599 (=> (not res!2442353) (not e!3554876))))

(assert (=> d!1823599 (= res!2442353 ((_ is Cons!63572) (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))))))))

(declare-fun e!3554878 () (InoxSet Context!10366))

(assert (=> d!1823599 (= (derivationStepZipperUp!1063 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))) (h!70021 s!2326)) e!3554878)))

(declare-fun bm!450722 () Bool)

(declare-fun call!450727 () (InoxSet Context!10366))

(assert (=> bm!450722 (= call!450727 (derivationStepZipperDown!1137 (h!70020 (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))))) (Context!10367 (t!377037 (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))))))) (h!70021 s!2326)))))

(declare-fun b!5788155 () Bool)

(assert (=> b!5788155 (= e!3554878 ((_ map or) call!450727 (derivationStepZipperUp!1063 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))))))) (h!70021 s!2326))))))

(declare-fun b!5788156 () Bool)

(assert (=> b!5788156 (= e!3554878 e!3554877)))

(declare-fun c!1024820 () Bool)

(assert (=> b!5788156 (= c!1024820 ((_ is Cons!63572) (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572))))))))))

(declare-fun b!5788157 () Bool)

(assert (=> b!5788157 (= e!3554876 (nullable!5831 (h!70020 (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (Cons!63572 r!7292 Nil!63572)))))))))))

(declare-fun b!5788158 () Bool)

(assert (=> b!5788158 (= e!3554877 call!450727)))

(assert (= (and d!1823599 res!2442353) b!5788157))

(assert (= (and d!1823599 c!1024821) b!5788155))

(assert (= (and d!1823599 (not c!1024821)) b!5788156))

(assert (= (and b!5788156 c!1024820) b!5788158))

(assert (= (and b!5788156 (not c!1024820)) b!5788154))

(assert (= (or b!5788155 b!5788158) bm!450722))

(declare-fun m!6732382 () Bool)

(assert (=> bm!450722 m!6732382))

(declare-fun m!6732384 () Bool)

(assert (=> b!5788155 m!6732384))

(declare-fun m!6732386 () Bool)

(assert (=> b!5788157 m!6732386))

(assert (=> b!5787423 d!1823599))

(declare-fun d!1823601 () Bool)

(assert (=> d!1823601 (= (Exists!2899 lambda!315513) (choose!43945 lambda!315513))))

(declare-fun bs!1366549 () Bool)

(assert (= bs!1366549 d!1823601))

(declare-fun m!6732388 () Bool)

(assert (=> bs!1366549 m!6732388))

(assert (=> d!1823303 d!1823601))

(assert (=> d!1823303 d!1823287))

(declare-fun bs!1366550 () Bool)

(declare-fun d!1823603 () Bool)

(assert (= bs!1366550 (and d!1823603 b!5786794)))

(declare-fun lambda!315566 () Int)

(assert (=> bs!1366550 (not (= lambda!315566 lambda!315445))))

(declare-fun bs!1366551 () Bool)

(assert (= bs!1366551 (and d!1823603 d!1823413)))

(assert (=> bs!1366551 (= lambda!315566 lambda!315549)))

(declare-fun bs!1366552 () Bool)

(assert (= bs!1366552 (and d!1823603 d!1823299)))

(assert (=> bs!1366552 (= (= r!7292 (Star!15799 (reg!16128 r!7292))) (= lambda!315566 lambda!315509))))

(declare-fun bs!1366553 () Bool)

(assert (= bs!1366553 (and d!1823603 d!1823393)))

(assert (=> bs!1366553 (not (= lambda!315566 lambda!315541))))

(declare-fun bs!1366554 () Bool)

(assert (= bs!1366554 (and d!1823603 b!5787903)))

(assert (=> bs!1366554 (not (= lambda!315566 lambda!315556))))

(assert (=> bs!1366551 (not (= lambda!315566 lambda!315550))))

(assert (=> bs!1366552 (not (= lambda!315566 lambda!315510))))

(assert (=> bs!1366553 (= (= r!7292 (Star!15799 (reg!16128 r!7292))) (= lambda!315566 lambda!315538))))

(assert (=> bs!1366550 (not (= lambda!315566 lambda!315444))))

(declare-fun bs!1366555 () Bool)

(assert (= bs!1366555 (and d!1823603 d!1823289)))

(assert (=> bs!1366555 (not (= lambda!315566 lambda!315504))))

(declare-fun bs!1366556 () Bool)

(assert (= bs!1366556 (and d!1823603 d!1823303)))

(assert (=> bs!1366556 (= lambda!315566 lambda!315513)))

(declare-fun bs!1366557 () Bool)

(assert (= bs!1366557 (and d!1823603 b!5786985)))

(assert (=> bs!1366557 (not (= lambda!315566 lambda!315464))))

(assert (=> bs!1366550 (= lambda!315566 lambda!315443)))

(declare-fun bs!1366558 () Bool)

(assert (= bs!1366558 (and d!1823603 b!5786979)))

(assert (=> bs!1366558 (not (= lambda!315566 lambda!315465))))

(assert (=> bs!1366555 (= lambda!315566 lambda!315503)))

(declare-fun bs!1366559 () Bool)

(assert (= bs!1366559 (and d!1823603 b!5787897)))

(assert (=> bs!1366559 (not (= lambda!315566 lambda!315558))))

(assert (=> d!1823603 true))

(assert (=> d!1823603 true))

(assert (=> d!1823603 true))

(assert (=> d!1823603 (= (isDefined!12511 (findConcatSeparation!2222 (reg!16128 r!7292) r!7292 Nil!63573 s!2326 s!2326)) (Exists!2899 lambda!315566))))

(assert (=> d!1823603 true))

(declare-fun _$89!1906 () Unit!156858)

(assert (=> d!1823603 (= (choose!43947 (reg!16128 r!7292) r!7292 s!2326) _$89!1906)))

(declare-fun bs!1366560 () Bool)

(assert (= bs!1366560 d!1823603))

(assert (=> bs!1366560 m!6731426))

(assert (=> bs!1366560 m!6731426))

(assert (=> bs!1366560 m!6731428))

(declare-fun m!6732390 () Bool)

(assert (=> bs!1366560 m!6732390))

(assert (=> d!1823303 d!1823603))

(assert (=> d!1823303 d!1823301))

(assert (=> d!1823303 d!1823399))

(declare-fun d!1823605 () Bool)

(assert (=> d!1823605 (= (Exists!2899 (ite c!1024549 lambda!315464 lambda!315465)) (choose!43945 (ite c!1024549 lambda!315464 lambda!315465)))))

(declare-fun bs!1366561 () Bool)

(assert (= bs!1366561 d!1823605))

(declare-fun m!6732392 () Bool)

(assert (=> bs!1366561 m!6732392))

(assert (=> bm!450556 d!1823605))

(declare-fun d!1823607 () Bool)

(assert (=> d!1823607 true))

(assert (=> d!1823607 true))

(declare-fun res!2442358 () Bool)

(assert (=> d!1823607 (= (choose!43945 lambda!315444) res!2442358)))

(assert (=> d!1823291 d!1823607))

(declare-fun b!5788163 () Bool)

(declare-fun e!3554884 () Bool)

(assert (=> b!5788163 (= e!3554884 (nullable!5831 (derivativeStep!4574 r!7292 (head!12222 s!2326))))))

(declare-fun d!1823609 () Bool)

(declare-fun e!3554886 () Bool)

(assert (=> d!1823609 e!3554886))

(declare-fun c!1024824 () Bool)

(assert (=> d!1823609 (= c!1024824 ((_ is EmptyExpr!15799) (derivativeStep!4574 r!7292 (head!12222 s!2326))))))

(declare-fun lt!2296699 () Bool)

(assert (=> d!1823609 (= lt!2296699 e!3554884)))

(declare-fun c!1024822 () Bool)

(assert (=> d!1823609 (= c!1024822 (isEmpty!35476 (tail!11317 s!2326)))))

(assert (=> d!1823609 (validRegex!7535 (derivativeStep!4574 r!7292 (head!12222 s!2326)))))

(assert (=> d!1823609 (= (matchR!7984 (derivativeStep!4574 r!7292 (head!12222 s!2326)) (tail!11317 s!2326)) lt!2296699)))

(declare-fun b!5788164 () Bool)

(declare-fun res!2442362 () Bool)

(declare-fun e!3554881 () Bool)

(assert (=> b!5788164 (=> res!2442362 e!3554881)))

(declare-fun e!3554882 () Bool)

(assert (=> b!5788164 (= res!2442362 e!3554882)))

(declare-fun res!2442359 () Bool)

(assert (=> b!5788164 (=> (not res!2442359) (not e!3554882))))

(assert (=> b!5788164 (= res!2442359 lt!2296699)))

(declare-fun bm!450723 () Bool)

(declare-fun call!450728 () Bool)

(assert (=> bm!450723 (= call!450728 (isEmpty!35476 (tail!11317 s!2326)))))

(declare-fun b!5788165 () Bool)

(declare-fun res!2442364 () Bool)

(declare-fun e!3554885 () Bool)

(assert (=> b!5788165 (=> res!2442364 e!3554885)))

(assert (=> b!5788165 (= res!2442364 (not (isEmpty!35476 (tail!11317 (tail!11317 s!2326)))))))

(declare-fun b!5788166 () Bool)

(declare-fun e!3554887 () Bool)

(assert (=> b!5788166 (= e!3554887 (not lt!2296699))))

(declare-fun b!5788167 () Bool)

(assert (=> b!5788167 (= e!3554885 (not (= (head!12222 (tail!11317 s!2326)) (c!1024501 (derivativeStep!4574 r!7292 (head!12222 s!2326))))))))

(declare-fun b!5788168 () Bool)

(declare-fun res!2442361 () Bool)

(assert (=> b!5788168 (=> res!2442361 e!3554881)))

(assert (=> b!5788168 (= res!2442361 (not ((_ is ElementMatch!15799) (derivativeStep!4574 r!7292 (head!12222 s!2326)))))))

(assert (=> b!5788168 (= e!3554887 e!3554881)))

(declare-fun b!5788169 () Bool)

(declare-fun res!2442365 () Bool)

(assert (=> b!5788169 (=> (not res!2442365) (not e!3554882))))

(assert (=> b!5788169 (= res!2442365 (not call!450728))))

(declare-fun b!5788170 () Bool)

(assert (=> b!5788170 (= e!3554882 (= (head!12222 (tail!11317 s!2326)) (c!1024501 (derivativeStep!4574 r!7292 (head!12222 s!2326)))))))

(declare-fun b!5788171 () Bool)

(assert (=> b!5788171 (= e!3554884 (matchR!7984 (derivativeStep!4574 (derivativeStep!4574 r!7292 (head!12222 s!2326)) (head!12222 (tail!11317 s!2326))) (tail!11317 (tail!11317 s!2326))))))

(declare-fun b!5788172 () Bool)

(declare-fun e!3554883 () Bool)

(assert (=> b!5788172 (= e!3554881 e!3554883)))

(declare-fun res!2442363 () Bool)

(assert (=> b!5788172 (=> (not res!2442363) (not e!3554883))))

(assert (=> b!5788172 (= res!2442363 (not lt!2296699))))

(declare-fun b!5788173 () Bool)

(assert (=> b!5788173 (= e!3554886 e!3554887)))

(declare-fun c!1024823 () Bool)

(assert (=> b!5788173 (= c!1024823 ((_ is EmptyLang!15799) (derivativeStep!4574 r!7292 (head!12222 s!2326))))))

(declare-fun b!5788174 () Bool)

(declare-fun res!2442360 () Bool)

(assert (=> b!5788174 (=> (not res!2442360) (not e!3554882))))

(assert (=> b!5788174 (= res!2442360 (isEmpty!35476 (tail!11317 (tail!11317 s!2326))))))

(declare-fun b!5788175 () Bool)

(assert (=> b!5788175 (= e!3554883 e!3554885)))

(declare-fun res!2442366 () Bool)

(assert (=> b!5788175 (=> res!2442366 e!3554885)))

(assert (=> b!5788175 (= res!2442366 call!450728)))

(declare-fun b!5788176 () Bool)

(assert (=> b!5788176 (= e!3554886 (= lt!2296699 call!450728))))

(assert (= (and d!1823609 c!1024822) b!5788163))

(assert (= (and d!1823609 (not c!1024822)) b!5788171))

(assert (= (and d!1823609 c!1024824) b!5788176))

(assert (= (and d!1823609 (not c!1024824)) b!5788173))

(assert (= (and b!5788173 c!1024823) b!5788166))

(assert (= (and b!5788173 (not c!1024823)) b!5788168))

(assert (= (and b!5788168 (not res!2442361)) b!5788164))

(assert (= (and b!5788164 res!2442359) b!5788169))

(assert (= (and b!5788169 res!2442365) b!5788174))

(assert (= (and b!5788174 res!2442360) b!5788170))

(assert (= (and b!5788164 (not res!2442362)) b!5788172))

(assert (= (and b!5788172 res!2442363) b!5788175))

(assert (= (and b!5788175 (not res!2442366)) b!5788165))

(assert (= (and b!5788165 (not res!2442364)) b!5788167))

(assert (= (or b!5788176 b!5788175 b!5788169) bm!450723))

(assert (=> b!5788163 m!6731566))

(declare-fun m!6732394 () Bool)

(assert (=> b!5788163 m!6732394))

(assert (=> b!5788167 m!6731562))

(declare-fun m!6732396 () Bool)

(assert (=> b!5788167 m!6732396))

(assert (=> b!5788165 m!6731562))

(declare-fun m!6732398 () Bool)

(assert (=> b!5788165 m!6732398))

(assert (=> b!5788165 m!6732398))

(declare-fun m!6732400 () Bool)

(assert (=> b!5788165 m!6732400))

(assert (=> b!5788174 m!6731562))

(assert (=> b!5788174 m!6732398))

(assert (=> b!5788174 m!6732398))

(assert (=> b!5788174 m!6732400))

(assert (=> d!1823609 m!6731562))

(assert (=> d!1823609 m!6731564))

(assert (=> d!1823609 m!6731566))

(declare-fun m!6732402 () Bool)

(assert (=> d!1823609 m!6732402))

(assert (=> b!5788171 m!6731562))

(assert (=> b!5788171 m!6732396))

(assert (=> b!5788171 m!6731566))

(assert (=> b!5788171 m!6732396))

(declare-fun m!6732404 () Bool)

(assert (=> b!5788171 m!6732404))

(assert (=> b!5788171 m!6731562))

(assert (=> b!5788171 m!6732398))

(assert (=> b!5788171 m!6732404))

(assert (=> b!5788171 m!6732398))

(declare-fun m!6732406 () Bool)

(assert (=> b!5788171 m!6732406))

(assert (=> b!5788170 m!6731562))

(assert (=> b!5788170 m!6732396))

(assert (=> bm!450723 m!6731562))

(assert (=> bm!450723 m!6731564))

(assert (=> b!5787080 d!1823609))

(declare-fun b!5788197 () Bool)

(declare-fun e!3554901 () Regex!15799)

(declare-fun e!3554899 () Regex!15799)

(assert (=> b!5788197 (= e!3554901 e!3554899)))

(declare-fun c!1024837 () Bool)

(assert (=> b!5788197 (= c!1024837 ((_ is ElementMatch!15799) r!7292))))

(declare-fun c!1024836 () Bool)

(declare-fun call!450737 () Regex!15799)

(declare-fun c!1024835 () Bool)

(declare-fun bm!450733 () Bool)

(assert (=> bm!450733 (= call!450737 (derivativeStep!4574 (ite c!1024835 (regTwo!32111 r!7292) (ite c!1024836 (reg!16128 r!7292) (regOne!32110 r!7292))) (head!12222 s!2326)))))

(declare-fun b!5788198 () Bool)

(assert (=> b!5788198 (= e!3554899 (ite (= (head!12222 s!2326) (c!1024501 r!7292)) EmptyExpr!15799 EmptyLang!15799))))

(declare-fun bm!450734 () Bool)

(declare-fun call!450739 () Regex!15799)

(declare-fun call!450738 () Regex!15799)

(assert (=> bm!450734 (= call!450739 call!450738)))

(declare-fun bm!450735 () Bool)

(declare-fun c!1024838 () Bool)

(assert (=> bm!450735 (= call!450738 (derivativeStep!4574 (ite c!1024835 (regOne!32111 r!7292) (ite c!1024838 (regTwo!32110 r!7292) (regOne!32110 r!7292))) (head!12222 s!2326)))))

(declare-fun b!5788199 () Bool)

(declare-fun e!3554898 () Regex!15799)

(assert (=> b!5788199 (= e!3554898 (Union!15799 call!450738 call!450737))))

(declare-fun b!5788200 () Bool)

(assert (=> b!5788200 (= e!3554901 EmptyLang!15799)))

(declare-fun b!5788201 () Bool)

(assert (=> b!5788201 (= c!1024838 (nullable!5831 (regOne!32110 r!7292)))))

(declare-fun e!3554902 () Regex!15799)

(declare-fun e!3554900 () Regex!15799)

(assert (=> b!5788201 (= e!3554902 e!3554900)))

(declare-fun b!5788202 () Bool)

(assert (=> b!5788202 (= e!3554898 e!3554902)))

(assert (=> b!5788202 (= c!1024836 ((_ is Star!15799) r!7292))))

(declare-fun d!1823611 () Bool)

(declare-fun lt!2296702 () Regex!15799)

(assert (=> d!1823611 (validRegex!7535 lt!2296702)))

(assert (=> d!1823611 (= lt!2296702 e!3554901)))

(declare-fun c!1024839 () Bool)

(assert (=> d!1823611 (= c!1024839 (or ((_ is EmptyExpr!15799) r!7292) ((_ is EmptyLang!15799) r!7292)))))

(assert (=> d!1823611 (validRegex!7535 r!7292)))

(assert (=> d!1823611 (= (derivativeStep!4574 r!7292 (head!12222 s!2326)) lt!2296702)))

(declare-fun bm!450732 () Bool)

(declare-fun call!450740 () Regex!15799)

(assert (=> bm!450732 (= call!450740 call!450737)))

(declare-fun b!5788203 () Bool)

(assert (=> b!5788203 (= c!1024835 ((_ is Union!15799) r!7292))))

(assert (=> b!5788203 (= e!3554899 e!3554898)))

(declare-fun b!5788204 () Bool)

(assert (=> b!5788204 (= e!3554900 (Union!15799 (Concat!24644 call!450739 (regTwo!32110 r!7292)) EmptyLang!15799))))

(declare-fun b!5788205 () Bool)

(assert (=> b!5788205 (= e!3554902 (Concat!24644 call!450740 r!7292))))

(declare-fun b!5788206 () Bool)

(assert (=> b!5788206 (= e!3554900 (Union!15799 (Concat!24644 call!450740 (regTwo!32110 r!7292)) call!450739))))

(assert (= (and d!1823611 c!1024839) b!5788200))

(assert (= (and d!1823611 (not c!1024839)) b!5788197))

(assert (= (and b!5788197 c!1024837) b!5788198))

(assert (= (and b!5788197 (not c!1024837)) b!5788203))

(assert (= (and b!5788203 c!1024835) b!5788199))

(assert (= (and b!5788203 (not c!1024835)) b!5788202))

(assert (= (and b!5788202 c!1024836) b!5788205))

(assert (= (and b!5788202 (not c!1024836)) b!5788201))

(assert (= (and b!5788201 c!1024838) b!5788206))

(assert (= (and b!5788201 (not c!1024838)) b!5788204))

(assert (= (or b!5788206 b!5788204) bm!450734))

(assert (= (or b!5788205 b!5788206) bm!450732))

(assert (= (or b!5788199 bm!450732) bm!450733))

(assert (= (or b!5788199 bm!450734) bm!450735))

(assert (=> bm!450733 m!6731560))

(declare-fun m!6732408 () Bool)

(assert (=> bm!450733 m!6732408))

(assert (=> bm!450735 m!6731560))

(declare-fun m!6732410 () Bool)

(assert (=> bm!450735 m!6732410))

(assert (=> b!5788201 m!6731780))

(declare-fun m!6732412 () Bool)

(assert (=> d!1823611 m!6732412))

(assert (=> d!1823611 m!6731442))

(assert (=> b!5787080 d!1823611))

(assert (=> b!5787080 d!1823491))

(assert (=> b!5787080 d!1823403))

(assert (=> d!1823225 d!1823293))

(assert (=> d!1823225 d!1823307))

(declare-fun b!5788207 () Bool)

(declare-fun e!3554904 () List!63697)

(assert (=> b!5788207 (= e!3554904 (t!377038 s!2326))))

(declare-fun b!5788210 () Bool)

(declare-fun e!3554903 () Bool)

(declare-fun lt!2296703 () List!63697)

(assert (=> b!5788210 (= e!3554903 (or (not (= (t!377038 s!2326) Nil!63573)) (= lt!2296703 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573)))))))

(declare-fun b!5788208 () Bool)

(assert (=> b!5788208 (= e!3554904 (Cons!63573 (h!70021 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573))) (++!14017 (t!377038 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573))) (t!377038 s!2326))))))

(declare-fun b!5788209 () Bool)

(declare-fun res!2442367 () Bool)

(assert (=> b!5788209 (=> (not res!2442367) (not e!3554903))))

(assert (=> b!5788209 (= res!2442367 (= (size!40093 lt!2296703) (+ (size!40093 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573))) (size!40093 (t!377038 s!2326)))))))

(declare-fun d!1823613 () Bool)

(assert (=> d!1823613 e!3554903))

(declare-fun res!2442368 () Bool)

(assert (=> d!1823613 (=> (not res!2442368) (not e!3554903))))

(assert (=> d!1823613 (= res!2442368 (= (content!11627 lt!2296703) ((_ map or) (content!11627 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573))) (content!11627 (t!377038 s!2326)))))))

(assert (=> d!1823613 (= lt!2296703 e!3554904)))

(declare-fun c!1024840 () Bool)

(assert (=> d!1823613 (= c!1024840 ((_ is Nil!63573) (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573))))))

(assert (=> d!1823613 (= (++!14017 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573)) (t!377038 s!2326)) lt!2296703)))

(assert (= (and d!1823613 c!1024840) b!5788207))

(assert (= (and d!1823613 (not c!1024840)) b!5788208))

(assert (= (and d!1823613 res!2442368) b!5788209))

(assert (= (and b!5788209 res!2442367) b!5788210))

(declare-fun m!6732414 () Bool)

(assert (=> b!5788208 m!6732414))

(declare-fun m!6732416 () Bool)

(assert (=> b!5788209 m!6732416))

(assert (=> b!5788209 m!6731734))

(declare-fun m!6732418 () Bool)

(assert (=> b!5788209 m!6732418))

(declare-fun m!6732420 () Bool)

(assert (=> b!5788209 m!6732420))

(declare-fun m!6732422 () Bool)

(assert (=> d!1823613 m!6732422))

(assert (=> d!1823613 m!6731734))

(declare-fun m!6732424 () Bool)

(assert (=> d!1823613 m!6732424))

(declare-fun m!6732426 () Bool)

(assert (=> d!1823613 m!6732426))

(assert (=> b!5787320 d!1823613))

(declare-fun b!5788211 () Bool)

(declare-fun e!3554906 () List!63697)

(assert (=> b!5788211 (= e!3554906 (Cons!63573 (h!70021 s!2326) Nil!63573))))

(declare-fun b!5788214 () Bool)

(declare-fun e!3554905 () Bool)

(declare-fun lt!2296704 () List!63697)

(assert (=> b!5788214 (= e!3554905 (or (not (= (Cons!63573 (h!70021 s!2326) Nil!63573) Nil!63573)) (= lt!2296704 Nil!63573)))))

(declare-fun b!5788212 () Bool)

(assert (=> b!5788212 (= e!3554906 (Cons!63573 (h!70021 Nil!63573) (++!14017 (t!377038 Nil!63573) (Cons!63573 (h!70021 s!2326) Nil!63573))))))

(declare-fun b!5788213 () Bool)

(declare-fun res!2442369 () Bool)

(assert (=> b!5788213 (=> (not res!2442369) (not e!3554905))))

(assert (=> b!5788213 (= res!2442369 (= (size!40093 lt!2296704) (+ (size!40093 Nil!63573) (size!40093 (Cons!63573 (h!70021 s!2326) Nil!63573)))))))

(declare-fun d!1823615 () Bool)

(assert (=> d!1823615 e!3554905))

(declare-fun res!2442370 () Bool)

(assert (=> d!1823615 (=> (not res!2442370) (not e!3554905))))

(assert (=> d!1823615 (= res!2442370 (= (content!11627 lt!2296704) ((_ map or) (content!11627 Nil!63573) (content!11627 (Cons!63573 (h!70021 s!2326) Nil!63573)))))))

(assert (=> d!1823615 (= lt!2296704 e!3554906)))

(declare-fun c!1024841 () Bool)

(assert (=> d!1823615 (= c!1024841 ((_ is Nil!63573) Nil!63573))))

(assert (=> d!1823615 (= (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573)) lt!2296704)))

(assert (= (and d!1823615 c!1024841) b!5788211))

(assert (= (and d!1823615 (not c!1024841)) b!5788212))

(assert (= (and d!1823615 res!2442370) b!5788213))

(assert (= (and b!5788213 res!2442369) b!5788214))

(declare-fun m!6732428 () Bool)

(assert (=> b!5788212 m!6732428))

(declare-fun m!6732430 () Bool)

(assert (=> b!5788213 m!6732430))

(declare-fun m!6732432 () Bool)

(assert (=> b!5788213 m!6732432))

(declare-fun m!6732434 () Bool)

(assert (=> b!5788213 m!6732434))

(declare-fun m!6732436 () Bool)

(assert (=> d!1823615 m!6732436))

(declare-fun m!6732438 () Bool)

(assert (=> d!1823615 m!6732438))

(declare-fun m!6732440 () Bool)

(assert (=> d!1823615 m!6732440))

(assert (=> b!5787320 d!1823615))

(declare-fun d!1823617 () Bool)

(assert (=> d!1823617 (= (++!14017 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573)) (t!377038 s!2326)) s!2326)))

(declare-fun lt!2296707 () Unit!156858)

(declare-fun choose!43949 (List!63697 C!31868 List!63697 List!63697) Unit!156858)

(assert (=> d!1823617 (= lt!2296707 (choose!43949 Nil!63573 (h!70021 s!2326) (t!377038 s!2326) s!2326))))

(assert (=> d!1823617 (= (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) (t!377038 s!2326))) s!2326)))

(assert (=> d!1823617 (= (lemmaMoveElementToOtherListKeepsConcatEq!2124 Nil!63573 (h!70021 s!2326) (t!377038 s!2326) s!2326) lt!2296707)))

(declare-fun bs!1366562 () Bool)

(assert (= bs!1366562 d!1823617))

(assert (=> bs!1366562 m!6731734))

(assert (=> bs!1366562 m!6731734))

(assert (=> bs!1366562 m!6731736))

(declare-fun m!6732442 () Bool)

(assert (=> bs!1366562 m!6732442))

(declare-fun m!6732444 () Bool)

(assert (=> bs!1366562 m!6732444))

(assert (=> b!5787320 d!1823617))

(declare-fun b!5788215 () Bool)

(declare-fun e!3554907 () Bool)

(declare-fun lt!2296708 () Option!15808)

(assert (=> b!5788215 (= e!3554907 (= (++!14017 (_1!36199 (get!21942 lt!2296708)) (_2!36199 (get!21942 lt!2296708))) s!2326))))

(declare-fun b!5788216 () Bool)

(declare-fun lt!2296710 () Unit!156858)

(declare-fun lt!2296709 () Unit!156858)

(assert (=> b!5788216 (= lt!2296710 lt!2296709)))

(assert (=> b!5788216 (= (++!14017 (++!14017 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573)) (Cons!63573 (h!70021 (t!377038 s!2326)) Nil!63573)) (t!377038 (t!377038 s!2326))) s!2326)))

(assert (=> b!5788216 (= lt!2296709 (lemmaMoveElementToOtherListKeepsConcatEq!2124 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573)) (h!70021 (t!377038 s!2326)) (t!377038 (t!377038 s!2326)) s!2326))))

(declare-fun e!3554909 () Option!15808)

(assert (=> b!5788216 (= e!3554909 (findConcatSeparation!2222 (reg!16128 r!7292) r!7292 (++!14017 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573)) (Cons!63573 (h!70021 (t!377038 s!2326)) Nil!63573)) (t!377038 (t!377038 s!2326)) s!2326))))

(declare-fun b!5788217 () Bool)

(declare-fun e!3554911 () Bool)

(assert (=> b!5788217 (= e!3554911 (not (isDefined!12511 lt!2296708)))))

(declare-fun b!5788218 () Bool)

(assert (=> b!5788218 (= e!3554909 None!15807)))

(declare-fun b!5788219 () Bool)

(declare-fun res!2442373 () Bool)

(assert (=> b!5788219 (=> (not res!2442373) (not e!3554907))))

(assert (=> b!5788219 (= res!2442373 (matchR!7984 (reg!16128 r!7292) (_1!36199 (get!21942 lt!2296708))))))

(declare-fun b!5788220 () Bool)

(declare-fun e!3554908 () Bool)

(assert (=> b!5788220 (= e!3554908 (matchR!7984 r!7292 (t!377038 s!2326)))))

(declare-fun b!5788221 () Bool)

(declare-fun e!3554910 () Option!15808)

(assert (=> b!5788221 (= e!3554910 e!3554909)))

(declare-fun c!1024843 () Bool)

(assert (=> b!5788221 (= c!1024843 ((_ is Nil!63573) (t!377038 s!2326)))))

(declare-fun b!5788222 () Bool)

(assert (=> b!5788222 (= e!3554910 (Some!15807 (tuple2!65793 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573)) (t!377038 s!2326))))))

(declare-fun b!5788223 () Bool)

(declare-fun res!2442374 () Bool)

(assert (=> b!5788223 (=> (not res!2442374) (not e!3554907))))

(assert (=> b!5788223 (= res!2442374 (matchR!7984 r!7292 (_2!36199 (get!21942 lt!2296708))))))

(declare-fun d!1823619 () Bool)

(assert (=> d!1823619 e!3554911))

(declare-fun res!2442372 () Bool)

(assert (=> d!1823619 (=> res!2442372 e!3554911)))

(assert (=> d!1823619 (= res!2442372 e!3554907)))

(declare-fun res!2442375 () Bool)

(assert (=> d!1823619 (=> (not res!2442375) (not e!3554907))))

(assert (=> d!1823619 (= res!2442375 (isDefined!12511 lt!2296708))))

(assert (=> d!1823619 (= lt!2296708 e!3554910)))

(declare-fun c!1024842 () Bool)

(assert (=> d!1823619 (= c!1024842 e!3554908)))

(declare-fun res!2442371 () Bool)

(assert (=> d!1823619 (=> (not res!2442371) (not e!3554908))))

(assert (=> d!1823619 (= res!2442371 (matchR!7984 (reg!16128 r!7292) (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573))))))

(assert (=> d!1823619 (validRegex!7535 (reg!16128 r!7292))))

(assert (=> d!1823619 (= (findConcatSeparation!2222 (reg!16128 r!7292) r!7292 (++!14017 Nil!63573 (Cons!63573 (h!70021 s!2326) Nil!63573)) (t!377038 s!2326) s!2326) lt!2296708)))

(assert (= (and d!1823619 res!2442371) b!5788220))

(assert (= (and d!1823619 c!1024842) b!5788222))

(assert (= (and d!1823619 (not c!1024842)) b!5788221))

(assert (= (and b!5788221 c!1024843) b!5788218))

(assert (= (and b!5788221 (not c!1024843)) b!5788216))

(assert (= (and d!1823619 res!2442375) b!5788219))

(assert (= (and b!5788219 res!2442373) b!5788223))

(assert (= (and b!5788223 res!2442374) b!5788215))

(assert (= (and d!1823619 (not res!2442372)) b!5788217))

(declare-fun m!6732446 () Bool)

(assert (=> b!5788223 m!6732446))

(declare-fun m!6732448 () Bool)

(assert (=> b!5788223 m!6732448))

(declare-fun m!6732450 () Bool)

(assert (=> b!5788217 m!6732450))

(assert (=> d!1823619 m!6732450))

(assert (=> d!1823619 m!6731734))

(declare-fun m!6732452 () Bool)

(assert (=> d!1823619 m!6732452))

(assert (=> d!1823619 m!6731712))

(assert (=> b!5788216 m!6731734))

(declare-fun m!6732454 () Bool)

(assert (=> b!5788216 m!6732454))

(assert (=> b!5788216 m!6732454))

(declare-fun m!6732456 () Bool)

(assert (=> b!5788216 m!6732456))

(assert (=> b!5788216 m!6731734))

(declare-fun m!6732458 () Bool)

(assert (=> b!5788216 m!6732458))

(assert (=> b!5788216 m!6732454))

(declare-fun m!6732460 () Bool)

(assert (=> b!5788216 m!6732460))

(declare-fun m!6732462 () Bool)

(assert (=> b!5788220 m!6732462))

(assert (=> b!5788219 m!6732446))

(declare-fun m!6732464 () Bool)

(assert (=> b!5788219 m!6732464))

(assert (=> b!5788215 m!6732446))

(declare-fun m!6732466 () Bool)

(assert (=> b!5788215 m!6732466))

(assert (=> b!5787320 d!1823619))

(assert (=> b!5787074 d!1823401))

(assert (=> b!5787074 d!1823403))

(declare-fun d!1823621 () Bool)

(assert (=> d!1823621 (= (nullable!5831 (reg!16128 r!7292)) (nullableFct!1863 (reg!16128 r!7292)))))

(declare-fun bs!1366563 () Bool)

(assert (= bs!1366563 d!1823621))

(declare-fun m!6732468 () Bool)

(assert (=> bs!1366563 m!6732468))

(assert (=> b!5787356 d!1823621))

(declare-fun d!1823623 () Bool)

(assert (=> d!1823623 (= (flatMap!1406 z!1189 lambda!315495) (choose!43942 z!1189 lambda!315495))))

(declare-fun bs!1366564 () Bool)

(assert (= bs!1366564 d!1823623))

(declare-fun m!6732470 () Bool)

(assert (=> bs!1366564 m!6732470))

(assert (=> d!1823275 d!1823623))

(declare-fun d!1823625 () Bool)

(declare-fun res!2442376 () Bool)

(declare-fun e!3554912 () Bool)

(assert (=> d!1823625 (=> res!2442376 e!3554912)))

(assert (=> d!1823625 (= res!2442376 ((_ is Nil!63572) (exprs!5683 setElem!38880)))))

(assert (=> d!1823625 (= (forall!14913 (exprs!5683 setElem!38880) lambda!315516) e!3554912)))

(declare-fun b!5788224 () Bool)

(declare-fun e!3554913 () Bool)

(assert (=> b!5788224 (= e!3554912 e!3554913)))

(declare-fun res!2442377 () Bool)

(assert (=> b!5788224 (=> (not res!2442377) (not e!3554913))))

(assert (=> b!5788224 (= res!2442377 (dynLambda!24890 lambda!315516 (h!70020 (exprs!5683 setElem!38880))))))

(declare-fun b!5788225 () Bool)

(assert (=> b!5788225 (= e!3554913 (forall!14913 (t!377037 (exprs!5683 setElem!38880)) lambda!315516))))

(assert (= (and d!1823625 (not res!2442376)) b!5788224))

(assert (= (and b!5788224 res!2442377) b!5788225))

(declare-fun b_lambda!218207 () Bool)

(assert (=> (not b_lambda!218207) (not b!5788224)))

(declare-fun m!6732472 () Bool)

(assert (=> b!5788224 m!6732472))

(declare-fun m!6732474 () Bool)

(assert (=> b!5788225 m!6732474))

(assert (=> d!1823305 d!1823625))

(declare-fun b!5788226 () Bool)

(declare-fun e!3554915 () (InoxSet Context!10366))

(assert (=> b!5788226 (= e!3554915 ((as const (Array Context!10366 Bool)) false))))

(declare-fun d!1823627 () Bool)

(declare-fun c!1024845 () Bool)

(declare-fun e!3554914 () Bool)

(assert (=> d!1823627 (= c!1024845 e!3554914)))

(declare-fun res!2442378 () Bool)

(assert (=> d!1823627 (=> (not res!2442378) (not e!3554914))))

(assert (=> d!1823627 (= res!2442378 ((_ is Cons!63572) (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343)))))))))

(declare-fun e!3554916 () (InoxSet Context!10366))

(assert (=> d!1823627 (= (derivationStepZipperUp!1063 (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343)))) (h!70021 s!2326)) e!3554916)))

(declare-fun bm!450736 () Bool)

(declare-fun call!450741 () (InoxSet Context!10366))

(assert (=> bm!450736 (= call!450741 (derivationStepZipperDown!1137 (h!70020 (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343)))))) (Context!10367 (t!377037 (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343))))))) (h!70021 s!2326)))))

(declare-fun b!5788227 () Bool)

(assert (=> b!5788227 (= e!3554916 ((_ map or) call!450741 (derivationStepZipperUp!1063 (Context!10367 (t!377037 (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343))))))) (h!70021 s!2326))))))

(declare-fun b!5788228 () Bool)

(assert (=> b!5788228 (= e!3554916 e!3554915)))

(declare-fun c!1024844 () Bool)

(assert (=> b!5788228 (= c!1024844 ((_ is Cons!63572) (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343)))))))))

(declare-fun b!5788229 () Bool)

(assert (=> b!5788229 (= e!3554914 (nullable!5831 (h!70020 (exprs!5683 (Context!10367 (t!377037 (exprs!5683 (h!70022 zl!343))))))))))

(declare-fun b!5788230 () Bool)

(assert (=> b!5788230 (= e!3554915 call!450741)))

(assert (= (and d!1823627 res!2442378) b!5788229))

(assert (= (and d!1823627 c!1024845) b!5788227))

(assert (= (and d!1823627 (not c!1024845)) b!5788228))

(assert (= (and b!5788228 c!1024844) b!5788230))

(assert (= (and b!5788228 (not c!1024844)) b!5788226))

(assert (= (or b!5788227 b!5788230) bm!450736))

(declare-fun m!6732476 () Bool)

(assert (=> bm!450736 m!6732476))

(declare-fun m!6732478 () Bool)

(assert (=> b!5788227 m!6732478))

(declare-fun m!6732480 () Bool)

(assert (=> b!5788229 m!6732480))

(assert (=> b!5787279 d!1823627))

(declare-fun d!1823629 () Bool)

(assert (=> d!1823629 (= (isEmpty!35479 (t!377037 (unfocusZipperList!1227 zl!343))) ((_ is Nil!63572) (t!377037 (unfocusZipperList!1227 zl!343))))))

(assert (=> b!5787149 d!1823629))

(declare-fun d!1823631 () Bool)

(assert (=> d!1823631 (= ($colon$colon!1786 (exprs!5683 (Context!10367 Nil!63572)) (ite (or c!1024669 c!1024666) (regTwo!32110 r!7292) r!7292)) (Cons!63572 (ite (or c!1024669 c!1024666) (regTwo!32110 r!7292) r!7292) (exprs!5683 (Context!10367 Nil!63572))))))

(assert (=> bm!450608 d!1823631))

(declare-fun d!1823633 () Bool)

(assert (=> d!1823633 (= (isEmpty!35479 (unfocusZipperList!1227 zl!343)) ((_ is Nil!63572) (unfocusZipperList!1227 zl!343)))))

(assert (=> b!5787151 d!1823633))

(declare-fun b!5788231 () Bool)

(declare-fun res!2442383 () Bool)

(declare-fun e!3554922 () Bool)

(assert (=> b!5788231 (=> res!2442383 e!3554922)))

(assert (=> b!5788231 (= res!2442383 (not ((_ is Concat!24644) (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292))))))))

(declare-fun e!3554920 () Bool)

(assert (=> b!5788231 (= e!3554920 e!3554922)))

(declare-fun b!5788232 () Bool)

(declare-fun e!3554923 () Bool)

(assert (=> b!5788232 (= e!3554922 e!3554923)))

(declare-fun res!2442380 () Bool)

(assert (=> b!5788232 (=> (not res!2442380) (not e!3554923))))

(declare-fun call!450742 () Bool)

(assert (=> b!5788232 (= res!2442380 call!450742)))

(declare-fun b!5788233 () Bool)

(declare-fun call!450743 () Bool)

(assert (=> b!5788233 (= e!3554923 call!450743)))

(declare-fun call!450744 () Bool)

(declare-fun bm!450737 () Bool)

(declare-fun c!1024846 () Bool)

(declare-fun c!1024847 () Bool)

(assert (=> bm!450737 (= call!450744 (validRegex!7535 (ite c!1024847 (reg!16128 (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292)))) (ite c!1024846 (regOne!32111 (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292)))) (regOne!32110 (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292))))))))))

(declare-fun bm!450738 () Bool)

(assert (=> bm!450738 (= call!450742 call!450744)))

(declare-fun b!5788234 () Bool)

(declare-fun e!3554919 () Bool)

(declare-fun e!3554921 () Bool)

(assert (=> b!5788234 (= e!3554919 e!3554921)))

(assert (=> b!5788234 (= c!1024847 ((_ is Star!15799) (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292)))))))

(declare-fun d!1823635 () Bool)

(declare-fun res!2442382 () Bool)

(assert (=> d!1823635 (=> res!2442382 e!3554919)))

(assert (=> d!1823635 (= res!2442382 ((_ is ElementMatch!15799) (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292)))))))

(assert (=> d!1823635 (= (validRegex!7535 (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292)))) e!3554919)))

(declare-fun b!5788235 () Bool)

(declare-fun e!3554917 () Bool)

(assert (=> b!5788235 (= e!3554917 call!450744)))

(declare-fun b!5788236 () Bool)

(assert (=> b!5788236 (= e!3554921 e!3554920)))

(assert (=> b!5788236 (= c!1024846 ((_ is Union!15799) (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292)))))))

(declare-fun bm!450739 () Bool)

(assert (=> bm!450739 (= call!450743 (validRegex!7535 (ite c!1024846 (regTwo!32111 (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292)))) (regTwo!32110 (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292)))))))))

(declare-fun b!5788237 () Bool)

(assert (=> b!5788237 (= e!3554921 e!3554917)))

(declare-fun res!2442381 () Bool)

(assert (=> b!5788237 (= res!2442381 (not (nullable!5831 (reg!16128 (ite c!1024642 (reg!16128 r!7292) (ite c!1024641 (regOne!32111 r!7292) (regOne!32110 r!7292)))))))))

(assert (=> b!5788237 (=> (not res!2442381) (not e!3554917))))

(declare-fun b!5788238 () Bool)

(declare-fun res!2442379 () Bool)

(declare-fun e!3554918 () Bool)

(assert (=> b!5788238 (=> (not res!2442379) (not e!3554918))))

(assert (=> b!5788238 (= res!2442379 call!450742)))

(assert (=> b!5788238 (= e!3554920 e!3554918)))

(declare-fun b!5788239 () Bool)

(assert (=> b!5788239 (= e!3554918 call!450743)))

(assert (= (and d!1823635 (not res!2442382)) b!5788234))

(assert (= (and b!5788234 c!1024847) b!5788237))

(assert (= (and b!5788234 (not c!1024847)) b!5788236))

(assert (= (and b!5788237 res!2442381) b!5788235))

(assert (= (and b!5788236 c!1024846) b!5788238))

(assert (= (and b!5788236 (not c!1024846)) b!5788231))

(assert (= (and b!5788238 res!2442379) b!5788239))

(assert (= (and b!5788231 (not res!2442383)) b!5788232))

(assert (= (and b!5788232 res!2442380) b!5788233))

(assert (= (or b!5788239 b!5788233) bm!450739))

(assert (= (or b!5788238 b!5788232) bm!450738))

(assert (= (or b!5788235 bm!450738) bm!450737))

(declare-fun m!6732482 () Bool)

(assert (=> bm!450737 m!6732482))

(declare-fun m!6732484 () Bool)

(assert (=> bm!450739 m!6732484))

(declare-fun m!6732486 () Bool)

(assert (=> b!5788237 m!6732486))

(assert (=> bm!450592 d!1823635))

(declare-fun bs!1366565 () Bool)

(declare-fun b!5788248 () Bool)

(assert (= bs!1366565 (and b!5788248 b!5786794)))

(declare-fun lambda!315567 () Int)

(assert (=> bs!1366565 (not (= lambda!315567 lambda!315445))))

(declare-fun bs!1366566 () Bool)

(assert (= bs!1366566 (and b!5788248 d!1823603)))

(assert (=> bs!1366566 (not (= lambda!315567 lambda!315566))))

(declare-fun bs!1366567 () Bool)

(assert (= bs!1366567 (and b!5788248 d!1823413)))

(assert (=> bs!1366567 (not (= lambda!315567 lambda!315549))))

(declare-fun bs!1366568 () Bool)

(assert (= bs!1366568 (and b!5788248 d!1823299)))

(assert (=> bs!1366568 (not (= lambda!315567 lambda!315509))))

(declare-fun bs!1366569 () Bool)

(assert (= bs!1366569 (and b!5788248 d!1823393)))

(assert (=> bs!1366569 (= (and (= (reg!16128 (regTwo!32111 r!7292)) (reg!16128 r!7292)) (= (regTwo!32111 r!7292) (Star!15799 (reg!16128 r!7292)))) (= lambda!315567 lambda!315541))))

(declare-fun bs!1366570 () Bool)

(assert (= bs!1366570 (and b!5788248 b!5787903)))

(assert (=> bs!1366570 (= (and (= (reg!16128 (regTwo!32111 r!7292)) (reg!16128 (regOne!32111 r!7292))) (= (regTwo!32111 r!7292) (regOne!32111 r!7292))) (= lambda!315567 lambda!315556))))

(assert (=> bs!1366567 (not (= lambda!315567 lambda!315550))))

(assert (=> bs!1366568 (= (and (= (reg!16128 (regTwo!32111 r!7292)) (reg!16128 r!7292)) (= (regTwo!32111 r!7292) (Star!15799 (reg!16128 r!7292)))) (= lambda!315567 lambda!315510))))

(assert (=> bs!1366569 (not (= lambda!315567 lambda!315538))))

(assert (=> bs!1366565 (= (and (= (reg!16128 (regTwo!32111 r!7292)) (reg!16128 r!7292)) (= (regTwo!32111 r!7292) r!7292)) (= lambda!315567 lambda!315444))))

(declare-fun bs!1366571 () Bool)

(assert (= bs!1366571 (and b!5788248 d!1823289)))

(assert (=> bs!1366571 (not (= lambda!315567 lambda!315504))))

(declare-fun bs!1366572 () Bool)

(assert (= bs!1366572 (and b!5788248 d!1823303)))

(assert (=> bs!1366572 (not (= lambda!315567 lambda!315513))))

(declare-fun bs!1366573 () Bool)

(assert (= bs!1366573 (and b!5788248 b!5786985)))

(assert (=> bs!1366573 (= (and (= (reg!16128 (regTwo!32111 r!7292)) (reg!16128 r!7292)) (= (regTwo!32111 r!7292) r!7292)) (= lambda!315567 lambda!315464))))

(assert (=> bs!1366565 (not (= lambda!315567 lambda!315443))))

(declare-fun bs!1366574 () Bool)

(assert (= bs!1366574 (and b!5788248 b!5786979)))

(assert (=> bs!1366574 (not (= lambda!315567 lambda!315465))))

(assert (=> bs!1366571 (not (= lambda!315567 lambda!315503))))

(declare-fun bs!1366575 () Bool)

(assert (= bs!1366575 (and b!5788248 b!5787897)))

(assert (=> bs!1366575 (not (= lambda!315567 lambda!315558))))

(assert (=> b!5788248 true))

(assert (=> b!5788248 true))

(declare-fun bs!1366576 () Bool)

(declare-fun b!5788242 () Bool)

(assert (= bs!1366576 (and b!5788242 b!5786794)))

(declare-fun lambda!315568 () Int)

(assert (=> bs!1366576 (= (and (= (regOne!32110 (regTwo!32111 r!7292)) (reg!16128 r!7292)) (= (regTwo!32110 (regTwo!32111 r!7292)) r!7292)) (= lambda!315568 lambda!315445))))

(declare-fun bs!1366577 () Bool)

(assert (= bs!1366577 (and b!5788242 d!1823603)))

(assert (=> bs!1366577 (not (= lambda!315568 lambda!315566))))

(declare-fun bs!1366578 () Bool)

(assert (= bs!1366578 (and b!5788242 d!1823413)))

(assert (=> bs!1366578 (not (= lambda!315568 lambda!315549))))

(declare-fun bs!1366579 () Bool)

(assert (= bs!1366579 (and b!5788242 d!1823393)))

(assert (=> bs!1366579 (not (= lambda!315568 lambda!315541))))

(declare-fun bs!1366580 () Bool)

(assert (= bs!1366580 (and b!5788242 b!5787903)))

(assert (=> bs!1366580 (not (= lambda!315568 lambda!315556))))

(assert (=> bs!1366578 (= (and (= (regOne!32110 (regTwo!32111 r!7292)) (reg!16128 r!7292)) (= (regTwo!32110 (regTwo!32111 r!7292)) r!7292)) (= lambda!315568 lambda!315550))))

(declare-fun bs!1366581 () Bool)

(assert (= bs!1366581 (and b!5788242 d!1823299)))

(assert (=> bs!1366581 (not (= lambda!315568 lambda!315510))))

(assert (=> bs!1366579 (not (= lambda!315568 lambda!315538))))

(assert (=> bs!1366576 (not (= lambda!315568 lambda!315444))))

(declare-fun bs!1366582 () Bool)

(assert (= bs!1366582 (and b!5788242 d!1823289)))

(assert (=> bs!1366582 (= (and (= (regOne!32110 (regTwo!32111 r!7292)) (reg!16128 r!7292)) (= (regTwo!32110 (regTwo!32111 r!7292)) r!7292)) (= lambda!315568 lambda!315504))))

(assert (=> bs!1366581 (not (= lambda!315568 lambda!315509))))

(declare-fun bs!1366583 () Bool)

(assert (= bs!1366583 (and b!5788242 b!5788248)))

(assert (=> bs!1366583 (not (= lambda!315568 lambda!315567))))

(declare-fun bs!1366584 () Bool)

(assert (= bs!1366584 (and b!5788242 d!1823303)))

(assert (=> bs!1366584 (not (= lambda!315568 lambda!315513))))

(declare-fun bs!1366585 () Bool)

(assert (= bs!1366585 (and b!5788242 b!5786985)))

(assert (=> bs!1366585 (not (= lambda!315568 lambda!315464))))

(assert (=> bs!1366576 (not (= lambda!315568 lambda!315443))))

(declare-fun bs!1366586 () Bool)

(assert (= bs!1366586 (and b!5788242 b!5786979)))

(assert (=> bs!1366586 (= (and (= (regOne!32110 (regTwo!32111 r!7292)) (regOne!32110 r!7292)) (= (regTwo!32110 (regTwo!32111 r!7292)) (regTwo!32110 r!7292))) (= lambda!315568 lambda!315465))))

(assert (=> bs!1366582 (not (= lambda!315568 lambda!315503))))

(declare-fun bs!1366587 () Bool)

(assert (= bs!1366587 (and b!5788242 b!5787897)))

(assert (=> bs!1366587 (= (and (= (regOne!32110 (regTwo!32111 r!7292)) (regOne!32110 (regOne!32111 r!7292))) (= (regTwo!32110 (regTwo!32111 r!7292)) (regTwo!32110 (regOne!32111 r!7292)))) (= lambda!315568 lambda!315558))))

(assert (=> b!5788242 true))

(assert (=> b!5788242 true))

(declare-fun b!5788240 () Bool)

(declare-fun c!1024850 () Bool)

(assert (=> b!5788240 (= c!1024850 ((_ is Union!15799) (regTwo!32111 r!7292)))))

(declare-fun e!3554926 () Bool)

(declare-fun e!3554928 () Bool)

(assert (=> b!5788240 (= e!3554926 e!3554928)))

(declare-fun b!5788241 () Bool)

(declare-fun e!3554927 () Bool)

(declare-fun e!3554925 () Bool)

(assert (=> b!5788241 (= e!3554927 e!3554925)))

(declare-fun res!2442385 () Bool)

(assert (=> b!5788241 (= res!2442385 (not ((_ is EmptyLang!15799) (regTwo!32111 r!7292))))))

(assert (=> b!5788241 (=> (not res!2442385) (not e!3554925))))

(declare-fun e!3554930 () Bool)

(declare-fun call!450745 () Bool)

(assert (=> b!5788242 (= e!3554930 call!450745)))

(declare-fun b!5788243 () Bool)

(declare-fun res!2442386 () Bool)

(declare-fun e!3554929 () Bool)

(assert (=> b!5788243 (=> res!2442386 e!3554929)))

(declare-fun call!450746 () Bool)

(assert (=> b!5788243 (= res!2442386 call!450746)))

(assert (=> b!5788243 (= e!3554930 e!3554929)))

(declare-fun d!1823637 () Bool)

(declare-fun c!1024851 () Bool)

(assert (=> d!1823637 (= c!1024851 ((_ is EmptyExpr!15799) (regTwo!32111 r!7292)))))

(assert (=> d!1823637 (= (matchRSpec!2902 (regTwo!32111 r!7292) s!2326) e!3554927)))

(declare-fun b!5788244 () Bool)

(assert (=> b!5788244 (= e!3554927 call!450746)))

(declare-fun c!1024848 () Bool)

(declare-fun bm!450740 () Bool)

(assert (=> bm!450740 (= call!450745 (Exists!2899 (ite c!1024848 lambda!315567 lambda!315568)))))

(declare-fun b!5788245 () Bool)

(declare-fun e!3554924 () Bool)

(assert (=> b!5788245 (= e!3554928 e!3554924)))

(declare-fun res!2442384 () Bool)

(assert (=> b!5788245 (= res!2442384 (matchRSpec!2902 (regOne!32111 (regTwo!32111 r!7292)) s!2326))))

(assert (=> b!5788245 (=> res!2442384 e!3554924)))

(declare-fun b!5788246 () Bool)

(declare-fun c!1024849 () Bool)

(assert (=> b!5788246 (= c!1024849 ((_ is ElementMatch!15799) (regTwo!32111 r!7292)))))

(assert (=> b!5788246 (= e!3554925 e!3554926)))

(declare-fun b!5788247 () Bool)

(assert (=> b!5788247 (= e!3554928 e!3554930)))

(assert (=> b!5788247 (= c!1024848 ((_ is Star!15799) (regTwo!32111 r!7292)))))

(declare-fun bm!450741 () Bool)

(assert (=> bm!450741 (= call!450746 (isEmpty!35476 s!2326))))

(assert (=> b!5788248 (= e!3554929 call!450745)))

(declare-fun b!5788249 () Bool)

(assert (=> b!5788249 (= e!3554926 (= s!2326 (Cons!63573 (c!1024501 (regTwo!32111 r!7292)) Nil!63573)))))

(declare-fun b!5788250 () Bool)

(assert (=> b!5788250 (= e!3554924 (matchRSpec!2902 (regTwo!32111 (regTwo!32111 r!7292)) s!2326))))

(assert (= (and d!1823637 c!1024851) b!5788244))

(assert (= (and d!1823637 (not c!1024851)) b!5788241))

(assert (= (and b!5788241 res!2442385) b!5788246))

(assert (= (and b!5788246 c!1024849) b!5788249))

(assert (= (and b!5788246 (not c!1024849)) b!5788240))

(assert (= (and b!5788240 c!1024850) b!5788245))

(assert (= (and b!5788240 (not c!1024850)) b!5788247))

(assert (= (and b!5788245 (not res!2442384)) b!5788250))

(assert (= (and b!5788247 c!1024848) b!5788243))

(assert (= (and b!5788247 (not c!1024848)) b!5788242))

(assert (= (and b!5788243 (not res!2442386)) b!5788248))

(assert (= (or b!5788248 b!5788242) bm!450740))

(assert (= (or b!5788244 b!5788243) bm!450741))

(declare-fun m!6732488 () Bool)

(assert (=> bm!450740 m!6732488))

(declare-fun m!6732490 () Bool)

(assert (=> b!5788245 m!6732490))

(assert (=> bm!450741 m!6731432))

(declare-fun m!6732492 () Bool)

(assert (=> b!5788250 m!6732492))

(assert (=> b!5786987 d!1823637))

(declare-fun d!1823639 () Bool)

(assert (=> d!1823639 (= (nullable!5831 (h!70020 (exprs!5683 (h!70022 zl!343)))) (nullableFct!1863 (h!70020 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun bs!1366588 () Bool)

(assert (= bs!1366588 d!1823639))

(declare-fun m!6732494 () Bool)

(assert (=> bs!1366588 m!6732494))

(assert (=> b!5787281 d!1823639))

(declare-fun d!1823641 () Bool)

(assert (=> d!1823641 (= (isEmpty!35479 (t!377037 (exprs!5683 (h!70022 zl!343)))) ((_ is Nil!63572) (t!377037 (exprs!5683 (h!70022 zl!343)))))))

(assert (=> b!5787380 d!1823641))

(declare-fun d!1823643 () Bool)

(assert (=> d!1823643 (= (isConcat!802 lt!2296668) ((_ is Concat!24644) lt!2296668))))

(assert (=> b!5787382 d!1823643))

(declare-fun b!5788251 () Bool)

(declare-fun e!3554931 () Bool)

(assert (=> b!5788251 (= e!3554931 tp_is_empty!40851)))

(declare-fun b!5788252 () Bool)

(declare-fun tp!1596788 () Bool)

(declare-fun tp!1596787 () Bool)

(assert (=> b!5788252 (= e!3554931 (and tp!1596788 tp!1596787))))

(declare-fun b!5788253 () Bool)

(declare-fun tp!1596785 () Bool)

(assert (=> b!5788253 (= e!3554931 tp!1596785)))

(declare-fun b!5788254 () Bool)

(declare-fun tp!1596789 () Bool)

(declare-fun tp!1596786 () Bool)

(assert (=> b!5788254 (= e!3554931 (and tp!1596789 tp!1596786))))

(assert (=> b!5787475 (= tp!1596605 e!3554931)))

(assert (= (and b!5787475 ((_ is ElementMatch!15799) (regOne!32111 (regOne!32111 r!7292)))) b!5788251))

(assert (= (and b!5787475 ((_ is Concat!24644) (regOne!32111 (regOne!32111 r!7292)))) b!5788252))

(assert (= (and b!5787475 ((_ is Star!15799) (regOne!32111 (regOne!32111 r!7292)))) b!5788253))

(assert (= (and b!5787475 ((_ is Union!15799) (regOne!32111 (regOne!32111 r!7292)))) b!5788254))

(declare-fun b!5788255 () Bool)

(declare-fun e!3554932 () Bool)

(assert (=> b!5788255 (= e!3554932 tp_is_empty!40851)))

(declare-fun b!5788256 () Bool)

(declare-fun tp!1596793 () Bool)

(declare-fun tp!1596792 () Bool)

(assert (=> b!5788256 (= e!3554932 (and tp!1596793 tp!1596792))))

(declare-fun b!5788257 () Bool)

(declare-fun tp!1596790 () Bool)

(assert (=> b!5788257 (= e!3554932 tp!1596790)))

(declare-fun b!5788258 () Bool)

(declare-fun tp!1596794 () Bool)

(declare-fun tp!1596791 () Bool)

(assert (=> b!5788258 (= e!3554932 (and tp!1596794 tp!1596791))))

(assert (=> b!5787475 (= tp!1596602 e!3554932)))

(assert (= (and b!5787475 ((_ is ElementMatch!15799) (regTwo!32111 (regOne!32111 r!7292)))) b!5788255))

(assert (= (and b!5787475 ((_ is Concat!24644) (regTwo!32111 (regOne!32111 r!7292)))) b!5788256))

(assert (= (and b!5787475 ((_ is Star!15799) (regTwo!32111 (regOne!32111 r!7292)))) b!5788257))

(assert (= (and b!5787475 ((_ is Union!15799) (regTwo!32111 (regOne!32111 r!7292)))) b!5788258))

(declare-fun b!5788259 () Bool)

(declare-fun e!3554933 () Bool)

(assert (=> b!5788259 (= e!3554933 tp_is_empty!40851)))

(declare-fun b!5788260 () Bool)

(declare-fun tp!1596798 () Bool)

(declare-fun tp!1596797 () Bool)

(assert (=> b!5788260 (= e!3554933 (and tp!1596798 tp!1596797))))

(declare-fun b!5788261 () Bool)

(declare-fun tp!1596795 () Bool)

(assert (=> b!5788261 (= e!3554933 tp!1596795)))

(declare-fun b!5788262 () Bool)

(declare-fun tp!1596799 () Bool)

(declare-fun tp!1596796 () Bool)

(assert (=> b!5788262 (= e!3554933 (and tp!1596799 tp!1596796))))

(assert (=> b!5787452 (= tp!1596585 e!3554933)))

(assert (= (and b!5787452 ((_ is ElementMatch!15799) (regOne!32110 (regTwo!32110 r!7292)))) b!5788259))

(assert (= (and b!5787452 ((_ is Concat!24644) (regOne!32110 (regTwo!32110 r!7292)))) b!5788260))

(assert (= (and b!5787452 ((_ is Star!15799) (regOne!32110 (regTwo!32110 r!7292)))) b!5788261))

(assert (= (and b!5787452 ((_ is Union!15799) (regOne!32110 (regTwo!32110 r!7292)))) b!5788262))

(declare-fun b!5788263 () Bool)

(declare-fun e!3554934 () Bool)

(assert (=> b!5788263 (= e!3554934 tp_is_empty!40851)))

(declare-fun b!5788264 () Bool)

(declare-fun tp!1596803 () Bool)

(declare-fun tp!1596802 () Bool)

(assert (=> b!5788264 (= e!3554934 (and tp!1596803 tp!1596802))))

(declare-fun b!5788265 () Bool)

(declare-fun tp!1596800 () Bool)

(assert (=> b!5788265 (= e!3554934 tp!1596800)))

(declare-fun b!5788266 () Bool)

(declare-fun tp!1596804 () Bool)

(declare-fun tp!1596801 () Bool)

(assert (=> b!5788266 (= e!3554934 (and tp!1596804 tp!1596801))))

(assert (=> b!5787452 (= tp!1596584 e!3554934)))

(assert (= (and b!5787452 ((_ is ElementMatch!15799) (regTwo!32110 (regTwo!32110 r!7292)))) b!5788263))

(assert (= (and b!5787452 ((_ is Concat!24644) (regTwo!32110 (regTwo!32110 r!7292)))) b!5788264))

(assert (= (and b!5787452 ((_ is Star!15799) (regTwo!32110 (regTwo!32110 r!7292)))) b!5788265))

(assert (= (and b!5787452 ((_ is Union!15799) (regTwo!32110 (regTwo!32110 r!7292)))) b!5788266))

(declare-fun b!5788267 () Bool)

(declare-fun e!3554935 () Bool)

(assert (=> b!5788267 (= e!3554935 tp_is_empty!40851)))

(declare-fun b!5788268 () Bool)

(declare-fun tp!1596808 () Bool)

(declare-fun tp!1596807 () Bool)

(assert (=> b!5788268 (= e!3554935 (and tp!1596808 tp!1596807))))

(declare-fun b!5788269 () Bool)

(declare-fun tp!1596805 () Bool)

(assert (=> b!5788269 (= e!3554935 tp!1596805)))

(declare-fun b!5788270 () Bool)

(declare-fun tp!1596809 () Bool)

(declare-fun tp!1596806 () Bool)

(assert (=> b!5788270 (= e!3554935 (and tp!1596809 tp!1596806))))

(assert (=> b!5787454 (= tp!1596586 e!3554935)))

(assert (= (and b!5787454 ((_ is ElementMatch!15799) (regOne!32111 (regTwo!32110 r!7292)))) b!5788267))

(assert (= (and b!5787454 ((_ is Concat!24644) (regOne!32111 (regTwo!32110 r!7292)))) b!5788268))

(assert (= (and b!5787454 ((_ is Star!15799) (regOne!32111 (regTwo!32110 r!7292)))) b!5788269))

(assert (= (and b!5787454 ((_ is Union!15799) (regOne!32111 (regTwo!32110 r!7292)))) b!5788270))

(declare-fun b!5788271 () Bool)

(declare-fun e!3554936 () Bool)

(assert (=> b!5788271 (= e!3554936 tp_is_empty!40851)))

(declare-fun b!5788272 () Bool)

(declare-fun tp!1596813 () Bool)

(declare-fun tp!1596812 () Bool)

(assert (=> b!5788272 (= e!3554936 (and tp!1596813 tp!1596812))))

(declare-fun b!5788273 () Bool)

(declare-fun tp!1596810 () Bool)

(assert (=> b!5788273 (= e!3554936 tp!1596810)))

(declare-fun b!5788274 () Bool)

(declare-fun tp!1596814 () Bool)

(declare-fun tp!1596811 () Bool)

(assert (=> b!5788274 (= e!3554936 (and tp!1596814 tp!1596811))))

(assert (=> b!5787454 (= tp!1596583 e!3554936)))

(assert (= (and b!5787454 ((_ is ElementMatch!15799) (regTwo!32111 (regTwo!32110 r!7292)))) b!5788271))

(assert (= (and b!5787454 ((_ is Concat!24644) (regTwo!32111 (regTwo!32110 r!7292)))) b!5788272))

(assert (= (and b!5787454 ((_ is Star!15799) (regTwo!32111 (regTwo!32110 r!7292)))) b!5788273))

(assert (= (and b!5787454 ((_ is Union!15799) (regTwo!32111 (regTwo!32110 r!7292)))) b!5788274))

(declare-fun b!5788275 () Bool)

(declare-fun e!3554937 () Bool)

(assert (=> b!5788275 (= e!3554937 tp_is_empty!40851)))

(declare-fun b!5788276 () Bool)

(declare-fun tp!1596818 () Bool)

(declare-fun tp!1596817 () Bool)

(assert (=> b!5788276 (= e!3554937 (and tp!1596818 tp!1596817))))

(declare-fun b!5788277 () Bool)

(declare-fun tp!1596815 () Bool)

(assert (=> b!5788277 (= e!3554937 tp!1596815)))

(declare-fun b!5788278 () Bool)

(declare-fun tp!1596819 () Bool)

(declare-fun tp!1596816 () Bool)

(assert (=> b!5788278 (= e!3554937 (and tp!1596819 tp!1596816))))

(assert (=> b!5787453 (= tp!1596582 e!3554937)))

(assert (= (and b!5787453 ((_ is ElementMatch!15799) (reg!16128 (regTwo!32110 r!7292)))) b!5788275))

(assert (= (and b!5787453 ((_ is Concat!24644) (reg!16128 (regTwo!32110 r!7292)))) b!5788276))

(assert (= (and b!5787453 ((_ is Star!15799) (reg!16128 (regTwo!32110 r!7292)))) b!5788277))

(assert (= (and b!5787453 ((_ is Union!15799) (reg!16128 (regTwo!32110 r!7292)))) b!5788278))

(declare-fun b!5788279 () Bool)

(declare-fun e!3554938 () Bool)

(assert (=> b!5788279 (= e!3554938 tp_is_empty!40851)))

(declare-fun b!5788280 () Bool)

(declare-fun tp!1596823 () Bool)

(declare-fun tp!1596822 () Bool)

(assert (=> b!5788280 (= e!3554938 (and tp!1596823 tp!1596822))))

(declare-fun b!5788281 () Bool)

(declare-fun tp!1596820 () Bool)

(assert (=> b!5788281 (= e!3554938 tp!1596820)))

(declare-fun b!5788282 () Bool)

(declare-fun tp!1596824 () Bool)

(declare-fun tp!1596821 () Bool)

(assert (=> b!5788282 (= e!3554938 (and tp!1596824 tp!1596821))))

(assert (=> b!5787431 (= tp!1596559 e!3554938)))

(assert (= (and b!5787431 ((_ is ElementMatch!15799) (h!70020 (exprs!5683 (h!70022 zl!343))))) b!5788279))

(assert (= (and b!5787431 ((_ is Concat!24644) (h!70020 (exprs!5683 (h!70022 zl!343))))) b!5788280))

(assert (= (and b!5787431 ((_ is Star!15799) (h!70020 (exprs!5683 (h!70022 zl!343))))) b!5788281))

(assert (= (and b!5787431 ((_ is Union!15799) (h!70020 (exprs!5683 (h!70022 zl!343))))) b!5788282))

(declare-fun b!5788283 () Bool)

(declare-fun e!3554939 () Bool)

(declare-fun tp!1596825 () Bool)

(declare-fun tp!1596826 () Bool)

(assert (=> b!5788283 (= e!3554939 (and tp!1596825 tp!1596826))))

(assert (=> b!5787431 (= tp!1596560 e!3554939)))

(assert (= (and b!5787431 ((_ is Cons!63572) (t!377037 (exprs!5683 (h!70022 zl!343))))) b!5788283))

(declare-fun b!5788284 () Bool)

(declare-fun e!3554940 () Bool)

(declare-fun tp!1596827 () Bool)

(assert (=> b!5788284 (= e!3554940 (and tp_is_empty!40851 tp!1596827))))

(assert (=> b!5787459 (= tp!1596589 e!3554940)))

(assert (= (and b!5787459 ((_ is Cons!63573) (t!377038 (t!377038 s!2326)))) b!5788284))

(declare-fun b!5788285 () Bool)

(declare-fun e!3554941 () Bool)

(declare-fun tp!1596828 () Bool)

(declare-fun tp!1596829 () Bool)

(assert (=> b!5788285 (= e!3554941 (and tp!1596828 tp!1596829))))

(assert (=> b!5787436 (= tp!1596565 e!3554941)))

(assert (= (and b!5787436 ((_ is Cons!63572) (exprs!5683 setElem!38886))) b!5788285))

(declare-fun condSetEmpty!38894 () Bool)

(assert (=> setNonEmpty!38886 (= condSetEmpty!38894 (= setRest!38886 ((as const (Array Context!10366 Bool)) false)))))

(declare-fun setRes!38894 () Bool)

(assert (=> setNonEmpty!38886 (= tp!1596566 setRes!38894)))

(declare-fun setIsEmpty!38894 () Bool)

(assert (=> setIsEmpty!38894 setRes!38894))

(declare-fun setElem!38894 () Context!10366)

(declare-fun e!3554942 () Bool)

(declare-fun setNonEmpty!38894 () Bool)

(declare-fun tp!1596831 () Bool)

(assert (=> setNonEmpty!38894 (= setRes!38894 (and tp!1596831 (inv!82744 setElem!38894) e!3554942))))

(declare-fun setRest!38894 () (InoxSet Context!10366))

(assert (=> setNonEmpty!38894 (= setRest!38886 ((_ map or) (store ((as const (Array Context!10366 Bool)) false) setElem!38894 true) setRest!38894))))

(declare-fun b!5788286 () Bool)

(declare-fun tp!1596830 () Bool)

(assert (=> b!5788286 (= e!3554942 tp!1596830)))

(assert (= (and setNonEmpty!38886 condSetEmpty!38894) setIsEmpty!38894))

(assert (= (and setNonEmpty!38886 (not condSetEmpty!38894)) setNonEmpty!38894))

(assert (= setNonEmpty!38894 b!5788286))

(declare-fun m!6732496 () Bool)

(assert (=> setNonEmpty!38894 m!6732496))

(declare-fun b!5788287 () Bool)

(declare-fun e!3554943 () Bool)

(assert (=> b!5788287 (= e!3554943 tp_is_empty!40851)))

(declare-fun b!5788288 () Bool)

(declare-fun tp!1596835 () Bool)

(declare-fun tp!1596834 () Bool)

(assert (=> b!5788288 (= e!3554943 (and tp!1596835 tp!1596834))))

(declare-fun b!5788289 () Bool)

(declare-fun tp!1596832 () Bool)

(assert (=> b!5788289 (= e!3554943 tp!1596832)))

(declare-fun b!5788290 () Bool)

(declare-fun tp!1596836 () Bool)

(declare-fun tp!1596833 () Bool)

(assert (=> b!5788290 (= e!3554943 (and tp!1596836 tp!1596833))))

(assert (=> b!5787473 (= tp!1596604 e!3554943)))

(assert (= (and b!5787473 ((_ is ElementMatch!15799) (regOne!32110 (regOne!32111 r!7292)))) b!5788287))

(assert (= (and b!5787473 ((_ is Concat!24644) (regOne!32110 (regOne!32111 r!7292)))) b!5788288))

(assert (= (and b!5787473 ((_ is Star!15799) (regOne!32110 (regOne!32111 r!7292)))) b!5788289))

(assert (= (and b!5787473 ((_ is Union!15799) (regOne!32110 (regOne!32111 r!7292)))) b!5788290))

(declare-fun b!5788291 () Bool)

(declare-fun e!3554944 () Bool)

(assert (=> b!5788291 (= e!3554944 tp_is_empty!40851)))

(declare-fun b!5788292 () Bool)

(declare-fun tp!1596840 () Bool)

(declare-fun tp!1596839 () Bool)

(assert (=> b!5788292 (= e!3554944 (and tp!1596840 tp!1596839))))

(declare-fun b!5788293 () Bool)

(declare-fun tp!1596837 () Bool)

(assert (=> b!5788293 (= e!3554944 tp!1596837)))

(declare-fun b!5788294 () Bool)

(declare-fun tp!1596841 () Bool)

(declare-fun tp!1596838 () Bool)

(assert (=> b!5788294 (= e!3554944 (and tp!1596841 tp!1596838))))

(assert (=> b!5787473 (= tp!1596603 e!3554944)))

(assert (= (and b!5787473 ((_ is ElementMatch!15799) (regTwo!32110 (regOne!32111 r!7292)))) b!5788291))

(assert (= (and b!5787473 ((_ is Concat!24644) (regTwo!32110 (regOne!32111 r!7292)))) b!5788292))

(assert (= (and b!5787473 ((_ is Star!15799) (regTwo!32110 (regOne!32111 r!7292)))) b!5788293))

(assert (= (and b!5787473 ((_ is Union!15799) (regTwo!32110 (regOne!32111 r!7292)))) b!5788294))

(declare-fun b!5788295 () Bool)

(declare-fun e!3554945 () Bool)

(assert (=> b!5788295 (= e!3554945 tp_is_empty!40851)))

(declare-fun b!5788296 () Bool)

(declare-fun tp!1596845 () Bool)

(declare-fun tp!1596844 () Bool)

(assert (=> b!5788296 (= e!3554945 (and tp!1596845 tp!1596844))))

(declare-fun b!5788297 () Bool)

(declare-fun tp!1596842 () Bool)

(assert (=> b!5788297 (= e!3554945 tp!1596842)))

(declare-fun b!5788298 () Bool)

(declare-fun tp!1596846 () Bool)

(declare-fun tp!1596843 () Bool)

(assert (=> b!5788298 (= e!3554945 (and tp!1596846 tp!1596843))))

(assert (=> b!5787474 (= tp!1596601 e!3554945)))

(assert (= (and b!5787474 ((_ is ElementMatch!15799) (reg!16128 (regOne!32111 r!7292)))) b!5788295))

(assert (= (and b!5787474 ((_ is Concat!24644) (reg!16128 (regOne!32111 r!7292)))) b!5788296))

(assert (= (and b!5787474 ((_ is Star!15799) (reg!16128 (regOne!32111 r!7292)))) b!5788297))

(assert (= (and b!5787474 ((_ is Union!15799) (reg!16128 (regOne!32111 r!7292)))) b!5788298))

(declare-fun b!5788299 () Bool)

(declare-fun e!3554946 () Bool)

(declare-fun tp!1596847 () Bool)

(declare-fun tp!1596848 () Bool)

(assert (=> b!5788299 (= e!3554946 (and tp!1596847 tp!1596848))))

(assert (=> b!5787467 (= tp!1596594 e!3554946)))

(assert (= (and b!5787467 ((_ is Cons!63572) (exprs!5683 (h!70022 (t!377039 zl!343))))) b!5788299))

(declare-fun b!5788301 () Bool)

(declare-fun e!3554948 () Bool)

(declare-fun tp!1596849 () Bool)

(assert (=> b!5788301 (= e!3554948 tp!1596849)))

(declare-fun b!5788300 () Bool)

(declare-fun tp!1596850 () Bool)

(declare-fun e!3554947 () Bool)

(assert (=> b!5788300 (= e!3554947 (and (inv!82744 (h!70022 (t!377039 (t!377039 zl!343)))) e!3554948 tp!1596850))))

(assert (=> b!5787466 (= tp!1596595 e!3554947)))

(assert (= b!5788300 b!5788301))

(assert (= (and b!5787466 ((_ is Cons!63574) (t!377039 (t!377039 zl!343)))) b!5788300))

(declare-fun m!6732498 () Bool)

(assert (=> b!5788300 m!6732498))

(declare-fun b!5788302 () Bool)

(declare-fun e!3554949 () Bool)

(assert (=> b!5788302 (= e!3554949 tp_is_empty!40851)))

(declare-fun b!5788303 () Bool)

(declare-fun tp!1596854 () Bool)

(declare-fun tp!1596853 () Bool)

(assert (=> b!5788303 (= e!3554949 (and tp!1596854 tp!1596853))))

(declare-fun b!5788304 () Bool)

(declare-fun tp!1596851 () Bool)

(assert (=> b!5788304 (= e!3554949 tp!1596851)))

(declare-fun b!5788305 () Bool)

(declare-fun tp!1596855 () Bool)

(declare-fun tp!1596852 () Bool)

(assert (=> b!5788305 (= e!3554949 (and tp!1596855 tp!1596852))))

(assert (=> b!5787471 (= tp!1596600 e!3554949)))

(assert (= (and b!5787471 ((_ is ElementMatch!15799) (regOne!32111 (reg!16128 r!7292)))) b!5788302))

(assert (= (and b!5787471 ((_ is Concat!24644) (regOne!32111 (reg!16128 r!7292)))) b!5788303))

(assert (= (and b!5787471 ((_ is Star!15799) (regOne!32111 (reg!16128 r!7292)))) b!5788304))

(assert (= (and b!5787471 ((_ is Union!15799) (regOne!32111 (reg!16128 r!7292)))) b!5788305))

(declare-fun b!5788306 () Bool)

(declare-fun e!3554950 () Bool)

(assert (=> b!5788306 (= e!3554950 tp_is_empty!40851)))

(declare-fun b!5788307 () Bool)

(declare-fun tp!1596859 () Bool)

(declare-fun tp!1596858 () Bool)

(assert (=> b!5788307 (= e!3554950 (and tp!1596859 tp!1596858))))

(declare-fun b!5788308 () Bool)

(declare-fun tp!1596856 () Bool)

(assert (=> b!5788308 (= e!3554950 tp!1596856)))

(declare-fun b!5788309 () Bool)

(declare-fun tp!1596860 () Bool)

(declare-fun tp!1596857 () Bool)

(assert (=> b!5788309 (= e!3554950 (and tp!1596860 tp!1596857))))

(assert (=> b!5787471 (= tp!1596597 e!3554950)))

(assert (= (and b!5787471 ((_ is ElementMatch!15799) (regTwo!32111 (reg!16128 r!7292)))) b!5788306))

(assert (= (and b!5787471 ((_ is Concat!24644) (regTwo!32111 (reg!16128 r!7292)))) b!5788307))

(assert (= (and b!5787471 ((_ is Star!15799) (regTwo!32111 (reg!16128 r!7292)))) b!5788308))

(assert (= (and b!5787471 ((_ is Union!15799) (regTwo!32111 (reg!16128 r!7292)))) b!5788309))

(declare-fun b!5788310 () Bool)

(declare-fun e!3554951 () Bool)

(assert (=> b!5788310 (= e!3554951 tp_is_empty!40851)))

(declare-fun b!5788311 () Bool)

(declare-fun tp!1596864 () Bool)

(declare-fun tp!1596863 () Bool)

(assert (=> b!5788311 (= e!3554951 (and tp!1596864 tp!1596863))))

(declare-fun b!5788312 () Bool)

(declare-fun tp!1596861 () Bool)

(assert (=> b!5788312 (= e!3554951 tp!1596861)))

(declare-fun b!5788313 () Bool)

(declare-fun tp!1596865 () Bool)

(declare-fun tp!1596862 () Bool)

(assert (=> b!5788313 (= e!3554951 (and tp!1596865 tp!1596862))))

(assert (=> b!5787448 (= tp!1596580 e!3554951)))

(assert (= (and b!5787448 ((_ is ElementMatch!15799) (regOne!32110 (regOne!32110 r!7292)))) b!5788310))

(assert (= (and b!5787448 ((_ is Concat!24644) (regOne!32110 (regOne!32110 r!7292)))) b!5788311))

(assert (= (and b!5787448 ((_ is Star!15799) (regOne!32110 (regOne!32110 r!7292)))) b!5788312))

(assert (= (and b!5787448 ((_ is Union!15799) (regOne!32110 (regOne!32110 r!7292)))) b!5788313))

(declare-fun b!5788314 () Bool)

(declare-fun e!3554952 () Bool)

(assert (=> b!5788314 (= e!3554952 tp_is_empty!40851)))

(declare-fun b!5788315 () Bool)

(declare-fun tp!1596869 () Bool)

(declare-fun tp!1596868 () Bool)

(assert (=> b!5788315 (= e!3554952 (and tp!1596869 tp!1596868))))

(declare-fun b!5788316 () Bool)

(declare-fun tp!1596866 () Bool)

(assert (=> b!5788316 (= e!3554952 tp!1596866)))

(declare-fun b!5788317 () Bool)

(declare-fun tp!1596870 () Bool)

(declare-fun tp!1596867 () Bool)

(assert (=> b!5788317 (= e!3554952 (and tp!1596870 tp!1596867))))

(assert (=> b!5787448 (= tp!1596579 e!3554952)))

(assert (= (and b!5787448 ((_ is ElementMatch!15799) (regTwo!32110 (regOne!32110 r!7292)))) b!5788314))

(assert (= (and b!5787448 ((_ is Concat!24644) (regTwo!32110 (regOne!32110 r!7292)))) b!5788315))

(assert (= (and b!5787448 ((_ is Star!15799) (regTwo!32110 (regOne!32110 r!7292)))) b!5788316))

(assert (= (and b!5787448 ((_ is Union!15799) (regTwo!32110 (regOne!32110 r!7292)))) b!5788317))

(declare-fun b!5788318 () Bool)

(declare-fun e!3554953 () Bool)

(assert (=> b!5788318 (= e!3554953 tp_is_empty!40851)))

(declare-fun b!5788319 () Bool)

(declare-fun tp!1596874 () Bool)

(declare-fun tp!1596873 () Bool)

(assert (=> b!5788319 (= e!3554953 (and tp!1596874 tp!1596873))))

(declare-fun b!5788320 () Bool)

(declare-fun tp!1596871 () Bool)

(assert (=> b!5788320 (= e!3554953 tp!1596871)))

(declare-fun b!5788321 () Bool)

(declare-fun tp!1596875 () Bool)

(declare-fun tp!1596872 () Bool)

(assert (=> b!5788321 (= e!3554953 (and tp!1596875 tp!1596872))))

(assert (=> b!5787470 (= tp!1596596 e!3554953)))

(assert (= (and b!5787470 ((_ is ElementMatch!15799) (reg!16128 (reg!16128 r!7292)))) b!5788318))

(assert (= (and b!5787470 ((_ is Concat!24644) (reg!16128 (reg!16128 r!7292)))) b!5788319))

(assert (= (and b!5787470 ((_ is Star!15799) (reg!16128 (reg!16128 r!7292)))) b!5788320))

(assert (= (and b!5787470 ((_ is Union!15799) (reg!16128 (reg!16128 r!7292)))) b!5788321))

(declare-fun b!5788322 () Bool)

(declare-fun e!3554954 () Bool)

(assert (=> b!5788322 (= e!3554954 tp_is_empty!40851)))

(declare-fun b!5788323 () Bool)

(declare-fun tp!1596879 () Bool)

(declare-fun tp!1596878 () Bool)

(assert (=> b!5788323 (= e!3554954 (and tp!1596879 tp!1596878))))

(declare-fun b!5788324 () Bool)

(declare-fun tp!1596876 () Bool)

(assert (=> b!5788324 (= e!3554954 tp!1596876)))

(declare-fun b!5788325 () Bool)

(declare-fun tp!1596880 () Bool)

(declare-fun tp!1596877 () Bool)

(assert (=> b!5788325 (= e!3554954 (and tp!1596880 tp!1596877))))

(assert (=> b!5787449 (= tp!1596577 e!3554954)))

(assert (= (and b!5787449 ((_ is ElementMatch!15799) (reg!16128 (regOne!32110 r!7292)))) b!5788322))

(assert (= (and b!5787449 ((_ is Concat!24644) (reg!16128 (regOne!32110 r!7292)))) b!5788323))

(assert (= (and b!5787449 ((_ is Star!15799) (reg!16128 (regOne!32110 r!7292)))) b!5788324))

(assert (= (and b!5787449 ((_ is Union!15799) (reg!16128 (regOne!32110 r!7292)))) b!5788325))

(declare-fun b!5788326 () Bool)

(declare-fun e!3554955 () Bool)

(assert (=> b!5788326 (= e!3554955 tp_is_empty!40851)))

(declare-fun b!5788327 () Bool)

(declare-fun tp!1596884 () Bool)

(declare-fun tp!1596883 () Bool)

(assert (=> b!5788327 (= e!3554955 (and tp!1596884 tp!1596883))))

(declare-fun b!5788328 () Bool)

(declare-fun tp!1596881 () Bool)

(assert (=> b!5788328 (= e!3554955 tp!1596881)))

(declare-fun b!5788329 () Bool)

(declare-fun tp!1596885 () Bool)

(declare-fun tp!1596882 () Bool)

(assert (=> b!5788329 (= e!3554955 (and tp!1596885 tp!1596882))))

(assert (=> b!5787480 (= tp!1596611 e!3554955)))

(assert (= (and b!5787480 ((_ is ElementMatch!15799) (h!70020 (exprs!5683 setElem!38880)))) b!5788326))

(assert (= (and b!5787480 ((_ is Concat!24644) (h!70020 (exprs!5683 setElem!38880)))) b!5788327))

(assert (= (and b!5787480 ((_ is Star!15799) (h!70020 (exprs!5683 setElem!38880)))) b!5788328))

(assert (= (and b!5787480 ((_ is Union!15799) (h!70020 (exprs!5683 setElem!38880)))) b!5788329))

(declare-fun b!5788330 () Bool)

(declare-fun e!3554956 () Bool)

(declare-fun tp!1596886 () Bool)

(declare-fun tp!1596887 () Bool)

(assert (=> b!5788330 (= e!3554956 (and tp!1596886 tp!1596887))))

(assert (=> b!5787480 (= tp!1596612 e!3554956)))

(assert (= (and b!5787480 ((_ is Cons!63572) (t!377037 (exprs!5683 setElem!38880)))) b!5788330))

(declare-fun b!5788331 () Bool)

(declare-fun e!3554957 () Bool)

(assert (=> b!5788331 (= e!3554957 tp_is_empty!40851)))

(declare-fun b!5788332 () Bool)

(declare-fun tp!1596891 () Bool)

(declare-fun tp!1596890 () Bool)

(assert (=> b!5788332 (= e!3554957 (and tp!1596891 tp!1596890))))

(declare-fun b!5788333 () Bool)

(declare-fun tp!1596888 () Bool)

(assert (=> b!5788333 (= e!3554957 tp!1596888)))

(declare-fun b!5788334 () Bool)

(declare-fun tp!1596892 () Bool)

(declare-fun tp!1596889 () Bool)

(assert (=> b!5788334 (= e!3554957 (and tp!1596892 tp!1596889))))

(assert (=> b!5787450 (= tp!1596581 e!3554957)))

(assert (= (and b!5787450 ((_ is ElementMatch!15799) (regOne!32111 (regOne!32110 r!7292)))) b!5788331))

(assert (= (and b!5787450 ((_ is Concat!24644) (regOne!32111 (regOne!32110 r!7292)))) b!5788332))

(assert (= (and b!5787450 ((_ is Star!15799) (regOne!32111 (regOne!32110 r!7292)))) b!5788333))

(assert (= (and b!5787450 ((_ is Union!15799) (regOne!32111 (regOne!32110 r!7292)))) b!5788334))

(declare-fun b!5788335 () Bool)

(declare-fun e!3554958 () Bool)

(assert (=> b!5788335 (= e!3554958 tp_is_empty!40851)))

(declare-fun b!5788336 () Bool)

(declare-fun tp!1596896 () Bool)

(declare-fun tp!1596895 () Bool)

(assert (=> b!5788336 (= e!3554958 (and tp!1596896 tp!1596895))))

(declare-fun b!5788337 () Bool)

(declare-fun tp!1596893 () Bool)

(assert (=> b!5788337 (= e!3554958 tp!1596893)))

(declare-fun b!5788338 () Bool)

(declare-fun tp!1596897 () Bool)

(declare-fun tp!1596894 () Bool)

(assert (=> b!5788338 (= e!3554958 (and tp!1596897 tp!1596894))))

(assert (=> b!5787450 (= tp!1596578 e!3554958)))

(assert (= (and b!5787450 ((_ is ElementMatch!15799) (regTwo!32111 (regOne!32110 r!7292)))) b!5788335))

(assert (= (and b!5787450 ((_ is Concat!24644) (regTwo!32111 (regOne!32110 r!7292)))) b!5788336))

(assert (= (and b!5787450 ((_ is Star!15799) (regTwo!32111 (regOne!32110 r!7292)))) b!5788337))

(assert (= (and b!5787450 ((_ is Union!15799) (regTwo!32111 (regOne!32110 r!7292)))) b!5788338))

(declare-fun b!5788339 () Bool)

(declare-fun e!3554959 () Bool)

(assert (=> b!5788339 (= e!3554959 tp_is_empty!40851)))

(declare-fun b!5788340 () Bool)

(declare-fun tp!1596901 () Bool)

(declare-fun tp!1596900 () Bool)

(assert (=> b!5788340 (= e!3554959 (and tp!1596901 tp!1596900))))

(declare-fun b!5788341 () Bool)

(declare-fun tp!1596898 () Bool)

(assert (=> b!5788341 (= e!3554959 tp!1596898)))

(declare-fun b!5788342 () Bool)

(declare-fun tp!1596902 () Bool)

(declare-fun tp!1596899 () Bool)

(assert (=> b!5788342 (= e!3554959 (and tp!1596902 tp!1596899))))

(assert (=> b!5787477 (= tp!1596609 e!3554959)))

(assert (= (and b!5787477 ((_ is ElementMatch!15799) (regOne!32110 (regTwo!32111 r!7292)))) b!5788339))

(assert (= (and b!5787477 ((_ is Concat!24644) (regOne!32110 (regTwo!32111 r!7292)))) b!5788340))

(assert (= (and b!5787477 ((_ is Star!15799) (regOne!32110 (regTwo!32111 r!7292)))) b!5788341))

(assert (= (and b!5787477 ((_ is Union!15799) (regOne!32110 (regTwo!32111 r!7292)))) b!5788342))

(declare-fun b!5788343 () Bool)

(declare-fun e!3554960 () Bool)

(assert (=> b!5788343 (= e!3554960 tp_is_empty!40851)))

(declare-fun b!5788344 () Bool)

(declare-fun tp!1596906 () Bool)

(declare-fun tp!1596905 () Bool)

(assert (=> b!5788344 (= e!3554960 (and tp!1596906 tp!1596905))))

(declare-fun b!5788345 () Bool)

(declare-fun tp!1596903 () Bool)

(assert (=> b!5788345 (= e!3554960 tp!1596903)))

(declare-fun b!5788346 () Bool)

(declare-fun tp!1596907 () Bool)

(declare-fun tp!1596904 () Bool)

(assert (=> b!5788346 (= e!3554960 (and tp!1596907 tp!1596904))))

(assert (=> b!5787477 (= tp!1596608 e!3554960)))

(assert (= (and b!5787477 ((_ is ElementMatch!15799) (regTwo!32110 (regTwo!32111 r!7292)))) b!5788343))

(assert (= (and b!5787477 ((_ is Concat!24644) (regTwo!32110 (regTwo!32111 r!7292)))) b!5788344))

(assert (= (and b!5787477 ((_ is Star!15799) (regTwo!32110 (regTwo!32111 r!7292)))) b!5788345))

(assert (= (and b!5787477 ((_ is Union!15799) (regTwo!32110 (regTwo!32111 r!7292)))) b!5788346))

(declare-fun b!5788347 () Bool)

(declare-fun e!3554961 () Bool)

(assert (=> b!5788347 (= e!3554961 tp_is_empty!40851)))

(declare-fun b!5788348 () Bool)

(declare-fun tp!1596911 () Bool)

(declare-fun tp!1596910 () Bool)

(assert (=> b!5788348 (= e!3554961 (and tp!1596911 tp!1596910))))

(declare-fun b!5788349 () Bool)

(declare-fun tp!1596908 () Bool)

(assert (=> b!5788349 (= e!3554961 tp!1596908)))

(declare-fun b!5788350 () Bool)

(declare-fun tp!1596912 () Bool)

(declare-fun tp!1596909 () Bool)

(assert (=> b!5788350 (= e!3554961 (and tp!1596912 tp!1596909))))

(assert (=> b!5787479 (= tp!1596610 e!3554961)))

(assert (= (and b!5787479 ((_ is ElementMatch!15799) (regOne!32111 (regTwo!32111 r!7292)))) b!5788347))

(assert (= (and b!5787479 ((_ is Concat!24644) (regOne!32111 (regTwo!32111 r!7292)))) b!5788348))

(assert (= (and b!5787479 ((_ is Star!15799) (regOne!32111 (regTwo!32111 r!7292)))) b!5788349))

(assert (= (and b!5787479 ((_ is Union!15799) (regOne!32111 (regTwo!32111 r!7292)))) b!5788350))

(declare-fun b!5788351 () Bool)

(declare-fun e!3554962 () Bool)

(assert (=> b!5788351 (= e!3554962 tp_is_empty!40851)))

(declare-fun b!5788352 () Bool)

(declare-fun tp!1596916 () Bool)

(declare-fun tp!1596915 () Bool)

(assert (=> b!5788352 (= e!3554962 (and tp!1596916 tp!1596915))))

(declare-fun b!5788353 () Bool)

(declare-fun tp!1596913 () Bool)

(assert (=> b!5788353 (= e!3554962 tp!1596913)))

(declare-fun b!5788354 () Bool)

(declare-fun tp!1596917 () Bool)

(declare-fun tp!1596914 () Bool)

(assert (=> b!5788354 (= e!3554962 (and tp!1596917 tp!1596914))))

(assert (=> b!5787479 (= tp!1596607 e!3554962)))

(assert (= (and b!5787479 ((_ is ElementMatch!15799) (regTwo!32111 (regTwo!32111 r!7292)))) b!5788351))

(assert (= (and b!5787479 ((_ is Concat!24644) (regTwo!32111 (regTwo!32111 r!7292)))) b!5788352))

(assert (= (and b!5787479 ((_ is Star!15799) (regTwo!32111 (regTwo!32111 r!7292)))) b!5788353))

(assert (= (and b!5787479 ((_ is Union!15799) (regTwo!32111 (regTwo!32111 r!7292)))) b!5788354))

(declare-fun b!5788355 () Bool)

(declare-fun e!3554963 () Bool)

(assert (=> b!5788355 (= e!3554963 tp_is_empty!40851)))

(declare-fun b!5788356 () Bool)

(declare-fun tp!1596921 () Bool)

(declare-fun tp!1596920 () Bool)

(assert (=> b!5788356 (= e!3554963 (and tp!1596921 tp!1596920))))

(declare-fun b!5788357 () Bool)

(declare-fun tp!1596918 () Bool)

(assert (=> b!5788357 (= e!3554963 tp!1596918)))

(declare-fun b!5788358 () Bool)

(declare-fun tp!1596922 () Bool)

(declare-fun tp!1596919 () Bool)

(assert (=> b!5788358 (= e!3554963 (and tp!1596922 tp!1596919))))

(assert (=> b!5787478 (= tp!1596606 e!3554963)))

(assert (= (and b!5787478 ((_ is ElementMatch!15799) (reg!16128 (regTwo!32111 r!7292)))) b!5788355))

(assert (= (and b!5787478 ((_ is Concat!24644) (reg!16128 (regTwo!32111 r!7292)))) b!5788356))

(assert (= (and b!5787478 ((_ is Star!15799) (reg!16128 (regTwo!32111 r!7292)))) b!5788357))

(assert (= (and b!5787478 ((_ is Union!15799) (reg!16128 (regTwo!32111 r!7292)))) b!5788358))

(declare-fun b!5788359 () Bool)

(declare-fun e!3554964 () Bool)

(assert (=> b!5788359 (= e!3554964 tp_is_empty!40851)))

(declare-fun b!5788360 () Bool)

(declare-fun tp!1596926 () Bool)

(declare-fun tp!1596925 () Bool)

(assert (=> b!5788360 (= e!3554964 (and tp!1596926 tp!1596925))))

(declare-fun b!5788361 () Bool)

(declare-fun tp!1596923 () Bool)

(assert (=> b!5788361 (= e!3554964 tp!1596923)))

(declare-fun b!5788362 () Bool)

(declare-fun tp!1596927 () Bool)

(declare-fun tp!1596924 () Bool)

(assert (=> b!5788362 (= e!3554964 (and tp!1596927 tp!1596924))))

(assert (=> b!5787469 (= tp!1596599 e!3554964)))

(assert (= (and b!5787469 ((_ is ElementMatch!15799) (regOne!32110 (reg!16128 r!7292)))) b!5788359))

(assert (= (and b!5787469 ((_ is Concat!24644) (regOne!32110 (reg!16128 r!7292)))) b!5788360))

(assert (= (and b!5787469 ((_ is Star!15799) (regOne!32110 (reg!16128 r!7292)))) b!5788361))

(assert (= (and b!5787469 ((_ is Union!15799) (regOne!32110 (reg!16128 r!7292)))) b!5788362))

(declare-fun b!5788363 () Bool)

(declare-fun e!3554965 () Bool)

(assert (=> b!5788363 (= e!3554965 tp_is_empty!40851)))

(declare-fun b!5788364 () Bool)

(declare-fun tp!1596931 () Bool)

(declare-fun tp!1596930 () Bool)

(assert (=> b!5788364 (= e!3554965 (and tp!1596931 tp!1596930))))

(declare-fun b!5788365 () Bool)

(declare-fun tp!1596928 () Bool)

(assert (=> b!5788365 (= e!3554965 tp!1596928)))

(declare-fun b!5788366 () Bool)

(declare-fun tp!1596932 () Bool)

(declare-fun tp!1596929 () Bool)

(assert (=> b!5788366 (= e!3554965 (and tp!1596932 tp!1596929))))

(assert (=> b!5787469 (= tp!1596598 e!3554965)))

(assert (= (and b!5787469 ((_ is ElementMatch!15799) (regTwo!32110 (reg!16128 r!7292)))) b!5788363))

(assert (= (and b!5787469 ((_ is Concat!24644) (regTwo!32110 (reg!16128 r!7292)))) b!5788364))

(assert (= (and b!5787469 ((_ is Star!15799) (regTwo!32110 (reg!16128 r!7292)))) b!5788365))

(assert (= (and b!5787469 ((_ is Union!15799) (regTwo!32110 (reg!16128 r!7292)))) b!5788366))

(declare-fun b_lambda!218209 () Bool)

(assert (= b_lambda!218207 (or d!1823305 b_lambda!218209)))

(declare-fun bs!1366589 () Bool)

(declare-fun d!1823645 () Bool)

(assert (= bs!1366589 (and d!1823645 d!1823305)))

(assert (=> bs!1366589 (= (dynLambda!24890 lambda!315516 (h!70020 (exprs!5683 setElem!38880))) (validRegex!7535 (h!70020 (exprs!5683 setElem!38880))))))

(declare-fun m!6732500 () Bool)

(assert (=> bs!1366589 m!6732500))

(assert (=> b!5788224 d!1823645))

(declare-fun b_lambda!218211 () Bool)

(assert (= b_lambda!218185 (or d!1823241 b_lambda!218211)))

(declare-fun bs!1366590 () Bool)

(declare-fun d!1823647 () Bool)

(assert (= bs!1366590 (and d!1823647 d!1823241)))

(assert (=> bs!1366590 (= (dynLambda!24890 lambda!315480 (h!70020 (unfocusZipperList!1227 zl!343))) (validRegex!7535 (h!70020 (unfocusZipperList!1227 zl!343))))))

(declare-fun m!6732502 () Bool)

(assert (=> bs!1366590 m!6732502))

(assert (=> b!5787812 d!1823647))

(declare-fun b_lambda!218213 () Bool)

(assert (= b_lambda!218183 (or b!5786785 b_lambda!218213)))

(assert (=> d!1823463 d!1823317))

(declare-fun b_lambda!218215 () Bool)

(assert (= b_lambda!218205 (or d!1823253 b_lambda!218215)))

(declare-fun bs!1366591 () Bool)

(declare-fun d!1823649 () Bool)

(assert (= bs!1366591 (and d!1823649 d!1823253)))

(assert (=> bs!1366591 (= (dynLambda!24890 lambda!315489 (h!70020 lt!2296628)) (validRegex!7535 (h!70020 lt!2296628)))))

(declare-fun m!6732504 () Bool)

(assert (=> bs!1366591 m!6732504))

(assert (=> b!5788152 d!1823649))

(declare-fun b_lambda!218217 () Bool)

(assert (= b_lambda!218203 (or d!1823309 b_lambda!218217)))

(declare-fun bs!1366592 () Bool)

(declare-fun d!1823651 () Bool)

(assert (= bs!1366592 (and d!1823651 d!1823309)))

(assert (=> bs!1366592 (= (dynLambda!24890 lambda!315519 (h!70020 (exprs!5683 (h!70022 zl!343)))) (validRegex!7535 (h!70020 (exprs!5683 (h!70022 zl!343)))))))

(declare-fun m!6732506 () Bool)

(assert (=> bs!1366592 m!6732506))

(assert (=> b!5788128 d!1823651))

(declare-fun b_lambda!218219 () Bool)

(assert (= b_lambda!218187 (or d!1823311 b_lambda!218219)))

(declare-fun bs!1366593 () Bool)

(declare-fun d!1823653 () Bool)

(assert (= bs!1366593 (and d!1823653 d!1823311)))

(assert (=> bs!1366593 (= (dynLambda!24890 lambda!315520 (h!70020 (exprs!5683 (h!70022 zl!343)))) (validRegex!7535 (h!70020 (exprs!5683 (h!70022 zl!343)))))))

(assert (=> bs!1366593 m!6732506))

(assert (=> b!5787893 d!1823653))

(check-sat (not b!5787951) (not b!5787867) (not b!5787844) (not b!5787894) (not b_lambda!218211) (not b!5788350) (not b!5788304) (not b!5788129) (not b!5788292) (not d!1823613) (not b!5787956) (not bm!450678) (not b!5788117) (not b!5787948) (not b!5788280) (not b!5787674) (not bm!450711) (not b!5788334) (not b!5788294) (not b!5788220) (not d!1823391) (not b!5787863) (not b!5788361) (not b!5788163) (not b!5788054) (not b!5788209) (not b!5788108) (not b!5788356) (not b!5788358) (not b!5788030) (not d!1823511) (not b!5788265) (not bs!1366592) (not b!5787742) (not b!5788058) (not b!5788330) (not b!5788357) (not b!5788315) (not bm!450691) (not b!5788167) (not d!1823609) (not b!5788201) (not b!5788309) (not bm!450740) (not b!5787848) (not bm!450660) (not b!5788284) (not b!5788217) (not bm!450710) (not b!5788155) (not bm!450735) (not b!5788253) tp_is_empty!40851 (not b!5788254) (not d!1823503) (not d!1823521) (not bm!450723) (not d!1823519) (not b!5788332) (not b!5788131) (not bm!450739) (not b!5788319) (not b!5788298) (not b!5787947) (not bm!450737) (not b!5788208) (not b!5788142) (not b!5788065) (not b!5788333) (not b!5788171) (not b!5788245) (not b!5788324) (not d!1823463) (not setNonEmpty!38894) (not b!5787966) (not b!5788056) (not b!5788300) (not b!5788341) (not b!5788360) (not bm!450722) (not b_lambda!218217) (not b!5788329) (not bm!450672) (not b!5788305) (not b!5788270) (not bm!450694) (not b!5787905) (not d!1823563) (not b!5788109) (not bm!450703) (not b!5788215) (not b!5788325) (not b!5788307) (not bm!450693) (not bm!450685) (not d!1823407) (not d!1823595) (not b!5788353) (not d!1823533) (not b_lambda!218215) (not b!5788354) (not bm!450709) (not bs!1366589) (not b!5787735) (not bm!450707) (not b!5788276) (not bm!450690) (not b!5788250) (not b!5787953) (not b!5788345) (not b!5788362) (not d!1823409) (not b!5788349) (not d!1823393) (not b!5788283) (not b!5788288) (not b!5788157) (not b!5787959) (not b!5788281) (not d!1823579) (not b!5788301) (not b!5788308) (not b_lambda!218209) (not b!5788153) (not d!1823489) (not b!5788286) (not d!1823639) (not bm!450717) (not d!1823617) (not b!5787870) (not b!5788272) (not b!5787815) (not b!5787738) (not bm!450736) (not d!1823601) (not b!5788125) (not b!5788261) (not d!1823389) (not b!5788266) (not d!1823623) (not b!5788252) (not b!5787645) (not b!5788365) (not b!5788289) (not b!5788274) (not b!5788338) (not b!5788299) (not b!5787837) (not b!5788102) (not bs!1366591) (not bm!450716) (not b!5788219) (not bm!450721) (not d!1823449) (not b!5788227) (not b!5788296) (not b!5788320) (not b!5788212) (not b!5788323) (not b!5787954) (not d!1823497) (not b!5788061) (not b!5787846) (not b!5788213) (not b!5787739) (not b!5788293) (not b!5787731) (not bm!450715) (not b!5787852) (not d!1823611) (not b!5788260) (not b_lambda!218213) (not b!5787733) (not setNonEmpty!38892) (not b!5788062) (not bm!450645) (not bs!1366590) (not b!5788327) (not b!5788340) (not b!5787864) (not b!5788366) (not b_lambda!218171) (not b!5788216) (not b!5787950) (not b!5787871) (not bs!1366593) (not b!5788346) (not d!1823443) (not b_lambda!218219) (not b!5788258) (not b!5788290) (not b!5788317) (not b!5788313) (not b!5788174) (not d!1823575) (not b!5788256) (not bm!450668) (not b!5788297) (not b!5788225) (not b!5788348) (not b!5788257) (not b!5788118) (not b!5788282) (not b!5788170) (not d!1823621) (not d!1823619) (not d!1823603) (not bm!450696) (not b!5788337) (not b!5788269) (not b!5788237) (not b!5788352) (not b!5788342) (not b!5788262) (not b!5788321) (not b!5788285) (not d!1823553) (not b!5788277) (not bm!450697) (not bm!450667) (not b!5788344) (not b!5788273) (not bm!450686) (not b!5788278) (not b!5788311) (not bm!450706) (not b!5787900) (not b!5787855) (not b!5787851) (not b!5787865) (not b!5788223) (not b!5787757) (not bm!450733) (not b!5787794) (not d!1823615) (not b!5788364) (not b!5788303) (not b!5787869) (not d!1823447) (not b!5788268) (not b!5788336) (not bm!450741) (not b!5788264) (not bm!450643) (not d!1823605) (not b!5788116) (not b!5788312) (not b!5788229) (not bm!450705) (not b!5787952) (not d!1823413) (not bm!450676) (not b!5787813) (not b!5788165) (not b!5788328) (not b!5788316))
(check-sat)
