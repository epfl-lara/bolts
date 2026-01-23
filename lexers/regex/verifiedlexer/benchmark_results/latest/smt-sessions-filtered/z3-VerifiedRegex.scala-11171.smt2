; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!581544 () Bool)

(assert start!581544)

(declare-fun b!5600024 () Bool)

(assert (=> b!5600024 true))

(assert (=> b!5600024 true))

(declare-fun lambda!300773 () Int)

(declare-fun lambda!300772 () Int)

(assert (=> b!5600024 (not (= lambda!300773 lambda!300772))))

(assert (=> b!5600024 true))

(assert (=> b!5600024 true))

(declare-fun b!5600005 () Bool)

(assert (=> b!5600005 true))

(declare-fun b!5599992 () Bool)

(declare-fun res!2375258 () Bool)

(declare-fun e!3454323 () Bool)

(assert (=> b!5599992 (=> res!2375258 e!3454323)))

(declare-datatypes ((C!31448 0))(
  ( (C!31449 (val!25426 Int)) )
))
(declare-datatypes ((Regex!15589 0))(
  ( (ElementMatch!15589 (c!981936 C!31448)) (Concat!24434 (regOne!31690 Regex!15589) (regTwo!31690 Regex!15589)) (EmptyExpr!15589) (Star!15589 (reg!15918 Regex!15589)) (EmptyLang!15589) (Union!15589 (regOne!31691 Regex!15589) (regTwo!31691 Regex!15589)) )
))
(declare-datatypes ((List!63066 0))(
  ( (Nil!62942) (Cons!62942 (h!69390 Regex!15589) (t!376352 List!63066)) )
))
(declare-datatypes ((Context!9946 0))(
  ( (Context!9947 (exprs!5473 List!63066)) )
))
(declare-datatypes ((List!63067 0))(
  ( (Nil!62943) (Cons!62943 (h!69391 Context!9946) (t!376353 List!63067)) )
))
(declare-fun zl!343 () List!63067)

(declare-fun isEmpty!34766 (List!63066) Bool)

(assert (=> b!5599992 (= res!2375258 (isEmpty!34766 (t!376352 (exprs!5473 (h!69391 zl!343)))))))

(declare-fun b!5599993 () Bool)

(declare-fun e!3454324 () Bool)

(declare-fun tp_is_empty!40431 () Bool)

(declare-fun tp!1548398 () Bool)

(assert (=> b!5599993 (= e!3454324 (and tp_is_empty!40431 tp!1548398))))

(declare-fun b!5599994 () Bool)

(declare-fun res!2375257 () Bool)

(declare-fun e!3454334 () Bool)

(assert (=> b!5599994 (=> (not res!2375257) (not e!3454334))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9946))

(declare-fun toList!9373 ((InoxSet Context!9946)) List!63067)

(assert (=> b!5599994 (= res!2375257 (= (toList!9373 z!1189) zl!343))))

(declare-fun setIsEmpty!37363 () Bool)

(declare-fun setRes!37363 () Bool)

(assert (=> setIsEmpty!37363 setRes!37363))

(declare-fun b!5599995 () Bool)

(declare-fun res!2375262 () Bool)

(declare-fun e!3454331 () Bool)

(assert (=> b!5599995 (=> res!2375262 e!3454331)))

(declare-fun isEmpty!34767 (List!63067) Bool)

(assert (=> b!5599995 (= res!2375262 (not (isEmpty!34767 (t!376353 zl!343))))))

(declare-fun res!2375261 () Bool)

(assert (=> start!581544 (=> (not res!2375261) (not e!3454334))))

(declare-fun r!7292 () Regex!15589)

(declare-fun validRegex!7325 (Regex!15589) Bool)

(assert (=> start!581544 (= res!2375261 (validRegex!7325 r!7292))))

(assert (=> start!581544 e!3454334))

(declare-fun e!3454339 () Bool)

(assert (=> start!581544 e!3454339))

(declare-fun condSetEmpty!37363 () Bool)

(assert (=> start!581544 (= condSetEmpty!37363 (= z!1189 ((as const (Array Context!9946 Bool)) false)))))

(assert (=> start!581544 setRes!37363))

(declare-fun e!3454325 () Bool)

(assert (=> start!581544 e!3454325))

