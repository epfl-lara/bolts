; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!636170 () Bool)

(assert start!636170)

(declare-fun b!6462980 () Bool)

(assert (=> b!6462980 true))

(assert (=> b!6462980 true))

(declare-fun lambda!357120 () Int)

(declare-fun lambda!357119 () Int)

(assert (=> b!6462980 (not (= lambda!357120 lambda!357119))))

(assert (=> b!6462980 true))

(assert (=> b!6462980 true))

(declare-fun b!6462982 () Bool)

(assert (=> b!6462982 true))

(declare-fun bs!1635983 () Bool)

(declare-fun b!6462972 () Bool)

(assert (= bs!1635983 (and b!6462972 b!6462980)))

(declare-datatypes ((C!32960 0))(
  ( (C!32961 (val!26182 Int)) )
))
(declare-datatypes ((Regex!16345 0))(
  ( (ElementMatch!16345 (c!1182927 C!32960)) (Concat!25190 (regOne!33202 Regex!16345) (regTwo!33202 Regex!16345)) (EmptyExpr!16345) (Star!16345 (reg!16674 Regex!16345)) (EmptyLang!16345) (Union!16345 (regOne!33203 Regex!16345) (regTwo!33203 Regex!16345)) )
))
(declare-fun r!7292 () Regex!16345)

(declare-fun lambda!357122 () Int)

(declare-fun lt!2383009 () Regex!16345)

(assert (=> bs!1635983 (= (= lt!2383009 (regOne!33202 r!7292)) (= lambda!357122 lambda!357119))))

(assert (=> bs!1635983 (not (= lambda!357122 lambda!357120))))

(assert (=> b!6462972 true))

(assert (=> b!6462972 true))

(assert (=> b!6462972 true))

(declare-fun lambda!357123 () Int)

(assert (=> bs!1635983 (not (= lambda!357123 lambda!357119))))

(assert (=> bs!1635983 (= (= lt!2383009 (regOne!33202 r!7292)) (= lambda!357123 lambda!357120))))

(assert (=> b!6462972 (not (= lambda!357123 lambda!357122))))

(assert (=> b!6462972 true))

(assert (=> b!6462972 true))

(assert (=> b!6462972 true))

(declare-fun bs!1635984 () Bool)

(declare-fun b!6462961 () Bool)

(assert (= bs!1635984 (and b!6462961 b!6462980)))

(declare-fun lambda!357124 () Int)

(declare-datatypes ((List!65334 0))(
  ( (Nil!65210) (Cons!65210 (h!71658 C!32960) (t!378956 List!65334)) )
))
(declare-fun s!2326 () List!65334)

(declare-datatypes ((tuple2!66648 0))(
  ( (tuple2!66649 (_1!36627 List!65334) (_2!36627 List!65334)) )
))
(declare-fun lt!2383030 () tuple2!66648)

(assert (=> bs!1635984 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) (regOne!33202 r!7292)) (= lt!2383009 (regTwo!33202 r!7292))) (= lambda!357124 lambda!357119))))

(assert (=> bs!1635984 (not (= lambda!357124 lambda!357120))))

(declare-fun bs!1635985 () Bool)

(assert (= bs!1635985 (and b!6462961 b!6462972)))

(assert (=> bs!1635985 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) lt!2383009) (= lt!2383009 (regTwo!33202 r!7292))) (= lambda!357124 lambda!357122))))

(assert (=> bs!1635985 (not (= lambda!357124 lambda!357123))))

(assert (=> b!6462961 true))

(assert (=> b!6462961 true))

(assert (=> b!6462961 true))

(declare-fun lambda!357125 () Int)

(assert (=> bs!1635985 (not (= lambda!357125 lambda!357123))))

(assert (=> bs!1635985 (not (= lambda!357125 lambda!357122))))

(assert (=> b!6462961 (not (= lambda!357125 lambda!357124))))

(assert (=> bs!1635984 (not (= lambda!357125 lambda!357120))))

(assert (=> bs!1635984 (not (= lambda!357125 lambda!357119))))

(assert (=> b!6462961 true))

(assert (=> b!6462961 true))

(assert (=> b!6462961 true))

(declare-fun lambda!357126 () Int)

(assert (=> b!6462961 (not (= lambda!357126 lambda!357125))))

(assert (=> bs!1635985 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) lt!2383009) (= lt!2383009 (regTwo!33202 r!7292))) (= lambda!357126 lambda!357123))))

(assert (=> bs!1635985 (not (= lambda!357126 lambda!357122))))

(assert (=> b!6462961 (not (= lambda!357126 lambda!357124))))

(assert (=> bs!1635984 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) (regOne!33202 r!7292)) (= lt!2383009 (regTwo!33202 r!7292))) (= lambda!357126 lambda!357120))))

(assert (=> bs!1635984 (not (= lambda!357126 lambda!357119))))

(assert (=> b!6462961 true))

(assert (=> b!6462961 true))

(assert (=> b!6462961 true))

(declare-fun b!6462952 () Bool)

(declare-fun e!3918496 () Bool)

(declare-fun e!3918493 () Bool)

(assert (=> b!6462952 (= e!3918496 (not e!3918493))))

(declare-fun res!2654004 () Bool)

(assert (=> b!6462952 (=> res!2654004 e!3918493)))

(declare-datatypes ((List!65335 0))(
  ( (Nil!65211) (Cons!65211 (h!71659 Regex!16345) (t!378957 List!65335)) )
))
(declare-datatypes ((Context!11458 0))(
  ( (Context!11459 (exprs!6229 List!65335)) )
))
(declare-datatypes ((List!65336 0))(
  ( (Nil!65212) (Cons!65212 (h!71660 Context!11458) (t!378958 List!65336)) )
))
(declare-fun zl!343 () List!65336)

(get-info :version)

(assert (=> b!6462952 (= res!2654004 (not ((_ is Cons!65212) zl!343)))))

(declare-fun lt!2383000 () Bool)

(declare-fun lt!2383035 () Bool)

(assert (=> b!6462952 (= lt!2383000 lt!2383035)))

(declare-fun matchRSpec!3446 (Regex!16345 List!65334) Bool)

(assert (=> b!6462952 (= lt!2383035 (matchRSpec!3446 r!7292 s!2326))))

(declare-fun matchR!8528 (Regex!16345 List!65334) Bool)

(assert (=> b!6462952 (= lt!2383000 (matchR!8528 r!7292 s!2326))))

(declare-datatypes ((Unit!158711 0))(
  ( (Unit!158712) )
))
(declare-fun lt!2383026 () Unit!158711)

(declare-fun mainMatchTheorem!3446 (Regex!16345 List!65334) Unit!158711)

(assert (=> b!6462952 (= lt!2383026 (mainMatchTheorem!3446 r!7292 s!2326))))

(declare-fun b!6462953 () Bool)

(declare-fun res!2653997 () Bool)

(assert (=> b!6462953 (=> res!2653997 e!3918493)))

(assert (=> b!6462953 (= res!2653997 (not ((_ is Cons!65211) (exprs!6229 (h!71660 zl!343)))))))

(declare-fun e!3918479 () Bool)

(declare-fun e!3918478 () Bool)

(declare-fun tp!1792448 () Bool)

(declare-fun b!6462954 () Bool)

(declare-fun inv!84109 (Context!11458) Bool)

(assert (=> b!6462954 (= e!3918478 (and (inv!84109 (h!71660 zl!343)) e!3918479 tp!1792448))))

(declare-fun b!6462955 () Bool)

(declare-fun res!2653988 () Bool)

(declare-fun e!3918491 () Bool)

(assert (=> b!6462955 (=> res!2653988 e!3918491)))

(declare-fun lt!2383006 () Regex!16345)

(assert (=> b!6462955 (= res!2653988 (not (= lt!2383006 r!7292)))))

(declare-fun b!6462956 () Bool)

(declare-fun res!2653989 () Bool)

(assert (=> b!6462956 (=> res!2653989 e!3918493)))

(assert (=> b!6462956 (= res!2653989 (or ((_ is EmptyExpr!16345) r!7292) ((_ is EmptyLang!16345) r!7292) ((_ is ElementMatch!16345) r!7292) ((_ is Union!16345) r!7292) (not ((_ is Concat!25190) r!7292))))))

(declare-fun b!6462957 () Bool)

(declare-fun tp!1792452 () Bool)

(assert (=> b!6462957 (= e!3918479 tp!1792452)))

(declare-fun b!6462958 () Bool)

(declare-fun e!3918489 () Bool)

(declare-fun e!3918492 () Bool)

(assert (=> b!6462958 (= e!3918489 e!3918492)))

(declare-fun res!2653996 () Bool)

(assert (=> b!6462958 (=> res!2653996 e!3918492)))

(assert (=> b!6462958 (= res!2653996 (not lt!2383000))))

(declare-fun e!3918483 () Bool)

(assert (=> b!6462958 e!3918483))

(declare-fun res!2653984 () Bool)

(assert (=> b!6462958 (=> (not res!2653984) (not e!3918483))))

(declare-fun lt!2382995 () Regex!16345)

(assert (=> b!6462958 (= res!2653984 (= (matchR!8528 lt!2382995 s!2326) (matchRSpec!3446 lt!2382995 s!2326)))))

(declare-fun lt!2383012 () Unit!158711)

(assert (=> b!6462958 (= lt!2383012 (mainMatchTheorem!3446 lt!2382995 s!2326))))

(declare-fun b!6462959 () Bool)

(declare-fun res!2653979 () Bool)

(declare-fun e!3918480 () Bool)

(assert (=> b!6462959 (=> res!2653979 e!3918480)))

(assert (=> b!6462959 (= res!2653979 (not (matchR!8528 (regTwo!33202 r!7292) (_2!36627 lt!2383030))))))

(declare-fun b!6462960 () Bool)

(declare-fun e!3918482 () Bool)

(declare-fun tp!1792449 () Bool)

(assert (=> b!6462960 (= e!3918482 tp!1792449)))

(declare-fun e!3918475 () Bool)

(declare-fun tp!1792453 () Bool)

(declare-fun setNonEmpty!44039 () Bool)

(declare-fun setRes!44039 () Bool)

(declare-fun setElem!44039 () Context!11458)

(assert (=> setNonEmpty!44039 (= setRes!44039 (and tp!1792453 (inv!84109 setElem!44039) e!3918475))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11458))

(declare-fun setRest!44039 () (InoxSet Context!11458))

(assert (=> setNonEmpty!44039 (= z!1189 ((_ map or) (store ((as const (Array Context!11458 Bool)) false) setElem!44039 true) setRest!44039))))

(declare-fun e!3918488 () Bool)

(assert (=> b!6462961 (= e!3918480 e!3918488)))

(declare-fun res!2653980 () Bool)

(assert (=> b!6462961 (=> res!2653980 e!3918488)))

(declare-fun lt!2383029 () List!65334)

(assert (=> b!6462961 (= res!2653980 (not (= (_1!36627 lt!2383030) lt!2383029)))))

(declare-fun lt!2383036 () tuple2!66648)

(declare-fun ++!14413 (List!65334 List!65334) List!65334)

(assert (=> b!6462961 (= lt!2383029 (++!14413 (_1!36627 lt!2383036) (_2!36627 lt!2383036)))))

(declare-datatypes ((Option!16236 0))(
  ( (None!16235) (Some!16235 (v!52412 tuple2!66648)) )
))
(declare-fun lt!2383033 () Option!16236)

(declare-fun get!22601 (Option!16236) tuple2!66648)

(assert (=> b!6462961 (= lt!2383036 (get!22601 lt!2383033))))

(declare-fun Exists!3415 (Int) Bool)

(assert (=> b!6462961 (= (Exists!3415 lambda!357124) (Exists!3415 lambda!357126))))

(declare-fun lt!2382999 () Unit!158711)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1952 (Regex!16345 Regex!16345 List!65334) Unit!158711)

(assert (=> b!6462961 (= lt!2382999 (lemmaExistCutMatchRandMatchRSpecEquivalent!1952 (reg!16674 (regOne!33202 r!7292)) lt!2383009 (_1!36627 lt!2383030)))))

(assert (=> b!6462961 (= (Exists!3415 lambda!357124) (Exists!3415 lambda!357125))))

(declare-fun lt!2383023 () Unit!158711)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!636 (Regex!16345 List!65334) Unit!158711)

(assert (=> b!6462961 (= lt!2383023 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!636 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383030)))))

(declare-fun isDefined!12939 (Option!16236) Bool)

(assert (=> b!6462961 (= (isDefined!12939 lt!2383033) (Exists!3415 lambda!357124))))

(declare-fun findConcatSeparation!2650 (Regex!16345 Regex!16345 List!65334 List!65334 List!65334) Option!16236)

(assert (=> b!6462961 (= lt!2383033 (findConcatSeparation!2650 (reg!16674 (regOne!33202 r!7292)) lt!2383009 Nil!65210 (_1!36627 lt!2383030) (_1!36627 lt!2383030)))))

(declare-fun lt!2383042 () Unit!158711)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2414 (Regex!16345 Regex!16345 List!65334) Unit!158711)

(assert (=> b!6462961 (= lt!2383042 (lemmaFindConcatSeparationEquivalentToExists!2414 (reg!16674 (regOne!33202 r!7292)) lt!2383009 (_1!36627 lt!2383030)))))

(assert (=> b!6462961 (matchRSpec!3446 lt!2383009 (_1!36627 lt!2383030))))

(declare-fun lt!2382996 () Unit!158711)

(assert (=> b!6462961 (= lt!2382996 (mainMatchTheorem!3446 lt!2383009 (_1!36627 lt!2383030)))))

(declare-fun b!6462962 () Bool)

(declare-fun e!3918485 () Bool)

(assert (=> b!6462962 (= e!3918491 e!3918485)))

(declare-fun res!2653995 () Bool)

(assert (=> b!6462962 (=> res!2653995 e!3918485)))

(declare-fun lt!2383041 () Regex!16345)

(assert (=> b!6462962 (= res!2653995 (not (= r!7292 lt!2383041)))))

(assert (=> b!6462962 (= lt!2383041 (Concat!25190 lt!2383009 (regTwo!33202 r!7292)))))

(declare-fun b!6462963 () Bool)

(declare-fun tp!1792456 () Bool)

(declare-fun tp!1792447 () Bool)

(assert (=> b!6462963 (= e!3918482 (and tp!1792456 tp!1792447))))

(declare-fun b!6462964 () Bool)

(declare-fun tp!1792451 () Bool)

(declare-fun tp!1792450 () Bool)

(assert (=> b!6462964 (= e!3918482 (and tp!1792451 tp!1792450))))

(declare-fun b!6462965 () Bool)

(declare-fun res!2654003 () Bool)

(declare-fun e!3918481 () Bool)

(assert (=> b!6462965 (=> res!2654003 e!3918481)))

(declare-fun e!3918484 () Bool)

(assert (=> b!6462965 (= res!2654003 e!3918484)))

(declare-fun res!2653981 () Bool)

(assert (=> b!6462965 (=> (not res!2653981) (not e!3918484))))

(assert (=> b!6462965 (= res!2653981 ((_ is Concat!25190) (regOne!33202 r!7292)))))

(declare-fun b!6462966 () Bool)

(declare-fun e!3918477 () Bool)

(declare-fun lt!2383032 () (InoxSet Context!11458))

(declare-fun matchZipper!2357 ((InoxSet Context!11458) List!65334) Bool)

(assert (=> b!6462966 (= e!3918477 (matchZipper!2357 lt!2383032 (t!378956 s!2326)))))

(declare-fun b!6462967 () Bool)

(declare-fun res!2653986 () Bool)

(assert (=> b!6462967 (=> res!2653986 e!3918480)))

(assert (=> b!6462967 (= res!2653986 (not (matchR!8528 lt!2383009 (_1!36627 lt!2383030))))))

(declare-fun b!6462968 () Bool)

(declare-fun res!2653991 () Bool)

(assert (=> b!6462968 (=> res!2653991 e!3918491)))

(declare-fun lt!2383024 () (InoxSet Context!11458))

(declare-fun lt!2383027 () (InoxSet Context!11458))

(assert (=> b!6462968 (= res!2653991 (not (= (matchZipper!2357 lt!2383024 s!2326) (matchZipper!2357 lt!2383027 (t!378956 s!2326)))))))

(declare-fun b!6462969 () Bool)

(declare-fun tp_is_empty!41943 () Bool)

(assert (=> b!6462969 (= e!3918482 tp_is_empty!41943)))

(declare-fun b!6462970 () Bool)

(declare-fun res!2653993 () Bool)

(assert (=> b!6462970 (=> res!2653993 e!3918480)))

(declare-fun isEmpty!37386 (List!65334) Bool)

(assert (=> b!6462970 (= res!2653993 (isEmpty!37386 (_1!36627 lt!2383030)))))

(declare-fun b!6462971 () Bool)

(declare-fun res!2653974 () Bool)

(declare-fun e!3918486 () Bool)

(assert (=> b!6462971 (=> (not res!2653974) (not e!3918486))))

(declare-fun toList!10129 ((InoxSet Context!11458)) List!65336)

(assert (=> b!6462971 (= res!2653974 (= (toList!10129 z!1189) zl!343))))

(assert (=> b!6462972 (= e!3918492 e!3918480)))

(declare-fun res!2653999 () Bool)

(assert (=> b!6462972 (=> res!2653999 e!3918480)))

(assert (=> b!6462972 (= res!2653999 (not (= (++!14413 (_1!36627 lt!2383030) (_2!36627 lt!2383030)) s!2326)))))

(declare-fun lt!2383031 () Option!16236)

(assert (=> b!6462972 (= lt!2383030 (get!22601 lt!2383031))))

(assert (=> b!6462972 (= (Exists!3415 lambda!357122) (Exists!3415 lambda!357123))))

(declare-fun lt!2383021 () Unit!158711)

(assert (=> b!6462972 (= lt!2383021 (lemmaExistCutMatchRandMatchRSpecEquivalent!1952 lt!2383009 (regTwo!33202 r!7292) s!2326))))

(assert (=> b!6462972 (= (isDefined!12939 lt!2383031) (Exists!3415 lambda!357122))))

(assert (=> b!6462972 (= lt!2383031 (findConcatSeparation!2650 lt!2383009 (regTwo!33202 r!7292) Nil!65210 s!2326 s!2326))))

(declare-fun lt!2382997 () Unit!158711)

(assert (=> b!6462972 (= lt!2382997 (lemmaFindConcatSeparationEquivalentToExists!2414 lt!2383009 (regTwo!33202 r!7292) s!2326))))

(declare-fun b!6462973 () Bool)

(assert (=> b!6462973 (= e!3918483 (or (not lt!2383000) lt!2383035))))

(declare-fun b!6462974 () Bool)

(declare-fun e!3918495 () Bool)

(assert (=> b!6462974 (= e!3918495 e!3918489)))

(declare-fun res!2653994 () Bool)

(assert (=> b!6462974 (=> res!2653994 e!3918489)))

(declare-fun lt!2383010 () List!65336)

(declare-fun unfocusZipper!2087 (List!65336) Regex!16345)

(assert (=> b!6462974 (= res!2653994 (not (= (unfocusZipper!2087 lt!2383010) (reg!16674 (regOne!33202 r!7292)))))))

(declare-fun lt!2383038 () Context!11458)

(assert (=> b!6462974 (= lt!2383010 (Cons!65212 lt!2383038 Nil!65212))))

(declare-fun lambda!357121 () Int)

(declare-fun lt!2383022 () (InoxSet Context!11458))

(declare-fun lt!2383004 () Context!11458)

(declare-fun flatMap!1850 ((InoxSet Context!11458) Int) (InoxSet Context!11458))

(declare-fun derivationStepZipperUp!1519 (Context!11458 C!32960) (InoxSet Context!11458))

(assert (=> b!6462974 (= (flatMap!1850 lt!2383022 lambda!357121) (derivationStepZipperUp!1519 lt!2383004 (h!71658 s!2326)))))

(declare-fun lt!2382992 () Unit!158711)

(declare-fun lemmaFlatMapOnSingletonSet!1376 ((InoxSet Context!11458) Context!11458 Int) Unit!158711)

(assert (=> b!6462974 (= lt!2382992 (lemmaFlatMapOnSingletonSet!1376 lt!2383022 lt!2383004 lambda!357121))))

(declare-fun lt!2382998 () (InoxSet Context!11458))

(assert (=> b!6462974 (= (flatMap!1850 lt!2382998 lambda!357121) (derivationStepZipperUp!1519 lt!2383038 (h!71658 s!2326)))))

(declare-fun lt!2383039 () Unit!158711)

(assert (=> b!6462974 (= lt!2383039 (lemmaFlatMapOnSingletonSet!1376 lt!2382998 lt!2383038 lambda!357121))))

(declare-fun lt!2383017 () (InoxSet Context!11458))

(assert (=> b!6462974 (= lt!2383017 (derivationStepZipperUp!1519 lt!2383004 (h!71658 s!2326)))))

(declare-fun lt!2383040 () (InoxSet Context!11458))

(assert (=> b!6462974 (= lt!2383040 (derivationStepZipperUp!1519 lt!2383038 (h!71658 s!2326)))))

(assert (=> b!6462974 (= lt!2383022 (store ((as const (Array Context!11458 Bool)) false) lt!2383004 true))))

(assert (=> b!6462974 (= lt!2382998 (store ((as const (Array Context!11458 Bool)) false) lt!2383038 true))))

(assert (=> b!6462974 (= lt!2383038 (Context!11459 (Cons!65211 (reg!16674 (regOne!33202 r!7292)) Nil!65211)))))

(declare-fun b!6462975 () Bool)

(assert (=> b!6462975 (= e!3918486 e!3918496)))

(declare-fun res!2653978 () Bool)

(assert (=> b!6462975 (=> (not res!2653978) (not e!3918496))))

(assert (=> b!6462975 (= res!2653978 (= r!7292 lt!2383006))))

(assert (=> b!6462975 (= lt!2383006 (unfocusZipper!2087 zl!343))))

(declare-fun b!6462976 () Bool)

(declare-fun e!3918487 () Bool)

(assert (=> b!6462976 (= e!3918488 e!3918487)))

(declare-fun res!2654002 () Bool)

(assert (=> b!6462976 (=> res!2654002 e!3918487)))

(declare-fun lt!2383013 () List!65334)

(assert (=> b!6462976 (= res!2654002 (not (= lt!2383013 s!2326)))))

(declare-fun lt!2383002 () List!65334)

(assert (=> b!6462976 (= lt!2383013 (++!14413 (_1!36627 lt!2383036) lt!2383002))))

(assert (=> b!6462976 (= lt!2383013 (++!14413 lt!2383029 (_2!36627 lt!2383030)))))

(assert (=> b!6462976 (= lt!2383002 (++!14413 (_2!36627 lt!2383036) (_2!36627 lt!2383030)))))

(declare-fun lt!2383005 () Unit!158711)

(declare-fun lemmaConcatAssociativity!2916 (List!65334 List!65334 List!65334) Unit!158711)

(assert (=> b!6462976 (= lt!2383005 (lemmaConcatAssociativity!2916 (_1!36627 lt!2383036) (_2!36627 lt!2383036) (_2!36627 lt!2383030)))))

(declare-fun b!6462977 () Bool)

(declare-fun res!2653977 () Bool)

(declare-fun e!3918494 () Bool)

(assert (=> b!6462977 (=> res!2653977 e!3918494)))

(declare-fun isEmpty!37387 (List!65335) Bool)

(assert (=> b!6462977 (= res!2653977 (isEmpty!37387 (t!378957 (exprs!6229 (h!71660 zl!343)))))))

(declare-fun b!6462978 () Bool)

(declare-fun e!3918474 () Bool)

(declare-fun tp!1792454 () Bool)

(assert (=> b!6462978 (= e!3918474 (and tp_is_empty!41943 tp!1792454))))

(declare-fun b!6462979 () Bool)

(declare-fun res!2654000 () Bool)

(assert (=> b!6462979 (=> res!2654000 e!3918489)))

(assert (=> b!6462979 (= res!2654000 (not (= (unfocusZipper!2087 (Cons!65212 lt!2383004 Nil!65212)) lt!2383041)))))

(assert (=> b!6462980 (= e!3918493 e!3918494)))

(declare-fun res!2653983 () Bool)

(assert (=> b!6462980 (=> res!2653983 e!3918494)))

(declare-fun lt!2383034 () Bool)

(assert (=> b!6462980 (= res!2653983 (or (not (= lt!2383000 lt!2383034)) ((_ is Nil!65210) s!2326)))))

(assert (=> b!6462980 (= (Exists!3415 lambda!357119) (Exists!3415 lambda!357120))))

(declare-fun lt!2382993 () Unit!158711)

(assert (=> b!6462980 (= lt!2382993 (lemmaExistCutMatchRandMatchRSpecEquivalent!1952 (regOne!33202 r!7292) (regTwo!33202 r!7292) s!2326))))

(assert (=> b!6462980 (= lt!2383034 (Exists!3415 lambda!357119))))

(assert (=> b!6462980 (= lt!2383034 (isDefined!12939 (findConcatSeparation!2650 (regOne!33202 r!7292) (regTwo!33202 r!7292) Nil!65210 s!2326 s!2326)))))

(declare-fun lt!2383011 () Unit!158711)

(assert (=> b!6462980 (= lt!2383011 (lemmaFindConcatSeparationEquivalentToExists!2414 (regOne!33202 r!7292) (regTwo!33202 r!7292) s!2326))))

(declare-fun b!6462981 () Bool)

(declare-fun res!2653975 () Bool)

(assert (=> b!6462981 (=> res!2653975 e!3918481)))

(assert (=> b!6462981 (= res!2653975 (or ((_ is Concat!25190) (regOne!33202 r!7292)) (not ((_ is Star!16345) (regOne!33202 r!7292)))))))

(declare-fun res!2653971 () Bool)

(assert (=> start!636170 (=> (not res!2653971) (not e!3918486))))

(declare-fun validRegex!8081 (Regex!16345) Bool)

(assert (=> start!636170 (= res!2653971 (validRegex!8081 r!7292))))

(assert (=> start!636170 e!3918486))

(assert (=> start!636170 e!3918482))

(declare-fun condSetEmpty!44039 () Bool)

(assert (=> start!636170 (= condSetEmpty!44039 (= z!1189 ((as const (Array Context!11458 Bool)) false)))))

(assert (=> start!636170 setRes!44039))

(assert (=> start!636170 e!3918478))

(assert (=> start!636170 e!3918474))

(assert (=> b!6462982 (= e!3918494 e!3918481)))

(declare-fun res!2653992 () Bool)

(assert (=> b!6462982 (=> res!2653992 e!3918481)))

(assert (=> b!6462982 (= res!2653992 (or (and ((_ is ElementMatch!16345) (regOne!33202 r!7292)) (= (c!1182927 (regOne!33202 r!7292)) (h!71658 s!2326))) ((_ is Union!16345) (regOne!33202 r!7292))))))

(declare-fun lt!2383003 () Unit!158711)

(declare-fun e!3918490 () Unit!158711)

(assert (=> b!6462982 (= lt!2383003 e!3918490)))

(declare-fun c!1182926 () Bool)

(declare-fun nullable!6338 (Regex!16345) Bool)

(assert (=> b!6462982 (= c!1182926 (nullable!6338 (h!71659 (exprs!6229 (h!71660 zl!343)))))))

(assert (=> b!6462982 (= (flatMap!1850 z!1189 lambda!357121) (derivationStepZipperUp!1519 (h!71660 zl!343) (h!71658 s!2326)))))

(declare-fun lt!2383020 () Unit!158711)

(assert (=> b!6462982 (= lt!2383020 (lemmaFlatMapOnSingletonSet!1376 z!1189 (h!71660 zl!343) lambda!357121))))

(declare-fun lt!2383037 () Context!11458)

(assert (=> b!6462982 (= lt!2383032 (derivationStepZipperUp!1519 lt!2383037 (h!71658 s!2326)))))

(declare-fun lt!2383025 () (InoxSet Context!11458))

(declare-fun derivationStepZipperDown!1593 (Regex!16345 Context!11458 C!32960) (InoxSet Context!11458))

(assert (=> b!6462982 (= lt!2383025 (derivationStepZipperDown!1593 (h!71659 (exprs!6229 (h!71660 zl!343))) lt!2383037 (h!71658 s!2326)))))

(assert (=> b!6462982 (= lt!2383037 (Context!11459 (t!378957 (exprs!6229 (h!71660 zl!343)))))))

(declare-fun lt!2383007 () (InoxSet Context!11458))

(assert (=> b!6462982 (= lt!2383007 (derivationStepZipperUp!1519 (Context!11459 (Cons!65211 (h!71659 (exprs!6229 (h!71660 zl!343))) (t!378957 (exprs!6229 (h!71660 zl!343))))) (h!71658 s!2326)))))

(declare-fun b!6462983 () Bool)

(declare-fun e!3918476 () Bool)

(assert (=> b!6462983 (= e!3918481 e!3918476)))

(declare-fun res!2653987 () Bool)

(assert (=> b!6462983 (=> res!2653987 e!3918476)))

(declare-fun lt!2383016 () (InoxSet Context!11458))

(assert (=> b!6462983 (= res!2653987 (not (= lt!2383025 lt!2383016)))))

(assert (=> b!6462983 (= lt!2383016 (derivationStepZipperDown!1593 (reg!16674 (regOne!33202 r!7292)) lt!2383004 (h!71658 s!2326)))))

(declare-fun lt!2383008 () List!65335)

(assert (=> b!6462983 (= lt!2383004 (Context!11459 lt!2383008))))

(assert (=> b!6462983 (= lt!2383008 (Cons!65211 lt!2383009 (t!378957 (exprs!6229 (h!71660 zl!343)))))))

(assert (=> b!6462983 (= lt!2383009 (Star!16345 (reg!16674 (regOne!33202 r!7292))))))

(declare-fun b!6462984 () Bool)

(declare-fun res!2653985 () Bool)

(assert (=> b!6462984 (=> res!2653985 e!3918487)))

(assert (=> b!6462984 (= res!2653985 (not (matchR!8528 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383036))))))

(declare-fun b!6462985 () Bool)

(declare-fun res!2653982 () Bool)

(assert (=> b!6462985 (=> res!2653982 e!3918493)))

(declare-fun generalisedConcat!1942 (List!65335) Regex!16345)

(assert (=> b!6462985 (= res!2653982 (not (= r!7292 (generalisedConcat!1942 (exprs!6229 (h!71660 zl!343))))))))

(declare-fun b!6462986 () Bool)

(declare-fun Unit!158713 () Unit!158711)

(assert (=> b!6462986 (= e!3918490 Unit!158713)))

(declare-fun lt!2383019 () Unit!158711)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1176 ((InoxSet Context!11458) (InoxSet Context!11458) List!65334) Unit!158711)

(assert (=> b!6462986 (= lt!2383019 (lemmaZipperConcatMatchesSameAsBothZippers!1176 lt!2383025 lt!2383032 (t!378956 s!2326)))))

(declare-fun res!2653976 () Bool)

(assert (=> b!6462986 (= res!2653976 (matchZipper!2357 lt!2383025 (t!378956 s!2326)))))

(assert (=> b!6462986 (=> res!2653976 e!3918477)))

(assert (=> b!6462986 (= (matchZipper!2357 ((_ map or) lt!2383025 lt!2383032) (t!378956 s!2326)) e!3918477)))

(declare-fun b!6462987 () Bool)

(declare-fun Unit!158714 () Unit!158711)

(assert (=> b!6462987 (= e!3918490 Unit!158714)))

(declare-fun b!6462988 () Bool)

(declare-fun res!2653973 () Bool)

(assert (=> b!6462988 (=> res!2653973 e!3918493)))

(declare-fun generalisedUnion!2189 (List!65335) Regex!16345)

(declare-fun unfocusZipperList!1766 (List!65336) List!65335)

(assert (=> b!6462988 (= res!2653973 (not (= r!7292 (generalisedUnion!2189 (unfocusZipperList!1766 zl!343)))))))

(declare-fun b!6462989 () Bool)

(declare-fun res!2653990 () Bool)

(assert (=> b!6462989 (=> res!2653990 e!3918487)))

(assert (=> b!6462989 (= res!2653990 (not (matchR!8528 lt!2383009 (_2!36627 lt!2383036))))))

(declare-fun b!6462990 () Bool)

(declare-fun tp!1792455 () Bool)

(assert (=> b!6462990 (= e!3918475 tp!1792455)))

(declare-fun b!6462991 () Bool)

(assert (=> b!6462991 (= e!3918476 e!3918491)))

(declare-fun res!2653998 () Bool)

(assert (=> b!6462991 (=> res!2653998 e!3918491)))

(assert (=> b!6462991 (= res!2653998 (not (= lt!2383027 lt!2383016)))))

(declare-fun lt!2383028 () Context!11458)

(assert (=> b!6462991 (= (flatMap!1850 lt!2383024 lambda!357121) (derivationStepZipperUp!1519 lt!2383028 (h!71658 s!2326)))))

(declare-fun lt!2382994 () Unit!158711)

(assert (=> b!6462991 (= lt!2382994 (lemmaFlatMapOnSingletonSet!1376 lt!2383024 lt!2383028 lambda!357121))))

(declare-fun lt!2383001 () (InoxSet Context!11458))

(assert (=> b!6462991 (= lt!2383001 (derivationStepZipperUp!1519 lt!2383028 (h!71658 s!2326)))))

(declare-fun derivationStepZipper!2311 ((InoxSet Context!11458) C!32960) (InoxSet Context!11458))

(assert (=> b!6462991 (= lt!2383027 (derivationStepZipper!2311 lt!2383024 (h!71658 s!2326)))))

(assert (=> b!6462991 (= lt!2383024 (store ((as const (Array Context!11458 Bool)) false) lt!2383028 true))))

(assert (=> b!6462991 (= lt!2383028 (Context!11459 (Cons!65211 (reg!16674 (regOne!33202 r!7292)) lt!2383008)))))

(declare-fun b!6462992 () Bool)

(declare-fun res!2653972 () Bool)

(assert (=> b!6462992 (=> res!2653972 e!3918493)))

(declare-fun isEmpty!37388 (List!65336) Bool)

(assert (=> b!6462992 (= res!2653972 (not (isEmpty!37388 (t!378958 zl!343))))))

(declare-fun b!6462993 () Bool)

(assert (=> b!6462993 (= e!3918487 (inv!84109 lt!2383004))))

(assert (=> b!6462993 (matchZipper!2357 lt!2382998 (_1!36627 lt!2383036))))

(declare-fun lt!2383018 () Unit!158711)

(declare-fun theoremZipperRegexEquiv!811 ((InoxSet Context!11458) List!65336 Regex!16345 List!65334) Unit!158711)

(assert (=> b!6462993 (= lt!2383018 (theoremZipperRegexEquiv!811 lt!2382998 lt!2383010 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383036)))))

(assert (=> b!6462993 (matchR!8528 lt!2383041 lt!2383002)))

(declare-fun lt!2383015 () Unit!158711)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!308 (Regex!16345 Regex!16345 List!65334 List!65334) Unit!158711)

(assert (=> b!6462993 (= lt!2383015 (lemmaTwoRegexMatchThenConcatMatchesConcatString!308 lt!2383009 (regTwo!33202 r!7292) (_2!36627 lt!2383036) (_2!36627 lt!2383030)))))

(assert (=> b!6462993 (matchR!8528 lt!2383009 lt!2383029)))

(declare-fun lt!2383014 () Unit!158711)

(declare-fun lemmaStarApp!122 (Regex!16345 List!65334 List!65334) Unit!158711)

(assert (=> b!6462993 (= lt!2383014 (lemmaStarApp!122 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383036) (_2!36627 lt!2383036)))))

(declare-fun setIsEmpty!44039 () Bool)

(assert (=> setIsEmpty!44039 setRes!44039))

(declare-fun b!6462994 () Bool)

(assert (=> b!6462994 (= e!3918484 (nullable!6338 (regOne!33202 (regOne!33202 r!7292))))))

(declare-fun b!6462995 () Bool)

(assert (=> b!6462995 (= e!3918485 e!3918495)))

(declare-fun res!2654001 () Bool)

(assert (=> b!6462995 (=> res!2654001 e!3918495)))

(assert (=> b!6462995 (= res!2654001 (not (= (unfocusZipper!2087 (Cons!65212 lt!2383028 Nil!65212)) lt!2382995)))))

(assert (=> b!6462995 (= lt!2382995 (Concat!25190 (reg!16674 (regOne!33202 r!7292)) lt!2383041))))

(assert (= (and start!636170 res!2653971) b!6462971))

(assert (= (and b!6462971 res!2653974) b!6462975))

(assert (= (and b!6462975 res!2653978) b!6462952))

(assert (= (and b!6462952 (not res!2654004)) b!6462992))

(assert (= (and b!6462992 (not res!2653972)) b!6462985))

(assert (= (and b!6462985 (not res!2653982)) b!6462953))

(assert (= (and b!6462953 (not res!2653997)) b!6462988))

(assert (= (and b!6462988 (not res!2653973)) b!6462956))

(assert (= (and b!6462956 (not res!2653989)) b!6462980))

(assert (= (and b!6462980 (not res!2653983)) b!6462977))

(assert (= (and b!6462977 (not res!2653977)) b!6462982))

(assert (= (and b!6462982 c!1182926) b!6462986))

(assert (= (and b!6462982 (not c!1182926)) b!6462987))

(assert (= (and b!6462986 (not res!2653976)) b!6462966))

(assert (= (and b!6462982 (not res!2653992)) b!6462965))

(assert (= (and b!6462965 res!2653981) b!6462994))

(assert (= (and b!6462965 (not res!2654003)) b!6462981))

(assert (= (and b!6462981 (not res!2653975)) b!6462983))

(assert (= (and b!6462983 (not res!2653987)) b!6462991))

(assert (= (and b!6462991 (not res!2653998)) b!6462968))

(assert (= (and b!6462968 (not res!2653991)) b!6462955))

(assert (= (and b!6462955 (not res!2653988)) b!6462962))

(assert (= (and b!6462962 (not res!2653995)) b!6462995))

(assert (= (and b!6462995 (not res!2654001)) b!6462974))

(assert (= (and b!6462974 (not res!2653994)) b!6462979))

(assert (= (and b!6462979 (not res!2654000)) b!6462958))

(assert (= (and b!6462958 res!2653984) b!6462973))

(assert (= (and b!6462958 (not res!2653996)) b!6462972))

(assert (= (and b!6462972 (not res!2653999)) b!6462967))

(assert (= (and b!6462967 (not res!2653986)) b!6462959))

(assert (= (and b!6462959 (not res!2653979)) b!6462970))

