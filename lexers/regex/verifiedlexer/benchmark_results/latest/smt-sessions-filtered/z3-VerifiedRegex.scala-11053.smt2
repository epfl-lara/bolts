; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572830 () Bool)

(assert start!572830)

(declare-fun b!5475254 () Bool)

(assert (=> b!5475254 true))

(assert (=> b!5475254 true))

(declare-fun lambda!291800 () Int)

(declare-fun lambda!291799 () Int)

(assert (=> b!5475254 (not (= lambda!291800 lambda!291799))))

(assert (=> b!5475254 true))

(assert (=> b!5475254 true))

(declare-fun lambda!291801 () Int)

(assert (=> b!5475254 (not (= lambda!291801 lambda!291799))))

(assert (=> b!5475254 (not (= lambda!291801 lambda!291800))))

(assert (=> b!5475254 true))

(assert (=> b!5475254 true))

(declare-fun b!5475250 () Bool)

(assert (=> b!5475250 true))

(declare-fun b!5475241 () Bool)

(declare-fun res!2334027 () Bool)

(declare-fun e!3389062 () Bool)

(assert (=> b!5475241 (=> res!2334027 e!3389062)))

(declare-datatypes ((C!30976 0))(
  ( (C!30977 (val!25190 Int)) )
))
(declare-datatypes ((Regex!15353 0))(
  ( (ElementMatch!15353 (c!956479 C!30976)) (Concat!24198 (regOne!31218 Regex!15353) (regTwo!31218 Regex!15353)) (EmptyExpr!15353) (Star!15353 (reg!15682 Regex!15353)) (EmptyLang!15353) (Union!15353 (regOne!31219 Regex!15353) (regTwo!31219 Regex!15353)) )
))
(declare-fun r!7292 () Regex!15353)

(declare-datatypes ((List!62358 0))(
  ( (Nil!62234) (Cons!62234 (h!68682 C!30976) (t!375587 List!62358)) )
))
(declare-datatypes ((tuple2!65100 0))(
  ( (tuple2!65101 (_1!35853 List!62358) (_2!35853 List!62358)) )
))
(declare-fun lt!2236851 () tuple2!65100)

(declare-fun matchR!7538 (Regex!15353 List!62358) Bool)

(assert (=> b!5475241 (= res!2334027 (not (matchR!7538 (reg!15682 r!7292) (_1!35853 lt!2236851))))))

(declare-fun b!5475242 () Bool)

(declare-fun e!3389050 () Bool)

(declare-fun e!3389058 () Bool)

(assert (=> b!5475242 (= e!3389050 e!3389058)))

(declare-fun res!2334030 () Bool)

(assert (=> b!5475242 (=> (not res!2334030) (not e!3389058))))

(declare-fun lt!2236847 () Regex!15353)

(assert (=> b!5475242 (= res!2334030 (= r!7292 lt!2236847))))

(declare-datatypes ((List!62359 0))(
  ( (Nil!62235) (Cons!62235 (h!68683 Regex!15353) (t!375588 List!62359)) )
))
(declare-datatypes ((Context!9474 0))(
  ( (Context!9475 (exprs!5237 List!62359)) )
))
(declare-datatypes ((List!62360 0))(
  ( (Nil!62236) (Cons!62236 (h!68684 Context!9474) (t!375589 List!62360)) )
))
(declare-fun zl!343 () List!62360)

(declare-fun unfocusZipper!1095 (List!62360) Regex!15353)

(assert (=> b!5475242 (= lt!2236847 (unfocusZipper!1095 zl!343))))

(declare-fun setNonEmpty!35971 () Bool)

(declare-fun setRes!35971 () Bool)

(declare-fun setElem!35971 () Context!9474)

(declare-fun e!3389061 () Bool)

(declare-fun tp!1505139 () Bool)

(declare-fun inv!81629 (Context!9474) Bool)

(assert (=> setNonEmpty!35971 (= setRes!35971 (and tp!1505139 (inv!81629 setElem!35971) e!3389061))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9474))

(declare-fun setRest!35971 () (InoxSet Context!9474))

(assert (=> setNonEmpty!35971 (= z!1189 ((_ map or) (store ((as const (Array Context!9474 Bool)) false) setElem!35971 true) setRest!35971))))

(declare-fun b!5475243 () Bool)

(declare-fun res!2334004 () Bool)

(declare-fun e!3389056 () Bool)

(assert (=> b!5475243 (=> res!2334004 e!3389056)))

(declare-fun generalisedConcat!1022 (List!62359) Regex!15353)

(assert (=> b!5475243 (= res!2334004 (not (= r!7292 (generalisedConcat!1022 (exprs!5237 (h!68684 zl!343))))))))