(assert (=> start!581544 e!3454324))

(declare-fun b!5599996 () Bool)

(declare-fun tp!1548406 () Bool)

(declare-fun tp!1548407 () Bool)

(assert (=> b!5599996 (= e!3454339 (and tp!1548406 tp!1548407))))

(declare-fun b!5599997 () Bool)

(declare-fun e!3454327 () Bool)

(declare-fun e!3454341 () Bool)

(assert (=> b!5599997 (= e!3454327 e!3454341)))

(declare-fun res!2375250 () Bool)

(assert (=> b!5599997 (=> res!2375250 e!3454341)))

(declare-fun e!3454328 () Bool)

(assert (=> b!5599997 (= res!2375250 e!3454328)))

(declare-fun res!2375256 () Bool)

(assert (=> b!5599997 (=> (not res!2375256) (not e!3454328))))

(declare-fun lt!2257018 () (InoxSet Context!9946))

(declare-datatypes ((List!63068 0))(
  ( (Nil!62944) (Cons!62944 (h!69392 C!31448) (t!376354 List!63068)) )
))
(declare-fun s!2326 () List!63068)

(declare-fun lt!2257003 () Bool)

(declare-fun matchZipper!1727 ((InoxSet Context!9946) List!63068) Bool)

(assert (=> b!5599997 (= res!2375256 (not (= (matchZipper!1727 lt!2257018 (t!376354 s!2326)) lt!2257003)))))

(declare-fun lt!2257005 () (InoxSet Context!9946))

(declare-fun e!3454336 () Bool)

(assert (=> b!5599997 (= (matchZipper!1727 lt!2257005 (t!376354 s!2326)) e!3454336)))

(declare-fun res!2375263 () Bool)

(assert (=> b!5599997 (=> res!2375263 e!3454336)))

(assert (=> b!5599997 (= res!2375263 lt!2257003)))

(declare-fun lt!2257023 () (InoxSet Context!9946))

(assert (=> b!5599997 (= lt!2257003 (matchZipper!1727 lt!2257023 (t!376354 s!2326)))))

(declare-datatypes ((Unit!155804 0))(
  ( (Unit!155805) )
))
(declare-fun lt!2257026 () Unit!155804)

(declare-fun lt!2257017 () (InoxSet Context!9946))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!614 ((InoxSet Context!9946) (InoxSet Context!9946) List!63068) Unit!155804)

(assert (=> b!5599997 (= lt!2257026 (lemmaZipperConcatMatchesSameAsBothZippers!614 lt!2257023 lt!2257017 (t!376354 s!2326)))))

(declare-fun b!5599998 () Bool)

(declare-fun e!3454342 () Unit!155804)

(declare-fun Unit!155806 () Unit!155804)

(assert (=> b!5599998 (= e!3454342 Unit!155806)))

(declare-fun lt!2257032 () (InoxSet Context!9946))

(declare-fun lt!2257024 () Unit!155804)

(assert (=> b!5599998 (= lt!2257024 (lemmaZipperConcatMatchesSameAsBothZippers!614 lt!2257017 lt!2257032 (t!376354 s!2326)))))

(declare-fun res!2375247 () Bool)

(assert (=> b!5599998 (= res!2375247 (matchZipper!1727 lt!2257017 (t!376354 s!2326)))))

(declare-fun e!3454340 () Bool)

(assert (=> b!5599998 (=> res!2375247 e!3454340)))

(assert (=> b!5599998 (= (matchZipper!1727 ((_ map or) lt!2257017 lt!2257032) (t!376354 s!2326)) e!3454340)))

(declare-fun b!5599999 () Bool)

(declare-fun e!3454326 () Unit!155804)

(declare-fun Unit!155807 () Unit!155804)

(assert (=> b!5599999 (= e!3454326 Unit!155807)))

(declare-fun lt!2257016 () Unit!155804)

(assert (=> b!5599999 (= lt!2257016 (lemmaZipperConcatMatchesSameAsBothZippers!614 lt!2257018 lt!2257032 (t!376354 s!2326)))))

(declare-fun res!2375259 () Bool)

(assert (=> b!5599999 (= res!2375259 (matchZipper!1727 lt!2257018 (t!376354 s!2326)))))

