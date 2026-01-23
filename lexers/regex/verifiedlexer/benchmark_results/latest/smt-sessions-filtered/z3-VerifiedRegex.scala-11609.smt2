; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!645310 () Bool)

(assert start!645310)

(declare-fun b!6599046 () Bool)

(assert (=> b!6599046 true))

(assert (=> b!6599046 true))

(declare-fun lambda!367775 () Int)

(declare-fun lambda!367774 () Int)

(assert (=> b!6599046 (not (= lambda!367775 lambda!367774))))

(assert (=> b!6599046 true))

(assert (=> b!6599046 true))

(declare-fun b!6599070 () Bool)

(assert (=> b!6599070 true))

(declare-fun bs!1692047 () Bool)

(declare-fun b!6599055 () Bool)

(assert (= bs!1692047 (and b!6599055 b!6599046)))

(declare-datatypes ((C!33200 0))(
  ( (C!33201 (val!26302 Int)) )
))
(declare-datatypes ((Regex!16465 0))(
  ( (ElementMatch!16465 (c!1215438 C!33200)) (Concat!25310 (regOne!33442 Regex!16465) (regTwo!33442 Regex!16465)) (EmptyExpr!16465) (Star!16465 (reg!16794 Regex!16465)) (EmptyLang!16465) (Union!16465 (regOne!33443 Regex!16465) (regTwo!33443 Regex!16465)) )
))
(declare-fun r!7292 () Regex!16465)

(declare-datatypes ((List!65694 0))(
  ( (Nil!65570) (Cons!65570 (h!72018 C!33200) (t!379346 List!65694)) )
))
(declare-fun s!2326 () List!65694)

(declare-fun lt!2413033 () Regex!16465)

(declare-fun lambda!367777 () Int)

(assert (=> bs!1692047 (= (and (= Nil!65570 s!2326) (= (reg!16794 (regOne!33442 r!7292)) (regOne!33442 r!7292)) (= lt!2413033 (regTwo!33442 r!7292))) (= lambda!367777 lambda!367774))))

(assert (=> bs!1692047 (not (= lambda!367777 lambda!367775))))

(assert (=> b!6599055 true))

(assert (=> b!6599055 true))

(declare-fun b!6599034 () Bool)

(declare-fun e!3993085 () Bool)

(declare-fun e!3993066 () Bool)

(assert (=> b!6599034 (= e!3993085 e!3993066)))

(declare-fun res!2705874 () Bool)

(assert (=> b!6599034 (=> res!2705874 e!3993066)))

(declare-fun lt!2413031 () Regex!16465)

(declare-fun regexDepth!362 (Regex!16465) Int)

(assert (=> b!6599034 (= res!2705874 (< (regexDepth!362 r!7292) (regexDepth!362 lt!2413031)))))

(declare-datatypes ((List!65695 0))(
  ( (Nil!65571) (Cons!65571 (h!72019 Regex!16465) (t!379347 List!65695)) )
))
(declare-datatypes ((Context!11698 0))(
  ( (Context!11699 (exprs!6349 List!65695)) )
))
(declare-datatypes ((List!65696 0))(
  ( (Nil!65572) (Cons!65572 (h!72020 Context!11698) (t!379348 List!65696)) )
))
(declare-fun zl!343 () List!65696)

(declare-fun generalisedConcat!2062 (List!65695) Regex!16465)

