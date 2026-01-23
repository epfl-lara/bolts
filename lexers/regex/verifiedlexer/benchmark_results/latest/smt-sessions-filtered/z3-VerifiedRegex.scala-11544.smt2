; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!635226 () Bool)

(assert start!635226)

(declare-fun b!6430128 () Bool)

(assert (=> b!6430128 true))

(assert (=> b!6430128 true))

(declare-fun lambda!355715 () Int)

(declare-fun lambda!355714 () Int)

(assert (=> b!6430128 (not (= lambda!355715 lambda!355714))))

(assert (=> b!6430128 true))

(assert (=> b!6430128 true))

(declare-fun b!6430098 () Bool)

(assert (=> b!6430098 true))

(declare-fun bs!1617269 () Bool)

(declare-fun b!6430115 () Bool)

(assert (= bs!1617269 (and b!6430115 b!6430128)))

(declare-datatypes ((C!32940 0))(
  ( (C!32941 (val!26172 Int)) )
))
(declare-datatypes ((Regex!16335 0))(
  ( (ElementMatch!16335 (c!1175066 C!32940)) (Concat!25180 (regOne!33182 Regex!16335) (regTwo!33182 Regex!16335)) (EmptyExpr!16335) (Star!16335 (reg!16664 Regex!16335)) (EmptyLang!16335) (Union!16335 (regOne!33183 Regex!16335) (regTwo!33183 Regex!16335)) )
))
(declare-fun r!7292 () Regex!16335)

(declare-fun lambda!355717 () Int)

(declare-fun lt!2379353 () Regex!16335)

(assert (=> bs!1617269 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355717 lambda!355714))))

(assert (=> bs!1617269 (not (= lambda!355717 lambda!355715))))

(assert (=> b!6430115 true))

(assert (=> b!6430115 true))

(assert (=> b!6430115 true))

(declare-fun lambda!355718 () Int)

(assert (=> bs!1617269 (not (= lambda!355718 lambda!355714))))

(assert (=> bs!1617269 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355718 lambda!355715))))

(assert (=> b!6430115 (not (= lambda!355718 lambda!355717))))

(assert (=> b!6430115 true))

(assert (=> b!6430115 true))

(assert (=> b!6430115 true))

(declare-fun bs!1617270 () Bool)

(declare-fun b!6430094 () Bool)

(assert (= bs!1617270 (and b!6430094 b!6430128)))

(declare-datatypes ((List!65304 0))(
  ( (Nil!65180) (Cons!65180 (h!71628 C!32940) (t!378920 List!65304)) )
))
(declare-fun s!2326 () List!65304)

(declare-fun lambda!355719 () Int)

(declare-datatypes ((tuple2!66628 0))(
  ( (tuple2!66629 (_1!36617 List!65304) (_2!36617 List!65304)) )
))
(declare-fun lt!2379368 () tuple2!66628)

(assert (=> bs!1617270 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355719 lambda!355714))))

(assert (=> bs!1617270 (not (= lambda!355719 lambda!355715))))

(declare-fun bs!1617271 () Bool)

(assert (= bs!1617271 (and b!6430094 b!6430115)))

(assert (=> bs!1617271 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355719 lambda!355717))))

(assert (=> bs!1617271 (not (= lambda!355719 lambda!355718))))

(assert (=> b!6430094 true))

(assert (=> b!6430094 true))

(assert (=> b!6430094 true))

(declare-fun lambda!355720 () Int)

(assert (=> bs!1617271 (not (= lambda!355720 lambda!355717))))

(assert (=> b!6430094 (not (= lambda!355720 lambda!355719))))

(assert (=> bs!1617270 (not (= lambda!355720 lambda!355715))))

(assert (=> bs!1617271 (not (= lambda!355720 lambda!355718))))

(assert (=> bs!1617270 (not (= lambda!355720 lambda!355714))))

(assert (=> b!6430094 true))

(assert (=> b!6430094 true))

(assert (=> b!6430094 true))

(declare-fun lambda!355721 () Int)

(assert (=> bs!1617271 (not (= lambda!355721 lambda!355717))))

(assert (=> b!6430094 (not (= lambda!355721 lambda!355719))))

(assert (=> b!6430094 (not (= lambda!355721 lambda!355720))))

(assert (=> bs!1617270 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355721 lambda!355715))))

(assert (=> bs!1617271 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355721 lambda!355718))))

(assert (=> bs!1617270 (not (= lambda!355721 lambda!355714))))

(assert (=> b!6430094 true))

(assert (=> b!6430094 true))

(assert (=> b!6430094 true))

(declare-fun b!6430086 () Bool)

(declare-fun e!3900845 () Bool)

(declare-fun lt!2379374 () Bool)

(declare-fun lt!2379344 () Bool)

(assert (=> b!6430086 (= e!3900845 (or (not lt!2379374) lt!2379344))))

(declare-fun b!6430087 () Bool)

(declare-fun res!2643117 () Bool)

(declare-fun e!3900846 () Bool)

(assert (=> b!6430087 (=> res!2643117 e!3900846)))

(declare-fun matchR!8518 (Regex!16335 List!65304) Bool)

(assert (=> b!6430087 (= res!2643117 (not (matchR!8518 (regTwo!33182 r!7292) (_2!36617 lt!2379368))))))

(declare-fun setIsEmpty!43908 () Bool)

(declare-fun setRes!43908 () Bool)

(assert (=> setIsEmpty!43908 setRes!43908))

(declare-fun b!6430088 () Bool)

(declare-fun e!3900836 () Bool)

(declare-fun tp_is_empty!41923 () Bool)

(assert (=> b!6430088 (= e!3900836 tp_is_empty!41923)))

(declare-fun b!6430089 () Bool)

(declare-fun res!2643118 () Bool)

(assert (=> b!6430089 (=> res!2643118 e!3900846)))

(assert (=> b!6430089 (= res!2643118 (not (matchR!8518 lt!2379353 (_1!36617 lt!2379368))))))

(declare-fun b!6430090 () Bool)

(declare-fun e!3900843 () Bool)

(declare-fun tp!1784126 () Bool)

(assert (=> b!6430090 (= e!3900843 (and tp_is_empty!41923 tp!1784126))))

(declare-fun b!6430091 () Bool)

(declare-fun res!2643114 () Bool)

(declare-fun e!3900838 () Bool)

(assert (=> b!6430091 (=> res!2643114 e!3900838)))

(get-info :version)

(assert (=> b!6430091 (= res!2643114 (or ((_ is EmptyExpr!16335) r!7292) ((_ is EmptyLang!16335) r!7292) ((_ is ElementMatch!16335) r!7292) ((_ is Union!16335) r!7292) (not ((_ is Concat!25180) r!7292))))))

(declare-fun b!6430092 () Bool)

(declare-fun e!3900853 () Bool)

(declare-fun e!3900837 () Bool)

(assert (=> b!6430092 (= e!3900853 e!3900837)))

(declare-fun res!2643126 () Bool)

(assert (=> b!6430092 (=> res!2643126 e!3900837)))

(declare-datatypes ((List!65305 0))(
  ( (Nil!65181) (Cons!65181 (h!71629 Regex!16335) (t!378921 List!65305)) )
))
(declare-datatypes ((Context!11438 0))(
  ( (Context!11439 (exprs!6219 List!65305)) )
))
(declare-fun lt!2379362 () Context!11438)

(declare-datatypes ((List!65306 0))(
  ( (Nil!65182) (Cons!65182 (h!71630 Context!11438) (t!378922 List!65306)) )
))
(declare-fun unfocusZipper!2077 (List!65306) Regex!16335)

(assert (=> b!6430092 (= res!2643126 (not (= (unfocusZipper!2077 (Cons!65182 lt!2379362 Nil!65182)) (reg!16664 (regOne!33182 r!7292)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2379369 () (InoxSet Context!11438))

(declare-fun lt!2379355 () Context!11438)

(declare-fun lambda!355716 () Int)

(declare-fun flatMap!1840 ((InoxSet Context!11438) Int) (InoxSet Context!11438))

(declare-fun derivationStepZipperUp!1509 (Context!11438 C!32940) (InoxSet Context!11438))

(assert (=> b!6430092 (= (flatMap!1840 lt!2379369 lambda!355716) (derivationStepZipperUp!1509 lt!2379355 (h!71628 s!2326)))))

(declare-datatypes ((Unit!158671 0))(
  ( (Unit!158672) )
))
(declare-fun lt!2379366 () Unit!158671)

(declare-fun lemmaFlatMapOnSingletonSet!1366 ((InoxSet Context!11438) Context!11438 Int) Unit!158671)

(assert (=> b!6430092 (= lt!2379366 (lemmaFlatMapOnSingletonSet!1366 lt!2379369 lt!2379355 lambda!355716))))

(declare-fun lt!2379349 () (InoxSet Context!11438))

(assert (=> b!6430092 (= (flatMap!1840 lt!2379349 lambda!355716) (derivationStepZipperUp!1509 lt!2379362 (h!71628 s!2326)))))

(declare-fun lt!2379350 () Unit!158671)

(assert (=> b!6430092 (= lt!2379350 (lemmaFlatMapOnSingletonSet!1366 lt!2379349 lt!2379362 lambda!355716))))

(declare-fun lt!2379378 () (InoxSet Context!11438))

(assert (=> b!6430092 (= lt!2379378 (derivationStepZipperUp!1509 lt!2379355 (h!71628 s!2326)))))

(declare-fun lt!2379338 () (InoxSet Context!11438))

(assert (=> b!6430092 (= lt!2379338 (derivationStepZipperUp!1509 lt!2379362 (h!71628 s!2326)))))

(assert (=> b!6430092 (= lt!2379369 (store ((as const (Array Context!11438 Bool)) false) lt!2379355 true))))

(assert (=> b!6430092 (= lt!2379349 (store ((as const (Array Context!11438 Bool)) false) lt!2379362 true))))

(assert (=> b!6430092 (= lt!2379362 (Context!11439 (Cons!65181 (reg!16664 (regOne!33182 r!7292)) Nil!65181)))))

(declare-fun b!6430093 () Bool)

(declare-fun e!3900855 () Bool)

(declare-fun e!3900844 () Bool)

(assert (=> b!6430093 (= e!3900855 e!3900844)))

(declare-fun res!2643110 () Bool)

(assert (=> b!6430093 (=> res!2643110 e!3900844)))

(declare-fun lt!2379365 () (InoxSet Context!11438))

(declare-fun lt!2379333 () (InoxSet Context!11438))

(assert (=> b!6430093 (= res!2643110 (not (= lt!2379365 lt!2379333)))))

(declare-fun lt!2379364 () Context!11438)

(declare-fun lt!2379348 () (InoxSet Context!11438))

(assert (=> b!6430093 (= (flatMap!1840 lt!2379348 lambda!355716) (derivationStepZipperUp!1509 lt!2379364 (h!71628 s!2326)))))

(declare-fun lt!2379361 () Unit!158671)

(assert (=> b!6430093 (= lt!2379361 (lemmaFlatMapOnSingletonSet!1366 lt!2379348 lt!2379364 lambda!355716))))

(declare-fun lt!2379352 () (InoxSet Context!11438))

(assert (=> b!6430093 (= lt!2379352 (derivationStepZipperUp!1509 lt!2379364 (h!71628 s!2326)))))

(declare-fun derivationStepZipper!2301 ((InoxSet Context!11438) C!32940) (InoxSet Context!11438))

(assert (=> b!6430093 (= lt!2379365 (derivationStepZipper!2301 lt!2379348 (h!71628 s!2326)))))

(assert (=> b!6430093 (= lt!2379348 (store ((as const (Array Context!11438 Bool)) false) lt!2379364 true))))

(declare-fun lt!2379359 () List!65305)

(assert (=> b!6430093 (= lt!2379364 (Context!11439 (Cons!65181 (reg!16664 (regOne!33182 r!7292)) lt!2379359)))))

(declare-fun e!3900848 () Bool)

(assert (=> b!6430094 (= e!3900846 e!3900848)))

(declare-fun res!2643125 () Bool)

(assert (=> b!6430094 (=> res!2643125 e!3900848)))

(declare-fun lt!2379371 () List!65304)

(assert (=> b!6430094 (= res!2643125 (not (= (_1!36617 lt!2379368) lt!2379371)))))

(declare-fun lt!2379342 () tuple2!66628)

(declare-fun ++!14403 (List!65304 List!65304) List!65304)

(assert (=> b!6430094 (= lt!2379371 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342)))))

(declare-datatypes ((Option!16226 0))(
  ( (None!16225) (Some!16225 (v!52398 tuple2!66628)) )
))
(declare-fun lt!2379340 () Option!16226)

(declare-fun get!22586 (Option!16226) tuple2!66628)

(assert (=> b!6430094 (= lt!2379342 (get!22586 lt!2379340))))

(declare-fun Exists!3405 (Int) Bool)

(assert (=> b!6430094 (= (Exists!3405 lambda!355719) (Exists!3405 lambda!355721))))

(declare-fun lt!2379341 () Unit!158671)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1942 (Regex!16335 Regex!16335 List!65304) Unit!158671)

(assert (=> b!6430094 (= lt!2379341 (lemmaExistCutMatchRandMatchRSpecEquivalent!1942 (reg!16664 (regOne!33182 r!7292)) lt!2379353 (_1!36617 lt!2379368)))))

(assert (=> b!6430094 (= (Exists!3405 lambda!355719) (Exists!3405 lambda!355720))))

(declare-fun lt!2379343 () Unit!158671)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!626 (Regex!16335 List!65304) Unit!158671)

(assert (=> b!6430094 (= lt!2379343 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!626 (reg!16664 (regOne!33182 r!7292)) (_1!36617 lt!2379368)))))

(declare-fun isDefined!12929 (Option!16226) Bool)

(assert (=> b!6430094 (= (isDefined!12929 lt!2379340) (Exists!3405 lambda!355719))))

(declare-fun findConcatSeparation!2640 (Regex!16335 Regex!16335 List!65304 List!65304 List!65304) Option!16226)

(assert (=> b!6430094 (= lt!2379340 (findConcatSeparation!2640 (reg!16664 (regOne!33182 r!7292)) lt!2379353 Nil!65180 (_1!36617 lt!2379368) (_1!36617 lt!2379368)))))

(declare-fun lt!2379330 () Unit!158671)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2404 (Regex!16335 Regex!16335 List!65304) Unit!158671)

(assert (=> b!6430094 (= lt!2379330 (lemmaFindConcatSeparationEquivalentToExists!2404 (reg!16664 (regOne!33182 r!7292)) lt!2379353 (_1!36617 lt!2379368)))))

(declare-fun matchRSpec!3436 (Regex!16335 List!65304) Bool)

(assert (=> b!6430094 (matchRSpec!3436 lt!2379353 (_1!36617 lt!2379368))))

(declare-fun lt!2379357 () Unit!158671)

(declare-fun mainMatchTheorem!3436 (Regex!16335 List!65304) Unit!158671)

(assert (=> b!6430094 (= lt!2379357 (mainMatchTheorem!3436 lt!2379353 (_1!36617 lt!2379368)))))

(declare-fun b!6430095 () Bool)

(declare-fun res!2643119 () Bool)

(assert (=> b!6430095 (=> res!2643119 e!3900838)))

(declare-fun zl!343 () List!65306)

(declare-fun isEmpty!37348 (List!65306) Bool)

(assert (=> b!6430095 (= res!2643119 (not (isEmpty!37348 (t!378922 zl!343))))))

(declare-fun b!6430096 () Bool)

(declare-fun res!2643106 () Bool)

(assert (=> b!6430096 (=> res!2643106 e!3900844)))

(declare-fun lt!2379372 () Regex!16335)

(assert (=> b!6430096 (= res!2643106 (not (= lt!2379372 r!7292)))))

(declare-fun b!6430097 () Bool)

(declare-fun e!3900839 () Bool)

(declare-fun inv!84084 (Context!11438) Bool)

(assert (=> b!6430097 (= e!3900839 (inv!84084 lt!2379362))))

(declare-fun lt!2379370 () Regex!16335)

(declare-fun lt!2379356 () List!65304)

(assert (=> b!6430097 (matchR!8518 lt!2379370 lt!2379356)))

(declare-fun lt!2379351 () Unit!158671)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!298 (Regex!16335 Regex!16335 List!65304 List!65304) Unit!158671)

(assert (=> b!6430097 (= lt!2379351 (lemmaTwoRegexMatchThenConcatMatchesConcatString!298 lt!2379353 (regTwo!33182 r!7292) (_2!36617 lt!2379342) (_2!36617 lt!2379368)))))

(assert (=> b!6430097 (matchR!8518 lt!2379353 lt!2379371)))

(declare-fun lt!2379339 () Unit!158671)

(declare-fun lemmaStarApp!112 (Regex!16335 List!65304 List!65304) Unit!158671)

(assert (=> b!6430097 (= lt!2379339 (lemmaStarApp!112 (reg!16664 (regOne!33182 r!7292)) (_1!36617 lt!2379342) (_2!36617 lt!2379342)))))

(declare-fun e!3900851 () Bool)

(declare-fun e!3900856 () Bool)

(assert (=> b!6430098 (= e!3900851 e!3900856)))

(declare-fun res!2643109 () Bool)

(assert (=> b!6430098 (=> res!2643109 e!3900856)))

(assert (=> b!6430098 (= res!2643109 (or (and ((_ is ElementMatch!16335) (regOne!33182 r!7292)) (= (c!1175066 (regOne!33182 r!7292)) (h!71628 s!2326))) ((_ is Union!16335) (regOne!33182 r!7292))))))

(declare-fun lt!2379373 () Unit!158671)

(declare-fun e!3900842 () Unit!158671)

(assert (=> b!6430098 (= lt!2379373 e!3900842)))

(declare-fun c!1175065 () Bool)

(declare-fun nullable!6328 (Regex!16335) Bool)

(assert (=> b!6430098 (= c!1175065 (nullable!6328 (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11438))

(assert (=> b!6430098 (= (flatMap!1840 z!1189 lambda!355716) (derivationStepZipperUp!1509 (h!71630 zl!343) (h!71628 s!2326)))))

(declare-fun lt!2379336 () Unit!158671)

(assert (=> b!6430098 (= lt!2379336 (lemmaFlatMapOnSingletonSet!1366 z!1189 (h!71630 zl!343) lambda!355716))))

(declare-fun lt!2379360 () (InoxSet Context!11438))

(declare-fun lt!2379358 () Context!11438)

(assert (=> b!6430098 (= lt!2379360 (derivationStepZipperUp!1509 lt!2379358 (h!71628 s!2326)))))

(declare-fun lt!2379363 () (InoxSet Context!11438))

(declare-fun derivationStepZipperDown!1583 (Regex!16335 Context!11438 C!32940) (InoxSet Context!11438))

(assert (=> b!6430098 (= lt!2379363 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (h!71630 zl!343))) lt!2379358 (h!71628 s!2326)))))

(assert (=> b!6430098 (= lt!2379358 (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun lt!2379337 () (InoxSet Context!11438))

(assert (=> b!6430098 (= lt!2379337 (derivationStepZipperUp!1509 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))) (h!71628 s!2326)))))

(declare-fun b!6430099 () Bool)

(declare-fun res!2643103 () Bool)

(assert (=> b!6430099 (=> res!2643103 e!3900838)))

(assert (=> b!6430099 (= res!2643103 (not ((_ is Cons!65181) (exprs!6219 (h!71630 zl!343)))))))

(declare-fun b!6430100 () Bool)

(declare-fun e!3900858 () Bool)

(assert (=> b!6430100 (= e!3900858 e!3900853)))

(declare-fun res!2643124 () Bool)

(assert (=> b!6430100 (=> res!2643124 e!3900853)))

(declare-fun lt!2379346 () Regex!16335)

(assert (=> b!6430100 (= res!2643124 (not (= (unfocusZipper!2077 (Cons!65182 lt!2379364 Nil!65182)) lt!2379346)))))

(assert (=> b!6430100 (= lt!2379346 (Concat!25180 (reg!16664 (regOne!33182 r!7292)) lt!2379370))))

(declare-fun b!6430101 () Bool)

(declare-fun tp!1784123 () Bool)

(declare-fun tp!1784130 () Bool)

(assert (=> b!6430101 (= e!3900836 (and tp!1784123 tp!1784130))))

(declare-fun b!6430102 () Bool)

(assert (=> b!6430102 (= e!3900848 e!3900839)))

(declare-fun res!2643120 () Bool)

(assert (=> b!6430102 (=> res!2643120 e!3900839)))

(declare-fun lt!2379331 () List!65304)

(assert (=> b!6430102 (= res!2643120 (not (= lt!2379331 s!2326)))))

(assert (=> b!6430102 (= lt!2379331 (++!14403 (_1!36617 lt!2379342) lt!2379356))))

(assert (=> b!6430102 (= lt!2379331 (++!14403 lt!2379371 (_2!36617 lt!2379368)))))

(assert (=> b!6430102 (= lt!2379356 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368)))))

(declare-fun lt!2379332 () Unit!158671)

(declare-fun lemmaConcatAssociativity!2906 (List!65304 List!65304 List!65304) Unit!158671)

(assert (=> b!6430102 (= lt!2379332 (lemmaConcatAssociativity!2906 (_1!36617 lt!2379342) (_2!36617 lt!2379342) (_2!36617 lt!2379368)))))

(declare-fun b!6430103 () Bool)

(assert (=> b!6430103 (= e!3900856 e!3900855)))

(declare-fun res!2643133 () Bool)

(assert (=> b!6430103 (=> res!2643133 e!3900855)))

(assert (=> b!6430103 (= res!2643133 (not (= lt!2379363 lt!2379333)))))

(assert (=> b!6430103 (= lt!2379333 (derivationStepZipperDown!1583 (reg!16664 (regOne!33182 r!7292)) lt!2379355 (h!71628 s!2326)))))

(assert (=> b!6430103 (= lt!2379355 (Context!11439 lt!2379359))))

(assert (=> b!6430103 (= lt!2379359 (Cons!65181 lt!2379353 (t!378921 (exprs!6219 (h!71630 zl!343)))))))

(assert (=> b!6430103 (= lt!2379353 (Star!16335 (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6430104 () Bool)

(declare-fun res!2643122 () Bool)

(assert (=> b!6430104 (=> res!2643122 e!3900856)))

(assert (=> b!6430104 (= res!2643122 (or ((_ is Concat!25180) (regOne!33182 r!7292)) (not ((_ is Star!16335) (regOne!33182 r!7292)))))))

(declare-fun b!6430105 () Bool)

(declare-fun e!3900854 () Bool)

(assert (=> b!6430105 (= e!3900854 (not e!3900838))))

(declare-fun res!2643116 () Bool)

(assert (=> b!6430105 (=> res!2643116 e!3900838)))

(assert (=> b!6430105 (= res!2643116 (not ((_ is Cons!65182) zl!343)))))

(assert (=> b!6430105 (= lt!2379374 lt!2379344)))

(assert (=> b!6430105 (= lt!2379344 (matchRSpec!3436 r!7292 s!2326))))

(assert (=> b!6430105 (= lt!2379374 (matchR!8518 r!7292 s!2326))))

(declare-fun lt!2379347 () Unit!158671)

(assert (=> b!6430105 (= lt!2379347 (mainMatchTheorem!3436 r!7292 s!2326))))

(declare-fun b!6430106 () Bool)

(declare-fun e!3900849 () Bool)

(assert (=> b!6430106 (= e!3900837 e!3900849)))

(declare-fun res!2643134 () Bool)

(assert (=> b!6430106 (=> res!2643134 e!3900849)))

(assert (=> b!6430106 (= res!2643134 (not lt!2379374))))

(assert (=> b!6430106 e!3900845))

(declare-fun res!2643131 () Bool)

(assert (=> b!6430106 (=> (not res!2643131) (not e!3900845))))

(assert (=> b!6430106 (= res!2643131 (= (matchR!8518 lt!2379346 s!2326) (matchRSpec!3436 lt!2379346 s!2326)))))

(declare-fun lt!2379376 () Unit!158671)

(assert (=> b!6430106 (= lt!2379376 (mainMatchTheorem!3436 lt!2379346 s!2326))))

(declare-fun b!6430107 () Bool)

(declare-fun e!3900852 () Bool)

(assert (=> b!6430107 (= e!3900852 e!3900854)))

(declare-fun res!2643128 () Bool)

(assert (=> b!6430107 (=> (not res!2643128) (not e!3900854))))

(assert (=> b!6430107 (= res!2643128 (= r!7292 lt!2379372))))

(assert (=> b!6430107 (= lt!2379372 (unfocusZipper!2077 zl!343))))

(declare-fun b!6430108 () Bool)

(declare-fun e!3900841 () Bool)

(declare-fun tp!1784129 () Bool)

(assert (=> b!6430108 (= e!3900841 tp!1784129)))

(declare-fun b!6430109 () Bool)

(declare-fun res!2643132 () Bool)

(assert (=> b!6430109 (=> res!2643132 e!3900839)))

(assert (=> b!6430109 (= res!2643132 (not (matchR!8518 lt!2379353 (_2!36617 lt!2379342))))))

(declare-fun b!6430110 () Bool)

(declare-fun res!2643135 () Bool)

(assert (=> b!6430110 (=> res!2643135 e!3900837)))

(assert (=> b!6430110 (= res!2643135 (not (= (unfocusZipper!2077 (Cons!65182 lt!2379355 Nil!65182)) lt!2379370)))))

(declare-fun b!6430111 () Bool)

(declare-fun Unit!158673 () Unit!158671)

(assert (=> b!6430111 (= e!3900842 Unit!158673)))

(declare-fun b!6430112 () Bool)

(declare-fun res!2643129 () Bool)

(assert (=> b!6430112 (=> res!2643129 e!3900839)))

(assert (=> b!6430112 (= res!2643129 (not (matchR!8518 (reg!16664 (regOne!33182 r!7292)) (_1!36617 lt!2379342))))))

(declare-fun b!6430113 () Bool)

(declare-fun res!2643112 () Bool)

(assert (=> b!6430113 (=> res!2643112 e!3900838)))

(declare-fun generalisedConcat!1932 (List!65305) Regex!16335)

(assert (=> b!6430113 (= res!2643112 (not (= r!7292 (generalisedConcat!1932 (exprs!6219 (h!71630 zl!343))))))))

(declare-fun b!6430114 () Bool)

(declare-fun res!2643123 () Bool)

(assert (=> b!6430114 (=> res!2643123 e!3900851)))

(declare-fun isEmpty!37349 (List!65305) Bool)

(assert (=> b!6430114 (= res!2643123 (isEmpty!37349 (t!378921 (exprs!6219 (h!71630 zl!343)))))))

(assert (=> b!6430115 (= e!3900849 e!3900846)))

(declare-fun res!2643108 () Bool)

(assert (=> b!6430115 (=> res!2643108 e!3900846)))

(assert (=> b!6430115 (= res!2643108 (not (= (++!14403 (_1!36617 lt!2379368) (_2!36617 lt!2379368)) s!2326)))))

(declare-fun lt!2379377 () Option!16226)

(assert (=> b!6430115 (= lt!2379368 (get!22586 lt!2379377))))

(assert (=> b!6430115 (= (Exists!3405 lambda!355717) (Exists!3405 lambda!355718))))

(declare-fun lt!2379354 () Unit!158671)

(assert (=> b!6430115 (= lt!2379354 (lemmaExistCutMatchRandMatchRSpecEquivalent!1942 lt!2379353 (regTwo!33182 r!7292) s!2326))))

(assert (=> b!6430115 (= (isDefined!12929 lt!2379377) (Exists!3405 lambda!355717))))

(assert (=> b!6430115 (= lt!2379377 (findConcatSeparation!2640 lt!2379353 (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326))))

(declare-fun lt!2379335 () Unit!158671)

(assert (=> b!6430115 (= lt!2379335 (lemmaFindConcatSeparationEquivalentToExists!2404 lt!2379353 (regTwo!33182 r!7292) s!2326))))

(declare-fun b!6430116 () Bool)

(declare-fun tp!1784121 () Bool)

(declare-fun tp!1784125 () Bool)

(assert (=> b!6430116 (= e!3900836 (and tp!1784121 tp!1784125))))

(declare-fun b!6430117 () Bool)

(assert (=> b!6430117 (= e!3900844 e!3900858)))

(declare-fun res!2643121 () Bool)

(assert (=> b!6430117 (=> res!2643121 e!3900858)))

(assert (=> b!6430117 (= res!2643121 (not (= r!7292 lt!2379370)))))

(assert (=> b!6430117 (= lt!2379370 (Concat!25180 lt!2379353 (regTwo!33182 r!7292)))))

(declare-fun e!3900850 () Bool)

(declare-fun tp!1784124 () Bool)

(declare-fun b!6430118 () Bool)

(assert (=> b!6430118 (= e!3900850 (and (inv!84084 (h!71630 zl!343)) e!3900841 tp!1784124))))

(declare-fun b!6430119 () Bool)

(declare-fun e!3900840 () Bool)

(assert (=> b!6430119 (= e!3900840 (nullable!6328 (regOne!33182 (regOne!33182 r!7292))))))

(declare-fun b!6430120 () Bool)

(declare-fun Unit!158674 () Unit!158671)

(assert (=> b!6430120 (= e!3900842 Unit!158674)))

(declare-fun lt!2379367 () Unit!158671)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1166 ((InoxSet Context!11438) (InoxSet Context!11438) List!65304) Unit!158671)

(assert (=> b!6430120 (= lt!2379367 (lemmaZipperConcatMatchesSameAsBothZippers!1166 lt!2379363 lt!2379360 (t!378920 s!2326)))))

(declare-fun res!2643113 () Bool)

(declare-fun matchZipper!2347 ((InoxSet Context!11438) List!65304) Bool)

(assert (=> b!6430120 (= res!2643113 (matchZipper!2347 lt!2379363 (t!378920 s!2326)))))

(declare-fun e!3900847 () Bool)

(assert (=> b!6430120 (=> res!2643113 e!3900847)))

(assert (=> b!6430120 (= (matchZipper!2347 ((_ map or) lt!2379363 lt!2379360) (t!378920 s!2326)) e!3900847)))

(declare-fun b!6430121 () Bool)

(declare-fun res!2643127 () Bool)

(assert (=> b!6430121 (=> res!2643127 e!3900846)))

(declare-fun isEmpty!37350 (List!65304) Bool)

(assert (=> b!6430121 (= res!2643127 (isEmpty!37350 (_1!36617 lt!2379368)))))

(declare-fun b!6430122 () Bool)

(declare-fun res!2643107 () Bool)

(assert (=> b!6430122 (=> (not res!2643107) (not e!3900852))))

(declare-fun toList!10119 ((InoxSet Context!11438)) List!65306)

(assert (=> b!6430122 (= res!2643107 (= (toList!10119 z!1189) zl!343))))

(declare-fun res!2643115 () Bool)

(assert (=> start!635226 (=> (not res!2643115) (not e!3900852))))

(declare-fun validRegex!8071 (Regex!16335) Bool)

(assert (=> start!635226 (= res!2643115 (validRegex!8071 r!7292))))

(assert (=> start!635226 e!3900852))

(assert (=> start!635226 e!3900836))

(declare-fun condSetEmpty!43908 () Bool)

(assert (=> start!635226 (= condSetEmpty!43908 (= z!1189 ((as const (Array Context!11438 Bool)) false)))))

(assert (=> start!635226 setRes!43908))

(assert (=> start!635226 e!3900850))

(assert (=> start!635226 e!3900843))

(declare-fun b!6430123 () Bool)

(declare-fun res!2643105 () Bool)

(assert (=> b!6430123 (=> res!2643105 e!3900844)))

(assert (=> b!6430123 (= res!2643105 (not (= (matchZipper!2347 lt!2379348 s!2326) (matchZipper!2347 lt!2379365 (t!378920 s!2326)))))))

(declare-fun e!3900857 () Bool)

(declare-fun setElem!43908 () Context!11438)

(declare-fun setNonEmpty!43908 () Bool)

(declare-fun tp!1784127 () Bool)

(assert (=> setNonEmpty!43908 (= setRes!43908 (and tp!1784127 (inv!84084 setElem!43908) e!3900857))))

(declare-fun setRest!43908 () (InoxSet Context!11438))

(assert (=> setNonEmpty!43908 (= z!1189 ((_ map or) (store ((as const (Array Context!11438 Bool)) false) setElem!43908 true) setRest!43908))))

(declare-fun b!6430124 () Bool)

(declare-fun res!2643104 () Bool)

(assert (=> b!6430124 (=> res!2643104 e!3900838)))

(declare-fun generalisedUnion!2179 (List!65305) Regex!16335)

(declare-fun unfocusZipperList!1756 (List!65306) List!65305)

(assert (=> b!6430124 (= res!2643104 (not (= r!7292 (generalisedUnion!2179 (unfocusZipperList!1756 zl!343)))))))

(declare-fun b!6430125 () Bool)

(assert (=> b!6430125 (= e!3900847 (matchZipper!2347 lt!2379360 (t!378920 s!2326)))))

(declare-fun b!6430126 () Bool)

(declare-fun tp!1784122 () Bool)

(assert (=> b!6430126 (= e!3900836 tp!1784122)))

(declare-fun b!6430127 () Bool)

(declare-fun tp!1784128 () Bool)

(assert (=> b!6430127 (= e!3900857 tp!1784128)))

(assert (=> b!6430128 (= e!3900838 e!3900851)))

(declare-fun res!2643111 () Bool)

(assert (=> b!6430128 (=> res!2643111 e!3900851)))

(declare-fun lt!2379345 () Bool)

(assert (=> b!6430128 (= res!2643111 (or (not (= lt!2379374 lt!2379345)) ((_ is Nil!65180) s!2326)))))

(assert (=> b!6430128 (= (Exists!3405 lambda!355714) (Exists!3405 lambda!355715))))

(declare-fun lt!2379375 () Unit!158671)

(assert (=> b!6430128 (= lt!2379375 (lemmaExistCutMatchRandMatchRSpecEquivalent!1942 (regOne!33182 r!7292) (regTwo!33182 r!7292) s!2326))))

(assert (=> b!6430128 (= lt!2379345 (Exists!3405 lambda!355714))))

(assert (=> b!6430128 (= lt!2379345 (isDefined!12929 (findConcatSeparation!2640 (regOne!33182 r!7292) (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326)))))

(declare-fun lt!2379334 () Unit!158671)

(assert (=> b!6430128 (= lt!2379334 (lemmaFindConcatSeparationEquivalentToExists!2404 (regOne!33182 r!7292) (regTwo!33182 r!7292) s!2326))))

(declare-fun b!6430129 () Bool)

(declare-fun res!2643136 () Bool)

(assert (=> b!6430129 (=> res!2643136 e!3900856)))

(assert (=> b!6430129 (= res!2643136 e!3900840)))

(declare-fun res!2643130 () Bool)

(assert (=> b!6430129 (=> (not res!2643130) (not e!3900840))))

(assert (=> b!6430129 (= res!2643130 ((_ is Concat!25180) (regOne!33182 r!7292)))))

(assert (= (and start!635226 res!2643115) b!6430122))

(assert (= (and b!6430122 res!2643107) b!6430107))

(assert (= (and b!6430107 res!2643128) b!6430105))

(assert (= (and b!6430105 (not res!2643116)) b!6430095))

(assert (= (and b!6430095 (not res!2643119)) b!6430113))

(assert (= (and b!6430113 (not res!2643112)) b!6430099))

(assert (= (and b!6430099 (not res!2643103)) b!6430124))

(assert (= (and b!6430124 (not res!2643104)) b!6430091))

(assert (= (and b!6430091 (not res!2643114)) b!6430128))

(assert (= (and b!6430128 (not res!2643111)) b!6430114))

(assert (= (and b!6430114 (not res!2643123)) b!6430098))

(assert (= (and b!6430098 c!1175065) b!6430120))

(assert (= (and b!6430098 (not c!1175065)) b!6430111))

(assert (= (and b!6430120 (not res!2643113)) b!6430125))

(assert (= (and b!6430098 (not res!2643109)) b!6430129))

(assert (= (and b!6430129 res!2643130) b!6430119))

(assert (= (and b!6430129 (not res!2643136)) b!6430104))

(assert (= (and b!6430104 (not res!2643122)) b!6430103))

(assert (= (and b!6430103 (not res!2643133)) b!6430093))

(assert (= (and b!6430093 (not res!2643110)) b!6430123))

(assert (= (and b!6430123 (not res!2643105)) b!6430096))

(assert (= (and b!6430096 (not res!2643106)) b!6430117))

(assert (= (and b!6430117 (not res!2643121)) b!6430100))

(assert (= (and b!6430100 (not res!2643124)) b!6430092))

(assert (= (and b!6430092 (not res!2643126)) b!6430110))

(assert (= (and b!6430110 (not res!2643135)) b!6430106))

(assert (= (and b!6430106 res!2643131) b!6430086))

(assert (= (and b!6430106 (not res!2643134)) b!6430115))

(assert (= (and b!6430115 (not res!2643108)) b!6430089))

(assert (= (and b!6430089 (not res!2643118)) b!6430087))

(assert (= (and b!6430087 (not res!2643117)) b!6430121))

(assert (= (and b!6430121 (not res!2643127)) b!6430094))

(assert (= (and b!6430094 (not res!2643125)) b!6430102))

(assert (= (and b!6430102 (not res!2643120)) b!6430112))

(assert (= (and b!6430112 (not res!2643129)) b!6430109))

(assert (= (and b!6430109 (not res!2643132)) b!6430097))

(assert (= (and start!635226 ((_ is ElementMatch!16335) r!7292)) b!6430088))

(assert (= (and start!635226 ((_ is Concat!25180) r!7292)) b!6430116))

(assert (= (and start!635226 ((_ is Star!16335) r!7292)) b!6430126))

(assert (= (and start!635226 ((_ is Union!16335) r!7292)) b!6430101))

(assert (= (and start!635226 condSetEmpty!43908) setIsEmpty!43908))

(assert (= (and start!635226 (not condSetEmpty!43908)) setNonEmpty!43908))

(assert (= setNonEmpty!43908 b!6430127))

(assert (= b!6430118 b!6430108))

(assert (= (and start!635226 ((_ is Cons!65182) zl!343)) b!6430118))

(assert (= (and start!635226 ((_ is Cons!65180) s!2326)) b!6430090))

(declare-fun m!7223650 () Bool)

(assert (=> b!6430098 m!7223650))

(declare-fun m!7223652 () Bool)

(assert (=> b!6430098 m!7223652))

(declare-fun m!7223654 () Bool)

(assert (=> b!6430098 m!7223654))

(declare-fun m!7223656 () Bool)

(assert (=> b!6430098 m!7223656))

(declare-fun m!7223658 () Bool)

(assert (=> b!6430098 m!7223658))

(declare-fun m!7223660 () Bool)

(assert (=> b!6430098 m!7223660))

(declare-fun m!7223662 () Bool)

(assert (=> b!6430098 m!7223662))

(declare-fun m!7223664 () Bool)

(assert (=> b!6430087 m!7223664))

(declare-fun m!7223666 () Bool)

(assert (=> b!6430115 m!7223666))

(declare-fun m!7223668 () Bool)

(assert (=> b!6430115 m!7223668))

(declare-fun m!7223670 () Bool)

(assert (=> b!6430115 m!7223670))

(declare-fun m!7223672 () Bool)

(assert (=> b!6430115 m!7223672))

(declare-fun m!7223674 () Bool)

(assert (=> b!6430115 m!7223674))

(assert (=> b!6430115 m!7223668))

(declare-fun m!7223676 () Bool)

(assert (=> b!6430115 m!7223676))

(declare-fun m!7223678 () Bool)

(assert (=> b!6430115 m!7223678))

(declare-fun m!7223680 () Bool)

(assert (=> b!6430115 m!7223680))

(declare-fun m!7223682 () Bool)

(assert (=> b!6430118 m!7223682))

(declare-fun m!7223684 () Bool)

(assert (=> b!6430109 m!7223684))

(declare-fun m!7223686 () Bool)

(assert (=> b!6430097 m!7223686))

(declare-fun m!7223688 () Bool)

(assert (=> b!6430097 m!7223688))

(declare-fun m!7223690 () Bool)

(assert (=> b!6430097 m!7223690))

(declare-fun m!7223692 () Bool)

(assert (=> b!6430097 m!7223692))

(declare-fun m!7223694 () Bool)

(assert (=> b!6430097 m!7223694))

(declare-fun m!7223696 () Bool)

(assert (=> start!635226 m!7223696))

(declare-fun m!7223698 () Bool)

(assert (=> b!6430125 m!7223698))

(declare-fun m!7223700 () Bool)

(assert (=> b!6430092 m!7223700))

(declare-fun m!7223702 () Bool)

(assert (=> b!6430092 m!7223702))

(declare-fun m!7223704 () Bool)

(assert (=> b!6430092 m!7223704))

(declare-fun m!7223706 () Bool)

(assert (=> b!6430092 m!7223706))

(declare-fun m!7223708 () Bool)

(assert (=> b!6430092 m!7223708))

(declare-fun m!7223710 () Bool)

(assert (=> b!6430092 m!7223710))

(declare-fun m!7223712 () Bool)

(assert (=> b!6430092 m!7223712))

(declare-fun m!7223714 () Bool)

(assert (=> b!6430092 m!7223714))

(declare-fun m!7223716 () Bool)

(assert (=> b!6430092 m!7223716))

(declare-fun m!7223718 () Bool)

(assert (=> b!6430095 m!7223718))

(declare-fun m!7223720 () Bool)

(assert (=> b!6430094 m!7223720))

(declare-fun m!7223722 () Bool)

(assert (=> b!6430094 m!7223722))

(declare-fun m!7223724 () Bool)

(assert (=> b!6430094 m!7223724))

(assert (=> b!6430094 m!7223724))

(declare-fun m!7223726 () Bool)

(assert (=> b!6430094 m!7223726))

(declare-fun m!7223728 () Bool)

(assert (=> b!6430094 m!7223728))

(declare-fun m!7223730 () Bool)

(assert (=> b!6430094 m!7223730))

(declare-fun m!7223732 () Bool)

(assert (=> b!6430094 m!7223732))

(declare-fun m!7223734 () Bool)

(assert (=> b!6430094 m!7223734))

(declare-fun m!7223736 () Bool)

(assert (=> b!6430094 m!7223736))

(assert (=> b!6430094 m!7223724))

(declare-fun m!7223738 () Bool)

(assert (=> b!6430094 m!7223738))

(declare-fun m!7223740 () Bool)

(assert (=> b!6430094 m!7223740))

(declare-fun m!7223742 () Bool)

(assert (=> b!6430094 m!7223742))

(declare-fun m!7223744 () Bool)

(assert (=> b!6430089 m!7223744))

(declare-fun m!7223746 () Bool)

(assert (=> b!6430123 m!7223746))

(declare-fun m!7223748 () Bool)

(assert (=> b!6430123 m!7223748))

(declare-fun m!7223750 () Bool)

(assert (=> b!6430124 m!7223750))

(assert (=> b!6430124 m!7223750))

(declare-fun m!7223752 () Bool)

(assert (=> b!6430124 m!7223752))

(declare-fun m!7223754 () Bool)

(assert (=> b!6430121 m!7223754))

(declare-fun m!7223756 () Bool)

(assert (=> b!6430110 m!7223756))

(declare-fun m!7223758 () Bool)

(assert (=> b!6430112 m!7223758))

(declare-fun m!7223760 () Bool)

(assert (=> setNonEmpty!43908 m!7223760))

(declare-fun m!7223762 () Bool)

(assert (=> b!6430102 m!7223762))

(declare-fun m!7223764 () Bool)

(assert (=> b!6430102 m!7223764))

(declare-fun m!7223766 () Bool)

(assert (=> b!6430102 m!7223766))

(declare-fun m!7223768 () Bool)

(assert (=> b!6430102 m!7223768))

(declare-fun m!7223770 () Bool)

(assert (=> b!6430106 m!7223770))

(declare-fun m!7223772 () Bool)

(assert (=> b!6430106 m!7223772))

(declare-fun m!7223774 () Bool)

(assert (=> b!6430106 m!7223774))

(declare-fun m!7223776 () Bool)

(assert (=> b!6430122 m!7223776))

(declare-fun m!7223778 () Bool)

(assert (=> b!6430120 m!7223778))

(declare-fun m!7223780 () Bool)

(assert (=> b!6430120 m!7223780))

(declare-fun m!7223782 () Bool)

(assert (=> b!6430120 m!7223782))

(declare-fun m!7223784 () Bool)

(assert (=> b!6430119 m!7223784))

(declare-fun m!7223786 () Bool)

(assert (=> b!6430113 m!7223786))

(declare-fun m!7223788 () Bool)

(assert (=> b!6430114 m!7223788))

(declare-fun m!7223790 () Bool)

(assert (=> b!6430107 m!7223790))

(declare-fun m!7223792 () Bool)

(assert (=> b!6430103 m!7223792))

(declare-fun m!7223794 () Bool)

(assert (=> b!6430128 m!7223794))

(declare-fun m!7223796 () Bool)

(assert (=> b!6430128 m!7223796))

(declare-fun m!7223798 () Bool)

(assert (=> b!6430128 m!7223798))

(assert (=> b!6430128 m!7223794))

(declare-fun m!7223800 () Bool)

(assert (=> b!6430128 m!7223800))

(declare-fun m!7223802 () Bool)

(assert (=> b!6430128 m!7223802))

(assert (=> b!6430128 m!7223800))

(declare-fun m!7223804 () Bool)

(assert (=> b!6430128 m!7223804))

(declare-fun m!7223806 () Bool)

(assert (=> b!6430105 m!7223806))

(declare-fun m!7223808 () Bool)

(assert (=> b!6430105 m!7223808))

(declare-fun m!7223810 () Bool)

(assert (=> b!6430105 m!7223810))

(declare-fun m!7223812 () Bool)

(assert (=> b!6430093 m!7223812))

(declare-fun m!7223814 () Bool)

(assert (=> b!6430093 m!7223814))

(declare-fun m!7223816 () Bool)

(assert (=> b!6430093 m!7223816))

(declare-fun m!7223818 () Bool)

(assert (=> b!6430093 m!7223818))

(declare-fun m!7223820 () Bool)

(assert (=> b!6430093 m!7223820))

(declare-fun m!7223822 () Bool)

(assert (=> b!6430100 m!7223822))

(check-sat (not b!6430095) (not b!6430122) (not b!6430112) (not b!6430090) (not b!6430116) (not b!6430109) (not b!6430089) (not b!6430101) (not b!6430115) (not b!6430105) (not start!635226) (not b!6430108) (not b!6430107) (not b!6430120) (not b!6430087) (not b!6430106) (not setNonEmpty!43908) (not b!6430103) (not b!6430126) (not b!6430110) tp_is_empty!41923 (not b!6430123) (not b!6430125) (not b!6430114) (not b!6430102) (not b!6430119) (not b!6430118) (not b!6430128) (not b!6430124) (not b!6430100) (not b!6430098) (not b!6430113) (not b!6430093) (not b!6430097) (not b!6430094) (not b!6430127) (not b!6430092) (not b!6430121))
(check-sat)
(get-model)

(declare-fun d!2015603 () Bool)

(declare-fun lambda!355733 () Int)

(declare-fun forall!15525 (List!65305 Int) Bool)

(assert (=> d!2015603 (= (inv!84084 (h!71630 zl!343)) (forall!15525 (exprs!6219 (h!71630 zl!343)) lambda!355733))))

(declare-fun bs!1617284 () Bool)

(assert (= bs!1617284 d!2015603))

(declare-fun m!7223872 () Bool)

(assert (=> bs!1617284 m!7223872))

(assert (=> b!6430118 d!2015603))

(declare-fun d!2015605 () Bool)

(assert (=> d!2015605 (= (isEmpty!37348 (t!378922 zl!343)) ((_ is Nil!65182) (t!378922 zl!343)))))

(assert (=> b!6430095 d!2015605))

(declare-fun e!3900915 () Bool)

(declare-fun d!2015611 () Bool)

(assert (=> d!2015611 (= (matchZipper!2347 ((_ map or) lt!2379363 lt!2379360) (t!378920 s!2326)) e!3900915)))

(declare-fun res!2643187 () Bool)

(assert (=> d!2015611 (=> res!2643187 e!3900915)))

(assert (=> d!2015611 (= res!2643187 (matchZipper!2347 lt!2379363 (t!378920 s!2326)))))

(declare-fun lt!2379396 () Unit!158671)

(declare-fun choose!47816 ((InoxSet Context!11438) (InoxSet Context!11438) List!65304) Unit!158671)

(assert (=> d!2015611 (= lt!2379396 (choose!47816 lt!2379363 lt!2379360 (t!378920 s!2326)))))

(assert (=> d!2015611 (= (lemmaZipperConcatMatchesSameAsBothZippers!1166 lt!2379363 lt!2379360 (t!378920 s!2326)) lt!2379396)))

(declare-fun b!6430242 () Bool)

(assert (=> b!6430242 (= e!3900915 (matchZipper!2347 lt!2379360 (t!378920 s!2326)))))

(assert (= (and d!2015611 (not res!2643187)) b!6430242))

(assert (=> d!2015611 m!7223782))

(assert (=> d!2015611 m!7223780))

(declare-fun m!7223890 () Bool)

(assert (=> d!2015611 m!7223890))

(assert (=> b!6430242 m!7223698))

(assert (=> b!6430120 d!2015611))

(declare-fun d!2015613 () Bool)

(declare-fun c!1175102 () Bool)

(assert (=> d!2015613 (= c!1175102 (isEmpty!37350 (t!378920 s!2326)))))

(declare-fun e!3900933 () Bool)

(assert (=> d!2015613 (= (matchZipper!2347 lt!2379363 (t!378920 s!2326)) e!3900933)))

(declare-fun b!6430274 () Bool)

(declare-fun nullableZipper!2100 ((InoxSet Context!11438)) Bool)

(assert (=> b!6430274 (= e!3900933 (nullableZipper!2100 lt!2379363))))

(declare-fun b!6430275 () Bool)

(declare-fun head!13161 (List!65304) C!32940)

(declare-fun tail!12246 (List!65304) List!65304)

(assert (=> b!6430275 (= e!3900933 (matchZipper!2347 (derivationStepZipper!2301 lt!2379363 (head!13161 (t!378920 s!2326))) (tail!12246 (t!378920 s!2326))))))

(assert (= (and d!2015613 c!1175102) b!6430274))

(assert (= (and d!2015613 (not c!1175102)) b!6430275))

(declare-fun m!7223908 () Bool)

(assert (=> d!2015613 m!7223908))

(declare-fun m!7223912 () Bool)

(assert (=> b!6430274 m!7223912))

(declare-fun m!7223914 () Bool)

(assert (=> b!6430275 m!7223914))

(assert (=> b!6430275 m!7223914))

(declare-fun m!7223920 () Bool)

(assert (=> b!6430275 m!7223920))

(declare-fun m!7223922 () Bool)

(assert (=> b!6430275 m!7223922))

(assert (=> b!6430275 m!7223920))

(assert (=> b!6430275 m!7223922))

(declare-fun m!7223924 () Bool)

(assert (=> b!6430275 m!7223924))

(assert (=> b!6430120 d!2015613))

(declare-fun d!2015617 () Bool)

(declare-fun c!1175103 () Bool)

(assert (=> d!2015617 (= c!1175103 (isEmpty!37350 (t!378920 s!2326)))))

(declare-fun e!3900934 () Bool)

(assert (=> d!2015617 (= (matchZipper!2347 ((_ map or) lt!2379363 lt!2379360) (t!378920 s!2326)) e!3900934)))

(declare-fun b!6430276 () Bool)

(assert (=> b!6430276 (= e!3900934 (nullableZipper!2100 ((_ map or) lt!2379363 lt!2379360)))))

(declare-fun b!6430277 () Bool)

(assert (=> b!6430277 (= e!3900934 (matchZipper!2347 (derivationStepZipper!2301 ((_ map or) lt!2379363 lt!2379360) (head!13161 (t!378920 s!2326))) (tail!12246 (t!378920 s!2326))))))

(assert (= (and d!2015617 c!1175103) b!6430276))

(assert (= (and d!2015617 (not c!1175103)) b!6430277))

(assert (=> d!2015617 m!7223908))

(declare-fun m!7223926 () Bool)

(assert (=> b!6430276 m!7223926))

(assert (=> b!6430277 m!7223914))

(assert (=> b!6430277 m!7223914))

(declare-fun m!7223928 () Bool)

(assert (=> b!6430277 m!7223928))

(assert (=> b!6430277 m!7223922))

(assert (=> b!6430277 m!7223928))

(assert (=> b!6430277 m!7223922))

(declare-fun m!7223930 () Bool)

(assert (=> b!6430277 m!7223930))

(assert (=> b!6430120 d!2015617))

(declare-fun d!2015619 () Bool)

(assert (=> d!2015619 (matchR!8518 (Star!16335 (reg!16664 (regOne!33182 r!7292))) (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342)))))

(declare-fun lt!2379408 () Unit!158671)

(declare-fun choose!47819 (Regex!16335 List!65304 List!65304) Unit!158671)

(assert (=> d!2015619 (= lt!2379408 (choose!47819 (reg!16664 (regOne!33182 r!7292)) (_1!36617 lt!2379342) (_2!36617 lt!2379342)))))

(assert (=> d!2015619 (validRegex!8071 (Star!16335 (reg!16664 (regOne!33182 r!7292))))))

(assert (=> d!2015619 (= (lemmaStarApp!112 (reg!16664 (regOne!33182 r!7292)) (_1!36617 lt!2379342) (_2!36617 lt!2379342)) lt!2379408)))

(declare-fun bs!1617287 () Bool)

(assert (= bs!1617287 d!2015619))

(assert (=> bs!1617287 m!7223730))

(assert (=> bs!1617287 m!7223730))

(declare-fun m!7223934 () Bool)

(assert (=> bs!1617287 m!7223934))

(declare-fun m!7223936 () Bool)

(assert (=> bs!1617287 m!7223936))

(declare-fun m!7223938 () Bool)

(assert (=> bs!1617287 m!7223938))

(assert (=> b!6430097 d!2015619))

(declare-fun d!2015623 () Bool)

(assert (=> d!2015623 (matchR!8518 (Concat!25180 lt!2379353 (regTwo!33182 r!7292)) (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368)))))

(declare-fun lt!2379411 () Unit!158671)

(declare-fun choose!47820 (Regex!16335 Regex!16335 List!65304 List!65304) Unit!158671)

(assert (=> d!2015623 (= lt!2379411 (choose!47820 lt!2379353 (regTwo!33182 r!7292) (_2!36617 lt!2379342) (_2!36617 lt!2379368)))))

(declare-fun e!3900967 () Bool)

(assert (=> d!2015623 e!3900967))

(declare-fun res!2643223 () Bool)

(assert (=> d!2015623 (=> (not res!2643223) (not e!3900967))))

(assert (=> d!2015623 (= res!2643223 (validRegex!8071 lt!2379353))))

(assert (=> d!2015623 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!298 lt!2379353 (regTwo!33182 r!7292) (_2!36617 lt!2379342) (_2!36617 lt!2379368)) lt!2379411)))

(declare-fun b!6430322 () Bool)

(assert (=> b!6430322 (= e!3900967 (validRegex!8071 (regTwo!33182 r!7292)))))

(assert (= (and d!2015623 res!2643223) b!6430322))

(assert (=> d!2015623 m!7223766))

(assert (=> d!2015623 m!7223766))

(declare-fun m!7223954 () Bool)

(assert (=> d!2015623 m!7223954))

(declare-fun m!7223956 () Bool)

(assert (=> d!2015623 m!7223956))

(declare-fun m!7223958 () Bool)

(assert (=> d!2015623 m!7223958))

(declare-fun m!7223960 () Bool)

(assert (=> b!6430322 m!7223960))

(assert (=> b!6430097 d!2015623))

(declare-fun d!2015631 () Bool)

(declare-fun e!3901015 () Bool)

(assert (=> d!2015631 e!3901015))

(declare-fun c!1175143 () Bool)

(assert (=> d!2015631 (= c!1175143 ((_ is EmptyExpr!16335) lt!2379370))))

(declare-fun lt!2379425 () Bool)

(declare-fun e!3901010 () Bool)

(assert (=> d!2015631 (= lt!2379425 e!3901010)))

(declare-fun c!1175144 () Bool)

(assert (=> d!2015631 (= c!1175144 (isEmpty!37350 lt!2379356))))

(assert (=> d!2015631 (validRegex!8071 lt!2379370)))

(assert (=> d!2015631 (= (matchR!8518 lt!2379370 lt!2379356) lt!2379425)))

(declare-fun b!6430403 () Bool)

(declare-fun e!3901014 () Bool)

(assert (=> b!6430403 (= e!3901014 (not (= (head!13161 lt!2379356) (c!1175066 lt!2379370))))))

(declare-fun b!6430404 () Bool)

(declare-fun derivativeStep!5039 (Regex!16335 C!32940) Regex!16335)

(assert (=> b!6430404 (= e!3901010 (matchR!8518 (derivativeStep!5039 lt!2379370 (head!13161 lt!2379356)) (tail!12246 lt!2379356)))))

(declare-fun b!6430405 () Bool)

(declare-fun res!2643255 () Bool)

(declare-fun e!3901013 () Bool)

(assert (=> b!6430405 (=> res!2643255 e!3901013)))

(declare-fun e!3901011 () Bool)

(assert (=> b!6430405 (= res!2643255 e!3901011)))

(declare-fun res!2643259 () Bool)

(assert (=> b!6430405 (=> (not res!2643259) (not e!3901011))))

(assert (=> b!6430405 (= res!2643259 lt!2379425)))

(declare-fun b!6430406 () Bool)

(declare-fun res!2643257 () Bool)

(assert (=> b!6430406 (=> res!2643257 e!3901013)))

(assert (=> b!6430406 (= res!2643257 (not ((_ is ElementMatch!16335) lt!2379370)))))

(declare-fun e!3901012 () Bool)

(assert (=> b!6430406 (= e!3901012 e!3901013)))

(declare-fun b!6430407 () Bool)

(declare-fun e!3901016 () Bool)

(assert (=> b!6430407 (= e!3901013 e!3901016)))

(declare-fun res!2643260 () Bool)

(assert (=> b!6430407 (=> (not res!2643260) (not e!3901016))))

(assert (=> b!6430407 (= res!2643260 (not lt!2379425))))

(declare-fun b!6430408 () Bool)

(declare-fun res!2643258 () Bool)

(assert (=> b!6430408 (=> res!2643258 e!3901014)))

(assert (=> b!6430408 (= res!2643258 (not (isEmpty!37350 (tail!12246 lt!2379356))))))

(declare-fun b!6430409 () Bool)

(assert (=> b!6430409 (= e!3901010 (nullable!6328 lt!2379370))))

(declare-fun b!6430410 () Bool)

(assert (=> b!6430410 (= e!3901015 e!3901012)))

(declare-fun c!1175142 () Bool)

(assert (=> b!6430410 (= c!1175142 ((_ is EmptyLang!16335) lt!2379370))))

(declare-fun b!6430411 () Bool)

(declare-fun call!553081 () Bool)

(assert (=> b!6430411 (= e!3901015 (= lt!2379425 call!553081))))

(declare-fun b!6430412 () Bool)

(assert (=> b!6430412 (= e!3901012 (not lt!2379425))))

(declare-fun b!6430413 () Bool)

(declare-fun res!2643261 () Bool)

(assert (=> b!6430413 (=> (not res!2643261) (not e!3901011))))

(assert (=> b!6430413 (= res!2643261 (isEmpty!37350 (tail!12246 lt!2379356)))))

(declare-fun b!6430414 () Bool)

(assert (=> b!6430414 (= e!3901016 e!3901014)))

(declare-fun res!2643254 () Bool)

(assert (=> b!6430414 (=> res!2643254 e!3901014)))

(assert (=> b!6430414 (= res!2643254 call!553081)))

(declare-fun b!6430415 () Bool)

(assert (=> b!6430415 (= e!3901011 (= (head!13161 lt!2379356) (c!1175066 lt!2379370)))))

(declare-fun bm!553076 () Bool)

(assert (=> bm!553076 (= call!553081 (isEmpty!37350 lt!2379356))))

(declare-fun b!6430416 () Bool)

(declare-fun res!2643256 () Bool)

(assert (=> b!6430416 (=> (not res!2643256) (not e!3901011))))

(assert (=> b!6430416 (= res!2643256 (not call!553081))))

(assert (= (and d!2015631 c!1175144) b!6430409))

(assert (= (and d!2015631 (not c!1175144)) b!6430404))

(assert (= (and d!2015631 c!1175143) b!6430411))

(assert (= (and d!2015631 (not c!1175143)) b!6430410))

(assert (= (and b!6430410 c!1175142) b!6430412))

(assert (= (and b!6430410 (not c!1175142)) b!6430406))

(assert (= (and b!6430406 (not res!2643257)) b!6430405))

(assert (= (and b!6430405 res!2643259) b!6430416))

(assert (= (and b!6430416 res!2643256) b!6430413))

(assert (= (and b!6430413 res!2643261) b!6430415))

(assert (= (and b!6430405 (not res!2643255)) b!6430407))

(assert (= (and b!6430407 res!2643260) b!6430414))

(assert (= (and b!6430414 (not res!2643254)) b!6430408))

(assert (= (and b!6430408 (not res!2643258)) b!6430403))

(assert (= (or b!6430411 b!6430416 b!6430414) bm!553076))

(declare-fun m!7224028 () Bool)

(assert (=> d!2015631 m!7224028))

(declare-fun m!7224030 () Bool)

(assert (=> d!2015631 m!7224030))

(declare-fun m!7224032 () Bool)

(assert (=> b!6430403 m!7224032))

(declare-fun m!7224034 () Bool)

(assert (=> b!6430413 m!7224034))

(assert (=> b!6430413 m!7224034))

(declare-fun m!7224036 () Bool)

(assert (=> b!6430413 m!7224036))

(assert (=> b!6430408 m!7224034))

(assert (=> b!6430408 m!7224034))

(assert (=> b!6430408 m!7224036))

(assert (=> b!6430415 m!7224032))

(assert (=> bm!553076 m!7224028))

(declare-fun m!7224038 () Bool)

(assert (=> b!6430409 m!7224038))

(assert (=> b!6430404 m!7224032))

(assert (=> b!6430404 m!7224032))

(declare-fun m!7224040 () Bool)

(assert (=> b!6430404 m!7224040))

(assert (=> b!6430404 m!7224034))

(assert (=> b!6430404 m!7224040))

(assert (=> b!6430404 m!7224034))

(declare-fun m!7224042 () Bool)

(assert (=> b!6430404 m!7224042))

(assert (=> b!6430097 d!2015631))

(declare-fun d!2015649 () Bool)

(declare-fun e!3901022 () Bool)

(assert (=> d!2015649 e!3901022))

(declare-fun c!1175146 () Bool)

(assert (=> d!2015649 (= c!1175146 ((_ is EmptyExpr!16335) lt!2379353))))

(declare-fun lt!2379426 () Bool)

(declare-fun e!3901017 () Bool)

(assert (=> d!2015649 (= lt!2379426 e!3901017)))

(declare-fun c!1175147 () Bool)

(assert (=> d!2015649 (= c!1175147 (isEmpty!37350 lt!2379371))))

(assert (=> d!2015649 (validRegex!8071 lt!2379353)))

(assert (=> d!2015649 (= (matchR!8518 lt!2379353 lt!2379371) lt!2379426)))

(declare-fun b!6430417 () Bool)

(declare-fun e!3901021 () Bool)

(assert (=> b!6430417 (= e!3901021 (not (= (head!13161 lt!2379371) (c!1175066 lt!2379353))))))

(declare-fun b!6430418 () Bool)

(assert (=> b!6430418 (= e!3901017 (matchR!8518 (derivativeStep!5039 lt!2379353 (head!13161 lt!2379371)) (tail!12246 lt!2379371)))))

(declare-fun b!6430419 () Bool)

(declare-fun res!2643263 () Bool)

(declare-fun e!3901020 () Bool)

(assert (=> b!6430419 (=> res!2643263 e!3901020)))

(declare-fun e!3901018 () Bool)

(assert (=> b!6430419 (= res!2643263 e!3901018)))

(declare-fun res!2643267 () Bool)

(assert (=> b!6430419 (=> (not res!2643267) (not e!3901018))))

(assert (=> b!6430419 (= res!2643267 lt!2379426)))

(declare-fun b!6430420 () Bool)

(declare-fun res!2643265 () Bool)

(assert (=> b!6430420 (=> res!2643265 e!3901020)))

(assert (=> b!6430420 (= res!2643265 (not ((_ is ElementMatch!16335) lt!2379353)))))

(declare-fun e!3901019 () Bool)

(assert (=> b!6430420 (= e!3901019 e!3901020)))

(declare-fun b!6430421 () Bool)

(declare-fun e!3901023 () Bool)

(assert (=> b!6430421 (= e!3901020 e!3901023)))

(declare-fun res!2643268 () Bool)

(assert (=> b!6430421 (=> (not res!2643268) (not e!3901023))))

(assert (=> b!6430421 (= res!2643268 (not lt!2379426))))

(declare-fun b!6430422 () Bool)

(declare-fun res!2643266 () Bool)

(assert (=> b!6430422 (=> res!2643266 e!3901021)))

(assert (=> b!6430422 (= res!2643266 (not (isEmpty!37350 (tail!12246 lt!2379371))))))

(declare-fun b!6430423 () Bool)

(assert (=> b!6430423 (= e!3901017 (nullable!6328 lt!2379353))))

(declare-fun b!6430424 () Bool)

(assert (=> b!6430424 (= e!3901022 e!3901019)))

(declare-fun c!1175145 () Bool)

(assert (=> b!6430424 (= c!1175145 ((_ is EmptyLang!16335) lt!2379353))))

(declare-fun b!6430425 () Bool)

(declare-fun call!553082 () Bool)

(assert (=> b!6430425 (= e!3901022 (= lt!2379426 call!553082))))

(declare-fun b!6430426 () Bool)

(assert (=> b!6430426 (= e!3901019 (not lt!2379426))))

(declare-fun b!6430427 () Bool)

(declare-fun res!2643269 () Bool)

(assert (=> b!6430427 (=> (not res!2643269) (not e!3901018))))

(assert (=> b!6430427 (= res!2643269 (isEmpty!37350 (tail!12246 lt!2379371)))))

(declare-fun b!6430428 () Bool)

(assert (=> b!6430428 (= e!3901023 e!3901021)))

(declare-fun res!2643262 () Bool)

(assert (=> b!6430428 (=> res!2643262 e!3901021)))

(assert (=> b!6430428 (= res!2643262 call!553082)))

(declare-fun b!6430429 () Bool)

(assert (=> b!6430429 (= e!3901018 (= (head!13161 lt!2379371) (c!1175066 lt!2379353)))))

(declare-fun bm!553077 () Bool)

(assert (=> bm!553077 (= call!553082 (isEmpty!37350 lt!2379371))))

(declare-fun b!6430430 () Bool)

(declare-fun res!2643264 () Bool)

(assert (=> b!6430430 (=> (not res!2643264) (not e!3901018))))

(assert (=> b!6430430 (= res!2643264 (not call!553082))))

(assert (= (and d!2015649 c!1175147) b!6430423))

(assert (= (and d!2015649 (not c!1175147)) b!6430418))

(assert (= (and d!2015649 c!1175146) b!6430425))

(assert (= (and d!2015649 (not c!1175146)) b!6430424))

(assert (= (and b!6430424 c!1175145) b!6430426))

(assert (= (and b!6430424 (not c!1175145)) b!6430420))

(assert (= (and b!6430420 (not res!2643265)) b!6430419))

(assert (= (and b!6430419 res!2643267) b!6430430))

(assert (= (and b!6430430 res!2643264) b!6430427))

(assert (= (and b!6430427 res!2643269) b!6430429))

(assert (= (and b!6430419 (not res!2643263)) b!6430421))

(assert (= (and b!6430421 res!2643268) b!6430428))

(assert (= (and b!6430428 (not res!2643262)) b!6430422))

(assert (= (and b!6430422 (not res!2643266)) b!6430417))

(assert (= (or b!6430425 b!6430430 b!6430428) bm!553077))

(declare-fun m!7224044 () Bool)

(assert (=> d!2015649 m!7224044))

(assert (=> d!2015649 m!7223958))

(declare-fun m!7224046 () Bool)

(assert (=> b!6430417 m!7224046))

(declare-fun m!7224048 () Bool)

(assert (=> b!6430427 m!7224048))

(assert (=> b!6430427 m!7224048))

(declare-fun m!7224050 () Bool)

(assert (=> b!6430427 m!7224050))

(assert (=> b!6430422 m!7224048))

(assert (=> b!6430422 m!7224048))

(assert (=> b!6430422 m!7224050))

(assert (=> b!6430429 m!7224046))

(assert (=> bm!553077 m!7224044))

(declare-fun m!7224052 () Bool)

(assert (=> b!6430423 m!7224052))

(assert (=> b!6430418 m!7224046))

(assert (=> b!6430418 m!7224046))

(declare-fun m!7224054 () Bool)

(assert (=> b!6430418 m!7224054))

(assert (=> b!6430418 m!7224048))

(assert (=> b!6430418 m!7224054))

(assert (=> b!6430418 m!7224048))

(declare-fun m!7224056 () Bool)

(assert (=> b!6430418 m!7224056))

(assert (=> b!6430097 d!2015649))

(declare-fun bs!1617299 () Bool)

(declare-fun d!2015651 () Bool)

(assert (= bs!1617299 (and d!2015651 d!2015603)))

(declare-fun lambda!355744 () Int)

(assert (=> bs!1617299 (= lambda!355744 lambda!355733)))

(assert (=> d!2015651 (= (inv!84084 lt!2379362) (forall!15525 (exprs!6219 lt!2379362) lambda!355744))))

(declare-fun bs!1617300 () Bool)

(assert (= bs!1617300 d!2015651))

(declare-fun m!7224064 () Bool)

(assert (=> bs!1617300 m!7224064))

(assert (=> b!6430097 d!2015651))

(declare-fun d!2015655 () Bool)

(declare-fun nullableFct!2274 (Regex!16335) Bool)

(assert (=> d!2015655 (= (nullable!6328 (regOne!33182 (regOne!33182 r!7292))) (nullableFct!2274 (regOne!33182 (regOne!33182 r!7292))))))

(declare-fun bs!1617301 () Bool)

(assert (= bs!1617301 d!2015655))

(declare-fun m!7224066 () Bool)

(assert (=> bs!1617301 m!7224066))

(assert (=> b!6430119 d!2015655))

(declare-fun d!2015657 () Bool)

(declare-fun choose!47821 ((InoxSet Context!11438) Int) (InoxSet Context!11438))

(assert (=> d!2015657 (= (flatMap!1840 z!1189 lambda!355716) (choose!47821 z!1189 lambda!355716))))

(declare-fun bs!1617302 () Bool)

(assert (= bs!1617302 d!2015657))

(declare-fun m!7224068 () Bool)

(assert (=> bs!1617302 m!7224068))

(assert (=> b!6430098 d!2015657))

(declare-fun d!2015659 () Bool)

(assert (=> d!2015659 (= (nullable!6328 (h!71629 (exprs!6219 (h!71630 zl!343)))) (nullableFct!2274 (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun bs!1617303 () Bool)

(assert (= bs!1617303 d!2015659))

(declare-fun m!7224070 () Bool)

(assert (=> bs!1617303 m!7224070))

(assert (=> b!6430098 d!2015659))

(declare-fun call!553086 () (InoxSet Context!11438))

(declare-fun e!3901042 () (InoxSet Context!11438))

(declare-fun b!6430462 () Bool)

(assert (=> b!6430462 (= e!3901042 ((_ map or) call!553086 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (h!71628 s!2326))))))

(declare-fun d!2015661 () Bool)

(declare-fun c!1175158 () Bool)

(declare-fun e!3901043 () Bool)

(assert (=> d!2015661 (= c!1175158 e!3901043)))

(declare-fun res!2643283 () Bool)

(assert (=> d!2015661 (=> (not res!2643283) (not e!3901043))))

(assert (=> d!2015661 (= res!2643283 ((_ is Cons!65181) (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))))))

(assert (=> d!2015661 (= (derivationStepZipperUp!1509 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))) (h!71628 s!2326)) e!3901042)))

(declare-fun bm!553081 () Bool)

(assert (=> bm!553081 (= call!553086 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))) (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (h!71628 s!2326)))))

(declare-fun b!6430463 () Bool)

(declare-fun e!3901044 () (InoxSet Context!11438))

(assert (=> b!6430463 (= e!3901042 e!3901044)))

(declare-fun c!1175157 () Bool)

(assert (=> b!6430463 (= c!1175157 ((_ is Cons!65181) (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))))))

(declare-fun b!6430464 () Bool)

(assert (=> b!6430464 (= e!3901044 call!553086)))

(declare-fun b!6430465 () Bool)

(assert (=> b!6430465 (= e!3901044 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6430466 () Bool)

(assert (=> b!6430466 (= e!3901043 (nullable!6328 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))))))

(assert (= (and d!2015661 res!2643283) b!6430466))

(assert (= (and d!2015661 c!1175158) b!6430462))

(assert (= (and d!2015661 (not c!1175158)) b!6430463))

(assert (= (and b!6430463 c!1175157) b!6430464))

(assert (= (and b!6430463 (not c!1175157)) b!6430465))

(assert (= (or b!6430462 b!6430464) bm!553081))

(declare-fun m!7224108 () Bool)

(assert (=> b!6430462 m!7224108))

(declare-fun m!7224110 () Bool)

(assert (=> bm!553081 m!7224110))

(declare-fun m!7224112 () Bool)

(assert (=> b!6430466 m!7224112))

(assert (=> b!6430098 d!2015661))

(declare-fun call!553087 () (InoxSet Context!11438))

(declare-fun e!3901045 () (InoxSet Context!11438))

(declare-fun b!6430467 () Bool)

(assert (=> b!6430467 (= e!3901045 ((_ map or) call!553087 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 lt!2379358))) (h!71628 s!2326))))))

(declare-fun d!2015671 () Bool)

(declare-fun c!1175160 () Bool)

(declare-fun e!3901046 () Bool)

(assert (=> d!2015671 (= c!1175160 e!3901046)))

(declare-fun res!2643284 () Bool)

(assert (=> d!2015671 (=> (not res!2643284) (not e!3901046))))

(assert (=> d!2015671 (= res!2643284 ((_ is Cons!65181) (exprs!6219 lt!2379358)))))

(assert (=> d!2015671 (= (derivationStepZipperUp!1509 lt!2379358 (h!71628 s!2326)) e!3901045)))

(declare-fun bm!553082 () Bool)

(assert (=> bm!553082 (= call!553087 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 lt!2379358)) (Context!11439 (t!378921 (exprs!6219 lt!2379358))) (h!71628 s!2326)))))

(declare-fun b!6430468 () Bool)

(declare-fun e!3901047 () (InoxSet Context!11438))

(assert (=> b!6430468 (= e!3901045 e!3901047)))

(declare-fun c!1175159 () Bool)

(assert (=> b!6430468 (= c!1175159 ((_ is Cons!65181) (exprs!6219 lt!2379358)))))

(declare-fun b!6430469 () Bool)

(assert (=> b!6430469 (= e!3901047 call!553087)))

(declare-fun b!6430470 () Bool)

(assert (=> b!6430470 (= e!3901047 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6430471 () Bool)

(assert (=> b!6430471 (= e!3901046 (nullable!6328 (h!71629 (exprs!6219 lt!2379358))))))

(assert (= (and d!2015671 res!2643284) b!6430471))

(assert (= (and d!2015671 c!1175160) b!6430467))

(assert (= (and d!2015671 (not c!1175160)) b!6430468))

(assert (= (and b!6430468 c!1175159) b!6430469))

(assert (= (and b!6430468 (not c!1175159)) b!6430470))

(assert (= (or b!6430467 b!6430469) bm!553082))

(declare-fun m!7224114 () Bool)

(assert (=> b!6430467 m!7224114))

(declare-fun m!7224116 () Bool)

(assert (=> bm!553082 m!7224116))

(declare-fun m!7224118 () Bool)

(assert (=> b!6430471 m!7224118))

(assert (=> b!6430098 d!2015671))

(declare-fun b!6430537 () Bool)

(declare-fun e!3901085 () (InoxSet Context!11438))

(declare-fun call!553109 () (InoxSet Context!11438))

(declare-fun call!553111 () (InoxSet Context!11438))

(assert (=> b!6430537 (= e!3901085 ((_ map or) call!553109 call!553111))))

(declare-fun call!553110 () List!65305)

(declare-fun c!1175183 () Bool)

(declare-fun bm!553101 () Bool)

(assert (=> bm!553101 (= call!553109 (derivationStepZipperDown!1583 (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343))))) (ite c!1175183 lt!2379358 (Context!11439 call!553110)) (h!71628 s!2326)))))

(declare-fun bm!553102 () Bool)

(declare-fun call!553108 () (InoxSet Context!11438))

(assert (=> bm!553102 (= call!553108 call!553111)))

(declare-fun b!6430538 () Bool)

(declare-fun c!1175184 () Bool)

(declare-fun e!3901088 () Bool)

(assert (=> b!6430538 (= c!1175184 e!3901088)))

(declare-fun res!2643306 () Bool)

(assert (=> b!6430538 (=> (not res!2643306) (not e!3901088))))

(assert (=> b!6430538 (= res!2643306 ((_ is Concat!25180) (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun e!3901089 () (InoxSet Context!11438))

(assert (=> b!6430538 (= e!3901089 e!3901085)))

(declare-fun b!6430539 () Bool)

(declare-fun call!553106 () (InoxSet Context!11438))

(assert (=> b!6430539 (= e!3901089 ((_ map or) call!553106 call!553109))))

(declare-fun bm!553103 () Bool)

(assert (=> bm!553103 (= call!553111 call!553106)))

(declare-fun b!6430540 () Bool)

(declare-fun e!3901090 () (InoxSet Context!11438))

(assert (=> b!6430540 (= e!3901090 e!3901089)))

(assert (=> b!6430540 (= c!1175183 ((_ is Union!16335) (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun b!6430542 () Bool)

(assert (=> b!6430542 (= e!3901088 (nullable!6328 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343))))))))

(declare-fun b!6430543 () Bool)

(declare-fun c!1175187 () Bool)

(assert (=> b!6430543 (= c!1175187 ((_ is Star!16335) (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun e!3901087 () (InoxSet Context!11438))

(declare-fun e!3901086 () (InoxSet Context!11438))

(assert (=> b!6430543 (= e!3901087 e!3901086)))

(declare-fun b!6430544 () Bool)

(assert (=> b!6430544 (= e!3901086 call!553108)))

(declare-fun call!553107 () List!65305)

(declare-fun bm!553104 () Bool)

(declare-fun c!1175186 () Bool)

(assert (=> bm!553104 (= call!553106 (derivationStepZipperDown!1583 (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343))))))) (ite (or c!1175183 c!1175184) lt!2379358 (Context!11439 call!553107)) (h!71628 s!2326)))))

(declare-fun b!6430545 () Bool)

(assert (=> b!6430545 (= e!3901085 e!3901087)))

(assert (=> b!6430545 (= c!1175186 ((_ is Concat!25180) (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun b!6430546 () Bool)

(assert (=> b!6430546 (= e!3901090 (store ((as const (Array Context!11438 Bool)) false) lt!2379358 true))))

(declare-fun b!6430547 () Bool)

(assert (=> b!6430547 (= e!3901086 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2015673 () Bool)

(declare-fun c!1175185 () Bool)

(assert (=> d!2015673 (= c!1175185 (and ((_ is ElementMatch!16335) (h!71629 (exprs!6219 (h!71630 zl!343)))) (= (c!1175066 (h!71629 (exprs!6219 (h!71630 zl!343)))) (h!71628 s!2326))))))

(assert (=> d!2015673 (= (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (h!71630 zl!343))) lt!2379358 (h!71628 s!2326)) e!3901090)))

(declare-fun b!6430541 () Bool)

(assert (=> b!6430541 (= e!3901087 call!553108)))

(declare-fun bm!553105 () Bool)

(assert (=> bm!553105 (= call!553107 call!553110)))

(declare-fun bm!553106 () Bool)

(declare-fun $colon$colon!2196 (List!65305 Regex!16335) List!65305)

(assert (=> bm!553106 (= call!553110 ($colon$colon!2196 (exprs!6219 lt!2379358) (ite (or c!1175184 c!1175186) (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (h!71629 (exprs!6219 (h!71630 zl!343))))))))

(assert (= (and d!2015673 c!1175185) b!6430546))

(assert (= (and d!2015673 (not c!1175185)) b!6430540))

(assert (= (and b!6430540 c!1175183) b!6430539))

(assert (= (and b!6430540 (not c!1175183)) b!6430538))

(assert (= (and b!6430538 res!2643306) b!6430542))

(assert (= (and b!6430538 c!1175184) b!6430537))

(assert (= (and b!6430538 (not c!1175184)) b!6430545))

(assert (= (and b!6430545 c!1175186) b!6430541))

(assert (= (and b!6430545 (not c!1175186)) b!6430543))

(assert (= (and b!6430543 c!1175187) b!6430544))

(assert (= (and b!6430543 (not c!1175187)) b!6430547))

(assert (= (or b!6430541 b!6430544) bm!553105))

(assert (= (or b!6430541 b!6430544) bm!553102))

(assert (= (or b!6430537 bm!553105) bm!553106))

(assert (= (or b!6430537 bm!553102) bm!553103))

(assert (= (or b!6430539 b!6430537) bm!553101))

(assert (= (or b!6430539 bm!553103) bm!553104))

(declare-fun m!7224120 () Bool)

(assert (=> b!6430546 m!7224120))

(declare-fun m!7224122 () Bool)

(assert (=> b!6430542 m!7224122))

(declare-fun m!7224124 () Bool)

(assert (=> bm!553106 m!7224124))

(declare-fun m!7224126 () Bool)

(assert (=> bm!553101 m!7224126))

(declare-fun m!7224128 () Bool)

(assert (=> bm!553104 m!7224128))

(assert (=> b!6430098 d!2015673))

(declare-fun b!6430548 () Bool)

(declare-fun call!553112 () (InoxSet Context!11438))

(declare-fun e!3901091 () (InoxSet Context!11438))

(assert (=> b!6430548 (= e!3901091 ((_ map or) call!553112 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343)))) (h!71628 s!2326))))))

(declare-fun d!2015675 () Bool)

(declare-fun c!1175189 () Bool)

(declare-fun e!3901092 () Bool)

(assert (=> d!2015675 (= c!1175189 e!3901092)))

(declare-fun res!2643307 () Bool)

(assert (=> d!2015675 (=> (not res!2643307) (not e!3901092))))

(assert (=> d!2015675 (= res!2643307 ((_ is Cons!65181) (exprs!6219 (h!71630 zl!343))))))

(assert (=> d!2015675 (= (derivationStepZipperUp!1509 (h!71630 zl!343) (h!71628 s!2326)) e!3901091)))

(declare-fun bm!553107 () Bool)

(assert (=> bm!553107 (= call!553112 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (h!71630 zl!343))) (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343)))) (h!71628 s!2326)))))

(declare-fun b!6430549 () Bool)

(declare-fun e!3901093 () (InoxSet Context!11438))

(assert (=> b!6430549 (= e!3901091 e!3901093)))

(declare-fun c!1175188 () Bool)

(assert (=> b!6430549 (= c!1175188 ((_ is Cons!65181) (exprs!6219 (h!71630 zl!343))))))

(declare-fun b!6430550 () Bool)

(assert (=> b!6430550 (= e!3901093 call!553112)))

(declare-fun b!6430551 () Bool)

(assert (=> b!6430551 (= e!3901093 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6430552 () Bool)

(assert (=> b!6430552 (= e!3901092 (nullable!6328 (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(assert (= (and d!2015675 res!2643307) b!6430552))

(assert (= (and d!2015675 c!1175189) b!6430548))

(assert (= (and d!2015675 (not c!1175189)) b!6430549))

(assert (= (and b!6430549 c!1175188) b!6430550))

(assert (= (and b!6430549 (not c!1175188)) b!6430551))

(assert (= (or b!6430548 b!6430550) bm!553107))

(declare-fun m!7224130 () Bool)

(assert (=> b!6430548 m!7224130))

(declare-fun m!7224132 () Bool)

(assert (=> bm!553107 m!7224132))

(assert (=> b!6430552 m!7223660))

(assert (=> b!6430098 d!2015675))

(declare-fun d!2015677 () Bool)

(declare-fun dynLambda!25892 (Int Context!11438) (InoxSet Context!11438))

(assert (=> d!2015677 (= (flatMap!1840 z!1189 lambda!355716) (dynLambda!25892 lambda!355716 (h!71630 zl!343)))))

(declare-fun lt!2379436 () Unit!158671)

(declare-fun choose!47823 ((InoxSet Context!11438) Context!11438 Int) Unit!158671)

(assert (=> d!2015677 (= lt!2379436 (choose!47823 z!1189 (h!71630 zl!343) lambda!355716))))

(assert (=> d!2015677 (= z!1189 (store ((as const (Array Context!11438 Bool)) false) (h!71630 zl!343) true))))

(assert (=> d!2015677 (= (lemmaFlatMapOnSingletonSet!1366 z!1189 (h!71630 zl!343) lambda!355716) lt!2379436)))

(declare-fun b_lambda!244311 () Bool)

(assert (=> (not b_lambda!244311) (not d!2015677)))

(declare-fun bs!1617315 () Bool)

(assert (= bs!1617315 d!2015677))

(assert (=> bs!1617315 m!7223656))

(declare-fun m!7224140 () Bool)

(assert (=> bs!1617315 m!7224140))

(declare-fun m!7224142 () Bool)

(assert (=> bs!1617315 m!7224142))

(declare-fun m!7224144 () Bool)

(assert (=> bs!1617315 m!7224144))

(assert (=> b!6430098 d!2015677))

(declare-fun d!2015681 () Bool)

(declare-fun c!1175193 () Bool)

(assert (=> d!2015681 (= c!1175193 (isEmpty!37350 s!2326))))

(declare-fun e!3901101 () Bool)

(assert (=> d!2015681 (= (matchZipper!2347 lt!2379348 s!2326) e!3901101)))

(declare-fun b!6430567 () Bool)

(assert (=> b!6430567 (= e!3901101 (nullableZipper!2100 lt!2379348))))

(declare-fun b!6430568 () Bool)

(assert (=> b!6430568 (= e!3901101 (matchZipper!2347 (derivationStepZipper!2301 lt!2379348 (head!13161 s!2326)) (tail!12246 s!2326)))))

(assert (= (and d!2015681 c!1175193) b!6430567))

(assert (= (and d!2015681 (not c!1175193)) b!6430568))

(declare-fun m!7224146 () Bool)

(assert (=> d!2015681 m!7224146))

(declare-fun m!7224148 () Bool)

(assert (=> b!6430567 m!7224148))

(declare-fun m!7224150 () Bool)

(assert (=> b!6430568 m!7224150))

(assert (=> b!6430568 m!7224150))

(declare-fun m!7224152 () Bool)

(assert (=> b!6430568 m!7224152))

(declare-fun m!7224154 () Bool)

(assert (=> b!6430568 m!7224154))

(assert (=> b!6430568 m!7224152))

(assert (=> b!6430568 m!7224154))

(declare-fun m!7224156 () Bool)

(assert (=> b!6430568 m!7224156))

(assert (=> b!6430123 d!2015681))

(declare-fun d!2015683 () Bool)

(declare-fun c!1175194 () Bool)

(assert (=> d!2015683 (= c!1175194 (isEmpty!37350 (t!378920 s!2326)))))

(declare-fun e!3901102 () Bool)

(assert (=> d!2015683 (= (matchZipper!2347 lt!2379365 (t!378920 s!2326)) e!3901102)))

(declare-fun b!6430569 () Bool)

(assert (=> b!6430569 (= e!3901102 (nullableZipper!2100 lt!2379365))))

(declare-fun b!6430570 () Bool)

(assert (=> b!6430570 (= e!3901102 (matchZipper!2347 (derivationStepZipper!2301 lt!2379365 (head!13161 (t!378920 s!2326))) (tail!12246 (t!378920 s!2326))))))

(assert (= (and d!2015683 c!1175194) b!6430569))

(assert (= (and d!2015683 (not c!1175194)) b!6430570))

(assert (=> d!2015683 m!7223908))

(declare-fun m!7224166 () Bool)

(assert (=> b!6430569 m!7224166))

(assert (=> b!6430570 m!7223914))

(assert (=> b!6430570 m!7223914))

(declare-fun m!7224168 () Bool)

(assert (=> b!6430570 m!7224168))

(assert (=> b!6430570 m!7223922))

(assert (=> b!6430570 m!7224168))

(assert (=> b!6430570 m!7223922))

(declare-fun m!7224170 () Bool)

(assert (=> b!6430570 m!7224170))

(assert (=> b!6430123 d!2015683))

(declare-fun b!6430579 () Bool)

(declare-fun e!3901108 () List!65304)

(assert (=> b!6430579 (= e!3901108 lt!2379356)))

(declare-fun b!6430580 () Bool)

(assert (=> b!6430580 (= e!3901108 (Cons!65180 (h!71628 (_1!36617 lt!2379342)) (++!14403 (t!378920 (_1!36617 lt!2379342)) lt!2379356)))))

(declare-fun b!6430581 () Bool)

(declare-fun res!2643321 () Bool)

(declare-fun e!3901107 () Bool)

(assert (=> b!6430581 (=> (not res!2643321) (not e!3901107))))

(declare-fun lt!2379443 () List!65304)

(declare-fun size!40394 (List!65304) Int)

(assert (=> b!6430581 (= res!2643321 (= (size!40394 lt!2379443) (+ (size!40394 (_1!36617 lt!2379342)) (size!40394 lt!2379356))))))

(declare-fun b!6430582 () Bool)

(assert (=> b!6430582 (= e!3901107 (or (not (= lt!2379356 Nil!65180)) (= lt!2379443 (_1!36617 lt!2379342))))))

(declare-fun d!2015687 () Bool)

(assert (=> d!2015687 e!3901107))

(declare-fun res!2643320 () Bool)

(assert (=> d!2015687 (=> (not res!2643320) (not e!3901107))))

(declare-fun content!12384 (List!65304) (InoxSet C!32940))

(assert (=> d!2015687 (= res!2643320 (= (content!12384 lt!2379443) ((_ map or) (content!12384 (_1!36617 lt!2379342)) (content!12384 lt!2379356))))))

(assert (=> d!2015687 (= lt!2379443 e!3901108)))

(declare-fun c!1175197 () Bool)

(assert (=> d!2015687 (= c!1175197 ((_ is Nil!65180) (_1!36617 lt!2379342)))))

(assert (=> d!2015687 (= (++!14403 (_1!36617 lt!2379342) lt!2379356) lt!2379443)))

(assert (= (and d!2015687 c!1175197) b!6430579))

(assert (= (and d!2015687 (not c!1175197)) b!6430580))

(assert (= (and d!2015687 res!2643320) b!6430581))

(assert (= (and b!6430581 res!2643321) b!6430582))

(declare-fun m!7224174 () Bool)

(assert (=> b!6430580 m!7224174))

(declare-fun m!7224176 () Bool)

(assert (=> b!6430581 m!7224176))

(declare-fun m!7224178 () Bool)

(assert (=> b!6430581 m!7224178))

(declare-fun m!7224180 () Bool)

(assert (=> b!6430581 m!7224180))

(declare-fun m!7224182 () Bool)

(assert (=> d!2015687 m!7224182))

(declare-fun m!7224184 () Bool)

(assert (=> d!2015687 m!7224184))

(declare-fun m!7224186 () Bool)

(assert (=> d!2015687 m!7224186))

(assert (=> b!6430102 d!2015687))

(declare-fun b!6430583 () Bool)

(declare-fun e!3901110 () List!65304)

(assert (=> b!6430583 (= e!3901110 (_2!36617 lt!2379368))))

(declare-fun b!6430584 () Bool)

(assert (=> b!6430584 (= e!3901110 (Cons!65180 (h!71628 lt!2379371) (++!14403 (t!378920 lt!2379371) (_2!36617 lt!2379368))))))

(declare-fun b!6430585 () Bool)

(declare-fun res!2643323 () Bool)

(declare-fun e!3901109 () Bool)

(assert (=> b!6430585 (=> (not res!2643323) (not e!3901109))))

(declare-fun lt!2379444 () List!65304)

(assert (=> b!6430585 (= res!2643323 (= (size!40394 lt!2379444) (+ (size!40394 lt!2379371) (size!40394 (_2!36617 lt!2379368)))))))

(declare-fun b!6430586 () Bool)

(assert (=> b!6430586 (= e!3901109 (or (not (= (_2!36617 lt!2379368) Nil!65180)) (= lt!2379444 lt!2379371)))))

(declare-fun d!2015691 () Bool)

(assert (=> d!2015691 e!3901109))

(declare-fun res!2643322 () Bool)

(assert (=> d!2015691 (=> (not res!2643322) (not e!3901109))))

(assert (=> d!2015691 (= res!2643322 (= (content!12384 lt!2379444) ((_ map or) (content!12384 lt!2379371) (content!12384 (_2!36617 lt!2379368)))))))

(assert (=> d!2015691 (= lt!2379444 e!3901110)))

(declare-fun c!1175198 () Bool)

(assert (=> d!2015691 (= c!1175198 ((_ is Nil!65180) lt!2379371))))

(assert (=> d!2015691 (= (++!14403 lt!2379371 (_2!36617 lt!2379368)) lt!2379444)))

(assert (= (and d!2015691 c!1175198) b!6430583))

(assert (= (and d!2015691 (not c!1175198)) b!6430584))

(assert (= (and d!2015691 res!2643322) b!6430585))

(assert (= (and b!6430585 res!2643323) b!6430586))

(declare-fun m!7224188 () Bool)

(assert (=> b!6430584 m!7224188))

(declare-fun m!7224190 () Bool)

(assert (=> b!6430585 m!7224190))

(declare-fun m!7224192 () Bool)

(assert (=> b!6430585 m!7224192))

(declare-fun m!7224194 () Bool)

(assert (=> b!6430585 m!7224194))

(declare-fun m!7224196 () Bool)

(assert (=> d!2015691 m!7224196))

(declare-fun m!7224198 () Bool)

(assert (=> d!2015691 m!7224198))

(declare-fun m!7224200 () Bool)

(assert (=> d!2015691 m!7224200))

(assert (=> b!6430102 d!2015691))

(declare-fun b!6430587 () Bool)

(declare-fun e!3901112 () List!65304)

(assert (=> b!6430587 (= e!3901112 (_2!36617 lt!2379368))))

(declare-fun b!6430588 () Bool)

(assert (=> b!6430588 (= e!3901112 (Cons!65180 (h!71628 (_2!36617 lt!2379342)) (++!14403 (t!378920 (_2!36617 lt!2379342)) (_2!36617 lt!2379368))))))

(declare-fun b!6430589 () Bool)

(declare-fun res!2643325 () Bool)

(declare-fun e!3901111 () Bool)

(assert (=> b!6430589 (=> (not res!2643325) (not e!3901111))))

(declare-fun lt!2379445 () List!65304)

(assert (=> b!6430589 (= res!2643325 (= (size!40394 lt!2379445) (+ (size!40394 (_2!36617 lt!2379342)) (size!40394 (_2!36617 lt!2379368)))))))

(declare-fun b!6430590 () Bool)

(assert (=> b!6430590 (= e!3901111 (or (not (= (_2!36617 lt!2379368) Nil!65180)) (= lt!2379445 (_2!36617 lt!2379342))))))

(declare-fun d!2015693 () Bool)

(assert (=> d!2015693 e!3901111))

(declare-fun res!2643324 () Bool)

(assert (=> d!2015693 (=> (not res!2643324) (not e!3901111))))

(assert (=> d!2015693 (= res!2643324 (= (content!12384 lt!2379445) ((_ map or) (content!12384 (_2!36617 lt!2379342)) (content!12384 (_2!36617 lt!2379368)))))))

(assert (=> d!2015693 (= lt!2379445 e!3901112)))

(declare-fun c!1175199 () Bool)

(assert (=> d!2015693 (= c!1175199 ((_ is Nil!65180) (_2!36617 lt!2379342)))))

(assert (=> d!2015693 (= (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368)) lt!2379445)))

(assert (= (and d!2015693 c!1175199) b!6430587))

(assert (= (and d!2015693 (not c!1175199)) b!6430588))

(assert (= (and d!2015693 res!2643324) b!6430589))

(assert (= (and b!6430589 res!2643325) b!6430590))

(declare-fun m!7224202 () Bool)

(assert (=> b!6430588 m!7224202))

(declare-fun m!7224204 () Bool)

(assert (=> b!6430589 m!7224204))

(declare-fun m!7224206 () Bool)

(assert (=> b!6430589 m!7224206))

(assert (=> b!6430589 m!7224194))

(declare-fun m!7224208 () Bool)

(assert (=> d!2015693 m!7224208))

(declare-fun m!7224210 () Bool)

(assert (=> d!2015693 m!7224210))

(assert (=> d!2015693 m!7224200))

(assert (=> b!6430102 d!2015693))

(declare-fun d!2015695 () Bool)

(assert (=> d!2015695 (= (++!14403 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342)) (_2!36617 lt!2379368)) (++!14403 (_1!36617 lt!2379342) (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368))))))

(declare-fun lt!2379450 () Unit!158671)

(declare-fun choose!47824 (List!65304 List!65304 List!65304) Unit!158671)

(assert (=> d!2015695 (= lt!2379450 (choose!47824 (_1!36617 lt!2379342) (_2!36617 lt!2379342) (_2!36617 lt!2379368)))))

(assert (=> d!2015695 (= (lemmaConcatAssociativity!2906 (_1!36617 lt!2379342) (_2!36617 lt!2379342) (_2!36617 lt!2379368)) lt!2379450)))

(declare-fun bs!1617317 () Bool)

(assert (= bs!1617317 d!2015695))

(assert (=> bs!1617317 m!7223730))

(assert (=> bs!1617317 m!7223766))

(declare-fun m!7224212 () Bool)

(assert (=> bs!1617317 m!7224212))

(declare-fun m!7224214 () Bool)

(assert (=> bs!1617317 m!7224214))

(assert (=> bs!1617317 m!7223766))

(assert (=> bs!1617317 m!7223730))

(declare-fun m!7224216 () Bool)

(assert (=> bs!1617317 m!7224216))

(assert (=> b!6430102 d!2015695))

(declare-fun d!2015697 () Bool)

(assert (=> d!2015697 (= (isEmpty!37350 (_1!36617 lt!2379368)) ((_ is Nil!65180) (_1!36617 lt!2379368)))))

(assert (=> b!6430121 d!2015697))

(declare-fun d!2015699 () Bool)

(declare-fun lt!2379453 () Regex!16335)

(assert (=> d!2015699 (validRegex!8071 lt!2379453)))

(assert (=> d!2015699 (= lt!2379453 (generalisedUnion!2179 (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182))))))

(assert (=> d!2015699 (= (unfocusZipper!2077 (Cons!65182 lt!2379364 Nil!65182)) lt!2379453)))

(declare-fun bs!1617318 () Bool)

(assert (= bs!1617318 d!2015699))

(declare-fun m!7224218 () Bool)

(assert (=> bs!1617318 m!7224218))

(declare-fun m!7224220 () Bool)

(assert (=> bs!1617318 m!7224220))

(assert (=> bs!1617318 m!7224220))

(declare-fun m!7224222 () Bool)

(assert (=> bs!1617318 m!7224222))

(assert (=> b!6430100 d!2015699))

(declare-fun d!2015701 () Bool)

(declare-fun e!3901133 () Bool)

(assert (=> d!2015701 e!3901133))

(declare-fun res!2643334 () Bool)

(assert (=> d!2015701 (=> (not res!2643334) (not e!3901133))))

(declare-fun lt!2379457 () List!65306)

(declare-fun noDuplicate!2164 (List!65306) Bool)

(assert (=> d!2015701 (= res!2643334 (noDuplicate!2164 lt!2379457))))

(declare-fun choose!47825 ((InoxSet Context!11438)) List!65306)

(assert (=> d!2015701 (= lt!2379457 (choose!47825 z!1189))))

(assert (=> d!2015701 (= (toList!10119 z!1189) lt!2379457)))

(declare-fun b!6430623 () Bool)

(declare-fun content!12385 (List!65306) (InoxSet Context!11438))

(assert (=> b!6430623 (= e!3901133 (= (content!12385 lt!2379457) z!1189))))

(assert (= (and d!2015701 res!2643334) b!6430623))

(declare-fun m!7224244 () Bool)

(assert (=> d!2015701 m!7224244))

(declare-fun m!7224246 () Bool)

(assert (=> d!2015701 m!7224246))

(declare-fun m!7224248 () Bool)

(assert (=> b!6430623 m!7224248))

(assert (=> b!6430122 d!2015701))

(declare-fun bs!1617335 () Bool)

(declare-fun d!2015705 () Bool)

(assert (= bs!1617335 (and d!2015705 d!2015603)))

(declare-fun lambda!355761 () Int)

(assert (=> bs!1617335 (= lambda!355761 lambda!355733)))

(declare-fun bs!1617337 () Bool)

(assert (= bs!1617337 (and d!2015705 d!2015651)))

(assert (=> bs!1617337 (= lambda!355761 lambda!355744)))

(declare-fun b!6430676 () Bool)

(declare-fun e!3901165 () Regex!16335)

(assert (=> b!6430676 (= e!3901165 (h!71629 (unfocusZipperList!1756 zl!343)))))

(declare-fun b!6430677 () Bool)

(declare-fun e!3901164 () Bool)

(assert (=> b!6430677 (= e!3901164 (isEmpty!37349 (t!378921 (unfocusZipperList!1756 zl!343))))))

(declare-fun b!6430678 () Bool)

(declare-fun e!3901166 () Bool)

(declare-fun lt!2379465 () Regex!16335)

(declare-fun isUnion!1173 (Regex!16335) Bool)

(assert (=> b!6430678 (= e!3901166 (isUnion!1173 lt!2379465))))

(declare-fun b!6430679 () Bool)

(declare-fun e!3901168 () Bool)

(declare-fun e!3901167 () Bool)

(assert (=> b!6430679 (= e!3901168 e!3901167)))

(declare-fun c!1175231 () Bool)

(assert (=> b!6430679 (= c!1175231 (isEmpty!37349 (unfocusZipperList!1756 zl!343)))))

(declare-fun b!6430680 () Bool)

(declare-fun e!3901163 () Regex!16335)

(assert (=> b!6430680 (= e!3901163 (Union!16335 (h!71629 (unfocusZipperList!1756 zl!343)) (generalisedUnion!2179 (t!378921 (unfocusZipperList!1756 zl!343)))))))

(declare-fun b!6430681 () Bool)

(assert (=> b!6430681 (= e!3901165 e!3901163)))

(declare-fun c!1175232 () Bool)

(assert (=> b!6430681 (= c!1175232 ((_ is Cons!65181) (unfocusZipperList!1756 zl!343)))))

(declare-fun b!6430682 () Bool)

(assert (=> b!6430682 (= e!3901167 e!3901166)))

(declare-fun c!1175233 () Bool)

(declare-fun tail!12247 (List!65305) List!65305)

(assert (=> b!6430682 (= c!1175233 (isEmpty!37349 (tail!12247 (unfocusZipperList!1756 zl!343))))))

(assert (=> d!2015705 e!3901168))

(declare-fun res!2643351 () Bool)

(assert (=> d!2015705 (=> (not res!2643351) (not e!3901168))))

(assert (=> d!2015705 (= res!2643351 (validRegex!8071 lt!2379465))))

(assert (=> d!2015705 (= lt!2379465 e!3901165)))

(declare-fun c!1175230 () Bool)

(assert (=> d!2015705 (= c!1175230 e!3901164)))

(declare-fun res!2643350 () Bool)

(assert (=> d!2015705 (=> (not res!2643350) (not e!3901164))))

(assert (=> d!2015705 (= res!2643350 ((_ is Cons!65181) (unfocusZipperList!1756 zl!343)))))

(assert (=> d!2015705 (forall!15525 (unfocusZipperList!1756 zl!343) lambda!355761)))

(assert (=> d!2015705 (= (generalisedUnion!2179 (unfocusZipperList!1756 zl!343)) lt!2379465)))

(declare-fun b!6430675 () Bool)

(declare-fun head!13162 (List!65305) Regex!16335)

(assert (=> b!6430675 (= e!3901166 (= lt!2379465 (head!13162 (unfocusZipperList!1756 zl!343))))))

(declare-fun b!6430683 () Bool)

(assert (=> b!6430683 (= e!3901163 EmptyLang!16335)))

(declare-fun b!6430684 () Bool)

(declare-fun isEmptyLang!1743 (Regex!16335) Bool)

(assert (=> b!6430684 (= e!3901167 (isEmptyLang!1743 lt!2379465))))

(assert (= (and d!2015705 res!2643350) b!6430677))

(assert (= (and d!2015705 c!1175230) b!6430676))

(assert (= (and d!2015705 (not c!1175230)) b!6430681))

(assert (= (and b!6430681 c!1175232) b!6430680))

(assert (= (and b!6430681 (not c!1175232)) b!6430683))

(assert (= (and d!2015705 res!2643351) b!6430679))

(assert (= (and b!6430679 c!1175231) b!6430684))

(assert (= (and b!6430679 (not c!1175231)) b!6430682))

(assert (= (and b!6430682 c!1175233) b!6430675))

(assert (= (and b!6430682 (not c!1175233)) b!6430678))

(declare-fun m!7224264 () Bool)

(assert (=> b!6430677 m!7224264))

(declare-fun m!7224266 () Bool)

(assert (=> b!6430680 m!7224266))

(declare-fun m!7224268 () Bool)

(assert (=> b!6430684 m!7224268))

(assert (=> b!6430679 m!7223750))

(declare-fun m!7224270 () Bool)

(assert (=> b!6430679 m!7224270))

(assert (=> b!6430682 m!7223750))

(declare-fun m!7224272 () Bool)

(assert (=> b!6430682 m!7224272))

(assert (=> b!6430682 m!7224272))

(declare-fun m!7224274 () Bool)

(assert (=> b!6430682 m!7224274))

(declare-fun m!7224276 () Bool)

(assert (=> d!2015705 m!7224276))

(assert (=> d!2015705 m!7223750))

(declare-fun m!7224278 () Bool)

(assert (=> d!2015705 m!7224278))

(declare-fun m!7224280 () Bool)

(assert (=> b!6430678 m!7224280))

(assert (=> b!6430675 m!7223750))

(declare-fun m!7224282 () Bool)

(assert (=> b!6430675 m!7224282))

(assert (=> b!6430124 d!2015705))

(declare-fun bs!1617349 () Bool)

(declare-fun d!2015713 () Bool)

(assert (= bs!1617349 (and d!2015713 d!2015603)))

(declare-fun lambda!355764 () Int)

(assert (=> bs!1617349 (= lambda!355764 lambda!355733)))

(declare-fun bs!1617350 () Bool)

(assert (= bs!1617350 (and d!2015713 d!2015651)))

(assert (=> bs!1617350 (= lambda!355764 lambda!355744)))

(declare-fun bs!1617351 () Bool)

(assert (= bs!1617351 (and d!2015713 d!2015705)))

(assert (=> bs!1617351 (= lambda!355764 lambda!355761)))

(declare-fun lt!2379471 () List!65305)

(assert (=> d!2015713 (forall!15525 lt!2379471 lambda!355764)))

(declare-fun e!3901177 () List!65305)

(assert (=> d!2015713 (= lt!2379471 e!3901177)))

(declare-fun c!1175240 () Bool)

(assert (=> d!2015713 (= c!1175240 ((_ is Cons!65182) zl!343))))

(assert (=> d!2015713 (= (unfocusZipperList!1756 zl!343) lt!2379471)))

(declare-fun b!6430699 () Bool)

(assert (=> b!6430699 (= e!3901177 (Cons!65181 (generalisedConcat!1932 (exprs!6219 (h!71630 zl!343))) (unfocusZipperList!1756 (t!378922 zl!343))))))

(declare-fun b!6430700 () Bool)

(assert (=> b!6430700 (= e!3901177 Nil!65181)))

(assert (= (and d!2015713 c!1175240) b!6430699))

(assert (= (and d!2015713 (not c!1175240)) b!6430700))

(declare-fun m!7224322 () Bool)

(assert (=> d!2015713 m!7224322))

(assert (=> b!6430699 m!7223786))

(declare-fun m!7224324 () Bool)

(assert (=> b!6430699 m!7224324))

(assert (=> b!6430124 d!2015713))

(declare-fun d!2015735 () Bool)

(declare-fun c!1175242 () Bool)

(assert (=> d!2015735 (= c!1175242 (isEmpty!37350 (t!378920 s!2326)))))

(declare-fun e!3901180 () Bool)

(assert (=> d!2015735 (= (matchZipper!2347 lt!2379360 (t!378920 s!2326)) e!3901180)))

(declare-fun b!6430705 () Bool)

(assert (=> b!6430705 (= e!3901180 (nullableZipper!2100 lt!2379360))))

(declare-fun b!6430706 () Bool)

(assert (=> b!6430706 (= e!3901180 (matchZipper!2347 (derivationStepZipper!2301 lt!2379360 (head!13161 (t!378920 s!2326))) (tail!12246 (t!378920 s!2326))))))

(assert (= (and d!2015735 c!1175242) b!6430705))

(assert (= (and d!2015735 (not c!1175242)) b!6430706))

(assert (=> d!2015735 m!7223908))

(declare-fun m!7224334 () Bool)

(assert (=> b!6430705 m!7224334))

(assert (=> b!6430706 m!7223914))

(assert (=> b!6430706 m!7223914))

(declare-fun m!7224340 () Bool)

(assert (=> b!6430706 m!7224340))

(assert (=> b!6430706 m!7223922))

(assert (=> b!6430706 m!7224340))

(assert (=> b!6430706 m!7223922))

(declare-fun m!7224344 () Bool)

(assert (=> b!6430706 m!7224344))

(assert (=> b!6430125 d!2015735))

(declare-fun bs!1617353 () Bool)

(declare-fun d!2015739 () Bool)

(assert (= bs!1617353 (and d!2015739 d!2015603)))

(declare-fun lambda!355765 () Int)

(assert (=> bs!1617353 (= lambda!355765 lambda!355733)))

(declare-fun bs!1617354 () Bool)

(assert (= bs!1617354 (and d!2015739 d!2015651)))

(assert (=> bs!1617354 (= lambda!355765 lambda!355744)))

(declare-fun bs!1617355 () Bool)

(assert (= bs!1617355 (and d!2015739 d!2015705)))

(assert (=> bs!1617355 (= lambda!355765 lambda!355761)))

(declare-fun bs!1617356 () Bool)

(assert (= bs!1617356 (and d!2015739 d!2015713)))

(assert (=> bs!1617356 (= lambda!355765 lambda!355764)))

(assert (=> d!2015739 (= (inv!84084 setElem!43908) (forall!15525 (exprs!6219 setElem!43908) lambda!355765))))

(declare-fun bs!1617357 () Bool)

(assert (= bs!1617357 d!2015739))

(declare-fun m!7224356 () Bool)

(assert (=> bs!1617357 m!7224356))

(assert (=> setNonEmpty!43908 d!2015739))

(declare-fun b!6430715 () Bool)

(declare-fun e!3901185 () (InoxSet Context!11438))

(declare-fun call!553122 () (InoxSet Context!11438))

(declare-fun call!553124 () (InoxSet Context!11438))

(assert (=> b!6430715 (= e!3901185 ((_ map or) call!553122 call!553124))))

(declare-fun c!1175245 () Bool)

(declare-fun bm!553114 () Bool)

(declare-fun call!553123 () List!65305)

(assert (=> bm!553114 (= call!553122 (derivationStepZipperDown!1583 (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292)))) (ite c!1175245 lt!2379355 (Context!11439 call!553123)) (h!71628 s!2326)))))

(declare-fun bm!553115 () Bool)

(declare-fun call!553121 () (InoxSet Context!11438))

(assert (=> bm!553115 (= call!553121 call!553124)))

(declare-fun b!6430716 () Bool)

(declare-fun c!1175246 () Bool)

(declare-fun e!3901188 () Bool)

(assert (=> b!6430716 (= c!1175246 e!3901188)))

(declare-fun res!2643360 () Bool)

(assert (=> b!6430716 (=> (not res!2643360) (not e!3901188))))

(assert (=> b!6430716 (= res!2643360 ((_ is Concat!25180) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun e!3901189 () (InoxSet Context!11438))

(assert (=> b!6430716 (= e!3901189 e!3901185)))

(declare-fun b!6430717 () Bool)

(declare-fun call!553119 () (InoxSet Context!11438))

(assert (=> b!6430717 (= e!3901189 ((_ map or) call!553119 call!553122))))

(declare-fun bm!553116 () Bool)

(assert (=> bm!553116 (= call!553124 call!553119)))

(declare-fun b!6430718 () Bool)

(declare-fun e!3901190 () (InoxSet Context!11438))

(assert (=> b!6430718 (= e!3901190 e!3901189)))

(assert (=> b!6430718 (= c!1175245 ((_ is Union!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6430720 () Bool)

(assert (=> b!6430720 (= e!3901188 (nullable!6328 (regOne!33182 (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun b!6430721 () Bool)

(declare-fun c!1175249 () Bool)

(assert (=> b!6430721 (= c!1175249 ((_ is Star!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun e!3901187 () (InoxSet Context!11438))

(declare-fun e!3901186 () (InoxSet Context!11438))

(assert (=> b!6430721 (= e!3901187 e!3901186)))

(declare-fun b!6430722 () Bool)

(assert (=> b!6430722 (= e!3901186 call!553121)))

(declare-fun c!1175248 () Bool)

(declare-fun bm!553117 () Bool)

(declare-fun call!553120 () List!65305)

(assert (=> bm!553117 (= call!553119 (derivationStepZipperDown!1583 (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292)))))) (ite (or c!1175245 c!1175246) lt!2379355 (Context!11439 call!553120)) (h!71628 s!2326)))))

(declare-fun b!6430723 () Bool)

(assert (=> b!6430723 (= e!3901185 e!3901187)))

(assert (=> b!6430723 (= c!1175248 ((_ is Concat!25180) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6430724 () Bool)

(assert (=> b!6430724 (= e!3901190 (store ((as const (Array Context!11438 Bool)) false) lt!2379355 true))))

(declare-fun b!6430725 () Bool)

(assert (=> b!6430725 (= e!3901186 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2015743 () Bool)

(declare-fun c!1175247 () Bool)

(assert (=> d!2015743 (= c!1175247 (and ((_ is ElementMatch!16335) (reg!16664 (regOne!33182 r!7292))) (= (c!1175066 (reg!16664 (regOne!33182 r!7292))) (h!71628 s!2326))))))

(assert (=> d!2015743 (= (derivationStepZipperDown!1583 (reg!16664 (regOne!33182 r!7292)) lt!2379355 (h!71628 s!2326)) e!3901190)))

(declare-fun b!6430719 () Bool)

(assert (=> b!6430719 (= e!3901187 call!553121)))

(declare-fun bm!553118 () Bool)

(assert (=> bm!553118 (= call!553120 call!553123)))

(declare-fun bm!553119 () Bool)

(assert (=> bm!553119 (= call!553123 ($colon$colon!2196 (exprs!6219 lt!2379355) (ite (or c!1175246 c!1175248) (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (regOne!33182 r!7292)))))))

(assert (= (and d!2015743 c!1175247) b!6430724))

(assert (= (and d!2015743 (not c!1175247)) b!6430718))

(assert (= (and b!6430718 c!1175245) b!6430717))

(assert (= (and b!6430718 (not c!1175245)) b!6430716))

(assert (= (and b!6430716 res!2643360) b!6430720))

(assert (= (and b!6430716 c!1175246) b!6430715))

(assert (= (and b!6430716 (not c!1175246)) b!6430723))

(assert (= (and b!6430723 c!1175248) b!6430719))

(assert (= (and b!6430723 (not c!1175248)) b!6430721))

(assert (= (and b!6430721 c!1175249) b!6430722))

(assert (= (and b!6430721 (not c!1175249)) b!6430725))

(assert (= (or b!6430719 b!6430722) bm!553118))

(assert (= (or b!6430719 b!6430722) bm!553115))

(assert (= (or b!6430715 bm!553118) bm!553119))

(assert (= (or b!6430715 bm!553115) bm!553116))

(assert (= (or b!6430717 b!6430715) bm!553114))

(assert (= (or b!6430717 bm!553116) bm!553117))

(assert (=> b!6430724 m!7223700))

(declare-fun m!7224368 () Bool)

(assert (=> b!6430720 m!7224368))

(declare-fun m!7224370 () Bool)

(assert (=> bm!553119 m!7224370))

(declare-fun m!7224372 () Bool)

(assert (=> bm!553114 m!7224372))

(declare-fun m!7224374 () Bool)

(assert (=> bm!553117 m!7224374))

(assert (=> b!6430103 d!2015743))

(declare-fun d!2015747 () Bool)

(declare-fun lt!2379476 () Regex!16335)

(assert (=> d!2015747 (validRegex!8071 lt!2379476)))

(assert (=> d!2015747 (= lt!2379476 (generalisedUnion!2179 (unfocusZipperList!1756 zl!343)))))

(assert (=> d!2015747 (= (unfocusZipper!2077 zl!343) lt!2379476)))

(declare-fun bs!1617358 () Bool)

(assert (= bs!1617358 d!2015747))

(declare-fun m!7224376 () Bool)

(assert (=> bs!1617358 m!7224376))

(assert (=> bs!1617358 m!7223750))

(assert (=> bs!1617358 m!7223750))

(assert (=> bs!1617358 m!7223752))

(assert (=> b!6430107 d!2015747))

(declare-fun d!2015749 () Bool)

(declare-fun e!3901196 () Bool)

(assert (=> d!2015749 e!3901196))

(declare-fun c!1175251 () Bool)

(assert (=> d!2015749 (= c!1175251 ((_ is EmptyExpr!16335) (regTwo!33182 r!7292)))))

(declare-fun lt!2379477 () Bool)

(declare-fun e!3901191 () Bool)

(assert (=> d!2015749 (= lt!2379477 e!3901191)))

(declare-fun c!1175252 () Bool)

(assert (=> d!2015749 (= c!1175252 (isEmpty!37350 (_2!36617 lt!2379368)))))

(assert (=> d!2015749 (validRegex!8071 (regTwo!33182 r!7292))))

(assert (=> d!2015749 (= (matchR!8518 (regTwo!33182 r!7292) (_2!36617 lt!2379368)) lt!2379477)))

(declare-fun b!6430726 () Bool)

(declare-fun e!3901195 () Bool)

(assert (=> b!6430726 (= e!3901195 (not (= (head!13161 (_2!36617 lt!2379368)) (c!1175066 (regTwo!33182 r!7292)))))))

(declare-fun b!6430727 () Bool)

(assert (=> b!6430727 (= e!3901191 (matchR!8518 (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 lt!2379368))) (tail!12246 (_2!36617 lt!2379368))))))

(declare-fun b!6430728 () Bool)

(declare-fun res!2643362 () Bool)

(declare-fun e!3901194 () Bool)

(assert (=> b!6430728 (=> res!2643362 e!3901194)))

(declare-fun e!3901192 () Bool)

(assert (=> b!6430728 (= res!2643362 e!3901192)))

(declare-fun res!2643366 () Bool)

(assert (=> b!6430728 (=> (not res!2643366) (not e!3901192))))

(assert (=> b!6430728 (= res!2643366 lt!2379477)))

(declare-fun b!6430729 () Bool)

(declare-fun res!2643364 () Bool)

(assert (=> b!6430729 (=> res!2643364 e!3901194)))

(assert (=> b!6430729 (= res!2643364 (not ((_ is ElementMatch!16335) (regTwo!33182 r!7292))))))

(declare-fun e!3901193 () Bool)

(assert (=> b!6430729 (= e!3901193 e!3901194)))

(declare-fun b!6430730 () Bool)

(declare-fun e!3901197 () Bool)

(assert (=> b!6430730 (= e!3901194 e!3901197)))

(declare-fun res!2643367 () Bool)

(assert (=> b!6430730 (=> (not res!2643367) (not e!3901197))))

(assert (=> b!6430730 (= res!2643367 (not lt!2379477))))

(declare-fun b!6430731 () Bool)

(declare-fun res!2643365 () Bool)

(assert (=> b!6430731 (=> res!2643365 e!3901195)))

(assert (=> b!6430731 (= res!2643365 (not (isEmpty!37350 (tail!12246 (_2!36617 lt!2379368)))))))

(declare-fun b!6430732 () Bool)

(assert (=> b!6430732 (= e!3901191 (nullable!6328 (regTwo!33182 r!7292)))))

(declare-fun b!6430733 () Bool)

(assert (=> b!6430733 (= e!3901196 e!3901193)))

(declare-fun c!1175250 () Bool)

(assert (=> b!6430733 (= c!1175250 ((_ is EmptyLang!16335) (regTwo!33182 r!7292)))))

(declare-fun b!6430734 () Bool)

(declare-fun call!553125 () Bool)

(assert (=> b!6430734 (= e!3901196 (= lt!2379477 call!553125))))

(declare-fun b!6430735 () Bool)

(assert (=> b!6430735 (= e!3901193 (not lt!2379477))))

(declare-fun b!6430736 () Bool)

(declare-fun res!2643368 () Bool)

(assert (=> b!6430736 (=> (not res!2643368) (not e!3901192))))

(assert (=> b!6430736 (= res!2643368 (isEmpty!37350 (tail!12246 (_2!36617 lt!2379368))))))

(declare-fun b!6430737 () Bool)

(assert (=> b!6430737 (= e!3901197 e!3901195)))

(declare-fun res!2643361 () Bool)

(assert (=> b!6430737 (=> res!2643361 e!3901195)))

(assert (=> b!6430737 (= res!2643361 call!553125)))

(declare-fun b!6430738 () Bool)

(assert (=> b!6430738 (= e!3901192 (= (head!13161 (_2!36617 lt!2379368)) (c!1175066 (regTwo!33182 r!7292))))))

(declare-fun bm!553120 () Bool)

(assert (=> bm!553120 (= call!553125 (isEmpty!37350 (_2!36617 lt!2379368)))))

(declare-fun b!6430739 () Bool)

(declare-fun res!2643363 () Bool)

(assert (=> b!6430739 (=> (not res!2643363) (not e!3901192))))

(assert (=> b!6430739 (= res!2643363 (not call!553125))))

(assert (= (and d!2015749 c!1175252) b!6430732))

(assert (= (and d!2015749 (not c!1175252)) b!6430727))

(assert (= (and d!2015749 c!1175251) b!6430734))

(assert (= (and d!2015749 (not c!1175251)) b!6430733))

(assert (= (and b!6430733 c!1175250) b!6430735))

(assert (= (and b!6430733 (not c!1175250)) b!6430729))

(assert (= (and b!6430729 (not res!2643364)) b!6430728))

(assert (= (and b!6430728 res!2643366) b!6430739))

(assert (= (and b!6430739 res!2643363) b!6430736))

(assert (= (and b!6430736 res!2643368) b!6430738))

(assert (= (and b!6430728 (not res!2643362)) b!6430730))

(assert (= (and b!6430730 res!2643367) b!6430737))

(assert (= (and b!6430737 (not res!2643361)) b!6430731))

(assert (= (and b!6430731 (not res!2643365)) b!6430726))

(assert (= (or b!6430734 b!6430739 b!6430737) bm!553120))

(declare-fun m!7224378 () Bool)

(assert (=> d!2015749 m!7224378))

(assert (=> d!2015749 m!7223960))

(declare-fun m!7224380 () Bool)

(assert (=> b!6430726 m!7224380))

(declare-fun m!7224382 () Bool)

(assert (=> b!6430736 m!7224382))

(assert (=> b!6430736 m!7224382))

(declare-fun m!7224384 () Bool)

(assert (=> b!6430736 m!7224384))

(assert (=> b!6430731 m!7224382))

(assert (=> b!6430731 m!7224382))

(assert (=> b!6430731 m!7224384))

(assert (=> b!6430738 m!7224380))

(assert (=> bm!553120 m!7224378))

(declare-fun m!7224386 () Bool)

(assert (=> b!6430732 m!7224386))

(assert (=> b!6430727 m!7224380))

(assert (=> b!6430727 m!7224380))

(declare-fun m!7224388 () Bool)

(assert (=> b!6430727 m!7224388))

(assert (=> b!6430727 m!7224382))

(assert (=> b!6430727 m!7224388))

(assert (=> b!6430727 m!7224382))

(declare-fun m!7224394 () Bool)

(assert (=> b!6430727 m!7224394))

(assert (=> b!6430087 d!2015749))

(declare-fun bs!1617361 () Bool)

(declare-fun b!6430810 () Bool)

(assert (= bs!1617361 (and b!6430810 b!6430094)))

(declare-fun lambda!355772 () Int)

(assert (=> bs!1617361 (not (= lambda!355772 lambda!355721))))

(declare-fun bs!1617362 () Bool)

(assert (= bs!1617362 (and b!6430810 b!6430115)))

(assert (=> bs!1617362 (not (= lambda!355772 lambda!355717))))

(assert (=> bs!1617361 (not (= lambda!355772 lambda!355719))))

(assert (=> bs!1617361 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 r!7292) (reg!16664 (regOne!33182 r!7292))) (= r!7292 lt!2379353)) (= lambda!355772 lambda!355720))))

(declare-fun bs!1617363 () Bool)

(assert (= bs!1617363 (and b!6430810 b!6430128)))

(assert (=> bs!1617363 (not (= lambda!355772 lambda!355715))))

(assert (=> bs!1617362 (not (= lambda!355772 lambda!355718))))

(assert (=> bs!1617363 (not (= lambda!355772 lambda!355714))))

(assert (=> b!6430810 true))

(assert (=> b!6430810 true))

(declare-fun bs!1617364 () Bool)

(declare-fun b!6430816 () Bool)

(assert (= bs!1617364 (and b!6430816 b!6430115)))

(declare-fun lambda!355773 () Int)

(assert (=> bs!1617364 (not (= lambda!355773 lambda!355717))))

(declare-fun bs!1617365 () Bool)

(assert (= bs!1617365 (and b!6430816 b!6430094)))

(assert (=> bs!1617365 (not (= lambda!355773 lambda!355719))))

(assert (=> bs!1617365 (not (= lambda!355773 lambda!355720))))

(declare-fun bs!1617366 () Bool)

(assert (= bs!1617366 (and b!6430816 b!6430128)))

(assert (=> bs!1617366 (= lambda!355773 lambda!355715)))

(declare-fun bs!1617367 () Bool)

(assert (= bs!1617367 (and b!6430816 b!6430810)))

(assert (=> bs!1617367 (not (= lambda!355773 lambda!355772))))

(assert (=> bs!1617365 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355773 lambda!355721))))

(assert (=> bs!1617364 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355773 lambda!355718))))

(assert (=> bs!1617366 (not (= lambda!355773 lambda!355714))))

(assert (=> b!6430816 true))

(assert (=> b!6430816 true))

(declare-fun b!6430807 () Bool)

(declare-fun e!3901235 () Bool)

(declare-fun e!3901241 () Bool)

(assert (=> b!6430807 (= e!3901235 e!3901241)))

(declare-fun res!2643406 () Bool)

(assert (=> b!6430807 (= res!2643406 (matchRSpec!3436 (regOne!33183 r!7292) s!2326))))

(assert (=> b!6430807 (=> res!2643406 e!3901241)))

(declare-fun bm!553127 () Bool)

(declare-fun call!553133 () Bool)

(assert (=> bm!553127 (= call!553133 (isEmpty!37350 s!2326))))

(declare-fun b!6430808 () Bool)

(declare-fun res!2643404 () Bool)

(declare-fun e!3901239 () Bool)

(assert (=> b!6430808 (=> res!2643404 e!3901239)))

(assert (=> b!6430808 (= res!2643404 call!553133)))

(declare-fun e!3901238 () Bool)

(assert (=> b!6430808 (= e!3901238 e!3901239)))

(declare-fun b!6430809 () Bool)

(declare-fun e!3901237 () Bool)

(assert (=> b!6430809 (= e!3901237 (= s!2326 (Cons!65180 (c!1175066 r!7292) Nil!65180)))))

(declare-fun call!553132 () Bool)

(assert (=> b!6430810 (= e!3901239 call!553132)))

(declare-fun b!6430811 () Bool)

(declare-fun e!3901240 () Bool)

(assert (=> b!6430811 (= e!3901240 call!553133)))

(declare-fun b!6430812 () Bool)

(assert (=> b!6430812 (= e!3901235 e!3901238)))

(declare-fun c!1175270 () Bool)

(assert (=> b!6430812 (= c!1175270 ((_ is Star!16335) r!7292))))

(declare-fun d!2015751 () Bool)

(declare-fun c!1175272 () Bool)

(assert (=> d!2015751 (= c!1175272 ((_ is EmptyExpr!16335) r!7292))))

(assert (=> d!2015751 (= (matchRSpec!3436 r!7292 s!2326) e!3901240)))

(declare-fun b!6430813 () Bool)

(declare-fun c!1175269 () Bool)

(assert (=> b!6430813 (= c!1175269 ((_ is Union!16335) r!7292))))

(assert (=> b!6430813 (= e!3901237 e!3901235)))

(declare-fun b!6430814 () Bool)

(assert (=> b!6430814 (= e!3901241 (matchRSpec!3436 (regTwo!33183 r!7292) s!2326))))

(declare-fun bm!553128 () Bool)

(assert (=> bm!553128 (= call!553132 (Exists!3405 (ite c!1175270 lambda!355772 lambda!355773)))))

(declare-fun b!6430815 () Bool)

(declare-fun c!1175271 () Bool)

(assert (=> b!6430815 (= c!1175271 ((_ is ElementMatch!16335) r!7292))))

(declare-fun e!3901236 () Bool)

(assert (=> b!6430815 (= e!3901236 e!3901237)))

(assert (=> b!6430816 (= e!3901238 call!553132)))

(declare-fun b!6430817 () Bool)

(assert (=> b!6430817 (= e!3901240 e!3901236)))

(declare-fun res!2643405 () Bool)

(assert (=> b!6430817 (= res!2643405 (not ((_ is EmptyLang!16335) r!7292)))))

(assert (=> b!6430817 (=> (not res!2643405) (not e!3901236))))

(assert (= (and d!2015751 c!1175272) b!6430811))

(assert (= (and d!2015751 (not c!1175272)) b!6430817))

(assert (= (and b!6430817 res!2643405) b!6430815))

(assert (= (and b!6430815 c!1175271) b!6430809))

(assert (= (and b!6430815 (not c!1175271)) b!6430813))

(assert (= (and b!6430813 c!1175269) b!6430807))

(assert (= (and b!6430813 (not c!1175269)) b!6430812))

(assert (= (and b!6430807 (not res!2643406)) b!6430814))

(assert (= (and b!6430812 c!1175270) b!6430808))

(assert (= (and b!6430812 (not c!1175270)) b!6430816))

(assert (= (and b!6430808 (not res!2643404)) b!6430810))

(assert (= (or b!6430810 b!6430816) bm!553128))

(assert (= (or b!6430811 b!6430808) bm!553127))

(declare-fun m!7224440 () Bool)

(assert (=> b!6430807 m!7224440))

(assert (=> bm!553127 m!7224146))

(declare-fun m!7224442 () Bool)

(assert (=> b!6430814 m!7224442))

(declare-fun m!7224444 () Bool)

(assert (=> bm!553128 m!7224444))

(assert (=> b!6430105 d!2015751))

(declare-fun d!2015769 () Bool)

(declare-fun e!3901251 () Bool)

(assert (=> d!2015769 e!3901251))

(declare-fun c!1175274 () Bool)

(assert (=> d!2015769 (= c!1175274 ((_ is EmptyExpr!16335) r!7292))))

(declare-fun lt!2379488 () Bool)

(declare-fun e!3901246 () Bool)

(assert (=> d!2015769 (= lt!2379488 e!3901246)))

(declare-fun c!1175275 () Bool)

(assert (=> d!2015769 (= c!1175275 (isEmpty!37350 s!2326))))

(assert (=> d!2015769 (validRegex!8071 r!7292)))

(assert (=> d!2015769 (= (matchR!8518 r!7292 s!2326) lt!2379488)))

(declare-fun b!6430828 () Bool)

(declare-fun e!3901250 () Bool)

(assert (=> b!6430828 (= e!3901250 (not (= (head!13161 s!2326) (c!1175066 r!7292))))))

(declare-fun b!6430829 () Bool)

(assert (=> b!6430829 (= e!3901246 (matchR!8518 (derivativeStep!5039 r!7292 (head!13161 s!2326)) (tail!12246 s!2326)))))

(declare-fun b!6430830 () Bool)

(declare-fun res!2643418 () Bool)

(declare-fun e!3901249 () Bool)

(assert (=> b!6430830 (=> res!2643418 e!3901249)))

(declare-fun e!3901247 () Bool)

(assert (=> b!6430830 (= res!2643418 e!3901247)))

(declare-fun res!2643422 () Bool)

(assert (=> b!6430830 (=> (not res!2643422) (not e!3901247))))

(assert (=> b!6430830 (= res!2643422 lt!2379488)))

(declare-fun b!6430831 () Bool)

(declare-fun res!2643420 () Bool)

(assert (=> b!6430831 (=> res!2643420 e!3901249)))

(assert (=> b!6430831 (= res!2643420 (not ((_ is ElementMatch!16335) r!7292)))))

(declare-fun e!3901248 () Bool)

(assert (=> b!6430831 (= e!3901248 e!3901249)))

(declare-fun b!6430832 () Bool)

(declare-fun e!3901252 () Bool)

(assert (=> b!6430832 (= e!3901249 e!3901252)))

(declare-fun res!2643423 () Bool)

(assert (=> b!6430832 (=> (not res!2643423) (not e!3901252))))

(assert (=> b!6430832 (= res!2643423 (not lt!2379488))))

(declare-fun b!6430833 () Bool)

(declare-fun res!2643421 () Bool)

(assert (=> b!6430833 (=> res!2643421 e!3901250)))

(assert (=> b!6430833 (= res!2643421 (not (isEmpty!37350 (tail!12246 s!2326))))))

(declare-fun b!6430834 () Bool)

(assert (=> b!6430834 (= e!3901246 (nullable!6328 r!7292))))

(declare-fun b!6430835 () Bool)

(assert (=> b!6430835 (= e!3901251 e!3901248)))

(declare-fun c!1175273 () Bool)

(assert (=> b!6430835 (= c!1175273 ((_ is EmptyLang!16335) r!7292))))

(declare-fun b!6430836 () Bool)

(declare-fun call!553134 () Bool)

(assert (=> b!6430836 (= e!3901251 (= lt!2379488 call!553134))))

(declare-fun b!6430837 () Bool)

(assert (=> b!6430837 (= e!3901248 (not lt!2379488))))

(declare-fun b!6430838 () Bool)

(declare-fun res!2643424 () Bool)

(assert (=> b!6430838 (=> (not res!2643424) (not e!3901247))))

(assert (=> b!6430838 (= res!2643424 (isEmpty!37350 (tail!12246 s!2326)))))

(declare-fun b!6430839 () Bool)

(assert (=> b!6430839 (= e!3901252 e!3901250)))

(declare-fun res!2643417 () Bool)

(assert (=> b!6430839 (=> res!2643417 e!3901250)))

(assert (=> b!6430839 (= res!2643417 call!553134)))

(declare-fun b!6430840 () Bool)

(assert (=> b!6430840 (= e!3901247 (= (head!13161 s!2326) (c!1175066 r!7292)))))

(declare-fun bm!553129 () Bool)

(assert (=> bm!553129 (= call!553134 (isEmpty!37350 s!2326))))

(declare-fun b!6430841 () Bool)

(declare-fun res!2643419 () Bool)

(assert (=> b!6430841 (=> (not res!2643419) (not e!3901247))))

(assert (=> b!6430841 (= res!2643419 (not call!553134))))

(assert (= (and d!2015769 c!1175275) b!6430834))

(assert (= (and d!2015769 (not c!1175275)) b!6430829))

(assert (= (and d!2015769 c!1175274) b!6430836))

(assert (= (and d!2015769 (not c!1175274)) b!6430835))

(assert (= (and b!6430835 c!1175273) b!6430837))

(assert (= (and b!6430835 (not c!1175273)) b!6430831))

(assert (= (and b!6430831 (not res!2643420)) b!6430830))

(assert (= (and b!6430830 res!2643422) b!6430841))

(assert (= (and b!6430841 res!2643419) b!6430838))

(assert (= (and b!6430838 res!2643424) b!6430840))

(assert (= (and b!6430830 (not res!2643418)) b!6430832))

(assert (= (and b!6430832 res!2643423) b!6430839))

(assert (= (and b!6430839 (not res!2643417)) b!6430833))

(assert (= (and b!6430833 (not res!2643421)) b!6430828))

(assert (= (or b!6430836 b!6430841 b!6430839) bm!553129))

(assert (=> d!2015769 m!7224146))

(assert (=> d!2015769 m!7223696))

(assert (=> b!6430828 m!7224150))

(assert (=> b!6430838 m!7224154))

(assert (=> b!6430838 m!7224154))

(declare-fun m!7224446 () Bool)

(assert (=> b!6430838 m!7224446))

(assert (=> b!6430833 m!7224154))

(assert (=> b!6430833 m!7224154))

(assert (=> b!6430833 m!7224446))

(assert (=> b!6430840 m!7224150))

(assert (=> bm!553129 m!7224146))

(declare-fun m!7224448 () Bool)

(assert (=> b!6430834 m!7224448))

(assert (=> b!6430829 m!7224150))

(assert (=> b!6430829 m!7224150))

(declare-fun m!7224450 () Bool)

(assert (=> b!6430829 m!7224450))

(assert (=> b!6430829 m!7224154))

(assert (=> b!6430829 m!7224450))

(assert (=> b!6430829 m!7224154))

(declare-fun m!7224452 () Bool)

(assert (=> b!6430829 m!7224452))

(assert (=> b!6430105 d!2015769))

(declare-fun d!2015771 () Bool)

(assert (=> d!2015771 (= (matchR!8518 r!7292 s!2326) (matchRSpec!3436 r!7292 s!2326))))

(declare-fun lt!2379492 () Unit!158671)

(declare-fun choose!47829 (Regex!16335 List!65304) Unit!158671)

(assert (=> d!2015771 (= lt!2379492 (choose!47829 r!7292 s!2326))))

(assert (=> d!2015771 (validRegex!8071 r!7292)))

(assert (=> d!2015771 (= (mainMatchTheorem!3436 r!7292 s!2326) lt!2379492)))

(declare-fun bs!1617377 () Bool)

(assert (= bs!1617377 d!2015771))

(assert (=> bs!1617377 m!7223808))

(assert (=> bs!1617377 m!7223806))

(declare-fun m!7224454 () Bool)

(assert (=> bs!1617377 m!7224454))

(assert (=> bs!1617377 m!7223696))

(assert (=> b!6430105 d!2015771))

(declare-fun d!2015773 () Bool)

(declare-fun e!3901258 () Bool)

(assert (=> d!2015773 e!3901258))

(declare-fun c!1175277 () Bool)

(assert (=> d!2015773 (= c!1175277 ((_ is EmptyExpr!16335) lt!2379346))))

(declare-fun lt!2379493 () Bool)

(declare-fun e!3901253 () Bool)

(assert (=> d!2015773 (= lt!2379493 e!3901253)))

(declare-fun c!1175278 () Bool)

(assert (=> d!2015773 (= c!1175278 (isEmpty!37350 s!2326))))

(assert (=> d!2015773 (validRegex!8071 lt!2379346)))

(assert (=> d!2015773 (= (matchR!8518 lt!2379346 s!2326) lt!2379493)))

(declare-fun b!6430842 () Bool)

(declare-fun e!3901257 () Bool)

(assert (=> b!6430842 (= e!3901257 (not (= (head!13161 s!2326) (c!1175066 lt!2379346))))))

(declare-fun b!6430843 () Bool)

(assert (=> b!6430843 (= e!3901253 (matchR!8518 (derivativeStep!5039 lt!2379346 (head!13161 s!2326)) (tail!12246 s!2326)))))

(declare-fun b!6430844 () Bool)

(declare-fun res!2643426 () Bool)

(declare-fun e!3901256 () Bool)

(assert (=> b!6430844 (=> res!2643426 e!3901256)))

(declare-fun e!3901254 () Bool)

(assert (=> b!6430844 (= res!2643426 e!3901254)))

(declare-fun res!2643430 () Bool)

(assert (=> b!6430844 (=> (not res!2643430) (not e!3901254))))

(assert (=> b!6430844 (= res!2643430 lt!2379493)))

(declare-fun b!6430845 () Bool)

(declare-fun res!2643428 () Bool)

(assert (=> b!6430845 (=> res!2643428 e!3901256)))

(assert (=> b!6430845 (= res!2643428 (not ((_ is ElementMatch!16335) lt!2379346)))))

(declare-fun e!3901255 () Bool)

(assert (=> b!6430845 (= e!3901255 e!3901256)))

(declare-fun b!6430846 () Bool)

(declare-fun e!3901259 () Bool)

(assert (=> b!6430846 (= e!3901256 e!3901259)))

(declare-fun res!2643431 () Bool)

(assert (=> b!6430846 (=> (not res!2643431) (not e!3901259))))

(assert (=> b!6430846 (= res!2643431 (not lt!2379493))))

(declare-fun b!6430847 () Bool)

(declare-fun res!2643429 () Bool)

(assert (=> b!6430847 (=> res!2643429 e!3901257)))

(assert (=> b!6430847 (= res!2643429 (not (isEmpty!37350 (tail!12246 s!2326))))))

(declare-fun b!6430848 () Bool)

(assert (=> b!6430848 (= e!3901253 (nullable!6328 lt!2379346))))

(declare-fun b!6430849 () Bool)

(assert (=> b!6430849 (= e!3901258 e!3901255)))

(declare-fun c!1175276 () Bool)

(assert (=> b!6430849 (= c!1175276 ((_ is EmptyLang!16335) lt!2379346))))

(declare-fun b!6430850 () Bool)

(declare-fun call!553135 () Bool)

(assert (=> b!6430850 (= e!3901258 (= lt!2379493 call!553135))))

(declare-fun b!6430851 () Bool)

(assert (=> b!6430851 (= e!3901255 (not lt!2379493))))

(declare-fun b!6430852 () Bool)

(declare-fun res!2643432 () Bool)

(assert (=> b!6430852 (=> (not res!2643432) (not e!3901254))))

(assert (=> b!6430852 (= res!2643432 (isEmpty!37350 (tail!12246 s!2326)))))

(declare-fun b!6430853 () Bool)

(assert (=> b!6430853 (= e!3901259 e!3901257)))

(declare-fun res!2643425 () Bool)

(assert (=> b!6430853 (=> res!2643425 e!3901257)))

(assert (=> b!6430853 (= res!2643425 call!553135)))

(declare-fun b!6430854 () Bool)

(assert (=> b!6430854 (= e!3901254 (= (head!13161 s!2326) (c!1175066 lt!2379346)))))

(declare-fun bm!553130 () Bool)

(assert (=> bm!553130 (= call!553135 (isEmpty!37350 s!2326))))

(declare-fun b!6430855 () Bool)

(declare-fun res!2643427 () Bool)

(assert (=> b!6430855 (=> (not res!2643427) (not e!3901254))))

(assert (=> b!6430855 (= res!2643427 (not call!553135))))

(assert (= (and d!2015773 c!1175278) b!6430848))

(assert (= (and d!2015773 (not c!1175278)) b!6430843))

(assert (= (and d!2015773 c!1175277) b!6430850))

(assert (= (and d!2015773 (not c!1175277)) b!6430849))

(assert (= (and b!6430849 c!1175276) b!6430851))

(assert (= (and b!6430849 (not c!1175276)) b!6430845))

(assert (= (and b!6430845 (not res!2643428)) b!6430844))

(assert (= (and b!6430844 res!2643430) b!6430855))

(assert (= (and b!6430855 res!2643427) b!6430852))

(assert (= (and b!6430852 res!2643432) b!6430854))

(assert (= (and b!6430844 (not res!2643426)) b!6430846))

(assert (= (and b!6430846 res!2643431) b!6430853))

(assert (= (and b!6430853 (not res!2643425)) b!6430847))

(assert (= (and b!6430847 (not res!2643429)) b!6430842))

(assert (= (or b!6430850 b!6430855 b!6430853) bm!553130))

(assert (=> d!2015773 m!7224146))

(declare-fun m!7224456 () Bool)

(assert (=> d!2015773 m!7224456))

(assert (=> b!6430842 m!7224150))

(assert (=> b!6430852 m!7224154))

(assert (=> b!6430852 m!7224154))

(assert (=> b!6430852 m!7224446))

(assert (=> b!6430847 m!7224154))

(assert (=> b!6430847 m!7224154))

(assert (=> b!6430847 m!7224446))

(assert (=> b!6430854 m!7224150))

(assert (=> bm!553130 m!7224146))

(declare-fun m!7224464 () Bool)

(assert (=> b!6430848 m!7224464))

(assert (=> b!6430843 m!7224150))

(assert (=> b!6430843 m!7224150))

(declare-fun m!7224466 () Bool)

(assert (=> b!6430843 m!7224466))

(assert (=> b!6430843 m!7224154))

(assert (=> b!6430843 m!7224466))

(assert (=> b!6430843 m!7224154))

(declare-fun m!7224468 () Bool)

(assert (=> b!6430843 m!7224468))

(assert (=> b!6430106 d!2015773))

(declare-fun bs!1617382 () Bool)

(declare-fun b!6430859 () Bool)

(assert (= bs!1617382 (and b!6430859 b!6430115)))

(declare-fun lambda!355779 () Int)

(assert (=> bs!1617382 (not (= lambda!355779 lambda!355717))))

(declare-fun bs!1617384 () Bool)

(assert (= bs!1617384 (and b!6430859 b!6430094)))

(assert (=> bs!1617384 (not (= lambda!355779 lambda!355719))))

(assert (=> bs!1617384 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 lt!2379346) (reg!16664 (regOne!33182 r!7292))) (= lt!2379346 lt!2379353)) (= lambda!355779 lambda!355720))))

(declare-fun bs!1617386 () Bool)

(assert (= bs!1617386 (and b!6430859 b!6430128)))

(assert (=> bs!1617386 (not (= lambda!355779 lambda!355715))))

(declare-fun bs!1617388 () Bool)

(assert (= bs!1617388 (and b!6430859 b!6430816)))

(assert (=> bs!1617388 (not (= lambda!355779 lambda!355773))))

(declare-fun bs!1617389 () Bool)

(assert (= bs!1617389 (and b!6430859 b!6430810)))

(assert (=> bs!1617389 (= (and (= (reg!16664 lt!2379346) (reg!16664 r!7292)) (= lt!2379346 r!7292)) (= lambda!355779 lambda!355772))))

(assert (=> bs!1617384 (not (= lambda!355779 lambda!355721))))

(assert (=> bs!1617382 (not (= lambda!355779 lambda!355718))))

(assert (=> bs!1617386 (not (= lambda!355779 lambda!355714))))

(assert (=> b!6430859 true))

(assert (=> b!6430859 true))

(declare-fun bs!1617395 () Bool)

(declare-fun b!6430865 () Bool)

(assert (= bs!1617395 (and b!6430865 b!6430115)))

(declare-fun lambda!355780 () Int)

(assert (=> bs!1617395 (not (= lambda!355780 lambda!355717))))

(declare-fun bs!1617396 () Bool)

(assert (= bs!1617396 (and b!6430865 b!6430094)))

(assert (=> bs!1617396 (not (= lambda!355780 lambda!355719))))

(assert (=> bs!1617396 (not (= lambda!355780 lambda!355720))))

(declare-fun bs!1617397 () Bool)

(assert (= bs!1617397 (and b!6430865 b!6430128)))

(assert (=> bs!1617397 (= (and (= (regOne!33182 lt!2379346) (regOne!33182 r!7292)) (= (regTwo!33182 lt!2379346) (regTwo!33182 r!7292))) (= lambda!355780 lambda!355715))))

(declare-fun bs!1617398 () Bool)

(assert (= bs!1617398 (and b!6430865 b!6430816)))

(assert (=> bs!1617398 (= (and (= (regOne!33182 lt!2379346) (regOne!33182 r!7292)) (= (regTwo!33182 lt!2379346) (regTwo!33182 r!7292))) (= lambda!355780 lambda!355773))))

(declare-fun bs!1617399 () Bool)

(assert (= bs!1617399 (and b!6430865 b!6430859)))

(assert (=> bs!1617399 (not (= lambda!355780 lambda!355779))))

(declare-fun bs!1617400 () Bool)

(assert (= bs!1617400 (and b!6430865 b!6430810)))

(assert (=> bs!1617400 (not (= lambda!355780 lambda!355772))))

(assert (=> bs!1617396 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 lt!2379346) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 lt!2379346) lt!2379353)) (= lambda!355780 lambda!355721))))

(assert (=> bs!1617395 (= (and (= (regOne!33182 lt!2379346) lt!2379353) (= (regTwo!33182 lt!2379346) (regTwo!33182 r!7292))) (= lambda!355780 lambda!355718))))

(assert (=> bs!1617397 (not (= lambda!355780 lambda!355714))))

(assert (=> b!6430865 true))

(assert (=> b!6430865 true))

(declare-fun b!6430856 () Bool)

(declare-fun e!3901260 () Bool)

(declare-fun e!3901266 () Bool)

(assert (=> b!6430856 (= e!3901260 e!3901266)))

(declare-fun res!2643435 () Bool)

(assert (=> b!6430856 (= res!2643435 (matchRSpec!3436 (regOne!33183 lt!2379346) s!2326))))

(assert (=> b!6430856 (=> res!2643435 e!3901266)))

(declare-fun bm!553131 () Bool)

(declare-fun call!553137 () Bool)

(assert (=> bm!553131 (= call!553137 (isEmpty!37350 s!2326))))

(declare-fun b!6430857 () Bool)

(declare-fun res!2643433 () Bool)

(declare-fun e!3901264 () Bool)

(assert (=> b!6430857 (=> res!2643433 e!3901264)))

(assert (=> b!6430857 (= res!2643433 call!553137)))

(declare-fun e!3901263 () Bool)

(assert (=> b!6430857 (= e!3901263 e!3901264)))

(declare-fun b!6430858 () Bool)

(declare-fun e!3901262 () Bool)

(assert (=> b!6430858 (= e!3901262 (= s!2326 (Cons!65180 (c!1175066 lt!2379346) Nil!65180)))))

(declare-fun call!553136 () Bool)

(assert (=> b!6430859 (= e!3901264 call!553136)))

(declare-fun b!6430860 () Bool)

(declare-fun e!3901265 () Bool)

(assert (=> b!6430860 (= e!3901265 call!553137)))

(declare-fun b!6430861 () Bool)

(assert (=> b!6430861 (= e!3901260 e!3901263)))

(declare-fun c!1175280 () Bool)

(assert (=> b!6430861 (= c!1175280 ((_ is Star!16335) lt!2379346))))

(declare-fun d!2015777 () Bool)

(declare-fun c!1175282 () Bool)

(assert (=> d!2015777 (= c!1175282 ((_ is EmptyExpr!16335) lt!2379346))))

(assert (=> d!2015777 (= (matchRSpec!3436 lt!2379346 s!2326) e!3901265)))

(declare-fun b!6430862 () Bool)

(declare-fun c!1175279 () Bool)

(assert (=> b!6430862 (= c!1175279 ((_ is Union!16335) lt!2379346))))

(assert (=> b!6430862 (= e!3901262 e!3901260)))

(declare-fun b!6430863 () Bool)

(assert (=> b!6430863 (= e!3901266 (matchRSpec!3436 (regTwo!33183 lt!2379346) s!2326))))

(declare-fun bm!553132 () Bool)

(assert (=> bm!553132 (= call!553136 (Exists!3405 (ite c!1175280 lambda!355779 lambda!355780)))))

(declare-fun b!6430864 () Bool)

(declare-fun c!1175281 () Bool)

(assert (=> b!6430864 (= c!1175281 ((_ is ElementMatch!16335) lt!2379346))))

(declare-fun e!3901261 () Bool)

(assert (=> b!6430864 (= e!3901261 e!3901262)))

(assert (=> b!6430865 (= e!3901263 call!553136)))

(declare-fun b!6430866 () Bool)

(assert (=> b!6430866 (= e!3901265 e!3901261)))

(declare-fun res!2643434 () Bool)

(assert (=> b!6430866 (= res!2643434 (not ((_ is EmptyLang!16335) lt!2379346)))))

(assert (=> b!6430866 (=> (not res!2643434) (not e!3901261))))

(assert (= (and d!2015777 c!1175282) b!6430860))

(assert (= (and d!2015777 (not c!1175282)) b!6430866))

(assert (= (and b!6430866 res!2643434) b!6430864))

(assert (= (and b!6430864 c!1175281) b!6430858))

(assert (= (and b!6430864 (not c!1175281)) b!6430862))

(assert (= (and b!6430862 c!1175279) b!6430856))

(assert (= (and b!6430862 (not c!1175279)) b!6430861))

(assert (= (and b!6430856 (not res!2643435)) b!6430863))

(assert (= (and b!6430861 c!1175280) b!6430857))

(assert (= (and b!6430861 (not c!1175280)) b!6430865))

(assert (= (and b!6430857 (not res!2643433)) b!6430859))

(assert (= (or b!6430859 b!6430865) bm!553132))

(assert (= (or b!6430860 b!6430857) bm!553131))

(declare-fun m!7224472 () Bool)

(assert (=> b!6430856 m!7224472))

(assert (=> bm!553131 m!7224146))

(declare-fun m!7224474 () Bool)

(assert (=> b!6430863 m!7224474))

(declare-fun m!7224476 () Bool)

(assert (=> bm!553132 m!7224476))

(assert (=> b!6430106 d!2015777))

(declare-fun d!2015781 () Bool)

(assert (=> d!2015781 (= (matchR!8518 lt!2379346 s!2326) (matchRSpec!3436 lt!2379346 s!2326))))

(declare-fun lt!2379495 () Unit!158671)

(assert (=> d!2015781 (= lt!2379495 (choose!47829 lt!2379346 s!2326))))

(assert (=> d!2015781 (validRegex!8071 lt!2379346)))

(assert (=> d!2015781 (= (mainMatchTheorem!3436 lt!2379346 s!2326) lt!2379495)))

(declare-fun bs!1617402 () Bool)

(assert (= bs!1617402 d!2015781))

(assert (=> bs!1617402 m!7223770))

(assert (=> bs!1617402 m!7223772))

(declare-fun m!7224478 () Bool)

(assert (=> bs!1617402 m!7224478))

(assert (=> bs!1617402 m!7224456))

(assert (=> b!6430106 d!2015781))

(declare-fun d!2015783 () Bool)

(declare-fun e!3901272 () Bool)

(assert (=> d!2015783 e!3901272))

(declare-fun c!1175284 () Bool)

(assert (=> d!2015783 (= c!1175284 ((_ is EmptyExpr!16335) lt!2379353))))

(declare-fun lt!2379496 () Bool)

(declare-fun e!3901267 () Bool)

(assert (=> d!2015783 (= lt!2379496 e!3901267)))

(declare-fun c!1175285 () Bool)

(assert (=> d!2015783 (= c!1175285 (isEmpty!37350 (_2!36617 lt!2379342)))))

(assert (=> d!2015783 (validRegex!8071 lt!2379353)))

(assert (=> d!2015783 (= (matchR!8518 lt!2379353 (_2!36617 lt!2379342)) lt!2379496)))

(declare-fun b!6430867 () Bool)

(declare-fun e!3901271 () Bool)

(assert (=> b!6430867 (= e!3901271 (not (= (head!13161 (_2!36617 lt!2379342)) (c!1175066 lt!2379353))))))

(declare-fun b!6430868 () Bool)

(assert (=> b!6430868 (= e!3901267 (matchR!8518 (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 lt!2379342))) (tail!12246 (_2!36617 lt!2379342))))))

(declare-fun b!6430869 () Bool)

(declare-fun res!2643437 () Bool)

(declare-fun e!3901270 () Bool)

(assert (=> b!6430869 (=> res!2643437 e!3901270)))

(declare-fun e!3901268 () Bool)

(assert (=> b!6430869 (= res!2643437 e!3901268)))

(declare-fun res!2643441 () Bool)

(assert (=> b!6430869 (=> (not res!2643441) (not e!3901268))))

(assert (=> b!6430869 (= res!2643441 lt!2379496)))

(declare-fun b!6430870 () Bool)

(declare-fun res!2643439 () Bool)

(assert (=> b!6430870 (=> res!2643439 e!3901270)))

(assert (=> b!6430870 (= res!2643439 (not ((_ is ElementMatch!16335) lt!2379353)))))

(declare-fun e!3901269 () Bool)

(assert (=> b!6430870 (= e!3901269 e!3901270)))

(declare-fun b!6430871 () Bool)

(declare-fun e!3901273 () Bool)

(assert (=> b!6430871 (= e!3901270 e!3901273)))

(declare-fun res!2643442 () Bool)

(assert (=> b!6430871 (=> (not res!2643442) (not e!3901273))))

(assert (=> b!6430871 (= res!2643442 (not lt!2379496))))

(declare-fun b!6430872 () Bool)

(declare-fun res!2643440 () Bool)

(assert (=> b!6430872 (=> res!2643440 e!3901271)))

(assert (=> b!6430872 (= res!2643440 (not (isEmpty!37350 (tail!12246 (_2!36617 lt!2379342)))))))

(declare-fun b!6430873 () Bool)

(assert (=> b!6430873 (= e!3901267 (nullable!6328 lt!2379353))))

(declare-fun b!6430874 () Bool)

(assert (=> b!6430874 (= e!3901272 e!3901269)))

(declare-fun c!1175283 () Bool)

(assert (=> b!6430874 (= c!1175283 ((_ is EmptyLang!16335) lt!2379353))))

(declare-fun b!6430875 () Bool)

(declare-fun call!553138 () Bool)

(assert (=> b!6430875 (= e!3901272 (= lt!2379496 call!553138))))

(declare-fun b!6430876 () Bool)

(assert (=> b!6430876 (= e!3901269 (not lt!2379496))))

(declare-fun b!6430877 () Bool)

(declare-fun res!2643443 () Bool)

(assert (=> b!6430877 (=> (not res!2643443) (not e!3901268))))

(assert (=> b!6430877 (= res!2643443 (isEmpty!37350 (tail!12246 (_2!36617 lt!2379342))))))

(declare-fun b!6430878 () Bool)

(assert (=> b!6430878 (= e!3901273 e!3901271)))

(declare-fun res!2643436 () Bool)

(assert (=> b!6430878 (=> res!2643436 e!3901271)))

(assert (=> b!6430878 (= res!2643436 call!553138)))

(declare-fun b!6430879 () Bool)

(assert (=> b!6430879 (= e!3901268 (= (head!13161 (_2!36617 lt!2379342)) (c!1175066 lt!2379353)))))

(declare-fun bm!553133 () Bool)

(assert (=> bm!553133 (= call!553138 (isEmpty!37350 (_2!36617 lt!2379342)))))

(declare-fun b!6430880 () Bool)

(declare-fun res!2643438 () Bool)

(assert (=> b!6430880 (=> (not res!2643438) (not e!3901268))))

(assert (=> b!6430880 (= res!2643438 (not call!553138))))

(assert (= (and d!2015783 c!1175285) b!6430873))

(assert (= (and d!2015783 (not c!1175285)) b!6430868))

(assert (= (and d!2015783 c!1175284) b!6430875))

(assert (= (and d!2015783 (not c!1175284)) b!6430874))

(assert (= (and b!6430874 c!1175283) b!6430876))

(assert (= (and b!6430874 (not c!1175283)) b!6430870))

(assert (= (and b!6430870 (not res!2643439)) b!6430869))

(assert (= (and b!6430869 res!2643441) b!6430880))

(assert (= (and b!6430880 res!2643438) b!6430877))

(assert (= (and b!6430877 res!2643443) b!6430879))

(assert (= (and b!6430869 (not res!2643437)) b!6430871))

(assert (= (and b!6430871 res!2643442) b!6430878))

(assert (= (and b!6430878 (not res!2643436)) b!6430872))

(assert (= (and b!6430872 (not res!2643440)) b!6430867))

(assert (= (or b!6430875 b!6430880 b!6430878) bm!553133))

(declare-fun m!7224486 () Bool)

(assert (=> d!2015783 m!7224486))

(assert (=> d!2015783 m!7223958))

(declare-fun m!7224490 () Bool)

(assert (=> b!6430867 m!7224490))

(declare-fun m!7224492 () Bool)

(assert (=> b!6430877 m!7224492))

(assert (=> b!6430877 m!7224492))

(declare-fun m!7224494 () Bool)

(assert (=> b!6430877 m!7224494))

(assert (=> b!6430872 m!7224492))

(assert (=> b!6430872 m!7224492))

(assert (=> b!6430872 m!7224494))

(assert (=> b!6430879 m!7224490))

(assert (=> bm!553133 m!7224486))

(assert (=> b!6430873 m!7224052))

(assert (=> b!6430868 m!7224490))

(assert (=> b!6430868 m!7224490))

(declare-fun m!7224496 () Bool)

(assert (=> b!6430868 m!7224496))

(assert (=> b!6430868 m!7224492))

(assert (=> b!6430868 m!7224496))

(assert (=> b!6430868 m!7224492))

(declare-fun m!7224498 () Bool)

(assert (=> b!6430868 m!7224498))

(assert (=> b!6430109 d!2015783))

(declare-fun d!2015789 () Bool)

(declare-fun lt!2379498 () Regex!16335)

(assert (=> d!2015789 (validRegex!8071 lt!2379498)))

(assert (=> d!2015789 (= lt!2379498 (generalisedUnion!2179 (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182))))))

(assert (=> d!2015789 (= (unfocusZipper!2077 (Cons!65182 lt!2379355 Nil!65182)) lt!2379498)))

(declare-fun bs!1617404 () Bool)

(assert (= bs!1617404 d!2015789))

(declare-fun m!7224500 () Bool)

(assert (=> bs!1617404 m!7224500))

(declare-fun m!7224502 () Bool)

(assert (=> bs!1617404 m!7224502))

(assert (=> bs!1617404 m!7224502))

(declare-fun m!7224504 () Bool)

(assert (=> bs!1617404 m!7224504))

(assert (=> b!6430110 d!2015789))

(declare-fun d!2015791 () Bool)

(declare-fun choose!47830 (Int) Bool)

(assert (=> d!2015791 (= (Exists!3405 lambda!355714) (choose!47830 lambda!355714))))

(declare-fun bs!1617407 () Bool)

(assert (= bs!1617407 d!2015791))

(declare-fun m!7224506 () Bool)

(assert (=> bs!1617407 m!7224506))

(assert (=> b!6430128 d!2015791))

(declare-fun bs!1617431 () Bool)

(declare-fun d!2015793 () Bool)

(assert (= bs!1617431 (and d!2015793 b!6430115)))

(declare-fun lambda!355786 () Int)

(assert (=> bs!1617431 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355786 lambda!355717))))

(declare-fun bs!1617432 () Bool)

(assert (= bs!1617432 (and d!2015793 b!6430094)))

(assert (=> bs!1617432 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355786 lambda!355719))))

(assert (=> bs!1617432 (not (= lambda!355786 lambda!355720))))

(declare-fun bs!1617433 () Bool)

(assert (= bs!1617433 (and d!2015793 b!6430128)))

(assert (=> bs!1617433 (not (= lambda!355786 lambda!355715))))

(declare-fun bs!1617434 () Bool)

(assert (= bs!1617434 (and d!2015793 b!6430816)))

(assert (=> bs!1617434 (not (= lambda!355786 lambda!355773))))

(declare-fun bs!1617435 () Bool)

(assert (= bs!1617435 (and d!2015793 b!6430865)))

(assert (=> bs!1617435 (not (= lambda!355786 lambda!355780))))

(declare-fun bs!1617437 () Bool)

(assert (= bs!1617437 (and d!2015793 b!6430859)))

(assert (=> bs!1617437 (not (= lambda!355786 lambda!355779))))

(declare-fun bs!1617439 () Bool)

(assert (= bs!1617439 (and d!2015793 b!6430810)))

(assert (=> bs!1617439 (not (= lambda!355786 lambda!355772))))

(assert (=> bs!1617432 (not (= lambda!355786 lambda!355721))))

(assert (=> bs!1617431 (not (= lambda!355786 lambda!355718))))

(assert (=> bs!1617433 (= lambda!355786 lambda!355714)))

(assert (=> d!2015793 true))

(assert (=> d!2015793 true))

(assert (=> d!2015793 true))

(assert (=> d!2015793 (= (isDefined!12929 (findConcatSeparation!2640 (regOne!33182 r!7292) (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326)) (Exists!3405 lambda!355786))))

(declare-fun lt!2379504 () Unit!158671)

(declare-fun choose!47831 (Regex!16335 Regex!16335 List!65304) Unit!158671)

(assert (=> d!2015793 (= lt!2379504 (choose!47831 (regOne!33182 r!7292) (regTwo!33182 r!7292) s!2326))))

(assert (=> d!2015793 (validRegex!8071 (regOne!33182 r!7292))))

(assert (=> d!2015793 (= (lemmaFindConcatSeparationEquivalentToExists!2404 (regOne!33182 r!7292) (regTwo!33182 r!7292) s!2326) lt!2379504)))

(declare-fun bs!1617445 () Bool)

(assert (= bs!1617445 d!2015793))

(assert (=> bs!1617445 m!7223800))

(assert (=> bs!1617445 m!7223802))

(assert (=> bs!1617445 m!7223800))

(declare-fun m!7224544 () Bool)

(assert (=> bs!1617445 m!7224544))

(declare-fun m!7224546 () Bool)

(assert (=> bs!1617445 m!7224546))

(declare-fun m!7224548 () Bool)

(assert (=> bs!1617445 m!7224548))

(assert (=> b!6430128 d!2015793))

(declare-fun b!6430936 () Bool)

(declare-fun e!3901308 () Option!16226)

(assert (=> b!6430936 (= e!3901308 (Some!16225 (tuple2!66629 Nil!65180 s!2326)))))

(declare-fun b!6430937 () Bool)

(declare-fun e!3901309 () Option!16226)

(assert (=> b!6430937 (= e!3901309 None!16225)))

(declare-fun b!6430938 () Bool)

(declare-fun e!3901306 () Bool)

(declare-fun lt!2379520 () Option!16226)

(assert (=> b!6430938 (= e!3901306 (not (isDefined!12929 lt!2379520)))))

(declare-fun b!6430939 () Bool)

(declare-fun lt!2379519 () Unit!158671)

(declare-fun lt!2379518 () Unit!158671)

(assert (=> b!6430939 (= lt!2379519 lt!2379518)))

(assert (=> b!6430939 (= (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (t!378920 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2498 (List!65304 C!32940 List!65304 List!65304) Unit!158671)

(assert (=> b!6430939 (= lt!2379518 (lemmaMoveElementToOtherListKeepsConcatEq!2498 Nil!65180 (h!71628 s!2326) (t!378920 s!2326) s!2326))))

(assert (=> b!6430939 (= e!3901309 (findConcatSeparation!2640 (regOne!33182 r!7292) (regTwo!33182 r!7292) (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (t!378920 s!2326) s!2326))))

(declare-fun b!6430940 () Bool)

(declare-fun e!3901305 () Bool)

(assert (=> b!6430940 (= e!3901305 (= (++!14403 (_1!36617 (get!22586 lt!2379520)) (_2!36617 (get!22586 lt!2379520))) s!2326))))

(declare-fun b!6430941 () Bool)

(declare-fun res!2643473 () Bool)

(assert (=> b!6430941 (=> (not res!2643473) (not e!3901305))))

(assert (=> b!6430941 (= res!2643473 (matchR!8518 (regTwo!33182 r!7292) (_2!36617 (get!22586 lt!2379520))))))

(declare-fun d!2015807 () Bool)

(assert (=> d!2015807 e!3901306))

(declare-fun res!2643475 () Bool)

(assert (=> d!2015807 (=> res!2643475 e!3901306)))

(assert (=> d!2015807 (= res!2643475 e!3901305)))

(declare-fun res!2643474 () Bool)

(assert (=> d!2015807 (=> (not res!2643474) (not e!3901305))))

(assert (=> d!2015807 (= res!2643474 (isDefined!12929 lt!2379520))))

(assert (=> d!2015807 (= lt!2379520 e!3901308)))

(declare-fun c!1175300 () Bool)

(declare-fun e!3901307 () Bool)

(assert (=> d!2015807 (= c!1175300 e!3901307)))

(declare-fun res!2643477 () Bool)

(assert (=> d!2015807 (=> (not res!2643477) (not e!3901307))))

(assert (=> d!2015807 (= res!2643477 (matchR!8518 (regOne!33182 r!7292) Nil!65180))))

(assert (=> d!2015807 (validRegex!8071 (regOne!33182 r!7292))))

(assert (=> d!2015807 (= (findConcatSeparation!2640 (regOne!33182 r!7292) (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326) lt!2379520)))

(declare-fun b!6430942 () Bool)

(assert (=> b!6430942 (= e!3901308 e!3901309)))

(declare-fun c!1175299 () Bool)

(assert (=> b!6430942 (= c!1175299 ((_ is Nil!65180) s!2326))))

(declare-fun b!6430943 () Bool)

(declare-fun res!2643476 () Bool)

(assert (=> b!6430943 (=> (not res!2643476) (not e!3901305))))

(assert (=> b!6430943 (= res!2643476 (matchR!8518 (regOne!33182 r!7292) (_1!36617 (get!22586 lt!2379520))))))

(declare-fun b!6430944 () Bool)

(assert (=> b!6430944 (= e!3901307 (matchR!8518 (regTwo!33182 r!7292) s!2326))))

(assert (= (and d!2015807 res!2643477) b!6430944))

(assert (= (and d!2015807 c!1175300) b!6430936))

(assert (= (and d!2015807 (not c!1175300)) b!6430942))

(assert (= (and b!6430942 c!1175299) b!6430937))

(assert (= (and b!6430942 (not c!1175299)) b!6430939))

(assert (= (and d!2015807 res!2643474) b!6430943))

(assert (= (and b!6430943 res!2643476) b!6430941))

(assert (= (and b!6430941 res!2643473) b!6430940))

(assert (= (and d!2015807 (not res!2643475)) b!6430938))

(declare-fun m!7224590 () Bool)

(assert (=> d!2015807 m!7224590))

(declare-fun m!7224592 () Bool)

(assert (=> d!2015807 m!7224592))

(assert (=> d!2015807 m!7224544))

(declare-fun m!7224598 () Bool)

(assert (=> b!6430943 m!7224598))

(declare-fun m!7224604 () Bool)

(assert (=> b!6430943 m!7224604))

(assert (=> b!6430940 m!7224598))

(declare-fun m!7224610 () Bool)

(assert (=> b!6430940 m!7224610))

(assert (=> b!6430941 m!7224598))

(declare-fun m!7224612 () Bool)

(assert (=> b!6430941 m!7224612))

(assert (=> b!6430938 m!7224590))

(declare-fun m!7224616 () Bool)

(assert (=> b!6430939 m!7224616))

(assert (=> b!6430939 m!7224616))

(declare-fun m!7224618 () Bool)

(assert (=> b!6430939 m!7224618))

(declare-fun m!7224620 () Bool)

(assert (=> b!6430939 m!7224620))

(assert (=> b!6430939 m!7224616))

(declare-fun m!7224622 () Bool)

(assert (=> b!6430939 m!7224622))

(declare-fun m!7224624 () Bool)

(assert (=> b!6430944 m!7224624))

(assert (=> b!6430128 d!2015807))

(declare-fun d!2015827 () Bool)

(assert (=> d!2015827 (= (Exists!3405 lambda!355715) (choose!47830 lambda!355715))))

(declare-fun bs!1617493 () Bool)

(assert (= bs!1617493 d!2015827))

(declare-fun m!7224626 () Bool)

(assert (=> bs!1617493 m!7224626))

(assert (=> b!6430128 d!2015827))

(declare-fun bs!1617501 () Bool)

(declare-fun d!2015829 () Bool)

(assert (= bs!1617501 (and d!2015829 b!6430115)))

(declare-fun lambda!355796 () Int)

(assert (=> bs!1617501 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355796 lambda!355717))))

(declare-fun bs!1617502 () Bool)

(assert (= bs!1617502 (and d!2015829 b!6430094)))

(assert (=> bs!1617502 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355796 lambda!355719))))

(assert (=> bs!1617502 (not (= lambda!355796 lambda!355720))))

(declare-fun bs!1617503 () Bool)

(assert (= bs!1617503 (and d!2015829 b!6430128)))

(assert (=> bs!1617503 (not (= lambda!355796 lambda!355715))))

(declare-fun bs!1617504 () Bool)

(assert (= bs!1617504 (and d!2015829 b!6430816)))

(assert (=> bs!1617504 (not (= lambda!355796 lambda!355773))))

(declare-fun bs!1617505 () Bool)

(assert (= bs!1617505 (and d!2015829 b!6430865)))

(assert (=> bs!1617505 (not (= lambda!355796 lambda!355780))))

(declare-fun bs!1617506 () Bool)

(assert (= bs!1617506 (and d!2015829 b!6430859)))

(assert (=> bs!1617506 (not (= lambda!355796 lambda!355779))))

(declare-fun bs!1617507 () Bool)

(assert (= bs!1617507 (and d!2015829 b!6430810)))

(assert (=> bs!1617507 (not (= lambda!355796 lambda!355772))))

(assert (=> bs!1617502 (not (= lambda!355796 lambda!355721))))

(declare-fun bs!1617508 () Bool)

(assert (= bs!1617508 (and d!2015829 d!2015793)))

(assert (=> bs!1617508 (= lambda!355796 lambda!355786)))

(assert (=> bs!1617501 (not (= lambda!355796 lambda!355718))))

(assert (=> bs!1617503 (= lambda!355796 lambda!355714)))

(assert (=> d!2015829 true))

(assert (=> d!2015829 true))

(assert (=> d!2015829 true))

(declare-fun lambda!355797 () Int)

(assert (=> bs!1617501 (not (= lambda!355797 lambda!355717))))

(assert (=> bs!1617502 (not (= lambda!355797 lambda!355719))))

(assert (=> bs!1617502 (not (= lambda!355797 lambda!355720))))

(assert (=> bs!1617503 (= lambda!355797 lambda!355715)))

(assert (=> bs!1617504 (= lambda!355797 lambda!355773)))

(assert (=> bs!1617505 (= (and (= (regOne!33182 r!7292) (regOne!33182 lt!2379346)) (= (regTwo!33182 r!7292) (regTwo!33182 lt!2379346))) (= lambda!355797 lambda!355780))))

(assert (=> bs!1617506 (not (= lambda!355797 lambda!355779))))

(declare-fun bs!1617509 () Bool)

(assert (= bs!1617509 d!2015829))

(assert (=> bs!1617509 (not (= lambda!355797 lambda!355796))))

(assert (=> bs!1617507 (not (= lambda!355797 lambda!355772))))

(assert (=> bs!1617502 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355797 lambda!355721))))

(assert (=> bs!1617508 (not (= lambda!355797 lambda!355786))))

(assert (=> bs!1617501 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355797 lambda!355718))))

(assert (=> bs!1617503 (not (= lambda!355797 lambda!355714))))

(assert (=> d!2015829 true))

(assert (=> d!2015829 true))

(assert (=> d!2015829 true))

(assert (=> d!2015829 (= (Exists!3405 lambda!355796) (Exists!3405 lambda!355797))))

(declare-fun lt!2379525 () Unit!158671)

(declare-fun choose!47832 (Regex!16335 Regex!16335 List!65304) Unit!158671)

(assert (=> d!2015829 (= lt!2379525 (choose!47832 (regOne!33182 r!7292) (regTwo!33182 r!7292) s!2326))))

(assert (=> d!2015829 (validRegex!8071 (regOne!33182 r!7292))))

(assert (=> d!2015829 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1942 (regOne!33182 r!7292) (regTwo!33182 r!7292) s!2326) lt!2379525)))

(declare-fun m!7224668 () Bool)

(assert (=> bs!1617509 m!7224668))

(declare-fun m!7224670 () Bool)

(assert (=> bs!1617509 m!7224670))

(declare-fun m!7224672 () Bool)

(assert (=> bs!1617509 m!7224672))

(assert (=> bs!1617509 m!7224544))

(assert (=> b!6430128 d!2015829))

(declare-fun d!2015851 () Bool)

(declare-fun isEmpty!37352 (Option!16226) Bool)

(assert (=> d!2015851 (= (isDefined!12929 (findConcatSeparation!2640 (regOne!33182 r!7292) (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326)) (not (isEmpty!37352 (findConcatSeparation!2640 (regOne!33182 r!7292) (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326))))))

(declare-fun bs!1617510 () Bool)

(assert (= bs!1617510 d!2015851))

(assert (=> bs!1617510 m!7223800))

(declare-fun m!7224674 () Bool)

(assert (=> bs!1617510 m!7224674))

(assert (=> b!6430128 d!2015851))

(declare-fun d!2015853 () Bool)

(declare-fun e!3901364 () Bool)

(assert (=> d!2015853 e!3901364))

(declare-fun c!1175316 () Bool)

(assert (=> d!2015853 (= c!1175316 ((_ is EmptyExpr!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun lt!2379526 () Bool)

(declare-fun e!3901359 () Bool)

(assert (=> d!2015853 (= lt!2379526 e!3901359)))

(declare-fun c!1175317 () Bool)

(assert (=> d!2015853 (= c!1175317 (isEmpty!37350 (_1!36617 lt!2379342)))))

(assert (=> d!2015853 (validRegex!8071 (reg!16664 (regOne!33182 r!7292)))))

(assert (=> d!2015853 (= (matchR!8518 (reg!16664 (regOne!33182 r!7292)) (_1!36617 lt!2379342)) lt!2379526)))

(declare-fun b!6431047 () Bool)

(declare-fun e!3901363 () Bool)

(assert (=> b!6431047 (= e!3901363 (not (= (head!13161 (_1!36617 lt!2379342)) (c!1175066 (reg!16664 (regOne!33182 r!7292))))))))

(declare-fun b!6431048 () Bool)

(assert (=> b!6431048 (= e!3901359 (matchR!8518 (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 lt!2379342))) (tail!12246 (_1!36617 lt!2379342))))))

(declare-fun b!6431049 () Bool)

(declare-fun res!2643499 () Bool)

(declare-fun e!3901362 () Bool)

(assert (=> b!6431049 (=> res!2643499 e!3901362)))

(declare-fun e!3901360 () Bool)

(assert (=> b!6431049 (= res!2643499 e!3901360)))

(declare-fun res!2643503 () Bool)

(assert (=> b!6431049 (=> (not res!2643503) (not e!3901360))))

(assert (=> b!6431049 (= res!2643503 lt!2379526)))

(declare-fun b!6431050 () Bool)

(declare-fun res!2643501 () Bool)

(assert (=> b!6431050 (=> res!2643501 e!3901362)))

(assert (=> b!6431050 (= res!2643501 (not ((_ is ElementMatch!16335) (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun e!3901361 () Bool)

(assert (=> b!6431050 (= e!3901361 e!3901362)))

(declare-fun b!6431051 () Bool)

(declare-fun e!3901365 () Bool)

(assert (=> b!6431051 (= e!3901362 e!3901365)))

(declare-fun res!2643504 () Bool)

(assert (=> b!6431051 (=> (not res!2643504) (not e!3901365))))

(assert (=> b!6431051 (= res!2643504 (not lt!2379526))))

(declare-fun b!6431052 () Bool)

(declare-fun res!2643502 () Bool)

(assert (=> b!6431052 (=> res!2643502 e!3901363)))

(assert (=> b!6431052 (= res!2643502 (not (isEmpty!37350 (tail!12246 (_1!36617 lt!2379342)))))))

(declare-fun b!6431053 () Bool)

(assert (=> b!6431053 (= e!3901359 (nullable!6328 (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6431054 () Bool)

(assert (=> b!6431054 (= e!3901364 e!3901361)))

(declare-fun c!1175315 () Bool)

(assert (=> b!6431054 (= c!1175315 ((_ is EmptyLang!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6431055 () Bool)

(declare-fun call!553151 () Bool)

(assert (=> b!6431055 (= e!3901364 (= lt!2379526 call!553151))))

(declare-fun b!6431056 () Bool)

(assert (=> b!6431056 (= e!3901361 (not lt!2379526))))

(declare-fun b!6431057 () Bool)

(declare-fun res!2643505 () Bool)

(assert (=> b!6431057 (=> (not res!2643505) (not e!3901360))))

(assert (=> b!6431057 (= res!2643505 (isEmpty!37350 (tail!12246 (_1!36617 lt!2379342))))))

(declare-fun b!6431058 () Bool)

(assert (=> b!6431058 (= e!3901365 e!3901363)))

(declare-fun res!2643498 () Bool)

(assert (=> b!6431058 (=> res!2643498 e!3901363)))

(assert (=> b!6431058 (= res!2643498 call!553151)))

(declare-fun b!6431059 () Bool)

(assert (=> b!6431059 (= e!3901360 (= (head!13161 (_1!36617 lt!2379342)) (c!1175066 (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun bm!553146 () Bool)

(assert (=> bm!553146 (= call!553151 (isEmpty!37350 (_1!36617 lt!2379342)))))

(declare-fun b!6431060 () Bool)

(declare-fun res!2643500 () Bool)

(assert (=> b!6431060 (=> (not res!2643500) (not e!3901360))))

(assert (=> b!6431060 (= res!2643500 (not call!553151))))

(assert (= (and d!2015853 c!1175317) b!6431053))

(assert (= (and d!2015853 (not c!1175317)) b!6431048))

(assert (= (and d!2015853 c!1175316) b!6431055))

(assert (= (and d!2015853 (not c!1175316)) b!6431054))

(assert (= (and b!6431054 c!1175315) b!6431056))

(assert (= (and b!6431054 (not c!1175315)) b!6431050))

(assert (= (and b!6431050 (not res!2643501)) b!6431049))

(assert (= (and b!6431049 res!2643503) b!6431060))

(assert (= (and b!6431060 res!2643500) b!6431057))

(assert (= (and b!6431057 res!2643505) b!6431059))

(assert (= (and b!6431049 (not res!2643499)) b!6431051))

(assert (= (and b!6431051 res!2643504) b!6431058))

(assert (= (and b!6431058 (not res!2643498)) b!6431052))

(assert (= (and b!6431052 (not res!2643502)) b!6431047))

(assert (= (or b!6431055 b!6431060 b!6431058) bm!553146))

(declare-fun m!7224676 () Bool)

(assert (=> d!2015853 m!7224676))

(declare-fun m!7224678 () Bool)

(assert (=> d!2015853 m!7224678))

(declare-fun m!7224680 () Bool)

(assert (=> b!6431047 m!7224680))

(declare-fun m!7224682 () Bool)

(assert (=> b!6431057 m!7224682))

(assert (=> b!6431057 m!7224682))

(declare-fun m!7224684 () Bool)

(assert (=> b!6431057 m!7224684))

(assert (=> b!6431052 m!7224682))

(assert (=> b!6431052 m!7224682))

(assert (=> b!6431052 m!7224684))

(assert (=> b!6431059 m!7224680))

(assert (=> bm!553146 m!7224676))

(declare-fun m!7224686 () Bool)

(assert (=> b!6431053 m!7224686))

(assert (=> b!6431048 m!7224680))

(assert (=> b!6431048 m!7224680))

(declare-fun m!7224688 () Bool)

(assert (=> b!6431048 m!7224688))

(assert (=> b!6431048 m!7224682))

(assert (=> b!6431048 m!7224688))

(assert (=> b!6431048 m!7224682))

(declare-fun m!7224690 () Bool)

(assert (=> b!6431048 m!7224690))

(assert (=> b!6430112 d!2015853))

(declare-fun d!2015855 () Bool)

(declare-fun e!3901371 () Bool)

(assert (=> d!2015855 e!3901371))

(declare-fun c!1175319 () Bool)

(assert (=> d!2015855 (= c!1175319 ((_ is EmptyExpr!16335) lt!2379353))))

(declare-fun lt!2379527 () Bool)

(declare-fun e!3901366 () Bool)

(assert (=> d!2015855 (= lt!2379527 e!3901366)))

(declare-fun c!1175320 () Bool)

(assert (=> d!2015855 (= c!1175320 (isEmpty!37350 (_1!36617 lt!2379368)))))

(assert (=> d!2015855 (validRegex!8071 lt!2379353)))

(assert (=> d!2015855 (= (matchR!8518 lt!2379353 (_1!36617 lt!2379368)) lt!2379527)))

(declare-fun b!6431061 () Bool)

(declare-fun e!3901370 () Bool)

(assert (=> b!6431061 (= e!3901370 (not (= (head!13161 (_1!36617 lt!2379368)) (c!1175066 lt!2379353))))))

(declare-fun b!6431062 () Bool)

(assert (=> b!6431062 (= e!3901366 (matchR!8518 (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 lt!2379368))) (tail!12246 (_1!36617 lt!2379368))))))

(declare-fun b!6431063 () Bool)

(declare-fun res!2643507 () Bool)

(declare-fun e!3901369 () Bool)

(assert (=> b!6431063 (=> res!2643507 e!3901369)))

(declare-fun e!3901367 () Bool)

(assert (=> b!6431063 (= res!2643507 e!3901367)))

(declare-fun res!2643511 () Bool)

(assert (=> b!6431063 (=> (not res!2643511) (not e!3901367))))

(assert (=> b!6431063 (= res!2643511 lt!2379527)))

(declare-fun b!6431064 () Bool)

(declare-fun res!2643509 () Bool)

(assert (=> b!6431064 (=> res!2643509 e!3901369)))

(assert (=> b!6431064 (= res!2643509 (not ((_ is ElementMatch!16335) lt!2379353)))))

(declare-fun e!3901368 () Bool)

(assert (=> b!6431064 (= e!3901368 e!3901369)))

(declare-fun b!6431065 () Bool)

(declare-fun e!3901372 () Bool)

(assert (=> b!6431065 (= e!3901369 e!3901372)))

(declare-fun res!2643512 () Bool)

(assert (=> b!6431065 (=> (not res!2643512) (not e!3901372))))

(assert (=> b!6431065 (= res!2643512 (not lt!2379527))))

(declare-fun b!6431066 () Bool)

(declare-fun res!2643510 () Bool)

(assert (=> b!6431066 (=> res!2643510 e!3901370)))

(assert (=> b!6431066 (= res!2643510 (not (isEmpty!37350 (tail!12246 (_1!36617 lt!2379368)))))))

(declare-fun b!6431067 () Bool)

(assert (=> b!6431067 (= e!3901366 (nullable!6328 lt!2379353))))

(declare-fun b!6431068 () Bool)

(assert (=> b!6431068 (= e!3901371 e!3901368)))

(declare-fun c!1175318 () Bool)

(assert (=> b!6431068 (= c!1175318 ((_ is EmptyLang!16335) lt!2379353))))

(declare-fun b!6431069 () Bool)

(declare-fun call!553152 () Bool)

(assert (=> b!6431069 (= e!3901371 (= lt!2379527 call!553152))))

(declare-fun b!6431070 () Bool)

(assert (=> b!6431070 (= e!3901368 (not lt!2379527))))

(declare-fun b!6431071 () Bool)

(declare-fun res!2643513 () Bool)

(assert (=> b!6431071 (=> (not res!2643513) (not e!3901367))))

(assert (=> b!6431071 (= res!2643513 (isEmpty!37350 (tail!12246 (_1!36617 lt!2379368))))))

(declare-fun b!6431072 () Bool)

(assert (=> b!6431072 (= e!3901372 e!3901370)))

(declare-fun res!2643506 () Bool)

(assert (=> b!6431072 (=> res!2643506 e!3901370)))

(assert (=> b!6431072 (= res!2643506 call!553152)))

(declare-fun b!6431073 () Bool)

(assert (=> b!6431073 (= e!3901367 (= (head!13161 (_1!36617 lt!2379368)) (c!1175066 lt!2379353)))))

(declare-fun bm!553147 () Bool)

(assert (=> bm!553147 (= call!553152 (isEmpty!37350 (_1!36617 lt!2379368)))))

(declare-fun b!6431074 () Bool)

(declare-fun res!2643508 () Bool)

(assert (=> b!6431074 (=> (not res!2643508) (not e!3901367))))

(assert (=> b!6431074 (= res!2643508 (not call!553152))))

(assert (= (and d!2015855 c!1175320) b!6431067))

(assert (= (and d!2015855 (not c!1175320)) b!6431062))

(assert (= (and d!2015855 c!1175319) b!6431069))

(assert (= (and d!2015855 (not c!1175319)) b!6431068))

(assert (= (and b!6431068 c!1175318) b!6431070))

(assert (= (and b!6431068 (not c!1175318)) b!6431064))

(assert (= (and b!6431064 (not res!2643509)) b!6431063))

(assert (= (and b!6431063 res!2643511) b!6431074))

(assert (= (and b!6431074 res!2643508) b!6431071))

(assert (= (and b!6431071 res!2643513) b!6431073))

(assert (= (and b!6431063 (not res!2643507)) b!6431065))

(assert (= (and b!6431065 res!2643512) b!6431072))

(assert (= (and b!6431072 (not res!2643506)) b!6431066))

(assert (= (and b!6431066 (not res!2643510)) b!6431061))

(assert (= (or b!6431069 b!6431074 b!6431072) bm!553147))

(assert (=> d!2015855 m!7223754))

(assert (=> d!2015855 m!7223958))

(declare-fun m!7224692 () Bool)

(assert (=> b!6431061 m!7224692))

(declare-fun m!7224694 () Bool)

(assert (=> b!6431071 m!7224694))

(assert (=> b!6431071 m!7224694))

(declare-fun m!7224696 () Bool)

(assert (=> b!6431071 m!7224696))

(assert (=> b!6431066 m!7224694))

(assert (=> b!6431066 m!7224694))

(assert (=> b!6431066 m!7224696))

(assert (=> b!6431073 m!7224692))

(assert (=> bm!553147 m!7223754))

(assert (=> b!6431067 m!7224052))

(assert (=> b!6431062 m!7224692))

(assert (=> b!6431062 m!7224692))

(declare-fun m!7224698 () Bool)

(assert (=> b!6431062 m!7224698))

(assert (=> b!6431062 m!7224694))

(assert (=> b!6431062 m!7224698))

(assert (=> b!6431062 m!7224694))

(declare-fun m!7224700 () Bool)

(assert (=> b!6431062 m!7224700))

(assert (=> b!6430089 d!2015855))

(declare-fun b!6431094 () Bool)

(declare-fun e!3901389 () Bool)

(declare-fun e!3901391 () Bool)

(assert (=> b!6431094 (= e!3901389 e!3901391)))

(declare-fun res!2643525 () Bool)

(assert (=> b!6431094 (= res!2643525 (not (nullable!6328 (reg!16664 r!7292))))))

(assert (=> b!6431094 (=> (not res!2643525) (not e!3901391))))

(declare-fun c!1175325 () Bool)

(declare-fun bm!553154 () Bool)

(declare-fun c!1175326 () Bool)

(declare-fun call!553159 () Bool)

(assert (=> bm!553154 (= call!553159 (validRegex!8071 (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292)))))))

(declare-fun b!6431095 () Bool)

(declare-fun e!3901388 () Bool)

(declare-fun call!553160 () Bool)

(assert (=> b!6431095 (= e!3901388 call!553160)))

(declare-fun b!6431096 () Bool)

(declare-fun e!3901393 () Bool)

(assert (=> b!6431096 (= e!3901389 e!3901393)))

(assert (=> b!6431096 (= c!1175326 ((_ is Union!16335) r!7292))))

(declare-fun b!6431097 () Bool)

(declare-fun e!3901392 () Bool)

(declare-fun e!3901387 () Bool)

(assert (=> b!6431097 (= e!3901392 e!3901387)))

(declare-fun res!2643528 () Bool)

(assert (=> b!6431097 (=> (not res!2643528) (not e!3901387))))

(declare-fun call!553161 () Bool)

(assert (=> b!6431097 (= res!2643528 call!553161)))

(declare-fun b!6431098 () Bool)

(declare-fun e!3901390 () Bool)

(assert (=> b!6431098 (= e!3901390 e!3901389)))

(assert (=> b!6431098 (= c!1175325 ((_ is Star!16335) r!7292))))

(declare-fun b!6431093 () Bool)

(declare-fun res!2643527 () Bool)

(assert (=> b!6431093 (=> res!2643527 e!3901392)))

(assert (=> b!6431093 (= res!2643527 (not ((_ is Concat!25180) r!7292)))))

(assert (=> b!6431093 (= e!3901393 e!3901392)))

(declare-fun d!2015857 () Bool)

(declare-fun res!2643526 () Bool)

(assert (=> d!2015857 (=> res!2643526 e!3901390)))

(assert (=> d!2015857 (= res!2643526 ((_ is ElementMatch!16335) r!7292))))

(assert (=> d!2015857 (= (validRegex!8071 r!7292) e!3901390)))

(declare-fun b!6431099 () Bool)

(declare-fun res!2643524 () Bool)

(assert (=> b!6431099 (=> (not res!2643524) (not e!3901388))))

(assert (=> b!6431099 (= res!2643524 call!553161)))

(assert (=> b!6431099 (= e!3901393 e!3901388)))

(declare-fun b!6431100 () Bool)

(assert (=> b!6431100 (= e!3901391 call!553159)))

(declare-fun bm!553155 () Bool)

(assert (=> bm!553155 (= call!553160 (validRegex!8071 (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292))))))

(declare-fun bm!553156 () Bool)

(assert (=> bm!553156 (= call!553161 call!553159)))

(declare-fun b!6431101 () Bool)

(assert (=> b!6431101 (= e!3901387 call!553160)))

(assert (= (and d!2015857 (not res!2643526)) b!6431098))

(assert (= (and b!6431098 c!1175325) b!6431094))

(assert (= (and b!6431098 (not c!1175325)) b!6431096))

(assert (= (and b!6431094 res!2643525) b!6431100))

(assert (= (and b!6431096 c!1175326) b!6431099))

(assert (= (and b!6431096 (not c!1175326)) b!6431093))

(assert (= (and b!6431099 res!2643524) b!6431095))

(assert (= (and b!6431093 (not res!2643527)) b!6431097))

(assert (= (and b!6431097 res!2643528) b!6431101))

(assert (= (or b!6431095 b!6431101) bm!553155))

(assert (= (or b!6431099 b!6431097) bm!553156))

(assert (= (or b!6431100 bm!553156) bm!553154))

(declare-fun m!7224702 () Bool)

(assert (=> b!6431094 m!7224702))

(declare-fun m!7224704 () Bool)

(assert (=> bm!553154 m!7224704))

(declare-fun m!7224706 () Bool)

(assert (=> bm!553155 m!7224706))

(assert (=> start!635226 d!2015857))

(declare-fun d!2015859 () Bool)

(assert (=> d!2015859 (= (flatMap!1840 lt!2379348 lambda!355716) (choose!47821 lt!2379348 lambda!355716))))

(declare-fun bs!1617511 () Bool)

(assert (= bs!1617511 d!2015859))

(declare-fun m!7224708 () Bool)

(assert (=> bs!1617511 m!7224708))

(assert (=> b!6430093 d!2015859))

(declare-fun e!3901394 () (InoxSet Context!11438))

(declare-fun call!553162 () (InoxSet Context!11438))

(declare-fun b!6431102 () Bool)

(assert (=> b!6431102 (= e!3901394 ((_ map or) call!553162 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 lt!2379364))) (h!71628 s!2326))))))

(declare-fun d!2015861 () Bool)

(declare-fun c!1175328 () Bool)

(declare-fun e!3901395 () Bool)

(assert (=> d!2015861 (= c!1175328 e!3901395)))

(declare-fun res!2643529 () Bool)

(assert (=> d!2015861 (=> (not res!2643529) (not e!3901395))))

(assert (=> d!2015861 (= res!2643529 ((_ is Cons!65181) (exprs!6219 lt!2379364)))))

(assert (=> d!2015861 (= (derivationStepZipperUp!1509 lt!2379364 (h!71628 s!2326)) e!3901394)))

(declare-fun bm!553157 () Bool)

(assert (=> bm!553157 (= call!553162 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 lt!2379364)) (Context!11439 (t!378921 (exprs!6219 lt!2379364))) (h!71628 s!2326)))))

(declare-fun b!6431103 () Bool)

(declare-fun e!3901396 () (InoxSet Context!11438))

(assert (=> b!6431103 (= e!3901394 e!3901396)))

(declare-fun c!1175327 () Bool)

(assert (=> b!6431103 (= c!1175327 ((_ is Cons!65181) (exprs!6219 lt!2379364)))))

(declare-fun b!6431104 () Bool)

(assert (=> b!6431104 (= e!3901396 call!553162)))

(declare-fun b!6431105 () Bool)

(assert (=> b!6431105 (= e!3901396 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6431106 () Bool)

(assert (=> b!6431106 (= e!3901395 (nullable!6328 (h!71629 (exprs!6219 lt!2379364))))))

(assert (= (and d!2015861 res!2643529) b!6431106))

(assert (= (and d!2015861 c!1175328) b!6431102))

(assert (= (and d!2015861 (not c!1175328)) b!6431103))

(assert (= (and b!6431103 c!1175327) b!6431104))

(assert (= (and b!6431103 (not c!1175327)) b!6431105))

(assert (= (or b!6431102 b!6431104) bm!553157))

(declare-fun m!7224710 () Bool)

(assert (=> b!6431102 m!7224710))

(declare-fun m!7224712 () Bool)

(assert (=> bm!553157 m!7224712))

(declare-fun m!7224714 () Bool)

(assert (=> b!6431106 m!7224714))

(assert (=> b!6430093 d!2015861))

(declare-fun d!2015863 () Bool)

(assert (=> d!2015863 (= (flatMap!1840 lt!2379348 lambda!355716) (dynLambda!25892 lambda!355716 lt!2379364))))

(declare-fun lt!2379528 () Unit!158671)

(assert (=> d!2015863 (= lt!2379528 (choose!47823 lt!2379348 lt!2379364 lambda!355716))))

(assert (=> d!2015863 (= lt!2379348 (store ((as const (Array Context!11438 Bool)) false) lt!2379364 true))))

(assert (=> d!2015863 (= (lemmaFlatMapOnSingletonSet!1366 lt!2379348 lt!2379364 lambda!355716) lt!2379528)))

(declare-fun b_lambda!244327 () Bool)

(assert (=> (not b_lambda!244327) (not d!2015863)))

(declare-fun bs!1617512 () Bool)

(assert (= bs!1617512 d!2015863))

(assert (=> bs!1617512 m!7223812))

(declare-fun m!7224716 () Bool)

(assert (=> bs!1617512 m!7224716))

(declare-fun m!7224718 () Bool)

(assert (=> bs!1617512 m!7224718))

(assert (=> bs!1617512 m!7223814))

(assert (=> b!6430093 d!2015863))

(declare-fun bs!1617513 () Bool)

(declare-fun d!2015865 () Bool)

(assert (= bs!1617513 (and d!2015865 b!6430098)))

(declare-fun lambda!355800 () Int)

(assert (=> bs!1617513 (= lambda!355800 lambda!355716)))

(assert (=> d!2015865 true))

(assert (=> d!2015865 (= (derivationStepZipper!2301 lt!2379348 (h!71628 s!2326)) (flatMap!1840 lt!2379348 lambda!355800))))

(declare-fun bs!1617514 () Bool)

(assert (= bs!1617514 d!2015865))

(declare-fun m!7224720 () Bool)

(assert (=> bs!1617514 m!7224720))

(assert (=> b!6430093 d!2015865))

(declare-fun d!2015867 () Bool)

(assert (=> d!2015867 (= (get!22586 lt!2379377) (v!52398 lt!2379377))))

(assert (=> b!6430115 d!2015867))

(declare-fun d!2015869 () Bool)

(assert (=> d!2015869 (= (isDefined!12929 lt!2379377) (not (isEmpty!37352 lt!2379377)))))

(declare-fun bs!1617515 () Bool)

(assert (= bs!1617515 d!2015869))

(declare-fun m!7224722 () Bool)

(assert (=> bs!1617515 m!7224722))

(assert (=> b!6430115 d!2015869))

(declare-fun d!2015871 () Bool)

(assert (=> d!2015871 (= (Exists!3405 lambda!355717) (choose!47830 lambda!355717))))

(declare-fun bs!1617516 () Bool)

(assert (= bs!1617516 d!2015871))

(declare-fun m!7224724 () Bool)

(assert (=> bs!1617516 m!7224724))

(assert (=> b!6430115 d!2015871))

(declare-fun b!6431109 () Bool)

(declare-fun e!3901400 () Option!16226)

(assert (=> b!6431109 (= e!3901400 (Some!16225 (tuple2!66629 Nil!65180 s!2326)))))

(declare-fun b!6431110 () Bool)

(declare-fun e!3901401 () Option!16226)

(assert (=> b!6431110 (= e!3901401 None!16225)))

(declare-fun b!6431111 () Bool)

(declare-fun e!3901398 () Bool)

(declare-fun lt!2379531 () Option!16226)

(assert (=> b!6431111 (= e!3901398 (not (isDefined!12929 lt!2379531)))))

(declare-fun b!6431112 () Bool)

(declare-fun lt!2379530 () Unit!158671)

(declare-fun lt!2379529 () Unit!158671)

(assert (=> b!6431112 (= lt!2379530 lt!2379529)))

(assert (=> b!6431112 (= (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (t!378920 s!2326)) s!2326)))

(assert (=> b!6431112 (= lt!2379529 (lemmaMoveElementToOtherListKeepsConcatEq!2498 Nil!65180 (h!71628 s!2326) (t!378920 s!2326) s!2326))))

(assert (=> b!6431112 (= e!3901401 (findConcatSeparation!2640 lt!2379353 (regTwo!33182 r!7292) (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (t!378920 s!2326) s!2326))))

(declare-fun b!6431113 () Bool)

(declare-fun e!3901397 () Bool)

(assert (=> b!6431113 (= e!3901397 (= (++!14403 (_1!36617 (get!22586 lt!2379531)) (_2!36617 (get!22586 lt!2379531))) s!2326))))

(declare-fun b!6431114 () Bool)

(declare-fun res!2643530 () Bool)

(assert (=> b!6431114 (=> (not res!2643530) (not e!3901397))))

(assert (=> b!6431114 (= res!2643530 (matchR!8518 (regTwo!33182 r!7292) (_2!36617 (get!22586 lt!2379531))))))

(declare-fun d!2015873 () Bool)

(assert (=> d!2015873 e!3901398))

(declare-fun res!2643532 () Bool)

(assert (=> d!2015873 (=> res!2643532 e!3901398)))

(assert (=> d!2015873 (= res!2643532 e!3901397)))

(declare-fun res!2643531 () Bool)

(assert (=> d!2015873 (=> (not res!2643531) (not e!3901397))))

(assert (=> d!2015873 (= res!2643531 (isDefined!12929 lt!2379531))))

(assert (=> d!2015873 (= lt!2379531 e!3901400)))

(declare-fun c!1175332 () Bool)

(declare-fun e!3901399 () Bool)

(assert (=> d!2015873 (= c!1175332 e!3901399)))

(declare-fun res!2643534 () Bool)

(assert (=> d!2015873 (=> (not res!2643534) (not e!3901399))))

(assert (=> d!2015873 (= res!2643534 (matchR!8518 lt!2379353 Nil!65180))))

(assert (=> d!2015873 (validRegex!8071 lt!2379353)))

(assert (=> d!2015873 (= (findConcatSeparation!2640 lt!2379353 (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326) lt!2379531)))

(declare-fun b!6431115 () Bool)

(assert (=> b!6431115 (= e!3901400 e!3901401)))

(declare-fun c!1175331 () Bool)

(assert (=> b!6431115 (= c!1175331 ((_ is Nil!65180) s!2326))))

(declare-fun b!6431116 () Bool)

(declare-fun res!2643533 () Bool)

(assert (=> b!6431116 (=> (not res!2643533) (not e!3901397))))

(assert (=> b!6431116 (= res!2643533 (matchR!8518 lt!2379353 (_1!36617 (get!22586 lt!2379531))))))

(declare-fun b!6431117 () Bool)

(assert (=> b!6431117 (= e!3901399 (matchR!8518 (regTwo!33182 r!7292) s!2326))))

(assert (= (and d!2015873 res!2643534) b!6431117))

(assert (= (and d!2015873 c!1175332) b!6431109))

(assert (= (and d!2015873 (not c!1175332)) b!6431115))

(assert (= (and b!6431115 c!1175331) b!6431110))

(assert (= (and b!6431115 (not c!1175331)) b!6431112))

(assert (= (and d!2015873 res!2643531) b!6431116))

(assert (= (and b!6431116 res!2643533) b!6431114))

(assert (= (and b!6431114 res!2643530) b!6431113))

(assert (= (and d!2015873 (not res!2643532)) b!6431111))

(declare-fun m!7224726 () Bool)

(assert (=> d!2015873 m!7224726))

(declare-fun m!7224728 () Bool)

(assert (=> d!2015873 m!7224728))

(assert (=> d!2015873 m!7223958))

(declare-fun m!7224730 () Bool)

(assert (=> b!6431116 m!7224730))

(declare-fun m!7224732 () Bool)

(assert (=> b!6431116 m!7224732))

(assert (=> b!6431113 m!7224730))

(declare-fun m!7224734 () Bool)

(assert (=> b!6431113 m!7224734))

(assert (=> b!6431114 m!7224730))

(declare-fun m!7224736 () Bool)

(assert (=> b!6431114 m!7224736))

(assert (=> b!6431111 m!7224726))

(assert (=> b!6431112 m!7224616))

(assert (=> b!6431112 m!7224616))

(assert (=> b!6431112 m!7224618))

(assert (=> b!6431112 m!7224620))

(assert (=> b!6431112 m!7224616))

(declare-fun m!7224738 () Bool)

(assert (=> b!6431112 m!7224738))

(assert (=> b!6431117 m!7224624))

(assert (=> b!6430115 d!2015873))

(declare-fun b!6431118 () Bool)

(declare-fun e!3901403 () List!65304)

(assert (=> b!6431118 (= e!3901403 (_2!36617 lt!2379368))))

(declare-fun b!6431119 () Bool)

(assert (=> b!6431119 (= e!3901403 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) (++!14403 (t!378920 (_1!36617 lt!2379368)) (_2!36617 lt!2379368))))))

(declare-fun b!6431120 () Bool)

(declare-fun res!2643536 () Bool)

(declare-fun e!3901402 () Bool)

(assert (=> b!6431120 (=> (not res!2643536) (not e!3901402))))

(declare-fun lt!2379532 () List!65304)

(assert (=> b!6431120 (= res!2643536 (= (size!40394 lt!2379532) (+ (size!40394 (_1!36617 lt!2379368)) (size!40394 (_2!36617 lt!2379368)))))))

(declare-fun b!6431121 () Bool)

(assert (=> b!6431121 (= e!3901402 (or (not (= (_2!36617 lt!2379368) Nil!65180)) (= lt!2379532 (_1!36617 lt!2379368))))))

(declare-fun d!2015875 () Bool)

(assert (=> d!2015875 e!3901402))

(declare-fun res!2643535 () Bool)

(assert (=> d!2015875 (=> (not res!2643535) (not e!3901402))))

(assert (=> d!2015875 (= res!2643535 (= (content!12384 lt!2379532) ((_ map or) (content!12384 (_1!36617 lt!2379368)) (content!12384 (_2!36617 lt!2379368)))))))

(assert (=> d!2015875 (= lt!2379532 e!3901403)))

(declare-fun c!1175333 () Bool)

(assert (=> d!2015875 (= c!1175333 ((_ is Nil!65180) (_1!36617 lt!2379368)))))

(assert (=> d!2015875 (= (++!14403 (_1!36617 lt!2379368) (_2!36617 lt!2379368)) lt!2379532)))

(assert (= (and d!2015875 c!1175333) b!6431118))

(assert (= (and d!2015875 (not c!1175333)) b!6431119))

(assert (= (and d!2015875 res!2643535) b!6431120))

(assert (= (and b!6431120 res!2643536) b!6431121))

(declare-fun m!7224740 () Bool)

(assert (=> b!6431119 m!7224740))

(declare-fun m!7224742 () Bool)

(assert (=> b!6431120 m!7224742))

(declare-fun m!7224744 () Bool)

(assert (=> b!6431120 m!7224744))

(assert (=> b!6431120 m!7224194))

(declare-fun m!7224746 () Bool)

(assert (=> d!2015875 m!7224746))

(declare-fun m!7224748 () Bool)

(assert (=> d!2015875 m!7224748))

(assert (=> d!2015875 m!7224200))

(assert (=> b!6430115 d!2015875))

(declare-fun d!2015877 () Bool)

(assert (=> d!2015877 (= (Exists!3405 lambda!355718) (choose!47830 lambda!355718))))

(declare-fun bs!1617517 () Bool)

(assert (= bs!1617517 d!2015877))

(declare-fun m!7224750 () Bool)

(assert (=> bs!1617517 m!7224750))

(assert (=> b!6430115 d!2015877))

(declare-fun bs!1617518 () Bool)

(declare-fun d!2015879 () Bool)

(assert (= bs!1617518 (and d!2015879 b!6430115)))

(declare-fun lambda!355801 () Int)

(assert (=> bs!1617518 (= lambda!355801 lambda!355717)))

(declare-fun bs!1617519 () Bool)

(assert (= bs!1617519 (and d!2015879 b!6430094)))

(assert (=> bs!1617519 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355801 lambda!355719))))

(assert (=> bs!1617519 (not (= lambda!355801 lambda!355720))))

(declare-fun bs!1617520 () Bool)

(assert (= bs!1617520 (and d!2015879 b!6430128)))

(assert (=> bs!1617520 (not (= lambda!355801 lambda!355715))))

(declare-fun bs!1617521 () Bool)

(assert (= bs!1617521 (and d!2015879 b!6430816)))

(assert (=> bs!1617521 (not (= lambda!355801 lambda!355773))))

(declare-fun bs!1617522 () Bool)

(assert (= bs!1617522 (and d!2015879 b!6430865)))

(assert (=> bs!1617522 (not (= lambda!355801 lambda!355780))))

(declare-fun bs!1617523 () Bool)

(assert (= bs!1617523 (and d!2015879 b!6430859)))

(assert (=> bs!1617523 (not (= lambda!355801 lambda!355779))))

(declare-fun bs!1617524 () Bool)

(assert (= bs!1617524 (and d!2015879 b!6430810)))

(assert (=> bs!1617524 (not (= lambda!355801 lambda!355772))))

(assert (=> bs!1617519 (not (= lambda!355801 lambda!355721))))

(declare-fun bs!1617525 () Bool)

(assert (= bs!1617525 (and d!2015879 d!2015793)))

(assert (=> bs!1617525 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355801 lambda!355786))))

(assert (=> bs!1617518 (not (= lambda!355801 lambda!355718))))

(assert (=> bs!1617520 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355801 lambda!355714))))

(declare-fun bs!1617526 () Bool)

(assert (= bs!1617526 (and d!2015879 d!2015829)))

(assert (=> bs!1617526 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355801 lambda!355796))))

(assert (=> bs!1617526 (not (= lambda!355801 lambda!355797))))

(assert (=> d!2015879 true))

(assert (=> d!2015879 true))

(assert (=> d!2015879 true))

(assert (=> d!2015879 (= (isDefined!12929 (findConcatSeparation!2640 lt!2379353 (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326)) (Exists!3405 lambda!355801))))

(declare-fun lt!2379533 () Unit!158671)

(assert (=> d!2015879 (= lt!2379533 (choose!47831 lt!2379353 (regTwo!33182 r!7292) s!2326))))

(assert (=> d!2015879 (validRegex!8071 lt!2379353)))

(assert (=> d!2015879 (= (lemmaFindConcatSeparationEquivalentToExists!2404 lt!2379353 (regTwo!33182 r!7292) s!2326) lt!2379533)))

(declare-fun bs!1617527 () Bool)

(assert (= bs!1617527 d!2015879))

(assert (=> bs!1617527 m!7223676))

(declare-fun m!7224752 () Bool)

(assert (=> bs!1617527 m!7224752))

(assert (=> bs!1617527 m!7223676))

(assert (=> bs!1617527 m!7223958))

(declare-fun m!7224754 () Bool)

(assert (=> bs!1617527 m!7224754))

(declare-fun m!7224756 () Bool)

(assert (=> bs!1617527 m!7224756))

(assert (=> b!6430115 d!2015879))

(declare-fun bs!1617528 () Bool)

(declare-fun d!2015881 () Bool)

(assert (= bs!1617528 (and d!2015881 d!2015879)))

(declare-fun lambda!355802 () Int)

(assert (=> bs!1617528 (= lambda!355802 lambda!355801)))

(declare-fun bs!1617529 () Bool)

(assert (= bs!1617529 (and d!2015881 b!6430115)))

(assert (=> bs!1617529 (= lambda!355802 lambda!355717)))

(declare-fun bs!1617530 () Bool)

(assert (= bs!1617530 (and d!2015881 b!6430094)))

(assert (=> bs!1617530 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355802 lambda!355719))))

(assert (=> bs!1617530 (not (= lambda!355802 lambda!355720))))

(declare-fun bs!1617531 () Bool)

(assert (= bs!1617531 (and d!2015881 b!6430128)))

(assert (=> bs!1617531 (not (= lambda!355802 lambda!355715))))

(declare-fun bs!1617532 () Bool)

(assert (= bs!1617532 (and d!2015881 b!6430816)))

(assert (=> bs!1617532 (not (= lambda!355802 lambda!355773))))

(declare-fun bs!1617533 () Bool)

(assert (= bs!1617533 (and d!2015881 b!6430865)))

(assert (=> bs!1617533 (not (= lambda!355802 lambda!355780))))

(declare-fun bs!1617534 () Bool)

(assert (= bs!1617534 (and d!2015881 b!6430859)))

(assert (=> bs!1617534 (not (= lambda!355802 lambda!355779))))

(declare-fun bs!1617535 () Bool)

(assert (= bs!1617535 (and d!2015881 b!6430810)))

(assert (=> bs!1617535 (not (= lambda!355802 lambda!355772))))

(assert (=> bs!1617530 (not (= lambda!355802 lambda!355721))))

(declare-fun bs!1617536 () Bool)

(assert (= bs!1617536 (and d!2015881 d!2015793)))

(assert (=> bs!1617536 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355802 lambda!355786))))

(assert (=> bs!1617529 (not (= lambda!355802 lambda!355718))))

(assert (=> bs!1617531 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355802 lambda!355714))))

(declare-fun bs!1617537 () Bool)

(assert (= bs!1617537 (and d!2015881 d!2015829)))

(assert (=> bs!1617537 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355802 lambda!355796))))

(assert (=> bs!1617537 (not (= lambda!355802 lambda!355797))))

(assert (=> d!2015881 true))

(assert (=> d!2015881 true))

(assert (=> d!2015881 true))

(declare-fun lambda!355803 () Int)

(assert (=> bs!1617528 (not (= lambda!355803 lambda!355801))))

(assert (=> bs!1617529 (not (= lambda!355803 lambda!355717))))

(assert (=> bs!1617530 (not (= lambda!355803 lambda!355719))))

(assert (=> bs!1617530 (not (= lambda!355803 lambda!355720))))

(assert (=> bs!1617531 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355803 lambda!355715))))

(declare-fun bs!1617538 () Bool)

(assert (= bs!1617538 d!2015881))

(assert (=> bs!1617538 (not (= lambda!355803 lambda!355802))))

(assert (=> bs!1617532 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355803 lambda!355773))))

(assert (=> bs!1617533 (= (and (= lt!2379353 (regOne!33182 lt!2379346)) (= (regTwo!33182 r!7292) (regTwo!33182 lt!2379346))) (= lambda!355803 lambda!355780))))

(assert (=> bs!1617534 (not (= lambda!355803 lambda!355779))))

(assert (=> bs!1617535 (not (= lambda!355803 lambda!355772))))

(assert (=> bs!1617530 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355803 lambda!355721))))

(assert (=> bs!1617536 (not (= lambda!355803 lambda!355786))))

(assert (=> bs!1617529 (= lambda!355803 lambda!355718)))

(assert (=> bs!1617531 (not (= lambda!355803 lambda!355714))))

(assert (=> bs!1617537 (not (= lambda!355803 lambda!355796))))

(assert (=> bs!1617537 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355803 lambda!355797))))

(assert (=> d!2015881 true))

(assert (=> d!2015881 true))

(assert (=> d!2015881 true))

(assert (=> d!2015881 (= (Exists!3405 lambda!355802) (Exists!3405 lambda!355803))))

(declare-fun lt!2379534 () Unit!158671)

(assert (=> d!2015881 (= lt!2379534 (choose!47832 lt!2379353 (regTwo!33182 r!7292) s!2326))))

(assert (=> d!2015881 (validRegex!8071 lt!2379353)))

(assert (=> d!2015881 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1942 lt!2379353 (regTwo!33182 r!7292) s!2326) lt!2379534)))

(declare-fun m!7224758 () Bool)

(assert (=> bs!1617538 m!7224758))

(declare-fun m!7224760 () Bool)

(assert (=> bs!1617538 m!7224760))

(declare-fun m!7224762 () Bool)

(assert (=> bs!1617538 m!7224762))

(assert (=> bs!1617538 m!7223958))

(assert (=> b!6430115 d!2015881))

(declare-fun d!2015883 () Bool)

(assert (=> d!2015883 (= (Exists!3405 lambda!355721) (choose!47830 lambda!355721))))

(declare-fun bs!1617539 () Bool)

(assert (= bs!1617539 d!2015883))

(declare-fun m!7224764 () Bool)

(assert (=> bs!1617539 m!7224764))

(assert (=> b!6430094 d!2015883))

(declare-fun b!6431122 () Bool)

(declare-fun e!3901407 () Option!16226)

(assert (=> b!6431122 (= e!3901407 (Some!16225 (tuple2!66629 Nil!65180 (_1!36617 lt!2379368))))))

(declare-fun b!6431123 () Bool)

(declare-fun e!3901408 () Option!16226)

(assert (=> b!6431123 (= e!3901408 None!16225)))

(declare-fun b!6431124 () Bool)

(declare-fun e!3901405 () Bool)

(declare-fun lt!2379537 () Option!16226)

(assert (=> b!6431124 (= e!3901405 (not (isDefined!12929 lt!2379537)))))

(declare-fun b!6431125 () Bool)

(declare-fun lt!2379536 () Unit!158671)

(declare-fun lt!2379535 () Unit!158671)

(assert (=> b!6431125 (= lt!2379536 lt!2379535)))

(assert (=> b!6431125 (= (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)) (t!378920 (_1!36617 lt!2379368))) (_1!36617 lt!2379368))))

(assert (=> b!6431125 (= lt!2379535 (lemmaMoveElementToOtherListKeepsConcatEq!2498 Nil!65180 (h!71628 (_1!36617 lt!2379368)) (t!378920 (_1!36617 lt!2379368)) (_1!36617 lt!2379368)))))

(assert (=> b!6431125 (= e!3901408 (findConcatSeparation!2640 (reg!16664 (regOne!33182 r!7292)) lt!2379353 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)) (t!378920 (_1!36617 lt!2379368)) (_1!36617 lt!2379368)))))

(declare-fun b!6431126 () Bool)

(declare-fun e!3901404 () Bool)

(assert (=> b!6431126 (= e!3901404 (= (++!14403 (_1!36617 (get!22586 lt!2379537)) (_2!36617 (get!22586 lt!2379537))) (_1!36617 lt!2379368)))))

(declare-fun b!6431127 () Bool)

(declare-fun res!2643537 () Bool)

(assert (=> b!6431127 (=> (not res!2643537) (not e!3901404))))

(assert (=> b!6431127 (= res!2643537 (matchR!8518 lt!2379353 (_2!36617 (get!22586 lt!2379537))))))

(declare-fun d!2015885 () Bool)

(assert (=> d!2015885 e!3901405))

(declare-fun res!2643539 () Bool)

(assert (=> d!2015885 (=> res!2643539 e!3901405)))

(assert (=> d!2015885 (= res!2643539 e!3901404)))

(declare-fun res!2643538 () Bool)

(assert (=> d!2015885 (=> (not res!2643538) (not e!3901404))))

(assert (=> d!2015885 (= res!2643538 (isDefined!12929 lt!2379537))))

(assert (=> d!2015885 (= lt!2379537 e!3901407)))

(declare-fun c!1175335 () Bool)

(declare-fun e!3901406 () Bool)

(assert (=> d!2015885 (= c!1175335 e!3901406)))

(declare-fun res!2643541 () Bool)

(assert (=> d!2015885 (=> (not res!2643541) (not e!3901406))))

(assert (=> d!2015885 (= res!2643541 (matchR!8518 (reg!16664 (regOne!33182 r!7292)) Nil!65180))))

(assert (=> d!2015885 (validRegex!8071 (reg!16664 (regOne!33182 r!7292)))))

(assert (=> d!2015885 (= (findConcatSeparation!2640 (reg!16664 (regOne!33182 r!7292)) lt!2379353 Nil!65180 (_1!36617 lt!2379368) (_1!36617 lt!2379368)) lt!2379537)))

(declare-fun b!6431128 () Bool)

(assert (=> b!6431128 (= e!3901407 e!3901408)))

(declare-fun c!1175334 () Bool)

(assert (=> b!6431128 (= c!1175334 ((_ is Nil!65180) (_1!36617 lt!2379368)))))

(declare-fun b!6431129 () Bool)

(declare-fun res!2643540 () Bool)

(assert (=> b!6431129 (=> (not res!2643540) (not e!3901404))))

(assert (=> b!6431129 (= res!2643540 (matchR!8518 (reg!16664 (regOne!33182 r!7292)) (_1!36617 (get!22586 lt!2379537))))))

(declare-fun b!6431130 () Bool)

(assert (=> b!6431130 (= e!3901406 (matchR!8518 lt!2379353 (_1!36617 lt!2379368)))))

(assert (= (and d!2015885 res!2643541) b!6431130))

(assert (= (and d!2015885 c!1175335) b!6431122))

(assert (= (and d!2015885 (not c!1175335)) b!6431128))

(assert (= (and b!6431128 c!1175334) b!6431123))

(assert (= (and b!6431128 (not c!1175334)) b!6431125))

(assert (= (and d!2015885 res!2643538) b!6431129))

(assert (= (and b!6431129 res!2643540) b!6431127))

(assert (= (and b!6431127 res!2643537) b!6431126))

(assert (= (and d!2015885 (not res!2643539)) b!6431124))

(declare-fun m!7224766 () Bool)

(assert (=> d!2015885 m!7224766))

(declare-fun m!7224768 () Bool)

(assert (=> d!2015885 m!7224768))

(assert (=> d!2015885 m!7224678))

(declare-fun m!7224770 () Bool)

(assert (=> b!6431129 m!7224770))

(declare-fun m!7224772 () Bool)

(assert (=> b!6431129 m!7224772))

(assert (=> b!6431126 m!7224770))

(declare-fun m!7224774 () Bool)

(assert (=> b!6431126 m!7224774))

(assert (=> b!6431127 m!7224770))

(declare-fun m!7224776 () Bool)

(assert (=> b!6431127 m!7224776))

(assert (=> b!6431124 m!7224766))

(declare-fun m!7224778 () Bool)

(assert (=> b!6431125 m!7224778))

(assert (=> b!6431125 m!7224778))

(declare-fun m!7224780 () Bool)

(assert (=> b!6431125 m!7224780))

(declare-fun m!7224782 () Bool)

(assert (=> b!6431125 m!7224782))

(assert (=> b!6431125 m!7224778))

(declare-fun m!7224784 () Bool)

(assert (=> b!6431125 m!7224784))

(assert (=> b!6431130 m!7223744))

(assert (=> b!6430094 d!2015885))

(declare-fun bs!1617540 () Bool)

(declare-fun d!2015887 () Bool)

(assert (= bs!1617540 (and d!2015887 d!2015879)))

(declare-fun lambda!355804 () Int)

(assert (=> bs!1617540 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355804 lambda!355801))))

(declare-fun bs!1617541 () Bool)

(assert (= bs!1617541 (and d!2015887 d!2015881)))

(assert (=> bs!1617541 (not (= lambda!355804 lambda!355803))))

(declare-fun bs!1617542 () Bool)

(assert (= bs!1617542 (and d!2015887 b!6430115)))

(assert (=> bs!1617542 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355804 lambda!355717))))

(declare-fun bs!1617543 () Bool)

(assert (= bs!1617543 (and d!2015887 b!6430094)))

(assert (=> bs!1617543 (= lambda!355804 lambda!355719)))

(assert (=> bs!1617543 (not (= lambda!355804 lambda!355720))))

(declare-fun bs!1617544 () Bool)

(assert (= bs!1617544 (and d!2015887 b!6430128)))

(assert (=> bs!1617544 (not (= lambda!355804 lambda!355715))))

(assert (=> bs!1617541 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355804 lambda!355802))))

(declare-fun bs!1617545 () Bool)

(assert (= bs!1617545 (and d!2015887 b!6430816)))

(assert (=> bs!1617545 (not (= lambda!355804 lambda!355773))))

(declare-fun bs!1617546 () Bool)

(assert (= bs!1617546 (and d!2015887 b!6430865)))

(assert (=> bs!1617546 (not (= lambda!355804 lambda!355780))))

(declare-fun bs!1617547 () Bool)

(assert (= bs!1617547 (and d!2015887 b!6430859)))

(assert (=> bs!1617547 (not (= lambda!355804 lambda!355779))))

(declare-fun bs!1617548 () Bool)

(assert (= bs!1617548 (and d!2015887 b!6430810)))

(assert (=> bs!1617548 (not (= lambda!355804 lambda!355772))))

(assert (=> bs!1617543 (not (= lambda!355804 lambda!355721))))

(declare-fun bs!1617549 () Bool)

(assert (= bs!1617549 (and d!2015887 d!2015793)))

(assert (=> bs!1617549 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355804 lambda!355786))))

(assert (=> bs!1617542 (not (= lambda!355804 lambda!355718))))

(assert (=> bs!1617544 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355804 lambda!355714))))

(declare-fun bs!1617550 () Bool)

(assert (= bs!1617550 (and d!2015887 d!2015829)))

(assert (=> bs!1617550 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355804 lambda!355796))))

(assert (=> bs!1617550 (not (= lambda!355804 lambda!355797))))

(assert (=> d!2015887 true))

(assert (=> d!2015887 true))

(assert (=> d!2015887 true))

(assert (=> d!2015887 (= (isDefined!12929 (findConcatSeparation!2640 (reg!16664 (regOne!33182 r!7292)) lt!2379353 Nil!65180 (_1!36617 lt!2379368) (_1!36617 lt!2379368))) (Exists!3405 lambda!355804))))

(declare-fun lt!2379538 () Unit!158671)

(assert (=> d!2015887 (= lt!2379538 (choose!47831 (reg!16664 (regOne!33182 r!7292)) lt!2379353 (_1!36617 lt!2379368)))))

(assert (=> d!2015887 (validRegex!8071 (reg!16664 (regOne!33182 r!7292)))))

(assert (=> d!2015887 (= (lemmaFindConcatSeparationEquivalentToExists!2404 (reg!16664 (regOne!33182 r!7292)) lt!2379353 (_1!36617 lt!2379368)) lt!2379538)))

(declare-fun bs!1617551 () Bool)

(assert (= bs!1617551 d!2015887))

(assert (=> bs!1617551 m!7223726))

(declare-fun m!7224786 () Bool)

(assert (=> bs!1617551 m!7224786))

(assert (=> bs!1617551 m!7223726))

(assert (=> bs!1617551 m!7224678))

(declare-fun m!7224788 () Bool)

(assert (=> bs!1617551 m!7224788))

(declare-fun m!7224790 () Bool)

(assert (=> bs!1617551 m!7224790))

(assert (=> b!6430094 d!2015887))

(declare-fun bs!1617552 () Bool)

(declare-fun d!2015889 () Bool)

(assert (= bs!1617552 (and d!2015889 d!2015887)))

(declare-fun lambda!355805 () Int)

(assert (=> bs!1617552 (= lambda!355805 lambda!355804)))

(declare-fun bs!1617553 () Bool)

(assert (= bs!1617553 (and d!2015889 d!2015879)))

(assert (=> bs!1617553 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355805 lambda!355801))))

(declare-fun bs!1617554 () Bool)

(assert (= bs!1617554 (and d!2015889 d!2015881)))

(assert (=> bs!1617554 (not (= lambda!355805 lambda!355803))))

(declare-fun bs!1617555 () Bool)

(assert (= bs!1617555 (and d!2015889 b!6430115)))

(assert (=> bs!1617555 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355805 lambda!355717))))

(declare-fun bs!1617556 () Bool)

(assert (= bs!1617556 (and d!2015889 b!6430094)))

(assert (=> bs!1617556 (= lambda!355805 lambda!355719)))

(assert (=> bs!1617556 (not (= lambda!355805 lambda!355720))))

(declare-fun bs!1617557 () Bool)

(assert (= bs!1617557 (and d!2015889 b!6430128)))

(assert (=> bs!1617557 (not (= lambda!355805 lambda!355715))))

(assert (=> bs!1617554 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355805 lambda!355802))))

(declare-fun bs!1617558 () Bool)

(assert (= bs!1617558 (and d!2015889 b!6430816)))

(assert (=> bs!1617558 (not (= lambda!355805 lambda!355773))))

(declare-fun bs!1617559 () Bool)

(assert (= bs!1617559 (and d!2015889 b!6430865)))

(assert (=> bs!1617559 (not (= lambda!355805 lambda!355780))))

(declare-fun bs!1617560 () Bool)

(assert (= bs!1617560 (and d!2015889 b!6430859)))

(assert (=> bs!1617560 (not (= lambda!355805 lambda!355779))))

(declare-fun bs!1617561 () Bool)

(assert (= bs!1617561 (and d!2015889 b!6430810)))

(assert (=> bs!1617561 (not (= lambda!355805 lambda!355772))))

(assert (=> bs!1617556 (not (= lambda!355805 lambda!355721))))

(declare-fun bs!1617562 () Bool)

(assert (= bs!1617562 (and d!2015889 d!2015793)))

(assert (=> bs!1617562 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355805 lambda!355786))))

(assert (=> bs!1617555 (not (= lambda!355805 lambda!355718))))

(assert (=> bs!1617557 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355805 lambda!355714))))

(declare-fun bs!1617563 () Bool)

(assert (= bs!1617563 (and d!2015889 d!2015829)))

(assert (=> bs!1617563 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355805 lambda!355796))))

(assert (=> bs!1617563 (not (= lambda!355805 lambda!355797))))

(assert (=> d!2015889 true))

(assert (=> d!2015889 true))

(assert (=> d!2015889 true))

(declare-fun lambda!355806 () Int)

(assert (=> bs!1617552 (not (= lambda!355806 lambda!355804))))

(assert (=> bs!1617553 (not (= lambda!355806 lambda!355801))))

(assert (=> bs!1617554 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355806 lambda!355803))))

(assert (=> bs!1617555 (not (= lambda!355806 lambda!355717))))

(assert (=> bs!1617556 (not (= lambda!355806 lambda!355719))))

(assert (=> bs!1617556 (not (= lambda!355806 lambda!355720))))

(assert (=> bs!1617557 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355806 lambda!355715))))

(assert (=> bs!1617554 (not (= lambda!355806 lambda!355802))))

(assert (=> bs!1617558 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355806 lambda!355773))))

(assert (=> bs!1617560 (not (= lambda!355806 lambda!355779))))

(assert (=> bs!1617561 (not (= lambda!355806 lambda!355772))))

(assert (=> bs!1617556 (= lambda!355806 lambda!355721)))

(assert (=> bs!1617562 (not (= lambda!355806 lambda!355786))))

(assert (=> bs!1617559 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 lt!2379346)) (= lt!2379353 (regTwo!33182 lt!2379346))) (= lambda!355806 lambda!355780))))

(declare-fun bs!1617564 () Bool)

(assert (= bs!1617564 d!2015889))

(assert (=> bs!1617564 (not (= lambda!355806 lambda!355805))))

(assert (=> bs!1617555 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355806 lambda!355718))))

(assert (=> bs!1617557 (not (= lambda!355806 lambda!355714))))

(assert (=> bs!1617563 (not (= lambda!355806 lambda!355796))))

(assert (=> bs!1617563 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355806 lambda!355797))))

(assert (=> d!2015889 true))

(assert (=> d!2015889 true))

(assert (=> d!2015889 true))

(assert (=> d!2015889 (= (Exists!3405 lambda!355805) (Exists!3405 lambda!355806))))

(declare-fun lt!2379539 () Unit!158671)

(assert (=> d!2015889 (= lt!2379539 (choose!47832 (reg!16664 (regOne!33182 r!7292)) lt!2379353 (_1!36617 lt!2379368)))))

(assert (=> d!2015889 (validRegex!8071 (reg!16664 (regOne!33182 r!7292)))))

(assert (=> d!2015889 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1942 (reg!16664 (regOne!33182 r!7292)) lt!2379353 (_1!36617 lt!2379368)) lt!2379539)))

(declare-fun m!7224792 () Bool)

(assert (=> bs!1617564 m!7224792))

(declare-fun m!7224794 () Bool)

(assert (=> bs!1617564 m!7224794))

(declare-fun m!7224796 () Bool)

(assert (=> bs!1617564 m!7224796))

(assert (=> bs!1617564 m!7224678))

(assert (=> b!6430094 d!2015889))

(declare-fun d!2015891 () Bool)

(assert (=> d!2015891 (= (Exists!3405 lambda!355719) (choose!47830 lambda!355719))))

(declare-fun bs!1617565 () Bool)

(assert (= bs!1617565 d!2015891))

(declare-fun m!7224798 () Bool)

(assert (=> bs!1617565 m!7224798))

(assert (=> b!6430094 d!2015891))

(declare-fun d!2015893 () Bool)

(assert (=> d!2015893 (= (Exists!3405 lambda!355720) (choose!47830 lambda!355720))))

(declare-fun bs!1617566 () Bool)

(assert (= bs!1617566 d!2015893))

(declare-fun m!7224800 () Bool)

(assert (=> bs!1617566 m!7224800))

(assert (=> b!6430094 d!2015893))

(declare-fun bs!1617567 () Bool)

(declare-fun d!2015895 () Bool)

(assert (= bs!1617567 (and d!2015895 d!2015887)))

(declare-fun lambda!355811 () Int)

(assert (=> bs!1617567 (= (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) lt!2379353) (= lambda!355811 lambda!355804))))

(declare-fun bs!1617568 () Bool)

(assert (= bs!1617568 (and d!2015895 d!2015879)))

(assert (=> bs!1617568 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355811 lambda!355801))))

(declare-fun bs!1617569 () Bool)

(assert (= bs!1617569 (and d!2015895 b!6430115)))

(assert (=> bs!1617569 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355811 lambda!355717))))

(declare-fun bs!1617570 () Bool)

(assert (= bs!1617570 (and d!2015895 b!6430094)))

(assert (=> bs!1617570 (= (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) lt!2379353) (= lambda!355811 lambda!355719))))

(assert (=> bs!1617570 (not (= lambda!355811 lambda!355720))))

(declare-fun bs!1617571 () Bool)

(assert (= bs!1617571 (and d!2015895 b!6430128)))

(assert (=> bs!1617571 (not (= lambda!355811 lambda!355715))))

(declare-fun bs!1617572 () Bool)

(assert (= bs!1617572 (and d!2015895 d!2015881)))

(assert (=> bs!1617572 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355811 lambda!355802))))

(declare-fun bs!1617573 () Bool)

(assert (= bs!1617573 (and d!2015895 b!6430816)))

(assert (=> bs!1617573 (not (= lambda!355811 lambda!355773))))

(declare-fun bs!1617574 () Bool)

(assert (= bs!1617574 (and d!2015895 b!6430859)))

(assert (=> bs!1617574 (not (= lambda!355811 lambda!355779))))

(declare-fun bs!1617575 () Bool)

(assert (= bs!1617575 (and d!2015895 d!2015889)))

(assert (=> bs!1617575 (not (= lambda!355811 lambda!355806))))

(assert (=> bs!1617572 (not (= lambda!355811 lambda!355803))))

(declare-fun bs!1617576 () Bool)

(assert (= bs!1617576 (and d!2015895 b!6430810)))

(assert (=> bs!1617576 (not (= lambda!355811 lambda!355772))))

(assert (=> bs!1617570 (not (= lambda!355811 lambda!355721))))

(declare-fun bs!1617577 () Bool)

(assert (= bs!1617577 (and d!2015895 d!2015793)))

(assert (=> bs!1617577 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355811 lambda!355786))))

(declare-fun bs!1617578 () Bool)

(assert (= bs!1617578 (and d!2015895 b!6430865)))

(assert (=> bs!1617578 (not (= lambda!355811 lambda!355780))))

(assert (=> bs!1617575 (= (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) lt!2379353) (= lambda!355811 lambda!355805))))

(assert (=> bs!1617569 (not (= lambda!355811 lambda!355718))))

(assert (=> bs!1617571 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355811 lambda!355714))))

(declare-fun bs!1617579 () Bool)

(assert (= bs!1617579 (and d!2015895 d!2015829)))

(assert (=> bs!1617579 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355811 lambda!355796))))

(assert (=> bs!1617579 (not (= lambda!355811 lambda!355797))))

(assert (=> d!2015895 true))

(assert (=> d!2015895 true))

(declare-fun lambda!355812 () Int)

(assert (=> bs!1617567 (not (= lambda!355812 lambda!355804))))

(assert (=> bs!1617568 (not (= lambda!355812 lambda!355801))))

(assert (=> bs!1617569 (not (= lambda!355812 lambda!355717))))

(assert (=> bs!1617570 (not (= lambda!355812 lambda!355719))))

(assert (=> bs!1617570 (= (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) lt!2379353) (= lambda!355812 lambda!355720))))

(assert (=> bs!1617571 (not (= lambda!355812 lambda!355715))))

(assert (=> bs!1617572 (not (= lambda!355812 lambda!355802))))

(assert (=> bs!1617573 (not (= lambda!355812 lambda!355773))))

(declare-fun bs!1617580 () Bool)

(assert (= bs!1617580 d!2015895))

(assert (=> bs!1617580 (not (= lambda!355812 lambda!355811))))

(assert (=> bs!1617574 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (reg!16664 lt!2379346)) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) lt!2379346)) (= lambda!355812 lambda!355779))))

(assert (=> bs!1617575 (not (= lambda!355812 lambda!355806))))

(assert (=> bs!1617572 (not (= lambda!355812 lambda!355803))))

(assert (=> bs!1617576 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (reg!16664 r!7292)) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) r!7292)) (= lambda!355812 lambda!355772))))

(assert (=> bs!1617570 (not (= lambda!355812 lambda!355721))))

(assert (=> bs!1617577 (not (= lambda!355812 lambda!355786))))

(assert (=> bs!1617578 (not (= lambda!355812 lambda!355780))))

(assert (=> bs!1617575 (not (= lambda!355812 lambda!355805))))

(assert (=> bs!1617569 (not (= lambda!355812 lambda!355718))))

(assert (=> bs!1617571 (not (= lambda!355812 lambda!355714))))

(assert (=> bs!1617579 (not (= lambda!355812 lambda!355796))))

(assert (=> bs!1617579 (not (= lambda!355812 lambda!355797))))

(assert (=> d!2015895 true))

(assert (=> d!2015895 true))

(assert (=> d!2015895 (= (Exists!3405 lambda!355811) (Exists!3405 lambda!355812))))

(declare-fun lt!2379542 () Unit!158671)

(declare-fun choose!47833 (Regex!16335 List!65304) Unit!158671)

(assert (=> d!2015895 (= lt!2379542 (choose!47833 (reg!16664 (regOne!33182 r!7292)) (_1!36617 lt!2379368)))))

(assert (=> d!2015895 (validRegex!8071 (reg!16664 (regOne!33182 r!7292)))))

(assert (=> d!2015895 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!626 (reg!16664 (regOne!33182 r!7292)) (_1!36617 lt!2379368)) lt!2379542)))

(declare-fun m!7224802 () Bool)

(assert (=> bs!1617580 m!7224802))

(declare-fun m!7224804 () Bool)

(assert (=> bs!1617580 m!7224804))

(declare-fun m!7224806 () Bool)

(assert (=> bs!1617580 m!7224806))

(assert (=> bs!1617580 m!7224678))

(assert (=> b!6430094 d!2015895))

(declare-fun b!6431141 () Bool)

(declare-fun e!3901414 () List!65304)

(assert (=> b!6431141 (= e!3901414 (_2!36617 lt!2379342))))

(declare-fun b!6431142 () Bool)

(assert (=> b!6431142 (= e!3901414 (Cons!65180 (h!71628 (_1!36617 lt!2379342)) (++!14403 (t!378920 (_1!36617 lt!2379342)) (_2!36617 lt!2379342))))))

(declare-fun b!6431143 () Bool)

(declare-fun res!2643553 () Bool)

(declare-fun e!3901413 () Bool)

(assert (=> b!6431143 (=> (not res!2643553) (not e!3901413))))

(declare-fun lt!2379543 () List!65304)

(assert (=> b!6431143 (= res!2643553 (= (size!40394 lt!2379543) (+ (size!40394 (_1!36617 lt!2379342)) (size!40394 (_2!36617 lt!2379342)))))))

(declare-fun b!6431144 () Bool)

(assert (=> b!6431144 (= e!3901413 (or (not (= (_2!36617 lt!2379342) Nil!65180)) (= lt!2379543 (_1!36617 lt!2379342))))))

(declare-fun d!2015897 () Bool)

(assert (=> d!2015897 e!3901413))

(declare-fun res!2643552 () Bool)

(assert (=> d!2015897 (=> (not res!2643552) (not e!3901413))))

(assert (=> d!2015897 (= res!2643552 (= (content!12384 lt!2379543) ((_ map or) (content!12384 (_1!36617 lt!2379342)) (content!12384 (_2!36617 lt!2379342)))))))

(assert (=> d!2015897 (= lt!2379543 e!3901414)))

(declare-fun c!1175336 () Bool)

(assert (=> d!2015897 (= c!1175336 ((_ is Nil!65180) (_1!36617 lt!2379342)))))

(assert (=> d!2015897 (= (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342)) lt!2379543)))

(assert (= (and d!2015897 c!1175336) b!6431141))

(assert (= (and d!2015897 (not c!1175336)) b!6431142))

(assert (= (and d!2015897 res!2643552) b!6431143))

(assert (= (and b!6431143 res!2643553) b!6431144))

(declare-fun m!7224808 () Bool)

(assert (=> b!6431142 m!7224808))

(declare-fun m!7224810 () Bool)

(assert (=> b!6431143 m!7224810))

(assert (=> b!6431143 m!7224178))

(assert (=> b!6431143 m!7224206))

(declare-fun m!7224812 () Bool)

(assert (=> d!2015897 m!7224812))

(assert (=> d!2015897 m!7224184))

(assert (=> d!2015897 m!7224210))

(assert (=> b!6430094 d!2015897))

(declare-fun d!2015899 () Bool)

(assert (=> d!2015899 (= (matchR!8518 lt!2379353 (_1!36617 lt!2379368)) (matchRSpec!3436 lt!2379353 (_1!36617 lt!2379368)))))

(declare-fun lt!2379544 () Unit!158671)

(assert (=> d!2015899 (= lt!2379544 (choose!47829 lt!2379353 (_1!36617 lt!2379368)))))

(assert (=> d!2015899 (validRegex!8071 lt!2379353)))

(assert (=> d!2015899 (= (mainMatchTheorem!3436 lt!2379353 (_1!36617 lt!2379368)) lt!2379544)))

(declare-fun bs!1617581 () Bool)

(assert (= bs!1617581 d!2015899))

(assert (=> bs!1617581 m!7223744))

(assert (=> bs!1617581 m!7223722))

(declare-fun m!7224814 () Bool)

(assert (=> bs!1617581 m!7224814))

(assert (=> bs!1617581 m!7223958))

(assert (=> b!6430094 d!2015899))

(declare-fun d!2015901 () Bool)

(assert (=> d!2015901 (= (isDefined!12929 lt!2379340) (not (isEmpty!37352 lt!2379340)))))

(declare-fun bs!1617582 () Bool)

(assert (= bs!1617582 d!2015901))

(declare-fun m!7224816 () Bool)

(assert (=> bs!1617582 m!7224816))

(assert (=> b!6430094 d!2015901))

(declare-fun d!2015903 () Bool)

(assert (=> d!2015903 (= (get!22586 lt!2379340) (v!52398 lt!2379340))))

(assert (=> b!6430094 d!2015903))

(declare-fun bs!1617583 () Bool)

(declare-fun b!6431148 () Bool)

(assert (= bs!1617583 (and b!6431148 d!2015887)))

(declare-fun lambda!355813 () Int)

(assert (=> bs!1617583 (not (= lambda!355813 lambda!355804))))

(declare-fun bs!1617584 () Bool)

(assert (= bs!1617584 (and b!6431148 d!2015879)))

(assert (=> bs!1617584 (not (= lambda!355813 lambda!355801))))

(declare-fun bs!1617585 () Bool)

(assert (= bs!1617585 (and b!6431148 b!6430115)))

(assert (=> bs!1617585 (not (= lambda!355813 lambda!355717))))

(declare-fun bs!1617586 () Bool)

(assert (= bs!1617586 (and b!6431148 b!6430094)))

(assert (=> bs!1617586 (not (= lambda!355813 lambda!355719))))

(assert (=> bs!1617586 (= (= (reg!16664 lt!2379353) (reg!16664 (regOne!33182 r!7292))) (= lambda!355813 lambda!355720))))

(declare-fun bs!1617587 () Bool)

(assert (= bs!1617587 (and b!6431148 b!6430128)))

(assert (=> bs!1617587 (not (= lambda!355813 lambda!355715))))

(declare-fun bs!1617588 () Bool)

(assert (= bs!1617588 (and b!6431148 d!2015881)))

(assert (=> bs!1617588 (not (= lambda!355813 lambda!355802))))

(declare-fun bs!1617589 () Bool)

(assert (= bs!1617589 (and b!6431148 d!2015895)))

(assert (=> bs!1617589 (not (= lambda!355813 lambda!355811))))

(declare-fun bs!1617590 () Bool)

(assert (= bs!1617590 (and b!6431148 b!6430859)))

(assert (=> bs!1617590 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 lt!2379353) (reg!16664 lt!2379346)) (= lt!2379353 lt!2379346)) (= lambda!355813 lambda!355779))))

(declare-fun bs!1617591 () Bool)

(assert (= bs!1617591 (and b!6431148 d!2015889)))

(assert (=> bs!1617591 (not (= lambda!355813 lambda!355806))))

(assert (=> bs!1617588 (not (= lambda!355813 lambda!355803))))

(declare-fun bs!1617592 () Bool)

(assert (= bs!1617592 (and b!6431148 b!6430810)))

(assert (=> bs!1617592 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 lt!2379353) (reg!16664 r!7292)) (= lt!2379353 r!7292)) (= lambda!355813 lambda!355772))))

(assert (=> bs!1617586 (not (= lambda!355813 lambda!355721))))

(declare-fun bs!1617593 () Bool)

(assert (= bs!1617593 (and b!6431148 d!2015793)))

(assert (=> bs!1617593 (not (= lambda!355813 lambda!355786))))

(declare-fun bs!1617594 () Bool)

(assert (= bs!1617594 (and b!6431148 b!6430816)))

(assert (=> bs!1617594 (not (= lambda!355813 lambda!355773))))

(assert (=> bs!1617589 (= (and (= (reg!16664 lt!2379353) (reg!16664 (regOne!33182 r!7292))) (= lt!2379353 (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355813 lambda!355812))))

(declare-fun bs!1617595 () Bool)

(assert (= bs!1617595 (and b!6431148 b!6430865)))

(assert (=> bs!1617595 (not (= lambda!355813 lambda!355780))))

(assert (=> bs!1617591 (not (= lambda!355813 lambda!355805))))

(assert (=> bs!1617585 (not (= lambda!355813 lambda!355718))))

(assert (=> bs!1617587 (not (= lambda!355813 lambda!355714))))

(declare-fun bs!1617596 () Bool)

(assert (= bs!1617596 (and b!6431148 d!2015829)))

(assert (=> bs!1617596 (not (= lambda!355813 lambda!355796))))

(assert (=> bs!1617596 (not (= lambda!355813 lambda!355797))))

(assert (=> b!6431148 true))

(assert (=> b!6431148 true))

(declare-fun bs!1617597 () Bool)

(declare-fun b!6431154 () Bool)

(assert (= bs!1617597 (and b!6431154 d!2015887)))

(declare-fun lambda!355814 () Int)

(assert (=> bs!1617597 (not (= lambda!355814 lambda!355804))))

(declare-fun bs!1617598 () Bool)

(assert (= bs!1617598 (and b!6431154 d!2015879)))

(assert (=> bs!1617598 (not (= lambda!355814 lambda!355801))))

(declare-fun bs!1617599 () Bool)

(assert (= bs!1617599 (and b!6431154 b!6430115)))

(assert (=> bs!1617599 (not (= lambda!355814 lambda!355717))))

(declare-fun bs!1617600 () Bool)

(assert (= bs!1617600 (and b!6431154 b!6430094)))

(assert (=> bs!1617600 (not (= lambda!355814 lambda!355719))))

(assert (=> bs!1617600 (not (= lambda!355814 lambda!355720))))

(declare-fun bs!1617601 () Bool)

(assert (= bs!1617601 (and b!6431154 b!6430128)))

(assert (=> bs!1617601 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 lt!2379353) (regOne!33182 r!7292)) (= (regTwo!33182 lt!2379353) (regTwo!33182 r!7292))) (= lambda!355814 lambda!355715))))

(declare-fun bs!1617602 () Bool)

(assert (= bs!1617602 (and b!6431154 d!2015881)))

(assert (=> bs!1617602 (not (= lambda!355814 lambda!355802))))

(declare-fun bs!1617603 () Bool)

(assert (= bs!1617603 (and b!6431154 d!2015895)))

(assert (=> bs!1617603 (not (= lambda!355814 lambda!355811))))

(declare-fun bs!1617604 () Bool)

(assert (= bs!1617604 (and b!6431154 b!6430859)))

(assert (=> bs!1617604 (not (= lambda!355814 lambda!355779))))

(declare-fun bs!1617605 () Bool)

(assert (= bs!1617605 (and b!6431154 d!2015889)))

(assert (=> bs!1617605 (= (and (= (regOne!33182 lt!2379353) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 lt!2379353) lt!2379353)) (= lambda!355814 lambda!355806))))

(assert (=> bs!1617602 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 lt!2379353) lt!2379353) (= (regTwo!33182 lt!2379353) (regTwo!33182 r!7292))) (= lambda!355814 lambda!355803))))

(declare-fun bs!1617606 () Bool)

(assert (= bs!1617606 (and b!6431154 b!6430810)))

(assert (=> bs!1617606 (not (= lambda!355814 lambda!355772))))

(declare-fun bs!1617607 () Bool)

(assert (= bs!1617607 (and b!6431154 b!6431148)))

(assert (=> bs!1617607 (not (= lambda!355814 lambda!355813))))

(assert (=> bs!1617600 (= (and (= (regOne!33182 lt!2379353) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 lt!2379353) lt!2379353)) (= lambda!355814 lambda!355721))))

(declare-fun bs!1617608 () Bool)

(assert (= bs!1617608 (and b!6431154 d!2015793)))

(assert (=> bs!1617608 (not (= lambda!355814 lambda!355786))))

(declare-fun bs!1617609 () Bool)

(assert (= bs!1617609 (and b!6431154 b!6430816)))

(assert (=> bs!1617609 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 lt!2379353) (regOne!33182 r!7292)) (= (regTwo!33182 lt!2379353) (regTwo!33182 r!7292))) (= lambda!355814 lambda!355773))))

(assert (=> bs!1617603 (not (= lambda!355814 lambda!355812))))

(declare-fun bs!1617610 () Bool)

(assert (= bs!1617610 (and b!6431154 b!6430865)))

(assert (=> bs!1617610 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 lt!2379353) (regOne!33182 lt!2379346)) (= (regTwo!33182 lt!2379353) (regTwo!33182 lt!2379346))) (= lambda!355814 lambda!355780))))

(assert (=> bs!1617605 (not (= lambda!355814 lambda!355805))))

(assert (=> bs!1617599 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 lt!2379353) lt!2379353) (= (regTwo!33182 lt!2379353) (regTwo!33182 r!7292))) (= lambda!355814 lambda!355718))))

(assert (=> bs!1617601 (not (= lambda!355814 lambda!355714))))

(declare-fun bs!1617611 () Bool)

(assert (= bs!1617611 (and b!6431154 d!2015829)))

(assert (=> bs!1617611 (not (= lambda!355814 lambda!355796))))

(assert (=> bs!1617611 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 lt!2379353) (regOne!33182 r!7292)) (= (regTwo!33182 lt!2379353) (regTwo!33182 r!7292))) (= lambda!355814 lambda!355797))))

(assert (=> b!6431154 true))

(assert (=> b!6431154 true))

(declare-fun b!6431145 () Bool)

(declare-fun e!3901415 () Bool)

(declare-fun e!3901421 () Bool)

(assert (=> b!6431145 (= e!3901415 e!3901421)))

(declare-fun res!2643556 () Bool)

(assert (=> b!6431145 (= res!2643556 (matchRSpec!3436 (regOne!33183 lt!2379353) (_1!36617 lt!2379368)))))

(assert (=> b!6431145 (=> res!2643556 e!3901421)))

(declare-fun bm!553158 () Bool)

(declare-fun call!553164 () Bool)

(assert (=> bm!553158 (= call!553164 (isEmpty!37350 (_1!36617 lt!2379368)))))

(declare-fun b!6431146 () Bool)

(declare-fun res!2643554 () Bool)

(declare-fun e!3901419 () Bool)

(assert (=> b!6431146 (=> res!2643554 e!3901419)))

(assert (=> b!6431146 (= res!2643554 call!553164)))

(declare-fun e!3901418 () Bool)

(assert (=> b!6431146 (= e!3901418 e!3901419)))

(declare-fun b!6431147 () Bool)

(declare-fun e!3901417 () Bool)

(assert (=> b!6431147 (= e!3901417 (= (_1!36617 lt!2379368) (Cons!65180 (c!1175066 lt!2379353) Nil!65180)))))

(declare-fun call!553163 () Bool)

(assert (=> b!6431148 (= e!3901419 call!553163)))

(declare-fun b!6431149 () Bool)

(declare-fun e!3901420 () Bool)

(assert (=> b!6431149 (= e!3901420 call!553164)))

(declare-fun b!6431150 () Bool)

(assert (=> b!6431150 (= e!3901415 e!3901418)))

(declare-fun c!1175338 () Bool)

(assert (=> b!6431150 (= c!1175338 ((_ is Star!16335) lt!2379353))))

(declare-fun d!2015905 () Bool)

(declare-fun c!1175340 () Bool)

(assert (=> d!2015905 (= c!1175340 ((_ is EmptyExpr!16335) lt!2379353))))

(assert (=> d!2015905 (= (matchRSpec!3436 lt!2379353 (_1!36617 lt!2379368)) e!3901420)))

(declare-fun b!6431151 () Bool)

(declare-fun c!1175337 () Bool)

(assert (=> b!6431151 (= c!1175337 ((_ is Union!16335) lt!2379353))))

(assert (=> b!6431151 (= e!3901417 e!3901415)))

(declare-fun b!6431152 () Bool)

(assert (=> b!6431152 (= e!3901421 (matchRSpec!3436 (regTwo!33183 lt!2379353) (_1!36617 lt!2379368)))))

(declare-fun bm!553159 () Bool)

(assert (=> bm!553159 (= call!553163 (Exists!3405 (ite c!1175338 lambda!355813 lambda!355814)))))

(declare-fun b!6431153 () Bool)

(declare-fun c!1175339 () Bool)

(assert (=> b!6431153 (= c!1175339 ((_ is ElementMatch!16335) lt!2379353))))

(declare-fun e!3901416 () Bool)

(assert (=> b!6431153 (= e!3901416 e!3901417)))

(assert (=> b!6431154 (= e!3901418 call!553163)))

(declare-fun b!6431155 () Bool)

(assert (=> b!6431155 (= e!3901420 e!3901416)))

(declare-fun res!2643555 () Bool)

(assert (=> b!6431155 (= res!2643555 (not ((_ is EmptyLang!16335) lt!2379353)))))

(assert (=> b!6431155 (=> (not res!2643555) (not e!3901416))))

(assert (= (and d!2015905 c!1175340) b!6431149))

(assert (= (and d!2015905 (not c!1175340)) b!6431155))

(assert (= (and b!6431155 res!2643555) b!6431153))

(assert (= (and b!6431153 c!1175339) b!6431147))

(assert (= (and b!6431153 (not c!1175339)) b!6431151))

(assert (= (and b!6431151 c!1175337) b!6431145))

(assert (= (and b!6431151 (not c!1175337)) b!6431150))

(assert (= (and b!6431145 (not res!2643556)) b!6431152))

(assert (= (and b!6431150 c!1175338) b!6431146))

(assert (= (and b!6431150 (not c!1175338)) b!6431154))

(assert (= (and b!6431146 (not res!2643554)) b!6431148))

(assert (= (or b!6431148 b!6431154) bm!553159))

(assert (= (or b!6431149 b!6431146) bm!553158))

(declare-fun m!7224818 () Bool)

(assert (=> b!6431145 m!7224818))

(assert (=> bm!553158 m!7223754))

(declare-fun m!7224820 () Bool)

(assert (=> b!6431152 m!7224820))

(declare-fun m!7224822 () Bool)

(assert (=> bm!553159 m!7224822))

(assert (=> b!6430094 d!2015905))

(declare-fun bs!1617612 () Bool)

(declare-fun d!2015907 () Bool)

(assert (= bs!1617612 (and d!2015907 d!2015713)))

(declare-fun lambda!355817 () Int)

(assert (=> bs!1617612 (= lambda!355817 lambda!355764)))

(declare-fun bs!1617613 () Bool)

(assert (= bs!1617613 (and d!2015907 d!2015651)))

(assert (=> bs!1617613 (= lambda!355817 lambda!355744)))

(declare-fun bs!1617614 () Bool)

(assert (= bs!1617614 (and d!2015907 d!2015705)))

(assert (=> bs!1617614 (= lambda!355817 lambda!355761)))

(declare-fun bs!1617615 () Bool)

(assert (= bs!1617615 (and d!2015907 d!2015739)))

(assert (=> bs!1617615 (= lambda!355817 lambda!355765)))

(declare-fun bs!1617616 () Bool)

(assert (= bs!1617616 (and d!2015907 d!2015603)))

(assert (=> bs!1617616 (= lambda!355817 lambda!355733)))

(declare-fun b!6431177 () Bool)

(declare-fun e!3901434 () Bool)

(declare-fun lt!2379547 () Regex!16335)

(declare-fun isEmptyExpr!1736 (Regex!16335) Bool)

(assert (=> b!6431177 (= e!3901434 (isEmptyExpr!1736 lt!2379547))))

(declare-fun b!6431178 () Bool)

(declare-fun e!3901437 () Bool)

(declare-fun isConcat!1259 (Regex!16335) Bool)

(assert (=> b!6431178 (= e!3901437 (isConcat!1259 lt!2379547))))

(declare-fun b!6431179 () Bool)

(declare-fun e!3901439 () Regex!16335)

(assert (=> b!6431179 (= e!3901439 (Concat!25180 (h!71629 (exprs!6219 (h!71630 zl!343))) (generalisedConcat!1932 (t!378921 (exprs!6219 (h!71630 zl!343))))))))

(declare-fun b!6431180 () Bool)

(assert (=> b!6431180 (= e!3901434 e!3901437)))

(declare-fun c!1175350 () Bool)

(assert (=> b!6431180 (= c!1175350 (isEmpty!37349 (tail!12247 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun b!6431181 () Bool)

(assert (=> b!6431181 (= e!3901439 EmptyExpr!16335)))

(declare-fun b!6431182 () Bool)

(assert (=> b!6431182 (= e!3901437 (= lt!2379547 (head!13162 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun b!6431183 () Bool)

(declare-fun e!3901438 () Regex!16335)

(assert (=> b!6431183 (= e!3901438 (h!71629 (exprs!6219 (h!71630 zl!343))))))

(declare-fun b!6431184 () Bool)

(assert (=> b!6431184 (= e!3901438 e!3901439)))

(declare-fun c!1175349 () Bool)

(assert (=> b!6431184 (= c!1175349 ((_ is Cons!65181) (exprs!6219 (h!71630 zl!343))))))

(declare-fun b!6431185 () Bool)

(declare-fun e!3901436 () Bool)

(assert (=> b!6431185 (= e!3901436 e!3901434)))

(declare-fun c!1175352 () Bool)

(assert (=> b!6431185 (= c!1175352 (isEmpty!37349 (exprs!6219 (h!71630 zl!343))))))

(assert (=> d!2015907 e!3901436))

(declare-fun res!2643562 () Bool)

(assert (=> d!2015907 (=> (not res!2643562) (not e!3901436))))

(assert (=> d!2015907 (= res!2643562 (validRegex!8071 lt!2379547))))

(assert (=> d!2015907 (= lt!2379547 e!3901438)))

(declare-fun c!1175351 () Bool)

(declare-fun e!3901435 () Bool)

(assert (=> d!2015907 (= c!1175351 e!3901435)))

(declare-fun res!2643561 () Bool)

(assert (=> d!2015907 (=> (not res!2643561) (not e!3901435))))

(assert (=> d!2015907 (= res!2643561 ((_ is Cons!65181) (exprs!6219 (h!71630 zl!343))))))

(assert (=> d!2015907 (forall!15525 (exprs!6219 (h!71630 zl!343)) lambda!355817)))

(assert (=> d!2015907 (= (generalisedConcat!1932 (exprs!6219 (h!71630 zl!343))) lt!2379547)))

(declare-fun b!6431176 () Bool)

(assert (=> b!6431176 (= e!3901435 (isEmpty!37349 (t!378921 (exprs!6219 (h!71630 zl!343)))))))

(assert (= (and d!2015907 res!2643561) b!6431176))

(assert (= (and d!2015907 c!1175351) b!6431183))

(assert (= (and d!2015907 (not c!1175351)) b!6431184))

(assert (= (and b!6431184 c!1175349) b!6431179))

(assert (= (and b!6431184 (not c!1175349)) b!6431181))

(assert (= (and d!2015907 res!2643562) b!6431185))

(assert (= (and b!6431185 c!1175352) b!6431177))

(assert (= (and b!6431185 (not c!1175352)) b!6431180))

(assert (= (and b!6431180 c!1175350) b!6431182))

(assert (= (and b!6431180 (not c!1175350)) b!6431178))

(declare-fun m!7224824 () Bool)

(assert (=> b!6431180 m!7224824))

(assert (=> b!6431180 m!7224824))

(declare-fun m!7224826 () Bool)

(assert (=> b!6431180 m!7224826))

(declare-fun m!7224828 () Bool)

(assert (=> d!2015907 m!7224828))

(declare-fun m!7224830 () Bool)

(assert (=> d!2015907 m!7224830))

(declare-fun m!7224832 () Bool)

(assert (=> b!6431185 m!7224832))

(declare-fun m!7224834 () Bool)

(assert (=> b!6431177 m!7224834))

(declare-fun m!7224836 () Bool)

(assert (=> b!6431179 m!7224836))

(assert (=> b!6431176 m!7223788))

(declare-fun m!7224838 () Bool)

(assert (=> b!6431182 m!7224838))

(declare-fun m!7224840 () Bool)

(assert (=> b!6431178 m!7224840))

(assert (=> b!6430113 d!2015907))

(declare-fun d!2015909 () Bool)

(assert (=> d!2015909 (= (flatMap!1840 lt!2379369 lambda!355716) (dynLambda!25892 lambda!355716 lt!2379355))))

(declare-fun lt!2379548 () Unit!158671)

(assert (=> d!2015909 (= lt!2379548 (choose!47823 lt!2379369 lt!2379355 lambda!355716))))

(assert (=> d!2015909 (= lt!2379369 (store ((as const (Array Context!11438 Bool)) false) lt!2379355 true))))

(assert (=> d!2015909 (= (lemmaFlatMapOnSingletonSet!1366 lt!2379369 lt!2379355 lambda!355716) lt!2379548)))

(declare-fun b_lambda!244329 () Bool)

(assert (=> (not b_lambda!244329) (not d!2015909)))

(declare-fun bs!1617617 () Bool)

(assert (= bs!1617617 d!2015909))

(assert (=> bs!1617617 m!7223702))

(declare-fun m!7224842 () Bool)

(assert (=> bs!1617617 m!7224842))

(declare-fun m!7224844 () Bool)

(assert (=> bs!1617617 m!7224844))

(assert (=> bs!1617617 m!7223700))

(assert (=> b!6430092 d!2015909))

(declare-fun d!2015911 () Bool)

(assert (=> d!2015911 (= (flatMap!1840 lt!2379369 lambda!355716) (choose!47821 lt!2379369 lambda!355716))))

(declare-fun bs!1617618 () Bool)

(assert (= bs!1617618 d!2015911))

(declare-fun m!7224846 () Bool)

(assert (=> bs!1617618 m!7224846))

(assert (=> b!6430092 d!2015911))

(declare-fun d!2015913 () Bool)

(assert (=> d!2015913 (= (flatMap!1840 lt!2379349 lambda!355716) (choose!47821 lt!2379349 lambda!355716))))

(declare-fun bs!1617619 () Bool)

(assert (= bs!1617619 d!2015913))

(declare-fun m!7224848 () Bool)

(assert (=> bs!1617619 m!7224848))

(assert (=> b!6430092 d!2015913))

(declare-fun e!3901440 () (InoxSet Context!11438))

(declare-fun call!553165 () (InoxSet Context!11438))

(declare-fun b!6431186 () Bool)

(assert (=> b!6431186 (= e!3901440 ((_ map or) call!553165 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 lt!2379355))) (h!71628 s!2326))))))

(declare-fun d!2015915 () Bool)

(declare-fun c!1175354 () Bool)

(declare-fun e!3901441 () Bool)

(assert (=> d!2015915 (= c!1175354 e!3901441)))

(declare-fun res!2643563 () Bool)

(assert (=> d!2015915 (=> (not res!2643563) (not e!3901441))))

(assert (=> d!2015915 (= res!2643563 ((_ is Cons!65181) (exprs!6219 lt!2379355)))))

(assert (=> d!2015915 (= (derivationStepZipperUp!1509 lt!2379355 (h!71628 s!2326)) e!3901440)))

(declare-fun bm!553160 () Bool)

(assert (=> bm!553160 (= call!553165 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 lt!2379355)) (Context!11439 (t!378921 (exprs!6219 lt!2379355))) (h!71628 s!2326)))))

(declare-fun b!6431187 () Bool)

(declare-fun e!3901442 () (InoxSet Context!11438))

(assert (=> b!6431187 (= e!3901440 e!3901442)))

(declare-fun c!1175353 () Bool)

(assert (=> b!6431187 (= c!1175353 ((_ is Cons!65181) (exprs!6219 lt!2379355)))))

(declare-fun b!6431188 () Bool)

(assert (=> b!6431188 (= e!3901442 call!553165)))

(declare-fun b!6431189 () Bool)

(assert (=> b!6431189 (= e!3901442 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6431190 () Bool)

(assert (=> b!6431190 (= e!3901441 (nullable!6328 (h!71629 (exprs!6219 lt!2379355))))))

(assert (= (and d!2015915 res!2643563) b!6431190))

(assert (= (and d!2015915 c!1175354) b!6431186))

(assert (= (and d!2015915 (not c!1175354)) b!6431187))

(assert (= (and b!6431187 c!1175353) b!6431188))

(assert (= (and b!6431187 (not c!1175353)) b!6431189))

(assert (= (or b!6431186 b!6431188) bm!553160))

(declare-fun m!7224850 () Bool)

(assert (=> b!6431186 m!7224850))

(declare-fun m!7224852 () Bool)

(assert (=> bm!553160 m!7224852))

(declare-fun m!7224854 () Bool)

(assert (=> b!6431190 m!7224854))

(assert (=> b!6430092 d!2015915))

(declare-fun e!3901443 () (InoxSet Context!11438))

(declare-fun b!6431191 () Bool)

(declare-fun call!553166 () (InoxSet Context!11438))

(assert (=> b!6431191 (= e!3901443 ((_ map or) call!553166 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 lt!2379362))) (h!71628 s!2326))))))

(declare-fun d!2015917 () Bool)

(declare-fun c!1175356 () Bool)

(declare-fun e!3901444 () Bool)

(assert (=> d!2015917 (= c!1175356 e!3901444)))

(declare-fun res!2643564 () Bool)

(assert (=> d!2015917 (=> (not res!2643564) (not e!3901444))))

(assert (=> d!2015917 (= res!2643564 ((_ is Cons!65181) (exprs!6219 lt!2379362)))))

(assert (=> d!2015917 (= (derivationStepZipperUp!1509 lt!2379362 (h!71628 s!2326)) e!3901443)))

(declare-fun bm!553161 () Bool)

(assert (=> bm!553161 (= call!553166 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 lt!2379362)) (Context!11439 (t!378921 (exprs!6219 lt!2379362))) (h!71628 s!2326)))))

(declare-fun b!6431192 () Bool)

(declare-fun e!3901445 () (InoxSet Context!11438))

(assert (=> b!6431192 (= e!3901443 e!3901445)))

(declare-fun c!1175355 () Bool)

(assert (=> b!6431192 (= c!1175355 ((_ is Cons!65181) (exprs!6219 lt!2379362)))))

(declare-fun b!6431193 () Bool)

(assert (=> b!6431193 (= e!3901445 call!553166)))

(declare-fun b!6431194 () Bool)

(assert (=> b!6431194 (= e!3901445 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6431195 () Bool)

(assert (=> b!6431195 (= e!3901444 (nullable!6328 (h!71629 (exprs!6219 lt!2379362))))))

(assert (= (and d!2015917 res!2643564) b!6431195))

(assert (= (and d!2015917 c!1175356) b!6431191))

(assert (= (and d!2015917 (not c!1175356)) b!6431192))

(assert (= (and b!6431192 c!1175355) b!6431193))

(assert (= (and b!6431192 (not c!1175355)) b!6431194))

(assert (= (or b!6431191 b!6431193) bm!553161))

(declare-fun m!7224856 () Bool)

(assert (=> b!6431191 m!7224856))

(declare-fun m!7224858 () Bool)

(assert (=> bm!553161 m!7224858))

(declare-fun m!7224860 () Bool)

(assert (=> b!6431195 m!7224860))

(assert (=> b!6430092 d!2015917))

(declare-fun d!2015919 () Bool)

(declare-fun lt!2379549 () Regex!16335)

(assert (=> d!2015919 (validRegex!8071 lt!2379549)))

(assert (=> d!2015919 (= lt!2379549 (generalisedUnion!2179 (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182))))))

(assert (=> d!2015919 (= (unfocusZipper!2077 (Cons!65182 lt!2379362 Nil!65182)) lt!2379549)))

(declare-fun bs!1617620 () Bool)

(assert (= bs!1617620 d!2015919))

(declare-fun m!7224862 () Bool)

(assert (=> bs!1617620 m!7224862))

(declare-fun m!7224864 () Bool)

(assert (=> bs!1617620 m!7224864))

(assert (=> bs!1617620 m!7224864))

(declare-fun m!7224866 () Bool)

(assert (=> bs!1617620 m!7224866))

(assert (=> b!6430092 d!2015919))

(declare-fun d!2015921 () Bool)

(assert (=> d!2015921 (= (flatMap!1840 lt!2379349 lambda!355716) (dynLambda!25892 lambda!355716 lt!2379362))))

(declare-fun lt!2379550 () Unit!158671)

(assert (=> d!2015921 (= lt!2379550 (choose!47823 lt!2379349 lt!2379362 lambda!355716))))

(assert (=> d!2015921 (= lt!2379349 (store ((as const (Array Context!11438 Bool)) false) lt!2379362 true))))

(assert (=> d!2015921 (= (lemmaFlatMapOnSingletonSet!1366 lt!2379349 lt!2379362 lambda!355716) lt!2379550)))

(declare-fun b_lambda!244331 () Bool)

(assert (=> (not b_lambda!244331) (not d!2015921)))

(declare-fun bs!1617621 () Bool)

(assert (= bs!1617621 d!2015921))

(assert (=> bs!1617621 m!7223712))

(declare-fun m!7224868 () Bool)

(assert (=> bs!1617621 m!7224868))

(declare-fun m!7224870 () Bool)

(assert (=> bs!1617621 m!7224870))

(assert (=> bs!1617621 m!7223714))

(assert (=> b!6430092 d!2015921))

(declare-fun d!2015923 () Bool)

(assert (=> d!2015923 (= (isEmpty!37349 (t!378921 (exprs!6219 (h!71630 zl!343)))) ((_ is Nil!65181) (t!378921 (exprs!6219 (h!71630 zl!343)))))))

(assert (=> b!6430114 d!2015923))

(declare-fun b!6431207 () Bool)

(declare-fun e!3901448 () Bool)

(declare-fun tp!1784199 () Bool)

(declare-fun tp!1784203 () Bool)

(assert (=> b!6431207 (= e!3901448 (and tp!1784199 tp!1784203))))

(declare-fun b!6431209 () Bool)

(declare-fun tp!1784200 () Bool)

(declare-fun tp!1784201 () Bool)

(assert (=> b!6431209 (= e!3901448 (and tp!1784200 tp!1784201))))

(declare-fun b!6431206 () Bool)

(assert (=> b!6431206 (= e!3901448 tp_is_empty!41923)))

(assert (=> b!6430101 (= tp!1784123 e!3901448)))

(declare-fun b!6431208 () Bool)

(declare-fun tp!1784202 () Bool)

(assert (=> b!6431208 (= e!3901448 tp!1784202)))

(assert (= (and b!6430101 ((_ is ElementMatch!16335) (regOne!33183 r!7292))) b!6431206))

(assert (= (and b!6430101 ((_ is Concat!25180) (regOne!33183 r!7292))) b!6431207))

(assert (= (and b!6430101 ((_ is Star!16335) (regOne!33183 r!7292))) b!6431208))

(assert (= (and b!6430101 ((_ is Union!16335) (regOne!33183 r!7292))) b!6431209))

(declare-fun b!6431211 () Bool)

(declare-fun e!3901449 () Bool)

(declare-fun tp!1784204 () Bool)

(declare-fun tp!1784208 () Bool)

(assert (=> b!6431211 (= e!3901449 (and tp!1784204 tp!1784208))))

(declare-fun b!6431213 () Bool)

(declare-fun tp!1784205 () Bool)

(declare-fun tp!1784206 () Bool)

(assert (=> b!6431213 (= e!3901449 (and tp!1784205 tp!1784206))))

(declare-fun b!6431210 () Bool)

(assert (=> b!6431210 (= e!3901449 tp_is_empty!41923)))

(assert (=> b!6430101 (= tp!1784130 e!3901449)))

(declare-fun b!6431212 () Bool)

(declare-fun tp!1784207 () Bool)

(assert (=> b!6431212 (= e!3901449 tp!1784207)))

(assert (= (and b!6430101 ((_ is ElementMatch!16335) (regTwo!33183 r!7292))) b!6431210))

(assert (= (and b!6430101 ((_ is Concat!25180) (regTwo!33183 r!7292))) b!6431211))

(assert (= (and b!6430101 ((_ is Star!16335) (regTwo!33183 r!7292))) b!6431212))

(assert (= (and b!6430101 ((_ is Union!16335) (regTwo!33183 r!7292))) b!6431213))

(declare-fun b!6431218 () Bool)

(declare-fun e!3901452 () Bool)

(declare-fun tp!1784213 () Bool)

(declare-fun tp!1784214 () Bool)

(assert (=> b!6431218 (= e!3901452 (and tp!1784213 tp!1784214))))

(assert (=> b!6430127 (= tp!1784128 e!3901452)))

(assert (= (and b!6430127 ((_ is Cons!65181) (exprs!6219 setElem!43908))) b!6431218))

(declare-fun b!6431226 () Bool)

(declare-fun e!3901458 () Bool)

(declare-fun tp!1784219 () Bool)

(assert (=> b!6431226 (= e!3901458 tp!1784219)))

(declare-fun tp!1784220 () Bool)

(declare-fun b!6431225 () Bool)

(declare-fun e!3901457 () Bool)

(assert (=> b!6431225 (= e!3901457 (and (inv!84084 (h!71630 (t!378922 zl!343))) e!3901458 tp!1784220))))

(assert (=> b!6430118 (= tp!1784124 e!3901457)))

(assert (= b!6431225 b!6431226))

(assert (= (and b!6430118 ((_ is Cons!65182) (t!378922 zl!343))) b!6431225))

(declare-fun m!7224872 () Bool)

(assert (=> b!6431225 m!7224872))

(declare-fun b!6431228 () Bool)

(declare-fun e!3901459 () Bool)

(declare-fun tp!1784221 () Bool)

(declare-fun tp!1784225 () Bool)

(assert (=> b!6431228 (= e!3901459 (and tp!1784221 tp!1784225))))

(declare-fun b!6431230 () Bool)

(declare-fun tp!1784222 () Bool)

(declare-fun tp!1784223 () Bool)

(assert (=> b!6431230 (= e!3901459 (and tp!1784222 tp!1784223))))

(declare-fun b!6431227 () Bool)

(assert (=> b!6431227 (= e!3901459 tp_is_empty!41923)))

(assert (=> b!6430116 (= tp!1784121 e!3901459)))

(declare-fun b!6431229 () Bool)

(declare-fun tp!1784224 () Bool)

(assert (=> b!6431229 (= e!3901459 tp!1784224)))

(assert (= (and b!6430116 ((_ is ElementMatch!16335) (regOne!33182 r!7292))) b!6431227))

(assert (= (and b!6430116 ((_ is Concat!25180) (regOne!33182 r!7292))) b!6431228))

(assert (= (and b!6430116 ((_ is Star!16335) (regOne!33182 r!7292))) b!6431229))

(assert (= (and b!6430116 ((_ is Union!16335) (regOne!33182 r!7292))) b!6431230))

(declare-fun b!6431232 () Bool)

(declare-fun e!3901460 () Bool)

(declare-fun tp!1784226 () Bool)

(declare-fun tp!1784230 () Bool)

(assert (=> b!6431232 (= e!3901460 (and tp!1784226 tp!1784230))))

(declare-fun b!6431234 () Bool)

(declare-fun tp!1784227 () Bool)

(declare-fun tp!1784228 () Bool)

(assert (=> b!6431234 (= e!3901460 (and tp!1784227 tp!1784228))))

(declare-fun b!6431231 () Bool)

(assert (=> b!6431231 (= e!3901460 tp_is_empty!41923)))

(assert (=> b!6430116 (= tp!1784125 e!3901460)))

(declare-fun b!6431233 () Bool)

(declare-fun tp!1784229 () Bool)

(assert (=> b!6431233 (= e!3901460 tp!1784229)))

(assert (= (and b!6430116 ((_ is ElementMatch!16335) (regTwo!33182 r!7292))) b!6431231))

(assert (= (and b!6430116 ((_ is Concat!25180) (regTwo!33182 r!7292))) b!6431232))

(assert (= (and b!6430116 ((_ is Star!16335) (regTwo!33182 r!7292))) b!6431233))

(assert (= (and b!6430116 ((_ is Union!16335) (regTwo!33182 r!7292))) b!6431234))

(declare-fun b!6431236 () Bool)

(declare-fun e!3901461 () Bool)

(declare-fun tp!1784231 () Bool)

(declare-fun tp!1784235 () Bool)

(assert (=> b!6431236 (= e!3901461 (and tp!1784231 tp!1784235))))

(declare-fun b!6431238 () Bool)

(declare-fun tp!1784232 () Bool)

(declare-fun tp!1784233 () Bool)

(assert (=> b!6431238 (= e!3901461 (and tp!1784232 tp!1784233))))

(declare-fun b!6431235 () Bool)

(assert (=> b!6431235 (= e!3901461 tp_is_empty!41923)))

(assert (=> b!6430126 (= tp!1784122 e!3901461)))

(declare-fun b!6431237 () Bool)

(declare-fun tp!1784234 () Bool)

(assert (=> b!6431237 (= e!3901461 tp!1784234)))

(assert (= (and b!6430126 ((_ is ElementMatch!16335) (reg!16664 r!7292))) b!6431235))

(assert (= (and b!6430126 ((_ is Concat!25180) (reg!16664 r!7292))) b!6431236))

(assert (= (and b!6430126 ((_ is Star!16335) (reg!16664 r!7292))) b!6431237))

(assert (= (and b!6430126 ((_ is Union!16335) (reg!16664 r!7292))) b!6431238))

(declare-fun b!6431243 () Bool)

(declare-fun e!3901464 () Bool)

(declare-fun tp!1784238 () Bool)

(assert (=> b!6431243 (= e!3901464 (and tp_is_empty!41923 tp!1784238))))

(assert (=> b!6430090 (= tp!1784126 e!3901464)))

(assert (= (and b!6430090 ((_ is Cons!65180) (t!378920 s!2326))) b!6431243))

(declare-fun condSetEmpty!43914 () Bool)

(assert (=> setNonEmpty!43908 (= condSetEmpty!43914 (= setRest!43908 ((as const (Array Context!11438 Bool)) false)))))

(declare-fun setRes!43914 () Bool)

(assert (=> setNonEmpty!43908 (= tp!1784127 setRes!43914)))

(declare-fun setIsEmpty!43914 () Bool)

(assert (=> setIsEmpty!43914 setRes!43914))

(declare-fun tp!1784244 () Bool)

(declare-fun setNonEmpty!43914 () Bool)

(declare-fun setElem!43914 () Context!11438)

(declare-fun e!3901467 () Bool)

(assert (=> setNonEmpty!43914 (= setRes!43914 (and tp!1784244 (inv!84084 setElem!43914) e!3901467))))

(declare-fun setRest!43914 () (InoxSet Context!11438))

(assert (=> setNonEmpty!43914 (= setRest!43908 ((_ map or) (store ((as const (Array Context!11438 Bool)) false) setElem!43914 true) setRest!43914))))

(declare-fun b!6431248 () Bool)

(declare-fun tp!1784243 () Bool)

(assert (=> b!6431248 (= e!3901467 tp!1784243)))

(assert (= (and setNonEmpty!43908 condSetEmpty!43914) setIsEmpty!43914))

(assert (= (and setNonEmpty!43908 (not condSetEmpty!43914)) setNonEmpty!43914))

(assert (= setNonEmpty!43914 b!6431248))

(declare-fun m!7224874 () Bool)

(assert (=> setNonEmpty!43914 m!7224874))

(declare-fun b!6431249 () Bool)

(declare-fun e!3901468 () Bool)

(declare-fun tp!1784245 () Bool)

(declare-fun tp!1784246 () Bool)

(assert (=> b!6431249 (= e!3901468 (and tp!1784245 tp!1784246))))

(assert (=> b!6430108 (= tp!1784129 e!3901468)))

(assert (= (and b!6430108 ((_ is Cons!65181) (exprs!6219 (h!71630 zl!343)))) b!6431249))

(declare-fun b_lambda!244333 () Bool)

(assert (= b_lambda!244327 (or b!6430098 b_lambda!244333)))

(declare-fun bs!1617622 () Bool)

(declare-fun d!2015925 () Bool)

(assert (= bs!1617622 (and d!2015925 b!6430098)))

(assert (=> bs!1617622 (= (dynLambda!25892 lambda!355716 lt!2379364) (derivationStepZipperUp!1509 lt!2379364 (h!71628 s!2326)))))

(assert (=> bs!1617622 m!7223820))

(assert (=> d!2015863 d!2015925))

(declare-fun b_lambda!244335 () Bool)

(assert (= b_lambda!244329 (or b!6430098 b_lambda!244335)))

(declare-fun bs!1617623 () Bool)

(declare-fun d!2015927 () Bool)

(assert (= bs!1617623 (and d!2015927 b!6430098)))

(assert (=> bs!1617623 (= (dynLambda!25892 lambda!355716 lt!2379355) (derivationStepZipperUp!1509 lt!2379355 (h!71628 s!2326)))))

(assert (=> bs!1617623 m!7223706))

(assert (=> d!2015909 d!2015927))

(declare-fun b_lambda!244337 () Bool)

(assert (= b_lambda!244331 (or b!6430098 b_lambda!244337)))

(declare-fun bs!1617624 () Bool)

(declare-fun d!2015929 () Bool)

(assert (= bs!1617624 (and d!2015929 b!6430098)))

(assert (=> bs!1617624 (= (dynLambda!25892 lambda!355716 lt!2379362) (derivationStepZipperUp!1509 lt!2379362 (h!71628 s!2326)))))

(assert (=> bs!1617624 m!7223708))

(assert (=> d!2015921 d!2015929))

(declare-fun b_lambda!244339 () Bool)

(assert (= b_lambda!244311 (or b!6430098 b_lambda!244339)))

(declare-fun bs!1617625 () Bool)

(declare-fun d!2015931 () Bool)

(assert (= bs!1617625 (and d!2015931 b!6430098)))

(assert (=> bs!1617625 (= (dynLambda!25892 lambda!355716 (h!71630 zl!343)) (derivationStepZipperUp!1509 (h!71630 zl!343) (h!71628 s!2326)))))

(assert (=> bs!1617625 m!7223652))

(assert (=> d!2015677 d!2015931))

(check-sat (not d!2015677) (not b!6430466) (not b_lambda!244335) (not b!6430623) (not b!6430938) (not d!2015855) (not b!6430732) (not bm!553106) (not d!2015863) (not b!6430867) (not d!2015887) (not d!2015829) (not bm!553159) (not b!6430429) (not b!6431125) (not b!6431236) (not b!6431249) (not d!2015853) (not d!2015617) (not b!6431113) (not b!6430877) (not b!6431190) (not d!2015909) (not b!6431073) (not d!2015865) (not b!6430403) (not b!6430684) (not b!6431229) (not bm!553132) (not d!2015789) (not bs!1617625) (not b!6431195) (not bm!553107) (not b!6431116) (not d!2015891) (not b!6431243) (not d!2015769) (not d!2015911) (not b!6430873) (not b!6430731) (not d!2015901) (not bm!553101) (not d!2015897) (not d!2015921) (not b!6431059) (not b!6430699) (not b!6431124) (not b!6430471) (not b!6430847) (not d!2015807) (not b!6431178) (not bm!553131) (not bs!1617622) (not b!6431225) (not d!2015749) (not bm!553157) (not b!6430580) (not b!6431232) (not b!6431182) (not d!2015683) (not b!6430856) (not bm!553146) (not b!6431209) (not b!6430868) (not bm!553082) (not b!6430462) (not b!6431053) (not d!2015899) (not b!6431233) (not bm!553155) (not bm!553076) (not b!6431066) (not d!2015705) (not b!6430404) (not b!6430275) (not b!6431142) (not b!6431106) (not d!2015851) (not b!6430409) (not b!6431226) (not d!2015791) (not b!6431152) tp_is_empty!41923 (not b!6431248) (not b!6431180) (not b!6430842) (not b!6430584) (not d!2015889) (not d!2015611) (not b!6431237) (not b!6430277) (not b!6430675) (not b!6430852) (not b!6430678) (not b!6430854) (not b!6430423) (not b!6430567) (not d!2015907) (not d!2015657) (not b!6430863) (not b!6430552) (not d!2015693) (not d!2015735) (not d!2015695) (not b!6430242) (not b!6430588) (not d!2015699) (not b!6431185) (not b!6431062) (not b!6431112) (not b!6431230) (not b!6431117) (not b!6430705) (not b!6430843) (not b!6430829) (not b!6431228) (not d!2015893) (not bm!553133) (not d!2015881) (not b!6430727) (not d!2015649) (not d!2015919) (not b!6430940) (not b!6431218) (not d!2015859) (not d!2015623) (not bm!553114) (not bm!553117) (not b!6430322) (not b!6430872) (not d!2015613) (not b!6431143) (not b!6430941) (not d!2015879) (not bs!1617623) (not d!2015603) (not b!6430570) (not bm!553130) (not b!6430838) (not b!6430680) (not bm!553160) (not b!6430427) (not b!6431120) (not b!6431052) (not d!2015691) (not d!2015619) (not b!6430828) (not b!6431057) (not b!6431119) (not b!6431111) (not b!6430677) (not b!6431145) (not d!2015681) (not b!6431071) (not bm!553158) (not d!2015781) (not d!2015783) (not d!2015701) (not b!6431130) (not b!6431179) (not b!6430720) (not bm!553120) (not bs!1617624) (not bm!553119) (not b!6431234) (not b!6430415) (not b!6430422) (not b!6431177) (not b!6430682) (not b!6430542) (not b!6430276) (not b!6431126) (not b!6430726) (not bm!553154) (not bm!553129) (not b!6431127) (not d!2015793) (not b!6431047) (not b!6431213) (not b_lambda!244333) (not b!6431114) (not d!2015877) (not b!6430939) (not d!2015827) (not b!6430581) (not b!6430736) (not d!2015871) (not bm!553127) (not b!6430834) (not b!6431186) (not b!6430833) (not b!6430274) (not b!6431061) (not b!6430943) (not b!6430548) (not b!6431212) (not b!6431207) (not d!2015659) (not b!6431191) (not b!6431238) (not d!2015713) (not d!2015873) (not b!6430944) (not b!6430807) (not b!6430467) (not b!6431129) (not b!6430408) (not d!2015687) (not d!2015885) (not d!2015883) (not bm!553081) (not setNonEmpty!43914) (not b!6431208) (not b!6430589) (not bm!553161) (not b!6430417) (not b!6430569) (not d!2015869) (not bm!553128) (not d!2015895) (not b!6431102) (not d!2015773) (not b!6430585) (not d!2015771) (not b_lambda!244339) (not b!6430679) (not b!6430706) (not b!6431176) (not d!2015875) (not b_lambda!244337) (not b!6430840) (not bm!553147) (not b!6431211) (not d!2015913) (not bm!553077) (not d!2015739) (not b!6430738) (not b!6430879) (not d!2015651) (not b!6431067) (not d!2015747) (not b!6431048) (not d!2015631) (not b!6430413) (not d!2015655) (not b!6430848) (not b!6430814) (not bm!553104) (not b!6431094) (not b!6430568) (not b!6430418))
(check-sat)
(get-model)

(assert (=> d!2015899 d!2015855))

(assert (=> d!2015899 d!2015905))

(declare-fun d!2015933 () Bool)

(assert (=> d!2015933 (= (matchR!8518 lt!2379353 (_1!36617 lt!2379368)) (matchRSpec!3436 lt!2379353 (_1!36617 lt!2379368)))))

(assert (=> d!2015933 true))

(declare-fun _$88!5124 () Unit!158671)

(assert (=> d!2015933 (= (choose!47829 lt!2379353 (_1!36617 lt!2379368)) _$88!5124)))

(declare-fun bs!1617626 () Bool)

(assert (= bs!1617626 d!2015933))

(assert (=> bs!1617626 m!7223744))

(assert (=> bs!1617626 m!7223722))

(assert (=> d!2015899 d!2015933))

(declare-fun b!6431251 () Bool)

(declare-fun e!3901471 () Bool)

(declare-fun e!3901473 () Bool)

(assert (=> b!6431251 (= e!3901471 e!3901473)))

(declare-fun res!2643566 () Bool)

(assert (=> b!6431251 (= res!2643566 (not (nullable!6328 (reg!16664 lt!2379353))))))

(assert (=> b!6431251 (=> (not res!2643566) (not e!3901473))))

(declare-fun bm!553162 () Bool)

(declare-fun call!553167 () Bool)

(declare-fun c!1175358 () Bool)

(declare-fun c!1175357 () Bool)

(assert (=> bm!553162 (= call!553167 (validRegex!8071 (ite c!1175357 (reg!16664 lt!2379353) (ite c!1175358 (regOne!33183 lt!2379353) (regOne!33182 lt!2379353)))))))

(declare-fun b!6431252 () Bool)

(declare-fun e!3901470 () Bool)

(declare-fun call!553168 () Bool)

(assert (=> b!6431252 (= e!3901470 call!553168)))

(declare-fun b!6431253 () Bool)

(declare-fun e!3901475 () Bool)

(assert (=> b!6431253 (= e!3901471 e!3901475)))

(assert (=> b!6431253 (= c!1175358 ((_ is Union!16335) lt!2379353))))

(declare-fun b!6431254 () Bool)

(declare-fun e!3901474 () Bool)

(declare-fun e!3901469 () Bool)

(assert (=> b!6431254 (= e!3901474 e!3901469)))

(declare-fun res!2643569 () Bool)

(assert (=> b!6431254 (=> (not res!2643569) (not e!3901469))))

(declare-fun call!553169 () Bool)

(assert (=> b!6431254 (= res!2643569 call!553169)))

(declare-fun b!6431255 () Bool)

(declare-fun e!3901472 () Bool)

(assert (=> b!6431255 (= e!3901472 e!3901471)))

(assert (=> b!6431255 (= c!1175357 ((_ is Star!16335) lt!2379353))))

(declare-fun b!6431250 () Bool)

(declare-fun res!2643568 () Bool)

(assert (=> b!6431250 (=> res!2643568 e!3901474)))

(assert (=> b!6431250 (= res!2643568 (not ((_ is Concat!25180) lt!2379353)))))

(assert (=> b!6431250 (= e!3901475 e!3901474)))

(declare-fun d!2015935 () Bool)

(declare-fun res!2643567 () Bool)

(assert (=> d!2015935 (=> res!2643567 e!3901472)))

(assert (=> d!2015935 (= res!2643567 ((_ is ElementMatch!16335) lt!2379353))))

(assert (=> d!2015935 (= (validRegex!8071 lt!2379353) e!3901472)))

(declare-fun b!6431256 () Bool)

(declare-fun res!2643565 () Bool)

(assert (=> b!6431256 (=> (not res!2643565) (not e!3901470))))

(assert (=> b!6431256 (= res!2643565 call!553169)))

(assert (=> b!6431256 (= e!3901475 e!3901470)))

(declare-fun b!6431257 () Bool)

(assert (=> b!6431257 (= e!3901473 call!553167)))

(declare-fun bm!553163 () Bool)

(assert (=> bm!553163 (= call!553168 (validRegex!8071 (ite c!1175358 (regTwo!33183 lt!2379353) (regTwo!33182 lt!2379353))))))

(declare-fun bm!553164 () Bool)

(assert (=> bm!553164 (= call!553169 call!553167)))

(declare-fun b!6431258 () Bool)

(assert (=> b!6431258 (= e!3901469 call!553168)))

(assert (= (and d!2015935 (not res!2643567)) b!6431255))

(assert (= (and b!6431255 c!1175357) b!6431251))

(assert (= (and b!6431255 (not c!1175357)) b!6431253))

(assert (= (and b!6431251 res!2643566) b!6431257))

(assert (= (and b!6431253 c!1175358) b!6431256))

(assert (= (and b!6431253 (not c!1175358)) b!6431250))

(assert (= (and b!6431256 res!2643565) b!6431252))

(assert (= (and b!6431250 (not res!2643568)) b!6431254))

(assert (= (and b!6431254 res!2643569) b!6431258))

(assert (= (or b!6431252 b!6431258) bm!553163))

(assert (= (or b!6431256 b!6431254) bm!553164))

(assert (= (or b!6431257 bm!553164) bm!553162))

(declare-fun m!7224876 () Bool)

(assert (=> b!6431251 m!7224876))

(declare-fun m!7224878 () Bool)

(assert (=> bm!553162 m!7224878))

(declare-fun m!7224880 () Bool)

(assert (=> bm!553163 m!7224880))

(assert (=> d!2015899 d!2015935))

(declare-fun d!2015937 () Bool)

(assert (=> d!2015937 true))

(assert (=> d!2015937 true))

(declare-fun res!2643572 () Bool)

(assert (=> d!2015937 (= (choose!47830 lambda!355717) res!2643572)))

(assert (=> d!2015871 d!2015937))

(declare-fun d!2015939 () Bool)

(declare-fun e!3901481 () Bool)

(assert (=> d!2015939 e!3901481))

(declare-fun c!1175360 () Bool)

(assert (=> d!2015939 (= c!1175360 ((_ is EmptyExpr!16335) (Concat!25180 lt!2379353 (regTwo!33182 r!7292))))))

(declare-fun lt!2379551 () Bool)

(declare-fun e!3901476 () Bool)

(assert (=> d!2015939 (= lt!2379551 e!3901476)))

(declare-fun c!1175361 () Bool)

(assert (=> d!2015939 (= c!1175361 (isEmpty!37350 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368))))))

(assert (=> d!2015939 (validRegex!8071 (Concat!25180 lt!2379353 (regTwo!33182 r!7292)))))

(assert (=> d!2015939 (= (matchR!8518 (Concat!25180 lt!2379353 (regTwo!33182 r!7292)) (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368))) lt!2379551)))

(declare-fun e!3901480 () Bool)

(declare-fun b!6431259 () Bool)

(assert (=> b!6431259 (= e!3901480 (not (= (head!13161 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368))) (c!1175066 (Concat!25180 lt!2379353 (regTwo!33182 r!7292))))))))

(declare-fun b!6431260 () Bool)

(assert (=> b!6431260 (= e!3901476 (matchR!8518 (derivativeStep!5039 (Concat!25180 lt!2379353 (regTwo!33182 r!7292)) (head!13161 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368)))) (tail!12246 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368)))))))

(declare-fun b!6431261 () Bool)

(declare-fun res!2643574 () Bool)

(declare-fun e!3901479 () Bool)

(assert (=> b!6431261 (=> res!2643574 e!3901479)))

(declare-fun e!3901477 () Bool)

(assert (=> b!6431261 (= res!2643574 e!3901477)))

(declare-fun res!2643578 () Bool)

(assert (=> b!6431261 (=> (not res!2643578) (not e!3901477))))

(assert (=> b!6431261 (= res!2643578 lt!2379551)))

(declare-fun b!6431262 () Bool)

(declare-fun res!2643576 () Bool)

(assert (=> b!6431262 (=> res!2643576 e!3901479)))

(assert (=> b!6431262 (= res!2643576 (not ((_ is ElementMatch!16335) (Concat!25180 lt!2379353 (regTwo!33182 r!7292)))))))

(declare-fun e!3901478 () Bool)

(assert (=> b!6431262 (= e!3901478 e!3901479)))

(declare-fun b!6431263 () Bool)

(declare-fun e!3901482 () Bool)

(assert (=> b!6431263 (= e!3901479 e!3901482)))

(declare-fun res!2643579 () Bool)

(assert (=> b!6431263 (=> (not res!2643579) (not e!3901482))))

(assert (=> b!6431263 (= res!2643579 (not lt!2379551))))

(declare-fun b!6431264 () Bool)

(declare-fun res!2643577 () Bool)

(assert (=> b!6431264 (=> res!2643577 e!3901480)))

(assert (=> b!6431264 (= res!2643577 (not (isEmpty!37350 (tail!12246 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368))))))))

(declare-fun b!6431265 () Bool)

(assert (=> b!6431265 (= e!3901476 (nullable!6328 (Concat!25180 lt!2379353 (regTwo!33182 r!7292))))))

(declare-fun b!6431266 () Bool)

(assert (=> b!6431266 (= e!3901481 e!3901478)))

(declare-fun c!1175359 () Bool)

(assert (=> b!6431266 (= c!1175359 ((_ is EmptyLang!16335) (Concat!25180 lt!2379353 (regTwo!33182 r!7292))))))

(declare-fun b!6431267 () Bool)

(declare-fun call!553170 () Bool)

(assert (=> b!6431267 (= e!3901481 (= lt!2379551 call!553170))))

(declare-fun b!6431268 () Bool)

(assert (=> b!6431268 (= e!3901478 (not lt!2379551))))

(declare-fun b!6431269 () Bool)

(declare-fun res!2643580 () Bool)

(assert (=> b!6431269 (=> (not res!2643580) (not e!3901477))))

(assert (=> b!6431269 (= res!2643580 (isEmpty!37350 (tail!12246 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368)))))))

(declare-fun b!6431270 () Bool)

(assert (=> b!6431270 (= e!3901482 e!3901480)))

(declare-fun res!2643573 () Bool)

(assert (=> b!6431270 (=> res!2643573 e!3901480)))

(assert (=> b!6431270 (= res!2643573 call!553170)))

(declare-fun b!6431271 () Bool)

(assert (=> b!6431271 (= e!3901477 (= (head!13161 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368))) (c!1175066 (Concat!25180 lt!2379353 (regTwo!33182 r!7292)))))))

(declare-fun bm!553165 () Bool)

(assert (=> bm!553165 (= call!553170 (isEmpty!37350 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368))))))

(declare-fun b!6431272 () Bool)

(declare-fun res!2643575 () Bool)

(assert (=> b!6431272 (=> (not res!2643575) (not e!3901477))))

(assert (=> b!6431272 (= res!2643575 (not call!553170))))

(assert (= (and d!2015939 c!1175361) b!6431265))

(assert (= (and d!2015939 (not c!1175361)) b!6431260))

(assert (= (and d!2015939 c!1175360) b!6431267))

(assert (= (and d!2015939 (not c!1175360)) b!6431266))

(assert (= (and b!6431266 c!1175359) b!6431268))

(assert (= (and b!6431266 (not c!1175359)) b!6431262))

(assert (= (and b!6431262 (not res!2643576)) b!6431261))

(assert (= (and b!6431261 res!2643578) b!6431272))

(assert (= (and b!6431272 res!2643575) b!6431269))

(assert (= (and b!6431269 res!2643580) b!6431271))

(assert (= (and b!6431261 (not res!2643574)) b!6431263))

(assert (= (and b!6431263 res!2643579) b!6431270))

(assert (= (and b!6431270 (not res!2643573)) b!6431264))

(assert (= (and b!6431264 (not res!2643577)) b!6431259))

(assert (= (or b!6431267 b!6431272 b!6431270) bm!553165))

(assert (=> d!2015939 m!7223766))

(declare-fun m!7224882 () Bool)

(assert (=> d!2015939 m!7224882))

(declare-fun m!7224884 () Bool)

(assert (=> d!2015939 m!7224884))

(assert (=> b!6431259 m!7223766))

(declare-fun m!7224886 () Bool)

(assert (=> b!6431259 m!7224886))

(assert (=> b!6431269 m!7223766))

(declare-fun m!7224888 () Bool)

(assert (=> b!6431269 m!7224888))

(assert (=> b!6431269 m!7224888))

(declare-fun m!7224890 () Bool)

(assert (=> b!6431269 m!7224890))

(assert (=> b!6431264 m!7223766))

(assert (=> b!6431264 m!7224888))

(assert (=> b!6431264 m!7224888))

(assert (=> b!6431264 m!7224890))

(assert (=> b!6431271 m!7223766))

(assert (=> b!6431271 m!7224886))

(assert (=> bm!553165 m!7223766))

(assert (=> bm!553165 m!7224882))

(declare-fun m!7224892 () Bool)

(assert (=> b!6431265 m!7224892))

(assert (=> b!6431260 m!7223766))

(assert (=> b!6431260 m!7224886))

(assert (=> b!6431260 m!7224886))

(declare-fun m!7224894 () Bool)

(assert (=> b!6431260 m!7224894))

(assert (=> b!6431260 m!7223766))

(assert (=> b!6431260 m!7224888))

(assert (=> b!6431260 m!7224894))

(assert (=> b!6431260 m!7224888))

(declare-fun m!7224896 () Bool)

(assert (=> b!6431260 m!7224896))

(assert (=> d!2015623 d!2015939))

(assert (=> d!2015623 d!2015693))

(declare-fun d!2015941 () Bool)

(assert (=> d!2015941 (matchR!8518 (Concat!25180 lt!2379353 (regTwo!33182 r!7292)) (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368)))))

(assert (=> d!2015941 true))

(declare-fun _$119!447 () Unit!158671)

(assert (=> d!2015941 (= (choose!47820 lt!2379353 (regTwo!33182 r!7292) (_2!36617 lt!2379342) (_2!36617 lt!2379368)) _$119!447)))

(declare-fun bs!1617627 () Bool)

(assert (= bs!1617627 d!2015941))

(assert (=> bs!1617627 m!7223766))

(assert (=> bs!1617627 m!7223766))

(assert (=> bs!1617627 m!7223954))

(assert (=> d!2015623 d!2015941))

(assert (=> d!2015623 d!2015935))

(declare-fun b!6431273 () Bool)

(declare-fun e!3901484 () List!65304)

(assert (=> b!6431273 (= e!3901484 (_2!36617 (get!22586 lt!2379531)))))

(declare-fun b!6431274 () Bool)

(assert (=> b!6431274 (= e!3901484 (Cons!65180 (h!71628 (_1!36617 (get!22586 lt!2379531))) (++!14403 (t!378920 (_1!36617 (get!22586 lt!2379531))) (_2!36617 (get!22586 lt!2379531)))))))

(declare-fun b!6431275 () Bool)

(declare-fun res!2643582 () Bool)

(declare-fun e!3901483 () Bool)

(assert (=> b!6431275 (=> (not res!2643582) (not e!3901483))))

(declare-fun lt!2379552 () List!65304)

(assert (=> b!6431275 (= res!2643582 (= (size!40394 lt!2379552) (+ (size!40394 (_1!36617 (get!22586 lt!2379531))) (size!40394 (_2!36617 (get!22586 lt!2379531))))))))

(declare-fun b!6431276 () Bool)

(assert (=> b!6431276 (= e!3901483 (or (not (= (_2!36617 (get!22586 lt!2379531)) Nil!65180)) (= lt!2379552 (_1!36617 (get!22586 lt!2379531)))))))

(declare-fun d!2015943 () Bool)

(assert (=> d!2015943 e!3901483))

(declare-fun res!2643581 () Bool)

(assert (=> d!2015943 (=> (not res!2643581) (not e!3901483))))

(assert (=> d!2015943 (= res!2643581 (= (content!12384 lt!2379552) ((_ map or) (content!12384 (_1!36617 (get!22586 lt!2379531))) (content!12384 (_2!36617 (get!22586 lt!2379531))))))))

(assert (=> d!2015943 (= lt!2379552 e!3901484)))

(declare-fun c!1175362 () Bool)

(assert (=> d!2015943 (= c!1175362 ((_ is Nil!65180) (_1!36617 (get!22586 lt!2379531))))))

(assert (=> d!2015943 (= (++!14403 (_1!36617 (get!22586 lt!2379531)) (_2!36617 (get!22586 lt!2379531))) lt!2379552)))

(assert (= (and d!2015943 c!1175362) b!6431273))

(assert (= (and d!2015943 (not c!1175362)) b!6431274))

(assert (= (and d!2015943 res!2643581) b!6431275))

(assert (= (and b!6431275 res!2643582) b!6431276))

(declare-fun m!7224898 () Bool)

(assert (=> b!6431274 m!7224898))

(declare-fun m!7224900 () Bool)

(assert (=> b!6431275 m!7224900))

(declare-fun m!7224902 () Bool)

(assert (=> b!6431275 m!7224902))

(declare-fun m!7224904 () Bool)

(assert (=> b!6431275 m!7224904))

(declare-fun m!7224906 () Bool)

(assert (=> d!2015943 m!7224906))

(declare-fun m!7224908 () Bool)

(assert (=> d!2015943 m!7224908))

(declare-fun m!7224910 () Bool)

(assert (=> d!2015943 m!7224910))

(assert (=> b!6431113 d!2015943))

(declare-fun d!2015945 () Bool)

(assert (=> d!2015945 (= (get!22586 lt!2379531) (v!52398 lt!2379531))))

(assert (=> b!6431113 d!2015945))

(declare-fun b!6431277 () Bool)

(declare-fun e!3901486 () List!65304)

(assert (=> b!6431277 (= e!3901486 (_2!36617 (get!22586 lt!2379537)))))

(declare-fun b!6431278 () Bool)

(assert (=> b!6431278 (= e!3901486 (Cons!65180 (h!71628 (_1!36617 (get!22586 lt!2379537))) (++!14403 (t!378920 (_1!36617 (get!22586 lt!2379537))) (_2!36617 (get!22586 lt!2379537)))))))

(declare-fun b!6431279 () Bool)

(declare-fun res!2643584 () Bool)

(declare-fun e!3901485 () Bool)

(assert (=> b!6431279 (=> (not res!2643584) (not e!3901485))))

(declare-fun lt!2379553 () List!65304)

(assert (=> b!6431279 (= res!2643584 (= (size!40394 lt!2379553) (+ (size!40394 (_1!36617 (get!22586 lt!2379537))) (size!40394 (_2!36617 (get!22586 lt!2379537))))))))

(declare-fun b!6431280 () Bool)

(assert (=> b!6431280 (= e!3901485 (or (not (= (_2!36617 (get!22586 lt!2379537)) Nil!65180)) (= lt!2379553 (_1!36617 (get!22586 lt!2379537)))))))

(declare-fun d!2015947 () Bool)

(assert (=> d!2015947 e!3901485))

(declare-fun res!2643583 () Bool)

(assert (=> d!2015947 (=> (not res!2643583) (not e!3901485))))

(assert (=> d!2015947 (= res!2643583 (= (content!12384 lt!2379553) ((_ map or) (content!12384 (_1!36617 (get!22586 lt!2379537))) (content!12384 (_2!36617 (get!22586 lt!2379537))))))))

(assert (=> d!2015947 (= lt!2379553 e!3901486)))

(declare-fun c!1175363 () Bool)

(assert (=> d!2015947 (= c!1175363 ((_ is Nil!65180) (_1!36617 (get!22586 lt!2379537))))))

(assert (=> d!2015947 (= (++!14403 (_1!36617 (get!22586 lt!2379537)) (_2!36617 (get!22586 lt!2379537))) lt!2379553)))

(assert (= (and d!2015947 c!1175363) b!6431277))

(assert (= (and d!2015947 (not c!1175363)) b!6431278))

(assert (= (and d!2015947 res!2643583) b!6431279))

(assert (= (and b!6431279 res!2643584) b!6431280))

(declare-fun m!7224912 () Bool)

(assert (=> b!6431278 m!7224912))

(declare-fun m!7224914 () Bool)

(assert (=> b!6431279 m!7224914))

(declare-fun m!7224916 () Bool)

(assert (=> b!6431279 m!7224916))

(declare-fun m!7224918 () Bool)

(assert (=> b!6431279 m!7224918))

(declare-fun m!7224920 () Bool)

(assert (=> d!2015947 m!7224920))

(declare-fun m!7224922 () Bool)

(assert (=> d!2015947 m!7224922))

(declare-fun m!7224924 () Bool)

(assert (=> d!2015947 m!7224924))

(assert (=> b!6431126 d!2015947))

(declare-fun d!2015949 () Bool)

(assert (=> d!2015949 (= (get!22586 lt!2379537) (v!52398 lt!2379537))))

(assert (=> b!6431126 d!2015949))

(declare-fun d!2015951 () Bool)

(assert (=> d!2015951 true))

(assert (=> d!2015951 true))

(declare-fun res!2643585 () Bool)

(assert (=> d!2015951 (= (choose!47830 lambda!355714) res!2643585)))

(assert (=> d!2015791 d!2015951))

(declare-fun d!2015953 () Bool)

(assert (=> d!2015953 (= (Exists!3405 lambda!355811) (choose!47830 lambda!355811))))

(declare-fun bs!1617628 () Bool)

(assert (= bs!1617628 d!2015953))

(declare-fun m!7224926 () Bool)

(assert (=> bs!1617628 m!7224926))

(assert (=> d!2015895 d!2015953))

(declare-fun d!2015955 () Bool)

(assert (=> d!2015955 (= (Exists!3405 lambda!355812) (choose!47830 lambda!355812))))

(declare-fun bs!1617629 () Bool)

(assert (= bs!1617629 d!2015955))

(declare-fun m!7224928 () Bool)

(assert (=> bs!1617629 m!7224928))

(assert (=> d!2015895 d!2015955))

(declare-fun bs!1617630 () Bool)

(declare-fun d!2015957 () Bool)

(assert (= bs!1617630 (and d!2015957 d!2015887)))

(declare-fun lambda!355822 () Int)

(assert (=> bs!1617630 (= (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) lt!2379353) (= lambda!355822 lambda!355804))))

(declare-fun bs!1617631 () Bool)

(assert (= bs!1617631 (and d!2015957 d!2015879)))

(assert (=> bs!1617631 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355822 lambda!355801))))

(declare-fun bs!1617632 () Bool)

(assert (= bs!1617632 (and d!2015957 b!6430115)))

(assert (=> bs!1617632 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355822 lambda!355717))))

(declare-fun bs!1617633 () Bool)

(assert (= bs!1617633 (and d!2015957 b!6430094)))

(assert (=> bs!1617633 (= (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) lt!2379353) (= lambda!355822 lambda!355719))))

(assert (=> bs!1617633 (not (= lambda!355822 lambda!355720))))

(declare-fun bs!1617634 () Bool)

(assert (= bs!1617634 (and d!2015957 d!2015881)))

(assert (=> bs!1617634 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355822 lambda!355802))))

(declare-fun bs!1617635 () Bool)

(assert (= bs!1617635 (and d!2015957 d!2015895)))

(assert (=> bs!1617635 (= lambda!355822 lambda!355811)))

(declare-fun bs!1617636 () Bool)

(assert (= bs!1617636 (and d!2015957 b!6430859)))

(assert (=> bs!1617636 (not (= lambda!355822 lambda!355779))))

(declare-fun bs!1617637 () Bool)

(assert (= bs!1617637 (and d!2015957 d!2015889)))

(assert (=> bs!1617637 (not (= lambda!355822 lambda!355806))))

(assert (=> bs!1617634 (not (= lambda!355822 lambda!355803))))

(declare-fun bs!1617638 () Bool)

(assert (= bs!1617638 (and d!2015957 b!6430810)))

(assert (=> bs!1617638 (not (= lambda!355822 lambda!355772))))

(declare-fun bs!1617639 () Bool)

(assert (= bs!1617639 (and d!2015957 b!6431148)))

(assert (=> bs!1617639 (not (= lambda!355822 lambda!355813))))

(assert (=> bs!1617633 (not (= lambda!355822 lambda!355721))))

(declare-fun bs!1617640 () Bool)

(assert (= bs!1617640 (and d!2015957 d!2015793)))

(assert (=> bs!1617640 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355822 lambda!355786))))

(declare-fun bs!1617641 () Bool)

(assert (= bs!1617641 (and d!2015957 b!6431154)))

(assert (=> bs!1617641 (not (= lambda!355822 lambda!355814))))

(declare-fun bs!1617642 () Bool)

(assert (= bs!1617642 (and d!2015957 b!6430128)))

(assert (=> bs!1617642 (not (= lambda!355822 lambda!355715))))

(declare-fun bs!1617643 () Bool)

(assert (= bs!1617643 (and d!2015957 b!6430816)))

(assert (=> bs!1617643 (not (= lambda!355822 lambda!355773))))

(assert (=> bs!1617635 (not (= lambda!355822 lambda!355812))))

(declare-fun bs!1617644 () Bool)

(assert (= bs!1617644 (and d!2015957 b!6430865)))

(assert (=> bs!1617644 (not (= lambda!355822 lambda!355780))))

(assert (=> bs!1617637 (= (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) lt!2379353) (= lambda!355822 lambda!355805))))

(assert (=> bs!1617632 (not (= lambda!355822 lambda!355718))))

(assert (=> bs!1617642 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355822 lambda!355714))))

(declare-fun bs!1617645 () Bool)

(assert (= bs!1617645 (and d!2015957 d!2015829)))

(assert (=> bs!1617645 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 r!7292))) (= lambda!355822 lambda!355796))))

(assert (=> bs!1617645 (not (= lambda!355822 lambda!355797))))

(assert (=> d!2015957 true))

(assert (=> d!2015957 true))

(declare-fun lambda!355823 () Int)

(assert (=> bs!1617630 (not (= lambda!355823 lambda!355804))))

(assert (=> bs!1617631 (not (= lambda!355823 lambda!355801))))

(assert (=> bs!1617632 (not (= lambda!355823 lambda!355717))))

(assert (=> bs!1617633 (not (= lambda!355823 lambda!355719))))

(assert (=> bs!1617633 (= (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) lt!2379353) (= lambda!355823 lambda!355720))))

(assert (=> bs!1617634 (not (= lambda!355823 lambda!355802))))

(assert (=> bs!1617635 (not (= lambda!355823 lambda!355811))))

(assert (=> bs!1617636 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (reg!16664 lt!2379346)) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) lt!2379346)) (= lambda!355823 lambda!355779))))

(assert (=> bs!1617637 (not (= lambda!355823 lambda!355806))))

(assert (=> bs!1617634 (not (= lambda!355823 lambda!355803))))

(assert (=> bs!1617638 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (reg!16664 r!7292)) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) r!7292)) (= lambda!355823 lambda!355772))))

(assert (=> bs!1617639 (= (and (= (reg!16664 (regOne!33182 r!7292)) (reg!16664 lt!2379353)) (= (Star!16335 (reg!16664 (regOne!33182 r!7292))) lt!2379353)) (= lambda!355823 lambda!355813))))

(assert (=> bs!1617633 (not (= lambda!355823 lambda!355721))))

(assert (=> bs!1617640 (not (= lambda!355823 lambda!355786))))

(assert (=> bs!1617641 (not (= lambda!355823 lambda!355814))))

(assert (=> bs!1617642 (not (= lambda!355823 lambda!355715))))

(assert (=> bs!1617643 (not (= lambda!355823 lambda!355773))))

(assert (=> bs!1617635 (= lambda!355823 lambda!355812)))

(assert (=> bs!1617644 (not (= lambda!355823 lambda!355780))))

(assert (=> bs!1617637 (not (= lambda!355823 lambda!355805))))

(declare-fun bs!1617646 () Bool)

(assert (= bs!1617646 d!2015957))

(assert (=> bs!1617646 (not (= lambda!355823 lambda!355822))))

(assert (=> bs!1617632 (not (= lambda!355823 lambda!355718))))

(assert (=> bs!1617642 (not (= lambda!355823 lambda!355714))))

(assert (=> bs!1617645 (not (= lambda!355823 lambda!355796))))

(assert (=> bs!1617645 (not (= lambda!355823 lambda!355797))))

(assert (=> d!2015957 true))

(assert (=> d!2015957 true))

(assert (=> d!2015957 (= (Exists!3405 lambda!355822) (Exists!3405 lambda!355823))))

(assert (=> d!2015957 true))

(declare-fun _$91!572 () Unit!158671)

(assert (=> d!2015957 (= (choose!47833 (reg!16664 (regOne!33182 r!7292)) (_1!36617 lt!2379368)) _$91!572)))

(declare-fun m!7224930 () Bool)

(assert (=> bs!1617646 m!7224930))

(declare-fun m!7224932 () Bool)

(assert (=> bs!1617646 m!7224932))

(assert (=> d!2015895 d!2015957))

(declare-fun b!6431292 () Bool)

(declare-fun e!3901493 () Bool)

(declare-fun e!3901495 () Bool)

(assert (=> b!6431292 (= e!3901493 e!3901495)))

(declare-fun res!2643597 () Bool)

(assert (=> b!6431292 (= res!2643597 (not (nullable!6328 (reg!16664 (reg!16664 (regOne!33182 r!7292))))))))

(assert (=> b!6431292 (=> (not res!2643597) (not e!3901495))))

(declare-fun call!553171 () Bool)

(declare-fun c!1175364 () Bool)

(declare-fun bm!553166 () Bool)

(declare-fun c!1175365 () Bool)

(assert (=> bm!553166 (= call!553171 (validRegex!8071 (ite c!1175364 (reg!16664 (reg!16664 (regOne!33182 r!7292))) (ite c!1175365 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292)))))))))

(declare-fun b!6431293 () Bool)

(declare-fun e!3901492 () Bool)

(declare-fun call!553172 () Bool)

(assert (=> b!6431293 (= e!3901492 call!553172)))

(declare-fun b!6431294 () Bool)

(declare-fun e!3901497 () Bool)

(assert (=> b!6431294 (= e!3901493 e!3901497)))

(assert (=> b!6431294 (= c!1175365 ((_ is Union!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6431295 () Bool)

(declare-fun e!3901496 () Bool)

(declare-fun e!3901491 () Bool)

(assert (=> b!6431295 (= e!3901496 e!3901491)))

(declare-fun res!2643600 () Bool)

(assert (=> b!6431295 (=> (not res!2643600) (not e!3901491))))

(declare-fun call!553173 () Bool)

(assert (=> b!6431295 (= res!2643600 call!553173)))

(declare-fun b!6431296 () Bool)

(declare-fun e!3901494 () Bool)

(assert (=> b!6431296 (= e!3901494 e!3901493)))

(assert (=> b!6431296 (= c!1175364 ((_ is Star!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6431291 () Bool)

(declare-fun res!2643599 () Bool)

(assert (=> b!6431291 (=> res!2643599 e!3901496)))

(assert (=> b!6431291 (= res!2643599 (not ((_ is Concat!25180) (reg!16664 (regOne!33182 r!7292)))))))

(assert (=> b!6431291 (= e!3901497 e!3901496)))

(declare-fun d!2015959 () Bool)

(declare-fun res!2643598 () Bool)

(assert (=> d!2015959 (=> res!2643598 e!3901494)))

(assert (=> d!2015959 (= res!2643598 ((_ is ElementMatch!16335) (reg!16664 (regOne!33182 r!7292))))))

(assert (=> d!2015959 (= (validRegex!8071 (reg!16664 (regOne!33182 r!7292))) e!3901494)))

(declare-fun b!6431297 () Bool)

(declare-fun res!2643596 () Bool)

(assert (=> b!6431297 (=> (not res!2643596) (not e!3901492))))

(assert (=> b!6431297 (= res!2643596 call!553173)))

(assert (=> b!6431297 (= e!3901497 e!3901492)))

(declare-fun b!6431298 () Bool)

(assert (=> b!6431298 (= e!3901495 call!553171)))

(declare-fun bm!553167 () Bool)

(assert (=> bm!553167 (= call!553172 (validRegex!8071 (ite c!1175365 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regTwo!33182 (reg!16664 (regOne!33182 r!7292))))))))

(declare-fun bm!553168 () Bool)

(assert (=> bm!553168 (= call!553173 call!553171)))

(declare-fun b!6431299 () Bool)

(assert (=> b!6431299 (= e!3901491 call!553172)))

(assert (= (and d!2015959 (not res!2643598)) b!6431296))

(assert (= (and b!6431296 c!1175364) b!6431292))

(assert (= (and b!6431296 (not c!1175364)) b!6431294))

(assert (= (and b!6431292 res!2643597) b!6431298))

(assert (= (and b!6431294 c!1175365) b!6431297))

(assert (= (and b!6431294 (not c!1175365)) b!6431291))

(assert (= (and b!6431297 res!2643596) b!6431293))

(assert (= (and b!6431291 (not res!2643599)) b!6431295))

(assert (= (and b!6431295 res!2643600) b!6431299))

(assert (= (or b!6431293 b!6431299) bm!553167))

(assert (= (or b!6431297 b!6431295) bm!553168))

(assert (= (or b!6431298 bm!553168) bm!553166))

(declare-fun m!7224934 () Bool)

(assert (=> b!6431292 m!7224934))

(declare-fun m!7224936 () Bool)

(assert (=> bm!553166 m!7224936))

(declare-fun m!7224938 () Bool)

(assert (=> bm!553167 m!7224938))

(assert (=> d!2015895 d!2015959))

(declare-fun d!2015961 () Bool)

(assert (=> d!2015961 (= (head!13161 (_2!36617 lt!2379368)) (h!71628 (_2!36617 lt!2379368)))))

(assert (=> b!6430738 d!2015961))

(declare-fun d!2015963 () Bool)

(assert (=> d!2015963 true))

(assert (=> d!2015963 true))

(declare-fun res!2643601 () Bool)

(assert (=> d!2015963 (= (choose!47830 lambda!355721) res!2643601)))

(assert (=> d!2015883 d!2015963))

(declare-fun d!2015965 () Bool)

(assert (=> d!2015965 (= (head!13161 s!2326) (h!71628 s!2326))))

(assert (=> b!6430842 d!2015965))

(assert (=> d!2015771 d!2015769))

(assert (=> d!2015771 d!2015751))

(declare-fun d!2015967 () Bool)

(assert (=> d!2015967 (= (matchR!8518 r!7292 s!2326) (matchRSpec!3436 r!7292 s!2326))))

(assert (=> d!2015967 true))

(declare-fun _$88!5125 () Unit!158671)

(assert (=> d!2015967 (= (choose!47829 r!7292 s!2326) _$88!5125)))

(declare-fun bs!1617647 () Bool)

(assert (= bs!1617647 d!2015967))

(assert (=> bs!1617647 m!7223808))

(assert (=> bs!1617647 m!7223806))

(assert (=> d!2015771 d!2015967))

(assert (=> d!2015771 d!2015857))

(declare-fun d!2015969 () Bool)

(declare-fun e!3901503 () Bool)

(assert (=> d!2015969 e!3901503))

(declare-fun c!1175367 () Bool)

(assert (=> d!2015969 (= c!1175367 ((_ is EmptyExpr!16335) (derivativeStep!5039 lt!2379346 (head!13161 s!2326))))))

(declare-fun lt!2379554 () Bool)

(declare-fun e!3901498 () Bool)

(assert (=> d!2015969 (= lt!2379554 e!3901498)))

(declare-fun c!1175368 () Bool)

(assert (=> d!2015969 (= c!1175368 (isEmpty!37350 (tail!12246 s!2326)))))

(assert (=> d!2015969 (validRegex!8071 (derivativeStep!5039 lt!2379346 (head!13161 s!2326)))))

(assert (=> d!2015969 (= (matchR!8518 (derivativeStep!5039 lt!2379346 (head!13161 s!2326)) (tail!12246 s!2326)) lt!2379554)))

(declare-fun b!6431300 () Bool)

(declare-fun e!3901502 () Bool)

(assert (=> b!6431300 (= e!3901502 (not (= (head!13161 (tail!12246 s!2326)) (c!1175066 (derivativeStep!5039 lt!2379346 (head!13161 s!2326))))))))

(declare-fun b!6431301 () Bool)

(assert (=> b!6431301 (= e!3901498 (matchR!8518 (derivativeStep!5039 (derivativeStep!5039 lt!2379346 (head!13161 s!2326)) (head!13161 (tail!12246 s!2326))) (tail!12246 (tail!12246 s!2326))))))

(declare-fun b!6431302 () Bool)

(declare-fun res!2643603 () Bool)

(declare-fun e!3901501 () Bool)

(assert (=> b!6431302 (=> res!2643603 e!3901501)))

(declare-fun e!3901499 () Bool)

(assert (=> b!6431302 (= res!2643603 e!3901499)))

(declare-fun res!2643607 () Bool)

(assert (=> b!6431302 (=> (not res!2643607) (not e!3901499))))

(assert (=> b!6431302 (= res!2643607 lt!2379554)))

(declare-fun b!6431303 () Bool)

(declare-fun res!2643605 () Bool)

(assert (=> b!6431303 (=> res!2643605 e!3901501)))

(assert (=> b!6431303 (= res!2643605 (not ((_ is ElementMatch!16335) (derivativeStep!5039 lt!2379346 (head!13161 s!2326)))))))

(declare-fun e!3901500 () Bool)

(assert (=> b!6431303 (= e!3901500 e!3901501)))

(declare-fun b!6431304 () Bool)

(declare-fun e!3901504 () Bool)

(assert (=> b!6431304 (= e!3901501 e!3901504)))

(declare-fun res!2643608 () Bool)

(assert (=> b!6431304 (=> (not res!2643608) (not e!3901504))))

(assert (=> b!6431304 (= res!2643608 (not lt!2379554))))

(declare-fun b!6431305 () Bool)

(declare-fun res!2643606 () Bool)

(assert (=> b!6431305 (=> res!2643606 e!3901502)))

(assert (=> b!6431305 (= res!2643606 (not (isEmpty!37350 (tail!12246 (tail!12246 s!2326)))))))

(declare-fun b!6431306 () Bool)

(assert (=> b!6431306 (= e!3901498 (nullable!6328 (derivativeStep!5039 lt!2379346 (head!13161 s!2326))))))

(declare-fun b!6431307 () Bool)

(assert (=> b!6431307 (= e!3901503 e!3901500)))

(declare-fun c!1175366 () Bool)

(assert (=> b!6431307 (= c!1175366 ((_ is EmptyLang!16335) (derivativeStep!5039 lt!2379346 (head!13161 s!2326))))))

(declare-fun b!6431308 () Bool)

(declare-fun call!553174 () Bool)

(assert (=> b!6431308 (= e!3901503 (= lt!2379554 call!553174))))

(declare-fun b!6431309 () Bool)

(assert (=> b!6431309 (= e!3901500 (not lt!2379554))))

(declare-fun b!6431310 () Bool)

(declare-fun res!2643609 () Bool)

(assert (=> b!6431310 (=> (not res!2643609) (not e!3901499))))

(assert (=> b!6431310 (= res!2643609 (isEmpty!37350 (tail!12246 (tail!12246 s!2326))))))

(declare-fun b!6431311 () Bool)

(assert (=> b!6431311 (= e!3901504 e!3901502)))

(declare-fun res!2643602 () Bool)

(assert (=> b!6431311 (=> res!2643602 e!3901502)))

(assert (=> b!6431311 (= res!2643602 call!553174)))

(declare-fun b!6431312 () Bool)

(assert (=> b!6431312 (= e!3901499 (= (head!13161 (tail!12246 s!2326)) (c!1175066 (derivativeStep!5039 lt!2379346 (head!13161 s!2326)))))))

(declare-fun bm!553169 () Bool)

(assert (=> bm!553169 (= call!553174 (isEmpty!37350 (tail!12246 s!2326)))))

(declare-fun b!6431313 () Bool)

(declare-fun res!2643604 () Bool)

(assert (=> b!6431313 (=> (not res!2643604) (not e!3901499))))

(assert (=> b!6431313 (= res!2643604 (not call!553174))))

(assert (= (and d!2015969 c!1175368) b!6431306))

(assert (= (and d!2015969 (not c!1175368)) b!6431301))

(assert (= (and d!2015969 c!1175367) b!6431308))

(assert (= (and d!2015969 (not c!1175367)) b!6431307))

(assert (= (and b!6431307 c!1175366) b!6431309))

(assert (= (and b!6431307 (not c!1175366)) b!6431303))

(assert (= (and b!6431303 (not res!2643605)) b!6431302))

(assert (= (and b!6431302 res!2643607) b!6431313))

(assert (= (and b!6431313 res!2643604) b!6431310))

(assert (= (and b!6431310 res!2643609) b!6431312))

(assert (= (and b!6431302 (not res!2643603)) b!6431304))

(assert (= (and b!6431304 res!2643608) b!6431311))

(assert (= (and b!6431311 (not res!2643602)) b!6431305))

(assert (= (and b!6431305 (not res!2643606)) b!6431300))

(assert (= (or b!6431308 b!6431313 b!6431311) bm!553169))

(assert (=> d!2015969 m!7224154))

(assert (=> d!2015969 m!7224446))

(assert (=> d!2015969 m!7224466))

(declare-fun m!7224940 () Bool)

(assert (=> d!2015969 m!7224940))

(assert (=> b!6431300 m!7224154))

(declare-fun m!7224942 () Bool)

(assert (=> b!6431300 m!7224942))

(assert (=> b!6431310 m!7224154))

(declare-fun m!7224944 () Bool)

(assert (=> b!6431310 m!7224944))

(assert (=> b!6431310 m!7224944))

(declare-fun m!7224946 () Bool)

(assert (=> b!6431310 m!7224946))

(assert (=> b!6431305 m!7224154))

(assert (=> b!6431305 m!7224944))

(assert (=> b!6431305 m!7224944))

(assert (=> b!6431305 m!7224946))

(assert (=> b!6431312 m!7224154))

(assert (=> b!6431312 m!7224942))

(assert (=> bm!553169 m!7224154))

(assert (=> bm!553169 m!7224446))

(assert (=> b!6431306 m!7224466))

(declare-fun m!7224948 () Bool)

(assert (=> b!6431306 m!7224948))

(assert (=> b!6431301 m!7224154))

(assert (=> b!6431301 m!7224942))

(assert (=> b!6431301 m!7224466))

(assert (=> b!6431301 m!7224942))

(declare-fun m!7224950 () Bool)

(assert (=> b!6431301 m!7224950))

(assert (=> b!6431301 m!7224154))

(assert (=> b!6431301 m!7224944))

(assert (=> b!6431301 m!7224950))

(assert (=> b!6431301 m!7224944))

(declare-fun m!7224952 () Bool)

(assert (=> b!6431301 m!7224952))

(assert (=> b!6430843 d!2015969))

(declare-fun b!6431334 () Bool)

(declare-fun e!3901516 () Regex!16335)

(declare-fun e!3901515 () Regex!16335)

(assert (=> b!6431334 (= e!3901516 e!3901515)))

(declare-fun c!1175380 () Bool)

(assert (=> b!6431334 (= c!1175380 ((_ is ElementMatch!16335) lt!2379346))))

(declare-fun b!6431335 () Bool)

(assert (=> b!6431335 (= e!3901515 (ite (= (head!13161 s!2326) (c!1175066 lt!2379346)) EmptyExpr!16335 EmptyLang!16335))))

(declare-fun call!553183 () Regex!16335)

(declare-fun b!6431336 () Bool)

(declare-fun e!3901519 () Regex!16335)

(declare-fun call!553186 () Regex!16335)

(assert (=> b!6431336 (= e!3901519 (Union!16335 (Concat!25180 call!553183 (regTwo!33182 lt!2379346)) call!553186))))

(declare-fun d!2015971 () Bool)

(declare-fun lt!2379557 () Regex!16335)

(assert (=> d!2015971 (validRegex!8071 lt!2379557)))

(assert (=> d!2015971 (= lt!2379557 e!3901516)))

(declare-fun c!1175382 () Bool)

(assert (=> d!2015971 (= c!1175382 (or ((_ is EmptyExpr!16335) lt!2379346) ((_ is EmptyLang!16335) lt!2379346)))))

(assert (=> d!2015971 (validRegex!8071 lt!2379346)))

(assert (=> d!2015971 (= (derivativeStep!5039 lt!2379346 (head!13161 s!2326)) lt!2379557)))

(declare-fun b!6431337 () Bool)

(declare-fun e!3901518 () Regex!16335)

(declare-fun call!553185 () Regex!16335)

(declare-fun call!553184 () Regex!16335)

(assert (=> b!6431337 (= e!3901518 (Union!16335 call!553185 call!553184))))

(declare-fun c!1175379 () Bool)

(declare-fun bm!553178 () Bool)

(declare-fun c!1175381 () Bool)

(assert (=> bm!553178 (= call!553184 (derivativeStep!5039 (ite c!1175379 (regTwo!33183 lt!2379346) (ite c!1175381 (reg!16664 lt!2379346) (regOne!33182 lt!2379346))) (head!13161 s!2326)))))

(declare-fun b!6431338 () Bool)

(declare-fun e!3901517 () Regex!16335)

(assert (=> b!6431338 (= e!3901518 e!3901517)))

(assert (=> b!6431338 (= c!1175381 ((_ is Star!16335) lt!2379346))))

(declare-fun b!6431339 () Bool)

(assert (=> b!6431339 (= e!3901516 EmptyLang!16335)))

(declare-fun b!6431340 () Bool)

(assert (=> b!6431340 (= c!1175379 ((_ is Union!16335) lt!2379346))))

(assert (=> b!6431340 (= e!3901515 e!3901518)))

(declare-fun bm!553179 () Bool)

(assert (=> bm!553179 (= call!553186 call!553185)))

(declare-fun b!6431341 () Bool)

(declare-fun c!1175383 () Bool)

(assert (=> b!6431341 (= c!1175383 (nullable!6328 (regOne!33182 lt!2379346)))))

(assert (=> b!6431341 (= e!3901517 e!3901519)))

(declare-fun bm!553180 () Bool)

(assert (=> bm!553180 (= call!553183 call!553184)))

(declare-fun bm!553181 () Bool)

(assert (=> bm!553181 (= call!553185 (derivativeStep!5039 (ite c!1175379 (regOne!33183 lt!2379346) (ite c!1175383 (regTwo!33182 lt!2379346) (regOne!33182 lt!2379346))) (head!13161 s!2326)))))

(declare-fun b!6431342 () Bool)

(assert (=> b!6431342 (= e!3901517 (Concat!25180 call!553183 lt!2379346))))

(declare-fun b!6431343 () Bool)

(assert (=> b!6431343 (= e!3901519 (Union!16335 (Concat!25180 call!553186 (regTwo!33182 lt!2379346)) EmptyLang!16335))))

(assert (= (and d!2015971 c!1175382) b!6431339))

(assert (= (and d!2015971 (not c!1175382)) b!6431334))

(assert (= (and b!6431334 c!1175380) b!6431335))

(assert (= (and b!6431334 (not c!1175380)) b!6431340))

(assert (= (and b!6431340 c!1175379) b!6431337))

(assert (= (and b!6431340 (not c!1175379)) b!6431338))

(assert (= (and b!6431338 c!1175381) b!6431342))

(assert (= (and b!6431338 (not c!1175381)) b!6431341))

(assert (= (and b!6431341 c!1175383) b!6431336))

(assert (= (and b!6431341 (not c!1175383)) b!6431343))

(assert (= (or b!6431336 b!6431343) bm!553179))

(assert (= (or b!6431342 b!6431336) bm!553180))

(assert (= (or b!6431337 bm!553180) bm!553178))

(assert (= (or b!6431337 bm!553179) bm!553181))

(declare-fun m!7224954 () Bool)

(assert (=> d!2015971 m!7224954))

(assert (=> d!2015971 m!7224456))

(assert (=> bm!553178 m!7224150))

(declare-fun m!7224956 () Bool)

(assert (=> bm!553178 m!7224956))

(declare-fun m!7224958 () Bool)

(assert (=> b!6431341 m!7224958))

(assert (=> bm!553181 m!7224150))

(declare-fun m!7224960 () Bool)

(assert (=> bm!553181 m!7224960))

(assert (=> b!6430843 d!2015971))

(assert (=> b!6430843 d!2015965))

(declare-fun d!2015973 () Bool)

(assert (=> d!2015973 (= (tail!12246 s!2326) (t!378920 s!2326))))

(assert (=> b!6430843 d!2015973))

(declare-fun d!2015975 () Bool)

(declare-fun e!3901525 () Bool)

(assert (=> d!2015975 e!3901525))

(declare-fun c!1175385 () Bool)

(assert (=> d!2015975 (= c!1175385 ((_ is EmptyExpr!16335) (Star!16335 (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun lt!2379558 () Bool)

(declare-fun e!3901520 () Bool)

(assert (=> d!2015975 (= lt!2379558 e!3901520)))

(declare-fun c!1175386 () Bool)

(assert (=> d!2015975 (= c!1175386 (isEmpty!37350 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342))))))

(assert (=> d!2015975 (validRegex!8071 (Star!16335 (reg!16664 (regOne!33182 r!7292))))))

(assert (=> d!2015975 (= (matchR!8518 (Star!16335 (reg!16664 (regOne!33182 r!7292))) (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342))) lt!2379558)))

(declare-fun b!6431344 () Bool)

(declare-fun e!3901524 () Bool)

(assert (=> b!6431344 (= e!3901524 (not (= (head!13161 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342))) (c!1175066 (Star!16335 (reg!16664 (regOne!33182 r!7292)))))))))

(declare-fun b!6431345 () Bool)

(assert (=> b!6431345 (= e!3901520 (matchR!8518 (derivativeStep!5039 (Star!16335 (reg!16664 (regOne!33182 r!7292))) (head!13161 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342)))) (tail!12246 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342)))))))

(declare-fun b!6431346 () Bool)

(declare-fun res!2643611 () Bool)

(declare-fun e!3901523 () Bool)

(assert (=> b!6431346 (=> res!2643611 e!3901523)))

(declare-fun e!3901521 () Bool)

(assert (=> b!6431346 (= res!2643611 e!3901521)))

(declare-fun res!2643615 () Bool)

(assert (=> b!6431346 (=> (not res!2643615) (not e!3901521))))

(assert (=> b!6431346 (= res!2643615 lt!2379558)))

(declare-fun b!6431347 () Bool)

(declare-fun res!2643613 () Bool)

(assert (=> b!6431347 (=> res!2643613 e!3901523)))

(assert (=> b!6431347 (= res!2643613 (not ((_ is ElementMatch!16335) (Star!16335 (reg!16664 (regOne!33182 r!7292))))))))

(declare-fun e!3901522 () Bool)

(assert (=> b!6431347 (= e!3901522 e!3901523)))

(declare-fun b!6431348 () Bool)

(declare-fun e!3901526 () Bool)

(assert (=> b!6431348 (= e!3901523 e!3901526)))

(declare-fun res!2643616 () Bool)

(assert (=> b!6431348 (=> (not res!2643616) (not e!3901526))))

(assert (=> b!6431348 (= res!2643616 (not lt!2379558))))

(declare-fun b!6431349 () Bool)

(declare-fun res!2643614 () Bool)

(assert (=> b!6431349 (=> res!2643614 e!3901524)))

(assert (=> b!6431349 (= res!2643614 (not (isEmpty!37350 (tail!12246 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342))))))))

(declare-fun b!6431350 () Bool)

(assert (=> b!6431350 (= e!3901520 (nullable!6328 (Star!16335 (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun b!6431351 () Bool)

(assert (=> b!6431351 (= e!3901525 e!3901522)))

(declare-fun c!1175384 () Bool)

(assert (=> b!6431351 (= c!1175384 ((_ is EmptyLang!16335) (Star!16335 (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun b!6431352 () Bool)

(declare-fun call!553187 () Bool)

(assert (=> b!6431352 (= e!3901525 (= lt!2379558 call!553187))))

(declare-fun b!6431353 () Bool)

(assert (=> b!6431353 (= e!3901522 (not lt!2379558))))

(declare-fun b!6431354 () Bool)

(declare-fun res!2643617 () Bool)

(assert (=> b!6431354 (=> (not res!2643617) (not e!3901521))))

(assert (=> b!6431354 (= res!2643617 (isEmpty!37350 (tail!12246 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342)))))))

(declare-fun b!6431355 () Bool)

(assert (=> b!6431355 (= e!3901526 e!3901524)))

(declare-fun res!2643610 () Bool)

(assert (=> b!6431355 (=> res!2643610 e!3901524)))

(assert (=> b!6431355 (= res!2643610 call!553187)))

(declare-fun b!6431356 () Bool)

(assert (=> b!6431356 (= e!3901521 (= (head!13161 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342))) (c!1175066 (Star!16335 (reg!16664 (regOne!33182 r!7292))))))))

(declare-fun bm!553182 () Bool)

(assert (=> bm!553182 (= call!553187 (isEmpty!37350 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342))))))

(declare-fun b!6431357 () Bool)

(declare-fun res!2643612 () Bool)

(assert (=> b!6431357 (=> (not res!2643612) (not e!3901521))))

(assert (=> b!6431357 (= res!2643612 (not call!553187))))

(assert (= (and d!2015975 c!1175386) b!6431350))

(assert (= (and d!2015975 (not c!1175386)) b!6431345))

(assert (= (and d!2015975 c!1175385) b!6431352))

(assert (= (and d!2015975 (not c!1175385)) b!6431351))

(assert (= (and b!6431351 c!1175384) b!6431353))

(assert (= (and b!6431351 (not c!1175384)) b!6431347))

(assert (= (and b!6431347 (not res!2643613)) b!6431346))

(assert (= (and b!6431346 res!2643615) b!6431357))

(assert (= (and b!6431357 res!2643612) b!6431354))

(assert (= (and b!6431354 res!2643617) b!6431356))

(assert (= (and b!6431346 (not res!2643611)) b!6431348))

(assert (= (and b!6431348 res!2643616) b!6431355))

(assert (= (and b!6431355 (not res!2643610)) b!6431349))

(assert (= (and b!6431349 (not res!2643614)) b!6431344))

(assert (= (or b!6431352 b!6431357 b!6431355) bm!553182))

(assert (=> d!2015975 m!7223730))

(declare-fun m!7224962 () Bool)

(assert (=> d!2015975 m!7224962))

(assert (=> d!2015975 m!7223938))

(assert (=> b!6431344 m!7223730))

(declare-fun m!7224964 () Bool)

(assert (=> b!6431344 m!7224964))

(assert (=> b!6431354 m!7223730))

(declare-fun m!7224966 () Bool)

(assert (=> b!6431354 m!7224966))

(assert (=> b!6431354 m!7224966))

(declare-fun m!7224968 () Bool)

(assert (=> b!6431354 m!7224968))

(assert (=> b!6431349 m!7223730))

(assert (=> b!6431349 m!7224966))

(assert (=> b!6431349 m!7224966))

(assert (=> b!6431349 m!7224968))

(assert (=> b!6431356 m!7223730))

(assert (=> b!6431356 m!7224964))

(assert (=> bm!553182 m!7223730))

(assert (=> bm!553182 m!7224962))

(declare-fun m!7224970 () Bool)

(assert (=> b!6431350 m!7224970))

(assert (=> b!6431345 m!7223730))

(assert (=> b!6431345 m!7224964))

(assert (=> b!6431345 m!7224964))

(declare-fun m!7224972 () Bool)

(assert (=> b!6431345 m!7224972))

(assert (=> b!6431345 m!7223730))

(assert (=> b!6431345 m!7224966))

(assert (=> b!6431345 m!7224972))

(assert (=> b!6431345 m!7224966))

(declare-fun m!7224974 () Bool)

(assert (=> b!6431345 m!7224974))

(assert (=> d!2015619 d!2015975))

(assert (=> d!2015619 d!2015897))

(declare-fun d!2015977 () Bool)

(assert (=> d!2015977 (matchR!8518 (Star!16335 (reg!16664 (regOne!33182 r!7292))) (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342)))))

(assert (=> d!2015977 true))

(declare-fun _$125!306 () Unit!158671)

(assert (=> d!2015977 (= (choose!47819 (reg!16664 (regOne!33182 r!7292)) (_1!36617 lt!2379342) (_2!36617 lt!2379342)) _$125!306)))

(declare-fun bs!1617648 () Bool)

(assert (= bs!1617648 d!2015977))

(assert (=> bs!1617648 m!7223730))

(assert (=> bs!1617648 m!7223730))

(assert (=> bs!1617648 m!7223934))

(assert (=> d!2015619 d!2015977))

(declare-fun b!6431359 () Bool)

(declare-fun e!3901529 () Bool)

(declare-fun e!3901531 () Bool)

(assert (=> b!6431359 (= e!3901529 e!3901531)))

(declare-fun res!2643619 () Bool)

(assert (=> b!6431359 (= res!2643619 (not (nullable!6328 (reg!16664 (Star!16335 (reg!16664 (regOne!33182 r!7292)))))))))

(assert (=> b!6431359 (=> (not res!2643619) (not e!3901531))))

(declare-fun c!1175388 () Bool)

(declare-fun bm!553183 () Bool)

(declare-fun c!1175387 () Bool)

(declare-fun call!553188 () Bool)

(assert (=> bm!553183 (= call!553188 (validRegex!8071 (ite c!1175387 (reg!16664 (Star!16335 (reg!16664 (regOne!33182 r!7292)))) (ite c!1175388 (regOne!33183 (Star!16335 (reg!16664 (regOne!33182 r!7292)))) (regOne!33182 (Star!16335 (reg!16664 (regOne!33182 r!7292))))))))))

(declare-fun b!6431360 () Bool)

(declare-fun e!3901528 () Bool)

(declare-fun call!553189 () Bool)

(assert (=> b!6431360 (= e!3901528 call!553189)))

(declare-fun b!6431361 () Bool)

(declare-fun e!3901533 () Bool)

(assert (=> b!6431361 (= e!3901529 e!3901533)))

(assert (=> b!6431361 (= c!1175388 ((_ is Union!16335) (Star!16335 (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun b!6431362 () Bool)

(declare-fun e!3901532 () Bool)

(declare-fun e!3901527 () Bool)

(assert (=> b!6431362 (= e!3901532 e!3901527)))

(declare-fun res!2643622 () Bool)

(assert (=> b!6431362 (=> (not res!2643622) (not e!3901527))))

(declare-fun call!553190 () Bool)

(assert (=> b!6431362 (= res!2643622 call!553190)))

(declare-fun b!6431363 () Bool)

(declare-fun e!3901530 () Bool)

(assert (=> b!6431363 (= e!3901530 e!3901529)))

(assert (=> b!6431363 (= c!1175387 ((_ is Star!16335) (Star!16335 (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun b!6431358 () Bool)

(declare-fun res!2643621 () Bool)

(assert (=> b!6431358 (=> res!2643621 e!3901532)))

(assert (=> b!6431358 (= res!2643621 (not ((_ is Concat!25180) (Star!16335 (reg!16664 (regOne!33182 r!7292))))))))

(assert (=> b!6431358 (= e!3901533 e!3901532)))

(declare-fun d!2015979 () Bool)

(declare-fun res!2643620 () Bool)

(assert (=> d!2015979 (=> res!2643620 e!3901530)))

(assert (=> d!2015979 (= res!2643620 ((_ is ElementMatch!16335) (Star!16335 (reg!16664 (regOne!33182 r!7292)))))))

(assert (=> d!2015979 (= (validRegex!8071 (Star!16335 (reg!16664 (regOne!33182 r!7292)))) e!3901530)))

(declare-fun b!6431364 () Bool)

(declare-fun res!2643618 () Bool)

(assert (=> b!6431364 (=> (not res!2643618) (not e!3901528))))

(assert (=> b!6431364 (= res!2643618 call!553190)))

(assert (=> b!6431364 (= e!3901533 e!3901528)))

(declare-fun b!6431365 () Bool)

(assert (=> b!6431365 (= e!3901531 call!553188)))

(declare-fun bm!553184 () Bool)

(assert (=> bm!553184 (= call!553189 (validRegex!8071 (ite c!1175388 (regTwo!33183 (Star!16335 (reg!16664 (regOne!33182 r!7292)))) (regTwo!33182 (Star!16335 (reg!16664 (regOne!33182 r!7292)))))))))

(declare-fun bm!553185 () Bool)

(assert (=> bm!553185 (= call!553190 call!553188)))

(declare-fun b!6431366 () Bool)

(assert (=> b!6431366 (= e!3901527 call!553189)))

(assert (= (and d!2015979 (not res!2643620)) b!6431363))

(assert (= (and b!6431363 c!1175387) b!6431359))

(assert (= (and b!6431363 (not c!1175387)) b!6431361))

(assert (= (and b!6431359 res!2643619) b!6431365))

(assert (= (and b!6431361 c!1175388) b!6431364))

(assert (= (and b!6431361 (not c!1175388)) b!6431358))

(assert (= (and b!6431364 res!2643618) b!6431360))

(assert (= (and b!6431358 (not res!2643621)) b!6431362))

(assert (= (and b!6431362 res!2643622) b!6431366))

(assert (= (or b!6431360 b!6431366) bm!553184))

(assert (= (or b!6431364 b!6431362) bm!553185))

(assert (= (or b!6431365 bm!553185) bm!553183))

(declare-fun m!7224976 () Bool)

(assert (=> b!6431359 m!7224976))

(declare-fun m!7224978 () Bool)

(assert (=> bm!553183 m!7224978))

(declare-fun m!7224980 () Bool)

(assert (=> bm!553184 m!7224980))

(assert (=> d!2015619 d!2015979))

(declare-fun d!2015981 () Bool)

(declare-fun e!3901539 () Bool)

(assert (=> d!2015981 e!3901539))

(declare-fun c!1175390 () Bool)

(assert (=> d!2015981 (= c!1175390 ((_ is EmptyExpr!16335) (regTwo!33182 r!7292)))))

(declare-fun lt!2379559 () Bool)

(declare-fun e!3901534 () Bool)

(assert (=> d!2015981 (= lt!2379559 e!3901534)))

(declare-fun c!1175391 () Bool)

(assert (=> d!2015981 (= c!1175391 (isEmpty!37350 (_2!36617 (get!22586 lt!2379520))))))

(assert (=> d!2015981 (validRegex!8071 (regTwo!33182 r!7292))))

(assert (=> d!2015981 (= (matchR!8518 (regTwo!33182 r!7292) (_2!36617 (get!22586 lt!2379520))) lt!2379559)))

(declare-fun b!6431367 () Bool)

(declare-fun e!3901538 () Bool)

(assert (=> b!6431367 (= e!3901538 (not (= (head!13161 (_2!36617 (get!22586 lt!2379520))) (c!1175066 (regTwo!33182 r!7292)))))))

(declare-fun b!6431368 () Bool)

(assert (=> b!6431368 (= e!3901534 (matchR!8518 (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 (get!22586 lt!2379520)))) (tail!12246 (_2!36617 (get!22586 lt!2379520)))))))

(declare-fun b!6431369 () Bool)

(declare-fun res!2643624 () Bool)

(declare-fun e!3901537 () Bool)

(assert (=> b!6431369 (=> res!2643624 e!3901537)))

(declare-fun e!3901535 () Bool)

(assert (=> b!6431369 (= res!2643624 e!3901535)))

(declare-fun res!2643628 () Bool)

(assert (=> b!6431369 (=> (not res!2643628) (not e!3901535))))

(assert (=> b!6431369 (= res!2643628 lt!2379559)))

(declare-fun b!6431370 () Bool)

(declare-fun res!2643626 () Bool)

(assert (=> b!6431370 (=> res!2643626 e!3901537)))

(assert (=> b!6431370 (= res!2643626 (not ((_ is ElementMatch!16335) (regTwo!33182 r!7292))))))

(declare-fun e!3901536 () Bool)

(assert (=> b!6431370 (= e!3901536 e!3901537)))

(declare-fun b!6431371 () Bool)

(declare-fun e!3901540 () Bool)

(assert (=> b!6431371 (= e!3901537 e!3901540)))

(declare-fun res!2643629 () Bool)

(assert (=> b!6431371 (=> (not res!2643629) (not e!3901540))))

(assert (=> b!6431371 (= res!2643629 (not lt!2379559))))

(declare-fun b!6431372 () Bool)

(declare-fun res!2643627 () Bool)

(assert (=> b!6431372 (=> res!2643627 e!3901538)))

(assert (=> b!6431372 (= res!2643627 (not (isEmpty!37350 (tail!12246 (_2!36617 (get!22586 lt!2379520))))))))

(declare-fun b!6431373 () Bool)

(assert (=> b!6431373 (= e!3901534 (nullable!6328 (regTwo!33182 r!7292)))))

(declare-fun b!6431374 () Bool)

(assert (=> b!6431374 (= e!3901539 e!3901536)))

(declare-fun c!1175389 () Bool)

(assert (=> b!6431374 (= c!1175389 ((_ is EmptyLang!16335) (regTwo!33182 r!7292)))))

(declare-fun b!6431375 () Bool)

(declare-fun call!553191 () Bool)

(assert (=> b!6431375 (= e!3901539 (= lt!2379559 call!553191))))

(declare-fun b!6431376 () Bool)

(assert (=> b!6431376 (= e!3901536 (not lt!2379559))))

(declare-fun b!6431377 () Bool)

(declare-fun res!2643630 () Bool)

(assert (=> b!6431377 (=> (not res!2643630) (not e!3901535))))

(assert (=> b!6431377 (= res!2643630 (isEmpty!37350 (tail!12246 (_2!36617 (get!22586 lt!2379520)))))))

(declare-fun b!6431378 () Bool)

(assert (=> b!6431378 (= e!3901540 e!3901538)))

(declare-fun res!2643623 () Bool)

(assert (=> b!6431378 (=> res!2643623 e!3901538)))

(assert (=> b!6431378 (= res!2643623 call!553191)))

(declare-fun b!6431379 () Bool)

(assert (=> b!6431379 (= e!3901535 (= (head!13161 (_2!36617 (get!22586 lt!2379520))) (c!1175066 (regTwo!33182 r!7292))))))

(declare-fun bm!553186 () Bool)

(assert (=> bm!553186 (= call!553191 (isEmpty!37350 (_2!36617 (get!22586 lt!2379520))))))

(declare-fun b!6431380 () Bool)

(declare-fun res!2643625 () Bool)

(assert (=> b!6431380 (=> (not res!2643625) (not e!3901535))))

(assert (=> b!6431380 (= res!2643625 (not call!553191))))

(assert (= (and d!2015981 c!1175391) b!6431373))

(assert (= (and d!2015981 (not c!1175391)) b!6431368))

(assert (= (and d!2015981 c!1175390) b!6431375))

(assert (= (and d!2015981 (not c!1175390)) b!6431374))

(assert (= (and b!6431374 c!1175389) b!6431376))

(assert (= (and b!6431374 (not c!1175389)) b!6431370))

(assert (= (and b!6431370 (not res!2643626)) b!6431369))

(assert (= (and b!6431369 res!2643628) b!6431380))

(assert (= (and b!6431380 res!2643625) b!6431377))

(assert (= (and b!6431377 res!2643630) b!6431379))

(assert (= (and b!6431369 (not res!2643624)) b!6431371))

(assert (= (and b!6431371 res!2643629) b!6431378))

(assert (= (and b!6431378 (not res!2643623)) b!6431372))

(assert (= (and b!6431372 (not res!2643627)) b!6431367))

(assert (= (or b!6431375 b!6431380 b!6431378) bm!553186))

(declare-fun m!7224982 () Bool)

(assert (=> d!2015981 m!7224982))

(assert (=> d!2015981 m!7223960))

(declare-fun m!7224984 () Bool)

(assert (=> b!6431367 m!7224984))

(declare-fun m!7224986 () Bool)

(assert (=> b!6431377 m!7224986))

(assert (=> b!6431377 m!7224986))

(declare-fun m!7224988 () Bool)

(assert (=> b!6431377 m!7224988))

(assert (=> b!6431372 m!7224986))

(assert (=> b!6431372 m!7224986))

(assert (=> b!6431372 m!7224988))

(assert (=> b!6431379 m!7224984))

(assert (=> bm!553186 m!7224982))

(assert (=> b!6431373 m!7224386))

(assert (=> b!6431368 m!7224984))

(assert (=> b!6431368 m!7224984))

(declare-fun m!7224990 () Bool)

(assert (=> b!6431368 m!7224990))

(assert (=> b!6431368 m!7224986))

(assert (=> b!6431368 m!7224990))

(assert (=> b!6431368 m!7224986))

(declare-fun m!7224992 () Bool)

(assert (=> b!6431368 m!7224992))

(assert (=> b!6430941 d!2015981))

(declare-fun d!2015983 () Bool)

(assert (=> d!2015983 (= (get!22586 lt!2379520) (v!52398 lt!2379520))))

(assert (=> b!6430941 d!2015983))

(declare-fun d!2015985 () Bool)

(assert (=> d!2015985 (= (nullable!6328 (reg!16664 (regOne!33182 r!7292))) (nullableFct!2274 (reg!16664 (regOne!33182 r!7292))))))

(declare-fun bs!1617649 () Bool)

(assert (= bs!1617649 d!2015985))

(declare-fun m!7224994 () Bool)

(assert (=> bs!1617649 m!7224994))

(assert (=> b!6431053 d!2015985))

(declare-fun d!2015987 () Bool)

(assert (=> d!2015987 (= (Exists!3405 lambda!355802) (choose!47830 lambda!355802))))

(declare-fun bs!1617650 () Bool)

(assert (= bs!1617650 d!2015987))

(declare-fun m!7224996 () Bool)

(assert (=> bs!1617650 m!7224996))

(assert (=> d!2015881 d!2015987))

(declare-fun d!2015989 () Bool)

(assert (=> d!2015989 (= (Exists!3405 lambda!355803) (choose!47830 lambda!355803))))

(declare-fun bs!1617651 () Bool)

(assert (= bs!1617651 d!2015989))

(declare-fun m!7224998 () Bool)

(assert (=> bs!1617651 m!7224998))

(assert (=> d!2015881 d!2015989))

(declare-fun bs!1617652 () Bool)

(declare-fun d!2015991 () Bool)

(assert (= bs!1617652 (and d!2015991 d!2015887)))

(declare-fun lambda!355828 () Int)

(assert (=> bs!1617652 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355828 lambda!355804))))

(declare-fun bs!1617653 () Bool)

(assert (= bs!1617653 (and d!2015991 d!2015879)))

(assert (=> bs!1617653 (= lambda!355828 lambda!355801)))

(declare-fun bs!1617654 () Bool)

(assert (= bs!1617654 (and d!2015991 b!6430115)))

(assert (=> bs!1617654 (= lambda!355828 lambda!355717)))

(declare-fun bs!1617655 () Bool)

(assert (= bs!1617655 (and d!2015991 b!6430094)))

(assert (=> bs!1617655 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355828 lambda!355719))))

(assert (=> bs!1617655 (not (= lambda!355828 lambda!355720))))

(declare-fun bs!1617656 () Bool)

(assert (= bs!1617656 (and d!2015991 d!2015881)))

(assert (=> bs!1617656 (= lambda!355828 lambda!355802)))

(declare-fun bs!1617657 () Bool)

(assert (= bs!1617657 (and d!2015991 d!2015957)))

(assert (=> bs!1617657 (not (= lambda!355828 lambda!355823))))

(declare-fun bs!1617658 () Bool)

(assert (= bs!1617658 (and d!2015991 d!2015895)))

(assert (=> bs!1617658 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355828 lambda!355811))))

(declare-fun bs!1617659 () Bool)

(assert (= bs!1617659 (and d!2015991 b!6430859)))

(assert (=> bs!1617659 (not (= lambda!355828 lambda!355779))))

(declare-fun bs!1617660 () Bool)

(assert (= bs!1617660 (and d!2015991 d!2015889)))

(assert (=> bs!1617660 (not (= lambda!355828 lambda!355806))))

(assert (=> bs!1617656 (not (= lambda!355828 lambda!355803))))

(declare-fun bs!1617661 () Bool)

(assert (= bs!1617661 (and d!2015991 b!6430810)))

(assert (=> bs!1617661 (not (= lambda!355828 lambda!355772))))

(declare-fun bs!1617662 () Bool)

(assert (= bs!1617662 (and d!2015991 b!6431148)))

(assert (=> bs!1617662 (not (= lambda!355828 lambda!355813))))

(assert (=> bs!1617655 (not (= lambda!355828 lambda!355721))))

(declare-fun bs!1617663 () Bool)

(assert (= bs!1617663 (and d!2015991 d!2015793)))

(assert (=> bs!1617663 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355828 lambda!355786))))

(declare-fun bs!1617664 () Bool)

(assert (= bs!1617664 (and d!2015991 b!6431154)))

(assert (=> bs!1617664 (not (= lambda!355828 lambda!355814))))

(declare-fun bs!1617665 () Bool)

(assert (= bs!1617665 (and d!2015991 b!6430128)))

(assert (=> bs!1617665 (not (= lambda!355828 lambda!355715))))

(declare-fun bs!1617666 () Bool)

(assert (= bs!1617666 (and d!2015991 b!6430816)))

(assert (=> bs!1617666 (not (= lambda!355828 lambda!355773))))

(assert (=> bs!1617658 (not (= lambda!355828 lambda!355812))))

(declare-fun bs!1617667 () Bool)

(assert (= bs!1617667 (and d!2015991 b!6430865)))

(assert (=> bs!1617667 (not (= lambda!355828 lambda!355780))))

(assert (=> bs!1617660 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355828 lambda!355805))))

(assert (=> bs!1617657 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355828 lambda!355822))))

(assert (=> bs!1617654 (not (= lambda!355828 lambda!355718))))

(assert (=> bs!1617665 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355828 lambda!355714))))

(declare-fun bs!1617668 () Bool)

(assert (= bs!1617668 (and d!2015991 d!2015829)))

(assert (=> bs!1617668 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355828 lambda!355796))))

(assert (=> bs!1617668 (not (= lambda!355828 lambda!355797))))

(assert (=> d!2015991 true))

(assert (=> d!2015991 true))

(assert (=> d!2015991 true))

(declare-fun lambda!355829 () Int)

(assert (=> bs!1617652 (not (= lambda!355829 lambda!355804))))

(assert (=> bs!1617653 (not (= lambda!355829 lambda!355801))))

(assert (=> bs!1617654 (not (= lambda!355829 lambda!355717))))

(assert (=> bs!1617655 (not (= lambda!355829 lambda!355719))))

(assert (=> bs!1617655 (not (= lambda!355829 lambda!355720))))

(assert (=> bs!1617656 (not (= lambda!355829 lambda!355802))))

(declare-fun bs!1617669 () Bool)

(assert (= bs!1617669 d!2015991))

(assert (=> bs!1617669 (not (= lambda!355829 lambda!355828))))

(assert (=> bs!1617657 (not (= lambda!355829 lambda!355823))))

(assert (=> bs!1617658 (not (= lambda!355829 lambda!355811))))

(assert (=> bs!1617659 (not (= lambda!355829 lambda!355779))))

(assert (=> bs!1617660 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355829 lambda!355806))))

(assert (=> bs!1617656 (= lambda!355829 lambda!355803)))

(assert (=> bs!1617661 (not (= lambda!355829 lambda!355772))))

(assert (=> bs!1617662 (not (= lambda!355829 lambda!355813))))

(assert (=> bs!1617655 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355829 lambda!355721))))

(assert (=> bs!1617663 (not (= lambda!355829 lambda!355786))))

(assert (=> bs!1617664 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (regOne!33182 lt!2379353)) (= (regTwo!33182 r!7292) (regTwo!33182 lt!2379353))) (= lambda!355829 lambda!355814))))

(assert (=> bs!1617665 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355829 lambda!355715))))

(assert (=> bs!1617666 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355829 lambda!355773))))

(assert (=> bs!1617658 (not (= lambda!355829 lambda!355812))))

(assert (=> bs!1617667 (= (and (= lt!2379353 (regOne!33182 lt!2379346)) (= (regTwo!33182 r!7292) (regTwo!33182 lt!2379346))) (= lambda!355829 lambda!355780))))

(assert (=> bs!1617660 (not (= lambda!355829 lambda!355805))))

(assert (=> bs!1617657 (not (= lambda!355829 lambda!355822))))

(assert (=> bs!1617654 (= lambda!355829 lambda!355718)))

(assert (=> bs!1617665 (not (= lambda!355829 lambda!355714))))

(assert (=> bs!1617668 (not (= lambda!355829 lambda!355796))))

(assert (=> bs!1617668 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355829 lambda!355797))))

(assert (=> d!2015991 true))

(assert (=> d!2015991 true))

(assert (=> d!2015991 true))

(assert (=> d!2015991 (= (Exists!3405 lambda!355828) (Exists!3405 lambda!355829))))

(assert (=> d!2015991 true))

(declare-fun _$90!2292 () Unit!158671)

(assert (=> d!2015991 (= (choose!47832 lt!2379353 (regTwo!33182 r!7292) s!2326) _$90!2292)))

(declare-fun m!7225000 () Bool)

(assert (=> bs!1617669 m!7225000))

(declare-fun m!7225002 () Bool)

(assert (=> bs!1617669 m!7225002))

(assert (=> d!2015881 d!2015991))

(assert (=> d!2015881 d!2015935))

(declare-fun d!2015993 () Bool)

(declare-fun res!2643643 () Bool)

(declare-fun e!3901549 () Bool)

(assert (=> d!2015993 (=> res!2643643 e!3901549)))

(assert (=> d!2015993 (= res!2643643 ((_ is Nil!65182) lt!2379457))))

(assert (=> d!2015993 (= (noDuplicate!2164 lt!2379457) e!3901549)))

(declare-fun b!6431393 () Bool)

(declare-fun e!3901550 () Bool)

(assert (=> b!6431393 (= e!3901549 e!3901550)))

(declare-fun res!2643644 () Bool)

(assert (=> b!6431393 (=> (not res!2643644) (not e!3901550))))

(declare-fun contains!20180 (List!65306 Context!11438) Bool)

(assert (=> b!6431393 (= res!2643644 (not (contains!20180 (t!378922 lt!2379457) (h!71630 lt!2379457))))))

(declare-fun b!6431394 () Bool)

(assert (=> b!6431394 (= e!3901550 (noDuplicate!2164 (t!378922 lt!2379457)))))

(assert (= (and d!2015993 (not res!2643643)) b!6431393))

(assert (= (and b!6431393 res!2643644) b!6431394))

(declare-fun m!7225004 () Bool)

(assert (=> b!6431393 m!7225004))

(declare-fun m!7225006 () Bool)

(assert (=> b!6431394 m!7225006))

(assert (=> d!2015701 d!2015993))

(declare-fun d!2015995 () Bool)

(declare-fun e!3901558 () Bool)

(assert (=> d!2015995 e!3901558))

(declare-fun res!2643649 () Bool)

(assert (=> d!2015995 (=> (not res!2643649) (not e!3901558))))

(declare-fun res!2643650 () List!65306)

(assert (=> d!2015995 (= res!2643649 (noDuplicate!2164 res!2643650))))

(declare-fun e!3901559 () Bool)

(assert (=> d!2015995 e!3901559))

(assert (=> d!2015995 (= (choose!47825 z!1189) res!2643650)))

(declare-fun b!6431402 () Bool)

(declare-fun e!3901557 () Bool)

(declare-fun tp!1784251 () Bool)

(assert (=> b!6431402 (= e!3901557 tp!1784251)))

(declare-fun tp!1784252 () Bool)

(declare-fun b!6431401 () Bool)

(assert (=> b!6431401 (= e!3901559 (and (inv!84084 (h!71630 res!2643650)) e!3901557 tp!1784252))))

(declare-fun b!6431403 () Bool)

(assert (=> b!6431403 (= e!3901558 (= (content!12385 res!2643650) z!1189))))

(assert (= b!6431401 b!6431402))

(assert (= (and d!2015995 ((_ is Cons!65182) res!2643650)) b!6431401))

(assert (= (and d!2015995 res!2643649) b!6431403))

(declare-fun m!7225008 () Bool)

(assert (=> d!2015995 m!7225008))

(declare-fun m!7225010 () Bool)

(assert (=> b!6431401 m!7225010))

(declare-fun m!7225012 () Bool)

(assert (=> b!6431403 m!7225012))

(assert (=> d!2015701 d!2015995))

(declare-fun b!6431404 () Bool)

(declare-fun e!3901560 () (InoxSet Context!11438))

(declare-fun call!553195 () (InoxSet Context!11438))

(declare-fun call!553197 () (InoxSet Context!11438))

(assert (=> b!6431404 (= e!3901560 ((_ map or) call!553195 call!553197))))

(declare-fun bm!553187 () Bool)

(declare-fun call!553196 () List!65305)

(declare-fun c!1175392 () Bool)

(assert (=> bm!553187 (= call!553195 (derivationStepZipperDown!1583 (ite c!1175392 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343))))) (ite c!1175392 (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343)))) (Context!11439 call!553196)) (h!71628 s!2326)))))

(declare-fun bm!553188 () Bool)

(declare-fun call!553194 () (InoxSet Context!11438))

(assert (=> bm!553188 (= call!553194 call!553197)))

(declare-fun b!6431405 () Bool)

(declare-fun c!1175393 () Bool)

(declare-fun e!3901563 () Bool)

(assert (=> b!6431405 (= c!1175393 e!3901563)))

(declare-fun res!2643651 () Bool)

(assert (=> b!6431405 (=> (not res!2643651) (not e!3901563))))

(assert (=> b!6431405 (= res!2643651 ((_ is Concat!25180) (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun e!3901564 () (InoxSet Context!11438))

(assert (=> b!6431405 (= e!3901564 e!3901560)))

(declare-fun b!6431406 () Bool)

(declare-fun call!553192 () (InoxSet Context!11438))

(assert (=> b!6431406 (= e!3901564 ((_ map or) call!553192 call!553195))))

(declare-fun bm!553189 () Bool)

(assert (=> bm!553189 (= call!553197 call!553192)))

(declare-fun b!6431407 () Bool)

(declare-fun e!3901565 () (InoxSet Context!11438))

(assert (=> b!6431407 (= e!3901565 e!3901564)))

(assert (=> b!6431407 (= c!1175392 ((_ is Union!16335) (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun b!6431409 () Bool)

(assert (=> b!6431409 (= e!3901563 (nullable!6328 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343))))))))

(declare-fun b!6431410 () Bool)

(declare-fun c!1175396 () Bool)

(assert (=> b!6431410 (= c!1175396 ((_ is Star!16335) (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun e!3901562 () (InoxSet Context!11438))

(declare-fun e!3901561 () (InoxSet Context!11438))

(assert (=> b!6431410 (= e!3901562 e!3901561)))

(declare-fun b!6431411 () Bool)

(assert (=> b!6431411 (= e!3901561 call!553194)))

(declare-fun bm!553190 () Bool)

(declare-fun call!553193 () List!65305)

(declare-fun c!1175395 () Bool)

(assert (=> bm!553190 (= call!553192 (derivationStepZipperDown!1583 (ite c!1175392 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175393 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175395 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343))))))) (ite (or c!1175392 c!1175393) (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343)))) (Context!11439 call!553193)) (h!71628 s!2326)))))

(declare-fun b!6431412 () Bool)

(assert (=> b!6431412 (= e!3901560 e!3901562)))

(assert (=> b!6431412 (= c!1175395 ((_ is Concat!25180) (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun b!6431413 () Bool)

(assert (=> b!6431413 (= e!3901565 (store ((as const (Array Context!11438 Bool)) false) (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343)))) true))))

(declare-fun b!6431414 () Bool)

(assert (=> b!6431414 (= e!3901561 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2015997 () Bool)

(declare-fun c!1175394 () Bool)

(assert (=> d!2015997 (= c!1175394 (and ((_ is ElementMatch!16335) (h!71629 (exprs!6219 (h!71630 zl!343)))) (= (c!1175066 (h!71629 (exprs!6219 (h!71630 zl!343)))) (h!71628 s!2326))))))

(assert (=> d!2015997 (= (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (h!71630 zl!343))) (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343)))) (h!71628 s!2326)) e!3901565)))

(declare-fun b!6431408 () Bool)

(assert (=> b!6431408 (= e!3901562 call!553194)))

(declare-fun bm!553191 () Bool)

(assert (=> bm!553191 (= call!553193 call!553196)))

(declare-fun bm!553192 () Bool)

(assert (=> bm!553192 (= call!553196 ($colon$colon!2196 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343))))) (ite (or c!1175393 c!1175395) (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (h!71629 (exprs!6219 (h!71630 zl!343))))))))

(assert (= (and d!2015997 c!1175394) b!6431413))

(assert (= (and d!2015997 (not c!1175394)) b!6431407))

(assert (= (and b!6431407 c!1175392) b!6431406))

(assert (= (and b!6431407 (not c!1175392)) b!6431405))

(assert (= (and b!6431405 res!2643651) b!6431409))

(assert (= (and b!6431405 c!1175393) b!6431404))

(assert (= (and b!6431405 (not c!1175393)) b!6431412))

(assert (= (and b!6431412 c!1175395) b!6431408))

(assert (= (and b!6431412 (not c!1175395)) b!6431410))

(assert (= (and b!6431410 c!1175396) b!6431411))

(assert (= (and b!6431410 (not c!1175396)) b!6431414))

(assert (= (or b!6431408 b!6431411) bm!553191))

(assert (= (or b!6431408 b!6431411) bm!553188))

(assert (= (or b!6431404 bm!553191) bm!553192))

(assert (= (or b!6431404 bm!553188) bm!553189))

(assert (= (or b!6431406 b!6431404) bm!553187))

(assert (= (or b!6431406 bm!553189) bm!553190))

(declare-fun m!7225014 () Bool)

(assert (=> b!6431413 m!7225014))

(assert (=> b!6431409 m!7224122))

(declare-fun m!7225016 () Bool)

(assert (=> bm!553192 m!7225016))

(declare-fun m!7225018 () Bool)

(assert (=> bm!553187 m!7225018))

(declare-fun m!7225020 () Bool)

(assert (=> bm!553190 m!7225020))

(assert (=> bm!553107 d!2015997))

(declare-fun d!2015999 () Bool)

(assert (=> d!2015999 (= (nullable!6328 lt!2379353) (nullableFct!2274 lt!2379353))))

(declare-fun bs!1617670 () Bool)

(assert (= bs!1617670 d!2015999))

(declare-fun m!7225022 () Bool)

(assert (=> bs!1617670 m!7225022))

(assert (=> b!6430873 d!2015999))

(declare-fun d!2016001 () Bool)

(assert (=> d!2016001 true))

(assert (=> d!2016001 true))

(declare-fun res!2643652 () Bool)

(assert (=> d!2016001 (= (choose!47830 lambda!355718) res!2643652)))

(assert (=> d!2015877 d!2016001))

(declare-fun b!6431415 () Bool)

(declare-fun e!3901566 () (InoxSet Context!11438))

(declare-fun call!553201 () (InoxSet Context!11438))

(declare-fun call!553203 () (InoxSet Context!11438))

(assert (=> b!6431415 (= e!3901566 ((_ map or) call!553201 call!553203))))

(declare-fun call!553202 () List!65305)

(declare-fun c!1175397 () Bool)

(declare-fun bm!553193 () Bool)

(assert (=> bm!553193 (= call!553201 (derivationStepZipperDown!1583 (ite c!1175397 (regTwo!33183 (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))) (regOne!33182 (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343))))))) (ite c!1175397 (ite c!1175183 lt!2379358 (Context!11439 call!553110)) (Context!11439 call!553202)) (h!71628 s!2326)))))

(declare-fun bm!553194 () Bool)

(declare-fun call!553200 () (InoxSet Context!11438))

(assert (=> bm!553194 (= call!553200 call!553203)))

(declare-fun b!6431416 () Bool)

(declare-fun c!1175398 () Bool)

(declare-fun e!3901569 () Bool)

(assert (=> b!6431416 (= c!1175398 e!3901569)))

(declare-fun res!2643653 () Bool)

(assert (=> b!6431416 (=> (not res!2643653) (not e!3901569))))

(assert (=> b!6431416 (= res!2643653 ((_ is Concat!25180) (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))))))

(declare-fun e!3901570 () (InoxSet Context!11438))

(assert (=> b!6431416 (= e!3901570 e!3901566)))

(declare-fun b!6431417 () Bool)

(declare-fun call!553198 () (InoxSet Context!11438))

(assert (=> b!6431417 (= e!3901570 ((_ map or) call!553198 call!553201))))

(declare-fun bm!553195 () Bool)

(assert (=> bm!553195 (= call!553203 call!553198)))

(declare-fun b!6431418 () Bool)

(declare-fun e!3901571 () (InoxSet Context!11438))

(assert (=> b!6431418 (= e!3901571 e!3901570)))

(assert (=> b!6431418 (= c!1175397 ((_ is Union!16335) (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))))))

(declare-fun b!6431420 () Bool)

(assert (=> b!6431420 (= e!3901569 (nullable!6328 (regOne!33182 (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343))))))))))

(declare-fun b!6431421 () Bool)

(declare-fun c!1175401 () Bool)

(assert (=> b!6431421 (= c!1175401 ((_ is Star!16335) (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))))))

(declare-fun e!3901568 () (InoxSet Context!11438))

(declare-fun e!3901567 () (InoxSet Context!11438))

(assert (=> b!6431421 (= e!3901568 e!3901567)))

(declare-fun b!6431422 () Bool)

(assert (=> b!6431422 (= e!3901567 call!553200)))

(declare-fun call!553199 () List!65305)

(declare-fun c!1175400 () Bool)

(declare-fun bm!553196 () Bool)

(assert (=> bm!553196 (= call!553198 (derivationStepZipperDown!1583 (ite c!1175397 (regOne!33183 (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))) (ite c!1175398 (regTwo!33182 (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))) (ite c!1175400 (regOne!33182 (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))) (reg!16664 (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343))))))))) (ite (or c!1175397 c!1175398) (ite c!1175183 lt!2379358 (Context!11439 call!553110)) (Context!11439 call!553199)) (h!71628 s!2326)))))

(declare-fun b!6431423 () Bool)

(assert (=> b!6431423 (= e!3901566 e!3901568)))

(assert (=> b!6431423 (= c!1175400 ((_ is Concat!25180) (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))))))

(declare-fun b!6431424 () Bool)

(assert (=> b!6431424 (= e!3901571 (store ((as const (Array Context!11438 Bool)) false) (ite c!1175183 lt!2379358 (Context!11439 call!553110)) true))))

(declare-fun b!6431425 () Bool)

(assert (=> b!6431425 (= e!3901567 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2016003 () Bool)

(declare-fun c!1175399 () Bool)

(assert (=> d!2016003 (= c!1175399 (and ((_ is ElementMatch!16335) (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))) (= (c!1175066 (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))) (h!71628 s!2326))))))

(assert (=> d!2016003 (= (derivationStepZipperDown!1583 (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343))))) (ite c!1175183 lt!2379358 (Context!11439 call!553110)) (h!71628 s!2326)) e!3901571)))

(declare-fun b!6431419 () Bool)

(assert (=> b!6431419 (= e!3901568 call!553200)))

(declare-fun bm!553197 () Bool)

(assert (=> bm!553197 (= call!553199 call!553202)))

(declare-fun bm!553198 () Bool)

(assert (=> bm!553198 (= call!553202 ($colon$colon!2196 (exprs!6219 (ite c!1175183 lt!2379358 (Context!11439 call!553110))) (ite (or c!1175398 c!1175400) (regTwo!33182 (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))) (ite c!1175183 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343))))))))))

(assert (= (and d!2016003 c!1175399) b!6431424))

(assert (= (and d!2016003 (not c!1175399)) b!6431418))

(assert (= (and b!6431418 c!1175397) b!6431417))

(assert (= (and b!6431418 (not c!1175397)) b!6431416))

(assert (= (and b!6431416 res!2643653) b!6431420))

(assert (= (and b!6431416 c!1175398) b!6431415))

(assert (= (and b!6431416 (not c!1175398)) b!6431423))

(assert (= (and b!6431423 c!1175400) b!6431419))

(assert (= (and b!6431423 (not c!1175400)) b!6431421))

(assert (= (and b!6431421 c!1175401) b!6431422))

(assert (= (and b!6431421 (not c!1175401)) b!6431425))

(assert (= (or b!6431419 b!6431422) bm!553197))

(assert (= (or b!6431419 b!6431422) bm!553194))

(assert (= (or b!6431415 bm!553197) bm!553198))

(assert (= (or b!6431415 bm!553194) bm!553195))

(assert (= (or b!6431417 b!6431415) bm!553193))

(assert (= (or b!6431417 bm!553195) bm!553196))

(declare-fun m!7225024 () Bool)

(assert (=> b!6431424 m!7225024))

(declare-fun m!7225026 () Bool)

(assert (=> b!6431420 m!7225026))

(declare-fun m!7225028 () Bool)

(assert (=> bm!553198 m!7225028))

(declare-fun m!7225030 () Bool)

(assert (=> bm!553193 m!7225030))

(declare-fun m!7225032 () Bool)

(assert (=> bm!553196 m!7225032))

(assert (=> bm!553101 d!2016003))

(declare-fun d!2016005 () Bool)

(assert (=> d!2016005 (= (head!13162 (unfocusZipperList!1756 zl!343)) (h!71629 (unfocusZipperList!1756 zl!343)))))

(assert (=> b!6430675 d!2016005))

(declare-fun d!2016007 () Bool)

(assert (=> d!2016007 (= (isEmpty!37350 (_2!36617 lt!2379368)) ((_ is Nil!65180) (_2!36617 lt!2379368)))))

(assert (=> d!2015749 d!2016007))

(declare-fun b!6431427 () Bool)

(declare-fun e!3901574 () Bool)

(declare-fun e!3901576 () Bool)

(assert (=> b!6431427 (= e!3901574 e!3901576)))

(declare-fun res!2643655 () Bool)

(assert (=> b!6431427 (= res!2643655 (not (nullable!6328 (reg!16664 (regTwo!33182 r!7292)))))))

(assert (=> b!6431427 (=> (not res!2643655) (not e!3901576))))

(declare-fun c!1175402 () Bool)

(declare-fun bm!553199 () Bool)

(declare-fun c!1175403 () Bool)

(declare-fun call!553204 () Bool)

(assert (=> bm!553199 (= call!553204 (validRegex!8071 (ite c!1175402 (reg!16664 (regTwo!33182 r!7292)) (ite c!1175403 (regOne!33183 (regTwo!33182 r!7292)) (regOne!33182 (regTwo!33182 r!7292))))))))

(declare-fun b!6431428 () Bool)

(declare-fun e!3901573 () Bool)

(declare-fun call!553205 () Bool)

(assert (=> b!6431428 (= e!3901573 call!553205)))

(declare-fun b!6431429 () Bool)

(declare-fun e!3901578 () Bool)

(assert (=> b!6431429 (= e!3901574 e!3901578)))

(assert (=> b!6431429 (= c!1175403 ((_ is Union!16335) (regTwo!33182 r!7292)))))

(declare-fun b!6431430 () Bool)

(declare-fun e!3901577 () Bool)

(declare-fun e!3901572 () Bool)

(assert (=> b!6431430 (= e!3901577 e!3901572)))

(declare-fun res!2643658 () Bool)

(assert (=> b!6431430 (=> (not res!2643658) (not e!3901572))))

(declare-fun call!553206 () Bool)

(assert (=> b!6431430 (= res!2643658 call!553206)))

(declare-fun b!6431431 () Bool)

(declare-fun e!3901575 () Bool)

(assert (=> b!6431431 (= e!3901575 e!3901574)))

(assert (=> b!6431431 (= c!1175402 ((_ is Star!16335) (regTwo!33182 r!7292)))))

(declare-fun b!6431426 () Bool)

(declare-fun res!2643657 () Bool)

(assert (=> b!6431426 (=> res!2643657 e!3901577)))

(assert (=> b!6431426 (= res!2643657 (not ((_ is Concat!25180) (regTwo!33182 r!7292))))))

(assert (=> b!6431426 (= e!3901578 e!3901577)))

(declare-fun d!2016009 () Bool)

(declare-fun res!2643656 () Bool)

(assert (=> d!2016009 (=> res!2643656 e!3901575)))

(assert (=> d!2016009 (= res!2643656 ((_ is ElementMatch!16335) (regTwo!33182 r!7292)))))

(assert (=> d!2016009 (= (validRegex!8071 (regTwo!33182 r!7292)) e!3901575)))

(declare-fun b!6431432 () Bool)

(declare-fun res!2643654 () Bool)

(assert (=> b!6431432 (=> (not res!2643654) (not e!3901573))))

(assert (=> b!6431432 (= res!2643654 call!553206)))

(assert (=> b!6431432 (= e!3901578 e!3901573)))

(declare-fun b!6431433 () Bool)

(assert (=> b!6431433 (= e!3901576 call!553204)))

(declare-fun bm!553200 () Bool)

(assert (=> bm!553200 (= call!553205 (validRegex!8071 (ite c!1175403 (regTwo!33183 (regTwo!33182 r!7292)) (regTwo!33182 (regTwo!33182 r!7292)))))))

(declare-fun bm!553201 () Bool)

(assert (=> bm!553201 (= call!553206 call!553204)))

(declare-fun b!6431434 () Bool)

(assert (=> b!6431434 (= e!3901572 call!553205)))

(assert (= (and d!2016009 (not res!2643656)) b!6431431))

(assert (= (and b!6431431 c!1175402) b!6431427))

(assert (= (and b!6431431 (not c!1175402)) b!6431429))

(assert (= (and b!6431427 res!2643655) b!6431433))

(assert (= (and b!6431429 c!1175403) b!6431432))

(assert (= (and b!6431429 (not c!1175403)) b!6431426))

(assert (= (and b!6431432 res!2643654) b!6431428))

(assert (= (and b!6431426 (not res!2643657)) b!6431430))

(assert (= (and b!6431430 res!2643658) b!6431434))

(assert (= (or b!6431428 b!6431434) bm!553200))

(assert (= (or b!6431432 b!6431430) bm!553201))

(assert (= (or b!6431433 bm!553201) bm!553199))

(declare-fun m!7225034 () Bool)

(assert (=> b!6431427 m!7225034))

(declare-fun m!7225036 () Bool)

(assert (=> bm!553199 m!7225036))

(declare-fun m!7225038 () Bool)

(assert (=> bm!553200 m!7225038))

(assert (=> d!2015749 d!2016009))

(assert (=> bs!1617624 d!2015917))

(declare-fun d!2016011 () Bool)

(declare-fun e!3901584 () Bool)

(assert (=> d!2016011 e!3901584))

(declare-fun c!1175405 () Bool)

(assert (=> d!2016011 (= c!1175405 ((_ is EmptyExpr!16335) (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 lt!2379368)))))))

(declare-fun lt!2379560 () Bool)

(declare-fun e!3901579 () Bool)

(assert (=> d!2016011 (= lt!2379560 e!3901579)))

(declare-fun c!1175406 () Bool)

(assert (=> d!2016011 (= c!1175406 (isEmpty!37350 (tail!12246 (_1!36617 lt!2379368))))))

(assert (=> d!2016011 (validRegex!8071 (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 lt!2379368))))))

(assert (=> d!2016011 (= (matchR!8518 (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 lt!2379368))) (tail!12246 (_1!36617 lt!2379368))) lt!2379560)))

(declare-fun b!6431435 () Bool)

(declare-fun e!3901583 () Bool)

(assert (=> b!6431435 (= e!3901583 (not (= (head!13161 (tail!12246 (_1!36617 lt!2379368))) (c!1175066 (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 lt!2379368)))))))))

(declare-fun b!6431436 () Bool)

(assert (=> b!6431436 (= e!3901579 (matchR!8518 (derivativeStep!5039 (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 lt!2379368))) (head!13161 (tail!12246 (_1!36617 lt!2379368)))) (tail!12246 (tail!12246 (_1!36617 lt!2379368)))))))

(declare-fun b!6431437 () Bool)

(declare-fun res!2643660 () Bool)

(declare-fun e!3901582 () Bool)

(assert (=> b!6431437 (=> res!2643660 e!3901582)))

(declare-fun e!3901580 () Bool)

(assert (=> b!6431437 (= res!2643660 e!3901580)))

(declare-fun res!2643664 () Bool)

(assert (=> b!6431437 (=> (not res!2643664) (not e!3901580))))

(assert (=> b!6431437 (= res!2643664 lt!2379560)))

(declare-fun b!6431438 () Bool)

(declare-fun res!2643662 () Bool)

(assert (=> b!6431438 (=> res!2643662 e!3901582)))

(assert (=> b!6431438 (= res!2643662 (not ((_ is ElementMatch!16335) (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 lt!2379368))))))))

(declare-fun e!3901581 () Bool)

(assert (=> b!6431438 (= e!3901581 e!3901582)))

(declare-fun b!6431439 () Bool)

(declare-fun e!3901585 () Bool)

(assert (=> b!6431439 (= e!3901582 e!3901585)))

(declare-fun res!2643665 () Bool)

(assert (=> b!6431439 (=> (not res!2643665) (not e!3901585))))

(assert (=> b!6431439 (= res!2643665 (not lt!2379560))))

(declare-fun b!6431440 () Bool)

(declare-fun res!2643663 () Bool)

(assert (=> b!6431440 (=> res!2643663 e!3901583)))

(assert (=> b!6431440 (= res!2643663 (not (isEmpty!37350 (tail!12246 (tail!12246 (_1!36617 lt!2379368))))))))

(declare-fun b!6431441 () Bool)

(assert (=> b!6431441 (= e!3901579 (nullable!6328 (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 lt!2379368)))))))

(declare-fun b!6431442 () Bool)

(assert (=> b!6431442 (= e!3901584 e!3901581)))

(declare-fun c!1175404 () Bool)

(assert (=> b!6431442 (= c!1175404 ((_ is EmptyLang!16335) (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 lt!2379368)))))))

(declare-fun b!6431443 () Bool)

(declare-fun call!553207 () Bool)

(assert (=> b!6431443 (= e!3901584 (= lt!2379560 call!553207))))

(declare-fun b!6431444 () Bool)

(assert (=> b!6431444 (= e!3901581 (not lt!2379560))))

(declare-fun b!6431445 () Bool)

(declare-fun res!2643666 () Bool)

(assert (=> b!6431445 (=> (not res!2643666) (not e!3901580))))

(assert (=> b!6431445 (= res!2643666 (isEmpty!37350 (tail!12246 (tail!12246 (_1!36617 lt!2379368)))))))

(declare-fun b!6431446 () Bool)

(assert (=> b!6431446 (= e!3901585 e!3901583)))

(declare-fun res!2643659 () Bool)

(assert (=> b!6431446 (=> res!2643659 e!3901583)))

(assert (=> b!6431446 (= res!2643659 call!553207)))

(declare-fun b!6431447 () Bool)

(assert (=> b!6431447 (= e!3901580 (= (head!13161 (tail!12246 (_1!36617 lt!2379368))) (c!1175066 (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 lt!2379368))))))))

(declare-fun bm!553202 () Bool)

(assert (=> bm!553202 (= call!553207 (isEmpty!37350 (tail!12246 (_1!36617 lt!2379368))))))

(declare-fun b!6431448 () Bool)

(declare-fun res!2643661 () Bool)

(assert (=> b!6431448 (=> (not res!2643661) (not e!3901580))))

(assert (=> b!6431448 (= res!2643661 (not call!553207))))

(assert (= (and d!2016011 c!1175406) b!6431441))

(assert (= (and d!2016011 (not c!1175406)) b!6431436))

(assert (= (and d!2016011 c!1175405) b!6431443))

(assert (= (and d!2016011 (not c!1175405)) b!6431442))

(assert (= (and b!6431442 c!1175404) b!6431444))

(assert (= (and b!6431442 (not c!1175404)) b!6431438))

(assert (= (and b!6431438 (not res!2643662)) b!6431437))

(assert (= (and b!6431437 res!2643664) b!6431448))

(assert (= (and b!6431448 res!2643661) b!6431445))

(assert (= (and b!6431445 res!2643666) b!6431447))

(assert (= (and b!6431437 (not res!2643660)) b!6431439))

(assert (= (and b!6431439 res!2643665) b!6431446))

(assert (= (and b!6431446 (not res!2643659)) b!6431440))

(assert (= (and b!6431440 (not res!2643663)) b!6431435))

(assert (= (or b!6431443 b!6431448 b!6431446) bm!553202))

(assert (=> d!2016011 m!7224694))

(assert (=> d!2016011 m!7224696))

(assert (=> d!2016011 m!7224698))

(declare-fun m!7225040 () Bool)

(assert (=> d!2016011 m!7225040))

(assert (=> b!6431435 m!7224694))

(declare-fun m!7225042 () Bool)

(assert (=> b!6431435 m!7225042))

(assert (=> b!6431445 m!7224694))

(declare-fun m!7225044 () Bool)

(assert (=> b!6431445 m!7225044))

(assert (=> b!6431445 m!7225044))

(declare-fun m!7225046 () Bool)

(assert (=> b!6431445 m!7225046))

(assert (=> b!6431440 m!7224694))

(assert (=> b!6431440 m!7225044))

(assert (=> b!6431440 m!7225044))

(assert (=> b!6431440 m!7225046))

(assert (=> b!6431447 m!7224694))

(assert (=> b!6431447 m!7225042))

(assert (=> bm!553202 m!7224694))

(assert (=> bm!553202 m!7224696))

(assert (=> b!6431441 m!7224698))

(declare-fun m!7225048 () Bool)

(assert (=> b!6431441 m!7225048))

(assert (=> b!6431436 m!7224694))

(assert (=> b!6431436 m!7225042))

(assert (=> b!6431436 m!7224698))

(assert (=> b!6431436 m!7225042))

(declare-fun m!7225050 () Bool)

(assert (=> b!6431436 m!7225050))

(assert (=> b!6431436 m!7224694))

(assert (=> b!6431436 m!7225044))

(assert (=> b!6431436 m!7225050))

(assert (=> b!6431436 m!7225044))

(declare-fun m!7225052 () Bool)

(assert (=> b!6431436 m!7225052))

(assert (=> b!6431062 d!2016011))

(declare-fun b!6431449 () Bool)

(declare-fun e!3901587 () Regex!16335)

(declare-fun e!3901586 () Regex!16335)

(assert (=> b!6431449 (= e!3901587 e!3901586)))

(declare-fun c!1175408 () Bool)

(assert (=> b!6431449 (= c!1175408 ((_ is ElementMatch!16335) lt!2379353))))

(declare-fun b!6431450 () Bool)

(assert (=> b!6431450 (= e!3901586 (ite (= (head!13161 (_1!36617 lt!2379368)) (c!1175066 lt!2379353)) EmptyExpr!16335 EmptyLang!16335))))

(declare-fun e!3901590 () Regex!16335)

(declare-fun call!553211 () Regex!16335)

(declare-fun b!6431451 () Bool)

(declare-fun call!553208 () Regex!16335)

(assert (=> b!6431451 (= e!3901590 (Union!16335 (Concat!25180 call!553208 (regTwo!33182 lt!2379353)) call!553211))))

(declare-fun d!2016013 () Bool)

(declare-fun lt!2379561 () Regex!16335)

(assert (=> d!2016013 (validRegex!8071 lt!2379561)))

(assert (=> d!2016013 (= lt!2379561 e!3901587)))

(declare-fun c!1175410 () Bool)

(assert (=> d!2016013 (= c!1175410 (or ((_ is EmptyExpr!16335) lt!2379353) ((_ is EmptyLang!16335) lt!2379353)))))

(assert (=> d!2016013 (validRegex!8071 lt!2379353)))

(assert (=> d!2016013 (= (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 lt!2379368))) lt!2379561)))

(declare-fun b!6431452 () Bool)

(declare-fun e!3901589 () Regex!16335)

(declare-fun call!553210 () Regex!16335)

(declare-fun call!553209 () Regex!16335)

(assert (=> b!6431452 (= e!3901589 (Union!16335 call!553210 call!553209))))

(declare-fun c!1175409 () Bool)

(declare-fun bm!553203 () Bool)

(declare-fun c!1175407 () Bool)

(assert (=> bm!553203 (= call!553209 (derivativeStep!5039 (ite c!1175407 (regTwo!33183 lt!2379353) (ite c!1175409 (reg!16664 lt!2379353) (regOne!33182 lt!2379353))) (head!13161 (_1!36617 lt!2379368))))))

(declare-fun b!6431453 () Bool)

(declare-fun e!3901588 () Regex!16335)

(assert (=> b!6431453 (= e!3901589 e!3901588)))

(assert (=> b!6431453 (= c!1175409 ((_ is Star!16335) lt!2379353))))

(declare-fun b!6431454 () Bool)

(assert (=> b!6431454 (= e!3901587 EmptyLang!16335)))

(declare-fun b!6431455 () Bool)

(assert (=> b!6431455 (= c!1175407 ((_ is Union!16335) lt!2379353))))

(assert (=> b!6431455 (= e!3901586 e!3901589)))

(declare-fun bm!553204 () Bool)

(assert (=> bm!553204 (= call!553211 call!553210)))

(declare-fun b!6431456 () Bool)

(declare-fun c!1175411 () Bool)

(assert (=> b!6431456 (= c!1175411 (nullable!6328 (regOne!33182 lt!2379353)))))

(assert (=> b!6431456 (= e!3901588 e!3901590)))

(declare-fun bm!553205 () Bool)

(assert (=> bm!553205 (= call!553208 call!553209)))

(declare-fun bm!553206 () Bool)

(assert (=> bm!553206 (= call!553210 (derivativeStep!5039 (ite c!1175407 (regOne!33183 lt!2379353) (ite c!1175411 (regTwo!33182 lt!2379353) (regOne!33182 lt!2379353))) (head!13161 (_1!36617 lt!2379368))))))

(declare-fun b!6431457 () Bool)

(assert (=> b!6431457 (= e!3901588 (Concat!25180 call!553208 lt!2379353))))

(declare-fun b!6431458 () Bool)

(assert (=> b!6431458 (= e!3901590 (Union!16335 (Concat!25180 call!553211 (regTwo!33182 lt!2379353)) EmptyLang!16335))))

(assert (= (and d!2016013 c!1175410) b!6431454))

(assert (= (and d!2016013 (not c!1175410)) b!6431449))

(assert (= (and b!6431449 c!1175408) b!6431450))

(assert (= (and b!6431449 (not c!1175408)) b!6431455))

(assert (= (and b!6431455 c!1175407) b!6431452))

(assert (= (and b!6431455 (not c!1175407)) b!6431453))

(assert (= (and b!6431453 c!1175409) b!6431457))

(assert (= (and b!6431453 (not c!1175409)) b!6431456))

(assert (= (and b!6431456 c!1175411) b!6431451))

(assert (= (and b!6431456 (not c!1175411)) b!6431458))

(assert (= (or b!6431451 b!6431458) bm!553204))

(assert (= (or b!6431457 b!6431451) bm!553205))

(assert (= (or b!6431452 bm!553205) bm!553203))

(assert (= (or b!6431452 bm!553204) bm!553206))

(declare-fun m!7225054 () Bool)

(assert (=> d!2016013 m!7225054))

(assert (=> d!2016013 m!7223958))

(assert (=> bm!553203 m!7224692))

(declare-fun m!7225056 () Bool)

(assert (=> bm!553203 m!7225056))

(declare-fun m!7225058 () Bool)

(assert (=> b!6431456 m!7225058))

(assert (=> bm!553206 m!7224692))

(declare-fun m!7225060 () Bool)

(assert (=> bm!553206 m!7225060))

(assert (=> b!6431062 d!2016013))

(declare-fun d!2016015 () Bool)

(assert (=> d!2016015 (= (head!13161 (_1!36617 lt!2379368)) (h!71628 (_1!36617 lt!2379368)))))

(assert (=> b!6431062 d!2016015))

(declare-fun d!2016017 () Bool)

(assert (=> d!2016017 (= (tail!12246 (_1!36617 lt!2379368)) (t!378920 (_1!36617 lt!2379368)))))

(assert (=> b!6431062 d!2016017))

(assert (=> d!2015887 d!2015885))

(assert (=> d!2015887 d!2015959))

(declare-fun d!2016019 () Bool)

(assert (=> d!2016019 (= (Exists!3405 lambda!355804) (choose!47830 lambda!355804))))

(declare-fun bs!1617671 () Bool)

(assert (= bs!1617671 d!2016019))

(declare-fun m!7225062 () Bool)

(assert (=> bs!1617671 m!7225062))

(assert (=> d!2015887 d!2016019))

(declare-fun bs!1617672 () Bool)

(declare-fun d!2016021 () Bool)

(assert (= bs!1617672 (and d!2016021 d!2015887)))

(declare-fun lambda!355832 () Int)

(assert (=> bs!1617672 (= lambda!355832 lambda!355804)))

(declare-fun bs!1617673 () Bool)

(assert (= bs!1617673 (and d!2016021 d!2015879)))

(assert (=> bs!1617673 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355832 lambda!355801))))

(declare-fun bs!1617674 () Bool)

(assert (= bs!1617674 (and d!2016021 b!6430115)))

(assert (=> bs!1617674 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355832 lambda!355717))))

(declare-fun bs!1617675 () Bool)

(assert (= bs!1617675 (and d!2016021 b!6430094)))

(assert (=> bs!1617675 (= lambda!355832 lambda!355719)))

(assert (=> bs!1617675 (not (= lambda!355832 lambda!355720))))

(declare-fun bs!1617676 () Bool)

(assert (= bs!1617676 (and d!2016021 d!2015991)))

(assert (=> bs!1617676 (not (= lambda!355832 lambda!355829))))

(declare-fun bs!1617677 () Bool)

(assert (= bs!1617677 (and d!2016021 d!2015881)))

(assert (=> bs!1617677 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355832 lambda!355802))))

(assert (=> bs!1617676 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355832 lambda!355828))))

(declare-fun bs!1617678 () Bool)

(assert (= bs!1617678 (and d!2016021 d!2015957)))

(assert (=> bs!1617678 (not (= lambda!355832 lambda!355823))))

(declare-fun bs!1617679 () Bool)

(assert (= bs!1617679 (and d!2016021 d!2015895)))

(assert (=> bs!1617679 (= (= lt!2379353 (Star!16335 (reg!16664 (regOne!33182 r!7292)))) (= lambda!355832 lambda!355811))))

(declare-fun bs!1617680 () Bool)

(assert (= bs!1617680 (and d!2016021 b!6430859)))

(assert (=> bs!1617680 (not (= lambda!355832 lambda!355779))))

(declare-fun bs!1617681 () Bool)

(assert (= bs!1617681 (and d!2016021 d!2015889)))

(assert (=> bs!1617681 (not (= lambda!355832 lambda!355806))))

(assert (=> bs!1617677 (not (= lambda!355832 lambda!355803))))

(declare-fun bs!1617682 () Bool)

(assert (= bs!1617682 (and d!2016021 b!6430810)))

(assert (=> bs!1617682 (not (= lambda!355832 lambda!355772))))

(declare-fun bs!1617683 () Bool)

(assert (= bs!1617683 (and d!2016021 b!6431148)))

(assert (=> bs!1617683 (not (= lambda!355832 lambda!355813))))

(assert (=> bs!1617675 (not (= lambda!355832 lambda!355721))))

(declare-fun bs!1617684 () Bool)

(assert (= bs!1617684 (and d!2016021 d!2015793)))

(assert (=> bs!1617684 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355832 lambda!355786))))

(declare-fun bs!1617685 () Bool)

(assert (= bs!1617685 (and d!2016021 b!6431154)))

(assert (=> bs!1617685 (not (= lambda!355832 lambda!355814))))

(declare-fun bs!1617686 () Bool)

(assert (= bs!1617686 (and d!2016021 b!6430128)))

(assert (=> bs!1617686 (not (= lambda!355832 lambda!355715))))

(declare-fun bs!1617687 () Bool)

(assert (= bs!1617687 (and d!2016021 b!6430816)))

(assert (=> bs!1617687 (not (= lambda!355832 lambda!355773))))

(assert (=> bs!1617679 (not (= lambda!355832 lambda!355812))))

(declare-fun bs!1617688 () Bool)

(assert (= bs!1617688 (and d!2016021 b!6430865)))

(assert (=> bs!1617688 (not (= lambda!355832 lambda!355780))))

(assert (=> bs!1617681 (= lambda!355832 lambda!355805)))

(assert (=> bs!1617678 (= (= lt!2379353 (Star!16335 (reg!16664 (regOne!33182 r!7292)))) (= lambda!355832 lambda!355822))))

(assert (=> bs!1617674 (not (= lambda!355832 lambda!355718))))

(assert (=> bs!1617686 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355832 lambda!355714))))

(declare-fun bs!1617689 () Bool)

(assert (= bs!1617689 (and d!2016021 d!2015829)))

(assert (=> bs!1617689 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355832 lambda!355796))))

(assert (=> bs!1617689 (not (= lambda!355832 lambda!355797))))

(assert (=> d!2016021 true))

(assert (=> d!2016021 true))

(assert (=> d!2016021 true))

(assert (=> d!2016021 (= (isDefined!12929 (findConcatSeparation!2640 (reg!16664 (regOne!33182 r!7292)) lt!2379353 Nil!65180 (_1!36617 lt!2379368) (_1!36617 lt!2379368))) (Exists!3405 lambda!355832))))

(assert (=> d!2016021 true))

(declare-fun _$89!2670 () Unit!158671)

(assert (=> d!2016021 (= (choose!47831 (reg!16664 (regOne!33182 r!7292)) lt!2379353 (_1!36617 lt!2379368)) _$89!2670)))

(declare-fun bs!1617690 () Bool)

(assert (= bs!1617690 d!2016021))

(assert (=> bs!1617690 m!7223726))

(assert (=> bs!1617690 m!7223726))

(assert (=> bs!1617690 m!7224786))

(declare-fun m!7225064 () Bool)

(assert (=> bs!1617690 m!7225064))

(assert (=> d!2015887 d!2016021))

(declare-fun d!2016023 () Bool)

(assert (=> d!2016023 (= (isDefined!12929 (findConcatSeparation!2640 (reg!16664 (regOne!33182 r!7292)) lt!2379353 Nil!65180 (_1!36617 lt!2379368) (_1!36617 lt!2379368))) (not (isEmpty!37352 (findConcatSeparation!2640 (reg!16664 (regOne!33182 r!7292)) lt!2379353 Nil!65180 (_1!36617 lt!2379368) (_1!36617 lt!2379368)))))))

(declare-fun bs!1617691 () Bool)

(assert (= bs!1617691 d!2016023))

(assert (=> bs!1617691 m!7223726))

(declare-fun m!7225066 () Bool)

(assert (=> bs!1617691 m!7225066))

(assert (=> d!2015887 d!2016023))

(declare-fun bs!1617692 () Bool)

(declare-fun d!2016025 () Bool)

(assert (= bs!1617692 (and d!2016025 d!2015651)))

(declare-fun lambda!355833 () Int)

(assert (=> bs!1617692 (= lambda!355833 lambda!355744)))

(declare-fun bs!1617693 () Bool)

(assert (= bs!1617693 (and d!2016025 d!2015705)))

(assert (=> bs!1617693 (= lambda!355833 lambda!355761)))

(declare-fun bs!1617694 () Bool)

(assert (= bs!1617694 (and d!2016025 d!2015739)))

(assert (=> bs!1617694 (= lambda!355833 lambda!355765)))

(declare-fun bs!1617695 () Bool)

(assert (= bs!1617695 (and d!2016025 d!2015603)))

(assert (=> bs!1617695 (= lambda!355833 lambda!355733)))

(declare-fun bs!1617696 () Bool)

(assert (= bs!1617696 (and d!2016025 d!2015713)))

(assert (=> bs!1617696 (= lambda!355833 lambda!355764)))

(declare-fun bs!1617697 () Bool)

(assert (= bs!1617697 (and d!2016025 d!2015907)))

(assert (=> bs!1617697 (= lambda!355833 lambda!355817)))

(assert (=> d!2016025 (= (inv!84084 setElem!43914) (forall!15525 (exprs!6219 setElem!43914) lambda!355833))))

(declare-fun bs!1617698 () Bool)

(assert (= bs!1617698 d!2016025))

(declare-fun m!7225068 () Bool)

(assert (=> bs!1617698 m!7225068))

(assert (=> setNonEmpty!43914 d!2016025))

(declare-fun d!2016027 () Bool)

(assert (=> d!2016027 (= (isEmpty!37350 (tail!12246 (_2!36617 lt!2379368))) ((_ is Nil!65180) (tail!12246 (_2!36617 lt!2379368))))))

(assert (=> b!6430731 d!2016027))

(declare-fun d!2016029 () Bool)

(assert (=> d!2016029 (= (tail!12246 (_2!36617 lt!2379368)) (t!378920 (_2!36617 lt!2379368)))))

(assert (=> b!6430731 d!2016029))

(declare-fun d!2016031 () Bool)

(declare-fun e!3901598 () Bool)

(assert (=> d!2016031 e!3901598))

(declare-fun c!1175413 () Bool)

(assert (=> d!2016031 (= c!1175413 ((_ is EmptyExpr!16335) lt!2379353))))

(declare-fun lt!2379562 () Bool)

(declare-fun e!3901593 () Bool)

(assert (=> d!2016031 (= lt!2379562 e!3901593)))

(declare-fun c!1175414 () Bool)

(assert (=> d!2016031 (= c!1175414 (isEmpty!37350 (_2!36617 (get!22586 lt!2379537))))))

(assert (=> d!2016031 (validRegex!8071 lt!2379353)))

(assert (=> d!2016031 (= (matchR!8518 lt!2379353 (_2!36617 (get!22586 lt!2379537))) lt!2379562)))

(declare-fun b!6431463 () Bool)

(declare-fun e!3901597 () Bool)

(assert (=> b!6431463 (= e!3901597 (not (= (head!13161 (_2!36617 (get!22586 lt!2379537))) (c!1175066 lt!2379353))))))

(declare-fun b!6431464 () Bool)

(assert (=> b!6431464 (= e!3901593 (matchR!8518 (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 (get!22586 lt!2379537)))) (tail!12246 (_2!36617 (get!22586 lt!2379537)))))))

(declare-fun b!6431465 () Bool)

(declare-fun res!2643672 () Bool)

(declare-fun e!3901596 () Bool)

(assert (=> b!6431465 (=> res!2643672 e!3901596)))

(declare-fun e!3901594 () Bool)

(assert (=> b!6431465 (= res!2643672 e!3901594)))

(declare-fun res!2643676 () Bool)

(assert (=> b!6431465 (=> (not res!2643676) (not e!3901594))))

(assert (=> b!6431465 (= res!2643676 lt!2379562)))

(declare-fun b!6431466 () Bool)

(declare-fun res!2643674 () Bool)

(assert (=> b!6431466 (=> res!2643674 e!3901596)))

(assert (=> b!6431466 (= res!2643674 (not ((_ is ElementMatch!16335) lt!2379353)))))

(declare-fun e!3901595 () Bool)

(assert (=> b!6431466 (= e!3901595 e!3901596)))

(declare-fun b!6431467 () Bool)

(declare-fun e!3901599 () Bool)

(assert (=> b!6431467 (= e!3901596 e!3901599)))

(declare-fun res!2643677 () Bool)

(assert (=> b!6431467 (=> (not res!2643677) (not e!3901599))))

(assert (=> b!6431467 (= res!2643677 (not lt!2379562))))

(declare-fun b!6431468 () Bool)

(declare-fun res!2643675 () Bool)

(assert (=> b!6431468 (=> res!2643675 e!3901597)))

(assert (=> b!6431468 (= res!2643675 (not (isEmpty!37350 (tail!12246 (_2!36617 (get!22586 lt!2379537))))))))

(declare-fun b!6431469 () Bool)

(assert (=> b!6431469 (= e!3901593 (nullable!6328 lt!2379353))))

(declare-fun b!6431470 () Bool)

(assert (=> b!6431470 (= e!3901598 e!3901595)))

(declare-fun c!1175412 () Bool)

(assert (=> b!6431470 (= c!1175412 ((_ is EmptyLang!16335) lt!2379353))))

(declare-fun b!6431471 () Bool)

(declare-fun call!553212 () Bool)

(assert (=> b!6431471 (= e!3901598 (= lt!2379562 call!553212))))

(declare-fun b!6431472 () Bool)

(assert (=> b!6431472 (= e!3901595 (not lt!2379562))))

(declare-fun b!6431473 () Bool)

(declare-fun res!2643678 () Bool)

(assert (=> b!6431473 (=> (not res!2643678) (not e!3901594))))

(assert (=> b!6431473 (= res!2643678 (isEmpty!37350 (tail!12246 (_2!36617 (get!22586 lt!2379537)))))))

(declare-fun b!6431474 () Bool)

(assert (=> b!6431474 (= e!3901599 e!3901597)))

(declare-fun res!2643671 () Bool)

(assert (=> b!6431474 (=> res!2643671 e!3901597)))

(assert (=> b!6431474 (= res!2643671 call!553212)))

(declare-fun b!6431475 () Bool)

(assert (=> b!6431475 (= e!3901594 (= (head!13161 (_2!36617 (get!22586 lt!2379537))) (c!1175066 lt!2379353)))))

(declare-fun bm!553207 () Bool)

(assert (=> bm!553207 (= call!553212 (isEmpty!37350 (_2!36617 (get!22586 lt!2379537))))))

(declare-fun b!6431476 () Bool)

(declare-fun res!2643673 () Bool)

(assert (=> b!6431476 (=> (not res!2643673) (not e!3901594))))

(assert (=> b!6431476 (= res!2643673 (not call!553212))))

(assert (= (and d!2016031 c!1175414) b!6431469))

(assert (= (and d!2016031 (not c!1175414)) b!6431464))

(assert (= (and d!2016031 c!1175413) b!6431471))

(assert (= (and d!2016031 (not c!1175413)) b!6431470))

(assert (= (and b!6431470 c!1175412) b!6431472))

(assert (= (and b!6431470 (not c!1175412)) b!6431466))

(assert (= (and b!6431466 (not res!2643674)) b!6431465))

(assert (= (and b!6431465 res!2643676) b!6431476))

(assert (= (and b!6431476 res!2643673) b!6431473))

(assert (= (and b!6431473 res!2643678) b!6431475))

(assert (= (and b!6431465 (not res!2643672)) b!6431467))

(assert (= (and b!6431467 res!2643677) b!6431474))

(assert (= (and b!6431474 (not res!2643671)) b!6431468))

(assert (= (and b!6431468 (not res!2643675)) b!6431463))

(assert (= (or b!6431471 b!6431476 b!6431474) bm!553207))

(declare-fun m!7225070 () Bool)

(assert (=> d!2016031 m!7225070))

(assert (=> d!2016031 m!7223958))

(declare-fun m!7225072 () Bool)

(assert (=> b!6431463 m!7225072))

(declare-fun m!7225074 () Bool)

(assert (=> b!6431473 m!7225074))

(assert (=> b!6431473 m!7225074))

(declare-fun m!7225076 () Bool)

(assert (=> b!6431473 m!7225076))

(assert (=> b!6431468 m!7225074))

(assert (=> b!6431468 m!7225074))

(assert (=> b!6431468 m!7225076))

(assert (=> b!6431475 m!7225072))

(assert (=> bm!553207 m!7225070))

(assert (=> b!6431469 m!7224052))

(assert (=> b!6431464 m!7225072))

(assert (=> b!6431464 m!7225072))

(declare-fun m!7225078 () Bool)

(assert (=> b!6431464 m!7225078))

(assert (=> b!6431464 m!7225074))

(assert (=> b!6431464 m!7225078))

(assert (=> b!6431464 m!7225074))

(declare-fun m!7225080 () Bool)

(assert (=> b!6431464 m!7225080))

(assert (=> b!6431127 d!2016031))

(assert (=> b!6431127 d!2015949))

(assert (=> d!2015781 d!2015773))

(assert (=> d!2015781 d!2015777))

(declare-fun d!2016033 () Bool)

(assert (=> d!2016033 (= (matchR!8518 lt!2379346 s!2326) (matchRSpec!3436 lt!2379346 s!2326))))

(assert (=> d!2016033 true))

(declare-fun _$88!5126 () Unit!158671)

(assert (=> d!2016033 (= (choose!47829 lt!2379346 s!2326) _$88!5126)))

(declare-fun bs!1617699 () Bool)

(assert (= bs!1617699 d!2016033))

(assert (=> bs!1617699 m!7223770))

(assert (=> bs!1617699 m!7223772))

(assert (=> d!2015781 d!2016033))

(declare-fun b!6431478 () Bool)

(declare-fun e!3901602 () Bool)

(declare-fun e!3901604 () Bool)

(assert (=> b!6431478 (= e!3901602 e!3901604)))

(declare-fun res!2643680 () Bool)

(assert (=> b!6431478 (= res!2643680 (not (nullable!6328 (reg!16664 lt!2379346))))))

(assert (=> b!6431478 (=> (not res!2643680) (not e!3901604))))

(declare-fun c!1175416 () Bool)

(declare-fun bm!553208 () Bool)

(declare-fun c!1175415 () Bool)

(declare-fun call!553213 () Bool)

(assert (=> bm!553208 (= call!553213 (validRegex!8071 (ite c!1175415 (reg!16664 lt!2379346) (ite c!1175416 (regOne!33183 lt!2379346) (regOne!33182 lt!2379346)))))))

(declare-fun b!6431479 () Bool)

(declare-fun e!3901601 () Bool)

(declare-fun call!553214 () Bool)

(assert (=> b!6431479 (= e!3901601 call!553214)))

(declare-fun b!6431480 () Bool)

(declare-fun e!3901606 () Bool)

(assert (=> b!6431480 (= e!3901602 e!3901606)))

(assert (=> b!6431480 (= c!1175416 ((_ is Union!16335) lt!2379346))))

(declare-fun b!6431481 () Bool)

(declare-fun e!3901605 () Bool)

(declare-fun e!3901600 () Bool)

(assert (=> b!6431481 (= e!3901605 e!3901600)))

(declare-fun res!2643683 () Bool)

(assert (=> b!6431481 (=> (not res!2643683) (not e!3901600))))

(declare-fun call!553215 () Bool)

(assert (=> b!6431481 (= res!2643683 call!553215)))

(declare-fun b!6431482 () Bool)

(declare-fun e!3901603 () Bool)

(assert (=> b!6431482 (= e!3901603 e!3901602)))

(assert (=> b!6431482 (= c!1175415 ((_ is Star!16335) lt!2379346))))

(declare-fun b!6431477 () Bool)

(declare-fun res!2643682 () Bool)

(assert (=> b!6431477 (=> res!2643682 e!3901605)))

(assert (=> b!6431477 (= res!2643682 (not ((_ is Concat!25180) lt!2379346)))))

(assert (=> b!6431477 (= e!3901606 e!3901605)))

(declare-fun d!2016035 () Bool)

(declare-fun res!2643681 () Bool)

(assert (=> d!2016035 (=> res!2643681 e!3901603)))

(assert (=> d!2016035 (= res!2643681 ((_ is ElementMatch!16335) lt!2379346))))

(assert (=> d!2016035 (= (validRegex!8071 lt!2379346) e!3901603)))

(declare-fun b!6431483 () Bool)

(declare-fun res!2643679 () Bool)

(assert (=> b!6431483 (=> (not res!2643679) (not e!3901601))))

(assert (=> b!6431483 (= res!2643679 call!553215)))

(assert (=> b!6431483 (= e!3901606 e!3901601)))

(declare-fun b!6431484 () Bool)

(assert (=> b!6431484 (= e!3901604 call!553213)))

(declare-fun bm!553209 () Bool)

(assert (=> bm!553209 (= call!553214 (validRegex!8071 (ite c!1175416 (regTwo!33183 lt!2379346) (regTwo!33182 lt!2379346))))))

(declare-fun bm!553210 () Bool)

(assert (=> bm!553210 (= call!553215 call!553213)))

(declare-fun b!6431485 () Bool)

(assert (=> b!6431485 (= e!3901600 call!553214)))

(assert (= (and d!2016035 (not res!2643681)) b!6431482))

(assert (= (and b!6431482 c!1175415) b!6431478))

(assert (= (and b!6431482 (not c!1175415)) b!6431480))

(assert (= (and b!6431478 res!2643680) b!6431484))

(assert (= (and b!6431480 c!1175416) b!6431483))

(assert (= (and b!6431480 (not c!1175416)) b!6431477))

(assert (= (and b!6431483 res!2643679) b!6431479))

(assert (= (and b!6431477 (not res!2643682)) b!6431481))

(assert (= (and b!6431481 res!2643683) b!6431485))

(assert (= (or b!6431479 b!6431485) bm!553209))

(assert (= (or b!6431483 b!6431481) bm!553210))

(assert (= (or b!6431484 bm!553210) bm!553208))

(declare-fun m!7225082 () Bool)

(assert (=> b!6431478 m!7225082))

(declare-fun m!7225084 () Bool)

(assert (=> bm!553208 m!7225084))

(declare-fun m!7225086 () Bool)

(assert (=> bm!553209 m!7225086))

(assert (=> d!2015781 d!2016035))

(declare-fun d!2016037 () Bool)

(declare-fun e!3901612 () Bool)

(assert (=> d!2016037 e!3901612))

(declare-fun c!1175418 () Bool)

(assert (=> d!2016037 (= c!1175418 ((_ is EmptyExpr!16335) (regTwo!33182 r!7292)))))

(declare-fun lt!2379563 () Bool)

(declare-fun e!3901607 () Bool)

(assert (=> d!2016037 (= lt!2379563 e!3901607)))

(declare-fun c!1175419 () Bool)

(assert (=> d!2016037 (= c!1175419 (isEmpty!37350 (_2!36617 (get!22586 lt!2379531))))))

(assert (=> d!2016037 (validRegex!8071 (regTwo!33182 r!7292))))

(assert (=> d!2016037 (= (matchR!8518 (regTwo!33182 r!7292) (_2!36617 (get!22586 lt!2379531))) lt!2379563)))

(declare-fun b!6431486 () Bool)

(declare-fun e!3901611 () Bool)

(assert (=> b!6431486 (= e!3901611 (not (= (head!13161 (_2!36617 (get!22586 lt!2379531))) (c!1175066 (regTwo!33182 r!7292)))))))

(declare-fun b!6431487 () Bool)

(assert (=> b!6431487 (= e!3901607 (matchR!8518 (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 (get!22586 lt!2379531)))) (tail!12246 (_2!36617 (get!22586 lt!2379531)))))))

(declare-fun b!6431488 () Bool)

(declare-fun res!2643685 () Bool)

(declare-fun e!3901610 () Bool)

(assert (=> b!6431488 (=> res!2643685 e!3901610)))

(declare-fun e!3901608 () Bool)

(assert (=> b!6431488 (= res!2643685 e!3901608)))

(declare-fun res!2643689 () Bool)

(assert (=> b!6431488 (=> (not res!2643689) (not e!3901608))))

(assert (=> b!6431488 (= res!2643689 lt!2379563)))

(declare-fun b!6431489 () Bool)

(declare-fun res!2643687 () Bool)

(assert (=> b!6431489 (=> res!2643687 e!3901610)))

(assert (=> b!6431489 (= res!2643687 (not ((_ is ElementMatch!16335) (regTwo!33182 r!7292))))))

(declare-fun e!3901609 () Bool)

(assert (=> b!6431489 (= e!3901609 e!3901610)))

(declare-fun b!6431490 () Bool)

(declare-fun e!3901613 () Bool)

(assert (=> b!6431490 (= e!3901610 e!3901613)))

(declare-fun res!2643690 () Bool)

(assert (=> b!6431490 (=> (not res!2643690) (not e!3901613))))

(assert (=> b!6431490 (= res!2643690 (not lt!2379563))))

(declare-fun b!6431491 () Bool)

(declare-fun res!2643688 () Bool)

(assert (=> b!6431491 (=> res!2643688 e!3901611)))

(assert (=> b!6431491 (= res!2643688 (not (isEmpty!37350 (tail!12246 (_2!36617 (get!22586 lt!2379531))))))))

(declare-fun b!6431492 () Bool)

(assert (=> b!6431492 (= e!3901607 (nullable!6328 (regTwo!33182 r!7292)))))

(declare-fun b!6431493 () Bool)

(assert (=> b!6431493 (= e!3901612 e!3901609)))

(declare-fun c!1175417 () Bool)

(assert (=> b!6431493 (= c!1175417 ((_ is EmptyLang!16335) (regTwo!33182 r!7292)))))

(declare-fun b!6431494 () Bool)

(declare-fun call!553216 () Bool)

(assert (=> b!6431494 (= e!3901612 (= lt!2379563 call!553216))))

(declare-fun b!6431495 () Bool)

(assert (=> b!6431495 (= e!3901609 (not lt!2379563))))

(declare-fun b!6431496 () Bool)

(declare-fun res!2643691 () Bool)

(assert (=> b!6431496 (=> (not res!2643691) (not e!3901608))))

(assert (=> b!6431496 (= res!2643691 (isEmpty!37350 (tail!12246 (_2!36617 (get!22586 lt!2379531)))))))

(declare-fun b!6431497 () Bool)

(assert (=> b!6431497 (= e!3901613 e!3901611)))

(declare-fun res!2643684 () Bool)

(assert (=> b!6431497 (=> res!2643684 e!3901611)))

(assert (=> b!6431497 (= res!2643684 call!553216)))

(declare-fun b!6431498 () Bool)

(assert (=> b!6431498 (= e!3901608 (= (head!13161 (_2!36617 (get!22586 lt!2379531))) (c!1175066 (regTwo!33182 r!7292))))))

(declare-fun bm!553211 () Bool)

(assert (=> bm!553211 (= call!553216 (isEmpty!37350 (_2!36617 (get!22586 lt!2379531))))))

(declare-fun b!6431499 () Bool)

(declare-fun res!2643686 () Bool)

(assert (=> b!6431499 (=> (not res!2643686) (not e!3901608))))

(assert (=> b!6431499 (= res!2643686 (not call!553216))))

(assert (= (and d!2016037 c!1175419) b!6431492))

(assert (= (and d!2016037 (not c!1175419)) b!6431487))

(assert (= (and d!2016037 c!1175418) b!6431494))

(assert (= (and d!2016037 (not c!1175418)) b!6431493))

(assert (= (and b!6431493 c!1175417) b!6431495))

(assert (= (and b!6431493 (not c!1175417)) b!6431489))

(assert (= (and b!6431489 (not res!2643687)) b!6431488))

(assert (= (and b!6431488 res!2643689) b!6431499))

(assert (= (and b!6431499 res!2643686) b!6431496))

(assert (= (and b!6431496 res!2643691) b!6431498))

(assert (= (and b!6431488 (not res!2643685)) b!6431490))

(assert (= (and b!6431490 res!2643690) b!6431497))

(assert (= (and b!6431497 (not res!2643684)) b!6431491))

(assert (= (and b!6431491 (not res!2643688)) b!6431486))

(assert (= (or b!6431494 b!6431499 b!6431497) bm!553211))

(declare-fun m!7225088 () Bool)

(assert (=> d!2016037 m!7225088))

(assert (=> d!2016037 m!7223960))

(declare-fun m!7225090 () Bool)

(assert (=> b!6431486 m!7225090))

(declare-fun m!7225092 () Bool)

(assert (=> b!6431496 m!7225092))

(assert (=> b!6431496 m!7225092))

(declare-fun m!7225094 () Bool)

(assert (=> b!6431496 m!7225094))

(assert (=> b!6431491 m!7225092))

(assert (=> b!6431491 m!7225092))

(assert (=> b!6431491 m!7225094))

(assert (=> b!6431498 m!7225090))

(assert (=> bm!553211 m!7225088))

(assert (=> b!6431492 m!7224386))

(assert (=> b!6431487 m!7225090))

(assert (=> b!6431487 m!7225090))

(declare-fun m!7225096 () Bool)

(assert (=> b!6431487 m!7225096))

(assert (=> b!6431487 m!7225092))

(assert (=> b!6431487 m!7225096))

(assert (=> b!6431487 m!7225092))

(declare-fun m!7225098 () Bool)

(assert (=> b!6431487 m!7225098))

(assert (=> b!6431114 d!2016037))

(assert (=> b!6431114 d!2015945))

(declare-fun d!2016039 () Bool)

(assert (=> d!2016039 (= (isEmptyLang!1743 lt!2379465) ((_ is EmptyLang!16335) lt!2379465))))

(assert (=> b!6430684 d!2016039))

(declare-fun b!6431500 () Bool)

(declare-fun e!3901614 () (InoxSet Context!11438))

(declare-fun call!553220 () (InoxSet Context!11438))

(declare-fun call!553222 () (InoxSet Context!11438))

(assert (=> b!6431500 (= e!3901614 ((_ map or) call!553220 call!553222))))

(declare-fun bm!553212 () Bool)

(declare-fun c!1175420 () Bool)

(declare-fun call!553221 () List!65305)

(assert (=> bm!553212 (= call!553220 (derivationStepZipperDown!1583 (ite c!1175420 (regTwo!33183 (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292))))))) (regOne!33182 (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292)))))))) (ite c!1175420 (ite (or c!1175245 c!1175246) lt!2379355 (Context!11439 call!553120)) (Context!11439 call!553221)) (h!71628 s!2326)))))

(declare-fun bm!553213 () Bool)

(declare-fun call!553219 () (InoxSet Context!11438))

(assert (=> bm!553213 (= call!553219 call!553222)))

(declare-fun b!6431501 () Bool)

(declare-fun c!1175421 () Bool)

(declare-fun e!3901617 () Bool)

(assert (=> b!6431501 (= c!1175421 e!3901617)))

(declare-fun res!2643692 () Bool)

(assert (=> b!6431501 (=> (not res!2643692) (not e!3901617))))

(assert (=> b!6431501 (= res!2643692 ((_ is Concat!25180) (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292))))))))))

(declare-fun e!3901618 () (InoxSet Context!11438))

(assert (=> b!6431501 (= e!3901618 e!3901614)))

(declare-fun b!6431502 () Bool)

(declare-fun call!553217 () (InoxSet Context!11438))

(assert (=> b!6431502 (= e!3901618 ((_ map or) call!553217 call!553220))))

(declare-fun bm!553214 () Bool)

(assert (=> bm!553214 (= call!553222 call!553217)))

(declare-fun b!6431503 () Bool)

(declare-fun e!3901619 () (InoxSet Context!11438))

(assert (=> b!6431503 (= e!3901619 e!3901618)))

(assert (=> b!6431503 (= c!1175420 ((_ is Union!16335) (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292))))))))))

(declare-fun b!6431505 () Bool)

(assert (=> b!6431505 (= e!3901617 (nullable!6328 (regOne!33182 (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292)))))))))))

(declare-fun b!6431506 () Bool)

(declare-fun c!1175424 () Bool)

(assert (=> b!6431506 (= c!1175424 ((_ is Star!16335) (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292))))))))))

(declare-fun e!3901616 () (InoxSet Context!11438))

(declare-fun e!3901615 () (InoxSet Context!11438))

(assert (=> b!6431506 (= e!3901616 e!3901615)))

(declare-fun b!6431507 () Bool)

(assert (=> b!6431507 (= e!3901615 call!553219)))

(declare-fun bm!553215 () Bool)

(declare-fun c!1175423 () Bool)

(declare-fun call!553218 () List!65305)

(assert (=> bm!553215 (= call!553217 (derivationStepZipperDown!1583 (ite c!1175420 (regOne!33183 (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292))))))) (ite c!1175421 (regTwo!33182 (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292))))))) (ite c!1175423 (regOne!33182 (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292))))))) (reg!16664 (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292)))))))))) (ite (or c!1175420 c!1175421) (ite (or c!1175245 c!1175246) lt!2379355 (Context!11439 call!553120)) (Context!11439 call!553218)) (h!71628 s!2326)))))

(declare-fun b!6431508 () Bool)

(assert (=> b!6431508 (= e!3901614 e!3901616)))

(assert (=> b!6431508 (= c!1175423 ((_ is Concat!25180) (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292))))))))))

(declare-fun b!6431509 () Bool)

(assert (=> b!6431509 (= e!3901619 (store ((as const (Array Context!11438 Bool)) false) (ite (or c!1175245 c!1175246) lt!2379355 (Context!11439 call!553120)) true))))

(declare-fun b!6431510 () Bool)

(assert (=> b!6431510 (= e!3901615 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2016041 () Bool)

(declare-fun c!1175422 () Bool)

(assert (=> d!2016041 (= c!1175422 (and ((_ is ElementMatch!16335) (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292))))))) (= (c!1175066 (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292))))))) (h!71628 s!2326))))))

(assert (=> d!2016041 (= (derivationStepZipperDown!1583 (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292)))))) (ite (or c!1175245 c!1175246) lt!2379355 (Context!11439 call!553120)) (h!71628 s!2326)) e!3901619)))

(declare-fun b!6431504 () Bool)

(assert (=> b!6431504 (= e!3901616 call!553219)))

(declare-fun bm!553216 () Bool)

(assert (=> bm!553216 (= call!553218 call!553221)))

(declare-fun bm!553217 () Bool)

(assert (=> bm!553217 (= call!553221 ($colon$colon!2196 (exprs!6219 (ite (or c!1175245 c!1175246) lt!2379355 (Context!11439 call!553120))) (ite (or c!1175421 c!1175423) (regTwo!33182 (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292))))))) (ite c!1175245 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175246 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (ite c!1175248 (regOne!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (reg!16664 (regOne!33182 r!7292)))))))))))

(assert (= (and d!2016041 c!1175422) b!6431509))

(assert (= (and d!2016041 (not c!1175422)) b!6431503))

(assert (= (and b!6431503 c!1175420) b!6431502))

(assert (= (and b!6431503 (not c!1175420)) b!6431501))

(assert (= (and b!6431501 res!2643692) b!6431505))

(assert (= (and b!6431501 c!1175421) b!6431500))

(assert (= (and b!6431501 (not c!1175421)) b!6431508))

(assert (= (and b!6431508 c!1175423) b!6431504))

(assert (= (and b!6431508 (not c!1175423)) b!6431506))

(assert (= (and b!6431506 c!1175424) b!6431507))

(assert (= (and b!6431506 (not c!1175424)) b!6431510))

(assert (= (or b!6431504 b!6431507) bm!553216))

(assert (= (or b!6431504 b!6431507) bm!553213))

(assert (= (or b!6431500 bm!553216) bm!553217))

(assert (= (or b!6431500 bm!553213) bm!553214))

(assert (= (or b!6431502 b!6431500) bm!553212))

(assert (= (or b!6431502 bm!553214) bm!553215))

(declare-fun m!7225100 () Bool)

(assert (=> b!6431509 m!7225100))

(declare-fun m!7225102 () Bool)

(assert (=> b!6431505 m!7225102))

(declare-fun m!7225104 () Bool)

(assert (=> bm!553217 m!7225104))

(declare-fun m!7225106 () Bool)

(assert (=> bm!553212 m!7225106))

(declare-fun m!7225108 () Bool)

(assert (=> bm!553215 m!7225108))

(assert (=> bm!553117 d!2016041))

(declare-fun d!2016043 () Bool)

(assert (=> d!2016043 (= (isEmpty!37350 (tail!12246 (_1!36617 lt!2379368))) ((_ is Nil!65180) (tail!12246 (_1!36617 lt!2379368))))))

(assert (=> b!6431071 d!2016043))

(assert (=> b!6431071 d!2016017))

(declare-fun d!2016045 () Bool)

(assert (=> d!2016045 (= (isEmpty!37349 (exprs!6219 (h!71630 zl!343))) ((_ is Nil!65181) (exprs!6219 (h!71630 zl!343))))))

(assert (=> b!6431185 d!2016045))

(assert (=> bm!553120 d!2016007))

(declare-fun d!2016047 () Bool)

(assert (=> d!2016047 (= (flatMap!1840 lt!2379348 lambda!355800) (choose!47821 lt!2379348 lambda!355800))))

(declare-fun bs!1617700 () Bool)

(assert (= bs!1617700 d!2016047))

(declare-fun m!7225110 () Bool)

(assert (=> bs!1617700 m!7225110))

(assert (=> d!2015865 d!2016047))

(declare-fun d!2016049 () Bool)

(assert (=> d!2016049 true))

(declare-fun setRes!43917 () Bool)

(assert (=> d!2016049 setRes!43917))

(declare-fun condSetEmpty!43917 () Bool)

(declare-fun res!2643695 () (InoxSet Context!11438))

(assert (=> d!2016049 (= condSetEmpty!43917 (= res!2643695 ((as const (Array Context!11438 Bool)) false)))))

(assert (=> d!2016049 (= (choose!47821 lt!2379349 lambda!355716) res!2643695)))

(declare-fun setIsEmpty!43917 () Bool)

(assert (=> setIsEmpty!43917 setRes!43917))

(declare-fun setNonEmpty!43917 () Bool)

(declare-fun e!3901622 () Bool)

(declare-fun tp!1784258 () Bool)

(declare-fun setElem!43917 () Context!11438)

(assert (=> setNonEmpty!43917 (= setRes!43917 (and tp!1784258 (inv!84084 setElem!43917) e!3901622))))

(declare-fun setRest!43917 () (InoxSet Context!11438))

(assert (=> setNonEmpty!43917 (= res!2643695 ((_ map or) (store ((as const (Array Context!11438 Bool)) false) setElem!43917 true) setRest!43917))))

(declare-fun b!6431513 () Bool)

(declare-fun tp!1784257 () Bool)

(assert (=> b!6431513 (= e!3901622 tp!1784257)))

(assert (= (and d!2016049 condSetEmpty!43917) setIsEmpty!43917))

(assert (= (and d!2016049 (not condSetEmpty!43917)) setNonEmpty!43917))

(assert (= setNonEmpty!43917 b!6431513))

(declare-fun m!7225112 () Bool)

(assert (=> setNonEmpty!43917 m!7225112))

(assert (=> d!2015913 d!2016049))

(declare-fun d!2016051 () Bool)

(declare-fun lambda!355836 () Int)

(declare-fun exists!2600 ((InoxSet Context!11438) Int) Bool)

(assert (=> d!2016051 (= (nullableZipper!2100 lt!2379365) (exists!2600 lt!2379365 lambda!355836))))

(declare-fun bs!1617701 () Bool)

(assert (= bs!1617701 d!2016051))

(declare-fun m!7225114 () Bool)

(assert (=> bs!1617701 m!7225114))

(assert (=> b!6430569 d!2016051))

(declare-fun d!2016053 () Bool)

(assert (=> d!2016053 (= (isEmpty!37350 (t!378920 s!2326)) ((_ is Nil!65180) (t!378920 s!2326)))))

(assert (=> d!2015735 d!2016053))

(declare-fun d!2016055 () Bool)

(assert (=> d!2016055 (= (head!13161 lt!2379356) (h!71628 lt!2379356))))

(assert (=> b!6430415 d!2016055))

(assert (=> d!2015921 d!2015913))

(declare-fun d!2016057 () Bool)

(assert (=> d!2016057 (= (flatMap!1840 lt!2379349 lambda!355716) (dynLambda!25892 lambda!355716 lt!2379362))))

(assert (=> d!2016057 true))

(declare-fun _$13!3647 () Unit!158671)

(assert (=> d!2016057 (= (choose!47823 lt!2379349 lt!2379362 lambda!355716) _$13!3647)))

(declare-fun b_lambda!244341 () Bool)

(assert (=> (not b_lambda!244341) (not d!2016057)))

(declare-fun bs!1617702 () Bool)

(assert (= bs!1617702 d!2016057))

(assert (=> bs!1617702 m!7223712))

(assert (=> bs!1617702 m!7224868))

(assert (=> d!2015921 d!2016057))

(assert (=> b!6430840 d!2015965))

(declare-fun bs!1617703 () Bool)

(declare-fun d!2016059 () Bool)

(assert (= bs!1617703 (and d!2016059 d!2016051)))

(declare-fun lambda!355837 () Int)

(assert (=> bs!1617703 (= lambda!355837 lambda!355836)))

(assert (=> d!2016059 (= (nullableZipper!2100 ((_ map or) lt!2379363 lt!2379360)) (exists!2600 ((_ map or) lt!2379363 lt!2379360) lambda!355837))))

(declare-fun bs!1617704 () Bool)

(assert (= bs!1617704 d!2016059))

(declare-fun m!7225116 () Bool)

(assert (=> bs!1617704 m!7225116))

(assert (=> b!6430276 d!2016059))

(assert (=> b!6431176 d!2015923))

(declare-fun d!2016061 () Bool)

(assert (=> d!2016061 (= (isEmpty!37350 (tail!12246 s!2326)) ((_ is Nil!65180) (tail!12246 s!2326)))))

(assert (=> b!6430852 d!2016061))

(assert (=> b!6430852 d!2015973))

(declare-fun bs!1617705 () Bool)

(declare-fun d!2016063 () Bool)

(assert (= bs!1617705 (and d!2016063 d!2016051)))

(declare-fun lambda!355838 () Int)

(assert (=> bs!1617705 (= lambda!355838 lambda!355836)))

(declare-fun bs!1617706 () Bool)

(assert (= bs!1617706 (and d!2016063 d!2016059)))

(assert (=> bs!1617706 (= lambda!355838 lambda!355837)))

(assert (=> d!2016063 (= (nullableZipper!2100 lt!2379363) (exists!2600 lt!2379363 lambda!355838))))

(declare-fun bs!1617707 () Bool)

(assert (= bs!1617707 d!2016063))

(declare-fun m!7225118 () Bool)

(assert (=> bs!1617707 m!7225118))

(assert (=> b!6430274 d!2016063))

(declare-fun b!6431515 () Bool)

(declare-fun e!3901625 () Bool)

(declare-fun e!3901627 () Bool)

(assert (=> b!6431515 (= e!3901625 e!3901627)))

(declare-fun res!2643697 () Bool)

(assert (=> b!6431515 (= res!2643697 (not (nullable!6328 (reg!16664 lt!2379453))))))

(assert (=> b!6431515 (=> (not res!2643697) (not e!3901627))))

(declare-fun c!1175427 () Bool)

(declare-fun bm!553218 () Bool)

(declare-fun call!553223 () Bool)

(declare-fun c!1175428 () Bool)

(assert (=> bm!553218 (= call!553223 (validRegex!8071 (ite c!1175427 (reg!16664 lt!2379453) (ite c!1175428 (regOne!33183 lt!2379453) (regOne!33182 lt!2379453)))))))

(declare-fun b!6431516 () Bool)

(declare-fun e!3901624 () Bool)

(declare-fun call!553224 () Bool)

(assert (=> b!6431516 (= e!3901624 call!553224)))

(declare-fun b!6431517 () Bool)

(declare-fun e!3901629 () Bool)

(assert (=> b!6431517 (= e!3901625 e!3901629)))

(assert (=> b!6431517 (= c!1175428 ((_ is Union!16335) lt!2379453))))

(declare-fun b!6431518 () Bool)

(declare-fun e!3901628 () Bool)

(declare-fun e!3901623 () Bool)

(assert (=> b!6431518 (= e!3901628 e!3901623)))

(declare-fun res!2643700 () Bool)

(assert (=> b!6431518 (=> (not res!2643700) (not e!3901623))))

(declare-fun call!553225 () Bool)

(assert (=> b!6431518 (= res!2643700 call!553225)))

(declare-fun b!6431519 () Bool)

(declare-fun e!3901626 () Bool)

(assert (=> b!6431519 (= e!3901626 e!3901625)))

(assert (=> b!6431519 (= c!1175427 ((_ is Star!16335) lt!2379453))))

(declare-fun b!6431514 () Bool)

(declare-fun res!2643699 () Bool)

(assert (=> b!6431514 (=> res!2643699 e!3901628)))

(assert (=> b!6431514 (= res!2643699 (not ((_ is Concat!25180) lt!2379453)))))

(assert (=> b!6431514 (= e!3901629 e!3901628)))

(declare-fun d!2016065 () Bool)

(declare-fun res!2643698 () Bool)

(assert (=> d!2016065 (=> res!2643698 e!3901626)))

(assert (=> d!2016065 (= res!2643698 ((_ is ElementMatch!16335) lt!2379453))))

(assert (=> d!2016065 (= (validRegex!8071 lt!2379453) e!3901626)))

(declare-fun b!6431520 () Bool)

(declare-fun res!2643696 () Bool)

(assert (=> b!6431520 (=> (not res!2643696) (not e!3901624))))

(assert (=> b!6431520 (= res!2643696 call!553225)))

(assert (=> b!6431520 (= e!3901629 e!3901624)))

(declare-fun b!6431521 () Bool)

(assert (=> b!6431521 (= e!3901627 call!553223)))

(declare-fun bm!553219 () Bool)

(assert (=> bm!553219 (= call!553224 (validRegex!8071 (ite c!1175428 (regTwo!33183 lt!2379453) (regTwo!33182 lt!2379453))))))

(declare-fun bm!553220 () Bool)

(assert (=> bm!553220 (= call!553225 call!553223)))

(declare-fun b!6431522 () Bool)

(assert (=> b!6431522 (= e!3901623 call!553224)))

(assert (= (and d!2016065 (not res!2643698)) b!6431519))

(assert (= (and b!6431519 c!1175427) b!6431515))

(assert (= (and b!6431519 (not c!1175427)) b!6431517))

(assert (= (and b!6431515 res!2643697) b!6431521))

(assert (= (and b!6431517 c!1175428) b!6431520))

(assert (= (and b!6431517 (not c!1175428)) b!6431514))

(assert (= (and b!6431520 res!2643696) b!6431516))

(assert (= (and b!6431514 (not res!2643699)) b!6431518))

(assert (= (and b!6431518 res!2643700) b!6431522))

(assert (= (or b!6431516 b!6431522) bm!553219))

(assert (= (or b!6431520 b!6431518) bm!553220))

(assert (= (or b!6431521 bm!553220) bm!553218))

(declare-fun m!7225120 () Bool)

(assert (=> b!6431515 m!7225120))

(declare-fun m!7225122 () Bool)

(assert (=> bm!553218 m!7225122))

(declare-fun m!7225124 () Bool)

(assert (=> bm!553219 m!7225124))

(assert (=> d!2015699 d!2016065))

(declare-fun bs!1617708 () Bool)

(declare-fun d!2016067 () Bool)

(assert (= bs!1617708 (and d!2016067 d!2015651)))

(declare-fun lambda!355839 () Int)

(assert (=> bs!1617708 (= lambda!355839 lambda!355744)))

(declare-fun bs!1617709 () Bool)

(assert (= bs!1617709 (and d!2016067 d!2015705)))

(assert (=> bs!1617709 (= lambda!355839 lambda!355761)))

(declare-fun bs!1617710 () Bool)

(assert (= bs!1617710 (and d!2016067 d!2015739)))

(assert (=> bs!1617710 (= lambda!355839 lambda!355765)))

(declare-fun bs!1617711 () Bool)

(assert (= bs!1617711 (and d!2016067 d!2015603)))

(assert (=> bs!1617711 (= lambda!355839 lambda!355733)))

(declare-fun bs!1617712 () Bool)

(assert (= bs!1617712 (and d!2016067 d!2016025)))

(assert (=> bs!1617712 (= lambda!355839 lambda!355833)))

(declare-fun bs!1617713 () Bool)

(assert (= bs!1617713 (and d!2016067 d!2015713)))

(assert (=> bs!1617713 (= lambda!355839 lambda!355764)))

(declare-fun bs!1617714 () Bool)

(assert (= bs!1617714 (and d!2016067 d!2015907)))

(assert (=> bs!1617714 (= lambda!355839 lambda!355817)))

(declare-fun b!6431524 () Bool)

(declare-fun e!3901632 () Regex!16335)

(assert (=> b!6431524 (= e!3901632 (h!71629 (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182))))))

(declare-fun b!6431525 () Bool)

(declare-fun e!3901631 () Bool)

(assert (=> b!6431525 (= e!3901631 (isEmpty!37349 (t!378921 (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182)))))))

(declare-fun b!6431526 () Bool)

(declare-fun e!3901633 () Bool)

(declare-fun lt!2379564 () Regex!16335)

(assert (=> b!6431526 (= e!3901633 (isUnion!1173 lt!2379564))))

(declare-fun b!6431527 () Bool)

(declare-fun e!3901635 () Bool)

(declare-fun e!3901634 () Bool)

(assert (=> b!6431527 (= e!3901635 e!3901634)))

(declare-fun c!1175430 () Bool)

(assert (=> b!6431527 (= c!1175430 (isEmpty!37349 (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182))))))

(declare-fun b!6431528 () Bool)

(declare-fun e!3901630 () Regex!16335)

(assert (=> b!6431528 (= e!3901630 (Union!16335 (h!71629 (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182))) (generalisedUnion!2179 (t!378921 (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182))))))))

(declare-fun b!6431529 () Bool)

(assert (=> b!6431529 (= e!3901632 e!3901630)))

(declare-fun c!1175431 () Bool)

(assert (=> b!6431529 (= c!1175431 ((_ is Cons!65181) (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182))))))

(declare-fun b!6431530 () Bool)

(assert (=> b!6431530 (= e!3901634 e!3901633)))

(declare-fun c!1175432 () Bool)

(assert (=> b!6431530 (= c!1175432 (isEmpty!37349 (tail!12247 (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182)))))))

(assert (=> d!2016067 e!3901635))

(declare-fun res!2643702 () Bool)

(assert (=> d!2016067 (=> (not res!2643702) (not e!3901635))))

(assert (=> d!2016067 (= res!2643702 (validRegex!8071 lt!2379564))))

(assert (=> d!2016067 (= lt!2379564 e!3901632)))

(declare-fun c!1175429 () Bool)

(assert (=> d!2016067 (= c!1175429 e!3901631)))

(declare-fun res!2643701 () Bool)

(assert (=> d!2016067 (=> (not res!2643701) (not e!3901631))))

(assert (=> d!2016067 (= res!2643701 ((_ is Cons!65181) (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182))))))

(assert (=> d!2016067 (forall!15525 (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182)) lambda!355839)))

(assert (=> d!2016067 (= (generalisedUnion!2179 (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182))) lt!2379564)))

(declare-fun b!6431523 () Bool)

(assert (=> b!6431523 (= e!3901633 (= lt!2379564 (head!13162 (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182)))))))

(declare-fun b!6431531 () Bool)

(assert (=> b!6431531 (= e!3901630 EmptyLang!16335)))

(declare-fun b!6431532 () Bool)

(assert (=> b!6431532 (= e!3901634 (isEmptyLang!1743 lt!2379564))))

(assert (= (and d!2016067 res!2643701) b!6431525))

(assert (= (and d!2016067 c!1175429) b!6431524))

(assert (= (and d!2016067 (not c!1175429)) b!6431529))

(assert (= (and b!6431529 c!1175431) b!6431528))

(assert (= (and b!6431529 (not c!1175431)) b!6431531))

(assert (= (and d!2016067 res!2643702) b!6431527))

(assert (= (and b!6431527 c!1175430) b!6431532))

(assert (= (and b!6431527 (not c!1175430)) b!6431530))

(assert (= (and b!6431530 c!1175432) b!6431523))

(assert (= (and b!6431530 (not c!1175432)) b!6431526))

(declare-fun m!7225126 () Bool)

(assert (=> b!6431525 m!7225126))

(declare-fun m!7225128 () Bool)

(assert (=> b!6431528 m!7225128))

(declare-fun m!7225130 () Bool)

(assert (=> b!6431532 m!7225130))

(assert (=> b!6431527 m!7224220))

(declare-fun m!7225132 () Bool)

(assert (=> b!6431527 m!7225132))

(assert (=> b!6431530 m!7224220))

(declare-fun m!7225134 () Bool)

(assert (=> b!6431530 m!7225134))

(assert (=> b!6431530 m!7225134))

(declare-fun m!7225136 () Bool)

(assert (=> b!6431530 m!7225136))

(declare-fun m!7225138 () Bool)

(assert (=> d!2016067 m!7225138))

(assert (=> d!2016067 m!7224220))

(declare-fun m!7225140 () Bool)

(assert (=> d!2016067 m!7225140))

(declare-fun m!7225142 () Bool)

(assert (=> b!6431526 m!7225142))

(assert (=> b!6431523 m!7224220))

(declare-fun m!7225144 () Bool)

(assert (=> b!6431523 m!7225144))

(assert (=> d!2015699 d!2016067))

(declare-fun bs!1617715 () Bool)

(declare-fun d!2016069 () Bool)

(assert (= bs!1617715 (and d!2016069 d!2015651)))

(declare-fun lambda!355840 () Int)

(assert (=> bs!1617715 (= lambda!355840 lambda!355744)))

(declare-fun bs!1617716 () Bool)

(assert (= bs!1617716 (and d!2016069 d!2015705)))

(assert (=> bs!1617716 (= lambda!355840 lambda!355761)))

(declare-fun bs!1617717 () Bool)

(assert (= bs!1617717 (and d!2016069 d!2015739)))

(assert (=> bs!1617717 (= lambda!355840 lambda!355765)))

(declare-fun bs!1617718 () Bool)

(assert (= bs!1617718 (and d!2016069 d!2015603)))

(assert (=> bs!1617718 (= lambda!355840 lambda!355733)))

(declare-fun bs!1617719 () Bool)

(assert (= bs!1617719 (and d!2016069 d!2016067)))

(assert (=> bs!1617719 (= lambda!355840 lambda!355839)))

(declare-fun bs!1617720 () Bool)

(assert (= bs!1617720 (and d!2016069 d!2016025)))

(assert (=> bs!1617720 (= lambda!355840 lambda!355833)))

(declare-fun bs!1617721 () Bool)

(assert (= bs!1617721 (and d!2016069 d!2015713)))

(assert (=> bs!1617721 (= lambda!355840 lambda!355764)))

(declare-fun bs!1617722 () Bool)

(assert (= bs!1617722 (and d!2016069 d!2015907)))

(assert (=> bs!1617722 (= lambda!355840 lambda!355817)))

(declare-fun lt!2379565 () List!65305)

(assert (=> d!2016069 (forall!15525 lt!2379565 lambda!355840)))

(declare-fun e!3901636 () List!65305)

(assert (=> d!2016069 (= lt!2379565 e!3901636)))

(declare-fun c!1175433 () Bool)

(assert (=> d!2016069 (= c!1175433 ((_ is Cons!65182) (Cons!65182 lt!2379364 Nil!65182)))))

(assert (=> d!2016069 (= (unfocusZipperList!1756 (Cons!65182 lt!2379364 Nil!65182)) lt!2379565)))

(declare-fun b!6431533 () Bool)

(assert (=> b!6431533 (= e!3901636 (Cons!65181 (generalisedConcat!1932 (exprs!6219 (h!71630 (Cons!65182 lt!2379364 Nil!65182)))) (unfocusZipperList!1756 (t!378922 (Cons!65182 lt!2379364 Nil!65182)))))))

(declare-fun b!6431534 () Bool)

(assert (=> b!6431534 (= e!3901636 Nil!65181)))

(assert (= (and d!2016069 c!1175433) b!6431533))

(assert (= (and d!2016069 (not c!1175433)) b!6431534))

(declare-fun m!7225146 () Bool)

(assert (=> d!2016069 m!7225146))

(declare-fun m!7225148 () Bool)

(assert (=> b!6431533 m!7225148))

(declare-fun m!7225150 () Bool)

(assert (=> b!6431533 m!7225150))

(assert (=> d!2015699 d!2016069))

(declare-fun d!2016071 () Bool)

(declare-fun c!1175434 () Bool)

(assert (=> d!2016071 (= c!1175434 (isEmpty!37350 (tail!12246 (t!378920 s!2326))))))

(declare-fun e!3901637 () Bool)

(assert (=> d!2016071 (= (matchZipper!2347 (derivationStepZipper!2301 lt!2379363 (head!13161 (t!378920 s!2326))) (tail!12246 (t!378920 s!2326))) e!3901637)))

(declare-fun b!6431535 () Bool)

(assert (=> b!6431535 (= e!3901637 (nullableZipper!2100 (derivationStepZipper!2301 lt!2379363 (head!13161 (t!378920 s!2326)))))))

(declare-fun b!6431536 () Bool)

(assert (=> b!6431536 (= e!3901637 (matchZipper!2347 (derivationStepZipper!2301 (derivationStepZipper!2301 lt!2379363 (head!13161 (t!378920 s!2326))) (head!13161 (tail!12246 (t!378920 s!2326)))) (tail!12246 (tail!12246 (t!378920 s!2326)))))))

(assert (= (and d!2016071 c!1175434) b!6431535))

(assert (= (and d!2016071 (not c!1175434)) b!6431536))

(assert (=> d!2016071 m!7223922))

(declare-fun m!7225152 () Bool)

(assert (=> d!2016071 m!7225152))

(assert (=> b!6431535 m!7223920))

(declare-fun m!7225154 () Bool)

(assert (=> b!6431535 m!7225154))

(assert (=> b!6431536 m!7223922))

(declare-fun m!7225156 () Bool)

(assert (=> b!6431536 m!7225156))

(assert (=> b!6431536 m!7223920))

(assert (=> b!6431536 m!7225156))

(declare-fun m!7225158 () Bool)

(assert (=> b!6431536 m!7225158))

(assert (=> b!6431536 m!7223922))

(declare-fun m!7225160 () Bool)

(assert (=> b!6431536 m!7225160))

(assert (=> b!6431536 m!7225158))

(assert (=> b!6431536 m!7225160))

(declare-fun m!7225162 () Bool)

(assert (=> b!6431536 m!7225162))

(assert (=> b!6430275 d!2016071))

(declare-fun bs!1617723 () Bool)

(declare-fun d!2016073 () Bool)

(assert (= bs!1617723 (and d!2016073 b!6430098)))

(declare-fun lambda!355841 () Int)

(assert (=> bs!1617723 (= (= (head!13161 (t!378920 s!2326)) (h!71628 s!2326)) (= lambda!355841 lambda!355716))))

(declare-fun bs!1617724 () Bool)

(assert (= bs!1617724 (and d!2016073 d!2015865)))

(assert (=> bs!1617724 (= (= (head!13161 (t!378920 s!2326)) (h!71628 s!2326)) (= lambda!355841 lambda!355800))))

(assert (=> d!2016073 true))

(assert (=> d!2016073 (= (derivationStepZipper!2301 lt!2379363 (head!13161 (t!378920 s!2326))) (flatMap!1840 lt!2379363 lambda!355841))))

(declare-fun bs!1617725 () Bool)

(assert (= bs!1617725 d!2016073))

(declare-fun m!7225164 () Bool)

(assert (=> bs!1617725 m!7225164))

(assert (=> b!6430275 d!2016073))

(declare-fun d!2016075 () Bool)

(assert (=> d!2016075 (= (head!13161 (t!378920 s!2326)) (h!71628 (t!378920 s!2326)))))

(assert (=> b!6430275 d!2016075))

(declare-fun d!2016077 () Bool)

(assert (=> d!2016077 (= (tail!12246 (t!378920 s!2326)) (t!378920 (t!378920 s!2326)))))

(assert (=> b!6430275 d!2016077))

(declare-fun d!2016079 () Bool)

(assert (=> d!2016079 (= (isEmpty!37349 (t!378921 (unfocusZipperList!1756 zl!343))) ((_ is Nil!65181) (t!378921 (unfocusZipperList!1756 zl!343))))))

(assert (=> b!6430677 d!2016079))

(declare-fun d!2016081 () Bool)

(assert (=> d!2016081 (= (nullable!6328 (regTwo!33182 r!7292)) (nullableFct!2274 (regTwo!33182 r!7292)))))

(declare-fun bs!1617726 () Bool)

(assert (= bs!1617726 d!2016081))

(declare-fun m!7225166 () Bool)

(assert (=> bs!1617726 m!7225166))

(assert (=> b!6430732 d!2016081))

(declare-fun d!2016083 () Bool)

(assert (=> d!2016083 (= (isEmpty!37350 s!2326) ((_ is Nil!65180) s!2326))))

(assert (=> d!2015769 d!2016083))

(assert (=> d!2015769 d!2015857))

(assert (=> b!6430322 d!2016009))

(assert (=> d!2015909 d!2015911))

(declare-fun d!2016085 () Bool)

(assert (=> d!2016085 (= (flatMap!1840 lt!2379369 lambda!355716) (dynLambda!25892 lambda!355716 lt!2379355))))

(assert (=> d!2016085 true))

(declare-fun _$13!3648 () Unit!158671)

(assert (=> d!2016085 (= (choose!47823 lt!2379369 lt!2379355 lambda!355716) _$13!3648)))

(declare-fun b_lambda!244343 () Bool)

(assert (=> (not b_lambda!244343) (not d!2016085)))

(declare-fun bs!1617727 () Bool)

(assert (= bs!1617727 d!2016085))

(assert (=> bs!1617727 m!7223702))

(assert (=> bs!1617727 m!7224842))

(assert (=> d!2015909 d!2016085))

(declare-fun b!6431537 () Bool)

(declare-fun e!3901638 () (InoxSet Context!11438))

(declare-fun call!553229 () (InoxSet Context!11438))

(declare-fun call!553231 () (InoxSet Context!11438))

(assert (=> b!6431537 (= e!3901638 ((_ map or) call!553229 call!553231))))

(declare-fun c!1175435 () Bool)

(declare-fun bm!553221 () Bool)

(declare-fun call!553230 () List!65305)

(assert (=> bm!553221 (= call!553229 (derivationStepZipperDown!1583 (ite c!1175435 (regTwo!33183 (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343)))))))) (regOne!33182 (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343))))))))) (ite c!1175435 (ite (or c!1175183 c!1175184) lt!2379358 (Context!11439 call!553107)) (Context!11439 call!553230)) (h!71628 s!2326)))))

(declare-fun bm!553222 () Bool)

(declare-fun call!553228 () (InoxSet Context!11438))

(assert (=> bm!553222 (= call!553228 call!553231)))

(declare-fun b!6431538 () Bool)

(declare-fun c!1175436 () Bool)

(declare-fun e!3901641 () Bool)

(assert (=> b!6431538 (= c!1175436 e!3901641)))

(declare-fun res!2643703 () Bool)

(assert (=> b!6431538 (=> (not res!2643703) (not e!3901641))))

(assert (=> b!6431538 (= res!2643703 ((_ is Concat!25180) (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343)))))))))))

(declare-fun e!3901642 () (InoxSet Context!11438))

(assert (=> b!6431538 (= e!3901642 e!3901638)))

(declare-fun b!6431539 () Bool)

(declare-fun call!553226 () (InoxSet Context!11438))

(assert (=> b!6431539 (= e!3901642 ((_ map or) call!553226 call!553229))))

(declare-fun bm!553223 () Bool)

(assert (=> bm!553223 (= call!553231 call!553226)))

(declare-fun b!6431540 () Bool)

(declare-fun e!3901643 () (InoxSet Context!11438))

(assert (=> b!6431540 (= e!3901643 e!3901642)))

(assert (=> b!6431540 (= c!1175435 ((_ is Union!16335) (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343)))))))))))

(declare-fun b!6431542 () Bool)

(assert (=> b!6431542 (= e!3901641 (nullable!6328 (regOne!33182 (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343))))))))))))

(declare-fun b!6431543 () Bool)

(declare-fun c!1175439 () Bool)

(assert (=> b!6431543 (= c!1175439 ((_ is Star!16335) (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343)))))))))))

(declare-fun e!3901640 () (InoxSet Context!11438))

(declare-fun e!3901639 () (InoxSet Context!11438))

(assert (=> b!6431543 (= e!3901640 e!3901639)))

(declare-fun b!6431544 () Bool)

(assert (=> b!6431544 (= e!3901639 call!553228)))

(declare-fun bm!553224 () Bool)

(declare-fun call!553227 () List!65305)

(declare-fun c!1175438 () Bool)

(assert (=> bm!553224 (= call!553226 (derivationStepZipperDown!1583 (ite c!1175435 (regOne!33183 (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343)))))))) (ite c!1175436 (regTwo!33182 (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343)))))))) (ite c!1175438 (regOne!33182 (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343)))))))) (reg!16664 (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343))))))))))) (ite (or c!1175435 c!1175436) (ite (or c!1175183 c!1175184) lt!2379358 (Context!11439 call!553107)) (Context!11439 call!553227)) (h!71628 s!2326)))))

(declare-fun b!6431545 () Bool)

(assert (=> b!6431545 (= e!3901638 e!3901640)))

(assert (=> b!6431545 (= c!1175438 ((_ is Concat!25180) (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343)))))))))))

(declare-fun b!6431546 () Bool)

(assert (=> b!6431546 (= e!3901643 (store ((as const (Array Context!11438 Bool)) false) (ite (or c!1175183 c!1175184) lt!2379358 (Context!11439 call!553107)) true))))

(declare-fun b!6431547 () Bool)

(assert (=> b!6431547 (= e!3901639 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2016087 () Bool)

(declare-fun c!1175437 () Bool)

(assert (=> d!2016087 (= c!1175437 (and ((_ is ElementMatch!16335) (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343)))))))) (= (c!1175066 (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343)))))))) (h!71628 s!2326))))))

(assert (=> d!2016087 (= (derivationStepZipperDown!1583 (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343))))))) (ite (or c!1175183 c!1175184) lt!2379358 (Context!11439 call!553107)) (h!71628 s!2326)) e!3901643)))

(declare-fun b!6431541 () Bool)

(assert (=> b!6431541 (= e!3901640 call!553228)))

(declare-fun bm!553225 () Bool)

(assert (=> bm!553225 (= call!553227 call!553230)))

(declare-fun bm!553226 () Bool)

(assert (=> bm!553226 (= call!553230 ($colon$colon!2196 (exprs!6219 (ite (or c!1175183 c!1175184) lt!2379358 (Context!11439 call!553107))) (ite (or c!1175436 c!1175438) (regTwo!33182 (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343)))))))) (ite c!1175183 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175184 (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (ite c!1175186 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (reg!16664 (h!71629 (exprs!6219 (h!71630 zl!343))))))))))))

(assert (= (and d!2016087 c!1175437) b!6431546))

(assert (= (and d!2016087 (not c!1175437)) b!6431540))

(assert (= (and b!6431540 c!1175435) b!6431539))

(assert (= (and b!6431540 (not c!1175435)) b!6431538))

(assert (= (and b!6431538 res!2643703) b!6431542))

(assert (= (and b!6431538 c!1175436) b!6431537))

(assert (= (and b!6431538 (not c!1175436)) b!6431545))

(assert (= (and b!6431545 c!1175438) b!6431541))

(assert (= (and b!6431545 (not c!1175438)) b!6431543))

(assert (= (and b!6431543 c!1175439) b!6431544))

(assert (= (and b!6431543 (not c!1175439)) b!6431547))

(assert (= (or b!6431541 b!6431544) bm!553225))

(assert (= (or b!6431541 b!6431544) bm!553222))

(assert (= (or b!6431537 bm!553225) bm!553226))

(assert (= (or b!6431537 bm!553222) bm!553223))

(assert (= (or b!6431539 b!6431537) bm!553221))

(assert (= (or b!6431539 bm!553223) bm!553224))

(declare-fun m!7225168 () Bool)

(assert (=> b!6431546 m!7225168))

(declare-fun m!7225170 () Bool)

(assert (=> b!6431542 m!7225170))

(declare-fun m!7225172 () Bool)

(assert (=> bm!553226 m!7225172))

(declare-fun m!7225174 () Bool)

(assert (=> bm!553221 m!7225174))

(declare-fun m!7225176 () Bool)

(assert (=> bm!553224 m!7225176))

(assert (=> bm!553104 d!2016087))

(assert (=> bs!1617622 d!2015861))

(declare-fun d!2016089 () Bool)

(assert (=> d!2016089 (= (isDefined!12929 lt!2379520) (not (isEmpty!37352 lt!2379520)))))

(declare-fun bs!1617728 () Bool)

(assert (= bs!1617728 d!2016089))

(declare-fun m!7225178 () Bool)

(assert (=> bs!1617728 m!7225178))

(assert (=> d!2015807 d!2016089))

(declare-fun d!2016091 () Bool)

(declare-fun e!3901649 () Bool)

(assert (=> d!2016091 e!3901649))

(declare-fun c!1175441 () Bool)

(assert (=> d!2016091 (= c!1175441 ((_ is EmptyExpr!16335) (regOne!33182 r!7292)))))

(declare-fun lt!2379566 () Bool)

(declare-fun e!3901644 () Bool)

(assert (=> d!2016091 (= lt!2379566 e!3901644)))

(declare-fun c!1175442 () Bool)

(assert (=> d!2016091 (= c!1175442 (isEmpty!37350 Nil!65180))))

(assert (=> d!2016091 (validRegex!8071 (regOne!33182 r!7292))))

(assert (=> d!2016091 (= (matchR!8518 (regOne!33182 r!7292) Nil!65180) lt!2379566)))

(declare-fun b!6431548 () Bool)

(declare-fun e!3901648 () Bool)

(assert (=> b!6431548 (= e!3901648 (not (= (head!13161 Nil!65180) (c!1175066 (regOne!33182 r!7292)))))))

(declare-fun b!6431549 () Bool)

(assert (=> b!6431549 (= e!3901644 (matchR!8518 (derivativeStep!5039 (regOne!33182 r!7292) (head!13161 Nil!65180)) (tail!12246 Nil!65180)))))

(declare-fun b!6431550 () Bool)

(declare-fun res!2643705 () Bool)

(declare-fun e!3901647 () Bool)

(assert (=> b!6431550 (=> res!2643705 e!3901647)))

(declare-fun e!3901645 () Bool)

(assert (=> b!6431550 (= res!2643705 e!3901645)))

(declare-fun res!2643709 () Bool)

(assert (=> b!6431550 (=> (not res!2643709) (not e!3901645))))

(assert (=> b!6431550 (= res!2643709 lt!2379566)))

(declare-fun b!6431551 () Bool)

(declare-fun res!2643707 () Bool)

(assert (=> b!6431551 (=> res!2643707 e!3901647)))

(assert (=> b!6431551 (= res!2643707 (not ((_ is ElementMatch!16335) (regOne!33182 r!7292))))))

(declare-fun e!3901646 () Bool)

(assert (=> b!6431551 (= e!3901646 e!3901647)))

(declare-fun b!6431552 () Bool)

(declare-fun e!3901650 () Bool)

(assert (=> b!6431552 (= e!3901647 e!3901650)))

(declare-fun res!2643710 () Bool)

(assert (=> b!6431552 (=> (not res!2643710) (not e!3901650))))

(assert (=> b!6431552 (= res!2643710 (not lt!2379566))))

(declare-fun b!6431553 () Bool)

(declare-fun res!2643708 () Bool)

(assert (=> b!6431553 (=> res!2643708 e!3901648)))

(assert (=> b!6431553 (= res!2643708 (not (isEmpty!37350 (tail!12246 Nil!65180))))))

(declare-fun b!6431554 () Bool)

(assert (=> b!6431554 (= e!3901644 (nullable!6328 (regOne!33182 r!7292)))))

(declare-fun b!6431555 () Bool)

(assert (=> b!6431555 (= e!3901649 e!3901646)))

(declare-fun c!1175440 () Bool)

(assert (=> b!6431555 (= c!1175440 ((_ is EmptyLang!16335) (regOne!33182 r!7292)))))

(declare-fun b!6431556 () Bool)

(declare-fun call!553232 () Bool)

(assert (=> b!6431556 (= e!3901649 (= lt!2379566 call!553232))))

(declare-fun b!6431557 () Bool)

(assert (=> b!6431557 (= e!3901646 (not lt!2379566))))

(declare-fun b!6431558 () Bool)

(declare-fun res!2643711 () Bool)

(assert (=> b!6431558 (=> (not res!2643711) (not e!3901645))))

(assert (=> b!6431558 (= res!2643711 (isEmpty!37350 (tail!12246 Nil!65180)))))

(declare-fun b!6431559 () Bool)

(assert (=> b!6431559 (= e!3901650 e!3901648)))

(declare-fun res!2643704 () Bool)

(assert (=> b!6431559 (=> res!2643704 e!3901648)))

(assert (=> b!6431559 (= res!2643704 call!553232)))

(declare-fun b!6431560 () Bool)

(assert (=> b!6431560 (= e!3901645 (= (head!13161 Nil!65180) (c!1175066 (regOne!33182 r!7292))))))

(declare-fun bm!553227 () Bool)

(assert (=> bm!553227 (= call!553232 (isEmpty!37350 Nil!65180))))

(declare-fun b!6431561 () Bool)

(declare-fun res!2643706 () Bool)

(assert (=> b!6431561 (=> (not res!2643706) (not e!3901645))))

(assert (=> b!6431561 (= res!2643706 (not call!553232))))

(assert (= (and d!2016091 c!1175442) b!6431554))

(assert (= (and d!2016091 (not c!1175442)) b!6431549))

(assert (= (and d!2016091 c!1175441) b!6431556))

(assert (= (and d!2016091 (not c!1175441)) b!6431555))

(assert (= (and b!6431555 c!1175440) b!6431557))

(assert (= (and b!6431555 (not c!1175440)) b!6431551))

(assert (= (and b!6431551 (not res!2643707)) b!6431550))

(assert (= (and b!6431550 res!2643709) b!6431561))

(assert (= (and b!6431561 res!2643706) b!6431558))

(assert (= (and b!6431558 res!2643711) b!6431560))

(assert (= (and b!6431550 (not res!2643705)) b!6431552))

(assert (= (and b!6431552 res!2643710) b!6431559))

(assert (= (and b!6431559 (not res!2643704)) b!6431553))

(assert (= (and b!6431553 (not res!2643708)) b!6431548))

(assert (= (or b!6431556 b!6431561 b!6431559) bm!553227))

(declare-fun m!7225180 () Bool)

(assert (=> d!2016091 m!7225180))

(assert (=> d!2016091 m!7224544))

(declare-fun m!7225182 () Bool)

(assert (=> b!6431548 m!7225182))

(declare-fun m!7225184 () Bool)

(assert (=> b!6431558 m!7225184))

(assert (=> b!6431558 m!7225184))

(declare-fun m!7225186 () Bool)

(assert (=> b!6431558 m!7225186))

(assert (=> b!6431553 m!7225184))

(assert (=> b!6431553 m!7225184))

(assert (=> b!6431553 m!7225186))

(assert (=> b!6431560 m!7225182))

(assert (=> bm!553227 m!7225180))

(declare-fun m!7225188 () Bool)

(assert (=> b!6431554 m!7225188))

(assert (=> b!6431549 m!7225182))

(assert (=> b!6431549 m!7225182))

(declare-fun m!7225190 () Bool)

(assert (=> b!6431549 m!7225190))

(assert (=> b!6431549 m!7225184))

(assert (=> b!6431549 m!7225190))

(assert (=> b!6431549 m!7225184))

(declare-fun m!7225192 () Bool)

(assert (=> b!6431549 m!7225192))

(assert (=> d!2015807 d!2016091))

(declare-fun b!6431563 () Bool)

(declare-fun e!3901653 () Bool)

(declare-fun e!3901655 () Bool)

(assert (=> b!6431563 (= e!3901653 e!3901655)))

(declare-fun res!2643713 () Bool)

(assert (=> b!6431563 (= res!2643713 (not (nullable!6328 (reg!16664 (regOne!33182 r!7292)))))))

(assert (=> b!6431563 (=> (not res!2643713) (not e!3901655))))

(declare-fun bm!553228 () Bool)

(declare-fun call!553233 () Bool)

(declare-fun c!1175444 () Bool)

(declare-fun c!1175443 () Bool)

(assert (=> bm!553228 (= call!553233 (validRegex!8071 (ite c!1175443 (reg!16664 (regOne!33182 r!7292)) (ite c!1175444 (regOne!33183 (regOne!33182 r!7292)) (regOne!33182 (regOne!33182 r!7292))))))))

(declare-fun b!6431564 () Bool)

(declare-fun e!3901652 () Bool)

(declare-fun call!553234 () Bool)

(assert (=> b!6431564 (= e!3901652 call!553234)))

(declare-fun b!6431565 () Bool)

(declare-fun e!3901657 () Bool)

(assert (=> b!6431565 (= e!3901653 e!3901657)))

(assert (=> b!6431565 (= c!1175444 ((_ is Union!16335) (regOne!33182 r!7292)))))

(declare-fun b!6431566 () Bool)

(declare-fun e!3901656 () Bool)

(declare-fun e!3901651 () Bool)

(assert (=> b!6431566 (= e!3901656 e!3901651)))

(declare-fun res!2643716 () Bool)

(assert (=> b!6431566 (=> (not res!2643716) (not e!3901651))))

(declare-fun call!553235 () Bool)

(assert (=> b!6431566 (= res!2643716 call!553235)))

(declare-fun b!6431567 () Bool)

(declare-fun e!3901654 () Bool)

(assert (=> b!6431567 (= e!3901654 e!3901653)))

(assert (=> b!6431567 (= c!1175443 ((_ is Star!16335) (regOne!33182 r!7292)))))

(declare-fun b!6431562 () Bool)

(declare-fun res!2643715 () Bool)

(assert (=> b!6431562 (=> res!2643715 e!3901656)))

(assert (=> b!6431562 (= res!2643715 (not ((_ is Concat!25180) (regOne!33182 r!7292))))))

(assert (=> b!6431562 (= e!3901657 e!3901656)))

(declare-fun d!2016093 () Bool)

(declare-fun res!2643714 () Bool)

(assert (=> d!2016093 (=> res!2643714 e!3901654)))

(assert (=> d!2016093 (= res!2643714 ((_ is ElementMatch!16335) (regOne!33182 r!7292)))))

(assert (=> d!2016093 (= (validRegex!8071 (regOne!33182 r!7292)) e!3901654)))

(declare-fun b!6431568 () Bool)

(declare-fun res!2643712 () Bool)

(assert (=> b!6431568 (=> (not res!2643712) (not e!3901652))))

(assert (=> b!6431568 (= res!2643712 call!553235)))

(assert (=> b!6431568 (= e!3901657 e!3901652)))

(declare-fun b!6431569 () Bool)

(assert (=> b!6431569 (= e!3901655 call!553233)))

(declare-fun bm!553229 () Bool)

(assert (=> bm!553229 (= call!553234 (validRegex!8071 (ite c!1175444 (regTwo!33183 (regOne!33182 r!7292)) (regTwo!33182 (regOne!33182 r!7292)))))))

(declare-fun bm!553230 () Bool)

(assert (=> bm!553230 (= call!553235 call!553233)))

(declare-fun b!6431570 () Bool)

(assert (=> b!6431570 (= e!3901651 call!553234)))

(assert (= (and d!2016093 (not res!2643714)) b!6431567))

(assert (= (and b!6431567 c!1175443) b!6431563))

(assert (= (and b!6431567 (not c!1175443)) b!6431565))

(assert (= (and b!6431563 res!2643713) b!6431569))

(assert (= (and b!6431565 c!1175444) b!6431568))

(assert (= (and b!6431565 (not c!1175444)) b!6431562))

(assert (= (and b!6431568 res!2643712) b!6431564))

(assert (= (and b!6431562 (not res!2643715)) b!6431566))

(assert (= (and b!6431566 res!2643716) b!6431570))

(assert (= (or b!6431564 b!6431570) bm!553229))

(assert (= (or b!6431568 b!6431566) bm!553230))

(assert (= (or b!6431569 bm!553230) bm!553228))

(assert (=> b!6431563 m!7224686))

(declare-fun m!7225194 () Bool)

(assert (=> bm!553228 m!7225194))

(declare-fun m!7225196 () Bool)

(assert (=> bm!553229 m!7225196))

(assert (=> d!2015807 d!2016093))

(assert (=> d!2015677 d!2015657))

(declare-fun d!2016095 () Bool)

(assert (=> d!2016095 (= (flatMap!1840 z!1189 lambda!355716) (dynLambda!25892 lambda!355716 (h!71630 zl!343)))))

(assert (=> d!2016095 true))

(declare-fun _$13!3649 () Unit!158671)

(assert (=> d!2016095 (= (choose!47823 z!1189 (h!71630 zl!343) lambda!355716) _$13!3649)))

(declare-fun b_lambda!244345 () Bool)

(assert (=> (not b_lambda!244345) (not d!2016095)))

(declare-fun bs!1617729 () Bool)

(assert (= bs!1617729 d!2016095))

(assert (=> bs!1617729 m!7223656))

(assert (=> bs!1617729 m!7224140))

(assert (=> d!2015677 d!2016095))

(declare-fun d!2016097 () Bool)

(declare-fun c!1175447 () Bool)

(assert (=> d!2016097 (= c!1175447 ((_ is Nil!65180) lt!2379443))))

(declare-fun e!3901660 () (InoxSet C!32940))

(assert (=> d!2016097 (= (content!12384 lt!2379443) e!3901660)))

(declare-fun b!6431575 () Bool)

(assert (=> b!6431575 (= e!3901660 ((as const (Array C!32940 Bool)) false))))

(declare-fun b!6431576 () Bool)

(assert (=> b!6431576 (= e!3901660 ((_ map or) (store ((as const (Array C!32940 Bool)) false) (h!71628 lt!2379443) true) (content!12384 (t!378920 lt!2379443))))))

(assert (= (and d!2016097 c!1175447) b!6431575))

(assert (= (and d!2016097 (not c!1175447)) b!6431576))

(declare-fun m!7225198 () Bool)

(assert (=> b!6431576 m!7225198))

(declare-fun m!7225200 () Bool)

(assert (=> b!6431576 m!7225200))

(assert (=> d!2015687 d!2016097))

(declare-fun d!2016101 () Bool)

(declare-fun c!1175448 () Bool)

(assert (=> d!2016101 (= c!1175448 ((_ is Nil!65180) (_1!36617 lt!2379342)))))

(declare-fun e!3901661 () (InoxSet C!32940))

(assert (=> d!2016101 (= (content!12384 (_1!36617 lt!2379342)) e!3901661)))

(declare-fun b!6431577 () Bool)

(assert (=> b!6431577 (= e!3901661 ((as const (Array C!32940 Bool)) false))))

(declare-fun b!6431578 () Bool)

(assert (=> b!6431578 (= e!3901661 ((_ map or) (store ((as const (Array C!32940 Bool)) false) (h!71628 (_1!36617 lt!2379342)) true) (content!12384 (t!378920 (_1!36617 lt!2379342)))))))

(assert (= (and d!2016101 c!1175448) b!6431577))

(assert (= (and d!2016101 (not c!1175448)) b!6431578))

(declare-fun m!7225202 () Bool)

(assert (=> b!6431578 m!7225202))

(declare-fun m!7225204 () Bool)

(assert (=> b!6431578 m!7225204))

(assert (=> d!2015687 d!2016101))

(declare-fun d!2016103 () Bool)

(declare-fun c!1175449 () Bool)

(assert (=> d!2016103 (= c!1175449 ((_ is Nil!65180) lt!2379356))))

(declare-fun e!3901662 () (InoxSet C!32940))

(assert (=> d!2016103 (= (content!12384 lt!2379356) e!3901662)))

(declare-fun b!6431579 () Bool)

(assert (=> b!6431579 (= e!3901662 ((as const (Array C!32940 Bool)) false))))

(declare-fun b!6431580 () Bool)

(assert (=> b!6431580 (= e!3901662 ((_ map or) (store ((as const (Array C!32940 Bool)) false) (h!71628 lt!2379356) true) (content!12384 (t!378920 lt!2379356))))))

(assert (= (and d!2016103 c!1175449) b!6431579))

(assert (= (and d!2016103 (not c!1175449)) b!6431580))

(declare-fun m!7225206 () Bool)

(assert (=> b!6431580 m!7225206))

(declare-fun m!7225208 () Bool)

(assert (=> b!6431580 m!7225208))

(assert (=> d!2015687 d!2016103))

(declare-fun call!553236 () (InoxSet Context!11438))

(declare-fun b!6431581 () Bool)

(declare-fun e!3901663 () (InoxSet Context!11438))

(assert (=> b!6431581 (= e!3901663 ((_ map or) call!553236 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379364)))))) (h!71628 s!2326))))))

(declare-fun d!2016105 () Bool)

(declare-fun c!1175451 () Bool)

(declare-fun e!3901664 () Bool)

(assert (=> d!2016105 (= c!1175451 e!3901664)))

(declare-fun res!2643717 () Bool)

(assert (=> d!2016105 (=> (not res!2643717) (not e!3901664))))

(assert (=> d!2016105 (= res!2643717 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379364))))))))

(assert (=> d!2016105 (= (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 lt!2379364))) (h!71628 s!2326)) e!3901663)))

(declare-fun bm!553231 () Bool)

(assert (=> bm!553231 (= call!553236 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379364))))) (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379364)))))) (h!71628 s!2326)))))

(declare-fun b!6431582 () Bool)

(declare-fun e!3901665 () (InoxSet Context!11438))

(assert (=> b!6431582 (= e!3901663 e!3901665)))

(declare-fun c!1175450 () Bool)

(assert (=> b!6431582 (= c!1175450 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379364))))))))

(declare-fun b!6431583 () Bool)

(assert (=> b!6431583 (= e!3901665 call!553236)))

(declare-fun b!6431584 () Bool)

(assert (=> b!6431584 (= e!3901665 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6431585 () Bool)

(assert (=> b!6431585 (= e!3901664 (nullable!6328 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379364)))))))))

(assert (= (and d!2016105 res!2643717) b!6431585))

(assert (= (and d!2016105 c!1175451) b!6431581))

(assert (= (and d!2016105 (not c!1175451)) b!6431582))

(assert (= (and b!6431582 c!1175450) b!6431583))

(assert (= (and b!6431582 (not c!1175450)) b!6431584))

(assert (= (or b!6431581 b!6431583) bm!553231))

(declare-fun m!7225214 () Bool)

(assert (=> b!6431581 m!7225214))

(declare-fun m!7225216 () Bool)

(assert (=> bm!553231 m!7225216))

(declare-fun m!7225218 () Bool)

(assert (=> b!6431585 m!7225218))

(assert (=> b!6431102 d!2016105))

(declare-fun d!2016113 () Bool)

(assert (=> d!2016113 (= (head!13161 lt!2379371) (h!71628 lt!2379371))))

(assert (=> b!6430417 d!2016113))

(declare-fun b!6431586 () Bool)

(declare-fun e!3901667 () List!65304)

(assert (=> b!6431586 (= e!3901667 (_2!36617 lt!2379368))))

(declare-fun b!6431587 () Bool)

(assert (=> b!6431587 (= e!3901667 (Cons!65180 (h!71628 (t!378920 (_1!36617 lt!2379368))) (++!14403 (t!378920 (t!378920 (_1!36617 lt!2379368))) (_2!36617 lt!2379368))))))

(declare-fun b!6431588 () Bool)

(declare-fun res!2643719 () Bool)

(declare-fun e!3901666 () Bool)

(assert (=> b!6431588 (=> (not res!2643719) (not e!3901666))))

(declare-fun lt!2379567 () List!65304)

(assert (=> b!6431588 (= res!2643719 (= (size!40394 lt!2379567) (+ (size!40394 (t!378920 (_1!36617 lt!2379368))) (size!40394 (_2!36617 lt!2379368)))))))

(declare-fun b!6431589 () Bool)

(assert (=> b!6431589 (= e!3901666 (or (not (= (_2!36617 lt!2379368) Nil!65180)) (= lt!2379567 (t!378920 (_1!36617 lt!2379368)))))))

(declare-fun d!2016115 () Bool)

(assert (=> d!2016115 e!3901666))

(declare-fun res!2643718 () Bool)

(assert (=> d!2016115 (=> (not res!2643718) (not e!3901666))))

(assert (=> d!2016115 (= res!2643718 (= (content!12384 lt!2379567) ((_ map or) (content!12384 (t!378920 (_1!36617 lt!2379368))) (content!12384 (_2!36617 lt!2379368)))))))

(assert (=> d!2016115 (= lt!2379567 e!3901667)))

(declare-fun c!1175452 () Bool)

(assert (=> d!2016115 (= c!1175452 ((_ is Nil!65180) (t!378920 (_1!36617 lt!2379368))))))

(assert (=> d!2016115 (= (++!14403 (t!378920 (_1!36617 lt!2379368)) (_2!36617 lt!2379368)) lt!2379567)))

(assert (= (and d!2016115 c!1175452) b!6431586))

(assert (= (and d!2016115 (not c!1175452)) b!6431587))

(assert (= (and d!2016115 res!2643718) b!6431588))

(assert (= (and b!6431588 res!2643719) b!6431589))

(declare-fun m!7225220 () Bool)

(assert (=> b!6431587 m!7225220))

(declare-fun m!7225222 () Bool)

(assert (=> b!6431588 m!7225222))

(declare-fun m!7225224 () Bool)

(assert (=> b!6431588 m!7225224))

(assert (=> b!6431588 m!7224194))

(declare-fun m!7225226 () Bool)

(assert (=> d!2016115 m!7225226))

(declare-fun m!7225228 () Bool)

(assert (=> d!2016115 m!7225228))

(assert (=> d!2016115 m!7224200))

(assert (=> b!6431119 d!2016115))

(assert (=> b!6431073 d!2016015))

(declare-fun d!2016117 () Bool)

(assert (=> d!2016117 (= (head!13161 (_2!36617 lt!2379342)) (h!71628 (_2!36617 lt!2379342)))))

(assert (=> b!6430867 d!2016117))

(declare-fun d!2016119 () Bool)

(declare-fun e!3901680 () Bool)

(assert (=> d!2016119 e!3901680))

(declare-fun c!1175457 () Bool)

(assert (=> d!2016119 (= c!1175457 ((_ is EmptyExpr!16335) (derivativeStep!5039 lt!2379353 (head!13161 lt!2379371))))))

(declare-fun lt!2379569 () Bool)

(declare-fun e!3901675 () Bool)

(assert (=> d!2016119 (= lt!2379569 e!3901675)))

(declare-fun c!1175458 () Bool)

(assert (=> d!2016119 (= c!1175458 (isEmpty!37350 (tail!12246 lt!2379371)))))

(assert (=> d!2016119 (validRegex!8071 (derivativeStep!5039 lt!2379353 (head!13161 lt!2379371)))))

(assert (=> d!2016119 (= (matchR!8518 (derivativeStep!5039 lt!2379353 (head!13161 lt!2379371)) (tail!12246 lt!2379371)) lt!2379569)))

(declare-fun b!6431604 () Bool)

(declare-fun e!3901679 () Bool)

(assert (=> b!6431604 (= e!3901679 (not (= (head!13161 (tail!12246 lt!2379371)) (c!1175066 (derivativeStep!5039 lt!2379353 (head!13161 lt!2379371))))))))

(declare-fun b!6431605 () Bool)

(assert (=> b!6431605 (= e!3901675 (matchR!8518 (derivativeStep!5039 (derivativeStep!5039 lt!2379353 (head!13161 lt!2379371)) (head!13161 (tail!12246 lt!2379371))) (tail!12246 (tail!12246 lt!2379371))))))

(declare-fun b!6431606 () Bool)

(declare-fun res!2643729 () Bool)

(declare-fun e!3901678 () Bool)

(assert (=> b!6431606 (=> res!2643729 e!3901678)))

(declare-fun e!3901676 () Bool)

(assert (=> b!6431606 (= res!2643729 e!3901676)))

(declare-fun res!2643733 () Bool)

(assert (=> b!6431606 (=> (not res!2643733) (not e!3901676))))

(assert (=> b!6431606 (= res!2643733 lt!2379569)))

(declare-fun b!6431607 () Bool)

(declare-fun res!2643731 () Bool)

(assert (=> b!6431607 (=> res!2643731 e!3901678)))

(assert (=> b!6431607 (= res!2643731 (not ((_ is ElementMatch!16335) (derivativeStep!5039 lt!2379353 (head!13161 lt!2379371)))))))

(declare-fun e!3901677 () Bool)

(assert (=> b!6431607 (= e!3901677 e!3901678)))

(declare-fun b!6431608 () Bool)

(declare-fun e!3901681 () Bool)

(assert (=> b!6431608 (= e!3901678 e!3901681)))

(declare-fun res!2643734 () Bool)

(assert (=> b!6431608 (=> (not res!2643734) (not e!3901681))))

(assert (=> b!6431608 (= res!2643734 (not lt!2379569))))

(declare-fun b!6431609 () Bool)

(declare-fun res!2643732 () Bool)

(assert (=> b!6431609 (=> res!2643732 e!3901679)))

(assert (=> b!6431609 (= res!2643732 (not (isEmpty!37350 (tail!12246 (tail!12246 lt!2379371)))))))

(declare-fun b!6431610 () Bool)

(assert (=> b!6431610 (= e!3901675 (nullable!6328 (derivativeStep!5039 lt!2379353 (head!13161 lt!2379371))))))

(declare-fun b!6431611 () Bool)

(assert (=> b!6431611 (= e!3901680 e!3901677)))

(declare-fun c!1175456 () Bool)

(assert (=> b!6431611 (= c!1175456 ((_ is EmptyLang!16335) (derivativeStep!5039 lt!2379353 (head!13161 lt!2379371))))))

(declare-fun b!6431612 () Bool)

(declare-fun call!553238 () Bool)

(assert (=> b!6431612 (= e!3901680 (= lt!2379569 call!553238))))

(declare-fun b!6431613 () Bool)

(assert (=> b!6431613 (= e!3901677 (not lt!2379569))))

(declare-fun b!6431614 () Bool)

(declare-fun res!2643735 () Bool)

(assert (=> b!6431614 (=> (not res!2643735) (not e!3901676))))

(assert (=> b!6431614 (= res!2643735 (isEmpty!37350 (tail!12246 (tail!12246 lt!2379371))))))

(declare-fun b!6431615 () Bool)

(assert (=> b!6431615 (= e!3901681 e!3901679)))

(declare-fun res!2643728 () Bool)

(assert (=> b!6431615 (=> res!2643728 e!3901679)))

(assert (=> b!6431615 (= res!2643728 call!553238)))

(declare-fun b!6431616 () Bool)

(assert (=> b!6431616 (= e!3901676 (= (head!13161 (tail!12246 lt!2379371)) (c!1175066 (derivativeStep!5039 lt!2379353 (head!13161 lt!2379371)))))))

(declare-fun bm!553233 () Bool)

(assert (=> bm!553233 (= call!553238 (isEmpty!37350 (tail!12246 lt!2379371)))))

(declare-fun b!6431617 () Bool)

(declare-fun res!2643730 () Bool)

(assert (=> b!6431617 (=> (not res!2643730) (not e!3901676))))

(assert (=> b!6431617 (= res!2643730 (not call!553238))))

(assert (= (and d!2016119 c!1175458) b!6431610))

(assert (= (and d!2016119 (not c!1175458)) b!6431605))

(assert (= (and d!2016119 c!1175457) b!6431612))

(assert (= (and d!2016119 (not c!1175457)) b!6431611))

(assert (= (and b!6431611 c!1175456) b!6431613))

(assert (= (and b!6431611 (not c!1175456)) b!6431607))

(assert (= (and b!6431607 (not res!2643731)) b!6431606))

(assert (= (and b!6431606 res!2643733) b!6431617))

(assert (= (and b!6431617 res!2643730) b!6431614))

(assert (= (and b!6431614 res!2643735) b!6431616))

(assert (= (and b!6431606 (not res!2643729)) b!6431608))

(assert (= (and b!6431608 res!2643734) b!6431615))

(assert (= (and b!6431615 (not res!2643728)) b!6431609))

(assert (= (and b!6431609 (not res!2643732)) b!6431604))

(assert (= (or b!6431612 b!6431617 b!6431615) bm!553233))

(assert (=> d!2016119 m!7224048))

(assert (=> d!2016119 m!7224050))

(assert (=> d!2016119 m!7224054))

(declare-fun m!7225230 () Bool)

(assert (=> d!2016119 m!7225230))

(assert (=> b!6431604 m!7224048))

(declare-fun m!7225232 () Bool)

(assert (=> b!6431604 m!7225232))

(assert (=> b!6431614 m!7224048))

(declare-fun m!7225234 () Bool)

(assert (=> b!6431614 m!7225234))

(assert (=> b!6431614 m!7225234))

(declare-fun m!7225236 () Bool)

(assert (=> b!6431614 m!7225236))

(assert (=> b!6431609 m!7224048))

(assert (=> b!6431609 m!7225234))

(assert (=> b!6431609 m!7225234))

(assert (=> b!6431609 m!7225236))

(assert (=> b!6431616 m!7224048))

(assert (=> b!6431616 m!7225232))

(assert (=> bm!553233 m!7224048))

(assert (=> bm!553233 m!7224050))

(assert (=> b!6431610 m!7224054))

(declare-fun m!7225238 () Bool)

(assert (=> b!6431610 m!7225238))

(assert (=> b!6431605 m!7224048))

(assert (=> b!6431605 m!7225232))

(assert (=> b!6431605 m!7224054))

(assert (=> b!6431605 m!7225232))

(declare-fun m!7225240 () Bool)

(assert (=> b!6431605 m!7225240))

(assert (=> b!6431605 m!7224048))

(assert (=> b!6431605 m!7225234))

(assert (=> b!6431605 m!7225240))

(assert (=> b!6431605 m!7225234))

(declare-fun m!7225244 () Bool)

(assert (=> b!6431605 m!7225244))

(assert (=> b!6430418 d!2016119))

(declare-fun b!6431618 () Bool)

(declare-fun e!3901683 () Regex!16335)

(declare-fun e!3901682 () Regex!16335)

(assert (=> b!6431618 (= e!3901683 e!3901682)))

(declare-fun c!1175460 () Bool)

(assert (=> b!6431618 (= c!1175460 ((_ is ElementMatch!16335) lt!2379353))))

(declare-fun b!6431619 () Bool)

(assert (=> b!6431619 (= e!3901682 (ite (= (head!13161 lt!2379371) (c!1175066 lt!2379353)) EmptyExpr!16335 EmptyLang!16335))))

(declare-fun call!553239 () Regex!16335)

(declare-fun e!3901686 () Regex!16335)

(declare-fun call!553242 () Regex!16335)

(declare-fun b!6431620 () Bool)

(assert (=> b!6431620 (= e!3901686 (Union!16335 (Concat!25180 call!553239 (regTwo!33182 lt!2379353)) call!553242))))

(declare-fun d!2016121 () Bool)

(declare-fun lt!2379570 () Regex!16335)

(assert (=> d!2016121 (validRegex!8071 lt!2379570)))

(assert (=> d!2016121 (= lt!2379570 e!3901683)))

(declare-fun c!1175462 () Bool)

(assert (=> d!2016121 (= c!1175462 (or ((_ is EmptyExpr!16335) lt!2379353) ((_ is EmptyLang!16335) lt!2379353)))))

(assert (=> d!2016121 (validRegex!8071 lt!2379353)))

(assert (=> d!2016121 (= (derivativeStep!5039 lt!2379353 (head!13161 lt!2379371)) lt!2379570)))

(declare-fun b!6431621 () Bool)

(declare-fun e!3901685 () Regex!16335)

(declare-fun call!553241 () Regex!16335)

(declare-fun call!553240 () Regex!16335)

(assert (=> b!6431621 (= e!3901685 (Union!16335 call!553241 call!553240))))

(declare-fun c!1175459 () Bool)

(declare-fun bm!553234 () Bool)

(declare-fun c!1175461 () Bool)

(assert (=> bm!553234 (= call!553240 (derivativeStep!5039 (ite c!1175459 (regTwo!33183 lt!2379353) (ite c!1175461 (reg!16664 lt!2379353) (regOne!33182 lt!2379353))) (head!13161 lt!2379371)))))

(declare-fun b!6431622 () Bool)

(declare-fun e!3901684 () Regex!16335)

(assert (=> b!6431622 (= e!3901685 e!3901684)))

(assert (=> b!6431622 (= c!1175461 ((_ is Star!16335) lt!2379353))))

(declare-fun b!6431623 () Bool)

(assert (=> b!6431623 (= e!3901683 EmptyLang!16335)))

(declare-fun b!6431624 () Bool)

(assert (=> b!6431624 (= c!1175459 ((_ is Union!16335) lt!2379353))))

(assert (=> b!6431624 (= e!3901682 e!3901685)))

(declare-fun bm!553235 () Bool)

(assert (=> bm!553235 (= call!553242 call!553241)))

(declare-fun b!6431625 () Bool)

(declare-fun c!1175463 () Bool)

(assert (=> b!6431625 (= c!1175463 (nullable!6328 (regOne!33182 lt!2379353)))))

(assert (=> b!6431625 (= e!3901684 e!3901686)))

(declare-fun bm!553236 () Bool)

(assert (=> bm!553236 (= call!553239 call!553240)))

(declare-fun bm!553237 () Bool)

(assert (=> bm!553237 (= call!553241 (derivativeStep!5039 (ite c!1175459 (regOne!33183 lt!2379353) (ite c!1175463 (regTwo!33182 lt!2379353) (regOne!33182 lt!2379353))) (head!13161 lt!2379371)))))

(declare-fun b!6431626 () Bool)

(assert (=> b!6431626 (= e!3901684 (Concat!25180 call!553239 lt!2379353))))

(declare-fun b!6431627 () Bool)

(assert (=> b!6431627 (= e!3901686 (Union!16335 (Concat!25180 call!553242 (regTwo!33182 lt!2379353)) EmptyLang!16335))))

(assert (= (and d!2016121 c!1175462) b!6431623))

(assert (= (and d!2016121 (not c!1175462)) b!6431618))

(assert (= (and b!6431618 c!1175460) b!6431619))

(assert (= (and b!6431618 (not c!1175460)) b!6431624))

(assert (= (and b!6431624 c!1175459) b!6431621))

(assert (= (and b!6431624 (not c!1175459)) b!6431622))

(assert (= (and b!6431622 c!1175461) b!6431626))

(assert (= (and b!6431622 (not c!1175461)) b!6431625))

(assert (= (and b!6431625 c!1175463) b!6431620))

(assert (= (and b!6431625 (not c!1175463)) b!6431627))

(assert (= (or b!6431620 b!6431627) bm!553235))

(assert (= (or b!6431626 b!6431620) bm!553236))

(assert (= (or b!6431621 bm!553236) bm!553234))

(assert (= (or b!6431621 bm!553235) bm!553237))

(declare-fun m!7225256 () Bool)

(assert (=> d!2016121 m!7225256))

(assert (=> d!2016121 m!7223958))

(assert (=> bm!553234 m!7224046))

(declare-fun m!7225258 () Bool)

(assert (=> bm!553234 m!7225258))

(assert (=> b!6431625 m!7225058))

(assert (=> bm!553237 m!7224046))

(declare-fun m!7225260 () Bool)

(assert (=> bm!553237 m!7225260))

(assert (=> b!6430418 d!2016121))

(assert (=> b!6430418 d!2016113))

(declare-fun d!2016125 () Bool)

(assert (=> d!2016125 (= (tail!12246 lt!2379371) (t!378920 lt!2379371))))

(assert (=> b!6430418 d!2016125))

(declare-fun d!2016127 () Bool)

(assert (=> d!2016127 (= (++!14403 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342)) (_2!36617 lt!2379368)) (++!14403 (_1!36617 lt!2379342) (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368))))))

(assert (=> d!2016127 true))

(declare-fun _$52!2398 () Unit!158671)

(assert (=> d!2016127 (= (choose!47824 (_1!36617 lt!2379342) (_2!36617 lt!2379342) (_2!36617 lt!2379368)) _$52!2398)))

(declare-fun bs!1617732 () Bool)

(assert (= bs!1617732 d!2016127))

(assert (=> bs!1617732 m!7223730))

(assert (=> bs!1617732 m!7223730))

(assert (=> bs!1617732 m!7224216))

(assert (=> bs!1617732 m!7223766))

(assert (=> bs!1617732 m!7223766))

(assert (=> bs!1617732 m!7224212))

(assert (=> d!2015695 d!2016127))

(declare-fun b!6431641 () Bool)

(declare-fun e!3901697 () List!65304)

(assert (=> b!6431641 (= e!3901697 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368)))))

(declare-fun b!6431642 () Bool)

(assert (=> b!6431642 (= e!3901697 (Cons!65180 (h!71628 (_1!36617 lt!2379342)) (++!14403 (t!378920 (_1!36617 lt!2379342)) (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368)))))))

(declare-fun b!6431643 () Bool)

(declare-fun res!2643744 () Bool)

(declare-fun e!3901696 () Bool)

(assert (=> b!6431643 (=> (not res!2643744) (not e!3901696))))

(declare-fun lt!2379572 () List!65304)

(assert (=> b!6431643 (= res!2643744 (= (size!40394 lt!2379572) (+ (size!40394 (_1!36617 lt!2379342)) (size!40394 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368))))))))

(declare-fun b!6431644 () Bool)

(assert (=> b!6431644 (= e!3901696 (or (not (= (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368)) Nil!65180)) (= lt!2379572 (_1!36617 lt!2379342))))))

(declare-fun d!2016131 () Bool)

(assert (=> d!2016131 e!3901696))

(declare-fun res!2643743 () Bool)

(assert (=> d!2016131 (=> (not res!2643743) (not e!3901696))))

(assert (=> d!2016131 (= res!2643743 (= (content!12384 lt!2379572) ((_ map or) (content!12384 (_1!36617 lt!2379342)) (content!12384 (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368))))))))

(assert (=> d!2016131 (= lt!2379572 e!3901697)))

(declare-fun c!1175467 () Bool)

(assert (=> d!2016131 (= c!1175467 ((_ is Nil!65180) (_1!36617 lt!2379342)))))

(assert (=> d!2016131 (= (++!14403 (_1!36617 lt!2379342) (++!14403 (_2!36617 lt!2379342) (_2!36617 lt!2379368))) lt!2379572)))

(assert (= (and d!2016131 c!1175467) b!6431641))

(assert (= (and d!2016131 (not c!1175467)) b!6431642))

(assert (= (and d!2016131 res!2643743) b!6431643))

(assert (= (and b!6431643 res!2643744) b!6431644))

(assert (=> b!6431642 m!7223766))

(declare-fun m!7225278 () Bool)

(assert (=> b!6431642 m!7225278))

(declare-fun m!7225280 () Bool)

(assert (=> b!6431643 m!7225280))

(assert (=> b!6431643 m!7224178))

(assert (=> b!6431643 m!7223766))

(declare-fun m!7225282 () Bool)

(assert (=> b!6431643 m!7225282))

(declare-fun m!7225284 () Bool)

(assert (=> d!2016131 m!7225284))

(assert (=> d!2016131 m!7224184))

(assert (=> d!2016131 m!7223766))

(declare-fun m!7225286 () Bool)

(assert (=> d!2016131 m!7225286))

(assert (=> d!2015695 d!2016131))

(declare-fun b!6431647 () Bool)

(declare-fun e!3901700 () List!65304)

(assert (=> b!6431647 (= e!3901700 (_2!36617 lt!2379368))))

(declare-fun b!6431648 () Bool)

(assert (=> b!6431648 (= e!3901700 (Cons!65180 (h!71628 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342))) (++!14403 (t!378920 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342))) (_2!36617 lt!2379368))))))

(declare-fun b!6431649 () Bool)

(declare-fun res!2643746 () Bool)

(declare-fun e!3901699 () Bool)

(assert (=> b!6431649 (=> (not res!2643746) (not e!3901699))))

(declare-fun lt!2379573 () List!65304)

(assert (=> b!6431649 (= res!2643746 (= (size!40394 lt!2379573) (+ (size!40394 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342))) (size!40394 (_2!36617 lt!2379368)))))))

(declare-fun b!6431650 () Bool)

(assert (=> b!6431650 (= e!3901699 (or (not (= (_2!36617 lt!2379368) Nil!65180)) (= lt!2379573 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342)))))))

(declare-fun d!2016135 () Bool)

(assert (=> d!2016135 e!3901699))

(declare-fun res!2643745 () Bool)

(assert (=> d!2016135 (=> (not res!2643745) (not e!3901699))))

(assert (=> d!2016135 (= res!2643745 (= (content!12384 lt!2379573) ((_ map or) (content!12384 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342))) (content!12384 (_2!36617 lt!2379368)))))))

(assert (=> d!2016135 (= lt!2379573 e!3901700)))

(declare-fun c!1175469 () Bool)

(assert (=> d!2016135 (= c!1175469 ((_ is Nil!65180) (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342))))))

(assert (=> d!2016135 (= (++!14403 (++!14403 (_1!36617 lt!2379342) (_2!36617 lt!2379342)) (_2!36617 lt!2379368)) lt!2379573)))

(assert (= (and d!2016135 c!1175469) b!6431647))

(assert (= (and d!2016135 (not c!1175469)) b!6431648))

(assert (= (and d!2016135 res!2643745) b!6431649))

(assert (= (and b!6431649 res!2643746) b!6431650))

(declare-fun m!7225296 () Bool)

(assert (=> b!6431648 m!7225296))

(declare-fun m!7225300 () Bool)

(assert (=> b!6431649 m!7225300))

(assert (=> b!6431649 m!7223730))

(declare-fun m!7225302 () Bool)

(assert (=> b!6431649 m!7225302))

(assert (=> b!6431649 m!7224194))

(declare-fun m!7225304 () Bool)

(assert (=> d!2016135 m!7225304))

(assert (=> d!2016135 m!7223730))

(declare-fun m!7225306 () Bool)

(assert (=> d!2016135 m!7225306))

(assert (=> d!2016135 m!7224200))

(assert (=> d!2015695 d!2016135))

(assert (=> d!2015695 d!2015693))

(assert (=> d!2015695 d!2015897))

(declare-fun d!2016137 () Bool)

(declare-fun c!1175470 () Bool)

(assert (=> d!2016137 (= c!1175470 (isEmpty!37350 (tail!12246 (t!378920 s!2326))))))

(declare-fun e!3901701 () Bool)

(assert (=> d!2016137 (= (matchZipper!2347 (derivationStepZipper!2301 lt!2379365 (head!13161 (t!378920 s!2326))) (tail!12246 (t!378920 s!2326))) e!3901701)))

(declare-fun b!6431651 () Bool)

(assert (=> b!6431651 (= e!3901701 (nullableZipper!2100 (derivationStepZipper!2301 lt!2379365 (head!13161 (t!378920 s!2326)))))))

(declare-fun b!6431652 () Bool)

(assert (=> b!6431652 (= e!3901701 (matchZipper!2347 (derivationStepZipper!2301 (derivationStepZipper!2301 lt!2379365 (head!13161 (t!378920 s!2326))) (head!13161 (tail!12246 (t!378920 s!2326)))) (tail!12246 (tail!12246 (t!378920 s!2326)))))))

(assert (= (and d!2016137 c!1175470) b!6431651))

(assert (= (and d!2016137 (not c!1175470)) b!6431652))

(assert (=> d!2016137 m!7223922))

(assert (=> d!2016137 m!7225152))

(assert (=> b!6431651 m!7224168))

(declare-fun m!7225310 () Bool)

(assert (=> b!6431651 m!7225310))

(assert (=> b!6431652 m!7223922))

(assert (=> b!6431652 m!7225156))

(assert (=> b!6431652 m!7224168))

(assert (=> b!6431652 m!7225156))

(declare-fun m!7225312 () Bool)

(assert (=> b!6431652 m!7225312))

(assert (=> b!6431652 m!7223922))

(assert (=> b!6431652 m!7225160))

(assert (=> b!6431652 m!7225312))

(assert (=> b!6431652 m!7225160))

(declare-fun m!7225314 () Bool)

(assert (=> b!6431652 m!7225314))

(assert (=> b!6430570 d!2016137))

(declare-fun bs!1617734 () Bool)

(declare-fun d!2016141 () Bool)

(assert (= bs!1617734 (and d!2016141 b!6430098)))

(declare-fun lambda!355843 () Int)

(assert (=> bs!1617734 (= (= (head!13161 (t!378920 s!2326)) (h!71628 s!2326)) (= lambda!355843 lambda!355716))))

(declare-fun bs!1617736 () Bool)

(assert (= bs!1617736 (and d!2016141 d!2015865)))

(assert (=> bs!1617736 (= (= (head!13161 (t!378920 s!2326)) (h!71628 s!2326)) (= lambda!355843 lambda!355800))))

(declare-fun bs!1617737 () Bool)

(assert (= bs!1617737 (and d!2016141 d!2016073)))

(assert (=> bs!1617737 (= lambda!355843 lambda!355841)))

(assert (=> d!2016141 true))

(assert (=> d!2016141 (= (derivationStepZipper!2301 lt!2379365 (head!13161 (t!378920 s!2326))) (flatMap!1840 lt!2379365 lambda!355843))))

(declare-fun bs!1617738 () Bool)

(assert (= bs!1617738 d!2016141))

(declare-fun m!7225316 () Bool)

(assert (=> bs!1617738 m!7225316))

(assert (=> b!6430570 d!2016141))

(assert (=> b!6430570 d!2016075))

(assert (=> b!6430570 d!2016077))

(declare-fun b!6431654 () Bool)

(declare-fun e!3901704 () Bool)

(declare-fun e!3901706 () Bool)

(assert (=> b!6431654 (= e!3901704 e!3901706)))

(declare-fun res!2643748 () Bool)

(assert (=> b!6431654 (= res!2643748 (not (nullable!6328 (reg!16664 lt!2379476))))))

(assert (=> b!6431654 (=> (not res!2643748) (not e!3901706))))

(declare-fun call!553246 () Bool)

(declare-fun bm!553241 () Bool)

(declare-fun c!1175471 () Bool)

(declare-fun c!1175472 () Bool)

(assert (=> bm!553241 (= call!553246 (validRegex!8071 (ite c!1175471 (reg!16664 lt!2379476) (ite c!1175472 (regOne!33183 lt!2379476) (regOne!33182 lt!2379476)))))))

(declare-fun b!6431655 () Bool)

(declare-fun e!3901703 () Bool)

(declare-fun call!553247 () Bool)

(assert (=> b!6431655 (= e!3901703 call!553247)))

(declare-fun b!6431656 () Bool)

(declare-fun e!3901708 () Bool)

(assert (=> b!6431656 (= e!3901704 e!3901708)))

(assert (=> b!6431656 (= c!1175472 ((_ is Union!16335) lt!2379476))))

(declare-fun b!6431657 () Bool)

(declare-fun e!3901707 () Bool)

(declare-fun e!3901702 () Bool)

(assert (=> b!6431657 (= e!3901707 e!3901702)))

(declare-fun res!2643751 () Bool)

(assert (=> b!6431657 (=> (not res!2643751) (not e!3901702))))

(declare-fun call!553248 () Bool)

(assert (=> b!6431657 (= res!2643751 call!553248)))

(declare-fun b!6431658 () Bool)

(declare-fun e!3901705 () Bool)

(assert (=> b!6431658 (= e!3901705 e!3901704)))

(assert (=> b!6431658 (= c!1175471 ((_ is Star!16335) lt!2379476))))

(declare-fun b!6431653 () Bool)

(declare-fun res!2643750 () Bool)

(assert (=> b!6431653 (=> res!2643750 e!3901707)))

(assert (=> b!6431653 (= res!2643750 (not ((_ is Concat!25180) lt!2379476)))))

(assert (=> b!6431653 (= e!3901708 e!3901707)))

(declare-fun d!2016143 () Bool)

(declare-fun res!2643749 () Bool)

(assert (=> d!2016143 (=> res!2643749 e!3901705)))

(assert (=> d!2016143 (= res!2643749 ((_ is ElementMatch!16335) lt!2379476))))

(assert (=> d!2016143 (= (validRegex!8071 lt!2379476) e!3901705)))

(declare-fun b!6431659 () Bool)

(declare-fun res!2643747 () Bool)

(assert (=> b!6431659 (=> (not res!2643747) (not e!3901703))))

(assert (=> b!6431659 (= res!2643747 call!553248)))

(assert (=> b!6431659 (= e!3901708 e!3901703)))

(declare-fun b!6431660 () Bool)

(assert (=> b!6431660 (= e!3901706 call!553246)))

(declare-fun bm!553242 () Bool)

(assert (=> bm!553242 (= call!553247 (validRegex!8071 (ite c!1175472 (regTwo!33183 lt!2379476) (regTwo!33182 lt!2379476))))))

(declare-fun bm!553243 () Bool)

(assert (=> bm!553243 (= call!553248 call!553246)))

(declare-fun b!6431661 () Bool)

(assert (=> b!6431661 (= e!3901702 call!553247)))

(assert (= (and d!2016143 (not res!2643749)) b!6431658))

(assert (= (and b!6431658 c!1175471) b!6431654))

(assert (= (and b!6431658 (not c!1175471)) b!6431656))

(assert (= (and b!6431654 res!2643748) b!6431660))

(assert (= (and b!6431656 c!1175472) b!6431659))

(assert (= (and b!6431656 (not c!1175472)) b!6431653))

(assert (= (and b!6431659 res!2643747) b!6431655))

(assert (= (and b!6431653 (not res!2643750)) b!6431657))

(assert (= (and b!6431657 res!2643751) b!6431661))

(assert (= (or b!6431655 b!6431661) bm!553242))

(assert (= (or b!6431659 b!6431657) bm!553243))

(assert (= (or b!6431660 bm!553243) bm!553241))

(declare-fun m!7225320 () Bool)

(assert (=> b!6431654 m!7225320))

(declare-fun m!7225322 () Bool)

(assert (=> bm!553241 m!7225322))

(declare-fun m!7225324 () Bool)

(assert (=> bm!553242 m!7225324))

(assert (=> d!2015747 d!2016143))

(assert (=> d!2015747 d!2015705))

(assert (=> d!2015747 d!2015713))

(declare-fun d!2016149 () Bool)

(assert (=> d!2016149 (= (isEmpty!37350 lt!2379356) ((_ is Nil!65180) lt!2379356))))

(assert (=> bm!553076 d!2016149))

(declare-fun b!6431662 () Bool)

(declare-fun call!553249 () (InoxSet Context!11438))

(declare-fun e!3901709 () (InoxSet Context!11438))

(assert (=> b!6431662 (= e!3901709 ((_ map or) call!553249 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))))))) (h!71628 s!2326))))))

(declare-fun d!2016151 () Bool)

(declare-fun c!1175474 () Bool)

(declare-fun e!3901710 () Bool)

(assert (=> d!2016151 (= c!1175474 e!3901710)))

(declare-fun res!2643752 () Bool)

(assert (=> d!2016151 (=> (not res!2643752) (not e!3901710))))

(assert (=> d!2016151 (= res!2643752 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))))))))

(assert (=> d!2016151 (= (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (h!71628 s!2326)) e!3901709)))

(declare-fun bm!553244 () Bool)

(assert (=> bm!553244 (= call!553249 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))))) (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))))))) (h!71628 s!2326)))))

(declare-fun b!6431663 () Bool)

(declare-fun e!3901711 () (InoxSet Context!11438))

(assert (=> b!6431663 (= e!3901709 e!3901711)))

(declare-fun c!1175473 () Bool)

(assert (=> b!6431663 (= c!1175473 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))))))))

(declare-fun b!6431664 () Bool)

(assert (=> b!6431664 (= e!3901711 call!553249)))

(declare-fun b!6431665 () Bool)

(assert (=> b!6431665 (= e!3901711 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6431666 () Bool)

(assert (=> b!6431666 (= e!3901710 (nullable!6328 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))))))))))

(assert (= (and d!2016151 res!2643752) b!6431666))

(assert (= (and d!2016151 c!1175474) b!6431662))

(assert (= (and d!2016151 (not c!1175474)) b!6431663))

(assert (= (and b!6431663 c!1175473) b!6431664))

(assert (= (and b!6431663 (not c!1175473)) b!6431665))

(assert (= (or b!6431662 b!6431664) bm!553244))

(declare-fun m!7225326 () Bool)

(assert (=> b!6431662 m!7225326))

(declare-fun m!7225328 () Bool)

(assert (=> bm!553244 m!7225328))

(declare-fun m!7225330 () Bool)

(assert (=> b!6431666 m!7225330))

(assert (=> b!6430462 d!2016151))

(declare-fun d!2016157 () Bool)

(declare-fun e!3901724 () Bool)

(assert (=> d!2016157 e!3901724))

(declare-fun c!1175478 () Bool)

(assert (=> d!2016157 (= c!1175478 ((_ is EmptyExpr!16335) (regOne!33182 r!7292)))))

(declare-fun lt!2379574 () Bool)

(declare-fun e!3901719 () Bool)

(assert (=> d!2016157 (= lt!2379574 e!3901719)))

(declare-fun c!1175479 () Bool)

(assert (=> d!2016157 (= c!1175479 (isEmpty!37350 (_1!36617 (get!22586 lt!2379520))))))

(assert (=> d!2016157 (validRegex!8071 (regOne!33182 r!7292))))

(assert (=> d!2016157 (= (matchR!8518 (regOne!33182 r!7292) (_1!36617 (get!22586 lt!2379520))) lt!2379574)))

(declare-fun b!6431676 () Bool)

(declare-fun e!3901723 () Bool)

(assert (=> b!6431676 (= e!3901723 (not (= (head!13161 (_1!36617 (get!22586 lt!2379520))) (c!1175066 (regOne!33182 r!7292)))))))

(declare-fun b!6431677 () Bool)

(assert (=> b!6431677 (= e!3901719 (matchR!8518 (derivativeStep!5039 (regOne!33182 r!7292) (head!13161 (_1!36617 (get!22586 lt!2379520)))) (tail!12246 (_1!36617 (get!22586 lt!2379520)))))))

(declare-fun b!6431678 () Bool)

(declare-fun res!2643759 () Bool)

(declare-fun e!3901722 () Bool)

(assert (=> b!6431678 (=> res!2643759 e!3901722)))

(declare-fun e!3901720 () Bool)

(assert (=> b!6431678 (= res!2643759 e!3901720)))

(declare-fun res!2643763 () Bool)

(assert (=> b!6431678 (=> (not res!2643763) (not e!3901720))))

(assert (=> b!6431678 (= res!2643763 lt!2379574)))

(declare-fun b!6431679 () Bool)

(declare-fun res!2643761 () Bool)

(assert (=> b!6431679 (=> res!2643761 e!3901722)))

(assert (=> b!6431679 (= res!2643761 (not ((_ is ElementMatch!16335) (regOne!33182 r!7292))))))

(declare-fun e!3901721 () Bool)

(assert (=> b!6431679 (= e!3901721 e!3901722)))

(declare-fun b!6431680 () Bool)

(declare-fun e!3901725 () Bool)

(assert (=> b!6431680 (= e!3901722 e!3901725)))

(declare-fun res!2643764 () Bool)

(assert (=> b!6431680 (=> (not res!2643764) (not e!3901725))))

(assert (=> b!6431680 (= res!2643764 (not lt!2379574))))

(declare-fun b!6431681 () Bool)

(declare-fun res!2643762 () Bool)

(assert (=> b!6431681 (=> res!2643762 e!3901723)))

(assert (=> b!6431681 (= res!2643762 (not (isEmpty!37350 (tail!12246 (_1!36617 (get!22586 lt!2379520))))))))

(declare-fun b!6431682 () Bool)

(assert (=> b!6431682 (= e!3901719 (nullable!6328 (regOne!33182 r!7292)))))

(declare-fun b!6431683 () Bool)

(assert (=> b!6431683 (= e!3901724 e!3901721)))

(declare-fun c!1175477 () Bool)

(assert (=> b!6431683 (= c!1175477 ((_ is EmptyLang!16335) (regOne!33182 r!7292)))))

(declare-fun b!6431684 () Bool)

(declare-fun call!553253 () Bool)

(assert (=> b!6431684 (= e!3901724 (= lt!2379574 call!553253))))

(declare-fun b!6431685 () Bool)

(assert (=> b!6431685 (= e!3901721 (not lt!2379574))))

(declare-fun b!6431686 () Bool)

(declare-fun res!2643765 () Bool)

(assert (=> b!6431686 (=> (not res!2643765) (not e!3901720))))

(assert (=> b!6431686 (= res!2643765 (isEmpty!37350 (tail!12246 (_1!36617 (get!22586 lt!2379520)))))))

(declare-fun b!6431687 () Bool)

(assert (=> b!6431687 (= e!3901725 e!3901723)))

(declare-fun res!2643758 () Bool)

(assert (=> b!6431687 (=> res!2643758 e!3901723)))

(assert (=> b!6431687 (= res!2643758 call!553253)))

(declare-fun b!6431688 () Bool)

(assert (=> b!6431688 (= e!3901720 (= (head!13161 (_1!36617 (get!22586 lt!2379520))) (c!1175066 (regOne!33182 r!7292))))))

(declare-fun bm!553248 () Bool)

(assert (=> bm!553248 (= call!553253 (isEmpty!37350 (_1!36617 (get!22586 lt!2379520))))))

(declare-fun b!6431689 () Bool)

(declare-fun res!2643760 () Bool)

(assert (=> b!6431689 (=> (not res!2643760) (not e!3901720))))

(assert (=> b!6431689 (= res!2643760 (not call!553253))))

(assert (= (and d!2016157 c!1175479) b!6431682))

(assert (= (and d!2016157 (not c!1175479)) b!6431677))

(assert (= (and d!2016157 c!1175478) b!6431684))

(assert (= (and d!2016157 (not c!1175478)) b!6431683))

(assert (= (and b!6431683 c!1175477) b!6431685))

(assert (= (and b!6431683 (not c!1175477)) b!6431679))

(assert (= (and b!6431679 (not res!2643761)) b!6431678))

(assert (= (and b!6431678 res!2643763) b!6431689))

(assert (= (and b!6431689 res!2643760) b!6431686))

(assert (= (and b!6431686 res!2643765) b!6431688))

(assert (= (and b!6431678 (not res!2643759)) b!6431680))

(assert (= (and b!6431680 res!2643764) b!6431687))

(assert (= (and b!6431687 (not res!2643758)) b!6431681))

(assert (= (and b!6431681 (not res!2643762)) b!6431676))

(assert (= (or b!6431684 b!6431689 b!6431687) bm!553248))

(declare-fun m!7225338 () Bool)

(assert (=> d!2016157 m!7225338))

(assert (=> d!2016157 m!7224544))

(declare-fun m!7225340 () Bool)

(assert (=> b!6431676 m!7225340))

(declare-fun m!7225342 () Bool)

(assert (=> b!6431686 m!7225342))

(assert (=> b!6431686 m!7225342))

(declare-fun m!7225344 () Bool)

(assert (=> b!6431686 m!7225344))

(assert (=> b!6431681 m!7225342))

(assert (=> b!6431681 m!7225342))

(assert (=> b!6431681 m!7225344))

(assert (=> b!6431688 m!7225340))

(assert (=> bm!553248 m!7225338))

(assert (=> b!6431682 m!7225188))

(assert (=> b!6431677 m!7225340))

(assert (=> b!6431677 m!7225340))

(declare-fun m!7225346 () Bool)

(assert (=> b!6431677 m!7225346))

(assert (=> b!6431677 m!7225342))

(assert (=> b!6431677 m!7225346))

(assert (=> b!6431677 m!7225342))

(declare-fun m!7225348 () Bool)

(assert (=> b!6431677 m!7225348))

(assert (=> b!6430943 d!2016157))

(assert (=> b!6430943 d!2015983))

(assert (=> bm!553129 d!2016083))

(assert (=> d!2015793 d!2015807))

(assert (=> d!2015793 d!2016093))

(assert (=> d!2015793 d!2015851))

(declare-fun d!2016161 () Bool)

(assert (=> d!2016161 (= (Exists!3405 lambda!355786) (choose!47830 lambda!355786))))

(declare-fun bs!1617740 () Bool)

(assert (= bs!1617740 d!2016161))

(declare-fun m!7225350 () Bool)

(assert (=> bs!1617740 m!7225350))

(assert (=> d!2015793 d!2016161))

(declare-fun bs!1617741 () Bool)

(declare-fun d!2016163 () Bool)

(assert (= bs!1617741 (and d!2016163 d!2015887)))

(declare-fun lambda!355844 () Int)

(assert (=> bs!1617741 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355844 lambda!355804))))

(declare-fun bs!1617742 () Bool)

(assert (= bs!1617742 (and d!2016163 b!6430115)))

(assert (=> bs!1617742 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355844 lambda!355717))))

(declare-fun bs!1617743 () Bool)

(assert (= bs!1617743 (and d!2016163 b!6430094)))

(assert (=> bs!1617743 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355844 lambda!355719))))

(assert (=> bs!1617743 (not (= lambda!355844 lambda!355720))))

(declare-fun bs!1617744 () Bool)

(assert (= bs!1617744 (and d!2016163 d!2015991)))

(assert (=> bs!1617744 (not (= lambda!355844 lambda!355829))))

(declare-fun bs!1617745 () Bool)

(assert (= bs!1617745 (and d!2016163 d!2015881)))

(assert (=> bs!1617745 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355844 lambda!355802))))

(assert (=> bs!1617744 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355844 lambda!355828))))

(declare-fun bs!1617746 () Bool)

(assert (= bs!1617746 (and d!2016163 d!2015957)))

(assert (=> bs!1617746 (not (= lambda!355844 lambda!355823))))

(declare-fun bs!1617747 () Bool)

(assert (= bs!1617747 (and d!2016163 d!2015895)))

(assert (=> bs!1617747 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355844 lambda!355811))))

(declare-fun bs!1617748 () Bool)

(assert (= bs!1617748 (and d!2016163 b!6430859)))

(assert (=> bs!1617748 (not (= lambda!355844 lambda!355779))))

(declare-fun bs!1617749 () Bool)

(assert (= bs!1617749 (and d!2016163 d!2015879)))

(assert (=> bs!1617749 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355844 lambda!355801))))

(declare-fun bs!1617750 () Bool)

(assert (= bs!1617750 (and d!2016163 d!2016021)))

(assert (=> bs!1617750 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355844 lambda!355832))))

(declare-fun bs!1617751 () Bool)

(assert (= bs!1617751 (and d!2016163 d!2015889)))

(assert (=> bs!1617751 (not (= lambda!355844 lambda!355806))))

(assert (=> bs!1617745 (not (= lambda!355844 lambda!355803))))

(declare-fun bs!1617752 () Bool)

(assert (= bs!1617752 (and d!2016163 b!6430810)))

(assert (=> bs!1617752 (not (= lambda!355844 lambda!355772))))

(declare-fun bs!1617753 () Bool)

(assert (= bs!1617753 (and d!2016163 b!6431148)))

(assert (=> bs!1617753 (not (= lambda!355844 lambda!355813))))

(assert (=> bs!1617743 (not (= lambda!355844 lambda!355721))))

(declare-fun bs!1617754 () Bool)

(assert (= bs!1617754 (and d!2016163 d!2015793)))

(assert (=> bs!1617754 (= lambda!355844 lambda!355786)))

(declare-fun bs!1617755 () Bool)

(assert (= bs!1617755 (and d!2016163 b!6431154)))

(assert (=> bs!1617755 (not (= lambda!355844 lambda!355814))))

(declare-fun bs!1617756 () Bool)

(assert (= bs!1617756 (and d!2016163 b!6430128)))

(assert (=> bs!1617756 (not (= lambda!355844 lambda!355715))))

(declare-fun bs!1617757 () Bool)

(assert (= bs!1617757 (and d!2016163 b!6430816)))

(assert (=> bs!1617757 (not (= lambda!355844 lambda!355773))))

(assert (=> bs!1617747 (not (= lambda!355844 lambda!355812))))

(declare-fun bs!1617758 () Bool)

(assert (= bs!1617758 (and d!2016163 b!6430865)))

(assert (=> bs!1617758 (not (= lambda!355844 lambda!355780))))

(assert (=> bs!1617751 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355844 lambda!355805))))

(assert (=> bs!1617746 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355844 lambda!355822))))

(assert (=> bs!1617742 (not (= lambda!355844 lambda!355718))))

(assert (=> bs!1617756 (= lambda!355844 lambda!355714)))

(declare-fun bs!1617759 () Bool)

(assert (= bs!1617759 (and d!2016163 d!2015829)))

(assert (=> bs!1617759 (= lambda!355844 lambda!355796)))

(assert (=> bs!1617759 (not (= lambda!355844 lambda!355797))))

(assert (=> d!2016163 true))

(assert (=> d!2016163 true))

(assert (=> d!2016163 true))

(assert (=> d!2016163 (= (isDefined!12929 (findConcatSeparation!2640 (regOne!33182 r!7292) (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326)) (Exists!3405 lambda!355844))))

(assert (=> d!2016163 true))

(declare-fun _$89!2671 () Unit!158671)

(assert (=> d!2016163 (= (choose!47831 (regOne!33182 r!7292) (regTwo!33182 r!7292) s!2326) _$89!2671)))

(declare-fun bs!1617760 () Bool)

(assert (= bs!1617760 d!2016163))

(assert (=> bs!1617760 m!7223800))

(assert (=> bs!1617760 m!7223800))

(assert (=> bs!1617760 m!7223802))

(declare-fun m!7225356 () Bool)

(assert (=> bs!1617760 m!7225356))

(assert (=> d!2015793 d!2016163))

(declare-fun d!2016167 () Bool)

(assert (=> d!2016167 (= (isEmptyExpr!1736 lt!2379547) ((_ is EmptyExpr!16335) lt!2379547))))

(assert (=> b!6431177 d!2016167))

(declare-fun b!6431700 () Bool)

(declare-fun e!3901734 () (InoxSet Context!11438))

(declare-fun call!553254 () (InoxSet Context!11438))

(assert (=> b!6431700 (= e!3901734 ((_ map or) call!553254 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379362)))))) (h!71628 s!2326))))))

(declare-fun d!2016169 () Bool)

(declare-fun c!1175481 () Bool)

(declare-fun e!3901735 () Bool)

(assert (=> d!2016169 (= c!1175481 e!3901735)))

(declare-fun res!2643774 () Bool)

(assert (=> d!2016169 (=> (not res!2643774) (not e!3901735))))

(assert (=> d!2016169 (= res!2643774 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379362))))))))

(assert (=> d!2016169 (= (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 lt!2379362))) (h!71628 s!2326)) e!3901734)))

(declare-fun bm!553249 () Bool)

(assert (=> bm!553249 (= call!553254 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379362))))) (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379362)))))) (h!71628 s!2326)))))

(declare-fun b!6431701 () Bool)

(declare-fun e!3901736 () (InoxSet Context!11438))

(assert (=> b!6431701 (= e!3901734 e!3901736)))

(declare-fun c!1175480 () Bool)

(assert (=> b!6431701 (= c!1175480 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379362))))))))

(declare-fun b!6431702 () Bool)

(assert (=> b!6431702 (= e!3901736 call!553254)))

(declare-fun b!6431703 () Bool)

(assert (=> b!6431703 (= e!3901736 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6431704 () Bool)

(assert (=> b!6431704 (= e!3901735 (nullable!6328 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379362)))))))))

(assert (= (and d!2016169 res!2643774) b!6431704))

(assert (= (and d!2016169 c!1175481) b!6431700))

(assert (= (and d!2016169 (not c!1175481)) b!6431701))

(assert (= (and b!6431701 c!1175480) b!6431702))

(assert (= (and b!6431701 (not c!1175480)) b!6431703))

(assert (= (or b!6431700 b!6431702) bm!553249))

(declare-fun m!7225358 () Bool)

(assert (=> b!6431700 m!7225358))

(declare-fun m!7225360 () Bool)

(assert (=> bm!553249 m!7225360))

(declare-fun m!7225362 () Bool)

(assert (=> b!6431704 m!7225362))

(assert (=> b!6431191 d!2016169))

(declare-fun d!2016171 () Bool)

(declare-fun c!1175482 () Bool)

(assert (=> d!2016171 (= c!1175482 (isEmpty!37350 (tail!12246 (t!378920 s!2326))))))

(declare-fun e!3901741 () Bool)

(assert (=> d!2016171 (= (matchZipper!2347 (derivationStepZipper!2301 ((_ map or) lt!2379363 lt!2379360) (head!13161 (t!378920 s!2326))) (tail!12246 (t!378920 s!2326))) e!3901741)))

(declare-fun b!6431707 () Bool)

(assert (=> b!6431707 (= e!3901741 (nullableZipper!2100 (derivationStepZipper!2301 ((_ map or) lt!2379363 lt!2379360) (head!13161 (t!378920 s!2326)))))))

(declare-fun b!6431708 () Bool)

(assert (=> b!6431708 (= e!3901741 (matchZipper!2347 (derivationStepZipper!2301 (derivationStepZipper!2301 ((_ map or) lt!2379363 lt!2379360) (head!13161 (t!378920 s!2326))) (head!13161 (tail!12246 (t!378920 s!2326)))) (tail!12246 (tail!12246 (t!378920 s!2326)))))))

(assert (= (and d!2016171 c!1175482) b!6431707))

(assert (= (and d!2016171 (not c!1175482)) b!6431708))

(assert (=> d!2016171 m!7223922))

(assert (=> d!2016171 m!7225152))

(assert (=> b!6431707 m!7223928))

(declare-fun m!7225364 () Bool)

(assert (=> b!6431707 m!7225364))

(assert (=> b!6431708 m!7223922))

(assert (=> b!6431708 m!7225156))

(assert (=> b!6431708 m!7223928))

(assert (=> b!6431708 m!7225156))

(declare-fun m!7225366 () Bool)

(assert (=> b!6431708 m!7225366))

(assert (=> b!6431708 m!7223922))

(assert (=> b!6431708 m!7225160))

(assert (=> b!6431708 m!7225366))

(assert (=> b!6431708 m!7225160))

(declare-fun m!7225368 () Bool)

(assert (=> b!6431708 m!7225368))

(assert (=> b!6430277 d!2016171))

(declare-fun bs!1617761 () Bool)

(declare-fun d!2016173 () Bool)

(assert (= bs!1617761 (and d!2016173 b!6430098)))

(declare-fun lambda!355845 () Int)

(assert (=> bs!1617761 (= (= (head!13161 (t!378920 s!2326)) (h!71628 s!2326)) (= lambda!355845 lambda!355716))))

(declare-fun bs!1617762 () Bool)

(assert (= bs!1617762 (and d!2016173 d!2015865)))

(assert (=> bs!1617762 (= (= (head!13161 (t!378920 s!2326)) (h!71628 s!2326)) (= lambda!355845 lambda!355800))))

(declare-fun bs!1617763 () Bool)

(assert (= bs!1617763 (and d!2016173 d!2016073)))

(assert (=> bs!1617763 (= lambda!355845 lambda!355841)))

(declare-fun bs!1617764 () Bool)

(assert (= bs!1617764 (and d!2016173 d!2016141)))

(assert (=> bs!1617764 (= lambda!355845 lambda!355843)))

(assert (=> d!2016173 true))

(assert (=> d!2016173 (= (derivationStepZipper!2301 ((_ map or) lt!2379363 lt!2379360) (head!13161 (t!378920 s!2326))) (flatMap!1840 ((_ map or) lt!2379363 lt!2379360) lambda!355845))))

(declare-fun bs!1617765 () Bool)

(assert (= bs!1617765 d!2016173))

(declare-fun m!7225370 () Bool)

(assert (=> bs!1617765 m!7225370))

(assert (=> b!6430277 d!2016173))

(assert (=> b!6430277 d!2016075))

(assert (=> b!6430277 d!2016077))

(declare-fun bs!1617766 () Bool)

(declare-fun d!2016175 () Bool)

(assert (= bs!1617766 (and d!2016175 d!2015651)))

(declare-fun lambda!355846 () Int)

(assert (=> bs!1617766 (= lambda!355846 lambda!355744)))

(declare-fun bs!1617767 () Bool)

(assert (= bs!1617767 (and d!2016175 d!2015705)))

(assert (=> bs!1617767 (= lambda!355846 lambda!355761)))

(declare-fun bs!1617768 () Bool)

(assert (= bs!1617768 (and d!2016175 d!2015739)))

(assert (=> bs!1617768 (= lambda!355846 lambda!355765)))

(declare-fun bs!1617769 () Bool)

(assert (= bs!1617769 (and d!2016175 d!2015603)))

(assert (=> bs!1617769 (= lambda!355846 lambda!355733)))

(declare-fun bs!1617770 () Bool)

(assert (= bs!1617770 (and d!2016175 d!2016067)))

(assert (=> bs!1617770 (= lambda!355846 lambda!355839)))

(declare-fun bs!1617771 () Bool)

(assert (= bs!1617771 (and d!2016175 d!2016025)))

(assert (=> bs!1617771 (= lambda!355846 lambda!355833)))

(declare-fun bs!1617772 () Bool)

(assert (= bs!1617772 (and d!2016175 d!2016069)))

(assert (=> bs!1617772 (= lambda!355846 lambda!355840)))

(declare-fun bs!1617773 () Bool)

(assert (= bs!1617773 (and d!2016175 d!2015713)))

(assert (=> bs!1617773 (= lambda!355846 lambda!355764)))

(declare-fun bs!1617774 () Bool)

(assert (= bs!1617774 (and d!2016175 d!2015907)))

(assert (=> bs!1617774 (= lambda!355846 lambda!355817)))

(assert (=> d!2016175 (= (inv!84084 (h!71630 (t!378922 zl!343))) (forall!15525 (exprs!6219 (h!71630 (t!378922 zl!343))) lambda!355846))))

(declare-fun bs!1617775 () Bool)

(assert (= bs!1617775 d!2016175))

(declare-fun m!7225372 () Bool)

(assert (=> bs!1617775 m!7225372))

(assert (=> b!6431225 d!2016175))

(assert (=> b!6430854 d!2015965))

(declare-fun d!2016177 () Bool)

(assert (=> d!2016177 (= (isUnion!1173 lt!2379465) ((_ is Union!16335) lt!2379465))))

(assert (=> b!6430678 d!2016177))

(declare-fun d!2016181 () Bool)

(declare-fun e!3901750 () Bool)

(assert (=> d!2016181 e!3901750))

(declare-fun c!1175484 () Bool)

(assert (=> d!2016181 (= c!1175484 ((_ is EmptyExpr!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun lt!2379575 () Bool)

(declare-fun e!3901745 () Bool)

(assert (=> d!2016181 (= lt!2379575 e!3901745)))

(declare-fun c!1175485 () Bool)

(assert (=> d!2016181 (= c!1175485 (isEmpty!37350 (_1!36617 (get!22586 lt!2379537))))))

(assert (=> d!2016181 (validRegex!8071 (reg!16664 (regOne!33182 r!7292)))))

(assert (=> d!2016181 (= (matchR!8518 (reg!16664 (regOne!33182 r!7292)) (_1!36617 (get!22586 lt!2379537))) lt!2379575)))

(declare-fun b!6431712 () Bool)

(declare-fun e!3901749 () Bool)

(assert (=> b!6431712 (= e!3901749 (not (= (head!13161 (_1!36617 (get!22586 lt!2379537))) (c!1175066 (reg!16664 (regOne!33182 r!7292))))))))

(declare-fun b!6431713 () Bool)

(assert (=> b!6431713 (= e!3901745 (matchR!8518 (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 (get!22586 lt!2379537)))) (tail!12246 (_1!36617 (get!22586 lt!2379537)))))))

(declare-fun b!6431714 () Bool)

(declare-fun res!2643780 () Bool)

(declare-fun e!3901748 () Bool)

(assert (=> b!6431714 (=> res!2643780 e!3901748)))

(declare-fun e!3901746 () Bool)

(assert (=> b!6431714 (= res!2643780 e!3901746)))

(declare-fun res!2643784 () Bool)

(assert (=> b!6431714 (=> (not res!2643784) (not e!3901746))))

(assert (=> b!6431714 (= res!2643784 lt!2379575)))

(declare-fun b!6431715 () Bool)

(declare-fun res!2643782 () Bool)

(assert (=> b!6431715 (=> res!2643782 e!3901748)))

(assert (=> b!6431715 (= res!2643782 (not ((_ is ElementMatch!16335) (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun e!3901747 () Bool)

(assert (=> b!6431715 (= e!3901747 e!3901748)))

(declare-fun b!6431716 () Bool)

(declare-fun e!3901751 () Bool)

(assert (=> b!6431716 (= e!3901748 e!3901751)))

(declare-fun res!2643785 () Bool)

(assert (=> b!6431716 (=> (not res!2643785) (not e!3901751))))

(assert (=> b!6431716 (= res!2643785 (not lt!2379575))))

(declare-fun b!6431717 () Bool)

(declare-fun res!2643783 () Bool)

(assert (=> b!6431717 (=> res!2643783 e!3901749)))

(assert (=> b!6431717 (= res!2643783 (not (isEmpty!37350 (tail!12246 (_1!36617 (get!22586 lt!2379537))))))))

(declare-fun b!6431718 () Bool)

(assert (=> b!6431718 (= e!3901745 (nullable!6328 (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6431719 () Bool)

(assert (=> b!6431719 (= e!3901750 e!3901747)))

(declare-fun c!1175483 () Bool)

(assert (=> b!6431719 (= c!1175483 ((_ is EmptyLang!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6431720 () Bool)

(declare-fun call!553255 () Bool)

(assert (=> b!6431720 (= e!3901750 (= lt!2379575 call!553255))))

(declare-fun b!6431721 () Bool)

(assert (=> b!6431721 (= e!3901747 (not lt!2379575))))

(declare-fun b!6431722 () Bool)

(declare-fun res!2643786 () Bool)

(assert (=> b!6431722 (=> (not res!2643786) (not e!3901746))))

(assert (=> b!6431722 (= res!2643786 (isEmpty!37350 (tail!12246 (_1!36617 (get!22586 lt!2379537)))))))

(declare-fun b!6431723 () Bool)

(assert (=> b!6431723 (= e!3901751 e!3901749)))

(declare-fun res!2643779 () Bool)

(assert (=> b!6431723 (=> res!2643779 e!3901749)))

(assert (=> b!6431723 (= res!2643779 call!553255)))

(declare-fun b!6431724 () Bool)

(assert (=> b!6431724 (= e!3901746 (= (head!13161 (_1!36617 (get!22586 lt!2379537))) (c!1175066 (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun bm!553250 () Bool)

(assert (=> bm!553250 (= call!553255 (isEmpty!37350 (_1!36617 (get!22586 lt!2379537))))))

(declare-fun b!6431725 () Bool)

(declare-fun res!2643781 () Bool)

(assert (=> b!6431725 (=> (not res!2643781) (not e!3901746))))

(assert (=> b!6431725 (= res!2643781 (not call!553255))))

(assert (= (and d!2016181 c!1175485) b!6431718))

(assert (= (and d!2016181 (not c!1175485)) b!6431713))

(assert (= (and d!2016181 c!1175484) b!6431720))

(assert (= (and d!2016181 (not c!1175484)) b!6431719))

(assert (= (and b!6431719 c!1175483) b!6431721))

(assert (= (and b!6431719 (not c!1175483)) b!6431715))

(assert (= (and b!6431715 (not res!2643782)) b!6431714))

(assert (= (and b!6431714 res!2643784) b!6431725))

(assert (= (and b!6431725 res!2643781) b!6431722))

(assert (= (and b!6431722 res!2643786) b!6431724))

(assert (= (and b!6431714 (not res!2643780)) b!6431716))

(assert (= (and b!6431716 res!2643785) b!6431723))

(assert (= (and b!6431723 (not res!2643779)) b!6431717))

(assert (= (and b!6431717 (not res!2643783)) b!6431712))

(assert (= (or b!6431720 b!6431725 b!6431723) bm!553250))

(declare-fun m!7225380 () Bool)

(assert (=> d!2016181 m!7225380))

(assert (=> d!2016181 m!7224678))

(declare-fun m!7225382 () Bool)

(assert (=> b!6431712 m!7225382))

(declare-fun m!7225384 () Bool)

(assert (=> b!6431722 m!7225384))

(assert (=> b!6431722 m!7225384))

(declare-fun m!7225386 () Bool)

(assert (=> b!6431722 m!7225386))

(assert (=> b!6431717 m!7225384))

(assert (=> b!6431717 m!7225384))

(assert (=> b!6431717 m!7225386))

(assert (=> b!6431724 m!7225382))

(assert (=> bm!553250 m!7225380))

(assert (=> b!6431718 m!7224686))

(assert (=> b!6431713 m!7225382))

(assert (=> b!6431713 m!7225382))

(declare-fun m!7225388 () Bool)

(assert (=> b!6431713 m!7225388))

(assert (=> b!6431713 m!7225384))

(assert (=> b!6431713 m!7225388))

(assert (=> b!6431713 m!7225384))

(declare-fun m!7225390 () Bool)

(assert (=> b!6431713 m!7225390))

(assert (=> b!6431129 d!2016181))

(assert (=> b!6431129 d!2015949))

(declare-fun d!2016183 () Bool)

(declare-fun c!1175486 () Bool)

(assert (=> d!2016183 (= c!1175486 ((_ is Nil!65180) lt!2379532))))

(declare-fun e!3901754 () (InoxSet C!32940))

(assert (=> d!2016183 (= (content!12384 lt!2379532) e!3901754)))

(declare-fun b!6431728 () Bool)

(assert (=> b!6431728 (= e!3901754 ((as const (Array C!32940 Bool)) false))))

(declare-fun b!6431729 () Bool)

(assert (=> b!6431729 (= e!3901754 ((_ map or) (store ((as const (Array C!32940 Bool)) false) (h!71628 lt!2379532) true) (content!12384 (t!378920 lt!2379532))))))

(assert (= (and d!2016183 c!1175486) b!6431728))

(assert (= (and d!2016183 (not c!1175486)) b!6431729))

(declare-fun m!7225392 () Bool)

(assert (=> b!6431729 m!7225392))

(declare-fun m!7225394 () Bool)

(assert (=> b!6431729 m!7225394))

(assert (=> d!2015875 d!2016183))

(declare-fun d!2016185 () Bool)

(declare-fun c!1175487 () Bool)

(assert (=> d!2016185 (= c!1175487 ((_ is Nil!65180) (_1!36617 lt!2379368)))))

(declare-fun e!3901755 () (InoxSet C!32940))

(assert (=> d!2016185 (= (content!12384 (_1!36617 lt!2379368)) e!3901755)))

(declare-fun b!6431730 () Bool)

(assert (=> b!6431730 (= e!3901755 ((as const (Array C!32940 Bool)) false))))

(declare-fun b!6431731 () Bool)

(assert (=> b!6431731 (= e!3901755 ((_ map or) (store ((as const (Array C!32940 Bool)) false) (h!71628 (_1!36617 lt!2379368)) true) (content!12384 (t!378920 (_1!36617 lt!2379368)))))))

(assert (= (and d!2016185 c!1175487) b!6431730))

(assert (= (and d!2016185 (not c!1175487)) b!6431731))

(declare-fun m!7225396 () Bool)

(assert (=> b!6431731 m!7225396))

(assert (=> b!6431731 m!7225228))

(assert (=> d!2015875 d!2016185))

(declare-fun d!2016187 () Bool)

(declare-fun c!1175488 () Bool)

(assert (=> d!2016187 (= c!1175488 ((_ is Nil!65180) (_2!36617 lt!2379368)))))

(declare-fun e!3901756 () (InoxSet C!32940))

(assert (=> d!2016187 (= (content!12384 (_2!36617 lt!2379368)) e!3901756)))

(declare-fun b!6431732 () Bool)

(assert (=> b!6431732 (= e!3901756 ((as const (Array C!32940 Bool)) false))))

(declare-fun b!6431733 () Bool)

(assert (=> b!6431733 (= e!3901756 ((_ map or) (store ((as const (Array C!32940 Bool)) false) (h!71628 (_2!36617 lt!2379368)) true) (content!12384 (t!378920 (_2!36617 lt!2379368)))))))

(assert (= (and d!2016187 c!1175488) b!6431732))

(assert (= (and d!2016187 (not c!1175488)) b!6431733))

(declare-fun m!7225398 () Bool)

(assert (=> b!6431733 m!7225398))

(declare-fun m!7225400 () Bool)

(assert (=> b!6431733 m!7225400))

(assert (=> d!2015875 d!2016187))

(declare-fun d!2016189 () Bool)

(assert (=> d!2016189 true))

(assert (=> d!2016189 true))

(declare-fun res!2643789 () Bool)

(assert (=> d!2016189 (= (choose!47830 lambda!355715) res!2643789)))

(assert (=> d!2015827 d!2016189))

(declare-fun d!2016191 () Bool)

(assert (=> d!2016191 (= (isEmpty!37350 (tail!12246 lt!2379356)) ((_ is Nil!65180) (tail!12246 lt!2379356)))))

(assert (=> b!6430408 d!2016191))

(declare-fun d!2016193 () Bool)

(assert (=> d!2016193 (= (tail!12246 lt!2379356) (t!378920 lt!2379356))))

(assert (=> b!6430408 d!2016193))

(declare-fun d!2016195 () Bool)

(declare-fun e!3901762 () Bool)

(assert (=> d!2016195 e!3901762))

(declare-fun c!1175490 () Bool)

(assert (=> d!2016195 (= c!1175490 ((_ is EmptyExpr!16335) lt!2379353))))

(declare-fun lt!2379576 () Bool)

(declare-fun e!3901757 () Bool)

(assert (=> d!2016195 (= lt!2379576 e!3901757)))

(declare-fun c!1175491 () Bool)

(assert (=> d!2016195 (= c!1175491 (isEmpty!37350 (_1!36617 (get!22586 lt!2379531))))))

(assert (=> d!2016195 (validRegex!8071 lt!2379353)))

(assert (=> d!2016195 (= (matchR!8518 lt!2379353 (_1!36617 (get!22586 lt!2379531))) lt!2379576)))

(declare-fun b!6431734 () Bool)

(declare-fun e!3901761 () Bool)

(assert (=> b!6431734 (= e!3901761 (not (= (head!13161 (_1!36617 (get!22586 lt!2379531))) (c!1175066 lt!2379353))))))

(declare-fun b!6431735 () Bool)

(assert (=> b!6431735 (= e!3901757 (matchR!8518 (derivativeStep!5039 lt!2379353 (head!13161 (_1!36617 (get!22586 lt!2379531)))) (tail!12246 (_1!36617 (get!22586 lt!2379531)))))))

(declare-fun b!6431736 () Bool)

(declare-fun res!2643791 () Bool)

(declare-fun e!3901760 () Bool)

(assert (=> b!6431736 (=> res!2643791 e!3901760)))

(declare-fun e!3901758 () Bool)

(assert (=> b!6431736 (= res!2643791 e!3901758)))

(declare-fun res!2643795 () Bool)

(assert (=> b!6431736 (=> (not res!2643795) (not e!3901758))))

(assert (=> b!6431736 (= res!2643795 lt!2379576)))

(declare-fun b!6431737 () Bool)

(declare-fun res!2643793 () Bool)

(assert (=> b!6431737 (=> res!2643793 e!3901760)))

(assert (=> b!6431737 (= res!2643793 (not ((_ is ElementMatch!16335) lt!2379353)))))

(declare-fun e!3901759 () Bool)

(assert (=> b!6431737 (= e!3901759 e!3901760)))

(declare-fun b!6431738 () Bool)

(declare-fun e!3901763 () Bool)

(assert (=> b!6431738 (= e!3901760 e!3901763)))

(declare-fun res!2643796 () Bool)

(assert (=> b!6431738 (=> (not res!2643796) (not e!3901763))))

(assert (=> b!6431738 (= res!2643796 (not lt!2379576))))

(declare-fun b!6431739 () Bool)

(declare-fun res!2643794 () Bool)

(assert (=> b!6431739 (=> res!2643794 e!3901761)))

(assert (=> b!6431739 (= res!2643794 (not (isEmpty!37350 (tail!12246 (_1!36617 (get!22586 lt!2379531))))))))

(declare-fun b!6431740 () Bool)

(assert (=> b!6431740 (= e!3901757 (nullable!6328 lt!2379353))))

(declare-fun b!6431741 () Bool)

(assert (=> b!6431741 (= e!3901762 e!3901759)))

(declare-fun c!1175489 () Bool)

(assert (=> b!6431741 (= c!1175489 ((_ is EmptyLang!16335) lt!2379353))))

(declare-fun b!6431742 () Bool)

(declare-fun call!553256 () Bool)

(assert (=> b!6431742 (= e!3901762 (= lt!2379576 call!553256))))

(declare-fun b!6431743 () Bool)

(assert (=> b!6431743 (= e!3901759 (not lt!2379576))))

(declare-fun b!6431744 () Bool)

(declare-fun res!2643797 () Bool)

(assert (=> b!6431744 (=> (not res!2643797) (not e!3901758))))

(assert (=> b!6431744 (= res!2643797 (isEmpty!37350 (tail!12246 (_1!36617 (get!22586 lt!2379531)))))))

(declare-fun b!6431745 () Bool)

(assert (=> b!6431745 (= e!3901763 e!3901761)))

(declare-fun res!2643790 () Bool)

(assert (=> b!6431745 (=> res!2643790 e!3901761)))

(assert (=> b!6431745 (= res!2643790 call!553256)))

(declare-fun b!6431746 () Bool)

(assert (=> b!6431746 (= e!3901758 (= (head!13161 (_1!36617 (get!22586 lt!2379531))) (c!1175066 lt!2379353)))))

(declare-fun bm!553251 () Bool)

(assert (=> bm!553251 (= call!553256 (isEmpty!37350 (_1!36617 (get!22586 lt!2379531))))))

(declare-fun b!6431747 () Bool)

(declare-fun res!2643792 () Bool)

(assert (=> b!6431747 (=> (not res!2643792) (not e!3901758))))

(assert (=> b!6431747 (= res!2643792 (not call!553256))))

(assert (= (and d!2016195 c!1175491) b!6431740))

(assert (= (and d!2016195 (not c!1175491)) b!6431735))

(assert (= (and d!2016195 c!1175490) b!6431742))

(assert (= (and d!2016195 (not c!1175490)) b!6431741))

(assert (= (and b!6431741 c!1175489) b!6431743))

(assert (= (and b!6431741 (not c!1175489)) b!6431737))

(assert (= (and b!6431737 (not res!2643793)) b!6431736))

(assert (= (and b!6431736 res!2643795) b!6431747))

(assert (= (and b!6431747 res!2643792) b!6431744))

(assert (= (and b!6431744 res!2643797) b!6431746))

(assert (= (and b!6431736 (not res!2643791)) b!6431738))

(assert (= (and b!6431738 res!2643796) b!6431745))

(assert (= (and b!6431745 (not res!2643790)) b!6431739))

(assert (= (and b!6431739 (not res!2643794)) b!6431734))

(assert (= (or b!6431742 b!6431747 b!6431745) bm!553251))

(declare-fun m!7225402 () Bool)

(assert (=> d!2016195 m!7225402))

(assert (=> d!2016195 m!7223958))

(declare-fun m!7225404 () Bool)

(assert (=> b!6431734 m!7225404))

(declare-fun m!7225406 () Bool)

(assert (=> b!6431744 m!7225406))

(assert (=> b!6431744 m!7225406))

(declare-fun m!7225408 () Bool)

(assert (=> b!6431744 m!7225408))

(assert (=> b!6431739 m!7225406))

(assert (=> b!6431739 m!7225406))

(assert (=> b!6431739 m!7225408))

(assert (=> b!6431746 m!7225404))

(assert (=> bm!553251 m!7225402))

(assert (=> b!6431740 m!7224052))

(assert (=> b!6431735 m!7225404))

(assert (=> b!6431735 m!7225404))

(declare-fun m!7225412 () Bool)

(assert (=> b!6431735 m!7225412))

(assert (=> b!6431735 m!7225406))

(assert (=> b!6431735 m!7225412))

(assert (=> b!6431735 m!7225406))

(declare-fun m!7225414 () Bool)

(assert (=> b!6431735 m!7225414))

(assert (=> b!6431116 d!2016195))

(assert (=> b!6431116 d!2015945))

(declare-fun d!2016199 () Bool)

(assert (=> d!2016199 (= (head!13161 (_1!36617 lt!2379342)) (h!71628 (_1!36617 lt!2379342)))))

(assert (=> b!6431047 d!2016199))

(declare-fun b!6431760 () Bool)

(declare-fun e!3901771 () (InoxSet Context!11438))

(declare-fun call!553266 () (InoxSet Context!11438))

(declare-fun call!553268 () (InoxSet Context!11438))

(assert (=> b!6431760 (= e!3901771 ((_ map or) call!553266 call!553268))))

(declare-fun c!1175497 () Bool)

(declare-fun call!553267 () List!65305)

(declare-fun bm!553258 () Bool)

(assert (=> bm!553258 (= call!553266 (derivationStepZipperDown!1583 (ite c!1175497 (regTwo!33183 (h!71629 (exprs!6219 lt!2379364))) (regOne!33182 (h!71629 (exprs!6219 lt!2379364)))) (ite c!1175497 (Context!11439 (t!378921 (exprs!6219 lt!2379364))) (Context!11439 call!553267)) (h!71628 s!2326)))))

(declare-fun bm!553259 () Bool)

(declare-fun call!553265 () (InoxSet Context!11438))

(assert (=> bm!553259 (= call!553265 call!553268)))

(declare-fun b!6431761 () Bool)

(declare-fun c!1175498 () Bool)

(declare-fun e!3901774 () Bool)

(assert (=> b!6431761 (= c!1175498 e!3901774)))

(declare-fun res!2643800 () Bool)

(assert (=> b!6431761 (=> (not res!2643800) (not e!3901774))))

(assert (=> b!6431761 (= res!2643800 ((_ is Concat!25180) (h!71629 (exprs!6219 lt!2379364))))))

(declare-fun e!3901775 () (InoxSet Context!11438))

(assert (=> b!6431761 (= e!3901775 e!3901771)))

(declare-fun b!6431762 () Bool)

(declare-fun call!553263 () (InoxSet Context!11438))

(assert (=> b!6431762 (= e!3901775 ((_ map or) call!553263 call!553266))))

(declare-fun bm!553260 () Bool)

(assert (=> bm!553260 (= call!553268 call!553263)))

(declare-fun b!6431763 () Bool)

(declare-fun e!3901776 () (InoxSet Context!11438))

(assert (=> b!6431763 (= e!3901776 e!3901775)))

(assert (=> b!6431763 (= c!1175497 ((_ is Union!16335) (h!71629 (exprs!6219 lt!2379364))))))

(declare-fun b!6431765 () Bool)

(assert (=> b!6431765 (= e!3901774 (nullable!6328 (regOne!33182 (h!71629 (exprs!6219 lt!2379364)))))))

(declare-fun b!6431766 () Bool)

(declare-fun c!1175501 () Bool)

(assert (=> b!6431766 (= c!1175501 ((_ is Star!16335) (h!71629 (exprs!6219 lt!2379364))))))

(declare-fun e!3901773 () (InoxSet Context!11438))

(declare-fun e!3901772 () (InoxSet Context!11438))

(assert (=> b!6431766 (= e!3901773 e!3901772)))

(declare-fun b!6431767 () Bool)

(assert (=> b!6431767 (= e!3901772 call!553265)))

(declare-fun c!1175500 () Bool)

(declare-fun bm!553261 () Bool)

(declare-fun call!553264 () List!65305)

(assert (=> bm!553261 (= call!553263 (derivationStepZipperDown!1583 (ite c!1175497 (regOne!33183 (h!71629 (exprs!6219 lt!2379364))) (ite c!1175498 (regTwo!33182 (h!71629 (exprs!6219 lt!2379364))) (ite c!1175500 (regOne!33182 (h!71629 (exprs!6219 lt!2379364))) (reg!16664 (h!71629 (exprs!6219 lt!2379364)))))) (ite (or c!1175497 c!1175498) (Context!11439 (t!378921 (exprs!6219 lt!2379364))) (Context!11439 call!553264)) (h!71628 s!2326)))))

(declare-fun b!6431768 () Bool)

(assert (=> b!6431768 (= e!3901771 e!3901773)))

(assert (=> b!6431768 (= c!1175500 ((_ is Concat!25180) (h!71629 (exprs!6219 lt!2379364))))))

(declare-fun b!6431769 () Bool)

(assert (=> b!6431769 (= e!3901776 (store ((as const (Array Context!11438 Bool)) false) (Context!11439 (t!378921 (exprs!6219 lt!2379364))) true))))

(declare-fun b!6431770 () Bool)

(assert (=> b!6431770 (= e!3901772 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2016201 () Bool)

(declare-fun c!1175499 () Bool)

(assert (=> d!2016201 (= c!1175499 (and ((_ is ElementMatch!16335) (h!71629 (exprs!6219 lt!2379364))) (= (c!1175066 (h!71629 (exprs!6219 lt!2379364))) (h!71628 s!2326))))))

(assert (=> d!2016201 (= (derivationStepZipperDown!1583 (h!71629 (exprs!6219 lt!2379364)) (Context!11439 (t!378921 (exprs!6219 lt!2379364))) (h!71628 s!2326)) e!3901776)))

(declare-fun b!6431764 () Bool)

(assert (=> b!6431764 (= e!3901773 call!553265)))

(declare-fun bm!553262 () Bool)

(assert (=> bm!553262 (= call!553264 call!553267)))

(declare-fun bm!553263 () Bool)

(assert (=> bm!553263 (= call!553267 ($colon$colon!2196 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379364)))) (ite (or c!1175498 c!1175500) (regTwo!33182 (h!71629 (exprs!6219 lt!2379364))) (h!71629 (exprs!6219 lt!2379364)))))))

(assert (= (and d!2016201 c!1175499) b!6431769))

(assert (= (and d!2016201 (not c!1175499)) b!6431763))

(assert (= (and b!6431763 c!1175497) b!6431762))

(assert (= (and b!6431763 (not c!1175497)) b!6431761))

(assert (= (and b!6431761 res!2643800) b!6431765))

(assert (= (and b!6431761 c!1175498) b!6431760))

(assert (= (and b!6431761 (not c!1175498)) b!6431768))

(assert (= (and b!6431768 c!1175500) b!6431764))

(assert (= (and b!6431768 (not c!1175500)) b!6431766))

(assert (= (and b!6431766 c!1175501) b!6431767))

(assert (= (and b!6431766 (not c!1175501)) b!6431770))

(assert (= (or b!6431764 b!6431767) bm!553262))

(assert (= (or b!6431764 b!6431767) bm!553259))

(assert (= (or b!6431760 bm!553262) bm!553263))

(assert (= (or b!6431760 bm!553259) bm!553260))

(assert (= (or b!6431762 b!6431760) bm!553258))

(assert (= (or b!6431762 bm!553260) bm!553261))

(declare-fun m!7225416 () Bool)

(assert (=> b!6431769 m!7225416))

(declare-fun m!7225418 () Bool)

(assert (=> b!6431765 m!7225418))

(declare-fun m!7225420 () Bool)

(assert (=> bm!553263 m!7225420))

(declare-fun m!7225422 () Bool)

(assert (=> bm!553258 m!7225422))

(declare-fun m!7225424 () Bool)

(assert (=> bm!553261 m!7225424))

(assert (=> bm!553157 d!2016201))

(declare-fun d!2016203 () Bool)

(declare-fun lt!2379579 () Int)

(assert (=> d!2016203 (>= lt!2379579 0)))

(declare-fun e!3901779 () Int)

(assert (=> d!2016203 (= lt!2379579 e!3901779)))

(declare-fun c!1175504 () Bool)

(assert (=> d!2016203 (= c!1175504 ((_ is Nil!65180) lt!2379532))))

(assert (=> d!2016203 (= (size!40394 lt!2379532) lt!2379579)))

(declare-fun b!6431775 () Bool)

(assert (=> b!6431775 (= e!3901779 0)))

(declare-fun b!6431776 () Bool)

(assert (=> b!6431776 (= e!3901779 (+ 1 (size!40394 (t!378920 lt!2379532))))))

(assert (= (and d!2016203 c!1175504) b!6431775))

(assert (= (and d!2016203 (not c!1175504)) b!6431776))

(declare-fun m!7225438 () Bool)

(assert (=> b!6431776 m!7225438))

(assert (=> b!6431120 d!2016203))

(declare-fun d!2016215 () Bool)

(declare-fun lt!2379580 () Int)

(assert (=> d!2016215 (>= lt!2379580 0)))

(declare-fun e!3901780 () Int)

(assert (=> d!2016215 (= lt!2379580 e!3901780)))

(declare-fun c!1175505 () Bool)

(assert (=> d!2016215 (= c!1175505 ((_ is Nil!65180) (_1!36617 lt!2379368)))))

(assert (=> d!2016215 (= (size!40394 (_1!36617 lt!2379368)) lt!2379580)))

(declare-fun b!6431777 () Bool)

(assert (=> b!6431777 (= e!3901780 0)))

(declare-fun b!6431778 () Bool)

(assert (=> b!6431778 (= e!3901780 (+ 1 (size!40394 (t!378920 (_1!36617 lt!2379368)))))))

(assert (= (and d!2016215 c!1175505) b!6431777))

(assert (= (and d!2016215 (not c!1175505)) b!6431778))

(assert (=> b!6431778 m!7225224))

(assert (=> b!6431120 d!2016215))

(declare-fun d!2016217 () Bool)

(declare-fun lt!2379581 () Int)

(assert (=> d!2016217 (>= lt!2379581 0)))

(declare-fun e!3901781 () Int)

(assert (=> d!2016217 (= lt!2379581 e!3901781)))

(declare-fun c!1175506 () Bool)

(assert (=> d!2016217 (= c!1175506 ((_ is Nil!65180) (_2!36617 lt!2379368)))))

(assert (=> d!2016217 (= (size!40394 (_2!36617 lt!2379368)) lt!2379581)))

(declare-fun b!6431779 () Bool)

(assert (=> b!6431779 (= e!3901781 0)))

(declare-fun b!6431780 () Bool)

(assert (=> b!6431780 (= e!3901781 (+ 1 (size!40394 (t!378920 (_2!36617 lt!2379368)))))))

(assert (= (and d!2016217 c!1175506) b!6431779))

(assert (= (and d!2016217 (not c!1175506)) b!6431780))

(declare-fun m!7225440 () Bool)

(assert (=> b!6431780 m!7225440))

(assert (=> b!6431120 d!2016217))

(assert (=> b!6430833 d!2016061))

(assert (=> b!6430833 d!2015973))

(declare-fun b!6431807 () Bool)

(declare-fun e!3901804 () Bool)

(declare-fun e!3901806 () Bool)

(assert (=> b!6431807 (= e!3901804 e!3901806)))

(declare-fun res!2643817 () Bool)

(declare-fun call!553274 () Bool)

(assert (=> b!6431807 (= res!2643817 call!553274)))

(assert (=> b!6431807 (=> res!2643817 e!3901806)))

(declare-fun b!6431808 () Bool)

(declare-fun call!553273 () Bool)

(assert (=> b!6431808 (= e!3901806 call!553273)))

(declare-fun b!6431809 () Bool)

(declare-fun e!3901802 () Bool)

(assert (=> b!6431809 (= e!3901804 e!3901802)))

(declare-fun res!2643814 () Bool)

(assert (=> b!6431809 (= res!2643814 call!553274)))

(assert (=> b!6431809 (=> (not res!2643814) (not e!3901802))))

(declare-fun b!6431810 () Bool)

(declare-fun e!3901801 () Bool)

(declare-fun e!3901805 () Bool)

(assert (=> b!6431810 (= e!3901801 e!3901805)))

(declare-fun res!2643815 () Bool)

(assert (=> b!6431810 (=> res!2643815 e!3901805)))

(assert (=> b!6431810 (= res!2643815 ((_ is Star!16335) (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun bm!553268 () Bool)

(declare-fun c!1175514 () Bool)

(assert (=> bm!553268 (= call!553273 (nullable!6328 (ite c!1175514 (regTwo!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))))))

(declare-fun bm!553269 () Bool)

(assert (=> bm!553269 (= call!553274 (nullable!6328 (ite c!1175514 (regOne!33183 (h!71629 (exprs!6219 (h!71630 zl!343)))) (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))))))))

(declare-fun b!6431811 () Bool)

(assert (=> b!6431811 (= e!3901802 call!553273)))

(declare-fun b!6431812 () Bool)

(declare-fun e!3901803 () Bool)

(assert (=> b!6431812 (= e!3901803 e!3901801)))

(declare-fun res!2643813 () Bool)

(assert (=> b!6431812 (=> (not res!2643813) (not e!3901801))))

(assert (=> b!6431812 (= res!2643813 (and (not ((_ is EmptyLang!16335) (h!71629 (exprs!6219 (h!71630 zl!343))))) (not ((_ is ElementMatch!16335) (h!71629 (exprs!6219 (h!71630 zl!343)))))))))

(declare-fun b!6431813 () Bool)

(assert (=> b!6431813 (= e!3901805 e!3901804)))

(assert (=> b!6431813 (= c!1175514 ((_ is Union!16335) (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun d!2016219 () Bool)

(declare-fun res!2643816 () Bool)

(assert (=> d!2016219 (=> res!2643816 e!3901803)))

(assert (=> d!2016219 (= res!2643816 ((_ is EmptyExpr!16335) (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(assert (=> d!2016219 (= (nullableFct!2274 (h!71629 (exprs!6219 (h!71630 zl!343)))) e!3901803)))

(assert (= (and d!2016219 (not res!2643816)) b!6431812))

(assert (= (and b!6431812 res!2643813) b!6431810))

(assert (= (and b!6431810 (not res!2643815)) b!6431813))

(assert (= (and b!6431813 c!1175514) b!6431807))

(assert (= (and b!6431813 (not c!1175514)) b!6431809))

(assert (= (and b!6431807 (not res!2643817)) b!6431808))

(assert (= (and b!6431809 res!2643814) b!6431811))

(assert (= (or b!6431808 b!6431811) bm!553268))

(assert (= (or b!6431807 b!6431809) bm!553269))

(declare-fun m!7225466 () Bool)

(assert (=> bm!553268 m!7225466))

(declare-fun m!7225468 () Bool)

(assert (=> bm!553269 m!7225468))

(assert (=> d!2015659 d!2016219))

(declare-fun d!2016227 () Bool)

(assert (=> d!2016227 (= (nullable!6328 r!7292) (nullableFct!2274 r!7292))))

(declare-fun bs!1617786 () Bool)

(assert (= bs!1617786 d!2016227))

(declare-fun m!7225470 () Bool)

(assert (=> bs!1617786 m!7225470))

(assert (=> b!6430834 d!2016227))

(declare-fun d!2016229 () Bool)

(declare-fun e!3901812 () Bool)

(assert (=> d!2016229 e!3901812))

(declare-fun c!1175516 () Bool)

(assert (=> d!2016229 (= c!1175516 ((_ is EmptyExpr!16335) (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 lt!2379342)))))))

(declare-fun lt!2379583 () Bool)

(declare-fun e!3901807 () Bool)

(assert (=> d!2016229 (= lt!2379583 e!3901807)))

(declare-fun c!1175517 () Bool)

(assert (=> d!2016229 (= c!1175517 (isEmpty!37350 (tail!12246 (_2!36617 lt!2379342))))))

(assert (=> d!2016229 (validRegex!8071 (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 lt!2379342))))))

(assert (=> d!2016229 (= (matchR!8518 (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 lt!2379342))) (tail!12246 (_2!36617 lt!2379342))) lt!2379583)))

(declare-fun b!6431814 () Bool)

(declare-fun e!3901811 () Bool)

(assert (=> b!6431814 (= e!3901811 (not (= (head!13161 (tail!12246 (_2!36617 lt!2379342))) (c!1175066 (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 lt!2379342)))))))))

(declare-fun b!6431815 () Bool)

(assert (=> b!6431815 (= e!3901807 (matchR!8518 (derivativeStep!5039 (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 lt!2379342))) (head!13161 (tail!12246 (_2!36617 lt!2379342)))) (tail!12246 (tail!12246 (_2!36617 lt!2379342)))))))

(declare-fun b!6431816 () Bool)

(declare-fun res!2643819 () Bool)

(declare-fun e!3901810 () Bool)

(assert (=> b!6431816 (=> res!2643819 e!3901810)))

(declare-fun e!3901808 () Bool)

(assert (=> b!6431816 (= res!2643819 e!3901808)))

(declare-fun res!2643823 () Bool)

(assert (=> b!6431816 (=> (not res!2643823) (not e!3901808))))

(assert (=> b!6431816 (= res!2643823 lt!2379583)))

(declare-fun b!6431817 () Bool)

(declare-fun res!2643821 () Bool)

(assert (=> b!6431817 (=> res!2643821 e!3901810)))

(assert (=> b!6431817 (= res!2643821 (not ((_ is ElementMatch!16335) (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 lt!2379342))))))))

(declare-fun e!3901809 () Bool)

(assert (=> b!6431817 (= e!3901809 e!3901810)))

(declare-fun b!6431818 () Bool)

(declare-fun e!3901813 () Bool)

(assert (=> b!6431818 (= e!3901810 e!3901813)))

(declare-fun res!2643824 () Bool)

(assert (=> b!6431818 (=> (not res!2643824) (not e!3901813))))

(assert (=> b!6431818 (= res!2643824 (not lt!2379583))))

(declare-fun b!6431819 () Bool)

(declare-fun res!2643822 () Bool)

(assert (=> b!6431819 (=> res!2643822 e!3901811)))

(assert (=> b!6431819 (= res!2643822 (not (isEmpty!37350 (tail!12246 (tail!12246 (_2!36617 lt!2379342))))))))

(declare-fun b!6431820 () Bool)

(assert (=> b!6431820 (= e!3901807 (nullable!6328 (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 lt!2379342)))))))

(declare-fun b!6431821 () Bool)

(assert (=> b!6431821 (= e!3901812 e!3901809)))

(declare-fun c!1175515 () Bool)

(assert (=> b!6431821 (= c!1175515 ((_ is EmptyLang!16335) (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 lt!2379342)))))))

(declare-fun b!6431822 () Bool)

(declare-fun call!553275 () Bool)

(assert (=> b!6431822 (= e!3901812 (= lt!2379583 call!553275))))

(declare-fun b!6431823 () Bool)

(assert (=> b!6431823 (= e!3901809 (not lt!2379583))))

(declare-fun b!6431824 () Bool)

(declare-fun res!2643825 () Bool)

(assert (=> b!6431824 (=> (not res!2643825) (not e!3901808))))

(assert (=> b!6431824 (= res!2643825 (isEmpty!37350 (tail!12246 (tail!12246 (_2!36617 lt!2379342)))))))

(declare-fun b!6431825 () Bool)

(assert (=> b!6431825 (= e!3901813 e!3901811)))

(declare-fun res!2643818 () Bool)

(assert (=> b!6431825 (=> res!2643818 e!3901811)))

(assert (=> b!6431825 (= res!2643818 call!553275)))

(declare-fun b!6431826 () Bool)

(assert (=> b!6431826 (= e!3901808 (= (head!13161 (tail!12246 (_2!36617 lt!2379342))) (c!1175066 (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 lt!2379342))))))))

(declare-fun bm!553270 () Bool)

(assert (=> bm!553270 (= call!553275 (isEmpty!37350 (tail!12246 (_2!36617 lt!2379342))))))

(declare-fun b!6431827 () Bool)

(declare-fun res!2643820 () Bool)

(assert (=> b!6431827 (=> (not res!2643820) (not e!3901808))))

(assert (=> b!6431827 (= res!2643820 (not call!553275))))

(assert (= (and d!2016229 c!1175517) b!6431820))

(assert (= (and d!2016229 (not c!1175517)) b!6431815))

(assert (= (and d!2016229 c!1175516) b!6431822))

(assert (= (and d!2016229 (not c!1175516)) b!6431821))

(assert (= (and b!6431821 c!1175515) b!6431823))

(assert (= (and b!6431821 (not c!1175515)) b!6431817))

(assert (= (and b!6431817 (not res!2643821)) b!6431816))

(assert (= (and b!6431816 res!2643823) b!6431827))

(assert (= (and b!6431827 res!2643820) b!6431824))

(assert (= (and b!6431824 res!2643825) b!6431826))

(assert (= (and b!6431816 (not res!2643819)) b!6431818))

(assert (= (and b!6431818 res!2643824) b!6431825))

(assert (= (and b!6431825 (not res!2643818)) b!6431819))

(assert (= (and b!6431819 (not res!2643822)) b!6431814))

(assert (= (or b!6431822 b!6431827 b!6431825) bm!553270))

(assert (=> d!2016229 m!7224492))

(assert (=> d!2016229 m!7224494))

(assert (=> d!2016229 m!7224496))

(declare-fun m!7225474 () Bool)

(assert (=> d!2016229 m!7225474))

(assert (=> b!6431814 m!7224492))

(declare-fun m!7225476 () Bool)

(assert (=> b!6431814 m!7225476))

(assert (=> b!6431824 m!7224492))

(declare-fun m!7225478 () Bool)

(assert (=> b!6431824 m!7225478))

(assert (=> b!6431824 m!7225478))

(declare-fun m!7225480 () Bool)

(assert (=> b!6431824 m!7225480))

(assert (=> b!6431819 m!7224492))

(assert (=> b!6431819 m!7225478))

(assert (=> b!6431819 m!7225478))

(assert (=> b!6431819 m!7225480))

(assert (=> b!6431826 m!7224492))

(assert (=> b!6431826 m!7225476))

(assert (=> bm!553270 m!7224492))

(assert (=> bm!553270 m!7224494))

(assert (=> b!6431820 m!7224496))

(declare-fun m!7225482 () Bool)

(assert (=> b!6431820 m!7225482))

(assert (=> b!6431815 m!7224492))

(assert (=> b!6431815 m!7225476))

(assert (=> b!6431815 m!7224496))

(assert (=> b!6431815 m!7225476))

(declare-fun m!7225484 () Bool)

(assert (=> b!6431815 m!7225484))

(assert (=> b!6431815 m!7224492))

(assert (=> b!6431815 m!7225478))

(assert (=> b!6431815 m!7225484))

(assert (=> b!6431815 m!7225478))

(declare-fun m!7225486 () Bool)

(assert (=> b!6431815 m!7225486))

(assert (=> b!6430868 d!2016229))

(declare-fun b!6431842 () Bool)

(declare-fun e!3901822 () Regex!16335)

(declare-fun e!3901821 () Regex!16335)

(assert (=> b!6431842 (= e!3901822 e!3901821)))

(declare-fun c!1175522 () Bool)

(assert (=> b!6431842 (= c!1175522 ((_ is ElementMatch!16335) lt!2379353))))

(declare-fun b!6431843 () Bool)

(assert (=> b!6431843 (= e!3901821 (ite (= (head!13161 (_2!36617 lt!2379342)) (c!1175066 lt!2379353)) EmptyExpr!16335 EmptyLang!16335))))

(declare-fun call!553280 () Regex!16335)

(declare-fun call!553277 () Regex!16335)

(declare-fun e!3901825 () Regex!16335)

(declare-fun b!6431844 () Bool)

(assert (=> b!6431844 (= e!3901825 (Union!16335 (Concat!25180 call!553277 (regTwo!33182 lt!2379353)) call!553280))))

(declare-fun d!2016233 () Bool)

(declare-fun lt!2379585 () Regex!16335)

(assert (=> d!2016233 (validRegex!8071 lt!2379585)))

(assert (=> d!2016233 (= lt!2379585 e!3901822)))

(declare-fun c!1175524 () Bool)

(assert (=> d!2016233 (= c!1175524 (or ((_ is EmptyExpr!16335) lt!2379353) ((_ is EmptyLang!16335) lt!2379353)))))

(assert (=> d!2016233 (validRegex!8071 lt!2379353)))

(assert (=> d!2016233 (= (derivativeStep!5039 lt!2379353 (head!13161 (_2!36617 lt!2379342))) lt!2379585)))

(declare-fun b!6431845 () Bool)

(declare-fun e!3901824 () Regex!16335)

(declare-fun call!553279 () Regex!16335)

(declare-fun call!553278 () Regex!16335)

(assert (=> b!6431845 (= e!3901824 (Union!16335 call!553279 call!553278))))

(declare-fun bm!553272 () Bool)

(declare-fun c!1175523 () Bool)

(declare-fun c!1175521 () Bool)

(assert (=> bm!553272 (= call!553278 (derivativeStep!5039 (ite c!1175521 (regTwo!33183 lt!2379353) (ite c!1175523 (reg!16664 lt!2379353) (regOne!33182 lt!2379353))) (head!13161 (_2!36617 lt!2379342))))))

(declare-fun b!6431846 () Bool)

(declare-fun e!3901823 () Regex!16335)

(assert (=> b!6431846 (= e!3901824 e!3901823)))

(assert (=> b!6431846 (= c!1175523 ((_ is Star!16335) lt!2379353))))

(declare-fun b!6431847 () Bool)

(assert (=> b!6431847 (= e!3901822 EmptyLang!16335)))

(declare-fun b!6431848 () Bool)

(assert (=> b!6431848 (= c!1175521 ((_ is Union!16335) lt!2379353))))

(assert (=> b!6431848 (= e!3901821 e!3901824)))

(declare-fun bm!553273 () Bool)

(assert (=> bm!553273 (= call!553280 call!553279)))

(declare-fun b!6431849 () Bool)

(declare-fun c!1175525 () Bool)

(assert (=> b!6431849 (= c!1175525 (nullable!6328 (regOne!33182 lt!2379353)))))

(assert (=> b!6431849 (= e!3901823 e!3901825)))

(declare-fun bm!553274 () Bool)

(assert (=> bm!553274 (= call!553277 call!553278)))

(declare-fun bm!553275 () Bool)

(assert (=> bm!553275 (= call!553279 (derivativeStep!5039 (ite c!1175521 (regOne!33183 lt!2379353) (ite c!1175525 (regTwo!33182 lt!2379353) (regOne!33182 lt!2379353))) (head!13161 (_2!36617 lt!2379342))))))

(declare-fun b!6431850 () Bool)

(assert (=> b!6431850 (= e!3901823 (Concat!25180 call!553277 lt!2379353))))

(declare-fun b!6431851 () Bool)

(assert (=> b!6431851 (= e!3901825 (Union!16335 (Concat!25180 call!553280 (regTwo!33182 lt!2379353)) EmptyLang!16335))))

(assert (= (and d!2016233 c!1175524) b!6431847))

(assert (= (and d!2016233 (not c!1175524)) b!6431842))

(assert (= (and b!6431842 c!1175522) b!6431843))

(assert (= (and b!6431842 (not c!1175522)) b!6431848))

(assert (= (and b!6431848 c!1175521) b!6431845))

(assert (= (and b!6431848 (not c!1175521)) b!6431846))

(assert (= (and b!6431846 c!1175523) b!6431850))

(assert (= (and b!6431846 (not c!1175523)) b!6431849))

(assert (= (and b!6431849 c!1175525) b!6431844))

(assert (= (and b!6431849 (not c!1175525)) b!6431851))

(assert (= (or b!6431844 b!6431851) bm!553273))

(assert (= (or b!6431850 b!6431844) bm!553274))

(assert (= (or b!6431845 bm!553274) bm!553272))

(assert (= (or b!6431845 bm!553273) bm!553275))

(declare-fun m!7225496 () Bool)

(assert (=> d!2016233 m!7225496))

(assert (=> d!2016233 m!7223958))

(assert (=> bm!553272 m!7224490))

(declare-fun m!7225498 () Bool)

(assert (=> bm!553272 m!7225498))

(assert (=> b!6431849 m!7225058))

(assert (=> bm!553275 m!7224490))

(declare-fun m!7225502 () Bool)

(assert (=> bm!553275 m!7225502))

(assert (=> b!6430868 d!2016233))

(assert (=> b!6430868 d!2016117))

(declare-fun d!2016235 () Bool)

(assert (=> d!2016235 (= (tail!12246 (_2!36617 lt!2379342)) (t!378920 (_2!36617 lt!2379342)))))

(assert (=> b!6430868 d!2016235))

(assert (=> bm!553147 d!2015697))

(declare-fun bs!1617788 () Bool)

(declare-fun b!6431855 () Bool)

(assert (= bs!1617788 (and b!6431855 d!2015887)))

(declare-fun lambda!355849 () Int)

(assert (=> bs!1617788 (not (= lambda!355849 lambda!355804))))

(declare-fun bs!1617789 () Bool)

(assert (= bs!1617789 (and b!6431855 b!6430115)))

(assert (=> bs!1617789 (not (= lambda!355849 lambda!355717))))

(declare-fun bs!1617790 () Bool)

(assert (= bs!1617790 (and b!6431855 d!2016163)))

(assert (=> bs!1617790 (not (= lambda!355849 lambda!355844))))

(declare-fun bs!1617791 () Bool)

(assert (= bs!1617791 (and b!6431855 b!6430094)))

(assert (=> bs!1617791 (not (= lambda!355849 lambda!355719))))

(assert (=> bs!1617791 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regTwo!33183 r!7292)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33183 r!7292) lt!2379353)) (= lambda!355849 lambda!355720))))

(declare-fun bs!1617792 () Bool)

(assert (= bs!1617792 (and b!6431855 d!2015991)))

(assert (=> bs!1617792 (not (= lambda!355849 lambda!355829))))

(declare-fun bs!1617793 () Bool)

(assert (= bs!1617793 (and b!6431855 d!2015881)))

(assert (=> bs!1617793 (not (= lambda!355849 lambda!355802))))

(assert (=> bs!1617792 (not (= lambda!355849 lambda!355828))))

(declare-fun bs!1617794 () Bool)

(assert (= bs!1617794 (and b!6431855 d!2015957)))

(assert (=> bs!1617794 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regTwo!33183 r!7292)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33183 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355849 lambda!355823))))

(declare-fun bs!1617795 () Bool)

(assert (= bs!1617795 (and b!6431855 d!2015895)))

(assert (=> bs!1617795 (not (= lambda!355849 lambda!355811))))

(declare-fun bs!1617796 () Bool)

(assert (= bs!1617796 (and b!6431855 b!6430859)))

(assert (=> bs!1617796 (= (and (= (reg!16664 (regTwo!33183 r!7292)) (reg!16664 lt!2379346)) (= (regTwo!33183 r!7292) lt!2379346)) (= lambda!355849 lambda!355779))))

(declare-fun bs!1617797 () Bool)

(assert (= bs!1617797 (and b!6431855 d!2015879)))

(assert (=> bs!1617797 (not (= lambda!355849 lambda!355801))))

(declare-fun bs!1617798 () Bool)

(assert (= bs!1617798 (and b!6431855 d!2016021)))

(assert (=> bs!1617798 (not (= lambda!355849 lambda!355832))))

(declare-fun bs!1617799 () Bool)

(assert (= bs!1617799 (and b!6431855 d!2015889)))

(assert (=> bs!1617799 (not (= lambda!355849 lambda!355806))))

(assert (=> bs!1617793 (not (= lambda!355849 lambda!355803))))

(declare-fun bs!1617800 () Bool)

(assert (= bs!1617800 (and b!6431855 b!6430810)))

(assert (=> bs!1617800 (= (and (= (reg!16664 (regTwo!33183 r!7292)) (reg!16664 r!7292)) (= (regTwo!33183 r!7292) r!7292)) (= lambda!355849 lambda!355772))))

(declare-fun bs!1617801 () Bool)

(assert (= bs!1617801 (and b!6431855 b!6431148)))

(assert (=> bs!1617801 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regTwo!33183 r!7292)) (reg!16664 lt!2379353)) (= (regTwo!33183 r!7292) lt!2379353)) (= lambda!355849 lambda!355813))))

(assert (=> bs!1617791 (not (= lambda!355849 lambda!355721))))

(declare-fun bs!1617802 () Bool)

(assert (= bs!1617802 (and b!6431855 d!2015793)))

(assert (=> bs!1617802 (not (= lambda!355849 lambda!355786))))

(declare-fun bs!1617803 () Bool)

(assert (= bs!1617803 (and b!6431855 b!6431154)))

(assert (=> bs!1617803 (not (= lambda!355849 lambda!355814))))

(declare-fun bs!1617804 () Bool)

(assert (= bs!1617804 (and b!6431855 b!6430128)))

(assert (=> bs!1617804 (not (= lambda!355849 lambda!355715))))

(declare-fun bs!1617805 () Bool)

(assert (= bs!1617805 (and b!6431855 b!6430816)))

(assert (=> bs!1617805 (not (= lambda!355849 lambda!355773))))

(assert (=> bs!1617795 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regTwo!33183 r!7292)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33183 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355849 lambda!355812))))

(declare-fun bs!1617806 () Bool)

(assert (= bs!1617806 (and b!6431855 b!6430865)))

(assert (=> bs!1617806 (not (= lambda!355849 lambda!355780))))

(assert (=> bs!1617799 (not (= lambda!355849 lambda!355805))))

(assert (=> bs!1617794 (not (= lambda!355849 lambda!355822))))

(assert (=> bs!1617789 (not (= lambda!355849 lambda!355718))))

(assert (=> bs!1617804 (not (= lambda!355849 lambda!355714))))

(declare-fun bs!1617807 () Bool)

(assert (= bs!1617807 (and b!6431855 d!2015829)))

(assert (=> bs!1617807 (not (= lambda!355849 lambda!355796))))

(assert (=> bs!1617807 (not (= lambda!355849 lambda!355797))))

(assert (=> b!6431855 true))

(assert (=> b!6431855 true))

(declare-fun bs!1617808 () Bool)

(declare-fun b!6431861 () Bool)

(assert (= bs!1617808 (and b!6431861 d!2015887)))

(declare-fun lambda!355850 () Int)

(assert (=> bs!1617808 (not (= lambda!355850 lambda!355804))))

(declare-fun bs!1617809 () Bool)

(assert (= bs!1617809 (and b!6431861 b!6430115)))

(assert (=> bs!1617809 (not (= lambda!355850 lambda!355717))))

(declare-fun bs!1617810 () Bool)

(assert (= bs!1617810 (and b!6431861 d!2016163)))

(assert (=> bs!1617810 (not (= lambda!355850 lambda!355844))))

(declare-fun bs!1617811 () Bool)

(assert (= bs!1617811 (and b!6431861 b!6430094)))

(assert (=> bs!1617811 (not (= lambda!355850 lambda!355719))))

(assert (=> bs!1617811 (not (= lambda!355850 lambda!355720))))

(declare-fun bs!1617812 () Bool)

(assert (= bs!1617812 (and b!6431861 d!2015881)))

(assert (=> bs!1617812 (not (= lambda!355850 lambda!355802))))

(declare-fun bs!1617813 () Bool)

(assert (= bs!1617813 (and b!6431861 d!2015991)))

(assert (=> bs!1617813 (not (= lambda!355850 lambda!355828))))

(declare-fun bs!1617814 () Bool)

(assert (= bs!1617814 (and b!6431861 d!2015957)))

(assert (=> bs!1617814 (not (= lambda!355850 lambda!355823))))

(declare-fun bs!1617815 () Bool)

(assert (= bs!1617815 (and b!6431861 d!2015895)))

(assert (=> bs!1617815 (not (= lambda!355850 lambda!355811))))

(declare-fun bs!1617816 () Bool)

(assert (= bs!1617816 (and b!6431861 b!6430859)))

(assert (=> bs!1617816 (not (= lambda!355850 lambda!355779))))

(declare-fun bs!1617817 () Bool)

(assert (= bs!1617817 (and b!6431861 d!2015879)))

(assert (=> bs!1617817 (not (= lambda!355850 lambda!355801))))

(declare-fun bs!1617818 () Bool)

(assert (= bs!1617818 (and b!6431861 d!2016021)))

(assert (=> bs!1617818 (not (= lambda!355850 lambda!355832))))

(declare-fun bs!1617819 () Bool)

(assert (= bs!1617819 (and b!6431861 d!2015889)))

(assert (=> bs!1617819 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regTwo!33183 r!7292)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regTwo!33183 r!7292)) lt!2379353)) (= lambda!355850 lambda!355806))))

(assert (=> bs!1617812 (= (and (= (regOne!33182 (regTwo!33183 r!7292)) lt!2379353) (= (regTwo!33182 (regTwo!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355850 lambda!355803))))

(declare-fun bs!1617820 () Bool)

(assert (= bs!1617820 (and b!6431861 b!6430810)))

(assert (=> bs!1617820 (not (= lambda!355850 lambda!355772))))

(declare-fun bs!1617821 () Bool)

(assert (= bs!1617821 (and b!6431861 b!6431148)))

(assert (=> bs!1617821 (not (= lambda!355850 lambda!355813))))

(assert (=> bs!1617811 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regTwo!33183 r!7292)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regTwo!33183 r!7292)) lt!2379353)) (= lambda!355850 lambda!355721))))

(declare-fun bs!1617822 () Bool)

(assert (= bs!1617822 (and b!6431861 d!2015793)))

(assert (=> bs!1617822 (not (= lambda!355850 lambda!355786))))

(declare-fun bs!1617823 () Bool)

(assert (= bs!1617823 (and b!6431861 b!6431154)))

(assert (=> bs!1617823 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regTwo!33183 r!7292)) (regOne!33182 lt!2379353)) (= (regTwo!33182 (regTwo!33183 r!7292)) (regTwo!33182 lt!2379353))) (= lambda!355850 lambda!355814))))

(declare-fun bs!1617824 () Bool)

(assert (= bs!1617824 (and b!6431861 b!6430128)))

(assert (=> bs!1617824 (= (and (= (regOne!33182 (regTwo!33183 r!7292)) (regOne!33182 r!7292)) (= (regTwo!33182 (regTwo!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355850 lambda!355715))))

(declare-fun bs!1617825 () Bool)

(assert (= bs!1617825 (and b!6431861 b!6431855)))

(assert (=> bs!1617825 (not (= lambda!355850 lambda!355849))))

(assert (=> bs!1617813 (= (and (= (regOne!33182 (regTwo!33183 r!7292)) lt!2379353) (= (regTwo!33182 (regTwo!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355850 lambda!355829))))

(declare-fun bs!1617826 () Bool)

(assert (= bs!1617826 (and b!6431861 b!6430816)))

(assert (=> bs!1617826 (= (and (= (regOne!33182 (regTwo!33183 r!7292)) (regOne!33182 r!7292)) (= (regTwo!33182 (regTwo!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355850 lambda!355773))))

(assert (=> bs!1617815 (not (= lambda!355850 lambda!355812))))

(declare-fun bs!1617827 () Bool)

(assert (= bs!1617827 (and b!6431861 b!6430865)))

(assert (=> bs!1617827 (= (and (= (regOne!33182 (regTwo!33183 r!7292)) (regOne!33182 lt!2379346)) (= (regTwo!33182 (regTwo!33183 r!7292)) (regTwo!33182 lt!2379346))) (= lambda!355850 lambda!355780))))

(assert (=> bs!1617819 (not (= lambda!355850 lambda!355805))))

(assert (=> bs!1617814 (not (= lambda!355850 lambda!355822))))

(assert (=> bs!1617809 (= (and (= (regOne!33182 (regTwo!33183 r!7292)) lt!2379353) (= (regTwo!33182 (regTwo!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355850 lambda!355718))))

(assert (=> bs!1617824 (not (= lambda!355850 lambda!355714))))

(declare-fun bs!1617828 () Bool)

(assert (= bs!1617828 (and b!6431861 d!2015829)))

(assert (=> bs!1617828 (not (= lambda!355850 lambda!355796))))

(assert (=> bs!1617828 (= (and (= (regOne!33182 (regTwo!33183 r!7292)) (regOne!33182 r!7292)) (= (regTwo!33182 (regTwo!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355850 lambda!355797))))

(assert (=> b!6431861 true))

(assert (=> b!6431861 true))

(declare-fun b!6431852 () Bool)

(declare-fun e!3901826 () Bool)

(declare-fun e!3901832 () Bool)

(assert (=> b!6431852 (= e!3901826 e!3901832)))

(declare-fun res!2643836 () Bool)

(assert (=> b!6431852 (= res!2643836 (matchRSpec!3436 (regOne!33183 (regTwo!33183 r!7292)) s!2326))))

(assert (=> b!6431852 (=> res!2643836 e!3901832)))

(declare-fun bm!553276 () Bool)

(declare-fun call!553282 () Bool)

(assert (=> bm!553276 (= call!553282 (isEmpty!37350 s!2326))))

(declare-fun b!6431853 () Bool)

(declare-fun res!2643834 () Bool)

(declare-fun e!3901830 () Bool)

(assert (=> b!6431853 (=> res!2643834 e!3901830)))

(assert (=> b!6431853 (= res!2643834 call!553282)))

(declare-fun e!3901829 () Bool)

(assert (=> b!6431853 (= e!3901829 e!3901830)))

(declare-fun b!6431854 () Bool)

(declare-fun e!3901828 () Bool)

(assert (=> b!6431854 (= e!3901828 (= s!2326 (Cons!65180 (c!1175066 (regTwo!33183 r!7292)) Nil!65180)))))

(declare-fun call!553281 () Bool)

(assert (=> b!6431855 (= e!3901830 call!553281)))

(declare-fun b!6431856 () Bool)

(declare-fun e!3901831 () Bool)

(assert (=> b!6431856 (= e!3901831 call!553282)))

(declare-fun b!6431857 () Bool)

(assert (=> b!6431857 (= e!3901826 e!3901829)))

(declare-fun c!1175527 () Bool)

(assert (=> b!6431857 (= c!1175527 ((_ is Star!16335) (regTwo!33183 r!7292)))))

(declare-fun d!2016237 () Bool)

(declare-fun c!1175529 () Bool)

(assert (=> d!2016237 (= c!1175529 ((_ is EmptyExpr!16335) (regTwo!33183 r!7292)))))

(assert (=> d!2016237 (= (matchRSpec!3436 (regTwo!33183 r!7292) s!2326) e!3901831)))

(declare-fun b!6431858 () Bool)

(declare-fun c!1175526 () Bool)

(assert (=> b!6431858 (= c!1175526 ((_ is Union!16335) (regTwo!33183 r!7292)))))

(assert (=> b!6431858 (= e!3901828 e!3901826)))

(declare-fun b!6431859 () Bool)

(assert (=> b!6431859 (= e!3901832 (matchRSpec!3436 (regTwo!33183 (regTwo!33183 r!7292)) s!2326))))

(declare-fun bm!553277 () Bool)

(assert (=> bm!553277 (= call!553281 (Exists!3405 (ite c!1175527 lambda!355849 lambda!355850)))))

(declare-fun b!6431860 () Bool)

(declare-fun c!1175528 () Bool)

(assert (=> b!6431860 (= c!1175528 ((_ is ElementMatch!16335) (regTwo!33183 r!7292)))))

(declare-fun e!3901827 () Bool)

(assert (=> b!6431860 (= e!3901827 e!3901828)))

(assert (=> b!6431861 (= e!3901829 call!553281)))

(declare-fun b!6431862 () Bool)

(assert (=> b!6431862 (= e!3901831 e!3901827)))

(declare-fun res!2643835 () Bool)

(assert (=> b!6431862 (= res!2643835 (not ((_ is EmptyLang!16335) (regTwo!33183 r!7292))))))

(assert (=> b!6431862 (=> (not res!2643835) (not e!3901827))))

(assert (= (and d!2016237 c!1175529) b!6431856))

(assert (= (and d!2016237 (not c!1175529)) b!6431862))

(assert (= (and b!6431862 res!2643835) b!6431860))

(assert (= (and b!6431860 c!1175528) b!6431854))

(assert (= (and b!6431860 (not c!1175528)) b!6431858))

(assert (= (and b!6431858 c!1175526) b!6431852))

(assert (= (and b!6431858 (not c!1175526)) b!6431857))

(assert (= (and b!6431852 (not res!2643836)) b!6431859))

(assert (= (and b!6431857 c!1175527) b!6431853))

(assert (= (and b!6431857 (not c!1175527)) b!6431861))

(assert (= (and b!6431853 (not res!2643834)) b!6431855))

(assert (= (or b!6431855 b!6431861) bm!553277))

(assert (= (or b!6431856 b!6431853) bm!553276))

(declare-fun m!7225516 () Bool)

(assert (=> b!6431852 m!7225516))

(assert (=> bm!553276 m!7224146))

(declare-fun m!7225518 () Bool)

(assert (=> b!6431859 m!7225518))

(declare-fun m!7225520 () Bool)

(assert (=> bm!553277 m!7225520))

(assert (=> b!6430814 d!2016237))

(assert (=> d!2015611 d!2015617))

(assert (=> d!2015611 d!2015613))

(declare-fun e!3901853 () Bool)

(declare-fun d!2016261 () Bool)

(assert (=> d!2016261 (= (matchZipper!2347 ((_ map or) lt!2379363 lt!2379360) (t!378920 s!2326)) e!3901853)))

(declare-fun res!2643850 () Bool)

(assert (=> d!2016261 (=> res!2643850 e!3901853)))

(assert (=> d!2016261 (= res!2643850 (matchZipper!2347 lt!2379363 (t!378920 s!2326)))))

(assert (=> d!2016261 true))

(declare-fun _$48!2213 () Unit!158671)

(assert (=> d!2016261 (= (choose!47816 lt!2379363 lt!2379360 (t!378920 s!2326)) _$48!2213)))

(declare-fun b!6431890 () Bool)

(assert (=> b!6431890 (= e!3901853 (matchZipper!2347 lt!2379360 (t!378920 s!2326)))))

(assert (= (and d!2016261 (not res!2643850)) b!6431890))

(assert (=> d!2016261 m!7223782))

(assert (=> d!2016261 m!7223780))

(assert (=> b!6431890 m!7223698))

(assert (=> d!2015611 d!2016261))

(assert (=> d!2015631 d!2016149))

(declare-fun b!6431892 () Bool)

(declare-fun e!3901856 () Bool)

(declare-fun e!3901858 () Bool)

(assert (=> b!6431892 (= e!3901856 e!3901858)))

(declare-fun res!2643852 () Bool)

(assert (=> b!6431892 (= res!2643852 (not (nullable!6328 (reg!16664 lt!2379370))))))

(assert (=> b!6431892 (=> (not res!2643852) (not e!3901858))))

(declare-fun c!1175537 () Bool)

(declare-fun call!553286 () Bool)

(declare-fun c!1175538 () Bool)

(declare-fun bm!553281 () Bool)

(assert (=> bm!553281 (= call!553286 (validRegex!8071 (ite c!1175537 (reg!16664 lt!2379370) (ite c!1175538 (regOne!33183 lt!2379370) (regOne!33182 lt!2379370)))))))

(declare-fun b!6431893 () Bool)

(declare-fun e!3901855 () Bool)

(declare-fun call!553287 () Bool)

(assert (=> b!6431893 (= e!3901855 call!553287)))

(declare-fun b!6431894 () Bool)

(declare-fun e!3901860 () Bool)

(assert (=> b!6431894 (= e!3901856 e!3901860)))

(assert (=> b!6431894 (= c!1175538 ((_ is Union!16335) lt!2379370))))

(declare-fun b!6431895 () Bool)

(declare-fun e!3901859 () Bool)

(declare-fun e!3901854 () Bool)

(assert (=> b!6431895 (= e!3901859 e!3901854)))

(declare-fun res!2643855 () Bool)

(assert (=> b!6431895 (=> (not res!2643855) (not e!3901854))))

(declare-fun call!553288 () Bool)

(assert (=> b!6431895 (= res!2643855 call!553288)))

(declare-fun b!6431896 () Bool)

(declare-fun e!3901857 () Bool)

(assert (=> b!6431896 (= e!3901857 e!3901856)))

(assert (=> b!6431896 (= c!1175537 ((_ is Star!16335) lt!2379370))))

(declare-fun b!6431891 () Bool)

(declare-fun res!2643854 () Bool)

(assert (=> b!6431891 (=> res!2643854 e!3901859)))

(assert (=> b!6431891 (= res!2643854 (not ((_ is Concat!25180) lt!2379370)))))

(assert (=> b!6431891 (= e!3901860 e!3901859)))

(declare-fun d!2016269 () Bool)

(declare-fun res!2643853 () Bool)

(assert (=> d!2016269 (=> res!2643853 e!3901857)))

(assert (=> d!2016269 (= res!2643853 ((_ is ElementMatch!16335) lt!2379370))))

(assert (=> d!2016269 (= (validRegex!8071 lt!2379370) e!3901857)))

(declare-fun b!6431897 () Bool)

(declare-fun res!2643851 () Bool)

(assert (=> b!6431897 (=> (not res!2643851) (not e!3901855))))

(assert (=> b!6431897 (= res!2643851 call!553288)))

(assert (=> b!6431897 (= e!3901860 e!3901855)))

(declare-fun b!6431898 () Bool)

(assert (=> b!6431898 (= e!3901858 call!553286)))

(declare-fun bm!553282 () Bool)

(assert (=> bm!553282 (= call!553287 (validRegex!8071 (ite c!1175538 (regTwo!33183 lt!2379370) (regTwo!33182 lt!2379370))))))

(declare-fun bm!553283 () Bool)

(assert (=> bm!553283 (= call!553288 call!553286)))

(declare-fun b!6431899 () Bool)

(assert (=> b!6431899 (= e!3901854 call!553287)))

(assert (= (and d!2016269 (not res!2643853)) b!6431896))

(assert (= (and b!6431896 c!1175537) b!6431892))

(assert (= (and b!6431896 (not c!1175537)) b!6431894))

(assert (= (and b!6431892 res!2643852) b!6431898))

(assert (= (and b!6431894 c!1175538) b!6431897))

(assert (= (and b!6431894 (not c!1175538)) b!6431891))

(assert (= (and b!6431897 res!2643851) b!6431893))

(assert (= (and b!6431891 (not res!2643854)) b!6431895))

(assert (= (and b!6431895 res!2643855) b!6431899))

(assert (= (or b!6431893 b!6431899) bm!553282))

(assert (= (or b!6431897 b!6431895) bm!553283))

(assert (= (or b!6431898 bm!553283) bm!553281))

(declare-fun m!7225532 () Bool)

(assert (=> b!6431892 m!7225532))

(declare-fun m!7225534 () Bool)

(assert (=> bm!553281 m!7225534))

(declare-fun m!7225536 () Bool)

(assert (=> bm!553282 m!7225536))

(assert (=> d!2015631 d!2016269))

(declare-fun d!2016271 () Bool)

(assert (=> d!2016271 (= (nullable!6328 (h!71629 (exprs!6219 lt!2379355))) (nullableFct!2274 (h!71629 (exprs!6219 lt!2379355))))))

(declare-fun bs!1617829 () Bool)

(assert (= bs!1617829 d!2016271))

(declare-fun m!7225538 () Bool)

(assert (=> bs!1617829 m!7225538))

(assert (=> b!6431190 d!2016271))

(declare-fun d!2016273 () Bool)

(declare-fun e!3901866 () Bool)

(assert (=> d!2016273 e!3901866))

(declare-fun c!1175540 () Bool)

(assert (=> d!2016273 (= c!1175540 ((_ is EmptyExpr!16335) (regTwo!33182 r!7292)))))

(declare-fun lt!2379586 () Bool)

(declare-fun e!3901861 () Bool)

(assert (=> d!2016273 (= lt!2379586 e!3901861)))

(declare-fun c!1175541 () Bool)

(assert (=> d!2016273 (= c!1175541 (isEmpty!37350 s!2326))))

(assert (=> d!2016273 (validRegex!8071 (regTwo!33182 r!7292))))

(assert (=> d!2016273 (= (matchR!8518 (regTwo!33182 r!7292) s!2326) lt!2379586)))

(declare-fun b!6431900 () Bool)

(declare-fun e!3901865 () Bool)

(assert (=> b!6431900 (= e!3901865 (not (= (head!13161 s!2326) (c!1175066 (regTwo!33182 r!7292)))))))

(declare-fun b!6431901 () Bool)

(assert (=> b!6431901 (= e!3901861 (matchR!8518 (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 s!2326)) (tail!12246 s!2326)))))

(declare-fun b!6431902 () Bool)

(declare-fun res!2643857 () Bool)

(declare-fun e!3901864 () Bool)

(assert (=> b!6431902 (=> res!2643857 e!3901864)))

(declare-fun e!3901862 () Bool)

(assert (=> b!6431902 (= res!2643857 e!3901862)))

(declare-fun res!2643861 () Bool)

(assert (=> b!6431902 (=> (not res!2643861) (not e!3901862))))

(assert (=> b!6431902 (= res!2643861 lt!2379586)))

(declare-fun b!6431903 () Bool)

(declare-fun res!2643859 () Bool)

(assert (=> b!6431903 (=> res!2643859 e!3901864)))

(assert (=> b!6431903 (= res!2643859 (not ((_ is ElementMatch!16335) (regTwo!33182 r!7292))))))

(declare-fun e!3901863 () Bool)

(assert (=> b!6431903 (= e!3901863 e!3901864)))

(declare-fun b!6431904 () Bool)

(declare-fun e!3901867 () Bool)

(assert (=> b!6431904 (= e!3901864 e!3901867)))

(declare-fun res!2643862 () Bool)

(assert (=> b!6431904 (=> (not res!2643862) (not e!3901867))))

(assert (=> b!6431904 (= res!2643862 (not lt!2379586))))

(declare-fun b!6431905 () Bool)

(declare-fun res!2643860 () Bool)

(assert (=> b!6431905 (=> res!2643860 e!3901865)))

(assert (=> b!6431905 (= res!2643860 (not (isEmpty!37350 (tail!12246 s!2326))))))

(declare-fun b!6431906 () Bool)

(assert (=> b!6431906 (= e!3901861 (nullable!6328 (regTwo!33182 r!7292)))))

(declare-fun b!6431907 () Bool)

(assert (=> b!6431907 (= e!3901866 e!3901863)))

(declare-fun c!1175539 () Bool)

(assert (=> b!6431907 (= c!1175539 ((_ is EmptyLang!16335) (regTwo!33182 r!7292)))))

(declare-fun b!6431908 () Bool)

(declare-fun call!553289 () Bool)

(assert (=> b!6431908 (= e!3901866 (= lt!2379586 call!553289))))

(declare-fun b!6431909 () Bool)

(assert (=> b!6431909 (= e!3901863 (not lt!2379586))))

(declare-fun b!6431910 () Bool)

(declare-fun res!2643863 () Bool)

(assert (=> b!6431910 (=> (not res!2643863) (not e!3901862))))

(assert (=> b!6431910 (= res!2643863 (isEmpty!37350 (tail!12246 s!2326)))))

(declare-fun b!6431911 () Bool)

(assert (=> b!6431911 (= e!3901867 e!3901865)))

(declare-fun res!2643856 () Bool)

(assert (=> b!6431911 (=> res!2643856 e!3901865)))

(assert (=> b!6431911 (= res!2643856 call!553289)))

(declare-fun b!6431912 () Bool)

(assert (=> b!6431912 (= e!3901862 (= (head!13161 s!2326) (c!1175066 (regTwo!33182 r!7292))))))

(declare-fun bm!553284 () Bool)

(assert (=> bm!553284 (= call!553289 (isEmpty!37350 s!2326))))

(declare-fun b!6431913 () Bool)

(declare-fun res!2643858 () Bool)

(assert (=> b!6431913 (=> (not res!2643858) (not e!3901862))))

(assert (=> b!6431913 (= res!2643858 (not call!553289))))

(assert (= (and d!2016273 c!1175541) b!6431906))

(assert (= (and d!2016273 (not c!1175541)) b!6431901))

(assert (= (and d!2016273 c!1175540) b!6431908))

(assert (= (and d!2016273 (not c!1175540)) b!6431907))

(assert (= (and b!6431907 c!1175539) b!6431909))

(assert (= (and b!6431907 (not c!1175539)) b!6431903))

(assert (= (and b!6431903 (not res!2643859)) b!6431902))

(assert (= (and b!6431902 res!2643861) b!6431913))

(assert (= (and b!6431913 res!2643858) b!6431910))

(assert (= (and b!6431910 res!2643863) b!6431912))

(assert (= (and b!6431902 (not res!2643857)) b!6431904))

(assert (= (and b!6431904 res!2643862) b!6431911))

(assert (= (and b!6431911 (not res!2643856)) b!6431905))

(assert (= (and b!6431905 (not res!2643860)) b!6431900))

(assert (= (or b!6431908 b!6431913 b!6431911) bm!553284))

(assert (=> d!2016273 m!7224146))

(assert (=> d!2016273 m!7223960))

(assert (=> b!6431900 m!7224150))

(assert (=> b!6431910 m!7224154))

(assert (=> b!6431910 m!7224154))

(assert (=> b!6431910 m!7224446))

(assert (=> b!6431905 m!7224154))

(assert (=> b!6431905 m!7224154))

(assert (=> b!6431905 m!7224446))

(assert (=> b!6431912 m!7224150))

(assert (=> bm!553284 m!7224146))

(assert (=> b!6431906 m!7224386))

(assert (=> b!6431901 m!7224150))

(assert (=> b!6431901 m!7224150))

(declare-fun m!7225540 () Bool)

(assert (=> b!6431901 m!7225540))

(assert (=> b!6431901 m!7224154))

(assert (=> b!6431901 m!7225540))

(assert (=> b!6431901 m!7224154))

(declare-fun m!7225542 () Bool)

(assert (=> b!6431901 m!7225542))

(assert (=> b!6430944 d!2016273))

(declare-fun d!2016275 () Bool)

(assert (=> d!2016275 (= (isConcat!1259 lt!2379547) ((_ is Concat!25180) lt!2379547))))

(assert (=> b!6431178 d!2016275))

(declare-fun b!6431916 () Bool)

(declare-fun e!3901870 () (InoxSet Context!11438))

(declare-fun call!553293 () (InoxSet Context!11438))

(declare-fun call!553295 () (InoxSet Context!11438))

(assert (=> b!6431916 (= e!3901870 ((_ map or) call!553293 call!553295))))

(declare-fun call!553294 () List!65305)

(declare-fun c!1175542 () Bool)

(declare-fun bm!553285 () Bool)

(assert (=> bm!553285 (= call!553293 (derivationStepZipperDown!1583 (ite c!1175542 (regTwo!33183 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (regOne!33182 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))))) (ite c!1175542 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (Context!11439 call!553294)) (h!71628 s!2326)))))

(declare-fun bm!553286 () Bool)

(declare-fun call!553292 () (InoxSet Context!11438))

(assert (=> bm!553286 (= call!553292 call!553295)))

(declare-fun b!6431917 () Bool)

(declare-fun c!1175543 () Bool)

(declare-fun e!3901873 () Bool)

(assert (=> b!6431917 (= c!1175543 e!3901873)))

(declare-fun res!2643866 () Bool)

(assert (=> b!6431917 (=> (not res!2643866) (not e!3901873))))

(assert (=> b!6431917 (= res!2643866 ((_ is Concat!25180) (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))))))

(declare-fun e!3901874 () (InoxSet Context!11438))

(assert (=> b!6431917 (= e!3901874 e!3901870)))

(declare-fun b!6431918 () Bool)

(declare-fun call!553290 () (InoxSet Context!11438))

(assert (=> b!6431918 (= e!3901874 ((_ map or) call!553290 call!553293))))

(declare-fun bm!553287 () Bool)

(assert (=> bm!553287 (= call!553295 call!553290)))

(declare-fun b!6431919 () Bool)

(declare-fun e!3901875 () (InoxSet Context!11438))

(assert (=> b!6431919 (= e!3901875 e!3901874)))

(assert (=> b!6431919 (= c!1175542 ((_ is Union!16335) (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))))))

(declare-fun b!6431921 () Bool)

(assert (=> b!6431921 (= e!3901873 (nullable!6328 (regOne!33182 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))))))))

(declare-fun b!6431922 () Bool)

(declare-fun c!1175546 () Bool)

(assert (=> b!6431922 (= c!1175546 ((_ is Star!16335) (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))))))

(declare-fun e!3901872 () (InoxSet Context!11438))

(declare-fun e!3901871 () (InoxSet Context!11438))

(assert (=> b!6431922 (= e!3901872 e!3901871)))

(declare-fun b!6431923 () Bool)

(assert (=> b!6431923 (= e!3901871 call!553292)))

(declare-fun c!1175545 () Bool)

(declare-fun call!553291 () List!65305)

(declare-fun bm!553288 () Bool)

(assert (=> bm!553288 (= call!553290 (derivationStepZipperDown!1583 (ite c!1175542 (regOne!33183 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (ite c!1175543 (regTwo!33182 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (ite c!1175545 (regOne!33182 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (reg!16664 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))))))) (ite (or c!1175542 c!1175543) (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (Context!11439 call!553291)) (h!71628 s!2326)))))

(declare-fun b!6431924 () Bool)

(assert (=> b!6431924 (= e!3901870 e!3901872)))

(assert (=> b!6431924 (= c!1175545 ((_ is Concat!25180) (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))))))

(declare-fun b!6431925 () Bool)

(assert (=> b!6431925 (= e!3901875 (store ((as const (Array Context!11438 Bool)) false) (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) true))))

(declare-fun b!6431926 () Bool)

(assert (=> b!6431926 (= e!3901871 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2016277 () Bool)

(declare-fun c!1175544 () Bool)

(assert (=> d!2016277 (= c!1175544 (and ((_ is ElementMatch!16335) (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (= (c!1175066 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (h!71628 s!2326))))))

(assert (=> d!2016277 (= (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))) (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (h!71628 s!2326)) e!3901875)))

(declare-fun b!6431920 () Bool)

(assert (=> b!6431920 (= e!3901872 call!553292)))

(declare-fun bm!553289 () Bool)

(assert (=> bm!553289 (= call!553291 call!553294)))

(declare-fun bm!553290 () Bool)

(assert (=> bm!553290 (= call!553294 ($colon$colon!2196 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))))) (ite (or c!1175543 c!1175545) (regTwo!33182 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))))))))

(assert (= (and d!2016277 c!1175544) b!6431925))

(assert (= (and d!2016277 (not c!1175544)) b!6431919))

(assert (= (and b!6431919 c!1175542) b!6431918))

(assert (= (and b!6431919 (not c!1175542)) b!6431917))

(assert (= (and b!6431917 res!2643866) b!6431921))

(assert (= (and b!6431917 c!1175543) b!6431916))

(assert (= (and b!6431917 (not c!1175543)) b!6431924))

(assert (= (and b!6431924 c!1175545) b!6431920))

(assert (= (and b!6431924 (not c!1175545)) b!6431922))

(assert (= (and b!6431922 c!1175546) b!6431923))

(assert (= (and b!6431922 (not c!1175546)) b!6431926))

(assert (= (or b!6431920 b!6431923) bm!553289))

(assert (= (or b!6431920 b!6431923) bm!553286))

(assert (= (or b!6431916 bm!553289) bm!553290))

(assert (= (or b!6431916 bm!553286) bm!553287))

(assert (= (or b!6431918 b!6431916) bm!553285))

(assert (= (or b!6431918 bm!553287) bm!553288))

(declare-fun m!7225544 () Bool)

(assert (=> b!6431925 m!7225544))

(declare-fun m!7225546 () Bool)

(assert (=> b!6431921 m!7225546))

(declare-fun m!7225548 () Bool)

(assert (=> bm!553290 m!7225548))

(declare-fun m!7225550 () Bool)

(assert (=> bm!553285 m!7225550))

(declare-fun m!7225552 () Bool)

(assert (=> bm!553288 m!7225552))

(assert (=> bm!553081 d!2016277))

(declare-fun d!2016279 () Bool)

(assert (=> d!2016279 (= (isEmpty!37352 lt!2379377) (not ((_ is Some!16225) lt!2379377)))))

(assert (=> d!2015869 d!2016279))

(assert (=> bs!1617625 d!2015675))

(declare-fun b!6431933 () Bool)

(declare-fun e!3901880 () (InoxSet Context!11438))

(declare-fun call!553300 () (InoxSet Context!11438))

(declare-fun call!553302 () (InoxSet Context!11438))

(assert (=> b!6431933 (= e!3901880 ((_ map or) call!553300 call!553302))))

(declare-fun c!1175549 () Bool)

(declare-fun call!553301 () List!65305)

(declare-fun bm!553292 () Bool)

(assert (=> bm!553292 (= call!553300 (derivationStepZipperDown!1583 (ite c!1175549 (regTwo!33183 (h!71629 (exprs!6219 lt!2379362))) (regOne!33182 (h!71629 (exprs!6219 lt!2379362)))) (ite c!1175549 (Context!11439 (t!378921 (exprs!6219 lt!2379362))) (Context!11439 call!553301)) (h!71628 s!2326)))))

(declare-fun bm!553293 () Bool)

(declare-fun call!553299 () (InoxSet Context!11438))

(assert (=> bm!553293 (= call!553299 call!553302)))

(declare-fun b!6431934 () Bool)

(declare-fun c!1175550 () Bool)

(declare-fun e!3901883 () Bool)

(assert (=> b!6431934 (= c!1175550 e!3901883)))

(declare-fun res!2643869 () Bool)

(assert (=> b!6431934 (=> (not res!2643869) (not e!3901883))))

(assert (=> b!6431934 (= res!2643869 ((_ is Concat!25180) (h!71629 (exprs!6219 lt!2379362))))))

(declare-fun e!3901884 () (InoxSet Context!11438))

(assert (=> b!6431934 (= e!3901884 e!3901880)))

(declare-fun b!6431935 () Bool)

(declare-fun call!553297 () (InoxSet Context!11438))

(assert (=> b!6431935 (= e!3901884 ((_ map or) call!553297 call!553300))))

(declare-fun bm!553294 () Bool)

(assert (=> bm!553294 (= call!553302 call!553297)))

(declare-fun b!6431936 () Bool)

(declare-fun e!3901885 () (InoxSet Context!11438))

(assert (=> b!6431936 (= e!3901885 e!3901884)))

(assert (=> b!6431936 (= c!1175549 ((_ is Union!16335) (h!71629 (exprs!6219 lt!2379362))))))

(declare-fun b!6431938 () Bool)

(assert (=> b!6431938 (= e!3901883 (nullable!6328 (regOne!33182 (h!71629 (exprs!6219 lt!2379362)))))))

(declare-fun b!6431939 () Bool)

(declare-fun c!1175553 () Bool)

(assert (=> b!6431939 (= c!1175553 ((_ is Star!16335) (h!71629 (exprs!6219 lt!2379362))))))

(declare-fun e!3901882 () (InoxSet Context!11438))

(declare-fun e!3901881 () (InoxSet Context!11438))

(assert (=> b!6431939 (= e!3901882 e!3901881)))

(declare-fun b!6431940 () Bool)

(assert (=> b!6431940 (= e!3901881 call!553299)))

(declare-fun bm!553295 () Bool)

(declare-fun c!1175552 () Bool)

(declare-fun call!553298 () List!65305)

(assert (=> bm!553295 (= call!553297 (derivationStepZipperDown!1583 (ite c!1175549 (regOne!33183 (h!71629 (exprs!6219 lt!2379362))) (ite c!1175550 (regTwo!33182 (h!71629 (exprs!6219 lt!2379362))) (ite c!1175552 (regOne!33182 (h!71629 (exprs!6219 lt!2379362))) (reg!16664 (h!71629 (exprs!6219 lt!2379362)))))) (ite (or c!1175549 c!1175550) (Context!11439 (t!378921 (exprs!6219 lt!2379362))) (Context!11439 call!553298)) (h!71628 s!2326)))))

(declare-fun b!6431941 () Bool)

(assert (=> b!6431941 (= e!3901880 e!3901882)))

(assert (=> b!6431941 (= c!1175552 ((_ is Concat!25180) (h!71629 (exprs!6219 lt!2379362))))))

(declare-fun b!6431942 () Bool)

(assert (=> b!6431942 (= e!3901885 (store ((as const (Array Context!11438 Bool)) false) (Context!11439 (t!378921 (exprs!6219 lt!2379362))) true))))

(declare-fun b!6431943 () Bool)

(assert (=> b!6431943 (= e!3901881 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2016283 () Bool)

(declare-fun c!1175551 () Bool)

(assert (=> d!2016283 (= c!1175551 (and ((_ is ElementMatch!16335) (h!71629 (exprs!6219 lt!2379362))) (= (c!1175066 (h!71629 (exprs!6219 lt!2379362))) (h!71628 s!2326))))))

(assert (=> d!2016283 (= (derivationStepZipperDown!1583 (h!71629 (exprs!6219 lt!2379362)) (Context!11439 (t!378921 (exprs!6219 lt!2379362))) (h!71628 s!2326)) e!3901885)))

(declare-fun b!6431937 () Bool)

(assert (=> b!6431937 (= e!3901882 call!553299)))

(declare-fun bm!553296 () Bool)

(assert (=> bm!553296 (= call!553298 call!553301)))

(declare-fun bm!553297 () Bool)

(assert (=> bm!553297 (= call!553301 ($colon$colon!2196 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379362)))) (ite (or c!1175550 c!1175552) (regTwo!33182 (h!71629 (exprs!6219 lt!2379362))) (h!71629 (exprs!6219 lt!2379362)))))))

(assert (= (and d!2016283 c!1175551) b!6431942))

(assert (= (and d!2016283 (not c!1175551)) b!6431936))

(assert (= (and b!6431936 c!1175549) b!6431935))

(assert (= (and b!6431936 (not c!1175549)) b!6431934))

(assert (= (and b!6431934 res!2643869) b!6431938))

(assert (= (and b!6431934 c!1175550) b!6431933))

(assert (= (and b!6431934 (not c!1175550)) b!6431941))

(assert (= (and b!6431941 c!1175552) b!6431937))

(assert (= (and b!6431941 (not c!1175552)) b!6431939))

(assert (= (and b!6431939 c!1175553) b!6431940))

(assert (= (and b!6431939 (not c!1175553)) b!6431943))

(assert (= (or b!6431937 b!6431940) bm!553296))

(assert (= (or b!6431937 b!6431940) bm!553293))

(assert (= (or b!6431933 bm!553296) bm!553297))

(assert (= (or b!6431933 bm!553293) bm!553294))

(assert (= (or b!6431935 b!6431933) bm!553292))

(assert (= (or b!6431935 bm!553294) bm!553295))

(declare-fun m!7225560 () Bool)

(assert (=> b!6431942 m!7225560))

(declare-fun m!7225562 () Bool)

(assert (=> b!6431938 m!7225562))

(declare-fun m!7225564 () Bool)

(assert (=> bm!553297 m!7225564))

(declare-fun m!7225566 () Bool)

(assert (=> bm!553292 m!7225566))

(declare-fun m!7225570 () Bool)

(assert (=> bm!553295 m!7225570))

(assert (=> bm!553161 d!2016283))

(declare-fun d!2016289 () Bool)

(assert (=> d!2016289 (= (isEmpty!37350 (tail!12246 lt!2379371)) ((_ is Nil!65180) (tail!12246 lt!2379371)))))

(assert (=> b!6430427 d!2016289))

(assert (=> b!6430427 d!2016125))

(assert (=> d!2015855 d!2015697))

(assert (=> d!2015855 d!2015935))

(declare-fun d!2016291 () Bool)

(assert (=> d!2016291 (= (nullable!6328 (h!71629 (exprs!6219 lt!2379358))) (nullableFct!2274 (h!71629 (exprs!6219 lt!2379358))))))

(declare-fun bs!1617832 () Bool)

(assert (= bs!1617832 d!2016291))

(declare-fun m!7225574 () Bool)

(assert (=> bs!1617832 m!7225574))

(assert (=> b!6430471 d!2016291))

(declare-fun bs!1617833 () Bool)

(declare-fun b!6431947 () Bool)

(assert (= bs!1617833 (and b!6431947 d!2015887)))

(declare-fun lambda!355851 () Int)

(assert (=> bs!1617833 (not (= lambda!355851 lambda!355804))))

(declare-fun bs!1617834 () Bool)

(assert (= bs!1617834 (and b!6431947 b!6430115)))

(assert (=> bs!1617834 (not (= lambda!355851 lambda!355717))))

(declare-fun bs!1617835 () Bool)

(assert (= bs!1617835 (and b!6431947 b!6431861)))

(assert (=> bs!1617835 (not (= lambda!355851 lambda!355850))))

(declare-fun bs!1617836 () Bool)

(assert (= bs!1617836 (and b!6431947 d!2016163)))

(assert (=> bs!1617836 (not (= lambda!355851 lambda!355844))))

(declare-fun bs!1617837 () Bool)

(assert (= bs!1617837 (and b!6431947 b!6430094)))

(assert (=> bs!1617837 (not (= lambda!355851 lambda!355719))))

(assert (=> bs!1617837 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regOne!33183 lt!2379346)) (reg!16664 (regOne!33182 r!7292))) (= (regOne!33183 lt!2379346) lt!2379353)) (= lambda!355851 lambda!355720))))

(declare-fun bs!1617838 () Bool)

(assert (= bs!1617838 (and b!6431947 d!2015881)))

(assert (=> bs!1617838 (not (= lambda!355851 lambda!355802))))

(declare-fun bs!1617839 () Bool)

(assert (= bs!1617839 (and b!6431947 d!2015991)))

(assert (=> bs!1617839 (not (= lambda!355851 lambda!355828))))

(declare-fun bs!1617840 () Bool)

(assert (= bs!1617840 (and b!6431947 d!2015957)))

(assert (=> bs!1617840 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regOne!33183 lt!2379346)) (reg!16664 (regOne!33182 r!7292))) (= (regOne!33183 lt!2379346) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355851 lambda!355823))))

(declare-fun bs!1617841 () Bool)

(assert (= bs!1617841 (and b!6431947 d!2015895)))

(assert (=> bs!1617841 (not (= lambda!355851 lambda!355811))))

(declare-fun bs!1617842 () Bool)

(assert (= bs!1617842 (and b!6431947 b!6430859)))

(assert (=> bs!1617842 (= (and (= (reg!16664 (regOne!33183 lt!2379346)) (reg!16664 lt!2379346)) (= (regOne!33183 lt!2379346) lt!2379346)) (= lambda!355851 lambda!355779))))

(declare-fun bs!1617843 () Bool)

(assert (= bs!1617843 (and b!6431947 d!2015879)))

(assert (=> bs!1617843 (not (= lambda!355851 lambda!355801))))

(declare-fun bs!1617844 () Bool)

(assert (= bs!1617844 (and b!6431947 d!2016021)))

(assert (=> bs!1617844 (not (= lambda!355851 lambda!355832))))

(declare-fun bs!1617845 () Bool)

(assert (= bs!1617845 (and b!6431947 d!2015889)))

(assert (=> bs!1617845 (not (= lambda!355851 lambda!355806))))

(assert (=> bs!1617838 (not (= lambda!355851 lambda!355803))))

(declare-fun bs!1617846 () Bool)

(assert (= bs!1617846 (and b!6431947 b!6430810)))

(assert (=> bs!1617846 (= (and (= (reg!16664 (regOne!33183 lt!2379346)) (reg!16664 r!7292)) (= (regOne!33183 lt!2379346) r!7292)) (= lambda!355851 lambda!355772))))

(declare-fun bs!1617847 () Bool)

(assert (= bs!1617847 (and b!6431947 b!6431148)))

(assert (=> bs!1617847 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regOne!33183 lt!2379346)) (reg!16664 lt!2379353)) (= (regOne!33183 lt!2379346) lt!2379353)) (= lambda!355851 lambda!355813))))

(assert (=> bs!1617837 (not (= lambda!355851 lambda!355721))))

(declare-fun bs!1617848 () Bool)

(assert (= bs!1617848 (and b!6431947 d!2015793)))

(assert (=> bs!1617848 (not (= lambda!355851 lambda!355786))))

(declare-fun bs!1617849 () Bool)

(assert (= bs!1617849 (and b!6431947 b!6431154)))

(assert (=> bs!1617849 (not (= lambda!355851 lambda!355814))))

(declare-fun bs!1617850 () Bool)

(assert (= bs!1617850 (and b!6431947 b!6430128)))

(assert (=> bs!1617850 (not (= lambda!355851 lambda!355715))))

(declare-fun bs!1617851 () Bool)

(assert (= bs!1617851 (and b!6431947 b!6431855)))

(assert (=> bs!1617851 (= (and (= (reg!16664 (regOne!33183 lt!2379346)) (reg!16664 (regTwo!33183 r!7292))) (= (regOne!33183 lt!2379346) (regTwo!33183 r!7292))) (= lambda!355851 lambda!355849))))

(assert (=> bs!1617839 (not (= lambda!355851 lambda!355829))))

(declare-fun bs!1617852 () Bool)

(assert (= bs!1617852 (and b!6431947 b!6430816)))

(assert (=> bs!1617852 (not (= lambda!355851 lambda!355773))))

(assert (=> bs!1617841 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regOne!33183 lt!2379346)) (reg!16664 (regOne!33182 r!7292))) (= (regOne!33183 lt!2379346) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355851 lambda!355812))))

(declare-fun bs!1617853 () Bool)

(assert (= bs!1617853 (and b!6431947 b!6430865)))

(assert (=> bs!1617853 (not (= lambda!355851 lambda!355780))))

(assert (=> bs!1617845 (not (= lambda!355851 lambda!355805))))

(assert (=> bs!1617840 (not (= lambda!355851 lambda!355822))))

(assert (=> bs!1617834 (not (= lambda!355851 lambda!355718))))

(assert (=> bs!1617850 (not (= lambda!355851 lambda!355714))))

(declare-fun bs!1617854 () Bool)

(assert (= bs!1617854 (and b!6431947 d!2015829)))

(assert (=> bs!1617854 (not (= lambda!355851 lambda!355796))))

(assert (=> bs!1617854 (not (= lambda!355851 lambda!355797))))

(assert (=> b!6431947 true))

(assert (=> b!6431947 true))

(declare-fun bs!1617855 () Bool)

(declare-fun b!6431953 () Bool)

(assert (= bs!1617855 (and b!6431953 d!2015887)))

(declare-fun lambda!355852 () Int)

(assert (=> bs!1617855 (not (= lambda!355852 lambda!355804))))

(declare-fun bs!1617856 () Bool)

(assert (= bs!1617856 (and b!6431953 b!6430115)))

(assert (=> bs!1617856 (not (= lambda!355852 lambda!355717))))

(declare-fun bs!1617857 () Bool)

(assert (= bs!1617857 (and b!6431953 b!6431861)))

(assert (=> bs!1617857 (= (and (= (regOne!33182 (regOne!33183 lt!2379346)) (regOne!33182 (regTwo!33183 r!7292))) (= (regTwo!33182 (regOne!33183 lt!2379346)) (regTwo!33182 (regTwo!33183 r!7292)))) (= lambda!355852 lambda!355850))))

(declare-fun bs!1617858 () Bool)

(assert (= bs!1617858 (and b!6431953 d!2016163)))

(assert (=> bs!1617858 (not (= lambda!355852 lambda!355844))))

(declare-fun bs!1617859 () Bool)

(assert (= bs!1617859 (and b!6431953 b!6430094)))

(assert (=> bs!1617859 (not (= lambda!355852 lambda!355719))))

(assert (=> bs!1617859 (not (= lambda!355852 lambda!355720))))

(declare-fun bs!1617860 () Bool)

(assert (= bs!1617860 (and b!6431953 d!2015881)))

(assert (=> bs!1617860 (not (= lambda!355852 lambda!355802))))

(declare-fun bs!1617861 () Bool)

(assert (= bs!1617861 (and b!6431953 d!2015991)))

(assert (=> bs!1617861 (not (= lambda!355852 lambda!355828))))

(declare-fun bs!1617862 () Bool)

(assert (= bs!1617862 (and b!6431953 d!2015957)))

(assert (=> bs!1617862 (not (= lambda!355852 lambda!355823))))

(declare-fun bs!1617863 () Bool)

(assert (= bs!1617863 (and b!6431953 d!2015895)))

(assert (=> bs!1617863 (not (= lambda!355852 lambda!355811))))

(declare-fun bs!1617864 () Bool)

(assert (= bs!1617864 (and b!6431953 b!6430859)))

(assert (=> bs!1617864 (not (= lambda!355852 lambda!355779))))

(declare-fun bs!1617865 () Bool)

(assert (= bs!1617865 (and b!6431953 d!2015879)))

(assert (=> bs!1617865 (not (= lambda!355852 lambda!355801))))

(declare-fun bs!1617866 () Bool)

(assert (= bs!1617866 (and b!6431953 d!2016021)))

(assert (=> bs!1617866 (not (= lambda!355852 lambda!355832))))

(declare-fun bs!1617867 () Bool)

(assert (= bs!1617867 (and b!6431953 d!2015889)))

(assert (=> bs!1617867 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regOne!33183 lt!2379346)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regOne!33183 lt!2379346)) lt!2379353)) (= lambda!355852 lambda!355806))))

(assert (=> bs!1617860 (= (and (= (regOne!33182 (regOne!33183 lt!2379346)) lt!2379353) (= (regTwo!33182 (regOne!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355852 lambda!355803))))

(declare-fun bs!1617868 () Bool)

(assert (= bs!1617868 (and b!6431953 b!6430810)))

(assert (=> bs!1617868 (not (= lambda!355852 lambda!355772))))

(declare-fun bs!1617869 () Bool)

(assert (= bs!1617869 (and b!6431953 b!6431148)))

(assert (=> bs!1617869 (not (= lambda!355852 lambda!355813))))

(assert (=> bs!1617859 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regOne!33183 lt!2379346)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regOne!33183 lt!2379346)) lt!2379353)) (= lambda!355852 lambda!355721))))

(declare-fun bs!1617870 () Bool)

(assert (= bs!1617870 (and b!6431953 d!2015793)))

(assert (=> bs!1617870 (not (= lambda!355852 lambda!355786))))

(declare-fun bs!1617871 () Bool)

(assert (= bs!1617871 (and b!6431953 b!6431154)))

(assert (=> bs!1617871 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regOne!33183 lt!2379346)) (regOne!33182 lt!2379353)) (= (regTwo!33182 (regOne!33183 lt!2379346)) (regTwo!33182 lt!2379353))) (= lambda!355852 lambda!355814))))

(declare-fun bs!1617872 () Bool)

(assert (= bs!1617872 (and b!6431953 b!6430128)))

(assert (=> bs!1617872 (= (and (= (regOne!33182 (regOne!33183 lt!2379346)) (regOne!33182 r!7292)) (= (regTwo!33182 (regOne!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355852 lambda!355715))))

(declare-fun bs!1617873 () Bool)

(assert (= bs!1617873 (and b!6431953 b!6431855)))

(assert (=> bs!1617873 (not (= lambda!355852 lambda!355849))))

(assert (=> bs!1617861 (= (and (= (regOne!33182 (regOne!33183 lt!2379346)) lt!2379353) (= (regTwo!33182 (regOne!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355852 lambda!355829))))

(declare-fun bs!1617874 () Bool)

(assert (= bs!1617874 (and b!6431953 b!6430816)))

(assert (=> bs!1617874 (= (and (= (regOne!33182 (regOne!33183 lt!2379346)) (regOne!33182 r!7292)) (= (regTwo!33182 (regOne!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355852 lambda!355773))))

(assert (=> bs!1617863 (not (= lambda!355852 lambda!355812))))

(declare-fun bs!1617875 () Bool)

(assert (= bs!1617875 (and b!6431953 b!6430865)))

(assert (=> bs!1617875 (= (and (= (regOne!33182 (regOne!33183 lt!2379346)) (regOne!33182 lt!2379346)) (= (regTwo!33182 (regOne!33183 lt!2379346)) (regTwo!33182 lt!2379346))) (= lambda!355852 lambda!355780))))

(assert (=> bs!1617867 (not (= lambda!355852 lambda!355805))))

(assert (=> bs!1617862 (not (= lambda!355852 lambda!355822))))

(assert (=> bs!1617856 (= (and (= (regOne!33182 (regOne!33183 lt!2379346)) lt!2379353) (= (regTwo!33182 (regOne!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355852 lambda!355718))))

(assert (=> bs!1617872 (not (= lambda!355852 lambda!355714))))

(declare-fun bs!1617876 () Bool)

(assert (= bs!1617876 (and b!6431953 b!6431947)))

(assert (=> bs!1617876 (not (= lambda!355852 lambda!355851))))

(declare-fun bs!1617877 () Bool)

(assert (= bs!1617877 (and b!6431953 d!2015829)))

(assert (=> bs!1617877 (not (= lambda!355852 lambda!355796))))

(assert (=> bs!1617877 (= (and (= (regOne!33182 (regOne!33183 lt!2379346)) (regOne!33182 r!7292)) (= (regTwo!33182 (regOne!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355852 lambda!355797))))

(assert (=> b!6431953 true))

(assert (=> b!6431953 true))

(declare-fun b!6431944 () Bool)

(declare-fun e!3901886 () Bool)

(declare-fun e!3901892 () Bool)

(assert (=> b!6431944 (= e!3901886 e!3901892)))

(declare-fun res!2643872 () Bool)

(assert (=> b!6431944 (= res!2643872 (matchRSpec!3436 (regOne!33183 (regOne!33183 lt!2379346)) s!2326))))

(assert (=> b!6431944 (=> res!2643872 e!3901892)))

(declare-fun bm!553298 () Bool)

(declare-fun call!553304 () Bool)

(assert (=> bm!553298 (= call!553304 (isEmpty!37350 s!2326))))

(declare-fun b!6431945 () Bool)

(declare-fun res!2643870 () Bool)

(declare-fun e!3901890 () Bool)

(assert (=> b!6431945 (=> res!2643870 e!3901890)))

(assert (=> b!6431945 (= res!2643870 call!553304)))

(declare-fun e!3901889 () Bool)

(assert (=> b!6431945 (= e!3901889 e!3901890)))

(declare-fun b!6431946 () Bool)

(declare-fun e!3901888 () Bool)

(assert (=> b!6431946 (= e!3901888 (= s!2326 (Cons!65180 (c!1175066 (regOne!33183 lt!2379346)) Nil!65180)))))

(declare-fun call!553303 () Bool)

(assert (=> b!6431947 (= e!3901890 call!553303)))

(declare-fun b!6431948 () Bool)

(declare-fun e!3901891 () Bool)

(assert (=> b!6431948 (= e!3901891 call!553304)))

(declare-fun b!6431949 () Bool)

(assert (=> b!6431949 (= e!3901886 e!3901889)))

(declare-fun c!1175555 () Bool)

(assert (=> b!6431949 (= c!1175555 ((_ is Star!16335) (regOne!33183 lt!2379346)))))

(declare-fun d!2016295 () Bool)

(declare-fun c!1175557 () Bool)

(assert (=> d!2016295 (= c!1175557 ((_ is EmptyExpr!16335) (regOne!33183 lt!2379346)))))

(assert (=> d!2016295 (= (matchRSpec!3436 (regOne!33183 lt!2379346) s!2326) e!3901891)))

(declare-fun b!6431950 () Bool)

(declare-fun c!1175554 () Bool)

(assert (=> b!6431950 (= c!1175554 ((_ is Union!16335) (regOne!33183 lt!2379346)))))

(assert (=> b!6431950 (= e!3901888 e!3901886)))

(declare-fun b!6431951 () Bool)

(assert (=> b!6431951 (= e!3901892 (matchRSpec!3436 (regTwo!33183 (regOne!33183 lt!2379346)) s!2326))))

(declare-fun bm!553299 () Bool)

(assert (=> bm!553299 (= call!553303 (Exists!3405 (ite c!1175555 lambda!355851 lambda!355852)))))

(declare-fun b!6431952 () Bool)

(declare-fun c!1175556 () Bool)

(assert (=> b!6431952 (= c!1175556 ((_ is ElementMatch!16335) (regOne!33183 lt!2379346)))))

(declare-fun e!3901887 () Bool)

(assert (=> b!6431952 (= e!3901887 e!3901888)))

(assert (=> b!6431953 (= e!3901889 call!553303)))

(declare-fun b!6431954 () Bool)

(assert (=> b!6431954 (= e!3901891 e!3901887)))

(declare-fun res!2643871 () Bool)

(assert (=> b!6431954 (= res!2643871 (not ((_ is EmptyLang!16335) (regOne!33183 lt!2379346))))))

(assert (=> b!6431954 (=> (not res!2643871) (not e!3901887))))

(assert (= (and d!2016295 c!1175557) b!6431948))

(assert (= (and d!2016295 (not c!1175557)) b!6431954))

(assert (= (and b!6431954 res!2643871) b!6431952))

(assert (= (and b!6431952 c!1175556) b!6431946))

(assert (= (and b!6431952 (not c!1175556)) b!6431950))

(assert (= (and b!6431950 c!1175554) b!6431944))

(assert (= (and b!6431950 (not c!1175554)) b!6431949))

(assert (= (and b!6431944 (not res!2643872)) b!6431951))

(assert (= (and b!6431949 c!1175555) b!6431945))

(assert (= (and b!6431949 (not c!1175555)) b!6431953))

(assert (= (and b!6431945 (not res!2643870)) b!6431947))

(assert (= (or b!6431947 b!6431953) bm!553299))

(assert (= (or b!6431948 b!6431945) bm!553298))

(declare-fun m!7225576 () Bool)

(assert (=> b!6431944 m!7225576))

(assert (=> bm!553298 m!7224146))

(declare-fun m!7225578 () Bool)

(assert (=> b!6431951 m!7225578))

(declare-fun m!7225580 () Bool)

(assert (=> bm!553299 m!7225580))

(assert (=> b!6430856 d!2016295))

(assert (=> b!6431130 d!2015855))

(declare-fun d!2016297 () Bool)

(assert (=> d!2016297 (= (isEmpty!37349 (unfocusZipperList!1756 zl!343)) ((_ is Nil!65181) (unfocusZipperList!1756 zl!343)))))

(assert (=> b!6430679 d!2016297))

(assert (=> bm!553130 d!2016083))

(assert (=> b!6431066 d!2016043))

(assert (=> b!6431066 d!2016017))

(declare-fun bs!1617878 () Bool)

(declare-fun b!6431962 () Bool)

(assert (= bs!1617878 (and b!6431962 d!2015887)))

(declare-fun lambda!355855 () Int)

(assert (=> bs!1617878 (not (= lambda!355855 lambda!355804))))

(declare-fun bs!1617879 () Bool)

(assert (= bs!1617879 (and b!6431962 b!6430115)))

(assert (=> bs!1617879 (not (= lambda!355855 lambda!355717))))

(declare-fun bs!1617880 () Bool)

(assert (= bs!1617880 (and b!6431962 b!6431861)))

(assert (=> bs!1617880 (not (= lambda!355855 lambda!355850))))

(declare-fun bs!1617881 () Bool)

(assert (= bs!1617881 (and b!6431962 d!2016163)))

(assert (=> bs!1617881 (not (= lambda!355855 lambda!355844))))

(declare-fun bs!1617882 () Bool)

(assert (= bs!1617882 (and b!6431962 b!6430094)))

(assert (=> bs!1617882 (not (= lambda!355855 lambda!355719))))

(assert (=> bs!1617882 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regOne!33183 r!7292)) (reg!16664 (regOne!33182 r!7292))) (= (regOne!33183 r!7292) lt!2379353)) (= lambda!355855 lambda!355720))))

(declare-fun bs!1617883 () Bool)

(assert (= bs!1617883 (and b!6431962 d!2015881)))

(assert (=> bs!1617883 (not (= lambda!355855 lambda!355802))))

(declare-fun bs!1617884 () Bool)

(assert (= bs!1617884 (and b!6431962 d!2015991)))

(assert (=> bs!1617884 (not (= lambda!355855 lambda!355828))))

(declare-fun bs!1617885 () Bool)

(assert (= bs!1617885 (and b!6431962 d!2015957)))

(assert (=> bs!1617885 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regOne!33183 r!7292)) (reg!16664 (regOne!33182 r!7292))) (= (regOne!33183 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355855 lambda!355823))))

(declare-fun bs!1617886 () Bool)

(assert (= bs!1617886 (and b!6431962 d!2015895)))

(assert (=> bs!1617886 (not (= lambda!355855 lambda!355811))))

(declare-fun bs!1617887 () Bool)

(assert (= bs!1617887 (and b!6431962 b!6430859)))

(assert (=> bs!1617887 (= (and (= (reg!16664 (regOne!33183 r!7292)) (reg!16664 lt!2379346)) (= (regOne!33183 r!7292) lt!2379346)) (= lambda!355855 lambda!355779))))

(declare-fun bs!1617888 () Bool)

(assert (= bs!1617888 (and b!6431962 d!2015879)))

(assert (=> bs!1617888 (not (= lambda!355855 lambda!355801))))

(declare-fun bs!1617889 () Bool)

(assert (= bs!1617889 (and b!6431962 d!2016021)))

(assert (=> bs!1617889 (not (= lambda!355855 lambda!355832))))

(declare-fun bs!1617890 () Bool)

(assert (= bs!1617890 (and b!6431962 d!2015889)))

(assert (=> bs!1617890 (not (= lambda!355855 lambda!355806))))

(assert (=> bs!1617883 (not (= lambda!355855 lambda!355803))))

(declare-fun bs!1617891 () Bool)

(assert (= bs!1617891 (and b!6431962 b!6430810)))

(assert (=> bs!1617891 (= (and (= (reg!16664 (regOne!33183 r!7292)) (reg!16664 r!7292)) (= (regOne!33183 r!7292) r!7292)) (= lambda!355855 lambda!355772))))

(declare-fun bs!1617892 () Bool)

(assert (= bs!1617892 (and b!6431962 b!6431148)))

(assert (=> bs!1617892 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regOne!33183 r!7292)) (reg!16664 lt!2379353)) (= (regOne!33183 r!7292) lt!2379353)) (= lambda!355855 lambda!355813))))

(assert (=> bs!1617882 (not (= lambda!355855 lambda!355721))))

(declare-fun bs!1617893 () Bool)

(assert (= bs!1617893 (and b!6431962 d!2015793)))

(assert (=> bs!1617893 (not (= lambda!355855 lambda!355786))))

(declare-fun bs!1617894 () Bool)

(assert (= bs!1617894 (and b!6431962 b!6431953)))

(assert (=> bs!1617894 (not (= lambda!355855 lambda!355852))))

(declare-fun bs!1617895 () Bool)

(assert (= bs!1617895 (and b!6431962 b!6431154)))

(assert (=> bs!1617895 (not (= lambda!355855 lambda!355814))))

(declare-fun bs!1617896 () Bool)

(assert (= bs!1617896 (and b!6431962 b!6430128)))

(assert (=> bs!1617896 (not (= lambda!355855 lambda!355715))))

(declare-fun bs!1617897 () Bool)

(assert (= bs!1617897 (and b!6431962 b!6431855)))

(assert (=> bs!1617897 (= (and (= (reg!16664 (regOne!33183 r!7292)) (reg!16664 (regTwo!33183 r!7292))) (= (regOne!33183 r!7292) (regTwo!33183 r!7292))) (= lambda!355855 lambda!355849))))

(assert (=> bs!1617884 (not (= lambda!355855 lambda!355829))))

(declare-fun bs!1617898 () Bool)

(assert (= bs!1617898 (and b!6431962 b!6430816)))

(assert (=> bs!1617898 (not (= lambda!355855 lambda!355773))))

(assert (=> bs!1617886 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regOne!33183 r!7292)) (reg!16664 (regOne!33182 r!7292))) (= (regOne!33183 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355855 lambda!355812))))

(declare-fun bs!1617899 () Bool)

(assert (= bs!1617899 (and b!6431962 b!6430865)))

(assert (=> bs!1617899 (not (= lambda!355855 lambda!355780))))

(assert (=> bs!1617890 (not (= lambda!355855 lambda!355805))))

(assert (=> bs!1617885 (not (= lambda!355855 lambda!355822))))

(assert (=> bs!1617879 (not (= lambda!355855 lambda!355718))))

(assert (=> bs!1617896 (not (= lambda!355855 lambda!355714))))

(declare-fun bs!1617900 () Bool)

(assert (= bs!1617900 (and b!6431962 b!6431947)))

(assert (=> bs!1617900 (= (and (= (reg!16664 (regOne!33183 r!7292)) (reg!16664 (regOne!33183 lt!2379346))) (= (regOne!33183 r!7292) (regOne!33183 lt!2379346))) (= lambda!355855 lambda!355851))))

(declare-fun bs!1617901 () Bool)

(assert (= bs!1617901 (and b!6431962 d!2015829)))

(assert (=> bs!1617901 (not (= lambda!355855 lambda!355796))))

(assert (=> bs!1617901 (not (= lambda!355855 lambda!355797))))

(assert (=> b!6431962 true))

(assert (=> b!6431962 true))

(declare-fun bs!1617903 () Bool)

(declare-fun b!6431968 () Bool)

(assert (= bs!1617903 (and b!6431968 b!6431962)))

(declare-fun lambda!355859 () Int)

(assert (=> bs!1617903 (not (= lambda!355859 lambda!355855))))

(declare-fun bs!1617905 () Bool)

(assert (= bs!1617905 (and b!6431968 d!2015887)))

(assert (=> bs!1617905 (not (= lambda!355859 lambda!355804))))

(declare-fun bs!1617906 () Bool)

(assert (= bs!1617906 (and b!6431968 b!6430115)))

(assert (=> bs!1617906 (not (= lambda!355859 lambda!355717))))

(declare-fun bs!1617908 () Bool)

(assert (= bs!1617908 (and b!6431968 b!6431861)))

(assert (=> bs!1617908 (= (and (= (regOne!33182 (regOne!33183 r!7292)) (regOne!33182 (regTwo!33183 r!7292))) (= (regTwo!33182 (regOne!33183 r!7292)) (regTwo!33182 (regTwo!33183 r!7292)))) (= lambda!355859 lambda!355850))))

(declare-fun bs!1617909 () Bool)

(assert (= bs!1617909 (and b!6431968 d!2016163)))

(assert (=> bs!1617909 (not (= lambda!355859 lambda!355844))))

(declare-fun bs!1617911 () Bool)

(assert (= bs!1617911 (and b!6431968 b!6430094)))

(assert (=> bs!1617911 (not (= lambda!355859 lambda!355719))))

(assert (=> bs!1617911 (not (= lambda!355859 lambda!355720))))

(declare-fun bs!1617912 () Bool)

(assert (= bs!1617912 (and b!6431968 d!2015881)))

(assert (=> bs!1617912 (not (= lambda!355859 lambda!355802))))

(declare-fun bs!1617913 () Bool)

(assert (= bs!1617913 (and b!6431968 d!2015991)))

(assert (=> bs!1617913 (not (= lambda!355859 lambda!355828))))

(declare-fun bs!1617915 () Bool)

(assert (= bs!1617915 (and b!6431968 d!2015957)))

(assert (=> bs!1617915 (not (= lambda!355859 lambda!355823))))

(declare-fun bs!1617916 () Bool)

(assert (= bs!1617916 (and b!6431968 d!2015895)))

(assert (=> bs!1617916 (not (= lambda!355859 lambda!355811))))

(declare-fun bs!1617918 () Bool)

(assert (= bs!1617918 (and b!6431968 b!6430859)))

(assert (=> bs!1617918 (not (= lambda!355859 lambda!355779))))

(declare-fun bs!1617919 () Bool)

(assert (= bs!1617919 (and b!6431968 d!2015879)))

(assert (=> bs!1617919 (not (= lambda!355859 lambda!355801))))

(declare-fun bs!1617921 () Bool)

(assert (= bs!1617921 (and b!6431968 d!2016021)))

(assert (=> bs!1617921 (not (= lambda!355859 lambda!355832))))

(declare-fun bs!1617922 () Bool)

(assert (= bs!1617922 (and b!6431968 d!2015889)))

(assert (=> bs!1617922 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regOne!33183 r!7292)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regOne!33183 r!7292)) lt!2379353)) (= lambda!355859 lambda!355806))))

(assert (=> bs!1617912 (= (and (= (regOne!33182 (regOne!33183 r!7292)) lt!2379353) (= (regTwo!33182 (regOne!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355859 lambda!355803))))

(declare-fun bs!1617924 () Bool)

(assert (= bs!1617924 (and b!6431968 b!6430810)))

(assert (=> bs!1617924 (not (= lambda!355859 lambda!355772))))

(declare-fun bs!1617926 () Bool)

(assert (= bs!1617926 (and b!6431968 b!6431148)))

(assert (=> bs!1617926 (not (= lambda!355859 lambda!355813))))

(assert (=> bs!1617911 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regOne!33183 r!7292)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regOne!33183 r!7292)) lt!2379353)) (= lambda!355859 lambda!355721))))

(declare-fun bs!1617927 () Bool)

(assert (= bs!1617927 (and b!6431968 d!2015793)))

(assert (=> bs!1617927 (not (= lambda!355859 lambda!355786))))

(declare-fun bs!1617928 () Bool)

(assert (= bs!1617928 (and b!6431968 b!6431953)))

(assert (=> bs!1617928 (= (and (= (regOne!33182 (regOne!33183 r!7292)) (regOne!33182 (regOne!33183 lt!2379346))) (= (regTwo!33182 (regOne!33183 r!7292)) (regTwo!33182 (regOne!33183 lt!2379346)))) (= lambda!355859 lambda!355852))))

(declare-fun bs!1617929 () Bool)

(assert (= bs!1617929 (and b!6431968 b!6431154)))

(assert (=> bs!1617929 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regOne!33183 r!7292)) (regOne!33182 lt!2379353)) (= (regTwo!33182 (regOne!33183 r!7292)) (regTwo!33182 lt!2379353))) (= lambda!355859 lambda!355814))))

(declare-fun bs!1617931 () Bool)

(assert (= bs!1617931 (and b!6431968 b!6430128)))

(assert (=> bs!1617931 (= (and (= (regOne!33182 (regOne!33183 r!7292)) (regOne!33182 r!7292)) (= (regTwo!33182 (regOne!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355859 lambda!355715))))

(declare-fun bs!1617932 () Bool)

(assert (= bs!1617932 (and b!6431968 b!6431855)))

(assert (=> bs!1617932 (not (= lambda!355859 lambda!355849))))

(assert (=> bs!1617913 (= (and (= (regOne!33182 (regOne!33183 r!7292)) lt!2379353) (= (regTwo!33182 (regOne!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355859 lambda!355829))))

(declare-fun bs!1617933 () Bool)

(assert (= bs!1617933 (and b!6431968 b!6430816)))

(assert (=> bs!1617933 (= (and (= (regOne!33182 (regOne!33183 r!7292)) (regOne!33182 r!7292)) (= (regTwo!33182 (regOne!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355859 lambda!355773))))

(assert (=> bs!1617916 (not (= lambda!355859 lambda!355812))))

(declare-fun bs!1617935 () Bool)

(assert (= bs!1617935 (and b!6431968 b!6430865)))

(assert (=> bs!1617935 (= (and (= (regOne!33182 (regOne!33183 r!7292)) (regOne!33182 lt!2379346)) (= (regTwo!33182 (regOne!33183 r!7292)) (regTwo!33182 lt!2379346))) (= lambda!355859 lambda!355780))))

(assert (=> bs!1617922 (not (= lambda!355859 lambda!355805))))

(assert (=> bs!1617915 (not (= lambda!355859 lambda!355822))))

(assert (=> bs!1617906 (= (and (= (regOne!33182 (regOne!33183 r!7292)) lt!2379353) (= (regTwo!33182 (regOne!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355859 lambda!355718))))

(assert (=> bs!1617931 (not (= lambda!355859 lambda!355714))))

(declare-fun bs!1617938 () Bool)

(assert (= bs!1617938 (and b!6431968 b!6431947)))

(assert (=> bs!1617938 (not (= lambda!355859 lambda!355851))))

(declare-fun bs!1617939 () Bool)

(assert (= bs!1617939 (and b!6431968 d!2015829)))

(assert (=> bs!1617939 (not (= lambda!355859 lambda!355796))))

(assert (=> bs!1617939 (= (and (= (regOne!33182 (regOne!33183 r!7292)) (regOne!33182 r!7292)) (= (regTwo!33182 (regOne!33183 r!7292)) (regTwo!33182 r!7292))) (= lambda!355859 lambda!355797))))

(assert (=> b!6431968 true))

(assert (=> b!6431968 true))

(declare-fun b!6431959 () Bool)

(declare-fun e!3901895 () Bool)

(declare-fun e!3901901 () Bool)

(assert (=> b!6431959 (= e!3901895 e!3901901)))

(declare-fun res!2643879 () Bool)

(assert (=> b!6431959 (= res!2643879 (matchRSpec!3436 (regOne!33183 (regOne!33183 r!7292)) s!2326))))

(assert (=> b!6431959 (=> res!2643879 e!3901901)))

(declare-fun bm!553300 () Bool)

(declare-fun call!553306 () Bool)

(assert (=> bm!553300 (= call!553306 (isEmpty!37350 s!2326))))

(declare-fun b!6431960 () Bool)

(declare-fun res!2643877 () Bool)

(declare-fun e!3901899 () Bool)

(assert (=> b!6431960 (=> res!2643877 e!3901899)))

(assert (=> b!6431960 (= res!2643877 call!553306)))

(declare-fun e!3901898 () Bool)

(assert (=> b!6431960 (= e!3901898 e!3901899)))

(declare-fun b!6431961 () Bool)

(declare-fun e!3901897 () Bool)

(assert (=> b!6431961 (= e!3901897 (= s!2326 (Cons!65180 (c!1175066 (regOne!33183 r!7292)) Nil!65180)))))

(declare-fun call!553305 () Bool)

(assert (=> b!6431962 (= e!3901899 call!553305)))

(declare-fun b!6431963 () Bool)

(declare-fun e!3901900 () Bool)

(assert (=> b!6431963 (= e!3901900 call!553306)))

(declare-fun b!6431964 () Bool)

(assert (=> b!6431964 (= e!3901895 e!3901898)))

(declare-fun c!1175559 () Bool)

(assert (=> b!6431964 (= c!1175559 ((_ is Star!16335) (regOne!33183 r!7292)))))

(declare-fun d!2016299 () Bool)

(declare-fun c!1175561 () Bool)

(assert (=> d!2016299 (= c!1175561 ((_ is EmptyExpr!16335) (regOne!33183 r!7292)))))

(assert (=> d!2016299 (= (matchRSpec!3436 (regOne!33183 r!7292) s!2326) e!3901900)))

(declare-fun b!6431965 () Bool)

(declare-fun c!1175558 () Bool)

(assert (=> b!6431965 (= c!1175558 ((_ is Union!16335) (regOne!33183 r!7292)))))

(assert (=> b!6431965 (= e!3901897 e!3901895)))

(declare-fun b!6431966 () Bool)

(assert (=> b!6431966 (= e!3901901 (matchRSpec!3436 (regTwo!33183 (regOne!33183 r!7292)) s!2326))))

(declare-fun bm!553301 () Bool)

(assert (=> bm!553301 (= call!553305 (Exists!3405 (ite c!1175559 lambda!355855 lambda!355859)))))

(declare-fun b!6431967 () Bool)

(declare-fun c!1175560 () Bool)

(assert (=> b!6431967 (= c!1175560 ((_ is ElementMatch!16335) (regOne!33183 r!7292)))))

(declare-fun e!3901896 () Bool)

(assert (=> b!6431967 (= e!3901896 e!3901897)))

(assert (=> b!6431968 (= e!3901898 call!553305)))

(declare-fun b!6431969 () Bool)

(assert (=> b!6431969 (= e!3901900 e!3901896)))

(declare-fun res!2643878 () Bool)

(assert (=> b!6431969 (= res!2643878 (not ((_ is EmptyLang!16335) (regOne!33183 r!7292))))))

(assert (=> b!6431969 (=> (not res!2643878) (not e!3901896))))

(assert (= (and d!2016299 c!1175561) b!6431963))

(assert (= (and d!2016299 (not c!1175561)) b!6431969))

(assert (= (and b!6431969 res!2643878) b!6431967))

(assert (= (and b!6431967 c!1175560) b!6431961))

(assert (= (and b!6431967 (not c!1175560)) b!6431965))

(assert (= (and b!6431965 c!1175558) b!6431959))

(assert (= (and b!6431965 (not c!1175558)) b!6431964))

(assert (= (and b!6431959 (not res!2643879)) b!6431966))

(assert (= (and b!6431964 c!1175559) b!6431960))

(assert (= (and b!6431964 (not c!1175559)) b!6431968))

(assert (= (and b!6431960 (not res!2643877)) b!6431962))

(assert (= (or b!6431962 b!6431968) bm!553301))

(assert (= (or b!6431963 b!6431960) bm!553300))

(declare-fun m!7225582 () Bool)

(assert (=> b!6431959 m!7225582))

(assert (=> bm!553300 m!7224146))

(declare-fun m!7225584 () Bool)

(assert (=> b!6431966 m!7225584))

(declare-fun m!7225586 () Bool)

(assert (=> bm!553301 m!7225586))

(assert (=> b!6430807 d!2016299))

(declare-fun bs!1617943 () Bool)

(declare-fun b!6431977 () Bool)

(assert (= bs!1617943 (and b!6431977 b!6431962)))

(declare-fun lambda!355860 () Int)

(assert (=> bs!1617943 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regTwo!33183 lt!2379353)) (reg!16664 (regOne!33183 r!7292))) (= (regTwo!33183 lt!2379353) (regOne!33183 r!7292))) (= lambda!355860 lambda!355855))))

(declare-fun bs!1617944 () Bool)

(assert (= bs!1617944 (and b!6431977 d!2015887)))

(assert (=> bs!1617944 (not (= lambda!355860 lambda!355804))))

(declare-fun bs!1617945 () Bool)

(assert (= bs!1617945 (and b!6431977 b!6430115)))

(assert (=> bs!1617945 (not (= lambda!355860 lambda!355717))))

(declare-fun bs!1617946 () Bool)

(assert (= bs!1617946 (and b!6431977 b!6431861)))

(assert (=> bs!1617946 (not (= lambda!355860 lambda!355850))))

(declare-fun bs!1617947 () Bool)

(assert (= bs!1617947 (and b!6431977 d!2016163)))

(assert (=> bs!1617947 (not (= lambda!355860 lambda!355844))))

(declare-fun bs!1617948 () Bool)

(assert (= bs!1617948 (and b!6431977 b!6430094)))

(assert (=> bs!1617948 (not (= lambda!355860 lambda!355719))))

(assert (=> bs!1617948 (= (and (= (reg!16664 (regTwo!33183 lt!2379353)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33183 lt!2379353) lt!2379353)) (= lambda!355860 lambda!355720))))

(declare-fun bs!1617949 () Bool)

(assert (= bs!1617949 (and b!6431977 d!2015881)))

(assert (=> bs!1617949 (not (= lambda!355860 lambda!355802))))

(declare-fun bs!1617950 () Bool)

(assert (= bs!1617950 (and b!6431977 d!2015991)))

(assert (=> bs!1617950 (not (= lambda!355860 lambda!355828))))

(declare-fun bs!1617951 () Bool)

(assert (= bs!1617951 (and b!6431977 d!2015957)))

(assert (=> bs!1617951 (= (and (= (reg!16664 (regTwo!33183 lt!2379353)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33183 lt!2379353) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355860 lambda!355823))))

(declare-fun bs!1617952 () Bool)

(assert (= bs!1617952 (and b!6431977 d!2015895)))

(assert (=> bs!1617952 (not (= lambda!355860 lambda!355811))))

(declare-fun bs!1617953 () Bool)

(assert (= bs!1617953 (and b!6431977 b!6430859)))

(assert (=> bs!1617953 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regTwo!33183 lt!2379353)) (reg!16664 lt!2379346)) (= (regTwo!33183 lt!2379353) lt!2379346)) (= lambda!355860 lambda!355779))))

(declare-fun bs!1617955 () Bool)

(assert (= bs!1617955 (and b!6431977 d!2015879)))

(assert (=> bs!1617955 (not (= lambda!355860 lambda!355801))))

(declare-fun bs!1617956 () Bool)

(assert (= bs!1617956 (and b!6431977 d!2016021)))

(assert (=> bs!1617956 (not (= lambda!355860 lambda!355832))))

(declare-fun bs!1617957 () Bool)

(assert (= bs!1617957 (and b!6431977 d!2015889)))

(assert (=> bs!1617957 (not (= lambda!355860 lambda!355806))))

(assert (=> bs!1617949 (not (= lambda!355860 lambda!355803))))

(declare-fun bs!1617958 () Bool)

(assert (= bs!1617958 (and b!6431977 b!6430810)))

(assert (=> bs!1617958 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regTwo!33183 lt!2379353)) (reg!16664 r!7292)) (= (regTwo!33183 lt!2379353) r!7292)) (= lambda!355860 lambda!355772))))

(declare-fun bs!1617959 () Bool)

(assert (= bs!1617959 (and b!6431977 b!6431148)))

(assert (=> bs!1617959 (= (and (= (reg!16664 (regTwo!33183 lt!2379353)) (reg!16664 lt!2379353)) (= (regTwo!33183 lt!2379353) lt!2379353)) (= lambda!355860 lambda!355813))))

(assert (=> bs!1617948 (not (= lambda!355860 lambda!355721))))

(declare-fun bs!1617960 () Bool)

(assert (= bs!1617960 (and b!6431977 d!2015793)))

(assert (=> bs!1617960 (not (= lambda!355860 lambda!355786))))

(declare-fun bs!1617961 () Bool)

(assert (= bs!1617961 (and b!6431977 b!6431953)))

(assert (=> bs!1617961 (not (= lambda!355860 lambda!355852))))

(declare-fun bs!1617962 () Bool)

(assert (= bs!1617962 (and b!6431977 b!6431154)))

(assert (=> bs!1617962 (not (= lambda!355860 lambda!355814))))

(declare-fun bs!1617963 () Bool)

(assert (= bs!1617963 (and b!6431977 b!6430128)))

(assert (=> bs!1617963 (not (= lambda!355860 lambda!355715))))

(declare-fun bs!1617964 () Bool)

(assert (= bs!1617964 (and b!6431977 b!6431855)))

(assert (=> bs!1617964 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regTwo!33183 lt!2379353)) (reg!16664 (regTwo!33183 r!7292))) (= (regTwo!33183 lt!2379353) (regTwo!33183 r!7292))) (= lambda!355860 lambda!355849))))

(assert (=> bs!1617950 (not (= lambda!355860 lambda!355829))))

(declare-fun bs!1617965 () Bool)

(assert (= bs!1617965 (and b!6431977 b!6431968)))

(assert (=> bs!1617965 (not (= lambda!355860 lambda!355859))))

(declare-fun bs!1617966 () Bool)

(assert (= bs!1617966 (and b!6431977 b!6430816)))

(assert (=> bs!1617966 (not (= lambda!355860 lambda!355773))))

(assert (=> bs!1617952 (= (and (= (reg!16664 (regTwo!33183 lt!2379353)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33183 lt!2379353) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355860 lambda!355812))))

(declare-fun bs!1617967 () Bool)

(assert (= bs!1617967 (and b!6431977 b!6430865)))

(assert (=> bs!1617967 (not (= lambda!355860 lambda!355780))))

(assert (=> bs!1617957 (not (= lambda!355860 lambda!355805))))

(assert (=> bs!1617951 (not (= lambda!355860 lambda!355822))))

(assert (=> bs!1617945 (not (= lambda!355860 lambda!355718))))

(assert (=> bs!1617963 (not (= lambda!355860 lambda!355714))))

(declare-fun bs!1617968 () Bool)

(assert (= bs!1617968 (and b!6431977 b!6431947)))

(assert (=> bs!1617968 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regTwo!33183 lt!2379353)) (reg!16664 (regOne!33183 lt!2379346))) (= (regTwo!33183 lt!2379353) (regOne!33183 lt!2379346))) (= lambda!355860 lambda!355851))))

(declare-fun bs!1617969 () Bool)

(assert (= bs!1617969 (and b!6431977 d!2015829)))

(assert (=> bs!1617969 (not (= lambda!355860 lambda!355796))))

(assert (=> bs!1617969 (not (= lambda!355860 lambda!355797))))

(assert (=> b!6431977 true))

(assert (=> b!6431977 true))

(declare-fun bs!1617970 () Bool)

(declare-fun b!6431983 () Bool)

(assert (= bs!1617970 (and b!6431983 b!6431962)))

(declare-fun lambda!355862 () Int)

(assert (=> bs!1617970 (not (= lambda!355862 lambda!355855))))

(declare-fun bs!1617971 () Bool)

(assert (= bs!1617971 (and b!6431983 d!2015887)))

(assert (=> bs!1617971 (not (= lambda!355862 lambda!355804))))

(declare-fun bs!1617972 () Bool)

(assert (= bs!1617972 (and b!6431983 b!6431977)))

(assert (=> bs!1617972 (not (= lambda!355862 lambda!355860))))

(declare-fun bs!1617973 () Bool)

(assert (= bs!1617973 (and b!6431983 b!6430115)))

(assert (=> bs!1617973 (not (= lambda!355862 lambda!355717))))

(declare-fun bs!1617974 () Bool)

(assert (= bs!1617974 (and b!6431983 b!6431861)))

(assert (=> bs!1617974 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regTwo!33183 lt!2379353)) (regOne!33182 (regTwo!33183 r!7292))) (= (regTwo!33182 (regTwo!33183 lt!2379353)) (regTwo!33182 (regTwo!33183 r!7292)))) (= lambda!355862 lambda!355850))))

(declare-fun bs!1617975 () Bool)

(assert (= bs!1617975 (and b!6431983 d!2016163)))

(assert (=> bs!1617975 (not (= lambda!355862 lambda!355844))))

(declare-fun bs!1617976 () Bool)

(assert (= bs!1617976 (and b!6431983 b!6430094)))

(assert (=> bs!1617976 (not (= lambda!355862 lambda!355719))))

(assert (=> bs!1617976 (not (= lambda!355862 lambda!355720))))

(declare-fun bs!1617977 () Bool)

(assert (= bs!1617977 (and b!6431983 d!2015881)))

(assert (=> bs!1617977 (not (= lambda!355862 lambda!355802))))

(declare-fun bs!1617978 () Bool)

(assert (= bs!1617978 (and b!6431983 d!2015991)))

(assert (=> bs!1617978 (not (= lambda!355862 lambda!355828))))

(declare-fun bs!1617979 () Bool)

(assert (= bs!1617979 (and b!6431983 d!2015957)))

(assert (=> bs!1617979 (not (= lambda!355862 lambda!355823))))

(declare-fun bs!1617980 () Bool)

(assert (= bs!1617980 (and b!6431983 d!2015895)))

(assert (=> bs!1617980 (not (= lambda!355862 lambda!355811))))

(declare-fun bs!1617981 () Bool)

(assert (= bs!1617981 (and b!6431983 b!6430859)))

(assert (=> bs!1617981 (not (= lambda!355862 lambda!355779))))

(declare-fun bs!1617982 () Bool)

(assert (= bs!1617982 (and b!6431983 d!2015879)))

(assert (=> bs!1617982 (not (= lambda!355862 lambda!355801))))

(declare-fun bs!1617983 () Bool)

(assert (= bs!1617983 (and b!6431983 d!2016021)))

(assert (=> bs!1617983 (not (= lambda!355862 lambda!355832))))

(declare-fun bs!1617984 () Bool)

(assert (= bs!1617984 (and b!6431983 d!2015889)))

(assert (=> bs!1617984 (= (and (= (regOne!33182 (regTwo!33183 lt!2379353)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regTwo!33183 lt!2379353)) lt!2379353)) (= lambda!355862 lambda!355806))))

(assert (=> bs!1617977 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regTwo!33183 lt!2379353)) lt!2379353) (= (regTwo!33182 (regTwo!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355862 lambda!355803))))

(declare-fun bs!1617985 () Bool)

(assert (= bs!1617985 (and b!6431983 b!6430810)))

(assert (=> bs!1617985 (not (= lambda!355862 lambda!355772))))

(declare-fun bs!1617986 () Bool)

(assert (= bs!1617986 (and b!6431983 b!6431148)))

(assert (=> bs!1617986 (not (= lambda!355862 lambda!355813))))

(assert (=> bs!1617976 (= (and (= (regOne!33182 (regTwo!33183 lt!2379353)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regTwo!33183 lt!2379353)) lt!2379353)) (= lambda!355862 lambda!355721))))

(declare-fun bs!1617987 () Bool)

(assert (= bs!1617987 (and b!6431983 d!2015793)))

(assert (=> bs!1617987 (not (= lambda!355862 lambda!355786))))

(declare-fun bs!1617988 () Bool)

(assert (= bs!1617988 (and b!6431983 b!6431953)))

(assert (=> bs!1617988 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regTwo!33183 lt!2379353)) (regOne!33182 (regOne!33183 lt!2379346))) (= (regTwo!33182 (regTwo!33183 lt!2379353)) (regTwo!33182 (regOne!33183 lt!2379346)))) (= lambda!355862 lambda!355852))))

(declare-fun bs!1617989 () Bool)

(assert (= bs!1617989 (and b!6431983 b!6431154)))

(assert (=> bs!1617989 (= (and (= (regOne!33182 (regTwo!33183 lt!2379353)) (regOne!33182 lt!2379353)) (= (regTwo!33182 (regTwo!33183 lt!2379353)) (regTwo!33182 lt!2379353))) (= lambda!355862 lambda!355814))))

(declare-fun bs!1617990 () Bool)

(assert (= bs!1617990 (and b!6431983 b!6430128)))

(assert (=> bs!1617990 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regTwo!33183 lt!2379353)) (regOne!33182 r!7292)) (= (regTwo!33182 (regTwo!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355862 lambda!355715))))

(declare-fun bs!1617991 () Bool)

(assert (= bs!1617991 (and b!6431983 b!6431855)))

(assert (=> bs!1617991 (not (= lambda!355862 lambda!355849))))

(assert (=> bs!1617978 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regTwo!33183 lt!2379353)) lt!2379353) (= (regTwo!33182 (regTwo!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355862 lambda!355829))))

(declare-fun bs!1617992 () Bool)

(assert (= bs!1617992 (and b!6431983 b!6431968)))

(assert (=> bs!1617992 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regTwo!33183 lt!2379353)) (regOne!33182 (regOne!33183 r!7292))) (= (regTwo!33182 (regTwo!33183 lt!2379353)) (regTwo!33182 (regOne!33183 r!7292)))) (= lambda!355862 lambda!355859))))

(declare-fun bs!1617993 () Bool)

(assert (= bs!1617993 (and b!6431983 b!6430816)))

(assert (=> bs!1617993 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regTwo!33183 lt!2379353)) (regOne!33182 r!7292)) (= (regTwo!33182 (regTwo!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355862 lambda!355773))))

(assert (=> bs!1617980 (not (= lambda!355862 lambda!355812))))

(declare-fun bs!1617994 () Bool)

(assert (= bs!1617994 (and b!6431983 b!6430865)))

(assert (=> bs!1617994 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regTwo!33183 lt!2379353)) (regOne!33182 lt!2379346)) (= (regTwo!33182 (regTwo!33183 lt!2379353)) (regTwo!33182 lt!2379346))) (= lambda!355862 lambda!355780))))

(assert (=> bs!1617984 (not (= lambda!355862 lambda!355805))))

(assert (=> bs!1617979 (not (= lambda!355862 lambda!355822))))

(assert (=> bs!1617973 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regTwo!33183 lt!2379353)) lt!2379353) (= (regTwo!33182 (regTwo!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355862 lambda!355718))))

(assert (=> bs!1617990 (not (= lambda!355862 lambda!355714))))

(declare-fun bs!1617995 () Bool)

(assert (= bs!1617995 (and b!6431983 b!6431947)))

(assert (=> bs!1617995 (not (= lambda!355862 lambda!355851))))

(declare-fun bs!1617996 () Bool)

(assert (= bs!1617996 (and b!6431983 d!2015829)))

(assert (=> bs!1617996 (not (= lambda!355862 lambda!355796))))

(assert (=> bs!1617996 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regTwo!33183 lt!2379353)) (regOne!33182 r!7292)) (= (regTwo!33182 (regTwo!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355862 lambda!355797))))

(assert (=> b!6431983 true))

(assert (=> b!6431983 true))

(declare-fun b!6431974 () Bool)

(declare-fun e!3901904 () Bool)

(declare-fun e!3901910 () Bool)

(assert (=> b!6431974 (= e!3901904 e!3901910)))

(declare-fun res!2643886 () Bool)

(assert (=> b!6431974 (= res!2643886 (matchRSpec!3436 (regOne!33183 (regTwo!33183 lt!2379353)) (_1!36617 lt!2379368)))))

(assert (=> b!6431974 (=> res!2643886 e!3901910)))

(declare-fun bm!553302 () Bool)

(declare-fun call!553308 () Bool)

(assert (=> bm!553302 (= call!553308 (isEmpty!37350 (_1!36617 lt!2379368)))))

(declare-fun b!6431975 () Bool)

(declare-fun res!2643884 () Bool)

(declare-fun e!3901908 () Bool)

(assert (=> b!6431975 (=> res!2643884 e!3901908)))

(assert (=> b!6431975 (= res!2643884 call!553308)))

(declare-fun e!3901907 () Bool)

(assert (=> b!6431975 (= e!3901907 e!3901908)))

(declare-fun b!6431976 () Bool)

(declare-fun e!3901906 () Bool)

(assert (=> b!6431976 (= e!3901906 (= (_1!36617 lt!2379368) (Cons!65180 (c!1175066 (regTwo!33183 lt!2379353)) Nil!65180)))))

(declare-fun call!553307 () Bool)

(assert (=> b!6431977 (= e!3901908 call!553307)))

(declare-fun b!6431978 () Bool)

(declare-fun e!3901909 () Bool)

(assert (=> b!6431978 (= e!3901909 call!553308)))

(declare-fun b!6431979 () Bool)

(assert (=> b!6431979 (= e!3901904 e!3901907)))

(declare-fun c!1175563 () Bool)

(assert (=> b!6431979 (= c!1175563 ((_ is Star!16335) (regTwo!33183 lt!2379353)))))

(declare-fun d!2016301 () Bool)

(declare-fun c!1175565 () Bool)

(assert (=> d!2016301 (= c!1175565 ((_ is EmptyExpr!16335) (regTwo!33183 lt!2379353)))))

(assert (=> d!2016301 (= (matchRSpec!3436 (regTwo!33183 lt!2379353) (_1!36617 lt!2379368)) e!3901909)))

(declare-fun b!6431980 () Bool)

(declare-fun c!1175562 () Bool)

(assert (=> b!6431980 (= c!1175562 ((_ is Union!16335) (regTwo!33183 lt!2379353)))))

(assert (=> b!6431980 (= e!3901906 e!3901904)))

(declare-fun b!6431981 () Bool)

(assert (=> b!6431981 (= e!3901910 (matchRSpec!3436 (regTwo!33183 (regTwo!33183 lt!2379353)) (_1!36617 lt!2379368)))))

(declare-fun bm!553303 () Bool)

(assert (=> bm!553303 (= call!553307 (Exists!3405 (ite c!1175563 lambda!355860 lambda!355862)))))

(declare-fun b!6431982 () Bool)

(declare-fun c!1175564 () Bool)

(assert (=> b!6431982 (= c!1175564 ((_ is ElementMatch!16335) (regTwo!33183 lt!2379353)))))

(declare-fun e!3901905 () Bool)

(assert (=> b!6431982 (= e!3901905 e!3901906)))

(assert (=> b!6431983 (= e!3901907 call!553307)))

(declare-fun b!6431984 () Bool)

(assert (=> b!6431984 (= e!3901909 e!3901905)))

(declare-fun res!2643885 () Bool)

(assert (=> b!6431984 (= res!2643885 (not ((_ is EmptyLang!16335) (regTwo!33183 lt!2379353))))))

(assert (=> b!6431984 (=> (not res!2643885) (not e!3901905))))

(assert (= (and d!2016301 c!1175565) b!6431978))

(assert (= (and d!2016301 (not c!1175565)) b!6431984))

(assert (= (and b!6431984 res!2643885) b!6431982))

(assert (= (and b!6431982 c!1175564) b!6431976))

(assert (= (and b!6431982 (not c!1175564)) b!6431980))

(assert (= (and b!6431980 c!1175562) b!6431974))

(assert (= (and b!6431980 (not c!1175562)) b!6431979))

(assert (= (and b!6431974 (not res!2643886)) b!6431981))

(assert (= (and b!6431979 c!1175563) b!6431975))

(assert (= (and b!6431979 (not c!1175563)) b!6431983))

(assert (= (and b!6431975 (not res!2643884)) b!6431977))

(assert (= (or b!6431977 b!6431983) bm!553303))

(assert (= (or b!6431978 b!6431975) bm!553302))

(declare-fun m!7225598 () Bool)

(assert (=> b!6431974 m!7225598))

(assert (=> bm!553302 m!7223754))

(declare-fun m!7225602 () Bool)

(assert (=> b!6431981 m!7225602))

(declare-fun m!7225604 () Bool)

(assert (=> bm!553303 m!7225604))

(assert (=> b!6431152 d!2016301))

(declare-fun b!6432009 () Bool)

(declare-fun e!3901927 () Bool)

(declare-fun e!3901929 () Bool)

(assert (=> b!6432009 (= e!3901927 e!3901929)))

(declare-fun res!2643901 () Bool)

(assert (=> b!6432009 (= res!2643901 (not (nullable!6328 (reg!16664 (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292))))))))

(assert (=> b!6432009 (=> (not res!2643901) (not e!3901929))))

(declare-fun bm!553308 () Bool)

(declare-fun c!1175572 () Bool)

(declare-fun c!1175571 () Bool)

(declare-fun call!553313 () Bool)

(assert (=> bm!553308 (= call!553313 (validRegex!8071 (ite c!1175571 (reg!16664 (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292))) (ite c!1175572 (regOne!33183 (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292))) (regOne!33182 (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292)))))))))

(declare-fun b!6432010 () Bool)

(declare-fun e!3901926 () Bool)

(declare-fun call!553314 () Bool)

(assert (=> b!6432010 (= e!3901926 call!553314)))

(declare-fun b!6432011 () Bool)

(declare-fun e!3901931 () Bool)

(assert (=> b!6432011 (= e!3901927 e!3901931)))

(assert (=> b!6432011 (= c!1175572 ((_ is Union!16335) (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292))))))

(declare-fun b!6432012 () Bool)

(declare-fun e!3901930 () Bool)

(declare-fun e!3901925 () Bool)

(assert (=> b!6432012 (= e!3901930 e!3901925)))

(declare-fun res!2643904 () Bool)

(assert (=> b!6432012 (=> (not res!2643904) (not e!3901925))))

(declare-fun call!553315 () Bool)

(assert (=> b!6432012 (= res!2643904 call!553315)))

(declare-fun b!6432013 () Bool)

(declare-fun e!3901928 () Bool)

(assert (=> b!6432013 (= e!3901928 e!3901927)))

(assert (=> b!6432013 (= c!1175571 ((_ is Star!16335) (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292))))))

(declare-fun b!6432008 () Bool)

(declare-fun res!2643903 () Bool)

(assert (=> b!6432008 (=> res!2643903 e!3901930)))

(assert (=> b!6432008 (= res!2643903 (not ((_ is Concat!25180) (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292)))))))

(assert (=> b!6432008 (= e!3901931 e!3901930)))

(declare-fun d!2016307 () Bool)

(declare-fun res!2643902 () Bool)

(assert (=> d!2016307 (=> res!2643902 e!3901928)))

(assert (=> d!2016307 (= res!2643902 ((_ is ElementMatch!16335) (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292))))))

(assert (=> d!2016307 (= (validRegex!8071 (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292))) e!3901928)))

(declare-fun b!6432014 () Bool)

(declare-fun res!2643900 () Bool)

(assert (=> b!6432014 (=> (not res!2643900) (not e!3901926))))

(assert (=> b!6432014 (= res!2643900 call!553315)))

(assert (=> b!6432014 (= e!3901931 e!3901926)))

(declare-fun b!6432015 () Bool)

(assert (=> b!6432015 (= e!3901929 call!553313)))

(declare-fun bm!553309 () Bool)

(assert (=> bm!553309 (= call!553314 (validRegex!8071 (ite c!1175572 (regTwo!33183 (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292))) (regTwo!33182 (ite c!1175326 (regTwo!33183 r!7292) (regTwo!33182 r!7292))))))))

(declare-fun bm!553310 () Bool)

(assert (=> bm!553310 (= call!553315 call!553313)))

(declare-fun b!6432016 () Bool)

(assert (=> b!6432016 (= e!3901925 call!553314)))

(assert (= (and d!2016307 (not res!2643902)) b!6432013))

(assert (= (and b!6432013 c!1175571) b!6432009))

(assert (= (and b!6432013 (not c!1175571)) b!6432011))

(assert (= (and b!6432009 res!2643901) b!6432015))

(assert (= (and b!6432011 c!1175572) b!6432014))

(assert (= (and b!6432011 (not c!1175572)) b!6432008))

(assert (= (and b!6432014 res!2643900) b!6432010))

(assert (= (and b!6432008 (not res!2643903)) b!6432012))

(assert (= (and b!6432012 res!2643904) b!6432016))

(assert (= (or b!6432010 b!6432016) bm!553309))

(assert (= (or b!6432014 b!6432012) bm!553310))

(assert (= (or b!6432015 bm!553310) bm!553308))

(declare-fun m!7225616 () Bool)

(assert (=> b!6432009 m!7225616))

(declare-fun m!7225618 () Bool)

(assert (=> bm!553308 m!7225618))

(declare-fun m!7225620 () Bool)

(assert (=> bm!553309 m!7225620))

(assert (=> bm!553155 d!2016307))

(assert (=> b!6430242 d!2015735))

(declare-fun d!2016311 () Bool)

(assert (=> d!2016311 (= (nullable!6328 lt!2379370) (nullableFct!2274 lt!2379370))))

(declare-fun bs!1617997 () Bool)

(assert (= bs!1617997 d!2016311))

(declare-fun m!7225622 () Bool)

(assert (=> bs!1617997 m!7225622))

(assert (=> b!6430409 d!2016311))

(declare-fun b!6432017 () Bool)

(declare-fun e!3901933 () List!65304)

(assert (=> b!6432017 (= e!3901933 lt!2379356)))

(declare-fun b!6432018 () Bool)

(assert (=> b!6432018 (= e!3901933 (Cons!65180 (h!71628 (t!378920 (_1!36617 lt!2379342))) (++!14403 (t!378920 (t!378920 (_1!36617 lt!2379342))) lt!2379356)))))

(declare-fun b!6432019 () Bool)

(declare-fun res!2643906 () Bool)

(declare-fun e!3901932 () Bool)

(assert (=> b!6432019 (=> (not res!2643906) (not e!3901932))))

(declare-fun lt!2379588 () List!65304)

(assert (=> b!6432019 (= res!2643906 (= (size!40394 lt!2379588) (+ (size!40394 (t!378920 (_1!36617 lt!2379342))) (size!40394 lt!2379356))))))

(declare-fun b!6432020 () Bool)

(assert (=> b!6432020 (= e!3901932 (or (not (= lt!2379356 Nil!65180)) (= lt!2379588 (t!378920 (_1!36617 lt!2379342)))))))

(declare-fun d!2016313 () Bool)

(assert (=> d!2016313 e!3901932))

(declare-fun res!2643905 () Bool)

(assert (=> d!2016313 (=> (not res!2643905) (not e!3901932))))

(assert (=> d!2016313 (= res!2643905 (= (content!12384 lt!2379588) ((_ map or) (content!12384 (t!378920 (_1!36617 lt!2379342))) (content!12384 lt!2379356))))))

(assert (=> d!2016313 (= lt!2379588 e!3901933)))

(declare-fun c!1175573 () Bool)

(assert (=> d!2016313 (= c!1175573 ((_ is Nil!65180) (t!378920 (_1!36617 lt!2379342))))))

(assert (=> d!2016313 (= (++!14403 (t!378920 (_1!36617 lt!2379342)) lt!2379356) lt!2379588)))

(assert (= (and d!2016313 c!1175573) b!6432017))

(assert (= (and d!2016313 (not c!1175573)) b!6432018))

(assert (= (and d!2016313 res!2643905) b!6432019))

(assert (= (and b!6432019 res!2643906) b!6432020))

(declare-fun m!7225624 () Bool)

(assert (=> b!6432018 m!7225624))

(declare-fun m!7225626 () Bool)

(assert (=> b!6432019 m!7225626))

(declare-fun m!7225628 () Bool)

(assert (=> b!6432019 m!7225628))

(assert (=> b!6432019 m!7224180))

(declare-fun m!7225630 () Bool)

(assert (=> d!2016313 m!7225630))

(assert (=> d!2016313 m!7225204))

(assert (=> d!2016313 m!7224186))

(assert (=> b!6430580 d!2016313))

(assert (=> b!6431117 d!2016273))

(declare-fun d!2016315 () Bool)

(declare-fun e!3901939 () Bool)

(assert (=> d!2016315 e!3901939))

(declare-fun c!1175575 () Bool)

(assert (=> d!2016315 (= c!1175575 ((_ is EmptyExpr!16335) (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 lt!2379342)))))))

(declare-fun lt!2379589 () Bool)

(declare-fun e!3901934 () Bool)

(assert (=> d!2016315 (= lt!2379589 e!3901934)))

(declare-fun c!1175576 () Bool)

(assert (=> d!2016315 (= c!1175576 (isEmpty!37350 (tail!12246 (_1!36617 lt!2379342))))))

(assert (=> d!2016315 (validRegex!8071 (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 lt!2379342))))))

(assert (=> d!2016315 (= (matchR!8518 (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 lt!2379342))) (tail!12246 (_1!36617 lt!2379342))) lt!2379589)))

(declare-fun b!6432021 () Bool)

(declare-fun e!3901938 () Bool)

(assert (=> b!6432021 (= e!3901938 (not (= (head!13161 (tail!12246 (_1!36617 lt!2379342))) (c!1175066 (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 lt!2379342)))))))))

(declare-fun b!6432022 () Bool)

(assert (=> b!6432022 (= e!3901934 (matchR!8518 (derivativeStep!5039 (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 lt!2379342))) (head!13161 (tail!12246 (_1!36617 lt!2379342)))) (tail!12246 (tail!12246 (_1!36617 lt!2379342)))))))

(declare-fun b!6432023 () Bool)

(declare-fun res!2643908 () Bool)

(declare-fun e!3901937 () Bool)

(assert (=> b!6432023 (=> res!2643908 e!3901937)))

(declare-fun e!3901935 () Bool)

(assert (=> b!6432023 (= res!2643908 e!3901935)))

(declare-fun res!2643912 () Bool)

(assert (=> b!6432023 (=> (not res!2643912) (not e!3901935))))

(assert (=> b!6432023 (= res!2643912 lt!2379589)))

(declare-fun b!6432024 () Bool)

(declare-fun res!2643910 () Bool)

(assert (=> b!6432024 (=> res!2643910 e!3901937)))

(assert (=> b!6432024 (= res!2643910 (not ((_ is ElementMatch!16335) (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 lt!2379342))))))))

(declare-fun e!3901936 () Bool)

(assert (=> b!6432024 (= e!3901936 e!3901937)))

(declare-fun b!6432025 () Bool)

(declare-fun e!3901940 () Bool)

(assert (=> b!6432025 (= e!3901937 e!3901940)))

(declare-fun res!2643913 () Bool)

(assert (=> b!6432025 (=> (not res!2643913) (not e!3901940))))

(assert (=> b!6432025 (= res!2643913 (not lt!2379589))))

(declare-fun b!6432026 () Bool)

(declare-fun res!2643911 () Bool)

(assert (=> b!6432026 (=> res!2643911 e!3901938)))

(assert (=> b!6432026 (= res!2643911 (not (isEmpty!37350 (tail!12246 (tail!12246 (_1!36617 lt!2379342))))))))

(declare-fun b!6432027 () Bool)

(assert (=> b!6432027 (= e!3901934 (nullable!6328 (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 lt!2379342)))))))

(declare-fun b!6432028 () Bool)

(assert (=> b!6432028 (= e!3901939 e!3901936)))

(declare-fun c!1175574 () Bool)

(assert (=> b!6432028 (= c!1175574 ((_ is EmptyLang!16335) (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 lt!2379342)))))))

(declare-fun b!6432029 () Bool)

(declare-fun call!553316 () Bool)

(assert (=> b!6432029 (= e!3901939 (= lt!2379589 call!553316))))

(declare-fun b!6432030 () Bool)

(assert (=> b!6432030 (= e!3901936 (not lt!2379589))))

(declare-fun b!6432031 () Bool)

(declare-fun res!2643914 () Bool)

(assert (=> b!6432031 (=> (not res!2643914) (not e!3901935))))

(assert (=> b!6432031 (= res!2643914 (isEmpty!37350 (tail!12246 (tail!12246 (_1!36617 lt!2379342)))))))

(declare-fun b!6432032 () Bool)

(assert (=> b!6432032 (= e!3901940 e!3901938)))

(declare-fun res!2643907 () Bool)

(assert (=> b!6432032 (=> res!2643907 e!3901938)))

(assert (=> b!6432032 (= res!2643907 call!553316)))

(declare-fun b!6432033 () Bool)

(assert (=> b!6432033 (= e!3901935 (= (head!13161 (tail!12246 (_1!36617 lt!2379342))) (c!1175066 (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 lt!2379342))))))))

(declare-fun bm!553311 () Bool)

(assert (=> bm!553311 (= call!553316 (isEmpty!37350 (tail!12246 (_1!36617 lt!2379342))))))

(declare-fun b!6432034 () Bool)

(declare-fun res!2643909 () Bool)

(assert (=> b!6432034 (=> (not res!2643909) (not e!3901935))))

(assert (=> b!6432034 (= res!2643909 (not call!553316))))

(assert (= (and d!2016315 c!1175576) b!6432027))

(assert (= (and d!2016315 (not c!1175576)) b!6432022))

(assert (= (and d!2016315 c!1175575) b!6432029))

(assert (= (and d!2016315 (not c!1175575)) b!6432028))

(assert (= (and b!6432028 c!1175574) b!6432030))

(assert (= (and b!6432028 (not c!1175574)) b!6432024))

(assert (= (and b!6432024 (not res!2643910)) b!6432023))

(assert (= (and b!6432023 res!2643912) b!6432034))

(assert (= (and b!6432034 res!2643909) b!6432031))

(assert (= (and b!6432031 res!2643914) b!6432033))

(assert (= (and b!6432023 (not res!2643908)) b!6432025))

(assert (= (and b!6432025 res!2643913) b!6432032))

(assert (= (and b!6432032 (not res!2643907)) b!6432026))

(assert (= (and b!6432026 (not res!2643911)) b!6432021))

(assert (= (or b!6432029 b!6432034 b!6432032) bm!553311))

(assert (=> d!2016315 m!7224682))

(assert (=> d!2016315 m!7224684))

(assert (=> d!2016315 m!7224688))

(declare-fun m!7225632 () Bool)

(assert (=> d!2016315 m!7225632))

(assert (=> b!6432021 m!7224682))

(declare-fun m!7225634 () Bool)

(assert (=> b!6432021 m!7225634))

(assert (=> b!6432031 m!7224682))

(declare-fun m!7225636 () Bool)

(assert (=> b!6432031 m!7225636))

(assert (=> b!6432031 m!7225636))

(declare-fun m!7225638 () Bool)

(assert (=> b!6432031 m!7225638))

(assert (=> b!6432026 m!7224682))

(assert (=> b!6432026 m!7225636))

(assert (=> b!6432026 m!7225636))

(assert (=> b!6432026 m!7225638))

(assert (=> b!6432033 m!7224682))

(assert (=> b!6432033 m!7225634))

(assert (=> bm!553311 m!7224682))

(assert (=> bm!553311 m!7224684))

(assert (=> b!6432027 m!7224688))

(declare-fun m!7225640 () Bool)

(assert (=> b!6432027 m!7225640))

(assert (=> b!6432022 m!7224682))

(assert (=> b!6432022 m!7225634))

(assert (=> b!6432022 m!7224688))

(assert (=> b!6432022 m!7225634))

(declare-fun m!7225642 () Bool)

(assert (=> b!6432022 m!7225642))

(assert (=> b!6432022 m!7224682))

(assert (=> b!6432022 m!7225636))

(assert (=> b!6432022 m!7225642))

(assert (=> b!6432022 m!7225636))

(declare-fun m!7225644 () Bool)

(assert (=> b!6432022 m!7225644))

(assert (=> b!6431048 d!2016315))

(declare-fun b!6432035 () Bool)

(declare-fun e!3901942 () Regex!16335)

(declare-fun e!3901941 () Regex!16335)

(assert (=> b!6432035 (= e!3901942 e!3901941)))

(declare-fun c!1175578 () Bool)

(assert (=> b!6432035 (= c!1175578 ((_ is ElementMatch!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6432036 () Bool)

(assert (=> b!6432036 (= e!3901941 (ite (= (head!13161 (_1!36617 lt!2379342)) (c!1175066 (reg!16664 (regOne!33182 r!7292)))) EmptyExpr!16335 EmptyLang!16335))))

(declare-fun call!553320 () Regex!16335)

(declare-fun b!6432037 () Bool)

(declare-fun call!553317 () Regex!16335)

(declare-fun e!3901945 () Regex!16335)

(assert (=> b!6432037 (= e!3901945 (Union!16335 (Concat!25180 call!553317 (regTwo!33182 (reg!16664 (regOne!33182 r!7292)))) call!553320))))

(declare-fun d!2016317 () Bool)

(declare-fun lt!2379590 () Regex!16335)

(assert (=> d!2016317 (validRegex!8071 lt!2379590)))

(assert (=> d!2016317 (= lt!2379590 e!3901942)))

(declare-fun c!1175580 () Bool)

(assert (=> d!2016317 (= c!1175580 (or ((_ is EmptyExpr!16335) (reg!16664 (regOne!33182 r!7292))) ((_ is EmptyLang!16335) (reg!16664 (regOne!33182 r!7292)))))))

(assert (=> d!2016317 (validRegex!8071 (reg!16664 (regOne!33182 r!7292)))))

(assert (=> d!2016317 (= (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 (_1!36617 lt!2379342))) lt!2379590)))

(declare-fun b!6432038 () Bool)

(declare-fun e!3901944 () Regex!16335)

(declare-fun call!553319 () Regex!16335)

(declare-fun call!553318 () Regex!16335)

(assert (=> b!6432038 (= e!3901944 (Union!16335 call!553319 call!553318))))

(declare-fun bm!553312 () Bool)

(declare-fun c!1175579 () Bool)

(declare-fun c!1175577 () Bool)

(assert (=> bm!553312 (= call!553318 (derivativeStep!5039 (ite c!1175577 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175579 (reg!16664 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))) (head!13161 (_1!36617 lt!2379342))))))

(declare-fun b!6432039 () Bool)

(declare-fun e!3901943 () Regex!16335)

(assert (=> b!6432039 (= e!3901944 e!3901943)))

(assert (=> b!6432039 (= c!1175579 ((_ is Star!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6432040 () Bool)

(assert (=> b!6432040 (= e!3901942 EmptyLang!16335)))

(declare-fun b!6432041 () Bool)

(assert (=> b!6432041 (= c!1175577 ((_ is Union!16335) (reg!16664 (regOne!33182 r!7292))))))

(assert (=> b!6432041 (= e!3901941 e!3901944)))

(declare-fun bm!553313 () Bool)

(assert (=> bm!553313 (= call!553320 call!553319)))

(declare-fun b!6432042 () Bool)

(declare-fun c!1175581 () Bool)

(assert (=> b!6432042 (= c!1175581 (nullable!6328 (regOne!33182 (reg!16664 (regOne!33182 r!7292)))))))

(assert (=> b!6432042 (= e!3901943 e!3901945)))

(declare-fun bm!553314 () Bool)

(assert (=> bm!553314 (= call!553317 call!553318)))

(declare-fun bm!553315 () Bool)

(assert (=> bm!553315 (= call!553319 (derivativeStep!5039 (ite c!1175577 (regOne!33183 (reg!16664 (regOne!33182 r!7292))) (ite c!1175581 (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))) (head!13161 (_1!36617 lt!2379342))))))

(declare-fun b!6432043 () Bool)

(assert (=> b!6432043 (= e!3901943 (Concat!25180 call!553317 (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6432044 () Bool)

(assert (=> b!6432044 (= e!3901945 (Union!16335 (Concat!25180 call!553320 (regTwo!33182 (reg!16664 (regOne!33182 r!7292)))) EmptyLang!16335))))

(assert (= (and d!2016317 c!1175580) b!6432040))

(assert (= (and d!2016317 (not c!1175580)) b!6432035))

(assert (= (and b!6432035 c!1175578) b!6432036))

(assert (= (and b!6432035 (not c!1175578)) b!6432041))

(assert (= (and b!6432041 c!1175577) b!6432038))

(assert (= (and b!6432041 (not c!1175577)) b!6432039))

(assert (= (and b!6432039 c!1175579) b!6432043))

(assert (= (and b!6432039 (not c!1175579)) b!6432042))

(assert (= (and b!6432042 c!1175581) b!6432037))

(assert (= (and b!6432042 (not c!1175581)) b!6432044))

(assert (= (or b!6432037 b!6432044) bm!553313))

(assert (= (or b!6432043 b!6432037) bm!553314))

(assert (= (or b!6432038 bm!553314) bm!553312))

(assert (= (or b!6432038 bm!553313) bm!553315))

(declare-fun m!7225646 () Bool)

(assert (=> d!2016317 m!7225646))

(assert (=> d!2016317 m!7224678))

(assert (=> bm!553312 m!7224680))

(declare-fun m!7225648 () Bool)

(assert (=> bm!553312 m!7225648))

(assert (=> b!6432042 m!7224368))

(assert (=> bm!553315 m!7224680))

(declare-fun m!7225650 () Bool)

(assert (=> bm!553315 m!7225650))

(assert (=> b!6431048 d!2016317))

(assert (=> b!6431048 d!2016199))

(declare-fun d!2016319 () Bool)

(assert (=> d!2016319 (= (tail!12246 (_1!36617 lt!2379342)) (t!378920 (_1!36617 lt!2379342)))))

(assert (=> b!6431048 d!2016319))

(declare-fun bs!1617998 () Bool)

(declare-fun b!6432048 () Bool)

(assert (= bs!1617998 (and b!6432048 b!6431962)))

(declare-fun lambda!355863 () Int)

(assert (=> bs!1617998 (= (and (= (reg!16664 (regTwo!33183 lt!2379346)) (reg!16664 (regOne!33183 r!7292))) (= (regTwo!33183 lt!2379346) (regOne!33183 r!7292))) (= lambda!355863 lambda!355855))))

(declare-fun bs!1617999 () Bool)

(assert (= bs!1617999 (and b!6432048 d!2015887)))

(assert (=> bs!1617999 (not (= lambda!355863 lambda!355804))))

(declare-fun bs!1618000 () Bool)

(assert (= bs!1618000 (and b!6432048 b!6431977)))

(assert (=> bs!1618000 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regTwo!33183 lt!2379346)) (reg!16664 (regTwo!33183 lt!2379353))) (= (regTwo!33183 lt!2379346) (regTwo!33183 lt!2379353))) (= lambda!355863 lambda!355860))))

(declare-fun bs!1618001 () Bool)

(assert (= bs!1618001 (and b!6432048 b!6430115)))

(assert (=> bs!1618001 (not (= lambda!355863 lambda!355717))))

(declare-fun bs!1618002 () Bool)

(assert (= bs!1618002 (and b!6432048 b!6431861)))

(assert (=> bs!1618002 (not (= lambda!355863 lambda!355850))))

(declare-fun bs!1618003 () Bool)

(assert (= bs!1618003 (and b!6432048 d!2016163)))

(assert (=> bs!1618003 (not (= lambda!355863 lambda!355844))))

(declare-fun bs!1618004 () Bool)

(assert (= bs!1618004 (and b!6432048 b!6430094)))

(assert (=> bs!1618004 (not (= lambda!355863 lambda!355719))))

(assert (=> bs!1618004 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regTwo!33183 lt!2379346)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33183 lt!2379346) lt!2379353)) (= lambda!355863 lambda!355720))))

(declare-fun bs!1618005 () Bool)

(assert (= bs!1618005 (and b!6432048 d!2015881)))

(assert (=> bs!1618005 (not (= lambda!355863 lambda!355802))))

(declare-fun bs!1618006 () Bool)

(assert (= bs!1618006 (and b!6432048 d!2015991)))

(assert (=> bs!1618006 (not (= lambda!355863 lambda!355828))))

(declare-fun bs!1618007 () Bool)

(assert (= bs!1618007 (and b!6432048 d!2015957)))

(assert (=> bs!1618007 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regTwo!33183 lt!2379346)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33183 lt!2379346) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355863 lambda!355823))))

(declare-fun bs!1618008 () Bool)

(assert (= bs!1618008 (and b!6432048 d!2015895)))

(assert (=> bs!1618008 (not (= lambda!355863 lambda!355811))))

(declare-fun bs!1618009 () Bool)

(assert (= bs!1618009 (and b!6432048 b!6430859)))

(assert (=> bs!1618009 (= (and (= (reg!16664 (regTwo!33183 lt!2379346)) (reg!16664 lt!2379346)) (= (regTwo!33183 lt!2379346) lt!2379346)) (= lambda!355863 lambda!355779))))

(declare-fun bs!1618010 () Bool)

(assert (= bs!1618010 (and b!6432048 d!2015879)))

(assert (=> bs!1618010 (not (= lambda!355863 lambda!355801))))

(declare-fun bs!1618011 () Bool)

(assert (= bs!1618011 (and b!6432048 d!2016021)))

(assert (=> bs!1618011 (not (= lambda!355863 lambda!355832))))

(declare-fun bs!1618012 () Bool)

(assert (= bs!1618012 (and b!6432048 d!2015889)))

(assert (=> bs!1618012 (not (= lambda!355863 lambda!355806))))

(assert (=> bs!1618005 (not (= lambda!355863 lambda!355803))))

(declare-fun bs!1618013 () Bool)

(assert (= bs!1618013 (and b!6432048 b!6430810)))

(assert (=> bs!1618013 (= (and (= (reg!16664 (regTwo!33183 lt!2379346)) (reg!16664 r!7292)) (= (regTwo!33183 lt!2379346) r!7292)) (= lambda!355863 lambda!355772))))

(declare-fun bs!1618014 () Bool)

(assert (= bs!1618014 (and b!6432048 b!6431148)))

(assert (=> bs!1618014 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regTwo!33183 lt!2379346)) (reg!16664 lt!2379353)) (= (regTwo!33183 lt!2379346) lt!2379353)) (= lambda!355863 lambda!355813))))

(assert (=> bs!1618004 (not (= lambda!355863 lambda!355721))))

(declare-fun bs!1618015 () Bool)

(assert (= bs!1618015 (and b!6432048 d!2015793)))

(assert (=> bs!1618015 (not (= lambda!355863 lambda!355786))))

(declare-fun bs!1618016 () Bool)

(assert (= bs!1618016 (and b!6432048 b!6431983)))

(assert (=> bs!1618016 (not (= lambda!355863 lambda!355862))))

(declare-fun bs!1618017 () Bool)

(assert (= bs!1618017 (and b!6432048 b!6431953)))

(assert (=> bs!1618017 (not (= lambda!355863 lambda!355852))))

(declare-fun bs!1618018 () Bool)

(assert (= bs!1618018 (and b!6432048 b!6431154)))

(assert (=> bs!1618018 (not (= lambda!355863 lambda!355814))))

(declare-fun bs!1618019 () Bool)

(assert (= bs!1618019 (and b!6432048 b!6430128)))

(assert (=> bs!1618019 (not (= lambda!355863 lambda!355715))))

(declare-fun bs!1618020 () Bool)

(assert (= bs!1618020 (and b!6432048 b!6431855)))

(assert (=> bs!1618020 (= (and (= (reg!16664 (regTwo!33183 lt!2379346)) (reg!16664 (regTwo!33183 r!7292))) (= (regTwo!33183 lt!2379346) (regTwo!33183 r!7292))) (= lambda!355863 lambda!355849))))

(assert (=> bs!1618006 (not (= lambda!355863 lambda!355829))))

(declare-fun bs!1618021 () Bool)

(assert (= bs!1618021 (and b!6432048 b!6431968)))

(assert (=> bs!1618021 (not (= lambda!355863 lambda!355859))))

(declare-fun bs!1618022 () Bool)

(assert (= bs!1618022 (and b!6432048 b!6430816)))

(assert (=> bs!1618022 (not (= lambda!355863 lambda!355773))))

(assert (=> bs!1618008 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (reg!16664 (regTwo!33183 lt!2379346)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33183 lt!2379346) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355863 lambda!355812))))

(declare-fun bs!1618023 () Bool)

(assert (= bs!1618023 (and b!6432048 b!6430865)))

(assert (=> bs!1618023 (not (= lambda!355863 lambda!355780))))

(assert (=> bs!1618012 (not (= lambda!355863 lambda!355805))))

(assert (=> bs!1618007 (not (= lambda!355863 lambda!355822))))

(assert (=> bs!1618001 (not (= lambda!355863 lambda!355718))))

(assert (=> bs!1618019 (not (= lambda!355863 lambda!355714))))

(declare-fun bs!1618024 () Bool)

(assert (= bs!1618024 (and b!6432048 b!6431947)))

(assert (=> bs!1618024 (= (and (= (reg!16664 (regTwo!33183 lt!2379346)) (reg!16664 (regOne!33183 lt!2379346))) (= (regTwo!33183 lt!2379346) (regOne!33183 lt!2379346))) (= lambda!355863 lambda!355851))))

(declare-fun bs!1618025 () Bool)

(assert (= bs!1618025 (and b!6432048 d!2015829)))

(assert (=> bs!1618025 (not (= lambda!355863 lambda!355796))))

(assert (=> bs!1618025 (not (= lambda!355863 lambda!355797))))

(assert (=> b!6432048 true))

(assert (=> b!6432048 true))

(declare-fun bs!1618026 () Bool)

(declare-fun b!6432054 () Bool)

(assert (= bs!1618026 (and b!6432054 b!6431962)))

(declare-fun lambda!355864 () Int)

(assert (=> bs!1618026 (not (= lambda!355864 lambda!355855))))

(declare-fun bs!1618027 () Bool)

(assert (= bs!1618027 (and b!6432054 b!6431977)))

(assert (=> bs!1618027 (not (= lambda!355864 lambda!355860))))

(declare-fun bs!1618028 () Bool)

(assert (= bs!1618028 (and b!6432054 b!6430115)))

(assert (=> bs!1618028 (not (= lambda!355864 lambda!355717))))

(declare-fun bs!1618029 () Bool)

(assert (= bs!1618029 (and b!6432054 b!6431861)))

(assert (=> bs!1618029 (= (and (= (regOne!33182 (regTwo!33183 lt!2379346)) (regOne!33182 (regTwo!33183 r!7292))) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 (regTwo!33183 r!7292)))) (= lambda!355864 lambda!355850))))

(declare-fun bs!1618030 () Bool)

(assert (= bs!1618030 (and b!6432054 d!2016163)))

(assert (=> bs!1618030 (not (= lambda!355864 lambda!355844))))

(declare-fun bs!1618031 () Bool)

(assert (= bs!1618031 (and b!6432054 b!6430094)))

(assert (=> bs!1618031 (not (= lambda!355864 lambda!355719))))

(assert (=> bs!1618031 (not (= lambda!355864 lambda!355720))))

(declare-fun bs!1618032 () Bool)

(assert (= bs!1618032 (and b!6432054 d!2015881)))

(assert (=> bs!1618032 (not (= lambda!355864 lambda!355802))))

(declare-fun bs!1618033 () Bool)

(assert (= bs!1618033 (and b!6432054 d!2015991)))

(assert (=> bs!1618033 (not (= lambda!355864 lambda!355828))))

(declare-fun bs!1618034 () Bool)

(assert (= bs!1618034 (and b!6432054 d!2015957)))

(assert (=> bs!1618034 (not (= lambda!355864 lambda!355823))))

(declare-fun bs!1618035 () Bool)

(assert (= bs!1618035 (and b!6432054 d!2015895)))

(assert (=> bs!1618035 (not (= lambda!355864 lambda!355811))))

(declare-fun bs!1618036 () Bool)

(assert (= bs!1618036 (and b!6432054 b!6430859)))

(assert (=> bs!1618036 (not (= lambda!355864 lambda!355779))))

(declare-fun bs!1618037 () Bool)

(assert (= bs!1618037 (and b!6432054 d!2015887)))

(assert (=> bs!1618037 (not (= lambda!355864 lambda!355804))))

(declare-fun bs!1618038 () Bool)

(assert (= bs!1618038 (and b!6432054 b!6432048)))

(assert (=> bs!1618038 (not (= lambda!355864 lambda!355863))))

(declare-fun bs!1618039 () Bool)

(assert (= bs!1618039 (and b!6432054 d!2015879)))

(assert (=> bs!1618039 (not (= lambda!355864 lambda!355801))))

(declare-fun bs!1618040 () Bool)

(assert (= bs!1618040 (and b!6432054 d!2016021)))

(assert (=> bs!1618040 (not (= lambda!355864 lambda!355832))))

(declare-fun bs!1618041 () Bool)

(assert (= bs!1618041 (and b!6432054 d!2015889)))

(assert (=> bs!1618041 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regTwo!33183 lt!2379346)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regTwo!33183 lt!2379346)) lt!2379353)) (= lambda!355864 lambda!355806))))

(assert (=> bs!1618032 (= (and (= (regOne!33182 (regTwo!33183 lt!2379346)) lt!2379353) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355864 lambda!355803))))

(declare-fun bs!1618042 () Bool)

(assert (= bs!1618042 (and b!6432054 b!6430810)))

(assert (=> bs!1618042 (not (= lambda!355864 lambda!355772))))

(declare-fun bs!1618043 () Bool)

(assert (= bs!1618043 (and b!6432054 b!6431148)))

(assert (=> bs!1618043 (not (= lambda!355864 lambda!355813))))

(assert (=> bs!1618031 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regTwo!33183 lt!2379346)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regTwo!33183 lt!2379346)) lt!2379353)) (= lambda!355864 lambda!355721))))

(declare-fun bs!1618044 () Bool)

(assert (= bs!1618044 (and b!6432054 d!2015793)))

(assert (=> bs!1618044 (not (= lambda!355864 lambda!355786))))

(declare-fun bs!1618045 () Bool)

(assert (= bs!1618045 (and b!6432054 b!6431983)))

(assert (=> bs!1618045 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regTwo!33183 lt!2379346)) (regOne!33182 (regTwo!33183 lt!2379353))) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 (regTwo!33183 lt!2379353)))) (= lambda!355864 lambda!355862))))

(declare-fun bs!1618046 () Bool)

(assert (= bs!1618046 (and b!6432054 b!6431953)))

(assert (=> bs!1618046 (= (and (= (regOne!33182 (regTwo!33183 lt!2379346)) (regOne!33182 (regOne!33183 lt!2379346))) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 (regOne!33183 lt!2379346)))) (= lambda!355864 lambda!355852))))

(declare-fun bs!1618047 () Bool)

(assert (= bs!1618047 (and b!6432054 b!6431154)))

(assert (=> bs!1618047 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 (regTwo!33183 lt!2379346)) (regOne!33182 lt!2379353)) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 lt!2379353))) (= lambda!355864 lambda!355814))))

(declare-fun bs!1618048 () Bool)

(assert (= bs!1618048 (and b!6432054 b!6430128)))

(assert (=> bs!1618048 (= (and (= (regOne!33182 (regTwo!33183 lt!2379346)) (regOne!33182 r!7292)) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355864 lambda!355715))))

(declare-fun bs!1618049 () Bool)

(assert (= bs!1618049 (and b!6432054 b!6431855)))

(assert (=> bs!1618049 (not (= lambda!355864 lambda!355849))))

(assert (=> bs!1618033 (= (and (= (regOne!33182 (regTwo!33183 lt!2379346)) lt!2379353) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355864 lambda!355829))))

(declare-fun bs!1618050 () Bool)

(assert (= bs!1618050 (and b!6432054 b!6431968)))

(assert (=> bs!1618050 (= (and (= (regOne!33182 (regTwo!33183 lt!2379346)) (regOne!33182 (regOne!33183 r!7292))) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 (regOne!33183 r!7292)))) (= lambda!355864 lambda!355859))))

(declare-fun bs!1618051 () Bool)

(assert (= bs!1618051 (and b!6432054 b!6430816)))

(assert (=> bs!1618051 (= (and (= (regOne!33182 (regTwo!33183 lt!2379346)) (regOne!33182 r!7292)) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355864 lambda!355773))))

(assert (=> bs!1618035 (not (= lambda!355864 lambda!355812))))

(declare-fun bs!1618052 () Bool)

(assert (= bs!1618052 (and b!6432054 b!6430865)))

(assert (=> bs!1618052 (= (and (= (regOne!33182 (regTwo!33183 lt!2379346)) (regOne!33182 lt!2379346)) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 lt!2379346))) (= lambda!355864 lambda!355780))))

(assert (=> bs!1618041 (not (= lambda!355864 lambda!355805))))

(assert (=> bs!1618034 (not (= lambda!355864 lambda!355822))))

(assert (=> bs!1618028 (= (and (= (regOne!33182 (regTwo!33183 lt!2379346)) lt!2379353) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355864 lambda!355718))))

(assert (=> bs!1618048 (not (= lambda!355864 lambda!355714))))

(declare-fun bs!1618053 () Bool)

(assert (= bs!1618053 (and b!6432054 b!6431947)))

(assert (=> bs!1618053 (not (= lambda!355864 lambda!355851))))

(declare-fun bs!1618054 () Bool)

(assert (= bs!1618054 (and b!6432054 d!2015829)))

(assert (=> bs!1618054 (not (= lambda!355864 lambda!355796))))

(assert (=> bs!1618054 (= (and (= (regOne!33182 (regTwo!33183 lt!2379346)) (regOne!33182 r!7292)) (= (regTwo!33182 (regTwo!33183 lt!2379346)) (regTwo!33182 r!7292))) (= lambda!355864 lambda!355797))))

(assert (=> b!6432054 true))

(assert (=> b!6432054 true))

(declare-fun b!6432045 () Bool)

(declare-fun e!3901946 () Bool)

(declare-fun e!3901952 () Bool)

(assert (=> b!6432045 (= e!3901946 e!3901952)))

(declare-fun res!2643917 () Bool)

(assert (=> b!6432045 (= res!2643917 (matchRSpec!3436 (regOne!33183 (regTwo!33183 lt!2379346)) s!2326))))

(assert (=> b!6432045 (=> res!2643917 e!3901952)))

(declare-fun bm!553316 () Bool)

(declare-fun call!553322 () Bool)

(assert (=> bm!553316 (= call!553322 (isEmpty!37350 s!2326))))

(declare-fun b!6432046 () Bool)

(declare-fun res!2643915 () Bool)

(declare-fun e!3901950 () Bool)

(assert (=> b!6432046 (=> res!2643915 e!3901950)))

(assert (=> b!6432046 (= res!2643915 call!553322)))

(declare-fun e!3901949 () Bool)

(assert (=> b!6432046 (= e!3901949 e!3901950)))

(declare-fun b!6432047 () Bool)

(declare-fun e!3901948 () Bool)

(assert (=> b!6432047 (= e!3901948 (= s!2326 (Cons!65180 (c!1175066 (regTwo!33183 lt!2379346)) Nil!65180)))))

(declare-fun call!553321 () Bool)

(assert (=> b!6432048 (= e!3901950 call!553321)))

(declare-fun b!6432049 () Bool)

(declare-fun e!3901951 () Bool)

(assert (=> b!6432049 (= e!3901951 call!553322)))

(declare-fun b!6432050 () Bool)

(assert (=> b!6432050 (= e!3901946 e!3901949)))

(declare-fun c!1175583 () Bool)

(assert (=> b!6432050 (= c!1175583 ((_ is Star!16335) (regTwo!33183 lt!2379346)))))

(declare-fun d!2016321 () Bool)

(declare-fun c!1175585 () Bool)

(assert (=> d!2016321 (= c!1175585 ((_ is EmptyExpr!16335) (regTwo!33183 lt!2379346)))))

(assert (=> d!2016321 (= (matchRSpec!3436 (regTwo!33183 lt!2379346) s!2326) e!3901951)))

(declare-fun b!6432051 () Bool)

(declare-fun c!1175582 () Bool)

(assert (=> b!6432051 (= c!1175582 ((_ is Union!16335) (regTwo!33183 lt!2379346)))))

(assert (=> b!6432051 (= e!3901948 e!3901946)))

(declare-fun b!6432052 () Bool)

(assert (=> b!6432052 (= e!3901952 (matchRSpec!3436 (regTwo!33183 (regTwo!33183 lt!2379346)) s!2326))))

(declare-fun bm!553317 () Bool)

(assert (=> bm!553317 (= call!553321 (Exists!3405 (ite c!1175583 lambda!355863 lambda!355864)))))

(declare-fun b!6432053 () Bool)

(declare-fun c!1175584 () Bool)

(assert (=> b!6432053 (= c!1175584 ((_ is ElementMatch!16335) (regTwo!33183 lt!2379346)))))

(declare-fun e!3901947 () Bool)

(assert (=> b!6432053 (= e!3901947 e!3901948)))

(assert (=> b!6432054 (= e!3901949 call!553321)))

(declare-fun b!6432055 () Bool)

(assert (=> b!6432055 (= e!3901951 e!3901947)))

(declare-fun res!2643916 () Bool)

(assert (=> b!6432055 (= res!2643916 (not ((_ is EmptyLang!16335) (regTwo!33183 lt!2379346))))))

(assert (=> b!6432055 (=> (not res!2643916) (not e!3901947))))

(assert (= (and d!2016321 c!1175585) b!6432049))

(assert (= (and d!2016321 (not c!1175585)) b!6432055))

(assert (= (and b!6432055 res!2643916) b!6432053))

(assert (= (and b!6432053 c!1175584) b!6432047))

(assert (= (and b!6432053 (not c!1175584)) b!6432051))

(assert (= (and b!6432051 c!1175582) b!6432045))

(assert (= (and b!6432051 (not c!1175582)) b!6432050))

(assert (= (and b!6432045 (not res!2643917)) b!6432052))

(assert (= (and b!6432050 c!1175583) b!6432046))

(assert (= (and b!6432050 (not c!1175583)) b!6432054))

(assert (= (and b!6432046 (not res!2643915)) b!6432048))

(assert (= (or b!6432048 b!6432054) bm!553317))

(assert (= (or b!6432049 b!6432046) bm!553316))

(declare-fun m!7225652 () Bool)

(assert (=> b!6432045 m!7225652))

(assert (=> bm!553316 m!7224146))

(declare-fun m!7225654 () Bool)

(assert (=> b!6432052 m!7225654))

(declare-fun m!7225656 () Bool)

(assert (=> bm!553317 m!7225656))

(assert (=> b!6430863 d!2016321))

(assert (=> d!2015681 d!2016083))

(assert (=> d!2015773 d!2016083))

(assert (=> d!2015773 d!2016035))

(declare-fun d!2016323 () Bool)

(assert (=> d!2016323 true))

(assert (=> d!2016323 true))

(declare-fun res!2643918 () Bool)

(assert (=> d!2016323 (= (choose!47830 lambda!355720) res!2643918)))

(assert (=> d!2015893 d!2016323))

(declare-fun d!2016325 () Bool)

(assert (=> d!2016325 (= (Exists!3405 (ite c!1175270 lambda!355772 lambda!355773)) (choose!47830 (ite c!1175270 lambda!355772 lambda!355773)))))

(declare-fun bs!1618055 () Bool)

(assert (= bs!1618055 d!2016325))

(declare-fun m!7225658 () Bool)

(assert (=> bs!1618055 m!7225658))

(assert (=> bm!553128 d!2016325))

(declare-fun b!6432086 () Bool)

(declare-fun e!3901969 () List!65304)

(assert (=> b!6432086 (= e!3901969 (_2!36617 lt!2379368))))

(declare-fun b!6432087 () Bool)

(assert (=> b!6432087 (= e!3901969 (Cons!65180 (h!71628 (t!378920 lt!2379371)) (++!14403 (t!378920 (t!378920 lt!2379371)) (_2!36617 lt!2379368))))))

(declare-fun b!6432088 () Bool)

(declare-fun res!2643920 () Bool)

(declare-fun e!3901968 () Bool)

(assert (=> b!6432088 (=> (not res!2643920) (not e!3901968))))

(declare-fun lt!2379594 () List!65304)

(assert (=> b!6432088 (= res!2643920 (= (size!40394 lt!2379594) (+ (size!40394 (t!378920 lt!2379371)) (size!40394 (_2!36617 lt!2379368)))))))

(declare-fun b!6432089 () Bool)

(assert (=> b!6432089 (= e!3901968 (or (not (= (_2!36617 lt!2379368) Nil!65180)) (= lt!2379594 (t!378920 lt!2379371))))))

(declare-fun d!2016327 () Bool)

(assert (=> d!2016327 e!3901968))

(declare-fun res!2643919 () Bool)

(assert (=> d!2016327 (=> (not res!2643919) (not e!3901968))))

(assert (=> d!2016327 (= res!2643919 (= (content!12384 lt!2379594) ((_ map or) (content!12384 (t!378920 lt!2379371)) (content!12384 (_2!36617 lt!2379368)))))))

(assert (=> d!2016327 (= lt!2379594 e!3901969)))

(declare-fun c!1175601 () Bool)

(assert (=> d!2016327 (= c!1175601 ((_ is Nil!65180) (t!378920 lt!2379371)))))

(assert (=> d!2016327 (= (++!14403 (t!378920 lt!2379371) (_2!36617 lt!2379368)) lt!2379594)))

(assert (= (and d!2016327 c!1175601) b!6432086))

(assert (= (and d!2016327 (not c!1175601)) b!6432087))

(assert (= (and d!2016327 res!2643919) b!6432088))

(assert (= (and b!6432088 res!2643920) b!6432089))

(declare-fun m!7225666 () Bool)

(assert (=> b!6432087 m!7225666))

(declare-fun m!7225670 () Bool)

(assert (=> b!6432088 m!7225670))

(declare-fun m!7225672 () Bool)

(assert (=> b!6432088 m!7225672))

(assert (=> b!6432088 m!7224194))

(declare-fun m!7225674 () Bool)

(assert (=> d!2016327 m!7225674))

(declare-fun m!7225676 () Bool)

(assert (=> d!2016327 m!7225676))

(assert (=> d!2016327 m!7224200))

(assert (=> b!6430584 d!2016327))

(assert (=> b!6430847 d!2016061))

(assert (=> b!6430847 d!2015973))

(declare-fun bs!1618056 () Bool)

(declare-fun d!2016331 () Bool)

(assert (= bs!1618056 (and d!2016331 d!2015651)))

(declare-fun lambda!355865 () Int)

(assert (=> bs!1618056 (= lambda!355865 lambda!355744)))

(declare-fun bs!1618057 () Bool)

(assert (= bs!1618057 (and d!2016331 d!2015705)))

(assert (=> bs!1618057 (= lambda!355865 lambda!355761)))

(declare-fun bs!1618058 () Bool)

(assert (= bs!1618058 (and d!2016331 d!2015739)))

(assert (=> bs!1618058 (= lambda!355865 lambda!355765)))

(declare-fun bs!1618059 () Bool)

(assert (= bs!1618059 (and d!2016331 d!2015603)))

(assert (=> bs!1618059 (= lambda!355865 lambda!355733)))

(declare-fun bs!1618060 () Bool)

(assert (= bs!1618060 (and d!2016331 d!2016067)))

(assert (=> bs!1618060 (= lambda!355865 lambda!355839)))

(declare-fun bs!1618061 () Bool)

(assert (= bs!1618061 (and d!2016331 d!2016025)))

(assert (=> bs!1618061 (= lambda!355865 lambda!355833)))

(declare-fun bs!1618062 () Bool)

(assert (= bs!1618062 (and d!2016331 d!2016069)))

(assert (=> bs!1618062 (= lambda!355865 lambda!355840)))

(declare-fun bs!1618063 () Bool)

(assert (= bs!1618063 (and d!2016331 d!2016175)))

(assert (=> bs!1618063 (= lambda!355865 lambda!355846)))

(declare-fun bs!1618064 () Bool)

(assert (= bs!1618064 (and d!2016331 d!2015713)))

(assert (=> bs!1618064 (= lambda!355865 lambda!355764)))

(declare-fun bs!1618065 () Bool)

(assert (= bs!1618065 (and d!2016331 d!2015907)))

(assert (=> bs!1618065 (= lambda!355865 lambda!355817)))

(declare-fun b!6432091 () Bool)

(declare-fun e!3901970 () Bool)

(declare-fun lt!2379595 () Regex!16335)

(assert (=> b!6432091 (= e!3901970 (isEmptyExpr!1736 lt!2379595))))

(declare-fun b!6432092 () Bool)

(declare-fun e!3901973 () Bool)

(assert (=> b!6432092 (= e!3901973 (isConcat!1259 lt!2379595))))

(declare-fun b!6432093 () Bool)

(declare-fun e!3901975 () Regex!16335)

(assert (=> b!6432093 (= e!3901975 (Concat!25180 (h!71629 (t!378921 (exprs!6219 (h!71630 zl!343)))) (generalisedConcat!1932 (t!378921 (t!378921 (exprs!6219 (h!71630 zl!343)))))))))

(declare-fun b!6432094 () Bool)

(assert (=> b!6432094 (= e!3901970 e!3901973)))

(declare-fun c!1175603 () Bool)

(assert (=> b!6432094 (= c!1175603 (isEmpty!37349 (tail!12247 (t!378921 (exprs!6219 (h!71630 zl!343))))))))

(declare-fun b!6432095 () Bool)

(assert (=> b!6432095 (= e!3901975 EmptyExpr!16335)))

(declare-fun b!6432096 () Bool)

(assert (=> b!6432096 (= e!3901973 (= lt!2379595 (head!13162 (t!378921 (exprs!6219 (h!71630 zl!343))))))))

(declare-fun b!6432097 () Bool)

(declare-fun e!3901974 () Regex!16335)

(assert (=> b!6432097 (= e!3901974 (h!71629 (t!378921 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun b!6432098 () Bool)

(assert (=> b!6432098 (= e!3901974 e!3901975)))

(declare-fun c!1175602 () Bool)

(assert (=> b!6432098 (= c!1175602 ((_ is Cons!65181) (t!378921 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun b!6432099 () Bool)

(declare-fun e!3901972 () Bool)

(assert (=> b!6432099 (= e!3901972 e!3901970)))

(declare-fun c!1175605 () Bool)

(assert (=> b!6432099 (= c!1175605 (isEmpty!37349 (t!378921 (exprs!6219 (h!71630 zl!343)))))))

(assert (=> d!2016331 e!3901972))

(declare-fun res!2643922 () Bool)

(assert (=> d!2016331 (=> (not res!2643922) (not e!3901972))))

(assert (=> d!2016331 (= res!2643922 (validRegex!8071 lt!2379595))))

(assert (=> d!2016331 (= lt!2379595 e!3901974)))

(declare-fun c!1175604 () Bool)

(declare-fun e!3901971 () Bool)

(assert (=> d!2016331 (= c!1175604 e!3901971)))

(declare-fun res!2643921 () Bool)

(assert (=> d!2016331 (=> (not res!2643921) (not e!3901971))))

(assert (=> d!2016331 (= res!2643921 ((_ is Cons!65181) (t!378921 (exprs!6219 (h!71630 zl!343)))))))

(assert (=> d!2016331 (forall!15525 (t!378921 (exprs!6219 (h!71630 zl!343))) lambda!355865)))

(assert (=> d!2016331 (= (generalisedConcat!1932 (t!378921 (exprs!6219 (h!71630 zl!343)))) lt!2379595)))

(declare-fun b!6432090 () Bool)

(assert (=> b!6432090 (= e!3901971 (isEmpty!37349 (t!378921 (t!378921 (exprs!6219 (h!71630 zl!343))))))))

(assert (= (and d!2016331 res!2643921) b!6432090))

(assert (= (and d!2016331 c!1175604) b!6432097))

(assert (= (and d!2016331 (not c!1175604)) b!6432098))

(assert (= (and b!6432098 c!1175602) b!6432093))

(assert (= (and b!6432098 (not c!1175602)) b!6432095))

(assert (= (and d!2016331 res!2643922) b!6432099))

(assert (= (and b!6432099 c!1175605) b!6432091))

(assert (= (and b!6432099 (not c!1175605)) b!6432094))

(assert (= (and b!6432094 c!1175603) b!6432096))

(assert (= (and b!6432094 (not c!1175603)) b!6432092))

(declare-fun m!7225678 () Bool)

(assert (=> b!6432094 m!7225678))

(assert (=> b!6432094 m!7225678))

(declare-fun m!7225680 () Bool)

(assert (=> b!6432094 m!7225680))

(declare-fun m!7225682 () Bool)

(assert (=> d!2016331 m!7225682))

(declare-fun m!7225684 () Bool)

(assert (=> d!2016331 m!7225684))

(assert (=> b!6432099 m!7223788))

(declare-fun m!7225686 () Bool)

(assert (=> b!6432091 m!7225686))

(declare-fun m!7225688 () Bool)

(assert (=> b!6432093 m!7225688))

(declare-fun m!7225690 () Bool)

(assert (=> b!6432090 m!7225690))

(declare-fun m!7225692 () Bool)

(assert (=> b!6432096 m!7225692))

(declare-fun m!7225694 () Bool)

(assert (=> b!6432092 m!7225694))

(assert (=> b!6431179 d!2016331))

(declare-fun d!2016335 () Bool)

(assert (=> d!2016335 true))

(declare-fun setRes!43921 () Bool)

(assert (=> d!2016335 setRes!43921))

(declare-fun condSetEmpty!43921 () Bool)

(declare-fun res!2643923 () (InoxSet Context!11438))

(assert (=> d!2016335 (= condSetEmpty!43921 (= res!2643923 ((as const (Array Context!11438 Bool)) false)))))

(assert (=> d!2016335 (= (choose!47821 lt!2379369 lambda!355716) res!2643923)))

(declare-fun setIsEmpty!43921 () Bool)

(assert (=> setIsEmpty!43921 setRes!43921))

(declare-fun setElem!43921 () Context!11438)

(declare-fun setNonEmpty!43921 () Bool)

(declare-fun e!3901976 () Bool)

(declare-fun tp!1784272 () Bool)

(assert (=> setNonEmpty!43921 (= setRes!43921 (and tp!1784272 (inv!84084 setElem!43921) e!3901976))))

(declare-fun setRest!43921 () (InoxSet Context!11438))

(assert (=> setNonEmpty!43921 (= res!2643923 ((_ map or) (store ((as const (Array Context!11438 Bool)) false) setElem!43921 true) setRest!43921))))

(declare-fun b!6432100 () Bool)

(declare-fun tp!1784271 () Bool)

(assert (=> b!6432100 (= e!3901976 tp!1784271)))

(assert (= (and d!2016335 condSetEmpty!43921) setIsEmpty!43921))

(assert (= (and d!2016335 (not condSetEmpty!43921)) setNonEmpty!43921))

(assert (= setNonEmpty!43921 b!6432100))

(declare-fun m!7225696 () Bool)

(assert (=> setNonEmpty!43921 m!7225696))

(assert (=> d!2015911 d!2016335))

(declare-fun bs!1618066 () Bool)

(declare-fun d!2016337 () Bool)

(assert (= bs!1618066 (and d!2016337 d!2016051)))

(declare-fun lambda!355866 () Int)

(assert (=> bs!1618066 (= lambda!355866 lambda!355836)))

(declare-fun bs!1618067 () Bool)

(assert (= bs!1618067 (and d!2016337 d!2016059)))

(assert (=> bs!1618067 (= lambda!355866 lambda!355837)))

(declare-fun bs!1618068 () Bool)

(assert (= bs!1618068 (and d!2016337 d!2016063)))

(assert (=> bs!1618068 (= lambda!355866 lambda!355838)))

(assert (=> d!2016337 (= (nullableZipper!2100 lt!2379360) (exists!2600 lt!2379360 lambda!355866))))

(declare-fun bs!1618069 () Bool)

(assert (= bs!1618069 d!2016337))

(declare-fun m!7225698 () Bool)

(assert (=> bs!1618069 m!7225698))

(assert (=> b!6430705 d!2016337))

(assert (=> b!6430699 d!2015907))

(declare-fun bs!1618070 () Bool)

(declare-fun d!2016339 () Bool)

(assert (= bs!1618070 (and d!2016339 d!2015651)))

(declare-fun lambda!355867 () Int)

(assert (=> bs!1618070 (= lambda!355867 lambda!355744)))

(declare-fun bs!1618071 () Bool)

(assert (= bs!1618071 (and d!2016339 d!2015705)))

(assert (=> bs!1618071 (= lambda!355867 lambda!355761)))

(declare-fun bs!1618072 () Bool)

(assert (= bs!1618072 (and d!2016339 d!2015739)))

(assert (=> bs!1618072 (= lambda!355867 lambda!355765)))

(declare-fun bs!1618073 () Bool)

(assert (= bs!1618073 (and d!2016339 d!2016067)))

(assert (=> bs!1618073 (= lambda!355867 lambda!355839)))

(declare-fun bs!1618074 () Bool)

(assert (= bs!1618074 (and d!2016339 d!2016025)))

(assert (=> bs!1618074 (= lambda!355867 lambda!355833)))

(declare-fun bs!1618075 () Bool)

(assert (= bs!1618075 (and d!2016339 d!2016069)))

(assert (=> bs!1618075 (= lambda!355867 lambda!355840)))

(declare-fun bs!1618076 () Bool)

(assert (= bs!1618076 (and d!2016339 d!2016175)))

(assert (=> bs!1618076 (= lambda!355867 lambda!355846)))

(declare-fun bs!1618077 () Bool)

(assert (= bs!1618077 (and d!2016339 d!2015713)))

(assert (=> bs!1618077 (= lambda!355867 lambda!355764)))

(declare-fun bs!1618078 () Bool)

(assert (= bs!1618078 (and d!2016339 d!2015907)))

(assert (=> bs!1618078 (= lambda!355867 lambda!355817)))

(declare-fun bs!1618079 () Bool)

(assert (= bs!1618079 (and d!2016339 d!2015603)))

(assert (=> bs!1618079 (= lambda!355867 lambda!355733)))

(declare-fun bs!1618080 () Bool)

(assert (= bs!1618080 (and d!2016339 d!2016331)))

(assert (=> bs!1618080 (= lambda!355867 lambda!355865)))

(declare-fun lt!2379596 () List!65305)

(assert (=> d!2016339 (forall!15525 lt!2379596 lambda!355867)))

(declare-fun e!3901977 () List!65305)

(assert (=> d!2016339 (= lt!2379596 e!3901977)))

(declare-fun c!1175606 () Bool)

(assert (=> d!2016339 (= c!1175606 ((_ is Cons!65182) (t!378922 zl!343)))))

(assert (=> d!2016339 (= (unfocusZipperList!1756 (t!378922 zl!343)) lt!2379596)))

(declare-fun b!6432101 () Bool)

(assert (=> b!6432101 (= e!3901977 (Cons!65181 (generalisedConcat!1932 (exprs!6219 (h!71630 (t!378922 zl!343)))) (unfocusZipperList!1756 (t!378922 (t!378922 zl!343)))))))

(declare-fun b!6432102 () Bool)

(assert (=> b!6432102 (= e!3901977 Nil!65181)))

(assert (= (and d!2016339 c!1175606) b!6432101))

(assert (= (and d!2016339 (not c!1175606)) b!6432102))

(declare-fun m!7225700 () Bool)

(assert (=> d!2016339 m!7225700))

(declare-fun m!7225702 () Bool)

(assert (=> b!6432101 m!7225702))

(declare-fun m!7225704 () Bool)

(assert (=> b!6432101 m!7225704))

(assert (=> b!6430699 d!2016339))

(declare-fun d!2016341 () Bool)

(assert (=> d!2016341 (= (isEmpty!37350 (tail!12246 (_1!36617 lt!2379342))) ((_ is Nil!65180) (tail!12246 (_1!36617 lt!2379342))))))

(assert (=> b!6431057 d!2016341))

(assert (=> b!6431057 d!2016319))

(assert (=> b!6430726 d!2015961))

(declare-fun d!2016343 () Bool)

(assert (=> d!2016343 (= (nullable!6328 (reg!16664 r!7292)) (nullableFct!2274 (reg!16664 r!7292)))))

(declare-fun bs!1618081 () Bool)

(assert (= bs!1618081 d!2016343))

(declare-fun m!7225706 () Bool)

(assert (=> bs!1618081 m!7225706))

(assert (=> b!6431094 d!2016343))

(assert (=> b!6430552 d!2015659))

(declare-fun d!2016345 () Bool)

(assert (=> d!2016345 (= (isEmpty!37350 (tail!12246 (_2!36617 lt!2379342))) ((_ is Nil!65180) (tail!12246 (_2!36617 lt!2379342))))))

(assert (=> b!6430877 d!2016345))

(assert (=> b!6430877 d!2016235))

(assert (=> b!6430429 d!2016113))

(assert (=> bm!553131 d!2016083))

(declare-fun b!6432108 () Bool)

(declare-fun e!3901982 () Bool)

(declare-fun e!3901984 () Bool)

(assert (=> b!6432108 (= e!3901982 e!3901984)))

(declare-fun res!2643929 () Bool)

(assert (=> b!6432108 (= res!2643929 (not (nullable!6328 (reg!16664 lt!2379465))))))

(assert (=> b!6432108 (=> (not res!2643929) (not e!3901984))))

(declare-fun c!1175608 () Bool)

(declare-fun bm!553330 () Bool)

(declare-fun c!1175607 () Bool)

(declare-fun call!553335 () Bool)

(assert (=> bm!553330 (= call!553335 (validRegex!8071 (ite c!1175607 (reg!16664 lt!2379465) (ite c!1175608 (regOne!33183 lt!2379465) (regOne!33182 lt!2379465)))))))

(declare-fun b!6432109 () Bool)

(declare-fun e!3901981 () Bool)

(declare-fun call!553336 () Bool)

(assert (=> b!6432109 (= e!3901981 call!553336)))

(declare-fun b!6432110 () Bool)

(declare-fun e!3901986 () Bool)

(assert (=> b!6432110 (= e!3901982 e!3901986)))

(assert (=> b!6432110 (= c!1175608 ((_ is Union!16335) lt!2379465))))

(declare-fun b!6432111 () Bool)

(declare-fun e!3901985 () Bool)

(declare-fun e!3901980 () Bool)

(assert (=> b!6432111 (= e!3901985 e!3901980)))

(declare-fun res!2643932 () Bool)

(assert (=> b!6432111 (=> (not res!2643932) (not e!3901980))))

(declare-fun call!553337 () Bool)

(assert (=> b!6432111 (= res!2643932 call!553337)))

(declare-fun b!6432112 () Bool)

(declare-fun e!3901983 () Bool)

(assert (=> b!6432112 (= e!3901983 e!3901982)))

(assert (=> b!6432112 (= c!1175607 ((_ is Star!16335) lt!2379465))))

(declare-fun b!6432107 () Bool)

(declare-fun res!2643931 () Bool)

(assert (=> b!6432107 (=> res!2643931 e!3901985)))

(assert (=> b!6432107 (= res!2643931 (not ((_ is Concat!25180) lt!2379465)))))

(assert (=> b!6432107 (= e!3901986 e!3901985)))

(declare-fun d!2016347 () Bool)

(declare-fun res!2643930 () Bool)

(assert (=> d!2016347 (=> res!2643930 e!3901983)))

(assert (=> d!2016347 (= res!2643930 ((_ is ElementMatch!16335) lt!2379465))))

(assert (=> d!2016347 (= (validRegex!8071 lt!2379465) e!3901983)))

(declare-fun b!6432113 () Bool)

(declare-fun res!2643928 () Bool)

(assert (=> b!6432113 (=> (not res!2643928) (not e!3901981))))

(assert (=> b!6432113 (= res!2643928 call!553337)))

(assert (=> b!6432113 (= e!3901986 e!3901981)))

(declare-fun b!6432114 () Bool)

(assert (=> b!6432114 (= e!3901984 call!553335)))

(declare-fun bm!553331 () Bool)

(assert (=> bm!553331 (= call!553336 (validRegex!8071 (ite c!1175608 (regTwo!33183 lt!2379465) (regTwo!33182 lt!2379465))))))

(declare-fun bm!553332 () Bool)

(assert (=> bm!553332 (= call!553337 call!553335)))

(declare-fun b!6432115 () Bool)

(assert (=> b!6432115 (= e!3901980 call!553336)))

(assert (= (and d!2016347 (not res!2643930)) b!6432112))

(assert (= (and b!6432112 c!1175607) b!6432108))

(assert (= (and b!6432112 (not c!1175607)) b!6432110))

(assert (= (and b!6432108 res!2643929) b!6432114))

(assert (= (and b!6432110 c!1175608) b!6432113))

(assert (= (and b!6432110 (not c!1175608)) b!6432107))

(assert (= (and b!6432113 res!2643928) b!6432109))

(assert (= (and b!6432107 (not res!2643931)) b!6432111))

(assert (= (and b!6432111 res!2643932) b!6432115))

(assert (= (or b!6432109 b!6432115) bm!553331))

(assert (= (or b!6432113 b!6432111) bm!553332))

(assert (= (or b!6432114 bm!553332) bm!553330))

(declare-fun m!7225708 () Bool)

(assert (=> b!6432108 m!7225708))

(declare-fun m!7225710 () Bool)

(assert (=> bm!553330 m!7225710))

(declare-fun m!7225712 () Bool)

(assert (=> bm!553331 m!7225712))

(assert (=> d!2015705 d!2016347))

(declare-fun d!2016349 () Bool)

(declare-fun res!2643937 () Bool)

(declare-fun e!3901991 () Bool)

(assert (=> d!2016349 (=> res!2643937 e!3901991)))

(assert (=> d!2016349 (= res!2643937 ((_ is Nil!65181) (unfocusZipperList!1756 zl!343)))))

(assert (=> d!2016349 (= (forall!15525 (unfocusZipperList!1756 zl!343) lambda!355761) e!3901991)))

(declare-fun b!6432120 () Bool)

(declare-fun e!3901992 () Bool)

(assert (=> b!6432120 (= e!3901991 e!3901992)))

(declare-fun res!2643938 () Bool)

(assert (=> b!6432120 (=> (not res!2643938) (not e!3901992))))

(declare-fun dynLambda!25894 (Int Regex!16335) Bool)

(assert (=> b!6432120 (= res!2643938 (dynLambda!25894 lambda!355761 (h!71629 (unfocusZipperList!1756 zl!343))))))

(declare-fun b!6432121 () Bool)

(assert (=> b!6432121 (= e!3901992 (forall!15525 (t!378921 (unfocusZipperList!1756 zl!343)) lambda!355761))))

(assert (= (and d!2016349 (not res!2643937)) b!6432120))

(assert (= (and b!6432120 res!2643938) b!6432121))

(declare-fun b_lambda!244349 () Bool)

(assert (=> (not b_lambda!244349) (not b!6432120)))

(declare-fun m!7225714 () Bool)

(assert (=> b!6432120 m!7225714))

(declare-fun m!7225716 () Bool)

(assert (=> b!6432121 m!7225716))

(assert (=> d!2015705 d!2016349))

(assert (=> bs!1617623 d!2015915))

(declare-fun bs!1618093 () Bool)

(declare-fun d!2016351 () Bool)

(assert (= bs!1618093 (and d!2016351 d!2015651)))

(declare-fun lambda!355871 () Int)

(assert (=> bs!1618093 (= lambda!355871 lambda!355744)))

(declare-fun bs!1618094 () Bool)

(assert (= bs!1618094 (and d!2016351 d!2016339)))

(assert (=> bs!1618094 (= lambda!355871 lambda!355867)))

(declare-fun bs!1618095 () Bool)

(assert (= bs!1618095 (and d!2016351 d!2015705)))

(assert (=> bs!1618095 (= lambda!355871 lambda!355761)))

(declare-fun bs!1618097 () Bool)

(assert (= bs!1618097 (and d!2016351 d!2015739)))

(assert (=> bs!1618097 (= lambda!355871 lambda!355765)))

(declare-fun bs!1618099 () Bool)

(assert (= bs!1618099 (and d!2016351 d!2016067)))

(assert (=> bs!1618099 (= lambda!355871 lambda!355839)))

(declare-fun bs!1618100 () Bool)

(assert (= bs!1618100 (and d!2016351 d!2016025)))

(assert (=> bs!1618100 (= lambda!355871 lambda!355833)))

(declare-fun bs!1618101 () Bool)

(assert (= bs!1618101 (and d!2016351 d!2016069)))

(assert (=> bs!1618101 (= lambda!355871 lambda!355840)))

(declare-fun bs!1618102 () Bool)

(assert (= bs!1618102 (and d!2016351 d!2016175)))

(assert (=> bs!1618102 (= lambda!355871 lambda!355846)))

(declare-fun bs!1618104 () Bool)

(assert (= bs!1618104 (and d!2016351 d!2015713)))

(assert (=> bs!1618104 (= lambda!355871 lambda!355764)))

(declare-fun bs!1618105 () Bool)

(assert (= bs!1618105 (and d!2016351 d!2015907)))

(assert (=> bs!1618105 (= lambda!355871 lambda!355817)))

(declare-fun bs!1618107 () Bool)

(assert (= bs!1618107 (and d!2016351 d!2015603)))

(assert (=> bs!1618107 (= lambda!355871 lambda!355733)))

(declare-fun bs!1618108 () Bool)

(assert (= bs!1618108 (and d!2016351 d!2016331)))

(assert (=> bs!1618108 (= lambda!355871 lambda!355865)))

(declare-fun b!6432123 () Bool)

(declare-fun e!3901995 () Regex!16335)

(assert (=> b!6432123 (= e!3901995 (h!71629 (t!378921 (unfocusZipperList!1756 zl!343))))))

(declare-fun b!6432124 () Bool)

(declare-fun e!3901994 () Bool)

(assert (=> b!6432124 (= e!3901994 (isEmpty!37349 (t!378921 (t!378921 (unfocusZipperList!1756 zl!343)))))))

(declare-fun b!6432125 () Bool)

(declare-fun e!3901996 () Bool)

(declare-fun lt!2379597 () Regex!16335)

(assert (=> b!6432125 (= e!3901996 (isUnion!1173 lt!2379597))))

(declare-fun b!6432126 () Bool)

(declare-fun e!3901998 () Bool)

(declare-fun e!3901997 () Bool)

(assert (=> b!6432126 (= e!3901998 e!3901997)))

(declare-fun c!1175610 () Bool)

(assert (=> b!6432126 (= c!1175610 (isEmpty!37349 (t!378921 (unfocusZipperList!1756 zl!343))))))

(declare-fun b!6432127 () Bool)

(declare-fun e!3901993 () Regex!16335)

(assert (=> b!6432127 (= e!3901993 (Union!16335 (h!71629 (t!378921 (unfocusZipperList!1756 zl!343))) (generalisedUnion!2179 (t!378921 (t!378921 (unfocusZipperList!1756 zl!343))))))))

(declare-fun b!6432128 () Bool)

(assert (=> b!6432128 (= e!3901995 e!3901993)))

(declare-fun c!1175611 () Bool)

(assert (=> b!6432128 (= c!1175611 ((_ is Cons!65181) (t!378921 (unfocusZipperList!1756 zl!343))))))

(declare-fun b!6432129 () Bool)

(assert (=> b!6432129 (= e!3901997 e!3901996)))

(declare-fun c!1175612 () Bool)

(assert (=> b!6432129 (= c!1175612 (isEmpty!37349 (tail!12247 (t!378921 (unfocusZipperList!1756 zl!343)))))))

(assert (=> d!2016351 e!3901998))

(declare-fun res!2643940 () Bool)

(assert (=> d!2016351 (=> (not res!2643940) (not e!3901998))))

(assert (=> d!2016351 (= res!2643940 (validRegex!8071 lt!2379597))))

(assert (=> d!2016351 (= lt!2379597 e!3901995)))

(declare-fun c!1175609 () Bool)

(assert (=> d!2016351 (= c!1175609 e!3901994)))

(declare-fun res!2643939 () Bool)

(assert (=> d!2016351 (=> (not res!2643939) (not e!3901994))))

(assert (=> d!2016351 (= res!2643939 ((_ is Cons!65181) (t!378921 (unfocusZipperList!1756 zl!343))))))

(assert (=> d!2016351 (forall!15525 (t!378921 (unfocusZipperList!1756 zl!343)) lambda!355871)))

(assert (=> d!2016351 (= (generalisedUnion!2179 (t!378921 (unfocusZipperList!1756 zl!343))) lt!2379597)))

(declare-fun b!6432122 () Bool)

(assert (=> b!6432122 (= e!3901996 (= lt!2379597 (head!13162 (t!378921 (unfocusZipperList!1756 zl!343)))))))

(declare-fun b!6432130 () Bool)

(assert (=> b!6432130 (= e!3901993 EmptyLang!16335)))

(declare-fun b!6432131 () Bool)

(assert (=> b!6432131 (= e!3901997 (isEmptyLang!1743 lt!2379597))))

(assert (= (and d!2016351 res!2643939) b!6432124))

(assert (= (and d!2016351 c!1175609) b!6432123))

(assert (= (and d!2016351 (not c!1175609)) b!6432128))

(assert (= (and b!6432128 c!1175611) b!6432127))

(assert (= (and b!6432128 (not c!1175611)) b!6432130))

(assert (= (and d!2016351 res!2643940) b!6432126))

(assert (= (and b!6432126 c!1175610) b!6432131))

(assert (= (and b!6432126 (not c!1175610)) b!6432129))

(assert (= (and b!6432129 c!1175612) b!6432122))

(assert (= (and b!6432129 (not c!1175612)) b!6432125))

(declare-fun m!7225718 () Bool)

(assert (=> b!6432124 m!7225718))

(declare-fun m!7225720 () Bool)

(assert (=> b!6432127 m!7225720))

(declare-fun m!7225722 () Bool)

(assert (=> b!6432131 m!7225722))

(assert (=> b!6432126 m!7224264))

(declare-fun m!7225724 () Bool)

(assert (=> b!6432129 m!7225724))

(assert (=> b!6432129 m!7225724))

(declare-fun m!7225726 () Bool)

(assert (=> b!6432129 m!7225726))

(declare-fun m!7225728 () Bool)

(assert (=> d!2016351 m!7225728))

(declare-fun m!7225730 () Bool)

(assert (=> d!2016351 m!7225730))

(declare-fun m!7225732 () Bool)

(assert (=> b!6432125 m!7225732))

(declare-fun m!7225734 () Bool)

(assert (=> b!6432122 m!7225734))

(assert (=> b!6430680 d!2016351))

(declare-fun d!2016353 () Bool)

(assert (=> d!2016353 (= (Exists!3405 (ite c!1175338 lambda!355813 lambda!355814)) (choose!47830 (ite c!1175338 lambda!355813 lambda!355814)))))

(declare-fun bs!1618112 () Bool)

(assert (= bs!1618112 d!2016353))

(declare-fun m!7225738 () Bool)

(assert (=> bs!1618112 m!7225738))

(assert (=> bm!553159 d!2016353))

(declare-fun d!2016357 () Bool)

(assert (=> d!2016357 (= (isDefined!12929 lt!2379537) (not (isEmpty!37352 lt!2379537)))))

(declare-fun bs!1618114 () Bool)

(assert (= bs!1618114 d!2016357))

(declare-fun m!7225742 () Bool)

(assert (=> bs!1618114 m!7225742))

(assert (=> d!2015885 d!2016357))

(declare-fun d!2016361 () Bool)

(declare-fun e!3902004 () Bool)

(assert (=> d!2016361 e!3902004))

(declare-fun c!1175614 () Bool)

(assert (=> d!2016361 (= c!1175614 ((_ is EmptyExpr!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun lt!2379598 () Bool)

(declare-fun e!3901999 () Bool)

(assert (=> d!2016361 (= lt!2379598 e!3901999)))

(declare-fun c!1175615 () Bool)

(assert (=> d!2016361 (= c!1175615 (isEmpty!37350 Nil!65180))))

(assert (=> d!2016361 (validRegex!8071 (reg!16664 (regOne!33182 r!7292)))))

(assert (=> d!2016361 (= (matchR!8518 (reg!16664 (regOne!33182 r!7292)) Nil!65180) lt!2379598)))

(declare-fun b!6432132 () Bool)

(declare-fun e!3902003 () Bool)

(assert (=> b!6432132 (= e!3902003 (not (= (head!13161 Nil!65180) (c!1175066 (reg!16664 (regOne!33182 r!7292))))))))

(declare-fun b!6432133 () Bool)

(assert (=> b!6432133 (= e!3901999 (matchR!8518 (derivativeStep!5039 (reg!16664 (regOne!33182 r!7292)) (head!13161 Nil!65180)) (tail!12246 Nil!65180)))))

(declare-fun b!6432134 () Bool)

(declare-fun res!2643942 () Bool)

(declare-fun e!3902002 () Bool)

(assert (=> b!6432134 (=> res!2643942 e!3902002)))

(declare-fun e!3902000 () Bool)

(assert (=> b!6432134 (= res!2643942 e!3902000)))

(declare-fun res!2643946 () Bool)

(assert (=> b!6432134 (=> (not res!2643946) (not e!3902000))))

(assert (=> b!6432134 (= res!2643946 lt!2379598)))

(declare-fun b!6432135 () Bool)

(declare-fun res!2643944 () Bool)

(assert (=> b!6432135 (=> res!2643944 e!3902002)))

(assert (=> b!6432135 (= res!2643944 (not ((_ is ElementMatch!16335) (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun e!3902001 () Bool)

(assert (=> b!6432135 (= e!3902001 e!3902002)))

(declare-fun b!6432136 () Bool)

(declare-fun e!3902005 () Bool)

(assert (=> b!6432136 (= e!3902002 e!3902005)))

(declare-fun res!2643947 () Bool)

(assert (=> b!6432136 (=> (not res!2643947) (not e!3902005))))

(assert (=> b!6432136 (= res!2643947 (not lt!2379598))))

(declare-fun b!6432137 () Bool)

(declare-fun res!2643945 () Bool)

(assert (=> b!6432137 (=> res!2643945 e!3902003)))

(assert (=> b!6432137 (= res!2643945 (not (isEmpty!37350 (tail!12246 Nil!65180))))))

(declare-fun b!6432138 () Bool)

(assert (=> b!6432138 (= e!3901999 (nullable!6328 (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6432139 () Bool)

(assert (=> b!6432139 (= e!3902004 e!3902001)))

(declare-fun c!1175613 () Bool)

(assert (=> b!6432139 (= c!1175613 ((_ is EmptyLang!16335) (reg!16664 (regOne!33182 r!7292))))))

(declare-fun b!6432140 () Bool)

(declare-fun call!553338 () Bool)

(assert (=> b!6432140 (= e!3902004 (= lt!2379598 call!553338))))

(declare-fun b!6432141 () Bool)

(assert (=> b!6432141 (= e!3902001 (not lt!2379598))))

(declare-fun b!6432142 () Bool)

(declare-fun res!2643948 () Bool)

(assert (=> b!6432142 (=> (not res!2643948) (not e!3902000))))

(assert (=> b!6432142 (= res!2643948 (isEmpty!37350 (tail!12246 Nil!65180)))))

(declare-fun b!6432143 () Bool)

(assert (=> b!6432143 (= e!3902005 e!3902003)))

(declare-fun res!2643941 () Bool)

(assert (=> b!6432143 (=> res!2643941 e!3902003)))

(assert (=> b!6432143 (= res!2643941 call!553338)))

(declare-fun b!6432144 () Bool)

(assert (=> b!6432144 (= e!3902000 (= (head!13161 Nil!65180) (c!1175066 (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun bm!553333 () Bool)

(assert (=> bm!553333 (= call!553338 (isEmpty!37350 Nil!65180))))

(declare-fun b!6432145 () Bool)

(declare-fun res!2643943 () Bool)

(assert (=> b!6432145 (=> (not res!2643943) (not e!3902000))))

(assert (=> b!6432145 (= res!2643943 (not call!553338))))

(assert (= (and d!2016361 c!1175615) b!6432138))

(assert (= (and d!2016361 (not c!1175615)) b!6432133))

(assert (= (and d!2016361 c!1175614) b!6432140))

(assert (= (and d!2016361 (not c!1175614)) b!6432139))

(assert (= (and b!6432139 c!1175613) b!6432141))

(assert (= (and b!6432139 (not c!1175613)) b!6432135))

(assert (= (and b!6432135 (not res!2643944)) b!6432134))

(assert (= (and b!6432134 res!2643946) b!6432145))

(assert (= (and b!6432145 res!2643943) b!6432142))

(assert (= (and b!6432142 res!2643948) b!6432144))

(assert (= (and b!6432134 (not res!2643942)) b!6432136))

(assert (= (and b!6432136 res!2643947) b!6432143))

(assert (= (and b!6432143 (not res!2643941)) b!6432137))

(assert (= (and b!6432137 (not res!2643945)) b!6432132))

(assert (= (or b!6432140 b!6432145 b!6432143) bm!553333))

(assert (=> d!2016361 m!7225180))

(assert (=> d!2016361 m!7224678))

(assert (=> b!6432132 m!7225182))

(assert (=> b!6432142 m!7225184))

(assert (=> b!6432142 m!7225184))

(assert (=> b!6432142 m!7225186))

(assert (=> b!6432137 m!7225184))

(assert (=> b!6432137 m!7225184))

(assert (=> b!6432137 m!7225186))

(assert (=> b!6432144 m!7225182))

(assert (=> bm!553333 m!7225180))

(assert (=> b!6432138 m!7224686))

(assert (=> b!6432133 m!7225182))

(assert (=> b!6432133 m!7225182))

(declare-fun m!7225748 () Bool)

(assert (=> b!6432133 m!7225748))

(assert (=> b!6432133 m!7225184))

(assert (=> b!6432133 m!7225748))

(assert (=> b!6432133 m!7225184))

(declare-fun m!7225754 () Bool)

(assert (=> b!6432133 m!7225754))

(assert (=> d!2015885 d!2016361))

(assert (=> d!2015885 d!2015959))

(assert (=> bm!553127 d!2016083))

(assert (=> b!6431067 d!2015999))

(declare-fun d!2016367 () Bool)

(assert (=> d!2016367 (= (isDefined!12929 lt!2379531) (not (isEmpty!37352 lt!2379531)))))

(declare-fun bs!1618123 () Bool)

(assert (= bs!1618123 d!2016367))

(declare-fun m!7225756 () Bool)

(assert (=> bs!1618123 m!7225756))

(assert (=> d!2015873 d!2016367))

(declare-fun d!2016369 () Bool)

(declare-fun e!3902018 () Bool)

(assert (=> d!2016369 e!3902018))

(declare-fun c!1175623 () Bool)

(assert (=> d!2016369 (= c!1175623 ((_ is EmptyExpr!16335) lt!2379353))))

(declare-fun lt!2379600 () Bool)

(declare-fun e!3902013 () Bool)

(assert (=> d!2016369 (= lt!2379600 e!3902013)))

(declare-fun c!1175624 () Bool)

(assert (=> d!2016369 (= c!1175624 (isEmpty!37350 Nil!65180))))

(assert (=> d!2016369 (validRegex!8071 lt!2379353)))

(assert (=> d!2016369 (= (matchR!8518 lt!2379353 Nil!65180) lt!2379600)))

(declare-fun b!6432159 () Bool)

(declare-fun e!3902017 () Bool)

(assert (=> b!6432159 (= e!3902017 (not (= (head!13161 Nil!65180) (c!1175066 lt!2379353))))))

(declare-fun b!6432160 () Bool)

(assert (=> b!6432160 (= e!3902013 (matchR!8518 (derivativeStep!5039 lt!2379353 (head!13161 Nil!65180)) (tail!12246 Nil!65180)))))

(declare-fun b!6432161 () Bool)

(declare-fun res!2643951 () Bool)

(declare-fun e!3902016 () Bool)

(assert (=> b!6432161 (=> res!2643951 e!3902016)))

(declare-fun e!3902014 () Bool)

(assert (=> b!6432161 (= res!2643951 e!3902014)))

(declare-fun res!2643955 () Bool)

(assert (=> b!6432161 (=> (not res!2643955) (not e!3902014))))

(assert (=> b!6432161 (= res!2643955 lt!2379600)))

(declare-fun b!6432162 () Bool)

(declare-fun res!2643953 () Bool)

(assert (=> b!6432162 (=> res!2643953 e!3902016)))

(assert (=> b!6432162 (= res!2643953 (not ((_ is ElementMatch!16335) lt!2379353)))))

(declare-fun e!3902015 () Bool)

(assert (=> b!6432162 (= e!3902015 e!3902016)))

(declare-fun b!6432163 () Bool)

(declare-fun e!3902019 () Bool)

(assert (=> b!6432163 (= e!3902016 e!3902019)))

(declare-fun res!2643956 () Bool)

(assert (=> b!6432163 (=> (not res!2643956) (not e!3902019))))

(assert (=> b!6432163 (= res!2643956 (not lt!2379600))))

(declare-fun b!6432164 () Bool)

(declare-fun res!2643954 () Bool)

(assert (=> b!6432164 (=> res!2643954 e!3902017)))

(assert (=> b!6432164 (= res!2643954 (not (isEmpty!37350 (tail!12246 Nil!65180))))))

(declare-fun b!6432165 () Bool)

(assert (=> b!6432165 (= e!3902013 (nullable!6328 lt!2379353))))

(declare-fun b!6432166 () Bool)

(assert (=> b!6432166 (= e!3902018 e!3902015)))

(declare-fun c!1175622 () Bool)

(assert (=> b!6432166 (= c!1175622 ((_ is EmptyLang!16335) lt!2379353))))

(declare-fun b!6432167 () Bool)

(declare-fun call!553345 () Bool)

(assert (=> b!6432167 (= e!3902018 (= lt!2379600 call!553345))))

(declare-fun b!6432168 () Bool)

(assert (=> b!6432168 (= e!3902015 (not lt!2379600))))

(declare-fun b!6432169 () Bool)

(declare-fun res!2643957 () Bool)

(assert (=> b!6432169 (=> (not res!2643957) (not e!3902014))))

(assert (=> b!6432169 (= res!2643957 (isEmpty!37350 (tail!12246 Nil!65180)))))

(declare-fun b!6432170 () Bool)

(assert (=> b!6432170 (= e!3902019 e!3902017)))

(declare-fun res!2643950 () Bool)

(assert (=> b!6432170 (=> res!2643950 e!3902017)))

(assert (=> b!6432170 (= res!2643950 call!553345)))

(declare-fun b!6432171 () Bool)

(assert (=> b!6432171 (= e!3902014 (= (head!13161 Nil!65180) (c!1175066 lt!2379353)))))

(declare-fun bm!553340 () Bool)

(assert (=> bm!553340 (= call!553345 (isEmpty!37350 Nil!65180))))

(declare-fun b!6432172 () Bool)

(declare-fun res!2643952 () Bool)

(assert (=> b!6432172 (=> (not res!2643952) (not e!3902014))))

(assert (=> b!6432172 (= res!2643952 (not call!553345))))

(assert (= (and d!2016369 c!1175624) b!6432165))

(assert (= (and d!2016369 (not c!1175624)) b!6432160))

(assert (= (and d!2016369 c!1175623) b!6432167))

(assert (= (and d!2016369 (not c!1175623)) b!6432166))

(assert (= (and b!6432166 c!1175622) b!6432168))

(assert (= (and b!6432166 (not c!1175622)) b!6432162))

(assert (= (and b!6432162 (not res!2643953)) b!6432161))

(assert (= (and b!6432161 res!2643955) b!6432172))

(assert (= (and b!6432172 res!2643952) b!6432169))

(assert (= (and b!6432169 res!2643957) b!6432171))

(assert (= (and b!6432161 (not res!2643951)) b!6432163))

(assert (= (and b!6432163 res!2643956) b!6432170))

(assert (= (and b!6432170 (not res!2643950)) b!6432164))

(assert (= (and b!6432164 (not res!2643954)) b!6432159))

(assert (= (or b!6432167 b!6432172 b!6432170) bm!553340))

(assert (=> d!2016369 m!7225180))

(assert (=> d!2016369 m!7223958))

(assert (=> b!6432159 m!7225182))

(assert (=> b!6432169 m!7225184))

(assert (=> b!6432169 m!7225184))

(assert (=> b!6432169 m!7225186))

(assert (=> b!6432164 m!7225184))

(assert (=> b!6432164 m!7225184))

(assert (=> b!6432164 m!7225186))

(assert (=> b!6432171 m!7225182))

(assert (=> bm!553340 m!7225180))

(assert (=> b!6432165 m!7224052))

(assert (=> b!6432160 m!7225182))

(assert (=> b!6432160 m!7225182))

(declare-fun m!7225764 () Bool)

(assert (=> b!6432160 m!7225764))

(assert (=> b!6432160 m!7225184))

(assert (=> b!6432160 m!7225764))

(assert (=> b!6432160 m!7225184))

(declare-fun m!7225768 () Bool)

(assert (=> b!6432160 m!7225768))

(assert (=> d!2015873 d!2016369))

(assert (=> d!2015873 d!2015935))

(declare-fun d!2016371 () Bool)

(declare-fun c!1175625 () Bool)

(assert (=> d!2016371 (= c!1175625 ((_ is Nil!65180) lt!2379444))))

(declare-fun e!3902020 () (InoxSet C!32940))

(assert (=> d!2016371 (= (content!12384 lt!2379444) e!3902020)))

(declare-fun b!6432173 () Bool)

(assert (=> b!6432173 (= e!3902020 ((as const (Array C!32940 Bool)) false))))

(declare-fun b!6432174 () Bool)

(assert (=> b!6432174 (= e!3902020 ((_ map or) (store ((as const (Array C!32940 Bool)) false) (h!71628 lt!2379444) true) (content!12384 (t!378920 lt!2379444))))))

(assert (= (and d!2016371 c!1175625) b!6432173))

(assert (= (and d!2016371 (not c!1175625)) b!6432174))

(declare-fun m!7225772 () Bool)

(assert (=> b!6432174 m!7225772))

(declare-fun m!7225774 () Bool)

(assert (=> b!6432174 m!7225774))

(assert (=> d!2015691 d!2016371))

(declare-fun d!2016377 () Bool)

(declare-fun c!1175627 () Bool)

(assert (=> d!2016377 (= c!1175627 ((_ is Nil!65180) lt!2379371))))

(declare-fun e!3902023 () (InoxSet C!32940))

(assert (=> d!2016377 (= (content!12384 lt!2379371) e!3902023)))

(declare-fun b!6432179 () Bool)

(assert (=> b!6432179 (= e!3902023 ((as const (Array C!32940 Bool)) false))))

(declare-fun b!6432180 () Bool)

(assert (=> b!6432180 (= e!3902023 ((_ map or) (store ((as const (Array C!32940 Bool)) false) (h!71628 lt!2379371) true) (content!12384 (t!378920 lt!2379371))))))

(assert (= (and d!2016377 c!1175627) b!6432179))

(assert (= (and d!2016377 (not c!1175627)) b!6432180))

(declare-fun m!7225776 () Bool)

(assert (=> b!6432180 m!7225776))

(assert (=> b!6432180 m!7225676))

(assert (=> d!2015691 d!2016377))

(assert (=> d!2015691 d!2016187))

(declare-fun d!2016379 () Bool)

(assert (=> d!2016379 true))

(declare-fun setRes!43922 () Bool)

(assert (=> d!2016379 setRes!43922))

(declare-fun condSetEmpty!43922 () Bool)

(declare-fun res!2643960 () (InoxSet Context!11438))

(assert (=> d!2016379 (= condSetEmpty!43922 (= res!2643960 ((as const (Array Context!11438 Bool)) false)))))

(assert (=> d!2016379 (= (choose!47821 z!1189 lambda!355716) res!2643960)))

(declare-fun setIsEmpty!43922 () Bool)

(assert (=> setIsEmpty!43922 setRes!43922))

(declare-fun e!3902024 () Bool)

(declare-fun tp!1784274 () Bool)

(declare-fun setNonEmpty!43922 () Bool)

(declare-fun setElem!43922 () Context!11438)

(assert (=> setNonEmpty!43922 (= setRes!43922 (and tp!1784274 (inv!84084 setElem!43922) e!3902024))))

(declare-fun setRest!43922 () (InoxSet Context!11438))

(assert (=> setNonEmpty!43922 (= res!2643960 ((_ map or) (store ((as const (Array Context!11438 Bool)) false) setElem!43922 true) setRest!43922))))

(declare-fun b!6432181 () Bool)

(declare-fun tp!1784273 () Bool)

(assert (=> b!6432181 (= e!3902024 tp!1784273)))

(assert (= (and d!2016379 condSetEmpty!43922) setIsEmpty!43922))

(assert (= (and d!2016379 (not condSetEmpty!43922)) setNonEmpty!43922))

(assert (= setNonEmpty!43922 b!6432181))

(declare-fun m!7225788 () Bool)

(assert (=> setNonEmpty!43922 m!7225788))

(assert (=> d!2015657 d!2016379))

(assert (=> d!2015683 d!2016053))

(declare-fun d!2016383 () Bool)

(declare-fun lt!2379602 () Int)

(assert (=> d!2016383 (>= lt!2379602 0)))

(declare-fun e!3902025 () Int)

(assert (=> d!2016383 (= lt!2379602 e!3902025)))

(declare-fun c!1175628 () Bool)

(assert (=> d!2016383 (= c!1175628 ((_ is Nil!65180) lt!2379443))))

(assert (=> d!2016383 (= (size!40394 lt!2379443) lt!2379602)))

(declare-fun b!6432182 () Bool)

(assert (=> b!6432182 (= e!3902025 0)))

(declare-fun b!6432183 () Bool)

(assert (=> b!6432183 (= e!3902025 (+ 1 (size!40394 (t!378920 lt!2379443))))))

(assert (= (and d!2016383 c!1175628) b!6432182))

(assert (= (and d!2016383 (not c!1175628)) b!6432183))

(declare-fun m!7225790 () Bool)

(assert (=> b!6432183 m!7225790))

(assert (=> b!6430581 d!2016383))

(declare-fun d!2016385 () Bool)

(declare-fun lt!2379603 () Int)

(assert (=> d!2016385 (>= lt!2379603 0)))

(declare-fun e!3902026 () Int)

(assert (=> d!2016385 (= lt!2379603 e!3902026)))

(declare-fun c!1175629 () Bool)

(assert (=> d!2016385 (= c!1175629 ((_ is Nil!65180) (_1!36617 lt!2379342)))))

(assert (=> d!2016385 (= (size!40394 (_1!36617 lt!2379342)) lt!2379603)))

(declare-fun b!6432184 () Bool)

(assert (=> b!6432184 (= e!3902026 0)))

(declare-fun b!6432185 () Bool)

(assert (=> b!6432185 (= e!3902026 (+ 1 (size!40394 (t!378920 (_1!36617 lt!2379342)))))))

(assert (= (and d!2016385 c!1175629) b!6432184))

(assert (= (and d!2016385 (not c!1175629)) b!6432185))

(assert (=> b!6432185 m!7225628))

(assert (=> b!6430581 d!2016385))

(declare-fun d!2016387 () Bool)

(declare-fun lt!2379604 () Int)

(assert (=> d!2016387 (>= lt!2379604 0)))

(declare-fun e!3902027 () Int)

(assert (=> d!2016387 (= lt!2379604 e!3902027)))

(declare-fun c!1175630 () Bool)

(assert (=> d!2016387 (= c!1175630 ((_ is Nil!65180) lt!2379356))))

(assert (=> d!2016387 (= (size!40394 lt!2379356) lt!2379604)))

(declare-fun b!6432186 () Bool)

(assert (=> b!6432186 (= e!3902027 0)))

(declare-fun b!6432187 () Bool)

(assert (=> b!6432187 (= e!3902027 (+ 1 (size!40394 (t!378920 lt!2379356))))))

(assert (= (and d!2016387 c!1175630) b!6432186))

(assert (= (and d!2016387 (not c!1175630)) b!6432187))

(declare-fun m!7225792 () Bool)

(assert (=> b!6432187 m!7225792))

(assert (=> b!6430581 d!2016387))

(declare-fun d!2016389 () Bool)

(assert (=> d!2016389 (= (Exists!3405 (ite c!1175280 lambda!355779 lambda!355780)) (choose!47830 (ite c!1175280 lambda!355779 lambda!355780)))))

(declare-fun bs!1618124 () Bool)

(assert (= bs!1618124 d!2016389))

(declare-fun m!7225794 () Bool)

(assert (=> bs!1618124 m!7225794))

(assert (=> bm!553132 d!2016389))

(assert (=> b!6430938 d!2016089))

(declare-fun d!2016391 () Bool)

(assert (=> d!2016391 (= ($colon$colon!2196 (exprs!6219 lt!2379355) (ite (or c!1175246 c!1175248) (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (regOne!33182 r!7292)))) (Cons!65181 (ite (or c!1175246 c!1175248) (regTwo!33182 (reg!16664 (regOne!33182 r!7292))) (reg!16664 (regOne!33182 r!7292))) (exprs!6219 lt!2379355)))))

(assert (=> bm!553119 d!2016391))

(declare-fun d!2016393 () Bool)

(assert (=> d!2016393 (= (Exists!3405 lambda!355801) (choose!47830 lambda!355801))))

(declare-fun bs!1618126 () Bool)

(assert (= bs!1618126 d!2016393))

(declare-fun m!7225796 () Bool)

(assert (=> bs!1618126 m!7225796))

(assert (=> d!2015879 d!2016393))

(declare-fun bs!1618127 () Bool)

(declare-fun d!2016395 () Bool)

(assert (= bs!1618127 (and d!2016395 b!6431962)))

(declare-fun lambda!355873 () Int)

(assert (=> bs!1618127 (not (= lambda!355873 lambda!355855))))

(declare-fun bs!1618128 () Bool)

(assert (= bs!1618128 (and d!2016395 b!6431977)))

(assert (=> bs!1618128 (not (= lambda!355873 lambda!355860))))

(declare-fun bs!1618129 () Bool)

(assert (= bs!1618129 (and d!2016395 b!6430115)))

(assert (=> bs!1618129 (= lambda!355873 lambda!355717)))

(declare-fun bs!1618130 () Bool)

(assert (= bs!1618130 (and d!2016395 b!6431861)))

(assert (=> bs!1618130 (not (= lambda!355873 lambda!355850))))

(declare-fun bs!1618131 () Bool)

(assert (= bs!1618131 (and d!2016395 d!2016163)))

(assert (=> bs!1618131 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355873 lambda!355844))))

(declare-fun bs!1618133 () Bool)

(assert (= bs!1618133 (and d!2016395 b!6430094)))

(assert (=> bs!1618133 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355873 lambda!355719))))

(assert (=> bs!1618133 (not (= lambda!355873 lambda!355720))))

(declare-fun bs!1618134 () Bool)

(assert (= bs!1618134 (and d!2016395 d!2015881)))

(assert (=> bs!1618134 (= lambda!355873 lambda!355802)))

(declare-fun bs!1618135 () Bool)

(assert (= bs!1618135 (and d!2016395 d!2015991)))

(assert (=> bs!1618135 (= lambda!355873 lambda!355828)))

(declare-fun bs!1618136 () Bool)

(assert (= bs!1618136 (and d!2016395 d!2015957)))

(assert (=> bs!1618136 (not (= lambda!355873 lambda!355823))))

(declare-fun bs!1618137 () Bool)

(assert (= bs!1618137 (and d!2016395 d!2015895)))

(assert (=> bs!1618137 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355873 lambda!355811))))

(declare-fun bs!1618138 () Bool)

(assert (= bs!1618138 (and d!2016395 b!6430859)))

(assert (=> bs!1618138 (not (= lambda!355873 lambda!355779))))

(declare-fun bs!1618139 () Bool)

(assert (= bs!1618139 (and d!2016395 b!6432054)))

(assert (=> bs!1618139 (not (= lambda!355873 lambda!355864))))

(declare-fun bs!1618140 () Bool)

(assert (= bs!1618140 (and d!2016395 d!2015887)))

(assert (=> bs!1618140 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355873 lambda!355804))))

(declare-fun bs!1618141 () Bool)

(assert (= bs!1618141 (and d!2016395 b!6432048)))

(assert (=> bs!1618141 (not (= lambda!355873 lambda!355863))))

(declare-fun bs!1618142 () Bool)

(assert (= bs!1618142 (and d!2016395 d!2015879)))

(assert (=> bs!1618142 (= lambda!355873 lambda!355801)))

(declare-fun bs!1618143 () Bool)

(assert (= bs!1618143 (and d!2016395 d!2016021)))

(assert (=> bs!1618143 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355873 lambda!355832))))

(declare-fun bs!1618144 () Bool)

(assert (= bs!1618144 (and d!2016395 d!2015889)))

(assert (=> bs!1618144 (not (= lambda!355873 lambda!355806))))

(assert (=> bs!1618134 (not (= lambda!355873 lambda!355803))))

(declare-fun bs!1618145 () Bool)

(assert (= bs!1618145 (and d!2016395 b!6430810)))

(assert (=> bs!1618145 (not (= lambda!355873 lambda!355772))))

(declare-fun bs!1618146 () Bool)

(assert (= bs!1618146 (and d!2016395 b!6431148)))

(assert (=> bs!1618146 (not (= lambda!355873 lambda!355813))))

(assert (=> bs!1618133 (not (= lambda!355873 lambda!355721))))

(declare-fun bs!1618147 () Bool)

(assert (= bs!1618147 (and d!2016395 d!2015793)))

(assert (=> bs!1618147 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355873 lambda!355786))))

(declare-fun bs!1618148 () Bool)

(assert (= bs!1618148 (and d!2016395 b!6431983)))

(assert (=> bs!1618148 (not (= lambda!355873 lambda!355862))))

(declare-fun bs!1618149 () Bool)

(assert (= bs!1618149 (and d!2016395 b!6431953)))

(assert (=> bs!1618149 (not (= lambda!355873 lambda!355852))))

(declare-fun bs!1618150 () Bool)

(assert (= bs!1618150 (and d!2016395 b!6431154)))

(assert (=> bs!1618150 (not (= lambda!355873 lambda!355814))))

(declare-fun bs!1618151 () Bool)

(assert (= bs!1618151 (and d!2016395 b!6430128)))

(assert (=> bs!1618151 (not (= lambda!355873 lambda!355715))))

(declare-fun bs!1618152 () Bool)

(assert (= bs!1618152 (and d!2016395 b!6431855)))

(assert (=> bs!1618152 (not (= lambda!355873 lambda!355849))))

(assert (=> bs!1618135 (not (= lambda!355873 lambda!355829))))

(declare-fun bs!1618153 () Bool)

(assert (= bs!1618153 (and d!2016395 b!6431968)))

(assert (=> bs!1618153 (not (= lambda!355873 lambda!355859))))

(declare-fun bs!1618154 () Bool)

(assert (= bs!1618154 (and d!2016395 b!6430816)))

(assert (=> bs!1618154 (not (= lambda!355873 lambda!355773))))

(assert (=> bs!1618137 (not (= lambda!355873 lambda!355812))))

(declare-fun bs!1618155 () Bool)

(assert (= bs!1618155 (and d!2016395 b!6430865)))

(assert (=> bs!1618155 (not (= lambda!355873 lambda!355780))))

(assert (=> bs!1618144 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355873 lambda!355805))))

(assert (=> bs!1618136 (= (and (= s!2326 (_1!36617 lt!2379368)) (= lt!2379353 (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355873 lambda!355822))))

(assert (=> bs!1618129 (not (= lambda!355873 lambda!355718))))

(assert (=> bs!1618151 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355873 lambda!355714))))

(declare-fun bs!1618156 () Bool)

(assert (= bs!1618156 (and d!2016395 b!6431947)))

(assert (=> bs!1618156 (not (= lambda!355873 lambda!355851))))

(declare-fun bs!1618157 () Bool)

(assert (= bs!1618157 (and d!2016395 d!2015829)))

(assert (=> bs!1618157 (= (= lt!2379353 (regOne!33182 r!7292)) (= lambda!355873 lambda!355796))))

(assert (=> bs!1618157 (not (= lambda!355873 lambda!355797))))

(assert (=> d!2016395 true))

(assert (=> d!2016395 true))

(assert (=> d!2016395 true))

(assert (=> d!2016395 (= (isDefined!12929 (findConcatSeparation!2640 lt!2379353 (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326)) (Exists!3405 lambda!355873))))

(assert (=> d!2016395 true))

(declare-fun _$89!2675 () Unit!158671)

(assert (=> d!2016395 (= (choose!47831 lt!2379353 (regTwo!33182 r!7292) s!2326) _$89!2675)))

(declare-fun bs!1618158 () Bool)

(assert (= bs!1618158 d!2016395))

(assert (=> bs!1618158 m!7223676))

(assert (=> bs!1618158 m!7223676))

(assert (=> bs!1618158 m!7224752))

(declare-fun m!7225828 () Bool)

(assert (=> bs!1618158 m!7225828))

(assert (=> d!2015879 d!2016395))

(assert (=> d!2015879 d!2015873))

(assert (=> d!2015879 d!2015935))

(declare-fun d!2016415 () Bool)

(assert (=> d!2016415 (= (isDefined!12929 (findConcatSeparation!2640 lt!2379353 (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326)) (not (isEmpty!37352 (findConcatSeparation!2640 lt!2379353 (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326))))))

(declare-fun bs!1618159 () Bool)

(assert (= bs!1618159 d!2016415))

(assert (=> bs!1618159 m!7223676))

(declare-fun m!7225830 () Bool)

(assert (=> bs!1618159 m!7225830))

(assert (=> d!2015879 d!2016415))

(declare-fun bs!1618160 () Bool)

(declare-fun b!6432218 () Bool)

(assert (= bs!1618160 (and b!6432218 b!6431962)))

(declare-fun lambda!355874 () Int)

(assert (=> bs!1618160 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33183 lt!2379353)) (reg!16664 (regOne!33183 r!7292))) (= (regOne!33183 lt!2379353) (regOne!33183 r!7292))) (= lambda!355874 lambda!355855))))

(declare-fun bs!1618162 () Bool)

(assert (= bs!1618162 (and b!6432218 b!6431977)))

(assert (=> bs!1618162 (= (and (= (reg!16664 (regOne!33183 lt!2379353)) (reg!16664 (regTwo!33183 lt!2379353))) (= (regOne!33183 lt!2379353) (regTwo!33183 lt!2379353))) (= lambda!355874 lambda!355860))))

(declare-fun bs!1618163 () Bool)

(assert (= bs!1618163 (and b!6432218 b!6430115)))

(assert (=> bs!1618163 (not (= lambda!355874 lambda!355717))))

(declare-fun bs!1618164 () Bool)

(assert (= bs!1618164 (and b!6432218 b!6431861)))

(assert (=> bs!1618164 (not (= lambda!355874 lambda!355850))))

(declare-fun bs!1618165 () Bool)

(assert (= bs!1618165 (and b!6432218 d!2016163)))

(assert (=> bs!1618165 (not (= lambda!355874 lambda!355844))))

(declare-fun bs!1618166 () Bool)

(assert (= bs!1618166 (and b!6432218 b!6430094)))

(assert (=> bs!1618166 (not (= lambda!355874 lambda!355719))))

(assert (=> bs!1618166 (= (and (= (reg!16664 (regOne!33183 lt!2379353)) (reg!16664 (regOne!33182 r!7292))) (= (regOne!33183 lt!2379353) lt!2379353)) (= lambda!355874 lambda!355720))))

(declare-fun bs!1618167 () Bool)

(assert (= bs!1618167 (and b!6432218 d!2015881)))

(assert (=> bs!1618167 (not (= lambda!355874 lambda!355802))))

(declare-fun bs!1618168 () Bool)

(assert (= bs!1618168 (and b!6432218 d!2015991)))

(assert (=> bs!1618168 (not (= lambda!355874 lambda!355828))))

(declare-fun bs!1618169 () Bool)

(assert (= bs!1618169 (and b!6432218 d!2015957)))

(assert (=> bs!1618169 (= (and (= (reg!16664 (regOne!33183 lt!2379353)) (reg!16664 (regOne!33182 r!7292))) (= (regOne!33183 lt!2379353) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355874 lambda!355823))))

(declare-fun bs!1618170 () Bool)

(assert (= bs!1618170 (and b!6432218 d!2015895)))

(assert (=> bs!1618170 (not (= lambda!355874 lambda!355811))))

(declare-fun bs!1618171 () Bool)

(assert (= bs!1618171 (and b!6432218 b!6430859)))

(assert (=> bs!1618171 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33183 lt!2379353)) (reg!16664 lt!2379346)) (= (regOne!33183 lt!2379353) lt!2379346)) (= lambda!355874 lambda!355779))))

(declare-fun bs!1618172 () Bool)

(assert (= bs!1618172 (and b!6432218 b!6432054)))

(assert (=> bs!1618172 (not (= lambda!355874 lambda!355864))))

(declare-fun bs!1618173 () Bool)

(assert (= bs!1618173 (and b!6432218 d!2016395)))

(assert (=> bs!1618173 (not (= lambda!355874 lambda!355873))))

(declare-fun bs!1618174 () Bool)

(assert (= bs!1618174 (and b!6432218 d!2015887)))

(assert (=> bs!1618174 (not (= lambda!355874 lambda!355804))))

(declare-fun bs!1618175 () Bool)

(assert (= bs!1618175 (and b!6432218 b!6432048)))

(assert (=> bs!1618175 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33183 lt!2379353)) (reg!16664 (regTwo!33183 lt!2379346))) (= (regOne!33183 lt!2379353) (regTwo!33183 lt!2379346))) (= lambda!355874 lambda!355863))))

(declare-fun bs!1618176 () Bool)

(assert (= bs!1618176 (and b!6432218 d!2015879)))

(assert (=> bs!1618176 (not (= lambda!355874 lambda!355801))))

(declare-fun bs!1618177 () Bool)

(assert (= bs!1618177 (and b!6432218 d!2016021)))

(assert (=> bs!1618177 (not (= lambda!355874 lambda!355832))))

(declare-fun bs!1618178 () Bool)

(assert (= bs!1618178 (and b!6432218 d!2015889)))

(assert (=> bs!1618178 (not (= lambda!355874 lambda!355806))))

(assert (=> bs!1618167 (not (= lambda!355874 lambda!355803))))

(declare-fun bs!1618179 () Bool)

(assert (= bs!1618179 (and b!6432218 b!6430810)))

(assert (=> bs!1618179 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33183 lt!2379353)) (reg!16664 r!7292)) (= (regOne!33183 lt!2379353) r!7292)) (= lambda!355874 lambda!355772))))

(declare-fun bs!1618180 () Bool)

(assert (= bs!1618180 (and b!6432218 b!6431148)))

(assert (=> bs!1618180 (= (and (= (reg!16664 (regOne!33183 lt!2379353)) (reg!16664 lt!2379353)) (= (regOne!33183 lt!2379353) lt!2379353)) (= lambda!355874 lambda!355813))))

(assert (=> bs!1618166 (not (= lambda!355874 lambda!355721))))

(declare-fun bs!1618181 () Bool)

(assert (= bs!1618181 (and b!6432218 d!2015793)))

(assert (=> bs!1618181 (not (= lambda!355874 lambda!355786))))

(declare-fun bs!1618182 () Bool)

(assert (= bs!1618182 (and b!6432218 b!6431983)))

(assert (=> bs!1618182 (not (= lambda!355874 lambda!355862))))

(declare-fun bs!1618183 () Bool)

(assert (= bs!1618183 (and b!6432218 b!6431953)))

(assert (=> bs!1618183 (not (= lambda!355874 lambda!355852))))

(declare-fun bs!1618184 () Bool)

(assert (= bs!1618184 (and b!6432218 b!6431154)))

(assert (=> bs!1618184 (not (= lambda!355874 lambda!355814))))

(declare-fun bs!1618185 () Bool)

(assert (= bs!1618185 (and b!6432218 b!6430128)))

(assert (=> bs!1618185 (not (= lambda!355874 lambda!355715))))

(declare-fun bs!1618186 () Bool)

(assert (= bs!1618186 (and b!6432218 b!6431855)))

(assert (=> bs!1618186 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33183 lt!2379353)) (reg!16664 (regTwo!33183 r!7292))) (= (regOne!33183 lt!2379353) (regTwo!33183 r!7292))) (= lambda!355874 lambda!355849))))

(assert (=> bs!1618168 (not (= lambda!355874 lambda!355829))))

(declare-fun bs!1618187 () Bool)

(assert (= bs!1618187 (and b!6432218 b!6431968)))

(assert (=> bs!1618187 (not (= lambda!355874 lambda!355859))))

(declare-fun bs!1618188 () Bool)

(assert (= bs!1618188 (and b!6432218 b!6430816)))

(assert (=> bs!1618188 (not (= lambda!355874 lambda!355773))))

(assert (=> bs!1618170 (= (and (= (reg!16664 (regOne!33183 lt!2379353)) (reg!16664 (regOne!33182 r!7292))) (= (regOne!33183 lt!2379353) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355874 lambda!355812))))

(declare-fun bs!1618189 () Bool)

(assert (= bs!1618189 (and b!6432218 b!6430865)))

(assert (=> bs!1618189 (not (= lambda!355874 lambda!355780))))

(assert (=> bs!1618178 (not (= lambda!355874 lambda!355805))))

(assert (=> bs!1618169 (not (= lambda!355874 lambda!355822))))

(assert (=> bs!1618163 (not (= lambda!355874 lambda!355718))))

(assert (=> bs!1618185 (not (= lambda!355874 lambda!355714))))

(declare-fun bs!1618190 () Bool)

(assert (= bs!1618190 (and b!6432218 b!6431947)))

(assert (=> bs!1618190 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33183 lt!2379353)) (reg!16664 (regOne!33183 lt!2379346))) (= (regOne!33183 lt!2379353) (regOne!33183 lt!2379346))) (= lambda!355874 lambda!355851))))

(declare-fun bs!1618191 () Bool)

(assert (= bs!1618191 (and b!6432218 d!2015829)))

(assert (=> bs!1618191 (not (= lambda!355874 lambda!355796))))

(assert (=> bs!1618191 (not (= lambda!355874 lambda!355797))))

(assert (=> b!6432218 true))

(assert (=> b!6432218 true))

(declare-fun bs!1618192 () Bool)

(declare-fun b!6432224 () Bool)

(assert (= bs!1618192 (and b!6432224 b!6431962)))

(declare-fun lambda!355875 () Int)

(assert (=> bs!1618192 (not (= lambda!355875 lambda!355855))))

(declare-fun bs!1618193 () Bool)

(assert (= bs!1618193 (and b!6432224 b!6431977)))

(assert (=> bs!1618193 (not (= lambda!355875 lambda!355860))))

(declare-fun bs!1618194 () Bool)

(assert (= bs!1618194 (and b!6432224 b!6430115)))

(assert (=> bs!1618194 (not (= lambda!355875 lambda!355717))))

(declare-fun bs!1618195 () Bool)

(assert (= bs!1618195 (and b!6432224 b!6431861)))

(assert (=> bs!1618195 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regOne!33183 lt!2379353)) (regOne!33182 (regTwo!33183 r!7292))) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 (regTwo!33183 r!7292)))) (= lambda!355875 lambda!355850))))

(declare-fun bs!1618196 () Bool)

(assert (= bs!1618196 (and b!6432224 d!2016163)))

(assert (=> bs!1618196 (not (= lambda!355875 lambda!355844))))

(declare-fun bs!1618197 () Bool)

(assert (= bs!1618197 (and b!6432224 b!6430094)))

(assert (=> bs!1618197 (not (= lambda!355875 lambda!355719))))

(assert (=> bs!1618197 (not (= lambda!355875 lambda!355720))))

(declare-fun bs!1618198 () Bool)

(assert (= bs!1618198 (and b!6432224 d!2015881)))

(assert (=> bs!1618198 (not (= lambda!355875 lambda!355802))))

(declare-fun bs!1618200 () Bool)

(assert (= bs!1618200 (and b!6432224 d!2015991)))

(assert (=> bs!1618200 (not (= lambda!355875 lambda!355828))))

(declare-fun bs!1618201 () Bool)

(assert (= bs!1618201 (and b!6432224 d!2015957)))

(assert (=> bs!1618201 (not (= lambda!355875 lambda!355823))))

(declare-fun bs!1618203 () Bool)

(assert (= bs!1618203 (and b!6432224 d!2015895)))

(assert (=> bs!1618203 (not (= lambda!355875 lambda!355811))))

(declare-fun bs!1618205 () Bool)

(assert (= bs!1618205 (and b!6432224 b!6430859)))

(assert (=> bs!1618205 (not (= lambda!355875 lambda!355779))))

(declare-fun bs!1618207 () Bool)

(assert (= bs!1618207 (and b!6432224 b!6432054)))

(assert (=> bs!1618207 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regOne!33183 lt!2379353)) (regOne!33182 (regTwo!33183 lt!2379346))) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 (regTwo!33183 lt!2379346)))) (= lambda!355875 lambda!355864))))

(declare-fun bs!1618209 () Bool)

(assert (= bs!1618209 (and b!6432224 d!2016395)))

(assert (=> bs!1618209 (not (= lambda!355875 lambda!355873))))

(declare-fun bs!1618211 () Bool)

(assert (= bs!1618211 (and b!6432224 d!2015887)))

(assert (=> bs!1618211 (not (= lambda!355875 lambda!355804))))

(declare-fun bs!1618212 () Bool)

(assert (= bs!1618212 (and b!6432224 b!6432048)))

(assert (=> bs!1618212 (not (= lambda!355875 lambda!355863))))

(declare-fun bs!1618214 () Bool)

(assert (= bs!1618214 (and b!6432224 d!2015879)))

(assert (=> bs!1618214 (not (= lambda!355875 lambda!355801))))

(declare-fun bs!1618216 () Bool)

(assert (= bs!1618216 (and b!6432224 d!2016021)))

(assert (=> bs!1618216 (not (= lambda!355875 lambda!355832))))

(declare-fun bs!1618218 () Bool)

(assert (= bs!1618218 (and b!6432224 d!2015889)))

(assert (=> bs!1618218 (= (and (= (regOne!33182 (regOne!33183 lt!2379353)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regOne!33183 lt!2379353)) lt!2379353)) (= lambda!355875 lambda!355806))))

(assert (=> bs!1618198 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regOne!33183 lt!2379353)) lt!2379353) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355875 lambda!355803))))

(declare-fun bs!1618220 () Bool)

(assert (= bs!1618220 (and b!6432224 b!6430810)))

(assert (=> bs!1618220 (not (= lambda!355875 lambda!355772))))

(declare-fun bs!1618222 () Bool)

(assert (= bs!1618222 (and b!6432224 b!6431148)))

(assert (=> bs!1618222 (not (= lambda!355875 lambda!355813))))

(assert (=> bs!1618197 (= (and (= (regOne!33182 (regOne!33183 lt!2379353)) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 (regOne!33183 lt!2379353)) lt!2379353)) (= lambda!355875 lambda!355721))))

(declare-fun bs!1618223 () Bool)

(assert (= bs!1618223 (and b!6432224 d!2015793)))

(assert (=> bs!1618223 (not (= lambda!355875 lambda!355786))))

(declare-fun bs!1618225 () Bool)

(assert (= bs!1618225 (and b!6432224 b!6431983)))

(assert (=> bs!1618225 (= (and (= (regOne!33182 (regOne!33183 lt!2379353)) (regOne!33182 (regTwo!33183 lt!2379353))) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 (regTwo!33183 lt!2379353)))) (= lambda!355875 lambda!355862))))

(declare-fun bs!1618226 () Bool)

(assert (= bs!1618226 (and b!6432224 b!6431953)))

(assert (=> bs!1618226 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regOne!33183 lt!2379353)) (regOne!33182 (regOne!33183 lt!2379346))) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 (regOne!33183 lt!2379346)))) (= lambda!355875 lambda!355852))))

(declare-fun bs!1618227 () Bool)

(assert (= bs!1618227 (and b!6432224 b!6431154)))

(assert (=> bs!1618227 (= (and (= (regOne!33182 (regOne!33183 lt!2379353)) (regOne!33182 lt!2379353)) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 lt!2379353))) (= lambda!355875 lambda!355814))))

(declare-fun bs!1618229 () Bool)

(assert (= bs!1618229 (and b!6432224 b!6432218)))

(assert (=> bs!1618229 (not (= lambda!355875 lambda!355874))))

(declare-fun bs!1618231 () Bool)

(assert (= bs!1618231 (and b!6432224 b!6430128)))

(assert (=> bs!1618231 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regOne!33183 lt!2379353)) (regOne!33182 r!7292)) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355875 lambda!355715))))

(declare-fun bs!1618233 () Bool)

(assert (= bs!1618233 (and b!6432224 b!6431855)))

(assert (=> bs!1618233 (not (= lambda!355875 lambda!355849))))

(assert (=> bs!1618200 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regOne!33183 lt!2379353)) lt!2379353) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355875 lambda!355829))))

(declare-fun bs!1618235 () Bool)

(assert (= bs!1618235 (and b!6432224 b!6431968)))

(assert (=> bs!1618235 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regOne!33183 lt!2379353)) (regOne!33182 (regOne!33183 r!7292))) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 (regOne!33183 r!7292)))) (= lambda!355875 lambda!355859))))

(declare-fun bs!1618236 () Bool)

(assert (= bs!1618236 (and b!6432224 b!6430816)))

(assert (=> bs!1618236 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regOne!33183 lt!2379353)) (regOne!33182 r!7292)) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355875 lambda!355773))))

(assert (=> bs!1618203 (not (= lambda!355875 lambda!355812))))

(declare-fun bs!1618237 () Bool)

(assert (= bs!1618237 (and b!6432224 b!6430865)))

(assert (=> bs!1618237 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regOne!33183 lt!2379353)) (regOne!33182 lt!2379346)) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 lt!2379346))) (= lambda!355875 lambda!355780))))

(assert (=> bs!1618218 (not (= lambda!355875 lambda!355805))))

(assert (=> bs!1618201 (not (= lambda!355875 lambda!355822))))

(assert (=> bs!1618194 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regOne!33183 lt!2379353)) lt!2379353) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355875 lambda!355718))))

(assert (=> bs!1618231 (not (= lambda!355875 lambda!355714))))

(declare-fun bs!1618240 () Bool)

(assert (= bs!1618240 (and b!6432224 b!6431947)))

(assert (=> bs!1618240 (not (= lambda!355875 lambda!355851))))

(declare-fun bs!1618241 () Bool)

(assert (= bs!1618241 (and b!6432224 d!2015829)))

(assert (=> bs!1618241 (not (= lambda!355875 lambda!355796))))

(assert (=> bs!1618241 (= (and (= (_1!36617 lt!2379368) s!2326) (= (regOne!33182 (regOne!33183 lt!2379353)) (regOne!33182 r!7292)) (= (regTwo!33182 (regOne!33183 lt!2379353)) (regTwo!33182 r!7292))) (= lambda!355875 lambda!355797))))

(assert (=> b!6432224 true))

(assert (=> b!6432224 true))

(declare-fun b!6432215 () Bool)

(declare-fun e!3902046 () Bool)

(declare-fun e!3902052 () Bool)

(assert (=> b!6432215 (= e!3902046 e!3902052)))

(declare-fun res!2643974 () Bool)

(assert (=> b!6432215 (= res!2643974 (matchRSpec!3436 (regOne!33183 (regOne!33183 lt!2379353)) (_1!36617 lt!2379368)))))

(assert (=> b!6432215 (=> res!2643974 e!3902052)))

(declare-fun bm!553344 () Bool)

(declare-fun call!553350 () Bool)

(assert (=> bm!553344 (= call!553350 (isEmpty!37350 (_1!36617 lt!2379368)))))

(declare-fun b!6432216 () Bool)

(declare-fun res!2643972 () Bool)

(declare-fun e!3902050 () Bool)

(assert (=> b!6432216 (=> res!2643972 e!3902050)))

(assert (=> b!6432216 (= res!2643972 call!553350)))

(declare-fun e!3902049 () Bool)

(assert (=> b!6432216 (= e!3902049 e!3902050)))

(declare-fun b!6432217 () Bool)

(declare-fun e!3902048 () Bool)

(assert (=> b!6432217 (= e!3902048 (= (_1!36617 lt!2379368) (Cons!65180 (c!1175066 (regOne!33183 lt!2379353)) Nil!65180)))))

(declare-fun call!553349 () Bool)

(assert (=> b!6432218 (= e!3902050 call!553349)))

(declare-fun b!6432219 () Bool)

(declare-fun e!3902051 () Bool)

(assert (=> b!6432219 (= e!3902051 call!553350)))

(declare-fun b!6432220 () Bool)

(assert (=> b!6432220 (= e!3902046 e!3902049)))

(declare-fun c!1175640 () Bool)

(assert (=> b!6432220 (= c!1175640 ((_ is Star!16335) (regOne!33183 lt!2379353)))))

(declare-fun d!2016417 () Bool)

(declare-fun c!1175642 () Bool)

(assert (=> d!2016417 (= c!1175642 ((_ is EmptyExpr!16335) (regOne!33183 lt!2379353)))))

(assert (=> d!2016417 (= (matchRSpec!3436 (regOne!33183 lt!2379353) (_1!36617 lt!2379368)) e!3902051)))

(declare-fun b!6432221 () Bool)

(declare-fun c!1175639 () Bool)

(assert (=> b!6432221 (= c!1175639 ((_ is Union!16335) (regOne!33183 lt!2379353)))))

(assert (=> b!6432221 (= e!3902048 e!3902046)))

(declare-fun b!6432222 () Bool)

(assert (=> b!6432222 (= e!3902052 (matchRSpec!3436 (regTwo!33183 (regOne!33183 lt!2379353)) (_1!36617 lt!2379368)))))

(declare-fun bm!553345 () Bool)

(assert (=> bm!553345 (= call!553349 (Exists!3405 (ite c!1175640 lambda!355874 lambda!355875)))))

(declare-fun b!6432223 () Bool)

(declare-fun c!1175641 () Bool)

(assert (=> b!6432223 (= c!1175641 ((_ is ElementMatch!16335) (regOne!33183 lt!2379353)))))

(declare-fun e!3902047 () Bool)

(assert (=> b!6432223 (= e!3902047 e!3902048)))

(assert (=> b!6432224 (= e!3902049 call!553349)))

(declare-fun b!6432225 () Bool)

(assert (=> b!6432225 (= e!3902051 e!3902047)))

(declare-fun res!2643973 () Bool)

(assert (=> b!6432225 (= res!2643973 (not ((_ is EmptyLang!16335) (regOne!33183 lt!2379353))))))

(assert (=> b!6432225 (=> (not res!2643973) (not e!3902047))))

(assert (= (and d!2016417 c!1175642) b!6432219))

(assert (= (and d!2016417 (not c!1175642)) b!6432225))

(assert (= (and b!6432225 res!2643973) b!6432223))

(assert (= (and b!6432223 c!1175641) b!6432217))

(assert (= (and b!6432223 (not c!1175641)) b!6432221))

(assert (= (and b!6432221 c!1175639) b!6432215))

(assert (= (and b!6432221 (not c!1175639)) b!6432220))

(assert (= (and b!6432215 (not res!2643974)) b!6432222))

(assert (= (and b!6432220 c!1175640) b!6432216))

(assert (= (and b!6432220 (not c!1175640)) b!6432224))

(assert (= (and b!6432216 (not res!2643972)) b!6432218))

(assert (= (or b!6432218 b!6432224) bm!553345))

(assert (= (or b!6432219 b!6432216) bm!553344))

(declare-fun m!7225854 () Bool)

(assert (=> b!6432215 m!7225854))

(assert (=> bm!553344 m!7223754))

(declare-fun m!7225856 () Bool)

(assert (=> b!6432222 m!7225856))

(declare-fun m!7225858 () Bool)

(assert (=> bm!553345 m!7225858))

(assert (=> b!6431145 d!2016417))

(declare-fun d!2016439 () Bool)

(assert (=> d!2016439 (= (isEmpty!37349 (tail!12247 (exprs!6219 (h!71630 zl!343)))) ((_ is Nil!65181) (tail!12247 (exprs!6219 (h!71630 zl!343)))))))

(assert (=> b!6431180 d!2016439))

(declare-fun d!2016441 () Bool)

(assert (=> d!2016441 (= (tail!12247 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343))))))

(assert (=> b!6431180 d!2016441))

(declare-fun d!2016443 () Bool)

(declare-fun c!1175655 () Bool)

(assert (=> d!2016443 (= c!1175655 ((_ is Nil!65182) lt!2379457))))

(declare-fun e!3902078 () (InoxSet Context!11438))

(assert (=> d!2016443 (= (content!12385 lt!2379457) e!3902078)))

(declare-fun b!6432271 () Bool)

(assert (=> b!6432271 (= e!3902078 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6432272 () Bool)

(assert (=> b!6432272 (= e!3902078 ((_ map or) (store ((as const (Array Context!11438 Bool)) false) (h!71630 lt!2379457) true) (content!12385 (t!378922 lt!2379457))))))

(assert (= (and d!2016443 c!1175655) b!6432271))

(assert (= (and d!2016443 (not c!1175655)) b!6432272))

(declare-fun m!7225860 () Bool)

(assert (=> b!6432272 m!7225860))

(declare-fun m!7225862 () Bool)

(assert (=> b!6432272 m!7225862))

(assert (=> b!6430623 d!2016443))

(declare-fun d!2016445 () Bool)

(declare-fun lt!2379613 () Int)

(assert (=> d!2016445 (>= lt!2379613 0)))

(declare-fun e!3902079 () Int)

(assert (=> d!2016445 (= lt!2379613 e!3902079)))

(declare-fun c!1175656 () Bool)

(assert (=> d!2016445 (= c!1175656 ((_ is Nil!65180) lt!2379444))))

(assert (=> d!2016445 (= (size!40394 lt!2379444) lt!2379613)))

(declare-fun b!6432273 () Bool)

(assert (=> b!6432273 (= e!3902079 0)))

(declare-fun b!6432274 () Bool)

(assert (=> b!6432274 (= e!3902079 (+ 1 (size!40394 (t!378920 lt!2379444))))))

(assert (= (and d!2016445 c!1175656) b!6432273))

(assert (= (and d!2016445 (not c!1175656)) b!6432274))

(declare-fun m!7225864 () Bool)

(assert (=> b!6432274 m!7225864))

(assert (=> b!6430585 d!2016445))

(declare-fun d!2016447 () Bool)

(declare-fun lt!2379614 () Int)

(assert (=> d!2016447 (>= lt!2379614 0)))

(declare-fun e!3902080 () Int)

(assert (=> d!2016447 (= lt!2379614 e!3902080)))

(declare-fun c!1175657 () Bool)

(assert (=> d!2016447 (= c!1175657 ((_ is Nil!65180) lt!2379371))))

(assert (=> d!2016447 (= (size!40394 lt!2379371) lt!2379614)))

(declare-fun b!6432275 () Bool)

(assert (=> b!6432275 (= e!3902080 0)))

(declare-fun b!6432276 () Bool)

(assert (=> b!6432276 (= e!3902080 (+ 1 (size!40394 (t!378920 lt!2379371))))))

(assert (= (and d!2016447 c!1175657) b!6432275))

(assert (= (and d!2016447 (not c!1175657)) b!6432276))

(assert (=> b!6432276 m!7225672))

(assert (=> b!6430585 d!2016447))

(assert (=> b!6430585 d!2016217))

(declare-fun d!2016449 () Bool)

(assert (=> d!2016449 (= (nullable!6328 lt!2379346) (nullableFct!2274 lt!2379346))))

(declare-fun bs!1618261 () Bool)

(assert (= bs!1618261 d!2016449))

(declare-fun m!7225870 () Bool)

(assert (=> bs!1618261 m!7225870))

(assert (=> b!6430848 d!2016449))

(declare-fun d!2016451 () Bool)

(assert (=> d!2016451 true))

(declare-fun setRes!43923 () Bool)

(assert (=> d!2016451 setRes!43923))

(declare-fun condSetEmpty!43923 () Bool)

(declare-fun res!2644001 () (InoxSet Context!11438))

(assert (=> d!2016451 (= condSetEmpty!43923 (= res!2644001 ((as const (Array Context!11438 Bool)) false)))))

(assert (=> d!2016451 (= (choose!47821 lt!2379348 lambda!355716) res!2644001)))

(declare-fun setIsEmpty!43923 () Bool)

(assert (=> setIsEmpty!43923 setRes!43923))

(declare-fun setElem!43923 () Context!11438)

(declare-fun setNonEmpty!43923 () Bool)

(declare-fun tp!1784276 () Bool)

(declare-fun e!3902081 () Bool)

(assert (=> setNonEmpty!43923 (= setRes!43923 (and tp!1784276 (inv!84084 setElem!43923) e!3902081))))

(declare-fun setRest!43923 () (InoxSet Context!11438))

(assert (=> setNonEmpty!43923 (= res!2644001 ((_ map or) (store ((as const (Array Context!11438 Bool)) false) setElem!43923 true) setRest!43923))))

(declare-fun b!6432277 () Bool)

(declare-fun tp!1784275 () Bool)

(assert (=> b!6432277 (= e!3902081 tp!1784275)))

(assert (= (and d!2016451 condSetEmpty!43923) setIsEmpty!43923))

(assert (= (and d!2016451 (not condSetEmpty!43923)) setNonEmpty!43923))

(assert (= setNonEmpty!43923 b!6432277))

(declare-fun m!7225876 () Bool)

(assert (=> setNonEmpty!43923 m!7225876))

(assert (=> d!2015859 d!2016451))

(declare-fun d!2016457 () Bool)

(declare-fun c!1175659 () Bool)

(assert (=> d!2016457 (= c!1175659 (isEmpty!37350 (tail!12246 (t!378920 s!2326))))))

(declare-fun e!3902084 () Bool)

(assert (=> d!2016457 (= (matchZipper!2347 (derivationStepZipper!2301 lt!2379360 (head!13161 (t!378920 s!2326))) (tail!12246 (t!378920 s!2326))) e!3902084)))

(declare-fun b!6432282 () Bool)

(assert (=> b!6432282 (= e!3902084 (nullableZipper!2100 (derivationStepZipper!2301 lt!2379360 (head!13161 (t!378920 s!2326)))))))

(declare-fun b!6432283 () Bool)

(assert (=> b!6432283 (= e!3902084 (matchZipper!2347 (derivationStepZipper!2301 (derivationStepZipper!2301 lt!2379360 (head!13161 (t!378920 s!2326))) (head!13161 (tail!12246 (t!378920 s!2326)))) (tail!12246 (tail!12246 (t!378920 s!2326)))))))

(assert (= (and d!2016457 c!1175659) b!6432282))

(assert (= (and d!2016457 (not c!1175659)) b!6432283))

(assert (=> d!2016457 m!7223922))

(assert (=> d!2016457 m!7225152))

(assert (=> b!6432282 m!7224340))

(declare-fun m!7225884 () Bool)

(assert (=> b!6432282 m!7225884))

(assert (=> b!6432283 m!7223922))

(assert (=> b!6432283 m!7225156))

(assert (=> b!6432283 m!7224340))

(assert (=> b!6432283 m!7225156))

(declare-fun m!7225890 () Bool)

(assert (=> b!6432283 m!7225890))

(assert (=> b!6432283 m!7223922))

(assert (=> b!6432283 m!7225160))

(assert (=> b!6432283 m!7225890))

(assert (=> b!6432283 m!7225160))

(declare-fun m!7225892 () Bool)

(assert (=> b!6432283 m!7225892))

(assert (=> b!6430706 d!2016457))

(declare-fun bs!1618263 () Bool)

(declare-fun d!2016461 () Bool)

(assert (= bs!1618263 (and d!2016461 d!2016141)))

(declare-fun lambda!355878 () Int)

(assert (=> bs!1618263 (= lambda!355878 lambda!355843)))

(declare-fun bs!1618264 () Bool)

(assert (= bs!1618264 (and d!2016461 d!2016073)))

(assert (=> bs!1618264 (= lambda!355878 lambda!355841)))

(declare-fun bs!1618265 () Bool)

(assert (= bs!1618265 (and d!2016461 d!2015865)))

(assert (=> bs!1618265 (= (= (head!13161 (t!378920 s!2326)) (h!71628 s!2326)) (= lambda!355878 lambda!355800))))

(declare-fun bs!1618266 () Bool)

(assert (= bs!1618266 (and d!2016461 d!2016173)))

(assert (=> bs!1618266 (= lambda!355878 lambda!355845)))

(declare-fun bs!1618267 () Bool)

(assert (= bs!1618267 (and d!2016461 b!6430098)))

(assert (=> bs!1618267 (= (= (head!13161 (t!378920 s!2326)) (h!71628 s!2326)) (= lambda!355878 lambda!355716))))

(assert (=> d!2016461 true))

(assert (=> d!2016461 (= (derivationStepZipper!2301 lt!2379360 (head!13161 (t!378920 s!2326))) (flatMap!1840 lt!2379360 lambda!355878))))

(declare-fun bs!1618268 () Bool)

(assert (= bs!1618268 d!2016461))

(declare-fun m!7225900 () Bool)

(assert (=> bs!1618268 m!7225900))

(assert (=> b!6430706 d!2016461))

(assert (=> b!6430706 d!2016075))

(assert (=> b!6430706 d!2016077))

(declare-fun b!6432302 () Bool)

(declare-fun e!3902100 () List!65304)

(assert (=> b!6432302 (= e!3902100 (_2!36617 lt!2379368))))

(declare-fun b!6432303 () Bool)

(assert (=> b!6432303 (= e!3902100 (Cons!65180 (h!71628 (t!378920 (_2!36617 lt!2379342))) (++!14403 (t!378920 (t!378920 (_2!36617 lt!2379342))) (_2!36617 lt!2379368))))))

(declare-fun b!6432304 () Bool)

(declare-fun res!2644015 () Bool)

(declare-fun e!3902099 () Bool)

(assert (=> b!6432304 (=> (not res!2644015) (not e!3902099))))

(declare-fun lt!2379616 () List!65304)

(assert (=> b!6432304 (= res!2644015 (= (size!40394 lt!2379616) (+ (size!40394 (t!378920 (_2!36617 lt!2379342))) (size!40394 (_2!36617 lt!2379368)))))))

(declare-fun b!6432305 () Bool)

(assert (=> b!6432305 (= e!3902099 (or (not (= (_2!36617 lt!2379368) Nil!65180)) (= lt!2379616 (t!378920 (_2!36617 lt!2379342)))))))

(declare-fun d!2016469 () Bool)

(assert (=> d!2016469 e!3902099))

(declare-fun res!2644014 () Bool)

(assert (=> d!2016469 (=> (not res!2644014) (not e!3902099))))

(assert (=> d!2016469 (= res!2644014 (= (content!12384 lt!2379616) ((_ map or) (content!12384 (t!378920 (_2!36617 lt!2379342))) (content!12384 (_2!36617 lt!2379368)))))))

(assert (=> d!2016469 (= lt!2379616 e!3902100)))

(declare-fun c!1175664 () Bool)

(assert (=> d!2016469 (= c!1175664 ((_ is Nil!65180) (t!378920 (_2!36617 lt!2379342))))))

(assert (=> d!2016469 (= (++!14403 (t!378920 (_2!36617 lt!2379342)) (_2!36617 lt!2379368)) lt!2379616)))

(assert (= (and d!2016469 c!1175664) b!6432302))

(assert (= (and d!2016469 (not c!1175664)) b!6432303))

(assert (= (and d!2016469 res!2644014) b!6432304))

(assert (= (and b!6432304 res!2644015) b!6432305))

(declare-fun m!7225902 () Bool)

(assert (=> b!6432303 m!7225902))

(declare-fun m!7225904 () Bool)

(assert (=> b!6432304 m!7225904))

(declare-fun m!7225908 () Bool)

(assert (=> b!6432304 m!7225908))

(assert (=> b!6432304 m!7224194))

(declare-fun m!7225912 () Bool)

(assert (=> d!2016469 m!7225912))

(declare-fun m!7225914 () Bool)

(assert (=> d!2016469 m!7225914))

(assert (=> d!2016469 m!7224200))

(assert (=> b!6430588 d!2016469))

(declare-fun d!2016473 () Bool)

(declare-fun e!3902112 () Bool)

(assert (=> d!2016473 e!3902112))

(declare-fun c!1175670 () Bool)

(assert (=> d!2016473 (= c!1175670 ((_ is EmptyExpr!16335) (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 lt!2379368)))))))

(declare-fun lt!2379618 () Bool)

(declare-fun e!3902105 () Bool)

(assert (=> d!2016473 (= lt!2379618 e!3902105)))

(declare-fun c!1175671 () Bool)

(assert (=> d!2016473 (= c!1175671 (isEmpty!37350 (tail!12246 (_2!36617 lt!2379368))))))

(assert (=> d!2016473 (validRegex!8071 (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 lt!2379368))))))

(assert (=> d!2016473 (= (matchR!8518 (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 lt!2379368))) (tail!12246 (_2!36617 lt!2379368))) lt!2379618)))

(declare-fun b!6432310 () Bool)

(declare-fun e!3902111 () Bool)

(assert (=> b!6432310 (= e!3902111 (not (= (head!13161 (tail!12246 (_2!36617 lt!2379368))) (c!1175066 (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 lt!2379368)))))))))

(declare-fun b!6432311 () Bool)

(assert (=> b!6432311 (= e!3902105 (matchR!8518 (derivativeStep!5039 (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 lt!2379368))) (head!13161 (tail!12246 (_2!36617 lt!2379368)))) (tail!12246 (tail!12246 (_2!36617 lt!2379368)))))))

(declare-fun b!6432312 () Bool)

(declare-fun res!2644019 () Bool)

(declare-fun e!3902110 () Bool)

(assert (=> b!6432312 (=> res!2644019 e!3902110)))

(declare-fun e!3902106 () Bool)

(assert (=> b!6432312 (= res!2644019 e!3902106)))

(declare-fun res!2644023 () Bool)

(assert (=> b!6432312 (=> (not res!2644023) (not e!3902106))))

(assert (=> b!6432312 (= res!2644023 lt!2379618)))

(declare-fun b!6432313 () Bool)

(declare-fun res!2644021 () Bool)

(assert (=> b!6432313 (=> res!2644021 e!3902110)))

(assert (=> b!6432313 (= res!2644021 (not ((_ is ElementMatch!16335) (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 lt!2379368))))))))

(declare-fun e!3902108 () Bool)

(assert (=> b!6432313 (= e!3902108 e!3902110)))

(declare-fun b!6432314 () Bool)

(declare-fun e!3902113 () Bool)

(assert (=> b!6432314 (= e!3902110 e!3902113)))

(declare-fun res!2644024 () Bool)

(assert (=> b!6432314 (=> (not res!2644024) (not e!3902113))))

(assert (=> b!6432314 (= res!2644024 (not lt!2379618))))

(declare-fun b!6432315 () Bool)

(declare-fun res!2644022 () Bool)

(assert (=> b!6432315 (=> res!2644022 e!3902111)))

(assert (=> b!6432315 (= res!2644022 (not (isEmpty!37350 (tail!12246 (tail!12246 (_2!36617 lt!2379368))))))))

(declare-fun b!6432316 () Bool)

(assert (=> b!6432316 (= e!3902105 (nullable!6328 (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 lt!2379368)))))))

(declare-fun b!6432318 () Bool)

(assert (=> b!6432318 (= e!3902112 e!3902108)))

(declare-fun c!1175667 () Bool)

(assert (=> b!6432318 (= c!1175667 ((_ is EmptyLang!16335) (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 lt!2379368)))))))

(declare-fun b!6432320 () Bool)

(declare-fun call!553361 () Bool)

(assert (=> b!6432320 (= e!3902112 (= lt!2379618 call!553361))))

(declare-fun b!6432321 () Bool)

(assert (=> b!6432321 (= e!3902108 (not lt!2379618))))

(declare-fun b!6432322 () Bool)

(declare-fun res!2644025 () Bool)

(assert (=> b!6432322 (=> (not res!2644025) (not e!3902106))))

(assert (=> b!6432322 (= res!2644025 (isEmpty!37350 (tail!12246 (tail!12246 (_2!36617 lt!2379368)))))))

(declare-fun b!6432323 () Bool)

(assert (=> b!6432323 (= e!3902113 e!3902111)))

(declare-fun res!2644018 () Bool)

(assert (=> b!6432323 (=> res!2644018 e!3902111)))

(assert (=> b!6432323 (= res!2644018 call!553361)))

(declare-fun b!6432324 () Bool)

(assert (=> b!6432324 (= e!3902106 (= (head!13161 (tail!12246 (_2!36617 lt!2379368))) (c!1175066 (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 lt!2379368))))))))

(declare-fun bm!553356 () Bool)

(assert (=> bm!553356 (= call!553361 (isEmpty!37350 (tail!12246 (_2!36617 lt!2379368))))))

(declare-fun b!6432326 () Bool)

(declare-fun res!2644020 () Bool)

(assert (=> b!6432326 (=> (not res!2644020) (not e!3902106))))

(assert (=> b!6432326 (= res!2644020 (not call!553361))))

(assert (= (and d!2016473 c!1175671) b!6432316))

(assert (= (and d!2016473 (not c!1175671)) b!6432311))

(assert (= (and d!2016473 c!1175670) b!6432320))

(assert (= (and d!2016473 (not c!1175670)) b!6432318))

(assert (= (and b!6432318 c!1175667) b!6432321))

(assert (= (and b!6432318 (not c!1175667)) b!6432313))

(assert (= (and b!6432313 (not res!2644021)) b!6432312))

(assert (= (and b!6432312 res!2644023) b!6432326))

(assert (= (and b!6432326 res!2644020) b!6432322))

(assert (= (and b!6432322 res!2644025) b!6432324))

(assert (= (and b!6432312 (not res!2644019)) b!6432314))

(assert (= (and b!6432314 res!2644024) b!6432323))

(assert (= (and b!6432323 (not res!2644018)) b!6432315))

(assert (= (and b!6432315 (not res!2644022)) b!6432310))

(assert (= (or b!6432320 b!6432326 b!6432323) bm!553356))

(assert (=> d!2016473 m!7224382))

(assert (=> d!2016473 m!7224384))

(assert (=> d!2016473 m!7224388))

(declare-fun m!7225918 () Bool)

(assert (=> d!2016473 m!7225918))

(assert (=> b!6432310 m!7224382))

(declare-fun m!7225920 () Bool)

(assert (=> b!6432310 m!7225920))

(assert (=> b!6432322 m!7224382))

(declare-fun m!7225922 () Bool)

(assert (=> b!6432322 m!7225922))

(assert (=> b!6432322 m!7225922))

(declare-fun m!7225924 () Bool)

(assert (=> b!6432322 m!7225924))

(assert (=> b!6432315 m!7224382))

(assert (=> b!6432315 m!7225922))

(assert (=> b!6432315 m!7225922))

(assert (=> b!6432315 m!7225924))

(assert (=> b!6432324 m!7224382))

(assert (=> b!6432324 m!7225920))

(assert (=> bm!553356 m!7224382))

(assert (=> bm!553356 m!7224384))

(assert (=> b!6432316 m!7224388))

(declare-fun m!7225926 () Bool)

(assert (=> b!6432316 m!7225926))

(assert (=> b!6432311 m!7224382))

(assert (=> b!6432311 m!7225920))

(assert (=> b!6432311 m!7224388))

(assert (=> b!6432311 m!7225920))

(declare-fun m!7225928 () Bool)

(assert (=> b!6432311 m!7225928))

(assert (=> b!6432311 m!7224382))

(assert (=> b!6432311 m!7225922))

(assert (=> b!6432311 m!7225928))

(assert (=> b!6432311 m!7225922))

(declare-fun m!7225930 () Bool)

(assert (=> b!6432311 m!7225930))

(assert (=> b!6430727 d!2016473))

(declare-fun b!6432330 () Bool)

(declare-fun e!3902115 () Regex!16335)

(declare-fun e!3902114 () Regex!16335)

(assert (=> b!6432330 (= e!3902115 e!3902114)))

(declare-fun c!1175673 () Bool)

(assert (=> b!6432330 (= c!1175673 ((_ is ElementMatch!16335) (regTwo!33182 r!7292)))))

(declare-fun b!6432331 () Bool)

(assert (=> b!6432331 (= e!3902114 (ite (= (head!13161 (_2!36617 lt!2379368)) (c!1175066 (regTwo!33182 r!7292))) EmptyExpr!16335 EmptyLang!16335))))

(declare-fun call!553362 () Regex!16335)

(declare-fun b!6432332 () Bool)

(declare-fun e!3902118 () Regex!16335)

(declare-fun call!553365 () Regex!16335)

(assert (=> b!6432332 (= e!3902118 (Union!16335 (Concat!25180 call!553362 (regTwo!33182 (regTwo!33182 r!7292))) call!553365))))

(declare-fun d!2016477 () Bool)

(declare-fun lt!2379619 () Regex!16335)

(assert (=> d!2016477 (validRegex!8071 lt!2379619)))

(assert (=> d!2016477 (= lt!2379619 e!3902115)))

(declare-fun c!1175675 () Bool)

(assert (=> d!2016477 (= c!1175675 (or ((_ is EmptyExpr!16335) (regTwo!33182 r!7292)) ((_ is EmptyLang!16335) (regTwo!33182 r!7292))))))

(assert (=> d!2016477 (validRegex!8071 (regTwo!33182 r!7292))))

(assert (=> d!2016477 (= (derivativeStep!5039 (regTwo!33182 r!7292) (head!13161 (_2!36617 lt!2379368))) lt!2379619)))

(declare-fun b!6432333 () Bool)

(declare-fun e!3902117 () Regex!16335)

(declare-fun call!553364 () Regex!16335)

(declare-fun call!553363 () Regex!16335)

(assert (=> b!6432333 (= e!3902117 (Union!16335 call!553364 call!553363))))

(declare-fun c!1175674 () Bool)

(declare-fun bm!553357 () Bool)

(declare-fun c!1175672 () Bool)

(assert (=> bm!553357 (= call!553363 (derivativeStep!5039 (ite c!1175672 (regTwo!33183 (regTwo!33182 r!7292)) (ite c!1175674 (reg!16664 (regTwo!33182 r!7292)) (regOne!33182 (regTwo!33182 r!7292)))) (head!13161 (_2!36617 lt!2379368))))))

(declare-fun b!6432334 () Bool)

(declare-fun e!3902116 () Regex!16335)

(assert (=> b!6432334 (= e!3902117 e!3902116)))

(assert (=> b!6432334 (= c!1175674 ((_ is Star!16335) (regTwo!33182 r!7292)))))

(declare-fun b!6432335 () Bool)

(assert (=> b!6432335 (= e!3902115 EmptyLang!16335)))

(declare-fun b!6432336 () Bool)

(assert (=> b!6432336 (= c!1175672 ((_ is Union!16335) (regTwo!33182 r!7292)))))

(assert (=> b!6432336 (= e!3902114 e!3902117)))

(declare-fun bm!553358 () Bool)

(assert (=> bm!553358 (= call!553365 call!553364)))

(declare-fun b!6432337 () Bool)

(declare-fun c!1175676 () Bool)

(assert (=> b!6432337 (= c!1175676 (nullable!6328 (regOne!33182 (regTwo!33182 r!7292))))))

(assert (=> b!6432337 (= e!3902116 e!3902118)))

(declare-fun bm!553359 () Bool)

(assert (=> bm!553359 (= call!553362 call!553363)))

(declare-fun bm!553360 () Bool)

(assert (=> bm!553360 (= call!553364 (derivativeStep!5039 (ite c!1175672 (regOne!33183 (regTwo!33182 r!7292)) (ite c!1175676 (regTwo!33182 (regTwo!33182 r!7292)) (regOne!33182 (regTwo!33182 r!7292)))) (head!13161 (_2!36617 lt!2379368))))))

(declare-fun b!6432338 () Bool)

(assert (=> b!6432338 (= e!3902116 (Concat!25180 call!553362 (regTwo!33182 r!7292)))))

(declare-fun b!6432339 () Bool)

(assert (=> b!6432339 (= e!3902118 (Union!16335 (Concat!25180 call!553365 (regTwo!33182 (regTwo!33182 r!7292))) EmptyLang!16335))))

(assert (= (and d!2016477 c!1175675) b!6432335))

(assert (= (and d!2016477 (not c!1175675)) b!6432330))

(assert (= (and b!6432330 c!1175673) b!6432331))

(assert (= (and b!6432330 (not c!1175673)) b!6432336))

(assert (= (and b!6432336 c!1175672) b!6432333))

(assert (= (and b!6432336 (not c!1175672)) b!6432334))

(assert (= (and b!6432334 c!1175674) b!6432338))

(assert (= (and b!6432334 (not c!1175674)) b!6432337))

(assert (= (and b!6432337 c!1175676) b!6432332))

(assert (= (and b!6432337 (not c!1175676)) b!6432339))

(assert (= (or b!6432332 b!6432339) bm!553358))

(assert (= (or b!6432338 b!6432332) bm!553359))

(assert (= (or b!6432333 bm!553359) bm!553357))

(assert (= (or b!6432333 bm!553358) bm!553360))

(declare-fun m!7225950 () Bool)

(assert (=> d!2016477 m!7225950))

(assert (=> d!2016477 m!7223960))

(assert (=> bm!553357 m!7224380))

(declare-fun m!7225952 () Bool)

(assert (=> bm!553357 m!7225952))

(declare-fun m!7225954 () Bool)

(assert (=> b!6432337 m!7225954))

(assert (=> bm!553360 m!7224380))

(declare-fun m!7225956 () Bool)

(assert (=> bm!553360 m!7225956))

(assert (=> b!6430727 d!2016477))

(assert (=> b!6430727 d!2015961))

(assert (=> b!6430727 d!2016029))

(declare-fun b!6432354 () Bool)

(declare-fun e!3902129 () Bool)

(declare-fun e!3902131 () Bool)

(assert (=> b!6432354 (= e!3902129 e!3902131)))

(declare-fun res!2644038 () Bool)

(declare-fun call!553368 () Bool)

(assert (=> b!6432354 (= res!2644038 call!553368)))

(assert (=> b!6432354 (=> res!2644038 e!3902131)))

(declare-fun b!6432355 () Bool)

(declare-fun call!553367 () Bool)

(assert (=> b!6432355 (= e!3902131 call!553367)))

(declare-fun b!6432356 () Bool)

(declare-fun e!3902127 () Bool)

(assert (=> b!6432356 (= e!3902129 e!3902127)))

(declare-fun res!2644035 () Bool)

(assert (=> b!6432356 (= res!2644035 call!553368)))

(assert (=> b!6432356 (=> (not res!2644035) (not e!3902127))))

(declare-fun b!6432357 () Bool)

(declare-fun e!3902126 () Bool)

(declare-fun e!3902130 () Bool)

(assert (=> b!6432357 (= e!3902126 e!3902130)))

(declare-fun res!2644036 () Bool)

(assert (=> b!6432357 (=> res!2644036 e!3902130)))

(assert (=> b!6432357 (= res!2644036 ((_ is Star!16335) (regOne!33182 (regOne!33182 r!7292))))))

(declare-fun bm!553362 () Bool)

(declare-fun c!1175680 () Bool)

(assert (=> bm!553362 (= call!553367 (nullable!6328 (ite c!1175680 (regTwo!33183 (regOne!33182 (regOne!33182 r!7292))) (regTwo!33182 (regOne!33182 (regOne!33182 r!7292))))))))

(declare-fun bm!553363 () Bool)

(assert (=> bm!553363 (= call!553368 (nullable!6328 (ite c!1175680 (regOne!33183 (regOne!33182 (regOne!33182 r!7292))) (regOne!33182 (regOne!33182 (regOne!33182 r!7292))))))))

(declare-fun b!6432358 () Bool)

(assert (=> b!6432358 (= e!3902127 call!553367)))

(declare-fun b!6432359 () Bool)

(declare-fun e!3902128 () Bool)

(assert (=> b!6432359 (= e!3902128 e!3902126)))

(declare-fun res!2644034 () Bool)

(assert (=> b!6432359 (=> (not res!2644034) (not e!3902126))))

(assert (=> b!6432359 (= res!2644034 (and (not ((_ is EmptyLang!16335) (regOne!33182 (regOne!33182 r!7292)))) (not ((_ is ElementMatch!16335) (regOne!33182 (regOne!33182 r!7292))))))))

(declare-fun b!6432360 () Bool)

(assert (=> b!6432360 (= e!3902130 e!3902129)))

(assert (=> b!6432360 (= c!1175680 ((_ is Union!16335) (regOne!33182 (regOne!33182 r!7292))))))

(declare-fun d!2016481 () Bool)

(declare-fun res!2644037 () Bool)

(assert (=> d!2016481 (=> res!2644037 e!3902128)))

(assert (=> d!2016481 (= res!2644037 ((_ is EmptyExpr!16335) (regOne!33182 (regOne!33182 r!7292))))))

(assert (=> d!2016481 (= (nullableFct!2274 (regOne!33182 (regOne!33182 r!7292))) e!3902128)))

(assert (= (and d!2016481 (not res!2644037)) b!6432359))

(assert (= (and b!6432359 res!2644034) b!6432357))

(assert (= (and b!6432357 (not res!2644036)) b!6432360))

(assert (= (and b!6432360 c!1175680) b!6432354))

(assert (= (and b!6432360 (not c!1175680)) b!6432356))

(assert (= (and b!6432354 (not res!2644038)) b!6432355))

(assert (= (and b!6432356 res!2644035) b!6432358))

(assert (= (or b!6432355 b!6432358) bm!553362))

(assert (= (or b!6432354 b!6432356) bm!553363))

(declare-fun m!7225968 () Bool)

(assert (=> bm!553362 m!7225968))

(declare-fun m!7225972 () Bool)

(assert (=> bm!553363 m!7225972))

(assert (=> d!2015655 d!2016481))

(declare-fun b!6432362 () Bool)

(declare-fun e!3902134 () Bool)

(declare-fun e!3902136 () Bool)

(assert (=> b!6432362 (= e!3902134 e!3902136)))

(declare-fun res!2644040 () Bool)

(assert (=> b!6432362 (= res!2644040 (not (nullable!6328 (reg!16664 (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292)))))))))

(assert (=> b!6432362 (=> (not res!2644040) (not e!3902136))))

(declare-fun call!553369 () Bool)

(declare-fun c!1175681 () Bool)

(declare-fun bm!553364 () Bool)

(declare-fun c!1175682 () Bool)

(assert (=> bm!553364 (= call!553369 (validRegex!8071 (ite c!1175681 (reg!16664 (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292)))) (ite c!1175682 (regOne!33183 (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292)))) (regOne!33182 (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292))))))))))

(declare-fun b!6432363 () Bool)

(declare-fun e!3902133 () Bool)

(declare-fun call!553370 () Bool)

(assert (=> b!6432363 (= e!3902133 call!553370)))

(declare-fun b!6432364 () Bool)

(declare-fun e!3902138 () Bool)

(assert (=> b!6432364 (= e!3902134 e!3902138)))

(assert (=> b!6432364 (= c!1175682 ((_ is Union!16335) (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292)))))))

(declare-fun b!6432365 () Bool)

(declare-fun e!3902137 () Bool)

(declare-fun e!3902132 () Bool)

(assert (=> b!6432365 (= e!3902137 e!3902132)))

(declare-fun res!2644043 () Bool)

(assert (=> b!6432365 (=> (not res!2644043) (not e!3902132))))

(declare-fun call!553371 () Bool)

(assert (=> b!6432365 (= res!2644043 call!553371)))

(declare-fun b!6432366 () Bool)

(declare-fun e!3902135 () Bool)

(assert (=> b!6432366 (= e!3902135 e!3902134)))

(assert (=> b!6432366 (= c!1175681 ((_ is Star!16335) (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292)))))))

(declare-fun b!6432361 () Bool)

(declare-fun res!2644042 () Bool)

(assert (=> b!6432361 (=> res!2644042 e!3902137)))

(assert (=> b!6432361 (= res!2644042 (not ((_ is Concat!25180) (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292))))))))

(assert (=> b!6432361 (= e!3902138 e!3902137)))

(declare-fun d!2016483 () Bool)

(declare-fun res!2644041 () Bool)

(assert (=> d!2016483 (=> res!2644041 e!3902135)))

(assert (=> d!2016483 (= res!2644041 ((_ is ElementMatch!16335) (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292)))))))

(assert (=> d!2016483 (= (validRegex!8071 (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292)))) e!3902135)))

(declare-fun b!6432367 () Bool)

(declare-fun res!2644039 () Bool)

(assert (=> b!6432367 (=> (not res!2644039) (not e!3902133))))

(assert (=> b!6432367 (= res!2644039 call!553371)))

(assert (=> b!6432367 (= e!3902138 e!3902133)))

(declare-fun b!6432368 () Bool)

(assert (=> b!6432368 (= e!3902136 call!553369)))

(declare-fun bm!553365 () Bool)

(assert (=> bm!553365 (= call!553370 (validRegex!8071 (ite c!1175682 (regTwo!33183 (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292)))) (regTwo!33182 (ite c!1175325 (reg!16664 r!7292) (ite c!1175326 (regOne!33183 r!7292) (regOne!33182 r!7292)))))))))

(declare-fun bm!553366 () Bool)

(assert (=> bm!553366 (= call!553371 call!553369)))

(declare-fun b!6432369 () Bool)

(assert (=> b!6432369 (= e!3902132 call!553370)))

(assert (= (and d!2016483 (not res!2644041)) b!6432366))

(assert (= (and b!6432366 c!1175681) b!6432362))

(assert (= (and b!6432366 (not c!1175681)) b!6432364))

(assert (= (and b!6432362 res!2644040) b!6432368))

(assert (= (and b!6432364 c!1175682) b!6432367))

(assert (= (and b!6432364 (not c!1175682)) b!6432361))

(assert (= (and b!6432367 res!2644039) b!6432363))

(assert (= (and b!6432361 (not res!2644042)) b!6432365))

(assert (= (and b!6432365 res!2644043) b!6432369))

(assert (= (or b!6432363 b!6432369) bm!553365))

(assert (= (or b!6432367 b!6432365) bm!553366))

(assert (= (or b!6432368 bm!553366) bm!553364))

(declare-fun m!7225984 () Bool)

(assert (=> b!6432362 m!7225984))

(declare-fun m!7225986 () Bool)

(assert (=> bm!553364 m!7225986))

(declare-fun m!7225988 () Bool)

(assert (=> bm!553365 m!7225988))

(assert (=> bm!553154 d!2016483))

(assert (=> b!6430879 d!2016117))

(declare-fun d!2016491 () Bool)

(assert (=> d!2016491 (= (isEmpty!37350 lt!2379371) ((_ is Nil!65180) lt!2379371))))

(assert (=> bm!553077 d!2016491))

(assert (=> b!6431111 d!2016367))

(declare-fun b!6432380 () Bool)

(declare-fun e!3902146 () Bool)

(declare-fun e!3902148 () Bool)

(assert (=> b!6432380 (= e!3902146 e!3902148)))

(declare-fun res!2644048 () Bool)

(assert (=> b!6432380 (= res!2644048 (not (nullable!6328 (reg!16664 lt!2379547))))))

(assert (=> b!6432380 (=> (not res!2644048) (not e!3902148))))

(declare-fun bm!553368 () Bool)

(declare-fun c!1175686 () Bool)

(declare-fun c!1175687 () Bool)

(declare-fun call!553373 () Bool)

(assert (=> bm!553368 (= call!553373 (validRegex!8071 (ite c!1175686 (reg!16664 lt!2379547) (ite c!1175687 (regOne!33183 lt!2379547) (regOne!33182 lt!2379547)))))))

(declare-fun b!6432381 () Bool)

(declare-fun e!3902145 () Bool)

(declare-fun call!553374 () Bool)

(assert (=> b!6432381 (= e!3902145 call!553374)))

(declare-fun b!6432382 () Bool)

(declare-fun e!3902150 () Bool)

(assert (=> b!6432382 (= e!3902146 e!3902150)))

(assert (=> b!6432382 (= c!1175687 ((_ is Union!16335) lt!2379547))))

(declare-fun b!6432383 () Bool)

(declare-fun e!3902149 () Bool)

(declare-fun e!3902144 () Bool)

(assert (=> b!6432383 (= e!3902149 e!3902144)))

(declare-fun res!2644051 () Bool)

(assert (=> b!6432383 (=> (not res!2644051) (not e!3902144))))

(declare-fun call!553375 () Bool)

(assert (=> b!6432383 (= res!2644051 call!553375)))

(declare-fun b!6432384 () Bool)

(declare-fun e!3902147 () Bool)

(assert (=> b!6432384 (= e!3902147 e!3902146)))

(assert (=> b!6432384 (= c!1175686 ((_ is Star!16335) lt!2379547))))

(declare-fun b!6432379 () Bool)

(declare-fun res!2644050 () Bool)

(assert (=> b!6432379 (=> res!2644050 e!3902149)))

(assert (=> b!6432379 (= res!2644050 (not ((_ is Concat!25180) lt!2379547)))))

(assert (=> b!6432379 (= e!3902150 e!3902149)))

(declare-fun d!2016493 () Bool)

(declare-fun res!2644049 () Bool)

(assert (=> d!2016493 (=> res!2644049 e!3902147)))

(assert (=> d!2016493 (= res!2644049 ((_ is ElementMatch!16335) lt!2379547))))

(assert (=> d!2016493 (= (validRegex!8071 lt!2379547) e!3902147)))

(declare-fun b!6432385 () Bool)

(declare-fun res!2644047 () Bool)

(assert (=> b!6432385 (=> (not res!2644047) (not e!3902145))))

(assert (=> b!6432385 (= res!2644047 call!553375)))

(assert (=> b!6432385 (= e!3902150 e!3902145)))

(declare-fun b!6432386 () Bool)

(assert (=> b!6432386 (= e!3902148 call!553373)))

(declare-fun bm!553369 () Bool)

(assert (=> bm!553369 (= call!553374 (validRegex!8071 (ite c!1175687 (regTwo!33183 lt!2379547) (regTwo!33182 lt!2379547))))))

(declare-fun bm!553370 () Bool)

(assert (=> bm!553370 (= call!553375 call!553373)))

(declare-fun b!6432387 () Bool)

(assert (=> b!6432387 (= e!3902144 call!553374)))

(assert (= (and d!2016493 (not res!2644049)) b!6432384))

(assert (= (and b!6432384 c!1175686) b!6432380))

(assert (= (and b!6432384 (not c!1175686)) b!6432382))

(assert (= (and b!6432380 res!2644048) b!6432386))

(assert (= (and b!6432382 c!1175687) b!6432385))

(assert (= (and b!6432382 (not c!1175687)) b!6432379))

(assert (= (and b!6432385 res!2644047) b!6432381))

(assert (= (and b!6432379 (not res!2644050)) b!6432383))

(assert (= (and b!6432383 res!2644051) b!6432387))

(assert (= (or b!6432381 b!6432387) bm!553369))

(assert (= (or b!6432385 b!6432383) bm!553370))

(assert (= (or b!6432386 bm!553370) bm!553368))

(declare-fun m!7225996 () Bool)

(assert (=> b!6432380 m!7225996))

(declare-fun m!7225998 () Bool)

(assert (=> bm!553368 m!7225998))

(declare-fun m!7226000 () Bool)

(assert (=> bm!553369 m!7226000))

(assert (=> d!2015907 d!2016493))

(declare-fun d!2016497 () Bool)

(declare-fun res!2644060 () Bool)

(declare-fun e!3902158 () Bool)

(assert (=> d!2016497 (=> res!2644060 e!3902158)))

(assert (=> d!2016497 (= res!2644060 ((_ is Nil!65181) (exprs!6219 (h!71630 zl!343))))))

(assert (=> d!2016497 (= (forall!15525 (exprs!6219 (h!71630 zl!343)) lambda!355817) e!3902158)))

(declare-fun b!6432402 () Bool)

(declare-fun e!3902159 () Bool)

(assert (=> b!6432402 (= e!3902158 e!3902159)))

(declare-fun res!2644061 () Bool)

(assert (=> b!6432402 (=> (not res!2644061) (not e!3902159))))

(assert (=> b!6432402 (= res!2644061 (dynLambda!25894 lambda!355817 (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun b!6432403 () Bool)

(assert (=> b!6432403 (= e!3902159 (forall!15525 (t!378921 (exprs!6219 (h!71630 zl!343))) lambda!355817))))

(assert (= (and d!2016497 (not res!2644060)) b!6432402))

(assert (= (and b!6432402 res!2644061) b!6432403))

(declare-fun b_lambda!244357 () Bool)

(assert (=> (not b_lambda!244357) (not b!6432402)))

(declare-fun m!7226002 () Bool)

(assert (=> b!6432402 m!7226002))

(declare-fun m!7226004 () Bool)

(assert (=> b!6432403 m!7226004))

(assert (=> d!2015907 d!2016497))

(assert (=> b!6430403 d!2016055))

(declare-fun d!2016499 () Bool)

(declare-fun res!2644062 () Bool)

(declare-fun e!3902160 () Bool)

(assert (=> d!2016499 (=> res!2644062 e!3902160)))

(assert (=> d!2016499 (= res!2644062 ((_ is Nil!65181) (exprs!6219 lt!2379362)))))

(assert (=> d!2016499 (= (forall!15525 (exprs!6219 lt!2379362) lambda!355744) e!3902160)))

(declare-fun b!6432404 () Bool)

(declare-fun e!3902161 () Bool)

(assert (=> b!6432404 (= e!3902160 e!3902161)))

(declare-fun res!2644063 () Bool)

(assert (=> b!6432404 (=> (not res!2644063) (not e!3902161))))

(assert (=> b!6432404 (= res!2644063 (dynLambda!25894 lambda!355744 (h!71629 (exprs!6219 lt!2379362))))))

(declare-fun b!6432405 () Bool)

(assert (=> b!6432405 (= e!3902161 (forall!15525 (t!378921 (exprs!6219 lt!2379362)) lambda!355744))))

(assert (= (and d!2016499 (not res!2644062)) b!6432404))

(assert (= (and b!6432404 res!2644063) b!6432405))

(declare-fun b_lambda!244359 () Bool)

(assert (=> (not b_lambda!244359) (not b!6432404)))

(declare-fun m!7226010 () Bool)

(assert (=> b!6432404 m!7226010))

(declare-fun m!7226012 () Bool)

(assert (=> b!6432405 m!7226012))

(assert (=> d!2015651 d!2016499))

(declare-fun d!2016503 () Bool)

(assert (=> d!2016503 (= (nullable!6328 (regOne!33182 (reg!16664 (regOne!33182 r!7292)))) (nullableFct!2274 (regOne!33182 (reg!16664 (regOne!33182 r!7292)))))))

(declare-fun bs!1618277 () Bool)

(assert (= bs!1618277 d!2016503))

(declare-fun m!7226014 () Bool)

(assert (=> bs!1618277 m!7226014))

(assert (=> b!6430720 d!2016503))

(assert (=> b!6430828 d!2015965))

(declare-fun b!6432416 () Bool)

(declare-fun e!3902171 () Bool)

(declare-fun e!3902173 () Bool)

(assert (=> b!6432416 (= e!3902171 e!3902173)))

(declare-fun res!2644070 () Bool)

(assert (=> b!6432416 (= res!2644070 (not (nullable!6328 (reg!16664 lt!2379549))))))

(assert (=> b!6432416 (=> (not res!2644070) (not e!3902173))))

(declare-fun call!553380 () Bool)

(declare-fun c!1175694 () Bool)

(declare-fun bm!553375 () Bool)

(declare-fun c!1175693 () Bool)

(assert (=> bm!553375 (= call!553380 (validRegex!8071 (ite c!1175693 (reg!16664 lt!2379549) (ite c!1175694 (regOne!33183 lt!2379549) (regOne!33182 lt!2379549)))))))

(declare-fun b!6432417 () Bool)

(declare-fun e!3902170 () Bool)

(declare-fun call!553381 () Bool)

(assert (=> b!6432417 (= e!3902170 call!553381)))

(declare-fun b!6432418 () Bool)

(declare-fun e!3902175 () Bool)

(assert (=> b!6432418 (= e!3902171 e!3902175)))

(assert (=> b!6432418 (= c!1175694 ((_ is Union!16335) lt!2379549))))

(declare-fun b!6432419 () Bool)

(declare-fun e!3902174 () Bool)

(declare-fun e!3902169 () Bool)

(assert (=> b!6432419 (= e!3902174 e!3902169)))

(declare-fun res!2644073 () Bool)

(assert (=> b!6432419 (=> (not res!2644073) (not e!3902169))))

(declare-fun call!553382 () Bool)

(assert (=> b!6432419 (= res!2644073 call!553382)))

(declare-fun b!6432420 () Bool)

(declare-fun e!3902172 () Bool)

(assert (=> b!6432420 (= e!3902172 e!3902171)))

(assert (=> b!6432420 (= c!1175693 ((_ is Star!16335) lt!2379549))))

(declare-fun b!6432415 () Bool)

(declare-fun res!2644072 () Bool)

(assert (=> b!6432415 (=> res!2644072 e!3902174)))

(assert (=> b!6432415 (= res!2644072 (not ((_ is Concat!25180) lt!2379549)))))

(assert (=> b!6432415 (= e!3902175 e!3902174)))

(declare-fun d!2016505 () Bool)

(declare-fun res!2644071 () Bool)

(assert (=> d!2016505 (=> res!2644071 e!3902172)))

(assert (=> d!2016505 (= res!2644071 ((_ is ElementMatch!16335) lt!2379549))))

(assert (=> d!2016505 (= (validRegex!8071 lt!2379549) e!3902172)))

(declare-fun b!6432421 () Bool)

(declare-fun res!2644069 () Bool)

(assert (=> b!6432421 (=> (not res!2644069) (not e!3902170))))

(assert (=> b!6432421 (= res!2644069 call!553382)))

(assert (=> b!6432421 (= e!3902175 e!3902170)))

(declare-fun b!6432422 () Bool)

(assert (=> b!6432422 (= e!3902173 call!553380)))

(declare-fun bm!553376 () Bool)

(assert (=> bm!553376 (= call!553381 (validRegex!8071 (ite c!1175694 (regTwo!33183 lt!2379549) (regTwo!33182 lt!2379549))))))

(declare-fun bm!553377 () Bool)

(assert (=> bm!553377 (= call!553382 call!553380)))

(declare-fun b!6432423 () Bool)

(assert (=> b!6432423 (= e!3902169 call!553381)))

(assert (= (and d!2016505 (not res!2644071)) b!6432420))

(assert (= (and b!6432420 c!1175693) b!6432416))

(assert (= (and b!6432420 (not c!1175693)) b!6432418))

(assert (= (and b!6432416 res!2644070) b!6432422))

(assert (= (and b!6432418 c!1175694) b!6432421))

(assert (= (and b!6432418 (not c!1175694)) b!6432415))

(assert (= (and b!6432421 res!2644069) b!6432417))

(assert (= (and b!6432415 (not res!2644072)) b!6432419))

(assert (= (and b!6432419 res!2644073) b!6432423))

(assert (= (or b!6432417 b!6432423) bm!553376))

(assert (= (or b!6432421 b!6432419) bm!553377))

(assert (= (or b!6432422 bm!553377) bm!553375))

(declare-fun m!7226022 () Bool)

(assert (=> b!6432416 m!7226022))

(declare-fun m!7226024 () Bool)

(assert (=> bm!553375 m!7226024))

(declare-fun m!7226026 () Bool)

(assert (=> bm!553376 m!7226026))

(assert (=> d!2015919 d!2016505))

(declare-fun bs!1618278 () Bool)

(declare-fun d!2016509 () Bool)

(assert (= bs!1618278 (and d!2016509 d!2015651)))

(declare-fun lambda!355880 () Int)

(assert (=> bs!1618278 (= lambda!355880 lambda!355744)))

(declare-fun bs!1618279 () Bool)

(assert (= bs!1618279 (and d!2016509 d!2016339)))

(assert (=> bs!1618279 (= lambda!355880 lambda!355867)))

(declare-fun bs!1618280 () Bool)

(assert (= bs!1618280 (and d!2016509 d!2015705)))

(assert (=> bs!1618280 (= lambda!355880 lambda!355761)))

(declare-fun bs!1618281 () Bool)

(assert (= bs!1618281 (and d!2016509 d!2015739)))

(assert (=> bs!1618281 (= lambda!355880 lambda!355765)))

(declare-fun bs!1618282 () Bool)

(assert (= bs!1618282 (and d!2016509 d!2016067)))

(assert (=> bs!1618282 (= lambda!355880 lambda!355839)))

(declare-fun bs!1618283 () Bool)

(assert (= bs!1618283 (and d!2016509 d!2016025)))

(assert (=> bs!1618283 (= lambda!355880 lambda!355833)))

(declare-fun bs!1618284 () Bool)

(assert (= bs!1618284 (and d!2016509 d!2016069)))

(assert (=> bs!1618284 (= lambda!355880 lambda!355840)))

(declare-fun bs!1618285 () Bool)

(assert (= bs!1618285 (and d!2016509 d!2016351)))

(assert (=> bs!1618285 (= lambda!355880 lambda!355871)))

(declare-fun bs!1618286 () Bool)

(assert (= bs!1618286 (and d!2016509 d!2016175)))

(assert (=> bs!1618286 (= lambda!355880 lambda!355846)))

(declare-fun bs!1618288 () Bool)

(assert (= bs!1618288 (and d!2016509 d!2015713)))

(assert (=> bs!1618288 (= lambda!355880 lambda!355764)))

(declare-fun bs!1618289 () Bool)

(assert (= bs!1618289 (and d!2016509 d!2015907)))

(assert (=> bs!1618289 (= lambda!355880 lambda!355817)))

(declare-fun bs!1618291 () Bool)

(assert (= bs!1618291 (and d!2016509 d!2015603)))

(assert (=> bs!1618291 (= lambda!355880 lambda!355733)))

(declare-fun bs!1618293 () Bool)

(assert (= bs!1618293 (and d!2016509 d!2016331)))

(assert (=> bs!1618293 (= lambda!355880 lambda!355865)))

(declare-fun b!6432434 () Bool)

(declare-fun e!3902185 () Regex!16335)

(assert (=> b!6432434 (= e!3902185 (h!71629 (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182))))))

(declare-fun b!6432435 () Bool)

(declare-fun e!3902184 () Bool)

(assert (=> b!6432435 (= e!3902184 (isEmpty!37349 (t!378921 (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182)))))))

(declare-fun b!6432436 () Bool)

(declare-fun e!3902186 () Bool)

(declare-fun lt!2379623 () Regex!16335)

(assert (=> b!6432436 (= e!3902186 (isUnion!1173 lt!2379623))))

(declare-fun b!6432437 () Bool)

(declare-fun e!3902188 () Bool)

(declare-fun e!3902187 () Bool)

(assert (=> b!6432437 (= e!3902188 e!3902187)))

(declare-fun c!1175698 () Bool)

(assert (=> b!6432437 (= c!1175698 (isEmpty!37349 (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182))))))

(declare-fun b!6432438 () Bool)

(declare-fun e!3902183 () Regex!16335)

(assert (=> b!6432438 (= e!3902183 (Union!16335 (h!71629 (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182))) (generalisedUnion!2179 (t!378921 (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182))))))))

(declare-fun b!6432439 () Bool)

(assert (=> b!6432439 (= e!3902185 e!3902183)))

(declare-fun c!1175699 () Bool)

(assert (=> b!6432439 (= c!1175699 ((_ is Cons!65181) (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182))))))

(declare-fun b!6432440 () Bool)

(assert (=> b!6432440 (= e!3902187 e!3902186)))

(declare-fun c!1175700 () Bool)

(assert (=> b!6432440 (= c!1175700 (isEmpty!37349 (tail!12247 (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182)))))))

(assert (=> d!2016509 e!3902188))

(declare-fun res!2644080 () Bool)

(assert (=> d!2016509 (=> (not res!2644080) (not e!3902188))))

(assert (=> d!2016509 (= res!2644080 (validRegex!8071 lt!2379623))))

(assert (=> d!2016509 (= lt!2379623 e!3902185)))

(declare-fun c!1175697 () Bool)

(assert (=> d!2016509 (= c!1175697 e!3902184)))

(declare-fun res!2644079 () Bool)

(assert (=> d!2016509 (=> (not res!2644079) (not e!3902184))))

(assert (=> d!2016509 (= res!2644079 ((_ is Cons!65181) (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182))))))

(assert (=> d!2016509 (forall!15525 (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182)) lambda!355880)))

(assert (=> d!2016509 (= (generalisedUnion!2179 (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182))) lt!2379623)))

(declare-fun b!6432433 () Bool)

(assert (=> b!6432433 (= e!3902186 (= lt!2379623 (head!13162 (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182)))))))

(declare-fun b!6432441 () Bool)

(assert (=> b!6432441 (= e!3902183 EmptyLang!16335)))

(declare-fun b!6432442 () Bool)

(assert (=> b!6432442 (= e!3902187 (isEmptyLang!1743 lt!2379623))))

(assert (= (and d!2016509 res!2644079) b!6432435))

(assert (= (and d!2016509 c!1175697) b!6432434))

(assert (= (and d!2016509 (not c!1175697)) b!6432439))

(assert (= (and b!6432439 c!1175699) b!6432438))

(assert (= (and b!6432439 (not c!1175699)) b!6432441))

(assert (= (and d!2016509 res!2644080) b!6432437))

(assert (= (and b!6432437 c!1175698) b!6432442))

(assert (= (and b!6432437 (not c!1175698)) b!6432440))

(assert (= (and b!6432440 c!1175700) b!6432433))

(assert (= (and b!6432440 (not c!1175700)) b!6432436))

(declare-fun m!7226034 () Bool)

(assert (=> b!6432435 m!7226034))

(declare-fun m!7226036 () Bool)

(assert (=> b!6432438 m!7226036))

(declare-fun m!7226038 () Bool)

(assert (=> b!6432442 m!7226038))

(assert (=> b!6432437 m!7224864))

(declare-fun m!7226040 () Bool)

(assert (=> b!6432437 m!7226040))

(assert (=> b!6432440 m!7224864))

(declare-fun m!7226042 () Bool)

(assert (=> b!6432440 m!7226042))

(assert (=> b!6432440 m!7226042))

(declare-fun m!7226044 () Bool)

(assert (=> b!6432440 m!7226044))

(declare-fun m!7226046 () Bool)

(assert (=> d!2016509 m!7226046))

(assert (=> d!2016509 m!7224864))

(declare-fun m!7226048 () Bool)

(assert (=> d!2016509 m!7226048))

(declare-fun m!7226050 () Bool)

(assert (=> b!6432436 m!7226050))

(assert (=> b!6432433 m!7224864))

(declare-fun m!7226052 () Bool)

(assert (=> b!6432433 m!7226052))

(assert (=> d!2015919 d!2016509))

(declare-fun bs!1618300 () Bool)

(declare-fun d!2016513 () Bool)

(assert (= bs!1618300 (and d!2016513 d!2015651)))

(declare-fun lambda!355882 () Int)

(assert (=> bs!1618300 (= lambda!355882 lambda!355744)))

(declare-fun bs!1618301 () Bool)

(assert (= bs!1618301 (and d!2016513 d!2016339)))

(assert (=> bs!1618301 (= lambda!355882 lambda!355867)))

(declare-fun bs!1618302 () Bool)

(assert (= bs!1618302 (and d!2016513 d!2016509)))

(assert (=> bs!1618302 (= lambda!355882 lambda!355880)))

(declare-fun bs!1618303 () Bool)

(assert (= bs!1618303 (and d!2016513 d!2015705)))

(assert (=> bs!1618303 (= lambda!355882 lambda!355761)))

(declare-fun bs!1618304 () Bool)

(assert (= bs!1618304 (and d!2016513 d!2015739)))

(assert (=> bs!1618304 (= lambda!355882 lambda!355765)))

(declare-fun bs!1618305 () Bool)

(assert (= bs!1618305 (and d!2016513 d!2016067)))

(assert (=> bs!1618305 (= lambda!355882 lambda!355839)))

(declare-fun bs!1618307 () Bool)

(assert (= bs!1618307 (and d!2016513 d!2016025)))

(assert (=> bs!1618307 (= lambda!355882 lambda!355833)))

(declare-fun bs!1618308 () Bool)

(assert (= bs!1618308 (and d!2016513 d!2016069)))

(assert (=> bs!1618308 (= lambda!355882 lambda!355840)))

(declare-fun bs!1618310 () Bool)

(assert (= bs!1618310 (and d!2016513 d!2016351)))

(assert (=> bs!1618310 (= lambda!355882 lambda!355871)))

(declare-fun bs!1618312 () Bool)

(assert (= bs!1618312 (and d!2016513 d!2016175)))

(assert (=> bs!1618312 (= lambda!355882 lambda!355846)))

(declare-fun bs!1618314 () Bool)

(assert (= bs!1618314 (and d!2016513 d!2015713)))

(assert (=> bs!1618314 (= lambda!355882 lambda!355764)))

(declare-fun bs!1618316 () Bool)

(assert (= bs!1618316 (and d!2016513 d!2015907)))

(assert (=> bs!1618316 (= lambda!355882 lambda!355817)))

(declare-fun bs!1618318 () Bool)

(assert (= bs!1618318 (and d!2016513 d!2015603)))

(assert (=> bs!1618318 (= lambda!355882 lambda!355733)))

(declare-fun bs!1618320 () Bool)

(assert (= bs!1618320 (and d!2016513 d!2016331)))

(assert (=> bs!1618320 (= lambda!355882 lambda!355865)))

(declare-fun lt!2379625 () List!65305)

(assert (=> d!2016513 (forall!15525 lt!2379625 lambda!355882)))

(declare-fun e!3902195 () List!65305)

(assert (=> d!2016513 (= lt!2379625 e!3902195)))

(declare-fun c!1175705 () Bool)

(assert (=> d!2016513 (= c!1175705 ((_ is Cons!65182) (Cons!65182 lt!2379362 Nil!65182)))))

(assert (=> d!2016513 (= (unfocusZipperList!1756 (Cons!65182 lt!2379362 Nil!65182)) lt!2379625)))

(declare-fun b!6432453 () Bool)

(assert (=> b!6432453 (= e!3902195 (Cons!65181 (generalisedConcat!1932 (exprs!6219 (h!71630 (Cons!65182 lt!2379362 Nil!65182)))) (unfocusZipperList!1756 (t!378922 (Cons!65182 lt!2379362 Nil!65182)))))))

(declare-fun b!6432454 () Bool)

(assert (=> b!6432454 (= e!3902195 Nil!65181)))

(assert (= (and d!2016513 c!1175705) b!6432453))

(assert (= (and d!2016513 (not c!1175705)) b!6432454))

(declare-fun m!7226074 () Bool)

(assert (=> d!2016513 m!7226074))

(declare-fun m!7226076 () Bool)

(assert (=> b!6432453 m!7226076))

(declare-fun m!7226078 () Bool)

(assert (=> b!6432453 m!7226078))

(assert (=> d!2015919 d!2016513))

(assert (=> b!6430736 d!2016027))

(assert (=> b!6430736 d!2016029))

(assert (=> b!6431124 d!2016357))

(declare-fun d!2016517 () Bool)

(declare-fun res!2644083 () Bool)

(declare-fun e!3902197 () Bool)

(assert (=> d!2016517 (=> res!2644083 e!3902197)))

(assert (=> d!2016517 (= res!2644083 ((_ is Nil!65181) (exprs!6219 setElem!43908)))))

(assert (=> d!2016517 (= (forall!15525 (exprs!6219 setElem!43908) lambda!355765) e!3902197)))

(declare-fun b!6432457 () Bool)

(declare-fun e!3902198 () Bool)

(assert (=> b!6432457 (= e!3902197 e!3902198)))

(declare-fun res!2644084 () Bool)

(assert (=> b!6432457 (=> (not res!2644084) (not e!3902198))))

(assert (=> b!6432457 (= res!2644084 (dynLambda!25894 lambda!355765 (h!71629 (exprs!6219 setElem!43908))))))

(declare-fun b!6432458 () Bool)

(assert (=> b!6432458 (= e!3902198 (forall!15525 (t!378921 (exprs!6219 setElem!43908)) lambda!355765))))

(assert (= (and d!2016517 (not res!2644083)) b!6432457))

(assert (= (and b!6432457 res!2644084) b!6432458))

(declare-fun b_lambda!244361 () Bool)

(assert (=> (not b_lambda!244361) (not b!6432457)))

(declare-fun m!7226086 () Bool)

(assert (=> b!6432457 m!7226086))

(declare-fun m!7226088 () Bool)

(assert (=> b!6432458 m!7226088))

(assert (=> d!2015739 d!2016517))

(assert (=> d!2015649 d!2016491))

(assert (=> d!2015649 d!2015935))

(declare-fun d!2016521 () Bool)

(declare-fun c!1175709 () Bool)

(assert (=> d!2016521 (= c!1175709 ((_ is Nil!65180) lt!2379445))))

(declare-fun e!3902206 () (InoxSet C!32940))

(assert (=> d!2016521 (= (content!12384 lt!2379445) e!3902206)))

(declare-fun b!6432468 () Bool)

(assert (=> b!6432468 (= e!3902206 ((as const (Array C!32940 Bool)) false))))

(declare-fun b!6432469 () Bool)

(assert (=> b!6432469 (= e!3902206 ((_ map or) (store ((as const (Array C!32940 Bool)) false) (h!71628 lt!2379445) true) (content!12384 (t!378920 lt!2379445))))))

(assert (= (and d!2016521 c!1175709) b!6432468))

(assert (= (and d!2016521 (not c!1175709)) b!6432469))

(declare-fun m!7226090 () Bool)

(assert (=> b!6432469 m!7226090))

(declare-fun m!7226092 () Bool)

(assert (=> b!6432469 m!7226092))

(assert (=> d!2015693 d!2016521))

(declare-fun d!2016523 () Bool)

(declare-fun c!1175710 () Bool)

(assert (=> d!2016523 (= c!1175710 ((_ is Nil!65180) (_2!36617 lt!2379342)))))

(declare-fun e!3902207 () (InoxSet C!32940))

(assert (=> d!2016523 (= (content!12384 (_2!36617 lt!2379342)) e!3902207)))

(declare-fun b!6432470 () Bool)

(assert (=> b!6432470 (= e!3902207 ((as const (Array C!32940 Bool)) false))))

(declare-fun b!6432471 () Bool)

(assert (=> b!6432471 (= e!3902207 ((_ map or) (store ((as const (Array C!32940 Bool)) false) (h!71628 (_2!36617 lt!2379342)) true) (content!12384 (t!378920 (_2!36617 lt!2379342)))))))

(assert (= (and d!2016523 c!1175710) b!6432470))

(assert (= (and d!2016523 (not c!1175710)) b!6432471))

(declare-fun m!7226100 () Bool)

(assert (=> b!6432471 m!7226100))

(assert (=> b!6432471 m!7225914))

(assert (=> d!2015693 d!2016523))

(assert (=> d!2015693 d!2016187))

(declare-fun b!6432472 () Bool)

(declare-fun e!3902209 () List!65304)

(assert (=> b!6432472 (= e!3902209 (_2!36617 lt!2379342))))

(declare-fun b!6432473 () Bool)

(assert (=> b!6432473 (= e!3902209 (Cons!65180 (h!71628 (t!378920 (_1!36617 lt!2379342))) (++!14403 (t!378920 (t!378920 (_1!36617 lt!2379342))) (_2!36617 lt!2379342))))))

(declare-fun b!6432474 () Bool)

(declare-fun res!2644091 () Bool)

(declare-fun e!3902208 () Bool)

(assert (=> b!6432474 (=> (not res!2644091) (not e!3902208))))

(declare-fun lt!2379627 () List!65304)

(assert (=> b!6432474 (= res!2644091 (= (size!40394 lt!2379627) (+ (size!40394 (t!378920 (_1!36617 lt!2379342))) (size!40394 (_2!36617 lt!2379342)))))))

(declare-fun b!6432475 () Bool)

(assert (=> b!6432475 (= e!3902208 (or (not (= (_2!36617 lt!2379342) Nil!65180)) (= lt!2379627 (t!378920 (_1!36617 lt!2379342)))))))

(declare-fun d!2016527 () Bool)

(assert (=> d!2016527 e!3902208))

(declare-fun res!2644090 () Bool)

(assert (=> d!2016527 (=> (not res!2644090) (not e!3902208))))

(assert (=> d!2016527 (= res!2644090 (= (content!12384 lt!2379627) ((_ map or) (content!12384 (t!378920 (_1!36617 lt!2379342))) (content!12384 (_2!36617 lt!2379342)))))))

(assert (=> d!2016527 (= lt!2379627 e!3902209)))

(declare-fun c!1175711 () Bool)

(assert (=> d!2016527 (= c!1175711 ((_ is Nil!65180) (t!378920 (_1!36617 lt!2379342))))))

(assert (=> d!2016527 (= (++!14403 (t!378920 (_1!36617 lt!2379342)) (_2!36617 lt!2379342)) lt!2379627)))

(assert (= (and d!2016527 c!1175711) b!6432472))

(assert (= (and d!2016527 (not c!1175711)) b!6432473))

(assert (= (and d!2016527 res!2644090) b!6432474))

(assert (= (and b!6432474 res!2644091) b!6432475))

(declare-fun m!7226102 () Bool)

(assert (=> b!6432473 m!7226102))

(declare-fun m!7226104 () Bool)

(assert (=> b!6432474 m!7226104))

(assert (=> b!6432474 m!7225628))

(assert (=> b!6432474 m!7224206))

(declare-fun m!7226106 () Bool)

(assert (=> d!2016527 m!7226106))

(assert (=> d!2016527 m!7225204))

(assert (=> d!2016527 m!7224210))

(assert (=> b!6431142 d!2016527))

(declare-fun d!2016531 () Bool)

(assert (=> d!2016531 (= (isEmpty!37350 (_2!36617 lt!2379342)) ((_ is Nil!65180) (_2!36617 lt!2379342)))))

(assert (=> d!2015783 d!2016531))

(assert (=> d!2015783 d!2015935))

(declare-fun d!2016533 () Bool)

(assert (=> d!2016533 (= ($colon$colon!2196 (exprs!6219 lt!2379358) (ite (or c!1175184 c!1175186) (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (h!71629 (exprs!6219 (h!71630 zl!343))))) (Cons!65181 (ite (or c!1175184 c!1175186) (regTwo!33182 (h!71629 (exprs!6219 (h!71630 zl!343)))) (h!71629 (exprs!6219 (h!71630 zl!343)))) (exprs!6219 lt!2379358)))))

(assert (=> bm!553106 d!2016533))

(declare-fun b!6432480 () Bool)

(declare-fun e!3902213 () List!65304)

(assert (=> b!6432480 (= e!3902213 (t!378920 s!2326))))

(declare-fun b!6432481 () Bool)

(assert (=> b!6432481 (= e!3902213 (Cons!65180 (h!71628 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180))) (++!14403 (t!378920 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180))) (t!378920 s!2326))))))

(declare-fun b!6432482 () Bool)

(declare-fun res!2644095 () Bool)

(declare-fun e!3902212 () Bool)

(assert (=> b!6432482 (=> (not res!2644095) (not e!3902212))))

(declare-fun lt!2379629 () List!65304)

(assert (=> b!6432482 (= res!2644095 (= (size!40394 lt!2379629) (+ (size!40394 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180))) (size!40394 (t!378920 s!2326)))))))

(declare-fun b!6432483 () Bool)

(assert (=> b!6432483 (= e!3902212 (or (not (= (t!378920 s!2326) Nil!65180)) (= lt!2379629 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)))))))

(declare-fun d!2016535 () Bool)

(assert (=> d!2016535 e!3902212))

(declare-fun res!2644094 () Bool)

(assert (=> d!2016535 (=> (not res!2644094) (not e!3902212))))

(assert (=> d!2016535 (= res!2644094 (= (content!12384 lt!2379629) ((_ map or) (content!12384 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180))) (content!12384 (t!378920 s!2326)))))))

(assert (=> d!2016535 (= lt!2379629 e!3902213)))

(declare-fun c!1175713 () Bool)

(assert (=> d!2016535 (= c!1175713 ((_ is Nil!65180) (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180))))))

(assert (=> d!2016535 (= (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (t!378920 s!2326)) lt!2379629)))

(assert (= (and d!2016535 c!1175713) b!6432480))

(assert (= (and d!2016535 (not c!1175713)) b!6432481))

(assert (= (and d!2016535 res!2644094) b!6432482))

(assert (= (and b!6432482 res!2644095) b!6432483))

(declare-fun m!7226122 () Bool)

(assert (=> b!6432481 m!7226122))

(declare-fun m!7226124 () Bool)

(assert (=> b!6432482 m!7226124))

(assert (=> b!6432482 m!7224616))

(declare-fun m!7226126 () Bool)

(assert (=> b!6432482 m!7226126))

(declare-fun m!7226128 () Bool)

(assert (=> b!6432482 m!7226128))

(declare-fun m!7226130 () Bool)

(assert (=> d!2016535 m!7226130))

(assert (=> d!2016535 m!7224616))

(declare-fun m!7226132 () Bool)

(assert (=> d!2016535 m!7226132))

(declare-fun m!7226134 () Bool)

(assert (=> d!2016535 m!7226134))

(assert (=> b!6430939 d!2016535))

(declare-fun b!6432484 () Bool)

(declare-fun e!3902215 () List!65304)

(assert (=> b!6432484 (= e!3902215 (Cons!65180 (h!71628 s!2326) Nil!65180))))

(declare-fun b!6432485 () Bool)

(assert (=> b!6432485 (= e!3902215 (Cons!65180 (h!71628 Nil!65180) (++!14403 (t!378920 Nil!65180) (Cons!65180 (h!71628 s!2326) Nil!65180))))))

(declare-fun b!6432486 () Bool)

(declare-fun res!2644097 () Bool)

(declare-fun e!3902214 () Bool)

(assert (=> b!6432486 (=> (not res!2644097) (not e!3902214))))

(declare-fun lt!2379630 () List!65304)

(assert (=> b!6432486 (= res!2644097 (= (size!40394 lt!2379630) (+ (size!40394 Nil!65180) (size!40394 (Cons!65180 (h!71628 s!2326) Nil!65180)))))))

(declare-fun b!6432487 () Bool)

(assert (=> b!6432487 (= e!3902214 (or (not (= (Cons!65180 (h!71628 s!2326) Nil!65180) Nil!65180)) (= lt!2379630 Nil!65180)))))

(declare-fun d!2016539 () Bool)

(assert (=> d!2016539 e!3902214))

(declare-fun res!2644096 () Bool)

(assert (=> d!2016539 (=> (not res!2644096) (not e!3902214))))

(assert (=> d!2016539 (= res!2644096 (= (content!12384 lt!2379630) ((_ map or) (content!12384 Nil!65180) (content!12384 (Cons!65180 (h!71628 s!2326) Nil!65180)))))))

(assert (=> d!2016539 (= lt!2379630 e!3902215)))

(declare-fun c!1175714 () Bool)

(assert (=> d!2016539 (= c!1175714 ((_ is Nil!65180) Nil!65180))))

(assert (=> d!2016539 (= (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) lt!2379630)))

(assert (= (and d!2016539 c!1175714) b!6432484))

(assert (= (and d!2016539 (not c!1175714)) b!6432485))

(assert (= (and d!2016539 res!2644096) b!6432486))

(assert (= (and b!6432486 res!2644097) b!6432487))

(declare-fun m!7226136 () Bool)

(assert (=> b!6432485 m!7226136))

(declare-fun m!7226138 () Bool)

(assert (=> b!6432486 m!7226138))

(declare-fun m!7226140 () Bool)

(assert (=> b!6432486 m!7226140))

(declare-fun m!7226142 () Bool)

(assert (=> b!6432486 m!7226142))

(declare-fun m!7226144 () Bool)

(assert (=> d!2016539 m!7226144))

(declare-fun m!7226146 () Bool)

(assert (=> d!2016539 m!7226146))

(declare-fun m!7226148 () Bool)

(assert (=> d!2016539 m!7226148))

(assert (=> b!6430939 d!2016539))

(declare-fun d!2016547 () Bool)

(assert (=> d!2016547 (= (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (t!378920 s!2326)) s!2326)))

(declare-fun lt!2379633 () Unit!158671)

(declare-fun choose!47835 (List!65304 C!32940 List!65304 List!65304) Unit!158671)

(assert (=> d!2016547 (= lt!2379633 (choose!47835 Nil!65180 (h!71628 s!2326) (t!378920 s!2326) s!2326))))

(assert (=> d!2016547 (= (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) (t!378920 s!2326))) s!2326)))

(assert (=> d!2016547 (= (lemmaMoveElementToOtherListKeepsConcatEq!2498 Nil!65180 (h!71628 s!2326) (t!378920 s!2326) s!2326) lt!2379633)))

(declare-fun bs!1618340 () Bool)

(assert (= bs!1618340 d!2016547))

(assert (=> bs!1618340 m!7224616))

(assert (=> bs!1618340 m!7224616))

(assert (=> bs!1618340 m!7224618))

(declare-fun m!7226150 () Bool)

(assert (=> bs!1618340 m!7226150))

(declare-fun m!7226152 () Bool)

(assert (=> bs!1618340 m!7226152))

(assert (=> b!6430939 d!2016547))

(declare-fun b!6432499 () Bool)

(declare-fun e!3902226 () Option!16226)

(assert (=> b!6432499 (= e!3902226 (Some!16225 (tuple2!66629 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (t!378920 s!2326))))))

(declare-fun b!6432500 () Bool)

(declare-fun e!3902227 () Option!16226)

(assert (=> b!6432500 (= e!3902227 None!16225)))

(declare-fun b!6432501 () Bool)

(declare-fun e!3902224 () Bool)

(declare-fun lt!2379636 () Option!16226)

(assert (=> b!6432501 (= e!3902224 (not (isDefined!12929 lt!2379636)))))

(declare-fun b!6432502 () Bool)

(declare-fun lt!2379635 () Unit!158671)

(declare-fun lt!2379634 () Unit!158671)

(assert (=> b!6432502 (= lt!2379635 lt!2379634)))

(assert (=> b!6432502 (= (++!14403 (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (Cons!65180 (h!71628 (t!378920 s!2326)) Nil!65180)) (t!378920 (t!378920 s!2326))) s!2326)))

(assert (=> b!6432502 (= lt!2379634 (lemmaMoveElementToOtherListKeepsConcatEq!2498 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (h!71628 (t!378920 s!2326)) (t!378920 (t!378920 s!2326)) s!2326))))

(assert (=> b!6432502 (= e!3902227 (findConcatSeparation!2640 (regOne!33182 r!7292) (regTwo!33182 r!7292) (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (Cons!65180 (h!71628 (t!378920 s!2326)) Nil!65180)) (t!378920 (t!378920 s!2326)) s!2326))))

(declare-fun b!6432503 () Bool)

(declare-fun e!3902223 () Bool)

(assert (=> b!6432503 (= e!3902223 (= (++!14403 (_1!36617 (get!22586 lt!2379636)) (_2!36617 (get!22586 lt!2379636))) s!2326))))

(declare-fun b!6432504 () Bool)

(declare-fun res!2644102 () Bool)

(assert (=> b!6432504 (=> (not res!2644102) (not e!3902223))))

(assert (=> b!6432504 (= res!2644102 (matchR!8518 (regTwo!33182 r!7292) (_2!36617 (get!22586 lt!2379636))))))

(declare-fun d!2016549 () Bool)

(assert (=> d!2016549 e!3902224))

(declare-fun res!2644104 () Bool)

(assert (=> d!2016549 (=> res!2644104 e!3902224)))

(assert (=> d!2016549 (= res!2644104 e!3902223)))

(declare-fun res!2644103 () Bool)

(assert (=> d!2016549 (=> (not res!2644103) (not e!3902223))))

(assert (=> d!2016549 (= res!2644103 (isDefined!12929 lt!2379636))))

(assert (=> d!2016549 (= lt!2379636 e!3902226)))

(declare-fun c!1175720 () Bool)

(declare-fun e!3902225 () Bool)

(assert (=> d!2016549 (= c!1175720 e!3902225)))

(declare-fun res!2644106 () Bool)

(assert (=> d!2016549 (=> (not res!2644106) (not e!3902225))))

(assert (=> d!2016549 (= res!2644106 (matchR!8518 (regOne!33182 r!7292) (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180))))))

(assert (=> d!2016549 (validRegex!8071 (regOne!33182 r!7292))))

(assert (=> d!2016549 (= (findConcatSeparation!2640 (regOne!33182 r!7292) (regTwo!33182 r!7292) (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (t!378920 s!2326) s!2326) lt!2379636)))

(declare-fun b!6432505 () Bool)

(assert (=> b!6432505 (= e!3902226 e!3902227)))

(declare-fun c!1175719 () Bool)

(assert (=> b!6432505 (= c!1175719 ((_ is Nil!65180) (t!378920 s!2326)))))

(declare-fun b!6432506 () Bool)

(declare-fun res!2644105 () Bool)

(assert (=> b!6432506 (=> (not res!2644105) (not e!3902223))))

(assert (=> b!6432506 (= res!2644105 (matchR!8518 (regOne!33182 r!7292) (_1!36617 (get!22586 lt!2379636))))))

(declare-fun b!6432507 () Bool)

(assert (=> b!6432507 (= e!3902225 (matchR!8518 (regTwo!33182 r!7292) (t!378920 s!2326)))))

(assert (= (and d!2016549 res!2644106) b!6432507))

(assert (= (and d!2016549 c!1175720) b!6432499))

(assert (= (and d!2016549 (not c!1175720)) b!6432505))

(assert (= (and b!6432505 c!1175719) b!6432500))

(assert (= (and b!6432505 (not c!1175719)) b!6432502))

(assert (= (and d!2016549 res!2644103) b!6432506))

(assert (= (and b!6432506 res!2644105) b!6432504))

(assert (= (and b!6432504 res!2644102) b!6432503))

(assert (= (and d!2016549 (not res!2644104)) b!6432501))

(declare-fun m!7226154 () Bool)

(assert (=> d!2016549 m!7226154))

(assert (=> d!2016549 m!7224616))

(declare-fun m!7226156 () Bool)

(assert (=> d!2016549 m!7226156))

(assert (=> d!2016549 m!7224544))

(declare-fun m!7226158 () Bool)

(assert (=> b!6432506 m!7226158))

(declare-fun m!7226160 () Bool)

(assert (=> b!6432506 m!7226160))

(assert (=> b!6432503 m!7226158))

(declare-fun m!7226162 () Bool)

(assert (=> b!6432503 m!7226162))

(assert (=> b!6432504 m!7226158))

(declare-fun m!7226164 () Bool)

(assert (=> b!6432504 m!7226164))

(assert (=> b!6432501 m!7226154))

(assert (=> b!6432502 m!7224616))

(declare-fun m!7226166 () Bool)

(assert (=> b!6432502 m!7226166))

(assert (=> b!6432502 m!7226166))

(declare-fun m!7226168 () Bool)

(assert (=> b!6432502 m!7226168))

(assert (=> b!6432502 m!7224616))

(declare-fun m!7226170 () Bool)

(assert (=> b!6432502 m!7226170))

(assert (=> b!6432502 m!7226166))

(declare-fun m!7226172 () Bool)

(assert (=> b!6432502 m!7226172))

(declare-fun m!7226174 () Bool)

(assert (=> b!6432507 m!7226174))

(assert (=> b!6430939 d!2016549))

(assert (=> bm!553158 d!2015697))

(declare-fun d!2016551 () Bool)

(assert (=> d!2016551 (= (nullable!6328 (h!71629 (exprs!6219 lt!2379364))) (nullableFct!2274 (h!71629 (exprs!6219 lt!2379364))))))

(declare-fun bs!1618352 () Bool)

(assert (= bs!1618352 d!2016551))

(declare-fun m!7226176 () Bool)

(assert (=> bs!1618352 m!7226176))

(assert (=> b!6431106 d!2016551))

(declare-fun bs!1618355 () Bool)

(declare-fun d!2016553 () Bool)

(assert (= bs!1618355 (and d!2016553 d!2016051)))

(declare-fun lambda!355886 () Int)

(assert (=> bs!1618355 (= lambda!355886 lambda!355836)))

(declare-fun bs!1618357 () Bool)

(assert (= bs!1618357 (and d!2016553 d!2016059)))

(assert (=> bs!1618357 (= lambda!355886 lambda!355837)))

(declare-fun bs!1618358 () Bool)

(assert (= bs!1618358 (and d!2016553 d!2016063)))

(assert (=> bs!1618358 (= lambda!355886 lambda!355838)))

(declare-fun bs!1618360 () Bool)

(assert (= bs!1618360 (and d!2016553 d!2016337)))

(assert (=> bs!1618360 (= lambda!355886 lambda!355866)))

(assert (=> d!2016553 (= (nullableZipper!2100 lt!2379348) (exists!2600 lt!2379348 lambda!355886))))

(declare-fun bs!1618362 () Bool)

(assert (= bs!1618362 d!2016553))

(declare-fun m!7226178 () Bool)

(assert (=> bs!1618362 m!7226178))

(assert (=> b!6430567 d!2016553))

(declare-fun d!2016555 () Bool)

(assert (=> d!2016555 (= (isEmpty!37352 lt!2379340) (not ((_ is Some!16225) lt!2379340)))))

(assert (=> d!2015901 d!2016555))

(assert (=> b!6430422 d!2016289))

(assert (=> b!6430422 d!2016125))

(declare-fun call!553391 () (InoxSet Context!11438))

(declare-fun b!6432508 () Bool)

(declare-fun e!3902228 () (InoxSet Context!11438))

(assert (=> b!6432508 (= e!3902228 ((_ map or) call!553391 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379358)))))) (h!71628 s!2326))))))

(declare-fun d!2016557 () Bool)

(declare-fun c!1175722 () Bool)

(declare-fun e!3902229 () Bool)

(assert (=> d!2016557 (= c!1175722 e!3902229)))

(declare-fun res!2644107 () Bool)

(assert (=> d!2016557 (=> (not res!2644107) (not e!3902229))))

(assert (=> d!2016557 (= res!2644107 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379358))))))))

(assert (=> d!2016557 (= (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 lt!2379358))) (h!71628 s!2326)) e!3902228)))

(declare-fun bm!553386 () Bool)

(assert (=> bm!553386 (= call!553391 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379358))))) (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379358)))))) (h!71628 s!2326)))))

(declare-fun b!6432509 () Bool)

(declare-fun e!3902230 () (InoxSet Context!11438))

(assert (=> b!6432509 (= e!3902228 e!3902230)))

(declare-fun c!1175721 () Bool)

(assert (=> b!6432509 (= c!1175721 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379358))))))))

(declare-fun b!6432510 () Bool)

(assert (=> b!6432510 (= e!3902230 call!553391)))

(declare-fun b!6432511 () Bool)

(assert (=> b!6432511 (= e!3902230 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6432512 () Bool)

(assert (=> b!6432512 (= e!3902229 (nullable!6328 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379358)))))))))

(assert (= (and d!2016557 res!2644107) b!6432512))

(assert (= (and d!2016557 c!1175722) b!6432508))

(assert (= (and d!2016557 (not c!1175722)) b!6432509))

(assert (= (and b!6432509 c!1175721) b!6432510))

(assert (= (and b!6432509 (not c!1175721)) b!6432511))

(assert (= (or b!6432508 b!6432510) bm!553386))

(declare-fun m!7226180 () Bool)

(assert (=> b!6432508 m!7226180))

(declare-fun m!7226182 () Bool)

(assert (=> bm!553386 m!7226182))

(declare-fun m!7226184 () Bool)

(assert (=> b!6432512 m!7226184))

(assert (=> b!6430467 d!2016557))

(assert (=> d!2015617 d!2016053))

(declare-fun b!6432514 () Bool)

(declare-fun e!3902233 () Bool)

(declare-fun e!3902235 () Bool)

(assert (=> b!6432514 (= e!3902233 e!3902235)))

(declare-fun res!2644109 () Bool)

(assert (=> b!6432514 (= res!2644109 (not (nullable!6328 (reg!16664 lt!2379498))))))

(assert (=> b!6432514 (=> (not res!2644109) (not e!3902235))))

(declare-fun c!1175724 () Bool)

(declare-fun call!553392 () Bool)

(declare-fun bm!553387 () Bool)

(declare-fun c!1175723 () Bool)

(assert (=> bm!553387 (= call!553392 (validRegex!8071 (ite c!1175723 (reg!16664 lt!2379498) (ite c!1175724 (regOne!33183 lt!2379498) (regOne!33182 lt!2379498)))))))

(declare-fun b!6432515 () Bool)

(declare-fun e!3902232 () Bool)

(declare-fun call!553393 () Bool)

(assert (=> b!6432515 (= e!3902232 call!553393)))

(declare-fun b!6432516 () Bool)

(declare-fun e!3902237 () Bool)

(assert (=> b!6432516 (= e!3902233 e!3902237)))

(assert (=> b!6432516 (= c!1175724 ((_ is Union!16335) lt!2379498))))

(declare-fun b!6432517 () Bool)

(declare-fun e!3902236 () Bool)

(declare-fun e!3902231 () Bool)

(assert (=> b!6432517 (= e!3902236 e!3902231)))

(declare-fun res!2644112 () Bool)

(assert (=> b!6432517 (=> (not res!2644112) (not e!3902231))))

(declare-fun call!553394 () Bool)

(assert (=> b!6432517 (= res!2644112 call!553394)))

(declare-fun b!6432518 () Bool)

(declare-fun e!3902234 () Bool)

(assert (=> b!6432518 (= e!3902234 e!3902233)))

(assert (=> b!6432518 (= c!1175723 ((_ is Star!16335) lt!2379498))))

(declare-fun b!6432513 () Bool)

(declare-fun res!2644111 () Bool)

(assert (=> b!6432513 (=> res!2644111 e!3902236)))

(assert (=> b!6432513 (= res!2644111 (not ((_ is Concat!25180) lt!2379498)))))

(assert (=> b!6432513 (= e!3902237 e!3902236)))

(declare-fun d!2016559 () Bool)

(declare-fun res!2644110 () Bool)

(assert (=> d!2016559 (=> res!2644110 e!3902234)))

(assert (=> d!2016559 (= res!2644110 ((_ is ElementMatch!16335) lt!2379498))))

(assert (=> d!2016559 (= (validRegex!8071 lt!2379498) e!3902234)))

(declare-fun b!6432519 () Bool)

(declare-fun res!2644108 () Bool)

(assert (=> b!6432519 (=> (not res!2644108) (not e!3902232))))

(assert (=> b!6432519 (= res!2644108 call!553394)))

(assert (=> b!6432519 (= e!3902237 e!3902232)))

(declare-fun b!6432520 () Bool)

(assert (=> b!6432520 (= e!3902235 call!553392)))

(declare-fun bm!553388 () Bool)

(assert (=> bm!553388 (= call!553393 (validRegex!8071 (ite c!1175724 (regTwo!33183 lt!2379498) (regTwo!33182 lt!2379498))))))

(declare-fun bm!553389 () Bool)

(assert (=> bm!553389 (= call!553394 call!553392)))

(declare-fun b!6432521 () Bool)

(assert (=> b!6432521 (= e!3902231 call!553393)))

(assert (= (and d!2016559 (not res!2644110)) b!6432518))

(assert (= (and b!6432518 c!1175723) b!6432514))

(assert (= (and b!6432518 (not c!1175723)) b!6432516))

(assert (= (and b!6432514 res!2644109) b!6432520))

(assert (= (and b!6432516 c!1175724) b!6432519))

(assert (= (and b!6432516 (not c!1175724)) b!6432513))

(assert (= (and b!6432519 res!2644108) b!6432515))

(assert (= (and b!6432513 (not res!2644111)) b!6432517))

(assert (= (and b!6432517 res!2644112) b!6432521))

(assert (= (or b!6432515 b!6432521) bm!553388))

(assert (= (or b!6432519 b!6432517) bm!553389))

(assert (= (or b!6432520 bm!553389) bm!553387))

(declare-fun m!7226186 () Bool)

(assert (=> b!6432514 m!7226186))

(declare-fun m!7226188 () Bool)

(assert (=> bm!553387 m!7226188))

(declare-fun m!7226190 () Bool)

(assert (=> bm!553388 m!7226190))

(assert (=> d!2015789 d!2016559))

(declare-fun bs!1618372 () Bool)

(declare-fun d!2016561 () Bool)

(assert (= bs!1618372 (and d!2016561 d!2016513)))

(declare-fun lambda!355887 () Int)

(assert (=> bs!1618372 (= lambda!355887 lambda!355882)))

(declare-fun bs!1618373 () Bool)

(assert (= bs!1618373 (and d!2016561 d!2015651)))

(assert (=> bs!1618373 (= lambda!355887 lambda!355744)))

(declare-fun bs!1618374 () Bool)

(assert (= bs!1618374 (and d!2016561 d!2016339)))

(assert (=> bs!1618374 (= lambda!355887 lambda!355867)))

(declare-fun bs!1618375 () Bool)

(assert (= bs!1618375 (and d!2016561 d!2016509)))

(assert (=> bs!1618375 (= lambda!355887 lambda!355880)))

(declare-fun bs!1618376 () Bool)

(assert (= bs!1618376 (and d!2016561 d!2015705)))

(assert (=> bs!1618376 (= lambda!355887 lambda!355761)))

(declare-fun bs!1618377 () Bool)

(assert (= bs!1618377 (and d!2016561 d!2015739)))

(assert (=> bs!1618377 (= lambda!355887 lambda!355765)))

(declare-fun bs!1618378 () Bool)

(assert (= bs!1618378 (and d!2016561 d!2016067)))

(assert (=> bs!1618378 (= lambda!355887 lambda!355839)))

(declare-fun bs!1618379 () Bool)

(assert (= bs!1618379 (and d!2016561 d!2016025)))

(assert (=> bs!1618379 (= lambda!355887 lambda!355833)))

(declare-fun bs!1618380 () Bool)

(assert (= bs!1618380 (and d!2016561 d!2016069)))

(assert (=> bs!1618380 (= lambda!355887 lambda!355840)))

(declare-fun bs!1618381 () Bool)

(assert (= bs!1618381 (and d!2016561 d!2016351)))

(assert (=> bs!1618381 (= lambda!355887 lambda!355871)))

(declare-fun bs!1618382 () Bool)

(assert (= bs!1618382 (and d!2016561 d!2016175)))

(assert (=> bs!1618382 (= lambda!355887 lambda!355846)))

(declare-fun bs!1618383 () Bool)

(assert (= bs!1618383 (and d!2016561 d!2015713)))

(assert (=> bs!1618383 (= lambda!355887 lambda!355764)))

(declare-fun bs!1618384 () Bool)

(assert (= bs!1618384 (and d!2016561 d!2015907)))

(assert (=> bs!1618384 (= lambda!355887 lambda!355817)))

(declare-fun bs!1618385 () Bool)

(assert (= bs!1618385 (and d!2016561 d!2015603)))

(assert (=> bs!1618385 (= lambda!355887 lambda!355733)))

(declare-fun bs!1618386 () Bool)

(assert (= bs!1618386 (and d!2016561 d!2016331)))

(assert (=> bs!1618386 (= lambda!355887 lambda!355865)))

(declare-fun b!6432523 () Bool)

(declare-fun e!3902240 () Regex!16335)

(assert (=> b!6432523 (= e!3902240 (h!71629 (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182))))))

(declare-fun b!6432524 () Bool)

(declare-fun e!3902239 () Bool)

(assert (=> b!6432524 (= e!3902239 (isEmpty!37349 (t!378921 (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182)))))))

(declare-fun b!6432525 () Bool)

(declare-fun e!3902241 () Bool)

(declare-fun lt!2379637 () Regex!16335)

(assert (=> b!6432525 (= e!3902241 (isUnion!1173 lt!2379637))))

(declare-fun b!6432526 () Bool)

(declare-fun e!3902243 () Bool)

(declare-fun e!3902242 () Bool)

(assert (=> b!6432526 (= e!3902243 e!3902242)))

(declare-fun c!1175726 () Bool)

(assert (=> b!6432526 (= c!1175726 (isEmpty!37349 (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182))))))

(declare-fun b!6432527 () Bool)

(declare-fun e!3902238 () Regex!16335)

(assert (=> b!6432527 (= e!3902238 (Union!16335 (h!71629 (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182))) (generalisedUnion!2179 (t!378921 (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182))))))))

(declare-fun b!6432528 () Bool)

(assert (=> b!6432528 (= e!3902240 e!3902238)))

(declare-fun c!1175727 () Bool)

(assert (=> b!6432528 (= c!1175727 ((_ is Cons!65181) (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182))))))

(declare-fun b!6432529 () Bool)

(assert (=> b!6432529 (= e!3902242 e!3902241)))

(declare-fun c!1175728 () Bool)

(assert (=> b!6432529 (= c!1175728 (isEmpty!37349 (tail!12247 (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182)))))))

(assert (=> d!2016561 e!3902243))

(declare-fun res!2644114 () Bool)

(assert (=> d!2016561 (=> (not res!2644114) (not e!3902243))))

(assert (=> d!2016561 (= res!2644114 (validRegex!8071 lt!2379637))))

(assert (=> d!2016561 (= lt!2379637 e!3902240)))

(declare-fun c!1175725 () Bool)

(assert (=> d!2016561 (= c!1175725 e!3902239)))

(declare-fun res!2644113 () Bool)

(assert (=> d!2016561 (=> (not res!2644113) (not e!3902239))))

(assert (=> d!2016561 (= res!2644113 ((_ is Cons!65181) (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182))))))

(assert (=> d!2016561 (forall!15525 (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182)) lambda!355887)))

(assert (=> d!2016561 (= (generalisedUnion!2179 (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182))) lt!2379637)))

(declare-fun b!6432522 () Bool)

(assert (=> b!6432522 (= e!3902241 (= lt!2379637 (head!13162 (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182)))))))

(declare-fun b!6432530 () Bool)

(assert (=> b!6432530 (= e!3902238 EmptyLang!16335)))

(declare-fun b!6432531 () Bool)

(assert (=> b!6432531 (= e!3902242 (isEmptyLang!1743 lt!2379637))))

(assert (= (and d!2016561 res!2644113) b!6432524))

(assert (= (and d!2016561 c!1175725) b!6432523))

(assert (= (and d!2016561 (not c!1175725)) b!6432528))

(assert (= (and b!6432528 c!1175727) b!6432527))

(assert (= (and b!6432528 (not c!1175727)) b!6432530))

(assert (= (and d!2016561 res!2644114) b!6432526))

(assert (= (and b!6432526 c!1175726) b!6432531))

(assert (= (and b!6432526 (not c!1175726)) b!6432529))

(assert (= (and b!6432529 c!1175728) b!6432522))

(assert (= (and b!6432529 (not c!1175728)) b!6432525))

(declare-fun m!7226198 () Bool)

(assert (=> b!6432524 m!7226198))

(declare-fun m!7226200 () Bool)

(assert (=> b!6432527 m!7226200))

(declare-fun m!7226202 () Bool)

(assert (=> b!6432531 m!7226202))

(assert (=> b!6432526 m!7224502))

(declare-fun m!7226204 () Bool)

(assert (=> b!6432526 m!7226204))

(assert (=> b!6432529 m!7224502))

(declare-fun m!7226212 () Bool)

(assert (=> b!6432529 m!7226212))

(assert (=> b!6432529 m!7226212))

(declare-fun m!7226214 () Bool)

(assert (=> b!6432529 m!7226214))

(declare-fun m!7226218 () Bool)

(assert (=> d!2016561 m!7226218))

(assert (=> d!2016561 m!7224502))

(declare-fun m!7226220 () Bool)

(assert (=> d!2016561 m!7226220))

(declare-fun m!7226222 () Bool)

(assert (=> b!6432525 m!7226222))

(assert (=> b!6432522 m!7224502))

(declare-fun m!7226224 () Bool)

(assert (=> b!6432522 m!7226224))

(assert (=> d!2015789 d!2016561))

(declare-fun bs!1618387 () Bool)

(declare-fun d!2016565 () Bool)

(assert (= bs!1618387 (and d!2016565 d!2016561)))

(declare-fun lambda!355888 () Int)

(assert (=> bs!1618387 (= lambda!355888 lambda!355887)))

(declare-fun bs!1618388 () Bool)

(assert (= bs!1618388 (and d!2016565 d!2016513)))

(assert (=> bs!1618388 (= lambda!355888 lambda!355882)))

(declare-fun bs!1618389 () Bool)

(assert (= bs!1618389 (and d!2016565 d!2015651)))

(assert (=> bs!1618389 (= lambda!355888 lambda!355744)))

(declare-fun bs!1618390 () Bool)

(assert (= bs!1618390 (and d!2016565 d!2016339)))

(assert (=> bs!1618390 (= lambda!355888 lambda!355867)))

(declare-fun bs!1618391 () Bool)

(assert (= bs!1618391 (and d!2016565 d!2016509)))

(assert (=> bs!1618391 (= lambda!355888 lambda!355880)))

(declare-fun bs!1618392 () Bool)

(assert (= bs!1618392 (and d!2016565 d!2015705)))

(assert (=> bs!1618392 (= lambda!355888 lambda!355761)))

(declare-fun bs!1618393 () Bool)

(assert (= bs!1618393 (and d!2016565 d!2015739)))

(assert (=> bs!1618393 (= lambda!355888 lambda!355765)))

(declare-fun bs!1618395 () Bool)

(assert (= bs!1618395 (and d!2016565 d!2016067)))

(assert (=> bs!1618395 (= lambda!355888 lambda!355839)))

(declare-fun bs!1618396 () Bool)

(assert (= bs!1618396 (and d!2016565 d!2016025)))

(assert (=> bs!1618396 (= lambda!355888 lambda!355833)))

(declare-fun bs!1618397 () Bool)

(assert (= bs!1618397 (and d!2016565 d!2016069)))

(assert (=> bs!1618397 (= lambda!355888 lambda!355840)))

(declare-fun bs!1618399 () Bool)

(assert (= bs!1618399 (and d!2016565 d!2016351)))

(assert (=> bs!1618399 (= lambda!355888 lambda!355871)))

(declare-fun bs!1618401 () Bool)

(assert (= bs!1618401 (and d!2016565 d!2016175)))

(assert (=> bs!1618401 (= lambda!355888 lambda!355846)))

(declare-fun bs!1618402 () Bool)

(assert (= bs!1618402 (and d!2016565 d!2015713)))

(assert (=> bs!1618402 (= lambda!355888 lambda!355764)))

(declare-fun bs!1618404 () Bool)

(assert (= bs!1618404 (and d!2016565 d!2015907)))

(assert (=> bs!1618404 (= lambda!355888 lambda!355817)))

(declare-fun bs!1618405 () Bool)

(assert (= bs!1618405 (and d!2016565 d!2015603)))

(assert (=> bs!1618405 (= lambda!355888 lambda!355733)))

(declare-fun bs!1618407 () Bool)

(assert (= bs!1618407 (and d!2016565 d!2016331)))

(assert (=> bs!1618407 (= lambda!355888 lambda!355865)))

(declare-fun lt!2379638 () List!65305)

(assert (=> d!2016565 (forall!15525 lt!2379638 lambda!355888)))

(declare-fun e!3902250 () List!65305)

(assert (=> d!2016565 (= lt!2379638 e!3902250)))

(declare-fun c!1175734 () Bool)

(assert (=> d!2016565 (= c!1175734 ((_ is Cons!65182) (Cons!65182 lt!2379355 Nil!65182)))))

(assert (=> d!2016565 (= (unfocusZipperList!1756 (Cons!65182 lt!2379355 Nil!65182)) lt!2379638)))

(declare-fun b!6432543 () Bool)

(assert (=> b!6432543 (= e!3902250 (Cons!65181 (generalisedConcat!1932 (exprs!6219 (h!71630 (Cons!65182 lt!2379355 Nil!65182)))) (unfocusZipperList!1756 (t!378922 (Cons!65182 lt!2379355 Nil!65182)))))))

(declare-fun b!6432544 () Bool)

(assert (=> b!6432544 (= e!3902250 Nil!65181)))

(assert (= (and d!2016565 c!1175734) b!6432543))

(assert (= (and d!2016565 (not c!1175734)) b!6432544))

(declare-fun m!7226228 () Bool)

(assert (=> d!2016565 m!7226228))

(declare-fun m!7226230 () Bool)

(assert (=> b!6432543 m!7226230))

(declare-fun m!7226232 () Bool)

(assert (=> b!6432543 m!7226232))

(assert (=> d!2015789 d!2016565))

(declare-fun d!2016569 () Bool)

(declare-fun lt!2379639 () Int)

(assert (=> d!2016569 (>= lt!2379639 0)))

(declare-fun e!3902251 () Int)

(assert (=> d!2016569 (= lt!2379639 e!3902251)))

(declare-fun c!1175735 () Bool)

(assert (=> d!2016569 (= c!1175735 ((_ is Nil!65180) lt!2379445))))

(assert (=> d!2016569 (= (size!40394 lt!2379445) lt!2379639)))

(declare-fun b!6432545 () Bool)

(assert (=> b!6432545 (= e!3902251 0)))

(declare-fun b!6432546 () Bool)

(assert (=> b!6432546 (= e!3902251 (+ 1 (size!40394 (t!378920 lt!2379445))))))

(assert (= (and d!2016569 c!1175735) b!6432545))

(assert (= (and d!2016569 (not c!1175735)) b!6432546))

(declare-fun m!7226234 () Bool)

(assert (=> b!6432546 m!7226234))

(assert (=> b!6430589 d!2016569))

(declare-fun d!2016571 () Bool)

(declare-fun lt!2379640 () Int)

(assert (=> d!2016571 (>= lt!2379640 0)))

(declare-fun e!3902252 () Int)

(assert (=> d!2016571 (= lt!2379640 e!3902252)))

(declare-fun c!1175736 () Bool)

(assert (=> d!2016571 (= c!1175736 ((_ is Nil!65180) (_2!36617 lt!2379342)))))

(assert (=> d!2016571 (= (size!40394 (_2!36617 lt!2379342)) lt!2379640)))

(declare-fun b!6432547 () Bool)

(assert (=> b!6432547 (= e!3902252 0)))

(declare-fun b!6432548 () Bool)

(assert (=> b!6432548 (= e!3902252 (+ 1 (size!40394 (t!378920 (_2!36617 lt!2379342)))))))

(assert (= (and d!2016571 c!1175736) b!6432547))

(assert (= (and d!2016571 (not c!1175736)) b!6432548))

(assert (=> b!6432548 m!7225908))

(assert (=> b!6430589 d!2016571))

(assert (=> b!6430589 d!2016217))

(declare-fun e!3902253 () (InoxSet Context!11438))

(declare-fun b!6432549 () Bool)

(declare-fun call!553401 () (InoxSet Context!11438))

(assert (=> b!6432549 (= e!3902253 ((_ map or) call!553401 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379355)))))) (h!71628 s!2326))))))

(declare-fun d!2016573 () Bool)

(declare-fun c!1175738 () Bool)

(declare-fun e!3902254 () Bool)

(assert (=> d!2016573 (= c!1175738 e!3902254)))

(declare-fun res!2644116 () Bool)

(assert (=> d!2016573 (=> (not res!2644116) (not e!3902254))))

(assert (=> d!2016573 (= res!2644116 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379355))))))))

(assert (=> d!2016573 (= (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 lt!2379355))) (h!71628 s!2326)) e!3902253)))

(declare-fun bm!553396 () Bool)

(assert (=> bm!553396 (= call!553401 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379355))))) (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379355)))))) (h!71628 s!2326)))))

(declare-fun b!6432550 () Bool)

(declare-fun e!3902255 () (InoxSet Context!11438))

(assert (=> b!6432550 (= e!3902253 e!3902255)))

(declare-fun c!1175737 () Bool)

(assert (=> b!6432550 (= c!1175737 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379355))))))))

(declare-fun b!6432551 () Bool)

(assert (=> b!6432551 (= e!3902255 call!553401)))

(declare-fun b!6432552 () Bool)

(assert (=> b!6432552 (= e!3902255 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6432553 () Bool)

(assert (=> b!6432553 (= e!3902254 (nullable!6328 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379355)))))))))

(assert (= (and d!2016573 res!2644116) b!6432553))

(assert (= (and d!2016573 c!1175738) b!6432549))

(assert (= (and d!2016573 (not c!1175738)) b!6432550))

(assert (= (and b!6432550 c!1175737) b!6432551))

(assert (= (and b!6432550 (not c!1175737)) b!6432552))

(assert (= (or b!6432549 b!6432551) bm!553396))

(declare-fun m!7226236 () Bool)

(assert (=> b!6432549 m!7226236))

(declare-fun m!7226238 () Bool)

(assert (=> bm!553396 m!7226238))

(declare-fun m!7226240 () Bool)

(assert (=> b!6432553 m!7226240))

(assert (=> b!6431186 d!2016573))

(assert (=> b!6431059 d!2016199))

(declare-fun d!2016575 () Bool)

(assert (=> d!2016575 (= (isEmpty!37352 (findConcatSeparation!2640 (regOne!33182 r!7292) (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326)) (not ((_ is Some!16225) (findConcatSeparation!2640 (regOne!33182 r!7292) (regTwo!33182 r!7292) Nil!65180 s!2326 s!2326))))))

(assert (=> d!2015851 d!2016575))

(assert (=> d!2015863 d!2015859))

(declare-fun d!2016577 () Bool)

(assert (=> d!2016577 (= (flatMap!1840 lt!2379348 lambda!355716) (dynLambda!25892 lambda!355716 lt!2379364))))

(assert (=> d!2016577 true))

(declare-fun _$13!3650 () Unit!158671)

(assert (=> d!2016577 (= (choose!47823 lt!2379348 lt!2379364 lambda!355716) _$13!3650)))

(declare-fun b_lambda!244363 () Bool)

(assert (=> (not b_lambda!244363) (not d!2016577)))

(declare-fun bs!1618419 () Bool)

(assert (= bs!1618419 d!2016577))

(assert (=> bs!1618419 m!7223812))

(assert (=> bs!1618419 m!7224716))

(assert (=> d!2015863 d!2016577))

(assert (=> bm!553133 d!2016531))

(declare-fun d!2016579 () Bool)

(declare-fun e!3902261 () Bool)

(assert (=> d!2016579 e!3902261))

(declare-fun c!1175740 () Bool)

(assert (=> d!2016579 (= c!1175740 ((_ is EmptyExpr!16335) (derivativeStep!5039 lt!2379370 (head!13161 lt!2379356))))))

(declare-fun lt!2379641 () Bool)

(declare-fun e!3902256 () Bool)

(assert (=> d!2016579 (= lt!2379641 e!3902256)))

(declare-fun c!1175741 () Bool)

(assert (=> d!2016579 (= c!1175741 (isEmpty!37350 (tail!12246 lt!2379356)))))

(assert (=> d!2016579 (validRegex!8071 (derivativeStep!5039 lt!2379370 (head!13161 lt!2379356)))))

(assert (=> d!2016579 (= (matchR!8518 (derivativeStep!5039 lt!2379370 (head!13161 lt!2379356)) (tail!12246 lt!2379356)) lt!2379641)))

(declare-fun b!6432554 () Bool)

(declare-fun e!3902260 () Bool)

(assert (=> b!6432554 (= e!3902260 (not (= (head!13161 (tail!12246 lt!2379356)) (c!1175066 (derivativeStep!5039 lt!2379370 (head!13161 lt!2379356))))))))

(declare-fun b!6432555 () Bool)

(assert (=> b!6432555 (= e!3902256 (matchR!8518 (derivativeStep!5039 (derivativeStep!5039 lt!2379370 (head!13161 lt!2379356)) (head!13161 (tail!12246 lt!2379356))) (tail!12246 (tail!12246 lt!2379356))))))

(declare-fun b!6432556 () Bool)

(declare-fun res!2644118 () Bool)

(declare-fun e!3902259 () Bool)

(assert (=> b!6432556 (=> res!2644118 e!3902259)))

(declare-fun e!3902257 () Bool)

(assert (=> b!6432556 (= res!2644118 e!3902257)))

(declare-fun res!2644122 () Bool)

(assert (=> b!6432556 (=> (not res!2644122) (not e!3902257))))

(assert (=> b!6432556 (= res!2644122 lt!2379641)))

(declare-fun b!6432557 () Bool)

(declare-fun res!2644120 () Bool)

(assert (=> b!6432557 (=> res!2644120 e!3902259)))

(assert (=> b!6432557 (= res!2644120 (not ((_ is ElementMatch!16335) (derivativeStep!5039 lt!2379370 (head!13161 lt!2379356)))))))

(declare-fun e!3902258 () Bool)

(assert (=> b!6432557 (= e!3902258 e!3902259)))

(declare-fun b!6432558 () Bool)

(declare-fun e!3902262 () Bool)

(assert (=> b!6432558 (= e!3902259 e!3902262)))

(declare-fun res!2644123 () Bool)

(assert (=> b!6432558 (=> (not res!2644123) (not e!3902262))))

(assert (=> b!6432558 (= res!2644123 (not lt!2379641))))

(declare-fun b!6432559 () Bool)

(declare-fun res!2644121 () Bool)

(assert (=> b!6432559 (=> res!2644121 e!3902260)))

(assert (=> b!6432559 (= res!2644121 (not (isEmpty!37350 (tail!12246 (tail!12246 lt!2379356)))))))

(declare-fun b!6432560 () Bool)

(assert (=> b!6432560 (= e!3902256 (nullable!6328 (derivativeStep!5039 lt!2379370 (head!13161 lt!2379356))))))

(declare-fun b!6432561 () Bool)

(assert (=> b!6432561 (= e!3902261 e!3902258)))

(declare-fun c!1175739 () Bool)

(assert (=> b!6432561 (= c!1175739 ((_ is EmptyLang!16335) (derivativeStep!5039 lt!2379370 (head!13161 lt!2379356))))))

(declare-fun b!6432562 () Bool)

(declare-fun call!553402 () Bool)

(assert (=> b!6432562 (= e!3902261 (= lt!2379641 call!553402))))

(declare-fun b!6432563 () Bool)

(assert (=> b!6432563 (= e!3902258 (not lt!2379641))))

(declare-fun b!6432564 () Bool)

(declare-fun res!2644124 () Bool)

(assert (=> b!6432564 (=> (not res!2644124) (not e!3902257))))

(assert (=> b!6432564 (= res!2644124 (isEmpty!37350 (tail!12246 (tail!12246 lt!2379356))))))

(declare-fun b!6432565 () Bool)

(assert (=> b!6432565 (= e!3902262 e!3902260)))

(declare-fun res!2644117 () Bool)

(assert (=> b!6432565 (=> res!2644117 e!3902260)))

(assert (=> b!6432565 (= res!2644117 call!553402)))

(declare-fun b!6432566 () Bool)

(assert (=> b!6432566 (= e!3902257 (= (head!13161 (tail!12246 lt!2379356)) (c!1175066 (derivativeStep!5039 lt!2379370 (head!13161 lt!2379356)))))))

(declare-fun bm!553397 () Bool)

(assert (=> bm!553397 (= call!553402 (isEmpty!37350 (tail!12246 lt!2379356)))))

(declare-fun b!6432567 () Bool)

(declare-fun res!2644119 () Bool)

(assert (=> b!6432567 (=> (not res!2644119) (not e!3902257))))

(assert (=> b!6432567 (= res!2644119 (not call!553402))))

(assert (= (and d!2016579 c!1175741) b!6432560))

(assert (= (and d!2016579 (not c!1175741)) b!6432555))

(assert (= (and d!2016579 c!1175740) b!6432562))

(assert (= (and d!2016579 (not c!1175740)) b!6432561))

(assert (= (and b!6432561 c!1175739) b!6432563))

(assert (= (and b!6432561 (not c!1175739)) b!6432557))

(assert (= (and b!6432557 (not res!2644120)) b!6432556))

(assert (= (and b!6432556 res!2644122) b!6432567))

(assert (= (and b!6432567 res!2644119) b!6432564))

(assert (= (and b!6432564 res!2644124) b!6432566))

(assert (= (and b!6432556 (not res!2644118)) b!6432558))

(assert (= (and b!6432558 res!2644123) b!6432565))

(assert (= (and b!6432565 (not res!2644117)) b!6432559))

(assert (= (and b!6432559 (not res!2644121)) b!6432554))

(assert (= (or b!6432562 b!6432567 b!6432565) bm!553397))

(assert (=> d!2016579 m!7224034))

(assert (=> d!2016579 m!7224036))

(assert (=> d!2016579 m!7224040))

(declare-fun m!7226242 () Bool)

(assert (=> d!2016579 m!7226242))

(assert (=> b!6432554 m!7224034))

(declare-fun m!7226244 () Bool)

(assert (=> b!6432554 m!7226244))

(assert (=> b!6432564 m!7224034))

(declare-fun m!7226246 () Bool)

(assert (=> b!6432564 m!7226246))

(assert (=> b!6432564 m!7226246))

(declare-fun m!7226248 () Bool)

(assert (=> b!6432564 m!7226248))

(assert (=> b!6432559 m!7224034))

(assert (=> b!6432559 m!7226246))

(assert (=> b!6432559 m!7226246))

(assert (=> b!6432559 m!7226248))

(assert (=> b!6432566 m!7224034))

(assert (=> b!6432566 m!7226244))

(assert (=> bm!553397 m!7224034))

(assert (=> bm!553397 m!7224036))

(assert (=> b!6432560 m!7224040))

(declare-fun m!7226250 () Bool)

(assert (=> b!6432560 m!7226250))

(assert (=> b!6432555 m!7224034))

(assert (=> b!6432555 m!7226244))

(assert (=> b!6432555 m!7224040))

(assert (=> b!6432555 m!7226244))

(declare-fun m!7226252 () Bool)

(assert (=> b!6432555 m!7226252))

(assert (=> b!6432555 m!7224034))

(assert (=> b!6432555 m!7226246))

(assert (=> b!6432555 m!7226252))

(assert (=> b!6432555 m!7226246))

(declare-fun m!7226256 () Bool)

(assert (=> b!6432555 m!7226256))

(assert (=> b!6430404 d!2016579))

(declare-fun b!6432568 () Bool)

(declare-fun e!3902264 () Regex!16335)

(declare-fun e!3902263 () Regex!16335)

(assert (=> b!6432568 (= e!3902264 e!3902263)))

(declare-fun c!1175743 () Bool)

(assert (=> b!6432568 (= c!1175743 ((_ is ElementMatch!16335) lt!2379370))))

(declare-fun b!6432569 () Bool)

(assert (=> b!6432569 (= e!3902263 (ite (= (head!13161 lt!2379356) (c!1175066 lt!2379370)) EmptyExpr!16335 EmptyLang!16335))))

(declare-fun call!553403 () Regex!16335)

(declare-fun e!3902267 () Regex!16335)

(declare-fun b!6432570 () Bool)

(declare-fun call!553406 () Regex!16335)

(assert (=> b!6432570 (= e!3902267 (Union!16335 (Concat!25180 call!553403 (regTwo!33182 lt!2379370)) call!553406))))

(declare-fun d!2016583 () Bool)

(declare-fun lt!2379642 () Regex!16335)

(assert (=> d!2016583 (validRegex!8071 lt!2379642)))

(assert (=> d!2016583 (= lt!2379642 e!3902264)))

(declare-fun c!1175745 () Bool)

(assert (=> d!2016583 (= c!1175745 (or ((_ is EmptyExpr!16335) lt!2379370) ((_ is EmptyLang!16335) lt!2379370)))))

(assert (=> d!2016583 (validRegex!8071 lt!2379370)))

(assert (=> d!2016583 (= (derivativeStep!5039 lt!2379370 (head!13161 lt!2379356)) lt!2379642)))

(declare-fun b!6432571 () Bool)

(declare-fun e!3902266 () Regex!16335)

(declare-fun call!553405 () Regex!16335)

(declare-fun call!553404 () Regex!16335)

(assert (=> b!6432571 (= e!3902266 (Union!16335 call!553405 call!553404))))

(declare-fun c!1175744 () Bool)

(declare-fun bm!553398 () Bool)

(declare-fun c!1175742 () Bool)

(assert (=> bm!553398 (= call!553404 (derivativeStep!5039 (ite c!1175742 (regTwo!33183 lt!2379370) (ite c!1175744 (reg!16664 lt!2379370) (regOne!33182 lt!2379370))) (head!13161 lt!2379356)))))

(declare-fun b!6432572 () Bool)

(declare-fun e!3902265 () Regex!16335)

(assert (=> b!6432572 (= e!3902266 e!3902265)))

(assert (=> b!6432572 (= c!1175744 ((_ is Star!16335) lt!2379370))))

(declare-fun b!6432573 () Bool)

(assert (=> b!6432573 (= e!3902264 EmptyLang!16335)))

(declare-fun b!6432574 () Bool)

(assert (=> b!6432574 (= c!1175742 ((_ is Union!16335) lt!2379370))))

(assert (=> b!6432574 (= e!3902263 e!3902266)))

(declare-fun bm!553399 () Bool)

(assert (=> bm!553399 (= call!553406 call!553405)))

(declare-fun b!6432575 () Bool)

(declare-fun c!1175746 () Bool)

(assert (=> b!6432575 (= c!1175746 (nullable!6328 (regOne!33182 lt!2379370)))))

(assert (=> b!6432575 (= e!3902265 e!3902267)))

(declare-fun bm!553400 () Bool)

(assert (=> bm!553400 (= call!553403 call!553404)))

(declare-fun bm!553401 () Bool)

(assert (=> bm!553401 (= call!553405 (derivativeStep!5039 (ite c!1175742 (regOne!33183 lt!2379370) (ite c!1175746 (regTwo!33182 lt!2379370) (regOne!33182 lt!2379370))) (head!13161 lt!2379356)))))

(declare-fun b!6432576 () Bool)

(assert (=> b!6432576 (= e!3902265 (Concat!25180 call!553403 lt!2379370))))

(declare-fun b!6432577 () Bool)

(assert (=> b!6432577 (= e!3902267 (Union!16335 (Concat!25180 call!553406 (regTwo!33182 lt!2379370)) EmptyLang!16335))))

(assert (= (and d!2016583 c!1175745) b!6432573))

(assert (= (and d!2016583 (not c!1175745)) b!6432568))

(assert (= (and b!6432568 c!1175743) b!6432569))

(assert (= (and b!6432568 (not c!1175743)) b!6432574))

(assert (= (and b!6432574 c!1175742) b!6432571))

(assert (= (and b!6432574 (not c!1175742)) b!6432572))

(assert (= (and b!6432572 c!1175744) b!6432576))

(assert (= (and b!6432572 (not c!1175744)) b!6432575))

(assert (= (and b!6432575 c!1175746) b!6432570))

(assert (= (and b!6432575 (not c!1175746)) b!6432577))

(assert (= (or b!6432570 b!6432577) bm!553399))

(assert (= (or b!6432576 b!6432570) bm!553400))

(assert (= (or b!6432571 bm!553400) bm!553398))

(assert (= (or b!6432571 bm!553399) bm!553401))

(declare-fun m!7226264 () Bool)

(assert (=> d!2016583 m!7226264))

(assert (=> d!2016583 m!7224030))

(assert (=> bm!553398 m!7224032))

(declare-fun m!7226266 () Bool)

(assert (=> bm!553398 m!7226266))

(declare-fun m!7226268 () Bool)

(assert (=> b!6432575 m!7226268))

(assert (=> bm!553401 m!7224032))

(declare-fun m!7226270 () Bool)

(assert (=> bm!553401 m!7226270))

(assert (=> b!6430404 d!2016583))

(assert (=> b!6430404 d!2016055))

(assert (=> b!6430404 d!2016193))

(assert (=> b!6431112 d!2016535))

(assert (=> b!6431112 d!2016539))

(assert (=> b!6431112 d!2016547))

(declare-fun b!6432578 () Bool)

(declare-fun e!3902271 () Option!16226)

(assert (=> b!6432578 (= e!3902271 (Some!16225 (tuple2!66629 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (t!378920 s!2326))))))

(declare-fun b!6432579 () Bool)

(declare-fun e!3902272 () Option!16226)

(assert (=> b!6432579 (= e!3902272 None!16225)))

(declare-fun b!6432580 () Bool)

(declare-fun e!3902269 () Bool)

(declare-fun lt!2379645 () Option!16226)

(assert (=> b!6432580 (= e!3902269 (not (isDefined!12929 lt!2379645)))))

(declare-fun b!6432581 () Bool)

(declare-fun lt!2379644 () Unit!158671)

(declare-fun lt!2379643 () Unit!158671)

(assert (=> b!6432581 (= lt!2379644 lt!2379643)))

(assert (=> b!6432581 (= (++!14403 (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (Cons!65180 (h!71628 (t!378920 s!2326)) Nil!65180)) (t!378920 (t!378920 s!2326))) s!2326)))

(assert (=> b!6432581 (= lt!2379643 (lemmaMoveElementToOtherListKeepsConcatEq!2498 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (h!71628 (t!378920 s!2326)) (t!378920 (t!378920 s!2326)) s!2326))))

(assert (=> b!6432581 (= e!3902272 (findConcatSeparation!2640 lt!2379353 (regTwo!33182 r!7292) (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (Cons!65180 (h!71628 (t!378920 s!2326)) Nil!65180)) (t!378920 (t!378920 s!2326)) s!2326))))

(declare-fun b!6432582 () Bool)

(declare-fun e!3902268 () Bool)

(assert (=> b!6432582 (= e!3902268 (= (++!14403 (_1!36617 (get!22586 lt!2379645)) (_2!36617 (get!22586 lt!2379645))) s!2326))))

(declare-fun b!6432583 () Bool)

(declare-fun res!2644125 () Bool)

(assert (=> b!6432583 (=> (not res!2644125) (not e!3902268))))

(assert (=> b!6432583 (= res!2644125 (matchR!8518 (regTwo!33182 r!7292) (_2!36617 (get!22586 lt!2379645))))))

(declare-fun d!2016591 () Bool)

(assert (=> d!2016591 e!3902269))

(declare-fun res!2644127 () Bool)

(assert (=> d!2016591 (=> res!2644127 e!3902269)))

(assert (=> d!2016591 (= res!2644127 e!3902268)))

(declare-fun res!2644126 () Bool)

(assert (=> d!2016591 (=> (not res!2644126) (not e!3902268))))

(assert (=> d!2016591 (= res!2644126 (isDefined!12929 lt!2379645))))

(assert (=> d!2016591 (= lt!2379645 e!3902271)))

(declare-fun c!1175748 () Bool)

(declare-fun e!3902270 () Bool)

(assert (=> d!2016591 (= c!1175748 e!3902270)))

(declare-fun res!2644129 () Bool)

(assert (=> d!2016591 (=> (not res!2644129) (not e!3902270))))

(assert (=> d!2016591 (= res!2644129 (matchR!8518 lt!2379353 (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180))))))

(assert (=> d!2016591 (validRegex!8071 lt!2379353)))

(assert (=> d!2016591 (= (findConcatSeparation!2640 lt!2379353 (regTwo!33182 r!7292) (++!14403 Nil!65180 (Cons!65180 (h!71628 s!2326) Nil!65180)) (t!378920 s!2326) s!2326) lt!2379645)))

(declare-fun b!6432584 () Bool)

(assert (=> b!6432584 (= e!3902271 e!3902272)))

(declare-fun c!1175747 () Bool)

(assert (=> b!6432584 (= c!1175747 ((_ is Nil!65180) (t!378920 s!2326)))))

(declare-fun b!6432585 () Bool)

(declare-fun res!2644128 () Bool)

(assert (=> b!6432585 (=> (not res!2644128) (not e!3902268))))

(assert (=> b!6432585 (= res!2644128 (matchR!8518 lt!2379353 (_1!36617 (get!22586 lt!2379645))))))

(declare-fun b!6432586 () Bool)

(assert (=> b!6432586 (= e!3902270 (matchR!8518 (regTwo!33182 r!7292) (t!378920 s!2326)))))

(assert (= (and d!2016591 res!2644129) b!6432586))

(assert (= (and d!2016591 c!1175748) b!6432578))

(assert (= (and d!2016591 (not c!1175748)) b!6432584))

(assert (= (and b!6432584 c!1175747) b!6432579))

(assert (= (and b!6432584 (not c!1175747)) b!6432581))

(assert (= (and d!2016591 res!2644126) b!6432585))

(assert (= (and b!6432585 res!2644128) b!6432583))

(assert (= (and b!6432583 res!2644125) b!6432582))

(assert (= (and d!2016591 (not res!2644127)) b!6432580))

(declare-fun m!7226272 () Bool)

(assert (=> d!2016591 m!7226272))

(assert (=> d!2016591 m!7224616))

(declare-fun m!7226274 () Bool)

(assert (=> d!2016591 m!7226274))

(assert (=> d!2016591 m!7223958))

(declare-fun m!7226276 () Bool)

(assert (=> b!6432585 m!7226276))

(declare-fun m!7226278 () Bool)

(assert (=> b!6432585 m!7226278))

(assert (=> b!6432582 m!7226276))

(declare-fun m!7226280 () Bool)

(assert (=> b!6432582 m!7226280))

(assert (=> b!6432583 m!7226276))

(declare-fun m!7226282 () Bool)

(assert (=> b!6432583 m!7226282))

(assert (=> b!6432580 m!7226272))

(assert (=> b!6432581 m!7224616))

(assert (=> b!6432581 m!7226166))

(assert (=> b!6432581 m!7226166))

(assert (=> b!6432581 m!7226168))

(assert (=> b!6432581 m!7224616))

(assert (=> b!6432581 m!7226170))

(assert (=> b!6432581 m!7226166))

(declare-fun m!7226284 () Bool)

(assert (=> b!6432581 m!7226284))

(assert (=> b!6432586 m!7226174))

(assert (=> b!6431112 d!2016591))

(declare-fun d!2016593 () Bool)

(assert (=> d!2016593 (= (nullable!6328 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343))))) (nullableFct!2274 (regOne!33182 (h!71629 (exprs!6219 (h!71630 zl!343))))))))

(declare-fun bs!1618443 () Bool)

(assert (= bs!1618443 d!2016593))

(declare-fun m!7226286 () Bool)

(assert (=> bs!1618443 m!7226286))

(assert (=> b!6430542 d!2016593))

(declare-fun d!2016595 () Bool)

(declare-fun e!3902278 () Bool)

(assert (=> d!2016595 e!3902278))

(declare-fun c!1175750 () Bool)

(assert (=> d!2016595 (= c!1175750 ((_ is EmptyExpr!16335) (derivativeStep!5039 r!7292 (head!13161 s!2326))))))

(declare-fun lt!2379646 () Bool)

(declare-fun e!3902273 () Bool)

(assert (=> d!2016595 (= lt!2379646 e!3902273)))

(declare-fun c!1175751 () Bool)

(assert (=> d!2016595 (= c!1175751 (isEmpty!37350 (tail!12246 s!2326)))))

(assert (=> d!2016595 (validRegex!8071 (derivativeStep!5039 r!7292 (head!13161 s!2326)))))

(assert (=> d!2016595 (= (matchR!8518 (derivativeStep!5039 r!7292 (head!13161 s!2326)) (tail!12246 s!2326)) lt!2379646)))

(declare-fun b!6432587 () Bool)

(declare-fun e!3902277 () Bool)

(assert (=> b!6432587 (= e!3902277 (not (= (head!13161 (tail!12246 s!2326)) (c!1175066 (derivativeStep!5039 r!7292 (head!13161 s!2326))))))))

(declare-fun b!6432588 () Bool)

(assert (=> b!6432588 (= e!3902273 (matchR!8518 (derivativeStep!5039 (derivativeStep!5039 r!7292 (head!13161 s!2326)) (head!13161 (tail!12246 s!2326))) (tail!12246 (tail!12246 s!2326))))))

(declare-fun b!6432589 () Bool)

(declare-fun res!2644131 () Bool)

(declare-fun e!3902276 () Bool)

(assert (=> b!6432589 (=> res!2644131 e!3902276)))

(declare-fun e!3902274 () Bool)

(assert (=> b!6432589 (= res!2644131 e!3902274)))

(declare-fun res!2644135 () Bool)

(assert (=> b!6432589 (=> (not res!2644135) (not e!3902274))))

(assert (=> b!6432589 (= res!2644135 lt!2379646)))

(declare-fun b!6432590 () Bool)

(declare-fun res!2644133 () Bool)

(assert (=> b!6432590 (=> res!2644133 e!3902276)))

(assert (=> b!6432590 (= res!2644133 (not ((_ is ElementMatch!16335) (derivativeStep!5039 r!7292 (head!13161 s!2326)))))))

(declare-fun e!3902275 () Bool)

(assert (=> b!6432590 (= e!3902275 e!3902276)))

(declare-fun b!6432591 () Bool)

(declare-fun e!3902279 () Bool)

(assert (=> b!6432591 (= e!3902276 e!3902279)))

(declare-fun res!2644136 () Bool)

(assert (=> b!6432591 (=> (not res!2644136) (not e!3902279))))

(assert (=> b!6432591 (= res!2644136 (not lt!2379646))))

(declare-fun b!6432592 () Bool)

(declare-fun res!2644134 () Bool)

(assert (=> b!6432592 (=> res!2644134 e!3902277)))

(assert (=> b!6432592 (= res!2644134 (not (isEmpty!37350 (tail!12246 (tail!12246 s!2326)))))))

(declare-fun b!6432593 () Bool)

(assert (=> b!6432593 (= e!3902273 (nullable!6328 (derivativeStep!5039 r!7292 (head!13161 s!2326))))))

(declare-fun b!6432594 () Bool)

(assert (=> b!6432594 (= e!3902278 e!3902275)))

(declare-fun c!1175749 () Bool)

(assert (=> b!6432594 (= c!1175749 ((_ is EmptyLang!16335) (derivativeStep!5039 r!7292 (head!13161 s!2326))))))

(declare-fun b!6432595 () Bool)

(declare-fun call!553407 () Bool)

(assert (=> b!6432595 (= e!3902278 (= lt!2379646 call!553407))))

(declare-fun b!6432596 () Bool)

(assert (=> b!6432596 (= e!3902275 (not lt!2379646))))

(declare-fun b!6432597 () Bool)

(declare-fun res!2644137 () Bool)

(assert (=> b!6432597 (=> (not res!2644137) (not e!3902274))))

(assert (=> b!6432597 (= res!2644137 (isEmpty!37350 (tail!12246 (tail!12246 s!2326))))))

(declare-fun b!6432598 () Bool)

(assert (=> b!6432598 (= e!3902279 e!3902277)))

(declare-fun res!2644130 () Bool)

(assert (=> b!6432598 (=> res!2644130 e!3902277)))

(assert (=> b!6432598 (= res!2644130 call!553407)))

(declare-fun b!6432599 () Bool)

(assert (=> b!6432599 (= e!3902274 (= (head!13161 (tail!12246 s!2326)) (c!1175066 (derivativeStep!5039 r!7292 (head!13161 s!2326)))))))

(declare-fun bm!553402 () Bool)

(assert (=> bm!553402 (= call!553407 (isEmpty!37350 (tail!12246 s!2326)))))

(declare-fun b!6432600 () Bool)

(declare-fun res!2644132 () Bool)

(assert (=> b!6432600 (=> (not res!2644132) (not e!3902274))))

(assert (=> b!6432600 (= res!2644132 (not call!553407))))

(assert (= (and d!2016595 c!1175751) b!6432593))

(assert (= (and d!2016595 (not c!1175751)) b!6432588))

(assert (= (and d!2016595 c!1175750) b!6432595))

(assert (= (and d!2016595 (not c!1175750)) b!6432594))

(assert (= (and b!6432594 c!1175749) b!6432596))

(assert (= (and b!6432594 (not c!1175749)) b!6432590))

(assert (= (and b!6432590 (not res!2644133)) b!6432589))

(assert (= (and b!6432589 res!2644135) b!6432600))

(assert (= (and b!6432600 res!2644132) b!6432597))

(assert (= (and b!6432597 res!2644137) b!6432599))

(assert (= (and b!6432589 (not res!2644131)) b!6432591))

(assert (= (and b!6432591 res!2644136) b!6432598))

(assert (= (and b!6432598 (not res!2644130)) b!6432592))

(assert (= (and b!6432592 (not res!2644134)) b!6432587))

(assert (= (or b!6432595 b!6432600 b!6432598) bm!553402))

(assert (=> d!2016595 m!7224154))

(assert (=> d!2016595 m!7224446))

(assert (=> d!2016595 m!7224450))

(declare-fun m!7226288 () Bool)

(assert (=> d!2016595 m!7226288))

(assert (=> b!6432587 m!7224154))

(assert (=> b!6432587 m!7224942))

(assert (=> b!6432597 m!7224154))

(assert (=> b!6432597 m!7224944))

(assert (=> b!6432597 m!7224944))

(assert (=> b!6432597 m!7224946))

(assert (=> b!6432592 m!7224154))

(assert (=> b!6432592 m!7224944))

(assert (=> b!6432592 m!7224944))

(assert (=> b!6432592 m!7224946))

(assert (=> b!6432599 m!7224154))

(assert (=> b!6432599 m!7224942))

(assert (=> bm!553402 m!7224154))

(assert (=> bm!553402 m!7224446))

(assert (=> b!6432593 m!7224450))

(declare-fun m!7226290 () Bool)

(assert (=> b!6432593 m!7226290))

(assert (=> b!6432588 m!7224154))

(assert (=> b!6432588 m!7224942))

(assert (=> b!6432588 m!7224450))

(assert (=> b!6432588 m!7224942))

(declare-fun m!7226292 () Bool)

(assert (=> b!6432588 m!7226292))

(assert (=> b!6432588 m!7224154))

(assert (=> b!6432588 m!7224944))

(assert (=> b!6432588 m!7226292))

(assert (=> b!6432588 m!7224944))

(declare-fun m!7226294 () Bool)

(assert (=> b!6432588 m!7226294))

(assert (=> b!6430829 d!2016595))

(declare-fun b!6432601 () Bool)

(declare-fun e!3902281 () Regex!16335)

(declare-fun e!3902280 () Regex!16335)

(assert (=> b!6432601 (= e!3902281 e!3902280)))

(declare-fun c!1175753 () Bool)

(assert (=> b!6432601 (= c!1175753 ((_ is ElementMatch!16335) r!7292))))

(declare-fun b!6432602 () Bool)

(assert (=> b!6432602 (= e!3902280 (ite (= (head!13161 s!2326) (c!1175066 r!7292)) EmptyExpr!16335 EmptyLang!16335))))

(declare-fun call!553411 () Regex!16335)

(declare-fun b!6432603 () Bool)

(declare-fun e!3902284 () Regex!16335)

(declare-fun call!553408 () Regex!16335)

(assert (=> b!6432603 (= e!3902284 (Union!16335 (Concat!25180 call!553408 (regTwo!33182 r!7292)) call!553411))))

(declare-fun d!2016597 () Bool)

(declare-fun lt!2379647 () Regex!16335)

(assert (=> d!2016597 (validRegex!8071 lt!2379647)))

(assert (=> d!2016597 (= lt!2379647 e!3902281)))

(declare-fun c!1175755 () Bool)

(assert (=> d!2016597 (= c!1175755 (or ((_ is EmptyExpr!16335) r!7292) ((_ is EmptyLang!16335) r!7292)))))

(assert (=> d!2016597 (validRegex!8071 r!7292)))

(assert (=> d!2016597 (= (derivativeStep!5039 r!7292 (head!13161 s!2326)) lt!2379647)))

(declare-fun b!6432604 () Bool)

(declare-fun e!3902283 () Regex!16335)

(declare-fun call!553410 () Regex!16335)

(declare-fun call!553409 () Regex!16335)

(assert (=> b!6432604 (= e!3902283 (Union!16335 call!553410 call!553409))))

(declare-fun c!1175754 () Bool)

(declare-fun bm!553403 () Bool)

(declare-fun c!1175752 () Bool)

(assert (=> bm!553403 (= call!553409 (derivativeStep!5039 (ite c!1175752 (regTwo!33183 r!7292) (ite c!1175754 (reg!16664 r!7292) (regOne!33182 r!7292))) (head!13161 s!2326)))))

(declare-fun b!6432605 () Bool)

(declare-fun e!3902282 () Regex!16335)

(assert (=> b!6432605 (= e!3902283 e!3902282)))

(assert (=> b!6432605 (= c!1175754 ((_ is Star!16335) r!7292))))

(declare-fun b!6432606 () Bool)

(assert (=> b!6432606 (= e!3902281 EmptyLang!16335)))

(declare-fun b!6432607 () Bool)

(assert (=> b!6432607 (= c!1175752 ((_ is Union!16335) r!7292))))

(assert (=> b!6432607 (= e!3902280 e!3902283)))

(declare-fun bm!553404 () Bool)

(assert (=> bm!553404 (= call!553411 call!553410)))

(declare-fun b!6432608 () Bool)

(declare-fun c!1175756 () Bool)

(assert (=> b!6432608 (= c!1175756 (nullable!6328 (regOne!33182 r!7292)))))

(assert (=> b!6432608 (= e!3902282 e!3902284)))

(declare-fun bm!553405 () Bool)

(assert (=> bm!553405 (= call!553408 call!553409)))

(declare-fun bm!553406 () Bool)

(assert (=> bm!553406 (= call!553410 (derivativeStep!5039 (ite c!1175752 (regOne!33183 r!7292) (ite c!1175756 (regTwo!33182 r!7292) (regOne!33182 r!7292))) (head!13161 s!2326)))))

(declare-fun b!6432609 () Bool)

(assert (=> b!6432609 (= e!3902282 (Concat!25180 call!553408 r!7292))))

(declare-fun b!6432610 () Bool)

(assert (=> b!6432610 (= e!3902284 (Union!16335 (Concat!25180 call!553411 (regTwo!33182 r!7292)) EmptyLang!16335))))

(assert (= (and d!2016597 c!1175755) b!6432606))

(assert (= (and d!2016597 (not c!1175755)) b!6432601))

(assert (= (and b!6432601 c!1175753) b!6432602))

(assert (= (and b!6432601 (not c!1175753)) b!6432607))

(assert (= (and b!6432607 c!1175752) b!6432604))

(assert (= (and b!6432607 (not c!1175752)) b!6432605))

(assert (= (and b!6432605 c!1175754) b!6432609))

(assert (= (and b!6432605 (not c!1175754)) b!6432608))

(assert (= (and b!6432608 c!1175756) b!6432603))

(assert (= (and b!6432608 (not c!1175756)) b!6432610))

(assert (= (or b!6432603 b!6432610) bm!553404))

(assert (= (or b!6432609 b!6432603) bm!553405))

(assert (= (or b!6432604 bm!553405) bm!553403))

(assert (= (or b!6432604 bm!553404) bm!553406))

(declare-fun m!7226296 () Bool)

(assert (=> d!2016597 m!7226296))

(assert (=> d!2016597 m!7223696))

(assert (=> bm!553403 m!7224150))

(declare-fun m!7226298 () Bool)

(assert (=> bm!553403 m!7226298))

(assert (=> b!6432608 m!7225188))

(assert (=> bm!553406 m!7224150))

(declare-fun m!7226300 () Bool)

(assert (=> bm!553406 m!7226300))

(assert (=> b!6430829 d!2016597))

(assert (=> b!6430829 d!2015965))

(assert (=> b!6430829 d!2015973))

(declare-fun d!2016599 () Bool)

(assert (=> d!2016599 (= (isEmpty!37349 (tail!12247 (unfocusZipperList!1756 zl!343))) ((_ is Nil!65181) (tail!12247 (unfocusZipperList!1756 zl!343))))))

(assert (=> b!6430682 d!2016599))

(declare-fun d!2016603 () Bool)

(assert (=> d!2016603 (= (tail!12247 (unfocusZipperList!1756 zl!343)) (t!378921 (unfocusZipperList!1756 zl!343)))))

(assert (=> b!6430682 d!2016603))

(declare-fun b!6432622 () Bool)

(declare-fun e!3902292 () List!65304)

(assert (=> b!6432622 (= e!3902292 (t!378920 (_1!36617 lt!2379368)))))

(declare-fun b!6432623 () Bool)

(assert (=> b!6432623 (= e!3902292 (Cons!65180 (h!71628 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180))) (++!14403 (t!378920 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180))) (t!378920 (_1!36617 lt!2379368)))))))

(declare-fun b!6432624 () Bool)

(declare-fun res!2644140 () Bool)

(declare-fun e!3902291 () Bool)

(assert (=> b!6432624 (=> (not res!2644140) (not e!3902291))))

(declare-fun lt!2379648 () List!65304)

(assert (=> b!6432624 (= res!2644140 (= (size!40394 lt!2379648) (+ (size!40394 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180))) (size!40394 (t!378920 (_1!36617 lt!2379368))))))))

(declare-fun b!6432625 () Bool)

(assert (=> b!6432625 (= e!3902291 (or (not (= (t!378920 (_1!36617 lt!2379368)) Nil!65180)) (= lt!2379648 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)))))))

(declare-fun d!2016605 () Bool)

(assert (=> d!2016605 e!3902291))

(declare-fun res!2644139 () Bool)

(assert (=> d!2016605 (=> (not res!2644139) (not e!3902291))))

(assert (=> d!2016605 (= res!2644139 (= (content!12384 lt!2379648) ((_ map or) (content!12384 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180))) (content!12384 (t!378920 (_1!36617 lt!2379368))))))))

(assert (=> d!2016605 (= lt!2379648 e!3902292)))

(declare-fun c!1175762 () Bool)

(assert (=> d!2016605 (= c!1175762 ((_ is Nil!65180) (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180))))))

(assert (=> d!2016605 (= (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)) (t!378920 (_1!36617 lt!2379368))) lt!2379648)))

(assert (= (and d!2016605 c!1175762) b!6432622))

(assert (= (and d!2016605 (not c!1175762)) b!6432623))

(assert (= (and d!2016605 res!2644139) b!6432624))

(assert (= (and b!6432624 res!2644140) b!6432625))

(declare-fun m!7226304 () Bool)

(assert (=> b!6432623 m!7226304))

(declare-fun m!7226306 () Bool)

(assert (=> b!6432624 m!7226306))

(assert (=> b!6432624 m!7224778))

(declare-fun m!7226308 () Bool)

(assert (=> b!6432624 m!7226308))

(assert (=> b!6432624 m!7225224))

(declare-fun m!7226310 () Bool)

(assert (=> d!2016605 m!7226310))

(assert (=> d!2016605 m!7224778))

(declare-fun m!7226312 () Bool)

(assert (=> d!2016605 m!7226312))

(assert (=> d!2016605 m!7225228))

(assert (=> b!6431125 d!2016605))

(declare-fun b!6432626 () Bool)

(declare-fun e!3902294 () List!65304)

(assert (=> b!6432626 (= e!3902294 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180))))

(declare-fun b!6432627 () Bool)

(assert (=> b!6432627 (= e!3902294 (Cons!65180 (h!71628 Nil!65180) (++!14403 (t!378920 Nil!65180) (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180))))))

(declare-fun b!6432628 () Bool)

(declare-fun res!2644142 () Bool)

(declare-fun e!3902293 () Bool)

(assert (=> b!6432628 (=> (not res!2644142) (not e!3902293))))

(declare-fun lt!2379649 () List!65304)

(assert (=> b!6432628 (= res!2644142 (= (size!40394 lt!2379649) (+ (size!40394 Nil!65180) (size!40394 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)))))))

(declare-fun b!6432629 () Bool)

(assert (=> b!6432629 (= e!3902293 (or (not (= (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180) Nil!65180)) (= lt!2379649 Nil!65180)))))

(declare-fun d!2016607 () Bool)

(assert (=> d!2016607 e!3902293))

(declare-fun res!2644141 () Bool)

(assert (=> d!2016607 (=> (not res!2644141) (not e!3902293))))

(assert (=> d!2016607 (= res!2644141 (= (content!12384 lt!2379649) ((_ map or) (content!12384 Nil!65180) (content!12384 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)))))))

(assert (=> d!2016607 (= lt!2379649 e!3902294)))

(declare-fun c!1175763 () Bool)

(assert (=> d!2016607 (= c!1175763 ((_ is Nil!65180) Nil!65180))))

(assert (=> d!2016607 (= (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)) lt!2379649)))

(assert (= (and d!2016607 c!1175763) b!6432626))

(assert (= (and d!2016607 (not c!1175763)) b!6432627))

(assert (= (and d!2016607 res!2644141) b!6432628))

(assert (= (and b!6432628 res!2644142) b!6432629))

(declare-fun m!7226320 () Bool)

(assert (=> b!6432627 m!7226320))

(declare-fun m!7226322 () Bool)

(assert (=> b!6432628 m!7226322))

(assert (=> b!6432628 m!7226140))

(declare-fun m!7226326 () Bool)

(assert (=> b!6432628 m!7226326))

(declare-fun m!7226328 () Bool)

(assert (=> d!2016607 m!7226328))

(assert (=> d!2016607 m!7226146))

(declare-fun m!7226330 () Bool)

(assert (=> d!2016607 m!7226330))

(assert (=> b!6431125 d!2016607))

(declare-fun d!2016609 () Bool)

(assert (=> d!2016609 (= (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)) (t!378920 (_1!36617 lt!2379368))) (_1!36617 lt!2379368))))

(declare-fun lt!2379650 () Unit!158671)

(assert (=> d!2016609 (= lt!2379650 (choose!47835 Nil!65180 (h!71628 (_1!36617 lt!2379368)) (t!378920 (_1!36617 lt!2379368)) (_1!36617 lt!2379368)))))

(assert (=> d!2016609 (= (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) (t!378920 (_1!36617 lt!2379368)))) (_1!36617 lt!2379368))))

(assert (=> d!2016609 (= (lemmaMoveElementToOtherListKeepsConcatEq!2498 Nil!65180 (h!71628 (_1!36617 lt!2379368)) (t!378920 (_1!36617 lt!2379368)) (_1!36617 lt!2379368)) lt!2379650)))

(declare-fun bs!1618456 () Bool)

(assert (= bs!1618456 d!2016609))

(assert (=> bs!1618456 m!7224778))

(assert (=> bs!1618456 m!7224778))

(assert (=> bs!1618456 m!7224780))

(declare-fun m!7226338 () Bool)

(assert (=> bs!1618456 m!7226338))

(declare-fun m!7226340 () Bool)

(assert (=> bs!1618456 m!7226340))

(assert (=> b!6431125 d!2016609))

(declare-fun b!6432630 () Bool)

(declare-fun e!3902298 () Option!16226)

(assert (=> b!6432630 (= e!3902298 (Some!16225 (tuple2!66629 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)) (t!378920 (_1!36617 lt!2379368)))))))

(declare-fun b!6432631 () Bool)

(declare-fun e!3902299 () Option!16226)

(assert (=> b!6432631 (= e!3902299 None!16225)))

(declare-fun b!6432632 () Bool)

(declare-fun e!3902296 () Bool)

(declare-fun lt!2379653 () Option!16226)

(assert (=> b!6432632 (= e!3902296 (not (isDefined!12929 lt!2379653)))))

(declare-fun b!6432633 () Bool)

(declare-fun lt!2379652 () Unit!158671)

(declare-fun lt!2379651 () Unit!158671)

(assert (=> b!6432633 (= lt!2379652 lt!2379651)))

(assert (=> b!6432633 (= (++!14403 (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)) (Cons!65180 (h!71628 (t!378920 (_1!36617 lt!2379368))) Nil!65180)) (t!378920 (t!378920 (_1!36617 lt!2379368)))) (_1!36617 lt!2379368))))

(assert (=> b!6432633 (= lt!2379651 (lemmaMoveElementToOtherListKeepsConcatEq!2498 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)) (h!71628 (t!378920 (_1!36617 lt!2379368))) (t!378920 (t!378920 (_1!36617 lt!2379368))) (_1!36617 lt!2379368)))))

(assert (=> b!6432633 (= e!3902299 (findConcatSeparation!2640 (reg!16664 (regOne!33182 r!7292)) lt!2379353 (++!14403 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)) (Cons!65180 (h!71628 (t!378920 (_1!36617 lt!2379368))) Nil!65180)) (t!378920 (t!378920 (_1!36617 lt!2379368))) (_1!36617 lt!2379368)))))

(declare-fun b!6432634 () Bool)

(declare-fun e!3902295 () Bool)

(assert (=> b!6432634 (= e!3902295 (= (++!14403 (_1!36617 (get!22586 lt!2379653)) (_2!36617 (get!22586 lt!2379653))) (_1!36617 lt!2379368)))))

(declare-fun b!6432635 () Bool)

(declare-fun res!2644143 () Bool)

(assert (=> b!6432635 (=> (not res!2644143) (not e!3902295))))

(assert (=> b!6432635 (= res!2644143 (matchR!8518 lt!2379353 (_2!36617 (get!22586 lt!2379653))))))

(declare-fun d!2016619 () Bool)

(assert (=> d!2016619 e!3902296))

(declare-fun res!2644145 () Bool)

(assert (=> d!2016619 (=> res!2644145 e!3902296)))

(assert (=> d!2016619 (= res!2644145 e!3902295)))

(declare-fun res!2644144 () Bool)

(assert (=> d!2016619 (=> (not res!2644144) (not e!3902295))))

(assert (=> d!2016619 (= res!2644144 (isDefined!12929 lt!2379653))))

(assert (=> d!2016619 (= lt!2379653 e!3902298)))

(declare-fun c!1175765 () Bool)

(declare-fun e!3902297 () Bool)

(assert (=> d!2016619 (= c!1175765 e!3902297)))

(declare-fun res!2644147 () Bool)

(assert (=> d!2016619 (=> (not res!2644147) (not e!3902297))))

(assert (=> d!2016619 (= res!2644147 (matchR!8518 (reg!16664 (regOne!33182 r!7292)) (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180))))))

(assert (=> d!2016619 (validRegex!8071 (reg!16664 (regOne!33182 r!7292)))))

(assert (=> d!2016619 (= (findConcatSeparation!2640 (reg!16664 (regOne!33182 r!7292)) lt!2379353 (++!14403 Nil!65180 (Cons!65180 (h!71628 (_1!36617 lt!2379368)) Nil!65180)) (t!378920 (_1!36617 lt!2379368)) (_1!36617 lt!2379368)) lt!2379653)))

(declare-fun b!6432636 () Bool)

(assert (=> b!6432636 (= e!3902298 e!3902299)))

(declare-fun c!1175764 () Bool)

(assert (=> b!6432636 (= c!1175764 ((_ is Nil!65180) (t!378920 (_1!36617 lt!2379368))))))

(declare-fun b!6432637 () Bool)

(declare-fun res!2644146 () Bool)

(assert (=> b!6432637 (=> (not res!2644146) (not e!3902295))))

(assert (=> b!6432637 (= res!2644146 (matchR!8518 (reg!16664 (regOne!33182 r!7292)) (_1!36617 (get!22586 lt!2379653))))))

(declare-fun b!6432638 () Bool)

(assert (=> b!6432638 (= e!3902297 (matchR!8518 lt!2379353 (t!378920 (_1!36617 lt!2379368))))))

(assert (= (and d!2016619 res!2644147) b!6432638))

(assert (= (and d!2016619 c!1175765) b!6432630))

(assert (= (and d!2016619 (not c!1175765)) b!6432636))

(assert (= (and b!6432636 c!1175764) b!6432631))

(assert (= (and b!6432636 (not c!1175764)) b!6432633))

(assert (= (and d!2016619 res!2644144) b!6432637))

(assert (= (and b!6432637 res!2644146) b!6432635))

(assert (= (and b!6432635 res!2644143) b!6432634))

(assert (= (and d!2016619 (not res!2644145)) b!6432632))

(declare-fun m!7226342 () Bool)

(assert (=> d!2016619 m!7226342))

(assert (=> d!2016619 m!7224778))

(declare-fun m!7226344 () Bool)

(assert (=> d!2016619 m!7226344))

(assert (=> d!2016619 m!7224678))

(declare-fun m!7226346 () Bool)

(assert (=> b!6432637 m!7226346))

(declare-fun m!7226348 () Bool)

(assert (=> b!6432637 m!7226348))

(assert (=> b!6432634 m!7226346))

(declare-fun m!7226350 () Bool)

(assert (=> b!6432634 m!7226350))

(assert (=> b!6432635 m!7226346))

(declare-fun m!7226352 () Bool)

(assert (=> b!6432635 m!7226352))

(assert (=> b!6432632 m!7226342))

(assert (=> b!6432633 m!7224778))

(declare-fun m!7226354 () Bool)

(assert (=> b!6432633 m!7226354))

(assert (=> b!6432633 m!7226354))

(declare-fun m!7226356 () Bool)

(assert (=> b!6432633 m!7226356))

(assert (=> b!6432633 m!7224778))

(declare-fun m!7226358 () Bool)

(assert (=> b!6432633 m!7226358))

(assert (=> b!6432633 m!7226354))

(declare-fun m!7226360 () Bool)

(assert (=> b!6432633 m!7226360))

(declare-fun m!7226362 () Bool)

(assert (=> b!6432638 m!7226362))

(assert (=> b!6431125 d!2016619))

(declare-fun d!2016621 () Bool)

(assert (=> d!2016621 (= (isEmpty!37350 (_1!36617 lt!2379342)) ((_ is Nil!65180) (_1!36617 lt!2379342)))))

(assert (=> d!2015853 d!2016621))

(assert (=> d!2015853 d!2015959))

(declare-fun d!2016623 () Bool)

(declare-fun lt!2379654 () Int)

(assert (=> d!2016623 (>= lt!2379654 0)))

(declare-fun e!3902300 () Int)

(assert (=> d!2016623 (= lt!2379654 e!3902300)))

(declare-fun c!1175766 () Bool)

(assert (=> d!2016623 (= c!1175766 ((_ is Nil!65180) lt!2379543))))

(assert (=> d!2016623 (= (size!40394 lt!2379543) lt!2379654)))

(declare-fun b!6432639 () Bool)

(assert (=> b!6432639 (= e!3902300 0)))

(declare-fun b!6432640 () Bool)

(assert (=> b!6432640 (= e!3902300 (+ 1 (size!40394 (t!378920 lt!2379543))))))

(assert (= (and d!2016623 c!1175766) b!6432639))

(assert (= (and d!2016623 (not c!1175766)) b!6432640))

(declare-fun m!7226364 () Bool)

(assert (=> b!6432640 m!7226364))

(assert (=> b!6431143 d!2016623))

(assert (=> b!6431143 d!2016385))

(assert (=> b!6431143 d!2016571))

(assert (=> d!2015613 d!2016053))

(declare-fun d!2016625 () Bool)

(assert (=> d!2016625 (= (Exists!3405 lambda!355796) (choose!47830 lambda!355796))))

(declare-fun bs!1618472 () Bool)

(assert (= bs!1618472 d!2016625))

(declare-fun m!7226366 () Bool)

(assert (=> bs!1618472 m!7226366))

(assert (=> d!2015829 d!2016625))

(declare-fun d!2016627 () Bool)

(assert (=> d!2016627 (= (Exists!3405 lambda!355797) (choose!47830 lambda!355797))))

(declare-fun bs!1618473 () Bool)

(assert (= bs!1618473 d!2016627))

(declare-fun m!7226368 () Bool)

(assert (=> bs!1618473 m!7226368))

(assert (=> d!2015829 d!2016627))

(declare-fun bs!1618478 () Bool)

(declare-fun d!2016629 () Bool)

(assert (= bs!1618478 (and d!2016629 b!6432224)))

(declare-fun lambda!355892 () Int)

(assert (=> bs!1618478 (not (= lambda!355892 lambda!355875))))

(declare-fun bs!1618480 () Bool)

(assert (= bs!1618480 (and d!2016629 b!6431962)))

(assert (=> bs!1618480 (not (= lambda!355892 lambda!355855))))

(declare-fun bs!1618482 () Bool)

(assert (= bs!1618482 (and d!2016629 b!6431977)))

(assert (=> bs!1618482 (not (= lambda!355892 lambda!355860))))

(declare-fun bs!1618484 () Bool)

(assert (= bs!1618484 (and d!2016629 b!6430115)))

(assert (=> bs!1618484 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355892 lambda!355717))))

(declare-fun bs!1618485 () Bool)

(assert (= bs!1618485 (and d!2016629 b!6431861)))

(assert (=> bs!1618485 (not (= lambda!355892 lambda!355850))))

(declare-fun bs!1618487 () Bool)

(assert (= bs!1618487 (and d!2016629 d!2016163)))

(assert (=> bs!1618487 (= lambda!355892 lambda!355844)))

(declare-fun bs!1618489 () Bool)

(assert (= bs!1618489 (and d!2016629 b!6430094)))

(assert (=> bs!1618489 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355892 lambda!355719))))

(assert (=> bs!1618489 (not (= lambda!355892 lambda!355720))))

(declare-fun bs!1618491 () Bool)

(assert (= bs!1618491 (and d!2016629 d!2015881)))

(assert (=> bs!1618491 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355892 lambda!355802))))

(declare-fun bs!1618492 () Bool)

(assert (= bs!1618492 (and d!2016629 d!2015991)))

(assert (=> bs!1618492 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355892 lambda!355828))))

(declare-fun bs!1618493 () Bool)

(assert (= bs!1618493 (and d!2016629 d!2015957)))

(assert (=> bs!1618493 (not (= lambda!355892 lambda!355823))))

(declare-fun bs!1618494 () Bool)

(assert (= bs!1618494 (and d!2016629 d!2015895)))

(assert (=> bs!1618494 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355892 lambda!355811))))

(declare-fun bs!1618495 () Bool)

(assert (= bs!1618495 (and d!2016629 b!6430859)))

(assert (=> bs!1618495 (not (= lambda!355892 lambda!355779))))

(declare-fun bs!1618496 () Bool)

(assert (= bs!1618496 (and d!2016629 b!6432054)))

(assert (=> bs!1618496 (not (= lambda!355892 lambda!355864))))

(declare-fun bs!1618497 () Bool)

(assert (= bs!1618497 (and d!2016629 d!2016395)))

(assert (=> bs!1618497 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355892 lambda!355873))))

(declare-fun bs!1618498 () Bool)

(assert (= bs!1618498 (and d!2016629 d!2015887)))

(assert (=> bs!1618498 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355892 lambda!355804))))

(declare-fun bs!1618499 () Bool)

(assert (= bs!1618499 (and d!2016629 b!6432048)))

(assert (=> bs!1618499 (not (= lambda!355892 lambda!355863))))

(declare-fun bs!1618500 () Bool)

(assert (= bs!1618500 (and d!2016629 d!2015879)))

(assert (=> bs!1618500 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355892 lambda!355801))))

(declare-fun bs!1618501 () Bool)

(assert (= bs!1618501 (and d!2016629 d!2016021)))

(assert (=> bs!1618501 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355892 lambda!355832))))

(declare-fun bs!1618502 () Bool)

(assert (= bs!1618502 (and d!2016629 d!2015889)))

(assert (=> bs!1618502 (not (= lambda!355892 lambda!355806))))

(assert (=> bs!1618491 (not (= lambda!355892 lambda!355803))))

(declare-fun bs!1618503 () Bool)

(assert (= bs!1618503 (and d!2016629 b!6430810)))

(assert (=> bs!1618503 (not (= lambda!355892 lambda!355772))))

(declare-fun bs!1618504 () Bool)

(assert (= bs!1618504 (and d!2016629 b!6431148)))

(assert (=> bs!1618504 (not (= lambda!355892 lambda!355813))))

(assert (=> bs!1618489 (not (= lambda!355892 lambda!355721))))

(declare-fun bs!1618505 () Bool)

(assert (= bs!1618505 (and d!2016629 d!2015793)))

(assert (=> bs!1618505 (= lambda!355892 lambda!355786)))

(declare-fun bs!1618506 () Bool)

(assert (= bs!1618506 (and d!2016629 b!6431983)))

(assert (=> bs!1618506 (not (= lambda!355892 lambda!355862))))

(declare-fun bs!1618507 () Bool)

(assert (= bs!1618507 (and d!2016629 b!6431953)))

(assert (=> bs!1618507 (not (= lambda!355892 lambda!355852))))

(declare-fun bs!1618508 () Bool)

(assert (= bs!1618508 (and d!2016629 b!6431154)))

(assert (=> bs!1618508 (not (= lambda!355892 lambda!355814))))

(declare-fun bs!1618509 () Bool)

(assert (= bs!1618509 (and d!2016629 b!6432218)))

(assert (=> bs!1618509 (not (= lambda!355892 lambda!355874))))

(declare-fun bs!1618510 () Bool)

(assert (= bs!1618510 (and d!2016629 b!6430128)))

(assert (=> bs!1618510 (not (= lambda!355892 lambda!355715))))

(declare-fun bs!1618511 () Bool)

(assert (= bs!1618511 (and d!2016629 b!6431855)))

(assert (=> bs!1618511 (not (= lambda!355892 lambda!355849))))

(assert (=> bs!1618492 (not (= lambda!355892 lambda!355829))))

(declare-fun bs!1618512 () Bool)

(assert (= bs!1618512 (and d!2016629 b!6431968)))

(assert (=> bs!1618512 (not (= lambda!355892 lambda!355859))))

(declare-fun bs!1618513 () Bool)

(assert (= bs!1618513 (and d!2016629 b!6430816)))

(assert (=> bs!1618513 (not (= lambda!355892 lambda!355773))))

(assert (=> bs!1618494 (not (= lambda!355892 lambda!355812))))

(declare-fun bs!1618514 () Bool)

(assert (= bs!1618514 (and d!2016629 b!6430865)))

(assert (=> bs!1618514 (not (= lambda!355892 lambda!355780))))

(assert (=> bs!1618502 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355892 lambda!355805))))

(assert (=> bs!1618493 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) (Star!16335 (reg!16664 (regOne!33182 r!7292))))) (= lambda!355892 lambda!355822))))

(assert (=> bs!1618484 (not (= lambda!355892 lambda!355718))))

(assert (=> bs!1618510 (= lambda!355892 lambda!355714)))

(declare-fun bs!1618515 () Bool)

(assert (= bs!1618515 (and d!2016629 b!6431947)))

(assert (=> bs!1618515 (not (= lambda!355892 lambda!355851))))

(declare-fun bs!1618516 () Bool)

(assert (= bs!1618516 (and d!2016629 d!2015829)))

(assert (=> bs!1618516 (= lambda!355892 lambda!355796)))

(assert (=> bs!1618516 (not (= lambda!355892 lambda!355797))))

(assert (=> d!2016629 true))

(assert (=> d!2016629 true))

(assert (=> d!2016629 true))

(declare-fun lambda!355894 () Int)

(assert (=> bs!1618478 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (regOne!33182 (regOne!33183 lt!2379353))) (= (regTwo!33182 r!7292) (regTwo!33182 (regOne!33183 lt!2379353)))) (= lambda!355894 lambda!355875))))

(assert (=> bs!1618480 (not (= lambda!355894 lambda!355855))))

(assert (=> bs!1618482 (not (= lambda!355894 lambda!355860))))

(assert (=> bs!1618484 (not (= lambda!355894 lambda!355717))))

(assert (=> bs!1618485 (= (and (= (regOne!33182 r!7292) (regOne!33182 (regTwo!33183 r!7292))) (= (regTwo!33182 r!7292) (regTwo!33182 (regTwo!33183 r!7292)))) (= lambda!355894 lambda!355850))))

(assert (=> bs!1618487 (not (= lambda!355894 lambda!355844))))

(assert (=> bs!1618489 (not (= lambda!355894 lambda!355719))))

(assert (=> bs!1618489 (not (= lambda!355894 lambda!355720))))

(assert (=> bs!1618491 (not (= lambda!355894 lambda!355802))))

(assert (=> bs!1618492 (not (= lambda!355894 lambda!355828))))

(assert (=> bs!1618493 (not (= lambda!355894 lambda!355823))))

(assert (=> bs!1618494 (not (= lambda!355894 lambda!355811))))

(assert (=> bs!1618495 (not (= lambda!355894 lambda!355779))))

(assert (=> bs!1618496 (= (and (= (regOne!33182 r!7292) (regOne!33182 (regTwo!33183 lt!2379346))) (= (regTwo!33182 r!7292) (regTwo!33182 (regTwo!33183 lt!2379346)))) (= lambda!355894 lambda!355864))))

(assert (=> bs!1618497 (not (= lambda!355894 lambda!355873))))

(assert (=> bs!1618498 (not (= lambda!355894 lambda!355804))))

(declare-fun bs!1618518 () Bool)

(assert (= bs!1618518 d!2016629))

(assert (=> bs!1618518 (not (= lambda!355894 lambda!355892))))

(assert (=> bs!1618499 (not (= lambda!355894 lambda!355863))))

(assert (=> bs!1618500 (not (= lambda!355894 lambda!355801))))

(assert (=> bs!1618501 (not (= lambda!355894 lambda!355832))))

(assert (=> bs!1618502 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355894 lambda!355806))))

(assert (=> bs!1618491 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355894 lambda!355803))))

(assert (=> bs!1618503 (not (= lambda!355894 lambda!355772))))

(assert (=> bs!1618504 (not (= lambda!355894 lambda!355813))))

(assert (=> bs!1618489 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (reg!16664 (regOne!33182 r!7292))) (= (regTwo!33182 r!7292) lt!2379353)) (= lambda!355894 lambda!355721))))

(assert (=> bs!1618505 (not (= lambda!355894 lambda!355786))))

(assert (=> bs!1618506 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (regOne!33182 (regTwo!33183 lt!2379353))) (= (regTwo!33182 r!7292) (regTwo!33182 (regTwo!33183 lt!2379353)))) (= lambda!355894 lambda!355862))))

(assert (=> bs!1618507 (= (and (= (regOne!33182 r!7292) (regOne!33182 (regOne!33183 lt!2379346))) (= (regTwo!33182 r!7292) (regTwo!33182 (regOne!33183 lt!2379346)))) (= lambda!355894 lambda!355852))))

(assert (=> bs!1618508 (= (and (= s!2326 (_1!36617 lt!2379368)) (= (regOne!33182 r!7292) (regOne!33182 lt!2379353)) (= (regTwo!33182 r!7292) (regTwo!33182 lt!2379353))) (= lambda!355894 lambda!355814))))

(assert (=> bs!1618509 (not (= lambda!355894 lambda!355874))))

(assert (=> bs!1618510 (= lambda!355894 lambda!355715)))

(assert (=> bs!1618511 (not (= lambda!355894 lambda!355849))))

(assert (=> bs!1618492 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355894 lambda!355829))))

(assert (=> bs!1618512 (= (and (= (regOne!33182 r!7292) (regOne!33182 (regOne!33183 r!7292))) (= (regTwo!33182 r!7292) (regTwo!33182 (regOne!33183 r!7292)))) (= lambda!355894 lambda!355859))))

(assert (=> bs!1618513 (= lambda!355894 lambda!355773)))

(assert (=> bs!1618494 (not (= lambda!355894 lambda!355812))))

(assert (=> bs!1618514 (= (and (= (regOne!33182 r!7292) (regOne!33182 lt!2379346)) (= (regTwo!33182 r!7292) (regTwo!33182 lt!2379346))) (= lambda!355894 lambda!355780))))

(assert (=> bs!1618502 (not (= lambda!355894 lambda!355805))))

(assert (=> bs!1618493 (not (= lambda!355894 lambda!355822))))

(assert (=> bs!1618484 (= (= (regOne!33182 r!7292) lt!2379353) (= lambda!355894 lambda!355718))))

(assert (=> bs!1618510 (not (= lambda!355894 lambda!355714))))

(assert (=> bs!1618515 (not (= lambda!355894 lambda!355851))))

(assert (=> bs!1618516 (not (= lambda!355894 lambda!355796))))

(assert (=> bs!1618516 (= lambda!355894 lambda!355797)))

(assert (=> d!2016629 true))

(assert (=> d!2016629 true))

(assert (=> d!2016629 true))

(assert (=> d!2016629 (= (Exists!3405 lambda!355892) (Exists!3405 lambda!355894))))

(assert (=> d!2016629 true))

(declare-fun _$90!2297 () Unit!158671)

(assert (=> d!2016629 (= (choose!47832 (regOne!33182 r!7292) (regTwo!33182 r!7292) s!2326) _$90!2297)))

(declare-fun m!7226396 () Bool)

(assert (=> bs!1618518 m!7226396))

(declare-fun m!7226398 () Bool)

(assert (=> bs!1618518 m!7226398))

(assert (=> d!2015829 d!2016629))

(assert (=> d!2015829 d!2016093))

(assert (=> b!6430413 d!2016191))

(assert (=> b!6430413 d!2016193))

(declare-fun b!6432653 () Bool)

(declare-fun e!3902308 () List!65304)

(assert (=> b!6432653 (= e!3902308 (_2!36617 (get!22586 lt!2379520)))))

(declare-fun b!6432654 () Bool)

(assert (=> b!6432654 (= e!3902308 (Cons!65180 (h!71628 (_1!36617 (get!22586 lt!2379520))) (++!14403 (t!378920 (_1!36617 (get!22586 lt!2379520))) (_2!36617 (get!22586 lt!2379520)))))))

(declare-fun b!6432655 () Bool)

(declare-fun res!2644149 () Bool)

(declare-fun e!3902307 () Bool)

(assert (=> b!6432655 (=> (not res!2644149) (not e!3902307))))

(declare-fun lt!2379657 () List!65304)

(assert (=> b!6432655 (= res!2644149 (= (size!40394 lt!2379657) (+ (size!40394 (_1!36617 (get!22586 lt!2379520))) (size!40394 (_2!36617 (get!22586 lt!2379520))))))))

(declare-fun b!6432656 () Bool)

(assert (=> b!6432656 (= e!3902307 (or (not (= (_2!36617 (get!22586 lt!2379520)) Nil!65180)) (= lt!2379657 (_1!36617 (get!22586 lt!2379520)))))))

(declare-fun d!2016649 () Bool)

(assert (=> d!2016649 e!3902307))

(declare-fun res!2644148 () Bool)

(assert (=> d!2016649 (=> (not res!2644148) (not e!3902307))))

(assert (=> d!2016649 (= res!2644148 (= (content!12384 lt!2379657) ((_ map or) (content!12384 (_1!36617 (get!22586 lt!2379520))) (content!12384 (_2!36617 (get!22586 lt!2379520))))))))

(assert (=> d!2016649 (= lt!2379657 e!3902308)))

(declare-fun c!1175775 () Bool)

(assert (=> d!2016649 (= c!1175775 ((_ is Nil!65180) (_1!36617 (get!22586 lt!2379520))))))

(assert (=> d!2016649 (= (++!14403 (_1!36617 (get!22586 lt!2379520)) (_2!36617 (get!22586 lt!2379520))) lt!2379657)))

(assert (= (and d!2016649 c!1175775) b!6432653))

(assert (= (and d!2016649 (not c!1175775)) b!6432654))

(assert (= (and d!2016649 res!2644148) b!6432655))

(assert (= (and b!6432655 res!2644149) b!6432656))

(declare-fun m!7226402 () Bool)

(assert (=> b!6432654 m!7226402))

(declare-fun m!7226404 () Bool)

(assert (=> b!6432655 m!7226404))

(declare-fun m!7226406 () Bool)

(assert (=> b!6432655 m!7226406))

(declare-fun m!7226408 () Bool)

(assert (=> b!6432655 m!7226408))

(declare-fun m!7226410 () Bool)

(assert (=> d!2016649 m!7226410))

(declare-fun m!7226412 () Bool)

(assert (=> d!2016649 m!7226412))

(declare-fun m!7226414 () Bool)

(assert (=> d!2016649 m!7226414))

(assert (=> b!6430940 d!2016649))

(assert (=> b!6430940 d!2015983))

(assert (=> b!6431052 d!2016341))

(assert (=> b!6431052 d!2016319))

(declare-fun d!2016653 () Bool)

(assert (=> d!2016653 (= (head!13162 (exprs!6219 (h!71630 zl!343))) (h!71629 (exprs!6219 (h!71630 zl!343))))))

(assert (=> b!6431182 d!2016653))

(declare-fun d!2016655 () Bool)

(declare-fun c!1175781 () Bool)

(assert (=> d!2016655 (= c!1175781 (isEmpty!37350 (tail!12246 s!2326)))))

(declare-fun e!3902315 () Bool)

(assert (=> d!2016655 (= (matchZipper!2347 (derivationStepZipper!2301 lt!2379348 (head!13161 s!2326)) (tail!12246 s!2326)) e!3902315)))

(declare-fun b!6432668 () Bool)

(assert (=> b!6432668 (= e!3902315 (nullableZipper!2100 (derivationStepZipper!2301 lt!2379348 (head!13161 s!2326))))))

(declare-fun b!6432669 () Bool)

(assert (=> b!6432669 (= e!3902315 (matchZipper!2347 (derivationStepZipper!2301 (derivationStepZipper!2301 lt!2379348 (head!13161 s!2326)) (head!13161 (tail!12246 s!2326))) (tail!12246 (tail!12246 s!2326))))))

(assert (= (and d!2016655 c!1175781) b!6432668))

(assert (= (and d!2016655 (not c!1175781)) b!6432669))

(assert (=> d!2016655 m!7224154))

(assert (=> d!2016655 m!7224446))

(assert (=> b!6432668 m!7224152))

(declare-fun m!7226424 () Bool)

(assert (=> b!6432668 m!7226424))

(assert (=> b!6432669 m!7224154))

(assert (=> b!6432669 m!7224942))

(assert (=> b!6432669 m!7224152))

(assert (=> b!6432669 m!7224942))

(declare-fun m!7226426 () Bool)

(assert (=> b!6432669 m!7226426))

(assert (=> b!6432669 m!7224154))

(assert (=> b!6432669 m!7224944))

(assert (=> b!6432669 m!7226426))

(assert (=> b!6432669 m!7224944))

(declare-fun m!7226430 () Bool)

(assert (=> b!6432669 m!7226430))

(assert (=> b!6430568 d!2016655))

(declare-fun bs!1618526 () Bool)

(declare-fun d!2016659 () Bool)

(assert (= bs!1618526 (and d!2016659 d!2016141)))

(declare-fun lambda!355899 () Int)

(assert (=> bs!1618526 (= (= (head!13161 s!2326) (head!13161 (t!378920 s!2326))) (= lambda!355899 lambda!355843))))

(declare-fun bs!1618527 () Bool)

(assert (= bs!1618527 (and d!2016659 d!2016073)))

(assert (=> bs!1618527 (= (= (head!13161 s!2326) (head!13161 (t!378920 s!2326))) (= lambda!355899 lambda!355841))))

(declare-fun bs!1618528 () Bool)

(assert (= bs!1618528 (and d!2016659 d!2015865)))

(assert (=> bs!1618528 (= (= (head!13161 s!2326) (h!71628 s!2326)) (= lambda!355899 lambda!355800))))

(declare-fun bs!1618529 () Bool)

(assert (= bs!1618529 (and d!2016659 b!6430098)))

(assert (=> bs!1618529 (= (= (head!13161 s!2326) (h!71628 s!2326)) (= lambda!355899 lambda!355716))))

(declare-fun bs!1618530 () Bool)

(assert (= bs!1618530 (and d!2016659 d!2016461)))

(assert (=> bs!1618530 (= (= (head!13161 s!2326) (head!13161 (t!378920 s!2326))) (= lambda!355899 lambda!355878))))

(declare-fun bs!1618531 () Bool)

(assert (= bs!1618531 (and d!2016659 d!2016173)))

(assert (=> bs!1618531 (= (= (head!13161 s!2326) (head!13161 (t!378920 s!2326))) (= lambda!355899 lambda!355845))))

(assert (=> d!2016659 true))

(assert (=> d!2016659 (= (derivationStepZipper!2301 lt!2379348 (head!13161 s!2326)) (flatMap!1840 lt!2379348 lambda!355899))))

(declare-fun bs!1618532 () Bool)

(assert (= bs!1618532 d!2016659))

(declare-fun m!7226432 () Bool)

(assert (=> bs!1618532 m!7226432))

(assert (=> b!6430568 d!2016659))

(assert (=> b!6430568 d!2015965))

(assert (=> b!6430568 d!2015973))

(declare-fun d!2016661 () Bool)

(assert (=> d!2016661 (= (nullable!6328 (h!71629 (exprs!6219 lt!2379362))) (nullableFct!2274 (h!71629 (exprs!6219 lt!2379362))))))

(declare-fun bs!1618533 () Bool)

(assert (= bs!1618533 d!2016661))

(declare-fun m!7226434 () Bool)

(assert (=> bs!1618533 m!7226434))

(assert (=> b!6431195 d!2016661))

(assert (=> b!6430423 d!2015999))

(declare-fun call!553424 () (InoxSet Context!11438))

(declare-fun e!3902316 () (InoxSet Context!11438))

(declare-fun b!6432670 () Bool)

(assert (=> b!6432670 (= e!3902316 ((_ map or) call!553424 (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343))))))) (h!71628 s!2326))))))

(declare-fun d!2016663 () Bool)

(declare-fun c!1175783 () Bool)

(declare-fun e!3902317 () Bool)

(assert (=> d!2016663 (= c!1175783 e!3902317)))

(declare-fun res!2644151 () Bool)

(assert (=> d!2016663 (=> (not res!2644151) (not e!3902317))))

(assert (=> d!2016663 (= res!2644151 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343)))))))))

(assert (=> d!2016663 (= (derivationStepZipperUp!1509 (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343)))) (h!71628 s!2326)) e!3902316)))

(declare-fun bm!553419 () Bool)

(assert (=> bm!553419 (= call!553424 (derivationStepZipperDown!1583 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343)))))) (Context!11439 (t!378921 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343))))))) (h!71628 s!2326)))))

(declare-fun b!6432671 () Bool)

(declare-fun e!3902318 () (InoxSet Context!11438))

(assert (=> b!6432671 (= e!3902316 e!3902318)))

(declare-fun c!1175782 () Bool)

(assert (=> b!6432671 (= c!1175782 ((_ is Cons!65181) (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343)))))))))

(declare-fun b!6432672 () Bool)

(assert (=> b!6432672 (= e!3902318 call!553424)))

(declare-fun b!6432673 () Bool)

(assert (=> b!6432673 (= e!3902318 ((as const (Array Context!11438 Bool)) false))))

(declare-fun b!6432674 () Bool)

(assert (=> b!6432674 (= e!3902317 (nullable!6328 (h!71629 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 (h!71630 zl!343))))))))))

(assert (= (and d!2016663 res!2644151) b!6432674))

(assert (= (and d!2016663 c!1175783) b!6432670))

(assert (= (and d!2016663 (not c!1175783)) b!6432671))

(assert (= (and b!6432671 c!1175782) b!6432672))

(assert (= (and b!6432671 (not c!1175782)) b!6432673))

(assert (= (or b!6432670 b!6432672) bm!553419))

(declare-fun m!7226436 () Bool)

(assert (=> b!6432670 m!7226436))

(declare-fun m!7226438 () Bool)

(assert (=> bm!553419 m!7226438))

(declare-fun m!7226440 () Bool)

(assert (=> b!6432674 m!7226440))

(assert (=> b!6430548 d!2016663))

(assert (=> b!6430838 d!2016061))

(assert (=> b!6430838 d!2015973))

(assert (=> b!6430872 d!2016345))

(assert (=> b!6430872 d!2016235))

(declare-fun b!6432687 () Bool)

(declare-fun e!3902327 () (InoxSet Context!11438))

(declare-fun call!553428 () (InoxSet Context!11438))

(declare-fun call!553430 () (InoxSet Context!11438))

(assert (=> b!6432687 (= e!3902327 ((_ map or) call!553428 call!553430))))

(declare-fun c!1175786 () Bool)

(declare-fun call!553429 () List!65305)

(declare-fun bm!553420 () Bool)

(assert (=> bm!553420 (= call!553428 (derivationStepZipperDown!1583 (ite c!1175786 (regTwo!33183 (h!71629 (exprs!6219 lt!2379358))) (regOne!33182 (h!71629 (exprs!6219 lt!2379358)))) (ite c!1175786 (Context!11439 (t!378921 (exprs!6219 lt!2379358))) (Context!11439 call!553429)) (h!71628 s!2326)))))

(declare-fun bm!553421 () Bool)

(declare-fun call!553427 () (InoxSet Context!11438))

(assert (=> bm!553421 (= call!553427 call!553430)))

(declare-fun b!6432688 () Bool)

(declare-fun c!1175787 () Bool)

(declare-fun e!3902330 () Bool)

(assert (=> b!6432688 (= c!1175787 e!3902330)))

(declare-fun res!2644158 () Bool)

(assert (=> b!6432688 (=> (not res!2644158) (not e!3902330))))

(assert (=> b!6432688 (= res!2644158 ((_ is Concat!25180) (h!71629 (exprs!6219 lt!2379358))))))

(declare-fun e!3902331 () (InoxSet Context!11438))

(assert (=> b!6432688 (= e!3902331 e!3902327)))

(declare-fun b!6432689 () Bool)

(declare-fun call!553425 () (InoxSet Context!11438))

(assert (=> b!6432689 (= e!3902331 ((_ map or) call!553425 call!553428))))

(declare-fun bm!553422 () Bool)

(assert (=> bm!553422 (= call!553430 call!553425)))

(declare-fun b!6432690 () Bool)

(declare-fun e!3902332 () (InoxSet Context!11438))

(assert (=> b!6432690 (= e!3902332 e!3902331)))

(assert (=> b!6432690 (= c!1175786 ((_ is Union!16335) (h!71629 (exprs!6219 lt!2379358))))))

(declare-fun b!6432692 () Bool)

(assert (=> b!6432692 (= e!3902330 (nullable!6328 (regOne!33182 (h!71629 (exprs!6219 lt!2379358)))))))

(declare-fun b!6432693 () Bool)

(declare-fun c!1175790 () Bool)

(assert (=> b!6432693 (= c!1175790 ((_ is Star!16335) (h!71629 (exprs!6219 lt!2379358))))))

(declare-fun e!3902329 () (InoxSet Context!11438))

(declare-fun e!3902328 () (InoxSet Context!11438))

(assert (=> b!6432693 (= e!3902329 e!3902328)))

(declare-fun b!6432694 () Bool)

(assert (=> b!6432694 (= e!3902328 call!553427)))

(declare-fun call!553426 () List!65305)

(declare-fun bm!553423 () Bool)

(declare-fun c!1175789 () Bool)

(assert (=> bm!553423 (= call!553425 (derivationStepZipperDown!1583 (ite c!1175786 (regOne!33183 (h!71629 (exprs!6219 lt!2379358))) (ite c!1175787 (regTwo!33182 (h!71629 (exprs!6219 lt!2379358))) (ite c!1175789 (regOne!33182 (h!71629 (exprs!6219 lt!2379358))) (reg!16664 (h!71629 (exprs!6219 lt!2379358)))))) (ite (or c!1175786 c!1175787) (Context!11439 (t!378921 (exprs!6219 lt!2379358))) (Context!11439 call!553426)) (h!71628 s!2326)))))

(declare-fun b!6432695 () Bool)

(assert (=> b!6432695 (= e!3902327 e!3902329)))

(assert (=> b!6432695 (= c!1175789 ((_ is Concat!25180) (h!71629 (exprs!6219 lt!2379358))))))

(declare-fun b!6432696 () Bool)

(assert (=> b!6432696 (= e!3902332 (store ((as const (Array Context!11438 Bool)) false) (Context!11439 (t!378921 (exprs!6219 lt!2379358))) true))))

(declare-fun b!6432697 () Bool)

(assert (=> b!6432697 (= e!3902328 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2016665 () Bool)

(declare-fun c!1175788 () Bool)

(assert (=> d!2016665 (= c!1175788 (and ((_ is ElementMatch!16335) (h!71629 (exprs!6219 lt!2379358))) (= (c!1175066 (h!71629 (exprs!6219 lt!2379358))) (h!71628 s!2326))))))

(assert (=> d!2016665 (= (derivationStepZipperDown!1583 (h!71629 (exprs!6219 lt!2379358)) (Context!11439 (t!378921 (exprs!6219 lt!2379358))) (h!71628 s!2326)) e!3902332)))

(declare-fun b!6432691 () Bool)

(assert (=> b!6432691 (= e!3902329 call!553427)))

(declare-fun bm!553424 () Bool)

(assert (=> bm!553424 (= call!553426 call!553429)))

(declare-fun bm!553425 () Bool)

(assert (=> bm!553425 (= call!553429 ($colon$colon!2196 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379358)))) (ite (or c!1175787 c!1175789) (regTwo!33182 (h!71629 (exprs!6219 lt!2379358))) (h!71629 (exprs!6219 lt!2379358)))))))

(assert (= (and d!2016665 c!1175788) b!6432696))

(assert (= (and d!2016665 (not c!1175788)) b!6432690))

(assert (= (and b!6432690 c!1175786) b!6432689))

(assert (= (and b!6432690 (not c!1175786)) b!6432688))

(assert (= (and b!6432688 res!2644158) b!6432692))

(assert (= (and b!6432688 c!1175787) b!6432687))

(assert (= (and b!6432688 (not c!1175787)) b!6432695))

(assert (= (and b!6432695 c!1175789) b!6432691))

(assert (= (and b!6432695 (not c!1175789)) b!6432693))

(assert (= (and b!6432693 c!1175790) b!6432694))

(assert (= (and b!6432693 (not c!1175790)) b!6432697))

(assert (= (or b!6432691 b!6432694) bm!553424))

(assert (= (or b!6432691 b!6432694) bm!553421))

(assert (= (or b!6432687 bm!553424) bm!553425))

(assert (= (or b!6432687 bm!553421) bm!553422))

(assert (= (or b!6432689 b!6432687) bm!553420))

(assert (= (or b!6432689 bm!553422) bm!553423))

(declare-fun m!7226442 () Bool)

(assert (=> b!6432696 m!7226442))

(declare-fun m!7226444 () Bool)

(assert (=> b!6432692 m!7226444))

(declare-fun m!7226446 () Bool)

(assert (=> bm!553425 m!7226446))

(declare-fun m!7226448 () Bool)

(assert (=> bm!553420 m!7226448))

(declare-fun m!7226450 () Bool)

(assert (=> bm!553423 m!7226450))

(assert (=> bm!553082 d!2016665))

(declare-fun d!2016667 () Bool)

(assert (=> d!2016667 true))

(assert (=> d!2016667 true))

(declare-fun res!2644163 () Bool)

(assert (=> d!2016667 (= (choose!47830 lambda!355719) res!2644163)))

(assert (=> d!2015891 d!2016667))

(declare-fun d!2016669 () Bool)

(declare-fun res!2644164 () Bool)

(declare-fun e!3902337 () Bool)

(assert (=> d!2016669 (=> res!2644164 e!3902337)))

(assert (=> d!2016669 (= res!2644164 ((_ is Nil!65181) lt!2379471))))

(assert (=> d!2016669 (= (forall!15525 lt!2379471 lambda!355764) e!3902337)))

(declare-fun b!6432700 () Bool)

(declare-fun e!3902338 () Bool)

(assert (=> b!6432700 (= e!3902337 e!3902338)))

(declare-fun res!2644165 () Bool)

(assert (=> b!6432700 (=> (not res!2644165) (not e!3902338))))

(assert (=> b!6432700 (= res!2644165 (dynLambda!25894 lambda!355764 (h!71629 lt!2379471)))))

(declare-fun b!6432701 () Bool)

(assert (=> b!6432701 (= e!3902338 (forall!15525 (t!378921 lt!2379471) lambda!355764))))

(assert (= (and d!2016669 (not res!2644164)) b!6432700))

(assert (= (and b!6432700 res!2644165) b!6432701))

(declare-fun b_lambda!244365 () Bool)

(assert (=> (not b_lambda!244365) (not b!6432700)))

(declare-fun m!7226452 () Bool)

(assert (=> b!6432700 m!7226452))

(declare-fun m!7226454 () Bool)

(assert (=> b!6432701 m!7226454))

(assert (=> d!2015713 d!2016669))

(declare-fun b!6432702 () Bool)

(declare-fun e!3902339 () (InoxSet Context!11438))

(declare-fun call!553438 () (InoxSet Context!11438))

(declare-fun call!553440 () (InoxSet Context!11438))

(assert (=> b!6432702 (= e!3902339 ((_ map or) call!553438 call!553440))))

(declare-fun bm!553430 () Bool)

(declare-fun call!553439 () List!65305)

(declare-fun c!1175791 () Bool)

(assert (=> bm!553430 (= call!553438 (derivationStepZipperDown!1583 (ite c!1175791 (regTwo!33183 (h!71629 (exprs!6219 lt!2379355))) (regOne!33182 (h!71629 (exprs!6219 lt!2379355)))) (ite c!1175791 (Context!11439 (t!378921 (exprs!6219 lt!2379355))) (Context!11439 call!553439)) (h!71628 s!2326)))))

(declare-fun bm!553431 () Bool)

(declare-fun call!553437 () (InoxSet Context!11438))

(assert (=> bm!553431 (= call!553437 call!553440)))

(declare-fun b!6432703 () Bool)

(declare-fun c!1175792 () Bool)

(declare-fun e!3902342 () Bool)

(assert (=> b!6432703 (= c!1175792 e!3902342)))

(declare-fun res!2644166 () Bool)

(assert (=> b!6432703 (=> (not res!2644166) (not e!3902342))))

(assert (=> b!6432703 (= res!2644166 ((_ is Concat!25180) (h!71629 (exprs!6219 lt!2379355))))))

(declare-fun e!3902343 () (InoxSet Context!11438))

(assert (=> b!6432703 (= e!3902343 e!3902339)))

(declare-fun b!6432704 () Bool)

(declare-fun call!553435 () (InoxSet Context!11438))

(assert (=> b!6432704 (= e!3902343 ((_ map or) call!553435 call!553438))))

(declare-fun bm!553432 () Bool)

(assert (=> bm!553432 (= call!553440 call!553435)))

(declare-fun b!6432705 () Bool)

(declare-fun e!3902344 () (InoxSet Context!11438))

(assert (=> b!6432705 (= e!3902344 e!3902343)))

(assert (=> b!6432705 (= c!1175791 ((_ is Union!16335) (h!71629 (exprs!6219 lt!2379355))))))

(declare-fun b!6432707 () Bool)

(assert (=> b!6432707 (= e!3902342 (nullable!6328 (regOne!33182 (h!71629 (exprs!6219 lt!2379355)))))))

(declare-fun b!6432708 () Bool)

(declare-fun c!1175795 () Bool)

(assert (=> b!6432708 (= c!1175795 ((_ is Star!16335) (h!71629 (exprs!6219 lt!2379355))))))

(declare-fun e!3902341 () (InoxSet Context!11438))

(declare-fun e!3902340 () (InoxSet Context!11438))

(assert (=> b!6432708 (= e!3902341 e!3902340)))

(declare-fun b!6432709 () Bool)

(assert (=> b!6432709 (= e!3902340 call!553437)))

(declare-fun bm!553433 () Bool)

(declare-fun call!553436 () List!65305)

(declare-fun c!1175794 () Bool)

(assert (=> bm!553433 (= call!553435 (derivationStepZipperDown!1583 (ite c!1175791 (regOne!33183 (h!71629 (exprs!6219 lt!2379355))) (ite c!1175792 (regTwo!33182 (h!71629 (exprs!6219 lt!2379355))) (ite c!1175794 (regOne!33182 (h!71629 (exprs!6219 lt!2379355))) (reg!16664 (h!71629 (exprs!6219 lt!2379355)))))) (ite (or c!1175791 c!1175792) (Context!11439 (t!378921 (exprs!6219 lt!2379355))) (Context!11439 call!553436)) (h!71628 s!2326)))))

(declare-fun b!6432710 () Bool)

(assert (=> b!6432710 (= e!3902339 e!3902341)))

(assert (=> b!6432710 (= c!1175794 ((_ is Concat!25180) (h!71629 (exprs!6219 lt!2379355))))))

(declare-fun b!6432711 () Bool)

(assert (=> b!6432711 (= e!3902344 (store ((as const (Array Context!11438 Bool)) false) (Context!11439 (t!378921 (exprs!6219 lt!2379355))) true))))

(declare-fun b!6432712 () Bool)

(assert (=> b!6432712 (= e!3902340 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2016671 () Bool)

(declare-fun c!1175793 () Bool)

(assert (=> d!2016671 (= c!1175793 (and ((_ is ElementMatch!16335) (h!71629 (exprs!6219 lt!2379355))) (= (c!1175066 (h!71629 (exprs!6219 lt!2379355))) (h!71628 s!2326))))))

(assert (=> d!2016671 (= (derivationStepZipperDown!1583 (h!71629 (exprs!6219 lt!2379355)) (Context!11439 (t!378921 (exprs!6219 lt!2379355))) (h!71628 s!2326)) e!3902344)))

(declare-fun b!6432706 () Bool)

(assert (=> b!6432706 (= e!3902341 call!553437)))

(declare-fun bm!553434 () Bool)

(assert (=> bm!553434 (= call!553436 call!553439)))

(declare-fun bm!553435 () Bool)

(assert (=> bm!553435 (= call!553439 ($colon$colon!2196 (exprs!6219 (Context!11439 (t!378921 (exprs!6219 lt!2379355)))) (ite (or c!1175792 c!1175794) (regTwo!33182 (h!71629 (exprs!6219 lt!2379355))) (h!71629 (exprs!6219 lt!2379355)))))))

(assert (= (and d!2016671 c!1175793) b!6432711))

(assert (= (and d!2016671 (not c!1175793)) b!6432705))

(assert (= (and b!6432705 c!1175791) b!6432704))

(assert (= (and b!6432705 (not c!1175791)) b!6432703))

(assert (= (and b!6432703 res!2644166) b!6432707))

(assert (= (and b!6432703 c!1175792) b!6432702))

(assert (= (and b!6432703 (not c!1175792)) b!6432710))

(assert (= (and b!6432710 c!1175794) b!6432706))

(assert (= (and b!6432710 (not c!1175794)) b!6432708))

(assert (= (and b!6432708 c!1175795) b!6432709))

(assert (= (and b!6432708 (not c!1175795)) b!6432712))

(assert (= (or b!6432706 b!6432709) bm!553434))

(assert (= (or b!6432706 b!6432709) bm!553431))

(assert (= (or b!6432702 bm!553434) bm!553435))

(assert (= (or b!6432702 bm!553431) bm!553432))

(assert (= (or b!6432704 b!6432702) bm!553430))

(assert (= (or b!6432704 bm!553432) bm!553433))

(declare-fun m!7226456 () Bool)

(assert (=> b!6432711 m!7226456))

(declare-fun m!7226458 () Bool)

(assert (=> b!6432707 m!7226458))

(declare-fun m!7226460 () Bool)

(assert (=> bm!553435 m!7226460))

(declare-fun m!7226462 () Bool)

(assert (=> bm!553430 m!7226462))

(declare-fun m!7226464 () Bool)

(assert (=> bm!553433 m!7226464))

(assert (=> bm!553160 d!2016671))

(declare-fun b!6432720 () Bool)

(declare-fun e!3902351 () (InoxSet Context!11438))

(declare-fun call!553446 () (InoxSet Context!11438))

(declare-fun call!553448 () (InoxSet Context!11438))

(assert (=> b!6432720 (= e!3902351 ((_ map or) call!553446 call!553448))))

(declare-fun c!1175797 () Bool)

(declare-fun bm!553438 () Bool)

(declare-fun call!553447 () List!65305)

(assert (=> bm!553438 (= call!553446 (derivationStepZipperDown!1583 (ite c!1175797 (regTwo!33183 (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))) (regOne!33182 (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292)))))) (ite c!1175797 (ite c!1175245 lt!2379355 (Context!11439 call!553123)) (Context!11439 call!553447)) (h!71628 s!2326)))))

(declare-fun bm!553439 () Bool)

(declare-fun call!553445 () (InoxSet Context!11438))

(assert (=> bm!553439 (= call!553445 call!553448)))

(declare-fun b!6432721 () Bool)

(declare-fun c!1175798 () Bool)

(declare-fun e!3902354 () Bool)

(assert (=> b!6432721 (= c!1175798 e!3902354)))

(declare-fun res!2644172 () Bool)

(assert (=> b!6432721 (=> (not res!2644172) (not e!3902354))))

(assert (=> b!6432721 (= res!2644172 ((_ is Concat!25180) (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))))))

(declare-fun e!3902355 () (InoxSet Context!11438))

(assert (=> b!6432721 (= e!3902355 e!3902351)))

(declare-fun b!6432722 () Bool)

(declare-fun call!553443 () (InoxSet Context!11438))

(assert (=> b!6432722 (= e!3902355 ((_ map or) call!553443 call!553446))))

(declare-fun bm!553440 () Bool)

(assert (=> bm!553440 (= call!553448 call!553443)))

(declare-fun b!6432723 () Bool)

(declare-fun e!3902356 () (InoxSet Context!11438))

(assert (=> b!6432723 (= e!3902356 e!3902355)))

(assert (=> b!6432723 (= c!1175797 ((_ is Union!16335) (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))))))

(declare-fun b!6432725 () Bool)

(assert (=> b!6432725 (= e!3902354 (nullable!6328 (regOne!33182 (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292)))))))))

(declare-fun b!6432726 () Bool)

(declare-fun c!1175801 () Bool)

(assert (=> b!6432726 (= c!1175801 ((_ is Star!16335) (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))))))

(declare-fun e!3902353 () (InoxSet Context!11438))

(declare-fun e!3902352 () (InoxSet Context!11438))

(assert (=> b!6432726 (= e!3902353 e!3902352)))

(declare-fun b!6432727 () Bool)

(assert (=> b!6432727 (= e!3902352 call!553445)))

(declare-fun call!553444 () List!65305)

(declare-fun c!1175800 () Bool)

(declare-fun bm!553441 () Bool)

(assert (=> bm!553441 (= call!553443 (derivationStepZipperDown!1583 (ite c!1175797 (regOne!33183 (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))) (ite c!1175798 (regTwo!33182 (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))) (ite c!1175800 (regOne!33182 (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))) (reg!16664 (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292)))))))) (ite (or c!1175797 c!1175798) (ite c!1175245 lt!2379355 (Context!11439 call!553123)) (Context!11439 call!553444)) (h!71628 s!2326)))))

(declare-fun b!6432728 () Bool)

(assert (=> b!6432728 (= e!3902351 e!3902353)))

(assert (=> b!6432728 (= c!1175800 ((_ is Concat!25180) (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))))))

(declare-fun b!6432729 () Bool)

(assert (=> b!6432729 (= e!3902356 (store ((as const (Array Context!11438 Bool)) false) (ite c!1175245 lt!2379355 (Context!11439 call!553123)) true))))

(declare-fun b!6432730 () Bool)

(assert (=> b!6432730 (= e!3902352 ((as const (Array Context!11438 Bool)) false))))

(declare-fun d!2016673 () Bool)

(declare-fun c!1175799 () Bool)

(assert (=> d!2016673 (= c!1175799 (and ((_ is ElementMatch!16335) (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))) (= (c!1175066 (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))) (h!71628 s!2326))))))

(assert (=> d!2016673 (= (derivationStepZipperDown!1583 (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292)))) (ite c!1175245 lt!2379355 (Context!11439 call!553123)) (h!71628 s!2326)) e!3902356)))

(declare-fun b!6432724 () Bool)

(assert (=> b!6432724 (= e!3902353 call!553445)))

(declare-fun bm!553442 () Bool)

(assert (=> bm!553442 (= call!553444 call!553447)))

(declare-fun bm!553443 () Bool)

(assert (=> bm!553443 (= call!553447 ($colon$colon!2196 (exprs!6219 (ite c!1175245 lt!2379355 (Context!11439 call!553123))) (ite (or c!1175798 c!1175800) (regTwo!33182 (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292))))) (ite c!1175245 (regTwo!33183 (reg!16664 (regOne!33182 r!7292))) (regOne!33182 (reg!16664 (regOne!33182 r!7292)))))))))

(assert (= (and d!2016673 c!1175799) b!6432729))

(assert (= (and d!2016673 (not c!1175799)) b!6432723))

(assert (= (and b!6432723 c!1175797) b!6432722))

(assert (= (and b!6432723 (not c!1175797)) b!6432721))

(assert (= (and b!6432721 res!2644172) b!6432725))

(assert (= (and b!6432721 c!1175798) b!6432720))

(assert (= (and b!6432721 (not c!1175798)) b!6432728))

(assert (= (and b!6432728 c!1175800) b!6432724))

(assert (= (and b!6432728 (not c!1175800)) b!6432726))

(assert (= (and b!6432726 c!1175801) b!6432727))

(assert (= (and b!6432726 (not c!1175801)) b!6432730))

(assert (= (or b!6432724 b!6432727) bm!553442))

(assert (= (or b!6432724 b!6432727) bm!553439))

(assert (= (or b!6432720 bm!553442) bm!553443))

(assert (= (or b!6432720 bm!553439) bm!553440))

(assert (= (or b!6432722 b!6432720) bm!553438))

(assert (= (or b!6432722 bm!553440) bm!553441))

(declare-fun m!7226470 () Bool)

(assert (=> b!6432729 m!7226470))

(declare-fun m!7226472 () Bool)

(assert (=> b!6432725 m!7226472))

(declare-fun m!7226474 () Bool)

(assert (=> bm!553443 m!7226474))

(declare-fun m!7226476 () Bool)

(assert (=> bm!553438 m!7226476))

(declare-fun m!7226478 () Bool)

(assert (=> bm!553441 m!7226478))

(assert (=> bm!553114 d!2016673))

(declare-fun d!2016677 () Bool)

(declare-fun c!1175807 () Bool)

(assert (=> d!2016677 (= c!1175807 ((_ is Nil!65180) lt!2379543))))

(declare-fun e!3902363 () (InoxSet C!32940))

(assert (=> d!2016677 (= (content!12384 lt!2379543) e!3902363)))

(declare-fun b!6432742 () Bool)

(assert (=> b!6432742 (= e!3902363 ((as const (Array C!32940 Bool)) false))))

(declare-fun b!6432743 () Bool)

(assert (=> b!6432743 (= e!3902363 ((_ map or) (store ((as const (Array C!32940 Bool)) false) (h!71628 lt!2379543) true) (content!12384 (t!378920 lt!2379543))))))

(assert (= (and d!2016677 c!1175807) b!6432742))

(assert (= (and d!2016677 (not c!1175807)) b!6432743))

(declare-fun m!7226480 () Bool)

(assert (=> b!6432743 m!7226480))

(declare-fun m!7226484 () Bool)

(assert (=> b!6432743 m!7226484))

(assert (=> d!2015897 d!2016677))

(assert (=> d!2015897 d!2016101))

(assert (=> d!2015897 d!2016523))

(declare-fun d!2016679 () Bool)

(declare-fun res!2644174 () Bool)

(declare-fun e!3902364 () Bool)

(assert (=> d!2016679 (=> res!2644174 e!3902364)))

(assert (=> d!2016679 (= res!2644174 ((_ is Nil!65181) (exprs!6219 (h!71630 zl!343))))))

(assert (=> d!2016679 (= (forall!15525 (exprs!6219 (h!71630 zl!343)) lambda!355733) e!3902364)))

(declare-fun b!6432744 () Bool)

(declare-fun e!3902365 () Bool)

(assert (=> b!6432744 (= e!3902364 e!3902365)))

(declare-fun res!2644175 () Bool)

(assert (=> b!6432744 (=> (not res!2644175) (not e!3902365))))

(assert (=> b!6432744 (= res!2644175 (dynLambda!25894 lambda!355733 (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun b!6432745 () Bool)

(assert (=> b!6432745 (= e!3902365 (forall!15525 (t!378921 (exprs!6219 (h!71630 zl!343))) lambda!355733))))

(assert (= (and d!2016679 (not res!2644174)) b!6432744))

(assert (= (and b!6432744 res!2644175) b!6432745))

(declare-fun b_lambda!244367 () Bool)

(assert (=> (not b_lambda!244367) (not b!6432744)))

(declare-fun m!7226494 () Bool)

(assert (=> b!6432744 m!7226494))

(declare-fun m!7226496 () Bool)

(assert (=> b!6432745 m!7226496))

(assert (=> d!2015603 d!2016679))

(assert (=> b!6431061 d!2016015))

(declare-fun d!2016683 () Bool)

(assert (=> d!2016683 (= (Exists!3405 lambda!355805) (choose!47830 lambda!355805))))

(declare-fun bs!1618534 () Bool)

(assert (= bs!1618534 d!2016683))

(declare-fun m!7226498 () Bool)

(assert (=> bs!1618534 m!7226498))

(assert (=> d!2015889 d!2016683))

(declare-fun d!2016687 () Bool)

(assert (=> d!2016687 (= (Exists!3405 lambda!355806) (choose!47830 lambda!355806))))

(declare-fun bs!1618536 () Bool)

(assert (= bs!1618536 d!2016687))

(declare-fun m!7226502 () Bool)

(assert (=> bs!1618536 m!7226502))

(assert (=> d!2015889 d!2016687))

(declare-fun bs!1618537 () Bool)

(declare-fun d!2016691 () Bool)

(assert (= bs!1618537 (and d!2016691 b!6432224)))

(declare-fun lambda!355900 () Int)

(assert (=> bs!1618537 (not (= lambda!355900 lambda!355875))))

(declare-fun bs!1618538 () Bool)

(assert (= bs!1618538 (and d!2016691 b!6431962)))

(assert (=> bs!1618538 (not (= lambda!355900 lambda!355855))))

(declare-fun bs!1618539 () Bool)

(assert (= bs!1618539 (and d!2016691 b!6431977)))

(assert (=> bs!1618539 (not (= lambda!355900 lambda!355860))))

(declare-fun bs!1618540 () Bool)

(assert (= bs!1618540 (and d!2016691 b!6430115)))

(assert (=> bs!1618540 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355900 lambda!355717))))

(declare-fun bs!1618541 () Bool)

(assert (= bs!1618541 (and d!2016691 b!6431861)))

(assert (=> bs!1618541 (not (= lambda!355900 lambda!355850))))

(declare-fun bs!1618542 () Bool)

(assert (= bs!1618542 (and d!2016691 d!2016163)))

(assert (=> bs!1618542 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355900 lambda!355844))))

(declare-fun bs!1618543 () Bool)

(assert (= bs!1618543 (and d!2016691 b!6430094)))

(assert (=> bs!1618543 (= lambda!355900 lambda!355719)))

(declare-fun bs!1618544 () Bool)

(assert (= bs!1618544 (and d!2016691 d!2015881)))

(assert (=> bs!1618544 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355900 lambda!355802))))

(declare-fun bs!1618545 () Bool)

(assert (= bs!1618545 (and d!2016691 d!2015991)))

(assert (=> bs!1618545 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355900 lambda!355828))))

(declare-fun bs!1618546 () Bool)

(assert (= bs!1618546 (and d!2016691 d!2015957)))

(assert (=> bs!1618546 (not (= lambda!355900 lambda!355823))))

(declare-fun bs!1618547 () Bool)

(assert (= bs!1618547 (and d!2016691 d!2015895)))

(assert (=> bs!1618547 (= (= lt!2379353 (Star!16335 (reg!16664 (regOne!33182 r!7292)))) (= lambda!355900 lambda!355811))))

(declare-fun bs!1618548 () Bool)

(assert (= bs!1618548 (and d!2016691 b!6430859)))

(assert (=> bs!1618548 (not (= lambda!355900 lambda!355779))))

(declare-fun bs!1618549 () Bool)

(assert (= bs!1618549 (and d!2016691 b!6432054)))

(assert (=> bs!1618549 (not (= lambda!355900 lambda!355864))))

(declare-fun bs!1618551 () Bool)

(assert (= bs!1618551 (and d!2016691 d!2016395)))

(assert (=> bs!1618551 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355900 lambda!355873))))

(declare-fun bs!1618552 () Bool)

(assert (= bs!1618552 (and d!2016691 d!2015887)))

(assert (=> bs!1618552 (= lambda!355900 lambda!355804)))

(declare-fun bs!1618553 () Bool)

(assert (= bs!1618553 (and d!2016691 d!2016629)))

(assert (=> bs!1618553 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355900 lambda!355892))))

(declare-fun bs!1618554 () Bool)

(assert (= bs!1618554 (and d!2016691 b!6432048)))

(assert (=> bs!1618554 (not (= lambda!355900 lambda!355863))))

(declare-fun bs!1618555 () Bool)

(assert (= bs!1618555 (and d!2016691 d!2015879)))

(assert (=> bs!1618555 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355900 lambda!355801))))

(declare-fun bs!1618556 () Bool)

(assert (= bs!1618556 (and d!2016691 d!2016021)))

(assert (=> bs!1618556 (= lambda!355900 lambda!355832)))

(declare-fun bs!1618557 () Bool)

(assert (= bs!1618557 (and d!2016691 d!2015889)))

(assert (=> bs!1618557 (not (= lambda!355900 lambda!355806))))

(assert (=> bs!1618544 (not (= lambda!355900 lambda!355803))))

(declare-fun bs!1618558 () Bool)

(assert (= bs!1618558 (and d!2016691 b!6430810)))

(assert (=> bs!1618558 (not (= lambda!355900 lambda!355772))))

(declare-fun bs!1618559 () Bool)

(assert (= bs!1618559 (and d!2016691 b!6431148)))

(assert (=> bs!1618559 (not (= lambda!355900 lambda!355813))))

(assert (=> bs!1618543 (not (= lambda!355900 lambda!355721))))

(declare-fun bs!1618560 () Bool)

(assert (= bs!1618560 (and d!2016691 d!2015793)))

(assert (=> bs!1618560 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355900 lambda!355786))))

(assert (=> bs!1618553 (not (= lambda!355900 lambda!355894))))

(assert (=> bs!1618543 (not (= lambda!355900 lambda!355720))))

(declare-fun bs!1618561 () Bool)

(assert (= bs!1618561 (and d!2016691 b!6431983)))

(assert (=> bs!1618561 (not (= lambda!355900 lambda!355862))))

(declare-fun bs!1618562 () Bool)

(assert (= bs!1618562 (and d!2016691 b!6431953)))

(assert (=> bs!1618562 (not (= lambda!355900 lambda!355852))))

(declare-fun bs!1618563 () Bool)

(assert (= bs!1618563 (and d!2016691 b!6431154)))

(assert (=> bs!1618563 (not (= lambda!355900 lambda!355814))))

(declare-fun bs!1618564 () Bool)

(assert (= bs!1618564 (and d!2016691 b!6432218)))

(assert (=> bs!1618564 (not (= lambda!355900 lambda!355874))))

(declare-fun bs!1618565 () Bool)

(assert (= bs!1618565 (and d!2016691 b!6430128)))

(assert (=> bs!1618565 (not (= lambda!355900 lambda!355715))))

(declare-fun bs!1618566 () Bool)

(assert (= bs!1618566 (and d!2016691 b!6431855)))

(assert (=> bs!1618566 (not (= lambda!355900 lambda!355849))))

(assert (=> bs!1618545 (not (= lambda!355900 lambda!355829))))

(declare-fun bs!1618567 () Bool)

(assert (= bs!1618567 (and d!2016691 b!6431968)))

(assert (=> bs!1618567 (not (= lambda!355900 lambda!355859))))

(declare-fun bs!1618568 () Bool)

(assert (= bs!1618568 (and d!2016691 b!6430816)))

(assert (=> bs!1618568 (not (= lambda!355900 lambda!355773))))

(assert (=> bs!1618547 (not (= lambda!355900 lambda!355812))))

(declare-fun bs!1618569 () Bool)

(assert (= bs!1618569 (and d!2016691 b!6430865)))

(assert (=> bs!1618569 (not (= lambda!355900 lambda!355780))))

(assert (=> bs!1618557 (= lambda!355900 lambda!355805)))

(assert (=> bs!1618546 (= (= lt!2379353 (Star!16335 (reg!16664 (regOne!33182 r!7292)))) (= lambda!355900 lambda!355822))))

(assert (=> bs!1618540 (not (= lambda!355900 lambda!355718))))

(assert (=> bs!1618565 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355900 lambda!355714))))

(declare-fun bs!1618573 () Bool)

(assert (= bs!1618573 (and d!2016691 b!6431947)))

(assert (=> bs!1618573 (not (= lambda!355900 lambda!355851))))

(declare-fun bs!1618574 () Bool)

(assert (= bs!1618574 (and d!2016691 d!2015829)))

(assert (=> bs!1618574 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355900 lambda!355796))))

(assert (=> bs!1618574 (not (= lambda!355900 lambda!355797))))

(assert (=> d!2016691 true))

(assert (=> d!2016691 true))

(assert (=> d!2016691 true))

(declare-fun lambda!355902 () Int)

(assert (=> bs!1618537 (= (and (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 (regOne!33183 lt!2379353))) (= lt!2379353 (regTwo!33182 (regOne!33183 lt!2379353)))) (= lambda!355902 lambda!355875))))

(assert (=> bs!1618538 (not (= lambda!355902 lambda!355855))))

(assert (=> bs!1618539 (not (= lambda!355902 lambda!355860))))

(assert (=> bs!1618541 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 (regTwo!33183 r!7292))) (= lt!2379353 (regTwo!33182 (regTwo!33183 r!7292)))) (= lambda!355902 lambda!355850))))

(assert (=> bs!1618542 (not (= lambda!355902 lambda!355844))))

(assert (=> bs!1618543 (not (= lambda!355902 lambda!355719))))

(assert (=> bs!1618544 (not (= lambda!355902 lambda!355802))))

(assert (=> bs!1618545 (not (= lambda!355902 lambda!355828))))

(assert (=> bs!1618546 (not (= lambda!355902 lambda!355823))))

(assert (=> bs!1618547 (not (= lambda!355902 lambda!355811))))

(assert (=> bs!1618548 (not (= lambda!355902 lambda!355779))))

(assert (=> bs!1618549 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 (regTwo!33183 lt!2379346))) (= lt!2379353 (regTwo!33182 (regTwo!33183 lt!2379346)))) (= lambda!355902 lambda!355864))))

(assert (=> bs!1618551 (not (= lambda!355902 lambda!355873))))

(assert (=> bs!1618552 (not (= lambda!355902 lambda!355804))))

(assert (=> bs!1618553 (not (= lambda!355902 lambda!355892))))

(assert (=> bs!1618554 (not (= lambda!355902 lambda!355863))))

(assert (=> bs!1618555 (not (= lambda!355902 lambda!355801))))

(assert (=> bs!1618556 (not (= lambda!355902 lambda!355832))))

(assert (=> bs!1618557 (= lambda!355902 lambda!355806)))

(assert (=> bs!1618544 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355902 lambda!355803))))

(assert (=> bs!1618558 (not (= lambda!355902 lambda!355772))))

(assert (=> bs!1618559 (not (= lambda!355902 lambda!355813))))

(assert (=> bs!1618543 (= lambda!355902 lambda!355721)))

(assert (=> bs!1618560 (not (= lambda!355902 lambda!355786))))

(assert (=> bs!1618540 (not (= lambda!355902 lambda!355717))))

(declare-fun bs!1618596 () Bool)

(assert (= bs!1618596 d!2016691))

(assert (=> bs!1618596 (not (= lambda!355902 lambda!355900))))

(assert (=> bs!1618553 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355902 lambda!355894))))

(assert (=> bs!1618543 (not (= lambda!355902 lambda!355720))))

(assert (=> bs!1618561 (= (and (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 (regTwo!33183 lt!2379353))) (= lt!2379353 (regTwo!33182 (regTwo!33183 lt!2379353)))) (= lambda!355902 lambda!355862))))

(assert (=> bs!1618562 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 (regOne!33183 lt!2379346))) (= lt!2379353 (regTwo!33182 (regOne!33183 lt!2379346)))) (= lambda!355902 lambda!355852))))

(assert (=> bs!1618563 (= (and (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 lt!2379353)) (= lt!2379353 (regTwo!33182 lt!2379353))) (= lambda!355902 lambda!355814))))

(assert (=> bs!1618564 (not (= lambda!355902 lambda!355874))))

(assert (=> bs!1618565 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355902 lambda!355715))))

(assert (=> bs!1618566 (not (= lambda!355902 lambda!355849))))

(assert (=> bs!1618545 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355902 lambda!355829))))

(assert (=> bs!1618567 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 (regOne!33183 r!7292))) (= lt!2379353 (regTwo!33182 (regOne!33183 r!7292)))) (= lambda!355902 lambda!355859))))

(assert (=> bs!1618568 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355902 lambda!355773))))

(assert (=> bs!1618547 (not (= lambda!355902 lambda!355812))))

(assert (=> bs!1618569 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 lt!2379346)) (= lt!2379353 (regTwo!33182 lt!2379346))) (= lambda!355902 lambda!355780))))

(assert (=> bs!1618557 (not (= lambda!355902 lambda!355805))))

(assert (=> bs!1618546 (not (= lambda!355902 lambda!355822))))

(assert (=> bs!1618540 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) lt!2379353) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355902 lambda!355718))))

(assert (=> bs!1618565 (not (= lambda!355902 lambda!355714))))

(assert (=> bs!1618573 (not (= lambda!355902 lambda!355851))))

(assert (=> bs!1618574 (not (= lambda!355902 lambda!355796))))

(assert (=> bs!1618574 (= (and (= (_1!36617 lt!2379368) s!2326) (= (reg!16664 (regOne!33182 r!7292)) (regOne!33182 r!7292)) (= lt!2379353 (regTwo!33182 r!7292))) (= lambda!355902 lambda!355797))))

(assert (=> d!2016691 true))

(assert (=> d!2016691 true))

(assert (=> d!2016691 true))

(assert (=> d!2016691 (= (Exists!3405 lambda!355900) (Exists!3405 lambda!355902))))

(assert (=> d!2016691 true))

(declare-fun _$90!2298 () Unit!158671)

(assert (=> d!2016691 (= (choose!47832 (reg!16664 (regOne!33182 r!7292)) lt!2379353 (_1!36617 lt!2379368)) _$90!2298)))

(declare-fun m!7226532 () Bool)

(assert (=> bs!1618596 m!7226532))

(declare-fun m!7226534 () Bool)

(assert (=> bs!1618596 m!7226534))

(assert (=> d!2015889 d!2016691))

(assert (=> d!2015889 d!2015959))

(assert (=> bm!553146 d!2016621))

(declare-fun d!2016711 () Bool)

(assert (=> d!2016711 (= (nullable!6328 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))) (nullableFct!2274 (h!71629 (exprs!6219 (Context!11439 (Cons!65181 (h!71629 (exprs!6219 (h!71630 zl!343))) (t!378921 (exprs!6219 (h!71630 zl!343)))))))))))

(declare-fun bs!1618612 () Bool)

(assert (= bs!1618612 d!2016711))

(declare-fun m!7226536 () Bool)

(assert (=> bs!1618612 m!7226536))

(assert (=> b!6430466 d!2016711))

(declare-fun b!6432789 () Bool)

(declare-fun e!3902389 () Bool)

(declare-fun tp!1784277 () Bool)

(declare-fun tp!1784281 () Bool)

(assert (=> b!6432789 (= e!3902389 (and tp!1784277 tp!1784281))))

(declare-fun b!6432791 () Bool)

(declare-fun tp!1784278 () Bool)

(declare-fun tp!1784279 () Bool)

(assert (=> b!6432791 (= e!3902389 (and tp!1784278 tp!1784279))))

(declare-fun b!6432788 () Bool)

(assert (=> b!6432788 (= e!3902389 tp_is_empty!41923)))

(assert (=> b!6431232 (= tp!1784226 e!3902389)))

(declare-fun b!6432790 () Bool)

(declare-fun tp!1784280 () Bool)

(assert (=> b!6432790 (= e!3902389 tp!1784280)))

(assert (= (and b!6431232 ((_ is ElementMatch!16335) (regOne!33182 (regTwo!33182 r!7292)))) b!6432788))

(assert (= (and b!6431232 ((_ is Concat!25180) (regOne!33182 (regTwo!33182 r!7292)))) b!6432789))

(assert (= (and b!6431232 ((_ is Star!16335) (regOne!33182 (regTwo!33182 r!7292)))) b!6432790))

(assert (= (and b!6431232 ((_ is Union!16335) (regOne!33182 (regTwo!33182 r!7292)))) b!6432791))

(declare-fun b!6432793 () Bool)

(declare-fun e!3902390 () Bool)

(declare-fun tp!1784282 () Bool)

(declare-fun tp!1784286 () Bool)

(assert (=> b!6432793 (= e!3902390 (and tp!1784282 tp!1784286))))

(declare-fun b!6432795 () Bool)

(declare-fun tp!1784283 () Bool)

(declare-fun tp!1784284 () Bool)

(assert (=> b!6432795 (= e!3902390 (and tp!1784283 tp!1784284))))

(declare-fun b!6432792 () Bool)

(assert (=> b!6432792 (= e!3902390 tp_is_empty!41923)))

(assert (=> b!6431232 (= tp!1784230 e!3902390)))

(declare-fun b!6432794 () Bool)

(declare-fun tp!1784285 () Bool)

(assert (=> b!6432794 (= e!3902390 tp!1784285)))

(assert (= (and b!6431232 ((_ is ElementMatch!16335) (regTwo!33182 (regTwo!33182 r!7292)))) b!6432792))

(assert (= (and b!6431232 ((_ is Concat!25180) (regTwo!33182 (regTwo!33182 r!7292)))) b!6432793))

(assert (= (and b!6431232 ((_ is Star!16335) (regTwo!33182 (regTwo!33182 r!7292)))) b!6432794))

(assert (= (and b!6431232 ((_ is Union!16335) (regTwo!33182 (regTwo!33182 r!7292)))) b!6432795))

(declare-fun b!6432797 () Bool)

(declare-fun e!3902391 () Bool)

(declare-fun tp!1784287 () Bool)

(declare-fun tp!1784291 () Bool)

(assert (=> b!6432797 (= e!3902391 (and tp!1784287 tp!1784291))))

(declare-fun b!6432799 () Bool)

(declare-fun tp!1784288 () Bool)

(declare-fun tp!1784289 () Bool)

(assert (=> b!6432799 (= e!3902391 (and tp!1784288 tp!1784289))))

(declare-fun b!6432796 () Bool)

(assert (=> b!6432796 (= e!3902391 tp_is_empty!41923)))

(assert (=> b!6431211 (= tp!1784204 e!3902391)))

(declare-fun b!6432798 () Bool)

(declare-fun tp!1784290 () Bool)

(assert (=> b!6432798 (= e!3902391 tp!1784290)))

(assert (= (and b!6431211 ((_ is ElementMatch!16335) (regOne!33182 (regTwo!33183 r!7292)))) b!6432796))

(assert (= (and b!6431211 ((_ is Concat!25180) (regOne!33182 (regTwo!33183 r!7292)))) b!6432797))

(assert (= (and b!6431211 ((_ is Star!16335) (regOne!33182 (regTwo!33183 r!7292)))) b!6432798))

(assert (= (and b!6431211 ((_ is Union!16335) (regOne!33182 (regTwo!33183 r!7292)))) b!6432799))

(declare-fun b!6432801 () Bool)

(declare-fun e!3902392 () Bool)

(declare-fun tp!1784292 () Bool)

(declare-fun tp!1784296 () Bool)

(assert (=> b!6432801 (= e!3902392 (and tp!1784292 tp!1784296))))

(declare-fun b!6432803 () Bool)

(declare-fun tp!1784293 () Bool)

(declare-fun tp!1784294 () Bool)

(assert (=> b!6432803 (= e!3902392 (and tp!1784293 tp!1784294))))

(declare-fun b!6432800 () Bool)

(assert (=> b!6432800 (= e!3902392 tp_is_empty!41923)))

(assert (=> b!6431211 (= tp!1784208 e!3902392)))

(declare-fun b!6432802 () Bool)

(declare-fun tp!1784295 () Bool)

(assert (=> b!6432802 (= e!3902392 tp!1784295)))

(assert (= (and b!6431211 ((_ is ElementMatch!16335) (regTwo!33182 (regTwo!33183 r!7292)))) b!6432800))

(assert (= (and b!6431211 ((_ is Concat!25180) (regTwo!33182 (regTwo!33183 r!7292)))) b!6432801))

(assert (= (and b!6431211 ((_ is Star!16335) (regTwo!33182 (regTwo!33183 r!7292)))) b!6432802))

(assert (= (and b!6431211 ((_ is Union!16335) (regTwo!33182 (regTwo!33183 r!7292)))) b!6432803))

(declare-fun b!6432804 () Bool)

(declare-fun e!3902393 () Bool)

(declare-fun tp!1784297 () Bool)

(declare-fun tp!1784298 () Bool)

(assert (=> b!6432804 (= e!3902393 (and tp!1784297 tp!1784298))))

(assert (=> b!6431248 (= tp!1784243 e!3902393)))

(assert (= (and b!6431248 ((_ is Cons!65181) (exprs!6219 setElem!43914))) b!6432804))

(declare-fun b!6432806 () Bool)

(declare-fun e!3902394 () Bool)

(declare-fun tp!1784299 () Bool)

(declare-fun tp!1784303 () Bool)

(assert (=> b!6432806 (= e!3902394 (and tp!1784299 tp!1784303))))

(declare-fun b!6432808 () Bool)

(declare-fun tp!1784300 () Bool)

(declare-fun tp!1784301 () Bool)

(assert (=> b!6432808 (= e!3902394 (and tp!1784300 tp!1784301))))

(declare-fun b!6432805 () Bool)

(assert (=> b!6432805 (= e!3902394 tp_is_empty!41923)))

(assert (=> b!6431218 (= tp!1784213 e!3902394)))

(declare-fun b!6432807 () Bool)

(declare-fun tp!1784302 () Bool)

(assert (=> b!6432807 (= e!3902394 tp!1784302)))

(assert (= (and b!6431218 ((_ is ElementMatch!16335) (h!71629 (exprs!6219 setElem!43908)))) b!6432805))

(assert (= (and b!6431218 ((_ is Concat!25180) (h!71629 (exprs!6219 setElem!43908)))) b!6432806))

(assert (= (and b!6431218 ((_ is Star!16335) (h!71629 (exprs!6219 setElem!43908)))) b!6432807))

(assert (= (and b!6431218 ((_ is Union!16335) (h!71629 (exprs!6219 setElem!43908)))) b!6432808))

(declare-fun b!6432809 () Bool)

(declare-fun e!3902395 () Bool)

(declare-fun tp!1784304 () Bool)

(declare-fun tp!1784305 () Bool)

(assert (=> b!6432809 (= e!3902395 (and tp!1784304 tp!1784305))))

(assert (=> b!6431218 (= tp!1784214 e!3902395)))

(assert (= (and b!6431218 ((_ is Cons!65181) (t!378921 (exprs!6219 setElem!43908)))) b!6432809))

(declare-fun condSetEmpty!43924 () Bool)

(assert (=> setNonEmpty!43914 (= condSetEmpty!43924 (= setRest!43914 ((as const (Array Context!11438 Bool)) false)))))

(declare-fun setRes!43924 () Bool)

(assert (=> setNonEmpty!43914 (= tp!1784244 setRes!43924)))

(declare-fun setIsEmpty!43924 () Bool)

(assert (=> setIsEmpty!43924 setRes!43924))

(declare-fun setElem!43924 () Context!11438)

(declare-fun setNonEmpty!43924 () Bool)

(declare-fun e!3902396 () Bool)

(declare-fun tp!1784307 () Bool)

(assert (=> setNonEmpty!43924 (= setRes!43924 (and tp!1784307 (inv!84084 setElem!43924) e!3902396))))

(declare-fun setRest!43924 () (InoxSet Context!11438))

(assert (=> setNonEmpty!43924 (= setRest!43914 ((_ map or) (store ((as const (Array Context!11438 Bool)) false) setElem!43924 true) setRest!43924))))

(declare-fun b!6432810 () Bool)

(declare-fun tp!1784306 () Bool)

(assert (=> b!6432810 (= e!3902396 tp!1784306)))

(assert (= (and setNonEmpty!43914 condSetEmpty!43924) setIsEmpty!43924))

(assert (= (and setNonEmpty!43914 (not condSetEmpty!43924)) setNonEmpty!43924))

(assert (= setNonEmpty!43924 b!6432810))

(declare-fun m!7226538 () Bool)

(assert (=> setNonEmpty!43924 m!7226538))

(declare-fun b!6432812 () Bool)

(declare-fun e!3902397 () Bool)

(declare-fun tp!1784308 () Bool)

(declare-fun tp!1784312 () Bool)

(assert (=> b!6432812 (= e!3902397 (and tp!1784308 tp!1784312))))

(declare-fun b!6432814 () Bool)

(declare-fun tp!1784309 () Bool)

(declare-fun tp!1784310 () Bool)

(assert (=> b!6432814 (= e!3902397 (and tp!1784309 tp!1784310))))

(declare-fun b!6432811 () Bool)

(assert (=> b!6432811 (= e!3902397 tp_is_empty!41923)))

(assert (=> b!6431230 (= tp!1784222 e!3902397)))

(declare-fun b!6432813 () Bool)

(declare-fun tp!1784311 () Bool)

(assert (=> b!6432813 (= e!3902397 tp!1784311)))

(assert (= (and b!6431230 ((_ is ElementMatch!16335) (regOne!33183 (regOne!33182 r!7292)))) b!6432811))

(assert (= (and b!6431230 ((_ is Concat!25180) (regOne!33183 (regOne!33182 r!7292)))) b!6432812))

(assert (= (and b!6431230 ((_ is Star!16335) (regOne!33183 (regOne!33182 r!7292)))) b!6432813))

(assert (= (and b!6431230 ((_ is Union!16335) (regOne!33183 (regOne!33182 r!7292)))) b!6432814))

(declare-fun b!6432816 () Bool)

(declare-fun e!3902398 () Bool)

(declare-fun tp!1784313 () Bool)

(declare-fun tp!1784317 () Bool)

(assert (=> b!6432816 (= e!3902398 (and tp!1784313 tp!1784317))))

(declare-fun b!6432818 () Bool)

(declare-fun tp!1784314 () Bool)

(declare-fun tp!1784315 () Bool)

(assert (=> b!6432818 (= e!3902398 (and tp!1784314 tp!1784315))))

(declare-fun b!6432815 () Bool)

(assert (=> b!6432815 (= e!3902398 tp_is_empty!41923)))

(assert (=> b!6431230 (= tp!1784223 e!3902398)))

(declare-fun b!6432817 () Bool)

(declare-fun tp!1784316 () Bool)

(assert (=> b!6432817 (= e!3902398 tp!1784316)))

(assert (= (and b!6431230 ((_ is ElementMatch!16335) (regTwo!33183 (regOne!33182 r!7292)))) b!6432815))

(assert (= (and b!6431230 ((_ is Concat!25180) (regTwo!33183 (regOne!33182 r!7292)))) b!6432816))

(assert (= (and b!6431230 ((_ is Star!16335) (regTwo!33183 (regOne!33182 r!7292)))) b!6432817))

(assert (= (and b!6431230 ((_ is Union!16335) (regTwo!33183 (regOne!33182 r!7292)))) b!6432818))

(declare-fun b!6432820 () Bool)

(declare-fun e!3902399 () Bool)

(declare-fun tp!1784318 () Bool)

(declare-fun tp!1784322 () Bool)

(assert (=> b!6432820 (= e!3902399 (and tp!1784318 tp!1784322))))

(declare-fun b!6432822 () Bool)

(declare-fun tp!1784319 () Bool)

(declare-fun tp!1784320 () Bool)

(assert (=> b!6432822 (= e!3902399 (and tp!1784319 tp!1784320))))

(declare-fun b!6432819 () Bool)

(assert (=> b!6432819 (= e!3902399 tp_is_empty!41923)))

(assert (=> b!6431209 (= tp!1784200 e!3902399)))

(declare-fun b!6432821 () Bool)

(declare-fun tp!1784321 () Bool)

(assert (=> b!6432821 (= e!3902399 tp!1784321)))

(assert (= (and b!6431209 ((_ is ElementMatch!16335) (regOne!33183 (regOne!33183 r!7292)))) b!6432819))

(assert (= (and b!6431209 ((_ is Concat!25180) (regOne!33183 (regOne!33183 r!7292)))) b!6432820))

(assert (= (and b!6431209 ((_ is Star!16335) (regOne!33183 (regOne!33183 r!7292)))) b!6432821))

(assert (= (and b!6431209 ((_ is Union!16335) (regOne!33183 (regOne!33183 r!7292)))) b!6432822))

(declare-fun b!6432838 () Bool)

(declare-fun e!3902407 () Bool)

(declare-fun tp!1784323 () Bool)

(declare-fun tp!1784327 () Bool)

(assert (=> b!6432838 (= e!3902407 (and tp!1784323 tp!1784327))))

(declare-fun b!6432840 () Bool)

(declare-fun tp!1784324 () Bool)

(declare-fun tp!1784325 () Bool)

(assert (=> b!6432840 (= e!3902407 (and tp!1784324 tp!1784325))))

(declare-fun b!6432837 () Bool)

(assert (=> b!6432837 (= e!3902407 tp_is_empty!41923)))

(assert (=> b!6431209 (= tp!1784201 e!3902407)))

(declare-fun b!6432839 () Bool)

(declare-fun tp!1784326 () Bool)

(assert (=> b!6432839 (= e!3902407 tp!1784326)))

(assert (= (and b!6431209 ((_ is ElementMatch!16335) (regTwo!33183 (regOne!33183 r!7292)))) b!6432837))

(assert (= (and b!6431209 ((_ is Concat!25180) (regTwo!33183 (regOne!33183 r!7292)))) b!6432838))

(assert (= (and b!6431209 ((_ is Star!16335) (regTwo!33183 (regOne!33183 r!7292)))) b!6432839))

(assert (= (and b!6431209 ((_ is Union!16335) (regTwo!33183 (regOne!33183 r!7292)))) b!6432840))

(declare-fun b!6432842 () Bool)

(declare-fun e!3902408 () Bool)

(declare-fun tp!1784328 () Bool)

(declare-fun tp!1784332 () Bool)

(assert (=> b!6432842 (= e!3902408 (and tp!1784328 tp!1784332))))

(declare-fun b!6432844 () Bool)

(declare-fun tp!1784329 () Bool)

(declare-fun tp!1784330 () Bool)

(assert (=> b!6432844 (= e!3902408 (and tp!1784329 tp!1784330))))

(declare-fun b!6432841 () Bool)

(assert (=> b!6432841 (= e!3902408 tp_is_empty!41923)))

(assert (=> b!6431229 (= tp!1784224 e!3902408)))

(declare-fun b!6432843 () Bool)

(declare-fun tp!1784331 () Bool)

(assert (=> b!6432843 (= e!3902408 tp!1784331)))

(assert (= (and b!6431229 ((_ is ElementMatch!16335) (reg!16664 (regOne!33182 r!7292)))) b!6432841))

(assert (= (and b!6431229 ((_ is Concat!25180) (reg!16664 (regOne!33182 r!7292)))) b!6432842))

(assert (= (and b!6431229 ((_ is Star!16335) (reg!16664 (regOne!33182 r!7292)))) b!6432843))

(assert (= (and b!6431229 ((_ is Union!16335) (reg!16664 (regOne!33182 r!7292)))) b!6432844))

(declare-fun b!6432846 () Bool)

(declare-fun e!3902409 () Bool)

(declare-fun tp!1784333 () Bool)

(declare-fun tp!1784337 () Bool)

(assert (=> b!6432846 (= e!3902409 (and tp!1784333 tp!1784337))))

(declare-fun b!6432848 () Bool)

(declare-fun tp!1784334 () Bool)

(declare-fun tp!1784335 () Bool)

(assert (=> b!6432848 (= e!3902409 (and tp!1784334 tp!1784335))))

(declare-fun b!6432845 () Bool)

(assert (=> b!6432845 (= e!3902409 tp_is_empty!41923)))

(assert (=> b!6431208 (= tp!1784202 e!3902409)))

(declare-fun b!6432847 () Bool)

(declare-fun tp!1784336 () Bool)

(assert (=> b!6432847 (= e!3902409 tp!1784336)))

(assert (= (and b!6431208 ((_ is ElementMatch!16335) (reg!16664 (regOne!33183 r!7292)))) b!6432845))

(assert (= (and b!6431208 ((_ is Concat!25180) (reg!16664 (regOne!33183 r!7292)))) b!6432846))

(assert (= (and b!6431208 ((_ is Star!16335) (reg!16664 (regOne!33183 r!7292)))) b!6432847))

(assert (= (and b!6431208 ((_ is Union!16335) (reg!16664 (regOne!33183 r!7292)))) b!6432848))

(declare-fun b!6432850 () Bool)

(declare-fun e!3902410 () Bool)

(declare-fun tp!1784338 () Bool)

(declare-fun tp!1784342 () Bool)

(assert (=> b!6432850 (= e!3902410 (and tp!1784338 tp!1784342))))

(declare-fun b!6432852 () Bool)

(declare-fun tp!1784339 () Bool)

(declare-fun tp!1784340 () Bool)

(assert (=> b!6432852 (= e!3902410 (and tp!1784339 tp!1784340))))

(declare-fun b!6432849 () Bool)

(assert (=> b!6432849 (= e!3902410 tp_is_empty!41923)))

(assert (=> b!6431238 (= tp!1784232 e!3902410)))

(declare-fun b!6432851 () Bool)

(declare-fun tp!1784341 () Bool)

(assert (=> b!6432851 (= e!3902410 tp!1784341)))

(assert (= (and b!6431238 ((_ is ElementMatch!16335) (regOne!33183 (reg!16664 r!7292)))) b!6432849))

(assert (= (and b!6431238 ((_ is Concat!25180) (regOne!33183 (reg!16664 r!7292)))) b!6432850))

(assert (= (and b!6431238 ((_ is Star!16335) (regOne!33183 (reg!16664 r!7292)))) b!6432851))

(assert (= (and b!6431238 ((_ is Union!16335) (regOne!33183 (reg!16664 r!7292)))) b!6432852))

(declare-fun b!6432854 () Bool)

(declare-fun e!3902411 () Bool)

(declare-fun tp!1784343 () Bool)

(declare-fun tp!1784347 () Bool)

(assert (=> b!6432854 (= e!3902411 (and tp!1784343 tp!1784347))))

(declare-fun b!6432856 () Bool)

(declare-fun tp!1784344 () Bool)

(declare-fun tp!1784345 () Bool)

(assert (=> b!6432856 (= e!3902411 (and tp!1784344 tp!1784345))))

(declare-fun b!6432853 () Bool)

(assert (=> b!6432853 (= e!3902411 tp_is_empty!41923)))

(assert (=> b!6431238 (= tp!1784233 e!3902411)))

(declare-fun b!6432855 () Bool)

(declare-fun tp!1784346 () Bool)

(assert (=> b!6432855 (= e!3902411 tp!1784346)))

(assert (= (and b!6431238 ((_ is ElementMatch!16335) (regTwo!33183 (reg!16664 r!7292)))) b!6432853))

(assert (= (and b!6431238 ((_ is Concat!25180) (regTwo!33183 (reg!16664 r!7292)))) b!6432854))

(assert (= (and b!6431238 ((_ is Star!16335) (regTwo!33183 (reg!16664 r!7292)))) b!6432855))

(assert (= (and b!6431238 ((_ is Union!16335) (regTwo!33183 (reg!16664 r!7292)))) b!6432856))

(declare-fun b!6432858 () Bool)

(declare-fun e!3902412 () Bool)

(declare-fun tp!1784348 () Bool)

(declare-fun tp!1784352 () Bool)

(assert (=> b!6432858 (= e!3902412 (and tp!1784348 tp!1784352))))

(declare-fun b!6432860 () Bool)

(declare-fun tp!1784349 () Bool)

(declare-fun tp!1784350 () Bool)

(assert (=> b!6432860 (= e!3902412 (and tp!1784349 tp!1784350))))

(declare-fun b!6432857 () Bool)

(assert (=> b!6432857 (= e!3902412 tp_is_empty!41923)))

(assert (=> b!6431228 (= tp!1784221 e!3902412)))

(declare-fun b!6432859 () Bool)

(declare-fun tp!1784351 () Bool)

(assert (=> b!6432859 (= e!3902412 tp!1784351)))

(assert (= (and b!6431228 ((_ is ElementMatch!16335) (regOne!33182 (regOne!33182 r!7292)))) b!6432857))

(assert (= (and b!6431228 ((_ is Concat!25180) (regOne!33182 (regOne!33182 r!7292)))) b!6432858))

(assert (= (and b!6431228 ((_ is Star!16335) (regOne!33182 (regOne!33182 r!7292)))) b!6432859))

(assert (= (and b!6431228 ((_ is Union!16335) (regOne!33182 (regOne!33182 r!7292)))) b!6432860))

(declare-fun b!6432862 () Bool)

(declare-fun e!3902413 () Bool)

(declare-fun tp!1784353 () Bool)

(declare-fun tp!1784357 () Bool)

(assert (=> b!6432862 (= e!3902413 (and tp!1784353 tp!1784357))))

(declare-fun b!6432864 () Bool)

(declare-fun tp!1784354 () Bool)

(declare-fun tp!1784355 () Bool)

(assert (=> b!6432864 (= e!3902413 (and tp!1784354 tp!1784355))))

(declare-fun b!6432861 () Bool)

(assert (=> b!6432861 (= e!3902413 tp_is_empty!41923)))

(assert (=> b!6431228 (= tp!1784225 e!3902413)))

(declare-fun b!6432863 () Bool)

(declare-fun tp!1784356 () Bool)

(assert (=> b!6432863 (= e!3902413 tp!1784356)))

(assert (= (and b!6431228 ((_ is ElementMatch!16335) (regTwo!33182 (regOne!33182 r!7292)))) b!6432861))

(assert (= (and b!6431228 ((_ is Concat!25180) (regTwo!33182 (regOne!33182 r!7292)))) b!6432862))

(assert (= (and b!6431228 ((_ is Star!16335) (regTwo!33182 (regOne!33182 r!7292)))) b!6432863))

(assert (= (and b!6431228 ((_ is Union!16335) (regTwo!33182 (regOne!33182 r!7292)))) b!6432864))

(declare-fun b!6432866 () Bool)

(declare-fun e!3902414 () Bool)

(declare-fun tp!1784358 () Bool)

(declare-fun tp!1784362 () Bool)

(assert (=> b!6432866 (= e!3902414 (and tp!1784358 tp!1784362))))

(declare-fun b!6432868 () Bool)

(declare-fun tp!1784359 () Bool)

(declare-fun tp!1784360 () Bool)

(assert (=> b!6432868 (= e!3902414 (and tp!1784359 tp!1784360))))

(declare-fun b!6432865 () Bool)

(assert (=> b!6432865 (= e!3902414 tp_is_empty!41923)))

(assert (=> b!6431207 (= tp!1784199 e!3902414)))

(declare-fun b!6432867 () Bool)

(declare-fun tp!1784361 () Bool)

(assert (=> b!6432867 (= e!3902414 tp!1784361)))

(assert (= (and b!6431207 ((_ is ElementMatch!16335) (regOne!33182 (regOne!33183 r!7292)))) b!6432865))

(assert (= (and b!6431207 ((_ is Concat!25180) (regOne!33182 (regOne!33183 r!7292)))) b!6432866))

(assert (= (and b!6431207 ((_ is Star!16335) (regOne!33182 (regOne!33183 r!7292)))) b!6432867))

(assert (= (and b!6431207 ((_ is Union!16335) (regOne!33182 (regOne!33183 r!7292)))) b!6432868))

(declare-fun b!6432880 () Bool)

(declare-fun e!3902420 () Bool)

(declare-fun tp!1784363 () Bool)

(declare-fun tp!1784367 () Bool)

(assert (=> b!6432880 (= e!3902420 (and tp!1784363 tp!1784367))))

(declare-fun b!6432882 () Bool)

(declare-fun tp!1784364 () Bool)

(declare-fun tp!1784365 () Bool)

(assert (=> b!6432882 (= e!3902420 (and tp!1784364 tp!1784365))))

(declare-fun b!6432879 () Bool)

(assert (=> b!6432879 (= e!3902420 tp_is_empty!41923)))

(assert (=> b!6431207 (= tp!1784203 e!3902420)))

(declare-fun b!6432881 () Bool)

(declare-fun tp!1784366 () Bool)

(assert (=> b!6432881 (= e!3902420 tp!1784366)))

(assert (= (and b!6431207 ((_ is ElementMatch!16335) (regTwo!33182 (regOne!33183 r!7292)))) b!6432879))

(assert (= (and b!6431207 ((_ is Concat!25180) (regTwo!33182 (regOne!33183 r!7292)))) b!6432880))

(assert (= (and b!6431207 ((_ is Star!16335) (regTwo!33182 (regOne!33183 r!7292)))) b!6432881))

(assert (= (and b!6431207 ((_ is Union!16335) (regTwo!33182 (regOne!33183 r!7292)))) b!6432882))

(declare-fun b!6432884 () Bool)

(declare-fun e!3902421 () Bool)

(declare-fun tp!1784368 () Bool)

(declare-fun tp!1784372 () Bool)

(assert (=> b!6432884 (= e!3902421 (and tp!1784368 tp!1784372))))

(declare-fun b!6432886 () Bool)

(declare-fun tp!1784369 () Bool)

(declare-fun tp!1784370 () Bool)

(assert (=> b!6432886 (= e!3902421 (and tp!1784369 tp!1784370))))

(declare-fun b!6432883 () Bool)

(assert (=> b!6432883 (= e!3902421 tp_is_empty!41923)))

(assert (=> b!6431237 (= tp!1784234 e!3902421)))

(declare-fun b!6432885 () Bool)

(declare-fun tp!1784371 () Bool)

(assert (=> b!6432885 (= e!3902421 tp!1784371)))

(assert (= (and b!6431237 ((_ is ElementMatch!16335) (reg!16664 (reg!16664 r!7292)))) b!6432883))

(assert (= (and b!6431237 ((_ is Concat!25180) (reg!16664 (reg!16664 r!7292)))) b!6432884))

(assert (= (and b!6431237 ((_ is Star!16335) (reg!16664 (reg!16664 r!7292)))) b!6432885))

(assert (= (and b!6431237 ((_ is Union!16335) (reg!16664 (reg!16664 r!7292)))) b!6432886))

(declare-fun b!6432888 () Bool)

(declare-fun e!3902422 () Bool)

(declare-fun tp!1784373 () Bool)

(declare-fun tp!1784377 () Bool)

(assert (=> b!6432888 (= e!3902422 (and tp!1784373 tp!1784377))))

(declare-fun b!6432890 () Bool)

(declare-fun tp!1784374 () Bool)

(declare-fun tp!1784375 () Bool)

(assert (=> b!6432890 (= e!3902422 (and tp!1784374 tp!1784375))))

(declare-fun b!6432887 () Bool)

(assert (=> b!6432887 (= e!3902422 tp_is_empty!41923)))

(assert (=> b!6431236 (= tp!1784231 e!3902422)))

(declare-fun b!6432889 () Bool)

(declare-fun tp!1784376 () Bool)

(assert (=> b!6432889 (= e!3902422 tp!1784376)))

(assert (= (and b!6431236 ((_ is ElementMatch!16335) (regOne!33182 (reg!16664 r!7292)))) b!6432887))

(assert (= (and b!6431236 ((_ is Concat!25180) (regOne!33182 (reg!16664 r!7292)))) b!6432888))

(assert (= (and b!6431236 ((_ is Star!16335) (regOne!33182 (reg!16664 r!7292)))) b!6432889))

(assert (= (and b!6431236 ((_ is Union!16335) (regOne!33182 (reg!16664 r!7292)))) b!6432890))

(declare-fun b!6432892 () Bool)

(declare-fun e!3902423 () Bool)

(declare-fun tp!1784378 () Bool)

(declare-fun tp!1784382 () Bool)

(assert (=> b!6432892 (= e!3902423 (and tp!1784378 tp!1784382))))

(declare-fun b!6432894 () Bool)

(declare-fun tp!1784379 () Bool)

(declare-fun tp!1784380 () Bool)

(assert (=> b!6432894 (= e!3902423 (and tp!1784379 tp!1784380))))

(declare-fun b!6432891 () Bool)

(assert (=> b!6432891 (= e!3902423 tp_is_empty!41923)))

(assert (=> b!6431236 (= tp!1784235 e!3902423)))

(declare-fun b!6432893 () Bool)

(declare-fun tp!1784381 () Bool)

(assert (=> b!6432893 (= e!3902423 tp!1784381)))

(assert (= (and b!6431236 ((_ is ElementMatch!16335) (regTwo!33182 (reg!16664 r!7292)))) b!6432891))

(assert (= (and b!6431236 ((_ is Concat!25180) (regTwo!33182 (reg!16664 r!7292)))) b!6432892))

(assert (= (and b!6431236 ((_ is Star!16335) (regTwo!33182 (reg!16664 r!7292)))) b!6432893))

(assert (= (and b!6431236 ((_ is Union!16335) (regTwo!33182 (reg!16664 r!7292)))) b!6432894))

(declare-fun b!6432895 () Bool)

(declare-fun e!3902424 () Bool)

(declare-fun tp!1784383 () Bool)

(assert (=> b!6432895 (= e!3902424 (and tp_is_empty!41923 tp!1784383))))

(assert (=> b!6431243 (= tp!1784238 e!3902424)))

(assert (= (and b!6431243 ((_ is Cons!65180) (t!378920 (t!378920 s!2326)))) b!6432895))

(declare-fun b!6432897 () Bool)

(declare-fun e!3902425 () Bool)

(declare-fun tp!1784384 () Bool)

(declare-fun tp!1784388 () Bool)

(assert (=> b!6432897 (= e!3902425 (and tp!1784384 tp!1784388))))

(declare-fun b!6432899 () Bool)

(declare-fun tp!1784385 () Bool)

(declare-fun tp!1784386 () Bool)

(assert (=> b!6432899 (= e!3902425 (and tp!1784385 tp!1784386))))

(declare-fun b!6432896 () Bool)

(assert (=> b!6432896 (= e!3902425 tp_is_empty!41923)))

(assert (=> b!6431249 (= tp!1784245 e!3902425)))

(declare-fun b!6432898 () Bool)

(declare-fun tp!1784387 () Bool)

(assert (=> b!6432898 (= e!3902425 tp!1784387)))

(assert (= (and b!6431249 ((_ is ElementMatch!16335) (h!71629 (exprs!6219 (h!71630 zl!343))))) b!6432896))

(assert (= (and b!6431249 ((_ is Concat!25180) (h!71629 (exprs!6219 (h!71630 zl!343))))) b!6432897))

(assert (= (and b!6431249 ((_ is Star!16335) (h!71629 (exprs!6219 (h!71630 zl!343))))) b!6432898))

(assert (= (and b!6431249 ((_ is Union!16335) (h!71629 (exprs!6219 (h!71630 zl!343))))) b!6432899))

(declare-fun b!6432900 () Bool)

(declare-fun e!3902426 () Bool)

(declare-fun tp!1784390 () Bool)

(declare-fun tp!1784391 () Bool)

(assert (=> b!6432900 (= e!3902426 (and tp!1784390 tp!1784391))))

(assert (=> b!6431249 (= tp!1784246 e!3902426)))

(assert (= (and b!6431249 ((_ is Cons!65181) (t!378921 (exprs!6219 (h!71630 zl!343))))) b!6432900))

(declare-fun b!6432903 () Bool)

(declare-fun e!3902428 () Bool)

(declare-fun tp!1784393 () Bool)

(declare-fun tp!1784397 () Bool)

(assert (=> b!6432903 (= e!3902428 (and tp!1784393 tp!1784397))))

(declare-fun b!6432905 () Bool)

(declare-fun tp!1784394 () Bool)

(declare-fun tp!1784395 () Bool)

(assert (=> b!6432905 (= e!3902428 (and tp!1784394 tp!1784395))))

(declare-fun b!6432902 () Bool)

(assert (=> b!6432902 (= e!3902428 tp_is_empty!41923)))

(assert (=> b!6431234 (= tp!1784227 e!3902428)))

(declare-fun b!6432904 () Bool)

(declare-fun tp!1784396 () Bool)

(assert (=> b!6432904 (= e!3902428 tp!1784396)))

(assert (= (and b!6431234 ((_ is ElementMatch!16335) (regOne!33183 (regTwo!33182 r!7292)))) b!6432902))

(assert (= (and b!6431234 ((_ is Concat!25180) (regOne!33183 (regTwo!33182 r!7292)))) b!6432903))

(assert (= (and b!6431234 ((_ is Star!16335) (regOne!33183 (regTwo!33182 r!7292)))) b!6432904))

(assert (= (and b!6431234 ((_ is Union!16335) (regOne!33183 (regTwo!33182 r!7292)))) b!6432905))

(declare-fun b!6432907 () Bool)

(declare-fun e!3902429 () Bool)

(declare-fun tp!1784398 () Bool)

(declare-fun tp!1784402 () Bool)

(assert (=> b!6432907 (= e!3902429 (and tp!1784398 tp!1784402))))

(declare-fun b!6432909 () Bool)

(declare-fun tp!1784399 () Bool)

(declare-fun tp!1784400 () Bool)

(assert (=> b!6432909 (= e!3902429 (and tp!1784399 tp!1784400))))

(declare-fun b!6432906 () Bool)

(assert (=> b!6432906 (= e!3902429 tp_is_empty!41923)))

(assert (=> b!6431234 (= tp!1784228 e!3902429)))

(declare-fun b!6432908 () Bool)

(declare-fun tp!1784401 () Bool)

(assert (=> b!6432908 (= e!3902429 tp!1784401)))

(assert (= (and b!6431234 ((_ is ElementMatch!16335) (regTwo!33183 (regTwo!33182 r!7292)))) b!6432906))

(assert (= (and b!6431234 ((_ is Concat!25180) (regTwo!33183 (regTwo!33182 r!7292)))) b!6432907))

(assert (= (and b!6431234 ((_ is Star!16335) (regTwo!33183 (regTwo!33182 r!7292)))) b!6432908))

(assert (= (and b!6431234 ((_ is Union!16335) (regTwo!33183 (regTwo!33182 r!7292)))) b!6432909))

(declare-fun b!6432920 () Bool)

(declare-fun e!3902437 () Bool)

(declare-fun tp!1784403 () Bool)

(declare-fun tp!1784407 () Bool)

(assert (=> b!6432920 (= e!3902437 (and tp!1784403 tp!1784407))))

(declare-fun b!6432922 () Bool)

(declare-fun tp!1784404 () Bool)

(declare-fun tp!1784405 () Bool)

(assert (=> b!6432922 (= e!3902437 (and tp!1784404 tp!1784405))))

(declare-fun b!6432919 () Bool)

(assert (=> b!6432919 (= e!3902437 tp_is_empty!41923)))

(assert (=> b!6431213 (= tp!1784205 e!3902437)))

(declare-fun b!6432921 () Bool)

(declare-fun tp!1784406 () Bool)

(assert (=> b!6432921 (= e!3902437 tp!1784406)))

(assert (= (and b!6431213 ((_ is ElementMatch!16335) (regOne!33183 (regTwo!33183 r!7292)))) b!6432919))

(assert (= (and b!6431213 ((_ is Concat!25180) (regOne!33183 (regTwo!33183 r!7292)))) b!6432920))

(assert (= (and b!6431213 ((_ is Star!16335) (regOne!33183 (regTwo!33183 r!7292)))) b!6432921))

(assert (= (and b!6431213 ((_ is Union!16335) (regOne!33183 (regTwo!33183 r!7292)))) b!6432922))

(declare-fun b!6432924 () Bool)

(declare-fun e!3902438 () Bool)

(declare-fun tp!1784408 () Bool)

(declare-fun tp!1784412 () Bool)

(assert (=> b!6432924 (= e!3902438 (and tp!1784408 tp!1784412))))

(declare-fun b!6432926 () Bool)

(declare-fun tp!1784409 () Bool)

(declare-fun tp!1784410 () Bool)

(assert (=> b!6432926 (= e!3902438 (and tp!1784409 tp!1784410))))

(declare-fun b!6432923 () Bool)

(assert (=> b!6432923 (= e!3902438 tp_is_empty!41923)))

(assert (=> b!6431213 (= tp!1784206 e!3902438)))

(declare-fun b!6432925 () Bool)

(declare-fun tp!1784411 () Bool)

(assert (=> b!6432925 (= e!3902438 tp!1784411)))

(assert (= (and b!6431213 ((_ is ElementMatch!16335) (regTwo!33183 (regTwo!33183 r!7292)))) b!6432923))

(assert (= (and b!6431213 ((_ is Concat!25180) (regTwo!33183 (regTwo!33183 r!7292)))) b!6432924))

(assert (= (and b!6431213 ((_ is Star!16335) (regTwo!33183 (regTwo!33183 r!7292)))) b!6432925))

(assert (= (and b!6431213 ((_ is Union!16335) (regTwo!33183 (regTwo!33183 r!7292)))) b!6432926))

(declare-fun b!6432927 () Bool)

(declare-fun e!3902439 () Bool)

(declare-fun tp!1784413 () Bool)

(declare-fun tp!1784414 () Bool)

(assert (=> b!6432927 (= e!3902439 (and tp!1784413 tp!1784414))))

(assert (=> b!6431226 (= tp!1784219 e!3902439)))

(assert (= (and b!6431226 ((_ is Cons!65181) (exprs!6219 (h!71630 (t!378922 zl!343))))) b!6432927))

(declare-fun b!6432929 () Bool)

(declare-fun e!3902440 () Bool)

(declare-fun tp!1784415 () Bool)

(declare-fun tp!1784419 () Bool)

(assert (=> b!6432929 (= e!3902440 (and tp!1784415 tp!1784419))))

(declare-fun b!6432931 () Bool)

(declare-fun tp!1784416 () Bool)

(declare-fun tp!1784417 () Bool)

(assert (=> b!6432931 (= e!3902440 (and tp!1784416 tp!1784417))))

(declare-fun b!6432928 () Bool)

(assert (=> b!6432928 (= e!3902440 tp_is_empty!41923)))

(assert (=> b!6431233 (= tp!1784229 e!3902440)))

(declare-fun b!6432930 () Bool)

(declare-fun tp!1784418 () Bool)

(assert (=> b!6432930 (= e!3902440 tp!1784418)))

(assert (= (and b!6431233 ((_ is ElementMatch!16335) (reg!16664 (regTwo!33182 r!7292)))) b!6432928))

(assert (= (and b!6431233 ((_ is Concat!25180) (reg!16664 (regTwo!33182 r!7292)))) b!6432929))

(assert (= (and b!6431233 ((_ is Star!16335) (reg!16664 (regTwo!33182 r!7292)))) b!6432930))

(assert (= (and b!6431233 ((_ is Union!16335) (reg!16664 (regTwo!33182 r!7292)))) b!6432931))

(declare-fun b!6432933 () Bool)

(declare-fun e!3902441 () Bool)

(declare-fun tp!1784420 () Bool)

(declare-fun tp!1784424 () Bool)

(assert (=> b!6432933 (= e!3902441 (and tp!1784420 tp!1784424))))

(declare-fun b!6432935 () Bool)

(declare-fun tp!1784421 () Bool)

(declare-fun tp!1784422 () Bool)

(assert (=> b!6432935 (= e!3902441 (and tp!1784421 tp!1784422))))

(declare-fun b!6432932 () Bool)

(assert (=> b!6432932 (= e!3902441 tp_is_empty!41923)))

(assert (=> b!6431212 (= tp!1784207 e!3902441)))

(declare-fun b!6432934 () Bool)

(declare-fun tp!1784423 () Bool)

(assert (=> b!6432934 (= e!3902441 tp!1784423)))

(assert (= (and b!6431212 ((_ is ElementMatch!16335) (reg!16664 (regTwo!33183 r!7292)))) b!6432932))

(assert (= (and b!6431212 ((_ is Concat!25180) (reg!16664 (regTwo!33183 r!7292)))) b!6432933))

(assert (= (and b!6431212 ((_ is Star!16335) (reg!16664 (regTwo!33183 r!7292)))) b!6432934))

(assert (= (and b!6431212 ((_ is Union!16335) (reg!16664 (regTwo!33183 r!7292)))) b!6432935))

(declare-fun b!6432939 () Bool)

(declare-fun e!3902445 () Bool)

(declare-fun tp!1784425 () Bool)

(assert (=> b!6432939 (= e!3902445 tp!1784425)))

(declare-fun e!3902444 () Bool)

(declare-fun tp!1784426 () Bool)

(declare-fun b!6432938 () Bool)

(assert (=> b!6432938 (= e!3902444 (and (inv!84084 (h!71630 (t!378922 (t!378922 zl!343)))) e!3902445 tp!1784426))))

(assert (=> b!6431225 (= tp!1784220 e!3902444)))

(assert (= b!6432938 b!6432939))

(assert (= (and b!6431225 ((_ is Cons!65182) (t!378922 (t!378922 zl!343)))) b!6432938))

(declare-fun m!7226576 () Bool)

(assert (=> b!6432938 m!7226576))

(declare-fun b_lambda!244371 () Bool)

(assert (= b_lambda!244343 (or b!6430098 b_lambda!244371)))

(assert (=> d!2016085 d!2015927))

(declare-fun b_lambda!244373 () Bool)

(assert (= b_lambda!244349 (or d!2015705 b_lambda!244373)))

(declare-fun bs!1618625 () Bool)

(declare-fun d!2016733 () Bool)

(assert (= bs!1618625 (and d!2016733 d!2015705)))

(assert (=> bs!1618625 (= (dynLambda!25894 lambda!355761 (h!71629 (unfocusZipperList!1756 zl!343))) (validRegex!8071 (h!71629 (unfocusZipperList!1756 zl!343))))))

(declare-fun m!7226590 () Bool)

(assert (=> bs!1618625 m!7226590))

(assert (=> b!6432120 d!2016733))

(declare-fun b_lambda!244375 () Bool)

(assert (= b_lambda!244359 (or d!2015651 b_lambda!244375)))

(declare-fun bs!1618627 () Bool)

(declare-fun d!2016737 () Bool)

(assert (= bs!1618627 (and d!2016737 d!2015651)))

(assert (=> bs!1618627 (= (dynLambda!25894 lambda!355744 (h!71629 (exprs!6219 lt!2379362))) (validRegex!8071 (h!71629 (exprs!6219 lt!2379362))))))

(declare-fun m!7226592 () Bool)

(assert (=> bs!1618627 m!7226592))

(assert (=> b!6432404 d!2016737))

(declare-fun b_lambda!244377 () Bool)

(assert (= b_lambda!244365 (or d!2015713 b_lambda!244377)))

(declare-fun bs!1618629 () Bool)

(declare-fun d!2016739 () Bool)

(assert (= bs!1618629 (and d!2016739 d!2015713)))

(assert (=> bs!1618629 (= (dynLambda!25894 lambda!355764 (h!71629 lt!2379471)) (validRegex!8071 (h!71629 lt!2379471)))))

(declare-fun m!7226596 () Bool)

(assert (=> bs!1618629 m!7226596))

(assert (=> b!6432700 d!2016739))

(declare-fun b_lambda!244379 () Bool)

(assert (= b_lambda!244345 (or b!6430098 b_lambda!244379)))

(assert (=> d!2016095 d!2015931))

(declare-fun b_lambda!244381 () Bool)

(assert (= b_lambda!244357 (or d!2015907 b_lambda!244381)))

(declare-fun bs!1618630 () Bool)

(declare-fun d!2016743 () Bool)

(assert (= bs!1618630 (and d!2016743 d!2015907)))

(assert (=> bs!1618630 (= (dynLambda!25894 lambda!355817 (h!71629 (exprs!6219 (h!71630 zl!343)))) (validRegex!8071 (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(declare-fun m!7226598 () Bool)

(assert (=> bs!1618630 m!7226598))

(assert (=> b!6432402 d!2016743))

(declare-fun b_lambda!244383 () Bool)

(assert (= b_lambda!244367 (or d!2015603 b_lambda!244383)))

(declare-fun bs!1618631 () Bool)

(declare-fun d!2016745 () Bool)

(assert (= bs!1618631 (and d!2016745 d!2015603)))

(assert (=> bs!1618631 (= (dynLambda!25894 lambda!355733 (h!71629 (exprs!6219 (h!71630 zl!343)))) (validRegex!8071 (h!71629 (exprs!6219 (h!71630 zl!343)))))))

(assert (=> bs!1618631 m!7226598))

(assert (=> b!6432744 d!2016745))

(declare-fun b_lambda!244385 () Bool)

(assert (= b_lambda!244341 (or b!6430098 b_lambda!244385)))

(assert (=> d!2016057 d!2015929))

(declare-fun b_lambda!244387 () Bool)

(assert (= b_lambda!244361 (or d!2015739 b_lambda!244387)))

(declare-fun bs!1618632 () Bool)

(declare-fun d!2016747 () Bool)

(assert (= bs!1618632 (and d!2016747 d!2015739)))

(assert (=> bs!1618632 (= (dynLambda!25894 lambda!355765 (h!71629 (exprs!6219 setElem!43908))) (validRegex!8071 (h!71629 (exprs!6219 setElem!43908))))))

(declare-fun m!7226600 () Bool)

(assert (=> bs!1618632 m!7226600))

(assert (=> b!6432457 d!2016747))

(declare-fun b_lambda!244389 () Bool)

(assert (= b_lambda!244363 (or b!6430098 b_lambda!244389)))

(assert (=> d!2016577 d!2015925))

(check-sat (not b!6432316) (not b!6432903) (not b!6431739) (not b!6432096) (not b!6432798) (not d!2015991) (not d!2016127) (not d!2016343) (not b!6432868) (not b!6432806) (not b!6432907) (not b_lambda!244335) (not d!2016607) (not b!6432701) (not d!2016551) (not d!2015953) (not b!6432821) (not b!6431713) (not setNonEmpty!43924) (not b!6431580) (not d!2016625) (not b_lambda!244381) (not bm!553206) (not d!2016085) (not b!6432181) (not bm!553229) (not bm!553178) (not b!6431890) (not b!6431938) (not bm!553217) (not b!6431563) (not d!2016449) (not b!6431587) (not b!6432839) (not b!6432588) (not b!6432215) (not b!6432638) (not b!6432324) (not d!2016565) (not b!6431275) (not d!2016273) (not b!6431652) (not b!6432634) (not b!6432027) (not b!6431403) (not bm!553244) (not d!2016051) (not bm!553190) (not b!6431306) (not d!2016395) (not bm!553182) (not bm!553406) (not b!6432586) (not bm!553167) (not b!6431681) (not b!6432514) (not d!2016195) (not b_lambda!244385) (not d!2016691) (not bm!553215) (not b!6432899) (not bm!553403) (not b!6431515) (not b!6432921) (not b_lambda!244379) (not b!6432858) (not d!2015967) (not b!6431401) (not b!6431301) (not b!6432893) (not d!2016135) (not b!6432554) (not b!6432090) (not b!6432898) (not b!6432380) (not b!6432920) (not d!2016469) (not b!6431469) (not b!6431379) (not d!2016661) (not b!6432022) (not b!6432597) (not b!6432507) (not b!6432847) (not b!6431951) (not bm!553242) (not d!2016461) (not b!6432018) (not b!6431826) (not b!6431900) (not d!2016261) (not b!6432799) (not b!6431259) (not d!2015989) (not bm!553198) (not d!2016063) (not bm!553209) (not b!6431368) (not d!2016561) (not d!2016121) (not b!6431704) (not b_lambda!244389) (not b!6431560) (not b!6432580) (not b!6432670) (not b!6432866) (not b!6432623) (not b!6432797) (not bm!553200) (not b!6431746) (not b!6431643) (not b!6431549) (not b_lambda!244383) (not d!2015975) (not d!2015985) (not b!6431440) (not b!6431473) (not d!2016477) (not bm!553184) (not b!6432925) (not b!6432583) (not d!2016229) (not b!6431892) (not b!6432304) (not b!6432838) (not b!6432905) (not d!2015969) (not b!6431513) (not bm!553303) (not b!6432303) (not b!6432668) (not b!6432842) (not b!6431535) (not d!2016609) (not bm!553162) (not d!2016069) (not bm!553302) (not d!2016687) (not b!6431447) (not d!2015933) (not b!6432473) (not b!6432310) (not d!2016549) (not b!6431712) (not b!6431344) (not b!6432127) (not b!6431435) (not b!6432908) (not bm!553419) (not bm!553165) (not b!6432863) (not b!6432854) (not b!6432931) (not b!6431553) (not d!2016031) (not b!6432856) (not b!6432091) (not b!6431536) (not d!2016509) (not b!6432922) (not b!6432222) (not bm!553290) (not b!6431420) (not b!6432442) (not b!6432133) (not b!6432707) (not b!6431393) (not d!2016141) (not b!6432009) (not d!2015947) (not b!6431815) (not bm!553402) (not b!6432789) (not b!6432171) (not d!2016047) (not b!6432560) (not b!6432274) (not b!6432129) (not b!6432934) (not b!6432938) (not d!2016457) (not d!2016655) (not b!6432844) (not d!2016473) (not b!6431278) (not b!6431585) (not bm!553443) (not b!6431734) (not bm!553199) (not bm!553166) (not bm!553187) (not bm!553364) (not b!6432503) tp_is_empty!41923 (not d!2016591) (not b!6432033) (not bm!553224) (not b!6431498) (not b!6431554) (not b!6431901) (not d!2016357) (not b!6432101) (not d!2016161) (not b!6432888) (not bm!553363) (not b!6431468) (not d!2015981) (not d!2016415) (not d!2016527) (not b!6432933) (not b!6431558) (not b!6431269) (not bm!553268) (not b!6432881) (not b!6431436) (not b!6432592) (not b!6432559) (not bm!553316) (not b!6431526) (not b!6432593) (not b!6432640) (not b!6431718) (not b!6431625) (not b!6432745) (not d!2016291) (not b!6432851) (not b!6432185) (not b!6432524) (not b!6431578) (not b!6432508) (not bs!1618630) (not b!6431905) (not b!6432929) (not b!6432582) (not b!6432165) (not d!2016013) (not b!6431305) (not bs!1618629) (not bm!553226) (not b!6432813) (not b!6431581) (not b!6432807) (not d!2016091) (not b!6432624) (not b!6431356) (not b!6431686) (not b!6432564) (not d!2016659) (not b!6432486) (not b!6431530) (not b!6432546) (not d!2016311) (not b!6432433) (not b!6432599) (not bm!553241) (not d!2016331) (not b!6432137) (not d!2016081) (not bm!553388) (not b!6431345) (not bm!553275) (not b!6431735) (not bm!553420) (not bm!553227) (not b!6431662) (not d!2016059) (not b!6432045) (not b!6432585) (not b!6431707) (not b!6432855) (not b!6431981) (not b!6431505) (not bm!553315) (not b!6431824) (not b!6431654) (not d!2015971) (not b!6431478) (not d!2016337) (not bm!553203) (not d!2015999) (not b!6432099) (not bm!553340) (not b!6431487) (not b!6432885) (not b!6432315) (not b!6431527) (not b!6432791) (not b!6432435) (not b!6431532) (not b!6432889) (not b!6431610) (not bm!553368) (not bm!553211) (not d!2016539) (not b!6432531) (not d!2016073) (not b!6431300) (not bm!553234) (not b!6432471) (not d!2016711) (not b!6432501) (not b!6432628) (not b!6431708) (not d!2015995) (not b!6432555) (not b!6432793) (not d!2016095) (not bm!553301) (not bm!553362) (not b!6432587) (not bm!553298) (not b!6432124) (not b!6432818) (not b!6432506) (not b!6432362) (not b!6432276) (not d!2016583) (not bs!1618632) (not d!2016605) (not setNonEmpty!43923) (not b!6431609) (not b!6432817) (not d!2016137) (not d!2015957) (not bm!553249) (not b!6432337) (not b!6431310) (not b!6432812) (not b!6432138) (not bm!553251) (not b!6431974) (not d!2016535) (not b!6432637) (not bm!553435) (not bm!553212) (not b!6431409) (not b!6431604) (not bm!553344) (not b!6431744) (not b!6431576) (not b!6431666) (not d!2016513) (not b!6431648) (not bm!553261) (not b!6431820) (not b!6431906) (not bm!553365) (not b!6432436) (not d!2016171) (not b!6431852) (not bm!553356) (not bm!553299) (not b!6432816) (not b!6432042) (not bm!553282) (not b!6431463) (not bm!553208) (not bm!553300) (not b!6432322) (not b!6432403) (not b!6432608) (not b!6432790) (not b!6432031) (not bm!553281) (not b!6432886) (not b!6432654) (not bm!553284) (not setNonEmpty!43917) (not d!2016233) (not b!6432820) (not d!2016227) (not b!6431724) (not d!2016067) (not b!6432575) (not d!2016089) (not b!6431944) (not b!6431966) (not b!6431548) (not b!6432453) (not b!6431274) (not b!6431372) (not b!6432880) (not bm!553183) (not b_lambda!244373) (not b!6431464) (not b!6431359) (not d!2016131) (not d!2016503) (not bm!553231) (not d!2016619) (not b!6431525) (not b!6431341) (not b!6432862) (not setNonEmpty!43921) (not bs!1618625) (not d!2016629) (not bm!553441) (not d!2016579) (not b!6431533) (not d!2016597) (not bm!553207) (not b!6431523) (not b!6432809) (not b!6432543) (not b!6432894) (not bm!553228) (not b!6432692) (not b!6431475) (not b!6432803) (not b!6432852) (not d!2016649) (not b!6431682) (not b!6432142) (not b!6431780) (not b!6431859) (not b!6432481) (not b!6431740) (not bm!553292) (not b!6432132) (not bm!553219) (not b!6432743) (not b!6432526) (not bm!553276) (not bm!553297) (not b!6431700) (not b!6431616) (not bm!553277) (not b!6432527) (not b!6432311) (not b!6431350) (not bm!553218) (not b!6431377) (not bm!553192) (not b!6432804) (not b!6431912) (not b!6432108) (not d!2016175) (not d!2016119) (not b!6432504) (not bm!553295) (not bm!553330) (not d!2016025) (not bm!553202) (not bm!553312) (not b!6432282) (not b!6431394) (not b!6431733) (not d!2016033) (not b!6432272) (not d!2015943) (not b!6432864) (not b!6431605) (not d!2016367) (not b!6431349) (not b!6432482) (not d!2015941) (not bm!553181) (not d!2016011) (not d!2016683) (not d!2015987) (not b!6432021) (not b!6431265) (not b!6432927) (not b!6431251) (not bm!553285) (not b!6431731) (not b!6432469) (not b!6432939) (not bm!553272) (not d!2016547) (not b!6432277) (not d!2016369) (not b!6432087) (not b!6431849) (not bm!553250) (not b!6432581) (not b!6432549) (not b!6432924) (not b!6432669) (not b!6431456) (not b!6432566) (not bm!553360) (not b!6431264) (not bm!553386) (not b!6432169) (not d!2016593) (not d!2016313) (not b!6432633) (not b!6432850) (not b!6431959) (not b!6431776) (not b!6431427) (not b_lambda!244333) (not d!2016023) (not bm!553331) (not d!2016339) (not b!6432848) (not b!6432655) (not b!6432935) (not b!6431588) (not bm!553309) (not b!6432131) (not bm!553193) (not bm!553186) (not b!6431688) (not b!6431492) (not b!6432895) (not b!6432808) (not b!6432794) (not b!6432125) (not b!6432843) (not b!6432458) (not d!2016163) (not b!6432897) (not d!2016071) (not d!2016057) (not b!6431292) (not b!6431677) (not d!2016271) (not b_lambda!244371) (not b!6432093) (not b!6432121) (not d!2016021) (not b!6432437) (not b!6431271) (not bm!553269) (not b!6432884) (not b!6432632) (not b!6431496) (not bm!553438) (not bm!553233) (not b!6431279) (not b!6432840) (not bm!553221) (not b!6431722) (not b!6432846) (not b!6432088) (not b!6432801) (not bm!553398) (not b!6432160) (not b!6432822) (not d!2016157) (not b!6432859) (not b_lambda!244375) (not b!6431729) (not b!6431402) (not b!6432100) (not b!6432416) (not b!6431910) (not b!6432810) (not b!6431445) (not b!6431542) (not b!6432485) (not d!2016393) (not d!2016353) (not d!2016019) (not bm!553401) (not bm!553311) (not b!6432627) (not d!2016389) (not b!6431765) (not b!6431921) (not bm!553248) (not bm!553397) (not b!6431486) (not d!2016577) (not b!6432405) (not b!6432892) (not d!2016315) (not d!2016173) (not bm!553308) (not b!6431642) (not bm!553317) (not b!6431528) (not bm!553433) (not b!6432860) (not d!2016317) (not b!6432187) (not b!6431367) (not d!2016627) (not bm!553270) (not b!6432553) (not b_lambda!244387) (not b!6431676) (not b!6432795) (not b!6431441) (not d!2016115) (not b!6432052) (not bs!1618631) (not bm!553357) (not b!6431354) (not bs!1618627) (not b!6432725) (not b!6432814) (not b!6432440) (not b!6432502) (not bm!553237) (not b!6432522) (not bm!553375) (not b!6431778) (not d!2015977) (not bm!553196) (not b!6432512) (not b!6431614) (not b!6432183) (not bm!553423) (not bm!553387) (not bm!553345) (not d!2016327) (not b!6432909) (not d!2016325) (not b!6431649) (not b!6432092) (not b!6432019) (not b_lambda!244339) (not d!2016361) (not b!6432174) (not bm!553333) (not b!6431814) (not b_lambda!244337) (not b!6432926) (not d!2016595) (not b!6432802) (not b!6431312) (not b!6431651) (not bm!553258) (not d!2015955) (not b!6432635) (not b!6432904) (not d!2016181) (not b!6432122) (not bm!553263) (not bm!553430) (not bm!553425) (not b!6432144) (not b!6432548) (not b!6432529) (not b!6431260) (not b!6432438) (not b_lambda!244377) (not bm!553376) (not bm!553288) (not setNonEmpty!43922) (not b!6431491) (not b!6432094) (not bm!553369) (not b!6432474) (not b!6432283) (not b!6431717) (not b!6432026) (not b!6432180) (not b!6432525) (not b!6432164) (not b!6432930) (not b!6432159) (not b!6432900) (not bm!553396) (not bm!553163) (not d!2016037) (not b!6431373) (not b!6432867) (not b!6432882) (not bm!553169) (not d!2016351) (not b!6432890) (not d!2015939) (not d!2016553) (not b!6432674) (not b!6432126) (not b!6431819))
(check-sat)