(declare-fun e!3454338 () Bool)

(assert (=> b!5599999 (=> res!2375259 e!3454338)))

(assert (=> b!5599999 (= (matchZipper!1727 ((_ map or) lt!2257018 lt!2257032) (t!376354 s!2326)) e!3454338)))

(declare-fun b!5600000 () Bool)

(declare-fun e!3454335 () Bool)

(assert (=> b!5600000 (= e!3454335 (matchZipper!1727 lt!2257032 (t!376354 s!2326)))))

(declare-fun b!5600001 () Bool)

(declare-fun res!2375251 () Bool)

(assert (=> b!5600001 (=> res!2375251 e!3454331)))

(declare-fun generalisedUnion!1452 (List!63066) Regex!15589)

(declare-fun unfocusZipperList!1017 (List!63067) List!63066)

(assert (=> b!5600001 (= res!2375251 (not (= r!7292 (generalisedUnion!1452 (unfocusZipperList!1017 zl!343)))))))

(declare-fun b!5600002 () Bool)

(declare-fun res!2375248 () Bool)

(assert (=> b!5600002 (=> res!2375248 e!3454331)))

(get-info :version)

(assert (=> b!5600002 (= res!2375248 (not ((_ is Cons!62942) (exprs!5473 (h!69391 zl!343)))))))

(declare-fun b!5600003 () Bool)

(declare-fun e!3454330 () Bool)

(assert (=> b!5600003 (= e!3454330 e!3454327)))

(declare-fun res!2375260 () Bool)

(assert (=> b!5600003 (=> res!2375260 e!3454327)))

(assert (=> b!5600003 (= res!2375260 (not (= lt!2257018 lt!2257005)))))

(assert (=> b!5600003 (= lt!2257005 ((_ map or) lt!2257023 lt!2257017))))

(declare-fun lt!2257007 () Context!9946)

(declare-fun derivationStepZipperDown!931 (Regex!15589 Context!9946 C!31448) (InoxSet Context!9946))

(assert (=> b!5600003 (= lt!2257017 (derivationStepZipperDown!931 (regTwo!31691 (regOne!31690 r!7292)) lt!2257007 (h!69392 s!2326)))))

(assert (=> b!5600003 (= lt!2257023 (derivationStepZipperDown!931 (regOne!31691 (regOne!31690 r!7292)) lt!2257007 (h!69392 s!2326)))))

(declare-fun b!5600004 () Bool)

(assert (=> b!5600004 (= e!3454341 true)))

(declare-fun lt!2257006 () Bool)

(declare-fun e!3454329 () Bool)

(assert (=> b!5600004 (= lt!2257006 e!3454329)))

(declare-fun res!2375265 () Bool)

(assert (=> b!5600004 (=> res!2375265 e!3454329)))

(declare-fun lt!2257015 () Bool)

(assert (=> b!5600004 (= res!2375265 lt!2257015)))

(declare-fun lt!2257011 () Bool)

(assert (=> b!5600004 (= lt!2257011 (matchZipper!1727 z!1189 s!2326))))

(declare-fun lt!2257022 () (InoxSet Context!9946))

(assert (=> b!5600004 (= lt!2257015 (matchZipper!1727 lt!2257022 s!2326))))

(declare-fun lt!2257029 () Unit!155804)

(assert (=> b!5600004 (= lt!2257029 e!3454342)))

(declare-fun c!981935 () Bool)

(declare-fun nullable!5621 (Regex!15589) Bool)

(assert (=> b!5600004 (= c!981935 (nullable!5621 (regTwo!31691 (regOne!31690 r!7292))))))

(declare-fun lt!2257010 () (InoxSet Context!9946))

(declare-fun lambda!300774 () Int)

(declare-fun lt!2257001 () Context!9946)

(declare-fun flatMap!1202 ((InoxSet Context!9946) Int) (InoxSet Context!9946))

(declare-fun derivationStepZipperUp!857 (Context!9946 C!31448) (InoxSet Context!9946))

(assert (=> b!5600004 (= (flatMap!1202 lt!2257010 lambda!300774) (derivationStepZipperUp!857 lt!2257001 (h!69392 s!2326)))))

(declare-fun lt!2257002 () Unit!155804)