(assert (= (and b!6462970 (not res!2653993)) b!6462961))

(assert (= (and b!6462961 (not res!2653980)) b!6462976))

(assert (= (and b!6462976 (not res!2654002)) b!6462984))

(assert (= (and b!6462984 (not res!2653985)) b!6462989))

(assert (= (and b!6462989 (not res!2653990)) b!6462993))

(assert (= (and start!636170 ((_ is ElementMatch!16345) r!7292)) b!6462969))

(assert (= (and start!636170 ((_ is Concat!25190) r!7292)) b!6462963))

(assert (= (and start!636170 ((_ is Star!16345) r!7292)) b!6462960))

(assert (= (and start!636170 ((_ is Union!16345) r!7292)) b!6462964))

(assert (= (and start!636170 condSetEmpty!44039) setIsEmpty!44039))

(assert (= (and start!636170 (not condSetEmpty!44039)) setNonEmpty!44039))

(assert (= setNonEmpty!44039 b!6462990))

(assert (= b!6462954 b!6462957))

(assert (= (and start!636170 ((_ is Cons!65212) zl!343)) b!6462954))

(assert (= (and start!636170 ((_ is Cons!65210) s!2326)) b!6462978))

(declare-fun m!7252012 () Bool)

(assert (=> b!6462976 m!7252012))

(declare-fun m!7252014 () Bool)

(assert (=> b!6462976 m!7252014))

(declare-fun m!7252016 () Bool)

(assert (=> b!6462976 m!7252016))

(declare-fun m!7252018 () Bool)

(assert (=> b!6462976 m!7252018))

(declare-fun m!7252020 () Bool)

(assert (=> b!6462961 m!7252020))

(declare-fun m!7252022 () Bool)

(assert (=> b!6462961 m!7252022))

(declare-fun m!7252024 () Bool)

(assert (=> b!6462961 m!7252024))

(declare-fun m!7252026 () Bool)

(assert (=> b!6462961 m!7252026))

(declare-fun m!7252028 () Bool)

(assert (=> b!6462961 m!7252028))

(declare-fun m!7252030 () Bool)

(assert (=> b!6462961 m!7252030))

(declare-fun m!7252032 () Bool)

(assert (=> b!6462961 m!7252032))

(declare-fun m!7252034 () Bool)

(assert (=> b!6462961 m!7252034))

(assert (=> b!6462961 m!7252032))

(declare-fun m!7252036 () Bool)

(assert (=> b!6462961 m!7252036))

(declare-fun m!7252038 () Bool)

(assert (=> b!6462961 m!7252038))

(declare-fun m!7252040 () Bool)

(assert (=> b!6462961 m!7252040))

(declare-fun m!7252042 () Bool)

(assert (=> b!6462961 m!7252042))

(assert (=> b!6462961 m!7252032))

(declare-fun m!7252044 () Bool)

(assert (=> b!6462959 m!7252044))

(declare-fun m!7252046 () Bool)

(assert (=> b!6462995 m!7252046))

(declare-fun m!7252048 () Bool)

(assert (=> b!6462966 m!7252048))

(declare-fun m!7252050 () Bool)

(assert (=> b!6462984 m!7252050))

(declare-fun m!7252052 () Bool)

(assert (=> b!6462967 m!7252052))

(declare-fun m!7252054 () Bool)

(assert (=> b!6462972 m!7252054))

(declare-fun m!7252056 () Bool)

(assert (=> b!6462972 m!7252056))

(declare-fun m!7252058 () Bool)

(assert (=> b!6462972 m!7252058))

(declare-fun m!7252060 () Bool)

(assert (=> b!6462972 m!7252060))

(declare-fun m!7252062 () Bool)

(assert (=> b!6462972 m!7252062))

(assert (=> b!6462972 m!7252054))

(declare-fun m!7252064 () Bool)

(assert (=> b!6462972 m!7252064))

(declare-fun m!7252066 () Bool)

(assert (=> b!6462972 m!7252066))

(declare-fun m!7252068 () Bool)

(assert (=> b!6462972 m!7252068))

(declare-fun m!7252070 () Bool)

(assert (=> b!6462970 m!7252070))

(declare-fun m!7252072 () Bool)

(assert (=> b!6462952 m!7252072))

(declare-fun m!7252074 () Bool)

(assert (=> b!6462952 m!7252074))

(declare-fun m!7252076 () Bool)

(assert (=> b!6462952 m!7252076))

(declare-fun m!7252078 () Bool)

(assert (=> b!6462958 m!7252078))

(declare-fun m!7252080 () Bool)

(assert (=> b!6462958 m!7252080))

(declare-fun m!7252082 () Bool)

(assert (=> b!6462958 m!7252082))

(declare-fun m!7252084 () Bool)

(assert (=> b!6462983 m!7252084))

(declare-fun m!7252086 () Bool)

(assert (=> b!6462980 m!7252086))

(declare-fun m!7252088 () Bool)

(assert (=> b!6462980 m!7252088))

(declare-fun m!7252090 () Bool)

(assert (=> b!6462980 m!7252090))

(assert (=> b!6462980 m!7252086))

(declare-fun m!7252092 () Bool)

(assert (=> b!6462980 m!7252092))

(declare-fun m!7252094 () Bool)

(assert (=> b!6462980 m!7252094))

(assert (=> b!6462980 m!7252088))

(declare-fun m!7252096 () Bool)

(assert (=> b!6462980 m!7252096))

(declare-fun m!7252098 () Bool)

(assert (=> start!636170 m!7252098))

(declare-fun m!7252100 () Bool)

(assert (=> b!6462968 m!7252100))

(declare-fun m!7252102 () Bool)

(assert (=> b!6462968 m!7252102))

(declare-fun m!7252104 () Bool)

(assert (=> b!6462982 m!7252104))

(declare-fun m!7252106 () Bool)

(assert (=> b!6462982 m!7252106))

(declare-fun m!7252108 () Bool)

(assert (=> b!6462982 m!7252108))

(declare-fun m!7252110 () Bool)

(assert (=> b!6462982 m!7252110))

(declare-fun m!7252112 () Bool)

(assert (=> b!6462982 m!7252112))

(declare-fun m!7252114 () Bool)

(assert (=> b!6462982 m!7252114))

(declare-fun m!7252116 () Bool)

(assert (=> b!6462982 m!7252116))

(declare-fun m!7252118 () Bool)

(assert (=> b!6462986 m!7252118))

(declare-fun m!7252120 () Bool)

(assert (=> b!6462986 m!7252120))

(declare-fun m!7252122 () Bool)

(assert (=> b!6462986 m!7252122))

(declare-fun m!7252124 () Bool)

(assert (=> b!6462974 m!7252124))

(declare-fun m!7252126 () Bool)

(assert (=> b!6462974 m!7252126))

(declare-fun m!7252128 () Bool)

(assert (=> b!6462974 m!7252128))

(declare-fun m!7252130 () Bool)

(assert (=> b!6462974 m!7252130))

(declare-fun m!7252132 () Bool)

(assert (=> b!6462974 m!7252132))

(declare-fun m!7252134 () Bool)

(assert (=> b!6462974 m!7252134))

(declare-fun m!7252136 () Bool)

(assert (=> b!6462974 m!7252136))

(declare-fun m!7252138 () Bool)

(assert (=> b!6462974 m!7252138))

(declare-fun m!7252140 () Bool)

(assert (=> b!6462974 m!7252140))

(declare-fun m!7252142 () Bool)

(assert (=> b!6462979 m!7252142))

(declare-fun m!7252144 () Bool)

(assert (=> b!6462991 m!7252144))

(declare-fun m!7252146 () Bool)

(assert (=> b!6462991 m!7252146))

(declare-fun m!7252148 () Bool)

(assert (=> b!6462991 m!7252148))

(declare-fun m!7252150 () Bool)

(assert (=> b!6462991 m!7252150))

(declare-fun m!7252152 () Bool)

(assert (=> b!6462991 m!7252152))

(declare-fun m!7252154 () Bool)

(assert (=> b!6462971 m!7252154))

(declare-fun m!7252156 () Bool)

(assert (=> b!6462989 m!7252156))

(declare-fun m!7252158 () Bool)

(assert (=> b!6462994 m!7252158))

(declare-fun m!7252160 () Bool)

(assert (=> b!6462985 m!7252160))

(declare-fun m!7252162 () Bool)

(assert (=> b!6462975 m!7252162))

(declare-fun m!7252164 () Bool)

(assert (=> b!6462988 m!7252164))

(assert (=> b!6462988 m!7252164))

(declare-fun m!7252166 () Bool)

(assert (=> b!6462988 m!7252166))

(declare-fun m!7252168 () Bool)

(assert (=> b!6462993 m!7252168))

(declare-fun m!7252170 () Bool)

(assert (=> b!6462993 m!7252170))

(declare-fun m!7252172 () Bool)

(assert (=> b!6462993 m!7252172))

(declare-fun m!7252174 () Bool)

(assert (=> b!6462993 m!7252174))

(declare-fun m!7252176 () Bool)

(assert (=> b!6462993 m!7252176))

(declare-fun m!7252178 () Bool)

(assert (=> b!6462993 m!7252178))

(declare-fun m!7252180 () Bool)

(assert (=> b!6462993 m!7252180))

(declare-fun m!7252182 () Bool)

(assert (=> setNonEmpty!44039 m!7252182))

(declare-fun m!7252184 () Bool)

(assert (=> b!6462954 m!7252184))

(declare-fun m!7252186 () Bool)

(assert (=> b!6462992 m!7252186))

(declare-fun m!7252188 () Bool)

(assert (=> b!6462977 m!7252188))

(check-sat (not b!6462995) (not b!6462952) (not b!6462966) (not b!6462963) (not b!6462960) (not b!6462990) (not b!6462954) (not b!6462988) (not b!6462984) (not b!6462974) (not b!6462986) (not b!6462964) (not b!6462983) (not b!6462985) (not start!636170) (not b!6462975) (not b!6462958) (not b!6462976) (not b!6462971) (not b!6462980) (not b!6462982) (not b!6462961) (not b!6462994) (not b!6462957) (not b!6462978) (not b!6462959) (not b!6462967) tp_is_empty!41943 (not b!6462992) (not b!6462989) (not b!6462977) (not b!6462968) (not b!6462970) (not b!6462979) (not b!6462991) (not b!6462993) (not setNonEmpty!44039) (not b!6462972))
(check-sat)
(get-model)

(declare-fun d!2027252 () Bool)

(assert (=> d!2027252 (= (isEmpty!37387 (t!378957 (exprs!6229 (h!71660 zl!343)))) ((_ is Nil!65211) (t!378957 (exprs!6229 (h!71660 zl!343)))))))

(assert (=> b!6462977 d!2027252))

(declare-fun b!6463070 () Bool)

(declare-fun e!3918535 () List!65334)

(assert (=> b!6463070 (= e!3918535 lt!2383002)))

(declare-fun b!6463072 () Bool)

(declare-fun res!2654018 () Bool)

(declare-fun e!3918534 () Bool)

(assert (=> b!6463072 (=> (not res!2654018) (not e!3918534))))

(declare-fun lt!2383051 () List!65334)

(declare-fun size!40401 (List!65334) Int)

(assert (=> b!6463072 (= res!2654018 (= (size!40401 lt!2383051) (+ (size!40401 (_1!36627 lt!2383036)) (size!40401 lt!2383002))))))

(declare-fun d!2027254 () Bool)

(assert (=> d!2027254 e!3918534))

(declare-fun res!2654017 () Bool)

(assert (=> d!2027254 (=> (not res!2654017) (not e!3918534))))

(declare-fun content!12398 (List!65334) (InoxSet C!32960))

(assert (=> d!2027254 (= res!2654017 (= (content!12398 lt!2383051) ((_ map or) (content!12398 (_1!36627 lt!2383036)) (content!12398 lt!2383002))))))

(assert (=> d!2027254 (= lt!2383051 e!3918535)))

(declare-fun c!1182955 () Bool)

(assert (=> d!2027254 (= c!1182955 ((_ is Nil!65210) (_1!36627 lt!2383036)))))

(assert (=> d!2027254 (= (++!14413 (_1!36627 lt!2383036) lt!2383002) lt!2383051)))

(declare-fun b!6463071 () Bool)

(assert (=> b!6463071 (= e!3918535 (Cons!65210 (h!71658 (_1!36627 lt!2383036)) (++!14413 (t!378956 (_1!36627 lt!2383036)) lt!2383002)))))

(declare-fun b!6463073 () Bool)

(assert (=> b!6463073 (= e!3918534 (or (not (= lt!2383002 Nil!65210)) (= lt!2383051 (_1!36627 lt!2383036))))))

(assert (= (and d!2027254 c!1182955) b!6463070))

(assert (= (and d!2027254 (not c!1182955)) b!6463071))

(assert (= (and d!2027254 res!2654017) b!6463072))

(assert (= (and b!6463072 res!2654018) b!6463073))

(declare-fun m!7252232 () Bool)

(assert (=> b!6463072 m!7252232))

(declare-fun m!7252234 () Bool)

(assert (=> b!6463072 m!7252234))

(declare-fun m!7252236 () Bool)

(assert (=> b!6463072 m!7252236))

(declare-fun m!7252238 () Bool)

(assert (=> d!2027254 m!7252238))

(declare-fun m!7252240 () Bool)

(assert (=> d!2027254 m!7252240))

(declare-fun m!7252242 () Bool)

(assert (=> d!2027254 m!7252242))

(declare-fun m!7252244 () Bool)

(assert (=> b!6463071 m!7252244))

(assert (=> b!6462976 d!2027254))

(declare-fun b!6463074 () Bool)

(declare-fun e!3918537 () List!65334)

(assert (=> b!6463074 (= e!3918537 (_2!36627 lt!2383030))))

(declare-fun b!6463076 () Bool)

(declare-fun res!2654020 () Bool)

(declare-fun e!3918536 () Bool)

(assert (=> b!6463076 (=> (not res!2654020) (not e!3918536))))

(declare-fun lt!2383052 () List!65334)

(assert (=> b!6463076 (= res!2654020 (= (size!40401 lt!2383052) (+ (size!40401 lt!2383029) (size!40401 (_2!36627 lt!2383030)))))))

(declare-fun d!2027268 () Bool)

(assert (=> d!2027268 e!3918536))

(declare-fun res!2654019 () Bool)

(assert (=> d!2027268 (=> (not res!2654019) (not e!3918536))))

(assert (=> d!2027268 (= res!2654019 (= (content!12398 lt!2383052) ((_ map or) (content!12398 lt!2383029) (content!12398 (_2!36627 lt!2383030)))))))

(assert (=> d!2027268 (= lt!2383052 e!3918537)))

(declare-fun c!1182956 () Bool)

(assert (=> d!2027268 (= c!1182956 ((_ is Nil!65210) lt!2383029))))

(assert (=> d!2027268 (= (++!14413 lt!2383029 (_2!36627 lt!2383030)) lt!2383052)))

(declare-fun b!6463075 () Bool)

(assert (=> b!6463075 (= e!3918537 (Cons!65210 (h!71658 lt!2383029) (++!14413 (t!378956 lt!2383029) (_2!36627 lt!2383030))))))

(declare-fun b!6463077 () Bool)

(assert (=> b!6463077 (= e!3918536 (or (not (= (_2!36627 lt!2383030) Nil!65210)) (= lt!2383052 lt!2383029)))))

(assert (= (and d!2027268 c!1182956) b!6463074))

(assert (= (and d!2027268 (not c!1182956)) b!6463075))

(assert (= (and d!2027268 res!2654019) b!6463076))

(assert (= (and b!6463076 res!2654020) b!6463077))

(declare-fun m!7252246 () Bool)

(assert (=> b!6463076 m!7252246))

(declare-fun m!7252248 () Bool)

(assert (=> b!6463076 m!7252248))

(declare-fun m!7252250 () Bool)

(assert (=> b!6463076 m!7252250))

(declare-fun m!7252252 () Bool)

(assert (=> d!2027268 m!7252252))

(declare-fun m!7252254 () Bool)

(assert (=> d!2027268 m!7252254))

(declare-fun m!7252256 () Bool)

(assert (=> d!2027268 m!7252256))

(declare-fun m!7252258 () Bool)

(assert (=> b!6463075 m!7252258))

(assert (=> b!6462976 d!2027268))

(declare-fun b!6463078 () Bool)

(declare-fun e!3918539 () List!65334)

(assert (=> b!6463078 (= e!3918539 (_2!36627 lt!2383030))))

(declare-fun b!6463080 () Bool)

(declare-fun res!2654022 () Bool)

(declare-fun e!3918538 () Bool)

(assert (=> b!6463080 (=> (not res!2654022) (not e!3918538))))

(declare-fun lt!2383053 () List!65334)

(assert (=> b!6463080 (= res!2654022 (= (size!40401 lt!2383053) (+ (size!40401 (_2!36627 lt!2383036)) (size!40401 (_2!36627 lt!2383030)))))))

(declare-fun d!2027270 () Bool)

(assert (=> d!2027270 e!3918538))

(declare-fun res!2654021 () Bool)

(assert (=> d!2027270 (=> (not res!2654021) (not e!3918538))))

(assert (=> d!2027270 (= res!2654021 (= (content!12398 lt!2383053) ((_ map or) (content!12398 (_2!36627 lt!2383036)) (content!12398 (_2!36627 lt!2383030)))))))

(assert (=> d!2027270 (= lt!2383053 e!3918539)))

(declare-fun c!1182957 () Bool)

(assert (=> d!2027270 (= c!1182957 ((_ is Nil!65210) (_2!36627 lt!2383036)))))

(assert (=> d!2027270 (= (++!14413 (_2!36627 lt!2383036) (_2!36627 lt!2383030)) lt!2383053)))

(declare-fun b!6463079 () Bool)

(assert (=> b!6463079 (= e!3918539 (Cons!65210 (h!71658 (_2!36627 lt!2383036)) (++!14413 (t!378956 (_2!36627 lt!2383036)) (_2!36627 lt!2383030))))))

(declare-fun b!6463081 () Bool)

(assert (=> b!6463081 (= e!3918538 (or (not (= (_2!36627 lt!2383030) Nil!65210)) (= lt!2383053 (_2!36627 lt!2383036))))))

(assert (= (and d!2027270 c!1182957) b!6463078))

(assert (= (and d!2027270 (not c!1182957)) b!6463079))

(assert (= (and d!2027270 res!2654021) b!6463080))

(assert (= (and b!6463080 res!2654022) b!6463081))

(declare-fun m!7252260 () Bool)

(assert (=> b!6463080 m!7252260))

(declare-fun m!7252262 () Bool)

(assert (=> b!6463080 m!7252262))

(assert (=> b!6463080 m!7252250))

(declare-fun m!7252264 () Bool)

(assert (=> d!2027270 m!7252264))

(declare-fun m!7252266 () Bool)

(assert (=> d!2027270 m!7252266))

(assert (=> d!2027270 m!7252256))

(declare-fun m!7252268 () Bool)

(assert (=> b!6463079 m!7252268))

(assert (=> b!6462976 d!2027270))

(declare-fun d!2027272 () Bool)

(assert (=> d!2027272 (= (++!14413 (++!14413 (_1!36627 lt!2383036) (_2!36627 lt!2383036)) (_2!36627 lt!2383030)) (++!14413 (_1!36627 lt!2383036) (++!14413 (_2!36627 lt!2383036) (_2!36627 lt!2383030))))))

(declare-fun lt!2383058 () Unit!158711)

(declare-fun choose!47916 (List!65334 List!65334 List!65334) Unit!158711)

(assert (=> d!2027272 (= lt!2383058 (choose!47916 (_1!36627 lt!2383036) (_2!36627 lt!2383036) (_2!36627 lt!2383030)))))

(assert (=> d!2027272 (= (lemmaConcatAssociativity!2916 (_1!36627 lt!2383036) (_2!36627 lt!2383036) (_2!36627 lt!2383030)) lt!2383058)))

(declare-fun bs!1635990 () Bool)

(assert (= bs!1635990 d!2027272))

(assert (=> bs!1635990 m!7252016))

(declare-fun m!7252270 () Bool)

(assert (=> bs!1635990 m!7252270))

(declare-fun m!7252272 () Bool)

(assert (=> bs!1635990 m!7252272))

(assert (=> bs!1635990 m!7252020))

(assert (=> bs!1635990 m!7252016))

(assert (=> bs!1635990 m!7252020))

(declare-fun m!7252274 () Bool)

(assert (=> bs!1635990 m!7252274))

(assert (=> b!6462976 d!2027272))

(declare-fun d!2027274 () Bool)

(declare-fun lt!2383062 () Regex!16345)

(assert (=> d!2027274 (validRegex!8081 lt!2383062)))

(assert (=> d!2027274 (= lt!2383062 (generalisedUnion!2189 (unfocusZipperList!1766 zl!343)))))

(assert (=> d!2027274 (= (unfocusZipper!2087 zl!343) lt!2383062)))

(declare-fun bs!1635991 () Bool)

(assert (= bs!1635991 d!2027274))

(declare-fun m!7252292 () Bool)

(assert (=> bs!1635991 m!7252292))

(assert (=> bs!1635991 m!7252164))

(assert (=> bs!1635991 m!7252164))

(assert (=> bs!1635991 m!7252166))

(assert (=> b!6462975 d!2027274))

(declare-fun d!2027278 () Bool)

(declare-fun lambda!357129 () Int)

(declare-fun forall!15533 (List!65335 Int) Bool)

(assert (=> d!2027278 (= (inv!84109 (h!71660 zl!343)) (forall!15533 (exprs!6229 (h!71660 zl!343)) lambda!357129))))

(declare-fun bs!1635992 () Bool)

(assert (= bs!1635992 d!2027278))

(declare-fun m!7252294 () Bool)

(assert (=> bs!1635992 m!7252294))

(assert (=> b!6462954 d!2027278))

(declare-fun d!2027280 () Bool)

(declare-fun lt!2383066 () Regex!16345)

(assert (=> d!2027280 (validRegex!8081 lt!2383066)))

(assert (=> d!2027280 (= lt!2383066 (generalisedUnion!2189 (unfocusZipperList!1766 (Cons!65212 lt!2383028 Nil!65212))))))

(assert (=> d!2027280 (= (unfocusZipper!2087 (Cons!65212 lt!2383028 Nil!65212)) lt!2383066)))

(declare-fun bs!1635993 () Bool)

(assert (= bs!1635993 d!2027280))

(declare-fun m!7252296 () Bool)

(assert (=> bs!1635993 m!7252296))

(declare-fun m!7252298 () Bool)

(assert (=> bs!1635993 m!7252298))

(assert (=> bs!1635993 m!7252298))

(declare-fun m!7252300 () Bool)

(assert (=> bs!1635993 m!7252300))

(assert (=> b!6462995 d!2027280))

(declare-fun d!2027282 () Bool)

(declare-fun nullableFct!2282 (Regex!16345) Bool)

(assert (=> d!2027282 (= (nullable!6338 (regOne!33202 (regOne!33202 r!7292))) (nullableFct!2282 (regOne!33202 (regOne!33202 r!7292))))))

(declare-fun bs!1635994 () Bool)

(assert (= bs!1635994 d!2027282))

(declare-fun m!7252316 () Bool)

(assert (=> bs!1635994 m!7252316))

(assert (=> b!6462994 d!2027282))

(declare-fun d!2027286 () Bool)

(declare-fun choose!47918 ((InoxSet Context!11458) Int) (InoxSet Context!11458))

(assert (=> d!2027286 (= (flatMap!1850 lt!2383022 lambda!357121) (choose!47918 lt!2383022 lambda!357121))))

(declare-fun bs!1635995 () Bool)

(assert (= bs!1635995 d!2027286))

(declare-fun m!7252318 () Bool)

(assert (=> bs!1635995 m!7252318))

(assert (=> b!6462974 d!2027286))

(declare-fun bm!558507 () Bool)

(declare-fun call!558512 () (InoxSet Context!11458))

(assert (=> bm!558507 (= call!558512 (derivationStepZipperDown!1593 (h!71659 (exprs!6229 lt!2383004)) (Context!11459 (t!378957 (exprs!6229 lt!2383004))) (h!71658 s!2326)))))

(declare-fun e!3918575 () (InoxSet Context!11458))

(declare-fun b!6463150 () Bool)

(assert (=> b!6463150 (= e!3918575 ((_ map or) call!558512 (derivationStepZipperUp!1519 (Context!11459 (t!378957 (exprs!6229 lt!2383004))) (h!71658 s!2326))))))

(declare-fun b!6463151 () Bool)

(declare-fun e!3918577 () Bool)

(assert (=> b!6463151 (= e!3918577 (nullable!6338 (h!71659 (exprs!6229 lt!2383004))))))

(declare-fun b!6463152 () Bool)

(declare-fun e!3918576 () (InoxSet Context!11458))

(assert (=> b!6463152 (= e!3918575 e!3918576)))

(declare-fun c!1182974 () Bool)

(assert (=> b!6463152 (= c!1182974 ((_ is Cons!65211) (exprs!6229 lt!2383004)))))

(declare-fun d!2027288 () Bool)

(declare-fun c!1182975 () Bool)

(assert (=> d!2027288 (= c!1182975 e!3918577)))

(declare-fun res!2654059 () Bool)

(assert (=> d!2027288 (=> (not res!2654059) (not e!3918577))))

(assert (=> d!2027288 (= res!2654059 ((_ is Cons!65211) (exprs!6229 lt!2383004)))))

(assert (=> d!2027288 (= (derivationStepZipperUp!1519 lt!2383004 (h!71658 s!2326)) e!3918575)))

(declare-fun b!6463153 () Bool)

(assert (=> b!6463153 (= e!3918576 call!558512)))

(declare-fun b!6463154 () Bool)

(assert (=> b!6463154 (= e!3918576 ((as const (Array Context!11458 Bool)) false))))

(assert (= (and d!2027288 res!2654059) b!6463151))

(assert (= (and d!2027288 c!1182975) b!6463150))

(assert (= (and d!2027288 (not c!1182975)) b!6463152))

(assert (= (and b!6463152 c!1182974) b!6463153))

(assert (= (and b!6463152 (not c!1182974)) b!6463154))

(assert (= (or b!6463150 b!6463153) bm!558507))

(declare-fun m!7252328 () Bool)

(assert (=> bm!558507 m!7252328))

(declare-fun m!7252330 () Bool)

(assert (=> b!6463150 m!7252330))

(declare-fun m!7252332 () Bool)

(assert (=> b!6463151 m!7252332))

(assert (=> b!6462974 d!2027288))

(declare-fun d!2027292 () Bool)

(declare-fun dynLambda!25907 (Int Context!11458) (InoxSet Context!11458))

(assert (=> d!2027292 (= (flatMap!1850 lt!2383022 lambda!357121) (dynLambda!25907 lambda!357121 lt!2383004))))

(declare-fun lt!2383074 () Unit!158711)

(declare-fun choose!47919 ((InoxSet Context!11458) Context!11458 Int) Unit!158711)

(assert (=> d!2027292 (= lt!2383074 (choose!47919 lt!2383022 lt!2383004 lambda!357121))))

(assert (=> d!2027292 (= lt!2383022 (store ((as const (Array Context!11458 Bool)) false) lt!2383004 true))))

(assert (=> d!2027292 (= (lemmaFlatMapOnSingletonSet!1376 lt!2383022 lt!2383004 lambda!357121) lt!2383074)))

(declare-fun b_lambda!245067 () Bool)

(assert (=> (not b_lambda!245067) (not d!2027292)))

(declare-fun bs!1636000 () Bool)

(assert (= bs!1636000 d!2027292))

(assert (=> bs!1636000 m!7252136))

(declare-fun m!7252334 () Bool)

(assert (=> bs!1636000 m!7252334))

(declare-fun m!7252336 () Bool)

(assert (=> bs!1636000 m!7252336))

(assert (=> bs!1636000 m!7252126))

(assert (=> b!6462974 d!2027292))

(declare-fun d!2027294 () Bool)

(assert (=> d!2027294 (= (flatMap!1850 lt!2382998 lambda!357121) (choose!47918 lt!2382998 lambda!357121))))

(declare-fun bs!1636001 () Bool)

(assert (= bs!1636001 d!2027294))

(declare-fun m!7252338 () Bool)

(assert (=> bs!1636001 m!7252338))

(assert (=> b!6462974 d!2027294))

(declare-fun d!2027296 () Bool)

(assert (=> d!2027296 (= (flatMap!1850 lt!2382998 lambda!357121) (dynLambda!25907 lambda!357121 lt!2383038))))

(declare-fun lt!2383075 () Unit!158711)

(assert (=> d!2027296 (= lt!2383075 (choose!47919 lt!2382998 lt!2383038 lambda!357121))))

(assert (=> d!2027296 (= lt!2382998 (store ((as const (Array Context!11458 Bool)) false) lt!2383038 true))))

(assert (=> d!2027296 (= (lemmaFlatMapOnSingletonSet!1376 lt!2382998 lt!2383038 lambda!357121) lt!2383075)))

(declare-fun b_lambda!245069 () Bool)

(assert (=> (not b_lambda!245069) (not d!2027296)))

(declare-fun bs!1636002 () Bool)

(assert (= bs!1636002 d!2027296))

(assert (=> bs!1636002 m!7252130))

(declare-fun m!7252340 () Bool)

(assert (=> bs!1636002 m!7252340))

(declare-fun m!7252342 () Bool)

(assert (=> bs!1636002 m!7252342))

(assert (=> bs!1636002 m!7252134))

(assert (=> b!6462974 d!2027296))

(declare-fun bm!558508 () Bool)

(declare-fun call!558513 () (InoxSet Context!11458))

(assert (=> bm!558508 (= call!558513 (derivationStepZipperDown!1593 (h!71659 (exprs!6229 lt!2383038)) (Context!11459 (t!378957 (exprs!6229 lt!2383038))) (h!71658 s!2326)))))

(declare-fun b!6463159 () Bool)

(declare-fun e!3918580 () (InoxSet Context!11458))

(assert (=> b!6463159 (= e!3918580 ((_ map or) call!558513 (derivationStepZipperUp!1519 (Context!11459 (t!378957 (exprs!6229 lt!2383038))) (h!71658 s!2326))))))

(declare-fun b!6463160 () Bool)

(declare-fun e!3918582 () Bool)

(assert (=> b!6463160 (= e!3918582 (nullable!6338 (h!71659 (exprs!6229 lt!2383038))))))

(declare-fun b!6463161 () Bool)

(declare-fun e!3918581 () (InoxSet Context!11458))

(assert (=> b!6463161 (= e!3918580 e!3918581)))

(declare-fun c!1182976 () Bool)

(assert (=> b!6463161 (= c!1182976 ((_ is Cons!65211) (exprs!6229 lt!2383038)))))

(declare-fun d!2027298 () Bool)

(declare-fun c!1182977 () Bool)

(assert (=> d!2027298 (= c!1182977 e!3918582)))

(declare-fun res!2654064 () Bool)

(assert (=> d!2027298 (=> (not res!2654064) (not e!3918582))))

(assert (=> d!2027298 (= res!2654064 ((_ is Cons!65211) (exprs!6229 lt!2383038)))))

(assert (=> d!2027298 (= (derivationStepZipperUp!1519 lt!2383038 (h!71658 s!2326)) e!3918580)))

(declare-fun b!6463162 () Bool)

(assert (=> b!6463162 (= e!3918581 call!558513)))

(declare-fun b!6463163 () Bool)

(assert (=> b!6463163 (= e!3918581 ((as const (Array Context!11458 Bool)) false))))

(assert (= (and d!2027298 res!2654064) b!6463160))

(assert (= (and d!2027298 c!1182977) b!6463159))

(assert (= (and d!2027298 (not c!1182977)) b!6463161))

(assert (= (and b!6463161 c!1182976) b!6463162))

(assert (= (and b!6463161 (not c!1182976)) b!6463163))

(assert (= (or b!6463159 b!6463162) bm!558508))

(declare-fun m!7252344 () Bool)

(assert (=> bm!558508 m!7252344))

(declare-fun m!7252346 () Bool)

(assert (=> b!6463159 m!7252346))

(declare-fun m!7252348 () Bool)

(assert (=> b!6463160 m!7252348))

(assert (=> b!6462974 d!2027298))

(declare-fun d!2027300 () Bool)

(declare-fun lt!2383076 () Regex!16345)

(assert (=> d!2027300 (validRegex!8081 lt!2383076)))

(assert (=> d!2027300 (= lt!2383076 (generalisedUnion!2189 (unfocusZipperList!1766 lt!2383010)))))

(assert (=> d!2027300 (= (unfocusZipper!2087 lt!2383010) lt!2383076)))

(declare-fun bs!1636003 () Bool)

(assert (= bs!1636003 d!2027300))

(declare-fun m!7252350 () Bool)

(assert (=> bs!1636003 m!7252350))

(declare-fun m!7252352 () Bool)

(assert (=> bs!1636003 m!7252352))

(assert (=> bs!1636003 m!7252352))

(declare-fun m!7252354 () Bool)

(assert (=> bs!1636003 m!7252354))

(assert (=> b!6462974 d!2027300))

(declare-fun bs!1636011 () Bool)

(declare-fun b!6463232 () Bool)

(assert (= bs!1636011 (and b!6463232 b!6462961)))

(declare-fun lambda!357147 () Int)

(assert (=> bs!1636011 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (reg!16674 r!7292) (reg!16674 (regOne!33202 r!7292))) (= r!7292 lt!2383009)) (= lambda!357147 lambda!357125))))

(declare-fun bs!1636012 () Bool)

(assert (= bs!1636012 (and b!6463232 b!6462972)))

(assert (=> bs!1636012 (not (= lambda!357147 lambda!357123))))

(assert (=> bs!1636012 (not (= lambda!357147 lambda!357122))))

(assert (=> bs!1636011 (not (= lambda!357147 lambda!357124))))

(declare-fun bs!1636013 () Bool)

(assert (= bs!1636013 (and b!6463232 b!6462980)))

(assert (=> bs!1636013 (not (= lambda!357147 lambda!357120))))

(assert (=> bs!1636013 (not (= lambda!357147 lambda!357119))))

(assert (=> bs!1636011 (not (= lambda!357147 lambda!357126))))

(assert (=> b!6463232 true))

(assert (=> b!6463232 true))

(declare-fun bs!1636014 () Bool)

(declare-fun b!6463237 () Bool)

(assert (= bs!1636014 (and b!6463237 b!6462961)))

(declare-fun lambda!357148 () Int)

(assert (=> bs!1636014 (not (= lambda!357148 lambda!357125))))

(declare-fun bs!1636015 () Bool)

(assert (= bs!1636015 (and b!6463237 b!6462972)))

(assert (=> bs!1636015 (= (= (regOne!33202 r!7292) lt!2383009) (= lambda!357148 lambda!357123))))

(assert (=> bs!1636015 (not (= lambda!357148 lambda!357122))))

(assert (=> bs!1636014 (not (= lambda!357148 lambda!357124))))

(declare-fun bs!1636016 () Bool)

(assert (= bs!1636016 (and b!6463237 b!6462980)))

(assert (=> bs!1636016 (= lambda!357148 lambda!357120)))

(declare-fun bs!1636017 () Bool)

(assert (= bs!1636017 (and b!6463237 b!6463232)))

(assert (=> bs!1636017 (not (= lambda!357148 lambda!357147))))

(assert (=> bs!1636016 (not (= lambda!357148 lambda!357119))))

(assert (=> bs!1636014 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357148 lambda!357126))))

(assert (=> b!6463237 true))

(assert (=> b!6463237 true))

(declare-fun b!6463230 () Bool)

(declare-fun e!3918620 () Bool)

(declare-fun call!558518 () Bool)

(assert (=> b!6463230 (= e!3918620 call!558518)))

(declare-fun e!3918619 () Bool)

(declare-fun call!558519 () Bool)

(assert (=> b!6463232 (= e!3918619 call!558519)))

(declare-fun c!1182997 () Bool)

(declare-fun bm!558513 () Bool)

(assert (=> bm!558513 (= call!558519 (Exists!3415 (ite c!1182997 lambda!357147 lambda!357148)))))

(declare-fun b!6463233 () Bool)

(declare-fun e!3918624 () Bool)

(assert (=> b!6463233 (= e!3918624 (matchRSpec!3446 (regTwo!33203 r!7292) s!2326))))

(declare-fun b!6463234 () Bool)

(declare-fun e!3918623 () Bool)

(assert (=> b!6463234 (= e!3918623 e!3918624)))

(declare-fun res!2654099 () Bool)

(assert (=> b!6463234 (= res!2654099 (matchRSpec!3446 (regOne!33203 r!7292) s!2326))))

(assert (=> b!6463234 (=> res!2654099 e!3918624)))

(declare-fun bm!558514 () Bool)

(assert (=> bm!558514 (= call!558518 (isEmpty!37386 s!2326))))

(declare-fun b!6463235 () Bool)

(declare-fun e!3918622 () Bool)

(assert (=> b!6463235 (= e!3918623 e!3918622)))

(assert (=> b!6463235 (= c!1182997 ((_ is Star!16345) r!7292))))

(declare-fun b!6463236 () Bool)

(declare-fun e!3918625 () Bool)

(assert (=> b!6463236 (= e!3918625 (= s!2326 (Cons!65210 (c!1182927 r!7292) Nil!65210)))))

(declare-fun b!6463231 () Bool)

(declare-fun e!3918621 () Bool)

(assert (=> b!6463231 (= e!3918620 e!3918621)))

(declare-fun res!2654101 () Bool)

(assert (=> b!6463231 (= res!2654101 (not ((_ is EmptyLang!16345) r!7292)))))

(assert (=> b!6463231 (=> (not res!2654101) (not e!3918621))))

(declare-fun d!2027302 () Bool)

(declare-fun c!1182994 () Bool)

(assert (=> d!2027302 (= c!1182994 ((_ is EmptyExpr!16345) r!7292))))

(assert (=> d!2027302 (= (matchRSpec!3446 r!7292 s!2326) e!3918620)))

(assert (=> b!6463237 (= e!3918622 call!558519)))

(declare-fun b!6463238 () Bool)

(declare-fun c!1182996 () Bool)

(assert (=> b!6463238 (= c!1182996 ((_ is Union!16345) r!7292))))

(assert (=> b!6463238 (= e!3918625 e!3918623)))

(declare-fun b!6463239 () Bool)

(declare-fun c!1182995 () Bool)

(assert (=> b!6463239 (= c!1182995 ((_ is ElementMatch!16345) r!7292))))

(assert (=> b!6463239 (= e!3918621 e!3918625)))

(declare-fun b!6463240 () Bool)

