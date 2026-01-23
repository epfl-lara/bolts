; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!621650 () Bool)

(assert start!621650)

(declare-fun b!6245271 () Bool)

(assert (=> b!6245271 true))

(assert (=> b!6245271 true))

(declare-fun lambda!341548 () Int)

(declare-fun lambda!341547 () Int)

(assert (=> b!6245271 (not (= lambda!341548 lambda!341547))))

(assert (=> b!6245271 true))

(assert (=> b!6245271 true))

(declare-fun b!6245250 () Bool)

(assert (=> b!6245250 true))

(declare-fun b!6245238 () Bool)

(declare-fun res!2578508 () Bool)

(declare-fun e!3799858 () Bool)

(assert (=> b!6245238 (=> res!2578508 e!3799858)))

(declare-datatypes ((C!32616 0))(
  ( (C!32617 (val!26010 Int)) )
))
(declare-datatypes ((Regex!16173 0))(
  ( (ElementMatch!16173 (c!1129830 C!32616)) (Concat!25018 (regOne!32858 Regex!16173) (regTwo!32858 Regex!16173)) (EmptyExpr!16173) (Star!16173 (reg!16502 Regex!16173)) (EmptyLang!16173) (Union!16173 (regOne!32859 Regex!16173) (regTwo!32859 Regex!16173)) )
))
(declare-datatypes ((List!64818 0))(
  ( (Nil!64694) (Cons!64694 (h!71142 Regex!16173) (t!378364 List!64818)) )
))
(declare-datatypes ((Context!11114 0))(
  ( (Context!11115 (exprs!6057 List!64818)) )
))
(declare-datatypes ((List!64819 0))(
  ( (Nil!64695) (Cons!64695 (h!71143 Context!11114) (t!378365 List!64819)) )
))
(declare-fun zl!343 () List!64819)

(declare-fun isEmpty!36714 (List!64818) Bool)

