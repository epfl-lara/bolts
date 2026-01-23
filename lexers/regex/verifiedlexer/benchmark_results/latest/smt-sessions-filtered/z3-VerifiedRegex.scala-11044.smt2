; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572494 () Bool)

(assert start!572494)

(declare-fun b!5470126 () Bool)

(assert (=> b!5470126 true))

(assert (=> b!5470126 true))

(declare-fun lambda!291039 () Int)

(declare-fun lambda!291038 () Int)

(assert (=> b!5470126 (not (= lambda!291039 lambda!291038))))

(assert (=> b!5470126 true))

(assert (=> b!5470126 true))

(declare-fun lambda!291040 () Int)

(assert (=> b!5470126 (not (= lambda!291040 lambda!291038))))

(assert (=> b!5470126 (not (= lambda!291040 lambda!291039))))

(assert (=> b!5470126 true))

(assert (=> b!5470126 true))

(declare-fun b!5470139 () Bool)

(assert (=> b!5470139 true))

(declare-fun b!5470107 () Bool)

(declare-fun e!3386295 () Bool)

(declare-fun e!3386290 () Bool)

(assert (=> b!5470107 (= e!3386295 e!3386290)))

(declare-fun res!2331068 () Bool)

(assert (=> b!5470107 (=> res!2331068 e!3386290)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30940 0))(
  ( (C!30941 (val!25172 Int)) )
))
(declare-datatypes ((Regex!15335 0))(
  ( (ElementMatch!15335 (c!955637 C!30940)) (Concat!24180 (regOne!31182 Regex!15335) (regTwo!31182 Regex!15335)) (EmptyExpr!15335) (Star!15335 (reg!15664 Regex!15335)) (EmptyLang!15335) (Union!15335 (regOne!31183 Regex!15335) (regTwo!31183 Regex!15335)) )
))
(declare-datatypes ((List!62304 0))(
  ( (Nil!62180) (Cons!62180 (h!68628 Regex!15335) (t!375533 List!62304)) )
))
(declare-datatypes ((Context!9438 0))(
  ( (Context!9439 (exprs!5219 List!62304)) )
))
(declare-fun lt!2234850 () (InoxSet Context!9438))

(declare-fun lt!2234855 () (InoxSet Context!9438))

(assert (=> b!5470107 (= res!2331068 (not (= lt!2234850 lt!2234855)))))

(declare-fun r!7292 () Regex!15335)

(declare-datatypes ((List!62305 0))(
  ( (Nil!62181) (Cons!62181 (h!68629 C!30940) (t!375534 List!62305)) )
))
(declare-fun s!2326 () List!62305)

(declare-fun derivationStepZipperDown!761 (Regex!15335 Context!9438 C!30940) (InoxSet Context!9438))

(assert (=> b!5470107 (= lt!2234855 (derivationStepZipperDown!761 r!7292 (Context!9439 Nil!62180) (h!68629 s!2326)))))

(declare-fun derivationStepZipperUp!687 (Context!9438 C!30940) (InoxSet Context!9438))

(assert (=> b!5470107 (= lt!2234850 (derivationStepZipperUp!687 (Context!9439 (Cons!62180 r!7292 Nil!62180)) (h!68629 s!2326)))))

(declare-fun lt!2234845 () (InoxSet Context!9438))

(declare-fun z!1189 () (InoxSet Context!9438))

(declare-fun derivationStepZipper!1530 ((InoxSet Context!9438) C!30940) (InoxSet Context!9438))

(assert (=> b!5470107 (= lt!2234845 (derivationStepZipper!1530 z!1189 (h!68629 s!2326)))))

(declare-fun b!5470108 () Bool)

(declare-fun e!3386289 () Bool)

(declare-fun e!3386292 () Bool)

(assert (=> b!5470108 (= e!3386289 e!3386292)))

(declare-fun res!2331050 () Bool)

(assert (=> b!5470108 (=> res!2331050 e!3386292)))

(declare-fun lt!2234847 () Bool)

(assert (=> b!5470108 (= res!2331050 (not lt!2234847))))