(declare-fun b!5475244 () Bool)

(declare-fun e!3389051 () Bool)

(declare-fun e!3389055 () Bool)

(assert (=> b!5475244 (= e!3389051 e!3389055)))

(declare-fun res!2334003 () Bool)

(assert (=> b!5475244 (=> (not res!2334003) (not e!3389055))))

(declare-fun Exists!2532 (Int) Bool)

(assert (=> b!5475244 (= res!2334003 (= (Exists!2532 lambda!291799) (Exists!2532 lambda!291800)))))

(declare-fun b!5475245 () Bool)

(declare-fun e!3389057 () Bool)

(declare-fun e!3389059 () Bool)

(assert (=> b!5475245 (= e!3389057 e!3389059)))

(declare-fun res!2334009 () Bool)

(assert (=> b!5475245 (=> res!2334009 e!3389059)))

(declare-fun lt!2236875 () List!62360)

(assert (=> b!5475245 (= res!2334009 (not (= (unfocusZipper!1095 lt!2236875) r!7292)))))

(declare-fun lt!2236859 () Context!9474)

(assert (=> b!5475245 (= lt!2236875 (Cons!62236 lt!2236859 Nil!62236))))

(declare-fun b!5475246 () Bool)

(declare-fun res!2334020 () Bool)

(assert (=> b!5475246 (=> (not res!2334020) (not e!3389050))))

(declare-fun toList!9137 ((InoxSet Context!9474)) List!62360)

(assert (=> b!5475246 (= res!2334020 (= (toList!9137 z!1189) zl!343))))

(declare-fun b!5475247 () Bool)

(declare-fun e!3389064 () Bool)

(declare-fun e!3389048 () Bool)

(assert (=> b!5475247 (= e!3389064 e!3389048)))

(declare-fun res!2334006 () Bool)

(assert (=> b!5475247 (=> res!2334006 e!3389048)))

(declare-fun lt!2236841 () Context!9474)

(declare-fun lt!2236870 () Regex!15353)

(assert (=> b!5475247 (= res!2334006 (not (= (unfocusZipper!1095 (Cons!62236 lt!2236841 Nil!62236)) lt!2236870)))))

(assert (=> b!5475247 (= lt!2236870 (Concat!24198 (reg!15682 r!7292) r!7292))))

(declare-fun b!5475248 () Bool)

(declare-fun e!3389053 () Bool)

(declare-fun tp!1505140 () Bool)

(assert (=> b!5475248 (= e!3389053 tp!1505140)))

(declare-fun b!5475249 () Bool)

(declare-fun tp!1505135 () Bool)

(declare-fun tp!1505141 () Bool)

(assert (=> b!5475249 (= e!3389053 (and tp!1505135 tp!1505141))))

(declare-fun e!3389049 () Bool)

(declare-fun e!3389063 () Bool)

(assert (=> b!5475250 (= e!3389049 e!3389063)))

(declare-fun res!2334023 () Bool)

(assert (=> b!5475250 (=> res!2334023 e!3389063)))

(declare-fun lt!2236846 () (InoxSet Context!9474))

(declare-fun lt!2236864 () (InoxSet Context!9474))

(assert (=> b!5475250 (= res!2334023 (not (= lt!2236846 lt!2236864)))))

(declare-fun lambda!291802 () Int)

(declare-fun s!2326 () List!62358)

(declare-fun flatMap!1056 ((InoxSet Context!9474) Int) (InoxSet Context!9474))

(declare-fun derivationStepZipperUp!705 (Context!9474 C!30976) (InoxSet Context!9474))

(assert (=> b!5475250 (= (flatMap!1056 z!1189 lambda!291802) (derivationStepZipperUp!705 (h!68684 zl!343) (h!68682 s!2326)))))

(declare-datatypes ((Unit!155156 0))(
  ( (Unit!155157) )
))
(declare-fun lt!2236874 () Unit!155156)

(declare-fun lemmaFlatMapOnSingletonSet!588 ((InoxSet Context!9474) Context!9474 Int) Unit!155156)

(assert (=> b!5475250 (= lt!2236874 (lemmaFlatMapOnSingletonSet!588 z!1189 (h!68684 zl!343) lambda!291802))))

(declare-fun b!5475251 () Bool)

(declare-fun e!3389046 () Bool)

(declare-fun lt!2236867 () Bool)

(assert (=> b!5475251 (= e!3389046 lt!2236867)))

(declare-fun b!5475252 () Bool)

(assert (=> b!5475252 (= e!3389058 (not e!3389056))))

(declare-fun res!2334029 () Bool)

(assert (=> b!5475252 (=> res!2334029 e!3389056)))

(get-info :version)

