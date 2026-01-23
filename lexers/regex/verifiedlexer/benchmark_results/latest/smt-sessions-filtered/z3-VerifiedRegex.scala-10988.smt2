; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!569890 () Bool)

(assert start!569890)

(declare-fun b!5430423 () Bool)

(assert (=> b!5430423 true))

(assert (=> b!5430423 true))

(declare-fun lambda!284963 () Int)

(declare-fun lambda!284962 () Int)

(assert (=> b!5430423 (not (= lambda!284963 lambda!284962))))

(assert (=> b!5430423 true))

(assert (=> b!5430423 true))

(declare-fun b!5430406 () Bool)

(assert (=> b!5430406 true))

(declare-fun b!5430402 () Bool)

(declare-fun e!3364879 () Bool)

(declare-fun e!3364881 () Bool)

(assert (=> b!5430402 (= e!3364879 e!3364881)))

(declare-fun res!2311008 () Bool)

(assert (=> b!5430402 (=> res!2311008 e!3364881)))

(declare-fun e!3364875 () Bool)

(assert (=> b!5430402 (= res!2311008 e!3364875)))

(declare-fun res!2311026 () Bool)

(assert (=> b!5430402 (=> (not res!2311026) (not e!3364875))))

(declare-fun lt!2214342 () Bool)

(assert (=> b!5430402 (= res!2311026 (not lt!2214342))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30716 0))(
  ( (C!30717 (val!25060 Int)) )
))
(declare-datatypes ((Regex!15223 0))(
  ( (ElementMatch!15223 (c!947425 C!30716)) (Concat!24068 (regOne!30958 Regex!15223) (regTwo!30958 Regex!15223)) (EmptyExpr!15223) (Star!15223 (reg!15552 Regex!15223)) (EmptyLang!15223) (Union!15223 (regOne!30959 Regex!15223) (regTwo!30959 Regex!15223)) )
))
(declare-datatypes ((List!61968 0))(
  ( (Nil!61844) (Cons!61844 (h!68292 Regex!15223) (t!375193 List!61968)) )
))
(declare-datatypes ((Context!9214 0))(
  ( (Context!9215 (exprs!5107 List!61968)) )
))
(declare-fun lt!2214326 () (InoxSet Context!9214))

(declare-datatypes ((List!61969 0))(
  ( (Nil!61845) (Cons!61845 (h!68293 C!30716) (t!375194 List!61969)) )
))
(declare-fun s!2326 () List!61969)

(declare-fun matchZipper!1467 ((InoxSet Context!9214) List!61969) Bool)

(assert (=> b!5430402 (= lt!2214342 (matchZipper!1467 lt!2214326 (t!375194 s!2326)))))

(declare-fun b!5430403 () Bool)

(declare-fun e!3364870 () Bool)

(declare-fun tp!1498239 () Bool)

(assert (=> b!5430403 (= e!3364870 tp!1498239)))

(declare-fun res!2310997 () Bool)

(declare-fun e!3364882 () Bool)

(assert (=> start!569890 (=> (not res!2310997) (not e!3364882))))

(declare-fun r!7292 () Regex!15223)

(declare-fun validRegex!6959 (Regex!15223) Bool)

(assert (=> start!569890 (= res!2310997 (validRegex!6959 r!7292))))

(assert (=> start!569890 e!3364882))

(assert (=> start!569890 e!3364870))

(declare-fun condSetEmpty!35427 () Bool)

(declare-fun z!1189 () (InoxSet Context!9214))

(assert (=> start!569890 (= condSetEmpty!35427 (= z!1189 ((as const (Array Context!9214 Bool)) false)))))

(declare-fun setRes!35427 () Bool)

(assert (=> start!569890 setRes!35427))

(declare-fun e!3364884 () Bool)

(assert (=> start!569890 e!3364884))

(declare-fun e!3364871 () Bool)

(assert (=> start!569890 e!3364871))

(declare-fun setIsEmpty!35427 () Bool)

(assert (=> setIsEmpty!35427 setRes!35427))

(declare-fun b!5430404 () Bool)

(declare-fun res!2311014 () Bool)

(assert (=> b!5430404 (=> res!2311014 e!3364881)))

(assert (=> b!5430404 (= res!2311014 lt!2214342)))

(declare-fun b!5430405 () Bool)

(declare-fun e!3364873 () Bool)

(declare-fun e!3364868 () Bool)

(assert (=> b!5430405 (= e!3364873 e!3364868)))

(declare-fun res!2311003 () Bool)

(assert (=> b!5430405 (=> res!2311003 e!3364868)))

(declare-fun lt!2214339 () Regex!15223)

(assert (=> b!5430405 (= res!2311003 (not (= r!7292 lt!2214339)))))

(declare-fun lt!2214335 () Regex!15223)

(assert (=> b!5430405 (= lt!2214339 (Concat!24068 lt!2214335 (regTwo!30958 r!7292)))))

(declare-fun e!3364889 () Bool)

(declare-fun e!3364878 () Bool)

(assert (=> b!5430406 (= e!3364889 e!3364878)))

(declare-fun res!2311028 () Bool)

(assert (=> b!5430406 (=> res!2311028 e!3364878)))

(get-info :version)

(assert (=> b!5430406 (= res!2311028 (or (and ((_ is ElementMatch!15223) (regOne!30958 r!7292)) (= (c!947425 (regOne!30958 r!7292)) (h!68293 s!2326))) ((_ is Union!15223) (regOne!30958 r!7292))))))

(declare-datatypes ((Unit!154414 0))(
  ( (Unit!154415) )
))
(declare-fun lt!2214316 () Unit!154414)

(declare-fun e!3364872 () Unit!154414)

(assert (=> b!5430406 (= lt!2214316 e!3364872)))

(declare-fun c!947424 () Bool)

(declare-fun lt!2214329 () Bool)

(assert (=> b!5430406 (= c!947424 lt!2214329)))

(declare-datatypes ((List!61970 0))(
  ( (Nil!61846) (Cons!61846 (h!68294 Context!9214) (t!375195 List!61970)) )
))
(declare-fun zl!343 () List!61970)

(declare-fun nullable!5392 (Regex!15223) Bool)