(declare-fun e!3386293 () Bool)

(assert (=> b!5470108 e!3386293))

(declare-fun res!2331069 () Bool)

(assert (=> b!5470108 (=> (not res!2331069) (not e!3386293))))

(declare-fun lt!2234863 () Regex!15335)

(declare-fun matchRSpec!2438 (Regex!15335 List!62305) Bool)

(assert (=> b!5470108 (= res!2331069 (= lt!2234847 (matchRSpec!2438 lt!2234863 s!2326)))))

(declare-fun matchR!7520 (Regex!15335 List!62305) Bool)

(assert (=> b!5470108 (= lt!2234847 (matchR!7520 lt!2234863 s!2326))))

(declare-datatypes ((Unit!155120 0))(
  ( (Unit!155121) )
))
(declare-fun lt!2234869 () Unit!155120)

(declare-fun mainMatchTheorem!2438 (Regex!15335 List!62305) Unit!155120)

(assert (=> b!5470108 (= lt!2234869 (mainMatchTheorem!2438 lt!2234863 s!2326))))

(declare-fun b!5470109 () Bool)

(declare-fun res!2331063 () Bool)

(assert (=> b!5470109 (=> res!2331063 e!3386295)))

(get-info :version)

(assert (=> b!5470109 (= res!2331063 ((_ is Nil!62181) s!2326))))

(declare-fun b!5470110 () Bool)

(declare-fun res!2331064 () Bool)

(assert (=> b!5470110 (=> res!2331064 e!3386289)))

(declare-fun lt!2234864 () Context!9438)

(declare-datatypes ((List!62306 0))(
  ( (Nil!62182) (Cons!62182 (h!68630 Context!9438) (t!375535 List!62306)) )
))
(declare-fun unfocusZipper!1077 (List!62306) Regex!15335)

(assert (=> b!5470110 (= res!2331064 (not (= (unfocusZipper!1077 (Cons!62182 lt!2234864 Nil!62182)) (reg!15664 r!7292))))))

(declare-fun b!5470111 () Bool)

(declare-fun res!2331045 () Bool)

(declare-fun e!3386284 () Bool)

(assert (=> b!5470111 (=> res!2331045 e!3386284)))

(declare-fun zl!343 () List!62306)

(assert (=> b!5470111 (= res!2331045 (not ((_ is Cons!62180) (exprs!5219 (h!68630 zl!343)))))))

(declare-fun b!5470112 () Bool)

(declare-fun e!3386279 () Bool)

(declare-fun tp_is_empty!39923 () Bool)

(declare-fun tp!1504247 () Bool)

(assert (=> b!5470112 (= e!3386279 (and tp_is_empty!39923 tp!1504247))))

(declare-fun b!5470113 () Bool)

(declare-fun e!3386282 () Bool)

(declare-fun tp!1504250 () Bool)

(declare-fun tp!1504253 () Bool)

(assert (=> b!5470113 (= e!3386282 (and tp!1504250 tp!1504253))))

(declare-fun b!5470114 () Bool)

(declare-fun tp!1504244 () Bool)

(assert (=> b!5470114 (= e!3386282 tp!1504244)))

(declare-fun b!5470115 () Bool)

(declare-fun res!2331054 () Bool)

(declare-fun e!3386281 () Bool)

(assert (=> b!5470115 (=> res!2331054 e!3386281)))

(declare-fun lt!2234867 () (InoxSet Context!9438))

(declare-fun matchZipper!1553 ((InoxSet Context!9438) List!62305) Bool)

(assert (=> b!5470115 (= res!2331054 (not (= (matchZipper!1553 lt!2234867 s!2326) (matchZipper!1553 (derivationStepZipper!1530 lt!2234867 (h!68629 s!2326)) (t!375534 s!2326)))))))

(declare-fun b!5470116 () Bool)

(declare-fun e!3386296 () Bool)

(declare-fun lt!2234861 () Bool)

(assert (=> b!5470116 (= e!3386296 lt!2234861)))

(declare-fun b!5470117 () Bool)

(declare-fun e!3386291 () Bool)