(declare-fun res!2654100 () Bool)

(assert (=> b!6463240 (=> res!2654100 e!3918619)))

(assert (=> b!6463240 (= res!2654100 call!558518)))

(assert (=> b!6463240 (= e!3918622 e!3918619)))

(assert (= (and d!2027302 c!1182994) b!6463230))

(assert (= (and d!2027302 (not c!1182994)) b!6463231))

(assert (= (and b!6463231 res!2654101) b!6463239))

(assert (= (and b!6463239 c!1182995) b!6463236))

(assert (= (and b!6463239 (not c!1182995)) b!6463238))

(assert (= (and b!6463238 c!1182996) b!6463234))

(assert (= (and b!6463238 (not c!1182996)) b!6463235))

(assert (= (and b!6463234 (not res!2654099)) b!6463233))

(assert (= (and b!6463235 c!1182997) b!6463240))

(assert (= (and b!6463235 (not c!1182997)) b!6463237))

(assert (= (and b!6463240 (not res!2654100)) b!6463232))

(assert (= (or b!6463232 b!6463237) bm!558513))

(assert (= (or b!6463230 b!6463240) bm!558514))

(declare-fun m!7252366 () Bool)

(assert (=> bm!558513 m!7252366))

(declare-fun m!7252368 () Bool)

(assert (=> b!6463233 m!7252368))

(declare-fun m!7252370 () Bool)

(assert (=> b!6463234 m!7252370))

(declare-fun m!7252372 () Bool)

(assert (=> bm!558514 m!7252372))

(assert (=> b!6462952 d!2027302))

(declare-fun b!6463284 () Bool)

(declare-fun e!3918650 () Bool)

(declare-fun head!13176 (List!65334) C!32960)

(assert (=> b!6463284 (= e!3918650 (not (= (head!13176 s!2326) (c!1182927 r!7292))))))

(declare-fun b!6463285 () Bool)

(declare-fun res!2654129 () Bool)

(declare-fun e!3918654 () Bool)

(assert (=> b!6463285 (=> (not res!2654129) (not e!3918654))))

(declare-fun call!558528 () Bool)

(assert (=> b!6463285 (= res!2654129 (not call!558528))))

(declare-fun b!6463286 () Bool)

(declare-fun e!3918655 () Bool)

(assert (=> b!6463286 (= e!3918655 (nullable!6338 r!7292))))

(declare-fun b!6463287 () Bool)

(declare-fun e!3918653 () Bool)

(declare-fun e!3918652 () Bool)

(assert (=> b!6463287 (= e!3918653 e!3918652)))

(declare-fun c!1183008 () Bool)

(assert (=> b!6463287 (= c!1183008 ((_ is EmptyLang!16345) r!7292))))

(declare-fun b!6463288 () Bool)

(declare-fun res!2654126 () Bool)

(declare-fun e!3918651 () Bool)

(assert (=> b!6463288 (=> res!2654126 e!3918651)))

(assert (=> b!6463288 (= res!2654126 e!3918654)))

(declare-fun res!2654127 () Bool)

(assert (=> b!6463288 (=> (not res!2654127) (not e!3918654))))

(declare-fun lt!2383083 () Bool)

(assert (=> b!6463288 (= res!2654127 lt!2383083)))

(declare-fun b!6463289 () Bool)

(declare-fun e!3918649 () Bool)

(assert (=> b!6463289 (= e!3918649 e!3918650)))

(declare-fun res!2654128 () Bool)

(assert (=> b!6463289 (=> res!2654128 e!3918650)))

(assert (=> b!6463289 (= res!2654128 call!558528)))

(declare-fun d!2027310 () Bool)

(assert (=> d!2027310 e!3918653))

(declare-fun c!1183009 () Bool)

(assert (=> d!2027310 (= c!1183009 ((_ is EmptyExpr!16345) r!7292))))

(assert (=> d!2027310 (= lt!2383083 e!3918655)))

(declare-fun c!1183010 () Bool)

(assert (=> d!2027310 (= c!1183010 (isEmpty!37386 s!2326))))

(assert (=> d!2027310 (validRegex!8081 r!7292)))

(assert (=> d!2027310 (= (matchR!8528 r!7292 s!2326) lt!2383083)))

(declare-fun b!6463290 () Bool)

(assert (=> b!6463290 (= e!3918651 e!3918649)))

(declare-fun res!2654131 () Bool)

(assert (=> b!6463290 (=> (not res!2654131) (not e!3918649))))

(assert (=> b!6463290 (= res!2654131 (not lt!2383083))))

(declare-fun bm!558523 () Bool)

(assert (=> bm!558523 (= call!558528 (isEmpty!37386 s!2326))))

(declare-fun b!6463291 () Bool)

(assert (=> b!6463291 (= e!3918652 (not lt!2383083))))

(declare-fun b!6463292 () Bool)

(assert (=> b!6463292 (= e!3918654 (= (head!13176 s!2326) (c!1182927 r!7292)))))

(declare-fun b!6463293 () Bool)

(declare-fun derivativeStep!5047 (Regex!16345 C!32960) Regex!16345)

(declare-fun tail!12261 (List!65334) List!65334)

(assert (=> b!6463293 (= e!3918655 (matchR!8528 (derivativeStep!5047 r!7292 (head!13176 s!2326)) (tail!12261 s!2326)))))

(declare-fun b!6463294 () Bool)

(assert (=> b!6463294 (= e!3918653 (= lt!2383083 call!558528))))

(declare-fun b!6463295 () Bool)

(declare-fun res!2654125 () Bool)

(assert (=> b!6463295 (=> (not res!2654125) (not e!3918654))))

(assert (=> b!6463295 (= res!2654125 (isEmpty!37386 (tail!12261 s!2326)))))

(declare-fun b!6463296 () Bool)

(declare-fun res!2654132 () Bool)

(assert (=> b!6463296 (=> res!2654132 e!3918651)))

(assert (=> b!6463296 (= res!2654132 (not ((_ is ElementMatch!16345) r!7292)))))

(assert (=> b!6463296 (= e!3918652 e!3918651)))

(declare-fun b!6463297 () Bool)

(declare-fun res!2654130 () Bool)

(assert (=> b!6463297 (=> res!2654130 e!3918650)))

(assert (=> b!6463297 (= res!2654130 (not (isEmpty!37386 (tail!12261 s!2326))))))

(assert (= (and d!2027310 c!1183010) b!6463286))

(assert (= (and d!2027310 (not c!1183010)) b!6463293))

(assert (= (and d!2027310 c!1183009) b!6463294))

(assert (= (and d!2027310 (not c!1183009)) b!6463287))

(assert (= (and b!6463287 c!1183008) b!6463291))

(assert (= (and b!6463287 (not c!1183008)) b!6463296))

(assert (= (and b!6463296 (not res!2654132)) b!6463288))

(assert (= (and b!6463288 res!2654127) b!6463285))

(assert (= (and b!6463285 res!2654129) b!6463295))

(assert (= (and b!6463295 res!2654125) b!6463292))

(assert (= (and b!6463288 (not res!2654126)) b!6463290))

(assert (= (and b!6463290 res!2654131) b!6463289))

(assert (= (and b!6463289 (not res!2654128)) b!6463297))

(assert (= (and b!6463297 (not res!2654130)) b!6463284))

(assert (= (or b!6463294 b!6463285 b!6463289) bm!558523))

(declare-fun m!7252382 () Bool)

(assert (=> b!6463295 m!7252382))

(assert (=> b!6463295 m!7252382))

(declare-fun m!7252384 () Bool)

(assert (=> b!6463295 m!7252384))

(declare-fun m!7252386 () Bool)

(assert (=> b!6463293 m!7252386))

(assert (=> b!6463293 m!7252386))

(declare-fun m!7252388 () Bool)

(assert (=> b!6463293 m!7252388))

(assert (=> b!6463293 m!7252382))

(assert (=> b!6463293 m!7252388))

(assert (=> b!6463293 m!7252382))

(declare-fun m!7252390 () Bool)

(assert (=> b!6463293 m!7252390))

(declare-fun m!7252392 () Bool)

(assert (=> b!6463286 m!7252392))

(assert (=> bm!558523 m!7252372))

(assert (=> b!6463284 m!7252386))

(assert (=> d!2027310 m!7252372))

(assert (=> d!2027310 m!7252098))

(assert (=> b!6463292 m!7252386))

(assert (=> b!6463297 m!7252382))

(assert (=> b!6463297 m!7252382))

(assert (=> b!6463297 m!7252384))

(assert (=> b!6462952 d!2027310))

(declare-fun d!2027316 () Bool)

(assert (=> d!2027316 (= (matchR!8528 r!7292 s!2326) (matchRSpec!3446 r!7292 s!2326))))

(declare-fun lt!2383086 () Unit!158711)

(declare-fun choose!47923 (Regex!16345 List!65334) Unit!158711)

(assert (=> d!2027316 (= lt!2383086 (choose!47923 r!7292 s!2326))))

(assert (=> d!2027316 (validRegex!8081 r!7292)))

(assert (=> d!2027316 (= (mainMatchTheorem!3446 r!7292 s!2326) lt!2383086)))

(declare-fun bs!1636030 () Bool)

(assert (= bs!1636030 d!2027316))

(assert (=> bs!1636030 m!7252074))

(assert (=> bs!1636030 m!7252072))

(declare-fun m!7252394 () Bool)

(assert (=> bs!1636030 m!7252394))

(assert (=> bs!1636030 m!7252098))

(assert (=> b!6462952 d!2027316))

(declare-fun d!2027318 () Bool)

(assert (=> d!2027318 (= (matchR!8528 lt!2383009 (_1!36627 lt!2383030)) (matchRSpec!3446 lt!2383009 (_1!36627 lt!2383030)))))

(declare-fun lt!2383087 () Unit!158711)

(assert (=> d!2027318 (= lt!2383087 (choose!47923 lt!2383009 (_1!36627 lt!2383030)))))

(assert (=> d!2027318 (validRegex!8081 lt!2383009)))

(assert (=> d!2027318 (= (mainMatchTheorem!3446 lt!2383009 (_1!36627 lt!2383030)) lt!2383087)))

(declare-fun bs!1636031 () Bool)

(assert (= bs!1636031 d!2027318))

(assert (=> bs!1636031 m!7252052))

(assert (=> bs!1636031 m!7252026))

(declare-fun m!7252396 () Bool)

(assert (=> bs!1636031 m!7252396))

(declare-fun m!7252398 () Bool)

(assert (=> bs!1636031 m!7252398))

(assert (=> b!6462961 d!2027318))

(declare-fun d!2027320 () Bool)

(declare-fun choose!47924 (Int) Bool)

(assert (=> d!2027320 (= (Exists!3415 lambda!357124) (choose!47924 lambda!357124))))

(declare-fun bs!1636032 () Bool)

(assert (= bs!1636032 d!2027320))

(declare-fun m!7252400 () Bool)

(assert (=> bs!1636032 m!7252400))

(assert (=> b!6462961 d!2027320))

(declare-fun d!2027322 () Bool)

(assert (=> d!2027322 (= (get!22601 lt!2383033) (v!52412 lt!2383033))))

(assert (=> b!6462961 d!2027322))

(declare-fun bs!1636034 () Bool)

(declare-fun d!2027324 () Bool)

(assert (= bs!1636034 (and d!2027324 b!6462961)))

(declare-fun lambda!357155 () Int)

(assert (=> bs!1636034 (not (= lambda!357155 lambda!357125))))

(declare-fun bs!1636035 () Bool)

(assert (= bs!1636035 (and d!2027324 b!6462972)))

(assert (=> bs!1636035 (not (= lambda!357155 lambda!357123))))

(assert (=> bs!1636035 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) lt!2383009) (= lt!2383009 (regTwo!33202 r!7292))) (= lambda!357155 lambda!357122))))

(assert (=> bs!1636034 (= lambda!357155 lambda!357124)))

(declare-fun bs!1636036 () Bool)

(assert (= bs!1636036 (and d!2027324 b!6463237)))

(assert (=> bs!1636036 (not (= lambda!357155 lambda!357148))))

(declare-fun bs!1636037 () Bool)

(assert (= bs!1636037 (and d!2027324 b!6462980)))

(assert (=> bs!1636037 (not (= lambda!357155 lambda!357120))))

(declare-fun bs!1636038 () Bool)

(assert (= bs!1636038 (and d!2027324 b!6463232)))

(assert (=> bs!1636038 (not (= lambda!357155 lambda!357147))))

(assert (=> bs!1636037 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) (regOne!33202 r!7292)) (= lt!2383009 (regTwo!33202 r!7292))) (= lambda!357155 lambda!357119))))

(assert (=> bs!1636034 (not (= lambda!357155 lambda!357126))))

(assert (=> d!2027324 true))

(assert (=> d!2027324 true))

(assert (=> d!2027324 true))

(declare-fun lambda!357156 () Int)

(assert (=> bs!1636034 (not (= lambda!357156 lambda!357125))))

(assert (=> bs!1636035 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) lt!2383009) (= lt!2383009 (regTwo!33202 r!7292))) (= lambda!357156 lambda!357123))))

(assert (=> bs!1636035 (not (= lambda!357156 lambda!357122))))

(assert (=> bs!1636034 (not (= lambda!357156 lambda!357124))))

(assert (=> bs!1636036 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) (regOne!33202 r!7292)) (= lt!2383009 (regTwo!33202 r!7292))) (= lambda!357156 lambda!357148))))

(assert (=> bs!1636037 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) (regOne!33202 r!7292)) (= lt!2383009 (regTwo!33202 r!7292))) (= lambda!357156 lambda!357120))))

(assert (=> bs!1636038 (not (= lambda!357156 lambda!357147))))

(declare-fun bs!1636039 () Bool)

(assert (= bs!1636039 d!2027324))

(assert (=> bs!1636039 (not (= lambda!357156 lambda!357155))))

(assert (=> bs!1636037 (not (= lambda!357156 lambda!357119))))

(assert (=> bs!1636034 (= lambda!357156 lambda!357126)))

(assert (=> d!2027324 true))

(assert (=> d!2027324 true))

(assert (=> d!2027324 true))

(assert (=> d!2027324 (= (Exists!3415 lambda!357155) (Exists!3415 lambda!357156))))

(declare-fun lt!2383099 () Unit!158711)

(declare-fun choose!47926 (Regex!16345 Regex!16345 List!65334) Unit!158711)

(assert (=> d!2027324 (= lt!2383099 (choose!47926 (reg!16674 (regOne!33202 r!7292)) lt!2383009 (_1!36627 lt!2383030)))))

(assert (=> d!2027324 (validRegex!8081 (reg!16674 (regOne!33202 r!7292)))))

(assert (=> d!2027324 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1952 (reg!16674 (regOne!33202 r!7292)) lt!2383009 (_1!36627 lt!2383030)) lt!2383099)))

(declare-fun m!7252424 () Bool)

(assert (=> bs!1636039 m!7252424))

(declare-fun m!7252426 () Bool)

(assert (=> bs!1636039 m!7252426))

(declare-fun m!7252428 () Bool)

(assert (=> bs!1636039 m!7252428))

(declare-fun m!7252430 () Bool)

(assert (=> bs!1636039 m!7252430))

(assert (=> b!6462961 d!2027324))

(declare-fun d!2027332 () Bool)

(declare-fun isEmpty!37390 (Option!16236) Bool)

(assert (=> d!2027332 (= (isDefined!12939 lt!2383033) (not (isEmpty!37390 lt!2383033)))))

(declare-fun bs!1636040 () Bool)

(assert (= bs!1636040 d!2027332))

(declare-fun m!7252432 () Bool)

(assert (=> bs!1636040 m!7252432))

(assert (=> b!6462961 d!2027332))

(declare-fun bs!1636052 () Bool)

(declare-fun d!2027334 () Bool)

(assert (= bs!1636052 (and d!2027334 b!6462961)))

(declare-fun lambda!357167 () Int)

(assert (=> bs!1636052 (not (= lambda!357167 lambda!357125))))

(declare-fun bs!1636053 () Bool)

(assert (= bs!1636053 (and d!2027334 b!6462972)))

(assert (=> bs!1636053 (not (= lambda!357167 lambda!357123))))

(declare-fun bs!1636054 () Bool)

(assert (= bs!1636054 (and d!2027334 d!2027324)))

(assert (=> bs!1636054 (not (= lambda!357167 lambda!357156))))

(assert (=> bs!1636053 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) lt!2383009) (= (Star!16345 (reg!16674 (regOne!33202 r!7292))) (regTwo!33202 r!7292))) (= lambda!357167 lambda!357122))))

(assert (=> bs!1636052 (= (= (Star!16345 (reg!16674 (regOne!33202 r!7292))) lt!2383009) (= lambda!357167 lambda!357124))))

(declare-fun bs!1636055 () Bool)

(assert (= bs!1636055 (and d!2027334 b!6463237)))

(assert (=> bs!1636055 (not (= lambda!357167 lambda!357148))))

(declare-fun bs!1636056 () Bool)

(assert (= bs!1636056 (and d!2027334 b!6462980)))

(assert (=> bs!1636056 (not (= lambda!357167 lambda!357120))))

(declare-fun bs!1636057 () Bool)

(assert (= bs!1636057 (and d!2027334 b!6463232)))

(assert (=> bs!1636057 (not (= lambda!357167 lambda!357147))))

(assert (=> bs!1636054 (= (= (Star!16345 (reg!16674 (regOne!33202 r!7292))) lt!2383009) (= lambda!357167 lambda!357155))))

(assert (=> bs!1636056 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) (regOne!33202 r!7292)) (= (Star!16345 (reg!16674 (regOne!33202 r!7292))) (regTwo!33202 r!7292))) (= lambda!357167 lambda!357119))))

(assert (=> bs!1636052 (not (= lambda!357167 lambda!357126))))

(assert (=> d!2027334 true))

(assert (=> d!2027334 true))

(declare-fun lambda!357168 () Int)

(assert (=> bs!1636052 (= (= (Star!16345 (reg!16674 (regOne!33202 r!7292))) lt!2383009) (= lambda!357168 lambda!357125))))

(assert (=> bs!1636053 (not (= lambda!357168 lambda!357123))))

(declare-fun bs!1636058 () Bool)

(assert (= bs!1636058 d!2027334))

(assert (=> bs!1636058 (not (= lambda!357168 lambda!357167))))

(assert (=> bs!1636054 (not (= lambda!357168 lambda!357156))))

(assert (=> bs!1636053 (not (= lambda!357168 lambda!357122))))

(assert (=> bs!1636052 (not (= lambda!357168 lambda!357124))))

(assert (=> bs!1636055 (not (= lambda!357168 lambda!357148))))

(assert (=> bs!1636056 (not (= lambda!357168 lambda!357120))))

(assert (=> bs!1636057 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) (reg!16674 r!7292)) (= (Star!16345 (reg!16674 (regOne!33202 r!7292))) r!7292)) (= lambda!357168 lambda!357147))))

(assert (=> bs!1636054 (not (= lambda!357168 lambda!357155))))

(assert (=> bs!1636056 (not (= lambda!357168 lambda!357119))))

(assert (=> bs!1636052 (not (= lambda!357168 lambda!357126))))

(assert (=> d!2027334 true))

(assert (=> d!2027334 true))

(assert (=> d!2027334 (= (Exists!3415 lambda!357167) (Exists!3415 lambda!357168))))

(declare-fun lt!2383110 () Unit!158711)

(declare-fun choose!47927 (Regex!16345 List!65334) Unit!158711)

(assert (=> d!2027334 (= lt!2383110 (choose!47927 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383030)))))

(assert (=> d!2027334 (validRegex!8081 (reg!16674 (regOne!33202 r!7292)))))

(assert (=> d!2027334 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!636 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383030)) lt!2383110)))

(declare-fun m!7252480 () Bool)

(assert (=> bs!1636058 m!7252480))

(declare-fun m!7252482 () Bool)

(assert (=> bs!1636058 m!7252482))

(declare-fun m!7252484 () Bool)

(assert (=> bs!1636058 m!7252484))

(assert (=> bs!1636058 m!7252430))

(assert (=> b!6462961 d!2027334))

(declare-fun bs!1636059 () Bool)

(declare-fun b!6463367 () Bool)

(assert (= bs!1636059 (and b!6463367 b!6462961)))

(declare-fun lambda!357169 () Int)

(assert (=> bs!1636059 (= (= (reg!16674 lt!2383009) (reg!16674 (regOne!33202 r!7292))) (= lambda!357169 lambda!357125))))

(declare-fun bs!1636060 () Bool)

(assert (= bs!1636060 (and b!6463367 b!6462972)))

(assert (=> bs!1636060 (not (= lambda!357169 lambda!357123))))

(declare-fun bs!1636061 () Bool)

(assert (= bs!1636061 (and b!6463367 d!2027334)))

(assert (=> bs!1636061 (not (= lambda!357169 lambda!357167))))

(declare-fun bs!1636062 () Bool)

(assert (= bs!1636062 (and b!6463367 d!2027324)))

(assert (=> bs!1636062 (not (= lambda!357169 lambda!357156))))

(assert (=> bs!1636060 (not (= lambda!357169 lambda!357122))))

(assert (=> bs!1636059 (not (= lambda!357169 lambda!357124))))

(declare-fun bs!1636063 () Bool)

(assert (= bs!1636063 (and b!6463367 b!6463237)))

(assert (=> bs!1636063 (not (= lambda!357169 lambda!357148))))

(declare-fun bs!1636064 () Bool)

(assert (= bs!1636064 (and b!6463367 b!6462980)))

(assert (=> bs!1636064 (not (= lambda!357169 lambda!357120))))

(declare-fun bs!1636065 () Bool)

(assert (= bs!1636065 (and b!6463367 b!6463232)))

(assert (=> bs!1636065 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 lt!2383009) (reg!16674 r!7292)) (= lt!2383009 r!7292)) (= lambda!357169 lambda!357147))))

(assert (=> bs!1636062 (not (= lambda!357169 lambda!357155))))

(assert (=> bs!1636064 (not (= lambda!357169 lambda!357119))))

(assert (=> bs!1636059 (not (= lambda!357169 lambda!357126))))

(assert (=> bs!1636061 (= (and (= (reg!16674 lt!2383009) (reg!16674 (regOne!33202 r!7292))) (= lt!2383009 (Star!16345 (reg!16674 (regOne!33202 r!7292))))) (= lambda!357169 lambda!357168))))

(assert (=> b!6463367 true))

(assert (=> b!6463367 true))

(declare-fun bs!1636066 () Bool)

(declare-fun b!6463372 () Bool)

(assert (= bs!1636066 (and b!6463372 b!6462961)))

(declare-fun lambda!357170 () Int)

(assert (=> bs!1636066 (not (= lambda!357170 lambda!357125))))

(declare-fun bs!1636067 () Bool)

(assert (= bs!1636067 (and b!6463372 b!6462972)))

(assert (=> bs!1636067 (= (and (= (_1!36627 lt!2383030) s!2326) (= (regOne!33202 lt!2383009) lt!2383009) (= (regTwo!33202 lt!2383009) (regTwo!33202 r!7292))) (= lambda!357170 lambda!357123))))

(declare-fun bs!1636068 () Bool)

(assert (= bs!1636068 (and b!6463372 d!2027334)))

(assert (=> bs!1636068 (not (= lambda!357170 lambda!357167))))

(declare-fun bs!1636069 () Bool)

(assert (= bs!1636069 (and b!6463372 d!2027324)))

(assert (=> bs!1636069 (= (and (= (regOne!33202 lt!2383009) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 lt!2383009) lt!2383009)) (= lambda!357170 lambda!357156))))

(assert (=> bs!1636067 (not (= lambda!357170 lambda!357122))))

(assert (=> bs!1636066 (not (= lambda!357170 lambda!357124))))

(declare-fun bs!1636070 () Bool)

(assert (= bs!1636070 (and b!6463372 b!6463237)))

(assert (=> bs!1636070 (= (and (= (_1!36627 lt!2383030) s!2326) (= (regOne!33202 lt!2383009) (regOne!33202 r!7292)) (= (regTwo!33202 lt!2383009) (regTwo!33202 r!7292))) (= lambda!357170 lambda!357148))))

(declare-fun bs!1636071 () Bool)

(assert (= bs!1636071 (and b!6463372 b!6462980)))

(assert (=> bs!1636071 (= (and (= (_1!36627 lt!2383030) s!2326) (= (regOne!33202 lt!2383009) (regOne!33202 r!7292)) (= (regTwo!33202 lt!2383009) (regTwo!33202 r!7292))) (= lambda!357170 lambda!357120))))

(declare-fun bs!1636072 () Bool)

(assert (= bs!1636072 (and b!6463372 b!6463367)))

(assert (=> bs!1636072 (not (= lambda!357170 lambda!357169))))

(declare-fun bs!1636073 () Bool)

(assert (= bs!1636073 (and b!6463372 b!6463232)))

(assert (=> bs!1636073 (not (= lambda!357170 lambda!357147))))

(assert (=> bs!1636069 (not (= lambda!357170 lambda!357155))))

(assert (=> bs!1636071 (not (= lambda!357170 lambda!357119))))

(assert (=> bs!1636066 (= (and (= (regOne!33202 lt!2383009) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 lt!2383009) lt!2383009)) (= lambda!357170 lambda!357126))))

(assert (=> bs!1636068 (not (= lambda!357170 lambda!357168))))

(assert (=> b!6463372 true))

(assert (=> b!6463372 true))

(declare-fun b!6463365 () Bool)

(declare-fun e!3918692 () Bool)

(declare-fun call!558529 () Bool)

(assert (=> b!6463365 (= e!3918692 call!558529)))

(declare-fun e!3918691 () Bool)

(declare-fun call!558530 () Bool)

(assert (=> b!6463367 (= e!3918691 call!558530)))

(declare-fun bm!558524 () Bool)

(declare-fun c!1183023 () Bool)

(assert (=> bm!558524 (= call!558530 (Exists!3415 (ite c!1183023 lambda!357169 lambda!357170)))))

(declare-fun b!6463368 () Bool)

(declare-fun e!3918696 () Bool)

(assert (=> b!6463368 (= e!3918696 (matchRSpec!3446 (regTwo!33203 lt!2383009) (_1!36627 lt!2383030)))))

(declare-fun b!6463369 () Bool)

(declare-fun e!3918695 () Bool)

(assert (=> b!6463369 (= e!3918695 e!3918696)))

(declare-fun res!2654182 () Bool)

(assert (=> b!6463369 (= res!2654182 (matchRSpec!3446 (regOne!33203 lt!2383009) (_1!36627 lt!2383030)))))

(assert (=> b!6463369 (=> res!2654182 e!3918696)))

(declare-fun bm!558525 () Bool)

(assert (=> bm!558525 (= call!558529 (isEmpty!37386 (_1!36627 lt!2383030)))))

(declare-fun b!6463370 () Bool)

(declare-fun e!3918694 () Bool)

(assert (=> b!6463370 (= e!3918695 e!3918694)))

(assert (=> b!6463370 (= c!1183023 ((_ is Star!16345) lt!2383009))))

(declare-fun b!6463371 () Bool)

(declare-fun e!3918697 () Bool)

(assert (=> b!6463371 (= e!3918697 (= (_1!36627 lt!2383030) (Cons!65210 (c!1182927 lt!2383009) Nil!65210)))))

(declare-fun b!6463366 () Bool)

(declare-fun e!3918693 () Bool)

(assert (=> b!6463366 (= e!3918692 e!3918693)))

(declare-fun res!2654184 () Bool)

(assert (=> b!6463366 (= res!2654184 (not ((_ is EmptyLang!16345) lt!2383009)))))

(assert (=> b!6463366 (=> (not res!2654184) (not e!3918693))))

(declare-fun d!2027350 () Bool)

(declare-fun c!1183020 () Bool)

(assert (=> d!2027350 (= c!1183020 ((_ is EmptyExpr!16345) lt!2383009))))

(assert (=> d!2027350 (= (matchRSpec!3446 lt!2383009 (_1!36627 lt!2383030)) e!3918692)))

(assert (=> b!6463372 (= e!3918694 call!558530)))

(declare-fun b!6463373 () Bool)

(declare-fun c!1183022 () Bool)

(assert (=> b!6463373 (= c!1183022 ((_ is Union!16345) lt!2383009))))

(assert (=> b!6463373 (= e!3918697 e!3918695)))

(declare-fun b!6463374 () Bool)

(declare-fun c!1183021 () Bool)

(assert (=> b!6463374 (= c!1183021 ((_ is ElementMatch!16345) lt!2383009))))

(assert (=> b!6463374 (= e!3918693 e!3918697)))

(declare-fun b!6463375 () Bool)

(declare-fun res!2654183 () Bool)

(assert (=> b!6463375 (=> res!2654183 e!3918691)))

(assert (=> b!6463375 (= res!2654183 call!558529)))

(assert (=> b!6463375 (= e!3918694 e!3918691)))

(assert (= (and d!2027350 c!1183020) b!6463365))

(assert (= (and d!2027350 (not c!1183020)) b!6463366))

(assert (= (and b!6463366 res!2654184) b!6463374))

(assert (= (and b!6463374 c!1183021) b!6463371))

(assert (= (and b!6463374 (not c!1183021)) b!6463373))

(assert (= (and b!6463373 c!1183022) b!6463369))

(assert (= (and b!6463373 (not c!1183022)) b!6463370))

(assert (= (and b!6463369 (not res!2654182)) b!6463368))

(assert (= (and b!6463370 c!1183023) b!6463375))

(assert (= (and b!6463370 (not c!1183023)) b!6463372))

(assert (= (and b!6463375 (not res!2654183)) b!6463367))

(assert (= (or b!6463367 b!6463372) bm!558524))

(assert (= (or b!6463365 b!6463375) bm!558525))

(declare-fun m!7252506 () Bool)

(assert (=> bm!558524 m!7252506))

(declare-fun m!7252508 () Bool)

(assert (=> b!6463368 m!7252508))

(declare-fun m!7252510 () Bool)

(assert (=> b!6463369 m!7252510))

(assert (=> bm!558525 m!7252070))

(assert (=> b!6462961 d!2027350))

(declare-fun b!6463448 () Bool)

(declare-fun res!2654212 () Bool)

(declare-fun e!3918739 () Bool)

(assert (=> b!6463448 (=> (not res!2654212) (not e!3918739))))

(declare-fun lt!2383127 () Option!16236)

(assert (=> b!6463448 (= res!2654212 (matchR!8528 lt!2383009 (_2!36627 (get!22601 lt!2383127))))))

(declare-fun b!6463449 () Bool)

(declare-fun e!3918742 () Bool)

(assert (=> b!6463449 (= e!3918742 (not (isDefined!12939 lt!2383127)))))

(declare-fun b!6463450 () Bool)

(declare-fun e!3918741 () Option!16236)

(declare-fun e!3918738 () Option!16236)

(assert (=> b!6463450 (= e!3918741 e!3918738)))

(declare-fun c!1183048 () Bool)

(assert (=> b!6463450 (= c!1183048 ((_ is Nil!65210) (_1!36627 lt!2383030)))))

(declare-fun b!6463451 () Bool)

(assert (=> b!6463451 (= e!3918741 (Some!16235 (tuple2!66649 Nil!65210 (_1!36627 lt!2383030))))))

(declare-fun b!6463452 () Bool)

(declare-fun lt!2383128 () Unit!158711)

(declare-fun lt!2383126 () Unit!158711)

(assert (=> b!6463452 (= lt!2383128 lt!2383126)))

(assert (=> b!6463452 (= (++!14413 (++!14413 Nil!65210 (Cons!65210 (h!71658 (_1!36627 lt!2383030)) Nil!65210)) (t!378956 (_1!36627 lt!2383030))) (_1!36627 lt!2383030))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2506 (List!65334 C!32960 List!65334 List!65334) Unit!158711)

(assert (=> b!6463452 (= lt!2383126 (lemmaMoveElementToOtherListKeepsConcatEq!2506 Nil!65210 (h!71658 (_1!36627 lt!2383030)) (t!378956 (_1!36627 lt!2383030)) (_1!36627 lt!2383030)))))

(assert (=> b!6463452 (= e!3918738 (findConcatSeparation!2650 (reg!16674 (regOne!33202 r!7292)) lt!2383009 (++!14413 Nil!65210 (Cons!65210 (h!71658 (_1!36627 lt!2383030)) Nil!65210)) (t!378956 (_1!36627 lt!2383030)) (_1!36627 lt!2383030)))))

(declare-fun b!6463453 () Bool)

(declare-fun res!2654213 () Bool)

(assert (=> b!6463453 (=> (not res!2654213) (not e!3918739))))

(assert (=> b!6463453 (= res!2654213 (matchR!8528 (reg!16674 (regOne!33202 r!7292)) (_1!36627 (get!22601 lt!2383127))))))

(declare-fun d!2027358 () Bool)

(assert (=> d!2027358 e!3918742))

(declare-fun res!2654214 () Bool)

(assert (=> d!2027358 (=> res!2654214 e!3918742)))

(assert (=> d!2027358 (= res!2654214 e!3918739)))

(declare-fun res!2654211 () Bool)

(assert (=> d!2027358 (=> (not res!2654211) (not e!3918739))))

(assert (=> d!2027358 (= res!2654211 (isDefined!12939 lt!2383127))))

(assert (=> d!2027358 (= lt!2383127 e!3918741)))

(declare-fun c!1183047 () Bool)

(declare-fun e!3918740 () Bool)

(assert (=> d!2027358 (= c!1183047 e!3918740)))

(declare-fun res!2654210 () Bool)

(assert (=> d!2027358 (=> (not res!2654210) (not e!3918740))))

(assert (=> d!2027358 (= res!2654210 (matchR!8528 (reg!16674 (regOne!33202 r!7292)) Nil!65210))))

(assert (=> d!2027358 (validRegex!8081 (reg!16674 (regOne!33202 r!7292)))))

(assert (=> d!2027358 (= (findConcatSeparation!2650 (reg!16674 (regOne!33202 r!7292)) lt!2383009 Nil!65210 (_1!36627 lt!2383030) (_1!36627 lt!2383030)) lt!2383127)))

(declare-fun b!6463447 () Bool)

(assert (=> b!6463447 (= e!3918740 (matchR!8528 lt!2383009 (_1!36627 lt!2383030)))))

(declare-fun b!6463454 () Bool)

(assert (=> b!6463454 (= e!3918739 (= (++!14413 (_1!36627 (get!22601 lt!2383127)) (_2!36627 (get!22601 lt!2383127))) (_1!36627 lt!2383030)))))

(declare-fun b!6463455 () Bool)

(assert (=> b!6463455 (= e!3918738 None!16235)))

(assert (= (and d!2027358 res!2654210) b!6463447))

(assert (= (and d!2027358 c!1183047) b!6463451))

(assert (= (and d!2027358 (not c!1183047)) b!6463450))

(assert (= (and b!6463450 c!1183048) b!6463455))

(assert (= (and b!6463450 (not c!1183048)) b!6463452))

(assert (= (and d!2027358 res!2654211) b!6463453))

(assert (= (and b!6463453 res!2654213) b!6463448))

(assert (= (and b!6463448 res!2654212) b!6463454))

(assert (= (and d!2027358 (not res!2654214)) b!6463449))

(assert (=> b!6463447 m!7252052))

(declare-fun m!7252546 () Bool)

(assert (=> d!2027358 m!7252546))

(declare-fun m!7252548 () Bool)

(assert (=> d!2027358 m!7252548))

(assert (=> d!2027358 m!7252430))

(declare-fun m!7252550 () Bool)

(assert (=> b!6463452 m!7252550))

(assert (=> b!6463452 m!7252550))

(declare-fun m!7252552 () Bool)

(assert (=> b!6463452 m!7252552))

(declare-fun m!7252554 () Bool)

(assert (=> b!6463452 m!7252554))

(assert (=> b!6463452 m!7252550))

(declare-fun m!7252556 () Bool)

(assert (=> b!6463452 m!7252556))

(declare-fun m!7252558 () Bool)

(assert (=> b!6463448 m!7252558))

(declare-fun m!7252560 () Bool)

(assert (=> b!6463448 m!7252560))

(assert (=> b!6463453 m!7252558))

(declare-fun m!7252562 () Bool)

(assert (=> b!6463453 m!7252562))

(assert (=> b!6463449 m!7252546))

(assert (=> b!6463454 m!7252558))

(declare-fun m!7252564 () Bool)

(assert (=> b!6463454 m!7252564))

(assert (=> b!6462961 d!2027358))

(declare-fun d!2027368 () Bool)

(assert (=> d!2027368 (= (Exists!3415 lambda!357126) (choose!47924 lambda!357126))))

(declare-fun bs!1636075 () Bool)

(assert (= bs!1636075 d!2027368))

(declare-fun m!7252566 () Bool)

(assert (=> bs!1636075 m!7252566))

(assert (=> b!6462961 d!2027368))

(declare-fun bs!1636080 () Bool)

(declare-fun d!2027370 () Bool)

(assert (= bs!1636080 (and d!2027370 b!6462961)))

(declare-fun lambda!357182 () Int)

(assert (=> bs!1636080 (not (= lambda!357182 lambda!357125))))

(declare-fun bs!1636081 () Bool)

(assert (= bs!1636081 (and d!2027370 d!2027334)))

(assert (=> bs!1636081 (= (= lt!2383009 (Star!16345 (reg!16674 (regOne!33202 r!7292)))) (= lambda!357182 lambda!357167))))

(declare-fun bs!1636082 () Bool)

(assert (= bs!1636082 (and d!2027370 d!2027324)))

(assert (=> bs!1636082 (not (= lambda!357182 lambda!357156))))

(declare-fun bs!1636083 () Bool)

(assert (= bs!1636083 (and d!2027370 b!6462972)))

(assert (=> bs!1636083 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) lt!2383009) (= lt!2383009 (regTwo!33202 r!7292))) (= lambda!357182 lambda!357122))))

(assert (=> bs!1636080 (= lambda!357182 lambda!357124)))

(declare-fun bs!1636084 () Bool)

(assert (= bs!1636084 (and d!2027370 b!6463237)))

(assert (=> bs!1636084 (not (= lambda!357182 lambda!357148))))

(declare-fun bs!1636085 () Bool)

(assert (= bs!1636085 (and d!2027370 b!6462980)))

(assert (=> bs!1636085 (not (= lambda!357182 lambda!357120))))

(declare-fun bs!1636086 () Bool)

(assert (= bs!1636086 (and d!2027370 b!6463367)))

(assert (=> bs!1636086 (not (= lambda!357182 lambda!357169))))

(declare-fun bs!1636088 () Bool)

(assert (= bs!1636088 (and d!2027370 b!6463232)))

