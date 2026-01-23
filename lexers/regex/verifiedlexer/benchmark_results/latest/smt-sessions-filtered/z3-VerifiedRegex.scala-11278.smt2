; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!593928 () Bool)

(assert start!593928)

(declare-fun b!5790404 () Bool)

(assert (=> b!5790404 true))

(assert (=> b!5790404 true))

(declare-fun lambda!315760 () Int)

(declare-fun lambda!315759 () Int)

(assert (=> b!5790404 (not (= lambda!315760 lambda!315759))))

(assert (=> b!5790404 true))

(assert (=> b!5790404 true))

(declare-fun lambda!315761 () Int)

(assert (=> b!5790404 (not (= lambda!315761 lambda!315759))))

(assert (=> b!5790404 (not (= lambda!315761 lambda!315760))))

(assert (=> b!5790404 true))

(assert (=> b!5790404 true))

(declare-fun b!5790413 () Bool)

(assert (=> b!5790413 true))

(declare-fun b!5790394 () Bool)

(declare-fun res!2443194 () Bool)

(declare-fun e!3556048 () Bool)

(assert (=> b!5790394 (=> res!2443194 e!3556048)))

(declare-datatypes ((C!31876 0))(
  ( (C!31877 (val!25640 Int)) )
))
(declare-datatypes ((Regex!15803 0))(
  ( (ElementMatch!15803 (c!1025273 C!31876)) (Concat!24648 (regOne!32118 Regex!15803) (regTwo!32118 Regex!15803)) (EmptyExpr!15803) (Star!15803 (reg!16132 Regex!15803)) (EmptyLang!15803) (Union!15803 (regOne!32119 Regex!15803) (regTwo!32119 Regex!15803)) )
))
(declare-fun r!7292 () Regex!15803)

(declare-datatypes ((List!63708 0))(
  ( (Nil!63584) (Cons!63584 (h!70032 Regex!15803) (t!377053 List!63708)) )
))
(declare-datatypes ((Context!10374 0))(
  ( (Context!10375 (exprs!5687 List!63708)) )
))
(declare-datatypes ((List!63709 0))(
  ( (Nil!63585) (Cons!63585 (h!70033 Context!10374) (t!377054 List!63709)) )
))
(declare-fun zl!343 () List!63709)

(declare-fun generalisedUnion!1666 (List!63708) Regex!15803)

(declare-fun unfocusZipperList!1231 (List!63709) List!63708)

(assert (=> b!5790394 (= res!2443194 (not (= r!7292 (generalisedUnion!1666 (unfocusZipperList!1231 zl!343)))))))

(declare-fun b!5790395 () Bool)

(declare-fun e!3556045 () Bool)

(declare-fun tp!1597483 () Bool)

(declare-fun tp!1597490 () Bool)

(assert (=> b!5790395 (= e!3556045 (and tp!1597483 tp!1597490))))

(declare-fun b!5790396 () Bool)

(declare-fun e!3556053 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2297009 () (InoxSet Context!10374))

(declare-datatypes ((List!63710 0))(
  ( (Nil!63586) (Cons!63586 (h!70034 C!31876) (t!377055 List!63710)) )
))
(declare-fun s!2326 () List!63710)

(declare-fun matchZipper!1931 ((InoxSet Context!10374) List!63710) Bool)

(declare-fun derivationStepZipper!1872 ((InoxSet Context!10374) C!31876) (InoxSet Context!10374))

(assert (=> b!5790396 (= e!3556053 (= (matchZipper!1931 lt!2297009 s!2326) (matchZipper!1931 (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326)) (t!377055 s!2326))))))

(declare-fun b!5790397 () Bool)

(declare-fun e!3556050 () Bool)

(declare-fun e!3556046 () Bool)

(assert (=> b!5790397 (= e!3556050 e!3556046)))

(declare-fun res!2443188 () Bool)

(assert (=> b!5790397 (=> res!2443188 e!3556046)))

(declare-fun lt!2297018 () (InoxSet Context!10374))

(declare-fun lt!2297013 () (InoxSet Context!10374))

(assert (=> b!5790397 (= res!2443188 (not (= lt!2297018 lt!2297013)))))

(declare-fun derivationStepZipperDown!1141 (Regex!15803 Context!10374 C!31876) (InoxSet Context!10374))

(assert (=> b!5790397 (= lt!2297013 (derivationStepZipperDown!1141 r!7292 (Context!10375 Nil!63584) (h!70034 s!2326)))))

(declare-fun derivationStepZipperUp!1067 (Context!10374 C!31876) (InoxSet Context!10374))

(assert (=> b!5790397 (= lt!2297018 (derivationStepZipperUp!1067 (Context!10375 (Cons!63584 r!7292 Nil!63584)) (h!70034 s!2326)))))

(declare-fun lt!2297010 () (InoxSet Context!10374))

(declare-fun z!1189 () (InoxSet Context!10374))

(assert (=> b!5790397 (= lt!2297010 (derivationStepZipper!1872 z!1189 (h!70034 s!2326)))))

(declare-fun setIsEmpty!38922 () Bool)

(declare-fun setRes!38922 () Bool)

(assert (=> setIsEmpty!38922 setRes!38922))

(declare-fun b!5790398 () Bool)

(declare-fun res!2443191 () Bool)

(assert (=> b!5790398 (=> res!2443191 e!3556048)))

(declare-fun isEmpty!35491 (List!63709) Bool)

(assert (=> b!5790398 (= res!2443191 (not (isEmpty!35491 (t!377054 zl!343))))))

(declare-fun b!5790399 () Bool)

(declare-fun e!3556043 () Bool)

(declare-fun tp!1597491 () Bool)

(assert (=> b!5790399 (= e!3556043 tp!1597491)))

(declare-fun b!5790400 () Bool)

(declare-fun res!2443183 () Bool)

(declare-fun e!3556052 () Bool)

(assert (=> b!5790400 (=> (not res!2443183) (not e!3556052))))

(declare-fun toList!9587 ((InoxSet Context!10374)) List!63709)

(assert (=> b!5790400 (= res!2443183 (= (toList!9587 z!1189) zl!343))))

(declare-fun b!5790401 () Bool)

(declare-fun res!2443182 () Bool)

(assert (=> b!5790401 (=> (not res!2443182) (not e!3556052))))

(declare-fun unfocusZipper!1545 (List!63709) Regex!15803)

(assert (=> b!5790401 (= res!2443182 (= r!7292 (unfocusZipper!1545 zl!343)))))

(declare-fun e!3556042 () Bool)

(declare-fun tp!1597489 () Bool)

(declare-fun setNonEmpty!38922 () Bool)

(declare-fun setElem!38922 () Context!10374)

(declare-fun inv!82754 (Context!10374) Bool)

(assert (=> setNonEmpty!38922 (= setRes!38922 (and tp!1597489 (inv!82754 setElem!38922) e!3556042))))

(declare-fun setRest!38922 () (InoxSet Context!10374))

(assert (=> setNonEmpty!38922 (= z!1189 ((_ map or) (store ((as const (Array Context!10374 Bool)) false) setElem!38922 true) setRest!38922))))

(declare-fun b!5790402 () Bool)

(declare-fun res!2443189 () Bool)

(assert (=> b!5790402 (=> res!2443189 e!3556048)))

(declare-fun generalisedConcat!1418 (List!63708) Regex!15803)

(assert (=> b!5790402 (= res!2443189 (not (= r!7292 (generalisedConcat!1418 (exprs!5687 (h!70033 zl!343))))))))

(declare-fun b!5790403 () Bool)

(declare-fun e!3556051 () Bool)

(assert (=> b!5790403 (= e!3556051 e!3556053)))

(declare-fun res!2443186 () Bool)

(assert (=> b!5790403 (=> res!2443186 e!3556053)))

(declare-fun lt!2297014 () List!63708)

(assert (=> b!5790403 (= res!2443186 (not (= lt!2297010 (derivationStepZipperDown!1141 (reg!16132 r!7292) (Context!10375 lt!2297014) (h!70034 s!2326)))))))

(declare-fun lt!2297012 () Context!10374)

(declare-fun lambda!315762 () Int)

(declare-fun flatMap!1410 ((InoxSet Context!10374) Int) (InoxSet Context!10374))

(assert (=> b!5790403 (= (flatMap!1410 lt!2297009 lambda!315762) (derivationStepZipperUp!1067 lt!2297012 (h!70034 s!2326)))))

(declare-datatypes ((Unit!156866 0))(
  ( (Unit!156867) )
))
(declare-fun lt!2297007 () Unit!156866)

(declare-fun lemmaFlatMapOnSingletonSet!942 ((InoxSet Context!10374) Context!10374 Int) Unit!156866)

(assert (=> b!5790403 (= lt!2297007 (lemmaFlatMapOnSingletonSet!942 lt!2297009 lt!2297012 lambda!315762))))

(declare-fun lt!2297004 () (InoxSet Context!10374))

(assert (=> b!5790403 (= lt!2297004 (derivationStepZipperUp!1067 lt!2297012 (h!70034 s!2326)))))

(assert (=> b!5790403 (= lt!2297009 (store ((as const (Array Context!10374 Bool)) false) lt!2297012 true))))

(assert (=> b!5790403 (= lt!2297012 (Context!10375 (Cons!63584 (reg!16132 r!7292) lt!2297014)))))

(assert (=> b!5790403 (= lt!2297014 (Cons!63584 r!7292 Nil!63584))))

(assert (=> b!5790404 (= e!3556048 e!3556050)))

(declare-fun res!2443193 () Bool)

(assert (=> b!5790404 (=> res!2443193 e!3556050)))

(declare-fun lt!2297017 () Bool)

(declare-fun e!3556044 () Bool)

(assert (=> b!5790404 (= res!2443193 (not (= lt!2297017 e!3556044)))))

(declare-fun res!2443192 () Bool)

(assert (=> b!5790404 (=> res!2443192 e!3556044)))

(declare-fun isEmpty!35492 (List!63710) Bool)

(assert (=> b!5790404 (= res!2443192 (isEmpty!35492 s!2326))))

(declare-fun Exists!2903 (Int) Bool)

(assert (=> b!5790404 (= (Exists!2903 lambda!315759) (Exists!2903 lambda!315761))))

(declare-fun lt!2297011 () Unit!156866)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1532 (Regex!15803 Regex!15803 List!63710) Unit!156866)

(assert (=> b!5790404 (= lt!2297011 (lemmaExistCutMatchRandMatchRSpecEquivalent!1532 (reg!16132 r!7292) r!7292 s!2326))))

(assert (=> b!5790404 (= (Exists!2903 lambda!315759) (Exists!2903 lambda!315760))))

(declare-fun lt!2297008 () Unit!156866)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!584 (Regex!15803 List!63710) Unit!156866)

(assert (=> b!5790404 (= lt!2297008 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!584 (reg!16132 r!7292) s!2326))))

(declare-fun lt!2297016 () Bool)

(assert (=> b!5790404 (= lt!2297016 (Exists!2903 lambda!315759))))

(declare-datatypes ((tuple2!65800 0))(
  ( (tuple2!65801 (_1!36203 List!63710) (_2!36203 List!63710)) )
))
(declare-datatypes ((Option!15812 0))(
  ( (None!15811) (Some!15811 (v!51871 tuple2!65800)) )
))
(declare-fun isDefined!12515 (Option!15812) Bool)

(declare-fun findConcatSeparation!2226 (Regex!15803 Regex!15803 List!63710 List!63710 List!63710) Option!15812)

(assert (=> b!5790404 (= lt!2297016 (isDefined!12515 (findConcatSeparation!2226 (reg!16132 r!7292) r!7292 Nil!63586 s!2326 s!2326)))))

(declare-fun lt!2297006 () Unit!156866)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1990 (Regex!15803 Regex!15803 List!63710) Unit!156866)

(assert (=> b!5790404 (= lt!2297006 (lemmaFindConcatSeparationEquivalentToExists!1990 (reg!16132 r!7292) r!7292 s!2326))))

(declare-fun b!5790405 () Bool)

(assert (=> b!5790405 (= e!3556052 (not e!3556048))))

(declare-fun res!2443185 () Bool)

(assert (=> b!5790405 (=> res!2443185 e!3556048)))

(get-info :version)

(assert (=> b!5790405 (= res!2443185 (not ((_ is Cons!63585) zl!343)))))

(declare-fun matchRSpec!2906 (Regex!15803 List!63710) Bool)

(assert (=> b!5790405 (= lt!2297017 (matchRSpec!2906 r!7292 s!2326))))

(declare-fun matchR!7988 (Regex!15803 List!63710) Bool)

(assert (=> b!5790405 (= lt!2297017 (matchR!7988 r!7292 s!2326))))

(declare-fun lt!2297015 () Unit!156866)

(declare-fun mainMatchTheorem!2906 (Regex!15803 List!63710) Unit!156866)

(assert (=> b!5790405 (= lt!2297015 (mainMatchTheorem!2906 r!7292 s!2326))))

(declare-fun res!2443184 () Bool)

(assert (=> start!593928 (=> (not res!2443184) (not e!3556052))))

(declare-fun validRegex!7539 (Regex!15803) Bool)

(assert (=> start!593928 (= res!2443184 (validRegex!7539 r!7292))))

(assert (=> start!593928 e!3556052))

(assert (=> start!593928 e!3556045))

(declare-fun condSetEmpty!38922 () Bool)

(assert (=> start!593928 (= condSetEmpty!38922 (= z!1189 ((as const (Array Context!10374 Bool)) false)))))

(assert (=> start!593928 setRes!38922))

(declare-fun e!3556047 () Bool)

(assert (=> start!593928 e!3556047))

(declare-fun e!3556049 () Bool)

(assert (=> start!593928 e!3556049))

(declare-fun b!5790406 () Bool)

(declare-fun res!2443180 () Bool)

(assert (=> b!5790406 (=> res!2443180 e!3556048)))

(assert (=> b!5790406 (= res!2443180 (or ((_ is EmptyExpr!15803) r!7292) ((_ is EmptyLang!15803) r!7292) ((_ is ElementMatch!15803) r!7292) ((_ is Union!15803) r!7292) ((_ is Concat!24648) r!7292)))))

(declare-fun b!5790407 () Bool)

(declare-fun res!2443190 () Bool)

(assert (=> b!5790407 (=> res!2443190 e!3556050)))

(assert (=> b!5790407 (= res!2443190 ((_ is Nil!63586) s!2326))))

(declare-fun b!5790408 () Bool)

(declare-fun tp!1597488 () Bool)

(assert (=> b!5790408 (= e!3556047 (and (inv!82754 (h!70033 zl!343)) e!3556043 tp!1597488))))

(declare-fun b!5790409 () Bool)

(declare-fun tp_is_empty!40859 () Bool)

(assert (=> b!5790409 (= e!3556045 tp_is_empty!40859)))

(declare-fun b!5790410 () Bool)

(declare-fun tp!1597487 () Bool)

(assert (=> b!5790410 (= e!3556042 tp!1597487)))

(declare-fun b!5790411 () Bool)

(assert (=> b!5790411 (= e!3556044 lt!2297016)))

(declare-fun b!5790412 () Bool)

(declare-fun tp!1597492 () Bool)

(assert (=> b!5790412 (= e!3556049 (and tp_is_empty!40859 tp!1597492))))

(assert (=> b!5790413 (= e!3556046 e!3556051)))

(declare-fun res!2443181 () Bool)

(assert (=> b!5790413 (=> res!2443181 e!3556051)))

(assert (=> b!5790413 (= res!2443181 (not (= lt!2297010 lt!2297013)))))

(assert (=> b!5790413 (= (flatMap!1410 z!1189 lambda!315762) (derivationStepZipperUp!1067 (h!70033 zl!343) (h!70034 s!2326)))))

(declare-fun lt!2297005 () Unit!156866)

(assert (=> b!5790413 (= lt!2297005 (lemmaFlatMapOnSingletonSet!942 z!1189 (h!70033 zl!343) lambda!315762))))

(declare-fun b!5790414 () Bool)

(declare-fun tp!1597484 () Bool)

(assert (=> b!5790414 (= e!3556045 tp!1597484)))

(declare-fun b!5790415 () Bool)

(declare-fun res!2443187 () Bool)

(assert (=> b!5790415 (=> res!2443187 e!3556048)))

(assert (=> b!5790415 (= res!2443187 (not ((_ is Cons!63584) (exprs!5687 (h!70033 zl!343)))))))

(declare-fun b!5790416 () Bool)

(declare-fun tp!1597486 () Bool)

(declare-fun tp!1597485 () Bool)

(assert (=> b!5790416 (= e!3556045 (and tp!1597486 tp!1597485))))

(assert (= (and start!593928 res!2443184) b!5790400))

(assert (= (and b!5790400 res!2443183) b!5790401))

(assert (= (and b!5790401 res!2443182) b!5790405))

(assert (= (and b!5790405 (not res!2443185)) b!5790398))

(assert (= (and b!5790398 (not res!2443191)) b!5790402))

(assert (= (and b!5790402 (not res!2443189)) b!5790415))

(assert (= (and b!5790415 (not res!2443187)) b!5790394))

(assert (= (and b!5790394 (not res!2443194)) b!5790406))

(assert (= (and b!5790406 (not res!2443180)) b!5790404))

(assert (= (and b!5790404 (not res!2443192)) b!5790411))

(assert (= (and b!5790404 (not res!2443193)) b!5790407))

(assert (= (and b!5790407 (not res!2443190)) b!5790397))

(assert (= (and b!5790397 (not res!2443188)) b!5790413))

(assert (= (and b!5790413 (not res!2443181)) b!5790403))

(assert (= (and b!5790403 (not res!2443186)) b!5790396))

(assert (= (and start!593928 ((_ is ElementMatch!15803) r!7292)) b!5790409))

(assert (= (and start!593928 ((_ is Concat!24648) r!7292)) b!5790395))

(assert (= (and start!593928 ((_ is Star!15803) r!7292)) b!5790414))

(assert (= (and start!593928 ((_ is Union!15803) r!7292)) b!5790416))

(assert (= (and start!593928 condSetEmpty!38922) setIsEmpty!38922))

(assert (= (and start!593928 (not condSetEmpty!38922)) setNonEmpty!38922))

(assert (= setNonEmpty!38922 b!5790410))

(assert (= b!5790408 b!5790399))

(assert (= (and start!593928 ((_ is Cons!63585) zl!343)) b!5790408))

(assert (= (and start!593928 ((_ is Cons!63586) s!2326)) b!5790412))

(declare-fun m!6733870 () Bool)

(assert (=> b!5790394 m!6733870))

(assert (=> b!5790394 m!6733870))

(declare-fun m!6733872 () Bool)

(assert (=> b!5790394 m!6733872))

(declare-fun m!6733874 () Bool)

(assert (=> b!5790400 m!6733874))

(declare-fun m!6733876 () Bool)

(assert (=> b!5790413 m!6733876))

(declare-fun m!6733878 () Bool)

(assert (=> b!5790413 m!6733878))

(declare-fun m!6733880 () Bool)

(assert (=> b!5790413 m!6733880))

(declare-fun m!6733882 () Bool)

(assert (=> b!5790401 m!6733882))

(declare-fun m!6733884 () Bool)

(assert (=> b!5790396 m!6733884))

(declare-fun m!6733886 () Bool)

(assert (=> b!5790396 m!6733886))

(assert (=> b!5790396 m!6733886))

(declare-fun m!6733888 () Bool)

(assert (=> b!5790396 m!6733888))

(declare-fun m!6733890 () Bool)

(assert (=> b!5790403 m!6733890))

(declare-fun m!6733892 () Bool)

(assert (=> b!5790403 m!6733892))

(declare-fun m!6733894 () Bool)

(assert (=> b!5790403 m!6733894))

(declare-fun m!6733896 () Bool)

(assert (=> b!5790403 m!6733896))

(declare-fun m!6733898 () Bool)

(assert (=> b!5790403 m!6733898))

(declare-fun m!6733900 () Bool)

(assert (=> b!5790405 m!6733900))

(declare-fun m!6733902 () Bool)

(assert (=> b!5790405 m!6733902))

(declare-fun m!6733904 () Bool)

(assert (=> b!5790405 m!6733904))

(declare-fun m!6733906 () Bool)

(assert (=> b!5790404 m!6733906))

(declare-fun m!6733908 () Bool)

(assert (=> b!5790404 m!6733908))

(declare-fun m!6733910 () Bool)

(assert (=> b!5790404 m!6733910))

(assert (=> b!5790404 m!6733906))

(declare-fun m!6733912 () Bool)

(assert (=> b!5790404 m!6733912))

(assert (=> b!5790404 m!6733906))

(declare-fun m!6733914 () Bool)

(assert (=> b!5790404 m!6733914))

(declare-fun m!6733916 () Bool)

(assert (=> b!5790404 m!6733916))

(declare-fun m!6733918 () Bool)

(assert (=> b!5790404 m!6733918))

(assert (=> b!5790404 m!6733918))

(declare-fun m!6733920 () Bool)

(assert (=> b!5790404 m!6733920))

(declare-fun m!6733922 () Bool)

(assert (=> b!5790404 m!6733922))

(declare-fun m!6733924 () Bool)

(assert (=> start!593928 m!6733924))

(declare-fun m!6733926 () Bool)

(assert (=> b!5790398 m!6733926))

(declare-fun m!6733928 () Bool)

(assert (=> b!5790397 m!6733928))

(declare-fun m!6733930 () Bool)

(assert (=> b!5790397 m!6733930))

(declare-fun m!6733932 () Bool)

(assert (=> b!5790397 m!6733932))

(declare-fun m!6733934 () Bool)

(assert (=> b!5790402 m!6733934))

(declare-fun m!6733936 () Bool)

(assert (=> b!5790408 m!6733936))

(declare-fun m!6733938 () Bool)

(assert (=> setNonEmpty!38922 m!6733938))

(check-sat (not b!5790412) (not start!593928) tp_is_empty!40859 (not b!5790404) (not setNonEmpty!38922) (not b!5790408) (not b!5790394) (not b!5790402) (not b!5790396) (not b!5790405) (not b!5790416) (not b!5790403) (not b!5790395) (not b!5790397) (not b!5790398) (not b!5790401) (not b!5790400) (not b!5790399) (not b!5790410) (not b!5790413) (not b!5790414))
(check-sat)
(get-model)

(declare-fun d!1824161 () Bool)

(declare-fun lambda!315765 () Int)

(declare-fun forall!14916 (List!63708 Int) Bool)

(assert (=> d!1824161 (= (inv!82754 (h!70033 zl!343)) (forall!14916 (exprs!5687 (h!70033 zl!343)) lambda!315765))))

(declare-fun bs!1366940 () Bool)

(assert (= bs!1366940 d!1824161))

(declare-fun m!6733940 () Bool)

(assert (=> bs!1366940 m!6733940))

(assert (=> b!5790408 d!1824161))

(declare-fun d!1824163 () Bool)

(assert (=> d!1824163 (= (isEmpty!35491 (t!377054 zl!343)) ((_ is Nil!63585) (t!377054 zl!343)))))

(assert (=> b!5790398 d!1824163))

(declare-fun d!1824165 () Bool)

(declare-fun lt!2297021 () Regex!15803)

(assert (=> d!1824165 (validRegex!7539 lt!2297021)))

(assert (=> d!1824165 (= lt!2297021 (generalisedUnion!1666 (unfocusZipperList!1231 zl!343)))))

(assert (=> d!1824165 (= (unfocusZipper!1545 zl!343) lt!2297021)))

(declare-fun bs!1366941 () Bool)

(assert (= bs!1366941 d!1824165))

(declare-fun m!6733942 () Bool)

(assert (=> bs!1366941 m!6733942))

(assert (=> bs!1366941 m!6733870))

(assert (=> bs!1366941 m!6733870))

(assert (=> bs!1366941 m!6733872))

(assert (=> b!5790401 d!1824165))

(declare-fun bs!1366942 () Bool)

(declare-fun d!1824167 () Bool)

(assert (= bs!1366942 (and d!1824167 d!1824161)))

(declare-fun lambda!315766 () Int)

(assert (=> bs!1366942 (= lambda!315766 lambda!315765)))

(assert (=> d!1824167 (= (inv!82754 setElem!38922) (forall!14916 (exprs!5687 setElem!38922) lambda!315766))))

(declare-fun bs!1366943 () Bool)

(assert (= bs!1366943 d!1824167))

(declare-fun m!6733944 () Bool)

(assert (=> bs!1366943 m!6733944))

(assert (=> setNonEmpty!38922 d!1824167))

(declare-fun d!1824169 () Bool)

(declare-fun e!3556056 () Bool)

(assert (=> d!1824169 e!3556056))

(declare-fun res!2443197 () Bool)

(assert (=> d!1824169 (=> (not res!2443197) (not e!3556056))))

(declare-fun lt!2297024 () List!63709)

(declare-fun noDuplicate!1703 (List!63709) Bool)

(assert (=> d!1824169 (= res!2443197 (noDuplicate!1703 lt!2297024))))

(declare-fun choose!43967 ((InoxSet Context!10374)) List!63709)

(assert (=> d!1824169 (= lt!2297024 (choose!43967 z!1189))))

(assert (=> d!1824169 (= (toList!9587 z!1189) lt!2297024)))

(declare-fun b!5790425 () Bool)

(declare-fun content!11631 (List!63709) (InoxSet Context!10374))

(assert (=> b!5790425 (= e!3556056 (= (content!11631 lt!2297024) z!1189))))

(assert (= (and d!1824169 res!2443197) b!5790425))

(declare-fun m!6733946 () Bool)

(assert (=> d!1824169 m!6733946))

(declare-fun m!6733948 () Bool)

(assert (=> d!1824169 m!6733948))

(declare-fun m!6733950 () Bool)

(assert (=> b!5790425 m!6733950))

(assert (=> b!5790400 d!1824169))

(declare-fun bs!1366944 () Bool)

(declare-fun d!1824171 () Bool)

(assert (= bs!1366944 (and d!1824171 d!1824161)))

(declare-fun lambda!315769 () Int)

(assert (=> bs!1366944 (= lambda!315769 lambda!315765)))

(declare-fun bs!1366945 () Bool)

(assert (= bs!1366945 (and d!1824171 d!1824167)))

(assert (=> bs!1366945 (= lambda!315769 lambda!315766)))

(declare-fun b!5790446 () Bool)

(declare-fun e!3556070 () Bool)

(declare-fun lt!2297027 () Regex!15803)

(declare-fun isUnion!721 (Regex!15803) Bool)

(assert (=> b!5790446 (= e!3556070 (isUnion!721 lt!2297027))))

(declare-fun b!5790447 () Bool)

(declare-fun e!3556073 () Regex!15803)

(declare-fun e!3556071 () Regex!15803)

(assert (=> b!5790447 (= e!3556073 e!3556071)))

(declare-fun c!1025282 () Bool)

(assert (=> b!5790447 (= c!1025282 ((_ is Cons!63584) (unfocusZipperList!1231 zl!343)))))

(declare-fun b!5790448 () Bool)

(declare-fun e!3556072 () Bool)

(declare-fun isEmptyLang!1291 (Regex!15803) Bool)

(assert (=> b!5790448 (= e!3556072 (isEmptyLang!1291 lt!2297027))))

(declare-fun b!5790449 () Bool)

(declare-fun e!3556074 () Bool)

(assert (=> b!5790449 (= e!3556074 e!3556072)))

(declare-fun c!1025284 () Bool)

(declare-fun isEmpty!35493 (List!63708) Bool)

(assert (=> b!5790449 (= c!1025284 (isEmpty!35493 (unfocusZipperList!1231 zl!343)))))

(declare-fun b!5790450 () Bool)

(assert (=> b!5790450 (= e!3556071 (Union!15803 (h!70032 (unfocusZipperList!1231 zl!343)) (generalisedUnion!1666 (t!377053 (unfocusZipperList!1231 zl!343)))))))

(declare-fun b!5790451 () Bool)

(assert (=> b!5790451 (= e!3556073 (h!70032 (unfocusZipperList!1231 zl!343)))))

(declare-fun b!5790452 () Bool)

(assert (=> b!5790452 (= e!3556072 e!3556070)))

(declare-fun c!1025283 () Bool)

(declare-fun tail!11323 (List!63708) List!63708)

(assert (=> b!5790452 (= c!1025283 (isEmpty!35493 (tail!11323 (unfocusZipperList!1231 zl!343))))))

(declare-fun b!5790454 () Bool)

(declare-fun head!12228 (List!63708) Regex!15803)

(assert (=> b!5790454 (= e!3556070 (= lt!2297027 (head!12228 (unfocusZipperList!1231 zl!343))))))

(declare-fun b!5790455 () Bool)

(assert (=> b!5790455 (= e!3556071 EmptyLang!15803)))

(assert (=> d!1824171 e!3556074))

(declare-fun res!2443203 () Bool)

(assert (=> d!1824171 (=> (not res!2443203) (not e!3556074))))

(assert (=> d!1824171 (= res!2443203 (validRegex!7539 lt!2297027))))

(assert (=> d!1824171 (= lt!2297027 e!3556073)))

(declare-fun c!1025285 () Bool)

(declare-fun e!3556069 () Bool)

(assert (=> d!1824171 (= c!1025285 e!3556069)))

(declare-fun res!2443202 () Bool)

(assert (=> d!1824171 (=> (not res!2443202) (not e!3556069))))

(assert (=> d!1824171 (= res!2443202 ((_ is Cons!63584) (unfocusZipperList!1231 zl!343)))))

(assert (=> d!1824171 (forall!14916 (unfocusZipperList!1231 zl!343) lambda!315769)))

(assert (=> d!1824171 (= (generalisedUnion!1666 (unfocusZipperList!1231 zl!343)) lt!2297027)))

(declare-fun b!5790453 () Bool)

(assert (=> b!5790453 (= e!3556069 (isEmpty!35493 (t!377053 (unfocusZipperList!1231 zl!343))))))

(assert (= (and d!1824171 res!2443202) b!5790453))

(assert (= (and d!1824171 c!1025285) b!5790451))

(assert (= (and d!1824171 (not c!1025285)) b!5790447))

(assert (= (and b!5790447 c!1025282) b!5790450))

(assert (= (and b!5790447 (not c!1025282)) b!5790455))

(assert (= (and d!1824171 res!2443203) b!5790449))

(assert (= (and b!5790449 c!1025284) b!5790448))

(assert (= (and b!5790449 (not c!1025284)) b!5790452))

(assert (= (and b!5790452 c!1025283) b!5790454))

(assert (= (and b!5790452 (not c!1025283)) b!5790446))

(declare-fun m!6733952 () Bool)

(assert (=> b!5790450 m!6733952))

(declare-fun m!6733954 () Bool)

(assert (=> b!5790453 m!6733954))

(declare-fun m!6733956 () Bool)

(assert (=> b!5790446 m!6733956))

(declare-fun m!6733958 () Bool)

(assert (=> d!1824171 m!6733958))

(assert (=> d!1824171 m!6733870))

(declare-fun m!6733960 () Bool)

(assert (=> d!1824171 m!6733960))

(declare-fun m!6733962 () Bool)

(assert (=> b!5790448 m!6733962))

(assert (=> b!5790452 m!6733870))

(declare-fun m!6733964 () Bool)

(assert (=> b!5790452 m!6733964))

(assert (=> b!5790452 m!6733964))

(declare-fun m!6733966 () Bool)

(assert (=> b!5790452 m!6733966))

(assert (=> b!5790449 m!6733870))

(declare-fun m!6733968 () Bool)

(assert (=> b!5790449 m!6733968))

(assert (=> b!5790454 m!6733870))

(declare-fun m!6733970 () Bool)

(assert (=> b!5790454 m!6733970))

(assert (=> b!5790394 d!1824171))

(declare-fun bs!1366946 () Bool)

(declare-fun d!1824173 () Bool)

(assert (= bs!1366946 (and d!1824173 d!1824161)))

(declare-fun lambda!315772 () Int)

(assert (=> bs!1366946 (= lambda!315772 lambda!315765)))

(declare-fun bs!1366947 () Bool)

(assert (= bs!1366947 (and d!1824173 d!1824167)))

(assert (=> bs!1366947 (= lambda!315772 lambda!315766)))

(declare-fun bs!1366948 () Bool)

(assert (= bs!1366948 (and d!1824173 d!1824171)))

(assert (=> bs!1366948 (= lambda!315772 lambda!315769)))

(declare-fun lt!2297030 () List!63708)

(assert (=> d!1824173 (forall!14916 lt!2297030 lambda!315772)))

(declare-fun e!3556077 () List!63708)

(assert (=> d!1824173 (= lt!2297030 e!3556077)))

(declare-fun c!1025288 () Bool)

(assert (=> d!1824173 (= c!1025288 ((_ is Cons!63585) zl!343))))

(assert (=> d!1824173 (= (unfocusZipperList!1231 zl!343) lt!2297030)))

(declare-fun b!5790460 () Bool)

(assert (=> b!5790460 (= e!3556077 (Cons!63584 (generalisedConcat!1418 (exprs!5687 (h!70033 zl!343))) (unfocusZipperList!1231 (t!377054 zl!343))))))

(declare-fun b!5790461 () Bool)

(assert (=> b!5790461 (= e!3556077 Nil!63584)))

(assert (= (and d!1824173 c!1025288) b!5790460))

(assert (= (and d!1824173 (not c!1025288)) b!5790461))

(declare-fun m!6733972 () Bool)

(assert (=> d!1824173 m!6733972))

(assert (=> b!5790460 m!6733934))

(declare-fun m!6733974 () Bool)

(assert (=> b!5790460 m!6733974))

(assert (=> b!5790394 d!1824173))

(declare-fun b!5790484 () Bool)

(declare-fun e!3556092 () (InoxSet Context!10374))

(declare-fun e!3556095 () (InoxSet Context!10374))

(assert (=> b!5790484 (= e!3556092 e!3556095)))

(declare-fun c!1025299 () Bool)

(assert (=> b!5790484 (= c!1025299 ((_ is Union!15803) (reg!16132 r!7292)))))

(declare-fun bm!451014 () Bool)

(declare-fun c!1025301 () Bool)

(declare-fun c!1025303 () Bool)

(declare-fun call!451024 () List!63708)

(declare-fun $colon$colon!1789 (List!63708 Regex!15803) List!63708)

(assert (=> bm!451014 (= call!451024 ($colon$colon!1789 (exprs!5687 (Context!10375 lt!2297014)) (ite (or c!1025303 c!1025301) (regTwo!32118 (reg!16132 r!7292)) (reg!16132 r!7292))))))

(declare-fun call!451021 () (InoxSet Context!10374))

(declare-fun bm!451015 () Bool)

(assert (=> bm!451015 (= call!451021 (derivationStepZipperDown!1141 (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292))) (ite c!1025299 (Context!10375 lt!2297014) (Context!10375 call!451024)) (h!70034 s!2326)))))

(declare-fun call!451023 () (InoxSet Context!10374))

(declare-fun bm!451016 () Bool)

(declare-fun call!451022 () List!63708)

(assert (=> bm!451016 (= call!451023 (derivationStepZipperDown!1141 (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292))))) (ite (or c!1025299 c!1025303) (Context!10375 lt!2297014) (Context!10375 call!451022)) (h!70034 s!2326)))))

(declare-fun b!5790485 () Bool)

(declare-fun c!1025300 () Bool)

(assert (=> b!5790485 (= c!1025300 ((_ is Star!15803) (reg!16132 r!7292)))))

(declare-fun e!3556094 () (InoxSet Context!10374))

(declare-fun e!3556093 () (InoxSet Context!10374))

(assert (=> b!5790485 (= e!3556094 e!3556093)))

(declare-fun b!5790486 () Bool)

(declare-fun e!3556091 () (InoxSet Context!10374))

(assert (=> b!5790486 (= e!3556091 e!3556094)))

(assert (=> b!5790486 (= c!1025301 ((_ is Concat!24648) (reg!16132 r!7292)))))

(declare-fun bm!451017 () Bool)

(declare-fun call!451019 () (InoxSet Context!10374))

(declare-fun call!451020 () (InoxSet Context!10374))

(assert (=> bm!451017 (= call!451019 call!451020)))

(declare-fun b!5790487 () Bool)

(declare-fun e!3556090 () Bool)

(assert (=> b!5790487 (= c!1025303 e!3556090)))

(declare-fun res!2443206 () Bool)

(assert (=> b!5790487 (=> (not res!2443206) (not e!3556090))))

(assert (=> b!5790487 (= res!2443206 ((_ is Concat!24648) (reg!16132 r!7292)))))

(assert (=> b!5790487 (= e!3556095 e!3556091)))

(declare-fun b!5790488 () Bool)

(assert (=> b!5790488 (= e!3556094 call!451019)))

(declare-fun b!5790489 () Bool)

(assert (=> b!5790489 (= e!3556091 ((_ map or) call!451021 call!451020))))

(declare-fun b!5790490 () Bool)

(assert (=> b!5790490 (= e!3556095 ((_ map or) call!451023 call!451021))))

(declare-fun b!5790491 () Bool)

(assert (=> b!5790491 (= e!3556092 (store ((as const (Array Context!10374 Bool)) false) (Context!10375 lt!2297014) true))))

(declare-fun d!1824175 () Bool)

(declare-fun c!1025302 () Bool)

(assert (=> d!1824175 (= c!1025302 (and ((_ is ElementMatch!15803) (reg!16132 r!7292)) (= (c!1025273 (reg!16132 r!7292)) (h!70034 s!2326))))))

(assert (=> d!1824175 (= (derivationStepZipperDown!1141 (reg!16132 r!7292) (Context!10375 lt!2297014) (h!70034 s!2326)) e!3556092)))

(declare-fun bm!451018 () Bool)

(assert (=> bm!451018 (= call!451022 call!451024)))

(declare-fun b!5790492 () Bool)

(declare-fun nullable!5834 (Regex!15803) Bool)

(assert (=> b!5790492 (= e!3556090 (nullable!5834 (regOne!32118 (reg!16132 r!7292))))))

(declare-fun bm!451019 () Bool)

(assert (=> bm!451019 (= call!451020 call!451023)))

(declare-fun b!5790493 () Bool)

(assert (=> b!5790493 (= e!3556093 ((as const (Array Context!10374 Bool)) false))))

(declare-fun b!5790494 () Bool)

(assert (=> b!5790494 (= e!3556093 call!451019)))

(assert (= (and d!1824175 c!1025302) b!5790491))

(assert (= (and d!1824175 (not c!1025302)) b!5790484))

(assert (= (and b!5790484 c!1025299) b!5790490))

(assert (= (and b!5790484 (not c!1025299)) b!5790487))

(assert (= (and b!5790487 res!2443206) b!5790492))

(assert (= (and b!5790487 c!1025303) b!5790489))

(assert (= (and b!5790487 (not c!1025303)) b!5790486))

(assert (= (and b!5790486 c!1025301) b!5790488))

(assert (= (and b!5790486 (not c!1025301)) b!5790485))

(assert (= (and b!5790485 c!1025300) b!5790494))

(assert (= (and b!5790485 (not c!1025300)) b!5790493))

(assert (= (or b!5790488 b!5790494) bm!451018))

(assert (= (or b!5790488 b!5790494) bm!451017))

(assert (= (or b!5790489 bm!451018) bm!451014))

(assert (= (or b!5790489 bm!451017) bm!451019))

(assert (= (or b!5790490 b!5790489) bm!451015))

(assert (= (or b!5790490 bm!451019) bm!451016))

(declare-fun m!6733976 () Bool)

(assert (=> bm!451014 m!6733976))

(declare-fun m!6733978 () Bool)

(assert (=> bm!451015 m!6733978))

(declare-fun m!6733980 () Bool)

(assert (=> b!5790491 m!6733980))

(declare-fun m!6733982 () Bool)

(assert (=> bm!451016 m!6733982))

(declare-fun m!6733984 () Bool)

(assert (=> b!5790492 m!6733984))

(assert (=> b!5790403 d!1824175))

(declare-fun d!1824177 () Bool)

(declare-fun choose!43968 ((InoxSet Context!10374) Int) (InoxSet Context!10374))

(assert (=> d!1824177 (= (flatMap!1410 lt!2297009 lambda!315762) (choose!43968 lt!2297009 lambda!315762))))

(declare-fun bs!1366949 () Bool)

(assert (= bs!1366949 d!1824177))

(declare-fun m!6733986 () Bool)

(assert (=> bs!1366949 m!6733986))

(assert (=> b!5790403 d!1824177))

(declare-fun b!5790523 () Bool)

(declare-fun e!3556116 () Bool)

(assert (=> b!5790523 (= e!3556116 (nullable!5834 (h!70032 (exprs!5687 lt!2297012))))))

(declare-fun bm!451028 () Bool)

(declare-fun call!451033 () (InoxSet Context!10374))

(assert (=> bm!451028 (= call!451033 (derivationStepZipperDown!1141 (h!70032 (exprs!5687 lt!2297012)) (Context!10375 (t!377053 (exprs!5687 lt!2297012))) (h!70034 s!2326)))))

(declare-fun d!1824181 () Bool)

(declare-fun c!1025312 () Bool)

(assert (=> d!1824181 (= c!1025312 e!3556116)))

(declare-fun res!2443219 () Bool)

(assert (=> d!1824181 (=> (not res!2443219) (not e!3556116))))

(assert (=> d!1824181 (= res!2443219 ((_ is Cons!63584) (exprs!5687 lt!2297012)))))

(declare-fun e!3556118 () (InoxSet Context!10374))

(assert (=> d!1824181 (= (derivationStepZipperUp!1067 lt!2297012 (h!70034 s!2326)) e!3556118)))

(declare-fun b!5790524 () Bool)

(declare-fun e!3556117 () (InoxSet Context!10374))

(assert (=> b!5790524 (= e!3556117 call!451033)))

(declare-fun b!5790525 () Bool)

(assert (=> b!5790525 (= e!3556118 e!3556117)))

(declare-fun c!1025313 () Bool)

(assert (=> b!5790525 (= c!1025313 ((_ is Cons!63584) (exprs!5687 lt!2297012)))))

(declare-fun b!5790526 () Bool)

(assert (=> b!5790526 (= e!3556118 ((_ map or) call!451033 (derivationStepZipperUp!1067 (Context!10375 (t!377053 (exprs!5687 lt!2297012))) (h!70034 s!2326))))))

(declare-fun b!5790527 () Bool)

(assert (=> b!5790527 (= e!3556117 ((as const (Array Context!10374 Bool)) false))))

(assert (= (and d!1824181 res!2443219) b!5790523))

(assert (= (and d!1824181 c!1025312) b!5790526))

(assert (= (and d!1824181 (not c!1025312)) b!5790525))

(assert (= (and b!5790525 c!1025313) b!5790524))

(assert (= (and b!5790525 (not c!1025313)) b!5790527))

(assert (= (or b!5790526 b!5790524) bm!451028))

(declare-fun m!6733988 () Bool)

(assert (=> b!5790523 m!6733988))

(declare-fun m!6733990 () Bool)

(assert (=> bm!451028 m!6733990))

(declare-fun m!6733992 () Bool)

(assert (=> b!5790526 m!6733992))

(assert (=> b!5790403 d!1824181))

(declare-fun d!1824183 () Bool)

(declare-fun dynLambda!24895 (Int Context!10374) (InoxSet Context!10374))

(assert (=> d!1824183 (= (flatMap!1410 lt!2297009 lambda!315762) (dynLambda!24895 lambda!315762 lt!2297012))))

(declare-fun lt!2297033 () Unit!156866)

(declare-fun choose!43970 ((InoxSet Context!10374) Context!10374 Int) Unit!156866)

(assert (=> d!1824183 (= lt!2297033 (choose!43970 lt!2297009 lt!2297012 lambda!315762))))

(assert (=> d!1824183 (= lt!2297009 (store ((as const (Array Context!10374 Bool)) false) lt!2297012 true))))

(assert (=> d!1824183 (= (lemmaFlatMapOnSingletonSet!942 lt!2297009 lt!2297012 lambda!315762) lt!2297033)))

(declare-fun b_lambda!218293 () Bool)

(assert (=> (not b_lambda!218293) (not d!1824183)))

(declare-fun bs!1366950 () Bool)

(assert (= bs!1366950 d!1824183))

(assert (=> bs!1366950 m!6733896))

(declare-fun m!6734000 () Bool)

(assert (=> bs!1366950 m!6734000))

(declare-fun m!6734002 () Bool)

(assert (=> bs!1366950 m!6734002))

(assert (=> bs!1366950 m!6733892))

(assert (=> b!5790403 d!1824183))

(declare-fun bs!1366952 () Bool)

(declare-fun d!1824187 () Bool)

(assert (= bs!1366952 (and d!1824187 d!1824161)))

(declare-fun lambda!315776 () Int)

(assert (=> bs!1366952 (= lambda!315776 lambda!315765)))

(declare-fun bs!1366953 () Bool)

(assert (= bs!1366953 (and d!1824187 d!1824167)))

(assert (=> bs!1366953 (= lambda!315776 lambda!315766)))

(declare-fun bs!1366954 () Bool)

(assert (= bs!1366954 (and d!1824187 d!1824171)))

(assert (=> bs!1366954 (= lambda!315776 lambda!315769)))

(declare-fun bs!1366955 () Bool)

(assert (= bs!1366955 (and d!1824187 d!1824173)))

(assert (=> bs!1366955 (= lambda!315776 lambda!315772)))

(declare-fun b!5790560 () Bool)

(declare-fun e!3556141 () Bool)

(declare-fun lt!2297042 () Regex!15803)

(declare-fun isConcat!805 (Regex!15803) Bool)

(assert (=> b!5790560 (= e!3556141 (isConcat!805 lt!2297042))))

(declare-fun b!5790561 () Bool)

(declare-fun e!3556142 () Regex!15803)

(declare-fun e!3556143 () Regex!15803)

(assert (=> b!5790561 (= e!3556142 e!3556143)))

(declare-fun c!1025325 () Bool)

(assert (=> b!5790561 (= c!1025325 ((_ is Cons!63584) (exprs!5687 (h!70033 zl!343))))))

(declare-fun b!5790562 () Bool)

(declare-fun e!3556146 () Bool)

(declare-fun isEmptyExpr!1282 (Regex!15803) Bool)

(assert (=> b!5790562 (= e!3556146 (isEmptyExpr!1282 lt!2297042))))

(declare-fun b!5790563 () Bool)

(assert (=> b!5790563 (= e!3556146 e!3556141)))

(declare-fun c!1025327 () Bool)

(assert (=> b!5790563 (= c!1025327 (isEmpty!35493 (tail!11323 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun b!5790564 () Bool)

(assert (=> b!5790564 (= e!3556143 EmptyExpr!15803)))

(declare-fun b!5790565 () Bool)

(assert (=> b!5790565 (= e!3556141 (= lt!2297042 (head!12228 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun b!5790566 () Bool)

(assert (=> b!5790566 (= e!3556142 (h!70032 (exprs!5687 (h!70033 zl!343))))))

(declare-fun e!3556145 () Bool)

(assert (=> d!1824187 e!3556145))

(declare-fun res!2443233 () Bool)

(assert (=> d!1824187 (=> (not res!2443233) (not e!3556145))))

(assert (=> d!1824187 (= res!2443233 (validRegex!7539 lt!2297042))))

(assert (=> d!1824187 (= lt!2297042 e!3556142)))

(declare-fun c!1025326 () Bool)

(declare-fun e!3556144 () Bool)

(assert (=> d!1824187 (= c!1025326 e!3556144)))

(declare-fun res!2443232 () Bool)

(assert (=> d!1824187 (=> (not res!2443232) (not e!3556144))))

(assert (=> d!1824187 (= res!2443232 ((_ is Cons!63584) (exprs!5687 (h!70033 zl!343))))))

(assert (=> d!1824187 (forall!14916 (exprs!5687 (h!70033 zl!343)) lambda!315776)))

(assert (=> d!1824187 (= (generalisedConcat!1418 (exprs!5687 (h!70033 zl!343))) lt!2297042)))

(declare-fun b!5790567 () Bool)

(assert (=> b!5790567 (= e!3556144 (isEmpty!35493 (t!377053 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun b!5790568 () Bool)

(assert (=> b!5790568 (= e!3556143 (Concat!24648 (h!70032 (exprs!5687 (h!70033 zl!343))) (generalisedConcat!1418 (t!377053 (exprs!5687 (h!70033 zl!343))))))))

(declare-fun b!5790569 () Bool)

(assert (=> b!5790569 (= e!3556145 e!3556146)))

(declare-fun c!1025324 () Bool)

(assert (=> b!5790569 (= c!1025324 (isEmpty!35493 (exprs!5687 (h!70033 zl!343))))))

(assert (= (and d!1824187 res!2443232) b!5790567))

(assert (= (and d!1824187 c!1025326) b!5790566))

(assert (= (and d!1824187 (not c!1025326)) b!5790561))

(assert (= (and b!5790561 c!1025325) b!5790568))

(assert (= (and b!5790561 (not c!1025325)) b!5790564))

(assert (= (and d!1824187 res!2443233) b!5790569))

(assert (= (and b!5790569 c!1025324) b!5790562))

(assert (= (and b!5790569 (not c!1025324)) b!5790563))

(assert (= (and b!5790563 c!1025327) b!5790565))

(assert (= (and b!5790563 (not c!1025327)) b!5790560))

(declare-fun m!6734012 () Bool)

(assert (=> b!5790562 m!6734012))

(declare-fun m!6734014 () Bool)

(assert (=> b!5790565 m!6734014))

(declare-fun m!6734016 () Bool)

(assert (=> d!1824187 m!6734016))

(declare-fun m!6734018 () Bool)

(assert (=> d!1824187 m!6734018))

(declare-fun m!6734020 () Bool)

(assert (=> b!5790567 m!6734020))

(declare-fun m!6734022 () Bool)

(assert (=> b!5790568 m!6734022))

(declare-fun m!6734024 () Bool)

(assert (=> b!5790569 m!6734024))

(declare-fun m!6734026 () Bool)

(assert (=> b!5790560 m!6734026))

(declare-fun m!6734028 () Bool)

(assert (=> b!5790563 m!6734028))

(assert (=> b!5790563 m!6734028))

(declare-fun m!6734030 () Bool)

(assert (=> b!5790563 m!6734030))

(assert (=> b!5790402 d!1824187))

(declare-fun d!1824193 () Bool)

(assert (=> d!1824193 (= (flatMap!1410 z!1189 lambda!315762) (choose!43968 z!1189 lambda!315762))))

(declare-fun bs!1366956 () Bool)

(assert (= bs!1366956 d!1824193))

(declare-fun m!6734032 () Bool)

(assert (=> bs!1366956 m!6734032))

(assert (=> b!5790413 d!1824193))

(declare-fun b!5790590 () Bool)

(declare-fun e!3556159 () Bool)

(assert (=> b!5790590 (= e!3556159 (nullable!5834 (h!70032 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun bm!451032 () Bool)

(declare-fun call!451037 () (InoxSet Context!10374))

(assert (=> bm!451032 (= call!451037 (derivationStepZipperDown!1141 (h!70032 (exprs!5687 (h!70033 zl!343))) (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343)))) (h!70034 s!2326)))))

(declare-fun d!1824195 () Bool)

(declare-fun c!1025336 () Bool)

(assert (=> d!1824195 (= c!1025336 e!3556159)))

(declare-fun res!2443238 () Bool)

(assert (=> d!1824195 (=> (not res!2443238) (not e!3556159))))

(assert (=> d!1824195 (= res!2443238 ((_ is Cons!63584) (exprs!5687 (h!70033 zl!343))))))

(declare-fun e!3556161 () (InoxSet Context!10374))

(assert (=> d!1824195 (= (derivationStepZipperUp!1067 (h!70033 zl!343) (h!70034 s!2326)) e!3556161)))

(declare-fun b!5790591 () Bool)

(declare-fun e!3556160 () (InoxSet Context!10374))

(assert (=> b!5790591 (= e!3556160 call!451037)))

(declare-fun b!5790592 () Bool)

(assert (=> b!5790592 (= e!3556161 e!3556160)))

(declare-fun c!1025337 () Bool)

(assert (=> b!5790592 (= c!1025337 ((_ is Cons!63584) (exprs!5687 (h!70033 zl!343))))))

(declare-fun b!5790593 () Bool)

(assert (=> b!5790593 (= e!3556161 ((_ map or) call!451037 (derivationStepZipperUp!1067 (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343)))) (h!70034 s!2326))))))

(declare-fun b!5790594 () Bool)

(assert (=> b!5790594 (= e!3556160 ((as const (Array Context!10374 Bool)) false))))

(assert (= (and d!1824195 res!2443238) b!5790590))

(assert (= (and d!1824195 c!1025336) b!5790593))

(assert (= (and d!1824195 (not c!1025336)) b!5790592))

(assert (= (and b!5790592 c!1025337) b!5790591))

(assert (= (and b!5790592 (not c!1025337)) b!5790594))

(assert (= (or b!5790593 b!5790591) bm!451032))

(declare-fun m!6734034 () Bool)

(assert (=> b!5790590 m!6734034))

(declare-fun m!6734036 () Bool)

(assert (=> bm!451032 m!6734036))

(declare-fun m!6734038 () Bool)

(assert (=> b!5790593 m!6734038))

(assert (=> b!5790413 d!1824195))

(declare-fun d!1824197 () Bool)

(assert (=> d!1824197 (= (flatMap!1410 z!1189 lambda!315762) (dynLambda!24895 lambda!315762 (h!70033 zl!343)))))

(declare-fun lt!2297045 () Unit!156866)

(assert (=> d!1824197 (= lt!2297045 (choose!43970 z!1189 (h!70033 zl!343) lambda!315762))))

(assert (=> d!1824197 (= z!1189 (store ((as const (Array Context!10374 Bool)) false) (h!70033 zl!343) true))))

(assert (=> d!1824197 (= (lemmaFlatMapOnSingletonSet!942 z!1189 (h!70033 zl!343) lambda!315762) lt!2297045)))

(declare-fun b_lambda!218295 () Bool)

(assert (=> (not b_lambda!218295) (not d!1824197)))

(declare-fun bs!1366957 () Bool)

(assert (= bs!1366957 d!1824197))

(assert (=> bs!1366957 m!6733876))

(declare-fun m!6734040 () Bool)

(assert (=> bs!1366957 m!6734040))

(declare-fun m!6734042 () Bool)

(assert (=> bs!1366957 m!6734042))

(declare-fun m!6734044 () Bool)

(assert (=> bs!1366957 m!6734044))

(assert (=> b!5790413 d!1824197))

(declare-fun b!5790595 () Bool)

(declare-fun e!3556164 () (InoxSet Context!10374))

(declare-fun e!3556167 () (InoxSet Context!10374))

(assert (=> b!5790595 (= e!3556164 e!3556167)))

(declare-fun c!1025338 () Bool)

(assert (=> b!5790595 (= c!1025338 ((_ is Union!15803) r!7292))))

(declare-fun c!1025340 () Bool)

(declare-fun bm!451033 () Bool)

(declare-fun c!1025342 () Bool)

(declare-fun call!451043 () List!63708)

(assert (=> bm!451033 (= call!451043 ($colon$colon!1789 (exprs!5687 (Context!10375 Nil!63584)) (ite (or c!1025342 c!1025340) (regTwo!32118 r!7292) r!7292)))))

(declare-fun call!451040 () (InoxSet Context!10374))

(declare-fun bm!451034 () Bool)

(assert (=> bm!451034 (= call!451040 (derivationStepZipperDown!1141 (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292)) (ite c!1025338 (Context!10375 Nil!63584) (Context!10375 call!451043)) (h!70034 s!2326)))))

(declare-fun bm!451035 () Bool)

(declare-fun call!451042 () (InoxSet Context!10374))

(declare-fun call!451041 () List!63708)

(assert (=> bm!451035 (= call!451042 (derivationStepZipperDown!1141 (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292)))) (ite (or c!1025338 c!1025342) (Context!10375 Nil!63584) (Context!10375 call!451041)) (h!70034 s!2326)))))

(declare-fun b!5790596 () Bool)

(declare-fun c!1025339 () Bool)

(assert (=> b!5790596 (= c!1025339 ((_ is Star!15803) r!7292))))

(declare-fun e!3556166 () (InoxSet Context!10374))

(declare-fun e!3556165 () (InoxSet Context!10374))

(assert (=> b!5790596 (= e!3556166 e!3556165)))

(declare-fun b!5790597 () Bool)

(declare-fun e!3556163 () (InoxSet Context!10374))

(assert (=> b!5790597 (= e!3556163 e!3556166)))

(assert (=> b!5790597 (= c!1025340 ((_ is Concat!24648) r!7292))))

(declare-fun bm!451036 () Bool)

(declare-fun call!451038 () (InoxSet Context!10374))

(declare-fun call!451039 () (InoxSet Context!10374))

(assert (=> bm!451036 (= call!451038 call!451039)))

(declare-fun b!5790598 () Bool)

(declare-fun e!3556162 () Bool)

(assert (=> b!5790598 (= c!1025342 e!3556162)))

(declare-fun res!2443239 () Bool)

(assert (=> b!5790598 (=> (not res!2443239) (not e!3556162))))

(assert (=> b!5790598 (= res!2443239 ((_ is Concat!24648) r!7292))))

(assert (=> b!5790598 (= e!3556167 e!3556163)))

(declare-fun b!5790599 () Bool)

(assert (=> b!5790599 (= e!3556166 call!451038)))

(declare-fun b!5790600 () Bool)

(assert (=> b!5790600 (= e!3556163 ((_ map or) call!451040 call!451039))))

(declare-fun b!5790601 () Bool)

(assert (=> b!5790601 (= e!3556167 ((_ map or) call!451042 call!451040))))

(declare-fun b!5790602 () Bool)

(assert (=> b!5790602 (= e!3556164 (store ((as const (Array Context!10374 Bool)) false) (Context!10375 Nil!63584) true))))

(declare-fun d!1824199 () Bool)

(declare-fun c!1025341 () Bool)

(assert (=> d!1824199 (= c!1025341 (and ((_ is ElementMatch!15803) r!7292) (= (c!1025273 r!7292) (h!70034 s!2326))))))

(assert (=> d!1824199 (= (derivationStepZipperDown!1141 r!7292 (Context!10375 Nil!63584) (h!70034 s!2326)) e!3556164)))

(declare-fun bm!451037 () Bool)

(assert (=> bm!451037 (= call!451041 call!451043)))

(declare-fun b!5790603 () Bool)

(assert (=> b!5790603 (= e!3556162 (nullable!5834 (regOne!32118 r!7292)))))

(declare-fun bm!451038 () Bool)

(assert (=> bm!451038 (= call!451039 call!451042)))

(declare-fun b!5790604 () Bool)

(assert (=> b!5790604 (= e!3556165 ((as const (Array Context!10374 Bool)) false))))

(declare-fun b!5790605 () Bool)

(assert (=> b!5790605 (= e!3556165 call!451038)))

(assert (= (and d!1824199 c!1025341) b!5790602))

(assert (= (and d!1824199 (not c!1025341)) b!5790595))

(assert (= (and b!5790595 c!1025338) b!5790601))

(assert (= (and b!5790595 (not c!1025338)) b!5790598))

(assert (= (and b!5790598 res!2443239) b!5790603))

(assert (= (and b!5790598 c!1025342) b!5790600))

(assert (= (and b!5790598 (not c!1025342)) b!5790597))

(assert (= (and b!5790597 c!1025340) b!5790599))

(assert (= (and b!5790597 (not c!1025340)) b!5790596))

(assert (= (and b!5790596 c!1025339) b!5790605))

(assert (= (and b!5790596 (not c!1025339)) b!5790604))

(assert (= (or b!5790599 b!5790605) bm!451037))

(assert (= (or b!5790599 b!5790605) bm!451036))

(assert (= (or b!5790600 bm!451037) bm!451033))

(assert (= (or b!5790600 bm!451036) bm!451038))

(assert (= (or b!5790601 b!5790600) bm!451034))

(assert (= (or b!5790601 bm!451038) bm!451035))

(declare-fun m!6734046 () Bool)

(assert (=> bm!451033 m!6734046))

(declare-fun m!6734048 () Bool)

(assert (=> bm!451034 m!6734048))

(declare-fun m!6734050 () Bool)

(assert (=> b!5790602 m!6734050))

(declare-fun m!6734052 () Bool)

(assert (=> bm!451035 m!6734052))

(declare-fun m!6734054 () Bool)

(assert (=> b!5790603 m!6734054))

(assert (=> b!5790397 d!1824199))

(declare-fun b!5790616 () Bool)

(declare-fun e!3556174 () Bool)

(assert (=> b!5790616 (= e!3556174 (nullable!5834 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))))))

(declare-fun bm!451039 () Bool)

(declare-fun call!451044 () (InoxSet Context!10374))

(assert (=> bm!451039 (= call!451044 (derivationStepZipperDown!1141 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))) (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (h!70034 s!2326)))))

(declare-fun d!1824201 () Bool)

(declare-fun c!1025347 () Bool)

(assert (=> d!1824201 (= c!1025347 e!3556174)))

(declare-fun res!2443242 () Bool)

(assert (=> d!1824201 (=> (not res!2443242) (not e!3556174))))

(assert (=> d!1824201 (= res!2443242 ((_ is Cons!63584) (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))))))

(declare-fun e!3556176 () (InoxSet Context!10374))

(assert (=> d!1824201 (= (derivationStepZipperUp!1067 (Context!10375 (Cons!63584 r!7292 Nil!63584)) (h!70034 s!2326)) e!3556176)))

(declare-fun b!5790617 () Bool)

(declare-fun e!3556175 () (InoxSet Context!10374))

(assert (=> b!5790617 (= e!3556175 call!451044)))

(declare-fun b!5790618 () Bool)

(assert (=> b!5790618 (= e!3556176 e!3556175)))

(declare-fun c!1025348 () Bool)

(assert (=> b!5790618 (= c!1025348 ((_ is Cons!63584) (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))))))

(declare-fun b!5790619 () Bool)

(assert (=> b!5790619 (= e!3556176 ((_ map or) call!451044 (derivationStepZipperUp!1067 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (h!70034 s!2326))))))

(declare-fun b!5790620 () Bool)

(assert (=> b!5790620 (= e!3556175 ((as const (Array Context!10374 Bool)) false))))

(assert (= (and d!1824201 res!2443242) b!5790616))

(assert (= (and d!1824201 c!1025347) b!5790619))

(assert (= (and d!1824201 (not c!1025347)) b!5790618))

(assert (= (and b!5790618 c!1025348) b!5790617))

(assert (= (and b!5790618 (not c!1025348)) b!5790620))

(assert (= (or b!5790619 b!5790617) bm!451039))

(declare-fun m!6734070 () Bool)

(assert (=> b!5790616 m!6734070))

(declare-fun m!6734078 () Bool)

(assert (=> bm!451039 m!6734078))

(declare-fun m!6734080 () Bool)

(assert (=> b!5790619 m!6734080))

(assert (=> b!5790397 d!1824201))

(declare-fun bs!1366958 () Bool)

(declare-fun d!1824205 () Bool)

(assert (= bs!1366958 (and d!1824205 b!5790413)))

(declare-fun lambda!315781 () Int)

(assert (=> bs!1366958 (= lambda!315781 lambda!315762)))

(assert (=> d!1824205 true))

(assert (=> d!1824205 (= (derivationStepZipper!1872 z!1189 (h!70034 s!2326)) (flatMap!1410 z!1189 lambda!315781))))

(declare-fun bs!1366959 () Bool)

(assert (= bs!1366959 d!1824205))

(declare-fun m!6734082 () Bool)

(assert (=> bs!1366959 m!6734082))

(assert (=> b!5790397 d!1824205))

(declare-fun b!5790651 () Bool)

(declare-fun e!3556201 () Bool)

(declare-fun call!451053 () Bool)

(assert (=> b!5790651 (= e!3556201 call!451053)))

(declare-fun b!5790652 () Bool)

(declare-fun res!2443255 () Bool)

(declare-fun e!3556195 () Bool)

(assert (=> b!5790652 (=> (not res!2443255) (not e!3556195))))

(declare-fun call!451051 () Bool)

(assert (=> b!5790652 (= res!2443255 call!451051)))

(declare-fun e!3556197 () Bool)

(assert (=> b!5790652 (= e!3556197 e!3556195)))

(declare-fun b!5790654 () Bool)

(declare-fun e!3556200 () Bool)

(declare-fun e!3556198 () Bool)

(assert (=> b!5790654 (= e!3556200 e!3556198)))

(declare-fun res!2443253 () Bool)

(assert (=> b!5790654 (=> (not res!2443253) (not e!3556198))))

(assert (=> b!5790654 (= res!2443253 call!451051)))

(declare-fun bm!451046 () Bool)

(declare-fun call!451052 () Bool)

(declare-fun c!1025361 () Bool)

(assert (=> bm!451046 (= call!451052 (validRegex!7539 (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292))))))

(declare-fun bm!451047 () Bool)

(declare-fun c!1025362 () Bool)

(assert (=> bm!451047 (= call!451053 (validRegex!7539 (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292)))))))

(declare-fun b!5790655 () Bool)

(declare-fun res!2443256 () Bool)

(assert (=> b!5790655 (=> res!2443256 e!3556200)))

(assert (=> b!5790655 (= res!2443256 (not ((_ is Concat!24648) r!7292)))))

(assert (=> b!5790655 (= e!3556197 e!3556200)))

(declare-fun b!5790656 () Bool)

(declare-fun e!3556196 () Bool)

(assert (=> b!5790656 (= e!3556196 e!3556201)))

(declare-fun res!2443254 () Bool)

(assert (=> b!5790656 (= res!2443254 (not (nullable!5834 (reg!16132 r!7292))))))

(assert (=> b!5790656 (=> (not res!2443254) (not e!3556201))))

(declare-fun b!5790657 () Bool)

(assert (=> b!5790657 (= e!3556198 call!451052)))

(declare-fun b!5790658 () Bool)

(declare-fun e!3556199 () Bool)

(assert (=> b!5790658 (= e!3556199 e!3556196)))

(assert (=> b!5790658 (= c!1025362 ((_ is Star!15803) r!7292))))

(declare-fun d!1824207 () Bool)

(declare-fun res!2443257 () Bool)

(assert (=> d!1824207 (=> res!2443257 e!3556199)))

(assert (=> d!1824207 (= res!2443257 ((_ is ElementMatch!15803) r!7292))))

(assert (=> d!1824207 (= (validRegex!7539 r!7292) e!3556199)))

(declare-fun b!5790653 () Bool)

(assert (=> b!5790653 (= e!3556195 call!451052)))

(declare-fun b!5790659 () Bool)

(assert (=> b!5790659 (= e!3556196 e!3556197)))

(assert (=> b!5790659 (= c!1025361 ((_ is Union!15803) r!7292))))

(declare-fun bm!451048 () Bool)

(assert (=> bm!451048 (= call!451051 call!451053)))

(assert (= (and d!1824207 (not res!2443257)) b!5790658))

(assert (= (and b!5790658 c!1025362) b!5790656))

(assert (= (and b!5790658 (not c!1025362)) b!5790659))

(assert (= (and b!5790656 res!2443254) b!5790651))

(assert (= (and b!5790659 c!1025361) b!5790652))

(assert (= (and b!5790659 (not c!1025361)) b!5790655))

(assert (= (and b!5790652 res!2443255) b!5790653))

(assert (= (and b!5790655 (not res!2443256)) b!5790654))

(assert (= (and b!5790654 res!2443253) b!5790657))

(assert (= (or b!5790653 b!5790657) bm!451046))

(assert (= (or b!5790652 b!5790654) bm!451048))

(assert (= (or b!5790651 bm!451048) bm!451047))

(declare-fun m!6734110 () Bool)

(assert (=> bm!451046 m!6734110))

(declare-fun m!6734112 () Bool)

(assert (=> bm!451047 m!6734112))

(declare-fun m!6734114 () Bool)

(assert (=> b!5790656 m!6734114))

(assert (=> start!593928 d!1824207))

(declare-fun d!1824219 () Bool)

(declare-fun isEmpty!35496 (Option!15812) Bool)

(assert (=> d!1824219 (= (isDefined!12515 (findConcatSeparation!2226 (reg!16132 r!7292) r!7292 Nil!63586 s!2326 s!2326)) (not (isEmpty!35496 (findConcatSeparation!2226 (reg!16132 r!7292) r!7292 Nil!63586 s!2326 s!2326))))))

(declare-fun bs!1366965 () Bool)

(assert (= bs!1366965 d!1824219))

(assert (=> bs!1366965 m!6733918))

(declare-fun m!6734118 () Bool)

(assert (=> bs!1366965 m!6734118))

(assert (=> b!5790404 d!1824219))

(declare-fun bs!1366967 () Bool)

(declare-fun d!1824223 () Bool)

(assert (= bs!1366967 (and d!1824223 b!5790404)))

(declare-fun lambda!315797 () Int)

(assert (=> bs!1366967 (= lambda!315797 lambda!315759)))

(assert (=> bs!1366967 (not (= lambda!315797 lambda!315760))))

(assert (=> bs!1366967 (not (= lambda!315797 lambda!315761))))

(assert (=> d!1824223 true))

(assert (=> d!1824223 true))

(assert (=> d!1824223 true))

(declare-fun lambda!315799 () Int)

(assert (=> bs!1366967 (not (= lambda!315799 lambda!315759))))

(assert (=> bs!1366967 (not (= lambda!315799 lambda!315760))))

(assert (=> bs!1366967 (= lambda!315799 lambda!315761)))

(declare-fun bs!1366969 () Bool)

(assert (= bs!1366969 d!1824223))

(assert (=> bs!1366969 (not (= lambda!315799 lambda!315797))))

(assert (=> d!1824223 true))

(assert (=> d!1824223 true))

(assert (=> d!1824223 true))

(assert (=> d!1824223 (= (Exists!2903 lambda!315797) (Exists!2903 lambda!315799))))

(declare-fun lt!2297052 () Unit!156866)

(declare-fun choose!43975 (Regex!15803 Regex!15803 List!63710) Unit!156866)

(assert (=> d!1824223 (= lt!2297052 (choose!43975 (reg!16132 r!7292) r!7292 s!2326))))

(assert (=> d!1824223 (validRegex!7539 (reg!16132 r!7292))))

(assert (=> d!1824223 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1532 (reg!16132 r!7292) r!7292 s!2326) lt!2297052)))

(declare-fun m!6734128 () Bool)

(assert (=> bs!1366969 m!6734128))

(declare-fun m!6734130 () Bool)

(assert (=> bs!1366969 m!6734130))

(declare-fun m!6734132 () Bool)

(assert (=> bs!1366969 m!6734132))

(declare-fun m!6734134 () Bool)

(assert (=> bs!1366969 m!6734134))

(assert (=> b!5790404 d!1824223))

(declare-fun bs!1366972 () Bool)

(declare-fun d!1824227 () Bool)

(assert (= bs!1366972 (and d!1824227 b!5790404)))

(declare-fun lambda!315809 () Int)

(assert (=> bs!1366972 (not (= lambda!315809 lambda!315760))))

(declare-fun bs!1366973 () Bool)

(assert (= bs!1366973 (and d!1824227 d!1824223)))

(assert (=> bs!1366973 (= (= (Star!15803 (reg!16132 r!7292)) r!7292) (= lambda!315809 lambda!315797))))

(assert (=> bs!1366973 (not (= lambda!315809 lambda!315799))))

(assert (=> bs!1366972 (not (= lambda!315809 lambda!315761))))

(assert (=> bs!1366972 (= (= (Star!15803 (reg!16132 r!7292)) r!7292) (= lambda!315809 lambda!315759))))

(assert (=> d!1824227 true))

(assert (=> d!1824227 true))

(declare-fun lambda!315811 () Int)

(assert (=> bs!1366972 (= (= (Star!15803 (reg!16132 r!7292)) r!7292) (= lambda!315811 lambda!315760))))

(assert (=> bs!1366973 (not (= lambda!315811 lambda!315797))))

(assert (=> bs!1366973 (not (= lambda!315811 lambda!315799))))

(declare-fun bs!1366975 () Bool)

(assert (= bs!1366975 d!1824227))

(assert (=> bs!1366975 (not (= lambda!315811 lambda!315809))))

(assert (=> bs!1366972 (not (= lambda!315811 lambda!315761))))

(assert (=> bs!1366972 (not (= lambda!315811 lambda!315759))))

(assert (=> d!1824227 true))

(assert (=> d!1824227 true))

(assert (=> d!1824227 (= (Exists!2903 lambda!315809) (Exists!2903 lambda!315811))))

(declare-fun lt!2297058 () Unit!156866)

(declare-fun choose!43976 (Regex!15803 List!63710) Unit!156866)

(assert (=> d!1824227 (= lt!2297058 (choose!43976 (reg!16132 r!7292) s!2326))))

(assert (=> d!1824227 (validRegex!7539 (reg!16132 r!7292))))

(assert (=> d!1824227 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!584 (reg!16132 r!7292) s!2326) lt!2297058)))

(declare-fun m!6734142 () Bool)

(assert (=> bs!1366975 m!6734142))

(declare-fun m!6734144 () Bool)

(assert (=> bs!1366975 m!6734144))

(declare-fun m!6734148 () Bool)

(assert (=> bs!1366975 m!6734148))

(assert (=> bs!1366975 m!6734134))

(assert (=> b!5790404 d!1824227))

(declare-fun d!1824233 () Bool)

(declare-fun choose!43977 (Int) Bool)

(assert (=> d!1824233 (= (Exists!2903 lambda!315759) (choose!43977 lambda!315759))))

(declare-fun bs!1366978 () Bool)

(assert (= bs!1366978 d!1824233))

(declare-fun m!6734152 () Bool)

(assert (=> bs!1366978 m!6734152))

(assert (=> b!5790404 d!1824233))

(declare-fun d!1824239 () Bool)

(assert (=> d!1824239 (= (isEmpty!35492 s!2326) ((_ is Nil!63586) s!2326))))

(assert (=> b!5790404 d!1824239))

(declare-fun d!1824243 () Bool)

(assert (=> d!1824243 (= (Exists!2903 lambda!315761) (choose!43977 lambda!315761))))

(declare-fun bs!1366980 () Bool)

(assert (= bs!1366980 d!1824243))

(declare-fun m!6734156 () Bool)

(assert (=> bs!1366980 m!6734156))

(assert (=> b!5790404 d!1824243))

(declare-fun b!5790741 () Bool)

(declare-fun res!2443320 () Bool)

(declare-fun e!3556247 () Bool)

(assert (=> b!5790741 (=> (not res!2443320) (not e!3556247))))

(declare-fun lt!2297074 () Option!15812)

(declare-fun get!21948 (Option!15812) tuple2!65800)

(assert (=> b!5790741 (= res!2443320 (matchR!7988 (reg!16132 r!7292) (_1!36203 (get!21948 lt!2297074))))))

(declare-fun b!5790742 () Bool)

(declare-fun e!3556246 () Option!15812)

(assert (=> b!5790742 (= e!3556246 (Some!15811 (tuple2!65801 Nil!63586 s!2326)))))

(declare-fun d!1824245 () Bool)

(declare-fun e!3556243 () Bool)

(assert (=> d!1824245 e!3556243))

(declare-fun res!2443322 () Bool)

(assert (=> d!1824245 (=> res!2443322 e!3556243)))

(assert (=> d!1824245 (= res!2443322 e!3556247)))

(declare-fun res!2443323 () Bool)

(assert (=> d!1824245 (=> (not res!2443323) (not e!3556247))))

(assert (=> d!1824245 (= res!2443323 (isDefined!12515 lt!2297074))))

(assert (=> d!1824245 (= lt!2297074 e!3556246)))

(declare-fun c!1025374 () Bool)

(declare-fun e!3556245 () Bool)

(assert (=> d!1824245 (= c!1025374 e!3556245)))

(declare-fun res!2443319 () Bool)

(assert (=> d!1824245 (=> (not res!2443319) (not e!3556245))))

(assert (=> d!1824245 (= res!2443319 (matchR!7988 (reg!16132 r!7292) Nil!63586))))

(assert (=> d!1824245 (validRegex!7539 (reg!16132 r!7292))))

(assert (=> d!1824245 (= (findConcatSeparation!2226 (reg!16132 r!7292) r!7292 Nil!63586 s!2326 s!2326) lt!2297074)))

(declare-fun b!5790743 () Bool)

(declare-fun lt!2297075 () Unit!156866)

(declare-fun lt!2297076 () Unit!156866)

(assert (=> b!5790743 (= lt!2297075 lt!2297076)))

(declare-fun ++!14021 (List!63710 List!63710) List!63710)

(assert (=> b!5790743 (= (++!14021 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586)) (t!377055 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2128 (List!63710 C!31876 List!63710 List!63710) Unit!156866)

(assert (=> b!5790743 (= lt!2297076 (lemmaMoveElementToOtherListKeepsConcatEq!2128 Nil!63586 (h!70034 s!2326) (t!377055 s!2326) s!2326))))

(declare-fun e!3556244 () Option!15812)

(assert (=> b!5790743 (= e!3556244 (findConcatSeparation!2226 (reg!16132 r!7292) r!7292 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586)) (t!377055 s!2326) s!2326))))

(declare-fun b!5790744 () Bool)

(assert (=> b!5790744 (= e!3556246 e!3556244)))

(declare-fun c!1025373 () Bool)

(assert (=> b!5790744 (= c!1025373 ((_ is Nil!63586) s!2326))))

(declare-fun b!5790745 () Bool)

(assert (=> b!5790745 (= e!3556244 None!15811)))

(declare-fun b!5790746 () Bool)

(assert (=> b!5790746 (= e!3556247 (= (++!14021 (_1!36203 (get!21948 lt!2297074)) (_2!36203 (get!21948 lt!2297074))) s!2326))))

(declare-fun b!5790747 () Bool)

(declare-fun res!2443321 () Bool)

(assert (=> b!5790747 (=> (not res!2443321) (not e!3556247))))

(assert (=> b!5790747 (= res!2443321 (matchR!7988 r!7292 (_2!36203 (get!21948 lt!2297074))))))

(declare-fun b!5790748 () Bool)

(assert (=> b!5790748 (= e!3556243 (not (isDefined!12515 lt!2297074)))))

(declare-fun b!5790749 () Bool)

(assert (=> b!5790749 (= e!3556245 (matchR!7988 r!7292 s!2326))))

(assert (= (and d!1824245 res!2443319) b!5790749))

(assert (= (and d!1824245 c!1025374) b!5790742))

(assert (= (and d!1824245 (not c!1025374)) b!5790744))

(assert (= (and b!5790744 c!1025373) b!5790745))

(assert (= (and b!5790744 (not c!1025373)) b!5790743))

(assert (= (and d!1824245 res!2443323) b!5790741))

(assert (= (and b!5790741 res!2443320) b!5790747))

(assert (= (and b!5790747 res!2443321) b!5790746))

(assert (= (and d!1824245 (not res!2443322)) b!5790748))

(declare-fun m!6734176 () Bool)

(assert (=> b!5790747 m!6734176))

(declare-fun m!6734180 () Bool)

(assert (=> b!5790747 m!6734180))

(assert (=> b!5790746 m!6734176))

(declare-fun m!6734182 () Bool)

(assert (=> b!5790746 m!6734182))

(declare-fun m!6734184 () Bool)

(assert (=> b!5790743 m!6734184))

(assert (=> b!5790743 m!6734184))

(declare-fun m!6734186 () Bool)

(assert (=> b!5790743 m!6734186))

(declare-fun m!6734188 () Bool)

(assert (=> b!5790743 m!6734188))

(assert (=> b!5790743 m!6734184))

(declare-fun m!6734190 () Bool)

(assert (=> b!5790743 m!6734190))

(assert (=> b!5790749 m!6733902))

(declare-fun m!6734192 () Bool)

(assert (=> d!1824245 m!6734192))

(declare-fun m!6734194 () Bool)

(assert (=> d!1824245 m!6734194))

(assert (=> d!1824245 m!6734134))

(assert (=> b!5790741 m!6734176))

(declare-fun m!6734196 () Bool)

(assert (=> b!5790741 m!6734196))

(assert (=> b!5790748 m!6734192))

(assert (=> b!5790404 d!1824245))

(declare-fun d!1824249 () Bool)

(assert (=> d!1824249 (= (Exists!2903 lambda!315760) (choose!43977 lambda!315760))))

(declare-fun bs!1366981 () Bool)

(assert (= bs!1366981 d!1824249))

(declare-fun m!6734198 () Bool)

(assert (=> bs!1366981 m!6734198))

(assert (=> b!5790404 d!1824249))

(declare-fun bs!1366985 () Bool)

(declare-fun d!1824251 () Bool)

(assert (= bs!1366985 (and d!1824251 b!5790404)))

(declare-fun lambda!315817 () Int)

(assert (=> bs!1366985 (not (= lambda!315817 lambda!315760))))

(declare-fun bs!1366986 () Bool)

(assert (= bs!1366986 (and d!1824251 d!1824223)))

(assert (=> bs!1366986 (= lambda!315817 lambda!315797)))

(assert (=> bs!1366986 (not (= lambda!315817 lambda!315799))))

(declare-fun bs!1366987 () Bool)

(assert (= bs!1366987 (and d!1824251 d!1824227)))

(assert (=> bs!1366987 (= (= r!7292 (Star!15803 (reg!16132 r!7292))) (= lambda!315817 lambda!315809))))

(assert (=> bs!1366987 (not (= lambda!315817 lambda!315811))))

(assert (=> bs!1366985 (not (= lambda!315817 lambda!315761))))

(assert (=> bs!1366985 (= lambda!315817 lambda!315759)))

(assert (=> d!1824251 true))

(assert (=> d!1824251 true))

(assert (=> d!1824251 true))

(assert (=> d!1824251 (= (isDefined!12515 (findConcatSeparation!2226 (reg!16132 r!7292) r!7292 Nil!63586 s!2326 s!2326)) (Exists!2903 lambda!315817))))

(declare-fun lt!2297082 () Unit!156866)

(declare-fun choose!43978 (Regex!15803 Regex!15803 List!63710) Unit!156866)

(assert (=> d!1824251 (= lt!2297082 (choose!43978 (reg!16132 r!7292) r!7292 s!2326))))

(assert (=> d!1824251 (validRegex!7539 (reg!16132 r!7292))))

(assert (=> d!1824251 (= (lemmaFindConcatSeparationEquivalentToExists!1990 (reg!16132 r!7292) r!7292 s!2326) lt!2297082)))

(declare-fun bs!1366989 () Bool)

(assert (= bs!1366989 d!1824251))

(assert (=> bs!1366989 m!6734134))

(declare-fun m!6734204 () Bool)

(assert (=> bs!1366989 m!6734204))

(assert (=> bs!1366989 m!6733918))

(assert (=> bs!1366989 m!6733920))

(declare-fun m!6734206 () Bool)

(assert (=> bs!1366989 m!6734206))

(assert (=> bs!1366989 m!6733918))

(assert (=> b!5790404 d!1824251))

(declare-fun d!1824255 () Bool)

(declare-fun c!1025377 () Bool)

(assert (=> d!1824255 (= c!1025377 (isEmpty!35492 s!2326))))

(declare-fun e!3556254 () Bool)

(assert (=> d!1824255 (= (matchZipper!1931 lt!2297009 s!2326) e!3556254)))

(declare-fun b!5790762 () Bool)

(declare-fun nullableZipper!1718 ((InoxSet Context!10374)) Bool)

(assert (=> b!5790762 (= e!3556254 (nullableZipper!1718 lt!2297009))))

(declare-fun b!5790763 () Bool)

(declare-fun head!12231 (List!63710) C!31876)

(declare-fun tail!11326 (List!63710) List!63710)

(assert (=> b!5790763 (= e!3556254 (matchZipper!1931 (derivationStepZipper!1872 lt!2297009 (head!12231 s!2326)) (tail!11326 s!2326)))))

(assert (= (and d!1824255 c!1025377) b!5790762))

(assert (= (and d!1824255 (not c!1025377)) b!5790763))

(assert (=> d!1824255 m!6733910))

(declare-fun m!6734208 () Bool)

(assert (=> b!5790762 m!6734208))

(declare-fun m!6734210 () Bool)

(assert (=> b!5790763 m!6734210))

(assert (=> b!5790763 m!6734210))

(declare-fun m!6734212 () Bool)

(assert (=> b!5790763 m!6734212))

(declare-fun m!6734214 () Bool)

(assert (=> b!5790763 m!6734214))

(assert (=> b!5790763 m!6734212))

(assert (=> b!5790763 m!6734214))

(declare-fun m!6734216 () Bool)

(assert (=> b!5790763 m!6734216))

(assert (=> b!5790396 d!1824255))

(declare-fun d!1824257 () Bool)

(declare-fun c!1025378 () Bool)

(assert (=> d!1824257 (= c!1025378 (isEmpty!35492 (t!377055 s!2326)))))

(declare-fun e!3556255 () Bool)

(assert (=> d!1824257 (= (matchZipper!1931 (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326)) (t!377055 s!2326)) e!3556255)))

(declare-fun b!5790766 () Bool)

(assert (=> b!5790766 (= e!3556255 (nullableZipper!1718 (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326))))))

(declare-fun b!5790767 () Bool)

(assert (=> b!5790767 (= e!3556255 (matchZipper!1931 (derivationStepZipper!1872 (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326)) (head!12231 (t!377055 s!2326))) (tail!11326 (t!377055 s!2326))))))

(assert (= (and d!1824257 c!1025378) b!5790766))

(assert (= (and d!1824257 (not c!1025378)) b!5790767))

(declare-fun m!6734218 () Bool)

(assert (=> d!1824257 m!6734218))

(assert (=> b!5790766 m!6733886))

(declare-fun m!6734220 () Bool)

(assert (=> b!5790766 m!6734220))

(declare-fun m!6734222 () Bool)

(assert (=> b!5790767 m!6734222))

(assert (=> b!5790767 m!6733886))

(assert (=> b!5790767 m!6734222))

(declare-fun m!6734224 () Bool)

(assert (=> b!5790767 m!6734224))

(declare-fun m!6734226 () Bool)

(assert (=> b!5790767 m!6734226))

(assert (=> b!5790767 m!6734224))

(assert (=> b!5790767 m!6734226))

(declare-fun m!6734228 () Bool)

(assert (=> b!5790767 m!6734228))

(assert (=> b!5790396 d!1824257))

(declare-fun bs!1366990 () Bool)

(declare-fun d!1824259 () Bool)

(assert (= bs!1366990 (and d!1824259 b!5790413)))

(declare-fun lambda!315818 () Int)

(assert (=> bs!1366990 (= lambda!315818 lambda!315762)))

(declare-fun bs!1366991 () Bool)

(assert (= bs!1366991 (and d!1824259 d!1824205)))

(assert (=> bs!1366991 (= lambda!315818 lambda!315781)))

(assert (=> d!1824259 true))

(assert (=> d!1824259 (= (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326)) (flatMap!1410 lt!2297009 lambda!315818))))

(declare-fun bs!1366992 () Bool)

(assert (= bs!1366992 d!1824259))

(declare-fun m!6734230 () Bool)

(assert (=> bs!1366992 m!6734230))

(assert (=> b!5790396 d!1824259))

(declare-fun bs!1367002 () Bool)

(declare-fun b!5790850 () Bool)

(assert (= bs!1367002 (and b!5790850 b!5790404)))

(declare-fun lambda!315829 () Int)

(assert (=> bs!1367002 (= lambda!315829 lambda!315760)))

(declare-fun bs!1367003 () Bool)

(assert (= bs!1367003 (and b!5790850 d!1824223)))

(assert (=> bs!1367003 (not (= lambda!315829 lambda!315797))))

(assert (=> bs!1367003 (not (= lambda!315829 lambda!315799))))

(declare-fun bs!1367004 () Bool)

(assert (= bs!1367004 (and b!5790850 d!1824251)))

(assert (=> bs!1367004 (not (= lambda!315829 lambda!315817))))

(declare-fun bs!1367005 () Bool)

(assert (= bs!1367005 (and b!5790850 d!1824227)))

(assert (=> bs!1367005 (not (= lambda!315829 lambda!315809))))

(assert (=> bs!1367005 (= (= r!7292 (Star!15803 (reg!16132 r!7292))) (= lambda!315829 lambda!315811))))

(assert (=> bs!1367002 (not (= lambda!315829 lambda!315761))))

(assert (=> bs!1367002 (not (= lambda!315829 lambda!315759))))

(assert (=> b!5790850 true))

(assert (=> b!5790850 true))

(declare-fun bs!1367006 () Bool)

(declare-fun b!5790849 () Bool)

(assert (= bs!1367006 (and b!5790849 b!5790850)))

(declare-fun lambda!315830 () Int)

(assert (=> bs!1367006 (not (= lambda!315830 lambda!315829))))

(declare-fun bs!1367007 () Bool)

(assert (= bs!1367007 (and b!5790849 b!5790404)))

(assert (=> bs!1367007 (not (= lambda!315830 lambda!315760))))

(declare-fun bs!1367008 () Bool)

(assert (= bs!1367008 (and b!5790849 d!1824223)))

(assert (=> bs!1367008 (not (= lambda!315830 lambda!315797))))

(assert (=> bs!1367008 (= (and (= (regOne!32118 r!7292) (reg!16132 r!7292)) (= (regTwo!32118 r!7292) r!7292)) (= lambda!315830 lambda!315799))))

(declare-fun bs!1367009 () Bool)

(assert (= bs!1367009 (and b!5790849 d!1824251)))

(assert (=> bs!1367009 (not (= lambda!315830 lambda!315817))))

(declare-fun bs!1367010 () Bool)

(assert (= bs!1367010 (and b!5790849 d!1824227)))

(assert (=> bs!1367010 (not (= lambda!315830 lambda!315809))))

(assert (=> bs!1367010 (not (= lambda!315830 lambda!315811))))

(assert (=> bs!1367007 (= (and (= (regOne!32118 r!7292) (reg!16132 r!7292)) (= (regTwo!32118 r!7292) r!7292)) (= lambda!315830 lambda!315761))))

(assert (=> bs!1367007 (not (= lambda!315830 lambda!315759))))

(assert (=> b!5790849 true))

(assert (=> b!5790849 true))

(declare-fun b!5790841 () Bool)

(declare-fun e!3556303 () Bool)

(declare-fun call!451064 () Bool)

(assert (=> b!5790841 (= e!3556303 call!451064)))

(declare-fun b!5790842 () Bool)

(declare-fun e!3556304 () Bool)

(assert (=> b!5790842 (= e!3556304 (matchRSpec!2906 (regTwo!32119 r!7292) s!2326))))

(declare-fun b!5790843 () Bool)

(declare-fun e!3556302 () Bool)

(declare-fun e!3556300 () Bool)

(assert (=> b!5790843 (= e!3556302 e!3556300)))

(declare-fun c!1025401 () Bool)

(assert (=> b!5790843 (= c!1025401 ((_ is Star!15803) r!7292))))

(declare-fun b!5790844 () Bool)

(assert (=> b!5790844 (= e!3556302 e!3556304)))

(declare-fun res!2443368 () Bool)

(assert (=> b!5790844 (= res!2443368 (matchRSpec!2906 (regOne!32119 r!7292) s!2326))))

(assert (=> b!5790844 (=> res!2443368 e!3556304)))

(declare-fun b!5790845 () Bool)

(declare-fun e!3556299 () Bool)

(assert (=> b!5790845 (= e!3556299 (= s!2326 (Cons!63586 (c!1025273 r!7292) Nil!63586)))))

(declare-fun bm!451059 () Bool)

(declare-fun call!451065 () Bool)

(assert (=> bm!451059 (= call!451065 (Exists!2903 (ite c!1025401 lambda!315829 lambda!315830)))))

(declare-fun b!5790846 () Bool)

(declare-fun c!1025400 () Bool)

(assert (=> b!5790846 (= c!1025400 ((_ is ElementMatch!15803) r!7292))))

(declare-fun e!3556305 () Bool)

(assert (=> b!5790846 (= e!3556305 e!3556299)))

(declare-fun d!1824261 () Bool)

(declare-fun c!1025402 () Bool)

(assert (=> d!1824261 (= c!1025402 ((_ is EmptyExpr!15803) r!7292))))

(assert (=> d!1824261 (= (matchRSpec!2906 r!7292 s!2326) e!3556303)))

(declare-fun b!5790847 () Bool)

(declare-fun res!2443367 () Bool)

(declare-fun e!3556301 () Bool)

(assert (=> b!5790847 (=> res!2443367 e!3556301)))

(assert (=> b!5790847 (= res!2443367 call!451064)))

(assert (=> b!5790847 (= e!3556300 e!3556301)))

(declare-fun b!5790848 () Bool)

(assert (=> b!5790848 (= e!3556303 e!3556305)))

(declare-fun res!2443369 () Bool)

(assert (=> b!5790848 (= res!2443369 (not ((_ is EmptyLang!15803) r!7292)))))

(assert (=> b!5790848 (=> (not res!2443369) (not e!3556305))))

(assert (=> b!5790849 (= e!3556300 call!451065)))

(declare-fun bm!451060 () Bool)

(assert (=> bm!451060 (= call!451064 (isEmpty!35492 s!2326))))

(assert (=> b!5790850 (= e!3556301 call!451065)))

(declare-fun b!5790851 () Bool)

(declare-fun c!1025399 () Bool)

(assert (=> b!5790851 (= c!1025399 ((_ is Union!15803) r!7292))))

(assert (=> b!5790851 (= e!3556299 e!3556302)))

(assert (= (and d!1824261 c!1025402) b!5790841))

(assert (= (and d!1824261 (not c!1025402)) b!5790848))

(assert (= (and b!5790848 res!2443369) b!5790846))

(assert (= (and b!5790846 c!1025400) b!5790845))

(assert (= (and b!5790846 (not c!1025400)) b!5790851))

(assert (= (and b!5790851 c!1025399) b!5790844))

(assert (= (and b!5790851 (not c!1025399)) b!5790843))

(assert (= (and b!5790844 (not res!2443368)) b!5790842))

(assert (= (and b!5790843 c!1025401) b!5790847))

(assert (= (and b!5790843 (not c!1025401)) b!5790849))

(assert (= (and b!5790847 (not res!2443367)) b!5790850))

(assert (= (or b!5790850 b!5790849) bm!451059))

(assert (= (or b!5790841 b!5790847) bm!451060))

(declare-fun m!6734238 () Bool)

(assert (=> b!5790842 m!6734238))

(declare-fun m!6734240 () Bool)

(assert (=> b!5790844 m!6734240))

(declare-fun m!6734242 () Bool)

(assert (=> bm!451059 m!6734242))

(assert (=> bm!451060 m!6733910))

(assert (=> b!5790405 d!1824261))

(declare-fun b!5790922 () Bool)

(declare-fun e!3556346 () Bool)

(declare-fun lt!2297091 () Bool)

(declare-fun call!451071 () Bool)

(assert (=> b!5790922 (= e!3556346 (= lt!2297091 call!451071))))

(declare-fun b!5790923 () Bool)

(declare-fun e!3556347 () Bool)

(assert (=> b!5790923 (= e!3556346 e!3556347)))

(declare-fun c!1025419 () Bool)

(assert (=> b!5790923 (= c!1025419 ((_ is EmptyLang!15803) r!7292))))

(declare-fun b!5790924 () Bool)

(declare-fun e!3556341 () Bool)

(declare-fun derivativeStep!4578 (Regex!15803 C!31876) Regex!15803)

(assert (=> b!5790924 (= e!3556341 (matchR!7988 (derivativeStep!4578 r!7292 (head!12231 s!2326)) (tail!11326 s!2326)))))

(declare-fun b!5790925 () Bool)

(declare-fun res!2443416 () Bool)

(declare-fun e!3556343 () Bool)

(assert (=> b!5790925 (=> res!2443416 e!3556343)))

(assert (=> b!5790925 (= res!2443416 (not ((_ is ElementMatch!15803) r!7292)))))

(assert (=> b!5790925 (= e!3556347 e!3556343)))

(declare-fun b!5790927 () Bool)

(declare-fun e!3556344 () Bool)

(assert (=> b!5790927 (= e!3556343 e!3556344)))

(declare-fun res!2443413 () Bool)

(assert (=> b!5790927 (=> (not res!2443413) (not e!3556344))))

(assert (=> b!5790927 (= res!2443413 (not lt!2297091))))

(declare-fun b!5790928 () Bool)

(assert (=> b!5790928 (= e!3556347 (not lt!2297091))))

(declare-fun b!5790929 () Bool)

(declare-fun e!3556345 () Bool)

(assert (=> b!5790929 (= e!3556344 e!3556345)))

(declare-fun res!2443417 () Bool)

(assert (=> b!5790929 (=> res!2443417 e!3556345)))

(assert (=> b!5790929 (= res!2443417 call!451071)))

(declare-fun b!5790930 () Bool)

(declare-fun res!2443415 () Bool)

(assert (=> b!5790930 (=> res!2443415 e!3556343)))

(declare-fun e!3556342 () Bool)

(assert (=> b!5790930 (= res!2443415 e!3556342)))

(declare-fun res!2443411 () Bool)

(assert (=> b!5790930 (=> (not res!2443411) (not e!3556342))))

(assert (=> b!5790930 (= res!2443411 lt!2297091)))

(declare-fun b!5790931 () Bool)

(assert (=> b!5790931 (= e!3556342 (= (head!12231 s!2326) (c!1025273 r!7292)))))

(declare-fun bm!451066 () Bool)

(assert (=> bm!451066 (= call!451071 (isEmpty!35492 s!2326))))

(declare-fun b!5790926 () Bool)

(declare-fun res!2443412 () Bool)

(assert (=> b!5790926 (=> (not res!2443412) (not e!3556342))))

(assert (=> b!5790926 (= res!2443412 (not call!451071))))

(declare-fun d!1824265 () Bool)

(assert (=> d!1824265 e!3556346))

(declare-fun c!1025418 () Bool)

(assert (=> d!1824265 (= c!1025418 ((_ is EmptyExpr!15803) r!7292))))

(assert (=> d!1824265 (= lt!2297091 e!3556341)))

(declare-fun c!1025420 () Bool)

(assert (=> d!1824265 (= c!1025420 (isEmpty!35492 s!2326))))

(assert (=> d!1824265 (validRegex!7539 r!7292)))

(assert (=> d!1824265 (= (matchR!7988 r!7292 s!2326) lt!2297091)))

(declare-fun b!5790932 () Bool)

(declare-fun res!2443414 () Bool)

(assert (=> b!5790932 (=> (not res!2443414) (not e!3556342))))

(assert (=> b!5790932 (= res!2443414 (isEmpty!35492 (tail!11326 s!2326)))))

(declare-fun b!5790933 () Bool)

(assert (=> b!5790933 (= e!3556345 (not (= (head!12231 s!2326) (c!1025273 r!7292))))))

(declare-fun b!5790934 () Bool)

(declare-fun res!2443410 () Bool)

(assert (=> b!5790934 (=> res!2443410 e!3556345)))

(assert (=> b!5790934 (= res!2443410 (not (isEmpty!35492 (tail!11326 s!2326))))))

(declare-fun b!5790935 () Bool)

(assert (=> b!5790935 (= e!3556341 (nullable!5834 r!7292))))

(assert (= (and d!1824265 c!1025420) b!5790935))

(assert (= (and d!1824265 (not c!1025420)) b!5790924))

(assert (= (and d!1824265 c!1025418) b!5790922))

(assert (= (and d!1824265 (not c!1025418)) b!5790923))

(assert (= (and b!5790923 c!1025419) b!5790928))

(assert (= (and b!5790923 (not c!1025419)) b!5790925))

(assert (= (and b!5790925 (not res!2443416)) b!5790930))

(assert (= (and b!5790930 res!2443411) b!5790926))

(assert (= (and b!5790926 res!2443412) b!5790932))

(assert (= (and b!5790932 res!2443414) b!5790931))

(assert (= (and b!5790930 (not res!2443415)) b!5790927))

(assert (= (and b!5790927 res!2443413) b!5790929))

(assert (= (and b!5790929 (not res!2443417)) b!5790934))

(assert (= (and b!5790934 (not res!2443410)) b!5790933))

(assert (= (or b!5790922 b!5790926 b!5790929) bm!451066))

(assert (=> b!5790924 m!6734210))

(assert (=> b!5790924 m!6734210))

(declare-fun m!6734256 () Bool)

(assert (=> b!5790924 m!6734256))

(assert (=> b!5790924 m!6734214))

(assert (=> b!5790924 m!6734256))

(assert (=> b!5790924 m!6734214))

(declare-fun m!6734258 () Bool)

(assert (=> b!5790924 m!6734258))

(assert (=> b!5790934 m!6734214))

(assert (=> b!5790934 m!6734214))

(declare-fun m!6734260 () Bool)

(assert (=> b!5790934 m!6734260))

(declare-fun m!6734262 () Bool)

(assert (=> b!5790935 m!6734262))

(assert (=> bm!451066 m!6733910))

(assert (=> d!1824265 m!6733910))

(assert (=> d!1824265 m!6733924))

(assert (=> b!5790931 m!6734210))

(assert (=> b!5790933 m!6734210))

(assert (=> b!5790932 m!6734214))

(assert (=> b!5790932 m!6734214))

(assert (=> b!5790932 m!6734260))

(assert (=> b!5790405 d!1824265))

(declare-fun d!1824273 () Bool)

(assert (=> d!1824273 (= (matchR!7988 r!7292 s!2326) (matchRSpec!2906 r!7292 s!2326))))

(declare-fun lt!2297094 () Unit!156866)

(declare-fun choose!43982 (Regex!15803 List!63710) Unit!156866)

(assert (=> d!1824273 (= lt!2297094 (choose!43982 r!7292 s!2326))))

(assert (=> d!1824273 (validRegex!7539 r!7292)))

(assert (=> d!1824273 (= (mainMatchTheorem!2906 r!7292 s!2326) lt!2297094)))

(declare-fun bs!1367013 () Bool)

(assert (= bs!1367013 d!1824273))

(assert (=> bs!1367013 m!6733902))

(assert (=> bs!1367013 m!6733900))

(declare-fun m!6734270 () Bool)

(assert (=> bs!1367013 m!6734270))

(assert (=> bs!1367013 m!6733924))

(assert (=> b!5790405 d!1824273))

(declare-fun b!5790958 () Bool)

(declare-fun e!3556362 () Bool)

(declare-fun tp!1597497 () Bool)

(assert (=> b!5790958 (= e!3556362 tp!1597497)))

(declare-fun b!5790957 () Bool)

(declare-fun e!3556361 () Bool)

(declare-fun tp!1597498 () Bool)

(assert (=> b!5790957 (= e!3556361 (and (inv!82754 (h!70033 (t!377054 zl!343))) e!3556362 tp!1597498))))

(assert (=> b!5790408 (= tp!1597488 e!3556361)))

(assert (= b!5790957 b!5790958))

(assert (= (and b!5790408 ((_ is Cons!63585) (t!377054 zl!343))) b!5790957))

(declare-fun m!6734272 () Bool)

(assert (=> b!5790957 m!6734272))

(declare-fun b!5790963 () Bool)

(declare-fun e!3556365 () Bool)

(declare-fun tp!1597503 () Bool)

(declare-fun tp!1597504 () Bool)

(assert (=> b!5790963 (= e!3556365 (and tp!1597503 tp!1597504))))

(assert (=> b!5790399 (= tp!1597491 e!3556365)))

(assert (= (and b!5790399 ((_ is Cons!63584) (exprs!5687 (h!70033 zl!343)))) b!5790963))

(declare-fun b!5790977 () Bool)

(declare-fun e!3556368 () Bool)

(declare-fun tp!1597515 () Bool)

(declare-fun tp!1597518 () Bool)

(assert (=> b!5790977 (= e!3556368 (and tp!1597515 tp!1597518))))

(declare-fun b!5790975 () Bool)

(declare-fun tp!1597517 () Bool)

(declare-fun tp!1597516 () Bool)

(assert (=> b!5790975 (= e!3556368 (and tp!1597517 tp!1597516))))

(assert (=> b!5790414 (= tp!1597484 e!3556368)))

(declare-fun b!5790976 () Bool)

(declare-fun tp!1597519 () Bool)

(assert (=> b!5790976 (= e!3556368 tp!1597519)))

(declare-fun b!5790974 () Bool)

(assert (=> b!5790974 (= e!3556368 tp_is_empty!40859)))

(assert (= (and b!5790414 ((_ is ElementMatch!15803) (reg!16132 r!7292))) b!5790974))

(assert (= (and b!5790414 ((_ is Concat!24648) (reg!16132 r!7292))) b!5790975))

(assert (= (and b!5790414 ((_ is Star!15803) (reg!16132 r!7292))) b!5790976))

(assert (= (and b!5790414 ((_ is Union!15803) (reg!16132 r!7292))) b!5790977))

(declare-fun b!5790981 () Bool)

(declare-fun e!3556369 () Bool)

(declare-fun tp!1597520 () Bool)

(declare-fun tp!1597523 () Bool)

(assert (=> b!5790981 (= e!3556369 (and tp!1597520 tp!1597523))))

(declare-fun b!5790979 () Bool)

(declare-fun tp!1597522 () Bool)

(declare-fun tp!1597521 () Bool)

(assert (=> b!5790979 (= e!3556369 (and tp!1597522 tp!1597521))))

(assert (=> b!5790395 (= tp!1597483 e!3556369)))

(declare-fun b!5790980 () Bool)

(declare-fun tp!1597524 () Bool)

(assert (=> b!5790980 (= e!3556369 tp!1597524)))

(declare-fun b!5790978 () Bool)

(assert (=> b!5790978 (= e!3556369 tp_is_empty!40859)))

(assert (= (and b!5790395 ((_ is ElementMatch!15803) (regOne!32118 r!7292))) b!5790978))

(assert (= (and b!5790395 ((_ is Concat!24648) (regOne!32118 r!7292))) b!5790979))

(assert (= (and b!5790395 ((_ is Star!15803) (regOne!32118 r!7292))) b!5790980))

(assert (= (and b!5790395 ((_ is Union!15803) (regOne!32118 r!7292))) b!5790981))

(declare-fun b!5790985 () Bool)

(declare-fun e!3556370 () Bool)

(declare-fun tp!1597525 () Bool)

(declare-fun tp!1597528 () Bool)

(assert (=> b!5790985 (= e!3556370 (and tp!1597525 tp!1597528))))

(declare-fun b!5790983 () Bool)

(declare-fun tp!1597527 () Bool)

(declare-fun tp!1597526 () Bool)

(assert (=> b!5790983 (= e!3556370 (and tp!1597527 tp!1597526))))

(assert (=> b!5790395 (= tp!1597490 e!3556370)))

(declare-fun b!5790984 () Bool)

(declare-fun tp!1597529 () Bool)

(assert (=> b!5790984 (= e!3556370 tp!1597529)))

(declare-fun b!5790982 () Bool)

(assert (=> b!5790982 (= e!3556370 tp_is_empty!40859)))

(assert (= (and b!5790395 ((_ is ElementMatch!15803) (regTwo!32118 r!7292))) b!5790982))

(assert (= (and b!5790395 ((_ is Concat!24648) (regTwo!32118 r!7292))) b!5790983))

(assert (= (and b!5790395 ((_ is Star!15803) (regTwo!32118 r!7292))) b!5790984))

(assert (= (and b!5790395 ((_ is Union!15803) (regTwo!32118 r!7292))) b!5790985))

(declare-fun b!5790990 () Bool)

(declare-fun e!3556373 () Bool)

(declare-fun tp!1597532 () Bool)

(assert (=> b!5790990 (= e!3556373 (and tp_is_empty!40859 tp!1597532))))

(assert (=> b!5790412 (= tp!1597492 e!3556373)))

(assert (= (and b!5790412 ((_ is Cons!63586) (t!377055 s!2326))) b!5790990))

(declare-fun b!5790994 () Bool)

(declare-fun e!3556374 () Bool)

(declare-fun tp!1597533 () Bool)

(declare-fun tp!1597536 () Bool)

(assert (=> b!5790994 (= e!3556374 (and tp!1597533 tp!1597536))))

(declare-fun b!5790992 () Bool)

(declare-fun tp!1597535 () Bool)

(declare-fun tp!1597534 () Bool)

(assert (=> b!5790992 (= e!3556374 (and tp!1597535 tp!1597534))))

(assert (=> b!5790416 (= tp!1597486 e!3556374)))

(declare-fun b!5790993 () Bool)

(declare-fun tp!1597537 () Bool)

(assert (=> b!5790993 (= e!3556374 tp!1597537)))

(declare-fun b!5790991 () Bool)

(assert (=> b!5790991 (= e!3556374 tp_is_empty!40859)))

(assert (= (and b!5790416 ((_ is ElementMatch!15803) (regOne!32119 r!7292))) b!5790991))

(assert (= (and b!5790416 ((_ is Concat!24648) (regOne!32119 r!7292))) b!5790992))

(assert (= (and b!5790416 ((_ is Star!15803) (regOne!32119 r!7292))) b!5790993))

(assert (= (and b!5790416 ((_ is Union!15803) (regOne!32119 r!7292))) b!5790994))

(declare-fun b!5790998 () Bool)

(declare-fun e!3556375 () Bool)

(declare-fun tp!1597538 () Bool)

(declare-fun tp!1597541 () Bool)

(assert (=> b!5790998 (= e!3556375 (and tp!1597538 tp!1597541))))

(declare-fun b!5790996 () Bool)

(declare-fun tp!1597540 () Bool)

(declare-fun tp!1597539 () Bool)

(assert (=> b!5790996 (= e!3556375 (and tp!1597540 tp!1597539))))

(assert (=> b!5790416 (= tp!1597485 e!3556375)))

(declare-fun b!5790997 () Bool)

(declare-fun tp!1597542 () Bool)

(assert (=> b!5790997 (= e!3556375 tp!1597542)))

(declare-fun b!5790995 () Bool)

(assert (=> b!5790995 (= e!3556375 tp_is_empty!40859)))

(assert (= (and b!5790416 ((_ is ElementMatch!15803) (regTwo!32119 r!7292))) b!5790995))

(assert (= (and b!5790416 ((_ is Concat!24648) (regTwo!32119 r!7292))) b!5790996))

(assert (= (and b!5790416 ((_ is Star!15803) (regTwo!32119 r!7292))) b!5790997))

(assert (= (and b!5790416 ((_ is Union!15803) (regTwo!32119 r!7292))) b!5790998))

(declare-fun condSetEmpty!38925 () Bool)

(assert (=> setNonEmpty!38922 (= condSetEmpty!38925 (= setRest!38922 ((as const (Array Context!10374 Bool)) false)))))

(declare-fun setRes!38925 () Bool)

(assert (=> setNonEmpty!38922 (= tp!1597489 setRes!38925)))

(declare-fun setIsEmpty!38925 () Bool)

(assert (=> setIsEmpty!38925 setRes!38925))

(declare-fun setNonEmpty!38925 () Bool)

(declare-fun setElem!38925 () Context!10374)

(declare-fun tp!1597548 () Bool)

(declare-fun e!3556378 () Bool)

(assert (=> setNonEmpty!38925 (= setRes!38925 (and tp!1597548 (inv!82754 setElem!38925) e!3556378))))

(declare-fun setRest!38925 () (InoxSet Context!10374))

(assert (=> setNonEmpty!38925 (= setRest!38922 ((_ map or) (store ((as const (Array Context!10374 Bool)) false) setElem!38925 true) setRest!38925))))

(declare-fun b!5791003 () Bool)

(declare-fun tp!1597547 () Bool)

(assert (=> b!5791003 (= e!3556378 tp!1597547)))

(assert (= (and setNonEmpty!38922 condSetEmpty!38925) setIsEmpty!38925))

(assert (= (and setNonEmpty!38922 (not condSetEmpty!38925)) setNonEmpty!38925))

(assert (= setNonEmpty!38925 b!5791003))

(declare-fun m!6734280 () Bool)

(assert (=> setNonEmpty!38925 m!6734280))

(declare-fun b!5791004 () Bool)

(declare-fun e!3556379 () Bool)

(declare-fun tp!1597549 () Bool)

(declare-fun tp!1597550 () Bool)

(assert (=> b!5791004 (= e!3556379 (and tp!1597549 tp!1597550))))

(assert (=> b!5790410 (= tp!1597487 e!3556379)))

(assert (= (and b!5790410 ((_ is Cons!63584) (exprs!5687 setElem!38922))) b!5791004))

(declare-fun b_lambda!218299 () Bool)

(assert (= b_lambda!218293 (or b!5790413 b_lambda!218299)))

(declare-fun bs!1367015 () Bool)

(declare-fun d!1824279 () Bool)

(assert (= bs!1367015 (and d!1824279 b!5790413)))

(assert (=> bs!1367015 (= (dynLambda!24895 lambda!315762 lt!2297012) (derivationStepZipperUp!1067 lt!2297012 (h!70034 s!2326)))))

(assert (=> bs!1367015 m!6733894))

(assert (=> d!1824183 d!1824279))

(declare-fun b_lambda!218301 () Bool)

(assert (= b_lambda!218295 (or b!5790413 b_lambda!218301)))

(declare-fun bs!1367016 () Bool)

(declare-fun d!1824281 () Bool)

(assert (= bs!1367016 (and d!1824281 b!5790413)))

(assert (=> bs!1367016 (= (dynLambda!24895 lambda!315762 (h!70033 zl!343)) (derivationStepZipperUp!1067 (h!70033 zl!343) (h!70034 s!2326)))))

(assert (=> bs!1367016 m!6733878))

(assert (=> d!1824197 d!1824281))

(check-sat (not bm!451039) (not bm!451066) (not bm!451047) (not d!1824165) (not b!5790979) (not b!5790741) (not d!1824251) (not bm!451046) (not b!5790449) (not b!5790523) (not d!1824169) (not b!5790932) (not b!5790957) (not b!5790747) (not d!1824183) (not b!5791003) (not b!5790448) (not b!5790454) tp_is_empty!40859 (not b!5790569) (not b!5790935) (not d!1824161) (not d!1824177) (not d!1824255) (not b!5790844) (not b!5790976) (not b!5790562) (not b!5790980) (not d!1824223) (not b!5790977) (not b!5790994) (not b!5790762) (not b!5790748) (not d!1824193) (not d!1824227) (not b!5790446) (not bm!451033) (not d!1824245) (not d!1824259) (not d!1824197) (not b!5790963) (not b!5790993) (not bs!1367016) (not bm!451014) (not bm!451034) (not b!5790983) (not b!5790453) (not b!5790990) (not bm!451015) (not d!1824265) (not b!5790565) (not b!5790984) (not d!1824273) (not bm!451059) (not b!5790656) (not b!5790998) (not b!5790568) (not b!5790992) (not bm!451028) (not b!5790603) (not b!5790560) (not b_lambda!218301) (not b!5790452) (not d!1824173) (not b!5790981) (not bm!451016) (not b!5790619) (not b!5790492) (not b!5790590) (not d!1824187) (not b!5790934) (not b!5790975) (not bs!1367015) (not b!5790997) (not d!1824243) (not b!5790425) (not b!5790749) (not b!5791004) (not bm!451032) (not b!5790450) (not b!5790985) (not b!5790746) (not d!1824249) (not b!5790958) (not b!5790567) (not d!1824167) (not d!1824171) (not b!5790996) (not setNonEmpty!38925) (not b!5790616) (not b!5790933) (not b!5790767) (not bm!451035) (not d!1824219) (not b!5790743) (not b!5790563) (not b!5790593) (not b!5790924) (not b_lambda!218299) (not b!5790526) (not d!1824233) (not b!5790763) (not d!1824205) (not b!5790842) (not b!5790460) (not bm!451060) (not b!5790931) (not d!1824257) (not b!5790766))
(check-sat)
(get-model)

(declare-fun d!1824305 () Bool)

(assert (=> d!1824305 (= (isEmpty!35493 (exprs!5687 (h!70033 zl!343))) ((_ is Nil!63584) (exprs!5687 (h!70033 zl!343))))))

(assert (=> b!5790569 d!1824305))

(declare-fun d!1824307 () Bool)

(assert (=> d!1824307 (= ($colon$colon!1789 (exprs!5687 (Context!10375 lt!2297014)) (ite (or c!1025303 c!1025301) (regTwo!32118 (reg!16132 r!7292)) (reg!16132 r!7292))) (Cons!63584 (ite (or c!1025303 c!1025301) (regTwo!32118 (reg!16132 r!7292)) (reg!16132 r!7292)) (exprs!5687 (Context!10375 lt!2297014))))))

(assert (=> bm!451014 d!1824307))

(declare-fun d!1824309 () Bool)

(assert (=> d!1824309 (= (head!12231 s!2326) (h!70034 s!2326))))

(assert (=> b!5790931 d!1824309))

(assert (=> bs!1367015 d!1824181))

(declare-fun d!1824311 () Bool)

(assert (=> d!1824311 (= (isDefined!12515 lt!2297074) (not (isEmpty!35496 lt!2297074)))))

(declare-fun bs!1367034 () Bool)

(assert (= bs!1367034 d!1824311))

(declare-fun m!6734352 () Bool)

(assert (=> bs!1367034 m!6734352))

(assert (=> d!1824245 d!1824311))

(declare-fun b!5791149 () Bool)

(declare-fun e!3556459 () Bool)

(declare-fun lt!2297105 () Bool)

(declare-fun call!451101 () Bool)

(assert (=> b!5791149 (= e!3556459 (= lt!2297105 call!451101))))

(declare-fun b!5791150 () Bool)

(declare-fun e!3556460 () Bool)

(assert (=> b!5791150 (= e!3556459 e!3556460)))

(declare-fun c!1025467 () Bool)

(assert (=> b!5791150 (= c!1025467 ((_ is EmptyLang!15803) (reg!16132 r!7292)))))

(declare-fun b!5791151 () Bool)

(declare-fun e!3556454 () Bool)

(assert (=> b!5791151 (= e!3556454 (matchR!7988 (derivativeStep!4578 (reg!16132 r!7292) (head!12231 Nil!63586)) (tail!11326 Nil!63586)))))

(declare-fun b!5791152 () Bool)

(declare-fun res!2443439 () Bool)

(declare-fun e!3556456 () Bool)

(assert (=> b!5791152 (=> res!2443439 e!3556456)))

(assert (=> b!5791152 (= res!2443439 (not ((_ is ElementMatch!15803) (reg!16132 r!7292))))))

(assert (=> b!5791152 (= e!3556460 e!3556456)))

(declare-fun b!5791154 () Bool)

(declare-fun e!3556457 () Bool)

(assert (=> b!5791154 (= e!3556456 e!3556457)))

(declare-fun res!2443436 () Bool)

(assert (=> b!5791154 (=> (not res!2443436) (not e!3556457))))

(assert (=> b!5791154 (= res!2443436 (not lt!2297105))))

(declare-fun b!5791155 () Bool)

(assert (=> b!5791155 (= e!3556460 (not lt!2297105))))

(declare-fun b!5791156 () Bool)

(declare-fun e!3556458 () Bool)

(assert (=> b!5791156 (= e!3556457 e!3556458)))

(declare-fun res!2443440 () Bool)

(assert (=> b!5791156 (=> res!2443440 e!3556458)))

(assert (=> b!5791156 (= res!2443440 call!451101)))

(declare-fun b!5791157 () Bool)

(declare-fun res!2443438 () Bool)

(assert (=> b!5791157 (=> res!2443438 e!3556456)))

(declare-fun e!3556455 () Bool)

(assert (=> b!5791157 (= res!2443438 e!3556455)))

(declare-fun res!2443434 () Bool)

(assert (=> b!5791157 (=> (not res!2443434) (not e!3556455))))

(assert (=> b!5791157 (= res!2443434 lt!2297105)))

(declare-fun b!5791158 () Bool)

(assert (=> b!5791158 (= e!3556455 (= (head!12231 Nil!63586) (c!1025273 (reg!16132 r!7292))))))

(declare-fun bm!451096 () Bool)

(assert (=> bm!451096 (= call!451101 (isEmpty!35492 Nil!63586))))

(declare-fun b!5791153 () Bool)

(declare-fun res!2443435 () Bool)

(assert (=> b!5791153 (=> (not res!2443435) (not e!3556455))))

(assert (=> b!5791153 (= res!2443435 (not call!451101))))

(declare-fun d!1824313 () Bool)

(assert (=> d!1824313 e!3556459))

(declare-fun c!1025466 () Bool)

(assert (=> d!1824313 (= c!1025466 ((_ is EmptyExpr!15803) (reg!16132 r!7292)))))

(assert (=> d!1824313 (= lt!2297105 e!3556454)))

(declare-fun c!1025468 () Bool)

(assert (=> d!1824313 (= c!1025468 (isEmpty!35492 Nil!63586))))

(assert (=> d!1824313 (validRegex!7539 (reg!16132 r!7292))))

(assert (=> d!1824313 (= (matchR!7988 (reg!16132 r!7292) Nil!63586) lt!2297105)))

(declare-fun b!5791159 () Bool)

(declare-fun res!2443437 () Bool)

(assert (=> b!5791159 (=> (not res!2443437) (not e!3556455))))

(assert (=> b!5791159 (= res!2443437 (isEmpty!35492 (tail!11326 Nil!63586)))))

(declare-fun b!5791160 () Bool)

(assert (=> b!5791160 (= e!3556458 (not (= (head!12231 Nil!63586) (c!1025273 (reg!16132 r!7292)))))))

(declare-fun b!5791161 () Bool)

(declare-fun res!2443433 () Bool)

(assert (=> b!5791161 (=> res!2443433 e!3556458)))

(assert (=> b!5791161 (= res!2443433 (not (isEmpty!35492 (tail!11326 Nil!63586))))))

(declare-fun b!5791162 () Bool)

(assert (=> b!5791162 (= e!3556454 (nullable!5834 (reg!16132 r!7292)))))

(assert (= (and d!1824313 c!1025468) b!5791162))

(assert (= (and d!1824313 (not c!1025468)) b!5791151))

(assert (= (and d!1824313 c!1025466) b!5791149))

(assert (= (and d!1824313 (not c!1025466)) b!5791150))

(assert (= (and b!5791150 c!1025467) b!5791155))

(assert (= (and b!5791150 (not c!1025467)) b!5791152))

(assert (= (and b!5791152 (not res!2443439)) b!5791157))

(assert (= (and b!5791157 res!2443434) b!5791153))

(assert (= (and b!5791153 res!2443435) b!5791159))

(assert (= (and b!5791159 res!2443437) b!5791158))

(assert (= (and b!5791157 (not res!2443438)) b!5791154))

(assert (= (and b!5791154 res!2443436) b!5791156))

(assert (= (and b!5791156 (not res!2443440)) b!5791161))

(assert (= (and b!5791161 (not res!2443433)) b!5791160))

(assert (= (or b!5791149 b!5791153 b!5791156) bm!451096))

(declare-fun m!6734354 () Bool)

(assert (=> b!5791151 m!6734354))

(assert (=> b!5791151 m!6734354))

(declare-fun m!6734356 () Bool)

(assert (=> b!5791151 m!6734356))

(declare-fun m!6734358 () Bool)

(assert (=> b!5791151 m!6734358))

(assert (=> b!5791151 m!6734356))

(assert (=> b!5791151 m!6734358))

(declare-fun m!6734360 () Bool)

(assert (=> b!5791151 m!6734360))

(assert (=> b!5791161 m!6734358))

(assert (=> b!5791161 m!6734358))

(declare-fun m!6734362 () Bool)

(assert (=> b!5791161 m!6734362))

(assert (=> b!5791162 m!6734114))

(declare-fun m!6734364 () Bool)

(assert (=> bm!451096 m!6734364))

(assert (=> d!1824313 m!6734364))

(assert (=> d!1824313 m!6734134))

(assert (=> b!5791158 m!6734354))

(assert (=> b!5791160 m!6734354))

(assert (=> b!5791159 m!6734358))

(assert (=> b!5791159 m!6734358))

(assert (=> b!5791159 m!6734362))

(assert (=> d!1824245 d!1824313))

(declare-fun b!5791163 () Bool)

(declare-fun e!3556467 () Bool)

(declare-fun call!451104 () Bool)

(assert (=> b!5791163 (= e!3556467 call!451104)))

(declare-fun b!5791164 () Bool)

(declare-fun res!2443443 () Bool)

(declare-fun e!3556461 () Bool)

(assert (=> b!5791164 (=> (not res!2443443) (not e!3556461))))

(declare-fun call!451102 () Bool)

(assert (=> b!5791164 (= res!2443443 call!451102)))

(declare-fun e!3556463 () Bool)

(assert (=> b!5791164 (= e!3556463 e!3556461)))

(declare-fun b!5791166 () Bool)

(declare-fun e!3556466 () Bool)

(declare-fun e!3556464 () Bool)

(assert (=> b!5791166 (= e!3556466 e!3556464)))

(declare-fun res!2443441 () Bool)

(assert (=> b!5791166 (=> (not res!2443441) (not e!3556464))))

(assert (=> b!5791166 (= res!2443441 call!451102)))

(declare-fun bm!451097 () Bool)

(declare-fun call!451103 () Bool)

(declare-fun c!1025469 () Bool)

(assert (=> bm!451097 (= call!451103 (validRegex!7539 (ite c!1025469 (regTwo!32119 (reg!16132 r!7292)) (regTwo!32118 (reg!16132 r!7292)))))))

(declare-fun c!1025470 () Bool)

(declare-fun bm!451098 () Bool)

(assert (=> bm!451098 (= call!451104 (validRegex!7539 (ite c!1025470 (reg!16132 (reg!16132 r!7292)) (ite c!1025469 (regOne!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292))))))))

(declare-fun b!5791167 () Bool)

(declare-fun res!2443444 () Bool)

(assert (=> b!5791167 (=> res!2443444 e!3556466)))

(assert (=> b!5791167 (= res!2443444 (not ((_ is Concat!24648) (reg!16132 r!7292))))))

(assert (=> b!5791167 (= e!3556463 e!3556466)))

(declare-fun b!5791168 () Bool)

(declare-fun e!3556462 () Bool)

(assert (=> b!5791168 (= e!3556462 e!3556467)))

(declare-fun res!2443442 () Bool)

(assert (=> b!5791168 (= res!2443442 (not (nullable!5834 (reg!16132 (reg!16132 r!7292)))))))

(assert (=> b!5791168 (=> (not res!2443442) (not e!3556467))))

(declare-fun b!5791169 () Bool)

(assert (=> b!5791169 (= e!3556464 call!451103)))

(declare-fun b!5791170 () Bool)

(declare-fun e!3556465 () Bool)

(assert (=> b!5791170 (= e!3556465 e!3556462)))

(assert (=> b!5791170 (= c!1025470 ((_ is Star!15803) (reg!16132 r!7292)))))

(declare-fun d!1824315 () Bool)

(declare-fun res!2443445 () Bool)

(assert (=> d!1824315 (=> res!2443445 e!3556465)))

(assert (=> d!1824315 (= res!2443445 ((_ is ElementMatch!15803) (reg!16132 r!7292)))))

(assert (=> d!1824315 (= (validRegex!7539 (reg!16132 r!7292)) e!3556465)))

(declare-fun b!5791165 () Bool)

(assert (=> b!5791165 (= e!3556461 call!451103)))

(declare-fun b!5791171 () Bool)

(assert (=> b!5791171 (= e!3556462 e!3556463)))

(assert (=> b!5791171 (= c!1025469 ((_ is Union!15803) (reg!16132 r!7292)))))

(declare-fun bm!451099 () Bool)

(assert (=> bm!451099 (= call!451102 call!451104)))

(assert (= (and d!1824315 (not res!2443445)) b!5791170))

(assert (= (and b!5791170 c!1025470) b!5791168))

(assert (= (and b!5791170 (not c!1025470)) b!5791171))

(assert (= (and b!5791168 res!2443442) b!5791163))

(assert (= (and b!5791171 c!1025469) b!5791164))

(assert (= (and b!5791171 (not c!1025469)) b!5791167))

(assert (= (and b!5791164 res!2443443) b!5791165))

(assert (= (and b!5791167 (not res!2443444)) b!5791166))

(assert (= (and b!5791166 res!2443441) b!5791169))

(assert (= (or b!5791165 b!5791169) bm!451097))

(assert (= (or b!5791164 b!5791166) bm!451099))

(assert (= (or b!5791163 bm!451099) bm!451098))

(declare-fun m!6734366 () Bool)

(assert (=> bm!451097 m!6734366))

(declare-fun m!6734368 () Bool)

(assert (=> bm!451098 m!6734368))

(declare-fun m!6734370 () Bool)

(assert (=> b!5791168 m!6734370))

(assert (=> d!1824245 d!1824315))

(declare-fun d!1824317 () Bool)

(assert (=> d!1824317 (= (isEmpty!35492 (tail!11326 s!2326)) ((_ is Nil!63586) (tail!11326 s!2326)))))

(assert (=> b!5790932 d!1824317))

(declare-fun d!1824319 () Bool)

(assert (=> d!1824319 (= (tail!11326 s!2326) (t!377055 s!2326))))

(assert (=> b!5790932 d!1824319))

(assert (=> d!1824255 d!1824239))

(declare-fun b!5791172 () Bool)

(declare-fun e!3556470 () (InoxSet Context!10374))

(declare-fun e!3556473 () (InoxSet Context!10374))

(assert (=> b!5791172 (= e!3556470 e!3556473)))

(declare-fun c!1025471 () Bool)

(assert (=> b!5791172 (= c!1025471 ((_ is Union!15803) (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292)))))))))

(declare-fun c!1025475 () Bool)

(declare-fun call!451110 () List!63708)

(declare-fun bm!451100 () Bool)

(declare-fun c!1025473 () Bool)

(assert (=> bm!451100 (= call!451110 ($colon$colon!1789 (exprs!5687 (ite (or c!1025299 c!1025303) (Context!10375 lt!2297014) (Context!10375 call!451022))) (ite (or c!1025475 c!1025473) (regTwo!32118 (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292)))))) (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292))))))))))

(declare-fun bm!451101 () Bool)

(declare-fun call!451107 () (InoxSet Context!10374))

(assert (=> bm!451101 (= call!451107 (derivationStepZipperDown!1141 (ite c!1025471 (regTwo!32119 (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292)))))) (regOne!32118 (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292))))))) (ite c!1025471 (ite (or c!1025299 c!1025303) (Context!10375 lt!2297014) (Context!10375 call!451022)) (Context!10375 call!451110)) (h!70034 s!2326)))))

(declare-fun bm!451102 () Bool)

(declare-fun call!451108 () List!63708)

(declare-fun call!451109 () (InoxSet Context!10374))

(assert (=> bm!451102 (= call!451109 (derivationStepZipperDown!1141 (ite c!1025471 (regOne!32119 (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292)))))) (ite c!1025475 (regTwo!32118 (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292)))))) (ite c!1025473 (regOne!32118 (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292)))))) (reg!16132 (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292))))))))) (ite (or c!1025471 c!1025475) (ite (or c!1025299 c!1025303) (Context!10375 lt!2297014) (Context!10375 call!451022)) (Context!10375 call!451108)) (h!70034 s!2326)))))

(declare-fun b!5791173 () Bool)

(declare-fun c!1025472 () Bool)

(assert (=> b!5791173 (= c!1025472 ((_ is Star!15803) (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292)))))))))

(declare-fun e!3556472 () (InoxSet Context!10374))

(declare-fun e!3556471 () (InoxSet Context!10374))

(assert (=> b!5791173 (= e!3556472 e!3556471)))

(declare-fun b!5791174 () Bool)

(declare-fun e!3556469 () (InoxSet Context!10374))

(assert (=> b!5791174 (= e!3556469 e!3556472)))

(assert (=> b!5791174 (= c!1025473 ((_ is Concat!24648) (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292)))))))))

(declare-fun bm!451103 () Bool)

(declare-fun call!451105 () (InoxSet Context!10374))

(declare-fun call!451106 () (InoxSet Context!10374))

(assert (=> bm!451103 (= call!451105 call!451106)))

(declare-fun b!5791175 () Bool)

(declare-fun e!3556468 () Bool)

(assert (=> b!5791175 (= c!1025475 e!3556468)))

(declare-fun res!2443446 () Bool)

(assert (=> b!5791175 (=> (not res!2443446) (not e!3556468))))

(assert (=> b!5791175 (= res!2443446 ((_ is Concat!24648) (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292)))))))))

(assert (=> b!5791175 (= e!3556473 e!3556469)))

(declare-fun b!5791176 () Bool)

(assert (=> b!5791176 (= e!3556472 call!451105)))

(declare-fun b!5791177 () Bool)

(assert (=> b!5791177 (= e!3556469 ((_ map or) call!451107 call!451106))))

(declare-fun b!5791178 () Bool)

(assert (=> b!5791178 (= e!3556473 ((_ map or) call!451109 call!451107))))

(declare-fun b!5791179 () Bool)

(assert (=> b!5791179 (= e!3556470 (store ((as const (Array Context!10374 Bool)) false) (ite (or c!1025299 c!1025303) (Context!10375 lt!2297014) (Context!10375 call!451022)) true))))

(declare-fun c!1025474 () Bool)

(declare-fun d!1824321 () Bool)

(assert (=> d!1824321 (= c!1025474 (and ((_ is ElementMatch!15803) (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292)))))) (= (c!1025273 (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292)))))) (h!70034 s!2326))))))

(assert (=> d!1824321 (= (derivationStepZipperDown!1141 (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292))))) (ite (or c!1025299 c!1025303) (Context!10375 lt!2297014) (Context!10375 call!451022)) (h!70034 s!2326)) e!3556470)))

(declare-fun bm!451104 () Bool)

(assert (=> bm!451104 (= call!451108 call!451110)))

(declare-fun b!5791180 () Bool)

(assert (=> b!5791180 (= e!3556468 (nullable!5834 (regOne!32118 (ite c!1025299 (regOne!32119 (reg!16132 r!7292)) (ite c!1025303 (regTwo!32118 (reg!16132 r!7292)) (ite c!1025301 (regOne!32118 (reg!16132 r!7292)) (reg!16132 (reg!16132 r!7292))))))))))

(declare-fun bm!451105 () Bool)

(assert (=> bm!451105 (= call!451106 call!451109)))

(declare-fun b!5791181 () Bool)

(assert (=> b!5791181 (= e!3556471 ((as const (Array Context!10374 Bool)) false))))

(declare-fun b!5791182 () Bool)

(assert (=> b!5791182 (= e!3556471 call!451105)))

(assert (= (and d!1824321 c!1025474) b!5791179))

(assert (= (and d!1824321 (not c!1025474)) b!5791172))

(assert (= (and b!5791172 c!1025471) b!5791178))

(assert (= (and b!5791172 (not c!1025471)) b!5791175))

(assert (= (and b!5791175 res!2443446) b!5791180))

(assert (= (and b!5791175 c!1025475) b!5791177))

(assert (= (and b!5791175 (not c!1025475)) b!5791174))

(assert (= (and b!5791174 c!1025473) b!5791176))

(assert (= (and b!5791174 (not c!1025473)) b!5791173))

(assert (= (and b!5791173 c!1025472) b!5791182))

(assert (= (and b!5791173 (not c!1025472)) b!5791181))

(assert (= (or b!5791176 b!5791182) bm!451104))

(assert (= (or b!5791176 b!5791182) bm!451103))

(assert (= (or b!5791177 bm!451104) bm!451100))

(assert (= (or b!5791177 bm!451103) bm!451105))

(assert (= (or b!5791178 b!5791177) bm!451101))

(assert (= (or b!5791178 bm!451105) bm!451102))

(declare-fun m!6734372 () Bool)

(assert (=> bm!451100 m!6734372))

(declare-fun m!6734374 () Bool)

(assert (=> bm!451101 m!6734374))

(declare-fun m!6734376 () Bool)

(assert (=> b!5791179 m!6734376))

(declare-fun m!6734378 () Bool)

(assert (=> bm!451102 m!6734378))

(declare-fun m!6734380 () Bool)

(assert (=> b!5791180 m!6734380))

(assert (=> bm!451016 d!1824321))

(declare-fun d!1824323 () Bool)

(assert (=> d!1824323 (= (isEmpty!35493 (t!377053 (unfocusZipperList!1231 zl!343))) ((_ is Nil!63584) (t!377053 (unfocusZipperList!1231 zl!343))))))

(assert (=> b!5790453 d!1824323))

(assert (=> b!5790934 d!1824317))

(assert (=> b!5790934 d!1824319))

(declare-fun b!5791191 () Bool)

(declare-fun e!3556479 () List!63710)

(assert (=> b!5791191 (= e!3556479 (_2!36203 (get!21948 lt!2297074)))))

(declare-fun b!5791194 () Bool)

(declare-fun e!3556478 () Bool)

(declare-fun lt!2297108 () List!63710)

(assert (=> b!5791194 (= e!3556478 (or (not (= (_2!36203 (get!21948 lt!2297074)) Nil!63586)) (= lt!2297108 (_1!36203 (get!21948 lt!2297074)))))))

(declare-fun b!5791192 () Bool)

(assert (=> b!5791192 (= e!3556479 (Cons!63586 (h!70034 (_1!36203 (get!21948 lt!2297074))) (++!14021 (t!377055 (_1!36203 (get!21948 lt!2297074))) (_2!36203 (get!21948 lt!2297074)))))))

(declare-fun b!5791193 () Bool)

(declare-fun res!2443452 () Bool)

(assert (=> b!5791193 (=> (not res!2443452) (not e!3556478))))

(declare-fun size!40095 (List!63710) Int)

(assert (=> b!5791193 (= res!2443452 (= (size!40095 lt!2297108) (+ (size!40095 (_1!36203 (get!21948 lt!2297074))) (size!40095 (_2!36203 (get!21948 lt!2297074))))))))

(declare-fun d!1824325 () Bool)

(assert (=> d!1824325 e!3556478))

(declare-fun res!2443451 () Bool)

(assert (=> d!1824325 (=> (not res!2443451) (not e!3556478))))

(declare-fun content!11633 (List!63710) (InoxSet C!31876))

(assert (=> d!1824325 (= res!2443451 (= (content!11633 lt!2297108) ((_ map or) (content!11633 (_1!36203 (get!21948 lt!2297074))) (content!11633 (_2!36203 (get!21948 lt!2297074))))))))

(assert (=> d!1824325 (= lt!2297108 e!3556479)))

(declare-fun c!1025478 () Bool)

(assert (=> d!1824325 (= c!1025478 ((_ is Nil!63586) (_1!36203 (get!21948 lt!2297074))))))

(assert (=> d!1824325 (= (++!14021 (_1!36203 (get!21948 lt!2297074)) (_2!36203 (get!21948 lt!2297074))) lt!2297108)))

(assert (= (and d!1824325 c!1025478) b!5791191))

(assert (= (and d!1824325 (not c!1025478)) b!5791192))

(assert (= (and d!1824325 res!2443451) b!5791193))

(assert (= (and b!5791193 res!2443452) b!5791194))

(declare-fun m!6734382 () Bool)

(assert (=> b!5791192 m!6734382))

(declare-fun m!6734384 () Bool)

(assert (=> b!5791193 m!6734384))

(declare-fun m!6734386 () Bool)

(assert (=> b!5791193 m!6734386))

(declare-fun m!6734388 () Bool)

(assert (=> b!5791193 m!6734388))

(declare-fun m!6734390 () Bool)

(assert (=> d!1824325 m!6734390))

(declare-fun m!6734392 () Bool)

(assert (=> d!1824325 m!6734392))

(declare-fun m!6734394 () Bool)

(assert (=> d!1824325 m!6734394))

(assert (=> b!5790746 d!1824325))

(declare-fun d!1824327 () Bool)

(assert (=> d!1824327 (= (get!21948 lt!2297074) (v!51871 lt!2297074))))

(assert (=> b!5790746 d!1824327))

(declare-fun d!1824329 () Bool)

(declare-fun c!1025481 () Bool)

(assert (=> d!1824329 (= c!1025481 ((_ is Nil!63585) lt!2297024))))

(declare-fun e!3556482 () (InoxSet Context!10374))

(assert (=> d!1824329 (= (content!11631 lt!2297024) e!3556482)))

(declare-fun b!5791199 () Bool)

(assert (=> b!5791199 (= e!3556482 ((as const (Array Context!10374 Bool)) false))))

(declare-fun b!5791200 () Bool)

(assert (=> b!5791200 (= e!3556482 ((_ map or) (store ((as const (Array Context!10374 Bool)) false) (h!70033 lt!2297024) true) (content!11631 (t!377054 lt!2297024))))))

(assert (= (and d!1824329 c!1025481) b!5791199))

(assert (= (and d!1824329 (not c!1025481)) b!5791200))

(declare-fun m!6734396 () Bool)

(assert (=> b!5791200 m!6734396))

(declare-fun m!6734398 () Bool)

(assert (=> b!5791200 m!6734398))

(assert (=> b!5790425 d!1824329))

(declare-fun d!1824331 () Bool)

(declare-fun nullableFct!1867 (Regex!15803) Bool)

(assert (=> d!1824331 (= (nullable!5834 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (nullableFct!1867 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))))))

(declare-fun bs!1367035 () Bool)

(assert (= bs!1367035 d!1824331))

(declare-fun m!6734400 () Bool)

(assert (=> bs!1367035 m!6734400))

(assert (=> b!5790616 d!1824331))

(declare-fun d!1824333 () Bool)

(assert (=> d!1824333 (= (nullable!5834 (h!70032 (exprs!5687 (h!70033 zl!343)))) (nullableFct!1867 (h!70032 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun bs!1367036 () Bool)

(assert (= bs!1367036 d!1824333))

(declare-fun m!6734402 () Bool)

(assert (=> bs!1367036 m!6734402))

(assert (=> b!5790590 d!1824333))

(declare-fun d!1824335 () Bool)

(assert (=> d!1824335 true))

(declare-fun setRes!38931 () Bool)

(assert (=> d!1824335 setRes!38931))

(declare-fun condSetEmpty!38931 () Bool)

(declare-fun res!2443455 () (InoxSet Context!10374))

(assert (=> d!1824335 (= condSetEmpty!38931 (= res!2443455 ((as const (Array Context!10374 Bool)) false)))))

(assert (=> d!1824335 (= (choose!43968 lt!2297009 lambda!315762) res!2443455)))

(declare-fun setIsEmpty!38931 () Bool)

(assert (=> setIsEmpty!38931 setRes!38931))

(declare-fun setNonEmpty!38931 () Bool)

(declare-fun e!3556485 () Bool)

(declare-fun setElem!38931 () Context!10374)

(declare-fun tp!1597614 () Bool)

(assert (=> setNonEmpty!38931 (= setRes!38931 (and tp!1597614 (inv!82754 setElem!38931) e!3556485))))

(declare-fun setRest!38931 () (InoxSet Context!10374))

(assert (=> setNonEmpty!38931 (= res!2443455 ((_ map or) (store ((as const (Array Context!10374 Bool)) false) setElem!38931 true) setRest!38931))))

(declare-fun b!5791203 () Bool)

(declare-fun tp!1597613 () Bool)

(assert (=> b!5791203 (= e!3556485 tp!1597613)))

(assert (= (and d!1824335 condSetEmpty!38931) setIsEmpty!38931))

(assert (= (and d!1824335 (not condSetEmpty!38931)) setNonEmpty!38931))

(assert (= setNonEmpty!38931 b!5791203))

(declare-fun m!6734404 () Bool)

(assert (=> setNonEmpty!38931 m!6734404))

(assert (=> d!1824177 d!1824335))

(declare-fun d!1824337 () Bool)

(assert (=> d!1824337 (= (Exists!2903 lambda!315797) (choose!43977 lambda!315797))))

(declare-fun bs!1367037 () Bool)

(assert (= bs!1367037 d!1824337))

(declare-fun m!6734406 () Bool)

(assert (=> bs!1367037 m!6734406))

(assert (=> d!1824223 d!1824337))

(declare-fun d!1824339 () Bool)

(assert (=> d!1824339 (= (Exists!2903 lambda!315799) (choose!43977 lambda!315799))))

(declare-fun bs!1367038 () Bool)

(assert (= bs!1367038 d!1824339))

(declare-fun m!6734408 () Bool)

(assert (=> bs!1367038 m!6734408))

(assert (=> d!1824223 d!1824339))

(declare-fun bs!1367039 () Bool)

(declare-fun d!1824341 () Bool)

(assert (= bs!1367039 (and d!1824341 b!5790850)))

(declare-fun lambda!315843 () Int)

(assert (=> bs!1367039 (not (= lambda!315843 lambda!315829))))

(declare-fun bs!1367040 () Bool)

(assert (= bs!1367040 (and d!1824341 b!5790404)))

(assert (=> bs!1367040 (not (= lambda!315843 lambda!315760))))

(declare-fun bs!1367041 () Bool)

(assert (= bs!1367041 (and d!1824341 d!1824223)))

(assert (=> bs!1367041 (= lambda!315843 lambda!315797)))

(assert (=> bs!1367041 (not (= lambda!315843 lambda!315799))))

(declare-fun bs!1367042 () Bool)

(assert (= bs!1367042 (and d!1824341 b!5790849)))

(assert (=> bs!1367042 (not (= lambda!315843 lambda!315830))))

(declare-fun bs!1367043 () Bool)

(assert (= bs!1367043 (and d!1824341 d!1824251)))

(assert (=> bs!1367043 (= lambda!315843 lambda!315817)))

(declare-fun bs!1367044 () Bool)

(assert (= bs!1367044 (and d!1824341 d!1824227)))

(assert (=> bs!1367044 (= (= r!7292 (Star!15803 (reg!16132 r!7292))) (= lambda!315843 lambda!315809))))

(assert (=> bs!1367044 (not (= lambda!315843 lambda!315811))))

(assert (=> bs!1367040 (not (= lambda!315843 lambda!315761))))

(assert (=> bs!1367040 (= lambda!315843 lambda!315759)))

(assert (=> d!1824341 true))

(assert (=> d!1824341 true))

(assert (=> d!1824341 true))

(declare-fun bs!1367045 () Bool)

(assert (= bs!1367045 d!1824341))

(declare-fun lambda!315844 () Int)

(assert (=> bs!1367045 (not (= lambda!315844 lambda!315843))))

(assert (=> bs!1367039 (not (= lambda!315844 lambda!315829))))

(assert (=> bs!1367040 (not (= lambda!315844 lambda!315760))))

(assert (=> bs!1367041 (not (= lambda!315844 lambda!315797))))

(assert (=> bs!1367041 (= lambda!315844 lambda!315799)))

(assert (=> bs!1367042 (= (and (= (reg!16132 r!7292) (regOne!32118 r!7292)) (= r!7292 (regTwo!32118 r!7292))) (= lambda!315844 lambda!315830))))

(assert (=> bs!1367043 (not (= lambda!315844 lambda!315817))))

(assert (=> bs!1367044 (not (= lambda!315844 lambda!315809))))

(assert (=> bs!1367044 (not (= lambda!315844 lambda!315811))))

(assert (=> bs!1367040 (= lambda!315844 lambda!315761)))

(assert (=> bs!1367040 (not (= lambda!315844 lambda!315759))))

(assert (=> d!1824341 true))

(assert (=> d!1824341 true))

(assert (=> d!1824341 true))

(assert (=> d!1824341 (= (Exists!2903 lambda!315843) (Exists!2903 lambda!315844))))

(assert (=> d!1824341 true))

(declare-fun _$90!1539 () Unit!156866)

(assert (=> d!1824341 (= (choose!43975 (reg!16132 r!7292) r!7292 s!2326) _$90!1539)))

(declare-fun m!6734410 () Bool)

(assert (=> bs!1367045 m!6734410))

(declare-fun m!6734412 () Bool)

(assert (=> bs!1367045 m!6734412))

(assert (=> d!1824223 d!1824341))

(assert (=> d!1824223 d!1824315))

(assert (=> b!5790460 d!1824187))

(declare-fun bs!1367046 () Bool)

(declare-fun d!1824343 () Bool)

(assert (= bs!1367046 (and d!1824343 d!1824173)))

(declare-fun lambda!315845 () Int)

(assert (=> bs!1367046 (= lambda!315845 lambda!315772)))

(declare-fun bs!1367047 () Bool)

(assert (= bs!1367047 (and d!1824343 d!1824187)))

(assert (=> bs!1367047 (= lambda!315845 lambda!315776)))

(declare-fun bs!1367048 () Bool)

(assert (= bs!1367048 (and d!1824343 d!1824161)))

(assert (=> bs!1367048 (= lambda!315845 lambda!315765)))

(declare-fun bs!1367049 () Bool)

(assert (= bs!1367049 (and d!1824343 d!1824167)))

(assert (=> bs!1367049 (= lambda!315845 lambda!315766)))

(declare-fun bs!1367050 () Bool)

(assert (= bs!1367050 (and d!1824343 d!1824171)))

(assert (=> bs!1367050 (= lambda!315845 lambda!315769)))

(declare-fun lt!2297109 () List!63708)

(assert (=> d!1824343 (forall!14916 lt!2297109 lambda!315845)))

(declare-fun e!3556490 () List!63708)

(assert (=> d!1824343 (= lt!2297109 e!3556490)))

(declare-fun c!1025482 () Bool)

(assert (=> d!1824343 (= c!1025482 ((_ is Cons!63585) (t!377054 zl!343)))))

(assert (=> d!1824343 (= (unfocusZipperList!1231 (t!377054 zl!343)) lt!2297109)))

(declare-fun b!5791212 () Bool)

(assert (=> b!5791212 (= e!3556490 (Cons!63584 (generalisedConcat!1418 (exprs!5687 (h!70033 (t!377054 zl!343)))) (unfocusZipperList!1231 (t!377054 (t!377054 zl!343)))))))

(declare-fun b!5791213 () Bool)

(assert (=> b!5791213 (= e!3556490 Nil!63584)))

(assert (= (and d!1824343 c!1025482) b!5791212))

(assert (= (and d!1824343 (not c!1025482)) b!5791213))

(declare-fun m!6734414 () Bool)

(assert (=> d!1824343 m!6734414))

(declare-fun m!6734416 () Bool)

(assert (=> b!5791212 m!6734416))

(declare-fun m!6734418 () Bool)

(assert (=> b!5791212 m!6734418))

(assert (=> b!5790460 d!1824343))

(declare-fun d!1824345 () Bool)

(declare-fun res!2443468 () Bool)

(declare-fun e!3556495 () Bool)

(assert (=> d!1824345 (=> res!2443468 e!3556495)))

(assert (=> d!1824345 (= res!2443468 ((_ is Nil!63584) lt!2297030))))

(assert (=> d!1824345 (= (forall!14916 lt!2297030 lambda!315772) e!3556495)))

(declare-fun b!5791218 () Bool)

(declare-fun e!3556496 () Bool)

(assert (=> b!5791218 (= e!3556495 e!3556496)))

(declare-fun res!2443469 () Bool)

(assert (=> b!5791218 (=> (not res!2443469) (not e!3556496))))

(declare-fun dynLambda!24897 (Int Regex!15803) Bool)

(assert (=> b!5791218 (= res!2443469 (dynLambda!24897 lambda!315772 (h!70032 lt!2297030)))))

(declare-fun b!5791219 () Bool)

(assert (=> b!5791219 (= e!3556496 (forall!14916 (t!377053 lt!2297030) lambda!315772))))

(assert (= (and d!1824345 (not res!2443468)) b!5791218))

(assert (= (and b!5791218 res!2443469) b!5791219))

(declare-fun b_lambda!218309 () Bool)

(assert (=> (not b_lambda!218309) (not b!5791218)))

(declare-fun m!6734420 () Bool)

(assert (=> b!5791218 m!6734420))

(declare-fun m!6734422 () Bool)

(assert (=> b!5791219 m!6734422))

(assert (=> d!1824173 d!1824345))

(assert (=> b!5790748 d!1824311))

(declare-fun d!1824347 () Bool)

(assert (=> d!1824347 true))

(assert (=> d!1824347 true))

(declare-fun res!2443472 () Bool)

(assert (=> d!1824347 (= (choose!43977 lambda!315759) res!2443472)))

(assert (=> d!1824233 d!1824347))

(declare-fun d!1824349 () Bool)

(assert (=> d!1824349 (= (flatMap!1410 lt!2297009 lambda!315818) (choose!43968 lt!2297009 lambda!315818))))

(declare-fun bs!1367051 () Bool)

(assert (= bs!1367051 d!1824349))

(declare-fun m!6734424 () Bool)

(assert (=> bs!1367051 m!6734424))

(assert (=> d!1824259 d!1824349))

(assert (=> b!5790749 d!1824265))

(declare-fun d!1824351 () Bool)

(assert (=> d!1824351 (= (nullable!5834 (h!70032 (exprs!5687 lt!2297012))) (nullableFct!1867 (h!70032 (exprs!5687 lt!2297012))))))

(declare-fun bs!1367052 () Bool)

(assert (= bs!1367052 d!1824351))

(declare-fun m!6734426 () Bool)

(assert (=> bs!1367052 m!6734426))

(assert (=> b!5790523 d!1824351))

(declare-fun d!1824353 () Bool)

(assert (=> d!1824353 true))

(assert (=> d!1824353 true))

(declare-fun res!2443473 () Bool)

(assert (=> d!1824353 (= (choose!43977 lambda!315760) res!2443473)))

(assert (=> d!1824249 d!1824353))

(declare-fun d!1824355 () Bool)

(assert (=> d!1824355 (= (isEmpty!35492 (t!377055 s!2326)) ((_ is Nil!63586) (t!377055 s!2326)))))

(assert (=> d!1824257 d!1824355))

(declare-fun bs!1367053 () Bool)

(declare-fun d!1824357 () Bool)

(assert (= bs!1367053 (and d!1824357 d!1824173)))

(declare-fun lambda!315846 () Int)

(assert (=> bs!1367053 (= lambda!315846 lambda!315772)))

(declare-fun bs!1367054 () Bool)

(assert (= bs!1367054 (and d!1824357 d!1824187)))

(assert (=> bs!1367054 (= lambda!315846 lambda!315776)))

(declare-fun bs!1367055 () Bool)

(assert (= bs!1367055 (and d!1824357 d!1824161)))

(assert (=> bs!1367055 (= lambda!315846 lambda!315765)))

(declare-fun bs!1367056 () Bool)

(assert (= bs!1367056 (and d!1824357 d!1824343)))

(assert (=> bs!1367056 (= lambda!315846 lambda!315845)))

(declare-fun bs!1367057 () Bool)

(assert (= bs!1367057 (and d!1824357 d!1824167)))

(assert (=> bs!1367057 (= lambda!315846 lambda!315766)))

(declare-fun bs!1367058 () Bool)

(assert (= bs!1367058 (and d!1824357 d!1824171)))

(assert (=> bs!1367058 (= lambda!315846 lambda!315769)))

(assert (=> d!1824357 (= (inv!82754 (h!70033 (t!377054 zl!343))) (forall!14916 (exprs!5687 (h!70033 (t!377054 zl!343))) lambda!315846))))

(declare-fun bs!1367059 () Bool)

(assert (= bs!1367059 d!1824357))

(declare-fun m!6734428 () Bool)

(assert (=> bs!1367059 m!6734428))

(assert (=> b!5790957 d!1824357))

(declare-fun b!5791220 () Bool)

(declare-fun e!3556497 () Bool)

(assert (=> b!5791220 (= e!3556497 (nullable!5834 (h!70032 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 lt!2297012)))))))))

(declare-fun bm!451106 () Bool)

(declare-fun call!451111 () (InoxSet Context!10374))

(assert (=> bm!451106 (= call!451111 (derivationStepZipperDown!1141 (h!70032 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 lt!2297012))))) (Context!10375 (t!377053 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 lt!2297012)))))) (h!70034 s!2326)))))

(declare-fun d!1824359 () Bool)

(declare-fun c!1025483 () Bool)

(assert (=> d!1824359 (= c!1025483 e!3556497)))

(declare-fun res!2443474 () Bool)

(assert (=> d!1824359 (=> (not res!2443474) (not e!3556497))))

(assert (=> d!1824359 (= res!2443474 ((_ is Cons!63584) (exprs!5687 (Context!10375 (t!377053 (exprs!5687 lt!2297012))))))))

(declare-fun e!3556499 () (InoxSet Context!10374))

(assert (=> d!1824359 (= (derivationStepZipperUp!1067 (Context!10375 (t!377053 (exprs!5687 lt!2297012))) (h!70034 s!2326)) e!3556499)))

(declare-fun b!5791221 () Bool)

(declare-fun e!3556498 () (InoxSet Context!10374))

(assert (=> b!5791221 (= e!3556498 call!451111)))

(declare-fun b!5791222 () Bool)

(assert (=> b!5791222 (= e!3556499 e!3556498)))

(declare-fun c!1025484 () Bool)

(assert (=> b!5791222 (= c!1025484 ((_ is Cons!63584) (exprs!5687 (Context!10375 (t!377053 (exprs!5687 lt!2297012))))))))

(declare-fun b!5791223 () Bool)

(assert (=> b!5791223 (= e!3556499 ((_ map or) call!451111 (derivationStepZipperUp!1067 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 lt!2297012)))))) (h!70034 s!2326))))))

(declare-fun b!5791224 () Bool)

(assert (=> b!5791224 (= e!3556498 ((as const (Array Context!10374 Bool)) false))))

(assert (= (and d!1824359 res!2443474) b!5791220))

(assert (= (and d!1824359 c!1025483) b!5791223))

(assert (= (and d!1824359 (not c!1025483)) b!5791222))

(assert (= (and b!5791222 c!1025484) b!5791221))

(assert (= (and b!5791222 (not c!1025484)) b!5791224))

(assert (= (or b!5791223 b!5791221) bm!451106))

(declare-fun m!6734430 () Bool)

(assert (=> b!5791220 m!6734430))

(declare-fun m!6734432 () Bool)

(assert (=> bm!451106 m!6734432))

(declare-fun m!6734434 () Bool)

(assert (=> b!5791223 m!6734434))

(assert (=> b!5790526 d!1824359))

(declare-fun d!1824361 () Bool)

(assert (=> d!1824361 (= (Exists!2903 lambda!315809) (choose!43977 lambda!315809))))

(declare-fun bs!1367060 () Bool)

(assert (= bs!1367060 d!1824361))

(declare-fun m!6734436 () Bool)

(assert (=> bs!1367060 m!6734436))

(assert (=> d!1824227 d!1824361))

(declare-fun d!1824363 () Bool)

(assert (=> d!1824363 (= (Exists!2903 lambda!315811) (choose!43977 lambda!315811))))

(declare-fun bs!1367061 () Bool)

(assert (= bs!1367061 d!1824363))

(declare-fun m!6734438 () Bool)

(assert (=> bs!1367061 m!6734438))

(assert (=> d!1824227 d!1824363))

(declare-fun bs!1367062 () Bool)

(declare-fun d!1824365 () Bool)

(assert (= bs!1367062 (and d!1824365 d!1824341)))

(declare-fun lambda!315851 () Int)

(assert (=> bs!1367062 (= (= (Star!15803 (reg!16132 r!7292)) r!7292) (= lambda!315851 lambda!315843))))

(declare-fun bs!1367063 () Bool)

(assert (= bs!1367063 (and d!1824365 b!5790850)))

(assert (=> bs!1367063 (not (= lambda!315851 lambda!315829))))

(declare-fun bs!1367064 () Bool)

(assert (= bs!1367064 (and d!1824365 b!5790404)))

(assert (=> bs!1367064 (not (= lambda!315851 lambda!315760))))

(declare-fun bs!1367065 () Bool)

(assert (= bs!1367065 (and d!1824365 d!1824223)))

(assert (=> bs!1367065 (= (= (Star!15803 (reg!16132 r!7292)) r!7292) (= lambda!315851 lambda!315797))))

(assert (=> bs!1367065 (not (= lambda!315851 lambda!315799))))

(declare-fun bs!1367066 () Bool)

(assert (= bs!1367066 (and d!1824365 b!5790849)))

(assert (=> bs!1367066 (not (= lambda!315851 lambda!315830))))

(declare-fun bs!1367067 () Bool)

(assert (= bs!1367067 (and d!1824365 d!1824251)))

(assert (=> bs!1367067 (= (= (Star!15803 (reg!16132 r!7292)) r!7292) (= lambda!315851 lambda!315817))))

(assert (=> bs!1367062 (not (= lambda!315851 lambda!315844))))

(declare-fun bs!1367068 () Bool)

(assert (= bs!1367068 (and d!1824365 d!1824227)))

(assert (=> bs!1367068 (= lambda!315851 lambda!315809)))

(assert (=> bs!1367068 (not (= lambda!315851 lambda!315811))))

(assert (=> bs!1367064 (not (= lambda!315851 lambda!315761))))

(assert (=> bs!1367064 (= (= (Star!15803 (reg!16132 r!7292)) r!7292) (= lambda!315851 lambda!315759))))

(assert (=> d!1824365 true))

(assert (=> d!1824365 true))

(declare-fun lambda!315852 () Int)

(assert (=> bs!1367062 (not (= lambda!315852 lambda!315843))))

(assert (=> bs!1367063 (= (= (Star!15803 (reg!16132 r!7292)) r!7292) (= lambda!315852 lambda!315829))))

(assert (=> bs!1367064 (= (= (Star!15803 (reg!16132 r!7292)) r!7292) (= lambda!315852 lambda!315760))))

(assert (=> bs!1367065 (not (= lambda!315852 lambda!315797))))

(assert (=> bs!1367065 (not (= lambda!315852 lambda!315799))))

(assert (=> bs!1367066 (not (= lambda!315852 lambda!315830))))

(assert (=> bs!1367067 (not (= lambda!315852 lambda!315817))))

(assert (=> bs!1367068 (not (= lambda!315852 lambda!315809))))

(assert (=> bs!1367068 (= lambda!315852 lambda!315811)))

(assert (=> bs!1367064 (not (= lambda!315852 lambda!315761))))

(assert (=> bs!1367064 (not (= lambda!315852 lambda!315759))))

(declare-fun bs!1367069 () Bool)

(assert (= bs!1367069 d!1824365))

(assert (=> bs!1367069 (not (= lambda!315852 lambda!315851))))

(assert (=> bs!1367062 (not (= lambda!315852 lambda!315844))))

(assert (=> d!1824365 true))

(assert (=> d!1824365 true))

(assert (=> d!1824365 (= (Exists!2903 lambda!315851) (Exists!2903 lambda!315852))))

(assert (=> d!1824365 true))

(declare-fun _$91!542 () Unit!156866)

(assert (=> d!1824365 (= (choose!43976 (reg!16132 r!7292) s!2326) _$91!542)))

(declare-fun m!6734440 () Bool)

(assert (=> bs!1367069 m!6734440))

(declare-fun m!6734442 () Bool)

(assert (=> bs!1367069 m!6734442))

(assert (=> d!1824227 d!1824365))

(assert (=> d!1824227 d!1824315))

(assert (=> d!1824273 d!1824265))

(assert (=> d!1824273 d!1824261))

(declare-fun d!1824367 () Bool)

(assert (=> d!1824367 (= (matchR!7988 r!7292 s!2326) (matchRSpec!2906 r!7292 s!2326))))

(assert (=> d!1824367 true))

(declare-fun _$88!4109 () Unit!156866)

(assert (=> d!1824367 (= (choose!43982 r!7292 s!2326) _$88!4109)))

(declare-fun bs!1367070 () Bool)

(assert (= bs!1367070 d!1824367))

(assert (=> bs!1367070 m!6733902))

(assert (=> bs!1367070 m!6733900))

(assert (=> d!1824273 d!1824367))

(assert (=> d!1824273 d!1824207))

(declare-fun b!5791235 () Bool)

(declare-fun e!3556506 () (InoxSet Context!10374))

(declare-fun e!3556509 () (InoxSet Context!10374))

(assert (=> b!5791235 (= e!3556506 e!3556509)))

(declare-fun c!1025485 () Bool)

(assert (=> b!5791235 (= c!1025485 ((_ is Union!15803) (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292))))))

(declare-fun call!451117 () List!63708)

(declare-fun bm!451107 () Bool)

(declare-fun c!1025489 () Bool)

(declare-fun c!1025487 () Bool)

(assert (=> bm!451107 (= call!451117 ($colon$colon!1789 (exprs!5687 (ite c!1025338 (Context!10375 Nil!63584) (Context!10375 call!451043))) (ite (or c!1025489 c!1025487) (regTwo!32118 (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292))) (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292)))))))

(declare-fun bm!451108 () Bool)

(declare-fun call!451114 () (InoxSet Context!10374))

(assert (=> bm!451108 (= call!451114 (derivationStepZipperDown!1141 (ite c!1025485 (regTwo!32119 (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292))) (regOne!32118 (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292)))) (ite c!1025485 (ite c!1025338 (Context!10375 Nil!63584) (Context!10375 call!451043)) (Context!10375 call!451117)) (h!70034 s!2326)))))

(declare-fun call!451115 () List!63708)

(declare-fun call!451116 () (InoxSet Context!10374))

(declare-fun bm!451109 () Bool)

(assert (=> bm!451109 (= call!451116 (derivationStepZipperDown!1141 (ite c!1025485 (regOne!32119 (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292))) (ite c!1025489 (regTwo!32118 (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292))) (ite c!1025487 (regOne!32118 (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292))) (reg!16132 (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292)))))) (ite (or c!1025485 c!1025489) (ite c!1025338 (Context!10375 Nil!63584) (Context!10375 call!451043)) (Context!10375 call!451115)) (h!70034 s!2326)))))

(declare-fun b!5791236 () Bool)

(declare-fun c!1025486 () Bool)

(assert (=> b!5791236 (= c!1025486 ((_ is Star!15803) (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292))))))

(declare-fun e!3556508 () (InoxSet Context!10374))

(declare-fun e!3556507 () (InoxSet Context!10374))

(assert (=> b!5791236 (= e!3556508 e!3556507)))

(declare-fun b!5791237 () Bool)

(declare-fun e!3556505 () (InoxSet Context!10374))

(assert (=> b!5791237 (= e!3556505 e!3556508)))

(assert (=> b!5791237 (= c!1025487 ((_ is Concat!24648) (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292))))))

(declare-fun bm!451110 () Bool)

(declare-fun call!451112 () (InoxSet Context!10374))

(declare-fun call!451113 () (InoxSet Context!10374))

(assert (=> bm!451110 (= call!451112 call!451113)))

(declare-fun b!5791238 () Bool)

(declare-fun e!3556504 () Bool)

(assert (=> b!5791238 (= c!1025489 e!3556504)))

(declare-fun res!2443485 () Bool)

(assert (=> b!5791238 (=> (not res!2443485) (not e!3556504))))

(assert (=> b!5791238 (= res!2443485 ((_ is Concat!24648) (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292))))))

(assert (=> b!5791238 (= e!3556509 e!3556505)))

(declare-fun b!5791239 () Bool)

(assert (=> b!5791239 (= e!3556508 call!451112)))

(declare-fun b!5791240 () Bool)

(assert (=> b!5791240 (= e!3556505 ((_ map or) call!451114 call!451113))))

(declare-fun b!5791241 () Bool)

(assert (=> b!5791241 (= e!3556509 ((_ map or) call!451116 call!451114))))

(declare-fun b!5791242 () Bool)

(assert (=> b!5791242 (= e!3556506 (store ((as const (Array Context!10374 Bool)) false) (ite c!1025338 (Context!10375 Nil!63584) (Context!10375 call!451043)) true))))

(declare-fun c!1025488 () Bool)

(declare-fun d!1824369 () Bool)

(assert (=> d!1824369 (= c!1025488 (and ((_ is ElementMatch!15803) (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292))) (= (c!1025273 (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292))) (h!70034 s!2326))))))

(assert (=> d!1824369 (= (derivationStepZipperDown!1141 (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292)) (ite c!1025338 (Context!10375 Nil!63584) (Context!10375 call!451043)) (h!70034 s!2326)) e!3556506)))

(declare-fun bm!451111 () Bool)

(assert (=> bm!451111 (= call!451115 call!451117)))

(declare-fun b!5791243 () Bool)

(assert (=> b!5791243 (= e!3556504 (nullable!5834 (regOne!32118 (ite c!1025338 (regTwo!32119 r!7292) (regOne!32118 r!7292)))))))

(declare-fun bm!451112 () Bool)

(assert (=> bm!451112 (= call!451113 call!451116)))

(declare-fun b!5791244 () Bool)

(assert (=> b!5791244 (= e!3556507 ((as const (Array Context!10374 Bool)) false))))

(declare-fun b!5791245 () Bool)

(assert (=> b!5791245 (= e!3556507 call!451112)))

(assert (= (and d!1824369 c!1025488) b!5791242))

(assert (= (and d!1824369 (not c!1025488)) b!5791235))

(assert (= (and b!5791235 c!1025485) b!5791241))

(assert (= (and b!5791235 (not c!1025485)) b!5791238))

(assert (= (and b!5791238 res!2443485) b!5791243))

(assert (= (and b!5791238 c!1025489) b!5791240))

(assert (= (and b!5791238 (not c!1025489)) b!5791237))

(assert (= (and b!5791237 c!1025487) b!5791239))

(assert (= (and b!5791237 (not c!1025487)) b!5791236))

(assert (= (and b!5791236 c!1025486) b!5791245))

(assert (= (and b!5791236 (not c!1025486)) b!5791244))

(assert (= (or b!5791239 b!5791245) bm!451111))

(assert (= (or b!5791239 b!5791245) bm!451110))

(assert (= (or b!5791240 bm!451111) bm!451107))

(assert (= (or b!5791240 bm!451110) bm!451112))

(assert (= (or b!5791241 b!5791240) bm!451108))

(assert (= (or b!5791241 bm!451112) bm!451109))

(declare-fun m!6734444 () Bool)

(assert (=> bm!451107 m!6734444))

(declare-fun m!6734446 () Bool)

(assert (=> bm!451108 m!6734446))

(declare-fun m!6734448 () Bool)

(assert (=> b!5791242 m!6734448))

(declare-fun m!6734450 () Bool)

(assert (=> bm!451109 m!6734450))

(declare-fun m!6734452 () Bool)

(assert (=> b!5791243 m!6734452))

(assert (=> bm!451034 d!1824369))

(declare-fun b!5791246 () Bool)

(declare-fun e!3556516 () Bool)

(declare-fun call!451120 () Bool)

(assert (=> b!5791246 (= e!3556516 call!451120)))

(declare-fun b!5791247 () Bool)

(declare-fun res!2443488 () Bool)

(declare-fun e!3556510 () Bool)

(assert (=> b!5791247 (=> (not res!2443488) (not e!3556510))))

(declare-fun call!451118 () Bool)

(assert (=> b!5791247 (= res!2443488 call!451118)))

(declare-fun e!3556512 () Bool)

(assert (=> b!5791247 (= e!3556512 e!3556510)))

(declare-fun b!5791249 () Bool)

(declare-fun e!3556515 () Bool)

(declare-fun e!3556513 () Bool)

(assert (=> b!5791249 (= e!3556515 e!3556513)))

(declare-fun res!2443486 () Bool)

(assert (=> b!5791249 (=> (not res!2443486) (not e!3556513))))

(assert (=> b!5791249 (= res!2443486 call!451118)))

(declare-fun bm!451113 () Bool)

(declare-fun call!451119 () Bool)

(declare-fun c!1025490 () Bool)

(assert (=> bm!451113 (= call!451119 (validRegex!7539 (ite c!1025490 (regTwo!32119 lt!2297042) (regTwo!32118 lt!2297042))))))

(declare-fun bm!451114 () Bool)

(declare-fun c!1025491 () Bool)

(assert (=> bm!451114 (= call!451120 (validRegex!7539 (ite c!1025491 (reg!16132 lt!2297042) (ite c!1025490 (regOne!32119 lt!2297042) (regOne!32118 lt!2297042)))))))

(declare-fun b!5791250 () Bool)

(declare-fun res!2443489 () Bool)

(assert (=> b!5791250 (=> res!2443489 e!3556515)))

(assert (=> b!5791250 (= res!2443489 (not ((_ is Concat!24648) lt!2297042)))))

(assert (=> b!5791250 (= e!3556512 e!3556515)))

(declare-fun b!5791251 () Bool)

(declare-fun e!3556511 () Bool)

(assert (=> b!5791251 (= e!3556511 e!3556516)))

(declare-fun res!2443487 () Bool)

(assert (=> b!5791251 (= res!2443487 (not (nullable!5834 (reg!16132 lt!2297042))))))

(assert (=> b!5791251 (=> (not res!2443487) (not e!3556516))))

(declare-fun b!5791252 () Bool)

(assert (=> b!5791252 (= e!3556513 call!451119)))

(declare-fun b!5791253 () Bool)

(declare-fun e!3556514 () Bool)

(assert (=> b!5791253 (= e!3556514 e!3556511)))

(assert (=> b!5791253 (= c!1025491 ((_ is Star!15803) lt!2297042))))

(declare-fun d!1824371 () Bool)

(declare-fun res!2443490 () Bool)

(assert (=> d!1824371 (=> res!2443490 e!3556514)))

(assert (=> d!1824371 (= res!2443490 ((_ is ElementMatch!15803) lt!2297042))))

(assert (=> d!1824371 (= (validRegex!7539 lt!2297042) e!3556514)))

(declare-fun b!5791248 () Bool)

(assert (=> b!5791248 (= e!3556510 call!451119)))

(declare-fun b!5791254 () Bool)

(assert (=> b!5791254 (= e!3556511 e!3556512)))

(assert (=> b!5791254 (= c!1025490 ((_ is Union!15803) lt!2297042))))

(declare-fun bm!451115 () Bool)

(assert (=> bm!451115 (= call!451118 call!451120)))

(assert (= (and d!1824371 (not res!2443490)) b!5791253))

(assert (= (and b!5791253 c!1025491) b!5791251))

(assert (= (and b!5791253 (not c!1025491)) b!5791254))

(assert (= (and b!5791251 res!2443487) b!5791246))

(assert (= (and b!5791254 c!1025490) b!5791247))

(assert (= (and b!5791254 (not c!1025490)) b!5791250))

(assert (= (and b!5791247 res!2443488) b!5791248))

(assert (= (and b!5791250 (not res!2443489)) b!5791249))

(assert (= (and b!5791249 res!2443486) b!5791252))

(assert (= (or b!5791248 b!5791252) bm!451113))

(assert (= (or b!5791247 b!5791249) bm!451115))

(assert (= (or b!5791246 bm!451115) bm!451114))

(declare-fun m!6734454 () Bool)

(assert (=> bm!451113 m!6734454))

(declare-fun m!6734456 () Bool)

(assert (=> bm!451114 m!6734456))

(declare-fun m!6734458 () Bool)

(assert (=> b!5791251 m!6734458))

(assert (=> d!1824187 d!1824371))

(declare-fun d!1824373 () Bool)

(declare-fun res!2443491 () Bool)

(declare-fun e!3556517 () Bool)

(assert (=> d!1824373 (=> res!2443491 e!3556517)))

(assert (=> d!1824373 (= res!2443491 ((_ is Nil!63584) (exprs!5687 (h!70033 zl!343))))))

(assert (=> d!1824373 (= (forall!14916 (exprs!5687 (h!70033 zl!343)) lambda!315776) e!3556517)))

(declare-fun b!5791255 () Bool)

(declare-fun e!3556518 () Bool)

(assert (=> b!5791255 (= e!3556517 e!3556518)))

(declare-fun res!2443492 () Bool)

(assert (=> b!5791255 (=> (not res!2443492) (not e!3556518))))

(assert (=> b!5791255 (= res!2443492 (dynLambda!24897 lambda!315776 (h!70032 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun b!5791256 () Bool)

(assert (=> b!5791256 (= e!3556518 (forall!14916 (t!377053 (exprs!5687 (h!70033 zl!343))) lambda!315776))))

(assert (= (and d!1824373 (not res!2443491)) b!5791255))

(assert (= (and b!5791255 res!2443492) b!5791256))

(declare-fun b_lambda!218311 () Bool)

(assert (=> (not b_lambda!218311) (not b!5791255)))

(declare-fun m!6734460 () Bool)

(assert (=> b!5791255 m!6734460))

(declare-fun m!6734462 () Bool)

(assert (=> b!5791256 m!6734462))

(assert (=> d!1824187 d!1824373))

(declare-fun b!5791257 () Bool)

(declare-fun e!3556525 () Bool)

(declare-fun call!451123 () Bool)

(assert (=> b!5791257 (= e!3556525 call!451123)))

(declare-fun b!5791258 () Bool)

(declare-fun res!2443495 () Bool)

(declare-fun e!3556519 () Bool)

(assert (=> b!5791258 (=> (not res!2443495) (not e!3556519))))

(declare-fun call!451121 () Bool)

(assert (=> b!5791258 (= res!2443495 call!451121)))

(declare-fun e!3556521 () Bool)

(assert (=> b!5791258 (= e!3556521 e!3556519)))

(declare-fun b!5791260 () Bool)

(declare-fun e!3556524 () Bool)

(declare-fun e!3556522 () Bool)

(assert (=> b!5791260 (= e!3556524 e!3556522)))

(declare-fun res!2443493 () Bool)

(assert (=> b!5791260 (=> (not res!2443493) (not e!3556522))))

(assert (=> b!5791260 (= res!2443493 call!451121)))

(declare-fun bm!451116 () Bool)

(declare-fun call!451122 () Bool)

(declare-fun c!1025492 () Bool)

(assert (=> bm!451116 (= call!451122 (validRegex!7539 (ite c!1025492 (regTwo!32119 lt!2297021) (regTwo!32118 lt!2297021))))))

(declare-fun bm!451117 () Bool)

(declare-fun c!1025493 () Bool)

(assert (=> bm!451117 (= call!451123 (validRegex!7539 (ite c!1025493 (reg!16132 lt!2297021) (ite c!1025492 (regOne!32119 lt!2297021) (regOne!32118 lt!2297021)))))))

(declare-fun b!5791261 () Bool)

(declare-fun res!2443496 () Bool)

(assert (=> b!5791261 (=> res!2443496 e!3556524)))

(assert (=> b!5791261 (= res!2443496 (not ((_ is Concat!24648) lt!2297021)))))

(assert (=> b!5791261 (= e!3556521 e!3556524)))

(declare-fun b!5791262 () Bool)

(declare-fun e!3556520 () Bool)

(assert (=> b!5791262 (= e!3556520 e!3556525)))

(declare-fun res!2443494 () Bool)

(assert (=> b!5791262 (= res!2443494 (not (nullable!5834 (reg!16132 lt!2297021))))))

(assert (=> b!5791262 (=> (not res!2443494) (not e!3556525))))

(declare-fun b!5791263 () Bool)

(assert (=> b!5791263 (= e!3556522 call!451122)))

(declare-fun b!5791264 () Bool)

(declare-fun e!3556523 () Bool)

(assert (=> b!5791264 (= e!3556523 e!3556520)))

(assert (=> b!5791264 (= c!1025493 ((_ is Star!15803) lt!2297021))))

(declare-fun d!1824375 () Bool)

(declare-fun res!2443497 () Bool)

(assert (=> d!1824375 (=> res!2443497 e!3556523)))

(assert (=> d!1824375 (= res!2443497 ((_ is ElementMatch!15803) lt!2297021))))

(assert (=> d!1824375 (= (validRegex!7539 lt!2297021) e!3556523)))

(declare-fun b!5791259 () Bool)

(assert (=> b!5791259 (= e!3556519 call!451122)))

(declare-fun b!5791265 () Bool)

(assert (=> b!5791265 (= e!3556520 e!3556521)))

(assert (=> b!5791265 (= c!1025492 ((_ is Union!15803) lt!2297021))))

(declare-fun bm!451118 () Bool)

(assert (=> bm!451118 (= call!451121 call!451123)))

(assert (= (and d!1824375 (not res!2443497)) b!5791264))

(assert (= (and b!5791264 c!1025493) b!5791262))

(assert (= (and b!5791264 (not c!1025493)) b!5791265))

(assert (= (and b!5791262 res!2443494) b!5791257))

(assert (= (and b!5791265 c!1025492) b!5791258))

(assert (= (and b!5791265 (not c!1025492)) b!5791261))

(assert (= (and b!5791258 res!2443495) b!5791259))

(assert (= (and b!5791261 (not res!2443496)) b!5791260))

(assert (= (and b!5791260 res!2443493) b!5791263))

(assert (= (or b!5791259 b!5791263) bm!451116))

(assert (= (or b!5791258 b!5791260) bm!451118))

(assert (= (or b!5791257 bm!451118) bm!451117))

(declare-fun m!6734464 () Bool)

(assert (=> bm!451116 m!6734464))

(declare-fun m!6734466 () Bool)

(assert (=> bm!451117 m!6734466))

(declare-fun m!6734468 () Bool)

(assert (=> b!5791262 m!6734468))

(assert (=> d!1824165 d!1824375))

(assert (=> d!1824165 d!1824171))

(assert (=> d!1824165 d!1824173))

(declare-fun b!5791266 () Bool)

(declare-fun e!3556532 () Bool)

(declare-fun call!451126 () Bool)

(assert (=> b!5791266 (= e!3556532 call!451126)))

(declare-fun b!5791267 () Bool)

(declare-fun res!2443500 () Bool)

(declare-fun e!3556526 () Bool)

(assert (=> b!5791267 (=> (not res!2443500) (not e!3556526))))

(declare-fun call!451124 () Bool)

(assert (=> b!5791267 (= res!2443500 call!451124)))

(declare-fun e!3556528 () Bool)

(assert (=> b!5791267 (= e!3556528 e!3556526)))

(declare-fun b!5791269 () Bool)

(declare-fun e!3556531 () Bool)

(declare-fun e!3556529 () Bool)

(assert (=> b!5791269 (= e!3556531 e!3556529)))

(declare-fun res!2443498 () Bool)

(assert (=> b!5791269 (=> (not res!2443498) (not e!3556529))))

(assert (=> b!5791269 (= res!2443498 call!451124)))

(declare-fun bm!451119 () Bool)

(declare-fun call!451125 () Bool)

(declare-fun c!1025494 () Bool)

(assert (=> bm!451119 (= call!451125 (validRegex!7539 (ite c!1025494 (regTwo!32119 (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292)))) (regTwo!32118 (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292)))))))))

(declare-fun bm!451120 () Bool)

(declare-fun c!1025495 () Bool)

(assert (=> bm!451120 (= call!451126 (validRegex!7539 (ite c!1025495 (reg!16132 (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292)))) (ite c!1025494 (regOne!32119 (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292)))) (regOne!32118 (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292))))))))))

(declare-fun b!5791270 () Bool)

(declare-fun res!2443501 () Bool)

(assert (=> b!5791270 (=> res!2443501 e!3556531)))

(assert (=> b!5791270 (= res!2443501 (not ((_ is Concat!24648) (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292))))))))

(assert (=> b!5791270 (= e!3556528 e!3556531)))

(declare-fun b!5791271 () Bool)

(declare-fun e!3556527 () Bool)

(assert (=> b!5791271 (= e!3556527 e!3556532)))

(declare-fun res!2443499 () Bool)

(assert (=> b!5791271 (= res!2443499 (not (nullable!5834 (reg!16132 (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292)))))))))

(assert (=> b!5791271 (=> (not res!2443499) (not e!3556532))))

(declare-fun b!5791272 () Bool)

(assert (=> b!5791272 (= e!3556529 call!451125)))

(declare-fun b!5791273 () Bool)

(declare-fun e!3556530 () Bool)

(assert (=> b!5791273 (= e!3556530 e!3556527)))

(assert (=> b!5791273 (= c!1025495 ((_ is Star!15803) (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292)))))))

(declare-fun d!1824377 () Bool)

(declare-fun res!2443502 () Bool)

(assert (=> d!1824377 (=> res!2443502 e!3556530)))

(assert (=> d!1824377 (= res!2443502 ((_ is ElementMatch!15803) (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292)))))))

(assert (=> d!1824377 (= (validRegex!7539 (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292)))) e!3556530)))

(declare-fun b!5791268 () Bool)

(assert (=> b!5791268 (= e!3556526 call!451125)))

(declare-fun b!5791274 () Bool)

(assert (=> b!5791274 (= e!3556527 e!3556528)))

(assert (=> b!5791274 (= c!1025494 ((_ is Union!15803) (ite c!1025362 (reg!16132 r!7292) (ite c!1025361 (regOne!32119 r!7292) (regOne!32118 r!7292)))))))

(declare-fun bm!451121 () Bool)

(assert (=> bm!451121 (= call!451124 call!451126)))

(assert (= (and d!1824377 (not res!2443502)) b!5791273))

(assert (= (and b!5791273 c!1025495) b!5791271))

(assert (= (and b!5791273 (not c!1025495)) b!5791274))

(assert (= (and b!5791271 res!2443499) b!5791266))

(assert (= (and b!5791274 c!1025494) b!5791267))

(assert (= (and b!5791274 (not c!1025494)) b!5791270))

(assert (= (and b!5791267 res!2443500) b!5791268))

(assert (= (and b!5791270 (not res!2443501)) b!5791269))

(assert (= (and b!5791269 res!2443498) b!5791272))

(assert (= (or b!5791268 b!5791272) bm!451119))

(assert (= (or b!5791267 b!5791269) bm!451121))

(assert (= (or b!5791266 bm!451121) bm!451120))

(declare-fun m!6734470 () Bool)

(assert (=> bm!451119 m!6734470))

(declare-fun m!6734472 () Bool)

(assert (=> bm!451120 m!6734472))

(declare-fun m!6734474 () Bool)

(assert (=> b!5791271 m!6734474))

(assert (=> bm!451047 d!1824377))

(declare-fun d!1824379 () Bool)

(assert (=> d!1824379 (= (isEmpty!35493 (tail!11323 (exprs!5687 (h!70033 zl!343)))) ((_ is Nil!63584) (tail!11323 (exprs!5687 (h!70033 zl!343)))))))

(assert (=> b!5790563 d!1824379))

(declare-fun d!1824381 () Bool)

(assert (=> d!1824381 (= (tail!11323 (exprs!5687 (h!70033 zl!343))) (t!377053 (exprs!5687 (h!70033 zl!343))))))

(assert (=> b!5790563 d!1824381))

(declare-fun d!1824383 () Bool)

(assert (=> d!1824383 (= (isEmpty!35496 (findConcatSeparation!2226 (reg!16132 r!7292) r!7292 Nil!63586 s!2326 s!2326)) (not ((_ is Some!15811) (findConcatSeparation!2226 (reg!16132 r!7292) r!7292 Nil!63586 s!2326 s!2326))))))

(assert (=> d!1824219 d!1824383))

(declare-fun d!1824385 () Bool)

(assert (=> d!1824385 (= (isEmpty!35493 (unfocusZipperList!1231 zl!343)) ((_ is Nil!63584) (unfocusZipperList!1231 zl!343)))))

(assert (=> b!5790449 d!1824385))

(declare-fun d!1824387 () Bool)

(assert (=> d!1824387 (= (isEmpty!35493 (t!377053 (exprs!5687 (h!70033 zl!343)))) ((_ is Nil!63584) (t!377053 (exprs!5687 (h!70033 zl!343)))))))

(assert (=> b!5790567 d!1824387))

(assert (=> d!1824197 d!1824193))

(declare-fun d!1824389 () Bool)

(assert (=> d!1824389 (= (flatMap!1410 z!1189 lambda!315762) (dynLambda!24895 lambda!315762 (h!70033 zl!343)))))

(assert (=> d!1824389 true))

(declare-fun _$13!2498 () Unit!156866)

(assert (=> d!1824389 (= (choose!43970 z!1189 (h!70033 zl!343) lambda!315762) _$13!2498)))

(declare-fun b_lambda!218313 () Bool)

(assert (=> (not b_lambda!218313) (not d!1824389)))

(declare-fun bs!1367071 () Bool)

(assert (= bs!1367071 d!1824389))

(assert (=> bs!1367071 m!6733876))

(assert (=> bs!1367071 m!6734040))

(assert (=> d!1824197 d!1824389))

(declare-fun d!1824391 () Bool)

(declare-fun lambda!315855 () Int)

(declare-fun exists!2246 ((InoxSet Context!10374) Int) Bool)

(assert (=> d!1824391 (= (nullableZipper!1718 lt!2297009) (exists!2246 lt!2297009 lambda!315855))))

(declare-fun bs!1367072 () Bool)

(assert (= bs!1367072 d!1824391))

(declare-fun m!6734476 () Bool)

(assert (=> bs!1367072 m!6734476))

(assert (=> b!5790762 d!1824391))

(declare-fun d!1824393 () Bool)

(assert (=> d!1824393 (= (head!12228 (exprs!5687 (h!70033 zl!343))) (h!70032 (exprs!5687 (h!70033 zl!343))))))

(assert (=> b!5790565 d!1824393))

(declare-fun d!1824395 () Bool)

(declare-fun c!1025498 () Bool)

(assert (=> d!1824395 (= c!1025498 (isEmpty!35492 (tail!11326 (t!377055 s!2326))))))

(declare-fun e!3556533 () Bool)

(assert (=> d!1824395 (= (matchZipper!1931 (derivationStepZipper!1872 (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326)) (head!12231 (t!377055 s!2326))) (tail!11326 (t!377055 s!2326))) e!3556533)))

(declare-fun b!5791275 () Bool)

(assert (=> b!5791275 (= e!3556533 (nullableZipper!1718 (derivationStepZipper!1872 (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326)) (head!12231 (t!377055 s!2326)))))))

(declare-fun b!5791276 () Bool)

(assert (=> b!5791276 (= e!3556533 (matchZipper!1931 (derivationStepZipper!1872 (derivationStepZipper!1872 (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326)) (head!12231 (t!377055 s!2326))) (head!12231 (tail!11326 (t!377055 s!2326)))) (tail!11326 (tail!11326 (t!377055 s!2326)))))))

(assert (= (and d!1824395 c!1025498) b!5791275))

(assert (= (and d!1824395 (not c!1025498)) b!5791276))

(assert (=> d!1824395 m!6734226))

(declare-fun m!6734478 () Bool)

(assert (=> d!1824395 m!6734478))

(assert (=> b!5791275 m!6734224))

(declare-fun m!6734480 () Bool)

(assert (=> b!5791275 m!6734480))

(assert (=> b!5791276 m!6734226))

(declare-fun m!6734482 () Bool)

(assert (=> b!5791276 m!6734482))

(assert (=> b!5791276 m!6734224))

(assert (=> b!5791276 m!6734482))

(declare-fun m!6734484 () Bool)

(assert (=> b!5791276 m!6734484))

(assert (=> b!5791276 m!6734226))

(declare-fun m!6734486 () Bool)

(assert (=> b!5791276 m!6734486))

(assert (=> b!5791276 m!6734484))

(assert (=> b!5791276 m!6734486))

(declare-fun m!6734488 () Bool)

(assert (=> b!5791276 m!6734488))

(assert (=> b!5790767 d!1824395))

(declare-fun bs!1367073 () Bool)

(declare-fun d!1824397 () Bool)

(assert (= bs!1367073 (and d!1824397 b!5790413)))

(declare-fun lambda!315856 () Int)

(assert (=> bs!1367073 (= (= (head!12231 (t!377055 s!2326)) (h!70034 s!2326)) (= lambda!315856 lambda!315762))))

(declare-fun bs!1367074 () Bool)

(assert (= bs!1367074 (and d!1824397 d!1824205)))

(assert (=> bs!1367074 (= (= (head!12231 (t!377055 s!2326)) (h!70034 s!2326)) (= lambda!315856 lambda!315781))))

(declare-fun bs!1367075 () Bool)

(assert (= bs!1367075 (and d!1824397 d!1824259)))

(assert (=> bs!1367075 (= (= (head!12231 (t!377055 s!2326)) (h!70034 s!2326)) (= lambda!315856 lambda!315818))))

(assert (=> d!1824397 true))

(assert (=> d!1824397 (= (derivationStepZipper!1872 (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326)) (head!12231 (t!377055 s!2326))) (flatMap!1410 (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326)) lambda!315856))))

(declare-fun bs!1367076 () Bool)

(assert (= bs!1367076 d!1824397))

(assert (=> bs!1367076 m!6733886))

(declare-fun m!6734490 () Bool)

(assert (=> bs!1367076 m!6734490))

(assert (=> b!5790767 d!1824397))

(declare-fun d!1824399 () Bool)

(assert (=> d!1824399 (= (head!12231 (t!377055 s!2326)) (h!70034 (t!377055 s!2326)))))

(assert (=> b!5790767 d!1824399))

(declare-fun d!1824401 () Bool)

(assert (=> d!1824401 (= (tail!11326 (t!377055 s!2326)) (t!377055 (t!377055 s!2326)))))

(assert (=> b!5790767 d!1824401))

(declare-fun d!1824403 () Bool)

(assert (=> d!1824403 (= (nullable!5834 (reg!16132 r!7292)) (nullableFct!1867 (reg!16132 r!7292)))))

(declare-fun bs!1367077 () Bool)

(assert (= bs!1367077 d!1824403))

(declare-fun m!6734492 () Bool)

(assert (=> bs!1367077 m!6734492))

(assert (=> b!5790656 d!1824403))

(declare-fun d!1824405 () Bool)

(assert (=> d!1824405 (= (flatMap!1410 z!1189 lambda!315781) (choose!43968 z!1189 lambda!315781))))

(declare-fun bs!1367078 () Bool)

(assert (= bs!1367078 d!1824405))

(declare-fun m!6734494 () Bool)

(assert (=> bs!1367078 m!6734494))

(assert (=> d!1824205 d!1824405))

(declare-fun d!1824407 () Bool)

(assert (=> d!1824407 (= (isEmpty!35493 (tail!11323 (unfocusZipperList!1231 zl!343))) ((_ is Nil!63584) (tail!11323 (unfocusZipperList!1231 zl!343))))))

(assert (=> b!5790452 d!1824407))

(declare-fun d!1824409 () Bool)

(assert (=> d!1824409 (= (tail!11323 (unfocusZipperList!1231 zl!343)) (t!377053 (unfocusZipperList!1231 zl!343)))))

(assert (=> b!5790452 d!1824409))

(declare-fun bs!1367079 () Bool)

(declare-fun d!1824411 () Bool)

(assert (= bs!1367079 (and d!1824411 d!1824173)))

(declare-fun lambda!315857 () Int)

(assert (=> bs!1367079 (= lambda!315857 lambda!315772)))

(declare-fun bs!1367080 () Bool)

(assert (= bs!1367080 (and d!1824411 d!1824187)))

(assert (=> bs!1367080 (= lambda!315857 lambda!315776)))

(declare-fun bs!1367081 () Bool)

(assert (= bs!1367081 (and d!1824411 d!1824161)))

(assert (=> bs!1367081 (= lambda!315857 lambda!315765)))

(declare-fun bs!1367082 () Bool)

(assert (= bs!1367082 (and d!1824411 d!1824343)))

(assert (=> bs!1367082 (= lambda!315857 lambda!315845)))

(declare-fun bs!1367083 () Bool)

(assert (= bs!1367083 (and d!1824411 d!1824357)))

(assert (=> bs!1367083 (= lambda!315857 lambda!315846)))

(declare-fun bs!1367084 () Bool)

(assert (= bs!1367084 (and d!1824411 d!1824167)))

(assert (=> bs!1367084 (= lambda!315857 lambda!315766)))

(declare-fun bs!1367085 () Bool)

(assert (= bs!1367085 (and d!1824411 d!1824171)))

(assert (=> bs!1367085 (= lambda!315857 lambda!315769)))

(declare-fun b!5791277 () Bool)

(declare-fun e!3556535 () Bool)

(declare-fun lt!2297110 () Regex!15803)

(assert (=> b!5791277 (= e!3556535 (isUnion!721 lt!2297110))))

(declare-fun b!5791278 () Bool)

(declare-fun e!3556538 () Regex!15803)

(declare-fun e!3556536 () Regex!15803)

(assert (=> b!5791278 (= e!3556538 e!3556536)))

(declare-fun c!1025499 () Bool)

(assert (=> b!5791278 (= c!1025499 ((_ is Cons!63584) (t!377053 (unfocusZipperList!1231 zl!343))))))

(declare-fun b!5791279 () Bool)

(declare-fun e!3556537 () Bool)

(assert (=> b!5791279 (= e!3556537 (isEmptyLang!1291 lt!2297110))))

(declare-fun b!5791280 () Bool)

(declare-fun e!3556539 () Bool)

(assert (=> b!5791280 (= e!3556539 e!3556537)))

(declare-fun c!1025501 () Bool)

(assert (=> b!5791280 (= c!1025501 (isEmpty!35493 (t!377053 (unfocusZipperList!1231 zl!343))))))

(declare-fun b!5791281 () Bool)

(assert (=> b!5791281 (= e!3556536 (Union!15803 (h!70032 (t!377053 (unfocusZipperList!1231 zl!343))) (generalisedUnion!1666 (t!377053 (t!377053 (unfocusZipperList!1231 zl!343))))))))

(declare-fun b!5791282 () Bool)

(assert (=> b!5791282 (= e!3556538 (h!70032 (t!377053 (unfocusZipperList!1231 zl!343))))))

(declare-fun b!5791283 () Bool)

(assert (=> b!5791283 (= e!3556537 e!3556535)))

(declare-fun c!1025500 () Bool)

(assert (=> b!5791283 (= c!1025500 (isEmpty!35493 (tail!11323 (t!377053 (unfocusZipperList!1231 zl!343)))))))

(declare-fun b!5791285 () Bool)

(assert (=> b!5791285 (= e!3556535 (= lt!2297110 (head!12228 (t!377053 (unfocusZipperList!1231 zl!343)))))))

(declare-fun b!5791286 () Bool)

(assert (=> b!5791286 (= e!3556536 EmptyLang!15803)))

(assert (=> d!1824411 e!3556539))

(declare-fun res!2443504 () Bool)

(assert (=> d!1824411 (=> (not res!2443504) (not e!3556539))))

(assert (=> d!1824411 (= res!2443504 (validRegex!7539 lt!2297110))))

(assert (=> d!1824411 (= lt!2297110 e!3556538)))

(declare-fun c!1025502 () Bool)

(declare-fun e!3556534 () Bool)

(assert (=> d!1824411 (= c!1025502 e!3556534)))

(declare-fun res!2443503 () Bool)

(assert (=> d!1824411 (=> (not res!2443503) (not e!3556534))))

(assert (=> d!1824411 (= res!2443503 ((_ is Cons!63584) (t!377053 (unfocusZipperList!1231 zl!343))))))

(assert (=> d!1824411 (forall!14916 (t!377053 (unfocusZipperList!1231 zl!343)) lambda!315857)))

(assert (=> d!1824411 (= (generalisedUnion!1666 (t!377053 (unfocusZipperList!1231 zl!343))) lt!2297110)))

(declare-fun b!5791284 () Bool)

(assert (=> b!5791284 (= e!3556534 (isEmpty!35493 (t!377053 (t!377053 (unfocusZipperList!1231 zl!343)))))))

(assert (= (and d!1824411 res!2443503) b!5791284))

(assert (= (and d!1824411 c!1025502) b!5791282))

(assert (= (and d!1824411 (not c!1025502)) b!5791278))

(assert (= (and b!5791278 c!1025499) b!5791281))

(assert (= (and b!5791278 (not c!1025499)) b!5791286))

(assert (= (and d!1824411 res!2443504) b!5791280))

(assert (= (and b!5791280 c!1025501) b!5791279))

(assert (= (and b!5791280 (not c!1025501)) b!5791283))

(assert (= (and b!5791283 c!1025500) b!5791285))

(assert (= (and b!5791283 (not c!1025500)) b!5791277))

(declare-fun m!6734496 () Bool)

(assert (=> b!5791281 m!6734496))

(declare-fun m!6734498 () Bool)

(assert (=> b!5791284 m!6734498))

(declare-fun m!6734500 () Bool)

(assert (=> b!5791277 m!6734500))

(declare-fun m!6734502 () Bool)

(assert (=> d!1824411 m!6734502))

(declare-fun m!6734504 () Bool)

(assert (=> d!1824411 m!6734504))

(declare-fun m!6734506 () Bool)

(assert (=> b!5791279 m!6734506))

(declare-fun m!6734508 () Bool)

(assert (=> b!5791283 m!6734508))

(assert (=> b!5791283 m!6734508))

(declare-fun m!6734510 () Bool)

(assert (=> b!5791283 m!6734510))

(assert (=> b!5791280 m!6733954))

(declare-fun m!6734512 () Bool)

(assert (=> b!5791285 m!6734512))

(assert (=> b!5790450 d!1824411))

(declare-fun bs!1367086 () Bool)

(declare-fun d!1824413 () Bool)

(assert (= bs!1367086 (and d!1824413 d!1824173)))

(declare-fun lambda!315858 () Int)

(assert (=> bs!1367086 (= lambda!315858 lambda!315772)))

(declare-fun bs!1367087 () Bool)

(assert (= bs!1367087 (and d!1824413 d!1824187)))

(assert (=> bs!1367087 (= lambda!315858 lambda!315776)))

(declare-fun bs!1367088 () Bool)

(assert (= bs!1367088 (and d!1824413 d!1824161)))

(assert (=> bs!1367088 (= lambda!315858 lambda!315765)))

(declare-fun bs!1367089 () Bool)

(assert (= bs!1367089 (and d!1824413 d!1824343)))

(assert (=> bs!1367089 (= lambda!315858 lambda!315845)))

(declare-fun bs!1367090 () Bool)

(assert (= bs!1367090 (and d!1824413 d!1824357)))

(assert (=> bs!1367090 (= lambda!315858 lambda!315846)))

(declare-fun bs!1367091 () Bool)

(assert (= bs!1367091 (and d!1824413 d!1824411)))

(assert (=> bs!1367091 (= lambda!315858 lambda!315857)))

(declare-fun bs!1367092 () Bool)

(assert (= bs!1367092 (and d!1824413 d!1824167)))

(assert (=> bs!1367092 (= lambda!315858 lambda!315766)))

(declare-fun bs!1367093 () Bool)

(assert (= bs!1367093 (and d!1824413 d!1824171)))

(assert (=> bs!1367093 (= lambda!315858 lambda!315769)))

(declare-fun b!5791287 () Bool)

(declare-fun e!3556540 () Bool)

(declare-fun lt!2297111 () Regex!15803)

(assert (=> b!5791287 (= e!3556540 (isConcat!805 lt!2297111))))

(declare-fun b!5791288 () Bool)

(declare-fun e!3556541 () Regex!15803)

(declare-fun e!3556542 () Regex!15803)

(assert (=> b!5791288 (= e!3556541 e!3556542)))

(declare-fun c!1025504 () Bool)

(assert (=> b!5791288 (= c!1025504 ((_ is Cons!63584) (t!377053 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun b!5791289 () Bool)

(declare-fun e!3556545 () Bool)

(assert (=> b!5791289 (= e!3556545 (isEmptyExpr!1282 lt!2297111))))

(declare-fun b!5791290 () Bool)

(assert (=> b!5791290 (= e!3556545 e!3556540)))

(declare-fun c!1025506 () Bool)

(assert (=> b!5791290 (= c!1025506 (isEmpty!35493 (tail!11323 (t!377053 (exprs!5687 (h!70033 zl!343))))))))

(declare-fun b!5791291 () Bool)

(assert (=> b!5791291 (= e!3556542 EmptyExpr!15803)))

(declare-fun b!5791292 () Bool)

(assert (=> b!5791292 (= e!3556540 (= lt!2297111 (head!12228 (t!377053 (exprs!5687 (h!70033 zl!343))))))))

(declare-fun b!5791293 () Bool)

(assert (=> b!5791293 (= e!3556541 (h!70032 (t!377053 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun e!3556544 () Bool)

(assert (=> d!1824413 e!3556544))

(declare-fun res!2443506 () Bool)

(assert (=> d!1824413 (=> (not res!2443506) (not e!3556544))))

(assert (=> d!1824413 (= res!2443506 (validRegex!7539 lt!2297111))))

(assert (=> d!1824413 (= lt!2297111 e!3556541)))

(declare-fun c!1025505 () Bool)

(declare-fun e!3556543 () Bool)

(assert (=> d!1824413 (= c!1025505 e!3556543)))

(declare-fun res!2443505 () Bool)

(assert (=> d!1824413 (=> (not res!2443505) (not e!3556543))))

(assert (=> d!1824413 (= res!2443505 ((_ is Cons!63584) (t!377053 (exprs!5687 (h!70033 zl!343)))))))

(assert (=> d!1824413 (forall!14916 (t!377053 (exprs!5687 (h!70033 zl!343))) lambda!315858)))

(assert (=> d!1824413 (= (generalisedConcat!1418 (t!377053 (exprs!5687 (h!70033 zl!343)))) lt!2297111)))

(declare-fun b!5791294 () Bool)

(assert (=> b!5791294 (= e!3556543 (isEmpty!35493 (t!377053 (t!377053 (exprs!5687 (h!70033 zl!343))))))))

(declare-fun b!5791295 () Bool)

(assert (=> b!5791295 (= e!3556542 (Concat!24648 (h!70032 (t!377053 (exprs!5687 (h!70033 zl!343)))) (generalisedConcat!1418 (t!377053 (t!377053 (exprs!5687 (h!70033 zl!343)))))))))

(declare-fun b!5791296 () Bool)

(assert (=> b!5791296 (= e!3556544 e!3556545)))

(declare-fun c!1025503 () Bool)

(assert (=> b!5791296 (= c!1025503 (isEmpty!35493 (t!377053 (exprs!5687 (h!70033 zl!343)))))))

(assert (= (and d!1824413 res!2443505) b!5791294))

(assert (= (and d!1824413 c!1025505) b!5791293))

(assert (= (and d!1824413 (not c!1025505)) b!5791288))

(assert (= (and b!5791288 c!1025504) b!5791295))

(assert (= (and b!5791288 (not c!1025504)) b!5791291))

(assert (= (and d!1824413 res!2443506) b!5791296))

(assert (= (and b!5791296 c!1025503) b!5791289))

(assert (= (and b!5791296 (not c!1025503)) b!5791290))

(assert (= (and b!5791290 c!1025506) b!5791292))

(assert (= (and b!5791290 (not c!1025506)) b!5791287))

(declare-fun m!6734514 () Bool)

(assert (=> b!5791289 m!6734514))

(declare-fun m!6734516 () Bool)

(assert (=> b!5791292 m!6734516))

(declare-fun m!6734518 () Bool)

(assert (=> d!1824413 m!6734518))

(declare-fun m!6734520 () Bool)

(assert (=> d!1824413 m!6734520))

(declare-fun m!6734522 () Bool)

(assert (=> b!5791294 m!6734522))

(declare-fun m!6734524 () Bool)

(assert (=> b!5791295 m!6734524))

(assert (=> b!5791296 m!6734020))

(declare-fun m!6734526 () Bool)

(assert (=> b!5791287 m!6734526))

(declare-fun m!6734528 () Bool)

(assert (=> b!5791290 m!6734528))

(assert (=> b!5791290 m!6734528))

(declare-fun m!6734530 () Bool)

(assert (=> b!5791290 m!6734530))

(assert (=> b!5790568 d!1824413))

(assert (=> bm!451066 d!1824239))

(declare-fun d!1824415 () Bool)

(assert (=> d!1824415 (= (head!12228 (unfocusZipperList!1231 zl!343)) (h!70032 (unfocusZipperList!1231 zl!343)))))

(assert (=> b!5790454 d!1824415))

(declare-fun d!1824417 () Bool)

(assert (=> d!1824417 (= (nullable!5834 (regOne!32118 r!7292)) (nullableFct!1867 (regOne!32118 r!7292)))))

(declare-fun bs!1367094 () Bool)

(assert (= bs!1367094 d!1824417))

(declare-fun m!6734532 () Bool)

(assert (=> bs!1367094 m!6734532))

(assert (=> b!5790603 d!1824417))

(assert (=> b!5790933 d!1824309))

(declare-fun bs!1367095 () Bool)

(declare-fun b!5791306 () Bool)

(assert (= bs!1367095 (and b!5791306 d!1824341)))

(declare-fun lambda!315859 () Int)

(assert (=> bs!1367095 (not (= lambda!315859 lambda!315843))))

(declare-fun bs!1367096 () Bool)

(assert (= bs!1367096 (and b!5791306 b!5790850)))

(assert (=> bs!1367096 (= (and (= (reg!16132 (regTwo!32119 r!7292)) (reg!16132 r!7292)) (= (regTwo!32119 r!7292) r!7292)) (= lambda!315859 lambda!315829))))

(declare-fun bs!1367097 () Bool)

(assert (= bs!1367097 (and b!5791306 b!5790404)))

(assert (=> bs!1367097 (= (and (= (reg!16132 (regTwo!32119 r!7292)) (reg!16132 r!7292)) (= (regTwo!32119 r!7292) r!7292)) (= lambda!315859 lambda!315760))))

(declare-fun bs!1367098 () Bool)

(assert (= bs!1367098 (and b!5791306 d!1824365)))

(assert (=> bs!1367098 (= (and (= (reg!16132 (regTwo!32119 r!7292)) (reg!16132 r!7292)) (= (regTwo!32119 r!7292) (Star!15803 (reg!16132 r!7292)))) (= lambda!315859 lambda!315852))))

(declare-fun bs!1367099 () Bool)

(assert (= bs!1367099 (and b!5791306 d!1824223)))

(assert (=> bs!1367099 (not (= lambda!315859 lambda!315797))))

(assert (=> bs!1367099 (not (= lambda!315859 lambda!315799))))

(declare-fun bs!1367100 () Bool)

(assert (= bs!1367100 (and b!5791306 b!5790849)))

(assert (=> bs!1367100 (not (= lambda!315859 lambda!315830))))

(declare-fun bs!1367101 () Bool)

(assert (= bs!1367101 (and b!5791306 d!1824251)))

(assert (=> bs!1367101 (not (= lambda!315859 lambda!315817))))

(declare-fun bs!1367102 () Bool)

(assert (= bs!1367102 (and b!5791306 d!1824227)))

(assert (=> bs!1367102 (not (= lambda!315859 lambda!315809))))

(assert (=> bs!1367102 (= (and (= (reg!16132 (regTwo!32119 r!7292)) (reg!16132 r!7292)) (= (regTwo!32119 r!7292) (Star!15803 (reg!16132 r!7292)))) (= lambda!315859 lambda!315811))))

(assert (=> bs!1367097 (not (= lambda!315859 lambda!315761))))

(assert (=> bs!1367097 (not (= lambda!315859 lambda!315759))))

(assert (=> bs!1367098 (not (= lambda!315859 lambda!315851))))

(assert (=> bs!1367095 (not (= lambda!315859 lambda!315844))))

(assert (=> b!5791306 true))

(assert (=> b!5791306 true))

(declare-fun bs!1367103 () Bool)

(declare-fun b!5791305 () Bool)

(assert (= bs!1367103 (and b!5791305 d!1824341)))

(declare-fun lambda!315860 () Int)

(assert (=> bs!1367103 (not (= lambda!315860 lambda!315843))))

(declare-fun bs!1367104 () Bool)

(assert (= bs!1367104 (and b!5791305 b!5790850)))

(assert (=> bs!1367104 (not (= lambda!315860 lambda!315829))))

(declare-fun bs!1367105 () Bool)

(assert (= bs!1367105 (and b!5791305 b!5790404)))

(assert (=> bs!1367105 (not (= lambda!315860 lambda!315760))))

(declare-fun bs!1367106 () Bool)

(assert (= bs!1367106 (and b!5791305 d!1824365)))

(assert (=> bs!1367106 (not (= lambda!315860 lambda!315852))))

(declare-fun bs!1367107 () Bool)

(assert (= bs!1367107 (and b!5791305 d!1824223)))

(assert (=> bs!1367107 (not (= lambda!315860 lambda!315797))))

(assert (=> bs!1367107 (= (and (= (regOne!32118 (regTwo!32119 r!7292)) (reg!16132 r!7292)) (= (regTwo!32118 (regTwo!32119 r!7292)) r!7292)) (= lambda!315860 lambda!315799))))

(declare-fun bs!1367108 () Bool)

(assert (= bs!1367108 (and b!5791305 b!5790849)))

(assert (=> bs!1367108 (= (and (= (regOne!32118 (regTwo!32119 r!7292)) (regOne!32118 r!7292)) (= (regTwo!32118 (regTwo!32119 r!7292)) (regTwo!32118 r!7292))) (= lambda!315860 lambda!315830))))

(declare-fun bs!1367109 () Bool)

(assert (= bs!1367109 (and b!5791305 d!1824251)))

(assert (=> bs!1367109 (not (= lambda!315860 lambda!315817))))

(declare-fun bs!1367110 () Bool)

(assert (= bs!1367110 (and b!5791305 d!1824227)))

(assert (=> bs!1367110 (not (= lambda!315860 lambda!315809))))

(assert (=> bs!1367110 (not (= lambda!315860 lambda!315811))))

(assert (=> bs!1367105 (not (= lambda!315860 lambda!315759))))

(assert (=> bs!1367106 (not (= lambda!315860 lambda!315851))))

(assert (=> bs!1367103 (= (and (= (regOne!32118 (regTwo!32119 r!7292)) (reg!16132 r!7292)) (= (regTwo!32118 (regTwo!32119 r!7292)) r!7292)) (= lambda!315860 lambda!315844))))

(declare-fun bs!1367111 () Bool)

(assert (= bs!1367111 (and b!5791305 b!5791306)))

(assert (=> bs!1367111 (not (= lambda!315860 lambda!315859))))

(assert (=> bs!1367105 (= (and (= (regOne!32118 (regTwo!32119 r!7292)) (reg!16132 r!7292)) (= (regTwo!32118 (regTwo!32119 r!7292)) r!7292)) (= lambda!315860 lambda!315761))))

(assert (=> b!5791305 true))

(assert (=> b!5791305 true))

(declare-fun b!5791297 () Bool)

(declare-fun e!3556550 () Bool)

(declare-fun call!451127 () Bool)

(assert (=> b!5791297 (= e!3556550 call!451127)))

(declare-fun b!5791298 () Bool)

(declare-fun e!3556551 () Bool)

(assert (=> b!5791298 (= e!3556551 (matchRSpec!2906 (regTwo!32119 (regTwo!32119 r!7292)) s!2326))))

(declare-fun b!5791299 () Bool)

(declare-fun e!3556549 () Bool)

(declare-fun e!3556547 () Bool)

(assert (=> b!5791299 (= e!3556549 e!3556547)))

(declare-fun c!1025509 () Bool)

(assert (=> b!5791299 (= c!1025509 ((_ is Star!15803) (regTwo!32119 r!7292)))))

(declare-fun b!5791300 () Bool)

(assert (=> b!5791300 (= e!3556549 e!3556551)))

(declare-fun res!2443508 () Bool)

(assert (=> b!5791300 (= res!2443508 (matchRSpec!2906 (regOne!32119 (regTwo!32119 r!7292)) s!2326))))

(assert (=> b!5791300 (=> res!2443508 e!3556551)))

(declare-fun b!5791301 () Bool)

(declare-fun e!3556546 () Bool)

(assert (=> b!5791301 (= e!3556546 (= s!2326 (Cons!63586 (c!1025273 (regTwo!32119 r!7292)) Nil!63586)))))

(declare-fun bm!451122 () Bool)

(declare-fun call!451128 () Bool)

(assert (=> bm!451122 (= call!451128 (Exists!2903 (ite c!1025509 lambda!315859 lambda!315860)))))

(declare-fun b!5791302 () Bool)

(declare-fun c!1025508 () Bool)

(assert (=> b!5791302 (= c!1025508 ((_ is ElementMatch!15803) (regTwo!32119 r!7292)))))

(declare-fun e!3556552 () Bool)

(assert (=> b!5791302 (= e!3556552 e!3556546)))

(declare-fun d!1824419 () Bool)

(declare-fun c!1025510 () Bool)

(assert (=> d!1824419 (= c!1025510 ((_ is EmptyExpr!15803) (regTwo!32119 r!7292)))))

(assert (=> d!1824419 (= (matchRSpec!2906 (regTwo!32119 r!7292) s!2326) e!3556550)))

(declare-fun b!5791303 () Bool)

(declare-fun res!2443507 () Bool)

(declare-fun e!3556548 () Bool)

(assert (=> b!5791303 (=> res!2443507 e!3556548)))

(assert (=> b!5791303 (= res!2443507 call!451127)))

(assert (=> b!5791303 (= e!3556547 e!3556548)))

(declare-fun b!5791304 () Bool)

(assert (=> b!5791304 (= e!3556550 e!3556552)))

(declare-fun res!2443509 () Bool)

(assert (=> b!5791304 (= res!2443509 (not ((_ is EmptyLang!15803) (regTwo!32119 r!7292))))))

(assert (=> b!5791304 (=> (not res!2443509) (not e!3556552))))

(assert (=> b!5791305 (= e!3556547 call!451128)))

(declare-fun bm!451123 () Bool)

(assert (=> bm!451123 (= call!451127 (isEmpty!35492 s!2326))))

(assert (=> b!5791306 (= e!3556548 call!451128)))

(declare-fun b!5791307 () Bool)

(declare-fun c!1025507 () Bool)

(assert (=> b!5791307 (= c!1025507 ((_ is Union!15803) (regTwo!32119 r!7292)))))

(assert (=> b!5791307 (= e!3556546 e!3556549)))

(assert (= (and d!1824419 c!1025510) b!5791297))

(assert (= (and d!1824419 (not c!1025510)) b!5791304))

(assert (= (and b!5791304 res!2443509) b!5791302))

(assert (= (and b!5791302 c!1025508) b!5791301))

(assert (= (and b!5791302 (not c!1025508)) b!5791307))

(assert (= (and b!5791307 c!1025507) b!5791300))

(assert (= (and b!5791307 (not c!1025507)) b!5791299))

(assert (= (and b!5791300 (not res!2443508)) b!5791298))

(assert (= (and b!5791299 c!1025509) b!5791303))

(assert (= (and b!5791299 (not c!1025509)) b!5791305))

(assert (= (and b!5791303 (not res!2443507)) b!5791306))

(assert (= (or b!5791306 b!5791305) bm!451122))

(assert (= (or b!5791297 b!5791303) bm!451123))

(declare-fun m!6734534 () Bool)

(assert (=> b!5791298 m!6734534))

(declare-fun m!6734536 () Bool)

(assert (=> b!5791300 m!6734536))

(declare-fun m!6734538 () Bool)

(assert (=> bm!451122 m!6734538))

(assert (=> bm!451123 m!6733910))

(assert (=> b!5790842 d!1824419))

(declare-fun b!5791308 () Bool)

(declare-fun e!3556558 () Bool)

(declare-fun lt!2297112 () Bool)

(declare-fun call!451129 () Bool)

(assert (=> b!5791308 (= e!3556558 (= lt!2297112 call!451129))))

(declare-fun b!5791309 () Bool)

(declare-fun e!3556559 () Bool)

(assert (=> b!5791309 (= e!3556558 e!3556559)))

(declare-fun c!1025512 () Bool)

(assert (=> b!5791309 (= c!1025512 ((_ is EmptyLang!15803) (reg!16132 r!7292)))))

(declare-fun b!5791310 () Bool)

(declare-fun e!3556553 () Bool)

(assert (=> b!5791310 (= e!3556553 (matchR!7988 (derivativeStep!4578 (reg!16132 r!7292) (head!12231 (_1!36203 (get!21948 lt!2297074)))) (tail!11326 (_1!36203 (get!21948 lt!2297074)))))))

(declare-fun b!5791311 () Bool)

(declare-fun res!2443516 () Bool)

(declare-fun e!3556555 () Bool)

(assert (=> b!5791311 (=> res!2443516 e!3556555)))

(assert (=> b!5791311 (= res!2443516 (not ((_ is ElementMatch!15803) (reg!16132 r!7292))))))

(assert (=> b!5791311 (= e!3556559 e!3556555)))

(declare-fun b!5791313 () Bool)

(declare-fun e!3556556 () Bool)

(assert (=> b!5791313 (= e!3556555 e!3556556)))

(declare-fun res!2443513 () Bool)

(assert (=> b!5791313 (=> (not res!2443513) (not e!3556556))))

(assert (=> b!5791313 (= res!2443513 (not lt!2297112))))

(declare-fun b!5791314 () Bool)

(assert (=> b!5791314 (= e!3556559 (not lt!2297112))))

(declare-fun b!5791315 () Bool)

(declare-fun e!3556557 () Bool)

(assert (=> b!5791315 (= e!3556556 e!3556557)))

(declare-fun res!2443517 () Bool)

(assert (=> b!5791315 (=> res!2443517 e!3556557)))

(assert (=> b!5791315 (= res!2443517 call!451129)))

(declare-fun b!5791316 () Bool)

(declare-fun res!2443515 () Bool)

(assert (=> b!5791316 (=> res!2443515 e!3556555)))

(declare-fun e!3556554 () Bool)

(assert (=> b!5791316 (= res!2443515 e!3556554)))

(declare-fun res!2443511 () Bool)

(assert (=> b!5791316 (=> (not res!2443511) (not e!3556554))))

(assert (=> b!5791316 (= res!2443511 lt!2297112)))

(declare-fun b!5791317 () Bool)

(assert (=> b!5791317 (= e!3556554 (= (head!12231 (_1!36203 (get!21948 lt!2297074))) (c!1025273 (reg!16132 r!7292))))))

(declare-fun bm!451124 () Bool)

(assert (=> bm!451124 (= call!451129 (isEmpty!35492 (_1!36203 (get!21948 lt!2297074))))))

(declare-fun b!5791312 () Bool)

(declare-fun res!2443512 () Bool)

(assert (=> b!5791312 (=> (not res!2443512) (not e!3556554))))

(assert (=> b!5791312 (= res!2443512 (not call!451129))))

(declare-fun d!1824421 () Bool)

(assert (=> d!1824421 e!3556558))

(declare-fun c!1025511 () Bool)

(assert (=> d!1824421 (= c!1025511 ((_ is EmptyExpr!15803) (reg!16132 r!7292)))))

(assert (=> d!1824421 (= lt!2297112 e!3556553)))

(declare-fun c!1025513 () Bool)

(assert (=> d!1824421 (= c!1025513 (isEmpty!35492 (_1!36203 (get!21948 lt!2297074))))))

(assert (=> d!1824421 (validRegex!7539 (reg!16132 r!7292))))

(assert (=> d!1824421 (= (matchR!7988 (reg!16132 r!7292) (_1!36203 (get!21948 lt!2297074))) lt!2297112)))

(declare-fun b!5791318 () Bool)

(declare-fun res!2443514 () Bool)

(assert (=> b!5791318 (=> (not res!2443514) (not e!3556554))))

(assert (=> b!5791318 (= res!2443514 (isEmpty!35492 (tail!11326 (_1!36203 (get!21948 lt!2297074)))))))

(declare-fun b!5791319 () Bool)

(assert (=> b!5791319 (= e!3556557 (not (= (head!12231 (_1!36203 (get!21948 lt!2297074))) (c!1025273 (reg!16132 r!7292)))))))

(declare-fun b!5791320 () Bool)

(declare-fun res!2443510 () Bool)

(assert (=> b!5791320 (=> res!2443510 e!3556557)))

(assert (=> b!5791320 (= res!2443510 (not (isEmpty!35492 (tail!11326 (_1!36203 (get!21948 lt!2297074))))))))

(declare-fun b!5791321 () Bool)

(assert (=> b!5791321 (= e!3556553 (nullable!5834 (reg!16132 r!7292)))))

(assert (= (and d!1824421 c!1025513) b!5791321))

(assert (= (and d!1824421 (not c!1025513)) b!5791310))

(assert (= (and d!1824421 c!1025511) b!5791308))

(assert (= (and d!1824421 (not c!1025511)) b!5791309))

(assert (= (and b!5791309 c!1025512) b!5791314))

(assert (= (and b!5791309 (not c!1025512)) b!5791311))

(assert (= (and b!5791311 (not res!2443516)) b!5791316))

(assert (= (and b!5791316 res!2443511) b!5791312))

(assert (= (and b!5791312 res!2443512) b!5791318))

(assert (= (and b!5791318 res!2443514) b!5791317))

(assert (= (and b!5791316 (not res!2443515)) b!5791313))

(assert (= (and b!5791313 res!2443513) b!5791315))

(assert (= (and b!5791315 (not res!2443517)) b!5791320))

(assert (= (and b!5791320 (not res!2443510)) b!5791319))

(assert (= (or b!5791308 b!5791312 b!5791315) bm!451124))

(declare-fun m!6734540 () Bool)

(assert (=> b!5791310 m!6734540))

(assert (=> b!5791310 m!6734540))

(declare-fun m!6734542 () Bool)

(assert (=> b!5791310 m!6734542))

(declare-fun m!6734544 () Bool)

(assert (=> b!5791310 m!6734544))

(assert (=> b!5791310 m!6734542))

(assert (=> b!5791310 m!6734544))

(declare-fun m!6734546 () Bool)

(assert (=> b!5791310 m!6734546))

(assert (=> b!5791320 m!6734544))

(assert (=> b!5791320 m!6734544))

(declare-fun m!6734548 () Bool)

(assert (=> b!5791320 m!6734548))

(assert (=> b!5791321 m!6734114))

(declare-fun m!6734550 () Bool)

(assert (=> bm!451124 m!6734550))

(assert (=> d!1824421 m!6734550))

(assert (=> d!1824421 m!6734134))

(assert (=> b!5791317 m!6734540))

(assert (=> b!5791319 m!6734540))

(assert (=> b!5791318 m!6734544))

(assert (=> b!5791318 m!6734544))

(assert (=> b!5791318 m!6734548))

(assert (=> b!5790741 d!1824421))

(assert (=> b!5790741 d!1824327))

(assert (=> d!1824183 d!1824177))

(declare-fun d!1824423 () Bool)

(assert (=> d!1824423 (= (flatMap!1410 lt!2297009 lambda!315762) (dynLambda!24895 lambda!315762 lt!2297012))))

(assert (=> d!1824423 true))

(declare-fun _$13!2499 () Unit!156866)

(assert (=> d!1824423 (= (choose!43970 lt!2297009 lt!2297012 lambda!315762) _$13!2499)))

(declare-fun b_lambda!218315 () Bool)

(assert (=> (not b_lambda!218315) (not d!1824423)))

(declare-fun bs!1367112 () Bool)

(assert (= bs!1367112 d!1824423))

(assert (=> bs!1367112 m!6733896))

(assert (=> bs!1367112 m!6734000))

(assert (=> d!1824183 d!1824423))

(declare-fun b!5791322 () Bool)

(declare-fun e!3556561 () List!63710)

(assert (=> b!5791322 (= e!3556561 (t!377055 s!2326))))

(declare-fun b!5791325 () Bool)

(declare-fun e!3556560 () Bool)

(declare-fun lt!2297113 () List!63710)

(assert (=> b!5791325 (= e!3556560 (or (not (= (t!377055 s!2326) Nil!63586)) (= lt!2297113 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586)))))))

(declare-fun b!5791323 () Bool)

(assert (=> b!5791323 (= e!3556561 (Cons!63586 (h!70034 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586))) (++!14021 (t!377055 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586))) (t!377055 s!2326))))))

(declare-fun b!5791324 () Bool)

(declare-fun res!2443519 () Bool)

(assert (=> b!5791324 (=> (not res!2443519) (not e!3556560))))

(assert (=> b!5791324 (= res!2443519 (= (size!40095 lt!2297113) (+ (size!40095 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586))) (size!40095 (t!377055 s!2326)))))))

(declare-fun d!1824425 () Bool)

(assert (=> d!1824425 e!3556560))

(declare-fun res!2443518 () Bool)

(assert (=> d!1824425 (=> (not res!2443518) (not e!3556560))))

(assert (=> d!1824425 (= res!2443518 (= (content!11633 lt!2297113) ((_ map or) (content!11633 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586))) (content!11633 (t!377055 s!2326)))))))

(assert (=> d!1824425 (= lt!2297113 e!3556561)))

(declare-fun c!1025514 () Bool)

(assert (=> d!1824425 (= c!1025514 ((_ is Nil!63586) (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586))))))

(assert (=> d!1824425 (= (++!14021 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586)) (t!377055 s!2326)) lt!2297113)))

(assert (= (and d!1824425 c!1025514) b!5791322))

(assert (= (and d!1824425 (not c!1025514)) b!5791323))

(assert (= (and d!1824425 res!2443518) b!5791324))

(assert (= (and b!5791324 res!2443519) b!5791325))

(declare-fun m!6734552 () Bool)

(assert (=> b!5791323 m!6734552))

(declare-fun m!6734554 () Bool)

(assert (=> b!5791324 m!6734554))

(assert (=> b!5791324 m!6734184))

(declare-fun m!6734556 () Bool)

(assert (=> b!5791324 m!6734556))

(declare-fun m!6734558 () Bool)

(assert (=> b!5791324 m!6734558))

(declare-fun m!6734560 () Bool)

(assert (=> d!1824425 m!6734560))

(assert (=> d!1824425 m!6734184))

(declare-fun m!6734562 () Bool)

(assert (=> d!1824425 m!6734562))

(declare-fun m!6734564 () Bool)

(assert (=> d!1824425 m!6734564))

(assert (=> b!5790743 d!1824425))

(declare-fun b!5791326 () Bool)

(declare-fun e!3556563 () List!63710)

(assert (=> b!5791326 (= e!3556563 (Cons!63586 (h!70034 s!2326) Nil!63586))))

(declare-fun b!5791329 () Bool)

(declare-fun e!3556562 () Bool)

(declare-fun lt!2297114 () List!63710)

(assert (=> b!5791329 (= e!3556562 (or (not (= (Cons!63586 (h!70034 s!2326) Nil!63586) Nil!63586)) (= lt!2297114 Nil!63586)))))

(declare-fun b!5791327 () Bool)

(assert (=> b!5791327 (= e!3556563 (Cons!63586 (h!70034 Nil!63586) (++!14021 (t!377055 Nil!63586) (Cons!63586 (h!70034 s!2326) Nil!63586))))))

(declare-fun b!5791328 () Bool)

(declare-fun res!2443521 () Bool)

(assert (=> b!5791328 (=> (not res!2443521) (not e!3556562))))

(assert (=> b!5791328 (= res!2443521 (= (size!40095 lt!2297114) (+ (size!40095 Nil!63586) (size!40095 (Cons!63586 (h!70034 s!2326) Nil!63586)))))))

(declare-fun d!1824427 () Bool)

(assert (=> d!1824427 e!3556562))

(declare-fun res!2443520 () Bool)

(assert (=> d!1824427 (=> (not res!2443520) (not e!3556562))))

(assert (=> d!1824427 (= res!2443520 (= (content!11633 lt!2297114) ((_ map or) (content!11633 Nil!63586) (content!11633 (Cons!63586 (h!70034 s!2326) Nil!63586)))))))

(assert (=> d!1824427 (= lt!2297114 e!3556563)))

(declare-fun c!1025515 () Bool)

(assert (=> d!1824427 (= c!1025515 ((_ is Nil!63586) Nil!63586))))

(assert (=> d!1824427 (= (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586)) lt!2297114)))

(assert (= (and d!1824427 c!1025515) b!5791326))

(assert (= (and d!1824427 (not c!1025515)) b!5791327))

(assert (= (and d!1824427 res!2443520) b!5791328))

(assert (= (and b!5791328 res!2443521) b!5791329))

(declare-fun m!6734566 () Bool)

(assert (=> b!5791327 m!6734566))

(declare-fun m!6734568 () Bool)

(assert (=> b!5791328 m!6734568))

(declare-fun m!6734570 () Bool)

(assert (=> b!5791328 m!6734570))

(declare-fun m!6734572 () Bool)

(assert (=> b!5791328 m!6734572))

(declare-fun m!6734574 () Bool)

(assert (=> d!1824427 m!6734574))

(declare-fun m!6734576 () Bool)

(assert (=> d!1824427 m!6734576))

(declare-fun m!6734578 () Bool)

(assert (=> d!1824427 m!6734578))

(assert (=> b!5790743 d!1824427))

(declare-fun d!1824429 () Bool)

(assert (=> d!1824429 (= (++!14021 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586)) (t!377055 s!2326)) s!2326)))

(declare-fun lt!2297117 () Unit!156866)

(declare-fun choose!43984 (List!63710 C!31876 List!63710 List!63710) Unit!156866)

(assert (=> d!1824429 (= lt!2297117 (choose!43984 Nil!63586 (h!70034 s!2326) (t!377055 s!2326) s!2326))))

(assert (=> d!1824429 (= (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) (t!377055 s!2326))) s!2326)))

(assert (=> d!1824429 (= (lemmaMoveElementToOtherListKeepsConcatEq!2128 Nil!63586 (h!70034 s!2326) (t!377055 s!2326) s!2326) lt!2297117)))

(declare-fun bs!1367113 () Bool)

(assert (= bs!1367113 d!1824429))

(assert (=> bs!1367113 m!6734184))

(assert (=> bs!1367113 m!6734184))

(assert (=> bs!1367113 m!6734186))

(declare-fun m!6734580 () Bool)

(assert (=> bs!1367113 m!6734580))

(declare-fun m!6734582 () Bool)

(assert (=> bs!1367113 m!6734582))

(assert (=> b!5790743 d!1824429))

(declare-fun b!5791330 () Bool)

(declare-fun res!2443523 () Bool)

(declare-fun e!3556568 () Bool)

(assert (=> b!5791330 (=> (not res!2443523) (not e!3556568))))

(declare-fun lt!2297118 () Option!15812)

(assert (=> b!5791330 (= res!2443523 (matchR!7988 (reg!16132 r!7292) (_1!36203 (get!21948 lt!2297118))))))

(declare-fun b!5791331 () Bool)

(declare-fun e!3556567 () Option!15812)

(assert (=> b!5791331 (= e!3556567 (Some!15811 (tuple2!65801 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586)) (t!377055 s!2326))))))

(declare-fun d!1824431 () Bool)

(declare-fun e!3556564 () Bool)

(assert (=> d!1824431 e!3556564))

(declare-fun res!2443525 () Bool)

(assert (=> d!1824431 (=> res!2443525 e!3556564)))

(assert (=> d!1824431 (= res!2443525 e!3556568)))

(declare-fun res!2443526 () Bool)

(assert (=> d!1824431 (=> (not res!2443526) (not e!3556568))))

(assert (=> d!1824431 (= res!2443526 (isDefined!12515 lt!2297118))))

(assert (=> d!1824431 (= lt!2297118 e!3556567)))

(declare-fun c!1025517 () Bool)

(declare-fun e!3556566 () Bool)

(assert (=> d!1824431 (= c!1025517 e!3556566)))

(declare-fun res!2443522 () Bool)

(assert (=> d!1824431 (=> (not res!2443522) (not e!3556566))))

(assert (=> d!1824431 (= res!2443522 (matchR!7988 (reg!16132 r!7292) (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586))))))

(assert (=> d!1824431 (validRegex!7539 (reg!16132 r!7292))))

(assert (=> d!1824431 (= (findConcatSeparation!2226 (reg!16132 r!7292) r!7292 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586)) (t!377055 s!2326) s!2326) lt!2297118)))

(declare-fun b!5791332 () Bool)

(declare-fun lt!2297119 () Unit!156866)

(declare-fun lt!2297120 () Unit!156866)

(assert (=> b!5791332 (= lt!2297119 lt!2297120)))

(assert (=> b!5791332 (= (++!14021 (++!14021 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586)) (Cons!63586 (h!70034 (t!377055 s!2326)) Nil!63586)) (t!377055 (t!377055 s!2326))) s!2326)))

(assert (=> b!5791332 (= lt!2297120 (lemmaMoveElementToOtherListKeepsConcatEq!2128 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586)) (h!70034 (t!377055 s!2326)) (t!377055 (t!377055 s!2326)) s!2326))))

(declare-fun e!3556565 () Option!15812)

(assert (=> b!5791332 (= e!3556565 (findConcatSeparation!2226 (reg!16132 r!7292) r!7292 (++!14021 (++!14021 Nil!63586 (Cons!63586 (h!70034 s!2326) Nil!63586)) (Cons!63586 (h!70034 (t!377055 s!2326)) Nil!63586)) (t!377055 (t!377055 s!2326)) s!2326))))

(declare-fun b!5791333 () Bool)

(assert (=> b!5791333 (= e!3556567 e!3556565)))

(declare-fun c!1025516 () Bool)

(assert (=> b!5791333 (= c!1025516 ((_ is Nil!63586) (t!377055 s!2326)))))

(declare-fun b!5791334 () Bool)

(assert (=> b!5791334 (= e!3556565 None!15811)))

(declare-fun b!5791335 () Bool)

(assert (=> b!5791335 (= e!3556568 (= (++!14021 (_1!36203 (get!21948 lt!2297118)) (_2!36203 (get!21948 lt!2297118))) s!2326))))

(declare-fun b!5791336 () Bool)

(declare-fun res!2443524 () Bool)

(assert (=> b!5791336 (=> (not res!2443524) (not e!3556568))))

(assert (=> b!5791336 (= res!2443524 (matchR!7988 r!7292 (_2!36203 (get!21948 lt!2297118))))))

(declare-fun b!5791337 () Bool)

(assert (=> b!5791337 (= e!3556564 (not (isDefined!12515 lt!2297118)))))

(declare-fun b!5791338 () Bool)

(assert (=> b!5791338 (= e!3556566 (matchR!7988 r!7292 (t!377055 s!2326)))))

(assert (= (and d!1824431 res!2443522) b!5791338))

(assert (= (and d!1824431 c!1025517) b!5791331))

(assert (= (and d!1824431 (not c!1025517)) b!5791333))

(assert (= (and b!5791333 c!1025516) b!5791334))

(assert (= (and b!5791333 (not c!1025516)) b!5791332))

(assert (= (and d!1824431 res!2443526) b!5791330))

(assert (= (and b!5791330 res!2443523) b!5791336))

(assert (= (and b!5791336 res!2443524) b!5791335))

(assert (= (and d!1824431 (not res!2443525)) b!5791337))

(declare-fun m!6734584 () Bool)

(assert (=> b!5791336 m!6734584))

(declare-fun m!6734586 () Bool)

(assert (=> b!5791336 m!6734586))

(assert (=> b!5791335 m!6734584))

(declare-fun m!6734588 () Bool)

(assert (=> b!5791335 m!6734588))

(assert (=> b!5791332 m!6734184))

(declare-fun m!6734590 () Bool)

(assert (=> b!5791332 m!6734590))

(assert (=> b!5791332 m!6734590))

(declare-fun m!6734592 () Bool)

(assert (=> b!5791332 m!6734592))

(assert (=> b!5791332 m!6734184))

(declare-fun m!6734594 () Bool)

(assert (=> b!5791332 m!6734594))

(assert (=> b!5791332 m!6734590))

(declare-fun m!6734596 () Bool)

(assert (=> b!5791332 m!6734596))

(declare-fun m!6734598 () Bool)

(assert (=> b!5791338 m!6734598))

(declare-fun m!6734600 () Bool)

(assert (=> d!1824431 m!6734600))

(assert (=> d!1824431 m!6734184))

(declare-fun m!6734602 () Bool)

(assert (=> d!1824431 m!6734602))

(assert (=> d!1824431 m!6734134))

(assert (=> b!5791330 m!6734584))

(declare-fun m!6734604 () Bool)

(assert (=> b!5791330 m!6734604))

(assert (=> b!5791337 m!6734600))

(assert (=> b!5790743 d!1824431))

(assert (=> bs!1367016 d!1824195))

(declare-fun b!5791339 () Bool)

(declare-fun e!3556571 () (InoxSet Context!10374))

(declare-fun e!3556574 () (InoxSet Context!10374))

(assert (=> b!5791339 (= e!3556571 e!3556574)))

(declare-fun c!1025518 () Bool)

(assert (=> b!5791339 (= c!1025518 ((_ is Union!15803) (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292)))))))

(declare-fun c!1025520 () Bool)

(declare-fun bm!451125 () Bool)

(declare-fun call!451135 () List!63708)

(declare-fun c!1025522 () Bool)

(assert (=> bm!451125 (= call!451135 ($colon$colon!1789 (exprs!5687 (ite c!1025299 (Context!10375 lt!2297014) (Context!10375 call!451024))) (ite (or c!1025522 c!1025520) (regTwo!32118 (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292)))) (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292))))))))

(declare-fun call!451132 () (InoxSet Context!10374))

(declare-fun bm!451126 () Bool)

(assert (=> bm!451126 (= call!451132 (derivationStepZipperDown!1141 (ite c!1025518 (regTwo!32119 (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292)))) (regOne!32118 (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292))))) (ite c!1025518 (ite c!1025299 (Context!10375 lt!2297014) (Context!10375 call!451024)) (Context!10375 call!451135)) (h!70034 s!2326)))))

(declare-fun bm!451127 () Bool)

(declare-fun call!451133 () List!63708)

(declare-fun call!451134 () (InoxSet Context!10374))

(assert (=> bm!451127 (= call!451134 (derivationStepZipperDown!1141 (ite c!1025518 (regOne!32119 (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292)))) (ite c!1025522 (regTwo!32118 (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292)))) (ite c!1025520 (regOne!32118 (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292)))) (reg!16132 (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292))))))) (ite (or c!1025518 c!1025522) (ite c!1025299 (Context!10375 lt!2297014) (Context!10375 call!451024)) (Context!10375 call!451133)) (h!70034 s!2326)))))

(declare-fun b!5791340 () Bool)

(declare-fun c!1025519 () Bool)

(assert (=> b!5791340 (= c!1025519 ((_ is Star!15803) (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292)))))))

(declare-fun e!3556573 () (InoxSet Context!10374))

(declare-fun e!3556572 () (InoxSet Context!10374))

(assert (=> b!5791340 (= e!3556573 e!3556572)))

(declare-fun b!5791341 () Bool)

(declare-fun e!3556570 () (InoxSet Context!10374))

(assert (=> b!5791341 (= e!3556570 e!3556573)))

(assert (=> b!5791341 (= c!1025520 ((_ is Concat!24648) (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292)))))))

(declare-fun bm!451128 () Bool)

(declare-fun call!451130 () (InoxSet Context!10374))

(declare-fun call!451131 () (InoxSet Context!10374))

(assert (=> bm!451128 (= call!451130 call!451131)))

(declare-fun b!5791342 () Bool)

(declare-fun e!3556569 () Bool)

(assert (=> b!5791342 (= c!1025522 e!3556569)))

(declare-fun res!2443527 () Bool)

(assert (=> b!5791342 (=> (not res!2443527) (not e!3556569))))

(assert (=> b!5791342 (= res!2443527 ((_ is Concat!24648) (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292)))))))

(assert (=> b!5791342 (= e!3556574 e!3556570)))

(declare-fun b!5791343 () Bool)

(assert (=> b!5791343 (= e!3556573 call!451130)))

(declare-fun b!5791344 () Bool)

(assert (=> b!5791344 (= e!3556570 ((_ map or) call!451132 call!451131))))

(declare-fun b!5791345 () Bool)

(assert (=> b!5791345 (= e!3556574 ((_ map or) call!451134 call!451132))))

(declare-fun b!5791346 () Bool)

(assert (=> b!5791346 (= e!3556571 (store ((as const (Array Context!10374 Bool)) false) (ite c!1025299 (Context!10375 lt!2297014) (Context!10375 call!451024)) true))))

(declare-fun d!1824433 () Bool)

(declare-fun c!1025521 () Bool)

(assert (=> d!1824433 (= c!1025521 (and ((_ is ElementMatch!15803) (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292)))) (= (c!1025273 (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292)))) (h!70034 s!2326))))))

(assert (=> d!1824433 (= (derivationStepZipperDown!1141 (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292))) (ite c!1025299 (Context!10375 lt!2297014) (Context!10375 call!451024)) (h!70034 s!2326)) e!3556571)))

(declare-fun bm!451129 () Bool)

(assert (=> bm!451129 (= call!451133 call!451135)))

(declare-fun b!5791347 () Bool)

(assert (=> b!5791347 (= e!3556569 (nullable!5834 (regOne!32118 (ite c!1025299 (regTwo!32119 (reg!16132 r!7292)) (regOne!32118 (reg!16132 r!7292))))))))

(declare-fun bm!451130 () Bool)

(assert (=> bm!451130 (= call!451131 call!451134)))

(declare-fun b!5791348 () Bool)

(assert (=> b!5791348 (= e!3556572 ((as const (Array Context!10374 Bool)) false))))

(declare-fun b!5791349 () Bool)

(assert (=> b!5791349 (= e!3556572 call!451130)))

(assert (= (and d!1824433 c!1025521) b!5791346))

(assert (= (and d!1824433 (not c!1025521)) b!5791339))

(assert (= (and b!5791339 c!1025518) b!5791345))

(assert (= (and b!5791339 (not c!1025518)) b!5791342))

(assert (= (and b!5791342 res!2443527) b!5791347))

(assert (= (and b!5791342 c!1025522) b!5791344))

(assert (= (and b!5791342 (not c!1025522)) b!5791341))

(assert (= (and b!5791341 c!1025520) b!5791343))

(assert (= (and b!5791341 (not c!1025520)) b!5791340))

(assert (= (and b!5791340 c!1025519) b!5791349))

(assert (= (and b!5791340 (not c!1025519)) b!5791348))

(assert (= (or b!5791343 b!5791349) bm!451129))

(assert (= (or b!5791343 b!5791349) bm!451128))

(assert (= (or b!5791344 bm!451129) bm!451125))

(assert (= (or b!5791344 bm!451128) bm!451130))

(assert (= (or b!5791345 b!5791344) bm!451126))

(assert (= (or b!5791345 bm!451130) bm!451127))

(declare-fun m!6734606 () Bool)

(assert (=> bm!451125 m!6734606))

(declare-fun m!6734608 () Bool)

(assert (=> bm!451126 m!6734608))

(declare-fun m!6734610 () Bool)

(assert (=> b!5791346 m!6734610))

(declare-fun m!6734612 () Bool)

(assert (=> bm!451127 m!6734612))

(declare-fun m!6734614 () Bool)

(assert (=> b!5791347 m!6734614))

(assert (=> bm!451015 d!1824433))

(declare-fun d!1824435 () Bool)

(assert (=> d!1824435 (= (nullable!5834 r!7292) (nullableFct!1867 r!7292))))

(declare-fun bs!1367114 () Bool)

(assert (= bs!1367114 d!1824435))

(declare-fun m!6734616 () Bool)

(assert (=> bs!1367114 m!6734616))

(assert (=> b!5790935 d!1824435))

(declare-fun bs!1367115 () Bool)

(declare-fun b!5791359 () Bool)

(assert (= bs!1367115 (and b!5791359 d!1824341)))

(declare-fun lambda!315861 () Int)

(assert (=> bs!1367115 (not (= lambda!315861 lambda!315843))))

(declare-fun bs!1367116 () Bool)

(assert (= bs!1367116 (and b!5791359 b!5790850)))

(assert (=> bs!1367116 (= (and (= (reg!16132 (regOne!32119 r!7292)) (reg!16132 r!7292)) (= (regOne!32119 r!7292) r!7292)) (= lambda!315861 lambda!315829))))

(declare-fun bs!1367117 () Bool)

(assert (= bs!1367117 (and b!5791359 b!5790404)))

(assert (=> bs!1367117 (= (and (= (reg!16132 (regOne!32119 r!7292)) (reg!16132 r!7292)) (= (regOne!32119 r!7292) r!7292)) (= lambda!315861 lambda!315760))))

(declare-fun bs!1367118 () Bool)

(assert (= bs!1367118 (and b!5791359 d!1824365)))

(assert (=> bs!1367118 (= (and (= (reg!16132 (regOne!32119 r!7292)) (reg!16132 r!7292)) (= (regOne!32119 r!7292) (Star!15803 (reg!16132 r!7292)))) (= lambda!315861 lambda!315852))))

(declare-fun bs!1367119 () Bool)

(assert (= bs!1367119 (and b!5791359 d!1824223)))

(assert (=> bs!1367119 (not (= lambda!315861 lambda!315797))))

(assert (=> bs!1367119 (not (= lambda!315861 lambda!315799))))

(declare-fun bs!1367120 () Bool)

(assert (= bs!1367120 (and b!5791359 b!5790849)))

(assert (=> bs!1367120 (not (= lambda!315861 lambda!315830))))

(declare-fun bs!1367121 () Bool)

(assert (= bs!1367121 (and b!5791359 d!1824251)))

(assert (=> bs!1367121 (not (= lambda!315861 lambda!315817))))

(declare-fun bs!1367122 () Bool)

(assert (= bs!1367122 (and b!5791359 d!1824227)))

(assert (=> bs!1367122 (not (= lambda!315861 lambda!315809))))

(assert (=> bs!1367122 (= (and (= (reg!16132 (regOne!32119 r!7292)) (reg!16132 r!7292)) (= (regOne!32119 r!7292) (Star!15803 (reg!16132 r!7292)))) (= lambda!315861 lambda!315811))))

(assert (=> bs!1367118 (not (= lambda!315861 lambda!315851))))

(assert (=> bs!1367115 (not (= lambda!315861 lambda!315844))))

(declare-fun bs!1367123 () Bool)

(assert (= bs!1367123 (and b!5791359 b!5791306)))

(assert (=> bs!1367123 (= (and (= (reg!16132 (regOne!32119 r!7292)) (reg!16132 (regTwo!32119 r!7292))) (= (regOne!32119 r!7292) (regTwo!32119 r!7292))) (= lambda!315861 lambda!315859))))

(assert (=> bs!1367117 (not (= lambda!315861 lambda!315761))))

(assert (=> bs!1367117 (not (= lambda!315861 lambda!315759))))

(declare-fun bs!1367124 () Bool)

(assert (= bs!1367124 (and b!5791359 b!5791305)))

(assert (=> bs!1367124 (not (= lambda!315861 lambda!315860))))

(assert (=> b!5791359 true))

(assert (=> b!5791359 true))

(declare-fun bs!1367125 () Bool)

(declare-fun b!5791358 () Bool)

(assert (= bs!1367125 (and b!5791358 d!1824341)))

(declare-fun lambda!315862 () Int)

(assert (=> bs!1367125 (not (= lambda!315862 lambda!315843))))

(declare-fun bs!1367126 () Bool)

(assert (= bs!1367126 (and b!5791358 b!5791359)))

(assert (=> bs!1367126 (not (= lambda!315862 lambda!315861))))

(declare-fun bs!1367127 () Bool)

(assert (= bs!1367127 (and b!5791358 b!5790850)))

(assert (=> bs!1367127 (not (= lambda!315862 lambda!315829))))

(declare-fun bs!1367128 () Bool)

(assert (= bs!1367128 (and b!5791358 b!5790404)))

(assert (=> bs!1367128 (not (= lambda!315862 lambda!315760))))

(declare-fun bs!1367129 () Bool)

(assert (= bs!1367129 (and b!5791358 d!1824365)))

(assert (=> bs!1367129 (not (= lambda!315862 lambda!315852))))

(declare-fun bs!1367130 () Bool)

(assert (= bs!1367130 (and b!5791358 d!1824223)))

(assert (=> bs!1367130 (not (= lambda!315862 lambda!315797))))

(assert (=> bs!1367130 (= (and (= (regOne!32118 (regOne!32119 r!7292)) (reg!16132 r!7292)) (= (regTwo!32118 (regOne!32119 r!7292)) r!7292)) (= lambda!315862 lambda!315799))))

(declare-fun bs!1367131 () Bool)

(assert (= bs!1367131 (and b!5791358 b!5790849)))

(assert (=> bs!1367131 (= (and (= (regOne!32118 (regOne!32119 r!7292)) (regOne!32118 r!7292)) (= (regTwo!32118 (regOne!32119 r!7292)) (regTwo!32118 r!7292))) (= lambda!315862 lambda!315830))))

(declare-fun bs!1367132 () Bool)

(assert (= bs!1367132 (and b!5791358 d!1824251)))

(assert (=> bs!1367132 (not (= lambda!315862 lambda!315817))))

(declare-fun bs!1367133 () Bool)

(assert (= bs!1367133 (and b!5791358 d!1824227)))

(assert (=> bs!1367133 (not (= lambda!315862 lambda!315809))))

(assert (=> bs!1367133 (not (= lambda!315862 lambda!315811))))

(assert (=> bs!1367129 (not (= lambda!315862 lambda!315851))))

(assert (=> bs!1367125 (= (and (= (regOne!32118 (regOne!32119 r!7292)) (reg!16132 r!7292)) (= (regTwo!32118 (regOne!32119 r!7292)) r!7292)) (= lambda!315862 lambda!315844))))

(declare-fun bs!1367134 () Bool)

(assert (= bs!1367134 (and b!5791358 b!5791306)))

(assert (=> bs!1367134 (not (= lambda!315862 lambda!315859))))

(assert (=> bs!1367128 (= (and (= (regOne!32118 (regOne!32119 r!7292)) (reg!16132 r!7292)) (= (regTwo!32118 (regOne!32119 r!7292)) r!7292)) (= lambda!315862 lambda!315761))))

(assert (=> bs!1367128 (not (= lambda!315862 lambda!315759))))

(declare-fun bs!1367135 () Bool)

(assert (= bs!1367135 (and b!5791358 b!5791305)))

(assert (=> bs!1367135 (= (and (= (regOne!32118 (regOne!32119 r!7292)) (regOne!32118 (regTwo!32119 r!7292))) (= (regTwo!32118 (regOne!32119 r!7292)) (regTwo!32118 (regTwo!32119 r!7292)))) (= lambda!315862 lambda!315860))))

(assert (=> b!5791358 true))

(assert (=> b!5791358 true))

(declare-fun b!5791350 () Bool)

(declare-fun e!3556579 () Bool)

(declare-fun call!451136 () Bool)

(assert (=> b!5791350 (= e!3556579 call!451136)))

(declare-fun b!5791351 () Bool)

(declare-fun e!3556580 () Bool)

(assert (=> b!5791351 (= e!3556580 (matchRSpec!2906 (regTwo!32119 (regOne!32119 r!7292)) s!2326))))

(declare-fun b!5791352 () Bool)

(declare-fun e!3556578 () Bool)

(declare-fun e!3556576 () Bool)

(assert (=> b!5791352 (= e!3556578 e!3556576)))

(declare-fun c!1025525 () Bool)

(assert (=> b!5791352 (= c!1025525 ((_ is Star!15803) (regOne!32119 r!7292)))))

(declare-fun b!5791353 () Bool)

(assert (=> b!5791353 (= e!3556578 e!3556580)))

(declare-fun res!2443529 () Bool)

(assert (=> b!5791353 (= res!2443529 (matchRSpec!2906 (regOne!32119 (regOne!32119 r!7292)) s!2326))))

(assert (=> b!5791353 (=> res!2443529 e!3556580)))

(declare-fun b!5791354 () Bool)

(declare-fun e!3556575 () Bool)

(assert (=> b!5791354 (= e!3556575 (= s!2326 (Cons!63586 (c!1025273 (regOne!32119 r!7292)) Nil!63586)))))

(declare-fun bm!451131 () Bool)

(declare-fun call!451137 () Bool)

(assert (=> bm!451131 (= call!451137 (Exists!2903 (ite c!1025525 lambda!315861 lambda!315862)))))

(declare-fun b!5791355 () Bool)

(declare-fun c!1025524 () Bool)

(assert (=> b!5791355 (= c!1025524 ((_ is ElementMatch!15803) (regOne!32119 r!7292)))))

(declare-fun e!3556581 () Bool)

(assert (=> b!5791355 (= e!3556581 e!3556575)))

(declare-fun d!1824437 () Bool)

(declare-fun c!1025526 () Bool)

(assert (=> d!1824437 (= c!1025526 ((_ is EmptyExpr!15803) (regOne!32119 r!7292)))))

(assert (=> d!1824437 (= (matchRSpec!2906 (regOne!32119 r!7292) s!2326) e!3556579)))

(declare-fun b!5791356 () Bool)

(declare-fun res!2443528 () Bool)

(declare-fun e!3556577 () Bool)

(assert (=> b!5791356 (=> res!2443528 e!3556577)))

(assert (=> b!5791356 (= res!2443528 call!451136)))

(assert (=> b!5791356 (= e!3556576 e!3556577)))

(declare-fun b!5791357 () Bool)

(assert (=> b!5791357 (= e!3556579 e!3556581)))

(declare-fun res!2443530 () Bool)

(assert (=> b!5791357 (= res!2443530 (not ((_ is EmptyLang!15803) (regOne!32119 r!7292))))))

(assert (=> b!5791357 (=> (not res!2443530) (not e!3556581))))

(assert (=> b!5791358 (= e!3556576 call!451137)))

(declare-fun bm!451132 () Bool)

(assert (=> bm!451132 (= call!451136 (isEmpty!35492 s!2326))))

(assert (=> b!5791359 (= e!3556577 call!451137)))

(declare-fun b!5791360 () Bool)

(declare-fun c!1025523 () Bool)

(assert (=> b!5791360 (= c!1025523 ((_ is Union!15803) (regOne!32119 r!7292)))))

(assert (=> b!5791360 (= e!3556575 e!3556578)))

(assert (= (and d!1824437 c!1025526) b!5791350))

(assert (= (and d!1824437 (not c!1025526)) b!5791357))

(assert (= (and b!5791357 res!2443530) b!5791355))

(assert (= (and b!5791355 c!1025524) b!5791354))

(assert (= (and b!5791355 (not c!1025524)) b!5791360))

(assert (= (and b!5791360 c!1025523) b!5791353))

(assert (= (and b!5791360 (not c!1025523)) b!5791352))

(assert (= (and b!5791353 (not res!2443529)) b!5791351))

(assert (= (and b!5791352 c!1025525) b!5791356))

(assert (= (and b!5791352 (not c!1025525)) b!5791358))

(assert (= (and b!5791356 (not res!2443528)) b!5791359))

(assert (= (or b!5791359 b!5791358) bm!451131))

(assert (= (or b!5791350 b!5791356) bm!451132))

(declare-fun m!6734618 () Bool)

(assert (=> b!5791351 m!6734618))

(declare-fun m!6734620 () Bool)

(assert (=> b!5791353 m!6734620))

(declare-fun m!6734622 () Bool)

(assert (=> bm!451131 m!6734622))

(assert (=> bm!451132 m!6733910))

(assert (=> b!5790844 d!1824437))

(declare-fun d!1824439 () Bool)

(declare-fun res!2443531 () Bool)

(declare-fun e!3556582 () Bool)

(assert (=> d!1824439 (=> res!2443531 e!3556582)))

(assert (=> d!1824439 (= res!2443531 ((_ is Nil!63584) (exprs!5687 setElem!38922)))))

(assert (=> d!1824439 (= (forall!14916 (exprs!5687 setElem!38922) lambda!315766) e!3556582)))

(declare-fun b!5791361 () Bool)

(declare-fun e!3556583 () Bool)

(assert (=> b!5791361 (= e!3556582 e!3556583)))

(declare-fun res!2443532 () Bool)

(assert (=> b!5791361 (=> (not res!2443532) (not e!3556583))))

(assert (=> b!5791361 (= res!2443532 (dynLambda!24897 lambda!315766 (h!70032 (exprs!5687 setElem!38922))))))

(declare-fun b!5791362 () Bool)

(assert (=> b!5791362 (= e!3556583 (forall!14916 (t!377053 (exprs!5687 setElem!38922)) lambda!315766))))

(assert (= (and d!1824439 (not res!2443531)) b!5791361))

(assert (= (and b!5791361 res!2443532) b!5791362))

(declare-fun b_lambda!218317 () Bool)

(assert (=> (not b_lambda!218317) (not b!5791361)))

(declare-fun m!6734624 () Bool)

(assert (=> b!5791361 m!6734624))

(declare-fun m!6734626 () Bool)

(assert (=> b!5791362 m!6734626))

(assert (=> d!1824167 d!1824439))

(declare-fun d!1824441 () Bool)

(assert (=> d!1824441 (= (Exists!2903 (ite c!1025401 lambda!315829 lambda!315830)) (choose!43977 (ite c!1025401 lambda!315829 lambda!315830)))))

(declare-fun bs!1367136 () Bool)

(assert (= bs!1367136 d!1824441))

(declare-fun m!6734628 () Bool)

(assert (=> bs!1367136 m!6734628))

(assert (=> bm!451059 d!1824441))

(declare-fun b!5791363 () Bool)

(declare-fun e!3556589 () Bool)

(declare-fun lt!2297121 () Bool)

(declare-fun call!451138 () Bool)

(assert (=> b!5791363 (= e!3556589 (= lt!2297121 call!451138))))

(declare-fun b!5791364 () Bool)

(declare-fun e!3556590 () Bool)

(assert (=> b!5791364 (= e!3556589 e!3556590)))

(declare-fun c!1025528 () Bool)

(assert (=> b!5791364 (= c!1025528 ((_ is EmptyLang!15803) r!7292))))

(declare-fun b!5791365 () Bool)

(declare-fun e!3556584 () Bool)

(assert (=> b!5791365 (= e!3556584 (matchR!7988 (derivativeStep!4578 r!7292 (head!12231 (_2!36203 (get!21948 lt!2297074)))) (tail!11326 (_2!36203 (get!21948 lt!2297074)))))))

(declare-fun b!5791366 () Bool)

(declare-fun res!2443539 () Bool)

(declare-fun e!3556586 () Bool)

(assert (=> b!5791366 (=> res!2443539 e!3556586)))

(assert (=> b!5791366 (= res!2443539 (not ((_ is ElementMatch!15803) r!7292)))))

(assert (=> b!5791366 (= e!3556590 e!3556586)))

(declare-fun b!5791368 () Bool)

(declare-fun e!3556587 () Bool)

(assert (=> b!5791368 (= e!3556586 e!3556587)))

(declare-fun res!2443536 () Bool)

(assert (=> b!5791368 (=> (not res!2443536) (not e!3556587))))

(assert (=> b!5791368 (= res!2443536 (not lt!2297121))))

(declare-fun b!5791369 () Bool)

(assert (=> b!5791369 (= e!3556590 (not lt!2297121))))

(declare-fun b!5791370 () Bool)

(declare-fun e!3556588 () Bool)

(assert (=> b!5791370 (= e!3556587 e!3556588)))

(declare-fun res!2443540 () Bool)

(assert (=> b!5791370 (=> res!2443540 e!3556588)))

(assert (=> b!5791370 (= res!2443540 call!451138)))

(declare-fun b!5791371 () Bool)

(declare-fun res!2443538 () Bool)

(assert (=> b!5791371 (=> res!2443538 e!3556586)))

(declare-fun e!3556585 () Bool)

(assert (=> b!5791371 (= res!2443538 e!3556585)))

(declare-fun res!2443534 () Bool)

(assert (=> b!5791371 (=> (not res!2443534) (not e!3556585))))

(assert (=> b!5791371 (= res!2443534 lt!2297121)))

(declare-fun b!5791372 () Bool)

(assert (=> b!5791372 (= e!3556585 (= (head!12231 (_2!36203 (get!21948 lt!2297074))) (c!1025273 r!7292)))))

(declare-fun bm!451133 () Bool)

(assert (=> bm!451133 (= call!451138 (isEmpty!35492 (_2!36203 (get!21948 lt!2297074))))))

(declare-fun b!5791367 () Bool)

(declare-fun res!2443535 () Bool)

(assert (=> b!5791367 (=> (not res!2443535) (not e!3556585))))

(assert (=> b!5791367 (= res!2443535 (not call!451138))))

(declare-fun d!1824443 () Bool)

(assert (=> d!1824443 e!3556589))

(declare-fun c!1025527 () Bool)

(assert (=> d!1824443 (= c!1025527 ((_ is EmptyExpr!15803) r!7292))))

(assert (=> d!1824443 (= lt!2297121 e!3556584)))

(declare-fun c!1025529 () Bool)

(assert (=> d!1824443 (= c!1025529 (isEmpty!35492 (_2!36203 (get!21948 lt!2297074))))))

(assert (=> d!1824443 (validRegex!7539 r!7292)))

(assert (=> d!1824443 (= (matchR!7988 r!7292 (_2!36203 (get!21948 lt!2297074))) lt!2297121)))

(declare-fun b!5791373 () Bool)

(declare-fun res!2443537 () Bool)

(assert (=> b!5791373 (=> (not res!2443537) (not e!3556585))))

(assert (=> b!5791373 (= res!2443537 (isEmpty!35492 (tail!11326 (_2!36203 (get!21948 lt!2297074)))))))

(declare-fun b!5791374 () Bool)

(assert (=> b!5791374 (= e!3556588 (not (= (head!12231 (_2!36203 (get!21948 lt!2297074))) (c!1025273 r!7292))))))

(declare-fun b!5791375 () Bool)

(declare-fun res!2443533 () Bool)

(assert (=> b!5791375 (=> res!2443533 e!3556588)))

(assert (=> b!5791375 (= res!2443533 (not (isEmpty!35492 (tail!11326 (_2!36203 (get!21948 lt!2297074))))))))

(declare-fun b!5791376 () Bool)

(assert (=> b!5791376 (= e!3556584 (nullable!5834 r!7292))))

(assert (= (and d!1824443 c!1025529) b!5791376))

(assert (= (and d!1824443 (not c!1025529)) b!5791365))

(assert (= (and d!1824443 c!1025527) b!5791363))

(assert (= (and d!1824443 (not c!1025527)) b!5791364))

(assert (= (and b!5791364 c!1025528) b!5791369))

(assert (= (and b!5791364 (not c!1025528)) b!5791366))

(assert (= (and b!5791366 (not res!2443539)) b!5791371))

(assert (= (and b!5791371 res!2443534) b!5791367))

(assert (= (and b!5791367 res!2443535) b!5791373))

(assert (= (and b!5791373 res!2443537) b!5791372))

(assert (= (and b!5791371 (not res!2443538)) b!5791368))

(assert (= (and b!5791368 res!2443536) b!5791370))

(assert (= (and b!5791370 (not res!2443540)) b!5791375))

(assert (= (and b!5791375 (not res!2443533)) b!5791374))

(assert (= (or b!5791363 b!5791367 b!5791370) bm!451133))

(declare-fun m!6734630 () Bool)

(assert (=> b!5791365 m!6734630))

(assert (=> b!5791365 m!6734630))

(declare-fun m!6734632 () Bool)

(assert (=> b!5791365 m!6734632))

(declare-fun m!6734634 () Bool)

(assert (=> b!5791365 m!6734634))

(assert (=> b!5791365 m!6734632))

(assert (=> b!5791365 m!6734634))

(declare-fun m!6734636 () Bool)

(assert (=> b!5791365 m!6734636))

(assert (=> b!5791375 m!6734634))

(assert (=> b!5791375 m!6734634))

(declare-fun m!6734638 () Bool)

(assert (=> b!5791375 m!6734638))

(assert (=> b!5791376 m!6734262))

(declare-fun m!6734640 () Bool)

(assert (=> bm!451133 m!6734640))

(assert (=> d!1824443 m!6734640))

(assert (=> d!1824443 m!6733924))

(assert (=> b!5791372 m!6734630))

(assert (=> b!5791374 m!6734630))

(assert (=> b!5791373 m!6734634))

(assert (=> b!5791373 m!6734634))

(assert (=> b!5791373 m!6734638))

(assert (=> b!5790747 d!1824443))

(assert (=> b!5790747 d!1824327))

(declare-fun bs!1367137 () Bool)

(declare-fun d!1824445 () Bool)

(assert (= bs!1367137 (and d!1824445 d!1824173)))

(declare-fun lambda!315863 () Int)

(assert (=> bs!1367137 (= lambda!315863 lambda!315772)))

(declare-fun bs!1367138 () Bool)

(assert (= bs!1367138 (and d!1824445 d!1824187)))

(assert (=> bs!1367138 (= lambda!315863 lambda!315776)))

(declare-fun bs!1367139 () Bool)

(assert (= bs!1367139 (and d!1824445 d!1824161)))

(assert (=> bs!1367139 (= lambda!315863 lambda!315765)))

(declare-fun bs!1367140 () Bool)

(assert (= bs!1367140 (and d!1824445 d!1824343)))

(assert (=> bs!1367140 (= lambda!315863 lambda!315845)))

(declare-fun bs!1367141 () Bool)

(assert (= bs!1367141 (and d!1824445 d!1824357)))

(assert (=> bs!1367141 (= lambda!315863 lambda!315846)))

(declare-fun bs!1367142 () Bool)

(assert (= bs!1367142 (and d!1824445 d!1824413)))

(assert (=> bs!1367142 (= lambda!315863 lambda!315858)))

(declare-fun bs!1367143 () Bool)

(assert (= bs!1367143 (and d!1824445 d!1824411)))

(assert (=> bs!1367143 (= lambda!315863 lambda!315857)))

(declare-fun bs!1367144 () Bool)

(assert (= bs!1367144 (and d!1824445 d!1824167)))

(assert (=> bs!1367144 (= lambda!315863 lambda!315766)))

(declare-fun bs!1367145 () Bool)

(assert (= bs!1367145 (and d!1824445 d!1824171)))

(assert (=> bs!1367145 (= lambda!315863 lambda!315769)))

(assert (=> d!1824445 (= (inv!82754 setElem!38925) (forall!14916 (exprs!5687 setElem!38925) lambda!315863))))

(declare-fun bs!1367146 () Bool)

(assert (= bs!1367146 d!1824445))

(declare-fun m!6734642 () Bool)

(assert (=> bs!1367146 m!6734642))

(assert (=> setNonEmpty!38925 d!1824445))

(declare-fun b!5791377 () Bool)

(declare-fun e!3556593 () (InoxSet Context!10374))

(declare-fun e!3556596 () (InoxSet Context!10374))

(assert (=> b!5791377 (= e!3556593 e!3556596)))

(declare-fun c!1025530 () Bool)

(assert (=> b!5791377 (= c!1025530 ((_ is Union!15803) (h!70032 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun c!1025532 () Bool)

(declare-fun bm!451134 () Bool)

(declare-fun call!451144 () List!63708)

(declare-fun c!1025534 () Bool)

(assert (=> bm!451134 (= call!451144 ($colon$colon!1789 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343))))) (ite (or c!1025534 c!1025532) (regTwo!32118 (h!70032 (exprs!5687 (h!70033 zl!343)))) (h!70032 (exprs!5687 (h!70033 zl!343))))))))

(declare-fun call!451141 () (InoxSet Context!10374))

(declare-fun bm!451135 () Bool)

(assert (=> bm!451135 (= call!451141 (derivationStepZipperDown!1141 (ite c!1025530 (regTwo!32119 (h!70032 (exprs!5687 (h!70033 zl!343)))) (regOne!32118 (h!70032 (exprs!5687 (h!70033 zl!343))))) (ite c!1025530 (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343)))) (Context!10375 call!451144)) (h!70034 s!2326)))))

(declare-fun call!451142 () List!63708)

(declare-fun call!451143 () (InoxSet Context!10374))

(declare-fun bm!451136 () Bool)

(assert (=> bm!451136 (= call!451143 (derivationStepZipperDown!1141 (ite c!1025530 (regOne!32119 (h!70032 (exprs!5687 (h!70033 zl!343)))) (ite c!1025534 (regTwo!32118 (h!70032 (exprs!5687 (h!70033 zl!343)))) (ite c!1025532 (regOne!32118 (h!70032 (exprs!5687 (h!70033 zl!343)))) (reg!16132 (h!70032 (exprs!5687 (h!70033 zl!343))))))) (ite (or c!1025530 c!1025534) (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343)))) (Context!10375 call!451142)) (h!70034 s!2326)))))

(declare-fun b!5791378 () Bool)

(declare-fun c!1025531 () Bool)

(assert (=> b!5791378 (= c!1025531 ((_ is Star!15803) (h!70032 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun e!3556595 () (InoxSet Context!10374))

(declare-fun e!3556594 () (InoxSet Context!10374))

(assert (=> b!5791378 (= e!3556595 e!3556594)))

(declare-fun b!5791379 () Bool)

(declare-fun e!3556592 () (InoxSet Context!10374))

(assert (=> b!5791379 (= e!3556592 e!3556595)))

(assert (=> b!5791379 (= c!1025532 ((_ is Concat!24648) (h!70032 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun bm!451137 () Bool)

(declare-fun call!451139 () (InoxSet Context!10374))

(declare-fun call!451140 () (InoxSet Context!10374))

(assert (=> bm!451137 (= call!451139 call!451140)))

(declare-fun b!5791380 () Bool)

(declare-fun e!3556591 () Bool)

(assert (=> b!5791380 (= c!1025534 e!3556591)))

(declare-fun res!2443541 () Bool)

(assert (=> b!5791380 (=> (not res!2443541) (not e!3556591))))

(assert (=> b!5791380 (= res!2443541 ((_ is Concat!24648) (h!70032 (exprs!5687 (h!70033 zl!343)))))))

(assert (=> b!5791380 (= e!3556596 e!3556592)))

(declare-fun b!5791381 () Bool)

(assert (=> b!5791381 (= e!3556595 call!451139)))

(declare-fun b!5791382 () Bool)

(assert (=> b!5791382 (= e!3556592 ((_ map or) call!451141 call!451140))))

(declare-fun b!5791383 () Bool)

(assert (=> b!5791383 (= e!3556596 ((_ map or) call!451143 call!451141))))

(declare-fun b!5791384 () Bool)

(assert (=> b!5791384 (= e!3556593 (store ((as const (Array Context!10374 Bool)) false) (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343)))) true))))

(declare-fun d!1824447 () Bool)

(declare-fun c!1025533 () Bool)

(assert (=> d!1824447 (= c!1025533 (and ((_ is ElementMatch!15803) (h!70032 (exprs!5687 (h!70033 zl!343)))) (= (c!1025273 (h!70032 (exprs!5687 (h!70033 zl!343)))) (h!70034 s!2326))))))

(assert (=> d!1824447 (= (derivationStepZipperDown!1141 (h!70032 (exprs!5687 (h!70033 zl!343))) (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343)))) (h!70034 s!2326)) e!3556593)))

(declare-fun bm!451138 () Bool)

(assert (=> bm!451138 (= call!451142 call!451144)))

(declare-fun b!5791385 () Bool)

(assert (=> b!5791385 (= e!3556591 (nullable!5834 (regOne!32118 (h!70032 (exprs!5687 (h!70033 zl!343))))))))

(declare-fun bm!451139 () Bool)

(assert (=> bm!451139 (= call!451140 call!451143)))

(declare-fun b!5791386 () Bool)

(assert (=> b!5791386 (= e!3556594 ((as const (Array Context!10374 Bool)) false))))

(declare-fun b!5791387 () Bool)

(assert (=> b!5791387 (= e!3556594 call!451139)))

(assert (= (and d!1824447 c!1025533) b!5791384))

(assert (= (and d!1824447 (not c!1025533)) b!5791377))

(assert (= (and b!5791377 c!1025530) b!5791383))

(assert (= (and b!5791377 (not c!1025530)) b!5791380))

(assert (= (and b!5791380 res!2443541) b!5791385))

(assert (= (and b!5791380 c!1025534) b!5791382))

(assert (= (and b!5791380 (not c!1025534)) b!5791379))

(assert (= (and b!5791379 c!1025532) b!5791381))

(assert (= (and b!5791379 (not c!1025532)) b!5791378))

(assert (= (and b!5791378 c!1025531) b!5791387))

(assert (= (and b!5791378 (not c!1025531)) b!5791386))

(assert (= (or b!5791381 b!5791387) bm!451138))

(assert (= (or b!5791381 b!5791387) bm!451137))

(assert (= (or b!5791382 bm!451138) bm!451134))

(assert (= (or b!5791382 bm!451137) bm!451139))

(assert (= (or b!5791383 b!5791382) bm!451135))

(assert (= (or b!5791383 bm!451139) bm!451136))

(declare-fun m!6734644 () Bool)

(assert (=> bm!451134 m!6734644))

(declare-fun m!6734646 () Bool)

(assert (=> bm!451135 m!6734646))

(declare-fun m!6734648 () Bool)

(assert (=> b!5791384 m!6734648))

(declare-fun m!6734650 () Bool)

(assert (=> bm!451136 m!6734650))

(declare-fun m!6734652 () Bool)

(assert (=> b!5791385 m!6734652))

(assert (=> bm!451032 d!1824447))

(declare-fun b!5791388 () Bool)

(declare-fun e!3556599 () (InoxSet Context!10374))

(declare-fun e!3556602 () (InoxSet Context!10374))

(assert (=> b!5791388 (= e!3556599 e!3556602)))

(declare-fun c!1025535 () Bool)

(assert (=> b!5791388 (= c!1025535 ((_ is Union!15803) (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))))))

(declare-fun call!451150 () List!63708)

(declare-fun c!1025537 () Bool)

(declare-fun c!1025539 () Bool)

(declare-fun bm!451140 () Bool)

(assert (=> bm!451140 (= call!451150 ($colon$colon!1789 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))))) (ite (or c!1025539 c!1025537) (regTwo!32118 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))))))))

(declare-fun bm!451141 () Bool)

(declare-fun call!451147 () (InoxSet Context!10374))

(assert (=> bm!451141 (= call!451147 (derivationStepZipperDown!1141 (ite c!1025535 (regTwo!32119 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (regOne!32118 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))))) (ite c!1025535 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (Context!10375 call!451150)) (h!70034 s!2326)))))

(declare-fun call!451149 () (InoxSet Context!10374))

(declare-fun call!451148 () List!63708)

(declare-fun bm!451142 () Bool)

(assert (=> bm!451142 (= call!451149 (derivationStepZipperDown!1141 (ite c!1025535 (regOne!32119 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (ite c!1025539 (regTwo!32118 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (ite c!1025537 (regOne!32118 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (reg!16132 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))))))) (ite (or c!1025535 c!1025539) (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (Context!10375 call!451148)) (h!70034 s!2326)))))

(declare-fun b!5791389 () Bool)

(declare-fun c!1025536 () Bool)

(assert (=> b!5791389 (= c!1025536 ((_ is Star!15803) (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))))))

(declare-fun e!3556601 () (InoxSet Context!10374))

(declare-fun e!3556600 () (InoxSet Context!10374))

(assert (=> b!5791389 (= e!3556601 e!3556600)))

(declare-fun b!5791390 () Bool)

(declare-fun e!3556598 () (InoxSet Context!10374))

(assert (=> b!5791390 (= e!3556598 e!3556601)))

(assert (=> b!5791390 (= c!1025537 ((_ is Concat!24648) (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))))))

(declare-fun bm!451143 () Bool)

(declare-fun call!451145 () (InoxSet Context!10374))

(declare-fun call!451146 () (InoxSet Context!10374))

(assert (=> bm!451143 (= call!451145 call!451146)))

(declare-fun b!5791391 () Bool)

(declare-fun e!3556597 () Bool)

(assert (=> b!5791391 (= c!1025539 e!3556597)))

(declare-fun res!2443542 () Bool)

(assert (=> b!5791391 (=> (not res!2443542) (not e!3556597))))

(assert (=> b!5791391 (= res!2443542 ((_ is Concat!24648) (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))))))

(assert (=> b!5791391 (= e!3556602 e!3556598)))

(declare-fun b!5791392 () Bool)

(assert (=> b!5791392 (= e!3556601 call!451145)))

(declare-fun b!5791393 () Bool)

(assert (=> b!5791393 (= e!3556598 ((_ map or) call!451147 call!451146))))

(declare-fun b!5791394 () Bool)

(assert (=> b!5791394 (= e!3556602 ((_ map or) call!451149 call!451147))))

(declare-fun b!5791395 () Bool)

(assert (=> b!5791395 (= e!3556599 (store ((as const (Array Context!10374 Bool)) false) (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) true))))

(declare-fun d!1824449 () Bool)

(declare-fun c!1025538 () Bool)

(assert (=> d!1824449 (= c!1025538 (and ((_ is ElementMatch!15803) (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (= (c!1025273 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (h!70034 s!2326))))))

(assert (=> d!1824449 (= (derivationStepZipperDown!1141 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))) (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (h!70034 s!2326)) e!3556599)))

(declare-fun bm!451144 () Bool)

(assert (=> bm!451144 (= call!451148 call!451150)))

(declare-fun b!5791396 () Bool)

(assert (=> b!5791396 (= e!3556597 (nullable!5834 (regOne!32118 (h!70032 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))))))))

(declare-fun bm!451145 () Bool)

(assert (=> bm!451145 (= call!451146 call!451149)))

(declare-fun b!5791397 () Bool)

(assert (=> b!5791397 (= e!3556600 ((as const (Array Context!10374 Bool)) false))))

(declare-fun b!5791398 () Bool)

(assert (=> b!5791398 (= e!3556600 call!451145)))

(assert (= (and d!1824449 c!1025538) b!5791395))

(assert (= (and d!1824449 (not c!1025538)) b!5791388))

(assert (= (and b!5791388 c!1025535) b!5791394))

(assert (= (and b!5791388 (not c!1025535)) b!5791391))

(assert (= (and b!5791391 res!2443542) b!5791396))

(assert (= (and b!5791391 c!1025539) b!5791393))

(assert (= (and b!5791391 (not c!1025539)) b!5791390))

(assert (= (and b!5791390 c!1025537) b!5791392))

(assert (= (and b!5791390 (not c!1025537)) b!5791389))

(assert (= (and b!5791389 c!1025536) b!5791398))

(assert (= (and b!5791389 (not c!1025536)) b!5791397))

(assert (= (or b!5791392 b!5791398) bm!451144))

(assert (= (or b!5791392 b!5791398) bm!451143))

(assert (= (or b!5791393 bm!451144) bm!451140))

(assert (= (or b!5791393 bm!451143) bm!451145))

(assert (= (or b!5791394 b!5791393) bm!451141))

(assert (= (or b!5791394 bm!451145) bm!451142))

(declare-fun m!6734654 () Bool)

(assert (=> bm!451140 m!6734654))

(declare-fun m!6734656 () Bool)

(assert (=> bm!451141 m!6734656))

(declare-fun m!6734658 () Bool)

(assert (=> b!5791395 m!6734658))

(declare-fun m!6734660 () Bool)

(assert (=> bm!451142 m!6734660))

(declare-fun m!6734662 () Bool)

(assert (=> b!5791396 m!6734662))

(assert (=> bm!451039 d!1824449))

(declare-fun b!5791399 () Bool)

(declare-fun e!3556603 () Bool)

(assert (=> b!5791399 (= e!3556603 (nullable!5834 (h!70032 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343))))))))))

(declare-fun bm!451146 () Bool)

(declare-fun call!451151 () (InoxSet Context!10374))

(assert (=> bm!451146 (= call!451151 (derivationStepZipperDown!1141 (h!70032 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343)))))) (Context!10375 (t!377053 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343))))))) (h!70034 s!2326)))))

(declare-fun d!1824451 () Bool)

(declare-fun c!1025540 () Bool)

(assert (=> d!1824451 (= c!1025540 e!3556603)))

(declare-fun res!2443543 () Bool)

(assert (=> d!1824451 (=> (not res!2443543) (not e!3556603))))

(assert (=> d!1824451 (= res!2443543 ((_ is Cons!63584) (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343)))))))))

(declare-fun e!3556605 () (InoxSet Context!10374))

(assert (=> d!1824451 (= (derivationStepZipperUp!1067 (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343)))) (h!70034 s!2326)) e!3556605)))

(declare-fun b!5791400 () Bool)

(declare-fun e!3556604 () (InoxSet Context!10374))

(assert (=> b!5791400 (= e!3556604 call!451151)))

(declare-fun b!5791401 () Bool)

(assert (=> b!5791401 (= e!3556605 e!3556604)))

(declare-fun c!1025541 () Bool)

(assert (=> b!5791401 (= c!1025541 ((_ is Cons!63584) (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343)))))))))

(declare-fun b!5791402 () Bool)

(assert (=> b!5791402 (= e!3556605 ((_ map or) call!451151 (derivationStepZipperUp!1067 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (h!70033 zl!343))))))) (h!70034 s!2326))))))

(declare-fun b!5791403 () Bool)

(assert (=> b!5791403 (= e!3556604 ((as const (Array Context!10374 Bool)) false))))

(assert (= (and d!1824451 res!2443543) b!5791399))

(assert (= (and d!1824451 c!1025540) b!5791402))

(assert (= (and d!1824451 (not c!1025540)) b!5791401))

(assert (= (and b!5791401 c!1025541) b!5791400))

(assert (= (and b!5791401 (not c!1025541)) b!5791403))

(assert (= (or b!5791402 b!5791400) bm!451146))

(declare-fun m!6734664 () Bool)

(assert (=> b!5791399 m!6734664))

(declare-fun m!6734666 () Bool)

(assert (=> bm!451146 m!6734666))

(declare-fun m!6734668 () Bool)

(assert (=> b!5791402 m!6734668))

(assert (=> b!5790593 d!1824451))

(declare-fun b!5791404 () Bool)

(declare-fun e!3556608 () (InoxSet Context!10374))

(declare-fun e!3556611 () (InoxSet Context!10374))

(assert (=> b!5791404 (= e!3556608 e!3556611)))

(declare-fun c!1025542 () Bool)

(assert (=> b!5791404 (= c!1025542 ((_ is Union!15803) (h!70032 (exprs!5687 lt!2297012))))))

(declare-fun c!1025544 () Bool)

(declare-fun call!451157 () List!63708)

(declare-fun bm!451147 () Bool)

(declare-fun c!1025546 () Bool)

(assert (=> bm!451147 (= call!451157 ($colon$colon!1789 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 lt!2297012)))) (ite (or c!1025546 c!1025544) (regTwo!32118 (h!70032 (exprs!5687 lt!2297012))) (h!70032 (exprs!5687 lt!2297012)))))))

(declare-fun call!451154 () (InoxSet Context!10374))

(declare-fun bm!451148 () Bool)

(assert (=> bm!451148 (= call!451154 (derivationStepZipperDown!1141 (ite c!1025542 (regTwo!32119 (h!70032 (exprs!5687 lt!2297012))) (regOne!32118 (h!70032 (exprs!5687 lt!2297012)))) (ite c!1025542 (Context!10375 (t!377053 (exprs!5687 lt!2297012))) (Context!10375 call!451157)) (h!70034 s!2326)))))

(declare-fun call!451156 () (InoxSet Context!10374))

(declare-fun bm!451149 () Bool)

(declare-fun call!451155 () List!63708)

(assert (=> bm!451149 (= call!451156 (derivationStepZipperDown!1141 (ite c!1025542 (regOne!32119 (h!70032 (exprs!5687 lt!2297012))) (ite c!1025546 (regTwo!32118 (h!70032 (exprs!5687 lt!2297012))) (ite c!1025544 (regOne!32118 (h!70032 (exprs!5687 lt!2297012))) (reg!16132 (h!70032 (exprs!5687 lt!2297012)))))) (ite (or c!1025542 c!1025546) (Context!10375 (t!377053 (exprs!5687 lt!2297012))) (Context!10375 call!451155)) (h!70034 s!2326)))))

(declare-fun b!5791405 () Bool)

(declare-fun c!1025543 () Bool)

(assert (=> b!5791405 (= c!1025543 ((_ is Star!15803) (h!70032 (exprs!5687 lt!2297012))))))

(declare-fun e!3556610 () (InoxSet Context!10374))

(declare-fun e!3556609 () (InoxSet Context!10374))

(assert (=> b!5791405 (= e!3556610 e!3556609)))

(declare-fun b!5791406 () Bool)

(declare-fun e!3556607 () (InoxSet Context!10374))

(assert (=> b!5791406 (= e!3556607 e!3556610)))

(assert (=> b!5791406 (= c!1025544 ((_ is Concat!24648) (h!70032 (exprs!5687 lt!2297012))))))

(declare-fun bm!451150 () Bool)

(declare-fun call!451152 () (InoxSet Context!10374))

(declare-fun call!451153 () (InoxSet Context!10374))

(assert (=> bm!451150 (= call!451152 call!451153)))

(declare-fun b!5791407 () Bool)

(declare-fun e!3556606 () Bool)

(assert (=> b!5791407 (= c!1025546 e!3556606)))

(declare-fun res!2443544 () Bool)

(assert (=> b!5791407 (=> (not res!2443544) (not e!3556606))))

(assert (=> b!5791407 (= res!2443544 ((_ is Concat!24648) (h!70032 (exprs!5687 lt!2297012))))))

(assert (=> b!5791407 (= e!3556611 e!3556607)))

(declare-fun b!5791408 () Bool)

(assert (=> b!5791408 (= e!3556610 call!451152)))

(declare-fun b!5791409 () Bool)

(assert (=> b!5791409 (= e!3556607 ((_ map or) call!451154 call!451153))))

(declare-fun b!5791410 () Bool)

(assert (=> b!5791410 (= e!3556611 ((_ map or) call!451156 call!451154))))

(declare-fun b!5791411 () Bool)

(assert (=> b!5791411 (= e!3556608 (store ((as const (Array Context!10374 Bool)) false) (Context!10375 (t!377053 (exprs!5687 lt!2297012))) true))))

(declare-fun d!1824455 () Bool)

(declare-fun c!1025545 () Bool)

(assert (=> d!1824455 (= c!1025545 (and ((_ is ElementMatch!15803) (h!70032 (exprs!5687 lt!2297012))) (= (c!1025273 (h!70032 (exprs!5687 lt!2297012))) (h!70034 s!2326))))))

(assert (=> d!1824455 (= (derivationStepZipperDown!1141 (h!70032 (exprs!5687 lt!2297012)) (Context!10375 (t!377053 (exprs!5687 lt!2297012))) (h!70034 s!2326)) e!3556608)))

(declare-fun bm!451151 () Bool)

(assert (=> bm!451151 (= call!451155 call!451157)))

(declare-fun b!5791412 () Bool)

(assert (=> b!5791412 (= e!3556606 (nullable!5834 (regOne!32118 (h!70032 (exprs!5687 lt!2297012)))))))

(declare-fun bm!451152 () Bool)

(assert (=> bm!451152 (= call!451153 call!451156)))

(declare-fun b!5791413 () Bool)

(assert (=> b!5791413 (= e!3556609 ((as const (Array Context!10374 Bool)) false))))

(declare-fun b!5791414 () Bool)

(assert (=> b!5791414 (= e!3556609 call!451152)))

(assert (= (and d!1824455 c!1025545) b!5791411))

(assert (= (and d!1824455 (not c!1025545)) b!5791404))

(assert (= (and b!5791404 c!1025542) b!5791410))

(assert (= (and b!5791404 (not c!1025542)) b!5791407))

(assert (= (and b!5791407 res!2443544) b!5791412))

(assert (= (and b!5791407 c!1025546) b!5791409))

(assert (= (and b!5791407 (not c!1025546)) b!5791406))

(assert (= (and b!5791406 c!1025544) b!5791408))

(assert (= (and b!5791406 (not c!1025544)) b!5791405))

(assert (= (and b!5791405 c!1025543) b!5791414))

(assert (= (and b!5791405 (not c!1025543)) b!5791413))

(assert (= (or b!5791408 b!5791414) bm!451151))

(assert (= (or b!5791408 b!5791414) bm!451150))

(assert (= (or b!5791409 bm!451151) bm!451147))

(assert (= (or b!5791409 bm!451150) bm!451152))

(assert (= (or b!5791410 b!5791409) bm!451148))

(assert (= (or b!5791410 bm!451152) bm!451149))

(declare-fun m!6734670 () Bool)

(assert (=> bm!451147 m!6734670))

(declare-fun m!6734672 () Bool)

(assert (=> bm!451148 m!6734672))

(declare-fun m!6734674 () Bool)

(assert (=> b!5791411 m!6734674))

(declare-fun m!6734676 () Bool)

(assert (=> bm!451149 m!6734676))

(declare-fun m!6734678 () Bool)

(assert (=> b!5791412 m!6734678))

(assert (=> bm!451028 d!1824455))

(declare-fun d!1824457 () Bool)

(declare-fun res!2443554 () Bool)

(declare-fun e!3556623 () Bool)

(assert (=> d!1824457 (=> res!2443554 e!3556623)))

(assert (=> d!1824457 (= res!2443554 ((_ is Nil!63585) lt!2297024))))

(assert (=> d!1824457 (= (noDuplicate!1703 lt!2297024) e!3556623)))

(declare-fun b!5791428 () Bool)

(declare-fun e!3556624 () Bool)

(assert (=> b!5791428 (= e!3556623 e!3556624)))

(declare-fun res!2443555 () Bool)

(assert (=> b!5791428 (=> (not res!2443555) (not e!3556624))))

(declare-fun contains!19876 (List!63709 Context!10374) Bool)

(assert (=> b!5791428 (= res!2443555 (not (contains!19876 (t!377054 lt!2297024) (h!70033 lt!2297024))))))

(declare-fun b!5791429 () Bool)

(assert (=> b!5791429 (= e!3556624 (noDuplicate!1703 (t!377054 lt!2297024)))))

(assert (= (and d!1824457 (not res!2443554)) b!5791428))

(assert (= (and b!5791428 res!2443555) b!5791429))

(declare-fun m!6734688 () Bool)

(assert (=> b!5791428 m!6734688))

(declare-fun m!6734690 () Bool)

(assert (=> b!5791429 m!6734690))

(assert (=> d!1824169 d!1824457))

(declare-fun d!1824463 () Bool)

(declare-fun e!3556637 () Bool)

(assert (=> d!1824463 e!3556637))

(declare-fun res!2443565 () Bool)

(assert (=> d!1824463 (=> (not res!2443565) (not e!3556637))))

(declare-fun res!2443564 () List!63709)

(assert (=> d!1824463 (= res!2443565 (noDuplicate!1703 res!2443564))))

(declare-fun e!3556635 () Bool)

(assert (=> d!1824463 e!3556635))

(assert (=> d!1824463 (= (choose!43967 z!1189) res!2443564)))

(declare-fun b!5791441 () Bool)

(declare-fun e!3556636 () Bool)

(declare-fun tp!1597620 () Bool)

(assert (=> b!5791441 (= e!3556636 tp!1597620)))

(declare-fun b!5791440 () Bool)

(declare-fun tp!1597619 () Bool)

(assert (=> b!5791440 (= e!3556635 (and (inv!82754 (h!70033 res!2443564)) e!3556636 tp!1597619))))

(declare-fun b!5791442 () Bool)

(assert (=> b!5791442 (= e!3556637 (= (content!11631 res!2443564) z!1189))))

(assert (= b!5791440 b!5791441))

(assert (= (and d!1824463 ((_ is Cons!63585) res!2443564)) b!5791440))

(assert (= (and d!1824463 res!2443565) b!5791442))

(declare-fun m!6734692 () Bool)

(assert (=> d!1824463 m!6734692))

(declare-fun m!6734694 () Bool)

(assert (=> b!5791440 m!6734694))

(declare-fun m!6734696 () Bool)

(assert (=> b!5791442 m!6734696))

(assert (=> d!1824169 d!1824463))

(assert (=> bm!451060 d!1824239))

(declare-fun b!5791443 () Bool)

(declare-fun e!3556638 () Bool)

(assert (=> b!5791443 (= e!3556638 (nullable!5834 (h!70032 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))))))))))

(declare-fun bm!451156 () Bool)

(declare-fun call!451161 () (InoxSet Context!10374))

(assert (=> bm!451156 (= call!451161 (derivationStepZipperDown!1141 (h!70032 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))))) (Context!10375 (t!377053 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))))))) (h!70034 s!2326)))))

(declare-fun d!1824465 () Bool)

(declare-fun c!1025549 () Bool)

(assert (=> d!1824465 (= c!1025549 e!3556638)))

(declare-fun res!2443566 () Bool)

(assert (=> d!1824465 (=> (not res!2443566) (not e!3556638))))

(assert (=> d!1824465 (= res!2443566 ((_ is Cons!63584) (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))))))))

(declare-fun e!3556640 () (InoxSet Context!10374))

(assert (=> d!1824465 (= (derivationStepZipperUp!1067 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))) (h!70034 s!2326)) e!3556640)))

(declare-fun b!5791444 () Bool)

(declare-fun e!3556639 () (InoxSet Context!10374))

(assert (=> b!5791444 (= e!3556639 call!451161)))

(declare-fun b!5791445 () Bool)

(assert (=> b!5791445 (= e!3556640 e!3556639)))

(declare-fun c!1025550 () Bool)

(assert (=> b!5791445 (= c!1025550 ((_ is Cons!63584) (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584))))))))))

(declare-fun b!5791446 () Bool)

(assert (=> b!5791446 (= e!3556640 ((_ map or) call!451161 (derivationStepZipperUp!1067 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (t!377053 (exprs!5687 (Context!10375 (Cons!63584 r!7292 Nil!63584)))))))) (h!70034 s!2326))))))

(declare-fun b!5791447 () Bool)

(assert (=> b!5791447 (= e!3556639 ((as const (Array Context!10374 Bool)) false))))

(assert (= (and d!1824465 res!2443566) b!5791443))

(assert (= (and d!1824465 c!1025549) b!5791446))

(assert (= (and d!1824465 (not c!1025549)) b!5791445))

(assert (= (and b!5791445 c!1025550) b!5791444))

(assert (= (and b!5791445 (not c!1025550)) b!5791447))

(assert (= (or b!5791446 b!5791444) bm!451156))

(declare-fun m!6734698 () Bool)

(assert (=> b!5791443 m!6734698))

(declare-fun m!6734700 () Bool)

(assert (=> bm!451156 m!6734700))

(declare-fun m!6734702 () Bool)

(assert (=> b!5791446 m!6734702))

(assert (=> b!5790619 d!1824465))

(declare-fun d!1824467 () Bool)

(declare-fun res!2443567 () Bool)

(declare-fun e!3556641 () Bool)

(assert (=> d!1824467 (=> res!2443567 e!3556641)))

(assert (=> d!1824467 (= res!2443567 ((_ is Nil!63584) (exprs!5687 (h!70033 zl!343))))))

(assert (=> d!1824467 (= (forall!14916 (exprs!5687 (h!70033 zl!343)) lambda!315765) e!3556641)))

(declare-fun b!5791448 () Bool)

(declare-fun e!3556642 () Bool)

(assert (=> b!5791448 (= e!3556641 e!3556642)))

(declare-fun res!2443568 () Bool)

(assert (=> b!5791448 (=> (not res!2443568) (not e!3556642))))

(assert (=> b!5791448 (= res!2443568 (dynLambda!24897 lambda!315765 (h!70032 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun b!5791449 () Bool)

(assert (=> b!5791449 (= e!3556642 (forall!14916 (t!377053 (exprs!5687 (h!70033 zl!343))) lambda!315765))))

(assert (= (and d!1824467 (not res!2443567)) b!5791448))

(assert (= (and b!5791448 res!2443568) b!5791449))

(declare-fun b_lambda!218319 () Bool)

(assert (=> (not b_lambda!218319) (not b!5791448)))

(declare-fun m!6734704 () Bool)

(assert (=> b!5791448 m!6734704))

(declare-fun m!6734706 () Bool)

(assert (=> b!5791449 m!6734706))

(assert (=> d!1824161 d!1824467))

(declare-fun b!5791450 () Bool)

(declare-fun e!3556645 () (InoxSet Context!10374))

(declare-fun e!3556648 () (InoxSet Context!10374))

(assert (=> b!5791450 (= e!3556645 e!3556648)))

(declare-fun c!1025551 () Bool)

(assert (=> b!5791450 (= c!1025551 ((_ is Union!15803) (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292))))))))

(declare-fun call!451167 () List!63708)

(declare-fun bm!451157 () Bool)

(declare-fun c!1025555 () Bool)

(declare-fun c!1025553 () Bool)

(assert (=> bm!451157 (= call!451167 ($colon$colon!1789 (exprs!5687 (ite (or c!1025338 c!1025342) (Context!10375 Nil!63584) (Context!10375 call!451041))) (ite (or c!1025555 c!1025553) (regTwo!32118 (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292))))) (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292)))))))))

(declare-fun call!451164 () (InoxSet Context!10374))

(declare-fun bm!451158 () Bool)

(assert (=> bm!451158 (= call!451164 (derivationStepZipperDown!1141 (ite c!1025551 (regTwo!32119 (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292))))) (regOne!32118 (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292)))))) (ite c!1025551 (ite (or c!1025338 c!1025342) (Context!10375 Nil!63584) (Context!10375 call!451041)) (Context!10375 call!451167)) (h!70034 s!2326)))))

(declare-fun call!451165 () List!63708)

(declare-fun call!451166 () (InoxSet Context!10374))

(declare-fun bm!451159 () Bool)

(assert (=> bm!451159 (= call!451166 (derivationStepZipperDown!1141 (ite c!1025551 (regOne!32119 (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292))))) (ite c!1025555 (regTwo!32118 (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292))))) (ite c!1025553 (regOne!32118 (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292))))) (reg!16132 (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292)))))))) (ite (or c!1025551 c!1025555) (ite (or c!1025338 c!1025342) (Context!10375 Nil!63584) (Context!10375 call!451041)) (Context!10375 call!451165)) (h!70034 s!2326)))))

(declare-fun c!1025552 () Bool)

(declare-fun b!5791451 () Bool)

(assert (=> b!5791451 (= c!1025552 ((_ is Star!15803) (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292))))))))

(declare-fun e!3556647 () (InoxSet Context!10374))

(declare-fun e!3556646 () (InoxSet Context!10374))

(assert (=> b!5791451 (= e!3556647 e!3556646)))

(declare-fun b!5791452 () Bool)

(declare-fun e!3556644 () (InoxSet Context!10374))

(assert (=> b!5791452 (= e!3556644 e!3556647)))

(assert (=> b!5791452 (= c!1025553 ((_ is Concat!24648) (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292))))))))

(declare-fun bm!451160 () Bool)

(declare-fun call!451162 () (InoxSet Context!10374))

(declare-fun call!451163 () (InoxSet Context!10374))

(assert (=> bm!451160 (= call!451162 call!451163)))

(declare-fun b!5791453 () Bool)

(declare-fun e!3556643 () Bool)

(assert (=> b!5791453 (= c!1025555 e!3556643)))

(declare-fun res!2443569 () Bool)

(assert (=> b!5791453 (=> (not res!2443569) (not e!3556643))))

(assert (=> b!5791453 (= res!2443569 ((_ is Concat!24648) (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292))))))))

(assert (=> b!5791453 (= e!3556648 e!3556644)))

(declare-fun b!5791455 () Bool)

(assert (=> b!5791455 (= e!3556647 call!451162)))

(declare-fun b!5791457 () Bool)

(assert (=> b!5791457 (= e!3556644 ((_ map or) call!451164 call!451163))))

(declare-fun b!5791458 () Bool)

(assert (=> b!5791458 (= e!3556648 ((_ map or) call!451166 call!451164))))

(declare-fun b!5791459 () Bool)

(assert (=> b!5791459 (= e!3556645 (store ((as const (Array Context!10374 Bool)) false) (ite (or c!1025338 c!1025342) (Context!10375 Nil!63584) (Context!10375 call!451041)) true))))

(declare-fun d!1824469 () Bool)

(declare-fun c!1025554 () Bool)

(assert (=> d!1824469 (= c!1025554 (and ((_ is ElementMatch!15803) (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292))))) (= (c!1025273 (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292))))) (h!70034 s!2326))))))

(assert (=> d!1824469 (= (derivationStepZipperDown!1141 (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292)))) (ite (or c!1025338 c!1025342) (Context!10375 Nil!63584) (Context!10375 call!451041)) (h!70034 s!2326)) e!3556645)))

(declare-fun bm!451161 () Bool)

(assert (=> bm!451161 (= call!451165 call!451167)))

(declare-fun b!5791460 () Bool)

(assert (=> b!5791460 (= e!3556643 (nullable!5834 (regOne!32118 (ite c!1025338 (regOne!32119 r!7292) (ite c!1025342 (regTwo!32118 r!7292) (ite c!1025340 (regOne!32118 r!7292) (reg!16132 r!7292)))))))))

(declare-fun bm!451162 () Bool)

(assert (=> bm!451162 (= call!451163 call!451166)))

(declare-fun b!5791461 () Bool)

(assert (=> b!5791461 (= e!3556646 ((as const (Array Context!10374 Bool)) false))))

(declare-fun b!5791462 () Bool)

(assert (=> b!5791462 (= e!3556646 call!451162)))

(assert (= (and d!1824469 c!1025554) b!5791459))

(assert (= (and d!1824469 (not c!1025554)) b!5791450))

(assert (= (and b!5791450 c!1025551) b!5791458))

(assert (= (and b!5791450 (not c!1025551)) b!5791453))

(assert (= (and b!5791453 res!2443569) b!5791460))

(assert (= (and b!5791453 c!1025555) b!5791457))

(assert (= (and b!5791453 (not c!1025555)) b!5791452))

(assert (= (and b!5791452 c!1025553) b!5791455))

(assert (= (and b!5791452 (not c!1025553)) b!5791451))

(assert (= (and b!5791451 c!1025552) b!5791462))

(assert (= (and b!5791451 (not c!1025552)) b!5791461))

(assert (= (or b!5791455 b!5791462) bm!451161))

(assert (= (or b!5791455 b!5791462) bm!451160))

(assert (= (or b!5791457 bm!451161) bm!451157))

(assert (= (or b!5791457 bm!451160) bm!451162))

(assert (= (or b!5791458 b!5791457) bm!451158))

(assert (= (or b!5791458 bm!451162) bm!451159))

(declare-fun m!6734712 () Bool)

(assert (=> bm!451157 m!6734712))

(declare-fun m!6734714 () Bool)

(assert (=> bm!451158 m!6734714))

(declare-fun m!6734716 () Bool)

(assert (=> b!5791459 m!6734716))

(declare-fun m!6734718 () Bool)

(assert (=> bm!451159 m!6734718))

(declare-fun m!6734720 () Bool)

(assert (=> b!5791460 m!6734720))

(assert (=> bm!451035 d!1824469))

(declare-fun d!1824473 () Bool)

(assert (=> d!1824473 (= (isEmptyExpr!1282 lt!2297042) ((_ is EmptyExpr!15803) lt!2297042))))

(assert (=> b!5790562 d!1824473))

(assert (=> d!1824265 d!1824239))

(assert (=> d!1824265 d!1824207))

(declare-fun d!1824475 () Bool)

(assert (=> d!1824475 (= ($colon$colon!1789 (exprs!5687 (Context!10375 Nil!63584)) (ite (or c!1025342 c!1025340) (regTwo!32118 r!7292) r!7292)) (Cons!63584 (ite (or c!1025342 c!1025340) (regTwo!32118 r!7292) r!7292) (exprs!5687 (Context!10375 Nil!63584))))))

(assert (=> bm!451033 d!1824475))

(declare-fun d!1824477 () Bool)

(assert (=> d!1824477 (= (isConcat!805 lt!2297042) ((_ is Concat!24648) lt!2297042))))

(assert (=> b!5790560 d!1824477))

(declare-fun b!5791463 () Bool)

(declare-fun e!3556656 () Bool)

(declare-fun lt!2297122 () Bool)

(declare-fun call!451168 () Bool)

(assert (=> b!5791463 (= e!3556656 (= lt!2297122 call!451168))))

(declare-fun b!5791464 () Bool)

(declare-fun e!3556657 () Bool)

(assert (=> b!5791464 (= e!3556656 e!3556657)))

(declare-fun c!1025557 () Bool)

(assert (=> b!5791464 (= c!1025557 ((_ is EmptyLang!15803) (derivativeStep!4578 r!7292 (head!12231 s!2326))))))

(declare-fun b!5791465 () Bool)

(declare-fun e!3556651 () Bool)

(assert (=> b!5791465 (= e!3556651 (matchR!7988 (derivativeStep!4578 (derivativeStep!4578 r!7292 (head!12231 s!2326)) (head!12231 (tail!11326 s!2326))) (tail!11326 (tail!11326 s!2326))))))

(declare-fun b!5791466 () Bool)

(declare-fun res!2443578 () Bool)

(declare-fun e!3556653 () Bool)

(assert (=> b!5791466 (=> res!2443578 e!3556653)))

(assert (=> b!5791466 (= res!2443578 (not ((_ is ElementMatch!15803) (derivativeStep!4578 r!7292 (head!12231 s!2326)))))))

(assert (=> b!5791466 (= e!3556657 e!3556653)))

(declare-fun b!5791468 () Bool)

(declare-fun e!3556654 () Bool)

(assert (=> b!5791468 (= e!3556653 e!3556654)))

(declare-fun res!2443575 () Bool)

(assert (=> b!5791468 (=> (not res!2443575) (not e!3556654))))

(assert (=> b!5791468 (= res!2443575 (not lt!2297122))))

(declare-fun b!5791469 () Bool)

(assert (=> b!5791469 (= e!3556657 (not lt!2297122))))

(declare-fun b!5791470 () Bool)

(declare-fun e!3556655 () Bool)

(assert (=> b!5791470 (= e!3556654 e!3556655)))

(declare-fun res!2443579 () Bool)

(assert (=> b!5791470 (=> res!2443579 e!3556655)))

(assert (=> b!5791470 (= res!2443579 call!451168)))

(declare-fun b!5791471 () Bool)

(declare-fun res!2443577 () Bool)

(assert (=> b!5791471 (=> res!2443577 e!3556653)))

(declare-fun e!3556652 () Bool)

(assert (=> b!5791471 (= res!2443577 e!3556652)))

(declare-fun res!2443573 () Bool)

(assert (=> b!5791471 (=> (not res!2443573) (not e!3556652))))

(assert (=> b!5791471 (= res!2443573 lt!2297122)))

(declare-fun b!5791472 () Bool)

(assert (=> b!5791472 (= e!3556652 (= (head!12231 (tail!11326 s!2326)) (c!1025273 (derivativeStep!4578 r!7292 (head!12231 s!2326)))))))

(declare-fun bm!451163 () Bool)

(assert (=> bm!451163 (= call!451168 (isEmpty!35492 (tail!11326 s!2326)))))

(declare-fun b!5791467 () Bool)

(declare-fun res!2443574 () Bool)

(assert (=> b!5791467 (=> (not res!2443574) (not e!3556652))))

(assert (=> b!5791467 (= res!2443574 (not call!451168))))

(declare-fun d!1824479 () Bool)

(assert (=> d!1824479 e!3556656))

(declare-fun c!1025556 () Bool)

(assert (=> d!1824479 (= c!1025556 ((_ is EmptyExpr!15803) (derivativeStep!4578 r!7292 (head!12231 s!2326))))))

(assert (=> d!1824479 (= lt!2297122 e!3556651)))

(declare-fun c!1025558 () Bool)

(assert (=> d!1824479 (= c!1025558 (isEmpty!35492 (tail!11326 s!2326)))))

(assert (=> d!1824479 (validRegex!7539 (derivativeStep!4578 r!7292 (head!12231 s!2326)))))

(assert (=> d!1824479 (= (matchR!7988 (derivativeStep!4578 r!7292 (head!12231 s!2326)) (tail!11326 s!2326)) lt!2297122)))

(declare-fun b!5791473 () Bool)

(declare-fun res!2443576 () Bool)

(assert (=> b!5791473 (=> (not res!2443576) (not e!3556652))))

(assert (=> b!5791473 (= res!2443576 (isEmpty!35492 (tail!11326 (tail!11326 s!2326))))))

(declare-fun b!5791474 () Bool)

(assert (=> b!5791474 (= e!3556655 (not (= (head!12231 (tail!11326 s!2326)) (c!1025273 (derivativeStep!4578 r!7292 (head!12231 s!2326))))))))

(declare-fun b!5791475 () Bool)

(declare-fun res!2443572 () Bool)

(assert (=> b!5791475 (=> res!2443572 e!3556655)))

(assert (=> b!5791475 (= res!2443572 (not (isEmpty!35492 (tail!11326 (tail!11326 s!2326)))))))

(declare-fun b!5791476 () Bool)

(assert (=> b!5791476 (= e!3556651 (nullable!5834 (derivativeStep!4578 r!7292 (head!12231 s!2326))))))

(assert (= (and d!1824479 c!1025558) b!5791476))

(assert (= (and d!1824479 (not c!1025558)) b!5791465))

(assert (= (and d!1824479 c!1025556) b!5791463))

(assert (= (and d!1824479 (not c!1025556)) b!5791464))

(assert (= (and b!5791464 c!1025557) b!5791469))

(assert (= (and b!5791464 (not c!1025557)) b!5791466))

(assert (= (and b!5791466 (not res!2443578)) b!5791471))

(assert (= (and b!5791471 res!2443573) b!5791467))

(assert (= (and b!5791467 res!2443574) b!5791473))

(assert (= (and b!5791473 res!2443576) b!5791472))

(assert (= (and b!5791471 (not res!2443577)) b!5791468))

(assert (= (and b!5791468 res!2443575) b!5791470))

(assert (= (and b!5791470 (not res!2443579)) b!5791475))

(assert (= (and b!5791475 (not res!2443572)) b!5791474))

(assert (= (or b!5791463 b!5791467 b!5791470) bm!451163))

(assert (=> b!5791465 m!6734214))

(declare-fun m!6734722 () Bool)

(assert (=> b!5791465 m!6734722))

(assert (=> b!5791465 m!6734256))

(assert (=> b!5791465 m!6734722))

(declare-fun m!6734724 () Bool)

(assert (=> b!5791465 m!6734724))

(assert (=> b!5791465 m!6734214))

(declare-fun m!6734726 () Bool)

(assert (=> b!5791465 m!6734726))

(assert (=> b!5791465 m!6734724))

(assert (=> b!5791465 m!6734726))

(declare-fun m!6734728 () Bool)

(assert (=> b!5791465 m!6734728))

(assert (=> b!5791475 m!6734214))

(assert (=> b!5791475 m!6734726))

(assert (=> b!5791475 m!6734726))

(declare-fun m!6734730 () Bool)

(assert (=> b!5791475 m!6734730))

(assert (=> b!5791476 m!6734256))

(declare-fun m!6734732 () Bool)

(assert (=> b!5791476 m!6734732))

(assert (=> bm!451163 m!6734214))

(assert (=> bm!451163 m!6734260))

(assert (=> d!1824479 m!6734214))

(assert (=> d!1824479 m!6734260))

(assert (=> d!1824479 m!6734256))

(declare-fun m!6734734 () Bool)

(assert (=> d!1824479 m!6734734))

(assert (=> b!5791472 m!6734214))

(assert (=> b!5791472 m!6734722))

(assert (=> b!5791474 m!6734214))

(assert (=> b!5791474 m!6734722))

(assert (=> b!5791473 m!6734214))

(assert (=> b!5791473 m!6734726))

(assert (=> b!5791473 m!6734726))

(assert (=> b!5791473 m!6734730))

(assert (=> b!5790924 d!1824479))

(declare-fun bm!451172 () Bool)

(declare-fun call!451178 () Regex!15803)

(declare-fun call!451180 () Regex!15803)

(assert (=> bm!451172 (= call!451178 call!451180)))

(declare-fun b!5791513 () Bool)

(declare-fun c!1025576 () Bool)

(assert (=> b!5791513 (= c!1025576 (nullable!5834 (regOne!32118 r!7292)))))

(declare-fun e!3556677 () Regex!15803)

(declare-fun e!3556680 () Regex!15803)

(assert (=> b!5791513 (= e!3556677 e!3556680)))

(declare-fun bm!451173 () Bool)

(declare-fun c!1025574 () Bool)

(declare-fun c!1025575 () Bool)

(assert (=> bm!451173 (= call!451180 (derivativeStep!4578 (ite c!1025574 (regTwo!32119 r!7292) (ite c!1025575 (reg!16132 r!7292) (ite c!1025576 (regTwo!32118 r!7292) (regOne!32118 r!7292)))) (head!12231 s!2326)))))

(declare-fun call!451179 () Regex!15803)

(declare-fun b!5791514 () Bool)

(declare-fun call!451177 () Regex!15803)

(assert (=> b!5791514 (= e!3556680 (Union!15803 (Concat!24648 call!451177 (regTwo!32118 r!7292)) call!451179))))

(declare-fun b!5791515 () Bool)

(assert (=> b!5791515 (= c!1025574 ((_ is Union!15803) r!7292))))

(declare-fun e!3556676 () Regex!15803)

(declare-fun e!3556678 () Regex!15803)

(assert (=> b!5791515 (= e!3556676 e!3556678)))

(declare-fun b!5791516 () Bool)

(assert (=> b!5791516 (= e!3556678 (Union!15803 call!451177 call!451180))))

(declare-fun b!5791517 () Bool)

(assert (=> b!5791517 (= e!3556680 (Union!15803 (Concat!24648 call!451179 (regTwo!32118 r!7292)) EmptyLang!15803))))

(declare-fun b!5791518 () Bool)

(assert (=> b!5791518 (= e!3556676 (ite (= (head!12231 s!2326) (c!1025273 r!7292)) EmptyExpr!15803 EmptyLang!15803))))

(declare-fun b!5791519 () Bool)

(assert (=> b!5791519 (= e!3556678 e!3556677)))

(assert (=> b!5791519 (= c!1025575 ((_ is Star!15803) r!7292))))

(declare-fun b!5791520 () Bool)

(declare-fun e!3556679 () Regex!15803)

(assert (=> b!5791520 (= e!3556679 e!3556676)))

(declare-fun c!1025573 () Bool)

(assert (=> b!5791520 (= c!1025573 ((_ is ElementMatch!15803) r!7292))))

(declare-fun bm!451175 () Bool)

(assert (=> bm!451175 (= call!451177 (derivativeStep!4578 (ite c!1025574 (regOne!32119 r!7292) (regOne!32118 r!7292)) (head!12231 s!2326)))))

(declare-fun b!5791521 () Bool)

(assert (=> b!5791521 (= e!3556677 (Concat!24648 call!451178 r!7292))))

(declare-fun b!5791522 () Bool)

(assert (=> b!5791522 (= e!3556679 EmptyLang!15803)))

(declare-fun d!1824481 () Bool)

(declare-fun lt!2297129 () Regex!15803)

(assert (=> d!1824481 (validRegex!7539 lt!2297129)))

(assert (=> d!1824481 (= lt!2297129 e!3556679)))

(declare-fun c!1025577 () Bool)

(assert (=> d!1824481 (= c!1025577 (or ((_ is EmptyExpr!15803) r!7292) ((_ is EmptyLang!15803) r!7292)))))

(assert (=> d!1824481 (validRegex!7539 r!7292)))

(assert (=> d!1824481 (= (derivativeStep!4578 r!7292 (head!12231 s!2326)) lt!2297129)))

(declare-fun bm!451174 () Bool)

(assert (=> bm!451174 (= call!451179 call!451178)))

(assert (= (and d!1824481 c!1025577) b!5791522))

(assert (= (and d!1824481 (not c!1025577)) b!5791520))

(assert (= (and b!5791520 c!1025573) b!5791518))

(assert (= (and b!5791520 (not c!1025573)) b!5791515))

(assert (= (and b!5791515 c!1025574) b!5791516))

(assert (= (and b!5791515 (not c!1025574)) b!5791519))

(assert (= (and b!5791519 c!1025575) b!5791521))

(assert (= (and b!5791519 (not c!1025575)) b!5791513))

(assert (= (and b!5791513 c!1025576) b!5791514))

(assert (= (and b!5791513 (not c!1025576)) b!5791517))

(assert (= (or b!5791514 b!5791517) bm!451174))

(assert (= (or b!5791521 bm!451174) bm!451172))

(assert (= (or b!5791516 bm!451172) bm!451173))

(assert (= (or b!5791516 b!5791514) bm!451175))

(assert (=> b!5791513 m!6734054))

(assert (=> bm!451173 m!6734210))

(declare-fun m!6734764 () Bool)

(assert (=> bm!451173 m!6734764))

(assert (=> bm!451175 m!6734210))

(declare-fun m!6734766 () Bool)

(assert (=> bm!451175 m!6734766))

(declare-fun m!6734768 () Bool)

(assert (=> d!1824481 m!6734768))

(assert (=> d!1824481 m!6733924))

(assert (=> b!5790924 d!1824481))

(assert (=> b!5790924 d!1824309))

(assert (=> b!5790924 d!1824319))

(declare-fun b!5791523 () Bool)

(declare-fun e!3556687 () Bool)

(declare-fun call!451183 () Bool)

(assert (=> b!5791523 (= e!3556687 call!451183)))

(declare-fun b!5791524 () Bool)

(declare-fun res!2443590 () Bool)

(declare-fun e!3556681 () Bool)

(assert (=> b!5791524 (=> (not res!2443590) (not e!3556681))))

(declare-fun call!451181 () Bool)

(assert (=> b!5791524 (= res!2443590 call!451181)))

(declare-fun e!3556683 () Bool)

(assert (=> b!5791524 (= e!3556683 e!3556681)))

(declare-fun b!5791526 () Bool)

(declare-fun e!3556686 () Bool)

(declare-fun e!3556684 () Bool)

(assert (=> b!5791526 (= e!3556686 e!3556684)))

(declare-fun res!2443588 () Bool)

(assert (=> b!5791526 (=> (not res!2443588) (not e!3556684))))

(assert (=> b!5791526 (= res!2443588 call!451181)))

(declare-fun bm!451176 () Bool)

(declare-fun call!451182 () Bool)

(declare-fun c!1025578 () Bool)

(assert (=> bm!451176 (= call!451182 (validRegex!7539 (ite c!1025578 (regTwo!32119 lt!2297027) (regTwo!32118 lt!2297027))))))

(declare-fun c!1025579 () Bool)

(declare-fun bm!451177 () Bool)

(assert (=> bm!451177 (= call!451183 (validRegex!7539 (ite c!1025579 (reg!16132 lt!2297027) (ite c!1025578 (regOne!32119 lt!2297027) (regOne!32118 lt!2297027)))))))

(declare-fun b!5791527 () Bool)

(declare-fun res!2443591 () Bool)

(assert (=> b!5791527 (=> res!2443591 e!3556686)))

(assert (=> b!5791527 (= res!2443591 (not ((_ is Concat!24648) lt!2297027)))))

(assert (=> b!5791527 (= e!3556683 e!3556686)))

(declare-fun b!5791528 () Bool)

(declare-fun e!3556682 () Bool)

(assert (=> b!5791528 (= e!3556682 e!3556687)))

(declare-fun res!2443589 () Bool)

(assert (=> b!5791528 (= res!2443589 (not (nullable!5834 (reg!16132 lt!2297027))))))

(assert (=> b!5791528 (=> (not res!2443589) (not e!3556687))))

(declare-fun b!5791529 () Bool)

(assert (=> b!5791529 (= e!3556684 call!451182)))

(declare-fun b!5791530 () Bool)

(declare-fun e!3556685 () Bool)

(assert (=> b!5791530 (= e!3556685 e!3556682)))

(assert (=> b!5791530 (= c!1025579 ((_ is Star!15803) lt!2297027))))

(declare-fun d!1824487 () Bool)

(declare-fun res!2443592 () Bool)

(assert (=> d!1824487 (=> res!2443592 e!3556685)))

(assert (=> d!1824487 (= res!2443592 ((_ is ElementMatch!15803) lt!2297027))))

(assert (=> d!1824487 (= (validRegex!7539 lt!2297027) e!3556685)))

(declare-fun b!5791525 () Bool)

(assert (=> b!5791525 (= e!3556681 call!451182)))

(declare-fun b!5791531 () Bool)

(assert (=> b!5791531 (= e!3556682 e!3556683)))

(assert (=> b!5791531 (= c!1025578 ((_ is Union!15803) lt!2297027))))

(declare-fun bm!451178 () Bool)

(assert (=> bm!451178 (= call!451181 call!451183)))

(assert (= (and d!1824487 (not res!2443592)) b!5791530))

(assert (= (and b!5791530 c!1025579) b!5791528))

(assert (= (and b!5791530 (not c!1025579)) b!5791531))

(assert (= (and b!5791528 res!2443589) b!5791523))

(assert (= (and b!5791531 c!1025578) b!5791524))

(assert (= (and b!5791531 (not c!1025578)) b!5791527))

(assert (= (and b!5791524 res!2443590) b!5791525))

(assert (= (and b!5791527 (not res!2443591)) b!5791526))

(assert (= (and b!5791526 res!2443588) b!5791529))

(assert (= (or b!5791525 b!5791529) bm!451176))

(assert (= (or b!5791524 b!5791526) bm!451178))

(assert (= (or b!5791523 bm!451178) bm!451177))

(declare-fun m!6734770 () Bool)

(assert (=> bm!451176 m!6734770))

(declare-fun m!6734772 () Bool)

(assert (=> bm!451177 m!6734772))

(declare-fun m!6734774 () Bool)

(assert (=> b!5791528 m!6734774))

(assert (=> d!1824171 d!1824487))

(declare-fun d!1824489 () Bool)

(declare-fun res!2443593 () Bool)

(declare-fun e!3556688 () Bool)

(assert (=> d!1824489 (=> res!2443593 e!3556688)))

(assert (=> d!1824489 (= res!2443593 ((_ is Nil!63584) (unfocusZipperList!1231 zl!343)))))

(assert (=> d!1824489 (= (forall!14916 (unfocusZipperList!1231 zl!343) lambda!315769) e!3556688)))

(declare-fun b!5791532 () Bool)

(declare-fun e!3556689 () Bool)

(assert (=> b!5791532 (= e!3556688 e!3556689)))

(declare-fun res!2443594 () Bool)

(assert (=> b!5791532 (=> (not res!2443594) (not e!3556689))))

(assert (=> b!5791532 (= res!2443594 (dynLambda!24897 lambda!315769 (h!70032 (unfocusZipperList!1231 zl!343))))))

(declare-fun b!5791533 () Bool)

(assert (=> b!5791533 (= e!3556689 (forall!14916 (t!377053 (unfocusZipperList!1231 zl!343)) lambda!315769))))

(assert (= (and d!1824489 (not res!2443593)) b!5791532))

(assert (= (and b!5791532 res!2443594) b!5791533))

(declare-fun b_lambda!218323 () Bool)

(assert (=> (not b_lambda!218323) (not b!5791532)))

(declare-fun m!6734776 () Bool)

(assert (=> b!5791532 m!6734776))

(declare-fun m!6734778 () Bool)

(assert (=> b!5791533 m!6734778))

(assert (=> d!1824171 d!1824489))

(declare-fun d!1824491 () Bool)

(assert (=> d!1824491 (= (nullable!5834 (regOne!32118 (reg!16132 r!7292))) (nullableFct!1867 (regOne!32118 (reg!16132 r!7292))))))

(declare-fun bs!1367148 () Bool)

(assert (= bs!1367148 d!1824491))

(declare-fun m!6734780 () Bool)

(assert (=> bs!1367148 m!6734780))

(assert (=> b!5790492 d!1824491))

(declare-fun d!1824493 () Bool)

(assert (=> d!1824493 (= (isUnion!721 lt!2297027) ((_ is Union!15803) lt!2297027))))

(assert (=> b!5790446 d!1824493))

(declare-fun b!5791534 () Bool)

(declare-fun e!3556696 () Bool)

(declare-fun call!451186 () Bool)

(assert (=> b!5791534 (= e!3556696 call!451186)))

(declare-fun b!5791535 () Bool)

(declare-fun res!2443597 () Bool)

(declare-fun e!3556690 () Bool)

(assert (=> b!5791535 (=> (not res!2443597) (not e!3556690))))

(declare-fun call!451184 () Bool)

(assert (=> b!5791535 (= res!2443597 call!451184)))

(declare-fun e!3556692 () Bool)

(assert (=> b!5791535 (= e!3556692 e!3556690)))

(declare-fun b!5791537 () Bool)

(declare-fun e!3556695 () Bool)

(declare-fun e!3556693 () Bool)

(assert (=> b!5791537 (= e!3556695 e!3556693)))

(declare-fun res!2443595 () Bool)

(assert (=> b!5791537 (=> (not res!2443595) (not e!3556693))))

(assert (=> b!5791537 (= res!2443595 call!451184)))

(declare-fun c!1025580 () Bool)

(declare-fun bm!451179 () Bool)

(declare-fun call!451185 () Bool)

(assert (=> bm!451179 (= call!451185 (validRegex!7539 (ite c!1025580 (regTwo!32119 (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292))) (regTwo!32118 (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292))))))))

(declare-fun c!1025581 () Bool)

(declare-fun bm!451180 () Bool)

(assert (=> bm!451180 (= call!451186 (validRegex!7539 (ite c!1025581 (reg!16132 (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292))) (ite c!1025580 (regOne!32119 (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292))) (regOne!32118 (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292)))))))))

(declare-fun b!5791538 () Bool)

(declare-fun res!2443598 () Bool)

(assert (=> b!5791538 (=> res!2443598 e!3556695)))

(assert (=> b!5791538 (= res!2443598 (not ((_ is Concat!24648) (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292)))))))

(assert (=> b!5791538 (= e!3556692 e!3556695)))

(declare-fun b!5791539 () Bool)

(declare-fun e!3556691 () Bool)

(assert (=> b!5791539 (= e!3556691 e!3556696)))

(declare-fun res!2443596 () Bool)

(assert (=> b!5791539 (= res!2443596 (not (nullable!5834 (reg!16132 (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292))))))))

(assert (=> b!5791539 (=> (not res!2443596) (not e!3556696))))

(declare-fun b!5791540 () Bool)

(assert (=> b!5791540 (= e!3556693 call!451185)))

(declare-fun b!5791541 () Bool)

(declare-fun e!3556694 () Bool)

(assert (=> b!5791541 (= e!3556694 e!3556691)))

(assert (=> b!5791541 (= c!1025581 ((_ is Star!15803) (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292))))))

(declare-fun d!1824497 () Bool)

(declare-fun res!2443599 () Bool)

(assert (=> d!1824497 (=> res!2443599 e!3556694)))

(assert (=> d!1824497 (= res!2443599 ((_ is ElementMatch!15803) (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292))))))

(assert (=> d!1824497 (= (validRegex!7539 (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292))) e!3556694)))

(declare-fun b!5791536 () Bool)

(assert (=> b!5791536 (= e!3556690 call!451185)))

(declare-fun b!5791542 () Bool)

(assert (=> b!5791542 (= e!3556691 e!3556692)))

(assert (=> b!5791542 (= c!1025580 ((_ is Union!15803) (ite c!1025361 (regTwo!32119 r!7292) (regTwo!32118 r!7292))))))

(declare-fun bm!451181 () Bool)

(assert (=> bm!451181 (= call!451184 call!451186)))

(assert (= (and d!1824497 (not res!2443599)) b!5791541))

(assert (= (and b!5791541 c!1025581) b!5791539))

(assert (= (and b!5791541 (not c!1025581)) b!5791542))

(assert (= (and b!5791539 res!2443596) b!5791534))

(assert (= (and b!5791542 c!1025580) b!5791535))

(assert (= (and b!5791542 (not c!1025580)) b!5791538))

(assert (= (and b!5791535 res!2443597) b!5791536))

(assert (= (and b!5791538 (not res!2443598)) b!5791537))

(assert (= (and b!5791537 res!2443595) b!5791540))

(assert (= (or b!5791536 b!5791540) bm!451179))

(assert (= (or b!5791535 b!5791537) bm!451181))

(assert (= (or b!5791534 bm!451181) bm!451180))

(declare-fun m!6734786 () Bool)

(assert (=> bm!451179 m!6734786))

(declare-fun m!6734788 () Bool)

(assert (=> bm!451180 m!6734788))

(declare-fun m!6734790 () Bool)

(assert (=> b!5791539 m!6734790))

(assert (=> bm!451046 d!1824497))

(assert (=> d!1824251 d!1824219))

(declare-fun bs!1367152 () Bool)

(declare-fun d!1824499 () Bool)

(assert (= bs!1367152 (and d!1824499 d!1824341)))

(declare-fun lambda!315866 () Int)

(assert (=> bs!1367152 (= lambda!315866 lambda!315843)))

(declare-fun bs!1367153 () Bool)

(assert (= bs!1367153 (and d!1824499 b!5791359)))

(assert (=> bs!1367153 (not (= lambda!315866 lambda!315861))))

(declare-fun bs!1367154 () Bool)

(assert (= bs!1367154 (and d!1824499 b!5790850)))

(assert (=> bs!1367154 (not (= lambda!315866 lambda!315829))))

(declare-fun bs!1367155 () Bool)

(assert (= bs!1367155 (and d!1824499 b!5790404)))

(assert (=> bs!1367155 (not (= lambda!315866 lambda!315760))))

(declare-fun bs!1367156 () Bool)

(assert (= bs!1367156 (and d!1824499 d!1824365)))

(assert (=> bs!1367156 (not (= lambda!315866 lambda!315852))))

(declare-fun bs!1367157 () Bool)

(assert (= bs!1367157 (and d!1824499 d!1824223)))

(assert (=> bs!1367157 (= lambda!315866 lambda!315797)))

(declare-fun bs!1367158 () Bool)

(assert (= bs!1367158 (and d!1824499 b!5791358)))

(assert (=> bs!1367158 (not (= lambda!315866 lambda!315862))))

(assert (=> bs!1367157 (not (= lambda!315866 lambda!315799))))

(declare-fun bs!1367159 () Bool)

(assert (= bs!1367159 (and d!1824499 b!5790849)))

(assert (=> bs!1367159 (not (= lambda!315866 lambda!315830))))

(declare-fun bs!1367160 () Bool)

(assert (= bs!1367160 (and d!1824499 d!1824251)))

(assert (=> bs!1367160 (= lambda!315866 lambda!315817)))

(declare-fun bs!1367161 () Bool)

(assert (= bs!1367161 (and d!1824499 d!1824227)))

(assert (=> bs!1367161 (= (= r!7292 (Star!15803 (reg!16132 r!7292))) (= lambda!315866 lambda!315809))))

(assert (=> bs!1367161 (not (= lambda!315866 lambda!315811))))

(assert (=> bs!1367156 (= (= r!7292 (Star!15803 (reg!16132 r!7292))) (= lambda!315866 lambda!315851))))

(assert (=> bs!1367152 (not (= lambda!315866 lambda!315844))))

(declare-fun bs!1367162 () Bool)

(assert (= bs!1367162 (and d!1824499 b!5791306)))

(assert (=> bs!1367162 (not (= lambda!315866 lambda!315859))))

(assert (=> bs!1367155 (not (= lambda!315866 lambda!315761))))

(assert (=> bs!1367155 (= lambda!315866 lambda!315759)))

(declare-fun bs!1367163 () Bool)

(assert (= bs!1367163 (and d!1824499 b!5791305)))

(assert (=> bs!1367163 (not (= lambda!315866 lambda!315860))))

(assert (=> d!1824499 true))

(assert (=> d!1824499 true))

(assert (=> d!1824499 true))

(assert (=> d!1824499 (= (isDefined!12515 (findConcatSeparation!2226 (reg!16132 r!7292) r!7292 Nil!63586 s!2326 s!2326)) (Exists!2903 lambda!315866))))

(assert (=> d!1824499 true))

(declare-fun _$89!1915 () Unit!156866)

(assert (=> d!1824499 (= (choose!43978 (reg!16132 r!7292) r!7292 s!2326) _$89!1915)))

(declare-fun bs!1367164 () Bool)

(assert (= bs!1367164 d!1824499))

(assert (=> bs!1367164 m!6733918))

(assert (=> bs!1367164 m!6733918))

(assert (=> bs!1367164 m!6733920))

(declare-fun m!6734824 () Bool)

(assert (=> bs!1367164 m!6734824))

(assert (=> d!1824251 d!1824499))

(assert (=> d!1824251 d!1824245))

(assert (=> d!1824251 d!1824315))

(declare-fun d!1824509 () Bool)

(assert (=> d!1824509 (= (Exists!2903 lambda!315817) (choose!43977 lambda!315817))))

(declare-fun bs!1367165 () Bool)

(assert (= bs!1367165 d!1824509))

(declare-fun m!6734826 () Bool)

(assert (=> bs!1367165 m!6734826))

(assert (=> d!1824251 d!1824509))

(declare-fun d!1824511 () Bool)

(assert (=> d!1824511 true))

(assert (=> d!1824511 true))

(declare-fun res!2443610 () Bool)

(assert (=> d!1824511 (= (choose!43977 lambda!315761) res!2443610)))

(assert (=> d!1824243 d!1824511))

(declare-fun d!1824513 () Bool)

(assert (=> d!1824513 true))

(declare-fun setRes!38932 () Bool)

(assert (=> d!1824513 setRes!38932))

(declare-fun condSetEmpty!38932 () Bool)

(declare-fun res!2443611 () (InoxSet Context!10374))

(assert (=> d!1824513 (= condSetEmpty!38932 (= res!2443611 ((as const (Array Context!10374 Bool)) false)))))

(assert (=> d!1824513 (= (choose!43968 z!1189 lambda!315762) res!2443611)))

(declare-fun setIsEmpty!38932 () Bool)

(assert (=> setIsEmpty!38932 setRes!38932))

(declare-fun tp!1597622 () Bool)

(declare-fun setElem!38932 () Context!10374)

(declare-fun setNonEmpty!38932 () Bool)

(declare-fun e!3556707 () Bool)

(assert (=> setNonEmpty!38932 (= setRes!38932 (and tp!1597622 (inv!82754 setElem!38932) e!3556707))))

(declare-fun setRest!38932 () (InoxSet Context!10374))

(assert (=> setNonEmpty!38932 (= res!2443611 ((_ map or) (store ((as const (Array Context!10374 Bool)) false) setElem!38932 true) setRest!38932))))

(declare-fun b!5791561 () Bool)

(declare-fun tp!1597621 () Bool)

(assert (=> b!5791561 (= e!3556707 tp!1597621)))

(assert (= (and d!1824513 condSetEmpty!38932) setIsEmpty!38932))

(assert (= (and d!1824513 (not condSetEmpty!38932)) setNonEmpty!38932))

(assert (= setNonEmpty!38932 b!5791561))

(declare-fun m!6734828 () Bool)

(assert (=> setNonEmpty!38932 m!6734828))

(assert (=> d!1824193 d!1824513))

(declare-fun d!1824515 () Bool)

(declare-fun c!1025586 () Bool)

(assert (=> d!1824515 (= c!1025586 (isEmpty!35492 (tail!11326 s!2326)))))

(declare-fun e!3556708 () Bool)

(assert (=> d!1824515 (= (matchZipper!1931 (derivationStepZipper!1872 lt!2297009 (head!12231 s!2326)) (tail!11326 s!2326)) e!3556708)))

(declare-fun b!5791562 () Bool)

(assert (=> b!5791562 (= e!3556708 (nullableZipper!1718 (derivationStepZipper!1872 lt!2297009 (head!12231 s!2326))))))

(declare-fun b!5791563 () Bool)

(assert (=> b!5791563 (= e!3556708 (matchZipper!1931 (derivationStepZipper!1872 (derivationStepZipper!1872 lt!2297009 (head!12231 s!2326)) (head!12231 (tail!11326 s!2326))) (tail!11326 (tail!11326 s!2326))))))

(assert (= (and d!1824515 c!1025586) b!5791562))

(assert (= (and d!1824515 (not c!1025586)) b!5791563))

(assert (=> d!1824515 m!6734214))

(assert (=> d!1824515 m!6734260))

(assert (=> b!5791562 m!6734212))

(declare-fun m!6734830 () Bool)

(assert (=> b!5791562 m!6734830))

(assert (=> b!5791563 m!6734214))

(assert (=> b!5791563 m!6734722))

(assert (=> b!5791563 m!6734212))

(assert (=> b!5791563 m!6734722))

(declare-fun m!6734832 () Bool)

(assert (=> b!5791563 m!6734832))

(assert (=> b!5791563 m!6734214))

(assert (=> b!5791563 m!6734726))

(assert (=> b!5791563 m!6734832))

(assert (=> b!5791563 m!6734726))

(declare-fun m!6734834 () Bool)

(assert (=> b!5791563 m!6734834))

(assert (=> b!5790763 d!1824515))

(declare-fun bs!1367166 () Bool)

(declare-fun d!1824517 () Bool)

(assert (= bs!1367166 (and d!1824517 b!5790413)))

(declare-fun lambda!315867 () Int)

(assert (=> bs!1367166 (= (= (head!12231 s!2326) (h!70034 s!2326)) (= lambda!315867 lambda!315762))))

(declare-fun bs!1367167 () Bool)

(assert (= bs!1367167 (and d!1824517 d!1824205)))

(assert (=> bs!1367167 (= (= (head!12231 s!2326) (h!70034 s!2326)) (= lambda!315867 lambda!315781))))

(declare-fun bs!1367168 () Bool)

(assert (= bs!1367168 (and d!1824517 d!1824259)))

(assert (=> bs!1367168 (= (= (head!12231 s!2326) (h!70034 s!2326)) (= lambda!315867 lambda!315818))))

(declare-fun bs!1367169 () Bool)

(assert (= bs!1367169 (and d!1824517 d!1824397)))

(assert (=> bs!1367169 (= (= (head!12231 s!2326) (head!12231 (t!377055 s!2326))) (= lambda!315867 lambda!315856))))

(assert (=> d!1824517 true))

(assert (=> d!1824517 (= (derivationStepZipper!1872 lt!2297009 (head!12231 s!2326)) (flatMap!1410 lt!2297009 lambda!315867))))

(declare-fun bs!1367170 () Bool)

(assert (= bs!1367170 d!1824517))

(declare-fun m!6734836 () Bool)

(assert (=> bs!1367170 m!6734836))

(assert (=> b!5790763 d!1824517))

(assert (=> b!5790763 d!1824309))

(assert (=> b!5790763 d!1824319))

(declare-fun bs!1367171 () Bool)

(declare-fun d!1824519 () Bool)

(assert (= bs!1367171 (and d!1824519 d!1824391)))

(declare-fun lambda!315868 () Int)

(assert (=> bs!1367171 (= lambda!315868 lambda!315855)))

(assert (=> d!1824519 (= (nullableZipper!1718 (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326))) (exists!2246 (derivationStepZipper!1872 lt!2297009 (h!70034 s!2326)) lambda!315868))))

(declare-fun bs!1367172 () Bool)

(assert (= bs!1367172 d!1824519))

(assert (=> bs!1367172 m!6733886))

(declare-fun m!6734838 () Bool)

(assert (=> bs!1367172 m!6734838))

(assert (=> b!5790766 d!1824519))

(declare-fun d!1824521 () Bool)

(assert (=> d!1824521 (= (isEmptyLang!1291 lt!2297027) ((_ is EmptyLang!15803) lt!2297027))))

(assert (=> b!5790448 d!1824521))

(declare-fun b!5791567 () Bool)

(declare-fun e!3556709 () Bool)

(declare-fun tp!1597623 () Bool)

(declare-fun tp!1597626 () Bool)

(assert (=> b!5791567 (= e!3556709 (and tp!1597623 tp!1597626))))

(declare-fun b!5791565 () Bool)

(declare-fun tp!1597625 () Bool)

(declare-fun tp!1597624 () Bool)

(assert (=> b!5791565 (= e!3556709 (and tp!1597625 tp!1597624))))

(assert (=> b!5790984 (= tp!1597529 e!3556709)))

(declare-fun b!5791566 () Bool)

(declare-fun tp!1597627 () Bool)

(assert (=> b!5791566 (= e!3556709 tp!1597627)))

(declare-fun b!5791564 () Bool)

(assert (=> b!5791564 (= e!3556709 tp_is_empty!40859)))

(assert (= (and b!5790984 ((_ is ElementMatch!15803) (reg!16132 (regTwo!32118 r!7292)))) b!5791564))

(assert (= (and b!5790984 ((_ is Concat!24648) (reg!16132 (regTwo!32118 r!7292)))) b!5791565))

(assert (= (and b!5790984 ((_ is Star!15803) (reg!16132 (regTwo!32118 r!7292)))) b!5791566))

(assert (= (and b!5790984 ((_ is Union!15803) (reg!16132 (regTwo!32118 r!7292)))) b!5791567))

(declare-fun b!5791573 () Bool)

(declare-fun e!3556712 () Bool)

(declare-fun tp!1597628 () Bool)

(declare-fun tp!1597631 () Bool)

(assert (=> b!5791573 (= e!3556712 (and tp!1597628 tp!1597631))))

(declare-fun b!5791571 () Bool)

(declare-fun tp!1597630 () Bool)

(declare-fun tp!1597629 () Bool)

(assert (=> b!5791571 (= e!3556712 (and tp!1597630 tp!1597629))))

(assert (=> b!5790983 (= tp!1597527 e!3556712)))

(declare-fun b!5791572 () Bool)

(declare-fun tp!1597632 () Bool)

(assert (=> b!5791572 (= e!3556712 tp!1597632)))

(declare-fun b!5791570 () Bool)

(assert (=> b!5791570 (= e!3556712 tp_is_empty!40859)))

(assert (= (and b!5790983 ((_ is ElementMatch!15803) (regOne!32118 (regTwo!32118 r!7292)))) b!5791570))

(assert (= (and b!5790983 ((_ is Concat!24648) (regOne!32118 (regTwo!32118 r!7292)))) b!5791571))

(assert (= (and b!5790983 ((_ is Star!15803) (regOne!32118 (regTwo!32118 r!7292)))) b!5791572))

(assert (= (and b!5790983 ((_ is Union!15803) (regOne!32118 (regTwo!32118 r!7292)))) b!5791573))

(declare-fun b!5791579 () Bool)

(declare-fun e!3556713 () Bool)

(declare-fun tp!1597633 () Bool)

(declare-fun tp!1597636 () Bool)

(assert (=> b!5791579 (= e!3556713 (and tp!1597633 tp!1597636))))

(declare-fun b!5791577 () Bool)

(declare-fun tp!1597635 () Bool)

(declare-fun tp!1597634 () Bool)

(assert (=> b!5791577 (= e!3556713 (and tp!1597635 tp!1597634))))

(assert (=> b!5790983 (= tp!1597526 e!3556713)))

(declare-fun b!5791578 () Bool)

(declare-fun tp!1597637 () Bool)

(assert (=> b!5791578 (= e!3556713 tp!1597637)))

(declare-fun b!5791576 () Bool)

(assert (=> b!5791576 (= e!3556713 tp_is_empty!40859)))

(assert (= (and b!5790983 ((_ is ElementMatch!15803) (regTwo!32118 (regTwo!32118 r!7292)))) b!5791576))

(assert (= (and b!5790983 ((_ is Concat!24648) (regTwo!32118 (regTwo!32118 r!7292)))) b!5791577))

(assert (= (and b!5790983 ((_ is Star!15803) (regTwo!32118 (regTwo!32118 r!7292)))) b!5791578))

(assert (= (and b!5790983 ((_ is Union!15803) (regTwo!32118 (regTwo!32118 r!7292)))) b!5791579))

(declare-fun b!5791583 () Bool)

(declare-fun e!3556714 () Bool)

(declare-fun tp!1597638 () Bool)

(declare-fun tp!1597641 () Bool)

(assert (=> b!5791583 (= e!3556714 (and tp!1597638 tp!1597641))))

(declare-fun b!5791581 () Bool)

(declare-fun tp!1597640 () Bool)

(declare-fun tp!1597639 () Bool)

(assert (=> b!5791581 (= e!3556714 (and tp!1597640 tp!1597639))))

(assert (=> b!5790985 (= tp!1597525 e!3556714)))

(declare-fun b!5791582 () Bool)

(declare-fun tp!1597642 () Bool)

(assert (=> b!5791582 (= e!3556714 tp!1597642)))

(declare-fun b!5791580 () Bool)

(assert (=> b!5791580 (= e!3556714 tp_is_empty!40859)))

(assert (= (and b!5790985 ((_ is ElementMatch!15803) (regOne!32119 (regTwo!32118 r!7292)))) b!5791580))

(assert (= (and b!5790985 ((_ is Concat!24648) (regOne!32119 (regTwo!32118 r!7292)))) b!5791581))

(assert (= (and b!5790985 ((_ is Star!15803) (regOne!32119 (regTwo!32118 r!7292)))) b!5791582))

(assert (= (and b!5790985 ((_ is Union!15803) (regOne!32119 (regTwo!32118 r!7292)))) b!5791583))

(declare-fun b!5791587 () Bool)

(declare-fun e!3556715 () Bool)

(declare-fun tp!1597643 () Bool)

(declare-fun tp!1597646 () Bool)

(assert (=> b!5791587 (= e!3556715 (and tp!1597643 tp!1597646))))

(declare-fun b!5791585 () Bool)

(declare-fun tp!1597645 () Bool)

(declare-fun tp!1597644 () Bool)

(assert (=> b!5791585 (= e!3556715 (and tp!1597645 tp!1597644))))

(assert (=> b!5790985 (= tp!1597528 e!3556715)))

(declare-fun b!5791586 () Bool)

(declare-fun tp!1597647 () Bool)

(assert (=> b!5791586 (= e!3556715 tp!1597647)))

(declare-fun b!5791584 () Bool)

(assert (=> b!5791584 (= e!3556715 tp_is_empty!40859)))

(assert (= (and b!5790985 ((_ is ElementMatch!15803) (regTwo!32119 (regTwo!32118 r!7292)))) b!5791584))

(assert (= (and b!5790985 ((_ is Concat!24648) (regTwo!32119 (regTwo!32118 r!7292)))) b!5791585))

(assert (= (and b!5790985 ((_ is Star!15803) (regTwo!32119 (regTwo!32118 r!7292)))) b!5791586))

(assert (= (and b!5790985 ((_ is Union!15803) (regTwo!32119 (regTwo!32118 r!7292)))) b!5791587))

(declare-fun b!5791591 () Bool)

(declare-fun e!3556716 () Bool)

(declare-fun tp!1597648 () Bool)

(declare-fun tp!1597651 () Bool)

(assert (=> b!5791591 (= e!3556716 (and tp!1597648 tp!1597651))))

(declare-fun b!5791589 () Bool)

(declare-fun tp!1597650 () Bool)

(declare-fun tp!1597649 () Bool)

(assert (=> b!5791589 (= e!3556716 (and tp!1597650 tp!1597649))))

(assert (=> b!5790976 (= tp!1597519 e!3556716)))

(declare-fun b!5791590 () Bool)

(declare-fun tp!1597652 () Bool)

(assert (=> b!5791590 (= e!3556716 tp!1597652)))

(declare-fun b!5791588 () Bool)

(assert (=> b!5791588 (= e!3556716 tp_is_empty!40859)))

(assert (= (and b!5790976 ((_ is ElementMatch!15803) (reg!16132 (reg!16132 r!7292)))) b!5791588))

(assert (= (and b!5790976 ((_ is Concat!24648) (reg!16132 (reg!16132 r!7292)))) b!5791589))

(assert (= (and b!5790976 ((_ is Star!15803) (reg!16132 (reg!16132 r!7292)))) b!5791590))

(assert (= (and b!5790976 ((_ is Union!15803) (reg!16132 (reg!16132 r!7292)))) b!5791591))

(declare-fun b!5791595 () Bool)

(declare-fun e!3556717 () Bool)

(declare-fun tp!1597653 () Bool)

(declare-fun tp!1597656 () Bool)

(assert (=> b!5791595 (= e!3556717 (and tp!1597653 tp!1597656))))

(declare-fun b!5791593 () Bool)

(declare-fun tp!1597655 () Bool)

(declare-fun tp!1597654 () Bool)

(assert (=> b!5791593 (= e!3556717 (and tp!1597655 tp!1597654))))

(assert (=> b!5790975 (= tp!1597517 e!3556717)))

(declare-fun b!5791594 () Bool)

(declare-fun tp!1597657 () Bool)

(assert (=> b!5791594 (= e!3556717 tp!1597657)))

(declare-fun b!5791592 () Bool)

(assert (=> b!5791592 (= e!3556717 tp_is_empty!40859)))

(assert (= (and b!5790975 ((_ is ElementMatch!15803) (regOne!32118 (reg!16132 r!7292)))) b!5791592))

(assert (= (and b!5790975 ((_ is Concat!24648) (regOne!32118 (reg!16132 r!7292)))) b!5791593))

(assert (= (and b!5790975 ((_ is Star!15803) (regOne!32118 (reg!16132 r!7292)))) b!5791594))

(assert (= (and b!5790975 ((_ is Union!15803) (regOne!32118 (reg!16132 r!7292)))) b!5791595))

(declare-fun b!5791599 () Bool)

(declare-fun e!3556718 () Bool)

(declare-fun tp!1597658 () Bool)

(declare-fun tp!1597661 () Bool)

(assert (=> b!5791599 (= e!3556718 (and tp!1597658 tp!1597661))))

(declare-fun b!5791597 () Bool)

(declare-fun tp!1597660 () Bool)

(declare-fun tp!1597659 () Bool)

(assert (=> b!5791597 (= e!3556718 (and tp!1597660 tp!1597659))))

(assert (=> b!5790975 (= tp!1597516 e!3556718)))

(declare-fun b!5791598 () Bool)

(declare-fun tp!1597662 () Bool)

(assert (=> b!5791598 (= e!3556718 tp!1597662)))

(declare-fun b!5791596 () Bool)

(assert (=> b!5791596 (= e!3556718 tp_is_empty!40859)))

(assert (= (and b!5790975 ((_ is ElementMatch!15803) (regTwo!32118 (reg!16132 r!7292)))) b!5791596))

(assert (= (and b!5790975 ((_ is Concat!24648) (regTwo!32118 (reg!16132 r!7292)))) b!5791597))

(assert (= (and b!5790975 ((_ is Star!15803) (regTwo!32118 (reg!16132 r!7292)))) b!5791598))

(assert (= (and b!5790975 ((_ is Union!15803) (regTwo!32118 (reg!16132 r!7292)))) b!5791599))

(declare-fun b!5791603 () Bool)

(declare-fun e!3556719 () Bool)

(declare-fun tp!1597663 () Bool)

(declare-fun tp!1597666 () Bool)

(assert (=> b!5791603 (= e!3556719 (and tp!1597663 tp!1597666))))

(declare-fun b!5791601 () Bool)

(declare-fun tp!1597665 () Bool)

(declare-fun tp!1597664 () Bool)

(assert (=> b!5791601 (= e!3556719 (and tp!1597665 tp!1597664))))

(assert (=> b!5790977 (= tp!1597515 e!3556719)))

(declare-fun b!5791602 () Bool)

(declare-fun tp!1597667 () Bool)

(assert (=> b!5791602 (= e!3556719 tp!1597667)))

(declare-fun b!5791600 () Bool)

(assert (=> b!5791600 (= e!3556719 tp_is_empty!40859)))

(assert (= (and b!5790977 ((_ is ElementMatch!15803) (regOne!32119 (reg!16132 r!7292)))) b!5791600))

(assert (= (and b!5790977 ((_ is Concat!24648) (regOne!32119 (reg!16132 r!7292)))) b!5791601))

(assert (= (and b!5790977 ((_ is Star!15803) (regOne!32119 (reg!16132 r!7292)))) b!5791602))

(assert (= (and b!5790977 ((_ is Union!15803) (regOne!32119 (reg!16132 r!7292)))) b!5791603))

(declare-fun b!5791607 () Bool)

(declare-fun e!3556720 () Bool)

(declare-fun tp!1597668 () Bool)

(declare-fun tp!1597671 () Bool)

(assert (=> b!5791607 (= e!3556720 (and tp!1597668 tp!1597671))))

(declare-fun b!5791605 () Bool)

(declare-fun tp!1597670 () Bool)

(declare-fun tp!1597669 () Bool)

(assert (=> b!5791605 (= e!3556720 (and tp!1597670 tp!1597669))))

(assert (=> b!5790977 (= tp!1597518 e!3556720)))

(declare-fun b!5791606 () Bool)

(declare-fun tp!1597672 () Bool)

(assert (=> b!5791606 (= e!3556720 tp!1597672)))

(declare-fun b!5791604 () Bool)

(assert (=> b!5791604 (= e!3556720 tp_is_empty!40859)))

(assert (= (and b!5790977 ((_ is ElementMatch!15803) (regTwo!32119 (reg!16132 r!7292)))) b!5791604))

(assert (= (and b!5790977 ((_ is Concat!24648) (regTwo!32119 (reg!16132 r!7292)))) b!5791605))

(assert (= (and b!5790977 ((_ is Star!15803) (regTwo!32119 (reg!16132 r!7292)))) b!5791606))

(assert (= (and b!5790977 ((_ is Union!15803) (regTwo!32119 (reg!16132 r!7292)))) b!5791607))

(declare-fun b!5791611 () Bool)

(declare-fun e!3556721 () Bool)

(declare-fun tp!1597673 () Bool)

(declare-fun tp!1597676 () Bool)

(assert (=> b!5791611 (= e!3556721 (and tp!1597673 tp!1597676))))

(declare-fun b!5791609 () Bool)

(declare-fun tp!1597675 () Bool)

(declare-fun tp!1597674 () Bool)

(assert (=> b!5791609 (= e!3556721 (and tp!1597675 tp!1597674))))

(assert (=> b!5790992 (= tp!1597535 e!3556721)))

(declare-fun b!5791610 () Bool)

(declare-fun tp!1597677 () Bool)

(assert (=> b!5791610 (= e!3556721 tp!1597677)))

(declare-fun b!5791608 () Bool)

(assert (=> b!5791608 (= e!3556721 tp_is_empty!40859)))

(assert (= (and b!5790992 ((_ is ElementMatch!15803) (regOne!32118 (regOne!32119 r!7292)))) b!5791608))

(assert (= (and b!5790992 ((_ is Concat!24648) (regOne!32118 (regOne!32119 r!7292)))) b!5791609))

(assert (= (and b!5790992 ((_ is Star!15803) (regOne!32118 (regOne!32119 r!7292)))) b!5791610))

(assert (= (and b!5790992 ((_ is Union!15803) (regOne!32118 (regOne!32119 r!7292)))) b!5791611))

(declare-fun b!5791615 () Bool)

(declare-fun e!3556722 () Bool)

(declare-fun tp!1597678 () Bool)

(declare-fun tp!1597681 () Bool)

(assert (=> b!5791615 (= e!3556722 (and tp!1597678 tp!1597681))))

(declare-fun b!5791613 () Bool)

(declare-fun tp!1597680 () Bool)

(declare-fun tp!1597679 () Bool)

(assert (=> b!5791613 (= e!3556722 (and tp!1597680 tp!1597679))))

(assert (=> b!5790992 (= tp!1597534 e!3556722)))

(declare-fun b!5791614 () Bool)

(declare-fun tp!1597682 () Bool)

(assert (=> b!5791614 (= e!3556722 tp!1597682)))

(declare-fun b!5791612 () Bool)

(assert (=> b!5791612 (= e!3556722 tp_is_empty!40859)))

(assert (= (and b!5790992 ((_ is ElementMatch!15803) (regTwo!32118 (regOne!32119 r!7292)))) b!5791612))

(assert (= (and b!5790992 ((_ is Concat!24648) (regTwo!32118 (regOne!32119 r!7292)))) b!5791613))

(assert (= (and b!5790992 ((_ is Star!15803) (regTwo!32118 (regOne!32119 r!7292)))) b!5791614))

(assert (= (and b!5790992 ((_ is Union!15803) (regTwo!32118 (regOne!32119 r!7292)))) b!5791615))

(declare-fun b!5791619 () Bool)

(declare-fun e!3556723 () Bool)

(declare-fun tp!1597683 () Bool)

(declare-fun tp!1597686 () Bool)

(assert (=> b!5791619 (= e!3556723 (and tp!1597683 tp!1597686))))

(declare-fun b!5791617 () Bool)

(declare-fun tp!1597685 () Bool)

(declare-fun tp!1597684 () Bool)

(assert (=> b!5791617 (= e!3556723 (and tp!1597685 tp!1597684))))

(assert (=> b!5790993 (= tp!1597537 e!3556723)))

(declare-fun b!5791618 () Bool)

(declare-fun tp!1597687 () Bool)

(assert (=> b!5791618 (= e!3556723 tp!1597687)))

(declare-fun b!5791616 () Bool)

(assert (=> b!5791616 (= e!3556723 tp_is_empty!40859)))

(assert (= (and b!5790993 ((_ is ElementMatch!15803) (reg!16132 (regOne!32119 r!7292)))) b!5791616))

(assert (= (and b!5790993 ((_ is Concat!24648) (reg!16132 (regOne!32119 r!7292)))) b!5791617))

(assert (= (and b!5790993 ((_ is Star!15803) (reg!16132 (regOne!32119 r!7292)))) b!5791618))

(assert (= (and b!5790993 ((_ is Union!15803) (reg!16132 (regOne!32119 r!7292)))) b!5791619))

(declare-fun b!5791623 () Bool)

(declare-fun e!3556724 () Bool)

(declare-fun tp!1597688 () Bool)

(declare-fun tp!1597691 () Bool)

(assert (=> b!5791623 (= e!3556724 (and tp!1597688 tp!1597691))))

(declare-fun b!5791621 () Bool)

(declare-fun tp!1597690 () Bool)

(declare-fun tp!1597689 () Bool)

(assert (=> b!5791621 (= e!3556724 (and tp!1597690 tp!1597689))))

(assert (=> b!5790994 (= tp!1597533 e!3556724)))

(declare-fun b!5791622 () Bool)

(declare-fun tp!1597692 () Bool)

(assert (=> b!5791622 (= e!3556724 tp!1597692)))

(declare-fun b!5791620 () Bool)

(assert (=> b!5791620 (= e!3556724 tp_is_empty!40859)))

(assert (= (and b!5790994 ((_ is ElementMatch!15803) (regOne!32119 (regOne!32119 r!7292)))) b!5791620))

(assert (= (and b!5790994 ((_ is Concat!24648) (regOne!32119 (regOne!32119 r!7292)))) b!5791621))

(assert (= (and b!5790994 ((_ is Star!15803) (regOne!32119 (regOne!32119 r!7292)))) b!5791622))

(assert (= (and b!5790994 ((_ is Union!15803) (regOne!32119 (regOne!32119 r!7292)))) b!5791623))

(declare-fun b!5791627 () Bool)

(declare-fun e!3556725 () Bool)

(declare-fun tp!1597693 () Bool)

(declare-fun tp!1597696 () Bool)

(assert (=> b!5791627 (= e!3556725 (and tp!1597693 tp!1597696))))

(declare-fun b!5791625 () Bool)

(declare-fun tp!1597695 () Bool)

(declare-fun tp!1597694 () Bool)

(assert (=> b!5791625 (= e!3556725 (and tp!1597695 tp!1597694))))

(assert (=> b!5790994 (= tp!1597536 e!3556725)))

(declare-fun b!5791626 () Bool)

(declare-fun tp!1597697 () Bool)

(assert (=> b!5791626 (= e!3556725 tp!1597697)))

(declare-fun b!5791624 () Bool)

(assert (=> b!5791624 (= e!3556725 tp_is_empty!40859)))

(assert (= (and b!5790994 ((_ is ElementMatch!15803) (regTwo!32119 (regOne!32119 r!7292)))) b!5791624))

(assert (= (and b!5790994 ((_ is Concat!24648) (regTwo!32119 (regOne!32119 r!7292)))) b!5791625))

(assert (= (and b!5790994 ((_ is Star!15803) (regTwo!32119 (regOne!32119 r!7292)))) b!5791626))

(assert (= (and b!5790994 ((_ is Union!15803) (regTwo!32119 (regOne!32119 r!7292)))) b!5791627))

(declare-fun b!5791628 () Bool)

(declare-fun e!3556726 () Bool)

(declare-fun tp!1597698 () Bool)

(declare-fun tp!1597699 () Bool)

(assert (=> b!5791628 (= e!3556726 (and tp!1597698 tp!1597699))))

(assert (=> b!5791003 (= tp!1597547 e!3556726)))

(assert (= (and b!5791003 ((_ is Cons!63584) (exprs!5687 setElem!38925))) b!5791628))

(declare-fun condSetEmpty!38933 () Bool)

(assert (=> setNonEmpty!38925 (= condSetEmpty!38933 (= setRest!38925 ((as const (Array Context!10374 Bool)) false)))))

(declare-fun setRes!38933 () Bool)

(assert (=> setNonEmpty!38925 (= tp!1597548 setRes!38933)))

(declare-fun setIsEmpty!38933 () Bool)

(assert (=> setIsEmpty!38933 setRes!38933))

(declare-fun setElem!38933 () Context!10374)

(declare-fun tp!1597701 () Bool)

(declare-fun e!3556727 () Bool)

(declare-fun setNonEmpty!38933 () Bool)

(assert (=> setNonEmpty!38933 (= setRes!38933 (and tp!1597701 (inv!82754 setElem!38933) e!3556727))))

(declare-fun setRest!38933 () (InoxSet Context!10374))

(assert (=> setNonEmpty!38933 (= setRest!38925 ((_ map or) (store ((as const (Array Context!10374 Bool)) false) setElem!38933 true) setRest!38933))))

(declare-fun b!5791629 () Bool)

(declare-fun tp!1597700 () Bool)

(assert (=> b!5791629 (= e!3556727 tp!1597700)))

(assert (= (and setNonEmpty!38925 condSetEmpty!38933) setIsEmpty!38933))

(assert (= (and setNonEmpty!38925 (not condSetEmpty!38933)) setNonEmpty!38933))

(assert (= setNonEmpty!38933 b!5791629))

(declare-fun m!6734840 () Bool)

(assert (=> setNonEmpty!38933 m!6734840))

(declare-fun b!5791633 () Bool)

(declare-fun e!3556728 () Bool)

(declare-fun tp!1597702 () Bool)

(declare-fun tp!1597705 () Bool)

(assert (=> b!5791633 (= e!3556728 (and tp!1597702 tp!1597705))))

(declare-fun b!5791631 () Bool)

(declare-fun tp!1597704 () Bool)

(declare-fun tp!1597703 () Bool)

(assert (=> b!5791631 (= e!3556728 (and tp!1597704 tp!1597703))))

(assert (=> b!5790979 (= tp!1597522 e!3556728)))

(declare-fun b!5791632 () Bool)

(declare-fun tp!1597706 () Bool)

(assert (=> b!5791632 (= e!3556728 tp!1597706)))

(declare-fun b!5791630 () Bool)

(assert (=> b!5791630 (= e!3556728 tp_is_empty!40859)))

(assert (= (and b!5790979 ((_ is ElementMatch!15803) (regOne!32118 (regOne!32118 r!7292)))) b!5791630))

(assert (= (and b!5790979 ((_ is Concat!24648) (regOne!32118 (regOne!32118 r!7292)))) b!5791631))

(assert (= (and b!5790979 ((_ is Star!15803) (regOne!32118 (regOne!32118 r!7292)))) b!5791632))

(assert (= (and b!5790979 ((_ is Union!15803) (regOne!32118 (regOne!32118 r!7292)))) b!5791633))

(declare-fun b!5791637 () Bool)

(declare-fun e!3556729 () Bool)

(declare-fun tp!1597707 () Bool)

(declare-fun tp!1597710 () Bool)

(assert (=> b!5791637 (= e!3556729 (and tp!1597707 tp!1597710))))

(declare-fun b!5791635 () Bool)

(declare-fun tp!1597709 () Bool)

(declare-fun tp!1597708 () Bool)

(assert (=> b!5791635 (= e!3556729 (and tp!1597709 tp!1597708))))

(assert (=> b!5790979 (= tp!1597521 e!3556729)))

(declare-fun b!5791636 () Bool)

(declare-fun tp!1597711 () Bool)

(assert (=> b!5791636 (= e!3556729 tp!1597711)))

(declare-fun b!5791634 () Bool)

(assert (=> b!5791634 (= e!3556729 tp_is_empty!40859)))

(assert (= (and b!5790979 ((_ is ElementMatch!15803) (regTwo!32118 (regOne!32118 r!7292)))) b!5791634))

(assert (= (and b!5790979 ((_ is Concat!24648) (regTwo!32118 (regOne!32118 r!7292)))) b!5791635))

(assert (= (and b!5790979 ((_ is Star!15803) (regTwo!32118 (regOne!32118 r!7292)))) b!5791636))

(assert (= (and b!5790979 ((_ is Union!15803) (regTwo!32118 (regOne!32118 r!7292)))) b!5791637))

(declare-fun b!5791639 () Bool)

(declare-fun e!3556731 () Bool)

(declare-fun tp!1597712 () Bool)

(assert (=> b!5791639 (= e!3556731 tp!1597712)))

(declare-fun b!5791638 () Bool)

(declare-fun tp!1597713 () Bool)

(declare-fun e!3556730 () Bool)

(assert (=> b!5791638 (= e!3556730 (and (inv!82754 (h!70033 (t!377054 (t!377054 zl!343)))) e!3556731 tp!1597713))))

(assert (=> b!5790957 (= tp!1597498 e!3556730)))

(assert (= b!5791638 b!5791639))

(assert (= (and b!5790957 ((_ is Cons!63585) (t!377054 (t!377054 zl!343)))) b!5791638))

(declare-fun m!6734842 () Bool)

(assert (=> b!5791638 m!6734842))

(declare-fun b!5791643 () Bool)

(declare-fun e!3556732 () Bool)

(declare-fun tp!1597714 () Bool)

(declare-fun tp!1597717 () Bool)

(assert (=> b!5791643 (= e!3556732 (and tp!1597714 tp!1597717))))

(declare-fun b!5791641 () Bool)

(declare-fun tp!1597716 () Bool)

(declare-fun tp!1597715 () Bool)

(assert (=> b!5791641 (= e!3556732 (and tp!1597716 tp!1597715))))

(assert (=> b!5790980 (= tp!1597524 e!3556732)))

(declare-fun b!5791642 () Bool)

(declare-fun tp!1597718 () Bool)

(assert (=> b!5791642 (= e!3556732 tp!1597718)))

(declare-fun b!5791640 () Bool)

(assert (=> b!5791640 (= e!3556732 tp_is_empty!40859)))

(assert (= (and b!5790980 ((_ is ElementMatch!15803) (reg!16132 (regOne!32118 r!7292)))) b!5791640))

(assert (= (and b!5790980 ((_ is Concat!24648) (reg!16132 (regOne!32118 r!7292)))) b!5791641))

(assert (= (and b!5790980 ((_ is Star!15803) (reg!16132 (regOne!32118 r!7292)))) b!5791642))

(assert (= (and b!5790980 ((_ is Union!15803) (reg!16132 (regOne!32118 r!7292)))) b!5791643))

(declare-fun b!5791647 () Bool)

(declare-fun e!3556733 () Bool)

(declare-fun tp!1597719 () Bool)

(declare-fun tp!1597722 () Bool)

(assert (=> b!5791647 (= e!3556733 (and tp!1597719 tp!1597722))))

(declare-fun b!5791645 () Bool)

(declare-fun tp!1597721 () Bool)

(declare-fun tp!1597720 () Bool)

(assert (=> b!5791645 (= e!3556733 (and tp!1597721 tp!1597720))))

(assert (=> b!5790981 (= tp!1597520 e!3556733)))

(declare-fun b!5791646 () Bool)

(declare-fun tp!1597723 () Bool)

(assert (=> b!5791646 (= e!3556733 tp!1597723)))

(declare-fun b!5791644 () Bool)

(assert (=> b!5791644 (= e!3556733 tp_is_empty!40859)))

(assert (= (and b!5790981 ((_ is ElementMatch!15803) (regOne!32119 (regOne!32118 r!7292)))) b!5791644))

(assert (= (and b!5790981 ((_ is Concat!24648) (regOne!32119 (regOne!32118 r!7292)))) b!5791645))

(assert (= (and b!5790981 ((_ is Star!15803) (regOne!32119 (regOne!32118 r!7292)))) b!5791646))

(assert (= (and b!5790981 ((_ is Union!15803) (regOne!32119 (regOne!32118 r!7292)))) b!5791647))

(declare-fun b!5791653 () Bool)

(declare-fun e!3556736 () Bool)

(declare-fun tp!1597724 () Bool)

(declare-fun tp!1597727 () Bool)

(assert (=> b!5791653 (= e!3556736 (and tp!1597724 tp!1597727))))

(declare-fun b!5791651 () Bool)

(declare-fun tp!1597726 () Bool)

(declare-fun tp!1597725 () Bool)

(assert (=> b!5791651 (= e!3556736 (and tp!1597726 tp!1597725))))

(assert (=> b!5790981 (= tp!1597523 e!3556736)))

(declare-fun b!5791652 () Bool)

(declare-fun tp!1597728 () Bool)

(assert (=> b!5791652 (= e!3556736 tp!1597728)))

(declare-fun b!5791650 () Bool)

(assert (=> b!5791650 (= e!3556736 tp_is_empty!40859)))

(assert (= (and b!5790981 ((_ is ElementMatch!15803) (regTwo!32119 (regOne!32118 r!7292)))) b!5791650))

(assert (= (and b!5790981 ((_ is Concat!24648) (regTwo!32119 (regOne!32118 r!7292)))) b!5791651))

(assert (= (and b!5790981 ((_ is Star!15803) (regTwo!32119 (regOne!32118 r!7292)))) b!5791652))

(assert (= (and b!5790981 ((_ is Union!15803) (regTwo!32119 (regOne!32118 r!7292)))) b!5791653))

(declare-fun b!5791656 () Bool)

(declare-fun e!3556737 () Bool)

(declare-fun tp!1597729 () Bool)

(declare-fun tp!1597730 () Bool)

(assert (=> b!5791656 (= e!3556737 (and tp!1597729 tp!1597730))))

(assert (=> b!5790958 (= tp!1597497 e!3556737)))

(assert (= (and b!5790958 ((_ is Cons!63584) (exprs!5687 (h!70033 (t!377054 zl!343))))) b!5791656))

(declare-fun b!5791660 () Bool)

(declare-fun e!3556738 () Bool)

(declare-fun tp!1597731 () Bool)

(declare-fun tp!1597734 () Bool)

(assert (=> b!5791660 (= e!3556738 (and tp!1597731 tp!1597734))))

(declare-fun b!5791658 () Bool)

(declare-fun tp!1597733 () Bool)

(declare-fun tp!1597732 () Bool)

(assert (=> b!5791658 (= e!3556738 (and tp!1597733 tp!1597732))))

(assert (=> b!5790996 (= tp!1597540 e!3556738)))

(declare-fun b!5791659 () Bool)

(declare-fun tp!1597735 () Bool)

(assert (=> b!5791659 (= e!3556738 tp!1597735)))

(declare-fun b!5791657 () Bool)

(assert (=> b!5791657 (= e!3556738 tp_is_empty!40859)))

(assert (= (and b!5790996 ((_ is ElementMatch!15803) (regOne!32118 (regTwo!32119 r!7292)))) b!5791657))

(assert (= (and b!5790996 ((_ is Concat!24648) (regOne!32118 (regTwo!32119 r!7292)))) b!5791658))

(assert (= (and b!5790996 ((_ is Star!15803) (regOne!32118 (regTwo!32119 r!7292)))) b!5791659))

(assert (= (and b!5790996 ((_ is Union!15803) (regOne!32118 (regTwo!32119 r!7292)))) b!5791660))

(declare-fun b!5791664 () Bool)

(declare-fun e!3556739 () Bool)

(declare-fun tp!1597736 () Bool)

(declare-fun tp!1597739 () Bool)

(assert (=> b!5791664 (= e!3556739 (and tp!1597736 tp!1597739))))

(declare-fun b!5791662 () Bool)

(declare-fun tp!1597738 () Bool)

(declare-fun tp!1597737 () Bool)

(assert (=> b!5791662 (= e!3556739 (and tp!1597738 tp!1597737))))

(assert (=> b!5790996 (= tp!1597539 e!3556739)))

(declare-fun b!5791663 () Bool)

(declare-fun tp!1597740 () Bool)

(assert (=> b!5791663 (= e!3556739 tp!1597740)))

(declare-fun b!5791661 () Bool)

(assert (=> b!5791661 (= e!3556739 tp_is_empty!40859)))

(assert (= (and b!5790996 ((_ is ElementMatch!15803) (regTwo!32118 (regTwo!32119 r!7292)))) b!5791661))

(assert (= (and b!5790996 ((_ is Concat!24648) (regTwo!32118 (regTwo!32119 r!7292)))) b!5791662))

(assert (= (and b!5790996 ((_ is Star!15803) (regTwo!32118 (regTwo!32119 r!7292)))) b!5791663))

(assert (= (and b!5790996 ((_ is Union!15803) (regTwo!32118 (regTwo!32119 r!7292)))) b!5791664))

(declare-fun b!5791668 () Bool)

(declare-fun e!3556740 () Bool)

(declare-fun tp!1597741 () Bool)

(declare-fun tp!1597744 () Bool)

(assert (=> b!5791668 (= e!3556740 (and tp!1597741 tp!1597744))))

(declare-fun b!5791666 () Bool)

(declare-fun tp!1597743 () Bool)

(declare-fun tp!1597742 () Bool)

(assert (=> b!5791666 (= e!3556740 (and tp!1597743 tp!1597742))))

(assert (=> b!5790998 (= tp!1597538 e!3556740)))

(declare-fun b!5791667 () Bool)

(declare-fun tp!1597745 () Bool)

(assert (=> b!5791667 (= e!3556740 tp!1597745)))

(declare-fun b!5791665 () Bool)

(assert (=> b!5791665 (= e!3556740 tp_is_empty!40859)))

(assert (= (and b!5790998 ((_ is ElementMatch!15803) (regOne!32119 (regTwo!32119 r!7292)))) b!5791665))

(assert (= (and b!5790998 ((_ is Concat!24648) (regOne!32119 (regTwo!32119 r!7292)))) b!5791666))

(assert (= (and b!5790998 ((_ is Star!15803) (regOne!32119 (regTwo!32119 r!7292)))) b!5791667))

(assert (= (and b!5790998 ((_ is Union!15803) (regOne!32119 (regTwo!32119 r!7292)))) b!5791668))

(declare-fun b!5791672 () Bool)

(declare-fun e!3556741 () Bool)

(declare-fun tp!1597746 () Bool)

(declare-fun tp!1597749 () Bool)

(assert (=> b!5791672 (= e!3556741 (and tp!1597746 tp!1597749))))

(declare-fun b!5791670 () Bool)

(declare-fun tp!1597748 () Bool)

(declare-fun tp!1597747 () Bool)

(assert (=> b!5791670 (= e!3556741 (and tp!1597748 tp!1597747))))

(assert (=> b!5790998 (= tp!1597541 e!3556741)))

(declare-fun b!5791671 () Bool)

(declare-fun tp!1597750 () Bool)

(assert (=> b!5791671 (= e!3556741 tp!1597750)))

(declare-fun b!5791669 () Bool)

(assert (=> b!5791669 (= e!3556741 tp_is_empty!40859)))

(assert (= (and b!5790998 ((_ is ElementMatch!15803) (regTwo!32119 (regTwo!32119 r!7292)))) b!5791669))

(assert (= (and b!5790998 ((_ is Concat!24648) (regTwo!32119 (regTwo!32119 r!7292)))) b!5791670))

(assert (= (and b!5790998 ((_ is Star!15803) (regTwo!32119 (regTwo!32119 r!7292)))) b!5791671))

(assert (= (and b!5790998 ((_ is Union!15803) (regTwo!32119 (regTwo!32119 r!7292)))) b!5791672))

(declare-fun b!5791676 () Bool)

(declare-fun e!3556742 () Bool)

(declare-fun tp!1597751 () Bool)

(declare-fun tp!1597754 () Bool)

(assert (=> b!5791676 (= e!3556742 (and tp!1597751 tp!1597754))))

(declare-fun b!5791674 () Bool)

(declare-fun tp!1597753 () Bool)

(declare-fun tp!1597752 () Bool)

(assert (=> b!5791674 (= e!3556742 (and tp!1597753 tp!1597752))))

(assert (=> b!5790997 (= tp!1597542 e!3556742)))

(declare-fun b!5791675 () Bool)

(declare-fun tp!1597755 () Bool)

(assert (=> b!5791675 (= e!3556742 tp!1597755)))

(declare-fun b!5791673 () Bool)

(assert (=> b!5791673 (= e!3556742 tp_is_empty!40859)))

(assert (= (and b!5790997 ((_ is ElementMatch!15803) (reg!16132 (regTwo!32119 r!7292)))) b!5791673))

(assert (= (and b!5790997 ((_ is Concat!24648) (reg!16132 (regTwo!32119 r!7292)))) b!5791674))

(assert (= (and b!5790997 ((_ is Star!15803) (reg!16132 (regTwo!32119 r!7292)))) b!5791675))

(assert (= (and b!5790997 ((_ is Union!15803) (reg!16132 (regTwo!32119 r!7292)))) b!5791676))

(declare-fun b!5791680 () Bool)

(declare-fun e!3556743 () Bool)

(declare-fun tp!1597756 () Bool)

(declare-fun tp!1597759 () Bool)

(assert (=> b!5791680 (= e!3556743 (and tp!1597756 tp!1597759))))

(declare-fun b!5791678 () Bool)

(declare-fun tp!1597758 () Bool)

(declare-fun tp!1597757 () Bool)

(assert (=> b!5791678 (= e!3556743 (and tp!1597758 tp!1597757))))

(assert (=> b!5791004 (= tp!1597549 e!3556743)))

(declare-fun b!5791679 () Bool)

(declare-fun tp!1597760 () Bool)

(assert (=> b!5791679 (= e!3556743 tp!1597760)))

(declare-fun b!5791677 () Bool)

(assert (=> b!5791677 (= e!3556743 tp_is_empty!40859)))

(assert (= (and b!5791004 ((_ is ElementMatch!15803) (h!70032 (exprs!5687 setElem!38922)))) b!5791677))

(assert (= (and b!5791004 ((_ is Concat!24648) (h!70032 (exprs!5687 setElem!38922)))) b!5791678))

(assert (= (and b!5791004 ((_ is Star!15803) (h!70032 (exprs!5687 setElem!38922)))) b!5791679))

(assert (= (and b!5791004 ((_ is Union!15803) (h!70032 (exprs!5687 setElem!38922)))) b!5791680))

(declare-fun b!5791681 () Bool)

(declare-fun e!3556744 () Bool)

(declare-fun tp!1597761 () Bool)

(declare-fun tp!1597762 () Bool)

(assert (=> b!5791681 (= e!3556744 (and tp!1597761 tp!1597762))))

(assert (=> b!5791004 (= tp!1597550 e!3556744)))

(assert (= (and b!5791004 ((_ is Cons!63584) (t!377053 (exprs!5687 setElem!38922)))) b!5791681))

(declare-fun b!5791682 () Bool)

(declare-fun e!3556745 () Bool)

(declare-fun tp!1597763 () Bool)

(assert (=> b!5791682 (= e!3556745 (and tp_is_empty!40859 tp!1597763))))

(assert (=> b!5790990 (= tp!1597532 e!3556745)))

(assert (= (and b!5790990 ((_ is Cons!63586) (t!377055 (t!377055 s!2326)))) b!5791682))

(declare-fun b!5791686 () Bool)

(declare-fun e!3556746 () Bool)

(declare-fun tp!1597764 () Bool)

(declare-fun tp!1597767 () Bool)

(assert (=> b!5791686 (= e!3556746 (and tp!1597764 tp!1597767))))

(declare-fun b!5791684 () Bool)

(declare-fun tp!1597766 () Bool)

(declare-fun tp!1597765 () Bool)

(assert (=> b!5791684 (= e!3556746 (and tp!1597766 tp!1597765))))

(assert (=> b!5790963 (= tp!1597503 e!3556746)))

(declare-fun b!5791685 () Bool)

(declare-fun tp!1597768 () Bool)

(assert (=> b!5791685 (= e!3556746 tp!1597768)))

(declare-fun b!5791683 () Bool)

(assert (=> b!5791683 (= e!3556746 tp_is_empty!40859)))

(assert (= (and b!5790963 ((_ is ElementMatch!15803) (h!70032 (exprs!5687 (h!70033 zl!343))))) b!5791683))

(assert (= (and b!5790963 ((_ is Concat!24648) (h!70032 (exprs!5687 (h!70033 zl!343))))) b!5791684))

(assert (= (and b!5790963 ((_ is Star!15803) (h!70032 (exprs!5687 (h!70033 zl!343))))) b!5791685))

(assert (= (and b!5790963 ((_ is Union!15803) (h!70032 (exprs!5687 (h!70033 zl!343))))) b!5791686))

(declare-fun b!5791687 () Bool)

(declare-fun e!3556747 () Bool)

(declare-fun tp!1597769 () Bool)

(declare-fun tp!1597770 () Bool)

(assert (=> b!5791687 (= e!3556747 (and tp!1597769 tp!1597770))))

(assert (=> b!5790963 (= tp!1597504 e!3556747)))

(assert (= (and b!5790963 ((_ is Cons!63584) (t!377053 (exprs!5687 (h!70033 zl!343))))) b!5791687))

(declare-fun b_lambda!218325 () Bool)

(assert (= b_lambda!218313 (or b!5790413 b_lambda!218325)))

(assert (=> d!1824389 d!1824281))

(declare-fun b_lambda!218327 () Bool)

(assert (= b_lambda!218323 (or d!1824171 b_lambda!218327)))

(declare-fun bs!1367173 () Bool)

(declare-fun d!1824523 () Bool)

(assert (= bs!1367173 (and d!1824523 d!1824171)))

(assert (=> bs!1367173 (= (dynLambda!24897 lambda!315769 (h!70032 (unfocusZipperList!1231 zl!343))) (validRegex!7539 (h!70032 (unfocusZipperList!1231 zl!343))))))

(declare-fun m!6734844 () Bool)

(assert (=> bs!1367173 m!6734844))

(assert (=> b!5791532 d!1824523))

(declare-fun b_lambda!218329 () Bool)

(assert (= b_lambda!218315 (or b!5790413 b_lambda!218329)))

(assert (=> d!1824423 d!1824279))

(declare-fun b_lambda!218331 () Bool)

(assert (= b_lambda!218319 (or d!1824161 b_lambda!218331)))

(declare-fun bs!1367174 () Bool)

(declare-fun d!1824525 () Bool)

(assert (= bs!1367174 (and d!1824525 d!1824161)))

(assert (=> bs!1367174 (= (dynLambda!24897 lambda!315765 (h!70032 (exprs!5687 (h!70033 zl!343)))) (validRegex!7539 (h!70032 (exprs!5687 (h!70033 zl!343)))))))

(declare-fun m!6734846 () Bool)

(assert (=> bs!1367174 m!6734846))

(assert (=> b!5791448 d!1824525))

(declare-fun b_lambda!218333 () Bool)

(assert (= b_lambda!218317 (or d!1824167 b_lambda!218333)))

(declare-fun bs!1367175 () Bool)

(declare-fun d!1824527 () Bool)

(assert (= bs!1367175 (and d!1824527 d!1824167)))

(assert (=> bs!1367175 (= (dynLambda!24897 lambda!315766 (h!70032 (exprs!5687 setElem!38922))) (validRegex!7539 (h!70032 (exprs!5687 setElem!38922))))))

(declare-fun m!6734848 () Bool)

(assert (=> bs!1367175 m!6734848))

(assert (=> b!5791361 d!1824527))

(declare-fun b_lambda!218335 () Bool)

(assert (= b_lambda!218311 (or d!1824187 b_lambda!218335)))

(declare-fun bs!1367176 () Bool)

(declare-fun d!1824529 () Bool)

(assert (= bs!1367176 (and d!1824529 d!1824187)))

(assert (=> bs!1367176 (= (dynLambda!24897 lambda!315776 (h!70032 (exprs!5687 (h!70033 zl!343)))) (validRegex!7539 (h!70032 (exprs!5687 (h!70033 zl!343)))))))

(assert (=> bs!1367176 m!6734846))

(assert (=> b!5791255 d!1824529))

(declare-fun b_lambda!218337 () Bool)

(assert (= b_lambda!218309 (or d!1824173 b_lambda!218337)))

(declare-fun bs!1367177 () Bool)

(declare-fun d!1824531 () Bool)

(assert (= bs!1367177 (and d!1824531 d!1824173)))

(assert (=> bs!1367177 (= (dynLambda!24897 lambda!315772 (h!70032 lt!2297030)) (validRegex!7539 (h!70032 lt!2297030)))))

(declare-fun m!6734850 () Bool)

(assert (=> bs!1367177 m!6734850))

(assert (=> b!5791218 d!1824531))

(check-sat (not bm!451156) (not d!1824425) (not b!5791590) (not b!5791338) (not b!5791562) (not d!1824331) (not bm!451179) (not setNonEmpty!38933) (not b!5791601) (not d!1824405) (not b!5791473) (not bm!451097) (not b!5791615) (not d!1824361) (not b!5791200) (not b!5791613) (not b!5791666) (not b!5791429) (not b!5791594) (not d!1824421) (not b!5791628) (not d!1824311) (not bm!451126) (not b!5791277) (not b!5791663) (not bm!451102) (not b!5791321) (not b!5791635) (not d!1824391) (not b!5791619) (not b!5791243) (not b!5791256) (not b!5791638) (not b!5791567) (not bs!1367176) (not b!5791162) (not b!5791528) (not b!5791682) (not bs!1367174) (not bm!451147) (not b!5791220) (not b!5791636) (not b!5791399) (not b!5791300) (not b_lambda!218331) (not d!1824479) (not b!5791475) (not b!5791310) (not d!1824417) tp_is_empty!40859 (not d!1824363) (not b!5791330) (not bs!1367177) (not setNonEmpty!38932) (not b!5791362) (not b!5791539) (not b!5791599) (not d!1824413) (not b!5791646) (not b!5791662) (not bm!451117) (not b!5791617) (not b!5791581) (not bm!451101) (not b!5791591) (not bm!451148) (not b!5791652) (not b!5791212) (not b!5791180) (not b!5791283) (not b!5791614) (not bm!451120) (not b!5791219) (not d!1824481) (not b!5791571) (not d!1824313) (not d!1824509) (not bm!451100) (not b!5791579) (not b!5791465) (not b!5791285) (not b_lambda!218329) (not d!1824337) (not bs!1367175) (not b!5791281) (not b!5791625) (not b!5791336) (not b!5791275) (not b_lambda!218337) (not b!5791607) (not b!5791292) (not b!5791680) (not b!5791271) (not b!5791287) (not b!5791675) (not b!5791396) (not d!1824325) (not b!5791159) (not b!5791687) (not d!1824463) (not d!1824349) (not b!5791667) (not b!5791533) (not b!5791670) (not b!5791573) (not b!5791602) (not b!5791572) (not bm!451107) (not d!1824441) (not b!5791279) (not b!5791598) (not b!5791586) (not bm!451114) (not b!5791668) (not b!5791284) (not bm!451109) (not d!1824499) (not d!1824517) (not b!5791203) (not b!5791632) (not b!5791318) (not b!5791443) (not bm!451134) (not d!1824445) (not b!5791642) (not b!5791373) (not b!5791618) (not b!5791317) (not b!5791565) (not bm!451127) (not d!1824357) (not b!5791151) (not d!1824443) (not b!5791332) (not bm!451141) (not bm!451163) (not b!5791161) (not bm!451136) (not b!5791440) (not b!5791160) (not bm!451116) (not d!1824403) (not b!5791365) (not bm!451098) (not b!5791168) (not b!5791441) (not b!5791681) (not b_lambda!218301) (not setNonEmpty!38931) (not b!5791476) (not b!5791674) (not bm!451158) (not b!5791289) (not b!5791658) (not bs!1367173) (not b!5791295) (not b!5791684) (not b!5791327) (not b!5791298) (not bm!451123) (not b!5791641) (not d!1824341) (not d!1824429) (not bm!451131) (not b!5791193) (not b!5791472) (not b!5791611) (not bm!451119) (not b!5791402) (not b!5791593) (not b!5791595) (not b!5791633) (not b!5791653) (not b!5791605) (not b!5791323) (not b!5791385) (not b!5791442) (not bm!451180) (not bm!451133) (not bm!451132) (not b!5791623) (not d!1824339) (not b!5791223) (not b!5791513) (not b!5791320) (not bm!451096) (not b!5791351) (not b_lambda!218335) (not b!5791685) (not d!1824515) (not b!5791428) (not b!5791374) (not b!5791621) (not b!5791589) (not d!1824395) (not b!5791578) (not d!1824351) (not bm!451176) (not d!1824397) (not d!1824333) (not b_lambda!218327) (not b!5791585) (not d!1824519) (not d!1824431) (not bm!451122) (not b!5791251) (not b!5791582) (not b!5791664) (not d!1824367) (not bm!451177) (not b!5791372) (not b!5791347) (not b!5791460) (not b!5791643) (not bm!451108) (not b_lambda!218325) (not b!5791671) (not d!1824435) (not b!5791639) (not b!5791262) (not b!5791656) (not b!5791474) (not b!5791672) (not b!5791449) (not b!5791577) (not bm!451142) (not b!5791627) (not b!5791335) (not bm!451157) (not b_lambda!218333) (not b!5791446) (not d!1824491) (not bm!451140) (not bm!451106) (not bm!451173) (not d!1824427) (not b!5791659) (not b!5791294) (not b!5791609) (not b!5791324) (not bm!451124) (not b!5791647) (not d!1824365) (not b!5791622) (not bm!451135) (not b!5791679) (not b!5791637) (not b!5791412) (not b!5791626) (not b!5791645) (not d!1824423) (not b!5791290) (not d!1824343) (not b!5791296) (not d!1824411) (not b!5791678) (not bm!451159) (not bm!451146) (not b!5791597) (not b!5791583) (not b!5791192) (not b!5791376) (not bm!451149) (not b_lambda!218299) (not b!5791606) (not b!5791631) (not b!5791276) (not b!5791561) (not b!5791319) (not b!5791566) (not b!5791353) (not b!5791337) (not bm!451125) (not b!5791328) (not b!5791676) (not b!5791660) (not bm!451175) (not b!5791603) (not d!1824389) (not bm!451113) (not b!5791158) (not b!5791563) (not b!5791375) (not b!5791629) (not b!5791610) (not b!5791587) (not b!5791651) (not b!5791280) (not b!5791686))
(check-sat)