(declare-fun e!3386294 () Bool)

(assert (=> b!5470117 (= e!3386291 e!3386294)))

(declare-fun res!2331058 () Bool)

(assert (=> b!5470117 (=> (not res!2331058) (not e!3386294))))

(declare-fun lt!2234870 () Regex!15335)

(assert (=> b!5470117 (= res!2331058 (= r!7292 lt!2234870))))

(assert (=> b!5470117 (= lt!2234870 (unfocusZipper!1077 zl!343))))

(declare-fun b!5470118 () Bool)

(declare-fun e!3386286 () Bool)

(assert (=> b!5470118 (= e!3386286 e!3386289)))

(declare-fun res!2331059 () Bool)

(assert (=> b!5470118 (=> res!2331059 e!3386289)))

(declare-fun lt!2234853 () (InoxSet Context!9438))

(assert (=> b!5470118 (= res!2331059 (not (= lt!2234845 (derivationStepZipper!1530 lt!2234853 (h!68629 s!2326)))))))

(declare-fun lt!2234846 () Context!9438)

(declare-fun lambda!291041 () Int)

(declare-fun flatMap!1038 ((InoxSet Context!9438) Int) (InoxSet Context!9438))

(assert (=> b!5470118 (= (flatMap!1038 lt!2234853 lambda!291041) (derivationStepZipperUp!687 lt!2234846 (h!68629 s!2326)))))

(declare-fun lt!2234871 () Unit!155120)

(declare-fun lemmaFlatMapOnSingletonSet!570 ((InoxSet Context!9438) Context!9438 Int) Unit!155120)

(assert (=> b!5470118 (= lt!2234871 (lemmaFlatMapOnSingletonSet!570 lt!2234853 lt!2234846 lambda!291041))))

(declare-fun lt!2234851 () (InoxSet Context!9438))

(assert (=> b!5470118 (= (flatMap!1038 lt!2234851 lambda!291041) (derivationStepZipperUp!687 lt!2234864 (h!68629 s!2326)))))

(declare-fun lt!2234852 () Unit!155120)

(assert (=> b!5470118 (= lt!2234852 (lemmaFlatMapOnSingletonSet!570 lt!2234851 lt!2234864 lambda!291041))))

(declare-fun lt!2234868 () (InoxSet Context!9438))

(assert (=> b!5470118 (= lt!2234868 (derivationStepZipperUp!687 lt!2234846 (h!68629 s!2326)))))

(declare-fun lt!2234854 () (InoxSet Context!9438))

(assert (=> b!5470118 (= lt!2234854 (derivationStepZipperUp!687 lt!2234864 (h!68629 s!2326)))))

(assert (=> b!5470118 (= lt!2234853 (store ((as const (Array Context!9438 Bool)) false) lt!2234846 true))))

(assert (=> b!5470118 (= lt!2234851 (store ((as const (Array Context!9438 Bool)) false) lt!2234864 true))))

(assert (=> b!5470118 (= lt!2234864 (Context!9439 (Cons!62180 (reg!15664 r!7292) Nil!62180)))))

(declare-fun b!5470119 () Bool)

(declare-fun e!3386287 () Bool)

(declare-fun e!3386285 () Bool)

(assert (=> b!5470119 (= e!3386287 e!3386285)))

(declare-fun res!2331062 () Bool)

(assert (=> b!5470119 (=> (not res!2331062) (not e!3386285))))

(declare-fun Exists!2514 (Int) Bool)

(assert (=> b!5470119 (= res!2331062 (= (Exists!2514 lambda!291038) (Exists!2514 lambda!291039)))))

(declare-fun res!2331053 () Bool)

(assert (=> start!572494 (=> (not res!2331053) (not e!3386291))))

(declare-fun validRegex!7071 (Regex!15335) Bool)

(assert (=> start!572494 (= res!2331053 (validRegex!7071 r!7292))))

(assert (=> start!572494 e!3386291))

(assert (=> start!572494 e!3386282))

(declare-fun condSetEmpty!35899 () Bool)