(assert (=> bs!1636088 (not (= lambda!357182 lambda!357147))))

(assert (=> bs!1636082 (= lambda!357182 lambda!357155)))

(assert (=> bs!1636085 (= (and (= (_1!36627 lt!2383030) s!2326) (= (reg!16674 (regOne!33202 r!7292)) (regOne!33202 r!7292)) (= lt!2383009 (regTwo!33202 r!7292))) (= lambda!357182 lambda!357119))))

(assert (=> bs!1636080 (not (= lambda!357182 lambda!357126))))

(assert (=> bs!1636081 (not (= lambda!357182 lambda!357168))))

(declare-fun bs!1636089 () Bool)

(assert (= bs!1636089 (and d!2027370 b!6463372)))

(assert (=> bs!1636089 (not (= lambda!357182 lambda!357170))))

(assert (=> bs!1636083 (not (= lambda!357182 lambda!357123))))

(assert (=> d!2027370 true))

(assert (=> d!2027370 true))

(assert (=> d!2027370 true))

(assert (=> d!2027370 (= (isDefined!12939 (findConcatSeparation!2650 (reg!16674 (regOne!33202 r!7292)) lt!2383009 Nil!65210 (_1!36627 lt!2383030) (_1!36627 lt!2383030))) (Exists!3415 lambda!357182))))

(declare-fun lt!2383137 () Unit!158711)

(declare-fun choose!47930 (Regex!16345 Regex!16345 List!65334) Unit!158711)

(assert (=> d!2027370 (= lt!2383137 (choose!47930 (reg!16674 (regOne!33202 r!7292)) lt!2383009 (_1!36627 lt!2383030)))))

(assert (=> d!2027370 (validRegex!8081 (reg!16674 (regOne!33202 r!7292)))))

(assert (=> d!2027370 (= (lemmaFindConcatSeparationEquivalentToExists!2414 (reg!16674 (regOne!33202 r!7292)) lt!2383009 (_1!36627 lt!2383030)) lt!2383137)))

(declare-fun bs!1636090 () Bool)

(assert (= bs!1636090 d!2027370))

(assert (=> bs!1636090 m!7252430))

(assert (=> bs!1636090 m!7252038))

(assert (=> bs!1636090 m!7252038))

(declare-fun m!7252604 () Bool)

(assert (=> bs!1636090 m!7252604))

(declare-fun m!7252606 () Bool)

(assert (=> bs!1636090 m!7252606))

(declare-fun m!7252608 () Bool)

(assert (=> bs!1636090 m!7252608))

(assert (=> b!6462961 d!2027370))

(declare-fun b!6463501 () Bool)

(declare-fun e!3918770 () List!65334)

(assert (=> b!6463501 (= e!3918770 (_2!36627 lt!2383036))))

(declare-fun b!6463503 () Bool)

(declare-fun res!2654227 () Bool)

(declare-fun e!3918769 () Bool)

(assert (=> b!6463503 (=> (not res!2654227) (not e!3918769))))

(declare-fun lt!2383139 () List!65334)

(assert (=> b!6463503 (= res!2654227 (= (size!40401 lt!2383139) (+ (size!40401 (_1!36627 lt!2383036)) (size!40401 (_2!36627 lt!2383036)))))))

(declare-fun d!2027382 () Bool)

(assert (=> d!2027382 e!3918769))

(declare-fun res!2654226 () Bool)

(assert (=> d!2027382 (=> (not res!2654226) (not e!3918769))))

(assert (=> d!2027382 (= res!2654226 (= (content!12398 lt!2383139) ((_ map or) (content!12398 (_1!36627 lt!2383036)) (content!12398 (_2!36627 lt!2383036)))))))

(assert (=> d!2027382 (= lt!2383139 e!3918770)))

(declare-fun c!1183068 () Bool)

(assert (=> d!2027382 (= c!1183068 ((_ is Nil!65210) (_1!36627 lt!2383036)))))

(assert (=> d!2027382 (= (++!14413 (_1!36627 lt!2383036) (_2!36627 lt!2383036)) lt!2383139)))

(declare-fun b!6463502 () Bool)

(assert (=> b!6463502 (= e!3918770 (Cons!65210 (h!71658 (_1!36627 lt!2383036)) (++!14413 (t!378956 (_1!36627 lt!2383036)) (_2!36627 lt!2383036))))))

(declare-fun b!6463504 () Bool)

(assert (=> b!6463504 (= e!3918769 (or (not (= (_2!36627 lt!2383036) Nil!65210)) (= lt!2383139 (_1!36627 lt!2383036))))))

(assert (= (and d!2027382 c!1183068) b!6463501))

(assert (= (and d!2027382 (not c!1183068)) b!6463502))

(assert (= (and d!2027382 res!2654226) b!6463503))

(assert (= (and b!6463503 res!2654227) b!6463504))

(declare-fun m!7252610 () Bool)

(assert (=> b!6463503 m!7252610))

(assert (=> b!6463503 m!7252234))

(assert (=> b!6463503 m!7252262))

(declare-fun m!7252612 () Bool)

(assert (=> d!2027382 m!7252612))

(assert (=> d!2027382 m!7252240))

(assert (=> d!2027382 m!7252266))

(declare-fun m!7252614 () Bool)

(assert (=> b!6463502 m!7252614))

(assert (=> b!6462961 d!2027382))

(declare-fun d!2027384 () Bool)

(assert (=> d!2027384 (= (Exists!3415 lambda!357125) (choose!47924 lambda!357125))))

(declare-fun bs!1636092 () Bool)

(assert (= bs!1636092 d!2027384))

(declare-fun m!7252616 () Bool)

(assert (=> bs!1636092 m!7252616))

(assert (=> b!6462961 d!2027384))

(declare-fun d!2027386 () Bool)

(assert (=> d!2027386 (= (nullable!6338 (h!71659 (exprs!6229 (h!71660 zl!343)))) (nullableFct!2282 (h!71659 (exprs!6229 (h!71660 zl!343)))))))

(declare-fun bs!1636094 () Bool)

(assert (= bs!1636094 d!2027386))

(declare-fun m!7252620 () Bool)

(assert (=> bs!1636094 m!7252620))

(assert (=> b!6462982 d!2027386))

(declare-fun bm!558528 () Bool)

(declare-fun call!558533 () (InoxSet Context!11458))

(assert (=> bm!558528 (= call!558533 (derivationStepZipperDown!1593 (h!71659 (exprs!6229 lt!2383037)) (Context!11459 (t!378957 (exprs!6229 lt!2383037))) (h!71658 s!2326)))))

(declare-fun e!3918772 () (InoxSet Context!11458))

(declare-fun b!6463509 () Bool)

(assert (=> b!6463509 (= e!3918772 ((_ map or) call!558533 (derivationStepZipperUp!1519 (Context!11459 (t!378957 (exprs!6229 lt!2383037))) (h!71658 s!2326))))))

(declare-fun b!6463510 () Bool)

(declare-fun e!3918774 () Bool)

(assert (=> b!6463510 (= e!3918774 (nullable!6338 (h!71659 (exprs!6229 lt!2383037))))))

(declare-fun b!6463511 () Bool)

(declare-fun e!3918773 () (InoxSet Context!11458))

(assert (=> b!6463511 (= e!3918772 e!3918773)))

(declare-fun c!1183070 () Bool)

(assert (=> b!6463511 (= c!1183070 ((_ is Cons!65211) (exprs!6229 lt!2383037)))))

(declare-fun d!2027390 () Bool)

(declare-fun c!1183071 () Bool)

(assert (=> d!2027390 (= c!1183071 e!3918774)))

(declare-fun res!2654228 () Bool)

(assert (=> d!2027390 (=> (not res!2654228) (not e!3918774))))

(assert (=> d!2027390 (= res!2654228 ((_ is Cons!65211) (exprs!6229 lt!2383037)))))

(assert (=> d!2027390 (= (derivationStepZipperUp!1519 lt!2383037 (h!71658 s!2326)) e!3918772)))

(declare-fun b!6463512 () Bool)

(assert (=> b!6463512 (= e!3918773 call!558533)))

(declare-fun b!6463513 () Bool)

(assert (=> b!6463513 (= e!3918773 ((as const (Array Context!11458 Bool)) false))))

(assert (= (and d!2027390 res!2654228) b!6463510))

(assert (= (and d!2027390 c!1183071) b!6463509))

(assert (= (and d!2027390 (not c!1183071)) b!6463511))

(assert (= (and b!6463511 c!1183070) b!6463512))

(assert (= (and b!6463511 (not c!1183070)) b!6463513))

(assert (= (or b!6463509 b!6463512) bm!558528))

(declare-fun m!7252628 () Bool)

(assert (=> bm!558528 m!7252628))

(declare-fun m!7252630 () Bool)

(assert (=> b!6463509 m!7252630))

(declare-fun m!7252632 () Bool)

(assert (=> b!6463510 m!7252632))

(assert (=> b!6462982 d!2027390))

(declare-fun d!2027394 () Bool)

(assert (=> d!2027394 (= (flatMap!1850 z!1189 lambda!357121) (choose!47918 z!1189 lambda!357121))))

(declare-fun bs!1636095 () Bool)

(assert (= bs!1636095 d!2027394))

(declare-fun m!7252634 () Bool)

(assert (=> bs!1636095 m!7252634))

(assert (=> b!6462982 d!2027394))

(declare-fun bm!558535 () Bool)

(declare-fun call!558540 () (InoxSet Context!11458))

(assert (=> bm!558535 (= call!558540 (derivationStepZipperDown!1593 (h!71659 (exprs!6229 (h!71660 zl!343))) (Context!11459 (t!378957 (exprs!6229 (h!71660 zl!343)))) (h!71658 s!2326)))))

(declare-fun e!3918781 () (InoxSet Context!11458))

(declare-fun b!6463525 () Bool)

(assert (=> b!6463525 (= e!3918781 ((_ map or) call!558540 (derivationStepZipperUp!1519 (Context!11459 (t!378957 (exprs!6229 (h!71660 zl!343)))) (h!71658 s!2326))))))

(declare-fun b!6463526 () Bool)

(declare-fun e!3918783 () Bool)

(assert (=> b!6463526 (= e!3918783 (nullable!6338 (h!71659 (exprs!6229 (h!71660 zl!343)))))))

(declare-fun b!6463527 () Bool)

(declare-fun e!3918782 () (InoxSet Context!11458))

(assert (=> b!6463527 (= e!3918781 e!3918782)))

(declare-fun c!1183077 () Bool)

(assert (=> b!6463527 (= c!1183077 ((_ is Cons!65211) (exprs!6229 (h!71660 zl!343))))))

(declare-fun d!2027396 () Bool)

(declare-fun c!1183078 () Bool)

(assert (=> d!2027396 (= c!1183078 e!3918783)))

(declare-fun res!2654230 () Bool)

(assert (=> d!2027396 (=> (not res!2654230) (not e!3918783))))

(assert (=> d!2027396 (= res!2654230 ((_ is Cons!65211) (exprs!6229 (h!71660 zl!343))))))

(assert (=> d!2027396 (= (derivationStepZipperUp!1519 (h!71660 zl!343) (h!71658 s!2326)) e!3918781)))

(declare-fun b!6463528 () Bool)

(assert (=> b!6463528 (= e!3918782 call!558540)))

(declare-fun b!6463529 () Bool)

(assert (=> b!6463529 (= e!3918782 ((as const (Array Context!11458 Bool)) false))))

(assert (= (and d!2027396 res!2654230) b!6463526))

(assert (= (and d!2027396 c!1183078) b!6463525))

(assert (= (and d!2027396 (not c!1183078)) b!6463527))

(assert (= (and b!6463527 c!1183077) b!6463528))

(assert (= (and b!6463527 (not c!1183077)) b!6463529))

(assert (= (or b!6463525 b!6463528) bm!558535))

(declare-fun m!7252636 () Bool)

(assert (=> bm!558535 m!7252636))

(declare-fun m!7252638 () Bool)

(assert (=> b!6463525 m!7252638))

(assert (=> b!6463526 m!7252114))

(assert (=> b!6462982 d!2027396))

(declare-fun b!6463579 () Bool)

(declare-fun e!3918817 () (InoxSet Context!11458))

(declare-fun call!558567 () (InoxSet Context!11458))

(assert (=> b!6463579 (= e!3918817 call!558567)))

(declare-fun b!6463580 () Bool)

(declare-fun e!3918820 () (InoxSet Context!11458))

(declare-fun call!558564 () (InoxSet Context!11458))

(declare-fun call!558563 () (InoxSet Context!11458))

(assert (=> b!6463580 (= e!3918820 ((_ map or) call!558564 call!558563))))

(declare-fun c!1183095 () Bool)

(declare-fun bm!558557 () Bool)

(declare-fun c!1183097 () Bool)

(declare-fun call!558566 () List!65335)

(declare-fun $colon$colon!2204 (List!65335 Regex!16345) List!65335)

(assert (=> bm!558557 (= call!558566 ($colon$colon!2204 (exprs!6229 lt!2383037) (ite (or c!1183095 c!1183097) (regTwo!33202 (h!71659 (exprs!6229 (h!71660 zl!343)))) (h!71659 (exprs!6229 (h!71660 zl!343))))))))

(declare-fun b!6463581 () Bool)

(declare-fun c!1183099 () Bool)

(assert (=> b!6463581 (= c!1183099 ((_ is Star!16345) (h!71659 (exprs!6229 (h!71660 zl!343)))))))

(declare-fun e!3918819 () (InoxSet Context!11458))

(assert (=> b!6463581 (= e!3918819 e!3918817)))

(declare-fun b!6463582 () Bool)

(declare-fun e!3918821 () Bool)

(assert (=> b!6463582 (= e!3918821 (nullable!6338 (regOne!33202 (h!71659 (exprs!6229 (h!71660 zl!343))))))))

(declare-fun bm!558558 () Bool)

(declare-fun call!558565 () List!65335)

(assert (=> bm!558558 (= call!558565 call!558566)))

(declare-fun b!6463583 () Bool)

(assert (=> b!6463583 (= e!3918817 ((as const (Array Context!11458 Bool)) false))))

(declare-fun b!6463584 () Bool)

(declare-fun e!3918818 () (InoxSet Context!11458))

(assert (=> b!6463584 (= e!3918818 e!3918820)))

(declare-fun c!1183096 () Bool)

(assert (=> b!6463584 (= c!1183096 ((_ is Union!16345) (h!71659 (exprs!6229 (h!71660 zl!343)))))))

(declare-fun bm!558559 () Bool)

(declare-fun call!558562 () (InoxSet Context!11458))

(assert (=> bm!558559 (= call!558562 call!558564)))

(declare-fun b!6463585 () Bool)

(assert (=> b!6463585 (= e!3918819 call!558567)))

(declare-fun d!2027398 () Bool)

(declare-fun c!1183098 () Bool)

(assert (=> d!2027398 (= c!1183098 (and ((_ is ElementMatch!16345) (h!71659 (exprs!6229 (h!71660 zl!343)))) (= (c!1182927 (h!71659 (exprs!6229 (h!71660 zl!343)))) (h!71658 s!2326))))))

(assert (=> d!2027398 (= (derivationStepZipperDown!1593 (h!71659 (exprs!6229 (h!71660 zl!343))) lt!2383037 (h!71658 s!2326)) e!3918818)))

(declare-fun b!6463586 () Bool)

(declare-fun e!3918822 () (InoxSet Context!11458))

(assert (=> b!6463586 (= e!3918822 e!3918819)))

(assert (=> b!6463586 (= c!1183097 ((_ is Concat!25190) (h!71659 (exprs!6229 (h!71660 zl!343)))))))

(declare-fun bm!558560 () Bool)

(assert (=> bm!558560 (= call!558564 (derivationStepZipperDown!1593 (ite c!1183096 (regOne!33203 (h!71659 (exprs!6229 (h!71660 zl!343)))) (ite c!1183095 (regTwo!33202 (h!71659 (exprs!6229 (h!71660 zl!343)))) (ite c!1183097 (regOne!33202 (h!71659 (exprs!6229 (h!71660 zl!343)))) (reg!16674 (h!71659 (exprs!6229 (h!71660 zl!343))))))) (ite (or c!1183096 c!1183095) lt!2383037 (Context!11459 call!558565)) (h!71658 s!2326)))))

(declare-fun bm!558561 () Bool)

(assert (=> bm!558561 (= call!558563 (derivationStepZipperDown!1593 (ite c!1183096 (regTwo!33203 (h!71659 (exprs!6229 (h!71660 zl!343)))) (regOne!33202 (h!71659 (exprs!6229 (h!71660 zl!343))))) (ite c!1183096 lt!2383037 (Context!11459 call!558566)) (h!71658 s!2326)))))

(declare-fun b!6463587 () Bool)

(assert (=> b!6463587 (= e!3918818 (store ((as const (Array Context!11458 Bool)) false) lt!2383037 true))))

(declare-fun bm!558562 () Bool)

(assert (=> bm!558562 (= call!558567 call!558562)))

(declare-fun b!6463588 () Bool)

(assert (=> b!6463588 (= c!1183095 e!3918821)))

(declare-fun res!2654248 () Bool)

(assert (=> b!6463588 (=> (not res!2654248) (not e!3918821))))

(assert (=> b!6463588 (= res!2654248 ((_ is Concat!25190) (h!71659 (exprs!6229 (h!71660 zl!343)))))))

(assert (=> b!6463588 (= e!3918820 e!3918822)))

(declare-fun b!6463589 () Bool)

(assert (=> b!6463589 (= e!3918822 ((_ map or) call!558563 call!558562))))

(assert (= (and d!2027398 c!1183098) b!6463587))

(assert (= (and d!2027398 (not c!1183098)) b!6463584))

(assert (= (and b!6463584 c!1183096) b!6463580))

(assert (= (and b!6463584 (not c!1183096)) b!6463588))

(assert (= (and b!6463588 res!2654248) b!6463582))

(assert (= (and b!6463588 c!1183095) b!6463589))

(assert (= (and b!6463588 (not c!1183095)) b!6463586))

(assert (= (and b!6463586 c!1183097) b!6463585))

(assert (= (and b!6463586 (not c!1183097)) b!6463581))

(assert (= (and b!6463581 c!1183099) b!6463579))

(assert (= (and b!6463581 (not c!1183099)) b!6463583))

(assert (= (or b!6463585 b!6463579) bm!558558))

(assert (= (or b!6463585 b!6463579) bm!558562))

(assert (= (or b!6463589 bm!558558) bm!558557))

(assert (= (or b!6463589 bm!558562) bm!558559))

(assert (= (or b!6463580 b!6463589) bm!558561))

(assert (= (or b!6463580 bm!558559) bm!558560))

(declare-fun m!7252660 () Bool)

(assert (=> bm!558561 m!7252660))

(declare-fun m!7252662 () Bool)

(assert (=> bm!558557 m!7252662))

(declare-fun m!7252664 () Bool)

(assert (=> b!6463582 m!7252664))

(declare-fun m!7252666 () Bool)

(assert (=> bm!558560 m!7252666))

(declare-fun m!7252668 () Bool)

(assert (=> b!6463587 m!7252668))

(assert (=> b!6462982 d!2027398))

(declare-fun d!2027406 () Bool)

(assert (=> d!2027406 (= (flatMap!1850 z!1189 lambda!357121) (dynLambda!25907 lambda!357121 (h!71660 zl!343)))))

(declare-fun lt!2383144 () Unit!158711)

(assert (=> d!2027406 (= lt!2383144 (choose!47919 z!1189 (h!71660 zl!343) lambda!357121))))

(assert (=> d!2027406 (= z!1189 (store ((as const (Array Context!11458 Bool)) false) (h!71660 zl!343) true))))

(assert (=> d!2027406 (= (lemmaFlatMapOnSingletonSet!1376 z!1189 (h!71660 zl!343) lambda!357121) lt!2383144)))

(declare-fun b_lambda!245073 () Bool)

(assert (=> (not b_lambda!245073) (not d!2027406)))

(declare-fun bs!1636105 () Bool)

(assert (= bs!1636105 d!2027406))

(assert (=> bs!1636105 m!7252110))

(declare-fun m!7252670 () Bool)

(assert (=> bs!1636105 m!7252670))

(declare-fun m!7252672 () Bool)

(assert (=> bs!1636105 m!7252672))

(declare-fun m!7252674 () Bool)

(assert (=> bs!1636105 m!7252674))

(assert (=> b!6462982 d!2027406))

(declare-fun bm!558563 () Bool)

(declare-fun call!558568 () (InoxSet Context!11458))

(assert (=> bm!558563 (= call!558568 (derivationStepZipperDown!1593 (h!71659 (exprs!6229 (Context!11459 (Cons!65211 (h!71659 (exprs!6229 (h!71660 zl!343))) (t!378957 (exprs!6229 (h!71660 zl!343))))))) (Context!11459 (t!378957 (exprs!6229 (Context!11459 (Cons!65211 (h!71659 (exprs!6229 (h!71660 zl!343))) (t!378957 (exprs!6229 (h!71660 zl!343)))))))) (h!71658 s!2326)))))

(declare-fun b!6463599 () Bool)

(declare-fun e!3918828 () (InoxSet Context!11458))

(assert (=> b!6463599 (= e!3918828 ((_ map or) call!558568 (derivationStepZipperUp!1519 (Context!11459 (t!378957 (exprs!6229 (Context!11459 (Cons!65211 (h!71659 (exprs!6229 (h!71660 zl!343))) (t!378957 (exprs!6229 (h!71660 zl!343)))))))) (h!71658 s!2326))))))

(declare-fun b!6463600 () Bool)

(declare-fun e!3918830 () Bool)

(assert (=> b!6463600 (= e!3918830 (nullable!6338 (h!71659 (exprs!6229 (Context!11459 (Cons!65211 (h!71659 (exprs!6229 (h!71660 zl!343))) (t!378957 (exprs!6229 (h!71660 zl!343)))))))))))

(declare-fun b!6463601 () Bool)

(declare-fun e!3918829 () (InoxSet Context!11458))

(assert (=> b!6463601 (= e!3918828 e!3918829)))

(declare-fun c!1183102 () Bool)

(assert (=> b!6463601 (= c!1183102 ((_ is Cons!65211) (exprs!6229 (Context!11459 (Cons!65211 (h!71659 (exprs!6229 (h!71660 zl!343))) (t!378957 (exprs!6229 (h!71660 zl!343))))))))))

(declare-fun d!2027408 () Bool)

(declare-fun c!1183103 () Bool)

(assert (=> d!2027408 (= c!1183103 e!3918830)))

(declare-fun res!2654254 () Bool)

(assert (=> d!2027408 (=> (not res!2654254) (not e!3918830))))

(assert (=> d!2027408 (= res!2654254 ((_ is Cons!65211) (exprs!6229 (Context!11459 (Cons!65211 (h!71659 (exprs!6229 (h!71660 zl!343))) (t!378957 (exprs!6229 (h!71660 zl!343))))))))))

(assert (=> d!2027408 (= (derivationStepZipperUp!1519 (Context!11459 (Cons!65211 (h!71659 (exprs!6229 (h!71660 zl!343))) (t!378957 (exprs!6229 (h!71660 zl!343))))) (h!71658 s!2326)) e!3918828)))

(declare-fun b!6463602 () Bool)

(assert (=> b!6463602 (= e!3918829 call!558568)))

(declare-fun b!6463603 () Bool)

(assert (=> b!6463603 (= e!3918829 ((as const (Array Context!11458 Bool)) false))))

(assert (= (and d!2027408 res!2654254) b!6463600))

(assert (= (and d!2027408 c!1183103) b!6463599))

(assert (= (and d!2027408 (not c!1183103)) b!6463601))

(assert (= (and b!6463601 c!1183102) b!6463602))

(assert (= (and b!6463601 (not c!1183102)) b!6463603))

(assert (= (or b!6463599 b!6463602) bm!558563))

(declare-fun m!7252696 () Bool)

(assert (=> bm!558563 m!7252696))

(declare-fun m!7252700 () Bool)

(assert (=> b!6463599 m!7252700))

(declare-fun m!7252702 () Bool)

(assert (=> b!6463600 m!7252702))

(assert (=> b!6462982 d!2027408))

(declare-fun bs!1636106 () Bool)

(declare-fun d!2027412 () Bool)

(assert (= bs!1636106 (and d!2027412 d!2027278)))

(declare-fun lambda!357188 () Int)

(assert (=> bs!1636106 (= lambda!357188 lambda!357129)))

(assert (=> d!2027412 (= (inv!84109 setElem!44039) (forall!15533 (exprs!6229 setElem!44039) lambda!357188))))

(declare-fun bs!1636107 () Bool)

(assert (= bs!1636107 d!2027412))

(declare-fun m!7252706 () Bool)

(assert (=> bs!1636107 m!7252706))

(assert (=> setNonEmpty!44039 d!2027412))

(declare-fun b!6463609 () Bool)

(declare-fun res!2654259 () Bool)

(declare-fun e!3918834 () Bool)

(assert (=> b!6463609 (=> (not res!2654259) (not e!3918834))))

(declare-fun lt!2383147 () Option!16236)

(assert (=> b!6463609 (= res!2654259 (matchR!8528 (regTwo!33202 r!7292) (_2!36627 (get!22601 lt!2383147))))))

(declare-fun b!6463610 () Bool)

(declare-fun e!3918837 () Bool)

(assert (=> b!6463610 (= e!3918837 (not (isDefined!12939 lt!2383147)))))

(declare-fun b!6463611 () Bool)

(declare-fun e!3918836 () Option!16236)

(declare-fun e!3918833 () Option!16236)

(assert (=> b!6463611 (= e!3918836 e!3918833)))

(declare-fun c!1183106 () Bool)

(assert (=> b!6463611 (= c!1183106 ((_ is Nil!65210) s!2326))))

(declare-fun b!6463612 () Bool)

(assert (=> b!6463612 (= e!3918836 (Some!16235 (tuple2!66649 Nil!65210 s!2326)))))

(declare-fun b!6463613 () Bool)

(declare-fun lt!2383148 () Unit!158711)

(declare-fun lt!2383146 () Unit!158711)

(assert (=> b!6463613 (= lt!2383148 lt!2383146)))

(assert (=> b!6463613 (= (++!14413 (++!14413 Nil!65210 (Cons!65210 (h!71658 s!2326) Nil!65210)) (t!378956 s!2326)) s!2326)))

(assert (=> b!6463613 (= lt!2383146 (lemmaMoveElementToOtherListKeepsConcatEq!2506 Nil!65210 (h!71658 s!2326) (t!378956 s!2326) s!2326))))

(assert (=> b!6463613 (= e!3918833 (findConcatSeparation!2650 (regOne!33202 r!7292) (regTwo!33202 r!7292) (++!14413 Nil!65210 (Cons!65210 (h!71658 s!2326) Nil!65210)) (t!378956 s!2326) s!2326))))

(declare-fun b!6463614 () Bool)

(declare-fun res!2654260 () Bool)

(assert (=> b!6463614 (=> (not res!2654260) (not e!3918834))))

(assert (=> b!6463614 (= res!2654260 (matchR!8528 (regOne!33202 r!7292) (_1!36627 (get!22601 lt!2383147))))))

(declare-fun d!2027414 () Bool)

(assert (=> d!2027414 e!3918837))

(declare-fun res!2654261 () Bool)

(assert (=> d!2027414 (=> res!2654261 e!3918837)))

(assert (=> d!2027414 (= res!2654261 e!3918834)))

(declare-fun res!2654258 () Bool)

(assert (=> d!2027414 (=> (not res!2654258) (not e!3918834))))

(assert (=> d!2027414 (= res!2654258 (isDefined!12939 lt!2383147))))

(assert (=> d!2027414 (= lt!2383147 e!3918836)))

(declare-fun c!1183105 () Bool)

(declare-fun e!3918835 () Bool)

(assert (=> d!2027414 (= c!1183105 e!3918835)))

(declare-fun res!2654257 () Bool)

(assert (=> d!2027414 (=> (not res!2654257) (not e!3918835))))

(assert (=> d!2027414 (= res!2654257 (matchR!8528 (regOne!33202 r!7292) Nil!65210))))

(assert (=> d!2027414 (validRegex!8081 (regOne!33202 r!7292))))

(assert (=> d!2027414 (= (findConcatSeparation!2650 (regOne!33202 r!7292) (regTwo!33202 r!7292) Nil!65210 s!2326 s!2326) lt!2383147)))

(declare-fun b!6463608 () Bool)

(assert (=> b!6463608 (= e!3918835 (matchR!8528 (regTwo!33202 r!7292) s!2326))))

(declare-fun b!6463615 () Bool)

(assert (=> b!6463615 (= e!3918834 (= (++!14413 (_1!36627 (get!22601 lt!2383147)) (_2!36627 (get!22601 lt!2383147))) s!2326))))

(declare-fun b!6463616 () Bool)

(assert (=> b!6463616 (= e!3918833 None!16235)))

(assert (= (and d!2027414 res!2654257) b!6463608))

(assert (= (and d!2027414 c!1183105) b!6463612))

(assert (= (and d!2027414 (not c!1183105)) b!6463611))

(assert (= (and b!6463611 c!1183106) b!6463616))

(assert (= (and b!6463611 (not c!1183106)) b!6463613))

(assert (= (and d!2027414 res!2654258) b!6463614))

(assert (= (and b!6463614 res!2654260) b!6463609))

(assert (= (and b!6463609 res!2654259) b!6463615))

(assert (= (and d!2027414 (not res!2654261)) b!6463610))

(declare-fun m!7252718 () Bool)

(assert (=> b!6463608 m!7252718))

(declare-fun m!7252720 () Bool)

(assert (=> d!2027414 m!7252720))

(declare-fun m!7252722 () Bool)

(assert (=> d!2027414 m!7252722))

(declare-fun m!7252724 () Bool)

(assert (=> d!2027414 m!7252724))

(declare-fun m!7252726 () Bool)

(assert (=> b!6463613 m!7252726))

(assert (=> b!6463613 m!7252726))

(declare-fun m!7252728 () Bool)

(assert (=> b!6463613 m!7252728))

(declare-fun m!7252730 () Bool)

(assert (=> b!6463613 m!7252730))

(assert (=> b!6463613 m!7252726))

(declare-fun m!7252732 () Bool)

(assert (=> b!6463613 m!7252732))

(declare-fun m!7252734 () Bool)

(assert (=> b!6463609 m!7252734))

(declare-fun m!7252736 () Bool)

(assert (=> b!6463609 m!7252736))

(assert (=> b!6463614 m!7252734))

(declare-fun m!7252738 () Bool)

(assert (=> b!6463614 m!7252738))

(assert (=> b!6463610 m!7252720))

(assert (=> b!6463615 m!7252734))

(declare-fun m!7252740 () Bool)

(assert (=> b!6463615 m!7252740))

(assert (=> b!6462980 d!2027414))

(declare-fun d!2027420 () Bool)

(assert (=> d!2027420 (= (Exists!3415 lambda!357119) (choose!47924 lambda!357119))))

(declare-fun bs!1636114 () Bool)

(assert (= bs!1636114 d!2027420))

(declare-fun m!7252742 () Bool)

(assert (=> bs!1636114 m!7252742))

(assert (=> b!6462980 d!2027420))

(declare-fun d!2027422 () Bool)

(assert (=> d!2027422 (= (Exists!3415 lambda!357120) (choose!47924 lambda!357120))))

(declare-fun bs!1636116 () Bool)

(assert (= bs!1636116 d!2027422))

(declare-fun m!7252744 () Bool)

(assert (=> bs!1636116 m!7252744))

(assert (=> b!6462980 d!2027422))

(declare-fun bs!1636119 () Bool)

(declare-fun d!2027424 () Bool)

(assert (= bs!1636119 (and d!2027424 b!6462961)))

(declare-fun lambda!357190 () Int)

(assert (=> bs!1636119 (not (= lambda!357190 lambda!357125))))

(declare-fun bs!1636121 () Bool)

(assert (= bs!1636121 (and d!2027424 d!2027370)))

(assert (=> bs!1636121 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357190 lambda!357182))))

(declare-fun bs!1636122 () Bool)

(assert (= bs!1636122 (and d!2027424 d!2027334)))

(assert (=> bs!1636122 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) (Star!16345 (reg!16674 (regOne!33202 r!7292))))) (= lambda!357190 lambda!357167))))

(declare-fun bs!1636123 () Bool)

(assert (= bs!1636123 (and d!2027424 d!2027324)))

(assert (=> bs!1636123 (not (= lambda!357190 lambda!357156))))

(declare-fun bs!1636125 () Bool)

(assert (= bs!1636125 (and d!2027424 b!6462972)))

(assert (=> bs!1636125 (= (= (regOne!33202 r!7292) lt!2383009) (= lambda!357190 lambda!357122))))

(assert (=> bs!1636119 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357190 lambda!357124))))

(declare-fun bs!1636126 () Bool)

(assert (= bs!1636126 (and d!2027424 b!6463237)))

(assert (=> bs!1636126 (not (= lambda!357190 lambda!357148))))

(declare-fun bs!1636128 () Bool)

(assert (= bs!1636128 (and d!2027424 b!6462980)))

(assert (=> bs!1636128 (not (= lambda!357190 lambda!357120))))

(declare-fun bs!1636130 () Bool)

(assert (= bs!1636130 (and d!2027424 b!6463367)))

(assert (=> bs!1636130 (not (= lambda!357190 lambda!357169))))

(declare-fun bs!1636131 () Bool)

(assert (= bs!1636131 (and d!2027424 b!6463232)))

(assert (=> bs!1636131 (not (= lambda!357190 lambda!357147))))

(assert (=> bs!1636123 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357190 lambda!357155))))

(assert (=> bs!1636128 (= lambda!357190 lambda!357119)))

(assert (=> bs!1636119 (not (= lambda!357190 lambda!357126))))

(assert (=> bs!1636122 (not (= lambda!357190 lambda!357168))))

(declare-fun bs!1636132 () Bool)

(assert (= bs!1636132 (and d!2027424 b!6463372)))

(assert (=> bs!1636132 (not (= lambda!357190 lambda!357170))))

(assert (=> bs!1636125 (not (= lambda!357190 lambda!357123))))

(assert (=> d!2027424 true))

(assert (=> d!2027424 true))

(assert (=> d!2027424 true))

(assert (=> d!2027424 (= (isDefined!12939 (findConcatSeparation!2650 (regOne!33202 r!7292) (regTwo!33202 r!7292) Nil!65210 s!2326 s!2326)) (Exists!3415 lambda!357190))))

(declare-fun lt!2383150 () Unit!158711)

(assert (=> d!2027424 (= lt!2383150 (choose!47930 (regOne!33202 r!7292) (regTwo!33202 r!7292) s!2326))))

(assert (=> d!2027424 (validRegex!8081 (regOne!33202 r!7292))))

(assert (=> d!2027424 (= (lemmaFindConcatSeparationEquivalentToExists!2414 (regOne!33202 r!7292) (regTwo!33202 r!7292) s!2326) lt!2383150)))

(declare-fun bs!1636133 () Bool)

(assert (= bs!1636133 d!2027424))

(assert (=> bs!1636133 m!7252724))

(assert (=> bs!1636133 m!7252088))

(assert (=> bs!1636133 m!7252088))

(assert (=> bs!1636133 m!7252090))

(declare-fun m!7252756 () Bool)

(assert (=> bs!1636133 m!7252756))

(declare-fun m!7252758 () Bool)

(assert (=> bs!1636133 m!7252758))

(assert (=> b!6462980 d!2027424))

(declare-fun bs!1636134 () Bool)

(declare-fun d!2027434 () Bool)

(assert (= bs!1636134 (and d!2027434 b!6462961)))

(declare-fun lambda!357191 () Int)

(assert (=> bs!1636134 (not (= lambda!357191 lambda!357125))))

(declare-fun bs!1636135 () Bool)

(assert (= bs!1636135 (and d!2027434 d!2027370)))

(assert (=> bs!1636135 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357191 lambda!357182))))

(declare-fun bs!1636136 () Bool)

(assert (= bs!1636136 (and d!2027434 d!2027334)))

(assert (=> bs!1636136 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) (Star!16345 (reg!16674 (regOne!33202 r!7292))))) (= lambda!357191 lambda!357167))))

(declare-fun bs!1636137 () Bool)

(assert (= bs!1636137 (and d!2027434 d!2027324)))

(assert (=> bs!1636137 (not (= lambda!357191 lambda!357156))))

(declare-fun bs!1636138 () Bool)

(assert (= bs!1636138 (and d!2027434 b!6462972)))

(assert (=> bs!1636138 (= (= (regOne!33202 r!7292) lt!2383009) (= lambda!357191 lambda!357122))))

(assert (=> bs!1636134 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357191 lambda!357124))))

(declare-fun bs!1636139 () Bool)

(assert (= bs!1636139 (and d!2027434 b!6463237)))

(assert (=> bs!1636139 (not (= lambda!357191 lambda!357148))))

(declare-fun bs!1636140 () Bool)

(assert (= bs!1636140 (and d!2027434 b!6462980)))

(assert (=> bs!1636140 (not (= lambda!357191 lambda!357120))))

(declare-fun bs!1636141 () Bool)

(assert (= bs!1636141 (and d!2027434 b!6463367)))

(assert (=> bs!1636141 (not (= lambda!357191 lambda!357169))))

(declare-fun bs!1636142 () Bool)

(assert (= bs!1636142 (and d!2027434 b!6463232)))

(assert (=> bs!1636142 (not (= lambda!357191 lambda!357147))))

(assert (=> bs!1636137 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357191 lambda!357155))))

(declare-fun bs!1636143 () Bool)

(assert (= bs!1636143 (and d!2027434 d!2027424)))

(assert (=> bs!1636143 (= lambda!357191 lambda!357190)))

(assert (=> bs!1636140 (= lambda!357191 lambda!357119)))

(assert (=> bs!1636134 (not (= lambda!357191 lambda!357126))))

(assert (=> bs!1636136 (not (= lambda!357191 lambda!357168))))

(declare-fun bs!1636144 () Bool)

(assert (= bs!1636144 (and d!2027434 b!6463372)))

(assert (=> bs!1636144 (not (= lambda!357191 lambda!357170))))

(assert (=> bs!1636138 (not (= lambda!357191 lambda!357123))))

(assert (=> d!2027434 true))

(assert (=> d!2027434 true))

(assert (=> d!2027434 true))

(declare-fun lambda!357192 () Int)

(assert (=> bs!1636134 (not (= lambda!357192 lambda!357125))))

(declare-fun bs!1636147 () Bool)

(assert (= bs!1636147 d!2027434))

(assert (=> bs!1636147 (not (= lambda!357192 lambda!357191))))