(assert (=> b!5430406 (= lt!2214329 (nullable!5392 (h!68292 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun lambda!284964 () Int)

(declare-fun flatMap!950 ((InoxSet Context!9214) Int) (InoxSet Context!9214))

(declare-fun derivationStepZipperUp!595 (Context!9214 C!30716) (InoxSet Context!9214))

(assert (=> b!5430406 (= (flatMap!950 z!1189 lambda!284964) (derivationStepZipperUp!595 (h!68294 zl!343) (h!68293 s!2326)))))

(declare-fun lt!2214330 () Unit!154414)

(declare-fun lemmaFlatMapOnSingletonSet!482 ((InoxSet Context!9214) Context!9214 Int) Unit!154414)

(assert (=> b!5430406 (= lt!2214330 (lemmaFlatMapOnSingletonSet!482 z!1189 (h!68294 zl!343) lambda!284964))))

(declare-fun lt!2214319 () (InoxSet Context!9214))

(declare-fun lt!2214315 () Context!9214)

(assert (=> b!5430406 (= lt!2214319 (derivationStepZipperUp!595 lt!2214315 (h!68293 s!2326)))))

(declare-fun derivationStepZipperDown!671 (Regex!15223 Context!9214 C!30716) (InoxSet Context!9214))

(assert (=> b!5430406 (= lt!2214326 (derivationStepZipperDown!671 (h!68292 (exprs!5107 (h!68294 zl!343))) lt!2214315 (h!68293 s!2326)))))

(assert (=> b!5430406 (= lt!2214315 (Context!9215 (t!375193 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun lt!2214332 () (InoxSet Context!9214))

(assert (=> b!5430406 (= lt!2214332 (derivationStepZipperUp!595 (Context!9215 (Cons!61844 (h!68292 (exprs!5107 (h!68294 zl!343))) (t!375193 (exprs!5107 (h!68294 zl!343))))) (h!68293 s!2326)))))

(declare-fun b!5430407 () Bool)

(declare-fun Unit!154416 () Unit!154414)

(assert (=> b!5430407 (= e!3364872 Unit!154416)))

(declare-fun lt!2214312 () Unit!154414)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!460 ((InoxSet Context!9214) (InoxSet Context!9214) List!61969) Unit!154414)

(assert (=> b!5430407 (= lt!2214312 (lemmaZipperConcatMatchesSameAsBothZippers!460 lt!2214326 lt!2214319 (t!375194 s!2326)))))

(declare-fun res!2311001 () Bool)

(assert (=> b!5430407 (= res!2311001 (matchZipper!1467 lt!2214326 (t!375194 s!2326)))))

(declare-fun e!3364886 () Bool)

(assert (=> b!5430407 (=> res!2311001 e!3364886)))

(assert (=> b!5430407 (= (matchZipper!1467 ((_ map or) lt!2214326 lt!2214319) (t!375194 s!2326)) e!3364886)))

(declare-fun b!5430408 () Bool)

(declare-fun res!2311024 () Bool)

(assert (=> b!5430408 (=> res!2311024 e!3364879)))

(assert (=> b!5430408 (= res!2311024 (not lt!2214329))))

(declare-fun b!5430409 () Bool)

(declare-fun e!3364890 () Bool)

(assert (=> b!5430409 (= e!3364868 e!3364890)))

(declare-fun res!2311029 () Bool)

(assert (=> b!5430409 (=> res!2311029 e!3364890)))

(declare-fun lt!2214340 () Context!9214)

(declare-fun lt!2214318 () Regex!15223)

(declare-fun unfocusZipper!965 (List!61970) Regex!15223)

(assert (=> b!5430409 (= res!2311029 (not (= (unfocusZipper!965 (Cons!61846 lt!2214340 Nil!61846)) lt!2214318)))))

(assert (=> b!5430409 (= lt!2214318 (Concat!24068 (reg!15552 (regOne!30958 r!7292)) lt!2214339))))

(declare-fun b!5430410 () Bool)

(declare-fun res!2311015 () Bool)

(declare-fun e!3364874 () Bool)

(assert (=> b!5430410 (=> res!2311015 e!3364874)))

(assert (=> b!5430410 (= res!2311015 (or ((_ is EmptyExpr!15223) r!7292) ((_ is EmptyLang!15223) r!7292) ((_ is ElementMatch!15223) r!7292) ((_ is Union!15223) r!7292) (not ((_ is Concat!24068) r!7292))))))

(declare-fun b!5430411 () Bool)

(declare-fun res!2311025 () Bool)

(assert (=> b!5430411 (=> res!2311025 e!3364873)))

(declare-fun lt!2214322 () Regex!15223)

(assert (=> b!5430411 (= res!2311025 (not (= lt!2214322 r!7292)))))

(declare-fun tp!1498236 () Bool)

(declare-fun setNonEmpty!35427 () Bool)

(declare-fun setElem!35427 () Context!9214)

(declare-fun e!3364869 () Bool)

(declare-fun inv!81304 (Context!9214) Bool)

(assert (=> setNonEmpty!35427 (= setRes!35427 (and tp!1498236 (inv!81304 setElem!35427) e!3364869))))

(declare-fun setRest!35427 () (InoxSet Context!9214))

(assert (=> setNonEmpty!35427 (= z!1189 ((_ map or) (store ((as const (Array Context!9214 Bool)) false) setElem!35427 true) setRest!35427))))

(declare-fun b!5430412 () Bool)

(declare-fun e!3364876 () Bool)

(declare-fun e!3364887 () Bool)

(assert (=> b!5430412 (= e!3364876 e!3364887)))

(declare-fun res!2311011 () Bool)

(assert (=> b!5430412 (=> res!2311011 e!3364887)))

(declare-fun lt!2214336 () List!61970)

(declare-fun zipperDepth!164 (List!61970) Int)

(assert (=> b!5430412 (= res!2311011 (< (zipperDepth!164 zl!343) (zipperDepth!164 lt!2214336)))))

(assert (=> b!5430412 (= lt!2214336 (Cons!61846 lt!2214315 Nil!61846))))

(declare-fun b!5430413 () Bool)

(declare-fun res!2311017 () Bool)

(assert (=> b!5430413 (=> res!2311017 e!3364881)))

(assert (=> b!5430413 (= res!2311017 (not (matchZipper!1467 lt!2214319 (t!375194 s!2326))))))

(declare-fun b!5430414 () Bool)

(declare-fun e!3364877 () Bool)

(assert (=> b!5430414 (= e!3364877 (not e!3364874))))

(declare-fun res!2311022 () Bool)

(assert (=> b!5430414 (=> res!2311022 e!3364874)))

(assert (=> b!5430414 (= res!2311022 (not ((_ is Cons!61846) zl!343)))))

(declare-fun lt!2214311 () Bool)

(declare-fun matchRSpec!2326 (Regex!15223 List!61969) Bool)

(assert (=> b!5430414 (= lt!2214311 (matchRSpec!2326 r!7292 s!2326))))

(declare-fun matchR!7408 (Regex!15223 List!61969) Bool)

(assert (=> b!5430414 (= lt!2214311 (matchR!7408 r!7292 s!2326))))

(declare-fun lt!2214327 () Unit!154414)

(declare-fun mainMatchTheorem!2326 (Regex!15223 List!61969) Unit!154414)

(assert (=> b!5430414 (= lt!2214327 (mainMatchTheorem!2326 r!7292 s!2326))))

(declare-fun b!5430415 () Bool)

(declare-fun res!2311019 () Bool)

(assert (=> b!5430415 (=> (not res!2311019) (not e!3364882))))

(declare-fun toList!9007 ((InoxSet Context!9214)) List!61970)

(assert (=> b!5430415 (= res!2311019 (= (toList!9007 z!1189) zl!343))))

(declare-fun e!3364888 () Bool)

(declare-fun tp!1498245 () Bool)

(declare-fun b!5430416 () Bool)

(assert (=> b!5430416 (= e!3364884 (and (inv!81304 (h!68294 zl!343)) e!3364888 tp!1498245))))

(declare-fun b!5430417 () Bool)

(declare-fun e!3364880 () Bool)

(assert (=> b!5430417 (= e!3364880 (nullable!5392 (regOne!30958 (regOne!30958 r!7292))))))

(declare-fun b!5430418 () Bool)

(assert (=> b!5430418 (= e!3364875 (not (matchZipper!1467 lt!2214319 (t!375194 s!2326))))))

(declare-fun b!5430419 () Bool)

(declare-fun e!3364883 () Bool)

(assert (=> b!5430419 (= e!3364883 e!3364879)))

(declare-fun res!2311012 () Bool)

(assert (=> b!5430419 (=> res!2311012 e!3364879)))

(assert (=> b!5430419 (= res!2311012 lt!2214311)))

(assert (=> b!5430419 (= (matchR!7408 lt!2214318 s!2326) (matchRSpec!2326 lt!2214318 s!2326))))

(declare-fun lt!2214308 () Unit!154414)

(assert (=> b!5430419 (= lt!2214308 (mainMatchTheorem!2326 lt!2214318 s!2326))))

(declare-fun b!5430420 () Bool)

(declare-fun lambda!284965 () Int)

(declare-fun forall!14560 (List!61968 Int) Bool)

(assert (=> b!5430420 (= e!3364887 (forall!14560 (t!375193 (exprs!5107 (h!68294 zl!343))) lambda!284965))))

(declare-fun lt!2214306 () Regex!15223)

(declare-fun lt!2214317 () (InoxSet Context!9214))

(assert (=> b!5430420 (= (matchR!7408 lt!2214306 s!2326) (matchZipper!1467 lt!2214317 s!2326))))

(declare-fun lt!2214305 () Unit!154414)

(declare-fun theoremZipperRegexEquiv!527 ((InoxSet Context!9214) List!61970 Regex!15223 List!61969) Unit!154414)

(assert (=> b!5430420 (= lt!2214305 (theoremZipperRegexEquiv!527 lt!2214317 lt!2214336 lt!2214306 s!2326))))

(declare-fun b!5430421 () Bool)

(declare-fun res!2311010 () Bool)

(assert (=> b!5430421 (=> res!2311010 e!3364874)))

(assert (=> b!5430421 (= res!2311010 (not ((_ is Cons!61844) (exprs!5107 (h!68294 zl!343)))))))

(declare-fun b!5430422 () Bool)

(declare-fun tp_is_empty!39699 () Bool)

(assert (=> b!5430422 (= e!3364870 tp_is_empty!39699)))

(assert (=> b!5430423 (= e!3364874 e!3364889)))

(declare-fun res!2311006 () Bool)

(assert (=> b!5430423 (=> res!2311006 e!3364889)))

(declare-fun lt!2214310 () Bool)

(assert (=> b!5430423 (= res!2311006 (or (not (= lt!2214311 lt!2214310)) ((_ is Nil!61845) s!2326)))))

(declare-fun Exists!2404 (Int) Bool)

(assert (=> b!5430423 (= (Exists!2404 lambda!284962) (Exists!2404 lambda!284963))))

(declare-fun lt!2214313 () Unit!154414)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1058 (Regex!15223 Regex!15223 List!61969) Unit!154414)

(assert (=> b!5430423 (= lt!2214313 (lemmaExistCutMatchRandMatchRSpecEquivalent!1058 (regOne!30958 r!7292) (regTwo!30958 r!7292) s!2326))))

(assert (=> b!5430423 (= lt!2214310 (Exists!2404 lambda!284962))))

(declare-datatypes ((tuple2!64844 0))(
  ( (tuple2!64845 (_1!35725 List!61969) (_2!35725 List!61969)) )
))
(declare-datatypes ((Option!15334 0))(
  ( (None!15333) (Some!15333 (v!51362 tuple2!64844)) )
))
(declare-fun isDefined!12037 (Option!15334) Bool)

(declare-fun findConcatSeparation!1748 (Regex!15223 Regex!15223 List!61969 List!61969 List!61969) Option!15334)

(assert (=> b!5430423 (= lt!2214310 (isDefined!12037 (findConcatSeparation!1748 (regOne!30958 r!7292) (regTwo!30958 r!7292) Nil!61845 s!2326 s!2326)))))

(declare-fun lt!2214333 () Unit!154414)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1512 (Regex!15223 Regex!15223 List!61969) Unit!154414)

(assert (=> b!5430423 (= lt!2214333 (lemmaFindConcatSeparationEquivalentToExists!1512 (regOne!30958 r!7292) (regTwo!30958 r!7292) s!2326))))

(declare-fun b!5430424 () Bool)

(assert (=> b!5430424 (= e!3364886 (matchZipper!1467 lt!2214319 (t!375194 s!2326)))))

(declare-fun b!5430425 () Bool)

(declare-fun e!3364867 () Bool)

(assert (=> b!5430425 (= e!3364878 e!3364867)))

(declare-fun res!2311020 () Bool)

(assert (=> b!5430425 (=> res!2311020 e!3364867)))

(declare-fun lt!2214331 () (InoxSet Context!9214))

(assert (=> b!5430425 (= res!2311020 (not (= lt!2214326 lt!2214331)))))

(declare-fun lt!2214325 () Context!9214)

(assert (=> b!5430425 (= lt!2214331 (derivationStepZipperDown!671 (reg!15552 (regOne!30958 r!7292)) lt!2214325 (h!68293 s!2326)))))

(declare-fun lt!2214334 () List!61968)

(assert (=> b!5430425 (= lt!2214325 (Context!9215 lt!2214334))))

(assert (=> b!5430425 (= lt!2214334 (Cons!61844 lt!2214335 (t!375193 (exprs!5107 (h!68294 zl!343)))))))

(assert (=> b!5430425 (= lt!2214335 (Star!15223 (reg!15552 (regOne!30958 r!7292))))))

(declare-fun b!5430426 () Bool)

(declare-fun res!2311005 () Bool)

(assert (=> b!5430426 (=> res!2311005 e!3364874)))

(declare-fun isEmpty!33844 (List!61970) Bool)

(assert (=> b!5430426 (= res!2311005 (not (isEmpty!33844 (t!375195 zl!343))))))

(declare-fun b!5430427 () Bool)

(declare-fun res!2310999 () Bool)

(assert (=> b!5430427 (=> res!2310999 e!3364879)))

(assert (=> b!5430427 (= res!2310999 (not (matchZipper!1467 z!1189 s!2326)))))

(declare-fun b!5430428 () Bool)

(declare-fun res!2311000 () Bool)

(assert (=> b!5430428 (=> res!2311000 e!3364873)))

(declare-fun lt!2214324 () (InoxSet Context!9214))

(declare-fun lt!2214341 () (InoxSet Context!9214))

(assert (=> b!5430428 (= res!2311000 (not (= (matchZipper!1467 lt!2214324 s!2326) (matchZipper!1467 lt!2214341 (t!375194 s!2326)))))))

(declare-fun b!5430429 () Bool)

(declare-fun res!2310998 () Bool)

(assert (=> b!5430429 (=> res!2310998 e!3364874)))

(declare-fun generalisedConcat!892 (List!61968) Regex!15223)

(assert (=> b!5430429 (= res!2310998 (not (= r!7292 (generalisedConcat!892 (exprs!5107 (h!68294 zl!343))))))))

(declare-fun b!5430430 () Bool)

(assert (=> b!5430430 (= e!3364867 e!3364873)))

(declare-fun res!2311016 () Bool)

(assert (=> b!5430430 (=> res!2311016 e!3364873)))

(assert (=> b!5430430 (= res!2311016 (not (= lt!2214341 lt!2214331)))))

(assert (=> b!5430430 (= (flatMap!950 lt!2214324 lambda!284964) (derivationStepZipperUp!595 lt!2214340 (h!68293 s!2326)))))

(declare-fun lt!2214304 () Unit!154414)

(assert (=> b!5430430 (= lt!2214304 (lemmaFlatMapOnSingletonSet!482 lt!2214324 lt!2214340 lambda!284964))))

(declare-fun lt!2214309 () (InoxSet Context!9214))

(assert (=> b!5430430 (= lt!2214309 (derivationStepZipperUp!595 lt!2214340 (h!68293 s!2326)))))

(declare-fun derivationStepZipper!1462 ((InoxSet Context!9214) C!30716) (InoxSet Context!9214))

(assert (=> b!5430430 (= lt!2214341 (derivationStepZipper!1462 lt!2214324 (h!68293 s!2326)))))

(assert (=> b!5430430 (= lt!2214324 (store ((as const (Array Context!9214 Bool)) false) lt!2214340 true))))

(assert (=> b!5430430 (= lt!2214340 (Context!9215 (Cons!61844 (reg!15552 (regOne!30958 r!7292)) lt!2214334)))))

(declare-fun b!5430431 () Bool)

(declare-fun Unit!154417 () Unit!154414)

(assert (=> b!5430431 (= e!3364872 Unit!154417)))

(declare-fun b!5430432 () Bool)

(declare-fun res!2311007 () Bool)

(assert (=> b!5430432 (=> res!2311007 e!3364878)))

(assert (=> b!5430432 (= res!2311007 (or ((_ is Concat!24068) (regOne!30958 r!7292)) (not ((_ is Star!15223) (regOne!30958 r!7292)))))))

(declare-fun b!5430433 () Bool)

(declare-fun tp!1498244 () Bool)

(assert (=> b!5430433 (= e!3364869 tp!1498244)))

(declare-fun b!5430434 () Bool)

(declare-fun res!2311021 () Bool)

(assert (=> b!5430434 (=> res!2311021 e!3364878)))

(assert (=> b!5430434 (= res!2311021 e!3364880)))

(declare-fun res!2311009 () Bool)

(assert (=> b!5430434 (=> (not res!2311009) (not e!3364880))))

(assert (=> b!5430434 (= res!2311009 ((_ is Concat!24068) (regOne!30958 r!7292)))))

(declare-fun b!5430435 () Bool)

(declare-fun e!3364885 () Bool)

(assert (=> b!5430435 (= e!3364881 e!3364885)))

(declare-fun res!2311023 () Bool)

(assert (=> b!5430435 (=> res!2311023 e!3364885)))

(assert (=> b!5430435 (= res!2311023 (not (= lt!2214319 (derivationStepZipper!1462 lt!2214317 (h!68293 s!2326)))))))

(assert (=> b!5430435 (= (flatMap!950 lt!2214317 lambda!284964) (derivationStepZipperUp!595 lt!2214315 (h!68293 s!2326)))))

(declare-fun lt!2214320 () Unit!154414)

(assert (=> b!5430435 (= lt!2214320 (lemmaFlatMapOnSingletonSet!482 lt!2214317 lt!2214315 lambda!284964))))

(assert (=> b!5430435 (= lt!2214317 (store ((as const (Array Context!9214 Bool)) false) lt!2214315 true))))

(declare-fun b!5430436 () Bool)

(assert (=> b!5430436 (= e!3364882 e!3364877)))

(declare-fun res!2311002 () Bool)

(assert (=> b!5430436 (=> (not res!2311002) (not e!3364877))))

(assert (=> b!5430436 (= res!2311002 (= r!7292 lt!2214322))))

(assert (=> b!5430436 (= lt!2214322 (unfocusZipper!965 zl!343))))

(declare-fun b!5430437 () Bool)

(declare-fun tp!1498237 () Bool)

(assert (=> b!5430437 (= e!3364871 (and tp_is_empty!39699 tp!1498237))))

(declare-fun b!5430438 () Bool)

(assert (=> b!5430438 (= e!3364890 e!3364883)))

(declare-fun res!2311018 () Bool)

(assert (=> b!5430438 (=> res!2311018 e!3364883)))

(declare-fun lt!2214337 () Context!9214)

(assert (=> b!5430438 (= res!2311018 (not (= (unfocusZipper!965 (Cons!61846 lt!2214337 Nil!61846)) (reg!15552 (regOne!30958 r!7292)))))))

(declare-fun lt!2214338 () (InoxSet Context!9214))

(assert (=> b!5430438 (= (flatMap!950 lt!2214338 lambda!284964) (derivationStepZipperUp!595 lt!2214325 (h!68293 s!2326)))))

(declare-fun lt!2214323 () Unit!154414)

(assert (=> b!5430438 (= lt!2214323 (lemmaFlatMapOnSingletonSet!482 lt!2214338 lt!2214325 lambda!284964))))

(declare-fun lt!2214314 () (InoxSet Context!9214))

(assert (=> b!5430438 (= (flatMap!950 lt!2214314 lambda!284964) (derivationStepZipperUp!595 lt!2214337 (h!68293 s!2326)))))

(declare-fun lt!2214321 () Unit!154414)

(assert (=> b!5430438 (= lt!2214321 (lemmaFlatMapOnSingletonSet!482 lt!2214314 lt!2214337 lambda!284964))))

(declare-fun lt!2214328 () (InoxSet Context!9214))

(assert (=> b!5430438 (= lt!2214328 (derivationStepZipperUp!595 lt!2214325 (h!68293 s!2326)))))

(declare-fun lt!2214307 () (InoxSet Context!9214))

(assert (=> b!5430438 (= lt!2214307 (derivationStepZipperUp!595 lt!2214337 (h!68293 s!2326)))))

(assert (=> b!5430438 (= lt!2214338 (store ((as const (Array Context!9214 Bool)) false) lt!2214325 true))))

(assert (=> b!5430438 (= lt!2214314 (store ((as const (Array Context!9214 Bool)) false) lt!2214337 true))))

(assert (=> b!5430438 (= lt!2214337 (Context!9215 (Cons!61844 (reg!15552 (regOne!30958 r!7292)) Nil!61844)))))

(declare-fun b!5430439 () Bool)

(declare-fun res!2311004 () Bool)

(assert (=> b!5430439 (=> res!2311004 e!3364874)))

(declare-fun generalisedUnion!1152 (List!61968) Regex!15223)

(declare-fun unfocusZipperList!665 (List!61970) List!61968)

(assert (=> b!5430439 (= res!2311004 (not (= r!7292 (generalisedUnion!1152 (unfocusZipperList!665 zl!343)))))))

(declare-fun b!5430440 () Bool)

(assert (=> b!5430440 (= e!3364885 e!3364876)))

(declare-fun res!2311027 () Bool)

(assert (=> b!5430440 (=> res!2311027 e!3364876)))

(declare-fun regexDepth!179 (Regex!15223) Int)

(assert (=> b!5430440 (= res!2311027 (< (regexDepth!179 r!7292) (regexDepth!179 lt!2214306)))))

(assert (=> b!5430440 (= lt!2214306 (generalisedConcat!892 (t!375193 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun b!5430441 () Bool)

(declare-fun res!2311013 () Bool)

(assert (=> b!5430441 (=> res!2311013 e!3364883)))

(assert (=> b!5430441 (= res!2311013 (not (= (unfocusZipper!965 (Cons!61846 lt!2214325 Nil!61846)) lt!2214339)))))

(declare-fun b!5430442 () Bool)

(declare-fun tp!1498238 () Bool)

(declare-fun tp!1498242 () Bool)

(assert (=> b!5430442 (= e!3364870 (and tp!1498238 tp!1498242))))

(declare-fun b!5430443 () Bool)

(declare-fun res!2310996 () Bool)

(assert (=> b!5430443 (=> res!2310996 e!3364889)))

(declare-fun isEmpty!33845 (List!61968) Bool)

(assert (=> b!5430443 (= res!2310996 (isEmpty!33845 (t!375193 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun b!5430444 () Bool)

(declare-fun tp!1498243 () Bool)

(declare-fun tp!1498241 () Bool)

(assert (=> b!5430444 (= e!3364870 (and tp!1498243 tp!1498241))))

(declare-fun b!5430445 () Bool)

(declare-fun tp!1498240 () Bool)

(assert (=> b!5430445 (= e!3364888 tp!1498240)))

(assert (= (and start!569890 res!2310997) b!5430415))

(assert (= (and b!5430415 res!2311019) b!5430436))

(assert (= (and b!5430436 res!2311002) b!5430414))

(assert (= (and b!5430414 (not res!2311022)) b!5430426))

(assert (= (and b!5430426 (not res!2311005)) b!5430429))

(assert (= (and b!5430429 (not res!2310998)) b!5430421))

(assert (= (and b!5430421 (not res!2311010)) b!5430439))

(assert (= (and b!5430439 (not res!2311004)) b!5430410))

(assert (= (and b!5430410 (not res!2311015)) b!5430423))

(assert (= (and b!5430423 (not res!2311006)) b!5430443))

(assert (= (and b!5430443 (not res!2310996)) b!5430406))

(assert (= (and b!5430406 c!947424) b!5430407))

(assert (= (and b!5430406 (not c!947424)) b!5430431))

(assert (= (and b!5430407 (not res!2311001)) b!5430424))

(assert (= (and b!5430406 (not res!2311028)) b!5430434))

(assert (= (and b!5430434 res!2311009) b!5430417))

(assert (= (and b!5430434 (not res!2311021)) b!5430432))

(assert (= (and b!5430432 (not res!2311007)) b!5430425))

(assert (= (and b!5430425 (not res!2311020)) b!5430430))

(assert (= (and b!5430430 (not res!2311016)) b!5430428))

(assert (= (and b!5430428 (not res!2311000)) b!5430411))

(assert (= (and b!5430411 (not res!2311025)) b!5430405))

(assert (= (and b!5430405 (not res!2311003)) b!5430409))

(assert (= (and b!5430409 (not res!2311029)) b!5430438))

(assert (= (and b!5430438 (not res!2311018)) b!5430441))

(assert (= (and b!5430441 (not res!2311013)) b!5430419))

(assert (= (and b!5430419 (not res!2311012)) b!5430427))

(assert (= (and b!5430427 (not res!2310999)) b!5430408))

(assert (= (and b!5430408 (not res!2311024)) b!5430402))

(assert (= (and b!5430402 res!2311026) b!5430418))

(assert (= (and b!5430402 (not res!2311008)) b!5430404))

(assert (= (and b!5430404 (not res!2311014)) b!5430413))

(assert (= (and b!5430413 (not res!2311017)) b!5430435))

(assert (= (and b!5430435 (not res!2311023)) b!5430440))

(assert (= (and b!5430440 (not res!2311027)) b!5430412))

(assert (= (and b!5430412 (not res!2311011)) b!5430420))

(assert (= (and start!569890 ((_ is ElementMatch!15223) r!7292)) b!5430422))

(assert (= (and start!569890 ((_ is Concat!24068) r!7292)) b!5430442))

(assert (= (and start!569890 ((_ is Star!15223) r!7292)) b!5430403))

(assert (= (and start!569890 ((_ is Union!15223) r!7292)) b!5430444))

(assert (= (and start!569890 condSetEmpty!35427) setIsEmpty!35427))

(assert (= (and start!569890 (not condSetEmpty!35427)) setNonEmpty!35427))

(assert (= setNonEmpty!35427 b!5430433))

(assert (= b!5430416 b!5430445))

(assert (= (and start!569890 ((_ is Cons!61846) zl!343)) b!5430416))

(assert (= (and start!569890 ((_ is Cons!61845) s!2326)) b!5430437))

(declare-fun m!6453526 () Bool)

(assert (=> b!5430427 m!6453526))

(declare-fun m!6453528 () Bool)

(assert (=> b!5430439 m!6453528))

(assert (=> b!5430439 m!6453528))

(declare-fun m!6453530 () Bool)

(assert (=> b!5430439 m!6453530))

(declare-fun m!6453532 () Bool)

(assert (=> b!5430424 m!6453532))

(declare-fun m!6453534 () Bool)

(assert (=> b!5430441 m!6453534))

(declare-fun m!6453536 () Bool)

(assert (=> b!5430436 m!6453536))

(declare-fun m!6453538 () Bool)

(assert (=> setNonEmpty!35427 m!6453538))

(declare-fun m!6453540 () Bool)

(assert (=> b!5430429 m!6453540))

(declare-fun m!6453542 () Bool)

(assert (=> b!5430409 m!6453542))

(declare-fun m!6453544 () Bool)

(assert (=> b!5430415 m!6453544))

(assert (=> b!5430413 m!6453532))

(declare-fun m!6453546 () Bool)

(assert (=> b!5430425 m!6453546))

(declare-fun m!6453548 () Bool)

(assert (=> b!5430412 m!6453548))

(declare-fun m!6453550 () Bool)

(assert (=> b!5430412 m!6453550))

(declare-fun m!6453552 () Bool)

(assert (=> b!5430417 m!6453552))

(declare-fun m!6453554 () Bool)

(assert (=> b!5430438 m!6453554))

(declare-fun m!6453556 () Bool)

(assert (=> b!5430438 m!6453556))

(declare-fun m!6453558 () Bool)

(assert (=> b!5430438 m!6453558))

(declare-fun m!6453560 () Bool)

(assert (=> b!5430438 m!6453560))

(declare-fun m!6453562 () Bool)

(assert (=> b!5430438 m!6453562))

(declare-fun m!6453564 () Bool)

(assert (=> b!5430438 m!6453564))

(declare-fun m!6453566 () Bool)

(assert (=> b!5430438 m!6453566))

(declare-fun m!6453568 () Bool)

(assert (=> b!5430438 m!6453568))

(declare-fun m!6453570 () Bool)

(assert (=> b!5430438 m!6453570))

(declare-fun m!6453572 () Bool)

(assert (=> b!5430440 m!6453572))

(declare-fun m!6453574 () Bool)

(assert (=> b!5430440 m!6453574))

(declare-fun m!6453576 () Bool)

(assert (=> b!5430440 m!6453576))

(declare-fun m!6453578 () Bool)

(assert (=> b!5430430 m!6453578))

(declare-fun m!6453580 () Bool)

(assert (=> b!5430430 m!6453580))

(declare-fun m!6453582 () Bool)

(assert (=> b!5430430 m!6453582))

(declare-fun m!6453584 () Bool)

(assert (=> b!5430430 m!6453584))

(declare-fun m!6453586 () Bool)

(assert (=> b!5430430 m!6453586))

(declare-fun m!6453588 () Bool)

(assert (=> b!5430402 m!6453588))

(declare-fun m!6453590 () Bool)

(assert (=> b!5430443 m!6453590))

(declare-fun m!6453592 () Bool)

(assert (=> b!5430435 m!6453592))

(declare-fun m!6453594 () Bool)

(assert (=> b!5430435 m!6453594))

(declare-fun m!6453596 () Bool)

(assert (=> b!5430435 m!6453596))

(declare-fun m!6453598 () Bool)

(assert (=> b!5430435 m!6453598))

(declare-fun m!6453600 () Bool)

(assert (=> b!5430435 m!6453600))

(declare-fun m!6453602 () Bool)

(assert (=> b!5430428 m!6453602))

(declare-fun m!6453604 () Bool)

(assert (=> b!5430428 m!6453604))

(declare-fun m!6453606 () Bool)

(assert (=> b!5430416 m!6453606))

(declare-fun m!6453608 () Bool)

(assert (=> start!569890 m!6453608))

(declare-fun m!6453610 () Bool)

(assert (=> b!5430406 m!6453610))

(declare-fun m!6453612 () Bool)

(assert (=> b!5430406 m!6453612))

(declare-fun m!6453614 () Bool)

(assert (=> b!5430406 m!6453614))

(declare-fun m!6453616 () Bool)

(assert (=> b!5430406 m!6453616))

(declare-fun m!6453618 () Bool)

(assert (=> b!5430406 m!6453618))

(declare-fun m!6453620 () Bool)

(assert (=> b!5430406 m!6453620))

(assert (=> b!5430406 m!6453598))

(declare-fun m!6453622 () Bool)

(assert (=> b!5430419 m!6453622))

(declare-fun m!6453624 () Bool)

(assert (=> b!5430419 m!6453624))

(declare-fun m!6453626 () Bool)

(assert (=> b!5430419 m!6453626))

(declare-fun m!6453628 () Bool)

(assert (=> b!5430407 m!6453628))

(assert (=> b!5430407 m!6453588))

(declare-fun m!6453630 () Bool)

(assert (=> b!5430407 m!6453630))

(declare-fun m!6453632 () Bool)

(assert (=> b!5430426 m!6453632))

(declare-fun m!6453634 () Bool)

(assert (=> b!5430423 m!6453634))

(declare-fun m!6453636 () Bool)

(assert (=> b!5430423 m!6453636))

(declare-fun m!6453638 () Bool)

(assert (=> b!5430423 m!6453638))

(declare-fun m!6453640 () Bool)

(assert (=> b!5430423 m!6453640))

(assert (=> b!5430423 m!6453634))

(declare-fun m!6453642 () Bool)

(assert (=> b!5430423 m!6453642))

(assert (=> b!5430423 m!6453636))

(declare-fun m!6453644 () Bool)

(assert (=> b!5430423 m!6453644))

(declare-fun m!6453646 () Bool)

(assert (=> b!5430414 m!6453646))

(declare-fun m!6453648 () Bool)

(assert (=> b!5430414 m!6453648))

(declare-fun m!6453650 () Bool)

(assert (=> b!5430414 m!6453650))

(declare-fun m!6453652 () Bool)

(assert (=> b!5430420 m!6453652))

(declare-fun m!6453654 () Bool)

(assert (=> b!5430420 m!6453654))

(declare-fun m!6453656 () Bool)

(assert (=> b!5430420 m!6453656))

(declare-fun m!6453658 () Bool)

(assert (=> b!5430420 m!6453658))

(assert (=> b!5430418 m!6453532))

(check-sat (not b!5430413) (not b!5430442) (not b!5430441) (not b!5430430) (not b!5430409) tp_is_empty!39699 (not b!5430415) (not b!5430417) (not b!5430433) (not setNonEmpty!35427) (not b!5430425) (not b!5430403) (not b!5430423) (not b!5430424) (not b!5430407) (not b!5430428) (not b!5430443) (not b!5430406) (not b!5430445) (not b!5430420) (not b!5430444) (not b!5430440) (not b!5430402) (not b!5430437) (not b!5430418) (not b!5430419) (not b!5430416) (not b!5430435) (not b!5430412) (not b!5430436) (not b!5430439) (not b!5430429) (not b!5430414) (not b!5430426) (not b!5430427) (not b!5430438) (not start!569890))
(check-sat)
(get-model)

(declare-fun d!1731503 () Bool)

(declare-fun c!947428 () Bool)

(declare-fun isEmpty!33847 (List!61969) Bool)

(assert (=> d!1731503 (= c!947428 (isEmpty!33847 (t!375194 s!2326)))))

(declare-fun e!3364893 () Bool)

(assert (=> d!1731503 (= (matchZipper!1467 lt!2214319 (t!375194 s!2326)) e!3364893)))

(declare-fun b!5430456 () Bool)

(declare-fun nullableZipper!1466 ((InoxSet Context!9214)) Bool)

(assert (=> b!5430456 (= e!3364893 (nullableZipper!1466 lt!2214319))))

(declare-fun b!5430457 () Bool)

(declare-fun head!11649 (List!61969) C!30716)

(declare-fun tail!10746 (List!61969) List!61969)

(assert (=> b!5430457 (= e!3364893 (matchZipper!1467 (derivationStepZipper!1462 lt!2214319 (head!11649 (t!375194 s!2326))) (tail!10746 (t!375194 s!2326))))))

(assert (= (and d!1731503 c!947428) b!5430456))

(assert (= (and d!1731503 (not c!947428)) b!5430457))

(declare-fun m!6453660 () Bool)

(assert (=> d!1731503 m!6453660))

(declare-fun m!6453662 () Bool)

(assert (=> b!5430456 m!6453662))

(declare-fun m!6453664 () Bool)

(assert (=> b!5430457 m!6453664))

(assert (=> b!5430457 m!6453664))

(declare-fun m!6453666 () Bool)

(assert (=> b!5430457 m!6453666))

(declare-fun m!6453668 () Bool)

(assert (=> b!5430457 m!6453668))

(assert (=> b!5430457 m!6453666))

(assert (=> b!5430457 m!6453668))

(declare-fun m!6453670 () Bool)

(assert (=> b!5430457 m!6453670))

(assert (=> b!5430413 d!1731503))

(declare-fun bs!1254383 () Bool)

(declare-fun d!1731505 () Bool)

(assert (= bs!1254383 (and d!1731505 b!5430406)))

(declare-fun lambda!284968 () Int)

(assert (=> bs!1254383 (= lambda!284968 lambda!284964)))

(assert (=> d!1731505 true))

(assert (=> d!1731505 (= (derivationStepZipper!1462 lt!2214317 (h!68293 s!2326)) (flatMap!950 lt!2214317 lambda!284968))))

(declare-fun bs!1254384 () Bool)

(assert (= bs!1254384 d!1731505))

(declare-fun m!6453672 () Bool)

(assert (=> bs!1254384 m!6453672))

(assert (=> b!5430435 d!1731505))

(declare-fun d!1731507 () Bool)

(declare-fun choose!41183 ((InoxSet Context!9214) Int) (InoxSet Context!9214))

(assert (=> d!1731507 (= (flatMap!950 lt!2214317 lambda!284964) (choose!41183 lt!2214317 lambda!284964))))

(declare-fun bs!1254385 () Bool)

(assert (= bs!1254385 d!1731507))

(declare-fun m!6453674 () Bool)

(assert (=> bs!1254385 m!6453674))

(assert (=> b!5430435 d!1731507))

(declare-fun b!5430470 () Bool)

(declare-fun e!3364902 () (InoxSet Context!9214))

(assert (=> b!5430470 (= e!3364902 ((as const (Array Context!9214 Bool)) false))))

(declare-fun d!1731509 () Bool)

(declare-fun c!947436 () Bool)

(declare-fun e!3364900 () Bool)

(assert (=> d!1731509 (= c!947436 e!3364900)))

(declare-fun res!2311032 () Bool)

(assert (=> d!1731509 (=> (not res!2311032) (not e!3364900))))

(assert (=> d!1731509 (= res!2311032 ((_ is Cons!61844) (exprs!5107 lt!2214315)))))

(declare-fun e!3364901 () (InoxSet Context!9214))

(assert (=> d!1731509 (= (derivationStepZipperUp!595 lt!2214315 (h!68293 s!2326)) e!3364901)))

(declare-fun b!5430471 () Bool)

(assert (=> b!5430471 (= e!3364901 e!3364902)))

(declare-fun c!947435 () Bool)

(assert (=> b!5430471 (= c!947435 ((_ is Cons!61844) (exprs!5107 lt!2214315)))))

(declare-fun call!388849 () (InoxSet Context!9214))

(declare-fun b!5430472 () Bool)

(assert (=> b!5430472 (= e!3364901 ((_ map or) call!388849 (derivationStepZipperUp!595 (Context!9215 (t!375193 (exprs!5107 lt!2214315))) (h!68293 s!2326))))))

(declare-fun b!5430473 () Bool)

(assert (=> b!5430473 (= e!3364902 call!388849)))

(declare-fun b!5430474 () Bool)

(assert (=> b!5430474 (= e!3364900 (nullable!5392 (h!68292 (exprs!5107 lt!2214315))))))

(declare-fun bm!388844 () Bool)

(assert (=> bm!388844 (= call!388849 (derivationStepZipperDown!671 (h!68292 (exprs!5107 lt!2214315)) (Context!9215 (t!375193 (exprs!5107 lt!2214315))) (h!68293 s!2326)))))

(assert (= (and d!1731509 res!2311032) b!5430474))

(assert (= (and d!1731509 c!947436) b!5430472))

(assert (= (and d!1731509 (not c!947436)) b!5430471))

(assert (= (and b!5430471 c!947435) b!5430473))

(assert (= (and b!5430471 (not c!947435)) b!5430470))

(assert (= (or b!5430472 b!5430473) bm!388844))

(declare-fun m!6453676 () Bool)

(assert (=> b!5430472 m!6453676))

(declare-fun m!6453678 () Bool)

(assert (=> b!5430474 m!6453678))

(declare-fun m!6453680 () Bool)

(assert (=> bm!388844 m!6453680))

(assert (=> b!5430435 d!1731509))

(declare-fun d!1731511 () Bool)

(declare-fun dynLambda!24369 (Int Context!9214) (InoxSet Context!9214))

(assert (=> d!1731511 (= (flatMap!950 lt!2214317 lambda!284964) (dynLambda!24369 lambda!284964 lt!2214315))))

(declare-fun lt!2214345 () Unit!154414)

(declare-fun choose!41184 ((InoxSet Context!9214) Context!9214 Int) Unit!154414)

(assert (=> d!1731511 (= lt!2214345 (choose!41184 lt!2214317 lt!2214315 lambda!284964))))

(assert (=> d!1731511 (= lt!2214317 (store ((as const (Array Context!9214 Bool)) false) lt!2214315 true))))

(assert (=> d!1731511 (= (lemmaFlatMapOnSingletonSet!482 lt!2214317 lt!2214315 lambda!284964) lt!2214345)))

(declare-fun b_lambda!207221 () Bool)

(assert (=> (not b_lambda!207221) (not d!1731511)))

(declare-fun bs!1254386 () Bool)

(assert (= bs!1254386 d!1731511))

(assert (=> bs!1254386 m!6453600))

(declare-fun m!6453682 () Bool)

(assert (=> bs!1254386 m!6453682))

(declare-fun m!6453684 () Bool)

(assert (=> bs!1254386 m!6453684))

(assert (=> bs!1254386 m!6453596))

(assert (=> b!5430435 d!1731511))

(declare-fun b!5430481 () Bool)

(assert (=> b!5430481 true))

(declare-fun bs!1254387 () Bool)

(declare-fun b!5430483 () Bool)

(assert (= bs!1254387 (and b!5430483 b!5430481)))

(declare-fun lt!2214354 () Int)

(declare-fun lt!2214356 () Int)

(declare-fun lambda!284976 () Int)

(declare-fun lambda!284977 () Int)

(assert (=> bs!1254387 (= (= lt!2214356 lt!2214354) (= lambda!284977 lambda!284976))))

(assert (=> b!5430483 true))

(declare-fun d!1731513 () Bool)

(declare-fun e!3364907 () Bool)

(assert (=> d!1731513 e!3364907))

(declare-fun res!2311035 () Bool)

(assert (=> d!1731513 (=> (not res!2311035) (not e!3364907))))

(assert (=> d!1731513 (= res!2311035 (>= lt!2214356 0))))

(declare-fun e!3364908 () Int)

(assert (=> d!1731513 (= lt!2214356 e!3364908)))

(declare-fun c!947445 () Bool)

(assert (=> d!1731513 (= c!947445 ((_ is Cons!61846) zl!343))))

(assert (=> d!1731513 (= (zipperDepth!164 zl!343) lt!2214356)))

(assert (=> b!5430481 (= e!3364908 lt!2214354)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!92 (Context!9214) Int)

(assert (=> b!5430481 (= lt!2214354 (maxBigInt!0 (contextDepth!92 (h!68294 zl!343)) (zipperDepth!164 (t!375195 zl!343))))))

(declare-fun lambda!284975 () Int)

(declare-fun lt!2214355 () Unit!154414)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!86 (List!61970 Int Int Int) Unit!154414)

(assert (=> b!5430481 (= lt!2214355 (lemmaForallContextDepthBiggerThanTransitive!86 (t!375195 zl!343) lt!2214354 (zipperDepth!164 (t!375195 zl!343)) lambda!284975))))

(declare-fun forall!14561 (List!61970 Int) Bool)

(assert (=> b!5430481 (forall!14561 (t!375195 zl!343) lambda!284976)))

(declare-fun lt!2214357 () Unit!154414)

(assert (=> b!5430481 (= lt!2214357 lt!2214355)))

(declare-fun b!5430482 () Bool)

(assert (=> b!5430482 (= e!3364908 0)))

(assert (=> b!5430483 (= e!3364907 (forall!14561 zl!343 lambda!284977))))

(assert (= (and d!1731513 c!947445) b!5430481))

(assert (= (and d!1731513 (not c!947445)) b!5430482))

(assert (= (and d!1731513 res!2311035) b!5430483))

(declare-fun m!6453692 () Bool)

(assert (=> b!5430481 m!6453692))

(declare-fun m!6453694 () Bool)

(assert (=> b!5430481 m!6453694))

(declare-fun m!6453696 () Bool)

(assert (=> b!5430481 m!6453696))

(declare-fun m!6453698 () Bool)

(assert (=> b!5430481 m!6453698))

(assert (=> b!5430481 m!6453692))

(assert (=> b!5430481 m!6453698))

(assert (=> b!5430481 m!6453692))

(declare-fun m!6453702 () Bool)

(assert (=> b!5430481 m!6453702))

(declare-fun m!6453704 () Bool)

(assert (=> b!5430483 m!6453704))

(assert (=> b!5430412 d!1731513))

(declare-fun bs!1254390 () Bool)

(declare-fun b!5430486 () Bool)

(assert (= bs!1254390 (and b!5430486 b!5430481)))

(declare-fun lambda!284978 () Int)

(assert (=> bs!1254390 (= lambda!284978 lambda!284975)))

(declare-fun lambda!284979 () Int)

(declare-fun lt!2214361 () Int)

(assert (=> bs!1254390 (= (= lt!2214361 lt!2214354) (= lambda!284979 lambda!284976))))

(declare-fun bs!1254391 () Bool)

(assert (= bs!1254391 (and b!5430486 b!5430483)))

(assert (=> bs!1254391 (= (= lt!2214361 lt!2214356) (= lambda!284979 lambda!284977))))

(assert (=> b!5430486 true))

(declare-fun bs!1254392 () Bool)

(declare-fun b!5430488 () Bool)

(assert (= bs!1254392 (and b!5430488 b!5430481)))

(declare-fun lt!2214363 () Int)

(declare-fun lambda!284980 () Int)

(assert (=> bs!1254392 (= (= lt!2214363 lt!2214354) (= lambda!284980 lambda!284976))))

(declare-fun bs!1254393 () Bool)

(assert (= bs!1254393 (and b!5430488 b!5430483)))

(assert (=> bs!1254393 (= (= lt!2214363 lt!2214356) (= lambda!284980 lambda!284977))))

(declare-fun bs!1254394 () Bool)

(assert (= bs!1254394 (and b!5430488 b!5430486)))

(assert (=> bs!1254394 (= (= lt!2214363 lt!2214361) (= lambda!284980 lambda!284979))))

(assert (=> b!5430488 true))

(declare-fun d!1731521 () Bool)

(declare-fun e!3364909 () Bool)

(assert (=> d!1731521 e!3364909))

(declare-fun res!2311036 () Bool)

(assert (=> d!1731521 (=> (not res!2311036) (not e!3364909))))

(assert (=> d!1731521 (= res!2311036 (>= lt!2214363 0))))

(declare-fun e!3364910 () Int)

(assert (=> d!1731521 (= lt!2214363 e!3364910)))

(declare-fun c!947446 () Bool)

(assert (=> d!1731521 (= c!947446 ((_ is Cons!61846) lt!2214336))))

(assert (=> d!1731521 (= (zipperDepth!164 lt!2214336) lt!2214363)))

(assert (=> b!5430486 (= e!3364910 lt!2214361)))

(assert (=> b!5430486 (= lt!2214361 (maxBigInt!0 (contextDepth!92 (h!68294 lt!2214336)) (zipperDepth!164 (t!375195 lt!2214336))))))

(declare-fun lt!2214362 () Unit!154414)

(assert (=> b!5430486 (= lt!2214362 (lemmaForallContextDepthBiggerThanTransitive!86 (t!375195 lt!2214336) lt!2214361 (zipperDepth!164 (t!375195 lt!2214336)) lambda!284978))))

(assert (=> b!5430486 (forall!14561 (t!375195 lt!2214336) lambda!284979)))

(declare-fun lt!2214364 () Unit!154414)

(assert (=> b!5430486 (= lt!2214364 lt!2214362)))

(declare-fun b!5430487 () Bool)

(assert (=> b!5430487 (= e!3364910 0)))

(assert (=> b!5430488 (= e!3364909 (forall!14561 lt!2214336 lambda!284980))))

(assert (= (and d!1731521 c!947446) b!5430486))

(assert (= (and d!1731521 (not c!947446)) b!5430487))

(assert (= (and d!1731521 res!2311036) b!5430488))

(declare-fun m!6453722 () Bool)

(assert (=> b!5430486 m!6453722))

(declare-fun m!6453724 () Bool)

(assert (=> b!5430486 m!6453724))

(declare-fun m!6453726 () Bool)

(assert (=> b!5430486 m!6453726))

(declare-fun m!6453728 () Bool)

(assert (=> b!5430486 m!6453728))

(assert (=> b!5430486 m!6453722))

(assert (=> b!5430486 m!6453728))

(assert (=> b!5430486 m!6453722))

(declare-fun m!6453730 () Bool)

(assert (=> b!5430486 m!6453730))

(declare-fun m!6453732 () Bool)

(assert (=> b!5430488 m!6453732))

(assert (=> b!5430412 d!1731521))

(declare-fun bs!1254399 () Bool)

(declare-fun d!1731531 () Bool)

(assert (= bs!1254399 (and d!1731531 b!5430420)))

(declare-fun lambda!284983 () Int)

(assert (=> bs!1254399 (= lambda!284983 lambda!284965)))

(assert (=> d!1731531 (= (inv!81304 (h!68294 zl!343)) (forall!14560 (exprs!5107 (h!68294 zl!343)) lambda!284983))))

(declare-fun bs!1254400 () Bool)

(assert (= bs!1254400 d!1731531))

(declare-fun m!6453734 () Bool)

(assert (=> bs!1254400 m!6453734))

(assert (=> b!5430416 d!1731531))

(declare-fun bs!1254412 () Bool)

(declare-fun b!5430642 () Bool)

(assert (= bs!1254412 (and b!5430642 b!5430423)))

(declare-fun lambda!284997 () Int)

(assert (=> bs!1254412 (not (= lambda!284997 lambda!284962))))

(assert (=> bs!1254412 (not (= lambda!284997 lambda!284963))))

(assert (=> b!5430642 true))

(assert (=> b!5430642 true))

(declare-fun bs!1254413 () Bool)

(declare-fun b!5430635 () Bool)

(assert (= bs!1254413 (and b!5430635 b!5430423)))

(declare-fun lambda!284998 () Int)

(assert (=> bs!1254413 (not (= lambda!284998 lambda!284962))))

(assert (=> bs!1254413 (= lambda!284998 lambda!284963)))

(declare-fun bs!1254414 () Bool)

(assert (= bs!1254414 (and b!5430635 b!5430642)))

(assert (=> bs!1254414 (not (= lambda!284998 lambda!284997))))

(assert (=> b!5430635 true))

(assert (=> b!5430635 true))

(declare-fun b!5430632 () Bool)

(declare-fun e!3365002 () Bool)

(declare-fun e!3365000 () Bool)

(assert (=> b!5430632 (= e!3365002 e!3365000)))

(declare-fun res!2311082 () Bool)

(assert (=> b!5430632 (= res!2311082 (matchRSpec!2326 (regOne!30959 r!7292) s!2326))))

(assert (=> b!5430632 (=> res!2311082 e!3365000)))

(declare-fun b!5430633 () Bool)

(declare-fun e!3365001 () Bool)

(declare-fun e!3365003 () Bool)

(assert (=> b!5430633 (= e!3365001 e!3365003)))

(declare-fun res!2311083 () Bool)

(assert (=> b!5430633 (= res!2311083 (not ((_ is EmptyLang!15223) r!7292)))))

(assert (=> b!5430633 (=> (not res!2311083) (not e!3365003))))

(declare-fun b!5430634 () Bool)

(declare-fun e!3365004 () Bool)

(assert (=> b!5430634 (= e!3365004 (= s!2326 (Cons!61845 (c!947425 r!7292) Nil!61845)))))

(declare-fun e!3364998 () Bool)

(declare-fun call!388872 () Bool)

(assert (=> b!5430635 (= e!3364998 call!388872)))

(declare-fun b!5430636 () Bool)

(assert (=> b!5430636 (= e!3365000 (matchRSpec!2326 (regTwo!30959 r!7292) s!2326))))

(declare-fun c!947498 () Bool)

(declare-fun bm!388866 () Bool)

(assert (=> bm!388866 (= call!388872 (Exists!2404 (ite c!947498 lambda!284997 lambda!284998)))))

(declare-fun b!5430637 () Bool)

(assert (=> b!5430637 (= e!3365002 e!3364998)))

(assert (=> b!5430637 (= c!947498 ((_ is Star!15223) r!7292))))

(declare-fun bm!388867 () Bool)

(declare-fun call!388871 () Bool)

(assert (=> bm!388867 (= call!388871 (isEmpty!33847 s!2326))))

(declare-fun b!5430638 () Bool)

(declare-fun res!2311084 () Bool)

(declare-fun e!3364999 () Bool)

(assert (=> b!5430638 (=> res!2311084 e!3364999)))

(assert (=> b!5430638 (= res!2311084 call!388871)))

(assert (=> b!5430638 (= e!3364998 e!3364999)))

(declare-fun b!5430639 () Bool)

(assert (=> b!5430639 (= e!3365001 call!388871)))

(declare-fun b!5430640 () Bool)

(declare-fun c!947497 () Bool)

(assert (=> b!5430640 (= c!947497 ((_ is Union!15223) r!7292))))

(assert (=> b!5430640 (= e!3365004 e!3365002)))

(declare-fun d!1731533 () Bool)

(declare-fun c!947500 () Bool)

(assert (=> d!1731533 (= c!947500 ((_ is EmptyExpr!15223) r!7292))))

(assert (=> d!1731533 (= (matchRSpec!2326 r!7292 s!2326) e!3365001)))

(declare-fun b!5430641 () Bool)

(declare-fun c!947499 () Bool)

(assert (=> b!5430641 (= c!947499 ((_ is ElementMatch!15223) r!7292))))

(assert (=> b!5430641 (= e!3365003 e!3365004)))

(assert (=> b!5430642 (= e!3364999 call!388872)))

(assert (= (and d!1731533 c!947500) b!5430639))

(assert (= (and d!1731533 (not c!947500)) b!5430633))

(assert (= (and b!5430633 res!2311083) b!5430641))

(assert (= (and b!5430641 c!947499) b!5430634))

(assert (= (and b!5430641 (not c!947499)) b!5430640))

(assert (= (and b!5430640 c!947497) b!5430632))

(assert (= (and b!5430640 (not c!947497)) b!5430637))

(assert (= (and b!5430632 (not res!2311082)) b!5430636))

(assert (= (and b!5430637 c!947498) b!5430638))

(assert (= (and b!5430637 (not c!947498)) b!5430635))

(assert (= (and b!5430638 (not res!2311084)) b!5430642))

(assert (= (or b!5430642 b!5430635) bm!388866))

(assert (= (or b!5430639 b!5430638) bm!388867))

(declare-fun m!6453832 () Bool)

(assert (=> b!5430632 m!6453832))

(declare-fun m!6453834 () Bool)

(assert (=> b!5430636 m!6453834))

(declare-fun m!6453836 () Bool)

(assert (=> bm!388866 m!6453836))

(declare-fun m!6453838 () Bool)

(assert (=> bm!388867 m!6453838))

(assert (=> b!5430414 d!1731533))

(declare-fun b!5430747 () Bool)

(declare-fun res!2311130 () Bool)

(declare-fun e!3365065 () Bool)

(assert (=> b!5430747 (=> res!2311130 e!3365065)))

(declare-fun e!3365063 () Bool)

(assert (=> b!5430747 (= res!2311130 e!3365063)))

(declare-fun res!2311127 () Bool)

(assert (=> b!5430747 (=> (not res!2311127) (not e!3365063))))

(declare-fun lt!2214381 () Bool)

(assert (=> b!5430747 (= res!2311127 lt!2214381)))

(declare-fun b!5430748 () Bool)

(assert (=> b!5430748 (= e!3365063 (= (head!11649 s!2326) (c!947425 r!7292)))))

(declare-fun b!5430749 () Bool)

(declare-fun e!3365067 () Bool)

(assert (=> b!5430749 (= e!3365067 (not (= (head!11649 s!2326) (c!947425 r!7292))))))

(declare-fun b!5430750 () Bool)

(declare-fun e!3365062 () Bool)

(assert (=> b!5430750 (= e!3365062 (not lt!2214381))))

(declare-fun b!5430751 () Bool)

(declare-fun res!2311124 () Bool)

(assert (=> b!5430751 (=> res!2311124 e!3365067)))

(assert (=> b!5430751 (= res!2311124 (not (isEmpty!33847 (tail!10746 s!2326))))))

(declare-fun b!5430752 () Bool)

(declare-fun e!3365068 () Bool)

(assert (=> b!5430752 (= e!3365065 e!3365068)))

(declare-fun res!2311123 () Bool)

(assert (=> b!5430752 (=> (not res!2311123) (not e!3365068))))

(assert (=> b!5430752 (= res!2311123 (not lt!2214381))))

(declare-fun b!5430753 () Bool)

(declare-fun e!3365066 () Bool)

(declare-fun call!388899 () Bool)

(assert (=> b!5430753 (= e!3365066 (= lt!2214381 call!388899))))

(declare-fun b!5430754 () Bool)

(assert (=> b!5430754 (= e!3365066 e!3365062)))

(declare-fun c!947534 () Bool)

(assert (=> b!5430754 (= c!947534 ((_ is EmptyLang!15223) r!7292))))

(declare-fun b!5430755 () Bool)

(declare-fun res!2311125 () Bool)

(assert (=> b!5430755 (=> res!2311125 e!3365065)))

(assert (=> b!5430755 (= res!2311125 (not ((_ is ElementMatch!15223) r!7292)))))

(assert (=> b!5430755 (= e!3365062 e!3365065)))

(declare-fun b!5430756 () Bool)

(declare-fun e!3365064 () Bool)

(assert (=> b!5430756 (= e!3365064 (nullable!5392 r!7292))))

(declare-fun b!5430757 () Bool)

(declare-fun res!2311126 () Bool)

(assert (=> b!5430757 (=> (not res!2311126) (not e!3365063))))

(assert (=> b!5430757 (= res!2311126 (not call!388899))))

(declare-fun b!5430758 () Bool)

(declare-fun derivativeStep!4286 (Regex!15223 C!30716) Regex!15223)

(assert (=> b!5430758 (= e!3365064 (matchR!7408 (derivativeStep!4286 r!7292 (head!11649 s!2326)) (tail!10746 s!2326)))))

(declare-fun b!5430759 () Bool)

(assert (=> b!5430759 (= e!3365068 e!3365067)))

(declare-fun res!2311129 () Bool)

(assert (=> b!5430759 (=> res!2311129 e!3365067)))

(assert (=> b!5430759 (= res!2311129 call!388899)))

(declare-fun b!5430760 () Bool)

(declare-fun res!2311128 () Bool)

(assert (=> b!5430760 (=> (not res!2311128) (not e!3365063))))

(assert (=> b!5430760 (= res!2311128 (isEmpty!33847 (tail!10746 s!2326)))))

(declare-fun bm!388894 () Bool)

(assert (=> bm!388894 (= call!388899 (isEmpty!33847 s!2326))))

(declare-fun d!1731569 () Bool)

(assert (=> d!1731569 e!3365066))

(declare-fun c!947535 () Bool)

(assert (=> d!1731569 (= c!947535 ((_ is EmptyExpr!15223) r!7292))))

(assert (=> d!1731569 (= lt!2214381 e!3365064)))

(declare-fun c!947536 () Bool)

(assert (=> d!1731569 (= c!947536 (isEmpty!33847 s!2326))))

(assert (=> d!1731569 (validRegex!6959 r!7292)))

(assert (=> d!1731569 (= (matchR!7408 r!7292 s!2326) lt!2214381)))

(assert (= (and d!1731569 c!947536) b!5430756))

(assert (= (and d!1731569 (not c!947536)) b!5430758))

(assert (= (and d!1731569 c!947535) b!5430753))

(assert (= (and d!1731569 (not c!947535)) b!5430754))

(assert (= (and b!5430754 c!947534) b!5430750))

(assert (= (and b!5430754 (not c!947534)) b!5430755))

(assert (= (and b!5430755 (not res!2311125)) b!5430747))

(assert (= (and b!5430747 res!2311127) b!5430757))

(assert (= (and b!5430757 res!2311126) b!5430760))

(assert (= (and b!5430760 res!2311128) b!5430748))

(assert (= (and b!5430747 (not res!2311130)) b!5430752))

(assert (= (and b!5430752 res!2311123) b!5430759))

(assert (= (and b!5430759 (not res!2311129)) b!5430751))

(assert (= (and b!5430751 (not res!2311124)) b!5430749))

(assert (= (or b!5430753 b!5430757 b!5430759) bm!388894))

(declare-fun m!6453854 () Bool)

(assert (=> b!5430756 m!6453854))

(declare-fun m!6453856 () Bool)

(assert (=> b!5430760 m!6453856))

(assert (=> b!5430760 m!6453856))

(declare-fun m!6453858 () Bool)

(assert (=> b!5430760 m!6453858))

(assert (=> b!5430751 m!6453856))

(assert (=> b!5430751 m!6453856))

(assert (=> b!5430751 m!6453858))

(assert (=> bm!388894 m!6453838))

(declare-fun m!6453860 () Bool)

(assert (=> b!5430749 m!6453860))

(assert (=> d!1731569 m!6453838))

(assert (=> d!1731569 m!6453608))

(assert (=> b!5430758 m!6453860))

(assert (=> b!5430758 m!6453860))

(declare-fun m!6453862 () Bool)

(assert (=> b!5430758 m!6453862))

(assert (=> b!5430758 m!6453856))

(assert (=> b!5430758 m!6453862))

(assert (=> b!5430758 m!6453856))

(declare-fun m!6453864 () Bool)

(assert (=> b!5430758 m!6453864))

(assert (=> b!5430748 m!6453860))

(assert (=> b!5430414 d!1731569))

(declare-fun d!1731575 () Bool)

(assert (=> d!1731575 (= (matchR!7408 r!7292 s!2326) (matchRSpec!2326 r!7292 s!2326))))

(declare-fun lt!2214386 () Unit!154414)

(declare-fun choose!41185 (Regex!15223 List!61969) Unit!154414)

(assert (=> d!1731575 (= lt!2214386 (choose!41185 r!7292 s!2326))))

(assert (=> d!1731575 (validRegex!6959 r!7292)))

(assert (=> d!1731575 (= (mainMatchTheorem!2326 r!7292 s!2326) lt!2214386)))

(declare-fun bs!1254418 () Bool)

(assert (= bs!1254418 d!1731575))

(assert (=> bs!1254418 m!6453648))

(assert (=> bs!1254418 m!6453646))

(declare-fun m!6453866 () Bool)

(assert (=> bs!1254418 m!6453866))

(assert (=> bs!1254418 m!6453608))

(assert (=> b!5430414 d!1731575))

(declare-fun d!1731577 () Bool)

(declare-fun e!3365092 () Bool)

(assert (=> d!1731577 e!3365092))

(declare-fun res!2311157 () Bool)

(assert (=> d!1731577 (=> (not res!2311157) (not e!3365092))))

(declare-fun lt!2214390 () List!61970)

(declare-fun noDuplicate!1415 (List!61970) Bool)

(assert (=> d!1731577 (= res!2311157 (noDuplicate!1415 lt!2214390))))

(declare-fun choose!41186 ((InoxSet Context!9214)) List!61970)

(assert (=> d!1731577 (= lt!2214390 (choose!41186 z!1189))))

(assert (=> d!1731577 (= (toList!9007 z!1189) lt!2214390)))

(declare-fun b!5430805 () Bool)

(declare-fun content!11132 (List!61970) (InoxSet Context!9214))

(assert (=> b!5430805 (= e!3365092 (= (content!11132 lt!2214390) z!1189))))

(assert (= (and d!1731577 res!2311157) b!5430805))

(declare-fun m!6453876 () Bool)

(assert (=> d!1731577 m!6453876))

(declare-fun m!6453878 () Bool)

(assert (=> d!1731577 m!6453878))

(declare-fun m!6453880 () Bool)

(assert (=> b!5430805 m!6453880))

(assert (=> b!5430415 d!1731577))

(declare-fun d!1731581 () Bool)

(declare-fun lt!2214396 () Regex!15223)

(assert (=> d!1731581 (validRegex!6959 lt!2214396)))

(assert (=> d!1731581 (= lt!2214396 (generalisedUnion!1152 (unfocusZipperList!665 zl!343)))))

(assert (=> d!1731581 (= (unfocusZipper!965 zl!343) lt!2214396)))

(declare-fun bs!1254420 () Bool)

(assert (= bs!1254420 d!1731581))

(declare-fun m!6453896 () Bool)

(assert (=> bs!1254420 m!6453896))

(assert (=> bs!1254420 m!6453528))

(assert (=> bs!1254420 m!6453528))

(assert (=> bs!1254420 m!6453530))

(assert (=> b!5430436 d!1731581))

(assert (=> b!5430418 d!1731503))

(declare-fun b!5430808 () Bool)

(declare-fun res!2311165 () Bool)

(declare-fun e!3365097 () Bool)

(assert (=> b!5430808 (=> res!2311165 e!3365097)))

(declare-fun e!3365095 () Bool)

(assert (=> b!5430808 (= res!2311165 e!3365095)))

(declare-fun res!2311162 () Bool)

(assert (=> b!5430808 (=> (not res!2311162) (not e!3365095))))

(declare-fun lt!2214397 () Bool)

(assert (=> b!5430808 (= res!2311162 lt!2214397)))

(declare-fun b!5430809 () Bool)

(assert (=> b!5430809 (= e!3365095 (= (head!11649 s!2326) (c!947425 lt!2214318)))))

(declare-fun b!5430810 () Bool)

(declare-fun e!3365099 () Bool)

(assert (=> b!5430810 (= e!3365099 (not (= (head!11649 s!2326) (c!947425 lt!2214318))))))

(declare-fun b!5430811 () Bool)

(declare-fun e!3365094 () Bool)

(assert (=> b!5430811 (= e!3365094 (not lt!2214397))))

(declare-fun b!5430812 () Bool)

(declare-fun res!2311159 () Bool)

(assert (=> b!5430812 (=> res!2311159 e!3365099)))

(assert (=> b!5430812 (= res!2311159 (not (isEmpty!33847 (tail!10746 s!2326))))))

(declare-fun b!5430813 () Bool)

(declare-fun e!3365100 () Bool)

(assert (=> b!5430813 (= e!3365097 e!3365100)))

(declare-fun res!2311158 () Bool)

(assert (=> b!5430813 (=> (not res!2311158) (not e!3365100))))

(assert (=> b!5430813 (= res!2311158 (not lt!2214397))))

(declare-fun b!5430814 () Bool)

(declare-fun e!3365098 () Bool)

(declare-fun call!388903 () Bool)

(assert (=> b!5430814 (= e!3365098 (= lt!2214397 call!388903))))

(declare-fun b!5430815 () Bool)

(assert (=> b!5430815 (= e!3365098 e!3365094)))

(declare-fun c!947547 () Bool)

(assert (=> b!5430815 (= c!947547 ((_ is EmptyLang!15223) lt!2214318))))

(declare-fun b!5430816 () Bool)

(declare-fun res!2311160 () Bool)

(assert (=> b!5430816 (=> res!2311160 e!3365097)))

(assert (=> b!5430816 (= res!2311160 (not ((_ is ElementMatch!15223) lt!2214318)))))

(assert (=> b!5430816 (= e!3365094 e!3365097)))

(declare-fun b!5430817 () Bool)

(declare-fun e!3365096 () Bool)

(assert (=> b!5430817 (= e!3365096 (nullable!5392 lt!2214318))))

(declare-fun b!5430818 () Bool)

(declare-fun res!2311161 () Bool)

(assert (=> b!5430818 (=> (not res!2311161) (not e!3365095))))

(assert (=> b!5430818 (= res!2311161 (not call!388903))))

(declare-fun b!5430819 () Bool)

(assert (=> b!5430819 (= e!3365096 (matchR!7408 (derivativeStep!4286 lt!2214318 (head!11649 s!2326)) (tail!10746 s!2326)))))

(declare-fun b!5430820 () Bool)

(assert (=> b!5430820 (= e!3365100 e!3365099)))

(declare-fun res!2311164 () Bool)

(assert (=> b!5430820 (=> res!2311164 e!3365099)))

(assert (=> b!5430820 (= res!2311164 call!388903)))

(declare-fun b!5430821 () Bool)

(declare-fun res!2311163 () Bool)

(assert (=> b!5430821 (=> (not res!2311163) (not e!3365095))))

(assert (=> b!5430821 (= res!2311163 (isEmpty!33847 (tail!10746 s!2326)))))

(declare-fun bm!388898 () Bool)

(assert (=> bm!388898 (= call!388903 (isEmpty!33847 s!2326))))

(declare-fun d!1731587 () Bool)

(assert (=> d!1731587 e!3365098))

(declare-fun c!947548 () Bool)

(assert (=> d!1731587 (= c!947548 ((_ is EmptyExpr!15223) lt!2214318))))

(assert (=> d!1731587 (= lt!2214397 e!3365096)))

(declare-fun c!947549 () Bool)

(assert (=> d!1731587 (= c!947549 (isEmpty!33847 s!2326))))

(assert (=> d!1731587 (validRegex!6959 lt!2214318)))

(assert (=> d!1731587 (= (matchR!7408 lt!2214318 s!2326) lt!2214397)))

(assert (= (and d!1731587 c!947549) b!5430817))

(assert (= (and d!1731587 (not c!947549)) b!5430819))

(assert (= (and d!1731587 c!947548) b!5430814))

(assert (= (and d!1731587 (not c!947548)) b!5430815))

(assert (= (and b!5430815 c!947547) b!5430811))

(assert (= (and b!5430815 (not c!947547)) b!5430816))

(assert (= (and b!5430816 (not res!2311160)) b!5430808))

(assert (= (and b!5430808 res!2311162) b!5430818))

(assert (= (and b!5430818 res!2311161) b!5430821))

(assert (= (and b!5430821 res!2311163) b!5430809))

(assert (= (and b!5430808 (not res!2311165)) b!5430813))

(assert (= (and b!5430813 res!2311158) b!5430820))

(assert (= (and b!5430820 (not res!2311164)) b!5430812))

(assert (= (and b!5430812 (not res!2311159)) b!5430810))

(assert (= (or b!5430814 b!5430818 b!5430820) bm!388898))

(declare-fun m!6453898 () Bool)

(assert (=> b!5430817 m!6453898))

(assert (=> b!5430821 m!6453856))

(assert (=> b!5430821 m!6453856))

(assert (=> b!5430821 m!6453858))

(assert (=> b!5430812 m!6453856))

(assert (=> b!5430812 m!6453856))

(assert (=> b!5430812 m!6453858))

(assert (=> bm!388898 m!6453838))

(assert (=> b!5430810 m!6453860))

(assert (=> d!1731587 m!6453838))

(declare-fun m!6453900 () Bool)

(assert (=> d!1731587 m!6453900))

(assert (=> b!5430819 m!6453860))

(assert (=> b!5430819 m!6453860))

(declare-fun m!6453902 () Bool)

(assert (=> b!5430819 m!6453902))

(assert (=> b!5430819 m!6453856))

(assert (=> b!5430819 m!6453902))

(assert (=> b!5430819 m!6453856))

(declare-fun m!6453904 () Bool)

(assert (=> b!5430819 m!6453904))

(assert (=> b!5430809 m!6453860))

(assert (=> b!5430419 d!1731587))

(declare-fun bs!1254421 () Bool)

(declare-fun b!5430832 () Bool)

(assert (= bs!1254421 (and b!5430832 b!5430423)))

(declare-fun lambda!285005 () Int)

(assert (=> bs!1254421 (not (= lambda!285005 lambda!284962))))

(assert (=> bs!1254421 (not (= lambda!285005 lambda!284963))))

(declare-fun bs!1254422 () Bool)

(assert (= bs!1254422 (and b!5430832 b!5430642)))

(assert (=> bs!1254422 (= (and (= (reg!15552 lt!2214318) (reg!15552 r!7292)) (= lt!2214318 r!7292)) (= lambda!285005 lambda!284997))))

(declare-fun bs!1254423 () Bool)

(assert (= bs!1254423 (and b!5430832 b!5430635)))

(assert (=> bs!1254423 (not (= lambda!285005 lambda!284998))))

(assert (=> b!5430832 true))

(assert (=> b!5430832 true))

(declare-fun bs!1254424 () Bool)

(declare-fun b!5430825 () Bool)

(assert (= bs!1254424 (and b!5430825 b!5430642)))

(declare-fun lambda!285006 () Int)

(assert (=> bs!1254424 (not (= lambda!285006 lambda!284997))))

(declare-fun bs!1254425 () Bool)

(assert (= bs!1254425 (and b!5430825 b!5430423)))

(assert (=> bs!1254425 (not (= lambda!285006 lambda!284962))))

(assert (=> bs!1254425 (= (and (= (regOne!30958 lt!2214318) (regOne!30958 r!7292)) (= (regTwo!30958 lt!2214318) (regTwo!30958 r!7292))) (= lambda!285006 lambda!284963))))

(declare-fun bs!1254426 () Bool)

(assert (= bs!1254426 (and b!5430825 b!5430635)))

(assert (=> bs!1254426 (= (and (= (regOne!30958 lt!2214318) (regOne!30958 r!7292)) (= (regTwo!30958 lt!2214318) (regTwo!30958 r!7292))) (= lambda!285006 lambda!284998))))

(declare-fun bs!1254427 () Bool)

(assert (= bs!1254427 (and b!5430825 b!5430832)))

(assert (=> bs!1254427 (not (= lambda!285006 lambda!285005))))

(assert (=> b!5430825 true))

(assert (=> b!5430825 true))

(declare-fun b!5430822 () Bool)

(declare-fun e!3365105 () Bool)

(declare-fun e!3365103 () Bool)

(assert (=> b!5430822 (= e!3365105 e!3365103)))

(declare-fun res!2311166 () Bool)

(assert (=> b!5430822 (= res!2311166 (matchRSpec!2326 (regOne!30959 lt!2214318) s!2326))))

(assert (=> b!5430822 (=> res!2311166 e!3365103)))

(declare-fun b!5430823 () Bool)

(declare-fun e!3365104 () Bool)

(declare-fun e!3365106 () Bool)

(assert (=> b!5430823 (= e!3365104 e!3365106)))

(declare-fun res!2311167 () Bool)

(assert (=> b!5430823 (= res!2311167 (not ((_ is EmptyLang!15223) lt!2214318)))))

(assert (=> b!5430823 (=> (not res!2311167) (not e!3365106))))

(declare-fun b!5430824 () Bool)

(declare-fun e!3365107 () Bool)

(assert (=> b!5430824 (= e!3365107 (= s!2326 (Cons!61845 (c!947425 lt!2214318) Nil!61845)))))

(declare-fun e!3365101 () Bool)

(declare-fun call!388905 () Bool)

(assert (=> b!5430825 (= e!3365101 call!388905)))

(declare-fun b!5430826 () Bool)

(assert (=> b!5430826 (= e!3365103 (matchRSpec!2326 (regTwo!30959 lt!2214318) s!2326))))

(declare-fun c!947551 () Bool)

(declare-fun bm!388899 () Bool)

(assert (=> bm!388899 (= call!388905 (Exists!2404 (ite c!947551 lambda!285005 lambda!285006)))))

(declare-fun b!5430827 () Bool)

(assert (=> b!5430827 (= e!3365105 e!3365101)))

(assert (=> b!5430827 (= c!947551 ((_ is Star!15223) lt!2214318))))

(declare-fun bm!388900 () Bool)

(declare-fun call!388904 () Bool)

(assert (=> bm!388900 (= call!388904 (isEmpty!33847 s!2326))))

(declare-fun b!5430828 () Bool)

(declare-fun res!2311168 () Bool)

(declare-fun e!3365102 () Bool)

(assert (=> b!5430828 (=> res!2311168 e!3365102)))

(assert (=> b!5430828 (= res!2311168 call!388904)))

(assert (=> b!5430828 (= e!3365101 e!3365102)))

(declare-fun b!5430829 () Bool)

(assert (=> b!5430829 (= e!3365104 call!388904)))

(declare-fun b!5430830 () Bool)

(declare-fun c!947550 () Bool)

(assert (=> b!5430830 (= c!947550 ((_ is Union!15223) lt!2214318))))

(assert (=> b!5430830 (= e!3365107 e!3365105)))

(declare-fun d!1731589 () Bool)

(declare-fun c!947553 () Bool)

(assert (=> d!1731589 (= c!947553 ((_ is EmptyExpr!15223) lt!2214318))))

(assert (=> d!1731589 (= (matchRSpec!2326 lt!2214318 s!2326) e!3365104)))

(declare-fun b!5430831 () Bool)

(declare-fun c!947552 () Bool)

(assert (=> b!5430831 (= c!947552 ((_ is ElementMatch!15223) lt!2214318))))

(assert (=> b!5430831 (= e!3365106 e!3365107)))

(assert (=> b!5430832 (= e!3365102 call!388905)))

(assert (= (and d!1731589 c!947553) b!5430829))

(assert (= (and d!1731589 (not c!947553)) b!5430823))

(assert (= (and b!5430823 res!2311167) b!5430831))

(assert (= (and b!5430831 c!947552) b!5430824))

(assert (= (and b!5430831 (not c!947552)) b!5430830))

(assert (= (and b!5430830 c!947550) b!5430822))

(assert (= (and b!5430830 (not c!947550)) b!5430827))

(assert (= (and b!5430822 (not res!2311166)) b!5430826))

(assert (= (and b!5430827 c!947551) b!5430828))

(assert (= (and b!5430827 (not c!947551)) b!5430825))

(assert (= (and b!5430828 (not res!2311168)) b!5430832))

(assert (= (or b!5430832 b!5430825) bm!388899))

(assert (= (or b!5430829 b!5430828) bm!388900))

(declare-fun m!6453906 () Bool)

(assert (=> b!5430822 m!6453906))

(declare-fun m!6453908 () Bool)

(assert (=> b!5430826 m!6453908))

(declare-fun m!6453910 () Bool)

(assert (=> bm!388899 m!6453910))

(assert (=> bm!388900 m!6453838))

(assert (=> b!5430419 d!1731589))

(declare-fun d!1731591 () Bool)

(assert (=> d!1731591 (= (matchR!7408 lt!2214318 s!2326) (matchRSpec!2326 lt!2214318 s!2326))))

(declare-fun lt!2214404 () Unit!154414)

(assert (=> d!1731591 (= lt!2214404 (choose!41185 lt!2214318 s!2326))))

(assert (=> d!1731591 (validRegex!6959 lt!2214318)))

(assert (=> d!1731591 (= (mainMatchTheorem!2326 lt!2214318 s!2326) lt!2214404)))

(declare-fun bs!1254428 () Bool)

(assert (= bs!1254428 d!1731591))

(assert (=> bs!1254428 m!6453622))

(assert (=> bs!1254428 m!6453624))

(declare-fun m!6453912 () Bool)

(assert (=> bs!1254428 m!6453912))

(assert (=> bs!1254428 m!6453900))

(assert (=> b!5430419 d!1731591))

(declare-fun b!5430906 () Bool)

(declare-fun e!3365153 () Int)

(declare-fun call!388924 () Int)

(assert (=> b!5430906 (= e!3365153 (+ 1 call!388924))))

(declare-fun b!5430907 () Bool)

(declare-fun c!947577 () Bool)

(assert (=> b!5430907 (= c!947577 ((_ is Union!15223) r!7292))))

(declare-fun e!3365149 () Int)

(declare-fun e!3365158 () Int)

(assert (=> b!5430907 (= e!3365149 e!3365158)))

(declare-fun b!5430908 () Bool)

(declare-fun e!3365152 () Int)

(assert (=> b!5430908 (= e!3365152 1)))

(declare-fun d!1731593 () Bool)

(declare-fun e!3365151 () Bool)

(assert (=> d!1731593 e!3365151))

(declare-fun res!2311202 () Bool)

(assert (=> d!1731593 (=> (not res!2311202) (not e!3365151))))

(declare-fun lt!2214415 () Int)

(assert (=> d!1731593 (= res!2311202 (> lt!2214415 0))))

(assert (=> d!1731593 (= lt!2214415 e!3365152)))

(declare-fun c!947580 () Bool)

(assert (=> d!1731593 (= c!947580 ((_ is ElementMatch!15223) r!7292))))

(assert (=> d!1731593 (= (regexDepth!179 r!7292) lt!2214415)))

(declare-fun bm!388915 () Bool)

(declare-fun c!947576 () Bool)

(declare-fun call!388920 () Int)

(assert (=> bm!388915 (= call!388920 (regexDepth!179 (ite c!947576 (reg!15552 r!7292) (ite c!947577 (regOne!30959 r!7292) (regTwo!30958 r!7292)))))))

(declare-fun b!5430909 () Bool)

(declare-fun res!2311203 () Bool)

(declare-fun e!3365150 () Bool)

(assert (=> b!5430909 (=> (not res!2311203) (not e!3365150))))

(declare-fun call!388921 () Int)

(assert (=> b!5430909 (= res!2311203 (> lt!2214415 call!388921))))

(declare-fun e!3365156 () Bool)

(assert (=> b!5430909 (= e!3365156 e!3365150)))

(declare-fun bm!388916 () Bool)

(declare-fun call!388926 () Int)

(assert (=> bm!388916 (= call!388926 (regexDepth!179 (ite c!947577 (regTwo!30959 r!7292) (regOne!30958 r!7292))))))

(declare-fun b!5430910 () Bool)

(declare-fun e!3365157 () Bool)

(assert (=> b!5430910 (= e!3365157 e!3365156)))

(declare-fun c!947578 () Bool)

(assert (=> b!5430910 (= c!947578 ((_ is Concat!24068) r!7292))))

(declare-fun b!5430911 () Bool)

(assert (=> b!5430911 (= e!3365149 (+ 1 call!388920))))

(declare-fun b!5430912 () Bool)

(assert (=> b!5430912 (= e!3365153 1)))

(declare-fun b!5430913 () Bool)

(declare-fun e!3365155 () Bool)

(assert (=> b!5430913 (= e!3365155 (= lt!2214415 1))))

(declare-fun call!388925 () Int)

(declare-fun bm!388917 () Bool)

(assert (=> bm!388917 (= call!388924 (maxBigInt!0 (ite c!947577 call!388925 call!388926) (ite c!947577 call!388926 call!388925)))))

(declare-fun b!5430914 () Bool)

(assert (=> b!5430914 (= e!3365151 e!3365157)))

(declare-fun c!947574 () Bool)

(assert (=> b!5430914 (= c!947574 ((_ is Union!15223) r!7292))))

(declare-fun b!5430915 () Bool)

(declare-fun e!3365154 () Bool)

(declare-fun call!388922 () Int)

(assert (=> b!5430915 (= e!3365154 (> lt!2214415 call!388922))))

(declare-fun b!5430916 () Bool)

(assert (=> b!5430916 (= e!3365155 (> lt!2214415 call!388921))))

(declare-fun bm!388918 () Bool)

(declare-fun call!388923 () Int)

(assert (=> bm!388918 (= call!388923 (regexDepth!179 (ite c!947574 (regOne!30959 r!7292) (ite c!947578 (regOne!30958 r!7292) (reg!15552 r!7292)))))))

(declare-fun bm!388919 () Bool)

(assert (=> bm!388919 (= call!388922 (regexDepth!179 (ite c!947574 (regTwo!30959 r!7292) (regTwo!30958 r!7292))))))

(declare-fun b!5430917 () Bool)

(assert (=> b!5430917 (= e!3365152 e!3365149)))

(assert (=> b!5430917 (= c!947576 ((_ is Star!15223) r!7292))))

(declare-fun b!5430918 () Bool)

(assert (=> b!5430918 (= e!3365150 (> lt!2214415 call!388922))))

(declare-fun bm!388920 () Bool)

(assert (=> bm!388920 (= call!388925 call!388920)))

(declare-fun b!5430919 () Bool)

(declare-fun c!947579 () Bool)

(assert (=> b!5430919 (= c!947579 ((_ is Star!15223) r!7292))))

(assert (=> b!5430919 (= e!3365156 e!3365155)))

(declare-fun b!5430920 () Bool)

(assert (=> b!5430920 (= e!3365158 e!3365153)))

(declare-fun c!947575 () Bool)

(assert (=> b!5430920 (= c!947575 ((_ is Concat!24068) r!7292))))

(declare-fun b!5430921 () Bool)

(assert (=> b!5430921 (= e!3365157 e!3365154)))

(declare-fun res!2311204 () Bool)

(assert (=> b!5430921 (= res!2311204 (> lt!2214415 call!388923))))

(assert (=> b!5430921 (=> (not res!2311204) (not e!3365154))))

(declare-fun b!5430922 () Bool)

(assert (=> b!5430922 (= e!3365158 (+ 1 call!388924))))

(declare-fun bm!388921 () Bool)

(assert (=> bm!388921 (= call!388921 call!388923)))

(assert (= (and d!1731593 c!947580) b!5430908))

(assert (= (and d!1731593 (not c!947580)) b!5430917))

(assert (= (and b!5430917 c!947576) b!5430911))

(assert (= (and b!5430917 (not c!947576)) b!5430907))

(assert (= (and b!5430907 c!947577) b!5430922))

(assert (= (and b!5430907 (not c!947577)) b!5430920))

(assert (= (and b!5430920 c!947575) b!5430906))

(assert (= (and b!5430920 (not c!947575)) b!5430912))

(assert (= (or b!5430922 b!5430906) bm!388916))

(assert (= (or b!5430922 b!5430906) bm!388920))

(assert (= (or b!5430922 b!5430906) bm!388917))

(assert (= (or b!5430911 bm!388920) bm!388915))

(assert (= (and d!1731593 res!2311202) b!5430914))

(assert (= (and b!5430914 c!947574) b!5430921))

(assert (= (and b!5430914 (not c!947574)) b!5430910))

(assert (= (and b!5430921 res!2311204) b!5430915))

(assert (= (and b!5430910 c!947578) b!5430909))

(assert (= (and b!5430910 (not c!947578)) b!5430919))

(assert (= (and b!5430909 res!2311203) b!5430918))

(assert (= (and b!5430919 c!947579) b!5430916))

(assert (= (and b!5430919 (not c!947579)) b!5430913))

(assert (= (or b!5430909 b!5430916) bm!388921))

(assert (= (or b!5430915 b!5430918) bm!388919))

(assert (= (or b!5430921 bm!388921) bm!388918))

(declare-fun m!6453946 () Bool)

(assert (=> bm!388917 m!6453946))

(declare-fun m!6453948 () Bool)

(assert (=> bm!388918 m!6453948))

(declare-fun m!6453950 () Bool)

(assert (=> bm!388915 m!6453950))

(declare-fun m!6453952 () Bool)

(assert (=> bm!388916 m!6453952))

(declare-fun m!6453954 () Bool)

(assert (=> bm!388919 m!6453954))

(assert (=> b!5430440 d!1731593))

(declare-fun b!5430923 () Bool)

(declare-fun e!3365163 () Int)

(declare-fun call!388931 () Int)

(assert (=> b!5430923 (= e!3365163 (+ 1 call!388931))))

(declare-fun b!5430924 () Bool)

(declare-fun c!947584 () Bool)

(assert (=> b!5430924 (= c!947584 ((_ is Union!15223) lt!2214306))))

(declare-fun e!3365159 () Int)

(declare-fun e!3365168 () Int)

(assert (=> b!5430924 (= e!3365159 e!3365168)))

(declare-fun b!5430925 () Bool)

(declare-fun e!3365162 () Int)

(assert (=> b!5430925 (= e!3365162 1)))

(declare-fun d!1731603 () Bool)

(declare-fun e!3365161 () Bool)

(assert (=> d!1731603 e!3365161))

(declare-fun res!2311205 () Bool)

(assert (=> d!1731603 (=> (not res!2311205) (not e!3365161))))

(declare-fun lt!2214417 () Int)

(assert (=> d!1731603 (= res!2311205 (> lt!2214417 0))))

(assert (=> d!1731603 (= lt!2214417 e!3365162)))

(declare-fun c!947587 () Bool)

(assert (=> d!1731603 (= c!947587 ((_ is ElementMatch!15223) lt!2214306))))

(assert (=> d!1731603 (= (regexDepth!179 lt!2214306) lt!2214417)))

(declare-fun call!388927 () Int)

(declare-fun c!947583 () Bool)

(declare-fun bm!388922 () Bool)

(assert (=> bm!388922 (= call!388927 (regexDepth!179 (ite c!947583 (reg!15552 lt!2214306) (ite c!947584 (regOne!30959 lt!2214306) (regTwo!30958 lt!2214306)))))))

(declare-fun b!5430926 () Bool)

(declare-fun res!2311206 () Bool)

(declare-fun e!3365160 () Bool)

(assert (=> b!5430926 (=> (not res!2311206) (not e!3365160))))

(declare-fun call!388928 () Int)

(assert (=> b!5430926 (= res!2311206 (> lt!2214417 call!388928))))

(declare-fun e!3365166 () Bool)

(assert (=> b!5430926 (= e!3365166 e!3365160)))

(declare-fun bm!388923 () Bool)

(declare-fun call!388933 () Int)

(assert (=> bm!388923 (= call!388933 (regexDepth!179 (ite c!947584 (regTwo!30959 lt!2214306) (regOne!30958 lt!2214306))))))

(declare-fun b!5430927 () Bool)

(declare-fun e!3365167 () Bool)

(assert (=> b!5430927 (= e!3365167 e!3365166)))

(declare-fun c!947585 () Bool)

(assert (=> b!5430927 (= c!947585 ((_ is Concat!24068) lt!2214306))))

(declare-fun b!5430928 () Bool)

(assert (=> b!5430928 (= e!3365159 (+ 1 call!388927))))

(declare-fun b!5430929 () Bool)

(assert (=> b!5430929 (= e!3365163 1)))

(declare-fun b!5430930 () Bool)

(declare-fun e!3365165 () Bool)

(assert (=> b!5430930 (= e!3365165 (= lt!2214417 1))))

(declare-fun bm!388924 () Bool)

(declare-fun call!388932 () Int)

(assert (=> bm!388924 (= call!388931 (maxBigInt!0 (ite c!947584 call!388932 call!388933) (ite c!947584 call!388933 call!388932)))))

(declare-fun b!5430931 () Bool)

(assert (=> b!5430931 (= e!3365161 e!3365167)))

(declare-fun c!947581 () Bool)

(assert (=> b!5430931 (= c!947581 ((_ is Union!15223) lt!2214306))))

(declare-fun b!5430932 () Bool)

(declare-fun e!3365164 () Bool)

(declare-fun call!388929 () Int)

(assert (=> b!5430932 (= e!3365164 (> lt!2214417 call!388929))))

(declare-fun b!5430933 () Bool)

(assert (=> b!5430933 (= e!3365165 (> lt!2214417 call!388928))))

(declare-fun call!388930 () Int)

(declare-fun bm!388925 () Bool)

(assert (=> bm!388925 (= call!388930 (regexDepth!179 (ite c!947581 (regOne!30959 lt!2214306) (ite c!947585 (regOne!30958 lt!2214306) (reg!15552 lt!2214306)))))))

(declare-fun bm!388926 () Bool)

(assert (=> bm!388926 (= call!388929 (regexDepth!179 (ite c!947581 (regTwo!30959 lt!2214306) (regTwo!30958 lt!2214306))))))

(declare-fun b!5430934 () Bool)

(assert (=> b!5430934 (= e!3365162 e!3365159)))

(assert (=> b!5430934 (= c!947583 ((_ is Star!15223) lt!2214306))))

(declare-fun b!5430935 () Bool)

(assert (=> b!5430935 (= e!3365160 (> lt!2214417 call!388929))))

(declare-fun bm!388927 () Bool)

(assert (=> bm!388927 (= call!388932 call!388927)))

(declare-fun b!5430936 () Bool)

(declare-fun c!947586 () Bool)

(assert (=> b!5430936 (= c!947586 ((_ is Star!15223) lt!2214306))))

(assert (=> b!5430936 (= e!3365166 e!3365165)))

(declare-fun b!5430937 () Bool)

(assert (=> b!5430937 (= e!3365168 e!3365163)))

(declare-fun c!947582 () Bool)

(assert (=> b!5430937 (= c!947582 ((_ is Concat!24068) lt!2214306))))

(declare-fun b!5430938 () Bool)

(assert (=> b!5430938 (= e!3365167 e!3365164)))

(declare-fun res!2311207 () Bool)

(assert (=> b!5430938 (= res!2311207 (> lt!2214417 call!388930))))

(assert (=> b!5430938 (=> (not res!2311207) (not e!3365164))))

(declare-fun b!5430939 () Bool)

(assert (=> b!5430939 (= e!3365168 (+ 1 call!388931))))

(declare-fun bm!388928 () Bool)

(assert (=> bm!388928 (= call!388928 call!388930)))

(assert (= (and d!1731603 c!947587) b!5430925))

(assert (= (and d!1731603 (not c!947587)) b!5430934))

(assert (= (and b!5430934 c!947583) b!5430928))

(assert (= (and b!5430934 (not c!947583)) b!5430924))

(assert (= (and b!5430924 c!947584) b!5430939))

(assert (= (and b!5430924 (not c!947584)) b!5430937))

(assert (= (and b!5430937 c!947582) b!5430923))

(assert (= (and b!5430937 (not c!947582)) b!5430929))

(assert (= (or b!5430939 b!5430923) bm!388923))

(assert (= (or b!5430939 b!5430923) bm!388927))

(assert (= (or b!5430939 b!5430923) bm!388924))

(assert (= (or b!5430928 bm!388927) bm!388922))

(assert (= (and d!1731603 res!2311205) b!5430931))

(assert (= (and b!5430931 c!947581) b!5430938))

(assert (= (and b!5430931 (not c!947581)) b!5430927))

(assert (= (and b!5430938 res!2311207) b!5430932))

(assert (= (and b!5430927 c!947585) b!5430926))

(assert (= (and b!5430927 (not c!947585)) b!5430936))

(assert (= (and b!5430926 res!2311206) b!5430935))

(assert (= (and b!5430936 c!947586) b!5430933))

(assert (= (and b!5430936 (not c!947586)) b!5430930))

(assert (= (or b!5430926 b!5430933) bm!388928))

(assert (= (or b!5430932 b!5430935) bm!388926))

(assert (= (or b!5430938 bm!388928) bm!388925))

(declare-fun m!6453962 () Bool)

(assert (=> bm!388924 m!6453962))

(declare-fun m!6453964 () Bool)

(assert (=> bm!388925 m!6453964))

(declare-fun m!6453966 () Bool)

(assert (=> bm!388922 m!6453966))

(declare-fun m!6453968 () Bool)

(assert (=> bm!388923 m!6453968))

(declare-fun m!6453970 () Bool)

(assert (=> bm!388926 m!6453970))

(assert (=> b!5430440 d!1731603))

(declare-fun bs!1254446 () Bool)

(declare-fun d!1731607 () Bool)

(assert (= bs!1254446 (and d!1731607 b!5430420)))

(declare-fun lambda!285019 () Int)

(assert (=> bs!1254446 (= lambda!285019 lambda!284965)))

(declare-fun bs!1254447 () Bool)

(assert (= bs!1254447 (and d!1731607 d!1731531)))

(assert (=> bs!1254447 (= lambda!285019 lambda!284983)))

(declare-fun e!3365194 () Bool)

(assert (=> d!1731607 e!3365194))

(declare-fun res!2311217 () Bool)

(assert (=> d!1731607 (=> (not res!2311217) (not e!3365194))))

(declare-fun lt!2214424 () Regex!15223)

(assert (=> d!1731607 (= res!2311217 (validRegex!6959 lt!2214424))))

(declare-fun e!3365193 () Regex!15223)

(assert (=> d!1731607 (= lt!2214424 e!3365193)))

(declare-fun c!947605 () Bool)

(declare-fun e!3365196 () Bool)

(assert (=> d!1731607 (= c!947605 e!3365196)))

(declare-fun res!2311216 () Bool)

(assert (=> d!1731607 (=> (not res!2311216) (not e!3365196))))

(assert (=> d!1731607 (= res!2311216 ((_ is Cons!61844) (t!375193 (exprs!5107 (h!68294 zl!343)))))))

(assert (=> d!1731607 (forall!14560 (t!375193 (exprs!5107 (h!68294 zl!343))) lambda!285019)))

(assert (=> d!1731607 (= (generalisedConcat!892 (t!375193 (exprs!5107 (h!68294 zl!343)))) lt!2214424)))

(declare-fun b!5430978 () Bool)

(declare-fun e!3365195 () Bool)

(declare-fun isEmptyExpr!997 (Regex!15223) Bool)

(assert (=> b!5430978 (= e!3365195 (isEmptyExpr!997 lt!2214424))))

(declare-fun b!5430979 () Bool)

(declare-fun e!3365192 () Regex!15223)

(assert (=> b!5430979 (= e!3365193 e!3365192)))

(declare-fun c!947606 () Bool)

(assert (=> b!5430979 (= c!947606 ((_ is Cons!61844) (t!375193 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun b!5430980 () Bool)

(declare-fun e!3365197 () Bool)

(assert (=> b!5430980 (= e!3365195 e!3365197)))

(declare-fun c!947603 () Bool)

(declare-fun tail!10747 (List!61968) List!61968)

(assert (=> b!5430980 (= c!947603 (isEmpty!33845 (tail!10747 (t!375193 (exprs!5107 (h!68294 zl!343))))))))

(declare-fun b!5430981 () Bool)

(declare-fun head!11650 (List!61968) Regex!15223)

(assert (=> b!5430981 (= e!3365197 (= lt!2214424 (head!11650 (t!375193 (exprs!5107 (h!68294 zl!343))))))))

(declare-fun b!5430982 () Bool)

(assert (=> b!5430982 (= e!3365192 EmptyExpr!15223)))

(declare-fun b!5430983 () Bool)

(assert (=> b!5430983 (= e!3365192 (Concat!24068 (h!68292 (t!375193 (exprs!5107 (h!68294 zl!343)))) (generalisedConcat!892 (t!375193 (t!375193 (exprs!5107 (h!68294 zl!343)))))))))

(declare-fun b!5430984 () Bool)

(assert (=> b!5430984 (= e!3365193 (h!68292 (t!375193 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun b!5430985 () Bool)

(assert (=> b!5430985 (= e!3365196 (isEmpty!33845 (t!375193 (t!375193 (exprs!5107 (h!68294 zl!343))))))))

(declare-fun b!5430986 () Bool)

(assert (=> b!5430986 (= e!3365194 e!3365195)))

(declare-fun c!947604 () Bool)

(assert (=> b!5430986 (= c!947604 (isEmpty!33845 (t!375193 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun b!5430987 () Bool)

(declare-fun isConcat!520 (Regex!15223) Bool)

(assert (=> b!5430987 (= e!3365197 (isConcat!520 lt!2214424))))

(assert (= (and d!1731607 res!2311216) b!5430985))

(assert (= (and d!1731607 c!947605) b!5430984))

(assert (= (and d!1731607 (not c!947605)) b!5430979))

(assert (= (and b!5430979 c!947606) b!5430983))

(assert (= (and b!5430979 (not c!947606)) b!5430982))

(assert (= (and d!1731607 res!2311217) b!5430986))

(assert (= (and b!5430986 c!947604) b!5430978))

(assert (= (and b!5430986 (not c!947604)) b!5430980))

(assert (= (and b!5430980 c!947603) b!5430981))

(assert (= (and b!5430980 (not c!947603)) b!5430987))

(declare-fun m!6454004 () Bool)

(assert (=> b!5430980 m!6454004))

(assert (=> b!5430980 m!6454004))

(declare-fun m!6454006 () Bool)

(assert (=> b!5430980 m!6454006))

(declare-fun m!6454008 () Bool)

(assert (=> d!1731607 m!6454008))

(declare-fun m!6454010 () Bool)

(assert (=> d!1731607 m!6454010))

(assert (=> b!5430986 m!6453590))

(declare-fun m!6454012 () Bool)

(assert (=> b!5430978 m!6454012))

(declare-fun m!6454014 () Bool)

(assert (=> b!5430983 m!6454014))

(declare-fun m!6454016 () Bool)

(assert (=> b!5430985 m!6454016))

(declare-fun m!6454018 () Bool)

(assert (=> b!5430987 m!6454018))

(declare-fun m!6454020 () Bool)

(assert (=> b!5430981 m!6454020))

(assert (=> b!5430440 d!1731607))

(declare-fun d!1731627 () Bool)

(declare-fun nullableFct!1617 (Regex!15223) Bool)

(assert (=> d!1731627 (= (nullable!5392 (regOne!30958 (regOne!30958 r!7292))) (nullableFct!1617 (regOne!30958 (regOne!30958 r!7292))))))

(declare-fun bs!1254452 () Bool)

(assert (= bs!1254452 d!1731627))

(declare-fun m!6454024 () Bool)

(assert (=> bs!1254452 m!6454024))

(assert (=> b!5430417 d!1731627))

(declare-fun d!1731631 () Bool)

(assert (=> d!1731631 (= (flatMap!950 lt!2214338 lambda!284964) (choose!41183 lt!2214338 lambda!284964))))

(declare-fun bs!1254453 () Bool)

(assert (= bs!1254453 d!1731631))

(declare-fun m!6454026 () Bool)

(assert (=> bs!1254453 m!6454026))

(assert (=> b!5430438 d!1731631))

(declare-fun b!5431002 () Bool)

(declare-fun e!3365207 () (InoxSet Context!9214))

(assert (=> b!5431002 (= e!3365207 ((as const (Array Context!9214 Bool)) false))))

(declare-fun d!1731633 () Bool)

(declare-fun c!947611 () Bool)

(declare-fun e!3365205 () Bool)

(assert (=> d!1731633 (= c!947611 e!3365205)))

(declare-fun res!2311226 () Bool)

(assert (=> d!1731633 (=> (not res!2311226) (not e!3365205))))

(assert (=> d!1731633 (= res!2311226 ((_ is Cons!61844) (exprs!5107 lt!2214337)))))

(declare-fun e!3365206 () (InoxSet Context!9214))

(assert (=> d!1731633 (= (derivationStepZipperUp!595 lt!2214337 (h!68293 s!2326)) e!3365206)))

(declare-fun b!5431003 () Bool)

(assert (=> b!5431003 (= e!3365206 e!3365207)))

(declare-fun c!947610 () Bool)

(assert (=> b!5431003 (= c!947610 ((_ is Cons!61844) (exprs!5107 lt!2214337)))))

(declare-fun b!5431004 () Bool)

(declare-fun call!388941 () (InoxSet Context!9214))

(assert (=> b!5431004 (= e!3365206 ((_ map or) call!388941 (derivationStepZipperUp!595 (Context!9215 (t!375193 (exprs!5107 lt!2214337))) (h!68293 s!2326))))))

(declare-fun b!5431005 () Bool)

(assert (=> b!5431005 (= e!3365207 call!388941)))

(declare-fun b!5431006 () Bool)

(assert (=> b!5431006 (= e!3365205 (nullable!5392 (h!68292 (exprs!5107 lt!2214337))))))

(declare-fun bm!388936 () Bool)

(assert (=> bm!388936 (= call!388941 (derivationStepZipperDown!671 (h!68292 (exprs!5107 lt!2214337)) (Context!9215 (t!375193 (exprs!5107 lt!2214337))) (h!68293 s!2326)))))

(assert (= (and d!1731633 res!2311226) b!5431006))

(assert (= (and d!1731633 c!947611) b!5431004))

(assert (= (and d!1731633 (not c!947611)) b!5431003))

(assert (= (and b!5431003 c!947610) b!5431005))

(assert (= (and b!5431003 (not c!947610)) b!5431002))

(assert (= (or b!5431004 b!5431005) bm!388936))

(declare-fun m!6454034 () Bool)

(assert (=> b!5431004 m!6454034))

(declare-fun m!6454038 () Bool)

(assert (=> b!5431006 m!6454038))

(declare-fun m!6454040 () Bool)

(assert (=> bm!388936 m!6454040))

(assert (=> b!5430438 d!1731633))

(declare-fun b!5431008 () Bool)

(declare-fun e!3365217 () (InoxSet Context!9214))

(assert (=> b!5431008 (= e!3365217 ((as const (Array Context!9214 Bool)) false))))

(declare-fun d!1731637 () Bool)

(declare-fun c!947617 () Bool)

(declare-fun e!3365213 () Bool)

(assert (=> d!1731637 (= c!947617 e!3365213)))

(declare-fun res!2311230 () Bool)

(assert (=> d!1731637 (=> (not res!2311230) (not e!3365213))))

(assert (=> d!1731637 (= res!2311230 ((_ is Cons!61844) (exprs!5107 lt!2214325)))))

(declare-fun e!3365215 () (InoxSet Context!9214))

(assert (=> d!1731637 (= (derivationStepZipperUp!595 lt!2214325 (h!68293 s!2326)) e!3365215)))

(declare-fun b!5431010 () Bool)

(assert (=> b!5431010 (= e!3365215 e!3365217)))

(declare-fun c!947616 () Bool)

(assert (=> b!5431010 (= c!947616 ((_ is Cons!61844) (exprs!5107 lt!2214325)))))

(declare-fun call!388944 () (InoxSet Context!9214))

(declare-fun b!5431012 () Bool)

(assert (=> b!5431012 (= e!3365215 ((_ map or) call!388944 (derivationStepZipperUp!595 (Context!9215 (t!375193 (exprs!5107 lt!2214325))) (h!68293 s!2326))))))

(declare-fun b!5431014 () Bool)

(assert (=> b!5431014 (= e!3365217 call!388944)))

(declare-fun b!5431016 () Bool)

(assert (=> b!5431016 (= e!3365213 (nullable!5392 (h!68292 (exprs!5107 lt!2214325))))))

(declare-fun bm!388939 () Bool)

(assert (=> bm!388939 (= call!388944 (derivationStepZipperDown!671 (h!68292 (exprs!5107 lt!2214325)) (Context!9215 (t!375193 (exprs!5107 lt!2214325))) (h!68293 s!2326)))))

(assert (= (and d!1731637 res!2311230) b!5431016))

(assert (= (and d!1731637 c!947617) b!5431012))

(assert (= (and d!1731637 (not c!947617)) b!5431010))

(assert (= (and b!5431010 c!947616) b!5431014))

(assert (= (and b!5431010 (not c!947616)) b!5431008))

(assert (= (or b!5431012 b!5431014) bm!388939))

(declare-fun m!6454042 () Bool)

(assert (=> b!5431012 m!6454042))

(declare-fun m!6454044 () Bool)

(assert (=> b!5431016 m!6454044))

(declare-fun m!6454046 () Bool)

(assert (=> bm!388939 m!6454046))

(assert (=> b!5430438 d!1731637))

(declare-fun d!1731639 () Bool)

(assert (=> d!1731639 (= (flatMap!950 lt!2214338 lambda!284964) (dynLambda!24369 lambda!284964 lt!2214325))))

(declare-fun lt!2214426 () Unit!154414)

(assert (=> d!1731639 (= lt!2214426 (choose!41184 lt!2214338 lt!2214325 lambda!284964))))

(assert (=> d!1731639 (= lt!2214338 (store ((as const (Array Context!9214 Bool)) false) lt!2214325 true))))

(assert (=> d!1731639 (= (lemmaFlatMapOnSingletonSet!482 lt!2214338 lt!2214325 lambda!284964) lt!2214426)))

(declare-fun b_lambda!207233 () Bool)

(assert (=> (not b_lambda!207233) (not d!1731639)))

(declare-fun bs!1254454 () Bool)

(assert (= bs!1254454 d!1731639))

(assert (=> bs!1254454 m!6453562))

(declare-fun m!6454048 () Bool)

(assert (=> bs!1254454 m!6454048))

(declare-fun m!6454050 () Bool)

(assert (=> bs!1254454 m!6454050))

(assert (=> bs!1254454 m!6453564))

(assert (=> b!5430438 d!1731639))

(declare-fun d!1731641 () Bool)

(assert (=> d!1731641 (= (flatMap!950 lt!2214314 lambda!284964) (dynLambda!24369 lambda!284964 lt!2214337))))

(declare-fun lt!2214427 () Unit!154414)

(assert (=> d!1731641 (= lt!2214427 (choose!41184 lt!2214314 lt!2214337 lambda!284964))))

(assert (=> d!1731641 (= lt!2214314 (store ((as const (Array Context!9214 Bool)) false) lt!2214337 true))))

(assert (=> d!1731641 (= (lemmaFlatMapOnSingletonSet!482 lt!2214314 lt!2214337 lambda!284964) lt!2214427)))

(declare-fun b_lambda!207235 () Bool)

(assert (=> (not b_lambda!207235) (not d!1731641)))

(declare-fun bs!1254457 () Bool)

(assert (= bs!1254457 d!1731641))

(assert (=> bs!1254457 m!6453558))

(declare-fun m!6454052 () Bool)

(assert (=> bs!1254457 m!6454052))

(declare-fun m!6454054 () Bool)

(assert (=> bs!1254457 m!6454054))

(assert (=> bs!1254457 m!6453556))

(assert (=> b!5430438 d!1731641))

(declare-fun d!1731643 () Bool)

(declare-fun lt!2214428 () Regex!15223)

(assert (=> d!1731643 (validRegex!6959 lt!2214428)))

(assert (=> d!1731643 (= lt!2214428 (generalisedUnion!1152 (unfocusZipperList!665 (Cons!61846 lt!2214337 Nil!61846))))))

(assert (=> d!1731643 (= (unfocusZipper!965 (Cons!61846 lt!2214337 Nil!61846)) lt!2214428)))

(declare-fun bs!1254460 () Bool)

(assert (= bs!1254460 d!1731643))

(declare-fun m!6454056 () Bool)

(assert (=> bs!1254460 m!6454056))

(declare-fun m!6454058 () Bool)

(assert (=> bs!1254460 m!6454058))

(assert (=> bs!1254460 m!6454058))

(declare-fun m!6454060 () Bool)

(assert (=> bs!1254460 m!6454060))

(assert (=> b!5430438 d!1731643))

(declare-fun d!1731645 () Bool)

(assert (=> d!1731645 (= (flatMap!950 lt!2214314 lambda!284964) (choose!41183 lt!2214314 lambda!284964))))

(declare-fun bs!1254461 () Bool)

(assert (= bs!1254461 d!1731645))

(declare-fun m!6454062 () Bool)

(assert (=> bs!1254461 m!6454062))

(assert (=> b!5430438 d!1731645))

(declare-fun bs!1254470 () Bool)

(declare-fun d!1731647 () Bool)

(assert (= bs!1254470 (and d!1731647 b!5430420)))

(declare-fun lambda!285027 () Int)

(assert (=> bs!1254470 (= lambda!285027 lambda!284965)))

(declare-fun bs!1254471 () Bool)

(assert (= bs!1254471 (and d!1731647 d!1731531)))

(assert (=> bs!1254471 (= lambda!285027 lambda!284983)))

(declare-fun bs!1254472 () Bool)

(assert (= bs!1254472 (and d!1731647 d!1731607)))

(assert (=> bs!1254472 (= lambda!285027 lambda!285019)))

(declare-fun b!5431060 () Bool)

(declare-fun e!3365239 () Bool)

(declare-fun lt!2214434 () Regex!15223)

(declare-fun isEmptyLang!1007 (Regex!15223) Bool)

(assert (=> b!5431060 (= e!3365239 (isEmptyLang!1007 lt!2214434))))

(declare-fun b!5431061 () Bool)

(declare-fun e!3365240 () Bool)

(declare-fun isUnion!439 (Regex!15223) Bool)

(assert (=> b!5431061 (= e!3365240 (isUnion!439 lt!2214434))))

(declare-fun b!5431062 () Bool)

(declare-fun e!3365238 () Regex!15223)

(assert (=> b!5431062 (= e!3365238 EmptyLang!15223)))

(declare-fun b!5431063 () Bool)

(assert (=> b!5431063 (= e!3365238 (Union!15223 (h!68292 (unfocusZipperList!665 zl!343)) (generalisedUnion!1152 (t!375193 (unfocusZipperList!665 zl!343)))))))

(declare-fun b!5431064 () Bool)

(declare-fun e!3365243 () Bool)

(assert (=> b!5431064 (= e!3365243 e!3365239)))

(declare-fun c!947637 () Bool)

(assert (=> b!5431064 (= c!947637 (isEmpty!33845 (unfocusZipperList!665 zl!343)))))

(assert (=> d!1731647 e!3365243))

(declare-fun res!2311236 () Bool)

(assert (=> d!1731647 (=> (not res!2311236) (not e!3365243))))

(assert (=> d!1731647 (= res!2311236 (validRegex!6959 lt!2214434))))

(declare-fun e!3365241 () Regex!15223)

(assert (=> d!1731647 (= lt!2214434 e!3365241)))

(declare-fun c!947635 () Bool)

(declare-fun e!3365242 () Bool)

(assert (=> d!1731647 (= c!947635 e!3365242)))

(declare-fun res!2311235 () Bool)

(assert (=> d!1731647 (=> (not res!2311235) (not e!3365242))))

(assert (=> d!1731647 (= res!2311235 ((_ is Cons!61844) (unfocusZipperList!665 zl!343)))))

(assert (=> d!1731647 (forall!14560 (unfocusZipperList!665 zl!343) lambda!285027)))

(assert (=> d!1731647 (= (generalisedUnion!1152 (unfocusZipperList!665 zl!343)) lt!2214434)))

(declare-fun b!5431059 () Bool)

(assert (=> b!5431059 (= e!3365241 (h!68292 (unfocusZipperList!665 zl!343)))))

(declare-fun b!5431065 () Bool)

(assert (=> b!5431065 (= e!3365239 e!3365240)))

(declare-fun c!947634 () Bool)

(assert (=> b!5431065 (= c!947634 (isEmpty!33845 (tail!10747 (unfocusZipperList!665 zl!343))))))

(declare-fun b!5431066 () Bool)

(assert (=> b!5431066 (= e!3365242 (isEmpty!33845 (t!375193 (unfocusZipperList!665 zl!343))))))

(declare-fun b!5431067 () Bool)

(assert (=> b!5431067 (= e!3365241 e!3365238)))

(declare-fun c!947636 () Bool)

(assert (=> b!5431067 (= c!947636 ((_ is Cons!61844) (unfocusZipperList!665 zl!343)))))

(declare-fun b!5431068 () Bool)

(assert (=> b!5431068 (= e!3365240 (= lt!2214434 (head!11650 (unfocusZipperList!665 zl!343))))))

(assert (= (and d!1731647 res!2311235) b!5431066))

(assert (= (and d!1731647 c!947635) b!5431059))

(assert (= (and d!1731647 (not c!947635)) b!5431067))

(assert (= (and b!5431067 c!947636) b!5431063))

(assert (= (and b!5431067 (not c!947636)) b!5431062))

(assert (= (and d!1731647 res!2311236) b!5431064))

(assert (= (and b!5431064 c!947637) b!5431060))

(assert (= (and b!5431064 (not c!947637)) b!5431065))

(assert (= (and b!5431065 c!947634) b!5431068))

(assert (= (and b!5431065 (not c!947634)) b!5431061))

(assert (=> b!5431064 m!6453528))

(declare-fun m!6454072 () Bool)

(assert (=> b!5431064 m!6454072))

(declare-fun m!6454074 () Bool)

(assert (=> b!5431061 m!6454074))

(declare-fun m!6454076 () Bool)

(assert (=> b!5431063 m!6454076))

(assert (=> b!5431065 m!6453528))

(declare-fun m!6454078 () Bool)

(assert (=> b!5431065 m!6454078))

(assert (=> b!5431065 m!6454078))

(declare-fun m!6454080 () Bool)

(assert (=> b!5431065 m!6454080))

(declare-fun m!6454082 () Bool)

(assert (=> b!5431060 m!6454082))

(assert (=> b!5431068 m!6453528))

(declare-fun m!6454084 () Bool)

(assert (=> b!5431068 m!6454084))

(declare-fun m!6454086 () Bool)

(assert (=> b!5431066 m!6454086))

(declare-fun m!6454088 () Bool)

(assert (=> d!1731647 m!6454088))

(assert (=> d!1731647 m!6453528))

(declare-fun m!6454090 () Bool)

(assert (=> d!1731647 m!6454090))

(assert (=> b!5430439 d!1731647))

(declare-fun bs!1254473 () Bool)

(declare-fun d!1731653 () Bool)

(assert (= bs!1254473 (and d!1731653 b!5430420)))

(declare-fun lambda!285030 () Int)

(assert (=> bs!1254473 (= lambda!285030 lambda!284965)))

(declare-fun bs!1254474 () Bool)

(assert (= bs!1254474 (and d!1731653 d!1731531)))

(assert (=> bs!1254474 (= lambda!285030 lambda!284983)))

(declare-fun bs!1254475 () Bool)

(assert (= bs!1254475 (and d!1731653 d!1731607)))

(assert (=> bs!1254475 (= lambda!285030 lambda!285019)))

(declare-fun bs!1254476 () Bool)

(assert (= bs!1254476 (and d!1731653 d!1731647)))

(assert (=> bs!1254476 (= lambda!285030 lambda!285027)))

(declare-fun lt!2214437 () List!61968)

(assert (=> d!1731653 (forall!14560 lt!2214437 lambda!285030)))

(declare-fun e!3365258 () List!61968)

(assert (=> d!1731653 (= lt!2214437 e!3365258)))

(declare-fun c!947646 () Bool)

(assert (=> d!1731653 (= c!947646 ((_ is Cons!61846) zl!343))))

(assert (=> d!1731653 (= (unfocusZipperList!665 zl!343) lt!2214437)))

(declare-fun b!5431091 () Bool)

(assert (=> b!5431091 (= e!3365258 (Cons!61844 (generalisedConcat!892 (exprs!5107 (h!68294 zl!343))) (unfocusZipperList!665 (t!375195 zl!343))))))

(declare-fun b!5431092 () Bool)

(assert (=> b!5431092 (= e!3365258 Nil!61844)))

(assert (= (and d!1731653 c!947646) b!5431091))

(assert (= (and d!1731653 (not c!947646)) b!5431092))

(declare-fun m!6454092 () Bool)

(assert (=> d!1731653 m!6454092))

(assert (=> b!5431091 m!6453540))

(declare-fun m!6454094 () Bool)

(assert (=> b!5431091 m!6454094))

(assert (=> b!5430439 d!1731653))

(declare-fun d!1731655 () Bool)

(assert (=> d!1731655 (= (isEmpty!33845 (t!375193 (exprs!5107 (h!68294 zl!343)))) ((_ is Nil!61844) (t!375193 (exprs!5107 (h!68294 zl!343)))))))

(assert (=> b!5430443 d!1731655))

(declare-fun d!1731657 () Bool)

(declare-fun c!947654 () Bool)

(assert (=> d!1731657 (= c!947654 (isEmpty!33847 (t!375194 s!2326)))))

(declare-fun e!3365269 () Bool)

(assert (=> d!1731657 (= (matchZipper!1467 lt!2214326 (t!375194 s!2326)) e!3365269)))

(declare-fun b!5431100 () Bool)

(assert (=> b!5431100 (= e!3365269 (nullableZipper!1466 lt!2214326))))

(declare-fun b!5431101 () Bool)

(assert (=> b!5431101 (= e!3365269 (matchZipper!1467 (derivationStepZipper!1462 lt!2214326 (head!11649 (t!375194 s!2326))) (tail!10746 (t!375194 s!2326))))))

(assert (= (and d!1731657 c!947654) b!5431100))

(assert (= (and d!1731657 (not c!947654)) b!5431101))

(assert (=> d!1731657 m!6453660))

(declare-fun m!6454096 () Bool)

(assert (=> b!5431100 m!6454096))

(assert (=> b!5431101 m!6453664))

(assert (=> b!5431101 m!6453664))

(declare-fun m!6454098 () Bool)

(assert (=> b!5431101 m!6454098))

(assert (=> b!5431101 m!6453668))

(assert (=> b!5431101 m!6454098))

(assert (=> b!5431101 m!6453668))

(declare-fun m!6454100 () Bool)

(assert (=> b!5431101 m!6454100))

(assert (=> b!5430402 d!1731657))

(declare-fun d!1731659 () Bool)

(declare-fun lt!2214439 () Regex!15223)

(assert (=> d!1731659 (validRegex!6959 lt!2214439)))

(assert (=> d!1731659 (= lt!2214439 (generalisedUnion!1152 (unfocusZipperList!665 (Cons!61846 lt!2214325 Nil!61846))))))

(assert (=> d!1731659 (= (unfocusZipper!965 (Cons!61846 lt!2214325 Nil!61846)) lt!2214439)))

(declare-fun bs!1254477 () Bool)

(assert (= bs!1254477 d!1731659))

(declare-fun m!6454102 () Bool)

(assert (=> bs!1254477 m!6454102))

(declare-fun m!6454104 () Bool)

(assert (=> bs!1254477 m!6454104))

(assert (=> bs!1254477 m!6454104))

(declare-fun m!6454106 () Bool)

(assert (=> bs!1254477 m!6454106))

(assert (=> b!5430441 d!1731659))

(declare-fun d!1731661 () Bool)

(declare-fun res!2311253 () Bool)

(declare-fun e!3365284 () Bool)

(assert (=> d!1731661 (=> res!2311253 e!3365284)))

(assert (=> d!1731661 (= res!2311253 ((_ is Nil!61844) (t!375193 (exprs!5107 (h!68294 zl!343)))))))

(assert (=> d!1731661 (= (forall!14560 (t!375193 (exprs!5107 (h!68294 zl!343))) lambda!284965) e!3365284)))

(declare-fun b!5431133 () Bool)

(declare-fun e!3365285 () Bool)

(assert (=> b!5431133 (= e!3365284 e!3365285)))

(declare-fun res!2311254 () Bool)

(assert (=> b!5431133 (=> (not res!2311254) (not e!3365285))))

(declare-fun dynLambda!24370 (Int Regex!15223) Bool)

(assert (=> b!5431133 (= res!2311254 (dynLambda!24370 lambda!284965 (h!68292 (t!375193 (exprs!5107 (h!68294 zl!343))))))))

(declare-fun b!5431134 () Bool)

(assert (=> b!5431134 (= e!3365285 (forall!14560 (t!375193 (t!375193 (exprs!5107 (h!68294 zl!343)))) lambda!284965))))

(assert (= (and d!1731661 (not res!2311253)) b!5431133))

(assert (= (and b!5431133 res!2311254) b!5431134))

(declare-fun b_lambda!207237 () Bool)

(assert (=> (not b_lambda!207237) (not b!5431133)))

(declare-fun m!6454128 () Bool)

(assert (=> b!5431133 m!6454128))

(declare-fun m!6454130 () Bool)

(assert (=> b!5431134 m!6454130))

(assert (=> b!5430420 d!1731661))

(declare-fun b!5431135 () Bool)

(declare-fun res!2311262 () Bool)

(declare-fun e!3365289 () Bool)

(assert (=> b!5431135 (=> res!2311262 e!3365289)))

(declare-fun e!3365287 () Bool)

(assert (=> b!5431135 (= res!2311262 e!3365287)))

(declare-fun res!2311259 () Bool)

(assert (=> b!5431135 (=> (not res!2311259) (not e!3365287))))

(declare-fun lt!2214441 () Bool)

(assert (=> b!5431135 (= res!2311259 lt!2214441)))

(declare-fun b!5431136 () Bool)

(assert (=> b!5431136 (= e!3365287 (= (head!11649 s!2326) (c!947425 lt!2214306)))))

(declare-fun b!5431137 () Bool)

(declare-fun e!3365291 () Bool)

(assert (=> b!5431137 (= e!3365291 (not (= (head!11649 s!2326) (c!947425 lt!2214306))))))

(declare-fun b!5431138 () Bool)

(declare-fun e!3365286 () Bool)

(assert (=> b!5431138 (= e!3365286 (not lt!2214441))))

(declare-fun b!5431139 () Bool)

(declare-fun res!2311256 () Bool)

(assert (=> b!5431139 (=> res!2311256 e!3365291)))

(assert (=> b!5431139 (= res!2311256 (not (isEmpty!33847 (tail!10746 s!2326))))))

(declare-fun b!5431140 () Bool)

(declare-fun e!3365292 () Bool)

(assert (=> b!5431140 (= e!3365289 e!3365292)))

(declare-fun res!2311255 () Bool)

(assert (=> b!5431140 (=> (not res!2311255) (not e!3365292))))

(assert (=> b!5431140 (= res!2311255 (not lt!2214441))))

(declare-fun b!5431141 () Bool)

(declare-fun e!3365290 () Bool)

(declare-fun call!388973 () Bool)

(assert (=> b!5431141 (= e!3365290 (= lt!2214441 call!388973))))

(declare-fun b!5431142 () Bool)

(assert (=> b!5431142 (= e!3365290 e!3365286)))

(declare-fun c!947662 () Bool)

(assert (=> b!5431142 (= c!947662 ((_ is EmptyLang!15223) lt!2214306))))

(declare-fun b!5431143 () Bool)

(declare-fun res!2311257 () Bool)

(assert (=> b!5431143 (=> res!2311257 e!3365289)))

(assert (=> b!5431143 (= res!2311257 (not ((_ is ElementMatch!15223) lt!2214306)))))

(assert (=> b!5431143 (= e!3365286 e!3365289)))

(declare-fun b!5431144 () Bool)

(declare-fun e!3365288 () Bool)

(assert (=> b!5431144 (= e!3365288 (nullable!5392 lt!2214306))))

(declare-fun b!5431145 () Bool)

(declare-fun res!2311258 () Bool)

(assert (=> b!5431145 (=> (not res!2311258) (not e!3365287))))

(assert (=> b!5431145 (= res!2311258 (not call!388973))))

(declare-fun b!5431146 () Bool)

(assert (=> b!5431146 (= e!3365288 (matchR!7408 (derivativeStep!4286 lt!2214306 (head!11649 s!2326)) (tail!10746 s!2326)))))

(declare-fun b!5431147 () Bool)

(assert (=> b!5431147 (= e!3365292 e!3365291)))

(declare-fun res!2311261 () Bool)

(assert (=> b!5431147 (=> res!2311261 e!3365291)))

(assert (=> b!5431147 (= res!2311261 call!388973)))

(declare-fun b!5431148 () Bool)

(declare-fun res!2311260 () Bool)

(assert (=> b!5431148 (=> (not res!2311260) (not e!3365287))))

(assert (=> b!5431148 (= res!2311260 (isEmpty!33847 (tail!10746 s!2326)))))

(declare-fun bm!388968 () Bool)

(assert (=> bm!388968 (= call!388973 (isEmpty!33847 s!2326))))

(declare-fun d!1731667 () Bool)

(assert (=> d!1731667 e!3365290))

(declare-fun c!947663 () Bool)

(assert (=> d!1731667 (= c!947663 ((_ is EmptyExpr!15223) lt!2214306))))

(assert (=> d!1731667 (= lt!2214441 e!3365288)))

(declare-fun c!947664 () Bool)

(assert (=> d!1731667 (= c!947664 (isEmpty!33847 s!2326))))

(assert (=> d!1731667 (validRegex!6959 lt!2214306)))

(assert (=> d!1731667 (= (matchR!7408 lt!2214306 s!2326) lt!2214441)))

(assert (= (and d!1731667 c!947664) b!5431144))

(assert (= (and d!1731667 (not c!947664)) b!5431146))

(assert (= (and d!1731667 c!947663) b!5431141))

(assert (= (and d!1731667 (not c!947663)) b!5431142))

(assert (= (and b!5431142 c!947662) b!5431138))

(assert (= (and b!5431142 (not c!947662)) b!5431143))

(assert (= (and b!5431143 (not res!2311257)) b!5431135))

(assert (= (and b!5431135 res!2311259) b!5431145))

(assert (= (and b!5431145 res!2311258) b!5431148))

(assert (= (and b!5431148 res!2311260) b!5431136))

(assert (= (and b!5431135 (not res!2311262)) b!5431140))

(assert (= (and b!5431140 res!2311255) b!5431147))

(assert (= (and b!5431147 (not res!2311261)) b!5431139))

(assert (= (and b!5431139 (not res!2311256)) b!5431137))

(assert (= (or b!5431141 b!5431145 b!5431147) bm!388968))

(declare-fun m!6454132 () Bool)

(assert (=> b!5431144 m!6454132))

(assert (=> b!5431148 m!6453856))

(assert (=> b!5431148 m!6453856))

(assert (=> b!5431148 m!6453858))

(assert (=> b!5431139 m!6453856))

(assert (=> b!5431139 m!6453856))

(assert (=> b!5431139 m!6453858))

(assert (=> bm!388968 m!6453838))

(assert (=> b!5431137 m!6453860))

(assert (=> d!1731667 m!6453838))

(declare-fun m!6454134 () Bool)

(assert (=> d!1731667 m!6454134))

(assert (=> b!5431146 m!6453860))

(assert (=> b!5431146 m!6453860))

(declare-fun m!6454136 () Bool)

(assert (=> b!5431146 m!6454136))

(assert (=> b!5431146 m!6453856))

(assert (=> b!5431146 m!6454136))

(assert (=> b!5431146 m!6453856))

(declare-fun m!6454138 () Bool)

(assert (=> b!5431146 m!6454138))

(assert (=> b!5431136 m!6453860))

(assert (=> b!5430420 d!1731667))

(declare-fun d!1731669 () Bool)

(declare-fun c!947665 () Bool)

(assert (=> d!1731669 (= c!947665 (isEmpty!33847 s!2326))))

(declare-fun e!3365293 () Bool)

(assert (=> d!1731669 (= (matchZipper!1467 lt!2214317 s!2326) e!3365293)))

(declare-fun b!5431149 () Bool)

(assert (=> b!5431149 (= e!3365293 (nullableZipper!1466 lt!2214317))))

(declare-fun b!5431150 () Bool)

(assert (=> b!5431150 (= e!3365293 (matchZipper!1467 (derivationStepZipper!1462 lt!2214317 (head!11649 s!2326)) (tail!10746 s!2326)))))

(assert (= (and d!1731669 c!947665) b!5431149))

(assert (= (and d!1731669 (not c!947665)) b!5431150))

(assert (=> d!1731669 m!6453838))

(declare-fun m!6454140 () Bool)

(assert (=> b!5431149 m!6454140))

(assert (=> b!5431150 m!6453860))

(assert (=> b!5431150 m!6453860))

(declare-fun m!6454142 () Bool)

(assert (=> b!5431150 m!6454142))

(assert (=> b!5431150 m!6453856))

(assert (=> b!5431150 m!6454142))

(assert (=> b!5431150 m!6453856))

(declare-fun m!6454144 () Bool)

(assert (=> b!5431150 m!6454144))

(assert (=> b!5430420 d!1731669))

(declare-fun d!1731671 () Bool)

(assert (=> d!1731671 (= (matchR!7408 lt!2214306 s!2326) (matchZipper!1467 lt!2214317 s!2326))))

(declare-fun lt!2214446 () Unit!154414)

(declare-fun choose!41192 ((InoxSet Context!9214) List!61970 Regex!15223 List!61969) Unit!154414)

(assert (=> d!1731671 (= lt!2214446 (choose!41192 lt!2214317 lt!2214336 lt!2214306 s!2326))))

(assert (=> d!1731671 (validRegex!6959 lt!2214306)))

(assert (=> d!1731671 (= (theoremZipperRegexEquiv!527 lt!2214317 lt!2214336 lt!2214306 s!2326) lt!2214446)))

(declare-fun bs!1254478 () Bool)

(assert (= bs!1254478 d!1731671))

(assert (=> bs!1254478 m!6453654))

(assert (=> bs!1254478 m!6453656))

(declare-fun m!6454146 () Bool)

(assert (=> bs!1254478 m!6454146))

(assert (=> bs!1254478 m!6454134))

(assert (=> b!5430420 d!1731671))

(assert (=> b!5430424 d!1731503))

(declare-fun b!5431214 () Bool)

(declare-fun e!3365330 () Bool)

(declare-fun lt!2214468 () Option!15334)

(assert (=> b!5431214 (= e!3365330 (not (isDefined!12037 lt!2214468)))))

(declare-fun b!5431215 () Bool)

(declare-fun e!3365334 () Bool)

(assert (=> b!5431215 (= e!3365334 (matchR!7408 (regTwo!30958 r!7292) s!2326))))

(declare-fun b!5431216 () Bool)

(declare-fun e!3365331 () Option!15334)

(assert (=> b!5431216 (= e!3365331 (Some!15333 (tuple2!64845 Nil!61845 s!2326)))))

(declare-fun b!5431218 () Bool)

(declare-fun res!2311282 () Bool)

(declare-fun e!3365333 () Bool)

(assert (=> b!5431218 (=> (not res!2311282) (not e!3365333))))

(declare-fun get!21333 (Option!15334) tuple2!64844)

(assert (=> b!5431218 (= res!2311282 (matchR!7408 (regOne!30958 r!7292) (_1!35725 (get!21333 lt!2214468))))))

(declare-fun b!5431219 () Bool)

(declare-fun e!3365332 () Option!15334)

(assert (=> b!5431219 (= e!3365332 None!15333)))

(declare-fun b!5431220 () Bool)

(assert (=> b!5431220 (= e!3365331 e!3365332)))

(declare-fun c!947694 () Bool)

(assert (=> b!5431220 (= c!947694 ((_ is Nil!61845) s!2326))))

(declare-fun b!5431221 () Bool)

(declare-fun res!2311284 () Bool)

(assert (=> b!5431221 (=> (not res!2311284) (not e!3365333))))

(assert (=> b!5431221 (= res!2311284 (matchR!7408 (regTwo!30958 r!7292) (_2!35725 (get!21333 lt!2214468))))))

(declare-fun b!5431222 () Bool)

(declare-fun ++!13604 (List!61969 List!61969) List!61969)

(assert (=> b!5431222 (= e!3365333 (= (++!13604 (_1!35725 (get!21333 lt!2214468)) (_2!35725 (get!21333 lt!2214468))) s!2326))))

(declare-fun b!5431217 () Bool)

(declare-fun lt!2214467 () Unit!154414)

(declare-fun lt!2214466 () Unit!154414)

(assert (=> b!5431217 (= lt!2214467 lt!2214466)))

(assert (=> b!5431217 (= (++!13604 (++!13604 Nil!61845 (Cons!61845 (h!68293 s!2326) Nil!61845)) (t!375194 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1861 (List!61969 C!30716 List!61969 List!61969) Unit!154414)

(assert (=> b!5431217 (= lt!2214466 (lemmaMoveElementToOtherListKeepsConcatEq!1861 Nil!61845 (h!68293 s!2326) (t!375194 s!2326) s!2326))))

(assert (=> b!5431217 (= e!3365332 (findConcatSeparation!1748 (regOne!30958 r!7292) (regTwo!30958 r!7292) (++!13604 Nil!61845 (Cons!61845 (h!68293 s!2326) Nil!61845)) (t!375194 s!2326) s!2326))))

(declare-fun d!1731673 () Bool)

(assert (=> d!1731673 e!3365330))

(declare-fun res!2311286 () Bool)

(assert (=> d!1731673 (=> res!2311286 e!3365330)))

(assert (=> d!1731673 (= res!2311286 e!3365333)))

(declare-fun res!2311283 () Bool)

(assert (=> d!1731673 (=> (not res!2311283) (not e!3365333))))

(assert (=> d!1731673 (= res!2311283 (isDefined!12037 lt!2214468))))

(assert (=> d!1731673 (= lt!2214468 e!3365331)))

(declare-fun c!947693 () Bool)

(assert (=> d!1731673 (= c!947693 e!3365334)))

(declare-fun res!2311285 () Bool)

(assert (=> d!1731673 (=> (not res!2311285) (not e!3365334))))

(assert (=> d!1731673 (= res!2311285 (matchR!7408 (regOne!30958 r!7292) Nil!61845))))

(assert (=> d!1731673 (validRegex!6959 (regOne!30958 r!7292))))

(assert (=> d!1731673 (= (findConcatSeparation!1748 (regOne!30958 r!7292) (regTwo!30958 r!7292) Nil!61845 s!2326 s!2326) lt!2214468)))

(assert (= (and d!1731673 res!2311285) b!5431215))

(assert (= (and d!1731673 c!947693) b!5431216))

(assert (= (and d!1731673 (not c!947693)) b!5431220))

(assert (= (and b!5431220 c!947694) b!5431219))

(assert (= (and b!5431220 (not c!947694)) b!5431217))

(assert (= (and d!1731673 res!2311283) b!5431218))

(assert (= (and b!5431218 res!2311282) b!5431221))

(assert (= (and b!5431221 res!2311284) b!5431222))

(assert (= (and d!1731673 (not res!2311286)) b!5431214))

(declare-fun m!6454190 () Bool)

(assert (=> d!1731673 m!6454190))

(declare-fun m!6454192 () Bool)

(assert (=> d!1731673 m!6454192))

(declare-fun m!6454194 () Bool)

(assert (=> d!1731673 m!6454194))

(declare-fun m!6454196 () Bool)

(assert (=> b!5431218 m!6454196))

(declare-fun m!6454198 () Bool)

(assert (=> b!5431218 m!6454198))

(declare-fun m!6454200 () Bool)

(assert (=> b!5431215 m!6454200))

(declare-fun m!6454202 () Bool)

(assert (=> b!5431217 m!6454202))

(assert (=> b!5431217 m!6454202))

(declare-fun m!6454204 () Bool)

(assert (=> b!5431217 m!6454204))

(declare-fun m!6454206 () Bool)

(assert (=> b!5431217 m!6454206))

(assert (=> b!5431217 m!6454202))

(declare-fun m!6454208 () Bool)

(assert (=> b!5431217 m!6454208))

(assert (=> b!5431214 m!6454190))

(assert (=> b!5431221 m!6454196))

(declare-fun m!6454210 () Bool)

(assert (=> b!5431221 m!6454210))

(assert (=> b!5431222 m!6454196))

(declare-fun m!6454212 () Bool)

(assert (=> b!5431222 m!6454212))

(assert (=> b!5430423 d!1731673))

(declare-fun d!1731683 () Bool)

(declare-fun choose!41193 (Int) Bool)

(assert (=> d!1731683 (= (Exists!2404 lambda!284963) (choose!41193 lambda!284963))))

(declare-fun bs!1254493 () Bool)

(assert (= bs!1254493 d!1731683))

(declare-fun m!6454226 () Bool)

(assert (=> bs!1254493 m!6454226))

(assert (=> b!5430423 d!1731683))

(declare-fun d!1731687 () Bool)

(assert (=> d!1731687 (= (Exists!2404 lambda!284962) (choose!41193 lambda!284962))))

(declare-fun bs!1254495 () Bool)

(assert (= bs!1254495 d!1731687))

(declare-fun m!6454228 () Bool)

(assert (=> bs!1254495 m!6454228))

(assert (=> b!5430423 d!1731687))

(declare-fun bs!1254499 () Bool)

(declare-fun d!1731689 () Bool)

(assert (= bs!1254499 (and d!1731689 b!5430642)))

(declare-fun lambda!285049 () Int)

(assert (=> bs!1254499 (not (= lambda!285049 lambda!284997))))

(declare-fun bs!1254500 () Bool)

(assert (= bs!1254500 (and d!1731689 b!5430825)))

(assert (=> bs!1254500 (not (= lambda!285049 lambda!285006))))

(declare-fun bs!1254501 () Bool)

(assert (= bs!1254501 (and d!1731689 b!5430423)))

(assert (=> bs!1254501 (= lambda!285049 lambda!284962)))

(assert (=> bs!1254501 (not (= lambda!285049 lambda!284963))))

(declare-fun bs!1254502 () Bool)

(assert (= bs!1254502 (and d!1731689 b!5430635)))

(assert (=> bs!1254502 (not (= lambda!285049 lambda!284998))))

(declare-fun bs!1254503 () Bool)

(assert (= bs!1254503 (and d!1731689 b!5430832)))

(assert (=> bs!1254503 (not (= lambda!285049 lambda!285005))))

(assert (=> d!1731689 true))

(assert (=> d!1731689 true))

(assert (=> d!1731689 true))

(assert (=> d!1731689 (= (isDefined!12037 (findConcatSeparation!1748 (regOne!30958 r!7292) (regTwo!30958 r!7292) Nil!61845 s!2326 s!2326)) (Exists!2404 lambda!285049))))

(declare-fun lt!2214480 () Unit!154414)

(declare-fun choose!41194 (Regex!15223 Regex!15223 List!61969) Unit!154414)

(assert (=> d!1731689 (= lt!2214480 (choose!41194 (regOne!30958 r!7292) (regTwo!30958 r!7292) s!2326))))

(assert (=> d!1731689 (validRegex!6959 (regOne!30958 r!7292))))

(assert (=> d!1731689 (= (lemmaFindConcatSeparationEquivalentToExists!1512 (regOne!30958 r!7292) (regTwo!30958 r!7292) s!2326) lt!2214480)))

(declare-fun bs!1254504 () Bool)

(assert (= bs!1254504 d!1731689))

(declare-fun m!6454264 () Bool)

(assert (=> bs!1254504 m!6454264))

(assert (=> bs!1254504 m!6453636))

(declare-fun m!6454266 () Bool)

(assert (=> bs!1254504 m!6454266))

(assert (=> bs!1254504 m!6453636))

(assert (=> bs!1254504 m!6453638))

(assert (=> bs!1254504 m!6454194))

(assert (=> b!5430423 d!1731689))

(declare-fun bs!1254513 () Bool)

(declare-fun d!1731705 () Bool)

(assert (= bs!1254513 (and d!1731705 b!5430642)))

(declare-fun lambda!285055 () Int)

(assert (=> bs!1254513 (not (= lambda!285055 lambda!284997))))

(declare-fun bs!1254515 () Bool)

(assert (= bs!1254515 (and d!1731705 b!5430825)))

(assert (=> bs!1254515 (not (= lambda!285055 lambda!285006))))

(declare-fun bs!1254518 () Bool)

(assert (= bs!1254518 (and d!1731705 b!5430423)))

(assert (=> bs!1254518 (= lambda!285055 lambda!284962)))

(assert (=> bs!1254518 (not (= lambda!285055 lambda!284963))))

(declare-fun bs!1254521 () Bool)

(assert (= bs!1254521 (and d!1731705 b!5430832)))

(assert (=> bs!1254521 (not (= lambda!285055 lambda!285005))))

(declare-fun bs!1254522 () Bool)

(assert (= bs!1254522 (and d!1731705 b!5430635)))

(assert (=> bs!1254522 (not (= lambda!285055 lambda!284998))))

(declare-fun bs!1254523 () Bool)

(assert (= bs!1254523 (and d!1731705 d!1731689)))

(assert (=> bs!1254523 (= lambda!285055 lambda!285049)))

(assert (=> d!1731705 true))

(assert (=> d!1731705 true))

(assert (=> d!1731705 true))

(declare-fun lambda!285056 () Int)

(assert (=> bs!1254513 (not (= lambda!285056 lambda!284997))))

(assert (=> bs!1254515 (= (and (= (regOne!30958 r!7292) (regOne!30958 lt!2214318)) (= (regTwo!30958 r!7292) (regTwo!30958 lt!2214318))) (= lambda!285056 lambda!285006))))

(assert (=> bs!1254518 (not (= lambda!285056 lambda!284962))))

(assert (=> bs!1254518 (= lambda!285056 lambda!284963)))

(declare-fun bs!1254524 () Bool)

(assert (= bs!1254524 d!1731705))

(assert (=> bs!1254524 (not (= lambda!285056 lambda!285055))))

(assert (=> bs!1254521 (not (= lambda!285056 lambda!285005))))

(assert (=> bs!1254522 (= lambda!285056 lambda!284998)))

(assert (=> bs!1254523 (not (= lambda!285056 lambda!285049))))

(assert (=> d!1731705 true))

(assert (=> d!1731705 true))

(assert (=> d!1731705 true))

(assert (=> d!1731705 (= (Exists!2404 lambda!285055) (Exists!2404 lambda!285056))))

(declare-fun lt!2214487 () Unit!154414)

(declare-fun choose!41195 (Regex!15223 Regex!15223 List!61969) Unit!154414)

(assert (=> d!1731705 (= lt!2214487 (choose!41195 (regOne!30958 r!7292) (regTwo!30958 r!7292) s!2326))))

(assert (=> d!1731705 (validRegex!6959 (regOne!30958 r!7292))))

(assert (=> d!1731705 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1058 (regOne!30958 r!7292) (regTwo!30958 r!7292) s!2326) lt!2214487)))

(declare-fun m!6454292 () Bool)

(assert (=> bs!1254524 m!6454292))

(declare-fun m!6454294 () Bool)

(assert (=> bs!1254524 m!6454294))

(declare-fun m!6454296 () Bool)

(assert (=> bs!1254524 m!6454296))

(assert (=> bs!1254524 m!6454194))

(assert (=> b!5430423 d!1731705))

(declare-fun d!1731723 () Bool)

(declare-fun isEmpty!33849 (Option!15334) Bool)

(assert (=> d!1731723 (= (isDefined!12037 (findConcatSeparation!1748 (regOne!30958 r!7292) (regTwo!30958 r!7292) Nil!61845 s!2326 s!2326)) (not (isEmpty!33849 (findConcatSeparation!1748 (regOne!30958 r!7292) (regTwo!30958 r!7292) Nil!61845 s!2326 s!2326))))))

(declare-fun bs!1254525 () Bool)

(assert (= bs!1254525 d!1731723))

(assert (=> bs!1254525 m!6453636))

(declare-fun m!6454298 () Bool)

(assert (=> bs!1254525 m!6454298))

(assert (=> b!5430423 d!1731723))

(declare-fun d!1731725 () Bool)

(assert (=> d!1731725 (= (flatMap!950 z!1189 lambda!284964) (dynLambda!24369 lambda!284964 (h!68294 zl!343)))))

(declare-fun lt!2214488 () Unit!154414)

(assert (=> d!1731725 (= lt!2214488 (choose!41184 z!1189 (h!68294 zl!343) lambda!284964))))

(assert (=> d!1731725 (= z!1189 (store ((as const (Array Context!9214 Bool)) false) (h!68294 zl!343) true))))

(assert (=> d!1731725 (= (lemmaFlatMapOnSingletonSet!482 z!1189 (h!68294 zl!343) lambda!284964) lt!2214488)))

(declare-fun b_lambda!207253 () Bool)

(assert (=> (not b_lambda!207253) (not d!1731725)))

(declare-fun bs!1254526 () Bool)

(assert (= bs!1254526 d!1731725))

(assert (=> bs!1254526 m!6453614))

(declare-fun m!6454300 () Bool)

(assert (=> bs!1254526 m!6454300))

(declare-fun m!6454302 () Bool)

(assert (=> bs!1254526 m!6454302))

(declare-fun m!6454304 () Bool)

(assert (=> bs!1254526 m!6454304))

(assert (=> b!5430406 d!1731725))

(declare-fun d!1731727 () Bool)

(assert (=> d!1731727 (= (nullable!5392 (h!68292 (exprs!5107 (h!68294 zl!343)))) (nullableFct!1617 (h!68292 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun bs!1254527 () Bool)

(assert (= bs!1254527 d!1731727))

(declare-fun m!6454306 () Bool)

(assert (=> bs!1254527 m!6454306))

(assert (=> b!5430406 d!1731727))

(declare-fun b!5431327 () Bool)

(declare-fun e!3365391 () (InoxSet Context!9214))

(assert (=> b!5431327 (= e!3365391 ((as const (Array Context!9214 Bool)) false))))

(declare-fun d!1731729 () Bool)

(declare-fun c!947705 () Bool)

(declare-fun e!3365389 () Bool)

(assert (=> d!1731729 (= c!947705 e!3365389)))

(declare-fun res!2311319 () Bool)

(assert (=> d!1731729 (=> (not res!2311319) (not e!3365389))))

(assert (=> d!1731729 (= res!2311319 ((_ is Cons!61844) (exprs!5107 (Context!9215 (Cons!61844 (h!68292 (exprs!5107 (h!68294 zl!343))) (t!375193 (exprs!5107 (h!68294 zl!343))))))))))

(declare-fun e!3365390 () (InoxSet Context!9214))

(assert (=> d!1731729 (= (derivationStepZipperUp!595 (Context!9215 (Cons!61844 (h!68292 (exprs!5107 (h!68294 zl!343))) (t!375193 (exprs!5107 (h!68294 zl!343))))) (h!68293 s!2326)) e!3365390)))

(declare-fun b!5431328 () Bool)

(assert (=> b!5431328 (= e!3365390 e!3365391)))

(declare-fun c!947704 () Bool)

(assert (=> b!5431328 (= c!947704 ((_ is Cons!61844) (exprs!5107 (Context!9215 (Cons!61844 (h!68292 (exprs!5107 (h!68294 zl!343))) (t!375193 (exprs!5107 (h!68294 zl!343))))))))))

(declare-fun call!388975 () (InoxSet Context!9214))

(declare-fun b!5431329 () Bool)

(assert (=> b!5431329 (= e!3365390 ((_ map or) call!388975 (derivationStepZipperUp!595 (Context!9215 (t!375193 (exprs!5107 (Context!9215 (Cons!61844 (h!68292 (exprs!5107 (h!68294 zl!343))) (t!375193 (exprs!5107 (h!68294 zl!343)))))))) (h!68293 s!2326))))))

(declare-fun b!5431330 () Bool)

(assert (=> b!5431330 (= e!3365391 call!388975)))

(declare-fun b!5431331 () Bool)

(assert (=> b!5431331 (= e!3365389 (nullable!5392 (h!68292 (exprs!5107 (Context!9215 (Cons!61844 (h!68292 (exprs!5107 (h!68294 zl!343))) (t!375193 (exprs!5107 (h!68294 zl!343)))))))))))

(declare-fun bm!388970 () Bool)

(assert (=> bm!388970 (= call!388975 (derivationStepZipperDown!671 (h!68292 (exprs!5107 (Context!9215 (Cons!61844 (h!68292 (exprs!5107 (h!68294 zl!343))) (t!375193 (exprs!5107 (h!68294 zl!343))))))) (Context!9215 (t!375193 (exprs!5107 (Context!9215 (Cons!61844 (h!68292 (exprs!5107 (h!68294 zl!343))) (t!375193 (exprs!5107 (h!68294 zl!343)))))))) (h!68293 s!2326)))))

(assert (= (and d!1731729 res!2311319) b!5431331))

(assert (= (and d!1731729 c!947705) b!5431329))

(assert (= (and d!1731729 (not c!947705)) b!5431328))

(assert (= (and b!5431328 c!947704) b!5431330))

(assert (= (and b!5431328 (not c!947704)) b!5431327))

(assert (= (or b!5431329 b!5431330) bm!388970))

(declare-fun m!6454308 () Bool)

(assert (=> b!5431329 m!6454308))

(declare-fun m!6454310 () Bool)

(assert (=> b!5431331 m!6454310))

(declare-fun m!6454312 () Bool)

(assert (=> bm!388970 m!6454312))

(assert (=> b!5430406 d!1731729))

(assert (=> b!5430406 d!1731509))

(declare-fun d!1731731 () Bool)

(assert (=> d!1731731 (= (flatMap!950 z!1189 lambda!284964) (choose!41183 z!1189 lambda!284964))))

(declare-fun bs!1254528 () Bool)

(assert (= bs!1254528 d!1731731))

(declare-fun m!6454314 () Bool)

(assert (=> bs!1254528 m!6454314))

(assert (=> b!5430406 d!1731731))

(declare-fun b!5431332 () Bool)

(declare-fun e!3365394 () (InoxSet Context!9214))

(assert (=> b!5431332 (= e!3365394 ((as const (Array Context!9214 Bool)) false))))

(declare-fun d!1731733 () Bool)

(declare-fun c!947707 () Bool)

(declare-fun e!3365392 () Bool)

(assert (=> d!1731733 (= c!947707 e!3365392)))

(declare-fun res!2311320 () Bool)

(assert (=> d!1731733 (=> (not res!2311320) (not e!3365392))))

(assert (=> d!1731733 (= res!2311320 ((_ is Cons!61844) (exprs!5107 (h!68294 zl!343))))))

(declare-fun e!3365393 () (InoxSet Context!9214))

(assert (=> d!1731733 (= (derivationStepZipperUp!595 (h!68294 zl!343) (h!68293 s!2326)) e!3365393)))

(declare-fun b!5431333 () Bool)

(assert (=> b!5431333 (= e!3365393 e!3365394)))

(declare-fun c!947706 () Bool)

(assert (=> b!5431333 (= c!947706 ((_ is Cons!61844) (exprs!5107 (h!68294 zl!343))))))

(declare-fun call!388976 () (InoxSet Context!9214))

(declare-fun b!5431334 () Bool)

(assert (=> b!5431334 (= e!3365393 ((_ map or) call!388976 (derivationStepZipperUp!595 (Context!9215 (t!375193 (exprs!5107 (h!68294 zl!343)))) (h!68293 s!2326))))))

(declare-fun b!5431335 () Bool)

(assert (=> b!5431335 (= e!3365394 call!388976)))

(declare-fun b!5431336 () Bool)

(assert (=> b!5431336 (= e!3365392 (nullable!5392 (h!68292 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun bm!388971 () Bool)

(assert (=> bm!388971 (= call!388976 (derivationStepZipperDown!671 (h!68292 (exprs!5107 (h!68294 zl!343))) (Context!9215 (t!375193 (exprs!5107 (h!68294 zl!343)))) (h!68293 s!2326)))))

(assert (= (and d!1731733 res!2311320) b!5431336))

(assert (= (and d!1731733 c!947707) b!5431334))

(assert (= (and d!1731733 (not c!947707)) b!5431333))

(assert (= (and b!5431333 c!947706) b!5431335))

(assert (= (and b!5431333 (not c!947706)) b!5431332))

(assert (= (or b!5431334 b!5431335) bm!388971))

(declare-fun m!6454316 () Bool)

(assert (=> b!5431334 m!6454316))

(assert (=> b!5431336 m!6453620))

(declare-fun m!6454318 () Bool)

(assert (=> bm!388971 m!6454318))

(assert (=> b!5430406 d!1731733))

(declare-fun bm!388984 () Bool)

(declare-fun call!388989 () (InoxSet Context!9214))

(declare-fun call!388990 () (InoxSet Context!9214))

(assert (=> bm!388984 (= call!388989 call!388990)))

(declare-fun b!5431359 () Bool)

(declare-fun e!3365411 () (InoxSet Context!9214))

(assert (=> b!5431359 (= e!3365411 ((as const (Array Context!9214 Bool)) false))))

(declare-fun b!5431360 () Bool)

(declare-fun c!947721 () Bool)

(assert (=> b!5431360 (= c!947721 ((_ is Star!15223) (h!68292 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun e!3365410 () (InoxSet Context!9214))

(assert (=> b!5431360 (= e!3365410 e!3365411)))

(declare-fun b!5431361 () Bool)

(declare-fun e!3365408 () (InoxSet Context!9214))

(assert (=> b!5431361 (= e!3365408 (store ((as const (Array Context!9214 Bool)) false) lt!2214315 true))))

(declare-fun bm!388985 () Bool)

(declare-fun call!388991 () (InoxSet Context!9214))

(assert (=> bm!388985 (= call!388990 call!388991)))

(declare-fun b!5431363 () Bool)

(declare-fun e!3365412 () (InoxSet Context!9214))

(assert (=> b!5431363 (= e!3365412 e!3365410)))

(declare-fun c!947719 () Bool)

(assert (=> b!5431363 (= c!947719 ((_ is Concat!24068) (h!68292 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun b!5431364 () Bool)

(declare-fun e!3365407 () (InoxSet Context!9214))

(assert (=> b!5431364 (= e!3365408 e!3365407)))

(declare-fun c!947718 () Bool)

(assert (=> b!5431364 (= c!947718 ((_ is Union!15223) (h!68292 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun call!388992 () List!61968)

(declare-fun call!388994 () (InoxSet Context!9214))

(declare-fun bm!388986 () Bool)

(assert (=> bm!388986 (= call!388994 (derivationStepZipperDown!671 (ite c!947718 (regTwo!30959 (h!68292 (exprs!5107 (h!68294 zl!343)))) (regOne!30958 (h!68292 (exprs!5107 (h!68294 zl!343))))) (ite c!947718 lt!2214315 (Context!9215 call!388992)) (h!68293 s!2326)))))

(declare-fun bm!388987 () Bool)

(declare-fun c!947722 () Bool)

(declare-fun call!388993 () List!61968)

(assert (=> bm!388987 (= call!388991 (derivationStepZipperDown!671 (ite c!947718 (regOne!30959 (h!68292 (exprs!5107 (h!68294 zl!343)))) (ite c!947722 (regTwo!30958 (h!68292 (exprs!5107 (h!68294 zl!343)))) (ite c!947719 (regOne!30958 (h!68292 (exprs!5107 (h!68294 zl!343)))) (reg!15552 (h!68292 (exprs!5107 (h!68294 zl!343))))))) (ite (or c!947718 c!947722) lt!2214315 (Context!9215 call!388993)) (h!68293 s!2326)))))

(declare-fun bm!388988 () Bool)

(declare-fun $colon$colon!1516 (List!61968 Regex!15223) List!61968)

(assert (=> bm!388988 (= call!388992 ($colon$colon!1516 (exprs!5107 lt!2214315) (ite (or c!947722 c!947719) (regTwo!30958 (h!68292 (exprs!5107 (h!68294 zl!343)))) (h!68292 (exprs!5107 (h!68294 zl!343))))))))

(declare-fun b!5431365 () Bool)

(assert (=> b!5431365 (= e!3365407 ((_ map or) call!388991 call!388994))))

(declare-fun b!5431366 () Bool)

(assert (=> b!5431366 (= e!3365411 call!388989)))

(declare-fun bm!388989 () Bool)

(assert (=> bm!388989 (= call!388993 call!388992)))

(declare-fun b!5431367 () Bool)

(assert (=> b!5431367 (= e!3365412 ((_ map or) call!388994 call!388990))))

(declare-fun d!1731735 () Bool)

(declare-fun c!947720 () Bool)

(assert (=> d!1731735 (= c!947720 (and ((_ is ElementMatch!15223) (h!68292 (exprs!5107 (h!68294 zl!343)))) (= (c!947425 (h!68292 (exprs!5107 (h!68294 zl!343)))) (h!68293 s!2326))))))

(assert (=> d!1731735 (= (derivationStepZipperDown!671 (h!68292 (exprs!5107 (h!68294 zl!343))) lt!2214315 (h!68293 s!2326)) e!3365408)))

(declare-fun b!5431362 () Bool)

(declare-fun e!3365409 () Bool)

(assert (=> b!5431362 (= c!947722 e!3365409)))

(declare-fun res!2311323 () Bool)

(assert (=> b!5431362 (=> (not res!2311323) (not e!3365409))))

(assert (=> b!5431362 (= res!2311323 ((_ is Concat!24068) (h!68292 (exprs!5107 (h!68294 zl!343)))))))

(assert (=> b!5431362 (= e!3365407 e!3365412)))

(declare-fun b!5431368 () Bool)

(assert (=> b!5431368 (= e!3365410 call!388989)))

(declare-fun b!5431369 () Bool)

(assert (=> b!5431369 (= e!3365409 (nullable!5392 (regOne!30958 (h!68292 (exprs!5107 (h!68294 zl!343))))))))

(assert (= (and d!1731735 c!947720) b!5431361))

(assert (= (and d!1731735 (not c!947720)) b!5431364))

(assert (= (and b!5431364 c!947718) b!5431365))

(assert (= (and b!5431364 (not c!947718)) b!5431362))

(assert (= (and b!5431362 res!2311323) b!5431369))

(assert (= (and b!5431362 c!947722) b!5431367))

(assert (= (and b!5431362 (not c!947722)) b!5431363))

(assert (= (and b!5431363 c!947719) b!5431368))

(assert (= (and b!5431363 (not c!947719)) b!5431360))

(assert (= (and b!5431360 c!947721) b!5431366))

(assert (= (and b!5431360 (not c!947721)) b!5431359))

(assert (= (or b!5431368 b!5431366) bm!388989))

(assert (= (or b!5431368 b!5431366) bm!388984))

(assert (= (or b!5431367 bm!388989) bm!388988))

(assert (= (or b!5431367 bm!388984) bm!388985))

(assert (= (or b!5431365 b!5431367) bm!388986))

(assert (= (or b!5431365 bm!388985) bm!388987))

(declare-fun m!6454320 () Bool)

(assert (=> b!5431369 m!6454320))

(declare-fun m!6454322 () Bool)

(assert (=> bm!388987 m!6454322))

(declare-fun m!6454324 () Bool)

(assert (=> bm!388988 m!6454324))

(assert (=> b!5431361 m!6453596))

(declare-fun m!6454326 () Bool)

(assert (=> bm!388986 m!6454326))

(assert (=> b!5430406 d!1731735))

(declare-fun d!1731737 () Bool)

(assert (=> d!1731737 (= (isEmpty!33844 (t!375195 zl!343)) ((_ is Nil!61846) (t!375195 zl!343)))))

(assert (=> b!5430426 d!1731737))

(declare-fun d!1731739 () Bool)

(declare-fun c!947723 () Bool)

(assert (=> d!1731739 (= c!947723 (isEmpty!33847 s!2326))))

(declare-fun e!3365413 () Bool)

(assert (=> d!1731739 (= (matchZipper!1467 z!1189 s!2326) e!3365413)))

(declare-fun b!5431370 () Bool)

(assert (=> b!5431370 (= e!3365413 (nullableZipper!1466 z!1189))))

(declare-fun b!5431371 () Bool)

(assert (=> b!5431371 (= e!3365413 (matchZipper!1467 (derivationStepZipper!1462 z!1189 (head!11649 s!2326)) (tail!10746 s!2326)))))

(assert (= (and d!1731739 c!947723) b!5431370))

(assert (= (and d!1731739 (not c!947723)) b!5431371))

(assert (=> d!1731739 m!6453838))

(declare-fun m!6454328 () Bool)

(assert (=> b!5431370 m!6454328))

(assert (=> b!5431371 m!6453860))

(assert (=> b!5431371 m!6453860))

(declare-fun m!6454330 () Bool)

(assert (=> b!5431371 m!6454330))

(assert (=> b!5431371 m!6453856))

(assert (=> b!5431371 m!6454330))

(assert (=> b!5431371 m!6453856))

(declare-fun m!6454332 () Bool)

(assert (=> b!5431371 m!6454332))

(assert (=> b!5430427 d!1731739))

(declare-fun bm!388990 () Bool)

(declare-fun call!388995 () (InoxSet Context!9214))

(declare-fun call!388996 () (InoxSet Context!9214))

(assert (=> bm!388990 (= call!388995 call!388996)))

(declare-fun b!5431372 () Bool)

(declare-fun e!3365418 () (InoxSet Context!9214))

(assert (=> b!5431372 (= e!3365418 ((as const (Array Context!9214 Bool)) false))))

(declare-fun b!5431373 () Bool)

(declare-fun c!947727 () Bool)

(assert (=> b!5431373 (= c!947727 ((_ is Star!15223) (reg!15552 (regOne!30958 r!7292))))))

(declare-fun e!3365417 () (InoxSet Context!9214))

(assert (=> b!5431373 (= e!3365417 e!3365418)))

(declare-fun b!5431374 () Bool)

(declare-fun e!3365415 () (InoxSet Context!9214))

(assert (=> b!5431374 (= e!3365415 (store ((as const (Array Context!9214 Bool)) false) lt!2214325 true))))

(declare-fun bm!388991 () Bool)

(declare-fun call!388997 () (InoxSet Context!9214))

(assert (=> bm!388991 (= call!388996 call!388997)))

(declare-fun b!5431376 () Bool)

(declare-fun e!3365419 () (InoxSet Context!9214))

(assert (=> b!5431376 (= e!3365419 e!3365417)))

(declare-fun c!947725 () Bool)

(assert (=> b!5431376 (= c!947725 ((_ is Concat!24068) (reg!15552 (regOne!30958 r!7292))))))

(declare-fun b!5431377 () Bool)

(declare-fun e!3365414 () (InoxSet Context!9214))

(assert (=> b!5431377 (= e!3365415 e!3365414)))

(declare-fun c!947724 () Bool)

(assert (=> b!5431377 (= c!947724 ((_ is Union!15223) (reg!15552 (regOne!30958 r!7292))))))

(declare-fun call!389000 () (InoxSet Context!9214))

(declare-fun bm!388992 () Bool)

(declare-fun call!388998 () List!61968)

(assert (=> bm!388992 (= call!389000 (derivationStepZipperDown!671 (ite c!947724 (regTwo!30959 (reg!15552 (regOne!30958 r!7292))) (regOne!30958 (reg!15552 (regOne!30958 r!7292)))) (ite c!947724 lt!2214325 (Context!9215 call!388998)) (h!68293 s!2326)))))

(declare-fun bm!388993 () Bool)

(declare-fun call!388999 () List!61968)

(declare-fun c!947728 () Bool)

(assert (=> bm!388993 (= call!388997 (derivationStepZipperDown!671 (ite c!947724 (regOne!30959 (reg!15552 (regOne!30958 r!7292))) (ite c!947728 (regTwo!30958 (reg!15552 (regOne!30958 r!7292))) (ite c!947725 (regOne!30958 (reg!15552 (regOne!30958 r!7292))) (reg!15552 (reg!15552 (regOne!30958 r!7292)))))) (ite (or c!947724 c!947728) lt!2214325 (Context!9215 call!388999)) (h!68293 s!2326)))))

(declare-fun bm!388994 () Bool)

(assert (=> bm!388994 (= call!388998 ($colon$colon!1516 (exprs!5107 lt!2214325) (ite (or c!947728 c!947725) (regTwo!30958 (reg!15552 (regOne!30958 r!7292))) (reg!15552 (regOne!30958 r!7292)))))))

(declare-fun b!5431378 () Bool)

(assert (=> b!5431378 (= e!3365414 ((_ map or) call!388997 call!389000))))

(declare-fun b!5431379 () Bool)

(assert (=> b!5431379 (= e!3365418 call!388995)))

(declare-fun bm!388995 () Bool)

(assert (=> bm!388995 (= call!388999 call!388998)))

(declare-fun b!5431380 () Bool)

(assert (=> b!5431380 (= e!3365419 ((_ map or) call!389000 call!388996))))

(declare-fun d!1731741 () Bool)

(declare-fun c!947726 () Bool)

(assert (=> d!1731741 (= c!947726 (and ((_ is ElementMatch!15223) (reg!15552 (regOne!30958 r!7292))) (= (c!947425 (reg!15552 (regOne!30958 r!7292))) (h!68293 s!2326))))))

(assert (=> d!1731741 (= (derivationStepZipperDown!671 (reg!15552 (regOne!30958 r!7292)) lt!2214325 (h!68293 s!2326)) e!3365415)))

(declare-fun b!5431375 () Bool)

(declare-fun e!3365416 () Bool)

(assert (=> b!5431375 (= c!947728 e!3365416)))

(declare-fun res!2311324 () Bool)

(assert (=> b!5431375 (=> (not res!2311324) (not e!3365416))))

(assert (=> b!5431375 (= res!2311324 ((_ is Concat!24068) (reg!15552 (regOne!30958 r!7292))))))

(assert (=> b!5431375 (= e!3365414 e!3365419)))

(declare-fun b!5431381 () Bool)

(assert (=> b!5431381 (= e!3365417 call!388995)))

(declare-fun b!5431382 () Bool)

(assert (=> b!5431382 (= e!3365416 (nullable!5392 (regOne!30958 (reg!15552 (regOne!30958 r!7292)))))))

(assert (= (and d!1731741 c!947726) b!5431374))

(assert (= (and d!1731741 (not c!947726)) b!5431377))

(assert (= (and b!5431377 c!947724) b!5431378))

(assert (= (and b!5431377 (not c!947724)) b!5431375))

(assert (= (and b!5431375 res!2311324) b!5431382))

(assert (= (and b!5431375 c!947728) b!5431380))

(assert (= (and b!5431375 (not c!947728)) b!5431376))

(assert (= (and b!5431376 c!947725) b!5431381))

(assert (= (and b!5431376 (not c!947725)) b!5431373))

(assert (= (and b!5431373 c!947727) b!5431379))

(assert (= (and b!5431373 (not c!947727)) b!5431372))

(assert (= (or b!5431381 b!5431379) bm!388995))

(assert (= (or b!5431381 b!5431379) bm!388990))

(assert (= (or b!5431380 bm!388995) bm!388994))

(assert (= (or b!5431380 bm!388990) bm!388991))

(assert (= (or b!5431378 b!5431380) bm!388992))

(assert (= (or b!5431378 bm!388991) bm!388993))

(declare-fun m!6454334 () Bool)

(assert (=> b!5431382 m!6454334))

(declare-fun m!6454336 () Bool)

(assert (=> bm!388993 m!6454336))

(declare-fun m!6454338 () Bool)

(assert (=> bm!388994 m!6454338))

(assert (=> b!5431374 m!6453564))

(declare-fun m!6454340 () Bool)

(assert (=> bm!388992 m!6454340))

(assert (=> b!5430425 d!1731741))

(declare-fun bs!1254529 () Bool)

(declare-fun d!1731743 () Bool)

(assert (= bs!1254529 (and d!1731743 d!1731531)))

(declare-fun lambda!285057 () Int)

(assert (=> bs!1254529 (= lambda!285057 lambda!284983)))

(declare-fun bs!1254530 () Bool)

(assert (= bs!1254530 (and d!1731743 d!1731647)))

(assert (=> bs!1254530 (= lambda!285057 lambda!285027)))

(declare-fun bs!1254531 () Bool)

(assert (= bs!1254531 (and d!1731743 d!1731653)))

(assert (=> bs!1254531 (= lambda!285057 lambda!285030)))

(declare-fun bs!1254532 () Bool)

(assert (= bs!1254532 (and d!1731743 d!1731607)))

(assert (=> bs!1254532 (= lambda!285057 lambda!285019)))

(declare-fun bs!1254533 () Bool)

(assert (= bs!1254533 (and d!1731743 b!5430420)))

(assert (=> bs!1254533 (= lambda!285057 lambda!284965)))

(declare-fun e!3365422 () Bool)

(assert (=> d!1731743 e!3365422))

(declare-fun res!2311326 () Bool)

(assert (=> d!1731743 (=> (not res!2311326) (not e!3365422))))

(declare-fun lt!2214489 () Regex!15223)

(assert (=> d!1731743 (= res!2311326 (validRegex!6959 lt!2214489))))

(declare-fun e!3365421 () Regex!15223)

(assert (=> d!1731743 (= lt!2214489 e!3365421)))

(declare-fun c!947731 () Bool)

(declare-fun e!3365424 () Bool)

(assert (=> d!1731743 (= c!947731 e!3365424)))

(declare-fun res!2311325 () Bool)

(assert (=> d!1731743 (=> (not res!2311325) (not e!3365424))))

(assert (=> d!1731743 (= res!2311325 ((_ is Cons!61844) (exprs!5107 (h!68294 zl!343))))))

(assert (=> d!1731743 (forall!14560 (exprs!5107 (h!68294 zl!343)) lambda!285057)))

(assert (=> d!1731743 (= (generalisedConcat!892 (exprs!5107 (h!68294 zl!343))) lt!2214489)))

(declare-fun b!5431383 () Bool)

(declare-fun e!3365423 () Bool)

(assert (=> b!5431383 (= e!3365423 (isEmptyExpr!997 lt!2214489))))

(declare-fun b!5431384 () Bool)

(declare-fun e!3365420 () Regex!15223)

(assert (=> b!5431384 (= e!3365421 e!3365420)))

(declare-fun c!947732 () Bool)

(assert (=> b!5431384 (= c!947732 ((_ is Cons!61844) (exprs!5107 (h!68294 zl!343))))))

(declare-fun b!5431385 () Bool)

(declare-fun e!3365425 () Bool)

(assert (=> b!5431385 (= e!3365423 e!3365425)))

(declare-fun c!947729 () Bool)

(assert (=> b!5431385 (= c!947729 (isEmpty!33845 (tail!10747 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun b!5431386 () Bool)

(assert (=> b!5431386 (= e!3365425 (= lt!2214489 (head!11650 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun b!5431387 () Bool)

(assert (=> b!5431387 (= e!3365420 EmptyExpr!15223)))

(declare-fun b!5431388 () Bool)

(assert (=> b!5431388 (= e!3365420 (Concat!24068 (h!68292 (exprs!5107 (h!68294 zl!343))) (generalisedConcat!892 (t!375193 (exprs!5107 (h!68294 zl!343))))))))

(declare-fun b!5431389 () Bool)

(assert (=> b!5431389 (= e!3365421 (h!68292 (exprs!5107 (h!68294 zl!343))))))

(declare-fun b!5431390 () Bool)

(assert (=> b!5431390 (= e!3365424 (isEmpty!33845 (t!375193 (exprs!5107 (h!68294 zl!343)))))))

(declare-fun b!5431391 () Bool)

(assert (=> b!5431391 (= e!3365422 e!3365423)))

(declare-fun c!947730 () Bool)

(assert (=> b!5431391 (= c!947730 (isEmpty!33845 (exprs!5107 (h!68294 zl!343))))))

(declare-fun b!5431392 () Bool)

(assert (=> b!5431392 (= e!3365425 (isConcat!520 lt!2214489))))

(assert (= (and d!1731743 res!2311325) b!5431390))

(assert (= (and d!1731743 c!947731) b!5431389))

(assert (= (and d!1731743 (not c!947731)) b!5431384))

(assert (= (and b!5431384 c!947732) b!5431388))

(assert (= (and b!5431384 (not c!947732)) b!5431387))

(assert (= (and d!1731743 res!2311326) b!5431391))

(assert (= (and b!5431391 c!947730) b!5431383))

(assert (= (and b!5431391 (not c!947730)) b!5431385))

(assert (= (and b!5431385 c!947729) b!5431386))

(assert (= (and b!5431385 (not c!947729)) b!5431392))

(declare-fun m!6454342 () Bool)

(assert (=> b!5431385 m!6454342))

(assert (=> b!5431385 m!6454342))

(declare-fun m!6454344 () Bool)

(assert (=> b!5431385 m!6454344))

(declare-fun m!6454346 () Bool)

(assert (=> d!1731743 m!6454346))

(declare-fun m!6454348 () Bool)

(assert (=> d!1731743 m!6454348))

(declare-fun m!6454350 () Bool)

(assert (=> b!5431391 m!6454350))

(declare-fun m!6454352 () Bool)

(assert (=> b!5431383 m!6454352))

(assert (=> b!5431388 m!6453576))

(assert (=> b!5431390 m!6453590))

(declare-fun m!6454354 () Bool)

(assert (=> b!5431392 m!6454354))

(declare-fun m!6454356 () Bool)

(assert (=> b!5431386 m!6454356))

(assert (=> b!5430429 d!1731743))

(declare-fun d!1731745 () Bool)

(declare-fun lt!2214490 () Regex!15223)

(assert (=> d!1731745 (validRegex!6959 lt!2214490)))

(assert (=> d!1731745 (= lt!2214490 (generalisedUnion!1152 (unfocusZipperList!665 (Cons!61846 lt!2214340 Nil!61846))))))

(assert (=> d!1731745 (= (unfocusZipper!965 (Cons!61846 lt!2214340 Nil!61846)) lt!2214490)))

(declare-fun bs!1254534 () Bool)

(assert (= bs!1254534 d!1731745))

(declare-fun m!6454358 () Bool)

(assert (=> bs!1254534 m!6454358))

(declare-fun m!6454360 () Bool)

(assert (=> bs!1254534 m!6454360))

(assert (=> bs!1254534 m!6454360))

(declare-fun m!6454362 () Bool)

(assert (=> bs!1254534 m!6454362))

(assert (=> b!5430409 d!1731745))

(declare-fun d!1731747 () Bool)

(declare-fun e!3365428 () Bool)

(assert (=> d!1731747 (= (matchZipper!1467 ((_ map or) lt!2214326 lt!2214319) (t!375194 s!2326)) e!3365428)))

(declare-fun res!2311329 () Bool)

(assert (=> d!1731747 (=> res!2311329 e!3365428)))

(assert (=> d!1731747 (= res!2311329 (matchZipper!1467 lt!2214326 (t!375194 s!2326)))))

(declare-fun lt!2214493 () Unit!154414)

(declare-fun choose!41198 ((InoxSet Context!9214) (InoxSet Context!9214) List!61969) Unit!154414)

(assert (=> d!1731747 (= lt!2214493 (choose!41198 lt!2214326 lt!2214319 (t!375194 s!2326)))))

(assert (=> d!1731747 (= (lemmaZipperConcatMatchesSameAsBothZippers!460 lt!2214326 lt!2214319 (t!375194 s!2326)) lt!2214493)))

(declare-fun b!5431395 () Bool)

(assert (=> b!5431395 (= e!3365428 (matchZipper!1467 lt!2214319 (t!375194 s!2326)))))

(assert (= (and d!1731747 (not res!2311329)) b!5431395))

(assert (=> d!1731747 m!6453630))

(assert (=> d!1731747 m!6453588))

(declare-fun m!6454364 () Bool)

(assert (=> d!1731747 m!6454364))

(assert (=> b!5431395 m!6453532))

(assert (=> b!5430407 d!1731747))

(assert (=> b!5430407 d!1731657))

(declare-fun d!1731749 () Bool)

(declare-fun c!947733 () Bool)

(assert (=> d!1731749 (= c!947733 (isEmpty!33847 (t!375194 s!2326)))))

(declare-fun e!3365429 () Bool)

(assert (=> d!1731749 (= (matchZipper!1467 ((_ map or) lt!2214326 lt!2214319) (t!375194 s!2326)) e!3365429)))

(declare-fun b!5431396 () Bool)

(assert (=> b!5431396 (= e!3365429 (nullableZipper!1466 ((_ map or) lt!2214326 lt!2214319)))))

(declare-fun b!5431397 () Bool)

(assert (=> b!5431397 (= e!3365429 (matchZipper!1467 (derivationStepZipper!1462 ((_ map or) lt!2214326 lt!2214319) (head!11649 (t!375194 s!2326))) (tail!10746 (t!375194 s!2326))))))

(assert (= (and d!1731749 c!947733) b!5431396))

(assert (= (and d!1731749 (not c!947733)) b!5431397))

(assert (=> d!1731749 m!6453660))

(declare-fun m!6454366 () Bool)

(assert (=> b!5431396 m!6454366))

(assert (=> b!5431397 m!6453664))

(assert (=> b!5431397 m!6453664))

(declare-fun m!6454368 () Bool)

(assert (=> b!5431397 m!6454368))

(assert (=> b!5431397 m!6453668))

(assert (=> b!5431397 m!6454368))

(assert (=> b!5431397 m!6453668))

(declare-fun m!6454370 () Bool)

(assert (=> b!5431397 m!6454370))

(assert (=> b!5430407 d!1731749))

(declare-fun d!1731751 () Bool)

(declare-fun c!947734 () Bool)

(assert (=> d!1731751 (= c!947734 (isEmpty!33847 s!2326))))

(declare-fun e!3365430 () Bool)

(assert (=> d!1731751 (= (matchZipper!1467 lt!2214324 s!2326) e!3365430)))

(declare-fun b!5431398 () Bool)

(assert (=> b!5431398 (= e!3365430 (nullableZipper!1466 lt!2214324))))

(declare-fun b!5431399 () Bool)

(assert (=> b!5431399 (= e!3365430 (matchZipper!1467 (derivationStepZipper!1462 lt!2214324 (head!11649 s!2326)) (tail!10746 s!2326)))))

(assert (= (and d!1731751 c!947734) b!5431398))

(assert (= (and d!1731751 (not c!947734)) b!5431399))

(assert (=> d!1731751 m!6453838))

(declare-fun m!6454372 () Bool)

(assert (=> b!5431398 m!6454372))

(assert (=> b!5431399 m!6453860))

(assert (=> b!5431399 m!6453860))

(declare-fun m!6454374 () Bool)

(assert (=> b!5431399 m!6454374))

(assert (=> b!5431399 m!6453856))

(assert (=> b!5431399 m!6454374))

(assert (=> b!5431399 m!6453856))

(declare-fun m!6454376 () Bool)

(assert (=> b!5431399 m!6454376))

(assert (=> b!5430428 d!1731751))

(declare-fun d!1731753 () Bool)

(declare-fun c!947735 () Bool)

(assert (=> d!1731753 (= c!947735 (isEmpty!33847 (t!375194 s!2326)))))

(declare-fun e!3365431 () Bool)

(assert (=> d!1731753 (= (matchZipper!1467 lt!2214341 (t!375194 s!2326)) e!3365431)))

(declare-fun b!5431400 () Bool)

(assert (=> b!5431400 (= e!3365431 (nullableZipper!1466 lt!2214341))))

(declare-fun b!5431401 () Bool)

(assert (=> b!5431401 (= e!3365431 (matchZipper!1467 (derivationStepZipper!1462 lt!2214341 (head!11649 (t!375194 s!2326))) (tail!10746 (t!375194 s!2326))))))

(assert (= (and d!1731753 c!947735) b!5431400))

(assert (= (and d!1731753 (not c!947735)) b!5431401))

(assert (=> d!1731753 m!6453660))

(declare-fun m!6454378 () Bool)

(assert (=> b!5431400 m!6454378))

(assert (=> b!5431401 m!6453664))

(assert (=> b!5431401 m!6453664))

(declare-fun m!6454380 () Bool)

(assert (=> b!5431401 m!6454380))

(assert (=> b!5431401 m!6453668))

(assert (=> b!5431401 m!6454380))

(assert (=> b!5431401 m!6453668))

(declare-fun m!6454382 () Bool)

(assert (=> b!5431401 m!6454382))

(assert (=> b!5430428 d!1731753))

(declare-fun bs!1254535 () Bool)

(declare-fun d!1731755 () Bool)

(assert (= bs!1254535 (and d!1731755 d!1731531)))

(declare-fun lambda!285058 () Int)

(assert (=> bs!1254535 (= lambda!285058 lambda!284983)))

(declare-fun bs!1254536 () Bool)

(assert (= bs!1254536 (and d!1731755 d!1731647)))

(assert (=> bs!1254536 (= lambda!285058 lambda!285027)))

(declare-fun bs!1254537 () Bool)

(assert (= bs!1254537 (and d!1731755 d!1731653)))

(assert (=> bs!1254537 (= lambda!285058 lambda!285030)))

(declare-fun bs!1254538 () Bool)

(assert (= bs!1254538 (and d!1731755 d!1731743)))

(assert (=> bs!1254538 (= lambda!285058 lambda!285057)))

(declare-fun bs!1254539 () Bool)

(assert (= bs!1254539 (and d!1731755 d!1731607)))

(assert (=> bs!1254539 (= lambda!285058 lambda!285019)))

(declare-fun bs!1254540 () Bool)

(assert (= bs!1254540 (and d!1731755 b!5430420)))

(assert (=> bs!1254540 (= lambda!285058 lambda!284965)))

(assert (=> d!1731755 (= (inv!81304 setElem!35427) (forall!14560 (exprs!5107 setElem!35427) lambda!285058))))

(declare-fun bs!1254541 () Bool)

(assert (= bs!1254541 d!1731755))

(declare-fun m!6454384 () Bool)

(assert (=> bs!1254541 m!6454384))

(assert (=> setNonEmpty!35427 d!1731755))

(declare-fun d!1731757 () Bool)

(assert (=> d!1731757 (= (flatMap!950 lt!2214324 lambda!284964) (choose!41183 lt!2214324 lambda!284964))))

(declare-fun bs!1254542 () Bool)

(assert (= bs!1254542 d!1731757))

(declare-fun m!6454386 () Bool)

(assert (=> bs!1254542 m!6454386))

(assert (=> b!5430430 d!1731757))

(declare-fun b!5431402 () Bool)

(declare-fun e!3365434 () (InoxSet Context!9214))

(assert (=> b!5431402 (= e!3365434 ((as const (Array Context!9214 Bool)) false))))

(declare-fun d!1731759 () Bool)

(declare-fun c!947737 () Bool)

(declare-fun e!3365432 () Bool)

(assert (=> d!1731759 (= c!947737 e!3365432)))

(declare-fun res!2311330 () Bool)

(assert (=> d!1731759 (=> (not res!2311330) (not e!3365432))))

(assert (=> d!1731759 (= res!2311330 ((_ is Cons!61844) (exprs!5107 lt!2214340)))))

(declare-fun e!3365433 () (InoxSet Context!9214))

(assert (=> d!1731759 (= (derivationStepZipperUp!595 lt!2214340 (h!68293 s!2326)) e!3365433)))

(declare-fun b!5431403 () Bool)

(assert (=> b!5431403 (= e!3365433 e!3365434)))

(declare-fun c!947736 () Bool)

(assert (=> b!5431403 (= c!947736 ((_ is Cons!61844) (exprs!5107 lt!2214340)))))

(declare-fun call!389001 () (InoxSet Context!9214))

(declare-fun b!5431404 () Bool)

(assert (=> b!5431404 (= e!3365433 ((_ map or) call!389001 (derivationStepZipperUp!595 (Context!9215 (t!375193 (exprs!5107 lt!2214340))) (h!68293 s!2326))))))

(declare-fun b!5431405 () Bool)

(assert (=> b!5431405 (= e!3365434 call!389001)))

(declare-fun b!5431406 () Bool)

(assert (=> b!5431406 (= e!3365432 (nullable!5392 (h!68292 (exprs!5107 lt!2214340))))))

(declare-fun bm!388996 () Bool)

(assert (=> bm!388996 (= call!389001 (derivationStepZipperDown!671 (h!68292 (exprs!5107 lt!2214340)) (Context!9215 (t!375193 (exprs!5107 lt!2214340))) (h!68293 s!2326)))))

(assert (= (and d!1731759 res!2311330) b!5431406))

(assert (= (and d!1731759 c!947737) b!5431404))

(assert (= (and d!1731759 (not c!947737)) b!5431403))

(assert (= (and b!5431403 c!947736) b!5431405))

(assert (= (and b!5431403 (not c!947736)) b!5431402))

(assert (= (or b!5431404 b!5431405) bm!388996))

(declare-fun m!6454388 () Bool)

(assert (=> b!5431404 m!6454388))

(declare-fun m!6454390 () Bool)

(assert (=> b!5431406 m!6454390))

(declare-fun m!6454392 () Bool)

(assert (=> bm!388996 m!6454392))

(assert (=> b!5430430 d!1731759))

(declare-fun d!1731761 () Bool)

(assert (=> d!1731761 (= (flatMap!950 lt!2214324 lambda!284964) (dynLambda!24369 lambda!284964 lt!2214340))))

(declare-fun lt!2214494 () Unit!154414)

(assert (=> d!1731761 (= lt!2214494 (choose!41184 lt!2214324 lt!2214340 lambda!284964))))

(assert (=> d!1731761 (= lt!2214324 (store ((as const (Array Context!9214 Bool)) false) lt!2214340 true))))

(assert (=> d!1731761 (= (lemmaFlatMapOnSingletonSet!482 lt!2214324 lt!2214340 lambda!284964) lt!2214494)))

(declare-fun b_lambda!207255 () Bool)

(assert (=> (not b_lambda!207255) (not d!1731761)))

(declare-fun bs!1254543 () Bool)

(assert (= bs!1254543 d!1731761))

(assert (=> bs!1254543 m!6453578))

(declare-fun m!6454394 () Bool)

(assert (=> bs!1254543 m!6454394))

(declare-fun m!6454396 () Bool)

(assert (=> bs!1254543 m!6454396))

(assert (=> bs!1254543 m!6453586))

(assert (=> b!5430430 d!1731761))

(declare-fun bs!1254544 () Bool)

(declare-fun d!1731763 () Bool)

(assert (= bs!1254544 (and d!1731763 b!5430406)))

(declare-fun lambda!285059 () Int)

(assert (=> bs!1254544 (= lambda!285059 lambda!284964)))

(declare-fun bs!1254545 () Bool)

(assert (= bs!1254545 (and d!1731763 d!1731505)))

(assert (=> bs!1254545 (= lambda!285059 lambda!284968)))

(assert (=> d!1731763 true))

(assert (=> d!1731763 (= (derivationStepZipper!1462 lt!2214324 (h!68293 s!2326)) (flatMap!950 lt!2214324 lambda!285059))))

(declare-fun bs!1254546 () Bool)

(assert (= bs!1254546 d!1731763))

(declare-fun m!6454398 () Bool)

(assert (=> bs!1254546 m!6454398))

(assert (=> b!5430430 d!1731763))

(declare-fun b!5431425 () Bool)

(declare-fun e!3365455 () Bool)

(declare-fun e!3365453 () Bool)

(assert (=> b!5431425 (= e!3365455 e!3365453)))

(declare-fun res!2311341 () Bool)

(assert (=> b!5431425 (= res!2311341 (not (nullable!5392 (reg!15552 r!7292))))))

(assert (=> b!5431425 (=> (not res!2311341) (not e!3365453))))

(declare-fun b!5431426 () Bool)

(declare-fun e!3365451 () Bool)

(assert (=> b!5431426 (= e!3365451 e!3365455)))

(declare-fun c!947742 () Bool)

(assert (=> b!5431426 (= c!947742 ((_ is Star!15223) r!7292))))

(declare-fun b!5431427 () Bool)

(declare-fun res!2311345 () Bool)

(declare-fun e!3365452 () Bool)

(assert (=> b!5431427 (=> (not res!2311345) (not e!3365452))))

(declare-fun call!389009 () Bool)

(assert (=> b!5431427 (= res!2311345 call!389009)))

(declare-fun e!3365450 () Bool)

(assert (=> b!5431427 (= e!3365450 e!3365452)))

(declare-fun b!5431428 () Bool)

(declare-fun e!3365454 () Bool)

(declare-fun e!3365449 () Bool)

(assert (=> b!5431428 (= e!3365454 e!3365449)))

(declare-fun res!2311343 () Bool)

(assert (=> b!5431428 (=> (not res!2311343) (not e!3365449))))

(assert (=> b!5431428 (= res!2311343 call!389009)))

(declare-fun b!5431429 () Bool)

(declare-fun call!389008 () Bool)

(assert (=> b!5431429 (= e!3365452 call!389008)))

(declare-fun bm!389004 () Bool)

(declare-fun call!389010 () Bool)

(assert (=> bm!389004 (= call!389009 call!389010)))

(declare-fun b!5431430 () Bool)

(declare-fun res!2311344 () Bool)

(assert (=> b!5431430 (=> res!2311344 e!3365454)))

(assert (=> b!5431430 (= res!2311344 (not ((_ is Concat!24068) r!7292)))))

(assert (=> b!5431430 (= e!3365450 e!3365454)))

(declare-fun b!5431431 () Bool)

(assert (=> b!5431431 (= e!3365453 call!389010)))

(declare-fun b!5431432 () Bool)

(assert (=> b!5431432 (= e!3365449 call!389008)))

(declare-fun bm!389003 () Bool)

(declare-fun c!947743 () Bool)

(assert (=> bm!389003 (= call!389010 (validRegex!6959 (ite c!947742 (reg!15552 r!7292) (ite c!947743 (regOne!30959 r!7292) (regOne!30958 r!7292)))))))

(declare-fun d!1731765 () Bool)

(declare-fun res!2311342 () Bool)

(assert (=> d!1731765 (=> res!2311342 e!3365451)))

(assert (=> d!1731765 (= res!2311342 ((_ is ElementMatch!15223) r!7292))))

(assert (=> d!1731765 (= (validRegex!6959 r!7292) e!3365451)))

(declare-fun b!5431433 () Bool)

(assert (=> b!5431433 (= e!3365455 e!3365450)))

(assert (=> b!5431433 (= c!947743 ((_ is Union!15223) r!7292))))

(declare-fun bm!389005 () Bool)

(assert (=> bm!389005 (= call!389008 (validRegex!6959 (ite c!947743 (regTwo!30959 r!7292) (regTwo!30958 r!7292))))))

(assert (= (and d!1731765 (not res!2311342)) b!5431426))

(assert (= (and b!5431426 c!947742) b!5431425))

(assert (= (and b!5431426 (not c!947742)) b!5431433))

(assert (= (and b!5431425 res!2311341) b!5431431))

(assert (= (and b!5431433 c!947743) b!5431427))

(assert (= (and b!5431433 (not c!947743)) b!5431430))

(assert (= (and b!5431427 res!2311345) b!5431429))

(assert (= (and b!5431430 (not res!2311344)) b!5431428))

(assert (= (and b!5431428 res!2311343) b!5431432))

(assert (= (or b!5431429 b!5431432) bm!389005))

(assert (= (or b!5431427 b!5431428) bm!389004))

(assert (= (or b!5431431 bm!389004) bm!389003))

(declare-fun m!6454400 () Bool)

(assert (=> b!5431425 m!6454400))

(declare-fun m!6454402 () Bool)

(assert (=> bm!389003 m!6454402))

(declare-fun m!6454404 () Bool)

(assert (=> bm!389005 m!6454404))

(assert (=> start!569890 d!1731765))

(declare-fun b!5431438 () Bool)

(declare-fun e!3365458 () Bool)

(declare-fun tp!1498308 () Bool)

(declare-fun tp!1498309 () Bool)

(assert (=> b!5431438 (= e!3365458 (and tp!1498308 tp!1498309))))

(assert (=> b!5430445 (= tp!1498240 e!3365458)))

(assert (= (and b!5430445 ((_ is Cons!61844) (exprs!5107 (h!68294 zl!343)))) b!5431438))

(declare-fun b!5431439 () Bool)

(declare-fun e!3365459 () Bool)

(declare-fun tp!1498310 () Bool)

(declare-fun tp!1498311 () Bool)

(assert (=> b!5431439 (= e!3365459 (and tp!1498310 tp!1498311))))

(assert (=> b!5430433 (= tp!1498244 e!3365459)))

(assert (= (and b!5430433 ((_ is Cons!61844) (exprs!5107 setElem!35427))) b!5431439))

(declare-fun b!5431451 () Bool)

(declare-fun e!3365462 () Bool)

(declare-fun tp!1498322 () Bool)

(declare-fun tp!1498324 () Bool)

(assert (=> b!5431451 (= e!3365462 (and tp!1498322 tp!1498324))))

(declare-fun b!5431450 () Bool)

(assert (=> b!5431450 (= e!3365462 tp_is_empty!39699)))

(assert (=> b!5430403 (= tp!1498239 e!3365462)))

(declare-fun b!5431453 () Bool)

(declare-fun tp!1498323 () Bool)

(declare-fun tp!1498325 () Bool)

(assert (=> b!5431453 (= e!3365462 (and tp!1498323 tp!1498325))))

(declare-fun b!5431452 () Bool)

(declare-fun tp!1498326 () Bool)

(assert (=> b!5431452 (= e!3365462 tp!1498326)))

(assert (= (and b!5430403 ((_ is ElementMatch!15223) (reg!15552 r!7292))) b!5431450))

(assert (= (and b!5430403 ((_ is Concat!24068) (reg!15552 r!7292))) b!5431451))

(assert (= (and b!5430403 ((_ is Star!15223) (reg!15552 r!7292))) b!5431452))

(assert (= (and b!5430403 ((_ is Union!15223) (reg!15552 r!7292))) b!5431453))

(declare-fun b!5431455 () Bool)

(declare-fun e!3365463 () Bool)

(declare-fun tp!1498327 () Bool)

(declare-fun tp!1498329 () Bool)

(assert (=> b!5431455 (= e!3365463 (and tp!1498327 tp!1498329))))

(declare-fun b!5431454 () Bool)

(assert (=> b!5431454 (= e!3365463 tp_is_empty!39699)))

(assert (=> b!5430444 (= tp!1498243 e!3365463)))

(declare-fun b!5431457 () Bool)

(declare-fun tp!1498328 () Bool)

(declare-fun tp!1498330 () Bool)

(assert (=> b!5431457 (= e!3365463 (and tp!1498328 tp!1498330))))

(declare-fun b!5431456 () Bool)

(declare-fun tp!1498331 () Bool)

(assert (=> b!5431456 (= e!3365463 tp!1498331)))

(assert (= (and b!5430444 ((_ is ElementMatch!15223) (regOne!30959 r!7292))) b!5431454))

(assert (= (and b!5430444 ((_ is Concat!24068) (regOne!30959 r!7292))) b!5431455))

(assert (= (and b!5430444 ((_ is Star!15223) (regOne!30959 r!7292))) b!5431456))

(assert (= (and b!5430444 ((_ is Union!15223) (regOne!30959 r!7292))) b!5431457))

(declare-fun b!5431459 () Bool)

(declare-fun e!3365464 () Bool)

(declare-fun tp!1498332 () Bool)

(declare-fun tp!1498334 () Bool)

(assert (=> b!5431459 (= e!3365464 (and tp!1498332 tp!1498334))))

(declare-fun b!5431458 () Bool)

(assert (=> b!5431458 (= e!3365464 tp_is_empty!39699)))

(assert (=> b!5430444 (= tp!1498241 e!3365464)))

(declare-fun b!5431461 () Bool)

(declare-fun tp!1498333 () Bool)

(declare-fun tp!1498335 () Bool)

(assert (=> b!5431461 (= e!3365464 (and tp!1498333 tp!1498335))))

(declare-fun b!5431460 () Bool)

(declare-fun tp!1498336 () Bool)

(assert (=> b!5431460 (= e!3365464 tp!1498336)))

(assert (= (and b!5430444 ((_ is ElementMatch!15223) (regTwo!30959 r!7292))) b!5431458))

(assert (= (and b!5430444 ((_ is Concat!24068) (regTwo!30959 r!7292))) b!5431459))

(assert (= (and b!5430444 ((_ is Star!15223) (regTwo!30959 r!7292))) b!5431460))

(assert (= (and b!5430444 ((_ is Union!15223) (regTwo!30959 r!7292))) b!5431461))

(declare-fun b!5431466 () Bool)

(declare-fun e!3365467 () Bool)

(declare-fun tp!1498339 () Bool)

(assert (=> b!5431466 (= e!3365467 (and tp_is_empty!39699 tp!1498339))))

(assert (=> b!5430437 (= tp!1498237 e!3365467)))

(assert (= (and b!5430437 ((_ is Cons!61845) (t!375194 s!2326))) b!5431466))

(declare-fun b!5431468 () Bool)

(declare-fun e!3365468 () Bool)

(declare-fun tp!1498340 () Bool)

(declare-fun tp!1498342 () Bool)

(assert (=> b!5431468 (= e!3365468 (and tp!1498340 tp!1498342))))

(declare-fun b!5431467 () Bool)

(assert (=> b!5431467 (= e!3365468 tp_is_empty!39699)))

(assert (=> b!5430442 (= tp!1498238 e!3365468)))

(declare-fun b!5431470 () Bool)

(declare-fun tp!1498341 () Bool)

(declare-fun tp!1498343 () Bool)

(assert (=> b!5431470 (= e!3365468 (and tp!1498341 tp!1498343))))

(declare-fun b!5431469 () Bool)

(declare-fun tp!1498344 () Bool)

(assert (=> b!5431469 (= e!3365468 tp!1498344)))

(assert (= (and b!5430442 ((_ is ElementMatch!15223) (regOne!30958 r!7292))) b!5431467))

(assert (= (and b!5430442 ((_ is Concat!24068) (regOne!30958 r!7292))) b!5431468))

(assert (= (and b!5430442 ((_ is Star!15223) (regOne!30958 r!7292))) b!5431469))

(assert (= (and b!5430442 ((_ is Union!15223) (regOne!30958 r!7292))) b!5431470))

(declare-fun b!5431472 () Bool)

(declare-fun e!3365469 () Bool)

(declare-fun tp!1498345 () Bool)

(declare-fun tp!1498347 () Bool)

(assert (=> b!5431472 (= e!3365469 (and tp!1498345 tp!1498347))))

(declare-fun b!5431471 () Bool)

(assert (=> b!5431471 (= e!3365469 tp_is_empty!39699)))

(assert (=> b!5430442 (= tp!1498242 e!3365469)))

(declare-fun b!5431474 () Bool)

(declare-fun tp!1498346 () Bool)

(declare-fun tp!1498348 () Bool)

(assert (=> b!5431474 (= e!3365469 (and tp!1498346 tp!1498348))))

(declare-fun b!5431473 () Bool)

(declare-fun tp!1498349 () Bool)

(assert (=> b!5431473 (= e!3365469 tp!1498349)))

(assert (= (and b!5430442 ((_ is ElementMatch!15223) (regTwo!30958 r!7292))) b!5431471))

(assert (= (and b!5430442 ((_ is Concat!24068) (regTwo!30958 r!7292))) b!5431472))

(assert (= (and b!5430442 ((_ is Star!15223) (regTwo!30958 r!7292))) b!5431473))

(assert (= (and b!5430442 ((_ is Union!15223) (regTwo!30958 r!7292))) b!5431474))

(declare-fun condSetEmpty!35433 () Bool)

(assert (=> setNonEmpty!35427 (= condSetEmpty!35433 (= setRest!35427 ((as const (Array Context!9214 Bool)) false)))))

(declare-fun setRes!35433 () Bool)

(assert (=> setNonEmpty!35427 (= tp!1498236 setRes!35433)))

(declare-fun setIsEmpty!35433 () Bool)

(assert (=> setIsEmpty!35433 setRes!35433))

(declare-fun tp!1498354 () Bool)

(declare-fun setNonEmpty!35433 () Bool)

(declare-fun e!3365472 () Bool)

(declare-fun setElem!35433 () Context!9214)

(assert (=> setNonEmpty!35433 (= setRes!35433 (and tp!1498354 (inv!81304 setElem!35433) e!3365472))))

(declare-fun setRest!35433 () (InoxSet Context!9214))

(assert (=> setNonEmpty!35433 (= setRest!35427 ((_ map or) (store ((as const (Array Context!9214 Bool)) false) setElem!35433 true) setRest!35433))))

(declare-fun b!5431479 () Bool)

(declare-fun tp!1498355 () Bool)

(assert (=> b!5431479 (= e!3365472 tp!1498355)))

(assert (= (and setNonEmpty!35427 condSetEmpty!35433) setIsEmpty!35433))

(assert (= (and setNonEmpty!35427 (not condSetEmpty!35433)) setNonEmpty!35433))

(assert (= setNonEmpty!35433 b!5431479))

(declare-fun m!6454406 () Bool)

(assert (=> setNonEmpty!35433 m!6454406))

(declare-fun b!5431487 () Bool)

(declare-fun e!3365478 () Bool)

(declare-fun tp!1498360 () Bool)

(assert (=> b!5431487 (= e!3365478 tp!1498360)))

(declare-fun e!3365477 () Bool)

(declare-fun tp!1498361 () Bool)

(declare-fun b!5431486 () Bool)

(assert (=> b!5431486 (= e!3365477 (and (inv!81304 (h!68294 (t!375195 zl!343))) e!3365478 tp!1498361))))

(assert (=> b!5430416 (= tp!1498245 e!3365477)))

(assert (= b!5431486 b!5431487))

(assert (= (and b!5430416 ((_ is Cons!61846) (t!375195 zl!343))) b!5431486))

(declare-fun m!6454408 () Bool)

(assert (=> b!5431486 m!6454408))

(declare-fun b_lambda!207257 () Bool)

(assert (= b_lambda!207255 (or b!5430406 b_lambda!207257)))

(declare-fun bs!1254547 () Bool)

(declare-fun d!1731767 () Bool)

(assert (= bs!1254547 (and d!1731767 b!5430406)))

(assert (=> bs!1254547 (= (dynLambda!24369 lambda!284964 lt!2214340) (derivationStepZipperUp!595 lt!2214340 (h!68293 s!2326)))))

(assert (=> bs!1254547 m!6453584))

(assert (=> d!1731761 d!1731767))

(declare-fun b_lambda!207259 () Bool)

(assert (= b_lambda!207235 (or b!5430406 b_lambda!207259)))

(declare-fun bs!1254548 () Bool)

(declare-fun d!1731769 () Bool)

(assert (= bs!1254548 (and d!1731769 b!5430406)))

(assert (=> bs!1254548 (= (dynLambda!24369 lambda!284964 lt!2214337) (derivationStepZipperUp!595 lt!2214337 (h!68293 s!2326)))))

(assert (=> bs!1254548 m!6453570))

(assert (=> d!1731641 d!1731769))

(declare-fun b_lambda!207261 () Bool)

(assert (= b_lambda!207233 (or b!5430406 b_lambda!207261)))

(declare-fun bs!1254549 () Bool)

(declare-fun d!1731771 () Bool)

(assert (= bs!1254549 (and d!1731771 b!5430406)))

(assert (=> bs!1254549 (= (dynLambda!24369 lambda!284964 lt!2214325) (derivationStepZipperUp!595 lt!2214325 (h!68293 s!2326)))))

(assert (=> bs!1254549 m!6453554))

(assert (=> d!1731639 d!1731771))

(declare-fun b_lambda!207263 () Bool)

(assert (= b_lambda!207221 (or b!5430406 b_lambda!207263)))

(declare-fun bs!1254550 () Bool)

(declare-fun d!1731773 () Bool)

(assert (= bs!1254550 (and d!1731773 b!5430406)))

(assert (=> bs!1254550 (= (dynLambda!24369 lambda!284964 lt!2214315) (derivationStepZipperUp!595 lt!2214315 (h!68293 s!2326)))))

(assert (=> bs!1254550 m!6453598))

(assert (=> d!1731511 d!1731773))

(declare-fun b_lambda!207265 () Bool)

(assert (= b_lambda!207237 (or b!5430420 b_lambda!207265)))

(declare-fun bs!1254551 () Bool)

(declare-fun d!1731775 () Bool)

(assert (= bs!1254551 (and d!1731775 b!5430420)))

(assert (=> bs!1254551 (= (dynLambda!24370 lambda!284965 (h!68292 (t!375193 (exprs!5107 (h!68294 zl!343))))) (validRegex!6959 (h!68292 (t!375193 (exprs!5107 (h!68294 zl!343))))))))

(declare-fun m!6454410 () Bool)

(assert (=> bs!1254551 m!6454410))

(assert (=> b!5431133 d!1731775))

(declare-fun b_lambda!207267 () Bool)

(assert (= b_lambda!207253 (or b!5430406 b_lambda!207267)))

(declare-fun bs!1254552 () Bool)

(declare-fun d!1731777 () Bool)

(assert (= bs!1254552 (and d!1731777 b!5430406)))

(assert (=> bs!1254552 (= (dynLambda!24369 lambda!284964 (h!68294 zl!343)) (derivationStepZipperUp!595 (h!68294 zl!343) (h!68293 s!2326)))))

(assert (=> bs!1254552 m!6453616))

(assert (=> d!1731725 d!1731777))

(check-sat (not b!5431386) (not d!1731763) (not d!1731505) (not b!5431391) (not b!5430986) (not d!1731569) (not d!1731705) (not b!5430456) (not bm!388924) (not b!5430987) (not d!1731639) (not b!5431456) (not bs!1254549) (not b!5431139) (not b!5431369) (not b!5430756) (not b!5431382) (not b!5431012) (not d!1731689) (not b!5431455) (not b!5431453) (not d!1731743) (not b!5430636) (not d!1731671) (not b!5431474) (not b!5431472) (not b!5430805) (not b!5431064) (not b!5431146) (not b!5430983) (not b!5431383) (not b!5431425) (not b!5431136) (not d!1731669) (not bm!388992) (not bm!388993) (not b!5431459) (not bm!388968) (not bm!388987) (not b!5431392) (not d!1731749) (not bm!388936) (not bm!388844) (not b!5431466) (not b!5431404) (not b!5430751) (not d!1731761) (not setNonEmpty!35433) (not b!5431452) (not b!5430758) (not d!1731581) (not d!1731511) (not b_lambda!207265) (not d!1731587) (not bm!388986) (not b!5431214) (not bm!388926) (not b_lambda!207261) (not b!5431144) (not d!1731507) (not bs!1254548) (not d!1731727) (not bm!388917) (not b!5430810) (not b!5430822) (not bm!388866) (not bm!388918) (not b!5430748) (not b!5431006) (not b_lambda!207267) (not d!1731739) (not d!1731667) (not b!5431218) (not b!5431371) (not d!1731647) (not b!5431329) (not d!1731657) (not d!1731607) (not bm!388925) (not b!5431401) (not d!1731751) (not b_lambda!207263) (not b!5431016) (not b!5431406) (not b!5431486) (not b!5430749) (not b!5430488) (not b!5430474) (not bm!388994) (not d!1731725) (not b!5431063) (not d!1731531) (not b!5431397) (not b!5431396) (not bm!388899) (not bm!389003) (not d!1731755) (not d!1731591) (not d!1731631) (not b!5431398) (not bs!1254552) (not b!5430981) (not d!1731753) (not bm!388923) (not b!5431399) (not b!5431149) (not b!5430760) (not d!1731627) (not b!5430481) (not b!5431395) (not b!5431468) (not bm!388971) (not b!5431066) (not d!1731687) (not b!5431451) (not b!5431148) (not bm!388919) (not b!5431388) (not b!5431390) (not b!5430486) (not b!5430985) tp_is_empty!39699 (not bm!388988) (not b!5431385) (not b!5431091) (not b!5431065) (not b!5431150) (not b!5431469) (not b!5430817) (not d!1731659) (not bs!1254550) (not d!1731723) (not bs!1254547) (not b!5430632) (not d!1731643) (not b!5430809) (not b!5431400) (not b!5430821) (not d!1731747) (not bm!388916) (not d!1731683) (not b!5431221) (not b!5431060) (not b!5431370) (not bs!1254551) (not b!5430826) (not b!5431331) (not b!5431217) (not bm!388939) (not b!5431438) (not bm!388867) (not d!1731745) (not b!5431473) (not d!1731503) (not b_lambda!207259) (not bm!388898) (not b_lambda!207257) (not b!5431137) (not d!1731731) (not bm!388915) (not b!5430980) (not b!5431334) (not d!1731575) (not b!5430812) (not b!5431460) (not d!1731577) (not bm!388922) (not b!5431336) (not d!1731641) (not b!5431215) (not b!5430457) (not b!5430472) (not b!5431061) (not b!5431068) (not d!1731645) (not bm!388900) (not bm!388894) (not b!5431100) (not bm!389005) (not b!5431101) (not bm!388970) (not b!5430819) (not d!1731757) (not b!5430978) (not b!5430483) (not b!5431439) (not b!5431487) (not b!5431470) (not b!5431461) (not b!5431222) (not bm!388996) (not d!1731673) (not b!5431134) (not b!5431457) (not d!1731653) (not b!5431004) (not b!5431479))
(check-sat)