(assert (=> b!5475252 (= res!2334029 (not ((_ is Cons!62236) zl!343)))))

(declare-fun lt!2236863 () Bool)

(declare-fun matchRSpec!2456 (Regex!15353 List!62358) Bool)

(assert (=> b!5475252 (= lt!2236863 (matchRSpec!2456 r!7292 s!2326))))

(assert (=> b!5475252 (= lt!2236863 (matchR!7538 r!7292 s!2326))))

(declare-fun lt!2236869 () Unit!155156)

(declare-fun mainMatchTheorem!2456 (Regex!15353 List!62358) Unit!155156)

(assert (=> b!5475252 (= lt!2236869 (mainMatchTheorem!2456 r!7292 s!2326))))

(declare-fun b!5475253 () Bool)

(declare-fun res!2334011 () Bool)

(assert (=> b!5475253 (=> res!2334011 e!3389056)))

(assert (=> b!5475253 (= res!2334011 (or ((_ is EmptyExpr!15353) r!7292) ((_ is EmptyLang!15353) r!7292) ((_ is ElementMatch!15353) r!7292) ((_ is Union!15353) r!7292) ((_ is Concat!24198) r!7292)))))

(declare-fun res!2334021 () Bool)

(assert (=> start!572830 (=> (not res!2334021) (not e!3389050))))

(declare-fun validRegex!7089 (Regex!15353) Bool)

(assert (=> start!572830 (= res!2334021 (validRegex!7089 r!7292))))

(assert (=> start!572830 e!3389050))

(assert (=> start!572830 e!3389053))

(declare-fun condSetEmpty!35971 () Bool)

(assert (=> start!572830 (= condSetEmpty!35971 (= z!1189 ((as const (Array Context!9474 Bool)) false)))))

(assert (=> start!572830 setRes!35971))

(declare-fun e!3389066 () Bool)

(assert (=> start!572830 e!3389066))

(declare-fun e!3389047 () Bool)

(assert (=> start!572830 e!3389047))

(declare-fun e!3389052 () Bool)

(assert (=> b!5475254 (= e!3389056 e!3389052)))

(declare-fun res!2334014 () Bool)

(assert (=> b!5475254 (=> res!2334014 e!3389052)))

(assert (=> b!5475254 (= res!2334014 (not (= lt!2236863 e!3389046)))))

(declare-fun res!2334012 () Bool)

(assert (=> b!5475254 (=> res!2334012 e!3389046)))

(declare-fun isEmpty!34186 (List!62358) Bool)

(assert (=> b!5475254 (= res!2334012 (isEmpty!34186 s!2326))))

(assert (=> b!5475254 (= (Exists!2532 lambda!291799) (Exists!2532 lambda!291801))))

(declare-fun lt!2236849 () Unit!155156)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1182 (Regex!15353 Regex!15353 List!62358) Unit!155156)

(assert (=> b!5475254 (= lt!2236849 (lemmaExistCutMatchRandMatchRSpecEquivalent!1182 (reg!15682 r!7292) r!7292 s!2326))))

(assert (=> b!5475254 (= (Exists!2532 lambda!291799) (Exists!2532 lambda!291800))))

(declare-fun lt!2236854 () Unit!155156)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!506 (Regex!15353 List!62358) Unit!155156)

(assert (=> b!5475254 (= lt!2236854 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!506 (reg!15682 r!7292) s!2326))))

(assert (=> b!5475254 (= lt!2236867 (Exists!2532 lambda!291799))))

(declare-datatypes ((Option!15462 0))(
  ( (None!15461) (Some!15461 (v!51490 tuple2!65100)) )
))
(declare-fun lt!2236861 () Option!15462)

(declare-fun isDefined!12165 (Option!15462) Bool)

(assert (=> b!5475254 (= lt!2236867 (isDefined!12165 lt!2236861))))

(declare-fun findConcatSeparation!1876 (Regex!15353 Regex!15353 List!62358 List!62358 List!62358) Option!15462)

(assert (=> b!5475254 (= lt!2236861 (findConcatSeparation!1876 (reg!15682 r!7292) r!7292 Nil!62234 s!2326 s!2326))))

(declare-fun lt!2236852 () Unit!155156)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1640 (Regex!15353 Regex!15353 List!62358) Unit!155156)

(assert (=> b!5475254 (= lt!2236852 (lemmaFindConcatSeparationEquivalentToExists!1640 (reg!15682 r!7292) r!7292 s!2326))))

(declare-fun b!5475255 () Bool)

(assert (=> b!5475255 (= e!3389062 true)))

(declare-fun lt!2236872 () Bool)

(declare-fun matchZipper!1571 ((InoxSet Context!9474) List!62358) Bool)

(assert (=> b!5475255 (= lt!2236872 (matchZipper!1571 z!1189 s!2326))))