(declare-fun lemmaFlatMapOnSingletonSet!734 ((InoxSet Context!9946) Context!9946 Int) Unit!155804)

(assert (=> b!5600004 (= lt!2257002 (lemmaFlatMapOnSingletonSet!734 lt!2257010 lt!2257001 lambda!300774))))

(declare-fun lt!2257013 () (InoxSet Context!9946))

(assert (=> b!5600004 (= lt!2257013 (derivationStepZipperUp!857 lt!2257001 (h!69392 s!2326)))))

(declare-fun lt!2257009 () Unit!155804)

(declare-fun e!3454332 () Unit!155804)

(assert (=> b!5600004 (= lt!2257009 e!3454332)))

(declare-fun c!981933 () Bool)

(assert (=> b!5600004 (= c!981933 (nullable!5621 (regOne!31691 (regOne!31690 r!7292))))))

(declare-fun lt!2257019 () Context!9946)

(assert (=> b!5600004 (= (flatMap!1202 lt!2257022 lambda!300774) (derivationStepZipperUp!857 lt!2257019 (h!69392 s!2326)))))

(declare-fun lt!2257012 () Unit!155804)

(assert (=> b!5600004 (= lt!2257012 (lemmaFlatMapOnSingletonSet!734 lt!2257022 lt!2257019 lambda!300774))))

(declare-fun lt!2257020 () (InoxSet Context!9946))

(assert (=> b!5600004 (= lt!2257020 (derivationStepZipperUp!857 lt!2257019 (h!69392 s!2326)))))

(assert (=> b!5600004 (= lt!2257010 (store ((as const (Array Context!9946 Bool)) false) lt!2257001 true))))

(assert (=> b!5600004 (= lt!2257001 (Context!9947 (Cons!62942 (regTwo!31691 (regOne!31690 r!7292)) (t!376352 (exprs!5473 (h!69391 zl!343))))))))

(assert (=> b!5600004 (= lt!2257022 (store ((as const (Array Context!9946 Bool)) false) lt!2257019 true))))

(assert (=> b!5600004 (= lt!2257019 (Context!9947 (Cons!62942 (regOne!31691 (regOne!31690 r!7292)) (t!376352 (exprs!5473 (h!69391 zl!343))))))))

(declare-fun setNonEmpty!37363 () Bool)

(declare-fun e!3454333 () Bool)

(declare-fun tp!1548403 () Bool)

(declare-fun setElem!37363 () Context!9946)

(declare-fun inv!82219 (Context!9946) Bool)

(assert (=> setNonEmpty!37363 (= setRes!37363 (and tp!1548403 (inv!82219 setElem!37363) e!3454333))))

(declare-fun setRest!37363 () (InoxSet Context!9946))

(assert (=> setNonEmpty!37363 (= z!1189 ((_ map or) (store ((as const (Array Context!9946 Bool)) false) setElem!37363 true) setRest!37363))))

(assert (=> b!5600005 (= e!3454323 e!3454330)))

(declare-fun res!2375255 () Bool)

(assert (=> b!5600005 (=> res!2375255 e!3454330)))

(assert (=> b!5600005 (= res!2375255 (or (and ((_ is ElementMatch!15589) (regOne!31690 r!7292)) (= (c!981936 (regOne!31690 r!7292)) (h!69392 s!2326))) (not ((_ is Union!15589) (regOne!31690 r!7292)))))))

(declare-fun lt!2257025 () Unit!155804)

(assert (=> b!5600005 (= lt!2257025 e!3454326)))

(declare-fun c!981934 () Bool)

(assert (=> b!5600005 (= c!981934 (nullable!5621 (h!69390 (exprs!5473 (h!69391 zl!343)))))))

(assert (=> b!5600005 (= (flatMap!1202 z!1189 lambda!300774) (derivationStepZipperUp!857 (h!69391 zl!343) (h!69392 s!2326)))))

(declare-fun lt!2257031 () Unit!155804)

(assert (=> b!5600005 (= lt!2257031 (lemmaFlatMapOnSingletonSet!734 z!1189 (h!69391 zl!343) lambda!300774))))

(assert (=> b!5600005 (= lt!2257032 (derivationStepZipperUp!857 lt!2257007 (h!69392 s!2326)))))