(assert (=> bs!1636135 (not (= lambda!357192 lambda!357182))))

(assert (=> bs!1636136 (not (= lambda!357192 lambda!357167))))

(assert (=> bs!1636137 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357192 lambda!357156))))

(assert (=> bs!1636138 (not (= lambda!357192 lambda!357122))))

(assert (=> bs!1636134 (not (= lambda!357192 lambda!357124))))

(assert (=> bs!1636139 (= lambda!357192 lambda!357148)))

(assert (=> bs!1636140 (= lambda!357192 lambda!357120)))

(assert (=> bs!1636141 (not (= lambda!357192 lambda!357169))))

(assert (=> bs!1636142 (not (= lambda!357192 lambda!357147))))

(assert (=> bs!1636137 (not (= lambda!357192 lambda!357155))))

(assert (=> bs!1636143 (not (= lambda!357192 lambda!357190))))

(assert (=> bs!1636140 (not (= lambda!357192 lambda!357119))))

(assert (=> bs!1636134 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357192 lambda!357126))))

(assert (=> bs!1636136 (not (= lambda!357192 lambda!357168))))

(assert (=> bs!1636144 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 r!7292) (regOne!33202 lt!2383009)) (= (regTwo!33202 r!7292) (regTwo!33202 lt!2383009))) (= lambda!357192 lambda!357170))))

(assert (=> bs!1636138 (= (= (regOne!33202 r!7292) lt!2383009) (= lambda!357192 lambda!357123))))

(assert (=> d!2027434 true))

(assert (=> d!2027434 true))

(assert (=> d!2027434 true))

(assert (=> d!2027434 (= (Exists!3415 lambda!357191) (Exists!3415 lambda!357192))))

(declare-fun lt!2383153 () Unit!158711)

(assert (=> d!2027434 (= lt!2383153 (choose!47926 (regOne!33202 r!7292) (regTwo!33202 r!7292) s!2326))))

(assert (=> d!2027434 (validRegex!8081 (regOne!33202 r!7292))))

(assert (=> d!2027434 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1952 (regOne!33202 r!7292) (regTwo!33202 r!7292) s!2326) lt!2383153)))

(declare-fun m!7252786 () Bool)

(assert (=> bs!1636147 m!7252786))

(declare-fun m!7252788 () Bool)

(assert (=> bs!1636147 m!7252788))

(declare-fun m!7252790 () Bool)

(assert (=> bs!1636147 m!7252790))

(assert (=> bs!1636147 m!7252724))

(assert (=> b!6462980 d!2027434))

(declare-fun d!2027444 () Bool)

(assert (=> d!2027444 (= (isDefined!12939 (findConcatSeparation!2650 (regOne!33202 r!7292) (regTwo!33202 r!7292) Nil!65210 s!2326 s!2326)) (not (isEmpty!37390 (findConcatSeparation!2650 (regOne!33202 r!7292) (regTwo!33202 r!7292) Nil!65210 s!2326 s!2326))))))

(declare-fun bs!1636158 () Bool)

(assert (= bs!1636158 d!2027444))

(assert (=> bs!1636158 m!7252088))

(declare-fun m!7252792 () Bool)

(assert (=> bs!1636158 m!7252792))

(assert (=> b!6462980 d!2027444))

(declare-fun d!2027446 () Bool)

(declare-fun lt!2383159 () Regex!16345)

(assert (=> d!2027446 (validRegex!8081 lt!2383159)))

(assert (=> d!2027446 (= lt!2383159 (generalisedUnion!2189 (unfocusZipperList!1766 (Cons!65212 lt!2383004 Nil!65212))))))

(assert (=> d!2027446 (= (unfocusZipper!2087 (Cons!65212 lt!2383004 Nil!65212)) lt!2383159)))

(declare-fun bs!1636160 () Bool)

(assert (= bs!1636160 d!2027446))

(declare-fun m!7252796 () Bool)

(assert (=> bs!1636160 m!7252796))

(declare-fun m!7252800 () Bool)

(assert (=> bs!1636160 m!7252800))

(assert (=> bs!1636160 m!7252800))

(declare-fun m!7252802 () Bool)

(assert (=> bs!1636160 m!7252802))

(assert (=> b!6462979 d!2027446))

(declare-fun b!6463629 () Bool)

(declare-fun e!3918847 () Bool)

(assert (=> b!6463629 (= e!3918847 (not (= (head!13176 (_2!36627 lt!2383030)) (c!1182927 (regTwo!33202 r!7292)))))))

(declare-fun b!6463630 () Bool)

(declare-fun res!2654274 () Bool)

(declare-fun e!3918851 () Bool)

(assert (=> b!6463630 (=> (not res!2654274) (not e!3918851))))

(declare-fun call!558569 () Bool)

(assert (=> b!6463630 (= res!2654274 (not call!558569))))

(declare-fun b!6463631 () Bool)

(declare-fun e!3918852 () Bool)

(assert (=> b!6463631 (= e!3918852 (nullable!6338 (regTwo!33202 r!7292)))))

(declare-fun b!6463632 () Bool)

(declare-fun e!3918850 () Bool)

(declare-fun e!3918849 () Bool)

(assert (=> b!6463632 (= e!3918850 e!3918849)))

(declare-fun c!1183109 () Bool)

(assert (=> b!6463632 (= c!1183109 ((_ is EmptyLang!16345) (regTwo!33202 r!7292)))))

(declare-fun b!6463633 () Bool)

(declare-fun res!2654271 () Bool)

(declare-fun e!3918848 () Bool)

(assert (=> b!6463633 (=> res!2654271 e!3918848)))

(assert (=> b!6463633 (= res!2654271 e!3918851)))

(declare-fun res!2654272 () Bool)

(assert (=> b!6463633 (=> (not res!2654272) (not e!3918851))))

(declare-fun lt!2383161 () Bool)

(assert (=> b!6463633 (= res!2654272 lt!2383161)))

(declare-fun b!6463634 () Bool)

(declare-fun e!3918846 () Bool)

(assert (=> b!6463634 (= e!3918846 e!3918847)))

(declare-fun res!2654273 () Bool)

(assert (=> b!6463634 (=> res!2654273 e!3918847)))

(assert (=> b!6463634 (= res!2654273 call!558569)))

(declare-fun d!2027450 () Bool)

(assert (=> d!2027450 e!3918850))

(declare-fun c!1183110 () Bool)

(assert (=> d!2027450 (= c!1183110 ((_ is EmptyExpr!16345) (regTwo!33202 r!7292)))))

(assert (=> d!2027450 (= lt!2383161 e!3918852)))

(declare-fun c!1183111 () Bool)

(assert (=> d!2027450 (= c!1183111 (isEmpty!37386 (_2!36627 lt!2383030)))))

(assert (=> d!2027450 (validRegex!8081 (regTwo!33202 r!7292))))

(assert (=> d!2027450 (= (matchR!8528 (regTwo!33202 r!7292) (_2!36627 lt!2383030)) lt!2383161)))

(declare-fun b!6463635 () Bool)

(assert (=> b!6463635 (= e!3918848 e!3918846)))

(declare-fun res!2654276 () Bool)

(assert (=> b!6463635 (=> (not res!2654276) (not e!3918846))))

(assert (=> b!6463635 (= res!2654276 (not lt!2383161))))

(declare-fun bm!558564 () Bool)

(assert (=> bm!558564 (= call!558569 (isEmpty!37386 (_2!36627 lt!2383030)))))

(declare-fun b!6463636 () Bool)

(assert (=> b!6463636 (= e!3918849 (not lt!2383161))))

(declare-fun b!6463637 () Bool)

(assert (=> b!6463637 (= e!3918851 (= (head!13176 (_2!36627 lt!2383030)) (c!1182927 (regTwo!33202 r!7292))))))

(declare-fun b!6463638 () Bool)

(assert (=> b!6463638 (= e!3918852 (matchR!8528 (derivativeStep!5047 (regTwo!33202 r!7292) (head!13176 (_2!36627 lt!2383030))) (tail!12261 (_2!36627 lt!2383030))))))

(declare-fun b!6463639 () Bool)

(assert (=> b!6463639 (= e!3918850 (= lt!2383161 call!558569))))

(declare-fun b!6463640 () Bool)

(declare-fun res!2654270 () Bool)

(assert (=> b!6463640 (=> (not res!2654270) (not e!3918851))))

(assert (=> b!6463640 (= res!2654270 (isEmpty!37386 (tail!12261 (_2!36627 lt!2383030))))))

(declare-fun b!6463641 () Bool)

(declare-fun res!2654277 () Bool)

(assert (=> b!6463641 (=> res!2654277 e!3918848)))

(assert (=> b!6463641 (= res!2654277 (not ((_ is ElementMatch!16345) (regTwo!33202 r!7292))))))

(assert (=> b!6463641 (= e!3918849 e!3918848)))

(declare-fun b!6463642 () Bool)

(declare-fun res!2654275 () Bool)

(assert (=> b!6463642 (=> res!2654275 e!3918847)))

(assert (=> b!6463642 (= res!2654275 (not (isEmpty!37386 (tail!12261 (_2!36627 lt!2383030)))))))

(assert (= (and d!2027450 c!1183111) b!6463631))

(assert (= (and d!2027450 (not c!1183111)) b!6463638))

(assert (= (and d!2027450 c!1183110) b!6463639))

(assert (= (and d!2027450 (not c!1183110)) b!6463632))

(assert (= (and b!6463632 c!1183109) b!6463636))

(assert (= (and b!6463632 (not c!1183109)) b!6463641))

(assert (= (and b!6463641 (not res!2654277)) b!6463633))

(assert (= (and b!6463633 res!2654272) b!6463630))

(assert (= (and b!6463630 res!2654274) b!6463640))

(assert (= (and b!6463640 res!2654270) b!6463637))

(assert (= (and b!6463633 (not res!2654271)) b!6463635))

(assert (= (and b!6463635 res!2654276) b!6463634))

(assert (= (and b!6463634 (not res!2654273)) b!6463642))

(assert (= (and b!6463642 (not res!2654275)) b!6463629))

(assert (= (or b!6463639 b!6463630 b!6463634) bm!558564))

(declare-fun m!7252804 () Bool)

(assert (=> b!6463640 m!7252804))

(assert (=> b!6463640 m!7252804))

(declare-fun m!7252806 () Bool)

(assert (=> b!6463640 m!7252806))

(declare-fun m!7252808 () Bool)

(assert (=> b!6463638 m!7252808))

(assert (=> b!6463638 m!7252808))

(declare-fun m!7252810 () Bool)

(assert (=> b!6463638 m!7252810))

(assert (=> b!6463638 m!7252804))

(assert (=> b!6463638 m!7252810))

(assert (=> b!6463638 m!7252804))

(declare-fun m!7252812 () Bool)

(assert (=> b!6463638 m!7252812))

(declare-fun m!7252814 () Bool)

(assert (=> b!6463631 m!7252814))

(declare-fun m!7252816 () Bool)

(assert (=> bm!558564 m!7252816))

(assert (=> b!6463629 m!7252808))

(assert (=> d!2027450 m!7252816))

(declare-fun m!7252818 () Bool)

(assert (=> d!2027450 m!7252818))

(assert (=> b!6463637 m!7252808))

(assert (=> b!6463642 m!7252804))

(assert (=> b!6463642 m!7252804))

(assert (=> b!6463642 m!7252806))

(assert (=> b!6462959 d!2027450))

(declare-fun b!6463643 () Bool)

(declare-fun e!3918854 () Bool)

(assert (=> b!6463643 (= e!3918854 (not (= (head!13176 s!2326) (c!1182927 lt!2382995))))))

(declare-fun b!6463644 () Bool)

(declare-fun res!2654282 () Bool)

(declare-fun e!3918858 () Bool)

(assert (=> b!6463644 (=> (not res!2654282) (not e!3918858))))

(declare-fun call!558570 () Bool)

(assert (=> b!6463644 (= res!2654282 (not call!558570))))

(declare-fun b!6463645 () Bool)

(declare-fun e!3918859 () Bool)

(assert (=> b!6463645 (= e!3918859 (nullable!6338 lt!2382995))))

(declare-fun b!6463646 () Bool)

(declare-fun e!3918857 () Bool)

(declare-fun e!3918856 () Bool)

(assert (=> b!6463646 (= e!3918857 e!3918856)))

(declare-fun c!1183112 () Bool)

(assert (=> b!6463646 (= c!1183112 ((_ is EmptyLang!16345) lt!2382995))))

(declare-fun b!6463647 () Bool)

(declare-fun res!2654279 () Bool)

(declare-fun e!3918855 () Bool)

(assert (=> b!6463647 (=> res!2654279 e!3918855)))

(assert (=> b!6463647 (= res!2654279 e!3918858)))

(declare-fun res!2654280 () Bool)

(assert (=> b!6463647 (=> (not res!2654280) (not e!3918858))))

(declare-fun lt!2383162 () Bool)

(assert (=> b!6463647 (= res!2654280 lt!2383162)))

(declare-fun b!6463648 () Bool)

(declare-fun e!3918853 () Bool)

(assert (=> b!6463648 (= e!3918853 e!3918854)))

(declare-fun res!2654281 () Bool)

(assert (=> b!6463648 (=> res!2654281 e!3918854)))

(assert (=> b!6463648 (= res!2654281 call!558570)))

(declare-fun d!2027452 () Bool)

(assert (=> d!2027452 e!3918857))

(declare-fun c!1183113 () Bool)

(assert (=> d!2027452 (= c!1183113 ((_ is EmptyExpr!16345) lt!2382995))))

(assert (=> d!2027452 (= lt!2383162 e!3918859)))

(declare-fun c!1183114 () Bool)

(assert (=> d!2027452 (= c!1183114 (isEmpty!37386 s!2326))))

(assert (=> d!2027452 (validRegex!8081 lt!2382995)))

(assert (=> d!2027452 (= (matchR!8528 lt!2382995 s!2326) lt!2383162)))

(declare-fun b!6463649 () Bool)

(assert (=> b!6463649 (= e!3918855 e!3918853)))

(declare-fun res!2654284 () Bool)

(assert (=> b!6463649 (=> (not res!2654284) (not e!3918853))))

(assert (=> b!6463649 (= res!2654284 (not lt!2383162))))

(declare-fun bm!558565 () Bool)

(assert (=> bm!558565 (= call!558570 (isEmpty!37386 s!2326))))

(declare-fun b!6463650 () Bool)

(assert (=> b!6463650 (= e!3918856 (not lt!2383162))))

(declare-fun b!6463651 () Bool)

(assert (=> b!6463651 (= e!3918858 (= (head!13176 s!2326) (c!1182927 lt!2382995)))))

(declare-fun b!6463652 () Bool)

(assert (=> b!6463652 (= e!3918859 (matchR!8528 (derivativeStep!5047 lt!2382995 (head!13176 s!2326)) (tail!12261 s!2326)))))

(declare-fun b!6463653 () Bool)

(assert (=> b!6463653 (= e!3918857 (= lt!2383162 call!558570))))

(declare-fun b!6463654 () Bool)

(declare-fun res!2654278 () Bool)

(assert (=> b!6463654 (=> (not res!2654278) (not e!3918858))))

(assert (=> b!6463654 (= res!2654278 (isEmpty!37386 (tail!12261 s!2326)))))

(declare-fun b!6463655 () Bool)

(declare-fun res!2654285 () Bool)

(assert (=> b!6463655 (=> res!2654285 e!3918855)))

(assert (=> b!6463655 (= res!2654285 (not ((_ is ElementMatch!16345) lt!2382995)))))

(assert (=> b!6463655 (= e!3918856 e!3918855)))

(declare-fun b!6463656 () Bool)

(declare-fun res!2654283 () Bool)

(assert (=> b!6463656 (=> res!2654283 e!3918854)))

(assert (=> b!6463656 (= res!2654283 (not (isEmpty!37386 (tail!12261 s!2326))))))

(assert (= (and d!2027452 c!1183114) b!6463645))

(assert (= (and d!2027452 (not c!1183114)) b!6463652))

(assert (= (and d!2027452 c!1183113) b!6463653))

(assert (= (and d!2027452 (not c!1183113)) b!6463646))

(assert (= (and b!6463646 c!1183112) b!6463650))

(assert (= (and b!6463646 (not c!1183112)) b!6463655))

(assert (= (and b!6463655 (not res!2654285)) b!6463647))

(assert (= (and b!6463647 res!2654280) b!6463644))

(assert (= (and b!6463644 res!2654282) b!6463654))

(assert (= (and b!6463654 res!2654278) b!6463651))

(assert (= (and b!6463647 (not res!2654279)) b!6463649))

(assert (= (and b!6463649 res!2654284) b!6463648))

(assert (= (and b!6463648 (not res!2654281)) b!6463656))

(assert (= (and b!6463656 (not res!2654283)) b!6463643))

(assert (= (or b!6463653 b!6463644 b!6463648) bm!558565))

(assert (=> b!6463654 m!7252382))

(assert (=> b!6463654 m!7252382))

(assert (=> b!6463654 m!7252384))

(assert (=> b!6463652 m!7252386))

(assert (=> b!6463652 m!7252386))

(declare-fun m!7252820 () Bool)

(assert (=> b!6463652 m!7252820))

(assert (=> b!6463652 m!7252382))

(assert (=> b!6463652 m!7252820))

(assert (=> b!6463652 m!7252382))

(declare-fun m!7252822 () Bool)

(assert (=> b!6463652 m!7252822))

(declare-fun m!7252824 () Bool)

(assert (=> b!6463645 m!7252824))

(assert (=> bm!558565 m!7252372))

(assert (=> b!6463643 m!7252386))

(assert (=> d!2027452 m!7252372))

(declare-fun m!7252826 () Bool)

(assert (=> d!2027452 m!7252826))

(assert (=> b!6463651 m!7252386))

(assert (=> b!6463656 m!7252382))

(assert (=> b!6463656 m!7252382))

(assert (=> b!6463656 m!7252384))

(assert (=> b!6462958 d!2027452))

(declare-fun bs!1636172 () Bool)

(declare-fun b!6463659 () Bool)

(assert (= bs!1636172 (and b!6463659 b!6462961)))

(declare-fun lambda!357196 () Int)

(assert (=> bs!1636172 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (reg!16674 lt!2382995) (reg!16674 (regOne!33202 r!7292))) (= lt!2382995 lt!2383009)) (= lambda!357196 lambda!357125))))

(declare-fun bs!1636173 () Bool)

(assert (= bs!1636173 (and b!6463659 d!2027434)))

(assert (=> bs!1636173 (not (= lambda!357196 lambda!357191))))

(declare-fun bs!1636174 () Bool)

(assert (= bs!1636174 (and b!6463659 d!2027370)))

(assert (=> bs!1636174 (not (= lambda!357196 lambda!357182))))

(declare-fun bs!1636175 () Bool)

(assert (= bs!1636175 (and b!6463659 d!2027334)))

(assert (=> bs!1636175 (not (= lambda!357196 lambda!357167))))

(declare-fun bs!1636176 () Bool)

(assert (= bs!1636176 (and b!6463659 d!2027324)))

(assert (=> bs!1636176 (not (= lambda!357196 lambda!357156))))

(declare-fun bs!1636178 () Bool)

(assert (= bs!1636178 (and b!6463659 b!6462972)))

(assert (=> bs!1636178 (not (= lambda!357196 lambda!357122))))

(assert (=> bs!1636172 (not (= lambda!357196 lambda!357124))))

(declare-fun bs!1636179 () Bool)

(assert (= bs!1636179 (and b!6463659 b!6463237)))

(assert (=> bs!1636179 (not (= lambda!357196 lambda!357148))))

(declare-fun bs!1636180 () Bool)

(assert (= bs!1636180 (and b!6463659 b!6462980)))

(assert (=> bs!1636180 (not (= lambda!357196 lambda!357120))))

(declare-fun bs!1636181 () Bool)

(assert (= bs!1636181 (and b!6463659 b!6463367)))

(assert (=> bs!1636181 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (reg!16674 lt!2382995) (reg!16674 lt!2383009)) (= lt!2382995 lt!2383009)) (= lambda!357196 lambda!357169))))

(declare-fun bs!1636182 () Bool)

(assert (= bs!1636182 (and b!6463659 b!6463232)))

(assert (=> bs!1636182 (= (and (= (reg!16674 lt!2382995) (reg!16674 r!7292)) (= lt!2382995 r!7292)) (= lambda!357196 lambda!357147))))

(assert (=> bs!1636176 (not (= lambda!357196 lambda!357155))))

(assert (=> bs!1636173 (not (= lambda!357196 lambda!357192))))

(declare-fun bs!1636183 () Bool)

(assert (= bs!1636183 (and b!6463659 d!2027424)))

(assert (=> bs!1636183 (not (= lambda!357196 lambda!357190))))

(assert (=> bs!1636180 (not (= lambda!357196 lambda!357119))))

(assert (=> bs!1636172 (not (= lambda!357196 lambda!357126))))

(assert (=> bs!1636175 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (reg!16674 lt!2382995) (reg!16674 (regOne!33202 r!7292))) (= lt!2382995 (Star!16345 (reg!16674 (regOne!33202 r!7292))))) (= lambda!357196 lambda!357168))))

(declare-fun bs!1636184 () Bool)

(assert (= bs!1636184 (and b!6463659 b!6463372)))

(assert (=> bs!1636184 (not (= lambda!357196 lambda!357170))))

(assert (=> bs!1636178 (not (= lambda!357196 lambda!357123))))

(assert (=> b!6463659 true))

(assert (=> b!6463659 true))

(declare-fun bs!1636186 () Bool)

(declare-fun b!6463664 () Bool)

(assert (= bs!1636186 (and b!6463664 b!6462961)))

(declare-fun lambda!357197 () Int)

(assert (=> bs!1636186 (not (= lambda!357197 lambda!357125))))

(declare-fun bs!1636187 () Bool)

(assert (= bs!1636187 (and b!6463664 d!2027434)))

(assert (=> bs!1636187 (not (= lambda!357197 lambda!357191))))

(declare-fun bs!1636188 () Bool)

(assert (= bs!1636188 (and b!6463664 d!2027370)))

(assert (=> bs!1636188 (not (= lambda!357197 lambda!357182))))

(declare-fun bs!1636189 () Bool)

(assert (= bs!1636189 (and b!6463664 d!2027334)))

(assert (=> bs!1636189 (not (= lambda!357197 lambda!357167))))

(declare-fun bs!1636190 () Bool)

(assert (= bs!1636190 (and b!6463664 d!2027324)))

(assert (=> bs!1636190 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 lt!2382995) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 lt!2382995) lt!2383009)) (= lambda!357197 lambda!357156))))

(declare-fun bs!1636191 () Bool)

(assert (= bs!1636191 (and b!6463664 b!6462972)))

(assert (=> bs!1636191 (not (= lambda!357197 lambda!357122))))

(assert (=> bs!1636186 (not (= lambda!357197 lambda!357124))))

(declare-fun bs!1636192 () Bool)

(assert (= bs!1636192 (and b!6463664 b!6463237)))

(assert (=> bs!1636192 (= (and (= (regOne!33202 lt!2382995) (regOne!33202 r!7292)) (= (regTwo!33202 lt!2382995) (regTwo!33202 r!7292))) (= lambda!357197 lambda!357148))))

(declare-fun bs!1636193 () Bool)

(assert (= bs!1636193 (and b!6463664 b!6462980)))

(assert (=> bs!1636193 (= (and (= (regOne!33202 lt!2382995) (regOne!33202 r!7292)) (= (regTwo!33202 lt!2382995) (regTwo!33202 r!7292))) (= lambda!357197 lambda!357120))))

(declare-fun bs!1636194 () Bool)

(assert (= bs!1636194 (and b!6463664 b!6463367)))

(assert (=> bs!1636194 (not (= lambda!357197 lambda!357169))))

(declare-fun bs!1636195 () Bool)

(assert (= bs!1636195 (and b!6463664 b!6463232)))

(assert (=> bs!1636195 (not (= lambda!357197 lambda!357147))))

(assert (=> bs!1636190 (not (= lambda!357197 lambda!357155))))

(assert (=> bs!1636187 (= (and (= (regOne!33202 lt!2382995) (regOne!33202 r!7292)) (= (regTwo!33202 lt!2382995) (regTwo!33202 r!7292))) (= lambda!357197 lambda!357192))))

(declare-fun bs!1636196 () Bool)

(assert (= bs!1636196 (and b!6463664 d!2027424)))

(assert (=> bs!1636196 (not (= lambda!357197 lambda!357190))))

(assert (=> bs!1636193 (not (= lambda!357197 lambda!357119))))

(assert (=> bs!1636186 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 lt!2382995) (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 lt!2382995) lt!2383009)) (= lambda!357197 lambda!357126))))

(declare-fun bs!1636200 () Bool)

(assert (= bs!1636200 (and b!6463664 b!6463659)))

(assert (=> bs!1636200 (not (= lambda!357197 lambda!357196))))

(assert (=> bs!1636189 (not (= lambda!357197 lambda!357168))))

(declare-fun bs!1636202 () Bool)

(assert (= bs!1636202 (and b!6463664 b!6463372)))

(assert (=> bs!1636202 (= (and (= s!2326 (_1!36627 lt!2383030)) (= (regOne!33202 lt!2382995) (regOne!33202 lt!2383009)) (= (regTwo!33202 lt!2382995) (regTwo!33202 lt!2383009))) (= lambda!357197 lambda!357170))))

(assert (=> bs!1636191 (= (and (= (regOne!33202 lt!2382995) lt!2383009) (= (regTwo!33202 lt!2382995) (regTwo!33202 r!7292))) (= lambda!357197 lambda!357123))))

(assert (=> b!6463664 true))

(assert (=> b!6463664 true))

(declare-fun b!6463657 () Bool)

(declare-fun e!3918861 () Bool)

(declare-fun call!558571 () Bool)

(assert (=> b!6463657 (= e!3918861 call!558571)))

(declare-fun e!3918860 () Bool)

(declare-fun call!558572 () Bool)

(assert (=> b!6463659 (= e!3918860 call!558572)))

(declare-fun c!1183118 () Bool)

(declare-fun bm!558566 () Bool)

(assert (=> bm!558566 (= call!558572 (Exists!3415 (ite c!1183118 lambda!357196 lambda!357197)))))

(declare-fun b!6463660 () Bool)

(declare-fun e!3918865 () Bool)

(assert (=> b!6463660 (= e!3918865 (matchRSpec!3446 (regTwo!33203 lt!2382995) s!2326))))

(declare-fun b!6463661 () Bool)

(declare-fun e!3918864 () Bool)

(assert (=> b!6463661 (= e!3918864 e!3918865)))

(declare-fun res!2654286 () Bool)

(assert (=> b!6463661 (= res!2654286 (matchRSpec!3446 (regOne!33203 lt!2382995) s!2326))))

(assert (=> b!6463661 (=> res!2654286 e!3918865)))

(declare-fun bm!558567 () Bool)

(assert (=> bm!558567 (= call!558571 (isEmpty!37386 s!2326))))

(declare-fun b!6463662 () Bool)

(declare-fun e!3918863 () Bool)

(assert (=> b!6463662 (= e!3918864 e!3918863)))

(assert (=> b!6463662 (= c!1183118 ((_ is Star!16345) lt!2382995))))

(declare-fun b!6463663 () Bool)

(declare-fun e!3918866 () Bool)

(assert (=> b!6463663 (= e!3918866 (= s!2326 (Cons!65210 (c!1182927 lt!2382995) Nil!65210)))))

(declare-fun b!6463658 () Bool)

(declare-fun e!3918862 () Bool)

(assert (=> b!6463658 (= e!3918861 e!3918862)))

(declare-fun res!2654288 () Bool)

(assert (=> b!6463658 (= res!2654288 (not ((_ is EmptyLang!16345) lt!2382995)))))

(assert (=> b!6463658 (=> (not res!2654288) (not e!3918862))))

(declare-fun d!2027454 () Bool)

(declare-fun c!1183115 () Bool)

(assert (=> d!2027454 (= c!1183115 ((_ is EmptyExpr!16345) lt!2382995))))

(assert (=> d!2027454 (= (matchRSpec!3446 lt!2382995 s!2326) e!3918861)))

(assert (=> b!6463664 (= e!3918863 call!558572)))

(declare-fun b!6463665 () Bool)

(declare-fun c!1183117 () Bool)

(assert (=> b!6463665 (= c!1183117 ((_ is Union!16345) lt!2382995))))

(assert (=> b!6463665 (= e!3918866 e!3918864)))

(declare-fun b!6463666 () Bool)

(declare-fun c!1183116 () Bool)

(assert (=> b!6463666 (= c!1183116 ((_ is ElementMatch!16345) lt!2382995))))

(assert (=> b!6463666 (= e!3918862 e!3918866)))

(declare-fun b!6463667 () Bool)

(declare-fun res!2654287 () Bool)

(assert (=> b!6463667 (=> res!2654287 e!3918860)))

(assert (=> b!6463667 (= res!2654287 call!558571)))

(assert (=> b!6463667 (= e!3918863 e!3918860)))

(assert (= (and d!2027454 c!1183115) b!6463657))

(assert (= (and d!2027454 (not c!1183115)) b!6463658))

(assert (= (and b!6463658 res!2654288) b!6463666))

(assert (= (and b!6463666 c!1183116) b!6463663))

(assert (= (and b!6463666 (not c!1183116)) b!6463665))

(assert (= (and b!6463665 c!1183117) b!6463661))

(assert (= (and b!6463665 (not c!1183117)) b!6463662))

(assert (= (and b!6463661 (not res!2654286)) b!6463660))

(assert (= (and b!6463662 c!1183118) b!6463667))

(assert (= (and b!6463662 (not c!1183118)) b!6463664))

(assert (= (and b!6463667 (not res!2654287)) b!6463659))

(assert (= (or b!6463659 b!6463664) bm!558566))

(assert (= (or b!6463657 b!6463667) bm!558567))

(declare-fun m!7252838 () Bool)

(assert (=> bm!558566 m!7252838))

(declare-fun m!7252840 () Bool)

(assert (=> b!6463660 m!7252840))

(declare-fun m!7252842 () Bool)

(assert (=> b!6463661 m!7252842))

(assert (=> bm!558567 m!7252372))

(assert (=> b!6462958 d!2027454))

(declare-fun d!2027464 () Bool)

(assert (=> d!2027464 (= (matchR!8528 lt!2382995 s!2326) (matchRSpec!3446 lt!2382995 s!2326))))

(declare-fun lt!2383164 () Unit!158711)

(assert (=> d!2027464 (= lt!2383164 (choose!47923 lt!2382995 s!2326))))

(assert (=> d!2027464 (validRegex!8081 lt!2382995)))

(assert (=> d!2027464 (= (mainMatchTheorem!3446 lt!2382995 s!2326) lt!2383164)))

(declare-fun bs!1636203 () Bool)

(assert (= bs!1636203 d!2027464))

(assert (=> bs!1636203 m!7252078))

(assert (=> bs!1636203 m!7252080))

(declare-fun m!7252854 () Bool)

(assert (=> bs!1636203 m!7252854))

(assert (=> bs!1636203 m!7252826))

(assert (=> b!6462958 d!2027464))

(declare-fun bs!1636229 () Bool)

(declare-fun d!2027466 () Bool)

(assert (= bs!1636229 (and d!2027466 d!2027278)))

(declare-fun lambda!357205 () Int)

(assert (=> bs!1636229 (= lambda!357205 lambda!357129)))

(declare-fun bs!1636230 () Bool)

(assert (= bs!1636230 (and d!2027466 d!2027412)))

(assert (=> bs!1636230 (= lambda!357205 lambda!357188)))

(declare-fun b!6463727 () Bool)

(declare-fun e!3918902 () Bool)

(declare-fun lt!2383168 () Regex!16345)

(declare-fun head!13178 (List!65335) Regex!16345)

(assert (=> b!6463727 (= e!3918902 (= lt!2383168 (head!13178 (unfocusZipperList!1766 zl!343))))))

(declare-fun b!6463728 () Bool)

(declare-fun e!3918905 () Regex!16345)

(assert (=> b!6463728 (= e!3918905 EmptyLang!16345)))

(declare-fun b!6463729 () Bool)

(declare-fun e!3918903 () Bool)

(declare-fun isEmptyLang!1751 (Regex!16345) Bool)

(assert (=> b!6463729 (= e!3918903 (isEmptyLang!1751 lt!2383168))))

(declare-fun e!3918901 () Bool)

(assert (=> d!2027466 e!3918901))

(declare-fun res!2654313 () Bool)

(assert (=> d!2027466 (=> (not res!2654313) (not e!3918901))))

(assert (=> d!2027466 (= res!2654313 (validRegex!8081 lt!2383168))))

(declare-fun e!3918900 () Regex!16345)

(assert (=> d!2027466 (= lt!2383168 e!3918900)))

(declare-fun c!1183139 () Bool)

(declare-fun e!3918904 () Bool)

(assert (=> d!2027466 (= c!1183139 e!3918904)))

(declare-fun res!2654312 () Bool)

(assert (=> d!2027466 (=> (not res!2654312) (not e!3918904))))

(assert (=> d!2027466 (= res!2654312 ((_ is Cons!65211) (unfocusZipperList!1766 zl!343)))))

(assert (=> d!2027466 (forall!15533 (unfocusZipperList!1766 zl!343) lambda!357205)))

(assert (=> d!2027466 (= (generalisedUnion!2189 (unfocusZipperList!1766 zl!343)) lt!2383168)))

(declare-fun b!6463730 () Bool)

(assert (=> b!6463730 (= e!3918905 (Union!16345 (h!71659 (unfocusZipperList!1766 zl!343)) (generalisedUnion!2189 (t!378957 (unfocusZipperList!1766 zl!343)))))))

(declare-fun b!6463731 () Bool)

(assert (=> b!6463731 (= e!3918904 (isEmpty!37387 (t!378957 (unfocusZipperList!1766 zl!343))))))

(declare-fun b!6463732 () Bool)

(assert (=> b!6463732 (= e!3918900 (h!71659 (unfocusZipperList!1766 zl!343)))))

(declare-fun b!6463733 () Bool)

(assert (=> b!6463733 (= e!3918901 e!3918903)))

(declare-fun c!1183138 () Bool)

(assert (=> b!6463733 (= c!1183138 (isEmpty!37387 (unfocusZipperList!1766 zl!343)))))

(declare-fun b!6463734 () Bool)

(assert (=> b!6463734 (= e!3918903 e!3918902)))

(declare-fun c!1183137 () Bool)

(declare-fun tail!12263 (List!65335) List!65335)

(assert (=> b!6463734 (= c!1183137 (isEmpty!37387 (tail!12263 (unfocusZipperList!1766 zl!343))))))

(declare-fun b!6463735 () Bool)

(assert (=> b!6463735 (= e!3918900 e!3918905)))

(declare-fun c!1183140 () Bool)

(assert (=> b!6463735 (= c!1183140 ((_ is Cons!65211) (unfocusZipperList!1766 zl!343)))))

(declare-fun b!6463736 () Bool)

(declare-fun isUnion!1181 (Regex!16345) Bool)

(assert (=> b!6463736 (= e!3918902 (isUnion!1181 lt!2383168))))

(assert (= (and d!2027466 res!2654312) b!6463731))

(assert (= (and d!2027466 c!1183139) b!6463732))

(assert (= (and d!2027466 (not c!1183139)) b!6463735))

(assert (= (and b!6463735 c!1183140) b!6463730))

(assert (= (and b!6463735 (not c!1183140)) b!6463728))

(assert (= (and d!2027466 res!2654313) b!6463733))

(assert (= (and b!6463733 c!1183138) b!6463729))

(assert (= (and b!6463733 (not c!1183138)) b!6463734))

(assert (= (and b!6463734 c!1183137) b!6463727))

(assert (= (and b!6463734 (not c!1183137)) b!6463736))

(assert (=> b!6463727 m!7252164))

(declare-fun m!7252888 () Bool)

(assert (=> b!6463727 m!7252888))

(declare-fun m!7252890 () Bool)

(assert (=> b!6463729 m!7252890))

(declare-fun m!7252892 () Bool)

(assert (=> b!6463730 m!7252892))

(assert (=> b!6463734 m!7252164))

(declare-fun m!7252894 () Bool)

(assert (=> b!6463734 m!7252894))

(assert (=> b!6463734 m!7252894))

(declare-fun m!7252896 () Bool)

(assert (=> b!6463734 m!7252896))

(declare-fun m!7252898 () Bool)

(assert (=> b!6463731 m!7252898))

(declare-fun m!7252900 () Bool)

(assert (=> d!2027466 m!7252900))

(assert (=> d!2027466 m!7252164))

(declare-fun m!7252904 () Bool)

(assert (=> d!2027466 m!7252904))

(declare-fun m!7252906 () Bool)

(assert (=> b!6463736 m!7252906))

(assert (=> b!6463733 m!7252164))

(declare-fun m!7252910 () Bool)

(assert (=> b!6463733 m!7252910))

(assert (=> b!6462988 d!2027466))

(declare-fun bs!1636238 () Bool)

(declare-fun d!2027480 () Bool)

(assert (= bs!1636238 (and d!2027480 d!2027278)))

(declare-fun lambda!357208 () Int)

(assert (=> bs!1636238 (= lambda!357208 lambda!357129)))

(declare-fun bs!1636239 () Bool)

(assert (= bs!1636239 (and d!2027480 d!2027412)))

(assert (=> bs!1636239 (= lambda!357208 lambda!357188)))

(declare-fun bs!1636240 () Bool)

(assert (= bs!1636240 (and d!2027480 d!2027466)))

(assert (=> bs!1636240 (= lambda!357208 lambda!357205)))

(declare-fun lt!2383177 () List!65335)

(assert (=> d!2027480 (forall!15533 lt!2383177 lambda!357208)))

(declare-fun e!3918923 () List!65335)

(assert (=> d!2027480 (= lt!2383177 e!3918923)))

(declare-fun c!1183152 () Bool)

(assert (=> d!2027480 (= c!1183152 ((_ is Cons!65212) zl!343))))

(assert (=> d!2027480 (= (unfocusZipperList!1766 zl!343) lt!2383177)))

(declare-fun b!6463769 () Bool)

(assert (=> b!6463769 (= e!3918923 (Cons!65211 (generalisedConcat!1942 (exprs!6229 (h!71660 zl!343))) (unfocusZipperList!1766 (t!378958 zl!343))))))

(declare-fun b!6463770 () Bool)

(assert (=> b!6463770 (= e!3918923 Nil!65211)))

(assert (= (and d!2027480 c!1183152) b!6463769))