(declare-fun lt!2236850 () List!62359)

(declare-fun lt!2236853 () List!62359)

(declare-fun lt!2236838 () List!62358)

(declare-fun ++!13693 (List!62359 List!62359) List!62359)

(assert (=> b!5475255 (matchZipper!1571 (store ((as const (Array Context!9474 Bool)) false) (Context!9475 (++!13693 lt!2236850 lt!2236853)) true) lt!2236838)))

(declare-fun lambda!291803 () Int)

(declare-fun lt!2236871 () Unit!155156)

(declare-fun lemmaConcatPreservesForall!262 (List!62359 List!62359 Int) Unit!155156)

(assert (=> b!5475255 (= lt!2236871 (lemmaConcatPreservesForall!262 lt!2236850 lt!2236853 lambda!291803))))

(declare-fun lt!2236865 () Context!9474)

(declare-fun lt!2236848 () Unit!155156)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!110 (Context!9474 Context!9474 List!62358 List!62358) Unit!155156)

(assert (=> b!5475255 (= lt!2236848 (lemmaConcatenateContextMatchesConcatOfStrings!110 lt!2236865 lt!2236859 (_1!35853 lt!2236851) (_2!35853 lt!2236851)))))

(declare-fun lt!2236843 () (InoxSet Context!9474))

(assert (=> b!5475255 (matchZipper!1571 lt!2236843 (_2!35853 lt!2236851))))

(declare-fun lt!2236839 () Unit!155156)

(declare-fun theoremZipperRegexEquiv!579 ((InoxSet Context!9474) List!62360 Regex!15353 List!62358) Unit!155156)

(assert (=> b!5475255 (= lt!2236839 (theoremZipperRegexEquiv!579 lt!2236843 lt!2236875 r!7292 (_2!35853 lt!2236851)))))

(declare-fun lt!2236860 () (InoxSet Context!9474))

(assert (=> b!5475255 (matchZipper!1571 lt!2236860 (_1!35853 lt!2236851))))

(declare-fun lt!2236842 () List!62360)

(declare-fun lt!2236873 () Unit!155156)

(assert (=> b!5475255 (= lt!2236873 (theoremZipperRegexEquiv!579 lt!2236860 lt!2236842 (reg!15682 r!7292) (_1!35853 lt!2236851)))))

(declare-fun b!5475256 () Bool)

(declare-fun tp!1505132 () Bool)

(declare-fun tp!1505137 () Bool)

(assert (=> b!5475256 (= e!3389053 (and tp!1505132 tp!1505137))))

(declare-fun tp!1505134 () Bool)

(declare-fun e!3389054 () Bool)

(declare-fun b!5475257 () Bool)

(assert (=> b!5475257 (= e!3389066 (and (inv!81629 (h!68684 zl!343)) e!3389054 tp!1505134))))

(declare-fun b!5475258 () Bool)

(assert (=> b!5475258 (= e!3389052 e!3389049)))

(declare-fun res!2334015 () Bool)

(assert (=> b!5475258 (=> res!2334015 e!3389049)))

(declare-fun lt!2236862 () (InoxSet Context!9474))

(assert (=> b!5475258 (= res!2334015 (not (= lt!2236862 lt!2236864)))))

(declare-fun derivationStepZipperDown!779 (Regex!15353 Context!9474 C!30976) (InoxSet Context!9474))

(assert (=> b!5475258 (= lt!2236864 (derivationStepZipperDown!779 r!7292 (Context!9475 Nil!62235) (h!68682 s!2326)))))

(assert (=> b!5475258 (= lt!2236862 (derivationStepZipperUp!705 (Context!9475 (Cons!62235 r!7292 Nil!62235)) (h!68682 s!2326)))))

(declare-fun derivationStepZipper!1548 ((InoxSet Context!9474) C!30976) (InoxSet Context!9474))

(assert (=> b!5475258 (= lt!2236846 (derivationStepZipper!1548 z!1189 (h!68682 s!2326)))))

(declare-fun b!5475259 () Bool)

(declare-fun e!3389045 () Bool)

(assert (=> b!5475259 (= e!3389045 e!3389057)))

(declare-fun res!2334026 () Bool)

(assert (=> b!5475259 (=> res!2334026 e!3389057)))

(assert (=> b!5475259 (= res!2334026 (not (= (unfocusZipper!1095 lt!2236842) (reg!15682 r!7292))))))

(assert (=> b!5475259 (= lt!2236842 (Cons!62236 lt!2236865 Nil!62236))))

(declare-fun setIsEmpty!35971 () Bool)

(assert (=> setIsEmpty!35971 setRes!35971))

(declare-fun b!5475260 () Bool)