(assert (=> b!5600005 (= lt!2257018 (derivationStepZipperDown!931 (h!69390 (exprs!5473 (h!69391 zl!343))) lt!2257007 (h!69392 s!2326)))))

(assert (=> b!5600005 (= lt!2257007 (Context!9947 (t!376352 (exprs!5473 (h!69391 zl!343)))))))

(declare-fun lt!2257004 () (InoxSet Context!9946))

(assert (=> b!5600005 (= lt!2257004 (derivationStepZipperUp!857 (Context!9947 (Cons!62942 (h!69390 (exprs!5473 (h!69391 zl!343))) (t!376352 (exprs!5473 (h!69391 zl!343))))) (h!69392 s!2326)))))

(declare-fun b!5600006 () Bool)

(declare-fun tp!1548401 () Bool)

(declare-fun tp!1548402 () Bool)

(assert (=> b!5600006 (= e!3454339 (and tp!1548401 tp!1548402))))

(declare-fun b!5600007 () Bool)

(declare-fun res!2375249 () Bool)

(assert (=> b!5600007 (=> res!2375249 e!3454331)))

(declare-fun generalisedConcat!1204 (List!63066) Regex!15589)

(assert (=> b!5600007 (= res!2375249 (not (= r!7292 (generalisedConcat!1204 (exprs!5473 (h!69391 zl!343))))))))

(declare-fun b!5600008 () Bool)

(declare-fun Unit!155808 () Unit!155804)

(assert (=> b!5600008 (= e!3454332 Unit!155808)))

(declare-fun lt!2257027 () Unit!155804)

(assert (=> b!5600008 (= lt!2257027 (lemmaZipperConcatMatchesSameAsBothZippers!614 lt!2257023 lt!2257032 (t!376354 s!2326)))))

(declare-fun res!2375253 () Bool)

(assert (=> b!5600008 (= res!2375253 lt!2257003)))

(assert (=> b!5600008 (=> res!2375253 e!3454335)))

(assert (=> b!5600008 (= (matchZipper!1727 ((_ map or) lt!2257023 lt!2257032) (t!376354 s!2326)) e!3454335)))

(declare-fun b!5600009 () Bool)

(declare-fun Unit!155809 () Unit!155804)

(assert (=> b!5600009 (= e!3454342 Unit!155809)))

(declare-fun b!5600010 () Bool)

(assert (=> b!5600010 (= e!3454338 (matchZipper!1727 lt!2257032 (t!376354 s!2326)))))

(declare-fun b!5600011 () Bool)

(assert (=> b!5600011 (= e!3454339 tp_is_empty!40431)))

(declare-fun tp!1548399 () Bool)

(declare-fun b!5600012 () Bool)

(declare-fun e!3454337 () Bool)

(assert (=> b!5600012 (= e!3454325 (and (inv!82219 (h!69391 zl!343)) e!3454337 tp!1548399))))

(declare-fun b!5600013 () Bool)

(assert (=> b!5600013 (= e!3454334 (not e!3454331))))

(declare-fun res!2375254 () Bool)

(assert (=> b!5600013 (=> res!2375254 e!3454331)))

(assert (=> b!5600013 (= res!2375254 (not ((_ is Cons!62943) zl!343)))))

(declare-fun lt!2257008 () Bool)

(declare-fun matchRSpec!2692 (Regex!15589 List!63068) Bool)

(assert (=> b!5600013 (= lt!2257008 (matchRSpec!2692 r!7292 s!2326))))

(declare-fun matchR!7774 (Regex!15589 List!63068) Bool)

(assert (=> b!5600013 (= lt!2257008 (matchR!7774 r!7292 s!2326))))

(declare-fun lt!2257028 () Unit!155804)

(declare-fun mainMatchTheorem!2692 (Regex!15589 List!63068) Unit!155804)

(assert (=> b!5600013 (= lt!2257028 (mainMatchTheorem!2692 r!7292 s!2326))))

(declare-fun b!5600014 () Bool)

(declare-fun Unit!155810 () Unit!155804)

(assert (=> b!5600014 (= e!3454326 Unit!155810)))

(declare-fun b!5600015 () Bool)

(declare-fun res!2375252 () Bool)

(assert (=> b!5600015 (=> res!2375252 e!3454331)))