(assert (=> b!6599034 (= lt!2413031 (generalisedConcat!2062 (t!379347 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun b!6599035 () Bool)

(declare-fun res!2705871 () Bool)

(declare-fun e!3993070 () Bool)

(assert (=> b!6599035 (=> res!2705871 e!3993070)))

(declare-fun isEmpty!37837 (List!65695) Bool)

(assert (=> b!6599035 (= res!2705871 (isEmpty!37837 (t!379347 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun b!6599036 () Bool)

(declare-fun res!2705853 () Bool)

(declare-fun e!3993087 () Bool)

(assert (=> b!6599036 (=> res!2705853 e!3993087)))

(declare-fun lt!2413018 () Context!11698)

(declare-fun lt!2413012 () Regex!16465)

(declare-fun unfocusZipper!2207 (List!65696) Regex!16465)

(assert (=> b!6599036 (= res!2705853 (not (= (unfocusZipper!2207 (Cons!65572 lt!2413018 Nil!65572)) lt!2413012)))))

(declare-fun b!6599037 () Bool)

(declare-fun e!3993067 () Bool)

(declare-fun e!3993079 () Bool)

(assert (=> b!6599037 (= e!3993067 e!3993079)))

(declare-fun res!2705867 () Bool)

(assert (=> b!6599037 (=> res!2705867 e!3993079)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2413029 () (InoxSet Context!11698))

(declare-fun lt!2413004 () (InoxSet Context!11698))

(assert (=> b!6599037 (= res!2705867 (not (= lt!2413029 lt!2413004)))))

(declare-fun lambda!367776 () Int)

(declare-fun lt!2413008 () (InoxSet Context!11698))

(declare-fun lt!2413011 () Context!11698)

(declare-fun flatMap!1970 ((InoxSet Context!11698) Int) (InoxSet Context!11698))

(declare-fun derivationStepZipperUp!1639 (Context!11698 C!33200) (InoxSet Context!11698))

(assert (=> b!6599037 (= (flatMap!1970 lt!2413008 lambda!367776) (derivationStepZipperUp!1639 lt!2413011 (h!72018 s!2326)))))

(declare-datatypes ((Unit!159195 0))(
  ( (Unit!159196) )
))
(declare-fun lt!2413022 () Unit!159195)

(declare-fun lemmaFlatMapOnSingletonSet!1496 ((InoxSet Context!11698) Context!11698 Int) Unit!159195)

(assert (=> b!6599037 (= lt!2413022 (lemmaFlatMapOnSingletonSet!1496 lt!2413008 lt!2413011 lambda!367776))))

(declare-fun lt!2413003 () (InoxSet Context!11698))

(assert (=> b!6599037 (= lt!2413003 (derivationStepZipperUp!1639 lt!2413011 (h!72018 s!2326)))))

(declare-fun derivationStepZipper!2431 ((InoxSet Context!11698) C!33200) (InoxSet Context!11698))

(assert (=> b!6599037 (= lt!2413029 (derivationStepZipper!2431 lt!2413008 (h!72018 s!2326)))))

(assert (=> b!6599037 (= lt!2413008 (store ((as const (Array Context!11698 Bool)) false) lt!2413011 true))))

(declare-fun lt!2413023 () List!65695)

(assert (=> b!6599037 (= lt!2413011 (Context!11699 (Cons!65571 (reg!16794 (regOne!33442 r!7292)) lt!2413023)))))

(declare-fun b!6599038 () Bool)

(declare-fun e!3993083 () Bool)

(declare-fun tp!1819607 () Bool)

(assert (=> b!6599038 (= e!3993083 tp!1819607)))

(declare-fun b!6599039 () Bool)

(declare-fun tp!1819598 () Bool)

(declare-fun tp!1819603 () Bool)

(assert (=> b!6599039 (= e!3993083 (and tp!1819598 tp!1819603))))

(declare-fun tp!1819604 () Bool)

(declare-fun e!3993064 () Bool)

(declare-fun b!6599040 () Bool)

(declare-fun e!3993088 () Bool)

(declare-fun inv!84409 (Context!11698) Bool)

(assert (=> b!6599040 (= e!3993088 (and (inv!84409 (h!72020 zl!343)) e!3993064 tp!1819604))))

(declare-fun b!6599041 () Bool)

(declare-fun res!2705856 () Bool)

(declare-fun e!3993073 () Bool)

(assert (=> b!6599041 (=> res!2705856 e!3993073)))

(get-info :version)

(assert (=> b!6599041 (= res!2705856 (or ((_ is EmptyExpr!16465) r!7292) ((_ is EmptyLang!16465) r!7292) ((_ is ElementMatch!16465) r!7292) ((_ is Union!16465) r!7292) (not ((_ is Concat!25310) r!7292))))))

(declare-fun b!6599042 () Bool)

(declare-fun res!2705851 () Bool)

(declare-fun e!3993069 () Bool)

(assert (=> b!6599042 (=> res!2705851 e!3993069)))

(declare-fun lt!2413013 () Bool)

(assert (=> b!6599042 (= res!2705851 (not lt!2413013))))

(declare-fun b!6599043 () Bool)

(declare-fun e!3993078 () Bool)

(assert (=> b!6599043 (= e!3993079 e!3993078)))

(declare-fun res!2705859 () Bool)

(assert (=> b!6599043 (=> res!2705859 e!3993078)))

(assert (=> b!6599043 (= res!2705859 (not (= r!7292 lt!2413012)))))

(assert (=> b!6599043 (= lt!2413012 (Concat!25310 lt!2413033 (regTwo!33442 r!7292)))))

(declare-fun b!6599044 () Bool)

(declare-fun e!3993068 () Bool)

(assert (=> b!6599044 (= e!3993068 e!3993085)))

(declare-fun res!2705843 () Bool)

(assert (=> b!6599044 (=> res!2705843 e!3993085)))

(declare-fun lt!2413039 () (InoxSet Context!11698))

(declare-fun lt!2413016 () (InoxSet Context!11698))

(assert (=> b!6599044 (= res!2705843 (not (= lt!2413039 (derivationStepZipper!2431 lt!2413016 (h!72018 s!2326)))))))

(declare-fun lt!2413001 () Context!11698)

(assert (=> b!6599044 (= (flatMap!1970 lt!2413016 lambda!367776) (derivationStepZipperUp!1639 lt!2413001 (h!72018 s!2326)))))

(declare-fun lt!2413020 () Unit!159195)

(assert (=> b!6599044 (= lt!2413020 (lemmaFlatMapOnSingletonSet!1496 lt!2413016 lt!2413001 lambda!367776))))

(assert (=> b!6599044 (= lt!2413016 (store ((as const (Array Context!11698 Bool)) false) lt!2413001 true))))

(declare-fun b!6599045 () Bool)

(declare-fun res!2705860 () Bool)

(assert (=> b!6599045 (=> res!2705860 e!3993073)))

(assert (=> b!6599045 (= res!2705860 (not (= r!7292 (generalisedConcat!2062 (exprs!6349 (h!72020 zl!343))))))))

(declare-fun res!2705876 () Bool)

(declare-fun e!3993075 () Bool)

(assert (=> start!645310 (=> (not res!2705876) (not e!3993075))))

(declare-fun validRegex!8201 (Regex!16465) Bool)

(assert (=> start!645310 (= res!2705876 (validRegex!8201 r!7292))))

(assert (=> start!645310 e!3993075))

(assert (=> start!645310 e!3993083))

(declare-fun condSetEmpty!45060 () Bool)

(declare-fun z!1189 () (InoxSet Context!11698))

(assert (=> start!645310 (= condSetEmpty!45060 (= z!1189 ((as const (Array Context!11698 Bool)) false)))))

(declare-fun setRes!45060 () Bool)

(assert (=> start!645310 setRes!45060))

(assert (=> start!645310 e!3993088))

(declare-fun e!3993071 () Bool)

(assert (=> start!645310 e!3993071))

(assert (=> b!6599046 (= e!3993073 e!3993070)))

(declare-fun res!2705865 () Bool)

(assert (=> b!6599046 (=> res!2705865 e!3993070)))

(declare-fun lt!2413005 () Bool)

(declare-fun lt!2413034 () Bool)

(assert (=> b!6599046 (= res!2705865 (or (not (= lt!2413005 lt!2413034)) ((_ is Nil!65570) s!2326)))))

(declare-fun Exists!3535 (Int) Bool)

(assert (=> b!6599046 (= (Exists!3535 lambda!367774) (Exists!3535 lambda!367775))))

(declare-fun lt!2413040 () Unit!159195)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2072 (Regex!16465 Regex!16465 List!65694) Unit!159195)

(assert (=> b!6599046 (= lt!2413040 (lemmaExistCutMatchRandMatchRSpecEquivalent!2072 (regOne!33442 r!7292) (regTwo!33442 r!7292) s!2326))))

(assert (=> b!6599046 (= lt!2413034 (Exists!3535 lambda!367774))))

(declare-datatypes ((tuple2!66888 0))(
  ( (tuple2!66889 (_1!36747 List!65694) (_2!36747 List!65694)) )
))
(declare-datatypes ((Option!16356 0))(
  ( (None!16355) (Some!16355 (v!52544 tuple2!66888)) )
))
(declare-fun isDefined!13059 (Option!16356) Bool)

(declare-fun findConcatSeparation!2770 (Regex!16465 Regex!16465 List!65694 List!65694 List!65694) Option!16356)

(assert (=> b!6599046 (= lt!2413034 (isDefined!13059 (findConcatSeparation!2770 (regOne!33442 r!7292) (regTwo!33442 r!7292) Nil!65570 s!2326 s!2326)))))

(declare-fun lt!2413025 () Unit!159195)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2534 (Regex!16465 Regex!16465 List!65694) Unit!159195)

(assert (=> b!6599046 (= lt!2413025 (lemmaFindConcatSeparationEquivalentToExists!2534 (regOne!33442 r!7292) (regTwo!33442 r!7292) s!2326))))

(declare-fun b!6599047 () Bool)

(declare-fun res!2705875 () Bool)

(assert (=> b!6599047 (=> res!2705875 e!3993079)))

(declare-fun matchZipper!2477 ((InoxSet Context!11698) List!65694) Bool)

(assert (=> b!6599047 (= res!2705875 (not (= (matchZipper!2477 lt!2413008 s!2326) (matchZipper!2477 lt!2413029 (t!379346 s!2326)))))))

(declare-fun b!6599048 () Bool)

(declare-fun e!3993086 () Bool)

(declare-fun e!3993084 () Bool)

(assert (=> b!6599048 (= e!3993086 e!3993084)))

(declare-fun res!2705868 () Bool)

(assert (=> b!6599048 (=> res!2705868 e!3993084)))

(declare-fun matchR!8648 (Regex!16465 List!65694) Bool)

(assert (=> b!6599048 (= res!2705868 (not (matchR!8648 (regTwo!33442 r!7292) s!2326)))))

(assert (=> b!6599048 (= (matchR!8648 lt!2413031 s!2326) (matchZipper!2477 lt!2413016 s!2326))))

(declare-fun lt!2413037 () Unit!159195)

(declare-fun lt!2413027 () List!65696)

(declare-fun theoremZipperRegexEquiv!887 ((InoxSet Context!11698) List!65696 Regex!16465 List!65694) Unit!159195)

(assert (=> b!6599048 (= lt!2413037 (theoremZipperRegexEquiv!887 lt!2413016 lt!2413027 lt!2413031 s!2326))))

(declare-fun b!6599049 () Bool)

(declare-fun res!2705864 () Bool)

(assert (=> b!6599049 (=> res!2705864 e!3993079)))

(declare-fun lt!2413036 () Regex!16465)

(assert (=> b!6599049 (= res!2705864 (not (= lt!2413036 r!7292)))))

(declare-fun b!6599050 () Bool)

(assert (=> b!6599050 (= e!3993066 e!3993086)))

(declare-fun res!2705857 () Bool)

(assert (=> b!6599050 (=> res!2705857 e!3993086)))

(declare-fun zipperDepth!402 (List!65696) Int)

(assert (=> b!6599050 (= res!2705857 (< (zipperDepth!402 zl!343) (zipperDepth!402 lt!2413027)))))

(assert (=> b!6599050 (= lt!2413027 (Cons!65572 lt!2413001 Nil!65572))))

(declare-fun b!6599051 () Bool)

(declare-fun tp_is_empty!42183 () Bool)

(declare-fun tp!1819599 () Bool)

(assert (=> b!6599051 (= e!3993071 (and tp_is_empty!42183 tp!1819599))))

(declare-fun b!6599052 () Bool)

(declare-fun e!3993082 () Bool)

(declare-fun nullable!6458 (Regex!16465) Bool)

(assert (=> b!6599052 (= e!3993082 (nullable!6458 (regOne!33442 (regOne!33442 r!7292))))))

(declare-fun b!6599053 () Bool)

(assert (=> b!6599053 (= e!3993083 tp_is_empty!42183)))

(declare-fun b!6599054 () Bool)

(declare-fun e!3993076 () Bool)

(assert (=> b!6599054 (= e!3993078 e!3993076)))

(declare-fun res!2705861 () Bool)

(assert (=> b!6599054 (=> res!2705861 e!3993076)))

(declare-fun lt!2413026 () Regex!16465)

(assert (=> b!6599054 (= res!2705861 (not (= (unfocusZipper!2207 (Cons!65572 lt!2413011 Nil!65572)) lt!2413026)))))

(assert (=> b!6599054 (= lt!2413026 (Concat!25310 (reg!16794 (regOne!33442 r!7292)) lt!2413012))))

(assert (=> b!6599055 (= e!3993084 (validRegex!8201 (reg!16794 (regOne!33442 r!7292))))))

(assert (=> b!6599055 (= (isDefined!13059 (findConcatSeparation!2770 (reg!16794 (regOne!33442 r!7292)) lt!2413033 Nil!65570 Nil!65570 Nil!65570)) (Exists!3535 lambda!367777))))

(declare-fun lt!2413015 () Unit!159195)

(assert (=> b!6599055 (= lt!2413015 (lemmaFindConcatSeparationEquivalentToExists!2534 (reg!16794 (regOne!33442 r!7292)) lt!2413033 Nil!65570))))

(declare-fun matchRSpec!3566 (Regex!16465 List!65694) Bool)

(assert (=> b!6599055 (= (matchR!8648 lt!2413033 Nil!65570) (matchRSpec!3566 lt!2413033 Nil!65570))))

(declare-fun lt!2413002 () Unit!159195)

(declare-fun mainMatchTheorem!3566 (Regex!16465 List!65694) Unit!159195)

(assert (=> b!6599055 (= lt!2413002 (mainMatchTheorem!3566 lt!2413033 Nil!65570))))

(declare-fun b!6599056 () Bool)

(declare-fun e!3993074 () Bool)

(assert (=> b!6599056 (= e!3993075 e!3993074)))

(declare-fun res!2705847 () Bool)

(assert (=> b!6599056 (=> (not res!2705847) (not e!3993074))))

(assert (=> b!6599056 (= res!2705847 (= r!7292 lt!2413036))))

(assert (=> b!6599056 (= lt!2413036 (unfocusZipper!2207 zl!343))))

(declare-fun b!6599057 () Bool)

(declare-fun e!3993080 () Unit!159195)

(declare-fun Unit!159197 () Unit!159195)

(assert (=> b!6599057 (= e!3993080 Unit!159197)))

(declare-fun lt!2413009 () (InoxSet Context!11698))

(declare-fun lt!2413038 () Unit!159195)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1296 ((InoxSet Context!11698) (InoxSet Context!11698) List!65694) Unit!159195)

(assert (=> b!6599057 (= lt!2413038 (lemmaZipperConcatMatchesSameAsBothZippers!1296 lt!2413009 lt!2413039 (t!379346 s!2326)))))

(declare-fun res!2705869 () Bool)

(assert (=> b!6599057 (= res!2705869 (matchZipper!2477 lt!2413009 (t!379346 s!2326)))))

(declare-fun e!3993072 () Bool)

(assert (=> b!6599057 (=> res!2705869 e!3993072)))

(assert (=> b!6599057 (= (matchZipper!2477 ((_ map or) lt!2413009 lt!2413039) (t!379346 s!2326)) e!3993072)))

(declare-fun b!6599058 () Bool)

(declare-fun Unit!159198 () Unit!159195)

(assert (=> b!6599058 (= e!3993080 Unit!159198)))

(declare-fun b!6599059 () Bool)

(declare-fun res!2705852 () Bool)

(assert (=> b!6599059 (=> res!2705852 e!3993068)))

(declare-fun lt!2413010 () Bool)

(assert (=> b!6599059 (= res!2705852 lt!2413010)))

(declare-fun b!6599060 () Bool)

(assert (=> b!6599060 (= e!3993087 e!3993069)))

(declare-fun res!2705848 () Bool)

(assert (=> b!6599060 (=> res!2705848 e!3993069)))

(assert (=> b!6599060 (= res!2705848 lt!2413005)))

(assert (=> b!6599060 (= (matchR!8648 lt!2413026 s!2326) (matchRSpec!3566 lt!2413026 s!2326))))

(declare-fun lt!2413021 () Unit!159195)

(assert (=> b!6599060 (= lt!2413021 (mainMatchTheorem!3566 lt!2413026 s!2326))))

(declare-fun b!6599061 () Bool)

(assert (=> b!6599061 (= e!3993072 (matchZipper!2477 lt!2413039 (t!379346 s!2326)))))

(declare-fun setElem!45060 () Context!11698)

(declare-fun e!3993081 () Bool)

(declare-fun setNonEmpty!45060 () Bool)

(declare-fun tp!1819600 () Bool)

(assert (=> setNonEmpty!45060 (= setRes!45060 (and tp!1819600 (inv!84409 setElem!45060) e!3993081))))

(declare-fun setRest!45060 () (InoxSet Context!11698))

(assert (=> setNonEmpty!45060 (= z!1189 ((_ map or) (store ((as const (Array Context!11698 Bool)) false) setElem!45060 true) setRest!45060))))

(declare-fun b!6599062 () Bool)

(declare-fun tp!1819605 () Bool)

(assert (=> b!6599062 (= e!3993064 tp!1819605)))

(declare-fun b!6599063 () Bool)

(declare-fun res!2705844 () Bool)

(declare-fun e!3993077 () Bool)

(assert (=> b!6599063 (=> res!2705844 e!3993077)))

(assert (=> b!6599063 (= res!2705844 (or ((_ is Concat!25310) (regOne!33442 r!7292)) (not ((_ is Star!16465) (regOne!33442 r!7292)))))))

(declare-fun b!6599064 () Bool)

(assert (=> b!6599064 (= e!3993069 e!3993068)))

(declare-fun res!2705842 () Bool)

(assert (=> b!6599064 (=> res!2705842 e!3993068)))

(declare-fun e!3993065 () Bool)

(assert (=> b!6599064 (= res!2705842 e!3993065)))

(declare-fun res!2705854 () Bool)

(assert (=> b!6599064 (=> (not res!2705854) (not e!3993065))))

(assert (=> b!6599064 (= res!2705854 (not lt!2413010))))

(assert (=> b!6599064 (= lt!2413010 (matchZipper!2477 lt!2413009 (t!379346 s!2326)))))

(declare-fun b!6599065 () Bool)

(declare-fun res!2705858 () Bool)

(assert (=> b!6599065 (=> res!2705858 e!3993077)))

(assert (=> b!6599065 (= res!2705858 e!3993082)))

(declare-fun res!2705873 () Bool)

(assert (=> b!6599065 (=> (not res!2705873) (not e!3993082))))

(assert (=> b!6599065 (= res!2705873 ((_ is Concat!25310) (regOne!33442 r!7292)))))

(declare-fun b!6599066 () Bool)

(declare-fun res!2705872 () Bool)

(assert (=> b!6599066 (=> (not res!2705872) (not e!3993075))))

(declare-fun toList!10249 ((InoxSet Context!11698)) List!65696)

(assert (=> b!6599066 (= res!2705872 (= (toList!10249 z!1189) zl!343))))

(declare-fun b!6599067 () Bool)

(declare-fun res!2705866 () Bool)

(assert (=> b!6599067 (=> res!2705866 e!3993068)))

(assert (=> b!6599067 (= res!2705866 (not (matchZipper!2477 lt!2413039 (t!379346 s!2326))))))

(declare-fun setIsEmpty!45060 () Bool)

(assert (=> setIsEmpty!45060 setRes!45060))

(declare-fun b!6599068 () Bool)

(assert (=> b!6599068 (= e!3993077 e!3993067)))

(declare-fun res!2705870 () Bool)

(assert (=> b!6599068 (=> res!2705870 e!3993067)))

(assert (=> b!6599068 (= res!2705870 (not (= lt!2413009 lt!2413004)))))

(declare-fun derivationStepZipperDown!1713 (Regex!16465 Context!11698 C!33200) (InoxSet Context!11698))

(assert (=> b!6599068 (= lt!2413004 (derivationStepZipperDown!1713 (reg!16794 (regOne!33442 r!7292)) lt!2413018 (h!72018 s!2326)))))

(assert (=> b!6599068 (= lt!2413018 (Context!11699 lt!2413023))))

(assert (=> b!6599068 (= lt!2413023 (Cons!65571 lt!2413033 (t!379347 (exprs!6349 (h!72020 zl!343)))))))

(assert (=> b!6599068 (= lt!2413033 (Star!16465 (reg!16794 (regOne!33442 r!7292))))))

(declare-fun b!6599069 () Bool)

(declare-fun res!2705863 () Bool)

(assert (=> b!6599069 (=> res!2705863 e!3993069)))

(assert (=> b!6599069 (= res!2705863 (not (matchZipper!2477 z!1189 s!2326)))))

(assert (=> b!6599070 (= e!3993070 e!3993077)))

(declare-fun res!2705850 () Bool)

(assert (=> b!6599070 (=> res!2705850 e!3993077)))

(assert (=> b!6599070 (= res!2705850 (or (and ((_ is ElementMatch!16465) (regOne!33442 r!7292)) (= (c!1215438 (regOne!33442 r!7292)) (h!72018 s!2326))) ((_ is Union!16465) (regOne!33442 r!7292))))))

(declare-fun lt!2413024 () Unit!159195)

(assert (=> b!6599070 (= lt!2413024 e!3993080)))

(declare-fun c!1215437 () Bool)

(assert (=> b!6599070 (= c!1215437 lt!2413013)))

(assert (=> b!6599070 (= lt!2413013 (nullable!6458 (h!72019 (exprs!6349 (h!72020 zl!343)))))))

(assert (=> b!6599070 (= (flatMap!1970 z!1189 lambda!367776) (derivationStepZipperUp!1639 (h!72020 zl!343) (h!72018 s!2326)))))

(declare-fun lt!2413032 () Unit!159195)

(assert (=> b!6599070 (= lt!2413032 (lemmaFlatMapOnSingletonSet!1496 z!1189 (h!72020 zl!343) lambda!367776))))

(assert (=> b!6599070 (= lt!2413039 (derivationStepZipperUp!1639 lt!2413001 (h!72018 s!2326)))))

(assert (=> b!6599070 (= lt!2413009 (derivationStepZipperDown!1713 (h!72019 (exprs!6349 (h!72020 zl!343))) lt!2413001 (h!72018 s!2326)))))

(assert (=> b!6599070 (= lt!2413001 (Context!11699 (t!379347 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun lt!2413007 () (InoxSet Context!11698))

(assert (=> b!6599070 (= lt!2413007 (derivationStepZipperUp!1639 (Context!11699 (Cons!65571 (h!72019 (exprs!6349 (h!72020 zl!343))) (t!379347 (exprs!6349 (h!72020 zl!343))))) (h!72018 s!2326)))))

(declare-fun b!6599071 () Bool)

(assert (=> b!6599071 (= e!3993074 (not e!3993073))))

(declare-fun res!2705845 () Bool)

(assert (=> b!6599071 (=> res!2705845 e!3993073)))

(assert (=> b!6599071 (= res!2705845 (not ((_ is Cons!65572) zl!343)))))

(assert (=> b!6599071 (= lt!2413005 (matchRSpec!3566 r!7292 s!2326))))

(assert (=> b!6599071 (= lt!2413005 (matchR!8648 r!7292 s!2326))))

(declare-fun lt!2413000 () Unit!159195)

(assert (=> b!6599071 (= lt!2413000 (mainMatchTheorem!3566 r!7292 s!2326))))

(declare-fun b!6599072 () Bool)

(assert (=> b!6599072 (= e!3993076 e!3993087)))

(declare-fun res!2705862 () Bool)

(assert (=> b!6599072 (=> res!2705862 e!3993087)))

(declare-fun lt!2413006 () Context!11698)

(assert (=> b!6599072 (= res!2705862 (not (= (unfocusZipper!2207 (Cons!65572 lt!2413006 Nil!65572)) (reg!16794 (regOne!33442 r!7292)))))))

(declare-fun lt!2413019 () (InoxSet Context!11698))

(assert (=> b!6599072 (= (flatMap!1970 lt!2413019 lambda!367776) (derivationStepZipperUp!1639 lt!2413018 (h!72018 s!2326)))))

(declare-fun lt!2413017 () Unit!159195)

(assert (=> b!6599072 (= lt!2413017 (lemmaFlatMapOnSingletonSet!1496 lt!2413019 lt!2413018 lambda!367776))))

(declare-fun lt!2413035 () (InoxSet Context!11698))

(assert (=> b!6599072 (= (flatMap!1970 lt!2413035 lambda!367776) (derivationStepZipperUp!1639 lt!2413006 (h!72018 s!2326)))))

(declare-fun lt!2413014 () Unit!159195)

(assert (=> b!6599072 (= lt!2413014 (lemmaFlatMapOnSingletonSet!1496 lt!2413035 lt!2413006 lambda!367776))))

(declare-fun lt!2413030 () (InoxSet Context!11698))

(assert (=> b!6599072 (= lt!2413030 (derivationStepZipperUp!1639 lt!2413018 (h!72018 s!2326)))))

(declare-fun lt!2413028 () (InoxSet Context!11698))

(assert (=> b!6599072 (= lt!2413028 (derivationStepZipperUp!1639 lt!2413006 (h!72018 s!2326)))))

(assert (=> b!6599072 (= lt!2413019 (store ((as const (Array Context!11698 Bool)) false) lt!2413018 true))))

(assert (=> b!6599072 (= lt!2413035 (store ((as const (Array Context!11698 Bool)) false) lt!2413006 true))))

(assert (=> b!6599072 (= lt!2413006 (Context!11699 (Cons!65571 (reg!16794 (regOne!33442 r!7292)) Nil!65571)))))

(declare-fun b!6599073 () Bool)

(declare-fun res!2705855 () Bool)

(assert (=> b!6599073 (=> res!2705855 e!3993073)))

(declare-fun isEmpty!37838 (List!65696) Bool)

(assert (=> b!6599073 (= res!2705855 (not (isEmpty!37838 (t!379348 zl!343))))))

(declare-fun b!6599074 () Bool)

(declare-fun res!2705846 () Bool)

(assert (=> b!6599074 (=> res!2705846 e!3993073)))

(assert (=> b!6599074 (= res!2705846 (not ((_ is Cons!65571) (exprs!6349 (h!72020 zl!343)))))))

(declare-fun b!6599075 () Bool)

(declare-fun tp!1819602 () Bool)

(declare-fun tp!1819606 () Bool)

(assert (=> b!6599075 (= e!3993083 (and tp!1819602 tp!1819606))))

(declare-fun b!6599076 () Bool)

(declare-fun tp!1819601 () Bool)

(assert (=> b!6599076 (= e!3993081 tp!1819601)))

(declare-fun b!6599077 () Bool)

(declare-fun res!2705849 () Bool)

(assert (=> b!6599077 (=> res!2705849 e!3993073)))

(declare-fun generalisedUnion!2309 (List!65695) Regex!16465)

(declare-fun unfocusZipperList!1886 (List!65696) List!65695)

(assert (=> b!6599077 (= res!2705849 (not (= r!7292 (generalisedUnion!2309 (unfocusZipperList!1886 zl!343)))))))

(declare-fun b!6599078 () Bool)

(assert (=> b!6599078 (= e!3993065 (not (matchZipper!2477 lt!2413039 (t!379346 s!2326))))))

(assert (= (and start!645310 res!2705876) b!6599066))

(assert (= (and b!6599066 res!2705872) b!6599056))

(assert (= (and b!6599056 res!2705847) b!6599071))

(assert (= (and b!6599071 (not res!2705845)) b!6599073))

(assert (= (and b!6599073 (not res!2705855)) b!6599045))

(assert (= (and b!6599045 (not res!2705860)) b!6599074))

(assert (= (and b!6599074 (not res!2705846)) b!6599077))

(assert (= (and b!6599077 (not res!2705849)) b!6599041))

(assert (= (and b!6599041 (not res!2705856)) b!6599046))

(assert (= (and b!6599046 (not res!2705865)) b!6599035))

(assert (= (and b!6599035 (not res!2705871)) b!6599070))

(assert (= (and b!6599070 c!1215437) b!6599057))

(assert (= (and b!6599070 (not c!1215437)) b!6599058))

(assert (= (and b!6599057 (not res!2705869)) b!6599061))

(assert (= (and b!6599070 (not res!2705850)) b!6599065))

(assert (= (and b!6599065 res!2705873) b!6599052))

(assert (= (and b!6599065 (not res!2705858)) b!6599063))

(assert (= (and b!6599063 (not res!2705844)) b!6599068))

(assert (= (and b!6599068 (not res!2705870)) b!6599037))

(assert (= (and b!6599037 (not res!2705867)) b!6599047))

(assert (= (and b!6599047 (not res!2705875)) b!6599049))

(assert (= (and b!6599049 (not res!2705864)) b!6599043))

(assert (= (and b!6599043 (not res!2705859)) b!6599054))

(assert (= (and b!6599054 (not res!2705861)) b!6599072))

(assert (= (and b!6599072 (not res!2705862)) b!6599036))

(assert (= (and b!6599036 (not res!2705853)) b!6599060))

(assert (= (and b!6599060 (not res!2705848)) b!6599069))

(assert (= (and b!6599069 (not res!2705863)) b!6599042))

(assert (= (and b!6599042 (not res!2705851)) b!6599064))

(assert (= (and b!6599064 res!2705854) b!6599078))

(assert (= (and b!6599064 (not res!2705842)) b!6599059))

(assert (= (and b!6599059 (not res!2705852)) b!6599067))

(assert (= (and b!6599067 (not res!2705866)) b!6599044))

(assert (= (and b!6599044 (not res!2705843)) b!6599034))

(assert (= (and b!6599034 (not res!2705874)) b!6599050))

(assert (= (and b!6599050 (not res!2705857)) b!6599048))

(assert (= (and b!6599048 (not res!2705868)) b!6599055))

(assert (= (and start!645310 ((_ is ElementMatch!16465) r!7292)) b!6599053))

(assert (= (and start!645310 ((_ is Concat!25310) r!7292)) b!6599075))

(assert (= (and start!645310 ((_ is Star!16465) r!7292)) b!6599038))

(assert (= (and start!645310 ((_ is Union!16465) r!7292)) b!6599039))

(assert (= (and start!645310 condSetEmpty!45060) setIsEmpty!45060))

(assert (= (and start!645310 (not condSetEmpty!45060)) setNonEmpty!45060))

(assert (= setNonEmpty!45060 b!6599076))

(assert (= b!6599040 b!6599062))

(assert (= (and start!645310 ((_ is Cons!65572) zl!343)) b!6599040))

(assert (= (and start!645310 ((_ is Cons!65570) s!2326)) b!6599051))

(declare-fun m!7375594 () Bool)

(assert (=> b!6599056 m!7375594))

(declare-fun m!7375596 () Bool)

(assert (=> b!6599034 m!7375596))

(declare-fun m!7375598 () Bool)

(assert (=> b!6599034 m!7375598))

(declare-fun m!7375600 () Bool)

(assert (=> b!6599034 m!7375600))

(declare-fun m!7375602 () Bool)

(assert (=> b!6599066 m!7375602))

(declare-fun m!7375604 () Bool)

(assert (=> b!6599071 m!7375604))

(declare-fun m!7375606 () Bool)

(assert (=> b!6599071 m!7375606))

(declare-fun m!7375608 () Bool)

(assert (=> b!6599071 m!7375608))

(declare-fun m!7375610 () Bool)

(assert (=> b!6599068 m!7375610))

(declare-fun m!7375612 () Bool)

(assert (=> b!6599045 m!7375612))

(declare-fun m!7375614 () Bool)

(assert (=> b!6599046 m!7375614))

(declare-fun m!7375616 () Bool)

(assert (=> b!6599046 m!7375616))

(declare-fun m!7375618 () Bool)

(assert (=> b!6599046 m!7375618))

(assert (=> b!6599046 m!7375618))

(declare-fun m!7375620 () Bool)

(assert (=> b!6599046 m!7375620))

(declare-fun m!7375622 () Bool)

(assert (=> b!6599046 m!7375622))

(assert (=> b!6599046 m!7375614))

(declare-fun m!7375624 () Bool)

(assert (=> b!6599046 m!7375624))

(declare-fun m!7375626 () Bool)

(assert (=> b!6599070 m!7375626))

(declare-fun m!7375628 () Bool)

(assert (=> b!6599070 m!7375628))

(declare-fun m!7375630 () Bool)

(assert (=> b!6599070 m!7375630))

(declare-fun m!7375632 () Bool)

(assert (=> b!6599070 m!7375632))

(declare-fun m!7375634 () Bool)

(assert (=> b!6599070 m!7375634))

(declare-fun m!7375636 () Bool)

(assert (=> b!6599070 m!7375636))

(declare-fun m!7375638 () Bool)

(assert (=> b!6599070 m!7375638))

(declare-fun m!7375640 () Bool)

(assert (=> b!6599055 m!7375640))

(declare-fun m!7375642 () Bool)

(assert (=> b!6599055 m!7375642))

(assert (=> b!6599055 m!7375642))

(declare-fun m!7375644 () Bool)

(assert (=> b!6599055 m!7375644))

(declare-fun m!7375646 () Bool)

(assert (=> b!6599055 m!7375646))

(declare-fun m!7375648 () Bool)

(assert (=> b!6599055 m!7375648))

(declare-fun m!7375650 () Bool)

(assert (=> b!6599055 m!7375650))

(declare-fun m!7375652 () Bool)

(assert (=> b!6599055 m!7375652))

(declare-fun m!7375654 () Bool)

(assert (=> b!6599055 m!7375654))

(declare-fun m!7375656 () Bool)

(assert (=> b!6599040 m!7375656))

(declare-fun m!7375658 () Bool)

(assert (=> b!6599036 m!7375658))

(declare-fun m!7375660 () Bool)

(assert (=> b!6599073 m!7375660))

(declare-fun m!7375662 () Bool)

(assert (=> b!6599061 m!7375662))

(declare-fun m!7375664 () Bool)

(assert (=> b!6599054 m!7375664))

(declare-fun m!7375666 () Bool)

(assert (=> b!6599044 m!7375666))

(declare-fun m!7375668 () Bool)

(assert (=> b!6599044 m!7375668))

(assert (=> b!6599044 m!7375632))

(declare-fun m!7375670 () Bool)

(assert (=> b!6599044 m!7375670))

(declare-fun m!7375672 () Bool)

(assert (=> b!6599044 m!7375672))

(declare-fun m!7375674 () Bool)

(assert (=> b!6599052 m!7375674))

(declare-fun m!7375676 () Bool)

(assert (=> b!6599057 m!7375676))

(declare-fun m!7375678 () Bool)

(assert (=> b!6599057 m!7375678))

(declare-fun m!7375680 () Bool)

(assert (=> b!6599057 m!7375680))

(assert (=> b!6599078 m!7375662))

(declare-fun m!7375682 () Bool)

(assert (=> b!6599037 m!7375682))

(declare-fun m!7375684 () Bool)

(assert (=> b!6599037 m!7375684))

(declare-fun m!7375686 () Bool)

(assert (=> b!6599037 m!7375686))

(declare-fun m!7375688 () Bool)

(assert (=> b!6599037 m!7375688))

(declare-fun m!7375690 () Bool)

(assert (=> b!6599037 m!7375690))

(assert (=> b!6599067 m!7375662))

(declare-fun m!7375692 () Bool)

(assert (=> b!6599050 m!7375692))

(declare-fun m!7375694 () Bool)

(assert (=> b!6599050 m!7375694))

(declare-fun m!7375696 () Bool)

(assert (=> b!6599069 m!7375696))

(declare-fun m!7375698 () Bool)

(assert (=> start!645310 m!7375698))

(declare-fun m!7375700 () Bool)

(assert (=> b!6599060 m!7375700))

(declare-fun m!7375702 () Bool)

(assert (=> b!6599060 m!7375702))

(declare-fun m!7375704 () Bool)

(assert (=> b!6599060 m!7375704))

(assert (=> b!6599064 m!7375678))

(declare-fun m!7375706 () Bool)

(assert (=> b!6599047 m!7375706))

(declare-fun m!7375708 () Bool)

(assert (=> b!6599047 m!7375708))

(declare-fun m!7375710 () Bool)

(assert (=> b!6599035 m!7375710))

(declare-fun m!7375712 () Bool)

(assert (=> setNonEmpty!45060 m!7375712))

(declare-fun m!7375714 () Bool)

(assert (=> b!6599077 m!7375714))

(assert (=> b!6599077 m!7375714))

(declare-fun m!7375716 () Bool)

(assert (=> b!6599077 m!7375716))

(declare-fun m!7375718 () Bool)

(assert (=> b!6599048 m!7375718))

(declare-fun m!7375720 () Bool)

(assert (=> b!6599048 m!7375720))

(declare-fun m!7375722 () Bool)

(assert (=> b!6599048 m!7375722))

(declare-fun m!7375724 () Bool)

(assert (=> b!6599048 m!7375724))

(declare-fun m!7375726 () Bool)

(assert (=> b!6599072 m!7375726))

(declare-fun m!7375728 () Bool)

(assert (=> b!6599072 m!7375728))

(declare-fun m!7375730 () Bool)

(assert (=> b!6599072 m!7375730))

(declare-fun m!7375732 () Bool)

(assert (=> b!6599072 m!7375732))

(declare-fun m!7375734 () Bool)

(assert (=> b!6599072 m!7375734))

(declare-fun m!7375736 () Bool)

(assert (=> b!6599072 m!7375736))

(declare-fun m!7375738 () Bool)

(assert (=> b!6599072 m!7375738))

(declare-fun m!7375740 () Bool)

(assert (=> b!6599072 m!7375740))

(declare-fun m!7375742 () Bool)

(assert (=> b!6599072 m!7375742))

(check-sat (not b!6599075) (not b!6599073) (not b!6599069) (not b!6599056) (not b!6599044) (not b!6599060) (not b!6599038) (not b!6599061) (not setNonEmpty!45060) (not b!6599047) (not b!6599045) (not b!6599078) (not start!645310) (not b!6599068) (not b!6599067) (not b!6599036) (not b!6599077) (not b!6599035) (not b!6599062) (not b!6599070) (not b!6599034) (not b!6599071) (not b!6599039) (not b!6599037) (not b!6599052) (not b!6599064) (not b!6599072) (not b!6599076) (not b!6599050) (not b!6599057) tp_is_empty!42183 (not b!6599054) (not b!6599051) (not b!6599040) (not b!6599048) (not b!6599066) (not b!6599046) (not b!6599055))
(check-sat)
(get-model)

(declare-fun e!3993091 () Bool)

(declare-fun d!2070028 () Bool)

(assert (=> d!2070028 (= (matchZipper!2477 ((_ map or) lt!2413009 lt!2413039) (t!379346 s!2326)) e!3993091)))

(declare-fun res!2705879 () Bool)

(assert (=> d!2070028 (=> res!2705879 e!3993091)))

(assert (=> d!2070028 (= res!2705879 (matchZipper!2477 lt!2413009 (t!379346 s!2326)))))

(declare-fun lt!2413043 () Unit!159195)

(declare-fun choose!49250 ((InoxSet Context!11698) (InoxSet Context!11698) List!65694) Unit!159195)

(assert (=> d!2070028 (= lt!2413043 (choose!49250 lt!2413009 lt!2413039 (t!379346 s!2326)))))

(assert (=> d!2070028 (= (lemmaZipperConcatMatchesSameAsBothZippers!1296 lt!2413009 lt!2413039 (t!379346 s!2326)) lt!2413043)))

(declare-fun b!6599087 () Bool)

(assert (=> b!6599087 (= e!3993091 (matchZipper!2477 lt!2413039 (t!379346 s!2326)))))

(assert (= (and d!2070028 (not res!2705879)) b!6599087))

(assert (=> d!2070028 m!7375680))

(assert (=> d!2070028 m!7375678))

(declare-fun m!7375744 () Bool)

(assert (=> d!2070028 m!7375744))

(assert (=> b!6599087 m!7375662))

(assert (=> b!6599057 d!2070028))

(declare-fun d!2070030 () Bool)

(declare-fun c!1215441 () Bool)

(declare-fun isEmpty!37840 (List!65694) Bool)

(assert (=> d!2070030 (= c!1215441 (isEmpty!37840 (t!379346 s!2326)))))

(declare-fun e!3993097 () Bool)

(assert (=> d!2070030 (= (matchZipper!2477 lt!2413009 (t!379346 s!2326)) e!3993097)))

(declare-fun b!6599095 () Bool)

(declare-fun nullableZipper!2210 ((InoxSet Context!11698)) Bool)

(assert (=> b!6599095 (= e!3993097 (nullableZipper!2210 lt!2413009))))

(declare-fun b!6599096 () Bool)

(declare-fun head!13380 (List!65694) C!33200)

(declare-fun tail!12465 (List!65694) List!65694)

(assert (=> b!6599096 (= e!3993097 (matchZipper!2477 (derivationStepZipper!2431 lt!2413009 (head!13380 (t!379346 s!2326))) (tail!12465 (t!379346 s!2326))))))

(assert (= (and d!2070030 c!1215441) b!6599095))

(assert (= (and d!2070030 (not c!1215441)) b!6599096))

(declare-fun m!7375748 () Bool)

(assert (=> d!2070030 m!7375748))

(declare-fun m!7375750 () Bool)

(assert (=> b!6599095 m!7375750))

(declare-fun m!7375752 () Bool)

(assert (=> b!6599096 m!7375752))

(assert (=> b!6599096 m!7375752))

(declare-fun m!7375754 () Bool)

(assert (=> b!6599096 m!7375754))

(declare-fun m!7375756 () Bool)

(assert (=> b!6599096 m!7375756))

(assert (=> b!6599096 m!7375754))

(assert (=> b!6599096 m!7375756))

(declare-fun m!7375758 () Bool)

(assert (=> b!6599096 m!7375758))

(assert (=> b!6599057 d!2070030))

(declare-fun d!2070036 () Bool)

(declare-fun c!1215442 () Bool)

(assert (=> d!2070036 (= c!1215442 (isEmpty!37840 (t!379346 s!2326)))))

(declare-fun e!3993098 () Bool)

(assert (=> d!2070036 (= (matchZipper!2477 ((_ map or) lt!2413009 lt!2413039) (t!379346 s!2326)) e!3993098)))

(declare-fun b!6599097 () Bool)

(assert (=> b!6599097 (= e!3993098 (nullableZipper!2210 ((_ map or) lt!2413009 lt!2413039)))))

(declare-fun b!6599098 () Bool)

(assert (=> b!6599098 (= e!3993098 (matchZipper!2477 (derivationStepZipper!2431 ((_ map or) lt!2413009 lt!2413039) (head!13380 (t!379346 s!2326))) (tail!12465 (t!379346 s!2326))))))

(assert (= (and d!2070036 c!1215442) b!6599097))

(assert (= (and d!2070036 (not c!1215442)) b!6599098))

(assert (=> d!2070036 m!7375748))

(declare-fun m!7375760 () Bool)

(assert (=> b!6599097 m!7375760))

(assert (=> b!6599098 m!7375752))

(assert (=> b!6599098 m!7375752))

(declare-fun m!7375762 () Bool)

(assert (=> b!6599098 m!7375762))

(assert (=> b!6599098 m!7375756))

(assert (=> b!6599098 m!7375762))

(assert (=> b!6599098 m!7375756))

(declare-fun m!7375764 () Bool)

(assert (=> b!6599098 m!7375764))

(assert (=> b!6599057 d!2070036))

(declare-fun d!2070038 () Bool)

(declare-fun lt!2413049 () Regex!16465)

(assert (=> d!2070038 (validRegex!8201 lt!2413049)))

(assert (=> d!2070038 (= lt!2413049 (generalisedUnion!2309 (unfocusZipperList!1886 (Cons!65572 lt!2413018 Nil!65572))))))

(assert (=> d!2070038 (= (unfocusZipper!2207 (Cons!65572 lt!2413018 Nil!65572)) lt!2413049)))

(declare-fun bs!1692049 () Bool)

(assert (= bs!1692049 d!2070038))

(declare-fun m!7375786 () Bool)

(assert (=> bs!1692049 m!7375786))

(declare-fun m!7375788 () Bool)

(assert (=> bs!1692049 m!7375788))

(assert (=> bs!1692049 m!7375788))

(declare-fun m!7375790 () Bool)

(assert (=> bs!1692049 m!7375790))

(assert (=> b!6599036 d!2070038))

(declare-fun d!2070046 () Bool)

(declare-fun lt!2413050 () Regex!16465)

(assert (=> d!2070046 (validRegex!8201 lt!2413050)))

(assert (=> d!2070046 (= lt!2413050 (generalisedUnion!2309 (unfocusZipperList!1886 zl!343)))))

(assert (=> d!2070046 (= (unfocusZipper!2207 zl!343) lt!2413050)))

(declare-fun bs!1692050 () Bool)

(assert (= bs!1692050 d!2070046))

(declare-fun m!7375792 () Bool)

(assert (=> bs!1692050 m!7375792))

(assert (=> bs!1692050 m!7375714))

(assert (=> bs!1692050 m!7375714))

(assert (=> bs!1692050 m!7375716))

(assert (=> b!6599056 d!2070046))

(declare-fun b!6599185 () Bool)

(declare-fun e!3993153 () Regex!16465)

(assert (=> b!6599185 (= e!3993153 (h!72019 (unfocusZipperList!1886 zl!343)))))

(declare-fun b!6599186 () Bool)

(declare-fun e!3993150 () Regex!16465)

(assert (=> b!6599186 (= e!3993150 (Union!16465 (h!72019 (unfocusZipperList!1886 zl!343)) (generalisedUnion!2309 (t!379347 (unfocusZipperList!1886 zl!343)))))))

(declare-fun b!6599187 () Bool)

(declare-fun e!3993151 () Bool)

(declare-fun lt!2413056 () Regex!16465)

(declare-fun isUnion!1281 (Regex!16465) Bool)

(assert (=> b!6599187 (= e!3993151 (isUnion!1281 lt!2413056))))

(declare-fun b!6599188 () Bool)

(assert (=> b!6599188 (= e!3993150 EmptyLang!16465)))

(declare-fun b!6599189 () Bool)

(declare-fun e!3993148 () Bool)

(assert (=> b!6599189 (= e!3993148 (isEmpty!37837 (t!379347 (unfocusZipperList!1886 zl!343))))))

(declare-fun b!6599190 () Bool)

(assert (=> b!6599190 (= e!3993153 e!3993150)))

(declare-fun c!1215483 () Bool)

(assert (=> b!6599190 (= c!1215483 ((_ is Cons!65571) (unfocusZipperList!1886 zl!343)))))

(declare-fun b!6599191 () Bool)

(declare-fun head!13381 (List!65695) Regex!16465)

(assert (=> b!6599191 (= e!3993151 (= lt!2413056 (head!13381 (unfocusZipperList!1886 zl!343))))))

(declare-fun d!2070048 () Bool)

(declare-fun e!3993152 () Bool)

(assert (=> d!2070048 e!3993152))

(declare-fun res!2705895 () Bool)

(assert (=> d!2070048 (=> (not res!2705895) (not e!3993152))))

(assert (=> d!2070048 (= res!2705895 (validRegex!8201 lt!2413056))))

(assert (=> d!2070048 (= lt!2413056 e!3993153)))

(declare-fun c!1215481 () Bool)

(assert (=> d!2070048 (= c!1215481 e!3993148)))

(declare-fun res!2705896 () Bool)

(assert (=> d!2070048 (=> (not res!2705896) (not e!3993148))))

(assert (=> d!2070048 (= res!2705896 ((_ is Cons!65571) (unfocusZipperList!1886 zl!343)))))

(declare-fun lambda!367783 () Int)

(declare-fun forall!15653 (List!65695 Int) Bool)

(assert (=> d!2070048 (forall!15653 (unfocusZipperList!1886 zl!343) lambda!367783)))

(assert (=> d!2070048 (= (generalisedUnion!2309 (unfocusZipperList!1886 zl!343)) lt!2413056)))

(declare-fun b!6599192 () Bool)

(declare-fun e!3993149 () Bool)

(assert (=> b!6599192 (= e!3993149 e!3993151)))

(declare-fun c!1215480 () Bool)

(declare-fun tail!12466 (List!65695) List!65695)

(assert (=> b!6599192 (= c!1215480 (isEmpty!37837 (tail!12466 (unfocusZipperList!1886 zl!343))))))

(declare-fun b!6599193 () Bool)

(declare-fun isEmptyLang!1851 (Regex!16465) Bool)

(assert (=> b!6599193 (= e!3993149 (isEmptyLang!1851 lt!2413056))))

(declare-fun b!6599194 () Bool)

(assert (=> b!6599194 (= e!3993152 e!3993149)))

(declare-fun c!1215482 () Bool)

(assert (=> b!6599194 (= c!1215482 (isEmpty!37837 (unfocusZipperList!1886 zl!343)))))

(assert (= (and d!2070048 res!2705896) b!6599189))

(assert (= (and d!2070048 c!1215481) b!6599185))

(assert (= (and d!2070048 (not c!1215481)) b!6599190))

(assert (= (and b!6599190 c!1215483) b!6599186))

(assert (= (and b!6599190 (not c!1215483)) b!6599188))

(assert (= (and d!2070048 res!2705895) b!6599194))

(assert (= (and b!6599194 c!1215482) b!6599193))

(assert (= (and b!6599194 (not c!1215482)) b!6599192))

(assert (= (and b!6599192 c!1215480) b!6599191))

(assert (= (and b!6599192 (not c!1215480)) b!6599187))

(assert (=> b!6599194 m!7375714))

(declare-fun m!7375836 () Bool)

(assert (=> b!6599194 m!7375836))

(declare-fun m!7375838 () Bool)

(assert (=> b!6599193 m!7375838))

(declare-fun m!7375840 () Bool)

(assert (=> b!6599189 m!7375840))

(declare-fun m!7375842 () Bool)

(assert (=> b!6599187 m!7375842))

(assert (=> b!6599192 m!7375714))

(declare-fun m!7375844 () Bool)

(assert (=> b!6599192 m!7375844))

(assert (=> b!6599192 m!7375844))

(declare-fun m!7375846 () Bool)

(assert (=> b!6599192 m!7375846))

(declare-fun m!7375848 () Bool)

(assert (=> b!6599186 m!7375848))

(declare-fun m!7375850 () Bool)

(assert (=> d!2070048 m!7375850))

(assert (=> d!2070048 m!7375714))

(declare-fun m!7375852 () Bool)

(assert (=> d!2070048 m!7375852))

(assert (=> b!6599191 m!7375714))

(declare-fun m!7375854 () Bool)

(assert (=> b!6599191 m!7375854))

(assert (=> b!6599077 d!2070048))

(declare-fun bs!1692056 () Bool)

(declare-fun d!2070068 () Bool)

(assert (= bs!1692056 (and d!2070068 d!2070048)))

(declare-fun lambda!367786 () Int)

(assert (=> bs!1692056 (= lambda!367786 lambda!367783)))

(declare-fun lt!2413065 () List!65695)

(assert (=> d!2070068 (forall!15653 lt!2413065 lambda!367786)))

(declare-fun e!3993176 () List!65695)

(assert (=> d!2070068 (= lt!2413065 e!3993176)))

(declare-fun c!1215500 () Bool)

(assert (=> d!2070068 (= c!1215500 ((_ is Cons!65572) zl!343))))

(assert (=> d!2070068 (= (unfocusZipperList!1886 zl!343) lt!2413065)))

(declare-fun b!6599233 () Bool)

(assert (=> b!6599233 (= e!3993176 (Cons!65571 (generalisedConcat!2062 (exprs!6349 (h!72020 zl!343))) (unfocusZipperList!1886 (t!379348 zl!343))))))

(declare-fun b!6599234 () Bool)

(assert (=> b!6599234 (= e!3993176 Nil!65571)))

(assert (= (and d!2070068 c!1215500) b!6599233))

(assert (= (and d!2070068 (not c!1215500)) b!6599234))

(declare-fun m!7375856 () Bool)

(assert (=> d!2070068 m!7375856))

(assert (=> b!6599233 m!7375612))

(declare-fun m!7375858 () Bool)

(assert (=> b!6599233 m!7375858))

(assert (=> b!6599077 d!2070068))

(declare-fun d!2070070 () Bool)

(assert (=> d!2070070 (= (isEmpty!37837 (t!379347 (exprs!6349 (h!72020 zl!343)))) ((_ is Nil!65571) (t!379347 (exprs!6349 (h!72020 zl!343)))))))

(assert (=> b!6599035 d!2070070))

(declare-fun b!6599341 () Bool)

(declare-fun res!2705938 () Bool)

(declare-fun e!3993240 () Bool)

(assert (=> b!6599341 (=> (not res!2705938) (not e!3993240))))

(declare-fun call!577089 () Bool)

(assert (=> b!6599341 (= res!2705938 (not call!577089))))

(declare-fun b!6599342 () Bool)

(declare-fun e!3993237 () Bool)

(declare-fun e!3993238 () Bool)

(assert (=> b!6599342 (= e!3993237 e!3993238)))

(declare-fun res!2705940 () Bool)

(assert (=> b!6599342 (=> (not res!2705940) (not e!3993238))))

(declare-fun lt!2413089 () Bool)

(assert (=> b!6599342 (= res!2705940 (not lt!2413089))))

(declare-fun bm!577084 () Bool)

(assert (=> bm!577084 (= call!577089 (isEmpty!37840 s!2326))))

(declare-fun b!6599343 () Bool)

(declare-fun res!2705942 () Bool)

(assert (=> b!6599343 (=> res!2705942 e!3993237)))

(assert (=> b!6599343 (= res!2705942 (not ((_ is ElementMatch!16465) lt!2413026)))))

(declare-fun e!3993243 () Bool)

(assert (=> b!6599343 (= e!3993243 e!3993237)))

(declare-fun b!6599344 () Bool)

(declare-fun e!3993239 () Bool)

(assert (=> b!6599344 (= e!3993239 (= lt!2413089 call!577089))))

(declare-fun b!6599345 () Bool)

(declare-fun res!2705937 () Bool)

(assert (=> b!6599345 (=> (not res!2705937) (not e!3993240))))

(assert (=> b!6599345 (= res!2705937 (isEmpty!37840 (tail!12465 s!2326)))))

(declare-fun b!6599346 () Bool)

(assert (=> b!6599346 (= e!3993243 (not lt!2413089))))

(declare-fun b!6599347 () Bool)

(assert (=> b!6599347 (= e!3993239 e!3993243)))

(declare-fun c!1215544 () Bool)

(assert (=> b!6599347 (= c!1215544 ((_ is EmptyLang!16465) lt!2413026))))

(declare-fun b!6599348 () Bool)

(declare-fun e!3993242 () Bool)

(assert (=> b!6599348 (= e!3993242 (not (= (head!13380 s!2326) (c!1215438 lt!2413026))))))

(declare-fun b!6599349 () Bool)

(declare-fun e!3993241 () Bool)

(assert (=> b!6599349 (= e!3993241 (nullable!6458 lt!2413026))))

(declare-fun b!6599350 () Bool)

(assert (=> b!6599350 (= e!3993240 (= (head!13380 s!2326) (c!1215438 lt!2413026)))))

(declare-fun b!6599351 () Bool)

(declare-fun res!2705939 () Bool)

(assert (=> b!6599351 (=> res!2705939 e!3993242)))

(assert (=> b!6599351 (= res!2705939 (not (isEmpty!37840 (tail!12465 s!2326))))))

(declare-fun b!6599352 () Bool)

(declare-fun derivativeStep!5148 (Regex!16465 C!33200) Regex!16465)

(assert (=> b!6599352 (= e!3993241 (matchR!8648 (derivativeStep!5148 lt!2413026 (head!13380 s!2326)) (tail!12465 s!2326)))))

(declare-fun b!6599353 () Bool)

(declare-fun res!2705936 () Bool)

(assert (=> b!6599353 (=> res!2705936 e!3993237)))

(assert (=> b!6599353 (= res!2705936 e!3993240)))

(declare-fun res!2705935 () Bool)

(assert (=> b!6599353 (=> (not res!2705935) (not e!3993240))))

(assert (=> b!6599353 (= res!2705935 lt!2413089)))

(declare-fun d!2070074 () Bool)

(assert (=> d!2070074 e!3993239))

(declare-fun c!1215543 () Bool)

(assert (=> d!2070074 (= c!1215543 ((_ is EmptyExpr!16465) lt!2413026))))

(assert (=> d!2070074 (= lt!2413089 e!3993241)))

(declare-fun c!1215545 () Bool)

(assert (=> d!2070074 (= c!1215545 (isEmpty!37840 s!2326))))

(assert (=> d!2070074 (validRegex!8201 lt!2413026)))

(assert (=> d!2070074 (= (matchR!8648 lt!2413026 s!2326) lt!2413089)))

(declare-fun b!6599354 () Bool)

(assert (=> b!6599354 (= e!3993238 e!3993242)))

(declare-fun res!2705941 () Bool)

(assert (=> b!6599354 (=> res!2705941 e!3993242)))

(assert (=> b!6599354 (= res!2705941 call!577089)))

(assert (= (and d!2070074 c!1215545) b!6599349))

(assert (= (and d!2070074 (not c!1215545)) b!6599352))

(assert (= (and d!2070074 c!1215543) b!6599344))

(assert (= (and d!2070074 (not c!1215543)) b!6599347))

(assert (= (and b!6599347 c!1215544) b!6599346))

(assert (= (and b!6599347 (not c!1215544)) b!6599343))

(assert (= (and b!6599343 (not res!2705942)) b!6599353))

(assert (= (and b!6599353 res!2705935) b!6599341))

(assert (= (and b!6599341 res!2705938) b!6599345))

(assert (= (and b!6599345 res!2705937) b!6599350))

(assert (= (and b!6599353 (not res!2705936)) b!6599342))

(assert (= (and b!6599342 res!2705940) b!6599354))

(assert (= (and b!6599354 (not res!2705941)) b!6599351))

(assert (= (and b!6599351 (not res!2705939)) b!6599348))

(assert (= (or b!6599344 b!6599341 b!6599354) bm!577084))

(declare-fun m!7375922 () Bool)

(assert (=> bm!577084 m!7375922))

(assert (=> d!2070074 m!7375922))

(declare-fun m!7375924 () Bool)

(assert (=> d!2070074 m!7375924))

(declare-fun m!7375926 () Bool)

(assert (=> b!6599350 m!7375926))

(declare-fun m!7375928 () Bool)

(assert (=> b!6599345 m!7375928))

(assert (=> b!6599345 m!7375928))

(declare-fun m!7375930 () Bool)

(assert (=> b!6599345 m!7375930))

(declare-fun m!7375932 () Bool)

(assert (=> b!6599349 m!7375932))

(assert (=> b!6599348 m!7375926))

(assert (=> b!6599351 m!7375928))

(assert (=> b!6599351 m!7375928))

(assert (=> b!6599351 m!7375930))

(assert (=> b!6599352 m!7375926))

(assert (=> b!6599352 m!7375926))

(declare-fun m!7375934 () Bool)

(assert (=> b!6599352 m!7375934))

(assert (=> b!6599352 m!7375928))

(assert (=> b!6599352 m!7375934))

(assert (=> b!6599352 m!7375928))

(declare-fun m!7375936 () Bool)

(assert (=> b!6599352 m!7375936))

(assert (=> b!6599060 d!2070074))

(declare-fun bs!1692069 () Bool)

(declare-fun b!6599426 () Bool)

(assert (= bs!1692069 (and b!6599426 b!6599046)))

(declare-fun lambda!367809 () Int)

(assert (=> bs!1692069 (not (= lambda!367809 lambda!367774))))

(assert (=> bs!1692069 (not (= lambda!367809 lambda!367775))))

(declare-fun bs!1692070 () Bool)

(assert (= bs!1692070 (and b!6599426 b!6599055)))

(assert (=> bs!1692070 (not (= lambda!367809 lambda!367777))))

(assert (=> b!6599426 true))

(assert (=> b!6599426 true))

(declare-fun bs!1692071 () Bool)

(declare-fun b!6599427 () Bool)

(assert (= bs!1692071 (and b!6599427 b!6599046)))

(declare-fun lambda!367812 () Int)

(assert (=> bs!1692071 (not (= lambda!367812 lambda!367774))))

(assert (=> bs!1692071 (= (and (= (regOne!33442 lt!2413026) (regOne!33442 r!7292)) (= (regTwo!33442 lt!2413026) (regTwo!33442 r!7292))) (= lambda!367812 lambda!367775))))

(declare-fun bs!1692072 () Bool)

(assert (= bs!1692072 (and b!6599427 b!6599055)))

(assert (=> bs!1692072 (not (= lambda!367812 lambda!367777))))

(declare-fun bs!1692073 () Bool)

(assert (= bs!1692073 (and b!6599427 b!6599426)))

(assert (=> bs!1692073 (not (= lambda!367812 lambda!367809))))

(assert (=> b!6599427 true))

(assert (=> b!6599427 true))

(declare-fun b!6599418 () Bool)

(declare-fun e!3993280 () Bool)

(assert (=> b!6599418 (= e!3993280 (matchRSpec!3566 (regTwo!33443 lt!2413026) s!2326))))

(declare-fun b!6599420 () Bool)

(declare-fun e!3993281 () Bool)

(declare-fun e!3993284 () Bool)

(assert (=> b!6599420 (= e!3993281 e!3993284)))

(declare-fun res!2705978 () Bool)

(assert (=> b!6599420 (= res!2705978 (not ((_ is EmptyLang!16465) lt!2413026)))))

(assert (=> b!6599420 (=> (not res!2705978) (not e!3993284))))

(declare-fun b!6599421 () Bool)

(declare-fun c!1215561 () Bool)

(assert (=> b!6599421 (= c!1215561 ((_ is Union!16465) lt!2413026))))

(declare-fun e!3993285 () Bool)

(declare-fun e!3993279 () Bool)

(assert (=> b!6599421 (= e!3993285 e!3993279)))

(declare-fun c!1215563 () Bool)

(declare-fun bm!577089 () Bool)

(declare-fun call!577095 () Bool)

(assert (=> bm!577089 (= call!577095 (Exists!3535 (ite c!1215563 lambda!367809 lambda!367812)))))

(declare-fun b!6599422 () Bool)

(assert (=> b!6599422 (= e!3993279 e!3993280)))

(declare-fun res!2705980 () Bool)

(assert (=> b!6599422 (= res!2705980 (matchRSpec!3566 (regOne!33443 lt!2413026) s!2326))))

(assert (=> b!6599422 (=> res!2705980 e!3993280)))

(declare-fun b!6599423 () Bool)

(declare-fun res!2705979 () Bool)

(declare-fun e!3993282 () Bool)

(assert (=> b!6599423 (=> res!2705979 e!3993282)))

(declare-fun call!577094 () Bool)

(assert (=> b!6599423 (= res!2705979 call!577094)))

(declare-fun e!3993283 () Bool)

(assert (=> b!6599423 (= e!3993283 e!3993282)))

(declare-fun d!2070084 () Bool)

(declare-fun c!1215560 () Bool)

(assert (=> d!2070084 (= c!1215560 ((_ is EmptyExpr!16465) lt!2413026))))

(assert (=> d!2070084 (= (matchRSpec!3566 lt!2413026 s!2326) e!3993281)))

(declare-fun b!6599419 () Bool)

(declare-fun c!1215562 () Bool)

(assert (=> b!6599419 (= c!1215562 ((_ is ElementMatch!16465) lt!2413026))))

(assert (=> b!6599419 (= e!3993284 e!3993285)))

(declare-fun bm!577090 () Bool)

(assert (=> bm!577090 (= call!577094 (isEmpty!37840 s!2326))))

(declare-fun b!6599424 () Bool)

(assert (=> b!6599424 (= e!3993279 e!3993283)))

(assert (=> b!6599424 (= c!1215563 ((_ is Star!16465) lt!2413026))))

(declare-fun b!6599425 () Bool)

(assert (=> b!6599425 (= e!3993285 (= s!2326 (Cons!65570 (c!1215438 lt!2413026) Nil!65570)))))

(assert (=> b!6599426 (= e!3993282 call!577095)))

(assert (=> b!6599427 (= e!3993283 call!577095)))

(declare-fun b!6599428 () Bool)

(assert (=> b!6599428 (= e!3993281 call!577094)))

(assert (= (and d!2070084 c!1215560) b!6599428))

(assert (= (and d!2070084 (not c!1215560)) b!6599420))

(assert (= (and b!6599420 res!2705978) b!6599419))

(assert (= (and b!6599419 c!1215562) b!6599425))

(assert (= (and b!6599419 (not c!1215562)) b!6599421))

(assert (= (and b!6599421 c!1215561) b!6599422))

(assert (= (and b!6599421 (not c!1215561)) b!6599424))

(assert (= (and b!6599422 (not res!2705980)) b!6599418))

(assert (= (and b!6599424 c!1215563) b!6599423))

(assert (= (and b!6599424 (not c!1215563)) b!6599427))

(assert (= (and b!6599423 (not res!2705979)) b!6599426))

(assert (= (or b!6599426 b!6599427) bm!577089))

(assert (= (or b!6599428 b!6599423) bm!577090))

(declare-fun m!7375968 () Bool)

(assert (=> b!6599418 m!7375968))

(declare-fun m!7375970 () Bool)

(assert (=> bm!577089 m!7375970))

(declare-fun m!7375972 () Bool)

(assert (=> b!6599422 m!7375972))

(assert (=> bm!577090 m!7375922))

(assert (=> b!6599060 d!2070084))

(declare-fun d!2070094 () Bool)

(assert (=> d!2070094 (= (matchR!8648 lt!2413026 s!2326) (matchRSpec!3566 lt!2413026 s!2326))))

(declare-fun lt!2413111 () Unit!159195)

(declare-fun choose!49251 (Regex!16465 List!65694) Unit!159195)

(assert (=> d!2070094 (= lt!2413111 (choose!49251 lt!2413026 s!2326))))

(assert (=> d!2070094 (validRegex!8201 lt!2413026)))

(assert (=> d!2070094 (= (mainMatchTheorem!3566 lt!2413026 s!2326) lt!2413111)))

(declare-fun bs!1692081 () Bool)

(assert (= bs!1692081 d!2070094))

(assert (=> bs!1692081 m!7375700))

(assert (=> bs!1692081 m!7375702))

(declare-fun m!7376002 () Bool)

(assert (=> bs!1692081 m!7376002))

(assert (=> bs!1692081 m!7375924))

(assert (=> b!6599060 d!2070094))

(declare-fun d!2070110 () Bool)

(declare-fun c!1215566 () Bool)

(assert (=> d!2070110 (= c!1215566 (isEmpty!37840 (t!379346 s!2326)))))

(declare-fun e!3993296 () Bool)

(assert (=> d!2070110 (= (matchZipper!2477 lt!2413039 (t!379346 s!2326)) e!3993296)))

(declare-fun b!6599445 () Bool)

(assert (=> b!6599445 (= e!3993296 (nullableZipper!2210 lt!2413039))))

(declare-fun b!6599446 () Bool)

(assert (=> b!6599446 (= e!3993296 (matchZipper!2477 (derivationStepZipper!2431 lt!2413039 (head!13380 (t!379346 s!2326))) (tail!12465 (t!379346 s!2326))))))

(assert (= (and d!2070110 c!1215566) b!6599445))

(assert (= (and d!2070110 (not c!1215566)) b!6599446))

(assert (=> d!2070110 m!7375748))

(declare-fun m!7376004 () Bool)

(assert (=> b!6599445 m!7376004))

(assert (=> b!6599446 m!7375752))

(assert (=> b!6599446 m!7375752))

(declare-fun m!7376006 () Bool)

(assert (=> b!6599446 m!7376006))

(assert (=> b!6599446 m!7375756))

(assert (=> b!6599446 m!7376006))

(assert (=> b!6599446 m!7375756))

(declare-fun m!7376008 () Bool)

(assert (=> b!6599446 m!7376008))

(assert (=> b!6599078 d!2070110))

(declare-fun d!2070112 () Bool)

(declare-fun choose!49252 ((InoxSet Context!11698) Int) (InoxSet Context!11698))

(assert (=> d!2070112 (= (flatMap!1970 lt!2413008 lambda!367776) (choose!49252 lt!2413008 lambda!367776))))

(declare-fun bs!1692084 () Bool)

(assert (= bs!1692084 d!2070112))

(declare-fun m!7376010 () Bool)

(assert (=> bs!1692084 m!7376010))

(assert (=> b!6599037 d!2070112))

(declare-fun b!6599481 () Bool)

(declare-fun e!3993317 () (InoxSet Context!11698))

(assert (=> b!6599481 (= e!3993317 ((as const (Array Context!11698 Bool)) false))))

(declare-fun bm!577094 () Bool)

(declare-fun call!577099 () (InoxSet Context!11698))

(assert (=> bm!577094 (= call!577099 (derivationStepZipperDown!1713 (h!72019 (exprs!6349 lt!2413011)) (Context!11699 (t!379347 (exprs!6349 lt!2413011))) (h!72018 s!2326)))))

(declare-fun b!6599482 () Bool)

(assert (=> b!6599482 (= e!3993317 call!577099)))

(declare-fun d!2070114 () Bool)

(declare-fun c!1215582 () Bool)

(declare-fun e!3993318 () Bool)

(assert (=> d!2070114 (= c!1215582 e!3993318)))

(declare-fun res!2705999 () Bool)

(assert (=> d!2070114 (=> (not res!2705999) (not e!3993318))))

(assert (=> d!2070114 (= res!2705999 ((_ is Cons!65571) (exprs!6349 lt!2413011)))))

(declare-fun e!3993316 () (InoxSet Context!11698))

(assert (=> d!2070114 (= (derivationStepZipperUp!1639 lt!2413011 (h!72018 s!2326)) e!3993316)))

(declare-fun b!6599483 () Bool)

(assert (=> b!6599483 (= e!3993318 (nullable!6458 (h!72019 (exprs!6349 lt!2413011))))))

(declare-fun b!6599484 () Bool)

(assert (=> b!6599484 (= e!3993316 e!3993317)))

(declare-fun c!1215583 () Bool)

(assert (=> b!6599484 (= c!1215583 ((_ is Cons!65571) (exprs!6349 lt!2413011)))))

(declare-fun b!6599485 () Bool)

(assert (=> b!6599485 (= e!3993316 ((_ map or) call!577099 (derivationStepZipperUp!1639 (Context!11699 (t!379347 (exprs!6349 lt!2413011))) (h!72018 s!2326))))))

(assert (= (and d!2070114 res!2705999) b!6599483))

(assert (= (and d!2070114 c!1215582) b!6599485))

(assert (= (and d!2070114 (not c!1215582)) b!6599484))

(assert (= (and b!6599484 c!1215583) b!6599482))

(assert (= (and b!6599484 (not c!1215583)) b!6599481))

(assert (= (or b!6599485 b!6599482) bm!577094))

(declare-fun m!7376020 () Bool)

(assert (=> bm!577094 m!7376020))

(declare-fun m!7376022 () Bool)

(assert (=> b!6599483 m!7376022))

(declare-fun m!7376024 () Bool)

(assert (=> b!6599485 m!7376024))

(assert (=> b!6599037 d!2070114))

(declare-fun d!2070120 () Bool)

(declare-fun dynLambda!26112 (Int Context!11698) (InoxSet Context!11698))

(assert (=> d!2070120 (= (flatMap!1970 lt!2413008 lambda!367776) (dynLambda!26112 lambda!367776 lt!2413011))))

(declare-fun lt!2413119 () Unit!159195)

(declare-fun choose!49255 ((InoxSet Context!11698) Context!11698 Int) Unit!159195)

(assert (=> d!2070120 (= lt!2413119 (choose!49255 lt!2413008 lt!2413011 lambda!367776))))

(assert (=> d!2070120 (= lt!2413008 (store ((as const (Array Context!11698 Bool)) false) lt!2413011 true))))

(assert (=> d!2070120 (= (lemmaFlatMapOnSingletonSet!1496 lt!2413008 lt!2413011 lambda!367776) lt!2413119)))

(declare-fun b_lambda!249781 () Bool)

(assert (=> (not b_lambda!249781) (not d!2070120)))

(declare-fun bs!1692088 () Bool)

(assert (= bs!1692088 d!2070120))

(assert (=> bs!1692088 m!7375682))

(declare-fun m!7376046 () Bool)

(assert (=> bs!1692088 m!7376046))

(declare-fun m!7376048 () Bool)

(assert (=> bs!1692088 m!7376048))

(assert (=> bs!1692088 m!7375684))

(assert (=> b!6599037 d!2070120))

(declare-fun bs!1692092 () Bool)

(declare-fun d!2070124 () Bool)

(assert (= bs!1692092 (and d!2070124 b!6599070)))

(declare-fun lambda!367828 () Int)

(assert (=> bs!1692092 (= lambda!367828 lambda!367776)))

(assert (=> d!2070124 true))

(assert (=> d!2070124 (= (derivationStepZipper!2431 lt!2413008 (h!72018 s!2326)) (flatMap!1970 lt!2413008 lambda!367828))))

(declare-fun bs!1692093 () Bool)

(assert (= bs!1692093 d!2070124))

(declare-fun m!7376054 () Bool)

(assert (=> bs!1692093 m!7376054))

(assert (=> b!6599037 d!2070124))

(declare-fun b!6599550 () Bool)

(declare-fun e!3993357 () Bool)

(declare-fun e!3993362 () Bool)

(assert (=> b!6599550 (= e!3993357 e!3993362)))

(declare-fun res!2706030 () Bool)

(assert (=> b!6599550 (=> (not res!2706030) (not e!3993362))))

(declare-fun call!577110 () Bool)

(assert (=> b!6599550 (= res!2706030 call!577110)))

(declare-fun b!6599551 () Bool)

(declare-fun res!2706029 () Bool)

(declare-fun e!3993360 () Bool)

(assert (=> b!6599551 (=> (not res!2706029) (not e!3993360))))

(assert (=> b!6599551 (= res!2706029 call!577110)))

(declare-fun e!3993359 () Bool)

(assert (=> b!6599551 (= e!3993359 e!3993360)))

(declare-fun b!6599552 () Bool)

(declare-fun call!577109 () Bool)

(assert (=> b!6599552 (= e!3993362 call!577109)))

(declare-fun b!6599554 () Bool)

(declare-fun e!3993361 () Bool)

(declare-fun e!3993356 () Bool)

(assert (=> b!6599554 (= e!3993361 e!3993356)))

(declare-fun res!2706028 () Bool)

(assert (=> b!6599554 (= res!2706028 (not (nullable!6458 (reg!16794 r!7292))))))

(assert (=> b!6599554 (=> (not res!2706028) (not e!3993356))))

(declare-fun b!6599555 () Bool)

(declare-fun e!3993358 () Bool)

(assert (=> b!6599555 (= e!3993358 e!3993361)))

(declare-fun c!1215603 () Bool)

(assert (=> b!6599555 (= c!1215603 ((_ is Star!16465) r!7292))))

(declare-fun b!6599556 () Bool)

(declare-fun res!2706031 () Bool)

(assert (=> b!6599556 (=> res!2706031 e!3993357)))

(assert (=> b!6599556 (= res!2706031 (not ((_ is Concat!25310) r!7292)))))

(assert (=> b!6599556 (= e!3993359 e!3993357)))

(declare-fun bm!577103 () Bool)

(declare-fun call!577108 () Bool)

(assert (=> bm!577103 (= call!577109 call!577108)))

(declare-fun bm!577104 () Bool)

(declare-fun c!1215604 () Bool)

(assert (=> bm!577104 (= call!577108 (validRegex!8201 (ite c!1215603 (reg!16794 r!7292) (ite c!1215604 (regTwo!33443 r!7292) (regTwo!33442 r!7292)))))))

(declare-fun b!6599557 () Bool)

(assert (=> b!6599557 (= e!3993356 call!577108)))

(declare-fun b!6599553 () Bool)

(assert (=> b!6599553 (= e!3993360 call!577109)))

(declare-fun d!2070128 () Bool)

(declare-fun res!2706032 () Bool)

(assert (=> d!2070128 (=> res!2706032 e!3993358)))

(assert (=> d!2070128 (= res!2706032 ((_ is ElementMatch!16465) r!7292))))

(assert (=> d!2070128 (= (validRegex!8201 r!7292) e!3993358)))

(declare-fun bm!577105 () Bool)

(assert (=> bm!577105 (= call!577110 (validRegex!8201 (ite c!1215604 (regOne!33443 r!7292) (regOne!33442 r!7292))))))

(declare-fun b!6599558 () Bool)

(assert (=> b!6599558 (= e!3993361 e!3993359)))

(assert (=> b!6599558 (= c!1215604 ((_ is Union!16465) r!7292))))

(assert (= (and d!2070128 (not res!2706032)) b!6599555))

(assert (= (and b!6599555 c!1215603) b!6599554))

(assert (= (and b!6599555 (not c!1215603)) b!6599558))

(assert (= (and b!6599554 res!2706028) b!6599557))

(assert (= (and b!6599558 c!1215604) b!6599551))

(assert (= (and b!6599558 (not c!1215604)) b!6599556))

(assert (= (and b!6599551 res!2706029) b!6599553))

(assert (= (and b!6599556 (not res!2706031)) b!6599550))

(assert (= (and b!6599550 res!2706030) b!6599552))

(assert (= (or b!6599553 b!6599552) bm!577103))

(assert (= (or b!6599551 b!6599550) bm!577105))

(assert (= (or b!6599557 bm!577103) bm!577104))

(declare-fun m!7376056 () Bool)

(assert (=> b!6599554 m!7376056))

(declare-fun m!7376058 () Bool)

(assert (=> bm!577104 m!7376058))

(declare-fun m!7376060 () Bool)

(assert (=> bm!577105 m!7376060))

(assert (=> start!645310 d!2070128))

(assert (=> b!6599061 d!2070110))

(declare-fun bs!1692094 () Bool)

(declare-fun d!2070130 () Bool)

(assert (= bs!1692094 (and d!2070130 d!2070048)))

(declare-fun lambda!367831 () Int)

(assert (=> bs!1692094 (= lambda!367831 lambda!367783)))

(declare-fun bs!1692095 () Bool)

(assert (= bs!1692095 (and d!2070130 d!2070068)))

(assert (=> bs!1692095 (= lambda!367831 lambda!367786)))

(assert (=> d!2070130 (= (inv!84409 (h!72020 zl!343)) (forall!15653 (exprs!6349 (h!72020 zl!343)) lambda!367831))))

(declare-fun bs!1692096 () Bool)

(assert (= bs!1692096 d!2070130))

(declare-fun m!7376078 () Bool)

(assert (=> bs!1692096 m!7376078))

(assert (=> b!6599040 d!2070130))

(declare-fun bs!1692097 () Bool)

(declare-fun d!2070134 () Bool)

(assert (= bs!1692097 (and d!2070134 d!2070048)))

(declare-fun lambda!367832 () Int)

(assert (=> bs!1692097 (= lambda!367832 lambda!367783)))

(declare-fun bs!1692098 () Bool)

(assert (= bs!1692098 (and d!2070134 d!2070068)))

(assert (=> bs!1692098 (= lambda!367832 lambda!367786)))

(declare-fun bs!1692099 () Bool)

(assert (= bs!1692099 (and d!2070134 d!2070130)))

(assert (=> bs!1692099 (= lambda!367832 lambda!367831)))

(assert (=> d!2070134 (= (inv!84409 setElem!45060) (forall!15653 (exprs!6349 setElem!45060) lambda!367832))))

(declare-fun bs!1692100 () Bool)

(assert (= bs!1692100 d!2070134))

(declare-fun m!7376080 () Bool)

(assert (=> bs!1692100 m!7376080))

(assert (=> setNonEmpty!45060 d!2070134))

(assert (=> b!6599064 d!2070030))

(declare-fun bs!1692101 () Bool)

(declare-fun d!2070136 () Bool)

(assert (= bs!1692101 (and d!2070136 b!6599070)))

(declare-fun lambda!367833 () Int)

(assert (=> bs!1692101 (= lambda!367833 lambda!367776)))

(declare-fun bs!1692102 () Bool)

(assert (= bs!1692102 (and d!2070136 d!2070124)))

(assert (=> bs!1692102 (= lambda!367833 lambda!367828)))

(assert (=> d!2070136 true))

(assert (=> d!2070136 (= (derivationStepZipper!2431 lt!2413016 (h!72018 s!2326)) (flatMap!1970 lt!2413016 lambda!367833))))

(declare-fun bs!1692103 () Bool)

(assert (= bs!1692103 d!2070136))

(declare-fun m!7376082 () Bool)

(assert (=> bs!1692103 m!7376082))

(assert (=> b!6599044 d!2070136))

(declare-fun d!2070138 () Bool)

(assert (=> d!2070138 (= (flatMap!1970 lt!2413016 lambda!367776) (choose!49252 lt!2413016 lambda!367776))))

(declare-fun bs!1692104 () Bool)

(assert (= bs!1692104 d!2070138))

(declare-fun m!7376084 () Bool)

(assert (=> bs!1692104 m!7376084))

(assert (=> b!6599044 d!2070138))

(declare-fun b!6599573 () Bool)

(declare-fun e!3993371 () (InoxSet Context!11698))

(assert (=> b!6599573 (= e!3993371 ((as const (Array Context!11698 Bool)) false))))

(declare-fun bm!577107 () Bool)

(declare-fun call!577112 () (InoxSet Context!11698))

(assert (=> bm!577107 (= call!577112 (derivationStepZipperDown!1713 (h!72019 (exprs!6349 lt!2413001)) (Context!11699 (t!379347 (exprs!6349 lt!2413001))) (h!72018 s!2326)))))

(declare-fun b!6599574 () Bool)

(assert (=> b!6599574 (= e!3993371 call!577112)))

(declare-fun d!2070140 () Bool)

(declare-fun c!1215608 () Bool)

(declare-fun e!3993372 () Bool)

(assert (=> d!2070140 (= c!1215608 e!3993372)))

(declare-fun res!2706041 () Bool)

(assert (=> d!2070140 (=> (not res!2706041) (not e!3993372))))

(assert (=> d!2070140 (= res!2706041 ((_ is Cons!65571) (exprs!6349 lt!2413001)))))

(declare-fun e!3993370 () (InoxSet Context!11698))

(assert (=> d!2070140 (= (derivationStepZipperUp!1639 lt!2413001 (h!72018 s!2326)) e!3993370)))

(declare-fun b!6599575 () Bool)

(assert (=> b!6599575 (= e!3993372 (nullable!6458 (h!72019 (exprs!6349 lt!2413001))))))

(declare-fun b!6599576 () Bool)

(assert (=> b!6599576 (= e!3993370 e!3993371)))

(declare-fun c!1215609 () Bool)

(assert (=> b!6599576 (= c!1215609 ((_ is Cons!65571) (exprs!6349 lt!2413001)))))

(declare-fun b!6599577 () Bool)

(assert (=> b!6599577 (= e!3993370 ((_ map or) call!577112 (derivationStepZipperUp!1639 (Context!11699 (t!379347 (exprs!6349 lt!2413001))) (h!72018 s!2326))))))

(assert (= (and d!2070140 res!2706041) b!6599575))

(assert (= (and d!2070140 c!1215608) b!6599577))

(assert (= (and d!2070140 (not c!1215608)) b!6599576))

(assert (= (and b!6599576 c!1215609) b!6599574))

(assert (= (and b!6599576 (not c!1215609)) b!6599573))

(assert (= (or b!6599577 b!6599574) bm!577107))

(declare-fun m!7376086 () Bool)

(assert (=> bm!577107 m!7376086))

(declare-fun m!7376088 () Bool)

(assert (=> b!6599575 m!7376088))

(declare-fun m!7376090 () Bool)

(assert (=> b!6599577 m!7376090))

(assert (=> b!6599044 d!2070140))

(declare-fun d!2070142 () Bool)

(assert (=> d!2070142 (= (flatMap!1970 lt!2413016 lambda!367776) (dynLambda!26112 lambda!367776 lt!2413001))))

(declare-fun lt!2413124 () Unit!159195)

(assert (=> d!2070142 (= lt!2413124 (choose!49255 lt!2413016 lt!2413001 lambda!367776))))

(assert (=> d!2070142 (= lt!2413016 (store ((as const (Array Context!11698 Bool)) false) lt!2413001 true))))

(assert (=> d!2070142 (= (lemmaFlatMapOnSingletonSet!1496 lt!2413016 lt!2413001 lambda!367776) lt!2413124)))

(declare-fun b_lambda!249783 () Bool)

(assert (=> (not b_lambda!249783) (not d!2070142)))

(declare-fun bs!1692105 () Bool)

(assert (= bs!1692105 d!2070142))

(assert (=> bs!1692105 m!7375668))

(declare-fun m!7376092 () Bool)

(assert (=> bs!1692105 m!7376092))

(declare-fun m!7376094 () Bool)

(assert (=> bs!1692105 m!7376094))

(assert (=> bs!1692105 m!7375670))

(assert (=> b!6599044 d!2070142))

(assert (=> b!6599067 d!2070110))

(declare-fun d!2070144 () Bool)

(declare-fun c!1215610 () Bool)

(assert (=> d!2070144 (= c!1215610 (isEmpty!37840 s!2326))))

(declare-fun e!3993373 () Bool)

(assert (=> d!2070144 (= (matchZipper!2477 lt!2413008 s!2326) e!3993373)))

(declare-fun b!6599578 () Bool)

(assert (=> b!6599578 (= e!3993373 (nullableZipper!2210 lt!2413008))))

(declare-fun b!6599579 () Bool)

(assert (=> b!6599579 (= e!3993373 (matchZipper!2477 (derivationStepZipper!2431 lt!2413008 (head!13380 s!2326)) (tail!12465 s!2326)))))

(assert (= (and d!2070144 c!1215610) b!6599578))

(assert (= (and d!2070144 (not c!1215610)) b!6599579))

(assert (=> d!2070144 m!7375922))

(declare-fun m!7376096 () Bool)

(assert (=> b!6599578 m!7376096))

(assert (=> b!6599579 m!7375926))

(assert (=> b!6599579 m!7375926))

(declare-fun m!7376098 () Bool)

(assert (=> b!6599579 m!7376098))

(assert (=> b!6599579 m!7375928))

(assert (=> b!6599579 m!7376098))

(assert (=> b!6599579 m!7375928))

(declare-fun m!7376100 () Bool)

(assert (=> b!6599579 m!7376100))

(assert (=> b!6599047 d!2070144))

(declare-fun d!2070146 () Bool)

(declare-fun c!1215611 () Bool)

(assert (=> d!2070146 (= c!1215611 (isEmpty!37840 (t!379346 s!2326)))))

(declare-fun e!3993374 () Bool)

(assert (=> d!2070146 (= (matchZipper!2477 lt!2413029 (t!379346 s!2326)) e!3993374)))

(declare-fun b!6599580 () Bool)

(assert (=> b!6599580 (= e!3993374 (nullableZipper!2210 lt!2413029))))

(declare-fun b!6599581 () Bool)

(assert (=> b!6599581 (= e!3993374 (matchZipper!2477 (derivationStepZipper!2431 lt!2413029 (head!13380 (t!379346 s!2326))) (tail!12465 (t!379346 s!2326))))))

(assert (= (and d!2070146 c!1215611) b!6599580))

(assert (= (and d!2070146 (not c!1215611)) b!6599581))

(assert (=> d!2070146 m!7375748))

(declare-fun m!7376102 () Bool)

(assert (=> b!6599580 m!7376102))

(assert (=> b!6599581 m!7375752))

(assert (=> b!6599581 m!7375752))

(declare-fun m!7376104 () Bool)

(assert (=> b!6599581 m!7376104))

(assert (=> b!6599581 m!7375756))

(assert (=> b!6599581 m!7376104))

(assert (=> b!6599581 m!7375756))

(declare-fun m!7376106 () Bool)

(assert (=> b!6599581 m!7376106))

(assert (=> b!6599047 d!2070146))

(declare-fun bs!1692106 () Bool)

(declare-fun d!2070148 () Bool)

(assert (= bs!1692106 (and d!2070148 d!2070048)))

(declare-fun lambda!367840 () Int)

(assert (=> bs!1692106 (= lambda!367840 lambda!367783)))

(declare-fun bs!1692107 () Bool)

(assert (= bs!1692107 (and d!2070148 d!2070068)))

(assert (=> bs!1692107 (= lambda!367840 lambda!367786)))

(declare-fun bs!1692108 () Bool)

(assert (= bs!1692108 (and d!2070148 d!2070130)))

(assert (=> bs!1692108 (= lambda!367840 lambda!367831)))

(declare-fun bs!1692109 () Bool)

(assert (= bs!1692109 (and d!2070148 d!2070134)))

(assert (=> bs!1692109 (= lambda!367840 lambda!367832)))

(declare-fun b!6599634 () Bool)

(declare-fun e!3993409 () Bool)

(declare-fun lt!2413127 () Regex!16465)

(declare-fun isEmptyExpr!1843 (Regex!16465) Bool)

(assert (=> b!6599634 (= e!3993409 (isEmptyExpr!1843 lt!2413127))))

(declare-fun b!6599635 () Bool)

(declare-fun e!3993410 () Regex!16465)

(assert (=> b!6599635 (= e!3993410 (Concat!25310 (h!72019 (exprs!6349 (h!72020 zl!343))) (generalisedConcat!2062 (t!379347 (exprs!6349 (h!72020 zl!343))))))))

(declare-fun b!6599636 () Bool)

(declare-fun e!3993406 () Bool)

(assert (=> b!6599636 (= e!3993406 (isEmpty!37837 (t!379347 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun b!6599638 () Bool)

(declare-fun e!3993408 () Bool)

(assert (=> b!6599638 (= e!3993409 e!3993408)))

(declare-fun c!1215628 () Bool)

(assert (=> b!6599638 (= c!1215628 (isEmpty!37837 (tail!12466 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun b!6599639 () Bool)

(declare-fun isConcat!1366 (Regex!16465) Bool)

(assert (=> b!6599639 (= e!3993408 (isConcat!1366 lt!2413127))))

(declare-fun b!6599640 () Bool)

(assert (=> b!6599640 (= e!3993408 (= lt!2413127 (head!13381 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun b!6599641 () Bool)

(declare-fun e!3993405 () Bool)

(assert (=> b!6599641 (= e!3993405 e!3993409)))

(declare-fun c!1215630 () Bool)

(assert (=> b!6599641 (= c!1215630 (isEmpty!37837 (exprs!6349 (h!72020 zl!343))))))

(declare-fun b!6599642 () Bool)

(assert (=> b!6599642 (= e!3993410 EmptyExpr!16465)))

(declare-fun b!6599643 () Bool)

(declare-fun e!3993407 () Regex!16465)

(assert (=> b!6599643 (= e!3993407 (h!72019 (exprs!6349 (h!72020 zl!343))))))

(assert (=> d!2070148 e!3993405))

(declare-fun res!2706062 () Bool)

(assert (=> d!2070148 (=> (not res!2706062) (not e!3993405))))

(assert (=> d!2070148 (= res!2706062 (validRegex!8201 lt!2413127))))

(assert (=> d!2070148 (= lt!2413127 e!3993407)))

(declare-fun c!1215631 () Bool)

(assert (=> d!2070148 (= c!1215631 e!3993406)))

(declare-fun res!2706063 () Bool)

(assert (=> d!2070148 (=> (not res!2706063) (not e!3993406))))

(assert (=> d!2070148 (= res!2706063 ((_ is Cons!65571) (exprs!6349 (h!72020 zl!343))))))

(assert (=> d!2070148 (forall!15653 (exprs!6349 (h!72020 zl!343)) lambda!367840)))

(assert (=> d!2070148 (= (generalisedConcat!2062 (exprs!6349 (h!72020 zl!343))) lt!2413127)))

(declare-fun b!6599637 () Bool)

(assert (=> b!6599637 (= e!3993407 e!3993410)))

(declare-fun c!1215629 () Bool)

(assert (=> b!6599637 (= c!1215629 ((_ is Cons!65571) (exprs!6349 (h!72020 zl!343))))))

(assert (= (and d!2070148 res!2706063) b!6599636))

(assert (= (and d!2070148 c!1215631) b!6599643))

(assert (= (and d!2070148 (not c!1215631)) b!6599637))

(assert (= (and b!6599637 c!1215629) b!6599635))

(assert (= (and b!6599637 (not c!1215629)) b!6599642))

(assert (= (and d!2070148 res!2706062) b!6599641))

(assert (= (and b!6599641 c!1215630) b!6599634))

(assert (= (and b!6599641 (not c!1215630)) b!6599638))

(assert (= (and b!6599638 c!1215628) b!6599640))

(assert (= (and b!6599638 (not c!1215628)) b!6599639))

(declare-fun m!7376108 () Bool)

(assert (=> b!6599634 m!7376108))

(declare-fun m!7376110 () Bool)

(assert (=> b!6599639 m!7376110))

(declare-fun m!7376112 () Bool)

(assert (=> b!6599640 m!7376112))

(declare-fun m!7376114 () Bool)

(assert (=> b!6599641 m!7376114))

(declare-fun m!7376116 () Bool)

(assert (=> b!6599638 m!7376116))

(assert (=> b!6599638 m!7376116))

(declare-fun m!7376118 () Bool)

(assert (=> b!6599638 m!7376118))

(assert (=> b!6599636 m!7375710))

(declare-fun m!7376120 () Bool)

(assert (=> d!2070148 m!7376120))

(declare-fun m!7376122 () Bool)

(assert (=> d!2070148 m!7376122))

(assert (=> b!6599635 m!7375600))

(assert (=> b!6599045 d!2070148))

(declare-fun d!2070150 () Bool)

(declare-fun e!3993420 () Bool)

(assert (=> d!2070150 e!3993420))

(declare-fun res!2706069 () Bool)

(assert (=> d!2070150 (=> (not res!2706069) (not e!3993420))))

(declare-fun lt!2413130 () List!65696)

(declare-fun noDuplicate!2270 (List!65696) Bool)

(assert (=> d!2070150 (= res!2706069 (noDuplicate!2270 lt!2413130))))

(declare-fun choose!49258 ((InoxSet Context!11698)) List!65696)

(assert (=> d!2070150 (= lt!2413130 (choose!49258 z!1189))))

(assert (=> d!2070150 (= (toList!10249 z!1189) lt!2413130)))

(declare-fun b!6599657 () Bool)

(declare-fun content!12642 (List!65696) (InoxSet Context!11698))

(assert (=> b!6599657 (= e!3993420 (= (content!12642 lt!2413130) z!1189))))

(assert (= (and d!2070150 res!2706069) b!6599657))

(declare-fun m!7376124 () Bool)

(assert (=> d!2070150 m!7376124))

(declare-fun m!7376126 () Bool)

(assert (=> d!2070150 m!7376126))

(declare-fun m!7376128 () Bool)

(assert (=> b!6599657 m!7376128))

(assert (=> b!6599066 d!2070150))

(declare-fun b!6599714 () Bool)

(declare-fun e!3993454 () Bool)

(declare-fun lt!2413147 () Option!16356)

(assert (=> b!6599714 (= e!3993454 (not (isDefined!13059 lt!2413147)))))

(declare-fun b!6599715 () Bool)

(declare-fun e!3993451 () Option!16356)

(assert (=> b!6599715 (= e!3993451 (Some!16355 (tuple2!66889 Nil!65570 s!2326)))))

(declare-fun b!6599716 () Bool)

(declare-fun e!3993455 () Option!16356)

(assert (=> b!6599716 (= e!3993455 None!16355)))

(declare-fun b!6599717 () Bool)

(declare-fun res!2706096 () Bool)

(declare-fun e!3993452 () Bool)

(assert (=> b!6599717 (=> (not res!2706096) (not e!3993452))))

(declare-fun get!22779 (Option!16356) tuple2!66888)

(assert (=> b!6599717 (= res!2706096 (matchR!8648 (regTwo!33442 r!7292) (_2!36747 (get!22779 lt!2413147))))))

(declare-fun b!6599718 () Bool)

(declare-fun e!3993453 () Bool)

(assert (=> b!6599718 (= e!3993453 (matchR!8648 (regTwo!33442 r!7292) s!2326))))

(declare-fun b!6599719 () Bool)

(assert (=> b!6599719 (= e!3993451 e!3993455)))

(declare-fun c!1215652 () Bool)

(assert (=> b!6599719 (= c!1215652 ((_ is Nil!65570) s!2326))))

(declare-fun b!6599720 () Bool)

(declare-fun res!2706097 () Bool)

(assert (=> b!6599720 (=> (not res!2706097) (not e!3993452))))

(assert (=> b!6599720 (= res!2706097 (matchR!8648 (regOne!33442 r!7292) (_1!36747 (get!22779 lt!2413147))))))

(declare-fun b!6599721 () Bool)

(declare-fun ++!14611 (List!65694 List!65694) List!65694)

(assert (=> b!6599721 (= e!3993452 (= (++!14611 (_1!36747 (get!22779 lt!2413147)) (_2!36747 (get!22779 lt!2413147))) s!2326))))

(declare-fun b!6599722 () Bool)

(declare-fun lt!2413148 () Unit!159195)

(declare-fun lt!2413149 () Unit!159195)

(assert (=> b!6599722 (= lt!2413148 lt!2413149)))

(assert (=> b!6599722 (= (++!14611 (++!14611 Nil!65570 (Cons!65570 (h!72018 s!2326) Nil!65570)) (t!379346 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2608 (List!65694 C!33200 List!65694 List!65694) Unit!159195)

(assert (=> b!6599722 (= lt!2413149 (lemmaMoveElementToOtherListKeepsConcatEq!2608 Nil!65570 (h!72018 s!2326) (t!379346 s!2326) s!2326))))

(assert (=> b!6599722 (= e!3993455 (findConcatSeparation!2770 (regOne!33442 r!7292) (regTwo!33442 r!7292) (++!14611 Nil!65570 (Cons!65570 (h!72018 s!2326) Nil!65570)) (t!379346 s!2326) s!2326))))

(declare-fun d!2070152 () Bool)

(assert (=> d!2070152 e!3993454))

(declare-fun res!2706094 () Bool)

(assert (=> d!2070152 (=> res!2706094 e!3993454)))

(assert (=> d!2070152 (= res!2706094 e!3993452)))

(declare-fun res!2706095 () Bool)

(assert (=> d!2070152 (=> (not res!2706095) (not e!3993452))))

(assert (=> d!2070152 (= res!2706095 (isDefined!13059 lt!2413147))))

(assert (=> d!2070152 (= lt!2413147 e!3993451)))

(declare-fun c!1215653 () Bool)

(assert (=> d!2070152 (= c!1215653 e!3993453)))

(declare-fun res!2706098 () Bool)

(assert (=> d!2070152 (=> (not res!2706098) (not e!3993453))))

(assert (=> d!2070152 (= res!2706098 (matchR!8648 (regOne!33442 r!7292) Nil!65570))))

(assert (=> d!2070152 (validRegex!8201 (regOne!33442 r!7292))))

(assert (=> d!2070152 (= (findConcatSeparation!2770 (regOne!33442 r!7292) (regTwo!33442 r!7292) Nil!65570 s!2326 s!2326) lt!2413147)))

(assert (= (and d!2070152 res!2706098) b!6599718))

(assert (= (and d!2070152 c!1215653) b!6599715))

(assert (= (and d!2070152 (not c!1215653)) b!6599719))

(assert (= (and b!6599719 c!1215652) b!6599716))

(assert (= (and b!6599719 (not c!1215652)) b!6599722))

(assert (= (and d!2070152 res!2706095) b!6599720))

(assert (= (and b!6599720 res!2706097) b!6599717))

(assert (= (and b!6599717 res!2706096) b!6599721))

(assert (= (and d!2070152 (not res!2706094)) b!6599714))

(declare-fun m!7376214 () Bool)

(assert (=> b!6599720 m!7376214))

(declare-fun m!7376216 () Bool)

(assert (=> b!6599720 m!7376216))

(assert (=> b!6599721 m!7376214))

(declare-fun m!7376218 () Bool)

(assert (=> b!6599721 m!7376218))

(declare-fun m!7376220 () Bool)

(assert (=> d!2070152 m!7376220))

(declare-fun m!7376222 () Bool)

(assert (=> d!2070152 m!7376222))

(declare-fun m!7376224 () Bool)

(assert (=> d!2070152 m!7376224))

(declare-fun m!7376226 () Bool)

(assert (=> b!6599722 m!7376226))

(assert (=> b!6599722 m!7376226))

(declare-fun m!7376228 () Bool)

(assert (=> b!6599722 m!7376228))

(declare-fun m!7376230 () Bool)

(assert (=> b!6599722 m!7376230))

(assert (=> b!6599722 m!7376226))

(declare-fun m!7376232 () Bool)

(assert (=> b!6599722 m!7376232))

(assert (=> b!6599714 m!7376220))

(assert (=> b!6599718 m!7375718))

(assert (=> b!6599717 m!7376214))

(declare-fun m!7376234 () Bool)

(assert (=> b!6599717 m!7376234))

(assert (=> b!6599046 d!2070152))

(declare-fun d!2070186 () Bool)

(declare-fun choose!49259 (Int) Bool)

(assert (=> d!2070186 (= (Exists!3535 lambda!367775) (choose!49259 lambda!367775))))

(declare-fun bs!1692136 () Bool)

(assert (= bs!1692136 d!2070186))

(declare-fun m!7376240 () Bool)

(assert (=> bs!1692136 m!7376240))

(assert (=> b!6599046 d!2070186))

(declare-fun d!2070190 () Bool)

(assert (=> d!2070190 (= (Exists!3535 lambda!367774) (choose!49259 lambda!367774))))

(declare-fun bs!1692137 () Bool)

(assert (= bs!1692137 d!2070190))

(declare-fun m!7376242 () Bool)

(assert (=> bs!1692137 m!7376242))

(assert (=> b!6599046 d!2070190))

(declare-fun bs!1692144 () Bool)

(declare-fun d!2070192 () Bool)

(assert (= bs!1692144 (and d!2070192 b!6599046)))

(declare-fun lambda!367848 () Int)

(assert (=> bs!1692144 (= lambda!367848 lambda!367774)))

(assert (=> bs!1692144 (not (= lambda!367848 lambda!367775))))

(declare-fun bs!1692146 () Bool)

(assert (= bs!1692146 (and d!2070192 b!6599426)))

(assert (=> bs!1692146 (not (= lambda!367848 lambda!367809))))

(declare-fun bs!1692147 () Bool)

(assert (= bs!1692147 (and d!2070192 b!6599055)))

(assert (=> bs!1692147 (= (and (= s!2326 Nil!65570) (= (regOne!33442 r!7292) (reg!16794 (regOne!33442 r!7292))) (= (regTwo!33442 r!7292) lt!2413033)) (= lambda!367848 lambda!367777))))

(declare-fun bs!1692148 () Bool)

(assert (= bs!1692148 (and d!2070192 b!6599427)))

(assert (=> bs!1692148 (not (= lambda!367848 lambda!367812))))

(assert (=> d!2070192 true))

(assert (=> d!2070192 true))

(assert (=> d!2070192 true))

(assert (=> d!2070192 (= (isDefined!13059 (findConcatSeparation!2770 (regOne!33442 r!7292) (regTwo!33442 r!7292) Nil!65570 s!2326 s!2326)) (Exists!3535 lambda!367848))))

(declare-fun lt!2413153 () Unit!159195)

(declare-fun choose!49260 (Regex!16465 Regex!16465 List!65694) Unit!159195)

(assert (=> d!2070192 (= lt!2413153 (choose!49260 (regOne!33442 r!7292) (regTwo!33442 r!7292) s!2326))))

(assert (=> d!2070192 (validRegex!8201 (regOne!33442 r!7292))))

(assert (=> d!2070192 (= (lemmaFindConcatSeparationEquivalentToExists!2534 (regOne!33442 r!7292) (regTwo!33442 r!7292) s!2326) lt!2413153)))

(declare-fun bs!1692150 () Bool)

(assert (= bs!1692150 d!2070192))

(assert (=> bs!1692150 m!7376224))

(assert (=> bs!1692150 m!7375614))

(assert (=> bs!1692150 m!7375614))

(assert (=> bs!1692150 m!7375616))

(declare-fun m!7376250 () Bool)

(assert (=> bs!1692150 m!7376250))

(declare-fun m!7376252 () Bool)

(assert (=> bs!1692150 m!7376252))

(assert (=> b!6599046 d!2070192))

(declare-fun bs!1692186 () Bool)

(declare-fun d!2070196 () Bool)

(assert (= bs!1692186 (and d!2070196 b!6599046)))

(declare-fun lambda!367857 () Int)

(assert (=> bs!1692186 (= lambda!367857 lambda!367774)))

(assert (=> bs!1692186 (not (= lambda!367857 lambda!367775))))

(declare-fun bs!1692187 () Bool)

(assert (= bs!1692187 (and d!2070196 d!2070192)))

(assert (=> bs!1692187 (= lambda!367857 lambda!367848)))

(declare-fun bs!1692188 () Bool)

(assert (= bs!1692188 (and d!2070196 b!6599426)))

(assert (=> bs!1692188 (not (= lambda!367857 lambda!367809))))

(declare-fun bs!1692189 () Bool)

(assert (= bs!1692189 (and d!2070196 b!6599055)))

(assert (=> bs!1692189 (= (and (= s!2326 Nil!65570) (= (regOne!33442 r!7292) (reg!16794 (regOne!33442 r!7292))) (= (regTwo!33442 r!7292) lt!2413033)) (= lambda!367857 lambda!367777))))

(declare-fun bs!1692190 () Bool)

(assert (= bs!1692190 (and d!2070196 b!6599427)))

(assert (=> bs!1692190 (not (= lambda!367857 lambda!367812))))

(assert (=> d!2070196 true))

(assert (=> d!2070196 true))

(assert (=> d!2070196 true))

(declare-fun lambda!367858 () Int)

(assert (=> bs!1692186 (not (= lambda!367858 lambda!367774))))

(assert (=> bs!1692186 (= lambda!367858 lambda!367775)))

(assert (=> bs!1692187 (not (= lambda!367858 lambda!367848))))

(declare-fun bs!1692191 () Bool)

(assert (= bs!1692191 d!2070196))

(assert (=> bs!1692191 (not (= lambda!367858 lambda!367857))))

(assert (=> bs!1692188 (not (= lambda!367858 lambda!367809))))

(assert (=> bs!1692189 (not (= lambda!367858 lambda!367777))))

(assert (=> bs!1692190 (= (and (= (regOne!33442 r!7292) (regOne!33442 lt!2413026)) (= (regTwo!33442 r!7292) (regTwo!33442 lt!2413026))) (= lambda!367858 lambda!367812))))

(assert (=> d!2070196 true))

(assert (=> d!2070196 true))

(assert (=> d!2070196 true))

(assert (=> d!2070196 (= (Exists!3535 lambda!367857) (Exists!3535 lambda!367858))))

(declare-fun lt!2413160 () Unit!159195)

(declare-fun choose!49261 (Regex!16465 Regex!16465 List!65694) Unit!159195)

(assert (=> d!2070196 (= lt!2413160 (choose!49261 (regOne!33442 r!7292) (regTwo!33442 r!7292) s!2326))))

(assert (=> d!2070196 (validRegex!8201 (regOne!33442 r!7292))))

(assert (=> d!2070196 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2072 (regOne!33442 r!7292) (regTwo!33442 r!7292) s!2326) lt!2413160)))

(declare-fun m!7376326 () Bool)

(assert (=> bs!1692191 m!7376326))

(declare-fun m!7376328 () Bool)

(assert (=> bs!1692191 m!7376328))

(declare-fun m!7376330 () Bool)

(assert (=> bs!1692191 m!7376330))

(assert (=> bs!1692191 m!7376224))

(assert (=> b!6599046 d!2070196))

(declare-fun d!2070224 () Bool)

(declare-fun isEmpty!37842 (Option!16356) Bool)

(assert (=> d!2070224 (= (isDefined!13059 (findConcatSeparation!2770 (regOne!33442 r!7292) (regTwo!33442 r!7292) Nil!65570 s!2326 s!2326)) (not (isEmpty!37842 (findConcatSeparation!2770 (regOne!33442 r!7292) (regTwo!33442 r!7292) Nil!65570 s!2326 s!2326))))))

(declare-fun bs!1692193 () Bool)

(assert (= bs!1692193 d!2070224))

(assert (=> bs!1692193 m!7375614))

(declare-fun m!7376340 () Bool)

(assert (=> bs!1692193 m!7376340))

(assert (=> b!6599046 d!2070224))

(declare-fun d!2070226 () Bool)

(declare-fun c!1215686 () Bool)

(assert (=> d!2070226 (= c!1215686 (isEmpty!37840 s!2326))))

(declare-fun e!3993530 () Bool)

(assert (=> d!2070226 (= (matchZipper!2477 z!1189 s!2326) e!3993530)))

(declare-fun b!6599841 () Bool)

(assert (=> b!6599841 (= e!3993530 (nullableZipper!2210 z!1189))))

(declare-fun b!6599842 () Bool)

(assert (=> b!6599842 (= e!3993530 (matchZipper!2477 (derivationStepZipper!2431 z!1189 (head!13380 s!2326)) (tail!12465 s!2326)))))

(assert (= (and d!2070226 c!1215686) b!6599841))

(assert (= (and d!2070226 (not c!1215686)) b!6599842))

(assert (=> d!2070226 m!7375922))

(declare-fun m!7376342 () Bool)

(assert (=> b!6599841 m!7376342))

(assert (=> b!6599842 m!7375926))

(assert (=> b!6599842 m!7375926))

(declare-fun m!7376344 () Bool)

(assert (=> b!6599842 m!7376344))

(assert (=> b!6599842 m!7375928))

(assert (=> b!6599842 m!7376344))

(assert (=> b!6599842 m!7375928))

(declare-fun m!7376346 () Bool)

(assert (=> b!6599842 m!7376346))

(assert (=> b!6599069 d!2070226))

(declare-fun b!6599881 () Bool)

(assert (=> b!6599881 true))

(declare-fun bs!1692201 () Bool)

(declare-fun b!6599884 () Bool)

(assert (= bs!1692201 (and b!6599884 b!6599881)))

(declare-fun lt!2413179 () Int)

(declare-fun lambda!367868 () Int)

(declare-fun lt!2413178 () Int)

(declare-fun lambda!367867 () Int)

(assert (=> bs!1692201 (= (= lt!2413179 lt!2413178) (= lambda!367868 lambda!367867))))

(assert (=> b!6599884 true))

(declare-fun d!2070230 () Bool)

(declare-fun e!3993552 () Bool)

(assert (=> d!2070230 e!3993552))

(declare-fun res!2706167 () Bool)

(assert (=> d!2070230 (=> (not res!2706167) (not e!3993552))))

(assert (=> d!2070230 (= res!2706167 (>= lt!2413179 0))))

(declare-fun e!3993553 () Int)

(assert (=> d!2070230 (= lt!2413179 e!3993553)))

(declare-fun c!1215698 () Bool)

(assert (=> d!2070230 (= c!1215698 ((_ is Cons!65572) zl!343))))

(assert (=> d!2070230 (= (zipperDepth!402 zl!343) lt!2413179)))

(assert (=> b!6599881 (= e!3993553 lt!2413178)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!291 (Context!11698) Int)

(assert (=> b!6599881 (= lt!2413178 (maxBigInt!0 (contextDepth!291 (h!72020 zl!343)) (zipperDepth!402 (t!379348 zl!343))))))

(declare-fun lambda!367866 () Int)

(declare-fun lt!2413176 () Unit!159195)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!275 (List!65696 Int Int Int) Unit!159195)

(assert (=> b!6599881 (= lt!2413176 (lemmaForallContextDepthBiggerThanTransitive!275 (t!379348 zl!343) lt!2413178 (zipperDepth!402 (t!379348 zl!343)) lambda!367866))))

(declare-fun forall!15655 (List!65696 Int) Bool)

(assert (=> b!6599881 (forall!15655 (t!379348 zl!343) lambda!367867)))

(declare-fun lt!2413177 () Unit!159195)

(assert (=> b!6599881 (= lt!2413177 lt!2413176)))

(declare-fun b!6599883 () Bool)

(assert (=> b!6599883 (= e!3993553 0)))

(assert (=> b!6599884 (= e!3993552 (forall!15655 zl!343 lambda!367868))))

(assert (= (and d!2070230 c!1215698) b!6599881))

(assert (= (and d!2070230 (not c!1215698)) b!6599883))

(assert (= (and d!2070230 res!2706167) b!6599884))

(declare-fun m!7376374 () Bool)

(assert (=> b!6599881 m!7376374))

(declare-fun m!7376376 () Bool)

(assert (=> b!6599881 m!7376376))

(declare-fun m!7376378 () Bool)

(assert (=> b!6599881 m!7376378))

(assert (=> b!6599881 m!7376374))

(declare-fun m!7376380 () Bool)

(assert (=> b!6599881 m!7376380))

(assert (=> b!6599881 m!7376376))

(assert (=> b!6599881 m!7376376))

(declare-fun m!7376382 () Bool)

(assert (=> b!6599881 m!7376382))

(declare-fun m!7376384 () Bool)

(assert (=> b!6599884 m!7376384))

(assert (=> b!6599050 d!2070230))

(declare-fun bs!1692202 () Bool)

(declare-fun b!6599906 () Bool)

(assert (= bs!1692202 (and b!6599906 b!6599881)))

(declare-fun lambda!367869 () Int)

(assert (=> bs!1692202 (= lambda!367869 lambda!367866)))

(declare-fun lambda!367870 () Int)

(declare-fun lt!2413182 () Int)

(assert (=> bs!1692202 (= (= lt!2413182 lt!2413178) (= lambda!367870 lambda!367867))))

(declare-fun bs!1692203 () Bool)

(assert (= bs!1692203 (and b!6599906 b!6599884)))

(assert (=> bs!1692203 (= (= lt!2413182 lt!2413179) (= lambda!367870 lambda!367868))))

(assert (=> b!6599906 true))

(declare-fun bs!1692204 () Bool)

(declare-fun b!6599908 () Bool)

(assert (= bs!1692204 (and b!6599908 b!6599881)))

(declare-fun lambda!367871 () Int)

(declare-fun lt!2413183 () Int)

(assert (=> bs!1692204 (= (= lt!2413183 lt!2413178) (= lambda!367871 lambda!367867))))

(declare-fun bs!1692205 () Bool)

(assert (= bs!1692205 (and b!6599908 b!6599884)))

(assert (=> bs!1692205 (= (= lt!2413183 lt!2413179) (= lambda!367871 lambda!367868))))

(declare-fun bs!1692206 () Bool)

(assert (= bs!1692206 (and b!6599908 b!6599906)))

(assert (=> bs!1692206 (= (= lt!2413183 lt!2413182) (= lambda!367871 lambda!367870))))

(assert (=> b!6599908 true))

(declare-fun d!2070240 () Bool)

(declare-fun e!3993559 () Bool)

(assert (=> d!2070240 e!3993559))

(declare-fun res!2706168 () Bool)

(assert (=> d!2070240 (=> (not res!2706168) (not e!3993559))))

(assert (=> d!2070240 (= res!2706168 (>= lt!2413183 0))))

(declare-fun e!3993561 () Int)

(assert (=> d!2070240 (= lt!2413183 e!3993561)))

(declare-fun c!1215699 () Bool)

(assert (=> d!2070240 (= c!1215699 ((_ is Cons!65572) lt!2413027))))

(assert (=> d!2070240 (= (zipperDepth!402 lt!2413027) lt!2413183)))

(assert (=> b!6599906 (= e!3993561 lt!2413182)))

(assert (=> b!6599906 (= lt!2413182 (maxBigInt!0 (contextDepth!291 (h!72020 lt!2413027)) (zipperDepth!402 (t!379348 lt!2413027))))))

(declare-fun lt!2413180 () Unit!159195)

(assert (=> b!6599906 (= lt!2413180 (lemmaForallContextDepthBiggerThanTransitive!275 (t!379348 lt!2413027) lt!2413182 (zipperDepth!402 (t!379348 lt!2413027)) lambda!367869))))

(assert (=> b!6599906 (forall!15655 (t!379348 lt!2413027) lambda!367870)))

(declare-fun lt!2413181 () Unit!159195)

(assert (=> b!6599906 (= lt!2413181 lt!2413180)))

(declare-fun b!6599907 () Bool)

(assert (=> b!6599907 (= e!3993561 0)))

(assert (=> b!6599908 (= e!3993559 (forall!15655 lt!2413027 lambda!367871))))

(assert (= (and d!2070240 c!1215699) b!6599906))

(assert (= (and d!2070240 (not c!1215699)) b!6599907))

(assert (= (and d!2070240 res!2706168) b!6599908))

(declare-fun m!7376388 () Bool)

(assert (=> b!6599906 m!7376388))

(declare-fun m!7376390 () Bool)

(assert (=> b!6599906 m!7376390))

(declare-fun m!7376392 () Bool)

(assert (=> b!6599906 m!7376392))

(assert (=> b!6599906 m!7376388))

(declare-fun m!7376394 () Bool)

(assert (=> b!6599906 m!7376394))

(assert (=> b!6599906 m!7376390))

(assert (=> b!6599906 m!7376390))

(declare-fun m!7376396 () Bool)

(assert (=> b!6599906 m!7376396))

(declare-fun m!7376398 () Bool)

(assert (=> b!6599908 m!7376398))

(assert (=> b!6599050 d!2070240))

(declare-fun b!6599929 () Bool)

(declare-fun res!2706172 () Bool)

(declare-fun e!3993574 () Bool)

(assert (=> b!6599929 (=> (not res!2706172) (not e!3993574))))

(declare-fun call!577147 () Bool)

(assert (=> b!6599929 (= res!2706172 (not call!577147))))

(declare-fun b!6599930 () Bool)

(declare-fun e!3993571 () Bool)

(declare-fun e!3993572 () Bool)

(assert (=> b!6599930 (= e!3993571 e!3993572)))

(declare-fun res!2706174 () Bool)

(assert (=> b!6599930 (=> (not res!2706174) (not e!3993572))))

(declare-fun lt!2413184 () Bool)

(assert (=> b!6599930 (= res!2706174 (not lt!2413184))))

(declare-fun bm!577142 () Bool)

(assert (=> bm!577142 (= call!577147 (isEmpty!37840 s!2326))))

(declare-fun b!6599931 () Bool)

(declare-fun res!2706176 () Bool)

(assert (=> b!6599931 (=> res!2706176 e!3993571)))

(assert (=> b!6599931 (= res!2706176 (not ((_ is ElementMatch!16465) (regTwo!33442 r!7292))))))

(declare-fun e!3993577 () Bool)

(assert (=> b!6599931 (= e!3993577 e!3993571)))

(declare-fun b!6599932 () Bool)

(declare-fun e!3993573 () Bool)

(assert (=> b!6599932 (= e!3993573 (= lt!2413184 call!577147))))

(declare-fun b!6599933 () Bool)

(declare-fun res!2706171 () Bool)

(assert (=> b!6599933 (=> (not res!2706171) (not e!3993574))))

(assert (=> b!6599933 (= res!2706171 (isEmpty!37840 (tail!12465 s!2326)))))

(declare-fun b!6599934 () Bool)

(assert (=> b!6599934 (= e!3993577 (not lt!2413184))))

(declare-fun b!6599935 () Bool)

(assert (=> b!6599935 (= e!3993573 e!3993577)))

(declare-fun c!1215701 () Bool)

(assert (=> b!6599935 (= c!1215701 ((_ is EmptyLang!16465) (regTwo!33442 r!7292)))))

(declare-fun b!6599936 () Bool)

(declare-fun e!3993576 () Bool)

(assert (=> b!6599936 (= e!3993576 (not (= (head!13380 s!2326) (c!1215438 (regTwo!33442 r!7292)))))))

(declare-fun b!6599937 () Bool)

(declare-fun e!3993575 () Bool)

(assert (=> b!6599937 (= e!3993575 (nullable!6458 (regTwo!33442 r!7292)))))

(declare-fun b!6599938 () Bool)

(assert (=> b!6599938 (= e!3993574 (= (head!13380 s!2326) (c!1215438 (regTwo!33442 r!7292))))))

(declare-fun b!6599939 () Bool)

(declare-fun res!2706173 () Bool)

(assert (=> b!6599939 (=> res!2706173 e!3993576)))

(assert (=> b!6599939 (= res!2706173 (not (isEmpty!37840 (tail!12465 s!2326))))))

(declare-fun b!6599940 () Bool)

(assert (=> b!6599940 (= e!3993575 (matchR!8648 (derivativeStep!5148 (regTwo!33442 r!7292) (head!13380 s!2326)) (tail!12465 s!2326)))))

(declare-fun b!6599941 () Bool)

(declare-fun res!2706170 () Bool)

(assert (=> b!6599941 (=> res!2706170 e!3993571)))

(assert (=> b!6599941 (= res!2706170 e!3993574)))

(declare-fun res!2706169 () Bool)

(assert (=> b!6599941 (=> (not res!2706169) (not e!3993574))))

(assert (=> b!6599941 (= res!2706169 lt!2413184)))

(declare-fun d!2070242 () Bool)

(assert (=> d!2070242 e!3993573))

(declare-fun c!1215700 () Bool)

(assert (=> d!2070242 (= c!1215700 ((_ is EmptyExpr!16465) (regTwo!33442 r!7292)))))

(assert (=> d!2070242 (= lt!2413184 e!3993575)))

(declare-fun c!1215702 () Bool)

(assert (=> d!2070242 (= c!1215702 (isEmpty!37840 s!2326))))

(assert (=> d!2070242 (validRegex!8201 (regTwo!33442 r!7292))))

(assert (=> d!2070242 (= (matchR!8648 (regTwo!33442 r!7292) s!2326) lt!2413184)))

(declare-fun b!6599942 () Bool)

(assert (=> b!6599942 (= e!3993572 e!3993576)))

(declare-fun res!2706175 () Bool)

(assert (=> b!6599942 (=> res!2706175 e!3993576)))

(assert (=> b!6599942 (= res!2706175 call!577147)))

(assert (= (and d!2070242 c!1215702) b!6599937))

(assert (= (and d!2070242 (not c!1215702)) b!6599940))

(assert (= (and d!2070242 c!1215700) b!6599932))

(assert (= (and d!2070242 (not c!1215700)) b!6599935))

(assert (= (and b!6599935 c!1215701) b!6599934))

(assert (= (and b!6599935 (not c!1215701)) b!6599931))

(assert (= (and b!6599931 (not res!2706176)) b!6599941))

(assert (= (and b!6599941 res!2706169) b!6599929))

(assert (= (and b!6599929 res!2706172) b!6599933))

(assert (= (and b!6599933 res!2706171) b!6599938))

(assert (= (and b!6599941 (not res!2706170)) b!6599930))

(assert (= (and b!6599930 res!2706174) b!6599942))

(assert (= (and b!6599942 (not res!2706175)) b!6599939))

(assert (= (and b!6599939 (not res!2706173)) b!6599936))

(assert (= (or b!6599932 b!6599929 b!6599942) bm!577142))

(assert (=> bm!577142 m!7375922))

(assert (=> d!2070242 m!7375922))

(declare-fun m!7376400 () Bool)

(assert (=> d!2070242 m!7376400))

(assert (=> b!6599938 m!7375926))

(assert (=> b!6599933 m!7375928))

(assert (=> b!6599933 m!7375928))

(assert (=> b!6599933 m!7375930))

(declare-fun m!7376402 () Bool)

(assert (=> b!6599937 m!7376402))

(assert (=> b!6599936 m!7375926))

(assert (=> b!6599939 m!7375928))

(assert (=> b!6599939 m!7375928))

(assert (=> b!6599939 m!7375930))

(assert (=> b!6599940 m!7375926))

(assert (=> b!6599940 m!7375926))

(declare-fun m!7376404 () Bool)

(assert (=> b!6599940 m!7376404))

(assert (=> b!6599940 m!7375928))

(assert (=> b!6599940 m!7376404))

(assert (=> b!6599940 m!7375928))

(declare-fun m!7376406 () Bool)

(assert (=> b!6599940 m!7376406))

(assert (=> b!6599048 d!2070242))

(declare-fun b!6599943 () Bool)

(declare-fun res!2706180 () Bool)

(declare-fun e!3993581 () Bool)

(assert (=> b!6599943 (=> (not res!2706180) (not e!3993581))))

(declare-fun call!577148 () Bool)

(assert (=> b!6599943 (= res!2706180 (not call!577148))))

(declare-fun b!6599944 () Bool)

(declare-fun e!3993578 () Bool)

(declare-fun e!3993579 () Bool)

(assert (=> b!6599944 (= e!3993578 e!3993579)))

(declare-fun res!2706182 () Bool)

(assert (=> b!6599944 (=> (not res!2706182) (not e!3993579))))

(declare-fun lt!2413185 () Bool)

(assert (=> b!6599944 (= res!2706182 (not lt!2413185))))

(declare-fun bm!577143 () Bool)

(assert (=> bm!577143 (= call!577148 (isEmpty!37840 s!2326))))

(declare-fun b!6599945 () Bool)

(declare-fun res!2706184 () Bool)

(assert (=> b!6599945 (=> res!2706184 e!3993578)))

(assert (=> b!6599945 (= res!2706184 (not ((_ is ElementMatch!16465) lt!2413031)))))

(declare-fun e!3993584 () Bool)

(assert (=> b!6599945 (= e!3993584 e!3993578)))

(declare-fun b!6599946 () Bool)

(declare-fun e!3993580 () Bool)

(assert (=> b!6599946 (= e!3993580 (= lt!2413185 call!577148))))

(declare-fun b!6599947 () Bool)

(declare-fun res!2706179 () Bool)

(assert (=> b!6599947 (=> (not res!2706179) (not e!3993581))))

(assert (=> b!6599947 (= res!2706179 (isEmpty!37840 (tail!12465 s!2326)))))

(declare-fun b!6599948 () Bool)

(assert (=> b!6599948 (= e!3993584 (not lt!2413185))))

(declare-fun b!6599949 () Bool)

(assert (=> b!6599949 (= e!3993580 e!3993584)))

(declare-fun c!1215704 () Bool)

(assert (=> b!6599949 (= c!1215704 ((_ is EmptyLang!16465) lt!2413031))))

(declare-fun b!6599950 () Bool)

(declare-fun e!3993583 () Bool)

(assert (=> b!6599950 (= e!3993583 (not (= (head!13380 s!2326) (c!1215438 lt!2413031))))))

(declare-fun b!6599951 () Bool)

(declare-fun e!3993582 () Bool)

(assert (=> b!6599951 (= e!3993582 (nullable!6458 lt!2413031))))

(declare-fun b!6599952 () Bool)

(assert (=> b!6599952 (= e!3993581 (= (head!13380 s!2326) (c!1215438 lt!2413031)))))

(declare-fun b!6599953 () Bool)

(declare-fun res!2706181 () Bool)

(assert (=> b!6599953 (=> res!2706181 e!3993583)))

(assert (=> b!6599953 (= res!2706181 (not (isEmpty!37840 (tail!12465 s!2326))))))

(declare-fun b!6599954 () Bool)

(assert (=> b!6599954 (= e!3993582 (matchR!8648 (derivativeStep!5148 lt!2413031 (head!13380 s!2326)) (tail!12465 s!2326)))))

(declare-fun b!6599955 () Bool)

(declare-fun res!2706178 () Bool)

(assert (=> b!6599955 (=> res!2706178 e!3993578)))

(assert (=> b!6599955 (= res!2706178 e!3993581)))

(declare-fun res!2706177 () Bool)

(assert (=> b!6599955 (=> (not res!2706177) (not e!3993581))))

(assert (=> b!6599955 (= res!2706177 lt!2413185)))

(declare-fun d!2070254 () Bool)

(assert (=> d!2070254 e!3993580))

(declare-fun c!1215703 () Bool)

(assert (=> d!2070254 (= c!1215703 ((_ is EmptyExpr!16465) lt!2413031))))

(assert (=> d!2070254 (= lt!2413185 e!3993582)))

(declare-fun c!1215705 () Bool)

(assert (=> d!2070254 (= c!1215705 (isEmpty!37840 s!2326))))

(assert (=> d!2070254 (validRegex!8201 lt!2413031)))

(assert (=> d!2070254 (= (matchR!8648 lt!2413031 s!2326) lt!2413185)))

(declare-fun b!6599956 () Bool)

(assert (=> b!6599956 (= e!3993579 e!3993583)))

(declare-fun res!2706183 () Bool)

(assert (=> b!6599956 (=> res!2706183 e!3993583)))

(assert (=> b!6599956 (= res!2706183 call!577148)))

(assert (= (and d!2070254 c!1215705) b!6599951))

(assert (= (and d!2070254 (not c!1215705)) b!6599954))

(assert (= (and d!2070254 c!1215703) b!6599946))

(assert (= (and d!2070254 (not c!1215703)) b!6599949))

(assert (= (and b!6599949 c!1215704) b!6599948))

(assert (= (and b!6599949 (not c!1215704)) b!6599945))

(assert (= (and b!6599945 (not res!2706184)) b!6599955))

(assert (= (and b!6599955 res!2706177) b!6599943))

(assert (= (and b!6599943 res!2706180) b!6599947))

(assert (= (and b!6599947 res!2706179) b!6599952))

(assert (= (and b!6599955 (not res!2706178)) b!6599944))

(assert (= (and b!6599944 res!2706182) b!6599956))

(assert (= (and b!6599956 (not res!2706183)) b!6599953))

(assert (= (and b!6599953 (not res!2706181)) b!6599950))

(assert (= (or b!6599946 b!6599943 b!6599956) bm!577143))

(assert (=> bm!577143 m!7375922))

(assert (=> d!2070254 m!7375922))

(declare-fun m!7376408 () Bool)

(assert (=> d!2070254 m!7376408))

(assert (=> b!6599952 m!7375926))

(assert (=> b!6599947 m!7375928))

(assert (=> b!6599947 m!7375928))

(assert (=> b!6599947 m!7375930))

(declare-fun m!7376410 () Bool)

(assert (=> b!6599951 m!7376410))

(assert (=> b!6599950 m!7375926))

(assert (=> b!6599953 m!7375928))

(assert (=> b!6599953 m!7375928))

(assert (=> b!6599953 m!7375930))

(assert (=> b!6599954 m!7375926))

(assert (=> b!6599954 m!7375926))

(declare-fun m!7376412 () Bool)

(assert (=> b!6599954 m!7376412))

(assert (=> b!6599954 m!7375928))

(assert (=> b!6599954 m!7376412))

(assert (=> b!6599954 m!7375928))

(declare-fun m!7376414 () Bool)

(assert (=> b!6599954 m!7376414))

(assert (=> b!6599048 d!2070254))

(declare-fun d!2070256 () Bool)

(declare-fun c!1215706 () Bool)

(assert (=> d!2070256 (= c!1215706 (isEmpty!37840 s!2326))))

(declare-fun e!3993585 () Bool)

(assert (=> d!2070256 (= (matchZipper!2477 lt!2413016 s!2326) e!3993585)))

(declare-fun b!6599957 () Bool)

(assert (=> b!6599957 (= e!3993585 (nullableZipper!2210 lt!2413016))))

(declare-fun b!6599958 () Bool)

(assert (=> b!6599958 (= e!3993585 (matchZipper!2477 (derivationStepZipper!2431 lt!2413016 (head!13380 s!2326)) (tail!12465 s!2326)))))

(assert (= (and d!2070256 c!1215706) b!6599957))

(assert (= (and d!2070256 (not c!1215706)) b!6599958))

(assert (=> d!2070256 m!7375922))

(declare-fun m!7376416 () Bool)

(assert (=> b!6599957 m!7376416))

(assert (=> b!6599958 m!7375926))

(assert (=> b!6599958 m!7375926))

(declare-fun m!7376418 () Bool)

(assert (=> b!6599958 m!7376418))

(assert (=> b!6599958 m!7375928))

(assert (=> b!6599958 m!7376418))

(assert (=> b!6599958 m!7375928))

(declare-fun m!7376420 () Bool)

(assert (=> b!6599958 m!7376420))

(assert (=> b!6599048 d!2070256))

(declare-fun d!2070258 () Bool)

(assert (=> d!2070258 (= (matchR!8648 lt!2413031 s!2326) (matchZipper!2477 lt!2413016 s!2326))))

(declare-fun lt!2413188 () Unit!159195)

(declare-fun choose!49263 ((InoxSet Context!11698) List!65696 Regex!16465 List!65694) Unit!159195)

(assert (=> d!2070258 (= lt!2413188 (choose!49263 lt!2413016 lt!2413027 lt!2413031 s!2326))))

(assert (=> d!2070258 (validRegex!8201 lt!2413031)))

(assert (=> d!2070258 (= (theoremZipperRegexEquiv!887 lt!2413016 lt!2413027 lt!2413031 s!2326) lt!2413188)))

(declare-fun bs!1692212 () Bool)

(assert (= bs!1692212 d!2070258))

(assert (=> bs!1692212 m!7375720))

(assert (=> bs!1692212 m!7375722))

(declare-fun m!7376422 () Bool)

(assert (=> bs!1692212 m!7376422))

(assert (=> bs!1692212 m!7376408))

(assert (=> b!6599048 d!2070258))

(declare-fun b!6599981 () Bool)

(declare-fun e!3993602 () (InoxSet Context!11698))

(declare-fun e!3993600 () (InoxSet Context!11698))

(assert (=> b!6599981 (= e!3993602 e!3993600)))

(declare-fun c!1215718 () Bool)

(assert (=> b!6599981 (= c!1215718 ((_ is Union!16465) (reg!16794 (regOne!33442 r!7292))))))

(declare-fun b!6599982 () Bool)

(declare-fun e!3993598 () (InoxSet Context!11698))

(declare-fun call!577163 () (InoxSet Context!11698))

(declare-fun call!577162 () (InoxSet Context!11698))

(assert (=> b!6599982 (= e!3993598 ((_ map or) call!577163 call!577162))))

(declare-fun b!6599983 () Bool)

(declare-fun call!577161 () (InoxSet Context!11698))

(assert (=> b!6599983 (= e!3993600 ((_ map or) call!577163 call!577161))))

(declare-fun b!6599984 () Bool)

(assert (=> b!6599984 (= e!3993602 (store ((as const (Array Context!11698 Bool)) false) lt!2413018 true))))

(declare-fun b!6599985 () Bool)

(declare-fun c!1215721 () Bool)

(declare-fun e!3993599 () Bool)

(assert (=> b!6599985 (= c!1215721 e!3993599)))

(declare-fun res!2706187 () Bool)

(assert (=> b!6599985 (=> (not res!2706187) (not e!3993599))))

(assert (=> b!6599985 (= res!2706187 ((_ is Concat!25310) (reg!16794 (regOne!33442 r!7292))))))

(assert (=> b!6599985 (= e!3993600 e!3993598)))

(declare-fun bm!577156 () Bool)

(declare-fun call!577164 () List!65695)

(declare-fun c!1215717 () Bool)

(declare-fun $colon$colon!2306 (List!65695 Regex!16465) List!65695)

(assert (=> bm!577156 (= call!577164 ($colon$colon!2306 (exprs!6349 lt!2413018) (ite (or c!1215721 c!1215717) (regTwo!33442 (reg!16794 (regOne!33442 r!7292))) (reg!16794 (regOne!33442 r!7292)))))))

(declare-fun bm!577158 () Bool)

(assert (=> bm!577158 (= call!577162 call!577161)))

(declare-fun b!6599986 () Bool)

(declare-fun e!3993603 () (InoxSet Context!11698))

(declare-fun call!577165 () (InoxSet Context!11698))

(assert (=> b!6599986 (= e!3993603 call!577165)))

(declare-fun b!6599987 () Bool)

(assert (=> b!6599987 (= e!3993603 ((as const (Array Context!11698 Bool)) false))))

(declare-fun b!6599988 () Bool)

(assert (=> b!6599988 (= e!3993599 (nullable!6458 (regOne!33442 (reg!16794 (regOne!33442 r!7292)))))))

(declare-fun call!577166 () List!65695)

(declare-fun bm!577159 () Bool)

(assert (=> bm!577159 (= call!577161 (derivationStepZipperDown!1713 (ite c!1215718 (regTwo!33443 (reg!16794 (regOne!33442 r!7292))) (ite c!1215721 (regTwo!33442 (reg!16794 (regOne!33442 r!7292))) (ite c!1215717 (regOne!33442 (reg!16794 (regOne!33442 r!7292))) (reg!16794 (reg!16794 (regOne!33442 r!7292)))))) (ite (or c!1215718 c!1215721) lt!2413018 (Context!11699 call!577166)) (h!72018 s!2326)))))

(declare-fun b!6599989 () Bool)

(declare-fun c!1215720 () Bool)

(assert (=> b!6599989 (= c!1215720 ((_ is Star!16465) (reg!16794 (regOne!33442 r!7292))))))

(declare-fun e!3993601 () (InoxSet Context!11698))

(assert (=> b!6599989 (= e!3993601 e!3993603)))

(declare-fun b!6599990 () Bool)

(assert (=> b!6599990 (= e!3993598 e!3993601)))

(assert (=> b!6599990 (= c!1215717 ((_ is Concat!25310) (reg!16794 (regOne!33442 r!7292))))))

(declare-fun bm!577160 () Bool)

(assert (=> bm!577160 (= call!577165 call!577162)))

(declare-fun bm!577161 () Bool)

(assert (=> bm!577161 (= call!577163 (derivationStepZipperDown!1713 (ite c!1215718 (regOne!33443 (reg!16794 (regOne!33442 r!7292))) (regOne!33442 (reg!16794 (regOne!33442 r!7292)))) (ite c!1215718 lt!2413018 (Context!11699 call!577164)) (h!72018 s!2326)))))

(declare-fun b!6599991 () Bool)

(assert (=> b!6599991 (= e!3993601 call!577165)))

(declare-fun bm!577157 () Bool)

(assert (=> bm!577157 (= call!577166 call!577164)))

(declare-fun d!2070260 () Bool)

(declare-fun c!1215719 () Bool)

(assert (=> d!2070260 (= c!1215719 (and ((_ is ElementMatch!16465) (reg!16794 (regOne!33442 r!7292))) (= (c!1215438 (reg!16794 (regOne!33442 r!7292))) (h!72018 s!2326))))))

(assert (=> d!2070260 (= (derivationStepZipperDown!1713 (reg!16794 (regOne!33442 r!7292)) lt!2413018 (h!72018 s!2326)) e!3993602)))

(assert (= (and d!2070260 c!1215719) b!6599984))

(assert (= (and d!2070260 (not c!1215719)) b!6599981))

(assert (= (and b!6599981 c!1215718) b!6599983))

(assert (= (and b!6599981 (not c!1215718)) b!6599985))

(assert (= (and b!6599985 res!2706187) b!6599988))

(assert (= (and b!6599985 c!1215721) b!6599982))

(assert (= (and b!6599985 (not c!1215721)) b!6599990))

(assert (= (and b!6599990 c!1215717) b!6599991))

(assert (= (and b!6599990 (not c!1215717)) b!6599989))

(assert (= (and b!6599989 c!1215720) b!6599986))

(assert (= (and b!6599989 (not c!1215720)) b!6599987))

(assert (= (or b!6599991 b!6599986) bm!577157))

(assert (= (or b!6599991 b!6599986) bm!577160))

(assert (= (or b!6599982 bm!577157) bm!577156))

(assert (= (or b!6599982 bm!577160) bm!577158))

(assert (= (or b!6599983 bm!577158) bm!577159))

(assert (= (or b!6599983 b!6599982) bm!577161))

(declare-fun m!7376424 () Bool)

(assert (=> bm!577159 m!7376424))

(declare-fun m!7376426 () Bool)

(assert (=> b!6599988 m!7376426))

(assert (=> b!6599984 m!7375730))

(declare-fun m!7376428 () Bool)

(assert (=> bm!577156 m!7376428))

(declare-fun m!7376430 () Bool)

(assert (=> bm!577161 m!7376430))

(assert (=> b!6599068 d!2070260))

(declare-fun d!2070262 () Bool)

(declare-fun nullableFct!2384 (Regex!16465) Bool)

(assert (=> d!2070262 (= (nullable!6458 (regOne!33442 (regOne!33442 r!7292))) (nullableFct!2384 (regOne!33442 (regOne!33442 r!7292))))))

(declare-fun bs!1692213 () Bool)

(assert (= bs!1692213 d!2070262))

(declare-fun m!7376432 () Bool)

(assert (=> bs!1692213 m!7376432))

(assert (=> b!6599052 d!2070262))

(declare-fun d!2070264 () Bool)

(assert (=> d!2070264 (= (flatMap!1970 z!1189 lambda!367776) (dynLambda!26112 lambda!367776 (h!72020 zl!343)))))

(declare-fun lt!2413189 () Unit!159195)

(assert (=> d!2070264 (= lt!2413189 (choose!49255 z!1189 (h!72020 zl!343) lambda!367776))))

(assert (=> d!2070264 (= z!1189 (store ((as const (Array Context!11698 Bool)) false) (h!72020 zl!343) true))))

(assert (=> d!2070264 (= (lemmaFlatMapOnSingletonSet!1496 z!1189 (h!72020 zl!343) lambda!367776) lt!2413189)))

(declare-fun b_lambda!249801 () Bool)

(assert (=> (not b_lambda!249801) (not d!2070264)))

(declare-fun bs!1692214 () Bool)

(assert (= bs!1692214 d!2070264))

(assert (=> bs!1692214 m!7375636))

(declare-fun m!7376434 () Bool)

(assert (=> bs!1692214 m!7376434))

(declare-fun m!7376436 () Bool)

(assert (=> bs!1692214 m!7376436))

(declare-fun m!7376438 () Bool)

(assert (=> bs!1692214 m!7376438))

(assert (=> b!6599070 d!2070264))

(declare-fun d!2070266 () Bool)

(assert (=> d!2070266 (= (nullable!6458 (h!72019 (exprs!6349 (h!72020 zl!343)))) (nullableFct!2384 (h!72019 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun bs!1692215 () Bool)

(assert (= bs!1692215 d!2070266))

(declare-fun m!7376440 () Bool)

(assert (=> bs!1692215 m!7376440))

(assert (=> b!6599070 d!2070266))

(declare-fun b!6599992 () Bool)

(declare-fun e!3993605 () (InoxSet Context!11698))

(assert (=> b!6599992 (= e!3993605 ((as const (Array Context!11698 Bool)) false))))

(declare-fun bm!577162 () Bool)

(declare-fun call!577167 () (InoxSet Context!11698))

(assert (=> bm!577162 (= call!577167 (derivationStepZipperDown!1713 (h!72019 (exprs!6349 (Context!11699 (Cons!65571 (h!72019 (exprs!6349 (h!72020 zl!343))) (t!379347 (exprs!6349 (h!72020 zl!343))))))) (Context!11699 (t!379347 (exprs!6349 (Context!11699 (Cons!65571 (h!72019 (exprs!6349 (h!72020 zl!343))) (t!379347 (exprs!6349 (h!72020 zl!343)))))))) (h!72018 s!2326)))))

(declare-fun b!6599993 () Bool)

(assert (=> b!6599993 (= e!3993605 call!577167)))

(declare-fun d!2070268 () Bool)

(declare-fun c!1215722 () Bool)

(declare-fun e!3993606 () Bool)

(assert (=> d!2070268 (= c!1215722 e!3993606)))

(declare-fun res!2706188 () Bool)

(assert (=> d!2070268 (=> (not res!2706188) (not e!3993606))))

(assert (=> d!2070268 (= res!2706188 ((_ is Cons!65571) (exprs!6349 (Context!11699 (Cons!65571 (h!72019 (exprs!6349 (h!72020 zl!343))) (t!379347 (exprs!6349 (h!72020 zl!343))))))))))

(declare-fun e!3993604 () (InoxSet Context!11698))

(assert (=> d!2070268 (= (derivationStepZipperUp!1639 (Context!11699 (Cons!65571 (h!72019 (exprs!6349 (h!72020 zl!343))) (t!379347 (exprs!6349 (h!72020 zl!343))))) (h!72018 s!2326)) e!3993604)))

(declare-fun b!6599994 () Bool)

(assert (=> b!6599994 (= e!3993606 (nullable!6458 (h!72019 (exprs!6349 (Context!11699 (Cons!65571 (h!72019 (exprs!6349 (h!72020 zl!343))) (t!379347 (exprs!6349 (h!72020 zl!343)))))))))))

(declare-fun b!6599995 () Bool)

(assert (=> b!6599995 (= e!3993604 e!3993605)))

(declare-fun c!1215723 () Bool)

(assert (=> b!6599995 (= c!1215723 ((_ is Cons!65571) (exprs!6349 (Context!11699 (Cons!65571 (h!72019 (exprs!6349 (h!72020 zl!343))) (t!379347 (exprs!6349 (h!72020 zl!343))))))))))

(declare-fun b!6599996 () Bool)

(assert (=> b!6599996 (= e!3993604 ((_ map or) call!577167 (derivationStepZipperUp!1639 (Context!11699 (t!379347 (exprs!6349 (Context!11699 (Cons!65571 (h!72019 (exprs!6349 (h!72020 zl!343))) (t!379347 (exprs!6349 (h!72020 zl!343)))))))) (h!72018 s!2326))))))

(assert (= (and d!2070268 res!2706188) b!6599994))

(assert (= (and d!2070268 c!1215722) b!6599996))

(assert (= (and d!2070268 (not c!1215722)) b!6599995))

(assert (= (and b!6599995 c!1215723) b!6599993))

(assert (= (and b!6599995 (not c!1215723)) b!6599992))

(assert (= (or b!6599996 b!6599993) bm!577162))

(declare-fun m!7376442 () Bool)

(assert (=> bm!577162 m!7376442))

(declare-fun m!7376444 () Bool)

(assert (=> b!6599994 m!7376444))

(declare-fun m!7376446 () Bool)

(assert (=> b!6599996 m!7376446))

(assert (=> b!6599070 d!2070268))

(assert (=> b!6599070 d!2070140))

(declare-fun b!6599997 () Bool)

(declare-fun e!3993608 () (InoxSet Context!11698))

(assert (=> b!6599997 (= e!3993608 ((as const (Array Context!11698 Bool)) false))))

(declare-fun bm!577163 () Bool)

(declare-fun call!577168 () (InoxSet Context!11698))

(assert (=> bm!577163 (= call!577168 (derivationStepZipperDown!1713 (h!72019 (exprs!6349 (h!72020 zl!343))) (Context!11699 (t!379347 (exprs!6349 (h!72020 zl!343)))) (h!72018 s!2326)))))

(declare-fun b!6599998 () Bool)

(assert (=> b!6599998 (= e!3993608 call!577168)))

(declare-fun d!2070270 () Bool)

(declare-fun c!1215724 () Bool)

(declare-fun e!3993609 () Bool)

(assert (=> d!2070270 (= c!1215724 e!3993609)))

(declare-fun res!2706189 () Bool)

(assert (=> d!2070270 (=> (not res!2706189) (not e!3993609))))

(assert (=> d!2070270 (= res!2706189 ((_ is Cons!65571) (exprs!6349 (h!72020 zl!343))))))

(declare-fun e!3993607 () (InoxSet Context!11698))

(assert (=> d!2070270 (= (derivationStepZipperUp!1639 (h!72020 zl!343) (h!72018 s!2326)) e!3993607)))

(declare-fun b!6599999 () Bool)

(assert (=> b!6599999 (= e!3993609 (nullable!6458 (h!72019 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun b!6600000 () Bool)

(assert (=> b!6600000 (= e!3993607 e!3993608)))

(declare-fun c!1215725 () Bool)

(assert (=> b!6600000 (= c!1215725 ((_ is Cons!65571) (exprs!6349 (h!72020 zl!343))))))

(declare-fun b!6600001 () Bool)

(assert (=> b!6600001 (= e!3993607 ((_ map or) call!577168 (derivationStepZipperUp!1639 (Context!11699 (t!379347 (exprs!6349 (h!72020 zl!343)))) (h!72018 s!2326))))))

(assert (= (and d!2070270 res!2706189) b!6599999))

(assert (= (and d!2070270 c!1215724) b!6600001))

(assert (= (and d!2070270 (not c!1215724)) b!6600000))

(assert (= (and b!6600000 c!1215725) b!6599998))

(assert (= (and b!6600000 (not c!1215725)) b!6599997))

(assert (= (or b!6600001 b!6599998) bm!577163))

(declare-fun m!7376448 () Bool)

(assert (=> bm!577163 m!7376448))

(assert (=> b!6599999 m!7375634))

(declare-fun m!7376450 () Bool)

(assert (=> b!6600001 m!7376450))

(assert (=> b!6599070 d!2070270))

(declare-fun d!2070272 () Bool)

(assert (=> d!2070272 (= (flatMap!1970 z!1189 lambda!367776) (choose!49252 z!1189 lambda!367776))))

(declare-fun bs!1692216 () Bool)

(assert (= bs!1692216 d!2070272))

(declare-fun m!7376452 () Bool)

(assert (=> bs!1692216 m!7376452))

(assert (=> b!6599070 d!2070272))

(declare-fun b!6600002 () Bool)

(declare-fun e!3993614 () (InoxSet Context!11698))

(declare-fun e!3993612 () (InoxSet Context!11698))

(assert (=> b!6600002 (= e!3993614 e!3993612)))

(declare-fun c!1215727 () Bool)

(assert (=> b!6600002 (= c!1215727 ((_ is Union!16465) (h!72019 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun b!6600003 () Bool)

(declare-fun e!3993610 () (InoxSet Context!11698))

(declare-fun call!577171 () (InoxSet Context!11698))

(declare-fun call!577170 () (InoxSet Context!11698))

(assert (=> b!6600003 (= e!3993610 ((_ map or) call!577171 call!577170))))

(declare-fun b!6600004 () Bool)

(declare-fun call!577169 () (InoxSet Context!11698))

(assert (=> b!6600004 (= e!3993612 ((_ map or) call!577171 call!577169))))

(declare-fun b!6600005 () Bool)

(assert (=> b!6600005 (= e!3993614 (store ((as const (Array Context!11698 Bool)) false) lt!2413001 true))))

(declare-fun b!6600006 () Bool)

(declare-fun c!1215730 () Bool)

(declare-fun e!3993611 () Bool)

(assert (=> b!6600006 (= c!1215730 e!3993611)))

(declare-fun res!2706190 () Bool)

(assert (=> b!6600006 (=> (not res!2706190) (not e!3993611))))

(assert (=> b!6600006 (= res!2706190 ((_ is Concat!25310) (h!72019 (exprs!6349 (h!72020 zl!343)))))))

(assert (=> b!6600006 (= e!3993612 e!3993610)))

(declare-fun c!1215726 () Bool)

(declare-fun call!577172 () List!65695)

(declare-fun bm!577164 () Bool)

(assert (=> bm!577164 (= call!577172 ($colon$colon!2306 (exprs!6349 lt!2413001) (ite (or c!1215730 c!1215726) (regTwo!33442 (h!72019 (exprs!6349 (h!72020 zl!343)))) (h!72019 (exprs!6349 (h!72020 zl!343))))))))

(declare-fun bm!577166 () Bool)

(assert (=> bm!577166 (= call!577170 call!577169)))

(declare-fun b!6600007 () Bool)

(declare-fun e!3993615 () (InoxSet Context!11698))

(declare-fun call!577173 () (InoxSet Context!11698))

(assert (=> b!6600007 (= e!3993615 call!577173)))

(declare-fun b!6600008 () Bool)

(assert (=> b!6600008 (= e!3993615 ((as const (Array Context!11698 Bool)) false))))

(declare-fun b!6600009 () Bool)

(assert (=> b!6600009 (= e!3993611 (nullable!6458 (regOne!33442 (h!72019 (exprs!6349 (h!72020 zl!343))))))))

(declare-fun bm!577167 () Bool)

(declare-fun call!577174 () List!65695)

(assert (=> bm!577167 (= call!577169 (derivationStepZipperDown!1713 (ite c!1215727 (regTwo!33443 (h!72019 (exprs!6349 (h!72020 zl!343)))) (ite c!1215730 (regTwo!33442 (h!72019 (exprs!6349 (h!72020 zl!343)))) (ite c!1215726 (regOne!33442 (h!72019 (exprs!6349 (h!72020 zl!343)))) (reg!16794 (h!72019 (exprs!6349 (h!72020 zl!343))))))) (ite (or c!1215727 c!1215730) lt!2413001 (Context!11699 call!577174)) (h!72018 s!2326)))))

(declare-fun b!6600010 () Bool)

(declare-fun c!1215729 () Bool)

(assert (=> b!6600010 (= c!1215729 ((_ is Star!16465) (h!72019 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun e!3993613 () (InoxSet Context!11698))

(assert (=> b!6600010 (= e!3993613 e!3993615)))

(declare-fun b!6600011 () Bool)

(assert (=> b!6600011 (= e!3993610 e!3993613)))

(assert (=> b!6600011 (= c!1215726 ((_ is Concat!25310) (h!72019 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun bm!577168 () Bool)

(assert (=> bm!577168 (= call!577173 call!577170)))

(declare-fun bm!577169 () Bool)

(assert (=> bm!577169 (= call!577171 (derivationStepZipperDown!1713 (ite c!1215727 (regOne!33443 (h!72019 (exprs!6349 (h!72020 zl!343)))) (regOne!33442 (h!72019 (exprs!6349 (h!72020 zl!343))))) (ite c!1215727 lt!2413001 (Context!11699 call!577172)) (h!72018 s!2326)))))

(declare-fun b!6600012 () Bool)

(assert (=> b!6600012 (= e!3993613 call!577173)))

(declare-fun bm!577165 () Bool)

(assert (=> bm!577165 (= call!577174 call!577172)))

(declare-fun d!2070274 () Bool)

(declare-fun c!1215728 () Bool)

(assert (=> d!2070274 (= c!1215728 (and ((_ is ElementMatch!16465) (h!72019 (exprs!6349 (h!72020 zl!343)))) (= (c!1215438 (h!72019 (exprs!6349 (h!72020 zl!343)))) (h!72018 s!2326))))))

(assert (=> d!2070274 (= (derivationStepZipperDown!1713 (h!72019 (exprs!6349 (h!72020 zl!343))) lt!2413001 (h!72018 s!2326)) e!3993614)))

(assert (= (and d!2070274 c!1215728) b!6600005))

(assert (= (and d!2070274 (not c!1215728)) b!6600002))

(assert (= (and b!6600002 c!1215727) b!6600004))

(assert (= (and b!6600002 (not c!1215727)) b!6600006))

(assert (= (and b!6600006 res!2706190) b!6600009))

(assert (= (and b!6600006 c!1215730) b!6600003))

(assert (= (and b!6600006 (not c!1215730)) b!6600011))

(assert (= (and b!6600011 c!1215726) b!6600012))

(assert (= (and b!6600011 (not c!1215726)) b!6600010))

(assert (= (and b!6600010 c!1215729) b!6600007))

(assert (= (and b!6600010 (not c!1215729)) b!6600008))

(assert (= (or b!6600012 b!6600007) bm!577165))

(assert (= (or b!6600012 b!6600007) bm!577168))

(assert (= (or b!6600003 bm!577165) bm!577164))

(assert (= (or b!6600003 bm!577168) bm!577166))

(assert (= (or b!6600004 bm!577166) bm!577167))

(assert (= (or b!6600004 b!6600003) bm!577169))

(declare-fun m!7376454 () Bool)

(assert (=> bm!577167 m!7376454))

(declare-fun m!7376456 () Bool)

(assert (=> b!6600009 m!7376456))

(assert (=> b!6600005 m!7375670))

(declare-fun m!7376458 () Bool)

(assert (=> bm!577164 m!7376458))

(declare-fun m!7376460 () Bool)

(assert (=> bm!577169 m!7376460))

(assert (=> b!6599070 d!2070274))

(declare-fun b!6600013 () Bool)

(declare-fun e!3993617 () (InoxSet Context!11698))

(assert (=> b!6600013 (= e!3993617 ((as const (Array Context!11698 Bool)) false))))

(declare-fun bm!577170 () Bool)

(declare-fun call!577175 () (InoxSet Context!11698))

(assert (=> bm!577170 (= call!577175 (derivationStepZipperDown!1713 (h!72019 (exprs!6349 lt!2413006)) (Context!11699 (t!379347 (exprs!6349 lt!2413006))) (h!72018 s!2326)))))

(declare-fun b!6600014 () Bool)

(assert (=> b!6600014 (= e!3993617 call!577175)))

(declare-fun d!2070276 () Bool)

(declare-fun c!1215731 () Bool)

(declare-fun e!3993618 () Bool)

(assert (=> d!2070276 (= c!1215731 e!3993618)))

(declare-fun res!2706191 () Bool)

(assert (=> d!2070276 (=> (not res!2706191) (not e!3993618))))

(assert (=> d!2070276 (= res!2706191 ((_ is Cons!65571) (exprs!6349 lt!2413006)))))

(declare-fun e!3993616 () (InoxSet Context!11698))

(assert (=> d!2070276 (= (derivationStepZipperUp!1639 lt!2413006 (h!72018 s!2326)) e!3993616)))

(declare-fun b!6600015 () Bool)

(assert (=> b!6600015 (= e!3993618 (nullable!6458 (h!72019 (exprs!6349 lt!2413006))))))

(declare-fun b!6600016 () Bool)

(assert (=> b!6600016 (= e!3993616 e!3993617)))

(declare-fun c!1215732 () Bool)

(assert (=> b!6600016 (= c!1215732 ((_ is Cons!65571) (exprs!6349 lt!2413006)))))

(declare-fun b!6600017 () Bool)

(assert (=> b!6600017 (= e!3993616 ((_ map or) call!577175 (derivationStepZipperUp!1639 (Context!11699 (t!379347 (exprs!6349 lt!2413006))) (h!72018 s!2326))))))

(assert (= (and d!2070276 res!2706191) b!6600015))

(assert (= (and d!2070276 c!1215731) b!6600017))

(assert (= (and d!2070276 (not c!1215731)) b!6600016))

(assert (= (and b!6600016 c!1215732) b!6600014))

(assert (= (and b!6600016 (not c!1215732)) b!6600013))

(assert (= (or b!6600017 b!6600014) bm!577170))

(declare-fun m!7376462 () Bool)

(assert (=> bm!577170 m!7376462))

(declare-fun m!7376464 () Bool)

(assert (=> b!6600015 m!7376464))

(declare-fun m!7376466 () Bool)

(assert (=> b!6600017 m!7376466))

(assert (=> b!6599072 d!2070276))

(declare-fun d!2070278 () Bool)

(assert (=> d!2070278 (= (flatMap!1970 lt!2413035 lambda!367776) (choose!49252 lt!2413035 lambda!367776))))

(declare-fun bs!1692217 () Bool)

(assert (= bs!1692217 d!2070278))

(declare-fun m!7376468 () Bool)

(assert (=> bs!1692217 m!7376468))

(assert (=> b!6599072 d!2070278))

(declare-fun d!2070280 () Bool)

(assert (=> d!2070280 (= (flatMap!1970 lt!2413019 lambda!367776) (choose!49252 lt!2413019 lambda!367776))))

(declare-fun bs!1692218 () Bool)

(assert (= bs!1692218 d!2070280))

(declare-fun m!7376470 () Bool)

(assert (=> bs!1692218 m!7376470))

(assert (=> b!6599072 d!2070280))

(declare-fun d!2070282 () Bool)

(assert (=> d!2070282 (= (flatMap!1970 lt!2413035 lambda!367776) (dynLambda!26112 lambda!367776 lt!2413006))))

(declare-fun lt!2413190 () Unit!159195)

(assert (=> d!2070282 (= lt!2413190 (choose!49255 lt!2413035 lt!2413006 lambda!367776))))

(assert (=> d!2070282 (= lt!2413035 (store ((as const (Array Context!11698 Bool)) false) lt!2413006 true))))

(assert (=> d!2070282 (= (lemmaFlatMapOnSingletonSet!1496 lt!2413035 lt!2413006 lambda!367776) lt!2413190)))

(declare-fun b_lambda!249803 () Bool)

(assert (=> (not b_lambda!249803) (not d!2070282)))

(declare-fun bs!1692219 () Bool)

(assert (= bs!1692219 d!2070282))

(assert (=> bs!1692219 m!7375736))

(declare-fun m!7376472 () Bool)

(assert (=> bs!1692219 m!7376472))

(declare-fun m!7376474 () Bool)

(assert (=> bs!1692219 m!7376474))

(assert (=> bs!1692219 m!7375728))

(assert (=> b!6599072 d!2070282))

(declare-fun d!2070284 () Bool)

(assert (=> d!2070284 (= (flatMap!1970 lt!2413019 lambda!367776) (dynLambda!26112 lambda!367776 lt!2413018))))

(declare-fun lt!2413191 () Unit!159195)

(assert (=> d!2070284 (= lt!2413191 (choose!49255 lt!2413019 lt!2413018 lambda!367776))))

(assert (=> d!2070284 (= lt!2413019 (store ((as const (Array Context!11698 Bool)) false) lt!2413018 true))))

(assert (=> d!2070284 (= (lemmaFlatMapOnSingletonSet!1496 lt!2413019 lt!2413018 lambda!367776) lt!2413191)))

(declare-fun b_lambda!249805 () Bool)

(assert (=> (not b_lambda!249805) (not d!2070284)))

(declare-fun bs!1692220 () Bool)

(assert (= bs!1692220 d!2070284))

(assert (=> bs!1692220 m!7375738))

(declare-fun m!7376476 () Bool)

(assert (=> bs!1692220 m!7376476))

(declare-fun m!7376478 () Bool)

(assert (=> bs!1692220 m!7376478))

(assert (=> bs!1692220 m!7375730))

(assert (=> b!6599072 d!2070284))

(declare-fun d!2070286 () Bool)

(declare-fun lt!2413192 () Regex!16465)

(assert (=> d!2070286 (validRegex!8201 lt!2413192)))

(assert (=> d!2070286 (= lt!2413192 (generalisedUnion!2309 (unfocusZipperList!1886 (Cons!65572 lt!2413006 Nil!65572))))))

(assert (=> d!2070286 (= (unfocusZipper!2207 (Cons!65572 lt!2413006 Nil!65572)) lt!2413192)))

(declare-fun bs!1692221 () Bool)

(assert (= bs!1692221 d!2070286))

(declare-fun m!7376480 () Bool)

(assert (=> bs!1692221 m!7376480))

(declare-fun m!7376482 () Bool)

(assert (=> bs!1692221 m!7376482))

(assert (=> bs!1692221 m!7376482))

(declare-fun m!7376484 () Bool)

(assert (=> bs!1692221 m!7376484))

(assert (=> b!6599072 d!2070286))

(declare-fun b!6600018 () Bool)

(declare-fun e!3993620 () (InoxSet Context!11698))

(assert (=> b!6600018 (= e!3993620 ((as const (Array Context!11698 Bool)) false))))

(declare-fun bm!577171 () Bool)

(declare-fun call!577176 () (InoxSet Context!11698))

(assert (=> bm!577171 (= call!577176 (derivationStepZipperDown!1713 (h!72019 (exprs!6349 lt!2413018)) (Context!11699 (t!379347 (exprs!6349 lt!2413018))) (h!72018 s!2326)))))

(declare-fun b!6600019 () Bool)

(assert (=> b!6600019 (= e!3993620 call!577176)))

(declare-fun d!2070288 () Bool)

(declare-fun c!1215733 () Bool)

(declare-fun e!3993621 () Bool)

(assert (=> d!2070288 (= c!1215733 e!3993621)))

(declare-fun res!2706192 () Bool)

(assert (=> d!2070288 (=> (not res!2706192) (not e!3993621))))

(assert (=> d!2070288 (= res!2706192 ((_ is Cons!65571) (exprs!6349 lt!2413018)))))

(declare-fun e!3993619 () (InoxSet Context!11698))

(assert (=> d!2070288 (= (derivationStepZipperUp!1639 lt!2413018 (h!72018 s!2326)) e!3993619)))

(declare-fun b!6600020 () Bool)

(assert (=> b!6600020 (= e!3993621 (nullable!6458 (h!72019 (exprs!6349 lt!2413018))))))

(declare-fun b!6600021 () Bool)

(assert (=> b!6600021 (= e!3993619 e!3993620)))

(declare-fun c!1215734 () Bool)

(assert (=> b!6600021 (= c!1215734 ((_ is Cons!65571) (exprs!6349 lt!2413018)))))

(declare-fun b!6600022 () Bool)

(assert (=> b!6600022 (= e!3993619 ((_ map or) call!577176 (derivationStepZipperUp!1639 (Context!11699 (t!379347 (exprs!6349 lt!2413018))) (h!72018 s!2326))))))

(assert (= (and d!2070288 res!2706192) b!6600020))

(assert (= (and d!2070288 c!1215733) b!6600022))

(assert (= (and d!2070288 (not c!1215733)) b!6600021))

(assert (= (and b!6600021 c!1215734) b!6600019))

(assert (= (and b!6600021 (not c!1215734)) b!6600018))

(assert (= (or b!6600022 b!6600019) bm!577171))

(declare-fun m!7376486 () Bool)

(assert (=> bm!577171 m!7376486))

(declare-fun m!7376488 () Bool)

(assert (=> b!6600020 m!7376488))

(declare-fun m!7376490 () Bool)

(assert (=> b!6600022 m!7376490))

(assert (=> b!6599072 d!2070288))

(declare-fun bs!1692222 () Bool)

(declare-fun b!6600031 () Bool)

(assert (= bs!1692222 (and b!6600031 b!6599046)))

(declare-fun lambda!367872 () Int)

(assert (=> bs!1692222 (not (= lambda!367872 lambda!367774))))

(declare-fun bs!1692223 () Bool)

(assert (= bs!1692223 (and b!6600031 d!2070196)))

(assert (=> bs!1692223 (not (= lambda!367872 lambda!367858))))

(assert (=> bs!1692222 (not (= lambda!367872 lambda!367775))))

(declare-fun bs!1692224 () Bool)

(assert (= bs!1692224 (and b!6600031 d!2070192)))

(assert (=> bs!1692224 (not (= lambda!367872 lambda!367848))))

(assert (=> bs!1692223 (not (= lambda!367872 lambda!367857))))

(declare-fun bs!1692225 () Bool)

(assert (= bs!1692225 (and b!6600031 b!6599426)))

(assert (=> bs!1692225 (= (and (= (reg!16794 r!7292) (reg!16794 lt!2413026)) (= r!7292 lt!2413026)) (= lambda!367872 lambda!367809))))

(declare-fun bs!1692226 () Bool)

(assert (= bs!1692226 (and b!6600031 b!6599055)))

(assert (=> bs!1692226 (not (= lambda!367872 lambda!367777))))

(declare-fun bs!1692227 () Bool)

(assert (= bs!1692227 (and b!6600031 b!6599427)))

(assert (=> bs!1692227 (not (= lambda!367872 lambda!367812))))

(assert (=> b!6600031 true))

(assert (=> b!6600031 true))

(declare-fun bs!1692228 () Bool)

(declare-fun b!6600032 () Bool)

(assert (= bs!1692228 (and b!6600032 b!6599046)))

(declare-fun lambda!367873 () Int)

(assert (=> bs!1692228 (not (= lambda!367873 lambda!367774))))

(declare-fun bs!1692229 () Bool)

(assert (= bs!1692229 (and b!6600032 d!2070196)))

(assert (=> bs!1692229 (= lambda!367873 lambda!367858)))

(assert (=> bs!1692228 (= lambda!367873 lambda!367775)))

(declare-fun bs!1692230 () Bool)

(assert (= bs!1692230 (and b!6600032 d!2070192)))

(assert (=> bs!1692230 (not (= lambda!367873 lambda!367848))))

(declare-fun bs!1692231 () Bool)

(assert (= bs!1692231 (and b!6600032 b!6600031)))

(assert (=> bs!1692231 (not (= lambda!367873 lambda!367872))))

(assert (=> bs!1692229 (not (= lambda!367873 lambda!367857))))

(declare-fun bs!1692232 () Bool)

(assert (= bs!1692232 (and b!6600032 b!6599426)))

(assert (=> bs!1692232 (not (= lambda!367873 lambda!367809))))

(declare-fun bs!1692233 () Bool)

(assert (= bs!1692233 (and b!6600032 b!6599055)))

(assert (=> bs!1692233 (not (= lambda!367873 lambda!367777))))

(declare-fun bs!1692234 () Bool)

(assert (= bs!1692234 (and b!6600032 b!6599427)))

(assert (=> bs!1692234 (= (and (= (regOne!33442 r!7292) (regOne!33442 lt!2413026)) (= (regTwo!33442 r!7292) (regTwo!33442 lt!2413026))) (= lambda!367873 lambda!367812))))

(assert (=> b!6600032 true))

(assert (=> b!6600032 true))

(declare-fun b!6600023 () Bool)

(declare-fun e!3993623 () Bool)

(assert (=> b!6600023 (= e!3993623 (matchRSpec!3566 (regTwo!33443 r!7292) s!2326))))

(declare-fun b!6600025 () Bool)

(declare-fun e!3993624 () Bool)

(declare-fun e!3993627 () Bool)

(assert (=> b!6600025 (= e!3993624 e!3993627)))

(declare-fun res!2706193 () Bool)

(assert (=> b!6600025 (= res!2706193 (not ((_ is EmptyLang!16465) r!7292)))))

(assert (=> b!6600025 (=> (not res!2706193) (not e!3993627))))

(declare-fun b!6600026 () Bool)

(declare-fun c!1215736 () Bool)

(assert (=> b!6600026 (= c!1215736 ((_ is Union!16465) r!7292))))

(declare-fun e!3993628 () Bool)

(declare-fun e!3993622 () Bool)

(assert (=> b!6600026 (= e!3993628 e!3993622)))

(declare-fun c!1215738 () Bool)

(declare-fun call!577178 () Bool)

(declare-fun bm!577172 () Bool)

(assert (=> bm!577172 (= call!577178 (Exists!3535 (ite c!1215738 lambda!367872 lambda!367873)))))

(declare-fun b!6600027 () Bool)

(assert (=> b!6600027 (= e!3993622 e!3993623)))

(declare-fun res!2706195 () Bool)

(assert (=> b!6600027 (= res!2706195 (matchRSpec!3566 (regOne!33443 r!7292) s!2326))))

(assert (=> b!6600027 (=> res!2706195 e!3993623)))

(declare-fun b!6600028 () Bool)

(declare-fun res!2706194 () Bool)

(declare-fun e!3993625 () Bool)

(assert (=> b!6600028 (=> res!2706194 e!3993625)))

(declare-fun call!577177 () Bool)

(assert (=> b!6600028 (= res!2706194 call!577177)))

(declare-fun e!3993626 () Bool)

(assert (=> b!6600028 (= e!3993626 e!3993625)))

(declare-fun d!2070290 () Bool)

(declare-fun c!1215735 () Bool)

(assert (=> d!2070290 (= c!1215735 ((_ is EmptyExpr!16465) r!7292))))

(assert (=> d!2070290 (= (matchRSpec!3566 r!7292 s!2326) e!3993624)))

(declare-fun b!6600024 () Bool)

(declare-fun c!1215737 () Bool)

(assert (=> b!6600024 (= c!1215737 ((_ is ElementMatch!16465) r!7292))))

(assert (=> b!6600024 (= e!3993627 e!3993628)))

(declare-fun bm!577173 () Bool)

(assert (=> bm!577173 (= call!577177 (isEmpty!37840 s!2326))))

(declare-fun b!6600029 () Bool)

(assert (=> b!6600029 (= e!3993622 e!3993626)))

(assert (=> b!6600029 (= c!1215738 ((_ is Star!16465) r!7292))))

(declare-fun b!6600030 () Bool)

(assert (=> b!6600030 (= e!3993628 (= s!2326 (Cons!65570 (c!1215438 r!7292) Nil!65570)))))

(assert (=> b!6600031 (= e!3993625 call!577178)))

(assert (=> b!6600032 (= e!3993626 call!577178)))

(declare-fun b!6600033 () Bool)

(assert (=> b!6600033 (= e!3993624 call!577177)))

(assert (= (and d!2070290 c!1215735) b!6600033))

(assert (= (and d!2070290 (not c!1215735)) b!6600025))

(assert (= (and b!6600025 res!2706193) b!6600024))

(assert (= (and b!6600024 c!1215737) b!6600030))

(assert (= (and b!6600024 (not c!1215737)) b!6600026))

(assert (= (and b!6600026 c!1215736) b!6600027))

(assert (= (and b!6600026 (not c!1215736)) b!6600029))

(assert (= (and b!6600027 (not res!2706195)) b!6600023))

(assert (= (and b!6600029 c!1215738) b!6600028))

(assert (= (and b!6600029 (not c!1215738)) b!6600032))

(assert (= (and b!6600028 (not res!2706194)) b!6600031))

(assert (= (or b!6600031 b!6600032) bm!577172))

(assert (= (or b!6600033 b!6600028) bm!577173))

(declare-fun m!7376492 () Bool)

(assert (=> b!6600023 m!7376492))

(declare-fun m!7376494 () Bool)

(assert (=> bm!577172 m!7376494))

(declare-fun m!7376496 () Bool)

(assert (=> b!6600027 m!7376496))

(assert (=> bm!577173 m!7375922))

(assert (=> b!6599071 d!2070290))

(declare-fun b!6600034 () Bool)

(declare-fun res!2706199 () Bool)

(declare-fun e!3993632 () Bool)

(assert (=> b!6600034 (=> (not res!2706199) (not e!3993632))))

(declare-fun call!577179 () Bool)

(assert (=> b!6600034 (= res!2706199 (not call!577179))))

(declare-fun b!6600035 () Bool)

(declare-fun e!3993629 () Bool)

(declare-fun e!3993630 () Bool)

(assert (=> b!6600035 (= e!3993629 e!3993630)))

(declare-fun res!2706201 () Bool)

(assert (=> b!6600035 (=> (not res!2706201) (not e!3993630))))

(declare-fun lt!2413193 () Bool)

(assert (=> b!6600035 (= res!2706201 (not lt!2413193))))

(declare-fun bm!577174 () Bool)

(assert (=> bm!577174 (= call!577179 (isEmpty!37840 s!2326))))

(declare-fun b!6600036 () Bool)

(declare-fun res!2706203 () Bool)

(assert (=> b!6600036 (=> res!2706203 e!3993629)))

(assert (=> b!6600036 (= res!2706203 (not ((_ is ElementMatch!16465) r!7292)))))

(declare-fun e!3993635 () Bool)

(assert (=> b!6600036 (= e!3993635 e!3993629)))

(declare-fun b!6600037 () Bool)

(declare-fun e!3993631 () Bool)

(assert (=> b!6600037 (= e!3993631 (= lt!2413193 call!577179))))

(declare-fun b!6600038 () Bool)

(declare-fun res!2706198 () Bool)

(assert (=> b!6600038 (=> (not res!2706198) (not e!3993632))))

(assert (=> b!6600038 (= res!2706198 (isEmpty!37840 (tail!12465 s!2326)))))

(declare-fun b!6600039 () Bool)

(assert (=> b!6600039 (= e!3993635 (not lt!2413193))))

(declare-fun b!6600040 () Bool)

(assert (=> b!6600040 (= e!3993631 e!3993635)))

(declare-fun c!1215740 () Bool)

(assert (=> b!6600040 (= c!1215740 ((_ is EmptyLang!16465) r!7292))))

(declare-fun b!6600041 () Bool)

(declare-fun e!3993634 () Bool)

(assert (=> b!6600041 (= e!3993634 (not (= (head!13380 s!2326) (c!1215438 r!7292))))))

(declare-fun b!6600042 () Bool)

(declare-fun e!3993633 () Bool)

(assert (=> b!6600042 (= e!3993633 (nullable!6458 r!7292))))

(declare-fun b!6600043 () Bool)

(assert (=> b!6600043 (= e!3993632 (= (head!13380 s!2326) (c!1215438 r!7292)))))

(declare-fun b!6600044 () Bool)

(declare-fun res!2706200 () Bool)

(assert (=> b!6600044 (=> res!2706200 e!3993634)))

(assert (=> b!6600044 (= res!2706200 (not (isEmpty!37840 (tail!12465 s!2326))))))

(declare-fun b!6600045 () Bool)

(assert (=> b!6600045 (= e!3993633 (matchR!8648 (derivativeStep!5148 r!7292 (head!13380 s!2326)) (tail!12465 s!2326)))))

(declare-fun b!6600046 () Bool)

(declare-fun res!2706197 () Bool)

(assert (=> b!6600046 (=> res!2706197 e!3993629)))

(assert (=> b!6600046 (= res!2706197 e!3993632)))

(declare-fun res!2706196 () Bool)

(assert (=> b!6600046 (=> (not res!2706196) (not e!3993632))))

(assert (=> b!6600046 (= res!2706196 lt!2413193)))

(declare-fun d!2070292 () Bool)

(assert (=> d!2070292 e!3993631))

(declare-fun c!1215739 () Bool)

(assert (=> d!2070292 (= c!1215739 ((_ is EmptyExpr!16465) r!7292))))

(assert (=> d!2070292 (= lt!2413193 e!3993633)))

(declare-fun c!1215741 () Bool)

(assert (=> d!2070292 (= c!1215741 (isEmpty!37840 s!2326))))

(assert (=> d!2070292 (validRegex!8201 r!7292)))

(assert (=> d!2070292 (= (matchR!8648 r!7292 s!2326) lt!2413193)))

(declare-fun b!6600047 () Bool)

(assert (=> b!6600047 (= e!3993630 e!3993634)))

(declare-fun res!2706202 () Bool)

(assert (=> b!6600047 (=> res!2706202 e!3993634)))

(assert (=> b!6600047 (= res!2706202 call!577179)))

(assert (= (and d!2070292 c!1215741) b!6600042))

(assert (= (and d!2070292 (not c!1215741)) b!6600045))

(assert (= (and d!2070292 c!1215739) b!6600037))

(assert (= (and d!2070292 (not c!1215739)) b!6600040))

(assert (= (and b!6600040 c!1215740) b!6600039))

(assert (= (and b!6600040 (not c!1215740)) b!6600036))

(assert (= (and b!6600036 (not res!2706203)) b!6600046))

(assert (= (and b!6600046 res!2706196) b!6600034))

(assert (= (and b!6600034 res!2706199) b!6600038))

(assert (= (and b!6600038 res!2706198) b!6600043))

(assert (= (and b!6600046 (not res!2706197)) b!6600035))

(assert (= (and b!6600035 res!2706201) b!6600047))

(assert (= (and b!6600047 (not res!2706202)) b!6600044))

(assert (= (and b!6600044 (not res!2706200)) b!6600041))

(assert (= (or b!6600037 b!6600034 b!6600047) bm!577174))

(assert (=> bm!577174 m!7375922))

(assert (=> d!2070292 m!7375922))

(assert (=> d!2070292 m!7375698))

(assert (=> b!6600043 m!7375926))

(assert (=> b!6600038 m!7375928))

(assert (=> b!6600038 m!7375928))

(assert (=> b!6600038 m!7375930))

(declare-fun m!7376498 () Bool)

(assert (=> b!6600042 m!7376498))

(assert (=> b!6600041 m!7375926))

(assert (=> b!6600044 m!7375928))

(assert (=> b!6600044 m!7375928))

(assert (=> b!6600044 m!7375930))

(assert (=> b!6600045 m!7375926))

(assert (=> b!6600045 m!7375926))

(declare-fun m!7376500 () Bool)

(assert (=> b!6600045 m!7376500))

(assert (=> b!6600045 m!7375928))

(assert (=> b!6600045 m!7376500))

(assert (=> b!6600045 m!7375928))

(declare-fun m!7376502 () Bool)

(assert (=> b!6600045 m!7376502))

(assert (=> b!6599071 d!2070292))

(declare-fun d!2070294 () Bool)

(assert (=> d!2070294 (= (matchR!8648 r!7292 s!2326) (matchRSpec!3566 r!7292 s!2326))))

(declare-fun lt!2413194 () Unit!159195)

(assert (=> d!2070294 (= lt!2413194 (choose!49251 r!7292 s!2326))))

(assert (=> d!2070294 (validRegex!8201 r!7292)))

(assert (=> d!2070294 (= (mainMatchTheorem!3566 r!7292 s!2326) lt!2413194)))

(declare-fun bs!1692235 () Bool)

(assert (= bs!1692235 d!2070294))

(assert (=> bs!1692235 m!7375606))

(assert (=> bs!1692235 m!7375604))

(declare-fun m!7376504 () Bool)

(assert (=> bs!1692235 m!7376504))

(assert (=> bs!1692235 m!7375698))

(assert (=> b!6599071 d!2070294))

(declare-fun d!2070296 () Bool)

(assert (=> d!2070296 (= (isEmpty!37838 (t!379348 zl!343)) ((_ is Nil!65572) (t!379348 zl!343)))))

(assert (=> b!6599073 d!2070296))

(declare-fun d!2070298 () Bool)

(assert (=> d!2070298 (= (Exists!3535 lambda!367777) (choose!49259 lambda!367777))))

(declare-fun bs!1692236 () Bool)

(assert (= bs!1692236 d!2070298))

(declare-fun m!7376506 () Bool)

(assert (=> bs!1692236 m!7376506))

(assert (=> b!6599055 d!2070298))

(declare-fun d!2070300 () Bool)

(assert (=> d!2070300 (= (isDefined!13059 (findConcatSeparation!2770 (reg!16794 (regOne!33442 r!7292)) lt!2413033 Nil!65570 Nil!65570 Nil!65570)) (not (isEmpty!37842 (findConcatSeparation!2770 (reg!16794 (regOne!33442 r!7292)) lt!2413033 Nil!65570 Nil!65570 Nil!65570))))))

(declare-fun bs!1692237 () Bool)

(assert (= bs!1692237 d!2070300))

(assert (=> bs!1692237 m!7375642))

(declare-fun m!7376508 () Bool)

(assert (=> bs!1692237 m!7376508))

(assert (=> b!6599055 d!2070300))

(declare-fun b!6600048 () Bool)

(declare-fun e!3993637 () Bool)

(declare-fun e!3993642 () Bool)

(assert (=> b!6600048 (= e!3993637 e!3993642)))

(declare-fun res!2706206 () Bool)

(assert (=> b!6600048 (=> (not res!2706206) (not e!3993642))))

(declare-fun call!577182 () Bool)

(assert (=> b!6600048 (= res!2706206 call!577182)))

(declare-fun b!6600049 () Bool)

(declare-fun res!2706205 () Bool)

(declare-fun e!3993640 () Bool)

(assert (=> b!6600049 (=> (not res!2706205) (not e!3993640))))

(assert (=> b!6600049 (= res!2706205 call!577182)))

(declare-fun e!3993639 () Bool)

(assert (=> b!6600049 (= e!3993639 e!3993640)))

(declare-fun b!6600050 () Bool)

(declare-fun call!577181 () Bool)

(assert (=> b!6600050 (= e!3993642 call!577181)))

(declare-fun b!6600052 () Bool)

(declare-fun e!3993641 () Bool)

(declare-fun e!3993636 () Bool)

(assert (=> b!6600052 (= e!3993641 e!3993636)))

(declare-fun res!2706204 () Bool)

(assert (=> b!6600052 (= res!2706204 (not (nullable!6458 (reg!16794 (reg!16794 (regOne!33442 r!7292))))))))

(assert (=> b!6600052 (=> (not res!2706204) (not e!3993636))))

(declare-fun b!6600053 () Bool)

(declare-fun e!3993638 () Bool)

(assert (=> b!6600053 (= e!3993638 e!3993641)))

(declare-fun c!1215742 () Bool)

(assert (=> b!6600053 (= c!1215742 ((_ is Star!16465) (reg!16794 (regOne!33442 r!7292))))))

(declare-fun b!6600054 () Bool)

(declare-fun res!2706207 () Bool)

(assert (=> b!6600054 (=> res!2706207 e!3993637)))

(assert (=> b!6600054 (= res!2706207 (not ((_ is Concat!25310) (reg!16794 (regOne!33442 r!7292)))))))

(assert (=> b!6600054 (= e!3993639 e!3993637)))

(declare-fun bm!577175 () Bool)

(declare-fun call!577180 () Bool)

(assert (=> bm!577175 (= call!577181 call!577180)))

(declare-fun bm!577176 () Bool)

(declare-fun c!1215743 () Bool)

(assert (=> bm!577176 (= call!577180 (validRegex!8201 (ite c!1215742 (reg!16794 (reg!16794 (regOne!33442 r!7292))) (ite c!1215743 (regTwo!33443 (reg!16794 (regOne!33442 r!7292))) (regTwo!33442 (reg!16794 (regOne!33442 r!7292)))))))))

(declare-fun b!6600055 () Bool)

(assert (=> b!6600055 (= e!3993636 call!577180)))

(declare-fun b!6600051 () Bool)

(assert (=> b!6600051 (= e!3993640 call!577181)))

(declare-fun d!2070302 () Bool)

(declare-fun res!2706208 () Bool)

(assert (=> d!2070302 (=> res!2706208 e!3993638)))

(assert (=> d!2070302 (= res!2706208 ((_ is ElementMatch!16465) (reg!16794 (regOne!33442 r!7292))))))

(assert (=> d!2070302 (= (validRegex!8201 (reg!16794 (regOne!33442 r!7292))) e!3993638)))

(declare-fun bm!577177 () Bool)

(assert (=> bm!577177 (= call!577182 (validRegex!8201 (ite c!1215743 (regOne!33443 (reg!16794 (regOne!33442 r!7292))) (regOne!33442 (reg!16794 (regOne!33442 r!7292))))))))

(declare-fun b!6600056 () Bool)

(assert (=> b!6600056 (= e!3993641 e!3993639)))

(assert (=> b!6600056 (= c!1215743 ((_ is Union!16465) (reg!16794 (regOne!33442 r!7292))))))

(assert (= (and d!2070302 (not res!2706208)) b!6600053))

(assert (= (and b!6600053 c!1215742) b!6600052))

(assert (= (and b!6600053 (not c!1215742)) b!6600056))

(assert (= (and b!6600052 res!2706204) b!6600055))

(assert (= (and b!6600056 c!1215743) b!6600049))

(assert (= (and b!6600056 (not c!1215743)) b!6600054))

(assert (= (and b!6600049 res!2706205) b!6600051))

(assert (= (and b!6600054 (not res!2706207)) b!6600048))

(assert (= (and b!6600048 res!2706206) b!6600050))

(assert (= (or b!6600051 b!6600050) bm!577175))

(assert (= (or b!6600049 b!6600048) bm!577177))

(assert (= (or b!6600055 bm!577175) bm!577176))

(declare-fun m!7376510 () Bool)

(assert (=> b!6600052 m!7376510))

(declare-fun m!7376512 () Bool)

(assert (=> bm!577176 m!7376512))

(declare-fun m!7376514 () Bool)

(assert (=> bm!577177 m!7376514))

(assert (=> b!6599055 d!2070302))

(declare-fun b!6600057 () Bool)

(declare-fun res!2706212 () Bool)

(declare-fun e!3993646 () Bool)

(assert (=> b!6600057 (=> (not res!2706212) (not e!3993646))))

(declare-fun call!577183 () Bool)

(assert (=> b!6600057 (= res!2706212 (not call!577183))))

(declare-fun b!6600058 () Bool)

(declare-fun e!3993643 () Bool)

(declare-fun e!3993644 () Bool)

(assert (=> b!6600058 (= e!3993643 e!3993644)))

(declare-fun res!2706214 () Bool)

(assert (=> b!6600058 (=> (not res!2706214) (not e!3993644))))

(declare-fun lt!2413195 () Bool)

(assert (=> b!6600058 (= res!2706214 (not lt!2413195))))

(declare-fun bm!577178 () Bool)

(assert (=> bm!577178 (= call!577183 (isEmpty!37840 Nil!65570))))

(declare-fun b!6600059 () Bool)

(declare-fun res!2706216 () Bool)

(assert (=> b!6600059 (=> res!2706216 e!3993643)))

(assert (=> b!6600059 (= res!2706216 (not ((_ is ElementMatch!16465) lt!2413033)))))

(declare-fun e!3993649 () Bool)

(assert (=> b!6600059 (= e!3993649 e!3993643)))

(declare-fun b!6600060 () Bool)

(declare-fun e!3993645 () Bool)

(assert (=> b!6600060 (= e!3993645 (= lt!2413195 call!577183))))

(declare-fun b!6600061 () Bool)

(declare-fun res!2706211 () Bool)

(assert (=> b!6600061 (=> (not res!2706211) (not e!3993646))))

(assert (=> b!6600061 (= res!2706211 (isEmpty!37840 (tail!12465 Nil!65570)))))

(declare-fun b!6600062 () Bool)

(assert (=> b!6600062 (= e!3993649 (not lt!2413195))))

(declare-fun b!6600063 () Bool)

(assert (=> b!6600063 (= e!3993645 e!3993649)))

(declare-fun c!1215745 () Bool)

(assert (=> b!6600063 (= c!1215745 ((_ is EmptyLang!16465) lt!2413033))))

(declare-fun b!6600064 () Bool)

(declare-fun e!3993648 () Bool)

(assert (=> b!6600064 (= e!3993648 (not (= (head!13380 Nil!65570) (c!1215438 lt!2413033))))))

(declare-fun b!6600065 () Bool)

(declare-fun e!3993647 () Bool)

(assert (=> b!6600065 (= e!3993647 (nullable!6458 lt!2413033))))

(declare-fun b!6600066 () Bool)

(assert (=> b!6600066 (= e!3993646 (= (head!13380 Nil!65570) (c!1215438 lt!2413033)))))

(declare-fun b!6600067 () Bool)

(declare-fun res!2706213 () Bool)

(assert (=> b!6600067 (=> res!2706213 e!3993648)))

(assert (=> b!6600067 (= res!2706213 (not (isEmpty!37840 (tail!12465 Nil!65570))))))

(declare-fun b!6600068 () Bool)

(assert (=> b!6600068 (= e!3993647 (matchR!8648 (derivativeStep!5148 lt!2413033 (head!13380 Nil!65570)) (tail!12465 Nil!65570)))))

(declare-fun b!6600069 () Bool)

(declare-fun res!2706210 () Bool)

(assert (=> b!6600069 (=> res!2706210 e!3993643)))

(assert (=> b!6600069 (= res!2706210 e!3993646)))

(declare-fun res!2706209 () Bool)

(assert (=> b!6600069 (=> (not res!2706209) (not e!3993646))))

(assert (=> b!6600069 (= res!2706209 lt!2413195)))

(declare-fun d!2070304 () Bool)

(assert (=> d!2070304 e!3993645))

(declare-fun c!1215744 () Bool)

(assert (=> d!2070304 (= c!1215744 ((_ is EmptyExpr!16465) lt!2413033))))

(assert (=> d!2070304 (= lt!2413195 e!3993647)))

(declare-fun c!1215746 () Bool)

(assert (=> d!2070304 (= c!1215746 (isEmpty!37840 Nil!65570))))

(assert (=> d!2070304 (validRegex!8201 lt!2413033)))

(assert (=> d!2070304 (= (matchR!8648 lt!2413033 Nil!65570) lt!2413195)))

(declare-fun b!6600070 () Bool)

(assert (=> b!6600070 (= e!3993644 e!3993648)))

(declare-fun res!2706215 () Bool)

(assert (=> b!6600070 (=> res!2706215 e!3993648)))

(assert (=> b!6600070 (= res!2706215 call!577183)))

(assert (= (and d!2070304 c!1215746) b!6600065))

(assert (= (and d!2070304 (not c!1215746)) b!6600068))

(assert (= (and d!2070304 c!1215744) b!6600060))

(assert (= (and d!2070304 (not c!1215744)) b!6600063))

(assert (= (and b!6600063 c!1215745) b!6600062))

(assert (= (and b!6600063 (not c!1215745)) b!6600059))

(assert (= (and b!6600059 (not res!2706216)) b!6600069))

(assert (= (and b!6600069 res!2706209) b!6600057))

(assert (= (and b!6600057 res!2706212) b!6600061))

(assert (= (and b!6600061 res!2706211) b!6600066))

(assert (= (and b!6600069 (not res!2706210)) b!6600058))

(assert (= (and b!6600058 res!2706214) b!6600070))

(assert (= (and b!6600070 (not res!2706215)) b!6600067))

(assert (= (and b!6600067 (not res!2706213)) b!6600064))

(assert (= (or b!6600060 b!6600057 b!6600070) bm!577178))

(declare-fun m!7376516 () Bool)

(assert (=> bm!577178 m!7376516))

(assert (=> d!2070304 m!7376516))

(declare-fun m!7376518 () Bool)

(assert (=> d!2070304 m!7376518))

(declare-fun m!7376520 () Bool)

(assert (=> b!6600066 m!7376520))

(declare-fun m!7376522 () Bool)

(assert (=> b!6600061 m!7376522))

(assert (=> b!6600061 m!7376522))

(declare-fun m!7376524 () Bool)

(assert (=> b!6600061 m!7376524))

(declare-fun m!7376526 () Bool)

(assert (=> b!6600065 m!7376526))

(assert (=> b!6600064 m!7376520))

(assert (=> b!6600067 m!7376522))

(assert (=> b!6600067 m!7376522))

(assert (=> b!6600067 m!7376524))

(assert (=> b!6600068 m!7376520))

(assert (=> b!6600068 m!7376520))

(declare-fun m!7376528 () Bool)

(assert (=> b!6600068 m!7376528))

(assert (=> b!6600068 m!7376522))

(assert (=> b!6600068 m!7376528))

(assert (=> b!6600068 m!7376522))

(declare-fun m!7376530 () Bool)

(assert (=> b!6600068 m!7376530))

(assert (=> b!6599055 d!2070304))

(declare-fun d!2070306 () Bool)

(assert (=> d!2070306 (= (matchR!8648 lt!2413033 Nil!65570) (matchRSpec!3566 lt!2413033 Nil!65570))))

(declare-fun lt!2413196 () Unit!159195)

(assert (=> d!2070306 (= lt!2413196 (choose!49251 lt!2413033 Nil!65570))))

(assert (=> d!2070306 (validRegex!8201 lt!2413033)))

(assert (=> d!2070306 (= (mainMatchTheorem!3566 lt!2413033 Nil!65570) lt!2413196)))

(declare-fun bs!1692238 () Bool)

(assert (= bs!1692238 d!2070306))

(assert (=> bs!1692238 m!7375648))

(assert (=> bs!1692238 m!7375652))

(declare-fun m!7376532 () Bool)

(assert (=> bs!1692238 m!7376532))

(assert (=> bs!1692238 m!7376518))

(assert (=> b!6599055 d!2070306))

(declare-fun bs!1692239 () Bool)

(declare-fun b!6600079 () Bool)

(assert (= bs!1692239 (and b!6600079 b!6599046)))

(declare-fun lambda!367874 () Int)

(assert (=> bs!1692239 (not (= lambda!367874 lambda!367774))))

(declare-fun bs!1692240 () Bool)

(assert (= bs!1692240 (and b!6600079 d!2070196)))

(assert (=> bs!1692240 (not (= lambda!367874 lambda!367858))))

(assert (=> bs!1692239 (not (= lambda!367874 lambda!367775))))

(declare-fun bs!1692241 () Bool)

(assert (= bs!1692241 (and b!6600079 b!6600032)))

(assert (=> bs!1692241 (not (= lambda!367874 lambda!367873))))

(declare-fun bs!1692242 () Bool)

(assert (= bs!1692242 (and b!6600079 d!2070192)))

(assert (=> bs!1692242 (not (= lambda!367874 lambda!367848))))

(declare-fun bs!1692243 () Bool)

(assert (= bs!1692243 (and b!6600079 b!6600031)))

(assert (=> bs!1692243 (= (and (= Nil!65570 s!2326) (= (reg!16794 lt!2413033) (reg!16794 r!7292)) (= lt!2413033 r!7292)) (= lambda!367874 lambda!367872))))

(assert (=> bs!1692240 (not (= lambda!367874 lambda!367857))))

(declare-fun bs!1692244 () Bool)

(assert (= bs!1692244 (and b!6600079 b!6599426)))

(assert (=> bs!1692244 (= (and (= Nil!65570 s!2326) (= (reg!16794 lt!2413033) (reg!16794 lt!2413026)) (= lt!2413033 lt!2413026)) (= lambda!367874 lambda!367809))))

(declare-fun bs!1692245 () Bool)

(assert (= bs!1692245 (and b!6600079 b!6599055)))

(assert (=> bs!1692245 (not (= lambda!367874 lambda!367777))))

(declare-fun bs!1692246 () Bool)

(assert (= bs!1692246 (and b!6600079 b!6599427)))

(assert (=> bs!1692246 (not (= lambda!367874 lambda!367812))))

(assert (=> b!6600079 true))

(assert (=> b!6600079 true))

(declare-fun bs!1692247 () Bool)

(declare-fun b!6600080 () Bool)

(assert (= bs!1692247 (and b!6600080 b!6599046)))

(declare-fun lambda!367875 () Int)

(assert (=> bs!1692247 (not (= lambda!367875 lambda!367774))))

(declare-fun bs!1692248 () Bool)

(assert (= bs!1692248 (and b!6600080 d!2070196)))

(assert (=> bs!1692248 (= (and (= Nil!65570 s!2326) (= (regOne!33442 lt!2413033) (regOne!33442 r!7292)) (= (regTwo!33442 lt!2413033) (regTwo!33442 r!7292))) (= lambda!367875 lambda!367858))))

(assert (=> bs!1692247 (= (and (= Nil!65570 s!2326) (= (regOne!33442 lt!2413033) (regOne!33442 r!7292)) (= (regTwo!33442 lt!2413033) (regTwo!33442 r!7292))) (= lambda!367875 lambda!367775))))

(declare-fun bs!1692249 () Bool)

(assert (= bs!1692249 (and b!6600080 b!6600032)))

(assert (=> bs!1692249 (= (and (= Nil!65570 s!2326) (= (regOne!33442 lt!2413033) (regOne!33442 r!7292)) (= (regTwo!33442 lt!2413033) (regTwo!33442 r!7292))) (= lambda!367875 lambda!367873))))

(declare-fun bs!1692250 () Bool)

(assert (= bs!1692250 (and b!6600080 d!2070192)))

(assert (=> bs!1692250 (not (= lambda!367875 lambda!367848))))

(declare-fun bs!1692251 () Bool)

(assert (= bs!1692251 (and b!6600080 b!6600079)))

(assert (=> bs!1692251 (not (= lambda!367875 lambda!367874))))

(declare-fun bs!1692252 () Bool)

(assert (= bs!1692252 (and b!6600080 b!6600031)))

(assert (=> bs!1692252 (not (= lambda!367875 lambda!367872))))

(assert (=> bs!1692248 (not (= lambda!367875 lambda!367857))))

(declare-fun bs!1692253 () Bool)

(assert (= bs!1692253 (and b!6600080 b!6599426)))

(assert (=> bs!1692253 (not (= lambda!367875 lambda!367809))))

(declare-fun bs!1692254 () Bool)

(assert (= bs!1692254 (and b!6600080 b!6599055)))

(assert (=> bs!1692254 (not (= lambda!367875 lambda!367777))))

(declare-fun bs!1692255 () Bool)

(assert (= bs!1692255 (and b!6600080 b!6599427)))

(assert (=> bs!1692255 (= (and (= Nil!65570 s!2326) (= (regOne!33442 lt!2413033) (regOne!33442 lt!2413026)) (= (regTwo!33442 lt!2413033) (regTwo!33442 lt!2413026))) (= lambda!367875 lambda!367812))))

(assert (=> b!6600080 true))

(assert (=> b!6600080 true))

(declare-fun b!6600071 () Bool)

(declare-fun e!3993651 () Bool)

(assert (=> b!6600071 (= e!3993651 (matchRSpec!3566 (regTwo!33443 lt!2413033) Nil!65570))))

(declare-fun b!6600073 () Bool)

(declare-fun e!3993652 () Bool)

(declare-fun e!3993655 () Bool)

(assert (=> b!6600073 (= e!3993652 e!3993655)))

(declare-fun res!2706217 () Bool)

(assert (=> b!6600073 (= res!2706217 (not ((_ is EmptyLang!16465) lt!2413033)))))

(assert (=> b!6600073 (=> (not res!2706217) (not e!3993655))))

(declare-fun b!6600074 () Bool)

(declare-fun c!1215748 () Bool)

(assert (=> b!6600074 (= c!1215748 ((_ is Union!16465) lt!2413033))))

(declare-fun e!3993656 () Bool)

(declare-fun e!3993650 () Bool)

(assert (=> b!6600074 (= e!3993656 e!3993650)))

(declare-fun c!1215750 () Bool)

(declare-fun call!577185 () Bool)

(declare-fun bm!577179 () Bool)

(assert (=> bm!577179 (= call!577185 (Exists!3535 (ite c!1215750 lambda!367874 lambda!367875)))))

(declare-fun b!6600075 () Bool)

(assert (=> b!6600075 (= e!3993650 e!3993651)))

(declare-fun res!2706219 () Bool)

(assert (=> b!6600075 (= res!2706219 (matchRSpec!3566 (regOne!33443 lt!2413033) Nil!65570))))

(assert (=> b!6600075 (=> res!2706219 e!3993651)))

(declare-fun b!6600076 () Bool)

(declare-fun res!2706218 () Bool)

(declare-fun e!3993653 () Bool)

(assert (=> b!6600076 (=> res!2706218 e!3993653)))

(declare-fun call!577184 () Bool)

(assert (=> b!6600076 (= res!2706218 call!577184)))

(declare-fun e!3993654 () Bool)

(assert (=> b!6600076 (= e!3993654 e!3993653)))

(declare-fun d!2070308 () Bool)

(declare-fun c!1215747 () Bool)

(assert (=> d!2070308 (= c!1215747 ((_ is EmptyExpr!16465) lt!2413033))))

(assert (=> d!2070308 (= (matchRSpec!3566 lt!2413033 Nil!65570) e!3993652)))

(declare-fun b!6600072 () Bool)

(declare-fun c!1215749 () Bool)

(assert (=> b!6600072 (= c!1215749 ((_ is ElementMatch!16465) lt!2413033))))

(assert (=> b!6600072 (= e!3993655 e!3993656)))

(declare-fun bm!577180 () Bool)

(assert (=> bm!577180 (= call!577184 (isEmpty!37840 Nil!65570))))

(declare-fun b!6600077 () Bool)

(assert (=> b!6600077 (= e!3993650 e!3993654)))

(assert (=> b!6600077 (= c!1215750 ((_ is Star!16465) lt!2413033))))

(declare-fun b!6600078 () Bool)

(assert (=> b!6600078 (= e!3993656 (= Nil!65570 (Cons!65570 (c!1215438 lt!2413033) Nil!65570)))))

(assert (=> b!6600079 (= e!3993653 call!577185)))

(assert (=> b!6600080 (= e!3993654 call!577185)))

(declare-fun b!6600081 () Bool)

(assert (=> b!6600081 (= e!3993652 call!577184)))

(assert (= (and d!2070308 c!1215747) b!6600081))

(assert (= (and d!2070308 (not c!1215747)) b!6600073))

(assert (= (and b!6600073 res!2706217) b!6600072))

(assert (= (and b!6600072 c!1215749) b!6600078))

(assert (= (and b!6600072 (not c!1215749)) b!6600074))

(assert (= (and b!6600074 c!1215748) b!6600075))

(assert (= (and b!6600074 (not c!1215748)) b!6600077))

(assert (= (and b!6600075 (not res!2706219)) b!6600071))

(assert (= (and b!6600077 c!1215750) b!6600076))

(assert (= (and b!6600077 (not c!1215750)) b!6600080))

(assert (= (and b!6600076 (not res!2706218)) b!6600079))

(assert (= (or b!6600079 b!6600080) bm!577179))

(assert (= (or b!6600081 b!6600076) bm!577180))

(declare-fun m!7376534 () Bool)

(assert (=> b!6600071 m!7376534))

(declare-fun m!7376536 () Bool)

(assert (=> bm!577179 m!7376536))

(declare-fun m!7376538 () Bool)

(assert (=> b!6600075 m!7376538))

(assert (=> bm!577180 m!7376516))

(assert (=> b!6599055 d!2070308))

(declare-fun bs!1692256 () Bool)

(declare-fun d!2070310 () Bool)

(assert (= bs!1692256 (and d!2070310 b!6600080)))

(declare-fun lambda!367876 () Int)

(assert (=> bs!1692256 (not (= lambda!367876 lambda!367875))))

(declare-fun bs!1692257 () Bool)

(assert (= bs!1692257 (and d!2070310 b!6599046)))

(assert (=> bs!1692257 (= (and (= Nil!65570 s!2326) (= (reg!16794 (regOne!33442 r!7292)) (regOne!33442 r!7292)) (= lt!2413033 (regTwo!33442 r!7292))) (= lambda!367876 lambda!367774))))

(declare-fun bs!1692258 () Bool)

(assert (= bs!1692258 (and d!2070310 d!2070196)))

(assert (=> bs!1692258 (not (= lambda!367876 lambda!367858))))

(assert (=> bs!1692257 (not (= lambda!367876 lambda!367775))))

(declare-fun bs!1692259 () Bool)

(assert (= bs!1692259 (and d!2070310 b!6600032)))

(assert (=> bs!1692259 (not (= lambda!367876 lambda!367873))))

(declare-fun bs!1692260 () Bool)

(assert (= bs!1692260 (and d!2070310 d!2070192)))

(assert (=> bs!1692260 (= (and (= Nil!65570 s!2326) (= (reg!16794 (regOne!33442 r!7292)) (regOne!33442 r!7292)) (= lt!2413033 (regTwo!33442 r!7292))) (= lambda!367876 lambda!367848))))

(declare-fun bs!1692261 () Bool)

(assert (= bs!1692261 (and d!2070310 b!6600079)))

(assert (=> bs!1692261 (not (= lambda!367876 lambda!367874))))

(declare-fun bs!1692262 () Bool)

(assert (= bs!1692262 (and d!2070310 b!6600031)))

(assert (=> bs!1692262 (not (= lambda!367876 lambda!367872))))

(assert (=> bs!1692258 (= (and (= Nil!65570 s!2326) (= (reg!16794 (regOne!33442 r!7292)) (regOne!33442 r!7292)) (= lt!2413033 (regTwo!33442 r!7292))) (= lambda!367876 lambda!367857))))

(declare-fun bs!1692263 () Bool)

(assert (= bs!1692263 (and d!2070310 b!6599426)))

(assert (=> bs!1692263 (not (= lambda!367876 lambda!367809))))

(declare-fun bs!1692264 () Bool)

(assert (= bs!1692264 (and d!2070310 b!6599055)))

(assert (=> bs!1692264 (= lambda!367876 lambda!367777)))

(declare-fun bs!1692265 () Bool)

(assert (= bs!1692265 (and d!2070310 b!6599427)))

(assert (=> bs!1692265 (not (= lambda!367876 lambda!367812))))

(assert (=> d!2070310 true))

(assert (=> d!2070310 true))

(assert (=> d!2070310 true))

(assert (=> d!2070310 (= (isDefined!13059 (findConcatSeparation!2770 (reg!16794 (regOne!33442 r!7292)) lt!2413033 Nil!65570 Nil!65570 Nil!65570)) (Exists!3535 lambda!367876))))

(declare-fun lt!2413197 () Unit!159195)

(assert (=> d!2070310 (= lt!2413197 (choose!49260 (reg!16794 (regOne!33442 r!7292)) lt!2413033 Nil!65570))))

(assert (=> d!2070310 (validRegex!8201 (reg!16794 (regOne!33442 r!7292)))))

(assert (=> d!2070310 (= (lemmaFindConcatSeparationEquivalentToExists!2534 (reg!16794 (regOne!33442 r!7292)) lt!2413033 Nil!65570) lt!2413197)))

(declare-fun bs!1692266 () Bool)

(assert (= bs!1692266 d!2070310))

(assert (=> bs!1692266 m!7375640))

(assert (=> bs!1692266 m!7375642))

(assert (=> bs!1692266 m!7375642))

(assert (=> bs!1692266 m!7375644))

(declare-fun m!7376540 () Bool)

(assert (=> bs!1692266 m!7376540))

(declare-fun m!7376542 () Bool)

(assert (=> bs!1692266 m!7376542))

(assert (=> b!6599055 d!2070310))

(declare-fun b!6600082 () Bool)

(declare-fun e!3993660 () Bool)

(declare-fun lt!2413198 () Option!16356)

(assert (=> b!6600082 (= e!3993660 (not (isDefined!13059 lt!2413198)))))

(declare-fun b!6600083 () Bool)

(declare-fun e!3993657 () Option!16356)

(assert (=> b!6600083 (= e!3993657 (Some!16355 (tuple2!66889 Nil!65570 Nil!65570)))))

(declare-fun b!6600084 () Bool)

(declare-fun e!3993661 () Option!16356)

(assert (=> b!6600084 (= e!3993661 None!16355)))

(declare-fun b!6600085 () Bool)

(declare-fun res!2706222 () Bool)

(declare-fun e!3993658 () Bool)

(assert (=> b!6600085 (=> (not res!2706222) (not e!3993658))))

(assert (=> b!6600085 (= res!2706222 (matchR!8648 lt!2413033 (_2!36747 (get!22779 lt!2413198))))))

(declare-fun b!6600086 () Bool)

(declare-fun e!3993659 () Bool)

(assert (=> b!6600086 (= e!3993659 (matchR!8648 lt!2413033 Nil!65570))))

(declare-fun b!6600087 () Bool)

(assert (=> b!6600087 (= e!3993657 e!3993661)))

(declare-fun c!1215751 () Bool)

(assert (=> b!6600087 (= c!1215751 ((_ is Nil!65570) Nil!65570))))

(declare-fun b!6600088 () Bool)

(declare-fun res!2706223 () Bool)

(assert (=> b!6600088 (=> (not res!2706223) (not e!3993658))))

(assert (=> b!6600088 (= res!2706223 (matchR!8648 (reg!16794 (regOne!33442 r!7292)) (_1!36747 (get!22779 lt!2413198))))))

(declare-fun b!6600089 () Bool)

(assert (=> b!6600089 (= e!3993658 (= (++!14611 (_1!36747 (get!22779 lt!2413198)) (_2!36747 (get!22779 lt!2413198))) Nil!65570))))

(declare-fun b!6600090 () Bool)

(declare-fun lt!2413199 () Unit!159195)

(declare-fun lt!2413200 () Unit!159195)

(assert (=> b!6600090 (= lt!2413199 lt!2413200)))

(assert (=> b!6600090 (= (++!14611 (++!14611 Nil!65570 (Cons!65570 (h!72018 Nil!65570) Nil!65570)) (t!379346 Nil!65570)) Nil!65570)))

(assert (=> b!6600090 (= lt!2413200 (lemmaMoveElementToOtherListKeepsConcatEq!2608 Nil!65570 (h!72018 Nil!65570) (t!379346 Nil!65570) Nil!65570))))

(assert (=> b!6600090 (= e!3993661 (findConcatSeparation!2770 (reg!16794 (regOne!33442 r!7292)) lt!2413033 (++!14611 Nil!65570 (Cons!65570 (h!72018 Nil!65570) Nil!65570)) (t!379346 Nil!65570) Nil!65570))))

(declare-fun d!2070312 () Bool)

(assert (=> d!2070312 e!3993660))

(declare-fun res!2706220 () Bool)

(assert (=> d!2070312 (=> res!2706220 e!3993660)))

(assert (=> d!2070312 (= res!2706220 e!3993658)))

(declare-fun res!2706221 () Bool)

(assert (=> d!2070312 (=> (not res!2706221) (not e!3993658))))

(assert (=> d!2070312 (= res!2706221 (isDefined!13059 lt!2413198))))

(assert (=> d!2070312 (= lt!2413198 e!3993657)))

(declare-fun c!1215752 () Bool)

(assert (=> d!2070312 (= c!1215752 e!3993659)))

(declare-fun res!2706224 () Bool)

(assert (=> d!2070312 (=> (not res!2706224) (not e!3993659))))

(assert (=> d!2070312 (= res!2706224 (matchR!8648 (reg!16794 (regOne!33442 r!7292)) Nil!65570))))

(assert (=> d!2070312 (validRegex!8201 (reg!16794 (regOne!33442 r!7292)))))

(assert (=> d!2070312 (= (findConcatSeparation!2770 (reg!16794 (regOne!33442 r!7292)) lt!2413033 Nil!65570 Nil!65570 Nil!65570) lt!2413198)))

(assert (= (and d!2070312 res!2706224) b!6600086))

(assert (= (and d!2070312 c!1215752) b!6600083))

(assert (= (and d!2070312 (not c!1215752)) b!6600087))

(assert (= (and b!6600087 c!1215751) b!6600084))

(assert (= (and b!6600087 (not c!1215751)) b!6600090))

(assert (= (and d!2070312 res!2706221) b!6600088))

(assert (= (and b!6600088 res!2706223) b!6600085))

(assert (= (and b!6600085 res!2706222) b!6600089))

(assert (= (and d!2070312 (not res!2706220)) b!6600082))

(declare-fun m!7376544 () Bool)

(assert (=> b!6600088 m!7376544))

(declare-fun m!7376546 () Bool)

(assert (=> b!6600088 m!7376546))

(assert (=> b!6600089 m!7376544))

(declare-fun m!7376548 () Bool)

(assert (=> b!6600089 m!7376548))

(declare-fun m!7376550 () Bool)

(assert (=> d!2070312 m!7376550))

(declare-fun m!7376552 () Bool)

(assert (=> d!2070312 m!7376552))

(assert (=> d!2070312 m!7375640))

(declare-fun m!7376554 () Bool)

(assert (=> b!6600090 m!7376554))

(assert (=> b!6600090 m!7376554))

(declare-fun m!7376556 () Bool)

(assert (=> b!6600090 m!7376556))

(declare-fun m!7376558 () Bool)

(assert (=> b!6600090 m!7376558))

(assert (=> b!6600090 m!7376554))

(declare-fun m!7376560 () Bool)

(assert (=> b!6600090 m!7376560))

(assert (=> b!6600082 m!7376550))

(assert (=> b!6600086 m!7375648))

(assert (=> b!6600085 m!7376544))

(declare-fun m!7376562 () Bool)

(assert (=> b!6600085 m!7376562))

(assert (=> b!6599055 d!2070312))

(declare-fun b!6600125 () Bool)

(declare-fun e!3993683 () Int)

(assert (=> b!6600125 (= e!3993683 1)))

(declare-fun b!6600126 () Bool)

(declare-fun e!3993687 () Int)

(assert (=> b!6600126 (= e!3993683 e!3993687)))

(declare-fun c!1215767 () Bool)

(assert (=> b!6600126 (= c!1215767 ((_ is Star!16465) r!7292))))

(declare-fun b!6600127 () Bool)

(declare-fun c!1215772 () Bool)

(assert (=> b!6600127 (= c!1215772 ((_ is Star!16465) r!7292))))

(declare-fun e!3993686 () Bool)

(declare-fun e!3993691 () Bool)

(assert (=> b!6600127 (= e!3993686 e!3993691)))

(declare-fun b!6600128 () Bool)

(declare-fun e!3993682 () Bool)

(declare-fun e!3993688 () Bool)

(assert (=> b!6600128 (= e!3993682 e!3993688)))

(declare-fun c!1215771 () Bool)

(assert (=> b!6600128 (= c!1215771 ((_ is Union!16465) r!7292))))

(declare-fun b!6600129 () Bool)

(declare-fun e!3993684 () Int)

(declare-fun call!577205 () Int)

(assert (=> b!6600129 (= e!3993684 (+ 1 call!577205))))

(declare-fun b!6600130 () Bool)

(declare-fun e!3993690 () Int)

(assert (=> b!6600130 (= e!3993690 (+ 1 call!577205))))

(declare-fun bm!577196 () Bool)

(declare-fun call!577200 () Int)

(assert (=> bm!577196 (= call!577200 (regexDepth!362 (ite c!1215771 (regTwo!33443 r!7292) (regTwo!33442 r!7292))))))

(declare-fun b!6600131 () Bool)

(declare-fun e!3993685 () Bool)

(declare-fun lt!2413203 () Int)

(assert (=> b!6600131 (= e!3993685 (> lt!2413203 call!577200))))

(declare-fun b!6600132 () Bool)

(assert (=> b!6600132 (= e!3993684 e!3993690)))

(declare-fun c!1215768 () Bool)

(assert (=> b!6600132 (= c!1215768 ((_ is Concat!25310) r!7292))))

(declare-fun b!6600133 () Bool)

(assert (=> b!6600133 (= e!3993690 1)))

(declare-fun c!1215770 () Bool)

(declare-fun call!577204 () Int)

(declare-fun bm!577197 () Bool)

(assert (=> bm!577197 (= call!577204 (regexDepth!362 (ite c!1215771 (regOne!33443 r!7292) (ite c!1215770 (regOne!33442 r!7292) (reg!16794 r!7292)))))))

(declare-fun b!6600134 () Bool)

(declare-fun e!3993689 () Bool)

(assert (=> b!6600134 (= e!3993689 (> lt!2413203 call!577200))))

(declare-fun b!6600135 () Bool)

(declare-fun call!577202 () Int)

(assert (=> b!6600135 (= e!3993687 (+ 1 call!577202))))

(declare-fun b!6600136 () Bool)

(declare-fun call!577206 () Int)

(assert (=> b!6600136 (= e!3993691 (> lt!2413203 call!577206))))

(declare-fun bm!577198 () Bool)

(declare-fun c!1215769 () Bool)

(declare-fun call!577203 () Int)

(declare-fun call!577201 () Int)

(assert (=> bm!577198 (= call!577205 (maxBigInt!0 (ite c!1215769 call!577203 call!577201) (ite c!1215769 call!577201 call!577203)))))

(declare-fun bm!577195 () Bool)

(assert (=> bm!577195 (= call!577203 (regexDepth!362 (ite c!1215769 (regOne!33443 r!7292) (regTwo!33442 r!7292))))))

(declare-fun d!2070314 () Bool)

(assert (=> d!2070314 e!3993682))

(declare-fun res!2706233 () Bool)

(assert (=> d!2070314 (=> (not res!2706233) (not e!3993682))))

(assert (=> d!2070314 (= res!2706233 (> lt!2413203 0))))

(assert (=> d!2070314 (= lt!2413203 e!3993683)))

(declare-fun c!1215773 () Bool)

(assert (=> d!2070314 (= c!1215773 ((_ is ElementMatch!16465) r!7292))))

(assert (=> d!2070314 (= (regexDepth!362 r!7292) lt!2413203)))

(declare-fun b!6600137 () Bool)

(declare-fun res!2706232 () Bool)

(assert (=> b!6600137 (=> (not res!2706232) (not e!3993685))))

(assert (=> b!6600137 (= res!2706232 (> lt!2413203 call!577206))))

(assert (=> b!6600137 (= e!3993686 e!3993685)))

(declare-fun b!6600138 () Bool)

(assert (=> b!6600138 (= e!3993688 e!3993686)))

(assert (=> b!6600138 (= c!1215770 ((_ is Concat!25310) r!7292))))

(declare-fun b!6600139 () Bool)

(assert (=> b!6600139 (= e!3993691 (= lt!2413203 1))))

(declare-fun bm!577199 () Bool)

(assert (=> bm!577199 (= call!577201 call!577202)))

(declare-fun bm!577200 () Bool)

(assert (=> bm!577200 (= call!577206 call!577204)))

(declare-fun bm!577201 () Bool)

(assert (=> bm!577201 (= call!577202 (regexDepth!362 (ite c!1215767 (reg!16794 r!7292) (ite c!1215769 (regTwo!33443 r!7292) (regOne!33442 r!7292)))))))

(declare-fun b!6600140 () Bool)

(assert (=> b!6600140 (= c!1215769 ((_ is Union!16465) r!7292))))

(assert (=> b!6600140 (= e!3993687 e!3993684)))

(declare-fun b!6600141 () Bool)

(assert (=> b!6600141 (= e!3993688 e!3993689)))

(declare-fun res!2706231 () Bool)

(assert (=> b!6600141 (= res!2706231 (> lt!2413203 call!577204))))

(assert (=> b!6600141 (=> (not res!2706231) (not e!3993689))))

(assert (= (and d!2070314 c!1215773) b!6600125))

(assert (= (and d!2070314 (not c!1215773)) b!6600126))

(assert (= (and b!6600126 c!1215767) b!6600135))

(assert (= (and b!6600126 (not c!1215767)) b!6600140))

(assert (= (and b!6600140 c!1215769) b!6600129))

(assert (= (and b!6600140 (not c!1215769)) b!6600132))

(assert (= (and b!6600132 c!1215768) b!6600130))

(assert (= (and b!6600132 (not c!1215768)) b!6600133))

(assert (= (or b!6600129 b!6600130) bm!577199))

(assert (= (or b!6600129 b!6600130) bm!577195))

(assert (= (or b!6600129 b!6600130) bm!577198))

(assert (= (or b!6600135 bm!577199) bm!577201))

(assert (= (and d!2070314 res!2706233) b!6600128))

(assert (= (and b!6600128 c!1215771) b!6600141))

(assert (= (and b!6600128 (not c!1215771)) b!6600138))

(assert (= (and b!6600141 res!2706231) b!6600134))

(assert (= (and b!6600138 c!1215770) b!6600137))

(assert (= (and b!6600138 (not c!1215770)) b!6600127))

(assert (= (and b!6600137 res!2706232) b!6600131))

(assert (= (and b!6600127 c!1215772) b!6600136))

(assert (= (and b!6600127 (not c!1215772)) b!6600139))

(assert (= (or b!6600137 b!6600136) bm!577200))

(assert (= (or b!6600134 b!6600131) bm!577196))

(assert (= (or b!6600141 bm!577200) bm!577197))

(declare-fun m!7376564 () Bool)

(assert (=> bm!577201 m!7376564))

(declare-fun m!7376566 () Bool)

(assert (=> bm!577195 m!7376566))

(declare-fun m!7376568 () Bool)

(assert (=> bm!577198 m!7376568))

(declare-fun m!7376570 () Bool)

(assert (=> bm!577196 m!7376570))

(declare-fun m!7376572 () Bool)

(assert (=> bm!577197 m!7376572))

(assert (=> b!6599034 d!2070314))

(declare-fun b!6600142 () Bool)

(declare-fun e!3993693 () Int)

(assert (=> b!6600142 (= e!3993693 1)))

(declare-fun b!6600143 () Bool)

(declare-fun e!3993697 () Int)

(assert (=> b!6600143 (= e!3993693 e!3993697)))

(declare-fun c!1215774 () Bool)

(assert (=> b!6600143 (= c!1215774 ((_ is Star!16465) lt!2413031))))

(declare-fun b!6600144 () Bool)

(declare-fun c!1215779 () Bool)

(assert (=> b!6600144 (= c!1215779 ((_ is Star!16465) lt!2413031))))

(declare-fun e!3993696 () Bool)

(declare-fun e!3993701 () Bool)

(assert (=> b!6600144 (= e!3993696 e!3993701)))

(declare-fun b!6600145 () Bool)

(declare-fun e!3993692 () Bool)

(declare-fun e!3993698 () Bool)

(assert (=> b!6600145 (= e!3993692 e!3993698)))

(declare-fun c!1215778 () Bool)

(assert (=> b!6600145 (= c!1215778 ((_ is Union!16465) lt!2413031))))

(declare-fun b!6600146 () Bool)

(declare-fun e!3993694 () Int)

(declare-fun call!577212 () Int)

(assert (=> b!6600146 (= e!3993694 (+ 1 call!577212))))

(declare-fun b!6600147 () Bool)

(declare-fun e!3993700 () Int)

(assert (=> b!6600147 (= e!3993700 (+ 1 call!577212))))

(declare-fun bm!577203 () Bool)

(declare-fun call!577207 () Int)

(assert (=> bm!577203 (= call!577207 (regexDepth!362 (ite c!1215778 (regTwo!33443 lt!2413031) (regTwo!33442 lt!2413031))))))

(declare-fun b!6600148 () Bool)

(declare-fun e!3993695 () Bool)

(declare-fun lt!2413204 () Int)

(assert (=> b!6600148 (= e!3993695 (> lt!2413204 call!577207))))

(declare-fun b!6600149 () Bool)

(assert (=> b!6600149 (= e!3993694 e!3993700)))

(declare-fun c!1215775 () Bool)

(assert (=> b!6600149 (= c!1215775 ((_ is Concat!25310) lt!2413031))))

(declare-fun b!6600150 () Bool)

(assert (=> b!6600150 (= e!3993700 1)))

(declare-fun call!577211 () Int)

(declare-fun c!1215777 () Bool)

(declare-fun bm!577204 () Bool)

(assert (=> bm!577204 (= call!577211 (regexDepth!362 (ite c!1215778 (regOne!33443 lt!2413031) (ite c!1215777 (regOne!33442 lt!2413031) (reg!16794 lt!2413031)))))))

(declare-fun b!6600151 () Bool)

(declare-fun e!3993699 () Bool)

(assert (=> b!6600151 (= e!3993699 (> lt!2413204 call!577207))))

(declare-fun b!6600152 () Bool)

(declare-fun call!577209 () Int)

(assert (=> b!6600152 (= e!3993697 (+ 1 call!577209))))

(declare-fun b!6600153 () Bool)

(declare-fun call!577213 () Int)

(assert (=> b!6600153 (= e!3993701 (> lt!2413204 call!577213))))

(declare-fun call!577208 () Int)

(declare-fun call!577210 () Int)

(declare-fun c!1215776 () Bool)

(declare-fun bm!577205 () Bool)

(assert (=> bm!577205 (= call!577212 (maxBigInt!0 (ite c!1215776 call!577210 call!577208) (ite c!1215776 call!577208 call!577210)))))

(declare-fun bm!577202 () Bool)

(assert (=> bm!577202 (= call!577210 (regexDepth!362 (ite c!1215776 (regOne!33443 lt!2413031) (regTwo!33442 lt!2413031))))))

(declare-fun d!2070316 () Bool)

(assert (=> d!2070316 e!3993692))

(declare-fun res!2706236 () Bool)

(assert (=> d!2070316 (=> (not res!2706236) (not e!3993692))))

(assert (=> d!2070316 (= res!2706236 (> lt!2413204 0))))

(assert (=> d!2070316 (= lt!2413204 e!3993693)))

(declare-fun c!1215780 () Bool)

(assert (=> d!2070316 (= c!1215780 ((_ is ElementMatch!16465) lt!2413031))))

(assert (=> d!2070316 (= (regexDepth!362 lt!2413031) lt!2413204)))

(declare-fun b!6600154 () Bool)

(declare-fun res!2706235 () Bool)

(assert (=> b!6600154 (=> (not res!2706235) (not e!3993695))))

(assert (=> b!6600154 (= res!2706235 (> lt!2413204 call!577213))))

(assert (=> b!6600154 (= e!3993696 e!3993695)))

(declare-fun b!6600155 () Bool)

(assert (=> b!6600155 (= e!3993698 e!3993696)))

(assert (=> b!6600155 (= c!1215777 ((_ is Concat!25310) lt!2413031))))

(declare-fun b!6600156 () Bool)

(assert (=> b!6600156 (= e!3993701 (= lt!2413204 1))))

(declare-fun bm!577206 () Bool)

(assert (=> bm!577206 (= call!577208 call!577209)))

(declare-fun bm!577207 () Bool)

(assert (=> bm!577207 (= call!577213 call!577211)))

(declare-fun bm!577208 () Bool)

(assert (=> bm!577208 (= call!577209 (regexDepth!362 (ite c!1215774 (reg!16794 lt!2413031) (ite c!1215776 (regTwo!33443 lt!2413031) (regOne!33442 lt!2413031)))))))

(declare-fun b!6600157 () Bool)

(assert (=> b!6600157 (= c!1215776 ((_ is Union!16465) lt!2413031))))

(assert (=> b!6600157 (= e!3993697 e!3993694)))

(declare-fun b!6600158 () Bool)

(assert (=> b!6600158 (= e!3993698 e!3993699)))

(declare-fun res!2706234 () Bool)

(assert (=> b!6600158 (= res!2706234 (> lt!2413204 call!577211))))

(assert (=> b!6600158 (=> (not res!2706234) (not e!3993699))))

(assert (= (and d!2070316 c!1215780) b!6600142))

(assert (= (and d!2070316 (not c!1215780)) b!6600143))

(assert (= (and b!6600143 c!1215774) b!6600152))

(assert (= (and b!6600143 (not c!1215774)) b!6600157))

(assert (= (and b!6600157 c!1215776) b!6600146))

(assert (= (and b!6600157 (not c!1215776)) b!6600149))

(assert (= (and b!6600149 c!1215775) b!6600147))

(assert (= (and b!6600149 (not c!1215775)) b!6600150))

(assert (= (or b!6600146 b!6600147) bm!577206))

(assert (= (or b!6600146 b!6600147) bm!577202))

(assert (= (or b!6600146 b!6600147) bm!577205))

(assert (= (or b!6600152 bm!577206) bm!577208))

(assert (= (and d!2070316 res!2706236) b!6600145))

(assert (= (and b!6600145 c!1215778) b!6600158))

(assert (= (and b!6600145 (not c!1215778)) b!6600155))

(assert (= (and b!6600158 res!2706234) b!6600151))

(assert (= (and b!6600155 c!1215777) b!6600154))

(assert (= (and b!6600155 (not c!1215777)) b!6600144))

(assert (= (and b!6600154 res!2706235) b!6600148))

(assert (= (and b!6600144 c!1215779) b!6600153))

(assert (= (and b!6600144 (not c!1215779)) b!6600156))

(assert (= (or b!6600154 b!6600153) bm!577207))

(assert (= (or b!6600151 b!6600148) bm!577203))

(assert (= (or b!6600158 bm!577207) bm!577204))

(declare-fun m!7376574 () Bool)

(assert (=> bm!577208 m!7376574))

(declare-fun m!7376576 () Bool)

(assert (=> bm!577202 m!7376576))

(declare-fun m!7376578 () Bool)

(assert (=> bm!577205 m!7376578))

(declare-fun m!7376580 () Bool)

(assert (=> bm!577203 m!7376580))

(declare-fun m!7376582 () Bool)

(assert (=> bm!577204 m!7376582))

(assert (=> b!6599034 d!2070316))

(declare-fun bs!1692267 () Bool)

(declare-fun d!2070318 () Bool)

(assert (= bs!1692267 (and d!2070318 d!2070048)))

(declare-fun lambda!367877 () Int)

(assert (=> bs!1692267 (= lambda!367877 lambda!367783)))

(declare-fun bs!1692268 () Bool)

(assert (= bs!1692268 (and d!2070318 d!2070068)))

(assert (=> bs!1692268 (= lambda!367877 lambda!367786)))

(declare-fun bs!1692269 () Bool)

(assert (= bs!1692269 (and d!2070318 d!2070148)))

(assert (=> bs!1692269 (= lambda!367877 lambda!367840)))

(declare-fun bs!1692270 () Bool)

(assert (= bs!1692270 (and d!2070318 d!2070134)))

(assert (=> bs!1692270 (= lambda!367877 lambda!367832)))

(declare-fun bs!1692271 () Bool)

(assert (= bs!1692271 (and d!2070318 d!2070130)))

(assert (=> bs!1692271 (= lambda!367877 lambda!367831)))

(declare-fun b!6600159 () Bool)

(declare-fun e!3993706 () Bool)

(declare-fun lt!2413205 () Regex!16465)

(assert (=> b!6600159 (= e!3993706 (isEmptyExpr!1843 lt!2413205))))

(declare-fun b!6600160 () Bool)

(declare-fun e!3993707 () Regex!16465)

(assert (=> b!6600160 (= e!3993707 (Concat!25310 (h!72019 (t!379347 (exprs!6349 (h!72020 zl!343)))) (generalisedConcat!2062 (t!379347 (t!379347 (exprs!6349 (h!72020 zl!343)))))))))

(declare-fun b!6600161 () Bool)

(declare-fun e!3993703 () Bool)

(assert (=> b!6600161 (= e!3993703 (isEmpty!37837 (t!379347 (t!379347 (exprs!6349 (h!72020 zl!343))))))))

(declare-fun b!6600163 () Bool)

(declare-fun e!3993705 () Bool)

(assert (=> b!6600163 (= e!3993706 e!3993705)))

(declare-fun c!1215781 () Bool)

(assert (=> b!6600163 (= c!1215781 (isEmpty!37837 (tail!12466 (t!379347 (exprs!6349 (h!72020 zl!343))))))))

(declare-fun b!6600164 () Bool)

(assert (=> b!6600164 (= e!3993705 (isConcat!1366 lt!2413205))))

(declare-fun b!6600165 () Bool)

(assert (=> b!6600165 (= e!3993705 (= lt!2413205 (head!13381 (t!379347 (exprs!6349 (h!72020 zl!343))))))))

(declare-fun b!6600166 () Bool)

(declare-fun e!3993702 () Bool)

(assert (=> b!6600166 (= e!3993702 e!3993706)))

(declare-fun c!1215783 () Bool)

(assert (=> b!6600166 (= c!1215783 (isEmpty!37837 (t!379347 (exprs!6349 (h!72020 zl!343)))))))

(declare-fun b!6600167 () Bool)

(assert (=> b!6600167 (= e!3993707 EmptyExpr!16465)))

(declare-fun b!6600168 () Bool)

(declare-fun e!3993704 () Regex!16465)

(assert (=> b!6600168 (= e!3993704 (h!72019 (t!379347 (exprs!6349 (h!72020 zl!343)))))))

(assert (=> d!2070318 e!3993702))

(declare-fun res!2706237 () Bool)

(assert (=> d!2070318 (=> (not res!2706237) (not e!3993702))))

(assert (=> d!2070318 (= res!2706237 (validRegex!8201 lt!2413205))))

(assert (=> d!2070318 (= lt!2413205 e!3993704)))

(declare-fun c!1215784 () Bool)

(assert (=> d!2070318 (= c!1215784 e!3993703)))

(declare-fun res!2706238 () Bool)

(assert (=> d!2070318 (=> (not res!2706238) (not e!3993703))))

(assert (=> d!2070318 (= res!2706238 ((_ is Cons!65571) (t!379347 (exprs!6349 (h!72020 zl!343)))))))

(assert (=> d!2070318 (forall!15653 (t!379347 (exprs!6349 (h!72020 zl!343))) lambda!367877)))

(assert (=> d!2070318 (= (generalisedConcat!2062 (t!379347 (exprs!6349 (h!72020 zl!343)))) lt!2413205)))

(declare-fun b!6600162 () Bool)

(assert (=> b!6600162 (= e!3993704 e!3993707)))

(declare-fun c!1215782 () Bool)

(assert (=> b!6600162 (= c!1215782 ((_ is Cons!65571) (t!379347 (exprs!6349 (h!72020 zl!343)))))))

(assert (= (and d!2070318 res!2706238) b!6600161))

(assert (= (and d!2070318 c!1215784) b!6600168))

(assert (= (and d!2070318 (not c!1215784)) b!6600162))

(assert (= (and b!6600162 c!1215782) b!6600160))

(assert (= (and b!6600162 (not c!1215782)) b!6600167))

(assert (= (and d!2070318 res!2706237) b!6600166))

(assert (= (and b!6600166 c!1215783) b!6600159))

(assert (= (and b!6600166 (not c!1215783)) b!6600163))

(assert (= (and b!6600163 c!1215781) b!6600165))

(assert (= (and b!6600163 (not c!1215781)) b!6600164))

(declare-fun m!7376584 () Bool)

(assert (=> b!6600159 m!7376584))

(declare-fun m!7376586 () Bool)

(assert (=> b!6600164 m!7376586))

(declare-fun m!7376588 () Bool)

(assert (=> b!6600165 m!7376588))

(assert (=> b!6600166 m!7375710))

(declare-fun m!7376590 () Bool)

(assert (=> b!6600163 m!7376590))

(assert (=> b!6600163 m!7376590))

(declare-fun m!7376592 () Bool)

(assert (=> b!6600163 m!7376592))

(declare-fun m!7376594 () Bool)

(assert (=> b!6600161 m!7376594))

(declare-fun m!7376596 () Bool)

(assert (=> d!2070318 m!7376596))

(declare-fun m!7376598 () Bool)

(assert (=> d!2070318 m!7376598))

(declare-fun m!7376600 () Bool)

(assert (=> b!6600160 m!7376600))

(assert (=> b!6599034 d!2070318))

(declare-fun d!2070320 () Bool)

(declare-fun lt!2413206 () Regex!16465)

(assert (=> d!2070320 (validRegex!8201 lt!2413206)))

(assert (=> d!2070320 (= lt!2413206 (generalisedUnion!2309 (unfocusZipperList!1886 (Cons!65572 lt!2413011 Nil!65572))))))

(assert (=> d!2070320 (= (unfocusZipper!2207 (Cons!65572 lt!2413011 Nil!65572)) lt!2413206)))

(declare-fun bs!1692272 () Bool)

(assert (= bs!1692272 d!2070320))

(declare-fun m!7376602 () Bool)

(assert (=> bs!1692272 m!7376602))

(declare-fun m!7376604 () Bool)

(assert (=> bs!1692272 m!7376604))

(assert (=> bs!1692272 m!7376604))

(declare-fun m!7376606 () Bool)

(assert (=> bs!1692272 m!7376606))

(assert (=> b!6599054 d!2070320))

(declare-fun b!6600173 () Bool)

(declare-fun e!3993710 () Bool)

(declare-fun tp!1819670 () Bool)

(declare-fun tp!1819671 () Bool)

(assert (=> b!6600173 (= e!3993710 (and tp!1819670 tp!1819671))))

(assert (=> b!6599076 (= tp!1819601 e!3993710)))

(assert (= (and b!6599076 ((_ is Cons!65571) (exprs!6349 setElem!45060))) b!6600173))

(declare-fun b!6600174 () Bool)

(declare-fun e!3993711 () Bool)

(declare-fun tp!1819672 () Bool)

(declare-fun tp!1819673 () Bool)

(assert (=> b!6600174 (= e!3993711 (and tp!1819672 tp!1819673))))

(assert (=> b!6599062 (= tp!1819605 e!3993711)))

(assert (= (and b!6599062 ((_ is Cons!65571) (exprs!6349 (h!72020 zl!343)))) b!6600174))

(declare-fun b!6600185 () Bool)

(declare-fun e!3993714 () Bool)

(assert (=> b!6600185 (= e!3993714 tp_is_empty!42183)))

(assert (=> b!6599075 (= tp!1819602 e!3993714)))

(declare-fun b!6600186 () Bool)

(declare-fun tp!1819686 () Bool)

(declare-fun tp!1819685 () Bool)

(assert (=> b!6600186 (= e!3993714 (and tp!1819686 tp!1819685))))

(declare-fun b!6600188 () Bool)

(declare-fun tp!1819687 () Bool)

(declare-fun tp!1819684 () Bool)

(assert (=> b!6600188 (= e!3993714 (and tp!1819687 tp!1819684))))

(declare-fun b!6600187 () Bool)

(declare-fun tp!1819688 () Bool)

(assert (=> b!6600187 (= e!3993714 tp!1819688)))

(assert (= (and b!6599075 ((_ is ElementMatch!16465) (regOne!33442 r!7292))) b!6600185))

(assert (= (and b!6599075 ((_ is Concat!25310) (regOne!33442 r!7292))) b!6600186))

(assert (= (and b!6599075 ((_ is Star!16465) (regOne!33442 r!7292))) b!6600187))

(assert (= (and b!6599075 ((_ is Union!16465) (regOne!33442 r!7292))) b!6600188))

(declare-fun b!6600189 () Bool)

(declare-fun e!3993715 () Bool)

(assert (=> b!6600189 (= e!3993715 tp_is_empty!42183)))

(assert (=> b!6599075 (= tp!1819606 e!3993715)))

(declare-fun b!6600190 () Bool)

(declare-fun tp!1819691 () Bool)

(declare-fun tp!1819690 () Bool)

(assert (=> b!6600190 (= e!3993715 (and tp!1819691 tp!1819690))))

(declare-fun b!6600192 () Bool)

(declare-fun tp!1819692 () Bool)

(declare-fun tp!1819689 () Bool)

(assert (=> b!6600192 (= e!3993715 (and tp!1819692 tp!1819689))))

(declare-fun b!6600191 () Bool)

(declare-fun tp!1819693 () Bool)

(assert (=> b!6600191 (= e!3993715 tp!1819693)))

(assert (= (and b!6599075 ((_ is ElementMatch!16465) (regTwo!33442 r!7292))) b!6600189))

(assert (= (and b!6599075 ((_ is Concat!25310) (regTwo!33442 r!7292))) b!6600190))

(assert (= (and b!6599075 ((_ is Star!16465) (regTwo!33442 r!7292))) b!6600191))

(assert (= (and b!6599075 ((_ is Union!16465) (regTwo!33442 r!7292))) b!6600192))

(declare-fun b!6600200 () Bool)

(declare-fun e!3993721 () Bool)

(declare-fun tp!1819698 () Bool)

(assert (=> b!6600200 (= e!3993721 tp!1819698)))

(declare-fun tp!1819699 () Bool)

(declare-fun b!6600199 () Bool)

(declare-fun e!3993720 () Bool)

(assert (=> b!6600199 (= e!3993720 (and (inv!84409 (h!72020 (t!379348 zl!343))) e!3993721 tp!1819699))))

(assert (=> b!6599040 (= tp!1819604 e!3993720)))

(assert (= b!6600199 b!6600200))

(assert (= (and b!6599040 ((_ is Cons!65572) (t!379348 zl!343))) b!6600199))

(declare-fun m!7376608 () Bool)

(assert (=> b!6600199 m!7376608))

(declare-fun b!6600205 () Bool)

(declare-fun e!3993724 () Bool)

(declare-fun tp!1819702 () Bool)

(assert (=> b!6600205 (= e!3993724 (and tp_is_empty!42183 tp!1819702))))

(assert (=> b!6599051 (= tp!1819599 e!3993724)))

(assert (= (and b!6599051 ((_ is Cons!65570) (t!379346 s!2326))) b!6600205))

(declare-fun condSetEmpty!45066 () Bool)

(assert (=> setNonEmpty!45060 (= condSetEmpty!45066 (= setRest!45060 ((as const (Array Context!11698 Bool)) false)))))

(declare-fun setRes!45066 () Bool)

(assert (=> setNonEmpty!45060 (= tp!1819600 setRes!45066)))

(declare-fun setIsEmpty!45066 () Bool)

(assert (=> setIsEmpty!45066 setRes!45066))

(declare-fun setNonEmpty!45066 () Bool)

(declare-fun e!3993727 () Bool)

(declare-fun tp!1819707 () Bool)

(declare-fun setElem!45066 () Context!11698)

(assert (=> setNonEmpty!45066 (= setRes!45066 (and tp!1819707 (inv!84409 setElem!45066) e!3993727))))

(declare-fun setRest!45066 () (InoxSet Context!11698))

(assert (=> setNonEmpty!45066 (= setRest!45060 ((_ map or) (store ((as const (Array Context!11698 Bool)) false) setElem!45066 true) setRest!45066))))

(declare-fun b!6600210 () Bool)

(declare-fun tp!1819708 () Bool)

(assert (=> b!6600210 (= e!3993727 tp!1819708)))

(assert (= (and setNonEmpty!45060 condSetEmpty!45066) setIsEmpty!45066))

(assert (= (and setNonEmpty!45060 (not condSetEmpty!45066)) setNonEmpty!45066))

(assert (= setNonEmpty!45066 b!6600210))

(declare-fun m!7376610 () Bool)

(assert (=> setNonEmpty!45066 m!7376610))

(declare-fun b!6600211 () Bool)

(declare-fun e!3993728 () Bool)

(assert (=> b!6600211 (= e!3993728 tp_is_empty!42183)))

(assert (=> b!6599039 (= tp!1819598 e!3993728)))

(declare-fun b!6600212 () Bool)

(declare-fun tp!1819711 () Bool)

(declare-fun tp!1819710 () Bool)

(assert (=> b!6600212 (= e!3993728 (and tp!1819711 tp!1819710))))

(declare-fun b!6600214 () Bool)

(declare-fun tp!1819712 () Bool)

(declare-fun tp!1819709 () Bool)

(assert (=> b!6600214 (= e!3993728 (and tp!1819712 tp!1819709))))

(declare-fun b!6600213 () Bool)

(declare-fun tp!1819713 () Bool)

(assert (=> b!6600213 (= e!3993728 tp!1819713)))

(assert (= (and b!6599039 ((_ is ElementMatch!16465) (regOne!33443 r!7292))) b!6600211))

(assert (= (and b!6599039 ((_ is Concat!25310) (regOne!33443 r!7292))) b!6600212))

(assert (= (and b!6599039 ((_ is Star!16465) (regOne!33443 r!7292))) b!6600213))

(assert (= (and b!6599039 ((_ is Union!16465) (regOne!33443 r!7292))) b!6600214))

(declare-fun b!6600215 () Bool)

(declare-fun e!3993729 () Bool)

(assert (=> b!6600215 (= e!3993729 tp_is_empty!42183)))

(assert (=> b!6599039 (= tp!1819603 e!3993729)))

(declare-fun b!6600216 () Bool)

(declare-fun tp!1819716 () Bool)

(declare-fun tp!1819715 () Bool)

(assert (=> b!6600216 (= e!3993729 (and tp!1819716 tp!1819715))))

(declare-fun b!6600218 () Bool)

(declare-fun tp!1819717 () Bool)

(declare-fun tp!1819714 () Bool)

(assert (=> b!6600218 (= e!3993729 (and tp!1819717 tp!1819714))))

(declare-fun b!6600217 () Bool)

(declare-fun tp!1819718 () Bool)

(assert (=> b!6600217 (= e!3993729 tp!1819718)))

(assert (= (and b!6599039 ((_ is ElementMatch!16465) (regTwo!33443 r!7292))) b!6600215))

(assert (= (and b!6599039 ((_ is Concat!25310) (regTwo!33443 r!7292))) b!6600216))

(assert (= (and b!6599039 ((_ is Star!16465) (regTwo!33443 r!7292))) b!6600217))

(assert (= (and b!6599039 ((_ is Union!16465) (regTwo!33443 r!7292))) b!6600218))

(declare-fun b!6600219 () Bool)

(declare-fun e!3993730 () Bool)

(assert (=> b!6600219 (= e!3993730 tp_is_empty!42183)))

(assert (=> b!6599038 (= tp!1819607 e!3993730)))

(declare-fun b!6600220 () Bool)

(declare-fun tp!1819721 () Bool)

(declare-fun tp!1819720 () Bool)

(assert (=> b!6600220 (= e!3993730 (and tp!1819721 tp!1819720))))

(declare-fun b!6600222 () Bool)

(declare-fun tp!1819722 () Bool)

(declare-fun tp!1819719 () Bool)

(assert (=> b!6600222 (= e!3993730 (and tp!1819722 tp!1819719))))

(declare-fun b!6600221 () Bool)

(declare-fun tp!1819723 () Bool)

(assert (=> b!6600221 (= e!3993730 tp!1819723)))

(assert (= (and b!6599038 ((_ is ElementMatch!16465) (reg!16794 r!7292))) b!6600219))

(assert (= (and b!6599038 ((_ is Concat!25310) (reg!16794 r!7292))) b!6600220))

(assert (= (and b!6599038 ((_ is Star!16465) (reg!16794 r!7292))) b!6600221))

(assert (= (and b!6599038 ((_ is Union!16465) (reg!16794 r!7292))) b!6600222))

(declare-fun b_lambda!249807 () Bool)

(assert (= b_lambda!249805 (or b!6599070 b_lambda!249807)))

(declare-fun bs!1692273 () Bool)

(declare-fun d!2070322 () Bool)

(assert (= bs!1692273 (and d!2070322 b!6599070)))

(assert (=> bs!1692273 (= (dynLambda!26112 lambda!367776 lt!2413018) (derivationStepZipperUp!1639 lt!2413018 (h!72018 s!2326)))))

(assert (=> bs!1692273 m!7375726))

(assert (=> d!2070284 d!2070322))

(declare-fun b_lambda!249809 () Bool)

(assert (= b_lambda!249801 (or b!6599070 b_lambda!249809)))

(declare-fun bs!1692274 () Bool)

(declare-fun d!2070324 () Bool)

(assert (= bs!1692274 (and d!2070324 b!6599070)))

(assert (=> bs!1692274 (= (dynLambda!26112 lambda!367776 (h!72020 zl!343)) (derivationStepZipperUp!1639 (h!72020 zl!343) (h!72018 s!2326)))))

(assert (=> bs!1692274 m!7375630))

(assert (=> d!2070264 d!2070324))

(declare-fun b_lambda!249811 () Bool)

(assert (= b_lambda!249781 (or b!6599070 b_lambda!249811)))

(declare-fun bs!1692275 () Bool)

(declare-fun d!2070326 () Bool)

(assert (= bs!1692275 (and d!2070326 b!6599070)))

(assert (=> bs!1692275 (= (dynLambda!26112 lambda!367776 lt!2413011) (derivationStepZipperUp!1639 lt!2413011 (h!72018 s!2326)))))

(assert (=> bs!1692275 m!7375690))

(assert (=> d!2070120 d!2070326))

(declare-fun b_lambda!249813 () Bool)

(assert (= b_lambda!249803 (or b!6599070 b_lambda!249813)))

(declare-fun bs!1692276 () Bool)

(declare-fun d!2070328 () Bool)

(assert (= bs!1692276 (and d!2070328 b!6599070)))

(assert (=> bs!1692276 (= (dynLambda!26112 lambda!367776 lt!2413006) (derivationStepZipperUp!1639 lt!2413006 (h!72018 s!2326)))))

(assert (=> bs!1692276 m!7375742))

(assert (=> d!2070282 d!2070328))

(declare-fun b_lambda!249815 () Bool)

(assert (= b_lambda!249783 (or b!6599070 b_lambda!249815)))

(declare-fun bs!1692277 () Bool)

(declare-fun d!2070330 () Bool)

(assert (= bs!1692277 (and d!2070330 b!6599070)))

(assert (=> bs!1692277 (= (dynLambda!26112 lambda!367776 lt!2413001) (derivationStepZipperUp!1639 lt!2413001 (h!72018 s!2326)))))

(assert (=> bs!1692277 m!7375632))

(assert (=> d!2070142 d!2070330))

(check-sat (not b!6599351) (not b!6599638) (not d!2070280) (not b!6600161) (not b!6599933) (not bm!577104) (not b!6599939) (not b!6599958) (not bm!577202) (not bm!577156) (not b!6599418) (not b!6600160) (not d!2070282) (not b!6599954) (not b!6599937) (not d!2070136) (not b!6599906) (not b!6599988) (not bm!577180) (not d!2070186) (not d!2070254) (not d!2070134) (not d!2070262) (not d!2070138) (not bm!577143) (not b!6600090) (not b!6599193) (not d!2070068) (not b!6599640) (not b!6599842) (not d!2070148) (not d!2070278) (not b!6600015) (not bm!577170) (not d!2070036) (not b!6599446) (not b!6599445) (not b!6600045) (not b!6599999) (not d!2070256) (not b!6599636) (not bm!577159) (not b!6599841) (not b!6600085) (not d!2070284) (not b!6599096) (not b!6599186) (not b!6600082) (not b!6600075) (not b!6600086) (not d!2070144) (not b!6600065) (not b!6599483) (not bm!577171) (not b!6599554) (not b!6599350) (not d!2070264) (not d!2070286) (not d!2070320) (not d!2070300) (not d!2070242) (not b!6600017) (not bm!577173) (not bm!577161) (not b!6599581) (not b!6600174) (not b!6599957) (not b!6599720) (not b!6600218) (not bs!1692273) (not bm!577205) (not d!2070152) (not d!2070312) (not b_lambda!249809) (not bm!577142) (not bm!577174) (not b!6600217) (not b!6599348) (not b!6599098) (not b!6599634) (not b!6600165) (not bm!577196) (not b!6600020) (not b!6599189) (not b!6599881) (not b!6599575) (not d!2070146) (not b!6600216) (not bs!1692274) (not bm!577169) (not b!6600088) (not bm!577172) (not b!6599485) (not b!6600023) (not d!2070298) (not b!6599345) (not b_lambda!249811) (not b!6599717) (not bm!577176) (not b!6599095) (not b!6600188) (not b!6599097) (not b!6600173) (not b!6600001) (not b!6599422) (not b!6600221) (not b!6600061) (not b!6599194) (not b!6599721) (not b_lambda!249813) (not bm!577164) (not b!6599577) (not b!6600213) (not b!6600200) (not b!6600067) (not b!6600009) (not b!6599635) (not bm!577204) (not b!6599952) (not b!6600220) (not b!6599639) (not d!2070304) (not d!2070028) (not b!6599722) (not b!6600159) (not b!6599714) (not d!2070258) (not b!6600164) (not b!6599951) (not bm!577201) (not d!2070318) (not b!6600044) (not b!6600071) (not b!6600068) (not d!2070272) (not b!6599187) (not d!2070074) (not b!6599349) (not d!2070266) (not bm!577198) (not d!2070130) (not bm!577195) (not b!6600192) (not b!6600163) (not bm!577178) (not b!6599938) (not d!2070294) (not bm!577094) (not d!2070306) (not b_lambda!249815) (not b!6600191) (not b!6600027) (not bs!1692276) (not d!2070224) (not b!6600064) (not d!2070292) (not b!6599580) (not bm!577208) (not b!6599718) (not bm!577090) (not b!6599352) (not bm!577089) (not b!6600205) (not d!2070120) (not bm!577167) (not d!2070196) (not b!6600052) (not bs!1692277) (not b!6599657) (not d!2070048) (not b!6600187) (not d!2070094) (not b!6599953) (not d!2070310) (not d!2070190) (not b!6600199) (not b!6599936) (not b!6600222) (not b!6599947) (not bm!577163) (not bm!577197) (not b!6600166) (not b!6599641) (not b!6600022) (not b!6599233) (not d!2070038) (not bm!577107) tp_is_empty!42183 (not d!2070226) (not b!6599578) (not d!2070030) (not bm!577162) (not b!6600066) (not b!6599996) (not bm!577084) (not b!6600089) (not b!6600190) (not bs!1692275) (not bm!577179) (not bm!577105) (not b!6600210) (not bm!577177) (not b_lambda!249807) (not d!2070142) (not d!2070124) (not bm!577203) (not b!6600038) (not d!2070046) (not b!6600042) (not b!6599191) (not d!2070150) (not b!6599950) (not b!6600212) (not d!2070110) (not setNonEmpty!45066) (not b!6599940) (not b!6600186) (not b!6600043) (not b!6600214) (not b!6599192) (not b!6600041) (not d!2070112) (not b!6599087) (not b!6599994) (not b!6599908) (not b!6599579) (not b!6599884) (not d!2070192))
(check-sat)