(declare-fun res!2334019 () Bool)

(assert (=> b!5475260 (=> res!2334019 e!3389062)))

(assert (=> b!5475260 (= res!2334019 (not (matchR!7538 r!7292 (_2!35853 lt!2236851))))))

(declare-fun b!5475261 () Bool)

(declare-fun res!2334010 () Bool)

(assert (=> b!5475261 (=> res!2334010 e!3389052)))

(assert (=> b!5475261 (= res!2334010 ((_ is Nil!62234) s!2326))))

(declare-fun b!5475262 () Bool)

(assert (=> b!5475262 (= e!3389063 e!3389064)))

(declare-fun res!2334022 () Bool)

(assert (=> b!5475262 (=> res!2334022 e!3389064)))

(assert (=> b!5475262 (= res!2334022 (not (= lt!2236846 (derivationStepZipperDown!779 (reg!15682 r!7292) lt!2236859 (h!68682 s!2326)))))))

(assert (=> b!5475262 (= lt!2236859 (Context!9475 lt!2236853))))

(declare-fun lt!2236866 () (InoxSet Context!9474))

(assert (=> b!5475262 (= (flatMap!1056 lt!2236866 lambda!291802) (derivationStepZipperUp!705 lt!2236841 (h!68682 s!2326)))))

(declare-fun lt!2236840 () Unit!155156)

(assert (=> b!5475262 (= lt!2236840 (lemmaFlatMapOnSingletonSet!588 lt!2236866 lt!2236841 lambda!291802))))

(declare-fun lt!2236845 () (InoxSet Context!9474))

(assert (=> b!5475262 (= lt!2236845 (derivationStepZipperUp!705 lt!2236841 (h!68682 s!2326)))))

(assert (=> b!5475262 (= lt!2236866 (store ((as const (Array Context!9474 Bool)) false) lt!2236841 true))))

(assert (=> b!5475262 (= lt!2236841 (Context!9475 (Cons!62235 (reg!15682 r!7292) lt!2236853)))))

(assert (=> b!5475262 (= lt!2236853 (Cons!62235 r!7292 Nil!62235))))

(declare-fun b!5475263 () Bool)

(declare-fun e!3389065 () Bool)

(assert (=> b!5475263 (= e!3389059 e!3389065)))

(declare-fun res!2334013 () Bool)

(assert (=> b!5475263 (=> res!2334013 e!3389065)))

(declare-fun lt!2236868 () Bool)

(assert (=> b!5475263 (= res!2334013 (not lt!2236868))))

(declare-fun e!3389060 () Bool)

(assert (=> b!5475263 e!3389060))

(declare-fun res!2334017 () Bool)

(assert (=> b!5475263 (=> (not res!2334017) (not e!3389060))))

(assert (=> b!5475263 (= res!2334017 (= lt!2236868 (matchRSpec!2456 lt!2236870 s!2326)))))

(assert (=> b!5475263 (= lt!2236868 (matchR!7538 lt!2236870 s!2326))))

(declare-fun lt!2236858 () Unit!155156)

(assert (=> b!5475263 (= lt!2236858 (mainMatchTheorem!2456 lt!2236870 s!2326))))

(declare-fun b!5475264 () Bool)

(assert (=> b!5475264 (= e!3389065 e!3389062)))

(declare-fun res!2334024 () Bool)

(assert (=> b!5475264 (=> res!2334024 e!3389062)))

(assert (=> b!5475264 (= res!2334024 (not (= s!2326 lt!2236838)))))

(declare-fun ++!13694 (List!62358 List!62358) List!62358)

(assert (=> b!5475264 (= lt!2236838 (++!13694 (_1!35853 lt!2236851) (_2!35853 lt!2236851)))))

(declare-fun get!21460 (Option!15462) tuple2!65100)

(assert (=> b!5475264 (= lt!2236851 (get!21460 lt!2236861))))

(declare-fun b!5475265 () Bool)

(declare-fun res!2334016 () Bool)

(assert (=> b!5475265 (=> res!2334016 e!3389064)))