(assert (=> b!5600015 (= res!2375252 (or ((_ is EmptyExpr!15589) r!7292) ((_ is EmptyLang!15589) r!7292) ((_ is ElementMatch!15589) r!7292) ((_ is Union!15589) r!7292) (not ((_ is Concat!24434) r!7292))))))

(declare-fun b!5600016 () Bool)

(assert (=> b!5600016 (= e!3454329 (matchZipper!1727 lt!2257010 s!2326))))

(declare-fun b!5600017 () Bool)

(declare-fun tp!1548400 () Bool)

(assert (=> b!5600017 (= e!3454337 tp!1548400)))

(declare-fun b!5600018 () Bool)

(assert (=> b!5600018 (= e!3454336 (matchZipper!1727 lt!2257017 (t!376354 s!2326)))))

(declare-fun b!5600019 () Bool)

(declare-fun tp!1548404 () Bool)

(assert (=> b!5600019 (= e!3454339 tp!1548404)))

(declare-fun b!5600020 () Bool)

(assert (=> b!5600020 (= e!3454328 (not (matchZipper!1727 lt!2257017 (t!376354 s!2326))))))

(declare-fun b!5600021 () Bool)

(declare-fun tp!1548405 () Bool)

(assert (=> b!5600021 (= e!3454333 tp!1548405)))

(declare-fun b!5600022 () Bool)

(declare-fun res!2375266 () Bool)

(assert (=> b!5600022 (=> (not res!2375266) (not e!3454334))))

(declare-fun unfocusZipper!1331 (List!63067) Regex!15589)

(assert (=> b!5600022 (= res!2375266 (= r!7292 (unfocusZipper!1331 zl!343)))))

(declare-fun b!5600023 () Bool)

(declare-fun Unit!155811 () Unit!155804)

(assert (=> b!5600023 (= e!3454332 Unit!155811)))

(assert (=> b!5600024 (= e!3454331 e!3454323)))

(declare-fun res!2375264 () Bool)

(assert (=> b!5600024 (=> res!2375264 e!3454323)))

(declare-fun lt!2257030 () Bool)

(assert (=> b!5600024 (= res!2375264 (or (not (= lt!2257008 lt!2257030)) ((_ is Nil!62944) s!2326)))))

(declare-fun Exists!2689 (Int) Bool)

(assert (=> b!5600024 (= (Exists!2689 lambda!300772) (Exists!2689 lambda!300773))))

(declare-fun lt!2257021 () Unit!155804)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1318 (Regex!15589 Regex!15589 List!63068) Unit!155804)

(assert (=> b!5600024 (= lt!2257021 (lemmaExistCutMatchRandMatchRSpecEquivalent!1318 (regOne!31690 r!7292) (regTwo!31690 r!7292) s!2326))))

(assert (=> b!5600024 (= lt!2257030 (Exists!2689 lambda!300772))))

(declare-datatypes ((tuple2!65372 0))(
  ( (tuple2!65373 (_1!35989 List!63068) (_2!35989 List!63068)) )
))
(declare-datatypes ((Option!15598 0))(
  ( (None!15597) (Some!15597 (v!51638 tuple2!65372)) )
))
(declare-fun isDefined!12301 (Option!15598) Bool)

(declare-fun findConcatSeparation!2012 (Regex!15589 Regex!15589 List!63068 List!63068 List!63068) Option!15598)

(assert (=> b!5600024 (= lt!2257030 (isDefined!12301 (findConcatSeparation!2012 (regOne!31690 r!7292) (regTwo!31690 r!7292) Nil!62944 s!2326 s!2326)))))

(declare-fun lt!2257014 () Unit!155804)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1776 (Regex!15589 Regex!15589 List!63068) Unit!155804)

(assert (=> b!5600024 (= lt!2257014 (lemmaFindConcatSeparationEquivalentToExists!1776 (regOne!31690 r!7292) (regTwo!31690 r!7292) s!2326))))

(declare-fun b!5600025 () Bool)

(assert (=> b!5600025 (= e!3454340 (matchZipper!1727 lt!2257032 (t!376354 s!2326)))))

(assert (= (and start!581544 res!2375261) b!5599994))

(assert (= (and b!5599994 res!2375257) b!5600022))

(assert (= (and b!5600022 res!2375266) b!5600013))