(assert (=> start!572494 (= condSetEmpty!35899 (= z!1189 ((as const (Array Context!9438 Bool)) false)))))

(declare-fun setRes!35899 () Bool)

(assert (=> start!572494 setRes!35899))

(declare-fun e!3386288 () Bool)

(assert (=> start!572494 e!3386288))

(assert (=> start!572494 e!3386279))

(declare-fun b!5470120 () Bool)

(assert (=> b!5470120 (= e!3386292 (validRegex!7071 r!7292))))

(declare-fun b!5470121 () Bool)

(declare-fun e!3386278 () Bool)

(declare-fun tp!1504245 () Bool)

(assert (=> b!5470121 (= e!3386278 tp!1504245)))

(declare-fun setNonEmpty!35899 () Bool)

(declare-fun e!3386280 () Bool)

(declare-fun setElem!35899 () Context!9438)

(declare-fun tp!1504246 () Bool)

(declare-fun inv!81584 (Context!9438) Bool)

(assert (=> setNonEmpty!35899 (= setRes!35899 (and tp!1504246 (inv!81584 setElem!35899) e!3386280))))

(declare-fun setRest!35899 () (InoxSet Context!9438))

(assert (=> setNonEmpty!35899 (= z!1189 ((_ map or) (store ((as const (Array Context!9438 Bool)) false) setElem!35899 true) setRest!35899))))

(declare-fun b!5470122 () Bool)

(declare-fun res!2331057 () Bool)

(assert (=> b!5470122 (=> res!2331057 e!3386284)))

(declare-fun generalisedConcat!1004 (List!62304) Regex!15335)

(assert (=> b!5470122 (= res!2331057 (not (= r!7292 (generalisedConcat!1004 (exprs!5219 (h!68630 zl!343))))))))

(declare-fun tp!1504248 () Bool)

(declare-fun b!5470123 () Bool)

(assert (=> b!5470123 (= e!3386288 (and (inv!81584 (h!68630 zl!343)) e!3386278 tp!1504248))))

(declare-fun b!5470124 () Bool)

(declare-fun res!2331061 () Bool)

(assert (=> b!5470124 (=> res!2331061 e!3386289)))

(assert (=> b!5470124 (= res!2331061 (not (= (unfocusZipper!1077 (Cons!62182 lt!2234846 Nil!62182)) r!7292)))))

(declare-fun b!5470125 () Bool)

(declare-fun e!3386283 () Bool)

(assert (=> b!5470125 (= e!3386283 e!3386281)))

(declare-fun res!2331047 () Bool)

(assert (=> b!5470125 (=> res!2331047 e!3386281)))

(assert (=> b!5470125 (= res!2331047 (not (= lt!2234845 (derivationStepZipperDown!761 (reg!15664 r!7292) lt!2234846 (h!68629 s!2326)))))))

(declare-fun lt!2234848 () List!62304)

(assert (=> b!5470125 (= lt!2234846 (Context!9439 lt!2234848))))

(declare-fun lt!2234866 () Context!9438)

(assert (=> b!5470125 (= (flatMap!1038 lt!2234867 lambda!291041) (derivationStepZipperUp!687 lt!2234866 (h!68629 s!2326)))))

(declare-fun lt!2234862 () Unit!155120)

(assert (=> b!5470125 (= lt!2234862 (lemmaFlatMapOnSingletonSet!570 lt!2234867 lt!2234866 lambda!291041))))

(declare-fun lt!2234865 () (InoxSet Context!9438))

(assert (=> b!5470125 (= lt!2234865 (derivationStepZipperUp!687 lt!2234866 (h!68629 s!2326)))))

(assert (=> b!5470125 (= lt!2234867 (store ((as const (Array Context!9438 Bool)) false) lt!2234866 true))))

(assert (=> b!5470125 (= lt!2234866 (Context!9439 (Cons!62180 (reg!15664 r!7292) lt!2234848)))))

(assert (=> b!5470125 (= lt!2234848 (Cons!62180 r!7292 Nil!62180))))

(assert (=> b!5470126 (= e!3386284 e!3386295)))

