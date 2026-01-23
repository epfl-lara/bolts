; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!588872 () Bool)

(assert start!588872)

(declare-fun b!5720869 () Bool)

(assert (=> b!5720869 true))

(assert (=> b!5720869 true))

(declare-fun lambda!309136 () Int)

(declare-fun lambda!309135 () Int)

(assert (=> b!5720869 (not (= lambda!309136 lambda!309135))))

(assert (=> b!5720869 true))

(assert (=> b!5720869 true))

(declare-fun b!5720846 () Bool)

(assert (=> b!5720846 true))

(declare-fun b!5720838 () Bool)

(declare-fun res!2415321 () Bool)

(declare-fun e!3517934 () Bool)

(assert (=> b!5720838 (=> res!2415321 e!3517934)))

(declare-fun e!3517939 () Bool)

(assert (=> b!5720838 (= res!2415321 e!3517939)))

(declare-fun res!2415325 () Bool)

(assert (=> b!5720838 (=> (not res!2415325) (not e!3517939))))

(declare-datatypes ((C!31704 0))(
  ( (C!31705 (val!25554 Int)) )
))
(declare-datatypes ((Regex!15717 0))(
  ( (ElementMatch!15717 (c!1008905 C!31704)) (Concat!24562 (regOne!31946 Regex!15717) (regTwo!31946 Regex!15717)) (EmptyExpr!15717) (Star!15717 (reg!16046 Regex!15717)) (EmptyLang!15717) (Union!15717 (regOne!31947 Regex!15717) (regTwo!31947 Regex!15717)) )
))
(declare-fun r!7292 () Regex!15717)

(get-info :version)

(assert (=> b!5720838 (= res!2415325 ((_ is Concat!24562) (regOne!31946 r!7292)))))

(declare-fun b!5720839 () Bool)

(declare-fun e!3517932 () Bool)

(declare-fun e!3517928 () Bool)

(assert (=> b!5720839 (= e!3517932 e!3517928)))

(declare-fun res!2415322 () Bool)

(assert (=> b!5720839 (=> res!2415322 e!3517928)))

(declare-fun lt!2278089 () Regex!15717)

(assert (=> b!5720839 (= res!2415322 (not (= r!7292 lt!2278089)))))

(declare-fun lt!2278095 () Regex!15717)

(assert (=> b!5720839 (= lt!2278089 (Concat!24562 lt!2278095 (regTwo!31946 r!7292)))))

(declare-fun b!5720840 () Bool)

(declare-fun e!3517933 () Bool)

(declare-fun e!3517935 () Bool)

(assert (=> b!5720840 (= e!3517933 (not e!3517935))))

(declare-fun res!2415327 () Bool)

(assert (=> b!5720840 (=> res!2415327 e!3517935)))

(declare-datatypes ((List!63450 0))(
  ( (Nil!63326) (Cons!63326 (h!69774 Regex!15717) (t!376774 List!63450)) )
))
(declare-datatypes ((Context!10202 0))(
  ( (Context!10203 (exprs!5601 List!63450)) )
))
(declare-datatypes ((List!63451 0))(
  ( (Nil!63327) (Cons!63327 (h!69775 Context!10202) (t!376775 List!63451)) )
))
(declare-fun zl!343 () List!63451)

(assert (=> b!5720840 (= res!2415327 (not ((_ is Cons!63327) zl!343)))))

(declare-fun lt!2278085 () Bool)

(declare-datatypes ((List!63452 0))(
  ( (Nil!63328) (Cons!63328 (h!69776 C!31704) (t!376776 List!63452)) )
))
(declare-fun s!2326 () List!63452)

(declare-fun matchRSpec!2820 (Regex!15717 List!63452) Bool)

(assert (=> b!5720840 (= lt!2278085 (matchRSpec!2820 r!7292 s!2326))))

(declare-fun matchR!7902 (Regex!15717 List!63452) Bool)

(assert (=> b!5720840 (= lt!2278085 (matchR!7902 r!7292 s!2326))))

(declare-datatypes ((Unit!156400 0))(
  ( (Unit!156401) )
))
(declare-fun lt!2278077 () Unit!156400)

(declare-fun mainMatchTheorem!2820 (Regex!15717 List!63452) Unit!156400)

(assert (=> b!5720840 (= lt!2278077 (mainMatchTheorem!2820 r!7292 s!2326))))

(declare-fun b!5720841 () Bool)

(declare-fun res!2415337 () Bool)

(assert (=> b!5720841 (=> res!2415337 e!3517935)))

(declare-fun isEmpty!35201 (List!63451) Bool)

(assert (=> b!5720841 (= res!2415337 (not (isEmpty!35201 (t!376775 zl!343))))))

(declare-fun b!5720842 () Bool)

(declare-fun e!3517922 () Bool)

(declare-fun e!3517930 () Bool)

(assert (=> b!5720842 (= e!3517922 e!3517930)))

(declare-fun res!2415335 () Bool)

(assert (=> b!5720842 (=> res!2415335 e!3517930)))

(assert (=> b!5720842 (= res!2415335 lt!2278085)))

(declare-fun lt!2278086 () Regex!15717)

(assert (=> b!5720842 (= (matchR!7902 lt!2278086 s!2326) (matchRSpec!2820 lt!2278086 s!2326))))

(declare-fun lt!2278096 () Unit!156400)

(assert (=> b!5720842 (= lt!2278096 (mainMatchTheorem!2820 lt!2278086 s!2326))))

(declare-fun b!5720843 () Bool)

(declare-fun e!3517937 () Unit!156400)

(declare-fun Unit!156402 () Unit!156400)

(assert (=> b!5720843 (= e!3517937 Unit!156402)))

(declare-fun lt!2278076 () Unit!156400)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2278084 () (InoxSet Context!10202))

(declare-fun lt!2278067 () (InoxSet Context!10202))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!742 ((InoxSet Context!10202) (InoxSet Context!10202) List!63452) Unit!156400)

(assert (=> b!5720843 (= lt!2278076 (lemmaZipperConcatMatchesSameAsBothZippers!742 lt!2278067 lt!2278084 (t!376776 s!2326)))))

(declare-fun res!2415326 () Bool)

(declare-fun matchZipper!1855 ((InoxSet Context!10202) List!63452) Bool)

(assert (=> b!5720843 (= res!2415326 (matchZipper!1855 lt!2278067 (t!376776 s!2326)))))

(declare-fun e!3517926 () Bool)

(assert (=> b!5720843 (=> res!2415326 e!3517926)))

(assert (=> b!5720843 (= (matchZipper!1855 ((_ map or) lt!2278067 lt!2278084) (t!376776 s!2326)) e!3517926)))

(declare-fun b!5720844 () Bool)

(declare-fun res!2415314 () Bool)

(assert (=> b!5720844 (=> res!2415314 e!3517922)))

(declare-fun lt!2278082 () Context!10202)

(declare-fun unfocusZipper!1459 (List!63451) Regex!15717)

(assert (=> b!5720844 (= res!2415314 (not (= (unfocusZipper!1459 (Cons!63327 lt!2278082 Nil!63327)) lt!2278089)))))

(declare-fun res!2415328 () Bool)

(declare-fun e!3517925 () Bool)

(assert (=> start!588872 (=> (not res!2415328) (not e!3517925))))

(declare-fun validRegex!7453 (Regex!15717) Bool)

(assert (=> start!588872 (= res!2415328 (validRegex!7453 r!7292))))

(assert (=> start!588872 e!3517925))

(declare-fun e!3517940 () Bool)

(assert (=> start!588872 e!3517940))

(declare-fun condSetEmpty!38331 () Bool)

(declare-fun z!1189 () (InoxSet Context!10202))

(assert (=> start!588872 (= condSetEmpty!38331 (= z!1189 ((as const (Array Context!10202 Bool)) false)))))

(declare-fun setRes!38331 () Bool)

(assert (=> start!588872 setRes!38331))

(declare-fun e!3517927 () Bool)

(assert (=> start!588872 e!3517927))

(declare-fun e!3517924 () Bool)

(assert (=> start!588872 e!3517924))

(declare-fun b!5720845 () Bool)

(declare-fun res!2415320 () Bool)

(declare-fun e!3517938 () Bool)

(assert (=> b!5720845 (=> res!2415320 e!3517938)))

(declare-fun isEmpty!35202 (List!63450) Bool)

(assert (=> b!5720845 (= res!2415320 (isEmpty!35202 (t!376774 (exprs!5601 (h!69775 zl!343)))))))

(assert (=> b!5720846 (= e!3517938 e!3517934)))

(declare-fun res!2415323 () Bool)

(assert (=> b!5720846 (=> res!2415323 e!3517934)))

(assert (=> b!5720846 (= res!2415323 (or (and ((_ is ElementMatch!15717) (regOne!31946 r!7292)) (= (c!1008905 (regOne!31946 r!7292)) (h!69776 s!2326))) ((_ is Union!15717) (regOne!31946 r!7292))))))

(declare-fun lt!2278088 () Unit!156400)

(assert (=> b!5720846 (= lt!2278088 e!3517937)))

(declare-fun c!1008904 () Bool)

(declare-fun lt!2278080 () Bool)

(assert (=> b!5720846 (= c!1008904 lt!2278080)))

(declare-fun nullable!5749 (Regex!15717) Bool)

(assert (=> b!5720846 (= lt!2278080 (nullable!5749 (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun lambda!309137 () Int)

(declare-fun flatMap!1330 ((InoxSet Context!10202) Int) (InoxSet Context!10202))

(declare-fun derivationStepZipperUp!985 (Context!10202 C!31704) (InoxSet Context!10202))

(assert (=> b!5720846 (= (flatMap!1330 z!1189 lambda!309137) (derivationStepZipperUp!985 (h!69775 zl!343) (h!69776 s!2326)))))

(declare-fun lt!2278074 () Unit!156400)

(declare-fun lemmaFlatMapOnSingletonSet!862 ((InoxSet Context!10202) Context!10202 Int) Unit!156400)

(assert (=> b!5720846 (= lt!2278074 (lemmaFlatMapOnSingletonSet!862 z!1189 (h!69775 zl!343) lambda!309137))))

(declare-fun lt!2278073 () Context!10202)

(assert (=> b!5720846 (= lt!2278084 (derivationStepZipperUp!985 lt!2278073 (h!69776 s!2326)))))

(declare-fun derivationStepZipperDown!1059 (Regex!15717 Context!10202 C!31704) (InoxSet Context!10202))

(assert (=> b!5720846 (= lt!2278067 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (h!69775 zl!343))) lt!2278073 (h!69776 s!2326)))))

(assert (=> b!5720846 (= lt!2278073 (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun lt!2278090 () (InoxSet Context!10202))

(assert (=> b!5720846 (= lt!2278090 (derivationStepZipperUp!985 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))) (h!69776 s!2326)))))

(declare-fun setNonEmpty!38331 () Bool)

(declare-fun setElem!38331 () Context!10202)

(declare-fun tp!1584430 () Bool)

(declare-fun e!3517936 () Bool)

(declare-fun inv!82539 (Context!10202) Bool)

(assert (=> setNonEmpty!38331 (= setRes!38331 (and tp!1584430 (inv!82539 setElem!38331) e!3517936))))

(declare-fun setRest!38331 () (InoxSet Context!10202))

(assert (=> setNonEmpty!38331 (= z!1189 ((_ map or) (store ((as const (Array Context!10202 Bool)) false) setElem!38331 true) setRest!38331))))

(declare-fun b!5720847 () Bool)

(declare-fun tp!1584426 () Bool)

(assert (=> b!5720847 (= e!3517940 tp!1584426)))

(declare-fun b!5720848 () Bool)

(declare-fun e!3517923 () Bool)

(assert (=> b!5720848 (= e!3517928 e!3517923)))

(declare-fun res!2415315 () Bool)

(assert (=> b!5720848 (=> res!2415315 e!3517923)))

(declare-fun lt!2278097 () Context!10202)

(assert (=> b!5720848 (= res!2415315 (not (= (unfocusZipper!1459 (Cons!63327 lt!2278097 Nil!63327)) lt!2278086)))))

(assert (=> b!5720848 (= lt!2278086 (Concat!24562 (reg!16046 (regOne!31946 r!7292)) lt!2278089))))

(declare-fun e!3517929 () Bool)

(declare-fun b!5720849 () Bool)

(declare-fun tp!1584425 () Bool)

(assert (=> b!5720849 (= e!3517927 (and (inv!82539 (h!69775 zl!343)) e!3517929 tp!1584425))))

(declare-fun b!5720850 () Bool)

(declare-fun res!2415333 () Bool)

(assert (=> b!5720850 (=> res!2415333 e!3517932)))

(declare-fun lt!2278070 () (InoxSet Context!10202))

(declare-fun lt!2278092 () (InoxSet Context!10202))

(assert (=> b!5720850 (= res!2415333 (not (= (matchZipper!1855 lt!2278092 s!2326) (matchZipper!1855 lt!2278070 (t!376776 s!2326)))))))

(declare-fun b!5720851 () Bool)

(assert (=> b!5720851 (= e!3517939 (nullable!5749 (regOne!31946 (regOne!31946 r!7292))))))

(declare-fun setIsEmpty!38331 () Bool)

(assert (=> setIsEmpty!38331 setRes!38331))

(declare-fun b!5720852 () Bool)

(assert (=> b!5720852 (= e!3517923 e!3517922)))

(declare-fun res!2415311 () Bool)

(assert (=> b!5720852 (=> res!2415311 e!3517922)))

(declare-fun lt!2278081 () Context!10202)

(assert (=> b!5720852 (= res!2415311 (not (= (unfocusZipper!1459 (Cons!63327 lt!2278081 Nil!63327)) (reg!16046 (regOne!31946 r!7292)))))))

(declare-fun lt!2278079 () (InoxSet Context!10202))

(assert (=> b!5720852 (= (flatMap!1330 lt!2278079 lambda!309137) (derivationStepZipperUp!985 lt!2278082 (h!69776 s!2326)))))

(declare-fun lt!2278069 () Unit!156400)

(assert (=> b!5720852 (= lt!2278069 (lemmaFlatMapOnSingletonSet!862 lt!2278079 lt!2278082 lambda!309137))))

(declare-fun lt!2278072 () (InoxSet Context!10202))

(assert (=> b!5720852 (= (flatMap!1330 lt!2278072 lambda!309137) (derivationStepZipperUp!985 lt!2278081 (h!69776 s!2326)))))

(declare-fun lt!2278071 () Unit!156400)

(assert (=> b!5720852 (= lt!2278071 (lemmaFlatMapOnSingletonSet!862 lt!2278072 lt!2278081 lambda!309137))))

(declare-fun lt!2278091 () (InoxSet Context!10202))

(assert (=> b!5720852 (= lt!2278091 (derivationStepZipperUp!985 lt!2278082 (h!69776 s!2326)))))

(declare-fun lt!2278087 () (InoxSet Context!10202))

(assert (=> b!5720852 (= lt!2278087 (derivationStepZipperUp!985 lt!2278081 (h!69776 s!2326)))))

(assert (=> b!5720852 (= lt!2278079 (store ((as const (Array Context!10202 Bool)) false) lt!2278082 true))))

(assert (=> b!5720852 (= lt!2278072 (store ((as const (Array Context!10202 Bool)) false) lt!2278081 true))))

(assert (=> b!5720852 (= lt!2278081 (Context!10203 (Cons!63326 (reg!16046 (regOne!31946 r!7292)) Nil!63326)))))

(declare-fun b!5720853 () Bool)

(declare-fun Unit!156403 () Unit!156400)

(assert (=> b!5720853 (= e!3517937 Unit!156403)))

(declare-fun b!5720854 () Bool)

(declare-fun tp!1584428 () Bool)

(declare-fun tp!1584424 () Bool)

(assert (=> b!5720854 (= e!3517940 (and tp!1584428 tp!1584424))))

(declare-fun b!5720855 () Bool)

(declare-fun tp!1584429 () Bool)

(assert (=> b!5720855 (= e!3517929 tp!1584429)))

(declare-fun b!5720856 () Bool)

(declare-fun res!2415332 () Bool)

(assert (=> b!5720856 (=> res!2415332 e!3517930)))

(assert (=> b!5720856 (= res!2415332 (matchZipper!1855 lt!2278067 (t!376776 s!2326)))))

(declare-fun b!5720857 () Bool)

(declare-fun e!3517931 () Bool)

(assert (=> b!5720857 (= e!3517931 e!3517932)))

(declare-fun res!2415310 () Bool)

(assert (=> b!5720857 (=> res!2415310 e!3517932)))

(declare-fun lt!2278068 () (InoxSet Context!10202))

(assert (=> b!5720857 (= res!2415310 (not (= lt!2278070 lt!2278068)))))

(assert (=> b!5720857 (= (flatMap!1330 lt!2278092 lambda!309137) (derivationStepZipperUp!985 lt!2278097 (h!69776 s!2326)))))

(declare-fun lt!2278098 () Unit!156400)

(assert (=> b!5720857 (= lt!2278098 (lemmaFlatMapOnSingletonSet!862 lt!2278092 lt!2278097 lambda!309137))))

(declare-fun lt!2278094 () (InoxSet Context!10202))

(assert (=> b!5720857 (= lt!2278094 (derivationStepZipperUp!985 lt!2278097 (h!69776 s!2326)))))

(declare-fun derivationStepZipper!1800 ((InoxSet Context!10202) C!31704) (InoxSet Context!10202))

(assert (=> b!5720857 (= lt!2278070 (derivationStepZipper!1800 lt!2278092 (h!69776 s!2326)))))

(assert (=> b!5720857 (= lt!2278092 (store ((as const (Array Context!10202 Bool)) false) lt!2278097 true))))

(declare-fun lt!2278075 () List!63450)

(assert (=> b!5720857 (= lt!2278097 (Context!10203 (Cons!63326 (reg!16046 (regOne!31946 r!7292)) lt!2278075)))))

(declare-fun b!5720858 () Bool)

(assert (=> b!5720858 (= e!3517925 e!3517933)))

(declare-fun res!2415316 () Bool)

(assert (=> b!5720858 (=> (not res!2415316) (not e!3517933))))

(declare-fun lt!2278083 () Regex!15717)

(assert (=> b!5720858 (= res!2415316 (= r!7292 lt!2278083))))

(assert (=> b!5720858 (= lt!2278083 (unfocusZipper!1459 zl!343))))

(declare-fun b!5720859 () Bool)

(declare-fun res!2415313 () Bool)

(assert (=> b!5720859 (=> res!2415313 e!3517930)))

(assert (=> b!5720859 (= res!2415313 (not lt!2278080))))

(declare-fun b!5720860 () Bool)

(assert (=> b!5720860 (= e!3517930 (matchZipper!1855 lt!2278084 (t!376776 s!2326)))))

(declare-fun b!5720861 () Bool)

(declare-fun tp!1584427 () Bool)

(declare-fun tp!1584423 () Bool)

(assert (=> b!5720861 (= e!3517940 (and tp!1584427 tp!1584423))))

(declare-fun b!5720862 () Bool)

(declare-fun res!2415319 () Bool)

(assert (=> b!5720862 (=> res!2415319 e!3517935)))

(declare-fun generalisedUnion!1580 (List!63450) Regex!15717)

(declare-fun unfocusZipperList!1145 (List!63451) List!63450)

(assert (=> b!5720862 (= res!2415319 (not (= r!7292 (generalisedUnion!1580 (unfocusZipperList!1145 zl!343)))))))

(declare-fun b!5720863 () Bool)

(declare-fun tp_is_empty!40687 () Bool)

(declare-fun tp!1584422 () Bool)

(assert (=> b!5720863 (= e!3517924 (and tp_is_empty!40687 tp!1584422))))

(declare-fun b!5720864 () Bool)

(assert (=> b!5720864 (= e!3517926 (matchZipper!1855 lt!2278084 (t!376776 s!2326)))))

(declare-fun b!5720865 () Bool)

(declare-fun res!2415317 () Bool)

(assert (=> b!5720865 (=> (not res!2415317) (not e!3517925))))

(declare-fun toList!9501 ((InoxSet Context!10202)) List!63451)

(assert (=> b!5720865 (= res!2415317 (= (toList!9501 z!1189) zl!343))))

(declare-fun b!5720866 () Bool)

(declare-fun tp!1584421 () Bool)

(assert (=> b!5720866 (= e!3517936 tp!1584421)))

(declare-fun b!5720867 () Bool)

(declare-fun res!2415324 () Bool)

(assert (=> b!5720867 (=> res!2415324 e!3517935)))

(assert (=> b!5720867 (= res!2415324 (not ((_ is Cons!63326) (exprs!5601 (h!69775 zl!343)))))))

(declare-fun b!5720868 () Bool)

(assert (=> b!5720868 (= e!3517934 e!3517931)))

(declare-fun res!2415329 () Bool)

(assert (=> b!5720868 (=> res!2415329 e!3517931)))

(assert (=> b!5720868 (= res!2415329 (not (= lt!2278067 lt!2278068)))))

(assert (=> b!5720868 (= lt!2278068 (derivationStepZipperDown!1059 (reg!16046 (regOne!31946 r!7292)) lt!2278082 (h!69776 s!2326)))))

(assert (=> b!5720868 (= lt!2278082 (Context!10203 lt!2278075))))

(assert (=> b!5720868 (= lt!2278075 (Cons!63326 lt!2278095 (t!376774 (exprs!5601 (h!69775 zl!343)))))))

(assert (=> b!5720868 (= lt!2278095 (Star!15717 (reg!16046 (regOne!31946 r!7292))))))

(assert (=> b!5720869 (= e!3517935 e!3517938)))

(declare-fun res!2415318 () Bool)

(assert (=> b!5720869 (=> res!2415318 e!3517938)))

(declare-fun lt!2278066 () Bool)

(assert (=> b!5720869 (= res!2415318 (or (not (= lt!2278085 lt!2278066)) ((_ is Nil!63328) s!2326)))))

(declare-fun Exists!2817 (Int) Bool)

(assert (=> b!5720869 (= (Exists!2817 lambda!309135) (Exists!2817 lambda!309136))))

(declare-fun lt!2278078 () Unit!156400)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1446 (Regex!15717 Regex!15717 List!63452) Unit!156400)

(assert (=> b!5720869 (= lt!2278078 (lemmaExistCutMatchRandMatchRSpecEquivalent!1446 (regOne!31946 r!7292) (regTwo!31946 r!7292) s!2326))))

(assert (=> b!5720869 (= lt!2278066 (Exists!2817 lambda!309135))))

(declare-datatypes ((tuple2!65628 0))(
  ( (tuple2!65629 (_1!36117 List!63452) (_2!36117 List!63452)) )
))
(declare-datatypes ((Option!15726 0))(
  ( (None!15725) (Some!15725 (v!51780 tuple2!65628)) )
))
(declare-fun isDefined!12429 (Option!15726) Bool)

(declare-fun findConcatSeparation!2140 (Regex!15717 Regex!15717 List!63452 List!63452 List!63452) Option!15726)

(assert (=> b!5720869 (= lt!2278066 (isDefined!12429 (findConcatSeparation!2140 (regOne!31946 r!7292) (regTwo!31946 r!7292) Nil!63328 s!2326 s!2326)))))

(declare-fun lt!2278093 () Unit!156400)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1904 (Regex!15717 Regex!15717 List!63452) Unit!156400)

(assert (=> b!5720869 (= lt!2278093 (lemmaFindConcatSeparationEquivalentToExists!1904 (regOne!31946 r!7292) (regTwo!31946 r!7292) s!2326))))

(declare-fun b!5720870 () Bool)

(assert (=> b!5720870 (= e!3517940 tp_is_empty!40687)))

(declare-fun b!5720871 () Bool)

(declare-fun res!2415334 () Bool)

(assert (=> b!5720871 (=> res!2415334 e!3517934)))

(assert (=> b!5720871 (= res!2415334 (or ((_ is Concat!24562) (regOne!31946 r!7292)) (not ((_ is Star!15717) (regOne!31946 r!7292)))))))

(declare-fun b!5720872 () Bool)

(declare-fun res!2415336 () Bool)

(assert (=> b!5720872 (=> res!2415336 e!3517935)))

(assert (=> b!5720872 (= res!2415336 (or ((_ is EmptyExpr!15717) r!7292) ((_ is EmptyLang!15717) r!7292) ((_ is ElementMatch!15717) r!7292) ((_ is Union!15717) r!7292) (not ((_ is Concat!24562) r!7292))))))

(declare-fun b!5720873 () Bool)

(declare-fun res!2415330 () Bool)

(assert (=> b!5720873 (=> res!2415330 e!3517930)))

(assert (=> b!5720873 (= res!2415330 (not (matchZipper!1855 z!1189 s!2326)))))

(declare-fun b!5720874 () Bool)

(declare-fun res!2415312 () Bool)

(assert (=> b!5720874 (=> res!2415312 e!3517935)))

(declare-fun generalisedConcat!1332 (List!63450) Regex!15717)

(assert (=> b!5720874 (= res!2415312 (not (= r!7292 (generalisedConcat!1332 (exprs!5601 (h!69775 zl!343))))))))

(declare-fun b!5720875 () Bool)

(declare-fun res!2415331 () Bool)

(assert (=> b!5720875 (=> res!2415331 e!3517932)))

(assert (=> b!5720875 (= res!2415331 (not (= lt!2278083 r!7292)))))

(assert (= (and start!588872 res!2415328) b!5720865))

(assert (= (and b!5720865 res!2415317) b!5720858))

(assert (= (and b!5720858 res!2415316) b!5720840))

(assert (= (and b!5720840 (not res!2415327)) b!5720841))

(assert (= (and b!5720841 (not res!2415337)) b!5720874))

(assert (= (and b!5720874 (not res!2415312)) b!5720867))

(assert (= (and b!5720867 (not res!2415324)) b!5720862))

(assert (= (and b!5720862 (not res!2415319)) b!5720872))

(assert (= (and b!5720872 (not res!2415336)) b!5720869))

(assert (= (and b!5720869 (not res!2415318)) b!5720845))

(assert (= (and b!5720845 (not res!2415320)) b!5720846))

(assert (= (and b!5720846 c!1008904) b!5720843))

(assert (= (and b!5720846 (not c!1008904)) b!5720853))

(assert (= (and b!5720843 (not res!2415326)) b!5720864))

(assert (= (and b!5720846 (not res!2415323)) b!5720838))

(assert (= (and b!5720838 res!2415325) b!5720851))

(assert (= (and b!5720838 (not res!2415321)) b!5720871))

(assert (= (and b!5720871 (not res!2415334)) b!5720868))

(assert (= (and b!5720868 (not res!2415329)) b!5720857))

(assert (= (and b!5720857 (not res!2415310)) b!5720850))

(assert (= (and b!5720850 (not res!2415333)) b!5720875))

(assert (= (and b!5720875 (not res!2415331)) b!5720839))

(assert (= (and b!5720839 (not res!2415322)) b!5720848))

(assert (= (and b!5720848 (not res!2415315)) b!5720852))

(assert (= (and b!5720852 (not res!2415311)) b!5720844))

(assert (= (and b!5720844 (not res!2415314)) b!5720842))

(assert (= (and b!5720842 (not res!2415335)) b!5720873))

(assert (= (and b!5720873 (not res!2415330)) b!5720859))

(assert (= (and b!5720859 (not res!2415313)) b!5720856))

(assert (= (and b!5720856 (not res!2415332)) b!5720860))

(assert (= (and start!588872 ((_ is ElementMatch!15717) r!7292)) b!5720870))

(assert (= (and start!588872 ((_ is Concat!24562) r!7292)) b!5720861))

(assert (= (and start!588872 ((_ is Star!15717) r!7292)) b!5720847))

(assert (= (and start!588872 ((_ is Union!15717) r!7292)) b!5720854))

(assert (= (and start!588872 condSetEmpty!38331) setIsEmpty!38331))

(assert (= (and start!588872 (not condSetEmpty!38331)) setNonEmpty!38331))

(assert (= setNonEmpty!38331 b!5720866))

(assert (= b!5720849 b!5720855))

(assert (= (and start!588872 ((_ is Cons!63327) zl!343)) b!5720849))

(assert (= (and start!588872 ((_ is Cons!63328) s!2326)) b!5720863))

(declare-fun m!6674078 () Bool)

(assert (=> b!5720860 m!6674078))

(declare-fun m!6674080 () Bool)

(assert (=> b!5720846 m!6674080))

(declare-fun m!6674082 () Bool)

(assert (=> b!5720846 m!6674082))

(declare-fun m!6674084 () Bool)

(assert (=> b!5720846 m!6674084))

(declare-fun m!6674086 () Bool)

(assert (=> b!5720846 m!6674086))

(declare-fun m!6674088 () Bool)

(assert (=> b!5720846 m!6674088))

(declare-fun m!6674090 () Bool)

(assert (=> b!5720846 m!6674090))

(declare-fun m!6674092 () Bool)

(assert (=> b!5720846 m!6674092))

(declare-fun m!6674094 () Bool)

(assert (=> b!5720841 m!6674094))

(declare-fun m!6674096 () Bool)

(assert (=> b!5720844 m!6674096))

(assert (=> b!5720864 m!6674078))

(declare-fun m!6674098 () Bool)

(assert (=> b!5720869 m!6674098))

(declare-fun m!6674100 () Bool)

(assert (=> b!5720869 m!6674100))

(declare-fun m!6674102 () Bool)

(assert (=> b!5720869 m!6674102))

(declare-fun m!6674104 () Bool)

(assert (=> b!5720869 m!6674104))

(declare-fun m!6674106 () Bool)

(assert (=> b!5720869 m!6674106))

(assert (=> b!5720869 m!6674100))

(assert (=> b!5720869 m!6674104))

(declare-fun m!6674108 () Bool)

(assert (=> b!5720869 m!6674108))

(declare-fun m!6674110 () Bool)

(assert (=> b!5720858 m!6674110))

(declare-fun m!6674112 () Bool)

(assert (=> b!5720852 m!6674112))

(declare-fun m!6674114 () Bool)

(assert (=> b!5720852 m!6674114))

(declare-fun m!6674116 () Bool)

(assert (=> b!5720852 m!6674116))

(declare-fun m!6674118 () Bool)

(assert (=> b!5720852 m!6674118))

(declare-fun m!6674120 () Bool)

(assert (=> b!5720852 m!6674120))

(declare-fun m!6674122 () Bool)

(assert (=> b!5720852 m!6674122))

(declare-fun m!6674124 () Bool)

(assert (=> b!5720852 m!6674124))

(declare-fun m!6674126 () Bool)

(assert (=> b!5720852 m!6674126))

(declare-fun m!6674128 () Bool)

(assert (=> b!5720852 m!6674128))

(declare-fun m!6674130 () Bool)

(assert (=> b!5720857 m!6674130))

(declare-fun m!6674132 () Bool)

(assert (=> b!5720857 m!6674132))

(declare-fun m!6674134 () Bool)

(assert (=> b!5720857 m!6674134))

(declare-fun m!6674136 () Bool)

(assert (=> b!5720857 m!6674136))

(declare-fun m!6674138 () Bool)

(assert (=> b!5720857 m!6674138))

(declare-fun m!6674140 () Bool)

(assert (=> b!5720865 m!6674140))

(declare-fun m!6674142 () Bool)

(assert (=> b!5720842 m!6674142))

(declare-fun m!6674144 () Bool)

(assert (=> b!5720842 m!6674144))

(declare-fun m!6674146 () Bool)

(assert (=> b!5720842 m!6674146))

(declare-fun m!6674148 () Bool)

(assert (=> b!5720851 m!6674148))

(declare-fun m!6674150 () Bool)

(assert (=> setNonEmpty!38331 m!6674150))

(declare-fun m!6674152 () Bool)

(assert (=> b!5720849 m!6674152))

(declare-fun m!6674154 () Bool)

(assert (=> b!5720856 m!6674154))

(declare-fun m!6674156 () Bool)

(assert (=> start!588872 m!6674156))

(declare-fun m!6674158 () Bool)

(assert (=> b!5720862 m!6674158))

(assert (=> b!5720862 m!6674158))

(declare-fun m!6674160 () Bool)

(assert (=> b!5720862 m!6674160))

(declare-fun m!6674162 () Bool)

(assert (=> b!5720848 m!6674162))

(declare-fun m!6674164 () Bool)

(assert (=> b!5720840 m!6674164))

(declare-fun m!6674166 () Bool)

(assert (=> b!5720840 m!6674166))

(declare-fun m!6674168 () Bool)

(assert (=> b!5720840 m!6674168))

(declare-fun m!6674170 () Bool)

(assert (=> b!5720843 m!6674170))

(assert (=> b!5720843 m!6674154))

(declare-fun m!6674172 () Bool)

(assert (=> b!5720843 m!6674172))

(declare-fun m!6674174 () Bool)

(assert (=> b!5720874 m!6674174))

(declare-fun m!6674176 () Bool)

(assert (=> b!5720845 m!6674176))

(declare-fun m!6674178 () Bool)

(assert (=> b!5720868 m!6674178))

(declare-fun m!6674180 () Bool)

(assert (=> b!5720873 m!6674180))

(declare-fun m!6674182 () Bool)

(assert (=> b!5720850 m!6674182))

(declare-fun m!6674184 () Bool)

(assert (=> b!5720850 m!6674184))

(check-sat (not b!5720852) (not b!5720873) (not b!5720840) (not b!5720865) (not b!5720854) (not b!5720845) (not b!5720857) (not b!5720851) (not b!5720856) (not b!5720863) (not b!5720847) (not b!5720846) (not b!5720874) (not setNonEmpty!38331) (not b!5720869) (not b!5720864) (not b!5720843) (not b!5720844) (not b!5720861) (not b!5720868) (not b!5720866) (not b!5720841) (not b!5720860) (not b!5720850) tp_is_empty!40687 (not b!5720855) (not b!5720858) (not b!5720862) (not b!5720849) (not b!5720842) (not b!5720848) (not start!588872))
(check-sat)
(get-model)

(declare-fun b!5720993 () Bool)

(declare-fun e!3518004 () Bool)

(declare-fun lt!2278112 () Regex!15717)

(declare-fun isUnion!665 (Regex!15717) Bool)

(assert (=> b!5720993 (= e!3518004 (isUnion!665 lt!2278112))))

(declare-fun b!5720994 () Bool)

(declare-fun e!3518003 () Bool)

(declare-fun e!3518005 () Bool)

(assert (=> b!5720994 (= e!3518003 e!3518005)))

(declare-fun c!1008944 () Bool)

(assert (=> b!5720994 (= c!1008944 (isEmpty!35202 (unfocusZipperList!1145 zl!343)))))

(declare-fun b!5720995 () Bool)

(declare-fun e!3518008 () Regex!15717)

(assert (=> b!5720995 (= e!3518008 (Union!15717 (h!69774 (unfocusZipperList!1145 zl!343)) (generalisedUnion!1580 (t!376774 (unfocusZipperList!1145 zl!343)))))))

(declare-fun b!5720996 () Bool)

(declare-fun e!3518006 () Bool)

(assert (=> b!5720996 (= e!3518006 (isEmpty!35202 (t!376774 (unfocusZipperList!1145 zl!343))))))

(declare-fun b!5720997 () Bool)

(declare-fun e!3518007 () Regex!15717)

(assert (=> b!5720997 (= e!3518007 (h!69774 (unfocusZipperList!1145 zl!343)))))

(declare-fun b!5720998 () Bool)

(assert (=> b!5720998 (= e!3518008 EmptyLang!15717)))

(declare-fun d!1804742 () Bool)

(assert (=> d!1804742 e!3518003))

(declare-fun res!2415378 () Bool)

(assert (=> d!1804742 (=> (not res!2415378) (not e!3518003))))

(assert (=> d!1804742 (= res!2415378 (validRegex!7453 lt!2278112))))

(assert (=> d!1804742 (= lt!2278112 e!3518007)))

(declare-fun c!1008943 () Bool)

(assert (=> d!1804742 (= c!1008943 e!3518006)))

(declare-fun res!2415377 () Bool)

(assert (=> d!1804742 (=> (not res!2415377) (not e!3518006))))

(assert (=> d!1804742 (= res!2415377 ((_ is Cons!63326) (unfocusZipperList!1145 zl!343)))))

(declare-fun lambda!309143 () Int)

(declare-fun forall!14851 (List!63450 Int) Bool)

(assert (=> d!1804742 (forall!14851 (unfocusZipperList!1145 zl!343) lambda!309143)))

(assert (=> d!1804742 (= (generalisedUnion!1580 (unfocusZipperList!1145 zl!343)) lt!2278112)))

(declare-fun b!5720999 () Bool)

(declare-fun head!12113 (List!63450) Regex!15717)

(assert (=> b!5720999 (= e!3518004 (= lt!2278112 (head!12113 (unfocusZipperList!1145 zl!343))))))

(declare-fun b!5721000 () Bool)

(assert (=> b!5721000 (= e!3518005 e!3518004)))

(declare-fun c!1008945 () Bool)

(declare-fun tail!11208 (List!63450) List!63450)

(assert (=> b!5721000 (= c!1008945 (isEmpty!35202 (tail!11208 (unfocusZipperList!1145 zl!343))))))

(declare-fun b!5721001 () Bool)

(assert (=> b!5721001 (= e!3518007 e!3518008)))

(declare-fun c!1008946 () Bool)

(assert (=> b!5721001 (= c!1008946 ((_ is Cons!63326) (unfocusZipperList!1145 zl!343)))))

(declare-fun b!5721002 () Bool)

(declare-fun isEmptyLang!1235 (Regex!15717) Bool)

(assert (=> b!5721002 (= e!3518005 (isEmptyLang!1235 lt!2278112))))

(assert (= (and d!1804742 res!2415377) b!5720996))

(assert (= (and d!1804742 c!1008943) b!5720997))

(assert (= (and d!1804742 (not c!1008943)) b!5721001))

(assert (= (and b!5721001 c!1008946) b!5720995))

(assert (= (and b!5721001 (not c!1008946)) b!5720998))

(assert (= (and d!1804742 res!2415378) b!5720994))

(assert (= (and b!5720994 c!1008944) b!5721002))

(assert (= (and b!5720994 (not c!1008944)) b!5721000))

(assert (= (and b!5721000 c!1008945) b!5720999))

(assert (= (and b!5721000 (not c!1008945)) b!5720993))

(declare-fun m!6674246 () Bool)

(assert (=> b!5720995 m!6674246))

(declare-fun m!6674248 () Bool)

(assert (=> b!5720993 m!6674248))

(assert (=> b!5720999 m!6674158))

(declare-fun m!6674250 () Bool)

(assert (=> b!5720999 m!6674250))

(declare-fun m!6674252 () Bool)

(assert (=> b!5720996 m!6674252))

(assert (=> b!5720994 m!6674158))

(declare-fun m!6674254 () Bool)

(assert (=> b!5720994 m!6674254))

(declare-fun m!6674256 () Bool)

(assert (=> b!5721002 m!6674256))

(assert (=> b!5721000 m!6674158))

(declare-fun m!6674258 () Bool)

(assert (=> b!5721000 m!6674258))

(assert (=> b!5721000 m!6674258))

(declare-fun m!6674260 () Bool)

(assert (=> b!5721000 m!6674260))

(declare-fun m!6674262 () Bool)

(assert (=> d!1804742 m!6674262))

(assert (=> d!1804742 m!6674158))

(declare-fun m!6674264 () Bool)

(assert (=> d!1804742 m!6674264))

(assert (=> b!5720862 d!1804742))

(declare-fun bs!1337546 () Bool)

(declare-fun d!1804746 () Bool)

(assert (= bs!1337546 (and d!1804746 d!1804742)))

(declare-fun lambda!309151 () Int)

(assert (=> bs!1337546 (= lambda!309151 lambda!309143)))

(declare-fun lt!2278115 () List!63450)

(assert (=> d!1804746 (forall!14851 lt!2278115 lambda!309151)))

(declare-fun e!3518022 () List!63450)

(assert (=> d!1804746 (= lt!2278115 e!3518022)))

(declare-fun c!1008953 () Bool)

(assert (=> d!1804746 (= c!1008953 ((_ is Cons!63327) zl!343))))

(assert (=> d!1804746 (= (unfocusZipperList!1145 zl!343) lt!2278115)))

(declare-fun b!5721028 () Bool)

(assert (=> b!5721028 (= e!3518022 (Cons!63326 (generalisedConcat!1332 (exprs!5601 (h!69775 zl!343))) (unfocusZipperList!1145 (t!376775 zl!343))))))

(declare-fun b!5721029 () Bool)

(assert (=> b!5721029 (= e!3518022 Nil!63326)))

(assert (= (and d!1804746 c!1008953) b!5721028))

(assert (= (and d!1804746 (not c!1008953)) b!5721029))

(declare-fun m!6674266 () Bool)

(assert (=> d!1804746 m!6674266))

(assert (=> b!5721028 m!6674174))

(declare-fun m!6674268 () Bool)

(assert (=> b!5721028 m!6674268))

(assert (=> b!5720862 d!1804746))

(declare-fun d!1804748 () Bool)

(declare-fun e!3518031 () Bool)

(assert (=> d!1804748 (= (matchZipper!1855 ((_ map or) lt!2278067 lt!2278084) (t!376776 s!2326)) e!3518031)))

(declare-fun res!2415396 () Bool)

(assert (=> d!1804748 (=> res!2415396 e!3518031)))

(assert (=> d!1804748 (= res!2415396 (matchZipper!1855 lt!2278067 (t!376776 s!2326)))))

(declare-fun lt!2278123 () Unit!156400)

(declare-fun choose!43253 ((InoxSet Context!10202) (InoxSet Context!10202) List!63452) Unit!156400)

(assert (=> d!1804748 (= lt!2278123 (choose!43253 lt!2278067 lt!2278084 (t!376776 s!2326)))))

(assert (=> d!1804748 (= (lemmaZipperConcatMatchesSameAsBothZippers!742 lt!2278067 lt!2278084 (t!376776 s!2326)) lt!2278123)))

(declare-fun b!5721042 () Bool)

(assert (=> b!5721042 (= e!3518031 (matchZipper!1855 lt!2278084 (t!376776 s!2326)))))

(assert (= (and d!1804748 (not res!2415396)) b!5721042))

(assert (=> d!1804748 m!6674172))

(assert (=> d!1804748 m!6674154))

(declare-fun m!6674308 () Bool)

(assert (=> d!1804748 m!6674308))

(assert (=> b!5721042 m!6674078))

(assert (=> b!5720843 d!1804748))

(declare-fun d!1804768 () Bool)

(declare-fun c!1008972 () Bool)

(declare-fun isEmpty!35204 (List!63452) Bool)

(assert (=> d!1804768 (= c!1008972 (isEmpty!35204 (t!376776 s!2326)))))

(declare-fun e!3518049 () Bool)

(assert (=> d!1804768 (= (matchZipper!1855 lt!2278067 (t!376776 s!2326)) e!3518049)))

(declare-fun b!5721074 () Bool)

(declare-fun nullableZipper!1666 ((InoxSet Context!10202)) Bool)

(assert (=> b!5721074 (= e!3518049 (nullableZipper!1666 lt!2278067))))

(declare-fun b!5721075 () Bool)

(declare-fun head!12114 (List!63452) C!31704)

(declare-fun tail!11209 (List!63452) List!63452)

(assert (=> b!5721075 (= e!3518049 (matchZipper!1855 (derivationStepZipper!1800 lt!2278067 (head!12114 (t!376776 s!2326))) (tail!11209 (t!376776 s!2326))))))

(assert (= (and d!1804768 c!1008972) b!5721074))

(assert (= (and d!1804768 (not c!1008972)) b!5721075))

(declare-fun m!6674310 () Bool)

(assert (=> d!1804768 m!6674310))

(declare-fun m!6674312 () Bool)

(assert (=> b!5721074 m!6674312))

(declare-fun m!6674314 () Bool)

(assert (=> b!5721075 m!6674314))

(assert (=> b!5721075 m!6674314))

(declare-fun m!6674316 () Bool)

(assert (=> b!5721075 m!6674316))

(declare-fun m!6674318 () Bool)

(assert (=> b!5721075 m!6674318))

(assert (=> b!5721075 m!6674316))

(assert (=> b!5721075 m!6674318))

(declare-fun m!6674320 () Bool)

(assert (=> b!5721075 m!6674320))

(assert (=> b!5720843 d!1804768))

(declare-fun d!1804770 () Bool)

(declare-fun c!1008973 () Bool)

(assert (=> d!1804770 (= c!1008973 (isEmpty!35204 (t!376776 s!2326)))))

(declare-fun e!3518050 () Bool)

(assert (=> d!1804770 (= (matchZipper!1855 ((_ map or) lt!2278067 lt!2278084) (t!376776 s!2326)) e!3518050)))

(declare-fun b!5721076 () Bool)

(assert (=> b!5721076 (= e!3518050 (nullableZipper!1666 ((_ map or) lt!2278067 lt!2278084)))))

(declare-fun b!5721077 () Bool)

(assert (=> b!5721077 (= e!3518050 (matchZipper!1855 (derivationStepZipper!1800 ((_ map or) lt!2278067 lt!2278084) (head!12114 (t!376776 s!2326))) (tail!11209 (t!376776 s!2326))))))

(assert (= (and d!1804770 c!1008973) b!5721076))

(assert (= (and d!1804770 (not c!1008973)) b!5721077))

(assert (=> d!1804770 m!6674310))

(declare-fun m!6674322 () Bool)

(assert (=> b!5721076 m!6674322))

(assert (=> b!5721077 m!6674314))

(assert (=> b!5721077 m!6674314))

(declare-fun m!6674324 () Bool)

(assert (=> b!5721077 m!6674324))

(assert (=> b!5721077 m!6674318))

(assert (=> b!5721077 m!6674324))

(assert (=> b!5721077 m!6674318))

(declare-fun m!6674326 () Bool)

(assert (=> b!5721077 m!6674326))

(assert (=> b!5720843 d!1804770))

(declare-fun d!1804772 () Bool)

(declare-fun lt!2278126 () Regex!15717)

(assert (=> d!1804772 (validRegex!7453 lt!2278126)))

(assert (=> d!1804772 (= lt!2278126 (generalisedUnion!1580 (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327))))))

(assert (=> d!1804772 (= (unfocusZipper!1459 (Cons!63327 lt!2278082 Nil!63327)) lt!2278126)))

(declare-fun bs!1337554 () Bool)

(assert (= bs!1337554 d!1804772))

(declare-fun m!6674328 () Bool)

(assert (=> bs!1337554 m!6674328))

(declare-fun m!6674330 () Bool)

(assert (=> bs!1337554 m!6674330))

(assert (=> bs!1337554 m!6674330))

(declare-fun m!6674332 () Bool)

(assert (=> bs!1337554 m!6674332))

(assert (=> b!5720844 d!1804772))

(declare-fun d!1804774 () Bool)

(declare-fun c!1008979 () Bool)

(assert (=> d!1804774 (= c!1008979 (isEmpty!35204 (t!376776 s!2326)))))

(declare-fun e!3518057 () Bool)

(assert (=> d!1804774 (= (matchZipper!1855 lt!2278084 (t!376776 s!2326)) e!3518057)))

(declare-fun b!5721089 () Bool)

(assert (=> b!5721089 (= e!3518057 (nullableZipper!1666 lt!2278084))))

(declare-fun b!5721090 () Bool)

(assert (=> b!5721090 (= e!3518057 (matchZipper!1855 (derivationStepZipper!1800 lt!2278084 (head!12114 (t!376776 s!2326))) (tail!11209 (t!376776 s!2326))))))

(assert (= (and d!1804774 c!1008979) b!5721089))

(assert (= (and d!1804774 (not c!1008979)) b!5721090))

(assert (=> d!1804774 m!6674310))

(declare-fun m!6674346 () Bool)

(assert (=> b!5721089 m!6674346))

(assert (=> b!5721090 m!6674314))

(assert (=> b!5721090 m!6674314))

(declare-fun m!6674348 () Bool)

(assert (=> b!5721090 m!6674348))

(assert (=> b!5721090 m!6674318))

(assert (=> b!5721090 m!6674348))

(assert (=> b!5721090 m!6674318))

(declare-fun m!6674350 () Bool)

(assert (=> b!5721090 m!6674350))

(assert (=> b!5720864 d!1804774))

(declare-fun d!1804780 () Bool)

(assert (=> d!1804780 (= (isEmpty!35202 (t!376774 (exprs!5601 (h!69775 zl!343)))) ((_ is Nil!63326) (t!376774 (exprs!5601 (h!69775 zl!343)))))))

(assert (=> b!5720845 d!1804780))

(declare-fun d!1804782 () Bool)

(declare-fun e!3518063 () Bool)

(assert (=> d!1804782 e!3518063))

(declare-fun res!2415403 () Bool)

(assert (=> d!1804782 (=> (not res!2415403) (not e!3518063))))

(declare-fun lt!2278129 () List!63451)

(declare-fun noDuplicate!1646 (List!63451) Bool)

(assert (=> d!1804782 (= res!2415403 (noDuplicate!1646 lt!2278129))))

(declare-fun choose!43254 ((InoxSet Context!10202)) List!63451)

(assert (=> d!1804782 (= lt!2278129 (choose!43254 z!1189))))

(assert (=> d!1804782 (= (toList!9501 z!1189) lt!2278129)))

(declare-fun b!5721099 () Bool)

(declare-fun content!11507 (List!63451) (InoxSet Context!10202))

(assert (=> b!5721099 (= e!3518063 (= (content!11507 lt!2278129) z!1189))))

(assert (= (and d!1804782 res!2415403) b!5721099))

(declare-fun m!6674358 () Bool)

(assert (=> d!1804782 m!6674358))

(declare-fun m!6674360 () Bool)

(assert (=> d!1804782 m!6674360))

(declare-fun m!6674362 () Bool)

(assert (=> b!5721099 m!6674362))

(assert (=> b!5720865 d!1804782))

(declare-fun d!1804786 () Bool)

(declare-fun nullableFct!1813 (Regex!15717) Bool)

(assert (=> d!1804786 (= (nullable!5749 (h!69774 (exprs!5601 (h!69775 zl!343)))) (nullableFct!1813 (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun bs!1337556 () Bool)

(assert (= bs!1337556 d!1804786))

(declare-fun m!6674364 () Bool)

(assert (=> bs!1337556 m!6674364))

(assert (=> b!5720846 d!1804786))

(declare-fun b!5721154 () Bool)

(declare-fun e!3518102 () (InoxSet Context!10202))

(assert (=> b!5721154 (= e!3518102 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5721155 () Bool)

(declare-fun e!3518100 () (InoxSet Context!10202))

(assert (=> b!5721155 (= e!3518100 e!3518102)))

(declare-fun c!1009002 () Bool)

(assert (=> b!5721155 (= c!1009002 ((_ is Cons!63326) (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))))))

(declare-fun d!1804788 () Bool)

(declare-fun c!1009001 () Bool)

(declare-fun e!3518101 () Bool)

(assert (=> d!1804788 (= c!1009001 e!3518101)))

(declare-fun res!2415422 () Bool)

(assert (=> d!1804788 (=> (not res!2415422) (not e!3518101))))

(assert (=> d!1804788 (= res!2415422 ((_ is Cons!63326) (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))))))

(assert (=> d!1804788 (= (derivationStepZipperUp!985 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))) (h!69776 s!2326)) e!3518100)))

(declare-fun call!437105 () (InoxSet Context!10202))

(declare-fun b!5721156 () Bool)

(assert (=> b!5721156 (= e!3518100 ((_ map or) call!437105 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (h!69776 s!2326))))))

(declare-fun b!5721157 () Bool)

(assert (=> b!5721157 (= e!3518102 call!437105)))

(declare-fun bm!437100 () Bool)

(assert (=> bm!437100 (= call!437105 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))) (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (h!69776 s!2326)))))

(declare-fun b!5721158 () Bool)

(assert (=> b!5721158 (= e!3518101 (nullable!5749 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))))))

(assert (= (and d!1804788 res!2415422) b!5721158))

(assert (= (and d!1804788 c!1009001) b!5721156))

(assert (= (and d!1804788 (not c!1009001)) b!5721155))

(assert (= (and b!5721155 c!1009002) b!5721157))

(assert (= (and b!5721155 (not c!1009002)) b!5721154))

(assert (= (or b!5721156 b!5721157) bm!437100))

(declare-fun m!6674408 () Bool)

(assert (=> b!5721156 m!6674408))

(declare-fun m!6674412 () Bool)

(assert (=> bm!437100 m!6674412))

(declare-fun m!6674414 () Bool)

(assert (=> b!5721158 m!6674414))

(assert (=> b!5720846 d!1804788))

(declare-fun b!5721159 () Bool)

(declare-fun e!3518105 () (InoxSet Context!10202))

(assert (=> b!5721159 (= e!3518105 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5721160 () Bool)

(declare-fun e!3518103 () (InoxSet Context!10202))

(assert (=> b!5721160 (= e!3518103 e!3518105)))

(declare-fun c!1009004 () Bool)

(assert (=> b!5721160 (= c!1009004 ((_ is Cons!63326) (exprs!5601 lt!2278073)))))

(declare-fun d!1804808 () Bool)

(declare-fun c!1009003 () Bool)

(declare-fun e!3518104 () Bool)

(assert (=> d!1804808 (= c!1009003 e!3518104)))

(declare-fun res!2415423 () Bool)

(assert (=> d!1804808 (=> (not res!2415423) (not e!3518104))))

(assert (=> d!1804808 (= res!2415423 ((_ is Cons!63326) (exprs!5601 lt!2278073)))))

(assert (=> d!1804808 (= (derivationStepZipperUp!985 lt!2278073 (h!69776 s!2326)) e!3518103)))

(declare-fun b!5721161 () Bool)

(declare-fun call!437106 () (InoxSet Context!10202))

(assert (=> b!5721161 (= e!3518103 ((_ map or) call!437106 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 lt!2278073))) (h!69776 s!2326))))))

(declare-fun b!5721162 () Bool)

(assert (=> b!5721162 (= e!3518105 call!437106)))

(declare-fun bm!437101 () Bool)

(assert (=> bm!437101 (= call!437106 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 lt!2278073)) (Context!10203 (t!376774 (exprs!5601 lt!2278073))) (h!69776 s!2326)))))

(declare-fun b!5721163 () Bool)

(assert (=> b!5721163 (= e!3518104 (nullable!5749 (h!69774 (exprs!5601 lt!2278073))))))

(assert (= (and d!1804808 res!2415423) b!5721163))

(assert (= (and d!1804808 c!1009003) b!5721161))

(assert (= (and d!1804808 (not c!1009003)) b!5721160))

(assert (= (and b!5721160 c!1009004) b!5721162))

(assert (= (and b!5721160 (not c!1009004)) b!5721159))

(assert (= (or b!5721161 b!5721162) bm!437101))

(declare-fun m!6674416 () Bool)

(assert (=> b!5721161 m!6674416))

(declare-fun m!6674418 () Bool)

(assert (=> bm!437101 m!6674418))

(declare-fun m!6674420 () Bool)

(assert (=> b!5721163 m!6674420))

(assert (=> b!5720846 d!1804808))

(declare-fun d!1804810 () Bool)

(declare-fun dynLambda!24780 (Int Context!10202) (InoxSet Context!10202))

(assert (=> d!1804810 (= (flatMap!1330 z!1189 lambda!309137) (dynLambda!24780 lambda!309137 (h!69775 zl!343)))))

(declare-fun lt!2278132 () Unit!156400)

(declare-fun choose!43255 ((InoxSet Context!10202) Context!10202 Int) Unit!156400)

(assert (=> d!1804810 (= lt!2278132 (choose!43255 z!1189 (h!69775 zl!343) lambda!309137))))

(assert (=> d!1804810 (= z!1189 (store ((as const (Array Context!10202 Bool)) false) (h!69775 zl!343) true))))

(assert (=> d!1804810 (= (lemmaFlatMapOnSingletonSet!862 z!1189 (h!69775 zl!343) lambda!309137) lt!2278132)))

(declare-fun b_lambda!216175 () Bool)

(assert (=> (not b_lambda!216175) (not d!1804810)))

(declare-fun bs!1337561 () Bool)

(assert (= bs!1337561 d!1804810))

(assert (=> bs!1337561 m!6674086))

(declare-fun m!6674422 () Bool)

(assert (=> bs!1337561 m!6674422))

(declare-fun m!6674424 () Bool)

(assert (=> bs!1337561 m!6674424))

(declare-fun m!6674426 () Bool)

(assert (=> bs!1337561 m!6674426))

(assert (=> b!5720846 d!1804810))

(declare-fun b!5721164 () Bool)

(declare-fun e!3518108 () (InoxSet Context!10202))

(assert (=> b!5721164 (= e!3518108 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5721165 () Bool)

(declare-fun e!3518106 () (InoxSet Context!10202))

(assert (=> b!5721165 (= e!3518106 e!3518108)))

(declare-fun c!1009006 () Bool)

(assert (=> b!5721165 (= c!1009006 ((_ is Cons!63326) (exprs!5601 (h!69775 zl!343))))))

(declare-fun d!1804812 () Bool)

(declare-fun c!1009005 () Bool)

(declare-fun e!3518107 () Bool)

(assert (=> d!1804812 (= c!1009005 e!3518107)))

(declare-fun res!2415424 () Bool)

(assert (=> d!1804812 (=> (not res!2415424) (not e!3518107))))

(assert (=> d!1804812 (= res!2415424 ((_ is Cons!63326) (exprs!5601 (h!69775 zl!343))))))

(assert (=> d!1804812 (= (derivationStepZipperUp!985 (h!69775 zl!343) (h!69776 s!2326)) e!3518106)))

(declare-fun b!5721166 () Bool)

(declare-fun call!437107 () (InoxSet Context!10202))

(assert (=> b!5721166 (= e!3518106 ((_ map or) call!437107 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343)))) (h!69776 s!2326))))))

(declare-fun b!5721167 () Bool)

(assert (=> b!5721167 (= e!3518108 call!437107)))

(declare-fun bm!437102 () Bool)

(assert (=> bm!437102 (= call!437107 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (h!69775 zl!343))) (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343)))) (h!69776 s!2326)))))

(declare-fun b!5721168 () Bool)

(assert (=> b!5721168 (= e!3518107 (nullable!5749 (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(assert (= (and d!1804812 res!2415424) b!5721168))

(assert (= (and d!1804812 c!1009005) b!5721166))

(assert (= (and d!1804812 (not c!1009005)) b!5721165))

(assert (= (and b!5721165 c!1009006) b!5721167))

(assert (= (and b!5721165 (not c!1009006)) b!5721164))

(assert (= (or b!5721166 b!5721167) bm!437102))

(declare-fun m!6674428 () Bool)

(assert (=> b!5721166 m!6674428))

(declare-fun m!6674430 () Bool)

(assert (=> bm!437102 m!6674430))

(assert (=> b!5721168 m!6674090))

(assert (=> b!5720846 d!1804812))

(declare-fun b!5721226 () Bool)

(declare-fun e!3518145 () (InoxSet Context!10202))

(declare-fun call!437121 () (InoxSet Context!10202))

(assert (=> b!5721226 (= e!3518145 call!437121)))

(declare-fun bm!437115 () Bool)

(declare-fun call!437122 () (InoxSet Context!10202))

(assert (=> bm!437115 (= call!437121 call!437122)))

(declare-fun b!5721227 () Bool)

(declare-fun e!3518140 () (InoxSet Context!10202))

(declare-fun call!437120 () (InoxSet Context!10202))

(declare-fun call!437125 () (InoxSet Context!10202))

(assert (=> b!5721227 (= e!3518140 ((_ map or) call!437120 call!437125))))

(declare-fun b!5721228 () Bool)

(declare-fun e!3518143 () (InoxSet Context!10202))

(assert (=> b!5721228 (= e!3518143 (store ((as const (Array Context!10202 Bool)) false) lt!2278073 true))))

(declare-fun b!5721229 () Bool)

(declare-fun e!3518142 () (InoxSet Context!10202))

(assert (=> b!5721229 (= e!3518142 e!3518145)))

(declare-fun c!1009027 () Bool)

(assert (=> b!5721229 (= c!1009027 ((_ is Concat!24562) (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun bm!437116 () Bool)

(assert (=> bm!437116 (= call!437122 call!437125)))

(declare-fun b!5721230 () Bool)

(declare-fun c!1009025 () Bool)

(assert (=> b!5721230 (= c!1009025 ((_ is Star!15717) (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun e!3518141 () (InoxSet Context!10202))

(assert (=> b!5721230 (= e!3518145 e!3518141)))

(declare-fun c!1009023 () Bool)

(declare-fun c!1009024 () Bool)

(declare-fun bm!437117 () Bool)

(declare-fun call!437123 () List!63450)

(assert (=> bm!437117 (= call!437125 (derivationStepZipperDown!1059 (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343))))))) (ite (or c!1009023 c!1009024) lt!2278073 (Context!10203 call!437123)) (h!69776 s!2326)))))

(declare-fun b!5721231 () Bool)

(assert (=> b!5721231 (= e!3518142 ((_ map or) call!437120 call!437122))))

(declare-fun b!5721233 () Bool)

(declare-fun e!3518144 () Bool)

(assert (=> b!5721233 (= e!3518144 (nullable!5749 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343))))))))

(declare-fun call!437124 () List!63450)

(declare-fun bm!437118 () Bool)

(declare-fun $colon$colon!1734 (List!63450 Regex!15717) List!63450)

(assert (=> bm!437118 (= call!437124 ($colon$colon!1734 (exprs!5601 lt!2278073) (ite (or c!1009024 c!1009027) (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (h!69774 (exprs!5601 (h!69775 zl!343))))))))

(declare-fun bm!437119 () Bool)

(assert (=> bm!437119 (= call!437120 (derivationStepZipperDown!1059 (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343))))) (ite c!1009023 lt!2278073 (Context!10203 call!437124)) (h!69776 s!2326)))))

(declare-fun bm!437120 () Bool)

(assert (=> bm!437120 (= call!437123 call!437124)))

(declare-fun b!5721234 () Bool)

(assert (=> b!5721234 (= e!3518143 e!3518140)))

(assert (=> b!5721234 (= c!1009023 ((_ is Union!15717) (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun d!1804814 () Bool)

(declare-fun c!1009026 () Bool)

(assert (=> d!1804814 (= c!1009026 (and ((_ is ElementMatch!15717) (h!69774 (exprs!5601 (h!69775 zl!343)))) (= (c!1008905 (h!69774 (exprs!5601 (h!69775 zl!343)))) (h!69776 s!2326))))))

(assert (=> d!1804814 (= (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (h!69775 zl!343))) lt!2278073 (h!69776 s!2326)) e!3518143)))

(declare-fun b!5721232 () Bool)

(assert (=> b!5721232 (= c!1009024 e!3518144)))

(declare-fun res!2415450 () Bool)

(assert (=> b!5721232 (=> (not res!2415450) (not e!3518144))))

(assert (=> b!5721232 (= res!2415450 ((_ is Concat!24562) (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(assert (=> b!5721232 (= e!3518140 e!3518142)))

(declare-fun b!5721235 () Bool)

(assert (=> b!5721235 (= e!3518141 call!437121)))

(declare-fun b!5721236 () Bool)

(assert (=> b!5721236 (= e!3518141 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1804814 c!1009026) b!5721228))

(assert (= (and d!1804814 (not c!1009026)) b!5721234))

(assert (= (and b!5721234 c!1009023) b!5721227))

(assert (= (and b!5721234 (not c!1009023)) b!5721232))

(assert (= (and b!5721232 res!2415450) b!5721233))

(assert (= (and b!5721232 c!1009024) b!5721231))

(assert (= (and b!5721232 (not c!1009024)) b!5721229))

(assert (= (and b!5721229 c!1009027) b!5721226))

(assert (= (and b!5721229 (not c!1009027)) b!5721230))

(assert (= (and b!5721230 c!1009025) b!5721235))

(assert (= (and b!5721230 (not c!1009025)) b!5721236))

(assert (= (or b!5721226 b!5721235) bm!437120))

(assert (= (or b!5721226 b!5721235) bm!437115))

(assert (= (or b!5721231 bm!437120) bm!437118))

(assert (= (or b!5721231 bm!437115) bm!437116))

(assert (= (or b!5721227 bm!437116) bm!437117))

(assert (= (or b!5721227 b!5721231) bm!437119))

(declare-fun m!6674466 () Bool)

(assert (=> b!5721233 m!6674466))

(declare-fun m!6674468 () Bool)

(assert (=> bm!437119 m!6674468))

(declare-fun m!6674470 () Bool)

(assert (=> bm!437117 m!6674470))

(declare-fun m!6674472 () Bool)

(assert (=> bm!437118 m!6674472))

(declare-fun m!6674474 () Bool)

(assert (=> b!5721228 m!6674474))

(assert (=> b!5720846 d!1804814))

(declare-fun d!1804824 () Bool)

(declare-fun choose!43256 ((InoxSet Context!10202) Int) (InoxSet Context!10202))

(assert (=> d!1804824 (= (flatMap!1330 z!1189 lambda!309137) (choose!43256 z!1189 lambda!309137))))

(declare-fun bs!1337568 () Bool)

(assert (= bs!1337568 d!1804824))

(declare-fun m!6674476 () Bool)

(assert (=> bs!1337568 m!6674476))

(assert (=> b!5720846 d!1804824))

(declare-fun bs!1337569 () Bool)

(declare-fun d!1804826 () Bool)

(assert (= bs!1337569 (and d!1804826 d!1804742)))

(declare-fun lambda!309165 () Int)

(assert (=> bs!1337569 (= lambda!309165 lambda!309143)))

(declare-fun bs!1337570 () Bool)

(assert (= bs!1337570 (and d!1804826 d!1804746)))

(assert (=> bs!1337570 (= lambda!309165 lambda!309151)))

(assert (=> d!1804826 (= (inv!82539 setElem!38331) (forall!14851 (exprs!5601 setElem!38331) lambda!309165))))

(declare-fun bs!1337571 () Bool)

(assert (= bs!1337571 d!1804826))

(declare-fun m!6674478 () Bool)

(assert (=> bs!1337571 m!6674478))

(assert (=> setNonEmpty!38331 d!1804826))

(declare-fun b!5721241 () Bool)

(declare-fun e!3518153 () (InoxSet Context!10202))

(declare-fun call!437127 () (InoxSet Context!10202))

(assert (=> b!5721241 (= e!3518153 call!437127)))

(declare-fun bm!437121 () Bool)

(declare-fun call!437128 () (InoxSet Context!10202))

(assert (=> bm!437121 (= call!437127 call!437128)))

(declare-fun b!5721242 () Bool)

(declare-fun e!3518148 () (InoxSet Context!10202))

(declare-fun call!437126 () (InoxSet Context!10202))

(declare-fun call!437131 () (InoxSet Context!10202))

(assert (=> b!5721242 (= e!3518148 ((_ map or) call!437126 call!437131))))

(declare-fun b!5721243 () Bool)

(declare-fun e!3518151 () (InoxSet Context!10202))

(assert (=> b!5721243 (= e!3518151 (store ((as const (Array Context!10202 Bool)) false) lt!2278082 true))))

(declare-fun b!5721244 () Bool)

(declare-fun e!3518150 () (InoxSet Context!10202))

(assert (=> b!5721244 (= e!3518150 e!3518153)))

(declare-fun c!1009032 () Bool)

(assert (=> b!5721244 (= c!1009032 ((_ is Concat!24562) (reg!16046 (regOne!31946 r!7292))))))

(declare-fun bm!437122 () Bool)

(assert (=> bm!437122 (= call!437128 call!437131)))

(declare-fun b!5721245 () Bool)

(declare-fun c!1009030 () Bool)

(assert (=> b!5721245 (= c!1009030 ((_ is Star!15717) (reg!16046 (regOne!31946 r!7292))))))

(declare-fun e!3518149 () (InoxSet Context!10202))

(assert (=> b!5721245 (= e!3518153 e!3518149)))

(declare-fun call!437129 () List!63450)

(declare-fun c!1009028 () Bool)

(declare-fun bm!437123 () Bool)

(declare-fun c!1009029 () Bool)

(assert (=> bm!437123 (= call!437131 (derivationStepZipperDown!1059 (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292)))))) (ite (or c!1009028 c!1009029) lt!2278082 (Context!10203 call!437129)) (h!69776 s!2326)))))

(declare-fun b!5721246 () Bool)

(assert (=> b!5721246 (= e!3518150 ((_ map or) call!437126 call!437128))))

(declare-fun b!5721248 () Bool)

(declare-fun e!3518152 () Bool)

(assert (=> b!5721248 (= e!3518152 (nullable!5749 (regOne!31946 (reg!16046 (regOne!31946 r!7292)))))))

(declare-fun call!437130 () List!63450)

(declare-fun bm!437124 () Bool)

(assert (=> bm!437124 (= call!437130 ($colon$colon!1734 (exprs!5601 lt!2278082) (ite (or c!1009029 c!1009032) (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (regOne!31946 r!7292)))))))

(declare-fun bm!437125 () Bool)

(assert (=> bm!437125 (= call!437126 (derivationStepZipperDown!1059 (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292)))) (ite c!1009028 lt!2278082 (Context!10203 call!437130)) (h!69776 s!2326)))))

(declare-fun bm!437126 () Bool)

(assert (=> bm!437126 (= call!437129 call!437130)))

(declare-fun b!5721249 () Bool)

(assert (=> b!5721249 (= e!3518151 e!3518148)))

(assert (=> b!5721249 (= c!1009028 ((_ is Union!15717) (reg!16046 (regOne!31946 r!7292))))))

(declare-fun d!1804828 () Bool)

(declare-fun c!1009031 () Bool)

(assert (=> d!1804828 (= c!1009031 (and ((_ is ElementMatch!15717) (reg!16046 (regOne!31946 r!7292))) (= (c!1008905 (reg!16046 (regOne!31946 r!7292))) (h!69776 s!2326))))))

(assert (=> d!1804828 (= (derivationStepZipperDown!1059 (reg!16046 (regOne!31946 r!7292)) lt!2278082 (h!69776 s!2326)) e!3518151)))

(declare-fun b!5721247 () Bool)

(assert (=> b!5721247 (= c!1009029 e!3518152)))

(declare-fun res!2415455 () Bool)

(assert (=> b!5721247 (=> (not res!2415455) (not e!3518152))))

(assert (=> b!5721247 (= res!2415455 ((_ is Concat!24562) (reg!16046 (regOne!31946 r!7292))))))

(assert (=> b!5721247 (= e!3518148 e!3518150)))

(declare-fun b!5721250 () Bool)

(assert (=> b!5721250 (= e!3518149 call!437127)))

(declare-fun b!5721251 () Bool)

(assert (=> b!5721251 (= e!3518149 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1804828 c!1009031) b!5721243))

(assert (= (and d!1804828 (not c!1009031)) b!5721249))

(assert (= (and b!5721249 c!1009028) b!5721242))

(assert (= (and b!5721249 (not c!1009028)) b!5721247))

(assert (= (and b!5721247 res!2415455) b!5721248))

(assert (= (and b!5721247 c!1009029) b!5721246))

(assert (= (and b!5721247 (not c!1009029)) b!5721244))

(assert (= (and b!5721244 c!1009032) b!5721241))

(assert (= (and b!5721244 (not c!1009032)) b!5721245))

(assert (= (and b!5721245 c!1009030) b!5721250))

(assert (= (and b!5721245 (not c!1009030)) b!5721251))

(assert (= (or b!5721241 b!5721250) bm!437126))

(assert (= (or b!5721241 b!5721250) bm!437121))

(assert (= (or b!5721246 bm!437126) bm!437124))

(assert (= (or b!5721246 bm!437121) bm!437122))

(assert (= (or b!5721242 bm!437122) bm!437123))

(assert (= (or b!5721242 b!5721246) bm!437125))

(declare-fun m!6674480 () Bool)

(assert (=> b!5721248 m!6674480))

(declare-fun m!6674482 () Bool)

(assert (=> bm!437125 m!6674482))

(declare-fun m!6674484 () Bool)

(assert (=> bm!437123 m!6674484))

(declare-fun m!6674486 () Bool)

(assert (=> bm!437124 m!6674486))

(assert (=> b!5721243 m!6674122))

(assert (=> b!5720868 d!1804828))

(declare-fun d!1804830 () Bool)

(declare-fun lt!2278148 () Regex!15717)

(assert (=> d!1804830 (validRegex!7453 lt!2278148)))

(assert (=> d!1804830 (= lt!2278148 (generalisedUnion!1580 (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327))))))

(assert (=> d!1804830 (= (unfocusZipper!1459 (Cons!63327 lt!2278097 Nil!63327)) lt!2278148)))

(declare-fun bs!1337572 () Bool)

(assert (= bs!1337572 d!1804830))

(declare-fun m!6674488 () Bool)

(assert (=> bs!1337572 m!6674488))

(declare-fun m!6674490 () Bool)

(assert (=> bs!1337572 m!6674490))

(assert (=> bs!1337572 m!6674490))

(declare-fun m!6674492 () Bool)

(assert (=> bs!1337572 m!6674492))

(assert (=> b!5720848 d!1804830))

(declare-fun b!5721338 () Bool)

(declare-fun res!2415486 () Bool)

(declare-fun e!3518207 () Bool)

(assert (=> b!5721338 (=> (not res!2415486) (not e!3518207))))

(declare-fun lt!2278169 () Option!15726)

(declare-fun get!21834 (Option!15726) tuple2!65628)

(assert (=> b!5721338 (= res!2415486 (matchR!7902 (regOne!31946 r!7292) (_1!36117 (get!21834 lt!2278169))))))

(declare-fun b!5721339 () Bool)

(declare-fun e!3518205 () Option!15726)

(assert (=> b!5721339 (= e!3518205 (Some!15725 (tuple2!65629 Nil!63328 s!2326)))))

(declare-fun b!5721340 () Bool)

(declare-fun e!3518208 () Option!15726)

(assert (=> b!5721340 (= e!3518205 e!3518208)))

(declare-fun c!1009062 () Bool)

(assert (=> b!5721340 (= c!1009062 ((_ is Nil!63328) s!2326))))

(declare-fun b!5721341 () Bool)

(declare-fun ++!13912 (List!63452 List!63452) List!63452)

(assert (=> b!5721341 (= e!3518207 (= (++!13912 (_1!36117 (get!21834 lt!2278169)) (_2!36117 (get!21834 lt!2278169))) s!2326))))

(declare-fun b!5721342 () Bool)

(declare-fun lt!2278170 () Unit!156400)

(declare-fun lt!2278168 () Unit!156400)

(assert (=> b!5721342 (= lt!2278170 lt!2278168)))

(assert (=> b!5721342 (= (++!13912 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328)) (t!376776 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2069 (List!63452 C!31704 List!63452 List!63452) Unit!156400)

(assert (=> b!5721342 (= lt!2278168 (lemmaMoveElementToOtherListKeepsConcatEq!2069 Nil!63328 (h!69776 s!2326) (t!376776 s!2326) s!2326))))

(assert (=> b!5721342 (= e!3518208 (findConcatSeparation!2140 (regOne!31946 r!7292) (regTwo!31946 r!7292) (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328)) (t!376776 s!2326) s!2326))))

(declare-fun b!5721343 () Bool)

(assert (=> b!5721343 (= e!3518208 None!15725)))

(declare-fun b!5721344 () Bool)

(declare-fun e!3518206 () Bool)

(assert (=> b!5721344 (= e!3518206 (not (isDefined!12429 lt!2278169)))))

(declare-fun b!5721345 () Bool)

(declare-fun res!2415487 () Bool)

(assert (=> b!5721345 (=> (not res!2415487) (not e!3518207))))

(assert (=> b!5721345 (= res!2415487 (matchR!7902 (regTwo!31946 r!7292) (_2!36117 (get!21834 lt!2278169))))))

(declare-fun b!5721346 () Bool)

(declare-fun e!3518204 () Bool)

(assert (=> b!5721346 (= e!3518204 (matchR!7902 (regTwo!31946 r!7292) s!2326))))

(declare-fun d!1804832 () Bool)

(assert (=> d!1804832 e!3518206))

(declare-fun res!2415490 () Bool)

(assert (=> d!1804832 (=> res!2415490 e!3518206)))

(assert (=> d!1804832 (= res!2415490 e!3518207)))

(declare-fun res!2415489 () Bool)

(assert (=> d!1804832 (=> (not res!2415489) (not e!3518207))))

(assert (=> d!1804832 (= res!2415489 (isDefined!12429 lt!2278169))))

(assert (=> d!1804832 (= lt!2278169 e!3518205)))

(declare-fun c!1009061 () Bool)

(assert (=> d!1804832 (= c!1009061 e!3518204)))

(declare-fun res!2415488 () Bool)

(assert (=> d!1804832 (=> (not res!2415488) (not e!3518204))))

(assert (=> d!1804832 (= res!2415488 (matchR!7902 (regOne!31946 r!7292) Nil!63328))))

(assert (=> d!1804832 (validRegex!7453 (regOne!31946 r!7292))))

(assert (=> d!1804832 (= (findConcatSeparation!2140 (regOne!31946 r!7292) (regTwo!31946 r!7292) Nil!63328 s!2326 s!2326) lt!2278169)))

(assert (= (and d!1804832 res!2415488) b!5721346))

(assert (= (and d!1804832 c!1009061) b!5721339))

(assert (= (and d!1804832 (not c!1009061)) b!5721340))

(assert (= (and b!5721340 c!1009062) b!5721343))

(assert (= (and b!5721340 (not c!1009062)) b!5721342))

(assert (= (and d!1804832 res!2415489) b!5721338))

(assert (= (and b!5721338 res!2415486) b!5721345))

(assert (= (and b!5721345 res!2415487) b!5721341))

(assert (= (and d!1804832 (not res!2415490)) b!5721344))

(declare-fun m!6674560 () Bool)

(assert (=> b!5721338 m!6674560))

(declare-fun m!6674562 () Bool)

(assert (=> b!5721338 m!6674562))

(declare-fun m!6674564 () Bool)

(assert (=> b!5721342 m!6674564))

(assert (=> b!5721342 m!6674564))

(declare-fun m!6674566 () Bool)

(assert (=> b!5721342 m!6674566))

(declare-fun m!6674568 () Bool)

(assert (=> b!5721342 m!6674568))

(assert (=> b!5721342 m!6674564))

(declare-fun m!6674570 () Bool)

(assert (=> b!5721342 m!6674570))

(declare-fun m!6674572 () Bool)

(assert (=> d!1804832 m!6674572))

(declare-fun m!6674574 () Bool)

(assert (=> d!1804832 m!6674574))

(declare-fun m!6674576 () Bool)

(assert (=> d!1804832 m!6674576))

(assert (=> b!5721345 m!6674560))

(declare-fun m!6674578 () Bool)

(assert (=> b!5721345 m!6674578))

(assert (=> b!5721341 m!6674560))

(declare-fun m!6674580 () Bool)

(assert (=> b!5721341 m!6674580))

(assert (=> b!5721344 m!6674572))

(declare-fun m!6674582 () Bool)

(assert (=> b!5721346 m!6674582))

(assert (=> b!5720869 d!1804832))

(declare-fun d!1804858 () Bool)

(declare-fun choose!43257 (Int) Bool)

(assert (=> d!1804858 (= (Exists!2817 lambda!309136) (choose!43257 lambda!309136))))

(declare-fun bs!1337598 () Bool)

(assert (= bs!1337598 d!1804858))

(declare-fun m!6674584 () Bool)

(assert (=> bs!1337598 m!6674584))

(assert (=> b!5720869 d!1804858))

(declare-fun bs!1337603 () Bool)

(declare-fun d!1804860 () Bool)

(assert (= bs!1337603 (and d!1804860 b!5720869)))

(declare-fun lambda!309182 () Int)

(assert (=> bs!1337603 (= lambda!309182 lambda!309135)))

(assert (=> bs!1337603 (not (= lambda!309182 lambda!309136))))

(assert (=> d!1804860 true))

(assert (=> d!1804860 true))

(assert (=> d!1804860 true))

(assert (=> d!1804860 (= (isDefined!12429 (findConcatSeparation!2140 (regOne!31946 r!7292) (regTwo!31946 r!7292) Nil!63328 s!2326 s!2326)) (Exists!2817 lambda!309182))))

(declare-fun lt!2278179 () Unit!156400)

(declare-fun choose!43258 (Regex!15717 Regex!15717 List!63452) Unit!156400)

(assert (=> d!1804860 (= lt!2278179 (choose!43258 (regOne!31946 r!7292) (regTwo!31946 r!7292) s!2326))))

(assert (=> d!1804860 (validRegex!7453 (regOne!31946 r!7292))))

(assert (=> d!1804860 (= (lemmaFindConcatSeparationEquivalentToExists!1904 (regOne!31946 r!7292) (regTwo!31946 r!7292) s!2326) lt!2278179)))

(declare-fun bs!1337604 () Bool)

(assert (= bs!1337604 d!1804860))

(declare-fun m!6674610 () Bool)

(assert (=> bs!1337604 m!6674610))

(assert (=> bs!1337604 m!6674104))

(assert (=> bs!1337604 m!6674576))

(declare-fun m!6674612 () Bool)

(assert (=> bs!1337604 m!6674612))

(assert (=> bs!1337604 m!6674104))

(assert (=> bs!1337604 m!6674106))

(assert (=> b!5720869 d!1804860))

(declare-fun d!1804864 () Bool)

(assert (=> d!1804864 (= (Exists!2817 lambda!309135) (choose!43257 lambda!309135))))

(declare-fun bs!1337605 () Bool)

(assert (= bs!1337605 d!1804864))

(declare-fun m!6674616 () Bool)

(assert (=> bs!1337605 m!6674616))

(assert (=> b!5720869 d!1804864))

(declare-fun bs!1337610 () Bool)

(declare-fun d!1804866 () Bool)

(assert (= bs!1337610 (and d!1804866 b!5720869)))

(declare-fun lambda!309187 () Int)

(assert (=> bs!1337610 (= lambda!309187 lambda!309135)))

(assert (=> bs!1337610 (not (= lambda!309187 lambda!309136))))

(declare-fun bs!1337611 () Bool)

(assert (= bs!1337611 (and d!1804866 d!1804860)))

(assert (=> bs!1337611 (= lambda!309187 lambda!309182)))

(assert (=> d!1804866 true))

(assert (=> d!1804866 true))

(assert (=> d!1804866 true))

(declare-fun lambda!309188 () Int)

(assert (=> bs!1337610 (not (= lambda!309188 lambda!309135))))

(assert (=> bs!1337610 (= lambda!309188 lambda!309136)))

(assert (=> bs!1337611 (not (= lambda!309188 lambda!309182))))

(declare-fun bs!1337612 () Bool)

(assert (= bs!1337612 d!1804866))

(assert (=> bs!1337612 (not (= lambda!309188 lambda!309187))))

(assert (=> d!1804866 true))

(assert (=> d!1804866 true))

(assert (=> d!1804866 true))

(assert (=> d!1804866 (= (Exists!2817 lambda!309187) (Exists!2817 lambda!309188))))

(declare-fun lt!2278182 () Unit!156400)

(declare-fun choose!43259 (Regex!15717 Regex!15717 List!63452) Unit!156400)

(assert (=> d!1804866 (= lt!2278182 (choose!43259 (regOne!31946 r!7292) (regTwo!31946 r!7292) s!2326))))

(assert (=> d!1804866 (validRegex!7453 (regOne!31946 r!7292))))

(assert (=> d!1804866 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1446 (regOne!31946 r!7292) (regTwo!31946 r!7292) s!2326) lt!2278182)))

(declare-fun m!6674620 () Bool)

(assert (=> bs!1337612 m!6674620))

(declare-fun m!6674622 () Bool)

(assert (=> bs!1337612 m!6674622))

(declare-fun m!6674624 () Bool)

(assert (=> bs!1337612 m!6674624))

(assert (=> bs!1337612 m!6674576))

(assert (=> b!5720869 d!1804866))

(declare-fun d!1804876 () Bool)

(declare-fun isEmpty!35205 (Option!15726) Bool)

(assert (=> d!1804876 (= (isDefined!12429 (findConcatSeparation!2140 (regOne!31946 r!7292) (regTwo!31946 r!7292) Nil!63328 s!2326 s!2326)) (not (isEmpty!35205 (findConcatSeparation!2140 (regOne!31946 r!7292) (regTwo!31946 r!7292) Nil!63328 s!2326 s!2326))))))

(declare-fun bs!1337613 () Bool)

(assert (= bs!1337613 d!1804876))

(assert (=> bs!1337613 m!6674104))

(declare-fun m!6674626 () Bool)

(assert (=> bs!1337613 m!6674626))

(assert (=> b!5720869 d!1804876))

(declare-fun bs!1337614 () Bool)

(declare-fun d!1804878 () Bool)

(assert (= bs!1337614 (and d!1804878 d!1804742)))

(declare-fun lambda!309189 () Int)

(assert (=> bs!1337614 (= lambda!309189 lambda!309143)))

(declare-fun bs!1337615 () Bool)

(assert (= bs!1337615 (and d!1804878 d!1804746)))

(assert (=> bs!1337615 (= lambda!309189 lambda!309151)))

(declare-fun bs!1337616 () Bool)

(assert (= bs!1337616 (and d!1804878 d!1804826)))

(assert (=> bs!1337616 (= lambda!309189 lambda!309165)))

(assert (=> d!1804878 (= (inv!82539 (h!69775 zl!343)) (forall!14851 (exprs!5601 (h!69775 zl!343)) lambda!309189))))

(declare-fun bs!1337617 () Bool)

(assert (= bs!1337617 d!1804878))

(declare-fun m!6674628 () Bool)

(assert (=> bs!1337617 m!6674628))

(assert (=> b!5720849 d!1804878))

(declare-fun d!1804880 () Bool)

(declare-fun c!1009075 () Bool)

(assert (=> d!1804880 (= c!1009075 (isEmpty!35204 s!2326))))

(declare-fun e!3518259 () Bool)

(assert (=> d!1804880 (= (matchZipper!1855 lt!2278092 s!2326) e!3518259)))

(declare-fun b!5721446 () Bool)

(assert (=> b!5721446 (= e!3518259 (nullableZipper!1666 lt!2278092))))

(declare-fun b!5721447 () Bool)

(assert (=> b!5721447 (= e!3518259 (matchZipper!1855 (derivationStepZipper!1800 lt!2278092 (head!12114 s!2326)) (tail!11209 s!2326)))))

(assert (= (and d!1804880 c!1009075) b!5721446))

(assert (= (and d!1804880 (not c!1009075)) b!5721447))

(declare-fun m!6674630 () Bool)

(assert (=> d!1804880 m!6674630))

(declare-fun m!6674632 () Bool)

(assert (=> b!5721446 m!6674632))

(declare-fun m!6674634 () Bool)

(assert (=> b!5721447 m!6674634))

(assert (=> b!5721447 m!6674634))

(declare-fun m!6674636 () Bool)

(assert (=> b!5721447 m!6674636))

(declare-fun m!6674638 () Bool)

(assert (=> b!5721447 m!6674638))

(assert (=> b!5721447 m!6674636))

(assert (=> b!5721447 m!6674638))

(declare-fun m!6674640 () Bool)

(assert (=> b!5721447 m!6674640))

(assert (=> b!5720850 d!1804880))

(declare-fun d!1804882 () Bool)

(declare-fun c!1009076 () Bool)

(assert (=> d!1804882 (= c!1009076 (isEmpty!35204 (t!376776 s!2326)))))

(declare-fun e!3518260 () Bool)

(assert (=> d!1804882 (= (matchZipper!1855 lt!2278070 (t!376776 s!2326)) e!3518260)))

(declare-fun b!5721448 () Bool)

(assert (=> b!5721448 (= e!3518260 (nullableZipper!1666 lt!2278070))))

(declare-fun b!5721449 () Bool)

(assert (=> b!5721449 (= e!3518260 (matchZipper!1855 (derivationStepZipper!1800 lt!2278070 (head!12114 (t!376776 s!2326))) (tail!11209 (t!376776 s!2326))))))

(assert (= (and d!1804882 c!1009076) b!5721448))

(assert (= (and d!1804882 (not c!1009076)) b!5721449))

(assert (=> d!1804882 m!6674310))

(declare-fun m!6674642 () Bool)

(assert (=> b!5721448 m!6674642))

(assert (=> b!5721449 m!6674314))

(assert (=> b!5721449 m!6674314))

(declare-fun m!6674644 () Bool)

(assert (=> b!5721449 m!6674644))

(assert (=> b!5721449 m!6674318))

(assert (=> b!5721449 m!6674644))

(assert (=> b!5721449 m!6674318))

(declare-fun m!6674646 () Bool)

(assert (=> b!5721449 m!6674646))

(assert (=> b!5720850 d!1804882))

(declare-fun d!1804884 () Bool)

(assert (=> d!1804884 (= (nullable!5749 (regOne!31946 (regOne!31946 r!7292))) (nullableFct!1813 (regOne!31946 (regOne!31946 r!7292))))))

(declare-fun bs!1337618 () Bool)

(assert (= bs!1337618 d!1804884))

(declare-fun m!6674648 () Bool)

(assert (=> bs!1337618 m!6674648))

(assert (=> b!5720851 d!1804884))

(declare-fun d!1804886 () Bool)

(declare-fun c!1009077 () Bool)

(assert (=> d!1804886 (= c!1009077 (isEmpty!35204 s!2326))))

(declare-fun e!3518261 () Bool)

(assert (=> d!1804886 (= (matchZipper!1855 z!1189 s!2326) e!3518261)))

(declare-fun b!5721450 () Bool)

(assert (=> b!5721450 (= e!3518261 (nullableZipper!1666 z!1189))))

(declare-fun b!5721451 () Bool)

(assert (=> b!5721451 (= e!3518261 (matchZipper!1855 (derivationStepZipper!1800 z!1189 (head!12114 s!2326)) (tail!11209 s!2326)))))

(assert (= (and d!1804886 c!1009077) b!5721450))

(assert (= (and d!1804886 (not c!1009077)) b!5721451))

(assert (=> d!1804886 m!6674630))

(declare-fun m!6674650 () Bool)

(assert (=> b!5721450 m!6674650))

(assert (=> b!5721451 m!6674634))

(assert (=> b!5721451 m!6674634))

(declare-fun m!6674652 () Bool)

(assert (=> b!5721451 m!6674652))

(assert (=> b!5721451 m!6674638))

(assert (=> b!5721451 m!6674652))

(assert (=> b!5721451 m!6674638))

(declare-fun m!6674654 () Bool)

(assert (=> b!5721451 m!6674654))

(assert (=> b!5720873 d!1804886))

(declare-fun d!1804888 () Bool)

(assert (=> d!1804888 (= (flatMap!1330 lt!2278079 lambda!309137) (dynLambda!24780 lambda!309137 lt!2278082))))

(declare-fun lt!2278183 () Unit!156400)

(assert (=> d!1804888 (= lt!2278183 (choose!43255 lt!2278079 lt!2278082 lambda!309137))))

(assert (=> d!1804888 (= lt!2278079 (store ((as const (Array Context!10202 Bool)) false) lt!2278082 true))))

(assert (=> d!1804888 (= (lemmaFlatMapOnSingletonSet!862 lt!2278079 lt!2278082 lambda!309137) lt!2278183)))

(declare-fun b_lambda!216185 () Bool)

(assert (=> (not b_lambda!216185) (not d!1804888)))

(declare-fun bs!1337619 () Bool)

(assert (= bs!1337619 d!1804888))

(assert (=> bs!1337619 m!6674128))

(declare-fun m!6674656 () Bool)

(assert (=> bs!1337619 m!6674656))

(declare-fun m!6674658 () Bool)

(assert (=> bs!1337619 m!6674658))

(assert (=> bs!1337619 m!6674122))

(assert (=> b!5720852 d!1804888))

(declare-fun d!1804890 () Bool)

(declare-fun lt!2278184 () Regex!15717)

(assert (=> d!1804890 (validRegex!7453 lt!2278184)))

(assert (=> d!1804890 (= lt!2278184 (generalisedUnion!1580 (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327))))))

(assert (=> d!1804890 (= (unfocusZipper!1459 (Cons!63327 lt!2278081 Nil!63327)) lt!2278184)))

(declare-fun bs!1337620 () Bool)

(assert (= bs!1337620 d!1804890))

(declare-fun m!6674660 () Bool)

(assert (=> bs!1337620 m!6674660))

(declare-fun m!6674662 () Bool)

(assert (=> bs!1337620 m!6674662))

(assert (=> bs!1337620 m!6674662))

(declare-fun m!6674664 () Bool)

(assert (=> bs!1337620 m!6674664))

(assert (=> b!5720852 d!1804890))

(declare-fun b!5721452 () Bool)

(declare-fun e!3518264 () (InoxSet Context!10202))

(assert (=> b!5721452 (= e!3518264 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5721453 () Bool)

(declare-fun e!3518262 () (InoxSet Context!10202))

(assert (=> b!5721453 (= e!3518262 e!3518264)))

(declare-fun c!1009079 () Bool)

(assert (=> b!5721453 (= c!1009079 ((_ is Cons!63326) (exprs!5601 lt!2278082)))))

(declare-fun d!1804892 () Bool)

(declare-fun c!1009078 () Bool)

(declare-fun e!3518263 () Bool)

(assert (=> d!1804892 (= c!1009078 e!3518263)))

(declare-fun res!2415512 () Bool)

(assert (=> d!1804892 (=> (not res!2415512) (not e!3518263))))

(assert (=> d!1804892 (= res!2415512 ((_ is Cons!63326) (exprs!5601 lt!2278082)))))

(assert (=> d!1804892 (= (derivationStepZipperUp!985 lt!2278082 (h!69776 s!2326)) e!3518262)))

(declare-fun b!5721454 () Bool)

(declare-fun call!437135 () (InoxSet Context!10202))

(assert (=> b!5721454 (= e!3518262 ((_ map or) call!437135 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 lt!2278082))) (h!69776 s!2326))))))

(declare-fun b!5721455 () Bool)

(assert (=> b!5721455 (= e!3518264 call!437135)))

(declare-fun bm!437130 () Bool)

(assert (=> bm!437130 (= call!437135 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 lt!2278082)) (Context!10203 (t!376774 (exprs!5601 lt!2278082))) (h!69776 s!2326)))))

(declare-fun b!5721456 () Bool)

(assert (=> b!5721456 (= e!3518263 (nullable!5749 (h!69774 (exprs!5601 lt!2278082))))))

(assert (= (and d!1804892 res!2415512) b!5721456))

(assert (= (and d!1804892 c!1009078) b!5721454))

(assert (= (and d!1804892 (not c!1009078)) b!5721453))

(assert (= (and b!5721453 c!1009079) b!5721455))

(assert (= (and b!5721453 (not c!1009079)) b!5721452))

(assert (= (or b!5721454 b!5721455) bm!437130))

(declare-fun m!6674666 () Bool)

(assert (=> b!5721454 m!6674666))

(declare-fun m!6674668 () Bool)

(assert (=> bm!437130 m!6674668))

(declare-fun m!6674670 () Bool)

(assert (=> b!5721456 m!6674670))

(assert (=> b!5720852 d!1804892))

(declare-fun d!1804894 () Bool)

(assert (=> d!1804894 (= (flatMap!1330 lt!2278079 lambda!309137) (choose!43256 lt!2278079 lambda!309137))))

(declare-fun bs!1337621 () Bool)

(assert (= bs!1337621 d!1804894))

(declare-fun m!6674672 () Bool)

(assert (=> bs!1337621 m!6674672))

(assert (=> b!5720852 d!1804894))

(declare-fun d!1804896 () Bool)

(assert (=> d!1804896 (= (flatMap!1330 lt!2278072 lambda!309137) (choose!43256 lt!2278072 lambda!309137))))

(declare-fun bs!1337622 () Bool)

(assert (= bs!1337622 d!1804896))

(declare-fun m!6674674 () Bool)

(assert (=> bs!1337622 m!6674674))

(assert (=> b!5720852 d!1804896))

(declare-fun b!5721457 () Bool)

(declare-fun e!3518267 () (InoxSet Context!10202))

(assert (=> b!5721457 (= e!3518267 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5721458 () Bool)

(declare-fun e!3518265 () (InoxSet Context!10202))

(assert (=> b!5721458 (= e!3518265 e!3518267)))

(declare-fun c!1009081 () Bool)

(assert (=> b!5721458 (= c!1009081 ((_ is Cons!63326) (exprs!5601 lt!2278081)))))

(declare-fun d!1804898 () Bool)

(declare-fun c!1009080 () Bool)

(declare-fun e!3518266 () Bool)

(assert (=> d!1804898 (= c!1009080 e!3518266)))

(declare-fun res!2415513 () Bool)

(assert (=> d!1804898 (=> (not res!2415513) (not e!3518266))))

(assert (=> d!1804898 (= res!2415513 ((_ is Cons!63326) (exprs!5601 lt!2278081)))))

(assert (=> d!1804898 (= (derivationStepZipperUp!985 lt!2278081 (h!69776 s!2326)) e!3518265)))

(declare-fun call!437136 () (InoxSet Context!10202))

(declare-fun b!5721459 () Bool)

(assert (=> b!5721459 (= e!3518265 ((_ map or) call!437136 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 lt!2278081))) (h!69776 s!2326))))))

(declare-fun b!5721460 () Bool)

(assert (=> b!5721460 (= e!3518267 call!437136)))

(declare-fun bm!437131 () Bool)

(assert (=> bm!437131 (= call!437136 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 lt!2278081)) (Context!10203 (t!376774 (exprs!5601 lt!2278081))) (h!69776 s!2326)))))

(declare-fun b!5721461 () Bool)

(assert (=> b!5721461 (= e!3518266 (nullable!5749 (h!69774 (exprs!5601 lt!2278081))))))

(assert (= (and d!1804898 res!2415513) b!5721461))

(assert (= (and d!1804898 c!1009080) b!5721459))

(assert (= (and d!1804898 (not c!1009080)) b!5721458))

(assert (= (and b!5721458 c!1009081) b!5721460))

(assert (= (and b!5721458 (not c!1009081)) b!5721457))

(assert (= (or b!5721459 b!5721460) bm!437131))

(declare-fun m!6674676 () Bool)

(assert (=> b!5721459 m!6674676))

(declare-fun m!6674678 () Bool)

(assert (=> bm!437131 m!6674678))

(declare-fun m!6674680 () Bool)

(assert (=> b!5721461 m!6674680))

(assert (=> b!5720852 d!1804898))

(declare-fun d!1804900 () Bool)

(assert (=> d!1804900 (= (flatMap!1330 lt!2278072 lambda!309137) (dynLambda!24780 lambda!309137 lt!2278081))))

(declare-fun lt!2278185 () Unit!156400)

(assert (=> d!1804900 (= lt!2278185 (choose!43255 lt!2278072 lt!2278081 lambda!309137))))

(assert (=> d!1804900 (= lt!2278072 (store ((as const (Array Context!10202 Bool)) false) lt!2278081 true))))

(assert (=> d!1804900 (= (lemmaFlatMapOnSingletonSet!862 lt!2278072 lt!2278081 lambda!309137) lt!2278185)))

(declare-fun b_lambda!216187 () Bool)

(assert (=> (not b_lambda!216187) (not d!1804900)))

(declare-fun bs!1337623 () Bool)

(assert (= bs!1337623 d!1804900))

(assert (=> bs!1337623 m!6674120))

(declare-fun m!6674682 () Bool)

(assert (=> bs!1337623 m!6674682))

(declare-fun m!6674684 () Bool)

(assert (=> bs!1337623 m!6674684))

(assert (=> bs!1337623 m!6674126))

(assert (=> b!5720852 d!1804900))

(declare-fun bs!1337624 () Bool)

(declare-fun d!1804902 () Bool)

(assert (= bs!1337624 (and d!1804902 d!1804742)))

(declare-fun lambda!309192 () Int)

(assert (=> bs!1337624 (= lambda!309192 lambda!309143)))

(declare-fun bs!1337625 () Bool)

(assert (= bs!1337625 (and d!1804902 d!1804746)))

(assert (=> bs!1337625 (= lambda!309192 lambda!309151)))

(declare-fun bs!1337626 () Bool)

(assert (= bs!1337626 (and d!1804902 d!1804826)))

(assert (=> bs!1337626 (= lambda!309192 lambda!309165)))

(declare-fun bs!1337627 () Bool)

(assert (= bs!1337627 (and d!1804902 d!1804878)))

(assert (=> bs!1337627 (= lambda!309192 lambda!309189)))

(declare-fun b!5721482 () Bool)

(declare-fun e!3518285 () Bool)

(declare-fun e!3518280 () Bool)

(assert (=> b!5721482 (= e!3518285 e!3518280)))

(declare-fun c!1009091 () Bool)

(assert (=> b!5721482 (= c!1009091 (isEmpty!35202 (tail!11208 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun b!5721483 () Bool)

(declare-fun e!3518284 () Regex!15717)

(assert (=> b!5721483 (= e!3518284 EmptyExpr!15717)))

(declare-fun b!5721484 () Bool)

(declare-fun lt!2278188 () Regex!15717)

(declare-fun isConcat!747 (Regex!15717) Bool)

(assert (=> b!5721484 (= e!3518280 (isConcat!747 lt!2278188))))

(declare-fun b!5721485 () Bool)

(assert (=> b!5721485 (= e!3518280 (= lt!2278188 (head!12113 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun b!5721486 () Bool)

(declare-fun e!3518282 () Regex!15717)

(assert (=> b!5721486 (= e!3518282 (h!69774 (exprs!5601 (h!69775 zl!343))))))

(declare-fun b!5721487 () Bool)

(declare-fun isEmptyExpr!1224 (Regex!15717) Bool)

(assert (=> b!5721487 (= e!3518285 (isEmptyExpr!1224 lt!2278188))))

(declare-fun e!3518283 () Bool)

(assert (=> d!1804902 e!3518283))

(declare-fun res!2415519 () Bool)

(assert (=> d!1804902 (=> (not res!2415519) (not e!3518283))))

(assert (=> d!1804902 (= res!2415519 (validRegex!7453 lt!2278188))))

(assert (=> d!1804902 (= lt!2278188 e!3518282)))

(declare-fun c!1009092 () Bool)

(declare-fun e!3518281 () Bool)

(assert (=> d!1804902 (= c!1009092 e!3518281)))

(declare-fun res!2415518 () Bool)

(assert (=> d!1804902 (=> (not res!2415518) (not e!3518281))))

(assert (=> d!1804902 (= res!2415518 ((_ is Cons!63326) (exprs!5601 (h!69775 zl!343))))))

(assert (=> d!1804902 (forall!14851 (exprs!5601 (h!69775 zl!343)) lambda!309192)))

(assert (=> d!1804902 (= (generalisedConcat!1332 (exprs!5601 (h!69775 zl!343))) lt!2278188)))

(declare-fun b!5721488 () Bool)

(assert (=> b!5721488 (= e!3518281 (isEmpty!35202 (t!376774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun b!5721489 () Bool)

(assert (=> b!5721489 (= e!3518283 e!3518285)))

(declare-fun c!1009090 () Bool)

(assert (=> b!5721489 (= c!1009090 (isEmpty!35202 (exprs!5601 (h!69775 zl!343))))))

(declare-fun b!5721490 () Bool)

(assert (=> b!5721490 (= e!3518282 e!3518284)))

(declare-fun c!1009093 () Bool)

(assert (=> b!5721490 (= c!1009093 ((_ is Cons!63326) (exprs!5601 (h!69775 zl!343))))))

(declare-fun b!5721491 () Bool)

(assert (=> b!5721491 (= e!3518284 (Concat!24562 (h!69774 (exprs!5601 (h!69775 zl!343))) (generalisedConcat!1332 (t!376774 (exprs!5601 (h!69775 zl!343))))))))

(assert (= (and d!1804902 res!2415518) b!5721488))

(assert (= (and d!1804902 c!1009092) b!5721486))

(assert (= (and d!1804902 (not c!1009092)) b!5721490))

(assert (= (and b!5721490 c!1009093) b!5721491))

(assert (= (and b!5721490 (not c!1009093)) b!5721483))

(assert (= (and d!1804902 res!2415519) b!5721489))

(assert (= (and b!5721489 c!1009090) b!5721487))

(assert (= (and b!5721489 (not c!1009090)) b!5721482))

(assert (= (and b!5721482 c!1009091) b!5721485))

(assert (= (and b!5721482 (not c!1009091)) b!5721484))

(declare-fun m!6674686 () Bool)

(assert (=> b!5721491 m!6674686))

(declare-fun m!6674688 () Bool)

(assert (=> b!5721484 m!6674688))

(declare-fun m!6674690 () Bool)

(assert (=> b!5721482 m!6674690))

(assert (=> b!5721482 m!6674690))

(declare-fun m!6674692 () Bool)

(assert (=> b!5721482 m!6674692))

(declare-fun m!6674694 () Bool)

(assert (=> b!5721485 m!6674694))

(assert (=> b!5721488 m!6674176))

(declare-fun m!6674696 () Bool)

(assert (=> b!5721489 m!6674696))

(declare-fun m!6674698 () Bool)

(assert (=> d!1804902 m!6674698))

(declare-fun m!6674700 () Bool)

(assert (=> d!1804902 m!6674700))

(declare-fun m!6674702 () Bool)

(assert (=> b!5721487 m!6674702))

(assert (=> b!5720874 d!1804902))

(assert (=> b!5720856 d!1804768))

(declare-fun d!1804904 () Bool)

(assert (=> d!1804904 (= (flatMap!1330 lt!2278092 lambda!309137) (choose!43256 lt!2278092 lambda!309137))))

(declare-fun bs!1337628 () Bool)

(assert (= bs!1337628 d!1804904))

(declare-fun m!6674704 () Bool)

(assert (=> bs!1337628 m!6674704))

(assert (=> b!5720857 d!1804904))

(declare-fun b!5721492 () Bool)

(declare-fun e!3518288 () (InoxSet Context!10202))

(assert (=> b!5721492 (= e!3518288 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5721493 () Bool)

(declare-fun e!3518286 () (InoxSet Context!10202))

(assert (=> b!5721493 (= e!3518286 e!3518288)))

(declare-fun c!1009095 () Bool)

(assert (=> b!5721493 (= c!1009095 ((_ is Cons!63326) (exprs!5601 lt!2278097)))))

(declare-fun d!1804906 () Bool)

(declare-fun c!1009094 () Bool)

(declare-fun e!3518287 () Bool)

(assert (=> d!1804906 (= c!1009094 e!3518287)))

(declare-fun res!2415520 () Bool)

(assert (=> d!1804906 (=> (not res!2415520) (not e!3518287))))

(assert (=> d!1804906 (= res!2415520 ((_ is Cons!63326) (exprs!5601 lt!2278097)))))

(assert (=> d!1804906 (= (derivationStepZipperUp!985 lt!2278097 (h!69776 s!2326)) e!3518286)))

(declare-fun call!437137 () (InoxSet Context!10202))

(declare-fun b!5721494 () Bool)

(assert (=> b!5721494 (= e!3518286 ((_ map or) call!437137 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 lt!2278097))) (h!69776 s!2326))))))

(declare-fun b!5721495 () Bool)

(assert (=> b!5721495 (= e!3518288 call!437137)))

(declare-fun bm!437132 () Bool)

(assert (=> bm!437132 (= call!437137 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 lt!2278097)) (Context!10203 (t!376774 (exprs!5601 lt!2278097))) (h!69776 s!2326)))))

(declare-fun b!5721496 () Bool)

(assert (=> b!5721496 (= e!3518287 (nullable!5749 (h!69774 (exprs!5601 lt!2278097))))))

(assert (= (and d!1804906 res!2415520) b!5721496))

(assert (= (and d!1804906 c!1009094) b!5721494))

(assert (= (and d!1804906 (not c!1009094)) b!5721493))

(assert (= (and b!5721493 c!1009095) b!5721495))

(assert (= (and b!5721493 (not c!1009095)) b!5721492))

(assert (= (or b!5721494 b!5721495) bm!437132))

(declare-fun m!6674706 () Bool)

(assert (=> b!5721494 m!6674706))

(declare-fun m!6674708 () Bool)

(assert (=> bm!437132 m!6674708))

(declare-fun m!6674710 () Bool)

(assert (=> b!5721496 m!6674710))

(assert (=> b!5720857 d!1804906))

(declare-fun d!1804908 () Bool)

(assert (=> d!1804908 (= (flatMap!1330 lt!2278092 lambda!309137) (dynLambda!24780 lambda!309137 lt!2278097))))

(declare-fun lt!2278189 () Unit!156400)

(assert (=> d!1804908 (= lt!2278189 (choose!43255 lt!2278092 lt!2278097 lambda!309137))))

(assert (=> d!1804908 (= lt!2278092 (store ((as const (Array Context!10202 Bool)) false) lt!2278097 true))))

(assert (=> d!1804908 (= (lemmaFlatMapOnSingletonSet!862 lt!2278092 lt!2278097 lambda!309137) lt!2278189)))

(declare-fun b_lambda!216189 () Bool)

(assert (=> (not b_lambda!216189) (not d!1804908)))

(declare-fun bs!1337629 () Bool)

(assert (= bs!1337629 d!1804908))

(assert (=> bs!1337629 m!6674130))

(declare-fun m!6674712 () Bool)

(assert (=> bs!1337629 m!6674712))

(declare-fun m!6674714 () Bool)

(assert (=> bs!1337629 m!6674714))

(assert (=> bs!1337629 m!6674134))

(assert (=> b!5720857 d!1804908))

(declare-fun bs!1337630 () Bool)

(declare-fun d!1804910 () Bool)

(assert (= bs!1337630 (and d!1804910 b!5720846)))

(declare-fun lambda!309195 () Int)

(assert (=> bs!1337630 (= lambda!309195 lambda!309137)))

(assert (=> d!1804910 true))

(assert (=> d!1804910 (= (derivationStepZipper!1800 lt!2278092 (h!69776 s!2326)) (flatMap!1330 lt!2278092 lambda!309195))))

(declare-fun bs!1337631 () Bool)

(assert (= bs!1337631 d!1804910))

(declare-fun m!6674716 () Bool)

(assert (=> bs!1337631 m!6674716))

(assert (=> b!5720857 d!1804910))

(declare-fun b!5721517 () Bool)

(declare-fun e!3518303 () Bool)

(declare-fun e!3518304 () Bool)

(assert (=> b!5721517 (= e!3518303 e!3518304)))

(declare-fun c!1009103 () Bool)

(assert (=> b!5721517 (= c!1009103 ((_ is Union!15717) r!7292))))

(declare-fun b!5721518 () Bool)

(declare-fun res!2415531 () Bool)

(declare-fun e!3518307 () Bool)

(assert (=> b!5721518 (=> res!2415531 e!3518307)))

(assert (=> b!5721518 (= res!2415531 (not ((_ is Concat!24562) r!7292)))))

(assert (=> b!5721518 (= e!3518304 e!3518307)))

(declare-fun b!5721519 () Bool)

(declare-fun e!3518306 () Bool)

(assert (=> b!5721519 (= e!3518307 e!3518306)))

(declare-fun res!2415533 () Bool)

(assert (=> b!5721519 (=> (not res!2415533) (not e!3518306))))

(declare-fun call!437146 () Bool)

(assert (=> b!5721519 (= res!2415533 call!437146)))

(declare-fun call!437144 () Bool)

(declare-fun c!1009102 () Bool)

(declare-fun bm!437139 () Bool)

(assert (=> bm!437139 (= call!437144 (validRegex!7453 (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292)))))))

(declare-fun b!5721520 () Bool)

(declare-fun e!3518308 () Bool)

(assert (=> b!5721520 (= e!3518308 e!3518303)))

(assert (=> b!5721520 (= c!1009102 ((_ is Star!15717) r!7292))))

(declare-fun b!5721521 () Bool)

(declare-fun call!437145 () Bool)

(assert (=> b!5721521 (= e!3518306 call!437145)))

(declare-fun b!5721523 () Bool)

(declare-fun e!3518305 () Bool)

(assert (=> b!5721523 (= e!3518305 call!437144)))

(declare-fun b!5721524 () Bool)

(assert (=> b!5721524 (= e!3518303 e!3518305)))

(declare-fun res!2415532 () Bool)

(assert (=> b!5721524 (= res!2415532 (not (nullable!5749 (reg!16046 r!7292))))))

(assert (=> b!5721524 (=> (not res!2415532) (not e!3518305))))

(declare-fun bm!437140 () Bool)

(assert (=> bm!437140 (= call!437146 call!437144)))

(declare-fun bm!437141 () Bool)

(assert (=> bm!437141 (= call!437145 (validRegex!7453 (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292))))))

(declare-fun b!5721525 () Bool)

(declare-fun e!3518309 () Bool)

(assert (=> b!5721525 (= e!3518309 call!437145)))

(declare-fun d!1804912 () Bool)

(declare-fun res!2415535 () Bool)

(assert (=> d!1804912 (=> res!2415535 e!3518308)))

(assert (=> d!1804912 (= res!2415535 ((_ is ElementMatch!15717) r!7292))))

(assert (=> d!1804912 (= (validRegex!7453 r!7292) e!3518308)))

(declare-fun b!5721522 () Bool)

(declare-fun res!2415534 () Bool)

(assert (=> b!5721522 (=> (not res!2415534) (not e!3518309))))

(assert (=> b!5721522 (= res!2415534 call!437146)))

(assert (=> b!5721522 (= e!3518304 e!3518309)))

(assert (= (and d!1804912 (not res!2415535)) b!5721520))

(assert (= (and b!5721520 c!1009102) b!5721524))

(assert (= (and b!5721520 (not c!1009102)) b!5721517))

(assert (= (and b!5721524 res!2415532) b!5721523))

(assert (= (and b!5721517 c!1009103) b!5721522))

(assert (= (and b!5721517 (not c!1009103)) b!5721518))

(assert (= (and b!5721522 res!2415534) b!5721525))

(assert (= (and b!5721518 (not res!2415531)) b!5721519))

(assert (= (and b!5721519 res!2415533) b!5721521))

(assert (= (or b!5721525 b!5721521) bm!437141))

(assert (= (or b!5721522 b!5721519) bm!437140))

(assert (= (or b!5721523 bm!437140) bm!437139))

(declare-fun m!6674718 () Bool)

(assert (=> bm!437139 m!6674718))

(declare-fun m!6674720 () Bool)

(assert (=> b!5721524 m!6674720))

(declare-fun m!6674722 () Bool)

(assert (=> bm!437141 m!6674722))

(assert (=> start!588872 d!1804912))

(declare-fun d!1804914 () Bool)

(declare-fun lt!2278190 () Regex!15717)

(assert (=> d!1804914 (validRegex!7453 lt!2278190)))

(assert (=> d!1804914 (= lt!2278190 (generalisedUnion!1580 (unfocusZipperList!1145 zl!343)))))

(assert (=> d!1804914 (= (unfocusZipper!1459 zl!343) lt!2278190)))

(declare-fun bs!1337632 () Bool)

(assert (= bs!1337632 d!1804914))

(declare-fun m!6674724 () Bool)

(assert (=> bs!1337632 m!6674724))

(assert (=> bs!1337632 m!6674158))

(assert (=> bs!1337632 m!6674158))

(assert (=> bs!1337632 m!6674160))

(assert (=> b!5720858 d!1804914))

(declare-fun bs!1337633 () Bool)

(declare-fun b!5721563 () Bool)

(assert (= bs!1337633 (and b!5721563 d!1804866)))

(declare-fun lambda!309200 () Int)

(assert (=> bs!1337633 (not (= lambda!309200 lambda!309187))))

(declare-fun bs!1337634 () Bool)

(assert (= bs!1337634 (and b!5721563 b!5720869)))

(assert (=> bs!1337634 (not (= lambda!309200 lambda!309135))))

(assert (=> bs!1337634 (not (= lambda!309200 lambda!309136))))

(declare-fun bs!1337635 () Bool)

(assert (= bs!1337635 (and b!5721563 d!1804860)))

(assert (=> bs!1337635 (not (= lambda!309200 lambda!309182))))

(assert (=> bs!1337633 (not (= lambda!309200 lambda!309188))))

(assert (=> b!5721563 true))

(assert (=> b!5721563 true))

(declare-fun bs!1337636 () Bool)

(declare-fun b!5721566 () Bool)

(assert (= bs!1337636 (and b!5721566 d!1804866)))

(declare-fun lambda!309201 () Int)

(assert (=> bs!1337636 (not (= lambda!309201 lambda!309187))))

(declare-fun bs!1337637 () Bool)

(assert (= bs!1337637 (and b!5721566 b!5720869)))

(assert (=> bs!1337637 (not (= lambda!309201 lambda!309135))))

(assert (=> bs!1337637 (= lambda!309201 lambda!309136)))

(declare-fun bs!1337638 () Bool)

(assert (= bs!1337638 (and b!5721566 b!5721563)))

(assert (=> bs!1337638 (not (= lambda!309201 lambda!309200))))

(declare-fun bs!1337639 () Bool)

(assert (= bs!1337639 (and b!5721566 d!1804860)))

(assert (=> bs!1337639 (not (= lambda!309201 lambda!309182))))

(assert (=> bs!1337636 (= lambda!309201 lambda!309188)))

(assert (=> b!5721566 true))

(assert (=> b!5721566 true))

(declare-fun b!5721558 () Bool)

(declare-fun e!3518330 () Bool)

(declare-fun call!437152 () Bool)

(assert (=> b!5721558 (= e!3518330 call!437152)))

(declare-fun b!5721559 () Bool)

(declare-fun res!2415554 () Bool)

(declare-fun e!3518334 () Bool)

(assert (=> b!5721559 (=> res!2415554 e!3518334)))

(assert (=> b!5721559 (= res!2415554 call!437152)))

(declare-fun e!3518332 () Bool)

(assert (=> b!5721559 (= e!3518332 e!3518334)))

(declare-fun b!5721560 () Bool)

(declare-fun e!3518331 () Bool)

(assert (=> b!5721560 (= e!3518331 (= s!2326 (Cons!63328 (c!1008905 r!7292) Nil!63328)))))

(declare-fun call!437151 () Bool)

(declare-fun c!1009114 () Bool)

(declare-fun bm!437146 () Bool)

(assert (=> bm!437146 (= call!437151 (Exists!2817 (ite c!1009114 lambda!309200 lambda!309201)))))

(declare-fun b!5721561 () Bool)

(declare-fun e!3518329 () Bool)

(assert (=> b!5721561 (= e!3518330 e!3518329)))

(declare-fun res!2415553 () Bool)

(assert (=> b!5721561 (= res!2415553 (not ((_ is EmptyLang!15717) r!7292)))))

(assert (=> b!5721561 (=> (not res!2415553) (not e!3518329))))

(declare-fun b!5721562 () Bool)

(declare-fun c!1009112 () Bool)

(assert (=> b!5721562 (= c!1009112 ((_ is Union!15717) r!7292))))

(declare-fun e!3518328 () Bool)

(assert (=> b!5721562 (= e!3518331 e!3518328)))

(declare-fun d!1804916 () Bool)

(declare-fun c!1009113 () Bool)

(assert (=> d!1804916 (= c!1009113 ((_ is EmptyExpr!15717) r!7292))))

(assert (=> d!1804916 (= (matchRSpec!2820 r!7292 s!2326) e!3518330)))

(assert (=> b!5721563 (= e!3518334 call!437151)))

(declare-fun b!5721564 () Bool)

(declare-fun c!1009115 () Bool)

(assert (=> b!5721564 (= c!1009115 ((_ is ElementMatch!15717) r!7292))))

(assert (=> b!5721564 (= e!3518329 e!3518331)))

(declare-fun b!5721565 () Bool)

(declare-fun e!3518333 () Bool)

(assert (=> b!5721565 (= e!3518328 e!3518333)))

(declare-fun res!2415552 () Bool)

(assert (=> b!5721565 (= res!2415552 (matchRSpec!2820 (regOne!31947 r!7292) s!2326))))

(assert (=> b!5721565 (=> res!2415552 e!3518333)))

(assert (=> b!5721566 (= e!3518332 call!437151)))

(declare-fun b!5721567 () Bool)

(assert (=> b!5721567 (= e!3518333 (matchRSpec!2820 (regTwo!31947 r!7292) s!2326))))

(declare-fun b!5721568 () Bool)

(assert (=> b!5721568 (= e!3518328 e!3518332)))

(assert (=> b!5721568 (= c!1009114 ((_ is Star!15717) r!7292))))

(declare-fun bm!437147 () Bool)

(assert (=> bm!437147 (= call!437152 (isEmpty!35204 s!2326))))

(assert (= (and d!1804916 c!1009113) b!5721558))

(assert (= (and d!1804916 (not c!1009113)) b!5721561))

(assert (= (and b!5721561 res!2415553) b!5721564))

(assert (= (and b!5721564 c!1009115) b!5721560))

(assert (= (and b!5721564 (not c!1009115)) b!5721562))

(assert (= (and b!5721562 c!1009112) b!5721565))

(assert (= (and b!5721562 (not c!1009112)) b!5721568))

(assert (= (and b!5721565 (not res!2415552)) b!5721567))

(assert (= (and b!5721568 c!1009114) b!5721559))

(assert (= (and b!5721568 (not c!1009114)) b!5721566))

(assert (= (and b!5721559 (not res!2415554)) b!5721563))

(assert (= (or b!5721563 b!5721566) bm!437146))

(assert (= (or b!5721558 b!5721559) bm!437147))

(declare-fun m!6674726 () Bool)

(assert (=> bm!437146 m!6674726))

(declare-fun m!6674728 () Bool)

(assert (=> b!5721565 m!6674728))

(declare-fun m!6674730 () Bool)

(assert (=> b!5721567 m!6674730))

(assert (=> bm!437147 m!6674630))

(assert (=> b!5720840 d!1804916))

(declare-fun b!5721597 () Bool)

(declare-fun e!3518353 () Bool)

(declare-fun derivativeStep!4520 (Regex!15717 C!31704) Regex!15717)

(assert (=> b!5721597 (= e!3518353 (matchR!7902 (derivativeStep!4520 r!7292 (head!12114 s!2326)) (tail!11209 s!2326)))))

(declare-fun b!5721598 () Bool)

(declare-fun e!3518351 () Bool)

(assert (=> b!5721598 (= e!3518351 (= (head!12114 s!2326) (c!1008905 r!7292)))))

(declare-fun b!5721599 () Bool)

(declare-fun res!2415573 () Bool)

(assert (=> b!5721599 (=> (not res!2415573) (not e!3518351))))

(assert (=> b!5721599 (= res!2415573 (isEmpty!35204 (tail!11209 s!2326)))))

(declare-fun b!5721600 () Bool)

(declare-fun res!2415577 () Bool)

(declare-fun e!3518354 () Bool)

(assert (=> b!5721600 (=> res!2415577 e!3518354)))

(assert (=> b!5721600 (= res!2415577 e!3518351)))

(declare-fun res!2415574 () Bool)

(assert (=> b!5721600 (=> (not res!2415574) (not e!3518351))))

(declare-fun lt!2278193 () Bool)

(assert (=> b!5721600 (= res!2415574 lt!2278193)))

(declare-fun b!5721601 () Bool)

(declare-fun res!2415575 () Bool)

(assert (=> b!5721601 (=> res!2415575 e!3518354)))

(assert (=> b!5721601 (= res!2415575 (not ((_ is ElementMatch!15717) r!7292)))))

(declare-fun e!3518352 () Bool)

(assert (=> b!5721601 (= e!3518352 e!3518354)))

(declare-fun b!5721602 () Bool)

(declare-fun e!3518349 () Bool)

(declare-fun e!3518350 () Bool)

(assert (=> b!5721602 (= e!3518349 e!3518350)))

(declare-fun res!2415578 () Bool)

(assert (=> b!5721602 (=> res!2415578 e!3518350)))

(declare-fun call!437155 () Bool)

(assert (=> b!5721602 (= res!2415578 call!437155)))

(declare-fun b!5721603 () Bool)

(assert (=> b!5721603 (= e!3518354 e!3518349)))

(declare-fun res!2415571 () Bool)

(assert (=> b!5721603 (=> (not res!2415571) (not e!3518349))))

(assert (=> b!5721603 (= res!2415571 (not lt!2278193))))

(declare-fun d!1804918 () Bool)

(declare-fun e!3518355 () Bool)

(assert (=> d!1804918 e!3518355))

(declare-fun c!1009123 () Bool)

(assert (=> d!1804918 (= c!1009123 ((_ is EmptyExpr!15717) r!7292))))

(assert (=> d!1804918 (= lt!2278193 e!3518353)))

(declare-fun c!1009124 () Bool)

(assert (=> d!1804918 (= c!1009124 (isEmpty!35204 s!2326))))

(assert (=> d!1804918 (validRegex!7453 r!7292)))

(assert (=> d!1804918 (= (matchR!7902 r!7292 s!2326) lt!2278193)))

(declare-fun b!5721604 () Bool)

(assert (=> b!5721604 (= e!3518355 e!3518352)))

(declare-fun c!1009122 () Bool)

(assert (=> b!5721604 (= c!1009122 ((_ is EmptyLang!15717) r!7292))))

(declare-fun b!5721605 () Bool)

(assert (=> b!5721605 (= e!3518350 (not (= (head!12114 s!2326) (c!1008905 r!7292))))))

(declare-fun b!5721606 () Bool)

(declare-fun res!2415572 () Bool)

(assert (=> b!5721606 (=> res!2415572 e!3518350)))

(assert (=> b!5721606 (= res!2415572 (not (isEmpty!35204 (tail!11209 s!2326))))))

(declare-fun b!5721607 () Bool)

(assert (=> b!5721607 (= e!3518352 (not lt!2278193))))

(declare-fun b!5721608 () Bool)

(declare-fun res!2415576 () Bool)

(assert (=> b!5721608 (=> (not res!2415576) (not e!3518351))))

(assert (=> b!5721608 (= res!2415576 (not call!437155))))

(declare-fun b!5721609 () Bool)

(assert (=> b!5721609 (= e!3518355 (= lt!2278193 call!437155))))

(declare-fun bm!437150 () Bool)

(assert (=> bm!437150 (= call!437155 (isEmpty!35204 s!2326))))

(declare-fun b!5721610 () Bool)

(assert (=> b!5721610 (= e!3518353 (nullable!5749 r!7292))))

(assert (= (and d!1804918 c!1009124) b!5721610))

(assert (= (and d!1804918 (not c!1009124)) b!5721597))

(assert (= (and d!1804918 c!1009123) b!5721609))

(assert (= (and d!1804918 (not c!1009123)) b!5721604))

(assert (= (and b!5721604 c!1009122) b!5721607))

(assert (= (and b!5721604 (not c!1009122)) b!5721601))

(assert (= (and b!5721601 (not res!2415575)) b!5721600))

(assert (= (and b!5721600 res!2415574) b!5721608))

(assert (= (and b!5721608 res!2415576) b!5721599))

(assert (= (and b!5721599 res!2415573) b!5721598))

(assert (= (and b!5721600 (not res!2415577)) b!5721603))

(assert (= (and b!5721603 res!2415571) b!5721602))

(assert (= (and b!5721602 (not res!2415578)) b!5721606))

(assert (= (and b!5721606 (not res!2415572)) b!5721605))

(assert (= (or b!5721609 b!5721608 b!5721602) bm!437150))

(assert (=> b!5721605 m!6674634))

(assert (=> b!5721599 m!6674638))

(assert (=> b!5721599 m!6674638))

(declare-fun m!6674732 () Bool)

(assert (=> b!5721599 m!6674732))

(assert (=> b!5721606 m!6674638))

(assert (=> b!5721606 m!6674638))

(assert (=> b!5721606 m!6674732))

(assert (=> bm!437150 m!6674630))

(assert (=> d!1804918 m!6674630))

(assert (=> d!1804918 m!6674156))

(assert (=> b!5721597 m!6674634))

(assert (=> b!5721597 m!6674634))

(declare-fun m!6674734 () Bool)

(assert (=> b!5721597 m!6674734))

(assert (=> b!5721597 m!6674638))

(assert (=> b!5721597 m!6674734))

(assert (=> b!5721597 m!6674638))

(declare-fun m!6674736 () Bool)

(assert (=> b!5721597 m!6674736))

(assert (=> b!5721598 m!6674634))

(declare-fun m!6674738 () Bool)

(assert (=> b!5721610 m!6674738))

(assert (=> b!5720840 d!1804918))

(declare-fun d!1804920 () Bool)

(assert (=> d!1804920 (= (matchR!7902 r!7292 s!2326) (matchRSpec!2820 r!7292 s!2326))))

(declare-fun lt!2278196 () Unit!156400)

(declare-fun choose!43264 (Regex!15717 List!63452) Unit!156400)

(assert (=> d!1804920 (= lt!2278196 (choose!43264 r!7292 s!2326))))

(assert (=> d!1804920 (validRegex!7453 r!7292)))

(assert (=> d!1804920 (= (mainMatchTheorem!2820 r!7292 s!2326) lt!2278196)))

(declare-fun bs!1337640 () Bool)

(assert (= bs!1337640 d!1804920))

(assert (=> bs!1337640 m!6674166))

(assert (=> bs!1337640 m!6674164))

(declare-fun m!6674740 () Bool)

(assert (=> bs!1337640 m!6674740))

(assert (=> bs!1337640 m!6674156))

(assert (=> b!5720840 d!1804920))

(assert (=> b!5720860 d!1804774))

(declare-fun d!1804922 () Bool)

(assert (=> d!1804922 (= (isEmpty!35201 (t!376775 zl!343)) ((_ is Nil!63327) (t!376775 zl!343)))))

(assert (=> b!5720841 d!1804922))

(declare-fun b!5721611 () Bool)

(declare-fun e!3518360 () Bool)

(assert (=> b!5721611 (= e!3518360 (matchR!7902 (derivativeStep!4520 lt!2278086 (head!12114 s!2326)) (tail!11209 s!2326)))))

(declare-fun b!5721612 () Bool)

(declare-fun e!3518358 () Bool)

(assert (=> b!5721612 (= e!3518358 (= (head!12114 s!2326) (c!1008905 lt!2278086)))))

(declare-fun b!5721613 () Bool)

(declare-fun res!2415581 () Bool)

(assert (=> b!5721613 (=> (not res!2415581) (not e!3518358))))

(assert (=> b!5721613 (= res!2415581 (isEmpty!35204 (tail!11209 s!2326)))))

(declare-fun b!5721614 () Bool)

(declare-fun res!2415585 () Bool)

(declare-fun e!3518361 () Bool)

(assert (=> b!5721614 (=> res!2415585 e!3518361)))

(assert (=> b!5721614 (= res!2415585 e!3518358)))

(declare-fun res!2415582 () Bool)

(assert (=> b!5721614 (=> (not res!2415582) (not e!3518358))))

(declare-fun lt!2278197 () Bool)

(assert (=> b!5721614 (= res!2415582 lt!2278197)))

(declare-fun b!5721615 () Bool)

(declare-fun res!2415583 () Bool)

(assert (=> b!5721615 (=> res!2415583 e!3518361)))

(assert (=> b!5721615 (= res!2415583 (not ((_ is ElementMatch!15717) lt!2278086)))))

(declare-fun e!3518359 () Bool)

(assert (=> b!5721615 (= e!3518359 e!3518361)))

(declare-fun b!5721616 () Bool)

(declare-fun e!3518356 () Bool)

(declare-fun e!3518357 () Bool)

(assert (=> b!5721616 (= e!3518356 e!3518357)))

(declare-fun res!2415586 () Bool)

(assert (=> b!5721616 (=> res!2415586 e!3518357)))

(declare-fun call!437156 () Bool)

(assert (=> b!5721616 (= res!2415586 call!437156)))

(declare-fun b!5721617 () Bool)

(assert (=> b!5721617 (= e!3518361 e!3518356)))

(declare-fun res!2415579 () Bool)

(assert (=> b!5721617 (=> (not res!2415579) (not e!3518356))))

(assert (=> b!5721617 (= res!2415579 (not lt!2278197))))

(declare-fun d!1804924 () Bool)

(declare-fun e!3518362 () Bool)

(assert (=> d!1804924 e!3518362))

(declare-fun c!1009126 () Bool)

(assert (=> d!1804924 (= c!1009126 ((_ is EmptyExpr!15717) lt!2278086))))

(assert (=> d!1804924 (= lt!2278197 e!3518360)))

(declare-fun c!1009127 () Bool)

(assert (=> d!1804924 (= c!1009127 (isEmpty!35204 s!2326))))

(assert (=> d!1804924 (validRegex!7453 lt!2278086)))

(assert (=> d!1804924 (= (matchR!7902 lt!2278086 s!2326) lt!2278197)))

(declare-fun b!5721618 () Bool)

(assert (=> b!5721618 (= e!3518362 e!3518359)))

(declare-fun c!1009125 () Bool)

(assert (=> b!5721618 (= c!1009125 ((_ is EmptyLang!15717) lt!2278086))))

(declare-fun b!5721619 () Bool)

(assert (=> b!5721619 (= e!3518357 (not (= (head!12114 s!2326) (c!1008905 lt!2278086))))))

(declare-fun b!5721620 () Bool)

(declare-fun res!2415580 () Bool)

(assert (=> b!5721620 (=> res!2415580 e!3518357)))

(assert (=> b!5721620 (= res!2415580 (not (isEmpty!35204 (tail!11209 s!2326))))))

(declare-fun b!5721621 () Bool)

(assert (=> b!5721621 (= e!3518359 (not lt!2278197))))

(declare-fun b!5721622 () Bool)

(declare-fun res!2415584 () Bool)

(assert (=> b!5721622 (=> (not res!2415584) (not e!3518358))))

(assert (=> b!5721622 (= res!2415584 (not call!437156))))

(declare-fun b!5721623 () Bool)

(assert (=> b!5721623 (= e!3518362 (= lt!2278197 call!437156))))

(declare-fun bm!437151 () Bool)

(assert (=> bm!437151 (= call!437156 (isEmpty!35204 s!2326))))

(declare-fun b!5721624 () Bool)

(assert (=> b!5721624 (= e!3518360 (nullable!5749 lt!2278086))))

(assert (= (and d!1804924 c!1009127) b!5721624))

(assert (= (and d!1804924 (not c!1009127)) b!5721611))

(assert (= (and d!1804924 c!1009126) b!5721623))

(assert (= (and d!1804924 (not c!1009126)) b!5721618))

(assert (= (and b!5721618 c!1009125) b!5721621))

(assert (= (and b!5721618 (not c!1009125)) b!5721615))

(assert (= (and b!5721615 (not res!2415583)) b!5721614))

(assert (= (and b!5721614 res!2415582) b!5721622))

(assert (= (and b!5721622 res!2415584) b!5721613))

(assert (= (and b!5721613 res!2415581) b!5721612))

(assert (= (and b!5721614 (not res!2415585)) b!5721617))

(assert (= (and b!5721617 res!2415579) b!5721616))

(assert (= (and b!5721616 (not res!2415586)) b!5721620))

(assert (= (and b!5721620 (not res!2415580)) b!5721619))

(assert (= (or b!5721623 b!5721622 b!5721616) bm!437151))

(assert (=> b!5721619 m!6674634))

(assert (=> b!5721613 m!6674638))

(assert (=> b!5721613 m!6674638))

(assert (=> b!5721613 m!6674732))

(assert (=> b!5721620 m!6674638))

(assert (=> b!5721620 m!6674638))

(assert (=> b!5721620 m!6674732))

(assert (=> bm!437151 m!6674630))

(assert (=> d!1804924 m!6674630))

(declare-fun m!6674742 () Bool)

(assert (=> d!1804924 m!6674742))

(assert (=> b!5721611 m!6674634))

(assert (=> b!5721611 m!6674634))

(declare-fun m!6674744 () Bool)

(assert (=> b!5721611 m!6674744))

(assert (=> b!5721611 m!6674638))

(assert (=> b!5721611 m!6674744))

(assert (=> b!5721611 m!6674638))

(declare-fun m!6674746 () Bool)

(assert (=> b!5721611 m!6674746))

(assert (=> b!5721612 m!6674634))

(declare-fun m!6674748 () Bool)

(assert (=> b!5721624 m!6674748))

(assert (=> b!5720842 d!1804924))

(declare-fun bs!1337641 () Bool)

(declare-fun b!5721630 () Bool)

(assert (= bs!1337641 (and b!5721630 d!1804866)))

(declare-fun lambda!309202 () Int)

(assert (=> bs!1337641 (not (= lambda!309202 lambda!309187))))

(declare-fun bs!1337642 () Bool)

(assert (= bs!1337642 (and b!5721630 b!5720869)))

(assert (=> bs!1337642 (not (= lambda!309202 lambda!309135))))

(assert (=> bs!1337642 (not (= lambda!309202 lambda!309136))))

(declare-fun bs!1337643 () Bool)

(assert (= bs!1337643 (and b!5721630 b!5721566)))

(assert (=> bs!1337643 (not (= lambda!309202 lambda!309201))))

(declare-fun bs!1337644 () Bool)

(assert (= bs!1337644 (and b!5721630 b!5721563)))

(assert (=> bs!1337644 (= (and (= (reg!16046 lt!2278086) (reg!16046 r!7292)) (= lt!2278086 r!7292)) (= lambda!309202 lambda!309200))))

(declare-fun bs!1337645 () Bool)

(assert (= bs!1337645 (and b!5721630 d!1804860)))

(assert (=> bs!1337645 (not (= lambda!309202 lambda!309182))))

(assert (=> bs!1337641 (not (= lambda!309202 lambda!309188))))

(assert (=> b!5721630 true))

(assert (=> b!5721630 true))

(declare-fun bs!1337646 () Bool)

(declare-fun b!5721633 () Bool)

(assert (= bs!1337646 (and b!5721633 d!1804866)))

(declare-fun lambda!309203 () Int)

(assert (=> bs!1337646 (not (= lambda!309203 lambda!309187))))

(declare-fun bs!1337647 () Bool)

(assert (= bs!1337647 (and b!5721633 b!5720869)))

(assert (=> bs!1337647 (not (= lambda!309203 lambda!309135))))

(declare-fun bs!1337648 () Bool)

(assert (= bs!1337648 (and b!5721633 b!5721566)))

(assert (=> bs!1337648 (= (and (= (regOne!31946 lt!2278086) (regOne!31946 r!7292)) (= (regTwo!31946 lt!2278086) (regTwo!31946 r!7292))) (= lambda!309203 lambda!309201))))

(declare-fun bs!1337649 () Bool)

(assert (= bs!1337649 (and b!5721633 b!5721563)))

(assert (=> bs!1337649 (not (= lambda!309203 lambda!309200))))

(declare-fun bs!1337650 () Bool)

(assert (= bs!1337650 (and b!5721633 d!1804860)))

(assert (=> bs!1337650 (not (= lambda!309203 lambda!309182))))

(assert (=> bs!1337646 (= (and (= (regOne!31946 lt!2278086) (regOne!31946 r!7292)) (= (regTwo!31946 lt!2278086) (regTwo!31946 r!7292))) (= lambda!309203 lambda!309188))))

(declare-fun bs!1337651 () Bool)

(assert (= bs!1337651 (and b!5721633 b!5721630)))

(assert (=> bs!1337651 (not (= lambda!309203 lambda!309202))))

(assert (=> bs!1337647 (= (and (= (regOne!31946 lt!2278086) (regOne!31946 r!7292)) (= (regTwo!31946 lt!2278086) (regTwo!31946 r!7292))) (= lambda!309203 lambda!309136))))

(assert (=> b!5721633 true))

(assert (=> b!5721633 true))

(declare-fun b!5721625 () Bool)

(declare-fun e!3518365 () Bool)

(declare-fun call!437158 () Bool)

(assert (=> b!5721625 (= e!3518365 call!437158)))

(declare-fun b!5721626 () Bool)

(declare-fun res!2415589 () Bool)

(declare-fun e!3518369 () Bool)

(assert (=> b!5721626 (=> res!2415589 e!3518369)))

(assert (=> b!5721626 (= res!2415589 call!437158)))

(declare-fun e!3518367 () Bool)

(assert (=> b!5721626 (= e!3518367 e!3518369)))

(declare-fun b!5721627 () Bool)

(declare-fun e!3518366 () Bool)

(assert (=> b!5721627 (= e!3518366 (= s!2326 (Cons!63328 (c!1008905 lt!2278086) Nil!63328)))))

(declare-fun c!1009130 () Bool)

(declare-fun bm!437152 () Bool)

(declare-fun call!437157 () Bool)

(assert (=> bm!437152 (= call!437157 (Exists!2817 (ite c!1009130 lambda!309202 lambda!309203)))))

(declare-fun b!5721628 () Bool)

(declare-fun e!3518364 () Bool)

(assert (=> b!5721628 (= e!3518365 e!3518364)))

(declare-fun res!2415588 () Bool)

(assert (=> b!5721628 (= res!2415588 (not ((_ is EmptyLang!15717) lt!2278086)))))

(assert (=> b!5721628 (=> (not res!2415588) (not e!3518364))))

(declare-fun b!5721629 () Bool)

(declare-fun c!1009128 () Bool)

(assert (=> b!5721629 (= c!1009128 ((_ is Union!15717) lt!2278086))))

(declare-fun e!3518363 () Bool)

(assert (=> b!5721629 (= e!3518366 e!3518363)))

(declare-fun d!1804926 () Bool)

(declare-fun c!1009129 () Bool)

(assert (=> d!1804926 (= c!1009129 ((_ is EmptyExpr!15717) lt!2278086))))

(assert (=> d!1804926 (= (matchRSpec!2820 lt!2278086 s!2326) e!3518365)))

(assert (=> b!5721630 (= e!3518369 call!437157)))

(declare-fun b!5721631 () Bool)

(declare-fun c!1009131 () Bool)

(assert (=> b!5721631 (= c!1009131 ((_ is ElementMatch!15717) lt!2278086))))

(assert (=> b!5721631 (= e!3518364 e!3518366)))

(declare-fun b!5721632 () Bool)

(declare-fun e!3518368 () Bool)

(assert (=> b!5721632 (= e!3518363 e!3518368)))

(declare-fun res!2415587 () Bool)

(assert (=> b!5721632 (= res!2415587 (matchRSpec!2820 (regOne!31947 lt!2278086) s!2326))))

(assert (=> b!5721632 (=> res!2415587 e!3518368)))

(assert (=> b!5721633 (= e!3518367 call!437157)))

(declare-fun b!5721634 () Bool)

(assert (=> b!5721634 (= e!3518368 (matchRSpec!2820 (regTwo!31947 lt!2278086) s!2326))))

(declare-fun b!5721635 () Bool)

(assert (=> b!5721635 (= e!3518363 e!3518367)))

(assert (=> b!5721635 (= c!1009130 ((_ is Star!15717) lt!2278086))))

(declare-fun bm!437153 () Bool)

(assert (=> bm!437153 (= call!437158 (isEmpty!35204 s!2326))))

(assert (= (and d!1804926 c!1009129) b!5721625))

(assert (= (and d!1804926 (not c!1009129)) b!5721628))

(assert (= (and b!5721628 res!2415588) b!5721631))

(assert (= (and b!5721631 c!1009131) b!5721627))

(assert (= (and b!5721631 (not c!1009131)) b!5721629))

(assert (= (and b!5721629 c!1009128) b!5721632))

(assert (= (and b!5721629 (not c!1009128)) b!5721635))

(assert (= (and b!5721632 (not res!2415587)) b!5721634))

(assert (= (and b!5721635 c!1009130) b!5721626))

(assert (= (and b!5721635 (not c!1009130)) b!5721633))

(assert (= (and b!5721626 (not res!2415589)) b!5721630))

(assert (= (or b!5721630 b!5721633) bm!437152))

(assert (= (or b!5721625 b!5721626) bm!437153))

(declare-fun m!6674750 () Bool)

(assert (=> bm!437152 m!6674750))

(declare-fun m!6674752 () Bool)

(assert (=> b!5721632 m!6674752))

(declare-fun m!6674754 () Bool)

(assert (=> b!5721634 m!6674754))

(assert (=> bm!437153 m!6674630))

(assert (=> b!5720842 d!1804926))

(declare-fun d!1804928 () Bool)

(assert (=> d!1804928 (= (matchR!7902 lt!2278086 s!2326) (matchRSpec!2820 lt!2278086 s!2326))))

(declare-fun lt!2278198 () Unit!156400)

(assert (=> d!1804928 (= lt!2278198 (choose!43264 lt!2278086 s!2326))))

(assert (=> d!1804928 (validRegex!7453 lt!2278086)))

(assert (=> d!1804928 (= (mainMatchTheorem!2820 lt!2278086 s!2326) lt!2278198)))

(declare-fun bs!1337652 () Bool)

(assert (= bs!1337652 d!1804928))

(assert (=> bs!1337652 m!6674142))

(assert (=> bs!1337652 m!6674144))

(declare-fun m!6674756 () Bool)

(assert (=> bs!1337652 m!6674756))

(assert (=> bs!1337652 m!6674742))

(assert (=> b!5720842 d!1804928))

(declare-fun b!5721649 () Bool)

(declare-fun e!3518372 () Bool)

(declare-fun tp!1584501 () Bool)

(declare-fun tp!1584500 () Bool)

(assert (=> b!5721649 (= e!3518372 (and tp!1584501 tp!1584500))))

(assert (=> b!5720847 (= tp!1584426 e!3518372)))

(declare-fun b!5721646 () Bool)

(assert (=> b!5721646 (= e!3518372 tp_is_empty!40687)))

(declare-fun b!5721648 () Bool)

(declare-fun tp!1584503 () Bool)

(assert (=> b!5721648 (= e!3518372 tp!1584503)))

(declare-fun b!5721647 () Bool)

(declare-fun tp!1584502 () Bool)

(declare-fun tp!1584499 () Bool)

(assert (=> b!5721647 (= e!3518372 (and tp!1584502 tp!1584499))))

(assert (= (and b!5720847 ((_ is ElementMatch!15717) (reg!16046 r!7292))) b!5721646))

(assert (= (and b!5720847 ((_ is Concat!24562) (reg!16046 r!7292))) b!5721647))

(assert (= (and b!5720847 ((_ is Star!15717) (reg!16046 r!7292))) b!5721648))

(assert (= (and b!5720847 ((_ is Union!15717) (reg!16046 r!7292))) b!5721649))

(declare-fun b!5721654 () Bool)

(declare-fun e!3518375 () Bool)

(declare-fun tp!1584506 () Bool)

(assert (=> b!5721654 (= e!3518375 (and tp_is_empty!40687 tp!1584506))))

(assert (=> b!5720863 (= tp!1584422 e!3518375)))

(assert (= (and b!5720863 ((_ is Cons!63328) (t!376776 s!2326))) b!5721654))

(declare-fun b!5721662 () Bool)

(declare-fun e!3518381 () Bool)

(declare-fun tp!1584511 () Bool)

(assert (=> b!5721662 (= e!3518381 tp!1584511)))

(declare-fun e!3518380 () Bool)

(declare-fun tp!1584512 () Bool)

(declare-fun b!5721661 () Bool)

(assert (=> b!5721661 (= e!3518380 (and (inv!82539 (h!69775 (t!376775 zl!343))) e!3518381 tp!1584512))))

(assert (=> b!5720849 (= tp!1584425 e!3518380)))

(assert (= b!5721661 b!5721662))

(assert (= (and b!5720849 ((_ is Cons!63327) (t!376775 zl!343))) b!5721661))

(declare-fun m!6674758 () Bool)

(assert (=> b!5721661 m!6674758))

(declare-fun b!5721666 () Bool)

(declare-fun e!3518382 () Bool)

(declare-fun tp!1584515 () Bool)

(declare-fun tp!1584514 () Bool)

(assert (=> b!5721666 (= e!3518382 (and tp!1584515 tp!1584514))))

(assert (=> b!5720854 (= tp!1584428 e!3518382)))

(declare-fun b!5721663 () Bool)

(assert (=> b!5721663 (= e!3518382 tp_is_empty!40687)))

(declare-fun b!5721665 () Bool)

(declare-fun tp!1584517 () Bool)

(assert (=> b!5721665 (= e!3518382 tp!1584517)))

(declare-fun b!5721664 () Bool)

(declare-fun tp!1584516 () Bool)

(declare-fun tp!1584513 () Bool)

(assert (=> b!5721664 (= e!3518382 (and tp!1584516 tp!1584513))))

(assert (= (and b!5720854 ((_ is ElementMatch!15717) (regOne!31947 r!7292))) b!5721663))

(assert (= (and b!5720854 ((_ is Concat!24562) (regOne!31947 r!7292))) b!5721664))

(assert (= (and b!5720854 ((_ is Star!15717) (regOne!31947 r!7292))) b!5721665))

(assert (= (and b!5720854 ((_ is Union!15717) (regOne!31947 r!7292))) b!5721666))

(declare-fun b!5721670 () Bool)

(declare-fun e!3518383 () Bool)

(declare-fun tp!1584520 () Bool)

(declare-fun tp!1584519 () Bool)

(assert (=> b!5721670 (= e!3518383 (and tp!1584520 tp!1584519))))

(assert (=> b!5720854 (= tp!1584424 e!3518383)))

(declare-fun b!5721667 () Bool)

(assert (=> b!5721667 (= e!3518383 tp_is_empty!40687)))

(declare-fun b!5721669 () Bool)

(declare-fun tp!1584522 () Bool)

(assert (=> b!5721669 (= e!3518383 tp!1584522)))

(declare-fun b!5721668 () Bool)

(declare-fun tp!1584521 () Bool)

(declare-fun tp!1584518 () Bool)

(assert (=> b!5721668 (= e!3518383 (and tp!1584521 tp!1584518))))

(assert (= (and b!5720854 ((_ is ElementMatch!15717) (regTwo!31947 r!7292))) b!5721667))

(assert (= (and b!5720854 ((_ is Concat!24562) (regTwo!31947 r!7292))) b!5721668))

(assert (= (and b!5720854 ((_ is Star!15717) (regTwo!31947 r!7292))) b!5721669))

(assert (= (and b!5720854 ((_ is Union!15717) (regTwo!31947 r!7292))) b!5721670))

(declare-fun b!5721675 () Bool)

(declare-fun e!3518386 () Bool)

(declare-fun tp!1584527 () Bool)

(declare-fun tp!1584528 () Bool)

(assert (=> b!5721675 (= e!3518386 (and tp!1584527 tp!1584528))))

(assert (=> b!5720855 (= tp!1584429 e!3518386)))

(assert (= (and b!5720855 ((_ is Cons!63326) (exprs!5601 (h!69775 zl!343)))) b!5721675))

(declare-fun b!5721676 () Bool)

(declare-fun e!3518387 () Bool)

(declare-fun tp!1584529 () Bool)

(declare-fun tp!1584530 () Bool)

(assert (=> b!5721676 (= e!3518387 (and tp!1584529 tp!1584530))))

(assert (=> b!5720866 (= tp!1584421 e!3518387)))

(assert (= (and b!5720866 ((_ is Cons!63326) (exprs!5601 setElem!38331))) b!5721676))

(declare-fun condSetEmpty!38337 () Bool)

(assert (=> setNonEmpty!38331 (= condSetEmpty!38337 (= setRest!38331 ((as const (Array Context!10202 Bool)) false)))))

(declare-fun setRes!38337 () Bool)

(assert (=> setNonEmpty!38331 (= tp!1584430 setRes!38337)))

(declare-fun setIsEmpty!38337 () Bool)

(assert (=> setIsEmpty!38337 setRes!38337))

(declare-fun e!3518390 () Bool)

(declare-fun tp!1584535 () Bool)

(declare-fun setNonEmpty!38337 () Bool)

(declare-fun setElem!38337 () Context!10202)

(assert (=> setNonEmpty!38337 (= setRes!38337 (and tp!1584535 (inv!82539 setElem!38337) e!3518390))))

(declare-fun setRest!38337 () (InoxSet Context!10202))

(assert (=> setNonEmpty!38337 (= setRest!38331 ((_ map or) (store ((as const (Array Context!10202 Bool)) false) setElem!38337 true) setRest!38337))))

(declare-fun b!5721681 () Bool)

(declare-fun tp!1584536 () Bool)

(assert (=> b!5721681 (= e!3518390 tp!1584536)))

(assert (= (and setNonEmpty!38331 condSetEmpty!38337) setIsEmpty!38337))

(assert (= (and setNonEmpty!38331 (not condSetEmpty!38337)) setNonEmpty!38337))

(assert (= setNonEmpty!38337 b!5721681))

(declare-fun m!6674760 () Bool)

(assert (=> setNonEmpty!38337 m!6674760))

(declare-fun b!5721685 () Bool)

(declare-fun e!3518391 () Bool)

(declare-fun tp!1584539 () Bool)

(declare-fun tp!1584538 () Bool)

(assert (=> b!5721685 (= e!3518391 (and tp!1584539 tp!1584538))))

(assert (=> b!5720861 (= tp!1584427 e!3518391)))

(declare-fun b!5721682 () Bool)

(assert (=> b!5721682 (= e!3518391 tp_is_empty!40687)))

(declare-fun b!5721684 () Bool)

(declare-fun tp!1584541 () Bool)

(assert (=> b!5721684 (= e!3518391 tp!1584541)))

(declare-fun b!5721683 () Bool)

(declare-fun tp!1584540 () Bool)

(declare-fun tp!1584537 () Bool)

(assert (=> b!5721683 (= e!3518391 (and tp!1584540 tp!1584537))))

(assert (= (and b!5720861 ((_ is ElementMatch!15717) (regOne!31946 r!7292))) b!5721682))

(assert (= (and b!5720861 ((_ is Concat!24562) (regOne!31946 r!7292))) b!5721683))

(assert (= (and b!5720861 ((_ is Star!15717) (regOne!31946 r!7292))) b!5721684))

(assert (= (and b!5720861 ((_ is Union!15717) (regOne!31946 r!7292))) b!5721685))

(declare-fun b!5721689 () Bool)

(declare-fun e!3518392 () Bool)

(declare-fun tp!1584544 () Bool)

(declare-fun tp!1584543 () Bool)

(assert (=> b!5721689 (= e!3518392 (and tp!1584544 tp!1584543))))

(assert (=> b!5720861 (= tp!1584423 e!3518392)))

(declare-fun b!5721686 () Bool)

(assert (=> b!5721686 (= e!3518392 tp_is_empty!40687)))

(declare-fun b!5721688 () Bool)

(declare-fun tp!1584546 () Bool)

(assert (=> b!5721688 (= e!3518392 tp!1584546)))

(declare-fun b!5721687 () Bool)

(declare-fun tp!1584545 () Bool)

(declare-fun tp!1584542 () Bool)

(assert (=> b!5721687 (= e!3518392 (and tp!1584545 tp!1584542))))

(assert (= (and b!5720861 ((_ is ElementMatch!15717) (regTwo!31946 r!7292))) b!5721686))

(assert (= (and b!5720861 ((_ is Concat!24562) (regTwo!31946 r!7292))) b!5721687))

(assert (= (and b!5720861 ((_ is Star!15717) (regTwo!31946 r!7292))) b!5721688))

(assert (= (and b!5720861 ((_ is Union!15717) (regTwo!31946 r!7292))) b!5721689))

(declare-fun b_lambda!216191 () Bool)

(assert (= b_lambda!216187 (or b!5720846 b_lambda!216191)))

(declare-fun bs!1337653 () Bool)

(declare-fun d!1804930 () Bool)

(assert (= bs!1337653 (and d!1804930 b!5720846)))

(assert (=> bs!1337653 (= (dynLambda!24780 lambda!309137 lt!2278081) (derivationStepZipperUp!985 lt!2278081 (h!69776 s!2326)))))

(assert (=> bs!1337653 m!6674118))

(assert (=> d!1804900 d!1804930))

(declare-fun b_lambda!216193 () Bool)

(assert (= b_lambda!216189 (or b!5720846 b_lambda!216193)))

(declare-fun bs!1337654 () Bool)

(declare-fun d!1804932 () Bool)

(assert (= bs!1337654 (and d!1804932 b!5720846)))

(assert (=> bs!1337654 (= (dynLambda!24780 lambda!309137 lt!2278097) (derivationStepZipperUp!985 lt!2278097 (h!69776 s!2326)))))

(assert (=> bs!1337654 m!6674132))

(assert (=> d!1804908 d!1804932))

(declare-fun b_lambda!216195 () Bool)

(assert (= b_lambda!216175 (or b!5720846 b_lambda!216195)))

(declare-fun bs!1337655 () Bool)

(declare-fun d!1804934 () Bool)

(assert (= bs!1337655 (and d!1804934 b!5720846)))

(assert (=> bs!1337655 (= (dynLambda!24780 lambda!309137 (h!69775 zl!343)) (derivationStepZipperUp!985 (h!69775 zl!343) (h!69776 s!2326)))))

(assert (=> bs!1337655 m!6674084))

(assert (=> d!1804810 d!1804934))

(declare-fun b_lambda!216197 () Bool)

(assert (= b_lambda!216185 (or b!5720846 b_lambda!216197)))

(declare-fun bs!1337656 () Bool)

(declare-fun d!1804936 () Bool)

(assert (= bs!1337656 (and d!1804936 b!5720846)))

(assert (=> bs!1337656 (= (dynLambda!24780 lambda!309137 lt!2278082) (derivationStepZipperUp!985 lt!2278082 (h!69776 s!2326)))))

(assert (=> bs!1337656 m!6674114))

(assert (=> d!1804888 d!1804936))

(check-sat (not b!5721344) (not bm!437151) (not b!5721163) (not b!5721342) (not b!5721248) (not b!5721341) (not b!5721496) (not bm!437125) (not bm!437100) (not b!5721611) (not d!1804878) (not setNonEmpty!38337) (not bm!437117) (not d!1804826) (not b!5721166) (not bm!437147) (not b!5721446) (not b!5721487) (not bm!437141) (not b!5721666) (not b!5721669) (not d!1804742) (not b!5721482) (not d!1804902) (not b!5721685) (not b!5721675) (not b!5721028) (not b_lambda!216191) (not d!1804858) (not b!5720994) (not bm!437153) (not bm!437139) (not b!5721346) (not b!5721565) (not b!5721000) (not d!1804824) (not d!1804860) (not d!1804890) (not b!5721451) (not b!5721610) (not b!5721632) (not b!5721688) (not bm!437123) (not b!5721665) (not b!5721338) (not b!5720993) (not b!5721090) (not d!1804832) (not b!5721613) (not d!1804924) (not b!5721647) (not b!5721634) (not d!1804782) (not bs!1337653) (not b!5721598) (not b!5721074) (not bm!437130) (not bm!437152) (not b!5721676) (not b!5721620) (not d!1804904) (not d!1804880) (not d!1804888) (not b!5720996) (not b!5721619) (not d!1804786) (not b!5721684) (not d!1804900) (not b_lambda!216193) (not d!1804918) (not d!1804886) (not b!5721158) (not d!1804910) (not b!5720995) (not d!1804866) (not b!5721689) tp_is_empty!40687 (not b!5721002) (not bs!1337655) (not b_lambda!216197) (not b!5721489) (not d!1804894) (not d!1804746) (not d!1804896) (not d!1804810) (not b!5721099) (not b!5721161) (not b!5721687) (not b!5721156) (not b!5721654) (not bs!1337656) (not b!5721484) (not b!5721461) (not d!1804768) (not b!5721681) (not bm!437101) (not b!5721612) (not b!5721567) (not b!5721662) (not b!5721485) (not b!5721076) (not d!1804770) (not d!1804772) (not b!5721042) (not bm!437102) (not d!1804830) (not d!1804914) (not bm!437124) (not d!1804774) (not b!5721448) (not d!1804864) (not b!5721494) (not b!5721449) (not b!5721168) (not d!1804748) (not b!5721491) (not bm!437119) (not b!5721624) (not b!5721447) (not bs!1337654) (not bm!437118) (not d!1804908) (not b!5721075) (not b!5721077) (not b!5721648) (not d!1804920) (not b!5721606) (not b!5721454) (not b!5721524) (not b!5721456) (not bm!437132) (not bm!437146) (not b!5721661) (not b!5720999) (not b!5721664) (not bm!437150) (not b_lambda!216195) (not b!5721345) (not b!5721649) (not b!5721605) (not bm!437131) (not d!1804882) (not b!5721668) (not b!5721670) (not b!5721683) (not b!5721089) (not d!1804876) (not d!1804884) (not b!5721233) (not b!5721450) (not b!5721597) (not b!5721488) (not b!5721459) (not d!1804928) (not b!5721599))
(check-sat)
(get-model)

(declare-fun d!1804938 () Bool)

(assert (=> d!1804938 (= (head!12114 s!2326) (h!69776 s!2326))))

(assert (=> b!5721612 d!1804938))

(declare-fun d!1804940 () Bool)

(assert (=> d!1804940 (= (head!12113 (unfocusZipperList!1145 zl!343)) (h!69774 (unfocusZipperList!1145 zl!343)))))

(assert (=> b!5720999 d!1804940))

(declare-fun d!1804942 () Bool)

(assert (=> d!1804942 (= (nullable!5749 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (nullableFct!1813 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))))))

(declare-fun bs!1337657 () Bool)

(assert (= bs!1337657 d!1804942))

(declare-fun m!6674762 () Bool)

(assert (=> bs!1337657 m!6674762))

(assert (=> b!5721158 d!1804942))

(declare-fun d!1804944 () Bool)

(assert (=> d!1804944 (= (nullable!5749 (h!69774 (exprs!5601 lt!2278073))) (nullableFct!1813 (h!69774 (exprs!5601 lt!2278073))))))

(declare-fun bs!1337658 () Bool)

(assert (= bs!1337658 d!1804944))

(declare-fun m!6674764 () Bool)

(assert (=> bs!1337658 m!6674764))

(assert (=> b!5721163 d!1804944))

(declare-fun d!1804946 () Bool)

(declare-fun lambda!309206 () Int)

(declare-fun exists!2226 ((InoxSet Context!10202) Int) Bool)

(assert (=> d!1804946 (= (nullableZipper!1666 z!1189) (exists!2226 z!1189 lambda!309206))))

(declare-fun bs!1337659 () Bool)

(assert (= bs!1337659 d!1804946))

(declare-fun m!6674766 () Bool)

(assert (=> bs!1337659 m!6674766))

(assert (=> b!5721450 d!1804946))

(declare-fun bs!1337660 () Bool)

(declare-fun d!1804948 () Bool)

(assert (= bs!1337660 (and d!1804948 d!1804946)))

(declare-fun lambda!309207 () Int)

(assert (=> bs!1337660 (= lambda!309207 lambda!309206)))

(assert (=> d!1804948 (= (nullableZipper!1666 lt!2278084) (exists!2226 lt!2278084 lambda!309207))))

(declare-fun bs!1337661 () Bool)

(assert (= bs!1337661 d!1804948))

(declare-fun m!6674768 () Bool)

(assert (=> bs!1337661 m!6674768))

(assert (=> b!5721089 d!1804948))

(declare-fun d!1804950 () Bool)

(assert (=> d!1804950 (= (nullable!5749 (h!69774 (exprs!5601 lt!2278082))) (nullableFct!1813 (h!69774 (exprs!5601 lt!2278082))))))

(declare-fun bs!1337662 () Bool)

(assert (= bs!1337662 d!1804950))

(declare-fun m!6674770 () Bool)

(assert (=> bs!1337662 m!6674770))

(assert (=> b!5721456 d!1804950))

(declare-fun b!5721690 () Bool)

(declare-fun e!3518398 () (InoxSet Context!10202))

(declare-fun call!437160 () (InoxSet Context!10202))

(assert (=> b!5721690 (= e!3518398 call!437160)))

(declare-fun bm!437154 () Bool)

(declare-fun call!437161 () (InoxSet Context!10202))

(assert (=> bm!437154 (= call!437160 call!437161)))

(declare-fun b!5721691 () Bool)

(declare-fun e!3518393 () (InoxSet Context!10202))

(declare-fun call!437159 () (InoxSet Context!10202))

(declare-fun call!437164 () (InoxSet Context!10202))

(assert (=> b!5721691 (= e!3518393 ((_ map or) call!437159 call!437164))))

(declare-fun e!3518396 () (InoxSet Context!10202))

(declare-fun b!5721692 () Bool)

(assert (=> b!5721692 (= e!3518396 (store ((as const (Array Context!10202 Bool)) false) (ite c!1009028 lt!2278082 (Context!10203 call!437130)) true))))

(declare-fun b!5721693 () Bool)

(declare-fun e!3518395 () (InoxSet Context!10202))

(assert (=> b!5721693 (= e!3518395 e!3518398)))

(declare-fun c!1009138 () Bool)

(assert (=> b!5721693 (= c!1009138 ((_ is Concat!24562) (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292))))))))

(declare-fun bm!437155 () Bool)

(assert (=> bm!437155 (= call!437161 call!437164)))

(declare-fun b!5721694 () Bool)

(declare-fun c!1009136 () Bool)

(assert (=> b!5721694 (= c!1009136 ((_ is Star!15717) (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292))))))))

(declare-fun e!3518394 () (InoxSet Context!10202))

(assert (=> b!5721694 (= e!3518398 e!3518394)))

(declare-fun bm!437156 () Bool)

(declare-fun call!437162 () List!63450)

(declare-fun c!1009135 () Bool)

(declare-fun c!1009134 () Bool)

(assert (=> bm!437156 (= call!437164 (derivationStepZipperDown!1059 (ite c!1009134 (regTwo!31947 (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292))))) (ite c!1009135 (regTwo!31946 (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292))))) (ite c!1009138 (regOne!31946 (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292))))) (reg!16046 (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292)))))))) (ite (or c!1009134 c!1009135) (ite c!1009028 lt!2278082 (Context!10203 call!437130)) (Context!10203 call!437162)) (h!69776 s!2326)))))

(declare-fun b!5721695 () Bool)

(assert (=> b!5721695 (= e!3518395 ((_ map or) call!437159 call!437161))))

(declare-fun b!5721697 () Bool)

(declare-fun e!3518397 () Bool)

(assert (=> b!5721697 (= e!3518397 (nullable!5749 (regOne!31946 (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292)))))))))

(declare-fun bm!437157 () Bool)

(declare-fun call!437163 () List!63450)

(assert (=> bm!437157 (= call!437163 ($colon$colon!1734 (exprs!5601 (ite c!1009028 lt!2278082 (Context!10203 call!437130))) (ite (or c!1009135 c!1009138) (regTwo!31946 (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292))))) (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292)))))))))

(declare-fun bm!437158 () Bool)

(assert (=> bm!437158 (= call!437159 (derivationStepZipperDown!1059 (ite c!1009134 (regOne!31947 (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292))))) (regOne!31946 (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292)))))) (ite c!1009134 (ite c!1009028 lt!2278082 (Context!10203 call!437130)) (Context!10203 call!437163)) (h!69776 s!2326)))))

(declare-fun bm!437159 () Bool)

(assert (=> bm!437159 (= call!437162 call!437163)))

(declare-fun b!5721698 () Bool)

(assert (=> b!5721698 (= e!3518396 e!3518393)))

(assert (=> b!5721698 (= c!1009134 ((_ is Union!15717) (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292))))))))

(declare-fun c!1009137 () Bool)

(declare-fun d!1804952 () Bool)

(assert (=> d!1804952 (= c!1009137 (and ((_ is ElementMatch!15717) (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292))))) (= (c!1008905 (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292))))) (h!69776 s!2326))))))

(assert (=> d!1804952 (= (derivationStepZipperDown!1059 (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292)))) (ite c!1009028 lt!2278082 (Context!10203 call!437130)) (h!69776 s!2326)) e!3518396)))

(declare-fun b!5721696 () Bool)

(assert (=> b!5721696 (= c!1009135 e!3518397)))

(declare-fun res!2415590 () Bool)

(assert (=> b!5721696 (=> (not res!2415590) (not e!3518397))))

(assert (=> b!5721696 (= res!2415590 ((_ is Concat!24562) (ite c!1009028 (regOne!31947 (reg!16046 (regOne!31946 r!7292))) (regOne!31946 (reg!16046 (regOne!31946 r!7292))))))))

(assert (=> b!5721696 (= e!3518393 e!3518395)))

(declare-fun b!5721699 () Bool)

(assert (=> b!5721699 (= e!3518394 call!437160)))

(declare-fun b!5721700 () Bool)

(assert (=> b!5721700 (= e!3518394 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1804952 c!1009137) b!5721692))

(assert (= (and d!1804952 (not c!1009137)) b!5721698))

(assert (= (and b!5721698 c!1009134) b!5721691))

(assert (= (and b!5721698 (not c!1009134)) b!5721696))

(assert (= (and b!5721696 res!2415590) b!5721697))

(assert (= (and b!5721696 c!1009135) b!5721695))

(assert (= (and b!5721696 (not c!1009135)) b!5721693))

(assert (= (and b!5721693 c!1009138) b!5721690))

(assert (= (and b!5721693 (not c!1009138)) b!5721694))

(assert (= (and b!5721694 c!1009136) b!5721699))

(assert (= (and b!5721694 (not c!1009136)) b!5721700))

(assert (= (or b!5721690 b!5721699) bm!437159))

(assert (= (or b!5721690 b!5721699) bm!437154))

(assert (= (or b!5721695 bm!437159) bm!437157))

(assert (= (or b!5721695 bm!437154) bm!437155))

(assert (= (or b!5721691 bm!437155) bm!437156))

(assert (= (or b!5721691 b!5721695) bm!437158))

(declare-fun m!6674772 () Bool)

(assert (=> b!5721697 m!6674772))

(declare-fun m!6674774 () Bool)

(assert (=> bm!437158 m!6674774))

(declare-fun m!6674776 () Bool)

(assert (=> bm!437156 m!6674776))

(declare-fun m!6674778 () Bool)

(assert (=> bm!437157 m!6674778))

(declare-fun m!6674780 () Bool)

(assert (=> b!5721692 m!6674780))

(assert (=> bm!437125 d!1804952))

(declare-fun bs!1337663 () Bool)

(declare-fun d!1804954 () Bool)

(assert (= bs!1337663 (and d!1804954 d!1804742)))

(declare-fun lambda!309208 () Int)

(assert (=> bs!1337663 (= lambda!309208 lambda!309143)))

(declare-fun bs!1337664 () Bool)

(assert (= bs!1337664 (and d!1804954 d!1804878)))

(assert (=> bs!1337664 (= lambda!309208 lambda!309189)))

(declare-fun bs!1337665 () Bool)

(assert (= bs!1337665 (and d!1804954 d!1804902)))

(assert (=> bs!1337665 (= lambda!309208 lambda!309192)))

(declare-fun bs!1337666 () Bool)

(assert (= bs!1337666 (and d!1804954 d!1804746)))

(assert (=> bs!1337666 (= lambda!309208 lambda!309151)))

(declare-fun bs!1337667 () Bool)

(assert (= bs!1337667 (and d!1804954 d!1804826)))

(assert (=> bs!1337667 (= lambda!309208 lambda!309165)))

(declare-fun b!5721701 () Bool)

(declare-fun e!3518400 () Bool)

(declare-fun lt!2278199 () Regex!15717)

(assert (=> b!5721701 (= e!3518400 (isUnion!665 lt!2278199))))

(declare-fun b!5721702 () Bool)

(declare-fun e!3518399 () Bool)

(declare-fun e!3518401 () Bool)

(assert (=> b!5721702 (= e!3518399 e!3518401)))

(declare-fun c!1009140 () Bool)

(assert (=> b!5721702 (= c!1009140 (isEmpty!35202 (t!376774 (unfocusZipperList!1145 zl!343))))))

(declare-fun b!5721703 () Bool)

(declare-fun e!3518404 () Regex!15717)

(assert (=> b!5721703 (= e!3518404 (Union!15717 (h!69774 (t!376774 (unfocusZipperList!1145 zl!343))) (generalisedUnion!1580 (t!376774 (t!376774 (unfocusZipperList!1145 zl!343))))))))

(declare-fun b!5721704 () Bool)

(declare-fun e!3518402 () Bool)

(assert (=> b!5721704 (= e!3518402 (isEmpty!35202 (t!376774 (t!376774 (unfocusZipperList!1145 zl!343)))))))

(declare-fun b!5721705 () Bool)

(declare-fun e!3518403 () Regex!15717)

(assert (=> b!5721705 (= e!3518403 (h!69774 (t!376774 (unfocusZipperList!1145 zl!343))))))

(declare-fun b!5721706 () Bool)

(assert (=> b!5721706 (= e!3518404 EmptyLang!15717)))

(assert (=> d!1804954 e!3518399))

(declare-fun res!2415592 () Bool)

(assert (=> d!1804954 (=> (not res!2415592) (not e!3518399))))

(assert (=> d!1804954 (= res!2415592 (validRegex!7453 lt!2278199))))

(assert (=> d!1804954 (= lt!2278199 e!3518403)))

(declare-fun c!1009139 () Bool)

(assert (=> d!1804954 (= c!1009139 e!3518402)))

(declare-fun res!2415591 () Bool)

(assert (=> d!1804954 (=> (not res!2415591) (not e!3518402))))

(assert (=> d!1804954 (= res!2415591 ((_ is Cons!63326) (t!376774 (unfocusZipperList!1145 zl!343))))))

(assert (=> d!1804954 (forall!14851 (t!376774 (unfocusZipperList!1145 zl!343)) lambda!309208)))

(assert (=> d!1804954 (= (generalisedUnion!1580 (t!376774 (unfocusZipperList!1145 zl!343))) lt!2278199)))

(declare-fun b!5721707 () Bool)

(assert (=> b!5721707 (= e!3518400 (= lt!2278199 (head!12113 (t!376774 (unfocusZipperList!1145 zl!343)))))))

(declare-fun b!5721708 () Bool)

(assert (=> b!5721708 (= e!3518401 e!3518400)))

(declare-fun c!1009141 () Bool)

(assert (=> b!5721708 (= c!1009141 (isEmpty!35202 (tail!11208 (t!376774 (unfocusZipperList!1145 zl!343)))))))

(declare-fun b!5721709 () Bool)

(assert (=> b!5721709 (= e!3518403 e!3518404)))

(declare-fun c!1009142 () Bool)

(assert (=> b!5721709 (= c!1009142 ((_ is Cons!63326) (t!376774 (unfocusZipperList!1145 zl!343))))))

(declare-fun b!5721710 () Bool)

(assert (=> b!5721710 (= e!3518401 (isEmptyLang!1235 lt!2278199))))

(assert (= (and d!1804954 res!2415591) b!5721704))

(assert (= (and d!1804954 c!1009139) b!5721705))

(assert (= (and d!1804954 (not c!1009139)) b!5721709))

(assert (= (and b!5721709 c!1009142) b!5721703))

(assert (= (and b!5721709 (not c!1009142)) b!5721706))

(assert (= (and d!1804954 res!2415592) b!5721702))

(assert (= (and b!5721702 c!1009140) b!5721710))

(assert (= (and b!5721702 (not c!1009140)) b!5721708))

(assert (= (and b!5721708 c!1009141) b!5721707))

(assert (= (and b!5721708 (not c!1009141)) b!5721701))

(declare-fun m!6674782 () Bool)

(assert (=> b!5721703 m!6674782))

(declare-fun m!6674784 () Bool)

(assert (=> b!5721701 m!6674784))

(declare-fun m!6674786 () Bool)

(assert (=> b!5721707 m!6674786))

(declare-fun m!6674788 () Bool)

(assert (=> b!5721704 m!6674788))

(assert (=> b!5721702 m!6674252))

(declare-fun m!6674790 () Bool)

(assert (=> b!5721710 m!6674790))

(declare-fun m!6674792 () Bool)

(assert (=> b!5721708 m!6674792))

(assert (=> b!5721708 m!6674792))

(declare-fun m!6674794 () Bool)

(assert (=> b!5721708 m!6674794))

(declare-fun m!6674796 () Bool)

(assert (=> d!1804954 m!6674796))

(declare-fun m!6674798 () Bool)

(assert (=> d!1804954 m!6674798))

(assert (=> b!5720995 d!1804954))

(declare-fun b!5721711 () Bool)

(declare-fun e!3518405 () Bool)

(declare-fun e!3518406 () Bool)

(assert (=> b!5721711 (= e!3518405 e!3518406)))

(declare-fun c!1009144 () Bool)

(assert (=> b!5721711 (= c!1009144 ((_ is Union!15717) lt!2278112))))

(declare-fun b!5721712 () Bool)

(declare-fun res!2415593 () Bool)

(declare-fun e!3518409 () Bool)

(assert (=> b!5721712 (=> res!2415593 e!3518409)))

(assert (=> b!5721712 (= res!2415593 (not ((_ is Concat!24562) lt!2278112)))))

(assert (=> b!5721712 (= e!3518406 e!3518409)))

(declare-fun b!5721713 () Bool)

(declare-fun e!3518408 () Bool)

(assert (=> b!5721713 (= e!3518409 e!3518408)))

(declare-fun res!2415595 () Bool)

(assert (=> b!5721713 (=> (not res!2415595) (not e!3518408))))

(declare-fun call!437167 () Bool)

(assert (=> b!5721713 (= res!2415595 call!437167)))

(declare-fun bm!437160 () Bool)

(declare-fun call!437165 () Bool)

(declare-fun c!1009143 () Bool)

(assert (=> bm!437160 (= call!437165 (validRegex!7453 (ite c!1009143 (reg!16046 lt!2278112) (ite c!1009144 (regOne!31947 lt!2278112) (regOne!31946 lt!2278112)))))))

(declare-fun b!5721714 () Bool)

(declare-fun e!3518410 () Bool)

(assert (=> b!5721714 (= e!3518410 e!3518405)))

(assert (=> b!5721714 (= c!1009143 ((_ is Star!15717) lt!2278112))))

(declare-fun b!5721715 () Bool)

(declare-fun call!437166 () Bool)

(assert (=> b!5721715 (= e!3518408 call!437166)))

(declare-fun b!5721717 () Bool)

(declare-fun e!3518407 () Bool)

(assert (=> b!5721717 (= e!3518407 call!437165)))

(declare-fun b!5721718 () Bool)

(assert (=> b!5721718 (= e!3518405 e!3518407)))

(declare-fun res!2415594 () Bool)

(assert (=> b!5721718 (= res!2415594 (not (nullable!5749 (reg!16046 lt!2278112))))))

(assert (=> b!5721718 (=> (not res!2415594) (not e!3518407))))

(declare-fun bm!437161 () Bool)

(assert (=> bm!437161 (= call!437167 call!437165)))

(declare-fun bm!437162 () Bool)

(assert (=> bm!437162 (= call!437166 (validRegex!7453 (ite c!1009144 (regTwo!31947 lt!2278112) (regTwo!31946 lt!2278112))))))

(declare-fun b!5721719 () Bool)

(declare-fun e!3518411 () Bool)

(assert (=> b!5721719 (= e!3518411 call!437166)))

(declare-fun d!1804956 () Bool)

(declare-fun res!2415597 () Bool)

(assert (=> d!1804956 (=> res!2415597 e!3518410)))

(assert (=> d!1804956 (= res!2415597 ((_ is ElementMatch!15717) lt!2278112))))

(assert (=> d!1804956 (= (validRegex!7453 lt!2278112) e!3518410)))

(declare-fun b!5721716 () Bool)

(declare-fun res!2415596 () Bool)

(assert (=> b!5721716 (=> (not res!2415596) (not e!3518411))))

(assert (=> b!5721716 (= res!2415596 call!437167)))

(assert (=> b!5721716 (= e!3518406 e!3518411)))

(assert (= (and d!1804956 (not res!2415597)) b!5721714))

(assert (= (and b!5721714 c!1009143) b!5721718))

(assert (= (and b!5721714 (not c!1009143)) b!5721711))

(assert (= (and b!5721718 res!2415594) b!5721717))

(assert (= (and b!5721711 c!1009144) b!5721716))

(assert (= (and b!5721711 (not c!1009144)) b!5721712))

(assert (= (and b!5721716 res!2415596) b!5721719))

(assert (= (and b!5721712 (not res!2415593)) b!5721713))

(assert (= (and b!5721713 res!2415595) b!5721715))

(assert (= (or b!5721719 b!5721715) bm!437162))

(assert (= (or b!5721716 b!5721713) bm!437161))

(assert (= (or b!5721717 bm!437161) bm!437160))

(declare-fun m!6674800 () Bool)

(assert (=> bm!437160 m!6674800))

(declare-fun m!6674802 () Bool)

(assert (=> b!5721718 m!6674802))

(declare-fun m!6674804 () Bool)

(assert (=> bm!437162 m!6674804))

(assert (=> d!1804742 d!1804956))

(declare-fun d!1804958 () Bool)

(declare-fun res!2415602 () Bool)

(declare-fun e!3518416 () Bool)

(assert (=> d!1804958 (=> res!2415602 e!3518416)))

(assert (=> d!1804958 (= res!2415602 ((_ is Nil!63326) (unfocusZipperList!1145 zl!343)))))

(assert (=> d!1804958 (= (forall!14851 (unfocusZipperList!1145 zl!343) lambda!309143) e!3518416)))

(declare-fun b!5721724 () Bool)

(declare-fun e!3518417 () Bool)

(assert (=> b!5721724 (= e!3518416 e!3518417)))

(declare-fun res!2415603 () Bool)

(assert (=> b!5721724 (=> (not res!2415603) (not e!3518417))))

(declare-fun dynLambda!24781 (Int Regex!15717) Bool)

(assert (=> b!5721724 (= res!2415603 (dynLambda!24781 lambda!309143 (h!69774 (unfocusZipperList!1145 zl!343))))))

(declare-fun b!5721725 () Bool)

(assert (=> b!5721725 (= e!3518417 (forall!14851 (t!376774 (unfocusZipperList!1145 zl!343)) lambda!309143))))

(assert (= (and d!1804958 (not res!2415602)) b!5721724))

(assert (= (and b!5721724 res!2415603) b!5721725))

(declare-fun b_lambda!216199 () Bool)

(assert (=> (not b_lambda!216199) (not b!5721724)))

(declare-fun m!6674806 () Bool)

(assert (=> b!5721724 m!6674806))

(declare-fun m!6674808 () Bool)

(assert (=> b!5721725 m!6674808))

(assert (=> d!1804742 d!1804958))

(declare-fun d!1804960 () Bool)

(assert (=> d!1804960 (= (isEmpty!35204 s!2326) ((_ is Nil!63328) s!2326))))

(assert (=> bm!437147 d!1804960))

(declare-fun d!1804962 () Bool)

(assert (=> d!1804962 (= (nullable!5749 (h!69774 (exprs!5601 lt!2278097))) (nullableFct!1813 (h!69774 (exprs!5601 lt!2278097))))))

(declare-fun bs!1337668 () Bool)

(assert (= bs!1337668 d!1804962))

(declare-fun m!6674810 () Bool)

(assert (=> bs!1337668 m!6674810))

(assert (=> b!5721496 d!1804962))

(declare-fun d!1804964 () Bool)

(assert (=> d!1804964 true))

(assert (=> d!1804964 true))

(declare-fun res!2415606 () Bool)

(assert (=> d!1804964 (= (choose!43257 lambda!309136) res!2415606)))

(assert (=> d!1804858 d!1804964))

(assert (=> bs!1337654 d!1804906))

(declare-fun d!1804966 () Bool)

(assert (=> d!1804966 (= (nullable!5749 lt!2278086) (nullableFct!1813 lt!2278086))))

(declare-fun bs!1337669 () Bool)

(assert (= bs!1337669 d!1804966))

(declare-fun m!6674812 () Bool)

(assert (=> bs!1337669 m!6674812))

(assert (=> b!5721624 d!1804966))

(assert (=> b!5721488 d!1804780))

(declare-fun d!1804968 () Bool)

(assert (=> d!1804968 (= (nullable!5749 r!7292) (nullableFct!1813 r!7292))))

(declare-fun bs!1337670 () Bool)

(assert (= bs!1337670 d!1804968))

(declare-fun m!6674814 () Bool)

(assert (=> bs!1337670 m!6674814))

(assert (=> b!5721610 d!1804968))

(declare-fun bs!1337671 () Bool)

(declare-fun b!5721731 () Bool)

(assert (= bs!1337671 (and b!5721731 d!1804866)))

(declare-fun lambda!309209 () Int)

(assert (=> bs!1337671 (not (= lambda!309209 lambda!309187))))

(declare-fun bs!1337672 () Bool)

(assert (= bs!1337672 (and b!5721731 b!5720869)))

(assert (=> bs!1337672 (not (= lambda!309209 lambda!309135))))

(declare-fun bs!1337673 () Bool)

(assert (= bs!1337673 (and b!5721731 b!5721633)))

(assert (=> bs!1337673 (not (= lambda!309209 lambda!309203))))

(declare-fun bs!1337674 () Bool)

(assert (= bs!1337674 (and b!5721731 b!5721566)))

(assert (=> bs!1337674 (not (= lambda!309209 lambda!309201))))

(declare-fun bs!1337675 () Bool)

(assert (= bs!1337675 (and b!5721731 b!5721563)))

(assert (=> bs!1337675 (= (and (= (reg!16046 (regOne!31947 r!7292)) (reg!16046 r!7292)) (= (regOne!31947 r!7292) r!7292)) (= lambda!309209 lambda!309200))))

(declare-fun bs!1337676 () Bool)

(assert (= bs!1337676 (and b!5721731 d!1804860)))

(assert (=> bs!1337676 (not (= lambda!309209 lambda!309182))))

(assert (=> bs!1337671 (not (= lambda!309209 lambda!309188))))

(declare-fun bs!1337677 () Bool)

(assert (= bs!1337677 (and b!5721731 b!5721630)))

(assert (=> bs!1337677 (= (and (= (reg!16046 (regOne!31947 r!7292)) (reg!16046 lt!2278086)) (= (regOne!31947 r!7292) lt!2278086)) (= lambda!309209 lambda!309202))))

(assert (=> bs!1337672 (not (= lambda!309209 lambda!309136))))

(assert (=> b!5721731 true))

(assert (=> b!5721731 true))

(declare-fun bs!1337678 () Bool)

(declare-fun b!5721734 () Bool)

(assert (= bs!1337678 (and b!5721734 d!1804866)))

(declare-fun lambda!309210 () Int)

(assert (=> bs!1337678 (not (= lambda!309210 lambda!309187))))

(declare-fun bs!1337679 () Bool)

(assert (= bs!1337679 (and b!5721734 b!5720869)))

(assert (=> bs!1337679 (not (= lambda!309210 lambda!309135))))

(declare-fun bs!1337680 () Bool)

(assert (= bs!1337680 (and b!5721734 b!5721633)))

(assert (=> bs!1337680 (= (and (= (regOne!31946 (regOne!31947 r!7292)) (regOne!31946 lt!2278086)) (= (regTwo!31946 (regOne!31947 r!7292)) (regTwo!31946 lt!2278086))) (= lambda!309210 lambda!309203))))

(declare-fun bs!1337681 () Bool)

(assert (= bs!1337681 (and b!5721734 b!5721566)))

(assert (=> bs!1337681 (= (and (= (regOne!31946 (regOne!31947 r!7292)) (regOne!31946 r!7292)) (= (regTwo!31946 (regOne!31947 r!7292)) (regTwo!31946 r!7292))) (= lambda!309210 lambda!309201))))

(declare-fun bs!1337682 () Bool)

(assert (= bs!1337682 (and b!5721734 b!5721731)))

(assert (=> bs!1337682 (not (= lambda!309210 lambda!309209))))

(declare-fun bs!1337683 () Bool)

(assert (= bs!1337683 (and b!5721734 b!5721563)))

(assert (=> bs!1337683 (not (= lambda!309210 lambda!309200))))

(declare-fun bs!1337684 () Bool)

(assert (= bs!1337684 (and b!5721734 d!1804860)))

(assert (=> bs!1337684 (not (= lambda!309210 lambda!309182))))

(assert (=> bs!1337678 (= (and (= (regOne!31946 (regOne!31947 r!7292)) (regOne!31946 r!7292)) (= (regTwo!31946 (regOne!31947 r!7292)) (regTwo!31946 r!7292))) (= lambda!309210 lambda!309188))))

(declare-fun bs!1337685 () Bool)

(assert (= bs!1337685 (and b!5721734 b!5721630)))

(assert (=> bs!1337685 (not (= lambda!309210 lambda!309202))))

(assert (=> bs!1337679 (= (and (= (regOne!31946 (regOne!31947 r!7292)) (regOne!31946 r!7292)) (= (regTwo!31946 (regOne!31947 r!7292)) (regTwo!31946 r!7292))) (= lambda!309210 lambda!309136))))

(assert (=> b!5721734 true))

(assert (=> b!5721734 true))

(declare-fun b!5721726 () Bool)

(declare-fun e!3518420 () Bool)

(declare-fun call!437169 () Bool)

(assert (=> b!5721726 (= e!3518420 call!437169)))

(declare-fun b!5721727 () Bool)

(declare-fun res!2415609 () Bool)

(declare-fun e!3518424 () Bool)

(assert (=> b!5721727 (=> res!2415609 e!3518424)))

(assert (=> b!5721727 (= res!2415609 call!437169)))

(declare-fun e!3518422 () Bool)

(assert (=> b!5721727 (= e!3518422 e!3518424)))

(declare-fun b!5721728 () Bool)

(declare-fun e!3518421 () Bool)

(assert (=> b!5721728 (= e!3518421 (= s!2326 (Cons!63328 (c!1008905 (regOne!31947 r!7292)) Nil!63328)))))

(declare-fun bm!437163 () Bool)

(declare-fun c!1009147 () Bool)

(declare-fun call!437168 () Bool)

(assert (=> bm!437163 (= call!437168 (Exists!2817 (ite c!1009147 lambda!309209 lambda!309210)))))

(declare-fun b!5721729 () Bool)

(declare-fun e!3518419 () Bool)

(assert (=> b!5721729 (= e!3518420 e!3518419)))

(declare-fun res!2415608 () Bool)

(assert (=> b!5721729 (= res!2415608 (not ((_ is EmptyLang!15717) (regOne!31947 r!7292))))))

(assert (=> b!5721729 (=> (not res!2415608) (not e!3518419))))

(declare-fun b!5721730 () Bool)

(declare-fun c!1009145 () Bool)

(assert (=> b!5721730 (= c!1009145 ((_ is Union!15717) (regOne!31947 r!7292)))))

(declare-fun e!3518418 () Bool)

(assert (=> b!5721730 (= e!3518421 e!3518418)))

(declare-fun d!1804970 () Bool)

(declare-fun c!1009146 () Bool)

(assert (=> d!1804970 (= c!1009146 ((_ is EmptyExpr!15717) (regOne!31947 r!7292)))))

(assert (=> d!1804970 (= (matchRSpec!2820 (regOne!31947 r!7292) s!2326) e!3518420)))

(assert (=> b!5721731 (= e!3518424 call!437168)))

(declare-fun b!5721732 () Bool)

(declare-fun c!1009148 () Bool)

(assert (=> b!5721732 (= c!1009148 ((_ is ElementMatch!15717) (regOne!31947 r!7292)))))

(assert (=> b!5721732 (= e!3518419 e!3518421)))

(declare-fun b!5721733 () Bool)

(declare-fun e!3518423 () Bool)

(assert (=> b!5721733 (= e!3518418 e!3518423)))

(declare-fun res!2415607 () Bool)

(assert (=> b!5721733 (= res!2415607 (matchRSpec!2820 (regOne!31947 (regOne!31947 r!7292)) s!2326))))

(assert (=> b!5721733 (=> res!2415607 e!3518423)))

(assert (=> b!5721734 (= e!3518422 call!437168)))

(declare-fun b!5721735 () Bool)

(assert (=> b!5721735 (= e!3518423 (matchRSpec!2820 (regTwo!31947 (regOne!31947 r!7292)) s!2326))))

(declare-fun b!5721736 () Bool)

(assert (=> b!5721736 (= e!3518418 e!3518422)))

(assert (=> b!5721736 (= c!1009147 ((_ is Star!15717) (regOne!31947 r!7292)))))

(declare-fun bm!437164 () Bool)

(assert (=> bm!437164 (= call!437169 (isEmpty!35204 s!2326))))

(assert (= (and d!1804970 c!1009146) b!5721726))

(assert (= (and d!1804970 (not c!1009146)) b!5721729))

(assert (= (and b!5721729 res!2415608) b!5721732))

(assert (= (and b!5721732 c!1009148) b!5721728))

(assert (= (and b!5721732 (not c!1009148)) b!5721730))

(assert (= (and b!5721730 c!1009145) b!5721733))

(assert (= (and b!5721730 (not c!1009145)) b!5721736))

(assert (= (and b!5721733 (not res!2415607)) b!5721735))

(assert (= (and b!5721736 c!1009147) b!5721727))

(assert (= (and b!5721736 (not c!1009147)) b!5721734))

(assert (= (and b!5721727 (not res!2415609)) b!5721731))

(assert (= (or b!5721731 b!5721734) bm!437163))

(assert (= (or b!5721726 b!5721727) bm!437164))

(declare-fun m!6674816 () Bool)

(assert (=> bm!437163 m!6674816))

(declare-fun m!6674818 () Bool)

(assert (=> b!5721733 m!6674818))

(declare-fun m!6674820 () Bool)

(assert (=> b!5721735 m!6674820))

(assert (=> bm!437164 m!6674630))

(assert (=> b!5721565 d!1804970))

(declare-fun bm!437169 () Bool)

(declare-fun call!437175 () Bool)

(declare-fun c!1009151 () Bool)

(assert (=> bm!437169 (= call!437175 (nullable!5749 (ite c!1009151 (regOne!31947 (regOne!31946 (regOne!31946 r!7292))) (regOne!31946 (regOne!31946 (regOne!31946 r!7292))))))))

(declare-fun b!5721751 () Bool)

(declare-fun e!3518442 () Bool)

(declare-fun e!3518440 () Bool)

(assert (=> b!5721751 (= e!3518442 e!3518440)))

(assert (=> b!5721751 (= c!1009151 ((_ is Union!15717) (regOne!31946 (regOne!31946 r!7292))))))

(declare-fun b!5721752 () Bool)

(declare-fun e!3518439 () Bool)

(assert (=> b!5721752 (= e!3518440 e!3518439)))

(declare-fun res!2415621 () Bool)

(assert (=> b!5721752 (= res!2415621 call!437175)))

(assert (=> b!5721752 (=> res!2415621 e!3518439)))

(declare-fun d!1804972 () Bool)

(declare-fun res!2415624 () Bool)

(declare-fun e!3518441 () Bool)

(assert (=> d!1804972 (=> res!2415624 e!3518441)))

(assert (=> d!1804972 (= res!2415624 ((_ is EmptyExpr!15717) (regOne!31946 (regOne!31946 r!7292))))))

(assert (=> d!1804972 (= (nullableFct!1813 (regOne!31946 (regOne!31946 r!7292))) e!3518441)))

(declare-fun b!5721753 () Bool)

(declare-fun e!3518437 () Bool)

(assert (=> b!5721753 (= e!3518440 e!3518437)))

(declare-fun res!2415623 () Bool)

(assert (=> b!5721753 (= res!2415623 call!437175)))

(assert (=> b!5721753 (=> (not res!2415623) (not e!3518437))))

(declare-fun b!5721754 () Bool)

(declare-fun e!3518438 () Bool)

(assert (=> b!5721754 (= e!3518438 e!3518442)))

(declare-fun res!2415622 () Bool)

(assert (=> b!5721754 (=> res!2415622 e!3518442)))

(assert (=> b!5721754 (= res!2415622 ((_ is Star!15717) (regOne!31946 (regOne!31946 r!7292))))))

(declare-fun b!5721755 () Bool)

(declare-fun call!437174 () Bool)

(assert (=> b!5721755 (= e!3518437 call!437174)))

(declare-fun b!5721756 () Bool)

(assert (=> b!5721756 (= e!3518439 call!437174)))

(declare-fun b!5721757 () Bool)

(assert (=> b!5721757 (= e!3518441 e!3518438)))

(declare-fun res!2415620 () Bool)

(assert (=> b!5721757 (=> (not res!2415620) (not e!3518438))))

(assert (=> b!5721757 (= res!2415620 (and (not ((_ is EmptyLang!15717) (regOne!31946 (regOne!31946 r!7292)))) (not ((_ is ElementMatch!15717) (regOne!31946 (regOne!31946 r!7292))))))))

(declare-fun bm!437170 () Bool)

(assert (=> bm!437170 (= call!437174 (nullable!5749 (ite c!1009151 (regTwo!31947 (regOne!31946 (regOne!31946 r!7292))) (regTwo!31946 (regOne!31946 (regOne!31946 r!7292))))))))

(assert (= (and d!1804972 (not res!2415624)) b!5721757))

(assert (= (and b!5721757 res!2415620) b!5721754))

(assert (= (and b!5721754 (not res!2415622)) b!5721751))

(assert (= (and b!5721751 c!1009151) b!5721752))

(assert (= (and b!5721751 (not c!1009151)) b!5721753))

(assert (= (and b!5721752 (not res!2415621)) b!5721756))

(assert (= (and b!5721753 res!2415623) b!5721755))

(assert (= (or b!5721756 b!5721755) bm!437170))

(assert (= (or b!5721752 b!5721753) bm!437169))

(declare-fun m!6674822 () Bool)

(assert (=> bm!437169 m!6674822))

(declare-fun m!6674824 () Bool)

(assert (=> bm!437170 m!6674824))

(assert (=> d!1804884 d!1804972))

(assert (=> d!1804918 d!1804960))

(assert (=> d!1804918 d!1804912))

(declare-fun d!1804974 () Bool)

(assert (=> d!1804974 (= ($colon$colon!1734 (exprs!5601 lt!2278073) (ite (or c!1009024 c!1009027) (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (h!69774 (exprs!5601 (h!69775 zl!343))))) (Cons!63326 (ite (or c!1009024 c!1009027) (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (h!69774 (exprs!5601 (h!69775 zl!343)))) (exprs!5601 lt!2278073)))))

(assert (=> bm!437118 d!1804974))

(declare-fun d!1804976 () Bool)

(assert (=> d!1804976 true))

(declare-fun setRes!38340 () Bool)

(assert (=> d!1804976 setRes!38340))

(declare-fun condSetEmpty!38340 () Bool)

(declare-fun res!2415627 () (InoxSet Context!10202))

(assert (=> d!1804976 (= condSetEmpty!38340 (= res!2415627 ((as const (Array Context!10202 Bool)) false)))))

(assert (=> d!1804976 (= (choose!43256 lt!2278072 lambda!309137) res!2415627)))

(declare-fun setIsEmpty!38340 () Bool)

(assert (=> setIsEmpty!38340 setRes!38340))

(declare-fun setNonEmpty!38340 () Bool)

(declare-fun tp!1584552 () Bool)

(declare-fun setElem!38340 () Context!10202)

(declare-fun e!3518445 () Bool)

(assert (=> setNonEmpty!38340 (= setRes!38340 (and tp!1584552 (inv!82539 setElem!38340) e!3518445))))

(declare-fun setRest!38340 () (InoxSet Context!10202))

(assert (=> setNonEmpty!38340 (= res!2415627 ((_ map or) (store ((as const (Array Context!10202 Bool)) false) setElem!38340 true) setRest!38340))))

(declare-fun b!5721760 () Bool)

(declare-fun tp!1584551 () Bool)

(assert (=> b!5721760 (= e!3518445 tp!1584551)))

(assert (= (and d!1804976 condSetEmpty!38340) setIsEmpty!38340))

(assert (= (and d!1804976 (not condSetEmpty!38340)) setNonEmpty!38340))

(assert (= setNonEmpty!38340 b!5721760))

(declare-fun m!6674826 () Bool)

(assert (=> setNonEmpty!38340 m!6674826))

(assert (=> d!1804896 d!1804976))

(declare-fun b!5721761 () Bool)

(declare-fun e!3518446 () Bool)

(declare-fun e!3518447 () Bool)

(assert (=> b!5721761 (= e!3518446 e!3518447)))

(declare-fun c!1009153 () Bool)

(assert (=> b!5721761 (= c!1009153 ((_ is Union!15717) (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292)))))))

(declare-fun b!5721762 () Bool)

(declare-fun res!2415628 () Bool)

(declare-fun e!3518450 () Bool)

(assert (=> b!5721762 (=> res!2415628 e!3518450)))

(assert (=> b!5721762 (= res!2415628 (not ((_ is Concat!24562) (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292))))))))

(assert (=> b!5721762 (= e!3518447 e!3518450)))

(declare-fun b!5721763 () Bool)

(declare-fun e!3518449 () Bool)

(assert (=> b!5721763 (= e!3518450 e!3518449)))

(declare-fun res!2415630 () Bool)

(assert (=> b!5721763 (=> (not res!2415630) (not e!3518449))))

(declare-fun call!437178 () Bool)

(assert (=> b!5721763 (= res!2415630 call!437178)))

(declare-fun call!437176 () Bool)

(declare-fun bm!437171 () Bool)

(declare-fun c!1009152 () Bool)

(assert (=> bm!437171 (= call!437176 (validRegex!7453 (ite c!1009152 (reg!16046 (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292)))) (ite c!1009153 (regOne!31947 (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292)))) (regOne!31946 (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292))))))))))

(declare-fun b!5721764 () Bool)

(declare-fun e!3518451 () Bool)

(assert (=> b!5721764 (= e!3518451 e!3518446)))

(assert (=> b!5721764 (= c!1009152 ((_ is Star!15717) (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292)))))))

(declare-fun b!5721765 () Bool)

(declare-fun call!437177 () Bool)

(assert (=> b!5721765 (= e!3518449 call!437177)))

(declare-fun b!5721767 () Bool)

(declare-fun e!3518448 () Bool)

(assert (=> b!5721767 (= e!3518448 call!437176)))

(declare-fun b!5721768 () Bool)

(assert (=> b!5721768 (= e!3518446 e!3518448)))

(declare-fun res!2415629 () Bool)

(assert (=> b!5721768 (= res!2415629 (not (nullable!5749 (reg!16046 (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292)))))))))

(assert (=> b!5721768 (=> (not res!2415629) (not e!3518448))))

(declare-fun bm!437172 () Bool)

(assert (=> bm!437172 (= call!437178 call!437176)))

(declare-fun bm!437173 () Bool)

(assert (=> bm!437173 (= call!437177 (validRegex!7453 (ite c!1009153 (regTwo!31947 (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292)))) (regTwo!31946 (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292)))))))))

(declare-fun b!5721769 () Bool)

(declare-fun e!3518452 () Bool)

(assert (=> b!5721769 (= e!3518452 call!437177)))

(declare-fun d!1804978 () Bool)

(declare-fun res!2415632 () Bool)

(assert (=> d!1804978 (=> res!2415632 e!3518451)))

(assert (=> d!1804978 (= res!2415632 ((_ is ElementMatch!15717) (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292)))))))

(assert (=> d!1804978 (= (validRegex!7453 (ite c!1009102 (reg!16046 r!7292) (ite c!1009103 (regOne!31947 r!7292) (regOne!31946 r!7292)))) e!3518451)))

(declare-fun b!5721766 () Bool)

(declare-fun res!2415631 () Bool)

(assert (=> b!5721766 (=> (not res!2415631) (not e!3518452))))

(assert (=> b!5721766 (= res!2415631 call!437178)))

(assert (=> b!5721766 (= e!3518447 e!3518452)))

(assert (= (and d!1804978 (not res!2415632)) b!5721764))

(assert (= (and b!5721764 c!1009152) b!5721768))

(assert (= (and b!5721764 (not c!1009152)) b!5721761))

(assert (= (and b!5721768 res!2415629) b!5721767))

(assert (= (and b!5721761 c!1009153) b!5721766))

(assert (= (and b!5721761 (not c!1009153)) b!5721762))

(assert (= (and b!5721766 res!2415631) b!5721769))

(assert (= (and b!5721762 (not res!2415628)) b!5721763))

(assert (= (and b!5721763 res!2415630) b!5721765))

(assert (= (or b!5721769 b!5721765) bm!437173))

(assert (= (or b!5721766 b!5721763) bm!437172))

(assert (= (or b!5721767 bm!437172) bm!437171))

(declare-fun m!6674828 () Bool)

(assert (=> bm!437171 m!6674828))

(declare-fun m!6674830 () Bool)

(assert (=> b!5721768 m!6674830))

(declare-fun m!6674832 () Bool)

(assert (=> bm!437173 m!6674832))

(assert (=> bm!437139 d!1804978))

(declare-fun d!1804980 () Bool)

(assert (=> d!1804980 (= (isConcat!747 lt!2278188) ((_ is Concat!24562) lt!2278188))))

(assert (=> b!5721484 d!1804980))

(declare-fun b!5721770 () Bool)

(declare-fun e!3518458 () (InoxSet Context!10202))

(declare-fun call!437180 () (InoxSet Context!10202))

(assert (=> b!5721770 (= e!3518458 call!437180)))

(declare-fun bm!437174 () Bool)

(declare-fun call!437181 () (InoxSet Context!10202))

(assert (=> bm!437174 (= call!437180 call!437181)))

(declare-fun b!5721771 () Bool)

(declare-fun e!3518453 () (InoxSet Context!10202))

(declare-fun call!437179 () (InoxSet Context!10202))

(declare-fun call!437184 () (InoxSet Context!10202))

(assert (=> b!5721771 (= e!3518453 ((_ map or) call!437179 call!437184))))

(declare-fun e!3518456 () (InoxSet Context!10202))

(declare-fun b!5721772 () Bool)

(assert (=> b!5721772 (= e!3518456 (store ((as const (Array Context!10202 Bool)) false) (ite (or c!1009023 c!1009024) lt!2278073 (Context!10203 call!437123)) true))))

(declare-fun b!5721773 () Bool)

(declare-fun e!3518455 () (InoxSet Context!10202))

(assert (=> b!5721773 (= e!3518455 e!3518458)))

(declare-fun c!1009158 () Bool)

(assert (=> b!5721773 (= c!1009158 ((_ is Concat!24562) (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343)))))))))))

(declare-fun bm!437175 () Bool)

(assert (=> bm!437175 (= call!437181 call!437184)))

(declare-fun b!5721774 () Bool)

(declare-fun c!1009156 () Bool)

(assert (=> b!5721774 (= c!1009156 ((_ is Star!15717) (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343)))))))))))

(declare-fun e!3518454 () (InoxSet Context!10202))

(assert (=> b!5721774 (= e!3518458 e!3518454)))

(declare-fun bm!437176 () Bool)

(declare-fun c!1009154 () Bool)

(declare-fun c!1009155 () Bool)

(declare-fun call!437182 () List!63450)

(assert (=> bm!437176 (= call!437184 (derivationStepZipperDown!1059 (ite c!1009154 (regTwo!31947 (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343)))))))) (ite c!1009155 (regTwo!31946 (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343)))))))) (ite c!1009158 (regOne!31946 (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343)))))))) (reg!16046 (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343))))))))))) (ite (or c!1009154 c!1009155) (ite (or c!1009023 c!1009024) lt!2278073 (Context!10203 call!437123)) (Context!10203 call!437182)) (h!69776 s!2326)))))

(declare-fun b!5721775 () Bool)

(assert (=> b!5721775 (= e!3518455 ((_ map or) call!437179 call!437181))))

(declare-fun e!3518457 () Bool)

(declare-fun b!5721777 () Bool)

(assert (=> b!5721777 (= e!3518457 (nullable!5749 (regOne!31946 (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343))))))))))))

(declare-fun call!437183 () List!63450)

(declare-fun bm!437177 () Bool)

(assert (=> bm!437177 (= call!437183 ($colon$colon!1734 (exprs!5601 (ite (or c!1009023 c!1009024) lt!2278073 (Context!10203 call!437123))) (ite (or c!1009155 c!1009158) (regTwo!31946 (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343)))))))) (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343))))))))))))

(declare-fun bm!437178 () Bool)

(assert (=> bm!437178 (= call!437179 (derivationStepZipperDown!1059 (ite c!1009154 (regOne!31947 (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343)))))))) (regOne!31946 (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343))))))))) (ite c!1009154 (ite (or c!1009023 c!1009024) lt!2278073 (Context!10203 call!437123)) (Context!10203 call!437183)) (h!69776 s!2326)))))

(declare-fun bm!437179 () Bool)

(assert (=> bm!437179 (= call!437182 call!437183)))

(declare-fun b!5721778 () Bool)

(assert (=> b!5721778 (= e!3518456 e!3518453)))

(assert (=> b!5721778 (= c!1009154 ((_ is Union!15717) (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343)))))))))))

(declare-fun d!1804982 () Bool)

(declare-fun c!1009157 () Bool)

(assert (=> d!1804982 (= c!1009157 (and ((_ is ElementMatch!15717) (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343)))))))) (= (c!1008905 (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343)))))))) (h!69776 s!2326))))))

(assert (=> d!1804982 (= (derivationStepZipperDown!1059 (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343))))))) (ite (or c!1009023 c!1009024) lt!2278073 (Context!10203 call!437123)) (h!69776 s!2326)) e!3518456)))

(declare-fun b!5721776 () Bool)

(assert (=> b!5721776 (= c!1009155 e!3518457)))

(declare-fun res!2415633 () Bool)

(assert (=> b!5721776 (=> (not res!2415633) (not e!3518457))))

(assert (=> b!5721776 (= res!2415633 ((_ is Concat!24562) (ite c!1009023 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009024 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009027 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343)))))))))))

(assert (=> b!5721776 (= e!3518453 e!3518455)))

(declare-fun b!5721779 () Bool)

(assert (=> b!5721779 (= e!3518454 call!437180)))

(declare-fun b!5721780 () Bool)

(assert (=> b!5721780 (= e!3518454 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1804982 c!1009157) b!5721772))

(assert (= (and d!1804982 (not c!1009157)) b!5721778))

(assert (= (and b!5721778 c!1009154) b!5721771))

(assert (= (and b!5721778 (not c!1009154)) b!5721776))

(assert (= (and b!5721776 res!2415633) b!5721777))

(assert (= (and b!5721776 c!1009155) b!5721775))

(assert (= (and b!5721776 (not c!1009155)) b!5721773))

(assert (= (and b!5721773 c!1009158) b!5721770))

(assert (= (and b!5721773 (not c!1009158)) b!5721774))

(assert (= (and b!5721774 c!1009156) b!5721779))

(assert (= (and b!5721774 (not c!1009156)) b!5721780))

(assert (= (or b!5721770 b!5721779) bm!437179))

(assert (= (or b!5721770 b!5721779) bm!437174))

(assert (= (or b!5721775 bm!437179) bm!437177))

(assert (= (or b!5721775 bm!437174) bm!437175))

(assert (= (or b!5721771 bm!437175) bm!437176))

(assert (= (or b!5721771 b!5721775) bm!437178))

(declare-fun m!6674834 () Bool)

(assert (=> b!5721777 m!6674834))

(declare-fun m!6674836 () Bool)

(assert (=> bm!437178 m!6674836))

(declare-fun m!6674838 () Bool)

(assert (=> bm!437176 m!6674838))

(declare-fun m!6674840 () Bool)

(assert (=> bm!437177 m!6674840))

(declare-fun m!6674842 () Bool)

(assert (=> b!5721772 m!6674842))

(assert (=> bm!437117 d!1804982))

(declare-fun b!5721781 () Bool)

(declare-fun e!3518464 () (InoxSet Context!10202))

(declare-fun call!437186 () (InoxSet Context!10202))

(assert (=> b!5721781 (= e!3518464 call!437186)))

(declare-fun bm!437180 () Bool)

(declare-fun call!437187 () (InoxSet Context!10202))

(assert (=> bm!437180 (= call!437186 call!437187)))

(declare-fun b!5721782 () Bool)

(declare-fun e!3518459 () (InoxSet Context!10202))

(declare-fun call!437185 () (InoxSet Context!10202))

(declare-fun call!437190 () (InoxSet Context!10202))

(assert (=> b!5721782 (= e!3518459 ((_ map or) call!437185 call!437190))))

(declare-fun b!5721783 () Bool)

(declare-fun e!3518462 () (InoxSet Context!10202))

(assert (=> b!5721783 (= e!3518462 (store ((as const (Array Context!10202 Bool)) false) (Context!10203 (t!376774 (exprs!5601 lt!2278081))) true))))

(declare-fun b!5721784 () Bool)

(declare-fun e!3518461 () (InoxSet Context!10202))

(assert (=> b!5721784 (= e!3518461 e!3518464)))

(declare-fun c!1009163 () Bool)

(assert (=> b!5721784 (= c!1009163 ((_ is Concat!24562) (h!69774 (exprs!5601 lt!2278081))))))

(declare-fun bm!437181 () Bool)

(assert (=> bm!437181 (= call!437187 call!437190)))

(declare-fun b!5721785 () Bool)

(declare-fun c!1009161 () Bool)

(assert (=> b!5721785 (= c!1009161 ((_ is Star!15717) (h!69774 (exprs!5601 lt!2278081))))))

(declare-fun e!3518460 () (InoxSet Context!10202))

(assert (=> b!5721785 (= e!3518464 e!3518460)))

(declare-fun c!1009160 () Bool)

(declare-fun call!437188 () List!63450)

(declare-fun c!1009159 () Bool)

(declare-fun bm!437182 () Bool)

(assert (=> bm!437182 (= call!437190 (derivationStepZipperDown!1059 (ite c!1009159 (regTwo!31947 (h!69774 (exprs!5601 lt!2278081))) (ite c!1009160 (regTwo!31946 (h!69774 (exprs!5601 lt!2278081))) (ite c!1009163 (regOne!31946 (h!69774 (exprs!5601 lt!2278081))) (reg!16046 (h!69774 (exprs!5601 lt!2278081)))))) (ite (or c!1009159 c!1009160) (Context!10203 (t!376774 (exprs!5601 lt!2278081))) (Context!10203 call!437188)) (h!69776 s!2326)))))

(declare-fun b!5721786 () Bool)

(assert (=> b!5721786 (= e!3518461 ((_ map or) call!437185 call!437187))))

(declare-fun b!5721788 () Bool)

(declare-fun e!3518463 () Bool)

(assert (=> b!5721788 (= e!3518463 (nullable!5749 (regOne!31946 (h!69774 (exprs!5601 lt!2278081)))))))

(declare-fun call!437189 () List!63450)

(declare-fun bm!437183 () Bool)

(assert (=> bm!437183 (= call!437189 ($colon$colon!1734 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278081)))) (ite (or c!1009160 c!1009163) (regTwo!31946 (h!69774 (exprs!5601 lt!2278081))) (h!69774 (exprs!5601 lt!2278081)))))))

(declare-fun bm!437184 () Bool)

(assert (=> bm!437184 (= call!437185 (derivationStepZipperDown!1059 (ite c!1009159 (regOne!31947 (h!69774 (exprs!5601 lt!2278081))) (regOne!31946 (h!69774 (exprs!5601 lt!2278081)))) (ite c!1009159 (Context!10203 (t!376774 (exprs!5601 lt!2278081))) (Context!10203 call!437189)) (h!69776 s!2326)))))

(declare-fun bm!437185 () Bool)

(assert (=> bm!437185 (= call!437188 call!437189)))

(declare-fun b!5721789 () Bool)

(assert (=> b!5721789 (= e!3518462 e!3518459)))

(assert (=> b!5721789 (= c!1009159 ((_ is Union!15717) (h!69774 (exprs!5601 lt!2278081))))))

(declare-fun d!1804984 () Bool)

(declare-fun c!1009162 () Bool)

(assert (=> d!1804984 (= c!1009162 (and ((_ is ElementMatch!15717) (h!69774 (exprs!5601 lt!2278081))) (= (c!1008905 (h!69774 (exprs!5601 lt!2278081))) (h!69776 s!2326))))))

(assert (=> d!1804984 (= (derivationStepZipperDown!1059 (h!69774 (exprs!5601 lt!2278081)) (Context!10203 (t!376774 (exprs!5601 lt!2278081))) (h!69776 s!2326)) e!3518462)))

(declare-fun b!5721787 () Bool)

(assert (=> b!5721787 (= c!1009160 e!3518463)))

(declare-fun res!2415634 () Bool)

(assert (=> b!5721787 (=> (not res!2415634) (not e!3518463))))

(assert (=> b!5721787 (= res!2415634 ((_ is Concat!24562) (h!69774 (exprs!5601 lt!2278081))))))

(assert (=> b!5721787 (= e!3518459 e!3518461)))

(declare-fun b!5721790 () Bool)

(assert (=> b!5721790 (= e!3518460 call!437186)))

(declare-fun b!5721791 () Bool)

(assert (=> b!5721791 (= e!3518460 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1804984 c!1009162) b!5721783))

(assert (= (and d!1804984 (not c!1009162)) b!5721789))

(assert (= (and b!5721789 c!1009159) b!5721782))

(assert (= (and b!5721789 (not c!1009159)) b!5721787))

(assert (= (and b!5721787 res!2415634) b!5721788))

(assert (= (and b!5721787 c!1009160) b!5721786))

(assert (= (and b!5721787 (not c!1009160)) b!5721784))

(assert (= (and b!5721784 c!1009163) b!5721781))

(assert (= (and b!5721784 (not c!1009163)) b!5721785))

(assert (= (and b!5721785 c!1009161) b!5721790))

(assert (= (and b!5721785 (not c!1009161)) b!5721791))

(assert (= (or b!5721781 b!5721790) bm!437185))

(assert (= (or b!5721781 b!5721790) bm!437180))

(assert (= (or b!5721786 bm!437185) bm!437183))

(assert (= (or b!5721786 bm!437180) bm!437181))

(assert (= (or b!5721782 bm!437181) bm!437182))

(assert (= (or b!5721782 b!5721786) bm!437184))

(declare-fun m!6674844 () Bool)

(assert (=> b!5721788 m!6674844))

(declare-fun m!6674846 () Bool)

(assert (=> bm!437184 m!6674846))

(declare-fun m!6674848 () Bool)

(assert (=> bm!437182 m!6674848))

(declare-fun m!6674850 () Bool)

(assert (=> bm!437183 m!6674850))

(declare-fun m!6674852 () Bool)

(assert (=> b!5721783 m!6674852))

(assert (=> bm!437131 d!1804984))

(assert (=> d!1804888 d!1804894))

(declare-fun d!1804986 () Bool)

(assert (=> d!1804986 (= (flatMap!1330 lt!2278079 lambda!309137) (dynLambda!24780 lambda!309137 lt!2278082))))

(assert (=> d!1804986 true))

(declare-fun _$13!2402 () Unit!156400)

(assert (=> d!1804986 (= (choose!43255 lt!2278079 lt!2278082 lambda!309137) _$13!2402)))

(declare-fun b_lambda!216201 () Bool)

(assert (=> (not b_lambda!216201) (not d!1804986)))

(declare-fun bs!1337686 () Bool)

(assert (= bs!1337686 d!1804986))

(assert (=> bs!1337686 m!6674128))

(assert (=> bs!1337686 m!6674656))

(assert (=> d!1804888 d!1804986))

(declare-fun d!1804988 () Bool)

(declare-fun c!1009164 () Bool)

(assert (=> d!1804988 (= c!1009164 (isEmpty!35204 (tail!11209 (t!376776 s!2326))))))

(declare-fun e!3518465 () Bool)

(assert (=> d!1804988 (= (matchZipper!1855 (derivationStepZipper!1800 lt!2278070 (head!12114 (t!376776 s!2326))) (tail!11209 (t!376776 s!2326))) e!3518465)))

(declare-fun b!5721792 () Bool)

(assert (=> b!5721792 (= e!3518465 (nullableZipper!1666 (derivationStepZipper!1800 lt!2278070 (head!12114 (t!376776 s!2326)))))))

(declare-fun b!5721793 () Bool)

(assert (=> b!5721793 (= e!3518465 (matchZipper!1855 (derivationStepZipper!1800 (derivationStepZipper!1800 lt!2278070 (head!12114 (t!376776 s!2326))) (head!12114 (tail!11209 (t!376776 s!2326)))) (tail!11209 (tail!11209 (t!376776 s!2326)))))))

(assert (= (and d!1804988 c!1009164) b!5721792))

(assert (= (and d!1804988 (not c!1009164)) b!5721793))

(assert (=> d!1804988 m!6674318))

(declare-fun m!6674854 () Bool)

(assert (=> d!1804988 m!6674854))

(assert (=> b!5721792 m!6674644))

(declare-fun m!6674856 () Bool)

(assert (=> b!5721792 m!6674856))

(assert (=> b!5721793 m!6674318))

(declare-fun m!6674858 () Bool)

(assert (=> b!5721793 m!6674858))

(assert (=> b!5721793 m!6674644))

(assert (=> b!5721793 m!6674858))

(declare-fun m!6674860 () Bool)

(assert (=> b!5721793 m!6674860))

(assert (=> b!5721793 m!6674318))

(declare-fun m!6674862 () Bool)

(assert (=> b!5721793 m!6674862))

(assert (=> b!5721793 m!6674860))

(assert (=> b!5721793 m!6674862))

(declare-fun m!6674864 () Bool)

(assert (=> b!5721793 m!6674864))

(assert (=> b!5721449 d!1804988))

(declare-fun bs!1337687 () Bool)

(declare-fun d!1804990 () Bool)

(assert (= bs!1337687 (and d!1804990 b!5720846)))

(declare-fun lambda!309211 () Int)

(assert (=> bs!1337687 (= (= (head!12114 (t!376776 s!2326)) (h!69776 s!2326)) (= lambda!309211 lambda!309137))))

(declare-fun bs!1337688 () Bool)

(assert (= bs!1337688 (and d!1804990 d!1804910)))

(assert (=> bs!1337688 (= (= (head!12114 (t!376776 s!2326)) (h!69776 s!2326)) (= lambda!309211 lambda!309195))))

(assert (=> d!1804990 true))

(assert (=> d!1804990 (= (derivationStepZipper!1800 lt!2278070 (head!12114 (t!376776 s!2326))) (flatMap!1330 lt!2278070 lambda!309211))))

(declare-fun bs!1337689 () Bool)

(assert (= bs!1337689 d!1804990))

(declare-fun m!6674866 () Bool)

(assert (=> bs!1337689 m!6674866))

(assert (=> b!5721449 d!1804990))

(declare-fun d!1804992 () Bool)

(assert (=> d!1804992 (= (head!12114 (t!376776 s!2326)) (h!69776 (t!376776 s!2326)))))

(assert (=> b!5721449 d!1804992))

(declare-fun d!1804994 () Bool)

(assert (=> d!1804994 (= (tail!11209 (t!376776 s!2326)) (t!376776 (t!376776 s!2326)))))

(assert (=> b!5721449 d!1804994))

(declare-fun d!1804996 () Bool)

(assert (=> d!1804996 true))

(declare-fun setRes!38341 () Bool)

(assert (=> d!1804996 setRes!38341))

(declare-fun condSetEmpty!38341 () Bool)

(declare-fun res!2415635 () (InoxSet Context!10202))

(assert (=> d!1804996 (= condSetEmpty!38341 (= res!2415635 ((as const (Array Context!10202 Bool)) false)))))

(assert (=> d!1804996 (= (choose!43256 z!1189 lambda!309137) res!2415635)))

(declare-fun setIsEmpty!38341 () Bool)

(assert (=> setIsEmpty!38341 setRes!38341))

(declare-fun tp!1584554 () Bool)

(declare-fun e!3518466 () Bool)

(declare-fun setNonEmpty!38341 () Bool)

(declare-fun setElem!38341 () Context!10202)

(assert (=> setNonEmpty!38341 (= setRes!38341 (and tp!1584554 (inv!82539 setElem!38341) e!3518466))))

(declare-fun setRest!38341 () (InoxSet Context!10202))

(assert (=> setNonEmpty!38341 (= res!2415635 ((_ map or) (store ((as const (Array Context!10202 Bool)) false) setElem!38341 true) setRest!38341))))

(declare-fun b!5721794 () Bool)

(declare-fun tp!1584553 () Bool)

(assert (=> b!5721794 (= e!3518466 tp!1584553)))

(assert (= (and d!1804996 condSetEmpty!38341) setIsEmpty!38341))

(assert (= (and d!1804996 (not condSetEmpty!38341)) setNonEmpty!38341))

(assert (= setNonEmpty!38341 b!5721794))

(declare-fun m!6674868 () Bool)

(assert (=> setNonEmpty!38341 m!6674868))

(assert (=> d!1804824 d!1804996))

(assert (=> d!1804748 d!1804770))

(assert (=> d!1804748 d!1804768))

(declare-fun d!1804998 () Bool)

(declare-fun e!3518469 () Bool)

(assert (=> d!1804998 (= (matchZipper!1855 ((_ map or) lt!2278067 lt!2278084) (t!376776 s!2326)) e!3518469)))

(declare-fun res!2415638 () Bool)

(assert (=> d!1804998 (=> res!2415638 e!3518469)))

(assert (=> d!1804998 (= res!2415638 (matchZipper!1855 lt!2278067 (t!376776 s!2326)))))

(assert (=> d!1804998 true))

(declare-fun _$48!1356 () Unit!156400)

(assert (=> d!1804998 (= (choose!43253 lt!2278067 lt!2278084 (t!376776 s!2326)) _$48!1356)))

(declare-fun b!5721797 () Bool)

(assert (=> b!5721797 (= e!3518469 (matchZipper!1855 lt!2278084 (t!376776 s!2326)))))

(assert (= (and d!1804998 (not res!2415638)) b!5721797))

(assert (=> d!1804998 m!6674172))

(assert (=> d!1804998 m!6674154))

(assert (=> b!5721797 m!6674078))

(assert (=> d!1804748 d!1804998))

(declare-fun d!1805000 () Bool)

(assert (=> d!1805000 (= (isDefined!12429 lt!2278169) (not (isEmpty!35205 lt!2278169)))))

(declare-fun bs!1337690 () Bool)

(assert (= bs!1337690 d!1805000))

(declare-fun m!6674870 () Bool)

(assert (=> bs!1337690 m!6674870))

(assert (=> b!5721344 d!1805000))

(declare-fun bs!1337691 () Bool)

(declare-fun d!1805002 () Bool)

(assert (= bs!1337691 (and d!1805002 d!1804742)))

(declare-fun lambda!309212 () Int)

(assert (=> bs!1337691 (= lambda!309212 lambda!309143)))

(declare-fun bs!1337692 () Bool)

(assert (= bs!1337692 (and d!1805002 d!1804878)))

(assert (=> bs!1337692 (= lambda!309212 lambda!309189)))

(declare-fun bs!1337693 () Bool)

(assert (= bs!1337693 (and d!1805002 d!1804902)))

(assert (=> bs!1337693 (= lambda!309212 lambda!309192)))

(declare-fun bs!1337694 () Bool)

(assert (= bs!1337694 (and d!1805002 d!1804954)))

(assert (=> bs!1337694 (= lambda!309212 lambda!309208)))

(declare-fun bs!1337695 () Bool)

(assert (= bs!1337695 (and d!1805002 d!1804746)))

(assert (=> bs!1337695 (= lambda!309212 lambda!309151)))

(declare-fun bs!1337696 () Bool)

(assert (= bs!1337696 (and d!1805002 d!1804826)))

(assert (=> bs!1337696 (= lambda!309212 lambda!309165)))

(assert (=> d!1805002 (= (inv!82539 (h!69775 (t!376775 zl!343))) (forall!14851 (exprs!5601 (h!69775 (t!376775 zl!343))) lambda!309212))))

(declare-fun bs!1337697 () Bool)

(assert (= bs!1337697 d!1805002))

(declare-fun m!6674872 () Bool)

(assert (=> bs!1337697 m!6674872))

(assert (=> b!5721661 d!1805002))

(declare-fun d!1805004 () Bool)

(assert (=> d!1805004 (= (isEmpty!35204 (tail!11209 s!2326)) ((_ is Nil!63328) (tail!11209 s!2326)))))

(assert (=> b!5721613 d!1805004))

(declare-fun d!1805006 () Bool)

(assert (=> d!1805006 (= (tail!11209 s!2326) (t!376776 s!2326))))

(assert (=> b!5721613 d!1805006))

(declare-fun d!1805008 () Bool)

(assert (=> d!1805008 (= (isEmpty!35202 (tail!11208 (unfocusZipperList!1145 zl!343))) ((_ is Nil!63326) (tail!11208 (unfocusZipperList!1145 zl!343))))))

(assert (=> b!5721000 d!1805008))

(declare-fun d!1805010 () Bool)

(assert (=> d!1805010 (= (tail!11208 (unfocusZipperList!1145 zl!343)) (t!376774 (unfocusZipperList!1145 zl!343)))))

(assert (=> b!5721000 d!1805010))

(assert (=> b!5721599 d!1805004))

(assert (=> b!5721599 d!1805006))

(declare-fun d!1805012 () Bool)

(assert (=> d!1805012 (= (isEmpty!35204 (t!376776 s!2326)) ((_ is Nil!63328) (t!376776 s!2326)))))

(assert (=> d!1804882 d!1805012))

(declare-fun d!1805014 () Bool)

(assert (=> d!1805014 (= (Exists!2817 (ite c!1009130 lambda!309202 lambda!309203)) (choose!43257 (ite c!1009130 lambda!309202 lambda!309203)))))

(declare-fun bs!1337698 () Bool)

(assert (= bs!1337698 d!1805014))

(declare-fun m!6674874 () Bool)

(assert (=> bs!1337698 m!6674874))

(assert (=> bm!437152 d!1805014))

(assert (=> d!1804860 d!1804832))

(declare-fun b!5721798 () Bool)

(declare-fun e!3518470 () Bool)

(declare-fun e!3518471 () Bool)

(assert (=> b!5721798 (= e!3518470 e!3518471)))

(declare-fun c!1009166 () Bool)

(assert (=> b!5721798 (= c!1009166 ((_ is Union!15717) (regOne!31946 r!7292)))))

(declare-fun b!5721799 () Bool)

(declare-fun res!2415639 () Bool)

(declare-fun e!3518474 () Bool)

(assert (=> b!5721799 (=> res!2415639 e!3518474)))

(assert (=> b!5721799 (= res!2415639 (not ((_ is Concat!24562) (regOne!31946 r!7292))))))

(assert (=> b!5721799 (= e!3518471 e!3518474)))

(declare-fun b!5721800 () Bool)

(declare-fun e!3518473 () Bool)

(assert (=> b!5721800 (= e!3518474 e!3518473)))

(declare-fun res!2415641 () Bool)

(assert (=> b!5721800 (=> (not res!2415641) (not e!3518473))))

(declare-fun call!437193 () Bool)

(assert (=> b!5721800 (= res!2415641 call!437193)))

(declare-fun c!1009165 () Bool)

(declare-fun call!437191 () Bool)

(declare-fun bm!437186 () Bool)

(assert (=> bm!437186 (= call!437191 (validRegex!7453 (ite c!1009165 (reg!16046 (regOne!31946 r!7292)) (ite c!1009166 (regOne!31947 (regOne!31946 r!7292)) (regOne!31946 (regOne!31946 r!7292))))))))

(declare-fun b!5721801 () Bool)

(declare-fun e!3518475 () Bool)

(assert (=> b!5721801 (= e!3518475 e!3518470)))

(assert (=> b!5721801 (= c!1009165 ((_ is Star!15717) (regOne!31946 r!7292)))))

(declare-fun b!5721802 () Bool)

(declare-fun call!437192 () Bool)

(assert (=> b!5721802 (= e!3518473 call!437192)))

(declare-fun b!5721804 () Bool)

(declare-fun e!3518472 () Bool)

(assert (=> b!5721804 (= e!3518472 call!437191)))

(declare-fun b!5721805 () Bool)

(assert (=> b!5721805 (= e!3518470 e!3518472)))

(declare-fun res!2415640 () Bool)

(assert (=> b!5721805 (= res!2415640 (not (nullable!5749 (reg!16046 (regOne!31946 r!7292)))))))

(assert (=> b!5721805 (=> (not res!2415640) (not e!3518472))))

(declare-fun bm!437187 () Bool)

(assert (=> bm!437187 (= call!437193 call!437191)))

(declare-fun bm!437188 () Bool)

(assert (=> bm!437188 (= call!437192 (validRegex!7453 (ite c!1009166 (regTwo!31947 (regOne!31946 r!7292)) (regTwo!31946 (regOne!31946 r!7292)))))))

(declare-fun b!5721806 () Bool)

(declare-fun e!3518476 () Bool)

(assert (=> b!5721806 (= e!3518476 call!437192)))

(declare-fun d!1805016 () Bool)

(declare-fun res!2415643 () Bool)

(assert (=> d!1805016 (=> res!2415643 e!3518475)))

(assert (=> d!1805016 (= res!2415643 ((_ is ElementMatch!15717) (regOne!31946 r!7292)))))

(assert (=> d!1805016 (= (validRegex!7453 (regOne!31946 r!7292)) e!3518475)))

(declare-fun b!5721803 () Bool)

(declare-fun res!2415642 () Bool)

(assert (=> b!5721803 (=> (not res!2415642) (not e!3518476))))

(assert (=> b!5721803 (= res!2415642 call!437193)))

(assert (=> b!5721803 (= e!3518471 e!3518476)))

(assert (= (and d!1805016 (not res!2415643)) b!5721801))

(assert (= (and b!5721801 c!1009165) b!5721805))

(assert (= (and b!5721801 (not c!1009165)) b!5721798))

(assert (= (and b!5721805 res!2415640) b!5721804))

(assert (= (and b!5721798 c!1009166) b!5721803))

(assert (= (and b!5721798 (not c!1009166)) b!5721799))

(assert (= (and b!5721803 res!2415642) b!5721806))

(assert (= (and b!5721799 (not res!2415639)) b!5721800))

(assert (= (and b!5721800 res!2415641) b!5721802))

(assert (= (or b!5721806 b!5721802) bm!437188))

(assert (= (or b!5721803 b!5721800) bm!437187))

(assert (= (or b!5721804 bm!437187) bm!437186))

(declare-fun m!6674876 () Bool)

(assert (=> bm!437186 m!6674876))

(declare-fun m!6674878 () Bool)

(assert (=> b!5721805 m!6674878))

(declare-fun m!6674880 () Bool)

(assert (=> bm!437188 m!6674880))

(assert (=> d!1804860 d!1805016))

(assert (=> d!1804860 d!1804876))

(declare-fun d!1805018 () Bool)

(assert (=> d!1805018 (= (Exists!2817 lambda!309182) (choose!43257 lambda!309182))))

(declare-fun bs!1337699 () Bool)

(assert (= bs!1337699 d!1805018))

(declare-fun m!6674882 () Bool)

(assert (=> bs!1337699 m!6674882))

(assert (=> d!1804860 d!1805018))

(declare-fun bs!1337700 () Bool)

(declare-fun d!1805020 () Bool)

(assert (= bs!1337700 (and d!1805020 d!1804866)))

(declare-fun lambda!309215 () Int)

(assert (=> bs!1337700 (= lambda!309215 lambda!309187)))

(declare-fun bs!1337701 () Bool)

(assert (= bs!1337701 (and d!1805020 b!5720869)))

(assert (=> bs!1337701 (= lambda!309215 lambda!309135)))

(declare-fun bs!1337702 () Bool)

(assert (= bs!1337702 (and d!1805020 b!5721633)))

(assert (=> bs!1337702 (not (= lambda!309215 lambda!309203))))

(declare-fun bs!1337703 () Bool)

(assert (= bs!1337703 (and d!1805020 b!5721566)))

(assert (=> bs!1337703 (not (= lambda!309215 lambda!309201))))

(declare-fun bs!1337704 () Bool)

(assert (= bs!1337704 (and d!1805020 b!5721731)))

(assert (=> bs!1337704 (not (= lambda!309215 lambda!309209))))

(declare-fun bs!1337705 () Bool)

(assert (= bs!1337705 (and d!1805020 b!5721563)))

(assert (=> bs!1337705 (not (= lambda!309215 lambda!309200))))

(assert (=> bs!1337700 (not (= lambda!309215 lambda!309188))))

(declare-fun bs!1337706 () Bool)

(assert (= bs!1337706 (and d!1805020 b!5721630)))

(assert (=> bs!1337706 (not (= lambda!309215 lambda!309202))))

(assert (=> bs!1337701 (not (= lambda!309215 lambda!309136))))

(declare-fun bs!1337707 () Bool)

(assert (= bs!1337707 (and d!1805020 d!1804860)))

(assert (=> bs!1337707 (= lambda!309215 lambda!309182)))

(declare-fun bs!1337708 () Bool)

(assert (= bs!1337708 (and d!1805020 b!5721734)))

(assert (=> bs!1337708 (not (= lambda!309215 lambda!309210))))

(assert (=> d!1805020 true))

(assert (=> d!1805020 true))

(assert (=> d!1805020 true))

(assert (=> d!1805020 (= (isDefined!12429 (findConcatSeparation!2140 (regOne!31946 r!7292) (regTwo!31946 r!7292) Nil!63328 s!2326 s!2326)) (Exists!2817 lambda!309215))))

(assert (=> d!1805020 true))

(declare-fun _$89!1850 () Unit!156400)

(assert (=> d!1805020 (= (choose!43258 (regOne!31946 r!7292) (regTwo!31946 r!7292) s!2326) _$89!1850)))

(declare-fun bs!1337709 () Bool)

(assert (= bs!1337709 d!1805020))

(assert (=> bs!1337709 m!6674104))

(assert (=> bs!1337709 m!6674104))

(assert (=> bs!1337709 m!6674106))

(declare-fun m!6674884 () Bool)

(assert (=> bs!1337709 m!6674884))

(assert (=> d!1804860 d!1805020))

(declare-fun d!1805022 () Bool)

(declare-fun c!1009167 () Bool)

(assert (=> d!1805022 (= c!1009167 (isEmpty!35204 (tail!11209 s!2326)))))

(declare-fun e!3518479 () Bool)

(assert (=> d!1805022 (= (matchZipper!1855 (derivationStepZipper!1800 z!1189 (head!12114 s!2326)) (tail!11209 s!2326)) e!3518479)))

(declare-fun b!5721811 () Bool)

(assert (=> b!5721811 (= e!3518479 (nullableZipper!1666 (derivationStepZipper!1800 z!1189 (head!12114 s!2326))))))

(declare-fun b!5721812 () Bool)

(assert (=> b!5721812 (= e!3518479 (matchZipper!1855 (derivationStepZipper!1800 (derivationStepZipper!1800 z!1189 (head!12114 s!2326)) (head!12114 (tail!11209 s!2326))) (tail!11209 (tail!11209 s!2326))))))

(assert (= (and d!1805022 c!1009167) b!5721811))

(assert (= (and d!1805022 (not c!1009167)) b!5721812))

(assert (=> d!1805022 m!6674638))

(assert (=> d!1805022 m!6674732))

(assert (=> b!5721811 m!6674652))

(declare-fun m!6674886 () Bool)

(assert (=> b!5721811 m!6674886))

(assert (=> b!5721812 m!6674638))

(declare-fun m!6674888 () Bool)

(assert (=> b!5721812 m!6674888))

(assert (=> b!5721812 m!6674652))

(assert (=> b!5721812 m!6674888))

(declare-fun m!6674890 () Bool)

(assert (=> b!5721812 m!6674890))

(assert (=> b!5721812 m!6674638))

(declare-fun m!6674892 () Bool)

(assert (=> b!5721812 m!6674892))

(assert (=> b!5721812 m!6674890))

(assert (=> b!5721812 m!6674892))

(declare-fun m!6674894 () Bool)

(assert (=> b!5721812 m!6674894))

(assert (=> b!5721451 d!1805022))

(declare-fun bs!1337710 () Bool)

(declare-fun d!1805024 () Bool)

(assert (= bs!1337710 (and d!1805024 b!5720846)))

(declare-fun lambda!309216 () Int)

(assert (=> bs!1337710 (= (= (head!12114 s!2326) (h!69776 s!2326)) (= lambda!309216 lambda!309137))))

(declare-fun bs!1337711 () Bool)

(assert (= bs!1337711 (and d!1805024 d!1804910)))

(assert (=> bs!1337711 (= (= (head!12114 s!2326) (h!69776 s!2326)) (= lambda!309216 lambda!309195))))

(declare-fun bs!1337712 () Bool)

(assert (= bs!1337712 (and d!1805024 d!1804990)))

(assert (=> bs!1337712 (= (= (head!12114 s!2326) (head!12114 (t!376776 s!2326))) (= lambda!309216 lambda!309211))))

(assert (=> d!1805024 true))

(assert (=> d!1805024 (= (derivationStepZipper!1800 z!1189 (head!12114 s!2326)) (flatMap!1330 z!1189 lambda!309216))))

(declare-fun bs!1337713 () Bool)

(assert (= bs!1337713 d!1805024))

(declare-fun m!6674896 () Bool)

(assert (=> bs!1337713 m!6674896))

(assert (=> b!5721451 d!1805024))

(assert (=> b!5721451 d!1804938))

(assert (=> b!5721451 d!1805006))

(declare-fun d!1805026 () Bool)

(declare-fun c!1009168 () Bool)

(assert (=> d!1805026 (= c!1009168 (isEmpty!35204 (tail!11209 (t!376776 s!2326))))))

(declare-fun e!3518480 () Bool)

(assert (=> d!1805026 (= (matchZipper!1855 (derivationStepZipper!1800 lt!2278084 (head!12114 (t!376776 s!2326))) (tail!11209 (t!376776 s!2326))) e!3518480)))

(declare-fun b!5721813 () Bool)

(assert (=> b!5721813 (= e!3518480 (nullableZipper!1666 (derivationStepZipper!1800 lt!2278084 (head!12114 (t!376776 s!2326)))))))

(declare-fun b!5721814 () Bool)

(assert (=> b!5721814 (= e!3518480 (matchZipper!1855 (derivationStepZipper!1800 (derivationStepZipper!1800 lt!2278084 (head!12114 (t!376776 s!2326))) (head!12114 (tail!11209 (t!376776 s!2326)))) (tail!11209 (tail!11209 (t!376776 s!2326)))))))

(assert (= (and d!1805026 c!1009168) b!5721813))

(assert (= (and d!1805026 (not c!1009168)) b!5721814))

(assert (=> d!1805026 m!6674318))

(assert (=> d!1805026 m!6674854))

(assert (=> b!5721813 m!6674348))

(declare-fun m!6674898 () Bool)

(assert (=> b!5721813 m!6674898))

(assert (=> b!5721814 m!6674318))

(assert (=> b!5721814 m!6674858))

(assert (=> b!5721814 m!6674348))

(assert (=> b!5721814 m!6674858))

(declare-fun m!6674900 () Bool)

(assert (=> b!5721814 m!6674900))

(assert (=> b!5721814 m!6674318))

(assert (=> b!5721814 m!6674862))

(assert (=> b!5721814 m!6674900))

(assert (=> b!5721814 m!6674862))

(declare-fun m!6674902 () Bool)

(assert (=> b!5721814 m!6674902))

(assert (=> b!5721090 d!1805026))

(declare-fun bs!1337714 () Bool)

(declare-fun d!1805028 () Bool)

(assert (= bs!1337714 (and d!1805028 b!5720846)))

(declare-fun lambda!309217 () Int)

(assert (=> bs!1337714 (= (= (head!12114 (t!376776 s!2326)) (h!69776 s!2326)) (= lambda!309217 lambda!309137))))

(declare-fun bs!1337715 () Bool)

(assert (= bs!1337715 (and d!1805028 d!1804910)))

(assert (=> bs!1337715 (= (= (head!12114 (t!376776 s!2326)) (h!69776 s!2326)) (= lambda!309217 lambda!309195))))

(declare-fun bs!1337716 () Bool)

(assert (= bs!1337716 (and d!1805028 d!1804990)))

(assert (=> bs!1337716 (= lambda!309217 lambda!309211)))

(declare-fun bs!1337717 () Bool)

(assert (= bs!1337717 (and d!1805028 d!1805024)))

(assert (=> bs!1337717 (= (= (head!12114 (t!376776 s!2326)) (head!12114 s!2326)) (= lambda!309217 lambda!309216))))

(assert (=> d!1805028 true))

(assert (=> d!1805028 (= (derivationStepZipper!1800 lt!2278084 (head!12114 (t!376776 s!2326))) (flatMap!1330 lt!2278084 lambda!309217))))

(declare-fun bs!1337718 () Bool)

(assert (= bs!1337718 d!1805028))

(declare-fun m!6674904 () Bool)

(assert (=> bs!1337718 m!6674904))

(assert (=> b!5721090 d!1805028))

(assert (=> b!5721090 d!1804992))

(assert (=> b!5721090 d!1804994))

(declare-fun bs!1337719 () Bool)

(declare-fun d!1805030 () Bool)

(assert (= bs!1337719 (and d!1805030 d!1804742)))

(declare-fun lambda!309218 () Int)

(assert (=> bs!1337719 (= lambda!309218 lambda!309143)))

(declare-fun bs!1337720 () Bool)

(assert (= bs!1337720 (and d!1805030 d!1804878)))

(assert (=> bs!1337720 (= lambda!309218 lambda!309189)))

(declare-fun bs!1337721 () Bool)

(assert (= bs!1337721 (and d!1805030 d!1804902)))

(assert (=> bs!1337721 (= lambda!309218 lambda!309192)))

(declare-fun bs!1337722 () Bool)

(assert (= bs!1337722 (and d!1805030 d!1804954)))

(assert (=> bs!1337722 (= lambda!309218 lambda!309208)))

(declare-fun bs!1337723 () Bool)

(assert (= bs!1337723 (and d!1805030 d!1804746)))

(assert (=> bs!1337723 (= lambda!309218 lambda!309151)))

(declare-fun bs!1337724 () Bool)

(assert (= bs!1337724 (and d!1805030 d!1805002)))

(assert (=> bs!1337724 (= lambda!309218 lambda!309212)))

(declare-fun bs!1337725 () Bool)

(assert (= bs!1337725 (and d!1805030 d!1804826)))

(assert (=> bs!1337725 (= lambda!309218 lambda!309165)))

(assert (=> d!1805030 (= (inv!82539 setElem!38337) (forall!14851 (exprs!5601 setElem!38337) lambda!309218))))

(declare-fun bs!1337726 () Bool)

(assert (= bs!1337726 d!1805030))

(declare-fun m!6674906 () Bool)

(assert (=> bs!1337726 m!6674906))

(assert (=> setNonEmpty!38337 d!1805030))

(declare-fun b!5721815 () Bool)

(declare-fun e!3518483 () (InoxSet Context!10202))

(assert (=> b!5721815 (= e!3518483 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5721816 () Bool)

(declare-fun e!3518481 () (InoxSet Context!10202))

(assert (=> b!5721816 (= e!3518481 e!3518483)))

(declare-fun c!1009170 () Bool)

(assert (=> b!5721816 (= c!1009170 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))))))))

(declare-fun d!1805032 () Bool)

(declare-fun c!1009169 () Bool)

(declare-fun e!3518482 () Bool)

(assert (=> d!1805032 (= c!1009169 e!3518482)))

(declare-fun res!2415648 () Bool)

(assert (=> d!1805032 (=> (not res!2415648) (not e!3518482))))

(assert (=> d!1805032 (= res!2415648 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))))))))

(assert (=> d!1805032 (= (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (h!69776 s!2326)) e!3518481)))

(declare-fun call!437194 () (InoxSet Context!10202))

(declare-fun b!5721817 () Bool)

(assert (=> b!5721817 (= e!3518481 ((_ map or) call!437194 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))))))) (h!69776 s!2326))))))

(declare-fun b!5721818 () Bool)

(assert (=> b!5721818 (= e!3518483 call!437194)))

(declare-fun bm!437189 () Bool)

(assert (=> bm!437189 (= call!437194 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))))) (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))))))) (h!69776 s!2326)))))

(declare-fun b!5721819 () Bool)

(assert (=> b!5721819 (= e!3518482 (nullable!5749 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))))))))))

(assert (= (and d!1805032 res!2415648) b!5721819))

(assert (= (and d!1805032 c!1009169) b!5721817))

(assert (= (and d!1805032 (not c!1009169)) b!5721816))

(assert (= (and b!5721816 c!1009170) b!5721818))

(assert (= (and b!5721816 (not c!1009170)) b!5721815))

(assert (= (or b!5721817 b!5721818) bm!437189))

(declare-fun m!6674908 () Bool)

(assert (=> b!5721817 m!6674908))

(declare-fun m!6674910 () Bool)

(assert (=> bm!437189 m!6674910))

(declare-fun m!6674912 () Bool)

(assert (=> b!5721819 m!6674912))

(assert (=> b!5721156 d!1805032))

(declare-fun d!1805034 () Bool)

(assert (=> d!1805034 (= (isEmpty!35202 (t!376774 (unfocusZipperList!1145 zl!343))) ((_ is Nil!63326) (t!376774 (unfocusZipperList!1145 zl!343))))))

(assert (=> b!5720996 d!1805034))

(declare-fun b!5721820 () Bool)

(declare-fun e!3518486 () (InoxSet Context!10202))

(assert (=> b!5721820 (= e!3518486 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5721821 () Bool)

(declare-fun e!3518484 () (InoxSet Context!10202))

(assert (=> b!5721821 (= e!3518484 e!3518486)))

(declare-fun c!1009172 () Bool)

(assert (=> b!5721821 (= c!1009172 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278073))))))))

(declare-fun d!1805036 () Bool)

(declare-fun c!1009171 () Bool)

(declare-fun e!3518485 () Bool)

(assert (=> d!1805036 (= c!1009171 e!3518485)))

(declare-fun res!2415649 () Bool)

(assert (=> d!1805036 (=> (not res!2415649) (not e!3518485))))

(assert (=> d!1805036 (= res!2415649 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278073))))))))

(assert (=> d!1805036 (= (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 lt!2278073))) (h!69776 s!2326)) e!3518484)))

(declare-fun b!5721822 () Bool)

(declare-fun call!437195 () (InoxSet Context!10202))

(assert (=> b!5721822 (= e!3518484 ((_ map or) call!437195 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278073)))))) (h!69776 s!2326))))))

(declare-fun b!5721823 () Bool)

(assert (=> b!5721823 (= e!3518486 call!437195)))

(declare-fun bm!437190 () Bool)

(assert (=> bm!437190 (= call!437195 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278073))))) (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278073)))))) (h!69776 s!2326)))))

(declare-fun b!5721824 () Bool)

(assert (=> b!5721824 (= e!3518485 (nullable!5749 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278073)))))))))

(assert (= (and d!1805036 res!2415649) b!5721824))

(assert (= (and d!1805036 c!1009171) b!5721822))

(assert (= (and d!1805036 (not c!1009171)) b!5721821))

(assert (= (and b!5721821 c!1009172) b!5721823))

(assert (= (and b!5721821 (not c!1009172)) b!5721820))

(assert (= (or b!5721822 b!5721823) bm!437190))

(declare-fun m!6674914 () Bool)

(assert (=> b!5721822 m!6674914))

(declare-fun m!6674916 () Bool)

(assert (=> bm!437190 m!6674916))

(declare-fun m!6674918 () Bool)

(assert (=> b!5721824 m!6674918))

(assert (=> b!5721161 d!1805036))

(declare-fun b!5721825 () Bool)

(declare-fun e!3518492 () (InoxSet Context!10202))

(declare-fun call!437197 () (InoxSet Context!10202))

(assert (=> b!5721825 (= e!3518492 call!437197)))

(declare-fun bm!437191 () Bool)

(declare-fun call!437198 () (InoxSet Context!10202))

(assert (=> bm!437191 (= call!437197 call!437198)))

(declare-fun b!5721826 () Bool)

(declare-fun e!3518487 () (InoxSet Context!10202))

(declare-fun call!437196 () (InoxSet Context!10202))

(declare-fun call!437201 () (InoxSet Context!10202))

(assert (=> b!5721826 (= e!3518487 ((_ map or) call!437196 call!437201))))

(declare-fun b!5721827 () Bool)

(declare-fun e!3518490 () (InoxSet Context!10202))

(assert (=> b!5721827 (= e!3518490 (store ((as const (Array Context!10202 Bool)) false) (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343)))) true))))

(declare-fun b!5721828 () Bool)

(declare-fun e!3518489 () (InoxSet Context!10202))

(assert (=> b!5721828 (= e!3518489 e!3518492)))

(declare-fun c!1009177 () Bool)

(assert (=> b!5721828 (= c!1009177 ((_ is Concat!24562) (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun bm!437192 () Bool)

(assert (=> bm!437192 (= call!437198 call!437201)))

(declare-fun b!5721829 () Bool)

(declare-fun c!1009175 () Bool)

(assert (=> b!5721829 (= c!1009175 ((_ is Star!15717) (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun e!3518488 () (InoxSet Context!10202))

(assert (=> b!5721829 (= e!3518492 e!3518488)))

(declare-fun call!437199 () List!63450)

(declare-fun c!1009173 () Bool)

(declare-fun bm!437193 () Bool)

(declare-fun c!1009174 () Bool)

(assert (=> bm!437193 (= call!437201 (derivationStepZipperDown!1059 (ite c!1009173 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009174 (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (ite c!1009177 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (reg!16046 (h!69774 (exprs!5601 (h!69775 zl!343))))))) (ite (or c!1009173 c!1009174) (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343)))) (Context!10203 call!437199)) (h!69776 s!2326)))))

(declare-fun b!5721830 () Bool)

(assert (=> b!5721830 (= e!3518489 ((_ map or) call!437196 call!437198))))

(declare-fun b!5721832 () Bool)

(declare-fun e!3518491 () Bool)

(assert (=> b!5721832 (= e!3518491 (nullable!5749 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343))))))))

(declare-fun call!437200 () List!63450)

(declare-fun bm!437194 () Bool)

(assert (=> bm!437194 (= call!437200 ($colon$colon!1734 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343))))) (ite (or c!1009174 c!1009177) (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))) (h!69774 (exprs!5601 (h!69775 zl!343))))))))

(declare-fun bm!437195 () Bool)

(assert (=> bm!437195 (= call!437196 (derivationStepZipperDown!1059 (ite c!1009173 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343))))) (ite c!1009173 (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343)))) (Context!10203 call!437200)) (h!69776 s!2326)))))

(declare-fun bm!437196 () Bool)

(assert (=> bm!437196 (= call!437199 call!437200)))

(declare-fun b!5721833 () Bool)

(assert (=> b!5721833 (= e!3518490 e!3518487)))

(assert (=> b!5721833 (= c!1009173 ((_ is Union!15717) (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun d!1805038 () Bool)

(declare-fun c!1009176 () Bool)

(assert (=> d!1805038 (= c!1009176 (and ((_ is ElementMatch!15717) (h!69774 (exprs!5601 (h!69775 zl!343)))) (= (c!1008905 (h!69774 (exprs!5601 (h!69775 zl!343)))) (h!69776 s!2326))))))

(assert (=> d!1805038 (= (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (h!69775 zl!343))) (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343)))) (h!69776 s!2326)) e!3518490)))

(declare-fun b!5721831 () Bool)

(assert (=> b!5721831 (= c!1009174 e!3518491)))

(declare-fun res!2415650 () Bool)

(assert (=> b!5721831 (=> (not res!2415650) (not e!3518491))))

(assert (=> b!5721831 (= res!2415650 ((_ is Concat!24562) (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(assert (=> b!5721831 (= e!3518487 e!3518489)))

(declare-fun b!5721834 () Bool)

(assert (=> b!5721834 (= e!3518488 call!437197)))

(declare-fun b!5721835 () Bool)

(assert (=> b!5721835 (= e!3518488 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1805038 c!1009176) b!5721827))

(assert (= (and d!1805038 (not c!1009176)) b!5721833))

(assert (= (and b!5721833 c!1009173) b!5721826))

(assert (= (and b!5721833 (not c!1009173)) b!5721831))

(assert (= (and b!5721831 res!2415650) b!5721832))

(assert (= (and b!5721831 c!1009174) b!5721830))

(assert (= (and b!5721831 (not c!1009174)) b!5721828))

(assert (= (and b!5721828 c!1009177) b!5721825))

(assert (= (and b!5721828 (not c!1009177)) b!5721829))

(assert (= (and b!5721829 c!1009175) b!5721834))

(assert (= (and b!5721829 (not c!1009175)) b!5721835))

(assert (= (or b!5721825 b!5721834) bm!437196))

(assert (= (or b!5721825 b!5721834) bm!437191))

(assert (= (or b!5721830 bm!437196) bm!437194))

(assert (= (or b!5721830 bm!437191) bm!437192))

(assert (= (or b!5721826 bm!437192) bm!437193))

(assert (= (or b!5721826 b!5721830) bm!437195))

(assert (=> b!5721832 m!6674466))

(declare-fun m!6674920 () Bool)

(assert (=> bm!437195 m!6674920))

(declare-fun m!6674922 () Bool)

(assert (=> bm!437193 m!6674922))

(declare-fun m!6674924 () Bool)

(assert (=> bm!437194 m!6674924))

(declare-fun m!6674926 () Bool)

(assert (=> b!5721827 m!6674926))

(assert (=> bm!437102 d!1805038))

(declare-fun b!5721836 () Bool)

(declare-fun e!3518495 () (InoxSet Context!10202))

(assert (=> b!5721836 (= e!3518495 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5721837 () Bool)

(declare-fun e!3518493 () (InoxSet Context!10202))

(assert (=> b!5721837 (= e!3518493 e!3518495)))

(declare-fun c!1009179 () Bool)

(assert (=> b!5721837 (= c!1009179 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278082))))))))

(declare-fun d!1805040 () Bool)

(declare-fun c!1009178 () Bool)

(declare-fun e!3518494 () Bool)

(assert (=> d!1805040 (= c!1009178 e!3518494)))

(declare-fun res!2415651 () Bool)

(assert (=> d!1805040 (=> (not res!2415651) (not e!3518494))))

(assert (=> d!1805040 (= res!2415651 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278082))))))))

(assert (=> d!1805040 (= (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 lt!2278082))) (h!69776 s!2326)) e!3518493)))

(declare-fun b!5721838 () Bool)

(declare-fun call!437202 () (InoxSet Context!10202))

(assert (=> b!5721838 (= e!3518493 ((_ map or) call!437202 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278082)))))) (h!69776 s!2326))))))

(declare-fun b!5721839 () Bool)

(assert (=> b!5721839 (= e!3518495 call!437202)))

(declare-fun bm!437197 () Bool)

(assert (=> bm!437197 (= call!437202 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278082))))) (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278082)))))) (h!69776 s!2326)))))

(declare-fun b!5721840 () Bool)

(assert (=> b!5721840 (= e!3518494 (nullable!5749 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278082)))))))))

(assert (= (and d!1805040 res!2415651) b!5721840))

(assert (= (and d!1805040 c!1009178) b!5721838))

(assert (= (and d!1805040 (not c!1009178)) b!5721837))

(assert (= (and b!5721837 c!1009179) b!5721839))

(assert (= (and b!5721837 (not c!1009179)) b!5721836))

(assert (= (or b!5721838 b!5721839) bm!437197))

(declare-fun m!6674928 () Bool)

(assert (=> b!5721838 m!6674928))

(declare-fun m!6674930 () Bool)

(assert (=> bm!437197 m!6674930))

(declare-fun m!6674932 () Bool)

(assert (=> b!5721840 m!6674932))

(assert (=> b!5721454 d!1805040))

(declare-fun bs!1337727 () Bool)

(declare-fun d!1805042 () Bool)

(assert (= bs!1337727 (and d!1805042 d!1804946)))

(declare-fun lambda!309219 () Int)

(assert (=> bs!1337727 (= lambda!309219 lambda!309206)))

(declare-fun bs!1337728 () Bool)

(assert (= bs!1337728 (and d!1805042 d!1804948)))

(assert (=> bs!1337728 (= lambda!309219 lambda!309207)))

(assert (=> d!1805042 (= (nullableZipper!1666 ((_ map or) lt!2278067 lt!2278084)) (exists!2226 ((_ map or) lt!2278067 lt!2278084) lambda!309219))))

(declare-fun bs!1337729 () Bool)

(assert (= bs!1337729 d!1805042))

(declare-fun m!6674934 () Bool)

(assert (=> bs!1337729 m!6674934))

(assert (=> b!5721076 d!1805042))

(assert (=> d!1804886 d!1804960))

(declare-fun d!1805044 () Bool)

(assert (=> d!1805044 (= (nullable!5749 (reg!16046 r!7292)) (nullableFct!1813 (reg!16046 r!7292)))))

(declare-fun bs!1337730 () Bool)

(assert (= bs!1337730 d!1805044))

(declare-fun m!6674936 () Bool)

(assert (=> bs!1337730 m!6674936))

(assert (=> b!5721524 d!1805044))

(assert (=> d!1804900 d!1804896))

(declare-fun d!1805046 () Bool)

(assert (=> d!1805046 (= (flatMap!1330 lt!2278072 lambda!309137) (dynLambda!24780 lambda!309137 lt!2278081))))

(assert (=> d!1805046 true))

(declare-fun _$13!2403 () Unit!156400)

(assert (=> d!1805046 (= (choose!43255 lt!2278072 lt!2278081 lambda!309137) _$13!2403)))

(declare-fun b_lambda!216203 () Bool)

(assert (=> (not b_lambda!216203) (not d!1805046)))

(declare-fun bs!1337731 () Bool)

(assert (= bs!1337731 d!1805046))

(assert (=> bs!1337731 m!6674120))

(assert (=> bs!1337731 m!6674682))

(assert (=> d!1804900 d!1805046))

(declare-fun d!1805048 () Bool)

(declare-fun res!2415652 () Bool)

(declare-fun e!3518496 () Bool)

(assert (=> d!1805048 (=> res!2415652 e!3518496)))

(assert (=> d!1805048 (= res!2415652 ((_ is Nil!63326) (exprs!5601 (h!69775 zl!343))))))

(assert (=> d!1805048 (= (forall!14851 (exprs!5601 (h!69775 zl!343)) lambda!309189) e!3518496)))

(declare-fun b!5721841 () Bool)

(declare-fun e!3518497 () Bool)

(assert (=> b!5721841 (= e!3518496 e!3518497)))

(declare-fun res!2415653 () Bool)

(assert (=> b!5721841 (=> (not res!2415653) (not e!3518497))))

(assert (=> b!5721841 (= res!2415653 (dynLambda!24781 lambda!309189 (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun b!5721842 () Bool)

(assert (=> b!5721842 (= e!3518497 (forall!14851 (t!376774 (exprs!5601 (h!69775 zl!343))) lambda!309189))))

(assert (= (and d!1805048 (not res!2415652)) b!5721841))

(assert (= (and b!5721841 res!2415653) b!5721842))

(declare-fun b_lambda!216205 () Bool)

(assert (=> (not b_lambda!216205) (not b!5721841)))

(declare-fun m!6674938 () Bool)

(assert (=> b!5721841 m!6674938))

(declare-fun m!6674940 () Bool)

(assert (=> b!5721842 m!6674940))

(assert (=> d!1804878 d!1805048))

(declare-fun b!5721843 () Bool)

(declare-fun e!3518500 () (InoxSet Context!10202))

(assert (=> b!5721843 (= e!3518500 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5721844 () Bool)

(declare-fun e!3518498 () (InoxSet Context!10202))

(assert (=> b!5721844 (= e!3518498 e!3518500)))

(declare-fun c!1009181 () Bool)

(assert (=> b!5721844 (= c!1009181 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278097))))))))

(declare-fun d!1805050 () Bool)

(declare-fun c!1009180 () Bool)

(declare-fun e!3518499 () Bool)

(assert (=> d!1805050 (= c!1009180 e!3518499)))

(declare-fun res!2415654 () Bool)

(assert (=> d!1805050 (=> (not res!2415654) (not e!3518499))))

(assert (=> d!1805050 (= res!2415654 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278097))))))))

(assert (=> d!1805050 (= (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 lt!2278097))) (h!69776 s!2326)) e!3518498)))

(declare-fun call!437203 () (InoxSet Context!10202))

(declare-fun b!5721845 () Bool)

(assert (=> b!5721845 (= e!3518498 ((_ map or) call!437203 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278097)))))) (h!69776 s!2326))))))

(declare-fun b!5721846 () Bool)

(assert (=> b!5721846 (= e!3518500 call!437203)))

(declare-fun bm!437198 () Bool)

(assert (=> bm!437198 (= call!437203 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278097))))) (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278097)))))) (h!69776 s!2326)))))

(declare-fun b!5721847 () Bool)

(assert (=> b!5721847 (= e!3518499 (nullable!5749 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278097)))))))))

(assert (= (and d!1805050 res!2415654) b!5721847))

(assert (= (and d!1805050 c!1009180) b!5721845))

(assert (= (and d!1805050 (not c!1009180)) b!5721844))

(assert (= (and b!5721844 c!1009181) b!5721846))

(assert (= (and b!5721844 (not c!1009181)) b!5721843))

(assert (= (or b!5721845 b!5721846) bm!437198))

(declare-fun m!6674942 () Bool)

(assert (=> b!5721845 m!6674942))

(declare-fun m!6674944 () Bool)

(assert (=> bm!437198 m!6674944))

(declare-fun m!6674946 () Bool)

(assert (=> b!5721847 m!6674946))

(assert (=> b!5721494 d!1805050))

(declare-fun d!1805052 () Bool)

(assert (=> d!1805052 (= (flatMap!1330 lt!2278092 lambda!309195) (choose!43256 lt!2278092 lambda!309195))))

(declare-fun bs!1337732 () Bool)

(assert (= bs!1337732 d!1805052))

(declare-fun m!6674948 () Bool)

(assert (=> bs!1337732 m!6674948))

(assert (=> d!1804910 d!1805052))

(declare-fun d!1805054 () Bool)

(assert (=> d!1805054 (= (isEmpty!35202 (exprs!5601 (h!69775 zl!343))) ((_ is Nil!63326) (exprs!5601 (h!69775 zl!343))))))

(assert (=> b!5721489 d!1805054))

(declare-fun b!5721848 () Bool)

(declare-fun e!3518506 () (InoxSet Context!10202))

(declare-fun call!437205 () (InoxSet Context!10202))

(assert (=> b!5721848 (= e!3518506 call!437205)))

(declare-fun bm!437199 () Bool)

(declare-fun call!437206 () (InoxSet Context!10202))

(assert (=> bm!437199 (= call!437205 call!437206)))

(declare-fun b!5721849 () Bool)

(declare-fun e!3518501 () (InoxSet Context!10202))

(declare-fun call!437204 () (InoxSet Context!10202))

(declare-fun call!437209 () (InoxSet Context!10202))

(assert (=> b!5721849 (= e!3518501 ((_ map or) call!437204 call!437209))))

(declare-fun b!5721850 () Bool)

(declare-fun e!3518504 () (InoxSet Context!10202))

(assert (=> b!5721850 (= e!3518504 (store ((as const (Array Context!10202 Bool)) false) (ite c!1009023 lt!2278073 (Context!10203 call!437124)) true))))

(declare-fun b!5721851 () Bool)

(declare-fun e!3518503 () (InoxSet Context!10202))

(assert (=> b!5721851 (= e!3518503 e!3518506)))

(declare-fun c!1009186 () Bool)

(assert (=> b!5721851 (= c!1009186 ((_ is Concat!24562) (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))))))

(declare-fun bm!437200 () Bool)

(assert (=> bm!437200 (= call!437206 call!437209)))

(declare-fun b!5721852 () Bool)

(declare-fun c!1009184 () Bool)

(assert (=> b!5721852 (= c!1009184 ((_ is Star!15717) (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))))))

(declare-fun e!3518502 () (InoxSet Context!10202))

(assert (=> b!5721852 (= e!3518506 e!3518502)))

(declare-fun call!437207 () List!63450)

(declare-fun bm!437201 () Bool)

(declare-fun c!1009182 () Bool)

(declare-fun c!1009183 () Bool)

(assert (=> bm!437201 (= call!437209 (derivationStepZipperDown!1059 (ite c!1009182 (regTwo!31947 (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))) (ite c!1009183 (regTwo!31946 (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))) (ite c!1009186 (regOne!31946 (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))) (reg!16046 (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343))))))))) (ite (or c!1009182 c!1009183) (ite c!1009023 lt!2278073 (Context!10203 call!437124)) (Context!10203 call!437207)) (h!69776 s!2326)))))

(declare-fun b!5721853 () Bool)

(assert (=> b!5721853 (= e!3518503 ((_ map or) call!437204 call!437206))))

(declare-fun b!5721855 () Bool)

(declare-fun e!3518505 () Bool)

(assert (=> b!5721855 (= e!3518505 (nullable!5749 (regOne!31946 (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343))))))))))

(declare-fun call!437208 () List!63450)

(declare-fun bm!437202 () Bool)

(assert (=> bm!437202 (= call!437208 ($colon$colon!1734 (exprs!5601 (ite c!1009023 lt!2278073 (Context!10203 call!437124))) (ite (or c!1009183 c!1009186) (regTwo!31946 (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))) (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343))))))))))

(declare-fun bm!437203 () Bool)

(assert (=> bm!437203 (= call!437204 (derivationStepZipperDown!1059 (ite c!1009182 (regOne!31947 (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))) (regOne!31946 (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343))))))) (ite c!1009182 (ite c!1009023 lt!2278073 (Context!10203 call!437124)) (Context!10203 call!437208)) (h!69776 s!2326)))))

(declare-fun bm!437204 () Bool)

(assert (=> bm!437204 (= call!437207 call!437208)))

(declare-fun b!5721856 () Bool)

(assert (=> b!5721856 (= e!3518504 e!3518501)))

(assert (=> b!5721856 (= c!1009182 ((_ is Union!15717) (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))))))

(declare-fun c!1009185 () Bool)

(declare-fun d!1805056 () Bool)

(assert (=> d!1805056 (= c!1009185 (and ((_ is ElementMatch!15717) (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))) (= (c!1008905 (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))) (h!69776 s!2326))))))

(assert (=> d!1805056 (= (derivationStepZipperDown!1059 (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343))))) (ite c!1009023 lt!2278073 (Context!10203 call!437124)) (h!69776 s!2326)) e!3518504)))

(declare-fun b!5721854 () Bool)

(assert (=> b!5721854 (= c!1009183 e!3518505)))

(declare-fun res!2415655 () Bool)

(assert (=> b!5721854 (=> (not res!2415655) (not e!3518505))))

(assert (=> b!5721854 (= res!2415655 ((_ is Concat!24562) (ite c!1009023 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))))))

(assert (=> b!5721854 (= e!3518501 e!3518503)))

(declare-fun b!5721857 () Bool)

(assert (=> b!5721857 (= e!3518502 call!437205)))

(declare-fun b!5721858 () Bool)

(assert (=> b!5721858 (= e!3518502 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1805056 c!1009185) b!5721850))

(assert (= (and d!1805056 (not c!1009185)) b!5721856))

(assert (= (and b!5721856 c!1009182) b!5721849))

(assert (= (and b!5721856 (not c!1009182)) b!5721854))

(assert (= (and b!5721854 res!2415655) b!5721855))

(assert (= (and b!5721854 c!1009183) b!5721853))

(assert (= (and b!5721854 (not c!1009183)) b!5721851))

(assert (= (and b!5721851 c!1009186) b!5721848))

(assert (= (and b!5721851 (not c!1009186)) b!5721852))

(assert (= (and b!5721852 c!1009184) b!5721857))

(assert (= (and b!5721852 (not c!1009184)) b!5721858))

(assert (= (or b!5721848 b!5721857) bm!437204))

(assert (= (or b!5721848 b!5721857) bm!437199))

(assert (= (or b!5721853 bm!437204) bm!437202))

(assert (= (or b!5721853 bm!437199) bm!437200))

(assert (= (or b!5721849 bm!437200) bm!437201))

(assert (= (or b!5721849 b!5721853) bm!437203))

(declare-fun m!6674950 () Bool)

(assert (=> b!5721855 m!6674950))

(declare-fun m!6674952 () Bool)

(assert (=> bm!437203 m!6674952))

(declare-fun m!6674954 () Bool)

(assert (=> bm!437201 m!6674954))

(declare-fun m!6674956 () Bool)

(assert (=> bm!437202 m!6674956))

(declare-fun m!6674958 () Bool)

(assert (=> b!5721850 m!6674958))

(assert (=> bm!437119 d!1805056))

(declare-fun d!1805058 () Bool)

(declare-fun res!2415656 () Bool)

(declare-fun e!3518507 () Bool)

(assert (=> d!1805058 (=> res!2415656 e!3518507)))

(assert (=> d!1805058 (= res!2415656 ((_ is Nil!63326) (exprs!5601 setElem!38331)))))

(assert (=> d!1805058 (= (forall!14851 (exprs!5601 setElem!38331) lambda!309165) e!3518507)))

(declare-fun b!5721859 () Bool)

(declare-fun e!3518508 () Bool)

(assert (=> b!5721859 (= e!3518507 e!3518508)))

(declare-fun res!2415657 () Bool)

(assert (=> b!5721859 (=> (not res!2415657) (not e!3518508))))

(assert (=> b!5721859 (= res!2415657 (dynLambda!24781 lambda!309165 (h!69774 (exprs!5601 setElem!38331))))))

(declare-fun b!5721860 () Bool)

(assert (=> b!5721860 (= e!3518508 (forall!14851 (t!376774 (exprs!5601 setElem!38331)) lambda!309165))))

(assert (= (and d!1805058 (not res!2415656)) b!5721859))

(assert (= (and b!5721859 res!2415657) b!5721860))

(declare-fun b_lambda!216207 () Bool)

(assert (=> (not b_lambda!216207) (not b!5721859)))

(declare-fun m!6674960 () Bool)

(assert (=> b!5721859 m!6674960))

(declare-fun m!6674962 () Bool)

(assert (=> b!5721860 m!6674962))

(assert (=> d!1804826 d!1805058))

(declare-fun d!1805060 () Bool)

(assert (=> d!1805060 (= (Exists!2817 lambda!309187) (choose!43257 lambda!309187))))

(declare-fun bs!1337733 () Bool)

(assert (= bs!1337733 d!1805060))

(declare-fun m!6674964 () Bool)

(assert (=> bs!1337733 m!6674964))

(assert (=> d!1804866 d!1805060))

(declare-fun d!1805062 () Bool)

(assert (=> d!1805062 (= (Exists!2817 lambda!309188) (choose!43257 lambda!309188))))

(declare-fun bs!1337734 () Bool)

(assert (= bs!1337734 d!1805062))

(declare-fun m!6674966 () Bool)

(assert (=> bs!1337734 m!6674966))

(assert (=> d!1804866 d!1805062))

(declare-fun bs!1337735 () Bool)

(declare-fun d!1805064 () Bool)

(assert (= bs!1337735 (and d!1805064 d!1804866)))

(declare-fun lambda!309224 () Int)

(assert (=> bs!1337735 (= lambda!309224 lambda!309187)))

(declare-fun bs!1337736 () Bool)

(assert (= bs!1337736 (and d!1805064 b!5720869)))

(assert (=> bs!1337736 (= lambda!309224 lambda!309135)))

(declare-fun bs!1337737 () Bool)

(assert (= bs!1337737 (and d!1805064 b!5721633)))

(assert (=> bs!1337737 (not (= lambda!309224 lambda!309203))))

(declare-fun bs!1337738 () Bool)

(assert (= bs!1337738 (and d!1805064 b!5721566)))

(assert (=> bs!1337738 (not (= lambda!309224 lambda!309201))))

(declare-fun bs!1337739 () Bool)

(assert (= bs!1337739 (and d!1805064 b!5721731)))

(assert (=> bs!1337739 (not (= lambda!309224 lambda!309209))))

(assert (=> bs!1337735 (not (= lambda!309224 lambda!309188))))

(declare-fun bs!1337740 () Bool)

(assert (= bs!1337740 (and d!1805064 b!5721630)))

(assert (=> bs!1337740 (not (= lambda!309224 lambda!309202))))

(assert (=> bs!1337736 (not (= lambda!309224 lambda!309136))))

(declare-fun bs!1337741 () Bool)

(assert (= bs!1337741 (and d!1805064 d!1805020)))

(assert (=> bs!1337741 (= lambda!309224 lambda!309215)))

(declare-fun bs!1337742 () Bool)

(assert (= bs!1337742 (and d!1805064 b!5721563)))

(assert (=> bs!1337742 (not (= lambda!309224 lambda!309200))))

(declare-fun bs!1337743 () Bool)

(assert (= bs!1337743 (and d!1805064 d!1804860)))

(assert (=> bs!1337743 (= lambda!309224 lambda!309182)))

(declare-fun bs!1337744 () Bool)

(assert (= bs!1337744 (and d!1805064 b!5721734)))

(assert (=> bs!1337744 (not (= lambda!309224 lambda!309210))))

(assert (=> d!1805064 true))

(assert (=> d!1805064 true))

(assert (=> d!1805064 true))

(declare-fun lambda!309225 () Int)

(assert (=> bs!1337735 (not (= lambda!309225 lambda!309187))))

(declare-fun bs!1337745 () Bool)

(assert (= bs!1337745 d!1805064))

(assert (=> bs!1337745 (not (= lambda!309225 lambda!309224))))

(assert (=> bs!1337736 (not (= lambda!309225 lambda!309135))))

(assert (=> bs!1337737 (= (and (= (regOne!31946 r!7292) (regOne!31946 lt!2278086)) (= (regTwo!31946 r!7292) (regTwo!31946 lt!2278086))) (= lambda!309225 lambda!309203))))

(assert (=> bs!1337738 (= lambda!309225 lambda!309201)))

(assert (=> bs!1337739 (not (= lambda!309225 lambda!309209))))

(assert (=> bs!1337735 (= lambda!309225 lambda!309188)))

(assert (=> bs!1337740 (not (= lambda!309225 lambda!309202))))

(assert (=> bs!1337736 (= lambda!309225 lambda!309136)))

(assert (=> bs!1337741 (not (= lambda!309225 lambda!309215))))

(assert (=> bs!1337742 (not (= lambda!309225 lambda!309200))))

(assert (=> bs!1337743 (not (= lambda!309225 lambda!309182))))

(assert (=> bs!1337744 (= (and (= (regOne!31946 r!7292) (regOne!31946 (regOne!31947 r!7292))) (= (regTwo!31946 r!7292) (regTwo!31946 (regOne!31947 r!7292)))) (= lambda!309225 lambda!309210))))

(assert (=> d!1805064 true))

(assert (=> d!1805064 true))

(assert (=> d!1805064 true))

(assert (=> d!1805064 (= (Exists!2817 lambda!309224) (Exists!2817 lambda!309225))))

(assert (=> d!1805064 true))

(declare-fun _$90!1474 () Unit!156400)

(assert (=> d!1805064 (= (choose!43259 (regOne!31946 r!7292) (regTwo!31946 r!7292) s!2326) _$90!1474)))

(declare-fun m!6674968 () Bool)

(assert (=> bs!1337745 m!6674968))

(declare-fun m!6674970 () Bool)

(assert (=> bs!1337745 m!6674970))

(assert (=> d!1804866 d!1805064))

(assert (=> d!1804866 d!1805016))

(assert (=> bm!437153 d!1804960))

(declare-fun d!1805066 () Bool)

(assert (=> d!1805066 (= (head!12113 (exprs!5601 (h!69775 zl!343))) (h!69774 (exprs!5601 (h!69775 zl!343))))))

(assert (=> b!5721485 d!1805066))

(assert (=> bs!1337653 d!1804898))

(declare-fun d!1805068 () Bool)

(assert (=> d!1805068 (= (nullable!5749 (h!69774 (exprs!5601 lt!2278081))) (nullableFct!1813 (h!69774 (exprs!5601 lt!2278081))))))

(declare-fun bs!1337746 () Bool)

(assert (= bs!1337746 d!1805068))

(declare-fun m!6674972 () Bool)

(assert (=> bs!1337746 m!6674972))

(assert (=> b!5721461 d!1805068))

(declare-fun d!1805070 () Bool)

(assert (=> d!1805070 (= (isEmpty!35205 (findConcatSeparation!2140 (regOne!31946 r!7292) (regTwo!31946 r!7292) Nil!63328 s!2326 s!2326)) (not ((_ is Some!15725) (findConcatSeparation!2140 (regOne!31946 r!7292) (regTwo!31946 r!7292) Nil!63328 s!2326 s!2326))))))

(assert (=> d!1804876 d!1805070))

(declare-fun bs!1337747 () Bool)

(declare-fun d!1805072 () Bool)

(assert (= bs!1337747 (and d!1805072 d!1804946)))

(declare-fun lambda!309226 () Int)

(assert (=> bs!1337747 (= lambda!309226 lambda!309206)))

(declare-fun bs!1337748 () Bool)

(assert (= bs!1337748 (and d!1805072 d!1804948)))

(assert (=> bs!1337748 (= lambda!309226 lambda!309207)))

(declare-fun bs!1337749 () Bool)

(assert (= bs!1337749 (and d!1805072 d!1805042)))

(assert (=> bs!1337749 (= lambda!309226 lambda!309219)))

(assert (=> d!1805072 (= (nullableZipper!1666 lt!2278092) (exists!2226 lt!2278092 lambda!309226))))

(declare-fun bs!1337750 () Bool)

(assert (= bs!1337750 d!1805072))

(declare-fun m!6674974 () Bool)

(assert (=> bs!1337750 m!6674974))

(assert (=> b!5721446 d!1805072))

(declare-fun bs!1337751 () Bool)

(declare-fun b!5721874 () Bool)

(assert (= bs!1337751 (and b!5721874 d!1804866)))

(declare-fun lambda!309227 () Int)

(assert (=> bs!1337751 (not (= lambda!309227 lambda!309187))))

(declare-fun bs!1337752 () Bool)

(assert (= bs!1337752 (and b!5721874 d!1805064)))

(assert (=> bs!1337752 (not (= lambda!309227 lambda!309224))))

(declare-fun bs!1337753 () Bool)

(assert (= bs!1337753 (and b!5721874 b!5720869)))

(assert (=> bs!1337753 (not (= lambda!309227 lambda!309135))))

(declare-fun bs!1337754 () Bool)

(assert (= bs!1337754 (and b!5721874 b!5721633)))

(assert (=> bs!1337754 (not (= lambda!309227 lambda!309203))))

(declare-fun bs!1337755 () Bool)

(assert (= bs!1337755 (and b!5721874 b!5721566)))

(assert (=> bs!1337755 (not (= lambda!309227 lambda!309201))))

(declare-fun bs!1337756 () Bool)

(assert (= bs!1337756 (and b!5721874 b!5721731)))

(assert (=> bs!1337756 (= (and (= (reg!16046 (regOne!31947 lt!2278086)) (reg!16046 (regOne!31947 r!7292))) (= (regOne!31947 lt!2278086) (regOne!31947 r!7292))) (= lambda!309227 lambda!309209))))

(assert (=> bs!1337751 (not (= lambda!309227 lambda!309188))))

(assert (=> bs!1337752 (not (= lambda!309227 lambda!309225))))

(declare-fun bs!1337757 () Bool)

(assert (= bs!1337757 (and b!5721874 b!5721630)))

(assert (=> bs!1337757 (= (and (= (reg!16046 (regOne!31947 lt!2278086)) (reg!16046 lt!2278086)) (= (regOne!31947 lt!2278086) lt!2278086)) (= lambda!309227 lambda!309202))))

(assert (=> bs!1337753 (not (= lambda!309227 lambda!309136))))

(declare-fun bs!1337758 () Bool)

(assert (= bs!1337758 (and b!5721874 d!1805020)))

(assert (=> bs!1337758 (not (= lambda!309227 lambda!309215))))

(declare-fun bs!1337759 () Bool)

(assert (= bs!1337759 (and b!5721874 b!5721563)))

(assert (=> bs!1337759 (= (and (= (reg!16046 (regOne!31947 lt!2278086)) (reg!16046 r!7292)) (= (regOne!31947 lt!2278086) r!7292)) (= lambda!309227 lambda!309200))))

(declare-fun bs!1337760 () Bool)

(assert (= bs!1337760 (and b!5721874 d!1804860)))

(assert (=> bs!1337760 (not (= lambda!309227 lambda!309182))))

(declare-fun bs!1337761 () Bool)

(assert (= bs!1337761 (and b!5721874 b!5721734)))

(assert (=> bs!1337761 (not (= lambda!309227 lambda!309210))))

(assert (=> b!5721874 true))

(assert (=> b!5721874 true))

(declare-fun bs!1337762 () Bool)

(declare-fun b!5721877 () Bool)

(assert (= bs!1337762 (and b!5721877 d!1804866)))

(declare-fun lambda!309228 () Int)

(assert (=> bs!1337762 (not (= lambda!309228 lambda!309187))))

(declare-fun bs!1337763 () Bool)

(assert (= bs!1337763 (and b!5721877 d!1805064)))

(assert (=> bs!1337763 (not (= lambda!309228 lambda!309224))))

(declare-fun bs!1337764 () Bool)

(assert (= bs!1337764 (and b!5721877 b!5720869)))

(assert (=> bs!1337764 (not (= lambda!309228 lambda!309135))))

(declare-fun bs!1337765 () Bool)

(assert (= bs!1337765 (and b!5721877 b!5721633)))

(assert (=> bs!1337765 (= (and (= (regOne!31946 (regOne!31947 lt!2278086)) (regOne!31946 lt!2278086)) (= (regTwo!31946 (regOne!31947 lt!2278086)) (regTwo!31946 lt!2278086))) (= lambda!309228 lambda!309203))))

(declare-fun bs!1337766 () Bool)

(assert (= bs!1337766 (and b!5721877 b!5721566)))

(assert (=> bs!1337766 (= (and (= (regOne!31946 (regOne!31947 lt!2278086)) (regOne!31946 r!7292)) (= (regTwo!31946 (regOne!31947 lt!2278086)) (regTwo!31946 r!7292))) (= lambda!309228 lambda!309201))))

(declare-fun bs!1337767 () Bool)

(assert (= bs!1337767 (and b!5721877 b!5721731)))

(assert (=> bs!1337767 (not (= lambda!309228 lambda!309209))))

(declare-fun bs!1337768 () Bool)

(assert (= bs!1337768 (and b!5721877 b!5721874)))

(assert (=> bs!1337768 (not (= lambda!309228 lambda!309227))))

(assert (=> bs!1337762 (= (and (= (regOne!31946 (regOne!31947 lt!2278086)) (regOne!31946 r!7292)) (= (regTwo!31946 (regOne!31947 lt!2278086)) (regTwo!31946 r!7292))) (= lambda!309228 lambda!309188))))

(assert (=> bs!1337763 (= (and (= (regOne!31946 (regOne!31947 lt!2278086)) (regOne!31946 r!7292)) (= (regTwo!31946 (regOne!31947 lt!2278086)) (regTwo!31946 r!7292))) (= lambda!309228 lambda!309225))))

(declare-fun bs!1337769 () Bool)

(assert (= bs!1337769 (and b!5721877 b!5721630)))

(assert (=> bs!1337769 (not (= lambda!309228 lambda!309202))))

(assert (=> bs!1337764 (= (and (= (regOne!31946 (regOne!31947 lt!2278086)) (regOne!31946 r!7292)) (= (regTwo!31946 (regOne!31947 lt!2278086)) (regTwo!31946 r!7292))) (= lambda!309228 lambda!309136))))

(declare-fun bs!1337770 () Bool)

(assert (= bs!1337770 (and b!5721877 d!1805020)))

(assert (=> bs!1337770 (not (= lambda!309228 lambda!309215))))

(declare-fun bs!1337771 () Bool)

(assert (= bs!1337771 (and b!5721877 b!5721563)))

(assert (=> bs!1337771 (not (= lambda!309228 lambda!309200))))

(declare-fun bs!1337772 () Bool)

(assert (= bs!1337772 (and b!5721877 d!1804860)))

(assert (=> bs!1337772 (not (= lambda!309228 lambda!309182))))

(declare-fun bs!1337773 () Bool)

(assert (= bs!1337773 (and b!5721877 b!5721734)))

(assert (=> bs!1337773 (= (and (= (regOne!31946 (regOne!31947 lt!2278086)) (regOne!31946 (regOne!31947 r!7292))) (= (regTwo!31946 (regOne!31947 lt!2278086)) (regTwo!31946 (regOne!31947 r!7292)))) (= lambda!309228 lambda!309210))))

(assert (=> b!5721877 true))

(assert (=> b!5721877 true))

(declare-fun b!5721869 () Bool)

(declare-fun e!3518515 () Bool)

(declare-fun call!437211 () Bool)

(assert (=> b!5721869 (= e!3518515 call!437211)))

(declare-fun b!5721870 () Bool)

(declare-fun res!2415668 () Bool)

(declare-fun e!3518519 () Bool)

(assert (=> b!5721870 (=> res!2415668 e!3518519)))

(assert (=> b!5721870 (= res!2415668 call!437211)))

(declare-fun e!3518517 () Bool)

(assert (=> b!5721870 (= e!3518517 e!3518519)))

(declare-fun b!5721871 () Bool)

(declare-fun e!3518516 () Bool)

(assert (=> b!5721871 (= e!3518516 (= s!2326 (Cons!63328 (c!1008905 (regOne!31947 lt!2278086)) Nil!63328)))))

(declare-fun call!437210 () Bool)

(declare-fun bm!437205 () Bool)

(declare-fun c!1009189 () Bool)

(assert (=> bm!437205 (= call!437210 (Exists!2817 (ite c!1009189 lambda!309227 lambda!309228)))))

(declare-fun b!5721872 () Bool)

(declare-fun e!3518514 () Bool)

(assert (=> b!5721872 (= e!3518515 e!3518514)))

(declare-fun res!2415667 () Bool)

(assert (=> b!5721872 (= res!2415667 (not ((_ is EmptyLang!15717) (regOne!31947 lt!2278086))))))

(assert (=> b!5721872 (=> (not res!2415667) (not e!3518514))))

(declare-fun b!5721873 () Bool)

(declare-fun c!1009187 () Bool)

(assert (=> b!5721873 (= c!1009187 ((_ is Union!15717) (regOne!31947 lt!2278086)))))

(declare-fun e!3518513 () Bool)

(assert (=> b!5721873 (= e!3518516 e!3518513)))

(declare-fun d!1805074 () Bool)

(declare-fun c!1009188 () Bool)

(assert (=> d!1805074 (= c!1009188 ((_ is EmptyExpr!15717) (regOne!31947 lt!2278086)))))

(assert (=> d!1805074 (= (matchRSpec!2820 (regOne!31947 lt!2278086) s!2326) e!3518515)))

(assert (=> b!5721874 (= e!3518519 call!437210)))

(declare-fun b!5721875 () Bool)

(declare-fun c!1009190 () Bool)

(assert (=> b!5721875 (= c!1009190 ((_ is ElementMatch!15717) (regOne!31947 lt!2278086)))))

(assert (=> b!5721875 (= e!3518514 e!3518516)))

(declare-fun b!5721876 () Bool)

(declare-fun e!3518518 () Bool)

(assert (=> b!5721876 (= e!3518513 e!3518518)))

(declare-fun res!2415666 () Bool)

(assert (=> b!5721876 (= res!2415666 (matchRSpec!2820 (regOne!31947 (regOne!31947 lt!2278086)) s!2326))))

(assert (=> b!5721876 (=> res!2415666 e!3518518)))

(assert (=> b!5721877 (= e!3518517 call!437210)))

(declare-fun b!5721878 () Bool)

(assert (=> b!5721878 (= e!3518518 (matchRSpec!2820 (regTwo!31947 (regOne!31947 lt!2278086)) s!2326))))

(declare-fun b!5721879 () Bool)

(assert (=> b!5721879 (= e!3518513 e!3518517)))

(assert (=> b!5721879 (= c!1009189 ((_ is Star!15717) (regOne!31947 lt!2278086)))))

(declare-fun bm!437206 () Bool)

(assert (=> bm!437206 (= call!437211 (isEmpty!35204 s!2326))))

(assert (= (and d!1805074 c!1009188) b!5721869))

(assert (= (and d!1805074 (not c!1009188)) b!5721872))

(assert (= (and b!5721872 res!2415667) b!5721875))

(assert (= (and b!5721875 c!1009190) b!5721871))

(assert (= (and b!5721875 (not c!1009190)) b!5721873))

(assert (= (and b!5721873 c!1009187) b!5721876))

(assert (= (and b!5721873 (not c!1009187)) b!5721879))

(assert (= (and b!5721876 (not res!2415666)) b!5721878))

(assert (= (and b!5721879 c!1009189) b!5721870))

(assert (= (and b!5721879 (not c!1009189)) b!5721877))

(assert (= (and b!5721870 (not res!2415668)) b!5721874))

(assert (= (or b!5721874 b!5721877) bm!437205))

(assert (= (or b!5721869 b!5721870) bm!437206))

(declare-fun m!6674976 () Bool)

(assert (=> bm!437205 m!6674976))

(declare-fun m!6674978 () Bool)

(assert (=> b!5721876 m!6674978))

(declare-fun m!6674980 () Bool)

(assert (=> b!5721878 m!6674980))

(assert (=> bm!437206 m!6674630))

(assert (=> b!5721632 d!1805074))

(declare-fun b!5721880 () Bool)

(declare-fun e!3518524 () Bool)

(assert (=> b!5721880 (= e!3518524 (matchR!7902 (derivativeStep!4520 (regTwo!31946 r!7292) (head!12114 (_2!36117 (get!21834 lt!2278169)))) (tail!11209 (_2!36117 (get!21834 lt!2278169)))))))

(declare-fun b!5721881 () Bool)

(declare-fun e!3518522 () Bool)

(assert (=> b!5721881 (= e!3518522 (= (head!12114 (_2!36117 (get!21834 lt!2278169))) (c!1008905 (regTwo!31946 r!7292))))))

(declare-fun b!5721882 () Bool)

(declare-fun res!2415671 () Bool)

(assert (=> b!5721882 (=> (not res!2415671) (not e!3518522))))

(assert (=> b!5721882 (= res!2415671 (isEmpty!35204 (tail!11209 (_2!36117 (get!21834 lt!2278169)))))))

(declare-fun b!5721883 () Bool)

(declare-fun res!2415675 () Bool)

(declare-fun e!3518525 () Bool)

(assert (=> b!5721883 (=> res!2415675 e!3518525)))

(assert (=> b!5721883 (= res!2415675 e!3518522)))

(declare-fun res!2415672 () Bool)

(assert (=> b!5721883 (=> (not res!2415672) (not e!3518522))))

(declare-fun lt!2278200 () Bool)

(assert (=> b!5721883 (= res!2415672 lt!2278200)))

(declare-fun b!5721884 () Bool)

(declare-fun res!2415673 () Bool)

(assert (=> b!5721884 (=> res!2415673 e!3518525)))

(assert (=> b!5721884 (= res!2415673 (not ((_ is ElementMatch!15717) (regTwo!31946 r!7292))))))

(declare-fun e!3518523 () Bool)

(assert (=> b!5721884 (= e!3518523 e!3518525)))

(declare-fun b!5721885 () Bool)

(declare-fun e!3518520 () Bool)

(declare-fun e!3518521 () Bool)

(assert (=> b!5721885 (= e!3518520 e!3518521)))

(declare-fun res!2415676 () Bool)

(assert (=> b!5721885 (=> res!2415676 e!3518521)))

(declare-fun call!437212 () Bool)

(assert (=> b!5721885 (= res!2415676 call!437212)))

(declare-fun b!5721886 () Bool)

(assert (=> b!5721886 (= e!3518525 e!3518520)))

(declare-fun res!2415669 () Bool)

(assert (=> b!5721886 (=> (not res!2415669) (not e!3518520))))

(assert (=> b!5721886 (= res!2415669 (not lt!2278200))))

(declare-fun d!1805076 () Bool)

(declare-fun e!3518526 () Bool)

(assert (=> d!1805076 e!3518526))

(declare-fun c!1009192 () Bool)

(assert (=> d!1805076 (= c!1009192 ((_ is EmptyExpr!15717) (regTwo!31946 r!7292)))))

(assert (=> d!1805076 (= lt!2278200 e!3518524)))

(declare-fun c!1009193 () Bool)

(assert (=> d!1805076 (= c!1009193 (isEmpty!35204 (_2!36117 (get!21834 lt!2278169))))))

(assert (=> d!1805076 (validRegex!7453 (regTwo!31946 r!7292))))

(assert (=> d!1805076 (= (matchR!7902 (regTwo!31946 r!7292) (_2!36117 (get!21834 lt!2278169))) lt!2278200)))

(declare-fun b!5721887 () Bool)

(assert (=> b!5721887 (= e!3518526 e!3518523)))

(declare-fun c!1009191 () Bool)

(assert (=> b!5721887 (= c!1009191 ((_ is EmptyLang!15717) (regTwo!31946 r!7292)))))

(declare-fun b!5721888 () Bool)

(assert (=> b!5721888 (= e!3518521 (not (= (head!12114 (_2!36117 (get!21834 lt!2278169))) (c!1008905 (regTwo!31946 r!7292)))))))

(declare-fun b!5721889 () Bool)

(declare-fun res!2415670 () Bool)

(assert (=> b!5721889 (=> res!2415670 e!3518521)))

(assert (=> b!5721889 (= res!2415670 (not (isEmpty!35204 (tail!11209 (_2!36117 (get!21834 lt!2278169))))))))

(declare-fun b!5721890 () Bool)

(assert (=> b!5721890 (= e!3518523 (not lt!2278200))))

(declare-fun b!5721891 () Bool)

(declare-fun res!2415674 () Bool)

(assert (=> b!5721891 (=> (not res!2415674) (not e!3518522))))

(assert (=> b!5721891 (= res!2415674 (not call!437212))))

(declare-fun b!5721892 () Bool)

(assert (=> b!5721892 (= e!3518526 (= lt!2278200 call!437212))))

(declare-fun bm!437207 () Bool)

(assert (=> bm!437207 (= call!437212 (isEmpty!35204 (_2!36117 (get!21834 lt!2278169))))))

(declare-fun b!5721893 () Bool)

(assert (=> b!5721893 (= e!3518524 (nullable!5749 (regTwo!31946 r!7292)))))

(assert (= (and d!1805076 c!1009193) b!5721893))

(assert (= (and d!1805076 (not c!1009193)) b!5721880))

(assert (= (and d!1805076 c!1009192) b!5721892))

(assert (= (and d!1805076 (not c!1009192)) b!5721887))

(assert (= (and b!5721887 c!1009191) b!5721890))

(assert (= (and b!5721887 (not c!1009191)) b!5721884))

(assert (= (and b!5721884 (not res!2415673)) b!5721883))

(assert (= (and b!5721883 res!2415672) b!5721891))

(assert (= (and b!5721891 res!2415674) b!5721882))

(assert (= (and b!5721882 res!2415671) b!5721881))

(assert (= (and b!5721883 (not res!2415675)) b!5721886))

(assert (= (and b!5721886 res!2415669) b!5721885))

(assert (= (and b!5721885 (not res!2415676)) b!5721889))

(assert (= (and b!5721889 (not res!2415670)) b!5721888))

(assert (= (or b!5721892 b!5721891 b!5721885) bm!437207))

(declare-fun m!6674982 () Bool)

(assert (=> b!5721888 m!6674982))

(declare-fun m!6674984 () Bool)

(assert (=> b!5721882 m!6674984))

(assert (=> b!5721882 m!6674984))

(declare-fun m!6674986 () Bool)

(assert (=> b!5721882 m!6674986))

(assert (=> b!5721889 m!6674984))

(assert (=> b!5721889 m!6674984))

(assert (=> b!5721889 m!6674986))

(declare-fun m!6674988 () Bool)

(assert (=> bm!437207 m!6674988))

(assert (=> d!1805076 m!6674988))

(declare-fun m!6674990 () Bool)

(assert (=> d!1805076 m!6674990))

(assert (=> b!5721880 m!6674982))

(assert (=> b!5721880 m!6674982))

(declare-fun m!6674992 () Bool)

(assert (=> b!5721880 m!6674992))

(assert (=> b!5721880 m!6674984))

(assert (=> b!5721880 m!6674992))

(assert (=> b!5721880 m!6674984))

(declare-fun m!6674994 () Bool)

(assert (=> b!5721880 m!6674994))

(assert (=> b!5721881 m!6674982))

(declare-fun m!6674996 () Bool)

(assert (=> b!5721893 m!6674996))

(assert (=> b!5721345 d!1805076))

(declare-fun d!1805078 () Bool)

(assert (=> d!1805078 (= (get!21834 lt!2278169) (v!51780 lt!2278169))))

(assert (=> b!5721345 d!1805078))

(declare-fun b!5721894 () Bool)

(declare-fun e!3518527 () Bool)

(declare-fun e!3518528 () Bool)

(assert (=> b!5721894 (= e!3518527 e!3518528)))

(declare-fun c!1009195 () Bool)

(assert (=> b!5721894 (= c!1009195 ((_ is Union!15717) lt!2278126))))

(declare-fun b!5721895 () Bool)

(declare-fun res!2415677 () Bool)

(declare-fun e!3518531 () Bool)

(assert (=> b!5721895 (=> res!2415677 e!3518531)))

(assert (=> b!5721895 (= res!2415677 (not ((_ is Concat!24562) lt!2278126)))))

(assert (=> b!5721895 (= e!3518528 e!3518531)))

(declare-fun b!5721896 () Bool)

(declare-fun e!3518530 () Bool)

(assert (=> b!5721896 (= e!3518531 e!3518530)))

(declare-fun res!2415679 () Bool)

(assert (=> b!5721896 (=> (not res!2415679) (not e!3518530))))

(declare-fun call!437215 () Bool)

(assert (=> b!5721896 (= res!2415679 call!437215)))

(declare-fun c!1009194 () Bool)

(declare-fun bm!437208 () Bool)

(declare-fun call!437213 () Bool)

(assert (=> bm!437208 (= call!437213 (validRegex!7453 (ite c!1009194 (reg!16046 lt!2278126) (ite c!1009195 (regOne!31947 lt!2278126) (regOne!31946 lt!2278126)))))))

(declare-fun b!5721897 () Bool)

(declare-fun e!3518532 () Bool)

(assert (=> b!5721897 (= e!3518532 e!3518527)))

(assert (=> b!5721897 (= c!1009194 ((_ is Star!15717) lt!2278126))))

(declare-fun b!5721898 () Bool)

(declare-fun call!437214 () Bool)

(assert (=> b!5721898 (= e!3518530 call!437214)))

(declare-fun b!5721900 () Bool)

(declare-fun e!3518529 () Bool)

(assert (=> b!5721900 (= e!3518529 call!437213)))

(declare-fun b!5721901 () Bool)

(assert (=> b!5721901 (= e!3518527 e!3518529)))

(declare-fun res!2415678 () Bool)

(assert (=> b!5721901 (= res!2415678 (not (nullable!5749 (reg!16046 lt!2278126))))))

(assert (=> b!5721901 (=> (not res!2415678) (not e!3518529))))

(declare-fun bm!437209 () Bool)

(assert (=> bm!437209 (= call!437215 call!437213)))

(declare-fun bm!437210 () Bool)

(assert (=> bm!437210 (= call!437214 (validRegex!7453 (ite c!1009195 (regTwo!31947 lt!2278126) (regTwo!31946 lt!2278126))))))

(declare-fun b!5721902 () Bool)

(declare-fun e!3518533 () Bool)

(assert (=> b!5721902 (= e!3518533 call!437214)))

(declare-fun d!1805080 () Bool)

(declare-fun res!2415681 () Bool)

(assert (=> d!1805080 (=> res!2415681 e!3518532)))

(assert (=> d!1805080 (= res!2415681 ((_ is ElementMatch!15717) lt!2278126))))

(assert (=> d!1805080 (= (validRegex!7453 lt!2278126) e!3518532)))

(declare-fun b!5721899 () Bool)

(declare-fun res!2415680 () Bool)

(assert (=> b!5721899 (=> (not res!2415680) (not e!3518533))))

(assert (=> b!5721899 (= res!2415680 call!437215)))

(assert (=> b!5721899 (= e!3518528 e!3518533)))

(assert (= (and d!1805080 (not res!2415681)) b!5721897))

(assert (= (and b!5721897 c!1009194) b!5721901))

(assert (= (and b!5721897 (not c!1009194)) b!5721894))

(assert (= (and b!5721901 res!2415678) b!5721900))

(assert (= (and b!5721894 c!1009195) b!5721899))

(assert (= (and b!5721894 (not c!1009195)) b!5721895))

(assert (= (and b!5721899 res!2415680) b!5721902))

(assert (= (and b!5721895 (not res!2415677)) b!5721896))

(assert (= (and b!5721896 res!2415679) b!5721898))

(assert (= (or b!5721902 b!5721898) bm!437210))

(assert (= (or b!5721899 b!5721896) bm!437209))

(assert (= (or b!5721900 bm!437209) bm!437208))

(declare-fun m!6674998 () Bool)

(assert (=> bm!437208 m!6674998))

(declare-fun m!6675000 () Bool)

(assert (=> b!5721901 m!6675000))

(declare-fun m!6675002 () Bool)

(assert (=> bm!437210 m!6675002))

(assert (=> d!1804772 d!1805080))

(declare-fun bs!1337774 () Bool)

(declare-fun d!1805082 () Bool)

(assert (= bs!1337774 (and d!1805082 d!1805030)))

(declare-fun lambda!309229 () Int)

(assert (=> bs!1337774 (= lambda!309229 lambda!309218)))

(declare-fun bs!1337775 () Bool)

(assert (= bs!1337775 (and d!1805082 d!1804742)))

(assert (=> bs!1337775 (= lambda!309229 lambda!309143)))

(declare-fun bs!1337776 () Bool)

(assert (= bs!1337776 (and d!1805082 d!1804878)))

(assert (=> bs!1337776 (= lambda!309229 lambda!309189)))

(declare-fun bs!1337777 () Bool)

(assert (= bs!1337777 (and d!1805082 d!1804902)))

(assert (=> bs!1337777 (= lambda!309229 lambda!309192)))

(declare-fun bs!1337778 () Bool)

(assert (= bs!1337778 (and d!1805082 d!1804954)))

(assert (=> bs!1337778 (= lambda!309229 lambda!309208)))

(declare-fun bs!1337779 () Bool)

(assert (= bs!1337779 (and d!1805082 d!1804746)))

(assert (=> bs!1337779 (= lambda!309229 lambda!309151)))

(declare-fun bs!1337780 () Bool)

(assert (= bs!1337780 (and d!1805082 d!1805002)))

(assert (=> bs!1337780 (= lambda!309229 lambda!309212)))

(declare-fun bs!1337781 () Bool)

(assert (= bs!1337781 (and d!1805082 d!1804826)))

(assert (=> bs!1337781 (= lambda!309229 lambda!309165)))

(declare-fun b!5721903 () Bool)

(declare-fun e!3518535 () Bool)

(declare-fun lt!2278201 () Regex!15717)

(assert (=> b!5721903 (= e!3518535 (isUnion!665 lt!2278201))))

(declare-fun b!5721904 () Bool)

(declare-fun e!3518534 () Bool)

(declare-fun e!3518536 () Bool)

(assert (=> b!5721904 (= e!3518534 e!3518536)))

(declare-fun c!1009197 () Bool)

(assert (=> b!5721904 (= c!1009197 (isEmpty!35202 (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327))))))

(declare-fun b!5721905 () Bool)

(declare-fun e!3518539 () Regex!15717)

(assert (=> b!5721905 (= e!3518539 (Union!15717 (h!69774 (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327))) (generalisedUnion!1580 (t!376774 (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327))))))))

(declare-fun b!5721906 () Bool)

(declare-fun e!3518537 () Bool)

(assert (=> b!5721906 (= e!3518537 (isEmpty!35202 (t!376774 (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327)))))))

(declare-fun b!5721907 () Bool)

(declare-fun e!3518538 () Regex!15717)

(assert (=> b!5721907 (= e!3518538 (h!69774 (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327))))))

(declare-fun b!5721908 () Bool)

(assert (=> b!5721908 (= e!3518539 EmptyLang!15717)))

(assert (=> d!1805082 e!3518534))

(declare-fun res!2415683 () Bool)

(assert (=> d!1805082 (=> (not res!2415683) (not e!3518534))))

(assert (=> d!1805082 (= res!2415683 (validRegex!7453 lt!2278201))))

(assert (=> d!1805082 (= lt!2278201 e!3518538)))

(declare-fun c!1009196 () Bool)

(assert (=> d!1805082 (= c!1009196 e!3518537)))

(declare-fun res!2415682 () Bool)

(assert (=> d!1805082 (=> (not res!2415682) (not e!3518537))))

(assert (=> d!1805082 (= res!2415682 ((_ is Cons!63326) (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327))))))

(assert (=> d!1805082 (forall!14851 (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327)) lambda!309229)))

(assert (=> d!1805082 (= (generalisedUnion!1580 (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327))) lt!2278201)))

(declare-fun b!5721909 () Bool)

(assert (=> b!5721909 (= e!3518535 (= lt!2278201 (head!12113 (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327)))))))

(declare-fun b!5721910 () Bool)

(assert (=> b!5721910 (= e!3518536 e!3518535)))

(declare-fun c!1009198 () Bool)

(assert (=> b!5721910 (= c!1009198 (isEmpty!35202 (tail!11208 (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327)))))))

(declare-fun b!5721911 () Bool)

(assert (=> b!5721911 (= e!3518538 e!3518539)))

(declare-fun c!1009199 () Bool)

(assert (=> b!5721911 (= c!1009199 ((_ is Cons!63326) (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327))))))

(declare-fun b!5721912 () Bool)

(assert (=> b!5721912 (= e!3518536 (isEmptyLang!1235 lt!2278201))))

(assert (= (and d!1805082 res!2415682) b!5721906))

(assert (= (and d!1805082 c!1009196) b!5721907))

(assert (= (and d!1805082 (not c!1009196)) b!5721911))

(assert (= (and b!5721911 c!1009199) b!5721905))

(assert (= (and b!5721911 (not c!1009199)) b!5721908))

(assert (= (and d!1805082 res!2415683) b!5721904))

(assert (= (and b!5721904 c!1009197) b!5721912))

(assert (= (and b!5721904 (not c!1009197)) b!5721910))

(assert (= (and b!5721910 c!1009198) b!5721909))

(assert (= (and b!5721910 (not c!1009198)) b!5721903))

(declare-fun m!6675004 () Bool)

(assert (=> b!5721905 m!6675004))

(declare-fun m!6675006 () Bool)

(assert (=> b!5721903 m!6675006))

(assert (=> b!5721909 m!6674330))

(declare-fun m!6675008 () Bool)

(assert (=> b!5721909 m!6675008))

(declare-fun m!6675010 () Bool)

(assert (=> b!5721906 m!6675010))

(assert (=> b!5721904 m!6674330))

(declare-fun m!6675012 () Bool)

(assert (=> b!5721904 m!6675012))

(declare-fun m!6675014 () Bool)

(assert (=> b!5721912 m!6675014))

(assert (=> b!5721910 m!6674330))

(declare-fun m!6675016 () Bool)

(assert (=> b!5721910 m!6675016))

(assert (=> b!5721910 m!6675016))

(declare-fun m!6675018 () Bool)

(assert (=> b!5721910 m!6675018))

(declare-fun m!6675020 () Bool)

(assert (=> d!1805082 m!6675020))

(assert (=> d!1805082 m!6674330))

(declare-fun m!6675022 () Bool)

(assert (=> d!1805082 m!6675022))

(assert (=> d!1804772 d!1805082))

(declare-fun bs!1337782 () Bool)

(declare-fun d!1805084 () Bool)

(assert (= bs!1337782 (and d!1805084 d!1805030)))

(declare-fun lambda!309230 () Int)

(assert (=> bs!1337782 (= lambda!309230 lambda!309218)))

(declare-fun bs!1337783 () Bool)

(assert (= bs!1337783 (and d!1805084 d!1804742)))

(assert (=> bs!1337783 (= lambda!309230 lambda!309143)))

(declare-fun bs!1337784 () Bool)

(assert (= bs!1337784 (and d!1805084 d!1804878)))

(assert (=> bs!1337784 (= lambda!309230 lambda!309189)))

(declare-fun bs!1337785 () Bool)

(assert (= bs!1337785 (and d!1805084 d!1804902)))

(assert (=> bs!1337785 (= lambda!309230 lambda!309192)))

(declare-fun bs!1337786 () Bool)

(assert (= bs!1337786 (and d!1805084 d!1804954)))

(assert (=> bs!1337786 (= lambda!309230 lambda!309208)))

(declare-fun bs!1337787 () Bool)

(assert (= bs!1337787 (and d!1805084 d!1805002)))

(assert (=> bs!1337787 (= lambda!309230 lambda!309212)))

(declare-fun bs!1337788 () Bool)

(assert (= bs!1337788 (and d!1805084 d!1804826)))

(assert (=> bs!1337788 (= lambda!309230 lambda!309165)))

(declare-fun bs!1337789 () Bool)

(assert (= bs!1337789 (and d!1805084 d!1805082)))

(assert (=> bs!1337789 (= lambda!309230 lambda!309229)))

(declare-fun bs!1337790 () Bool)

(assert (= bs!1337790 (and d!1805084 d!1804746)))

(assert (=> bs!1337790 (= lambda!309230 lambda!309151)))

(declare-fun lt!2278202 () List!63450)

(assert (=> d!1805084 (forall!14851 lt!2278202 lambda!309230)))

(declare-fun e!3518540 () List!63450)

(assert (=> d!1805084 (= lt!2278202 e!3518540)))

(declare-fun c!1009200 () Bool)

(assert (=> d!1805084 (= c!1009200 ((_ is Cons!63327) (Cons!63327 lt!2278082 Nil!63327)))))

(assert (=> d!1805084 (= (unfocusZipperList!1145 (Cons!63327 lt!2278082 Nil!63327)) lt!2278202)))

(declare-fun b!5721913 () Bool)

(assert (=> b!5721913 (= e!3518540 (Cons!63326 (generalisedConcat!1332 (exprs!5601 (h!69775 (Cons!63327 lt!2278082 Nil!63327)))) (unfocusZipperList!1145 (t!376775 (Cons!63327 lt!2278082 Nil!63327)))))))

(declare-fun b!5721914 () Bool)

(assert (=> b!5721914 (= e!3518540 Nil!63326)))

(assert (= (and d!1805084 c!1009200) b!5721913))

(assert (= (and d!1805084 (not c!1009200)) b!5721914))

(declare-fun m!6675024 () Bool)

(assert (=> d!1805084 m!6675024))

(declare-fun m!6675026 () Bool)

(assert (=> b!5721913 m!6675026))

(declare-fun m!6675028 () Bool)

(assert (=> b!5721913 m!6675028))

(assert (=> d!1804772 d!1805084))

(assert (=> d!1804920 d!1804918))

(assert (=> d!1804920 d!1804916))

(declare-fun d!1805086 () Bool)

(assert (=> d!1805086 (= (matchR!7902 r!7292 s!2326) (matchRSpec!2820 r!7292 s!2326))))

(assert (=> d!1805086 true))

(declare-fun _$88!4022 () Unit!156400)

(assert (=> d!1805086 (= (choose!43264 r!7292 s!2326) _$88!4022)))

(declare-fun bs!1337791 () Bool)

(assert (= bs!1337791 d!1805086))

(assert (=> bs!1337791 m!6674166))

(assert (=> bs!1337791 m!6674164))

(assert (=> d!1804920 d!1805086))

(assert (=> d!1804920 d!1804912))

(declare-fun d!1805088 () Bool)

(declare-fun res!2415688 () Bool)

(declare-fun e!3518545 () Bool)

(assert (=> d!1805088 (=> res!2415688 e!3518545)))

(assert (=> d!1805088 (= res!2415688 ((_ is Nil!63327) lt!2278129))))

(assert (=> d!1805088 (= (noDuplicate!1646 lt!2278129) e!3518545)))

(declare-fun b!5721919 () Bool)

(declare-fun e!3518546 () Bool)

(assert (=> b!5721919 (= e!3518545 e!3518546)))

(declare-fun res!2415689 () Bool)

(assert (=> b!5721919 (=> (not res!2415689) (not e!3518546))))

(declare-fun contains!19857 (List!63451 Context!10202) Bool)

(assert (=> b!5721919 (= res!2415689 (not (contains!19857 (t!376775 lt!2278129) (h!69775 lt!2278129))))))

(declare-fun b!5721920 () Bool)

(assert (=> b!5721920 (= e!3518546 (noDuplicate!1646 (t!376775 lt!2278129)))))

(assert (= (and d!1805088 (not res!2415688)) b!5721919))

(assert (= (and b!5721919 res!2415689) b!5721920))

(declare-fun m!6675030 () Bool)

(assert (=> b!5721919 m!6675030))

(declare-fun m!6675032 () Bool)

(assert (=> b!5721920 m!6675032))

(assert (=> d!1804782 d!1805088))

(declare-fun d!1805090 () Bool)

(declare-fun e!3518554 () Bool)

(assert (=> d!1805090 e!3518554))

(declare-fun res!2415694 () Bool)

(assert (=> d!1805090 (=> (not res!2415694) (not e!3518554))))

(declare-fun res!2415695 () List!63451)

(assert (=> d!1805090 (= res!2415694 (noDuplicate!1646 res!2415695))))

(declare-fun e!3518553 () Bool)

(assert (=> d!1805090 e!3518553))

(assert (=> d!1805090 (= (choose!43254 z!1189) res!2415695)))

(declare-fun b!5721928 () Bool)

(declare-fun e!3518555 () Bool)

(declare-fun tp!1584559 () Bool)

(assert (=> b!5721928 (= e!3518555 tp!1584559)))

(declare-fun tp!1584560 () Bool)

(declare-fun b!5721927 () Bool)

(assert (=> b!5721927 (= e!3518553 (and (inv!82539 (h!69775 res!2415695)) e!3518555 tp!1584560))))

(declare-fun b!5721929 () Bool)

(assert (=> b!5721929 (= e!3518554 (= (content!11507 res!2415695) z!1189))))

(assert (= b!5721927 b!5721928))

(assert (= (and d!1805090 ((_ is Cons!63327) res!2415695)) b!5721927))

(assert (= (and d!1805090 res!2415694) b!5721929))

(declare-fun m!6675034 () Bool)

(assert (=> d!1805090 m!6675034))

(declare-fun m!6675036 () Bool)

(assert (=> b!5721927 m!6675036))

(declare-fun m!6675038 () Bool)

(assert (=> b!5721929 m!6675038))

(assert (=> d!1804782 d!1805090))

(declare-fun b!5721941 () Bool)

(declare-fun e!3518561 () Bool)

(declare-fun lt!2278205 () List!63452)

(assert (=> b!5721941 (= e!3518561 (or (not (= (_2!36117 (get!21834 lt!2278169)) Nil!63328)) (= lt!2278205 (_1!36117 (get!21834 lt!2278169)))))))

(declare-fun b!5721940 () Bool)

(declare-fun res!2415701 () Bool)

(assert (=> b!5721940 (=> (not res!2415701) (not e!3518561))))

(declare-fun size!40028 (List!63452) Int)

(assert (=> b!5721940 (= res!2415701 (= (size!40028 lt!2278205) (+ (size!40028 (_1!36117 (get!21834 lt!2278169))) (size!40028 (_2!36117 (get!21834 lt!2278169))))))))

(declare-fun d!1805092 () Bool)

(assert (=> d!1805092 e!3518561))

(declare-fun res!2415700 () Bool)

(assert (=> d!1805092 (=> (not res!2415700) (not e!3518561))))

(declare-fun content!11509 (List!63452) (InoxSet C!31704))

(assert (=> d!1805092 (= res!2415700 (= (content!11509 lt!2278205) ((_ map or) (content!11509 (_1!36117 (get!21834 lt!2278169))) (content!11509 (_2!36117 (get!21834 lt!2278169))))))))

(declare-fun e!3518560 () List!63452)

(assert (=> d!1805092 (= lt!2278205 e!3518560)))

(declare-fun c!1009203 () Bool)

(assert (=> d!1805092 (= c!1009203 ((_ is Nil!63328) (_1!36117 (get!21834 lt!2278169))))))

(assert (=> d!1805092 (= (++!13912 (_1!36117 (get!21834 lt!2278169)) (_2!36117 (get!21834 lt!2278169))) lt!2278205)))

(declare-fun b!5721938 () Bool)

(assert (=> b!5721938 (= e!3518560 (_2!36117 (get!21834 lt!2278169)))))

(declare-fun b!5721939 () Bool)

(assert (=> b!5721939 (= e!3518560 (Cons!63328 (h!69776 (_1!36117 (get!21834 lt!2278169))) (++!13912 (t!376776 (_1!36117 (get!21834 lt!2278169))) (_2!36117 (get!21834 lt!2278169)))))))

(assert (= (and d!1805092 c!1009203) b!5721938))

(assert (= (and d!1805092 (not c!1009203)) b!5721939))

(assert (= (and d!1805092 res!2415700) b!5721940))

(assert (= (and b!5721940 res!2415701) b!5721941))

(declare-fun m!6675040 () Bool)

(assert (=> b!5721940 m!6675040))

(declare-fun m!6675042 () Bool)

(assert (=> b!5721940 m!6675042))

(declare-fun m!6675044 () Bool)

(assert (=> b!5721940 m!6675044))

(declare-fun m!6675046 () Bool)

(assert (=> d!1805092 m!6675046))

(declare-fun m!6675048 () Bool)

(assert (=> d!1805092 m!6675048))

(declare-fun m!6675050 () Bool)

(assert (=> d!1805092 m!6675050))

(declare-fun m!6675052 () Bool)

(assert (=> b!5721939 m!6675052))

(assert (=> b!5721341 d!1805092))

(assert (=> b!5721341 d!1805078))

(assert (=> bs!1337656 d!1804892))

(declare-fun b!5721942 () Bool)

(declare-fun e!3518562 () Bool)

(declare-fun e!3518563 () Bool)

(assert (=> b!5721942 (= e!3518562 e!3518563)))

(declare-fun c!1009205 () Bool)

(assert (=> b!5721942 (= c!1009205 ((_ is Union!15717) lt!2278184))))

(declare-fun b!5721943 () Bool)

(declare-fun res!2415702 () Bool)

(declare-fun e!3518566 () Bool)

(assert (=> b!5721943 (=> res!2415702 e!3518566)))

(assert (=> b!5721943 (= res!2415702 (not ((_ is Concat!24562) lt!2278184)))))

(assert (=> b!5721943 (= e!3518563 e!3518566)))

(declare-fun b!5721944 () Bool)

(declare-fun e!3518565 () Bool)

(assert (=> b!5721944 (= e!3518566 e!3518565)))

(declare-fun res!2415704 () Bool)

(assert (=> b!5721944 (=> (not res!2415704) (not e!3518565))))

(declare-fun call!437218 () Bool)

(assert (=> b!5721944 (= res!2415704 call!437218)))

(declare-fun call!437216 () Bool)

(declare-fun c!1009204 () Bool)

(declare-fun bm!437211 () Bool)

(assert (=> bm!437211 (= call!437216 (validRegex!7453 (ite c!1009204 (reg!16046 lt!2278184) (ite c!1009205 (regOne!31947 lt!2278184) (regOne!31946 lt!2278184)))))))

(declare-fun b!5721945 () Bool)

(declare-fun e!3518567 () Bool)

(assert (=> b!5721945 (= e!3518567 e!3518562)))

(assert (=> b!5721945 (= c!1009204 ((_ is Star!15717) lt!2278184))))

(declare-fun b!5721946 () Bool)

(declare-fun call!437217 () Bool)

(assert (=> b!5721946 (= e!3518565 call!437217)))

(declare-fun b!5721948 () Bool)

(declare-fun e!3518564 () Bool)

(assert (=> b!5721948 (= e!3518564 call!437216)))

(declare-fun b!5721949 () Bool)

(assert (=> b!5721949 (= e!3518562 e!3518564)))

(declare-fun res!2415703 () Bool)

(assert (=> b!5721949 (= res!2415703 (not (nullable!5749 (reg!16046 lt!2278184))))))

(assert (=> b!5721949 (=> (not res!2415703) (not e!3518564))))

(declare-fun bm!437212 () Bool)

(assert (=> bm!437212 (= call!437218 call!437216)))

(declare-fun bm!437213 () Bool)

(assert (=> bm!437213 (= call!437217 (validRegex!7453 (ite c!1009205 (regTwo!31947 lt!2278184) (regTwo!31946 lt!2278184))))))

(declare-fun b!5721950 () Bool)

(declare-fun e!3518568 () Bool)

(assert (=> b!5721950 (= e!3518568 call!437217)))

(declare-fun d!1805094 () Bool)

(declare-fun res!2415706 () Bool)

(assert (=> d!1805094 (=> res!2415706 e!3518567)))

(assert (=> d!1805094 (= res!2415706 ((_ is ElementMatch!15717) lt!2278184))))

(assert (=> d!1805094 (= (validRegex!7453 lt!2278184) e!3518567)))

(declare-fun b!5721947 () Bool)

(declare-fun res!2415705 () Bool)

(assert (=> b!5721947 (=> (not res!2415705) (not e!3518568))))

(assert (=> b!5721947 (= res!2415705 call!437218)))

(assert (=> b!5721947 (= e!3518563 e!3518568)))

(assert (= (and d!1805094 (not res!2415706)) b!5721945))

(assert (= (and b!5721945 c!1009204) b!5721949))

(assert (= (and b!5721945 (not c!1009204)) b!5721942))

(assert (= (and b!5721949 res!2415703) b!5721948))

(assert (= (and b!5721942 c!1009205) b!5721947))

(assert (= (and b!5721942 (not c!1009205)) b!5721943))

(assert (= (and b!5721947 res!2415705) b!5721950))

(assert (= (and b!5721943 (not res!2415702)) b!5721944))

(assert (= (and b!5721944 res!2415704) b!5721946))

(assert (= (or b!5721950 b!5721946) bm!437213))

(assert (= (or b!5721947 b!5721944) bm!437212))

(assert (= (or b!5721948 bm!437212) bm!437211))

(declare-fun m!6675054 () Bool)

(assert (=> bm!437211 m!6675054))

(declare-fun m!6675056 () Bool)

(assert (=> b!5721949 m!6675056))

(declare-fun m!6675058 () Bool)

(assert (=> bm!437213 m!6675058))

(assert (=> d!1804890 d!1805094))

(declare-fun bs!1337792 () Bool)

(declare-fun d!1805096 () Bool)

(assert (= bs!1337792 (and d!1805096 d!1805030)))

(declare-fun lambda!309231 () Int)

(assert (=> bs!1337792 (= lambda!309231 lambda!309218)))

(declare-fun bs!1337793 () Bool)

(assert (= bs!1337793 (and d!1805096 d!1804742)))

(assert (=> bs!1337793 (= lambda!309231 lambda!309143)))

(declare-fun bs!1337794 () Bool)

(assert (= bs!1337794 (and d!1805096 d!1804878)))

(assert (=> bs!1337794 (= lambda!309231 lambda!309189)))

(declare-fun bs!1337795 () Bool)

(assert (= bs!1337795 (and d!1805096 d!1804902)))

(assert (=> bs!1337795 (= lambda!309231 lambda!309192)))

(declare-fun bs!1337796 () Bool)

(assert (= bs!1337796 (and d!1805096 d!1804954)))

(assert (=> bs!1337796 (= lambda!309231 lambda!309208)))

(declare-fun bs!1337797 () Bool)

(assert (= bs!1337797 (and d!1805096 d!1805002)))

(assert (=> bs!1337797 (= lambda!309231 lambda!309212)))

(declare-fun bs!1337798 () Bool)

(assert (= bs!1337798 (and d!1805096 d!1804826)))

(assert (=> bs!1337798 (= lambda!309231 lambda!309165)))

(declare-fun bs!1337799 () Bool)

(assert (= bs!1337799 (and d!1805096 d!1805084)))

(assert (=> bs!1337799 (= lambda!309231 lambda!309230)))

(declare-fun bs!1337800 () Bool)

(assert (= bs!1337800 (and d!1805096 d!1805082)))

(assert (=> bs!1337800 (= lambda!309231 lambda!309229)))

(declare-fun bs!1337801 () Bool)

(assert (= bs!1337801 (and d!1805096 d!1804746)))

(assert (=> bs!1337801 (= lambda!309231 lambda!309151)))

(declare-fun b!5721951 () Bool)

(declare-fun e!3518570 () Bool)

(declare-fun lt!2278206 () Regex!15717)

(assert (=> b!5721951 (= e!3518570 (isUnion!665 lt!2278206))))

(declare-fun b!5721952 () Bool)

(declare-fun e!3518569 () Bool)

(declare-fun e!3518571 () Bool)

(assert (=> b!5721952 (= e!3518569 e!3518571)))

(declare-fun c!1009207 () Bool)

(assert (=> b!5721952 (= c!1009207 (isEmpty!35202 (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327))))))

(declare-fun b!5721953 () Bool)

(declare-fun e!3518574 () Regex!15717)

(assert (=> b!5721953 (= e!3518574 (Union!15717 (h!69774 (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327))) (generalisedUnion!1580 (t!376774 (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327))))))))

(declare-fun b!5721954 () Bool)

(declare-fun e!3518572 () Bool)

(assert (=> b!5721954 (= e!3518572 (isEmpty!35202 (t!376774 (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327)))))))

(declare-fun b!5721955 () Bool)

(declare-fun e!3518573 () Regex!15717)

(assert (=> b!5721955 (= e!3518573 (h!69774 (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327))))))

(declare-fun b!5721956 () Bool)

(assert (=> b!5721956 (= e!3518574 EmptyLang!15717)))

(assert (=> d!1805096 e!3518569))

(declare-fun res!2415708 () Bool)

(assert (=> d!1805096 (=> (not res!2415708) (not e!3518569))))

(assert (=> d!1805096 (= res!2415708 (validRegex!7453 lt!2278206))))

(assert (=> d!1805096 (= lt!2278206 e!3518573)))

(declare-fun c!1009206 () Bool)

(assert (=> d!1805096 (= c!1009206 e!3518572)))

(declare-fun res!2415707 () Bool)

(assert (=> d!1805096 (=> (not res!2415707) (not e!3518572))))

(assert (=> d!1805096 (= res!2415707 ((_ is Cons!63326) (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327))))))

(assert (=> d!1805096 (forall!14851 (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327)) lambda!309231)))

(assert (=> d!1805096 (= (generalisedUnion!1580 (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327))) lt!2278206)))

(declare-fun b!5721957 () Bool)

(assert (=> b!5721957 (= e!3518570 (= lt!2278206 (head!12113 (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327)))))))

(declare-fun b!5721958 () Bool)

(assert (=> b!5721958 (= e!3518571 e!3518570)))

(declare-fun c!1009208 () Bool)

(assert (=> b!5721958 (= c!1009208 (isEmpty!35202 (tail!11208 (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327)))))))

(declare-fun b!5721959 () Bool)

(assert (=> b!5721959 (= e!3518573 e!3518574)))

(declare-fun c!1009209 () Bool)

(assert (=> b!5721959 (= c!1009209 ((_ is Cons!63326) (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327))))))

(declare-fun b!5721960 () Bool)

(assert (=> b!5721960 (= e!3518571 (isEmptyLang!1235 lt!2278206))))

(assert (= (and d!1805096 res!2415707) b!5721954))

(assert (= (and d!1805096 c!1009206) b!5721955))

(assert (= (and d!1805096 (not c!1009206)) b!5721959))

(assert (= (and b!5721959 c!1009209) b!5721953))

(assert (= (and b!5721959 (not c!1009209)) b!5721956))

(assert (= (and d!1805096 res!2415708) b!5721952))

(assert (= (and b!5721952 c!1009207) b!5721960))

(assert (= (and b!5721952 (not c!1009207)) b!5721958))

(assert (= (and b!5721958 c!1009208) b!5721957))

(assert (= (and b!5721958 (not c!1009208)) b!5721951))

(declare-fun m!6675060 () Bool)

(assert (=> b!5721953 m!6675060))

(declare-fun m!6675062 () Bool)

(assert (=> b!5721951 m!6675062))

(assert (=> b!5721957 m!6674662))

(declare-fun m!6675064 () Bool)

(assert (=> b!5721957 m!6675064))

(declare-fun m!6675066 () Bool)

(assert (=> b!5721954 m!6675066))

(assert (=> b!5721952 m!6674662))

(declare-fun m!6675068 () Bool)

(assert (=> b!5721952 m!6675068))

(declare-fun m!6675070 () Bool)

(assert (=> b!5721960 m!6675070))

(assert (=> b!5721958 m!6674662))

(declare-fun m!6675072 () Bool)

(assert (=> b!5721958 m!6675072))

(assert (=> b!5721958 m!6675072))

(declare-fun m!6675074 () Bool)

(assert (=> b!5721958 m!6675074))

(declare-fun m!6675076 () Bool)

(assert (=> d!1805096 m!6675076))

(assert (=> d!1805096 m!6674662))

(declare-fun m!6675078 () Bool)

(assert (=> d!1805096 m!6675078))

(assert (=> d!1804890 d!1805096))

(declare-fun bs!1337802 () Bool)

(declare-fun d!1805098 () Bool)

(assert (= bs!1337802 (and d!1805098 d!1805030)))

(declare-fun lambda!309232 () Int)

(assert (=> bs!1337802 (= lambda!309232 lambda!309218)))

(declare-fun bs!1337803 () Bool)

(assert (= bs!1337803 (and d!1805098 d!1804742)))

(assert (=> bs!1337803 (= lambda!309232 lambda!309143)))

(declare-fun bs!1337804 () Bool)

(assert (= bs!1337804 (and d!1805098 d!1804878)))

(assert (=> bs!1337804 (= lambda!309232 lambda!309189)))

(declare-fun bs!1337805 () Bool)

(assert (= bs!1337805 (and d!1805098 d!1804902)))

(assert (=> bs!1337805 (= lambda!309232 lambda!309192)))

(declare-fun bs!1337806 () Bool)

(assert (= bs!1337806 (and d!1805098 d!1804954)))

(assert (=> bs!1337806 (= lambda!309232 lambda!309208)))

(declare-fun bs!1337807 () Bool)

(assert (= bs!1337807 (and d!1805098 d!1805002)))

(assert (=> bs!1337807 (= lambda!309232 lambda!309212)))

(declare-fun bs!1337808 () Bool)

(assert (= bs!1337808 (and d!1805098 d!1804826)))

(assert (=> bs!1337808 (= lambda!309232 lambda!309165)))

(declare-fun bs!1337809 () Bool)

(assert (= bs!1337809 (and d!1805098 d!1805096)))

(assert (=> bs!1337809 (= lambda!309232 lambda!309231)))

(declare-fun bs!1337810 () Bool)

(assert (= bs!1337810 (and d!1805098 d!1805084)))

(assert (=> bs!1337810 (= lambda!309232 lambda!309230)))

(declare-fun bs!1337811 () Bool)

(assert (= bs!1337811 (and d!1805098 d!1805082)))

(assert (=> bs!1337811 (= lambda!309232 lambda!309229)))

(declare-fun bs!1337812 () Bool)

(assert (= bs!1337812 (and d!1805098 d!1804746)))

(assert (=> bs!1337812 (= lambda!309232 lambda!309151)))

(declare-fun lt!2278207 () List!63450)

(assert (=> d!1805098 (forall!14851 lt!2278207 lambda!309232)))

(declare-fun e!3518575 () List!63450)

(assert (=> d!1805098 (= lt!2278207 e!3518575)))

(declare-fun c!1009210 () Bool)

(assert (=> d!1805098 (= c!1009210 ((_ is Cons!63327) (Cons!63327 lt!2278081 Nil!63327)))))

(assert (=> d!1805098 (= (unfocusZipperList!1145 (Cons!63327 lt!2278081 Nil!63327)) lt!2278207)))

(declare-fun b!5721961 () Bool)

(assert (=> b!5721961 (= e!3518575 (Cons!63326 (generalisedConcat!1332 (exprs!5601 (h!69775 (Cons!63327 lt!2278081 Nil!63327)))) (unfocusZipperList!1145 (t!376775 (Cons!63327 lt!2278081 Nil!63327)))))))

(declare-fun b!5721962 () Bool)

(assert (=> b!5721962 (= e!3518575 Nil!63326)))

(assert (= (and d!1805098 c!1009210) b!5721961))

(assert (= (and d!1805098 (not c!1009210)) b!5721962))

(declare-fun m!6675080 () Bool)

(assert (=> d!1805098 m!6675080))

(declare-fun m!6675082 () Bool)

(assert (=> b!5721961 m!6675082))

(declare-fun m!6675084 () Bool)

(assert (=> b!5721961 m!6675084))

(assert (=> d!1804890 d!1805098))

(assert (=> b!5721168 d!1804786))

(declare-fun d!1805100 () Bool)

(declare-fun c!1009211 () Bool)

(assert (=> d!1805100 (= c!1009211 (isEmpty!35204 (tail!11209 (t!376776 s!2326))))))

(declare-fun e!3518576 () Bool)

(assert (=> d!1805100 (= (matchZipper!1855 (derivationStepZipper!1800 ((_ map or) lt!2278067 lt!2278084) (head!12114 (t!376776 s!2326))) (tail!11209 (t!376776 s!2326))) e!3518576)))

(declare-fun b!5721963 () Bool)

(assert (=> b!5721963 (= e!3518576 (nullableZipper!1666 (derivationStepZipper!1800 ((_ map or) lt!2278067 lt!2278084) (head!12114 (t!376776 s!2326)))))))

(declare-fun b!5721964 () Bool)

(assert (=> b!5721964 (= e!3518576 (matchZipper!1855 (derivationStepZipper!1800 (derivationStepZipper!1800 ((_ map or) lt!2278067 lt!2278084) (head!12114 (t!376776 s!2326))) (head!12114 (tail!11209 (t!376776 s!2326)))) (tail!11209 (tail!11209 (t!376776 s!2326)))))))

(assert (= (and d!1805100 c!1009211) b!5721963))

(assert (= (and d!1805100 (not c!1009211)) b!5721964))

(assert (=> d!1805100 m!6674318))

(assert (=> d!1805100 m!6674854))

(assert (=> b!5721963 m!6674324))

(declare-fun m!6675086 () Bool)

(assert (=> b!5721963 m!6675086))

(assert (=> b!5721964 m!6674318))

(assert (=> b!5721964 m!6674858))

(assert (=> b!5721964 m!6674324))

(assert (=> b!5721964 m!6674858))

(declare-fun m!6675088 () Bool)

(assert (=> b!5721964 m!6675088))

(assert (=> b!5721964 m!6674318))

(assert (=> b!5721964 m!6674862))

(assert (=> b!5721964 m!6675088))

(assert (=> b!5721964 m!6674862))

(declare-fun m!6675090 () Bool)

(assert (=> b!5721964 m!6675090))

(assert (=> b!5721077 d!1805100))

(declare-fun bs!1337813 () Bool)

(declare-fun d!1805102 () Bool)

(assert (= bs!1337813 (and d!1805102 d!1805028)))

(declare-fun lambda!309233 () Int)

(assert (=> bs!1337813 (= lambda!309233 lambda!309217)))

(declare-fun bs!1337814 () Bool)

(assert (= bs!1337814 (and d!1805102 b!5720846)))

(assert (=> bs!1337814 (= (= (head!12114 (t!376776 s!2326)) (h!69776 s!2326)) (= lambda!309233 lambda!309137))))

(declare-fun bs!1337815 () Bool)

(assert (= bs!1337815 (and d!1805102 d!1804990)))

(assert (=> bs!1337815 (= lambda!309233 lambda!309211)))

(declare-fun bs!1337816 () Bool)

(assert (= bs!1337816 (and d!1805102 d!1804910)))

(assert (=> bs!1337816 (= (= (head!12114 (t!376776 s!2326)) (h!69776 s!2326)) (= lambda!309233 lambda!309195))))

(declare-fun bs!1337817 () Bool)

(assert (= bs!1337817 (and d!1805102 d!1805024)))

(assert (=> bs!1337817 (= (= (head!12114 (t!376776 s!2326)) (head!12114 s!2326)) (= lambda!309233 lambda!309216))))

(assert (=> d!1805102 true))

(assert (=> d!1805102 (= (derivationStepZipper!1800 ((_ map or) lt!2278067 lt!2278084) (head!12114 (t!376776 s!2326))) (flatMap!1330 ((_ map or) lt!2278067 lt!2278084) lambda!309233))))

(declare-fun bs!1337818 () Bool)

(assert (= bs!1337818 d!1805102))

(declare-fun m!6675092 () Bool)

(assert (=> bs!1337818 m!6675092))

(assert (=> b!5721077 d!1805102))

(assert (=> b!5721077 d!1804992))

(assert (=> b!5721077 d!1804994))

(declare-fun d!1805104 () Bool)

(assert (=> d!1805104 (= (nullable!5749 (regOne!31946 (reg!16046 (regOne!31946 r!7292)))) (nullableFct!1813 (regOne!31946 (reg!16046 (regOne!31946 r!7292)))))))

(declare-fun bs!1337819 () Bool)

(assert (= bs!1337819 d!1805104))

(declare-fun m!6675094 () Bool)

(assert (=> bs!1337819 m!6675094))

(assert (=> b!5721248 d!1805104))

(declare-fun d!1805106 () Bool)

(assert (=> d!1805106 (= (isUnion!665 lt!2278112) ((_ is Union!15717) lt!2278112))))

(assert (=> b!5720993 d!1805106))

(assert (=> d!1804768 d!1805012))

(declare-fun bs!1337820 () Bool)

(declare-fun d!1805108 () Bool)

(assert (= bs!1337820 (and d!1805108 d!1804946)))

(declare-fun lambda!309234 () Int)

(assert (=> bs!1337820 (= lambda!309234 lambda!309206)))

(declare-fun bs!1337821 () Bool)

(assert (= bs!1337821 (and d!1805108 d!1804948)))

(assert (=> bs!1337821 (= lambda!309234 lambda!309207)))

(declare-fun bs!1337822 () Bool)

(assert (= bs!1337822 (and d!1805108 d!1805042)))

(assert (=> bs!1337822 (= lambda!309234 lambda!309219)))

(declare-fun bs!1337823 () Bool)

(assert (= bs!1337823 (and d!1805108 d!1805072)))

(assert (=> bs!1337823 (= lambda!309234 lambda!309226)))

(assert (=> d!1805108 (= (nullableZipper!1666 lt!2278067) (exists!2226 lt!2278067 lambda!309234))))

(declare-fun bs!1337824 () Bool)

(assert (= bs!1337824 d!1805108))

(declare-fun m!6675096 () Bool)

(assert (=> bs!1337824 m!6675096))

(assert (=> b!5721074 d!1805108))

(assert (=> d!1804770 d!1805012))

(assert (=> b!5721028 d!1804902))

(declare-fun bs!1337825 () Bool)

(declare-fun d!1805110 () Bool)

(assert (= bs!1337825 (and d!1805110 d!1805030)))

(declare-fun lambda!309235 () Int)

(assert (=> bs!1337825 (= lambda!309235 lambda!309218)))

(declare-fun bs!1337826 () Bool)

(assert (= bs!1337826 (and d!1805110 d!1804742)))

(assert (=> bs!1337826 (= lambda!309235 lambda!309143)))

(declare-fun bs!1337827 () Bool)

(assert (= bs!1337827 (and d!1805110 d!1804878)))

(assert (=> bs!1337827 (= lambda!309235 lambda!309189)))

(declare-fun bs!1337828 () Bool)

(assert (= bs!1337828 (and d!1805110 d!1805098)))

(assert (=> bs!1337828 (= lambda!309235 lambda!309232)))

(declare-fun bs!1337829 () Bool)

(assert (= bs!1337829 (and d!1805110 d!1804902)))

(assert (=> bs!1337829 (= lambda!309235 lambda!309192)))

(declare-fun bs!1337830 () Bool)

(assert (= bs!1337830 (and d!1805110 d!1804954)))

(assert (=> bs!1337830 (= lambda!309235 lambda!309208)))

(declare-fun bs!1337831 () Bool)

(assert (= bs!1337831 (and d!1805110 d!1805002)))

(assert (=> bs!1337831 (= lambda!309235 lambda!309212)))

(declare-fun bs!1337832 () Bool)

(assert (= bs!1337832 (and d!1805110 d!1804826)))

(assert (=> bs!1337832 (= lambda!309235 lambda!309165)))

(declare-fun bs!1337833 () Bool)

(assert (= bs!1337833 (and d!1805110 d!1805096)))

(assert (=> bs!1337833 (= lambda!309235 lambda!309231)))

(declare-fun bs!1337834 () Bool)

(assert (= bs!1337834 (and d!1805110 d!1805084)))

(assert (=> bs!1337834 (= lambda!309235 lambda!309230)))

(declare-fun bs!1337835 () Bool)

(assert (= bs!1337835 (and d!1805110 d!1805082)))

(assert (=> bs!1337835 (= lambda!309235 lambda!309229)))

(declare-fun bs!1337836 () Bool)

(assert (= bs!1337836 (and d!1805110 d!1804746)))

(assert (=> bs!1337836 (= lambda!309235 lambda!309151)))

(declare-fun lt!2278208 () List!63450)

(assert (=> d!1805110 (forall!14851 lt!2278208 lambda!309235)))

(declare-fun e!3518577 () List!63450)

(assert (=> d!1805110 (= lt!2278208 e!3518577)))

(declare-fun c!1009212 () Bool)

(assert (=> d!1805110 (= c!1009212 ((_ is Cons!63327) (t!376775 zl!343)))))

(assert (=> d!1805110 (= (unfocusZipperList!1145 (t!376775 zl!343)) lt!2278208)))

(declare-fun b!5721965 () Bool)

(assert (=> b!5721965 (= e!3518577 (Cons!63326 (generalisedConcat!1332 (exprs!5601 (h!69775 (t!376775 zl!343)))) (unfocusZipperList!1145 (t!376775 (t!376775 zl!343)))))))

(declare-fun b!5721966 () Bool)

(assert (=> b!5721966 (= e!3518577 Nil!63326)))

(assert (= (and d!1805110 c!1009212) b!5721965))

(assert (= (and d!1805110 (not c!1009212)) b!5721966))

(declare-fun m!6675098 () Bool)

(assert (=> d!1805110 m!6675098))

(declare-fun m!6675100 () Bool)

(assert (=> b!5721965 m!6675100))

(declare-fun m!6675102 () Bool)

(assert (=> b!5721965 m!6675102))

(assert (=> b!5721028 d!1805110))

(declare-fun bs!1337837 () Bool)

(declare-fun b!5721972 () Bool)

(assert (= bs!1337837 (and b!5721972 d!1804866)))

(declare-fun lambda!309236 () Int)

(assert (=> bs!1337837 (not (= lambda!309236 lambda!309187))))

(declare-fun bs!1337838 () Bool)

(assert (= bs!1337838 (and b!5721972 d!1805064)))

(assert (=> bs!1337838 (not (= lambda!309236 lambda!309224))))

(declare-fun bs!1337839 () Bool)

(assert (= bs!1337839 (and b!5721972 b!5720869)))

(assert (=> bs!1337839 (not (= lambda!309236 lambda!309135))))

(declare-fun bs!1337840 () Bool)

(assert (= bs!1337840 (and b!5721972 b!5721633)))

(assert (=> bs!1337840 (not (= lambda!309236 lambda!309203))))

(declare-fun bs!1337841 () Bool)

(assert (= bs!1337841 (and b!5721972 b!5721566)))

(assert (=> bs!1337841 (not (= lambda!309236 lambda!309201))))

(declare-fun bs!1337842 () Bool)

(assert (= bs!1337842 (and b!5721972 b!5721731)))

(assert (=> bs!1337842 (= (and (= (reg!16046 (regTwo!31947 r!7292)) (reg!16046 (regOne!31947 r!7292))) (= (regTwo!31947 r!7292) (regOne!31947 r!7292))) (= lambda!309236 lambda!309209))))

(declare-fun bs!1337843 () Bool)

(assert (= bs!1337843 (and b!5721972 b!5721877)))

(assert (=> bs!1337843 (not (= lambda!309236 lambda!309228))))

(declare-fun bs!1337844 () Bool)

(assert (= bs!1337844 (and b!5721972 b!5721874)))

(assert (=> bs!1337844 (= (and (= (reg!16046 (regTwo!31947 r!7292)) (reg!16046 (regOne!31947 lt!2278086))) (= (regTwo!31947 r!7292) (regOne!31947 lt!2278086))) (= lambda!309236 lambda!309227))))

(assert (=> bs!1337837 (not (= lambda!309236 lambda!309188))))

(assert (=> bs!1337838 (not (= lambda!309236 lambda!309225))))

(declare-fun bs!1337845 () Bool)

(assert (= bs!1337845 (and b!5721972 b!5721630)))

(assert (=> bs!1337845 (= (and (= (reg!16046 (regTwo!31947 r!7292)) (reg!16046 lt!2278086)) (= (regTwo!31947 r!7292) lt!2278086)) (= lambda!309236 lambda!309202))))

(assert (=> bs!1337839 (not (= lambda!309236 lambda!309136))))

(declare-fun bs!1337846 () Bool)

(assert (= bs!1337846 (and b!5721972 d!1805020)))

(assert (=> bs!1337846 (not (= lambda!309236 lambda!309215))))

(declare-fun bs!1337847 () Bool)

(assert (= bs!1337847 (and b!5721972 b!5721563)))

(assert (=> bs!1337847 (= (and (= (reg!16046 (regTwo!31947 r!7292)) (reg!16046 r!7292)) (= (regTwo!31947 r!7292) r!7292)) (= lambda!309236 lambda!309200))))

(declare-fun bs!1337848 () Bool)

(assert (= bs!1337848 (and b!5721972 d!1804860)))

(assert (=> bs!1337848 (not (= lambda!309236 lambda!309182))))

(declare-fun bs!1337849 () Bool)

(assert (= bs!1337849 (and b!5721972 b!5721734)))

(assert (=> bs!1337849 (not (= lambda!309236 lambda!309210))))

(assert (=> b!5721972 true))

(assert (=> b!5721972 true))

(declare-fun bs!1337850 () Bool)

(declare-fun b!5721975 () Bool)

(assert (= bs!1337850 (and b!5721975 d!1804866)))

(declare-fun lambda!309237 () Int)

(assert (=> bs!1337850 (not (= lambda!309237 lambda!309187))))

(declare-fun bs!1337851 () Bool)

(assert (= bs!1337851 (and b!5721975 d!1805064)))

(assert (=> bs!1337851 (not (= lambda!309237 lambda!309224))))

(declare-fun bs!1337852 () Bool)

(assert (= bs!1337852 (and b!5721975 b!5720869)))

(assert (=> bs!1337852 (not (= lambda!309237 lambda!309135))))

(declare-fun bs!1337853 () Bool)

(assert (= bs!1337853 (and b!5721975 b!5721633)))

(assert (=> bs!1337853 (= (and (= (regOne!31946 (regTwo!31947 r!7292)) (regOne!31946 lt!2278086)) (= (regTwo!31946 (regTwo!31947 r!7292)) (regTwo!31946 lt!2278086))) (= lambda!309237 lambda!309203))))

(declare-fun bs!1337854 () Bool)

(assert (= bs!1337854 (and b!5721975 b!5721566)))

(assert (=> bs!1337854 (= (and (= (regOne!31946 (regTwo!31947 r!7292)) (regOne!31946 r!7292)) (= (regTwo!31946 (regTwo!31947 r!7292)) (regTwo!31946 r!7292))) (= lambda!309237 lambda!309201))))

(declare-fun bs!1337855 () Bool)

(assert (= bs!1337855 (and b!5721975 b!5721731)))

(assert (=> bs!1337855 (not (= lambda!309237 lambda!309209))))

(declare-fun bs!1337856 () Bool)

(assert (= bs!1337856 (and b!5721975 b!5721877)))

(assert (=> bs!1337856 (= (and (= (regOne!31946 (regTwo!31947 r!7292)) (regOne!31946 (regOne!31947 lt!2278086))) (= (regTwo!31946 (regTwo!31947 r!7292)) (regTwo!31946 (regOne!31947 lt!2278086)))) (= lambda!309237 lambda!309228))))

(declare-fun bs!1337857 () Bool)

(assert (= bs!1337857 (and b!5721975 b!5721874)))

(assert (=> bs!1337857 (not (= lambda!309237 lambda!309227))))

(assert (=> bs!1337850 (= (and (= (regOne!31946 (regTwo!31947 r!7292)) (regOne!31946 r!7292)) (= (regTwo!31946 (regTwo!31947 r!7292)) (regTwo!31946 r!7292))) (= lambda!309237 lambda!309188))))

(assert (=> bs!1337851 (= (and (= (regOne!31946 (regTwo!31947 r!7292)) (regOne!31946 r!7292)) (= (regTwo!31946 (regTwo!31947 r!7292)) (regTwo!31946 r!7292))) (= lambda!309237 lambda!309225))))

(declare-fun bs!1337858 () Bool)

(assert (= bs!1337858 (and b!5721975 b!5721630)))

(assert (=> bs!1337858 (not (= lambda!309237 lambda!309202))))

(assert (=> bs!1337852 (= (and (= (regOne!31946 (regTwo!31947 r!7292)) (regOne!31946 r!7292)) (= (regTwo!31946 (regTwo!31947 r!7292)) (regTwo!31946 r!7292))) (= lambda!309237 lambda!309136))))

(declare-fun bs!1337859 () Bool)

(assert (= bs!1337859 (and b!5721975 d!1805020)))

(assert (=> bs!1337859 (not (= lambda!309237 lambda!309215))))

(declare-fun bs!1337860 () Bool)

(assert (= bs!1337860 (and b!5721975 b!5721972)))

(assert (=> bs!1337860 (not (= lambda!309237 lambda!309236))))

(declare-fun bs!1337861 () Bool)

(assert (= bs!1337861 (and b!5721975 b!5721563)))

(assert (=> bs!1337861 (not (= lambda!309237 lambda!309200))))

(declare-fun bs!1337862 () Bool)

(assert (= bs!1337862 (and b!5721975 d!1804860)))

(assert (=> bs!1337862 (not (= lambda!309237 lambda!309182))))

(declare-fun bs!1337863 () Bool)

(assert (= bs!1337863 (and b!5721975 b!5721734)))

(assert (=> bs!1337863 (= (and (= (regOne!31946 (regTwo!31947 r!7292)) (regOne!31946 (regOne!31947 r!7292))) (= (regTwo!31946 (regTwo!31947 r!7292)) (regTwo!31946 (regOne!31947 r!7292)))) (= lambda!309237 lambda!309210))))

(assert (=> b!5721975 true))

(assert (=> b!5721975 true))

(declare-fun b!5721967 () Bool)

(declare-fun e!3518580 () Bool)

(declare-fun call!437220 () Bool)

(assert (=> b!5721967 (= e!3518580 call!437220)))

(declare-fun b!5721968 () Bool)

(declare-fun res!2415711 () Bool)

(declare-fun e!3518584 () Bool)

(assert (=> b!5721968 (=> res!2415711 e!3518584)))

(assert (=> b!5721968 (= res!2415711 call!437220)))

(declare-fun e!3518582 () Bool)

(assert (=> b!5721968 (= e!3518582 e!3518584)))

(declare-fun b!5721969 () Bool)

(declare-fun e!3518581 () Bool)

(assert (=> b!5721969 (= e!3518581 (= s!2326 (Cons!63328 (c!1008905 (regTwo!31947 r!7292)) Nil!63328)))))

(declare-fun c!1009215 () Bool)

(declare-fun call!437219 () Bool)

(declare-fun bm!437214 () Bool)

(assert (=> bm!437214 (= call!437219 (Exists!2817 (ite c!1009215 lambda!309236 lambda!309237)))))

(declare-fun b!5721970 () Bool)

(declare-fun e!3518579 () Bool)

(assert (=> b!5721970 (= e!3518580 e!3518579)))

(declare-fun res!2415710 () Bool)

(assert (=> b!5721970 (= res!2415710 (not ((_ is EmptyLang!15717) (regTwo!31947 r!7292))))))

(assert (=> b!5721970 (=> (not res!2415710) (not e!3518579))))

(declare-fun b!5721971 () Bool)

(declare-fun c!1009213 () Bool)

(assert (=> b!5721971 (= c!1009213 ((_ is Union!15717) (regTwo!31947 r!7292)))))

(declare-fun e!3518578 () Bool)

(assert (=> b!5721971 (= e!3518581 e!3518578)))

(declare-fun d!1805112 () Bool)

(declare-fun c!1009214 () Bool)

(assert (=> d!1805112 (= c!1009214 ((_ is EmptyExpr!15717) (regTwo!31947 r!7292)))))

(assert (=> d!1805112 (= (matchRSpec!2820 (regTwo!31947 r!7292) s!2326) e!3518580)))

(assert (=> b!5721972 (= e!3518584 call!437219)))

(declare-fun b!5721973 () Bool)

(declare-fun c!1009216 () Bool)

(assert (=> b!5721973 (= c!1009216 ((_ is ElementMatch!15717) (regTwo!31947 r!7292)))))

(assert (=> b!5721973 (= e!3518579 e!3518581)))

(declare-fun b!5721974 () Bool)

(declare-fun e!3518583 () Bool)

(assert (=> b!5721974 (= e!3518578 e!3518583)))

(declare-fun res!2415709 () Bool)

(assert (=> b!5721974 (= res!2415709 (matchRSpec!2820 (regOne!31947 (regTwo!31947 r!7292)) s!2326))))

(assert (=> b!5721974 (=> res!2415709 e!3518583)))

(assert (=> b!5721975 (= e!3518582 call!437219)))

(declare-fun b!5721976 () Bool)

(assert (=> b!5721976 (= e!3518583 (matchRSpec!2820 (regTwo!31947 (regTwo!31947 r!7292)) s!2326))))

(declare-fun b!5721977 () Bool)

(assert (=> b!5721977 (= e!3518578 e!3518582)))

(assert (=> b!5721977 (= c!1009215 ((_ is Star!15717) (regTwo!31947 r!7292)))))

(declare-fun bm!437215 () Bool)

(assert (=> bm!437215 (= call!437220 (isEmpty!35204 s!2326))))

(assert (= (and d!1805112 c!1009214) b!5721967))

(assert (= (and d!1805112 (not c!1009214)) b!5721970))

(assert (= (and b!5721970 res!2415710) b!5721973))

(assert (= (and b!5721973 c!1009216) b!5721969))

(assert (= (and b!5721973 (not c!1009216)) b!5721971))

(assert (= (and b!5721971 c!1009213) b!5721974))

(assert (= (and b!5721971 (not c!1009213)) b!5721977))

(assert (= (and b!5721974 (not res!2415709)) b!5721976))

(assert (= (and b!5721977 c!1009215) b!5721968))

(assert (= (and b!5721977 (not c!1009215)) b!5721975))

(assert (= (and b!5721968 (not res!2415711)) b!5721972))

(assert (= (or b!5721972 b!5721975) bm!437214))

(assert (= (or b!5721967 b!5721968) bm!437215))

(declare-fun m!6675104 () Bool)

(assert (=> bm!437214 m!6675104))

(declare-fun m!6675106 () Bool)

(assert (=> b!5721974 m!6675106))

(declare-fun m!6675108 () Bool)

(assert (=> b!5721976 m!6675108))

(assert (=> bm!437215 m!6674630))

(assert (=> b!5721567 d!1805112))

(declare-fun b!5721978 () Bool)

(declare-fun e!3518585 () Bool)

(declare-fun e!3518586 () Bool)

(assert (=> b!5721978 (= e!3518585 e!3518586)))

(declare-fun c!1009218 () Bool)

(assert (=> b!5721978 (= c!1009218 ((_ is Union!15717) lt!2278148))))

(declare-fun b!5721979 () Bool)

(declare-fun res!2415712 () Bool)

(declare-fun e!3518589 () Bool)

(assert (=> b!5721979 (=> res!2415712 e!3518589)))

(assert (=> b!5721979 (= res!2415712 (not ((_ is Concat!24562) lt!2278148)))))

(assert (=> b!5721979 (= e!3518586 e!3518589)))

(declare-fun b!5721980 () Bool)

(declare-fun e!3518588 () Bool)

(assert (=> b!5721980 (= e!3518589 e!3518588)))

(declare-fun res!2415714 () Bool)

(assert (=> b!5721980 (=> (not res!2415714) (not e!3518588))))

(declare-fun call!437223 () Bool)

(assert (=> b!5721980 (= res!2415714 call!437223)))

(declare-fun c!1009217 () Bool)

(declare-fun bm!437216 () Bool)

(declare-fun call!437221 () Bool)

(assert (=> bm!437216 (= call!437221 (validRegex!7453 (ite c!1009217 (reg!16046 lt!2278148) (ite c!1009218 (regOne!31947 lt!2278148) (regOne!31946 lt!2278148)))))))

(declare-fun b!5721981 () Bool)

(declare-fun e!3518590 () Bool)

(assert (=> b!5721981 (= e!3518590 e!3518585)))

(assert (=> b!5721981 (= c!1009217 ((_ is Star!15717) lt!2278148))))

(declare-fun b!5721982 () Bool)

(declare-fun call!437222 () Bool)

(assert (=> b!5721982 (= e!3518588 call!437222)))

(declare-fun b!5721984 () Bool)

(declare-fun e!3518587 () Bool)

(assert (=> b!5721984 (= e!3518587 call!437221)))

(declare-fun b!5721985 () Bool)

(assert (=> b!5721985 (= e!3518585 e!3518587)))

(declare-fun res!2415713 () Bool)

(assert (=> b!5721985 (= res!2415713 (not (nullable!5749 (reg!16046 lt!2278148))))))

(assert (=> b!5721985 (=> (not res!2415713) (not e!3518587))))

(declare-fun bm!437217 () Bool)

(assert (=> bm!437217 (= call!437223 call!437221)))

(declare-fun bm!437218 () Bool)

(assert (=> bm!437218 (= call!437222 (validRegex!7453 (ite c!1009218 (regTwo!31947 lt!2278148) (regTwo!31946 lt!2278148))))))

(declare-fun b!5721986 () Bool)

(declare-fun e!3518591 () Bool)

(assert (=> b!5721986 (= e!3518591 call!437222)))

(declare-fun d!1805114 () Bool)

(declare-fun res!2415716 () Bool)

(assert (=> d!1805114 (=> res!2415716 e!3518590)))

(assert (=> d!1805114 (= res!2415716 ((_ is ElementMatch!15717) lt!2278148))))

(assert (=> d!1805114 (= (validRegex!7453 lt!2278148) e!3518590)))

(declare-fun b!5721983 () Bool)

(declare-fun res!2415715 () Bool)

(assert (=> b!5721983 (=> (not res!2415715) (not e!3518591))))

(assert (=> b!5721983 (= res!2415715 call!437223)))

(assert (=> b!5721983 (= e!3518586 e!3518591)))

(assert (= (and d!1805114 (not res!2415716)) b!5721981))

(assert (= (and b!5721981 c!1009217) b!5721985))

(assert (= (and b!5721981 (not c!1009217)) b!5721978))

(assert (= (and b!5721985 res!2415713) b!5721984))

(assert (= (and b!5721978 c!1009218) b!5721983))

(assert (= (and b!5721978 (not c!1009218)) b!5721979))

(assert (= (and b!5721983 res!2415715) b!5721986))

(assert (= (and b!5721979 (not res!2415712)) b!5721980))

(assert (= (and b!5721980 res!2415714) b!5721982))

(assert (= (or b!5721986 b!5721982) bm!437218))

(assert (= (or b!5721983 b!5721980) bm!437217))

(assert (= (or b!5721984 bm!437217) bm!437216))

(declare-fun m!6675110 () Bool)

(assert (=> bm!437216 m!6675110))

(declare-fun m!6675112 () Bool)

(assert (=> b!5721985 m!6675112))

(declare-fun m!6675114 () Bool)

(assert (=> bm!437218 m!6675114))

(assert (=> d!1804830 d!1805114))

(declare-fun bs!1337864 () Bool)

(declare-fun d!1805116 () Bool)

(assert (= bs!1337864 (and d!1805116 d!1805030)))

(declare-fun lambda!309238 () Int)

(assert (=> bs!1337864 (= lambda!309238 lambda!309218)))

(declare-fun bs!1337865 () Bool)

(assert (= bs!1337865 (and d!1805116 d!1804742)))

(assert (=> bs!1337865 (= lambda!309238 lambda!309143)))

(declare-fun bs!1337866 () Bool)

(assert (= bs!1337866 (and d!1805116 d!1804878)))

(assert (=> bs!1337866 (= lambda!309238 lambda!309189)))

(declare-fun bs!1337867 () Bool)

(assert (= bs!1337867 (and d!1805116 d!1805098)))

(assert (=> bs!1337867 (= lambda!309238 lambda!309232)))

(declare-fun bs!1337868 () Bool)

(assert (= bs!1337868 (and d!1805116 d!1804902)))

(assert (=> bs!1337868 (= lambda!309238 lambda!309192)))

(declare-fun bs!1337869 () Bool)

(assert (= bs!1337869 (and d!1805116 d!1804954)))

(assert (=> bs!1337869 (= lambda!309238 lambda!309208)))

(declare-fun bs!1337870 () Bool)

(assert (= bs!1337870 (and d!1805116 d!1805002)))

(assert (=> bs!1337870 (= lambda!309238 lambda!309212)))

(declare-fun bs!1337871 () Bool)

(assert (= bs!1337871 (and d!1805116 d!1804826)))

(assert (=> bs!1337871 (= lambda!309238 lambda!309165)))

(declare-fun bs!1337872 () Bool)

(assert (= bs!1337872 (and d!1805116 d!1805096)))

(assert (=> bs!1337872 (= lambda!309238 lambda!309231)))

(declare-fun bs!1337873 () Bool)

(assert (= bs!1337873 (and d!1805116 d!1805110)))

(assert (=> bs!1337873 (= lambda!309238 lambda!309235)))

(declare-fun bs!1337874 () Bool)

(assert (= bs!1337874 (and d!1805116 d!1805084)))

(assert (=> bs!1337874 (= lambda!309238 lambda!309230)))

(declare-fun bs!1337875 () Bool)

(assert (= bs!1337875 (and d!1805116 d!1805082)))

(assert (=> bs!1337875 (= lambda!309238 lambda!309229)))

(declare-fun bs!1337876 () Bool)

(assert (= bs!1337876 (and d!1805116 d!1804746)))

(assert (=> bs!1337876 (= lambda!309238 lambda!309151)))

(declare-fun b!5721987 () Bool)

(declare-fun e!3518593 () Bool)

(declare-fun lt!2278209 () Regex!15717)

(assert (=> b!5721987 (= e!3518593 (isUnion!665 lt!2278209))))

(declare-fun b!5721988 () Bool)

(declare-fun e!3518592 () Bool)

(declare-fun e!3518594 () Bool)

(assert (=> b!5721988 (= e!3518592 e!3518594)))

(declare-fun c!1009220 () Bool)

(assert (=> b!5721988 (= c!1009220 (isEmpty!35202 (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327))))))

(declare-fun b!5721989 () Bool)

(declare-fun e!3518597 () Regex!15717)

(assert (=> b!5721989 (= e!3518597 (Union!15717 (h!69774 (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327))) (generalisedUnion!1580 (t!376774 (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327))))))))

(declare-fun b!5721990 () Bool)

(declare-fun e!3518595 () Bool)

(assert (=> b!5721990 (= e!3518595 (isEmpty!35202 (t!376774 (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327)))))))

(declare-fun b!5721991 () Bool)

(declare-fun e!3518596 () Regex!15717)

(assert (=> b!5721991 (= e!3518596 (h!69774 (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327))))))

(declare-fun b!5721992 () Bool)

(assert (=> b!5721992 (= e!3518597 EmptyLang!15717)))

(assert (=> d!1805116 e!3518592))

(declare-fun res!2415718 () Bool)

(assert (=> d!1805116 (=> (not res!2415718) (not e!3518592))))

(assert (=> d!1805116 (= res!2415718 (validRegex!7453 lt!2278209))))

(assert (=> d!1805116 (= lt!2278209 e!3518596)))

(declare-fun c!1009219 () Bool)

(assert (=> d!1805116 (= c!1009219 e!3518595)))

(declare-fun res!2415717 () Bool)

(assert (=> d!1805116 (=> (not res!2415717) (not e!3518595))))

(assert (=> d!1805116 (= res!2415717 ((_ is Cons!63326) (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327))))))

(assert (=> d!1805116 (forall!14851 (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327)) lambda!309238)))

(assert (=> d!1805116 (= (generalisedUnion!1580 (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327))) lt!2278209)))

(declare-fun b!5721993 () Bool)

(assert (=> b!5721993 (= e!3518593 (= lt!2278209 (head!12113 (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327)))))))

(declare-fun b!5721994 () Bool)

(assert (=> b!5721994 (= e!3518594 e!3518593)))

(declare-fun c!1009221 () Bool)

(assert (=> b!5721994 (= c!1009221 (isEmpty!35202 (tail!11208 (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327)))))))

(declare-fun b!5721995 () Bool)

(assert (=> b!5721995 (= e!3518596 e!3518597)))

(declare-fun c!1009222 () Bool)

(assert (=> b!5721995 (= c!1009222 ((_ is Cons!63326) (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327))))))

(declare-fun b!5721996 () Bool)

(assert (=> b!5721996 (= e!3518594 (isEmptyLang!1235 lt!2278209))))

(assert (= (and d!1805116 res!2415717) b!5721990))

(assert (= (and d!1805116 c!1009219) b!5721991))

(assert (= (and d!1805116 (not c!1009219)) b!5721995))

(assert (= (and b!5721995 c!1009222) b!5721989))

(assert (= (and b!5721995 (not c!1009222)) b!5721992))

(assert (= (and d!1805116 res!2415718) b!5721988))

(assert (= (and b!5721988 c!1009220) b!5721996))

(assert (= (and b!5721988 (not c!1009220)) b!5721994))

(assert (= (and b!5721994 c!1009221) b!5721993))

(assert (= (and b!5721994 (not c!1009221)) b!5721987))

(declare-fun m!6675116 () Bool)

(assert (=> b!5721989 m!6675116))

(declare-fun m!6675118 () Bool)

(assert (=> b!5721987 m!6675118))

(assert (=> b!5721993 m!6674490))

(declare-fun m!6675120 () Bool)

(assert (=> b!5721993 m!6675120))

(declare-fun m!6675122 () Bool)

(assert (=> b!5721990 m!6675122))

(assert (=> b!5721988 m!6674490))

(declare-fun m!6675124 () Bool)

(assert (=> b!5721988 m!6675124))

(declare-fun m!6675126 () Bool)

(assert (=> b!5721996 m!6675126))

(assert (=> b!5721994 m!6674490))

(declare-fun m!6675128 () Bool)

(assert (=> b!5721994 m!6675128))

(assert (=> b!5721994 m!6675128))

(declare-fun m!6675130 () Bool)

(assert (=> b!5721994 m!6675130))

(declare-fun m!6675132 () Bool)

(assert (=> d!1805116 m!6675132))

(assert (=> d!1805116 m!6674490))

(declare-fun m!6675134 () Bool)

(assert (=> d!1805116 m!6675134))

(assert (=> d!1804830 d!1805116))

(declare-fun bs!1337877 () Bool)

(declare-fun d!1805118 () Bool)

(assert (= bs!1337877 (and d!1805118 d!1805030)))

(declare-fun lambda!309239 () Int)

(assert (=> bs!1337877 (= lambda!309239 lambda!309218)))

(declare-fun bs!1337878 () Bool)

(assert (= bs!1337878 (and d!1805118 d!1804742)))

(assert (=> bs!1337878 (= lambda!309239 lambda!309143)))

(declare-fun bs!1337879 () Bool)

(assert (= bs!1337879 (and d!1805118 d!1804878)))

(assert (=> bs!1337879 (= lambda!309239 lambda!309189)))

(declare-fun bs!1337880 () Bool)

(assert (= bs!1337880 (and d!1805118 d!1805098)))

(assert (=> bs!1337880 (= lambda!309239 lambda!309232)))

(declare-fun bs!1337881 () Bool)

(assert (= bs!1337881 (and d!1805118 d!1805116)))

(assert (=> bs!1337881 (= lambda!309239 lambda!309238)))

(declare-fun bs!1337882 () Bool)

(assert (= bs!1337882 (and d!1805118 d!1804902)))

(assert (=> bs!1337882 (= lambda!309239 lambda!309192)))

(declare-fun bs!1337883 () Bool)

(assert (= bs!1337883 (and d!1805118 d!1804954)))

(assert (=> bs!1337883 (= lambda!309239 lambda!309208)))

(declare-fun bs!1337884 () Bool)

(assert (= bs!1337884 (and d!1805118 d!1805002)))

(assert (=> bs!1337884 (= lambda!309239 lambda!309212)))

(declare-fun bs!1337885 () Bool)

(assert (= bs!1337885 (and d!1805118 d!1804826)))

(assert (=> bs!1337885 (= lambda!309239 lambda!309165)))

(declare-fun bs!1337886 () Bool)

(assert (= bs!1337886 (and d!1805118 d!1805096)))

(assert (=> bs!1337886 (= lambda!309239 lambda!309231)))

(declare-fun bs!1337887 () Bool)

(assert (= bs!1337887 (and d!1805118 d!1805110)))

(assert (=> bs!1337887 (= lambda!309239 lambda!309235)))

(declare-fun bs!1337888 () Bool)

(assert (= bs!1337888 (and d!1805118 d!1805084)))

(assert (=> bs!1337888 (= lambda!309239 lambda!309230)))

(declare-fun bs!1337889 () Bool)

(assert (= bs!1337889 (and d!1805118 d!1805082)))

(assert (=> bs!1337889 (= lambda!309239 lambda!309229)))

(declare-fun bs!1337890 () Bool)

(assert (= bs!1337890 (and d!1805118 d!1804746)))

(assert (=> bs!1337890 (= lambda!309239 lambda!309151)))

(declare-fun lt!2278210 () List!63450)

(assert (=> d!1805118 (forall!14851 lt!2278210 lambda!309239)))

(declare-fun e!3518598 () List!63450)

(assert (=> d!1805118 (= lt!2278210 e!3518598)))

(declare-fun c!1009223 () Bool)

(assert (=> d!1805118 (= c!1009223 ((_ is Cons!63327) (Cons!63327 lt!2278097 Nil!63327)))))

(assert (=> d!1805118 (= (unfocusZipperList!1145 (Cons!63327 lt!2278097 Nil!63327)) lt!2278210)))

(declare-fun b!5721997 () Bool)

(assert (=> b!5721997 (= e!3518598 (Cons!63326 (generalisedConcat!1332 (exprs!5601 (h!69775 (Cons!63327 lt!2278097 Nil!63327)))) (unfocusZipperList!1145 (t!376775 (Cons!63327 lt!2278097 Nil!63327)))))))

(declare-fun b!5721998 () Bool)

(assert (=> b!5721998 (= e!3518598 Nil!63326)))

(assert (= (and d!1805118 c!1009223) b!5721997))

(assert (= (and d!1805118 (not c!1009223)) b!5721998))

(declare-fun m!6675136 () Bool)

(assert (=> d!1805118 m!6675136))

(declare-fun m!6675138 () Bool)

(assert (=> b!5721997 m!6675138))

(declare-fun m!6675140 () Bool)

(assert (=> b!5721997 m!6675140))

(assert (=> d!1804830 d!1805118))

(assert (=> d!1804928 d!1804924))

(assert (=> d!1804928 d!1804926))

(declare-fun d!1805120 () Bool)

(assert (=> d!1805120 (= (matchR!7902 lt!2278086 s!2326) (matchRSpec!2820 lt!2278086 s!2326))))

(assert (=> d!1805120 true))

(declare-fun _$88!4023 () Unit!156400)

(assert (=> d!1805120 (= (choose!43264 lt!2278086 s!2326) _$88!4023)))

(declare-fun bs!1337891 () Bool)

(assert (= bs!1337891 d!1805120))

(assert (=> bs!1337891 m!6674142))

(assert (=> bs!1337891 m!6674144))

(assert (=> d!1804928 d!1805120))

(declare-fun b!5721999 () Bool)

(declare-fun e!3518599 () Bool)

(declare-fun e!3518600 () Bool)

(assert (=> b!5721999 (= e!3518599 e!3518600)))

(declare-fun c!1009225 () Bool)

(assert (=> b!5721999 (= c!1009225 ((_ is Union!15717) lt!2278086))))

(declare-fun b!5722000 () Bool)

(declare-fun res!2415719 () Bool)

(declare-fun e!3518603 () Bool)

(assert (=> b!5722000 (=> res!2415719 e!3518603)))

(assert (=> b!5722000 (= res!2415719 (not ((_ is Concat!24562) lt!2278086)))))

(assert (=> b!5722000 (= e!3518600 e!3518603)))

(declare-fun b!5722001 () Bool)

(declare-fun e!3518602 () Bool)

(assert (=> b!5722001 (= e!3518603 e!3518602)))

(declare-fun res!2415721 () Bool)

(assert (=> b!5722001 (=> (not res!2415721) (not e!3518602))))

(declare-fun call!437226 () Bool)

(assert (=> b!5722001 (= res!2415721 call!437226)))

(declare-fun call!437224 () Bool)

(declare-fun c!1009224 () Bool)

(declare-fun bm!437219 () Bool)

(assert (=> bm!437219 (= call!437224 (validRegex!7453 (ite c!1009224 (reg!16046 lt!2278086) (ite c!1009225 (regOne!31947 lt!2278086) (regOne!31946 lt!2278086)))))))

(declare-fun b!5722002 () Bool)

(declare-fun e!3518604 () Bool)

(assert (=> b!5722002 (= e!3518604 e!3518599)))

(assert (=> b!5722002 (= c!1009224 ((_ is Star!15717) lt!2278086))))

(declare-fun b!5722003 () Bool)

(declare-fun call!437225 () Bool)

(assert (=> b!5722003 (= e!3518602 call!437225)))

(declare-fun b!5722005 () Bool)

(declare-fun e!3518601 () Bool)

(assert (=> b!5722005 (= e!3518601 call!437224)))

(declare-fun b!5722006 () Bool)

(assert (=> b!5722006 (= e!3518599 e!3518601)))

(declare-fun res!2415720 () Bool)

(assert (=> b!5722006 (= res!2415720 (not (nullable!5749 (reg!16046 lt!2278086))))))

(assert (=> b!5722006 (=> (not res!2415720) (not e!3518601))))

(declare-fun bm!437220 () Bool)

(assert (=> bm!437220 (= call!437226 call!437224)))

(declare-fun bm!437221 () Bool)

(assert (=> bm!437221 (= call!437225 (validRegex!7453 (ite c!1009225 (regTwo!31947 lt!2278086) (regTwo!31946 lt!2278086))))))

(declare-fun b!5722007 () Bool)

(declare-fun e!3518605 () Bool)

(assert (=> b!5722007 (= e!3518605 call!437225)))

(declare-fun d!1805122 () Bool)

(declare-fun res!2415723 () Bool)

(assert (=> d!1805122 (=> res!2415723 e!3518604)))

(assert (=> d!1805122 (= res!2415723 ((_ is ElementMatch!15717) lt!2278086))))

(assert (=> d!1805122 (= (validRegex!7453 lt!2278086) e!3518604)))

(declare-fun b!5722004 () Bool)

(declare-fun res!2415722 () Bool)

(assert (=> b!5722004 (=> (not res!2415722) (not e!3518605))))

(assert (=> b!5722004 (= res!2415722 call!437226)))

(assert (=> b!5722004 (= e!3518600 e!3518605)))

(assert (= (and d!1805122 (not res!2415723)) b!5722002))

(assert (= (and b!5722002 c!1009224) b!5722006))

(assert (= (and b!5722002 (not c!1009224)) b!5721999))

(assert (= (and b!5722006 res!2415720) b!5722005))

(assert (= (and b!5721999 c!1009225) b!5722004))

(assert (= (and b!5721999 (not c!1009225)) b!5722000))

(assert (= (and b!5722004 res!2415722) b!5722007))

(assert (= (and b!5722000 (not res!2415719)) b!5722001))

(assert (= (and b!5722001 res!2415721) b!5722003))

(assert (= (or b!5722007 b!5722003) bm!437221))

(assert (= (or b!5722004 b!5722001) bm!437220))

(assert (= (or b!5722005 bm!437220) bm!437219))

(declare-fun m!6675142 () Bool)

(assert (=> bm!437219 m!6675142))

(declare-fun m!6675144 () Bool)

(assert (=> b!5722006 m!6675144))

(declare-fun m!6675146 () Bool)

(assert (=> bm!437221 m!6675146))

(assert (=> d!1804928 d!1805122))

(assert (=> b!5721605 d!1804938))

(declare-fun bm!437222 () Bool)

(declare-fun call!437228 () Bool)

(declare-fun c!1009226 () Bool)

(assert (=> bm!437222 (= call!437228 (nullable!5749 (ite c!1009226 (regOne!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))))))

(declare-fun b!5722008 () Bool)

(declare-fun e!3518611 () Bool)

(declare-fun e!3518609 () Bool)

(assert (=> b!5722008 (= e!3518611 e!3518609)))

(assert (=> b!5722008 (= c!1009226 ((_ is Union!15717) (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun b!5722009 () Bool)

(declare-fun e!3518608 () Bool)

(assert (=> b!5722009 (= e!3518609 e!3518608)))

(declare-fun res!2415725 () Bool)

(assert (=> b!5722009 (= res!2415725 call!437228)))

(assert (=> b!5722009 (=> res!2415725 e!3518608)))

(declare-fun d!1805124 () Bool)

(declare-fun res!2415728 () Bool)

(declare-fun e!3518610 () Bool)

(assert (=> d!1805124 (=> res!2415728 e!3518610)))

(assert (=> d!1805124 (= res!2415728 ((_ is EmptyExpr!15717) (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(assert (=> d!1805124 (= (nullableFct!1813 (h!69774 (exprs!5601 (h!69775 zl!343)))) e!3518610)))

(declare-fun b!5722010 () Bool)

(declare-fun e!3518606 () Bool)

(assert (=> b!5722010 (= e!3518609 e!3518606)))

(declare-fun res!2415727 () Bool)

(assert (=> b!5722010 (= res!2415727 call!437228)))

(assert (=> b!5722010 (=> (not res!2415727) (not e!3518606))))

(declare-fun b!5722011 () Bool)

(declare-fun e!3518607 () Bool)

(assert (=> b!5722011 (= e!3518607 e!3518611)))

(declare-fun res!2415726 () Bool)

(assert (=> b!5722011 (=> res!2415726 e!3518611)))

(assert (=> b!5722011 (= res!2415726 ((_ is Star!15717) (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun b!5722012 () Bool)

(declare-fun call!437227 () Bool)

(assert (=> b!5722012 (= e!3518606 call!437227)))

(declare-fun b!5722013 () Bool)

(assert (=> b!5722013 (= e!3518608 call!437227)))

(declare-fun b!5722014 () Bool)

(assert (=> b!5722014 (= e!3518610 e!3518607)))

(declare-fun res!2415724 () Bool)

(assert (=> b!5722014 (=> (not res!2415724) (not e!3518607))))

(assert (=> b!5722014 (= res!2415724 (and (not ((_ is EmptyLang!15717) (h!69774 (exprs!5601 (h!69775 zl!343))))) (not ((_ is ElementMatch!15717) (h!69774 (exprs!5601 (h!69775 zl!343)))))))))

(declare-fun bm!437223 () Bool)

(assert (=> bm!437223 (= call!437227 (nullable!5749 (ite c!1009226 (regTwo!31947 (h!69774 (exprs!5601 (h!69775 zl!343)))) (regTwo!31946 (h!69774 (exprs!5601 (h!69775 zl!343)))))))))

(assert (= (and d!1805124 (not res!2415728)) b!5722014))

(assert (= (and b!5722014 res!2415724) b!5722011))

(assert (= (and b!5722011 (not res!2415726)) b!5722008))

(assert (= (and b!5722008 c!1009226) b!5722009))

(assert (= (and b!5722008 (not c!1009226)) b!5722010))

(assert (= (and b!5722009 (not res!2415725)) b!5722013))

(assert (= (and b!5722010 res!2415727) b!5722012))

(assert (= (or b!5722013 b!5722012) bm!437223))

(assert (= (or b!5722009 b!5722010) bm!437222))

(declare-fun m!6675148 () Bool)

(assert (=> bm!437222 m!6675148))

(declare-fun m!6675150 () Bool)

(assert (=> bm!437223 m!6675150))

(assert (=> d!1804786 d!1805124))

(assert (=> b!5721619 d!1804938))

(declare-fun d!1805126 () Bool)

(assert (=> d!1805126 (= (isEmpty!35202 (tail!11208 (exprs!5601 (h!69775 zl!343)))) ((_ is Nil!63326) (tail!11208 (exprs!5601 (h!69775 zl!343)))))))

(assert (=> b!5721482 d!1805126))

(declare-fun d!1805128 () Bool)

(assert (=> d!1805128 (= (tail!11208 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))

(assert (=> b!5721482 d!1805128))

(declare-fun d!1805130 () Bool)

(assert (=> d!1805130 true))

(assert (=> d!1805130 true))

(declare-fun res!2415729 () Bool)

(assert (=> d!1805130 (= (choose!43257 lambda!309135) res!2415729)))

(assert (=> d!1804864 d!1805130))

(declare-fun d!1805132 () Bool)

(declare-fun c!1009227 () Bool)

(assert (=> d!1805132 (= c!1009227 (isEmpty!35204 (tail!11209 s!2326)))))

(declare-fun e!3518612 () Bool)

(assert (=> d!1805132 (= (matchZipper!1855 (derivationStepZipper!1800 lt!2278092 (head!12114 s!2326)) (tail!11209 s!2326)) e!3518612)))

(declare-fun b!5722015 () Bool)

(assert (=> b!5722015 (= e!3518612 (nullableZipper!1666 (derivationStepZipper!1800 lt!2278092 (head!12114 s!2326))))))

(declare-fun b!5722016 () Bool)

(assert (=> b!5722016 (= e!3518612 (matchZipper!1855 (derivationStepZipper!1800 (derivationStepZipper!1800 lt!2278092 (head!12114 s!2326)) (head!12114 (tail!11209 s!2326))) (tail!11209 (tail!11209 s!2326))))))

(assert (= (and d!1805132 c!1009227) b!5722015))

(assert (= (and d!1805132 (not c!1009227)) b!5722016))

(assert (=> d!1805132 m!6674638))

(assert (=> d!1805132 m!6674732))

(assert (=> b!5722015 m!6674636))

(declare-fun m!6675152 () Bool)

(assert (=> b!5722015 m!6675152))

(assert (=> b!5722016 m!6674638))

(assert (=> b!5722016 m!6674888))

(assert (=> b!5722016 m!6674636))

(assert (=> b!5722016 m!6674888))

(declare-fun m!6675154 () Bool)

(assert (=> b!5722016 m!6675154))

(assert (=> b!5722016 m!6674638))

(assert (=> b!5722016 m!6674892))

(assert (=> b!5722016 m!6675154))

(assert (=> b!5722016 m!6674892))

(declare-fun m!6675156 () Bool)

(assert (=> b!5722016 m!6675156))

(assert (=> b!5721447 d!1805132))

(declare-fun bs!1337892 () Bool)

(declare-fun d!1805134 () Bool)

(assert (= bs!1337892 (and d!1805134 d!1805028)))

(declare-fun lambda!309240 () Int)

(assert (=> bs!1337892 (= (= (head!12114 s!2326) (head!12114 (t!376776 s!2326))) (= lambda!309240 lambda!309217))))

(declare-fun bs!1337893 () Bool)

(assert (= bs!1337893 (and d!1805134 b!5720846)))

(assert (=> bs!1337893 (= (= (head!12114 s!2326) (h!69776 s!2326)) (= lambda!309240 lambda!309137))))

(declare-fun bs!1337894 () Bool)

(assert (= bs!1337894 (and d!1805134 d!1804990)))

(assert (=> bs!1337894 (= (= (head!12114 s!2326) (head!12114 (t!376776 s!2326))) (= lambda!309240 lambda!309211))))

(declare-fun bs!1337895 () Bool)

(assert (= bs!1337895 (and d!1805134 d!1805024)))

(assert (=> bs!1337895 (= lambda!309240 lambda!309216)))

(declare-fun bs!1337896 () Bool)

(assert (= bs!1337896 (and d!1805134 d!1805102)))

(assert (=> bs!1337896 (= (= (head!12114 s!2326) (head!12114 (t!376776 s!2326))) (= lambda!309240 lambda!309233))))

(declare-fun bs!1337897 () Bool)

(assert (= bs!1337897 (and d!1805134 d!1804910)))

(assert (=> bs!1337897 (= (= (head!12114 s!2326) (h!69776 s!2326)) (= lambda!309240 lambda!309195))))

(assert (=> d!1805134 true))

(assert (=> d!1805134 (= (derivationStepZipper!1800 lt!2278092 (head!12114 s!2326)) (flatMap!1330 lt!2278092 lambda!309240))))

(declare-fun bs!1337898 () Bool)

(assert (= bs!1337898 d!1805134))

(declare-fun m!6675158 () Bool)

(assert (=> bs!1337898 m!6675158))

(assert (=> b!5721447 d!1805134))

(assert (=> b!5721447 d!1804938))

(assert (=> b!5721447 d!1805006))

(declare-fun b!5722017 () Bool)

(declare-fun e!3518617 () Bool)

(assert (=> b!5722017 (= e!3518617 (matchR!7902 (derivativeStep!4520 (regTwo!31946 r!7292) (head!12114 s!2326)) (tail!11209 s!2326)))))

(declare-fun b!5722018 () Bool)

(declare-fun e!3518615 () Bool)

(assert (=> b!5722018 (= e!3518615 (= (head!12114 s!2326) (c!1008905 (regTwo!31946 r!7292))))))

(declare-fun b!5722019 () Bool)

(declare-fun res!2415732 () Bool)

(assert (=> b!5722019 (=> (not res!2415732) (not e!3518615))))

(assert (=> b!5722019 (= res!2415732 (isEmpty!35204 (tail!11209 s!2326)))))

(declare-fun b!5722020 () Bool)

(declare-fun res!2415736 () Bool)

(declare-fun e!3518618 () Bool)

(assert (=> b!5722020 (=> res!2415736 e!3518618)))

(assert (=> b!5722020 (= res!2415736 e!3518615)))

(declare-fun res!2415733 () Bool)

(assert (=> b!5722020 (=> (not res!2415733) (not e!3518615))))

(declare-fun lt!2278211 () Bool)

(assert (=> b!5722020 (= res!2415733 lt!2278211)))

(declare-fun b!5722021 () Bool)

(declare-fun res!2415734 () Bool)

(assert (=> b!5722021 (=> res!2415734 e!3518618)))

(assert (=> b!5722021 (= res!2415734 (not ((_ is ElementMatch!15717) (regTwo!31946 r!7292))))))

(declare-fun e!3518616 () Bool)

(assert (=> b!5722021 (= e!3518616 e!3518618)))

(declare-fun b!5722022 () Bool)

(declare-fun e!3518613 () Bool)

(declare-fun e!3518614 () Bool)

(assert (=> b!5722022 (= e!3518613 e!3518614)))

(declare-fun res!2415737 () Bool)

(assert (=> b!5722022 (=> res!2415737 e!3518614)))

(declare-fun call!437229 () Bool)

(assert (=> b!5722022 (= res!2415737 call!437229)))

(declare-fun b!5722023 () Bool)

(assert (=> b!5722023 (= e!3518618 e!3518613)))

(declare-fun res!2415730 () Bool)

(assert (=> b!5722023 (=> (not res!2415730) (not e!3518613))))

(assert (=> b!5722023 (= res!2415730 (not lt!2278211))))

(declare-fun d!1805136 () Bool)

(declare-fun e!3518619 () Bool)

(assert (=> d!1805136 e!3518619))

(declare-fun c!1009229 () Bool)

(assert (=> d!1805136 (= c!1009229 ((_ is EmptyExpr!15717) (regTwo!31946 r!7292)))))

(assert (=> d!1805136 (= lt!2278211 e!3518617)))

(declare-fun c!1009230 () Bool)

(assert (=> d!1805136 (= c!1009230 (isEmpty!35204 s!2326))))

(assert (=> d!1805136 (validRegex!7453 (regTwo!31946 r!7292))))

(assert (=> d!1805136 (= (matchR!7902 (regTwo!31946 r!7292) s!2326) lt!2278211)))

(declare-fun b!5722024 () Bool)

(assert (=> b!5722024 (= e!3518619 e!3518616)))

(declare-fun c!1009228 () Bool)

(assert (=> b!5722024 (= c!1009228 ((_ is EmptyLang!15717) (regTwo!31946 r!7292)))))

(declare-fun b!5722025 () Bool)

(assert (=> b!5722025 (= e!3518614 (not (= (head!12114 s!2326) (c!1008905 (regTwo!31946 r!7292)))))))

(declare-fun b!5722026 () Bool)

(declare-fun res!2415731 () Bool)

(assert (=> b!5722026 (=> res!2415731 e!3518614)))

(assert (=> b!5722026 (= res!2415731 (not (isEmpty!35204 (tail!11209 s!2326))))))

(declare-fun b!5722027 () Bool)

(assert (=> b!5722027 (= e!3518616 (not lt!2278211))))

(declare-fun b!5722028 () Bool)

(declare-fun res!2415735 () Bool)

(assert (=> b!5722028 (=> (not res!2415735) (not e!3518615))))

(assert (=> b!5722028 (= res!2415735 (not call!437229))))

(declare-fun b!5722029 () Bool)

(assert (=> b!5722029 (= e!3518619 (= lt!2278211 call!437229))))

(declare-fun bm!437224 () Bool)

(assert (=> bm!437224 (= call!437229 (isEmpty!35204 s!2326))))

(declare-fun b!5722030 () Bool)

(assert (=> b!5722030 (= e!3518617 (nullable!5749 (regTwo!31946 r!7292)))))

(assert (= (and d!1805136 c!1009230) b!5722030))

(assert (= (and d!1805136 (not c!1009230)) b!5722017))

(assert (= (and d!1805136 c!1009229) b!5722029))

(assert (= (and d!1805136 (not c!1009229)) b!5722024))

(assert (= (and b!5722024 c!1009228) b!5722027))

(assert (= (and b!5722024 (not c!1009228)) b!5722021))

(assert (= (and b!5722021 (not res!2415734)) b!5722020))

(assert (= (and b!5722020 res!2415733) b!5722028))

(assert (= (and b!5722028 res!2415735) b!5722019))

(assert (= (and b!5722019 res!2415732) b!5722018))

(assert (= (and b!5722020 (not res!2415736)) b!5722023))

(assert (= (and b!5722023 res!2415730) b!5722022))

(assert (= (and b!5722022 (not res!2415737)) b!5722026))

(assert (= (and b!5722026 (not res!2415731)) b!5722025))

(assert (= (or b!5722029 b!5722028 b!5722022) bm!437224))

(assert (=> b!5722025 m!6674634))

(assert (=> b!5722019 m!6674638))

(assert (=> b!5722019 m!6674638))

(assert (=> b!5722019 m!6674732))

(assert (=> b!5722026 m!6674638))

(assert (=> b!5722026 m!6674638))

(assert (=> b!5722026 m!6674732))

(assert (=> bm!437224 m!6674630))

(assert (=> d!1805136 m!6674630))

(assert (=> d!1805136 m!6674990))

(assert (=> b!5722017 m!6674634))

(assert (=> b!5722017 m!6674634))

(declare-fun m!6675160 () Bool)

(assert (=> b!5722017 m!6675160))

(assert (=> b!5722017 m!6674638))

(assert (=> b!5722017 m!6675160))

(assert (=> b!5722017 m!6674638))

(declare-fun m!6675162 () Bool)

(assert (=> b!5722017 m!6675162))

(assert (=> b!5722018 m!6674634))

(assert (=> b!5722030 m!6674996))

(assert (=> b!5721346 d!1805136))

(declare-fun b!5722031 () Bool)

(declare-fun e!3518620 () Bool)

(declare-fun e!3518621 () Bool)

(assert (=> b!5722031 (= e!3518620 e!3518621)))

(declare-fun c!1009232 () Bool)

(assert (=> b!5722031 (= c!1009232 ((_ is Union!15717) lt!2278188))))

(declare-fun b!5722032 () Bool)

(declare-fun res!2415738 () Bool)

(declare-fun e!3518624 () Bool)

(assert (=> b!5722032 (=> res!2415738 e!3518624)))

(assert (=> b!5722032 (= res!2415738 (not ((_ is Concat!24562) lt!2278188)))))

(assert (=> b!5722032 (= e!3518621 e!3518624)))

(declare-fun b!5722033 () Bool)

(declare-fun e!3518623 () Bool)

(assert (=> b!5722033 (= e!3518624 e!3518623)))

(declare-fun res!2415740 () Bool)

(assert (=> b!5722033 (=> (not res!2415740) (not e!3518623))))

(declare-fun call!437232 () Bool)

(assert (=> b!5722033 (= res!2415740 call!437232)))

(declare-fun call!437230 () Bool)

(declare-fun bm!437225 () Bool)

(declare-fun c!1009231 () Bool)

(assert (=> bm!437225 (= call!437230 (validRegex!7453 (ite c!1009231 (reg!16046 lt!2278188) (ite c!1009232 (regOne!31947 lt!2278188) (regOne!31946 lt!2278188)))))))

(declare-fun b!5722034 () Bool)

(declare-fun e!3518625 () Bool)

(assert (=> b!5722034 (= e!3518625 e!3518620)))

(assert (=> b!5722034 (= c!1009231 ((_ is Star!15717) lt!2278188))))

(declare-fun b!5722035 () Bool)

(declare-fun call!437231 () Bool)

(assert (=> b!5722035 (= e!3518623 call!437231)))

(declare-fun b!5722037 () Bool)

(declare-fun e!3518622 () Bool)

(assert (=> b!5722037 (= e!3518622 call!437230)))

(declare-fun b!5722038 () Bool)

(assert (=> b!5722038 (= e!3518620 e!3518622)))

(declare-fun res!2415739 () Bool)

(assert (=> b!5722038 (= res!2415739 (not (nullable!5749 (reg!16046 lt!2278188))))))

(assert (=> b!5722038 (=> (not res!2415739) (not e!3518622))))

(declare-fun bm!437226 () Bool)

(assert (=> bm!437226 (= call!437232 call!437230)))

(declare-fun bm!437227 () Bool)

(assert (=> bm!437227 (= call!437231 (validRegex!7453 (ite c!1009232 (regTwo!31947 lt!2278188) (regTwo!31946 lt!2278188))))))

(declare-fun b!5722039 () Bool)

(declare-fun e!3518626 () Bool)

(assert (=> b!5722039 (= e!3518626 call!437231)))

(declare-fun d!1805138 () Bool)

(declare-fun res!2415742 () Bool)

(assert (=> d!1805138 (=> res!2415742 e!3518625)))

(assert (=> d!1805138 (= res!2415742 ((_ is ElementMatch!15717) lt!2278188))))

(assert (=> d!1805138 (= (validRegex!7453 lt!2278188) e!3518625)))

(declare-fun b!5722036 () Bool)

(declare-fun res!2415741 () Bool)

(assert (=> b!5722036 (=> (not res!2415741) (not e!3518626))))

(assert (=> b!5722036 (= res!2415741 call!437232)))

(assert (=> b!5722036 (= e!3518621 e!3518626)))

(assert (= (and d!1805138 (not res!2415742)) b!5722034))

(assert (= (and b!5722034 c!1009231) b!5722038))

(assert (= (and b!5722034 (not c!1009231)) b!5722031))

(assert (= (and b!5722038 res!2415739) b!5722037))

(assert (= (and b!5722031 c!1009232) b!5722036))

(assert (= (and b!5722031 (not c!1009232)) b!5722032))

(assert (= (and b!5722036 res!2415741) b!5722039))

(assert (= (and b!5722032 (not res!2415738)) b!5722033))

(assert (= (and b!5722033 res!2415740) b!5722035))

(assert (= (or b!5722039 b!5722035) bm!437227))

(assert (= (or b!5722036 b!5722033) bm!437226))

(assert (= (or b!5722037 bm!437226) bm!437225))

(declare-fun m!6675164 () Bool)

(assert (=> bm!437225 m!6675164))

(declare-fun m!6675166 () Bool)

(assert (=> b!5722038 m!6675166))

(declare-fun m!6675168 () Bool)

(assert (=> bm!437227 m!6675168))

(assert (=> d!1804902 d!1805138))

(declare-fun d!1805140 () Bool)

(declare-fun res!2415743 () Bool)

(declare-fun e!3518627 () Bool)

(assert (=> d!1805140 (=> res!2415743 e!3518627)))

(assert (=> d!1805140 (= res!2415743 ((_ is Nil!63326) (exprs!5601 (h!69775 zl!343))))))

(assert (=> d!1805140 (= (forall!14851 (exprs!5601 (h!69775 zl!343)) lambda!309192) e!3518627)))

(declare-fun b!5722040 () Bool)

(declare-fun e!3518628 () Bool)

(assert (=> b!5722040 (= e!3518627 e!3518628)))

(declare-fun res!2415744 () Bool)

(assert (=> b!5722040 (=> (not res!2415744) (not e!3518628))))

(assert (=> b!5722040 (= res!2415744 (dynLambda!24781 lambda!309192 (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun b!5722041 () Bool)

(assert (=> b!5722041 (= e!3518628 (forall!14851 (t!376774 (exprs!5601 (h!69775 zl!343))) lambda!309192))))

(assert (= (and d!1805140 (not res!2415743)) b!5722040))

(assert (= (and b!5722040 res!2415744) b!5722041))

(declare-fun b_lambda!216209 () Bool)

(assert (=> (not b_lambda!216209) (not b!5722040)))

(declare-fun m!6675170 () Bool)

(assert (=> b!5722040 m!6675170))

(declare-fun m!6675172 () Bool)

(assert (=> b!5722041 m!6675172))

(assert (=> d!1804902 d!1805140))

(declare-fun b!5722042 () Bool)

(declare-fun e!3518631 () (InoxSet Context!10202))

(assert (=> b!5722042 (= e!3518631 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5722043 () Bool)

(declare-fun e!3518629 () (InoxSet Context!10202))

(assert (=> b!5722043 (= e!3518629 e!3518631)))

(declare-fun c!1009234 () Bool)

(assert (=> b!5722043 (= c!1009234 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278081))))))))

(declare-fun d!1805142 () Bool)

(declare-fun c!1009233 () Bool)

(declare-fun e!3518630 () Bool)

(assert (=> d!1805142 (= c!1009233 e!3518630)))

(declare-fun res!2415745 () Bool)

(assert (=> d!1805142 (=> (not res!2415745) (not e!3518630))))

(assert (=> d!1805142 (= res!2415745 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278081))))))))

(assert (=> d!1805142 (= (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 lt!2278081))) (h!69776 s!2326)) e!3518629)))

(declare-fun call!437233 () (InoxSet Context!10202))

(declare-fun b!5722044 () Bool)

(assert (=> b!5722044 (= e!3518629 ((_ map or) call!437233 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278081)))))) (h!69776 s!2326))))))

(declare-fun b!5722045 () Bool)

(assert (=> b!5722045 (= e!3518631 call!437233)))

(declare-fun bm!437228 () Bool)

(assert (=> bm!437228 (= call!437233 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278081))))) (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278081)))))) (h!69776 s!2326)))))

(declare-fun b!5722046 () Bool)

(assert (=> b!5722046 (= e!3518630 (nullable!5749 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278081)))))))))

(assert (= (and d!1805142 res!2415745) b!5722046))

(assert (= (and d!1805142 c!1009233) b!5722044))

(assert (= (and d!1805142 (not c!1009233)) b!5722043))

(assert (= (and b!5722043 c!1009234) b!5722045))

(assert (= (and b!5722043 (not c!1009234)) b!5722042))

(assert (= (or b!5722044 b!5722045) bm!437228))

(declare-fun m!6675174 () Bool)

(assert (=> b!5722044 m!6675174))

(declare-fun m!6675176 () Bool)

(assert (=> bm!437228 m!6675176))

(declare-fun m!6675178 () Bool)

(assert (=> b!5722046 m!6675178))

(assert (=> b!5721459 d!1805142))

(declare-fun d!1805144 () Bool)

(assert (=> d!1805144 (= (isEmptyLang!1235 lt!2278112) ((_ is EmptyLang!15717) lt!2278112))))

(assert (=> b!5721002 d!1805144))

(assert (=> d!1804832 d!1805000))

(declare-fun b!5722047 () Bool)

(declare-fun e!3518636 () Bool)

(assert (=> b!5722047 (= e!3518636 (matchR!7902 (derivativeStep!4520 (regOne!31946 r!7292) (head!12114 Nil!63328)) (tail!11209 Nil!63328)))))

(declare-fun b!5722048 () Bool)

(declare-fun e!3518634 () Bool)

(assert (=> b!5722048 (= e!3518634 (= (head!12114 Nil!63328) (c!1008905 (regOne!31946 r!7292))))))

(declare-fun b!5722049 () Bool)

(declare-fun res!2415748 () Bool)

(assert (=> b!5722049 (=> (not res!2415748) (not e!3518634))))

(assert (=> b!5722049 (= res!2415748 (isEmpty!35204 (tail!11209 Nil!63328)))))

(declare-fun b!5722050 () Bool)

(declare-fun res!2415752 () Bool)

(declare-fun e!3518637 () Bool)

(assert (=> b!5722050 (=> res!2415752 e!3518637)))

(assert (=> b!5722050 (= res!2415752 e!3518634)))

(declare-fun res!2415749 () Bool)

(assert (=> b!5722050 (=> (not res!2415749) (not e!3518634))))

(declare-fun lt!2278212 () Bool)

(assert (=> b!5722050 (= res!2415749 lt!2278212)))

(declare-fun b!5722051 () Bool)

(declare-fun res!2415750 () Bool)

(assert (=> b!5722051 (=> res!2415750 e!3518637)))

(assert (=> b!5722051 (= res!2415750 (not ((_ is ElementMatch!15717) (regOne!31946 r!7292))))))

(declare-fun e!3518635 () Bool)

(assert (=> b!5722051 (= e!3518635 e!3518637)))

(declare-fun b!5722052 () Bool)

(declare-fun e!3518632 () Bool)

(declare-fun e!3518633 () Bool)

(assert (=> b!5722052 (= e!3518632 e!3518633)))

(declare-fun res!2415753 () Bool)

(assert (=> b!5722052 (=> res!2415753 e!3518633)))

(declare-fun call!437234 () Bool)

(assert (=> b!5722052 (= res!2415753 call!437234)))

(declare-fun b!5722053 () Bool)

(assert (=> b!5722053 (= e!3518637 e!3518632)))

(declare-fun res!2415746 () Bool)

(assert (=> b!5722053 (=> (not res!2415746) (not e!3518632))))

(assert (=> b!5722053 (= res!2415746 (not lt!2278212))))

(declare-fun d!1805146 () Bool)

(declare-fun e!3518638 () Bool)

(assert (=> d!1805146 e!3518638))

(declare-fun c!1009236 () Bool)

(assert (=> d!1805146 (= c!1009236 ((_ is EmptyExpr!15717) (regOne!31946 r!7292)))))

(assert (=> d!1805146 (= lt!2278212 e!3518636)))

(declare-fun c!1009237 () Bool)

(assert (=> d!1805146 (= c!1009237 (isEmpty!35204 Nil!63328))))

(assert (=> d!1805146 (validRegex!7453 (regOne!31946 r!7292))))

(assert (=> d!1805146 (= (matchR!7902 (regOne!31946 r!7292) Nil!63328) lt!2278212)))

(declare-fun b!5722054 () Bool)

(assert (=> b!5722054 (= e!3518638 e!3518635)))

(declare-fun c!1009235 () Bool)

(assert (=> b!5722054 (= c!1009235 ((_ is EmptyLang!15717) (regOne!31946 r!7292)))))

(declare-fun b!5722055 () Bool)

(assert (=> b!5722055 (= e!3518633 (not (= (head!12114 Nil!63328) (c!1008905 (regOne!31946 r!7292)))))))

(declare-fun b!5722056 () Bool)

(declare-fun res!2415747 () Bool)

(assert (=> b!5722056 (=> res!2415747 e!3518633)))

(assert (=> b!5722056 (= res!2415747 (not (isEmpty!35204 (tail!11209 Nil!63328))))))

(declare-fun b!5722057 () Bool)

(assert (=> b!5722057 (= e!3518635 (not lt!2278212))))

(declare-fun b!5722058 () Bool)

(declare-fun res!2415751 () Bool)

(assert (=> b!5722058 (=> (not res!2415751) (not e!3518634))))

(assert (=> b!5722058 (= res!2415751 (not call!437234))))

(declare-fun b!5722059 () Bool)

(assert (=> b!5722059 (= e!3518638 (= lt!2278212 call!437234))))

(declare-fun bm!437229 () Bool)

(assert (=> bm!437229 (= call!437234 (isEmpty!35204 Nil!63328))))

(declare-fun b!5722060 () Bool)

(assert (=> b!5722060 (= e!3518636 (nullable!5749 (regOne!31946 r!7292)))))

(assert (= (and d!1805146 c!1009237) b!5722060))

(assert (= (and d!1805146 (not c!1009237)) b!5722047))

(assert (= (and d!1805146 c!1009236) b!5722059))

(assert (= (and d!1805146 (not c!1009236)) b!5722054))

(assert (= (and b!5722054 c!1009235) b!5722057))

(assert (= (and b!5722054 (not c!1009235)) b!5722051))

(assert (= (and b!5722051 (not res!2415750)) b!5722050))

(assert (= (and b!5722050 res!2415749) b!5722058))

(assert (= (and b!5722058 res!2415751) b!5722049))

(assert (= (and b!5722049 res!2415748) b!5722048))

(assert (= (and b!5722050 (not res!2415752)) b!5722053))

(assert (= (and b!5722053 res!2415746) b!5722052))

(assert (= (and b!5722052 (not res!2415753)) b!5722056))

(assert (= (and b!5722056 (not res!2415747)) b!5722055))

(assert (= (or b!5722059 b!5722058 b!5722052) bm!437229))

(declare-fun m!6675180 () Bool)

(assert (=> b!5722055 m!6675180))

(declare-fun m!6675182 () Bool)

(assert (=> b!5722049 m!6675182))

(assert (=> b!5722049 m!6675182))

(declare-fun m!6675184 () Bool)

(assert (=> b!5722049 m!6675184))

(assert (=> b!5722056 m!6675182))

(assert (=> b!5722056 m!6675182))

(assert (=> b!5722056 m!6675184))

(declare-fun m!6675186 () Bool)

(assert (=> bm!437229 m!6675186))

(assert (=> d!1805146 m!6675186))

(assert (=> d!1805146 m!6674576))

(assert (=> b!5722047 m!6675180))

(assert (=> b!5722047 m!6675180))

(declare-fun m!6675188 () Bool)

(assert (=> b!5722047 m!6675188))

(assert (=> b!5722047 m!6675182))

(assert (=> b!5722047 m!6675188))

(assert (=> b!5722047 m!6675182))

(declare-fun m!6675190 () Bool)

(assert (=> b!5722047 m!6675190))

(assert (=> b!5722048 m!6675180))

(declare-fun m!6675192 () Bool)

(assert (=> b!5722060 m!6675192))

(assert (=> d!1804832 d!1805146))

(assert (=> d!1804832 d!1805016))

(declare-fun d!1805148 () Bool)

(declare-fun res!2415754 () Bool)

(declare-fun e!3518639 () Bool)

(assert (=> d!1805148 (=> res!2415754 e!3518639)))

(assert (=> d!1805148 (= res!2415754 ((_ is Nil!63326) lt!2278115))))

(assert (=> d!1805148 (= (forall!14851 lt!2278115 lambda!309151) e!3518639)))

(declare-fun b!5722061 () Bool)

(declare-fun e!3518640 () Bool)

(assert (=> b!5722061 (= e!3518639 e!3518640)))

(declare-fun res!2415755 () Bool)

(assert (=> b!5722061 (=> (not res!2415755) (not e!3518640))))

(assert (=> b!5722061 (= res!2415755 (dynLambda!24781 lambda!309151 (h!69774 lt!2278115)))))

(declare-fun b!5722062 () Bool)

(assert (=> b!5722062 (= e!3518640 (forall!14851 (t!376774 lt!2278115) lambda!309151))))

(assert (= (and d!1805148 (not res!2415754)) b!5722061))

(assert (= (and b!5722061 res!2415755) b!5722062))

(declare-fun b_lambda!216211 () Bool)

(assert (=> (not b_lambda!216211) (not b!5722061)))

(declare-fun m!6675194 () Bool)

(assert (=> b!5722061 m!6675194))

(declare-fun m!6675196 () Bool)

(assert (=> b!5722062 m!6675196))

(assert (=> d!1804746 d!1805148))

(assert (=> d!1804880 d!1804960))

(declare-fun b!5722066 () Bool)

(declare-fun e!3518642 () Bool)

(declare-fun lt!2278213 () List!63452)

(assert (=> b!5722066 (= e!3518642 (or (not (= (t!376776 s!2326) Nil!63328)) (= lt!2278213 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328)))))))

(declare-fun b!5722065 () Bool)

(declare-fun res!2415757 () Bool)

(assert (=> b!5722065 (=> (not res!2415757) (not e!3518642))))

(assert (=> b!5722065 (= res!2415757 (= (size!40028 lt!2278213) (+ (size!40028 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328))) (size!40028 (t!376776 s!2326)))))))

(declare-fun d!1805150 () Bool)

(assert (=> d!1805150 e!3518642))

(declare-fun res!2415756 () Bool)

(assert (=> d!1805150 (=> (not res!2415756) (not e!3518642))))

(assert (=> d!1805150 (= res!2415756 (= (content!11509 lt!2278213) ((_ map or) (content!11509 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328))) (content!11509 (t!376776 s!2326)))))))

(declare-fun e!3518641 () List!63452)

(assert (=> d!1805150 (= lt!2278213 e!3518641)))

(declare-fun c!1009238 () Bool)

(assert (=> d!1805150 (= c!1009238 ((_ is Nil!63328) (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328))))))

(assert (=> d!1805150 (= (++!13912 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328)) (t!376776 s!2326)) lt!2278213)))

(declare-fun b!5722063 () Bool)

(assert (=> b!5722063 (= e!3518641 (t!376776 s!2326))))

(declare-fun b!5722064 () Bool)

(assert (=> b!5722064 (= e!3518641 (Cons!63328 (h!69776 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328))) (++!13912 (t!376776 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328))) (t!376776 s!2326))))))

(assert (= (and d!1805150 c!1009238) b!5722063))

(assert (= (and d!1805150 (not c!1009238)) b!5722064))

(assert (= (and d!1805150 res!2415756) b!5722065))

(assert (= (and b!5722065 res!2415757) b!5722066))

(declare-fun m!6675198 () Bool)

(assert (=> b!5722065 m!6675198))

(assert (=> b!5722065 m!6674564))

(declare-fun m!6675200 () Bool)

(assert (=> b!5722065 m!6675200))

(declare-fun m!6675202 () Bool)

(assert (=> b!5722065 m!6675202))

(declare-fun m!6675204 () Bool)

(assert (=> d!1805150 m!6675204))

(assert (=> d!1805150 m!6674564))

(declare-fun m!6675206 () Bool)

(assert (=> d!1805150 m!6675206))

(declare-fun m!6675208 () Bool)

(assert (=> d!1805150 m!6675208))

(declare-fun m!6675210 () Bool)

(assert (=> b!5722064 m!6675210))

(assert (=> b!5721342 d!1805150))

(declare-fun b!5722070 () Bool)

(declare-fun e!3518644 () Bool)

(declare-fun lt!2278214 () List!63452)

(assert (=> b!5722070 (= e!3518644 (or (not (= (Cons!63328 (h!69776 s!2326) Nil!63328) Nil!63328)) (= lt!2278214 Nil!63328)))))

(declare-fun b!5722069 () Bool)

(declare-fun res!2415759 () Bool)

(assert (=> b!5722069 (=> (not res!2415759) (not e!3518644))))

(assert (=> b!5722069 (= res!2415759 (= (size!40028 lt!2278214) (+ (size!40028 Nil!63328) (size!40028 (Cons!63328 (h!69776 s!2326) Nil!63328)))))))

(declare-fun d!1805152 () Bool)

(assert (=> d!1805152 e!3518644))

(declare-fun res!2415758 () Bool)

(assert (=> d!1805152 (=> (not res!2415758) (not e!3518644))))

(assert (=> d!1805152 (= res!2415758 (= (content!11509 lt!2278214) ((_ map or) (content!11509 Nil!63328) (content!11509 (Cons!63328 (h!69776 s!2326) Nil!63328)))))))

(declare-fun e!3518643 () List!63452)

(assert (=> d!1805152 (= lt!2278214 e!3518643)))

(declare-fun c!1009239 () Bool)

(assert (=> d!1805152 (= c!1009239 ((_ is Nil!63328) Nil!63328))))

(assert (=> d!1805152 (= (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328)) lt!2278214)))

(declare-fun b!5722067 () Bool)

(assert (=> b!5722067 (= e!3518643 (Cons!63328 (h!69776 s!2326) Nil!63328))))

(declare-fun b!5722068 () Bool)

(assert (=> b!5722068 (= e!3518643 (Cons!63328 (h!69776 Nil!63328) (++!13912 (t!376776 Nil!63328) (Cons!63328 (h!69776 s!2326) Nil!63328))))))

(assert (= (and d!1805152 c!1009239) b!5722067))

(assert (= (and d!1805152 (not c!1009239)) b!5722068))

(assert (= (and d!1805152 res!2415758) b!5722069))

(assert (= (and b!5722069 res!2415759) b!5722070))

(declare-fun m!6675212 () Bool)

(assert (=> b!5722069 m!6675212))

(declare-fun m!6675214 () Bool)

(assert (=> b!5722069 m!6675214))

(declare-fun m!6675216 () Bool)

(assert (=> b!5722069 m!6675216))

(declare-fun m!6675218 () Bool)

(assert (=> d!1805152 m!6675218))

(declare-fun m!6675220 () Bool)

(assert (=> d!1805152 m!6675220))

(declare-fun m!6675222 () Bool)

(assert (=> d!1805152 m!6675222))

(declare-fun m!6675224 () Bool)

(assert (=> b!5722068 m!6675224))

(assert (=> b!5721342 d!1805152))

(declare-fun d!1805154 () Bool)

(assert (=> d!1805154 (= (++!13912 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328)) (t!376776 s!2326)) s!2326)))

(declare-fun lt!2278217 () Unit!156400)

(declare-fun choose!43266 (List!63452 C!31704 List!63452 List!63452) Unit!156400)

(assert (=> d!1805154 (= lt!2278217 (choose!43266 Nil!63328 (h!69776 s!2326) (t!376776 s!2326) s!2326))))

(assert (=> d!1805154 (= (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) (t!376776 s!2326))) s!2326)))

(assert (=> d!1805154 (= (lemmaMoveElementToOtherListKeepsConcatEq!2069 Nil!63328 (h!69776 s!2326) (t!376776 s!2326) s!2326) lt!2278217)))

(declare-fun bs!1337899 () Bool)

(assert (= bs!1337899 d!1805154))

(assert (=> bs!1337899 m!6674564))

(assert (=> bs!1337899 m!6674564))

(assert (=> bs!1337899 m!6674566))

(declare-fun m!6675226 () Bool)

(assert (=> bs!1337899 m!6675226))

(declare-fun m!6675228 () Bool)

(assert (=> bs!1337899 m!6675228))

(assert (=> b!5721342 d!1805154))

(declare-fun b!5722071 () Bool)

(declare-fun res!2415760 () Bool)

(declare-fun e!3518648 () Bool)

(assert (=> b!5722071 (=> (not res!2415760) (not e!3518648))))

(declare-fun lt!2278219 () Option!15726)

(assert (=> b!5722071 (= res!2415760 (matchR!7902 (regOne!31946 r!7292) (_1!36117 (get!21834 lt!2278219))))))

(declare-fun b!5722072 () Bool)

(declare-fun e!3518646 () Option!15726)

(assert (=> b!5722072 (= e!3518646 (Some!15725 (tuple2!65629 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328)) (t!376776 s!2326))))))

(declare-fun b!5722073 () Bool)

(declare-fun e!3518649 () Option!15726)

(assert (=> b!5722073 (= e!3518646 e!3518649)))

(declare-fun c!1009241 () Bool)

(assert (=> b!5722073 (= c!1009241 ((_ is Nil!63328) (t!376776 s!2326)))))

(declare-fun b!5722074 () Bool)

(assert (=> b!5722074 (= e!3518648 (= (++!13912 (_1!36117 (get!21834 lt!2278219)) (_2!36117 (get!21834 lt!2278219))) s!2326))))

(declare-fun b!5722075 () Bool)

(declare-fun lt!2278220 () Unit!156400)

(declare-fun lt!2278218 () Unit!156400)

(assert (=> b!5722075 (= lt!2278220 lt!2278218)))

(assert (=> b!5722075 (= (++!13912 (++!13912 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328)) (Cons!63328 (h!69776 (t!376776 s!2326)) Nil!63328)) (t!376776 (t!376776 s!2326))) s!2326)))

(assert (=> b!5722075 (= lt!2278218 (lemmaMoveElementToOtherListKeepsConcatEq!2069 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328)) (h!69776 (t!376776 s!2326)) (t!376776 (t!376776 s!2326)) s!2326))))

(assert (=> b!5722075 (= e!3518649 (findConcatSeparation!2140 (regOne!31946 r!7292) (regTwo!31946 r!7292) (++!13912 (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328)) (Cons!63328 (h!69776 (t!376776 s!2326)) Nil!63328)) (t!376776 (t!376776 s!2326)) s!2326))))

(declare-fun b!5722076 () Bool)

(assert (=> b!5722076 (= e!3518649 None!15725)))

(declare-fun b!5722077 () Bool)

(declare-fun e!3518647 () Bool)

(assert (=> b!5722077 (= e!3518647 (not (isDefined!12429 lt!2278219)))))

(declare-fun b!5722078 () Bool)

(declare-fun res!2415761 () Bool)

(assert (=> b!5722078 (=> (not res!2415761) (not e!3518648))))

(assert (=> b!5722078 (= res!2415761 (matchR!7902 (regTwo!31946 r!7292) (_2!36117 (get!21834 lt!2278219))))))

(declare-fun b!5722079 () Bool)

(declare-fun e!3518645 () Bool)

(assert (=> b!5722079 (= e!3518645 (matchR!7902 (regTwo!31946 r!7292) (t!376776 s!2326)))))

(declare-fun d!1805156 () Bool)

(assert (=> d!1805156 e!3518647))

(declare-fun res!2415764 () Bool)

(assert (=> d!1805156 (=> res!2415764 e!3518647)))

(assert (=> d!1805156 (= res!2415764 e!3518648)))

(declare-fun res!2415763 () Bool)

(assert (=> d!1805156 (=> (not res!2415763) (not e!3518648))))

(assert (=> d!1805156 (= res!2415763 (isDefined!12429 lt!2278219))))

(assert (=> d!1805156 (= lt!2278219 e!3518646)))

(declare-fun c!1009240 () Bool)

(assert (=> d!1805156 (= c!1009240 e!3518645)))

(declare-fun res!2415762 () Bool)

(assert (=> d!1805156 (=> (not res!2415762) (not e!3518645))))

(assert (=> d!1805156 (= res!2415762 (matchR!7902 (regOne!31946 r!7292) (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328))))))

(assert (=> d!1805156 (validRegex!7453 (regOne!31946 r!7292))))

(assert (=> d!1805156 (= (findConcatSeparation!2140 (regOne!31946 r!7292) (regTwo!31946 r!7292) (++!13912 Nil!63328 (Cons!63328 (h!69776 s!2326) Nil!63328)) (t!376776 s!2326) s!2326) lt!2278219)))

(assert (= (and d!1805156 res!2415762) b!5722079))

(assert (= (and d!1805156 c!1009240) b!5722072))

(assert (= (and d!1805156 (not c!1009240)) b!5722073))

(assert (= (and b!5722073 c!1009241) b!5722076))

(assert (= (and b!5722073 (not c!1009241)) b!5722075))

(assert (= (and d!1805156 res!2415763) b!5722071))

(assert (= (and b!5722071 res!2415760) b!5722078))

(assert (= (and b!5722078 res!2415761) b!5722074))

(assert (= (and d!1805156 (not res!2415764)) b!5722077))

(declare-fun m!6675230 () Bool)

(assert (=> b!5722071 m!6675230))

(declare-fun m!6675232 () Bool)

(assert (=> b!5722071 m!6675232))

(assert (=> b!5722075 m!6674564))

(declare-fun m!6675234 () Bool)

(assert (=> b!5722075 m!6675234))

(assert (=> b!5722075 m!6675234))

(declare-fun m!6675236 () Bool)

(assert (=> b!5722075 m!6675236))

(assert (=> b!5722075 m!6674564))

(declare-fun m!6675238 () Bool)

(assert (=> b!5722075 m!6675238))

(assert (=> b!5722075 m!6675234))

(declare-fun m!6675240 () Bool)

(assert (=> b!5722075 m!6675240))

(declare-fun m!6675242 () Bool)

(assert (=> d!1805156 m!6675242))

(assert (=> d!1805156 m!6674564))

(declare-fun m!6675244 () Bool)

(assert (=> d!1805156 m!6675244))

(assert (=> d!1805156 m!6674576))

(assert (=> b!5722078 m!6675230))

(declare-fun m!6675246 () Bool)

(assert (=> b!5722078 m!6675246))

(assert (=> b!5722074 m!6675230))

(declare-fun m!6675248 () Bool)

(assert (=> b!5722074 m!6675248))

(assert (=> b!5722077 m!6675242))

(declare-fun m!6675250 () Bool)

(assert (=> b!5722079 m!6675250))

(assert (=> b!5721342 d!1805156))

(declare-fun b!5722080 () Bool)

(declare-fun e!3518654 () Bool)

(assert (=> b!5722080 (= e!3518654 (matchR!7902 (derivativeStep!4520 (derivativeStep!4520 r!7292 (head!12114 s!2326)) (head!12114 (tail!11209 s!2326))) (tail!11209 (tail!11209 s!2326))))))

(declare-fun b!5722081 () Bool)

(declare-fun e!3518652 () Bool)

(assert (=> b!5722081 (= e!3518652 (= (head!12114 (tail!11209 s!2326)) (c!1008905 (derivativeStep!4520 r!7292 (head!12114 s!2326)))))))

(declare-fun b!5722082 () Bool)

(declare-fun res!2415767 () Bool)

(assert (=> b!5722082 (=> (not res!2415767) (not e!3518652))))

(assert (=> b!5722082 (= res!2415767 (isEmpty!35204 (tail!11209 (tail!11209 s!2326))))))

(declare-fun b!5722083 () Bool)

(declare-fun res!2415771 () Bool)

(declare-fun e!3518655 () Bool)

(assert (=> b!5722083 (=> res!2415771 e!3518655)))

(assert (=> b!5722083 (= res!2415771 e!3518652)))

(declare-fun res!2415768 () Bool)

(assert (=> b!5722083 (=> (not res!2415768) (not e!3518652))))

(declare-fun lt!2278221 () Bool)

(assert (=> b!5722083 (= res!2415768 lt!2278221)))

(declare-fun b!5722084 () Bool)

(declare-fun res!2415769 () Bool)

(assert (=> b!5722084 (=> res!2415769 e!3518655)))

(assert (=> b!5722084 (= res!2415769 (not ((_ is ElementMatch!15717) (derivativeStep!4520 r!7292 (head!12114 s!2326)))))))

(declare-fun e!3518653 () Bool)

(assert (=> b!5722084 (= e!3518653 e!3518655)))

(declare-fun b!5722085 () Bool)

(declare-fun e!3518650 () Bool)

(declare-fun e!3518651 () Bool)

(assert (=> b!5722085 (= e!3518650 e!3518651)))

(declare-fun res!2415772 () Bool)

(assert (=> b!5722085 (=> res!2415772 e!3518651)))

(declare-fun call!437235 () Bool)

(assert (=> b!5722085 (= res!2415772 call!437235)))

(declare-fun b!5722086 () Bool)

(assert (=> b!5722086 (= e!3518655 e!3518650)))

(declare-fun res!2415765 () Bool)

(assert (=> b!5722086 (=> (not res!2415765) (not e!3518650))))

(assert (=> b!5722086 (= res!2415765 (not lt!2278221))))

(declare-fun d!1805158 () Bool)

(declare-fun e!3518656 () Bool)

(assert (=> d!1805158 e!3518656))

(declare-fun c!1009243 () Bool)

(assert (=> d!1805158 (= c!1009243 ((_ is EmptyExpr!15717) (derivativeStep!4520 r!7292 (head!12114 s!2326))))))

(assert (=> d!1805158 (= lt!2278221 e!3518654)))

(declare-fun c!1009244 () Bool)

(assert (=> d!1805158 (= c!1009244 (isEmpty!35204 (tail!11209 s!2326)))))

(assert (=> d!1805158 (validRegex!7453 (derivativeStep!4520 r!7292 (head!12114 s!2326)))))

(assert (=> d!1805158 (= (matchR!7902 (derivativeStep!4520 r!7292 (head!12114 s!2326)) (tail!11209 s!2326)) lt!2278221)))

(declare-fun b!5722087 () Bool)

(assert (=> b!5722087 (= e!3518656 e!3518653)))

(declare-fun c!1009242 () Bool)

(assert (=> b!5722087 (= c!1009242 ((_ is EmptyLang!15717) (derivativeStep!4520 r!7292 (head!12114 s!2326))))))

(declare-fun b!5722088 () Bool)

(assert (=> b!5722088 (= e!3518651 (not (= (head!12114 (tail!11209 s!2326)) (c!1008905 (derivativeStep!4520 r!7292 (head!12114 s!2326))))))))

(declare-fun b!5722089 () Bool)

(declare-fun res!2415766 () Bool)

(assert (=> b!5722089 (=> res!2415766 e!3518651)))

(assert (=> b!5722089 (= res!2415766 (not (isEmpty!35204 (tail!11209 (tail!11209 s!2326)))))))

(declare-fun b!5722090 () Bool)

(assert (=> b!5722090 (= e!3518653 (not lt!2278221))))

(declare-fun b!5722091 () Bool)

(declare-fun res!2415770 () Bool)

(assert (=> b!5722091 (=> (not res!2415770) (not e!3518652))))

(assert (=> b!5722091 (= res!2415770 (not call!437235))))

(declare-fun b!5722092 () Bool)

(assert (=> b!5722092 (= e!3518656 (= lt!2278221 call!437235))))

(declare-fun bm!437230 () Bool)

(assert (=> bm!437230 (= call!437235 (isEmpty!35204 (tail!11209 s!2326)))))

(declare-fun b!5722093 () Bool)

(assert (=> b!5722093 (= e!3518654 (nullable!5749 (derivativeStep!4520 r!7292 (head!12114 s!2326))))))

(assert (= (and d!1805158 c!1009244) b!5722093))

(assert (= (and d!1805158 (not c!1009244)) b!5722080))

(assert (= (and d!1805158 c!1009243) b!5722092))

(assert (= (and d!1805158 (not c!1009243)) b!5722087))

(assert (= (and b!5722087 c!1009242) b!5722090))

(assert (= (and b!5722087 (not c!1009242)) b!5722084))

(assert (= (and b!5722084 (not res!2415769)) b!5722083))

(assert (= (and b!5722083 res!2415768) b!5722091))

(assert (= (and b!5722091 res!2415770) b!5722082))

(assert (= (and b!5722082 res!2415767) b!5722081))

(assert (= (and b!5722083 (not res!2415771)) b!5722086))

(assert (= (and b!5722086 res!2415765) b!5722085))

(assert (= (and b!5722085 (not res!2415772)) b!5722089))

(assert (= (and b!5722089 (not res!2415766)) b!5722088))

(assert (= (or b!5722092 b!5722091 b!5722085) bm!437230))

(assert (=> b!5722088 m!6674638))

(assert (=> b!5722088 m!6674888))

(assert (=> b!5722082 m!6674638))

(assert (=> b!5722082 m!6674892))

(assert (=> b!5722082 m!6674892))

(declare-fun m!6675252 () Bool)

(assert (=> b!5722082 m!6675252))

(assert (=> b!5722089 m!6674638))

(assert (=> b!5722089 m!6674892))

(assert (=> b!5722089 m!6674892))

(assert (=> b!5722089 m!6675252))

(assert (=> bm!437230 m!6674638))

(assert (=> bm!437230 m!6674732))

(assert (=> d!1805158 m!6674638))

(assert (=> d!1805158 m!6674732))

(assert (=> d!1805158 m!6674734))

(declare-fun m!6675254 () Bool)

(assert (=> d!1805158 m!6675254))

(assert (=> b!5722080 m!6674638))

(assert (=> b!5722080 m!6674888))

(assert (=> b!5722080 m!6674734))

(assert (=> b!5722080 m!6674888))

(declare-fun m!6675256 () Bool)

(assert (=> b!5722080 m!6675256))

(assert (=> b!5722080 m!6674638))

(assert (=> b!5722080 m!6674892))

(assert (=> b!5722080 m!6675256))

(assert (=> b!5722080 m!6674892))

(declare-fun m!6675258 () Bool)

(assert (=> b!5722080 m!6675258))

(assert (=> b!5722081 m!6674638))

(assert (=> b!5722081 m!6674888))

(assert (=> b!5722093 m!6674734))

(declare-fun m!6675260 () Bool)

(assert (=> b!5722093 m!6675260))

(assert (=> b!5721597 d!1805158))

(declare-fun b!5722126 () Bool)

(declare-fun e!3518681 () Regex!15717)

(assert (=> b!5722126 (= e!3518681 (ite (= (head!12114 s!2326) (c!1008905 r!7292)) EmptyExpr!15717 EmptyLang!15717))))

(declare-fun bm!437239 () Bool)

(declare-fun call!437246 () Regex!15717)

(declare-fun call!437244 () Regex!15717)

(assert (=> bm!437239 (= call!437246 call!437244)))

(declare-fun c!1009257 () Bool)

(declare-fun bm!437240 () Bool)

(declare-fun c!1009259 () Bool)

(assert (=> bm!437240 (= call!437244 (derivativeStep!4520 (ite c!1009259 (regOne!31947 r!7292) (ite c!1009257 (regTwo!31946 r!7292) (regOne!31946 r!7292))) (head!12114 s!2326)))))

(declare-fun b!5722127 () Bool)

(assert (=> b!5722127 (= c!1009259 ((_ is Union!15717) r!7292))))

(declare-fun e!3518679 () Regex!15717)

(assert (=> b!5722127 (= e!3518681 e!3518679)))

(declare-fun b!5722128 () Bool)

(declare-fun e!3518682 () Regex!15717)

(assert (=> b!5722128 (= e!3518682 e!3518681)))

(declare-fun c!1009258 () Bool)

(assert (=> b!5722128 (= c!1009258 ((_ is ElementMatch!15717) r!7292))))

(declare-fun b!5722129 () Bool)

(declare-fun e!3518680 () Regex!15717)

(assert (=> b!5722129 (= e!3518680 (Union!15717 (Concat!24562 call!437246 (regTwo!31946 r!7292)) EmptyLang!15717))))

(declare-fun call!437247 () Regex!15717)

(declare-fun b!5722130 () Bool)

(assert (=> b!5722130 (= e!3518680 (Union!15717 (Concat!24562 call!437247 (regTwo!31946 r!7292)) call!437246))))

(declare-fun b!5722131 () Bool)

(declare-fun call!437245 () Regex!15717)

(assert (=> b!5722131 (= e!3518679 (Union!15717 call!437244 call!437245))))

(declare-fun b!5722132 () Bool)

(assert (=> b!5722132 (= e!3518682 EmptyLang!15717)))

(declare-fun bm!437241 () Bool)

(assert (=> bm!437241 (= call!437247 call!437245)))

(declare-fun d!1805160 () Bool)

(declare-fun lt!2278224 () Regex!15717)

(assert (=> d!1805160 (validRegex!7453 lt!2278224)))

(assert (=> d!1805160 (= lt!2278224 e!3518682)))

(declare-fun c!1009256 () Bool)

(assert (=> d!1805160 (= c!1009256 (or ((_ is EmptyExpr!15717) r!7292) ((_ is EmptyLang!15717) r!7292)))))

(assert (=> d!1805160 (validRegex!7453 r!7292)))

(assert (=> d!1805160 (= (derivativeStep!4520 r!7292 (head!12114 s!2326)) lt!2278224)))

(declare-fun b!5722133 () Bool)

(assert (=> b!5722133 (= c!1009257 (nullable!5749 (regOne!31946 r!7292)))))

(declare-fun e!3518683 () Regex!15717)

(assert (=> b!5722133 (= e!3518683 e!3518680)))

(declare-fun b!5722134 () Bool)

(assert (=> b!5722134 (= e!3518679 e!3518683)))

(declare-fun c!1009255 () Bool)

(assert (=> b!5722134 (= c!1009255 ((_ is Star!15717) r!7292))))

(declare-fun bm!437242 () Bool)

(assert (=> bm!437242 (= call!437245 (derivativeStep!4520 (ite c!1009259 (regTwo!31947 r!7292) (ite c!1009255 (reg!16046 r!7292) (regOne!31946 r!7292))) (head!12114 s!2326)))))

(declare-fun b!5722135 () Bool)

(assert (=> b!5722135 (= e!3518683 (Concat!24562 call!437247 r!7292))))

(assert (= (and d!1805160 c!1009256) b!5722132))

(assert (= (and d!1805160 (not c!1009256)) b!5722128))

(assert (= (and b!5722128 c!1009258) b!5722126))

(assert (= (and b!5722128 (not c!1009258)) b!5722127))

(assert (= (and b!5722127 c!1009259) b!5722131))

(assert (= (and b!5722127 (not c!1009259)) b!5722134))

(assert (= (and b!5722134 c!1009255) b!5722135))

(assert (= (and b!5722134 (not c!1009255)) b!5722133))

(assert (= (and b!5722133 c!1009257) b!5722130))

(assert (= (and b!5722133 (not c!1009257)) b!5722129))

(assert (= (or b!5722130 b!5722129) bm!437239))

(assert (= (or b!5722135 b!5722130) bm!437241))

(assert (= (or b!5722131 bm!437241) bm!437242))

(assert (= (or b!5722131 bm!437239) bm!437240))

(assert (=> bm!437240 m!6674634))

(declare-fun m!6675272 () Bool)

(assert (=> bm!437240 m!6675272))

(declare-fun m!6675274 () Bool)

(assert (=> d!1805160 m!6675274))

(assert (=> d!1805160 m!6674156))

(assert (=> b!5722133 m!6675192))

(assert (=> bm!437242 m!6674634))

(declare-fun m!6675276 () Bool)

(assert (=> bm!437242 m!6675276))

(assert (=> b!5721597 d!1805160))

(assert (=> b!5721597 d!1804938))

(assert (=> b!5721597 d!1805006))

(declare-fun b!5722150 () Bool)

(declare-fun e!3518698 () (InoxSet Context!10202))

(declare-fun call!437255 () (InoxSet Context!10202))

(assert (=> b!5722150 (= e!3518698 call!437255)))

(declare-fun bm!437249 () Bool)

(declare-fun call!437256 () (InoxSet Context!10202))

(assert (=> bm!437249 (= call!437255 call!437256)))

(declare-fun b!5722151 () Bool)

(declare-fun e!3518693 () (InoxSet Context!10202))

(declare-fun call!437254 () (InoxSet Context!10202))

(declare-fun call!437259 () (InoxSet Context!10202))

(assert (=> b!5722151 (= e!3518693 ((_ map or) call!437254 call!437259))))

(declare-fun b!5722152 () Bool)

(declare-fun e!3518696 () (InoxSet Context!10202))

(assert (=> b!5722152 (= e!3518696 (store ((as const (Array Context!10202 Bool)) false) (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) true))))

(declare-fun b!5722153 () Bool)

(declare-fun e!3518695 () (InoxSet Context!10202))

(assert (=> b!5722153 (= e!3518695 e!3518698)))

(declare-fun c!1009269 () Bool)

(assert (=> b!5722153 (= c!1009269 ((_ is Concat!24562) (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))))))

(declare-fun bm!437250 () Bool)

(assert (=> bm!437250 (= call!437256 call!437259)))

(declare-fun b!5722154 () Bool)

(declare-fun c!1009267 () Bool)

(assert (=> b!5722154 (= c!1009267 ((_ is Star!15717) (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))))))

(declare-fun e!3518694 () (InoxSet Context!10202))

(assert (=> b!5722154 (= e!3518698 e!3518694)))

(declare-fun call!437257 () List!63450)

(declare-fun c!1009266 () Bool)

(declare-fun c!1009265 () Bool)

(declare-fun bm!437251 () Bool)

(assert (=> bm!437251 (= call!437259 (derivationStepZipperDown!1059 (ite c!1009265 (regTwo!31947 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (ite c!1009266 (regTwo!31946 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (ite c!1009269 (regOne!31946 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (reg!16046 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))))))) (ite (or c!1009265 c!1009266) (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (Context!10203 call!437257)) (h!69776 s!2326)))))

(declare-fun b!5722155 () Bool)

(assert (=> b!5722155 (= e!3518695 ((_ map or) call!437254 call!437256))))

(declare-fun b!5722157 () Bool)

(declare-fun e!3518697 () Bool)

(assert (=> b!5722157 (= e!3518697 (nullable!5749 (regOne!31946 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))))))))

(declare-fun call!437258 () List!63450)

(declare-fun bm!437252 () Bool)

(assert (=> bm!437252 (= call!437258 ($colon$colon!1734 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))))) (ite (or c!1009266 c!1009269) (regTwo!31946 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))))))))

(declare-fun bm!437253 () Bool)

(assert (=> bm!437253 (= call!437254 (derivationStepZipperDown!1059 (ite c!1009265 (regOne!31947 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (regOne!31946 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))))) (ite c!1009265 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (Context!10203 call!437258)) (h!69776 s!2326)))))

(declare-fun bm!437254 () Bool)

(assert (=> bm!437254 (= call!437257 call!437258)))

(declare-fun b!5722158 () Bool)

(assert (=> b!5722158 (= e!3518696 e!3518693)))

(assert (=> b!5722158 (= c!1009265 ((_ is Union!15717) (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))))))

(declare-fun d!1805170 () Bool)

(declare-fun c!1009268 () Bool)

(assert (=> d!1805170 (= c!1009268 (and ((_ is ElementMatch!15717) (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (= (c!1008905 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (h!69776 s!2326))))))

(assert (=> d!1805170 (= (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343))))))) (Context!10203 (t!376774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))) (h!69776 s!2326)) e!3518696)))

(declare-fun b!5722156 () Bool)

(assert (=> b!5722156 (= c!1009266 e!3518697)))

(declare-fun res!2415786 () Bool)

(assert (=> b!5722156 (=> (not res!2415786) (not e!3518697))))

(assert (=> b!5722156 (= res!2415786 ((_ is Concat!24562) (h!69774 (exprs!5601 (Context!10203 (Cons!63326 (h!69774 (exprs!5601 (h!69775 zl!343))) (t!376774 (exprs!5601 (h!69775 zl!343)))))))))))

(assert (=> b!5722156 (= e!3518693 e!3518695)))

(declare-fun b!5722159 () Bool)

(assert (=> b!5722159 (= e!3518694 call!437255)))

(declare-fun b!5722160 () Bool)

(assert (=> b!5722160 (= e!3518694 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1805170 c!1009268) b!5722152))

(assert (= (and d!1805170 (not c!1009268)) b!5722158))

(assert (= (and b!5722158 c!1009265) b!5722151))

(assert (= (and b!5722158 (not c!1009265)) b!5722156))

(assert (= (and b!5722156 res!2415786) b!5722157))

(assert (= (and b!5722156 c!1009266) b!5722155))

(assert (= (and b!5722156 (not c!1009266)) b!5722153))

(assert (= (and b!5722153 c!1009269) b!5722150))

(assert (= (and b!5722153 (not c!1009269)) b!5722154))

(assert (= (and b!5722154 c!1009267) b!5722159))

(assert (= (and b!5722154 (not c!1009267)) b!5722160))

(assert (= (or b!5722150 b!5722159) bm!437254))

(assert (= (or b!5722150 b!5722159) bm!437249))

(assert (= (or b!5722155 bm!437254) bm!437252))

(assert (= (or b!5722155 bm!437249) bm!437250))

(assert (= (or b!5722151 bm!437250) bm!437251))

(assert (= (or b!5722151 b!5722155) bm!437253))

(declare-fun m!6675278 () Bool)

(assert (=> b!5722157 m!6675278))

(declare-fun m!6675280 () Bool)

(assert (=> bm!437253 m!6675280))

(declare-fun m!6675282 () Bool)

(assert (=> bm!437251 m!6675282))

(declare-fun m!6675284 () Bool)

(assert (=> bm!437252 m!6675284))

(declare-fun m!6675286 () Bool)

(assert (=> b!5722152 m!6675286))

(assert (=> bm!437100 d!1805170))

(declare-fun d!1805172 () Bool)

(declare-fun c!1009273 () Bool)

(assert (=> d!1805172 (= c!1009273 ((_ is Nil!63327) lt!2278129))))

(declare-fun e!3518702 () (InoxSet Context!10202))

(assert (=> d!1805172 (= (content!11507 lt!2278129) e!3518702)))

(declare-fun b!5722167 () Bool)

(assert (=> b!5722167 (= e!3518702 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5722168 () Bool)

(assert (=> b!5722168 (= e!3518702 ((_ map or) (store ((as const (Array Context!10202 Bool)) false) (h!69775 lt!2278129) true) (content!11507 (t!376775 lt!2278129))))))

(assert (= (and d!1805172 c!1009273) b!5722167))

(assert (= (and d!1805172 (not c!1009273)) b!5722168))

(declare-fun m!6675296 () Bool)

(assert (=> b!5722168 m!6675296))

(declare-fun m!6675298 () Bool)

(assert (=> b!5722168 m!6675298))

(assert (=> b!5721099 d!1805172))

(declare-fun d!1805176 () Bool)

(assert (=> d!1805176 true))

(declare-fun setRes!38342 () Bool)

(assert (=> d!1805176 setRes!38342))

(declare-fun condSetEmpty!38342 () Bool)

(declare-fun res!2415787 () (InoxSet Context!10202))

(assert (=> d!1805176 (= condSetEmpty!38342 (= res!2415787 ((as const (Array Context!10202 Bool)) false)))))

(assert (=> d!1805176 (= (choose!43256 lt!2278092 lambda!309137) res!2415787)))

(declare-fun setIsEmpty!38342 () Bool)

(assert (=> setIsEmpty!38342 setRes!38342))

(declare-fun setElem!38342 () Context!10202)

(declare-fun e!3518703 () Bool)

(declare-fun tp!1584568 () Bool)

(declare-fun setNonEmpty!38342 () Bool)

(assert (=> setNonEmpty!38342 (= setRes!38342 (and tp!1584568 (inv!82539 setElem!38342) e!3518703))))

(declare-fun setRest!38342 () (InoxSet Context!10202))

(assert (=> setNonEmpty!38342 (= res!2415787 ((_ map or) (store ((as const (Array Context!10202 Bool)) false) setElem!38342 true) setRest!38342))))

(declare-fun b!5722169 () Bool)

(declare-fun tp!1584567 () Bool)

(assert (=> b!5722169 (= e!3518703 tp!1584567)))

(assert (= (and d!1805176 condSetEmpty!38342) setIsEmpty!38342))

(assert (= (and d!1805176 (not condSetEmpty!38342)) setNonEmpty!38342))

(assert (= setNonEmpty!38342 b!5722169))

(declare-fun m!6675300 () Bool)

(assert (=> setNonEmpty!38342 m!6675300))

(assert (=> d!1804904 d!1805176))

(declare-fun b!5722170 () Bool)

(declare-fun e!3518709 () (InoxSet Context!10202))

(declare-fun call!437261 () (InoxSet Context!10202))

(assert (=> b!5722170 (= e!3518709 call!437261)))

(declare-fun bm!437255 () Bool)

(declare-fun call!437262 () (InoxSet Context!10202))

(assert (=> bm!437255 (= call!437261 call!437262)))

(declare-fun b!5722171 () Bool)

(declare-fun e!3518704 () (InoxSet Context!10202))

(declare-fun call!437260 () (InoxSet Context!10202))

(declare-fun call!437265 () (InoxSet Context!10202))

(assert (=> b!5722171 (= e!3518704 ((_ map or) call!437260 call!437265))))

(declare-fun b!5722172 () Bool)

(declare-fun e!3518707 () (InoxSet Context!10202))

(assert (=> b!5722172 (= e!3518707 (store ((as const (Array Context!10202 Bool)) false) (Context!10203 (t!376774 (exprs!5601 lt!2278073))) true))))

(declare-fun b!5722173 () Bool)

(declare-fun e!3518706 () (InoxSet Context!10202))

(assert (=> b!5722173 (= e!3518706 e!3518709)))

(declare-fun c!1009278 () Bool)

(assert (=> b!5722173 (= c!1009278 ((_ is Concat!24562) (h!69774 (exprs!5601 lt!2278073))))))

(declare-fun bm!437256 () Bool)

(assert (=> bm!437256 (= call!437262 call!437265)))

(declare-fun b!5722174 () Bool)

(declare-fun c!1009276 () Bool)

(assert (=> b!5722174 (= c!1009276 ((_ is Star!15717) (h!69774 (exprs!5601 lt!2278073))))))

(declare-fun e!3518705 () (InoxSet Context!10202))

(assert (=> b!5722174 (= e!3518709 e!3518705)))

(declare-fun bm!437257 () Bool)

(declare-fun call!437263 () List!63450)

(declare-fun c!1009274 () Bool)

(declare-fun c!1009275 () Bool)

(assert (=> bm!437257 (= call!437265 (derivationStepZipperDown!1059 (ite c!1009274 (regTwo!31947 (h!69774 (exprs!5601 lt!2278073))) (ite c!1009275 (regTwo!31946 (h!69774 (exprs!5601 lt!2278073))) (ite c!1009278 (regOne!31946 (h!69774 (exprs!5601 lt!2278073))) (reg!16046 (h!69774 (exprs!5601 lt!2278073)))))) (ite (or c!1009274 c!1009275) (Context!10203 (t!376774 (exprs!5601 lt!2278073))) (Context!10203 call!437263)) (h!69776 s!2326)))))

(declare-fun b!5722175 () Bool)

(assert (=> b!5722175 (= e!3518706 ((_ map or) call!437260 call!437262))))

(declare-fun b!5722177 () Bool)

(declare-fun e!3518708 () Bool)

(assert (=> b!5722177 (= e!3518708 (nullable!5749 (regOne!31946 (h!69774 (exprs!5601 lt!2278073)))))))

(declare-fun bm!437258 () Bool)

(declare-fun call!437264 () List!63450)

(assert (=> bm!437258 (= call!437264 ($colon$colon!1734 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278073)))) (ite (or c!1009275 c!1009278) (regTwo!31946 (h!69774 (exprs!5601 lt!2278073))) (h!69774 (exprs!5601 lt!2278073)))))))

(declare-fun bm!437259 () Bool)

(assert (=> bm!437259 (= call!437260 (derivationStepZipperDown!1059 (ite c!1009274 (regOne!31947 (h!69774 (exprs!5601 lt!2278073))) (regOne!31946 (h!69774 (exprs!5601 lt!2278073)))) (ite c!1009274 (Context!10203 (t!376774 (exprs!5601 lt!2278073))) (Context!10203 call!437264)) (h!69776 s!2326)))))

(declare-fun bm!437260 () Bool)

(assert (=> bm!437260 (= call!437263 call!437264)))

(declare-fun b!5722178 () Bool)

(assert (=> b!5722178 (= e!3518707 e!3518704)))

(assert (=> b!5722178 (= c!1009274 ((_ is Union!15717) (h!69774 (exprs!5601 lt!2278073))))))

(declare-fun d!1805178 () Bool)

(declare-fun c!1009277 () Bool)

(assert (=> d!1805178 (= c!1009277 (and ((_ is ElementMatch!15717) (h!69774 (exprs!5601 lt!2278073))) (= (c!1008905 (h!69774 (exprs!5601 lt!2278073))) (h!69776 s!2326))))))

(assert (=> d!1805178 (= (derivationStepZipperDown!1059 (h!69774 (exprs!5601 lt!2278073)) (Context!10203 (t!376774 (exprs!5601 lt!2278073))) (h!69776 s!2326)) e!3518707)))

(declare-fun b!5722176 () Bool)

(assert (=> b!5722176 (= c!1009275 e!3518708)))

(declare-fun res!2415788 () Bool)

(assert (=> b!5722176 (=> (not res!2415788) (not e!3518708))))

(assert (=> b!5722176 (= res!2415788 ((_ is Concat!24562) (h!69774 (exprs!5601 lt!2278073))))))

(assert (=> b!5722176 (= e!3518704 e!3518706)))

(declare-fun b!5722179 () Bool)

(assert (=> b!5722179 (= e!3518705 call!437261)))

(declare-fun b!5722180 () Bool)

(assert (=> b!5722180 (= e!3518705 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1805178 c!1009277) b!5722172))

(assert (= (and d!1805178 (not c!1009277)) b!5722178))

(assert (= (and b!5722178 c!1009274) b!5722171))

(assert (= (and b!5722178 (not c!1009274)) b!5722176))

(assert (= (and b!5722176 res!2415788) b!5722177))

(assert (= (and b!5722176 c!1009275) b!5722175))

(assert (= (and b!5722176 (not c!1009275)) b!5722173))

(assert (= (and b!5722173 c!1009278) b!5722170))

(assert (= (and b!5722173 (not c!1009278)) b!5722174))

(assert (= (and b!5722174 c!1009276) b!5722179))

(assert (= (and b!5722174 (not c!1009276)) b!5722180))

(assert (= (or b!5722170 b!5722179) bm!437260))

(assert (= (or b!5722170 b!5722179) bm!437255))

(assert (= (or b!5722175 bm!437260) bm!437258))

(assert (= (or b!5722175 bm!437255) bm!437256))

(assert (= (or b!5722171 bm!437256) bm!437257))

(assert (= (or b!5722171 b!5722175) bm!437259))

(declare-fun m!6675308 () Bool)

(assert (=> b!5722177 m!6675308))

(declare-fun m!6675310 () Bool)

(assert (=> bm!437259 m!6675310))

(declare-fun m!6675312 () Bool)

(assert (=> bm!437257 m!6675312))

(declare-fun m!6675314 () Bool)

(assert (=> bm!437258 m!6675314))

(declare-fun m!6675316 () Bool)

(assert (=> b!5722172 m!6675316))

(assert (=> bm!437101 d!1805178))

(declare-fun b!5722181 () Bool)

(declare-fun e!3518714 () Bool)

(assert (=> b!5722181 (= e!3518714 (matchR!7902 (derivativeStep!4520 (derivativeStep!4520 lt!2278086 (head!12114 s!2326)) (head!12114 (tail!11209 s!2326))) (tail!11209 (tail!11209 s!2326))))))

(declare-fun b!5722182 () Bool)

(declare-fun e!3518712 () Bool)

(assert (=> b!5722182 (= e!3518712 (= (head!12114 (tail!11209 s!2326)) (c!1008905 (derivativeStep!4520 lt!2278086 (head!12114 s!2326)))))))

(declare-fun b!5722183 () Bool)

(declare-fun res!2415791 () Bool)

(assert (=> b!5722183 (=> (not res!2415791) (not e!3518712))))

(assert (=> b!5722183 (= res!2415791 (isEmpty!35204 (tail!11209 (tail!11209 s!2326))))))

(declare-fun b!5722184 () Bool)

(declare-fun res!2415795 () Bool)

(declare-fun e!3518715 () Bool)

(assert (=> b!5722184 (=> res!2415795 e!3518715)))

(assert (=> b!5722184 (= res!2415795 e!3518712)))

(declare-fun res!2415792 () Bool)

(assert (=> b!5722184 (=> (not res!2415792) (not e!3518712))))

(declare-fun lt!2278226 () Bool)

(assert (=> b!5722184 (= res!2415792 lt!2278226)))

(declare-fun b!5722185 () Bool)

(declare-fun res!2415793 () Bool)

(assert (=> b!5722185 (=> res!2415793 e!3518715)))

(assert (=> b!5722185 (= res!2415793 (not ((_ is ElementMatch!15717) (derivativeStep!4520 lt!2278086 (head!12114 s!2326)))))))

(declare-fun e!3518713 () Bool)

(assert (=> b!5722185 (= e!3518713 e!3518715)))

(declare-fun b!5722186 () Bool)

(declare-fun e!3518710 () Bool)

(declare-fun e!3518711 () Bool)

(assert (=> b!5722186 (= e!3518710 e!3518711)))

(declare-fun res!2415796 () Bool)

(assert (=> b!5722186 (=> res!2415796 e!3518711)))

(declare-fun call!437266 () Bool)

(assert (=> b!5722186 (= res!2415796 call!437266)))

(declare-fun b!5722187 () Bool)

(assert (=> b!5722187 (= e!3518715 e!3518710)))

(declare-fun res!2415789 () Bool)

(assert (=> b!5722187 (=> (not res!2415789) (not e!3518710))))

(assert (=> b!5722187 (= res!2415789 (not lt!2278226))))

(declare-fun d!1805184 () Bool)

(declare-fun e!3518716 () Bool)

(assert (=> d!1805184 e!3518716))

(declare-fun c!1009280 () Bool)

(assert (=> d!1805184 (= c!1009280 ((_ is EmptyExpr!15717) (derivativeStep!4520 lt!2278086 (head!12114 s!2326))))))

(assert (=> d!1805184 (= lt!2278226 e!3518714)))

(declare-fun c!1009281 () Bool)

(assert (=> d!1805184 (= c!1009281 (isEmpty!35204 (tail!11209 s!2326)))))

(assert (=> d!1805184 (validRegex!7453 (derivativeStep!4520 lt!2278086 (head!12114 s!2326)))))

(assert (=> d!1805184 (= (matchR!7902 (derivativeStep!4520 lt!2278086 (head!12114 s!2326)) (tail!11209 s!2326)) lt!2278226)))

(declare-fun b!5722188 () Bool)

(assert (=> b!5722188 (= e!3518716 e!3518713)))

(declare-fun c!1009279 () Bool)

(assert (=> b!5722188 (= c!1009279 ((_ is EmptyLang!15717) (derivativeStep!4520 lt!2278086 (head!12114 s!2326))))))

(declare-fun b!5722189 () Bool)

(assert (=> b!5722189 (= e!3518711 (not (= (head!12114 (tail!11209 s!2326)) (c!1008905 (derivativeStep!4520 lt!2278086 (head!12114 s!2326))))))))

(declare-fun b!5722190 () Bool)

(declare-fun res!2415790 () Bool)

(assert (=> b!5722190 (=> res!2415790 e!3518711)))

(assert (=> b!5722190 (= res!2415790 (not (isEmpty!35204 (tail!11209 (tail!11209 s!2326)))))))

(declare-fun b!5722191 () Bool)

(assert (=> b!5722191 (= e!3518713 (not lt!2278226))))

(declare-fun b!5722192 () Bool)

(declare-fun res!2415794 () Bool)

(assert (=> b!5722192 (=> (not res!2415794) (not e!3518712))))

(assert (=> b!5722192 (= res!2415794 (not call!437266))))

(declare-fun b!5722193 () Bool)

(assert (=> b!5722193 (= e!3518716 (= lt!2278226 call!437266))))

(declare-fun bm!437261 () Bool)

(assert (=> bm!437261 (= call!437266 (isEmpty!35204 (tail!11209 s!2326)))))

(declare-fun b!5722194 () Bool)

(assert (=> b!5722194 (= e!3518714 (nullable!5749 (derivativeStep!4520 lt!2278086 (head!12114 s!2326))))))

(assert (= (and d!1805184 c!1009281) b!5722194))

(assert (= (and d!1805184 (not c!1009281)) b!5722181))

(assert (= (and d!1805184 c!1009280) b!5722193))

(assert (= (and d!1805184 (not c!1009280)) b!5722188))

(assert (= (and b!5722188 c!1009279) b!5722191))

(assert (= (and b!5722188 (not c!1009279)) b!5722185))

(assert (= (and b!5722185 (not res!2415793)) b!5722184))

(assert (= (and b!5722184 res!2415792) b!5722192))

(assert (= (and b!5722192 res!2415794) b!5722183))

(assert (= (and b!5722183 res!2415791) b!5722182))

(assert (= (and b!5722184 (not res!2415795)) b!5722187))

(assert (= (and b!5722187 res!2415789) b!5722186))

(assert (= (and b!5722186 (not res!2415796)) b!5722190))

(assert (= (and b!5722190 (not res!2415790)) b!5722189))

(assert (= (or b!5722193 b!5722192 b!5722186) bm!437261))

(assert (=> b!5722189 m!6674638))

(assert (=> b!5722189 m!6674888))

(assert (=> b!5722183 m!6674638))

(assert (=> b!5722183 m!6674892))

(assert (=> b!5722183 m!6674892))

(assert (=> b!5722183 m!6675252))

(assert (=> b!5722190 m!6674638))

(assert (=> b!5722190 m!6674892))

(assert (=> b!5722190 m!6674892))

(assert (=> b!5722190 m!6675252))

(assert (=> bm!437261 m!6674638))

(assert (=> bm!437261 m!6674732))

(assert (=> d!1805184 m!6674638))

(assert (=> d!1805184 m!6674732))

(assert (=> d!1805184 m!6674744))

(declare-fun m!6675318 () Bool)

(assert (=> d!1805184 m!6675318))

(assert (=> b!5722181 m!6674638))

(assert (=> b!5722181 m!6674888))

(assert (=> b!5722181 m!6674744))

(assert (=> b!5722181 m!6674888))

(declare-fun m!6675320 () Bool)

(assert (=> b!5722181 m!6675320))

(assert (=> b!5722181 m!6674638))

(assert (=> b!5722181 m!6674892))

(assert (=> b!5722181 m!6675320))

(assert (=> b!5722181 m!6674892))

(declare-fun m!6675322 () Bool)

(assert (=> b!5722181 m!6675322))

(assert (=> b!5722182 m!6674638))

(assert (=> b!5722182 m!6674888))

(assert (=> b!5722194 m!6674744))

(declare-fun m!6675324 () Bool)

(assert (=> b!5722194 m!6675324))

(assert (=> b!5721611 d!1805184))

(declare-fun b!5722195 () Bool)

(declare-fun e!3518719 () Regex!15717)

(assert (=> b!5722195 (= e!3518719 (ite (= (head!12114 s!2326) (c!1008905 lt!2278086)) EmptyExpr!15717 EmptyLang!15717))))

(declare-fun bm!437262 () Bool)

(declare-fun call!437269 () Regex!15717)

(declare-fun call!437267 () Regex!15717)

(assert (=> bm!437262 (= call!437269 call!437267)))

(declare-fun bm!437263 () Bool)

(declare-fun c!1009284 () Bool)

(declare-fun c!1009286 () Bool)

(assert (=> bm!437263 (= call!437267 (derivativeStep!4520 (ite c!1009286 (regOne!31947 lt!2278086) (ite c!1009284 (regTwo!31946 lt!2278086) (regOne!31946 lt!2278086))) (head!12114 s!2326)))))

(declare-fun b!5722196 () Bool)

(assert (=> b!5722196 (= c!1009286 ((_ is Union!15717) lt!2278086))))

(declare-fun e!3518717 () Regex!15717)

(assert (=> b!5722196 (= e!3518719 e!3518717)))

(declare-fun b!5722197 () Bool)

(declare-fun e!3518720 () Regex!15717)

(assert (=> b!5722197 (= e!3518720 e!3518719)))

(declare-fun c!1009285 () Bool)

(assert (=> b!5722197 (= c!1009285 ((_ is ElementMatch!15717) lt!2278086))))

(declare-fun b!5722198 () Bool)

(declare-fun e!3518718 () Regex!15717)

(assert (=> b!5722198 (= e!3518718 (Union!15717 (Concat!24562 call!437269 (regTwo!31946 lt!2278086)) EmptyLang!15717))))

(declare-fun call!437270 () Regex!15717)

(declare-fun b!5722199 () Bool)

(assert (=> b!5722199 (= e!3518718 (Union!15717 (Concat!24562 call!437270 (regTwo!31946 lt!2278086)) call!437269))))

(declare-fun b!5722200 () Bool)

(declare-fun call!437268 () Regex!15717)

(assert (=> b!5722200 (= e!3518717 (Union!15717 call!437267 call!437268))))

(declare-fun b!5722201 () Bool)

(assert (=> b!5722201 (= e!3518720 EmptyLang!15717)))

(declare-fun bm!437264 () Bool)

(assert (=> bm!437264 (= call!437270 call!437268)))

(declare-fun d!1805188 () Bool)

(declare-fun lt!2278227 () Regex!15717)

(assert (=> d!1805188 (validRegex!7453 lt!2278227)))

(assert (=> d!1805188 (= lt!2278227 e!3518720)))

(declare-fun c!1009283 () Bool)

(assert (=> d!1805188 (= c!1009283 (or ((_ is EmptyExpr!15717) lt!2278086) ((_ is EmptyLang!15717) lt!2278086)))))

(assert (=> d!1805188 (validRegex!7453 lt!2278086)))

(assert (=> d!1805188 (= (derivativeStep!4520 lt!2278086 (head!12114 s!2326)) lt!2278227)))

(declare-fun b!5722202 () Bool)

(assert (=> b!5722202 (= c!1009284 (nullable!5749 (regOne!31946 lt!2278086)))))

(declare-fun e!3518721 () Regex!15717)

(assert (=> b!5722202 (= e!3518721 e!3518718)))

(declare-fun b!5722203 () Bool)

(assert (=> b!5722203 (= e!3518717 e!3518721)))

(declare-fun c!1009282 () Bool)

(assert (=> b!5722203 (= c!1009282 ((_ is Star!15717) lt!2278086))))

(declare-fun bm!437265 () Bool)

(assert (=> bm!437265 (= call!437268 (derivativeStep!4520 (ite c!1009286 (regTwo!31947 lt!2278086) (ite c!1009282 (reg!16046 lt!2278086) (regOne!31946 lt!2278086))) (head!12114 s!2326)))))

(declare-fun b!5722204 () Bool)

(assert (=> b!5722204 (= e!3518721 (Concat!24562 call!437270 lt!2278086))))

(assert (= (and d!1805188 c!1009283) b!5722201))

(assert (= (and d!1805188 (not c!1009283)) b!5722197))

(assert (= (and b!5722197 c!1009285) b!5722195))

(assert (= (and b!5722197 (not c!1009285)) b!5722196))

(assert (= (and b!5722196 c!1009286) b!5722200))

(assert (= (and b!5722196 (not c!1009286)) b!5722203))

(assert (= (and b!5722203 c!1009282) b!5722204))

(assert (= (and b!5722203 (not c!1009282)) b!5722202))

(assert (= (and b!5722202 c!1009284) b!5722199))

(assert (= (and b!5722202 (not c!1009284)) b!5722198))

(assert (= (or b!5722199 b!5722198) bm!437262))

(assert (= (or b!5722204 b!5722199) bm!437264))

(assert (= (or b!5722200 bm!437264) bm!437265))

(assert (= (or b!5722200 bm!437262) bm!437263))

(assert (=> bm!437263 m!6674634))

(declare-fun m!6675328 () Bool)

(assert (=> bm!437263 m!6675328))

(declare-fun m!6675330 () Bool)

(assert (=> d!1805188 m!6675330))

(assert (=> d!1805188 m!6674742))

(declare-fun m!6675332 () Bool)

(assert (=> b!5722202 m!6675332))

(assert (=> bm!437265 m!6674634))

(declare-fun m!6675334 () Bool)

(assert (=> bm!437265 m!6675334))

(assert (=> b!5721611 d!1805188))

(assert (=> b!5721611 d!1804938))

(assert (=> b!5721611 d!1805006))

(assert (=> d!1804924 d!1804960))

(assert (=> d!1804924 d!1805122))

(declare-fun b!5722216 () Bool)

(declare-fun e!3518732 () Bool)

(assert (=> b!5722216 (= e!3518732 (matchR!7902 (derivativeStep!4520 (regOne!31946 r!7292) (head!12114 (_1!36117 (get!21834 lt!2278169)))) (tail!11209 (_1!36117 (get!21834 lt!2278169)))))))

(declare-fun b!5722217 () Bool)

(declare-fun e!3518730 () Bool)

(assert (=> b!5722217 (= e!3518730 (= (head!12114 (_1!36117 (get!21834 lt!2278169))) (c!1008905 (regOne!31946 r!7292))))))

(declare-fun b!5722218 () Bool)

(declare-fun res!2415800 () Bool)

(assert (=> b!5722218 (=> (not res!2415800) (not e!3518730))))

(assert (=> b!5722218 (= res!2415800 (isEmpty!35204 (tail!11209 (_1!36117 (get!21834 lt!2278169)))))))

(declare-fun b!5722219 () Bool)

(declare-fun res!2415804 () Bool)

(declare-fun e!3518733 () Bool)

(assert (=> b!5722219 (=> res!2415804 e!3518733)))

(assert (=> b!5722219 (= res!2415804 e!3518730)))

(declare-fun res!2415801 () Bool)

(assert (=> b!5722219 (=> (not res!2415801) (not e!3518730))))

(declare-fun lt!2278228 () Bool)

(assert (=> b!5722219 (= res!2415801 lt!2278228)))

(declare-fun b!5722220 () Bool)

(declare-fun res!2415802 () Bool)

(assert (=> b!5722220 (=> res!2415802 e!3518733)))

(assert (=> b!5722220 (= res!2415802 (not ((_ is ElementMatch!15717) (regOne!31946 r!7292))))))

(declare-fun e!3518731 () Bool)

(assert (=> b!5722220 (= e!3518731 e!3518733)))

(declare-fun b!5722221 () Bool)

(declare-fun e!3518728 () Bool)

(declare-fun e!3518729 () Bool)

(assert (=> b!5722221 (= e!3518728 e!3518729)))

(declare-fun res!2415805 () Bool)

(assert (=> b!5722221 (=> res!2415805 e!3518729)))

(declare-fun call!437277 () Bool)

(assert (=> b!5722221 (= res!2415805 call!437277)))

(declare-fun b!5722222 () Bool)

(assert (=> b!5722222 (= e!3518733 e!3518728)))

(declare-fun res!2415798 () Bool)

(assert (=> b!5722222 (=> (not res!2415798) (not e!3518728))))

(assert (=> b!5722222 (= res!2415798 (not lt!2278228))))

(declare-fun d!1805194 () Bool)

(declare-fun e!3518734 () Bool)

(assert (=> d!1805194 e!3518734))

(declare-fun c!1009293 () Bool)

(assert (=> d!1805194 (= c!1009293 ((_ is EmptyExpr!15717) (regOne!31946 r!7292)))))

(assert (=> d!1805194 (= lt!2278228 e!3518732)))

(declare-fun c!1009294 () Bool)

(assert (=> d!1805194 (= c!1009294 (isEmpty!35204 (_1!36117 (get!21834 lt!2278169))))))

(assert (=> d!1805194 (validRegex!7453 (regOne!31946 r!7292))))

(assert (=> d!1805194 (= (matchR!7902 (regOne!31946 r!7292) (_1!36117 (get!21834 lt!2278169))) lt!2278228)))

(declare-fun b!5722223 () Bool)

(assert (=> b!5722223 (= e!3518734 e!3518731)))

(declare-fun c!1009292 () Bool)

(assert (=> b!5722223 (= c!1009292 ((_ is EmptyLang!15717) (regOne!31946 r!7292)))))

(declare-fun b!5722224 () Bool)

(assert (=> b!5722224 (= e!3518729 (not (= (head!12114 (_1!36117 (get!21834 lt!2278169))) (c!1008905 (regOne!31946 r!7292)))))))

(declare-fun b!5722225 () Bool)

(declare-fun res!2415799 () Bool)

(assert (=> b!5722225 (=> res!2415799 e!3518729)))

(assert (=> b!5722225 (= res!2415799 (not (isEmpty!35204 (tail!11209 (_1!36117 (get!21834 lt!2278169))))))))

(declare-fun b!5722226 () Bool)

(assert (=> b!5722226 (= e!3518731 (not lt!2278228))))

(declare-fun b!5722227 () Bool)

(declare-fun res!2415803 () Bool)

(assert (=> b!5722227 (=> (not res!2415803) (not e!3518730))))

(assert (=> b!5722227 (= res!2415803 (not call!437277))))

(declare-fun b!5722228 () Bool)

(assert (=> b!5722228 (= e!3518734 (= lt!2278228 call!437277))))

(declare-fun bm!437272 () Bool)

(assert (=> bm!437272 (= call!437277 (isEmpty!35204 (_1!36117 (get!21834 lt!2278169))))))

(declare-fun b!5722229 () Bool)

(assert (=> b!5722229 (= e!3518732 (nullable!5749 (regOne!31946 r!7292)))))

(assert (= (and d!1805194 c!1009294) b!5722229))

(assert (= (and d!1805194 (not c!1009294)) b!5722216))

(assert (= (and d!1805194 c!1009293) b!5722228))

(assert (= (and d!1805194 (not c!1009293)) b!5722223))

(assert (= (and b!5722223 c!1009292) b!5722226))

(assert (= (and b!5722223 (not c!1009292)) b!5722220))

(assert (= (and b!5722220 (not res!2415802)) b!5722219))

(assert (= (and b!5722219 res!2415801) b!5722227))

(assert (= (and b!5722227 res!2415803) b!5722218))

(assert (= (and b!5722218 res!2415800) b!5722217))

(assert (= (and b!5722219 (not res!2415804)) b!5722222))

(assert (= (and b!5722222 res!2415798) b!5722221))

(assert (= (and b!5722221 (not res!2415805)) b!5722225))

(assert (= (and b!5722225 (not res!2415799)) b!5722224))

(assert (= (or b!5722228 b!5722227 b!5722221) bm!437272))

(declare-fun m!6675336 () Bool)

(assert (=> b!5722224 m!6675336))

(declare-fun m!6675338 () Bool)

(assert (=> b!5722218 m!6675338))

(assert (=> b!5722218 m!6675338))

(declare-fun m!6675340 () Bool)

(assert (=> b!5722218 m!6675340))

(assert (=> b!5722225 m!6675338))

(assert (=> b!5722225 m!6675338))

(assert (=> b!5722225 m!6675340))

(declare-fun m!6675342 () Bool)

(assert (=> bm!437272 m!6675342))

(assert (=> d!1805194 m!6675342))

(assert (=> d!1805194 m!6674576))

(assert (=> b!5722216 m!6675336))

(assert (=> b!5722216 m!6675336))

(declare-fun m!6675344 () Bool)

(assert (=> b!5722216 m!6675344))

(assert (=> b!5722216 m!6675338))

(assert (=> b!5722216 m!6675344))

(assert (=> b!5722216 m!6675338))

(declare-fun m!6675348 () Bool)

(assert (=> b!5722216 m!6675348))

(assert (=> b!5722217 m!6675336))

(assert (=> b!5722229 m!6675192))

(assert (=> b!5721338 d!1805194))

(assert (=> b!5721338 d!1805078))

(declare-fun b!5722230 () Bool)

(declare-fun e!3518735 () Bool)

(declare-fun e!3518736 () Bool)

(assert (=> b!5722230 (= e!3518735 e!3518736)))

(declare-fun c!1009296 () Bool)

(assert (=> b!5722230 (= c!1009296 ((_ is Union!15717) (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292))))))

(declare-fun b!5722231 () Bool)

(declare-fun res!2415806 () Bool)

(declare-fun e!3518739 () Bool)

(assert (=> b!5722231 (=> res!2415806 e!3518739)))

(assert (=> b!5722231 (= res!2415806 (not ((_ is Concat!24562) (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292)))))))

(assert (=> b!5722231 (= e!3518736 e!3518739)))

(declare-fun b!5722232 () Bool)

(declare-fun e!3518738 () Bool)

(assert (=> b!5722232 (= e!3518739 e!3518738)))

(declare-fun res!2415808 () Bool)

(assert (=> b!5722232 (=> (not res!2415808) (not e!3518738))))

(declare-fun call!437280 () Bool)

(assert (=> b!5722232 (= res!2415808 call!437280)))

(declare-fun c!1009295 () Bool)

(declare-fun bm!437273 () Bool)

(declare-fun call!437278 () Bool)

(assert (=> bm!437273 (= call!437278 (validRegex!7453 (ite c!1009295 (reg!16046 (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292))) (ite c!1009296 (regOne!31947 (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292))) (regOne!31946 (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292)))))))))

(declare-fun b!5722233 () Bool)

(declare-fun e!3518740 () Bool)

(assert (=> b!5722233 (= e!3518740 e!3518735)))

(assert (=> b!5722233 (= c!1009295 ((_ is Star!15717) (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292))))))

(declare-fun b!5722234 () Bool)

(declare-fun call!437279 () Bool)

(assert (=> b!5722234 (= e!3518738 call!437279)))

(declare-fun b!5722236 () Bool)

(declare-fun e!3518737 () Bool)

(assert (=> b!5722236 (= e!3518737 call!437278)))

(declare-fun b!5722237 () Bool)

(assert (=> b!5722237 (= e!3518735 e!3518737)))

(declare-fun res!2415807 () Bool)

(assert (=> b!5722237 (= res!2415807 (not (nullable!5749 (reg!16046 (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292))))))))

(assert (=> b!5722237 (=> (not res!2415807) (not e!3518737))))

(declare-fun bm!437274 () Bool)

(assert (=> bm!437274 (= call!437280 call!437278)))

(declare-fun bm!437275 () Bool)

(assert (=> bm!437275 (= call!437279 (validRegex!7453 (ite c!1009296 (regTwo!31947 (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292))) (regTwo!31946 (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292))))))))

(declare-fun b!5722238 () Bool)

(declare-fun e!3518741 () Bool)

(assert (=> b!5722238 (= e!3518741 call!437279)))

(declare-fun d!1805196 () Bool)

(declare-fun res!2415810 () Bool)

(assert (=> d!1805196 (=> res!2415810 e!3518740)))

(assert (=> d!1805196 (= res!2415810 ((_ is ElementMatch!15717) (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292))))))

(assert (=> d!1805196 (= (validRegex!7453 (ite c!1009103 (regTwo!31947 r!7292) (regTwo!31946 r!7292))) e!3518740)))

(declare-fun b!5722235 () Bool)

(declare-fun res!2415809 () Bool)

(assert (=> b!5722235 (=> (not res!2415809) (not e!3518741))))

(assert (=> b!5722235 (= res!2415809 call!437280)))

(assert (=> b!5722235 (= e!3518736 e!3518741)))

(assert (= (and d!1805196 (not res!2415810)) b!5722233))

(assert (= (and b!5722233 c!1009295) b!5722237))

(assert (= (and b!5722233 (not c!1009295)) b!5722230))

(assert (= (and b!5722237 res!2415807) b!5722236))

(assert (= (and b!5722230 c!1009296) b!5722235))

(assert (= (and b!5722230 (not c!1009296)) b!5722231))

(assert (= (and b!5722235 res!2415809) b!5722238))

(assert (= (and b!5722231 (not res!2415806)) b!5722232))

(assert (= (and b!5722232 res!2415808) b!5722234))

(assert (= (or b!5722238 b!5722234) bm!437275))

(assert (= (or b!5722235 b!5722232) bm!437274))

(assert (= (or b!5722236 bm!437274) bm!437273))

(declare-fun m!6675358 () Bool)

(assert (=> bm!437273 m!6675358))

(declare-fun m!6675360 () Bool)

(assert (=> b!5722237 m!6675360))

(declare-fun m!6675362 () Bool)

(assert (=> bm!437275 m!6675362))

(assert (=> bm!437141 d!1805196))

(declare-fun d!1805200 () Bool)

(assert (=> d!1805200 (= ($colon$colon!1734 (exprs!5601 lt!2278082) (ite (or c!1009029 c!1009032) (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (regOne!31946 r!7292)))) (Cons!63326 (ite (or c!1009029 c!1009032) (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (regOne!31946 r!7292))) (exprs!5601 lt!2278082)))))

(assert (=> bm!437124 d!1805200))

(declare-fun b!5722250 () Bool)

(declare-fun e!3518753 () (InoxSet Context!10202))

(declare-fun call!437288 () (InoxSet Context!10202))

(assert (=> b!5722250 (= e!3518753 call!437288)))

(declare-fun bm!437282 () Bool)

(declare-fun call!437289 () (InoxSet Context!10202))

(assert (=> bm!437282 (= call!437288 call!437289)))

(declare-fun b!5722251 () Bool)

(declare-fun e!3518748 () (InoxSet Context!10202))

(declare-fun call!437287 () (InoxSet Context!10202))

(declare-fun call!437292 () (InoxSet Context!10202))

(assert (=> b!5722251 (= e!3518748 ((_ map or) call!437287 call!437292))))

(declare-fun b!5722252 () Bool)

(declare-fun e!3518751 () (InoxSet Context!10202))

(assert (=> b!5722252 (= e!3518751 (store ((as const (Array Context!10202 Bool)) false) (Context!10203 (t!376774 (exprs!5601 lt!2278082))) true))))

(declare-fun b!5722253 () Bool)

(declare-fun e!3518750 () (InoxSet Context!10202))

(assert (=> b!5722253 (= e!3518750 e!3518753)))

(declare-fun c!1009306 () Bool)

(assert (=> b!5722253 (= c!1009306 ((_ is Concat!24562) (h!69774 (exprs!5601 lt!2278082))))))

(declare-fun bm!437283 () Bool)

(assert (=> bm!437283 (= call!437289 call!437292)))

(declare-fun b!5722254 () Bool)

(declare-fun c!1009304 () Bool)

(assert (=> b!5722254 (= c!1009304 ((_ is Star!15717) (h!69774 (exprs!5601 lt!2278082))))))

(declare-fun e!3518749 () (InoxSet Context!10202))

(assert (=> b!5722254 (= e!3518753 e!3518749)))

(declare-fun call!437290 () List!63450)

(declare-fun c!1009303 () Bool)

(declare-fun c!1009302 () Bool)

(declare-fun bm!437284 () Bool)

(assert (=> bm!437284 (= call!437292 (derivationStepZipperDown!1059 (ite c!1009302 (regTwo!31947 (h!69774 (exprs!5601 lt!2278082))) (ite c!1009303 (regTwo!31946 (h!69774 (exprs!5601 lt!2278082))) (ite c!1009306 (regOne!31946 (h!69774 (exprs!5601 lt!2278082))) (reg!16046 (h!69774 (exprs!5601 lt!2278082)))))) (ite (or c!1009302 c!1009303) (Context!10203 (t!376774 (exprs!5601 lt!2278082))) (Context!10203 call!437290)) (h!69776 s!2326)))))

(declare-fun b!5722255 () Bool)

(assert (=> b!5722255 (= e!3518750 ((_ map or) call!437287 call!437289))))

(declare-fun b!5722257 () Bool)

(declare-fun e!3518752 () Bool)

(assert (=> b!5722257 (= e!3518752 (nullable!5749 (regOne!31946 (h!69774 (exprs!5601 lt!2278082)))))))

(declare-fun call!437291 () List!63450)

(declare-fun bm!437285 () Bool)

(assert (=> bm!437285 (= call!437291 ($colon$colon!1734 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278082)))) (ite (or c!1009303 c!1009306) (regTwo!31946 (h!69774 (exprs!5601 lt!2278082))) (h!69774 (exprs!5601 lt!2278082)))))))

(declare-fun bm!437286 () Bool)

(assert (=> bm!437286 (= call!437287 (derivationStepZipperDown!1059 (ite c!1009302 (regOne!31947 (h!69774 (exprs!5601 lt!2278082))) (regOne!31946 (h!69774 (exprs!5601 lt!2278082)))) (ite c!1009302 (Context!10203 (t!376774 (exprs!5601 lt!2278082))) (Context!10203 call!437291)) (h!69776 s!2326)))))

(declare-fun bm!437287 () Bool)

(assert (=> bm!437287 (= call!437290 call!437291)))

(declare-fun b!5722258 () Bool)

(assert (=> b!5722258 (= e!3518751 e!3518748)))

(assert (=> b!5722258 (= c!1009302 ((_ is Union!15717) (h!69774 (exprs!5601 lt!2278082))))))

(declare-fun d!1805202 () Bool)

(declare-fun c!1009305 () Bool)

(assert (=> d!1805202 (= c!1009305 (and ((_ is ElementMatch!15717) (h!69774 (exprs!5601 lt!2278082))) (= (c!1008905 (h!69774 (exprs!5601 lt!2278082))) (h!69776 s!2326))))))

(assert (=> d!1805202 (= (derivationStepZipperDown!1059 (h!69774 (exprs!5601 lt!2278082)) (Context!10203 (t!376774 (exprs!5601 lt!2278082))) (h!69776 s!2326)) e!3518751)))

(declare-fun b!5722256 () Bool)

(assert (=> b!5722256 (= c!1009303 e!3518752)))

(declare-fun res!2415812 () Bool)

(assert (=> b!5722256 (=> (not res!2415812) (not e!3518752))))

(assert (=> b!5722256 (= res!2415812 ((_ is Concat!24562) (h!69774 (exprs!5601 lt!2278082))))))

(assert (=> b!5722256 (= e!3518748 e!3518750)))

(declare-fun b!5722259 () Bool)

(assert (=> b!5722259 (= e!3518749 call!437288)))

(declare-fun b!5722260 () Bool)

(assert (=> b!5722260 (= e!3518749 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1805202 c!1009305) b!5722252))

(assert (= (and d!1805202 (not c!1009305)) b!5722258))

(assert (= (and b!5722258 c!1009302) b!5722251))

(assert (= (and b!5722258 (not c!1009302)) b!5722256))

(assert (= (and b!5722256 res!2415812) b!5722257))

(assert (= (and b!5722256 c!1009303) b!5722255))

(assert (= (and b!5722256 (not c!1009303)) b!5722253))

(assert (= (and b!5722253 c!1009306) b!5722250))

(assert (= (and b!5722253 (not c!1009306)) b!5722254))

(assert (= (and b!5722254 c!1009304) b!5722259))

(assert (= (and b!5722254 (not c!1009304)) b!5722260))

(assert (= (or b!5722250 b!5722259) bm!437287))

(assert (= (or b!5722250 b!5722259) bm!437282))

(assert (= (or b!5722255 bm!437287) bm!437285))

(assert (= (or b!5722255 bm!437282) bm!437283))

(assert (= (or b!5722251 bm!437283) bm!437284))

(assert (= (or b!5722251 b!5722255) bm!437286))

(declare-fun m!6675364 () Bool)

(assert (=> b!5722257 m!6675364))

(declare-fun m!6675366 () Bool)

(assert (=> bm!437286 m!6675366))

(declare-fun m!6675368 () Bool)

(assert (=> bm!437284 m!6675368))

(declare-fun m!6675370 () Bool)

(assert (=> bm!437285 m!6675370))

(declare-fun m!6675372 () Bool)

(assert (=> b!5722252 m!6675372))

(assert (=> bm!437130 d!1805202))

(declare-fun bs!1337906 () Bool)

(declare-fun d!1805204 () Bool)

(assert (= bs!1337906 (and d!1805204 d!1805030)))

(declare-fun lambda!309242 () Int)

(assert (=> bs!1337906 (= lambda!309242 lambda!309218)))

(declare-fun bs!1337907 () Bool)

(assert (= bs!1337907 (and d!1805204 d!1804742)))

(assert (=> bs!1337907 (= lambda!309242 lambda!309143)))

(declare-fun bs!1337908 () Bool)

(assert (= bs!1337908 (and d!1805204 d!1804878)))

(assert (=> bs!1337908 (= lambda!309242 lambda!309189)))

(declare-fun bs!1337909 () Bool)

(assert (= bs!1337909 (and d!1805204 d!1805098)))

(assert (=> bs!1337909 (= lambda!309242 lambda!309232)))

(declare-fun bs!1337910 () Bool)

(assert (= bs!1337910 (and d!1805204 d!1805116)))

(assert (=> bs!1337910 (= lambda!309242 lambda!309238)))

(declare-fun bs!1337911 () Bool)

(assert (= bs!1337911 (and d!1805204 d!1804902)))

(assert (=> bs!1337911 (= lambda!309242 lambda!309192)))

(declare-fun bs!1337912 () Bool)

(assert (= bs!1337912 (and d!1805204 d!1804954)))

(assert (=> bs!1337912 (= lambda!309242 lambda!309208)))

(declare-fun bs!1337913 () Bool)

(assert (= bs!1337913 (and d!1805204 d!1805118)))

(assert (=> bs!1337913 (= lambda!309242 lambda!309239)))

(declare-fun bs!1337914 () Bool)

(assert (= bs!1337914 (and d!1805204 d!1805002)))

(assert (=> bs!1337914 (= lambda!309242 lambda!309212)))

(declare-fun bs!1337915 () Bool)

(assert (= bs!1337915 (and d!1805204 d!1804826)))

(assert (=> bs!1337915 (= lambda!309242 lambda!309165)))

(declare-fun bs!1337916 () Bool)

(assert (= bs!1337916 (and d!1805204 d!1805096)))

(assert (=> bs!1337916 (= lambda!309242 lambda!309231)))

(declare-fun bs!1337917 () Bool)

(assert (= bs!1337917 (and d!1805204 d!1805110)))

(assert (=> bs!1337917 (= lambda!309242 lambda!309235)))

(declare-fun bs!1337918 () Bool)

(assert (= bs!1337918 (and d!1805204 d!1805084)))

(assert (=> bs!1337918 (= lambda!309242 lambda!309230)))

(declare-fun bs!1337919 () Bool)

(assert (= bs!1337919 (and d!1805204 d!1805082)))

(assert (=> bs!1337919 (= lambda!309242 lambda!309229)))

(declare-fun bs!1337920 () Bool)

(assert (= bs!1337920 (and d!1805204 d!1804746)))

(assert (=> bs!1337920 (= lambda!309242 lambda!309151)))

(declare-fun b!5722261 () Bool)

(declare-fun e!3518759 () Bool)

(declare-fun e!3518754 () Bool)

(assert (=> b!5722261 (= e!3518759 e!3518754)))

(declare-fun c!1009308 () Bool)

(assert (=> b!5722261 (= c!1009308 (isEmpty!35202 (tail!11208 (t!376774 (exprs!5601 (h!69775 zl!343))))))))

(declare-fun b!5722262 () Bool)

(declare-fun e!3518758 () Regex!15717)

(assert (=> b!5722262 (= e!3518758 EmptyExpr!15717)))

(declare-fun b!5722263 () Bool)

(declare-fun lt!2278229 () Regex!15717)

(assert (=> b!5722263 (= e!3518754 (isConcat!747 lt!2278229))))

(declare-fun b!5722264 () Bool)

(assert (=> b!5722264 (= e!3518754 (= lt!2278229 (head!12113 (t!376774 (exprs!5601 (h!69775 zl!343))))))))

(declare-fun b!5722265 () Bool)

(declare-fun e!3518756 () Regex!15717)

(assert (=> b!5722265 (= e!3518756 (h!69774 (t!376774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun b!5722266 () Bool)

(assert (=> b!5722266 (= e!3518759 (isEmptyExpr!1224 lt!2278229))))

(declare-fun e!3518757 () Bool)

(assert (=> d!1805204 e!3518757))

(declare-fun res!2415814 () Bool)

(assert (=> d!1805204 (=> (not res!2415814) (not e!3518757))))

(assert (=> d!1805204 (= res!2415814 (validRegex!7453 lt!2278229))))

(assert (=> d!1805204 (= lt!2278229 e!3518756)))

(declare-fun c!1009309 () Bool)

(declare-fun e!3518755 () Bool)

(assert (=> d!1805204 (= c!1009309 e!3518755)))

(declare-fun res!2415813 () Bool)

(assert (=> d!1805204 (=> (not res!2415813) (not e!3518755))))

(assert (=> d!1805204 (= res!2415813 ((_ is Cons!63326) (t!376774 (exprs!5601 (h!69775 zl!343)))))))

(assert (=> d!1805204 (forall!14851 (t!376774 (exprs!5601 (h!69775 zl!343))) lambda!309242)))

(assert (=> d!1805204 (= (generalisedConcat!1332 (t!376774 (exprs!5601 (h!69775 zl!343)))) lt!2278229)))

(declare-fun b!5722267 () Bool)

(assert (=> b!5722267 (= e!3518755 (isEmpty!35202 (t!376774 (t!376774 (exprs!5601 (h!69775 zl!343))))))))

(declare-fun b!5722268 () Bool)

(assert (=> b!5722268 (= e!3518757 e!3518759)))

(declare-fun c!1009307 () Bool)

(assert (=> b!5722268 (= c!1009307 (isEmpty!35202 (t!376774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun b!5722269 () Bool)

(assert (=> b!5722269 (= e!3518756 e!3518758)))

(declare-fun c!1009310 () Bool)

(assert (=> b!5722269 (= c!1009310 ((_ is Cons!63326) (t!376774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun b!5722270 () Bool)

(assert (=> b!5722270 (= e!3518758 (Concat!24562 (h!69774 (t!376774 (exprs!5601 (h!69775 zl!343)))) (generalisedConcat!1332 (t!376774 (t!376774 (exprs!5601 (h!69775 zl!343)))))))))

(assert (= (and d!1805204 res!2415813) b!5722267))

(assert (= (and d!1805204 c!1009309) b!5722265))

(assert (= (and d!1805204 (not c!1009309)) b!5722269))

(assert (= (and b!5722269 c!1009310) b!5722270))

(assert (= (and b!5722269 (not c!1009310)) b!5722262))

(assert (= (and d!1805204 res!2415814) b!5722268))

(assert (= (and b!5722268 c!1009307) b!5722266))

(assert (= (and b!5722268 (not c!1009307)) b!5722261))

(assert (= (and b!5722261 c!1009308) b!5722264))

(assert (= (and b!5722261 (not c!1009308)) b!5722263))

(declare-fun m!6675390 () Bool)

(assert (=> b!5722270 m!6675390))

(declare-fun m!6675392 () Bool)

(assert (=> b!5722263 m!6675392))

(declare-fun m!6675394 () Bool)

(assert (=> b!5722261 m!6675394))

(assert (=> b!5722261 m!6675394))

(declare-fun m!6675396 () Bool)

(assert (=> b!5722261 m!6675396))

(declare-fun m!6675398 () Bool)

(assert (=> b!5722264 m!6675398))

(declare-fun m!6675400 () Bool)

(assert (=> b!5722267 m!6675400))

(assert (=> b!5722268 m!6674176))

(declare-fun m!6675402 () Bool)

(assert (=> d!1805204 m!6675402))

(declare-fun m!6675404 () Bool)

(assert (=> d!1805204 m!6675404))

(declare-fun m!6675406 () Bool)

(assert (=> b!5722266 m!6675406))

(assert (=> b!5721491 d!1805204))

(declare-fun d!1805210 () Bool)

(assert (=> d!1805210 (= (isEmpty!35202 (unfocusZipperList!1145 zl!343)) ((_ is Nil!63326) (unfocusZipperList!1145 zl!343)))))

(assert (=> b!5720994 d!1805210))

(assert (=> bs!1337655 d!1804812))

(declare-fun b!5722276 () Bool)

(declare-fun e!3518765 () (InoxSet Context!10202))

(assert (=> b!5722276 (= e!3518765 ((as const (Array Context!10202 Bool)) false))))

(declare-fun b!5722277 () Bool)

(declare-fun e!3518763 () (InoxSet Context!10202))

(assert (=> b!5722277 (= e!3518763 e!3518765)))

(declare-fun c!1009314 () Bool)

(assert (=> b!5722277 (= c!1009314 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343)))))))))

(declare-fun d!1805212 () Bool)

(declare-fun c!1009313 () Bool)

(declare-fun e!3518764 () Bool)

(assert (=> d!1805212 (= c!1009313 e!3518764)))

(declare-fun res!2415816 () Bool)

(assert (=> d!1805212 (=> (not res!2415816) (not e!3518764))))

(assert (=> d!1805212 (= res!2415816 ((_ is Cons!63326) (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343)))))))))

(assert (=> d!1805212 (= (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343)))) (h!69776 s!2326)) e!3518763)))

(declare-fun call!437294 () (InoxSet Context!10202))

(declare-fun b!5722278 () Bool)

(assert (=> b!5722278 (= e!3518763 ((_ map or) call!437294 (derivationStepZipperUp!985 (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343))))))) (h!69776 s!2326))))))

(declare-fun b!5722279 () Bool)

(assert (=> b!5722279 (= e!3518765 call!437294)))

(declare-fun bm!437289 () Bool)

(assert (=> bm!437289 (= call!437294 (derivationStepZipperDown!1059 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343)))))) (Context!10203 (t!376774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343))))))) (h!69776 s!2326)))))

(declare-fun b!5722280 () Bool)

(assert (=> b!5722280 (= e!3518764 (nullable!5749 (h!69774 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 (h!69775 zl!343))))))))))

(assert (= (and d!1805212 res!2415816) b!5722280))

(assert (= (and d!1805212 c!1009313) b!5722278))

(assert (= (and d!1805212 (not c!1009313)) b!5722277))

(assert (= (and b!5722277 c!1009314) b!5722279))

(assert (= (and b!5722277 (not c!1009314)) b!5722276))

(assert (= (or b!5722278 b!5722279) bm!437289))

(declare-fun m!6675408 () Bool)

(assert (=> b!5722278 m!6675408))

(declare-fun m!6675410 () Bool)

(assert (=> bm!437289 m!6675410))

(declare-fun m!6675412 () Bool)

(assert (=> b!5722280 m!6675412))

(assert (=> b!5721166 d!1805212))

(declare-fun d!1805214 () Bool)

(declare-fun c!1009315 () Bool)

(assert (=> d!1805214 (= c!1009315 (isEmpty!35204 (tail!11209 (t!376776 s!2326))))))

(declare-fun e!3518766 () Bool)

(assert (=> d!1805214 (= (matchZipper!1855 (derivationStepZipper!1800 lt!2278067 (head!12114 (t!376776 s!2326))) (tail!11209 (t!376776 s!2326))) e!3518766)))

(declare-fun b!5722281 () Bool)

(assert (=> b!5722281 (= e!3518766 (nullableZipper!1666 (derivationStepZipper!1800 lt!2278067 (head!12114 (t!376776 s!2326)))))))

(declare-fun b!5722282 () Bool)

(assert (=> b!5722282 (= e!3518766 (matchZipper!1855 (derivationStepZipper!1800 (derivationStepZipper!1800 lt!2278067 (head!12114 (t!376776 s!2326))) (head!12114 (tail!11209 (t!376776 s!2326)))) (tail!11209 (tail!11209 (t!376776 s!2326)))))))

(assert (= (and d!1805214 c!1009315) b!5722281))

(assert (= (and d!1805214 (not c!1009315)) b!5722282))

(assert (=> d!1805214 m!6674318))

(assert (=> d!1805214 m!6674854))

(assert (=> b!5722281 m!6674316))

(declare-fun m!6675414 () Bool)

(assert (=> b!5722281 m!6675414))

(assert (=> b!5722282 m!6674318))

(assert (=> b!5722282 m!6674858))

(assert (=> b!5722282 m!6674316))

(assert (=> b!5722282 m!6674858))

(declare-fun m!6675416 () Bool)

(assert (=> b!5722282 m!6675416))

(assert (=> b!5722282 m!6674318))

(assert (=> b!5722282 m!6674862))

(assert (=> b!5722282 m!6675416))

(assert (=> b!5722282 m!6674862))

(declare-fun m!6675418 () Bool)

(assert (=> b!5722282 m!6675418))

(assert (=> b!5721075 d!1805214))

(declare-fun bs!1337921 () Bool)

(declare-fun d!1805218 () Bool)

(assert (= bs!1337921 (and d!1805218 d!1805028)))

(declare-fun lambda!309243 () Int)

(assert (=> bs!1337921 (= lambda!309243 lambda!309217)))

(declare-fun bs!1337922 () Bool)

(assert (= bs!1337922 (and d!1805218 d!1805134)))

(assert (=> bs!1337922 (= (= (head!12114 (t!376776 s!2326)) (head!12114 s!2326)) (= lambda!309243 lambda!309240))))

(declare-fun bs!1337923 () Bool)

(assert (= bs!1337923 (and d!1805218 b!5720846)))

(assert (=> bs!1337923 (= (= (head!12114 (t!376776 s!2326)) (h!69776 s!2326)) (= lambda!309243 lambda!309137))))

(declare-fun bs!1337924 () Bool)

(assert (= bs!1337924 (and d!1805218 d!1804990)))

(assert (=> bs!1337924 (= lambda!309243 lambda!309211)))

(declare-fun bs!1337925 () Bool)

(assert (= bs!1337925 (and d!1805218 d!1805024)))

(assert (=> bs!1337925 (= (= (head!12114 (t!376776 s!2326)) (head!12114 s!2326)) (= lambda!309243 lambda!309216))))

(declare-fun bs!1337926 () Bool)

(assert (= bs!1337926 (and d!1805218 d!1805102)))

(assert (=> bs!1337926 (= lambda!309243 lambda!309233)))

(declare-fun bs!1337927 () Bool)

(assert (= bs!1337927 (and d!1805218 d!1804910)))

(assert (=> bs!1337927 (= (= (head!12114 (t!376776 s!2326)) (h!69776 s!2326)) (= lambda!309243 lambda!309195))))

(assert (=> d!1805218 true))

(assert (=> d!1805218 (= (derivationStepZipper!1800 lt!2278067 (head!12114 (t!376776 s!2326))) (flatMap!1330 lt!2278067 lambda!309243))))

(declare-fun bs!1337928 () Bool)

(assert (= bs!1337928 d!1805218))

(declare-fun m!6675420 () Bool)

(assert (=> bs!1337928 m!6675420))

(assert (=> b!5721075 d!1805218))

(assert (=> b!5721075 d!1804992))

(assert (=> b!5721075 d!1804994))

(declare-fun b!5722292 () Bool)

(declare-fun e!3518779 () (InoxSet Context!10202))

(declare-fun call!437299 () (InoxSet Context!10202))

(assert (=> b!5722292 (= e!3518779 call!437299)))

(declare-fun bm!437293 () Bool)

(declare-fun call!437300 () (InoxSet Context!10202))

(assert (=> bm!437293 (= call!437299 call!437300)))

(declare-fun b!5722293 () Bool)

(declare-fun e!3518774 () (InoxSet Context!10202))

(declare-fun call!437298 () (InoxSet Context!10202))

(declare-fun call!437303 () (InoxSet Context!10202))

(assert (=> b!5722293 (= e!3518774 ((_ map or) call!437298 call!437303))))

(declare-fun b!5722294 () Bool)

(declare-fun e!3518777 () (InoxSet Context!10202))

(assert (=> b!5722294 (= e!3518777 (store ((as const (Array Context!10202 Bool)) false) (Context!10203 (t!376774 (exprs!5601 lt!2278097))) true))))

(declare-fun b!5722295 () Bool)

(declare-fun e!3518776 () (InoxSet Context!10202))

(assert (=> b!5722295 (= e!3518776 e!3518779)))

(declare-fun c!1009322 () Bool)

(assert (=> b!5722295 (= c!1009322 ((_ is Concat!24562) (h!69774 (exprs!5601 lt!2278097))))))

(declare-fun bm!437294 () Bool)

(assert (=> bm!437294 (= call!437300 call!437303)))

(declare-fun b!5722296 () Bool)

(declare-fun c!1009320 () Bool)

(assert (=> b!5722296 (= c!1009320 ((_ is Star!15717) (h!69774 (exprs!5601 lt!2278097))))))

(declare-fun e!3518775 () (InoxSet Context!10202))

(assert (=> b!5722296 (= e!3518779 e!3518775)))

(declare-fun c!1009318 () Bool)

(declare-fun call!437301 () List!63450)

(declare-fun bm!437295 () Bool)

(declare-fun c!1009319 () Bool)

(assert (=> bm!437295 (= call!437303 (derivationStepZipperDown!1059 (ite c!1009318 (regTwo!31947 (h!69774 (exprs!5601 lt!2278097))) (ite c!1009319 (regTwo!31946 (h!69774 (exprs!5601 lt!2278097))) (ite c!1009322 (regOne!31946 (h!69774 (exprs!5601 lt!2278097))) (reg!16046 (h!69774 (exprs!5601 lt!2278097)))))) (ite (or c!1009318 c!1009319) (Context!10203 (t!376774 (exprs!5601 lt!2278097))) (Context!10203 call!437301)) (h!69776 s!2326)))))

(declare-fun b!5722297 () Bool)

(assert (=> b!5722297 (= e!3518776 ((_ map or) call!437298 call!437300))))

(declare-fun b!5722299 () Bool)

(declare-fun e!3518778 () Bool)

(assert (=> b!5722299 (= e!3518778 (nullable!5749 (regOne!31946 (h!69774 (exprs!5601 lt!2278097)))))))

(declare-fun call!437302 () List!63450)

(declare-fun bm!437296 () Bool)

(assert (=> bm!437296 (= call!437302 ($colon$colon!1734 (exprs!5601 (Context!10203 (t!376774 (exprs!5601 lt!2278097)))) (ite (or c!1009319 c!1009322) (regTwo!31946 (h!69774 (exprs!5601 lt!2278097))) (h!69774 (exprs!5601 lt!2278097)))))))

(declare-fun bm!437297 () Bool)

(assert (=> bm!437297 (= call!437298 (derivationStepZipperDown!1059 (ite c!1009318 (regOne!31947 (h!69774 (exprs!5601 lt!2278097))) (regOne!31946 (h!69774 (exprs!5601 lt!2278097)))) (ite c!1009318 (Context!10203 (t!376774 (exprs!5601 lt!2278097))) (Context!10203 call!437302)) (h!69776 s!2326)))))

(declare-fun bm!437298 () Bool)

(assert (=> bm!437298 (= call!437301 call!437302)))

(declare-fun b!5722300 () Bool)

(assert (=> b!5722300 (= e!3518777 e!3518774)))

(assert (=> b!5722300 (= c!1009318 ((_ is Union!15717) (h!69774 (exprs!5601 lt!2278097))))))

(declare-fun d!1805220 () Bool)

(declare-fun c!1009321 () Bool)

(assert (=> d!1805220 (= c!1009321 (and ((_ is ElementMatch!15717) (h!69774 (exprs!5601 lt!2278097))) (= (c!1008905 (h!69774 (exprs!5601 lt!2278097))) (h!69776 s!2326))))))

(assert (=> d!1805220 (= (derivationStepZipperDown!1059 (h!69774 (exprs!5601 lt!2278097)) (Context!10203 (t!376774 (exprs!5601 lt!2278097))) (h!69776 s!2326)) e!3518777)))

(declare-fun b!5722298 () Bool)

(assert (=> b!5722298 (= c!1009319 e!3518778)))

(declare-fun res!2415825 () Bool)

(assert (=> b!5722298 (=> (not res!2415825) (not e!3518778))))

(assert (=> b!5722298 (= res!2415825 ((_ is Concat!24562) (h!69774 (exprs!5601 lt!2278097))))))

(assert (=> b!5722298 (= e!3518774 e!3518776)))

(declare-fun b!5722301 () Bool)

(assert (=> b!5722301 (= e!3518775 call!437299)))

(declare-fun b!5722302 () Bool)

(assert (=> b!5722302 (= e!3518775 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1805220 c!1009321) b!5722294))

(assert (= (and d!1805220 (not c!1009321)) b!5722300))

(assert (= (and b!5722300 c!1009318) b!5722293))

(assert (= (and b!5722300 (not c!1009318)) b!5722298))

(assert (= (and b!5722298 res!2415825) b!5722299))

(assert (= (and b!5722298 c!1009319) b!5722297))

(assert (= (and b!5722298 (not c!1009319)) b!5722295))

(assert (= (and b!5722295 c!1009322) b!5722292))

(assert (= (and b!5722295 (not c!1009322)) b!5722296))

(assert (= (and b!5722296 c!1009320) b!5722301))

(assert (= (and b!5722296 (not c!1009320)) b!5722302))

(assert (= (or b!5722292 b!5722301) bm!437298))

(assert (= (or b!5722292 b!5722301) bm!437293))

(assert (= (or b!5722297 bm!437298) bm!437296))

(assert (= (or b!5722297 bm!437293) bm!437294))

(assert (= (or b!5722293 bm!437294) bm!437295))

(assert (= (or b!5722293 b!5722297) bm!437297))

(declare-fun m!6675428 () Bool)

(assert (=> b!5722299 m!6675428))

(declare-fun m!6675430 () Bool)

(assert (=> bm!437297 m!6675430))

(declare-fun m!6675432 () Bool)

(assert (=> bm!437295 m!6675432))

(declare-fun m!6675434 () Bool)

(assert (=> bm!437296 m!6675434))

(declare-fun m!6675436 () Bool)

(assert (=> b!5722294 m!6675436))

(assert (=> bm!437132 d!1805220))

(assert (=> bm!437150 d!1804960))

(assert (=> d!1804774 d!1805012))

(declare-fun b!5722313 () Bool)

(declare-fun e!3518791 () (InoxSet Context!10202))

(declare-fun call!437305 () (InoxSet Context!10202))

(assert (=> b!5722313 (= e!3518791 call!437305)))

(declare-fun bm!437299 () Bool)

(declare-fun call!437306 () (InoxSet Context!10202))

(assert (=> bm!437299 (= call!437305 call!437306)))

(declare-fun b!5722314 () Bool)

(declare-fun e!3518786 () (InoxSet Context!10202))

(declare-fun call!437304 () (InoxSet Context!10202))

(declare-fun call!437309 () (InoxSet Context!10202))

(assert (=> b!5722314 (= e!3518786 ((_ map or) call!437304 call!437309))))

(declare-fun e!3518789 () (InoxSet Context!10202))

(declare-fun b!5722315 () Bool)

(assert (=> b!5722315 (= e!3518789 (store ((as const (Array Context!10202 Bool)) false) (ite (or c!1009028 c!1009029) lt!2278082 (Context!10203 call!437129)) true))))

(declare-fun b!5722316 () Bool)

(declare-fun e!3518788 () (InoxSet Context!10202))

(assert (=> b!5722316 (= e!3518788 e!3518791)))

(declare-fun c!1009331 () Bool)

(assert (=> b!5722316 (= c!1009331 ((_ is Concat!24562) (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292))))))))))

(declare-fun bm!437300 () Bool)

(assert (=> bm!437300 (= call!437306 call!437309)))

(declare-fun c!1009329 () Bool)

(declare-fun b!5722317 () Bool)

(assert (=> b!5722317 (= c!1009329 ((_ is Star!15717) (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292))))))))))

(declare-fun e!3518787 () (InoxSet Context!10202))

(assert (=> b!5722317 (= e!3518791 e!3518787)))

(declare-fun call!437307 () List!63450)

(declare-fun bm!437301 () Bool)

(declare-fun c!1009328 () Bool)

(declare-fun c!1009327 () Bool)

(assert (=> bm!437301 (= call!437309 (derivationStepZipperDown!1059 (ite c!1009327 (regTwo!31947 (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292))))))) (ite c!1009328 (regTwo!31946 (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292))))))) (ite c!1009331 (regOne!31946 (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292))))))) (reg!16046 (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292)))))))))) (ite (or c!1009327 c!1009328) (ite (or c!1009028 c!1009029) lt!2278082 (Context!10203 call!437129)) (Context!10203 call!437307)) (h!69776 s!2326)))))

(declare-fun b!5722318 () Bool)

(assert (=> b!5722318 (= e!3518788 ((_ map or) call!437304 call!437306))))

(declare-fun e!3518790 () Bool)

(declare-fun b!5722320 () Bool)

(assert (=> b!5722320 (= e!3518790 (nullable!5749 (regOne!31946 (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292)))))))))))

(declare-fun bm!437302 () Bool)

(declare-fun call!437308 () List!63450)

(assert (=> bm!437302 (= call!437308 ($colon$colon!1734 (exprs!5601 (ite (or c!1009028 c!1009029) lt!2278082 (Context!10203 call!437129))) (ite (or c!1009328 c!1009331) (regTwo!31946 (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292))))))) (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292)))))))))))

(declare-fun bm!437303 () Bool)

(assert (=> bm!437303 (= call!437304 (derivationStepZipperDown!1059 (ite c!1009327 (regOne!31947 (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292))))))) (regOne!31946 (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292)))))))) (ite c!1009327 (ite (or c!1009028 c!1009029) lt!2278082 (Context!10203 call!437129)) (Context!10203 call!437308)) (h!69776 s!2326)))))

(declare-fun bm!437304 () Bool)

(assert (=> bm!437304 (= call!437307 call!437308)))

(declare-fun b!5722321 () Bool)

(assert (=> b!5722321 (= e!3518789 e!3518786)))

(assert (=> b!5722321 (= c!1009327 ((_ is Union!15717) (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292))))))))))

(declare-fun d!1805224 () Bool)

(declare-fun c!1009330 () Bool)

(assert (=> d!1805224 (= c!1009330 (and ((_ is ElementMatch!15717) (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292))))))) (= (c!1008905 (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292))))))) (h!69776 s!2326))))))

(assert (=> d!1805224 (= (derivationStepZipperDown!1059 (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292)))))) (ite (or c!1009028 c!1009029) lt!2278082 (Context!10203 call!437129)) (h!69776 s!2326)) e!3518789)))

(declare-fun b!5722319 () Bool)

(assert (=> b!5722319 (= c!1009328 e!3518790)))

(declare-fun res!2415828 () Bool)

(assert (=> b!5722319 (=> (not res!2415828) (not e!3518790))))

(assert (=> b!5722319 (= res!2415828 ((_ is Concat!24562) (ite c!1009028 (regTwo!31947 (reg!16046 (regOne!31946 r!7292))) (ite c!1009029 (regTwo!31946 (reg!16046 (regOne!31946 r!7292))) (ite c!1009032 (regOne!31946 (reg!16046 (regOne!31946 r!7292))) (reg!16046 (reg!16046 (regOne!31946 r!7292))))))))))

(assert (=> b!5722319 (= e!3518786 e!3518788)))

(declare-fun b!5722322 () Bool)

(assert (=> b!5722322 (= e!3518787 call!437305)))

(declare-fun b!5722323 () Bool)

(assert (=> b!5722323 (= e!3518787 ((as const (Array Context!10202 Bool)) false))))

(assert (= (and d!1805224 c!1009330) b!5722315))

(assert (= (and d!1805224 (not c!1009330)) b!5722321))

(assert (= (and b!5722321 c!1009327) b!5722314))

(assert (= (and b!5722321 (not c!1009327)) b!5722319))

(assert (= (and b!5722319 res!2415828) b!5722320))

(assert (= (and b!5722319 c!1009328) b!5722318))

(assert (= (and b!5722319 (not c!1009328)) b!5722316))

(assert (= (and b!5722316 c!1009331) b!5722313))

(assert (= (and b!5722316 (not c!1009331)) b!5722317))

(assert (= (and b!5722317 c!1009329) b!5722322))

(assert (= (and b!5722317 (not c!1009329)) b!5722323))

(assert (= (or b!5722313 b!5722322) bm!437304))

(assert (= (or b!5722313 b!5722322) bm!437299))

(assert (= (or b!5722318 bm!437304) bm!437302))

(assert (= (or b!5722318 bm!437299) bm!437300))

(assert (= (or b!5722314 bm!437300) bm!437301))

(assert (= (or b!5722314 b!5722318) bm!437303))

(declare-fun m!6675438 () Bool)

(assert (=> b!5722320 m!6675438))

(declare-fun m!6675440 () Bool)

(assert (=> bm!437303 m!6675440))

(declare-fun m!6675442 () Bool)

(assert (=> bm!437301 m!6675442))

(declare-fun m!6675444 () Bool)

(assert (=> bm!437302 m!6675444))

(declare-fun m!6675446 () Bool)

(assert (=> b!5722315 m!6675446))

(assert (=> bm!437123 d!1805224))

(declare-fun d!1805226 () Bool)

(assert (=> d!1805226 (= (isEmptyExpr!1224 lt!2278188) ((_ is EmptyExpr!15717) lt!2278188))))

(assert (=> b!5721487 d!1805226))

(assert (=> bm!437151 d!1804960))

(declare-fun d!1805228 () Bool)

(assert (=> d!1805228 (= (nullable!5749 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343))))) (nullableFct!1813 (regOne!31946 (h!69774 (exprs!5601 (h!69775 zl!343))))))))

(declare-fun bs!1337935 () Bool)

(assert (= bs!1337935 d!1805228))

(declare-fun m!6675468 () Bool)

(assert (=> bs!1337935 m!6675468))

(assert (=> b!5721233 d!1805228))

(assert (=> b!5721606 d!1805004))

(assert (=> b!5721606 d!1805006))

(assert (=> b!5721042 d!1804774))

(assert (=> b!5721620 d!1805004))

(assert (=> b!5721620 d!1805006))

(assert (=> d!1804810 d!1804824))

(declare-fun d!1805232 () Bool)

(assert (=> d!1805232 (= (flatMap!1330 z!1189 lambda!309137) (dynLambda!24780 lambda!309137 (h!69775 zl!343)))))

(assert (=> d!1805232 true))

(declare-fun _$13!2404 () Unit!156400)

(assert (=> d!1805232 (= (choose!43255 z!1189 (h!69775 zl!343) lambda!309137) _$13!2404)))

(declare-fun b_lambda!216213 () Bool)

(assert (=> (not b_lambda!216213) (not d!1805232)))

(declare-fun bs!1337937 () Bool)

(assert (= bs!1337937 d!1805232))

(assert (=> bs!1337937 m!6674086))

(assert (=> bs!1337937 m!6674422))

(assert (=> d!1804810 d!1805232))

(declare-fun d!1805234 () Bool)

(assert (=> d!1805234 (= (Exists!2817 (ite c!1009114 lambda!309200 lambda!309201)) (choose!43257 (ite c!1009114 lambda!309200 lambda!309201)))))

(declare-fun bs!1337940 () Bool)

(assert (= bs!1337940 d!1805234))

(declare-fun m!6675470 () Bool)

(assert (=> bs!1337940 m!6675470))

(assert (=> bm!437146 d!1805234))

(declare-fun bs!1337945 () Bool)

(declare-fun b!5722331 () Bool)

(assert (= bs!1337945 (and b!5722331 d!1804866)))

(declare-fun lambda!309246 () Int)

(assert (=> bs!1337945 (not (= lambda!309246 lambda!309187))))

(declare-fun bs!1337946 () Bool)

(assert (= bs!1337946 (and b!5722331 d!1805064)))

(assert (=> bs!1337946 (not (= lambda!309246 lambda!309224))))

(declare-fun bs!1337947 () Bool)

(assert (= bs!1337947 (and b!5722331 b!5720869)))

(assert (=> bs!1337947 (not (= lambda!309246 lambda!309135))))

(declare-fun bs!1337948 () Bool)

(assert (= bs!1337948 (and b!5722331 b!5721633)))

(assert (=> bs!1337948 (not (= lambda!309246 lambda!309203))))

(declare-fun bs!1337949 () Bool)

(assert (= bs!1337949 (and b!5722331 b!5721566)))

(assert (=> bs!1337949 (not (= lambda!309246 lambda!309201))))

(declare-fun bs!1337950 () Bool)

(assert (= bs!1337950 (and b!5722331 b!5721731)))

(assert (=> bs!1337950 (= (and (= (reg!16046 (regTwo!31947 lt!2278086)) (reg!16046 (regOne!31947 r!7292))) (= (regTwo!31947 lt!2278086) (regOne!31947 r!7292))) (= lambda!309246 lambda!309209))))

(declare-fun bs!1337951 () Bool)

(assert (= bs!1337951 (and b!5722331 b!5721877)))

(assert (=> bs!1337951 (not (= lambda!309246 lambda!309228))))

(declare-fun bs!1337952 () Bool)

(assert (= bs!1337952 (and b!5722331 b!5721874)))

(assert (=> bs!1337952 (= (and (= (reg!16046 (regTwo!31947 lt!2278086)) (reg!16046 (regOne!31947 lt!2278086))) (= (regTwo!31947 lt!2278086) (regOne!31947 lt!2278086))) (= lambda!309246 lambda!309227))))

(assert (=> bs!1337945 (not (= lambda!309246 lambda!309188))))

(assert (=> bs!1337946 (not (= lambda!309246 lambda!309225))))

(declare-fun bs!1337953 () Bool)

(assert (= bs!1337953 (and b!5722331 b!5721630)))

(assert (=> bs!1337953 (= (and (= (reg!16046 (regTwo!31947 lt!2278086)) (reg!16046 lt!2278086)) (= (regTwo!31947 lt!2278086) lt!2278086)) (= lambda!309246 lambda!309202))))

(declare-fun bs!1337954 () Bool)

(assert (= bs!1337954 (and b!5722331 b!5721975)))

(assert (=> bs!1337954 (not (= lambda!309246 lambda!309237))))

(assert (=> bs!1337947 (not (= lambda!309246 lambda!309136))))

(declare-fun bs!1337955 () Bool)

(assert (= bs!1337955 (and b!5722331 d!1805020)))

(assert (=> bs!1337955 (not (= lambda!309246 lambda!309215))))

(declare-fun bs!1337956 () Bool)

(assert (= bs!1337956 (and b!5722331 b!5721972)))

(assert (=> bs!1337956 (= (and (= (reg!16046 (regTwo!31947 lt!2278086)) (reg!16046 (regTwo!31947 r!7292))) (= (regTwo!31947 lt!2278086) (regTwo!31947 r!7292))) (= lambda!309246 lambda!309236))))

(declare-fun bs!1337957 () Bool)

(assert (= bs!1337957 (and b!5722331 b!5721563)))

(assert (=> bs!1337957 (= (and (= (reg!16046 (regTwo!31947 lt!2278086)) (reg!16046 r!7292)) (= (regTwo!31947 lt!2278086) r!7292)) (= lambda!309246 lambda!309200))))

(declare-fun bs!1337958 () Bool)

(assert (= bs!1337958 (and b!5722331 d!1804860)))

(assert (=> bs!1337958 (not (= lambda!309246 lambda!309182))))

(declare-fun bs!1337959 () Bool)

(assert (= bs!1337959 (and b!5722331 b!5721734)))

(assert (=> bs!1337959 (not (= lambda!309246 lambda!309210))))

(assert (=> b!5722331 true))

(assert (=> b!5722331 true))

(declare-fun bs!1337960 () Bool)

(declare-fun b!5722334 () Bool)

(assert (= bs!1337960 (and b!5722334 d!1804866)))

(declare-fun lambda!309247 () Int)

(assert (=> bs!1337960 (not (= lambda!309247 lambda!309187))))

(declare-fun bs!1337961 () Bool)

(assert (= bs!1337961 (and b!5722334 d!1805064)))

(assert (=> bs!1337961 (not (= lambda!309247 lambda!309224))))

(declare-fun bs!1337962 () Bool)

(assert (= bs!1337962 (and b!5722334 b!5720869)))

(assert (=> bs!1337962 (not (= lambda!309247 lambda!309135))))

(declare-fun bs!1337963 () Bool)

(assert (= bs!1337963 (and b!5722334 b!5721633)))

(assert (=> bs!1337963 (= (and (= (regOne!31946 (regTwo!31947 lt!2278086)) (regOne!31946 lt!2278086)) (= (regTwo!31946 (regTwo!31947 lt!2278086)) (regTwo!31946 lt!2278086))) (= lambda!309247 lambda!309203))))

(declare-fun bs!1337964 () Bool)

(assert (= bs!1337964 (and b!5722334 b!5721566)))

(assert (=> bs!1337964 (= (and (= (regOne!31946 (regTwo!31947 lt!2278086)) (regOne!31946 r!7292)) (= (regTwo!31946 (regTwo!31947 lt!2278086)) (regTwo!31946 r!7292))) (= lambda!309247 lambda!309201))))

(declare-fun bs!1337965 () Bool)

(assert (= bs!1337965 (and b!5722334 b!5721731)))

(assert (=> bs!1337965 (not (= lambda!309247 lambda!309209))))

(declare-fun bs!1337966 () Bool)

(assert (= bs!1337966 (and b!5722334 b!5722331)))

(assert (=> bs!1337966 (not (= lambda!309247 lambda!309246))))

(declare-fun bs!1337967 () Bool)

(assert (= bs!1337967 (and b!5722334 b!5721877)))

(assert (=> bs!1337967 (= (and (= (regOne!31946 (regTwo!31947 lt!2278086)) (regOne!31946 (regOne!31947 lt!2278086))) (= (regTwo!31946 (regTwo!31947 lt!2278086)) (regTwo!31946 (regOne!31947 lt!2278086)))) (= lambda!309247 lambda!309228))))

(declare-fun bs!1337968 () Bool)

(assert (= bs!1337968 (and b!5722334 b!5721874)))

(assert (=> bs!1337968 (not (= lambda!309247 lambda!309227))))

(assert (=> bs!1337960 (= (and (= (regOne!31946 (regTwo!31947 lt!2278086)) (regOne!31946 r!7292)) (= (regTwo!31946 (regTwo!31947 lt!2278086)) (regTwo!31946 r!7292))) (= lambda!309247 lambda!309188))))

(assert (=> bs!1337961 (= (and (= (regOne!31946 (regTwo!31947 lt!2278086)) (regOne!31946 r!7292)) (= (regTwo!31946 (regTwo!31947 lt!2278086)) (regTwo!31946 r!7292))) (= lambda!309247 lambda!309225))))

(declare-fun bs!1337969 () Bool)

(assert (= bs!1337969 (and b!5722334 b!5721630)))

(assert (=> bs!1337969 (not (= lambda!309247 lambda!309202))))

(declare-fun bs!1337970 () Bool)

(assert (= bs!1337970 (and b!5722334 b!5721975)))

(assert (=> bs!1337970 (= (and (= (regOne!31946 (regTwo!31947 lt!2278086)) (regOne!31946 (regTwo!31947 r!7292))) (= (regTwo!31946 (regTwo!31947 lt!2278086)) (regTwo!31946 (regTwo!31947 r!7292)))) (= lambda!309247 lambda!309237))))

(assert (=> bs!1337962 (= (and (= (regOne!31946 (regTwo!31947 lt!2278086)) (regOne!31946 r!7292)) (= (regTwo!31946 (regTwo!31947 lt!2278086)) (regTwo!31946 r!7292))) (= lambda!309247 lambda!309136))))

(declare-fun bs!1337971 () Bool)

(assert (= bs!1337971 (and b!5722334 d!1805020)))

(assert (=> bs!1337971 (not (= lambda!309247 lambda!309215))))

(declare-fun bs!1337972 () Bool)

(assert (= bs!1337972 (and b!5722334 b!5721972)))

(assert (=> bs!1337972 (not (= lambda!309247 lambda!309236))))

(declare-fun bs!1337973 () Bool)

(assert (= bs!1337973 (and b!5722334 b!5721563)))

(assert (=> bs!1337973 (not (= lambda!309247 lambda!309200))))

(declare-fun bs!1337974 () Bool)

(assert (= bs!1337974 (and b!5722334 d!1804860)))

(assert (=> bs!1337974 (not (= lambda!309247 lambda!309182))))

(declare-fun bs!1337975 () Bool)

(assert (= bs!1337975 (and b!5722334 b!5721734)))

(assert (=> bs!1337975 (= (and (= (regOne!31946 (regTwo!31947 lt!2278086)) (regOne!31946 (regOne!31947 r!7292))) (= (regTwo!31946 (regTwo!31947 lt!2278086)) (regTwo!31946 (regOne!31947 r!7292)))) (= lambda!309247 lambda!309210))))

(assert (=> b!5722334 true))

(assert (=> b!5722334 true))

(declare-fun b!5722326 () Bool)

(declare-fun e!3518795 () Bool)

(declare-fun call!437311 () Bool)

(assert (=> b!5722326 (= e!3518795 call!437311)))

(declare-fun b!5722327 () Bool)

(declare-fun res!2415831 () Bool)

(declare-fun e!3518799 () Bool)

(assert (=> b!5722327 (=> res!2415831 e!3518799)))

(assert (=> b!5722327 (= res!2415831 call!437311)))

(declare-fun e!3518797 () Bool)

(assert (=> b!5722327 (= e!3518797 e!3518799)))

(declare-fun b!5722328 () Bool)

(declare-fun e!3518796 () Bool)

(assert (=> b!5722328 (= e!3518796 (= s!2326 (Cons!63328 (c!1008905 (regTwo!31947 lt!2278086)) Nil!63328)))))

(declare-fun bm!437305 () Bool)

(declare-fun call!437310 () Bool)

(declare-fun c!1009335 () Bool)

(assert (=> bm!437305 (= call!437310 (Exists!2817 (ite c!1009335 lambda!309246 lambda!309247)))))

(declare-fun b!5722329 () Bool)

(declare-fun e!3518794 () Bool)

(assert (=> b!5722329 (= e!3518795 e!3518794)))

(declare-fun res!2415830 () Bool)

(assert (=> b!5722329 (= res!2415830 (not ((_ is EmptyLang!15717) (regTwo!31947 lt!2278086))))))

(assert (=> b!5722329 (=> (not res!2415830) (not e!3518794))))

(declare-fun b!5722330 () Bool)

(declare-fun c!1009333 () Bool)

(assert (=> b!5722330 (= c!1009333 ((_ is Union!15717) (regTwo!31947 lt!2278086)))))

(declare-fun e!3518793 () Bool)

(assert (=> b!5722330 (= e!3518796 e!3518793)))

(declare-fun d!1805236 () Bool)

(declare-fun c!1009334 () Bool)

(assert (=> d!1805236 (= c!1009334 ((_ is EmptyExpr!15717) (regTwo!31947 lt!2278086)))))

(assert (=> d!1805236 (= (matchRSpec!2820 (regTwo!31947 lt!2278086) s!2326) e!3518795)))

(assert (=> b!5722331 (= e!3518799 call!437310)))

(declare-fun b!5722332 () Bool)

(declare-fun c!1009336 () Bool)

(assert (=> b!5722332 (= c!1009336 ((_ is ElementMatch!15717) (regTwo!31947 lt!2278086)))))

(assert (=> b!5722332 (= e!3518794 e!3518796)))

(declare-fun b!5722333 () Bool)

(declare-fun e!3518798 () Bool)

(assert (=> b!5722333 (= e!3518793 e!3518798)))

(declare-fun res!2415829 () Bool)

(assert (=> b!5722333 (= res!2415829 (matchRSpec!2820 (regOne!31947 (regTwo!31947 lt!2278086)) s!2326))))

(assert (=> b!5722333 (=> res!2415829 e!3518798)))

(assert (=> b!5722334 (= e!3518797 call!437310)))

(declare-fun b!5722335 () Bool)

(assert (=> b!5722335 (= e!3518798 (matchRSpec!2820 (regTwo!31947 (regTwo!31947 lt!2278086)) s!2326))))

(declare-fun b!5722336 () Bool)

(assert (=> b!5722336 (= e!3518793 e!3518797)))

(assert (=> b!5722336 (= c!1009335 ((_ is Star!15717) (regTwo!31947 lt!2278086)))))

(declare-fun bm!437306 () Bool)

(assert (=> bm!437306 (= call!437311 (isEmpty!35204 s!2326))))

(assert (= (and d!1805236 c!1009334) b!5722326))

(assert (= (and d!1805236 (not c!1009334)) b!5722329))

(assert (= (and b!5722329 res!2415830) b!5722332))

(assert (= (and b!5722332 c!1009336) b!5722328))

(assert (= (and b!5722332 (not c!1009336)) b!5722330))

(assert (= (and b!5722330 c!1009333) b!5722333))

(assert (= (and b!5722330 (not c!1009333)) b!5722336))

(assert (= (and b!5722333 (not res!2415829)) b!5722335))

(assert (= (and b!5722336 c!1009335) b!5722327))

(assert (= (and b!5722336 (not c!1009335)) b!5722334))

(assert (= (and b!5722327 (not res!2415831)) b!5722331))

(assert (= (or b!5722331 b!5722334) bm!437305))

(assert (= (or b!5722326 b!5722327) bm!437306))

(declare-fun m!6675496 () Bool)

(assert (=> bm!437305 m!6675496))

(declare-fun m!6675498 () Bool)

(assert (=> b!5722333 m!6675498))

(declare-fun m!6675500 () Bool)

(assert (=> b!5722335 m!6675500))

(assert (=> bm!437306 m!6674630))

(assert (=> b!5721634 d!1805236))

(declare-fun b!5722356 () Bool)

(declare-fun e!3518813 () Bool)

(declare-fun e!3518814 () Bool)

(assert (=> b!5722356 (= e!3518813 e!3518814)))

(declare-fun c!1009344 () Bool)

(assert (=> b!5722356 (= c!1009344 ((_ is Union!15717) lt!2278190))))

(declare-fun b!5722357 () Bool)

(declare-fun res!2415839 () Bool)

(declare-fun e!3518817 () Bool)

(assert (=> b!5722357 (=> res!2415839 e!3518817)))

(assert (=> b!5722357 (= res!2415839 (not ((_ is Concat!24562) lt!2278190)))))

(assert (=> b!5722357 (= e!3518814 e!3518817)))

(declare-fun b!5722358 () Bool)

(declare-fun e!3518816 () Bool)

(assert (=> b!5722358 (= e!3518817 e!3518816)))

(declare-fun res!2415841 () Bool)

(assert (=> b!5722358 (=> (not res!2415841) (not e!3518816))))

(declare-fun call!437319 () Bool)

(assert (=> b!5722358 (= res!2415841 call!437319)))

(declare-fun call!437317 () Bool)

(declare-fun bm!437312 () Bool)

(declare-fun c!1009343 () Bool)

(assert (=> bm!437312 (= call!437317 (validRegex!7453 (ite c!1009343 (reg!16046 lt!2278190) (ite c!1009344 (regOne!31947 lt!2278190) (regOne!31946 lt!2278190)))))))

(declare-fun b!5722359 () Bool)

(declare-fun e!3518818 () Bool)

(assert (=> b!5722359 (= e!3518818 e!3518813)))

(assert (=> b!5722359 (= c!1009343 ((_ is Star!15717) lt!2278190))))

(declare-fun b!5722360 () Bool)

(declare-fun call!437318 () Bool)

(assert (=> b!5722360 (= e!3518816 call!437318)))

(declare-fun b!5722362 () Bool)

(declare-fun e!3518815 () Bool)

(assert (=> b!5722362 (= e!3518815 call!437317)))

(declare-fun b!5722363 () Bool)

(assert (=> b!5722363 (= e!3518813 e!3518815)))

(declare-fun res!2415840 () Bool)

(assert (=> b!5722363 (= res!2415840 (not (nullable!5749 (reg!16046 lt!2278190))))))

(assert (=> b!5722363 (=> (not res!2415840) (not e!3518815))))

(declare-fun bm!437313 () Bool)

(assert (=> bm!437313 (= call!437319 call!437317)))

(declare-fun bm!437314 () Bool)

(assert (=> bm!437314 (= call!437318 (validRegex!7453 (ite c!1009344 (regTwo!31947 lt!2278190) (regTwo!31946 lt!2278190))))))

(declare-fun b!5722364 () Bool)

(declare-fun e!3518819 () Bool)

(assert (=> b!5722364 (= e!3518819 call!437318)))

(declare-fun d!1805250 () Bool)

(declare-fun res!2415843 () Bool)

(assert (=> d!1805250 (=> res!2415843 e!3518818)))

(assert (=> d!1805250 (= res!2415843 ((_ is ElementMatch!15717) lt!2278190))))

(assert (=> d!1805250 (= (validRegex!7453 lt!2278190) e!3518818)))

(declare-fun b!5722361 () Bool)

(declare-fun res!2415842 () Bool)

(assert (=> b!5722361 (=> (not res!2415842) (not e!3518819))))

(assert (=> b!5722361 (= res!2415842 call!437319)))

(assert (=> b!5722361 (= e!3518814 e!3518819)))

(assert (= (and d!1805250 (not res!2415843)) b!5722359))

(assert (= (and b!5722359 c!1009343) b!5722363))

(assert (= (and b!5722359 (not c!1009343)) b!5722356))

(assert (= (and b!5722363 res!2415840) b!5722362))

(assert (= (and b!5722356 c!1009344) b!5722361))

(assert (= (and b!5722356 (not c!1009344)) b!5722357))

(assert (= (and b!5722361 res!2415842) b!5722364))

(assert (= (and b!5722357 (not res!2415839)) b!5722358))

(assert (= (and b!5722358 res!2415841) b!5722360))

(assert (= (or b!5722364 b!5722360) bm!437314))

(assert (= (or b!5722361 b!5722358) bm!437313))

(assert (= (or b!5722362 bm!437313) bm!437312))

(declare-fun m!6675502 () Bool)

(assert (=> bm!437312 m!6675502))

(declare-fun m!6675504 () Bool)

(assert (=> b!5722363 m!6675504))

(declare-fun m!6675506 () Bool)

(assert (=> bm!437314 m!6675506))

(assert (=> d!1804914 d!1805250))

(assert (=> d!1804914 d!1804742))

(assert (=> d!1804914 d!1804746))

(declare-fun d!1805252 () Bool)

(assert (=> d!1805252 true))

(declare-fun setRes!38343 () Bool)

(assert (=> d!1805252 setRes!38343))

(declare-fun condSetEmpty!38343 () Bool)

(declare-fun res!2415848 () (InoxSet Context!10202))

(assert (=> d!1805252 (= condSetEmpty!38343 (= res!2415848 ((as const (Array Context!10202 Bool)) false)))))

(assert (=> d!1805252 (= (choose!43256 lt!2278079 lambda!309137) res!2415848)))

(declare-fun setIsEmpty!38343 () Bool)

(assert (=> setIsEmpty!38343 setRes!38343))

(declare-fun e!3518824 () Bool)

(declare-fun setNonEmpty!38343 () Bool)

(declare-fun tp!1584570 () Bool)

(declare-fun setElem!38343 () Context!10202)

(assert (=> setNonEmpty!38343 (= setRes!38343 (and tp!1584570 (inv!82539 setElem!38343) e!3518824))))

(declare-fun setRest!38343 () (InoxSet Context!10202))

(assert (=> setNonEmpty!38343 (= res!2415848 ((_ map or) (store ((as const (Array Context!10202 Bool)) false) setElem!38343 true) setRest!38343))))

(declare-fun b!5722369 () Bool)

(declare-fun tp!1584569 () Bool)

(assert (=> b!5722369 (= e!3518824 tp!1584569)))

(assert (= (and d!1805252 condSetEmpty!38343) setIsEmpty!38343))

(assert (= (and d!1805252 (not condSetEmpty!38343)) setNonEmpty!38343))

(assert (= setNonEmpty!38343 b!5722369))

(declare-fun m!6675508 () Bool)

(assert (=> setNonEmpty!38343 m!6675508))

(assert (=> d!1804894 d!1805252))

(declare-fun bs!1337976 () Bool)

(declare-fun d!1805254 () Bool)

(assert (= bs!1337976 (and d!1805254 d!1805042)))

(declare-fun lambda!309248 () Int)

(assert (=> bs!1337976 (= lambda!309248 lambda!309219)))

(declare-fun bs!1337977 () Bool)

(assert (= bs!1337977 (and d!1805254 d!1804946)))

(assert (=> bs!1337977 (= lambda!309248 lambda!309206)))

(declare-fun bs!1337978 () Bool)

(assert (= bs!1337978 (and d!1805254 d!1804948)))

(assert (=> bs!1337978 (= lambda!309248 lambda!309207)))

(declare-fun bs!1337979 () Bool)

(assert (= bs!1337979 (and d!1805254 d!1805108)))

(assert (=> bs!1337979 (= lambda!309248 lambda!309234)))

(declare-fun bs!1337980 () Bool)

(assert (= bs!1337980 (and d!1805254 d!1805072)))

(assert (=> bs!1337980 (= lambda!309248 lambda!309226)))

(assert (=> d!1805254 (= (nullableZipper!1666 lt!2278070) (exists!2226 lt!2278070 lambda!309248))))

(declare-fun bs!1337981 () Bool)

(assert (= bs!1337981 d!1805254))

(declare-fun m!6675510 () Bool)

(assert (=> bs!1337981 m!6675510))

(assert (=> b!5721448 d!1805254))

(assert (=> d!1804908 d!1804904))

(declare-fun d!1805256 () Bool)

(assert (=> d!1805256 (= (flatMap!1330 lt!2278092 lambda!309137) (dynLambda!24780 lambda!309137 lt!2278097))))

(assert (=> d!1805256 true))

(declare-fun _$13!2405 () Unit!156400)

(assert (=> d!1805256 (= (choose!43255 lt!2278092 lt!2278097 lambda!309137) _$13!2405)))

(declare-fun b_lambda!216215 () Bool)

(assert (=> (not b_lambda!216215) (not d!1805256)))

(declare-fun bs!1337982 () Bool)

(assert (= bs!1337982 d!1805256))

(assert (=> bs!1337982 m!6674130))

(assert (=> bs!1337982 m!6674712))

(assert (=> d!1804908 d!1805256))

(assert (=> b!5721598 d!1804938))

(declare-fun b!5722372 () Bool)

(declare-fun e!3518827 () Bool)

(declare-fun tp!1584571 () Bool)

(declare-fun tp!1584572 () Bool)

(assert (=> b!5722372 (= e!3518827 (and tp!1584571 tp!1584572))))

(assert (=> b!5721681 (= tp!1584536 e!3518827)))

(assert (= (and b!5721681 ((_ is Cons!63326) (exprs!5601 setElem!38337))) b!5722372))

(declare-fun b!5722376 () Bool)

(declare-fun e!3518828 () Bool)

(declare-fun tp!1584575 () Bool)

(declare-fun tp!1584574 () Bool)

(assert (=> b!5722376 (= e!3518828 (and tp!1584575 tp!1584574))))

(assert (=> b!5721689 (= tp!1584544 e!3518828)))

(declare-fun b!5722373 () Bool)

(assert (=> b!5722373 (= e!3518828 tp_is_empty!40687)))

(declare-fun b!5722375 () Bool)

(declare-fun tp!1584577 () Bool)

(assert (=> b!5722375 (= e!3518828 tp!1584577)))

(declare-fun b!5722374 () Bool)

(declare-fun tp!1584576 () Bool)

(declare-fun tp!1584573 () Bool)

(assert (=> b!5722374 (= e!3518828 (and tp!1584576 tp!1584573))))

(assert (= (and b!5721689 ((_ is ElementMatch!15717) (regOne!31947 (regTwo!31946 r!7292)))) b!5722373))

(assert (= (and b!5721689 ((_ is Concat!24562) (regOne!31947 (regTwo!31946 r!7292)))) b!5722374))

(assert (= (and b!5721689 ((_ is Star!15717) (regOne!31947 (regTwo!31946 r!7292)))) b!5722375))

(assert (= (and b!5721689 ((_ is Union!15717) (regOne!31947 (regTwo!31946 r!7292)))) b!5722376))

(declare-fun b!5722380 () Bool)

(declare-fun e!3518829 () Bool)

(declare-fun tp!1584580 () Bool)

(declare-fun tp!1584579 () Bool)

(assert (=> b!5722380 (= e!3518829 (and tp!1584580 tp!1584579))))

(assert (=> b!5721689 (= tp!1584543 e!3518829)))

(declare-fun b!5722377 () Bool)

(assert (=> b!5722377 (= e!3518829 tp_is_empty!40687)))

(declare-fun b!5722379 () Bool)

(declare-fun tp!1584582 () Bool)

(assert (=> b!5722379 (= e!3518829 tp!1584582)))

(declare-fun b!5722378 () Bool)

(declare-fun tp!1584581 () Bool)

(declare-fun tp!1584578 () Bool)

(assert (=> b!5722378 (= e!3518829 (and tp!1584581 tp!1584578))))

(assert (= (and b!5721689 ((_ is ElementMatch!15717) (regTwo!31947 (regTwo!31946 r!7292)))) b!5722377))

(assert (= (and b!5721689 ((_ is Concat!24562) (regTwo!31947 (regTwo!31946 r!7292)))) b!5722378))

(assert (= (and b!5721689 ((_ is Star!15717) (regTwo!31947 (regTwo!31946 r!7292)))) b!5722379))

(assert (= (and b!5721689 ((_ is Union!15717) (regTwo!31947 (regTwo!31946 r!7292)))) b!5722380))

(declare-fun b!5722384 () Bool)

(declare-fun e!3518830 () Bool)

(declare-fun tp!1584585 () Bool)

(declare-fun tp!1584584 () Bool)

(assert (=> b!5722384 (= e!3518830 (and tp!1584585 tp!1584584))))

(assert (=> b!5721687 (= tp!1584545 e!3518830)))

(declare-fun b!5722381 () Bool)

(assert (=> b!5722381 (= e!3518830 tp_is_empty!40687)))

(declare-fun b!5722383 () Bool)

(declare-fun tp!1584587 () Bool)

(assert (=> b!5722383 (= e!3518830 tp!1584587)))

(declare-fun b!5722382 () Bool)

(declare-fun tp!1584586 () Bool)

(declare-fun tp!1584583 () Bool)

(assert (=> b!5722382 (= e!3518830 (and tp!1584586 tp!1584583))))

(assert (= (and b!5721687 ((_ is ElementMatch!15717) (regOne!31946 (regTwo!31946 r!7292)))) b!5722381))

(assert (= (and b!5721687 ((_ is Concat!24562) (regOne!31946 (regTwo!31946 r!7292)))) b!5722382))

(assert (= (and b!5721687 ((_ is Star!15717) (regOne!31946 (regTwo!31946 r!7292)))) b!5722383))

(assert (= (and b!5721687 ((_ is Union!15717) (regOne!31946 (regTwo!31946 r!7292)))) b!5722384))

(declare-fun b!5722399 () Bool)

(declare-fun e!3518837 () Bool)

(declare-fun tp!1584590 () Bool)

(declare-fun tp!1584589 () Bool)

(assert (=> b!5722399 (= e!3518837 (and tp!1584590 tp!1584589))))

(assert (=> b!5721687 (= tp!1584542 e!3518837)))

(declare-fun b!5722396 () Bool)

(assert (=> b!5722396 (= e!3518837 tp_is_empty!40687)))

(declare-fun b!5722398 () Bool)

(declare-fun tp!1584592 () Bool)

(assert (=> b!5722398 (= e!3518837 tp!1584592)))

(declare-fun b!5722397 () Bool)

(declare-fun tp!1584591 () Bool)

(declare-fun tp!1584588 () Bool)

(assert (=> b!5722397 (= e!3518837 (and tp!1584591 tp!1584588))))

(assert (= (and b!5721687 ((_ is ElementMatch!15717) (regTwo!31946 (regTwo!31946 r!7292)))) b!5722396))

(assert (= (and b!5721687 ((_ is Concat!24562) (regTwo!31946 (regTwo!31946 r!7292)))) b!5722397))

(assert (= (and b!5721687 ((_ is Star!15717) (regTwo!31946 (regTwo!31946 r!7292)))) b!5722398))

(assert (= (and b!5721687 ((_ is Union!15717) (regTwo!31946 (regTwo!31946 r!7292)))) b!5722399))

(declare-fun condSetEmpty!38344 () Bool)

(assert (=> setNonEmpty!38337 (= condSetEmpty!38344 (= setRest!38337 ((as const (Array Context!10202 Bool)) false)))))

(declare-fun setRes!38344 () Bool)

(assert (=> setNonEmpty!38337 (= tp!1584535 setRes!38344)))

(declare-fun setIsEmpty!38344 () Bool)

(assert (=> setIsEmpty!38344 setRes!38344))

(declare-fun tp!1584593 () Bool)

(declare-fun e!3518838 () Bool)

(declare-fun setElem!38344 () Context!10202)

(declare-fun setNonEmpty!38344 () Bool)

(assert (=> setNonEmpty!38344 (= setRes!38344 (and tp!1584593 (inv!82539 setElem!38344) e!3518838))))

(declare-fun setRest!38344 () (InoxSet Context!10202))

(assert (=> setNonEmpty!38344 (= setRest!38337 ((_ map or) (store ((as const (Array Context!10202 Bool)) false) setElem!38344 true) setRest!38344))))

(declare-fun b!5722400 () Bool)

(declare-fun tp!1584594 () Bool)

(assert (=> b!5722400 (= e!3518838 tp!1584594)))

(assert (= (and setNonEmpty!38337 condSetEmpty!38344) setIsEmpty!38344))

(assert (= (and setNonEmpty!38337 (not condSetEmpty!38344)) setNonEmpty!38344))

(assert (= setNonEmpty!38344 b!5722400))

(declare-fun m!6675516 () Bool)

(assert (=> setNonEmpty!38344 m!6675516))

(declare-fun b!5722404 () Bool)

(declare-fun e!3518839 () Bool)

(declare-fun tp!1584597 () Bool)

(declare-fun tp!1584596 () Bool)

(assert (=> b!5722404 (= e!3518839 (and tp!1584597 tp!1584596))))

(assert (=> b!5721688 (= tp!1584546 e!3518839)))

(declare-fun b!5722401 () Bool)

(assert (=> b!5722401 (= e!3518839 tp_is_empty!40687)))

(declare-fun b!5722403 () Bool)

(declare-fun tp!1584599 () Bool)

(assert (=> b!5722403 (= e!3518839 tp!1584599)))

(declare-fun b!5722402 () Bool)

(declare-fun tp!1584598 () Bool)

(declare-fun tp!1584595 () Bool)

(assert (=> b!5722402 (= e!3518839 (and tp!1584598 tp!1584595))))

(assert (= (and b!5721688 ((_ is ElementMatch!15717) (reg!16046 (regTwo!31946 r!7292)))) b!5722401))

(assert (= (and b!5721688 ((_ is Concat!24562) (reg!16046 (regTwo!31946 r!7292)))) b!5722402))

(assert (= (and b!5721688 ((_ is Star!15717) (reg!16046 (regTwo!31946 r!7292)))) b!5722403))

(assert (= (and b!5721688 ((_ is Union!15717) (reg!16046 (regTwo!31946 r!7292)))) b!5722404))

(declare-fun b!5722408 () Bool)

(declare-fun e!3518840 () Bool)

(declare-fun tp!1584602 () Bool)

(declare-fun tp!1584601 () Bool)

(assert (=> b!5722408 (= e!3518840 (and tp!1584602 tp!1584601))))

(assert (=> b!5721666 (= tp!1584515 e!3518840)))

(declare-fun b!5722405 () Bool)

(assert (=> b!5722405 (= e!3518840 tp_is_empty!40687)))

(declare-fun b!5722407 () Bool)

(declare-fun tp!1584604 () Bool)

(assert (=> b!5722407 (= e!3518840 tp!1584604)))

(declare-fun b!5722406 () Bool)

(declare-fun tp!1584603 () Bool)

(declare-fun tp!1584600 () Bool)

(assert (=> b!5722406 (= e!3518840 (and tp!1584603 tp!1584600))))

(assert (= (and b!5721666 ((_ is ElementMatch!15717) (regOne!31947 (regOne!31947 r!7292)))) b!5722405))

(assert (= (and b!5721666 ((_ is Concat!24562) (regOne!31947 (regOne!31947 r!7292)))) b!5722406))

(assert (= (and b!5721666 ((_ is Star!15717) (regOne!31947 (regOne!31947 r!7292)))) b!5722407))

(assert (= (and b!5721666 ((_ is Union!15717) (regOne!31947 (regOne!31947 r!7292)))) b!5722408))

(declare-fun b!5722412 () Bool)

(declare-fun e!3518841 () Bool)

(declare-fun tp!1584607 () Bool)

(declare-fun tp!1584606 () Bool)

(assert (=> b!5722412 (= e!3518841 (and tp!1584607 tp!1584606))))

(assert (=> b!5721666 (= tp!1584514 e!3518841)))

(declare-fun b!5722409 () Bool)

(assert (=> b!5722409 (= e!3518841 tp_is_empty!40687)))

(declare-fun b!5722411 () Bool)

(declare-fun tp!1584609 () Bool)

(assert (=> b!5722411 (= e!3518841 tp!1584609)))

(declare-fun b!5722410 () Bool)

(declare-fun tp!1584608 () Bool)

(declare-fun tp!1584605 () Bool)

(assert (=> b!5722410 (= e!3518841 (and tp!1584608 tp!1584605))))

(assert (= (and b!5721666 ((_ is ElementMatch!15717) (regTwo!31947 (regOne!31947 r!7292)))) b!5722409))

(assert (= (and b!5721666 ((_ is Concat!24562) (regTwo!31947 (regOne!31947 r!7292)))) b!5722410))

(assert (= (and b!5721666 ((_ is Star!15717) (regTwo!31947 (regOne!31947 r!7292)))) b!5722411))

(assert (= (and b!5721666 ((_ is Union!15717) (regTwo!31947 (regOne!31947 r!7292)))) b!5722412))

(declare-fun b!5722416 () Bool)

(declare-fun e!3518842 () Bool)

(declare-fun tp!1584612 () Bool)

(declare-fun tp!1584611 () Bool)

(assert (=> b!5722416 (= e!3518842 (and tp!1584612 tp!1584611))))

(assert (=> b!5721665 (= tp!1584517 e!3518842)))

(declare-fun b!5722413 () Bool)

(assert (=> b!5722413 (= e!3518842 tp_is_empty!40687)))

(declare-fun b!5722415 () Bool)

(declare-fun tp!1584614 () Bool)

(assert (=> b!5722415 (= e!3518842 tp!1584614)))

(declare-fun b!5722414 () Bool)

(declare-fun tp!1584613 () Bool)

(declare-fun tp!1584610 () Bool)

(assert (=> b!5722414 (= e!3518842 (and tp!1584613 tp!1584610))))

(assert (= (and b!5721665 ((_ is ElementMatch!15717) (reg!16046 (regOne!31947 r!7292)))) b!5722413))

(assert (= (and b!5721665 ((_ is Concat!24562) (reg!16046 (regOne!31947 r!7292)))) b!5722414))

(assert (= (and b!5721665 ((_ is Star!15717) (reg!16046 (regOne!31947 r!7292)))) b!5722415))

(assert (= (and b!5721665 ((_ is Union!15717) (reg!16046 (regOne!31947 r!7292)))) b!5722416))

(declare-fun b!5722420 () Bool)

(declare-fun e!3518843 () Bool)

(declare-fun tp!1584617 () Bool)

(declare-fun tp!1584616 () Bool)

(assert (=> b!5722420 (= e!3518843 (and tp!1584617 tp!1584616))))

(assert (=> b!5721664 (= tp!1584516 e!3518843)))

(declare-fun b!5722417 () Bool)

(assert (=> b!5722417 (= e!3518843 tp_is_empty!40687)))

(declare-fun b!5722419 () Bool)

(declare-fun tp!1584619 () Bool)

(assert (=> b!5722419 (= e!3518843 tp!1584619)))

(declare-fun b!5722418 () Bool)

(declare-fun tp!1584618 () Bool)

(declare-fun tp!1584615 () Bool)

(assert (=> b!5722418 (= e!3518843 (and tp!1584618 tp!1584615))))

(assert (= (and b!5721664 ((_ is ElementMatch!15717) (regOne!31946 (regOne!31947 r!7292)))) b!5722417))

(assert (= (and b!5721664 ((_ is Concat!24562) (regOne!31946 (regOne!31947 r!7292)))) b!5722418))

(assert (= (and b!5721664 ((_ is Star!15717) (regOne!31946 (regOne!31947 r!7292)))) b!5722419))

(assert (= (and b!5721664 ((_ is Union!15717) (regOne!31946 (regOne!31947 r!7292)))) b!5722420))

(declare-fun b!5722424 () Bool)

(declare-fun e!3518844 () Bool)

(declare-fun tp!1584622 () Bool)

(declare-fun tp!1584621 () Bool)

(assert (=> b!5722424 (= e!3518844 (and tp!1584622 tp!1584621))))

(assert (=> b!5721664 (= tp!1584513 e!3518844)))

(declare-fun b!5722421 () Bool)

(assert (=> b!5722421 (= e!3518844 tp_is_empty!40687)))

(declare-fun b!5722423 () Bool)

(declare-fun tp!1584624 () Bool)

(assert (=> b!5722423 (= e!3518844 tp!1584624)))

(declare-fun b!5722422 () Bool)

(declare-fun tp!1584623 () Bool)

(declare-fun tp!1584620 () Bool)

(assert (=> b!5722422 (= e!3518844 (and tp!1584623 tp!1584620))))

(assert (= (and b!5721664 ((_ is ElementMatch!15717) (regTwo!31946 (regOne!31947 r!7292)))) b!5722421))

(assert (= (and b!5721664 ((_ is Concat!24562) (regTwo!31946 (regOne!31947 r!7292)))) b!5722422))

(assert (= (and b!5721664 ((_ is Star!15717) (regTwo!31946 (regOne!31947 r!7292)))) b!5722423))

(assert (= (and b!5721664 ((_ is Union!15717) (regTwo!31946 (regOne!31947 r!7292)))) b!5722424))

(declare-fun b!5722428 () Bool)

(declare-fun e!3518845 () Bool)

(declare-fun tp!1584627 () Bool)

(declare-fun tp!1584626 () Bool)

(assert (=> b!5722428 (= e!3518845 (and tp!1584627 tp!1584626))))

(assert (=> b!5721685 (= tp!1584539 e!3518845)))

(declare-fun b!5722425 () Bool)

(assert (=> b!5722425 (= e!3518845 tp_is_empty!40687)))

(declare-fun b!5722427 () Bool)

(declare-fun tp!1584629 () Bool)

(assert (=> b!5722427 (= e!3518845 tp!1584629)))

(declare-fun b!5722426 () Bool)

(declare-fun tp!1584628 () Bool)

(declare-fun tp!1584625 () Bool)

(assert (=> b!5722426 (= e!3518845 (and tp!1584628 tp!1584625))))

(assert (= (and b!5721685 ((_ is ElementMatch!15717) (regOne!31947 (regOne!31946 r!7292)))) b!5722425))

(assert (= (and b!5721685 ((_ is Concat!24562) (regOne!31947 (regOne!31946 r!7292)))) b!5722426))

(assert (= (and b!5721685 ((_ is Star!15717) (regOne!31947 (regOne!31946 r!7292)))) b!5722427))

(assert (= (and b!5721685 ((_ is Union!15717) (regOne!31947 (regOne!31946 r!7292)))) b!5722428))

(declare-fun b!5722432 () Bool)

(declare-fun e!3518846 () Bool)

(declare-fun tp!1584632 () Bool)

(declare-fun tp!1584631 () Bool)

(assert (=> b!5722432 (= e!3518846 (and tp!1584632 tp!1584631))))

(assert (=> b!5721685 (= tp!1584538 e!3518846)))

(declare-fun b!5722429 () Bool)

(assert (=> b!5722429 (= e!3518846 tp_is_empty!40687)))

(declare-fun b!5722431 () Bool)

(declare-fun tp!1584634 () Bool)

(assert (=> b!5722431 (= e!3518846 tp!1584634)))

(declare-fun b!5722430 () Bool)

(declare-fun tp!1584633 () Bool)

(declare-fun tp!1584630 () Bool)

(assert (=> b!5722430 (= e!3518846 (and tp!1584633 tp!1584630))))

(assert (= (and b!5721685 ((_ is ElementMatch!15717) (regTwo!31947 (regOne!31946 r!7292)))) b!5722429))

(assert (= (and b!5721685 ((_ is Concat!24562) (regTwo!31947 (regOne!31946 r!7292)))) b!5722430))

(assert (= (and b!5721685 ((_ is Star!15717) (regTwo!31947 (regOne!31946 r!7292)))) b!5722431))

(assert (= (and b!5721685 ((_ is Union!15717) (regTwo!31947 (regOne!31946 r!7292)))) b!5722432))

(declare-fun b!5722436 () Bool)

(declare-fun e!3518847 () Bool)

(declare-fun tp!1584637 () Bool)

(declare-fun tp!1584636 () Bool)

(assert (=> b!5722436 (= e!3518847 (and tp!1584637 tp!1584636))))

(assert (=> b!5721684 (= tp!1584541 e!3518847)))

(declare-fun b!5722433 () Bool)

(assert (=> b!5722433 (= e!3518847 tp_is_empty!40687)))

(declare-fun b!5722435 () Bool)

(declare-fun tp!1584639 () Bool)

(assert (=> b!5722435 (= e!3518847 tp!1584639)))

(declare-fun b!5722434 () Bool)

(declare-fun tp!1584638 () Bool)

(declare-fun tp!1584635 () Bool)

(assert (=> b!5722434 (= e!3518847 (and tp!1584638 tp!1584635))))

(assert (= (and b!5721684 ((_ is ElementMatch!15717) (reg!16046 (regOne!31946 r!7292)))) b!5722433))

(assert (= (and b!5721684 ((_ is Concat!24562) (reg!16046 (regOne!31946 r!7292)))) b!5722434))

(assert (= (and b!5721684 ((_ is Star!15717) (reg!16046 (regOne!31946 r!7292)))) b!5722435))

(assert (= (and b!5721684 ((_ is Union!15717) (reg!16046 (regOne!31946 r!7292)))) b!5722436))

(declare-fun b!5722440 () Bool)

(declare-fun e!3518848 () Bool)

(declare-fun tp!1584642 () Bool)

(declare-fun tp!1584641 () Bool)

(assert (=> b!5722440 (= e!3518848 (and tp!1584642 tp!1584641))))

(assert (=> b!5721683 (= tp!1584540 e!3518848)))

(declare-fun b!5722437 () Bool)

(assert (=> b!5722437 (= e!3518848 tp_is_empty!40687)))

(declare-fun b!5722439 () Bool)

(declare-fun tp!1584644 () Bool)

(assert (=> b!5722439 (= e!3518848 tp!1584644)))

(declare-fun b!5722438 () Bool)

(declare-fun tp!1584643 () Bool)

(declare-fun tp!1584640 () Bool)

(assert (=> b!5722438 (= e!3518848 (and tp!1584643 tp!1584640))))

(assert (= (and b!5721683 ((_ is ElementMatch!15717) (regOne!31946 (regOne!31946 r!7292)))) b!5722437))

(assert (= (and b!5721683 ((_ is Concat!24562) (regOne!31946 (regOne!31946 r!7292)))) b!5722438))

(assert (= (and b!5721683 ((_ is Star!15717) (regOne!31946 (regOne!31946 r!7292)))) b!5722439))

(assert (= (and b!5721683 ((_ is Union!15717) (regOne!31946 (regOne!31946 r!7292)))) b!5722440))

(declare-fun b!5722444 () Bool)

(declare-fun e!3518849 () Bool)

(declare-fun tp!1584647 () Bool)

(declare-fun tp!1584646 () Bool)

(assert (=> b!5722444 (= e!3518849 (and tp!1584647 tp!1584646))))

(assert (=> b!5721683 (= tp!1584537 e!3518849)))

(declare-fun b!5722441 () Bool)

(assert (=> b!5722441 (= e!3518849 tp_is_empty!40687)))

(declare-fun b!5722443 () Bool)

(declare-fun tp!1584649 () Bool)

(assert (=> b!5722443 (= e!3518849 tp!1584649)))

(declare-fun b!5722442 () Bool)

(declare-fun tp!1584648 () Bool)

(declare-fun tp!1584645 () Bool)

(assert (=> b!5722442 (= e!3518849 (and tp!1584648 tp!1584645))))

(assert (= (and b!5721683 ((_ is ElementMatch!15717) (regTwo!31946 (regOne!31946 r!7292)))) b!5722441))

(assert (= (and b!5721683 ((_ is Concat!24562) (regTwo!31946 (regOne!31946 r!7292)))) b!5722442))

(assert (= (and b!5721683 ((_ is Star!15717) (regTwo!31946 (regOne!31946 r!7292)))) b!5722443))

(assert (= (and b!5721683 ((_ is Union!15717) (regTwo!31946 (regOne!31946 r!7292)))) b!5722444))

(declare-fun b!5722448 () Bool)

(declare-fun e!3518850 () Bool)

(declare-fun tp!1584652 () Bool)

(declare-fun tp!1584651 () Bool)

(assert (=> b!5722448 (= e!3518850 (and tp!1584652 tp!1584651))))

(assert (=> b!5721648 (= tp!1584503 e!3518850)))

(declare-fun b!5722445 () Bool)

(assert (=> b!5722445 (= e!3518850 tp_is_empty!40687)))

(declare-fun b!5722447 () Bool)

(declare-fun tp!1584654 () Bool)

(assert (=> b!5722447 (= e!3518850 tp!1584654)))

(declare-fun b!5722446 () Bool)

(declare-fun tp!1584653 () Bool)

(declare-fun tp!1584650 () Bool)

(assert (=> b!5722446 (= e!3518850 (and tp!1584653 tp!1584650))))

(assert (= (and b!5721648 ((_ is ElementMatch!15717) (reg!16046 (reg!16046 r!7292)))) b!5722445))

(assert (= (and b!5721648 ((_ is Concat!24562) (reg!16046 (reg!16046 r!7292)))) b!5722446))

(assert (= (and b!5721648 ((_ is Star!15717) (reg!16046 (reg!16046 r!7292)))) b!5722447))

(assert (= (and b!5721648 ((_ is Union!15717) (reg!16046 (reg!16046 r!7292)))) b!5722448))

(declare-fun b!5722452 () Bool)

(declare-fun e!3518851 () Bool)

(declare-fun tp!1584657 () Bool)

(declare-fun tp!1584656 () Bool)

(assert (=> b!5722452 (= e!3518851 (and tp!1584657 tp!1584656))))

(assert (=> b!5721649 (= tp!1584501 e!3518851)))

(declare-fun b!5722449 () Bool)

(assert (=> b!5722449 (= e!3518851 tp_is_empty!40687)))

(declare-fun b!5722451 () Bool)

(declare-fun tp!1584659 () Bool)

(assert (=> b!5722451 (= e!3518851 tp!1584659)))

(declare-fun b!5722450 () Bool)

(declare-fun tp!1584658 () Bool)

(declare-fun tp!1584655 () Bool)

(assert (=> b!5722450 (= e!3518851 (and tp!1584658 tp!1584655))))

(assert (= (and b!5721649 ((_ is ElementMatch!15717) (regOne!31947 (reg!16046 r!7292)))) b!5722449))

(assert (= (and b!5721649 ((_ is Concat!24562) (regOne!31947 (reg!16046 r!7292)))) b!5722450))

(assert (= (and b!5721649 ((_ is Star!15717) (regOne!31947 (reg!16046 r!7292)))) b!5722451))

(assert (= (and b!5721649 ((_ is Union!15717) (regOne!31947 (reg!16046 r!7292)))) b!5722452))

(declare-fun b!5722460 () Bool)

(declare-fun e!3518858 () Bool)

(declare-fun tp!1584662 () Bool)

(declare-fun tp!1584661 () Bool)

(assert (=> b!5722460 (= e!3518858 (and tp!1584662 tp!1584661))))

(assert (=> b!5721649 (= tp!1584500 e!3518858)))

(declare-fun b!5722454 () Bool)

(assert (=> b!5722454 (= e!3518858 tp_is_empty!40687)))

(declare-fun b!5722458 () Bool)

(declare-fun tp!1584664 () Bool)

(assert (=> b!5722458 (= e!3518858 tp!1584664)))

(declare-fun b!5722456 () Bool)

(declare-fun tp!1584663 () Bool)

(declare-fun tp!1584660 () Bool)

(assert (=> b!5722456 (= e!3518858 (and tp!1584663 tp!1584660))))

(assert (= (and b!5721649 ((_ is ElementMatch!15717) (regTwo!31947 (reg!16046 r!7292)))) b!5722454))

(assert (= (and b!5721649 ((_ is Concat!24562) (regTwo!31947 (reg!16046 r!7292)))) b!5722456))

(assert (= (and b!5721649 ((_ is Star!15717) (regTwo!31947 (reg!16046 r!7292)))) b!5722458))

(assert (= (and b!5721649 ((_ is Union!15717) (regTwo!31947 (reg!16046 r!7292)))) b!5722460))

(declare-fun b!5722471 () Bool)

(declare-fun e!3518859 () Bool)

(declare-fun tp!1584667 () Bool)

(declare-fun tp!1584666 () Bool)

(assert (=> b!5722471 (= e!3518859 (and tp!1584667 tp!1584666))))

(assert (=> b!5721676 (= tp!1584529 e!3518859)))

(declare-fun b!5722468 () Bool)

(assert (=> b!5722468 (= e!3518859 tp_is_empty!40687)))

(declare-fun b!5722470 () Bool)

(declare-fun tp!1584669 () Bool)

(assert (=> b!5722470 (= e!3518859 tp!1584669)))

(declare-fun b!5722469 () Bool)

(declare-fun tp!1584668 () Bool)

(declare-fun tp!1584665 () Bool)

(assert (=> b!5722469 (= e!3518859 (and tp!1584668 tp!1584665))))

(assert (= (and b!5721676 ((_ is ElementMatch!15717) (h!69774 (exprs!5601 setElem!38331)))) b!5722468))

(assert (= (and b!5721676 ((_ is Concat!24562) (h!69774 (exprs!5601 setElem!38331)))) b!5722469))

(assert (= (and b!5721676 ((_ is Star!15717) (h!69774 (exprs!5601 setElem!38331)))) b!5722470))

(assert (= (and b!5721676 ((_ is Union!15717) (h!69774 (exprs!5601 setElem!38331)))) b!5722471))

(declare-fun b!5722472 () Bool)

(declare-fun e!3518860 () Bool)

(declare-fun tp!1584670 () Bool)

(declare-fun tp!1584671 () Bool)

(assert (=> b!5722472 (= e!3518860 (and tp!1584670 tp!1584671))))

(assert (=> b!5721676 (= tp!1584530 e!3518860)))

(assert (= (and b!5721676 ((_ is Cons!63326) (t!376774 (exprs!5601 setElem!38331)))) b!5722472))

(declare-fun b!5722476 () Bool)

(declare-fun e!3518861 () Bool)

(declare-fun tp!1584674 () Bool)

(declare-fun tp!1584673 () Bool)

(assert (=> b!5722476 (= e!3518861 (and tp!1584674 tp!1584673))))

(assert (=> b!5721647 (= tp!1584502 e!3518861)))

(declare-fun b!5722473 () Bool)

(assert (=> b!5722473 (= e!3518861 tp_is_empty!40687)))

(declare-fun b!5722475 () Bool)

(declare-fun tp!1584676 () Bool)

(assert (=> b!5722475 (= e!3518861 tp!1584676)))

(declare-fun b!5722474 () Bool)

(declare-fun tp!1584675 () Bool)

(declare-fun tp!1584672 () Bool)

(assert (=> b!5722474 (= e!3518861 (and tp!1584675 tp!1584672))))

(assert (= (and b!5721647 ((_ is ElementMatch!15717) (regOne!31946 (reg!16046 r!7292)))) b!5722473))

(assert (= (and b!5721647 ((_ is Concat!24562) (regOne!31946 (reg!16046 r!7292)))) b!5722474))

(assert (= (and b!5721647 ((_ is Star!15717) (regOne!31946 (reg!16046 r!7292)))) b!5722475))

(assert (= (and b!5721647 ((_ is Union!15717) (regOne!31946 (reg!16046 r!7292)))) b!5722476))

(declare-fun b!5722480 () Bool)

(declare-fun e!3518862 () Bool)

(declare-fun tp!1584679 () Bool)

(declare-fun tp!1584678 () Bool)

(assert (=> b!5722480 (= e!3518862 (and tp!1584679 tp!1584678))))

(assert (=> b!5721647 (= tp!1584499 e!3518862)))

(declare-fun b!5722477 () Bool)

(assert (=> b!5722477 (= e!3518862 tp_is_empty!40687)))

(declare-fun b!5722479 () Bool)

(declare-fun tp!1584681 () Bool)

(assert (=> b!5722479 (= e!3518862 tp!1584681)))

(declare-fun b!5722478 () Bool)

(declare-fun tp!1584680 () Bool)

(declare-fun tp!1584677 () Bool)

(assert (=> b!5722478 (= e!3518862 (and tp!1584680 tp!1584677))))

(assert (= (and b!5721647 ((_ is ElementMatch!15717) (regTwo!31946 (reg!16046 r!7292)))) b!5722477))

(assert (= (and b!5721647 ((_ is Concat!24562) (regTwo!31946 (reg!16046 r!7292)))) b!5722478))

(assert (= (and b!5721647 ((_ is Star!15717) (regTwo!31946 (reg!16046 r!7292)))) b!5722479))

(assert (= (and b!5721647 ((_ is Union!15717) (regTwo!31946 (reg!16046 r!7292)))) b!5722480))

(declare-fun b!5722481 () Bool)

(declare-fun e!3518863 () Bool)

(declare-fun tp!1584682 () Bool)

(declare-fun tp!1584683 () Bool)

(assert (=> b!5722481 (= e!3518863 (and tp!1584682 tp!1584683))))

(assert (=> b!5721662 (= tp!1584511 e!3518863)))

(assert (= (and b!5721662 ((_ is Cons!63326) (exprs!5601 (h!69775 (t!376775 zl!343))))) b!5722481))

(declare-fun b!5722485 () Bool)

(declare-fun e!3518864 () Bool)

(declare-fun tp!1584686 () Bool)

(declare-fun tp!1584685 () Bool)

(assert (=> b!5722485 (= e!3518864 (and tp!1584686 tp!1584685))))

(assert (=> b!5721670 (= tp!1584520 e!3518864)))

(declare-fun b!5722482 () Bool)

(assert (=> b!5722482 (= e!3518864 tp_is_empty!40687)))

(declare-fun b!5722484 () Bool)

(declare-fun tp!1584688 () Bool)

(assert (=> b!5722484 (= e!3518864 tp!1584688)))

(declare-fun b!5722483 () Bool)

(declare-fun tp!1584687 () Bool)

(declare-fun tp!1584684 () Bool)

(assert (=> b!5722483 (= e!3518864 (and tp!1584687 tp!1584684))))

(assert (= (and b!5721670 ((_ is ElementMatch!15717) (regOne!31947 (regTwo!31947 r!7292)))) b!5722482))

(assert (= (and b!5721670 ((_ is Concat!24562) (regOne!31947 (regTwo!31947 r!7292)))) b!5722483))

(assert (= (and b!5721670 ((_ is Star!15717) (regOne!31947 (regTwo!31947 r!7292)))) b!5722484))

(assert (= (and b!5721670 ((_ is Union!15717) (regOne!31947 (regTwo!31947 r!7292)))) b!5722485))

(declare-fun b!5722489 () Bool)

(declare-fun e!3518865 () Bool)

(declare-fun tp!1584691 () Bool)

(declare-fun tp!1584690 () Bool)

(assert (=> b!5722489 (= e!3518865 (and tp!1584691 tp!1584690))))

(assert (=> b!5721670 (= tp!1584519 e!3518865)))

(declare-fun b!5722486 () Bool)

(assert (=> b!5722486 (= e!3518865 tp_is_empty!40687)))

(declare-fun b!5722488 () Bool)

(declare-fun tp!1584693 () Bool)

(assert (=> b!5722488 (= e!3518865 tp!1584693)))

(declare-fun b!5722487 () Bool)

(declare-fun tp!1584692 () Bool)

(declare-fun tp!1584689 () Bool)

(assert (=> b!5722487 (= e!3518865 (and tp!1584692 tp!1584689))))

(assert (= (and b!5721670 ((_ is ElementMatch!15717) (regTwo!31947 (regTwo!31947 r!7292)))) b!5722486))

(assert (= (and b!5721670 ((_ is Concat!24562) (regTwo!31947 (regTwo!31947 r!7292)))) b!5722487))

(assert (= (and b!5721670 ((_ is Star!15717) (regTwo!31947 (regTwo!31947 r!7292)))) b!5722488))

(assert (= (and b!5721670 ((_ is Union!15717) (regTwo!31947 (regTwo!31947 r!7292)))) b!5722489))

(declare-fun b!5722493 () Bool)

(declare-fun e!3518866 () Bool)

(declare-fun tp!1584696 () Bool)

(declare-fun tp!1584695 () Bool)

(assert (=> b!5722493 (= e!3518866 (and tp!1584696 tp!1584695))))

(assert (=> b!5721668 (= tp!1584521 e!3518866)))

(declare-fun b!5722490 () Bool)

(assert (=> b!5722490 (= e!3518866 tp_is_empty!40687)))

(declare-fun b!5722492 () Bool)

(declare-fun tp!1584698 () Bool)

(assert (=> b!5722492 (= e!3518866 tp!1584698)))

(declare-fun b!5722491 () Bool)

(declare-fun tp!1584697 () Bool)

(declare-fun tp!1584694 () Bool)

(assert (=> b!5722491 (= e!3518866 (and tp!1584697 tp!1584694))))

(assert (= (and b!5721668 ((_ is ElementMatch!15717) (regOne!31946 (regTwo!31947 r!7292)))) b!5722490))

(assert (= (and b!5721668 ((_ is Concat!24562) (regOne!31946 (regTwo!31947 r!7292)))) b!5722491))

(assert (= (and b!5721668 ((_ is Star!15717) (regOne!31946 (regTwo!31947 r!7292)))) b!5722492))

(assert (= (and b!5721668 ((_ is Union!15717) (regOne!31946 (regTwo!31947 r!7292)))) b!5722493))

(declare-fun b!5722497 () Bool)

(declare-fun e!3518867 () Bool)

(declare-fun tp!1584701 () Bool)

(declare-fun tp!1584700 () Bool)

(assert (=> b!5722497 (= e!3518867 (and tp!1584701 tp!1584700))))

(assert (=> b!5721668 (= tp!1584518 e!3518867)))

(declare-fun b!5722494 () Bool)

(assert (=> b!5722494 (= e!3518867 tp_is_empty!40687)))

(declare-fun b!5722496 () Bool)

(declare-fun tp!1584703 () Bool)

(assert (=> b!5722496 (= e!3518867 tp!1584703)))

(declare-fun b!5722495 () Bool)

(declare-fun tp!1584702 () Bool)

(declare-fun tp!1584699 () Bool)

(assert (=> b!5722495 (= e!3518867 (and tp!1584702 tp!1584699))))

(assert (= (and b!5721668 ((_ is ElementMatch!15717) (regTwo!31946 (regTwo!31947 r!7292)))) b!5722494))

(assert (= (and b!5721668 ((_ is Concat!24562) (regTwo!31946 (regTwo!31947 r!7292)))) b!5722495))

(assert (= (and b!5721668 ((_ is Star!15717) (regTwo!31946 (regTwo!31947 r!7292)))) b!5722496))

(assert (= (and b!5721668 ((_ is Union!15717) (regTwo!31946 (regTwo!31947 r!7292)))) b!5722497))

(declare-fun b!5722499 () Bool)

(declare-fun e!3518869 () Bool)

(declare-fun tp!1584704 () Bool)

(assert (=> b!5722499 (= e!3518869 tp!1584704)))

(declare-fun e!3518868 () Bool)

(declare-fun tp!1584705 () Bool)

(declare-fun b!5722498 () Bool)

(assert (=> b!5722498 (= e!3518868 (and (inv!82539 (h!69775 (t!376775 (t!376775 zl!343)))) e!3518869 tp!1584705))))

(assert (=> b!5721661 (= tp!1584512 e!3518868)))

(assert (= b!5722498 b!5722499))

(assert (= (and b!5721661 ((_ is Cons!63327) (t!376775 (t!376775 zl!343)))) b!5722498))

(declare-fun m!6675528 () Bool)

(assert (=> b!5722498 m!6675528))

(declare-fun b!5722503 () Bool)

(declare-fun e!3518870 () Bool)

(declare-fun tp!1584708 () Bool)

(declare-fun tp!1584707 () Bool)

(assert (=> b!5722503 (= e!3518870 (and tp!1584708 tp!1584707))))

(assert (=> b!5721669 (= tp!1584522 e!3518870)))

(declare-fun b!5722500 () Bool)

(assert (=> b!5722500 (= e!3518870 tp_is_empty!40687)))

(declare-fun b!5722502 () Bool)

(declare-fun tp!1584710 () Bool)

(assert (=> b!5722502 (= e!3518870 tp!1584710)))

(declare-fun b!5722501 () Bool)

(declare-fun tp!1584709 () Bool)

(declare-fun tp!1584706 () Bool)

(assert (=> b!5722501 (= e!3518870 (and tp!1584709 tp!1584706))))

(assert (= (and b!5721669 ((_ is ElementMatch!15717) (reg!16046 (regTwo!31947 r!7292)))) b!5722500))

(assert (= (and b!5721669 ((_ is Concat!24562) (reg!16046 (regTwo!31947 r!7292)))) b!5722501))

(assert (= (and b!5721669 ((_ is Star!15717) (reg!16046 (regTwo!31947 r!7292)))) b!5722502))

(assert (= (and b!5721669 ((_ is Union!15717) (reg!16046 (regTwo!31947 r!7292)))) b!5722503))

(declare-fun b!5722507 () Bool)

(declare-fun e!3518871 () Bool)

(declare-fun tp!1584713 () Bool)

(declare-fun tp!1584712 () Bool)

(assert (=> b!5722507 (= e!3518871 (and tp!1584713 tp!1584712))))

(assert (=> b!5721675 (= tp!1584527 e!3518871)))

(declare-fun b!5722504 () Bool)

(assert (=> b!5722504 (= e!3518871 tp_is_empty!40687)))

(declare-fun b!5722506 () Bool)

(declare-fun tp!1584715 () Bool)

(assert (=> b!5722506 (= e!3518871 tp!1584715)))

(declare-fun b!5722505 () Bool)

(declare-fun tp!1584714 () Bool)

(declare-fun tp!1584711 () Bool)

(assert (=> b!5722505 (= e!3518871 (and tp!1584714 tp!1584711))))

(assert (= (and b!5721675 ((_ is ElementMatch!15717) (h!69774 (exprs!5601 (h!69775 zl!343))))) b!5722504))

(assert (= (and b!5721675 ((_ is Concat!24562) (h!69774 (exprs!5601 (h!69775 zl!343))))) b!5722505))

(assert (= (and b!5721675 ((_ is Star!15717) (h!69774 (exprs!5601 (h!69775 zl!343))))) b!5722506))

(assert (= (and b!5721675 ((_ is Union!15717) (h!69774 (exprs!5601 (h!69775 zl!343))))) b!5722507))

(declare-fun b!5722508 () Bool)

(declare-fun e!3518872 () Bool)

(declare-fun tp!1584716 () Bool)

(declare-fun tp!1584717 () Bool)

(assert (=> b!5722508 (= e!3518872 (and tp!1584716 tp!1584717))))

(assert (=> b!5721675 (= tp!1584528 e!3518872)))

(assert (= (and b!5721675 ((_ is Cons!63326) (t!376774 (exprs!5601 (h!69775 zl!343))))) b!5722508))

(declare-fun b!5722509 () Bool)

(declare-fun e!3518873 () Bool)

(declare-fun tp!1584718 () Bool)

(assert (=> b!5722509 (= e!3518873 (and tp_is_empty!40687 tp!1584718))))

(assert (=> b!5721654 (= tp!1584506 e!3518873)))

(assert (= (and b!5721654 ((_ is Cons!63328) (t!376776 (t!376776 s!2326)))) b!5722509))

(declare-fun b_lambda!216219 () Bool)

(assert (= b_lambda!216207 (or d!1804826 b_lambda!216219)))

(declare-fun bs!1337983 () Bool)

(declare-fun d!1805262 () Bool)

(assert (= bs!1337983 (and d!1805262 d!1804826)))

(assert (=> bs!1337983 (= (dynLambda!24781 lambda!309165 (h!69774 (exprs!5601 setElem!38331))) (validRegex!7453 (h!69774 (exprs!5601 setElem!38331))))))

(declare-fun m!6675540 () Bool)

(assert (=> bs!1337983 m!6675540))

(assert (=> b!5721859 d!1805262))

(declare-fun b_lambda!216221 () Bool)

(assert (= b_lambda!216213 (or b!5720846 b_lambda!216221)))

(assert (=> d!1805232 d!1804934))

(declare-fun b_lambda!216223 () Bool)

(assert (= b_lambda!216211 (or d!1804746 b_lambda!216223)))

(declare-fun bs!1337984 () Bool)

(declare-fun d!1805266 () Bool)

(assert (= bs!1337984 (and d!1805266 d!1804746)))

(assert (=> bs!1337984 (= (dynLambda!24781 lambda!309151 (h!69774 lt!2278115)) (validRegex!7453 (h!69774 lt!2278115)))))

(declare-fun m!6675542 () Bool)

(assert (=> bs!1337984 m!6675542))

(assert (=> b!5722061 d!1805266))

(declare-fun b_lambda!216225 () Bool)

(assert (= b_lambda!216215 (or b!5720846 b_lambda!216225)))

(assert (=> d!1805256 d!1804932))

(declare-fun b_lambda!216227 () Bool)

(assert (= b_lambda!216199 (or d!1804742 b_lambda!216227)))

(declare-fun bs!1337985 () Bool)

(declare-fun d!1805268 () Bool)

(assert (= bs!1337985 (and d!1805268 d!1804742)))

(assert (=> bs!1337985 (= (dynLambda!24781 lambda!309143 (h!69774 (unfocusZipperList!1145 zl!343))) (validRegex!7453 (h!69774 (unfocusZipperList!1145 zl!343))))))

(declare-fun m!6675544 () Bool)

(assert (=> bs!1337985 m!6675544))

(assert (=> b!5721724 d!1805268))

(declare-fun b_lambda!216229 () Bool)

(assert (= b_lambda!216205 (or d!1804878 b_lambda!216229)))

(declare-fun bs!1337986 () Bool)

(declare-fun d!1805270 () Bool)

(assert (= bs!1337986 (and d!1805270 d!1804878)))

(assert (=> bs!1337986 (= (dynLambda!24781 lambda!309189 (h!69774 (exprs!5601 (h!69775 zl!343)))) (validRegex!7453 (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(declare-fun m!6675546 () Bool)

(assert (=> bs!1337986 m!6675546))

(assert (=> b!5721841 d!1805270))

(declare-fun b_lambda!216231 () Bool)

(assert (= b_lambda!216203 (or b!5720846 b_lambda!216231)))

(assert (=> d!1805046 d!1804930))

(declare-fun b_lambda!216233 () Bool)

(assert (= b_lambda!216201 (or b!5720846 b_lambda!216233)))

(assert (=> d!1804986 d!1804936))

(declare-fun b_lambda!216235 () Bool)

(assert (= b_lambda!216209 (or d!1804902 b_lambda!216235)))

(declare-fun bs!1337987 () Bool)

(declare-fun d!1805272 () Bool)

(assert (= bs!1337987 (and d!1805272 d!1804902)))

(assert (=> bs!1337987 (= (dynLambda!24781 lambda!309192 (h!69774 (exprs!5601 (h!69775 zl!343)))) (validRegex!7453 (h!69774 (exprs!5601 (h!69775 zl!343)))))))

(assert (=> bs!1337987 m!6675546))

(assert (=> b!5722040 d!1805272))

(check-sat (not d!1804954) (not d!1804944) (not b!5722320) (not b!5722078) (not b!5722484) (not b!5721805) (not bm!437203) (not b!5722268) (not b!5722419) (not b!5721822) (not b!5721988) (not bm!437160) (not b!5721928) (not b!5722048) (not d!1805152) (not b!5722089) (not b!5721954) (not b!5721881) (not d!1805228) (not b_lambda!216233) (not b!5722093) (not d!1805072) (not b!5722509) (not bm!437258) (not d!1805234) (not d!1805116) (not b!5722397) (not b!5722505) (not b!5722412) (not b!5721880) (not bs!1337985) (not b_lambda!216231) (not d!1805000) (not setNonEmpty!38344) (not b!5722506) (not b!5722018) (not b!5721909) (not b!5721987) (not bm!437259) (not b_lambda!216227) (not bm!437228) (not b!5722503) (not b!5722374) (not bm!437169) (not b!5722380) (not d!1805100) (not bm!437252) (not b!5722071) (not b!5721845) (not b!5722055) (not bm!437227) (not d!1805026) (not d!1805030) (not b!5722448) (not b!5722379) (not bm!437223) (not d!1805044) (not b!5722237) (not bm!437285) (not b!5722404) (not d!1804968) (not bm!437257) (not b!5722418) (not b!5722470) (not d!1805150) (not d!1805060) (not b!5721792) (not b!5722077) (not b!5721888) (not d!1805156) (not bm!437186) (not b!5721701) (not bs!1337987) (not b!5722492) (not d!1805146) (not b!5722498) (not b!5722493) (not b!5722476) (not b!5721951) (not bm!437273) (not b!5721812) (not bm!437184) (not d!1805218) (not b!5722400) (not b!5722069) (not d!1805052) (not b!5721794) (not b!5722278) (not b_lambda!216191) (not b!5722415) (not b!5721703) (not bm!437284) (not b!5722181) (not b!5721957) (not b!5721965) (not b!5722458) (not bm!437224) (not b!5721718) (not b!5722434) (not b_lambda!216221) (not d!1805160) (not b!5721733) (not b!5722016) (not bm!437303) (not b!5722430) (not b!5722030) (not b_lambda!216225) (not b!5722017) (not d!1805092) (not b!5722436) (not bm!437208) (not bm!437215) (not bm!437306) (not bm!437178) (not b!5721735) (not b!5722428) (not d!1805024) (not bm!437176) (not b!5722403) (not b!5722082) (not bm!437183) (not bm!437189) (not b!5722026) (not b!5722487) (not bm!437272) (not bm!437205) (not b!5722426) (not b!5722414) (not bm!437182) (not b!5721961) (not b!5722044) (not b!5722407) (not b!5722062) (not b!5722496) (not b!5722378) (not d!1804950) (not bm!437302) (not b!5722006) (not b!5721996) (not b!5722217) (not b!5722499) (not b!5722229) (not b!5722399) (not b!5721768) (not bm!437162) (not b!5722060) (not b!5721702) (not b!5722408) (not bm!437173) (not b!5721832) (not bm!437164) (not b!5722508) (not bm!437312) (not bm!437265) (not b!5721707) (not bm!437157) (not d!1805098) (not b!5721819) (not b!5722472) (not bm!437297) (not b!5721788) (not b!5721842) (not b!5722189) (not d!1805254) (not b!5722447) (not bm!437156) (not b!5722475) (not b!5722190) (not b!5722282) (not b!5722157) (not b!5722049) (not d!1804948) (not d!1804986) (not b!5722501) (not b!5721840) (not b!5722257) (not b!5721814) (not bm!437263) (not d!1805184) (not b!5722194) (not b!5721985) (not b!5722015) (not b!5721952) (not b!5722480) (not bm!437242) (not bm!437261) (not b!5722442) (not d!1804966) (not b!5722266) (not b!5722218) (not d!1805104) (not b!5721817) (not d!1805084) (not d!1805118) (not b!5722363) (not b_lambda!216193) (not d!1805022) (not b!5722202) (not b!5721708) (not b!5722435) (not b!5722432) (not bm!437225) (not b!5721889) (not b!5721882) (not d!1805076) (not b!5722483) (not b!5722423) (not b!5722056) (not b_lambda!216235) (not bm!437240) (not bm!437289) (not bm!437219) (not bs!1337983) (not b!5722168) (not d!1805002) (not b!5722333) (not d!1805020) (not bm!437275) (not b!5722410) (not bm!437190) (not b!5721704) (not b!5721905) (not b!5722177) (not b!5722169) (not bm!437305) (not d!1805136) tp_is_empty!40687 (not b!5721927) (not bm!437221) (not b!5721878) (not d!1805188) (not d!1805256) (not b!5722446) (not b!5722452) (not b!5722398) (not d!1805090) (not b_lambda!216197) (not d!1805018) (not bm!437301) (not b!5722281) (not b!5722469) (not d!1804942) (not b!5722376) (not bm!437163) (not b!5721940) (not b!5721997) (not b!5722041) (not b!5722216) (not d!1805132) (not bm!437216) (not bs!1337986) (not b!5721813) (not setNonEmpty!38343) (not setNonEmpty!38342) (not b_lambda!216223) (not bm!437201) (not bm!437295) (not b!5722427) (not b!5722439) (not b!5721912) (not d!1805154) (not b!5722264) (not b!5722383) (not b!5721974) (not b!5721910) (not b!5721913) (not b!5722451) (not d!1805204) (not b!5722280) (not b!5721860) (not b!5721989) (not bm!437206) (not b!5721855) (not b!5721990) (not b!5722420) (not b!5722047) (not b!5721958) (not d!1805082) (not b!5722080) (not bm!437229) (not b!5722456) (not b!5721847) (not b!5722489) (not b!5721919) (not b!5722375) (not b!5721824) (not bm!437222) (not b!5722495) (not b!5721697) (not b!5722424) (not bm!437170) (not b!5722079) (not b!5722088) (not b!5722438) (not d!1805042) (not b!5721838) (not bm!437230) (not bm!437197) (not b!5722474) (not bm!437207) (not setNonEmpty!38340) (not b!5722046) (not b!5722299) (not b!5721993) (not d!1804988) (not d!1805214) (not b!5721939) (not b_lambda!216219) (not d!1805102) (not bm!437214) (not b!5722065) (not b!5721963) (not bm!437314) (not d!1804946) (not b!5722267) (not d!1805134) (not d!1805046) (not bm!437158) (not b!5721901) (not b!5722491) (not b!5722422) (not b!5722471) (not setNonEmpty!38341) (not b!5721793) (not b!5721976) (not b!5721964) (not b!5721903) (not b!5721710) (not d!1804962) (not b!5722074) (not b!5722497) (not b!5722182) (not d!1805120) (not d!1805062) (not b!5722431) (not b!5721725) (not b!5722225) (not b!5722081) (not bm!437218) (not b!5722019) (not bm!437195) (not bm!437188) (not bm!437251) (not b!5722038) (not d!1804990) (not bm!437296) (not d!1805068) (not b!5722478) (not b!5721994) (not d!1805064) (not b!5722335) (not bm!437193) (not b!5722402) (not bm!437210) (not b!5721797) (not b!5722261) (not b!5722479) (not b!5721906) (not b!5722485) (not d!1805232) (not b!5722444) (not b!5722450) (not b!5722507) (not d!1805096) (not d!1805108) (not b!5722064) (not bm!437202) (not bm!437213) (not bm!437171) (not b_lambda!216195) (not b!5721949) (not b!5721777) (not d!1805194) (not b!5721920) (not bm!437198) (not b!5722270) (not b!5722384) (not bm!437211) (not bm!437194) (not b!5722369) (not b!5722502) (not b!5722183) (not b!5721953) (not b!5722488) (not b_lambda!216229) (not d!1805158) (not b!5721876) (not bm!437286) (not bm!437177) (not b!5722406) (not b!5722443) (not d!1805086) (not b!5722224) (not d!1805014) (not b!5722025) (not b!5722416) (not b!5721760) (not b!5722411) (not b!5721893) (not b!5722263) (not b!5722075) (not b!5722068) (not b!5722481) (not b!5721960) (not b!5722460) (not b!5721904) (not d!1805028) (not b!5722440) (not b!5722382) (not b!5721811) (not b!5722133) (not b!5721929) (not bs!1337984) (not b!5722372) (not d!1805110) (not bm!437253) (not d!1804998))
(check-sat)