(assert (= (and b!5600013 (not res!2375254)) b!5599995))

(assert (= (and b!5599995 (not res!2375262)) b!5600007))

(assert (= (and b!5600007 (not res!2375249)) b!5600002))

(assert (= (and b!5600002 (not res!2375248)) b!5600001))

(assert (= (and b!5600001 (not res!2375251)) b!5600015))

(assert (= (and b!5600015 (not res!2375252)) b!5600024))

(assert (= (and b!5600024 (not res!2375264)) b!5599992))

(assert (= (and b!5599992 (not res!2375258)) b!5600005))

(assert (= (and b!5600005 c!981934) b!5599999))

(assert (= (and b!5600005 (not c!981934)) b!5600014))

(assert (= (and b!5599999 (not res!2375259)) b!5600010))

(assert (= (and b!5600005 (not res!2375255)) b!5600003))

(assert (= (and b!5600003 (not res!2375260)) b!5599997))

(assert (= (and b!5599997 (not res!2375263)) b!5600018))

(assert (= (and b!5599997 res!2375256) b!5600020))

(assert (= (and b!5599997 (not res!2375250)) b!5600004))

(assert (= (and b!5600004 c!981933) b!5600008))

(assert (= (and b!5600004 (not c!981933)) b!5600023))

(assert (= (and b!5600008 (not res!2375253)) b!5600000))

(assert (= (and b!5600004 c!981935) b!5599998))

(assert (= (and b!5600004 (not c!981935)) b!5600009))

(assert (= (and b!5599998 (not res!2375247)) b!5600025))

(assert (= (and b!5600004 (not res!2375265)) b!5600016))

(assert (= (and start!581544 ((_ is ElementMatch!15589) r!7292)) b!5600011))

(assert (= (and start!581544 ((_ is Concat!24434) r!7292)) b!5599996))

(assert (= (and start!581544 ((_ is Star!15589) r!7292)) b!5600019))

(assert (= (and start!581544 ((_ is Union!15589) r!7292)) b!5600006))

(assert (= (and start!581544 condSetEmpty!37363) setIsEmpty!37363))

(assert (= (and start!581544 (not condSetEmpty!37363)) setNonEmpty!37363))

(assert (= setNonEmpty!37363 b!5600021))

(assert (= b!5600012 b!5600017))

(assert (= (and start!581544 ((_ is Cons!62943) zl!343)) b!5600012))

(assert (= (and start!581544 ((_ is Cons!62944) s!2326)) b!5599993))

(declare-fun m!6578624 () Bool)

(assert (=> b!5600024 m!6578624))

(declare-fun m!6578626 () Bool)

(assert (=> b!5600024 m!6578626))

(declare-fun m!6578628 () Bool)

(assert (=> b!5600024 m!6578628))

(declare-fun m!6578630 () Bool)

(assert (=> b!5600024 m!6578630))

(assert (=> b!5600024 m!6578630))

(declare-fun m!6578632 () Bool)

(assert (=> b!5600024 m!6578632))

(assert (=> b!5600024 m!6578624))

(declare-fun m!6578634 () Bool)

(assert (=> b!5600024 m!6578634))

(declare-fun m!6578636 () Bool)

(assert (=> b!5600016 m!6578636))

(declare-fun m!6578638 () Bool)

(assert (=> b!5600012 m!6578638))

(declare-fun m!6578640 () Bool)

(assert (=> b!5599994 m!6578640))

(declare-fun m!6578642 () Bool)

(assert (=> b!5599998 m!6578642))

(declare-fun m!6578644 () Bool)

(assert (=> b!5599998 m!6578644))

(declare-fun m!6578646 () Bool)

(assert (=> b!5599998 m!6578646))

(declare-fun m!6578648 () Bool)

(assert (=> b!5599997 m!6578648))

(declare-fun m!6578650 () Bool)

(assert (=> b!5599997 m!6578650))

(declare-fun m!6578652 () Bool)

(assert (=> b!5599997 m!6578652))

(declare-fun m!6578654 () Bool)

(assert (=> b!5599997 m!6578654))

(assert (=> b!5600018 m!6578644))

(declare-fun m!6578656 () Bool)

(assert (=> b!5600025 m!6578656))

(assert (=> b!5600020 m!6578644))