(assert (= (and d!2027480 (not c!1183152)) b!6463770))

(declare-fun m!7252962 () Bool)

(assert (=> d!2027480 m!7252962))

(assert (=> b!6463769 m!7252160))

(declare-fun m!7252964 () Bool)

(assert (=> b!6463769 m!7252964))

(assert (=> b!6462988 d!2027480))

(declare-fun d!2027502 () Bool)

(declare-fun c!1183155 () Bool)

(assert (=> d!2027502 (= c!1183155 (isEmpty!37386 (t!378956 s!2326)))))

(declare-fun e!3918926 () Bool)

(assert (=> d!2027502 (= (matchZipper!2357 lt!2383032 (t!378956 s!2326)) e!3918926)))

(declare-fun b!6463775 () Bool)

(declare-fun nullableZipper!2108 ((InoxSet Context!11458)) Bool)

(assert (=> b!6463775 (= e!3918926 (nullableZipper!2108 lt!2383032))))

(declare-fun b!6463776 () Bool)

(assert (=> b!6463776 (= e!3918926 (matchZipper!2357 (derivationStepZipper!2311 lt!2383032 (head!13176 (t!378956 s!2326))) (tail!12261 (t!378956 s!2326))))))

(assert (= (and d!2027502 c!1183155) b!6463775))

(assert (= (and d!2027502 (not c!1183155)) b!6463776))

(declare-fun m!7252974 () Bool)

(assert (=> d!2027502 m!7252974))

(declare-fun m!7252976 () Bool)

(assert (=> b!6463775 m!7252976))

(declare-fun m!7252978 () Bool)

(assert (=> b!6463776 m!7252978))

(assert (=> b!6463776 m!7252978))

(declare-fun m!7252980 () Bool)

(assert (=> b!6463776 m!7252980))

(declare-fun m!7252982 () Bool)

(assert (=> b!6463776 m!7252982))

(assert (=> b!6463776 m!7252980))

(assert (=> b!6463776 m!7252982))

(declare-fun m!7252984 () Bool)

(assert (=> b!6463776 m!7252984))

(assert (=> b!6462966 d!2027502))

(declare-fun d!2027508 () Bool)

(declare-fun e!3918929 () Bool)

(assert (=> d!2027508 (= (matchZipper!2357 ((_ map or) lt!2383025 lt!2383032) (t!378956 s!2326)) e!3918929)))

(declare-fun res!2654326 () Bool)

(assert (=> d!2027508 (=> res!2654326 e!3918929)))

(assert (=> d!2027508 (= res!2654326 (matchZipper!2357 lt!2383025 (t!378956 s!2326)))))

(declare-fun lt!2383185 () Unit!158711)

(declare-fun choose!47932 ((InoxSet Context!11458) (InoxSet Context!11458) List!65334) Unit!158711)

(assert (=> d!2027508 (= lt!2383185 (choose!47932 lt!2383025 lt!2383032 (t!378956 s!2326)))))

(assert (=> d!2027508 (= (lemmaZipperConcatMatchesSameAsBothZippers!1176 lt!2383025 lt!2383032 (t!378956 s!2326)) lt!2383185)))

(declare-fun b!6463779 () Bool)

(assert (=> b!6463779 (= e!3918929 (matchZipper!2357 lt!2383032 (t!378956 s!2326)))))

(assert (= (and d!2027508 (not res!2654326)) b!6463779))

(assert (=> d!2027508 m!7252122))

(assert (=> d!2027508 m!7252120))

(declare-fun m!7252986 () Bool)

(assert (=> d!2027508 m!7252986))

(assert (=> b!6463779 m!7252048))

(assert (=> b!6462986 d!2027508))

(declare-fun d!2027510 () Bool)

(declare-fun c!1183156 () Bool)

(assert (=> d!2027510 (= c!1183156 (isEmpty!37386 (t!378956 s!2326)))))

(declare-fun e!3918930 () Bool)

(assert (=> d!2027510 (= (matchZipper!2357 lt!2383025 (t!378956 s!2326)) e!3918930)))

(declare-fun b!6463780 () Bool)

(assert (=> b!6463780 (= e!3918930 (nullableZipper!2108 lt!2383025))))

(declare-fun b!6463781 () Bool)

(assert (=> b!6463781 (= e!3918930 (matchZipper!2357 (derivationStepZipper!2311 lt!2383025 (head!13176 (t!378956 s!2326))) (tail!12261 (t!378956 s!2326))))))

(assert (= (and d!2027510 c!1183156) b!6463780))

(assert (= (and d!2027510 (not c!1183156)) b!6463781))

(assert (=> d!2027510 m!7252974))

(declare-fun m!7252990 () Bool)

(assert (=> b!6463780 m!7252990))

(assert (=> b!6463781 m!7252978))

(assert (=> b!6463781 m!7252978))

(declare-fun m!7252992 () Bool)

(assert (=> b!6463781 m!7252992))

(assert (=> b!6463781 m!7252982))

(assert (=> b!6463781 m!7252992))

(assert (=> b!6463781 m!7252982))

(declare-fun m!7252994 () Bool)

(assert (=> b!6463781 m!7252994))

(assert (=> b!6462986 d!2027510))

(declare-fun d!2027514 () Bool)

(declare-fun c!1183160 () Bool)

(assert (=> d!2027514 (= c!1183160 (isEmpty!37386 (t!378956 s!2326)))))

(declare-fun e!3918938 () Bool)

(assert (=> d!2027514 (= (matchZipper!2357 ((_ map or) lt!2383025 lt!2383032) (t!378956 s!2326)) e!3918938)))

(declare-fun b!6463796 () Bool)

(assert (=> b!6463796 (= e!3918938 (nullableZipper!2108 ((_ map or) lt!2383025 lt!2383032)))))

(declare-fun b!6463797 () Bool)

(assert (=> b!6463797 (= e!3918938 (matchZipper!2357 (derivationStepZipper!2311 ((_ map or) lt!2383025 lt!2383032) (head!13176 (t!378956 s!2326))) (tail!12261 (t!378956 s!2326))))))

(assert (= (and d!2027514 c!1183160) b!6463796))

(assert (= (and d!2027514 (not c!1183160)) b!6463797))

(assert (=> d!2027514 m!7252974))

(declare-fun m!7252996 () Bool)

(assert (=> b!6463796 m!7252996))

(assert (=> b!6463797 m!7252978))

(assert (=> b!6463797 m!7252978))

(declare-fun m!7252998 () Bool)

(assert (=> b!6463797 m!7252998))

(assert (=> b!6463797 m!7252982))

(assert (=> b!6463797 m!7252998))

(assert (=> b!6463797 m!7252982))

(declare-fun m!7253000 () Bool)

(assert (=> b!6463797 m!7253000))

(assert (=> b!6462986 d!2027514))

(declare-fun bs!1636250 () Bool)

(declare-fun d!2027516 () Bool)

(assert (= bs!1636250 (and d!2027516 d!2027278)))

(declare-fun lambda!357213 () Int)

(assert (=> bs!1636250 (= lambda!357213 lambda!357129)))

(declare-fun bs!1636251 () Bool)

(assert (= bs!1636251 (and d!2027516 d!2027412)))

(assert (=> bs!1636251 (= lambda!357213 lambda!357188)))

(declare-fun bs!1636253 () Bool)

(assert (= bs!1636253 (and d!2027516 d!2027466)))

(assert (=> bs!1636253 (= lambda!357213 lambda!357205)))

(declare-fun bs!1636254 () Bool)

(assert (= bs!1636254 (and d!2027516 d!2027480)))

(assert (=> bs!1636254 (= lambda!357213 lambda!357208)))

(declare-fun b!6463862 () Bool)

(declare-fun e!3918976 () Regex!16345)

(declare-fun e!3918979 () Regex!16345)

(assert (=> b!6463862 (= e!3918976 e!3918979)))

(declare-fun c!1183180 () Bool)

(assert (=> b!6463862 (= c!1183180 ((_ is Cons!65211) (exprs!6229 (h!71660 zl!343))))))

(declare-fun b!6463863 () Bool)

(declare-fun e!3918981 () Bool)

(declare-fun e!3918980 () Bool)

(assert (=> b!6463863 (= e!3918981 e!3918980)))

(declare-fun c!1183183 () Bool)

(assert (=> b!6463863 (= c!1183183 (isEmpty!37387 (tail!12263 (exprs!6229 (h!71660 zl!343)))))))

(declare-fun b!6463864 () Bool)

(declare-fun lt!2383195 () Regex!16345)

(assert (=> b!6463864 (= e!3918980 (= lt!2383195 (head!13178 (exprs!6229 (h!71660 zl!343)))))))

(declare-fun b!6463865 () Bool)

(declare-fun e!3918977 () Bool)

(assert (=> b!6463865 (= e!3918977 (isEmpty!37387 (t!378957 (exprs!6229 (h!71660 zl!343)))))))

(declare-fun b!6463866 () Bool)

(assert (=> b!6463866 (= e!3918976 (h!71659 (exprs!6229 (h!71660 zl!343))))))

(declare-fun b!6463867 () Bool)

(assert (=> b!6463867 (= e!3918979 EmptyExpr!16345)))

(declare-fun b!6463868 () Bool)

(declare-fun isEmptyExpr!1743 (Regex!16345) Bool)

(assert (=> b!6463868 (= e!3918981 (isEmptyExpr!1743 lt!2383195))))

(declare-fun b!6463870 () Bool)

(assert (=> b!6463870 (= e!3918979 (Concat!25190 (h!71659 (exprs!6229 (h!71660 zl!343))) (generalisedConcat!1942 (t!378957 (exprs!6229 (h!71660 zl!343))))))))

(declare-fun b!6463871 () Bool)

(declare-fun e!3918978 () Bool)

(assert (=> b!6463871 (= e!3918978 e!3918981)))

(declare-fun c!1183181 () Bool)

(assert (=> b!6463871 (= c!1183181 (isEmpty!37387 (exprs!6229 (h!71660 zl!343))))))

(declare-fun b!6463869 () Bool)

(declare-fun isConcat!1266 (Regex!16345) Bool)

(assert (=> b!6463869 (= e!3918980 (isConcat!1266 lt!2383195))))

(assert (=> d!2027516 e!3918978))

(declare-fun res!2654362 () Bool)

(assert (=> d!2027516 (=> (not res!2654362) (not e!3918978))))

(assert (=> d!2027516 (= res!2654362 (validRegex!8081 lt!2383195))))

(assert (=> d!2027516 (= lt!2383195 e!3918976)))

(declare-fun c!1183182 () Bool)

(assert (=> d!2027516 (= c!1183182 e!3918977)))

(declare-fun res!2654361 () Bool)

(assert (=> d!2027516 (=> (not res!2654361) (not e!3918977))))

(assert (=> d!2027516 (= res!2654361 ((_ is Cons!65211) (exprs!6229 (h!71660 zl!343))))))

(assert (=> d!2027516 (forall!15533 (exprs!6229 (h!71660 zl!343)) lambda!357213)))

(assert (=> d!2027516 (= (generalisedConcat!1942 (exprs!6229 (h!71660 zl!343))) lt!2383195)))

(assert (= (and d!2027516 res!2654361) b!6463865))

(assert (= (and d!2027516 c!1183182) b!6463866))

(assert (= (and d!2027516 (not c!1183182)) b!6463862))

(assert (= (and b!6463862 c!1183180) b!6463870))

(assert (= (and b!6463862 (not c!1183180)) b!6463867))

(assert (= (and d!2027516 res!2654362) b!6463871))

(assert (= (and b!6463871 c!1183181) b!6463868))

(assert (= (and b!6463871 (not c!1183181)) b!6463863))

(assert (= (and b!6463863 c!1183183) b!6463864))

(assert (= (and b!6463863 (not c!1183183)) b!6463869))

(declare-fun m!7253048 () Bool)

(assert (=> d!2027516 m!7253048))

(declare-fun m!7253050 () Bool)

(assert (=> d!2027516 m!7253050))

(declare-fun m!7253052 () Bool)

(assert (=> b!6463871 m!7253052))

(declare-fun m!7253054 () Bool)

(assert (=> b!6463864 m!7253054))

(declare-fun m!7253056 () Bool)

(assert (=> b!6463869 m!7253056))

(declare-fun m!7253058 () Bool)

(assert (=> b!6463870 m!7253058))

(declare-fun m!7253060 () Bool)

(assert (=> b!6463868 m!7253060))

(declare-fun m!7253062 () Bool)

(assert (=> b!6463863 m!7253062))

(assert (=> b!6463863 m!7253062))

(declare-fun m!7253064 () Bool)

(assert (=> b!6463863 m!7253064))

(assert (=> b!6463865 m!7252188))

(assert (=> b!6462985 d!2027516))

(declare-fun b!6463872 () Bool)

(declare-fun e!3918983 () Bool)

(assert (=> b!6463872 (= e!3918983 (not (= (head!13176 (_1!36627 lt!2383036)) (c!1182927 (reg!16674 (regOne!33202 r!7292))))))))

(declare-fun b!6463873 () Bool)

(declare-fun res!2654367 () Bool)

(declare-fun e!3918987 () Bool)

(assert (=> b!6463873 (=> (not res!2654367) (not e!3918987))))

(declare-fun call!558585 () Bool)

(assert (=> b!6463873 (= res!2654367 (not call!558585))))

(declare-fun b!6463874 () Bool)

(declare-fun e!3918988 () Bool)

(assert (=> b!6463874 (= e!3918988 (nullable!6338 (reg!16674 (regOne!33202 r!7292))))))

(declare-fun b!6463875 () Bool)

(declare-fun e!3918986 () Bool)

(declare-fun e!3918985 () Bool)

(assert (=> b!6463875 (= e!3918986 e!3918985)))

(declare-fun c!1183184 () Bool)

(assert (=> b!6463875 (= c!1183184 ((_ is EmptyLang!16345) (reg!16674 (regOne!33202 r!7292))))))

(declare-fun b!6463876 () Bool)

(declare-fun res!2654364 () Bool)

(declare-fun e!3918984 () Bool)

(assert (=> b!6463876 (=> res!2654364 e!3918984)))

(assert (=> b!6463876 (= res!2654364 e!3918987)))

(declare-fun res!2654365 () Bool)

(assert (=> b!6463876 (=> (not res!2654365) (not e!3918987))))

(declare-fun lt!2383196 () Bool)

(assert (=> b!6463876 (= res!2654365 lt!2383196)))

(declare-fun b!6463877 () Bool)

(declare-fun e!3918982 () Bool)

(assert (=> b!6463877 (= e!3918982 e!3918983)))

(declare-fun res!2654366 () Bool)

(assert (=> b!6463877 (=> res!2654366 e!3918983)))

(assert (=> b!6463877 (= res!2654366 call!558585)))

(declare-fun d!2027528 () Bool)

(assert (=> d!2027528 e!3918986))

(declare-fun c!1183185 () Bool)

(assert (=> d!2027528 (= c!1183185 ((_ is EmptyExpr!16345) (reg!16674 (regOne!33202 r!7292))))))

(assert (=> d!2027528 (= lt!2383196 e!3918988)))

(declare-fun c!1183186 () Bool)

(assert (=> d!2027528 (= c!1183186 (isEmpty!37386 (_1!36627 lt!2383036)))))

(assert (=> d!2027528 (validRegex!8081 (reg!16674 (regOne!33202 r!7292)))))

(assert (=> d!2027528 (= (matchR!8528 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383036)) lt!2383196)))

(declare-fun b!6463878 () Bool)

(assert (=> b!6463878 (= e!3918984 e!3918982)))

(declare-fun res!2654369 () Bool)

(assert (=> b!6463878 (=> (not res!2654369) (not e!3918982))))

(assert (=> b!6463878 (= res!2654369 (not lt!2383196))))

(declare-fun bm!558580 () Bool)

(assert (=> bm!558580 (= call!558585 (isEmpty!37386 (_1!36627 lt!2383036)))))

(declare-fun b!6463879 () Bool)

(assert (=> b!6463879 (= e!3918985 (not lt!2383196))))

(declare-fun b!6463880 () Bool)

(assert (=> b!6463880 (= e!3918987 (= (head!13176 (_1!36627 lt!2383036)) (c!1182927 (reg!16674 (regOne!33202 r!7292)))))))

(declare-fun b!6463881 () Bool)

(assert (=> b!6463881 (= e!3918988 (matchR!8528 (derivativeStep!5047 (reg!16674 (regOne!33202 r!7292)) (head!13176 (_1!36627 lt!2383036))) (tail!12261 (_1!36627 lt!2383036))))))

(declare-fun b!6463882 () Bool)

(assert (=> b!6463882 (= e!3918986 (= lt!2383196 call!558585))))

(declare-fun b!6463883 () Bool)

(declare-fun res!2654363 () Bool)

(assert (=> b!6463883 (=> (not res!2654363) (not e!3918987))))

(assert (=> b!6463883 (= res!2654363 (isEmpty!37386 (tail!12261 (_1!36627 lt!2383036))))))

(declare-fun b!6463884 () Bool)

(declare-fun res!2654370 () Bool)

(assert (=> b!6463884 (=> res!2654370 e!3918984)))

(assert (=> b!6463884 (= res!2654370 (not ((_ is ElementMatch!16345) (reg!16674 (regOne!33202 r!7292)))))))

(assert (=> b!6463884 (= e!3918985 e!3918984)))

(declare-fun b!6463885 () Bool)

(declare-fun res!2654368 () Bool)

(assert (=> b!6463885 (=> res!2654368 e!3918983)))

(assert (=> b!6463885 (= res!2654368 (not (isEmpty!37386 (tail!12261 (_1!36627 lt!2383036)))))))

(assert (= (and d!2027528 c!1183186) b!6463874))

(assert (= (and d!2027528 (not c!1183186)) b!6463881))

(assert (= (and d!2027528 c!1183185) b!6463882))

(assert (= (and d!2027528 (not c!1183185)) b!6463875))

(assert (= (and b!6463875 c!1183184) b!6463879))

(assert (= (and b!6463875 (not c!1183184)) b!6463884))

(assert (= (and b!6463884 (not res!2654370)) b!6463876))

(assert (= (and b!6463876 res!2654365) b!6463873))

(assert (= (and b!6463873 res!2654367) b!6463883))

(assert (= (and b!6463883 res!2654363) b!6463880))

(assert (= (and b!6463876 (not res!2654364)) b!6463878))

(assert (= (and b!6463878 res!2654369) b!6463877))

(assert (= (and b!6463877 (not res!2654366)) b!6463885))

(assert (= (and b!6463885 (not res!2654368)) b!6463872))

(assert (= (or b!6463882 b!6463873 b!6463877) bm!558580))

(declare-fun m!7253066 () Bool)

(assert (=> b!6463883 m!7253066))

(assert (=> b!6463883 m!7253066))

(declare-fun m!7253068 () Bool)

(assert (=> b!6463883 m!7253068))

(declare-fun m!7253070 () Bool)

(assert (=> b!6463881 m!7253070))

(assert (=> b!6463881 m!7253070))

(declare-fun m!7253072 () Bool)

(assert (=> b!6463881 m!7253072))

(assert (=> b!6463881 m!7253066))

(assert (=> b!6463881 m!7253072))

(assert (=> b!6463881 m!7253066))

(declare-fun m!7253074 () Bool)

(assert (=> b!6463881 m!7253074))

(declare-fun m!7253076 () Bool)

(assert (=> b!6463874 m!7253076))

(declare-fun m!7253078 () Bool)

(assert (=> bm!558580 m!7253078))

(assert (=> b!6463872 m!7253070))

(assert (=> d!2027528 m!7253078))

(assert (=> d!2027528 m!7252430))

(assert (=> b!6463880 m!7253070))

(assert (=> b!6463885 m!7253066))

(assert (=> b!6463885 m!7253066))

(assert (=> b!6463885 m!7253068))

(assert (=> b!6462984 d!2027528))

(declare-fun b!6463886 () Bool)

(declare-fun e!3918989 () (InoxSet Context!11458))

(declare-fun call!558591 () (InoxSet Context!11458))

(assert (=> b!6463886 (= e!3918989 call!558591)))

(declare-fun b!6463887 () Bool)

(declare-fun e!3918992 () (InoxSet Context!11458))

(declare-fun call!558588 () (InoxSet Context!11458))

(declare-fun call!558587 () (InoxSet Context!11458))

(assert (=> b!6463887 (= e!3918992 ((_ map or) call!558588 call!558587))))

(declare-fun call!558590 () List!65335)

(declare-fun c!1183189 () Bool)

(declare-fun bm!558581 () Bool)

(declare-fun c!1183187 () Bool)

(assert (=> bm!558581 (= call!558590 ($colon$colon!2204 (exprs!6229 lt!2383004) (ite (or c!1183187 c!1183189) (regTwo!33202 (reg!16674 (regOne!33202 r!7292))) (reg!16674 (regOne!33202 r!7292)))))))

(declare-fun b!6463888 () Bool)

(declare-fun c!1183191 () Bool)

(assert (=> b!6463888 (= c!1183191 ((_ is Star!16345) (reg!16674 (regOne!33202 r!7292))))))

(declare-fun e!3918991 () (InoxSet Context!11458))

(assert (=> b!6463888 (= e!3918991 e!3918989)))

(declare-fun b!6463889 () Bool)

(declare-fun e!3918993 () Bool)

(assert (=> b!6463889 (= e!3918993 (nullable!6338 (regOne!33202 (reg!16674 (regOne!33202 r!7292)))))))

(declare-fun bm!558582 () Bool)

(declare-fun call!558589 () List!65335)

(assert (=> bm!558582 (= call!558589 call!558590)))

(declare-fun b!6463890 () Bool)

(assert (=> b!6463890 (= e!3918989 ((as const (Array Context!11458 Bool)) false))))

(declare-fun b!6463891 () Bool)

(declare-fun e!3918990 () (InoxSet Context!11458))

(assert (=> b!6463891 (= e!3918990 e!3918992)))

(declare-fun c!1183188 () Bool)

(assert (=> b!6463891 (= c!1183188 ((_ is Union!16345) (reg!16674 (regOne!33202 r!7292))))))

(declare-fun bm!558583 () Bool)

(declare-fun call!558586 () (InoxSet Context!11458))

(assert (=> bm!558583 (= call!558586 call!558588)))

(declare-fun b!6463892 () Bool)

(assert (=> b!6463892 (= e!3918991 call!558591)))

(declare-fun d!2027530 () Bool)

(declare-fun c!1183190 () Bool)

(assert (=> d!2027530 (= c!1183190 (and ((_ is ElementMatch!16345) (reg!16674 (regOne!33202 r!7292))) (= (c!1182927 (reg!16674 (regOne!33202 r!7292))) (h!71658 s!2326))))))

(assert (=> d!2027530 (= (derivationStepZipperDown!1593 (reg!16674 (regOne!33202 r!7292)) lt!2383004 (h!71658 s!2326)) e!3918990)))

(declare-fun b!6463893 () Bool)

(declare-fun e!3918994 () (InoxSet Context!11458))

(assert (=> b!6463893 (= e!3918994 e!3918991)))

(assert (=> b!6463893 (= c!1183189 ((_ is Concat!25190) (reg!16674 (regOne!33202 r!7292))))))

(declare-fun bm!558584 () Bool)

(assert (=> bm!558584 (= call!558588 (derivationStepZipperDown!1593 (ite c!1183188 (regOne!33203 (reg!16674 (regOne!33202 r!7292))) (ite c!1183187 (regTwo!33202 (reg!16674 (regOne!33202 r!7292))) (ite c!1183189 (regOne!33202 (reg!16674 (regOne!33202 r!7292))) (reg!16674 (reg!16674 (regOne!33202 r!7292)))))) (ite (or c!1183188 c!1183187) lt!2383004 (Context!11459 call!558589)) (h!71658 s!2326)))))

(declare-fun bm!558585 () Bool)

(assert (=> bm!558585 (= call!558587 (derivationStepZipperDown!1593 (ite c!1183188 (regTwo!33203 (reg!16674 (regOne!33202 r!7292))) (regOne!33202 (reg!16674 (regOne!33202 r!7292)))) (ite c!1183188 lt!2383004 (Context!11459 call!558590)) (h!71658 s!2326)))))

(declare-fun b!6463894 () Bool)

(assert (=> b!6463894 (= e!3918990 (store ((as const (Array Context!11458 Bool)) false) lt!2383004 true))))

(declare-fun bm!558586 () Bool)

(assert (=> bm!558586 (= call!558591 call!558586)))

(declare-fun b!6463895 () Bool)

(assert (=> b!6463895 (= c!1183187 e!3918993)))

(declare-fun res!2654371 () Bool)

(assert (=> b!6463895 (=> (not res!2654371) (not e!3918993))))

(assert (=> b!6463895 (= res!2654371 ((_ is Concat!25190) (reg!16674 (regOne!33202 r!7292))))))

(assert (=> b!6463895 (= e!3918992 e!3918994)))

(declare-fun b!6463896 () Bool)

(assert (=> b!6463896 (= e!3918994 ((_ map or) call!558587 call!558586))))

(assert (= (and d!2027530 c!1183190) b!6463894))

(assert (= (and d!2027530 (not c!1183190)) b!6463891))

(assert (= (and b!6463891 c!1183188) b!6463887))

(assert (= (and b!6463891 (not c!1183188)) b!6463895))

(assert (= (and b!6463895 res!2654371) b!6463889))

(assert (= (and b!6463895 c!1183187) b!6463896))

(assert (= (and b!6463895 (not c!1183187)) b!6463893))

(assert (= (and b!6463893 c!1183189) b!6463892))

(assert (= (and b!6463893 (not c!1183189)) b!6463888))

(assert (= (and b!6463888 c!1183191) b!6463886))

(assert (= (and b!6463888 (not c!1183191)) b!6463890))

(assert (= (or b!6463892 b!6463886) bm!558582))

(assert (= (or b!6463892 b!6463886) bm!558586))

(assert (= (or b!6463896 bm!558582) bm!558581))

(assert (= (or b!6463896 bm!558586) bm!558583))

(assert (= (or b!6463887 b!6463896) bm!558585))

(assert (= (or b!6463887 bm!558583) bm!558584))

(declare-fun m!7253080 () Bool)

(assert (=> bm!558585 m!7253080))

(declare-fun m!7253082 () Bool)

(assert (=> bm!558581 m!7253082))

(declare-fun m!7253084 () Bool)

(assert (=> b!6463889 m!7253084))

(declare-fun m!7253086 () Bool)

(assert (=> bm!558584 m!7253086))

(assert (=> b!6463894 m!7252126))

(assert (=> b!6462983 d!2027530))

(declare-fun d!2027532 () Bool)

(assert (=> d!2027532 (matchR!8528 (Concat!25190 lt!2383009 (regTwo!33202 r!7292)) (++!14413 (_2!36627 lt!2383036) (_2!36627 lt!2383030)))))

(declare-fun lt!2383200 () Unit!158711)

(declare-fun choose!47933 (Regex!16345 Regex!16345 List!65334 List!65334) Unit!158711)

(assert (=> d!2027532 (= lt!2383200 (choose!47933 lt!2383009 (regTwo!33202 r!7292) (_2!36627 lt!2383036) (_2!36627 lt!2383030)))))

(declare-fun e!3918997 () Bool)

(assert (=> d!2027532 e!3918997))

(declare-fun res!2654374 () Bool)

(assert (=> d!2027532 (=> (not res!2654374) (not e!3918997))))

(assert (=> d!2027532 (= res!2654374 (validRegex!8081 lt!2383009))))

(assert (=> d!2027532 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!308 lt!2383009 (regTwo!33202 r!7292) (_2!36627 lt!2383036) (_2!36627 lt!2383030)) lt!2383200)))

(declare-fun b!6463899 () Bool)

(assert (=> b!6463899 (= e!3918997 (validRegex!8081 (regTwo!33202 r!7292)))))

(assert (= (and d!2027532 res!2654374) b!6463899))

(assert (=> d!2027532 m!7252016))

(assert (=> d!2027532 m!7252016))

(declare-fun m!7253098 () Bool)

(assert (=> d!2027532 m!7253098))

(declare-fun m!7253100 () Bool)

(assert (=> d!2027532 m!7253100))

(assert (=> d!2027532 m!7252398))

(assert (=> b!6463899 m!7252818))

(assert (=> b!6462993 d!2027532))

(declare-fun d!2027538 () Bool)

(assert (=> d!2027538 (matchR!8528 (Star!16345 (reg!16674 (regOne!33202 r!7292))) (++!14413 (_1!36627 lt!2383036) (_2!36627 lt!2383036)))))

(declare-fun lt!2383203 () Unit!158711)

(declare-fun choose!47934 (Regex!16345 List!65334 List!65334) Unit!158711)

(assert (=> d!2027538 (= lt!2383203 (choose!47934 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383036) (_2!36627 lt!2383036)))))

(assert (=> d!2027538 (validRegex!8081 (Star!16345 (reg!16674 (regOne!33202 r!7292))))))

(assert (=> d!2027538 (= (lemmaStarApp!122 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383036) (_2!36627 lt!2383036)) lt!2383203)))

(declare-fun bs!1636288 () Bool)

(assert (= bs!1636288 d!2027538))

(assert (=> bs!1636288 m!7252020))

(assert (=> bs!1636288 m!7252020))

(declare-fun m!7253102 () Bool)

(assert (=> bs!1636288 m!7253102))

(declare-fun m!7253104 () Bool)

(assert (=> bs!1636288 m!7253104))

(declare-fun m!7253108 () Bool)

(assert (=> bs!1636288 m!7253108))

(assert (=> b!6462993 d!2027538))

(declare-fun d!2027540 () Bool)

(declare-fun c!1183192 () Bool)

(assert (=> d!2027540 (= c!1183192 (isEmpty!37386 (_1!36627 lt!2383036)))))

(declare-fun e!3919017 () Bool)

(assert (=> d!2027540 (= (matchZipper!2357 lt!2382998 (_1!36627 lt!2383036)) e!3919017)))

(declare-fun b!6463948 () Bool)

(assert (=> b!6463948 (= e!3919017 (nullableZipper!2108 lt!2382998))))

(declare-fun b!6463949 () Bool)

(assert (=> b!6463949 (= e!3919017 (matchZipper!2357 (derivationStepZipper!2311 lt!2382998 (head!13176 (_1!36627 lt!2383036))) (tail!12261 (_1!36627 lt!2383036))))))

(assert (= (and d!2027540 c!1183192) b!6463948))

(assert (= (and d!2027540 (not c!1183192)) b!6463949))

(assert (=> d!2027540 m!7253078))

(declare-fun m!7253110 () Bool)

(assert (=> b!6463948 m!7253110))

(assert (=> b!6463949 m!7253070))

(assert (=> b!6463949 m!7253070))

(declare-fun m!7253112 () Bool)

(assert (=> b!6463949 m!7253112))

(assert (=> b!6463949 m!7253066))

(assert (=> b!6463949 m!7253112))

(assert (=> b!6463949 m!7253066))

(declare-fun m!7253114 () Bool)

(assert (=> b!6463949 m!7253114))

(assert (=> b!6462993 d!2027540))

(declare-fun b!6463954 () Bool)

(declare-fun e!3919021 () Bool)

(assert (=> b!6463954 (= e!3919021 (not (= (head!13176 lt!2383029) (c!1182927 lt!2383009))))))

(declare-fun b!6463955 () Bool)

(declare-fun res!2654379 () Bool)

(declare-fun e!3919025 () Bool)

(assert (=> b!6463955 (=> (not res!2654379) (not e!3919025))))

(declare-fun call!558592 () Bool)

(assert (=> b!6463955 (= res!2654379 (not call!558592))))

(declare-fun b!6463956 () Bool)

(declare-fun e!3919026 () Bool)

(assert (=> b!6463956 (= e!3919026 (nullable!6338 lt!2383009))))

(declare-fun b!6463957 () Bool)

(declare-fun e!3919024 () Bool)

(declare-fun e!3919023 () Bool)

(assert (=> b!6463957 (= e!3919024 e!3919023)))

(declare-fun c!1183193 () Bool)

(assert (=> b!6463957 (= c!1183193 ((_ is EmptyLang!16345) lt!2383009))))

(declare-fun b!6463958 () Bool)

(declare-fun res!2654376 () Bool)

(declare-fun e!3919022 () Bool)

(assert (=> b!6463958 (=> res!2654376 e!3919022)))

(assert (=> b!6463958 (= res!2654376 e!3919025)))

(declare-fun res!2654377 () Bool)

(assert (=> b!6463958 (=> (not res!2654377) (not e!3919025))))

(declare-fun lt!2383204 () Bool)

(assert (=> b!6463958 (= res!2654377 lt!2383204)))

(declare-fun b!6463959 () Bool)

(declare-fun e!3919020 () Bool)

(assert (=> b!6463959 (= e!3919020 e!3919021)))

(declare-fun res!2654378 () Bool)

(assert (=> b!6463959 (=> res!2654378 e!3919021)))

(assert (=> b!6463959 (= res!2654378 call!558592)))

(declare-fun d!2027542 () Bool)

(assert (=> d!2027542 e!3919024))

(declare-fun c!1183194 () Bool)

(assert (=> d!2027542 (= c!1183194 ((_ is EmptyExpr!16345) lt!2383009))))

(assert (=> d!2027542 (= lt!2383204 e!3919026)))

(declare-fun c!1183195 () Bool)

(assert (=> d!2027542 (= c!1183195 (isEmpty!37386 lt!2383029))))

(assert (=> d!2027542 (validRegex!8081 lt!2383009)))

(assert (=> d!2027542 (= (matchR!8528 lt!2383009 lt!2383029) lt!2383204)))

(declare-fun b!6463960 () Bool)

(assert (=> b!6463960 (= e!3919022 e!3919020)))

(declare-fun res!2654381 () Bool)

(assert (=> b!6463960 (=> (not res!2654381) (not e!3919020))))

(assert (=> b!6463960 (= res!2654381 (not lt!2383204))))

(declare-fun bm!558587 () Bool)

(assert (=> bm!558587 (= call!558592 (isEmpty!37386 lt!2383029))))

(declare-fun b!6463961 () Bool)

(assert (=> b!6463961 (= e!3919023 (not lt!2383204))))

(declare-fun b!6463962 () Bool)

(assert (=> b!6463962 (= e!3919025 (= (head!13176 lt!2383029) (c!1182927 lt!2383009)))))

(declare-fun b!6463963 () Bool)

(assert (=> b!6463963 (= e!3919026 (matchR!8528 (derivativeStep!5047 lt!2383009 (head!13176 lt!2383029)) (tail!12261 lt!2383029)))))

(declare-fun b!6463964 () Bool)

(assert (=> b!6463964 (= e!3919024 (= lt!2383204 call!558592))))

(declare-fun b!6463965 () Bool)

(declare-fun res!2654375 () Bool)

(assert (=> b!6463965 (=> (not res!2654375) (not e!3919025))))

(assert (=> b!6463965 (= res!2654375 (isEmpty!37386 (tail!12261 lt!2383029)))))

(declare-fun b!6463966 () Bool)

(declare-fun res!2654382 () Bool)

(assert (=> b!6463966 (=> res!2654382 e!3919022)))

(assert (=> b!6463966 (= res!2654382 (not ((_ is ElementMatch!16345) lt!2383009)))))

(assert (=> b!6463966 (= e!3919023 e!3919022)))

(declare-fun b!6463967 () Bool)

(declare-fun res!2654380 () Bool)

(assert (=> b!6463967 (=> res!2654380 e!3919021)))

(assert (=> b!6463967 (= res!2654380 (not (isEmpty!37386 (tail!12261 lt!2383029))))))

(assert (= (and d!2027542 c!1183195) b!6463956))

(assert (= (and d!2027542 (not c!1183195)) b!6463963))

(assert (= (and d!2027542 c!1183194) b!6463964))

(assert (= (and d!2027542 (not c!1183194)) b!6463957))

(assert (= (and b!6463957 c!1183193) b!6463961))

(assert (= (and b!6463957 (not c!1183193)) b!6463966))

(assert (= (and b!6463966 (not res!2654382)) b!6463958))

(assert (= (and b!6463958 res!2654377) b!6463955))

(assert (= (and b!6463955 res!2654379) b!6463965))

(assert (= (and b!6463965 res!2654375) b!6463962))

(assert (= (and b!6463958 (not res!2654376)) b!6463960))

(assert (= (and b!6463960 res!2654381) b!6463959))

(assert (= (and b!6463959 (not res!2654378)) b!6463967))

(assert (= (and b!6463967 (not res!2654380)) b!6463954))

(assert (= (or b!6463964 b!6463955 b!6463959) bm!558587))

(declare-fun m!7253118 () Bool)

(assert (=> b!6463965 m!7253118))

(assert (=> b!6463965 m!7253118))

(declare-fun m!7253120 () Bool)

(assert (=> b!6463965 m!7253120))

(declare-fun m!7253122 () Bool)

(assert (=> b!6463963 m!7253122))

(assert (=> b!6463963 m!7253122))

(declare-fun m!7253124 () Bool)

(assert (=> b!6463963 m!7253124))

(assert (=> b!6463963 m!7253118))

(assert (=> b!6463963 m!7253124))

(assert (=> b!6463963 m!7253118))

(declare-fun m!7253126 () Bool)

(assert (=> b!6463963 m!7253126))

(declare-fun m!7253128 () Bool)

(assert (=> b!6463956 m!7253128))

(declare-fun m!7253130 () Bool)

(assert (=> bm!558587 m!7253130))

(assert (=> b!6463954 m!7253122))

(assert (=> d!2027542 m!7253130))

(assert (=> d!2027542 m!7252398))

(assert (=> b!6463962 m!7253122))

(assert (=> b!6463967 m!7253118))

(assert (=> b!6463967 m!7253118))

(assert (=> b!6463967 m!7253120))

(assert (=> b!6462993 d!2027542))

(declare-fun b!6463970 () Bool)

(declare-fun e!3919030 () Bool)

(assert (=> b!6463970 (= e!3919030 (not (= (head!13176 lt!2383002) (c!1182927 lt!2383041))))))

(declare-fun b!6463971 () Bool)

(declare-fun res!2654387 () Bool)

(declare-fun e!3919034 () Bool)

(assert (=> b!6463971 (=> (not res!2654387) (not e!3919034))))

(declare-fun call!558593 () Bool)

(assert (=> b!6463971 (= res!2654387 (not call!558593))))

(declare-fun b!6463972 () Bool)

(declare-fun e!3919035 () Bool)

(assert (=> b!6463972 (= e!3919035 (nullable!6338 lt!2383041))))

(declare-fun b!6463973 () Bool)

(declare-fun e!3919033 () Bool)

(declare-fun e!3919032 () Bool)