(declare-fun res!2331055 () Bool)

(assert (=> b!5470126 (=> res!2331055 e!3386295)))

(declare-fun lt!2234849 () Bool)

(assert (=> b!5470126 (= res!2331055 (not (= lt!2234849 e!3386296)))))

(declare-fun res!2331060 () Bool)

(assert (=> b!5470126 (=> res!2331060 e!3386296)))

(declare-fun isEmpty!34138 (List!62305) Bool)

(assert (=> b!5470126 (= res!2331060 (isEmpty!34138 s!2326))))

(assert (=> b!5470126 (= (Exists!2514 lambda!291038) (Exists!2514 lambda!291040))))

(declare-fun lt!2234856 () Unit!155120)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1164 (Regex!15335 Regex!15335 List!62305) Unit!155120)

(assert (=> b!5470126 (= lt!2234856 (lemmaExistCutMatchRandMatchRSpecEquivalent!1164 (reg!15664 r!7292) r!7292 s!2326))))

(assert (=> b!5470126 (= (Exists!2514 lambda!291038) (Exists!2514 lambda!291039))))

(declare-fun lt!2234857 () Unit!155120)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!488 (Regex!15335 List!62305) Unit!155120)

(assert (=> b!5470126 (= lt!2234857 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!488 (reg!15664 r!7292) s!2326))))

(assert (=> b!5470126 (= lt!2234861 (Exists!2514 lambda!291038))))

(declare-datatypes ((tuple2!65064 0))(
  ( (tuple2!65065 (_1!35835 List!62305) (_2!35835 List!62305)) )
))
(declare-datatypes ((Option!15444 0))(
  ( (None!15443) (Some!15443 (v!51472 tuple2!65064)) )
))
(declare-fun isDefined!12147 (Option!15444) Bool)

(declare-fun findConcatSeparation!1858 (Regex!15335 Regex!15335 List!62305 List!62305 List!62305) Option!15444)

(assert (=> b!5470126 (= lt!2234861 (isDefined!12147 (findConcatSeparation!1858 (reg!15664 r!7292) r!7292 Nil!62181 s!2326 s!2326)))))

(declare-fun lt!2234860 () Unit!155120)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1622 (Regex!15335 Regex!15335 List!62305) Unit!155120)

(assert (=> b!5470126 (= lt!2234860 (lemmaFindConcatSeparationEquivalentToExists!1622 (reg!15664 r!7292) r!7292 s!2326))))

(declare-fun b!5470127 () Bool)

(declare-fun tp!1504252 () Bool)

(declare-fun tp!1504251 () Bool)

(assert (=> b!5470127 (= e!3386282 (and tp!1504252 tp!1504251))))

(declare-fun b!5470128 () Bool)

(declare-fun res!2331067 () Bool)

(assert (=> b!5470128 (=> res!2331067 e!3386292)))

(assert (=> b!5470128 (= res!2331067 (not (validRegex!7071 (reg!15664 r!7292))))))

(declare-fun b!5470129 () Bool)

(assert (=> b!5470129 (= e!3386281 e!3386286)))

(declare-fun res!2331046 () Bool)

(assert (=> b!5470129 (=> res!2331046 e!3386286)))

(assert (=> b!5470129 (= res!2331046 (not (= (unfocusZipper!1077 (Cons!62182 lt!2234866 Nil!62182)) lt!2234863)))))

(assert (=> b!5470129 (= lt!2234863 (Concat!24180 (reg!15664 r!7292) r!7292))))

(declare-fun b!5470130 () Bool)

(declare-fun res!2331052 () Bool)

(assert (=> b!5470130 (=> res!2331052 e!3386284)))

(assert (=> b!5470130 (= res!2331052 (or ((_ is EmptyExpr!15335) r!7292) ((_ is EmptyLang!15335) r!7292) ((_ is ElementMatch!15335) r!7292) ((_ is Union!15335) r!7292) ((_ is Concat!24180) r!7292)))))

(declare-fun b!5470131 () Bool)

(assert (=> b!5470131 (= e!3386282 tp_is_empty!39923)))