(declare-fun m!6578658 () Bool)

(assert (=> b!5600005 m!6578658))

(declare-fun m!6578660 () Bool)

(assert (=> b!5600005 m!6578660))

(declare-fun m!6578662 () Bool)

(assert (=> b!5600005 m!6578662))

(declare-fun m!6578664 () Bool)

(assert (=> b!5600005 m!6578664))

(declare-fun m!6578666 () Bool)

(assert (=> b!5600005 m!6578666))

(declare-fun m!6578668 () Bool)

(assert (=> b!5600005 m!6578668))

(declare-fun m!6578670 () Bool)

(assert (=> b!5600005 m!6578670))

(declare-fun m!6578672 () Bool)

(assert (=> b!5600013 m!6578672))

(declare-fun m!6578674 () Bool)

(assert (=> b!5600013 m!6578674))

(declare-fun m!6578676 () Bool)

(assert (=> b!5600013 m!6578676))

(declare-fun m!6578678 () Bool)

(assert (=> b!5600007 m!6578678))

(declare-fun m!6578680 () Bool)

(assert (=> start!581544 m!6578680))

(declare-fun m!6578682 () Bool)

(assert (=> setNonEmpty!37363 m!6578682))

(declare-fun m!6578684 () Bool)

(assert (=> b!5599999 m!6578684))

(assert (=> b!5599999 m!6578648))

(declare-fun m!6578686 () Bool)

(assert (=> b!5599999 m!6578686))

(declare-fun m!6578688 () Bool)

(assert (=> b!5600004 m!6578688))

(declare-fun m!6578690 () Bool)

(assert (=> b!5600004 m!6578690))

(declare-fun m!6578692 () Bool)

(assert (=> b!5600004 m!6578692))

(declare-fun m!6578694 () Bool)

(assert (=> b!5600004 m!6578694))

(declare-fun m!6578696 () Bool)

(assert (=> b!5600004 m!6578696))

(declare-fun m!6578698 () Bool)

(assert (=> b!5600004 m!6578698))

(declare-fun m!6578700 () Bool)

(assert (=> b!5600004 m!6578700))

(declare-fun m!6578702 () Bool)

(assert (=> b!5600004 m!6578702))

(declare-fun m!6578704 () Bool)

(assert (=> b!5600004 m!6578704))

(declare-fun m!6578706 () Bool)

(assert (=> b!5600004 m!6578706))

(declare-fun m!6578708 () Bool)

(assert (=> b!5600004 m!6578708))

(declare-fun m!6578710 () Bool)

(assert (=> b!5600004 m!6578710))

(assert (=> b!5600000 m!6578656))

(declare-fun m!6578712 () Bool)

(assert (=> b!5600001 m!6578712))

(assert (=> b!5600001 m!6578712))

(declare-fun m!6578714 () Bool)

(assert (=> b!5600001 m!6578714))

(declare-fun m!6578716 () Bool)

(assert (=> b!5599992 m!6578716))

(assert (=> b!5600010 m!6578656))

(declare-fun m!6578718 () Bool)

(assert (=> b!5600008 m!6578718))

(declare-fun m!6578720 () Bool)

(assert (=> b!5600008 m!6578720))

(declare-fun m!6578722 () Bool)

(assert (=> b!5599995 m!6578722))

(declare-fun m!6578724 () Bool)

(assert (=> b!5600003 m!6578724))

(declare-fun m!6578726 () Bool)

(assert (=> b!5600003 m!6578726))

(declare-fun m!6578728 () Bool)

(assert (=> b!5600022 m!6578728))

(check-sat (not b!5600018) (not b!5600007) (not b!5599993) (not b!5600010) (not b!5600021) (not b!5600022) (not start!581544) (not b!5599995) (not b!5600005) (not b!5600000) (not b!5600008) (not b!5600019) (not b!5599997) (not b!5600017) (not b!5599996) (not b!5600025) (not setNonEmpty!37363) (not b!5599998) (not b!5600006) (not b!5600020) (not b!5599999) tp_is_empty!40431 (not b!5599992) (not b!5600016) (not b!5600013) (not b!5600004) (not b!5599994) (not b!5600024) (not b!5600012) (not b!5600001) (not b!5600003))
(check-sat)