(assert (=> b!6463973 (= e!3919033 e!3919032)))

(declare-fun c!1183196 () Bool)

(assert (=> b!6463973 (= c!1183196 ((_ is EmptyLang!16345) lt!2383041))))

(declare-fun b!6463974 () Bool)

(declare-fun res!2654384 () Bool)

(declare-fun e!3919031 () Bool)

(assert (=> b!6463974 (=> res!2654384 e!3919031)))

(assert (=> b!6463974 (= res!2654384 e!3919034)))

(declare-fun res!2654385 () Bool)

(assert (=> b!6463974 (=> (not res!2654385) (not e!3919034))))

(declare-fun lt!2383205 () Bool)

(assert (=> b!6463974 (= res!2654385 lt!2383205)))

(declare-fun b!6463975 () Bool)

(declare-fun e!3919029 () Bool)

(assert (=> b!6463975 (= e!3919029 e!3919030)))

(declare-fun res!2654386 () Bool)

(assert (=> b!6463975 (=> res!2654386 e!3919030)))

(assert (=> b!6463975 (= res!2654386 call!558593)))

(declare-fun d!2027544 () Bool)

(assert (=> d!2027544 e!3919033))

(declare-fun c!1183197 () Bool)

(assert (=> d!2027544 (= c!1183197 ((_ is EmptyExpr!16345) lt!2383041))))

(assert (=> d!2027544 (= lt!2383205 e!3919035)))

(declare-fun c!1183198 () Bool)

(assert (=> d!2027544 (= c!1183198 (isEmpty!37386 lt!2383002))))

(assert (=> d!2027544 (validRegex!8081 lt!2383041)))

(assert (=> d!2027544 (= (matchR!8528 lt!2383041 lt!2383002) lt!2383205)))

(declare-fun b!6463976 () Bool)

(assert (=> b!6463976 (= e!3919031 e!3919029)))

(declare-fun res!2654389 () Bool)

(assert (=> b!6463976 (=> (not res!2654389) (not e!3919029))))

(assert (=> b!6463976 (= res!2654389 (not lt!2383205))))

(declare-fun bm!558588 () Bool)

(assert (=> bm!558588 (= call!558593 (isEmpty!37386 lt!2383002))))

(declare-fun b!6463977 () Bool)

(assert (=> b!6463977 (= e!3919032 (not lt!2383205))))

(declare-fun b!6463978 () Bool)

(assert (=> b!6463978 (= e!3919034 (= (head!13176 lt!2383002) (c!1182927 lt!2383041)))))

(declare-fun b!6463979 () Bool)

(assert (=> b!6463979 (= e!3919035 (matchR!8528 (derivativeStep!5047 lt!2383041 (head!13176 lt!2383002)) (tail!12261 lt!2383002)))))

(declare-fun b!6463980 () Bool)

(assert (=> b!6463980 (= e!3919033 (= lt!2383205 call!558593))))

(declare-fun b!6463981 () Bool)

(declare-fun res!2654383 () Bool)

(assert (=> b!6463981 (=> (not res!2654383) (not e!3919034))))

(assert (=> b!6463981 (= res!2654383 (isEmpty!37386 (tail!12261 lt!2383002)))))

(declare-fun b!6463982 () Bool)

(declare-fun res!2654390 () Bool)

(assert (=> b!6463982 (=> res!2654390 e!3919031)))

(assert (=> b!6463982 (= res!2654390 (not ((_ is ElementMatch!16345) lt!2383041)))))

(assert (=> b!6463982 (= e!3919032 e!3919031)))

(declare-fun b!6463983 () Bool)

(declare-fun res!2654388 () Bool)

(assert (=> b!6463983 (=> res!2654388 e!3919030)))

(assert (=> b!6463983 (= res!2654388 (not (isEmpty!37386 (tail!12261 lt!2383002))))))

(assert (= (and d!2027544 c!1183198) b!6463972))

(assert (= (and d!2027544 (not c!1183198)) b!6463979))

(assert (= (and d!2027544 c!1183197) b!6463980))

(assert (= (and d!2027544 (not c!1183197)) b!6463973))

(assert (= (and b!6463973 c!1183196) b!6463977))

(assert (= (and b!6463973 (not c!1183196)) b!6463982))

(assert (= (and b!6463982 (not res!2654390)) b!6463974))

(assert (= (and b!6463974 res!2654385) b!6463971))

(assert (= (and b!6463971 res!2654387) b!6463981))

(assert (= (and b!6463981 res!2654383) b!6463978))

(assert (= (and b!6463974 (not res!2654384)) b!6463976))

(assert (= (and b!6463976 res!2654389) b!6463975))

(assert (= (and b!6463975 (not res!2654386)) b!6463983))

(assert (= (and b!6463983 (not res!2654388)) b!6463970))

(assert (= (or b!6463980 b!6463971 b!6463975) bm!558588))

(declare-fun m!7253132 () Bool)

(assert (=> b!6463981 m!7253132))

(assert (=> b!6463981 m!7253132))

(declare-fun m!7253134 () Bool)

(assert (=> b!6463981 m!7253134))

(declare-fun m!7253136 () Bool)

(assert (=> b!6463979 m!7253136))

(assert (=> b!6463979 m!7253136))

(declare-fun m!7253138 () Bool)

(assert (=> b!6463979 m!7253138))

(assert (=> b!6463979 m!7253132))

(assert (=> b!6463979 m!7253138))

(assert (=> b!6463979 m!7253132))

(declare-fun m!7253140 () Bool)

(assert (=> b!6463979 m!7253140))

(declare-fun m!7253142 () Bool)

(assert (=> b!6463972 m!7253142))

(declare-fun m!7253144 () Bool)

(assert (=> bm!558588 m!7253144))

(assert (=> b!6463970 m!7253136))

(assert (=> d!2027544 m!7253144))

(declare-fun m!7253146 () Bool)

(assert (=> d!2027544 m!7253146))

(assert (=> b!6463978 m!7253136))

(assert (=> b!6463983 m!7253132))

(assert (=> b!6463983 m!7253132))

(assert (=> b!6463983 m!7253134))

(assert (=> b!6462993 d!2027544))

(declare-fun bs!1636293 () Bool)

(declare-fun d!2027554 () Bool)

(assert (= bs!1636293 (and d!2027554 d!2027412)))

(declare-fun lambda!357216 () Int)

(assert (=> bs!1636293 (= lambda!357216 lambda!357188)))

(declare-fun bs!1636294 () Bool)

(assert (= bs!1636294 (and d!2027554 d!2027466)))

(assert (=> bs!1636294 (= lambda!357216 lambda!357205)))

(declare-fun bs!1636295 () Bool)

(assert (= bs!1636295 (and d!2027554 d!2027278)))

(assert (=> bs!1636295 (= lambda!357216 lambda!357129)))

(declare-fun bs!1636296 () Bool)

(assert (= bs!1636296 (and d!2027554 d!2027480)))

(assert (=> bs!1636296 (= lambda!357216 lambda!357208)))

(declare-fun bs!1636297 () Bool)

(assert (= bs!1636297 (and d!2027554 d!2027516)))

(assert (=> bs!1636297 (= lambda!357216 lambda!357213)))

(assert (=> d!2027554 (= (inv!84109 lt!2383004) (forall!15533 (exprs!6229 lt!2383004) lambda!357216))))

(declare-fun bs!1636298 () Bool)

(assert (= bs!1636298 d!2027554))

(declare-fun m!7253148 () Bool)

(assert (=> bs!1636298 m!7253148))

(assert (=> b!6462993 d!2027554))

(declare-fun d!2027556 () Bool)

(assert (=> d!2027556 (= (matchR!8528 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383036)) (matchZipper!2357 lt!2382998 (_1!36627 lt!2383036)))))

(declare-fun lt!2383208 () Unit!158711)

(declare-fun choose!47935 ((InoxSet Context!11458) List!65336 Regex!16345 List!65334) Unit!158711)

(assert (=> d!2027556 (= lt!2383208 (choose!47935 lt!2382998 lt!2383010 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383036)))))

(assert (=> d!2027556 (validRegex!8081 (reg!16674 (regOne!33202 r!7292)))))

(assert (=> d!2027556 (= (theoremZipperRegexEquiv!811 lt!2382998 lt!2383010 (reg!16674 (regOne!33202 r!7292)) (_1!36627 lt!2383036)) lt!2383208)))

(declare-fun bs!1636299 () Bool)

(assert (= bs!1636299 d!2027556))

(assert (=> bs!1636299 m!7252050))

(assert (=> bs!1636299 m!7252174))

(declare-fun m!7253150 () Bool)

(assert (=> bs!1636299 m!7253150))

(assert (=> bs!1636299 m!7252430))

(assert (=> b!6462993 d!2027556))

(declare-fun b!6463984 () Bool)

(declare-fun e!3919037 () List!65334)

(assert (=> b!6463984 (= e!3919037 (_2!36627 lt!2383030))))

(declare-fun b!6463986 () Bool)

(declare-fun res!2654392 () Bool)

(declare-fun e!3919036 () Bool)

(assert (=> b!6463986 (=> (not res!2654392) (not e!3919036))))

(declare-fun lt!2383209 () List!65334)

(assert (=> b!6463986 (= res!2654392 (= (size!40401 lt!2383209) (+ (size!40401 (_1!36627 lt!2383030)) (size!40401 (_2!36627 lt!2383030)))))))

(declare-fun d!2027558 () Bool)

(assert (=> d!2027558 e!3919036))

(declare-fun res!2654391 () Bool)

(assert (=> d!2027558 (=> (not res!2654391) (not e!3919036))))

(assert (=> d!2027558 (= res!2654391 (= (content!12398 lt!2383209) ((_ map or) (content!12398 (_1!36627 lt!2383030)) (content!12398 (_2!36627 lt!2383030)))))))

(assert (=> d!2027558 (= lt!2383209 e!3919037)))

(declare-fun c!1183199 () Bool)

(assert (=> d!2027558 (= c!1183199 ((_ is Nil!65210) (_1!36627 lt!2383030)))))

(assert (=> d!2027558 (= (++!14413 (_1!36627 lt!2383030) (_2!36627 lt!2383030)) lt!2383209)))

(declare-fun b!6463985 () Bool)

(assert (=> b!6463985 (= e!3919037 (Cons!65210 (h!71658 (_1!36627 lt!2383030)) (++!14413 (t!378956 (_1!36627 lt!2383030)) (_2!36627 lt!2383030))))))

(declare-fun b!6463987 () Bool)

(assert (=> b!6463987 (= e!3919036 (or (not (= (_2!36627 lt!2383030) Nil!65210)) (= lt!2383209 (_1!36627 lt!2383030))))))

(assert (= (and d!2027558 c!1183199) b!6463984))

(assert (= (and d!2027558 (not c!1183199)) b!6463985))

(assert (= (and d!2027558 res!2654391) b!6463986))

(assert (= (and b!6463986 res!2654392) b!6463987))

(declare-fun m!7253152 () Bool)

(assert (=> b!6463986 m!7253152))

(declare-fun m!7253154 () Bool)

(assert (=> b!6463986 m!7253154))

(assert (=> b!6463986 m!7252250))

(declare-fun m!7253156 () Bool)

(assert (=> d!2027558 m!7253156))

(declare-fun m!7253158 () Bool)

(assert (=> d!2027558 m!7253158))

(assert (=> d!2027558 m!7252256))

(declare-fun m!7253160 () Bool)

(assert (=> b!6463985 m!7253160))

(assert (=> b!6462972 d!2027558))

(declare-fun d!2027560 () Bool)

(assert (=> d!2027560 (= (Exists!3415 lambda!357123) (choose!47924 lambda!357123))))

(declare-fun bs!1636300 () Bool)

(assert (= bs!1636300 d!2027560))

(declare-fun m!7253162 () Bool)

(assert (=> bs!1636300 m!7253162))

(assert (=> b!6462972 d!2027560))

(declare-fun b!6463989 () Bool)

(declare-fun res!2654395 () Bool)

(declare-fun e!3919039 () Bool)

(assert (=> b!6463989 (=> (not res!2654395) (not e!3919039))))

(declare-fun lt!2383211 () Option!16236)

(assert (=> b!6463989 (= res!2654395 (matchR!8528 (regTwo!33202 r!7292) (_2!36627 (get!22601 lt!2383211))))))

(declare-fun b!6463990 () Bool)

(declare-fun e!3919042 () Bool)

(assert (=> b!6463990 (= e!3919042 (not (isDefined!12939 lt!2383211)))))

(declare-fun b!6463991 () Bool)

(declare-fun e!3919041 () Option!16236)

(declare-fun e!3919038 () Option!16236)

(assert (=> b!6463991 (= e!3919041 e!3919038)))

(declare-fun c!1183201 () Bool)

(assert (=> b!6463991 (= c!1183201 ((_ is Nil!65210) s!2326))))

(declare-fun b!6463992 () Bool)

(assert (=> b!6463992 (= e!3919041 (Some!16235 (tuple2!66649 Nil!65210 s!2326)))))

(declare-fun b!6463993 () Bool)

(declare-fun lt!2383212 () Unit!158711)

(declare-fun lt!2383210 () Unit!158711)

(assert (=> b!6463993 (= lt!2383212 lt!2383210)))

(assert (=> b!6463993 (= (++!14413 (++!14413 Nil!65210 (Cons!65210 (h!71658 s!2326) Nil!65210)) (t!378956 s!2326)) s!2326)))

(assert (=> b!6463993 (= lt!2383210 (lemmaMoveElementToOtherListKeepsConcatEq!2506 Nil!65210 (h!71658 s!2326) (t!378956 s!2326) s!2326))))

(assert (=> b!6463993 (= e!3919038 (findConcatSeparation!2650 lt!2383009 (regTwo!33202 r!7292) (++!14413 Nil!65210 (Cons!65210 (h!71658 s!2326) Nil!65210)) (t!378956 s!2326) s!2326))))

(declare-fun b!6463994 () Bool)

(declare-fun res!2654396 () Bool)

(assert (=> b!6463994 (=> (not res!2654396) (not e!3919039))))

(assert (=> b!6463994 (= res!2654396 (matchR!8528 lt!2383009 (_1!36627 (get!22601 lt!2383211))))))

(declare-fun d!2027562 () Bool)

(assert (=> d!2027562 e!3919042))

(declare-fun res!2654397 () Bool)

(assert (=> d!2027562 (=> res!2654397 e!3919042)))

(assert (=> d!2027562 (= res!2654397 e!3919039)))

(declare-fun res!2654394 () Bool)

(assert (=> d!2027562 (=> (not res!2654394) (not e!3919039))))

(assert (=> d!2027562 (= res!2654394 (isDefined!12939 lt!2383211))))

(assert (=> d!2027562 (= lt!2383211 e!3919041)))

(declare-fun c!1183200 () Bool)

(declare-fun e!3919040 () Bool)

(assert (=> d!2027562 (= c!1183200 e!3919040)))

(declare-fun res!2654393 () Bool)

(assert (=> d!2027562 (=> (not res!2654393) (not e!3919040))))

(assert (=> d!2027562 (= res!2654393 (matchR!8528 lt!2383009 Nil!65210))))

(assert (=> d!2027562 (validRegex!8081 lt!2383009)))

(assert (=> d!2027562 (= (findConcatSeparation!2650 lt!2383009 (regTwo!33202 r!7292) Nil!65210 s!2326 s!2326) lt!2383211)))

(declare-fun b!6463988 () Bool)

(assert (=> b!6463988 (= e!3919040 (matchR!8528 (regTwo!33202 r!7292) s!2326))))

(declare-fun b!6463995 () Bool)

(assert (=> b!6463995 (= e!3919039 (= (++!14413 (_1!36627 (get!22601 lt!2383211)) (_2!36627 (get!22601 lt!2383211))) s!2326))))

(declare-fun b!6463996 () Bool)

(assert (=> b!6463996 (= e!3919038 None!16235)))

(assert (= (and d!2027562 res!2654393) b!6463988))

(assert (= (and d!2027562 c!1183200) b!6463992))

(assert (= (and d!2027562 (not c!1183200)) b!6463991))

(assert (= (and b!6463991 c!1183201) b!6463996))

(assert (= (and b!6463991 (not c!1183201)) b!6463993))

(assert (= (and d!2027562 res!2654394) b!6463994))

(assert (= (and b!6463994 res!2654396) b!6463989))

(assert (= (and b!6463989 res!2654395) b!6463995))

(assert (= (and d!2027562 (not res!2654397)) b!6463990))

(assert (=> b!6463988 m!7252718))

(declare-fun m!7253164 () Bool)

(assert (=> d!2027562 m!7253164))

(declare-fun m!7253166 () Bool)

(assert (=> d!2027562 m!7253166))

(assert (=> d!2027562 m!7252398))

(assert (=> b!6463993 m!7252726))

(assert (=> b!6463993 m!7252726))

(assert (=> b!6463993 m!7252728))

(assert (=> b!6463993 m!7252730))

(assert (=> b!6463993 m!7252726))

(declare-fun m!7253168 () Bool)

(assert (=> b!6463993 m!7253168))

(declare-fun m!7253170 () Bool)

(assert (=> b!6463989 m!7253170))

(declare-fun m!7253172 () Bool)

(assert (=> b!6463989 m!7253172))

(assert (=> b!6463994 m!7253170))

(declare-fun m!7253174 () Bool)

(assert (=> b!6463994 m!7253174))

(assert (=> b!6463990 m!7253164))

(assert (=> b!6463995 m!7253170))

(declare-fun m!7253176 () Bool)

(assert (=> b!6463995 m!7253176))

(assert (=> b!6462972 d!2027562))

(declare-fun bs!1636301 () Bool)

(declare-fun d!2027564 () Bool)

(assert (= bs!1636301 (and d!2027564 b!6462961)))

(declare-fun lambda!357217 () Int)

(assert (=> bs!1636301 (not (= lambda!357217 lambda!357125))))

(declare-fun bs!1636302 () Bool)

(assert (= bs!1636302 (and d!2027564 d!2027434)))

(assert (=> bs!1636302 (= (= lt!2383009 (regOne!33202 r!7292)) (= lambda!357217 lambda!357191))))

(declare-fun bs!1636303 () Bool)

(assert (= bs!1636303 (and d!2027564 d!2027370)))