(declare-fun b!5470132 () Bool)

(declare-fun tp!1504249 () Bool)

(assert (=> b!5470132 (= e!3386280 tp!1504249)))

(declare-fun b!5470133 () Bool)

(assert (=> b!5470133 (= e!3386285 (= lt!2234861 (Exists!2514 lambda!291038)))))

(declare-fun setIsEmpty!35899 () Bool)

(assert (=> setIsEmpty!35899 setRes!35899))

(declare-fun b!5470134 () Bool)

(declare-fun res!2331070 () Bool)

(assert (=> b!5470134 (=> (not res!2331070) (not e!3386291))))

(declare-fun toList!9119 ((InoxSet Context!9438)) List!62306)

(assert (=> b!5470134 (= res!2331070 (= (toList!9119 z!1189) zl!343))))

(declare-fun b!5470135 () Bool)

(assert (=> b!5470135 (= e!3386293 e!3386287)))

(declare-fun res!2331056 () Bool)

(assert (=> b!5470135 (=> res!2331056 e!3386287)))

(assert (=> b!5470135 (= res!2331056 (not lt!2234847))))

(declare-fun b!5470136 () Bool)

(declare-fun res!2331051 () Bool)

(assert (=> b!5470136 (=> res!2331051 e!3386281)))

(assert (=> b!5470136 (= res!2331051 (or (not (= lt!2234870 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5470137 () Bool)

(declare-fun res!2331065 () Bool)

(assert (=> b!5470137 (=> res!2331065 e!3386284)))

(declare-fun generalisedUnion!1264 (List!62304) Regex!15335)

(declare-fun unfocusZipperList!777 (List!62306) List!62304)

(assert (=> b!5470137 (= res!2331065 (not (= r!7292 (generalisedUnion!1264 (unfocusZipperList!777 zl!343)))))))

(declare-fun b!5470138 () Bool)

(declare-fun res!2331049 () Bool)

(assert (=> b!5470138 (=> res!2331049 e!3386284)))

(declare-fun isEmpty!34139 (List!62306) Bool)

(assert (=> b!5470138 (= res!2331049 (not (isEmpty!34139 (t!375535 zl!343))))))

(assert (=> b!5470139 (= e!3386290 e!3386283)))

(declare-fun res!2331048 () Bool)

(assert (=> b!5470139 (=> res!2331048 e!3386283)))

(assert (=> b!5470139 (= res!2331048 (not (= lt!2234845 lt!2234855)))))

(assert (=> b!5470139 (= (flatMap!1038 z!1189 lambda!291041) (derivationStepZipperUp!687 (h!68630 zl!343) (h!68629 s!2326)))))

(declare-fun lt!2234858 () Unit!155120)

(assert (=> b!5470139 (= lt!2234858 (lemmaFlatMapOnSingletonSet!570 z!1189 (h!68630 zl!343) lambda!291041))))

(declare-fun b!5470140 () Bool)

(assert (=> b!5470140 (= e!3386294 (not e!3386284))))

(declare-fun res!2331066 () Bool)

(assert (=> b!5470140 (=> res!2331066 e!3386284)))

(assert (=> b!5470140 (= res!2331066 (not ((_ is Cons!62182) zl!343)))))

(assert (=> b!5470140 (= lt!2234849 (matchRSpec!2438 r!7292 s!2326))))

(assert (=> b!5470140 (= lt!2234849 (matchR!7520 r!7292 s!2326))))

(declare-fun lt!2234859 () Unit!155120)

(assert (=> b!5470140 (= lt!2234859 (mainMatchTheorem!2438 r!7292 s!2326))))

(assert (= (and start!572494 res!2331053) b!5470134))

(assert (= (and b!5470134 res!2331070) b!5470117))

(assert (= (and b!5470117 res!2331058) b!5470140))

(assert (= (and b!5470140 (not res!2331066)) b!5470138))

(assert (= (and b!5470138 (not res!2331049)) b!5470122))

(assert (= (and b!5470122 (not res!2331057)) b!5470111))

(assert (= (and b!5470111 (not res!2331045)) b!5470137))

(assert (= (and b!5470137 (not res!2331065)) b!5470130))

(assert (= (and b!5470130 (not res!2331052)) b!5470126))

(assert (= (and b!5470126 (not res!2331060)) b!5470116))

(assert (= (and b!5470126 (not res!2331055)) b!5470109))

(assert (= (and b!5470109 (not res!2331063)) b!5470107))

(assert (= (and b!5470107 (not res!2331068)) b!5470139))

(assert (= (and b!5470139 (not res!2331048)) b!5470125))

(assert (= (and b!5470125 (not res!2331047)) b!5470115))

(assert (= (and b!5470115 (not res!2331054)) b!5470136))

(assert (= (and b!5470136 (not res!2331051)) b!5470129))

(assert (= (and b!5470129 (not res!2331046)) b!5470118))

(assert (= (and b!5470118 (not res!2331059)) b!5470110))

(assert (= (and b!5470110 (not res!2331064)) b!5470124))

(assert (= (and b!5470124 (not res!2331061)) b!5470108))

(assert (= (and b!5470108 res!2331069) b!5470135))

(assert (= (and b!5470135 (not res!2331056)) b!5470119))

(assert (= (and b!5470119 res!2331062) b!5470133))

(assert (= (and b!5470108 (not res!2331050)) b!5470128))

(assert (= (and b!5470128 (not res!2331067)) b!5470120))

(assert (= (and start!572494 ((_ is ElementMatch!15335) r!7292)) b!5470131))

(assert (= (and start!572494 ((_ is Concat!24180) r!7292)) b!5470127))

(assert (= (and start!572494 ((_ is Star!15335) r!7292)) b!5470114))

(assert (= (and start!572494 ((_ is Union!15335) r!7292)) b!5470113))

(assert (= (and start!572494 condSetEmpty!35899) setIsEmpty!35899))

(assert (= (and start!572494 (not condSetEmpty!35899)) setNonEmpty!35899))

(assert (= setNonEmpty!35899 b!5470132))

(assert (= b!5470123 b!5470121))

(assert (= (and start!572494 ((_ is Cons!62182) zl!343)) b!5470123))

(assert (= (and start!572494 ((_ is Cons!62181) s!2326)) b!5470112))

(declare-fun m!6488430 () Bool)

(assert (=> b!5470115 m!6488430))

(declare-fun m!6488432 () Bool)

(assert (=> b!5470115 m!6488432))

(assert (=> b!5470115 m!6488432))

(declare-fun m!6488434 () Bool)

(assert (=> b!5470115 m!6488434))

(declare-fun m!6488436 () Bool)

(assert (=> b!5470124 m!6488436))

(declare-fun m!6488438 () Bool)

(assert (=> b!5470139 m!6488438))

(declare-fun m!6488440 () Bool)

(assert (=> b!5470139 m!6488440))

(declare-fun m!6488442 () Bool)

(assert (=> b!5470139 m!6488442))

(declare-fun m!6488444 () Bool)

(assert (=> b!5470125 m!6488444))

(declare-fun m!6488446 () Bool)

(assert (=> b!5470125 m!6488446))

(declare-fun m!6488448 () Bool)

(assert (=> b!5470125 m!6488448))

(declare-fun m!6488450 () Bool)

(assert (=> b!5470125 m!6488450))

(declare-fun m!6488452 () Bool)

(assert (=> b!5470125 m!6488452))

(declare-fun m!6488454 () Bool)

(assert (=> b!5470128 m!6488454))

(declare-fun m!6488456 () Bool)

(assert (=> b!5470107 m!6488456))

(declare-fun m!6488458 () Bool)

(assert (=> b!5470107 m!6488458))

(declare-fun m!6488460 () Bool)

(assert (=> b!5470107 m!6488460))

(declare-fun m!6488462 () Bool)

(assert (=> b!5470133 m!6488462))

(declare-fun m!6488464 () Bool)

(assert (=> b!5470123 m!6488464))

(declare-fun m!6488466 () Bool)

(assert (=> b!5470122 m!6488466))

(declare-fun m!6488468 () Bool)

(assert (=> b!5470120 m!6488468))

(declare-fun m!6488470 () Bool)

(assert (=> b!5470138 m!6488470))

(declare-fun m!6488472 () Bool)

(assert (=> b!5470110 m!6488472))

(declare-fun m!6488474 () Bool)

(assert (=> b!5470117 m!6488474))

(declare-fun m!6488476 () Bool)

(assert (=> setNonEmpty!35899 m!6488476))

(declare-fun m!6488478 () Bool)

(assert (=> b!5470108 m!6488478))

(declare-fun m!6488480 () Bool)

(assert (=> b!5470108 m!6488480))

(declare-fun m!6488482 () Bool)

(assert (=> b!5470108 m!6488482))

(declare-fun m!6488484 () Bool)

(assert (=> b!5470118 m!6488484))

(declare-fun m!6488486 () Bool)

(assert (=> b!5470118 m!6488486))

(declare-fun m!6488488 () Bool)

(assert (=> b!5470118 m!6488488))

(declare-fun m!6488490 () Bool)

(assert (=> b!5470118 m!6488490))

(declare-fun m!6488492 () Bool)

(assert (=> b!5470118 m!6488492))

(declare-fun m!6488494 () Bool)

(assert (=> b!5470118 m!6488494))

(declare-fun m!6488496 () Bool)

(assert (=> b!5470118 m!6488496))

(declare-fun m!6488498 () Bool)

(assert (=> b!5470118 m!6488498))

(declare-fun m!6488500 () Bool)

(assert (=> b!5470118 m!6488500))

(declare-fun m!6488502 () Bool)

(assert (=> b!5470129 m!6488502))

(assert (=> start!572494 m!6488468))

(declare-fun m!6488504 () Bool)

(assert (=> b!5470137 m!6488504))

(assert (=> b!5470137 m!6488504))

(declare-fun m!6488506 () Bool)

(assert (=> b!5470137 m!6488506))

(declare-fun m!6488508 () Bool)

(assert (=> b!5470140 m!6488508))

(declare-fun m!6488510 () Bool)

(assert (=> b!5470140 m!6488510))

(declare-fun m!6488512 () Bool)

(assert (=> b!5470140 m!6488512))

(assert (=> b!5470126 m!6488462))

(declare-fun m!6488514 () Bool)

(assert (=> b!5470126 m!6488514))

(assert (=> b!5470126 m!6488462))

(declare-fun m!6488516 () Bool)

(assert (=> b!5470126 m!6488516))

(declare-fun m!6488518 () Bool)

(assert (=> b!5470126 m!6488518))

(declare-fun m!6488520 () Bool)

(assert (=> b!5470126 m!6488520))

(declare-fun m!6488522 () Bool)

(assert (=> b!5470126 m!6488522))

(declare-fun m!6488524 () Bool)

(assert (=> b!5470126 m!6488524))

(declare-fun m!6488526 () Bool)

(assert (=> b!5470126 m!6488526))

(assert (=> b!5470126 m!6488462))

(assert (=> b!5470126 m!6488520))

(declare-fun m!6488528 () Bool)

(assert (=> b!5470126 m!6488528))

(declare-fun m!6488530 () Bool)

(assert (=> b!5470134 m!6488530))

(assert (=> b!5470119 m!6488462))

(assert (=> b!5470119 m!6488526))

(check-sat (not b!5470127) (not b!5470113) (not b!5470129) (not b!5470118) (not start!572494) (not setNonEmpty!35899) (not b!5470119) (not b!5470140) (not b!5470123) (not b!5470110) (not b!5470128) (not b!5470115) (not b!5470122) (not b!5470137) (not b!5470114) (not b!5470124) (not b!5470120) (not b!5470112) (not b!5470125) (not b!5470108) (not b!5470117) (not b!5470134) (not b!5470139) (not b!5470138) tp_is_empty!39923 (not b!5470133) (not b!5470126) (not b!5470121) (not b!5470132) (not b!5470107))
(check-sat)
