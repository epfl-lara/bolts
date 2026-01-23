; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!631242 () Bool)

(assert start!631242)

(declare-fun b!6371753 () Bool)

(assert (=> b!6371753 true))

(assert (=> b!6371753 true))

(declare-fun lambda!351194 () Int)

(declare-fun lambda!351193 () Int)

(assert (=> b!6371753 (not (= lambda!351194 lambda!351193))))

(assert (=> b!6371753 true))

(assert (=> b!6371753 true))

(declare-fun b!6371763 () Bool)

(assert (=> b!6371763 true))

(declare-fun res!2621274 () Bool)

(declare-fun e!3868407 () Bool)

(assert (=> start!631242 (=> (not res!2621274) (not e!3868407))))

(declare-datatypes ((C!32836 0))(
  ( (C!32837 (val!26120 Int)) )
))
(declare-datatypes ((Regex!16283 0))(
  ( (ElementMatch!16283 (c!1160374 C!32836)) (Concat!25128 (regOne!33078 Regex!16283) (regTwo!33078 Regex!16283)) (EmptyExpr!16283) (Star!16283 (reg!16612 Regex!16283)) (EmptyLang!16283) (Union!16283 (regOne!33079 Regex!16283) (regTwo!33079 Regex!16283)) )
))
(declare-fun r!7292 () Regex!16283)

(declare-fun validRegex!8019 (Regex!16283) Bool)

(assert (=> start!631242 (= res!2621274 (validRegex!8019 r!7292))))

(assert (=> start!631242 e!3868407))

(declare-fun e!3868412 () Bool)

(assert (=> start!631242 e!3868412))

(declare-fun condSetEmpty!43448 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65148 0))(
  ( (Nil!65024) (Cons!65024 (h!71472 Regex!16283) (t!378748 List!65148)) )
))
(declare-datatypes ((Context!11334 0))(
  ( (Context!11335 (exprs!6167 List!65148)) )
))
(declare-fun z!1189 () (InoxSet Context!11334))

(assert (=> start!631242 (= condSetEmpty!43448 (= z!1189 ((as const (Array Context!11334 Bool)) false)))))

(declare-fun setRes!43448 () Bool)

(assert (=> start!631242 setRes!43448))

(declare-fun e!3868408 () Bool)

(assert (=> start!631242 e!3868408))

(declare-fun e!3868414 () Bool)

(assert (=> start!631242 e!3868414))

(declare-fun b!6371732 () Bool)

(declare-datatypes ((Unit!158463 0))(
  ( (Unit!158464) )
))
(declare-fun e!3868405 () Unit!158463)

(declare-fun Unit!158465 () Unit!158463)

(assert (=> b!6371732 (= e!3868405 Unit!158465)))

(declare-fun lt!2368457 () (InoxSet Context!11334))

(declare-datatypes ((List!65149 0))(
  ( (Nil!65025) (Cons!65025 (h!71473 C!32836) (t!378749 List!65149)) )
))
(declare-fun s!2326 () List!65149)

(declare-fun lt!2368453 () Unit!158463)

(declare-fun lt!2368449 () (InoxSet Context!11334))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1114 ((InoxSet Context!11334) (InoxSet Context!11334) List!65149) Unit!158463)

(assert (=> b!6371732 (= lt!2368453 (lemmaZipperConcatMatchesSameAsBothZippers!1114 lt!2368449 lt!2368457 (t!378749 s!2326)))))

(declare-fun res!2621275 () Bool)

(declare-fun matchZipper!2295 ((InoxSet Context!11334) List!65149) Bool)

(assert (=> b!6371732 (= res!2621275 (matchZipper!2295 lt!2368449 (t!378749 s!2326)))))

(declare-fun e!3868401 () Bool)

(assert (=> b!6371732 (=> res!2621275 e!3868401)))

(assert (=> b!6371732 (= (matchZipper!2295 ((_ map or) lt!2368449 lt!2368457) (t!378749 s!2326)) e!3868401)))

(declare-fun b!6371733 () Bool)

(declare-fun res!2621266 () Bool)

(declare-fun e!3868404 () Bool)

(assert (=> b!6371733 (=> res!2621266 e!3868404)))

(declare-datatypes ((List!65150 0))(
  ( (Nil!65026) (Cons!65026 (h!71474 Context!11334) (t!378750 List!65150)) )
))
(declare-fun zl!343 () List!65150)

(declare-fun isEmpty!37141 (List!65148) Bool)

(assert (=> b!6371733 (= res!2621266 (isEmpty!37141 (t!378748 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6371734 () Bool)

(declare-fun e!3868411 () Bool)

(declare-fun e!3868406 () Bool)

(assert (=> b!6371734 (= e!3868411 e!3868406)))

(declare-fun res!2621271 () Bool)

(assert (=> b!6371734 (=> res!2621271 e!3868406)))

(declare-fun lt!2368461 () Regex!16283)

(assert (=> b!6371734 (= res!2621271 (not (= r!7292 lt!2368461)))))

(declare-fun lt!2368471 () Regex!16283)

(assert (=> b!6371734 (= lt!2368461 (Concat!25128 lt!2368471 (regTwo!33078 r!7292)))))

(declare-fun setIsEmpty!43448 () Bool)

(assert (=> setIsEmpty!43448 setRes!43448))

(declare-fun b!6371735 () Bool)

(declare-fun res!2621272 () Bool)

(declare-fun e!3868410 () Bool)

(assert (=> b!6371735 (=> res!2621272 e!3868410)))

(get-info :version)

(assert (=> b!6371735 (= res!2621272 (or ((_ is Concat!25128) (regOne!33078 r!7292)) (not ((_ is Star!16283) (regOne!33078 r!7292)))))))

(declare-fun b!6371736 () Bool)

(declare-fun res!2621273 () Bool)

(declare-fun e!3868400 () Bool)

(assert (=> b!6371736 (=> res!2621273 e!3868400)))

(declare-fun generalisedUnion!2127 (List!65148) Regex!16283)

(declare-fun unfocusZipperList!1704 (List!65150) List!65148)

(assert (=> b!6371736 (= res!2621273 (not (= r!7292 (generalisedUnion!2127 (unfocusZipperList!1704 zl!343)))))))

(declare-fun b!6371737 () Bool)

(declare-fun e!3868409 () Bool)

(assert (=> b!6371737 (= e!3868410 e!3868409)))

(declare-fun res!2621257 () Bool)

(assert (=> b!6371737 (=> res!2621257 e!3868409)))

(declare-fun lt!2368455 () (InoxSet Context!11334))

(assert (=> b!6371737 (= res!2621257 (not (= lt!2368449 lt!2368455)))))

(declare-fun lt!2368470 () Context!11334)

(declare-fun derivationStepZipperDown!1531 (Regex!16283 Context!11334 C!32836) (InoxSet Context!11334))

(assert (=> b!6371737 (= lt!2368455 (derivationStepZipperDown!1531 (reg!16612 (regOne!33078 r!7292)) lt!2368470 (h!71473 s!2326)))))

(declare-fun lt!2368454 () List!65148)

(assert (=> b!6371737 (= lt!2368470 (Context!11335 lt!2368454))))

(assert (=> b!6371737 (= lt!2368454 (Cons!65024 lt!2368471 (t!378748 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> b!6371737 (= lt!2368471 (Star!16283 (reg!16612 (regOne!33078 r!7292))))))

(declare-fun b!6371738 () Bool)

(declare-fun e!3868403 () Bool)

(declare-fun tp!1773895 () Bool)

(assert (=> b!6371738 (= e!3868403 tp!1773895)))

(declare-fun b!6371739 () Bool)

(declare-fun res!2621267 () Bool)

(assert (=> b!6371739 (=> res!2621267 e!3868400)))

(assert (=> b!6371739 (= res!2621267 (not ((_ is Cons!65024) (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6371740 () Bool)

(declare-fun res!2621276 () Bool)

(assert (=> b!6371740 (=> res!2621276 e!3868410)))

(declare-fun e!3868399 () Bool)

(assert (=> b!6371740 (= res!2621276 e!3868399)))

(declare-fun res!2621262 () Bool)

(assert (=> b!6371740 (=> (not res!2621262) (not e!3868399))))

(assert (=> b!6371740 (= res!2621262 ((_ is Concat!25128) (regOne!33078 r!7292)))))

(declare-fun b!6371741 () Bool)

(declare-fun res!2621270 () Bool)

(assert (=> b!6371741 (=> res!2621270 e!3868400)))

(declare-fun isEmpty!37142 (List!65150) Bool)

(assert (=> b!6371741 (= res!2621270 (not (isEmpty!37142 (t!378750 zl!343))))))

(declare-fun b!6371742 () Bool)

(declare-fun res!2621268 () Bool)

(assert (=> b!6371742 (=> res!2621268 e!3868411)))

(declare-fun lt!2368451 () (InoxSet Context!11334))

(declare-fun lt!2368474 () (InoxSet Context!11334))

(assert (=> b!6371742 (= res!2621268 (not (= (matchZipper!2295 lt!2368474 s!2326) (matchZipper!2295 lt!2368451 (t!378749 s!2326)))))))

(declare-fun b!6371743 () Bool)

(declare-fun res!2621255 () Bool)

(assert (=> b!6371743 (=> res!2621255 e!3868400)))

(assert (=> b!6371743 (= res!2621255 (or ((_ is EmptyExpr!16283) r!7292) ((_ is EmptyLang!16283) r!7292) ((_ is ElementMatch!16283) r!7292) ((_ is Union!16283) r!7292) (not ((_ is Concat!25128) r!7292))))))

(declare-fun e!3868413 () Bool)

(declare-fun tp!1773899 () Bool)

(declare-fun b!6371744 () Bool)

(declare-fun inv!83954 (Context!11334) Bool)

(assert (=> b!6371744 (= e!3868408 (and (inv!83954 (h!71474 zl!343)) e!3868413 tp!1773899))))

(declare-fun b!6371745 () Bool)

(assert (=> b!6371745 (= e!3868409 e!3868411)))

(declare-fun res!2621265 () Bool)

(assert (=> b!6371745 (=> res!2621265 e!3868411)))

(assert (=> b!6371745 (= res!2621265 (not (= lt!2368451 lt!2368455)))))

(declare-fun lambda!351195 () Int)

(declare-fun lt!2368458 () Context!11334)

(declare-fun flatMap!1788 ((InoxSet Context!11334) Int) (InoxSet Context!11334))

(declare-fun derivationStepZipperUp!1457 (Context!11334 C!32836) (InoxSet Context!11334))

(assert (=> b!6371745 (= (flatMap!1788 lt!2368474 lambda!351195) (derivationStepZipperUp!1457 lt!2368458 (h!71473 s!2326)))))

(declare-fun lt!2368452 () Unit!158463)

(declare-fun lemmaFlatMapOnSingletonSet!1314 ((InoxSet Context!11334) Context!11334 Int) Unit!158463)

(assert (=> b!6371745 (= lt!2368452 (lemmaFlatMapOnSingletonSet!1314 lt!2368474 lt!2368458 lambda!351195))))

(declare-fun lt!2368467 () (InoxSet Context!11334))

(assert (=> b!6371745 (= lt!2368467 (derivationStepZipperUp!1457 lt!2368458 (h!71473 s!2326)))))

(declare-fun derivationStepZipper!2249 ((InoxSet Context!11334) C!32836) (InoxSet Context!11334))

(assert (=> b!6371745 (= lt!2368451 (derivationStepZipper!2249 lt!2368474 (h!71473 s!2326)))))

(assert (=> b!6371745 (= lt!2368474 (store ((as const (Array Context!11334 Bool)) false) lt!2368458 true))))

(assert (=> b!6371745 (= lt!2368458 (Context!11335 (Cons!65024 (reg!16612 (regOne!33078 r!7292)) lt!2368454)))))

(declare-fun b!6371746 () Bool)

(declare-fun lt!2368473 () Context!11334)

(assert (=> b!6371746 (= e!3868406 (inv!83954 lt!2368473))))

(declare-fun lt!2368469 () (InoxSet Context!11334))

(assert (=> b!6371746 (= lt!2368469 (derivationStepZipperUp!1457 lt!2368470 (h!71473 s!2326)))))

(declare-fun lt!2368465 () (InoxSet Context!11334))

(assert (=> b!6371746 (= lt!2368465 (derivationStepZipperUp!1457 lt!2368473 (h!71473 s!2326)))))

(assert (=> b!6371746 (= lt!2368473 (Context!11335 (Cons!65024 (reg!16612 (regOne!33078 r!7292)) Nil!65024)))))

(declare-fun b!6371747 () Bool)

(assert (=> b!6371747 (= e!3868401 (matchZipper!2295 lt!2368457 (t!378749 s!2326)))))

(declare-fun b!6371748 () Bool)

(declare-fun e!3868402 () Bool)

(assert (=> b!6371748 (= e!3868402 (not e!3868400))))

(declare-fun res!2621269 () Bool)

(assert (=> b!6371748 (=> res!2621269 e!3868400)))

(assert (=> b!6371748 (= res!2621269 (not ((_ is Cons!65026) zl!343)))))

(declare-fun lt!2368466 () Bool)

(declare-fun matchRSpec!3384 (Regex!16283 List!65149) Bool)

(assert (=> b!6371748 (= lt!2368466 (matchRSpec!3384 r!7292 s!2326))))

(declare-fun matchR!8466 (Regex!16283 List!65149) Bool)

(assert (=> b!6371748 (= lt!2368466 (matchR!8466 r!7292 s!2326))))

(declare-fun lt!2368456 () Unit!158463)

(declare-fun mainMatchTheorem!3384 (Regex!16283 List!65149) Unit!158463)

(assert (=> b!6371748 (= lt!2368456 (mainMatchTheorem!3384 r!7292 s!2326))))

(declare-fun b!6371749 () Bool)

(declare-fun tp!1773896 () Bool)

(declare-fun tp!1773898 () Bool)

(assert (=> b!6371749 (= e!3868412 (and tp!1773896 tp!1773898))))

(declare-fun b!6371750 () Bool)

(declare-fun tp_is_empty!41819 () Bool)

(assert (=> b!6371750 (= e!3868412 tp_is_empty!41819)))

(declare-fun b!6371751 () Bool)

(declare-fun Unit!158466 () Unit!158463)

(assert (=> b!6371751 (= e!3868405 Unit!158466)))

(declare-fun b!6371752 () Bool)

(declare-fun res!2621256 () Bool)

(assert (=> b!6371752 (=> res!2621256 e!3868411)))

(declare-fun lt!2368464 () Regex!16283)

(assert (=> b!6371752 (= res!2621256 (not (= lt!2368464 r!7292)))))

(assert (=> b!6371753 (= e!3868400 e!3868404)))

(declare-fun res!2621259 () Bool)

(assert (=> b!6371753 (=> res!2621259 e!3868404)))

(declare-fun lt!2368462 () Bool)

(assert (=> b!6371753 (= res!2621259 (or (not (= lt!2368466 lt!2368462)) ((_ is Nil!65025) s!2326)))))

(declare-fun Exists!3353 (Int) Bool)

(assert (=> b!6371753 (= (Exists!3353 lambda!351193) (Exists!3353 lambda!351194))))

(declare-fun lt!2368460 () Unit!158463)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1890 (Regex!16283 Regex!16283 List!65149) Unit!158463)

(assert (=> b!6371753 (= lt!2368460 (lemmaExistCutMatchRandMatchRSpecEquivalent!1890 (regOne!33078 r!7292) (regTwo!33078 r!7292) s!2326))))

(assert (=> b!6371753 (= lt!2368462 (Exists!3353 lambda!351193))))

(declare-datatypes ((tuple2!66524 0))(
  ( (tuple2!66525 (_1!36565 List!65149) (_2!36565 List!65149)) )
))
(declare-datatypes ((Option!16174 0))(
  ( (None!16173) (Some!16173 (v!52342 tuple2!66524)) )
))
(declare-fun isDefined!12877 (Option!16174) Bool)

(declare-fun findConcatSeparation!2588 (Regex!16283 Regex!16283 List!65149 List!65149 List!65149) Option!16174)

(assert (=> b!6371753 (= lt!2368462 (isDefined!12877 (findConcatSeparation!2588 (regOne!33078 r!7292) (regTwo!33078 r!7292) Nil!65025 s!2326 s!2326)))))

(declare-fun lt!2368468 () Unit!158463)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2352 (Regex!16283 Regex!16283 List!65149) Unit!158463)

(assert (=> b!6371753 (= lt!2368468 (lemmaFindConcatSeparationEquivalentToExists!2352 (regOne!33078 r!7292) (regTwo!33078 r!7292) s!2326))))

(declare-fun b!6371754 () Bool)

(declare-fun res!2621261 () Bool)

(assert (=> b!6371754 (=> res!2621261 e!3868406)))

(declare-fun unfocusZipper!2025 (List!65150) Regex!16283)

(assert (=> b!6371754 (= res!2621261 (not (= (unfocusZipper!2025 (Cons!65026 lt!2368458 Nil!65026)) (Concat!25128 (reg!16612 (regOne!33078 r!7292)) lt!2368461))))))

(declare-fun b!6371755 () Bool)

(declare-fun tp!1773902 () Bool)

(declare-fun tp!1773897 () Bool)

(assert (=> b!6371755 (= e!3868412 (and tp!1773902 tp!1773897))))

(declare-fun b!6371756 () Bool)

(declare-fun tp!1773894 () Bool)

(assert (=> b!6371756 (= e!3868413 tp!1773894)))

(declare-fun setNonEmpty!43448 () Bool)

(declare-fun tp!1773900 () Bool)

(declare-fun setElem!43448 () Context!11334)

(assert (=> setNonEmpty!43448 (= setRes!43448 (and tp!1773900 (inv!83954 setElem!43448) e!3868403))))

(declare-fun setRest!43448 () (InoxSet Context!11334))

(assert (=> setNonEmpty!43448 (= z!1189 ((_ map or) (store ((as const (Array Context!11334 Bool)) false) setElem!43448 true) setRest!43448))))

(declare-fun b!6371757 () Bool)

(declare-fun res!2621264 () Bool)

(assert (=> b!6371757 (=> res!2621264 e!3868400)))

(declare-fun generalisedConcat!1880 (List!65148) Regex!16283)

(assert (=> b!6371757 (= res!2621264 (not (= r!7292 (generalisedConcat!1880 (exprs!6167 (h!71474 zl!343))))))))

(declare-fun b!6371758 () Bool)

(declare-fun nullable!6276 (Regex!16283) Bool)

(assert (=> b!6371758 (= e!3868399 (nullable!6276 (regOne!33078 (regOne!33078 r!7292))))))

(declare-fun b!6371759 () Bool)

(declare-fun tp!1773901 () Bool)

(assert (=> b!6371759 (= e!3868414 (and tp_is_empty!41819 tp!1773901))))

(declare-fun b!6371760 () Bool)

(declare-fun tp!1773893 () Bool)

(assert (=> b!6371760 (= e!3868412 tp!1773893)))

(declare-fun b!6371761 () Bool)

(assert (=> b!6371761 (= e!3868407 e!3868402)))

(declare-fun res!2621263 () Bool)

(assert (=> b!6371761 (=> (not res!2621263) (not e!3868402))))

(assert (=> b!6371761 (= res!2621263 (= r!7292 lt!2368464))))

(assert (=> b!6371761 (= lt!2368464 (unfocusZipper!2025 zl!343))))

(declare-fun b!6371762 () Bool)

(declare-fun res!2621258 () Bool)

(assert (=> b!6371762 (=> (not res!2621258) (not e!3868407))))

(declare-fun toList!10067 ((InoxSet Context!11334)) List!65150)

(assert (=> b!6371762 (= res!2621258 (= (toList!10067 z!1189) zl!343))))

(assert (=> b!6371763 (= e!3868404 e!3868410)))

(declare-fun res!2621260 () Bool)

(assert (=> b!6371763 (=> res!2621260 e!3868410)))

(assert (=> b!6371763 (= res!2621260 (or (and ((_ is ElementMatch!16283) (regOne!33078 r!7292)) (= (c!1160374 (regOne!33078 r!7292)) (h!71473 s!2326))) ((_ is Union!16283) (regOne!33078 r!7292))))))

(declare-fun lt!2368459 () Unit!158463)

(assert (=> b!6371763 (= lt!2368459 e!3868405)))

(declare-fun c!1160373 () Bool)

(assert (=> b!6371763 (= c!1160373 (nullable!6276 (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> b!6371763 (= (flatMap!1788 z!1189 lambda!351195) (derivationStepZipperUp!1457 (h!71474 zl!343) (h!71473 s!2326)))))

(declare-fun lt!2368463 () Unit!158463)

(assert (=> b!6371763 (= lt!2368463 (lemmaFlatMapOnSingletonSet!1314 z!1189 (h!71474 zl!343) lambda!351195))))

(declare-fun lt!2368450 () Context!11334)

(assert (=> b!6371763 (= lt!2368457 (derivationStepZipperUp!1457 lt!2368450 (h!71473 s!2326)))))

(assert (=> b!6371763 (= lt!2368449 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (h!71474 zl!343))) lt!2368450 (h!71473 s!2326)))))

(assert (=> b!6371763 (= lt!2368450 (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun lt!2368472 () (InoxSet Context!11334))

(assert (=> b!6371763 (= lt!2368472 (derivationStepZipperUp!1457 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))) (h!71473 s!2326)))))

(assert (= (and start!631242 res!2621274) b!6371762))

(assert (= (and b!6371762 res!2621258) b!6371761))

(assert (= (and b!6371761 res!2621263) b!6371748))

(assert (= (and b!6371748 (not res!2621269)) b!6371741))

(assert (= (and b!6371741 (not res!2621270)) b!6371757))

(assert (= (and b!6371757 (not res!2621264)) b!6371739))

(assert (= (and b!6371739 (not res!2621267)) b!6371736))

(assert (= (and b!6371736 (not res!2621273)) b!6371743))

(assert (= (and b!6371743 (not res!2621255)) b!6371753))

(assert (= (and b!6371753 (not res!2621259)) b!6371733))

(assert (= (and b!6371733 (not res!2621266)) b!6371763))

(assert (= (and b!6371763 c!1160373) b!6371732))

(assert (= (and b!6371763 (not c!1160373)) b!6371751))

(assert (= (and b!6371732 (not res!2621275)) b!6371747))

(assert (= (and b!6371763 (not res!2621260)) b!6371740))

(assert (= (and b!6371740 res!2621262) b!6371758))

(assert (= (and b!6371740 (not res!2621276)) b!6371735))

(assert (= (and b!6371735 (not res!2621272)) b!6371737))

(assert (= (and b!6371737 (not res!2621257)) b!6371745))

(assert (= (and b!6371745 (not res!2621265)) b!6371742))

(assert (= (and b!6371742 (not res!2621268)) b!6371752))

(assert (= (and b!6371752 (not res!2621256)) b!6371734))

(assert (= (and b!6371734 (not res!2621271)) b!6371754))

(assert (= (and b!6371754 (not res!2621261)) b!6371746))

(assert (= (and start!631242 ((_ is ElementMatch!16283) r!7292)) b!6371750))

(assert (= (and start!631242 ((_ is Concat!25128) r!7292)) b!6371749))

(assert (= (and start!631242 ((_ is Star!16283) r!7292)) b!6371760))

(assert (= (and start!631242 ((_ is Union!16283) r!7292)) b!6371755))

(assert (= (and start!631242 condSetEmpty!43448) setIsEmpty!43448))

(assert (= (and start!631242 (not condSetEmpty!43448)) setNonEmpty!43448))

(assert (= setNonEmpty!43448 b!6371738))

(assert (= b!6371744 b!6371756))

(assert (= (and start!631242 ((_ is Cons!65026) zl!343)) b!6371744))

(assert (= (and start!631242 ((_ is Cons!65025) s!2326)) b!6371759))

(declare-fun m!7174222 () Bool)

(assert (=> b!6371732 m!7174222))

(declare-fun m!7174224 () Bool)

(assert (=> b!6371732 m!7174224))

(declare-fun m!7174226 () Bool)

(assert (=> b!6371732 m!7174226))

(declare-fun m!7174228 () Bool)

(assert (=> b!6371762 m!7174228))

(declare-fun m!7174230 () Bool)

(assert (=> b!6371747 m!7174230))

(declare-fun m!7174232 () Bool)

(assert (=> b!6371742 m!7174232))

(declare-fun m!7174234 () Bool)

(assert (=> b!6371742 m!7174234))

(declare-fun m!7174236 () Bool)

(assert (=> b!6371754 m!7174236))

(declare-fun m!7174238 () Bool)

(assert (=> b!6371763 m!7174238))

(declare-fun m!7174240 () Bool)

(assert (=> b!6371763 m!7174240))

(declare-fun m!7174242 () Bool)

(assert (=> b!6371763 m!7174242))

(declare-fun m!7174244 () Bool)

(assert (=> b!6371763 m!7174244))

(declare-fun m!7174246 () Bool)

(assert (=> b!6371763 m!7174246))

(declare-fun m!7174248 () Bool)

(assert (=> b!6371763 m!7174248))

(declare-fun m!7174250 () Bool)

(assert (=> b!6371763 m!7174250))

(declare-fun m!7174252 () Bool)

(assert (=> start!631242 m!7174252))

(declare-fun m!7174254 () Bool)

(assert (=> b!6371745 m!7174254))

(declare-fun m!7174256 () Bool)

(assert (=> b!6371745 m!7174256))

(declare-fun m!7174258 () Bool)

(assert (=> b!6371745 m!7174258))

(declare-fun m!7174260 () Bool)

(assert (=> b!6371745 m!7174260))

(declare-fun m!7174262 () Bool)

(assert (=> b!6371745 m!7174262))

(declare-fun m!7174264 () Bool)

(assert (=> setNonEmpty!43448 m!7174264))

(declare-fun m!7174266 () Bool)

(assert (=> b!6371741 m!7174266))

(declare-fun m!7174268 () Bool)

(assert (=> b!6371748 m!7174268))

(declare-fun m!7174270 () Bool)

(assert (=> b!6371748 m!7174270))

(declare-fun m!7174272 () Bool)

(assert (=> b!6371748 m!7174272))

(declare-fun m!7174274 () Bool)

(assert (=> b!6371753 m!7174274))

(declare-fun m!7174276 () Bool)

(assert (=> b!6371753 m!7174276))

(declare-fun m!7174278 () Bool)

(assert (=> b!6371753 m!7174278))

(declare-fun m!7174280 () Bool)

(assert (=> b!6371753 m!7174280))

(assert (=> b!6371753 m!7174280))

(declare-fun m!7174282 () Bool)

(assert (=> b!6371753 m!7174282))

(assert (=> b!6371753 m!7174276))

(declare-fun m!7174284 () Bool)

(assert (=> b!6371753 m!7174284))

(declare-fun m!7174286 () Bool)

(assert (=> b!6371744 m!7174286))

(declare-fun m!7174288 () Bool)

(assert (=> b!6371737 m!7174288))

(declare-fun m!7174290 () Bool)

(assert (=> b!6371761 m!7174290))

(declare-fun m!7174292 () Bool)

(assert (=> b!6371736 m!7174292))

(assert (=> b!6371736 m!7174292))

(declare-fun m!7174294 () Bool)

(assert (=> b!6371736 m!7174294))

(declare-fun m!7174296 () Bool)

(assert (=> b!6371757 m!7174296))

(declare-fun m!7174298 () Bool)

(assert (=> b!6371733 m!7174298))

(declare-fun m!7174300 () Bool)

(assert (=> b!6371758 m!7174300))

(declare-fun m!7174302 () Bool)

(assert (=> b!6371746 m!7174302))

(declare-fun m!7174304 () Bool)

(assert (=> b!6371746 m!7174304))

(declare-fun m!7174306 () Bool)

(assert (=> b!6371746 m!7174306))

(check-sat (not b!6371759) (not b!6371763) (not b!6371749) (not b!6371755) (not b!6371748) (not b!6371757) (not b!6371754) (not b!6371756) (not b!6371733) (not start!631242) (not b!6371732) (not b!6371744) (not setNonEmpty!43448) (not b!6371760) (not b!6371746) (not b!6371762) (not b!6371737) (not b!6371745) tp_is_empty!41819 (not b!6371761) (not b!6371736) (not b!6371738) (not b!6371747) (not b!6371742) (not b!6371758) (not b!6371741) (not b!6371753))
(check-sat)
(get-model)

(declare-fun d!1998343 () Bool)

(declare-fun lambda!351220 () Int)

(declare-fun forall!15461 (List!65148 Int) Bool)

(assert (=> d!1998343 (= (inv!83954 (h!71474 zl!343)) (forall!15461 (exprs!6167 (h!71474 zl!343)) lambda!351220))))

(declare-fun bs!1595736 () Bool)

(assert (= bs!1595736 d!1998343))

(declare-fun m!7174442 () Bool)

(assert (=> bs!1595736 m!7174442))

(assert (=> b!6371744 d!1998343))

(declare-fun d!1998351 () Bool)

(declare-fun lt!2368511 () Regex!16283)

(assert (=> d!1998351 (validRegex!8019 lt!2368511)))

(assert (=> d!1998351 (= lt!2368511 (generalisedUnion!2127 (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026))))))

(assert (=> d!1998351 (= (unfocusZipper!2025 (Cons!65026 lt!2368458 Nil!65026)) lt!2368511)))

(declare-fun bs!1595737 () Bool)

(assert (= bs!1595737 d!1998351))

(declare-fun m!7174468 () Bool)

(assert (=> bs!1595737 m!7174468))

(declare-fun m!7174470 () Bool)

(assert (=> bs!1595737 m!7174470))

(assert (=> bs!1595737 m!7174470))

(declare-fun m!7174472 () Bool)

(assert (=> bs!1595737 m!7174472))

(assert (=> b!6371754 d!1998351))

(declare-fun d!1998361 () Bool)

(declare-fun choose!47360 ((InoxSet Context!11334) Int) (InoxSet Context!11334))

(assert (=> d!1998361 (= (flatMap!1788 lt!2368474 lambda!351195) (choose!47360 lt!2368474 lambda!351195))))

(declare-fun bs!1595738 () Bool)

(assert (= bs!1595738 d!1998361))

(declare-fun m!7174474 () Bool)

(assert (=> bs!1595738 m!7174474))

(assert (=> b!6371745 d!1998361))

(declare-fun b!6371978 () Bool)

(declare-fun e!3868540 () (InoxSet Context!11334))

(assert (=> b!6371978 (= e!3868540 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544125 () Bool)

(declare-fun call!544130 () (InoxSet Context!11334))

(assert (=> bm!544125 (= call!544130 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 lt!2368458)) (Context!11335 (t!378748 (exprs!6167 lt!2368458))) (h!71473 s!2326)))))

(declare-fun d!1998363 () Bool)

(declare-fun c!1160447 () Bool)

(declare-fun e!3868541 () Bool)

(assert (=> d!1998363 (= c!1160447 e!3868541)))

(declare-fun res!2621343 () Bool)

(assert (=> d!1998363 (=> (not res!2621343) (not e!3868541))))

(assert (=> d!1998363 (= res!2621343 ((_ is Cons!65024) (exprs!6167 lt!2368458)))))

(declare-fun e!3868539 () (InoxSet Context!11334))

(assert (=> d!1998363 (= (derivationStepZipperUp!1457 lt!2368458 (h!71473 s!2326)) e!3868539)))

(declare-fun b!6371979 () Bool)

(assert (=> b!6371979 (= e!3868539 e!3868540)))

(declare-fun c!1160448 () Bool)

(assert (=> b!6371979 (= c!1160448 ((_ is Cons!65024) (exprs!6167 lt!2368458)))))

(declare-fun b!6371980 () Bool)

(assert (=> b!6371980 (= e!3868540 call!544130)))

(declare-fun b!6371981 () Bool)

(assert (=> b!6371981 (= e!3868541 (nullable!6276 (h!71472 (exprs!6167 lt!2368458))))))

(declare-fun b!6371982 () Bool)

(assert (=> b!6371982 (= e!3868539 ((_ map or) call!544130 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 lt!2368458))) (h!71473 s!2326))))))

(assert (= (and d!1998363 res!2621343) b!6371981))

(assert (= (and d!1998363 c!1160447) b!6371982))

(assert (= (and d!1998363 (not c!1160447)) b!6371979))

(assert (= (and b!6371979 c!1160448) b!6371980))

(assert (= (and b!6371979 (not c!1160448)) b!6371978))

(assert (= (or b!6371982 b!6371980) bm!544125))

(declare-fun m!7174512 () Bool)

(assert (=> bm!544125 m!7174512))

(declare-fun m!7174514 () Bool)

(assert (=> b!6371981 m!7174514))

(declare-fun m!7174516 () Bool)

(assert (=> b!6371982 m!7174516))

(assert (=> b!6371745 d!1998363))

(declare-fun d!1998377 () Bool)

(declare-fun dynLambda!25797 (Int Context!11334) (InoxSet Context!11334))

(assert (=> d!1998377 (= (flatMap!1788 lt!2368474 lambda!351195) (dynLambda!25797 lambda!351195 lt!2368458))))

(declare-fun lt!2368515 () Unit!158463)

(declare-fun choose!47361 ((InoxSet Context!11334) Context!11334 Int) Unit!158463)

(assert (=> d!1998377 (= lt!2368515 (choose!47361 lt!2368474 lt!2368458 lambda!351195))))

(assert (=> d!1998377 (= lt!2368474 (store ((as const (Array Context!11334 Bool)) false) lt!2368458 true))))

(assert (=> d!1998377 (= (lemmaFlatMapOnSingletonSet!1314 lt!2368474 lt!2368458 lambda!351195) lt!2368515)))

(declare-fun b_lambda!242145 () Bool)

(assert (=> (not b_lambda!242145) (not d!1998377)))

(declare-fun bs!1595747 () Bool)

(assert (= bs!1595747 d!1998377))

(assert (=> bs!1595747 m!7174254))

(declare-fun m!7174530 () Bool)

(assert (=> bs!1595747 m!7174530))

(declare-fun m!7174532 () Bool)

(assert (=> bs!1595747 m!7174532))

(assert (=> bs!1595747 m!7174258))

(assert (=> b!6371745 d!1998377))

(declare-fun bs!1595753 () Bool)

(declare-fun d!1998385 () Bool)

(assert (= bs!1595753 (and d!1998385 b!6371763)))

(declare-fun lambda!351227 () Int)

(assert (=> bs!1595753 (= lambda!351227 lambda!351195)))

(assert (=> d!1998385 true))

(assert (=> d!1998385 (= (derivationStepZipper!2249 lt!2368474 (h!71473 s!2326)) (flatMap!1788 lt!2368474 lambda!351227))))

(declare-fun bs!1595754 () Bool)

(assert (= bs!1595754 d!1998385))

(declare-fun m!7174552 () Bool)

(assert (=> bs!1595754 m!7174552))

(assert (=> b!6371745 d!1998385))

(declare-fun bs!1595762 () Bool)

(declare-fun d!1998389 () Bool)

(assert (= bs!1595762 (and d!1998389 d!1998343)))

(declare-fun lambda!351236 () Int)

(assert (=> bs!1595762 (= lambda!351236 lambda!351220)))

(declare-fun b!6372092 () Bool)

(declare-fun e!3868604 () Bool)

(declare-fun e!3868606 () Bool)

(assert (=> b!6372092 (= e!3868604 e!3868606)))

(declare-fun c!1160491 () Bool)

(assert (=> b!6372092 (= c!1160491 (isEmpty!37141 (unfocusZipperList!1704 zl!343)))))

(declare-fun b!6372093 () Bool)

(declare-fun e!3868603 () Bool)

(assert (=> b!6372093 (= e!3868606 e!3868603)))

(declare-fun c!1160487 () Bool)

(declare-fun tail!12143 (List!65148) List!65148)

(assert (=> b!6372093 (= c!1160487 (isEmpty!37141 (tail!12143 (unfocusZipperList!1704 zl!343))))))

(declare-fun b!6372094 () Bool)

(declare-fun e!3868607 () Regex!16283)

(declare-fun e!3868605 () Regex!16283)

(assert (=> b!6372094 (= e!3868607 e!3868605)))

(declare-fun c!1160489 () Bool)

(assert (=> b!6372094 (= c!1160489 ((_ is Cons!65024) (unfocusZipperList!1704 zl!343)))))

(declare-fun b!6372095 () Bool)

(declare-fun lt!2368523 () Regex!16283)

(declare-fun isUnion!1121 (Regex!16283) Bool)

(assert (=> b!6372095 (= e!3868603 (isUnion!1121 lt!2368523))))

(declare-fun b!6372097 () Bool)

(assert (=> b!6372097 (= e!3868605 (Union!16283 (h!71472 (unfocusZipperList!1704 zl!343)) (generalisedUnion!2127 (t!378748 (unfocusZipperList!1704 zl!343)))))))

(declare-fun b!6372098 () Bool)

(declare-fun head!13058 (List!65148) Regex!16283)

(assert (=> b!6372098 (= e!3868603 (= lt!2368523 (head!13058 (unfocusZipperList!1704 zl!343))))))

(declare-fun b!6372096 () Bool)

(assert (=> b!6372096 (= e!3868607 (h!71472 (unfocusZipperList!1704 zl!343)))))

(assert (=> d!1998389 e!3868604))

(declare-fun res!2621375 () Bool)

(assert (=> d!1998389 (=> (not res!2621375) (not e!3868604))))

(assert (=> d!1998389 (= res!2621375 (validRegex!8019 lt!2368523))))

(assert (=> d!1998389 (= lt!2368523 e!3868607)))

(declare-fun c!1160488 () Bool)

(declare-fun e!3868610 () Bool)

(assert (=> d!1998389 (= c!1160488 e!3868610)))

(declare-fun res!2621376 () Bool)

(assert (=> d!1998389 (=> (not res!2621376) (not e!3868610))))

(assert (=> d!1998389 (= res!2621376 ((_ is Cons!65024) (unfocusZipperList!1704 zl!343)))))

(assert (=> d!1998389 (forall!15461 (unfocusZipperList!1704 zl!343) lambda!351236)))

(assert (=> d!1998389 (= (generalisedUnion!2127 (unfocusZipperList!1704 zl!343)) lt!2368523)))

(declare-fun b!6372099 () Bool)

(declare-fun isEmptyLang!1691 (Regex!16283) Bool)

(assert (=> b!6372099 (= e!3868606 (isEmptyLang!1691 lt!2368523))))

(declare-fun b!6372100 () Bool)

(assert (=> b!6372100 (= e!3868605 EmptyLang!16283)))

(declare-fun b!6372101 () Bool)

(assert (=> b!6372101 (= e!3868610 (isEmpty!37141 (t!378748 (unfocusZipperList!1704 zl!343))))))

(assert (= (and d!1998389 res!2621376) b!6372101))

(assert (= (and d!1998389 c!1160488) b!6372096))

(assert (= (and d!1998389 (not c!1160488)) b!6372094))

(assert (= (and b!6372094 c!1160489) b!6372097))

(assert (= (and b!6372094 (not c!1160489)) b!6372100))

(assert (= (and d!1998389 res!2621375) b!6372092))

(assert (= (and b!6372092 c!1160491) b!6372099))

(assert (= (and b!6372092 (not c!1160491)) b!6372093))

(assert (= (and b!6372093 c!1160487) b!6372098))

(assert (= (and b!6372093 (not c!1160487)) b!6372095))

(declare-fun m!7174560 () Bool)

(assert (=> b!6372101 m!7174560))

(declare-fun m!7174562 () Bool)

(assert (=> b!6372097 m!7174562))

(declare-fun m!7174564 () Bool)

(assert (=> d!1998389 m!7174564))

(assert (=> d!1998389 m!7174292))

(declare-fun m!7174566 () Bool)

(assert (=> d!1998389 m!7174566))

(declare-fun m!7174568 () Bool)

(assert (=> b!6372099 m!7174568))

(declare-fun m!7174570 () Bool)

(assert (=> b!6372095 m!7174570))

(assert (=> b!6372092 m!7174292))

(declare-fun m!7174572 () Bool)

(assert (=> b!6372092 m!7174572))

(assert (=> b!6372093 m!7174292))

(declare-fun m!7174574 () Bool)

(assert (=> b!6372093 m!7174574))

(assert (=> b!6372093 m!7174574))

(declare-fun m!7174576 () Bool)

(assert (=> b!6372093 m!7174576))

(assert (=> b!6372098 m!7174292))

(declare-fun m!7174578 () Bool)

(assert (=> b!6372098 m!7174578))

(assert (=> b!6371736 d!1998389))

(declare-fun bs!1595765 () Bool)

(declare-fun d!1998393 () Bool)

(assert (= bs!1595765 (and d!1998393 d!1998343)))

(declare-fun lambda!351239 () Int)

(assert (=> bs!1595765 (= lambda!351239 lambda!351220)))

(declare-fun bs!1595766 () Bool)

(assert (= bs!1595766 (and d!1998393 d!1998389)))

(assert (=> bs!1595766 (= lambda!351239 lambda!351236)))

(declare-fun lt!2368530 () List!65148)

(assert (=> d!1998393 (forall!15461 lt!2368530 lambda!351239)))

(declare-fun e!3868634 () List!65148)

(assert (=> d!1998393 (= lt!2368530 e!3868634)))

(declare-fun c!1160502 () Bool)

(assert (=> d!1998393 (= c!1160502 ((_ is Cons!65026) zl!343))))

(assert (=> d!1998393 (= (unfocusZipperList!1704 zl!343) lt!2368530)))

(declare-fun b!6372154 () Bool)

(assert (=> b!6372154 (= e!3868634 (Cons!65024 (generalisedConcat!1880 (exprs!6167 (h!71474 zl!343))) (unfocusZipperList!1704 (t!378750 zl!343))))))

(declare-fun b!6372155 () Bool)

(assert (=> b!6372155 (= e!3868634 Nil!65024)))

(assert (= (and d!1998393 c!1160502) b!6372154))

(assert (= (and d!1998393 (not c!1160502)) b!6372155))

(declare-fun m!7174592 () Bool)

(assert (=> d!1998393 m!7174592))

(assert (=> b!6372154 m!7174296))

(declare-fun m!7174594 () Bool)

(assert (=> b!6372154 m!7174594))

(assert (=> b!6371736 d!1998393))

(declare-fun bs!1595767 () Bool)

(declare-fun d!1998399 () Bool)

(assert (= bs!1595767 (and d!1998399 d!1998343)))

(declare-fun lambda!351240 () Int)

(assert (=> bs!1595767 (= lambda!351240 lambda!351220)))

(declare-fun bs!1595768 () Bool)

(assert (= bs!1595768 (and d!1998399 d!1998389)))

(assert (=> bs!1595768 (= lambda!351240 lambda!351236)))

(declare-fun bs!1595769 () Bool)

(assert (= bs!1595769 (and d!1998399 d!1998393)))

(assert (=> bs!1595769 (= lambda!351240 lambda!351239)))

(assert (=> d!1998399 (= (inv!83954 setElem!43448) (forall!15461 (exprs!6167 setElem!43448) lambda!351240))))

(declare-fun bs!1595770 () Bool)

(assert (= bs!1595770 d!1998399))

(declare-fun m!7174596 () Bool)

(assert (=> bs!1595770 m!7174596))

(assert (=> setNonEmpty!43448 d!1998399))

(declare-fun d!1998401 () Bool)

(declare-fun res!2621413 () Bool)

(declare-fun e!3868674 () Bool)

(assert (=> d!1998401 (=> res!2621413 e!3868674)))

(assert (=> d!1998401 (= res!2621413 ((_ is ElementMatch!16283) r!7292))))

(assert (=> d!1998401 (= (validRegex!8019 r!7292) e!3868674)))

(declare-fun b!6372218 () Bool)

(declare-fun e!3868675 () Bool)

(assert (=> b!6372218 (= e!3868674 e!3868675)))

(declare-fun c!1160508 () Bool)

(assert (=> b!6372218 (= c!1160508 ((_ is Star!16283) r!7292))))

(declare-fun b!6372219 () Bool)

(declare-fun res!2621411 () Bool)

(declare-fun e!3868670 () Bool)

(assert (=> b!6372219 (=> res!2621411 e!3868670)))

(assert (=> b!6372219 (= res!2621411 (not ((_ is Concat!25128) r!7292)))))

(declare-fun e!3868673 () Bool)

(assert (=> b!6372219 (= e!3868673 e!3868670)))

(declare-fun bm!544143 () Bool)

(declare-fun call!544148 () Bool)

(declare-fun c!1160507 () Bool)

(assert (=> bm!544143 (= call!544148 (validRegex!8019 (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292))))))

(declare-fun b!6372220 () Bool)

(declare-fun e!3868671 () Bool)

(declare-fun call!544149 () Bool)

(assert (=> b!6372220 (= e!3868671 call!544149)))

(declare-fun b!6372221 () Bool)

(assert (=> b!6372221 (= e!3868670 e!3868671)))

(declare-fun res!2621415 () Bool)

(assert (=> b!6372221 (=> (not res!2621415) (not e!3868671))))

(assert (=> b!6372221 (= res!2621415 call!544148)))

(declare-fun b!6372222 () Bool)

(declare-fun e!3868676 () Bool)

(assert (=> b!6372222 (= e!3868675 e!3868676)))

(declare-fun res!2621414 () Bool)

(assert (=> b!6372222 (= res!2621414 (not (nullable!6276 (reg!16612 r!7292))))))

(assert (=> b!6372222 (=> (not res!2621414) (not e!3868676))))

(declare-fun b!6372223 () Bool)

(declare-fun res!2621412 () Bool)

(declare-fun e!3868672 () Bool)

(assert (=> b!6372223 (=> (not res!2621412) (not e!3868672))))

(assert (=> b!6372223 (= res!2621412 call!544148)))

(assert (=> b!6372223 (= e!3868673 e!3868672)))

(declare-fun call!544150 () Bool)

(declare-fun bm!544144 () Bool)

(assert (=> bm!544144 (= call!544150 (validRegex!8019 (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292)))))))

(declare-fun b!6372224 () Bool)

(assert (=> b!6372224 (= e!3868676 call!544150)))

(declare-fun bm!544145 () Bool)

(assert (=> bm!544145 (= call!544149 call!544150)))

(declare-fun b!6372225 () Bool)

(assert (=> b!6372225 (= e!3868675 e!3868673)))

(assert (=> b!6372225 (= c!1160507 ((_ is Union!16283) r!7292))))

(declare-fun b!6372226 () Bool)

(assert (=> b!6372226 (= e!3868672 call!544149)))

(assert (= (and d!1998401 (not res!2621413)) b!6372218))

(assert (= (and b!6372218 c!1160508) b!6372222))

(assert (= (and b!6372218 (not c!1160508)) b!6372225))

(assert (= (and b!6372222 res!2621414) b!6372224))

(assert (= (and b!6372225 c!1160507) b!6372223))

(assert (= (and b!6372225 (not c!1160507)) b!6372219))

(assert (= (and b!6372223 res!2621412) b!6372226))

(assert (= (and b!6372219 (not res!2621411)) b!6372221))

(assert (= (and b!6372221 res!2621415) b!6372220))

(assert (= (or b!6372226 b!6372220) bm!544145))

(assert (= (or b!6372223 b!6372221) bm!544143))

(assert (= (or b!6372224 bm!544145) bm!544144))

(declare-fun m!7174602 () Bool)

(assert (=> bm!544143 m!7174602))

(declare-fun m!7174604 () Bool)

(assert (=> b!6372222 m!7174604))

(declare-fun m!7174606 () Bool)

(assert (=> bm!544144 m!7174606))

(assert (=> start!631242 d!1998401))

(declare-fun bs!1595773 () Bool)

(declare-fun d!1998407 () Bool)

(assert (= bs!1595773 (and d!1998407 d!1998343)))

(declare-fun lambda!351241 () Int)

(assert (=> bs!1595773 (= lambda!351241 lambda!351220)))

(declare-fun bs!1595774 () Bool)

(assert (= bs!1595774 (and d!1998407 d!1998389)))

(assert (=> bs!1595774 (= lambda!351241 lambda!351236)))

(declare-fun bs!1595775 () Bool)

(assert (= bs!1595775 (and d!1998407 d!1998393)))

(assert (=> bs!1595775 (= lambda!351241 lambda!351239)))

(declare-fun bs!1595776 () Bool)

(assert (= bs!1595776 (and d!1998407 d!1998399)))

(assert (=> bs!1595776 (= lambda!351241 lambda!351240)))

(assert (=> d!1998407 (= (inv!83954 lt!2368473) (forall!15461 (exprs!6167 lt!2368473) lambda!351241))))

(declare-fun bs!1595777 () Bool)

(assert (= bs!1595777 d!1998407))

(declare-fun m!7174608 () Bool)

(assert (=> bs!1595777 m!7174608))

(assert (=> b!6371746 d!1998407))

(declare-fun b!6372227 () Bool)

(declare-fun e!3868678 () (InoxSet Context!11334))

(assert (=> b!6372227 (= e!3868678 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544146 () Bool)

(declare-fun call!544151 () (InoxSet Context!11334))

(assert (=> bm!544146 (= call!544151 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 lt!2368470)) (Context!11335 (t!378748 (exprs!6167 lt!2368470))) (h!71473 s!2326)))))

(declare-fun d!1998409 () Bool)

(declare-fun c!1160509 () Bool)

(declare-fun e!3868679 () Bool)

(assert (=> d!1998409 (= c!1160509 e!3868679)))

(declare-fun res!2621416 () Bool)

(assert (=> d!1998409 (=> (not res!2621416) (not e!3868679))))

(assert (=> d!1998409 (= res!2621416 ((_ is Cons!65024) (exprs!6167 lt!2368470)))))

(declare-fun e!3868677 () (InoxSet Context!11334))

(assert (=> d!1998409 (= (derivationStepZipperUp!1457 lt!2368470 (h!71473 s!2326)) e!3868677)))

(declare-fun b!6372228 () Bool)

(assert (=> b!6372228 (= e!3868677 e!3868678)))

(declare-fun c!1160510 () Bool)

(assert (=> b!6372228 (= c!1160510 ((_ is Cons!65024) (exprs!6167 lt!2368470)))))

(declare-fun b!6372229 () Bool)

(assert (=> b!6372229 (= e!3868678 call!544151)))

(declare-fun b!6372230 () Bool)

(assert (=> b!6372230 (= e!3868679 (nullable!6276 (h!71472 (exprs!6167 lt!2368470))))))

(declare-fun b!6372231 () Bool)

(assert (=> b!6372231 (= e!3868677 ((_ map or) call!544151 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 lt!2368470))) (h!71473 s!2326))))))

(assert (= (and d!1998409 res!2621416) b!6372230))

(assert (= (and d!1998409 c!1160509) b!6372231))

(assert (= (and d!1998409 (not c!1160509)) b!6372228))

(assert (= (and b!6372228 c!1160510) b!6372229))

(assert (= (and b!6372228 (not c!1160510)) b!6372227))

(assert (= (or b!6372231 b!6372229) bm!544146))

(declare-fun m!7174610 () Bool)

(assert (=> bm!544146 m!7174610))

(declare-fun m!7174612 () Bool)

(assert (=> b!6372230 m!7174612))

(declare-fun m!7174614 () Bool)

(assert (=> b!6372231 m!7174614))

(assert (=> b!6371746 d!1998409))

(declare-fun b!6372232 () Bool)

(declare-fun e!3868681 () (InoxSet Context!11334))

(assert (=> b!6372232 (= e!3868681 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544147 () Bool)

(declare-fun call!544152 () (InoxSet Context!11334))

(assert (=> bm!544147 (= call!544152 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 lt!2368473)) (Context!11335 (t!378748 (exprs!6167 lt!2368473))) (h!71473 s!2326)))))

(declare-fun d!1998411 () Bool)

(declare-fun c!1160511 () Bool)

(declare-fun e!3868682 () Bool)

(assert (=> d!1998411 (= c!1160511 e!3868682)))

(declare-fun res!2621417 () Bool)

(assert (=> d!1998411 (=> (not res!2621417) (not e!3868682))))

(assert (=> d!1998411 (= res!2621417 ((_ is Cons!65024) (exprs!6167 lt!2368473)))))

(declare-fun e!3868680 () (InoxSet Context!11334))

(assert (=> d!1998411 (= (derivationStepZipperUp!1457 lt!2368473 (h!71473 s!2326)) e!3868680)))

(declare-fun b!6372233 () Bool)

(assert (=> b!6372233 (= e!3868680 e!3868681)))

(declare-fun c!1160512 () Bool)

(assert (=> b!6372233 (= c!1160512 ((_ is Cons!65024) (exprs!6167 lt!2368473)))))

(declare-fun b!6372234 () Bool)

(assert (=> b!6372234 (= e!3868681 call!544152)))

(declare-fun b!6372235 () Bool)

(assert (=> b!6372235 (= e!3868682 (nullable!6276 (h!71472 (exprs!6167 lt!2368473))))))

(declare-fun b!6372236 () Bool)

(assert (=> b!6372236 (= e!3868680 ((_ map or) call!544152 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 lt!2368473))) (h!71473 s!2326))))))

(assert (= (and d!1998411 res!2621417) b!6372235))

(assert (= (and d!1998411 c!1160511) b!6372236))

(assert (= (and d!1998411 (not c!1160511)) b!6372233))

(assert (= (and b!6372233 c!1160512) b!6372234))

(assert (= (and b!6372233 (not c!1160512)) b!6372232))

(assert (= (or b!6372236 b!6372234) bm!544147))

(declare-fun m!7174616 () Bool)

(assert (=> bm!544147 m!7174616))

(declare-fun m!7174618 () Bool)

(assert (=> b!6372235 m!7174618))

(declare-fun m!7174620 () Bool)

(assert (=> b!6372236 m!7174620))

(assert (=> b!6371746 d!1998411))

(declare-fun bs!1595778 () Bool)

(declare-fun b!6372278 () Bool)

(assert (= bs!1595778 (and b!6372278 b!6371753)))

(declare-fun lambda!351246 () Int)

(assert (=> bs!1595778 (not (= lambda!351246 lambda!351193))))

(assert (=> bs!1595778 (not (= lambda!351246 lambda!351194))))

(assert (=> b!6372278 true))

(assert (=> b!6372278 true))

(declare-fun bs!1595779 () Bool)

(declare-fun b!6372273 () Bool)

(assert (= bs!1595779 (and b!6372273 b!6371753)))

(declare-fun lambda!351247 () Int)

(assert (=> bs!1595779 (not (= lambda!351247 lambda!351193))))

(assert (=> bs!1595779 (= lambda!351247 lambda!351194)))

(declare-fun bs!1595780 () Bool)

(assert (= bs!1595780 (and b!6372273 b!6372278)))

(assert (=> bs!1595780 (not (= lambda!351247 lambda!351246))))

(assert (=> b!6372273 true))

(assert (=> b!6372273 true))

(declare-fun b!6372269 () Bool)

(declare-fun e!3868705 () Bool)

(assert (=> b!6372269 (= e!3868705 (= s!2326 (Cons!65025 (c!1160374 r!7292) Nil!65025)))))

(declare-fun b!6372270 () Bool)

(declare-fun e!3868702 () Bool)

(declare-fun e!3868704 () Bool)

(assert (=> b!6372270 (= e!3868702 e!3868704)))

(declare-fun res!2621435 () Bool)

(assert (=> b!6372270 (= res!2621435 (not ((_ is EmptyLang!16283) r!7292)))))

(assert (=> b!6372270 (=> (not res!2621435) (not e!3868704))))

(declare-fun b!6372271 () Bool)

(declare-fun e!3868706 () Bool)

(declare-fun e!3868703 () Bool)

(assert (=> b!6372271 (= e!3868706 e!3868703)))

(declare-fun c!1160521 () Bool)

(assert (=> b!6372271 (= c!1160521 ((_ is Star!16283) r!7292))))

(declare-fun b!6372272 () Bool)

(declare-fun e!3868701 () Bool)

(assert (=> b!6372272 (= e!3868701 (matchRSpec!3384 (regTwo!33079 r!7292) s!2326))))

(declare-fun call!544157 () Bool)

(assert (=> b!6372273 (= e!3868703 call!544157)))

(declare-fun d!1998413 () Bool)

(declare-fun c!1160522 () Bool)

(assert (=> d!1998413 (= c!1160522 ((_ is EmptyExpr!16283) r!7292))))

(assert (=> d!1998413 (= (matchRSpec!3384 r!7292 s!2326) e!3868702)))

(declare-fun b!6372274 () Bool)

(declare-fun c!1160524 () Bool)

(assert (=> b!6372274 (= c!1160524 ((_ is ElementMatch!16283) r!7292))))

(assert (=> b!6372274 (= e!3868704 e!3868705)))

(declare-fun b!6372275 () Bool)

(declare-fun res!2621436 () Bool)

(declare-fun e!3868707 () Bool)

(assert (=> b!6372275 (=> res!2621436 e!3868707)))

(declare-fun call!544158 () Bool)

(assert (=> b!6372275 (= res!2621436 call!544158)))

(assert (=> b!6372275 (= e!3868703 e!3868707)))

(declare-fun b!6372276 () Bool)

(declare-fun c!1160523 () Bool)

(assert (=> b!6372276 (= c!1160523 ((_ is Union!16283) r!7292))))

(assert (=> b!6372276 (= e!3868705 e!3868706)))

(declare-fun b!6372277 () Bool)

(assert (=> b!6372277 (= e!3868702 call!544158)))

(declare-fun bm!544152 () Bool)

(declare-fun isEmpty!37145 (List!65149) Bool)

(assert (=> bm!544152 (= call!544158 (isEmpty!37145 s!2326))))

(assert (=> b!6372278 (= e!3868707 call!544157)))

(declare-fun b!6372279 () Bool)

(assert (=> b!6372279 (= e!3868706 e!3868701)))

(declare-fun res!2621434 () Bool)

(assert (=> b!6372279 (= res!2621434 (matchRSpec!3384 (regOne!33079 r!7292) s!2326))))

(assert (=> b!6372279 (=> res!2621434 e!3868701)))

(declare-fun bm!544153 () Bool)

(assert (=> bm!544153 (= call!544157 (Exists!3353 (ite c!1160521 lambda!351246 lambda!351247)))))

(assert (= (and d!1998413 c!1160522) b!6372277))

(assert (= (and d!1998413 (not c!1160522)) b!6372270))

(assert (= (and b!6372270 res!2621435) b!6372274))

(assert (= (and b!6372274 c!1160524) b!6372269))

(assert (= (and b!6372274 (not c!1160524)) b!6372276))

(assert (= (and b!6372276 c!1160523) b!6372279))

(assert (= (and b!6372276 (not c!1160523)) b!6372271))

(assert (= (and b!6372279 (not res!2621434)) b!6372272))

(assert (= (and b!6372271 c!1160521) b!6372275))

(assert (= (and b!6372271 (not c!1160521)) b!6372273))

(assert (= (and b!6372275 (not res!2621436)) b!6372278))

(assert (= (or b!6372278 b!6372273) bm!544153))

(assert (= (or b!6372277 b!6372275) bm!544152))

(declare-fun m!7174622 () Bool)

(assert (=> b!6372272 m!7174622))

(declare-fun m!7174624 () Bool)

(assert (=> bm!544152 m!7174624))

(declare-fun m!7174626 () Bool)

(assert (=> b!6372279 m!7174626))

(declare-fun m!7174628 () Bool)

(assert (=> bm!544153 m!7174628))

(assert (=> b!6371748 d!1998413))

(declare-fun b!6372309 () Bool)

(declare-fun res!2621458 () Bool)

(declare-fun e!3868723 () Bool)

(assert (=> b!6372309 (=> (not res!2621458) (not e!3868723))))

(declare-fun tail!12144 (List!65149) List!65149)

(assert (=> b!6372309 (= res!2621458 (isEmpty!37145 (tail!12144 s!2326)))))

(declare-fun b!6372310 () Bool)

(declare-fun e!3868722 () Bool)

(declare-fun e!3868725 () Bool)

(assert (=> b!6372310 (= e!3868722 e!3868725)))

(declare-fun res!2621456 () Bool)

(assert (=> b!6372310 (=> (not res!2621456) (not e!3868725))))

(declare-fun lt!2368533 () Bool)

(assert (=> b!6372310 (= res!2621456 (not lt!2368533))))

(declare-fun b!6372311 () Bool)

(declare-fun res!2621460 () Bool)

(assert (=> b!6372311 (=> res!2621460 e!3868722)))

(assert (=> b!6372311 (= res!2621460 (not ((_ is ElementMatch!16283) r!7292)))))

(declare-fun e!3868728 () Bool)

(assert (=> b!6372311 (= e!3868728 e!3868722)))

(declare-fun b!6372312 () Bool)

(declare-fun e!3868727 () Bool)

(declare-fun derivativeStep!4988 (Regex!16283 C!32836) Regex!16283)

(declare-fun head!13059 (List!65149) C!32836)

(assert (=> b!6372312 (= e!3868727 (matchR!8466 (derivativeStep!4988 r!7292 (head!13059 s!2326)) (tail!12144 s!2326)))))

(declare-fun b!6372313 () Bool)

(assert (=> b!6372313 (= e!3868723 (= (head!13059 s!2326) (c!1160374 r!7292)))))

(declare-fun bm!544156 () Bool)

(declare-fun call!544161 () Bool)

(assert (=> bm!544156 (= call!544161 (isEmpty!37145 s!2326))))

(declare-fun b!6372314 () Bool)

(declare-fun res!2621453 () Bool)

(declare-fun e!3868726 () Bool)

(assert (=> b!6372314 (=> res!2621453 e!3868726)))

(assert (=> b!6372314 (= res!2621453 (not (isEmpty!37145 (tail!12144 s!2326))))))

(declare-fun b!6372315 () Bool)

(declare-fun e!3868724 () Bool)

(assert (=> b!6372315 (= e!3868724 e!3868728)))

(declare-fun c!1160531 () Bool)

(assert (=> b!6372315 (= c!1160531 ((_ is EmptyLang!16283) r!7292))))

(declare-fun b!6372316 () Bool)

(declare-fun res!2621457 () Bool)

(assert (=> b!6372316 (=> res!2621457 e!3868722)))

(assert (=> b!6372316 (= res!2621457 e!3868723)))

(declare-fun res!2621454 () Bool)

(assert (=> b!6372316 (=> (not res!2621454) (not e!3868723))))

(assert (=> b!6372316 (= res!2621454 lt!2368533)))

(declare-fun b!6372317 () Bool)

(declare-fun res!2621459 () Bool)

(assert (=> b!6372317 (=> (not res!2621459) (not e!3868723))))

(assert (=> b!6372317 (= res!2621459 (not call!544161))))

(declare-fun d!1998415 () Bool)

(assert (=> d!1998415 e!3868724))

(declare-fun c!1160533 () Bool)

(assert (=> d!1998415 (= c!1160533 ((_ is EmptyExpr!16283) r!7292))))

(assert (=> d!1998415 (= lt!2368533 e!3868727)))

(declare-fun c!1160532 () Bool)

(assert (=> d!1998415 (= c!1160532 (isEmpty!37145 s!2326))))

(assert (=> d!1998415 (validRegex!8019 r!7292)))

(assert (=> d!1998415 (= (matchR!8466 r!7292 s!2326) lt!2368533)))

(declare-fun b!6372308 () Bool)

(assert (=> b!6372308 (= e!3868724 (= lt!2368533 call!544161))))

(declare-fun b!6372318 () Bool)

(assert (=> b!6372318 (= e!3868728 (not lt!2368533))))

(declare-fun b!6372319 () Bool)

(assert (=> b!6372319 (= e!3868727 (nullable!6276 r!7292))))

(declare-fun b!6372320 () Bool)

(assert (=> b!6372320 (= e!3868726 (not (= (head!13059 s!2326) (c!1160374 r!7292))))))

(declare-fun b!6372321 () Bool)

(assert (=> b!6372321 (= e!3868725 e!3868726)))

(declare-fun res!2621455 () Bool)

(assert (=> b!6372321 (=> res!2621455 e!3868726)))

(assert (=> b!6372321 (= res!2621455 call!544161)))

(assert (= (and d!1998415 c!1160532) b!6372319))

(assert (= (and d!1998415 (not c!1160532)) b!6372312))

(assert (= (and d!1998415 c!1160533) b!6372308))

(assert (= (and d!1998415 (not c!1160533)) b!6372315))

(assert (= (and b!6372315 c!1160531) b!6372318))

(assert (= (and b!6372315 (not c!1160531)) b!6372311))

(assert (= (and b!6372311 (not res!2621460)) b!6372316))

(assert (= (and b!6372316 res!2621454) b!6372317))

(assert (= (and b!6372317 res!2621459) b!6372309))

(assert (= (and b!6372309 res!2621458) b!6372313))

(assert (= (and b!6372316 (not res!2621457)) b!6372310))

(assert (= (and b!6372310 res!2621456) b!6372321))

(assert (= (and b!6372321 (not res!2621455)) b!6372314))

(assert (= (and b!6372314 (not res!2621453)) b!6372320))

(assert (= (or b!6372308 b!6372317 b!6372321) bm!544156))

(assert (=> d!1998415 m!7174624))

(assert (=> d!1998415 m!7174252))

(declare-fun m!7174630 () Bool)

(assert (=> b!6372313 m!7174630))

(declare-fun m!7174632 () Bool)

(assert (=> b!6372314 m!7174632))

(assert (=> b!6372314 m!7174632))

(declare-fun m!7174634 () Bool)

(assert (=> b!6372314 m!7174634))

(declare-fun m!7174636 () Bool)

(assert (=> b!6372319 m!7174636))

(assert (=> b!6372312 m!7174630))

(assert (=> b!6372312 m!7174630))

(declare-fun m!7174638 () Bool)

(assert (=> b!6372312 m!7174638))

(assert (=> b!6372312 m!7174632))

(assert (=> b!6372312 m!7174638))

(assert (=> b!6372312 m!7174632))

(declare-fun m!7174640 () Bool)

(assert (=> b!6372312 m!7174640))

(assert (=> b!6372309 m!7174632))

(assert (=> b!6372309 m!7174632))

(assert (=> b!6372309 m!7174634))

(assert (=> b!6372320 m!7174630))

(assert (=> bm!544156 m!7174624))

(assert (=> b!6371748 d!1998415))

(declare-fun d!1998417 () Bool)

(assert (=> d!1998417 (= (matchR!8466 r!7292 s!2326) (matchRSpec!3384 r!7292 s!2326))))

(declare-fun lt!2368536 () Unit!158463)

(declare-fun choose!47363 (Regex!16283 List!65149) Unit!158463)

(assert (=> d!1998417 (= lt!2368536 (choose!47363 r!7292 s!2326))))

(assert (=> d!1998417 (validRegex!8019 r!7292)))

(assert (=> d!1998417 (= (mainMatchTheorem!3384 r!7292 s!2326) lt!2368536)))

(declare-fun bs!1595781 () Bool)

(assert (= bs!1595781 d!1998417))

(assert (=> bs!1595781 m!7174270))

(assert (=> bs!1595781 m!7174268))

(declare-fun m!7174642 () Bool)

(assert (=> bs!1595781 m!7174642))

(assert (=> bs!1595781 m!7174252))

(assert (=> b!6371748 d!1998417))

(declare-fun b!6372344 () Bool)

(declare-fun e!3868742 () Bool)

(assert (=> b!6372344 (= e!3868742 (nullable!6276 (regOne!33078 (reg!16612 (regOne!33078 r!7292)))))))

(declare-fun bm!544169 () Bool)

(declare-fun call!544174 () (InoxSet Context!11334))

(declare-fun call!544175 () (InoxSet Context!11334))

(assert (=> bm!544169 (= call!544174 call!544175)))

(declare-fun c!1160544 () Bool)

(declare-fun c!1160545 () Bool)

(declare-fun bm!544171 () Bool)

(declare-fun call!544177 () (InoxSet Context!11334))

(declare-fun c!1160548 () Bool)

(declare-fun call!544179 () List!65148)

(assert (=> bm!544171 (= call!544177 (derivationStepZipperDown!1531 (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292)))))) (ite (or c!1160544 c!1160545) lt!2368470 (Context!11335 call!544179)) (h!71473 s!2326)))))

(declare-fun b!6372345 () Bool)

(declare-fun e!3868745 () (InoxSet Context!11334))

(declare-fun call!544176 () (InoxSet Context!11334))

(assert (=> b!6372345 (= e!3868745 ((_ map or) call!544177 call!544176))))

(declare-fun b!6372346 () Bool)

(declare-fun e!3868744 () (InoxSet Context!11334))

(declare-fun e!3868746 () (InoxSet Context!11334))

(assert (=> b!6372346 (= e!3868744 e!3868746)))

(assert (=> b!6372346 (= c!1160548 ((_ is Concat!25128) (reg!16612 (regOne!33078 r!7292))))))

(declare-fun b!6372347 () Bool)

(declare-fun e!3868741 () (InoxSet Context!11334))

(assert (=> b!6372347 (= e!3868741 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6372348 () Bool)

(assert (=> b!6372348 (= c!1160545 e!3868742)))

(declare-fun res!2621463 () Bool)

(assert (=> b!6372348 (=> (not res!2621463) (not e!3868742))))

(assert (=> b!6372348 (= res!2621463 ((_ is Concat!25128) (reg!16612 (regOne!33078 r!7292))))))

(assert (=> b!6372348 (= e!3868745 e!3868744)))

(declare-fun b!6372349 () Bool)

(assert (=> b!6372349 (= e!3868744 ((_ map or) call!544176 call!544175))))

(declare-fun call!544178 () List!65148)

(declare-fun bm!544172 () Bool)

(declare-fun $colon$colon!2144 (List!65148 Regex!16283) List!65148)

(assert (=> bm!544172 (= call!544178 ($colon$colon!2144 (exprs!6167 lt!2368470) (ite (or c!1160545 c!1160548) (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (regOne!33078 r!7292)))))))

(declare-fun bm!544170 () Bool)

(assert (=> bm!544170 (= call!544175 call!544177)))

(declare-fun d!1998419 () Bool)

(declare-fun c!1160546 () Bool)

(assert (=> d!1998419 (= c!1160546 (and ((_ is ElementMatch!16283) (reg!16612 (regOne!33078 r!7292))) (= (c!1160374 (reg!16612 (regOne!33078 r!7292))) (h!71473 s!2326))))))

(declare-fun e!3868743 () (InoxSet Context!11334))

(assert (=> d!1998419 (= (derivationStepZipperDown!1531 (reg!16612 (regOne!33078 r!7292)) lt!2368470 (h!71473 s!2326)) e!3868743)))

(declare-fun bm!544173 () Bool)

(assert (=> bm!544173 (= call!544176 (derivationStepZipperDown!1531 (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292)))) (ite c!1160544 lt!2368470 (Context!11335 call!544178)) (h!71473 s!2326)))))

(declare-fun b!6372350 () Bool)

(assert (=> b!6372350 (= e!3868743 e!3868745)))

(assert (=> b!6372350 (= c!1160544 ((_ is Union!16283) (reg!16612 (regOne!33078 r!7292))))))

(declare-fun b!6372351 () Bool)

(declare-fun c!1160547 () Bool)

(assert (=> b!6372351 (= c!1160547 ((_ is Star!16283) (reg!16612 (regOne!33078 r!7292))))))

(assert (=> b!6372351 (= e!3868746 e!3868741)))

(declare-fun b!6372352 () Bool)

(assert (=> b!6372352 (= e!3868741 call!544174)))

(declare-fun b!6372353 () Bool)

(assert (=> b!6372353 (= e!3868746 call!544174)))

(declare-fun bm!544174 () Bool)

(assert (=> bm!544174 (= call!544179 call!544178)))

(declare-fun b!6372354 () Bool)

(assert (=> b!6372354 (= e!3868743 (store ((as const (Array Context!11334 Bool)) false) lt!2368470 true))))

(assert (= (and d!1998419 c!1160546) b!6372354))

(assert (= (and d!1998419 (not c!1160546)) b!6372350))

(assert (= (and b!6372350 c!1160544) b!6372345))

(assert (= (and b!6372350 (not c!1160544)) b!6372348))

(assert (= (and b!6372348 res!2621463) b!6372344))

(assert (= (and b!6372348 c!1160545) b!6372349))

(assert (= (and b!6372348 (not c!1160545)) b!6372346))

(assert (= (and b!6372346 c!1160548) b!6372353))

(assert (= (and b!6372346 (not c!1160548)) b!6372351))

(assert (= (and b!6372351 c!1160547) b!6372352))

(assert (= (and b!6372351 (not c!1160547)) b!6372347))

(assert (= (or b!6372353 b!6372352) bm!544174))

(assert (= (or b!6372353 b!6372352) bm!544169))

(assert (= (or b!6372349 bm!544174) bm!544172))

(assert (= (or b!6372349 bm!544169) bm!544170))

(assert (= (or b!6372345 b!6372349) bm!544173))

(assert (= (or b!6372345 bm!544170) bm!544171))

(declare-fun m!7174644 () Bool)

(assert (=> b!6372354 m!7174644))

(declare-fun m!7174646 () Bool)

(assert (=> b!6372344 m!7174646))

(declare-fun m!7174648 () Bool)

(assert (=> bm!544171 m!7174648))

(declare-fun m!7174650 () Bool)

(assert (=> bm!544173 m!7174650))

(declare-fun m!7174652 () Bool)

(assert (=> bm!544172 m!7174652))

(assert (=> b!6371737 d!1998419))

(declare-fun bs!1595782 () Bool)

(declare-fun d!1998421 () Bool)

(assert (= bs!1595782 (and d!1998421 d!1998399)))

(declare-fun lambda!351250 () Int)

(assert (=> bs!1595782 (= lambda!351250 lambda!351240)))

(declare-fun bs!1595783 () Bool)

(assert (= bs!1595783 (and d!1998421 d!1998407)))

(assert (=> bs!1595783 (= lambda!351250 lambda!351241)))

(declare-fun bs!1595784 () Bool)

(assert (= bs!1595784 (and d!1998421 d!1998393)))

(assert (=> bs!1595784 (= lambda!351250 lambda!351239)))

(declare-fun bs!1595785 () Bool)

(assert (= bs!1595785 (and d!1998421 d!1998389)))

(assert (=> bs!1595785 (= lambda!351250 lambda!351236)))

(declare-fun bs!1595786 () Bool)

(assert (= bs!1595786 (and d!1998421 d!1998343)))

(assert (=> bs!1595786 (= lambda!351250 lambda!351220)))

(declare-fun b!6372375 () Bool)

(declare-fun e!3868763 () Bool)

(declare-fun lt!2368539 () Regex!16283)

(declare-fun isEmptyExpr!1685 (Regex!16283) Bool)

(assert (=> b!6372375 (= e!3868763 (isEmptyExpr!1685 lt!2368539))))

(declare-fun b!6372376 () Bool)

(declare-fun e!3868759 () Bool)

(assert (=> b!6372376 (= e!3868759 (isEmpty!37141 (t!378748 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6372377 () Bool)

(declare-fun e!3868760 () Regex!16283)

(assert (=> b!6372377 (= e!3868760 (Concat!25128 (h!71472 (exprs!6167 (h!71474 zl!343))) (generalisedConcat!1880 (t!378748 (exprs!6167 (h!71474 zl!343))))))))

(declare-fun b!6372378 () Bool)

(declare-fun e!3868761 () Regex!16283)

(assert (=> b!6372378 (= e!3868761 e!3868760)))

(declare-fun c!1160557 () Bool)

(assert (=> b!6372378 (= c!1160557 ((_ is Cons!65024) (exprs!6167 (h!71474 zl!343))))))

(declare-fun b!6372379 () Bool)

(declare-fun e!3868762 () Bool)

(assert (=> b!6372379 (= e!3868762 (= lt!2368539 (head!13058 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6372380 () Bool)

(declare-fun e!3868764 () Bool)

(assert (=> b!6372380 (= e!3868764 e!3868763)))

(declare-fun c!1160559 () Bool)

(assert (=> b!6372380 (= c!1160559 (isEmpty!37141 (exprs!6167 (h!71474 zl!343))))))

(declare-fun b!6372382 () Bool)

(declare-fun isConcat!1208 (Regex!16283) Bool)

(assert (=> b!6372382 (= e!3868762 (isConcat!1208 lt!2368539))))

(declare-fun b!6372383 () Bool)

(assert (=> b!6372383 (= e!3868761 (h!71472 (exprs!6167 (h!71474 zl!343))))))

(declare-fun b!6372384 () Bool)

(assert (=> b!6372384 (= e!3868760 EmptyExpr!16283)))

(declare-fun b!6372381 () Bool)

(assert (=> b!6372381 (= e!3868763 e!3868762)))

(declare-fun c!1160560 () Bool)

(assert (=> b!6372381 (= c!1160560 (isEmpty!37141 (tail!12143 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> d!1998421 e!3868764))

(declare-fun res!2621468 () Bool)

(assert (=> d!1998421 (=> (not res!2621468) (not e!3868764))))

(assert (=> d!1998421 (= res!2621468 (validRegex!8019 lt!2368539))))

(assert (=> d!1998421 (= lt!2368539 e!3868761)))

(declare-fun c!1160558 () Bool)

(assert (=> d!1998421 (= c!1160558 e!3868759)))

(declare-fun res!2621469 () Bool)

(assert (=> d!1998421 (=> (not res!2621469) (not e!3868759))))

(assert (=> d!1998421 (= res!2621469 ((_ is Cons!65024) (exprs!6167 (h!71474 zl!343))))))

(assert (=> d!1998421 (forall!15461 (exprs!6167 (h!71474 zl!343)) lambda!351250)))

(assert (=> d!1998421 (= (generalisedConcat!1880 (exprs!6167 (h!71474 zl!343))) lt!2368539)))

(assert (= (and d!1998421 res!2621469) b!6372376))

(assert (= (and d!1998421 c!1160558) b!6372383))

(assert (= (and d!1998421 (not c!1160558)) b!6372378))

(assert (= (and b!6372378 c!1160557) b!6372377))

(assert (= (and b!6372378 (not c!1160557)) b!6372384))

(assert (= (and d!1998421 res!2621468) b!6372380))

(assert (= (and b!6372380 c!1160559) b!6372375))

(assert (= (and b!6372380 (not c!1160559)) b!6372381))

(assert (= (and b!6372381 c!1160560) b!6372379))

(assert (= (and b!6372381 (not c!1160560)) b!6372382))

(declare-fun m!7174654 () Bool)

(assert (=> b!6372381 m!7174654))

(assert (=> b!6372381 m!7174654))

(declare-fun m!7174656 () Bool)

(assert (=> b!6372381 m!7174656))

(declare-fun m!7174658 () Bool)

(assert (=> b!6372377 m!7174658))

(declare-fun m!7174660 () Bool)

(assert (=> b!6372379 m!7174660))

(declare-fun m!7174662 () Bool)

(assert (=> b!6372375 m!7174662))

(declare-fun m!7174664 () Bool)

(assert (=> b!6372382 m!7174664))

(assert (=> b!6372376 m!7174298))

(declare-fun m!7174666 () Bool)

(assert (=> d!1998421 m!7174666))

(declare-fun m!7174668 () Bool)

(assert (=> d!1998421 m!7174668))

(declare-fun m!7174670 () Bool)

(assert (=> b!6372380 m!7174670))

(assert (=> b!6371757 d!1998421))

(declare-fun d!1998423 () Bool)

(declare-fun c!1160563 () Bool)

(assert (=> d!1998423 (= c!1160563 (isEmpty!37145 (t!378749 s!2326)))))

(declare-fun e!3868767 () Bool)

(assert (=> d!1998423 (= (matchZipper!2295 lt!2368457 (t!378749 s!2326)) e!3868767)))

(declare-fun b!6372389 () Bool)

(declare-fun nullableZipper!2049 ((InoxSet Context!11334)) Bool)

(assert (=> b!6372389 (= e!3868767 (nullableZipper!2049 lt!2368457))))

(declare-fun b!6372390 () Bool)

(assert (=> b!6372390 (= e!3868767 (matchZipper!2295 (derivationStepZipper!2249 lt!2368457 (head!13059 (t!378749 s!2326))) (tail!12144 (t!378749 s!2326))))))

(assert (= (and d!1998423 c!1160563) b!6372389))

(assert (= (and d!1998423 (not c!1160563)) b!6372390))

(declare-fun m!7174672 () Bool)

(assert (=> d!1998423 m!7174672))

(declare-fun m!7174674 () Bool)

(assert (=> b!6372389 m!7174674))

(declare-fun m!7174676 () Bool)

(assert (=> b!6372390 m!7174676))

(assert (=> b!6372390 m!7174676))

(declare-fun m!7174678 () Bool)

(assert (=> b!6372390 m!7174678))

(declare-fun m!7174680 () Bool)

(assert (=> b!6372390 m!7174680))

(assert (=> b!6372390 m!7174678))

(assert (=> b!6372390 m!7174680))

(declare-fun m!7174682 () Bool)

(assert (=> b!6372390 m!7174682))

(assert (=> b!6371747 d!1998423))

(declare-fun d!1998425 () Bool)

(declare-fun nullableFct!2222 (Regex!16283) Bool)

(assert (=> d!1998425 (= (nullable!6276 (regOne!33078 (regOne!33078 r!7292))) (nullableFct!2222 (regOne!33078 (regOne!33078 r!7292))))))

(declare-fun bs!1595787 () Bool)

(assert (= bs!1595787 d!1998425))

(declare-fun m!7174684 () Bool)

(assert (=> bs!1595787 m!7174684))

(assert (=> b!6371758 d!1998425))

(declare-fun d!1998427 () Bool)

(assert (=> d!1998427 (= (isEmpty!37142 (t!378750 zl!343)) ((_ is Nil!65026) (t!378750 zl!343)))))

(assert (=> b!6371741 d!1998427))

(declare-fun d!1998429 () Bool)

(declare-fun lt!2368540 () Regex!16283)

(assert (=> d!1998429 (validRegex!8019 lt!2368540)))

(assert (=> d!1998429 (= lt!2368540 (generalisedUnion!2127 (unfocusZipperList!1704 zl!343)))))

(assert (=> d!1998429 (= (unfocusZipper!2025 zl!343) lt!2368540)))

(declare-fun bs!1595788 () Bool)

(assert (= bs!1595788 d!1998429))

(declare-fun m!7174686 () Bool)

(assert (=> bs!1595788 m!7174686))

(assert (=> bs!1595788 m!7174292))

(assert (=> bs!1595788 m!7174292))

(assert (=> bs!1595788 m!7174294))

(assert (=> b!6371761 d!1998429))

(declare-fun d!1998431 () Bool)

(assert (=> d!1998431 (= (flatMap!1788 z!1189 lambda!351195) (dynLambda!25797 lambda!351195 (h!71474 zl!343)))))

(declare-fun lt!2368541 () Unit!158463)

(assert (=> d!1998431 (= lt!2368541 (choose!47361 z!1189 (h!71474 zl!343) lambda!351195))))

(assert (=> d!1998431 (= z!1189 (store ((as const (Array Context!11334 Bool)) false) (h!71474 zl!343) true))))

(assert (=> d!1998431 (= (lemmaFlatMapOnSingletonSet!1314 z!1189 (h!71474 zl!343) lambda!351195) lt!2368541)))

(declare-fun b_lambda!242151 () Bool)

(assert (=> (not b_lambda!242151) (not d!1998431)))

(declare-fun bs!1595789 () Bool)

(assert (= bs!1595789 d!1998431))

(assert (=> bs!1595789 m!7174240))

(declare-fun m!7174688 () Bool)

(assert (=> bs!1595789 m!7174688))

(declare-fun m!7174690 () Bool)

(assert (=> bs!1595789 m!7174690))

(declare-fun m!7174692 () Bool)

(assert (=> bs!1595789 m!7174692))

(assert (=> b!6371763 d!1998431))

(declare-fun b!6372391 () Bool)

(declare-fun e!3868769 () (InoxSet Context!11334))

(assert (=> b!6372391 (= e!3868769 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544175 () Bool)

(declare-fun call!544180 () (InoxSet Context!11334))

(assert (=> bm!544175 (= call!544180 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 lt!2368450)) (Context!11335 (t!378748 (exprs!6167 lt!2368450))) (h!71473 s!2326)))))

(declare-fun d!1998433 () Bool)

(declare-fun c!1160564 () Bool)

(declare-fun e!3868770 () Bool)

(assert (=> d!1998433 (= c!1160564 e!3868770)))

(declare-fun res!2621470 () Bool)

(assert (=> d!1998433 (=> (not res!2621470) (not e!3868770))))

(assert (=> d!1998433 (= res!2621470 ((_ is Cons!65024) (exprs!6167 lt!2368450)))))

(declare-fun e!3868768 () (InoxSet Context!11334))

(assert (=> d!1998433 (= (derivationStepZipperUp!1457 lt!2368450 (h!71473 s!2326)) e!3868768)))

(declare-fun b!6372392 () Bool)

(assert (=> b!6372392 (= e!3868768 e!3868769)))

(declare-fun c!1160565 () Bool)

(assert (=> b!6372392 (= c!1160565 ((_ is Cons!65024) (exprs!6167 lt!2368450)))))

(declare-fun b!6372393 () Bool)

(assert (=> b!6372393 (= e!3868769 call!544180)))

(declare-fun b!6372394 () Bool)

(assert (=> b!6372394 (= e!3868770 (nullable!6276 (h!71472 (exprs!6167 lt!2368450))))))

(declare-fun b!6372395 () Bool)

(assert (=> b!6372395 (= e!3868768 ((_ map or) call!544180 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 lt!2368450))) (h!71473 s!2326))))))

(assert (= (and d!1998433 res!2621470) b!6372394))

(assert (= (and d!1998433 c!1160564) b!6372395))

(assert (= (and d!1998433 (not c!1160564)) b!6372392))

(assert (= (and b!6372392 c!1160565) b!6372393))

(assert (= (and b!6372392 (not c!1160565)) b!6372391))

(assert (= (or b!6372395 b!6372393) bm!544175))

(declare-fun m!7174694 () Bool)

(assert (=> bm!544175 m!7174694))

(declare-fun m!7174696 () Bool)

(assert (=> b!6372394 m!7174696))

(declare-fun m!7174698 () Bool)

(assert (=> b!6372395 m!7174698))

(assert (=> b!6371763 d!1998433))

(declare-fun d!1998435 () Bool)

(assert (=> d!1998435 (= (nullable!6276 (h!71472 (exprs!6167 (h!71474 zl!343)))) (nullableFct!2222 (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun bs!1595790 () Bool)

(assert (= bs!1595790 d!1998435))

(declare-fun m!7174700 () Bool)

(assert (=> bs!1595790 m!7174700))

(assert (=> b!6371763 d!1998435))

(declare-fun b!6372396 () Bool)

(declare-fun e!3868772 () (InoxSet Context!11334))

(assert (=> b!6372396 (= e!3868772 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544176 () Bool)

(declare-fun call!544181 () (InoxSet Context!11334))

(assert (=> bm!544176 (= call!544181 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))) (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (h!71473 s!2326)))))

(declare-fun d!1998437 () Bool)

(declare-fun c!1160566 () Bool)

(declare-fun e!3868773 () Bool)

(assert (=> d!1998437 (= c!1160566 e!3868773)))

(declare-fun res!2621471 () Bool)

(assert (=> d!1998437 (=> (not res!2621471) (not e!3868773))))

(assert (=> d!1998437 (= res!2621471 ((_ is Cons!65024) (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))))))

(declare-fun e!3868771 () (InoxSet Context!11334))

(assert (=> d!1998437 (= (derivationStepZipperUp!1457 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))) (h!71473 s!2326)) e!3868771)))

(declare-fun b!6372397 () Bool)

(assert (=> b!6372397 (= e!3868771 e!3868772)))

(declare-fun c!1160567 () Bool)

(assert (=> b!6372397 (= c!1160567 ((_ is Cons!65024) (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))))))

(declare-fun b!6372398 () Bool)

(assert (=> b!6372398 (= e!3868772 call!544181)))

(declare-fun b!6372399 () Bool)

(assert (=> b!6372399 (= e!3868773 (nullable!6276 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))))))

(declare-fun b!6372400 () Bool)

(assert (=> b!6372400 (= e!3868771 ((_ map or) call!544181 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (h!71473 s!2326))))))

(assert (= (and d!1998437 res!2621471) b!6372399))

(assert (= (and d!1998437 c!1160566) b!6372400))

(assert (= (and d!1998437 (not c!1160566)) b!6372397))

(assert (= (and b!6372397 c!1160567) b!6372398))

(assert (= (and b!6372397 (not c!1160567)) b!6372396))

(assert (= (or b!6372400 b!6372398) bm!544176))

(declare-fun m!7174702 () Bool)

(assert (=> bm!544176 m!7174702))

(declare-fun m!7174704 () Bool)

(assert (=> b!6372399 m!7174704))

(declare-fun m!7174706 () Bool)

(assert (=> b!6372400 m!7174706))

(assert (=> b!6371763 d!1998437))

(declare-fun b!6372401 () Bool)

(declare-fun e!3868775 () Bool)

(assert (=> b!6372401 (= e!3868775 (nullable!6276 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343))))))))

(declare-fun bm!544177 () Bool)

(declare-fun call!544182 () (InoxSet Context!11334))

(declare-fun call!544183 () (InoxSet Context!11334))

(assert (=> bm!544177 (= call!544182 call!544183)))

(declare-fun c!1160572 () Bool)

(declare-fun call!544187 () List!65148)

(declare-fun call!544185 () (InoxSet Context!11334))

(declare-fun c!1160569 () Bool)

(declare-fun bm!544179 () Bool)

(declare-fun c!1160568 () Bool)

(assert (=> bm!544179 (= call!544185 (derivationStepZipperDown!1531 (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343))))))) (ite (or c!1160568 c!1160569) lt!2368450 (Context!11335 call!544187)) (h!71473 s!2326)))))

(declare-fun b!6372402 () Bool)

(declare-fun e!3868778 () (InoxSet Context!11334))

(declare-fun call!544184 () (InoxSet Context!11334))

(assert (=> b!6372402 (= e!3868778 ((_ map or) call!544185 call!544184))))

(declare-fun b!6372403 () Bool)

(declare-fun e!3868777 () (InoxSet Context!11334))

(declare-fun e!3868779 () (InoxSet Context!11334))

(assert (=> b!6372403 (= e!3868777 e!3868779)))

(assert (=> b!6372403 (= c!1160572 ((_ is Concat!25128) (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6372404 () Bool)

(declare-fun e!3868774 () (InoxSet Context!11334))

(assert (=> b!6372404 (= e!3868774 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6372405 () Bool)

(assert (=> b!6372405 (= c!1160569 e!3868775)))

(declare-fun res!2621472 () Bool)

(assert (=> b!6372405 (=> (not res!2621472) (not e!3868775))))

(assert (=> b!6372405 (= res!2621472 ((_ is Concat!25128) (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> b!6372405 (= e!3868778 e!3868777)))

(declare-fun b!6372406 () Bool)

(assert (=> b!6372406 (= e!3868777 ((_ map or) call!544184 call!544183))))

(declare-fun bm!544180 () Bool)

(declare-fun call!544186 () List!65148)

(assert (=> bm!544180 (= call!544186 ($colon$colon!2144 (exprs!6167 lt!2368450) (ite (or c!1160569 c!1160572) (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (h!71472 (exprs!6167 (h!71474 zl!343))))))))

(declare-fun bm!544178 () Bool)

(assert (=> bm!544178 (= call!544183 call!544185)))

(declare-fun d!1998439 () Bool)

(declare-fun c!1160570 () Bool)

(assert (=> d!1998439 (= c!1160570 (and ((_ is ElementMatch!16283) (h!71472 (exprs!6167 (h!71474 zl!343)))) (= (c!1160374 (h!71472 (exprs!6167 (h!71474 zl!343)))) (h!71473 s!2326))))))

(declare-fun e!3868776 () (InoxSet Context!11334))

(assert (=> d!1998439 (= (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (h!71474 zl!343))) lt!2368450 (h!71473 s!2326)) e!3868776)))

(declare-fun bm!544181 () Bool)

(assert (=> bm!544181 (= call!544184 (derivationStepZipperDown!1531 (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343))))) (ite c!1160568 lt!2368450 (Context!11335 call!544186)) (h!71473 s!2326)))))

(declare-fun b!6372407 () Bool)

(assert (=> b!6372407 (= e!3868776 e!3868778)))

(assert (=> b!6372407 (= c!1160568 ((_ is Union!16283) (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6372408 () Bool)

(declare-fun c!1160571 () Bool)

(assert (=> b!6372408 (= c!1160571 ((_ is Star!16283) (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> b!6372408 (= e!3868779 e!3868774)))

(declare-fun b!6372409 () Bool)

(assert (=> b!6372409 (= e!3868774 call!544182)))

(declare-fun b!6372410 () Bool)

(assert (=> b!6372410 (= e!3868779 call!544182)))

(declare-fun bm!544182 () Bool)

(assert (=> bm!544182 (= call!544187 call!544186)))

(declare-fun b!6372411 () Bool)

(assert (=> b!6372411 (= e!3868776 (store ((as const (Array Context!11334 Bool)) false) lt!2368450 true))))

(assert (= (and d!1998439 c!1160570) b!6372411))

(assert (= (and d!1998439 (not c!1160570)) b!6372407))

(assert (= (and b!6372407 c!1160568) b!6372402))

(assert (= (and b!6372407 (not c!1160568)) b!6372405))

(assert (= (and b!6372405 res!2621472) b!6372401))

(assert (= (and b!6372405 c!1160569) b!6372406))

(assert (= (and b!6372405 (not c!1160569)) b!6372403))

(assert (= (and b!6372403 c!1160572) b!6372410))

(assert (= (and b!6372403 (not c!1160572)) b!6372408))

(assert (= (and b!6372408 c!1160571) b!6372409))

(assert (= (and b!6372408 (not c!1160571)) b!6372404))

(assert (= (or b!6372410 b!6372409) bm!544182))

(assert (= (or b!6372410 b!6372409) bm!544177))

(assert (= (or b!6372406 bm!544182) bm!544180))

(assert (= (or b!6372406 bm!544177) bm!544178))

(assert (= (or b!6372402 b!6372406) bm!544181))

(assert (= (or b!6372402 bm!544178) bm!544179))

(declare-fun m!7174708 () Bool)

(assert (=> b!6372411 m!7174708))

(declare-fun m!7174710 () Bool)

(assert (=> b!6372401 m!7174710))

(declare-fun m!7174712 () Bool)

(assert (=> bm!544179 m!7174712))

(declare-fun m!7174714 () Bool)

(assert (=> bm!544181 m!7174714))

(declare-fun m!7174716 () Bool)

(assert (=> bm!544180 m!7174716))

(assert (=> b!6371763 d!1998439))

(declare-fun b!6372412 () Bool)

(declare-fun e!3868781 () (InoxSet Context!11334))

(assert (=> b!6372412 (= e!3868781 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544183 () Bool)

(declare-fun call!544188 () (InoxSet Context!11334))

(assert (=> bm!544183 (= call!544188 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (h!71474 zl!343))) (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343)))) (h!71473 s!2326)))))

(declare-fun d!1998441 () Bool)

(declare-fun c!1160573 () Bool)

(declare-fun e!3868782 () Bool)

(assert (=> d!1998441 (= c!1160573 e!3868782)))

(declare-fun res!2621473 () Bool)

(assert (=> d!1998441 (=> (not res!2621473) (not e!3868782))))

(assert (=> d!1998441 (= res!2621473 ((_ is Cons!65024) (exprs!6167 (h!71474 zl!343))))))

(declare-fun e!3868780 () (InoxSet Context!11334))

(assert (=> d!1998441 (= (derivationStepZipperUp!1457 (h!71474 zl!343) (h!71473 s!2326)) e!3868780)))

(declare-fun b!6372413 () Bool)

(assert (=> b!6372413 (= e!3868780 e!3868781)))

(declare-fun c!1160574 () Bool)

(assert (=> b!6372413 (= c!1160574 ((_ is Cons!65024) (exprs!6167 (h!71474 zl!343))))))

(declare-fun b!6372414 () Bool)

(assert (=> b!6372414 (= e!3868781 call!544188)))

(declare-fun b!6372415 () Bool)

(assert (=> b!6372415 (= e!3868782 (nullable!6276 (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6372416 () Bool)

(assert (=> b!6372416 (= e!3868780 ((_ map or) call!544188 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343)))) (h!71473 s!2326))))))

(assert (= (and d!1998441 res!2621473) b!6372415))

(assert (= (and d!1998441 c!1160573) b!6372416))

(assert (= (and d!1998441 (not c!1160573)) b!6372413))

(assert (= (and b!6372413 c!1160574) b!6372414))

(assert (= (and b!6372413 (not c!1160574)) b!6372412))

(assert (= (or b!6372416 b!6372414) bm!544183))

(declare-fun m!7174718 () Bool)

(assert (=> bm!544183 m!7174718))

(assert (=> b!6372415 m!7174250))

(declare-fun m!7174720 () Bool)

(assert (=> b!6372416 m!7174720))

(assert (=> b!6371763 d!1998441))

(declare-fun d!1998443 () Bool)

(assert (=> d!1998443 (= (flatMap!1788 z!1189 lambda!351195) (choose!47360 z!1189 lambda!351195))))

(declare-fun bs!1595791 () Bool)

(assert (= bs!1595791 d!1998443))

(declare-fun m!7174722 () Bool)

(assert (=> bs!1595791 m!7174722))

(assert (=> b!6371763 d!1998443))

(declare-fun d!1998445 () Bool)

(assert (=> d!1998445 (= (isEmpty!37141 (t!378748 (exprs!6167 (h!71474 zl!343)))) ((_ is Nil!65024) (t!378748 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> b!6371733 d!1998445))

(declare-fun b!6372435 () Bool)

(declare-fun e!3868796 () Option!16174)

(assert (=> b!6372435 (= e!3868796 (Some!16173 (tuple2!66525 Nil!65025 s!2326)))))

(declare-fun d!1998447 () Bool)

(declare-fun e!3868794 () Bool)

(assert (=> d!1998447 e!3868794))

(declare-fun res!2621486 () Bool)

(assert (=> d!1998447 (=> res!2621486 e!3868794)))

(declare-fun e!3868797 () Bool)

(assert (=> d!1998447 (= res!2621486 e!3868797)))

(declare-fun res!2621485 () Bool)

(assert (=> d!1998447 (=> (not res!2621485) (not e!3868797))))

(declare-fun lt!2368549 () Option!16174)

(assert (=> d!1998447 (= res!2621485 (isDefined!12877 lt!2368549))))

(assert (=> d!1998447 (= lt!2368549 e!3868796)))

(declare-fun c!1160579 () Bool)

(declare-fun e!3868795 () Bool)

(assert (=> d!1998447 (= c!1160579 e!3868795)))

(declare-fun res!2621487 () Bool)

(assert (=> d!1998447 (=> (not res!2621487) (not e!3868795))))

(assert (=> d!1998447 (= res!2621487 (matchR!8466 (regOne!33078 r!7292) Nil!65025))))

(assert (=> d!1998447 (validRegex!8019 (regOne!33078 r!7292))))

(assert (=> d!1998447 (= (findConcatSeparation!2588 (regOne!33078 r!7292) (regTwo!33078 r!7292) Nil!65025 s!2326 s!2326) lt!2368549)))

(declare-fun b!6372436 () Bool)

(declare-fun lt!2368548 () Unit!158463)

(declare-fun lt!2368550 () Unit!158463)

(assert (=> b!6372436 (= lt!2368548 lt!2368550)))

(declare-fun ++!14352 (List!65149 List!65149) List!65149)

(assert (=> b!6372436 (= (++!14352 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025)) (t!378749 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2447 (List!65149 C!32836 List!65149 List!65149) Unit!158463)

(assert (=> b!6372436 (= lt!2368550 (lemmaMoveElementToOtherListKeepsConcatEq!2447 Nil!65025 (h!71473 s!2326) (t!378749 s!2326) s!2326))))

(declare-fun e!3868793 () Option!16174)

(assert (=> b!6372436 (= e!3868793 (findConcatSeparation!2588 (regOne!33078 r!7292) (regTwo!33078 r!7292) (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025)) (t!378749 s!2326) s!2326))))

(declare-fun b!6372437 () Bool)

(declare-fun res!2621488 () Bool)

(assert (=> b!6372437 (=> (not res!2621488) (not e!3868797))))

(declare-fun get!22509 (Option!16174) tuple2!66524)

(assert (=> b!6372437 (= res!2621488 (matchR!8466 (regTwo!33078 r!7292) (_2!36565 (get!22509 lt!2368549))))))

(declare-fun b!6372438 () Bool)

(assert (=> b!6372438 (= e!3868796 e!3868793)))

(declare-fun c!1160580 () Bool)

(assert (=> b!6372438 (= c!1160580 ((_ is Nil!65025) s!2326))))

(declare-fun b!6372439 () Bool)

(assert (=> b!6372439 (= e!3868794 (not (isDefined!12877 lt!2368549)))))

(declare-fun b!6372440 () Bool)

(assert (=> b!6372440 (= e!3868797 (= (++!14352 (_1!36565 (get!22509 lt!2368549)) (_2!36565 (get!22509 lt!2368549))) s!2326))))

(declare-fun b!6372441 () Bool)

(declare-fun res!2621484 () Bool)

(assert (=> b!6372441 (=> (not res!2621484) (not e!3868797))))

(assert (=> b!6372441 (= res!2621484 (matchR!8466 (regOne!33078 r!7292) (_1!36565 (get!22509 lt!2368549))))))

(declare-fun b!6372442 () Bool)

(assert (=> b!6372442 (= e!3868793 None!16173)))

(declare-fun b!6372443 () Bool)

(assert (=> b!6372443 (= e!3868795 (matchR!8466 (regTwo!33078 r!7292) s!2326))))

(assert (= (and d!1998447 res!2621487) b!6372443))

(assert (= (and d!1998447 c!1160579) b!6372435))

(assert (= (and d!1998447 (not c!1160579)) b!6372438))

(assert (= (and b!6372438 c!1160580) b!6372442))

(assert (= (and b!6372438 (not c!1160580)) b!6372436))

(assert (= (and d!1998447 res!2621485) b!6372441))

(assert (= (and b!6372441 res!2621484) b!6372437))

(assert (= (and b!6372437 res!2621488) b!6372440))

(assert (= (and d!1998447 (not res!2621486)) b!6372439))

(declare-fun m!7174724 () Bool)

(assert (=> b!6372441 m!7174724))

(declare-fun m!7174726 () Bool)

(assert (=> b!6372441 m!7174726))

(declare-fun m!7174728 () Bool)

(assert (=> b!6372436 m!7174728))

(assert (=> b!6372436 m!7174728))

(declare-fun m!7174730 () Bool)

(assert (=> b!6372436 m!7174730))

(declare-fun m!7174732 () Bool)

(assert (=> b!6372436 m!7174732))

(assert (=> b!6372436 m!7174728))

(declare-fun m!7174734 () Bool)

(assert (=> b!6372436 m!7174734))

(declare-fun m!7174736 () Bool)

(assert (=> b!6372439 m!7174736))

(declare-fun m!7174738 () Bool)

(assert (=> b!6372443 m!7174738))

(assert (=> d!1998447 m!7174736))

(declare-fun m!7174740 () Bool)

(assert (=> d!1998447 m!7174740))

(declare-fun m!7174742 () Bool)

(assert (=> d!1998447 m!7174742))

(assert (=> b!6372440 m!7174724))

(declare-fun m!7174744 () Bool)

(assert (=> b!6372440 m!7174744))

(assert (=> b!6372437 m!7174724))

(declare-fun m!7174746 () Bool)

(assert (=> b!6372437 m!7174746))

(assert (=> b!6371753 d!1998447))

(declare-fun d!1998449 () Bool)

(declare-fun choose!47364 (Int) Bool)

(assert (=> d!1998449 (= (Exists!3353 lambda!351193) (choose!47364 lambda!351193))))

(declare-fun bs!1595792 () Bool)

(assert (= bs!1595792 d!1998449))

(declare-fun m!7174748 () Bool)

(assert (=> bs!1595792 m!7174748))

(assert (=> b!6371753 d!1998449))

(declare-fun d!1998451 () Bool)

(assert (=> d!1998451 (= (Exists!3353 lambda!351194) (choose!47364 lambda!351194))))

(declare-fun bs!1595793 () Bool)

(assert (= bs!1595793 d!1998451))

(declare-fun m!7174750 () Bool)

(assert (=> bs!1595793 m!7174750))

(assert (=> b!6371753 d!1998451))

(declare-fun bs!1595794 () Bool)

(declare-fun d!1998453 () Bool)

(assert (= bs!1595794 (and d!1998453 b!6371753)))

(declare-fun lambda!351253 () Int)

(assert (=> bs!1595794 (= lambda!351253 lambda!351193)))

(assert (=> bs!1595794 (not (= lambda!351253 lambda!351194))))

(declare-fun bs!1595795 () Bool)

(assert (= bs!1595795 (and d!1998453 b!6372278)))

(assert (=> bs!1595795 (not (= lambda!351253 lambda!351246))))

(declare-fun bs!1595796 () Bool)

(assert (= bs!1595796 (and d!1998453 b!6372273)))

(assert (=> bs!1595796 (not (= lambda!351253 lambda!351247))))

(assert (=> d!1998453 true))

(assert (=> d!1998453 true))

(assert (=> d!1998453 true))

(assert (=> d!1998453 (= (isDefined!12877 (findConcatSeparation!2588 (regOne!33078 r!7292) (regTwo!33078 r!7292) Nil!65025 s!2326 s!2326)) (Exists!3353 lambda!351253))))

(declare-fun lt!2368553 () Unit!158463)

(declare-fun choose!47365 (Regex!16283 Regex!16283 List!65149) Unit!158463)

(assert (=> d!1998453 (= lt!2368553 (choose!47365 (regOne!33078 r!7292) (regTwo!33078 r!7292) s!2326))))

(assert (=> d!1998453 (validRegex!8019 (regOne!33078 r!7292))))

(assert (=> d!1998453 (= (lemmaFindConcatSeparationEquivalentToExists!2352 (regOne!33078 r!7292) (regTwo!33078 r!7292) s!2326) lt!2368553)))

(declare-fun bs!1595797 () Bool)

(assert (= bs!1595797 d!1998453))

(declare-fun m!7174752 () Bool)

(assert (=> bs!1595797 m!7174752))

(assert (=> bs!1595797 m!7174276))

(assert (=> bs!1595797 m!7174742))

(declare-fun m!7174754 () Bool)

(assert (=> bs!1595797 m!7174754))

(assert (=> bs!1595797 m!7174276))

(assert (=> bs!1595797 m!7174278))

(assert (=> b!6371753 d!1998453))

(declare-fun bs!1595798 () Bool)

(declare-fun d!1998455 () Bool)

(assert (= bs!1595798 (and d!1998455 b!6372273)))

(declare-fun lambda!351258 () Int)

(assert (=> bs!1595798 (not (= lambda!351258 lambda!351247))))

(declare-fun bs!1595799 () Bool)

(assert (= bs!1595799 (and d!1998455 b!6372278)))

(assert (=> bs!1595799 (not (= lambda!351258 lambda!351246))))

(declare-fun bs!1595800 () Bool)

(assert (= bs!1595800 (and d!1998455 b!6371753)))

(assert (=> bs!1595800 (not (= lambda!351258 lambda!351194))))

(declare-fun bs!1595801 () Bool)

(assert (= bs!1595801 (and d!1998455 d!1998453)))

(assert (=> bs!1595801 (= lambda!351258 lambda!351253)))

(assert (=> bs!1595800 (= lambda!351258 lambda!351193)))

(assert (=> d!1998455 true))

(assert (=> d!1998455 true))

(assert (=> d!1998455 true))

(declare-fun lambda!351259 () Int)

(assert (=> bs!1595798 (= lambda!351259 lambda!351247)))

(assert (=> bs!1595799 (not (= lambda!351259 lambda!351246))))

(assert (=> bs!1595800 (= lambda!351259 lambda!351194)))

(declare-fun bs!1595802 () Bool)

(assert (= bs!1595802 d!1998455))

(assert (=> bs!1595802 (not (= lambda!351259 lambda!351258))))

(assert (=> bs!1595801 (not (= lambda!351259 lambda!351253))))

(assert (=> bs!1595800 (not (= lambda!351259 lambda!351193))))

(assert (=> d!1998455 true))

(assert (=> d!1998455 true))

(assert (=> d!1998455 true))

(assert (=> d!1998455 (= (Exists!3353 lambda!351258) (Exists!3353 lambda!351259))))

(declare-fun lt!2368556 () Unit!158463)

(declare-fun choose!47366 (Regex!16283 Regex!16283 List!65149) Unit!158463)

(assert (=> d!1998455 (= lt!2368556 (choose!47366 (regOne!33078 r!7292) (regTwo!33078 r!7292) s!2326))))

(assert (=> d!1998455 (validRegex!8019 (regOne!33078 r!7292))))

(assert (=> d!1998455 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1890 (regOne!33078 r!7292) (regTwo!33078 r!7292) s!2326) lt!2368556)))

(declare-fun m!7174756 () Bool)

(assert (=> bs!1595802 m!7174756))

(declare-fun m!7174758 () Bool)

(assert (=> bs!1595802 m!7174758))

(declare-fun m!7174760 () Bool)

(assert (=> bs!1595802 m!7174760))

(assert (=> bs!1595802 m!7174742))

(assert (=> b!6371753 d!1998455))

(declare-fun d!1998457 () Bool)

(declare-fun isEmpty!37146 (Option!16174) Bool)

(assert (=> d!1998457 (= (isDefined!12877 (findConcatSeparation!2588 (regOne!33078 r!7292) (regTwo!33078 r!7292) Nil!65025 s!2326 s!2326)) (not (isEmpty!37146 (findConcatSeparation!2588 (regOne!33078 r!7292) (regTwo!33078 r!7292) Nil!65025 s!2326 s!2326))))))

(declare-fun bs!1595803 () Bool)

(assert (= bs!1595803 d!1998457))

(assert (=> bs!1595803 m!7174276))

(declare-fun m!7174762 () Bool)

(assert (=> bs!1595803 m!7174762))

(assert (=> b!6371753 d!1998457))

(declare-fun d!1998459 () Bool)

(declare-fun c!1160581 () Bool)

(assert (=> d!1998459 (= c!1160581 (isEmpty!37145 s!2326))))

(declare-fun e!3868804 () Bool)

(assert (=> d!1998459 (= (matchZipper!2295 lt!2368474 s!2326) e!3868804)))

(declare-fun b!6372456 () Bool)

(assert (=> b!6372456 (= e!3868804 (nullableZipper!2049 lt!2368474))))

(declare-fun b!6372457 () Bool)

(assert (=> b!6372457 (= e!3868804 (matchZipper!2295 (derivationStepZipper!2249 lt!2368474 (head!13059 s!2326)) (tail!12144 s!2326)))))

(assert (= (and d!1998459 c!1160581) b!6372456))

(assert (= (and d!1998459 (not c!1160581)) b!6372457))

(assert (=> d!1998459 m!7174624))

(declare-fun m!7174764 () Bool)

(assert (=> b!6372456 m!7174764))

(assert (=> b!6372457 m!7174630))

(assert (=> b!6372457 m!7174630))

(declare-fun m!7174766 () Bool)

(assert (=> b!6372457 m!7174766))

(assert (=> b!6372457 m!7174632))

(assert (=> b!6372457 m!7174766))

(assert (=> b!6372457 m!7174632))

(declare-fun m!7174768 () Bool)

(assert (=> b!6372457 m!7174768))

(assert (=> b!6371742 d!1998459))

(declare-fun d!1998461 () Bool)

(declare-fun c!1160582 () Bool)

(assert (=> d!1998461 (= c!1160582 (isEmpty!37145 (t!378749 s!2326)))))

(declare-fun e!3868805 () Bool)

(assert (=> d!1998461 (= (matchZipper!2295 lt!2368451 (t!378749 s!2326)) e!3868805)))

(declare-fun b!6372458 () Bool)

(assert (=> b!6372458 (= e!3868805 (nullableZipper!2049 lt!2368451))))

(declare-fun b!6372459 () Bool)

(assert (=> b!6372459 (= e!3868805 (matchZipper!2295 (derivationStepZipper!2249 lt!2368451 (head!13059 (t!378749 s!2326))) (tail!12144 (t!378749 s!2326))))))

(assert (= (and d!1998461 c!1160582) b!6372458))

(assert (= (and d!1998461 (not c!1160582)) b!6372459))

(assert (=> d!1998461 m!7174672))

(declare-fun m!7174770 () Bool)

(assert (=> b!6372458 m!7174770))

(assert (=> b!6372459 m!7174676))

(assert (=> b!6372459 m!7174676))

(declare-fun m!7174772 () Bool)

(assert (=> b!6372459 m!7174772))

(assert (=> b!6372459 m!7174680))

(assert (=> b!6372459 m!7174772))

(assert (=> b!6372459 m!7174680))

(declare-fun m!7174774 () Bool)

(assert (=> b!6372459 m!7174774))

(assert (=> b!6371742 d!1998461))

(declare-fun d!1998463 () Bool)

(declare-fun e!3868808 () Bool)

(assert (=> d!1998463 e!3868808))

(declare-fun res!2621503 () Bool)

(assert (=> d!1998463 (=> (not res!2621503) (not e!3868808))))

(declare-fun lt!2368559 () List!65150)

(declare-fun noDuplicate!2113 (List!65150) Bool)

(assert (=> d!1998463 (= res!2621503 (noDuplicate!2113 lt!2368559))))

(declare-fun choose!47367 ((InoxSet Context!11334)) List!65150)

(assert (=> d!1998463 (= lt!2368559 (choose!47367 z!1189))))

(assert (=> d!1998463 (= (toList!10067 z!1189) lt!2368559)))

(declare-fun b!6372462 () Bool)

(declare-fun content!12294 (List!65150) (InoxSet Context!11334))

(assert (=> b!6372462 (= e!3868808 (= (content!12294 lt!2368559) z!1189))))

(assert (= (and d!1998463 res!2621503) b!6372462))

(declare-fun m!7174776 () Bool)

(assert (=> d!1998463 m!7174776))

(declare-fun m!7174778 () Bool)

(assert (=> d!1998463 m!7174778))

(declare-fun m!7174780 () Bool)

(assert (=> b!6372462 m!7174780))

(assert (=> b!6371762 d!1998463))

(declare-fun d!1998465 () Bool)

(declare-fun e!3868811 () Bool)

(assert (=> d!1998465 (= (matchZipper!2295 ((_ map or) lt!2368449 lt!2368457) (t!378749 s!2326)) e!3868811)))

(declare-fun res!2621506 () Bool)

(assert (=> d!1998465 (=> res!2621506 e!3868811)))

(assert (=> d!1998465 (= res!2621506 (matchZipper!2295 lt!2368449 (t!378749 s!2326)))))

(declare-fun lt!2368562 () Unit!158463)

(declare-fun choose!47368 ((InoxSet Context!11334) (InoxSet Context!11334) List!65149) Unit!158463)

(assert (=> d!1998465 (= lt!2368562 (choose!47368 lt!2368449 lt!2368457 (t!378749 s!2326)))))

(assert (=> d!1998465 (= (lemmaZipperConcatMatchesSameAsBothZippers!1114 lt!2368449 lt!2368457 (t!378749 s!2326)) lt!2368562)))

(declare-fun b!6372465 () Bool)

(assert (=> b!6372465 (= e!3868811 (matchZipper!2295 lt!2368457 (t!378749 s!2326)))))

(assert (= (and d!1998465 (not res!2621506)) b!6372465))

(assert (=> d!1998465 m!7174226))

(assert (=> d!1998465 m!7174224))

(declare-fun m!7174782 () Bool)

(assert (=> d!1998465 m!7174782))

(assert (=> b!6372465 m!7174230))

(assert (=> b!6371732 d!1998465))

(declare-fun d!1998467 () Bool)

(declare-fun c!1160583 () Bool)

(assert (=> d!1998467 (= c!1160583 (isEmpty!37145 (t!378749 s!2326)))))

(declare-fun e!3868812 () Bool)

(assert (=> d!1998467 (= (matchZipper!2295 lt!2368449 (t!378749 s!2326)) e!3868812)))

(declare-fun b!6372466 () Bool)

(assert (=> b!6372466 (= e!3868812 (nullableZipper!2049 lt!2368449))))

(declare-fun b!6372467 () Bool)

(assert (=> b!6372467 (= e!3868812 (matchZipper!2295 (derivationStepZipper!2249 lt!2368449 (head!13059 (t!378749 s!2326))) (tail!12144 (t!378749 s!2326))))))

(assert (= (and d!1998467 c!1160583) b!6372466))

(assert (= (and d!1998467 (not c!1160583)) b!6372467))

(assert (=> d!1998467 m!7174672))

(declare-fun m!7174784 () Bool)

(assert (=> b!6372466 m!7174784))

(assert (=> b!6372467 m!7174676))

(assert (=> b!6372467 m!7174676))

(declare-fun m!7174786 () Bool)

(assert (=> b!6372467 m!7174786))

(assert (=> b!6372467 m!7174680))

(assert (=> b!6372467 m!7174786))

(assert (=> b!6372467 m!7174680))

(declare-fun m!7174788 () Bool)

(assert (=> b!6372467 m!7174788))

(assert (=> b!6371732 d!1998467))

(declare-fun d!1998469 () Bool)

(declare-fun c!1160584 () Bool)

(assert (=> d!1998469 (= c!1160584 (isEmpty!37145 (t!378749 s!2326)))))

(declare-fun e!3868813 () Bool)

(assert (=> d!1998469 (= (matchZipper!2295 ((_ map or) lt!2368449 lt!2368457) (t!378749 s!2326)) e!3868813)))

(declare-fun b!6372468 () Bool)

(assert (=> b!6372468 (= e!3868813 (nullableZipper!2049 ((_ map or) lt!2368449 lt!2368457)))))

(declare-fun b!6372469 () Bool)

(assert (=> b!6372469 (= e!3868813 (matchZipper!2295 (derivationStepZipper!2249 ((_ map or) lt!2368449 lt!2368457) (head!13059 (t!378749 s!2326))) (tail!12144 (t!378749 s!2326))))))

(assert (= (and d!1998469 c!1160584) b!6372468))

(assert (= (and d!1998469 (not c!1160584)) b!6372469))

(assert (=> d!1998469 m!7174672))

(declare-fun m!7174790 () Bool)

(assert (=> b!6372468 m!7174790))

(assert (=> b!6372469 m!7174676))

(assert (=> b!6372469 m!7174676))

(declare-fun m!7174792 () Bool)

(assert (=> b!6372469 m!7174792))

(assert (=> b!6372469 m!7174680))

(assert (=> b!6372469 m!7174792))

(assert (=> b!6372469 m!7174680))

(declare-fun m!7174794 () Bool)

(assert (=> b!6372469 m!7174794))

(assert (=> b!6371732 d!1998469))

(declare-fun b!6372474 () Bool)

(declare-fun e!3868816 () Bool)

(declare-fun tp!1773963 () Bool)

(assert (=> b!6372474 (= e!3868816 (and tp_is_empty!41819 tp!1773963))))

(assert (=> b!6371759 (= tp!1773901 e!3868816)))

(assert (= (and b!6371759 ((_ is Cons!65025) (t!378749 s!2326))) b!6372474))

(declare-fun b!6372482 () Bool)

(declare-fun e!3868822 () Bool)

(declare-fun tp!1773968 () Bool)

(assert (=> b!6372482 (= e!3868822 tp!1773968)))

(declare-fun b!6372481 () Bool)

(declare-fun e!3868821 () Bool)

(declare-fun tp!1773969 () Bool)

(assert (=> b!6372481 (= e!3868821 (and (inv!83954 (h!71474 (t!378750 zl!343))) e!3868822 tp!1773969))))

(assert (=> b!6371744 (= tp!1773899 e!3868821)))

(assert (= b!6372481 b!6372482))

(assert (= (and b!6371744 ((_ is Cons!65026) (t!378750 zl!343))) b!6372481))

(declare-fun m!7174796 () Bool)

(assert (=> b!6372481 m!7174796))

(declare-fun b!6372495 () Bool)

(declare-fun e!3868825 () Bool)

(declare-fun tp!1773981 () Bool)

(assert (=> b!6372495 (= e!3868825 tp!1773981)))

(declare-fun b!6372496 () Bool)

(declare-fun tp!1773980 () Bool)

(declare-fun tp!1773984 () Bool)

(assert (=> b!6372496 (= e!3868825 (and tp!1773980 tp!1773984))))

(declare-fun b!6372493 () Bool)

(assert (=> b!6372493 (= e!3868825 tp_is_empty!41819)))

(declare-fun b!6372494 () Bool)

(declare-fun tp!1773983 () Bool)

(declare-fun tp!1773982 () Bool)

(assert (=> b!6372494 (= e!3868825 (and tp!1773983 tp!1773982))))

(assert (=> b!6371749 (= tp!1773896 e!3868825)))

(assert (= (and b!6371749 ((_ is ElementMatch!16283) (regOne!33078 r!7292))) b!6372493))

(assert (= (and b!6371749 ((_ is Concat!25128) (regOne!33078 r!7292))) b!6372494))

(assert (= (and b!6371749 ((_ is Star!16283) (regOne!33078 r!7292))) b!6372495))

(assert (= (and b!6371749 ((_ is Union!16283) (regOne!33078 r!7292))) b!6372496))

(declare-fun b!6372499 () Bool)

(declare-fun e!3868826 () Bool)

(declare-fun tp!1773986 () Bool)

(assert (=> b!6372499 (= e!3868826 tp!1773986)))

(declare-fun b!6372500 () Bool)

(declare-fun tp!1773985 () Bool)

(declare-fun tp!1773989 () Bool)

(assert (=> b!6372500 (= e!3868826 (and tp!1773985 tp!1773989))))

(declare-fun b!6372497 () Bool)

(assert (=> b!6372497 (= e!3868826 tp_is_empty!41819)))

(declare-fun b!6372498 () Bool)

(declare-fun tp!1773988 () Bool)

(declare-fun tp!1773987 () Bool)

(assert (=> b!6372498 (= e!3868826 (and tp!1773988 tp!1773987))))

(assert (=> b!6371749 (= tp!1773898 e!3868826)))

(assert (= (and b!6371749 ((_ is ElementMatch!16283) (regTwo!33078 r!7292))) b!6372497))

(assert (= (and b!6371749 ((_ is Concat!25128) (regTwo!33078 r!7292))) b!6372498))

(assert (= (and b!6371749 ((_ is Star!16283) (regTwo!33078 r!7292))) b!6372499))

(assert (= (and b!6371749 ((_ is Union!16283) (regTwo!33078 r!7292))) b!6372500))

(declare-fun b!6372505 () Bool)

(declare-fun e!3868829 () Bool)

(declare-fun tp!1773994 () Bool)

(declare-fun tp!1773995 () Bool)

(assert (=> b!6372505 (= e!3868829 (and tp!1773994 tp!1773995))))

(assert (=> b!6371738 (= tp!1773895 e!3868829)))

(assert (= (and b!6371738 ((_ is Cons!65024) (exprs!6167 setElem!43448))) b!6372505))

(declare-fun b!6372506 () Bool)

(declare-fun e!3868830 () Bool)

(declare-fun tp!1773996 () Bool)

(declare-fun tp!1773997 () Bool)

(assert (=> b!6372506 (= e!3868830 (and tp!1773996 tp!1773997))))

(assert (=> b!6371756 (= tp!1773894 e!3868830)))

(assert (= (and b!6371756 ((_ is Cons!65024) (exprs!6167 (h!71474 zl!343)))) b!6372506))

(declare-fun b!6372509 () Bool)

(declare-fun e!3868831 () Bool)

(declare-fun tp!1773999 () Bool)

(assert (=> b!6372509 (= e!3868831 tp!1773999)))

(declare-fun b!6372510 () Bool)

(declare-fun tp!1773998 () Bool)

(declare-fun tp!1774002 () Bool)

(assert (=> b!6372510 (= e!3868831 (and tp!1773998 tp!1774002))))

(declare-fun b!6372507 () Bool)

(assert (=> b!6372507 (= e!3868831 tp_is_empty!41819)))

(declare-fun b!6372508 () Bool)

(declare-fun tp!1774001 () Bool)

(declare-fun tp!1774000 () Bool)

(assert (=> b!6372508 (= e!3868831 (and tp!1774001 tp!1774000))))

(assert (=> b!6371760 (= tp!1773893 e!3868831)))

(assert (= (and b!6371760 ((_ is ElementMatch!16283) (reg!16612 r!7292))) b!6372507))

(assert (= (and b!6371760 ((_ is Concat!25128) (reg!16612 r!7292))) b!6372508))

(assert (= (and b!6371760 ((_ is Star!16283) (reg!16612 r!7292))) b!6372509))

(assert (= (and b!6371760 ((_ is Union!16283) (reg!16612 r!7292))) b!6372510))

(declare-fun b!6372513 () Bool)

(declare-fun e!3868832 () Bool)

(declare-fun tp!1774004 () Bool)

(assert (=> b!6372513 (= e!3868832 tp!1774004)))

(declare-fun b!6372514 () Bool)

(declare-fun tp!1774003 () Bool)

(declare-fun tp!1774007 () Bool)

(assert (=> b!6372514 (= e!3868832 (and tp!1774003 tp!1774007))))

(declare-fun b!6372511 () Bool)

(assert (=> b!6372511 (= e!3868832 tp_is_empty!41819)))

(declare-fun b!6372512 () Bool)

(declare-fun tp!1774006 () Bool)

(declare-fun tp!1774005 () Bool)

(assert (=> b!6372512 (= e!3868832 (and tp!1774006 tp!1774005))))

(assert (=> b!6371755 (= tp!1773902 e!3868832)))

(assert (= (and b!6371755 ((_ is ElementMatch!16283) (regOne!33079 r!7292))) b!6372511))

(assert (= (and b!6371755 ((_ is Concat!25128) (regOne!33079 r!7292))) b!6372512))

(assert (= (and b!6371755 ((_ is Star!16283) (regOne!33079 r!7292))) b!6372513))

(assert (= (and b!6371755 ((_ is Union!16283) (regOne!33079 r!7292))) b!6372514))

(declare-fun b!6372517 () Bool)

(declare-fun e!3868833 () Bool)

(declare-fun tp!1774009 () Bool)

(assert (=> b!6372517 (= e!3868833 tp!1774009)))

(declare-fun b!6372518 () Bool)

(declare-fun tp!1774008 () Bool)

(declare-fun tp!1774012 () Bool)

(assert (=> b!6372518 (= e!3868833 (and tp!1774008 tp!1774012))))

(declare-fun b!6372515 () Bool)

(assert (=> b!6372515 (= e!3868833 tp_is_empty!41819)))

(declare-fun b!6372516 () Bool)

(declare-fun tp!1774011 () Bool)

(declare-fun tp!1774010 () Bool)

(assert (=> b!6372516 (= e!3868833 (and tp!1774011 tp!1774010))))

(assert (=> b!6371755 (= tp!1773897 e!3868833)))

(assert (= (and b!6371755 ((_ is ElementMatch!16283) (regTwo!33079 r!7292))) b!6372515))

(assert (= (and b!6371755 ((_ is Concat!25128) (regTwo!33079 r!7292))) b!6372516))

(assert (= (and b!6371755 ((_ is Star!16283) (regTwo!33079 r!7292))) b!6372517))

(assert (= (and b!6371755 ((_ is Union!16283) (regTwo!33079 r!7292))) b!6372518))

(declare-fun condSetEmpty!43454 () Bool)

(assert (=> setNonEmpty!43448 (= condSetEmpty!43454 (= setRest!43448 ((as const (Array Context!11334 Bool)) false)))))

(declare-fun setRes!43454 () Bool)

(assert (=> setNonEmpty!43448 (= tp!1773900 setRes!43454)))

(declare-fun setIsEmpty!43454 () Bool)

(assert (=> setIsEmpty!43454 setRes!43454))

(declare-fun e!3868836 () Bool)

(declare-fun setNonEmpty!43454 () Bool)

(declare-fun setElem!43454 () Context!11334)

(declare-fun tp!1774018 () Bool)

(assert (=> setNonEmpty!43454 (= setRes!43454 (and tp!1774018 (inv!83954 setElem!43454) e!3868836))))

(declare-fun setRest!43454 () (InoxSet Context!11334))

(assert (=> setNonEmpty!43454 (= setRest!43448 ((_ map or) (store ((as const (Array Context!11334 Bool)) false) setElem!43454 true) setRest!43454))))

(declare-fun b!6372523 () Bool)

(declare-fun tp!1774017 () Bool)

(assert (=> b!6372523 (= e!3868836 tp!1774017)))

(assert (= (and setNonEmpty!43448 condSetEmpty!43454) setIsEmpty!43454))

(assert (= (and setNonEmpty!43448 (not condSetEmpty!43454)) setNonEmpty!43454))

(assert (= setNonEmpty!43454 b!6372523))

(declare-fun m!7174798 () Bool)

(assert (=> setNonEmpty!43454 m!7174798))

(declare-fun b_lambda!242153 () Bool)

(assert (= b_lambda!242151 (or b!6371763 b_lambda!242153)))

(declare-fun bs!1595804 () Bool)

(declare-fun d!1998471 () Bool)

(assert (= bs!1595804 (and d!1998471 b!6371763)))

(assert (=> bs!1595804 (= (dynLambda!25797 lambda!351195 (h!71474 zl!343)) (derivationStepZipperUp!1457 (h!71474 zl!343) (h!71473 s!2326)))))

(assert (=> bs!1595804 m!7174244))

(assert (=> d!1998431 d!1998471))

(declare-fun b_lambda!242155 () Bool)

(assert (= b_lambda!242145 (or b!6371763 b_lambda!242155)))

(declare-fun bs!1595805 () Bool)

(declare-fun d!1998473 () Bool)

(assert (= bs!1595805 (and d!1998473 b!6371763)))

(assert (=> bs!1595805 (= (dynLambda!25797 lambda!351195 lt!2368458) (derivationStepZipperUp!1457 lt!2368458 (h!71473 s!2326)))))

(assert (=> bs!1595805 m!7174256))

(assert (=> d!1998377 d!1998473))

(check-sat (not d!1998389) (not d!1998453) (not b!6371982) (not b!6372468) (not b!6372457) (not d!1998393) (not bs!1595804) (not b_lambda!242153) (not d!1998417) (not d!1998457) (not b!6372377) (not b!6372517) (not b!6372513) (not b!6372441) (not b!6372510) (not b!6372506) (not bm!544143) (not b!6372400) (not b!6372314) (not d!1998421) (not bm!544183) (not b!6372097) (not d!1998451) (not b!6372376) (not d!1998463) (not b!6372456) (not b!6372439) (not b!6371981) (not b!6372309) (not b!6372467) (not b!6372459) (not b!6372092) (not bm!544181) (not d!1998443) (not b!6372437) (not b!6372466) (not bm!544153) (not b!6372509) (not b!6372222) (not b!6372231) (not b!6372523) (not d!1998435) (not b!6372399) (not b!6372381) (not d!1998447) (not b!6372320) (not b!6372481) (not d!1998455) (not d!1998429) (not b!6372512) (not b!6372098) (not d!1998469) (not bm!544171) (not b!6372498) (not b!6372099) tp_is_empty!41819 (not b!6372516) (not d!1998343) (not b!6372101) (not b!6372380) (not bm!544179) (not b!6372440) (not bm!544152) (not d!1998423) (not b!6372458) (not d!1998377) (not bm!544172) (not d!1998449) (not bm!544147) (not b!6372389) (not b!6372482) (not b!6372518) (not b!6372379) (not b!6372272) (not setNonEmpty!43454) (not d!1998399) (not b!6372514) (not b!6372505) (not b!6372394) (not b!6372494) (not b!6372462) (not b!6372415) (not b!6372154) (not bs!1595805) (not b!6372313) (not b!6372382) (not d!1998415) (not b!6372508) (not d!1998425) (not bm!544176) (not bm!544180) (not b!6372312) (not b!6372496) (not bm!544156) (not b!6372495) (not b!6372230) (not b!6372375) (not bm!544125) (not b!6372095) (not d!1998431) (not d!1998461) (not b!6372474) (not d!1998459) (not b!6372093) (not b_lambda!242155) (not b!6372235) (not d!1998467) (not b!6372443) (not d!1998361) (not bm!544146) (not bm!544175) (not b!6372395) (not d!1998385) (not b!6372499) (not b!6372401) (not d!1998465) (not b!6372236) (not b!6372344) (not b!6372436) (not b!6372416) (not b!6372465) (not d!1998407) (not b!6372319) (not b!6372390) (not bm!544144) (not d!1998351) (not b!6372279) (not b!6372500) (not bm!544173) (not b!6372469))
(check-sat)
(get-model)

(declare-fun b!6373132 () Bool)

(declare-fun res!2621700 () Bool)

(declare-fun e!3869179 () Bool)

(assert (=> b!6373132 (=> (not res!2621700) (not e!3869179))))

(declare-fun lt!2368589 () List!65149)

(declare-fun size!40355 (List!65149) Int)

(assert (=> b!6373132 (= res!2621700 (= (size!40355 lt!2368589) (+ (size!40355 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025))) (size!40355 (t!378749 s!2326)))))))

(declare-fun b!6373133 () Bool)

(assert (=> b!6373133 (= e!3869179 (or (not (= (t!378749 s!2326) Nil!65025)) (= lt!2368589 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025)))))))

(declare-fun b!6373131 () Bool)

(declare-fun e!3869178 () List!65149)

(assert (=> b!6373131 (= e!3869178 (Cons!65025 (h!71473 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025))) (++!14352 (t!378749 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025))) (t!378749 s!2326))))))

(declare-fun b!6373130 () Bool)

(assert (=> b!6373130 (= e!3869178 (t!378749 s!2326))))

(declare-fun d!1998723 () Bool)

(assert (=> d!1998723 e!3869179))

(declare-fun res!2621701 () Bool)

(assert (=> d!1998723 (=> (not res!2621701) (not e!3869179))))

(declare-fun content!12295 (List!65149) (InoxSet C!32836))

(assert (=> d!1998723 (= res!2621701 (= (content!12295 lt!2368589) ((_ map or) (content!12295 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025))) (content!12295 (t!378749 s!2326)))))))

(assert (=> d!1998723 (= lt!2368589 e!3869178)))

(declare-fun c!1160736 () Bool)

(assert (=> d!1998723 (= c!1160736 ((_ is Nil!65025) (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025))))))

(assert (=> d!1998723 (= (++!14352 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025)) (t!378749 s!2326)) lt!2368589)))

(assert (= (and d!1998723 c!1160736) b!6373130))

(assert (= (and d!1998723 (not c!1160736)) b!6373131))

(assert (= (and d!1998723 res!2621701) b!6373132))

(assert (= (and b!6373132 res!2621700) b!6373133))

(declare-fun m!7175350 () Bool)

(assert (=> b!6373132 m!7175350))

(assert (=> b!6373132 m!7174728))

(declare-fun m!7175352 () Bool)

(assert (=> b!6373132 m!7175352))

(declare-fun m!7175354 () Bool)

(assert (=> b!6373132 m!7175354))

(declare-fun m!7175356 () Bool)

(assert (=> b!6373131 m!7175356))

(declare-fun m!7175358 () Bool)

(assert (=> d!1998723 m!7175358))

(assert (=> d!1998723 m!7174728))

(declare-fun m!7175360 () Bool)

(assert (=> d!1998723 m!7175360))

(declare-fun m!7175362 () Bool)

(assert (=> d!1998723 m!7175362))

(assert (=> b!6372436 d!1998723))

(declare-fun b!6373136 () Bool)

(declare-fun res!2621702 () Bool)

(declare-fun e!3869181 () Bool)

(assert (=> b!6373136 (=> (not res!2621702) (not e!3869181))))

(declare-fun lt!2368590 () List!65149)

(assert (=> b!6373136 (= res!2621702 (= (size!40355 lt!2368590) (+ (size!40355 Nil!65025) (size!40355 (Cons!65025 (h!71473 s!2326) Nil!65025)))))))

(declare-fun b!6373137 () Bool)

(assert (=> b!6373137 (= e!3869181 (or (not (= (Cons!65025 (h!71473 s!2326) Nil!65025) Nil!65025)) (= lt!2368590 Nil!65025)))))

(declare-fun b!6373135 () Bool)

(declare-fun e!3869180 () List!65149)

(assert (=> b!6373135 (= e!3869180 (Cons!65025 (h!71473 Nil!65025) (++!14352 (t!378749 Nil!65025) (Cons!65025 (h!71473 s!2326) Nil!65025))))))

(declare-fun b!6373134 () Bool)

(assert (=> b!6373134 (= e!3869180 (Cons!65025 (h!71473 s!2326) Nil!65025))))

(declare-fun d!1998725 () Bool)

(assert (=> d!1998725 e!3869181))

(declare-fun res!2621703 () Bool)

(assert (=> d!1998725 (=> (not res!2621703) (not e!3869181))))

(assert (=> d!1998725 (= res!2621703 (= (content!12295 lt!2368590) ((_ map or) (content!12295 Nil!65025) (content!12295 (Cons!65025 (h!71473 s!2326) Nil!65025)))))))

(assert (=> d!1998725 (= lt!2368590 e!3869180)))

(declare-fun c!1160737 () Bool)

(assert (=> d!1998725 (= c!1160737 ((_ is Nil!65025) Nil!65025))))

(assert (=> d!1998725 (= (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025)) lt!2368590)))

(assert (= (and d!1998725 c!1160737) b!6373134))

(assert (= (and d!1998725 (not c!1160737)) b!6373135))

(assert (= (and d!1998725 res!2621703) b!6373136))

(assert (= (and b!6373136 res!2621702) b!6373137))

(declare-fun m!7175364 () Bool)

(assert (=> b!6373136 m!7175364))

(declare-fun m!7175366 () Bool)

(assert (=> b!6373136 m!7175366))

(declare-fun m!7175368 () Bool)

(assert (=> b!6373136 m!7175368))

(declare-fun m!7175370 () Bool)

(assert (=> b!6373135 m!7175370))

(declare-fun m!7175372 () Bool)

(assert (=> d!1998725 m!7175372))

(declare-fun m!7175374 () Bool)

(assert (=> d!1998725 m!7175374))

(declare-fun m!7175376 () Bool)

(assert (=> d!1998725 m!7175376))

(assert (=> b!6372436 d!1998725))

(declare-fun d!1998727 () Bool)

(assert (=> d!1998727 (= (++!14352 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025)) (t!378749 s!2326)) s!2326)))

(declare-fun lt!2368593 () Unit!158463)

(declare-fun choose!47369 (List!65149 C!32836 List!65149 List!65149) Unit!158463)

(assert (=> d!1998727 (= lt!2368593 (choose!47369 Nil!65025 (h!71473 s!2326) (t!378749 s!2326) s!2326))))

(assert (=> d!1998727 (= (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) (t!378749 s!2326))) s!2326)))

(assert (=> d!1998727 (= (lemmaMoveElementToOtherListKeepsConcatEq!2447 Nil!65025 (h!71473 s!2326) (t!378749 s!2326) s!2326) lt!2368593)))

(declare-fun bs!1595983 () Bool)

(assert (= bs!1595983 d!1998727))

(assert (=> bs!1595983 m!7174728))

(assert (=> bs!1595983 m!7174728))

(assert (=> bs!1595983 m!7174730))

(declare-fun m!7175378 () Bool)

(assert (=> bs!1595983 m!7175378))

(declare-fun m!7175380 () Bool)

(assert (=> bs!1595983 m!7175380))

(assert (=> b!6372436 d!1998727))

(declare-fun b!6373138 () Bool)

(declare-fun e!3869185 () Option!16174)

(assert (=> b!6373138 (= e!3869185 (Some!16173 (tuple2!66525 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025)) (t!378749 s!2326))))))

(declare-fun d!1998729 () Bool)

(declare-fun e!3869183 () Bool)

(assert (=> d!1998729 e!3869183))

(declare-fun res!2621706 () Bool)

(assert (=> d!1998729 (=> res!2621706 e!3869183)))

(declare-fun e!3869186 () Bool)

(assert (=> d!1998729 (= res!2621706 e!3869186)))

(declare-fun res!2621705 () Bool)

(assert (=> d!1998729 (=> (not res!2621705) (not e!3869186))))

(declare-fun lt!2368595 () Option!16174)

(assert (=> d!1998729 (= res!2621705 (isDefined!12877 lt!2368595))))

(assert (=> d!1998729 (= lt!2368595 e!3869185)))

(declare-fun c!1160738 () Bool)

(declare-fun e!3869184 () Bool)

(assert (=> d!1998729 (= c!1160738 e!3869184)))

(declare-fun res!2621707 () Bool)

(assert (=> d!1998729 (=> (not res!2621707) (not e!3869184))))

(assert (=> d!1998729 (= res!2621707 (matchR!8466 (regOne!33078 r!7292) (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025))))))

(assert (=> d!1998729 (validRegex!8019 (regOne!33078 r!7292))))

(assert (=> d!1998729 (= (findConcatSeparation!2588 (regOne!33078 r!7292) (regTwo!33078 r!7292) (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025)) (t!378749 s!2326) s!2326) lt!2368595)))

(declare-fun b!6373139 () Bool)

(declare-fun lt!2368594 () Unit!158463)

(declare-fun lt!2368596 () Unit!158463)

(assert (=> b!6373139 (= lt!2368594 lt!2368596)))

(assert (=> b!6373139 (= (++!14352 (++!14352 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025)) (Cons!65025 (h!71473 (t!378749 s!2326)) Nil!65025)) (t!378749 (t!378749 s!2326))) s!2326)))

(assert (=> b!6373139 (= lt!2368596 (lemmaMoveElementToOtherListKeepsConcatEq!2447 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025)) (h!71473 (t!378749 s!2326)) (t!378749 (t!378749 s!2326)) s!2326))))

(declare-fun e!3869182 () Option!16174)

(assert (=> b!6373139 (= e!3869182 (findConcatSeparation!2588 (regOne!33078 r!7292) (regTwo!33078 r!7292) (++!14352 (++!14352 Nil!65025 (Cons!65025 (h!71473 s!2326) Nil!65025)) (Cons!65025 (h!71473 (t!378749 s!2326)) Nil!65025)) (t!378749 (t!378749 s!2326)) s!2326))))

(declare-fun b!6373140 () Bool)

(declare-fun res!2621708 () Bool)

(assert (=> b!6373140 (=> (not res!2621708) (not e!3869186))))

(assert (=> b!6373140 (= res!2621708 (matchR!8466 (regTwo!33078 r!7292) (_2!36565 (get!22509 lt!2368595))))))

(declare-fun b!6373141 () Bool)

(assert (=> b!6373141 (= e!3869185 e!3869182)))

(declare-fun c!1160739 () Bool)

(assert (=> b!6373141 (= c!1160739 ((_ is Nil!65025) (t!378749 s!2326)))))

(declare-fun b!6373142 () Bool)

(assert (=> b!6373142 (= e!3869183 (not (isDefined!12877 lt!2368595)))))

(declare-fun b!6373143 () Bool)

(assert (=> b!6373143 (= e!3869186 (= (++!14352 (_1!36565 (get!22509 lt!2368595)) (_2!36565 (get!22509 lt!2368595))) s!2326))))

(declare-fun b!6373144 () Bool)

(declare-fun res!2621704 () Bool)

(assert (=> b!6373144 (=> (not res!2621704) (not e!3869186))))

(assert (=> b!6373144 (= res!2621704 (matchR!8466 (regOne!33078 r!7292) (_1!36565 (get!22509 lt!2368595))))))

(declare-fun b!6373145 () Bool)

(assert (=> b!6373145 (= e!3869182 None!16173)))

(declare-fun b!6373146 () Bool)

(assert (=> b!6373146 (= e!3869184 (matchR!8466 (regTwo!33078 r!7292) (t!378749 s!2326)))))

(assert (= (and d!1998729 res!2621707) b!6373146))

(assert (= (and d!1998729 c!1160738) b!6373138))

(assert (= (and d!1998729 (not c!1160738)) b!6373141))

(assert (= (and b!6373141 c!1160739) b!6373145))

(assert (= (and b!6373141 (not c!1160739)) b!6373139))

(assert (= (and d!1998729 res!2621705) b!6373144))

(assert (= (and b!6373144 res!2621704) b!6373140))

(assert (= (and b!6373140 res!2621708) b!6373143))

(assert (= (and d!1998729 (not res!2621706)) b!6373142))

(declare-fun m!7175382 () Bool)

(assert (=> b!6373144 m!7175382))

(declare-fun m!7175384 () Bool)

(assert (=> b!6373144 m!7175384))

(assert (=> b!6373139 m!7174728))

(declare-fun m!7175386 () Bool)

(assert (=> b!6373139 m!7175386))

(assert (=> b!6373139 m!7175386))

(declare-fun m!7175388 () Bool)

(assert (=> b!6373139 m!7175388))

(assert (=> b!6373139 m!7174728))

(declare-fun m!7175390 () Bool)

(assert (=> b!6373139 m!7175390))

(assert (=> b!6373139 m!7175386))

(declare-fun m!7175392 () Bool)

(assert (=> b!6373139 m!7175392))

(declare-fun m!7175394 () Bool)

(assert (=> b!6373142 m!7175394))

(declare-fun m!7175396 () Bool)

(assert (=> b!6373146 m!7175396))

(assert (=> d!1998729 m!7175394))

(assert (=> d!1998729 m!7174728))

(declare-fun m!7175398 () Bool)

(assert (=> d!1998729 m!7175398))

(assert (=> d!1998729 m!7174742))

(assert (=> b!6373143 m!7175382))

(declare-fun m!7175400 () Bool)

(assert (=> b!6373143 m!7175400))

(assert (=> b!6373140 m!7175382))

(declare-fun m!7175402 () Bool)

(assert (=> b!6373140 m!7175402))

(assert (=> b!6372436 d!1998729))

(declare-fun d!1998731 () Bool)

(declare-fun res!2621713 () Bool)

(declare-fun e!3869191 () Bool)

(assert (=> d!1998731 (=> res!2621713 e!3869191)))

(assert (=> d!1998731 (= res!2621713 ((_ is Nil!65024) (exprs!6167 lt!2368473)))))

(assert (=> d!1998731 (= (forall!15461 (exprs!6167 lt!2368473) lambda!351241) e!3869191)))

(declare-fun b!6373151 () Bool)

(declare-fun e!3869192 () Bool)

(assert (=> b!6373151 (= e!3869191 e!3869192)))

(declare-fun res!2621714 () Bool)

(assert (=> b!6373151 (=> (not res!2621714) (not e!3869192))))

(declare-fun dynLambda!25799 (Int Regex!16283) Bool)

(assert (=> b!6373151 (= res!2621714 (dynLambda!25799 lambda!351241 (h!71472 (exprs!6167 lt!2368473))))))

(declare-fun b!6373152 () Bool)

(assert (=> b!6373152 (= e!3869192 (forall!15461 (t!378748 (exprs!6167 lt!2368473)) lambda!351241))))

(assert (= (and d!1998731 (not res!2621713)) b!6373151))

(assert (= (and b!6373151 res!2621714) b!6373152))

(declare-fun b_lambda!242189 () Bool)

(assert (=> (not b_lambda!242189) (not b!6373151)))

(declare-fun m!7175404 () Bool)

(assert (=> b!6373151 m!7175404))

(declare-fun m!7175406 () Bool)

(assert (=> b!6373152 m!7175406))

(assert (=> d!1998407 d!1998731))

(declare-fun d!1998733 () Bool)

(declare-fun c!1160740 () Bool)

(assert (=> d!1998733 (= c!1160740 (isEmpty!37145 (tail!12144 s!2326)))))

(declare-fun e!3869193 () Bool)

(assert (=> d!1998733 (= (matchZipper!2295 (derivationStepZipper!2249 lt!2368474 (head!13059 s!2326)) (tail!12144 s!2326)) e!3869193)))

(declare-fun b!6373153 () Bool)

(assert (=> b!6373153 (= e!3869193 (nullableZipper!2049 (derivationStepZipper!2249 lt!2368474 (head!13059 s!2326))))))

(declare-fun b!6373154 () Bool)

(assert (=> b!6373154 (= e!3869193 (matchZipper!2295 (derivationStepZipper!2249 (derivationStepZipper!2249 lt!2368474 (head!13059 s!2326)) (head!13059 (tail!12144 s!2326))) (tail!12144 (tail!12144 s!2326))))))

(assert (= (and d!1998733 c!1160740) b!6373153))

(assert (= (and d!1998733 (not c!1160740)) b!6373154))

(assert (=> d!1998733 m!7174632))

(assert (=> d!1998733 m!7174634))

(assert (=> b!6373153 m!7174766))

(declare-fun m!7175408 () Bool)

(assert (=> b!6373153 m!7175408))

(assert (=> b!6373154 m!7174632))

(declare-fun m!7175410 () Bool)

(assert (=> b!6373154 m!7175410))

(assert (=> b!6373154 m!7174766))

(assert (=> b!6373154 m!7175410))

(declare-fun m!7175412 () Bool)

(assert (=> b!6373154 m!7175412))

(assert (=> b!6373154 m!7174632))

(declare-fun m!7175414 () Bool)

(assert (=> b!6373154 m!7175414))

(assert (=> b!6373154 m!7175412))

(assert (=> b!6373154 m!7175414))

(declare-fun m!7175416 () Bool)

(assert (=> b!6373154 m!7175416))

(assert (=> b!6372457 d!1998733))

(declare-fun bs!1595984 () Bool)

(declare-fun d!1998735 () Bool)

(assert (= bs!1595984 (and d!1998735 b!6371763)))

(declare-fun lambda!351292 () Int)

(assert (=> bs!1595984 (= (= (head!13059 s!2326) (h!71473 s!2326)) (= lambda!351292 lambda!351195))))

(declare-fun bs!1595985 () Bool)

(assert (= bs!1595985 (and d!1998735 d!1998385)))

(assert (=> bs!1595985 (= (= (head!13059 s!2326) (h!71473 s!2326)) (= lambda!351292 lambda!351227))))

(assert (=> d!1998735 true))

(assert (=> d!1998735 (= (derivationStepZipper!2249 lt!2368474 (head!13059 s!2326)) (flatMap!1788 lt!2368474 lambda!351292))))

(declare-fun bs!1595986 () Bool)

(assert (= bs!1595986 d!1998735))

(declare-fun m!7175418 () Bool)

(assert (=> bs!1595986 m!7175418))

(assert (=> b!6372457 d!1998735))

(declare-fun d!1998737 () Bool)

(assert (=> d!1998737 (= (head!13059 s!2326) (h!71473 s!2326))))

(assert (=> b!6372457 d!1998737))

(declare-fun d!1998739 () Bool)

(assert (=> d!1998739 (= (tail!12144 s!2326) (t!378749 s!2326))))

(assert (=> b!6372457 d!1998739))

(declare-fun d!1998741 () Bool)

(declare-fun res!2621715 () Bool)

(declare-fun e!3869194 () Bool)

(assert (=> d!1998741 (=> res!2621715 e!3869194)))

(assert (=> d!1998741 (= res!2621715 ((_ is Nil!65024) (exprs!6167 (h!71474 zl!343))))))

(assert (=> d!1998741 (= (forall!15461 (exprs!6167 (h!71474 zl!343)) lambda!351220) e!3869194)))

(declare-fun b!6373155 () Bool)

(declare-fun e!3869195 () Bool)

(assert (=> b!6373155 (= e!3869194 e!3869195)))

(declare-fun res!2621716 () Bool)

(assert (=> b!6373155 (=> (not res!2621716) (not e!3869195))))

(assert (=> b!6373155 (= res!2621716 (dynLambda!25799 lambda!351220 (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6373156 () Bool)

(assert (=> b!6373156 (= e!3869195 (forall!15461 (t!378748 (exprs!6167 (h!71474 zl!343))) lambda!351220))))

(assert (= (and d!1998741 (not res!2621715)) b!6373155))

(assert (= (and b!6373155 res!2621716) b!6373156))

(declare-fun b_lambda!242191 () Bool)

(assert (=> (not b_lambda!242191) (not b!6373155)))

(declare-fun m!7175420 () Bool)

(assert (=> b!6373155 m!7175420))

(declare-fun m!7175422 () Bool)

(assert (=> b!6373156 m!7175422))

(assert (=> d!1998343 d!1998741))

(assert (=> d!1998453 d!1998447))

(declare-fun d!1998743 () Bool)

(declare-fun res!2621719 () Bool)

(declare-fun e!3869200 () Bool)

(assert (=> d!1998743 (=> res!2621719 e!3869200)))

(assert (=> d!1998743 (= res!2621719 ((_ is ElementMatch!16283) (regOne!33078 r!7292)))))

(assert (=> d!1998743 (= (validRegex!8019 (regOne!33078 r!7292)) e!3869200)))

(declare-fun b!6373157 () Bool)

(declare-fun e!3869201 () Bool)

(assert (=> b!6373157 (= e!3869200 e!3869201)))

(declare-fun c!1160742 () Bool)

(assert (=> b!6373157 (= c!1160742 ((_ is Star!16283) (regOne!33078 r!7292)))))

(declare-fun b!6373158 () Bool)

(declare-fun res!2621717 () Bool)

(declare-fun e!3869196 () Bool)

(assert (=> b!6373158 (=> res!2621717 e!3869196)))

(assert (=> b!6373158 (= res!2621717 (not ((_ is Concat!25128) (regOne!33078 r!7292))))))

(declare-fun e!3869199 () Bool)

(assert (=> b!6373158 (= e!3869199 e!3869196)))

(declare-fun bm!544300 () Bool)

(declare-fun call!544305 () Bool)

(declare-fun c!1160741 () Bool)

(assert (=> bm!544300 (= call!544305 (validRegex!8019 (ite c!1160741 (regOne!33079 (regOne!33078 r!7292)) (regOne!33078 (regOne!33078 r!7292)))))))

(declare-fun b!6373159 () Bool)

(declare-fun e!3869197 () Bool)

(declare-fun call!544306 () Bool)

(assert (=> b!6373159 (= e!3869197 call!544306)))

(declare-fun b!6373160 () Bool)

(assert (=> b!6373160 (= e!3869196 e!3869197)))

(declare-fun res!2621721 () Bool)

(assert (=> b!6373160 (=> (not res!2621721) (not e!3869197))))

(assert (=> b!6373160 (= res!2621721 call!544305)))

(declare-fun b!6373161 () Bool)

(declare-fun e!3869202 () Bool)

(assert (=> b!6373161 (= e!3869201 e!3869202)))

(declare-fun res!2621720 () Bool)

(assert (=> b!6373161 (= res!2621720 (not (nullable!6276 (reg!16612 (regOne!33078 r!7292)))))))

(assert (=> b!6373161 (=> (not res!2621720) (not e!3869202))))

(declare-fun b!6373162 () Bool)

(declare-fun res!2621718 () Bool)

(declare-fun e!3869198 () Bool)

(assert (=> b!6373162 (=> (not res!2621718) (not e!3869198))))

(assert (=> b!6373162 (= res!2621718 call!544305)))

(assert (=> b!6373162 (= e!3869199 e!3869198)))

(declare-fun call!544307 () Bool)

(declare-fun bm!544301 () Bool)

(assert (=> bm!544301 (= call!544307 (validRegex!8019 (ite c!1160742 (reg!16612 (regOne!33078 r!7292)) (ite c!1160741 (regTwo!33079 (regOne!33078 r!7292)) (regTwo!33078 (regOne!33078 r!7292))))))))

(declare-fun b!6373163 () Bool)

(assert (=> b!6373163 (= e!3869202 call!544307)))

(declare-fun bm!544302 () Bool)

(assert (=> bm!544302 (= call!544306 call!544307)))

(declare-fun b!6373164 () Bool)

(assert (=> b!6373164 (= e!3869201 e!3869199)))

(assert (=> b!6373164 (= c!1160741 ((_ is Union!16283) (regOne!33078 r!7292)))))

(declare-fun b!6373165 () Bool)

(assert (=> b!6373165 (= e!3869198 call!544306)))

(assert (= (and d!1998743 (not res!2621719)) b!6373157))

(assert (= (and b!6373157 c!1160742) b!6373161))

(assert (= (and b!6373157 (not c!1160742)) b!6373164))

(assert (= (and b!6373161 res!2621720) b!6373163))

(assert (= (and b!6373164 c!1160741) b!6373162))

(assert (= (and b!6373164 (not c!1160741)) b!6373158))

(assert (= (and b!6373162 res!2621718) b!6373165))

(assert (= (and b!6373158 (not res!2621717)) b!6373160))

(assert (= (and b!6373160 res!2621721) b!6373159))

(assert (= (or b!6373165 b!6373159) bm!544302))

(assert (= (or b!6373162 b!6373160) bm!544300))

(assert (= (or b!6373163 bm!544302) bm!544301))

(declare-fun m!7175424 () Bool)

(assert (=> bm!544300 m!7175424))

(declare-fun m!7175426 () Bool)

(assert (=> b!6373161 m!7175426))

(declare-fun m!7175428 () Bool)

(assert (=> bm!544301 m!7175428))

(assert (=> d!1998453 d!1998743))

(assert (=> d!1998453 d!1998457))

(declare-fun bs!1595987 () Bool)

(declare-fun d!1998745 () Bool)

(assert (= bs!1595987 (and d!1998745 b!6372273)))

(declare-fun lambda!351295 () Int)

(assert (=> bs!1595987 (not (= lambda!351295 lambda!351247))))

(declare-fun bs!1595988 () Bool)

(assert (= bs!1595988 (and d!1998745 b!6372278)))

(assert (=> bs!1595988 (not (= lambda!351295 lambda!351246))))

(declare-fun bs!1595989 () Bool)

(assert (= bs!1595989 (and d!1998745 d!1998455)))

(assert (=> bs!1595989 (not (= lambda!351295 lambda!351259))))

(declare-fun bs!1595990 () Bool)

(assert (= bs!1595990 (and d!1998745 b!6371753)))

(assert (=> bs!1595990 (not (= lambda!351295 lambda!351194))))

(assert (=> bs!1595989 (= lambda!351295 lambda!351258)))

(declare-fun bs!1595991 () Bool)

(assert (= bs!1595991 (and d!1998745 d!1998453)))

(assert (=> bs!1595991 (= lambda!351295 lambda!351253)))

(assert (=> bs!1595990 (= lambda!351295 lambda!351193)))

(assert (=> d!1998745 true))

(assert (=> d!1998745 true))

(assert (=> d!1998745 true))

(assert (=> d!1998745 (= (isDefined!12877 (findConcatSeparation!2588 (regOne!33078 r!7292) (regTwo!33078 r!7292) Nil!65025 s!2326 s!2326)) (Exists!3353 lambda!351295))))

(assert (=> d!1998745 true))

(declare-fun _$89!2611 () Unit!158463)

(assert (=> d!1998745 (= (choose!47365 (regOne!33078 r!7292) (regTwo!33078 r!7292) s!2326) _$89!2611)))

(declare-fun bs!1595992 () Bool)

(assert (= bs!1595992 d!1998745))

(assert (=> bs!1595992 m!7174276))

(assert (=> bs!1595992 m!7174276))

(assert (=> bs!1595992 m!7174278))

(declare-fun m!7175430 () Bool)

(assert (=> bs!1595992 m!7175430))

(assert (=> d!1998453 d!1998745))

(declare-fun d!1998747 () Bool)

(assert (=> d!1998747 (= (Exists!3353 lambda!351253) (choose!47364 lambda!351253))))

(declare-fun bs!1595993 () Bool)

(assert (= bs!1595993 d!1998747))

(declare-fun m!7175432 () Bool)

(assert (=> bs!1595993 m!7175432))

(assert (=> d!1998453 d!1998747))

(declare-fun b!6373172 () Bool)

(declare-fun res!2621726 () Bool)

(declare-fun e!3869206 () Bool)

(assert (=> b!6373172 (=> (not res!2621726) (not e!3869206))))

(declare-fun lt!2368597 () List!65149)

(assert (=> b!6373172 (= res!2621726 (= (size!40355 lt!2368597) (+ (size!40355 (_1!36565 (get!22509 lt!2368549))) (size!40355 (_2!36565 (get!22509 lt!2368549))))))))

(declare-fun b!6373173 () Bool)

(assert (=> b!6373173 (= e!3869206 (or (not (= (_2!36565 (get!22509 lt!2368549)) Nil!65025)) (= lt!2368597 (_1!36565 (get!22509 lt!2368549)))))))

(declare-fun b!6373171 () Bool)

(declare-fun e!3869205 () List!65149)

(assert (=> b!6373171 (= e!3869205 (Cons!65025 (h!71473 (_1!36565 (get!22509 lt!2368549))) (++!14352 (t!378749 (_1!36565 (get!22509 lt!2368549))) (_2!36565 (get!22509 lt!2368549)))))))

(declare-fun b!6373170 () Bool)

(assert (=> b!6373170 (= e!3869205 (_2!36565 (get!22509 lt!2368549)))))

(declare-fun d!1998749 () Bool)

(assert (=> d!1998749 e!3869206))

(declare-fun res!2621727 () Bool)

(assert (=> d!1998749 (=> (not res!2621727) (not e!3869206))))

(assert (=> d!1998749 (= res!2621727 (= (content!12295 lt!2368597) ((_ map or) (content!12295 (_1!36565 (get!22509 lt!2368549))) (content!12295 (_2!36565 (get!22509 lt!2368549))))))))

(assert (=> d!1998749 (= lt!2368597 e!3869205)))

(declare-fun c!1160743 () Bool)

(assert (=> d!1998749 (= c!1160743 ((_ is Nil!65025) (_1!36565 (get!22509 lt!2368549))))))

(assert (=> d!1998749 (= (++!14352 (_1!36565 (get!22509 lt!2368549)) (_2!36565 (get!22509 lt!2368549))) lt!2368597)))

(assert (= (and d!1998749 c!1160743) b!6373170))

(assert (= (and d!1998749 (not c!1160743)) b!6373171))

(assert (= (and d!1998749 res!2621727) b!6373172))

(assert (= (and b!6373172 res!2621726) b!6373173))

(declare-fun m!7175434 () Bool)

(assert (=> b!6373172 m!7175434))

(declare-fun m!7175436 () Bool)

(assert (=> b!6373172 m!7175436))

(declare-fun m!7175438 () Bool)

(assert (=> b!6373172 m!7175438))

(declare-fun m!7175440 () Bool)

(assert (=> b!6373171 m!7175440))

(declare-fun m!7175442 () Bool)

(assert (=> d!1998749 m!7175442))

(declare-fun m!7175444 () Bool)

(assert (=> d!1998749 m!7175444))

(declare-fun m!7175446 () Bool)

(assert (=> d!1998749 m!7175446))

(assert (=> b!6372440 d!1998749))

(declare-fun d!1998751 () Bool)

(assert (=> d!1998751 (= (get!22509 lt!2368549) (v!52342 lt!2368549))))

(assert (=> b!6372440 d!1998751))

(declare-fun d!1998753 () Bool)

(assert (=> d!1998753 (= (isEmpty!37145 s!2326) ((_ is Nil!65025) s!2326))))

(assert (=> bm!544156 d!1998753))

(declare-fun d!1998755 () Bool)

(declare-fun lambda!351298 () Int)

(declare-fun exists!2581 ((InoxSet Context!11334) Int) Bool)

(assert (=> d!1998755 (= (nullableZipper!2049 ((_ map or) lt!2368449 lt!2368457)) (exists!2581 ((_ map or) lt!2368449 lt!2368457) lambda!351298))))

(declare-fun bs!1595994 () Bool)

(assert (= bs!1595994 d!1998755))

(declare-fun m!7175448 () Bool)

(assert (=> bs!1595994 m!7175448))

(assert (=> b!6372468 d!1998755))

(declare-fun d!1998757 () Bool)

(declare-fun res!2621730 () Bool)

(declare-fun e!3869211 () Bool)

(assert (=> d!1998757 (=> res!2621730 e!3869211)))

(assert (=> d!1998757 (= res!2621730 ((_ is ElementMatch!16283) lt!2368523))))

(assert (=> d!1998757 (= (validRegex!8019 lt!2368523) e!3869211)))

(declare-fun b!6373174 () Bool)

(declare-fun e!3869212 () Bool)

(assert (=> b!6373174 (= e!3869211 e!3869212)))

(declare-fun c!1160747 () Bool)

(assert (=> b!6373174 (= c!1160747 ((_ is Star!16283) lt!2368523))))

(declare-fun b!6373175 () Bool)

(declare-fun res!2621728 () Bool)

(declare-fun e!3869207 () Bool)

(assert (=> b!6373175 (=> res!2621728 e!3869207)))

(assert (=> b!6373175 (= res!2621728 (not ((_ is Concat!25128) lt!2368523)))))

(declare-fun e!3869210 () Bool)

(assert (=> b!6373175 (= e!3869210 e!3869207)))

(declare-fun bm!544303 () Bool)

(declare-fun call!544308 () Bool)

(declare-fun c!1160746 () Bool)

(assert (=> bm!544303 (= call!544308 (validRegex!8019 (ite c!1160746 (regOne!33079 lt!2368523) (regOne!33078 lt!2368523))))))

(declare-fun b!6373176 () Bool)

(declare-fun e!3869208 () Bool)

(declare-fun call!544309 () Bool)

(assert (=> b!6373176 (= e!3869208 call!544309)))

(declare-fun b!6373177 () Bool)

(assert (=> b!6373177 (= e!3869207 e!3869208)))

(declare-fun res!2621732 () Bool)

(assert (=> b!6373177 (=> (not res!2621732) (not e!3869208))))

(assert (=> b!6373177 (= res!2621732 call!544308)))

(declare-fun b!6373178 () Bool)

(declare-fun e!3869213 () Bool)

(assert (=> b!6373178 (= e!3869212 e!3869213)))

(declare-fun res!2621731 () Bool)

(assert (=> b!6373178 (= res!2621731 (not (nullable!6276 (reg!16612 lt!2368523))))))

(assert (=> b!6373178 (=> (not res!2621731) (not e!3869213))))

(declare-fun b!6373179 () Bool)

(declare-fun res!2621729 () Bool)

(declare-fun e!3869209 () Bool)

(assert (=> b!6373179 (=> (not res!2621729) (not e!3869209))))

(assert (=> b!6373179 (= res!2621729 call!544308)))

(assert (=> b!6373179 (= e!3869210 e!3869209)))

(declare-fun bm!544304 () Bool)

(declare-fun call!544310 () Bool)

(assert (=> bm!544304 (= call!544310 (validRegex!8019 (ite c!1160747 (reg!16612 lt!2368523) (ite c!1160746 (regTwo!33079 lt!2368523) (regTwo!33078 lt!2368523)))))))

(declare-fun b!6373180 () Bool)

(assert (=> b!6373180 (= e!3869213 call!544310)))

(declare-fun bm!544305 () Bool)

(assert (=> bm!544305 (= call!544309 call!544310)))

(declare-fun b!6373181 () Bool)

(assert (=> b!6373181 (= e!3869212 e!3869210)))

(assert (=> b!6373181 (= c!1160746 ((_ is Union!16283) lt!2368523))))

(declare-fun b!6373182 () Bool)

(assert (=> b!6373182 (= e!3869209 call!544309)))

(assert (= (and d!1998757 (not res!2621730)) b!6373174))

(assert (= (and b!6373174 c!1160747) b!6373178))

(assert (= (and b!6373174 (not c!1160747)) b!6373181))

(assert (= (and b!6373178 res!2621731) b!6373180))

(assert (= (and b!6373181 c!1160746) b!6373179))

(assert (= (and b!6373181 (not c!1160746)) b!6373175))

(assert (= (and b!6373179 res!2621729) b!6373182))

(assert (= (and b!6373175 (not res!2621728)) b!6373177))

(assert (= (and b!6373177 res!2621732) b!6373176))

(assert (= (or b!6373182 b!6373176) bm!544305))

(assert (= (or b!6373179 b!6373177) bm!544303))

(assert (= (or b!6373180 bm!544305) bm!544304))

(declare-fun m!7175450 () Bool)

(assert (=> bm!544303 m!7175450))

(declare-fun m!7175452 () Bool)

(assert (=> b!6373178 m!7175452))

(declare-fun m!7175454 () Bool)

(assert (=> bm!544304 m!7175454))

(assert (=> d!1998389 d!1998757))

(declare-fun d!1998759 () Bool)

(declare-fun res!2621733 () Bool)

(declare-fun e!3869214 () Bool)

(assert (=> d!1998759 (=> res!2621733 e!3869214)))

(assert (=> d!1998759 (= res!2621733 ((_ is Nil!65024) (unfocusZipperList!1704 zl!343)))))

(assert (=> d!1998759 (= (forall!15461 (unfocusZipperList!1704 zl!343) lambda!351236) e!3869214)))

(declare-fun b!6373183 () Bool)

(declare-fun e!3869215 () Bool)

(assert (=> b!6373183 (= e!3869214 e!3869215)))

(declare-fun res!2621734 () Bool)

(assert (=> b!6373183 (=> (not res!2621734) (not e!3869215))))

(assert (=> b!6373183 (= res!2621734 (dynLambda!25799 lambda!351236 (h!71472 (unfocusZipperList!1704 zl!343))))))

(declare-fun b!6373184 () Bool)

(assert (=> b!6373184 (= e!3869215 (forall!15461 (t!378748 (unfocusZipperList!1704 zl!343)) lambda!351236))))

(assert (= (and d!1998759 (not res!2621733)) b!6373183))

(assert (= (and b!6373183 res!2621734) b!6373184))

(declare-fun b_lambda!242193 () Bool)

(assert (=> (not b_lambda!242193) (not b!6373183)))

(declare-fun m!7175456 () Bool)

(assert (=> b!6373183 m!7175456))

(declare-fun m!7175458 () Bool)

(assert (=> b!6373184 m!7175458))

(assert (=> d!1998389 d!1998759))

(declare-fun d!1998761 () Bool)

(assert (=> d!1998761 (= (nullable!6276 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343))))) (nullableFct!2222 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343))))))))

(declare-fun bs!1595995 () Bool)

(assert (= bs!1595995 d!1998761))

(declare-fun m!7175460 () Bool)

(assert (=> bs!1595995 m!7175460))

(assert (=> b!6372401 d!1998761))

(assert (=> d!1998459 d!1998753))

(assert (=> d!1998415 d!1998753))

(assert (=> d!1998415 d!1998401))

(declare-fun d!1998763 () Bool)

(assert (=> d!1998763 true))

(declare-fun setRes!43462 () Bool)

(assert (=> d!1998763 setRes!43462))

(declare-fun condSetEmpty!43462 () Bool)

(declare-fun res!2621737 () (InoxSet Context!11334))

(assert (=> d!1998763 (= condSetEmpty!43462 (= res!2621737 ((as const (Array Context!11334 Bool)) false)))))

(assert (=> d!1998763 (= (choose!47360 lt!2368474 lambda!351195) res!2621737)))

(declare-fun setIsEmpty!43462 () Bool)

(assert (=> setIsEmpty!43462 setRes!43462))

(declare-fun setNonEmpty!43462 () Bool)

(declare-fun tp!1774185 () Bool)

(declare-fun setElem!43462 () Context!11334)

(declare-fun e!3869218 () Bool)

(assert (=> setNonEmpty!43462 (= setRes!43462 (and tp!1774185 (inv!83954 setElem!43462) e!3869218))))

(declare-fun setRest!43462 () (InoxSet Context!11334))

(assert (=> setNonEmpty!43462 (= res!2621737 ((_ map or) (store ((as const (Array Context!11334 Bool)) false) setElem!43462 true) setRest!43462))))

(declare-fun b!6373187 () Bool)

(declare-fun tp!1774186 () Bool)

(assert (=> b!6373187 (= e!3869218 tp!1774186)))

(assert (= (and d!1998763 condSetEmpty!43462) setIsEmpty!43462))

(assert (= (and d!1998763 (not condSetEmpty!43462)) setNonEmpty!43462))

(assert (= setNonEmpty!43462 b!6373187))

(declare-fun m!7175462 () Bool)

(assert (=> setNonEmpty!43462 m!7175462))

(assert (=> d!1998361 d!1998763))

(declare-fun d!1998765 () Bool)

(declare-fun res!2621740 () Bool)

(declare-fun e!3869223 () Bool)

(assert (=> d!1998765 (=> res!2621740 e!3869223)))

(assert (=> d!1998765 (= res!2621740 ((_ is ElementMatch!16283) lt!2368540))))

(assert (=> d!1998765 (= (validRegex!8019 lt!2368540) e!3869223)))

(declare-fun b!6373188 () Bool)

(declare-fun e!3869224 () Bool)

(assert (=> b!6373188 (= e!3869223 e!3869224)))

(declare-fun c!1160749 () Bool)

(assert (=> b!6373188 (= c!1160749 ((_ is Star!16283) lt!2368540))))

(declare-fun b!6373189 () Bool)

(declare-fun res!2621738 () Bool)

(declare-fun e!3869219 () Bool)

(assert (=> b!6373189 (=> res!2621738 e!3869219)))

(assert (=> b!6373189 (= res!2621738 (not ((_ is Concat!25128) lt!2368540)))))

(declare-fun e!3869222 () Bool)

(assert (=> b!6373189 (= e!3869222 e!3869219)))

(declare-fun bm!544306 () Bool)

(declare-fun call!544311 () Bool)

(declare-fun c!1160748 () Bool)

(assert (=> bm!544306 (= call!544311 (validRegex!8019 (ite c!1160748 (regOne!33079 lt!2368540) (regOne!33078 lt!2368540))))))

(declare-fun b!6373190 () Bool)

(declare-fun e!3869220 () Bool)

(declare-fun call!544312 () Bool)

(assert (=> b!6373190 (= e!3869220 call!544312)))

(declare-fun b!6373191 () Bool)

(assert (=> b!6373191 (= e!3869219 e!3869220)))

(declare-fun res!2621742 () Bool)

(assert (=> b!6373191 (=> (not res!2621742) (not e!3869220))))

(assert (=> b!6373191 (= res!2621742 call!544311)))

(declare-fun b!6373192 () Bool)

(declare-fun e!3869225 () Bool)

(assert (=> b!6373192 (= e!3869224 e!3869225)))

(declare-fun res!2621741 () Bool)

(assert (=> b!6373192 (= res!2621741 (not (nullable!6276 (reg!16612 lt!2368540))))))

(assert (=> b!6373192 (=> (not res!2621741) (not e!3869225))))

(declare-fun b!6373193 () Bool)

(declare-fun res!2621739 () Bool)

(declare-fun e!3869221 () Bool)

(assert (=> b!6373193 (=> (not res!2621739) (not e!3869221))))

(assert (=> b!6373193 (= res!2621739 call!544311)))

(assert (=> b!6373193 (= e!3869222 e!3869221)))

(declare-fun bm!544307 () Bool)

(declare-fun call!544313 () Bool)

(assert (=> bm!544307 (= call!544313 (validRegex!8019 (ite c!1160749 (reg!16612 lt!2368540) (ite c!1160748 (regTwo!33079 lt!2368540) (regTwo!33078 lt!2368540)))))))

(declare-fun b!6373194 () Bool)

(assert (=> b!6373194 (= e!3869225 call!544313)))

(declare-fun bm!544308 () Bool)

(assert (=> bm!544308 (= call!544312 call!544313)))

(declare-fun b!6373195 () Bool)

(assert (=> b!6373195 (= e!3869224 e!3869222)))

(assert (=> b!6373195 (= c!1160748 ((_ is Union!16283) lt!2368540))))

(declare-fun b!6373196 () Bool)

(assert (=> b!6373196 (= e!3869221 call!544312)))

(assert (= (and d!1998765 (not res!2621740)) b!6373188))

(assert (= (and b!6373188 c!1160749) b!6373192))

(assert (= (and b!6373188 (not c!1160749)) b!6373195))

(assert (= (and b!6373192 res!2621741) b!6373194))

(assert (= (and b!6373195 c!1160748) b!6373193))

(assert (= (and b!6373195 (not c!1160748)) b!6373189))

(assert (= (and b!6373193 res!2621739) b!6373196))

(assert (= (and b!6373189 (not res!2621738)) b!6373191))

(assert (= (and b!6373191 res!2621742) b!6373190))

(assert (= (or b!6373196 b!6373190) bm!544308))

(assert (= (or b!6373193 b!6373191) bm!544306))

(assert (= (or b!6373194 bm!544308) bm!544307))

(declare-fun m!7175464 () Bool)

(assert (=> bm!544306 m!7175464))

(declare-fun m!7175466 () Bool)

(assert (=> b!6373192 m!7175466))

(declare-fun m!7175468 () Bool)

(assert (=> bm!544307 m!7175468))

(assert (=> d!1998429 d!1998765))

(assert (=> d!1998429 d!1998389))

(assert (=> d!1998429 d!1998393))

(declare-fun d!1998767 () Bool)

(declare-fun res!2621745 () Bool)

(declare-fun e!3869230 () Bool)

(assert (=> d!1998767 (=> res!2621745 e!3869230)))

(assert (=> d!1998767 (= res!2621745 ((_ is ElementMatch!16283) (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292)))))))

(assert (=> d!1998767 (= (validRegex!8019 (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292)))) e!3869230)))

(declare-fun b!6373197 () Bool)

(declare-fun e!3869231 () Bool)

(assert (=> b!6373197 (= e!3869230 e!3869231)))

(declare-fun c!1160751 () Bool)

(assert (=> b!6373197 (= c!1160751 ((_ is Star!16283) (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292)))))))

(declare-fun b!6373198 () Bool)

(declare-fun res!2621743 () Bool)

(declare-fun e!3869226 () Bool)

(assert (=> b!6373198 (=> res!2621743 e!3869226)))

(assert (=> b!6373198 (= res!2621743 (not ((_ is Concat!25128) (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292))))))))

(declare-fun e!3869229 () Bool)

(assert (=> b!6373198 (= e!3869229 e!3869226)))

(declare-fun bm!544309 () Bool)

(declare-fun c!1160750 () Bool)

(declare-fun call!544314 () Bool)

(assert (=> bm!544309 (= call!544314 (validRegex!8019 (ite c!1160750 (regOne!33079 (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292)))) (regOne!33078 (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292)))))))))

(declare-fun b!6373199 () Bool)

(declare-fun e!3869227 () Bool)

(declare-fun call!544315 () Bool)

(assert (=> b!6373199 (= e!3869227 call!544315)))

(declare-fun b!6373200 () Bool)

(assert (=> b!6373200 (= e!3869226 e!3869227)))

(declare-fun res!2621747 () Bool)

(assert (=> b!6373200 (=> (not res!2621747) (not e!3869227))))

(assert (=> b!6373200 (= res!2621747 call!544314)))

(declare-fun b!6373201 () Bool)

(declare-fun e!3869232 () Bool)

(assert (=> b!6373201 (= e!3869231 e!3869232)))

(declare-fun res!2621746 () Bool)

(assert (=> b!6373201 (= res!2621746 (not (nullable!6276 (reg!16612 (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292)))))))))

(assert (=> b!6373201 (=> (not res!2621746) (not e!3869232))))

(declare-fun b!6373202 () Bool)

(declare-fun res!2621744 () Bool)

(declare-fun e!3869228 () Bool)

(assert (=> b!6373202 (=> (not res!2621744) (not e!3869228))))

(assert (=> b!6373202 (= res!2621744 call!544314)))

(assert (=> b!6373202 (= e!3869229 e!3869228)))

(declare-fun bm!544310 () Bool)

(declare-fun call!544316 () Bool)

(assert (=> bm!544310 (= call!544316 (validRegex!8019 (ite c!1160751 (reg!16612 (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292)))) (ite c!1160750 (regTwo!33079 (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292)))) (regTwo!33078 (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292))))))))))

(declare-fun b!6373203 () Bool)

(assert (=> b!6373203 (= e!3869232 call!544316)))

(declare-fun bm!544311 () Bool)

(assert (=> bm!544311 (= call!544315 call!544316)))

(declare-fun b!6373204 () Bool)

(assert (=> b!6373204 (= e!3869231 e!3869229)))

(assert (=> b!6373204 (= c!1160750 ((_ is Union!16283) (ite c!1160508 (reg!16612 r!7292) (ite c!1160507 (regTwo!33079 r!7292) (regTwo!33078 r!7292)))))))

(declare-fun b!6373205 () Bool)

(assert (=> b!6373205 (= e!3869228 call!544315)))

(assert (= (and d!1998767 (not res!2621745)) b!6373197))

(assert (= (and b!6373197 c!1160751) b!6373201))

(assert (= (and b!6373197 (not c!1160751)) b!6373204))

(assert (= (and b!6373201 res!2621746) b!6373203))

(assert (= (and b!6373204 c!1160750) b!6373202))

(assert (= (and b!6373204 (not c!1160750)) b!6373198))

(assert (= (and b!6373202 res!2621744) b!6373205))

(assert (= (and b!6373198 (not res!2621743)) b!6373200))

(assert (= (and b!6373200 res!2621747) b!6373199))

(assert (= (or b!6373205 b!6373199) bm!544311))

(assert (= (or b!6373202 b!6373200) bm!544309))

(assert (= (or b!6373203 bm!544311) bm!544310))

(declare-fun m!7175470 () Bool)

(assert (=> bm!544309 m!7175470))

(declare-fun m!7175472 () Bool)

(assert (=> b!6373201 m!7175472))

(declare-fun m!7175474 () Bool)

(assert (=> bm!544310 m!7175474))

(assert (=> bm!544144 d!1998767))

(declare-fun d!1998769 () Bool)

(assert (=> d!1998769 (= (flatMap!1788 lt!2368474 lambda!351227) (choose!47360 lt!2368474 lambda!351227))))

(declare-fun bs!1595996 () Bool)

(assert (= bs!1595996 d!1998769))

(declare-fun m!7175476 () Bool)

(assert (=> bs!1595996 m!7175476))

(assert (=> d!1998385 d!1998769))

(declare-fun d!1998771 () Bool)

(assert (=> d!1998771 (= (isEmpty!37146 (findConcatSeparation!2588 (regOne!33078 r!7292) (regTwo!33078 r!7292) Nil!65025 s!2326 s!2326)) (not ((_ is Some!16173) (findConcatSeparation!2588 (regOne!33078 r!7292) (regTwo!33078 r!7292) Nil!65025 s!2326 s!2326))))))

(assert (=> d!1998457 d!1998771))

(declare-fun d!1998773 () Bool)

(assert (=> d!1998773 (= (isConcat!1208 lt!2368539) ((_ is Concat!25128) lt!2368539))))

(assert (=> b!6372382 d!1998773))

(declare-fun b!6373207 () Bool)

(declare-fun res!2621753 () Bool)

(declare-fun e!3869234 () Bool)

(assert (=> b!6373207 (=> (not res!2621753) (not e!3869234))))

(assert (=> b!6373207 (= res!2621753 (isEmpty!37145 (tail!12144 (_1!36565 (get!22509 lt!2368549)))))))

(declare-fun b!6373208 () Bool)

(declare-fun e!3869233 () Bool)

(declare-fun e!3869236 () Bool)

(assert (=> b!6373208 (= e!3869233 e!3869236)))

(declare-fun res!2621751 () Bool)

(assert (=> b!6373208 (=> (not res!2621751) (not e!3869236))))

(declare-fun lt!2368598 () Bool)

(assert (=> b!6373208 (= res!2621751 (not lt!2368598))))

(declare-fun b!6373209 () Bool)

(declare-fun res!2621755 () Bool)

(assert (=> b!6373209 (=> res!2621755 e!3869233)))

(assert (=> b!6373209 (= res!2621755 (not ((_ is ElementMatch!16283) (regOne!33078 r!7292))))))

(declare-fun e!3869239 () Bool)

(assert (=> b!6373209 (= e!3869239 e!3869233)))

(declare-fun b!6373210 () Bool)

(declare-fun e!3869238 () Bool)

(assert (=> b!6373210 (= e!3869238 (matchR!8466 (derivativeStep!4988 (regOne!33078 r!7292) (head!13059 (_1!36565 (get!22509 lt!2368549)))) (tail!12144 (_1!36565 (get!22509 lt!2368549)))))))

(declare-fun b!6373211 () Bool)

(assert (=> b!6373211 (= e!3869234 (= (head!13059 (_1!36565 (get!22509 lt!2368549))) (c!1160374 (regOne!33078 r!7292))))))

(declare-fun bm!544312 () Bool)

(declare-fun call!544317 () Bool)

(assert (=> bm!544312 (= call!544317 (isEmpty!37145 (_1!36565 (get!22509 lt!2368549))))))

(declare-fun b!6373212 () Bool)

(declare-fun res!2621748 () Bool)

(declare-fun e!3869237 () Bool)

(assert (=> b!6373212 (=> res!2621748 e!3869237)))

(assert (=> b!6373212 (= res!2621748 (not (isEmpty!37145 (tail!12144 (_1!36565 (get!22509 lt!2368549))))))))

(declare-fun b!6373213 () Bool)

(declare-fun e!3869235 () Bool)

(assert (=> b!6373213 (= e!3869235 e!3869239)))

(declare-fun c!1160752 () Bool)

(assert (=> b!6373213 (= c!1160752 ((_ is EmptyLang!16283) (regOne!33078 r!7292)))))

(declare-fun b!6373214 () Bool)

(declare-fun res!2621752 () Bool)

(assert (=> b!6373214 (=> res!2621752 e!3869233)))

(assert (=> b!6373214 (= res!2621752 e!3869234)))

(declare-fun res!2621749 () Bool)

(assert (=> b!6373214 (=> (not res!2621749) (not e!3869234))))

(assert (=> b!6373214 (= res!2621749 lt!2368598)))

(declare-fun b!6373215 () Bool)

(declare-fun res!2621754 () Bool)

(assert (=> b!6373215 (=> (not res!2621754) (not e!3869234))))

(assert (=> b!6373215 (= res!2621754 (not call!544317))))

(declare-fun d!1998775 () Bool)

(assert (=> d!1998775 e!3869235))

(declare-fun c!1160754 () Bool)

(assert (=> d!1998775 (= c!1160754 ((_ is EmptyExpr!16283) (regOne!33078 r!7292)))))

(assert (=> d!1998775 (= lt!2368598 e!3869238)))

(declare-fun c!1160753 () Bool)

(assert (=> d!1998775 (= c!1160753 (isEmpty!37145 (_1!36565 (get!22509 lt!2368549))))))

(assert (=> d!1998775 (validRegex!8019 (regOne!33078 r!7292))))

(assert (=> d!1998775 (= (matchR!8466 (regOne!33078 r!7292) (_1!36565 (get!22509 lt!2368549))) lt!2368598)))

(declare-fun b!6373206 () Bool)

(assert (=> b!6373206 (= e!3869235 (= lt!2368598 call!544317))))

(declare-fun b!6373216 () Bool)

(assert (=> b!6373216 (= e!3869239 (not lt!2368598))))

(declare-fun b!6373217 () Bool)

(assert (=> b!6373217 (= e!3869238 (nullable!6276 (regOne!33078 r!7292)))))

(declare-fun b!6373218 () Bool)

(assert (=> b!6373218 (= e!3869237 (not (= (head!13059 (_1!36565 (get!22509 lt!2368549))) (c!1160374 (regOne!33078 r!7292)))))))

(declare-fun b!6373219 () Bool)

(assert (=> b!6373219 (= e!3869236 e!3869237)))

(declare-fun res!2621750 () Bool)

(assert (=> b!6373219 (=> res!2621750 e!3869237)))

(assert (=> b!6373219 (= res!2621750 call!544317)))

(assert (= (and d!1998775 c!1160753) b!6373217))

(assert (= (and d!1998775 (not c!1160753)) b!6373210))

(assert (= (and d!1998775 c!1160754) b!6373206))

(assert (= (and d!1998775 (not c!1160754)) b!6373213))

(assert (= (and b!6373213 c!1160752) b!6373216))

(assert (= (and b!6373213 (not c!1160752)) b!6373209))

(assert (= (and b!6373209 (not res!2621755)) b!6373214))

(assert (= (and b!6373214 res!2621749) b!6373215))

(assert (= (and b!6373215 res!2621754) b!6373207))

(assert (= (and b!6373207 res!2621753) b!6373211))

(assert (= (and b!6373214 (not res!2621752)) b!6373208))

(assert (= (and b!6373208 res!2621751) b!6373219))

(assert (= (and b!6373219 (not res!2621750)) b!6373212))

(assert (= (and b!6373212 (not res!2621748)) b!6373218))

(assert (= (or b!6373206 b!6373215 b!6373219) bm!544312))

(declare-fun m!7175478 () Bool)

(assert (=> d!1998775 m!7175478))

(assert (=> d!1998775 m!7174742))

(declare-fun m!7175480 () Bool)

(assert (=> b!6373211 m!7175480))

(declare-fun m!7175482 () Bool)

(assert (=> b!6373212 m!7175482))

(assert (=> b!6373212 m!7175482))

(declare-fun m!7175484 () Bool)

(assert (=> b!6373212 m!7175484))

(declare-fun m!7175486 () Bool)

(assert (=> b!6373217 m!7175486))

(assert (=> b!6373210 m!7175480))

(assert (=> b!6373210 m!7175480))

(declare-fun m!7175488 () Bool)

(assert (=> b!6373210 m!7175488))

(assert (=> b!6373210 m!7175482))

(assert (=> b!6373210 m!7175488))

(assert (=> b!6373210 m!7175482))

(declare-fun m!7175490 () Bool)

(assert (=> b!6373210 m!7175490))

(assert (=> b!6373207 m!7175482))

(assert (=> b!6373207 m!7175482))

(assert (=> b!6373207 m!7175484))

(assert (=> b!6373218 m!7175480))

(assert (=> bm!544312 m!7175478))

(assert (=> b!6372441 d!1998775))

(assert (=> b!6372441 d!1998751))

(declare-fun bs!1595997 () Bool)

(declare-fun d!1998777 () Bool)

(assert (= bs!1595997 (and d!1998777 d!1998755)))

(declare-fun lambda!351299 () Int)

(assert (=> bs!1595997 (= lambda!351299 lambda!351298)))

(assert (=> d!1998777 (= (nullableZipper!2049 lt!2368449) (exists!2581 lt!2368449 lambda!351299))))

(declare-fun bs!1595998 () Bool)

(assert (= bs!1595998 d!1998777))

(declare-fun m!7175492 () Bool)

(assert (=> bs!1595998 m!7175492))

(assert (=> b!6372466 d!1998777))

(declare-fun bs!1595999 () Bool)

(declare-fun d!1998779 () Bool)

(assert (= bs!1595999 (and d!1998779 d!1998399)))

(declare-fun lambda!351300 () Int)

(assert (=> bs!1595999 (= lambda!351300 lambda!351240)))

(declare-fun bs!1596000 () Bool)

(assert (= bs!1596000 (and d!1998779 d!1998407)))

(assert (=> bs!1596000 (= lambda!351300 lambda!351241)))

(declare-fun bs!1596001 () Bool)

(assert (= bs!1596001 (and d!1998779 d!1998393)))

(assert (=> bs!1596001 (= lambda!351300 lambda!351239)))

(declare-fun bs!1596002 () Bool)

(assert (= bs!1596002 (and d!1998779 d!1998389)))

(assert (=> bs!1596002 (= lambda!351300 lambda!351236)))

(declare-fun bs!1596003 () Bool)

(assert (= bs!1596003 (and d!1998779 d!1998421)))

(assert (=> bs!1596003 (= lambda!351300 lambda!351250)))

(declare-fun bs!1596004 () Bool)

(assert (= bs!1596004 (and d!1998779 d!1998343)))

(assert (=> bs!1596004 (= lambda!351300 lambda!351220)))

(assert (=> d!1998779 (= (inv!83954 setElem!43454) (forall!15461 (exprs!6167 setElem!43454) lambda!351300))))

(declare-fun bs!1596005 () Bool)

(assert (= bs!1596005 d!1998779))

(declare-fun m!7175494 () Bool)

(assert (=> bs!1596005 m!7175494))

(assert (=> setNonEmpty!43454 d!1998779))

(declare-fun d!1998781 () Bool)

(assert (=> d!1998781 (= ($colon$colon!2144 (exprs!6167 lt!2368450) (ite (or c!1160569 c!1160572) (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (h!71472 (exprs!6167 (h!71474 zl!343))))) (Cons!65024 (ite (or c!1160569 c!1160572) (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (h!71472 (exprs!6167 (h!71474 zl!343)))) (exprs!6167 lt!2368450)))))

(assert (=> bm!544180 d!1998781))

(declare-fun d!1998783 () Bool)

(assert (=> d!1998783 (= (nullable!6276 (h!71472 (exprs!6167 lt!2368450))) (nullableFct!2222 (h!71472 (exprs!6167 lt!2368450))))))

(declare-fun bs!1596006 () Bool)

(assert (= bs!1596006 d!1998783))

(declare-fun m!7175496 () Bool)

(assert (=> bs!1596006 m!7175496))

(assert (=> b!6372394 d!1998783))

(declare-fun d!1998785 () Bool)

(assert (=> d!1998785 (= (isEmpty!37141 (unfocusZipperList!1704 zl!343)) ((_ is Nil!65024) (unfocusZipperList!1704 zl!343)))))

(assert (=> b!6372092 d!1998785))

(declare-fun d!1998787 () Bool)

(assert (=> d!1998787 (= (nullable!6276 (h!71472 (exprs!6167 lt!2368473))) (nullableFct!2222 (h!71472 (exprs!6167 lt!2368473))))))

(declare-fun bs!1596007 () Bool)

(assert (= bs!1596007 d!1998787))

(declare-fun m!7175498 () Bool)

(assert (=> bs!1596007 m!7175498))

(assert (=> b!6372235 d!1998787))

(declare-fun b!6373221 () Bool)

(declare-fun res!2621761 () Bool)

(declare-fun e!3869241 () Bool)

(assert (=> b!6373221 (=> (not res!2621761) (not e!3869241))))

(assert (=> b!6373221 (= res!2621761 (isEmpty!37145 (tail!12144 (_2!36565 (get!22509 lt!2368549)))))))

(declare-fun b!6373222 () Bool)

(declare-fun e!3869240 () Bool)

(declare-fun e!3869243 () Bool)

(assert (=> b!6373222 (= e!3869240 e!3869243)))

(declare-fun res!2621759 () Bool)

(assert (=> b!6373222 (=> (not res!2621759) (not e!3869243))))

(declare-fun lt!2368599 () Bool)

(assert (=> b!6373222 (= res!2621759 (not lt!2368599))))

(declare-fun b!6373223 () Bool)

(declare-fun res!2621763 () Bool)

(assert (=> b!6373223 (=> res!2621763 e!3869240)))

(assert (=> b!6373223 (= res!2621763 (not ((_ is ElementMatch!16283) (regTwo!33078 r!7292))))))

(declare-fun e!3869246 () Bool)

(assert (=> b!6373223 (= e!3869246 e!3869240)))

(declare-fun b!6373224 () Bool)

(declare-fun e!3869245 () Bool)

(assert (=> b!6373224 (= e!3869245 (matchR!8466 (derivativeStep!4988 (regTwo!33078 r!7292) (head!13059 (_2!36565 (get!22509 lt!2368549)))) (tail!12144 (_2!36565 (get!22509 lt!2368549)))))))

(declare-fun b!6373225 () Bool)

(assert (=> b!6373225 (= e!3869241 (= (head!13059 (_2!36565 (get!22509 lt!2368549))) (c!1160374 (regTwo!33078 r!7292))))))

(declare-fun bm!544313 () Bool)

(declare-fun call!544318 () Bool)

(assert (=> bm!544313 (= call!544318 (isEmpty!37145 (_2!36565 (get!22509 lt!2368549))))))

(declare-fun b!6373226 () Bool)

(declare-fun res!2621756 () Bool)

(declare-fun e!3869244 () Bool)

(assert (=> b!6373226 (=> res!2621756 e!3869244)))

(assert (=> b!6373226 (= res!2621756 (not (isEmpty!37145 (tail!12144 (_2!36565 (get!22509 lt!2368549))))))))

(declare-fun b!6373227 () Bool)

(declare-fun e!3869242 () Bool)

(assert (=> b!6373227 (= e!3869242 e!3869246)))

(declare-fun c!1160755 () Bool)

(assert (=> b!6373227 (= c!1160755 ((_ is EmptyLang!16283) (regTwo!33078 r!7292)))))

(declare-fun b!6373228 () Bool)

(declare-fun res!2621760 () Bool)

(assert (=> b!6373228 (=> res!2621760 e!3869240)))

(assert (=> b!6373228 (= res!2621760 e!3869241)))

(declare-fun res!2621757 () Bool)

(assert (=> b!6373228 (=> (not res!2621757) (not e!3869241))))

(assert (=> b!6373228 (= res!2621757 lt!2368599)))

(declare-fun b!6373229 () Bool)

(declare-fun res!2621762 () Bool)

(assert (=> b!6373229 (=> (not res!2621762) (not e!3869241))))

(assert (=> b!6373229 (= res!2621762 (not call!544318))))

(declare-fun d!1998789 () Bool)

(assert (=> d!1998789 e!3869242))

(declare-fun c!1160757 () Bool)

(assert (=> d!1998789 (= c!1160757 ((_ is EmptyExpr!16283) (regTwo!33078 r!7292)))))

(assert (=> d!1998789 (= lt!2368599 e!3869245)))

(declare-fun c!1160756 () Bool)

(assert (=> d!1998789 (= c!1160756 (isEmpty!37145 (_2!36565 (get!22509 lt!2368549))))))

(assert (=> d!1998789 (validRegex!8019 (regTwo!33078 r!7292))))

(assert (=> d!1998789 (= (matchR!8466 (regTwo!33078 r!7292) (_2!36565 (get!22509 lt!2368549))) lt!2368599)))

(declare-fun b!6373220 () Bool)

(assert (=> b!6373220 (= e!3869242 (= lt!2368599 call!544318))))

(declare-fun b!6373230 () Bool)

(assert (=> b!6373230 (= e!3869246 (not lt!2368599))))

(declare-fun b!6373231 () Bool)

(assert (=> b!6373231 (= e!3869245 (nullable!6276 (regTwo!33078 r!7292)))))

(declare-fun b!6373232 () Bool)

(assert (=> b!6373232 (= e!3869244 (not (= (head!13059 (_2!36565 (get!22509 lt!2368549))) (c!1160374 (regTwo!33078 r!7292)))))))

(declare-fun b!6373233 () Bool)

(assert (=> b!6373233 (= e!3869243 e!3869244)))

(declare-fun res!2621758 () Bool)

(assert (=> b!6373233 (=> res!2621758 e!3869244)))

(assert (=> b!6373233 (= res!2621758 call!544318)))

(assert (= (and d!1998789 c!1160756) b!6373231))

(assert (= (and d!1998789 (not c!1160756)) b!6373224))

(assert (= (and d!1998789 c!1160757) b!6373220))

(assert (= (and d!1998789 (not c!1160757)) b!6373227))

(assert (= (and b!6373227 c!1160755) b!6373230))

(assert (= (and b!6373227 (not c!1160755)) b!6373223))

(assert (= (and b!6373223 (not res!2621763)) b!6373228))

(assert (= (and b!6373228 res!2621757) b!6373229))

(assert (= (and b!6373229 res!2621762) b!6373221))

(assert (= (and b!6373221 res!2621761) b!6373225))

(assert (= (and b!6373228 (not res!2621760)) b!6373222))

(assert (= (and b!6373222 res!2621759) b!6373233))

(assert (= (and b!6373233 (not res!2621758)) b!6373226))

(assert (= (and b!6373226 (not res!2621756)) b!6373232))

(assert (= (or b!6373220 b!6373229 b!6373233) bm!544313))

(declare-fun m!7175500 () Bool)

(assert (=> d!1998789 m!7175500))

(declare-fun m!7175502 () Bool)

(assert (=> d!1998789 m!7175502))

(declare-fun m!7175504 () Bool)

(assert (=> b!6373225 m!7175504))

(declare-fun m!7175506 () Bool)

(assert (=> b!6373226 m!7175506))

(assert (=> b!6373226 m!7175506))

(declare-fun m!7175508 () Bool)

(assert (=> b!6373226 m!7175508))

(declare-fun m!7175510 () Bool)

(assert (=> b!6373231 m!7175510))

(assert (=> b!6373224 m!7175504))

(assert (=> b!6373224 m!7175504))

(declare-fun m!7175512 () Bool)

(assert (=> b!6373224 m!7175512))

(assert (=> b!6373224 m!7175506))

(assert (=> b!6373224 m!7175512))

(assert (=> b!6373224 m!7175506))

(declare-fun m!7175514 () Bool)

(assert (=> b!6373224 m!7175514))

(assert (=> b!6373221 m!7175506))

(assert (=> b!6373221 m!7175506))

(assert (=> b!6373221 m!7175508))

(assert (=> b!6373232 m!7175504))

(assert (=> bm!544313 m!7175500))

(assert (=> b!6372437 d!1998789))

(assert (=> b!6372437 d!1998751))

(declare-fun d!1998791 () Bool)

(assert (=> d!1998791 (= (nullable!6276 (h!71472 (exprs!6167 lt!2368470))) (nullableFct!2222 (h!71472 (exprs!6167 lt!2368470))))))

(declare-fun bs!1596008 () Bool)

(assert (= bs!1596008 d!1998791))

(declare-fun m!7175516 () Bool)

(assert (=> bs!1596008 m!7175516))

(assert (=> b!6372230 d!1998791))

(declare-fun d!1998793 () Bool)

(declare-fun res!2621766 () Bool)

(declare-fun e!3869251 () Bool)

(assert (=> d!1998793 (=> res!2621766 e!3869251)))

(assert (=> d!1998793 (= res!2621766 ((_ is ElementMatch!16283) lt!2368539))))

(assert (=> d!1998793 (= (validRegex!8019 lt!2368539) e!3869251)))

(declare-fun b!6373234 () Bool)

(declare-fun e!3869252 () Bool)

(assert (=> b!6373234 (= e!3869251 e!3869252)))

(declare-fun c!1160759 () Bool)

(assert (=> b!6373234 (= c!1160759 ((_ is Star!16283) lt!2368539))))

(declare-fun b!6373235 () Bool)

(declare-fun res!2621764 () Bool)

(declare-fun e!3869247 () Bool)

(assert (=> b!6373235 (=> res!2621764 e!3869247)))

(assert (=> b!6373235 (= res!2621764 (not ((_ is Concat!25128) lt!2368539)))))

(declare-fun e!3869250 () Bool)

(assert (=> b!6373235 (= e!3869250 e!3869247)))

(declare-fun bm!544314 () Bool)

(declare-fun call!544319 () Bool)

(declare-fun c!1160758 () Bool)

(assert (=> bm!544314 (= call!544319 (validRegex!8019 (ite c!1160758 (regOne!33079 lt!2368539) (regOne!33078 lt!2368539))))))

(declare-fun b!6373236 () Bool)

(declare-fun e!3869248 () Bool)

(declare-fun call!544320 () Bool)

(assert (=> b!6373236 (= e!3869248 call!544320)))

(declare-fun b!6373237 () Bool)

(assert (=> b!6373237 (= e!3869247 e!3869248)))

(declare-fun res!2621768 () Bool)

(assert (=> b!6373237 (=> (not res!2621768) (not e!3869248))))

(assert (=> b!6373237 (= res!2621768 call!544319)))

(declare-fun b!6373238 () Bool)

(declare-fun e!3869253 () Bool)

(assert (=> b!6373238 (= e!3869252 e!3869253)))

(declare-fun res!2621767 () Bool)

(assert (=> b!6373238 (= res!2621767 (not (nullable!6276 (reg!16612 lt!2368539))))))

(assert (=> b!6373238 (=> (not res!2621767) (not e!3869253))))

(declare-fun b!6373239 () Bool)

(declare-fun res!2621765 () Bool)

(declare-fun e!3869249 () Bool)

(assert (=> b!6373239 (=> (not res!2621765) (not e!3869249))))

(assert (=> b!6373239 (= res!2621765 call!544319)))

(assert (=> b!6373239 (= e!3869250 e!3869249)))

(declare-fun call!544321 () Bool)

(declare-fun bm!544315 () Bool)

(assert (=> bm!544315 (= call!544321 (validRegex!8019 (ite c!1160759 (reg!16612 lt!2368539) (ite c!1160758 (regTwo!33079 lt!2368539) (regTwo!33078 lt!2368539)))))))

(declare-fun b!6373240 () Bool)

(assert (=> b!6373240 (= e!3869253 call!544321)))

(declare-fun bm!544316 () Bool)

(assert (=> bm!544316 (= call!544320 call!544321)))

(declare-fun b!6373241 () Bool)

(assert (=> b!6373241 (= e!3869252 e!3869250)))

(assert (=> b!6373241 (= c!1160758 ((_ is Union!16283) lt!2368539))))

(declare-fun b!6373242 () Bool)

(assert (=> b!6373242 (= e!3869249 call!544320)))

(assert (= (and d!1998793 (not res!2621766)) b!6373234))

(assert (= (and b!6373234 c!1160759) b!6373238))

(assert (= (and b!6373234 (not c!1160759)) b!6373241))

(assert (= (and b!6373238 res!2621767) b!6373240))

(assert (= (and b!6373241 c!1160758) b!6373239))

(assert (= (and b!6373241 (not c!1160758)) b!6373235))

(assert (= (and b!6373239 res!2621765) b!6373242))

(assert (= (and b!6373235 (not res!2621764)) b!6373237))

(assert (= (and b!6373237 res!2621768) b!6373236))

(assert (= (or b!6373242 b!6373236) bm!544316))

(assert (= (or b!6373239 b!6373237) bm!544314))

(assert (= (or b!6373240 bm!544316) bm!544315))

(declare-fun m!7175518 () Bool)

(assert (=> bm!544314 m!7175518))

(declare-fun m!7175520 () Bool)

(assert (=> b!6373238 m!7175520))

(declare-fun m!7175522 () Bool)

(assert (=> bm!544315 m!7175522))

(assert (=> d!1998421 d!1998793))

(declare-fun d!1998795 () Bool)

(declare-fun res!2621769 () Bool)

(declare-fun e!3869254 () Bool)

(assert (=> d!1998795 (=> res!2621769 e!3869254)))

(assert (=> d!1998795 (= res!2621769 ((_ is Nil!65024) (exprs!6167 (h!71474 zl!343))))))

(assert (=> d!1998795 (= (forall!15461 (exprs!6167 (h!71474 zl!343)) lambda!351250) e!3869254)))

(declare-fun b!6373243 () Bool)

(declare-fun e!3869255 () Bool)

(assert (=> b!6373243 (= e!3869254 e!3869255)))

(declare-fun res!2621770 () Bool)

(assert (=> b!6373243 (=> (not res!2621770) (not e!3869255))))

(assert (=> b!6373243 (= res!2621770 (dynLambda!25799 lambda!351250 (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6373244 () Bool)

(assert (=> b!6373244 (= e!3869255 (forall!15461 (t!378748 (exprs!6167 (h!71474 zl!343))) lambda!351250))))

(assert (= (and d!1998795 (not res!2621769)) b!6373243))

(assert (= (and b!6373243 res!2621770) b!6373244))

(declare-fun b_lambda!242195 () Bool)

(assert (=> (not b_lambda!242195) (not b!6373243)))

(declare-fun m!7175524 () Bool)

(assert (=> b!6373243 m!7175524))

(declare-fun m!7175526 () Bool)

(assert (=> b!6373244 m!7175526))

(assert (=> d!1998421 d!1998795))

(declare-fun d!1998797 () Bool)

(assert (=> d!1998797 true))

(declare-fun setRes!43463 () Bool)

(assert (=> d!1998797 setRes!43463))

(declare-fun condSetEmpty!43463 () Bool)

(declare-fun res!2621771 () (InoxSet Context!11334))

(assert (=> d!1998797 (= condSetEmpty!43463 (= res!2621771 ((as const (Array Context!11334 Bool)) false)))))

(assert (=> d!1998797 (= (choose!47360 z!1189 lambda!351195) res!2621771)))

(declare-fun setIsEmpty!43463 () Bool)

(assert (=> setIsEmpty!43463 setRes!43463))

(declare-fun e!3869256 () Bool)

(declare-fun setElem!43463 () Context!11334)

(declare-fun setNonEmpty!43463 () Bool)

(declare-fun tp!1774187 () Bool)

(assert (=> setNonEmpty!43463 (= setRes!43463 (and tp!1774187 (inv!83954 setElem!43463) e!3869256))))

(declare-fun setRest!43463 () (InoxSet Context!11334))

(assert (=> setNonEmpty!43463 (= res!2621771 ((_ map or) (store ((as const (Array Context!11334 Bool)) false) setElem!43463 true) setRest!43463))))

(declare-fun b!6373245 () Bool)

(declare-fun tp!1774188 () Bool)

(assert (=> b!6373245 (= e!3869256 tp!1774188)))

(assert (= (and d!1998797 condSetEmpty!43463) setIsEmpty!43463))

(assert (= (and d!1998797 (not condSetEmpty!43463)) setNonEmpty!43463))

(assert (= setNonEmpty!43463 b!6373245))

(declare-fun m!7175528 () Bool)

(assert (=> setNonEmpty!43463 m!7175528))

(assert (=> d!1998443 d!1998797))

(declare-fun bm!544321 () Bool)

(declare-fun call!544327 () Bool)

(declare-fun c!1160762 () Bool)

(assert (=> bm!544321 (= call!544327 (nullable!6276 (ite c!1160762 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))))))

(declare-fun b!6373260 () Bool)

(declare-fun e!3869271 () Bool)

(declare-fun e!3869270 () Bool)

(assert (=> b!6373260 (= e!3869271 e!3869270)))

(declare-fun res!2621786 () Bool)

(assert (=> b!6373260 (= res!2621786 call!544327)))

(assert (=> b!6373260 (=> res!2621786 e!3869270)))

(declare-fun b!6373262 () Bool)

(declare-fun e!3869273 () Bool)

(declare-fun e!3869269 () Bool)

(assert (=> b!6373262 (= e!3869273 e!3869269)))

(declare-fun res!2621785 () Bool)

(assert (=> b!6373262 (=> res!2621785 e!3869269)))

(assert (=> b!6373262 (= res!2621785 ((_ is Star!16283) (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6373263 () Bool)

(assert (=> b!6373263 (= e!3869269 e!3869271)))

(assert (=> b!6373263 (= c!1160762 ((_ is Union!16283) (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun bm!544322 () Bool)

(declare-fun call!544326 () Bool)

(assert (=> bm!544322 (= call!544326 (nullable!6276 (ite c!1160762 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))))))

(declare-fun b!6373264 () Bool)

(assert (=> b!6373264 (= e!3869270 call!544326)))

(declare-fun d!1998799 () Bool)

(declare-fun res!2621782 () Bool)

(declare-fun e!3869274 () Bool)

(assert (=> d!1998799 (=> res!2621782 e!3869274)))

(assert (=> d!1998799 (= res!2621782 ((_ is EmptyExpr!16283) (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> d!1998799 (= (nullableFct!2222 (h!71472 (exprs!6167 (h!71474 zl!343)))) e!3869274)))

(declare-fun b!6373261 () Bool)

(declare-fun e!3869272 () Bool)

(assert (=> b!6373261 (= e!3869272 call!544326)))

(declare-fun b!6373265 () Bool)

(assert (=> b!6373265 (= e!3869271 e!3869272)))

(declare-fun res!2621783 () Bool)

(assert (=> b!6373265 (= res!2621783 call!544327)))

(assert (=> b!6373265 (=> (not res!2621783) (not e!3869272))))

(declare-fun b!6373266 () Bool)

(assert (=> b!6373266 (= e!3869274 e!3869273)))

(declare-fun res!2621784 () Bool)

(assert (=> b!6373266 (=> (not res!2621784) (not e!3869273))))

(assert (=> b!6373266 (= res!2621784 (and (not ((_ is EmptyLang!16283) (h!71472 (exprs!6167 (h!71474 zl!343))))) (not ((_ is ElementMatch!16283) (h!71472 (exprs!6167 (h!71474 zl!343)))))))))

(assert (= (and d!1998799 (not res!2621782)) b!6373266))

(assert (= (and b!6373266 res!2621784) b!6373262))

(assert (= (and b!6373262 (not res!2621785)) b!6373263))

(assert (= (and b!6373263 c!1160762) b!6373260))

(assert (= (and b!6373263 (not c!1160762)) b!6373265))

(assert (= (and b!6373260 (not res!2621786)) b!6373264))

(assert (= (and b!6373265 res!2621783) b!6373261))

(assert (= (or b!6373264 b!6373261) bm!544322))

(assert (= (or b!6373260 b!6373265) bm!544321))

(declare-fun m!7175530 () Bool)

(assert (=> bm!544321 m!7175530))

(declare-fun m!7175532 () Bool)

(assert (=> bm!544322 m!7175532))

(assert (=> d!1998435 d!1998799))

(assert (=> d!1998417 d!1998415))

(assert (=> d!1998417 d!1998413))

(declare-fun d!1998801 () Bool)

(assert (=> d!1998801 (= (matchR!8466 r!7292 s!2326) (matchRSpec!3384 r!7292 s!2326))))

(assert (=> d!1998801 true))

(declare-fun _$88!5065 () Unit!158463)

(assert (=> d!1998801 (= (choose!47363 r!7292 s!2326) _$88!5065)))

(declare-fun bs!1596009 () Bool)

(assert (= bs!1596009 d!1998801))

(assert (=> bs!1596009 m!7174270))

(assert (=> bs!1596009 m!7174268))

(assert (=> d!1998417 d!1998801))

(assert (=> d!1998417 d!1998401))

(declare-fun d!1998803 () Bool)

(declare-fun res!2621787 () Bool)

(declare-fun e!3869275 () Bool)

(assert (=> d!1998803 (=> res!2621787 e!3869275)))

(assert (=> d!1998803 (= res!2621787 ((_ is Nil!65024) lt!2368530))))

(assert (=> d!1998803 (= (forall!15461 lt!2368530 lambda!351239) e!3869275)))

(declare-fun b!6373267 () Bool)

(declare-fun e!3869276 () Bool)

(assert (=> b!6373267 (= e!3869275 e!3869276)))

(declare-fun res!2621788 () Bool)

(assert (=> b!6373267 (=> (not res!2621788) (not e!3869276))))

(assert (=> b!6373267 (= res!2621788 (dynLambda!25799 lambda!351239 (h!71472 lt!2368530)))))

(declare-fun b!6373268 () Bool)

(assert (=> b!6373268 (= e!3869276 (forall!15461 (t!378748 lt!2368530) lambda!351239))))

(assert (= (and d!1998803 (not res!2621787)) b!6373267))

(assert (= (and b!6373267 res!2621788) b!6373268))

(declare-fun b_lambda!242197 () Bool)

(assert (=> (not b_lambda!242197) (not b!6373267)))

(declare-fun m!7175534 () Bool)

(assert (=> b!6373267 m!7175534))

(declare-fun m!7175536 () Bool)

(assert (=> b!6373268 m!7175536))

(assert (=> d!1998393 d!1998803))

(declare-fun d!1998805 () Bool)

(assert (=> d!1998805 (= (isEmpty!37145 (tail!12144 s!2326)) ((_ is Nil!65025) (tail!12144 s!2326)))))

(assert (=> b!6372314 d!1998805))

(assert (=> b!6372314 d!1998739))

(declare-fun d!1998807 () Bool)

(declare-fun c!1160763 () Bool)

(assert (=> d!1998807 (= c!1160763 (isEmpty!37145 (tail!12144 (t!378749 s!2326))))))

(declare-fun e!3869277 () Bool)

(assert (=> d!1998807 (= (matchZipper!2295 (derivationStepZipper!2249 ((_ map or) lt!2368449 lt!2368457) (head!13059 (t!378749 s!2326))) (tail!12144 (t!378749 s!2326))) e!3869277)))

(declare-fun b!6373269 () Bool)

(assert (=> b!6373269 (= e!3869277 (nullableZipper!2049 (derivationStepZipper!2249 ((_ map or) lt!2368449 lt!2368457) (head!13059 (t!378749 s!2326)))))))

(declare-fun b!6373270 () Bool)

(assert (=> b!6373270 (= e!3869277 (matchZipper!2295 (derivationStepZipper!2249 (derivationStepZipper!2249 ((_ map or) lt!2368449 lt!2368457) (head!13059 (t!378749 s!2326))) (head!13059 (tail!12144 (t!378749 s!2326)))) (tail!12144 (tail!12144 (t!378749 s!2326)))))))

(assert (= (and d!1998807 c!1160763) b!6373269))

(assert (= (and d!1998807 (not c!1160763)) b!6373270))

(assert (=> d!1998807 m!7174680))

(declare-fun m!7175538 () Bool)

(assert (=> d!1998807 m!7175538))

(assert (=> b!6373269 m!7174792))

(declare-fun m!7175540 () Bool)

(assert (=> b!6373269 m!7175540))

(assert (=> b!6373270 m!7174680))

(declare-fun m!7175542 () Bool)

(assert (=> b!6373270 m!7175542))

(assert (=> b!6373270 m!7174792))

(assert (=> b!6373270 m!7175542))

(declare-fun m!7175544 () Bool)

(assert (=> b!6373270 m!7175544))

(assert (=> b!6373270 m!7174680))

(declare-fun m!7175546 () Bool)

(assert (=> b!6373270 m!7175546))

(assert (=> b!6373270 m!7175544))

(assert (=> b!6373270 m!7175546))

(declare-fun m!7175548 () Bool)

(assert (=> b!6373270 m!7175548))

(assert (=> b!6372469 d!1998807))

(declare-fun bs!1596010 () Bool)

(declare-fun d!1998809 () Bool)

(assert (= bs!1596010 (and d!1998809 b!6371763)))

(declare-fun lambda!351301 () Int)

(assert (=> bs!1596010 (= (= (head!13059 (t!378749 s!2326)) (h!71473 s!2326)) (= lambda!351301 lambda!351195))))

(declare-fun bs!1596011 () Bool)

(assert (= bs!1596011 (and d!1998809 d!1998385)))

(assert (=> bs!1596011 (= (= (head!13059 (t!378749 s!2326)) (h!71473 s!2326)) (= lambda!351301 lambda!351227))))

(declare-fun bs!1596012 () Bool)

(assert (= bs!1596012 (and d!1998809 d!1998735)))

(assert (=> bs!1596012 (= (= (head!13059 (t!378749 s!2326)) (head!13059 s!2326)) (= lambda!351301 lambda!351292))))

(assert (=> d!1998809 true))

(assert (=> d!1998809 (= (derivationStepZipper!2249 ((_ map or) lt!2368449 lt!2368457) (head!13059 (t!378749 s!2326))) (flatMap!1788 ((_ map or) lt!2368449 lt!2368457) lambda!351301))))

(declare-fun bs!1596013 () Bool)

(assert (= bs!1596013 d!1998809))

(declare-fun m!7175550 () Bool)

(assert (=> bs!1596013 m!7175550))

(assert (=> b!6372469 d!1998809))

(declare-fun d!1998811 () Bool)

(assert (=> d!1998811 (= (head!13059 (t!378749 s!2326)) (h!71473 (t!378749 s!2326)))))

(assert (=> b!6372469 d!1998811))

(declare-fun d!1998813 () Bool)

(assert (=> d!1998813 (= (tail!12144 (t!378749 s!2326)) (t!378749 (t!378749 s!2326)))))

(assert (=> b!6372469 d!1998813))

(declare-fun d!1998815 () Bool)

(assert (=> d!1998815 (= (isEmpty!37141 (t!378748 (unfocusZipperList!1704 zl!343))) ((_ is Nil!65024) (t!378748 (unfocusZipperList!1704 zl!343))))))

(assert (=> b!6372101 d!1998815))

(assert (=> bs!1595805 d!1998363))

(declare-fun bs!1596014 () Bool)

(declare-fun b!6373280 () Bool)

(assert (= bs!1596014 (and b!6373280 b!6372273)))

(declare-fun lambda!351302 () Int)

(assert (=> bs!1596014 (not (= lambda!351302 lambda!351247))))

(declare-fun bs!1596015 () Bool)

(assert (= bs!1596015 (and b!6373280 b!6372278)))

(assert (=> bs!1596015 (= (and (= (reg!16612 (regOne!33079 r!7292)) (reg!16612 r!7292)) (= (regOne!33079 r!7292) r!7292)) (= lambda!351302 lambda!351246))))

(declare-fun bs!1596016 () Bool)

(assert (= bs!1596016 (and b!6373280 d!1998455)))

(assert (=> bs!1596016 (not (= lambda!351302 lambda!351259))))

(declare-fun bs!1596017 () Bool)

(assert (= bs!1596017 (and b!6373280 b!6371753)))

(assert (=> bs!1596017 (not (= lambda!351302 lambda!351194))))

(assert (=> bs!1596016 (not (= lambda!351302 lambda!351258))))

(declare-fun bs!1596018 () Bool)

(assert (= bs!1596018 (and b!6373280 d!1998453)))

(assert (=> bs!1596018 (not (= lambda!351302 lambda!351253))))

(declare-fun bs!1596019 () Bool)

(assert (= bs!1596019 (and b!6373280 d!1998745)))

(assert (=> bs!1596019 (not (= lambda!351302 lambda!351295))))

(assert (=> bs!1596017 (not (= lambda!351302 lambda!351193))))

(assert (=> b!6373280 true))

(assert (=> b!6373280 true))

(declare-fun bs!1596020 () Bool)

(declare-fun b!6373275 () Bool)

(assert (= bs!1596020 (and b!6373275 b!6372273)))

(declare-fun lambda!351303 () Int)

(assert (=> bs!1596020 (= (and (= (regOne!33078 (regOne!33079 r!7292)) (regOne!33078 r!7292)) (= (regTwo!33078 (regOne!33079 r!7292)) (regTwo!33078 r!7292))) (= lambda!351303 lambda!351247))))

(declare-fun bs!1596021 () Bool)

(assert (= bs!1596021 (and b!6373275 d!1998455)))

(assert (=> bs!1596021 (= (and (= (regOne!33078 (regOne!33079 r!7292)) (regOne!33078 r!7292)) (= (regTwo!33078 (regOne!33079 r!7292)) (regTwo!33078 r!7292))) (= lambda!351303 lambda!351259))))

(declare-fun bs!1596022 () Bool)

(assert (= bs!1596022 (and b!6373275 b!6371753)))

(assert (=> bs!1596022 (= (and (= (regOne!33078 (regOne!33079 r!7292)) (regOne!33078 r!7292)) (= (regTwo!33078 (regOne!33079 r!7292)) (regTwo!33078 r!7292))) (= lambda!351303 lambda!351194))))

(assert (=> bs!1596021 (not (= lambda!351303 lambda!351258))))

(declare-fun bs!1596023 () Bool)

(assert (= bs!1596023 (and b!6373275 d!1998453)))

(assert (=> bs!1596023 (not (= lambda!351303 lambda!351253))))

(declare-fun bs!1596024 () Bool)

(assert (= bs!1596024 (and b!6373275 d!1998745)))

(assert (=> bs!1596024 (not (= lambda!351303 lambda!351295))))

(assert (=> bs!1596022 (not (= lambda!351303 lambda!351193))))

(declare-fun bs!1596025 () Bool)

(assert (= bs!1596025 (and b!6373275 b!6373280)))

(assert (=> bs!1596025 (not (= lambda!351303 lambda!351302))))

(declare-fun bs!1596026 () Bool)

(assert (= bs!1596026 (and b!6373275 b!6372278)))

(assert (=> bs!1596026 (not (= lambda!351303 lambda!351246))))

(assert (=> b!6373275 true))

(assert (=> b!6373275 true))

(declare-fun b!6373271 () Bool)

(declare-fun e!3869282 () Bool)

(assert (=> b!6373271 (= e!3869282 (= s!2326 (Cons!65025 (c!1160374 (regOne!33079 r!7292)) Nil!65025)))))

(declare-fun b!6373272 () Bool)

(declare-fun e!3869279 () Bool)

(declare-fun e!3869281 () Bool)

(assert (=> b!6373272 (= e!3869279 e!3869281)))

(declare-fun res!2621790 () Bool)

(assert (=> b!6373272 (= res!2621790 (not ((_ is EmptyLang!16283) (regOne!33079 r!7292))))))

(assert (=> b!6373272 (=> (not res!2621790) (not e!3869281))))

(declare-fun b!6373273 () Bool)

(declare-fun e!3869283 () Bool)

(declare-fun e!3869280 () Bool)

(assert (=> b!6373273 (= e!3869283 e!3869280)))

(declare-fun c!1160764 () Bool)

(assert (=> b!6373273 (= c!1160764 ((_ is Star!16283) (regOne!33079 r!7292)))))

(declare-fun b!6373274 () Bool)

(declare-fun e!3869278 () Bool)

(assert (=> b!6373274 (= e!3869278 (matchRSpec!3384 (regTwo!33079 (regOne!33079 r!7292)) s!2326))))

(declare-fun call!544328 () Bool)

(assert (=> b!6373275 (= e!3869280 call!544328)))

(declare-fun d!1998817 () Bool)

(declare-fun c!1160765 () Bool)

(assert (=> d!1998817 (= c!1160765 ((_ is EmptyExpr!16283) (regOne!33079 r!7292)))))

(assert (=> d!1998817 (= (matchRSpec!3384 (regOne!33079 r!7292) s!2326) e!3869279)))

(declare-fun b!6373276 () Bool)

(declare-fun c!1160767 () Bool)

(assert (=> b!6373276 (= c!1160767 ((_ is ElementMatch!16283) (regOne!33079 r!7292)))))

(assert (=> b!6373276 (= e!3869281 e!3869282)))

(declare-fun b!6373277 () Bool)

(declare-fun res!2621791 () Bool)

(declare-fun e!3869284 () Bool)

(assert (=> b!6373277 (=> res!2621791 e!3869284)))

(declare-fun call!544329 () Bool)

(assert (=> b!6373277 (= res!2621791 call!544329)))

(assert (=> b!6373277 (= e!3869280 e!3869284)))

(declare-fun b!6373278 () Bool)

(declare-fun c!1160766 () Bool)

(assert (=> b!6373278 (= c!1160766 ((_ is Union!16283) (regOne!33079 r!7292)))))

(assert (=> b!6373278 (= e!3869282 e!3869283)))

(declare-fun b!6373279 () Bool)

(assert (=> b!6373279 (= e!3869279 call!544329)))

(declare-fun bm!544323 () Bool)

(assert (=> bm!544323 (= call!544329 (isEmpty!37145 s!2326))))

(assert (=> b!6373280 (= e!3869284 call!544328)))

(declare-fun b!6373281 () Bool)

(assert (=> b!6373281 (= e!3869283 e!3869278)))

(declare-fun res!2621789 () Bool)

(assert (=> b!6373281 (= res!2621789 (matchRSpec!3384 (regOne!33079 (regOne!33079 r!7292)) s!2326))))

(assert (=> b!6373281 (=> res!2621789 e!3869278)))

(declare-fun bm!544324 () Bool)

(assert (=> bm!544324 (= call!544328 (Exists!3353 (ite c!1160764 lambda!351302 lambda!351303)))))

(assert (= (and d!1998817 c!1160765) b!6373279))

(assert (= (and d!1998817 (not c!1160765)) b!6373272))

(assert (= (and b!6373272 res!2621790) b!6373276))

(assert (= (and b!6373276 c!1160767) b!6373271))

(assert (= (and b!6373276 (not c!1160767)) b!6373278))

(assert (= (and b!6373278 c!1160766) b!6373281))

(assert (= (and b!6373278 (not c!1160766)) b!6373273))

(assert (= (and b!6373281 (not res!2621789)) b!6373274))

(assert (= (and b!6373273 c!1160764) b!6373277))

(assert (= (and b!6373273 (not c!1160764)) b!6373275))

(assert (= (and b!6373277 (not res!2621791)) b!6373280))

(assert (= (or b!6373280 b!6373275) bm!544324))

(assert (= (or b!6373279 b!6373277) bm!544323))

(declare-fun m!7175552 () Bool)

(assert (=> b!6373274 m!7175552))

(assert (=> bm!544323 m!7174624))

(declare-fun m!7175554 () Bool)

(assert (=> b!6373281 m!7175554))

(declare-fun m!7175556 () Bool)

(assert (=> bm!544324 m!7175556))

(assert (=> b!6372279 d!1998817))

(declare-fun b!6373282 () Bool)

(declare-fun e!3869286 () Bool)

(assert (=> b!6373282 (= e!3869286 (nullable!6276 (regOne!33078 (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292)))))))))))

(declare-fun bm!544325 () Bool)

(declare-fun call!544330 () (InoxSet Context!11334))

(declare-fun call!544331 () (InoxSet Context!11334))

(assert (=> bm!544325 (= call!544330 call!544331)))

(declare-fun call!544333 () (InoxSet Context!11334))

(declare-fun call!544335 () List!65148)

(declare-fun c!1160769 () Bool)

(declare-fun c!1160768 () Bool)

(declare-fun bm!544327 () Bool)

(declare-fun c!1160772 () Bool)

(assert (=> bm!544327 (= call!544333 (derivationStepZipperDown!1531 (ite c!1160768 (regOne!33079 (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292))))))) (ite c!1160769 (regTwo!33078 (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292))))))) (ite c!1160772 (regOne!33078 (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292))))))) (reg!16612 (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292)))))))))) (ite (or c!1160768 c!1160769) (ite (or c!1160544 c!1160545) lt!2368470 (Context!11335 call!544179)) (Context!11335 call!544335)) (h!71473 s!2326)))))

(declare-fun b!6373283 () Bool)

(declare-fun e!3869289 () (InoxSet Context!11334))

(declare-fun call!544332 () (InoxSet Context!11334))

(assert (=> b!6373283 (= e!3869289 ((_ map or) call!544333 call!544332))))

(declare-fun b!6373284 () Bool)

(declare-fun e!3869288 () (InoxSet Context!11334))

(declare-fun e!3869290 () (InoxSet Context!11334))

(assert (=> b!6373284 (= e!3869288 e!3869290)))

(assert (=> b!6373284 (= c!1160772 ((_ is Concat!25128) (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292))))))))))

(declare-fun b!6373285 () Bool)

(declare-fun e!3869285 () (InoxSet Context!11334))

(assert (=> b!6373285 (= e!3869285 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6373286 () Bool)

(assert (=> b!6373286 (= c!1160769 e!3869286)))

(declare-fun res!2621792 () Bool)

(assert (=> b!6373286 (=> (not res!2621792) (not e!3869286))))

(assert (=> b!6373286 (= res!2621792 ((_ is Concat!25128) (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292))))))))))

(assert (=> b!6373286 (= e!3869289 e!3869288)))

(declare-fun b!6373287 () Bool)

(assert (=> b!6373287 (= e!3869288 ((_ map or) call!544332 call!544331))))

(declare-fun call!544334 () List!65148)

(declare-fun bm!544328 () Bool)

(assert (=> bm!544328 (= call!544334 ($colon$colon!2144 (exprs!6167 (ite (or c!1160544 c!1160545) lt!2368470 (Context!11335 call!544179))) (ite (or c!1160769 c!1160772) (regTwo!33078 (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292))))))) (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292)))))))))))

(declare-fun bm!544326 () Bool)

(assert (=> bm!544326 (= call!544331 call!544333)))

(declare-fun c!1160770 () Bool)

(declare-fun d!1998819 () Bool)

(assert (=> d!1998819 (= c!1160770 (and ((_ is ElementMatch!16283) (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292))))))) (= (c!1160374 (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292))))))) (h!71473 s!2326))))))

(declare-fun e!3869287 () (InoxSet Context!11334))

(assert (=> d!1998819 (= (derivationStepZipperDown!1531 (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292)))))) (ite (or c!1160544 c!1160545) lt!2368470 (Context!11335 call!544179)) (h!71473 s!2326)) e!3869287)))

(declare-fun bm!544329 () Bool)

(assert (=> bm!544329 (= call!544332 (derivationStepZipperDown!1531 (ite c!1160768 (regTwo!33079 (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292))))))) (regOne!33078 (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292)))))))) (ite c!1160768 (ite (or c!1160544 c!1160545) lt!2368470 (Context!11335 call!544179)) (Context!11335 call!544334)) (h!71473 s!2326)))))

(declare-fun b!6373288 () Bool)

(assert (=> b!6373288 (= e!3869287 e!3869289)))

(assert (=> b!6373288 (= c!1160768 ((_ is Union!16283) (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292))))))))))

(declare-fun b!6373289 () Bool)

(declare-fun c!1160771 () Bool)

(assert (=> b!6373289 (= c!1160771 ((_ is Star!16283) (ite c!1160544 (regOne!33079 (reg!16612 (regOne!33078 r!7292))) (ite c!1160545 (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (ite c!1160548 (regOne!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (reg!16612 (regOne!33078 r!7292))))))))))

(assert (=> b!6373289 (= e!3869290 e!3869285)))

(declare-fun b!6373290 () Bool)

(assert (=> b!6373290 (= e!3869285 call!544330)))

(declare-fun b!6373291 () Bool)

(assert (=> b!6373291 (= e!3869290 call!544330)))

(declare-fun bm!544330 () Bool)

(assert (=> bm!544330 (= call!544335 call!544334)))

(declare-fun b!6373292 () Bool)

(assert (=> b!6373292 (= e!3869287 (store ((as const (Array Context!11334 Bool)) false) (ite (or c!1160544 c!1160545) lt!2368470 (Context!11335 call!544179)) true))))

(assert (= (and d!1998819 c!1160770) b!6373292))

(assert (= (and d!1998819 (not c!1160770)) b!6373288))

(assert (= (and b!6373288 c!1160768) b!6373283))

(assert (= (and b!6373288 (not c!1160768)) b!6373286))

(assert (= (and b!6373286 res!2621792) b!6373282))

(assert (= (and b!6373286 c!1160769) b!6373287))

(assert (= (and b!6373286 (not c!1160769)) b!6373284))

(assert (= (and b!6373284 c!1160772) b!6373291))

(assert (= (and b!6373284 (not c!1160772)) b!6373289))

(assert (= (and b!6373289 c!1160771) b!6373290))

(assert (= (and b!6373289 (not c!1160771)) b!6373285))

(assert (= (or b!6373291 b!6373290) bm!544330))

(assert (= (or b!6373291 b!6373290) bm!544325))

(assert (= (or b!6373287 bm!544330) bm!544328))

(assert (= (or b!6373287 bm!544325) bm!544326))

(assert (= (or b!6373283 b!6373287) bm!544329))

(assert (= (or b!6373283 bm!544326) bm!544327))

(declare-fun m!7175558 () Bool)

(assert (=> b!6373292 m!7175558))

(declare-fun m!7175560 () Bool)

(assert (=> b!6373282 m!7175560))

(declare-fun m!7175562 () Bool)

(assert (=> bm!544327 m!7175562))

(declare-fun m!7175564 () Bool)

(assert (=> bm!544329 m!7175564))

(declare-fun m!7175566 () Bool)

(assert (=> bm!544328 m!7175566))

(assert (=> bm!544171 d!1998819))

(declare-fun d!1998821 () Bool)

(assert (=> d!1998821 (= (head!13058 (exprs!6167 (h!71474 zl!343))) (h!71472 (exprs!6167 (h!71474 zl!343))))))

(assert (=> b!6372379 d!1998821))

(declare-fun d!1998823 () Bool)

(declare-fun res!2621793 () Bool)

(declare-fun e!3869291 () Bool)

(assert (=> d!1998823 (=> res!2621793 e!3869291)))

(assert (=> d!1998823 (= res!2621793 ((_ is Nil!65024) (exprs!6167 setElem!43448)))))

(assert (=> d!1998823 (= (forall!15461 (exprs!6167 setElem!43448) lambda!351240) e!3869291)))

(declare-fun b!6373293 () Bool)

(declare-fun e!3869292 () Bool)

(assert (=> b!6373293 (= e!3869291 e!3869292)))

(declare-fun res!2621794 () Bool)

(assert (=> b!6373293 (=> (not res!2621794) (not e!3869292))))

(assert (=> b!6373293 (= res!2621794 (dynLambda!25799 lambda!351240 (h!71472 (exprs!6167 setElem!43448))))))

(declare-fun b!6373294 () Bool)

(assert (=> b!6373294 (= e!3869292 (forall!15461 (t!378748 (exprs!6167 setElem!43448)) lambda!351240))))

(assert (= (and d!1998823 (not res!2621793)) b!6373293))

(assert (= (and b!6373293 res!2621794) b!6373294))

(declare-fun b_lambda!242199 () Bool)

(assert (=> (not b_lambda!242199) (not b!6373293)))

(declare-fun m!7175568 () Bool)

(assert (=> b!6373293 m!7175568))

(declare-fun m!7175570 () Bool)

(assert (=> b!6373294 m!7175570))

(assert (=> d!1998399 d!1998823))

(declare-fun d!1998825 () Bool)

(assert (=> d!1998825 (= (isEmpty!37141 (tail!12143 (unfocusZipperList!1704 zl!343))) ((_ is Nil!65024) (tail!12143 (unfocusZipperList!1704 zl!343))))))

(assert (=> b!6372093 d!1998825))

(declare-fun d!1998827 () Bool)

(assert (=> d!1998827 (= (tail!12143 (unfocusZipperList!1704 zl!343)) (t!378748 (unfocusZipperList!1704 zl!343)))))

(assert (=> b!6372093 d!1998827))

(declare-fun d!1998829 () Bool)

(assert (=> d!1998829 (= (nullable!6276 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (nullableFct!2222 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))))))

(declare-fun bs!1596027 () Bool)

(assert (= bs!1596027 d!1998829))

(declare-fun m!7175572 () Bool)

(assert (=> bs!1596027 m!7175572))

(assert (=> b!6372399 d!1998829))

(declare-fun bs!1596028 () Bool)

(declare-fun b!6373304 () Bool)

(assert (= bs!1596028 (and b!6373304 b!6372273)))

(declare-fun lambda!351304 () Int)

(assert (=> bs!1596028 (not (= lambda!351304 lambda!351247))))

(declare-fun bs!1596029 () Bool)

(assert (= bs!1596029 (and b!6373304 d!1998455)))

(assert (=> bs!1596029 (not (= lambda!351304 lambda!351259))))

(declare-fun bs!1596030 () Bool)

(assert (= bs!1596030 (and b!6373304 b!6373275)))

(assert (=> bs!1596030 (not (= lambda!351304 lambda!351303))))

(declare-fun bs!1596031 () Bool)

(assert (= bs!1596031 (and b!6373304 b!6371753)))

(assert (=> bs!1596031 (not (= lambda!351304 lambda!351194))))

(assert (=> bs!1596029 (not (= lambda!351304 lambda!351258))))

(declare-fun bs!1596032 () Bool)

(assert (= bs!1596032 (and b!6373304 d!1998453)))

(assert (=> bs!1596032 (not (= lambda!351304 lambda!351253))))

(declare-fun bs!1596033 () Bool)

(assert (= bs!1596033 (and b!6373304 d!1998745)))

(assert (=> bs!1596033 (not (= lambda!351304 lambda!351295))))

(assert (=> bs!1596031 (not (= lambda!351304 lambda!351193))))

(declare-fun bs!1596034 () Bool)

(assert (= bs!1596034 (and b!6373304 b!6373280)))

(assert (=> bs!1596034 (= (and (= (reg!16612 (regTwo!33079 r!7292)) (reg!16612 (regOne!33079 r!7292))) (= (regTwo!33079 r!7292) (regOne!33079 r!7292))) (= lambda!351304 lambda!351302))))

(declare-fun bs!1596035 () Bool)

(assert (= bs!1596035 (and b!6373304 b!6372278)))

(assert (=> bs!1596035 (= (and (= (reg!16612 (regTwo!33079 r!7292)) (reg!16612 r!7292)) (= (regTwo!33079 r!7292) r!7292)) (= lambda!351304 lambda!351246))))

(assert (=> b!6373304 true))

(assert (=> b!6373304 true))

(declare-fun bs!1596036 () Bool)

(declare-fun b!6373299 () Bool)

(assert (= bs!1596036 (and b!6373299 b!6372273)))

(declare-fun lambda!351305 () Int)

(assert (=> bs!1596036 (= (and (= (regOne!33078 (regTwo!33079 r!7292)) (regOne!33078 r!7292)) (= (regTwo!33078 (regTwo!33079 r!7292)) (regTwo!33078 r!7292))) (= lambda!351305 lambda!351247))))

(declare-fun bs!1596037 () Bool)

(assert (= bs!1596037 (and b!6373299 d!1998455)))

(assert (=> bs!1596037 (= (and (= (regOne!33078 (regTwo!33079 r!7292)) (regOne!33078 r!7292)) (= (regTwo!33078 (regTwo!33079 r!7292)) (regTwo!33078 r!7292))) (= lambda!351305 lambda!351259))))

(declare-fun bs!1596038 () Bool)

(assert (= bs!1596038 (and b!6373299 b!6373275)))

(assert (=> bs!1596038 (= (and (= (regOne!33078 (regTwo!33079 r!7292)) (regOne!33078 (regOne!33079 r!7292))) (= (regTwo!33078 (regTwo!33079 r!7292)) (regTwo!33078 (regOne!33079 r!7292)))) (= lambda!351305 lambda!351303))))

(declare-fun bs!1596039 () Bool)

(assert (= bs!1596039 (and b!6373299 b!6371753)))

(assert (=> bs!1596039 (= (and (= (regOne!33078 (regTwo!33079 r!7292)) (regOne!33078 r!7292)) (= (regTwo!33078 (regTwo!33079 r!7292)) (regTwo!33078 r!7292))) (= lambda!351305 lambda!351194))))

(assert (=> bs!1596037 (not (= lambda!351305 lambda!351258))))

(declare-fun bs!1596040 () Bool)

(assert (= bs!1596040 (and b!6373299 d!1998453)))

(assert (=> bs!1596040 (not (= lambda!351305 lambda!351253))))

(declare-fun bs!1596041 () Bool)

(assert (= bs!1596041 (and b!6373299 d!1998745)))

(assert (=> bs!1596041 (not (= lambda!351305 lambda!351295))))

(assert (=> bs!1596039 (not (= lambda!351305 lambda!351193))))

(declare-fun bs!1596042 () Bool)

(assert (= bs!1596042 (and b!6373299 b!6373304)))

(assert (=> bs!1596042 (not (= lambda!351305 lambda!351304))))

(declare-fun bs!1596043 () Bool)

(assert (= bs!1596043 (and b!6373299 b!6373280)))

(assert (=> bs!1596043 (not (= lambda!351305 lambda!351302))))

(declare-fun bs!1596044 () Bool)

(assert (= bs!1596044 (and b!6373299 b!6372278)))

(assert (=> bs!1596044 (not (= lambda!351305 lambda!351246))))

(assert (=> b!6373299 true))

(assert (=> b!6373299 true))

(declare-fun b!6373295 () Bool)

(declare-fun e!3869297 () Bool)

(assert (=> b!6373295 (= e!3869297 (= s!2326 (Cons!65025 (c!1160374 (regTwo!33079 r!7292)) Nil!65025)))))

(declare-fun b!6373296 () Bool)

(declare-fun e!3869294 () Bool)

(declare-fun e!3869296 () Bool)

(assert (=> b!6373296 (= e!3869294 e!3869296)))

(declare-fun res!2621796 () Bool)

(assert (=> b!6373296 (= res!2621796 (not ((_ is EmptyLang!16283) (regTwo!33079 r!7292))))))

(assert (=> b!6373296 (=> (not res!2621796) (not e!3869296))))

(declare-fun b!6373297 () Bool)

(declare-fun e!3869298 () Bool)

(declare-fun e!3869295 () Bool)

(assert (=> b!6373297 (= e!3869298 e!3869295)))

(declare-fun c!1160773 () Bool)

(assert (=> b!6373297 (= c!1160773 ((_ is Star!16283) (regTwo!33079 r!7292)))))

(declare-fun b!6373298 () Bool)

(declare-fun e!3869293 () Bool)

(assert (=> b!6373298 (= e!3869293 (matchRSpec!3384 (regTwo!33079 (regTwo!33079 r!7292)) s!2326))))

(declare-fun call!544336 () Bool)

(assert (=> b!6373299 (= e!3869295 call!544336)))

(declare-fun d!1998831 () Bool)

(declare-fun c!1160774 () Bool)

(assert (=> d!1998831 (= c!1160774 ((_ is EmptyExpr!16283) (regTwo!33079 r!7292)))))

(assert (=> d!1998831 (= (matchRSpec!3384 (regTwo!33079 r!7292) s!2326) e!3869294)))

(declare-fun b!6373300 () Bool)

(declare-fun c!1160776 () Bool)

(assert (=> b!6373300 (= c!1160776 ((_ is ElementMatch!16283) (regTwo!33079 r!7292)))))

(assert (=> b!6373300 (= e!3869296 e!3869297)))

(declare-fun b!6373301 () Bool)

(declare-fun res!2621797 () Bool)

(declare-fun e!3869299 () Bool)

(assert (=> b!6373301 (=> res!2621797 e!3869299)))

(declare-fun call!544337 () Bool)

(assert (=> b!6373301 (= res!2621797 call!544337)))

(assert (=> b!6373301 (= e!3869295 e!3869299)))

(declare-fun b!6373302 () Bool)

(declare-fun c!1160775 () Bool)

(assert (=> b!6373302 (= c!1160775 ((_ is Union!16283) (regTwo!33079 r!7292)))))

(assert (=> b!6373302 (= e!3869297 e!3869298)))

(declare-fun b!6373303 () Bool)

(assert (=> b!6373303 (= e!3869294 call!544337)))

(declare-fun bm!544331 () Bool)

(assert (=> bm!544331 (= call!544337 (isEmpty!37145 s!2326))))

(assert (=> b!6373304 (= e!3869299 call!544336)))

(declare-fun b!6373305 () Bool)

(assert (=> b!6373305 (= e!3869298 e!3869293)))

(declare-fun res!2621795 () Bool)

(assert (=> b!6373305 (= res!2621795 (matchRSpec!3384 (regOne!33079 (regTwo!33079 r!7292)) s!2326))))

(assert (=> b!6373305 (=> res!2621795 e!3869293)))

(declare-fun bm!544332 () Bool)

(assert (=> bm!544332 (= call!544336 (Exists!3353 (ite c!1160773 lambda!351304 lambda!351305)))))

(assert (= (and d!1998831 c!1160774) b!6373303))

(assert (= (and d!1998831 (not c!1160774)) b!6373296))

(assert (= (and b!6373296 res!2621796) b!6373300))

(assert (= (and b!6373300 c!1160776) b!6373295))

(assert (= (and b!6373300 (not c!1160776)) b!6373302))

(assert (= (and b!6373302 c!1160775) b!6373305))

(assert (= (and b!6373302 (not c!1160775)) b!6373297))

(assert (= (and b!6373305 (not res!2621795)) b!6373298))

(assert (= (and b!6373297 c!1160773) b!6373301))

(assert (= (and b!6373297 (not c!1160773)) b!6373299))

(assert (= (and b!6373301 (not res!2621797)) b!6373304))

(assert (= (or b!6373304 b!6373299) bm!544332))

(assert (= (or b!6373303 b!6373301) bm!544331))

(declare-fun m!7175574 () Bool)

(assert (=> b!6373298 m!7175574))

(assert (=> bm!544331 m!7174624))

(declare-fun m!7175576 () Bool)

(assert (=> b!6373305 m!7175576))

(declare-fun m!7175578 () Bool)

(assert (=> bm!544332 m!7175578))

(assert (=> b!6372272 d!1998831))

(declare-fun bs!1596045 () Bool)

(declare-fun d!1998833 () Bool)

(assert (= bs!1596045 (and d!1998833 d!1998755)))

(declare-fun lambda!351306 () Int)

(assert (=> bs!1596045 (= lambda!351306 lambda!351298)))

(declare-fun bs!1596046 () Bool)

(assert (= bs!1596046 (and d!1998833 d!1998777)))

(assert (=> bs!1596046 (= lambda!351306 lambda!351299)))

(assert (=> d!1998833 (= (nullableZipper!2049 lt!2368457) (exists!2581 lt!2368457 lambda!351306))))

(declare-fun bs!1596047 () Bool)

(assert (= bs!1596047 d!1998833))

(declare-fun m!7175580 () Bool)

(assert (=> bs!1596047 m!7175580))

(assert (=> b!6372389 d!1998833))

(declare-fun d!1998835 () Bool)

(declare-fun res!2621800 () Bool)

(declare-fun e!3869304 () Bool)

(assert (=> d!1998835 (=> res!2621800 e!3869304)))

(assert (=> d!1998835 (= res!2621800 ((_ is ElementMatch!16283) lt!2368511))))

(assert (=> d!1998835 (= (validRegex!8019 lt!2368511) e!3869304)))

(declare-fun b!6373306 () Bool)

(declare-fun e!3869305 () Bool)

(assert (=> b!6373306 (= e!3869304 e!3869305)))

(declare-fun c!1160778 () Bool)

(assert (=> b!6373306 (= c!1160778 ((_ is Star!16283) lt!2368511))))

(declare-fun b!6373307 () Bool)

(declare-fun res!2621798 () Bool)

(declare-fun e!3869300 () Bool)

(assert (=> b!6373307 (=> res!2621798 e!3869300)))

(assert (=> b!6373307 (= res!2621798 (not ((_ is Concat!25128) lt!2368511)))))

(declare-fun e!3869303 () Bool)

(assert (=> b!6373307 (= e!3869303 e!3869300)))

(declare-fun bm!544333 () Bool)

(declare-fun call!544338 () Bool)

(declare-fun c!1160777 () Bool)

(assert (=> bm!544333 (= call!544338 (validRegex!8019 (ite c!1160777 (regOne!33079 lt!2368511) (regOne!33078 lt!2368511))))))

(declare-fun b!6373308 () Bool)

(declare-fun e!3869301 () Bool)

(declare-fun call!544339 () Bool)

(assert (=> b!6373308 (= e!3869301 call!544339)))

(declare-fun b!6373309 () Bool)

(assert (=> b!6373309 (= e!3869300 e!3869301)))

(declare-fun res!2621802 () Bool)

(assert (=> b!6373309 (=> (not res!2621802) (not e!3869301))))

(assert (=> b!6373309 (= res!2621802 call!544338)))

(declare-fun b!6373310 () Bool)

(declare-fun e!3869306 () Bool)

(assert (=> b!6373310 (= e!3869305 e!3869306)))

(declare-fun res!2621801 () Bool)

(assert (=> b!6373310 (= res!2621801 (not (nullable!6276 (reg!16612 lt!2368511))))))

(assert (=> b!6373310 (=> (not res!2621801) (not e!3869306))))

(declare-fun b!6373311 () Bool)

(declare-fun res!2621799 () Bool)

(declare-fun e!3869302 () Bool)

(assert (=> b!6373311 (=> (not res!2621799) (not e!3869302))))

(assert (=> b!6373311 (= res!2621799 call!544338)))

(assert (=> b!6373311 (= e!3869303 e!3869302)))

(declare-fun call!544340 () Bool)

(declare-fun bm!544334 () Bool)

(assert (=> bm!544334 (= call!544340 (validRegex!8019 (ite c!1160778 (reg!16612 lt!2368511) (ite c!1160777 (regTwo!33079 lt!2368511) (regTwo!33078 lt!2368511)))))))

(declare-fun b!6373312 () Bool)

(assert (=> b!6373312 (= e!3869306 call!544340)))

(declare-fun bm!544335 () Bool)

(assert (=> bm!544335 (= call!544339 call!544340)))

(declare-fun b!6373313 () Bool)

(assert (=> b!6373313 (= e!3869305 e!3869303)))

(assert (=> b!6373313 (= c!1160777 ((_ is Union!16283) lt!2368511))))

(declare-fun b!6373314 () Bool)

(assert (=> b!6373314 (= e!3869302 call!544339)))

(assert (= (and d!1998835 (not res!2621800)) b!6373306))

(assert (= (and b!6373306 c!1160778) b!6373310))

(assert (= (and b!6373306 (not c!1160778)) b!6373313))

(assert (= (and b!6373310 res!2621801) b!6373312))

(assert (= (and b!6373313 c!1160777) b!6373311))

(assert (= (and b!6373313 (not c!1160777)) b!6373307))

(assert (= (and b!6373311 res!2621799) b!6373314))

(assert (= (and b!6373307 (not res!2621798)) b!6373309))

(assert (= (and b!6373309 res!2621802) b!6373308))

(assert (= (or b!6373314 b!6373308) bm!544335))

(assert (= (or b!6373311 b!6373309) bm!544333))

(assert (= (or b!6373312 bm!544335) bm!544334))

(declare-fun m!7175582 () Bool)

(assert (=> bm!544333 m!7175582))

(declare-fun m!7175584 () Bool)

(assert (=> b!6373310 m!7175584))

(declare-fun m!7175586 () Bool)

(assert (=> bm!544334 m!7175586))

(assert (=> d!1998351 d!1998835))

(declare-fun bs!1596048 () Bool)

(declare-fun d!1998837 () Bool)

(assert (= bs!1596048 (and d!1998837 d!1998399)))

(declare-fun lambda!351307 () Int)

(assert (=> bs!1596048 (= lambda!351307 lambda!351240)))

(declare-fun bs!1596049 () Bool)

(assert (= bs!1596049 (and d!1998837 d!1998407)))

(assert (=> bs!1596049 (= lambda!351307 lambda!351241)))

(declare-fun bs!1596050 () Bool)

(assert (= bs!1596050 (and d!1998837 d!1998393)))

(assert (=> bs!1596050 (= lambda!351307 lambda!351239)))

(declare-fun bs!1596051 () Bool)

(assert (= bs!1596051 (and d!1998837 d!1998389)))

(assert (=> bs!1596051 (= lambda!351307 lambda!351236)))

(declare-fun bs!1596052 () Bool)

(assert (= bs!1596052 (and d!1998837 d!1998421)))

(assert (=> bs!1596052 (= lambda!351307 lambda!351250)))

(declare-fun bs!1596053 () Bool)

(assert (= bs!1596053 (and d!1998837 d!1998343)))

(assert (=> bs!1596053 (= lambda!351307 lambda!351220)))

(declare-fun bs!1596054 () Bool)

(assert (= bs!1596054 (and d!1998837 d!1998779)))

(assert (=> bs!1596054 (= lambda!351307 lambda!351300)))

(declare-fun b!6373315 () Bool)

(declare-fun e!3869308 () Bool)

(declare-fun e!3869310 () Bool)

(assert (=> b!6373315 (= e!3869308 e!3869310)))

(declare-fun c!1160782 () Bool)

(assert (=> b!6373315 (= c!1160782 (isEmpty!37141 (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026))))))

(declare-fun b!6373316 () Bool)

(declare-fun e!3869307 () Bool)

(assert (=> b!6373316 (= e!3869310 e!3869307)))

(declare-fun c!1160779 () Bool)

(assert (=> b!6373316 (= c!1160779 (isEmpty!37141 (tail!12143 (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026)))))))

(declare-fun b!6373317 () Bool)

(declare-fun e!3869311 () Regex!16283)

(declare-fun e!3869309 () Regex!16283)

(assert (=> b!6373317 (= e!3869311 e!3869309)))

(declare-fun c!1160781 () Bool)

(assert (=> b!6373317 (= c!1160781 ((_ is Cons!65024) (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026))))))

(declare-fun b!6373318 () Bool)

(declare-fun lt!2368600 () Regex!16283)

(assert (=> b!6373318 (= e!3869307 (isUnion!1121 lt!2368600))))

(declare-fun b!6373320 () Bool)

(assert (=> b!6373320 (= e!3869309 (Union!16283 (h!71472 (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026))) (generalisedUnion!2127 (t!378748 (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026))))))))

(declare-fun b!6373321 () Bool)

(assert (=> b!6373321 (= e!3869307 (= lt!2368600 (head!13058 (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026)))))))

(declare-fun b!6373319 () Bool)

(assert (=> b!6373319 (= e!3869311 (h!71472 (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026))))))

(assert (=> d!1998837 e!3869308))

(declare-fun res!2621803 () Bool)

(assert (=> d!1998837 (=> (not res!2621803) (not e!3869308))))

(assert (=> d!1998837 (= res!2621803 (validRegex!8019 lt!2368600))))

(assert (=> d!1998837 (= lt!2368600 e!3869311)))

(declare-fun c!1160780 () Bool)

(declare-fun e!3869312 () Bool)

(assert (=> d!1998837 (= c!1160780 e!3869312)))

(declare-fun res!2621804 () Bool)

(assert (=> d!1998837 (=> (not res!2621804) (not e!3869312))))

(assert (=> d!1998837 (= res!2621804 ((_ is Cons!65024) (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026))))))

(assert (=> d!1998837 (forall!15461 (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026)) lambda!351307)))

(assert (=> d!1998837 (= (generalisedUnion!2127 (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026))) lt!2368600)))

(declare-fun b!6373322 () Bool)

(assert (=> b!6373322 (= e!3869310 (isEmptyLang!1691 lt!2368600))))

(declare-fun b!6373323 () Bool)

(assert (=> b!6373323 (= e!3869309 EmptyLang!16283)))

(declare-fun b!6373324 () Bool)

(assert (=> b!6373324 (= e!3869312 (isEmpty!37141 (t!378748 (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026)))))))

(assert (= (and d!1998837 res!2621804) b!6373324))

(assert (= (and d!1998837 c!1160780) b!6373319))

(assert (= (and d!1998837 (not c!1160780)) b!6373317))

(assert (= (and b!6373317 c!1160781) b!6373320))

(assert (= (and b!6373317 (not c!1160781)) b!6373323))

(assert (= (and d!1998837 res!2621803) b!6373315))

(assert (= (and b!6373315 c!1160782) b!6373322))

(assert (= (and b!6373315 (not c!1160782)) b!6373316))

(assert (= (and b!6373316 c!1160779) b!6373321))

(assert (= (and b!6373316 (not c!1160779)) b!6373318))

(declare-fun m!7175588 () Bool)

(assert (=> b!6373324 m!7175588))

(declare-fun m!7175590 () Bool)

(assert (=> b!6373320 m!7175590))

(declare-fun m!7175592 () Bool)

(assert (=> d!1998837 m!7175592))

(assert (=> d!1998837 m!7174470))

(declare-fun m!7175594 () Bool)

(assert (=> d!1998837 m!7175594))

(declare-fun m!7175596 () Bool)

(assert (=> b!6373322 m!7175596))

(declare-fun m!7175598 () Bool)

(assert (=> b!6373318 m!7175598))

(assert (=> b!6373315 m!7174470))

(declare-fun m!7175600 () Bool)

(assert (=> b!6373315 m!7175600))

(assert (=> b!6373316 m!7174470))

(declare-fun m!7175602 () Bool)

(assert (=> b!6373316 m!7175602))

(assert (=> b!6373316 m!7175602))

(declare-fun m!7175604 () Bool)

(assert (=> b!6373316 m!7175604))

(assert (=> b!6373321 m!7174470))

(declare-fun m!7175606 () Bool)

(assert (=> b!6373321 m!7175606))

(assert (=> d!1998351 d!1998837))

(declare-fun bs!1596055 () Bool)

(declare-fun d!1998839 () Bool)

(assert (= bs!1596055 (and d!1998839 d!1998399)))

(declare-fun lambda!351308 () Int)

(assert (=> bs!1596055 (= lambda!351308 lambda!351240)))

(declare-fun bs!1596056 () Bool)

(assert (= bs!1596056 (and d!1998839 d!1998407)))

(assert (=> bs!1596056 (= lambda!351308 lambda!351241)))

(declare-fun bs!1596057 () Bool)

(assert (= bs!1596057 (and d!1998839 d!1998393)))

(assert (=> bs!1596057 (= lambda!351308 lambda!351239)))

(declare-fun bs!1596058 () Bool)

(assert (= bs!1596058 (and d!1998839 d!1998837)))

(assert (=> bs!1596058 (= lambda!351308 lambda!351307)))

(declare-fun bs!1596059 () Bool)

(assert (= bs!1596059 (and d!1998839 d!1998389)))

(assert (=> bs!1596059 (= lambda!351308 lambda!351236)))

(declare-fun bs!1596060 () Bool)

(assert (= bs!1596060 (and d!1998839 d!1998421)))

(assert (=> bs!1596060 (= lambda!351308 lambda!351250)))

(declare-fun bs!1596061 () Bool)

(assert (= bs!1596061 (and d!1998839 d!1998343)))

(assert (=> bs!1596061 (= lambda!351308 lambda!351220)))

(declare-fun bs!1596062 () Bool)

(assert (= bs!1596062 (and d!1998839 d!1998779)))

(assert (=> bs!1596062 (= lambda!351308 lambda!351300)))

(declare-fun lt!2368601 () List!65148)

(assert (=> d!1998839 (forall!15461 lt!2368601 lambda!351308)))

(declare-fun e!3869313 () List!65148)

(assert (=> d!1998839 (= lt!2368601 e!3869313)))

(declare-fun c!1160783 () Bool)

(assert (=> d!1998839 (= c!1160783 ((_ is Cons!65026) (Cons!65026 lt!2368458 Nil!65026)))))

(assert (=> d!1998839 (= (unfocusZipperList!1704 (Cons!65026 lt!2368458 Nil!65026)) lt!2368601)))

(declare-fun b!6373325 () Bool)

(assert (=> b!6373325 (= e!3869313 (Cons!65024 (generalisedConcat!1880 (exprs!6167 (h!71474 (Cons!65026 lt!2368458 Nil!65026)))) (unfocusZipperList!1704 (t!378750 (Cons!65026 lt!2368458 Nil!65026)))))))

(declare-fun b!6373326 () Bool)

(assert (=> b!6373326 (= e!3869313 Nil!65024)))

(assert (= (and d!1998839 c!1160783) b!6373325))

(assert (= (and d!1998839 (not c!1160783)) b!6373326))

(declare-fun m!7175608 () Bool)

(assert (=> d!1998839 m!7175608))

(declare-fun m!7175610 () Bool)

(assert (=> b!6373325 m!7175610))

(declare-fun m!7175612 () Bool)

(assert (=> b!6373325 m!7175612))

(assert (=> d!1998351 d!1998839))

(declare-fun d!1998841 () Bool)

(assert (=> d!1998841 (= (isEmpty!37145 (t!378749 s!2326)) ((_ is Nil!65025) (t!378749 s!2326)))))

(assert (=> d!1998469 d!1998841))

(declare-fun bs!1596063 () Bool)

(declare-fun d!1998843 () Bool)

(assert (= bs!1596063 (and d!1998843 d!1998399)))

(declare-fun lambda!351309 () Int)

(assert (=> bs!1596063 (= lambda!351309 lambda!351240)))

(declare-fun bs!1596064 () Bool)

(assert (= bs!1596064 (and d!1998843 d!1998407)))

(assert (=> bs!1596064 (= lambda!351309 lambda!351241)))

(declare-fun bs!1596065 () Bool)

(assert (= bs!1596065 (and d!1998843 d!1998393)))

(assert (=> bs!1596065 (= lambda!351309 lambda!351239)))

(declare-fun bs!1596066 () Bool)

(assert (= bs!1596066 (and d!1998843 d!1998839)))

(assert (=> bs!1596066 (= lambda!351309 lambda!351308)))

(declare-fun bs!1596067 () Bool)

(assert (= bs!1596067 (and d!1998843 d!1998837)))

(assert (=> bs!1596067 (= lambda!351309 lambda!351307)))

(declare-fun bs!1596068 () Bool)

(assert (= bs!1596068 (and d!1998843 d!1998389)))

(assert (=> bs!1596068 (= lambda!351309 lambda!351236)))

(declare-fun bs!1596069 () Bool)

(assert (= bs!1596069 (and d!1998843 d!1998421)))

(assert (=> bs!1596069 (= lambda!351309 lambda!351250)))

(declare-fun bs!1596070 () Bool)

(assert (= bs!1596070 (and d!1998843 d!1998343)))

(assert (=> bs!1596070 (= lambda!351309 lambda!351220)))

(declare-fun bs!1596071 () Bool)

(assert (= bs!1596071 (and d!1998843 d!1998779)))

(assert (=> bs!1596071 (= lambda!351309 lambda!351300)))

(declare-fun b!6373327 () Bool)

(declare-fun e!3869315 () Bool)

(declare-fun e!3869317 () Bool)

(assert (=> b!6373327 (= e!3869315 e!3869317)))

(declare-fun c!1160787 () Bool)

(assert (=> b!6373327 (= c!1160787 (isEmpty!37141 (t!378748 (unfocusZipperList!1704 zl!343))))))

(declare-fun b!6373328 () Bool)

(declare-fun e!3869314 () Bool)

(assert (=> b!6373328 (= e!3869317 e!3869314)))

(declare-fun c!1160784 () Bool)

(assert (=> b!6373328 (= c!1160784 (isEmpty!37141 (tail!12143 (t!378748 (unfocusZipperList!1704 zl!343)))))))

(declare-fun b!6373329 () Bool)

(declare-fun e!3869318 () Regex!16283)

(declare-fun e!3869316 () Regex!16283)

(assert (=> b!6373329 (= e!3869318 e!3869316)))

(declare-fun c!1160786 () Bool)

(assert (=> b!6373329 (= c!1160786 ((_ is Cons!65024) (t!378748 (unfocusZipperList!1704 zl!343))))))

(declare-fun b!6373330 () Bool)

(declare-fun lt!2368602 () Regex!16283)

(assert (=> b!6373330 (= e!3869314 (isUnion!1121 lt!2368602))))

(declare-fun b!6373332 () Bool)

(assert (=> b!6373332 (= e!3869316 (Union!16283 (h!71472 (t!378748 (unfocusZipperList!1704 zl!343))) (generalisedUnion!2127 (t!378748 (t!378748 (unfocusZipperList!1704 zl!343))))))))

(declare-fun b!6373333 () Bool)

(assert (=> b!6373333 (= e!3869314 (= lt!2368602 (head!13058 (t!378748 (unfocusZipperList!1704 zl!343)))))))

(declare-fun b!6373331 () Bool)

(assert (=> b!6373331 (= e!3869318 (h!71472 (t!378748 (unfocusZipperList!1704 zl!343))))))

(assert (=> d!1998843 e!3869315))

(declare-fun res!2621805 () Bool)

(assert (=> d!1998843 (=> (not res!2621805) (not e!3869315))))

(assert (=> d!1998843 (= res!2621805 (validRegex!8019 lt!2368602))))

(assert (=> d!1998843 (= lt!2368602 e!3869318)))

(declare-fun c!1160785 () Bool)

(declare-fun e!3869319 () Bool)

(assert (=> d!1998843 (= c!1160785 e!3869319)))

(declare-fun res!2621806 () Bool)

(assert (=> d!1998843 (=> (not res!2621806) (not e!3869319))))

(assert (=> d!1998843 (= res!2621806 ((_ is Cons!65024) (t!378748 (unfocusZipperList!1704 zl!343))))))

(assert (=> d!1998843 (forall!15461 (t!378748 (unfocusZipperList!1704 zl!343)) lambda!351309)))

(assert (=> d!1998843 (= (generalisedUnion!2127 (t!378748 (unfocusZipperList!1704 zl!343))) lt!2368602)))

(declare-fun b!6373334 () Bool)

(assert (=> b!6373334 (= e!3869317 (isEmptyLang!1691 lt!2368602))))

(declare-fun b!6373335 () Bool)

(assert (=> b!6373335 (= e!3869316 EmptyLang!16283)))

(declare-fun b!6373336 () Bool)

(assert (=> b!6373336 (= e!3869319 (isEmpty!37141 (t!378748 (t!378748 (unfocusZipperList!1704 zl!343)))))))

(assert (= (and d!1998843 res!2621806) b!6373336))

(assert (= (and d!1998843 c!1160785) b!6373331))

(assert (= (and d!1998843 (not c!1160785)) b!6373329))

(assert (= (and b!6373329 c!1160786) b!6373332))

(assert (= (and b!6373329 (not c!1160786)) b!6373335))

(assert (= (and d!1998843 res!2621805) b!6373327))

(assert (= (and b!6373327 c!1160787) b!6373334))

(assert (= (and b!6373327 (not c!1160787)) b!6373328))

(assert (= (and b!6373328 c!1160784) b!6373333))

(assert (= (and b!6373328 (not c!1160784)) b!6373330))

(declare-fun m!7175614 () Bool)

(assert (=> b!6373336 m!7175614))

(declare-fun m!7175616 () Bool)

(assert (=> b!6373332 m!7175616))

(declare-fun m!7175618 () Bool)

(assert (=> d!1998843 m!7175618))

(declare-fun m!7175620 () Bool)

(assert (=> d!1998843 m!7175620))

(declare-fun m!7175622 () Bool)

(assert (=> b!6373334 m!7175622))

(declare-fun m!7175624 () Bool)

(assert (=> b!6373330 m!7175624))

(assert (=> b!6373327 m!7174560))

(declare-fun m!7175626 () Bool)

(assert (=> b!6373328 m!7175626))

(assert (=> b!6373328 m!7175626))

(declare-fun m!7175628 () Bool)

(assert (=> b!6373328 m!7175628))

(declare-fun m!7175630 () Bool)

(assert (=> b!6373333 m!7175630))

(assert (=> b!6372097 d!1998843))

(assert (=> d!1998431 d!1998443))

(declare-fun d!1998845 () Bool)

(assert (=> d!1998845 (= (flatMap!1788 z!1189 lambda!351195) (dynLambda!25797 lambda!351195 (h!71474 zl!343)))))

(assert (=> d!1998845 true))

(declare-fun _$13!3551 () Unit!158463)

(assert (=> d!1998845 (= (choose!47361 z!1189 (h!71474 zl!343) lambda!351195) _$13!3551)))

(declare-fun b_lambda!242201 () Bool)

(assert (=> (not b_lambda!242201) (not d!1998845)))

(declare-fun bs!1596072 () Bool)

(assert (= bs!1596072 d!1998845))

(assert (=> bs!1596072 m!7174240))

(assert (=> bs!1596072 m!7174688))

(assert (=> d!1998431 d!1998845))

(declare-fun b!6373337 () Bool)

(declare-fun e!3869321 () Bool)

(assert (=> b!6373337 (= e!3869321 (nullable!6276 (regOne!33078 (h!71472 (exprs!6167 lt!2368450)))))))

(declare-fun bm!544336 () Bool)

(declare-fun call!544341 () (InoxSet Context!11334))

(declare-fun call!544342 () (InoxSet Context!11334))

(assert (=> bm!544336 (= call!544341 call!544342)))

(declare-fun c!1160792 () Bool)

(declare-fun call!544344 () (InoxSet Context!11334))

(declare-fun call!544346 () List!65148)

(declare-fun c!1160789 () Bool)

(declare-fun bm!544338 () Bool)

(declare-fun c!1160788 () Bool)

(assert (=> bm!544338 (= call!544344 (derivationStepZipperDown!1531 (ite c!1160788 (regOne!33079 (h!71472 (exprs!6167 lt!2368450))) (ite c!1160789 (regTwo!33078 (h!71472 (exprs!6167 lt!2368450))) (ite c!1160792 (regOne!33078 (h!71472 (exprs!6167 lt!2368450))) (reg!16612 (h!71472 (exprs!6167 lt!2368450)))))) (ite (or c!1160788 c!1160789) (Context!11335 (t!378748 (exprs!6167 lt!2368450))) (Context!11335 call!544346)) (h!71473 s!2326)))))

(declare-fun b!6373338 () Bool)

(declare-fun e!3869324 () (InoxSet Context!11334))

(declare-fun call!544343 () (InoxSet Context!11334))

(assert (=> b!6373338 (= e!3869324 ((_ map or) call!544344 call!544343))))

(declare-fun b!6373339 () Bool)

(declare-fun e!3869323 () (InoxSet Context!11334))

(declare-fun e!3869325 () (InoxSet Context!11334))

(assert (=> b!6373339 (= e!3869323 e!3869325)))

(assert (=> b!6373339 (= c!1160792 ((_ is Concat!25128) (h!71472 (exprs!6167 lt!2368450))))))

(declare-fun b!6373340 () Bool)

(declare-fun e!3869320 () (InoxSet Context!11334))

(assert (=> b!6373340 (= e!3869320 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6373341 () Bool)

(assert (=> b!6373341 (= c!1160789 e!3869321)))

(declare-fun res!2621807 () Bool)

(assert (=> b!6373341 (=> (not res!2621807) (not e!3869321))))

(assert (=> b!6373341 (= res!2621807 ((_ is Concat!25128) (h!71472 (exprs!6167 lt!2368450))))))

(assert (=> b!6373341 (= e!3869324 e!3869323)))

(declare-fun b!6373342 () Bool)

(assert (=> b!6373342 (= e!3869323 ((_ map or) call!544343 call!544342))))

(declare-fun bm!544339 () Bool)

(declare-fun call!544345 () List!65148)

(assert (=> bm!544339 (= call!544345 ($colon$colon!2144 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368450)))) (ite (or c!1160789 c!1160792) (regTwo!33078 (h!71472 (exprs!6167 lt!2368450))) (h!71472 (exprs!6167 lt!2368450)))))))

(declare-fun bm!544337 () Bool)

(assert (=> bm!544337 (= call!544342 call!544344)))

(declare-fun d!1998847 () Bool)

(declare-fun c!1160790 () Bool)

(assert (=> d!1998847 (= c!1160790 (and ((_ is ElementMatch!16283) (h!71472 (exprs!6167 lt!2368450))) (= (c!1160374 (h!71472 (exprs!6167 lt!2368450))) (h!71473 s!2326))))))

(declare-fun e!3869322 () (InoxSet Context!11334))

(assert (=> d!1998847 (= (derivationStepZipperDown!1531 (h!71472 (exprs!6167 lt!2368450)) (Context!11335 (t!378748 (exprs!6167 lt!2368450))) (h!71473 s!2326)) e!3869322)))

(declare-fun bm!544340 () Bool)

(assert (=> bm!544340 (= call!544343 (derivationStepZipperDown!1531 (ite c!1160788 (regTwo!33079 (h!71472 (exprs!6167 lt!2368450))) (regOne!33078 (h!71472 (exprs!6167 lt!2368450)))) (ite c!1160788 (Context!11335 (t!378748 (exprs!6167 lt!2368450))) (Context!11335 call!544345)) (h!71473 s!2326)))))

(declare-fun b!6373343 () Bool)

(assert (=> b!6373343 (= e!3869322 e!3869324)))

(assert (=> b!6373343 (= c!1160788 ((_ is Union!16283) (h!71472 (exprs!6167 lt!2368450))))))

(declare-fun b!6373344 () Bool)

(declare-fun c!1160791 () Bool)

(assert (=> b!6373344 (= c!1160791 ((_ is Star!16283) (h!71472 (exprs!6167 lt!2368450))))))

(assert (=> b!6373344 (= e!3869325 e!3869320)))

(declare-fun b!6373345 () Bool)

(assert (=> b!6373345 (= e!3869320 call!544341)))

(declare-fun b!6373346 () Bool)

(assert (=> b!6373346 (= e!3869325 call!544341)))

(declare-fun bm!544341 () Bool)

(assert (=> bm!544341 (= call!544346 call!544345)))

(declare-fun b!6373347 () Bool)

(assert (=> b!6373347 (= e!3869322 (store ((as const (Array Context!11334 Bool)) false) (Context!11335 (t!378748 (exprs!6167 lt!2368450))) true))))

(assert (= (and d!1998847 c!1160790) b!6373347))

(assert (= (and d!1998847 (not c!1160790)) b!6373343))

(assert (= (and b!6373343 c!1160788) b!6373338))

(assert (= (and b!6373343 (not c!1160788)) b!6373341))

(assert (= (and b!6373341 res!2621807) b!6373337))

(assert (= (and b!6373341 c!1160789) b!6373342))

(assert (= (and b!6373341 (not c!1160789)) b!6373339))

(assert (= (and b!6373339 c!1160792) b!6373346))

(assert (= (and b!6373339 (not c!1160792)) b!6373344))

(assert (= (and b!6373344 c!1160791) b!6373345))

(assert (= (and b!6373344 (not c!1160791)) b!6373340))

(assert (= (or b!6373346 b!6373345) bm!544341))

(assert (= (or b!6373346 b!6373345) bm!544336))

(assert (= (or b!6373342 bm!544341) bm!544339))

(assert (= (or b!6373342 bm!544336) bm!544337))

(assert (= (or b!6373338 b!6373342) bm!544340))

(assert (= (or b!6373338 bm!544337) bm!544338))

(declare-fun m!7175632 () Bool)

(assert (=> b!6373347 m!7175632))

(declare-fun m!7175634 () Bool)

(assert (=> b!6373337 m!7175634))

(declare-fun m!7175636 () Bool)

(assert (=> bm!544338 m!7175636))

(declare-fun m!7175638 () Bool)

(assert (=> bm!544340 m!7175638))

(declare-fun m!7175640 () Bool)

(assert (=> bm!544339 m!7175640))

(assert (=> bm!544175 d!1998847))

(declare-fun d!1998849 () Bool)

(assert (=> d!1998849 (= (isEmptyExpr!1685 lt!2368539) ((_ is EmptyExpr!16283) lt!2368539))))

(assert (=> b!6372375 d!1998849))

(declare-fun d!1998851 () Bool)

(declare-fun c!1160793 () Bool)

(assert (=> d!1998851 (= c!1160793 (isEmpty!37145 (tail!12144 (t!378749 s!2326))))))

(declare-fun e!3869326 () Bool)

(assert (=> d!1998851 (= (matchZipper!2295 (derivationStepZipper!2249 lt!2368449 (head!13059 (t!378749 s!2326))) (tail!12144 (t!378749 s!2326))) e!3869326)))

(declare-fun b!6373348 () Bool)

(assert (=> b!6373348 (= e!3869326 (nullableZipper!2049 (derivationStepZipper!2249 lt!2368449 (head!13059 (t!378749 s!2326)))))))

(declare-fun b!6373349 () Bool)

(assert (=> b!6373349 (= e!3869326 (matchZipper!2295 (derivationStepZipper!2249 (derivationStepZipper!2249 lt!2368449 (head!13059 (t!378749 s!2326))) (head!13059 (tail!12144 (t!378749 s!2326)))) (tail!12144 (tail!12144 (t!378749 s!2326)))))))

(assert (= (and d!1998851 c!1160793) b!6373348))

(assert (= (and d!1998851 (not c!1160793)) b!6373349))

(assert (=> d!1998851 m!7174680))

(assert (=> d!1998851 m!7175538))

(assert (=> b!6373348 m!7174786))

(declare-fun m!7175642 () Bool)

(assert (=> b!6373348 m!7175642))

(assert (=> b!6373349 m!7174680))

(assert (=> b!6373349 m!7175542))

(assert (=> b!6373349 m!7174786))

(assert (=> b!6373349 m!7175542))

(declare-fun m!7175644 () Bool)

(assert (=> b!6373349 m!7175644))

(assert (=> b!6373349 m!7174680))

(assert (=> b!6373349 m!7175546))

(assert (=> b!6373349 m!7175644))

(assert (=> b!6373349 m!7175546))

(declare-fun m!7175646 () Bool)

(assert (=> b!6373349 m!7175646))

(assert (=> b!6372467 d!1998851))

(declare-fun bs!1596073 () Bool)

(declare-fun d!1998853 () Bool)

(assert (= bs!1596073 (and d!1998853 b!6371763)))

(declare-fun lambda!351310 () Int)

(assert (=> bs!1596073 (= (= (head!13059 (t!378749 s!2326)) (h!71473 s!2326)) (= lambda!351310 lambda!351195))))

(declare-fun bs!1596074 () Bool)

(assert (= bs!1596074 (and d!1998853 d!1998385)))

(assert (=> bs!1596074 (= (= (head!13059 (t!378749 s!2326)) (h!71473 s!2326)) (= lambda!351310 lambda!351227))))

(declare-fun bs!1596075 () Bool)

(assert (= bs!1596075 (and d!1998853 d!1998735)))

(assert (=> bs!1596075 (= (= (head!13059 (t!378749 s!2326)) (head!13059 s!2326)) (= lambda!351310 lambda!351292))))

(declare-fun bs!1596076 () Bool)

(assert (= bs!1596076 (and d!1998853 d!1998809)))

(assert (=> bs!1596076 (= lambda!351310 lambda!351301)))

(assert (=> d!1998853 true))

(assert (=> d!1998853 (= (derivationStepZipper!2249 lt!2368449 (head!13059 (t!378749 s!2326))) (flatMap!1788 lt!2368449 lambda!351310))))

(declare-fun bs!1596077 () Bool)

(assert (= bs!1596077 d!1998853))

(declare-fun m!7175648 () Bool)

(assert (=> bs!1596077 m!7175648))

(assert (=> b!6372467 d!1998853))

(assert (=> b!6372467 d!1998811))

(assert (=> b!6372467 d!1998813))

(declare-fun b!6373350 () Bool)

(declare-fun e!3869328 () Bool)

(assert (=> b!6373350 (= e!3869328 (nullable!6276 (regOne!33078 (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343))))))))))

(declare-fun bm!544342 () Bool)

(declare-fun call!544347 () (InoxSet Context!11334))

(declare-fun call!544348 () (InoxSet Context!11334))

(assert (=> bm!544342 (= call!544347 call!544348)))

(declare-fun c!1160795 () Bool)

(declare-fun call!544352 () List!65148)

(declare-fun call!544350 () (InoxSet Context!11334))

(declare-fun bm!544344 () Bool)

(declare-fun c!1160798 () Bool)

(declare-fun c!1160794 () Bool)

(assert (=> bm!544344 (= call!544350 (derivationStepZipperDown!1531 (ite c!1160794 (regOne!33079 (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))) (ite c!1160795 (regTwo!33078 (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))) (ite c!1160798 (regOne!33078 (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))) (reg!16612 (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343))))))))) (ite (or c!1160794 c!1160795) (ite c!1160568 lt!2368450 (Context!11335 call!544186)) (Context!11335 call!544352)) (h!71473 s!2326)))))

(declare-fun b!6373351 () Bool)

(declare-fun e!3869331 () (InoxSet Context!11334))

(declare-fun call!544349 () (InoxSet Context!11334))

(assert (=> b!6373351 (= e!3869331 ((_ map or) call!544350 call!544349))))

(declare-fun b!6373352 () Bool)

(declare-fun e!3869330 () (InoxSet Context!11334))

(declare-fun e!3869332 () (InoxSet Context!11334))

(assert (=> b!6373352 (= e!3869330 e!3869332)))

(assert (=> b!6373352 (= c!1160798 ((_ is Concat!25128) (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))))))

(declare-fun b!6373353 () Bool)

(declare-fun e!3869327 () (InoxSet Context!11334))

(assert (=> b!6373353 (= e!3869327 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6373354 () Bool)

(assert (=> b!6373354 (= c!1160795 e!3869328)))

(declare-fun res!2621808 () Bool)

(assert (=> b!6373354 (=> (not res!2621808) (not e!3869328))))

(assert (=> b!6373354 (= res!2621808 ((_ is Concat!25128) (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))))))

(assert (=> b!6373354 (= e!3869331 e!3869330)))

(declare-fun b!6373355 () Bool)

(assert (=> b!6373355 (= e!3869330 ((_ map or) call!544349 call!544348))))

(declare-fun call!544351 () List!65148)

(declare-fun bm!544345 () Bool)

(assert (=> bm!544345 (= call!544351 ($colon$colon!2144 (exprs!6167 (ite c!1160568 lt!2368450 (Context!11335 call!544186))) (ite (or c!1160795 c!1160798) (regTwo!33078 (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))) (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343))))))))))

(declare-fun bm!544343 () Bool)

(assert (=> bm!544343 (= call!544348 call!544350)))

(declare-fun d!1998855 () Bool)

(declare-fun c!1160796 () Bool)

(assert (=> d!1998855 (= c!1160796 (and ((_ is ElementMatch!16283) (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))) (= (c!1160374 (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))) (h!71473 s!2326))))))

(declare-fun e!3869329 () (InoxSet Context!11334))

(assert (=> d!1998855 (= (derivationStepZipperDown!1531 (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343))))) (ite c!1160568 lt!2368450 (Context!11335 call!544186)) (h!71473 s!2326)) e!3869329)))

(declare-fun bm!544346 () Bool)

(assert (=> bm!544346 (= call!544349 (derivationStepZipperDown!1531 (ite c!1160794 (regTwo!33079 (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))) (regOne!33078 (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343))))))) (ite c!1160794 (ite c!1160568 lt!2368450 (Context!11335 call!544186)) (Context!11335 call!544351)) (h!71473 s!2326)))))

(declare-fun b!6373356 () Bool)

(assert (=> b!6373356 (= e!3869329 e!3869331)))

(assert (=> b!6373356 (= c!1160794 ((_ is Union!16283) (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))))))

(declare-fun b!6373357 () Bool)

(declare-fun c!1160797 () Bool)

(assert (=> b!6373357 (= c!1160797 ((_ is Star!16283) (ite c!1160568 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))))))))

(assert (=> b!6373357 (= e!3869332 e!3869327)))

(declare-fun b!6373358 () Bool)

(assert (=> b!6373358 (= e!3869327 call!544347)))

(declare-fun b!6373359 () Bool)

(assert (=> b!6373359 (= e!3869332 call!544347)))

(declare-fun bm!544347 () Bool)

(assert (=> bm!544347 (= call!544352 call!544351)))

(declare-fun b!6373360 () Bool)

(assert (=> b!6373360 (= e!3869329 (store ((as const (Array Context!11334 Bool)) false) (ite c!1160568 lt!2368450 (Context!11335 call!544186)) true))))

(assert (= (and d!1998855 c!1160796) b!6373360))

(assert (= (and d!1998855 (not c!1160796)) b!6373356))

(assert (= (and b!6373356 c!1160794) b!6373351))

(assert (= (and b!6373356 (not c!1160794)) b!6373354))

(assert (= (and b!6373354 res!2621808) b!6373350))

(assert (= (and b!6373354 c!1160795) b!6373355))

(assert (= (and b!6373354 (not c!1160795)) b!6373352))

(assert (= (and b!6373352 c!1160798) b!6373359))

(assert (= (and b!6373352 (not c!1160798)) b!6373357))

(assert (= (and b!6373357 c!1160797) b!6373358))

(assert (= (and b!6373357 (not c!1160797)) b!6373353))

(assert (= (or b!6373359 b!6373358) bm!544347))

(assert (= (or b!6373359 b!6373358) bm!544342))

(assert (= (or b!6373355 bm!544347) bm!544345))

(assert (= (or b!6373355 bm!544342) bm!544343))

(assert (= (or b!6373351 b!6373355) bm!544346))

(assert (= (or b!6373351 bm!544343) bm!544344))

(declare-fun m!7175650 () Bool)

(assert (=> b!6373360 m!7175650))

(declare-fun m!7175652 () Bool)

(assert (=> b!6373350 m!7175652))

(declare-fun m!7175654 () Bool)

(assert (=> bm!544344 m!7175654))

(declare-fun m!7175656 () Bool)

(assert (=> bm!544346 m!7175656))

(declare-fun m!7175658 () Bool)

(assert (=> bm!544345 m!7175658))

(assert (=> bm!544181 d!1998855))

(declare-fun b!6373361 () Bool)

(declare-fun e!3869334 () (InoxSet Context!11334))

(assert (=> b!6373361 (= e!3869334 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544348 () Bool)

(declare-fun call!544353 () (InoxSet Context!11334))

(assert (=> bm!544348 (= call!544353 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368450))))) (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368450)))))) (h!71473 s!2326)))))

(declare-fun d!1998857 () Bool)

(declare-fun c!1160799 () Bool)

(declare-fun e!3869335 () Bool)

(assert (=> d!1998857 (= c!1160799 e!3869335)))

(declare-fun res!2621809 () Bool)

(assert (=> d!1998857 (=> (not res!2621809) (not e!3869335))))

(assert (=> d!1998857 (= res!2621809 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368450))))))))

(declare-fun e!3869333 () (InoxSet Context!11334))

(assert (=> d!1998857 (= (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 lt!2368450))) (h!71473 s!2326)) e!3869333)))

(declare-fun b!6373362 () Bool)

(assert (=> b!6373362 (= e!3869333 e!3869334)))

(declare-fun c!1160800 () Bool)

(assert (=> b!6373362 (= c!1160800 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368450))))))))

(declare-fun b!6373363 () Bool)

(assert (=> b!6373363 (= e!3869334 call!544353)))

(declare-fun b!6373364 () Bool)

(assert (=> b!6373364 (= e!3869335 (nullable!6276 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368450)))))))))

(declare-fun b!6373365 () Bool)

(assert (=> b!6373365 (= e!3869333 ((_ map or) call!544353 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368450)))))) (h!71473 s!2326))))))

(assert (= (and d!1998857 res!2621809) b!6373364))

(assert (= (and d!1998857 c!1160799) b!6373365))

(assert (= (and d!1998857 (not c!1160799)) b!6373362))

(assert (= (and b!6373362 c!1160800) b!6373363))

(assert (= (and b!6373362 (not c!1160800)) b!6373361))

(assert (= (or b!6373365 b!6373363) bm!544348))

(declare-fun m!7175660 () Bool)

(assert (=> bm!544348 m!7175660))

(declare-fun m!7175662 () Bool)

(assert (=> b!6373364 m!7175662))

(declare-fun m!7175664 () Bool)

(assert (=> b!6373365 m!7175664))

(assert (=> b!6372395 d!1998857))

(declare-fun d!1998859 () Bool)

(assert (=> d!1998859 (= (Exists!3353 (ite c!1160521 lambda!351246 lambda!351247)) (choose!47364 (ite c!1160521 lambda!351246 lambda!351247)))))

(declare-fun bs!1596078 () Bool)

(assert (= bs!1596078 d!1998859))

(declare-fun m!7175666 () Bool)

(assert (=> bs!1596078 m!7175666))

(assert (=> bm!544153 d!1998859))

(declare-fun d!1998861 () Bool)

(assert (=> d!1998861 (= (nullable!6276 r!7292) (nullableFct!2222 r!7292))))

(declare-fun bs!1596079 () Bool)

(assert (= bs!1596079 d!1998861))

(declare-fun m!7175668 () Bool)

(assert (=> bs!1596079 m!7175668))

(assert (=> b!6372319 d!1998861))

(declare-fun b!6373366 () Bool)

(declare-fun e!3869337 () (InoxSet Context!11334))

(assert (=> b!6373366 (= e!3869337 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544349 () Bool)

(declare-fun call!544354 () (InoxSet Context!11334))

(assert (=> bm!544349 (= call!544354 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368470))))) (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368470)))))) (h!71473 s!2326)))))

(declare-fun d!1998863 () Bool)

(declare-fun c!1160801 () Bool)

(declare-fun e!3869338 () Bool)

(assert (=> d!1998863 (= c!1160801 e!3869338)))

(declare-fun res!2621810 () Bool)

(assert (=> d!1998863 (=> (not res!2621810) (not e!3869338))))

(assert (=> d!1998863 (= res!2621810 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368470))))))))

(declare-fun e!3869336 () (InoxSet Context!11334))

(assert (=> d!1998863 (= (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 lt!2368470))) (h!71473 s!2326)) e!3869336)))

(declare-fun b!6373367 () Bool)

(assert (=> b!6373367 (= e!3869336 e!3869337)))

(declare-fun c!1160802 () Bool)

(assert (=> b!6373367 (= c!1160802 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368470))))))))

(declare-fun b!6373368 () Bool)

(assert (=> b!6373368 (= e!3869337 call!544354)))

(declare-fun b!6373369 () Bool)

(assert (=> b!6373369 (= e!3869338 (nullable!6276 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368470)))))))))

(declare-fun b!6373370 () Bool)

(assert (=> b!6373370 (= e!3869336 ((_ map or) call!544354 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368470)))))) (h!71473 s!2326))))))

(assert (= (and d!1998863 res!2621810) b!6373369))

(assert (= (and d!1998863 c!1160801) b!6373370))

(assert (= (and d!1998863 (not c!1160801)) b!6373367))

(assert (= (and b!6373367 c!1160802) b!6373368))

(assert (= (and b!6373367 (not c!1160802)) b!6373366))

(assert (= (or b!6373370 b!6373368) bm!544349))

(declare-fun m!7175670 () Bool)

(assert (=> bm!544349 m!7175670))

(declare-fun m!7175672 () Bool)

(assert (=> b!6373369 m!7175672))

(declare-fun m!7175674 () Bool)

(assert (=> b!6373370 m!7175674))

(assert (=> b!6372231 d!1998863))

(declare-fun b!6373371 () Bool)

(declare-fun e!3869340 () (InoxSet Context!11334))

(assert (=> b!6373371 (= e!3869340 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544350 () Bool)

(declare-fun call!544355 () (InoxSet Context!11334))

(assert (=> bm!544350 (= call!544355 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368473))))) (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368473)))))) (h!71473 s!2326)))))

(declare-fun d!1998865 () Bool)

(declare-fun c!1160803 () Bool)

(declare-fun e!3869341 () Bool)

(assert (=> d!1998865 (= c!1160803 e!3869341)))

(declare-fun res!2621811 () Bool)

(assert (=> d!1998865 (=> (not res!2621811) (not e!3869341))))

(assert (=> d!1998865 (= res!2621811 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368473))))))))

(declare-fun e!3869339 () (InoxSet Context!11334))

(assert (=> d!1998865 (= (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 lt!2368473))) (h!71473 s!2326)) e!3869339)))

(declare-fun b!6373372 () Bool)

(assert (=> b!6373372 (= e!3869339 e!3869340)))

(declare-fun c!1160804 () Bool)

(assert (=> b!6373372 (= c!1160804 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368473))))))))

(declare-fun b!6373373 () Bool)

(assert (=> b!6373373 (= e!3869340 call!544355)))

(declare-fun b!6373374 () Bool)

(assert (=> b!6373374 (= e!3869341 (nullable!6276 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368473)))))))))

(declare-fun b!6373375 () Bool)

(assert (=> b!6373375 (= e!3869339 ((_ map or) call!544355 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368473)))))) (h!71473 s!2326))))))

(assert (= (and d!1998865 res!2621811) b!6373374))

(assert (= (and d!1998865 c!1160803) b!6373375))

(assert (= (and d!1998865 (not c!1160803)) b!6373372))

(assert (= (and b!6373372 c!1160804) b!6373373))

(assert (= (and b!6373372 (not c!1160804)) b!6373371))

(assert (= (or b!6373375 b!6373373) bm!544350))

(declare-fun m!7175676 () Bool)

(assert (=> bm!544350 m!7175676))

(declare-fun m!7175678 () Bool)

(assert (=> b!6373374 m!7175678))

(declare-fun m!7175680 () Bool)

(assert (=> b!6373375 m!7175680))

(assert (=> b!6372236 d!1998865))

(assert (=> d!1998467 d!1998841))

(assert (=> d!1998465 d!1998469))

(assert (=> d!1998465 d!1998467))

(declare-fun d!1998867 () Bool)

(declare-fun e!3869344 () Bool)

(assert (=> d!1998867 (= (matchZipper!2295 ((_ map or) lt!2368449 lt!2368457) (t!378749 s!2326)) e!3869344)))

(declare-fun res!2621814 () Bool)

(assert (=> d!1998867 (=> res!2621814 e!3869344)))

(assert (=> d!1998867 (= res!2621814 (matchZipper!2295 lt!2368449 (t!378749 s!2326)))))

(assert (=> d!1998867 true))

(declare-fun _$48!2168 () Unit!158463)

(assert (=> d!1998867 (= (choose!47368 lt!2368449 lt!2368457 (t!378749 s!2326)) _$48!2168)))

(declare-fun b!6373378 () Bool)

(assert (=> b!6373378 (= e!3869344 (matchZipper!2295 lt!2368457 (t!378749 s!2326)))))

(assert (= (and d!1998867 (not res!2621814)) b!6373378))

(assert (=> d!1998867 m!7174226))

(assert (=> d!1998867 m!7174224))

(assert (=> b!6373378 m!7174230))

(assert (=> d!1998465 d!1998867))

(declare-fun d!1998869 () Bool)

(assert (=> d!1998869 (= (head!13058 (unfocusZipperList!1704 zl!343)) (h!71472 (unfocusZipperList!1704 zl!343)))))

(assert (=> b!6372098 d!1998869))

(assert (=> b!6372415 d!1998435))

(declare-fun d!1998871 () Bool)

(declare-fun c!1160807 () Bool)

(assert (=> d!1998871 (= c!1160807 ((_ is Nil!65026) lt!2368559))))

(declare-fun e!3869347 () (InoxSet Context!11334))

(assert (=> d!1998871 (= (content!12294 lt!2368559) e!3869347)))

(declare-fun b!6373383 () Bool)

(assert (=> b!6373383 (= e!3869347 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6373384 () Bool)

(assert (=> b!6373384 (= e!3869347 ((_ map or) (store ((as const (Array Context!11334 Bool)) false) (h!71474 lt!2368559) true) (content!12294 (t!378750 lt!2368559))))))

(assert (= (and d!1998871 c!1160807) b!6373383))

(assert (= (and d!1998871 (not c!1160807)) b!6373384))

(declare-fun m!7175682 () Bool)

(assert (=> b!6373384 m!7175682))

(declare-fun m!7175684 () Bool)

(assert (=> b!6373384 m!7175684))

(assert (=> b!6372462 d!1998871))

(assert (=> bs!1595804 d!1998441))

(declare-fun d!1998873 () Bool)

(assert (=> d!1998873 (= (nullable!6276 (regOne!33078 (reg!16612 (regOne!33078 r!7292)))) (nullableFct!2222 (regOne!33078 (reg!16612 (regOne!33078 r!7292)))))))

(declare-fun bs!1596080 () Bool)

(assert (= bs!1596080 d!1998873))

(declare-fun m!7175686 () Bool)

(assert (=> bs!1596080 m!7175686))

(assert (=> b!6372344 d!1998873))

(declare-fun d!1998875 () Bool)

(assert (=> d!1998875 (= (Exists!3353 lambda!351258) (choose!47364 lambda!351258))))

(declare-fun bs!1596081 () Bool)

(assert (= bs!1596081 d!1998875))

(declare-fun m!7175688 () Bool)

(assert (=> bs!1596081 m!7175688))

(assert (=> d!1998455 d!1998875))

(declare-fun d!1998877 () Bool)

(assert (=> d!1998877 (= (Exists!3353 lambda!351259) (choose!47364 lambda!351259))))

(declare-fun bs!1596082 () Bool)

(assert (= bs!1596082 d!1998877))

(declare-fun m!7175690 () Bool)

(assert (=> bs!1596082 m!7175690))

(assert (=> d!1998455 d!1998877))

(declare-fun bs!1596083 () Bool)

(declare-fun d!1998879 () Bool)

(assert (= bs!1596083 (and d!1998879 b!6373299)))

(declare-fun lambda!351315 () Int)

(assert (=> bs!1596083 (not (= lambda!351315 lambda!351305))))

(declare-fun bs!1596084 () Bool)

(assert (= bs!1596084 (and d!1998879 b!6372273)))

(assert (=> bs!1596084 (not (= lambda!351315 lambda!351247))))

(declare-fun bs!1596085 () Bool)

(assert (= bs!1596085 (and d!1998879 d!1998455)))

(assert (=> bs!1596085 (not (= lambda!351315 lambda!351259))))

(declare-fun bs!1596086 () Bool)

(assert (= bs!1596086 (and d!1998879 b!6373275)))

(assert (=> bs!1596086 (not (= lambda!351315 lambda!351303))))

(declare-fun bs!1596087 () Bool)

(assert (= bs!1596087 (and d!1998879 b!6371753)))

(assert (=> bs!1596087 (not (= lambda!351315 lambda!351194))))

(assert (=> bs!1596085 (= lambda!351315 lambda!351258)))

(declare-fun bs!1596088 () Bool)

(assert (= bs!1596088 (and d!1998879 d!1998453)))

(assert (=> bs!1596088 (= lambda!351315 lambda!351253)))

(declare-fun bs!1596089 () Bool)

(assert (= bs!1596089 (and d!1998879 d!1998745)))

(assert (=> bs!1596089 (= lambda!351315 lambda!351295)))

(assert (=> bs!1596087 (= lambda!351315 lambda!351193)))

(declare-fun bs!1596090 () Bool)

(assert (= bs!1596090 (and d!1998879 b!6373304)))

(assert (=> bs!1596090 (not (= lambda!351315 lambda!351304))))

(declare-fun bs!1596091 () Bool)

(assert (= bs!1596091 (and d!1998879 b!6373280)))

(assert (=> bs!1596091 (not (= lambda!351315 lambda!351302))))

(declare-fun bs!1596092 () Bool)

(assert (= bs!1596092 (and d!1998879 b!6372278)))

(assert (=> bs!1596092 (not (= lambda!351315 lambda!351246))))

(assert (=> d!1998879 true))

(assert (=> d!1998879 true))

(assert (=> d!1998879 true))

(declare-fun bs!1596093 () Bool)

(assert (= bs!1596093 d!1998879))

(declare-fun lambda!351316 () Int)

(assert (=> bs!1596093 (not (= lambda!351316 lambda!351315))))

(assert (=> bs!1596083 (= (and (= (regOne!33078 r!7292) (regOne!33078 (regTwo!33079 r!7292))) (= (regTwo!33078 r!7292) (regTwo!33078 (regTwo!33079 r!7292)))) (= lambda!351316 lambda!351305))))

(assert (=> bs!1596084 (= lambda!351316 lambda!351247)))

(assert (=> bs!1596085 (= lambda!351316 lambda!351259)))

(assert (=> bs!1596086 (= (and (= (regOne!33078 r!7292) (regOne!33078 (regOne!33079 r!7292))) (= (regTwo!33078 r!7292) (regTwo!33078 (regOne!33079 r!7292)))) (= lambda!351316 lambda!351303))))

(assert (=> bs!1596087 (= lambda!351316 lambda!351194)))

(assert (=> bs!1596085 (not (= lambda!351316 lambda!351258))))

(assert (=> bs!1596088 (not (= lambda!351316 lambda!351253))))

(assert (=> bs!1596089 (not (= lambda!351316 lambda!351295))))

(assert (=> bs!1596087 (not (= lambda!351316 lambda!351193))))

(assert (=> bs!1596090 (not (= lambda!351316 lambda!351304))))

(assert (=> bs!1596091 (not (= lambda!351316 lambda!351302))))

(assert (=> bs!1596092 (not (= lambda!351316 lambda!351246))))

(assert (=> d!1998879 true))

(assert (=> d!1998879 true))

(assert (=> d!1998879 true))

(assert (=> d!1998879 (= (Exists!3353 lambda!351315) (Exists!3353 lambda!351316))))

(assert (=> d!1998879 true))

(declare-fun _$90!2235 () Unit!158463)

(assert (=> d!1998879 (= (choose!47366 (regOne!33078 r!7292) (regTwo!33078 r!7292) s!2326) _$90!2235)))

(declare-fun m!7175692 () Bool)

(assert (=> bs!1596093 m!7175692))

(declare-fun m!7175694 () Bool)

(assert (=> bs!1596093 m!7175694))

(assert (=> d!1998455 d!1998879))

(assert (=> d!1998455 d!1998743))

(declare-fun b!6373393 () Bool)

(declare-fun e!3869353 () Bool)

(assert (=> b!6373393 (= e!3869353 (nullable!6276 (regOne!33078 (h!71472 (exprs!6167 lt!2368470)))))))

(declare-fun bm!544351 () Bool)

(declare-fun call!544356 () (InoxSet Context!11334))

(declare-fun call!544357 () (InoxSet Context!11334))

(assert (=> bm!544351 (= call!544356 call!544357)))

(declare-fun c!1160809 () Bool)

(declare-fun c!1160808 () Bool)

(declare-fun bm!544353 () Bool)

(declare-fun c!1160812 () Bool)

(declare-fun call!544359 () (InoxSet Context!11334))

(declare-fun call!544361 () List!65148)

(assert (=> bm!544353 (= call!544359 (derivationStepZipperDown!1531 (ite c!1160808 (regOne!33079 (h!71472 (exprs!6167 lt!2368470))) (ite c!1160809 (regTwo!33078 (h!71472 (exprs!6167 lt!2368470))) (ite c!1160812 (regOne!33078 (h!71472 (exprs!6167 lt!2368470))) (reg!16612 (h!71472 (exprs!6167 lt!2368470)))))) (ite (or c!1160808 c!1160809) (Context!11335 (t!378748 (exprs!6167 lt!2368470))) (Context!11335 call!544361)) (h!71473 s!2326)))))

(declare-fun b!6373394 () Bool)

(declare-fun e!3869356 () (InoxSet Context!11334))

(declare-fun call!544358 () (InoxSet Context!11334))

(assert (=> b!6373394 (= e!3869356 ((_ map or) call!544359 call!544358))))

(declare-fun b!6373395 () Bool)

(declare-fun e!3869355 () (InoxSet Context!11334))

(declare-fun e!3869357 () (InoxSet Context!11334))

(assert (=> b!6373395 (= e!3869355 e!3869357)))

(assert (=> b!6373395 (= c!1160812 ((_ is Concat!25128) (h!71472 (exprs!6167 lt!2368470))))))

(declare-fun b!6373396 () Bool)

(declare-fun e!3869352 () (InoxSet Context!11334))

(assert (=> b!6373396 (= e!3869352 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6373397 () Bool)

(assert (=> b!6373397 (= c!1160809 e!3869353)))

(declare-fun res!2621823 () Bool)

(assert (=> b!6373397 (=> (not res!2621823) (not e!3869353))))

(assert (=> b!6373397 (= res!2621823 ((_ is Concat!25128) (h!71472 (exprs!6167 lt!2368470))))))

(assert (=> b!6373397 (= e!3869356 e!3869355)))

(declare-fun b!6373398 () Bool)

(assert (=> b!6373398 (= e!3869355 ((_ map or) call!544358 call!544357))))

(declare-fun call!544360 () List!65148)

(declare-fun bm!544354 () Bool)

(assert (=> bm!544354 (= call!544360 ($colon$colon!2144 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368470)))) (ite (or c!1160809 c!1160812) (regTwo!33078 (h!71472 (exprs!6167 lt!2368470))) (h!71472 (exprs!6167 lt!2368470)))))))

(declare-fun bm!544352 () Bool)

(assert (=> bm!544352 (= call!544357 call!544359)))

(declare-fun d!1998881 () Bool)

(declare-fun c!1160810 () Bool)

(assert (=> d!1998881 (= c!1160810 (and ((_ is ElementMatch!16283) (h!71472 (exprs!6167 lt!2368470))) (= (c!1160374 (h!71472 (exprs!6167 lt!2368470))) (h!71473 s!2326))))))

(declare-fun e!3869354 () (InoxSet Context!11334))

(assert (=> d!1998881 (= (derivationStepZipperDown!1531 (h!71472 (exprs!6167 lt!2368470)) (Context!11335 (t!378748 (exprs!6167 lt!2368470))) (h!71473 s!2326)) e!3869354)))

(declare-fun bm!544355 () Bool)

(assert (=> bm!544355 (= call!544358 (derivationStepZipperDown!1531 (ite c!1160808 (regTwo!33079 (h!71472 (exprs!6167 lt!2368470))) (regOne!33078 (h!71472 (exprs!6167 lt!2368470)))) (ite c!1160808 (Context!11335 (t!378748 (exprs!6167 lt!2368470))) (Context!11335 call!544360)) (h!71473 s!2326)))))

(declare-fun b!6373399 () Bool)

(assert (=> b!6373399 (= e!3869354 e!3869356)))

(assert (=> b!6373399 (= c!1160808 ((_ is Union!16283) (h!71472 (exprs!6167 lt!2368470))))))

(declare-fun b!6373400 () Bool)

(declare-fun c!1160811 () Bool)

(assert (=> b!6373400 (= c!1160811 ((_ is Star!16283) (h!71472 (exprs!6167 lt!2368470))))))

(assert (=> b!6373400 (= e!3869357 e!3869352)))

(declare-fun b!6373401 () Bool)

(assert (=> b!6373401 (= e!3869352 call!544356)))

(declare-fun b!6373402 () Bool)

(assert (=> b!6373402 (= e!3869357 call!544356)))

(declare-fun bm!544356 () Bool)

(assert (=> bm!544356 (= call!544361 call!544360)))

(declare-fun b!6373403 () Bool)

(assert (=> b!6373403 (= e!3869354 (store ((as const (Array Context!11334 Bool)) false) (Context!11335 (t!378748 (exprs!6167 lt!2368470))) true))))

(assert (= (and d!1998881 c!1160810) b!6373403))

(assert (= (and d!1998881 (not c!1160810)) b!6373399))

(assert (= (and b!6373399 c!1160808) b!6373394))

(assert (= (and b!6373399 (not c!1160808)) b!6373397))

(assert (= (and b!6373397 res!2621823) b!6373393))

(assert (= (and b!6373397 c!1160809) b!6373398))

(assert (= (and b!6373397 (not c!1160809)) b!6373395))

(assert (= (and b!6373395 c!1160812) b!6373402))

(assert (= (and b!6373395 (not c!1160812)) b!6373400))

(assert (= (and b!6373400 c!1160811) b!6373401))

(assert (= (and b!6373400 (not c!1160811)) b!6373396))

(assert (= (or b!6373402 b!6373401) bm!544356))

(assert (= (or b!6373402 b!6373401) bm!544351))

(assert (= (or b!6373398 bm!544356) bm!544354))

(assert (= (or b!6373398 bm!544351) bm!544352))

(assert (= (or b!6373394 b!6373398) bm!544355))

(assert (= (or b!6373394 bm!544352) bm!544353))

(declare-fun m!7175696 () Bool)

(assert (=> b!6373403 m!7175696))

(declare-fun m!7175698 () Bool)

(assert (=> b!6373393 m!7175698))

(declare-fun m!7175700 () Bool)

(assert (=> bm!544353 m!7175700))

(declare-fun m!7175702 () Bool)

(assert (=> bm!544355 m!7175702))

(declare-fun m!7175704 () Bool)

(assert (=> bm!544354 m!7175704))

(assert (=> bm!544146 d!1998881))

(declare-fun b!6373404 () Bool)

(declare-fun e!3869359 () Bool)

(assert (=> b!6373404 (= e!3869359 (nullable!6276 (regOne!33078 (h!71472 (exprs!6167 lt!2368473)))))))

(declare-fun bm!544357 () Bool)

(declare-fun call!544362 () (InoxSet Context!11334))

(declare-fun call!544363 () (InoxSet Context!11334))

(assert (=> bm!544357 (= call!544362 call!544363)))

(declare-fun bm!544359 () Bool)

(declare-fun c!1160813 () Bool)

(declare-fun c!1160817 () Bool)

(declare-fun call!544365 () (InoxSet Context!11334))

(declare-fun c!1160814 () Bool)

(declare-fun call!544367 () List!65148)

(assert (=> bm!544359 (= call!544365 (derivationStepZipperDown!1531 (ite c!1160813 (regOne!33079 (h!71472 (exprs!6167 lt!2368473))) (ite c!1160814 (regTwo!33078 (h!71472 (exprs!6167 lt!2368473))) (ite c!1160817 (regOne!33078 (h!71472 (exprs!6167 lt!2368473))) (reg!16612 (h!71472 (exprs!6167 lt!2368473)))))) (ite (or c!1160813 c!1160814) (Context!11335 (t!378748 (exprs!6167 lt!2368473))) (Context!11335 call!544367)) (h!71473 s!2326)))))

(declare-fun b!6373405 () Bool)

(declare-fun e!3869362 () (InoxSet Context!11334))

(declare-fun call!544364 () (InoxSet Context!11334))

(assert (=> b!6373405 (= e!3869362 ((_ map or) call!544365 call!544364))))

(declare-fun b!6373406 () Bool)

(declare-fun e!3869361 () (InoxSet Context!11334))

(declare-fun e!3869363 () (InoxSet Context!11334))

(assert (=> b!6373406 (= e!3869361 e!3869363)))

(assert (=> b!6373406 (= c!1160817 ((_ is Concat!25128) (h!71472 (exprs!6167 lt!2368473))))))

(declare-fun b!6373407 () Bool)

(declare-fun e!3869358 () (InoxSet Context!11334))

(assert (=> b!6373407 (= e!3869358 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6373408 () Bool)

(assert (=> b!6373408 (= c!1160814 e!3869359)))

(declare-fun res!2621824 () Bool)

(assert (=> b!6373408 (=> (not res!2621824) (not e!3869359))))

(assert (=> b!6373408 (= res!2621824 ((_ is Concat!25128) (h!71472 (exprs!6167 lt!2368473))))))

(assert (=> b!6373408 (= e!3869362 e!3869361)))

(declare-fun b!6373409 () Bool)

(assert (=> b!6373409 (= e!3869361 ((_ map or) call!544364 call!544363))))

(declare-fun call!544366 () List!65148)

(declare-fun bm!544360 () Bool)

(assert (=> bm!544360 (= call!544366 ($colon$colon!2144 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368473)))) (ite (or c!1160814 c!1160817) (regTwo!33078 (h!71472 (exprs!6167 lt!2368473))) (h!71472 (exprs!6167 lt!2368473)))))))

(declare-fun bm!544358 () Bool)

(assert (=> bm!544358 (= call!544363 call!544365)))

(declare-fun d!1998883 () Bool)

(declare-fun c!1160815 () Bool)

(assert (=> d!1998883 (= c!1160815 (and ((_ is ElementMatch!16283) (h!71472 (exprs!6167 lt!2368473))) (= (c!1160374 (h!71472 (exprs!6167 lt!2368473))) (h!71473 s!2326))))))

(declare-fun e!3869360 () (InoxSet Context!11334))

(assert (=> d!1998883 (= (derivationStepZipperDown!1531 (h!71472 (exprs!6167 lt!2368473)) (Context!11335 (t!378748 (exprs!6167 lt!2368473))) (h!71473 s!2326)) e!3869360)))

(declare-fun bm!544361 () Bool)

(assert (=> bm!544361 (= call!544364 (derivationStepZipperDown!1531 (ite c!1160813 (regTwo!33079 (h!71472 (exprs!6167 lt!2368473))) (regOne!33078 (h!71472 (exprs!6167 lt!2368473)))) (ite c!1160813 (Context!11335 (t!378748 (exprs!6167 lt!2368473))) (Context!11335 call!544366)) (h!71473 s!2326)))))

(declare-fun b!6373410 () Bool)

(assert (=> b!6373410 (= e!3869360 e!3869362)))

(assert (=> b!6373410 (= c!1160813 ((_ is Union!16283) (h!71472 (exprs!6167 lt!2368473))))))

(declare-fun b!6373411 () Bool)

(declare-fun c!1160816 () Bool)

(assert (=> b!6373411 (= c!1160816 ((_ is Star!16283) (h!71472 (exprs!6167 lt!2368473))))))

(assert (=> b!6373411 (= e!3869363 e!3869358)))

(declare-fun b!6373412 () Bool)

(assert (=> b!6373412 (= e!3869358 call!544362)))

(declare-fun b!6373413 () Bool)

(assert (=> b!6373413 (= e!3869363 call!544362)))

(declare-fun bm!544362 () Bool)

(assert (=> bm!544362 (= call!544367 call!544366)))

(declare-fun b!6373414 () Bool)

(assert (=> b!6373414 (= e!3869360 (store ((as const (Array Context!11334 Bool)) false) (Context!11335 (t!378748 (exprs!6167 lt!2368473))) true))))

(assert (= (and d!1998883 c!1160815) b!6373414))

(assert (= (and d!1998883 (not c!1160815)) b!6373410))

(assert (= (and b!6373410 c!1160813) b!6373405))

(assert (= (and b!6373410 (not c!1160813)) b!6373408))

(assert (= (and b!6373408 res!2621824) b!6373404))

(assert (= (and b!6373408 c!1160814) b!6373409))

(assert (= (and b!6373408 (not c!1160814)) b!6373406))

(assert (= (and b!6373406 c!1160817) b!6373413))

(assert (= (and b!6373406 (not c!1160817)) b!6373411))

(assert (= (and b!6373411 c!1160816) b!6373412))

(assert (= (and b!6373411 (not c!1160816)) b!6373407))

(assert (= (or b!6373413 b!6373412) bm!544362))

(assert (= (or b!6373413 b!6373412) bm!544357))

(assert (= (or b!6373409 bm!544362) bm!544360))

(assert (= (or b!6373409 bm!544357) bm!544358))

(assert (= (or b!6373405 b!6373409) bm!544361))

(assert (= (or b!6373405 bm!544358) bm!544359))

(declare-fun m!7175706 () Bool)

(assert (=> b!6373414 m!7175706))

(declare-fun m!7175708 () Bool)

(assert (=> b!6373404 m!7175708))

(declare-fun m!7175710 () Bool)

(assert (=> bm!544359 m!7175710))

(declare-fun m!7175712 () Bool)

(assert (=> bm!544361 m!7175712))

(declare-fun m!7175714 () Bool)

(assert (=> bm!544360 m!7175714))

(assert (=> bm!544147 d!1998883))

(assert (=> b!6372465 d!1998423))

(assert (=> b!6372154 d!1998421))

(declare-fun bs!1596094 () Bool)

(declare-fun d!1998885 () Bool)

(assert (= bs!1596094 (and d!1998885 d!1998399)))

(declare-fun lambda!351317 () Int)

(assert (=> bs!1596094 (= lambda!351317 lambda!351240)))

(declare-fun bs!1596095 () Bool)

(assert (= bs!1596095 (and d!1998885 d!1998407)))

(assert (=> bs!1596095 (= lambda!351317 lambda!351241)))

(declare-fun bs!1596096 () Bool)

(assert (= bs!1596096 (and d!1998885 d!1998393)))

(assert (=> bs!1596096 (= lambda!351317 lambda!351239)))

(declare-fun bs!1596097 () Bool)

(assert (= bs!1596097 (and d!1998885 d!1998839)))

(assert (=> bs!1596097 (= lambda!351317 lambda!351308)))

(declare-fun bs!1596098 () Bool)

(assert (= bs!1596098 (and d!1998885 d!1998843)))

(assert (=> bs!1596098 (= lambda!351317 lambda!351309)))

(declare-fun bs!1596099 () Bool)

(assert (= bs!1596099 (and d!1998885 d!1998837)))

(assert (=> bs!1596099 (= lambda!351317 lambda!351307)))

(declare-fun bs!1596100 () Bool)

(assert (= bs!1596100 (and d!1998885 d!1998389)))

(assert (=> bs!1596100 (= lambda!351317 lambda!351236)))

(declare-fun bs!1596101 () Bool)

(assert (= bs!1596101 (and d!1998885 d!1998421)))

(assert (=> bs!1596101 (= lambda!351317 lambda!351250)))

(declare-fun bs!1596102 () Bool)

(assert (= bs!1596102 (and d!1998885 d!1998343)))

(assert (=> bs!1596102 (= lambda!351317 lambda!351220)))

(declare-fun bs!1596103 () Bool)

(assert (= bs!1596103 (and d!1998885 d!1998779)))

(assert (=> bs!1596103 (= lambda!351317 lambda!351300)))

(declare-fun lt!2368603 () List!65148)

(assert (=> d!1998885 (forall!15461 lt!2368603 lambda!351317)))

(declare-fun e!3869364 () List!65148)

(assert (=> d!1998885 (= lt!2368603 e!3869364)))

(declare-fun c!1160818 () Bool)

(assert (=> d!1998885 (= c!1160818 ((_ is Cons!65026) (t!378750 zl!343)))))

(assert (=> d!1998885 (= (unfocusZipperList!1704 (t!378750 zl!343)) lt!2368603)))

(declare-fun b!6373415 () Bool)

(assert (=> b!6373415 (= e!3869364 (Cons!65024 (generalisedConcat!1880 (exprs!6167 (h!71474 (t!378750 zl!343)))) (unfocusZipperList!1704 (t!378750 (t!378750 zl!343)))))))

(declare-fun b!6373416 () Bool)

(assert (=> b!6373416 (= e!3869364 Nil!65024)))

(assert (= (and d!1998885 c!1160818) b!6373415))

(assert (= (and d!1998885 (not c!1160818)) b!6373416))

(declare-fun m!7175716 () Bool)

(assert (=> d!1998885 m!7175716))

(declare-fun m!7175718 () Bool)

(assert (=> b!6373415 m!7175718))

(declare-fun m!7175720 () Bool)

(assert (=> b!6373415 m!7175720))

(assert (=> b!6372154 d!1998885))

(declare-fun d!1998887 () Bool)

(assert (=> d!1998887 (= (nullable!6276 (h!71472 (exprs!6167 lt!2368458))) (nullableFct!2222 (h!71472 (exprs!6167 lt!2368458))))))

(declare-fun bs!1596104 () Bool)

(assert (= bs!1596104 d!1998887))

(declare-fun m!7175722 () Bool)

(assert (=> bs!1596104 m!7175722))

(assert (=> b!6371981 d!1998887))

(declare-fun d!1998889 () Bool)

(assert (=> d!1998889 (= (isEmpty!37141 (exprs!6167 (h!71474 zl!343))) ((_ is Nil!65024) (exprs!6167 (h!71474 zl!343))))))

(assert (=> b!6372380 d!1998889))

(declare-fun d!1998891 () Bool)

(assert (=> d!1998891 (= (isDefined!12877 lt!2368549) (not (isEmpty!37146 lt!2368549)))))

(declare-fun bs!1596105 () Bool)

(assert (= bs!1596105 d!1998891))

(declare-fun m!7175724 () Bool)

(assert (=> bs!1596105 m!7175724))

(assert (=> d!1998447 d!1998891))

(declare-fun b!6373418 () Bool)

(declare-fun res!2621830 () Bool)

(declare-fun e!3869366 () Bool)

(assert (=> b!6373418 (=> (not res!2621830) (not e!3869366))))

(assert (=> b!6373418 (= res!2621830 (isEmpty!37145 (tail!12144 Nil!65025)))))

(declare-fun b!6373419 () Bool)

(declare-fun e!3869365 () Bool)

(declare-fun e!3869368 () Bool)

(assert (=> b!6373419 (= e!3869365 e!3869368)))

(declare-fun res!2621828 () Bool)

(assert (=> b!6373419 (=> (not res!2621828) (not e!3869368))))

(declare-fun lt!2368604 () Bool)

(assert (=> b!6373419 (= res!2621828 (not lt!2368604))))

(declare-fun b!6373420 () Bool)

(declare-fun res!2621832 () Bool)

(assert (=> b!6373420 (=> res!2621832 e!3869365)))

(assert (=> b!6373420 (= res!2621832 (not ((_ is ElementMatch!16283) (regOne!33078 r!7292))))))

(declare-fun e!3869371 () Bool)

(assert (=> b!6373420 (= e!3869371 e!3869365)))

(declare-fun b!6373421 () Bool)

(declare-fun e!3869370 () Bool)

(assert (=> b!6373421 (= e!3869370 (matchR!8466 (derivativeStep!4988 (regOne!33078 r!7292) (head!13059 Nil!65025)) (tail!12144 Nil!65025)))))

(declare-fun b!6373422 () Bool)

(assert (=> b!6373422 (= e!3869366 (= (head!13059 Nil!65025) (c!1160374 (regOne!33078 r!7292))))))

(declare-fun bm!544363 () Bool)

(declare-fun call!544368 () Bool)

(assert (=> bm!544363 (= call!544368 (isEmpty!37145 Nil!65025))))

(declare-fun b!6373423 () Bool)

(declare-fun res!2621825 () Bool)

(declare-fun e!3869369 () Bool)

(assert (=> b!6373423 (=> res!2621825 e!3869369)))

(assert (=> b!6373423 (= res!2621825 (not (isEmpty!37145 (tail!12144 Nil!65025))))))

(declare-fun b!6373424 () Bool)

(declare-fun e!3869367 () Bool)

(assert (=> b!6373424 (= e!3869367 e!3869371)))

(declare-fun c!1160819 () Bool)

(assert (=> b!6373424 (= c!1160819 ((_ is EmptyLang!16283) (regOne!33078 r!7292)))))

(declare-fun b!6373425 () Bool)

(declare-fun res!2621829 () Bool)

(assert (=> b!6373425 (=> res!2621829 e!3869365)))

(assert (=> b!6373425 (= res!2621829 e!3869366)))

(declare-fun res!2621826 () Bool)

(assert (=> b!6373425 (=> (not res!2621826) (not e!3869366))))

(assert (=> b!6373425 (= res!2621826 lt!2368604)))

(declare-fun b!6373426 () Bool)

(declare-fun res!2621831 () Bool)

(assert (=> b!6373426 (=> (not res!2621831) (not e!3869366))))

(assert (=> b!6373426 (= res!2621831 (not call!544368))))

(declare-fun d!1998893 () Bool)

(assert (=> d!1998893 e!3869367))

(declare-fun c!1160821 () Bool)

(assert (=> d!1998893 (= c!1160821 ((_ is EmptyExpr!16283) (regOne!33078 r!7292)))))

(assert (=> d!1998893 (= lt!2368604 e!3869370)))

(declare-fun c!1160820 () Bool)

(assert (=> d!1998893 (= c!1160820 (isEmpty!37145 Nil!65025))))

(assert (=> d!1998893 (validRegex!8019 (regOne!33078 r!7292))))

(assert (=> d!1998893 (= (matchR!8466 (regOne!33078 r!7292) Nil!65025) lt!2368604)))

(declare-fun b!6373417 () Bool)

(assert (=> b!6373417 (= e!3869367 (= lt!2368604 call!544368))))

(declare-fun b!6373427 () Bool)

(assert (=> b!6373427 (= e!3869371 (not lt!2368604))))

(declare-fun b!6373428 () Bool)

(assert (=> b!6373428 (= e!3869370 (nullable!6276 (regOne!33078 r!7292)))))

(declare-fun b!6373429 () Bool)

(assert (=> b!6373429 (= e!3869369 (not (= (head!13059 Nil!65025) (c!1160374 (regOne!33078 r!7292)))))))

(declare-fun b!6373430 () Bool)

(assert (=> b!6373430 (= e!3869368 e!3869369)))

(declare-fun res!2621827 () Bool)

(assert (=> b!6373430 (=> res!2621827 e!3869369)))

(assert (=> b!6373430 (= res!2621827 call!544368)))

(assert (= (and d!1998893 c!1160820) b!6373428))

(assert (= (and d!1998893 (not c!1160820)) b!6373421))

(assert (= (and d!1998893 c!1160821) b!6373417))

(assert (= (and d!1998893 (not c!1160821)) b!6373424))

(assert (= (and b!6373424 c!1160819) b!6373427))

(assert (= (and b!6373424 (not c!1160819)) b!6373420))

(assert (= (and b!6373420 (not res!2621832)) b!6373425))

(assert (= (and b!6373425 res!2621826) b!6373426))

(assert (= (and b!6373426 res!2621831) b!6373418))

(assert (= (and b!6373418 res!2621830) b!6373422))

(assert (= (and b!6373425 (not res!2621829)) b!6373419))

(assert (= (and b!6373419 res!2621828) b!6373430))

(assert (= (and b!6373430 (not res!2621827)) b!6373423))

(assert (= (and b!6373423 (not res!2621825)) b!6373429))

(assert (= (or b!6373417 b!6373426 b!6373430) bm!544363))

(declare-fun m!7175726 () Bool)

(assert (=> d!1998893 m!7175726))

(assert (=> d!1998893 m!7174742))

(declare-fun m!7175728 () Bool)

(assert (=> b!6373422 m!7175728))

(declare-fun m!7175730 () Bool)

(assert (=> b!6373423 m!7175730))

(assert (=> b!6373423 m!7175730))

(declare-fun m!7175732 () Bool)

(assert (=> b!6373423 m!7175732))

(assert (=> b!6373428 m!7175486))

(assert (=> b!6373421 m!7175728))

(assert (=> b!6373421 m!7175728))

(declare-fun m!7175734 () Bool)

(assert (=> b!6373421 m!7175734))

(assert (=> b!6373421 m!7175730))

(assert (=> b!6373421 m!7175734))

(assert (=> b!6373421 m!7175730))

(declare-fun m!7175736 () Bool)

(assert (=> b!6373421 m!7175736))

(assert (=> b!6373418 m!7175730))

(assert (=> b!6373418 m!7175730))

(assert (=> b!6373418 m!7175732))

(assert (=> b!6373429 m!7175728))

(assert (=> bm!544363 m!7175726))

(assert (=> d!1998447 d!1998893))

(assert (=> d!1998447 d!1998743))

(declare-fun bs!1596106 () Bool)

(declare-fun d!1998895 () Bool)

(assert (= bs!1596106 (and d!1998895 d!1998755)))

(declare-fun lambda!351318 () Int)

(assert (=> bs!1596106 (= lambda!351318 lambda!351298)))

(declare-fun bs!1596107 () Bool)

(assert (= bs!1596107 (and d!1998895 d!1998777)))

(assert (=> bs!1596107 (= lambda!351318 lambda!351299)))

(declare-fun bs!1596108 () Bool)

(assert (= bs!1596108 (and d!1998895 d!1998833)))

(assert (=> bs!1596108 (= lambda!351318 lambda!351306)))

(assert (=> d!1998895 (= (nullableZipper!2049 lt!2368451) (exists!2581 lt!2368451 lambda!351318))))

(declare-fun bs!1596109 () Bool)

(assert (= bs!1596109 d!1998895))

(declare-fun m!7175738 () Bool)

(assert (=> bs!1596109 m!7175738))

(assert (=> b!6372458 d!1998895))

(declare-fun b!6373431 () Bool)

(declare-fun e!3869373 () (InoxSet Context!11334))

(assert (=> b!6373431 (= e!3869373 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544364 () Bool)

(declare-fun call!544369 () (InoxSet Context!11334))

(assert (=> bm!544364 (= call!544369 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))))) (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))))))) (h!71473 s!2326)))))

(declare-fun d!1998897 () Bool)

(declare-fun c!1160822 () Bool)

(declare-fun e!3869374 () Bool)

(assert (=> d!1998897 (= c!1160822 e!3869374)))

(declare-fun res!2621833 () Bool)

(assert (=> d!1998897 (=> (not res!2621833) (not e!3869374))))

(assert (=> d!1998897 (= res!2621833 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))))))))

(declare-fun e!3869372 () (InoxSet Context!11334))

(assert (=> d!1998897 (= (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (h!71473 s!2326)) e!3869372)))

(declare-fun b!6373432 () Bool)

(assert (=> b!6373432 (= e!3869372 e!3869373)))

(declare-fun c!1160823 () Bool)

(assert (=> b!6373432 (= c!1160823 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))))))))

(declare-fun b!6373433 () Bool)

(assert (=> b!6373433 (= e!3869373 call!544369)))

(declare-fun b!6373434 () Bool)

(assert (=> b!6373434 (= e!3869374 (nullable!6276 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))))))))))

(declare-fun b!6373435 () Bool)

(assert (=> b!6373435 (= e!3869372 ((_ map or) call!544369 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))))))) (h!71473 s!2326))))))

(assert (= (and d!1998897 res!2621833) b!6373434))

(assert (= (and d!1998897 c!1160822) b!6373435))

(assert (= (and d!1998897 (not c!1160822)) b!6373432))

(assert (= (and b!6373432 c!1160823) b!6373433))

(assert (= (and b!6373432 (not c!1160823)) b!6373431))

(assert (= (or b!6373435 b!6373433) bm!544364))

(declare-fun m!7175740 () Bool)

(assert (=> bm!544364 m!7175740))

(declare-fun m!7175742 () Bool)

(assert (=> b!6373434 m!7175742))

(declare-fun m!7175744 () Bool)

(assert (=> b!6373435 m!7175744))

(assert (=> b!6372400 d!1998897))

(declare-fun b!6373437 () Bool)

(declare-fun res!2621839 () Bool)

(declare-fun e!3869376 () Bool)

(assert (=> b!6373437 (=> (not res!2621839) (not e!3869376))))

(assert (=> b!6373437 (= res!2621839 (isEmpty!37145 (tail!12144 (tail!12144 s!2326))))))

(declare-fun b!6373438 () Bool)

(declare-fun e!3869375 () Bool)

(declare-fun e!3869378 () Bool)

(assert (=> b!6373438 (= e!3869375 e!3869378)))

(declare-fun res!2621837 () Bool)

(assert (=> b!6373438 (=> (not res!2621837) (not e!3869378))))

(declare-fun lt!2368605 () Bool)

(assert (=> b!6373438 (= res!2621837 (not lt!2368605))))

(declare-fun b!6373439 () Bool)

(declare-fun res!2621841 () Bool)

(assert (=> b!6373439 (=> res!2621841 e!3869375)))

(assert (=> b!6373439 (= res!2621841 (not ((_ is ElementMatch!16283) (derivativeStep!4988 r!7292 (head!13059 s!2326)))))))

(declare-fun e!3869381 () Bool)

(assert (=> b!6373439 (= e!3869381 e!3869375)))

(declare-fun b!6373440 () Bool)

(declare-fun e!3869380 () Bool)

(assert (=> b!6373440 (= e!3869380 (matchR!8466 (derivativeStep!4988 (derivativeStep!4988 r!7292 (head!13059 s!2326)) (head!13059 (tail!12144 s!2326))) (tail!12144 (tail!12144 s!2326))))))

(declare-fun b!6373441 () Bool)

(assert (=> b!6373441 (= e!3869376 (= (head!13059 (tail!12144 s!2326)) (c!1160374 (derivativeStep!4988 r!7292 (head!13059 s!2326)))))))

(declare-fun bm!544365 () Bool)

(declare-fun call!544370 () Bool)

(assert (=> bm!544365 (= call!544370 (isEmpty!37145 (tail!12144 s!2326)))))

(declare-fun b!6373442 () Bool)

(declare-fun res!2621834 () Bool)

(declare-fun e!3869379 () Bool)

(assert (=> b!6373442 (=> res!2621834 e!3869379)))

(assert (=> b!6373442 (= res!2621834 (not (isEmpty!37145 (tail!12144 (tail!12144 s!2326)))))))

(declare-fun b!6373443 () Bool)

(declare-fun e!3869377 () Bool)

(assert (=> b!6373443 (= e!3869377 e!3869381)))

(declare-fun c!1160824 () Bool)

(assert (=> b!6373443 (= c!1160824 ((_ is EmptyLang!16283) (derivativeStep!4988 r!7292 (head!13059 s!2326))))))

(declare-fun b!6373444 () Bool)

(declare-fun res!2621838 () Bool)

(assert (=> b!6373444 (=> res!2621838 e!3869375)))

(assert (=> b!6373444 (= res!2621838 e!3869376)))

(declare-fun res!2621835 () Bool)

(assert (=> b!6373444 (=> (not res!2621835) (not e!3869376))))

(assert (=> b!6373444 (= res!2621835 lt!2368605)))

(declare-fun b!6373445 () Bool)

(declare-fun res!2621840 () Bool)

(assert (=> b!6373445 (=> (not res!2621840) (not e!3869376))))

(assert (=> b!6373445 (= res!2621840 (not call!544370))))

(declare-fun d!1998899 () Bool)

(assert (=> d!1998899 e!3869377))

(declare-fun c!1160826 () Bool)

(assert (=> d!1998899 (= c!1160826 ((_ is EmptyExpr!16283) (derivativeStep!4988 r!7292 (head!13059 s!2326))))))

(assert (=> d!1998899 (= lt!2368605 e!3869380)))

(declare-fun c!1160825 () Bool)

(assert (=> d!1998899 (= c!1160825 (isEmpty!37145 (tail!12144 s!2326)))))

(assert (=> d!1998899 (validRegex!8019 (derivativeStep!4988 r!7292 (head!13059 s!2326)))))

(assert (=> d!1998899 (= (matchR!8466 (derivativeStep!4988 r!7292 (head!13059 s!2326)) (tail!12144 s!2326)) lt!2368605)))

(declare-fun b!6373436 () Bool)

(assert (=> b!6373436 (= e!3869377 (= lt!2368605 call!544370))))

(declare-fun b!6373446 () Bool)

(assert (=> b!6373446 (= e!3869381 (not lt!2368605))))

(declare-fun b!6373447 () Bool)

(assert (=> b!6373447 (= e!3869380 (nullable!6276 (derivativeStep!4988 r!7292 (head!13059 s!2326))))))

(declare-fun b!6373448 () Bool)

(assert (=> b!6373448 (= e!3869379 (not (= (head!13059 (tail!12144 s!2326)) (c!1160374 (derivativeStep!4988 r!7292 (head!13059 s!2326))))))))

(declare-fun b!6373449 () Bool)

(assert (=> b!6373449 (= e!3869378 e!3869379)))

(declare-fun res!2621836 () Bool)

(assert (=> b!6373449 (=> res!2621836 e!3869379)))

(assert (=> b!6373449 (= res!2621836 call!544370)))

(assert (= (and d!1998899 c!1160825) b!6373447))

(assert (= (and d!1998899 (not c!1160825)) b!6373440))

(assert (= (and d!1998899 c!1160826) b!6373436))

(assert (= (and d!1998899 (not c!1160826)) b!6373443))

(assert (= (and b!6373443 c!1160824) b!6373446))

(assert (= (and b!6373443 (not c!1160824)) b!6373439))

(assert (= (and b!6373439 (not res!2621841)) b!6373444))

(assert (= (and b!6373444 res!2621835) b!6373445))

(assert (= (and b!6373445 res!2621840) b!6373437))

(assert (= (and b!6373437 res!2621839) b!6373441))

(assert (= (and b!6373444 (not res!2621838)) b!6373438))

(assert (= (and b!6373438 res!2621837) b!6373449))

(assert (= (and b!6373449 (not res!2621836)) b!6373442))

(assert (= (and b!6373442 (not res!2621834)) b!6373448))

(assert (= (or b!6373436 b!6373445 b!6373449) bm!544365))

(assert (=> d!1998899 m!7174632))

(assert (=> d!1998899 m!7174634))

(assert (=> d!1998899 m!7174638))

(declare-fun m!7175746 () Bool)

(assert (=> d!1998899 m!7175746))

(assert (=> b!6373441 m!7174632))

(assert (=> b!6373441 m!7175410))

(assert (=> b!6373442 m!7174632))

(assert (=> b!6373442 m!7175414))

(assert (=> b!6373442 m!7175414))

(declare-fun m!7175748 () Bool)

(assert (=> b!6373442 m!7175748))

(assert (=> b!6373447 m!7174638))

(declare-fun m!7175750 () Bool)

(assert (=> b!6373447 m!7175750))

(assert (=> b!6373440 m!7174632))

(assert (=> b!6373440 m!7175410))

(assert (=> b!6373440 m!7174638))

(assert (=> b!6373440 m!7175410))

(declare-fun m!7175752 () Bool)

(assert (=> b!6373440 m!7175752))

(assert (=> b!6373440 m!7174632))

(assert (=> b!6373440 m!7175414))

(assert (=> b!6373440 m!7175752))

(assert (=> b!6373440 m!7175414))

(declare-fun m!7175754 () Bool)

(assert (=> b!6373440 m!7175754))

(assert (=> b!6373437 m!7174632))

(assert (=> b!6373437 m!7175414))

(assert (=> b!6373437 m!7175414))

(assert (=> b!6373437 m!7175748))

(assert (=> b!6373448 m!7174632))

(assert (=> b!6373448 m!7175410))

(assert (=> bm!544365 m!7174632))

(assert (=> bm!544365 m!7174634))

(assert (=> b!6372312 d!1998899))

(declare-fun call!544380 () Regex!16283)

(declare-fun call!544382 () Regex!16283)

(declare-fun e!3869392 () Regex!16283)

(declare-fun b!6373470 () Bool)

(assert (=> b!6373470 (= e!3869392 (Union!16283 (Concat!25128 call!544382 (regTwo!33078 r!7292)) call!544380))))

(declare-fun b!6373471 () Bool)

(declare-fun e!3869395 () Regex!16283)

(declare-fun e!3869394 () Regex!16283)

(assert (=> b!6373471 (= e!3869395 e!3869394)))

(declare-fun c!1160839 () Bool)

(assert (=> b!6373471 (= c!1160839 ((_ is ElementMatch!16283) r!7292))))

(declare-fun b!6373472 () Bool)

(declare-fun e!3869393 () Regex!16283)

(declare-fun e!3869396 () Regex!16283)

(assert (=> b!6373472 (= e!3869393 e!3869396)))

(declare-fun c!1160838 () Bool)

(assert (=> b!6373472 (= c!1160838 ((_ is Star!16283) r!7292))))

(declare-fun d!1998901 () Bool)

(declare-fun lt!2368608 () Regex!16283)

(assert (=> d!1998901 (validRegex!8019 lt!2368608)))

(assert (=> d!1998901 (= lt!2368608 e!3869395)))

(declare-fun c!1160840 () Bool)

(assert (=> d!1998901 (= c!1160840 (or ((_ is EmptyExpr!16283) r!7292) ((_ is EmptyLang!16283) r!7292)))))

(assert (=> d!1998901 (validRegex!8019 r!7292)))

(assert (=> d!1998901 (= (derivativeStep!4988 r!7292 (head!13059 s!2326)) lt!2368608)))

(declare-fun b!6373473 () Bool)

(declare-fun c!1160837 () Bool)

(assert (=> b!6373473 (= c!1160837 (nullable!6276 (regOne!33078 r!7292)))))

(assert (=> b!6373473 (= e!3869396 e!3869392)))

(declare-fun bm!544374 () Bool)

(declare-fun call!544381 () Regex!16283)

(declare-fun c!1160841 () Bool)

(assert (=> bm!544374 (= call!544381 (derivativeStep!4988 (ite c!1160841 (regOne!33079 r!7292) (ite c!1160837 (regTwo!33078 r!7292) (regOne!33078 r!7292))) (head!13059 s!2326)))))

(declare-fun bm!544375 () Bool)

(assert (=> bm!544375 (= call!544380 call!544381)))

(declare-fun bm!544376 () Bool)

(declare-fun call!544379 () Regex!16283)

(assert (=> bm!544376 (= call!544382 call!544379)))

(declare-fun b!6373474 () Bool)

(assert (=> b!6373474 (= c!1160841 ((_ is Union!16283) r!7292))))

(assert (=> b!6373474 (= e!3869394 e!3869393)))

(declare-fun bm!544377 () Bool)

(assert (=> bm!544377 (= call!544379 (derivativeStep!4988 (ite c!1160841 (regTwo!33079 r!7292) (ite c!1160838 (reg!16612 r!7292) (regOne!33078 r!7292))) (head!13059 s!2326)))))

(declare-fun b!6373475 () Bool)

(assert (=> b!6373475 (= e!3869394 (ite (= (head!13059 s!2326) (c!1160374 r!7292)) EmptyExpr!16283 EmptyLang!16283))))

(declare-fun b!6373476 () Bool)

(assert (=> b!6373476 (= e!3869392 (Union!16283 (Concat!25128 call!544380 (regTwo!33078 r!7292)) EmptyLang!16283))))

(declare-fun b!6373477 () Bool)

(assert (=> b!6373477 (= e!3869393 (Union!16283 call!544381 call!544379))))

(declare-fun b!6373478 () Bool)

(assert (=> b!6373478 (= e!3869395 EmptyLang!16283)))

(declare-fun b!6373479 () Bool)

(assert (=> b!6373479 (= e!3869396 (Concat!25128 call!544382 r!7292))))

(assert (= (and d!1998901 c!1160840) b!6373478))

(assert (= (and d!1998901 (not c!1160840)) b!6373471))

(assert (= (and b!6373471 c!1160839) b!6373475))

(assert (= (and b!6373471 (not c!1160839)) b!6373474))

(assert (= (and b!6373474 c!1160841) b!6373477))

(assert (= (and b!6373474 (not c!1160841)) b!6373472))

(assert (= (and b!6373472 c!1160838) b!6373479))

(assert (= (and b!6373472 (not c!1160838)) b!6373473))

(assert (= (and b!6373473 c!1160837) b!6373470))

(assert (= (and b!6373473 (not c!1160837)) b!6373476))

(assert (= (or b!6373470 b!6373476) bm!544375))

(assert (= (or b!6373479 b!6373470) bm!544376))

(assert (= (or b!6373477 bm!544376) bm!544377))

(assert (= (or b!6373477 bm!544375) bm!544374))

(declare-fun m!7175756 () Bool)

(assert (=> d!1998901 m!7175756))

(assert (=> d!1998901 m!7174252))

(assert (=> b!6373473 m!7175486))

(assert (=> bm!544374 m!7174630))

(declare-fun m!7175758 () Bool)

(assert (=> bm!544374 m!7175758))

(assert (=> bm!544377 m!7174630))

(declare-fun m!7175760 () Bool)

(assert (=> bm!544377 m!7175760))

(assert (=> b!6372312 d!1998901))

(assert (=> b!6372312 d!1998737))

(assert (=> b!6372312 d!1998739))

(declare-fun d!1998903 () Bool)

(declare-fun c!1160842 () Bool)

(assert (=> d!1998903 (= c!1160842 (isEmpty!37145 (tail!12144 (t!378749 s!2326))))))

(declare-fun e!3869397 () Bool)

(assert (=> d!1998903 (= (matchZipper!2295 (derivationStepZipper!2249 lt!2368457 (head!13059 (t!378749 s!2326))) (tail!12144 (t!378749 s!2326))) e!3869397)))

(declare-fun b!6373480 () Bool)

(assert (=> b!6373480 (= e!3869397 (nullableZipper!2049 (derivationStepZipper!2249 lt!2368457 (head!13059 (t!378749 s!2326)))))))

(declare-fun b!6373481 () Bool)

(assert (=> b!6373481 (= e!3869397 (matchZipper!2295 (derivationStepZipper!2249 (derivationStepZipper!2249 lt!2368457 (head!13059 (t!378749 s!2326))) (head!13059 (tail!12144 (t!378749 s!2326)))) (tail!12144 (tail!12144 (t!378749 s!2326)))))))

(assert (= (and d!1998903 c!1160842) b!6373480))

(assert (= (and d!1998903 (not c!1160842)) b!6373481))

(assert (=> d!1998903 m!7174680))

(assert (=> d!1998903 m!7175538))

(assert (=> b!6373480 m!7174678))

(declare-fun m!7175762 () Bool)

(assert (=> b!6373480 m!7175762))

(assert (=> b!6373481 m!7174680))

(assert (=> b!6373481 m!7175542))

(assert (=> b!6373481 m!7174678))

(assert (=> b!6373481 m!7175542))

(declare-fun m!7175764 () Bool)

(assert (=> b!6373481 m!7175764))

(assert (=> b!6373481 m!7174680))

(assert (=> b!6373481 m!7175546))

(assert (=> b!6373481 m!7175764))

(assert (=> b!6373481 m!7175546))

(declare-fun m!7175766 () Bool)

(assert (=> b!6373481 m!7175766))

(assert (=> b!6372390 d!1998903))

(declare-fun bs!1596110 () Bool)

(declare-fun d!1998905 () Bool)

(assert (= bs!1596110 (and d!1998905 d!1998853)))

(declare-fun lambda!351319 () Int)

(assert (=> bs!1596110 (= lambda!351319 lambda!351310)))

(declare-fun bs!1596111 () Bool)

(assert (= bs!1596111 (and d!1998905 d!1998809)))

(assert (=> bs!1596111 (= lambda!351319 lambda!351301)))

(declare-fun bs!1596112 () Bool)

(assert (= bs!1596112 (and d!1998905 b!6371763)))

(assert (=> bs!1596112 (= (= (head!13059 (t!378749 s!2326)) (h!71473 s!2326)) (= lambda!351319 lambda!351195))))

(declare-fun bs!1596113 () Bool)

(assert (= bs!1596113 (and d!1998905 d!1998385)))

(assert (=> bs!1596113 (= (= (head!13059 (t!378749 s!2326)) (h!71473 s!2326)) (= lambda!351319 lambda!351227))))

(declare-fun bs!1596114 () Bool)

(assert (= bs!1596114 (and d!1998905 d!1998735)))

(assert (=> bs!1596114 (= (= (head!13059 (t!378749 s!2326)) (head!13059 s!2326)) (= lambda!351319 lambda!351292))))

(assert (=> d!1998905 true))

(assert (=> d!1998905 (= (derivationStepZipper!2249 lt!2368457 (head!13059 (t!378749 s!2326))) (flatMap!1788 lt!2368457 lambda!351319))))

(declare-fun bs!1596115 () Bool)

(assert (= bs!1596115 d!1998905))

(declare-fun m!7175768 () Bool)

(assert (=> bs!1596115 m!7175768))

(assert (=> b!6372390 d!1998905))

(assert (=> b!6372390 d!1998811))

(assert (=> b!6372390 d!1998813))

(declare-fun d!1998907 () Bool)

(assert (=> d!1998907 (= ($colon$colon!2144 (exprs!6167 lt!2368470) (ite (or c!1160545 c!1160548) (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (regOne!33078 r!7292)))) (Cons!65024 (ite (or c!1160545 c!1160548) (regTwo!33078 (reg!16612 (regOne!33078 r!7292))) (reg!16612 (regOne!33078 r!7292))) (exprs!6167 lt!2368470)))))

(assert (=> bm!544172 d!1998907))

(declare-fun b!6373483 () Bool)

(declare-fun res!2621847 () Bool)

(declare-fun e!3869399 () Bool)

(assert (=> b!6373483 (=> (not res!2621847) (not e!3869399))))

(assert (=> b!6373483 (= res!2621847 (isEmpty!37145 (tail!12144 s!2326)))))

(declare-fun b!6373484 () Bool)

(declare-fun e!3869398 () Bool)

(declare-fun e!3869401 () Bool)

(assert (=> b!6373484 (= e!3869398 e!3869401)))

(declare-fun res!2621845 () Bool)

(assert (=> b!6373484 (=> (not res!2621845) (not e!3869401))))

(declare-fun lt!2368609 () Bool)

(assert (=> b!6373484 (= res!2621845 (not lt!2368609))))

(declare-fun b!6373485 () Bool)

(declare-fun res!2621849 () Bool)

(assert (=> b!6373485 (=> res!2621849 e!3869398)))

(assert (=> b!6373485 (= res!2621849 (not ((_ is ElementMatch!16283) (regTwo!33078 r!7292))))))

(declare-fun e!3869404 () Bool)

(assert (=> b!6373485 (= e!3869404 e!3869398)))

(declare-fun b!6373486 () Bool)

(declare-fun e!3869403 () Bool)

(assert (=> b!6373486 (= e!3869403 (matchR!8466 (derivativeStep!4988 (regTwo!33078 r!7292) (head!13059 s!2326)) (tail!12144 s!2326)))))

(declare-fun b!6373487 () Bool)

(assert (=> b!6373487 (= e!3869399 (= (head!13059 s!2326) (c!1160374 (regTwo!33078 r!7292))))))

(declare-fun bm!544378 () Bool)

(declare-fun call!544383 () Bool)

(assert (=> bm!544378 (= call!544383 (isEmpty!37145 s!2326))))

(declare-fun b!6373488 () Bool)

(declare-fun res!2621842 () Bool)

(declare-fun e!3869402 () Bool)

(assert (=> b!6373488 (=> res!2621842 e!3869402)))

(assert (=> b!6373488 (= res!2621842 (not (isEmpty!37145 (tail!12144 s!2326))))))

(declare-fun b!6373489 () Bool)

(declare-fun e!3869400 () Bool)

(assert (=> b!6373489 (= e!3869400 e!3869404)))

(declare-fun c!1160843 () Bool)

(assert (=> b!6373489 (= c!1160843 ((_ is EmptyLang!16283) (regTwo!33078 r!7292)))))

(declare-fun b!6373490 () Bool)

(declare-fun res!2621846 () Bool)

(assert (=> b!6373490 (=> res!2621846 e!3869398)))

(assert (=> b!6373490 (= res!2621846 e!3869399)))

(declare-fun res!2621843 () Bool)

(assert (=> b!6373490 (=> (not res!2621843) (not e!3869399))))

(assert (=> b!6373490 (= res!2621843 lt!2368609)))

(declare-fun b!6373491 () Bool)

(declare-fun res!2621848 () Bool)

(assert (=> b!6373491 (=> (not res!2621848) (not e!3869399))))

(assert (=> b!6373491 (= res!2621848 (not call!544383))))

(declare-fun d!1998909 () Bool)

(assert (=> d!1998909 e!3869400))

(declare-fun c!1160845 () Bool)

(assert (=> d!1998909 (= c!1160845 ((_ is EmptyExpr!16283) (regTwo!33078 r!7292)))))

(assert (=> d!1998909 (= lt!2368609 e!3869403)))

(declare-fun c!1160844 () Bool)

(assert (=> d!1998909 (= c!1160844 (isEmpty!37145 s!2326))))

(assert (=> d!1998909 (validRegex!8019 (regTwo!33078 r!7292))))

(assert (=> d!1998909 (= (matchR!8466 (regTwo!33078 r!7292) s!2326) lt!2368609)))

(declare-fun b!6373482 () Bool)

(assert (=> b!6373482 (= e!3869400 (= lt!2368609 call!544383))))

(declare-fun b!6373492 () Bool)

(assert (=> b!6373492 (= e!3869404 (not lt!2368609))))

(declare-fun b!6373493 () Bool)

(assert (=> b!6373493 (= e!3869403 (nullable!6276 (regTwo!33078 r!7292)))))

(declare-fun b!6373494 () Bool)

(assert (=> b!6373494 (= e!3869402 (not (= (head!13059 s!2326) (c!1160374 (regTwo!33078 r!7292)))))))

(declare-fun b!6373495 () Bool)

(assert (=> b!6373495 (= e!3869401 e!3869402)))

(declare-fun res!2621844 () Bool)

(assert (=> b!6373495 (=> res!2621844 e!3869402)))

(assert (=> b!6373495 (= res!2621844 call!544383)))

(assert (= (and d!1998909 c!1160844) b!6373493))

(assert (= (and d!1998909 (not c!1160844)) b!6373486))

(assert (= (and d!1998909 c!1160845) b!6373482))

(assert (= (and d!1998909 (not c!1160845)) b!6373489))

(assert (= (and b!6373489 c!1160843) b!6373492))

(assert (= (and b!6373489 (not c!1160843)) b!6373485))

(assert (= (and b!6373485 (not res!2621849)) b!6373490))

(assert (= (and b!6373490 res!2621843) b!6373491))

(assert (= (and b!6373491 res!2621848) b!6373483))

(assert (= (and b!6373483 res!2621847) b!6373487))

(assert (= (and b!6373490 (not res!2621846)) b!6373484))

(assert (= (and b!6373484 res!2621845) b!6373495))

(assert (= (and b!6373495 (not res!2621844)) b!6373488))

(assert (= (and b!6373488 (not res!2621842)) b!6373494))

(assert (= (or b!6373482 b!6373491 b!6373495) bm!544378))

(assert (=> d!1998909 m!7174624))

(assert (=> d!1998909 m!7175502))

(assert (=> b!6373487 m!7174630))

(assert (=> b!6373488 m!7174632))

(assert (=> b!6373488 m!7174632))

(assert (=> b!6373488 m!7174634))

(assert (=> b!6373493 m!7175510))

(assert (=> b!6373486 m!7174630))

(assert (=> b!6373486 m!7174630))

(declare-fun m!7175770 () Bool)

(assert (=> b!6373486 m!7175770))

(assert (=> b!6373486 m!7174632))

(assert (=> b!6373486 m!7175770))

(assert (=> b!6373486 m!7174632))

(declare-fun m!7175772 () Bool)

(assert (=> b!6373486 m!7175772))

(assert (=> b!6373483 m!7174632))

(assert (=> b!6373483 m!7174632))

(assert (=> b!6373483 m!7174634))

(assert (=> b!6373494 m!7174630))

(assert (=> bm!544378 m!7174624))

(assert (=> b!6372443 d!1998909))

(assert (=> b!6372376 d!1998445))

(declare-fun d!1998911 () Bool)

(assert (=> d!1998911 (= (nullable!6276 (reg!16612 r!7292)) (nullableFct!2222 (reg!16612 r!7292)))))

(declare-fun bs!1596116 () Bool)

(assert (= bs!1596116 d!1998911))

(declare-fun m!7175774 () Bool)

(assert (=> bs!1596116 m!7175774))

(assert (=> b!6372222 d!1998911))

(assert (=> d!1998377 d!1998361))

(declare-fun d!1998913 () Bool)

(assert (=> d!1998913 (= (flatMap!1788 lt!2368474 lambda!351195) (dynLambda!25797 lambda!351195 lt!2368458))))

(assert (=> d!1998913 true))

(declare-fun _$13!3552 () Unit!158463)

(assert (=> d!1998913 (= (choose!47361 lt!2368474 lt!2368458 lambda!351195) _$13!3552)))

(declare-fun b_lambda!242203 () Bool)

(assert (=> (not b_lambda!242203) (not d!1998913)))

(declare-fun bs!1596117 () Bool)

(assert (= bs!1596117 d!1998913))

(assert (=> bs!1596117 m!7174254))

(assert (=> bs!1596117 m!7174530))

(assert (=> d!1998377 d!1998913))

(declare-fun b!6373496 () Bool)

(declare-fun e!3869406 () Bool)

(assert (=> b!6373496 (= e!3869406 (nullable!6276 (regOne!33078 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))))))))

(declare-fun bm!544379 () Bool)

(declare-fun call!544384 () (InoxSet Context!11334))

(declare-fun call!544385 () (InoxSet Context!11334))

(assert (=> bm!544379 (= call!544384 call!544385)))

(declare-fun c!1160846 () Bool)

(declare-fun c!1160850 () Bool)

(declare-fun call!544389 () List!65148)

(declare-fun bm!544381 () Bool)

(declare-fun call!544387 () (InoxSet Context!11334))

(declare-fun c!1160847 () Bool)

(assert (=> bm!544381 (= call!544387 (derivationStepZipperDown!1531 (ite c!1160846 (regOne!33079 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (ite c!1160847 (regTwo!33078 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (ite c!1160850 (regOne!33078 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (reg!16612 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))))))) (ite (or c!1160846 c!1160847) (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (Context!11335 call!544389)) (h!71473 s!2326)))))

(declare-fun b!6373497 () Bool)

(declare-fun e!3869409 () (InoxSet Context!11334))

(declare-fun call!544386 () (InoxSet Context!11334))

(assert (=> b!6373497 (= e!3869409 ((_ map or) call!544387 call!544386))))

(declare-fun b!6373498 () Bool)

(declare-fun e!3869408 () (InoxSet Context!11334))

(declare-fun e!3869410 () (InoxSet Context!11334))

(assert (=> b!6373498 (= e!3869408 e!3869410)))

(assert (=> b!6373498 (= c!1160850 ((_ is Concat!25128) (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))))))

(declare-fun b!6373499 () Bool)

(declare-fun e!3869405 () (InoxSet Context!11334))

(assert (=> b!6373499 (= e!3869405 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6373500 () Bool)

(assert (=> b!6373500 (= c!1160847 e!3869406)))

(declare-fun res!2621850 () Bool)

(assert (=> b!6373500 (=> (not res!2621850) (not e!3869406))))

(assert (=> b!6373500 (= res!2621850 ((_ is Concat!25128) (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))))))

(assert (=> b!6373500 (= e!3869409 e!3869408)))

(declare-fun b!6373501 () Bool)

(assert (=> b!6373501 (= e!3869408 ((_ map or) call!544386 call!544385))))

(declare-fun call!544388 () List!65148)

(declare-fun bm!544382 () Bool)

(assert (=> bm!544382 (= call!544388 ($colon$colon!2144 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))))) (ite (or c!1160847 c!1160850) (regTwo!33078 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))))))))

(declare-fun bm!544380 () Bool)

(assert (=> bm!544380 (= call!544385 call!544387)))

(declare-fun d!1998915 () Bool)

(declare-fun c!1160848 () Bool)

(assert (=> d!1998915 (= c!1160848 (and ((_ is ElementMatch!16283) (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (= (c!1160374 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (h!71473 s!2326))))))

(declare-fun e!3869407 () (InoxSet Context!11334))

(assert (=> d!1998915 (= (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))) (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (h!71473 s!2326)) e!3869407)))

(declare-fun bm!544383 () Bool)

(assert (=> bm!544383 (= call!544386 (derivationStepZipperDown!1531 (ite c!1160846 (regTwo!33079 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (regOne!33078 (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))))) (ite c!1160846 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) (Context!11335 call!544388)) (h!71473 s!2326)))))

(declare-fun b!6373502 () Bool)

(assert (=> b!6373502 (= e!3869407 e!3869409)))

(assert (=> b!6373502 (= c!1160846 ((_ is Union!16283) (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))))))

(declare-fun b!6373503 () Bool)

(declare-fun c!1160849 () Bool)

(assert (=> b!6373503 (= c!1160849 ((_ is Star!16283) (h!71472 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))))))

(assert (=> b!6373503 (= e!3869410 e!3869405)))

(declare-fun b!6373504 () Bool)

(assert (=> b!6373504 (= e!3869405 call!544384)))

(declare-fun b!6373505 () Bool)

(assert (=> b!6373505 (= e!3869410 call!544384)))

(declare-fun bm!544384 () Bool)

(assert (=> bm!544384 (= call!544389 call!544388)))

(declare-fun b!6373506 () Bool)

(assert (=> b!6373506 (= e!3869407 (store ((as const (Array Context!11334 Bool)) false) (Context!11335 (t!378748 (exprs!6167 (Context!11335 (Cons!65024 (h!71472 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343)))))))) true))))

(assert (= (and d!1998915 c!1160848) b!6373506))

(assert (= (and d!1998915 (not c!1160848)) b!6373502))

(assert (= (and b!6373502 c!1160846) b!6373497))

(assert (= (and b!6373502 (not c!1160846)) b!6373500))

(assert (= (and b!6373500 res!2621850) b!6373496))

(assert (= (and b!6373500 c!1160847) b!6373501))

(assert (= (and b!6373500 (not c!1160847)) b!6373498))

(assert (= (and b!6373498 c!1160850) b!6373505))

(assert (= (and b!6373498 (not c!1160850)) b!6373503))

(assert (= (and b!6373503 c!1160849) b!6373504))

(assert (= (and b!6373503 (not c!1160849)) b!6373499))

(assert (= (or b!6373505 b!6373504) bm!544384))

(assert (= (or b!6373505 b!6373504) bm!544379))

(assert (= (or b!6373501 bm!544384) bm!544382))

(assert (= (or b!6373501 bm!544379) bm!544380))

(assert (= (or b!6373497 b!6373501) bm!544383))

(assert (= (or b!6373497 bm!544380) bm!544381))

(declare-fun m!7175776 () Bool)

(assert (=> b!6373506 m!7175776))

(declare-fun m!7175778 () Bool)

(assert (=> b!6373496 m!7175778))

(declare-fun m!7175780 () Bool)

(assert (=> bm!544381 m!7175780))

(declare-fun m!7175782 () Bool)

(assert (=> bm!544383 m!7175782))

(declare-fun m!7175784 () Bool)

(assert (=> bm!544382 m!7175784))

(assert (=> bm!544176 d!1998915))

(declare-fun d!1998917 () Bool)

(declare-fun res!2621855 () Bool)

(declare-fun e!3869415 () Bool)

(assert (=> d!1998917 (=> res!2621855 e!3869415)))

(assert (=> d!1998917 (= res!2621855 ((_ is Nil!65026) lt!2368559))))

(assert (=> d!1998917 (= (noDuplicate!2113 lt!2368559) e!3869415)))

(declare-fun b!6373511 () Bool)

(declare-fun e!3869416 () Bool)

(assert (=> b!6373511 (= e!3869415 e!3869416)))

(declare-fun res!2621856 () Bool)

(assert (=> b!6373511 (=> (not res!2621856) (not e!3869416))))

(declare-fun contains!20165 (List!65150 Context!11334) Bool)

(assert (=> b!6373511 (= res!2621856 (not (contains!20165 (t!378750 lt!2368559) (h!71474 lt!2368559))))))

(declare-fun b!6373512 () Bool)

(assert (=> b!6373512 (= e!3869416 (noDuplicate!2113 (t!378750 lt!2368559)))))

(assert (= (and d!1998917 (not res!2621855)) b!6373511))

(assert (= (and b!6373511 res!2621856) b!6373512))

(declare-fun m!7175786 () Bool)

(assert (=> b!6373511 m!7175786))

(declare-fun m!7175788 () Bool)

(assert (=> b!6373512 m!7175788))

(assert (=> d!1998463 d!1998917))

(declare-fun d!1998919 () Bool)

(declare-fun e!3869425 () Bool)

(assert (=> d!1998919 e!3869425))

(declare-fun res!2621861 () Bool)

(assert (=> d!1998919 (=> (not res!2621861) (not e!3869425))))

(declare-fun res!2621862 () List!65150)

(assert (=> d!1998919 (= res!2621861 (noDuplicate!2113 res!2621862))))

(declare-fun e!3869423 () Bool)

(assert (=> d!1998919 e!3869423))

(assert (=> d!1998919 (= (choose!47367 z!1189) res!2621862)))

(declare-fun b!6373520 () Bool)

(declare-fun e!3869424 () Bool)

(declare-fun tp!1774193 () Bool)

(assert (=> b!6373520 (= e!3869424 tp!1774193)))

(declare-fun b!6373519 () Bool)

(declare-fun tp!1774194 () Bool)

(assert (=> b!6373519 (= e!3869423 (and (inv!83954 (h!71474 res!2621862)) e!3869424 tp!1774194))))

(declare-fun b!6373521 () Bool)

(assert (=> b!6373521 (= e!3869425 (= (content!12294 res!2621862) z!1189))))

(assert (= b!6373519 b!6373520))

(assert (= (and d!1998919 ((_ is Cons!65026) res!2621862)) b!6373519))

(assert (= (and d!1998919 res!2621861) b!6373521))

(declare-fun m!7175790 () Bool)

(assert (=> d!1998919 m!7175790))

(declare-fun m!7175792 () Bool)

(assert (=> b!6373519 m!7175792))

(declare-fun m!7175794 () Bool)

(assert (=> b!6373521 m!7175794))

(assert (=> d!1998463 d!1998919))

(declare-fun bs!1596118 () Bool)

(declare-fun d!1998921 () Bool)

(assert (= bs!1596118 (and d!1998921 d!1998755)))

(declare-fun lambda!351320 () Int)

(assert (=> bs!1596118 (= lambda!351320 lambda!351298)))

(declare-fun bs!1596119 () Bool)

(assert (= bs!1596119 (and d!1998921 d!1998777)))

(assert (=> bs!1596119 (= lambda!351320 lambda!351299)))

(declare-fun bs!1596120 () Bool)

(assert (= bs!1596120 (and d!1998921 d!1998833)))

(assert (=> bs!1596120 (= lambda!351320 lambda!351306)))

(declare-fun bs!1596121 () Bool)

(assert (= bs!1596121 (and d!1998921 d!1998895)))

(assert (=> bs!1596121 (= lambda!351320 lambda!351318)))

(assert (=> d!1998921 (= (nullableZipper!2049 lt!2368474) (exists!2581 lt!2368474 lambda!351320))))

(declare-fun bs!1596122 () Bool)

(assert (= bs!1596122 d!1998921))

(declare-fun m!7175796 () Bool)

(assert (=> bs!1596122 m!7175796))

(assert (=> b!6372456 d!1998921))

(declare-fun b!6373522 () Bool)

(declare-fun e!3869427 () Bool)

(assert (=> b!6373522 (= e!3869427 (nullable!6276 (regOne!33078 (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343))))))))))))

(declare-fun bm!544385 () Bool)

(declare-fun call!544390 () (InoxSet Context!11334))

(declare-fun call!544391 () (InoxSet Context!11334))

(assert (=> bm!544385 (= call!544390 call!544391)))

(declare-fun call!544395 () List!65148)

(declare-fun c!1160851 () Bool)

(declare-fun call!544393 () (InoxSet Context!11334))

(declare-fun c!1160852 () Bool)

(declare-fun c!1160855 () Bool)

(declare-fun bm!544387 () Bool)

(assert (=> bm!544387 (= call!544393 (derivationStepZipperDown!1531 (ite c!1160851 (regOne!33079 (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343)))))))) (ite c!1160852 (regTwo!33078 (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343)))))))) (ite c!1160855 (regOne!33078 (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343)))))))) (reg!16612 (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343))))))))))) (ite (or c!1160851 c!1160852) (ite (or c!1160568 c!1160569) lt!2368450 (Context!11335 call!544187)) (Context!11335 call!544395)) (h!71473 s!2326)))))

(declare-fun b!6373523 () Bool)

(declare-fun e!3869430 () (InoxSet Context!11334))

(declare-fun call!544392 () (InoxSet Context!11334))

(assert (=> b!6373523 (= e!3869430 ((_ map or) call!544393 call!544392))))

(declare-fun b!6373524 () Bool)

(declare-fun e!3869429 () (InoxSet Context!11334))

(declare-fun e!3869431 () (InoxSet Context!11334))

(assert (=> b!6373524 (= e!3869429 e!3869431)))

(assert (=> b!6373524 (= c!1160855 ((_ is Concat!25128) (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343)))))))))))

(declare-fun b!6373525 () Bool)

(declare-fun e!3869426 () (InoxSet Context!11334))

(assert (=> b!6373525 (= e!3869426 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6373526 () Bool)

(assert (=> b!6373526 (= c!1160852 e!3869427)))

(declare-fun res!2621863 () Bool)

(assert (=> b!6373526 (=> (not res!2621863) (not e!3869427))))

(assert (=> b!6373526 (= res!2621863 ((_ is Concat!25128) (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343)))))))))))

(assert (=> b!6373526 (= e!3869430 e!3869429)))

(declare-fun b!6373527 () Bool)

(assert (=> b!6373527 (= e!3869429 ((_ map or) call!544392 call!544391))))

(declare-fun bm!544388 () Bool)

(declare-fun call!544394 () List!65148)

(assert (=> bm!544388 (= call!544394 ($colon$colon!2144 (exprs!6167 (ite (or c!1160568 c!1160569) lt!2368450 (Context!11335 call!544187))) (ite (or c!1160852 c!1160855) (regTwo!33078 (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343)))))))) (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343))))))))))))

(declare-fun bm!544386 () Bool)

(assert (=> bm!544386 (= call!544391 call!544393)))

(declare-fun d!1998923 () Bool)

(declare-fun c!1160853 () Bool)

(assert (=> d!1998923 (= c!1160853 (and ((_ is ElementMatch!16283) (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343)))))))) (= (c!1160374 (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343)))))))) (h!71473 s!2326))))))

(declare-fun e!3869428 () (InoxSet Context!11334))

(assert (=> d!1998923 (= (derivationStepZipperDown!1531 (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343))))))) (ite (or c!1160568 c!1160569) lt!2368450 (Context!11335 call!544187)) (h!71473 s!2326)) e!3869428)))

(declare-fun bm!544389 () Bool)

(assert (=> bm!544389 (= call!544392 (derivationStepZipperDown!1531 (ite c!1160851 (regTwo!33079 (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343)))))))) (regOne!33078 (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343))))))))) (ite c!1160851 (ite (or c!1160568 c!1160569) lt!2368450 (Context!11335 call!544187)) (Context!11335 call!544394)) (h!71473 s!2326)))))

(declare-fun b!6373528 () Bool)

(assert (=> b!6373528 (= e!3869428 e!3869430)))

(assert (=> b!6373528 (= c!1160851 ((_ is Union!16283) (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343)))))))))))

(declare-fun b!6373529 () Bool)

(declare-fun c!1160854 () Bool)

(assert (=> b!6373529 (= c!1160854 ((_ is Star!16283) (ite c!1160568 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160569 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160572 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343)))))))))))

(assert (=> b!6373529 (= e!3869431 e!3869426)))

(declare-fun b!6373530 () Bool)

(assert (=> b!6373530 (= e!3869426 call!544390)))

(declare-fun b!6373531 () Bool)

(assert (=> b!6373531 (= e!3869431 call!544390)))

(declare-fun bm!544390 () Bool)

(assert (=> bm!544390 (= call!544395 call!544394)))

(declare-fun b!6373532 () Bool)

(assert (=> b!6373532 (= e!3869428 (store ((as const (Array Context!11334 Bool)) false) (ite (or c!1160568 c!1160569) lt!2368450 (Context!11335 call!544187)) true))))

(assert (= (and d!1998923 c!1160853) b!6373532))

(assert (= (and d!1998923 (not c!1160853)) b!6373528))

(assert (= (and b!6373528 c!1160851) b!6373523))

(assert (= (and b!6373528 (not c!1160851)) b!6373526))

(assert (= (and b!6373526 res!2621863) b!6373522))

(assert (= (and b!6373526 c!1160852) b!6373527))

(assert (= (and b!6373526 (not c!1160852)) b!6373524))

(assert (= (and b!6373524 c!1160855) b!6373531))

(assert (= (and b!6373524 (not c!1160855)) b!6373529))

(assert (= (and b!6373529 c!1160854) b!6373530))

(assert (= (and b!6373529 (not c!1160854)) b!6373525))

(assert (= (or b!6373531 b!6373530) bm!544390))

(assert (= (or b!6373531 b!6373530) bm!544385))

(assert (= (or b!6373527 bm!544390) bm!544388))

(assert (= (or b!6373527 bm!544385) bm!544386))

(assert (= (or b!6373523 b!6373527) bm!544389))

(assert (= (or b!6373523 bm!544386) bm!544387))

(declare-fun m!7175798 () Bool)

(assert (=> b!6373532 m!7175798))

(declare-fun m!7175800 () Bool)

(assert (=> b!6373522 m!7175800))

(declare-fun m!7175802 () Bool)

(assert (=> bm!544387 m!7175802))

(declare-fun m!7175804 () Bool)

(assert (=> bm!544389 m!7175804))

(declare-fun m!7175806 () Bool)

(assert (=> bm!544388 m!7175806))

(assert (=> bm!544179 d!1998923))

(assert (=> b!6372439 d!1998891))

(assert (=> b!6372320 d!1998737))

(declare-fun d!1998925 () Bool)

(assert (=> d!1998925 (= (isEmptyLang!1691 lt!2368523) ((_ is EmptyLang!16283) lt!2368523))))

(assert (=> b!6372099 d!1998925))

(assert (=> b!6372313 d!1998737))

(declare-fun b!6373533 () Bool)

(declare-fun e!3869433 () (InoxSet Context!11334))

(assert (=> b!6373533 (= e!3869433 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544391 () Bool)

(declare-fun call!544396 () (InoxSet Context!11334))

(assert (=> bm!544391 (= call!544396 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343)))))) (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343))))))) (h!71473 s!2326)))))

(declare-fun d!1998927 () Bool)

(declare-fun c!1160856 () Bool)

(declare-fun e!3869434 () Bool)

(assert (=> d!1998927 (= c!1160856 e!3869434)))

(declare-fun res!2621864 () Bool)

(assert (=> d!1998927 (=> (not res!2621864) (not e!3869434))))

(assert (=> d!1998927 (= res!2621864 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343)))))))))

(declare-fun e!3869432 () (InoxSet Context!11334))

(assert (=> d!1998927 (= (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343)))) (h!71473 s!2326)) e!3869432)))

(declare-fun b!6373534 () Bool)

(assert (=> b!6373534 (= e!3869432 e!3869433)))

(declare-fun c!1160857 () Bool)

(assert (=> b!6373534 (= c!1160857 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343)))))))))

(declare-fun b!6373535 () Bool)

(assert (=> b!6373535 (= e!3869433 call!544396)))

(declare-fun b!6373536 () Bool)

(assert (=> b!6373536 (= e!3869434 (nullable!6276 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343))))))))))

(declare-fun b!6373537 () Bool)

(assert (=> b!6373537 (= e!3869432 ((_ map or) call!544396 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343))))))) (h!71473 s!2326))))))

(assert (= (and d!1998927 res!2621864) b!6373536))

(assert (= (and d!1998927 c!1160856) b!6373537))

(assert (= (and d!1998927 (not c!1160856)) b!6373534))

(assert (= (and b!6373534 c!1160857) b!6373535))

(assert (= (and b!6373534 (not c!1160857)) b!6373533))

(assert (= (or b!6373537 b!6373535) bm!544391))

(declare-fun m!7175808 () Bool)

(assert (=> bm!544391 m!7175808))

(declare-fun m!7175810 () Bool)

(assert (=> b!6373536 m!7175810))

(declare-fun m!7175812 () Bool)

(assert (=> b!6373537 m!7175812))

(assert (=> b!6372416 d!1998927))

(assert (=> bm!544152 d!1998753))

(declare-fun d!1998929 () Bool)

(assert (=> d!1998929 true))

(assert (=> d!1998929 true))

(declare-fun res!2621867 () Bool)

(assert (=> d!1998929 (= (choose!47364 lambda!351194) res!2621867)))

(assert (=> d!1998451 d!1998929))

(declare-fun bs!1596123 () Bool)

(declare-fun d!1998931 () Bool)

(assert (= bs!1596123 (and d!1998931 d!1998407)))

(declare-fun lambda!351321 () Int)

(assert (=> bs!1596123 (= lambda!351321 lambda!351241)))

(declare-fun bs!1596124 () Bool)

(assert (= bs!1596124 (and d!1998931 d!1998393)))

(assert (=> bs!1596124 (= lambda!351321 lambda!351239)))

(declare-fun bs!1596125 () Bool)

(assert (= bs!1596125 (and d!1998931 d!1998839)))

(assert (=> bs!1596125 (= lambda!351321 lambda!351308)))

(declare-fun bs!1596126 () Bool)

(assert (= bs!1596126 (and d!1998931 d!1998843)))

(assert (=> bs!1596126 (= lambda!351321 lambda!351309)))

(declare-fun bs!1596127 () Bool)

(assert (= bs!1596127 (and d!1998931 d!1998837)))

(assert (=> bs!1596127 (= lambda!351321 lambda!351307)))

(declare-fun bs!1596128 () Bool)

(assert (= bs!1596128 (and d!1998931 d!1998389)))

(assert (=> bs!1596128 (= lambda!351321 lambda!351236)))

(declare-fun bs!1596129 () Bool)

(assert (= bs!1596129 (and d!1998931 d!1998421)))

(assert (=> bs!1596129 (= lambda!351321 lambda!351250)))

(declare-fun bs!1596130 () Bool)

(assert (= bs!1596130 (and d!1998931 d!1998343)))

(assert (=> bs!1596130 (= lambda!351321 lambda!351220)))

(declare-fun bs!1596131 () Bool)

(assert (= bs!1596131 (and d!1998931 d!1998779)))

(assert (=> bs!1596131 (= lambda!351321 lambda!351300)))

(declare-fun bs!1596132 () Bool)

(assert (= bs!1596132 (and d!1998931 d!1998399)))

(assert (=> bs!1596132 (= lambda!351321 lambda!351240)))

(declare-fun bs!1596133 () Bool)

(assert (= bs!1596133 (and d!1998931 d!1998885)))

(assert (=> bs!1596133 (= lambda!351321 lambda!351317)))

(assert (=> d!1998931 (= (inv!83954 (h!71474 (t!378750 zl!343))) (forall!15461 (exprs!6167 (h!71474 (t!378750 zl!343))) lambda!351321))))

(declare-fun bs!1596134 () Bool)

(assert (= bs!1596134 d!1998931))

(declare-fun m!7175814 () Bool)

(assert (=> bs!1596134 m!7175814))

(assert (=> b!6372481 d!1998931))

(assert (=> d!1998423 d!1998841))

(declare-fun d!1998933 () Bool)

(assert (=> d!1998933 true))

(assert (=> d!1998933 true))

(declare-fun res!2621868 () Bool)

(assert (=> d!1998933 (= (choose!47364 lambda!351193) res!2621868)))

(assert (=> d!1998449 d!1998933))

(declare-fun d!1998935 () Bool)

(assert (=> d!1998935 (= (isUnion!1121 lt!2368523) ((_ is Union!16283) lt!2368523))))

(assert (=> b!6372095 d!1998935))

(declare-fun b!6373538 () Bool)

(declare-fun e!3869436 () (InoxSet Context!11334))

(assert (=> b!6373538 (= e!3869436 ((as const (Array Context!11334 Bool)) false))))

(declare-fun bm!544392 () Bool)

(declare-fun call!544397 () (InoxSet Context!11334))

(assert (=> bm!544392 (= call!544397 (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368458))))) (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368458)))))) (h!71473 s!2326)))))

(declare-fun d!1998937 () Bool)

(declare-fun c!1160858 () Bool)

(declare-fun e!3869437 () Bool)

(assert (=> d!1998937 (= c!1160858 e!3869437)))

(declare-fun res!2621869 () Bool)

(assert (=> d!1998937 (=> (not res!2621869) (not e!3869437))))

(assert (=> d!1998937 (= res!2621869 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368458))))))))

(declare-fun e!3869435 () (InoxSet Context!11334))

(assert (=> d!1998937 (= (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 lt!2368458))) (h!71473 s!2326)) e!3869435)))

(declare-fun b!6373539 () Bool)

(assert (=> b!6373539 (= e!3869435 e!3869436)))

(declare-fun c!1160859 () Bool)

(assert (=> b!6373539 (= c!1160859 ((_ is Cons!65024) (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368458))))))))

(declare-fun b!6373540 () Bool)

(assert (=> b!6373540 (= e!3869436 call!544397)))

(declare-fun b!6373541 () Bool)

(assert (=> b!6373541 (= e!3869437 (nullable!6276 (h!71472 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368458)))))))))

(declare-fun b!6373542 () Bool)

(assert (=> b!6373542 (= e!3869435 ((_ map or) call!544397 (derivationStepZipperUp!1457 (Context!11335 (t!378748 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368458)))))) (h!71473 s!2326))))))

(assert (= (and d!1998937 res!2621869) b!6373541))

(assert (= (and d!1998937 c!1160858) b!6373542))

(assert (= (and d!1998937 (not c!1160858)) b!6373539))

(assert (= (and b!6373539 c!1160859) b!6373540))

(assert (= (and b!6373539 (not c!1160859)) b!6373538))

(assert (= (or b!6373542 b!6373540) bm!544392))

(declare-fun m!7175816 () Bool)

(assert (=> bm!544392 m!7175816))

(declare-fun m!7175818 () Bool)

(assert (=> b!6373541 m!7175818))

(declare-fun m!7175820 () Bool)

(assert (=> b!6373542 m!7175820))

(assert (=> b!6371982 d!1998937))

(declare-fun d!1998939 () Bool)

(assert (=> d!1998939 (= (isEmpty!37141 (tail!12143 (exprs!6167 (h!71474 zl!343)))) ((_ is Nil!65024) (tail!12143 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> b!6372381 d!1998939))

(declare-fun d!1998941 () Bool)

(assert (=> d!1998941 (= (tail!12143 (exprs!6167 (h!71474 zl!343))) (t!378748 (exprs!6167 (h!71474 zl!343))))))

(assert (=> b!6372381 d!1998941))

(assert (=> b!6372309 d!1998805))

(assert (=> b!6372309 d!1998739))

(declare-fun d!1998943 () Bool)

(declare-fun c!1160860 () Bool)

(assert (=> d!1998943 (= c!1160860 (isEmpty!37145 (tail!12144 (t!378749 s!2326))))))

(declare-fun e!3869438 () Bool)

(assert (=> d!1998943 (= (matchZipper!2295 (derivationStepZipper!2249 lt!2368451 (head!13059 (t!378749 s!2326))) (tail!12144 (t!378749 s!2326))) e!3869438)))

(declare-fun b!6373543 () Bool)

(assert (=> b!6373543 (= e!3869438 (nullableZipper!2049 (derivationStepZipper!2249 lt!2368451 (head!13059 (t!378749 s!2326)))))))

(declare-fun b!6373544 () Bool)

(assert (=> b!6373544 (= e!3869438 (matchZipper!2295 (derivationStepZipper!2249 (derivationStepZipper!2249 lt!2368451 (head!13059 (t!378749 s!2326))) (head!13059 (tail!12144 (t!378749 s!2326)))) (tail!12144 (tail!12144 (t!378749 s!2326)))))))

(assert (= (and d!1998943 c!1160860) b!6373543))

(assert (= (and d!1998943 (not c!1160860)) b!6373544))

(assert (=> d!1998943 m!7174680))

(assert (=> d!1998943 m!7175538))

(assert (=> b!6373543 m!7174772))

(declare-fun m!7175822 () Bool)

(assert (=> b!6373543 m!7175822))

(assert (=> b!6373544 m!7174680))

(assert (=> b!6373544 m!7175542))

(assert (=> b!6373544 m!7174772))

(assert (=> b!6373544 m!7175542))

(declare-fun m!7175824 () Bool)

(assert (=> b!6373544 m!7175824))

(assert (=> b!6373544 m!7174680))

(assert (=> b!6373544 m!7175546))

(assert (=> b!6373544 m!7175824))

(assert (=> b!6373544 m!7175546))

(declare-fun m!7175826 () Bool)

(assert (=> b!6373544 m!7175826))

(assert (=> b!6372459 d!1998943))

(declare-fun bs!1596135 () Bool)

(declare-fun d!1998945 () Bool)

(assert (= bs!1596135 (and d!1998945 d!1998905)))

(declare-fun lambda!351322 () Int)

(assert (=> bs!1596135 (= lambda!351322 lambda!351319)))

(declare-fun bs!1596136 () Bool)

(assert (= bs!1596136 (and d!1998945 d!1998853)))

(assert (=> bs!1596136 (= lambda!351322 lambda!351310)))

(declare-fun bs!1596137 () Bool)

(assert (= bs!1596137 (and d!1998945 d!1998809)))

(assert (=> bs!1596137 (= lambda!351322 lambda!351301)))

(declare-fun bs!1596138 () Bool)

(assert (= bs!1596138 (and d!1998945 b!6371763)))

(assert (=> bs!1596138 (= (= (head!13059 (t!378749 s!2326)) (h!71473 s!2326)) (= lambda!351322 lambda!351195))))

(declare-fun bs!1596139 () Bool)

(assert (= bs!1596139 (and d!1998945 d!1998385)))

(assert (=> bs!1596139 (= (= (head!13059 (t!378749 s!2326)) (h!71473 s!2326)) (= lambda!351322 lambda!351227))))

(declare-fun bs!1596140 () Bool)

(assert (= bs!1596140 (and d!1998945 d!1998735)))

(assert (=> bs!1596140 (= (= (head!13059 (t!378749 s!2326)) (head!13059 s!2326)) (= lambda!351322 lambda!351292))))

(assert (=> d!1998945 true))

(assert (=> d!1998945 (= (derivationStepZipper!2249 lt!2368451 (head!13059 (t!378749 s!2326))) (flatMap!1788 lt!2368451 lambda!351322))))

(declare-fun bs!1596141 () Bool)

(assert (= bs!1596141 d!1998945))

(declare-fun m!7175828 () Bool)

(assert (=> bs!1596141 m!7175828))

(assert (=> b!6372459 d!1998945))

(assert (=> b!6372459 d!1998811))

(assert (=> b!6372459 d!1998813))

(declare-fun b!6373545 () Bool)

(declare-fun e!3869440 () Bool)

(assert (=> b!6373545 (= e!3869440 (nullable!6276 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343))))))))

(declare-fun bm!544393 () Bool)

(declare-fun call!544398 () (InoxSet Context!11334))

(declare-fun call!544399 () (InoxSet Context!11334))

(assert (=> bm!544393 (= call!544398 call!544399)))

(declare-fun call!544403 () List!65148)

(declare-fun call!544401 () (InoxSet Context!11334))

(declare-fun c!1160865 () Bool)

(declare-fun bm!544395 () Bool)

(declare-fun c!1160861 () Bool)

(declare-fun c!1160862 () Bool)

(assert (=> bm!544395 (= call!544401 (derivationStepZipperDown!1531 (ite c!1160861 (regOne!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160862 (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (ite c!1160865 (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (reg!16612 (h!71472 (exprs!6167 (h!71474 zl!343))))))) (ite (or c!1160861 c!1160862) (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343)))) (Context!11335 call!544403)) (h!71473 s!2326)))))

(declare-fun b!6373546 () Bool)

(declare-fun e!3869443 () (InoxSet Context!11334))

(declare-fun call!544400 () (InoxSet Context!11334))

(assert (=> b!6373546 (= e!3869443 ((_ map or) call!544401 call!544400))))

(declare-fun b!6373547 () Bool)

(declare-fun e!3869442 () (InoxSet Context!11334))

(declare-fun e!3869444 () (InoxSet Context!11334))

(assert (=> b!6373547 (= e!3869442 e!3869444)))

(assert (=> b!6373547 (= c!1160865 ((_ is Concat!25128) (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6373548 () Bool)

(declare-fun e!3869439 () (InoxSet Context!11334))

(assert (=> b!6373548 (= e!3869439 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6373549 () Bool)

(assert (=> b!6373549 (= c!1160862 e!3869440)))

(declare-fun res!2621870 () Bool)

(assert (=> b!6373549 (=> (not res!2621870) (not e!3869440))))

(assert (=> b!6373549 (= res!2621870 ((_ is Concat!25128) (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> b!6373549 (= e!3869443 e!3869442)))

(declare-fun b!6373550 () Bool)

(assert (=> b!6373550 (= e!3869442 ((_ map or) call!544400 call!544399))))

(declare-fun bm!544396 () Bool)

(declare-fun call!544402 () List!65148)

(assert (=> bm!544396 (= call!544402 ($colon$colon!2144 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343))))) (ite (or c!1160862 c!1160865) (regTwo!33078 (h!71472 (exprs!6167 (h!71474 zl!343)))) (h!71472 (exprs!6167 (h!71474 zl!343))))))))

(declare-fun bm!544394 () Bool)

(assert (=> bm!544394 (= call!544399 call!544401)))

(declare-fun d!1998947 () Bool)

(declare-fun c!1160863 () Bool)

(assert (=> d!1998947 (= c!1160863 (and ((_ is ElementMatch!16283) (h!71472 (exprs!6167 (h!71474 zl!343)))) (= (c!1160374 (h!71472 (exprs!6167 (h!71474 zl!343)))) (h!71473 s!2326))))))

(declare-fun e!3869441 () (InoxSet Context!11334))

(assert (=> d!1998947 (= (derivationStepZipperDown!1531 (h!71472 (exprs!6167 (h!71474 zl!343))) (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343)))) (h!71473 s!2326)) e!3869441)))

(declare-fun bm!544397 () Bool)

(assert (=> bm!544397 (= call!544400 (derivationStepZipperDown!1531 (ite c!1160861 (regTwo!33079 (h!71472 (exprs!6167 (h!71474 zl!343)))) (regOne!33078 (h!71472 (exprs!6167 (h!71474 zl!343))))) (ite c!1160861 (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343)))) (Context!11335 call!544402)) (h!71473 s!2326)))))

(declare-fun b!6373551 () Bool)

(assert (=> b!6373551 (= e!3869441 e!3869443)))

(assert (=> b!6373551 (= c!1160861 ((_ is Union!16283) (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6373552 () Bool)

(declare-fun c!1160864 () Bool)

(assert (=> b!6373552 (= c!1160864 ((_ is Star!16283) (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> b!6373552 (= e!3869444 e!3869439)))

(declare-fun b!6373553 () Bool)

(assert (=> b!6373553 (= e!3869439 call!544398)))

(declare-fun b!6373554 () Bool)

(assert (=> b!6373554 (= e!3869444 call!544398)))

(declare-fun bm!544398 () Bool)

(assert (=> bm!544398 (= call!544403 call!544402)))

(declare-fun b!6373555 () Bool)

(assert (=> b!6373555 (= e!3869441 (store ((as const (Array Context!11334 Bool)) false) (Context!11335 (t!378748 (exprs!6167 (h!71474 zl!343)))) true))))

(assert (= (and d!1998947 c!1160863) b!6373555))

(assert (= (and d!1998947 (not c!1160863)) b!6373551))

(assert (= (and b!6373551 c!1160861) b!6373546))

(assert (= (and b!6373551 (not c!1160861)) b!6373549))

(assert (= (and b!6373549 res!2621870) b!6373545))

(assert (= (and b!6373549 c!1160862) b!6373550))

(assert (= (and b!6373549 (not c!1160862)) b!6373547))

(assert (= (and b!6373547 c!1160865) b!6373554))

(assert (= (and b!6373547 (not c!1160865)) b!6373552))

(assert (= (and b!6373552 c!1160864) b!6373553))

(assert (= (and b!6373552 (not c!1160864)) b!6373548))

(assert (= (or b!6373554 b!6373553) bm!544398))

(assert (= (or b!6373554 b!6373553) bm!544393))

(assert (= (or b!6373550 bm!544398) bm!544396))

(assert (= (or b!6373550 bm!544393) bm!544394))

(assert (= (or b!6373546 b!6373550) bm!544397))

(assert (= (or b!6373546 bm!544394) bm!544395))

(declare-fun m!7175830 () Bool)

(assert (=> b!6373555 m!7175830))

(assert (=> b!6373545 m!7174710))

(declare-fun m!7175832 () Bool)

(assert (=> bm!544395 m!7175832))

(declare-fun m!7175834 () Bool)

(assert (=> bm!544397 m!7175834))

(declare-fun m!7175836 () Bool)

(assert (=> bm!544396 m!7175836))

(assert (=> bm!544183 d!1998947))

(declare-fun d!1998949 () Bool)

(declare-fun res!2621873 () Bool)

(declare-fun e!3869449 () Bool)

(assert (=> d!1998949 (=> res!2621873 e!3869449)))

(assert (=> d!1998949 (= res!2621873 ((_ is ElementMatch!16283) (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292))))))

(assert (=> d!1998949 (= (validRegex!8019 (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292))) e!3869449)))

(declare-fun b!6373556 () Bool)

(declare-fun e!3869450 () Bool)

(assert (=> b!6373556 (= e!3869449 e!3869450)))

(declare-fun c!1160867 () Bool)

(assert (=> b!6373556 (= c!1160867 ((_ is Star!16283) (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292))))))

(declare-fun b!6373557 () Bool)

(declare-fun res!2621871 () Bool)

(declare-fun e!3869445 () Bool)

(assert (=> b!6373557 (=> res!2621871 e!3869445)))

(assert (=> b!6373557 (= res!2621871 (not ((_ is Concat!25128) (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292)))))))

(declare-fun e!3869448 () Bool)

(assert (=> b!6373557 (= e!3869448 e!3869445)))

(declare-fun call!544404 () Bool)

(declare-fun c!1160866 () Bool)

(declare-fun bm!544399 () Bool)

(assert (=> bm!544399 (= call!544404 (validRegex!8019 (ite c!1160866 (regOne!33079 (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292))) (regOne!33078 (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292))))))))

(declare-fun b!6373558 () Bool)

(declare-fun e!3869446 () Bool)

(declare-fun call!544405 () Bool)

(assert (=> b!6373558 (= e!3869446 call!544405)))

(declare-fun b!6373559 () Bool)

(assert (=> b!6373559 (= e!3869445 e!3869446)))

(declare-fun res!2621875 () Bool)

(assert (=> b!6373559 (=> (not res!2621875) (not e!3869446))))

(assert (=> b!6373559 (= res!2621875 call!544404)))

(declare-fun b!6373560 () Bool)

(declare-fun e!3869451 () Bool)

(assert (=> b!6373560 (= e!3869450 e!3869451)))

(declare-fun res!2621874 () Bool)

(assert (=> b!6373560 (= res!2621874 (not (nullable!6276 (reg!16612 (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292))))))))

(assert (=> b!6373560 (=> (not res!2621874) (not e!3869451))))

(declare-fun b!6373561 () Bool)

(declare-fun res!2621872 () Bool)

(declare-fun e!3869447 () Bool)

(assert (=> b!6373561 (=> (not res!2621872) (not e!3869447))))

(assert (=> b!6373561 (= res!2621872 call!544404)))

(assert (=> b!6373561 (= e!3869448 e!3869447)))

(declare-fun bm!544400 () Bool)

(declare-fun call!544406 () Bool)

(assert (=> bm!544400 (= call!544406 (validRegex!8019 (ite c!1160867 (reg!16612 (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292))) (ite c!1160866 (regTwo!33079 (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292))) (regTwo!33078 (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292)))))))))

(declare-fun b!6373562 () Bool)

(assert (=> b!6373562 (= e!3869451 call!544406)))

(declare-fun bm!544401 () Bool)

(assert (=> bm!544401 (= call!544405 call!544406)))

(declare-fun b!6373563 () Bool)

(assert (=> b!6373563 (= e!3869450 e!3869448)))

(assert (=> b!6373563 (= c!1160866 ((_ is Union!16283) (ite c!1160507 (regOne!33079 r!7292) (regOne!33078 r!7292))))))

(declare-fun b!6373564 () Bool)

(assert (=> b!6373564 (= e!3869447 call!544405)))

(assert (= (and d!1998949 (not res!2621873)) b!6373556))

(assert (= (and b!6373556 c!1160867) b!6373560))

(assert (= (and b!6373556 (not c!1160867)) b!6373563))

(assert (= (and b!6373560 res!2621874) b!6373562))

(assert (= (and b!6373563 c!1160866) b!6373561))

(assert (= (and b!6373563 (not c!1160866)) b!6373557))

(assert (= (and b!6373561 res!2621872) b!6373564))

(assert (= (and b!6373557 (not res!2621871)) b!6373559))

(assert (= (and b!6373559 res!2621875) b!6373558))

(assert (= (or b!6373564 b!6373558) bm!544401))

(assert (= (or b!6373561 b!6373559) bm!544399))

(assert (= (or b!6373562 bm!544401) bm!544400))

(declare-fun m!7175838 () Bool)

(assert (=> bm!544399 m!7175838))

(declare-fun m!7175840 () Bool)

(assert (=> b!6373560 m!7175840))

(declare-fun m!7175842 () Bool)

(assert (=> bm!544400 m!7175842))

(assert (=> bm!544143 d!1998949))

(declare-fun b!6373565 () Bool)

(declare-fun e!3869453 () Bool)

(assert (=> b!6373565 (= e!3869453 (nullable!6276 (regOne!33078 (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292)))))))))

(declare-fun bm!544402 () Bool)

(declare-fun call!544407 () (InoxSet Context!11334))

(declare-fun call!544408 () (InoxSet Context!11334))

(assert (=> bm!544402 (= call!544407 call!544408)))

(declare-fun c!1160872 () Bool)

(declare-fun bm!544404 () Bool)

(declare-fun c!1160868 () Bool)

(declare-fun call!544412 () List!65148)

(declare-fun c!1160869 () Bool)

(declare-fun call!544410 () (InoxSet Context!11334))

(assert (=> bm!544404 (= call!544410 (derivationStepZipperDown!1531 (ite c!1160868 (regOne!33079 (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292))))) (ite c!1160869 (regTwo!33078 (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292))))) (ite c!1160872 (regOne!33078 (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292))))) (reg!16612 (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292)))))))) (ite (or c!1160868 c!1160869) (ite c!1160544 lt!2368470 (Context!11335 call!544178)) (Context!11335 call!544412)) (h!71473 s!2326)))))

(declare-fun b!6373566 () Bool)

(declare-fun e!3869456 () (InoxSet Context!11334))

(declare-fun call!544409 () (InoxSet Context!11334))

(assert (=> b!6373566 (= e!3869456 ((_ map or) call!544410 call!544409))))

(declare-fun b!6373567 () Bool)

(declare-fun e!3869455 () (InoxSet Context!11334))

(declare-fun e!3869457 () (InoxSet Context!11334))

(assert (=> b!6373567 (= e!3869455 e!3869457)))

(assert (=> b!6373567 (= c!1160872 ((_ is Concat!25128) (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292))))))))

(declare-fun b!6373568 () Bool)

(declare-fun e!3869452 () (InoxSet Context!11334))

(assert (=> b!6373568 (= e!3869452 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6373569 () Bool)

(assert (=> b!6373569 (= c!1160869 e!3869453)))

(declare-fun res!2621876 () Bool)

(assert (=> b!6373569 (=> (not res!2621876) (not e!3869453))))

(assert (=> b!6373569 (= res!2621876 ((_ is Concat!25128) (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292))))))))

(assert (=> b!6373569 (= e!3869456 e!3869455)))

(declare-fun b!6373570 () Bool)

(assert (=> b!6373570 (= e!3869455 ((_ map or) call!544409 call!544408))))

(declare-fun bm!544405 () Bool)

(declare-fun call!544411 () List!65148)

(assert (=> bm!544405 (= call!544411 ($colon$colon!2144 (exprs!6167 (ite c!1160544 lt!2368470 (Context!11335 call!544178))) (ite (or c!1160869 c!1160872) (regTwo!33078 (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292))))) (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292)))))))))

(declare-fun bm!544403 () Bool)

(assert (=> bm!544403 (= call!544408 call!544410)))

(declare-fun d!1998951 () Bool)

(declare-fun c!1160870 () Bool)

(assert (=> d!1998951 (= c!1160870 (and ((_ is ElementMatch!16283) (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292))))) (= (c!1160374 (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292))))) (h!71473 s!2326))))))

(declare-fun e!3869454 () (InoxSet Context!11334))

(assert (=> d!1998951 (= (derivationStepZipperDown!1531 (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292)))) (ite c!1160544 lt!2368470 (Context!11335 call!544178)) (h!71473 s!2326)) e!3869454)))

(declare-fun bm!544406 () Bool)

(assert (=> bm!544406 (= call!544409 (derivationStepZipperDown!1531 (ite c!1160868 (regTwo!33079 (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292))))) (regOne!33078 (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292)))))) (ite c!1160868 (ite c!1160544 lt!2368470 (Context!11335 call!544178)) (Context!11335 call!544411)) (h!71473 s!2326)))))

(declare-fun b!6373571 () Bool)

(assert (=> b!6373571 (= e!3869454 e!3869456)))

(assert (=> b!6373571 (= c!1160868 ((_ is Union!16283) (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292))))))))

(declare-fun b!6373572 () Bool)

(declare-fun c!1160871 () Bool)

(assert (=> b!6373572 (= c!1160871 ((_ is Star!16283) (ite c!1160544 (regTwo!33079 (reg!16612 (regOne!33078 r!7292))) (regOne!33078 (reg!16612 (regOne!33078 r!7292))))))))

(assert (=> b!6373572 (= e!3869457 e!3869452)))

(declare-fun b!6373573 () Bool)

(assert (=> b!6373573 (= e!3869452 call!544407)))

(declare-fun b!6373574 () Bool)

(assert (=> b!6373574 (= e!3869457 call!544407)))

(declare-fun bm!544407 () Bool)

(assert (=> bm!544407 (= call!544412 call!544411)))

(declare-fun b!6373575 () Bool)

(assert (=> b!6373575 (= e!3869454 (store ((as const (Array Context!11334 Bool)) false) (ite c!1160544 lt!2368470 (Context!11335 call!544178)) true))))

(assert (= (and d!1998951 c!1160870) b!6373575))

(assert (= (and d!1998951 (not c!1160870)) b!6373571))

(assert (= (and b!6373571 c!1160868) b!6373566))

(assert (= (and b!6373571 (not c!1160868)) b!6373569))

(assert (= (and b!6373569 res!2621876) b!6373565))

(assert (= (and b!6373569 c!1160869) b!6373570))

(assert (= (and b!6373569 (not c!1160869)) b!6373567))

(assert (= (and b!6373567 c!1160872) b!6373574))

(assert (= (and b!6373567 (not c!1160872)) b!6373572))

(assert (= (and b!6373572 c!1160871) b!6373573))

(assert (= (and b!6373572 (not c!1160871)) b!6373568))

(assert (= (or b!6373574 b!6373573) bm!544407))

(assert (= (or b!6373574 b!6373573) bm!544402))

(assert (= (or b!6373570 bm!544407) bm!544405))

(assert (= (or b!6373570 bm!544402) bm!544403))

(assert (= (or b!6373566 b!6373570) bm!544406))

(assert (= (or b!6373566 bm!544403) bm!544404))

(declare-fun m!7175844 () Bool)

(assert (=> b!6373575 m!7175844))

(declare-fun m!7175846 () Bool)

(assert (=> b!6373565 m!7175846))

(declare-fun m!7175848 () Bool)

(assert (=> bm!544404 m!7175848))

(declare-fun m!7175850 () Bool)

(assert (=> bm!544406 m!7175850))

(declare-fun m!7175852 () Bool)

(assert (=> bm!544405 m!7175852))

(assert (=> bm!544173 d!1998951))

(declare-fun bm!544408 () Bool)

(declare-fun call!544414 () Bool)

(declare-fun c!1160873 () Bool)

(assert (=> bm!544408 (= call!544414 (nullable!6276 (ite c!1160873 (regOne!33079 (regOne!33078 (regOne!33078 r!7292))) (regOne!33078 (regOne!33078 (regOne!33078 r!7292))))))))

(declare-fun b!6373576 () Bool)

(declare-fun e!3869460 () Bool)

(declare-fun e!3869459 () Bool)

(assert (=> b!6373576 (= e!3869460 e!3869459)))

(declare-fun res!2621881 () Bool)

(assert (=> b!6373576 (= res!2621881 call!544414)))

(assert (=> b!6373576 (=> res!2621881 e!3869459)))

(declare-fun b!6373578 () Bool)

(declare-fun e!3869462 () Bool)

(declare-fun e!3869458 () Bool)

(assert (=> b!6373578 (= e!3869462 e!3869458)))

(declare-fun res!2621880 () Bool)

(assert (=> b!6373578 (=> res!2621880 e!3869458)))

(assert (=> b!6373578 (= res!2621880 ((_ is Star!16283) (regOne!33078 (regOne!33078 r!7292))))))

(declare-fun b!6373579 () Bool)

(assert (=> b!6373579 (= e!3869458 e!3869460)))

(assert (=> b!6373579 (= c!1160873 ((_ is Union!16283) (regOne!33078 (regOne!33078 r!7292))))))

(declare-fun bm!544409 () Bool)

(declare-fun call!544413 () Bool)

(assert (=> bm!544409 (= call!544413 (nullable!6276 (ite c!1160873 (regTwo!33079 (regOne!33078 (regOne!33078 r!7292))) (regTwo!33078 (regOne!33078 (regOne!33078 r!7292))))))))

(declare-fun b!6373580 () Bool)

(assert (=> b!6373580 (= e!3869459 call!544413)))

(declare-fun d!1998953 () Bool)

(declare-fun res!2621877 () Bool)

(declare-fun e!3869463 () Bool)

(assert (=> d!1998953 (=> res!2621877 e!3869463)))

(assert (=> d!1998953 (= res!2621877 ((_ is EmptyExpr!16283) (regOne!33078 (regOne!33078 r!7292))))))

(assert (=> d!1998953 (= (nullableFct!2222 (regOne!33078 (regOne!33078 r!7292))) e!3869463)))

(declare-fun b!6373577 () Bool)

(declare-fun e!3869461 () Bool)

(assert (=> b!6373577 (= e!3869461 call!544413)))

(declare-fun b!6373581 () Bool)

(assert (=> b!6373581 (= e!3869460 e!3869461)))

(declare-fun res!2621878 () Bool)

(assert (=> b!6373581 (= res!2621878 call!544414)))

(assert (=> b!6373581 (=> (not res!2621878) (not e!3869461))))

(declare-fun b!6373582 () Bool)

(assert (=> b!6373582 (= e!3869463 e!3869462)))

(declare-fun res!2621879 () Bool)

(assert (=> b!6373582 (=> (not res!2621879) (not e!3869462))))

(assert (=> b!6373582 (= res!2621879 (and (not ((_ is EmptyLang!16283) (regOne!33078 (regOne!33078 r!7292)))) (not ((_ is ElementMatch!16283) (regOne!33078 (regOne!33078 r!7292))))))))

(assert (= (and d!1998953 (not res!2621877)) b!6373582))

(assert (= (and b!6373582 res!2621879) b!6373578))

(assert (= (and b!6373578 (not res!2621880)) b!6373579))

(assert (= (and b!6373579 c!1160873) b!6373576))

(assert (= (and b!6373579 (not c!1160873)) b!6373581))

(assert (= (and b!6373576 (not res!2621881)) b!6373580))

(assert (= (and b!6373581 res!2621878) b!6373577))

(assert (= (or b!6373580 b!6373577) bm!544409))

(assert (= (or b!6373576 b!6373581) bm!544408))

(declare-fun m!7175854 () Bool)

(assert (=> bm!544408 m!7175854))

(declare-fun m!7175856 () Bool)

(assert (=> bm!544409 m!7175856))

(assert (=> d!1998425 d!1998953))

(declare-fun b!6373583 () Bool)

(declare-fun e!3869465 () Bool)

(assert (=> b!6373583 (= e!3869465 (nullable!6276 (regOne!33078 (h!71472 (exprs!6167 lt!2368458)))))))

(declare-fun bm!544410 () Bool)

(declare-fun call!544415 () (InoxSet Context!11334))

(declare-fun call!544416 () (InoxSet Context!11334))

(assert (=> bm!544410 (= call!544415 call!544416)))

(declare-fun bm!544412 () Bool)

(declare-fun c!1160875 () Bool)

(declare-fun c!1160874 () Bool)

(declare-fun c!1160878 () Bool)

(declare-fun call!544420 () List!65148)

(declare-fun call!544418 () (InoxSet Context!11334))

(assert (=> bm!544412 (= call!544418 (derivationStepZipperDown!1531 (ite c!1160874 (regOne!33079 (h!71472 (exprs!6167 lt!2368458))) (ite c!1160875 (regTwo!33078 (h!71472 (exprs!6167 lt!2368458))) (ite c!1160878 (regOne!33078 (h!71472 (exprs!6167 lt!2368458))) (reg!16612 (h!71472 (exprs!6167 lt!2368458)))))) (ite (or c!1160874 c!1160875) (Context!11335 (t!378748 (exprs!6167 lt!2368458))) (Context!11335 call!544420)) (h!71473 s!2326)))))

(declare-fun b!6373584 () Bool)

(declare-fun e!3869468 () (InoxSet Context!11334))

(declare-fun call!544417 () (InoxSet Context!11334))

(assert (=> b!6373584 (= e!3869468 ((_ map or) call!544418 call!544417))))

(declare-fun b!6373585 () Bool)

(declare-fun e!3869467 () (InoxSet Context!11334))

(declare-fun e!3869469 () (InoxSet Context!11334))

(assert (=> b!6373585 (= e!3869467 e!3869469)))

(assert (=> b!6373585 (= c!1160878 ((_ is Concat!25128) (h!71472 (exprs!6167 lt!2368458))))))

(declare-fun b!6373586 () Bool)

(declare-fun e!3869464 () (InoxSet Context!11334))

(assert (=> b!6373586 (= e!3869464 ((as const (Array Context!11334 Bool)) false))))

(declare-fun b!6373587 () Bool)

(assert (=> b!6373587 (= c!1160875 e!3869465)))

(declare-fun res!2621882 () Bool)

(assert (=> b!6373587 (=> (not res!2621882) (not e!3869465))))

(assert (=> b!6373587 (= res!2621882 ((_ is Concat!25128) (h!71472 (exprs!6167 lt!2368458))))))

(assert (=> b!6373587 (= e!3869468 e!3869467)))

(declare-fun b!6373588 () Bool)

(assert (=> b!6373588 (= e!3869467 ((_ map or) call!544417 call!544416))))

(declare-fun bm!544413 () Bool)

(declare-fun call!544419 () List!65148)

(assert (=> bm!544413 (= call!544419 ($colon$colon!2144 (exprs!6167 (Context!11335 (t!378748 (exprs!6167 lt!2368458)))) (ite (or c!1160875 c!1160878) (regTwo!33078 (h!71472 (exprs!6167 lt!2368458))) (h!71472 (exprs!6167 lt!2368458)))))))

(declare-fun bm!544411 () Bool)

(assert (=> bm!544411 (= call!544416 call!544418)))

(declare-fun d!1998955 () Bool)

(declare-fun c!1160876 () Bool)

(assert (=> d!1998955 (= c!1160876 (and ((_ is ElementMatch!16283) (h!71472 (exprs!6167 lt!2368458))) (= (c!1160374 (h!71472 (exprs!6167 lt!2368458))) (h!71473 s!2326))))))

(declare-fun e!3869466 () (InoxSet Context!11334))

(assert (=> d!1998955 (= (derivationStepZipperDown!1531 (h!71472 (exprs!6167 lt!2368458)) (Context!11335 (t!378748 (exprs!6167 lt!2368458))) (h!71473 s!2326)) e!3869466)))

(declare-fun bm!544414 () Bool)

(assert (=> bm!544414 (= call!544417 (derivationStepZipperDown!1531 (ite c!1160874 (regTwo!33079 (h!71472 (exprs!6167 lt!2368458))) (regOne!33078 (h!71472 (exprs!6167 lt!2368458)))) (ite c!1160874 (Context!11335 (t!378748 (exprs!6167 lt!2368458))) (Context!11335 call!544419)) (h!71473 s!2326)))))

(declare-fun b!6373589 () Bool)

(assert (=> b!6373589 (= e!3869466 e!3869468)))

(assert (=> b!6373589 (= c!1160874 ((_ is Union!16283) (h!71472 (exprs!6167 lt!2368458))))))

(declare-fun b!6373590 () Bool)

(declare-fun c!1160877 () Bool)

(assert (=> b!6373590 (= c!1160877 ((_ is Star!16283) (h!71472 (exprs!6167 lt!2368458))))))

(assert (=> b!6373590 (= e!3869469 e!3869464)))

(declare-fun b!6373591 () Bool)

(assert (=> b!6373591 (= e!3869464 call!544415)))

(declare-fun b!6373592 () Bool)

(assert (=> b!6373592 (= e!3869469 call!544415)))

(declare-fun bm!544415 () Bool)

(assert (=> bm!544415 (= call!544420 call!544419)))

(declare-fun b!6373593 () Bool)

(assert (=> b!6373593 (= e!3869466 (store ((as const (Array Context!11334 Bool)) false) (Context!11335 (t!378748 (exprs!6167 lt!2368458))) true))))

(assert (= (and d!1998955 c!1160876) b!6373593))

(assert (= (and d!1998955 (not c!1160876)) b!6373589))

(assert (= (and b!6373589 c!1160874) b!6373584))

(assert (= (and b!6373589 (not c!1160874)) b!6373587))

(assert (= (and b!6373587 res!2621882) b!6373583))

(assert (= (and b!6373587 c!1160875) b!6373588))

(assert (= (and b!6373587 (not c!1160875)) b!6373585))

(assert (= (and b!6373585 c!1160878) b!6373592))

(assert (= (and b!6373585 (not c!1160878)) b!6373590))

(assert (= (and b!6373590 c!1160877) b!6373591))

(assert (= (and b!6373590 (not c!1160877)) b!6373586))

(assert (= (or b!6373592 b!6373591) bm!544415))

(assert (= (or b!6373592 b!6373591) bm!544410))

(assert (= (or b!6373588 bm!544415) bm!544413))

(assert (= (or b!6373588 bm!544410) bm!544411))

(assert (= (or b!6373584 b!6373588) bm!544414))

(assert (= (or b!6373584 bm!544411) bm!544412))

(declare-fun m!7175858 () Bool)

(assert (=> b!6373593 m!7175858))

(declare-fun m!7175860 () Bool)

(assert (=> b!6373583 m!7175860))

(declare-fun m!7175862 () Bool)

(assert (=> bm!544412 m!7175862))

(declare-fun m!7175864 () Bool)

(assert (=> bm!544414 m!7175864))

(declare-fun m!7175866 () Bool)

(assert (=> bm!544413 m!7175866))

(assert (=> bm!544125 d!1998955))

(declare-fun bs!1596142 () Bool)

(declare-fun d!1998957 () Bool)

(assert (= bs!1596142 (and d!1998957 d!1998931)))

(declare-fun lambda!351323 () Int)

(assert (=> bs!1596142 (= lambda!351323 lambda!351321)))

(declare-fun bs!1596143 () Bool)

(assert (= bs!1596143 (and d!1998957 d!1998407)))

(assert (=> bs!1596143 (= lambda!351323 lambda!351241)))

(declare-fun bs!1596144 () Bool)

(assert (= bs!1596144 (and d!1998957 d!1998393)))

(assert (=> bs!1596144 (= lambda!351323 lambda!351239)))

(declare-fun bs!1596145 () Bool)

(assert (= bs!1596145 (and d!1998957 d!1998839)))

(assert (=> bs!1596145 (= lambda!351323 lambda!351308)))

(declare-fun bs!1596146 () Bool)

(assert (= bs!1596146 (and d!1998957 d!1998843)))

(assert (=> bs!1596146 (= lambda!351323 lambda!351309)))

(declare-fun bs!1596147 () Bool)

(assert (= bs!1596147 (and d!1998957 d!1998837)))

(assert (=> bs!1596147 (= lambda!351323 lambda!351307)))

(declare-fun bs!1596148 () Bool)

(assert (= bs!1596148 (and d!1998957 d!1998389)))

(assert (=> bs!1596148 (= lambda!351323 lambda!351236)))

(declare-fun bs!1596149 () Bool)

(assert (= bs!1596149 (and d!1998957 d!1998421)))

(assert (=> bs!1596149 (= lambda!351323 lambda!351250)))

(declare-fun bs!1596150 () Bool)

(assert (= bs!1596150 (and d!1998957 d!1998343)))

(assert (=> bs!1596150 (= lambda!351323 lambda!351220)))

(declare-fun bs!1596151 () Bool)

(assert (= bs!1596151 (and d!1998957 d!1998779)))

(assert (=> bs!1596151 (= lambda!351323 lambda!351300)))

(declare-fun bs!1596152 () Bool)

(assert (= bs!1596152 (and d!1998957 d!1998399)))

(assert (=> bs!1596152 (= lambda!351323 lambda!351240)))

(declare-fun bs!1596153 () Bool)

(assert (= bs!1596153 (and d!1998957 d!1998885)))

(assert (=> bs!1596153 (= lambda!351323 lambda!351317)))

(declare-fun b!6373594 () Bool)

(declare-fun e!3869474 () Bool)

(declare-fun lt!2368610 () Regex!16283)

(assert (=> b!6373594 (= e!3869474 (isEmptyExpr!1685 lt!2368610))))

(declare-fun b!6373595 () Bool)

(declare-fun e!3869470 () Bool)

(assert (=> b!6373595 (= e!3869470 (isEmpty!37141 (t!378748 (t!378748 (exprs!6167 (h!71474 zl!343))))))))

(declare-fun b!6373596 () Bool)

(declare-fun e!3869471 () Regex!16283)

(assert (=> b!6373596 (= e!3869471 (Concat!25128 (h!71472 (t!378748 (exprs!6167 (h!71474 zl!343)))) (generalisedConcat!1880 (t!378748 (t!378748 (exprs!6167 (h!71474 zl!343)))))))))

(declare-fun b!6373597 () Bool)

(declare-fun e!3869472 () Regex!16283)

(assert (=> b!6373597 (= e!3869472 e!3869471)))

(declare-fun c!1160879 () Bool)

(assert (=> b!6373597 (= c!1160879 ((_ is Cons!65024) (t!378748 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6373598 () Bool)

(declare-fun e!3869473 () Bool)

(assert (=> b!6373598 (= e!3869473 (= lt!2368610 (head!13058 (t!378748 (exprs!6167 (h!71474 zl!343))))))))

(declare-fun b!6373599 () Bool)

(declare-fun e!3869475 () Bool)

(assert (=> b!6373599 (= e!3869475 e!3869474)))

(declare-fun c!1160881 () Bool)

(assert (=> b!6373599 (= c!1160881 (isEmpty!37141 (t!378748 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6373601 () Bool)

(assert (=> b!6373601 (= e!3869473 (isConcat!1208 lt!2368610))))

(declare-fun b!6373602 () Bool)

(assert (=> b!6373602 (= e!3869472 (h!71472 (t!378748 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun b!6373603 () Bool)

(assert (=> b!6373603 (= e!3869471 EmptyExpr!16283)))

(declare-fun b!6373600 () Bool)

(assert (=> b!6373600 (= e!3869474 e!3869473)))

(declare-fun c!1160882 () Bool)

(assert (=> b!6373600 (= c!1160882 (isEmpty!37141 (tail!12143 (t!378748 (exprs!6167 (h!71474 zl!343))))))))

(assert (=> d!1998957 e!3869475))

(declare-fun res!2621883 () Bool)

(assert (=> d!1998957 (=> (not res!2621883) (not e!3869475))))

(assert (=> d!1998957 (= res!2621883 (validRegex!8019 lt!2368610))))

(assert (=> d!1998957 (= lt!2368610 e!3869472)))

(declare-fun c!1160880 () Bool)

(assert (=> d!1998957 (= c!1160880 e!3869470)))

(declare-fun res!2621884 () Bool)

(assert (=> d!1998957 (=> (not res!2621884) (not e!3869470))))

(assert (=> d!1998957 (= res!2621884 ((_ is Cons!65024) (t!378748 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> d!1998957 (forall!15461 (t!378748 (exprs!6167 (h!71474 zl!343))) lambda!351323)))

(assert (=> d!1998957 (= (generalisedConcat!1880 (t!378748 (exprs!6167 (h!71474 zl!343)))) lt!2368610)))

(assert (= (and d!1998957 res!2621884) b!6373595))

(assert (= (and d!1998957 c!1160880) b!6373602))

(assert (= (and d!1998957 (not c!1160880)) b!6373597))

(assert (= (and b!6373597 c!1160879) b!6373596))

(assert (= (and b!6373597 (not c!1160879)) b!6373603))

(assert (= (and d!1998957 res!2621883) b!6373599))

(assert (= (and b!6373599 c!1160881) b!6373594))

(assert (= (and b!6373599 (not c!1160881)) b!6373600))

(assert (= (and b!6373600 c!1160882) b!6373598))

(assert (= (and b!6373600 (not c!1160882)) b!6373601))

(declare-fun m!7175868 () Bool)

(assert (=> b!6373600 m!7175868))

(assert (=> b!6373600 m!7175868))

(declare-fun m!7175870 () Bool)

(assert (=> b!6373600 m!7175870))

(declare-fun m!7175872 () Bool)

(assert (=> b!6373596 m!7175872))

(declare-fun m!7175874 () Bool)

(assert (=> b!6373598 m!7175874))

(declare-fun m!7175876 () Bool)

(assert (=> b!6373594 m!7175876))

(declare-fun m!7175878 () Bool)

(assert (=> b!6373601 m!7175878))

(declare-fun m!7175880 () Bool)

(assert (=> b!6373595 m!7175880))

(declare-fun m!7175882 () Bool)

(assert (=> d!1998957 m!7175882))

(declare-fun m!7175884 () Bool)

(assert (=> d!1998957 m!7175884))

(assert (=> b!6373599 m!7174298))

(assert (=> b!6372377 d!1998957))

(assert (=> d!1998461 d!1998841))

(declare-fun b!6373604 () Bool)

(declare-fun e!3869476 () Bool)

(declare-fun tp!1774195 () Bool)

(declare-fun tp!1774196 () Bool)

(assert (=> b!6373604 (= e!3869476 (and tp!1774195 tp!1774196))))

(assert (=> b!6372482 (= tp!1773968 e!3869476)))

(assert (= (and b!6372482 ((_ is Cons!65024) (exprs!6167 (h!71474 (t!378750 zl!343))))) b!6373604))

(declare-fun b!6373607 () Bool)

(declare-fun e!3869477 () Bool)

(declare-fun tp!1774198 () Bool)

(assert (=> b!6373607 (= e!3869477 tp!1774198)))

(declare-fun b!6373608 () Bool)

(declare-fun tp!1774197 () Bool)

(declare-fun tp!1774201 () Bool)

(assert (=> b!6373608 (= e!3869477 (and tp!1774197 tp!1774201))))

(declare-fun b!6373605 () Bool)

(assert (=> b!6373605 (= e!3869477 tp_is_empty!41819)))

(declare-fun b!6373606 () Bool)

(declare-fun tp!1774200 () Bool)

(declare-fun tp!1774199 () Bool)

(assert (=> b!6373606 (= e!3869477 (and tp!1774200 tp!1774199))))

(assert (=> b!6372505 (= tp!1773994 e!3869477)))

(assert (= (and b!6372505 ((_ is ElementMatch!16283) (h!71472 (exprs!6167 setElem!43448)))) b!6373605))

(assert (= (and b!6372505 ((_ is Concat!25128) (h!71472 (exprs!6167 setElem!43448)))) b!6373606))

(assert (= (and b!6372505 ((_ is Star!16283) (h!71472 (exprs!6167 setElem!43448)))) b!6373607))

(assert (= (and b!6372505 ((_ is Union!16283) (h!71472 (exprs!6167 setElem!43448)))) b!6373608))

(declare-fun b!6373609 () Bool)

(declare-fun e!3869478 () Bool)

(declare-fun tp!1774202 () Bool)

(declare-fun tp!1774203 () Bool)

(assert (=> b!6373609 (= e!3869478 (and tp!1774202 tp!1774203))))

(assert (=> b!6372505 (= tp!1773995 e!3869478)))

(assert (= (and b!6372505 ((_ is Cons!65024) (t!378748 (exprs!6167 setElem!43448)))) b!6373609))

(declare-fun b!6373612 () Bool)

(declare-fun e!3869479 () Bool)

(declare-fun tp!1774205 () Bool)

(assert (=> b!6373612 (= e!3869479 tp!1774205)))

(declare-fun b!6373613 () Bool)

(declare-fun tp!1774204 () Bool)

(declare-fun tp!1774208 () Bool)

(assert (=> b!6373613 (= e!3869479 (and tp!1774204 tp!1774208))))

(declare-fun b!6373610 () Bool)

(assert (=> b!6373610 (= e!3869479 tp_is_empty!41819)))

(declare-fun b!6373611 () Bool)

(declare-fun tp!1774207 () Bool)

(declare-fun tp!1774206 () Bool)

(assert (=> b!6373611 (= e!3869479 (and tp!1774207 tp!1774206))))

(assert (=> b!6372512 (= tp!1774006 e!3869479)))

(assert (= (and b!6372512 ((_ is ElementMatch!16283) (regOne!33078 (regOne!33079 r!7292)))) b!6373610))

(assert (= (and b!6372512 ((_ is Concat!25128) (regOne!33078 (regOne!33079 r!7292)))) b!6373611))

(assert (= (and b!6372512 ((_ is Star!16283) (regOne!33078 (regOne!33079 r!7292)))) b!6373612))

(assert (= (and b!6372512 ((_ is Union!16283) (regOne!33078 (regOne!33079 r!7292)))) b!6373613))

(declare-fun b!6373616 () Bool)

(declare-fun e!3869480 () Bool)

(declare-fun tp!1774210 () Bool)

(assert (=> b!6373616 (= e!3869480 tp!1774210)))

(declare-fun b!6373617 () Bool)

(declare-fun tp!1774209 () Bool)

(declare-fun tp!1774213 () Bool)

(assert (=> b!6373617 (= e!3869480 (and tp!1774209 tp!1774213))))

(declare-fun b!6373614 () Bool)

(assert (=> b!6373614 (= e!3869480 tp_is_empty!41819)))

(declare-fun b!6373615 () Bool)

(declare-fun tp!1774212 () Bool)

(declare-fun tp!1774211 () Bool)

(assert (=> b!6373615 (= e!3869480 (and tp!1774212 tp!1774211))))

(assert (=> b!6372512 (= tp!1774005 e!3869480)))

(assert (= (and b!6372512 ((_ is ElementMatch!16283) (regTwo!33078 (regOne!33079 r!7292)))) b!6373614))

(assert (= (and b!6372512 ((_ is Concat!25128) (regTwo!33078 (regOne!33079 r!7292)))) b!6373615))

(assert (= (and b!6372512 ((_ is Star!16283) (regTwo!33078 (regOne!33079 r!7292)))) b!6373616))

(assert (= (and b!6372512 ((_ is Union!16283) (regTwo!33078 (regOne!33079 r!7292)))) b!6373617))

(declare-fun b!6373620 () Bool)

(declare-fun e!3869481 () Bool)

(declare-fun tp!1774215 () Bool)

(assert (=> b!6373620 (= e!3869481 tp!1774215)))

(declare-fun b!6373621 () Bool)

(declare-fun tp!1774214 () Bool)

(declare-fun tp!1774218 () Bool)

(assert (=> b!6373621 (= e!3869481 (and tp!1774214 tp!1774218))))

(declare-fun b!6373618 () Bool)

(assert (=> b!6373618 (= e!3869481 tp_is_empty!41819)))

(declare-fun b!6373619 () Bool)

(declare-fun tp!1774217 () Bool)

(declare-fun tp!1774216 () Bool)

(assert (=> b!6373619 (= e!3869481 (and tp!1774217 tp!1774216))))

(assert (=> b!6372498 (= tp!1773988 e!3869481)))

(assert (= (and b!6372498 ((_ is ElementMatch!16283) (regOne!33078 (regTwo!33078 r!7292)))) b!6373618))

(assert (= (and b!6372498 ((_ is Concat!25128) (regOne!33078 (regTwo!33078 r!7292)))) b!6373619))

(assert (= (and b!6372498 ((_ is Star!16283) (regOne!33078 (regTwo!33078 r!7292)))) b!6373620))

(assert (= (and b!6372498 ((_ is Union!16283) (regOne!33078 (regTwo!33078 r!7292)))) b!6373621))

(declare-fun b!6373624 () Bool)

(declare-fun e!3869482 () Bool)

(declare-fun tp!1774220 () Bool)

(assert (=> b!6373624 (= e!3869482 tp!1774220)))

(declare-fun b!6373625 () Bool)

(declare-fun tp!1774219 () Bool)

(declare-fun tp!1774223 () Bool)

(assert (=> b!6373625 (= e!3869482 (and tp!1774219 tp!1774223))))

(declare-fun b!6373622 () Bool)

(assert (=> b!6373622 (= e!3869482 tp_is_empty!41819)))

(declare-fun b!6373623 () Bool)

(declare-fun tp!1774222 () Bool)

(declare-fun tp!1774221 () Bool)

(assert (=> b!6373623 (= e!3869482 (and tp!1774222 tp!1774221))))

(assert (=> b!6372498 (= tp!1773987 e!3869482)))

(assert (= (and b!6372498 ((_ is ElementMatch!16283) (regTwo!33078 (regTwo!33078 r!7292)))) b!6373622))

(assert (= (and b!6372498 ((_ is Concat!25128) (regTwo!33078 (regTwo!33078 r!7292)))) b!6373623))

(assert (= (and b!6372498 ((_ is Star!16283) (regTwo!33078 (regTwo!33078 r!7292)))) b!6373624))

(assert (= (and b!6372498 ((_ is Union!16283) (regTwo!33078 (regTwo!33078 r!7292)))) b!6373625))

(declare-fun b!6373628 () Bool)

(declare-fun e!3869483 () Bool)

(declare-fun tp!1774225 () Bool)

(assert (=> b!6373628 (= e!3869483 tp!1774225)))

(declare-fun b!6373629 () Bool)

(declare-fun tp!1774224 () Bool)

(declare-fun tp!1774228 () Bool)

(assert (=> b!6373629 (= e!3869483 (and tp!1774224 tp!1774228))))

(declare-fun b!6373626 () Bool)

(assert (=> b!6373626 (= e!3869483 tp_is_empty!41819)))

(declare-fun b!6373627 () Bool)

(declare-fun tp!1774227 () Bool)

(declare-fun tp!1774226 () Bool)

(assert (=> b!6373627 (= e!3869483 (and tp!1774227 tp!1774226))))

(assert (=> b!6372513 (= tp!1774004 e!3869483)))

(assert (= (and b!6372513 ((_ is ElementMatch!16283) (reg!16612 (regOne!33079 r!7292)))) b!6373626))

(assert (= (and b!6372513 ((_ is Concat!25128) (reg!16612 (regOne!33079 r!7292)))) b!6373627))

(assert (= (and b!6372513 ((_ is Star!16283) (reg!16612 (regOne!33079 r!7292)))) b!6373628))

(assert (= (and b!6372513 ((_ is Union!16283) (reg!16612 (regOne!33079 r!7292)))) b!6373629))

(declare-fun b!6373632 () Bool)

(declare-fun e!3869484 () Bool)

(declare-fun tp!1774230 () Bool)

(assert (=> b!6373632 (= e!3869484 tp!1774230)))

(declare-fun b!6373633 () Bool)

(declare-fun tp!1774229 () Bool)

(declare-fun tp!1774233 () Bool)

(assert (=> b!6373633 (= e!3869484 (and tp!1774229 tp!1774233))))

(declare-fun b!6373630 () Bool)

(assert (=> b!6373630 (= e!3869484 tp_is_empty!41819)))

(declare-fun b!6373631 () Bool)

(declare-fun tp!1774232 () Bool)

(declare-fun tp!1774231 () Bool)

(assert (=> b!6373631 (= e!3869484 (and tp!1774232 tp!1774231))))

(assert (=> b!6372499 (= tp!1773986 e!3869484)))

(assert (= (and b!6372499 ((_ is ElementMatch!16283) (reg!16612 (regTwo!33078 r!7292)))) b!6373630))

(assert (= (and b!6372499 ((_ is Concat!25128) (reg!16612 (regTwo!33078 r!7292)))) b!6373631))

(assert (= (and b!6372499 ((_ is Star!16283) (reg!16612 (regTwo!33078 r!7292)))) b!6373632))

(assert (= (and b!6372499 ((_ is Union!16283) (reg!16612 (regTwo!33078 r!7292)))) b!6373633))

(declare-fun b!6373636 () Bool)

(declare-fun e!3869485 () Bool)

(declare-fun tp!1774235 () Bool)

(assert (=> b!6373636 (= e!3869485 tp!1774235)))

(declare-fun b!6373637 () Bool)

(declare-fun tp!1774234 () Bool)

(declare-fun tp!1774238 () Bool)

(assert (=> b!6373637 (= e!3869485 (and tp!1774234 tp!1774238))))

(declare-fun b!6373634 () Bool)

(assert (=> b!6373634 (= e!3869485 tp_is_empty!41819)))

(declare-fun b!6373635 () Bool)

(declare-fun tp!1774237 () Bool)

(declare-fun tp!1774236 () Bool)

(assert (=> b!6373635 (= e!3869485 (and tp!1774237 tp!1774236))))

(assert (=> b!6372514 (= tp!1774003 e!3869485)))

(assert (= (and b!6372514 ((_ is ElementMatch!16283) (regOne!33079 (regOne!33079 r!7292)))) b!6373634))

(assert (= (and b!6372514 ((_ is Concat!25128) (regOne!33079 (regOne!33079 r!7292)))) b!6373635))

(assert (= (and b!6372514 ((_ is Star!16283) (regOne!33079 (regOne!33079 r!7292)))) b!6373636))

(assert (= (and b!6372514 ((_ is Union!16283) (regOne!33079 (regOne!33079 r!7292)))) b!6373637))

(declare-fun b!6373640 () Bool)

(declare-fun e!3869486 () Bool)

(declare-fun tp!1774240 () Bool)

(assert (=> b!6373640 (= e!3869486 tp!1774240)))

(declare-fun b!6373641 () Bool)

(declare-fun tp!1774239 () Bool)

(declare-fun tp!1774243 () Bool)

(assert (=> b!6373641 (= e!3869486 (and tp!1774239 tp!1774243))))

(declare-fun b!6373638 () Bool)

(assert (=> b!6373638 (= e!3869486 tp_is_empty!41819)))

(declare-fun b!6373639 () Bool)

(declare-fun tp!1774242 () Bool)

(declare-fun tp!1774241 () Bool)

(assert (=> b!6373639 (= e!3869486 (and tp!1774242 tp!1774241))))

(assert (=> b!6372514 (= tp!1774007 e!3869486)))

(assert (= (and b!6372514 ((_ is ElementMatch!16283) (regTwo!33079 (regOne!33079 r!7292)))) b!6373638))

(assert (= (and b!6372514 ((_ is Concat!25128) (regTwo!33079 (regOne!33079 r!7292)))) b!6373639))

(assert (= (and b!6372514 ((_ is Star!16283) (regTwo!33079 (regOne!33079 r!7292)))) b!6373640))

(assert (= (and b!6372514 ((_ is Union!16283) (regTwo!33079 (regOne!33079 r!7292)))) b!6373641))

(declare-fun b!6373644 () Bool)

(declare-fun e!3869487 () Bool)

(declare-fun tp!1774245 () Bool)

(assert (=> b!6373644 (= e!3869487 tp!1774245)))

(declare-fun b!6373645 () Bool)

(declare-fun tp!1774244 () Bool)

(declare-fun tp!1774248 () Bool)

(assert (=> b!6373645 (= e!3869487 (and tp!1774244 tp!1774248))))

(declare-fun b!6373642 () Bool)

(assert (=> b!6373642 (= e!3869487 tp_is_empty!41819)))

(declare-fun b!6373643 () Bool)

(declare-fun tp!1774247 () Bool)

(declare-fun tp!1774246 () Bool)

(assert (=> b!6373643 (= e!3869487 (and tp!1774247 tp!1774246))))

(assert (=> b!6372510 (= tp!1773998 e!3869487)))

(assert (= (and b!6372510 ((_ is ElementMatch!16283) (regOne!33079 (reg!16612 r!7292)))) b!6373642))

(assert (= (and b!6372510 ((_ is Concat!25128) (regOne!33079 (reg!16612 r!7292)))) b!6373643))

(assert (= (and b!6372510 ((_ is Star!16283) (regOne!33079 (reg!16612 r!7292)))) b!6373644))

(assert (= (and b!6372510 ((_ is Union!16283) (regOne!33079 (reg!16612 r!7292)))) b!6373645))

(declare-fun b!6373648 () Bool)

(declare-fun e!3869488 () Bool)

(declare-fun tp!1774250 () Bool)

(assert (=> b!6373648 (= e!3869488 tp!1774250)))

(declare-fun b!6373649 () Bool)

(declare-fun tp!1774249 () Bool)

(declare-fun tp!1774253 () Bool)

(assert (=> b!6373649 (= e!3869488 (and tp!1774249 tp!1774253))))

(declare-fun b!6373646 () Bool)

(assert (=> b!6373646 (= e!3869488 tp_is_empty!41819)))

(declare-fun b!6373647 () Bool)

(declare-fun tp!1774252 () Bool)

(declare-fun tp!1774251 () Bool)

(assert (=> b!6373647 (= e!3869488 (and tp!1774252 tp!1774251))))

(assert (=> b!6372510 (= tp!1774002 e!3869488)))

(assert (= (and b!6372510 ((_ is ElementMatch!16283) (regTwo!33079 (reg!16612 r!7292)))) b!6373646))

(assert (= (and b!6372510 ((_ is Concat!25128) (regTwo!33079 (reg!16612 r!7292)))) b!6373647))

(assert (= (and b!6372510 ((_ is Star!16283) (regTwo!33079 (reg!16612 r!7292)))) b!6373648))

(assert (= (and b!6372510 ((_ is Union!16283) (regTwo!33079 (reg!16612 r!7292)))) b!6373649))

(declare-fun b!6373652 () Bool)

(declare-fun e!3869489 () Bool)

(declare-fun tp!1774255 () Bool)

(assert (=> b!6373652 (= e!3869489 tp!1774255)))

(declare-fun b!6373653 () Bool)

(declare-fun tp!1774254 () Bool)

(declare-fun tp!1774258 () Bool)

(assert (=> b!6373653 (= e!3869489 (and tp!1774254 tp!1774258))))

(declare-fun b!6373650 () Bool)

(assert (=> b!6373650 (= e!3869489 tp_is_empty!41819)))

(declare-fun b!6373651 () Bool)

(declare-fun tp!1774257 () Bool)

(declare-fun tp!1774256 () Bool)

(assert (=> b!6373651 (= e!3869489 (and tp!1774257 tp!1774256))))

(assert (=> b!6372496 (= tp!1773980 e!3869489)))

(assert (= (and b!6372496 ((_ is ElementMatch!16283) (regOne!33079 (regOne!33078 r!7292)))) b!6373650))

(assert (= (and b!6372496 ((_ is Concat!25128) (regOne!33079 (regOne!33078 r!7292)))) b!6373651))

(assert (= (and b!6372496 ((_ is Star!16283) (regOne!33079 (regOne!33078 r!7292)))) b!6373652))

(assert (= (and b!6372496 ((_ is Union!16283) (regOne!33079 (regOne!33078 r!7292)))) b!6373653))

(declare-fun b!6373656 () Bool)

(declare-fun e!3869490 () Bool)

(declare-fun tp!1774260 () Bool)

(assert (=> b!6373656 (= e!3869490 tp!1774260)))

(declare-fun b!6373657 () Bool)

(declare-fun tp!1774259 () Bool)

(declare-fun tp!1774263 () Bool)

(assert (=> b!6373657 (= e!3869490 (and tp!1774259 tp!1774263))))

(declare-fun b!6373654 () Bool)

(assert (=> b!6373654 (= e!3869490 tp_is_empty!41819)))

(declare-fun b!6373655 () Bool)

(declare-fun tp!1774262 () Bool)

(declare-fun tp!1774261 () Bool)

(assert (=> b!6373655 (= e!3869490 (and tp!1774262 tp!1774261))))

(assert (=> b!6372496 (= tp!1773984 e!3869490)))

(assert (= (and b!6372496 ((_ is ElementMatch!16283) (regTwo!33079 (regOne!33078 r!7292)))) b!6373654))

(assert (= (and b!6372496 ((_ is Concat!25128) (regTwo!33079 (regOne!33078 r!7292)))) b!6373655))

(assert (= (and b!6372496 ((_ is Star!16283) (regTwo!33079 (regOne!33078 r!7292)))) b!6373656))

(assert (= (and b!6372496 ((_ is Union!16283) (regTwo!33079 (regOne!33078 r!7292)))) b!6373657))

(declare-fun b!6373658 () Bool)

(declare-fun e!3869491 () Bool)

(declare-fun tp!1774264 () Bool)

(assert (=> b!6373658 (= e!3869491 (and tp_is_empty!41819 tp!1774264))))

(assert (=> b!6372474 (= tp!1773963 e!3869491)))

(assert (= (and b!6372474 ((_ is Cons!65025) (t!378749 (t!378749 s!2326)))) b!6373658))

(declare-fun b!6373660 () Bool)

(declare-fun e!3869493 () Bool)

(declare-fun tp!1774265 () Bool)

(assert (=> b!6373660 (= e!3869493 tp!1774265)))

(declare-fun b!6373659 () Bool)

(declare-fun tp!1774266 () Bool)

(declare-fun e!3869492 () Bool)

(assert (=> b!6373659 (= e!3869492 (and (inv!83954 (h!71474 (t!378750 (t!378750 zl!343)))) e!3869493 tp!1774266))))

(assert (=> b!6372481 (= tp!1773969 e!3869492)))

(assert (= b!6373659 b!6373660))

(assert (= (and b!6372481 ((_ is Cons!65026) (t!378750 (t!378750 zl!343)))) b!6373659))

(declare-fun m!7175886 () Bool)

(assert (=> b!6373659 m!7175886))

(declare-fun b!6373663 () Bool)

(declare-fun e!3869494 () Bool)

(declare-fun tp!1774268 () Bool)

(assert (=> b!6373663 (= e!3869494 tp!1774268)))

(declare-fun b!6373664 () Bool)

(declare-fun tp!1774267 () Bool)

(declare-fun tp!1774271 () Bool)

(assert (=> b!6373664 (= e!3869494 (and tp!1774267 tp!1774271))))

(declare-fun b!6373661 () Bool)

(assert (=> b!6373661 (= e!3869494 tp_is_empty!41819)))

(declare-fun b!6373662 () Bool)

(declare-fun tp!1774270 () Bool)

(declare-fun tp!1774269 () Bool)

(assert (=> b!6373662 (= e!3869494 (and tp!1774270 tp!1774269))))

(assert (=> b!6372516 (= tp!1774011 e!3869494)))

(assert (= (and b!6372516 ((_ is ElementMatch!16283) (regOne!33078 (regTwo!33079 r!7292)))) b!6373661))

(assert (= (and b!6372516 ((_ is Concat!25128) (regOne!33078 (regTwo!33079 r!7292)))) b!6373662))

(assert (= (and b!6372516 ((_ is Star!16283) (regOne!33078 (regTwo!33079 r!7292)))) b!6373663))

(assert (= (and b!6372516 ((_ is Union!16283) (regOne!33078 (regTwo!33079 r!7292)))) b!6373664))

(declare-fun b!6373667 () Bool)

(declare-fun e!3869495 () Bool)

(declare-fun tp!1774273 () Bool)

(assert (=> b!6373667 (= e!3869495 tp!1774273)))

(declare-fun b!6373668 () Bool)

(declare-fun tp!1774272 () Bool)

(declare-fun tp!1774276 () Bool)

(assert (=> b!6373668 (= e!3869495 (and tp!1774272 tp!1774276))))

(declare-fun b!6373665 () Bool)

(assert (=> b!6373665 (= e!3869495 tp_is_empty!41819)))

(declare-fun b!6373666 () Bool)

(declare-fun tp!1774275 () Bool)

(declare-fun tp!1774274 () Bool)

(assert (=> b!6373666 (= e!3869495 (and tp!1774275 tp!1774274))))

(assert (=> b!6372516 (= tp!1774010 e!3869495)))

(assert (= (and b!6372516 ((_ is ElementMatch!16283) (regTwo!33078 (regTwo!33079 r!7292)))) b!6373665))

(assert (= (and b!6372516 ((_ is Concat!25128) (regTwo!33078 (regTwo!33079 r!7292)))) b!6373666))

(assert (= (and b!6372516 ((_ is Star!16283) (regTwo!33078 (regTwo!33079 r!7292)))) b!6373667))

(assert (= (and b!6372516 ((_ is Union!16283) (regTwo!33078 (regTwo!33079 r!7292)))) b!6373668))

(declare-fun b!6373671 () Bool)

(declare-fun e!3869496 () Bool)

(declare-fun tp!1774278 () Bool)

(assert (=> b!6373671 (= e!3869496 tp!1774278)))

(declare-fun b!6373672 () Bool)

(declare-fun tp!1774277 () Bool)

(declare-fun tp!1774281 () Bool)

(assert (=> b!6373672 (= e!3869496 (and tp!1774277 tp!1774281))))

(declare-fun b!6373669 () Bool)

(assert (=> b!6373669 (= e!3869496 tp_is_empty!41819)))

(declare-fun b!6373670 () Bool)

(declare-fun tp!1774280 () Bool)

(declare-fun tp!1774279 () Bool)

(assert (=> b!6373670 (= e!3869496 (and tp!1774280 tp!1774279))))

(assert (=> b!6372517 (= tp!1774009 e!3869496)))

(assert (= (and b!6372517 ((_ is ElementMatch!16283) (reg!16612 (regTwo!33079 r!7292)))) b!6373669))

(assert (= (and b!6372517 ((_ is Concat!25128) (reg!16612 (regTwo!33079 r!7292)))) b!6373670))

(assert (= (and b!6372517 ((_ is Star!16283) (reg!16612 (regTwo!33079 r!7292)))) b!6373671))

(assert (= (and b!6372517 ((_ is Union!16283) (reg!16612 (regTwo!33079 r!7292)))) b!6373672))

(declare-fun b!6373675 () Bool)

(declare-fun e!3869497 () Bool)

(declare-fun tp!1774283 () Bool)

(assert (=> b!6373675 (= e!3869497 tp!1774283)))

(declare-fun b!6373676 () Bool)

(declare-fun tp!1774282 () Bool)

(declare-fun tp!1774286 () Bool)

(assert (=> b!6373676 (= e!3869497 (and tp!1774282 tp!1774286))))

(declare-fun b!6373673 () Bool)

(assert (=> b!6373673 (= e!3869497 tp_is_empty!41819)))

(declare-fun b!6373674 () Bool)

(declare-fun tp!1774285 () Bool)

(declare-fun tp!1774284 () Bool)

(assert (=> b!6373674 (= e!3869497 (and tp!1774285 tp!1774284))))

(assert (=> b!6372508 (= tp!1774001 e!3869497)))

(assert (= (and b!6372508 ((_ is ElementMatch!16283) (regOne!33078 (reg!16612 r!7292)))) b!6373673))

(assert (= (and b!6372508 ((_ is Concat!25128) (regOne!33078 (reg!16612 r!7292)))) b!6373674))

(assert (= (and b!6372508 ((_ is Star!16283) (regOne!33078 (reg!16612 r!7292)))) b!6373675))

(assert (= (and b!6372508 ((_ is Union!16283) (regOne!33078 (reg!16612 r!7292)))) b!6373676))

(declare-fun b!6373679 () Bool)

(declare-fun e!3869498 () Bool)

(declare-fun tp!1774288 () Bool)

(assert (=> b!6373679 (= e!3869498 tp!1774288)))

(declare-fun b!6373680 () Bool)

(declare-fun tp!1774287 () Bool)

(declare-fun tp!1774291 () Bool)

(assert (=> b!6373680 (= e!3869498 (and tp!1774287 tp!1774291))))

(declare-fun b!6373677 () Bool)

(assert (=> b!6373677 (= e!3869498 tp_is_empty!41819)))

(declare-fun b!6373678 () Bool)

(declare-fun tp!1774290 () Bool)

(declare-fun tp!1774289 () Bool)

(assert (=> b!6373678 (= e!3869498 (and tp!1774290 tp!1774289))))

(assert (=> b!6372508 (= tp!1774000 e!3869498)))

(assert (= (and b!6372508 ((_ is ElementMatch!16283) (regTwo!33078 (reg!16612 r!7292)))) b!6373677))

(assert (= (and b!6372508 ((_ is Concat!25128) (regTwo!33078 (reg!16612 r!7292)))) b!6373678))

(assert (= (and b!6372508 ((_ is Star!16283) (regTwo!33078 (reg!16612 r!7292)))) b!6373679))

(assert (= (and b!6372508 ((_ is Union!16283) (regTwo!33078 (reg!16612 r!7292)))) b!6373680))

(declare-fun b!6373683 () Bool)

(declare-fun e!3869499 () Bool)

(declare-fun tp!1774293 () Bool)

(assert (=> b!6373683 (= e!3869499 tp!1774293)))

(declare-fun b!6373684 () Bool)

(declare-fun tp!1774292 () Bool)

(declare-fun tp!1774296 () Bool)

(assert (=> b!6373684 (= e!3869499 (and tp!1774292 tp!1774296))))

(declare-fun b!6373681 () Bool)

(assert (=> b!6373681 (= e!3869499 tp_is_empty!41819)))

(declare-fun b!6373682 () Bool)

(declare-fun tp!1774295 () Bool)

(declare-fun tp!1774294 () Bool)

(assert (=> b!6373682 (= e!3869499 (and tp!1774295 tp!1774294))))

(assert (=> b!6372518 (= tp!1774008 e!3869499)))

(assert (= (and b!6372518 ((_ is ElementMatch!16283) (regOne!33079 (regTwo!33079 r!7292)))) b!6373681))

(assert (= (and b!6372518 ((_ is Concat!25128) (regOne!33079 (regTwo!33079 r!7292)))) b!6373682))

(assert (= (and b!6372518 ((_ is Star!16283) (regOne!33079 (regTwo!33079 r!7292)))) b!6373683))

(assert (= (and b!6372518 ((_ is Union!16283) (regOne!33079 (regTwo!33079 r!7292)))) b!6373684))

(declare-fun b!6373687 () Bool)

(declare-fun e!3869500 () Bool)

(declare-fun tp!1774298 () Bool)

(assert (=> b!6373687 (= e!3869500 tp!1774298)))

(declare-fun b!6373688 () Bool)

(declare-fun tp!1774297 () Bool)

(declare-fun tp!1774301 () Bool)

(assert (=> b!6373688 (= e!3869500 (and tp!1774297 tp!1774301))))

(declare-fun b!6373685 () Bool)

(assert (=> b!6373685 (= e!3869500 tp_is_empty!41819)))

(declare-fun b!6373686 () Bool)

(declare-fun tp!1774300 () Bool)

(declare-fun tp!1774299 () Bool)

(assert (=> b!6373686 (= e!3869500 (and tp!1774300 tp!1774299))))

(assert (=> b!6372518 (= tp!1774012 e!3869500)))

(assert (= (and b!6372518 ((_ is ElementMatch!16283) (regTwo!33079 (regTwo!33079 r!7292)))) b!6373685))

(assert (= (and b!6372518 ((_ is Concat!25128) (regTwo!33079 (regTwo!33079 r!7292)))) b!6373686))

(assert (= (and b!6372518 ((_ is Star!16283) (regTwo!33079 (regTwo!33079 r!7292)))) b!6373687))

(assert (= (and b!6372518 ((_ is Union!16283) (regTwo!33079 (regTwo!33079 r!7292)))) b!6373688))

(declare-fun b!6373691 () Bool)

(declare-fun e!3869501 () Bool)

(declare-fun tp!1774303 () Bool)

(assert (=> b!6373691 (= e!3869501 tp!1774303)))

(declare-fun b!6373692 () Bool)

(declare-fun tp!1774302 () Bool)

(declare-fun tp!1774306 () Bool)

(assert (=> b!6373692 (= e!3869501 (and tp!1774302 tp!1774306))))

(declare-fun b!6373689 () Bool)

(assert (=> b!6373689 (= e!3869501 tp_is_empty!41819)))

(declare-fun b!6373690 () Bool)

(declare-fun tp!1774305 () Bool)

(declare-fun tp!1774304 () Bool)

(assert (=> b!6373690 (= e!3869501 (and tp!1774305 tp!1774304))))

(assert (=> b!6372494 (= tp!1773983 e!3869501)))

(assert (= (and b!6372494 ((_ is ElementMatch!16283) (regOne!33078 (regOne!33078 r!7292)))) b!6373689))

(assert (= (and b!6372494 ((_ is Concat!25128) (regOne!33078 (regOne!33078 r!7292)))) b!6373690))

(assert (= (and b!6372494 ((_ is Star!16283) (regOne!33078 (regOne!33078 r!7292)))) b!6373691))

(assert (= (and b!6372494 ((_ is Union!16283) (regOne!33078 (regOne!33078 r!7292)))) b!6373692))

(declare-fun b!6373695 () Bool)

(declare-fun e!3869502 () Bool)

(declare-fun tp!1774308 () Bool)

(assert (=> b!6373695 (= e!3869502 tp!1774308)))

(declare-fun b!6373696 () Bool)

(declare-fun tp!1774307 () Bool)

(declare-fun tp!1774311 () Bool)

(assert (=> b!6373696 (= e!3869502 (and tp!1774307 tp!1774311))))

(declare-fun b!6373693 () Bool)

(assert (=> b!6373693 (= e!3869502 tp_is_empty!41819)))

(declare-fun b!6373694 () Bool)

(declare-fun tp!1774310 () Bool)

(declare-fun tp!1774309 () Bool)

(assert (=> b!6373694 (= e!3869502 (and tp!1774310 tp!1774309))))

(assert (=> b!6372494 (= tp!1773982 e!3869502)))

(assert (= (and b!6372494 ((_ is ElementMatch!16283) (regTwo!33078 (regOne!33078 r!7292)))) b!6373693))

(assert (= (and b!6372494 ((_ is Concat!25128) (regTwo!33078 (regOne!33078 r!7292)))) b!6373694))

(assert (= (and b!6372494 ((_ is Star!16283) (regTwo!33078 (regOne!33078 r!7292)))) b!6373695))

(assert (= (and b!6372494 ((_ is Union!16283) (regTwo!33078 (regOne!33078 r!7292)))) b!6373696))

(declare-fun b!6373699 () Bool)

(declare-fun e!3869503 () Bool)

(declare-fun tp!1774313 () Bool)

(assert (=> b!6373699 (= e!3869503 tp!1774313)))

(declare-fun b!6373700 () Bool)

(declare-fun tp!1774312 () Bool)

(declare-fun tp!1774316 () Bool)

(assert (=> b!6373700 (= e!3869503 (and tp!1774312 tp!1774316))))

(declare-fun b!6373697 () Bool)

(assert (=> b!6373697 (= e!3869503 tp_is_empty!41819)))

(declare-fun b!6373698 () Bool)

(declare-fun tp!1774315 () Bool)

(declare-fun tp!1774314 () Bool)

(assert (=> b!6373698 (= e!3869503 (and tp!1774315 tp!1774314))))

(assert (=> b!6372509 (= tp!1773999 e!3869503)))

(assert (= (and b!6372509 ((_ is ElementMatch!16283) (reg!16612 (reg!16612 r!7292)))) b!6373697))

(assert (= (and b!6372509 ((_ is Concat!25128) (reg!16612 (reg!16612 r!7292)))) b!6373698))

(assert (= (and b!6372509 ((_ is Star!16283) (reg!16612 (reg!16612 r!7292)))) b!6373699))

(assert (= (and b!6372509 ((_ is Union!16283) (reg!16612 (reg!16612 r!7292)))) b!6373700))

(declare-fun b!6373703 () Bool)

(declare-fun e!3869504 () Bool)

(declare-fun tp!1774318 () Bool)

(assert (=> b!6373703 (= e!3869504 tp!1774318)))

(declare-fun b!6373704 () Bool)

(declare-fun tp!1774317 () Bool)

(declare-fun tp!1774321 () Bool)

(assert (=> b!6373704 (= e!3869504 (and tp!1774317 tp!1774321))))

(declare-fun b!6373701 () Bool)

(assert (=> b!6373701 (= e!3869504 tp_is_empty!41819)))

(declare-fun b!6373702 () Bool)

(declare-fun tp!1774320 () Bool)

(declare-fun tp!1774319 () Bool)

(assert (=> b!6373702 (= e!3869504 (and tp!1774320 tp!1774319))))

(assert (=> b!6372495 (= tp!1773981 e!3869504)))

(assert (= (and b!6372495 ((_ is ElementMatch!16283) (reg!16612 (regOne!33078 r!7292)))) b!6373701))

(assert (= (and b!6372495 ((_ is Concat!25128) (reg!16612 (regOne!33078 r!7292)))) b!6373702))

(assert (= (and b!6372495 ((_ is Star!16283) (reg!16612 (regOne!33078 r!7292)))) b!6373703))

(assert (= (and b!6372495 ((_ is Union!16283) (reg!16612 (regOne!33078 r!7292)))) b!6373704))

(declare-fun b!6373707 () Bool)

(declare-fun e!3869505 () Bool)

(declare-fun tp!1774323 () Bool)

(assert (=> b!6373707 (= e!3869505 tp!1774323)))

(declare-fun b!6373708 () Bool)

(declare-fun tp!1774322 () Bool)

(declare-fun tp!1774326 () Bool)

(assert (=> b!6373708 (= e!3869505 (and tp!1774322 tp!1774326))))

(declare-fun b!6373705 () Bool)

(assert (=> b!6373705 (= e!3869505 tp_is_empty!41819)))

(declare-fun b!6373706 () Bool)

(declare-fun tp!1774325 () Bool)

(declare-fun tp!1774324 () Bool)

(assert (=> b!6373706 (= e!3869505 (and tp!1774325 tp!1774324))))

(assert (=> b!6372500 (= tp!1773985 e!3869505)))

(assert (= (and b!6372500 ((_ is ElementMatch!16283) (regOne!33079 (regTwo!33078 r!7292)))) b!6373705))

(assert (= (and b!6372500 ((_ is Concat!25128) (regOne!33079 (regTwo!33078 r!7292)))) b!6373706))

(assert (= (and b!6372500 ((_ is Star!16283) (regOne!33079 (regTwo!33078 r!7292)))) b!6373707))

(assert (= (and b!6372500 ((_ is Union!16283) (regOne!33079 (regTwo!33078 r!7292)))) b!6373708))

(declare-fun b!6373711 () Bool)

(declare-fun e!3869506 () Bool)

(declare-fun tp!1774328 () Bool)

(assert (=> b!6373711 (= e!3869506 tp!1774328)))

(declare-fun b!6373712 () Bool)

(declare-fun tp!1774327 () Bool)

(declare-fun tp!1774331 () Bool)

(assert (=> b!6373712 (= e!3869506 (and tp!1774327 tp!1774331))))

(declare-fun b!6373709 () Bool)

(assert (=> b!6373709 (= e!3869506 tp_is_empty!41819)))

(declare-fun b!6373710 () Bool)

(declare-fun tp!1774330 () Bool)

(declare-fun tp!1774329 () Bool)

(assert (=> b!6373710 (= e!3869506 (and tp!1774330 tp!1774329))))

(assert (=> b!6372500 (= tp!1773989 e!3869506)))

(assert (= (and b!6372500 ((_ is ElementMatch!16283) (regTwo!33079 (regTwo!33078 r!7292)))) b!6373709))

(assert (= (and b!6372500 ((_ is Concat!25128) (regTwo!33079 (regTwo!33078 r!7292)))) b!6373710))

(assert (= (and b!6372500 ((_ is Star!16283) (regTwo!33079 (regTwo!33078 r!7292)))) b!6373711))

(assert (= (and b!6372500 ((_ is Union!16283) (regTwo!33079 (regTwo!33078 r!7292)))) b!6373712))

(declare-fun b!6373715 () Bool)

(declare-fun e!3869507 () Bool)

(declare-fun tp!1774333 () Bool)

(assert (=> b!6373715 (= e!3869507 tp!1774333)))

(declare-fun b!6373716 () Bool)

(declare-fun tp!1774332 () Bool)

(declare-fun tp!1774336 () Bool)

(assert (=> b!6373716 (= e!3869507 (and tp!1774332 tp!1774336))))

(declare-fun b!6373713 () Bool)

(assert (=> b!6373713 (= e!3869507 tp_is_empty!41819)))

(declare-fun b!6373714 () Bool)

(declare-fun tp!1774335 () Bool)

(declare-fun tp!1774334 () Bool)

(assert (=> b!6373714 (= e!3869507 (and tp!1774335 tp!1774334))))

(assert (=> b!6372506 (= tp!1773996 e!3869507)))

(assert (= (and b!6372506 ((_ is ElementMatch!16283) (h!71472 (exprs!6167 (h!71474 zl!343))))) b!6373713))

(assert (= (and b!6372506 ((_ is Concat!25128) (h!71472 (exprs!6167 (h!71474 zl!343))))) b!6373714))

(assert (= (and b!6372506 ((_ is Star!16283) (h!71472 (exprs!6167 (h!71474 zl!343))))) b!6373715))

(assert (= (and b!6372506 ((_ is Union!16283) (h!71472 (exprs!6167 (h!71474 zl!343))))) b!6373716))

(declare-fun b!6373717 () Bool)

(declare-fun e!3869508 () Bool)

(declare-fun tp!1774337 () Bool)

(declare-fun tp!1774338 () Bool)

(assert (=> b!6373717 (= e!3869508 (and tp!1774337 tp!1774338))))

(assert (=> b!6372506 (= tp!1773997 e!3869508)))

(assert (= (and b!6372506 ((_ is Cons!65024) (t!378748 (exprs!6167 (h!71474 zl!343))))) b!6373717))

(declare-fun condSetEmpty!43464 () Bool)

(assert (=> setNonEmpty!43454 (= condSetEmpty!43464 (= setRest!43454 ((as const (Array Context!11334 Bool)) false)))))

(declare-fun setRes!43464 () Bool)

(assert (=> setNonEmpty!43454 (= tp!1774018 setRes!43464)))

(declare-fun setIsEmpty!43464 () Bool)

(assert (=> setIsEmpty!43464 setRes!43464))

(declare-fun e!3869509 () Bool)

(declare-fun setNonEmpty!43464 () Bool)

(declare-fun setElem!43464 () Context!11334)

(declare-fun tp!1774340 () Bool)

(assert (=> setNonEmpty!43464 (= setRes!43464 (and tp!1774340 (inv!83954 setElem!43464) e!3869509))))

(declare-fun setRest!43464 () (InoxSet Context!11334))

(assert (=> setNonEmpty!43464 (= setRest!43454 ((_ map or) (store ((as const (Array Context!11334 Bool)) false) setElem!43464 true) setRest!43464))))

(declare-fun b!6373718 () Bool)

(declare-fun tp!1774339 () Bool)

(assert (=> b!6373718 (= e!3869509 tp!1774339)))

(assert (= (and setNonEmpty!43454 condSetEmpty!43464) setIsEmpty!43464))

(assert (= (and setNonEmpty!43454 (not condSetEmpty!43464)) setNonEmpty!43464))

(assert (= setNonEmpty!43464 b!6373718))

(declare-fun m!7175888 () Bool)

(assert (=> setNonEmpty!43464 m!7175888))

(declare-fun b!6373719 () Bool)

(declare-fun e!3869510 () Bool)

(declare-fun tp!1774341 () Bool)

(declare-fun tp!1774342 () Bool)

(assert (=> b!6373719 (= e!3869510 (and tp!1774341 tp!1774342))))

(assert (=> b!6372523 (= tp!1774017 e!3869510)))

(assert (= (and b!6372523 ((_ is Cons!65024) (exprs!6167 setElem!43454))) b!6373719))

(declare-fun b_lambda!242205 () Bool)

(assert (= b_lambda!242203 (or b!6371763 b_lambda!242205)))

(assert (=> d!1998913 d!1998473))

(declare-fun b_lambda!242207 () Bool)

(assert (= b_lambda!242189 (or d!1998407 b_lambda!242207)))

(declare-fun bs!1596154 () Bool)

(declare-fun d!1998959 () Bool)

(assert (= bs!1596154 (and d!1998959 d!1998407)))

(assert (=> bs!1596154 (= (dynLambda!25799 lambda!351241 (h!71472 (exprs!6167 lt!2368473))) (validRegex!8019 (h!71472 (exprs!6167 lt!2368473))))))

(declare-fun m!7175890 () Bool)

(assert (=> bs!1596154 m!7175890))

(assert (=> b!6373151 d!1998959))

(declare-fun b_lambda!242209 () Bool)

(assert (= b_lambda!242195 (or d!1998421 b_lambda!242209)))

(declare-fun bs!1596155 () Bool)

(declare-fun d!1998961 () Bool)

(assert (= bs!1596155 (and d!1998961 d!1998421)))

(assert (=> bs!1596155 (= (dynLambda!25799 lambda!351250 (h!71472 (exprs!6167 (h!71474 zl!343)))) (validRegex!8019 (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(declare-fun m!7175892 () Bool)

(assert (=> bs!1596155 m!7175892))

(assert (=> b!6373243 d!1998961))

(declare-fun b_lambda!242211 () Bool)

(assert (= b_lambda!242191 (or d!1998343 b_lambda!242211)))

(declare-fun bs!1596156 () Bool)

(declare-fun d!1998963 () Bool)

(assert (= bs!1596156 (and d!1998963 d!1998343)))

(assert (=> bs!1596156 (= (dynLambda!25799 lambda!351220 (h!71472 (exprs!6167 (h!71474 zl!343)))) (validRegex!8019 (h!71472 (exprs!6167 (h!71474 zl!343)))))))

(assert (=> bs!1596156 m!7175892))

(assert (=> b!6373155 d!1998963))

(declare-fun b_lambda!242213 () Bool)

(assert (= b_lambda!242197 (or d!1998393 b_lambda!242213)))

(declare-fun bs!1596157 () Bool)

(declare-fun d!1998965 () Bool)

(assert (= bs!1596157 (and d!1998965 d!1998393)))

(assert (=> bs!1596157 (= (dynLambda!25799 lambda!351239 (h!71472 lt!2368530)) (validRegex!8019 (h!71472 lt!2368530)))))

(declare-fun m!7175894 () Bool)

(assert (=> bs!1596157 m!7175894))

(assert (=> b!6373267 d!1998965))

(declare-fun b_lambda!242215 () Bool)

(assert (= b_lambda!242193 (or d!1998389 b_lambda!242215)))

(declare-fun bs!1596158 () Bool)

(declare-fun d!1998967 () Bool)

(assert (= bs!1596158 (and d!1998967 d!1998389)))

(assert (=> bs!1596158 (= (dynLambda!25799 lambda!351236 (h!71472 (unfocusZipperList!1704 zl!343))) (validRegex!8019 (h!71472 (unfocusZipperList!1704 zl!343))))))

(declare-fun m!7175896 () Bool)

(assert (=> bs!1596158 m!7175896))

(assert (=> b!6373183 d!1998967))

(declare-fun b_lambda!242217 () Bool)

(assert (= b_lambda!242201 (or b!6371763 b_lambda!242217)))

(assert (=> d!1998845 d!1998471))

(declare-fun b_lambda!242219 () Bool)

(assert (= b_lambda!242199 (or d!1998399 b_lambda!242219)))

(declare-fun bs!1596159 () Bool)

(declare-fun d!1998969 () Bool)

(assert (= bs!1596159 (and d!1998969 d!1998399)))

(assert (=> bs!1596159 (= (dynLambda!25799 lambda!351240 (h!71472 (exprs!6167 setElem!43448))) (validRegex!8019 (h!71472 (exprs!6167 setElem!43448))))))

(declare-fun m!7175898 () Bool)

(assert (=> bs!1596159 m!7175898))

(assert (=> b!6373293 d!1998969))

(check-sat (not b!6373629) (not d!1998851) (not bm!544334) (not b!6373139) (not b!6373178) (not bm!544346) (not b!6373679) (not b!6373487) (not d!1998749) (not bm!544313) (not bm!544359) (not bm!544387) (not b!6373600) (not b!6373434) (not b!6373315) (not b!6373519) (not b!6373715) (not b!6373415) (not bm!544303) (not b!6373719) (not b_lambda!242153) (not setNonEmpty!43464) (not bm!544348) (not d!1998875) (not d!1998859) (not b!6373325) (not b!6373687) (not b!6373623) (not bm!544339) (not d!1998729) (not d!1998755) (not d!1998913) (not b!6373664) (not bm!544340) (not b!6373694) (not b!6373330) (not b!6373696) (not bm!544327) (not b!6373224) (not b!6373716) (not b!6373244) (not b!6373184) (not b!6373322) (not b!6373201) (not b!6373660) (not bm!544377) (not b!6373131) (not b!6373171) (not b!6373717) (not bs!1596158) (not bm!544301) (not bs!1596157) (not bm!544360) (not b!6373710) (not bm!544365) (not d!1998901) (not setNonEmpty!43463) (not b!6373480) (not b!6373187) (not b!6373364) (not b!6373632) (not b!6373616) (not b!6373316) (not b!6373211) (not b!6373428) (not d!1998727) (not b!6373628) (not b!6373672) (not bm!544383) (not bm!544400) (not d!1998779) (not bm!544328) (not d!1998809) (not b!6373598) (not bm!544405) (not b!6373512) (not b!6373711) (not b!6373703) (not b!6373494) (not d!1998931) (not d!1998899) (not b!6373718) (not bm!544307) (not b!6373488) (not b!6373375) (not b!6373613) (not b!6373624) (not b!6373320) (not b!6373429) (not b!6373684) (not b!6373154) (not b!6373666) (not d!1998845) (not b!6373644) (not b_lambda!242209) (not b!6373334) (not bm!544396) (not b!6373333) (not b!6373633) (not b!6373437) (not bm!544374) (not bm!544310) (not d!1998921) (not d!1998945) (not bm!544354) (not bm!544388) (not bm!544338) (not b!6373231) (not b!6373702) (not b!6373639) (not b!6373423) (not b!6373674) (not b!6373152) (not b_lambda!242207) (not b!6373595) (not bm!544408) (not b!6373621) (not b!6373671) (not d!1998843) (not bm!544353) (not d!1998919) (not b!6373706) (not bm!544413) (not d!1998911) (not b!6373615) (not b!6373321) (not b!6373541) (not b!6373708) (not b!6373318) (not b!6373374) (not b!6373336) (not d!1998733) (not b!6373641) (not bm!544333) (not b!6373627) (not b!6373172) (not b!6373348) (not bm!544355) (not b!6373707) (not b!6373668) (not b_lambda!242205) (not b!6373153) (not bs!1596154) (not d!1998769) (not b!6373659) (not b!6373594) (not b!6373440) (not b!6373637) (not b!6373327) (not bm!544329) (not bm!544344) (not b!6373625) (not b!6373212) (not b!6373675) (not d!1998787) (not b!6373483) (not b!6373645) (not bm!544381) (not b!6373270) (not b!6373210) (not bm!544345) (not b!6373245) (not b!6373617) (not d!1998893) (not b!6373365) (not b!6373649) (not b!6373636) (not b!6373536) tp_is_empty!41819 (not d!1998879) (not b!6373611) (not b!6373481) (not b!6373328) (not d!1998723) (not b!6373599) (not b!6373144) (not b!6373521) (not b!6373324) (not bm!544412) (not bm!544392) (not b!6373393) (not bm!544349) (not b!6373662) (not d!1998735) (not b_lambda!242219) (not b!6373596) (not b!6373653) (not b!6373298) (not b!6373305) (not b!6373620) (not b!6373542) (not b!6373640) (not b!6373682) (not d!1998943) (not b!6373378) (not b!6373282) (not b!6373698) (not b!6373647) (not b!6373712) (not b!6373226) (not d!1998761) (not d!1998891) (not b!6373651) (not b!6373663) (not b!6373643) (not d!1998867) (not d!1998905) (not bm!544378) (not b!6373544) (not b!6373310) (not d!1998783) (not bm!544332) (not b!6373652) (not bm!544414) (not b!6373332) (not bm!544350) (not b!6373537) (not b!6373350) (not d!1998839) (not b!6373268) (not b!6373448) (not b!6373217) (not bm!544312) (not b!6373692) (not b!6373683) (not bm!544361) (not b!6373583) (not b!6373606) (not bm!544364) (not b!6373688) (not d!1998887) (not b!6373232) (not d!1998747) (not b!6373676) (not b!6373667) (not b!6373511) (not bm!544404) (not d!1998909) (not b!6373656) (not b!6373601) (not bm!544363) (not b!6373648) (not bm!544391) (not d!1998853) (not b_lambda!242215) (not b_lambda!242213) (not bm!544304) (not b!6373142) (not b!6373704) (not b!6373269) (not b!6373657) (not b!6373218) (not b!6373522) (not b!6373612) (not b!6373543) (not b!6373607) (not b!6373635) (not b!6373690) (not b!6373294) (not bm!544323) (not b!6373695) (not b!6373135) (not d!1998777) (not bs!1596159) (not b!6373496) (not b!6373691) (not b!6373680) (not b!6373192) (not setNonEmpty!43462) (not bm!544382) (not b!6373441) (not d!1998885) (not b!6373140) (not bm!544321) (not b!6373678) (not bm!544324) (not b!6373421) (not b!6373699) (not b!6373486) (not b!6373520) (not b!6373156) (not b!6373404) (not b!6373670) (not b!6373369) (not b!6373565) (not b!6373700) (not b!6373493) (not d!1998801) (not b!6373609) (not b_lambda!242211) (not bm!544306) (not d!1998877) (not b_lambda!242155) (not b!6373349) (not b!6373418) (not b!6373384) (not b!6373442) (not bm!544309) (not b!6373225) (not d!1998833) (not b!6373274) (not bm!544406) (not bs!1596155) (not b!6373604) (not bm!544409) (not d!1998745) (not b!6373136) (not b!6373146) (not d!1998829) (not bm!544315) (not b!6373686) (not d!1998775) (not b!6373238) (not bm!544395) (not bm!544314) (not b!6373619) (not bs!1596156) (not d!1998873) (not b!6373132) (not d!1998903) (not b!6373658) (not d!1998837) (not d!1998895) (not d!1998791) (not d!1998789) (not b!6373337) (not b!6373221) (not b!6373143) (not b!6373161) (not bm!544397) (not d!1998957) (not d!1998807) (not b!6373447) (not bm!544389) (not bm!544331) (not b!6373608) (not b!6373655) (not b!6373370) (not d!1998861) (not bm!544322) (not b!6373435) (not b!6373560) (not b!6373207) (not b!6373545) (not b_lambda!242217) (not bm!544300) (not b!6373281) (not b!6373473) (not b!6373714) (not bm!544399) (not b!6373631) (not d!1998725) (not b!6373422))
(check-sat)