(assert (=> bs!1636303 (= (and (= s!2326 (_1!36627 lt!2383030)) (= lt!2383009 (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357217 lambda!357182))))

(declare-fun bs!1636304 () Bool)

(assert (= bs!1636304 (and d!2027564 d!2027334)))

(assert (=> bs!1636304 (= (and (= s!2326 (_1!36627 lt!2383030)) (= lt!2383009 (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) (Star!16345 (reg!16674 (regOne!33202 r!7292))))) (= lambda!357217 lambda!357167))))

(declare-fun bs!1636305 () Bool)

(assert (= bs!1636305 (and d!2027564 d!2027324)))

(assert (=> bs!1636305 (not (= lambda!357217 lambda!357156))))

(declare-fun bs!1636306 () Bool)

(assert (= bs!1636306 (and d!2027564 b!6463664)))

(assert (=> bs!1636306 (not (= lambda!357217 lambda!357197))))

(declare-fun bs!1636307 () Bool)

(assert (= bs!1636307 (and d!2027564 b!6462972)))

(assert (=> bs!1636307 (= lambda!357217 lambda!357122)))

(assert (=> bs!1636301 (= (and (= s!2326 (_1!36627 lt!2383030)) (= lt!2383009 (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357217 lambda!357124))))

(declare-fun bs!1636308 () Bool)

(assert (= bs!1636308 (and d!2027564 b!6463237)))

(assert (=> bs!1636308 (not (= lambda!357217 lambda!357148))))

(declare-fun bs!1636309 () Bool)

(assert (= bs!1636309 (and d!2027564 b!6462980)))

(assert (=> bs!1636309 (not (= lambda!357217 lambda!357120))))

(declare-fun bs!1636310 () Bool)

(assert (= bs!1636310 (and d!2027564 b!6463367)))

(assert (=> bs!1636310 (not (= lambda!357217 lambda!357169))))

(declare-fun bs!1636311 () Bool)

(assert (= bs!1636311 (and d!2027564 b!6463232)))

(assert (=> bs!1636311 (not (= lambda!357217 lambda!357147))))

(assert (=> bs!1636305 (= (and (= s!2326 (_1!36627 lt!2383030)) (= lt!2383009 (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357217 lambda!357155))))

(assert (=> bs!1636302 (not (= lambda!357217 lambda!357192))))

(declare-fun bs!1636312 () Bool)

(assert (= bs!1636312 (and d!2027564 d!2027424)))

(assert (=> bs!1636312 (= (= lt!2383009 (regOne!33202 r!7292)) (= lambda!357217 lambda!357190))))

(assert (=> bs!1636309 (= (= lt!2383009 (regOne!33202 r!7292)) (= lambda!357217 lambda!357119))))

(assert (=> bs!1636301 (not (= lambda!357217 lambda!357126))))

(declare-fun bs!1636313 () Bool)

(assert (= bs!1636313 (and d!2027564 b!6463659)))

(assert (=> bs!1636313 (not (= lambda!357217 lambda!357196))))

(assert (=> bs!1636304 (not (= lambda!357217 lambda!357168))))

(declare-fun bs!1636314 () Bool)

(assert (= bs!1636314 (and d!2027564 b!6463372)))

(assert (=> bs!1636314 (not (= lambda!357217 lambda!357170))))

(assert (=> bs!1636307 (not (= lambda!357217 lambda!357123))))

(assert (=> d!2027564 true))

(assert (=> d!2027564 true))

(assert (=> d!2027564 true))

(assert (=> d!2027564 (= (isDefined!12939 (findConcatSeparation!2650 lt!2383009 (regTwo!33202 r!7292) Nil!65210 s!2326 s!2326)) (Exists!3415 lambda!357217))))

(declare-fun lt!2383213 () Unit!158711)

(assert (=> d!2027564 (= lt!2383213 (choose!47930 lt!2383009 (regTwo!33202 r!7292) s!2326))))

(assert (=> d!2027564 (validRegex!8081 lt!2383009)))

(assert (=> d!2027564 (= (lemmaFindConcatSeparationEquivalentToExists!2414 lt!2383009 (regTwo!33202 r!7292) s!2326) lt!2383213)))

(declare-fun bs!1636315 () Bool)

(assert (= bs!1636315 d!2027564))

(assert (=> bs!1636315 m!7252398))

(assert (=> bs!1636315 m!7252056))

(assert (=> bs!1636315 m!7252056))

(declare-fun m!7253178 () Bool)

(assert (=> bs!1636315 m!7253178))

(declare-fun m!7253180 () Bool)

(assert (=> bs!1636315 m!7253180))

(declare-fun m!7253182 () Bool)

(assert (=> bs!1636315 m!7253182))

(assert (=> b!6462972 d!2027564))

(declare-fun bs!1636316 () Bool)

(declare-fun d!2027566 () Bool)

(assert (= bs!1636316 (and d!2027566 b!6462961)))

(declare-fun lambda!357218 () Int)

(assert (=> bs!1636316 (not (= lambda!357218 lambda!357125))))

(declare-fun bs!1636317 () Bool)

(assert (= bs!1636317 (and d!2027566 d!2027434)))

(assert (=> bs!1636317 (= (= lt!2383009 (regOne!33202 r!7292)) (= lambda!357218 lambda!357191))))

(declare-fun bs!1636318 () Bool)

(assert (= bs!1636318 (and d!2027566 d!2027370)))

(assert (=> bs!1636318 (= (and (= s!2326 (_1!36627 lt!2383030)) (= lt!2383009 (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357218 lambda!357182))))

(declare-fun bs!1636319 () Bool)

(assert (= bs!1636319 (and d!2027566 d!2027334)))

(assert (=> bs!1636319 (= (and (= s!2326 (_1!36627 lt!2383030)) (= lt!2383009 (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) (Star!16345 (reg!16674 (regOne!33202 r!7292))))) (= lambda!357218 lambda!357167))))

(declare-fun bs!1636320 () Bool)

(assert (= bs!1636320 (and d!2027566 d!2027324)))

(assert (=> bs!1636320 (not (= lambda!357218 lambda!357156))))

(declare-fun bs!1636321 () Bool)

(assert (= bs!1636321 (and d!2027566 b!6463664)))

(assert (=> bs!1636321 (not (= lambda!357218 lambda!357197))))

(declare-fun bs!1636322 () Bool)

(assert (= bs!1636322 (and d!2027566 b!6462972)))

(assert (=> bs!1636322 (= lambda!357218 lambda!357122)))

(assert (=> bs!1636316 (= (and (= s!2326 (_1!36627 lt!2383030)) (= lt!2383009 (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357218 lambda!357124))))

(declare-fun bs!1636323 () Bool)

(assert (= bs!1636323 (and d!2027566 b!6463237)))

(assert (=> bs!1636323 (not (= lambda!357218 lambda!357148))))

(declare-fun bs!1636324 () Bool)

(assert (= bs!1636324 (and d!2027566 b!6462980)))

(assert (=> bs!1636324 (not (= lambda!357218 lambda!357120))))

(declare-fun bs!1636325 () Bool)

(assert (= bs!1636325 (and d!2027566 b!6463367)))

(assert (=> bs!1636325 (not (= lambda!357218 lambda!357169))))

(declare-fun bs!1636326 () Bool)

(assert (= bs!1636326 (and d!2027566 b!6463232)))

(assert (=> bs!1636326 (not (= lambda!357218 lambda!357147))))

(assert (=> bs!1636320 (= (and (= s!2326 (_1!36627 lt!2383030)) (= lt!2383009 (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357218 lambda!357155))))

(assert (=> bs!1636317 (not (= lambda!357218 lambda!357192))))

(declare-fun bs!1636327 () Bool)

(assert (= bs!1636327 (and d!2027566 d!2027424)))

(assert (=> bs!1636327 (= (= lt!2383009 (regOne!33202 r!7292)) (= lambda!357218 lambda!357190))))

(assert (=> bs!1636324 (= (= lt!2383009 (regOne!33202 r!7292)) (= lambda!357218 lambda!357119))))

(declare-fun bs!1636328 () Bool)

(assert (= bs!1636328 (and d!2027566 d!2027564)))

(assert (=> bs!1636328 (= lambda!357218 lambda!357217)))

(assert (=> bs!1636316 (not (= lambda!357218 lambda!357126))))

(declare-fun bs!1636329 () Bool)

(assert (= bs!1636329 (and d!2027566 b!6463659)))

(assert (=> bs!1636329 (not (= lambda!357218 lambda!357196))))

(assert (=> bs!1636319 (not (= lambda!357218 lambda!357168))))

(declare-fun bs!1636330 () Bool)

(assert (= bs!1636330 (and d!2027566 b!6463372)))

(assert (=> bs!1636330 (not (= lambda!357218 lambda!357170))))

(assert (=> bs!1636322 (not (= lambda!357218 lambda!357123))))

(assert (=> d!2027566 true))

(assert (=> d!2027566 true))

(assert (=> d!2027566 true))

(declare-fun lambda!357219 () Int)

(assert (=> bs!1636316 (not (= lambda!357219 lambda!357125))))

(assert (=> bs!1636317 (not (= lambda!357219 lambda!357191))))

(assert (=> bs!1636318 (not (= lambda!357219 lambda!357182))))

(assert (=> bs!1636319 (not (= lambda!357219 lambda!357167))))

(assert (=> bs!1636320 (= (and (= s!2326 (_1!36627 lt!2383030)) (= lt!2383009 (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357219 lambda!357156))))

(assert (=> bs!1636321 (= (and (= lt!2383009 (regOne!33202 lt!2382995)) (= (regTwo!33202 r!7292) (regTwo!33202 lt!2382995))) (= lambda!357219 lambda!357197))))

(assert (=> bs!1636322 (not (= lambda!357219 lambda!357122))))

(assert (=> bs!1636316 (not (= lambda!357219 lambda!357124))))

(assert (=> bs!1636323 (= (= lt!2383009 (regOne!33202 r!7292)) (= lambda!357219 lambda!357148))))

(assert (=> bs!1636324 (= (= lt!2383009 (regOne!33202 r!7292)) (= lambda!357219 lambda!357120))))

(assert (=> bs!1636325 (not (= lambda!357219 lambda!357169))))

(assert (=> bs!1636326 (not (= lambda!357219 lambda!357147))))

(assert (=> bs!1636320 (not (= lambda!357219 lambda!357155))))

(assert (=> bs!1636317 (= (= lt!2383009 (regOne!33202 r!7292)) (= lambda!357219 lambda!357192))))

(declare-fun bs!1636331 () Bool)

(assert (= bs!1636331 d!2027566))

(assert (=> bs!1636331 (not (= lambda!357219 lambda!357218))))

(assert (=> bs!1636327 (not (= lambda!357219 lambda!357190))))

(assert (=> bs!1636324 (not (= lambda!357219 lambda!357119))))

(assert (=> bs!1636328 (not (= lambda!357219 lambda!357217))))

(assert (=> bs!1636316 (= (and (= s!2326 (_1!36627 lt!2383030)) (= lt!2383009 (reg!16674 (regOne!33202 r!7292))) (= (regTwo!33202 r!7292) lt!2383009)) (= lambda!357219 lambda!357126))))

(assert (=> bs!1636329 (not (= lambda!357219 lambda!357196))))

(assert (=> bs!1636319 (not (= lambda!357219 lambda!357168))))

(assert (=> bs!1636330 (= (and (= s!2326 (_1!36627 lt!2383030)) (= lt!2383009 (regOne!33202 lt!2383009)) (= (regTwo!33202 r!7292) (regTwo!33202 lt!2383009))) (= lambda!357219 lambda!357170))))

(assert (=> bs!1636322 (= lambda!357219 lambda!357123)))

(assert (=> d!2027566 true))

(assert (=> d!2027566 true))

(assert (=> d!2027566 true))

(assert (=> d!2027566 (= (Exists!3415 lambda!357218) (Exists!3415 lambda!357219))))

(declare-fun lt!2383214 () Unit!158711)

(assert (=> d!2027566 (= lt!2383214 (choose!47926 lt!2383009 (regTwo!33202 r!7292) s!2326))))

(assert (=> d!2027566 (validRegex!8081 lt!2383009)))

(assert (=> d!2027566 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1952 lt!2383009 (regTwo!33202 r!7292) s!2326) lt!2383214)))

(declare-fun m!7253184 () Bool)

(assert (=> bs!1636331 m!7253184))

(declare-fun m!7253186 () Bool)

(assert (=> bs!1636331 m!7253186))

(declare-fun m!7253188 () Bool)

(assert (=> bs!1636331 m!7253188))

(assert (=> bs!1636331 m!7252398))

(assert (=> b!6462972 d!2027566))

(declare-fun d!2027568 () Bool)

(assert (=> d!2027568 (= (Exists!3415 lambda!357122) (choose!47924 lambda!357122))))

(declare-fun bs!1636332 () Bool)

(assert (= bs!1636332 d!2027568))

(declare-fun m!7253190 () Bool)

(assert (=> bs!1636332 m!7253190))

(assert (=> b!6462972 d!2027568))

(declare-fun d!2027570 () Bool)

(assert (=> d!2027570 (= (isDefined!12939 lt!2383031) (not (isEmpty!37390 lt!2383031)))))

(declare-fun bs!1636333 () Bool)

(assert (= bs!1636333 d!2027570))

(declare-fun m!7253192 () Bool)

(assert (=> bs!1636333 m!7253192))

(assert (=> b!6462972 d!2027570))

(declare-fun d!2027572 () Bool)

(assert (=> d!2027572 (= (get!22601 lt!2383031) (v!52412 lt!2383031))))

(assert (=> b!6462972 d!2027572))

(declare-fun d!2027574 () Bool)

(declare-fun e!3919045 () Bool)

(assert (=> d!2027574 e!3919045))

(declare-fun res!2654400 () Bool)

(assert (=> d!2027574 (=> (not res!2654400) (not e!3919045))))

(declare-fun lt!2383217 () List!65336)

(declare-fun noDuplicate!2172 (List!65336) Bool)

(assert (=> d!2027574 (= res!2654400 (noDuplicate!2172 lt!2383217))))

(declare-fun choose!47938 ((InoxSet Context!11458)) List!65336)

(assert (=> d!2027574 (= lt!2383217 (choose!47938 z!1189))))

(assert (=> d!2027574 (= (toList!10129 z!1189) lt!2383217)))

(declare-fun b!6463999 () Bool)

(declare-fun content!12401 (List!65336) (InoxSet Context!11458))

(assert (=> b!6463999 (= e!3919045 (= (content!12401 lt!2383217) z!1189))))

(assert (= (and d!2027574 res!2654400) b!6463999))

(declare-fun m!7253194 () Bool)

(assert (=> d!2027574 m!7253194))

(declare-fun m!7253196 () Bool)

(assert (=> d!2027574 m!7253196))

(declare-fun m!7253198 () Bool)

(assert (=> b!6463999 m!7253198))

(assert (=> b!6462971 d!2027574))

(declare-fun b!6464019 () Bool)

(declare-fun res!2654413 () Bool)

(declare-fun e!3919065 () Bool)

(assert (=> b!6464019 (=> res!2654413 e!3919065)))

(assert (=> b!6464019 (= res!2654413 (not ((_ is Concat!25190) r!7292)))))

(declare-fun e!3919063 () Bool)

(assert (=> b!6464019 (= e!3919063 e!3919065)))

(declare-fun b!6464020 () Bool)

(declare-fun e!3919062 () Bool)

(declare-fun e!3919066 () Bool)

(assert (=> b!6464020 (= e!3919062 e!3919066)))

(declare-fun res!2654411 () Bool)

(assert (=> b!6464020 (= res!2654411 (not (nullable!6338 (reg!16674 r!7292))))))

(assert (=> b!6464020 (=> (not res!2654411) (not e!3919066))))

(declare-fun b!6464021 () Bool)

(declare-fun call!558600 () Bool)

(assert (=> b!6464021 (= e!3919066 call!558600)))

(declare-fun b!6464022 () Bool)

(declare-fun e!3919064 () Bool)

(declare-fun call!558602 () Bool)

(assert (=> b!6464022 (= e!3919064 call!558602)))

(declare-fun b!6464023 () Bool)

(assert (=> b!6464023 (= e!3919062 e!3919063)))

(declare-fun c!1183206 () Bool)

(assert (=> b!6464023 (= c!1183206 ((_ is Union!16345) r!7292))))

(declare-fun bm!558595 () Bool)

(declare-fun c!1183207 () Bool)

(assert (=> bm!558595 (= call!558600 (validRegex!8081 (ite c!1183207 (reg!16674 r!7292) (ite c!1183206 (regTwo!33203 r!7292) (regTwo!33202 r!7292)))))))

(declare-fun b!6464024 () Bool)

(declare-fun res!2654414 () Bool)

(assert (=> b!6464024 (=> (not res!2654414) (not e!3919064))))

(declare-fun call!558601 () Bool)

(assert (=> b!6464024 (= res!2654414 call!558601)))

(assert (=> b!6464024 (= e!3919063 e!3919064)))

(declare-fun bm!558596 () Bool)

(assert (=> bm!558596 (= call!558601 (validRegex!8081 (ite c!1183206 (regOne!33203 r!7292) (regOne!33202 r!7292))))))

(declare-fun b!6464025 () Bool)

(declare-fun e!3919060 () Bool)

(assert (=> b!6464025 (= e!3919065 e!3919060)))

(declare-fun res!2654412 () Bool)

(assert (=> b!6464025 (=> (not res!2654412) (not e!3919060))))

(assert (=> b!6464025 (= res!2654412 call!558601)))

(declare-fun d!2027576 () Bool)

(declare-fun res!2654415 () Bool)

(declare-fun e!3919061 () Bool)

(assert (=> d!2027576 (=> res!2654415 e!3919061)))

(assert (=> d!2027576 (= res!2654415 ((_ is ElementMatch!16345) r!7292))))

(assert (=> d!2027576 (= (validRegex!8081 r!7292) e!3919061)))

(declare-fun b!6464018 () Bool)

(assert (=> b!6464018 (= e!3919060 call!558602)))

(declare-fun b!6464026 () Bool)

(assert (=> b!6464026 (= e!3919061 e!3919062)))

(assert (=> b!6464026 (= c!1183207 ((_ is Star!16345) r!7292))))

(declare-fun bm!558597 () Bool)

(assert (=> bm!558597 (= call!558602 call!558600)))

(assert (= (and d!2027576 (not res!2654415)) b!6464026))

(assert (= (and b!6464026 c!1183207) b!6464020))

(assert (= (and b!6464026 (not c!1183207)) b!6464023))

(assert (= (and b!6464020 res!2654411) b!6464021))

(assert (= (and b!6464023 c!1183206) b!6464024))

(assert (= (and b!6464023 (not c!1183206)) b!6464019))

(assert (= (and b!6464024 res!2654414) b!6464022))

(assert (= (and b!6464019 (not res!2654413)) b!6464025))

(assert (= (and b!6464025 res!2654412) b!6464018))

(assert (= (or b!6464022 b!6464018) bm!558597))

(assert (= (or b!6464024 b!6464025) bm!558596))

(assert (= (or b!6464021 bm!558597) bm!558595))

(declare-fun m!7253200 () Bool)

(assert (=> b!6464020 m!7253200))

(declare-fun m!7253202 () Bool)

(assert (=> bm!558595 m!7253202))

(declare-fun m!7253204 () Bool)

(assert (=> bm!558596 m!7253204))

(assert (=> start!636170 d!2027576))

(declare-fun d!2027578 () Bool)

(assert (=> d!2027578 (= (isEmpty!37388 (t!378958 zl!343)) ((_ is Nil!65212) (t!378958 zl!343)))))

(assert (=> b!6462992 d!2027578))

(declare-fun d!2027580 () Bool)

(assert (=> d!2027580 (= (flatMap!1850 lt!2383024 lambda!357121) (choose!47918 lt!2383024 lambda!357121))))

(declare-fun bs!1636334 () Bool)

(assert (= bs!1636334 d!2027580))

(declare-fun m!7253206 () Bool)

(assert (=> bs!1636334 m!7253206))

(assert (=> b!6462991 d!2027580))

(declare-fun bm!558598 () Bool)

(declare-fun call!558603 () (InoxSet Context!11458))

(assert (=> bm!558598 (= call!558603 (derivationStepZipperDown!1593 (h!71659 (exprs!6229 lt!2383028)) (Context!11459 (t!378957 (exprs!6229 lt!2383028))) (h!71658 s!2326)))))

(declare-fun e!3919067 () (InoxSet Context!11458))

(declare-fun b!6464027 () Bool)

(assert (=> b!6464027 (= e!3919067 ((_ map or) call!558603 (derivationStepZipperUp!1519 (Context!11459 (t!378957 (exprs!6229 lt!2383028))) (h!71658 s!2326))))))

(declare-fun b!6464028 () Bool)

(declare-fun e!3919069 () Bool)

(assert (=> b!6464028 (= e!3919069 (nullable!6338 (h!71659 (exprs!6229 lt!2383028))))))

(declare-fun b!6464029 () Bool)

(declare-fun e!3919068 () (InoxSet Context!11458))

(assert (=> b!6464029 (= e!3919067 e!3919068)))

(declare-fun c!1183208 () Bool)

(assert (=> b!6464029 (= c!1183208 ((_ is Cons!65211) (exprs!6229 lt!2383028)))))

(declare-fun d!2027582 () Bool)

(declare-fun c!1183209 () Bool)

(assert (=> d!2027582 (= c!1183209 e!3919069)))

(declare-fun res!2654416 () Bool)

(assert (=> d!2027582 (=> (not res!2654416) (not e!3919069))))

(assert (=> d!2027582 (= res!2654416 ((_ is Cons!65211) (exprs!6229 lt!2383028)))))

(assert (=> d!2027582 (= (derivationStepZipperUp!1519 lt!2383028 (h!71658 s!2326)) e!3919067)))

(declare-fun b!6464030 () Bool)

(assert (=> b!6464030 (= e!3919068 call!558603)))

(declare-fun b!6464031 () Bool)

(assert (=> b!6464031 (= e!3919068 ((as const (Array Context!11458 Bool)) false))))

(assert (= (and d!2027582 res!2654416) b!6464028))

(assert (= (and d!2027582 c!1183209) b!6464027))

(assert (= (and d!2027582 (not c!1183209)) b!6464029))

(assert (= (and b!6464029 c!1183208) b!6464030))

(assert (= (and b!6464029 (not c!1183208)) b!6464031))

(assert (= (or b!6464027 b!6464030) bm!558598))

(declare-fun m!7253208 () Bool)

(assert (=> bm!558598 m!7253208))

(declare-fun m!7253210 () Bool)

(assert (=> b!6464027 m!7253210))

(declare-fun m!7253212 () Bool)

(assert (=> b!6464028 m!7253212))

(assert (=> b!6462991 d!2027582))

(declare-fun d!2027584 () Bool)

(assert (=> d!2027584 (= (flatMap!1850 lt!2383024 lambda!357121) (dynLambda!25907 lambda!357121 lt!2383028))))

(declare-fun lt!2383218 () Unit!158711)

(assert (=> d!2027584 (= lt!2383218 (choose!47919 lt!2383024 lt!2383028 lambda!357121))))

(assert (=> d!2027584 (= lt!2383024 (store ((as const (Array Context!11458 Bool)) false) lt!2383028 true))))

(assert (=> d!2027584 (= (lemmaFlatMapOnSingletonSet!1376 lt!2383024 lt!2383028 lambda!357121) lt!2383218)))

(declare-fun b_lambda!245087 () Bool)

(assert (=> (not b_lambda!245087) (not d!2027584)))

(declare-fun bs!1636335 () Bool)

(assert (= bs!1636335 d!2027584))

(assert (=> bs!1636335 m!7252144))

(declare-fun m!7253214 () Bool)

(assert (=> bs!1636335 m!7253214))

(declare-fun m!7253216 () Bool)

(assert (=> bs!1636335 m!7253216))

(assert (=> bs!1636335 m!7252146))

(assert (=> b!6462991 d!2027584))

(declare-fun bs!1636336 () Bool)

(declare-fun d!2027586 () Bool)

(assert (= bs!1636336 (and d!2027586 b!6462982)))

(declare-fun lambda!357222 () Int)

(assert (=> bs!1636336 (= lambda!357222 lambda!357121)))

(assert (=> d!2027586 true))

(assert (=> d!2027586 (= (derivationStepZipper!2311 lt!2383024 (h!71658 s!2326)) (flatMap!1850 lt!2383024 lambda!357222))))

(declare-fun bs!1636337 () Bool)

(assert (= bs!1636337 d!2027586))

(declare-fun m!7253218 () Bool)

(assert (=> bs!1636337 m!7253218))

(assert (=> b!6462991 d!2027586))

(declare-fun d!2027588 () Bool)

(assert (=> d!2027588 (= (isEmpty!37386 (_1!36627 lt!2383030)) ((_ is Nil!65210) (_1!36627 lt!2383030)))))

(assert (=> b!6462970 d!2027588))

(declare-fun b!6464034 () Bool)

(declare-fun e!3919071 () Bool)

(assert (=> b!6464034 (= e!3919071 (not (= (head!13176 (_2!36627 lt!2383036)) (c!1182927 lt!2383009))))))

(declare-fun b!6464035 () Bool)

(declare-fun res!2654421 () Bool)

(declare-fun e!3919075 () Bool)

(assert (=> b!6464035 (=> (not res!2654421) (not e!3919075))))

(declare-fun call!558604 () Bool)

(assert (=> b!6464035 (= res!2654421 (not call!558604))))

(declare-fun b!6464036 () Bool)

(declare-fun e!3919076 () Bool)

(assert (=> b!6464036 (= e!3919076 (nullable!6338 lt!2383009))))

(declare-fun b!6464037 () Bool)

(declare-fun e!3919074 () Bool)

(declare-fun e!3919073 () Bool)

(assert (=> b!6464037 (= e!3919074 e!3919073)))

(declare-fun c!1183212 () Bool)

(assert (=> b!6464037 (= c!1183212 ((_ is EmptyLang!16345) lt!2383009))))

(declare-fun b!6464038 () Bool)

(declare-fun res!2654418 () Bool)

(declare-fun e!3919072 () Bool)

(assert (=> b!6464038 (=> res!2654418 e!3919072)))

(assert (=> b!6464038 (= res!2654418 e!3919075)))

(declare-fun res!2654419 () Bool)

(assert (=> b!6464038 (=> (not res!2654419) (not e!3919075))))

(declare-fun lt!2383219 () Bool)

(assert (=> b!6464038 (= res!2654419 lt!2383219)))

(declare-fun b!6464039 () Bool)

(declare-fun e!3919070 () Bool)

(assert (=> b!6464039 (= e!3919070 e!3919071)))

(declare-fun res!2654420 () Bool)

(assert (=> b!6464039 (=> res!2654420 e!3919071)))

(assert (=> b!6464039 (= res!2654420 call!558604)))

(declare-fun d!2027590 () Bool)

(assert (=> d!2027590 e!3919074))

(declare-fun c!1183213 () Bool)

(assert (=> d!2027590 (= c!1183213 ((_ is EmptyExpr!16345) lt!2383009))))

(assert (=> d!2027590 (= lt!2383219 e!3919076)))

(declare-fun c!1183214 () Bool)

(assert (=> d!2027590 (= c!1183214 (isEmpty!37386 (_2!36627 lt!2383036)))))

(assert (=> d!2027590 (validRegex!8081 lt!2383009)))

(assert (=> d!2027590 (= (matchR!8528 lt!2383009 (_2!36627 lt!2383036)) lt!2383219)))

(declare-fun b!6464040 () Bool)

(assert (=> b!6464040 (= e!3919072 e!3919070)))

(declare-fun res!2654423 () Bool)

(assert (=> b!6464040 (=> (not res!2654423) (not e!3919070))))

(assert (=> b!6464040 (= res!2654423 (not lt!2383219))))

(declare-fun bm!558599 () Bool)

(assert (=> bm!558599 (= call!558604 (isEmpty!37386 (_2!36627 lt!2383036)))))

(declare-fun b!6464041 () Bool)

(assert (=> b!6464041 (= e!3919073 (not lt!2383219))))

(declare-fun b!6464042 () Bool)

(assert (=> b!6464042 (= e!3919075 (= (head!13176 (_2!36627 lt!2383036)) (c!1182927 lt!2383009)))))

(declare-fun b!6464043 () Bool)

(assert (=> b!6464043 (= e!3919076 (matchR!8528 (derivativeStep!5047 lt!2383009 (head!13176 (_2!36627 lt!2383036))) (tail!12261 (_2!36627 lt!2383036))))))

(declare-fun b!6464044 () Bool)

(assert (=> b!6464044 (= e!3919074 (= lt!2383219 call!558604))))

(declare-fun b!6464045 () Bool)

(declare-fun res!2654417 () Bool)

(assert (=> b!6464045 (=> (not res!2654417) (not e!3919075))))

(assert (=> b!6464045 (= res!2654417 (isEmpty!37386 (tail!12261 (_2!36627 lt!2383036))))))

(declare-fun b!6464046 () Bool)

(declare-fun res!2654424 () Bool)

(assert (=> b!6464046 (=> res!2654424 e!3919072)))

(assert (=> b!6464046 (= res!2654424 (not ((_ is ElementMatch!16345) lt!2383009)))))

(assert (=> b!6464046 (= e!3919073 e!3919072)))

(declare-fun b!6464047 () Bool)

(declare-fun res!2654422 () Bool)

(assert (=> b!6464047 (=> res!2654422 e!3919071)))

(assert (=> b!6464047 (= res!2654422 (not (isEmpty!37386 (tail!12261 (_2!36627 lt!2383036)))))))

(assert (= (and d!2027590 c!1183214) b!6464036))

(assert (= (and d!2027590 (not c!1183214)) b!6464043))

(assert (= (and d!2027590 c!1183213) b!6464044))

(assert (= (and d!2027590 (not c!1183213)) b!6464037))

(assert (= (and b!6464037 c!1183212) b!6464041))

(assert (= (and b!6464037 (not c!1183212)) b!6464046))

(assert (= (and b!6464046 (not res!2654424)) b!6464038))

(assert (= (and b!6464038 res!2654419) b!6464035))

(assert (= (and b!6464035 res!2654421) b!6464045))

(assert (= (and b!6464045 res!2654417) b!6464042))

(assert (= (and b!6464038 (not res!2654418)) b!6464040))

(assert (= (and b!6464040 res!2654423) b!6464039))

(assert (= (and b!6464039 (not res!2654420)) b!6464047))

(assert (= (and b!6464047 (not res!2654422)) b!6464034))

(assert (= (or b!6464044 b!6464035 b!6464039) bm!558599))

(declare-fun m!7253220 () Bool)

(assert (=> b!6464045 m!7253220))

(assert (=> b!6464045 m!7253220))

(declare-fun m!7253222 () Bool)

(assert (=> b!6464045 m!7253222))

(declare-fun m!7253224 () Bool)

(assert (=> b!6464043 m!7253224))

(assert (=> b!6464043 m!7253224))

(declare-fun m!7253226 () Bool)

(assert (=> b!6464043 m!7253226))

(assert (=> b!6464043 m!7253220))

(assert (=> b!6464043 m!7253226))

(assert (=> b!6464043 m!7253220))

(declare-fun m!7253228 () Bool)

(assert (=> b!6464043 m!7253228))

(assert (=> b!6464036 m!7253128))

(declare-fun m!7253230 () Bool)

(assert (=> bm!558599 m!7253230))

(assert (=> b!6464034 m!7253224))

(assert (=> d!2027590 m!7253230))

(assert (=> d!2027590 m!7252398))

(assert (=> b!6464042 m!7253224))

(assert (=> b!6464047 m!7253220))

(assert (=> b!6464047 m!7253220))

(assert (=> b!6464047 m!7253222))

(assert (=> b!6462989 d!2027590))

(declare-fun d!2027592 () Bool)

(declare-fun c!1183215 () Bool)

(assert (=> d!2027592 (= c!1183215 (isEmpty!37386 s!2326))))

(declare-fun e!3919077 () Bool)

(assert (=> d!2027592 (= (matchZipper!2357 lt!2383024 s!2326) e!3919077)))

(declare-fun b!6464048 () Bool)

(assert (=> b!6464048 (= e!3919077 (nullableZipper!2108 lt!2383024))))

(declare-fun b!6464049 () Bool)

(assert (=> b!6464049 (= e!3919077 (matchZipper!2357 (derivationStepZipper!2311 lt!2383024 (head!13176 s!2326)) (tail!12261 s!2326)))))

(assert (= (and d!2027592 c!1183215) b!6464048))

(assert (= (and d!2027592 (not c!1183215)) b!6464049))

(assert (=> d!2027592 m!7252372))

(declare-fun m!7253232 () Bool)

(assert (=> b!6464048 m!7253232))

(assert (=> b!6464049 m!7252386))

(assert (=> b!6464049 m!7252386))

(declare-fun m!7253234 () Bool)

(assert (=> b!6464049 m!7253234))

(assert (=> b!6464049 m!7252382))

(assert (=> b!6464049 m!7253234))

(assert (=> b!6464049 m!7252382))

(declare-fun m!7253236 () Bool)

(assert (=> b!6464049 m!7253236))

(assert (=> b!6462968 d!2027592))

(declare-fun d!2027594 () Bool)

(declare-fun c!1183216 () Bool)

(assert (=> d!2027594 (= c!1183216 (isEmpty!37386 (t!378956 s!2326)))))

(declare-fun e!3919078 () Bool)

(assert (=> d!2027594 (= (matchZipper!2357 lt!2383027 (t!378956 s!2326)) e!3919078)))

(declare-fun b!6464050 () Bool)

(assert (=> b!6464050 (= e!3919078 (nullableZipper!2108 lt!2383027))))

(declare-fun b!6464051 () Bool)

(assert (=> b!6464051 (= e!3919078 (matchZipper!2357 (derivationStepZipper!2311 lt!2383027 (head!13176 (t!378956 s!2326))) (tail!12261 (t!378956 s!2326))))))

(assert (= (and d!2027594 c!1183216) b!6464050))

(assert (= (and d!2027594 (not c!1183216)) b!6464051))

(assert (=> d!2027594 m!7252974))

(declare-fun m!7253238 () Bool)

(assert (=> b!6464050 m!7253238))

(assert (=> b!6464051 m!7252978))

(assert (=> b!6464051 m!7252978))

(declare-fun m!7253240 () Bool)

(assert (=> b!6464051 m!7253240))

(assert (=> b!6464051 m!7252982))

(assert (=> b!6464051 m!7253240))

(assert (=> b!6464051 m!7252982))

(declare-fun m!7253242 () Bool)

(assert (=> b!6464051 m!7253242))

(assert (=> b!6462968 d!2027594))

(declare-fun b!6464052 () Bool)

(declare-fun e!3919080 () Bool)

(assert (=> b!6464052 (= e!3919080 (not (= (head!13176 (_1!36627 lt!2383030)) (c!1182927 lt!2383009))))))

(declare-fun b!6464053 () Bool)

(declare-fun res!2654429 () Bool)

(declare-fun e!3919084 () Bool)

(assert (=> b!6464053 (=> (not res!2654429) (not e!3919084))))

(declare-fun call!558605 () Bool)

(assert (=> b!6464053 (= res!2654429 (not call!558605))))

(declare-fun b!6464054 () Bool)

(declare-fun e!3919085 () Bool)

(assert (=> b!6464054 (= e!3919085 (nullable!6338 lt!2383009))))

(declare-fun b!6464055 () Bool)

(declare-fun e!3919083 () Bool)

(declare-fun e!3919082 () Bool)

(assert (=> b!6464055 (= e!3919083 e!3919082)))

(declare-fun c!1183217 () Bool)

(assert (=> b!6464055 (= c!1183217 ((_ is EmptyLang!16345) lt!2383009))))

(declare-fun b!6464056 () Bool)

(declare-fun res!2654426 () Bool)

(declare-fun e!3919081 () Bool)

(assert (=> b!6464056 (=> res!2654426 e!3919081)))

(assert (=> b!6464056 (= res!2654426 e!3919084)))

(declare-fun res!2654427 () Bool)

(assert (=> b!6464056 (=> (not res!2654427) (not e!3919084))))

(declare-fun lt!2383220 () Bool)

(assert (=> b!6464056 (= res!2654427 lt!2383220)))

(declare-fun b!6464057 () Bool)

(declare-fun e!3919079 () Bool)

(assert (=> b!6464057 (= e!3919079 e!3919080)))

(declare-fun res!2654428 () Bool)

(assert (=> b!6464057 (=> res!2654428 e!3919080)))

(assert (=> b!6464057 (= res!2654428 call!558605)))

(declare-fun d!2027596 () Bool)

(assert (=> d!2027596 e!3919083))

(declare-fun c!1183218 () Bool)

(assert (=> d!2027596 (= c!1183218 ((_ is EmptyExpr!16345) lt!2383009))))

(assert (=> d!2027596 (= lt!2383220 e!3919085)))

(declare-fun c!1183219 () Bool)

(assert (=> d!2027596 (= c!1183219 (isEmpty!37386 (_1!36627 lt!2383030)))))

(assert (=> d!2027596 (validRegex!8081 lt!2383009)))

(assert (=> d!2027596 (= (matchR!8528 lt!2383009 (_1!36627 lt!2383030)) lt!2383220)))

(declare-fun b!6464058 () Bool)

(assert (=> b!6464058 (= e!3919081 e!3919079)))

(declare-fun res!2654431 () Bool)

(assert (=> b!6464058 (=> (not res!2654431) (not e!3919079))))

(assert (=> b!6464058 (= res!2654431 (not lt!2383220))))

(declare-fun bm!558600 () Bool)

(assert (=> bm!558600 (= call!558605 (isEmpty!37386 (_1!36627 lt!2383030)))))

(declare-fun b!6464059 () Bool)

(assert (=> b!6464059 (= e!3919082 (not lt!2383220))))

(declare-fun b!6464060 () Bool)

(assert (=> b!6464060 (= e!3919084 (= (head!13176 (_1!36627 lt!2383030)) (c!1182927 lt!2383009)))))

(declare-fun b!6464061 () Bool)

(assert (=> b!6464061 (= e!3919085 (matchR!8528 (derivativeStep!5047 lt!2383009 (head!13176 (_1!36627 lt!2383030))) (tail!12261 (_1!36627 lt!2383030))))))

(declare-fun b!6464062 () Bool)

(assert (=> b!6464062 (= e!3919083 (= lt!2383220 call!558605))))

(declare-fun b!6464063 () Bool)

(declare-fun res!2654425 () Bool)

(assert (=> b!6464063 (=> (not res!2654425) (not e!3919084))))

(assert (=> b!6464063 (= res!2654425 (isEmpty!37386 (tail!12261 (_1!36627 lt!2383030))))))

(declare-fun b!6464064 () Bool)

(declare-fun res!2654432 () Bool)

(assert (=> b!6464064 (=> res!2654432 e!3919081)))

(assert (=> b!6464064 (= res!2654432 (not ((_ is ElementMatch!16345) lt!2383009)))))

(assert (=> b!6464064 (= e!3919082 e!3919081)))

(declare-fun b!6464065 () Bool)

(declare-fun res!2654430 () Bool)

(assert (=> b!6464065 (=> res!2654430 e!3919080)))

(assert (=> b!6464065 (= res!2654430 (not (isEmpty!37386 (tail!12261 (_1!36627 lt!2383030)))))))

(assert (= (and d!2027596 c!1183219) b!6464054))

(assert (= (and d!2027596 (not c!1183219)) b!6464061))

(assert (= (and d!2027596 c!1183218) b!6464062))

(assert (= (and d!2027596 (not c!1183218)) b!6464055))

(assert (= (and b!6464055 c!1183217) b!6464059))

(assert (= (and b!6464055 (not c!1183217)) b!6464064))

(assert (= (and b!6464064 (not res!2654432)) b!6464056))

(assert (= (and b!6464056 res!2654427) b!6464053))

(assert (= (and b!6464053 res!2654429) b!6464063))

(assert (= (and b!6464063 res!2654425) b!6464060))

(assert (= (and b!6464056 (not res!2654426)) b!6464058))

(assert (= (and b!6464058 res!2654431) b!6464057))

(assert (= (and b!6464057 (not res!2654428)) b!6464065))

(assert (= (and b!6464065 (not res!2654430)) b!6464052))

(assert (= (or b!6464062 b!6464053 b!6464057) bm!558600))

(declare-fun m!7253244 () Bool)

(assert (=> b!6464063 m!7253244))

(assert (=> b!6464063 m!7253244))

(declare-fun m!7253246 () Bool)

(assert (=> b!6464063 m!7253246))

(declare-fun m!7253248 () Bool)

(assert (=> b!6464061 m!7253248))

(assert (=> b!6464061 m!7253248))

(declare-fun m!7253250 () Bool)

(assert (=> b!6464061 m!7253250))

(assert (=> b!6464061 m!7253244))

(assert (=> b!6464061 m!7253250))

(assert (=> b!6464061 m!7253244))

(declare-fun m!7253252 () Bool)

(assert (=> b!6464061 m!7253252))

(assert (=> b!6464054 m!7253128))

(assert (=> bm!558600 m!7252070))

(assert (=> b!6464052 m!7253248))

(assert (=> d!2027596 m!7252070))

(assert (=> d!2027596 m!7252398))

(assert (=> b!6464060 m!7253248))

(assert (=> b!6464065 m!7253244))

(assert (=> b!6464065 m!7253244))

(assert (=> b!6464065 m!7253246))

(assert (=> b!6462967 d!2027596))

(declare-fun b!6464070 () Bool)

(declare-fun e!3919088 () Bool)

(declare-fun tp!1792519 () Bool)

(declare-fun tp!1792520 () Bool)

(assert (=> b!6464070 (= e!3919088 (and tp!1792519 tp!1792520))))

(assert (=> b!6462957 (= tp!1792452 e!3919088)))

(assert (= (and b!6462957 ((_ is Cons!65211) (exprs!6229 (h!71660 zl!343)))) b!6464070))

(declare-fun condSetEmpty!44045 () Bool)

(assert (=> setNonEmpty!44039 (= condSetEmpty!44045 (= setRest!44039 ((as const (Array Context!11458 Bool)) false)))))

(declare-fun setRes!44045 () Bool)

(assert (=> setNonEmpty!44039 (= tp!1792453 setRes!44045)))

(declare-fun setIsEmpty!44045 () Bool)

(assert (=> setIsEmpty!44045 setRes!44045))

(declare-fun setElem!44045 () Context!11458)

(declare-fun setNonEmpty!44045 () Bool)

(declare-fun tp!1792526 () Bool)

(declare-fun e!3919091 () Bool)

(assert (=> setNonEmpty!44045 (= setRes!44045 (and tp!1792526 (inv!84109 setElem!44045) e!3919091))))

(declare-fun setRest!44045 () (InoxSet Context!11458))

(assert (=> setNonEmpty!44045 (= setRest!44039 ((_ map or) (store ((as const (Array Context!11458 Bool)) false) setElem!44045 true) setRest!44045))))

(declare-fun b!6464075 () Bool)

(declare-fun tp!1792525 () Bool)

(assert (=> b!6464075 (= e!3919091 tp!1792525)))

(assert (= (and setNonEmpty!44039 condSetEmpty!44045) setIsEmpty!44045))

(assert (= (and setNonEmpty!44039 (not condSetEmpty!44045)) setNonEmpty!44045))

(assert (= setNonEmpty!44045 b!6464075))

(declare-fun m!7253254 () Bool)

(assert (=> setNonEmpty!44045 m!7253254))

(declare-fun b!6464086 () Bool)

(declare-fun e!3919094 () Bool)

(assert (=> b!6464086 (= e!3919094 tp_is_empty!41943)))

(assert (=> b!6462960 (= tp!1792449 e!3919094)))

(declare-fun b!6464087 () Bool)

(declare-fun tp!1792539 () Bool)

(declare-fun tp!1792537 () Bool)

(assert (=> b!6464087 (= e!3919094 (and tp!1792539 tp!1792537))))

(declare-fun b!6464089 () Bool)

(declare-fun tp!1792540 () Bool)

(declare-fun tp!1792541 () Bool)

(assert (=> b!6464089 (= e!3919094 (and tp!1792540 tp!1792541))))

(declare-fun b!6464088 () Bool)

(declare-fun tp!1792538 () Bool)

(assert (=> b!6464088 (= e!3919094 tp!1792538)))

(assert (= (and b!6462960 ((_ is ElementMatch!16345) (reg!16674 r!7292))) b!6464086))

(assert (= (and b!6462960 ((_ is Concat!25190) (reg!16674 r!7292))) b!6464087))

(assert (= (and b!6462960 ((_ is Star!16345) (reg!16674 r!7292))) b!6464088))

(assert (= (and b!6462960 ((_ is Union!16345) (reg!16674 r!7292))) b!6464089))

(declare-fun b!6464097 () Bool)

(declare-fun e!3919100 () Bool)

(declare-fun tp!1792546 () Bool)

(assert (=> b!6464097 (= e!3919100 tp!1792546)))

(declare-fun e!3919099 () Bool)

(declare-fun b!6464096 () Bool)

(declare-fun tp!1792547 () Bool)

(assert (=> b!6464096 (= e!3919099 (and (inv!84109 (h!71660 (t!378958 zl!343))) e!3919100 tp!1792547))))

(assert (=> b!6462954 (= tp!1792448 e!3919099)))

(assert (= b!6464096 b!6464097))

(assert (= (and b!6462954 ((_ is Cons!65212) (t!378958 zl!343))) b!6464096))

(declare-fun m!7253256 () Bool)

(assert (=> b!6464096 m!7253256))

(declare-fun b!6464098 () Bool)

(declare-fun e!3919101 () Bool)

(assert (=> b!6464098 (= e!3919101 tp_is_empty!41943)))

(assert (=> b!6462964 (= tp!1792451 e!3919101)))

(declare-fun b!6464099 () Bool)

(declare-fun tp!1792550 () Bool)

(declare-fun tp!1792548 () Bool)

(assert (=> b!6464099 (= e!3919101 (and tp!1792550 tp!1792548))))

(declare-fun b!6464101 () Bool)

(declare-fun tp!1792551 () Bool)

(declare-fun tp!1792552 () Bool)

(assert (=> b!6464101 (= e!3919101 (and tp!1792551 tp!1792552))))

(declare-fun b!6464100 () Bool)

(declare-fun tp!1792549 () Bool)

(assert (=> b!6464100 (= e!3919101 tp!1792549)))

(assert (= (and b!6462964 ((_ is ElementMatch!16345) (regOne!33203 r!7292))) b!6464098))

(assert (= (and b!6462964 ((_ is Concat!25190) (regOne!33203 r!7292))) b!6464099))

(assert (= (and b!6462964 ((_ is Star!16345) (regOne!33203 r!7292))) b!6464100))

(assert (= (and b!6462964 ((_ is Union!16345) (regOne!33203 r!7292))) b!6464101))

(declare-fun b!6464102 () Bool)

(declare-fun e!3919102 () Bool)

(assert (=> b!6464102 (= e!3919102 tp_is_empty!41943)))

(assert (=> b!6462964 (= tp!1792450 e!3919102)))

(declare-fun b!6464103 () Bool)

(declare-fun tp!1792555 () Bool)

(declare-fun tp!1792553 () Bool)

(assert (=> b!6464103 (= e!3919102 (and tp!1792555 tp!1792553))))

(declare-fun b!6464105 () Bool)

(declare-fun tp!1792556 () Bool)

(declare-fun tp!1792557 () Bool)

(assert (=> b!6464105 (= e!3919102 (and tp!1792556 tp!1792557))))

(declare-fun b!6464104 () Bool)

(declare-fun tp!1792554 () Bool)

(assert (=> b!6464104 (= e!3919102 tp!1792554)))

(assert (= (and b!6462964 ((_ is ElementMatch!16345) (regTwo!33203 r!7292))) b!6464102))

(assert (= (and b!6462964 ((_ is Concat!25190) (regTwo!33203 r!7292))) b!6464103))

(assert (= (and b!6462964 ((_ is Star!16345) (regTwo!33203 r!7292))) b!6464104))

(assert (= (and b!6462964 ((_ is Union!16345) (regTwo!33203 r!7292))) b!6464105))

(declare-fun b!6464106 () Bool)

(declare-fun e!3919103 () Bool)

(assert (=> b!6464106 (= e!3919103 tp_is_empty!41943)))

(assert (=> b!6462963 (= tp!1792456 e!3919103)))

(declare-fun b!6464107 () Bool)

(declare-fun tp!1792560 () Bool)

(declare-fun tp!1792558 () Bool)

(assert (=> b!6464107 (= e!3919103 (and tp!1792560 tp!1792558))))

(declare-fun b!6464109 () Bool)

(declare-fun tp!1792561 () Bool)

(declare-fun tp!1792562 () Bool)

(assert (=> b!6464109 (= e!3919103 (and tp!1792561 tp!1792562))))

(declare-fun b!6464108 () Bool)

(declare-fun tp!1792559 () Bool)

(assert (=> b!6464108 (= e!3919103 tp!1792559)))

(assert (= (and b!6462963 ((_ is ElementMatch!16345) (regOne!33202 r!7292))) b!6464106))

(assert (= (and b!6462963 ((_ is Concat!25190) (regOne!33202 r!7292))) b!6464107))

(assert (= (and b!6462963 ((_ is Star!16345) (regOne!33202 r!7292))) b!6464108))

(assert (= (and b!6462963 ((_ is Union!16345) (regOne!33202 r!7292))) b!6464109))

(declare-fun b!6464110 () Bool)

(declare-fun e!3919104 () Bool)

(assert (=> b!6464110 (= e!3919104 tp_is_empty!41943)))

(assert (=> b!6462963 (= tp!1792447 e!3919104)))

(declare-fun b!6464111 () Bool)

(declare-fun tp!1792565 () Bool)

(declare-fun tp!1792563 () Bool)

(assert (=> b!6464111 (= e!3919104 (and tp!1792565 tp!1792563))))

(declare-fun b!6464113 () Bool)

(declare-fun tp!1792566 () Bool)

(declare-fun tp!1792567 () Bool)

(assert (=> b!6464113 (= e!3919104 (and tp!1792566 tp!1792567))))

(declare-fun b!6464112 () Bool)

(declare-fun tp!1792564 () Bool)

(assert (=> b!6464112 (= e!3919104 tp!1792564)))

(assert (= (and b!6462963 ((_ is ElementMatch!16345) (regTwo!33202 r!7292))) b!6464110))

(assert (= (and b!6462963 ((_ is Concat!25190) (regTwo!33202 r!7292))) b!6464111))

(assert (= (and b!6462963 ((_ is Star!16345) (regTwo!33202 r!7292))) b!6464112))

(assert (= (and b!6462963 ((_ is Union!16345) (regTwo!33202 r!7292))) b!6464113))

(declare-fun b!6464114 () Bool)

(declare-fun e!3919105 () Bool)

(declare-fun tp!1792568 () Bool)

(declare-fun tp!1792569 () Bool)

(assert (=> b!6464114 (= e!3919105 (and tp!1792568 tp!1792569))))

(assert (=> b!6462990 (= tp!1792455 e!3919105)))

(assert (= (and b!6462990 ((_ is Cons!65211) (exprs!6229 setElem!44039))) b!6464114))

(declare-fun b!6464119 () Bool)

(declare-fun e!3919108 () Bool)

(declare-fun tp!1792572 () Bool)

(assert (=> b!6464119 (= e!3919108 (and tp_is_empty!41943 tp!1792572))))

(assert (=> b!6462978 (= tp!1792454 e!3919108)))

(assert (= (and b!6462978 ((_ is Cons!65210) (t!378956 s!2326))) b!6464119))

(declare-fun b_lambda!245089 () Bool)

(assert (= b_lambda!245067 (or b!6462982 b_lambda!245089)))

(declare-fun bs!1636338 () Bool)

(declare-fun d!2027598 () Bool)

(assert (= bs!1636338 (and d!2027598 b!6462982)))

(assert (=> bs!1636338 (= (dynLambda!25907 lambda!357121 lt!2383004) (derivationStepZipperUp!1519 lt!2383004 (h!71658 s!2326)))))

(assert (=> bs!1636338 m!7252128))

(assert (=> d!2027292 d!2027598))

(declare-fun b_lambda!245091 () Bool)

(assert (= b_lambda!245087 (or b!6462982 b_lambda!245091)))

(declare-fun bs!1636339 () Bool)

(declare-fun d!2027600 () Bool)

(assert (= bs!1636339 (and d!2027600 b!6462982)))

(assert (=> bs!1636339 (= (dynLambda!25907 lambda!357121 lt!2383028) (derivationStepZipperUp!1519 lt!2383028 (h!71658 s!2326)))))

(assert (=> bs!1636339 m!7252150))

(assert (=> d!2027584 d!2027600))

(declare-fun b_lambda!245093 () Bool)

(assert (= b_lambda!245069 (or b!6462982 b_lambda!245093)))

(declare-fun bs!1636340 () Bool)

(declare-fun d!2027602 () Bool)

(assert (= bs!1636340 (and d!2027602 b!6462982)))

(assert (=> bs!1636340 (= (dynLambda!25907 lambda!357121 lt!2383038) (derivationStepZipperUp!1519 lt!2383038 (h!71658 s!2326)))))

(assert (=> bs!1636340 m!7252132))

(assert (=> d!2027296 d!2027602))

(declare-fun b_lambda!245095 () Bool)

(assert (= b_lambda!245073 (or b!6462982 b_lambda!245095)))

(declare-fun bs!1636341 () Bool)

(declare-fun d!2027604 () Bool)

(assert (= bs!1636341 (and d!2027604 b!6462982)))

(assert (=> bs!1636341 (= (dynLambda!25907 lambda!357121 (h!71660 zl!343)) (derivationStepZipperUp!1519 (h!71660 zl!343) (h!71658 s!2326)))))

(assert (=> bs!1636341 m!7252106))

(assert (=> d!2027406 d!2027604))

(check-sat (not d!2027316) (not d!2027434) (not d!2027310) (not b!6463526) (not b!6463775) (not d!2027510) (not b!6464042) (not bm!558560) (not b!6463727) (not b!6463449) (not b!6463796) (not b!6463151) (not d!2027540) (not d!2027278) (not b!6463629) (not d!2027584) (not b!6463797) (not b!6463869) (not bm!558535) (not b!6464028) (not d!2027424) (not b!6463071) (not b!6463979) (not b!6463986) (not bs!1636340) (not b!6463990) (not b!6464119) (not b!6463150) (not b!6464048) (not b_lambda!245093) (not d!2027370) (not d!2027272) (not b!6463781) (not d!2027318) (not d!2027282) (not d!2027516) (not b!6463962) (not d!2027560) (not b!6463652) (not b!6464111) (not b!6463967) (not d!2027414) (not b!6463954) (not d!2027558) (not d!2027394) (not b!6463286) (not b!6464089) (not b!6464050) (not b!6463160) (not d!2027358) (not d!2027574) (not d!2027564) (not b!6464112) (not b!6463872) (not d!2027590) (not d!2027386) (not b!6463502) (not b!6463297) (not b!6463880) (not b!6464047) (not b!6464063) (not b!6463582) (not b!6464099) (not d!2027334) (not d!2027570) (not b!6463453) (not d!2027514) (not bm!558565) (not b!6463503) (not bs!1636339) (not b!6464114) (not b!6463779) (not b!6463985) (not b!6463970) (not b!6464101) (not b!6464100) (not bs!1636341) (not d!2027592) (not d!2027542) (not b!6463769) (not b!6463889) (not b!6463963) (not b!6463994) (not b!6464061) (not b!6464109) (not b!6464107) (not b!6463452) (not d!2027444) (not d!2027280) (not b!6463075) (not b!6463233) (not bm!558528) (not bm!558561) (not b!6463645) (not d!2027556) (not bm!558595) (not b!6463956) (not b!6464088) (not d!2027544) (not b!6463638) (not b!6463510) (not b!6464096) (not b!6463600) (not d!2027580) (not d!2027566) (not setNonEmpty!44045) (not d!2027586) (not d!2027406) (not b!6463447) (not d!2027422) (not bm!558564) (not d!2027324) (not b!6463972) (not b!6463734) (not b!6463656) (not b!6463885) (not b!6464108) (not b!6463448) (not b!6463509) (not bm!558513) (not d!2027450) (not d!2027502) (not b!6463993) (not b!6464052) (not bm!558599) (not bm!558514) (not b!6463863) (not d!2027596) (not b!6463072) (not d!2027270) (not d!2027384) (not d!2027508) (not d!2027274) (not b!6463731) (not b!6464065) (not d!2027300) (not d!2027532) (not d!2027332) (not bm!558524) (not b!6463776) (not b!6463874) (not d!2027446) (not bm!558567) (not b!6463080) (not b!6463293) (not d!2027292) (not bm!558566) (not b!6463660) (not b!6463610) (not b!6463631) (not d!2027296) (not b!6463614) (not b!6463883) tp_is_empty!41943 (not b!6463995) (not d!2027254) (not b!6464060) (not b!6463292) (not d!2027464) (not b!6463613) (not d!2027420) (not d!2027538) (not b!6464097) (not bm!558585) (not b!6464113) (not b!6463654) (not b!6463369) (not b!6464075) (not b!6463730) (not bm!558598) (not d!2027594) (not b!6463870) (not d!2027480) (not b!6463864) (not d!2027382) (not b!6463599) (not b!6463615) (not b!6463989) (not bm!558588) (not bm!558600) (not bm!558507) (not b!6464020) (not b!6463609) (not b!6464103) (not bm!558523) (not b!6463868) (not b!6464043) (not b!6464051) (not b!6464049) (not b!6463965) (not d!2027320) (not b_lambda!245091) (not bm!558580) (not b!6464034) (not b!6463643) (not d!2027368) (not b!6464054) (not d!2027412) (not b!6463978) (not b!6463608) (not bm!558508) (not b!6463234) (not bm!558563) (not b!6463640) (not b!6463295) (not bs!1636338) (not b!6463284) (not d!2027554) (not b!6464104) (not d!2027466) (not b!6463999) (not b!6463780) (not b!6463736) (not b!6463981) (not bm!558525) (not b!6463881) (not d!2027568) (not b!6463661) (not b!6464036) (not b!6463899) (not d!2027562) (not bm!558584) (not b!6464105) (not bm!558557) (not b!6463983) (not b!6463079) (not bm!558581) (not b!6463948) (not b!6464087) (not b!6463525) (not b!6463988) (not b!6463651) (not bm!558596) (not d!2027452) (not b!6463949) (not b!6463637) (not b_lambda!245089) (not b!6464070) (not b!6463454) (not d!2027286) (not b!6463368) (not b!6463733) (not b!6463159) (not d!2027294) (not b!6463729) (not b_lambda!245095) (not b!6464027) (not bm!558587) (not b!6463076) (not d!2027528) (not b!6464045) (not d!2027268) (not b!6463642) (not b!6463871) (not b!6463865))
(check-sat)