(assert (=> b!6245238 (= res!2578508 (isEmpty!36714 (t!378364 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun b!6245239 () Bool)

(declare-fun res!2578518 () Bool)

(declare-fun e!3799857 () Bool)

(assert (=> b!6245239 (=> res!2578518 e!3799857)))

(get-info :version)

(assert (=> b!6245239 (= res!2578518 (not ((_ is Cons!64694) (exprs!6057 (h!71143 zl!343)))))))

(declare-fun b!6245240 () Bool)

(declare-fun e!3799861 () Bool)

(declare-fun e!3799850 () Bool)

(assert (=> b!6245240 (= e!3799861 e!3799850)))

(declare-fun res!2578499 () Bool)

(assert (=> b!6245240 (=> res!2578499 e!3799850)))

(declare-fun e!3799859 () Bool)

(assert (=> b!6245240 (= res!2578499 e!3799859)))

(declare-fun res!2578500 () Bool)

(assert (=> b!6245240 (=> (not res!2578500) (not e!3799859))))

(declare-fun lt!2347848 () Bool)

(declare-fun lt!2347875 () Bool)

(assert (=> b!6245240 (= res!2578500 (not (= lt!2347848 lt!2347875)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2347873 () (InoxSet Context!11114))

(declare-datatypes ((List!64820 0))(
  ( (Nil!64696) (Cons!64696 (h!71144 C!32616) (t!378366 List!64820)) )
))
(declare-fun s!2326 () List!64820)

(declare-fun matchZipper!2185 ((InoxSet Context!11114) List!64820) Bool)

(assert (=> b!6245240 (= lt!2347848 (matchZipper!2185 lt!2347873 (t!378366 s!2326)))))

(declare-fun lt!2347870 () (InoxSet Context!11114))

(declare-fun e!3799851 () Bool)

(assert (=> b!6245240 (= (matchZipper!2185 lt!2347870 (t!378366 s!2326)) e!3799851)))

(declare-fun res!2578503 () Bool)

(assert (=> b!6245240 (=> res!2578503 e!3799851)))

(assert (=> b!6245240 (= res!2578503 lt!2347875)))

(declare-fun lt!2347861 () (InoxSet Context!11114))

(assert (=> b!6245240 (= lt!2347875 (matchZipper!2185 lt!2347861 (t!378366 s!2326)))))

(declare-datatypes ((Unit!158023 0))(
  ( (Unit!158024) )
))
(declare-fun lt!2347859 () Unit!158023)

(declare-fun lt!2347872 () (InoxSet Context!11114))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1004 ((InoxSet Context!11114) (InoxSet Context!11114) List!64820) Unit!158023)

(assert (=> b!6245240 (= lt!2347859 (lemmaZipperConcatMatchesSameAsBothZippers!1004 lt!2347861 lt!2347872 (t!378366 s!2326)))))

(declare-fun b!6245241 () Bool)

(declare-fun e!3799863 () Bool)

(assert (=> b!6245241 (= e!3799863 (not e!3799857))))

(declare-fun res!2578505 () Bool)

(assert (=> b!6245241 (=> res!2578505 e!3799857)))

(assert (=> b!6245241 (= res!2578505 (not ((_ is Cons!64695) zl!343)))))

(declare-fun lt!2347860 () Bool)

(declare-fun r!7292 () Regex!16173)

(declare-fun matchRSpec!3274 (Regex!16173 List!64820) Bool)

(assert (=> b!6245241 (= lt!2347860 (matchRSpec!3274 r!7292 s!2326))))

(declare-fun matchR!8356 (Regex!16173 List!64820) Bool)

(assert (=> b!6245241 (= lt!2347860 (matchR!8356 r!7292 s!2326))))

(declare-fun lt!2347850 () Unit!158023)

(declare-fun mainMatchTheorem!3274 (Regex!16173 List!64820) Unit!158023)

(assert (=> b!6245241 (= lt!2347850 (mainMatchTheorem!3274 r!7292 s!2326))))

(declare-fun b!6245242 () Bool)

(declare-fun e!3799849 () Unit!158023)

(declare-fun Unit!158025 () Unit!158023)

(assert (=> b!6245242 (= e!3799849 Unit!158025)))

(declare-fun res!2578514 () Bool)

(assert (=> start!621650 (=> (not res!2578514) (not e!3799863))))

(declare-fun validRegex!7909 (Regex!16173) Bool)

(assert (=> start!621650 (= res!2578514 (validRegex!7909 r!7292))))

(assert (=> start!621650 e!3799863))

(declare-fun e!3799854 () Bool)

(assert (=> start!621650 e!3799854))

(declare-fun condSetEmpty!42458 () Bool)

(declare-fun z!1189 () (InoxSet Context!11114))

(assert (=> start!621650 (= condSetEmpty!42458 (= z!1189 ((as const (Array Context!11114 Bool)) false)))))

(declare-fun setRes!42458 () Bool)

(assert (=> start!621650 setRes!42458))

(declare-fun e!3799865 () Bool)

(assert (=> start!621650 e!3799865))

(declare-fun e!3799852 () Bool)

(assert (=> start!621650 e!3799852))

(declare-fun b!6245243 () Bool)

(declare-fun res!2578517 () Bool)

(assert (=> b!6245243 (=> (not res!2578517) (not e!3799863))))

(declare-fun unfocusZipper!1915 (List!64819) Regex!16173)

(assert (=> b!6245243 (= res!2578517 (= r!7292 (unfocusZipper!1915 zl!343)))))

(declare-fun b!6245244 () Bool)

(declare-fun res!2578519 () Bool)

(assert (=> b!6245244 (=> res!2578519 e!3799857)))

(declare-fun generalisedUnion!2017 (List!64818) Regex!16173)

(declare-fun unfocusZipperList!1594 (List!64819) List!64818)

(assert (=> b!6245244 (= res!2578519 (not (= r!7292 (generalisedUnion!2017 (unfocusZipperList!1594 zl!343)))))))

(declare-fun b!6245245 () Bool)

(declare-fun e!3799856 () Bool)

(assert (=> b!6245245 (= e!3799850 e!3799856)))

(declare-fun res!2578497 () Bool)

(assert (=> b!6245245 (=> res!2578497 e!3799856)))

(declare-fun lt!2347878 () (InoxSet Context!11114))

(declare-fun lt!2347855 () (InoxSet Context!11114))

(assert (=> b!6245245 (= res!2578497 (not (= lt!2347878 lt!2347855)))))

(declare-fun lt!2347871 () (InoxSet Context!11114))

(assert (=> b!6245245 (= lt!2347855 ((_ map or) lt!2347861 lt!2347871))))

(declare-fun lt!2347851 () Context!11114)

(declare-fun derivationStepZipperUp!1347 (Context!11114 C!32616) (InoxSet Context!11114))

(assert (=> b!6245245 (= lt!2347871 (derivationStepZipperUp!1347 lt!2347851 (h!71144 s!2326)))))

(declare-fun lt!2347849 () Context!11114)

(declare-fun lt!2347865 () (InoxSet Context!11114))

(declare-fun lambda!341549 () Int)

(declare-fun flatMap!1678 ((InoxSet Context!11114) Int) (InoxSet Context!11114))

(assert (=> b!6245245 (= (flatMap!1678 lt!2347865 lambda!341549) (derivationStepZipperUp!1347 lt!2347849 (h!71144 s!2326)))))

(declare-fun lt!2347853 () Unit!158023)

(declare-fun lemmaFlatMapOnSingletonSet!1204 ((InoxSet Context!11114) Context!11114 Int) Unit!158023)

(assert (=> b!6245245 (= lt!2347853 (lemmaFlatMapOnSingletonSet!1204 lt!2347865 lt!2347849 lambda!341549))))

(declare-fun lt!2347874 () (InoxSet Context!11114))

(assert (=> b!6245245 (= lt!2347874 (derivationStepZipperUp!1347 lt!2347849 (h!71144 s!2326)))))

(declare-fun derivationStepZipper!2139 ((InoxSet Context!11114) C!32616) (InoxSet Context!11114))

(assert (=> b!6245245 (= lt!2347878 (derivationStepZipper!2139 lt!2347865 (h!71144 s!2326)))))

(declare-fun lt!2347866 () (InoxSet Context!11114))

(assert (=> b!6245245 (= lt!2347866 (store ((as const (Array Context!11114 Bool)) false) lt!2347851 true))))

(assert (=> b!6245245 (= lt!2347865 (store ((as const (Array Context!11114 Bool)) false) lt!2347849 true))))

(declare-fun lt!2347856 () List!64818)

(assert (=> b!6245245 (= lt!2347849 (Context!11115 lt!2347856))))

(declare-fun lt!2347862 () List!64818)

(assert (=> b!6245245 (= lt!2347856 (Cons!64694 (regOne!32858 (regOne!32858 r!7292)) lt!2347862))))

(declare-fun b!6245246 () Bool)

(declare-fun res!2578513 () Bool)

(declare-fun e!3799853 () Bool)

(assert (=> b!6245246 (=> res!2578513 e!3799853)))

(declare-fun nullable!6166 (Regex!16173) Bool)

(assert (=> b!6245246 (= res!2578513 (not (nullable!6166 (regOne!32858 (regOne!32858 r!7292)))))))

(declare-fun b!6245247 () Bool)

(declare-fun res!2578501 () Bool)

(declare-fun e!3799864 () Bool)

(assert (=> b!6245247 (=> res!2578501 e!3799864)))

(declare-fun lt!2347852 () List!64819)

(declare-fun zipperDepth!298 (List!64819) Int)

(assert (=> b!6245247 (= res!2578501 (> (zipperDepth!298 lt!2347852) (zipperDepth!298 zl!343)))))

(declare-fun b!6245248 () Bool)

(declare-fun e!3799860 () Bool)

(assert (=> b!6245248 (= e!3799860 (not (matchZipper!2185 (derivationStepZipper!2139 lt!2347866 (h!71144 s!2326)) (t!378366 s!2326))))))

(declare-fun b!6245249 () Bool)

(declare-fun tp_is_empty!41599 () Bool)

(declare-fun tp!1742688 () Bool)

(assert (=> b!6245249 (= e!3799852 (and tp_is_empty!41599 tp!1742688))))

(assert (=> b!6245250 (= e!3799858 e!3799853)))

(declare-fun res!2578521 () Bool)

(assert (=> b!6245250 (=> res!2578521 e!3799853)))

(assert (=> b!6245250 (= res!2578521 (or (and ((_ is ElementMatch!16173) (regOne!32858 r!7292)) (= (c!1129830 (regOne!32858 r!7292)) (h!71144 s!2326))) ((_ is Union!16173) (regOne!32858 r!7292)) (not ((_ is Concat!25018) (regOne!32858 r!7292)))))))

(declare-fun lt!2347868 () Unit!158023)

(assert (=> b!6245250 (= lt!2347868 e!3799849)))

(declare-fun c!1129829 () Bool)

(assert (=> b!6245250 (= c!1129829 (nullable!6166 (h!71142 (exprs!6057 (h!71143 zl!343)))))))

(assert (=> b!6245250 (= (flatMap!1678 z!1189 lambda!341549) (derivationStepZipperUp!1347 (h!71143 zl!343) (h!71144 s!2326)))))

(declare-fun lt!2347876 () Unit!158023)

(assert (=> b!6245250 (= lt!2347876 (lemmaFlatMapOnSingletonSet!1204 z!1189 (h!71143 zl!343) lambda!341549))))

(declare-fun lt!2347864 () (InoxSet Context!11114))

(declare-fun lt!2347857 () Context!11114)

(assert (=> b!6245250 (= lt!2347864 (derivationStepZipperUp!1347 lt!2347857 (h!71144 s!2326)))))

(declare-fun derivationStepZipperDown!1421 (Regex!16173 Context!11114 C!32616) (InoxSet Context!11114))

(assert (=> b!6245250 (= lt!2347873 (derivationStepZipperDown!1421 (h!71142 (exprs!6057 (h!71143 zl!343))) lt!2347857 (h!71144 s!2326)))))

(assert (=> b!6245250 (= lt!2347857 (Context!11115 (t!378364 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun lt!2347869 () (InoxSet Context!11114))

(assert (=> b!6245250 (= lt!2347869 (derivationStepZipperUp!1347 (Context!11115 (Cons!64694 (h!71142 (exprs!6057 (h!71143 zl!343))) (t!378364 (exprs!6057 (h!71143 zl!343))))) (h!71144 s!2326)))))

(declare-fun b!6245251 () Bool)

(declare-fun tp!1742685 () Bool)

(declare-fun tp!1742682 () Bool)

(assert (=> b!6245251 (= e!3799854 (and tp!1742685 tp!1742682))))

(declare-fun b!6245252 () Bool)

(assert (=> b!6245252 (= e!3799859 (not (matchZipper!2185 lt!2347872 (t!378366 s!2326))))))

(declare-fun b!6245253 () Bool)

(declare-fun e!3799847 () Bool)

(declare-fun tp!1742689 () Bool)

(assert (=> b!6245253 (= e!3799847 tp!1742689)))

(declare-fun b!6245254 () Bool)

(declare-fun res!2578515 () Bool)

(declare-fun e!3799862 () Bool)

(assert (=> b!6245254 (=> res!2578515 e!3799862)))

(assert (=> b!6245254 (= res!2578515 (not (= (exprs!6057 (h!71143 zl!343)) (Cons!64694 (Concat!25018 (regOne!32858 (regOne!32858 r!7292)) (regTwo!32858 (regOne!32858 r!7292))) (t!378364 (exprs!6057 (h!71143 zl!343)))))))))

(declare-fun b!6245255 () Bool)

(declare-fun e!3799866 () Bool)

(assert (=> b!6245255 (= e!3799866 (matchZipper!2185 lt!2347864 (t!378366 s!2326)))))

(declare-fun b!6245256 () Bool)

(declare-fun res!2578507 () Bool)

(assert (=> b!6245256 (=> res!2578507 e!3799857)))

(assert (=> b!6245256 (= res!2578507 (or ((_ is EmptyExpr!16173) r!7292) ((_ is EmptyLang!16173) r!7292) ((_ is ElementMatch!16173) r!7292) ((_ is Union!16173) r!7292) (not ((_ is Concat!25018) r!7292))))))

(declare-fun b!6245257 () Bool)

(declare-fun e!3799848 () Bool)

(declare-fun tp!1742687 () Bool)

(assert (=> b!6245257 (= e!3799848 tp!1742687)))

(declare-fun b!6245258 () Bool)

(declare-fun res!2578509 () Bool)

(assert (=> b!6245258 (=> (not res!2578509) (not e!3799863))))

(declare-fun toList!9957 ((InoxSet Context!11114)) List!64819)

(assert (=> b!6245258 (= res!2578509 (= (toList!9957 z!1189) zl!343))))

(declare-fun b!6245259 () Bool)

(declare-fun tp!1742683 () Bool)

(declare-fun tp!1742686 () Bool)

(assert (=> b!6245259 (= e!3799854 (and tp!1742683 tp!1742686))))

(declare-fun b!6245260 () Bool)

(assert (=> b!6245260 (= e!3799862 e!3799864)))

(declare-fun res!2578506 () Bool)

(assert (=> b!6245260 (=> res!2578506 e!3799864)))

(declare-fun zipperDepthTotal!326 (List!64819) Int)

(assert (=> b!6245260 (= res!2578506 (>= (zipperDepthTotal!326 lt!2347852) (zipperDepthTotal!326 zl!343)))))

(assert (=> b!6245260 (= lt!2347852 (Cons!64695 lt!2347849 Nil!64695))))

(declare-fun b!6245261 () Bool)

(assert (=> b!6245261 (= e!3799856 e!3799862)))

(declare-fun res!2578516 () Bool)

(assert (=> b!6245261 (=> res!2578516 e!3799862)))

(assert (=> b!6245261 (= res!2578516 e!3799860)))

(declare-fun res!2578510 () Bool)

(assert (=> b!6245261 (=> (not res!2578510) (not e!3799860))))

(assert (=> b!6245261 (= res!2578510 (not (= lt!2347848 (matchZipper!2185 lt!2347878 (t!378366 s!2326)))))))

(declare-fun e!3799855 () Bool)

(assert (=> b!6245261 (= (matchZipper!2185 lt!2347855 (t!378366 s!2326)) e!3799855)))

(declare-fun res!2578498 () Bool)

(assert (=> b!6245261 (=> res!2578498 e!3799855)))

(assert (=> b!6245261 (= res!2578498 lt!2347875)))

(declare-fun lt!2347847 () Unit!158023)

(assert (=> b!6245261 (= lt!2347847 (lemmaZipperConcatMatchesSameAsBothZippers!1004 lt!2347861 lt!2347871 (t!378366 s!2326)))))

(assert (=> b!6245261 (= (flatMap!1678 lt!2347866 lambda!341549) (derivationStepZipperUp!1347 lt!2347851 (h!71144 s!2326)))))

(declare-fun lt!2347867 () Unit!158023)

(assert (=> b!6245261 (= lt!2347867 (lemmaFlatMapOnSingletonSet!1204 lt!2347866 lt!2347851 lambda!341549))))

(declare-fun b!6245262 () Bool)

(declare-fun res!2578511 () Bool)

(assert (=> b!6245262 (=> res!2578511 e!3799857)))

(declare-fun generalisedConcat!1770 (List!64818) Regex!16173)

(assert (=> b!6245262 (= res!2578511 (not (= r!7292 (generalisedConcat!1770 (exprs!6057 (h!71143 zl!343))))))))

(declare-fun tp!1742684 () Bool)

(declare-fun b!6245263 () Bool)

(declare-fun inv!83679 (Context!11114) Bool)

(assert (=> b!6245263 (= e!3799865 (and (inv!83679 (h!71143 zl!343)) e!3799847 tp!1742684))))

(declare-fun b!6245264 () Bool)

(declare-fun Unit!158026 () Unit!158023)

(assert (=> b!6245264 (= e!3799849 Unit!158026)))

(declare-fun lt!2347877 () Unit!158023)

(assert (=> b!6245264 (= lt!2347877 (lemmaZipperConcatMatchesSameAsBothZippers!1004 lt!2347873 lt!2347864 (t!378366 s!2326)))))

(declare-fun res!2578512 () Bool)

(assert (=> b!6245264 (= res!2578512 (matchZipper!2185 lt!2347873 (t!378366 s!2326)))))

(assert (=> b!6245264 (=> res!2578512 e!3799866)))

(assert (=> b!6245264 (= (matchZipper!2185 ((_ map or) lt!2347873 lt!2347864) (t!378366 s!2326)) e!3799866)))

(declare-fun b!6245265 () Bool)

(declare-fun tp!1742681 () Bool)

(assert (=> b!6245265 (= e!3799854 tp!1742681)))

(declare-fun setElem!42458 () Context!11114)

(declare-fun tp!1742690 () Bool)

(declare-fun setNonEmpty!42458 () Bool)

(assert (=> setNonEmpty!42458 (= setRes!42458 (and tp!1742690 (inv!83679 setElem!42458) e!3799848))))

(declare-fun setRest!42458 () (InoxSet Context!11114))

(assert (=> setNonEmpty!42458 (= z!1189 ((_ map or) (store ((as const (Array Context!11114 Bool)) false) setElem!42458 true) setRest!42458))))

(declare-fun b!6245266 () Bool)

(declare-fun res!2578502 () Bool)

(assert (=> b!6245266 (=> res!2578502 e!3799862)))

(declare-fun contextDepthTotal!296 (Context!11114) Int)

(assert (=> b!6245266 (= res!2578502 (>= (contextDepthTotal!296 lt!2347849) (contextDepthTotal!296 (h!71143 zl!343))))))

(declare-fun b!6245267 () Bool)

(assert (=> b!6245267 (= e!3799864 (validRegex!7909 (generalisedConcat!1770 lt!2347856)))))

(declare-fun b!6245268 () Bool)

(assert (=> b!6245268 (= e!3799853 e!3799861)))

(declare-fun res!2578520 () Bool)

(assert (=> b!6245268 (=> res!2578520 e!3799861)))

(assert (=> b!6245268 (= res!2578520 (not (= lt!2347873 lt!2347870)))))

(assert (=> b!6245268 (= lt!2347870 ((_ map or) lt!2347861 lt!2347872))))

(assert (=> b!6245268 (= lt!2347872 (derivationStepZipperDown!1421 (regTwo!32858 (regOne!32858 r!7292)) lt!2347857 (h!71144 s!2326)))))

(assert (=> b!6245268 (= lt!2347861 (derivationStepZipperDown!1421 (regOne!32858 (regOne!32858 r!7292)) lt!2347851 (h!71144 s!2326)))))

(assert (=> b!6245268 (= lt!2347851 (Context!11115 lt!2347862))))

(assert (=> b!6245268 (= lt!2347862 (Cons!64694 (regTwo!32858 (regOne!32858 r!7292)) (t!378364 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun b!6245269 () Bool)

(assert (=> b!6245269 (= e!3799854 tp_is_empty!41599)))

(declare-fun b!6245270 () Bool)

(assert (=> b!6245270 (= e!3799851 (matchZipper!2185 lt!2347872 (t!378366 s!2326)))))

(assert (=> b!6245271 (= e!3799857 e!3799858)))

(declare-fun res!2578504 () Bool)

(assert (=> b!6245271 (=> res!2578504 e!3799858)))

(declare-fun lt!2347863 () Bool)

(assert (=> b!6245271 (= res!2578504 (or (not (= lt!2347860 lt!2347863)) ((_ is Nil!64696) s!2326)))))

(declare-fun Exists!3243 (Int) Bool)

(assert (=> b!6245271 (= (Exists!3243 lambda!341547) (Exists!3243 lambda!341548))))

(declare-fun lt!2347854 () Unit!158023)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1780 (Regex!16173 Regex!16173 List!64820) Unit!158023)

(assert (=> b!6245271 (= lt!2347854 (lemmaExistCutMatchRandMatchRSpecEquivalent!1780 (regOne!32858 r!7292) (regTwo!32858 r!7292) s!2326))))

(assert (=> b!6245271 (= lt!2347863 (Exists!3243 lambda!341547))))

(declare-datatypes ((tuple2!66304 0))(
  ( (tuple2!66305 (_1!36455 List!64820) (_2!36455 List!64820)) )
))
(declare-datatypes ((Option!16064 0))(
  ( (None!16063) (Some!16063 (v!52214 tuple2!66304)) )
))
(declare-fun isDefined!12767 (Option!16064) Bool)

(declare-fun findConcatSeparation!2478 (Regex!16173 Regex!16173 List!64820 List!64820 List!64820) Option!16064)

(assert (=> b!6245271 (= lt!2347863 (isDefined!12767 (findConcatSeparation!2478 (regOne!32858 r!7292) (regTwo!32858 r!7292) Nil!64696 s!2326 s!2326)))))

(declare-fun lt!2347858 () Unit!158023)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2242 (Regex!16173 Regex!16173 List!64820) Unit!158023)

(assert (=> b!6245271 (= lt!2347858 (lemmaFindConcatSeparationEquivalentToExists!2242 (regOne!32858 r!7292) (regTwo!32858 r!7292) s!2326))))

(declare-fun b!6245272 () Bool)

(assert (=> b!6245272 (= e!3799855 (matchZipper!2185 lt!2347871 (t!378366 s!2326)))))

(declare-fun setIsEmpty!42458 () Bool)

(assert (=> setIsEmpty!42458 setRes!42458))

(declare-fun b!6245273 () Bool)

(declare-fun res!2578522 () Bool)

(assert (=> b!6245273 (=> res!2578522 e!3799857)))

(declare-fun isEmpty!36715 (List!64819) Bool)

(assert (=> b!6245273 (= res!2578522 (not (isEmpty!36715 (t!378365 zl!343))))))

(assert (= (and start!621650 res!2578514) b!6245258))

(assert (= (and b!6245258 res!2578509) b!6245243))

(assert (= (and b!6245243 res!2578517) b!6245241))

(assert (= (and b!6245241 (not res!2578505)) b!6245273))

(assert (= (and b!6245273 (not res!2578522)) b!6245262))

(assert (= (and b!6245262 (not res!2578511)) b!6245239))

(assert (= (and b!6245239 (not res!2578518)) b!6245244))

(assert (= (and b!6245244 (not res!2578519)) b!6245256))

(assert (= (and b!6245256 (not res!2578507)) b!6245271))

(assert (= (and b!6245271 (not res!2578504)) b!6245238))

(assert (= (and b!6245238 (not res!2578508)) b!6245250))

(assert (= (and b!6245250 c!1129829) b!6245264))

(assert (= (and b!6245250 (not c!1129829)) b!6245242))

(assert (= (and b!6245264 (not res!2578512)) b!6245255))

(assert (= (and b!6245250 (not res!2578521)) b!6245246))

(assert (= (and b!6245246 (not res!2578513)) b!6245268))

(assert (= (and b!6245268 (not res!2578520)) b!6245240))

(assert (= (and b!6245240 (not res!2578503)) b!6245270))

(assert (= (and b!6245240 res!2578500) b!6245252))

(assert (= (and b!6245240 (not res!2578499)) b!6245245))

(assert (= (and b!6245245 (not res!2578497)) b!6245261))

(assert (= (and b!6245261 (not res!2578498)) b!6245272))

(assert (= (and b!6245261 res!2578510) b!6245248))

(assert (= (and b!6245261 (not res!2578516)) b!6245254))

(assert (= (and b!6245254 (not res!2578515)) b!6245266))

(assert (= (and b!6245266 (not res!2578502)) b!6245260))

(assert (= (and b!6245260 (not res!2578506)) b!6245247))

(assert (= (and b!6245247 (not res!2578501)) b!6245267))

(assert (= (and start!621650 ((_ is ElementMatch!16173) r!7292)) b!6245269))

(assert (= (and start!621650 ((_ is Concat!25018) r!7292)) b!6245251))

(assert (= (and start!621650 ((_ is Star!16173) r!7292)) b!6245265))

(assert (= (and start!621650 ((_ is Union!16173) r!7292)) b!6245259))

(assert (= (and start!621650 condSetEmpty!42458) setIsEmpty!42458))

(assert (= (and start!621650 (not condSetEmpty!42458)) setNonEmpty!42458))

(assert (= setNonEmpty!42458 b!6245257))

(assert (= b!6245263 b!6245253))

(assert (= (and start!621650 ((_ is Cons!64695) zl!343)) b!6245263))

(assert (= (and start!621650 ((_ is Cons!64696) s!2326)) b!6245249))

(declare-fun m!7069208 () Bool)

(assert (=> start!621650 m!7069208))

(declare-fun m!7069210 () Bool)

(assert (=> b!6245267 m!7069210))

(assert (=> b!6245267 m!7069210))

(declare-fun m!7069212 () Bool)

(assert (=> b!6245267 m!7069212))

(declare-fun m!7069214 () Bool)

(assert (=> b!6245247 m!7069214))

(declare-fun m!7069216 () Bool)

(assert (=> b!6245247 m!7069216))

(declare-fun m!7069218 () Bool)

(assert (=> b!6245243 m!7069218))

(declare-fun m!7069220 () Bool)

(assert (=> b!6245262 m!7069220))

(declare-fun m!7069222 () Bool)

(assert (=> b!6245252 m!7069222))

(declare-fun m!7069224 () Bool)

(assert (=> b!6245245 m!7069224))

(declare-fun m!7069226 () Bool)

(assert (=> b!6245245 m!7069226))

(declare-fun m!7069228 () Bool)

(assert (=> b!6245245 m!7069228))

(declare-fun m!7069230 () Bool)

(assert (=> b!6245245 m!7069230))

(declare-fun m!7069232 () Bool)

(assert (=> b!6245245 m!7069232))

(declare-fun m!7069234 () Bool)

(assert (=> b!6245245 m!7069234))

(declare-fun m!7069236 () Bool)

(assert (=> b!6245245 m!7069236))

(declare-fun m!7069238 () Bool)

(assert (=> b!6245244 m!7069238))

(assert (=> b!6245244 m!7069238))

(declare-fun m!7069240 () Bool)

(assert (=> b!6245244 m!7069240))

(assert (=> b!6245270 m!7069222))

(declare-fun m!7069242 () Bool)

(assert (=> b!6245263 m!7069242))

(declare-fun m!7069244 () Bool)

(assert (=> b!6245268 m!7069244))

(declare-fun m!7069246 () Bool)

(assert (=> b!6245268 m!7069246))

(declare-fun m!7069248 () Bool)

(assert (=> b!6245246 m!7069248))

(declare-fun m!7069250 () Bool)

(assert (=> b!6245273 m!7069250))

(declare-fun m!7069252 () Bool)

(assert (=> b!6245260 m!7069252))

(declare-fun m!7069254 () Bool)

(assert (=> b!6245260 m!7069254))

(declare-fun m!7069256 () Bool)

(assert (=> b!6245264 m!7069256))

(declare-fun m!7069258 () Bool)

(assert (=> b!6245264 m!7069258))

(declare-fun m!7069260 () Bool)

(assert (=> b!6245264 m!7069260))

(declare-fun m!7069262 () Bool)

(assert (=> b!6245272 m!7069262))

(declare-fun m!7069264 () Bool)

(assert (=> b!6245248 m!7069264))

(assert (=> b!6245248 m!7069264))

(declare-fun m!7069266 () Bool)

(assert (=> b!6245248 m!7069266))

(assert (=> b!6245240 m!7069258))

(declare-fun m!7069268 () Bool)

(assert (=> b!6245240 m!7069268))

(declare-fun m!7069270 () Bool)

(assert (=> b!6245240 m!7069270))

(declare-fun m!7069272 () Bool)

(assert (=> b!6245240 m!7069272))

(declare-fun m!7069274 () Bool)

(assert (=> b!6245241 m!7069274))

(declare-fun m!7069276 () Bool)

(assert (=> b!6245241 m!7069276))

(declare-fun m!7069278 () Bool)

(assert (=> b!6245241 m!7069278))

(declare-fun m!7069280 () Bool)

(assert (=> b!6245266 m!7069280))

(declare-fun m!7069282 () Bool)

(assert (=> b!6245266 m!7069282))

(declare-fun m!7069284 () Bool)

(assert (=> b!6245250 m!7069284))

(declare-fun m!7069286 () Bool)

(assert (=> b!6245250 m!7069286))

(declare-fun m!7069288 () Bool)

(assert (=> b!6245250 m!7069288))

(declare-fun m!7069290 () Bool)

(assert (=> b!6245250 m!7069290))

(declare-fun m!7069292 () Bool)

(assert (=> b!6245250 m!7069292))

(declare-fun m!7069294 () Bool)

(assert (=> b!6245250 m!7069294))

(declare-fun m!7069296 () Bool)

(assert (=> b!6245250 m!7069296))

(declare-fun m!7069298 () Bool)

(assert (=> b!6245238 m!7069298))

(assert (=> b!6245261 m!7069224))

(declare-fun m!7069300 () Bool)

(assert (=> b!6245261 m!7069300))

(declare-fun m!7069302 () Bool)

(assert (=> b!6245261 m!7069302))

(declare-fun m!7069304 () Bool)

(assert (=> b!6245261 m!7069304))

(declare-fun m!7069306 () Bool)

(assert (=> b!6245261 m!7069306))

(declare-fun m!7069308 () Bool)

(assert (=> b!6245261 m!7069308))

(declare-fun m!7069310 () Bool)

(assert (=> setNonEmpty!42458 m!7069310))

(declare-fun m!7069312 () Bool)

(assert (=> b!6245255 m!7069312))

(declare-fun m!7069314 () Bool)

(assert (=> b!6245258 m!7069314))

(declare-fun m!7069316 () Bool)

(assert (=> b!6245271 m!7069316))

(declare-fun m!7069318 () Bool)

(assert (=> b!6245271 m!7069318))

(declare-fun m!7069320 () Bool)

(assert (=> b!6245271 m!7069320))

(declare-fun m!7069322 () Bool)

(assert (=> b!6245271 m!7069322))

(assert (=> b!6245271 m!7069322))

(declare-fun m!7069324 () Bool)

(assert (=> b!6245271 m!7069324))

(assert (=> b!6245271 m!7069318))

(declare-fun m!7069326 () Bool)

(assert (=> b!6245271 m!7069326))

(check-sat (not b!6245248) (not b!6245261) (not b!6245252) (not b!6245255) (not b!6245243) (not start!621650) (not b!6245259) (not b!6245271) (not b!6245249) (not b!6245246) (not b!6245263) (not b!6245257) (not b!6245266) (not b!6245267) (not setNonEmpty!42458) (not b!6245273) (not b!6245270) (not b!6245245) (not b!6245272) (not b!6245264) (not b!6245247) (not b!6245258) (not b!6245253) (not b!6245240) (not b!6245265) (not b!6245244) (not b!6245251) (not b!6245241) (not b!6245268) (not b!6245262) (not b!6245238) (not b!6245250) tp_is_empty!41599 (not b!6245260))
(check-sat)
(get-model)

(declare-fun d!1958800 () Bool)

(declare-fun e!3800092 () Bool)

(assert (=> d!1958800 e!3800092))

(declare-fun res!2578653 () Bool)

(assert (=> d!1958800 (=> (not res!2578653) (not e!3800092))))

(declare-fun lt!2347945 () List!64819)

(declare-fun noDuplicate!2009 (List!64819) Bool)

(assert (=> d!1958800 (= res!2578653 (noDuplicate!2009 lt!2347945))))

(declare-fun choose!46364 ((InoxSet Context!11114)) List!64819)

(assert (=> d!1958800 (= lt!2347945 (choose!46364 z!1189))))

(assert (=> d!1958800 (= (toList!9957 z!1189) lt!2347945)))

(declare-fun b!6245664 () Bool)

(declare-fun content!12136 (List!64819) (InoxSet Context!11114))

(assert (=> b!6245664 (= e!3800092 (= (content!12136 lt!2347945) z!1189))))

(assert (= (and d!1958800 res!2578653) b!6245664))

(declare-fun m!7069662 () Bool)

(assert (=> d!1958800 m!7069662))

(declare-fun m!7069664 () Bool)

(assert (=> d!1958800 m!7069664))

(declare-fun m!7069666 () Bool)

(assert (=> b!6245664 m!7069666))

(assert (=> b!6245258 d!1958800))

(declare-fun d!1958810 () Bool)

(declare-fun res!2578668 () Bool)

(declare-fun e!3800120 () Bool)

(assert (=> d!1958810 (=> res!2578668 e!3800120)))

(assert (=> d!1958810 (= res!2578668 ((_ is ElementMatch!16173) r!7292))))

(assert (=> d!1958810 (= (validRegex!7909 r!7292) e!3800120)))

(declare-fun b!6245702 () Bool)

(declare-fun e!3800116 () Bool)

(declare-fun e!3800122 () Bool)

(assert (=> b!6245702 (= e!3800116 e!3800122)))

(declare-fun res!2578664 () Bool)

(assert (=> b!6245702 (=> (not res!2578664) (not e!3800122))))

(declare-fun call!526289 () Bool)

(assert (=> b!6245702 (= res!2578664 call!526289)))

(declare-fun b!6245703 () Bool)

(declare-fun call!526288 () Bool)

(assert (=> b!6245703 (= e!3800122 call!526288)))

(declare-fun b!6245704 () Bool)

(declare-fun e!3800119 () Bool)

(declare-fun e!3800117 () Bool)

(assert (=> b!6245704 (= e!3800119 e!3800117)))

(declare-fun c!1129974 () Bool)

(assert (=> b!6245704 (= c!1129974 ((_ is Union!16173) r!7292))))

(declare-fun b!6245705 () Bool)

(declare-fun res!2578667 () Bool)

(declare-fun e!3800118 () Bool)

(assert (=> b!6245705 (=> (not res!2578667) (not e!3800118))))

(assert (=> b!6245705 (= res!2578667 call!526289)))

(assert (=> b!6245705 (= e!3800117 e!3800118)))

(declare-fun bm!526282 () Bool)

(assert (=> bm!526282 (= call!526289 (validRegex!7909 (ite c!1129974 (regOne!32859 r!7292) (regOne!32858 r!7292))))))

(declare-fun b!6245706 () Bool)

(declare-fun e!3800121 () Bool)

(declare-fun call!526287 () Bool)

(assert (=> b!6245706 (= e!3800121 call!526287)))

(declare-fun c!1129973 () Bool)

(declare-fun bm!526283 () Bool)

(assert (=> bm!526283 (= call!526287 (validRegex!7909 (ite c!1129973 (reg!16502 r!7292) (ite c!1129974 (regTwo!32859 r!7292) (regTwo!32858 r!7292)))))))

(declare-fun bm!526284 () Bool)

(assert (=> bm!526284 (= call!526288 call!526287)))

(declare-fun b!6245707 () Bool)

(assert (=> b!6245707 (= e!3800120 e!3800119)))

(assert (=> b!6245707 (= c!1129973 ((_ is Star!16173) r!7292))))

(declare-fun b!6245708 () Bool)

(declare-fun res!2578666 () Bool)

(assert (=> b!6245708 (=> res!2578666 e!3800116)))

(assert (=> b!6245708 (= res!2578666 (not ((_ is Concat!25018) r!7292)))))

(assert (=> b!6245708 (= e!3800117 e!3800116)))

(declare-fun b!6245709 () Bool)

(assert (=> b!6245709 (= e!3800119 e!3800121)))

(declare-fun res!2578665 () Bool)

(assert (=> b!6245709 (= res!2578665 (not (nullable!6166 (reg!16502 r!7292))))))

(assert (=> b!6245709 (=> (not res!2578665) (not e!3800121))))

(declare-fun b!6245710 () Bool)

(assert (=> b!6245710 (= e!3800118 call!526288)))

(assert (= (and d!1958810 (not res!2578668)) b!6245707))

(assert (= (and b!6245707 c!1129973) b!6245709))

(assert (= (and b!6245707 (not c!1129973)) b!6245704))

(assert (= (and b!6245709 res!2578665) b!6245706))

(assert (= (and b!6245704 c!1129974) b!6245705))

(assert (= (and b!6245704 (not c!1129974)) b!6245708))

(assert (= (and b!6245705 res!2578667) b!6245710))

(assert (= (and b!6245708 (not res!2578666)) b!6245702))

(assert (= (and b!6245702 res!2578664) b!6245703))

(assert (= (or b!6245710 b!6245703) bm!526284))

(assert (= (or b!6245705 b!6245702) bm!526282))

(assert (= (or b!6245706 bm!526284) bm!526283))

(declare-fun m!7069680 () Bool)

(assert (=> bm!526282 m!7069680))

(declare-fun m!7069682 () Bool)

(assert (=> bm!526283 m!7069682))

(declare-fun m!7069684 () Bool)

(assert (=> b!6245709 m!7069684))

(assert (=> start!621650 d!1958810))

(declare-fun d!1958816 () Bool)

(assert (=> d!1958816 (= (isEmpty!36715 (t!378365 zl!343)) ((_ is Nil!64695) (t!378365 zl!343)))))

(assert (=> b!6245273 d!1958816))

(declare-fun d!1958818 () Bool)

(declare-fun c!1129977 () Bool)

(declare-fun isEmpty!36718 (List!64820) Bool)

(assert (=> d!1958818 (= c!1129977 (isEmpty!36718 (t!378366 s!2326)))))

(declare-fun e!3800143 () Bool)

(assert (=> d!1958818 (= (matchZipper!2185 lt!2347864 (t!378366 s!2326)) e!3800143)))

(declare-fun b!6245758 () Bool)

(declare-fun nullableZipper!1945 ((InoxSet Context!11114)) Bool)

(assert (=> b!6245758 (= e!3800143 (nullableZipper!1945 lt!2347864))))

(declare-fun b!6245759 () Bool)

(declare-fun head!12849 (List!64820) C!32616)

(declare-fun tail!11934 (List!64820) List!64820)

(assert (=> b!6245759 (= e!3800143 (matchZipper!2185 (derivationStepZipper!2139 lt!2347864 (head!12849 (t!378366 s!2326))) (tail!11934 (t!378366 s!2326))))))

(assert (= (and d!1958818 c!1129977) b!6245758))

(assert (= (and d!1958818 (not c!1129977)) b!6245759))

(declare-fun m!7069688 () Bool)

(assert (=> d!1958818 m!7069688))

(declare-fun m!7069690 () Bool)

(assert (=> b!6245758 m!7069690))

(declare-fun m!7069692 () Bool)

(assert (=> b!6245759 m!7069692))

(assert (=> b!6245759 m!7069692))

(declare-fun m!7069694 () Bool)

(assert (=> b!6245759 m!7069694))

(declare-fun m!7069696 () Bool)

(assert (=> b!6245759 m!7069696))

(assert (=> b!6245759 m!7069694))

(assert (=> b!6245759 m!7069696))

(declare-fun m!7069698 () Bool)

(assert (=> b!6245759 m!7069698))

(assert (=> b!6245255 d!1958818))

(declare-fun d!1958826 () Bool)

(declare-fun choose!46365 (Int) Bool)

(assert (=> d!1958826 (= (Exists!3243 lambda!341548) (choose!46365 lambda!341548))))

(declare-fun bs!1552350 () Bool)

(assert (= bs!1552350 d!1958826))

(declare-fun m!7069700 () Bool)

(assert (=> bs!1552350 m!7069700))

(assert (=> b!6245271 d!1958826))

(declare-fun b!6245778 () Bool)

(declare-fun e!3800158 () Option!16064)

(assert (=> b!6245778 (= e!3800158 (Some!16063 (tuple2!66305 Nil!64696 s!2326)))))

(declare-fun b!6245779 () Bool)

(declare-fun e!3800157 () Option!16064)

(assert (=> b!6245779 (= e!3800157 None!16063)))

(declare-fun b!6245780 () Bool)

(declare-fun e!3800156 () Bool)

(declare-fun lt!2347961 () Option!16064)

(assert (=> b!6245780 (= e!3800156 (not (isDefined!12767 lt!2347961)))))

(declare-fun b!6245781 () Bool)

(declare-fun lt!2347959 () Unit!158023)

(declare-fun lt!2347960 () Unit!158023)

(assert (=> b!6245781 (= lt!2347959 lt!2347960)))

(declare-fun ++!14249 (List!64820 List!64820) List!64820)

(assert (=> b!6245781 (= (++!14249 (++!14249 Nil!64696 (Cons!64696 (h!71144 s!2326) Nil!64696)) (t!378366 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2344 (List!64820 C!32616 List!64820 List!64820) Unit!158023)

(assert (=> b!6245781 (= lt!2347960 (lemmaMoveElementToOtherListKeepsConcatEq!2344 Nil!64696 (h!71144 s!2326) (t!378366 s!2326) s!2326))))

(assert (=> b!6245781 (= e!3800157 (findConcatSeparation!2478 (regOne!32858 r!7292) (regTwo!32858 r!7292) (++!14249 Nil!64696 (Cons!64696 (h!71144 s!2326) Nil!64696)) (t!378366 s!2326) s!2326))))

(declare-fun b!6245782 () Bool)

(declare-fun res!2578683 () Bool)

(declare-fun e!3800154 () Bool)

(assert (=> b!6245782 (=> (not res!2578683) (not e!3800154))))

(declare-fun get!22351 (Option!16064) tuple2!66304)

(assert (=> b!6245782 (= res!2578683 (matchR!8356 (regOne!32858 r!7292) (_1!36455 (get!22351 lt!2347961))))))

(declare-fun d!1958828 () Bool)

(assert (=> d!1958828 e!3800156))

(declare-fun res!2578680 () Bool)

(assert (=> d!1958828 (=> res!2578680 e!3800156)))

(assert (=> d!1958828 (= res!2578680 e!3800154)))

(declare-fun res!2578682 () Bool)

(assert (=> d!1958828 (=> (not res!2578682) (not e!3800154))))

(assert (=> d!1958828 (= res!2578682 (isDefined!12767 lt!2347961))))

(assert (=> d!1958828 (= lt!2347961 e!3800158)))

(declare-fun c!1129982 () Bool)

(declare-fun e!3800155 () Bool)

(assert (=> d!1958828 (= c!1129982 e!3800155)))

(declare-fun res!2578679 () Bool)

(assert (=> d!1958828 (=> (not res!2578679) (not e!3800155))))

(assert (=> d!1958828 (= res!2578679 (matchR!8356 (regOne!32858 r!7292) Nil!64696))))

(assert (=> d!1958828 (validRegex!7909 (regOne!32858 r!7292))))

(assert (=> d!1958828 (= (findConcatSeparation!2478 (regOne!32858 r!7292) (regTwo!32858 r!7292) Nil!64696 s!2326 s!2326) lt!2347961)))

(declare-fun b!6245783 () Bool)

(declare-fun res!2578681 () Bool)

(assert (=> b!6245783 (=> (not res!2578681) (not e!3800154))))

(assert (=> b!6245783 (= res!2578681 (matchR!8356 (regTwo!32858 r!7292) (_2!36455 (get!22351 lt!2347961))))))

(declare-fun b!6245784 () Bool)

(assert (=> b!6245784 (= e!3800158 e!3800157)))

(declare-fun c!1129983 () Bool)

(assert (=> b!6245784 (= c!1129983 ((_ is Nil!64696) s!2326))))

(declare-fun b!6245785 () Bool)

(assert (=> b!6245785 (= e!3800155 (matchR!8356 (regTwo!32858 r!7292) s!2326))))

(declare-fun b!6245786 () Bool)

(assert (=> b!6245786 (= e!3800154 (= (++!14249 (_1!36455 (get!22351 lt!2347961)) (_2!36455 (get!22351 lt!2347961))) s!2326))))

(assert (= (and d!1958828 res!2578679) b!6245785))

(assert (= (and d!1958828 c!1129982) b!6245778))

(assert (= (and d!1958828 (not c!1129982)) b!6245784))

(assert (= (and b!6245784 c!1129983) b!6245779))

(assert (= (and b!6245784 (not c!1129983)) b!6245781))

(assert (= (and d!1958828 res!2578682) b!6245782))

(assert (= (and b!6245782 res!2578683) b!6245783))

(assert (= (and b!6245783 res!2578681) b!6245786))

(assert (= (and d!1958828 (not res!2578680)) b!6245780))

(declare-fun m!7069702 () Bool)

(assert (=> b!6245780 m!7069702))

(declare-fun m!7069704 () Bool)

(assert (=> b!6245785 m!7069704))

(declare-fun m!7069706 () Bool)

(assert (=> b!6245782 m!7069706))

(declare-fun m!7069708 () Bool)

(assert (=> b!6245782 m!7069708))

(assert (=> b!6245783 m!7069706))

(declare-fun m!7069710 () Bool)

(assert (=> b!6245783 m!7069710))

(assert (=> b!6245786 m!7069706))

(declare-fun m!7069712 () Bool)

(assert (=> b!6245786 m!7069712))

(declare-fun m!7069714 () Bool)

(assert (=> b!6245781 m!7069714))

(assert (=> b!6245781 m!7069714))

(declare-fun m!7069716 () Bool)

(assert (=> b!6245781 m!7069716))

(declare-fun m!7069718 () Bool)

(assert (=> b!6245781 m!7069718))

(assert (=> b!6245781 m!7069714))

(declare-fun m!7069720 () Bool)

(assert (=> b!6245781 m!7069720))

(assert (=> d!1958828 m!7069702))

(declare-fun m!7069722 () Bool)

(assert (=> d!1958828 m!7069722))

(declare-fun m!7069724 () Bool)

(assert (=> d!1958828 m!7069724))

(assert (=> b!6245271 d!1958828))

(declare-fun d!1958830 () Bool)

(assert (=> d!1958830 (= (Exists!3243 lambda!341547) (choose!46365 lambda!341547))))

(declare-fun bs!1552351 () Bool)

(assert (= bs!1552351 d!1958830))

(declare-fun m!7069726 () Bool)

(assert (=> bs!1552351 m!7069726))

(assert (=> b!6245271 d!1958830))

(declare-fun bs!1552352 () Bool)

(declare-fun d!1958832 () Bool)

(assert (= bs!1552352 (and d!1958832 b!6245271)))

(declare-fun lambda!341597 () Int)

(assert (=> bs!1552352 (= lambda!341597 lambda!341547)))

(assert (=> bs!1552352 (not (= lambda!341597 lambda!341548))))

(assert (=> d!1958832 true))

(assert (=> d!1958832 true))

(assert (=> d!1958832 true))

(assert (=> d!1958832 (= (isDefined!12767 (findConcatSeparation!2478 (regOne!32858 r!7292) (regTwo!32858 r!7292) Nil!64696 s!2326 s!2326)) (Exists!3243 lambda!341597))))

(declare-fun lt!2347964 () Unit!158023)

(declare-fun choose!46366 (Regex!16173 Regex!16173 List!64820) Unit!158023)

(assert (=> d!1958832 (= lt!2347964 (choose!46366 (regOne!32858 r!7292) (regTwo!32858 r!7292) s!2326))))

(assert (=> d!1958832 (validRegex!7909 (regOne!32858 r!7292))))

(assert (=> d!1958832 (= (lemmaFindConcatSeparationEquivalentToExists!2242 (regOne!32858 r!7292) (regTwo!32858 r!7292) s!2326) lt!2347964)))

(declare-fun bs!1552353 () Bool)

(assert (= bs!1552353 d!1958832))

(declare-fun m!7069728 () Bool)

(assert (=> bs!1552353 m!7069728))

(declare-fun m!7069730 () Bool)

(assert (=> bs!1552353 m!7069730))

(assert (=> bs!1552353 m!7069724))

(assert (=> bs!1552353 m!7069318))

(assert (=> bs!1552353 m!7069320))

(assert (=> bs!1552353 m!7069318))

(assert (=> b!6245271 d!1958832))

(declare-fun bs!1552354 () Bool)

(declare-fun d!1958834 () Bool)

(assert (= bs!1552354 (and d!1958834 b!6245271)))

(declare-fun lambda!341602 () Int)

(assert (=> bs!1552354 (= lambda!341602 lambda!341547)))

(assert (=> bs!1552354 (not (= lambda!341602 lambda!341548))))

(declare-fun bs!1552355 () Bool)

(assert (= bs!1552355 (and d!1958834 d!1958832)))

(assert (=> bs!1552355 (= lambda!341602 lambda!341597)))

(assert (=> d!1958834 true))

(assert (=> d!1958834 true))

(assert (=> d!1958834 true))

(declare-fun lambda!341603 () Int)

(assert (=> bs!1552354 (not (= lambda!341603 lambda!341547))))

(assert (=> bs!1552354 (= lambda!341603 lambda!341548)))

(assert (=> bs!1552355 (not (= lambda!341603 lambda!341597))))

(declare-fun bs!1552356 () Bool)

(assert (= bs!1552356 d!1958834))

(assert (=> bs!1552356 (not (= lambda!341603 lambda!341602))))

(assert (=> d!1958834 true))

(assert (=> d!1958834 true))

(assert (=> d!1958834 true))

(assert (=> d!1958834 (= (Exists!3243 lambda!341602) (Exists!3243 lambda!341603))))

(declare-fun lt!2347967 () Unit!158023)

(declare-fun choose!46367 (Regex!16173 Regex!16173 List!64820) Unit!158023)

(assert (=> d!1958834 (= lt!2347967 (choose!46367 (regOne!32858 r!7292) (regTwo!32858 r!7292) s!2326))))

(assert (=> d!1958834 (validRegex!7909 (regOne!32858 r!7292))))

(assert (=> d!1958834 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1780 (regOne!32858 r!7292) (regTwo!32858 r!7292) s!2326) lt!2347967)))

(declare-fun m!7069732 () Bool)

(assert (=> bs!1552356 m!7069732))

(declare-fun m!7069734 () Bool)

(assert (=> bs!1552356 m!7069734))

(declare-fun m!7069736 () Bool)

(assert (=> bs!1552356 m!7069736))

(assert (=> bs!1552356 m!7069724))

(assert (=> b!6245271 d!1958834))

(declare-fun d!1958836 () Bool)

(declare-fun isEmpty!36719 (Option!16064) Bool)

(assert (=> d!1958836 (= (isDefined!12767 (findConcatSeparation!2478 (regOne!32858 r!7292) (regTwo!32858 r!7292) Nil!64696 s!2326 s!2326)) (not (isEmpty!36719 (findConcatSeparation!2478 (regOne!32858 r!7292) (regTwo!32858 r!7292) Nil!64696 s!2326 s!2326))))))

(declare-fun bs!1552357 () Bool)

(assert (= bs!1552357 d!1958836))

(assert (=> bs!1552357 m!7069318))

(declare-fun m!7069738 () Bool)

(assert (=> bs!1552357 m!7069738))

(assert (=> b!6245271 d!1958836))

(declare-fun d!1958838 () Bool)

(declare-fun c!1129984 () Bool)

(assert (=> d!1958838 (= c!1129984 (isEmpty!36718 (t!378366 s!2326)))))

(declare-fun e!3800165 () Bool)

(assert (=> d!1958838 (= (matchZipper!2185 lt!2347871 (t!378366 s!2326)) e!3800165)))

(declare-fun b!6245799 () Bool)

(assert (=> b!6245799 (= e!3800165 (nullableZipper!1945 lt!2347871))))

(declare-fun b!6245800 () Bool)

(assert (=> b!6245800 (= e!3800165 (matchZipper!2185 (derivationStepZipper!2139 lt!2347871 (head!12849 (t!378366 s!2326))) (tail!11934 (t!378366 s!2326))))))

(assert (= (and d!1958838 c!1129984) b!6245799))

(assert (= (and d!1958838 (not c!1129984)) b!6245800))

(assert (=> d!1958838 m!7069688))

(declare-fun m!7069740 () Bool)

(assert (=> b!6245799 m!7069740))

(assert (=> b!6245800 m!7069692))

(assert (=> b!6245800 m!7069692))

(declare-fun m!7069742 () Bool)

(assert (=> b!6245800 m!7069742))

(assert (=> b!6245800 m!7069696))

(assert (=> b!6245800 m!7069742))

(assert (=> b!6245800 m!7069696))

(declare-fun m!7069744 () Bool)

(assert (=> b!6245800 m!7069744))

(assert (=> b!6245272 d!1958838))

(declare-fun d!1958840 () Bool)

(declare-fun c!1129985 () Bool)

(assert (=> d!1958840 (= c!1129985 (isEmpty!36718 (t!378366 s!2326)))))

(declare-fun e!3800166 () Bool)

(assert (=> d!1958840 (= (matchZipper!2185 lt!2347872 (t!378366 s!2326)) e!3800166)))

(declare-fun b!6245801 () Bool)

(assert (=> b!6245801 (= e!3800166 (nullableZipper!1945 lt!2347872))))

(declare-fun b!6245802 () Bool)

(assert (=> b!6245802 (= e!3800166 (matchZipper!2185 (derivationStepZipper!2139 lt!2347872 (head!12849 (t!378366 s!2326))) (tail!11934 (t!378366 s!2326))))))

(assert (= (and d!1958840 c!1129985) b!6245801))

(assert (= (and d!1958840 (not c!1129985)) b!6245802))

(assert (=> d!1958840 m!7069688))

(declare-fun m!7069746 () Bool)

(assert (=> b!6245801 m!7069746))

(assert (=> b!6245802 m!7069692))

(assert (=> b!6245802 m!7069692))

(declare-fun m!7069748 () Bool)

(assert (=> b!6245802 m!7069748))

(assert (=> b!6245802 m!7069696))

(assert (=> b!6245802 m!7069748))

(assert (=> b!6245802 m!7069696))

(declare-fun m!7069750 () Bool)

(assert (=> b!6245802 m!7069750))

(assert (=> b!6245252 d!1958840))

(declare-fun b!6245825 () Bool)

(declare-fun e!3800180 () (InoxSet Context!11114))

(assert (=> b!6245825 (= e!3800180 (store ((as const (Array Context!11114 Bool)) false) lt!2347857 true))))

(declare-fun b!6245826 () Bool)

(declare-fun e!3800184 () (InoxSet Context!11114))

(declare-fun call!526304 () (InoxSet Context!11114))

(declare-fun call!526303 () (InoxSet Context!11114))

(assert (=> b!6245826 (= e!3800184 ((_ map or) call!526304 call!526303))))

(declare-fun c!1129999 () Bool)

(declare-fun c!1130000 () Bool)

(declare-fun call!526307 () List!64818)

(declare-fun bm!526297 () Bool)

(declare-fun c!1129998 () Bool)

(assert (=> bm!526297 (= call!526303 (derivationStepZipperDown!1421 (ite c!1129999 (regTwo!32859 (regTwo!32858 (regOne!32858 r!7292))) (ite c!1129998 (regTwo!32858 (regTwo!32858 (regOne!32858 r!7292))) (ite c!1130000 (regOne!32858 (regTwo!32858 (regOne!32858 r!7292))) (reg!16502 (regTwo!32858 (regOne!32858 r!7292)))))) (ite (or c!1129999 c!1129998) lt!2347857 (Context!11115 call!526307)) (h!71144 s!2326)))))

(declare-fun b!6245827 () Bool)

(declare-fun e!3800183 () (InoxSet Context!11114))

(assert (=> b!6245827 (= e!3800183 ((as const (Array Context!11114 Bool)) false))))

(declare-fun b!6245828 () Bool)

(declare-fun c!1129996 () Bool)

(assert (=> b!6245828 (= c!1129996 ((_ is Star!16173) (regTwo!32858 (regOne!32858 r!7292))))))

(declare-fun e!3800181 () (InoxSet Context!11114))

(assert (=> b!6245828 (= e!3800181 e!3800183)))

(declare-fun d!1958842 () Bool)

(declare-fun c!1129997 () Bool)

(assert (=> d!1958842 (= c!1129997 (and ((_ is ElementMatch!16173) (regTwo!32858 (regOne!32858 r!7292))) (= (c!1129830 (regTwo!32858 (regOne!32858 r!7292))) (h!71144 s!2326))))))

(assert (=> d!1958842 (= (derivationStepZipperDown!1421 (regTwo!32858 (regOne!32858 r!7292)) lt!2347857 (h!71144 s!2326)) e!3800180)))

(declare-fun b!6245829 () Bool)

(declare-fun e!3800182 () Bool)

(assert (=> b!6245829 (= e!3800182 (nullable!6166 (regOne!32858 (regTwo!32858 (regOne!32858 r!7292)))))))

(declare-fun b!6245830 () Bool)

(assert (=> b!6245830 (= c!1129998 e!3800182)))

(declare-fun res!2578698 () Bool)

(assert (=> b!6245830 (=> (not res!2578698) (not e!3800182))))

(assert (=> b!6245830 (= res!2578698 ((_ is Concat!25018) (regTwo!32858 (regOne!32858 r!7292))))))

(declare-fun e!3800179 () (InoxSet Context!11114))

(assert (=> b!6245830 (= e!3800184 e!3800179)))

(declare-fun b!6245831 () Bool)

(declare-fun call!526302 () (InoxSet Context!11114))

(assert (=> b!6245831 (= e!3800181 call!526302)))

(declare-fun bm!526298 () Bool)

(declare-fun call!526305 () (InoxSet Context!11114))

(assert (=> bm!526298 (= call!526302 call!526305)))

(declare-fun bm!526299 () Bool)

(declare-fun call!526306 () List!64818)

(declare-fun $colon$colon!2040 (List!64818 Regex!16173) List!64818)

(assert (=> bm!526299 (= call!526306 ($colon$colon!2040 (exprs!6057 lt!2347857) (ite (or c!1129998 c!1130000) (regTwo!32858 (regTwo!32858 (regOne!32858 r!7292))) (regTwo!32858 (regOne!32858 r!7292)))))))

(declare-fun b!6245832 () Bool)

(assert (=> b!6245832 (= e!3800183 call!526302)))

(declare-fun b!6245833 () Bool)

(assert (=> b!6245833 (= e!3800180 e!3800184)))

(assert (=> b!6245833 (= c!1129999 ((_ is Union!16173) (regTwo!32858 (regOne!32858 r!7292))))))

(declare-fun bm!526300 () Bool)

(assert (=> bm!526300 (= call!526305 call!526303)))

(declare-fun b!6245834 () Bool)

(assert (=> b!6245834 (= e!3800179 ((_ map or) call!526304 call!526305))))

(declare-fun bm!526301 () Bool)

(assert (=> bm!526301 (= call!526307 call!526306)))

(declare-fun b!6245835 () Bool)

(assert (=> b!6245835 (= e!3800179 e!3800181)))

(assert (=> b!6245835 (= c!1130000 ((_ is Concat!25018) (regTwo!32858 (regOne!32858 r!7292))))))

(declare-fun bm!526302 () Bool)

(assert (=> bm!526302 (= call!526304 (derivationStepZipperDown!1421 (ite c!1129999 (regOne!32859 (regTwo!32858 (regOne!32858 r!7292))) (regOne!32858 (regTwo!32858 (regOne!32858 r!7292)))) (ite c!1129999 lt!2347857 (Context!11115 call!526306)) (h!71144 s!2326)))))

(assert (= (and d!1958842 c!1129997) b!6245825))

(assert (= (and d!1958842 (not c!1129997)) b!6245833))

(assert (= (and b!6245833 c!1129999) b!6245826))

(assert (= (and b!6245833 (not c!1129999)) b!6245830))

(assert (= (and b!6245830 res!2578698) b!6245829))

(assert (= (and b!6245830 c!1129998) b!6245834))

(assert (= (and b!6245830 (not c!1129998)) b!6245835))

(assert (= (and b!6245835 c!1130000) b!6245831))

(assert (= (and b!6245835 (not c!1130000)) b!6245828))

(assert (= (and b!6245828 c!1129996) b!6245832))

(assert (= (and b!6245828 (not c!1129996)) b!6245827))

(assert (= (or b!6245831 b!6245832) bm!526301))

(assert (= (or b!6245831 b!6245832) bm!526298))

(assert (= (or b!6245834 bm!526301) bm!526299))

(assert (= (or b!6245834 bm!526298) bm!526300))

(assert (= (or b!6245826 bm!526300) bm!526297))

(assert (= (or b!6245826 b!6245834) bm!526302))

(declare-fun m!7069752 () Bool)

(assert (=> b!6245825 m!7069752))

(declare-fun m!7069754 () Bool)

(assert (=> b!6245829 m!7069754))

(declare-fun m!7069756 () Bool)

(assert (=> bm!526302 m!7069756))

(declare-fun m!7069758 () Bool)

(assert (=> bm!526297 m!7069758))

(declare-fun m!7069760 () Bool)

(assert (=> bm!526299 m!7069760))

(assert (=> b!6245268 d!1958842))

(declare-fun b!6245836 () Bool)

(declare-fun e!3800186 () (InoxSet Context!11114))

(assert (=> b!6245836 (= e!3800186 (store ((as const (Array Context!11114 Bool)) false) lt!2347851 true))))

(declare-fun b!6245837 () Bool)

(declare-fun e!3800190 () (InoxSet Context!11114))

(declare-fun call!526310 () (InoxSet Context!11114))

(declare-fun call!526309 () (InoxSet Context!11114))

(assert (=> b!6245837 (= e!3800190 ((_ map or) call!526310 call!526309))))

(declare-fun bm!526303 () Bool)

(declare-fun c!1130003 () Bool)

(declare-fun c!1130004 () Bool)

(declare-fun c!1130005 () Bool)

(declare-fun call!526313 () List!64818)

(assert (=> bm!526303 (= call!526309 (derivationStepZipperDown!1421 (ite c!1130004 (regTwo!32859 (regOne!32858 (regOne!32858 r!7292))) (ite c!1130003 (regTwo!32858 (regOne!32858 (regOne!32858 r!7292))) (ite c!1130005 (regOne!32858 (regOne!32858 (regOne!32858 r!7292))) (reg!16502 (regOne!32858 (regOne!32858 r!7292)))))) (ite (or c!1130004 c!1130003) lt!2347851 (Context!11115 call!526313)) (h!71144 s!2326)))))

(declare-fun b!6245838 () Bool)

(declare-fun e!3800189 () (InoxSet Context!11114))

(assert (=> b!6245838 (= e!3800189 ((as const (Array Context!11114 Bool)) false))))

(declare-fun b!6245839 () Bool)

(declare-fun c!1130001 () Bool)

(assert (=> b!6245839 (= c!1130001 ((_ is Star!16173) (regOne!32858 (regOne!32858 r!7292))))))

(declare-fun e!3800187 () (InoxSet Context!11114))

(assert (=> b!6245839 (= e!3800187 e!3800189)))

(declare-fun d!1958844 () Bool)

(declare-fun c!1130002 () Bool)

(assert (=> d!1958844 (= c!1130002 (and ((_ is ElementMatch!16173) (regOne!32858 (regOne!32858 r!7292))) (= (c!1129830 (regOne!32858 (regOne!32858 r!7292))) (h!71144 s!2326))))))

(assert (=> d!1958844 (= (derivationStepZipperDown!1421 (regOne!32858 (regOne!32858 r!7292)) lt!2347851 (h!71144 s!2326)) e!3800186)))

(declare-fun b!6245840 () Bool)

(declare-fun e!3800188 () Bool)

(assert (=> b!6245840 (= e!3800188 (nullable!6166 (regOne!32858 (regOne!32858 (regOne!32858 r!7292)))))))

(declare-fun b!6245841 () Bool)

(assert (=> b!6245841 (= c!1130003 e!3800188)))

(declare-fun res!2578699 () Bool)

(assert (=> b!6245841 (=> (not res!2578699) (not e!3800188))))

(assert (=> b!6245841 (= res!2578699 ((_ is Concat!25018) (regOne!32858 (regOne!32858 r!7292))))))

(declare-fun e!3800185 () (InoxSet Context!11114))

(assert (=> b!6245841 (= e!3800190 e!3800185)))

(declare-fun b!6245842 () Bool)

(declare-fun call!526308 () (InoxSet Context!11114))

(assert (=> b!6245842 (= e!3800187 call!526308)))

(declare-fun bm!526304 () Bool)

(declare-fun call!526311 () (InoxSet Context!11114))

(assert (=> bm!526304 (= call!526308 call!526311)))

(declare-fun call!526312 () List!64818)

(declare-fun bm!526305 () Bool)

(assert (=> bm!526305 (= call!526312 ($colon$colon!2040 (exprs!6057 lt!2347851) (ite (or c!1130003 c!1130005) (regTwo!32858 (regOne!32858 (regOne!32858 r!7292))) (regOne!32858 (regOne!32858 r!7292)))))))

(declare-fun b!6245843 () Bool)

(assert (=> b!6245843 (= e!3800189 call!526308)))

(declare-fun b!6245844 () Bool)

(assert (=> b!6245844 (= e!3800186 e!3800190)))

(assert (=> b!6245844 (= c!1130004 ((_ is Union!16173) (regOne!32858 (regOne!32858 r!7292))))))

(declare-fun bm!526306 () Bool)

(assert (=> bm!526306 (= call!526311 call!526309)))

(declare-fun b!6245845 () Bool)

(assert (=> b!6245845 (= e!3800185 ((_ map or) call!526310 call!526311))))

(declare-fun bm!526307 () Bool)

(assert (=> bm!526307 (= call!526313 call!526312)))

(declare-fun b!6245846 () Bool)

(assert (=> b!6245846 (= e!3800185 e!3800187)))

(assert (=> b!6245846 (= c!1130005 ((_ is Concat!25018) (regOne!32858 (regOne!32858 r!7292))))))

(declare-fun bm!526308 () Bool)

(assert (=> bm!526308 (= call!526310 (derivationStepZipperDown!1421 (ite c!1130004 (regOne!32859 (regOne!32858 (regOne!32858 r!7292))) (regOne!32858 (regOne!32858 (regOne!32858 r!7292)))) (ite c!1130004 lt!2347851 (Context!11115 call!526312)) (h!71144 s!2326)))))

(assert (= (and d!1958844 c!1130002) b!6245836))

(assert (= (and d!1958844 (not c!1130002)) b!6245844))

(assert (= (and b!6245844 c!1130004) b!6245837))

(assert (= (and b!6245844 (not c!1130004)) b!6245841))

(assert (= (and b!6245841 res!2578699) b!6245840))

(assert (= (and b!6245841 c!1130003) b!6245845))

(assert (= (and b!6245841 (not c!1130003)) b!6245846))

(assert (= (and b!6245846 c!1130005) b!6245842))

(assert (= (and b!6245846 (not c!1130005)) b!6245839))

(assert (= (and b!6245839 c!1130001) b!6245843))

(assert (= (and b!6245839 (not c!1130001)) b!6245838))

(assert (= (or b!6245842 b!6245843) bm!526307))

(assert (= (or b!6245842 b!6245843) bm!526304))

(assert (= (or b!6245845 bm!526307) bm!526305))

(assert (= (or b!6245845 bm!526304) bm!526306))

(assert (= (or b!6245837 bm!526306) bm!526303))

(assert (= (or b!6245837 b!6245845) bm!526308))

(assert (=> b!6245836 m!7069232))

(declare-fun m!7069762 () Bool)

(assert (=> b!6245840 m!7069762))

(declare-fun m!7069764 () Bool)

(assert (=> bm!526308 m!7069764))

(declare-fun m!7069766 () Bool)

(assert (=> bm!526303 m!7069766))

(declare-fun m!7069768 () Bool)

(assert (=> bm!526305 m!7069768))

(assert (=> b!6245268 d!1958844))

(declare-fun d!1958846 () Bool)

(declare-fun c!1130006 () Bool)

(assert (=> d!1958846 (= c!1130006 (isEmpty!36718 (t!378366 s!2326)))))

(declare-fun e!3800191 () Bool)

(assert (=> d!1958846 (= (matchZipper!2185 (derivationStepZipper!2139 lt!2347866 (h!71144 s!2326)) (t!378366 s!2326)) e!3800191)))

(declare-fun b!6245847 () Bool)

(assert (=> b!6245847 (= e!3800191 (nullableZipper!1945 (derivationStepZipper!2139 lt!2347866 (h!71144 s!2326))))))

(declare-fun b!6245848 () Bool)

(assert (=> b!6245848 (= e!3800191 (matchZipper!2185 (derivationStepZipper!2139 (derivationStepZipper!2139 lt!2347866 (h!71144 s!2326)) (head!12849 (t!378366 s!2326))) (tail!11934 (t!378366 s!2326))))))

(assert (= (and d!1958846 c!1130006) b!6245847))

(assert (= (and d!1958846 (not c!1130006)) b!6245848))

(assert (=> d!1958846 m!7069688))

(assert (=> b!6245847 m!7069264))

(declare-fun m!7069770 () Bool)

(assert (=> b!6245847 m!7069770))

(assert (=> b!6245848 m!7069692))

(assert (=> b!6245848 m!7069264))

(assert (=> b!6245848 m!7069692))

(declare-fun m!7069772 () Bool)

(assert (=> b!6245848 m!7069772))

(assert (=> b!6245848 m!7069696))

(assert (=> b!6245848 m!7069772))

(assert (=> b!6245848 m!7069696))

(declare-fun m!7069774 () Bool)

(assert (=> b!6245848 m!7069774))

(assert (=> b!6245248 d!1958846))

(declare-fun bs!1552358 () Bool)

(declare-fun d!1958848 () Bool)

(assert (= bs!1552358 (and d!1958848 b!6245250)))

(declare-fun lambda!341606 () Int)

(assert (=> bs!1552358 (= lambda!341606 lambda!341549)))

(assert (=> d!1958848 true))

(assert (=> d!1958848 (= (derivationStepZipper!2139 lt!2347866 (h!71144 s!2326)) (flatMap!1678 lt!2347866 lambda!341606))))

(declare-fun bs!1552359 () Bool)

(assert (= bs!1552359 d!1958848))

(declare-fun m!7069776 () Bool)

(assert (=> bs!1552359 m!7069776))

(assert (=> b!6245248 d!1958848))

(assert (=> b!6245270 d!1958840))

(declare-fun d!1958850 () Bool)

(declare-fun dynLambda!25542 (Int Context!11114) (InoxSet Context!11114))

(assert (=> d!1958850 (= (flatMap!1678 z!1189 lambda!341549) (dynLambda!25542 lambda!341549 (h!71143 zl!343)))))

(declare-fun lt!2347970 () Unit!158023)

(declare-fun choose!46368 ((InoxSet Context!11114) Context!11114 Int) Unit!158023)

(assert (=> d!1958850 (= lt!2347970 (choose!46368 z!1189 (h!71143 zl!343) lambda!341549))))

(assert (=> d!1958850 (= z!1189 (store ((as const (Array Context!11114 Bool)) false) (h!71143 zl!343) true))))

(assert (=> d!1958850 (= (lemmaFlatMapOnSingletonSet!1204 z!1189 (h!71143 zl!343) lambda!341549) lt!2347970)))

(declare-fun b_lambda!237561 () Bool)

(assert (=> (not b_lambda!237561) (not d!1958850)))

(declare-fun bs!1552360 () Bool)

(assert (= bs!1552360 d!1958850))

(assert (=> bs!1552360 m!7069292))

(declare-fun m!7069778 () Bool)

(assert (=> bs!1552360 m!7069778))

(declare-fun m!7069780 () Bool)

(assert (=> bs!1552360 m!7069780))

(declare-fun m!7069782 () Bool)

(assert (=> bs!1552360 m!7069782))

(assert (=> b!6245250 d!1958850))

(declare-fun d!1958852 () Bool)

(declare-fun nullableFct!2120 (Regex!16173) Bool)

(assert (=> d!1958852 (= (nullable!6166 (h!71142 (exprs!6057 (h!71143 zl!343)))) (nullableFct!2120 (h!71142 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun bs!1552361 () Bool)

(assert (= bs!1552361 d!1958852))

(declare-fun m!7069784 () Bool)

(assert (=> bs!1552361 m!7069784))

(assert (=> b!6245250 d!1958852))

(declare-fun b!6245851 () Bool)

(declare-fun e!3800193 () (InoxSet Context!11114))

(assert (=> b!6245851 (= e!3800193 (store ((as const (Array Context!11114 Bool)) false) lt!2347857 true))))

(declare-fun b!6245852 () Bool)

(declare-fun e!3800197 () (InoxSet Context!11114))

(declare-fun call!526316 () (InoxSet Context!11114))

(declare-fun call!526315 () (InoxSet Context!11114))

(assert (=> b!6245852 (= e!3800197 ((_ map or) call!526316 call!526315))))

(declare-fun c!1130013 () Bool)

(declare-fun bm!526309 () Bool)

(declare-fun call!526319 () List!64818)

(declare-fun c!1130011 () Bool)

(declare-fun c!1130012 () Bool)

(assert (=> bm!526309 (= call!526315 (derivationStepZipperDown!1421 (ite c!1130012 (regTwo!32859 (h!71142 (exprs!6057 (h!71143 zl!343)))) (ite c!1130011 (regTwo!32858 (h!71142 (exprs!6057 (h!71143 zl!343)))) (ite c!1130013 (regOne!32858 (h!71142 (exprs!6057 (h!71143 zl!343)))) (reg!16502 (h!71142 (exprs!6057 (h!71143 zl!343))))))) (ite (or c!1130012 c!1130011) lt!2347857 (Context!11115 call!526319)) (h!71144 s!2326)))))

(declare-fun b!6245853 () Bool)

(declare-fun e!3800196 () (InoxSet Context!11114))

(assert (=> b!6245853 (= e!3800196 ((as const (Array Context!11114 Bool)) false))))

(declare-fun b!6245854 () Bool)

(declare-fun c!1130009 () Bool)

(assert (=> b!6245854 (= c!1130009 ((_ is Star!16173) (h!71142 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun e!3800194 () (InoxSet Context!11114))

(assert (=> b!6245854 (= e!3800194 e!3800196)))

(declare-fun d!1958854 () Bool)

(declare-fun c!1130010 () Bool)

(assert (=> d!1958854 (= c!1130010 (and ((_ is ElementMatch!16173) (h!71142 (exprs!6057 (h!71143 zl!343)))) (= (c!1129830 (h!71142 (exprs!6057 (h!71143 zl!343)))) (h!71144 s!2326))))))

(assert (=> d!1958854 (= (derivationStepZipperDown!1421 (h!71142 (exprs!6057 (h!71143 zl!343))) lt!2347857 (h!71144 s!2326)) e!3800193)))

(declare-fun b!6245855 () Bool)

(declare-fun e!3800195 () Bool)

(assert (=> b!6245855 (= e!3800195 (nullable!6166 (regOne!32858 (h!71142 (exprs!6057 (h!71143 zl!343))))))))

(declare-fun b!6245856 () Bool)

(assert (=> b!6245856 (= c!1130011 e!3800195)))

(declare-fun res!2578700 () Bool)

(assert (=> b!6245856 (=> (not res!2578700) (not e!3800195))))

(assert (=> b!6245856 (= res!2578700 ((_ is Concat!25018) (h!71142 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun e!3800192 () (InoxSet Context!11114))

(assert (=> b!6245856 (= e!3800197 e!3800192)))

(declare-fun b!6245857 () Bool)

(declare-fun call!526314 () (InoxSet Context!11114))

(assert (=> b!6245857 (= e!3800194 call!526314)))

(declare-fun bm!526310 () Bool)

(declare-fun call!526317 () (InoxSet Context!11114))

(assert (=> bm!526310 (= call!526314 call!526317)))

(declare-fun bm!526311 () Bool)

(declare-fun call!526318 () List!64818)

(assert (=> bm!526311 (= call!526318 ($colon$colon!2040 (exprs!6057 lt!2347857) (ite (or c!1130011 c!1130013) (regTwo!32858 (h!71142 (exprs!6057 (h!71143 zl!343)))) (h!71142 (exprs!6057 (h!71143 zl!343))))))))

(declare-fun b!6245858 () Bool)

(assert (=> b!6245858 (= e!3800196 call!526314)))

(declare-fun b!6245859 () Bool)

(assert (=> b!6245859 (= e!3800193 e!3800197)))

(assert (=> b!6245859 (= c!1130012 ((_ is Union!16173) (h!71142 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun bm!526312 () Bool)

(assert (=> bm!526312 (= call!526317 call!526315)))

(declare-fun b!6245860 () Bool)

(assert (=> b!6245860 (= e!3800192 ((_ map or) call!526316 call!526317))))

(declare-fun bm!526313 () Bool)

(assert (=> bm!526313 (= call!526319 call!526318)))

(declare-fun b!6245861 () Bool)

(assert (=> b!6245861 (= e!3800192 e!3800194)))

(assert (=> b!6245861 (= c!1130013 ((_ is Concat!25018) (h!71142 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun bm!526314 () Bool)

(assert (=> bm!526314 (= call!526316 (derivationStepZipperDown!1421 (ite c!1130012 (regOne!32859 (h!71142 (exprs!6057 (h!71143 zl!343)))) (regOne!32858 (h!71142 (exprs!6057 (h!71143 zl!343))))) (ite c!1130012 lt!2347857 (Context!11115 call!526318)) (h!71144 s!2326)))))

(assert (= (and d!1958854 c!1130010) b!6245851))

(assert (= (and d!1958854 (not c!1130010)) b!6245859))

(assert (= (and b!6245859 c!1130012) b!6245852))

(assert (= (and b!6245859 (not c!1130012)) b!6245856))

(assert (= (and b!6245856 res!2578700) b!6245855))

(assert (= (and b!6245856 c!1130011) b!6245860))

(assert (= (and b!6245856 (not c!1130011)) b!6245861))

(assert (= (and b!6245861 c!1130013) b!6245857))

(assert (= (and b!6245861 (not c!1130013)) b!6245854))

(assert (= (and b!6245854 c!1130009) b!6245858))

(assert (= (and b!6245854 (not c!1130009)) b!6245853))

(assert (= (or b!6245857 b!6245858) bm!526313))

(assert (= (or b!6245857 b!6245858) bm!526310))

(assert (= (or b!6245860 bm!526313) bm!526311))

(assert (= (or b!6245860 bm!526310) bm!526312))

(assert (= (or b!6245852 bm!526312) bm!526309))

(assert (= (or b!6245852 b!6245860) bm!526314))

(assert (=> b!6245851 m!7069752))

(declare-fun m!7069786 () Bool)

(assert (=> b!6245855 m!7069786))

(declare-fun m!7069788 () Bool)

(assert (=> bm!526314 m!7069788))

(declare-fun m!7069790 () Bool)

(assert (=> bm!526309 m!7069790))

(declare-fun m!7069792 () Bool)

(assert (=> bm!526311 m!7069792))

(assert (=> b!6245250 d!1958854))

(declare-fun e!3800204 () (InoxSet Context!11114))

(declare-fun call!526322 () (InoxSet Context!11114))

(declare-fun b!6245872 () Bool)

(assert (=> b!6245872 (= e!3800204 ((_ map or) call!526322 (derivationStepZipperUp!1347 (Context!11115 (t!378364 (exprs!6057 lt!2347857))) (h!71144 s!2326))))))

(declare-fun b!6245873 () Bool)

(declare-fun e!3800206 () (InoxSet Context!11114))

(assert (=> b!6245873 (= e!3800206 ((as const (Array Context!11114 Bool)) false))))

(declare-fun d!1958856 () Bool)

(declare-fun c!1130019 () Bool)

(declare-fun e!3800205 () Bool)

(assert (=> d!1958856 (= c!1130019 e!3800205)))

(declare-fun res!2578703 () Bool)

(assert (=> d!1958856 (=> (not res!2578703) (not e!3800205))))

(assert (=> d!1958856 (= res!2578703 ((_ is Cons!64694) (exprs!6057 lt!2347857)))))

(assert (=> d!1958856 (= (derivationStepZipperUp!1347 lt!2347857 (h!71144 s!2326)) e!3800204)))

(declare-fun bm!526317 () Bool)

(assert (=> bm!526317 (= call!526322 (derivationStepZipperDown!1421 (h!71142 (exprs!6057 lt!2347857)) (Context!11115 (t!378364 (exprs!6057 lt!2347857))) (h!71144 s!2326)))))

(declare-fun b!6245874 () Bool)

(assert (=> b!6245874 (= e!3800205 (nullable!6166 (h!71142 (exprs!6057 lt!2347857))))))

(declare-fun b!6245875 () Bool)

(assert (=> b!6245875 (= e!3800204 e!3800206)))

(declare-fun c!1130018 () Bool)

(assert (=> b!6245875 (= c!1130018 ((_ is Cons!64694) (exprs!6057 lt!2347857)))))

(declare-fun b!6245876 () Bool)

(assert (=> b!6245876 (= e!3800206 call!526322)))

(assert (= (and d!1958856 res!2578703) b!6245874))

(assert (= (and d!1958856 c!1130019) b!6245872))

(assert (= (and d!1958856 (not c!1130019)) b!6245875))

(assert (= (and b!6245875 c!1130018) b!6245876))

(assert (= (and b!6245875 (not c!1130018)) b!6245873))

(assert (= (or b!6245872 b!6245876) bm!526317))

(declare-fun m!7069794 () Bool)

(assert (=> b!6245872 m!7069794))

(declare-fun m!7069796 () Bool)

(assert (=> bm!526317 m!7069796))

(declare-fun m!7069798 () Bool)

(assert (=> b!6245874 m!7069798))

(assert (=> b!6245250 d!1958856))

(declare-fun e!3800207 () (InoxSet Context!11114))

(declare-fun b!6245877 () Bool)

(declare-fun call!526323 () (InoxSet Context!11114))

(assert (=> b!6245877 (= e!3800207 ((_ map or) call!526323 (derivationStepZipperUp!1347 (Context!11115 (t!378364 (exprs!6057 (h!71143 zl!343)))) (h!71144 s!2326))))))

(declare-fun b!6245878 () Bool)

(declare-fun e!3800209 () (InoxSet Context!11114))

(assert (=> b!6245878 (= e!3800209 ((as const (Array Context!11114 Bool)) false))))

(declare-fun d!1958858 () Bool)

(declare-fun c!1130021 () Bool)

(declare-fun e!3800208 () Bool)

(assert (=> d!1958858 (= c!1130021 e!3800208)))

(declare-fun res!2578704 () Bool)

(assert (=> d!1958858 (=> (not res!2578704) (not e!3800208))))

(assert (=> d!1958858 (= res!2578704 ((_ is Cons!64694) (exprs!6057 (h!71143 zl!343))))))

(assert (=> d!1958858 (= (derivationStepZipperUp!1347 (h!71143 zl!343) (h!71144 s!2326)) e!3800207)))

(declare-fun bm!526318 () Bool)

(assert (=> bm!526318 (= call!526323 (derivationStepZipperDown!1421 (h!71142 (exprs!6057 (h!71143 zl!343))) (Context!11115 (t!378364 (exprs!6057 (h!71143 zl!343)))) (h!71144 s!2326)))))

(declare-fun b!6245879 () Bool)

(assert (=> b!6245879 (= e!3800208 (nullable!6166 (h!71142 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun b!6245880 () Bool)

(assert (=> b!6245880 (= e!3800207 e!3800209)))

(declare-fun c!1130020 () Bool)

(assert (=> b!6245880 (= c!1130020 ((_ is Cons!64694) (exprs!6057 (h!71143 zl!343))))))

(declare-fun b!6245881 () Bool)

(assert (=> b!6245881 (= e!3800209 call!526323)))

(assert (= (and d!1958858 res!2578704) b!6245879))

(assert (= (and d!1958858 c!1130021) b!6245877))

(assert (= (and d!1958858 (not c!1130021)) b!6245880))

(assert (= (and b!6245880 c!1130020) b!6245881))

(assert (= (and b!6245880 (not c!1130020)) b!6245878))

(assert (= (or b!6245877 b!6245881) bm!526318))

(declare-fun m!7069800 () Bool)

(assert (=> b!6245877 m!7069800))

(declare-fun m!7069802 () Bool)

(assert (=> bm!526318 m!7069802))

(assert (=> b!6245879 m!7069294))

(assert (=> b!6245250 d!1958858))

(declare-fun d!1958860 () Bool)

(declare-fun choose!46369 ((InoxSet Context!11114) Int) (InoxSet Context!11114))

(assert (=> d!1958860 (= (flatMap!1678 z!1189 lambda!341549) (choose!46369 z!1189 lambda!341549))))

(declare-fun bs!1552362 () Bool)

(assert (= bs!1552362 d!1958860))

(declare-fun m!7069804 () Bool)

(assert (=> bs!1552362 m!7069804))

(assert (=> b!6245250 d!1958860))

(declare-fun e!3800210 () (InoxSet Context!11114))

(declare-fun call!526324 () (InoxSet Context!11114))

(declare-fun b!6245882 () Bool)

(assert (=> b!6245882 (= e!3800210 ((_ map or) call!526324 (derivationStepZipperUp!1347 (Context!11115 (t!378364 (exprs!6057 (Context!11115 (Cons!64694 (h!71142 (exprs!6057 (h!71143 zl!343))) (t!378364 (exprs!6057 (h!71143 zl!343)))))))) (h!71144 s!2326))))))

(declare-fun b!6245883 () Bool)

(declare-fun e!3800212 () (InoxSet Context!11114))

(assert (=> b!6245883 (= e!3800212 ((as const (Array Context!11114 Bool)) false))))

(declare-fun d!1958862 () Bool)

(declare-fun c!1130023 () Bool)

(declare-fun e!3800211 () Bool)

(assert (=> d!1958862 (= c!1130023 e!3800211)))

(declare-fun res!2578705 () Bool)

(assert (=> d!1958862 (=> (not res!2578705) (not e!3800211))))

(assert (=> d!1958862 (= res!2578705 ((_ is Cons!64694) (exprs!6057 (Context!11115 (Cons!64694 (h!71142 (exprs!6057 (h!71143 zl!343))) (t!378364 (exprs!6057 (h!71143 zl!343))))))))))

(assert (=> d!1958862 (= (derivationStepZipperUp!1347 (Context!11115 (Cons!64694 (h!71142 (exprs!6057 (h!71143 zl!343))) (t!378364 (exprs!6057 (h!71143 zl!343))))) (h!71144 s!2326)) e!3800210)))

(declare-fun bm!526319 () Bool)

(assert (=> bm!526319 (= call!526324 (derivationStepZipperDown!1421 (h!71142 (exprs!6057 (Context!11115 (Cons!64694 (h!71142 (exprs!6057 (h!71143 zl!343))) (t!378364 (exprs!6057 (h!71143 zl!343))))))) (Context!11115 (t!378364 (exprs!6057 (Context!11115 (Cons!64694 (h!71142 (exprs!6057 (h!71143 zl!343))) (t!378364 (exprs!6057 (h!71143 zl!343)))))))) (h!71144 s!2326)))))

(declare-fun b!6245884 () Bool)

(assert (=> b!6245884 (= e!3800211 (nullable!6166 (h!71142 (exprs!6057 (Context!11115 (Cons!64694 (h!71142 (exprs!6057 (h!71143 zl!343))) (t!378364 (exprs!6057 (h!71143 zl!343)))))))))))

(declare-fun b!6245885 () Bool)

(assert (=> b!6245885 (= e!3800210 e!3800212)))

(declare-fun c!1130022 () Bool)

(assert (=> b!6245885 (= c!1130022 ((_ is Cons!64694) (exprs!6057 (Context!11115 (Cons!64694 (h!71142 (exprs!6057 (h!71143 zl!343))) (t!378364 (exprs!6057 (h!71143 zl!343))))))))))

(declare-fun b!6245886 () Bool)

(assert (=> b!6245886 (= e!3800212 call!526324)))

(assert (= (and d!1958862 res!2578705) b!6245884))

(assert (= (and d!1958862 c!1130023) b!6245882))

(assert (= (and d!1958862 (not c!1130023)) b!6245885))

(assert (= (and b!6245885 c!1130022) b!6245886))

(assert (= (and b!6245885 (not c!1130022)) b!6245883))

(assert (= (or b!6245882 b!6245886) bm!526319))

(declare-fun m!7069806 () Bool)

(assert (=> b!6245882 m!7069806))

(declare-fun m!7069808 () Bool)

(assert (=> bm!526319 m!7069808))

(declare-fun m!7069810 () Bool)

(assert (=> b!6245884 m!7069810))

(assert (=> b!6245250 d!1958862))

(declare-fun e!3800213 () (InoxSet Context!11114))

(declare-fun b!6245887 () Bool)

(declare-fun call!526325 () (InoxSet Context!11114))

(assert (=> b!6245887 (= e!3800213 ((_ map or) call!526325 (derivationStepZipperUp!1347 (Context!11115 (t!378364 (exprs!6057 lt!2347849))) (h!71144 s!2326))))))

(declare-fun b!6245888 () Bool)

(declare-fun e!3800215 () (InoxSet Context!11114))

(assert (=> b!6245888 (= e!3800215 ((as const (Array Context!11114 Bool)) false))))

(declare-fun d!1958864 () Bool)

(declare-fun c!1130025 () Bool)

(declare-fun e!3800214 () Bool)

(assert (=> d!1958864 (= c!1130025 e!3800214)))

(declare-fun res!2578706 () Bool)

(assert (=> d!1958864 (=> (not res!2578706) (not e!3800214))))

(assert (=> d!1958864 (= res!2578706 ((_ is Cons!64694) (exprs!6057 lt!2347849)))))

(assert (=> d!1958864 (= (derivationStepZipperUp!1347 lt!2347849 (h!71144 s!2326)) e!3800213)))

(declare-fun bm!526320 () Bool)

(assert (=> bm!526320 (= call!526325 (derivationStepZipperDown!1421 (h!71142 (exprs!6057 lt!2347849)) (Context!11115 (t!378364 (exprs!6057 lt!2347849))) (h!71144 s!2326)))))

(declare-fun b!6245889 () Bool)

(assert (=> b!6245889 (= e!3800214 (nullable!6166 (h!71142 (exprs!6057 lt!2347849))))))

(declare-fun b!6245890 () Bool)

(assert (=> b!6245890 (= e!3800213 e!3800215)))

(declare-fun c!1130024 () Bool)

(assert (=> b!6245890 (= c!1130024 ((_ is Cons!64694) (exprs!6057 lt!2347849)))))

(declare-fun b!6245891 () Bool)

(assert (=> b!6245891 (= e!3800215 call!526325)))

(assert (= (and d!1958864 res!2578706) b!6245889))

(assert (= (and d!1958864 c!1130025) b!6245887))

(assert (= (and d!1958864 (not c!1130025)) b!6245890))

(assert (= (and b!6245890 c!1130024) b!6245891))

(assert (= (and b!6245890 (not c!1130024)) b!6245888))

(assert (= (or b!6245887 b!6245891) bm!526320))

(declare-fun m!7069812 () Bool)

(assert (=> b!6245887 m!7069812))

(declare-fun m!7069814 () Bool)

(assert (=> bm!526320 m!7069814))

(declare-fun m!7069816 () Bool)

(assert (=> b!6245889 m!7069816))

(assert (=> b!6245245 d!1958864))

(declare-fun bs!1552363 () Bool)

(declare-fun d!1958866 () Bool)

(assert (= bs!1552363 (and d!1958866 b!6245250)))

(declare-fun lambda!341607 () Int)

(assert (=> bs!1552363 (= lambda!341607 lambda!341549)))

(declare-fun bs!1552364 () Bool)

(assert (= bs!1552364 (and d!1958866 d!1958848)))

(assert (=> bs!1552364 (= lambda!341607 lambda!341606)))

(assert (=> d!1958866 true))

(assert (=> d!1958866 (= (derivationStepZipper!2139 lt!2347865 (h!71144 s!2326)) (flatMap!1678 lt!2347865 lambda!341607))))

(declare-fun bs!1552365 () Bool)

(assert (= bs!1552365 d!1958866))

(declare-fun m!7069818 () Bool)

(assert (=> bs!1552365 m!7069818))

(assert (=> b!6245245 d!1958866))

(declare-fun d!1958868 () Bool)

(assert (=> d!1958868 (= (flatMap!1678 lt!2347865 lambda!341549) (choose!46369 lt!2347865 lambda!341549))))

(declare-fun bs!1552366 () Bool)

(assert (= bs!1552366 d!1958868))

(declare-fun m!7069820 () Bool)

(assert (=> bs!1552366 m!7069820))

(assert (=> b!6245245 d!1958868))

(declare-fun b!6245892 () Bool)

(declare-fun e!3800216 () (InoxSet Context!11114))

(declare-fun call!526326 () (InoxSet Context!11114))

(assert (=> b!6245892 (= e!3800216 ((_ map or) call!526326 (derivationStepZipperUp!1347 (Context!11115 (t!378364 (exprs!6057 lt!2347851))) (h!71144 s!2326))))))

(declare-fun b!6245893 () Bool)

(declare-fun e!3800218 () (InoxSet Context!11114))

(assert (=> b!6245893 (= e!3800218 ((as const (Array Context!11114 Bool)) false))))

(declare-fun d!1958870 () Bool)

(declare-fun c!1130027 () Bool)

(declare-fun e!3800217 () Bool)

(assert (=> d!1958870 (= c!1130027 e!3800217)))

(declare-fun res!2578707 () Bool)

(assert (=> d!1958870 (=> (not res!2578707) (not e!3800217))))

(assert (=> d!1958870 (= res!2578707 ((_ is Cons!64694) (exprs!6057 lt!2347851)))))

(assert (=> d!1958870 (= (derivationStepZipperUp!1347 lt!2347851 (h!71144 s!2326)) e!3800216)))

(declare-fun bm!526321 () Bool)

(assert (=> bm!526321 (= call!526326 (derivationStepZipperDown!1421 (h!71142 (exprs!6057 lt!2347851)) (Context!11115 (t!378364 (exprs!6057 lt!2347851))) (h!71144 s!2326)))))

(declare-fun b!6245894 () Bool)

(assert (=> b!6245894 (= e!3800217 (nullable!6166 (h!71142 (exprs!6057 lt!2347851))))))

(declare-fun b!6245895 () Bool)

(assert (=> b!6245895 (= e!3800216 e!3800218)))

(declare-fun c!1130026 () Bool)

(assert (=> b!6245895 (= c!1130026 ((_ is Cons!64694) (exprs!6057 lt!2347851)))))

(declare-fun b!6245896 () Bool)

(assert (=> b!6245896 (= e!3800218 call!526326)))

(assert (= (and d!1958870 res!2578707) b!6245894))

(assert (= (and d!1958870 c!1130027) b!6245892))

(assert (= (and d!1958870 (not c!1130027)) b!6245895))

(assert (= (and b!6245895 c!1130026) b!6245896))

(assert (= (and b!6245895 (not c!1130026)) b!6245893))

(assert (= (or b!6245892 b!6245896) bm!526321))

(declare-fun m!7069822 () Bool)

(assert (=> b!6245892 m!7069822))

(declare-fun m!7069824 () Bool)

(assert (=> bm!526321 m!7069824))

(declare-fun m!7069826 () Bool)

(assert (=> b!6245894 m!7069826))

(assert (=> b!6245245 d!1958870))

(declare-fun d!1958872 () Bool)

(assert (=> d!1958872 (= (flatMap!1678 lt!2347865 lambda!341549) (dynLambda!25542 lambda!341549 lt!2347849))))

(declare-fun lt!2347971 () Unit!158023)

(assert (=> d!1958872 (= lt!2347971 (choose!46368 lt!2347865 lt!2347849 lambda!341549))))

(assert (=> d!1958872 (= lt!2347865 (store ((as const (Array Context!11114 Bool)) false) lt!2347849 true))))

(assert (=> d!1958872 (= (lemmaFlatMapOnSingletonSet!1204 lt!2347865 lt!2347849 lambda!341549) lt!2347971)))

(declare-fun b_lambda!237563 () Bool)

(assert (=> (not b_lambda!237563) (not d!1958872)))

(declare-fun bs!1552367 () Bool)

(assert (= bs!1552367 d!1958872))

(assert (=> bs!1552367 m!7069234))

(declare-fun m!7069828 () Bool)

(assert (=> bs!1552367 m!7069828))

(declare-fun m!7069830 () Bool)

(assert (=> bs!1552367 m!7069830))

(assert (=> bs!1552367 m!7069228))

(assert (=> b!6245245 d!1958872))

(declare-fun d!1958874 () Bool)

(declare-fun lt!2347974 () Int)

(assert (=> d!1958874 (>= lt!2347974 0)))

(declare-fun e!3800221 () Int)

(assert (=> d!1958874 (= lt!2347974 e!3800221)))

(declare-fun c!1130031 () Bool)

(assert (=> d!1958874 (= c!1130031 ((_ is Cons!64694) (exprs!6057 lt!2347849)))))

(assert (=> d!1958874 (= (contextDepthTotal!296 lt!2347849) lt!2347974)))

(declare-fun b!6245901 () Bool)

(declare-fun regexDepthTotal!151 (Regex!16173) Int)

(assert (=> b!6245901 (= e!3800221 (+ (regexDepthTotal!151 (h!71142 (exprs!6057 lt!2347849))) (contextDepthTotal!296 (Context!11115 (t!378364 (exprs!6057 lt!2347849))))))))

(declare-fun b!6245902 () Bool)

(assert (=> b!6245902 (= e!3800221 1)))

(assert (= (and d!1958874 c!1130031) b!6245901))

(assert (= (and d!1958874 (not c!1130031)) b!6245902))

(declare-fun m!7069832 () Bool)

(assert (=> b!6245901 m!7069832))

(declare-fun m!7069834 () Bool)

(assert (=> b!6245901 m!7069834))

(assert (=> b!6245266 d!1958874))

(declare-fun d!1958876 () Bool)

(declare-fun lt!2347975 () Int)

(assert (=> d!1958876 (>= lt!2347975 0)))

(declare-fun e!3800222 () Int)

(assert (=> d!1958876 (= lt!2347975 e!3800222)))

(declare-fun c!1130032 () Bool)

(assert (=> d!1958876 (= c!1130032 ((_ is Cons!64694) (exprs!6057 (h!71143 zl!343))))))

(assert (=> d!1958876 (= (contextDepthTotal!296 (h!71143 zl!343)) lt!2347975)))

(declare-fun b!6245903 () Bool)

(assert (=> b!6245903 (= e!3800222 (+ (regexDepthTotal!151 (h!71142 (exprs!6057 (h!71143 zl!343)))) (contextDepthTotal!296 (Context!11115 (t!378364 (exprs!6057 (h!71143 zl!343)))))))))

(declare-fun b!6245904 () Bool)

(assert (=> b!6245904 (= e!3800222 1)))

(assert (= (and d!1958876 c!1130032) b!6245903))

(assert (= (and d!1958876 (not c!1130032)) b!6245904))

(declare-fun m!7069836 () Bool)

(assert (=> b!6245903 m!7069836))

(declare-fun m!7069838 () Bool)

(assert (=> b!6245903 m!7069838))

(assert (=> b!6245266 d!1958876))

(declare-fun d!1958878 () Bool)

(assert (=> d!1958878 (= (nullable!6166 (regOne!32858 (regOne!32858 r!7292))) (nullableFct!2120 (regOne!32858 (regOne!32858 r!7292))))))

(declare-fun bs!1552368 () Bool)

(assert (= bs!1552368 d!1958878))

(declare-fun m!7069840 () Bool)

(assert (=> bs!1552368 m!7069840))

(assert (=> b!6245246 d!1958878))

(declare-fun d!1958880 () Bool)

(declare-fun res!2578712 () Bool)

(declare-fun e!3800227 () Bool)

(assert (=> d!1958880 (=> res!2578712 e!3800227)))

(assert (=> d!1958880 (= res!2578712 ((_ is ElementMatch!16173) (generalisedConcat!1770 lt!2347856)))))

(assert (=> d!1958880 (= (validRegex!7909 (generalisedConcat!1770 lt!2347856)) e!3800227)))

(declare-fun b!6245905 () Bool)

(declare-fun e!3800223 () Bool)

(declare-fun e!3800229 () Bool)

(assert (=> b!6245905 (= e!3800223 e!3800229)))

(declare-fun res!2578708 () Bool)

(assert (=> b!6245905 (=> (not res!2578708) (not e!3800229))))

(declare-fun call!526329 () Bool)

(assert (=> b!6245905 (= res!2578708 call!526329)))

(declare-fun b!6245906 () Bool)

(declare-fun call!526328 () Bool)

(assert (=> b!6245906 (= e!3800229 call!526328)))

(declare-fun b!6245907 () Bool)

(declare-fun e!3800226 () Bool)

(declare-fun e!3800224 () Bool)

(assert (=> b!6245907 (= e!3800226 e!3800224)))

(declare-fun c!1130034 () Bool)

(assert (=> b!6245907 (= c!1130034 ((_ is Union!16173) (generalisedConcat!1770 lt!2347856)))))

(declare-fun b!6245908 () Bool)

(declare-fun res!2578711 () Bool)

(declare-fun e!3800225 () Bool)

(assert (=> b!6245908 (=> (not res!2578711) (not e!3800225))))

(assert (=> b!6245908 (= res!2578711 call!526329)))

(assert (=> b!6245908 (= e!3800224 e!3800225)))

(declare-fun bm!526322 () Bool)

(assert (=> bm!526322 (= call!526329 (validRegex!7909 (ite c!1130034 (regOne!32859 (generalisedConcat!1770 lt!2347856)) (regOne!32858 (generalisedConcat!1770 lt!2347856)))))))

(declare-fun b!6245909 () Bool)

(declare-fun e!3800228 () Bool)

(declare-fun call!526327 () Bool)

(assert (=> b!6245909 (= e!3800228 call!526327)))

(declare-fun bm!526323 () Bool)

(declare-fun c!1130033 () Bool)

(assert (=> bm!526323 (= call!526327 (validRegex!7909 (ite c!1130033 (reg!16502 (generalisedConcat!1770 lt!2347856)) (ite c!1130034 (regTwo!32859 (generalisedConcat!1770 lt!2347856)) (regTwo!32858 (generalisedConcat!1770 lt!2347856))))))))

(declare-fun bm!526324 () Bool)

(assert (=> bm!526324 (= call!526328 call!526327)))

(declare-fun b!6245910 () Bool)

(assert (=> b!6245910 (= e!3800227 e!3800226)))

(assert (=> b!6245910 (= c!1130033 ((_ is Star!16173) (generalisedConcat!1770 lt!2347856)))))

(declare-fun b!6245911 () Bool)

(declare-fun res!2578710 () Bool)

(assert (=> b!6245911 (=> res!2578710 e!3800223)))

(assert (=> b!6245911 (= res!2578710 (not ((_ is Concat!25018) (generalisedConcat!1770 lt!2347856))))))

(assert (=> b!6245911 (= e!3800224 e!3800223)))

(declare-fun b!6245912 () Bool)

(assert (=> b!6245912 (= e!3800226 e!3800228)))

(declare-fun res!2578709 () Bool)

(assert (=> b!6245912 (= res!2578709 (not (nullable!6166 (reg!16502 (generalisedConcat!1770 lt!2347856)))))))

(assert (=> b!6245912 (=> (not res!2578709) (not e!3800228))))

(declare-fun b!6245913 () Bool)

(assert (=> b!6245913 (= e!3800225 call!526328)))

(assert (= (and d!1958880 (not res!2578712)) b!6245910))

(assert (= (and b!6245910 c!1130033) b!6245912))

(assert (= (and b!6245910 (not c!1130033)) b!6245907))

(assert (= (and b!6245912 res!2578709) b!6245909))

(assert (= (and b!6245907 c!1130034) b!6245908))

(assert (= (and b!6245907 (not c!1130034)) b!6245911))

(assert (= (and b!6245908 res!2578711) b!6245913))

(assert (= (and b!6245911 (not res!2578710)) b!6245905))

(assert (= (and b!6245905 res!2578708) b!6245906))

(assert (= (or b!6245913 b!6245906) bm!526324))

(assert (= (or b!6245908 b!6245905) bm!526322))

(assert (= (or b!6245909 bm!526324) bm!526323))

(declare-fun m!7069842 () Bool)

(assert (=> bm!526322 m!7069842))

(declare-fun m!7069844 () Bool)

(assert (=> bm!526323 m!7069844))

(declare-fun m!7069846 () Bool)

(assert (=> b!6245912 m!7069846))

(assert (=> b!6245267 d!1958880))

(declare-fun b!6245934 () Bool)

(declare-fun e!3800244 () Bool)

(declare-fun lt!2347978 () Regex!16173)

(declare-fun isConcat!1104 (Regex!16173) Bool)

(assert (=> b!6245934 (= e!3800244 (isConcat!1104 lt!2347978))))

(declare-fun b!6245935 () Bool)

(declare-fun e!3800245 () Bool)

(declare-fun isEmptyExpr!1581 (Regex!16173) Bool)

(assert (=> b!6245935 (= e!3800245 (isEmptyExpr!1581 lt!2347978))))

(declare-fun b!6245936 () Bool)

(declare-fun e!3800247 () Regex!16173)

(assert (=> b!6245936 (= e!3800247 (Concat!25018 (h!71142 lt!2347856) (generalisedConcat!1770 (t!378364 lt!2347856))))))

(declare-fun b!6245937 () Bool)

(assert (=> b!6245937 (= e!3800247 EmptyExpr!16173)))

(declare-fun b!6245938 () Bool)

(declare-fun head!12851 (List!64818) Regex!16173)

(assert (=> b!6245938 (= e!3800244 (= lt!2347978 (head!12851 lt!2347856)))))

(declare-fun b!6245940 () Bool)

(assert (=> b!6245940 (= e!3800245 e!3800244)))

(declare-fun c!1130043 () Bool)

(declare-fun tail!11936 (List!64818) List!64818)

(assert (=> b!6245940 (= c!1130043 (isEmpty!36714 (tail!11936 lt!2347856)))))

(declare-fun b!6245941 () Bool)

(declare-fun e!3800246 () Bool)

(assert (=> b!6245941 (= e!3800246 (isEmpty!36714 (t!378364 lt!2347856)))))

(declare-fun b!6245942 () Bool)

(declare-fun e!3800242 () Regex!16173)

(assert (=> b!6245942 (= e!3800242 (h!71142 lt!2347856))))

(declare-fun b!6245943 () Bool)

(declare-fun e!3800243 () Bool)

(assert (=> b!6245943 (= e!3800243 e!3800245)))

(declare-fun c!1130045 () Bool)

(assert (=> b!6245943 (= c!1130045 (isEmpty!36714 lt!2347856))))

(declare-fun d!1958882 () Bool)

(assert (=> d!1958882 e!3800243))

(declare-fun res!2578718 () Bool)

(assert (=> d!1958882 (=> (not res!2578718) (not e!3800243))))

(assert (=> d!1958882 (= res!2578718 (validRegex!7909 lt!2347978))))

(assert (=> d!1958882 (= lt!2347978 e!3800242)))

(declare-fun c!1130044 () Bool)

(assert (=> d!1958882 (= c!1130044 e!3800246)))

(declare-fun res!2578717 () Bool)

(assert (=> d!1958882 (=> (not res!2578717) (not e!3800246))))

(assert (=> d!1958882 (= res!2578717 ((_ is Cons!64694) lt!2347856))))

(declare-fun lambda!341610 () Int)

(declare-fun forall!15288 (List!64818 Int) Bool)

(assert (=> d!1958882 (forall!15288 lt!2347856 lambda!341610)))

(assert (=> d!1958882 (= (generalisedConcat!1770 lt!2347856) lt!2347978)))

(declare-fun b!6245939 () Bool)

(assert (=> b!6245939 (= e!3800242 e!3800247)))

(declare-fun c!1130046 () Bool)

(assert (=> b!6245939 (= c!1130046 ((_ is Cons!64694) lt!2347856))))

(assert (= (and d!1958882 res!2578717) b!6245941))

(assert (= (and d!1958882 c!1130044) b!6245942))

(assert (= (and d!1958882 (not c!1130044)) b!6245939))

(assert (= (and b!6245939 c!1130046) b!6245936))

(assert (= (and b!6245939 (not c!1130046)) b!6245937))

(assert (= (and d!1958882 res!2578718) b!6245943))

(assert (= (and b!6245943 c!1130045) b!6245935))

(assert (= (and b!6245943 (not c!1130045)) b!6245940))

(assert (= (and b!6245940 c!1130043) b!6245938))

(assert (= (and b!6245940 (not c!1130043)) b!6245934))

(declare-fun m!7069848 () Bool)

(assert (=> b!6245940 m!7069848))

(assert (=> b!6245940 m!7069848))

(declare-fun m!7069850 () Bool)

(assert (=> b!6245940 m!7069850))

(declare-fun m!7069852 () Bool)

(assert (=> b!6245943 m!7069852))

(declare-fun m!7069854 () Bool)

(assert (=> b!6245941 m!7069854))

(declare-fun m!7069856 () Bool)

(assert (=> d!1958882 m!7069856))

(declare-fun m!7069858 () Bool)

(assert (=> d!1958882 m!7069858))

(declare-fun m!7069860 () Bool)

(assert (=> b!6245935 m!7069860))

(declare-fun m!7069862 () Bool)

(assert (=> b!6245934 m!7069862))

(declare-fun m!7069864 () Bool)

(assert (=> b!6245936 m!7069864))

(declare-fun m!7069866 () Bool)

(assert (=> b!6245938 m!7069866))

(assert (=> b!6245267 d!1958882))

(declare-fun b!6245950 () Bool)

(assert (=> b!6245950 true))

(declare-fun bs!1552369 () Bool)

(declare-fun b!6245952 () Bool)

(assert (= bs!1552369 (and b!6245952 b!6245950)))

(declare-fun lt!2347988 () Int)

(declare-fun lambda!341619 () Int)

(declare-fun lt!2347989 () Int)

(declare-fun lambda!341618 () Int)

(assert (=> bs!1552369 (= (= lt!2347988 lt!2347989) (= lambda!341619 lambda!341618))))

(assert (=> b!6245952 true))

(declare-fun d!1958884 () Bool)

(declare-fun e!3800252 () Bool)

(assert (=> d!1958884 e!3800252))

(declare-fun res!2578721 () Bool)

(assert (=> d!1958884 (=> (not res!2578721) (not e!3800252))))

(assert (=> d!1958884 (= res!2578721 (>= lt!2347988 0))))

(declare-fun e!3800253 () Int)

(assert (=> d!1958884 (= lt!2347988 e!3800253)))

(declare-fun c!1130055 () Bool)

(assert (=> d!1958884 (= c!1130055 ((_ is Cons!64695) lt!2347852))))

(assert (=> d!1958884 (= (zipperDepth!298 lt!2347852) lt!2347988)))

(assert (=> b!6245950 (= e!3800253 lt!2347989)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!193 (Context!11114) Int)

(assert (=> b!6245950 (= lt!2347989 (maxBigInt!0 (contextDepth!193 (h!71143 lt!2347852)) (zipperDepth!298 (t!378365 lt!2347852))))))

(declare-fun lambda!341617 () Int)

(declare-fun lt!2347987 () Unit!158023)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!177 (List!64819 Int Int Int) Unit!158023)

(assert (=> b!6245950 (= lt!2347987 (lemmaForallContextDepthBiggerThanTransitive!177 (t!378365 lt!2347852) lt!2347989 (zipperDepth!298 (t!378365 lt!2347852)) lambda!341617))))

(declare-fun forall!15289 (List!64819 Int) Bool)

(assert (=> b!6245950 (forall!15289 (t!378365 lt!2347852) lambda!341618)))

(declare-fun lt!2347990 () Unit!158023)

(assert (=> b!6245950 (= lt!2347990 lt!2347987)))

(declare-fun b!6245951 () Bool)

(assert (=> b!6245951 (= e!3800253 0)))

(assert (=> b!6245952 (= e!3800252 (forall!15289 lt!2347852 lambda!341619))))

(assert (= (and d!1958884 c!1130055) b!6245950))

(assert (= (and d!1958884 (not c!1130055)) b!6245951))

(assert (= (and d!1958884 res!2578721) b!6245952))

(declare-fun m!7069868 () Bool)

(assert (=> b!6245950 m!7069868))

(assert (=> b!6245950 m!7069868))

(declare-fun m!7069870 () Bool)

(assert (=> b!6245950 m!7069870))

(declare-fun m!7069872 () Bool)

(assert (=> b!6245950 m!7069872))

(assert (=> b!6245950 m!7069870))

(assert (=> b!6245950 m!7069870))

(declare-fun m!7069874 () Bool)

(assert (=> b!6245950 m!7069874))

(declare-fun m!7069876 () Bool)

(assert (=> b!6245950 m!7069876))

(declare-fun m!7069878 () Bool)

(assert (=> b!6245952 m!7069878))

(assert (=> b!6245247 d!1958884))

(declare-fun bs!1552370 () Bool)

(declare-fun b!6245955 () Bool)

(assert (= bs!1552370 (and b!6245955 b!6245950)))

(declare-fun lambda!341620 () Int)

(assert (=> bs!1552370 (= lambda!341620 lambda!341617)))

(declare-fun lambda!341621 () Int)

(declare-fun lt!2347993 () Int)

(assert (=> bs!1552370 (= (= lt!2347993 lt!2347989) (= lambda!341621 lambda!341618))))

(declare-fun bs!1552371 () Bool)

(assert (= bs!1552371 (and b!6245955 b!6245952)))

(assert (=> bs!1552371 (= (= lt!2347993 lt!2347988) (= lambda!341621 lambda!341619))))

(assert (=> b!6245955 true))

(declare-fun bs!1552372 () Bool)

(declare-fun b!6245957 () Bool)

(assert (= bs!1552372 (and b!6245957 b!6245950)))

(declare-fun lambda!341622 () Int)

(declare-fun lt!2347992 () Int)

(assert (=> bs!1552372 (= (= lt!2347992 lt!2347989) (= lambda!341622 lambda!341618))))

(declare-fun bs!1552373 () Bool)

(assert (= bs!1552373 (and b!6245957 b!6245952)))

(assert (=> bs!1552373 (= (= lt!2347992 lt!2347988) (= lambda!341622 lambda!341619))))

(declare-fun bs!1552374 () Bool)

(assert (= bs!1552374 (and b!6245957 b!6245955)))

(assert (=> bs!1552374 (= (= lt!2347992 lt!2347993) (= lambda!341622 lambda!341621))))

(assert (=> b!6245957 true))

(declare-fun d!1958886 () Bool)

(declare-fun e!3800254 () Bool)

(assert (=> d!1958886 e!3800254))

(declare-fun res!2578722 () Bool)

(assert (=> d!1958886 (=> (not res!2578722) (not e!3800254))))

(assert (=> d!1958886 (= res!2578722 (>= lt!2347992 0))))

(declare-fun e!3800255 () Int)

(assert (=> d!1958886 (= lt!2347992 e!3800255)))

(declare-fun c!1130056 () Bool)

(assert (=> d!1958886 (= c!1130056 ((_ is Cons!64695) zl!343))))

(assert (=> d!1958886 (= (zipperDepth!298 zl!343) lt!2347992)))

(assert (=> b!6245955 (= e!3800255 lt!2347993)))

(assert (=> b!6245955 (= lt!2347993 (maxBigInt!0 (contextDepth!193 (h!71143 zl!343)) (zipperDepth!298 (t!378365 zl!343))))))

(declare-fun lt!2347991 () Unit!158023)

(assert (=> b!6245955 (= lt!2347991 (lemmaForallContextDepthBiggerThanTransitive!177 (t!378365 zl!343) lt!2347993 (zipperDepth!298 (t!378365 zl!343)) lambda!341620))))

(assert (=> b!6245955 (forall!15289 (t!378365 zl!343) lambda!341621)))

(declare-fun lt!2347994 () Unit!158023)

(assert (=> b!6245955 (= lt!2347994 lt!2347991)))

(declare-fun b!6245956 () Bool)

(assert (=> b!6245956 (= e!3800255 0)))

(assert (=> b!6245957 (= e!3800254 (forall!15289 zl!343 lambda!341622))))

(assert (= (and d!1958886 c!1130056) b!6245955))

(assert (= (and d!1958886 (not c!1130056)) b!6245956))

(assert (= (and d!1958886 res!2578722) b!6245957))

(declare-fun m!7069880 () Bool)

(assert (=> b!6245955 m!7069880))

(assert (=> b!6245955 m!7069880))

(declare-fun m!7069882 () Bool)

(assert (=> b!6245955 m!7069882))

(declare-fun m!7069884 () Bool)

(assert (=> b!6245955 m!7069884))

(assert (=> b!6245955 m!7069882))

(assert (=> b!6245955 m!7069882))

(declare-fun m!7069886 () Bool)

(assert (=> b!6245955 m!7069886))

(declare-fun m!7069888 () Bool)

(assert (=> b!6245955 m!7069888))

(declare-fun m!7069890 () Bool)

(assert (=> b!6245957 m!7069890))

(assert (=> b!6245247 d!1958886))

(declare-fun e!3800258 () Bool)

(declare-fun d!1958888 () Bool)

(assert (=> d!1958888 (= (matchZipper!2185 ((_ map or) lt!2347873 lt!2347864) (t!378366 s!2326)) e!3800258)))

(declare-fun res!2578725 () Bool)

(assert (=> d!1958888 (=> res!2578725 e!3800258)))

(assert (=> d!1958888 (= res!2578725 (matchZipper!2185 lt!2347873 (t!378366 s!2326)))))

(declare-fun lt!2347997 () Unit!158023)

(declare-fun choose!46370 ((InoxSet Context!11114) (InoxSet Context!11114) List!64820) Unit!158023)

(assert (=> d!1958888 (= lt!2347997 (choose!46370 lt!2347873 lt!2347864 (t!378366 s!2326)))))

(assert (=> d!1958888 (= (lemmaZipperConcatMatchesSameAsBothZippers!1004 lt!2347873 lt!2347864 (t!378366 s!2326)) lt!2347997)))

(declare-fun b!6245960 () Bool)

(assert (=> b!6245960 (= e!3800258 (matchZipper!2185 lt!2347864 (t!378366 s!2326)))))

(assert (= (and d!1958888 (not res!2578725)) b!6245960))

(assert (=> d!1958888 m!7069260))

(assert (=> d!1958888 m!7069258))

(declare-fun m!7069892 () Bool)

(assert (=> d!1958888 m!7069892))

(assert (=> b!6245960 m!7069312))

(assert (=> b!6245264 d!1958888))

(declare-fun d!1958890 () Bool)

(declare-fun c!1130057 () Bool)

(assert (=> d!1958890 (= c!1130057 (isEmpty!36718 (t!378366 s!2326)))))

(declare-fun e!3800259 () Bool)

(assert (=> d!1958890 (= (matchZipper!2185 lt!2347873 (t!378366 s!2326)) e!3800259)))

(declare-fun b!6245961 () Bool)

(assert (=> b!6245961 (= e!3800259 (nullableZipper!1945 lt!2347873))))

(declare-fun b!6245962 () Bool)

(assert (=> b!6245962 (= e!3800259 (matchZipper!2185 (derivationStepZipper!2139 lt!2347873 (head!12849 (t!378366 s!2326))) (tail!11934 (t!378366 s!2326))))))

(assert (= (and d!1958890 c!1130057) b!6245961))

(assert (= (and d!1958890 (not c!1130057)) b!6245962))

(assert (=> d!1958890 m!7069688))

(declare-fun m!7069894 () Bool)

(assert (=> b!6245961 m!7069894))

(assert (=> b!6245962 m!7069692))

(assert (=> b!6245962 m!7069692))

(declare-fun m!7069896 () Bool)

(assert (=> b!6245962 m!7069896))

(assert (=> b!6245962 m!7069696))

(assert (=> b!6245962 m!7069896))

(assert (=> b!6245962 m!7069696))

(declare-fun m!7069898 () Bool)

(assert (=> b!6245962 m!7069898))

(assert (=> b!6245264 d!1958890))

(declare-fun d!1958892 () Bool)

(declare-fun c!1130058 () Bool)

(assert (=> d!1958892 (= c!1130058 (isEmpty!36718 (t!378366 s!2326)))))

(declare-fun e!3800260 () Bool)

(assert (=> d!1958892 (= (matchZipper!2185 ((_ map or) lt!2347873 lt!2347864) (t!378366 s!2326)) e!3800260)))

(declare-fun b!6245963 () Bool)

(assert (=> b!6245963 (= e!3800260 (nullableZipper!1945 ((_ map or) lt!2347873 lt!2347864)))))

(declare-fun b!6245964 () Bool)

(assert (=> b!6245964 (= e!3800260 (matchZipper!2185 (derivationStepZipper!2139 ((_ map or) lt!2347873 lt!2347864) (head!12849 (t!378366 s!2326))) (tail!11934 (t!378366 s!2326))))))

(assert (= (and d!1958892 c!1130058) b!6245963))

(assert (= (and d!1958892 (not c!1130058)) b!6245964))

(assert (=> d!1958892 m!7069688))

(declare-fun m!7069900 () Bool)

(assert (=> b!6245963 m!7069900))

(assert (=> b!6245964 m!7069692))

(assert (=> b!6245964 m!7069692))

(declare-fun m!7069902 () Bool)

(assert (=> b!6245964 m!7069902))

(assert (=> b!6245964 m!7069696))

(assert (=> b!6245964 m!7069902))

(assert (=> b!6245964 m!7069696))

(declare-fun m!7069904 () Bool)

(assert (=> b!6245964 m!7069904))

(assert (=> b!6245264 d!1958892))

(declare-fun d!1958894 () Bool)

(declare-fun lt!2348000 () Regex!16173)

(assert (=> d!1958894 (validRegex!7909 lt!2348000)))

(assert (=> d!1958894 (= lt!2348000 (generalisedUnion!2017 (unfocusZipperList!1594 zl!343)))))

(assert (=> d!1958894 (= (unfocusZipper!1915 zl!343) lt!2348000)))

(declare-fun bs!1552375 () Bool)

(assert (= bs!1552375 d!1958894))

(declare-fun m!7069906 () Bool)

(assert (=> bs!1552375 m!7069906))

(assert (=> bs!1552375 m!7069238))

(assert (=> bs!1552375 m!7069238))

(assert (=> bs!1552375 m!7069240))

(assert (=> b!6245243 d!1958894))

(declare-fun bs!1552376 () Bool)

(declare-fun d!1958896 () Bool)

(assert (= bs!1552376 (and d!1958896 d!1958882)))

(declare-fun lambda!341625 () Int)

(assert (=> bs!1552376 (= lambda!341625 lambda!341610)))

(declare-fun b!6245985 () Bool)

(declare-fun e!3800276 () Bool)

(declare-fun lt!2348003 () Regex!16173)

(declare-fun isUnion!1020 (Regex!16173) Bool)

(assert (=> b!6245985 (= e!3800276 (isUnion!1020 lt!2348003))))

(declare-fun b!6245986 () Bool)

(declare-fun e!3800273 () Regex!16173)

(assert (=> b!6245986 (= e!3800273 (Union!16173 (h!71142 (unfocusZipperList!1594 zl!343)) (generalisedUnion!2017 (t!378364 (unfocusZipperList!1594 zl!343)))))))

(declare-fun b!6245987 () Bool)

(declare-fun e!3800277 () Bool)

(assert (=> b!6245987 (= e!3800277 e!3800276)))

(declare-fun c!1130069 () Bool)

(assert (=> b!6245987 (= c!1130069 (isEmpty!36714 (tail!11936 (unfocusZipperList!1594 zl!343))))))

(declare-fun b!6245988 () Bool)

(assert (=> b!6245988 (= e!3800276 (= lt!2348003 (head!12851 (unfocusZipperList!1594 zl!343))))))

(declare-fun b!6245989 () Bool)

(declare-fun e!3800278 () Regex!16173)

(assert (=> b!6245989 (= e!3800278 (h!71142 (unfocusZipperList!1594 zl!343)))))

(declare-fun b!6245990 () Bool)

(declare-fun e!3800274 () Bool)

(assert (=> b!6245990 (= e!3800274 e!3800277)))

(declare-fun c!1130067 () Bool)

(assert (=> b!6245990 (= c!1130067 (isEmpty!36714 (unfocusZipperList!1594 zl!343)))))

(declare-fun b!6245991 () Bool)

(assert (=> b!6245991 (= e!3800278 e!3800273)))

(declare-fun c!1130068 () Bool)

(assert (=> b!6245991 (= c!1130068 ((_ is Cons!64694) (unfocusZipperList!1594 zl!343)))))

(assert (=> d!1958896 e!3800274))

(declare-fun res!2578730 () Bool)

(assert (=> d!1958896 (=> (not res!2578730) (not e!3800274))))

(assert (=> d!1958896 (= res!2578730 (validRegex!7909 lt!2348003))))

(assert (=> d!1958896 (= lt!2348003 e!3800278)))

(declare-fun c!1130070 () Bool)

(declare-fun e!3800275 () Bool)

(assert (=> d!1958896 (= c!1130070 e!3800275)))

(declare-fun res!2578731 () Bool)

(assert (=> d!1958896 (=> (not res!2578731) (not e!3800275))))

(assert (=> d!1958896 (= res!2578731 ((_ is Cons!64694) (unfocusZipperList!1594 zl!343)))))

(assert (=> d!1958896 (forall!15288 (unfocusZipperList!1594 zl!343) lambda!341625)))

(assert (=> d!1958896 (= (generalisedUnion!2017 (unfocusZipperList!1594 zl!343)) lt!2348003)))

(declare-fun b!6245992 () Bool)

(assert (=> b!6245992 (= e!3800273 EmptyLang!16173)))

(declare-fun b!6245993 () Bool)

(assert (=> b!6245993 (= e!3800275 (isEmpty!36714 (t!378364 (unfocusZipperList!1594 zl!343))))))

(declare-fun b!6245994 () Bool)

(declare-fun isEmptyLang!1590 (Regex!16173) Bool)

(assert (=> b!6245994 (= e!3800277 (isEmptyLang!1590 lt!2348003))))

(assert (= (and d!1958896 res!2578731) b!6245993))

(assert (= (and d!1958896 c!1130070) b!6245989))

(assert (= (and d!1958896 (not c!1130070)) b!6245991))

(assert (= (and b!6245991 c!1130068) b!6245986))

(assert (= (and b!6245991 (not c!1130068)) b!6245992))

(assert (= (and d!1958896 res!2578730) b!6245990))

(assert (= (and b!6245990 c!1130067) b!6245994))

(assert (= (and b!6245990 (not c!1130067)) b!6245987))

(assert (= (and b!6245987 c!1130069) b!6245988))

(assert (= (and b!6245987 (not c!1130069)) b!6245985))

(assert (=> b!6245987 m!7069238))

(declare-fun m!7069908 () Bool)

(assert (=> b!6245987 m!7069908))

(assert (=> b!6245987 m!7069908))

(declare-fun m!7069910 () Bool)

(assert (=> b!6245987 m!7069910))

(assert (=> b!6245990 m!7069238))

(declare-fun m!7069912 () Bool)

(assert (=> b!6245990 m!7069912))

(declare-fun m!7069914 () Bool)

(assert (=> b!6245986 m!7069914))

(declare-fun m!7069916 () Bool)

(assert (=> b!6245985 m!7069916))

(assert (=> b!6245988 m!7069238))

(declare-fun m!7069918 () Bool)

(assert (=> b!6245988 m!7069918))

(declare-fun m!7069920 () Bool)

(assert (=> b!6245993 m!7069920))

(declare-fun m!7069922 () Bool)

(assert (=> b!6245994 m!7069922))

(declare-fun m!7069924 () Bool)

(assert (=> d!1958896 m!7069924))

(assert (=> d!1958896 m!7069238))

(declare-fun m!7069926 () Bool)

(assert (=> d!1958896 m!7069926))

(assert (=> b!6245244 d!1958896))

(declare-fun bs!1552377 () Bool)

(declare-fun d!1958898 () Bool)

(assert (= bs!1552377 (and d!1958898 d!1958882)))

(declare-fun lambda!341628 () Int)

(assert (=> bs!1552377 (= lambda!341628 lambda!341610)))

(declare-fun bs!1552378 () Bool)

(assert (= bs!1552378 (and d!1958898 d!1958896)))

(assert (=> bs!1552378 (= lambda!341628 lambda!341625)))

(declare-fun lt!2348006 () List!64818)

(assert (=> d!1958898 (forall!15288 lt!2348006 lambda!341628)))

(declare-fun e!3800281 () List!64818)

(assert (=> d!1958898 (= lt!2348006 e!3800281)))

(declare-fun c!1130073 () Bool)

(assert (=> d!1958898 (= c!1130073 ((_ is Cons!64695) zl!343))))

(assert (=> d!1958898 (= (unfocusZipperList!1594 zl!343) lt!2348006)))

(declare-fun b!6245999 () Bool)

(assert (=> b!6245999 (= e!3800281 (Cons!64694 (generalisedConcat!1770 (exprs!6057 (h!71143 zl!343))) (unfocusZipperList!1594 (t!378365 zl!343))))))

(declare-fun b!6246000 () Bool)

(assert (=> b!6246000 (= e!3800281 Nil!64694)))

(assert (= (and d!1958898 c!1130073) b!6245999))

(assert (= (and d!1958898 (not c!1130073)) b!6246000))

(declare-fun m!7069928 () Bool)

(assert (=> d!1958898 m!7069928))

(assert (=> b!6245999 m!7069220))

(declare-fun m!7069930 () Bool)

(assert (=> b!6245999 m!7069930))

(assert (=> b!6245244 d!1958898))

(declare-fun bs!1552379 () Bool)

(declare-fun d!1958900 () Bool)

(assert (= bs!1552379 (and d!1958900 d!1958882)))

(declare-fun lambda!341631 () Int)

(assert (=> bs!1552379 (= lambda!341631 lambda!341610)))

(declare-fun bs!1552380 () Bool)

(assert (= bs!1552380 (and d!1958900 d!1958896)))

(assert (=> bs!1552380 (= lambda!341631 lambda!341625)))

(declare-fun bs!1552381 () Bool)

(assert (= bs!1552381 (and d!1958900 d!1958898)))

(assert (=> bs!1552381 (= lambda!341631 lambda!341628)))

(assert (=> d!1958900 (= (inv!83679 setElem!42458) (forall!15288 (exprs!6057 setElem!42458) lambda!341631))))

(declare-fun bs!1552382 () Bool)

(assert (= bs!1552382 d!1958900))

(declare-fun m!7069932 () Bool)

(assert (=> bs!1552382 m!7069932))

(assert (=> setNonEmpty!42458 d!1958900))

(declare-fun d!1958902 () Bool)

(declare-fun c!1130074 () Bool)

(assert (=> d!1958902 (= c!1130074 (isEmpty!36718 (t!378366 s!2326)))))

(declare-fun e!3800282 () Bool)

(assert (=> d!1958902 (= (matchZipper!2185 lt!2347855 (t!378366 s!2326)) e!3800282)))

(declare-fun b!6246001 () Bool)

(assert (=> b!6246001 (= e!3800282 (nullableZipper!1945 lt!2347855))))

(declare-fun b!6246002 () Bool)

(assert (=> b!6246002 (= e!3800282 (matchZipper!2185 (derivationStepZipper!2139 lt!2347855 (head!12849 (t!378366 s!2326))) (tail!11934 (t!378366 s!2326))))))

(assert (= (and d!1958902 c!1130074) b!6246001))

(assert (= (and d!1958902 (not c!1130074)) b!6246002))

(assert (=> d!1958902 m!7069688))

(declare-fun m!7069934 () Bool)

(assert (=> b!6246001 m!7069934))

(assert (=> b!6246002 m!7069692))

(assert (=> b!6246002 m!7069692))

(declare-fun m!7069936 () Bool)

(assert (=> b!6246002 m!7069936))

(assert (=> b!6246002 m!7069696))

(assert (=> b!6246002 m!7069936))

(assert (=> b!6246002 m!7069696))

(declare-fun m!7069938 () Bool)

(assert (=> b!6246002 m!7069938))

(assert (=> b!6245261 d!1958902))

(assert (=> b!6245261 d!1958870))

(declare-fun d!1958904 () Bool)

(assert (=> d!1958904 (= (flatMap!1678 lt!2347866 lambda!341549) (choose!46369 lt!2347866 lambda!341549))))

(declare-fun bs!1552383 () Bool)

(assert (= bs!1552383 d!1958904))

(declare-fun m!7069940 () Bool)

(assert (=> bs!1552383 m!7069940))

(assert (=> b!6245261 d!1958904))

(declare-fun d!1958906 () Bool)

(assert (=> d!1958906 (= (flatMap!1678 lt!2347866 lambda!341549) (dynLambda!25542 lambda!341549 lt!2347851))))

(declare-fun lt!2348007 () Unit!158023)

(assert (=> d!1958906 (= lt!2348007 (choose!46368 lt!2347866 lt!2347851 lambda!341549))))

(assert (=> d!1958906 (= lt!2347866 (store ((as const (Array Context!11114 Bool)) false) lt!2347851 true))))

(assert (=> d!1958906 (= (lemmaFlatMapOnSingletonSet!1204 lt!2347866 lt!2347851 lambda!341549) lt!2348007)))

(declare-fun b_lambda!237565 () Bool)

(assert (=> (not b_lambda!237565) (not d!1958906)))

(declare-fun bs!1552384 () Bool)

(assert (= bs!1552384 d!1958906))

(assert (=> bs!1552384 m!7069300))

(declare-fun m!7069942 () Bool)

(assert (=> bs!1552384 m!7069942))

(declare-fun m!7069944 () Bool)

(assert (=> bs!1552384 m!7069944))

(assert (=> bs!1552384 m!7069232))

(assert (=> b!6245261 d!1958906))

(declare-fun d!1958908 () Bool)

(declare-fun e!3800283 () Bool)

(assert (=> d!1958908 (= (matchZipper!2185 ((_ map or) lt!2347861 lt!2347871) (t!378366 s!2326)) e!3800283)))

(declare-fun res!2578732 () Bool)

(assert (=> d!1958908 (=> res!2578732 e!3800283)))

(assert (=> d!1958908 (= res!2578732 (matchZipper!2185 lt!2347861 (t!378366 s!2326)))))

(declare-fun lt!2348008 () Unit!158023)

(assert (=> d!1958908 (= lt!2348008 (choose!46370 lt!2347861 lt!2347871 (t!378366 s!2326)))))

(assert (=> d!1958908 (= (lemmaZipperConcatMatchesSameAsBothZippers!1004 lt!2347861 lt!2347871 (t!378366 s!2326)) lt!2348008)))

(declare-fun b!6246003 () Bool)

(assert (=> b!6246003 (= e!3800283 (matchZipper!2185 lt!2347871 (t!378366 s!2326)))))

(assert (= (and d!1958908 (not res!2578732)) b!6246003))

(declare-fun m!7069946 () Bool)

(assert (=> d!1958908 m!7069946))

(assert (=> d!1958908 m!7069270))

(declare-fun m!7069948 () Bool)

(assert (=> d!1958908 m!7069948))

(assert (=> b!6246003 m!7069262))

(assert (=> b!6245261 d!1958908))

(declare-fun d!1958910 () Bool)

(declare-fun c!1130075 () Bool)

(assert (=> d!1958910 (= c!1130075 (isEmpty!36718 (t!378366 s!2326)))))

(declare-fun e!3800284 () Bool)

(assert (=> d!1958910 (= (matchZipper!2185 lt!2347878 (t!378366 s!2326)) e!3800284)))

(declare-fun b!6246004 () Bool)

(assert (=> b!6246004 (= e!3800284 (nullableZipper!1945 lt!2347878))))

(declare-fun b!6246005 () Bool)

(assert (=> b!6246005 (= e!3800284 (matchZipper!2185 (derivationStepZipper!2139 lt!2347878 (head!12849 (t!378366 s!2326))) (tail!11934 (t!378366 s!2326))))))

(assert (= (and d!1958910 c!1130075) b!6246004))

(assert (= (and d!1958910 (not c!1130075)) b!6246005))

(assert (=> d!1958910 m!7069688))

(declare-fun m!7069950 () Bool)

(assert (=> b!6246004 m!7069950))

(assert (=> b!6246005 m!7069692))

(assert (=> b!6246005 m!7069692))

(declare-fun m!7069952 () Bool)

(assert (=> b!6246005 m!7069952))

(assert (=> b!6246005 m!7069696))

(assert (=> b!6246005 m!7069952))

(assert (=> b!6246005 m!7069696))

(declare-fun m!7069954 () Bool)

(assert (=> b!6246005 m!7069954))

(assert (=> b!6245261 d!1958910))

(assert (=> b!6245240 d!1958890))

(declare-fun d!1958912 () Bool)

(declare-fun c!1130076 () Bool)

(assert (=> d!1958912 (= c!1130076 (isEmpty!36718 (t!378366 s!2326)))))

(declare-fun e!3800285 () Bool)

(assert (=> d!1958912 (= (matchZipper!2185 lt!2347870 (t!378366 s!2326)) e!3800285)))

(declare-fun b!6246006 () Bool)

(assert (=> b!6246006 (= e!3800285 (nullableZipper!1945 lt!2347870))))

(declare-fun b!6246007 () Bool)

(assert (=> b!6246007 (= e!3800285 (matchZipper!2185 (derivationStepZipper!2139 lt!2347870 (head!12849 (t!378366 s!2326))) (tail!11934 (t!378366 s!2326))))))

(assert (= (and d!1958912 c!1130076) b!6246006))

(assert (= (and d!1958912 (not c!1130076)) b!6246007))

(assert (=> d!1958912 m!7069688))

(declare-fun m!7069956 () Bool)

(assert (=> b!6246006 m!7069956))

(assert (=> b!6246007 m!7069692))

(assert (=> b!6246007 m!7069692))

(declare-fun m!7069958 () Bool)

(assert (=> b!6246007 m!7069958))

(assert (=> b!6246007 m!7069696))

(assert (=> b!6246007 m!7069958))

(assert (=> b!6246007 m!7069696))

(declare-fun m!7069960 () Bool)

(assert (=> b!6246007 m!7069960))

(assert (=> b!6245240 d!1958912))

(declare-fun d!1958914 () Bool)

(declare-fun c!1130077 () Bool)

(assert (=> d!1958914 (= c!1130077 (isEmpty!36718 (t!378366 s!2326)))))

(declare-fun e!3800286 () Bool)

(assert (=> d!1958914 (= (matchZipper!2185 lt!2347861 (t!378366 s!2326)) e!3800286)))

(declare-fun b!6246008 () Bool)

(assert (=> b!6246008 (= e!3800286 (nullableZipper!1945 lt!2347861))))

(declare-fun b!6246009 () Bool)

(assert (=> b!6246009 (= e!3800286 (matchZipper!2185 (derivationStepZipper!2139 lt!2347861 (head!12849 (t!378366 s!2326))) (tail!11934 (t!378366 s!2326))))))

(assert (= (and d!1958914 c!1130077) b!6246008))

(assert (= (and d!1958914 (not c!1130077)) b!6246009))

(assert (=> d!1958914 m!7069688))

(declare-fun m!7069962 () Bool)

(assert (=> b!6246008 m!7069962))

(assert (=> b!6246009 m!7069692))

(assert (=> b!6246009 m!7069692))

(declare-fun m!7069964 () Bool)

(assert (=> b!6246009 m!7069964))

(assert (=> b!6246009 m!7069696))

(assert (=> b!6246009 m!7069964))

(assert (=> b!6246009 m!7069696))

(declare-fun m!7069966 () Bool)

(assert (=> b!6246009 m!7069966))

(assert (=> b!6245240 d!1958914))

(declare-fun e!3800287 () Bool)

(declare-fun d!1958916 () Bool)

(assert (=> d!1958916 (= (matchZipper!2185 ((_ map or) lt!2347861 lt!2347872) (t!378366 s!2326)) e!3800287)))

(declare-fun res!2578733 () Bool)

(assert (=> d!1958916 (=> res!2578733 e!3800287)))

(assert (=> d!1958916 (= res!2578733 (matchZipper!2185 lt!2347861 (t!378366 s!2326)))))

(declare-fun lt!2348009 () Unit!158023)

(assert (=> d!1958916 (= lt!2348009 (choose!46370 lt!2347861 lt!2347872 (t!378366 s!2326)))))

(assert (=> d!1958916 (= (lemmaZipperConcatMatchesSameAsBothZippers!1004 lt!2347861 lt!2347872 (t!378366 s!2326)) lt!2348009)))

(declare-fun b!6246010 () Bool)

(assert (=> b!6246010 (= e!3800287 (matchZipper!2185 lt!2347872 (t!378366 s!2326)))))

(assert (= (and d!1958916 (not res!2578733)) b!6246010))

(declare-fun m!7069968 () Bool)

(assert (=> d!1958916 m!7069968))

(assert (=> d!1958916 m!7069270))

(declare-fun m!7069970 () Bool)

(assert (=> d!1958916 m!7069970))

(assert (=> b!6246010 m!7069222))

(assert (=> b!6245240 d!1958916))

(declare-fun bs!1552385 () Bool)

(declare-fun d!1958918 () Bool)

(assert (= bs!1552385 (and d!1958918 d!1958882)))

(declare-fun lambda!341632 () Int)

(assert (=> bs!1552385 (= lambda!341632 lambda!341610)))

(declare-fun bs!1552386 () Bool)

(assert (= bs!1552386 (and d!1958918 d!1958896)))

(assert (=> bs!1552386 (= lambda!341632 lambda!341625)))

(declare-fun bs!1552387 () Bool)

(assert (= bs!1552387 (and d!1958918 d!1958898)))

(assert (=> bs!1552387 (= lambda!341632 lambda!341628)))

(declare-fun bs!1552388 () Bool)

(assert (= bs!1552388 (and d!1958918 d!1958900)))

(assert (=> bs!1552388 (= lambda!341632 lambda!341631)))

(declare-fun b!6246011 () Bool)

(declare-fun e!3800290 () Bool)

(declare-fun lt!2348010 () Regex!16173)

(assert (=> b!6246011 (= e!3800290 (isConcat!1104 lt!2348010))))

(declare-fun b!6246012 () Bool)

(declare-fun e!3800291 () Bool)

(assert (=> b!6246012 (= e!3800291 (isEmptyExpr!1581 lt!2348010))))

(declare-fun b!6246013 () Bool)

(declare-fun e!3800293 () Regex!16173)

(assert (=> b!6246013 (= e!3800293 (Concat!25018 (h!71142 (exprs!6057 (h!71143 zl!343))) (generalisedConcat!1770 (t!378364 (exprs!6057 (h!71143 zl!343))))))))

(declare-fun b!6246014 () Bool)

(assert (=> b!6246014 (= e!3800293 EmptyExpr!16173)))

(declare-fun b!6246015 () Bool)

(assert (=> b!6246015 (= e!3800290 (= lt!2348010 (head!12851 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun b!6246017 () Bool)

(assert (=> b!6246017 (= e!3800291 e!3800290)))

(declare-fun c!1130078 () Bool)

(assert (=> b!6246017 (= c!1130078 (isEmpty!36714 (tail!11936 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun b!6246018 () Bool)

(declare-fun e!3800292 () Bool)

(assert (=> b!6246018 (= e!3800292 (isEmpty!36714 (t!378364 (exprs!6057 (h!71143 zl!343)))))))

(declare-fun b!6246019 () Bool)

(declare-fun e!3800288 () Regex!16173)

(assert (=> b!6246019 (= e!3800288 (h!71142 (exprs!6057 (h!71143 zl!343))))))

(declare-fun b!6246020 () Bool)

(declare-fun e!3800289 () Bool)

(assert (=> b!6246020 (= e!3800289 e!3800291)))

(declare-fun c!1130080 () Bool)

(assert (=> b!6246020 (= c!1130080 (isEmpty!36714 (exprs!6057 (h!71143 zl!343))))))

(assert (=> d!1958918 e!3800289))

(declare-fun res!2578735 () Bool)

(assert (=> d!1958918 (=> (not res!2578735) (not e!3800289))))

(assert (=> d!1958918 (= res!2578735 (validRegex!7909 lt!2348010))))

(assert (=> d!1958918 (= lt!2348010 e!3800288)))

(declare-fun c!1130079 () Bool)

(assert (=> d!1958918 (= c!1130079 e!3800292)))

(declare-fun res!2578734 () Bool)

(assert (=> d!1958918 (=> (not res!2578734) (not e!3800292))))

(assert (=> d!1958918 (= res!2578734 ((_ is Cons!64694) (exprs!6057 (h!71143 zl!343))))))

(assert (=> d!1958918 (forall!15288 (exprs!6057 (h!71143 zl!343)) lambda!341632)))

(assert (=> d!1958918 (= (generalisedConcat!1770 (exprs!6057 (h!71143 zl!343))) lt!2348010)))

(declare-fun b!6246016 () Bool)

(assert (=> b!6246016 (= e!3800288 e!3800293)))

(declare-fun c!1130081 () Bool)

(assert (=> b!6246016 (= c!1130081 ((_ is Cons!64694) (exprs!6057 (h!71143 zl!343))))))

(assert (= (and d!1958918 res!2578734) b!6246018))

(assert (= (and d!1958918 c!1130079) b!6246019))

(assert (= (and d!1958918 (not c!1130079)) b!6246016))

(assert (= (and b!6246016 c!1130081) b!6246013))

(assert (= (and b!6246016 (not c!1130081)) b!6246014))

(assert (= (and d!1958918 res!2578735) b!6246020))

(assert (= (and b!6246020 c!1130080) b!6246012))

(assert (= (and b!6246020 (not c!1130080)) b!6246017))

(assert (= (and b!6246017 c!1130078) b!6246015))

(assert (= (and b!6246017 (not c!1130078)) b!6246011))

(declare-fun m!7069972 () Bool)

(assert (=> b!6246017 m!7069972))

(assert (=> b!6246017 m!7069972))

(declare-fun m!7069974 () Bool)

(assert (=> b!6246017 m!7069974))

(declare-fun m!7069976 () Bool)

(assert (=> b!6246020 m!7069976))

(assert (=> b!6246018 m!7069298))

(declare-fun m!7069978 () Bool)

(assert (=> d!1958918 m!7069978))

(declare-fun m!7069980 () Bool)

(assert (=> d!1958918 m!7069980))

(declare-fun m!7069982 () Bool)

(assert (=> b!6246012 m!7069982))

(declare-fun m!7069984 () Bool)

(assert (=> b!6246011 m!7069984))

(declare-fun m!7069986 () Bool)

(assert (=> b!6246013 m!7069986))

(declare-fun m!7069988 () Bool)

(assert (=> b!6246015 m!7069988))

(assert (=> b!6245262 d!1958918))

(declare-fun bs!1552389 () Bool)

(declare-fun b!6246059 () Bool)

(assert (= bs!1552389 (and b!6246059 b!6245271)))

(declare-fun lambda!341637 () Int)

(assert (=> bs!1552389 (not (= lambda!341637 lambda!341547))))

(declare-fun bs!1552390 () Bool)

(assert (= bs!1552390 (and b!6246059 d!1958834)))

(assert (=> bs!1552390 (not (= lambda!341637 lambda!341603))))

(assert (=> bs!1552390 (not (= lambda!341637 lambda!341602))))

(declare-fun bs!1552391 () Bool)

(assert (= bs!1552391 (and b!6246059 d!1958832)))

(assert (=> bs!1552391 (not (= lambda!341637 lambda!341597))))

(assert (=> bs!1552389 (not (= lambda!341637 lambda!341548))))

(assert (=> b!6246059 true))

(assert (=> b!6246059 true))

(declare-fun bs!1552392 () Bool)

(declare-fun b!6246056 () Bool)

(assert (= bs!1552392 (and b!6246056 b!6246059)))

(declare-fun lambda!341638 () Int)

(assert (=> bs!1552392 (not (= lambda!341638 lambda!341637))))

(declare-fun bs!1552393 () Bool)

(assert (= bs!1552393 (and b!6246056 b!6245271)))

(assert (=> bs!1552393 (not (= lambda!341638 lambda!341547))))

(declare-fun bs!1552394 () Bool)

(assert (= bs!1552394 (and b!6246056 d!1958834)))

(assert (=> bs!1552394 (= lambda!341638 lambda!341603)))

(assert (=> bs!1552394 (not (= lambda!341638 lambda!341602))))

(declare-fun bs!1552395 () Bool)

(assert (= bs!1552395 (and b!6246056 d!1958832)))

(assert (=> bs!1552395 (not (= lambda!341638 lambda!341597))))

(assert (=> bs!1552393 (= lambda!341638 lambda!341548)))

(assert (=> b!6246056 true))

(assert (=> b!6246056 true))

(declare-fun c!1130093 () Bool)

(declare-fun bm!526329 () Bool)

(declare-fun call!526334 () Bool)

(assert (=> bm!526329 (= call!526334 (Exists!3243 (ite c!1130093 lambda!341637 lambda!341638)))))

(declare-fun d!1958920 () Bool)

(declare-fun c!1130090 () Bool)

(assert (=> d!1958920 (= c!1130090 ((_ is EmptyExpr!16173) r!7292))))

(declare-fun e!3800317 () Bool)

(assert (=> d!1958920 (= (matchRSpec!3274 r!7292 s!2326) e!3800317)))

(declare-fun b!6246053 () Bool)

(declare-fun e!3800312 () Bool)

(declare-fun e!3800318 () Bool)

(assert (=> b!6246053 (= e!3800312 e!3800318)))

(declare-fun res!2578754 () Bool)

(assert (=> b!6246053 (= res!2578754 (matchRSpec!3274 (regOne!32859 r!7292) s!2326))))

(assert (=> b!6246053 (=> res!2578754 e!3800318)))

(declare-fun b!6246054 () Bool)

(declare-fun e!3800316 () Bool)

(assert (=> b!6246054 (= e!3800312 e!3800316)))

(assert (=> b!6246054 (= c!1130093 ((_ is Star!16173) r!7292))))

(declare-fun b!6246055 () Bool)

(assert (=> b!6246055 (= e!3800318 (matchRSpec!3274 (regTwo!32859 r!7292) s!2326))))

(assert (=> b!6246056 (= e!3800316 call!526334)))

(declare-fun b!6246057 () Bool)

(declare-fun c!1130091 () Bool)

(assert (=> b!6246057 (= c!1130091 ((_ is Union!16173) r!7292))))

(declare-fun e!3800315 () Bool)

(assert (=> b!6246057 (= e!3800315 e!3800312)))

(declare-fun b!6246058 () Bool)

(assert (=> b!6246058 (= e!3800315 (= s!2326 (Cons!64696 (c!1129830 r!7292) Nil!64696)))))

(declare-fun e!3800314 () Bool)

(assert (=> b!6246059 (= e!3800314 call!526334)))

(declare-fun b!6246060 () Bool)

(declare-fun c!1130092 () Bool)

(assert (=> b!6246060 (= c!1130092 ((_ is ElementMatch!16173) r!7292))))

(declare-fun e!3800313 () Bool)

(assert (=> b!6246060 (= e!3800313 e!3800315)))

(declare-fun bm!526330 () Bool)

(declare-fun call!526335 () Bool)

(assert (=> bm!526330 (= call!526335 (isEmpty!36718 s!2326))))

(declare-fun b!6246061 () Bool)

(assert (=> b!6246061 (= e!3800317 e!3800313)))

(declare-fun res!2578753 () Bool)

(assert (=> b!6246061 (= res!2578753 (not ((_ is EmptyLang!16173) r!7292)))))

(assert (=> b!6246061 (=> (not res!2578753) (not e!3800313))))

(declare-fun b!6246062 () Bool)

(declare-fun res!2578752 () Bool)

(assert (=> b!6246062 (=> res!2578752 e!3800314)))

(assert (=> b!6246062 (= res!2578752 call!526335)))

(assert (=> b!6246062 (= e!3800316 e!3800314)))

(declare-fun b!6246063 () Bool)

(assert (=> b!6246063 (= e!3800317 call!526335)))

(assert (= (and d!1958920 c!1130090) b!6246063))

(assert (= (and d!1958920 (not c!1130090)) b!6246061))

(assert (= (and b!6246061 res!2578753) b!6246060))

(assert (= (and b!6246060 c!1130092) b!6246058))

(assert (= (and b!6246060 (not c!1130092)) b!6246057))

(assert (= (and b!6246057 c!1130091) b!6246053))

(assert (= (and b!6246057 (not c!1130091)) b!6246054))

(assert (= (and b!6246053 (not res!2578754)) b!6246055))

(assert (= (and b!6246054 c!1130093) b!6246062))

(assert (= (and b!6246054 (not c!1130093)) b!6246056))

(assert (= (and b!6246062 (not res!2578752)) b!6246059))

(assert (= (or b!6246059 b!6246056) bm!526329))

(assert (= (or b!6246063 b!6246062) bm!526330))

(declare-fun m!7069990 () Bool)

(assert (=> bm!526329 m!7069990))

(declare-fun m!7069992 () Bool)

(assert (=> b!6246053 m!7069992))

(declare-fun m!7069994 () Bool)

(assert (=> b!6246055 m!7069994))

(declare-fun m!7069996 () Bool)

(assert (=> bm!526330 m!7069996))

(assert (=> b!6245241 d!1958920))

(declare-fun b!6246092 () Bool)

(declare-fun res!2578771 () Bool)

(declare-fun e!3800338 () Bool)

(assert (=> b!6246092 (=> (not res!2578771) (not e!3800338))))

(declare-fun call!526338 () Bool)

(assert (=> b!6246092 (= res!2578771 (not call!526338))))

(declare-fun b!6246093 () Bool)

(declare-fun res!2578776 () Bool)

(assert (=> b!6246093 (=> (not res!2578776) (not e!3800338))))

(assert (=> b!6246093 (= res!2578776 (isEmpty!36718 (tail!11934 s!2326)))))

(declare-fun bm!526333 () Bool)

(assert (=> bm!526333 (= call!526338 (isEmpty!36718 s!2326))))

(declare-fun b!6246094 () Bool)

(declare-fun e!3800333 () Bool)

(assert (=> b!6246094 (= e!3800333 (nullable!6166 r!7292))))

(declare-fun b!6246095 () Bool)

(declare-fun e!3800334 () Bool)

(declare-fun e!3800339 () Bool)

(assert (=> b!6246095 (= e!3800334 e!3800339)))

(declare-fun res!2578777 () Bool)

(assert (=> b!6246095 (=> res!2578777 e!3800339)))

(assert (=> b!6246095 (= res!2578777 call!526338)))

(declare-fun b!6246096 () Bool)

(assert (=> b!6246096 (= e!3800338 (= (head!12849 s!2326) (c!1129830 r!7292)))))

(declare-fun b!6246098 () Bool)

(assert (=> b!6246098 (= e!3800339 (not (= (head!12849 s!2326) (c!1129830 r!7292))))))

(declare-fun b!6246099 () Bool)

(declare-fun res!2578772 () Bool)

(assert (=> b!6246099 (=> res!2578772 e!3800339)))

(assert (=> b!6246099 (= res!2578772 (not (isEmpty!36718 (tail!11934 s!2326))))))

(declare-fun b!6246100 () Bool)

(declare-fun res!2578774 () Bool)

(declare-fun e!3800336 () Bool)

(assert (=> b!6246100 (=> res!2578774 e!3800336)))

(assert (=> b!6246100 (= res!2578774 (not ((_ is ElementMatch!16173) r!7292)))))

(declare-fun e!3800335 () Bool)

(assert (=> b!6246100 (= e!3800335 e!3800336)))

(declare-fun b!6246101 () Bool)

(declare-fun lt!2348013 () Bool)

(assert (=> b!6246101 (= e!3800335 (not lt!2348013))))

(declare-fun b!6246102 () Bool)

(declare-fun res!2578773 () Bool)

(assert (=> b!6246102 (=> res!2578773 e!3800336)))

(assert (=> b!6246102 (= res!2578773 e!3800338)))

(declare-fun res!2578775 () Bool)

(assert (=> b!6246102 (=> (not res!2578775) (not e!3800338))))

(assert (=> b!6246102 (= res!2578775 lt!2348013)))

(declare-fun b!6246103 () Bool)

(declare-fun e!3800337 () Bool)

(assert (=> b!6246103 (= e!3800337 (= lt!2348013 call!526338))))

(declare-fun b!6246097 () Bool)

(declare-fun derivativeStep!4884 (Regex!16173 C!32616) Regex!16173)

(assert (=> b!6246097 (= e!3800333 (matchR!8356 (derivativeStep!4884 r!7292 (head!12849 s!2326)) (tail!11934 s!2326)))))

(declare-fun d!1958922 () Bool)

(assert (=> d!1958922 e!3800337))

(declare-fun c!1130100 () Bool)

(assert (=> d!1958922 (= c!1130100 ((_ is EmptyExpr!16173) r!7292))))

(assert (=> d!1958922 (= lt!2348013 e!3800333)))

(declare-fun c!1130101 () Bool)

(assert (=> d!1958922 (= c!1130101 (isEmpty!36718 s!2326))))

(assert (=> d!1958922 (validRegex!7909 r!7292)))

(assert (=> d!1958922 (= (matchR!8356 r!7292 s!2326) lt!2348013)))

(declare-fun b!6246104 () Bool)

(assert (=> b!6246104 (= e!3800336 e!3800334)))

(declare-fun res!2578778 () Bool)

(assert (=> b!6246104 (=> (not res!2578778) (not e!3800334))))

(assert (=> b!6246104 (= res!2578778 (not lt!2348013))))

(declare-fun b!6246105 () Bool)

(assert (=> b!6246105 (= e!3800337 e!3800335)))

(declare-fun c!1130102 () Bool)

(assert (=> b!6246105 (= c!1130102 ((_ is EmptyLang!16173) r!7292))))

(assert (= (and d!1958922 c!1130101) b!6246094))

(assert (= (and d!1958922 (not c!1130101)) b!6246097))

(assert (= (and d!1958922 c!1130100) b!6246103))

(assert (= (and d!1958922 (not c!1130100)) b!6246105))

(assert (= (and b!6246105 c!1130102) b!6246101))

(assert (= (and b!6246105 (not c!1130102)) b!6246100))

(assert (= (and b!6246100 (not res!2578774)) b!6246102))

(assert (= (and b!6246102 res!2578775) b!6246092))

(assert (= (and b!6246092 res!2578771) b!6246093))

(assert (= (and b!6246093 res!2578776) b!6246096))

(assert (= (and b!6246102 (not res!2578773)) b!6246104))

(assert (= (and b!6246104 res!2578778) b!6246095))

(assert (= (and b!6246095 (not res!2578777)) b!6246099))

(assert (= (and b!6246099 (not res!2578772)) b!6246098))

(assert (= (or b!6246103 b!6246092 b!6246095) bm!526333))

(declare-fun m!7069998 () Bool)

(assert (=> b!6246097 m!7069998))

(assert (=> b!6246097 m!7069998))

(declare-fun m!7070000 () Bool)

(assert (=> b!6246097 m!7070000))

(declare-fun m!7070002 () Bool)

(assert (=> b!6246097 m!7070002))

(assert (=> b!6246097 m!7070000))

(assert (=> b!6246097 m!7070002))

(declare-fun m!7070004 () Bool)

(assert (=> b!6246097 m!7070004))

(assert (=> d!1958922 m!7069996))

(assert (=> d!1958922 m!7069208))

(assert (=> b!6246099 m!7070002))

(assert (=> b!6246099 m!7070002))

(declare-fun m!7070006 () Bool)

(assert (=> b!6246099 m!7070006))

(assert (=> b!6246093 m!7070002))

(assert (=> b!6246093 m!7070002))

(assert (=> b!6246093 m!7070006))

(assert (=> bm!526333 m!7069996))

(assert (=> b!6246098 m!7069998))

(declare-fun m!7070008 () Bool)

(assert (=> b!6246094 m!7070008))

(assert (=> b!6246096 m!7069998))

(assert (=> b!6245241 d!1958922))

(declare-fun d!1958924 () Bool)

(assert (=> d!1958924 (= (matchR!8356 r!7292 s!2326) (matchRSpec!3274 r!7292 s!2326))))

(declare-fun lt!2348016 () Unit!158023)

(declare-fun choose!46371 (Regex!16173 List!64820) Unit!158023)

(assert (=> d!1958924 (= lt!2348016 (choose!46371 r!7292 s!2326))))

(assert (=> d!1958924 (validRegex!7909 r!7292)))

(assert (=> d!1958924 (= (mainMatchTheorem!3274 r!7292 s!2326) lt!2348016)))

(declare-fun bs!1552396 () Bool)

(assert (= bs!1552396 d!1958924))

(assert (=> bs!1552396 m!7069276))

(assert (=> bs!1552396 m!7069274))

(declare-fun m!7070010 () Bool)

(assert (=> bs!1552396 m!7070010))

(assert (=> bs!1552396 m!7069208))

(assert (=> b!6245241 d!1958924))

(declare-fun bs!1552397 () Bool)

(declare-fun d!1958926 () Bool)

(assert (= bs!1552397 (and d!1958926 d!1958918)))

(declare-fun lambda!341639 () Int)

(assert (=> bs!1552397 (= lambda!341639 lambda!341632)))

(declare-fun bs!1552398 () Bool)

(assert (= bs!1552398 (and d!1958926 d!1958898)))

(assert (=> bs!1552398 (= lambda!341639 lambda!341628)))

(declare-fun bs!1552399 () Bool)

(assert (= bs!1552399 (and d!1958926 d!1958896)))

(assert (=> bs!1552399 (= lambda!341639 lambda!341625)))

(declare-fun bs!1552400 () Bool)

(assert (= bs!1552400 (and d!1958926 d!1958882)))

(assert (=> bs!1552400 (= lambda!341639 lambda!341610)))

(declare-fun bs!1552401 () Bool)

(assert (= bs!1552401 (and d!1958926 d!1958900)))

(assert (=> bs!1552401 (= lambda!341639 lambda!341631)))

(assert (=> d!1958926 (= (inv!83679 (h!71143 zl!343)) (forall!15288 (exprs!6057 (h!71143 zl!343)) lambda!341639))))

(declare-fun bs!1552402 () Bool)

(assert (= bs!1552402 d!1958926))

(declare-fun m!7070012 () Bool)

(assert (=> bs!1552402 m!7070012))

(assert (=> b!6245263 d!1958926))

(declare-fun d!1958928 () Bool)

(assert (=> d!1958928 (= (isEmpty!36714 (t!378364 (exprs!6057 (h!71143 zl!343)))) ((_ is Nil!64694) (t!378364 (exprs!6057 (h!71143 zl!343)))))))

(assert (=> b!6245238 d!1958928))

(declare-fun d!1958930 () Bool)

(declare-fun lt!2348019 () Int)

(assert (=> d!1958930 (>= lt!2348019 0)))

(declare-fun e!3800342 () Int)

(assert (=> d!1958930 (= lt!2348019 e!3800342)))

(declare-fun c!1130105 () Bool)

(assert (=> d!1958930 (= c!1130105 ((_ is Cons!64695) lt!2347852))))

(assert (=> d!1958930 (= (zipperDepthTotal!326 lt!2347852) lt!2348019)))

(declare-fun b!6246110 () Bool)

(assert (=> b!6246110 (= e!3800342 (+ (contextDepthTotal!296 (h!71143 lt!2347852)) (zipperDepthTotal!326 (t!378365 lt!2347852))))))

(declare-fun b!6246111 () Bool)

(assert (=> b!6246111 (= e!3800342 0)))

(assert (= (and d!1958930 c!1130105) b!6246110))

(assert (= (and d!1958930 (not c!1130105)) b!6246111))

(declare-fun m!7070014 () Bool)

(assert (=> b!6246110 m!7070014))

(declare-fun m!7070016 () Bool)

(assert (=> b!6246110 m!7070016))

(assert (=> b!6245260 d!1958930))

(declare-fun d!1958932 () Bool)

(declare-fun lt!2348020 () Int)

(assert (=> d!1958932 (>= lt!2348020 0)))

(declare-fun e!3800343 () Int)

(assert (=> d!1958932 (= lt!2348020 e!3800343)))

(declare-fun c!1130106 () Bool)

(assert (=> d!1958932 (= c!1130106 ((_ is Cons!64695) zl!343))))

(assert (=> d!1958932 (= (zipperDepthTotal!326 zl!343) lt!2348020)))

(declare-fun b!6246112 () Bool)

(assert (=> b!6246112 (= e!3800343 (+ (contextDepthTotal!296 (h!71143 zl!343)) (zipperDepthTotal!326 (t!378365 zl!343))))))

(declare-fun b!6246113 () Bool)

(assert (=> b!6246113 (= e!3800343 0)))

(assert (= (and d!1958932 c!1130106) b!6246112))

(assert (= (and d!1958932 (not c!1130106)) b!6246113))

(assert (=> b!6246112 m!7069282))

(declare-fun m!7070018 () Bool)

(assert (=> b!6246112 m!7070018))

(assert (=> b!6245260 d!1958932))

(declare-fun b!6246127 () Bool)

(declare-fun e!3800346 () Bool)

(declare-fun tp!1742761 () Bool)

(declare-fun tp!1742759 () Bool)

(assert (=> b!6246127 (= e!3800346 (and tp!1742761 tp!1742759))))

(declare-fun b!6246125 () Bool)

(declare-fun tp!1742762 () Bool)

(declare-fun tp!1742763 () Bool)

(assert (=> b!6246125 (= e!3800346 (and tp!1742762 tp!1742763))))

(declare-fun b!6246126 () Bool)

(declare-fun tp!1742760 () Bool)

(assert (=> b!6246126 (= e!3800346 tp!1742760)))

(assert (=> b!6245251 (= tp!1742685 e!3800346)))

(declare-fun b!6246124 () Bool)

(assert (=> b!6246124 (= e!3800346 tp_is_empty!41599)))

(assert (= (and b!6245251 ((_ is ElementMatch!16173) (regOne!32858 r!7292))) b!6246124))

(assert (= (and b!6245251 ((_ is Concat!25018) (regOne!32858 r!7292))) b!6246125))

(assert (= (and b!6245251 ((_ is Star!16173) (regOne!32858 r!7292))) b!6246126))

(assert (= (and b!6245251 ((_ is Union!16173) (regOne!32858 r!7292))) b!6246127))

(declare-fun b!6246131 () Bool)

(declare-fun e!3800347 () Bool)

(declare-fun tp!1742766 () Bool)

(declare-fun tp!1742764 () Bool)

(assert (=> b!6246131 (= e!3800347 (and tp!1742766 tp!1742764))))

(declare-fun b!6246129 () Bool)

(declare-fun tp!1742767 () Bool)

(declare-fun tp!1742768 () Bool)

(assert (=> b!6246129 (= e!3800347 (and tp!1742767 tp!1742768))))

(declare-fun b!6246130 () Bool)

(declare-fun tp!1742765 () Bool)

(assert (=> b!6246130 (= e!3800347 tp!1742765)))

(assert (=> b!6245251 (= tp!1742682 e!3800347)))

(declare-fun b!6246128 () Bool)

(assert (=> b!6246128 (= e!3800347 tp_is_empty!41599)))

(assert (= (and b!6245251 ((_ is ElementMatch!16173) (regTwo!32858 r!7292))) b!6246128))

(assert (= (and b!6245251 ((_ is Concat!25018) (regTwo!32858 r!7292))) b!6246129))

(assert (= (and b!6245251 ((_ is Star!16173) (regTwo!32858 r!7292))) b!6246130))

(assert (= (and b!6245251 ((_ is Union!16173) (regTwo!32858 r!7292))) b!6246131))

(declare-fun b!6246136 () Bool)

(declare-fun e!3800350 () Bool)

(declare-fun tp!1742773 () Bool)

(declare-fun tp!1742774 () Bool)

(assert (=> b!6246136 (= e!3800350 (and tp!1742773 tp!1742774))))

(assert (=> b!6245257 (= tp!1742687 e!3800350)))

(assert (= (and b!6245257 ((_ is Cons!64694) (exprs!6057 setElem!42458))) b!6246136))

(declare-fun b!6246144 () Bool)

(declare-fun e!3800356 () Bool)

(declare-fun tp!1742779 () Bool)

(assert (=> b!6246144 (= e!3800356 tp!1742779)))

(declare-fun e!3800355 () Bool)

(declare-fun tp!1742780 () Bool)

(declare-fun b!6246143 () Bool)

(assert (=> b!6246143 (= e!3800355 (and (inv!83679 (h!71143 (t!378365 zl!343))) e!3800356 tp!1742780))))

(assert (=> b!6245263 (= tp!1742684 e!3800355)))

(assert (= b!6246143 b!6246144))

(assert (= (and b!6245263 ((_ is Cons!64695) (t!378365 zl!343))) b!6246143))

(declare-fun m!7070020 () Bool)

(assert (=> b!6246143 m!7070020))

(declare-fun b!6246145 () Bool)

(declare-fun e!3800357 () Bool)

(declare-fun tp!1742781 () Bool)

(declare-fun tp!1742782 () Bool)

(assert (=> b!6246145 (= e!3800357 (and tp!1742781 tp!1742782))))

(assert (=> b!6245253 (= tp!1742689 e!3800357)))

(assert (= (and b!6245253 ((_ is Cons!64694) (exprs!6057 (h!71143 zl!343)))) b!6246145))

(declare-fun b!6246149 () Bool)

(declare-fun e!3800358 () Bool)

(declare-fun tp!1742785 () Bool)

(declare-fun tp!1742783 () Bool)

(assert (=> b!6246149 (= e!3800358 (and tp!1742785 tp!1742783))))

(declare-fun b!6246147 () Bool)

(declare-fun tp!1742786 () Bool)

(declare-fun tp!1742787 () Bool)

(assert (=> b!6246147 (= e!3800358 (and tp!1742786 tp!1742787))))

(declare-fun b!6246148 () Bool)

(declare-fun tp!1742784 () Bool)

(assert (=> b!6246148 (= e!3800358 tp!1742784)))

(assert (=> b!6245259 (= tp!1742683 e!3800358)))

(declare-fun b!6246146 () Bool)

(assert (=> b!6246146 (= e!3800358 tp_is_empty!41599)))

(assert (= (and b!6245259 ((_ is ElementMatch!16173) (regOne!32859 r!7292))) b!6246146))

(assert (= (and b!6245259 ((_ is Concat!25018) (regOne!32859 r!7292))) b!6246147))

(assert (= (and b!6245259 ((_ is Star!16173) (regOne!32859 r!7292))) b!6246148))

(assert (= (and b!6245259 ((_ is Union!16173) (regOne!32859 r!7292))) b!6246149))

(declare-fun b!6246153 () Bool)

(declare-fun e!3800359 () Bool)

(declare-fun tp!1742790 () Bool)

(declare-fun tp!1742788 () Bool)

(assert (=> b!6246153 (= e!3800359 (and tp!1742790 tp!1742788))))

(declare-fun b!6246151 () Bool)

(declare-fun tp!1742791 () Bool)

(declare-fun tp!1742792 () Bool)

(assert (=> b!6246151 (= e!3800359 (and tp!1742791 tp!1742792))))

(declare-fun b!6246152 () Bool)

(declare-fun tp!1742789 () Bool)

(assert (=> b!6246152 (= e!3800359 tp!1742789)))

(assert (=> b!6245259 (= tp!1742686 e!3800359)))

(declare-fun b!6246150 () Bool)

(assert (=> b!6246150 (= e!3800359 tp_is_empty!41599)))

(assert (= (and b!6245259 ((_ is ElementMatch!16173) (regTwo!32859 r!7292))) b!6246150))

(assert (= (and b!6245259 ((_ is Concat!25018) (regTwo!32859 r!7292))) b!6246151))

(assert (= (and b!6245259 ((_ is Star!16173) (regTwo!32859 r!7292))) b!6246152))

(assert (= (and b!6245259 ((_ is Union!16173) (regTwo!32859 r!7292))) b!6246153))

(declare-fun b!6246158 () Bool)

(declare-fun e!3800362 () Bool)

(declare-fun tp!1742795 () Bool)

(assert (=> b!6246158 (= e!3800362 (and tp_is_empty!41599 tp!1742795))))

(assert (=> b!6245249 (= tp!1742688 e!3800362)))

(assert (= (and b!6245249 ((_ is Cons!64696) (t!378366 s!2326))) b!6246158))

(declare-fun b!6246162 () Bool)

(declare-fun e!3800363 () Bool)

(declare-fun tp!1742798 () Bool)

(declare-fun tp!1742796 () Bool)

(assert (=> b!6246162 (= e!3800363 (and tp!1742798 tp!1742796))))

(declare-fun b!6246160 () Bool)

(declare-fun tp!1742799 () Bool)

(declare-fun tp!1742800 () Bool)

(assert (=> b!6246160 (= e!3800363 (and tp!1742799 tp!1742800))))

(declare-fun b!6246161 () Bool)

(declare-fun tp!1742797 () Bool)

(assert (=> b!6246161 (= e!3800363 tp!1742797)))

(assert (=> b!6245265 (= tp!1742681 e!3800363)))

(declare-fun b!6246159 () Bool)

(assert (=> b!6246159 (= e!3800363 tp_is_empty!41599)))

(assert (= (and b!6245265 ((_ is ElementMatch!16173) (reg!16502 r!7292))) b!6246159))

(assert (= (and b!6245265 ((_ is Concat!25018) (reg!16502 r!7292))) b!6246160))

(assert (= (and b!6245265 ((_ is Star!16173) (reg!16502 r!7292))) b!6246161))

(assert (= (and b!6245265 ((_ is Union!16173) (reg!16502 r!7292))) b!6246162))

(declare-fun condSetEmpty!42464 () Bool)

(assert (=> setNonEmpty!42458 (= condSetEmpty!42464 (= setRest!42458 ((as const (Array Context!11114 Bool)) false)))))

(declare-fun setRes!42464 () Bool)

(assert (=> setNonEmpty!42458 (= tp!1742690 setRes!42464)))

(declare-fun setIsEmpty!42464 () Bool)

(assert (=> setIsEmpty!42464 setRes!42464))

(declare-fun tp!1742805 () Bool)

(declare-fun setNonEmpty!42464 () Bool)

(declare-fun setElem!42464 () Context!11114)

(declare-fun e!3800366 () Bool)

(assert (=> setNonEmpty!42464 (= setRes!42464 (and tp!1742805 (inv!83679 setElem!42464) e!3800366))))

(declare-fun setRest!42464 () (InoxSet Context!11114))

(assert (=> setNonEmpty!42464 (= setRest!42458 ((_ map or) (store ((as const (Array Context!11114 Bool)) false) setElem!42464 true) setRest!42464))))

(declare-fun b!6246167 () Bool)

(declare-fun tp!1742806 () Bool)

(assert (=> b!6246167 (= e!3800366 tp!1742806)))

(assert (= (and setNonEmpty!42458 condSetEmpty!42464) setIsEmpty!42464))

(assert (= (and setNonEmpty!42458 (not condSetEmpty!42464)) setNonEmpty!42464))

(assert (= setNonEmpty!42464 b!6246167))

(declare-fun m!7070022 () Bool)

(assert (=> setNonEmpty!42464 m!7070022))

(declare-fun b_lambda!237567 () Bool)

(assert (= b_lambda!237561 (or b!6245250 b_lambda!237567)))

(declare-fun bs!1552403 () Bool)

(declare-fun d!1958934 () Bool)

(assert (= bs!1552403 (and d!1958934 b!6245250)))

(assert (=> bs!1552403 (= (dynLambda!25542 lambda!341549 (h!71143 zl!343)) (derivationStepZipperUp!1347 (h!71143 zl!343) (h!71144 s!2326)))))

(assert (=> bs!1552403 m!7069288))

(assert (=> d!1958850 d!1958934))

(declare-fun b_lambda!237569 () Bool)

(assert (= b_lambda!237565 (or b!6245250 b_lambda!237569)))

(declare-fun bs!1552404 () Bool)

(declare-fun d!1958936 () Bool)

(assert (= bs!1552404 (and d!1958936 b!6245250)))

(assert (=> bs!1552404 (= (dynLambda!25542 lambda!341549 lt!2347851) (derivationStepZipperUp!1347 lt!2347851 (h!71144 s!2326)))))

(assert (=> bs!1552404 m!7069224))

(assert (=> d!1958906 d!1958936))

(declare-fun b_lambda!237571 () Bool)

(assert (= b_lambda!237563 (or b!6245250 b_lambda!237571)))

(declare-fun bs!1552405 () Bool)

(declare-fun d!1958938 () Bool)

(assert (= bs!1552405 (and d!1958938 b!6245250)))

(assert (=> bs!1552405 (= (dynLambda!25542 lambda!341549 lt!2347849) (derivationStepZipperUp!1347 lt!2347849 (h!71144 s!2326)))))

(assert (=> bs!1552405 m!7069236))

(assert (=> d!1958872 d!1958938))

(check-sat (not bm!526297) (not b!6245799) (not bm!526282) (not bm!526330) (not bm!526309) (not d!1958852) (not b_lambda!237571) (not d!1958896) (not b!6245709) (not d!1958924) (not b!6245993) (not b!6245877) (not b!6245780) (not b!6245887) (not b!6245988) (not b!6246012) (not d!1958922) (not bm!526317) (not b!6246018) (not bm!526333) (not b!6245901) (not d!1958902) (not b!6246148) (not b!6246149) (not d!1958894) (not setNonEmpty!42464) (not b!6246161) (not bs!1552403) (not b!6245785) (not b!6245829) (not d!1958868) (not b!6245952) (not d!1958848) (not bm!526323) (not b!6245963) (not b!6245848) (not b!6245882) (not b!6245986) (not b!6246003) (not bm!526314) (not d!1958892) (not b!6246129) (not b!6245801) (not b!6245781) (not b!6245934) (not d!1958916) (not b!6246130) (not d!1958860) (not b!6246006) (not bm!526318) (not b!6245894) (not b!6245802) (not b!6245964) (not d!1958872) (not b!6245800) (not d!1958890) (not b!6245957) (not b!6246055) (not b!6245759) (not d!1958866) (not b!6245994) (not d!1958826) (not d!1958882) (not b!6245938) (not bm!526308) (not b!6245903) (not bm!526302) (not d!1958878) (not bm!526322) (not b_lambda!237567) (not b!6246151) (not bs!1552405) (not d!1958850) (not d!1958904) (not d!1958914) (not b!6245950) (not bm!526303) (not b_lambda!237569) (not b!6246127) (not b!6246153) (not b!6245840) (not b!6246144) (not b!6246007) (not b!6245664) (not b!6245847) (not bm!526320) (not bm!526321) (not b!6246011) (not d!1958912) (not b!6245985) (not bm!526319) (not b!6246005) (not b!6245936) (not b!6246160) (not b!6245884) (not d!1958926) (not b!6246158) (not b!6246143) (not b!6245912) (not b!6246096) (not b!6246009) (not b!6245962) (not d!1958910) (not b!6245889) (not b!6245855) (not d!1958906) (not b!6246001) (not b!6246110) (not b!6245874) (not b!6246010) (not b!6246152) (not b!6245872) (not b!6245943) (not bm!526283) (not b!6246004) (not b!6245941) (not b!6245783) (not b!6245960) (not b!6245758) (not d!1958900) (not d!1958846) (not b!6246125) (not d!1958888) (not b!6246094) (not d!1958828) (not b!6246093) (not b!6245786) (not b!6246002) (not b!6246013) (not b!6245987) (not b!6246017) (not d!1958832) (not d!1958898) (not b!6245940) (not b!6246167) (not b!6245961) (not b!6246098) (not b!6245955) (not b!6246112) (not b!6245999) (not d!1958840) (not b!6246097) (not d!1958908) (not b!6245879) (not bm!526305) (not bm!526311) (not d!1958838) (not bs!1552404) (not b!6246147) (not bm!526299) (not d!1958834) (not b!6246015) (not b!6246008) (not d!1958818) (not d!1958830) (not b!6246162) (not b!6246136) (not b!6245892) (not b!6246020) (not d!1958918) (not b!6246126) (not b!6246053) (not d!1958836) (not b!6246145) (not b!6246131) (not b!6246099) (not bm!526329) (not b!6245782) (not b!6245990) tp_is_empty!41599 (not b!6245935) (not d!1958800))
(check-sat)