(assert (=> b!5475265 (= res!2334016 (or (not (= lt!2236847 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5475266 () Bool)

(declare-fun res!2334028 () Bool)

(assert (=> b!5475266 (=> res!2334028 e!3389056)))

(assert (=> b!5475266 (= res!2334028 (not ((_ is Cons!62235) (exprs!5237 (h!68684 zl!343)))))))

(declare-fun b!5475267 () Bool)

(declare-fun res!2334008 () Bool)

(assert (=> b!5475267 (=> res!2334008 e!3389064)))

(assert (=> b!5475267 (= res!2334008 (not (= (matchZipper!1571 lt!2236866 s!2326) (matchZipper!1571 (derivationStepZipper!1548 lt!2236866 (h!68682 s!2326)) (t!375587 s!2326)))))))

(declare-fun b!5475268 () Bool)

(declare-fun tp_is_empty!39959 () Bool)

(assert (=> b!5475268 (= e!3389053 tp_is_empty!39959)))

(declare-fun b!5475269 () Bool)

(declare-fun tp!1505133 () Bool)

(assert (=> b!5475269 (= e!3389054 tp!1505133)))

(declare-fun b!5475270 () Bool)

(declare-fun tp!1505138 () Bool)

(assert (=> b!5475270 (= e!3389047 (and tp_is_empty!39959 tp!1505138))))

(declare-fun b!5475271 () Bool)

(declare-fun res!2334025 () Bool)

(assert (=> b!5475271 (=> res!2334025 e!3389056)))

(declare-fun isEmpty!34187 (List!62360) Bool)

(assert (=> b!5475271 (= res!2334025 (not (isEmpty!34187 (t!375589 zl!343))))))

(declare-fun b!5475272 () Bool)

(declare-fun res!2334005 () Bool)

(assert (=> b!5475272 (=> res!2334005 e!3389056)))

(declare-fun generalisedUnion!1282 (List!62359) Regex!15353)

(declare-fun unfocusZipperList!795 (List!62360) List!62359)

(assert (=> b!5475272 (= res!2334005 (not (= r!7292 (generalisedUnion!1282 (unfocusZipperList!795 zl!343)))))))

(declare-fun b!5475273 () Bool)

(assert (=> b!5475273 (= e!3389055 (= lt!2236867 (Exists!2532 lambda!291799)))))

(declare-fun b!5475274 () Bool)

(assert (=> b!5475274 (= e!3389060 e!3389051)))

(declare-fun res!2334007 () Bool)

(assert (=> b!5475274 (=> res!2334007 e!3389051)))

(assert (=> b!5475274 (= res!2334007 (not lt!2236868))))

(declare-fun b!5475275 () Bool)

(declare-fun tp!1505136 () Bool)

(assert (=> b!5475275 (= e!3389061 tp!1505136)))

(declare-fun b!5475276 () Bool)

(assert (=> b!5475276 (= e!3389048 e!3389045)))

(declare-fun res!2334018 () Bool)

(assert (=> b!5475276 (=> res!2334018 e!3389045)))

(assert (=> b!5475276 (= res!2334018 (not (= lt!2236846 (derivationStepZipper!1548 lt!2236843 (h!68682 s!2326)))))))

(assert (=> b!5475276 (= (flatMap!1056 lt!2236843 lambda!291802) (derivationStepZipperUp!705 lt!2236859 (h!68682 s!2326)))))

(declare-fun lt!2236855 () Unit!155156)

(assert (=> b!5475276 (= lt!2236855 (lemmaFlatMapOnSingletonSet!588 lt!2236843 lt!2236859 lambda!291802))))

(assert (=> b!5475276 (= (flatMap!1056 lt!2236860 lambda!291802) (derivationStepZipperUp!705 lt!2236865 (h!68682 s!2326)))))

(declare-fun lt!2236857 () Unit!155156)

(assert (=> b!5475276 (= lt!2236857 (lemmaFlatMapOnSingletonSet!588 lt!2236860 lt!2236865 lambda!291802))))

(declare-fun lt!2236856 () (InoxSet Context!9474))

(assert (=> b!5475276 (= lt!2236856 (derivationStepZipperUp!705 lt!2236859 (h!68682 s!2326)))))

(declare-fun lt!2236844 () (InoxSet Context!9474))

(assert (=> b!5475276 (= lt!2236844 (derivationStepZipperUp!705 lt!2236865 (h!68682 s!2326)))))

(assert (=> b!5475276 (= lt!2236843 (store ((as const (Array Context!9474 Bool)) false) lt!2236859 true))))

(assert (=> b!5475276 (= lt!2236860 (store ((as const (Array Context!9474 Bool)) false) lt!2236865 true))))

(assert (=> b!5475276 (= lt!2236865 (Context!9475 lt!2236850))))

(assert (=> b!5475276 (= lt!2236850 (Cons!62235 (reg!15682 r!7292) Nil!62235))))

(assert (= (and start!572830 res!2334021) b!5475246))

(assert (= (and b!5475246 res!2334020) b!5475242))

(assert (= (and b!5475242 res!2334030) b!5475252))

(assert (= (and b!5475252 (not res!2334029)) b!5475271))

(assert (= (and b!5475271 (not res!2334025)) b!5475243))

(assert (= (and b!5475243 (not res!2334004)) b!5475266))

(assert (= (and b!5475266 (not res!2334028)) b!5475272))

(assert (= (and b!5475272 (not res!2334005)) b!5475253))

(assert (= (and b!5475253 (not res!2334011)) b!5475254))

(assert (= (and b!5475254 (not res!2334012)) b!5475251))

(assert (= (and b!5475254 (not res!2334014)) b!5475261))

(assert (= (and b!5475261 (not res!2334010)) b!5475258))

(assert (= (and b!5475258 (not res!2334015)) b!5475250))

(assert (= (and b!5475250 (not res!2334023)) b!5475262))

(assert (= (and b!5475262 (not res!2334022)) b!5475267))

(assert (= (and b!5475267 (not res!2334008)) b!5475265))

(assert (= (and b!5475265 (not res!2334016)) b!5475247))

(assert (= (and b!5475247 (not res!2334006)) b!5475276))

(assert (= (and b!5475276 (not res!2334018)) b!5475259))

(assert (= (and b!5475259 (not res!2334026)) b!5475245))

(assert (= (and b!5475245 (not res!2334009)) b!5475263))

(assert (= (and b!5475263 res!2334017) b!5475274))

(assert (= (and b!5475274 (not res!2334007)) b!5475244))

(assert (= (and b!5475244 res!2334003) b!5475273))

(assert (= (and b!5475263 (not res!2334013)) b!5475264))

(assert (= (and b!5475264 (not res!2334024)) b!5475241))

(assert (= (and b!5475241 (not res!2334027)) b!5475260))

(assert (= (and b!5475260 (not res!2334019)) b!5475255))

(assert (= (and start!572830 ((_ is ElementMatch!15353) r!7292)) b!5475268))

(assert (= (and start!572830 ((_ is Concat!24198) r!7292)) b!5475249))

(assert (= (and start!572830 ((_ is Star!15353) r!7292)) b!5475248))

(assert (= (and start!572830 ((_ is Union!15353) r!7292)) b!5475256))

(assert (= (and start!572830 condSetEmpty!35971) setIsEmpty!35971))

(assert (= (and start!572830 (not condSetEmpty!35971)) setNonEmpty!35971))

(assert (= setNonEmpty!35971 b!5475275))

(assert (= b!5475257 b!5475269))

(assert (= (and start!572830 ((_ is Cons!62236) zl!343)) b!5475257))

(assert (= (and start!572830 ((_ is Cons!62234) s!2326)) b!5475270))

(declare-fun m!6492088 () Bool)

(assert (=> b!5475273 m!6492088))

(declare-fun m!6492090 () Bool)

(assert (=> b!5475272 m!6492090))

(assert (=> b!5475272 m!6492090))

(declare-fun m!6492092 () Bool)

(assert (=> b!5475272 m!6492092))

(assert (=> b!5475244 m!6492088))

(declare-fun m!6492094 () Bool)

(assert (=> b!5475244 m!6492094))

(declare-fun m!6492096 () Bool)

(assert (=> b!5475263 m!6492096))

(declare-fun m!6492098 () Bool)

(assert (=> b!5475263 m!6492098))

(declare-fun m!6492100 () Bool)

(assert (=> b!5475263 m!6492100))

(declare-fun m!6492102 () Bool)

(assert (=> b!5475260 m!6492102))

(assert (=> b!5475254 m!6492088))

(declare-fun m!6492104 () Bool)

(assert (=> b!5475254 m!6492104))

(declare-fun m!6492106 () Bool)

(assert (=> b!5475254 m!6492106))

(assert (=> b!5475254 m!6492094))

(declare-fun m!6492108 () Bool)

(assert (=> b!5475254 m!6492108))

(assert (=> b!5475254 m!6492088))

(assert (=> b!5475254 m!6492088))

(declare-fun m!6492110 () Bool)

(assert (=> b!5475254 m!6492110))

(declare-fun m!6492112 () Bool)

(assert (=> b!5475254 m!6492112))

(declare-fun m!6492114 () Bool)

(assert (=> b!5475254 m!6492114))

(declare-fun m!6492116 () Bool)

(assert (=> b!5475254 m!6492116))

(declare-fun m!6492118 () Bool)

(assert (=> setNonEmpty!35971 m!6492118))

(declare-fun m!6492120 () Bool)

(assert (=> b!5475252 m!6492120))

(declare-fun m!6492122 () Bool)

(assert (=> b!5475252 m!6492122))

(declare-fun m!6492124 () Bool)

(assert (=> b!5475252 m!6492124))

(declare-fun m!6492126 () Bool)

(assert (=> b!5475259 m!6492126))

(declare-fun m!6492128 () Bool)

(assert (=> b!5475247 m!6492128))

(declare-fun m!6492130 () Bool)

(assert (=> b!5475250 m!6492130))

(declare-fun m!6492132 () Bool)

(assert (=> b!5475250 m!6492132))

(declare-fun m!6492134 () Bool)

(assert (=> b!5475250 m!6492134))

(declare-fun m!6492136 () Bool)

(assert (=> b!5475262 m!6492136))

(declare-fun m!6492138 () Bool)

(assert (=> b!5475262 m!6492138))

(declare-fun m!6492140 () Bool)

(assert (=> b!5475262 m!6492140))

(declare-fun m!6492142 () Bool)

(assert (=> b!5475262 m!6492142))

(declare-fun m!6492144 () Bool)

(assert (=> b!5475262 m!6492144))

(declare-fun m!6492146 () Bool)

(assert (=> b!5475258 m!6492146))

(declare-fun m!6492148 () Bool)

(assert (=> b!5475258 m!6492148))

(declare-fun m!6492150 () Bool)

(assert (=> b!5475258 m!6492150))

(declare-fun m!6492152 () Bool)

(assert (=> b!5475257 m!6492152))

(declare-fun m!6492154 () Bool)

(assert (=> b!5475245 m!6492154))

(declare-fun m!6492156 () Bool)

(assert (=> b!5475276 m!6492156))

(declare-fun m!6492158 () Bool)

(assert (=> b!5475276 m!6492158))

(declare-fun m!6492160 () Bool)

(assert (=> b!5475276 m!6492160))

(declare-fun m!6492162 () Bool)

(assert (=> b!5475276 m!6492162))

(declare-fun m!6492164 () Bool)

(assert (=> b!5475276 m!6492164))

(declare-fun m!6492166 () Bool)

(assert (=> b!5475276 m!6492166))

(declare-fun m!6492168 () Bool)

(assert (=> b!5475276 m!6492168))

(declare-fun m!6492170 () Bool)

(assert (=> b!5475276 m!6492170))

(declare-fun m!6492172 () Bool)

(assert (=> b!5475276 m!6492172))

(declare-fun m!6492174 () Bool)

(assert (=> b!5475246 m!6492174))

(declare-fun m!6492176 () Bool)

(assert (=> b!5475243 m!6492176))

(declare-fun m!6492178 () Bool)

(assert (=> b!5475242 m!6492178))

(declare-fun m!6492180 () Bool)

(assert (=> b!5475255 m!6492180))

(declare-fun m!6492182 () Bool)

(assert (=> b!5475255 m!6492182))

(declare-fun m!6492184 () Bool)

(assert (=> b!5475255 m!6492184))

(declare-fun m!6492186 () Bool)

(assert (=> b!5475255 m!6492186))

(declare-fun m!6492188 () Bool)

(assert (=> b!5475255 m!6492188))

(declare-fun m!6492190 () Bool)

(assert (=> b!5475255 m!6492190))

(declare-fun m!6492192 () Bool)

(assert (=> b!5475255 m!6492192))

(assert (=> b!5475255 m!6492188))

(declare-fun m!6492194 () Bool)

(assert (=> b!5475255 m!6492194))

(declare-fun m!6492196 () Bool)

(assert (=> b!5475255 m!6492196))

(declare-fun m!6492198 () Bool)

(assert (=> b!5475255 m!6492198))

(declare-fun m!6492200 () Bool)

(assert (=> start!572830 m!6492200))

(declare-fun m!6492202 () Bool)

(assert (=> b!5475271 m!6492202))

(declare-fun m!6492204 () Bool)

(assert (=> b!5475267 m!6492204))

(declare-fun m!6492206 () Bool)

(assert (=> b!5475267 m!6492206))

(assert (=> b!5475267 m!6492206))

(declare-fun m!6492208 () Bool)

(assert (=> b!5475267 m!6492208))

(declare-fun m!6492210 () Bool)

(assert (=> b!5475241 m!6492210))

(declare-fun m!6492212 () Bool)

(assert (=> b!5475264 m!6492212))

(declare-fun m!6492214 () Bool)

(assert (=> b!5475264 m!6492214))

(check-sat (not b!5475259) (not b!5475250) (not b!5475246) (not start!572830) (not b!5475244) (not b!5475256) (not setNonEmpty!35971) (not b!5475249) (not b!5475276) (not b!5475263) (not b!5475247) (not b!5475254) (not b!5475257) (not b!5475269) (not b!5475245) (not b!5475242) (not b!5475264) (not b!5475273) (not b!5475248) (not b!5475275) (not b!5475260) tp_is_empty!39959 (not b!5475267) (not b!5475271) (not b!5475243) (not b!5475258) (not b!5475255) (not b!5475252) (not b!5475270) (not b!5475262) (not b!5475272) (not b!5475241))
(check-sat)
