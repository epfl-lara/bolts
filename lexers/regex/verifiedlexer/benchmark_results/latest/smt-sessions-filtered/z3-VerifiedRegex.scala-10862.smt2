; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!560390 () Bool)

(assert start!560390)

(declare-fun b!5315457 () Bool)

(assert (=> b!5315457 true))

(assert (=> b!5315457 true))

(declare-fun lambda!270978 () Int)

(declare-fun lambda!270977 () Int)

(assert (=> b!5315457 (not (= lambda!270978 lambda!270977))))

(assert (=> b!5315457 true))

(assert (=> b!5315457 true))

(declare-fun b!5315464 () Bool)

(assert (=> b!5315464 true))

(declare-fun b!5315447 () Bool)

(declare-fun res!2254954 () Bool)

(declare-fun e!3302708 () Bool)

(assert (=> b!5315447 (=> res!2254954 e!3302708)))

(declare-datatypes ((C!30212 0))(
  ( (C!30213 (val!24808 Int)) )
))
(declare-datatypes ((Regex!14971 0))(
  ( (ElementMatch!14971 (c!923507 C!30212)) (Concat!23816 (regOne!30454 Regex!14971) (regTwo!30454 Regex!14971)) (EmptyExpr!14971) (Star!14971 (reg!15300 Regex!14971)) (EmptyLang!14971) (Union!14971 (regOne!30455 Regex!14971) (regTwo!30455 Regex!14971)) )
))
(declare-datatypes ((List!61212 0))(
  ( (Nil!61088) (Cons!61088 (h!67536 Regex!14971) (t!374419 List!61212)) )
))
(declare-datatypes ((Context!8710 0))(
  ( (Context!8711 (exprs!4855 List!61212)) )
))
(declare-datatypes ((List!61213 0))(
  ( (Nil!61089) (Cons!61089 (h!67537 Context!8710) (t!374420 List!61213)) )
))
(declare-fun zl!343 () List!61213)

(declare-fun isEmpty!33055 (List!61212) Bool)

(assert (=> b!5315447 (= res!2254954 (isEmpty!33055 (t!374419 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5315448 () Bool)

(declare-fun res!2254963 () Bool)

(declare-fun e!3302710 () Bool)

(assert (=> b!5315448 (=> res!2254963 e!3302710)))

(declare-fun r!7292 () Regex!14971)

(get-info :version)

(assert (=> b!5315448 (= res!2254963 (not ((_ is Concat!23816) (regOne!30454 r!7292))))))

(declare-fun e!3302704 () Bool)

(declare-fun e!3302711 () Bool)

(declare-fun b!5315449 () Bool)

(declare-fun tp!1480418 () Bool)

(declare-fun inv!80674 (Context!8710) Bool)

(assert (=> b!5315449 (= e!3302711 (and (inv!80674 (h!67537 zl!343)) e!3302704 tp!1480418))))

(declare-fun b!5315450 () Bool)

(declare-fun e!3302712 () Bool)

(declare-fun tp_is_empty!39195 () Bool)

(assert (=> b!5315450 (= e!3302712 tp_is_empty!39195)))

(declare-fun b!5315451 () Bool)

(declare-fun e!3302703 () Bool)

(declare-fun nullable!5140 (Regex!14971) Bool)

(assert (=> b!5315451 (= e!3302703 (nullable!5140 (regOne!30454 (regOne!30454 r!7292))))))

(declare-fun b!5315452 () Bool)

(declare-fun tp!1480416 () Bool)

(declare-fun tp!1480422 () Bool)

(assert (=> b!5315452 (= e!3302712 (and tp!1480416 tp!1480422))))

(declare-fun b!5315453 () Bool)

(declare-fun e!3302707 () Bool)

(declare-fun tp!1480424 () Bool)

(assert (=> b!5315453 (= e!3302707 tp!1480424)))

(declare-fun b!5315454 () Bool)

(declare-fun tp!1480420 () Bool)

(declare-fun tp!1480417 () Bool)

(assert (=> b!5315454 (= e!3302712 (and tp!1480420 tp!1480417))))

(declare-fun b!5315455 () Bool)

(declare-fun tp!1480419 () Bool)

(assert (=> b!5315455 (= e!3302704 tp!1480419)))

(declare-fun b!5315456 () Bool)

(declare-fun validRegex!6707 (Regex!14971) Bool)

(assert (=> b!5315456 (= e!3302710 (validRegex!6707 (regOne!30454 (regOne!30454 r!7292))))))

(declare-fun e!3302705 () Bool)

(assert (=> b!5315457 (= e!3302705 e!3302708)))

(declare-fun res!2254952 () Bool)

(assert (=> b!5315457 (=> res!2254952 e!3302708)))

(declare-fun lt!2171151 () Bool)

(declare-fun lt!2171143 () Bool)

(declare-datatypes ((List!61214 0))(
  ( (Nil!61090) (Cons!61090 (h!67538 C!30212) (t!374421 List!61214)) )
))
(declare-fun s!2326 () List!61214)

(assert (=> b!5315457 (= res!2254952 (or (not (= lt!2171143 lt!2171151)) ((_ is Nil!61090) s!2326)))))

(declare-fun Exists!2152 (Int) Bool)

(assert (=> b!5315457 (= (Exists!2152 lambda!270977) (Exists!2152 lambda!270978))))

(declare-datatypes ((Unit!153402 0))(
  ( (Unit!153403) )
))
(declare-fun lt!2171149 () Unit!153402)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!806 (Regex!14971 Regex!14971 List!61214) Unit!153402)

(assert (=> b!5315457 (= lt!2171149 (lemmaExistCutMatchRandMatchRSpecEquivalent!806 (regOne!30454 r!7292) (regTwo!30454 r!7292) s!2326))))

(assert (=> b!5315457 (= lt!2171151 (Exists!2152 lambda!270977))))

(declare-datatypes ((tuple2!64340 0))(
  ( (tuple2!64341 (_1!35473 List!61214) (_2!35473 List!61214)) )
))
(declare-datatypes ((Option!15082 0))(
  ( (None!15081) (Some!15081 (v!51110 tuple2!64340)) )
))
(declare-fun isDefined!11785 (Option!15082) Bool)

(declare-fun findConcatSeparation!1496 (Regex!14971 Regex!14971 List!61214 List!61214 List!61214) Option!15082)

(assert (=> b!5315457 (= lt!2171151 (isDefined!11785 (findConcatSeparation!1496 (regOne!30454 r!7292) (regTwo!30454 r!7292) Nil!61090 s!2326 s!2326)))))

(declare-fun lt!2171144 () Unit!153402)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1260 (Regex!14971 Regex!14971 List!61214) Unit!153402)

(assert (=> b!5315457 (= lt!2171144 (lemmaFindConcatSeparationEquivalentToExists!1260 (regOne!30454 r!7292) (regTwo!30454 r!7292) s!2326))))

(declare-fun b!5315458 () Bool)

(declare-fun res!2254956 () Bool)

(assert (=> b!5315458 (=> res!2254956 e!3302710)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2171148 () (InoxSet Context!8710))

(declare-fun derivationStepZipperDown!419 (Regex!14971 Context!8710 C!30212) (InoxSet Context!8710))

(assert (=> b!5315458 (= res!2254956 (not (= lt!2171148 (derivationStepZipperDown!419 (regOne!30454 (regOne!30454 r!7292)) (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (h!67538 s!2326)))))))

(declare-fun b!5315459 () Bool)

(declare-fun res!2254950 () Bool)

(assert (=> b!5315459 (=> res!2254950 e!3302705)))

(declare-fun isEmpty!33056 (List!61213) Bool)

(assert (=> b!5315459 (= res!2254950 (not (isEmpty!33056 (t!374420 zl!343))))))

(declare-fun b!5315461 () Bool)

(declare-fun e!3302706 () Unit!153402)

(declare-fun Unit!153404 () Unit!153402)

(assert (=> b!5315461 (= e!3302706 Unit!153404)))

(declare-fun lt!2171147 () Unit!153402)

(declare-fun lt!2171145 () (InoxSet Context!8710))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!208 ((InoxSet Context!8710) (InoxSet Context!8710) List!61214) Unit!153402)

(assert (=> b!5315461 (= lt!2171147 (lemmaZipperConcatMatchesSameAsBothZippers!208 lt!2171148 lt!2171145 (t!374421 s!2326)))))

(declare-fun res!2254959 () Bool)

(declare-fun matchZipper!1215 ((InoxSet Context!8710) List!61214) Bool)

(assert (=> b!5315461 (= res!2254959 (matchZipper!1215 lt!2171148 (t!374421 s!2326)))))

(declare-fun e!3302709 () Bool)

(assert (=> b!5315461 (=> res!2254959 e!3302709)))

(assert (=> b!5315461 (= (matchZipper!1215 ((_ map or) lt!2171148 lt!2171145) (t!374421 s!2326)) e!3302709)))

(declare-fun b!5315462 () Bool)

(declare-fun res!2254949 () Bool)

(assert (=> b!5315462 (=> res!2254949 e!3302705)))

(declare-fun generalisedConcat!640 (List!61212) Regex!14971)

(assert (=> b!5315462 (= res!2254949 (not (= r!7292 (generalisedConcat!640 (exprs!4855 (h!67537 zl!343))))))))

(declare-fun b!5315463 () Bool)

(declare-fun res!2254961 () Bool)

(assert (=> b!5315463 (=> res!2254961 e!3302710)))

(assert (=> b!5315463 (= res!2254961 e!3302703)))

(declare-fun res!2254960 () Bool)

(assert (=> b!5315463 (=> (not res!2254960) (not e!3302703))))

(assert (=> b!5315463 (= res!2254960 ((_ is Concat!23816) (regOne!30454 r!7292)))))

(declare-fun setIsEmpty!34195 () Bool)

(declare-fun setRes!34195 () Bool)

(assert (=> setIsEmpty!34195 setRes!34195))

(assert (=> b!5315464 (= e!3302708 e!3302710)))

(declare-fun res!2254957 () Bool)

(assert (=> b!5315464 (=> res!2254957 e!3302710)))

(assert (=> b!5315464 (= res!2254957 (or (and ((_ is ElementMatch!14971) (regOne!30454 r!7292)) (= (c!923507 (regOne!30454 r!7292)) (h!67538 s!2326))) ((_ is Union!14971) (regOne!30454 r!7292))))))

(declare-fun lt!2171150 () Unit!153402)

(assert (=> b!5315464 (= lt!2171150 e!3302706)))

(declare-fun c!923506 () Bool)

(assert (=> b!5315464 (= c!923506 (nullable!5140 (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun lambda!270979 () Int)

(declare-fun z!1189 () (InoxSet Context!8710))

(declare-fun flatMap!698 ((InoxSet Context!8710) Int) (InoxSet Context!8710))

(declare-fun derivationStepZipperUp!343 (Context!8710 C!30212) (InoxSet Context!8710))

(assert (=> b!5315464 (= (flatMap!698 z!1189 lambda!270979) (derivationStepZipperUp!343 (h!67537 zl!343) (h!67538 s!2326)))))

(declare-fun lt!2171152 () Unit!153402)

(declare-fun lemmaFlatMapOnSingletonSet!230 ((InoxSet Context!8710) Context!8710 Int) Unit!153402)

(assert (=> b!5315464 (= lt!2171152 (lemmaFlatMapOnSingletonSet!230 z!1189 (h!67537 zl!343) lambda!270979))))

(declare-fun lt!2171153 () Context!8710)

(assert (=> b!5315464 (= lt!2171145 (derivationStepZipperUp!343 lt!2171153 (h!67538 s!2326)))))

(assert (=> b!5315464 (= lt!2171148 (derivationStepZipperDown!419 (h!67536 (exprs!4855 (h!67537 zl!343))) lt!2171153 (h!67538 s!2326)))))

(assert (=> b!5315464 (= lt!2171153 (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun lt!2171154 () (InoxSet Context!8710))

(assert (=> b!5315464 (= lt!2171154 (derivationStepZipperUp!343 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))) (h!67538 s!2326)))))

(declare-fun b!5315465 () Bool)

(assert (=> b!5315465 (= e!3302709 (matchZipper!1215 lt!2171145 (t!374421 s!2326)))))

(declare-fun tp!1480421 () Bool)

(declare-fun setElem!34195 () Context!8710)

(declare-fun setNonEmpty!34195 () Bool)

(assert (=> setNonEmpty!34195 (= setRes!34195 (and tp!1480421 (inv!80674 setElem!34195) e!3302707))))

(declare-fun setRest!34195 () (InoxSet Context!8710))

(assert (=> setNonEmpty!34195 (= z!1189 ((_ map or) (store ((as const (Array Context!8710 Bool)) false) setElem!34195 true) setRest!34195))))

(declare-fun b!5315466 () Bool)

(declare-fun res!2254951 () Bool)

(assert (=> b!5315466 (=> res!2254951 e!3302705)))

(assert (=> b!5315466 (= res!2254951 (not ((_ is Cons!61088) (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5315467 () Bool)

(declare-fun e!3302701 () Bool)

(assert (=> b!5315467 (= e!3302701 (not e!3302705))))

(declare-fun res!2254958 () Bool)

(assert (=> b!5315467 (=> res!2254958 e!3302705)))

(assert (=> b!5315467 (= res!2254958 (not ((_ is Cons!61089) zl!343)))))

(declare-fun matchRSpec!2074 (Regex!14971 List!61214) Bool)

(assert (=> b!5315467 (= lt!2171143 (matchRSpec!2074 r!7292 s!2326))))

(declare-fun matchR!7156 (Regex!14971 List!61214) Bool)

(assert (=> b!5315467 (= lt!2171143 (matchR!7156 r!7292 s!2326))))

(declare-fun lt!2171146 () Unit!153402)

(declare-fun mainMatchTheorem!2074 (Regex!14971 List!61214) Unit!153402)

(assert (=> b!5315467 (= lt!2171146 (mainMatchTheorem!2074 r!7292 s!2326))))

(declare-fun b!5315468 () Bool)

(declare-fun res!2254964 () Bool)

(assert (=> b!5315468 (=> res!2254964 e!3302705)))

(assert (=> b!5315468 (= res!2254964 (or ((_ is EmptyExpr!14971) r!7292) ((_ is EmptyLang!14971) r!7292) ((_ is ElementMatch!14971) r!7292) ((_ is Union!14971) r!7292) (not ((_ is Concat!23816) r!7292))))))

(declare-fun b!5315469 () Bool)

(declare-fun Unit!153405 () Unit!153402)

(assert (=> b!5315469 (= e!3302706 Unit!153405)))

(declare-fun b!5315470 () Bool)

(declare-fun res!2254962 () Bool)

(assert (=> b!5315470 (=> (not res!2254962) (not e!3302701))))

(declare-fun unfocusZipper!713 (List!61213) Regex!14971)

(assert (=> b!5315470 (= res!2254962 (= r!7292 (unfocusZipper!713 zl!343)))))

(declare-fun res!2254955 () Bool)

(assert (=> start!560390 (=> (not res!2254955) (not e!3302701))))

(assert (=> start!560390 (= res!2254955 (validRegex!6707 r!7292))))

(assert (=> start!560390 e!3302701))

(assert (=> start!560390 e!3302712))

(declare-fun condSetEmpty!34195 () Bool)

(assert (=> start!560390 (= condSetEmpty!34195 (= z!1189 ((as const (Array Context!8710 Bool)) false)))))

(assert (=> start!560390 setRes!34195))

(assert (=> start!560390 e!3302711))

(declare-fun e!3302702 () Bool)

(assert (=> start!560390 e!3302702))

(declare-fun b!5315460 () Bool)

(declare-fun res!2254953 () Bool)

(assert (=> b!5315460 (=> (not res!2254953) (not e!3302701))))

(declare-fun toList!8755 ((InoxSet Context!8710)) List!61213)

(assert (=> b!5315460 (= res!2254953 (= (toList!8755 z!1189) zl!343))))

(declare-fun b!5315471 () Bool)

(declare-fun tp!1480423 () Bool)

(assert (=> b!5315471 (= e!3302712 tp!1480423)))

(declare-fun b!5315472 () Bool)

(declare-fun res!2254965 () Bool)

(assert (=> b!5315472 (=> res!2254965 e!3302705)))

(declare-fun generalisedUnion!900 (List!61212) Regex!14971)

(declare-fun unfocusZipperList!413 (List!61213) List!61212)

(assert (=> b!5315472 (= res!2254965 (not (= r!7292 (generalisedUnion!900 (unfocusZipperList!413 zl!343)))))))

(declare-fun b!5315473 () Bool)

(declare-fun tp!1480425 () Bool)

(assert (=> b!5315473 (= e!3302702 (and tp_is_empty!39195 tp!1480425))))

(assert (= (and start!560390 res!2254955) b!5315460))

(assert (= (and b!5315460 res!2254953) b!5315470))

(assert (= (and b!5315470 res!2254962) b!5315467))

(assert (= (and b!5315467 (not res!2254958)) b!5315459))

(assert (= (and b!5315459 (not res!2254950)) b!5315462))

(assert (= (and b!5315462 (not res!2254949)) b!5315466))

(assert (= (and b!5315466 (not res!2254951)) b!5315472))

(assert (= (and b!5315472 (not res!2254965)) b!5315468))

(assert (= (and b!5315468 (not res!2254964)) b!5315457))

(assert (= (and b!5315457 (not res!2254952)) b!5315447))

(assert (= (and b!5315447 (not res!2254954)) b!5315464))

(assert (= (and b!5315464 c!923506) b!5315461))

(assert (= (and b!5315464 (not c!923506)) b!5315469))

(assert (= (and b!5315461 (not res!2254959)) b!5315465))

(assert (= (and b!5315464 (not res!2254957)) b!5315463))

(assert (= (and b!5315463 res!2254960) b!5315451))

(assert (= (and b!5315463 (not res!2254961)) b!5315448))

(assert (= (and b!5315448 (not res!2254963)) b!5315458))

(assert (= (and b!5315458 (not res!2254956)) b!5315456))

(assert (= (and start!560390 ((_ is ElementMatch!14971) r!7292)) b!5315450))

(assert (= (and start!560390 ((_ is Concat!23816) r!7292)) b!5315454))

(assert (= (and start!560390 ((_ is Star!14971) r!7292)) b!5315471))

(assert (= (and start!560390 ((_ is Union!14971) r!7292)) b!5315452))

(assert (= (and start!560390 condSetEmpty!34195) setIsEmpty!34195))

(assert (= (and start!560390 (not condSetEmpty!34195)) setNonEmpty!34195))

(assert (= setNonEmpty!34195 b!5315453))

(assert (= b!5315449 b!5315455))

(assert (= (and start!560390 ((_ is Cons!61089) zl!343)) b!5315449))

(assert (= (and start!560390 ((_ is Cons!61090) s!2326)) b!5315473))

(declare-fun m!6351830 () Bool)

(assert (=> b!5315465 m!6351830))

(declare-fun m!6351832 () Bool)

(assert (=> b!5315462 m!6351832))

(declare-fun m!6351834 () Bool)

(assert (=> b!5315457 m!6351834))

(declare-fun m!6351836 () Bool)

(assert (=> b!5315457 m!6351836))

(declare-fun m!6351838 () Bool)

(assert (=> b!5315457 m!6351838))

(declare-fun m!6351840 () Bool)

(assert (=> b!5315457 m!6351840))

(assert (=> b!5315457 m!6351834))

(declare-fun m!6351842 () Bool)

(assert (=> b!5315457 m!6351842))

(assert (=> b!5315457 m!6351838))

(declare-fun m!6351844 () Bool)

(assert (=> b!5315457 m!6351844))

(declare-fun m!6351846 () Bool)

(assert (=> setNonEmpty!34195 m!6351846))

(declare-fun m!6351848 () Bool)

(assert (=> b!5315464 m!6351848))

(declare-fun m!6351850 () Bool)

(assert (=> b!5315464 m!6351850))

(declare-fun m!6351852 () Bool)

(assert (=> b!5315464 m!6351852))

(declare-fun m!6351854 () Bool)

(assert (=> b!5315464 m!6351854))

(declare-fun m!6351856 () Bool)

(assert (=> b!5315464 m!6351856))

(declare-fun m!6351858 () Bool)

(assert (=> b!5315464 m!6351858))

(declare-fun m!6351860 () Bool)

(assert (=> b!5315464 m!6351860))

(declare-fun m!6351862 () Bool)

(assert (=> b!5315447 m!6351862))

(declare-fun m!6351864 () Bool)

(assert (=> b!5315467 m!6351864))

(declare-fun m!6351866 () Bool)

(assert (=> b!5315467 m!6351866))

(declare-fun m!6351868 () Bool)

(assert (=> b!5315467 m!6351868))

(declare-fun m!6351870 () Bool)

(assert (=> b!5315458 m!6351870))

(declare-fun m!6351872 () Bool)

(assert (=> b!5315456 m!6351872))

(declare-fun m!6351874 () Bool)

(assert (=> b!5315461 m!6351874))

(declare-fun m!6351876 () Bool)

(assert (=> b!5315461 m!6351876))

(declare-fun m!6351878 () Bool)

(assert (=> b!5315461 m!6351878))

(declare-fun m!6351880 () Bool)

(assert (=> b!5315460 m!6351880))

(declare-fun m!6351882 () Bool)

(assert (=> b!5315459 m!6351882))

(declare-fun m!6351884 () Bool)

(assert (=> b!5315470 m!6351884))

(declare-fun m!6351886 () Bool)

(assert (=> start!560390 m!6351886))

(declare-fun m!6351888 () Bool)

(assert (=> b!5315472 m!6351888))

(assert (=> b!5315472 m!6351888))

(declare-fun m!6351890 () Bool)

(assert (=> b!5315472 m!6351890))

(declare-fun m!6351892 () Bool)

(assert (=> b!5315449 m!6351892))

(declare-fun m!6351894 () Bool)

(assert (=> b!5315451 m!6351894))

(check-sat (not b!5315470) (not b!5315462) (not b!5315451) (not setNonEmpty!34195) (not b!5315461) (not b!5315460) (not b!5315465) (not b!5315473) (not b!5315471) (not b!5315447) (not b!5315456) (not b!5315453) (not b!5315464) (not b!5315449) (not b!5315467) (not b!5315459) (not start!560390) (not b!5315457) (not b!5315455) (not b!5315458) (not b!5315452) (not b!5315472) (not b!5315454) tp_is_empty!39195)
(check-sat)
(get-model)

(declare-fun d!1707689 () Bool)

(declare-fun c!923547 () Bool)

(declare-fun isEmpty!33059 (List!61214) Bool)

(assert (=> d!1707689 (= c!923547 (isEmpty!33059 (t!374421 s!2326)))))

(declare-fun e!3302789 () Bool)

(assert (=> d!1707689 (= (matchZipper!1215 lt!2171145 (t!374421 s!2326)) e!3302789)))

(declare-fun b!5315607 () Bool)

(declare-fun nullableZipper!1340 ((InoxSet Context!8710)) Bool)

(assert (=> b!5315607 (= e!3302789 (nullableZipper!1340 lt!2171145))))

(declare-fun b!5315608 () Bool)

(declare-fun derivationStepZipper!1214 ((InoxSet Context!8710) C!30212) (InoxSet Context!8710))

(declare-fun head!11398 (List!61214) C!30212)

(declare-fun tail!10495 (List!61214) List!61214)

(assert (=> b!5315608 (= e!3302789 (matchZipper!1215 (derivationStepZipper!1214 lt!2171145 (head!11398 (t!374421 s!2326))) (tail!10495 (t!374421 s!2326))))))

(assert (= (and d!1707689 c!923547) b!5315607))

(assert (= (and d!1707689 (not c!923547)) b!5315608))

(declare-fun m!6351970 () Bool)

(assert (=> d!1707689 m!6351970))

(declare-fun m!6351972 () Bool)

(assert (=> b!5315607 m!6351972))

(declare-fun m!6351974 () Bool)

(assert (=> b!5315608 m!6351974))

(assert (=> b!5315608 m!6351974))

(declare-fun m!6351976 () Bool)

(assert (=> b!5315608 m!6351976))

(declare-fun m!6351978 () Bool)

(assert (=> b!5315608 m!6351978))

(assert (=> b!5315608 m!6351976))

(assert (=> b!5315608 m!6351978))

(declare-fun m!6351980 () Bool)

(assert (=> b!5315608 m!6351980))

(assert (=> b!5315465 d!1707689))

(declare-fun b!5315711 () Bool)

(declare-fun e!3302853 () (InoxSet Context!8710))

(declare-fun call!379176 () (InoxSet Context!8710))

(assert (=> b!5315711 (= e!3302853 call!379176)))

(declare-fun call!379178 () List!61212)

(declare-fun call!379175 () (InoxSet Context!8710))

(declare-fun bm!379169 () Bool)

(declare-fun c!923578 () Bool)

(assert (=> bm!379169 (= call!379175 (derivationStepZipperDown!419 (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343))))) (ite c!923578 lt!2171153 (Context!8711 call!379178)) (h!67538 s!2326)))))

(declare-fun b!5315712 () Bool)

(declare-fun e!3302850 () (InoxSet Context!8710))

(assert (=> b!5315712 (= e!3302850 call!379176)))

(declare-fun bm!379170 () Bool)

(declare-fun c!923582 () Bool)

(declare-fun call!379174 () (InoxSet Context!8710))

(declare-fun call!379177 () List!61212)

(declare-fun c!923581 () Bool)

(assert (=> bm!379170 (= call!379174 (derivationStepZipperDown!419 (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343))))))) (ite (or c!923578 c!923581) lt!2171153 (Context!8711 call!379177)) (h!67538 s!2326)))))

(declare-fun bm!379171 () Bool)

(declare-fun $colon$colon!1390 (List!61212 Regex!14971) List!61212)

(assert (=> bm!379171 (= call!379178 ($colon$colon!1390 (exprs!4855 lt!2171153) (ite (or c!923581 c!923582) (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (h!67536 (exprs!4855 (h!67537 zl!343))))))))

(declare-fun b!5315713 () Bool)

(declare-fun e!3302851 () (InoxSet Context!8710))

(declare-fun e!3302849 () (InoxSet Context!8710))

(assert (=> b!5315713 (= e!3302851 e!3302849)))

(assert (=> b!5315713 (= c!923578 ((_ is Union!14971) (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5315714 () Bool)

(declare-fun c!923579 () Bool)

(assert (=> b!5315714 (= c!923579 ((_ is Star!14971) (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(assert (=> b!5315714 (= e!3302853 e!3302850)))

(declare-fun b!5315716 () Bool)

(declare-fun e!3302852 () (InoxSet Context!8710))

(declare-fun call!379179 () (InoxSet Context!8710))

(assert (=> b!5315716 (= e!3302852 ((_ map or) call!379175 call!379179))))

(declare-fun b!5315717 () Bool)

(declare-fun e!3302848 () Bool)

(assert (=> b!5315717 (= c!923581 e!3302848)))

(declare-fun res!2255057 () Bool)

(assert (=> b!5315717 (=> (not res!2255057) (not e!3302848))))

(assert (=> b!5315717 (= res!2255057 ((_ is Concat!23816) (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(assert (=> b!5315717 (= e!3302849 e!3302852)))

(declare-fun bm!379172 () Bool)

(assert (=> bm!379172 (= call!379179 call!379174)))

(declare-fun b!5315718 () Bool)

(assert (=> b!5315718 (= e!3302848 (nullable!5140 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343))))))))

(declare-fun b!5315719 () Bool)

(assert (=> b!5315719 (= e!3302850 ((as const (Array Context!8710 Bool)) false))))

(declare-fun bm!379173 () Bool)

(assert (=> bm!379173 (= call!379176 call!379179)))

(declare-fun b!5315720 () Bool)

(assert (=> b!5315720 (= e!3302851 (store ((as const (Array Context!8710 Bool)) false) lt!2171153 true))))

(declare-fun b!5315721 () Bool)

(assert (=> b!5315721 (= e!3302852 e!3302853)))

(assert (=> b!5315721 (= c!923582 ((_ is Concat!23816) (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun bm!379174 () Bool)

(assert (=> bm!379174 (= call!379177 call!379178)))

(declare-fun d!1707697 () Bool)

(declare-fun c!923580 () Bool)

(assert (=> d!1707697 (= c!923580 (and ((_ is ElementMatch!14971) (h!67536 (exprs!4855 (h!67537 zl!343)))) (= (c!923507 (h!67536 (exprs!4855 (h!67537 zl!343)))) (h!67538 s!2326))))))

(assert (=> d!1707697 (= (derivationStepZipperDown!419 (h!67536 (exprs!4855 (h!67537 zl!343))) lt!2171153 (h!67538 s!2326)) e!3302851)))

(declare-fun b!5315715 () Bool)

(assert (=> b!5315715 (= e!3302849 ((_ map or) call!379175 call!379174))))

(assert (= (and d!1707697 c!923580) b!5315720))

(assert (= (and d!1707697 (not c!923580)) b!5315713))

(assert (= (and b!5315713 c!923578) b!5315715))

(assert (= (and b!5315713 (not c!923578)) b!5315717))

(assert (= (and b!5315717 res!2255057) b!5315718))

(assert (= (and b!5315717 c!923581) b!5315716))

(assert (= (and b!5315717 (not c!923581)) b!5315721))

(assert (= (and b!5315721 c!923582) b!5315711))

(assert (= (and b!5315721 (not c!923582)) b!5315714))

(assert (= (and b!5315714 c!923579) b!5315712))

(assert (= (and b!5315714 (not c!923579)) b!5315719))

(assert (= (or b!5315711 b!5315712) bm!379174))

(assert (= (or b!5315711 b!5315712) bm!379173))

(assert (= (or b!5315716 bm!379174) bm!379171))

(assert (= (or b!5315716 bm!379173) bm!379172))

(assert (= (or b!5315715 bm!379172) bm!379170))

(assert (= (or b!5315715 b!5315716) bm!379169))

(declare-fun m!6351998 () Bool)

(assert (=> b!5315720 m!6351998))

(declare-fun m!6352000 () Bool)

(assert (=> bm!379170 m!6352000))

(declare-fun m!6352002 () Bool)

(assert (=> b!5315718 m!6352002))

(declare-fun m!6352004 () Bool)

(assert (=> bm!379171 m!6352004))

(declare-fun m!6352006 () Bool)

(assert (=> bm!379169 m!6352006))

(assert (=> b!5315464 d!1707697))

(declare-fun d!1707705 () Bool)

(declare-fun nullableFct!1492 (Regex!14971) Bool)

(assert (=> d!1707705 (= (nullable!5140 (h!67536 (exprs!4855 (h!67537 zl!343)))) (nullableFct!1492 (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun bs!1232241 () Bool)

(assert (= bs!1232241 d!1707705))

(declare-fun m!6352008 () Bool)

(assert (=> bs!1232241 m!6352008))

(assert (=> b!5315464 d!1707705))

(declare-fun b!5315756 () Bool)

(declare-fun e!3302875 () (InoxSet Context!8710))

(declare-fun call!379187 () (InoxSet Context!8710))

(assert (=> b!5315756 (= e!3302875 call!379187)))

(declare-fun b!5315757 () Bool)

(declare-fun e!3302874 () Bool)

(assert (=> b!5315757 (= e!3302874 (nullable!5140 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))))))

(declare-fun bm!379182 () Bool)

(assert (=> bm!379182 (= call!379187 (derivationStepZipperDown!419 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))) (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (h!67538 s!2326)))))

(declare-fun b!5315759 () Bool)

(declare-fun e!3302873 () (InoxSet Context!8710))

(assert (=> b!5315759 (= e!3302873 e!3302875)))

(declare-fun c!923594 () Bool)

(assert (=> b!5315759 (= c!923594 ((_ is Cons!61088) (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))))))

(declare-fun b!5315760 () Bool)

(assert (=> b!5315760 (= e!3302873 ((_ map or) call!379187 (derivationStepZipperUp!343 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (h!67538 s!2326))))))

(declare-fun b!5315758 () Bool)

(assert (=> b!5315758 (= e!3302875 ((as const (Array Context!8710 Bool)) false))))

(declare-fun d!1707707 () Bool)

(declare-fun c!923595 () Bool)

(assert (=> d!1707707 (= c!923595 e!3302874)))

(declare-fun res!2255070 () Bool)

(assert (=> d!1707707 (=> (not res!2255070) (not e!3302874))))

(assert (=> d!1707707 (= res!2255070 ((_ is Cons!61088) (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))))))

(assert (=> d!1707707 (= (derivationStepZipperUp!343 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))) (h!67538 s!2326)) e!3302873)))

(assert (= (and d!1707707 res!2255070) b!5315757))

(assert (= (and d!1707707 c!923595) b!5315760))

(assert (= (and d!1707707 (not c!923595)) b!5315759))

(assert (= (and b!5315759 c!923594) b!5315756))

(assert (= (and b!5315759 (not c!923594)) b!5315758))

(assert (= (or b!5315760 b!5315756) bm!379182))

(declare-fun m!6352032 () Bool)

(assert (=> b!5315757 m!6352032))

(declare-fun m!6352040 () Bool)

(assert (=> bm!379182 m!6352040))

(declare-fun m!6352042 () Bool)

(assert (=> b!5315760 m!6352042))

(assert (=> b!5315464 d!1707707))

(declare-fun d!1707719 () Bool)

(declare-fun dynLambda!24145 (Int Context!8710) (InoxSet Context!8710))

(assert (=> d!1707719 (= (flatMap!698 z!1189 lambda!270979) (dynLambda!24145 lambda!270979 (h!67537 zl!343)))))

(declare-fun lt!2171187 () Unit!153402)

(declare-fun choose!39784 ((InoxSet Context!8710) Context!8710 Int) Unit!153402)

(assert (=> d!1707719 (= lt!2171187 (choose!39784 z!1189 (h!67537 zl!343) lambda!270979))))

(assert (=> d!1707719 (= z!1189 (store ((as const (Array Context!8710 Bool)) false) (h!67537 zl!343) true))))

(assert (=> d!1707719 (= (lemmaFlatMapOnSingletonSet!230 z!1189 (h!67537 zl!343) lambda!270979) lt!2171187)))

(declare-fun b_lambda!204511 () Bool)

(assert (=> (not b_lambda!204511) (not d!1707719)))

(declare-fun bs!1232246 () Bool)

(assert (= bs!1232246 d!1707719))

(assert (=> bs!1232246 m!6351852))

(declare-fun m!6352066 () Bool)

(assert (=> bs!1232246 m!6352066))

(declare-fun m!6352068 () Bool)

(assert (=> bs!1232246 m!6352068))

(declare-fun m!6352070 () Bool)

(assert (=> bs!1232246 m!6352070))

(assert (=> b!5315464 d!1707719))

(declare-fun b!5315789 () Bool)

(declare-fun e!3302895 () (InoxSet Context!8710))

(declare-fun call!379197 () (InoxSet Context!8710))

(assert (=> b!5315789 (= e!3302895 call!379197)))

(declare-fun b!5315790 () Bool)

(declare-fun e!3302894 () Bool)

(assert (=> b!5315790 (= e!3302894 (nullable!5140 (h!67536 (exprs!4855 lt!2171153))))))

(declare-fun bm!379192 () Bool)

(assert (=> bm!379192 (= call!379197 (derivationStepZipperDown!419 (h!67536 (exprs!4855 lt!2171153)) (Context!8711 (t!374419 (exprs!4855 lt!2171153))) (h!67538 s!2326)))))

(declare-fun b!5315792 () Bool)

(declare-fun e!3302893 () (InoxSet Context!8710))

(assert (=> b!5315792 (= e!3302893 e!3302895)))

(declare-fun c!923607 () Bool)

(assert (=> b!5315792 (= c!923607 ((_ is Cons!61088) (exprs!4855 lt!2171153)))))

(declare-fun b!5315793 () Bool)

(assert (=> b!5315793 (= e!3302893 ((_ map or) call!379197 (derivationStepZipperUp!343 (Context!8711 (t!374419 (exprs!4855 lt!2171153))) (h!67538 s!2326))))))

(declare-fun b!5315791 () Bool)

(assert (=> b!5315791 (= e!3302895 ((as const (Array Context!8710 Bool)) false))))

(declare-fun d!1707729 () Bool)

(declare-fun c!923608 () Bool)

(assert (=> d!1707729 (= c!923608 e!3302894)))

(declare-fun res!2255077 () Bool)

(assert (=> d!1707729 (=> (not res!2255077) (not e!3302894))))

(assert (=> d!1707729 (= res!2255077 ((_ is Cons!61088) (exprs!4855 lt!2171153)))))

(assert (=> d!1707729 (= (derivationStepZipperUp!343 lt!2171153 (h!67538 s!2326)) e!3302893)))

(assert (= (and d!1707729 res!2255077) b!5315790))

(assert (= (and d!1707729 c!923608) b!5315793))

(assert (= (and d!1707729 (not c!923608)) b!5315792))

(assert (= (and b!5315792 c!923607) b!5315789))

(assert (= (and b!5315792 (not c!923607)) b!5315791))

(assert (= (or b!5315793 b!5315789) bm!379192))

(declare-fun m!6352074 () Bool)

(assert (=> b!5315790 m!6352074))

(declare-fun m!6352076 () Bool)

(assert (=> bm!379192 m!6352076))

(declare-fun m!6352078 () Bool)

(assert (=> b!5315793 m!6352078))

(assert (=> b!5315464 d!1707729))

(declare-fun b!5315795 () Bool)

(declare-fun e!3302899 () (InoxSet Context!8710))

(declare-fun call!379198 () (InoxSet Context!8710))

(assert (=> b!5315795 (= e!3302899 call!379198)))

(declare-fun b!5315796 () Bool)

(declare-fun e!3302898 () Bool)

(assert (=> b!5315796 (= e!3302898 (nullable!5140 (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun bm!379193 () Bool)

(assert (=> bm!379193 (= call!379198 (derivationStepZipperDown!419 (h!67536 (exprs!4855 (h!67537 zl!343))) (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343)))) (h!67538 s!2326)))))

(declare-fun b!5315798 () Bool)

(declare-fun e!3302897 () (InoxSet Context!8710))

(assert (=> b!5315798 (= e!3302897 e!3302899)))

(declare-fun c!923609 () Bool)

(assert (=> b!5315798 (= c!923609 ((_ is Cons!61088) (exprs!4855 (h!67537 zl!343))))))

(declare-fun b!5315799 () Bool)

(assert (=> b!5315799 (= e!3302897 ((_ map or) call!379198 (derivationStepZipperUp!343 (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343)))) (h!67538 s!2326))))))

(declare-fun b!5315797 () Bool)

(assert (=> b!5315797 (= e!3302899 ((as const (Array Context!8710 Bool)) false))))

(declare-fun d!1707733 () Bool)

(declare-fun c!923610 () Bool)

(assert (=> d!1707733 (= c!923610 e!3302898)))

(declare-fun res!2255079 () Bool)

(assert (=> d!1707733 (=> (not res!2255079) (not e!3302898))))

(assert (=> d!1707733 (= res!2255079 ((_ is Cons!61088) (exprs!4855 (h!67537 zl!343))))))

(assert (=> d!1707733 (= (derivationStepZipperUp!343 (h!67537 zl!343) (h!67538 s!2326)) e!3302897)))

(assert (= (and d!1707733 res!2255079) b!5315796))

(assert (= (and d!1707733 c!923610) b!5315799))

(assert (= (and d!1707733 (not c!923610)) b!5315798))

(assert (= (and b!5315798 c!923609) b!5315795))

(assert (= (and b!5315798 (not c!923609)) b!5315797))

(assert (= (or b!5315799 b!5315795) bm!379193))

(assert (=> b!5315796 m!6351854))

(declare-fun m!6352080 () Bool)

(assert (=> bm!379193 m!6352080))

(declare-fun m!6352082 () Bool)

(assert (=> b!5315799 m!6352082))

(assert (=> b!5315464 d!1707733))

(declare-fun d!1707735 () Bool)

(declare-fun choose!39785 ((InoxSet Context!8710) Int) (InoxSet Context!8710))

(assert (=> d!1707735 (= (flatMap!698 z!1189 lambda!270979) (choose!39785 z!1189 lambda!270979))))

(declare-fun bs!1232247 () Bool)

(assert (= bs!1232247 d!1707735))

(declare-fun m!6352084 () Bool)

(assert (=> bs!1232247 m!6352084))

(assert (=> b!5315464 d!1707735))

(declare-fun d!1707737 () Bool)

(assert (=> d!1707737 (= (isEmpty!33055 (t!374419 (exprs!4855 (h!67537 zl!343)))) ((_ is Nil!61088) (t!374419 (exprs!4855 (h!67537 zl!343)))))))

(assert (=> b!5315447 d!1707737))

(declare-fun bs!1232262 () Bool)

(declare-fun b!5315945 () Bool)

(assert (= bs!1232262 (and b!5315945 b!5315457)))

(declare-fun lambda!271012 () Int)

(assert (=> bs!1232262 (not (= lambda!271012 lambda!270977))))

(assert (=> bs!1232262 (not (= lambda!271012 lambda!270978))))

(assert (=> b!5315945 true))

(assert (=> b!5315945 true))

(declare-fun bs!1232263 () Bool)

(declare-fun b!5315949 () Bool)

(assert (= bs!1232263 (and b!5315949 b!5315457)))

(declare-fun lambda!271013 () Int)

(assert (=> bs!1232263 (not (= lambda!271013 lambda!270977))))

(assert (=> bs!1232263 (= lambda!271013 lambda!270978)))

(declare-fun bs!1232264 () Bool)

(assert (= bs!1232264 (and b!5315949 b!5315945)))

(assert (=> bs!1232264 (not (= lambda!271013 lambda!271012))))

(assert (=> b!5315949 true))

(assert (=> b!5315949 true))

(declare-fun b!5315941 () Bool)

(declare-fun c!923641 () Bool)

(assert (=> b!5315941 (= c!923641 ((_ is Union!14971) r!7292))))

(declare-fun e!3302977 () Bool)

(declare-fun e!3302975 () Bool)

(assert (=> b!5315941 (= e!3302977 e!3302975)))

(declare-fun b!5315942 () Bool)

(declare-fun e!3302976 () Bool)

(assert (=> b!5315942 (= e!3302976 (matchRSpec!2074 (regTwo!30455 r!7292) s!2326))))

(declare-fun b!5315943 () Bool)

(declare-fun c!923644 () Bool)

(assert (=> b!5315943 (= c!923644 ((_ is ElementMatch!14971) r!7292))))

(declare-fun e!3302980 () Bool)

(assert (=> b!5315943 (= e!3302980 e!3302977)))

(declare-fun bm!379201 () Bool)

(declare-fun c!923642 () Bool)

(declare-fun call!379206 () Bool)

(assert (=> bm!379201 (= call!379206 (Exists!2152 (ite c!923642 lambda!271012 lambda!271013)))))

(declare-fun b!5315944 () Bool)

(declare-fun e!3302978 () Bool)

(assert (=> b!5315944 (= e!3302975 e!3302978)))

(assert (=> b!5315944 (= c!923642 ((_ is Star!14971) r!7292))))

(declare-fun e!3302974 () Bool)

(assert (=> b!5315945 (= e!3302974 call!379206)))

(declare-fun b!5315946 () Bool)

(declare-fun e!3302979 () Bool)

(declare-fun call!379207 () Bool)

(assert (=> b!5315946 (= e!3302979 call!379207)))

(declare-fun b!5315947 () Bool)

(assert (=> b!5315947 (= e!3302975 e!3302976)))

(declare-fun res!2255107 () Bool)

(assert (=> b!5315947 (= res!2255107 (matchRSpec!2074 (regOne!30455 r!7292) s!2326))))

(assert (=> b!5315947 (=> res!2255107 e!3302976)))

(declare-fun bm!379202 () Bool)

(assert (=> bm!379202 (= call!379207 (isEmpty!33059 s!2326))))

(declare-fun b!5315948 () Bool)

(declare-fun res!2255108 () Bool)

(assert (=> b!5315948 (=> res!2255108 e!3302974)))

(assert (=> b!5315948 (= res!2255108 call!379207)))

(assert (=> b!5315948 (= e!3302978 e!3302974)))

(assert (=> b!5315949 (= e!3302978 call!379206)))

(declare-fun b!5315950 () Bool)

(assert (=> b!5315950 (= e!3302977 (= s!2326 (Cons!61090 (c!923507 r!7292) Nil!61090)))))

(declare-fun d!1707741 () Bool)

(declare-fun c!923643 () Bool)

(assert (=> d!1707741 (= c!923643 ((_ is EmptyExpr!14971) r!7292))))

(assert (=> d!1707741 (= (matchRSpec!2074 r!7292 s!2326) e!3302979)))

(declare-fun b!5315951 () Bool)

(assert (=> b!5315951 (= e!3302979 e!3302980)))

(declare-fun res!2255109 () Bool)

(assert (=> b!5315951 (= res!2255109 (not ((_ is EmptyLang!14971) r!7292)))))

(assert (=> b!5315951 (=> (not res!2255109) (not e!3302980))))

(assert (= (and d!1707741 c!923643) b!5315946))

(assert (= (and d!1707741 (not c!923643)) b!5315951))

(assert (= (and b!5315951 res!2255109) b!5315943))

(assert (= (and b!5315943 c!923644) b!5315950))

(assert (= (and b!5315943 (not c!923644)) b!5315941))

(assert (= (and b!5315941 c!923641) b!5315947))

(assert (= (and b!5315941 (not c!923641)) b!5315944))

(assert (= (and b!5315947 (not res!2255107)) b!5315942))

(assert (= (and b!5315944 c!923642) b!5315948))

(assert (= (and b!5315944 (not c!923642)) b!5315949))

(assert (= (and b!5315948 (not res!2255108)) b!5315945))

(assert (= (or b!5315945 b!5315949) bm!379201))

(assert (= (or b!5315946 b!5315948) bm!379202))

(declare-fun m!6352150 () Bool)

(assert (=> b!5315942 m!6352150))

(declare-fun m!6352152 () Bool)

(assert (=> bm!379201 m!6352152))

(declare-fun m!6352154 () Bool)

(assert (=> b!5315947 m!6352154))

(declare-fun m!6352156 () Bool)

(assert (=> bm!379202 m!6352156))

(assert (=> b!5315467 d!1707741))

(declare-fun b!5315980 () Bool)

(declare-fun e!3303001 () Bool)

(declare-fun lt!2171202 () Bool)

(assert (=> b!5315980 (= e!3303001 (not lt!2171202))))

(declare-fun b!5315981 () Bool)

(declare-fun res!2255131 () Bool)

(declare-fun e!3302997 () Bool)

(assert (=> b!5315981 (=> res!2255131 e!3302997)))

(declare-fun e!3303000 () Bool)

(assert (=> b!5315981 (= res!2255131 e!3303000)))

(declare-fun res!2255128 () Bool)

(assert (=> b!5315981 (=> (not res!2255128) (not e!3303000))))

(assert (=> b!5315981 (= res!2255128 lt!2171202)))

(declare-fun b!5315982 () Bool)

(declare-fun e!3302999 () Bool)

(assert (=> b!5315982 (= e!3302997 e!3302999)))

(declare-fun res!2255133 () Bool)

(assert (=> b!5315982 (=> (not res!2255133) (not e!3302999))))

(assert (=> b!5315982 (= res!2255133 (not lt!2171202))))

(declare-fun b!5315983 () Bool)

(declare-fun e!3302996 () Bool)

(assert (=> b!5315983 (= e!3302996 (nullable!5140 r!7292))))

(declare-fun b!5315984 () Bool)

(declare-fun derivativeStep!4161 (Regex!14971 C!30212) Regex!14971)

(assert (=> b!5315984 (= e!3302996 (matchR!7156 (derivativeStep!4161 r!7292 (head!11398 s!2326)) (tail!10495 s!2326)))))

(declare-fun b!5315985 () Bool)

(declare-fun res!2255129 () Bool)

(declare-fun e!3302995 () Bool)

(assert (=> b!5315985 (=> res!2255129 e!3302995)))

(assert (=> b!5315985 (= res!2255129 (not (isEmpty!33059 (tail!10495 s!2326))))))

(declare-fun d!1707761 () Bool)

(declare-fun e!3302998 () Bool)

(assert (=> d!1707761 e!3302998))

(declare-fun c!923652 () Bool)

(assert (=> d!1707761 (= c!923652 ((_ is EmptyExpr!14971) r!7292))))

(assert (=> d!1707761 (= lt!2171202 e!3302996)))

(declare-fun c!923651 () Bool)

(assert (=> d!1707761 (= c!923651 (isEmpty!33059 s!2326))))

(assert (=> d!1707761 (validRegex!6707 r!7292)))

(assert (=> d!1707761 (= (matchR!7156 r!7292 s!2326) lt!2171202)))

(declare-fun b!5315986 () Bool)

(declare-fun res!2255127 () Bool)

(assert (=> b!5315986 (=> res!2255127 e!3302997)))

(assert (=> b!5315986 (= res!2255127 (not ((_ is ElementMatch!14971) r!7292)))))

(assert (=> b!5315986 (= e!3303001 e!3302997)))

(declare-fun b!5315987 () Bool)

(assert (=> b!5315987 (= e!3302995 (not (= (head!11398 s!2326) (c!923507 r!7292))))))

(declare-fun b!5315988 () Bool)

(assert (=> b!5315988 (= e!3302998 e!3303001)))

(declare-fun c!923653 () Bool)

(assert (=> b!5315988 (= c!923653 ((_ is EmptyLang!14971) r!7292))))

(declare-fun b!5315989 () Bool)

(assert (=> b!5315989 (= e!3303000 (= (head!11398 s!2326) (c!923507 r!7292)))))

(declare-fun b!5315990 () Bool)

(declare-fun call!379210 () Bool)

(assert (=> b!5315990 (= e!3302998 (= lt!2171202 call!379210))))

(declare-fun b!5315991 () Bool)

(declare-fun res!2255130 () Bool)

(assert (=> b!5315991 (=> (not res!2255130) (not e!3303000))))

(assert (=> b!5315991 (= res!2255130 (isEmpty!33059 (tail!10495 s!2326)))))

(declare-fun b!5315992 () Bool)

(assert (=> b!5315992 (= e!3302999 e!3302995)))

(declare-fun res!2255126 () Bool)

(assert (=> b!5315992 (=> res!2255126 e!3302995)))

(assert (=> b!5315992 (= res!2255126 call!379210)))

(declare-fun b!5315993 () Bool)

(declare-fun res!2255132 () Bool)

(assert (=> b!5315993 (=> (not res!2255132) (not e!3303000))))

(assert (=> b!5315993 (= res!2255132 (not call!379210))))

(declare-fun bm!379205 () Bool)

(assert (=> bm!379205 (= call!379210 (isEmpty!33059 s!2326))))

(assert (= (and d!1707761 c!923651) b!5315983))

(assert (= (and d!1707761 (not c!923651)) b!5315984))

(assert (= (and d!1707761 c!923652) b!5315990))

(assert (= (and d!1707761 (not c!923652)) b!5315988))

(assert (= (and b!5315988 c!923653) b!5315980))

(assert (= (and b!5315988 (not c!923653)) b!5315986))

(assert (= (and b!5315986 (not res!2255127)) b!5315981))

(assert (= (and b!5315981 res!2255128) b!5315993))

(assert (= (and b!5315993 res!2255132) b!5315991))

(assert (= (and b!5315991 res!2255130) b!5315989))

(assert (= (and b!5315981 (not res!2255131)) b!5315982))

(assert (= (and b!5315982 res!2255133) b!5315992))

(assert (= (and b!5315992 (not res!2255126)) b!5315985))

(assert (= (and b!5315985 (not res!2255129)) b!5315987))

(assert (= (or b!5315990 b!5315993 b!5315992) bm!379205))

(assert (=> bm!379205 m!6352156))

(assert (=> d!1707761 m!6352156))

(assert (=> d!1707761 m!6351886))

(declare-fun m!6352158 () Bool)

(assert (=> b!5315984 m!6352158))

(assert (=> b!5315984 m!6352158))

(declare-fun m!6352160 () Bool)

(assert (=> b!5315984 m!6352160))

(declare-fun m!6352162 () Bool)

(assert (=> b!5315984 m!6352162))

(assert (=> b!5315984 m!6352160))

(assert (=> b!5315984 m!6352162))

(declare-fun m!6352164 () Bool)

(assert (=> b!5315984 m!6352164))

(declare-fun m!6352166 () Bool)

(assert (=> b!5315983 m!6352166))

(assert (=> b!5315985 m!6352162))

(assert (=> b!5315985 m!6352162))

(declare-fun m!6352168 () Bool)

(assert (=> b!5315985 m!6352168))

(assert (=> b!5315989 m!6352158))

(assert (=> b!5315991 m!6352162))

(assert (=> b!5315991 m!6352162))

(assert (=> b!5315991 m!6352168))

(assert (=> b!5315987 m!6352158))

(assert (=> b!5315467 d!1707761))

(declare-fun d!1707763 () Bool)

(assert (=> d!1707763 (= (matchR!7156 r!7292 s!2326) (matchRSpec!2074 r!7292 s!2326))))

(declare-fun lt!2171205 () Unit!153402)

(declare-fun choose!39786 (Regex!14971 List!61214) Unit!153402)

(assert (=> d!1707763 (= lt!2171205 (choose!39786 r!7292 s!2326))))

(assert (=> d!1707763 (validRegex!6707 r!7292)))

(assert (=> d!1707763 (= (mainMatchTheorem!2074 r!7292 s!2326) lt!2171205)))

(declare-fun bs!1232265 () Bool)

(assert (= bs!1232265 d!1707763))

(assert (=> bs!1232265 m!6351866))

(assert (=> bs!1232265 m!6351864))

(declare-fun m!6352170 () Bool)

(assert (=> bs!1232265 m!6352170))

(assert (=> bs!1232265 m!6351886))

(assert (=> b!5315467 d!1707763))

(declare-fun b!5315994 () Bool)

(declare-fun e!3303007 () (InoxSet Context!8710))

(declare-fun call!379213 () (InoxSet Context!8710))

(assert (=> b!5315994 (= e!3303007 call!379213)))

(declare-fun call!379212 () (InoxSet Context!8710))

(declare-fun call!379215 () List!61212)

(declare-fun bm!379206 () Bool)

(declare-fun c!923654 () Bool)

(assert (=> bm!379206 (= call!379212 (derivationStepZipperDown!419 (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))) (ite c!923654 (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379215)) (h!67538 s!2326)))))

(declare-fun b!5315995 () Bool)

(declare-fun e!3303004 () (InoxSet Context!8710))

(assert (=> b!5315995 (= e!3303004 call!379213)))

(declare-fun c!923658 () Bool)

(declare-fun bm!379207 () Bool)

(declare-fun call!379214 () List!61212)

(declare-fun c!923657 () Bool)

(declare-fun call!379211 () (InoxSet Context!8710))

(assert (=> bm!379207 (= call!379211 (derivationStepZipperDown!419 (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292)))))) (ite (or c!923654 c!923657) (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379214)) (h!67538 s!2326)))))

(declare-fun bm!379208 () Bool)

(assert (=> bm!379208 (= call!379215 ($colon$colon!1390 (exprs!4855 (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343)))))) (ite (or c!923657 c!923658) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 r!7292)))))))

(declare-fun b!5315996 () Bool)

(declare-fun e!3303005 () (InoxSet Context!8710))

(declare-fun e!3303003 () (InoxSet Context!8710))

(assert (=> b!5315996 (= e!3303005 e!3303003)))

(assert (=> b!5315996 (= c!923654 ((_ is Union!14971) (regOne!30454 (regOne!30454 r!7292))))))

(declare-fun b!5315997 () Bool)

(declare-fun c!923655 () Bool)

(assert (=> b!5315997 (= c!923655 ((_ is Star!14971) (regOne!30454 (regOne!30454 r!7292))))))

(assert (=> b!5315997 (= e!3303007 e!3303004)))

(declare-fun b!5315999 () Bool)

(declare-fun e!3303006 () (InoxSet Context!8710))

(declare-fun call!379216 () (InoxSet Context!8710))

(assert (=> b!5315999 (= e!3303006 ((_ map or) call!379212 call!379216))))

(declare-fun b!5316000 () Bool)

(declare-fun e!3303002 () Bool)

(assert (=> b!5316000 (= c!923657 e!3303002)))

(declare-fun res!2255134 () Bool)

(assert (=> b!5316000 (=> (not res!2255134) (not e!3303002))))

(assert (=> b!5316000 (= res!2255134 ((_ is Concat!23816) (regOne!30454 (regOne!30454 r!7292))))))

(assert (=> b!5316000 (= e!3303003 e!3303006)))

(declare-fun bm!379209 () Bool)

(assert (=> bm!379209 (= call!379216 call!379211)))

(declare-fun b!5316001 () Bool)

(assert (=> b!5316001 (= e!3303002 (nullable!5140 (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))))

(declare-fun b!5316002 () Bool)

(assert (=> b!5316002 (= e!3303004 ((as const (Array Context!8710 Bool)) false))))

(declare-fun bm!379210 () Bool)

(assert (=> bm!379210 (= call!379213 call!379216)))

(declare-fun b!5316003 () Bool)

(assert (=> b!5316003 (= e!3303005 (store ((as const (Array Context!8710 Bool)) false) (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) true))))

(declare-fun b!5316004 () Bool)

(assert (=> b!5316004 (= e!3303006 e!3303007)))

(assert (=> b!5316004 (= c!923658 ((_ is Concat!23816) (regOne!30454 (regOne!30454 r!7292))))))

(declare-fun bm!379211 () Bool)

(assert (=> bm!379211 (= call!379214 call!379215)))

(declare-fun d!1707765 () Bool)

(declare-fun c!923656 () Bool)

(assert (=> d!1707765 (= c!923656 (and ((_ is ElementMatch!14971) (regOne!30454 (regOne!30454 r!7292))) (= (c!923507 (regOne!30454 (regOne!30454 r!7292))) (h!67538 s!2326))))))

(assert (=> d!1707765 (= (derivationStepZipperDown!419 (regOne!30454 (regOne!30454 r!7292)) (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (h!67538 s!2326)) e!3303005)))

(declare-fun b!5315998 () Bool)

(assert (=> b!5315998 (= e!3303003 ((_ map or) call!379212 call!379211))))

(assert (= (and d!1707765 c!923656) b!5316003))

(assert (= (and d!1707765 (not c!923656)) b!5315996))

(assert (= (and b!5315996 c!923654) b!5315998))

(assert (= (and b!5315996 (not c!923654)) b!5316000))

(assert (= (and b!5316000 res!2255134) b!5316001))

(assert (= (and b!5316000 c!923657) b!5315999))

(assert (= (and b!5316000 (not c!923657)) b!5316004))

(assert (= (and b!5316004 c!923658) b!5315994))

(assert (= (and b!5316004 (not c!923658)) b!5315997))

(assert (= (and b!5315997 c!923655) b!5315995))

(assert (= (and b!5315997 (not c!923655)) b!5316002))

(assert (= (or b!5315994 b!5315995) bm!379211))

(assert (= (or b!5315994 b!5315995) bm!379210))

(assert (= (or b!5315999 bm!379211) bm!379208))

(assert (= (or b!5315999 bm!379210) bm!379209))

(assert (= (or b!5315998 bm!379209) bm!379207))

(assert (= (or b!5315998 b!5315999) bm!379206))

(declare-fun m!6352172 () Bool)

(assert (=> b!5316003 m!6352172))

(declare-fun m!6352174 () Bool)

(assert (=> bm!379207 m!6352174))

(declare-fun m!6352176 () Bool)

(assert (=> b!5316001 m!6352176))

(declare-fun m!6352178 () Bool)

(assert (=> bm!379208 m!6352178))

(declare-fun m!6352180 () Bool)

(assert (=> bm!379206 m!6352180))

(assert (=> b!5315458 d!1707765))

(declare-fun d!1707767 () Bool)

(declare-fun lambda!271016 () Int)

(declare-fun forall!14391 (List!61212 Int) Bool)

(assert (=> d!1707767 (= (inv!80674 setElem!34195) (forall!14391 (exprs!4855 setElem!34195) lambda!271016))))

(declare-fun bs!1232266 () Bool)

(assert (= bs!1232266 d!1707767))

(declare-fun m!6352182 () Bool)

(assert (=> bs!1232266 m!6352182))

(assert (=> setNonEmpty!34195 d!1707767))

(declare-fun d!1707769 () Bool)

(declare-fun res!2255146 () Bool)

(declare-fun e!3303026 () Bool)

(assert (=> d!1707769 (=> res!2255146 e!3303026)))

(assert (=> d!1707769 (= res!2255146 ((_ is ElementMatch!14971) (regOne!30454 (regOne!30454 r!7292))))))

(assert (=> d!1707769 (= (validRegex!6707 (regOne!30454 (regOne!30454 r!7292))) e!3303026)))

(declare-fun b!5316023 () Bool)

(declare-fun e!3303025 () Bool)

(declare-fun e!3303028 () Bool)

(assert (=> b!5316023 (= e!3303025 e!3303028)))

(declare-fun res!2255148 () Bool)

(assert (=> b!5316023 (= res!2255148 (not (nullable!5140 (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))))

(assert (=> b!5316023 (=> (not res!2255148) (not e!3303028))))

(declare-fun bm!379218 () Bool)

(declare-fun c!923663 () Bool)

(declare-fun c!923664 () Bool)

(declare-fun call!379225 () Bool)

(assert (=> bm!379218 (= call!379225 (validRegex!6707 (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))))))

(declare-fun b!5316024 () Bool)

(declare-fun e!3303023 () Bool)

(declare-fun call!379224 () Bool)

(assert (=> b!5316024 (= e!3303023 call!379224)))

(declare-fun b!5316025 () Bool)

(assert (=> b!5316025 (= e!3303028 call!379225)))

(declare-fun b!5316026 () Bool)

(declare-fun res!2255149 () Bool)

(declare-fun e!3303024 () Bool)

(assert (=> b!5316026 (=> res!2255149 e!3303024)))

(assert (=> b!5316026 (= res!2255149 (not ((_ is Concat!23816) (regOne!30454 (regOne!30454 r!7292)))))))

(declare-fun e!3303022 () Bool)

(assert (=> b!5316026 (= e!3303022 e!3303024)))

(declare-fun b!5316027 () Bool)

(declare-fun res!2255145 () Bool)

(declare-fun e!3303027 () Bool)

(assert (=> b!5316027 (=> (not res!2255145) (not e!3303027))))

(declare-fun call!379223 () Bool)

(assert (=> b!5316027 (= res!2255145 call!379223)))

(assert (=> b!5316027 (= e!3303022 e!3303027)))

(declare-fun b!5316028 () Bool)

(assert (=> b!5316028 (= e!3303026 e!3303025)))

(assert (=> b!5316028 (= c!923664 ((_ is Star!14971) (regOne!30454 (regOne!30454 r!7292))))))

(declare-fun b!5316029 () Bool)

(assert (=> b!5316029 (= e!3303027 call!379224)))

(declare-fun bm!379219 () Bool)

(assert (=> bm!379219 (= call!379223 call!379225)))

(declare-fun b!5316030 () Bool)

(assert (=> b!5316030 (= e!3303024 e!3303023)))

(declare-fun res!2255147 () Bool)

(assert (=> b!5316030 (=> (not res!2255147) (not e!3303023))))

(assert (=> b!5316030 (= res!2255147 call!379223)))

(declare-fun b!5316031 () Bool)

(assert (=> b!5316031 (= e!3303025 e!3303022)))

(assert (=> b!5316031 (= c!923663 ((_ is Union!14971) (regOne!30454 (regOne!30454 r!7292))))))

(declare-fun bm!379220 () Bool)

(assert (=> bm!379220 (= call!379224 (validRegex!6707 (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))))))))

(assert (= (and d!1707769 (not res!2255146)) b!5316028))

(assert (= (and b!5316028 c!923664) b!5316023))

(assert (= (and b!5316028 (not c!923664)) b!5316031))

(assert (= (and b!5316023 res!2255148) b!5316025))

(assert (= (and b!5316031 c!923663) b!5316027))

(assert (= (and b!5316031 (not c!923663)) b!5316026))

(assert (= (and b!5316027 res!2255145) b!5316029))

(assert (= (and b!5316026 (not res!2255149)) b!5316030))

(assert (= (and b!5316030 res!2255147) b!5316024))

(assert (= (or b!5316029 b!5316024) bm!379220))

(assert (= (or b!5316027 b!5316030) bm!379219))

(assert (= (or b!5316025 bm!379219) bm!379218))

(declare-fun m!6352184 () Bool)

(assert (=> b!5316023 m!6352184))

(declare-fun m!6352186 () Bool)

(assert (=> bm!379218 m!6352186))

(declare-fun m!6352188 () Bool)

(assert (=> bm!379220 m!6352188))

(assert (=> b!5315456 d!1707769))

(declare-fun d!1707771 () Bool)

(declare-fun e!3303039 () Bool)

(assert (=> d!1707771 e!3303039))

(declare-fun res!2255161 () Bool)

(assert (=> d!1707771 (=> res!2255161 e!3303039)))

(declare-fun e!3303043 () Bool)

(assert (=> d!1707771 (= res!2255161 e!3303043)))

(declare-fun res!2255164 () Bool)

(assert (=> d!1707771 (=> (not res!2255164) (not e!3303043))))

(declare-fun lt!2171212 () Option!15082)

(assert (=> d!1707771 (= res!2255164 (isDefined!11785 lt!2171212))))

(declare-fun e!3303041 () Option!15082)

(assert (=> d!1707771 (= lt!2171212 e!3303041)))

(declare-fun c!923669 () Bool)

(declare-fun e!3303042 () Bool)

(assert (=> d!1707771 (= c!923669 e!3303042)))

(declare-fun res!2255163 () Bool)

(assert (=> d!1707771 (=> (not res!2255163) (not e!3303042))))

(assert (=> d!1707771 (= res!2255163 (matchR!7156 (regOne!30454 r!7292) Nil!61090))))

(assert (=> d!1707771 (validRegex!6707 (regOne!30454 r!7292))))

(assert (=> d!1707771 (= (findConcatSeparation!1496 (regOne!30454 r!7292) (regTwo!30454 r!7292) Nil!61090 s!2326 s!2326) lt!2171212)))

(declare-fun b!5316050 () Bool)

(assert (=> b!5316050 (= e!3303039 (not (isDefined!11785 lt!2171212)))))

(declare-fun b!5316051 () Bool)

(assert (=> b!5316051 (= e!3303041 (Some!15081 (tuple2!64341 Nil!61090 s!2326)))))

(declare-fun b!5316052 () Bool)

(assert (=> b!5316052 (= e!3303042 (matchR!7156 (regTwo!30454 r!7292) s!2326))))

(declare-fun b!5316053 () Bool)

(declare-fun ++!13320 (List!61214 List!61214) List!61214)

(declare-fun get!21011 (Option!15082) tuple2!64340)

(assert (=> b!5316053 (= e!3303043 (= (++!13320 (_1!35473 (get!21011 lt!2171212)) (_2!35473 (get!21011 lt!2171212))) s!2326))))

(declare-fun b!5316054 () Bool)

(declare-fun e!3303040 () Option!15082)

(assert (=> b!5316054 (= e!3303040 None!15081)))

(declare-fun b!5316055 () Bool)

(declare-fun res!2255162 () Bool)

(assert (=> b!5316055 (=> (not res!2255162) (not e!3303043))))

(assert (=> b!5316055 (= res!2255162 (matchR!7156 (regOne!30454 r!7292) (_1!35473 (get!21011 lt!2171212))))))

(declare-fun b!5316056 () Bool)

(declare-fun lt!2171213 () Unit!153402)

(declare-fun lt!2171214 () Unit!153402)

(assert (=> b!5316056 (= lt!2171213 lt!2171214)))

(assert (=> b!5316056 (= (++!13320 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090)) (t!374421 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1735 (List!61214 C!30212 List!61214 List!61214) Unit!153402)

(assert (=> b!5316056 (= lt!2171214 (lemmaMoveElementToOtherListKeepsConcatEq!1735 Nil!61090 (h!67538 s!2326) (t!374421 s!2326) s!2326))))

(assert (=> b!5316056 (= e!3303040 (findConcatSeparation!1496 (regOne!30454 r!7292) (regTwo!30454 r!7292) (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090)) (t!374421 s!2326) s!2326))))

(declare-fun b!5316057 () Bool)

(assert (=> b!5316057 (= e!3303041 e!3303040)))

(declare-fun c!923670 () Bool)

(assert (=> b!5316057 (= c!923670 ((_ is Nil!61090) s!2326))))

(declare-fun b!5316058 () Bool)

(declare-fun res!2255160 () Bool)

(assert (=> b!5316058 (=> (not res!2255160) (not e!3303043))))

(assert (=> b!5316058 (= res!2255160 (matchR!7156 (regTwo!30454 r!7292) (_2!35473 (get!21011 lt!2171212))))))

(assert (= (and d!1707771 res!2255163) b!5316052))

(assert (= (and d!1707771 c!923669) b!5316051))

(assert (= (and d!1707771 (not c!923669)) b!5316057))

(assert (= (and b!5316057 c!923670) b!5316054))

(assert (= (and b!5316057 (not c!923670)) b!5316056))

(assert (= (and d!1707771 res!2255164) b!5316055))

(assert (= (and b!5316055 res!2255162) b!5316058))

(assert (= (and b!5316058 res!2255160) b!5316053))

(assert (= (and d!1707771 (not res!2255161)) b!5316050))

(declare-fun m!6352190 () Bool)

(assert (=> b!5316055 m!6352190))

(declare-fun m!6352192 () Bool)

(assert (=> b!5316055 m!6352192))

(assert (=> b!5316058 m!6352190))

(declare-fun m!6352194 () Bool)

(assert (=> b!5316058 m!6352194))

(assert (=> b!5316053 m!6352190))

(declare-fun m!6352196 () Bool)

(assert (=> b!5316053 m!6352196))

(declare-fun m!6352198 () Bool)

(assert (=> d!1707771 m!6352198))

(declare-fun m!6352200 () Bool)

(assert (=> d!1707771 m!6352200))

(declare-fun m!6352202 () Bool)

(assert (=> d!1707771 m!6352202))

(declare-fun m!6352204 () Bool)

(assert (=> b!5316056 m!6352204))

(assert (=> b!5316056 m!6352204))

(declare-fun m!6352206 () Bool)

(assert (=> b!5316056 m!6352206))

(declare-fun m!6352208 () Bool)

(assert (=> b!5316056 m!6352208))

(assert (=> b!5316056 m!6352204))

(declare-fun m!6352210 () Bool)

(assert (=> b!5316056 m!6352210))

(assert (=> b!5316050 m!6352198))

(declare-fun m!6352212 () Bool)

(assert (=> b!5316052 m!6352212))

(assert (=> b!5315457 d!1707771))

(declare-fun d!1707773 () Bool)

(declare-fun choose!39787 (Int) Bool)

(assert (=> d!1707773 (= (Exists!2152 lambda!270977) (choose!39787 lambda!270977))))

(declare-fun bs!1232267 () Bool)

(assert (= bs!1232267 d!1707773))

(declare-fun m!6352214 () Bool)

(assert (=> bs!1232267 m!6352214))

(assert (=> b!5315457 d!1707773))

(declare-fun bs!1232268 () Bool)

(declare-fun d!1707775 () Bool)

(assert (= bs!1232268 (and d!1707775 b!5315457)))

(declare-fun lambda!271019 () Int)

(assert (=> bs!1232268 (= lambda!271019 lambda!270977)))

(assert (=> bs!1232268 (not (= lambda!271019 lambda!270978))))

(declare-fun bs!1232269 () Bool)

(assert (= bs!1232269 (and d!1707775 b!5315945)))

(assert (=> bs!1232269 (not (= lambda!271019 lambda!271012))))

(declare-fun bs!1232270 () Bool)

(assert (= bs!1232270 (and d!1707775 b!5315949)))

(assert (=> bs!1232270 (not (= lambda!271019 lambda!271013))))

(assert (=> d!1707775 true))

(assert (=> d!1707775 true))

(assert (=> d!1707775 true))

(assert (=> d!1707775 (= (isDefined!11785 (findConcatSeparation!1496 (regOne!30454 r!7292) (regTwo!30454 r!7292) Nil!61090 s!2326 s!2326)) (Exists!2152 lambda!271019))))

(declare-fun lt!2171217 () Unit!153402)

(declare-fun choose!39788 (Regex!14971 Regex!14971 List!61214) Unit!153402)

(assert (=> d!1707775 (= lt!2171217 (choose!39788 (regOne!30454 r!7292) (regTwo!30454 r!7292) s!2326))))

(assert (=> d!1707775 (validRegex!6707 (regOne!30454 r!7292))))

(assert (=> d!1707775 (= (lemmaFindConcatSeparationEquivalentToExists!1260 (regOne!30454 r!7292) (regTwo!30454 r!7292) s!2326) lt!2171217)))

(declare-fun bs!1232271 () Bool)

(assert (= bs!1232271 d!1707775))

(assert (=> bs!1232271 m!6352202))

(assert (=> bs!1232271 m!6351834))

(assert (=> bs!1232271 m!6351836))

(declare-fun m!6352216 () Bool)

(assert (=> bs!1232271 m!6352216))

(assert (=> bs!1232271 m!6351834))

(declare-fun m!6352218 () Bool)

(assert (=> bs!1232271 m!6352218))

(assert (=> b!5315457 d!1707775))

(declare-fun d!1707777 () Bool)

(assert (=> d!1707777 (= (Exists!2152 lambda!270978) (choose!39787 lambda!270978))))

(declare-fun bs!1232272 () Bool)

(assert (= bs!1232272 d!1707777))

(declare-fun m!6352220 () Bool)

(assert (=> bs!1232272 m!6352220))

(assert (=> b!5315457 d!1707777))

(declare-fun bs!1232273 () Bool)

(declare-fun d!1707779 () Bool)

(assert (= bs!1232273 (and d!1707779 b!5315945)))

(declare-fun lambda!271024 () Int)

(assert (=> bs!1232273 (not (= lambda!271024 lambda!271012))))

(declare-fun bs!1232274 () Bool)

(assert (= bs!1232274 (and d!1707779 b!5315457)))

(assert (=> bs!1232274 (= lambda!271024 lambda!270977)))

(declare-fun bs!1232275 () Bool)

(assert (= bs!1232275 (and d!1707779 d!1707775)))

(assert (=> bs!1232275 (= lambda!271024 lambda!271019)))

(declare-fun bs!1232276 () Bool)

(assert (= bs!1232276 (and d!1707779 b!5315949)))

(assert (=> bs!1232276 (not (= lambda!271024 lambda!271013))))

(assert (=> bs!1232274 (not (= lambda!271024 lambda!270978))))

(assert (=> d!1707779 true))

(assert (=> d!1707779 true))

(assert (=> d!1707779 true))

(declare-fun bs!1232277 () Bool)

(assert (= bs!1232277 d!1707779))

(declare-fun lambda!271025 () Int)

(assert (=> bs!1232277 (not (= lambda!271025 lambda!271024))))

(assert (=> bs!1232273 (not (= lambda!271025 lambda!271012))))

(assert (=> bs!1232274 (not (= lambda!271025 lambda!270977))))

(assert (=> bs!1232275 (not (= lambda!271025 lambda!271019))))

(assert (=> bs!1232276 (= lambda!271025 lambda!271013)))

(assert (=> bs!1232274 (= lambda!271025 lambda!270978)))

(assert (=> d!1707779 true))

(assert (=> d!1707779 true))

(assert (=> d!1707779 true))

(assert (=> d!1707779 (= (Exists!2152 lambda!271024) (Exists!2152 lambda!271025))))

(declare-fun lt!2171220 () Unit!153402)

(declare-fun choose!39789 (Regex!14971 Regex!14971 List!61214) Unit!153402)

(assert (=> d!1707779 (= lt!2171220 (choose!39789 (regOne!30454 r!7292) (regTwo!30454 r!7292) s!2326))))

(assert (=> d!1707779 (validRegex!6707 (regOne!30454 r!7292))))

(assert (=> d!1707779 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!806 (regOne!30454 r!7292) (regTwo!30454 r!7292) s!2326) lt!2171220)))

(declare-fun m!6352222 () Bool)

(assert (=> bs!1232277 m!6352222))

(declare-fun m!6352224 () Bool)

(assert (=> bs!1232277 m!6352224))

(declare-fun m!6352226 () Bool)

(assert (=> bs!1232277 m!6352226))

(assert (=> bs!1232277 m!6352202))

(assert (=> b!5315457 d!1707779))

(declare-fun d!1707781 () Bool)

(declare-fun isEmpty!33060 (Option!15082) Bool)

(assert (=> d!1707781 (= (isDefined!11785 (findConcatSeparation!1496 (regOne!30454 r!7292) (regTwo!30454 r!7292) Nil!61090 s!2326 s!2326)) (not (isEmpty!33060 (findConcatSeparation!1496 (regOne!30454 r!7292) (regTwo!30454 r!7292) Nil!61090 s!2326 s!2326))))))

(declare-fun bs!1232278 () Bool)

(assert (= bs!1232278 d!1707781))

(assert (=> bs!1232278 m!6351834))

(declare-fun m!6352228 () Bool)

(assert (=> bs!1232278 m!6352228))

(assert (=> b!5315457 d!1707781))

(declare-fun d!1707783 () Bool)

(declare-fun e!3303052 () Bool)

(assert (=> d!1707783 e!3303052))

(declare-fun res!2255179 () Bool)

(assert (=> d!1707783 (=> (not res!2255179) (not e!3303052))))

(declare-fun lt!2171223 () List!61213)

(declare-fun noDuplicate!1295 (List!61213) Bool)

(assert (=> d!1707783 (= res!2255179 (noDuplicate!1295 lt!2171223))))

(declare-fun choose!39790 ((InoxSet Context!8710)) List!61213)

(assert (=> d!1707783 (= lt!2171223 (choose!39790 z!1189))))

(assert (=> d!1707783 (= (toList!8755 z!1189) lt!2171223)))

(declare-fun b!5316073 () Bool)

(declare-fun content!10887 (List!61213) (InoxSet Context!8710))

(assert (=> b!5316073 (= e!3303052 (= (content!10887 lt!2171223) z!1189))))

(assert (= (and d!1707783 res!2255179) b!5316073))

(declare-fun m!6352230 () Bool)

(assert (=> d!1707783 m!6352230))

(declare-fun m!6352232 () Bool)

(assert (=> d!1707783 m!6352232))

(declare-fun m!6352234 () Bool)

(assert (=> b!5316073 m!6352234))

(assert (=> b!5315460 d!1707783))

(declare-fun e!3303055 () Bool)

(declare-fun d!1707785 () Bool)

(assert (=> d!1707785 (= (matchZipper!1215 ((_ map or) lt!2171148 lt!2171145) (t!374421 s!2326)) e!3303055)))

(declare-fun res!2255182 () Bool)

(assert (=> d!1707785 (=> res!2255182 e!3303055)))

(assert (=> d!1707785 (= res!2255182 (matchZipper!1215 lt!2171148 (t!374421 s!2326)))))

(declare-fun lt!2171226 () Unit!153402)

(declare-fun choose!39791 ((InoxSet Context!8710) (InoxSet Context!8710) List!61214) Unit!153402)

(assert (=> d!1707785 (= lt!2171226 (choose!39791 lt!2171148 lt!2171145 (t!374421 s!2326)))))

(assert (=> d!1707785 (= (lemmaZipperConcatMatchesSameAsBothZippers!208 lt!2171148 lt!2171145 (t!374421 s!2326)) lt!2171226)))

(declare-fun b!5316076 () Bool)

(assert (=> b!5316076 (= e!3303055 (matchZipper!1215 lt!2171145 (t!374421 s!2326)))))

(assert (= (and d!1707785 (not res!2255182)) b!5316076))

(assert (=> d!1707785 m!6351878))

(assert (=> d!1707785 m!6351876))

(declare-fun m!6352236 () Bool)

(assert (=> d!1707785 m!6352236))

(assert (=> b!5316076 m!6351830))

(assert (=> b!5315461 d!1707785))

(declare-fun d!1707787 () Bool)

(declare-fun c!923671 () Bool)

(assert (=> d!1707787 (= c!923671 (isEmpty!33059 (t!374421 s!2326)))))

(declare-fun e!3303056 () Bool)

(assert (=> d!1707787 (= (matchZipper!1215 lt!2171148 (t!374421 s!2326)) e!3303056)))

(declare-fun b!5316077 () Bool)

(assert (=> b!5316077 (= e!3303056 (nullableZipper!1340 lt!2171148))))

(declare-fun b!5316078 () Bool)

(assert (=> b!5316078 (= e!3303056 (matchZipper!1215 (derivationStepZipper!1214 lt!2171148 (head!11398 (t!374421 s!2326))) (tail!10495 (t!374421 s!2326))))))

(assert (= (and d!1707787 c!923671) b!5316077))

(assert (= (and d!1707787 (not c!923671)) b!5316078))

(assert (=> d!1707787 m!6351970))

(declare-fun m!6352238 () Bool)

(assert (=> b!5316077 m!6352238))

(assert (=> b!5316078 m!6351974))

(assert (=> b!5316078 m!6351974))

(declare-fun m!6352240 () Bool)

(assert (=> b!5316078 m!6352240))

(assert (=> b!5316078 m!6351978))

(assert (=> b!5316078 m!6352240))

(assert (=> b!5316078 m!6351978))

(declare-fun m!6352242 () Bool)

(assert (=> b!5316078 m!6352242))

(assert (=> b!5315461 d!1707787))

(declare-fun d!1707789 () Bool)

(declare-fun c!923672 () Bool)

(assert (=> d!1707789 (= c!923672 (isEmpty!33059 (t!374421 s!2326)))))

(declare-fun e!3303057 () Bool)

(assert (=> d!1707789 (= (matchZipper!1215 ((_ map or) lt!2171148 lt!2171145) (t!374421 s!2326)) e!3303057)))

(declare-fun b!5316079 () Bool)

(assert (=> b!5316079 (= e!3303057 (nullableZipper!1340 ((_ map or) lt!2171148 lt!2171145)))))

(declare-fun b!5316080 () Bool)

(assert (=> b!5316080 (= e!3303057 (matchZipper!1215 (derivationStepZipper!1214 ((_ map or) lt!2171148 lt!2171145) (head!11398 (t!374421 s!2326))) (tail!10495 (t!374421 s!2326))))))

(assert (= (and d!1707789 c!923672) b!5316079))

(assert (= (and d!1707789 (not c!923672)) b!5316080))

(assert (=> d!1707789 m!6351970))

(declare-fun m!6352244 () Bool)

(assert (=> b!5316079 m!6352244))

(assert (=> b!5316080 m!6351974))

(assert (=> b!5316080 m!6351974))

(declare-fun m!6352246 () Bool)

(assert (=> b!5316080 m!6352246))

(assert (=> b!5316080 m!6351978))

(assert (=> b!5316080 m!6352246))

(assert (=> b!5316080 m!6351978))

(declare-fun m!6352248 () Bool)

(assert (=> b!5316080 m!6352248))

(assert (=> b!5315461 d!1707789))

(declare-fun d!1707791 () Bool)

(assert (=> d!1707791 (= (isEmpty!33056 (t!374420 zl!343)) ((_ is Nil!61089) (t!374420 zl!343)))))

(assert (=> b!5315459 d!1707791))

(declare-fun bs!1232279 () Bool)

(declare-fun d!1707793 () Bool)

(assert (= bs!1232279 (and d!1707793 d!1707767)))

(declare-fun lambda!271026 () Int)

(assert (=> bs!1232279 (= lambda!271026 lambda!271016)))

(assert (=> d!1707793 (= (inv!80674 (h!67537 zl!343)) (forall!14391 (exprs!4855 (h!67537 zl!343)) lambda!271026))))

(declare-fun bs!1232280 () Bool)

(assert (= bs!1232280 d!1707793))

(declare-fun m!6352250 () Bool)

(assert (=> bs!1232280 m!6352250))

(assert (=> b!5315449 d!1707793))

(declare-fun bs!1232281 () Bool)

(declare-fun d!1707795 () Bool)

(assert (= bs!1232281 (and d!1707795 d!1707767)))

(declare-fun lambda!271029 () Int)

(assert (=> bs!1232281 (= lambda!271029 lambda!271016)))

(declare-fun bs!1232282 () Bool)

(assert (= bs!1232282 (and d!1707795 d!1707793)))

(assert (=> bs!1232282 (= lambda!271029 lambda!271026)))

(declare-fun b!5316101 () Bool)

(declare-fun e!3303074 () Regex!14971)

(declare-fun e!3303070 () Regex!14971)

(assert (=> b!5316101 (= e!3303074 e!3303070)))

(declare-fun c!923682 () Bool)

(assert (=> b!5316101 (= c!923682 ((_ is Cons!61088) (unfocusZipperList!413 zl!343)))))

(declare-fun b!5316102 () Bool)

(assert (=> b!5316102 (= e!3303070 (Union!14971 (h!67536 (unfocusZipperList!413 zl!343)) (generalisedUnion!900 (t!374419 (unfocusZipperList!413 zl!343)))))))

(declare-fun b!5316103 () Bool)

(declare-fun e!3303073 () Bool)

(declare-fun lt!2171229 () Regex!14971)

(declare-fun isEmptyLang!883 (Regex!14971) Bool)

(assert (=> b!5316103 (= e!3303073 (isEmptyLang!883 lt!2171229))))

(declare-fun b!5316104 () Bool)

(declare-fun e!3303075 () Bool)

(assert (=> b!5316104 (= e!3303073 e!3303075)))

(declare-fun c!923684 () Bool)

(declare-fun tail!10496 (List!61212) List!61212)

(assert (=> b!5316104 (= c!923684 (isEmpty!33055 (tail!10496 (unfocusZipperList!413 zl!343))))))

(declare-fun b!5316105 () Bool)

(declare-fun e!3303071 () Bool)

(assert (=> b!5316105 (= e!3303071 (isEmpty!33055 (t!374419 (unfocusZipperList!413 zl!343))))))

(declare-fun e!3303072 () Bool)

(assert (=> d!1707795 e!3303072))

(declare-fun res!2255188 () Bool)

(assert (=> d!1707795 (=> (not res!2255188) (not e!3303072))))

(assert (=> d!1707795 (= res!2255188 (validRegex!6707 lt!2171229))))

(assert (=> d!1707795 (= lt!2171229 e!3303074)))

(declare-fun c!923681 () Bool)

(assert (=> d!1707795 (= c!923681 e!3303071)))

(declare-fun res!2255187 () Bool)

(assert (=> d!1707795 (=> (not res!2255187) (not e!3303071))))

(assert (=> d!1707795 (= res!2255187 ((_ is Cons!61088) (unfocusZipperList!413 zl!343)))))

(assert (=> d!1707795 (forall!14391 (unfocusZipperList!413 zl!343) lambda!271029)))

(assert (=> d!1707795 (= (generalisedUnion!900 (unfocusZipperList!413 zl!343)) lt!2171229)))

(declare-fun b!5316106 () Bool)

(assert (=> b!5316106 (= e!3303072 e!3303073)))

(declare-fun c!923683 () Bool)

(assert (=> b!5316106 (= c!923683 (isEmpty!33055 (unfocusZipperList!413 zl!343)))))

(declare-fun b!5316107 () Bool)

(assert (=> b!5316107 (= e!3303074 (h!67536 (unfocusZipperList!413 zl!343)))))

(declare-fun b!5316108 () Bool)

(declare-fun head!11399 (List!61212) Regex!14971)

(assert (=> b!5316108 (= e!3303075 (= lt!2171229 (head!11399 (unfocusZipperList!413 zl!343))))))

(declare-fun b!5316109 () Bool)

(declare-fun isUnion!315 (Regex!14971) Bool)

(assert (=> b!5316109 (= e!3303075 (isUnion!315 lt!2171229))))

(declare-fun b!5316110 () Bool)

(assert (=> b!5316110 (= e!3303070 EmptyLang!14971)))

(assert (= (and d!1707795 res!2255187) b!5316105))

(assert (= (and d!1707795 c!923681) b!5316107))

(assert (= (and d!1707795 (not c!923681)) b!5316101))

(assert (= (and b!5316101 c!923682) b!5316102))

(assert (= (and b!5316101 (not c!923682)) b!5316110))

(assert (= (and d!1707795 res!2255188) b!5316106))

(assert (= (and b!5316106 c!923683) b!5316103))

(assert (= (and b!5316106 (not c!923683)) b!5316104))

(assert (= (and b!5316104 c!923684) b!5316108))

(assert (= (and b!5316104 (not c!923684)) b!5316109))

(declare-fun m!6352252 () Bool)

(assert (=> b!5316109 m!6352252))

(declare-fun m!6352254 () Bool)

(assert (=> b!5316103 m!6352254))

(declare-fun m!6352256 () Bool)

(assert (=> b!5316105 m!6352256))

(assert (=> b!5316104 m!6351888))

(declare-fun m!6352258 () Bool)

(assert (=> b!5316104 m!6352258))

(assert (=> b!5316104 m!6352258))

(declare-fun m!6352260 () Bool)

(assert (=> b!5316104 m!6352260))

(declare-fun m!6352262 () Bool)

(assert (=> d!1707795 m!6352262))

(assert (=> d!1707795 m!6351888))

(declare-fun m!6352264 () Bool)

(assert (=> d!1707795 m!6352264))

(assert (=> b!5316108 m!6351888))

(declare-fun m!6352266 () Bool)

(assert (=> b!5316108 m!6352266))

(declare-fun m!6352268 () Bool)

(assert (=> b!5316102 m!6352268))

(assert (=> b!5316106 m!6351888))

(declare-fun m!6352270 () Bool)

(assert (=> b!5316106 m!6352270))

(assert (=> b!5315472 d!1707795))

(declare-fun bs!1232283 () Bool)

(declare-fun d!1707797 () Bool)

(assert (= bs!1232283 (and d!1707797 d!1707767)))

(declare-fun lambda!271032 () Int)

(assert (=> bs!1232283 (= lambda!271032 lambda!271016)))

(declare-fun bs!1232284 () Bool)

(assert (= bs!1232284 (and d!1707797 d!1707793)))

(assert (=> bs!1232284 (= lambda!271032 lambda!271026)))

(declare-fun bs!1232285 () Bool)

(assert (= bs!1232285 (and d!1707797 d!1707795)))

(assert (=> bs!1232285 (= lambda!271032 lambda!271029)))

(declare-fun lt!2171232 () List!61212)

(assert (=> d!1707797 (forall!14391 lt!2171232 lambda!271032)))

(declare-fun e!3303078 () List!61212)

(assert (=> d!1707797 (= lt!2171232 e!3303078)))

(declare-fun c!923687 () Bool)

(assert (=> d!1707797 (= c!923687 ((_ is Cons!61089) zl!343))))

(assert (=> d!1707797 (= (unfocusZipperList!413 zl!343) lt!2171232)))

(declare-fun b!5316115 () Bool)

(assert (=> b!5316115 (= e!3303078 (Cons!61088 (generalisedConcat!640 (exprs!4855 (h!67537 zl!343))) (unfocusZipperList!413 (t!374420 zl!343))))))

(declare-fun b!5316116 () Bool)

(assert (=> b!5316116 (= e!3303078 Nil!61088)))

(assert (= (and d!1707797 c!923687) b!5316115))

(assert (= (and d!1707797 (not c!923687)) b!5316116))

(declare-fun m!6352272 () Bool)

(assert (=> d!1707797 m!6352272))

(assert (=> b!5316115 m!6351832))

(declare-fun m!6352274 () Bool)

(assert (=> b!5316115 m!6352274))

(assert (=> b!5315472 d!1707797))

(declare-fun d!1707799 () Bool)

(assert (=> d!1707799 (= (nullable!5140 (regOne!30454 (regOne!30454 r!7292))) (nullableFct!1492 (regOne!30454 (regOne!30454 r!7292))))))

(declare-fun bs!1232286 () Bool)

(assert (= bs!1232286 d!1707799))

(declare-fun m!6352276 () Bool)

(assert (=> bs!1232286 m!6352276))

(assert (=> b!5315451 d!1707799))

(declare-fun d!1707801 () Bool)

(declare-fun lt!2171235 () Regex!14971)

(assert (=> d!1707801 (validRegex!6707 lt!2171235)))

(assert (=> d!1707801 (= lt!2171235 (generalisedUnion!900 (unfocusZipperList!413 zl!343)))))

(assert (=> d!1707801 (= (unfocusZipper!713 zl!343) lt!2171235)))

(declare-fun bs!1232287 () Bool)

(assert (= bs!1232287 d!1707801))

(declare-fun m!6352278 () Bool)

(assert (=> bs!1232287 m!6352278))

(assert (=> bs!1232287 m!6351888))

(assert (=> bs!1232287 m!6351888))

(assert (=> bs!1232287 m!6351890))

(assert (=> b!5315470 d!1707801))

(declare-fun d!1707803 () Bool)

(declare-fun res!2255190 () Bool)

(declare-fun e!3303083 () Bool)

(assert (=> d!1707803 (=> res!2255190 e!3303083)))

(assert (=> d!1707803 (= res!2255190 ((_ is ElementMatch!14971) r!7292))))

(assert (=> d!1707803 (= (validRegex!6707 r!7292) e!3303083)))

(declare-fun b!5316117 () Bool)

(declare-fun e!3303082 () Bool)

(declare-fun e!3303085 () Bool)

(assert (=> b!5316117 (= e!3303082 e!3303085)))

(declare-fun res!2255192 () Bool)

(assert (=> b!5316117 (= res!2255192 (not (nullable!5140 (reg!15300 r!7292))))))

(assert (=> b!5316117 (=> (not res!2255192) (not e!3303085))))

(declare-fun call!379228 () Bool)

(declare-fun c!923689 () Bool)

(declare-fun bm!379221 () Bool)

(declare-fun c!923688 () Bool)

(assert (=> bm!379221 (= call!379228 (validRegex!6707 (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292)))))))

(declare-fun b!5316118 () Bool)

(declare-fun e!3303080 () Bool)

(declare-fun call!379227 () Bool)

(assert (=> b!5316118 (= e!3303080 call!379227)))

(declare-fun b!5316119 () Bool)

(assert (=> b!5316119 (= e!3303085 call!379228)))

(declare-fun b!5316120 () Bool)

(declare-fun res!2255193 () Bool)

(declare-fun e!3303081 () Bool)

(assert (=> b!5316120 (=> res!2255193 e!3303081)))

(assert (=> b!5316120 (= res!2255193 (not ((_ is Concat!23816) r!7292)))))

(declare-fun e!3303079 () Bool)

(assert (=> b!5316120 (= e!3303079 e!3303081)))

(declare-fun b!5316121 () Bool)

(declare-fun res!2255189 () Bool)

(declare-fun e!3303084 () Bool)

(assert (=> b!5316121 (=> (not res!2255189) (not e!3303084))))

(declare-fun call!379226 () Bool)

(assert (=> b!5316121 (= res!2255189 call!379226)))

(assert (=> b!5316121 (= e!3303079 e!3303084)))

(declare-fun b!5316122 () Bool)

(assert (=> b!5316122 (= e!3303083 e!3303082)))

(assert (=> b!5316122 (= c!923689 ((_ is Star!14971) r!7292))))

(declare-fun b!5316123 () Bool)

(assert (=> b!5316123 (= e!3303084 call!379227)))

(declare-fun bm!379222 () Bool)

(assert (=> bm!379222 (= call!379226 call!379228)))

(declare-fun b!5316124 () Bool)

(assert (=> b!5316124 (= e!3303081 e!3303080)))

(declare-fun res!2255191 () Bool)

(assert (=> b!5316124 (=> (not res!2255191) (not e!3303080))))

(assert (=> b!5316124 (= res!2255191 call!379226)))

(declare-fun b!5316125 () Bool)

(assert (=> b!5316125 (= e!3303082 e!3303079)))

(assert (=> b!5316125 (= c!923688 ((_ is Union!14971) r!7292))))

(declare-fun bm!379223 () Bool)

(assert (=> bm!379223 (= call!379227 (validRegex!6707 (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292))))))

(assert (= (and d!1707803 (not res!2255190)) b!5316122))

(assert (= (and b!5316122 c!923689) b!5316117))

(assert (= (and b!5316122 (not c!923689)) b!5316125))

(assert (= (and b!5316117 res!2255192) b!5316119))

(assert (= (and b!5316125 c!923688) b!5316121))

(assert (= (and b!5316125 (not c!923688)) b!5316120))

(assert (= (and b!5316121 res!2255189) b!5316123))

(assert (= (and b!5316120 (not res!2255193)) b!5316124))

(assert (= (and b!5316124 res!2255191) b!5316118))

(assert (= (or b!5316123 b!5316118) bm!379223))

(assert (= (or b!5316121 b!5316124) bm!379222))

(assert (= (or b!5316119 bm!379222) bm!379221))

(declare-fun m!6352280 () Bool)

(assert (=> b!5316117 m!6352280))

(declare-fun m!6352282 () Bool)

(assert (=> bm!379221 m!6352282))

(declare-fun m!6352284 () Bool)

(assert (=> bm!379223 m!6352284))

(assert (=> start!560390 d!1707803))

(declare-fun bs!1232288 () Bool)

(declare-fun d!1707805 () Bool)

(assert (= bs!1232288 (and d!1707805 d!1707767)))

(declare-fun lambda!271035 () Int)

(assert (=> bs!1232288 (= lambda!271035 lambda!271016)))

(declare-fun bs!1232289 () Bool)

(assert (= bs!1232289 (and d!1707805 d!1707793)))

(assert (=> bs!1232289 (= lambda!271035 lambda!271026)))

(declare-fun bs!1232290 () Bool)

(assert (= bs!1232290 (and d!1707805 d!1707795)))

(assert (=> bs!1232290 (= lambda!271035 lambda!271029)))

(declare-fun bs!1232291 () Bool)

(assert (= bs!1232291 (and d!1707805 d!1707797)))

(assert (=> bs!1232291 (= lambda!271035 lambda!271032)))

(declare-fun b!5316146 () Bool)

(declare-fun e!3303100 () Bool)

(declare-fun lt!2171238 () Regex!14971)

(assert (=> b!5316146 (= e!3303100 (= lt!2171238 (head!11399 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5316148 () Bool)

(declare-fun e!3303101 () Bool)

(assert (=> b!5316148 (= e!3303101 (isEmpty!33055 (t!374419 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5316149 () Bool)

(declare-fun e!3303099 () Regex!14971)

(assert (=> b!5316149 (= e!3303099 (Concat!23816 (h!67536 (exprs!4855 (h!67537 zl!343))) (generalisedConcat!640 (t!374419 (exprs!4855 (h!67537 zl!343))))))))

(declare-fun b!5316150 () Bool)

(declare-fun e!3303103 () Bool)

(assert (=> b!5316150 (= e!3303103 e!3303100)))

(declare-fun c!923699 () Bool)

(assert (=> b!5316150 (= c!923699 (isEmpty!33055 (tail!10496 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5316151 () Bool)

(assert (=> b!5316151 (= e!3303099 EmptyExpr!14971)))

(declare-fun e!3303098 () Bool)

(assert (=> d!1707805 e!3303098))

(declare-fun res!2255198 () Bool)

(assert (=> d!1707805 (=> (not res!2255198) (not e!3303098))))

(assert (=> d!1707805 (= res!2255198 (validRegex!6707 lt!2171238))))

(declare-fun e!3303102 () Regex!14971)

(assert (=> d!1707805 (= lt!2171238 e!3303102)))

(declare-fun c!923701 () Bool)

(assert (=> d!1707805 (= c!923701 e!3303101)))

(declare-fun res!2255199 () Bool)

(assert (=> d!1707805 (=> (not res!2255199) (not e!3303101))))

(assert (=> d!1707805 (= res!2255199 ((_ is Cons!61088) (exprs!4855 (h!67537 zl!343))))))

(assert (=> d!1707805 (forall!14391 (exprs!4855 (h!67537 zl!343)) lambda!271035)))

(assert (=> d!1707805 (= (generalisedConcat!640 (exprs!4855 (h!67537 zl!343))) lt!2171238)))

(declare-fun b!5316147 () Bool)

(assert (=> b!5316147 (= e!3303102 (h!67536 (exprs!4855 (h!67537 zl!343))))))

(declare-fun b!5316152 () Bool)

(declare-fun isEmptyExpr!875 (Regex!14971) Bool)

(assert (=> b!5316152 (= e!3303103 (isEmptyExpr!875 lt!2171238))))

(declare-fun b!5316153 () Bool)

(assert (=> b!5316153 (= e!3303102 e!3303099)))

(declare-fun c!923698 () Bool)

(assert (=> b!5316153 (= c!923698 ((_ is Cons!61088) (exprs!4855 (h!67537 zl!343))))))

(declare-fun b!5316154 () Bool)

(assert (=> b!5316154 (= e!3303098 e!3303103)))

(declare-fun c!923700 () Bool)

(assert (=> b!5316154 (= c!923700 (isEmpty!33055 (exprs!4855 (h!67537 zl!343))))))

(declare-fun b!5316155 () Bool)

(declare-fun isConcat!398 (Regex!14971) Bool)

(assert (=> b!5316155 (= e!3303100 (isConcat!398 lt!2171238))))

(assert (= (and d!1707805 res!2255199) b!5316148))

(assert (= (and d!1707805 c!923701) b!5316147))

(assert (= (and d!1707805 (not c!923701)) b!5316153))

(assert (= (and b!5316153 c!923698) b!5316149))

(assert (= (and b!5316153 (not c!923698)) b!5316151))

(assert (= (and d!1707805 res!2255198) b!5316154))

(assert (= (and b!5316154 c!923700) b!5316152))

(assert (= (and b!5316154 (not c!923700)) b!5316150))

(assert (= (and b!5316150 c!923699) b!5316146))

(assert (= (and b!5316150 (not c!923699)) b!5316155))

(assert (=> b!5316148 m!6351862))

(declare-fun m!6352286 () Bool)

(assert (=> b!5316149 m!6352286))

(declare-fun m!6352288 () Bool)

(assert (=> b!5316152 m!6352288))

(declare-fun m!6352290 () Bool)

(assert (=> b!5316155 m!6352290))

(declare-fun m!6352292 () Bool)

(assert (=> b!5316146 m!6352292))

(declare-fun m!6352294 () Bool)

(assert (=> b!5316150 m!6352294))

(assert (=> b!5316150 m!6352294))

(declare-fun m!6352296 () Bool)

(assert (=> b!5316150 m!6352296))

(declare-fun m!6352298 () Bool)

(assert (=> d!1707805 m!6352298))

(declare-fun m!6352300 () Bool)

(assert (=> d!1707805 m!6352300))

(declare-fun m!6352302 () Bool)

(assert (=> b!5316154 m!6352302))

(assert (=> b!5315462 d!1707805))

(declare-fun b!5316160 () Bool)

(declare-fun e!3303106 () Bool)

(declare-fun tp!1480488 () Bool)

(declare-fun tp!1480489 () Bool)

(assert (=> b!5316160 (= e!3303106 (and tp!1480488 tp!1480489))))

(assert (=> b!5315455 (= tp!1480419 e!3303106)))

(assert (= (and b!5315455 ((_ is Cons!61088) (exprs!4855 (h!67537 zl!343)))) b!5316160))

(declare-fun b!5316165 () Bool)

(declare-fun e!3303109 () Bool)

(declare-fun tp!1480492 () Bool)

(assert (=> b!5316165 (= e!3303109 (and tp_is_empty!39195 tp!1480492))))

(assert (=> b!5315473 (= tp!1480425 e!3303109)))

(assert (= (and b!5315473 ((_ is Cons!61090) (t!374421 s!2326))) b!5316165))

(declare-fun b!5316173 () Bool)

(declare-fun e!3303115 () Bool)

(declare-fun tp!1480497 () Bool)

(assert (=> b!5316173 (= e!3303115 tp!1480497)))

(declare-fun tp!1480498 () Bool)

(declare-fun b!5316172 () Bool)

(declare-fun e!3303114 () Bool)

(assert (=> b!5316172 (= e!3303114 (and (inv!80674 (h!67537 (t!374420 zl!343))) e!3303115 tp!1480498))))

(assert (=> b!5315449 (= tp!1480418 e!3303114)))

(assert (= b!5316172 b!5316173))

(assert (= (and b!5315449 ((_ is Cons!61089) (t!374420 zl!343))) b!5316172))

(declare-fun m!6352304 () Bool)

(assert (=> b!5316172 m!6352304))

(declare-fun b!5316186 () Bool)

(declare-fun e!3303118 () Bool)

(declare-fun tp!1480512 () Bool)

(assert (=> b!5316186 (= e!3303118 tp!1480512)))

(declare-fun b!5316185 () Bool)

(declare-fun tp!1480511 () Bool)

(declare-fun tp!1480509 () Bool)

(assert (=> b!5316185 (= e!3303118 (and tp!1480511 tp!1480509))))

(declare-fun b!5316187 () Bool)

(declare-fun tp!1480513 () Bool)

(declare-fun tp!1480510 () Bool)

(assert (=> b!5316187 (= e!3303118 (and tp!1480513 tp!1480510))))

(assert (=> b!5315454 (= tp!1480420 e!3303118)))

(declare-fun b!5316184 () Bool)

(assert (=> b!5316184 (= e!3303118 tp_is_empty!39195)))

(assert (= (and b!5315454 ((_ is ElementMatch!14971) (regOne!30454 r!7292))) b!5316184))

(assert (= (and b!5315454 ((_ is Concat!23816) (regOne!30454 r!7292))) b!5316185))

(assert (= (and b!5315454 ((_ is Star!14971) (regOne!30454 r!7292))) b!5316186))

(assert (= (and b!5315454 ((_ is Union!14971) (regOne!30454 r!7292))) b!5316187))

(declare-fun b!5316190 () Bool)

(declare-fun e!3303119 () Bool)

(declare-fun tp!1480517 () Bool)

(assert (=> b!5316190 (= e!3303119 tp!1480517)))

(declare-fun b!5316189 () Bool)

(declare-fun tp!1480516 () Bool)

(declare-fun tp!1480514 () Bool)

(assert (=> b!5316189 (= e!3303119 (and tp!1480516 tp!1480514))))

(declare-fun b!5316191 () Bool)

(declare-fun tp!1480518 () Bool)

(declare-fun tp!1480515 () Bool)

(assert (=> b!5316191 (= e!3303119 (and tp!1480518 tp!1480515))))

(assert (=> b!5315454 (= tp!1480417 e!3303119)))

(declare-fun b!5316188 () Bool)

(assert (=> b!5316188 (= e!3303119 tp_is_empty!39195)))

(assert (= (and b!5315454 ((_ is ElementMatch!14971) (regTwo!30454 r!7292))) b!5316188))

(assert (= (and b!5315454 ((_ is Concat!23816) (regTwo!30454 r!7292))) b!5316189))

(assert (= (and b!5315454 ((_ is Star!14971) (regTwo!30454 r!7292))) b!5316190))

(assert (= (and b!5315454 ((_ is Union!14971) (regTwo!30454 r!7292))) b!5316191))

(declare-fun b!5316194 () Bool)

(declare-fun e!3303120 () Bool)

(declare-fun tp!1480522 () Bool)

(assert (=> b!5316194 (= e!3303120 tp!1480522)))

(declare-fun b!5316193 () Bool)

(declare-fun tp!1480521 () Bool)

(declare-fun tp!1480519 () Bool)

(assert (=> b!5316193 (= e!3303120 (and tp!1480521 tp!1480519))))

(declare-fun b!5316195 () Bool)

(declare-fun tp!1480523 () Bool)

(declare-fun tp!1480520 () Bool)

(assert (=> b!5316195 (= e!3303120 (and tp!1480523 tp!1480520))))

(assert (=> b!5315452 (= tp!1480416 e!3303120)))

(declare-fun b!5316192 () Bool)

(assert (=> b!5316192 (= e!3303120 tp_is_empty!39195)))

(assert (= (and b!5315452 ((_ is ElementMatch!14971) (regOne!30455 r!7292))) b!5316192))

(assert (= (and b!5315452 ((_ is Concat!23816) (regOne!30455 r!7292))) b!5316193))

(assert (= (and b!5315452 ((_ is Star!14971) (regOne!30455 r!7292))) b!5316194))

(assert (= (and b!5315452 ((_ is Union!14971) (regOne!30455 r!7292))) b!5316195))

(declare-fun b!5316198 () Bool)

(declare-fun e!3303121 () Bool)

(declare-fun tp!1480527 () Bool)

(assert (=> b!5316198 (= e!3303121 tp!1480527)))

(declare-fun b!5316197 () Bool)

(declare-fun tp!1480526 () Bool)

(declare-fun tp!1480524 () Bool)

(assert (=> b!5316197 (= e!3303121 (and tp!1480526 tp!1480524))))

(declare-fun b!5316199 () Bool)

(declare-fun tp!1480528 () Bool)

(declare-fun tp!1480525 () Bool)

(assert (=> b!5316199 (= e!3303121 (and tp!1480528 tp!1480525))))

(assert (=> b!5315452 (= tp!1480422 e!3303121)))

(declare-fun b!5316196 () Bool)

(assert (=> b!5316196 (= e!3303121 tp_is_empty!39195)))

(assert (= (and b!5315452 ((_ is ElementMatch!14971) (regTwo!30455 r!7292))) b!5316196))

(assert (= (and b!5315452 ((_ is Concat!23816) (regTwo!30455 r!7292))) b!5316197))

(assert (= (and b!5315452 ((_ is Star!14971) (regTwo!30455 r!7292))) b!5316198))

(assert (= (and b!5315452 ((_ is Union!14971) (regTwo!30455 r!7292))) b!5316199))

(declare-fun b!5316200 () Bool)

(declare-fun e!3303122 () Bool)

(declare-fun tp!1480529 () Bool)

(declare-fun tp!1480530 () Bool)

(assert (=> b!5316200 (= e!3303122 (and tp!1480529 tp!1480530))))

(assert (=> b!5315453 (= tp!1480424 e!3303122)))

(assert (= (and b!5315453 ((_ is Cons!61088) (exprs!4855 setElem!34195))) b!5316200))

(declare-fun condSetEmpty!34201 () Bool)

(assert (=> setNonEmpty!34195 (= condSetEmpty!34201 (= setRest!34195 ((as const (Array Context!8710 Bool)) false)))))

(declare-fun setRes!34201 () Bool)

(assert (=> setNonEmpty!34195 (= tp!1480421 setRes!34201)))

(declare-fun setIsEmpty!34201 () Bool)

(assert (=> setIsEmpty!34201 setRes!34201))

(declare-fun e!3303125 () Bool)

(declare-fun setNonEmpty!34201 () Bool)

(declare-fun setElem!34201 () Context!8710)

(declare-fun tp!1480535 () Bool)

(assert (=> setNonEmpty!34201 (= setRes!34201 (and tp!1480535 (inv!80674 setElem!34201) e!3303125))))

(declare-fun setRest!34201 () (InoxSet Context!8710))

(assert (=> setNonEmpty!34201 (= setRest!34195 ((_ map or) (store ((as const (Array Context!8710 Bool)) false) setElem!34201 true) setRest!34201))))

(declare-fun b!5316205 () Bool)

(declare-fun tp!1480536 () Bool)

(assert (=> b!5316205 (= e!3303125 tp!1480536)))

(assert (= (and setNonEmpty!34195 condSetEmpty!34201) setIsEmpty!34201))

(assert (= (and setNonEmpty!34195 (not condSetEmpty!34201)) setNonEmpty!34201))

(assert (= setNonEmpty!34201 b!5316205))

(declare-fun m!6352306 () Bool)

(assert (=> setNonEmpty!34201 m!6352306))

(declare-fun b!5316208 () Bool)

(declare-fun e!3303126 () Bool)

(declare-fun tp!1480540 () Bool)

(assert (=> b!5316208 (= e!3303126 tp!1480540)))

(declare-fun b!5316207 () Bool)

(declare-fun tp!1480539 () Bool)

(declare-fun tp!1480537 () Bool)

(assert (=> b!5316207 (= e!3303126 (and tp!1480539 tp!1480537))))

(declare-fun b!5316209 () Bool)

(declare-fun tp!1480541 () Bool)

(declare-fun tp!1480538 () Bool)

(assert (=> b!5316209 (= e!3303126 (and tp!1480541 tp!1480538))))

(assert (=> b!5315471 (= tp!1480423 e!3303126)))

(declare-fun b!5316206 () Bool)

(assert (=> b!5316206 (= e!3303126 tp_is_empty!39195)))

(assert (= (and b!5315471 ((_ is ElementMatch!14971) (reg!15300 r!7292))) b!5316206))

(assert (= (and b!5315471 ((_ is Concat!23816) (reg!15300 r!7292))) b!5316207))

(assert (= (and b!5315471 ((_ is Star!14971) (reg!15300 r!7292))) b!5316208))

(assert (= (and b!5315471 ((_ is Union!14971) (reg!15300 r!7292))) b!5316209))

(declare-fun b_lambda!204515 () Bool)

(assert (= b_lambda!204511 (or b!5315464 b_lambda!204515)))

(declare-fun bs!1232292 () Bool)

(declare-fun d!1707807 () Bool)

(assert (= bs!1232292 (and d!1707807 b!5315464)))

(assert (=> bs!1232292 (= (dynLambda!24145 lambda!270979 (h!67537 zl!343)) (derivationStepZipperUp!343 (h!67537 zl!343) (h!67538 s!2326)))))

(assert (=> bs!1232292 m!6351850))

(assert (=> d!1707719 d!1707807))

(check-sat (not b!5316208) (not b!5316058) (not b!5315989) (not d!1707789) (not b!5316146) (not b!5316001) (not d!1707735) (not b!5316205) (not b!5315757) (not bm!379201) (not d!1707763) (not b!5316073) (not b!5316056) (not d!1707779) (not d!1707787) (not b_lambda!204515) (not d!1707805) (not bm!379182) (not b!5316154) (not d!1707801) (not b!5316109) (not b!5315984) (not b!5316148) (not b!5316187) (not b!5316209) (not b!5316149) (not b!5316106) (not d!1707773) (not b!5316160) (not b!5316050) (not b!5316150) (not b!5316186) (not bm!379208) (not b!5315607) (not b!5315799) (not d!1707793) (not bm!379192) (not b!5316105) (not bm!379202) (not bm!379206) (not b!5316200) (not bm!379169) (not b!5315991) (not d!1707771) (not d!1707781) (not b!5315796) (not b!5316193) (not bm!379171) (not bm!379205) (not b!5316055) (not b!5316155) (not b!5315608) (not b!5316172) (not d!1707795) (not b!5316076) (not b!5316207) (not d!1707785) (not b!5315987) (not bm!379220) (not bm!379170) (not setNonEmpty!34201) (not b!5315760) (not b!5316195) (not bm!379218) (not d!1707719) (not bs!1232292) (not b!5315942) (not b!5315793) (not b!5316194) (not b!5316197) (not bm!379221) (not b!5316080) (not b!5316189) (not b!5315718) (not b!5316115) (not b!5316190) (not b!5316102) (not b!5316185) (not b!5315790) (not d!1707705) (not b!5315985) (not b!5316191) (not d!1707761) (not b!5316103) (not d!1707783) (not b!5315983) (not b!5315947) (not b!5316078) (not b!5316108) (not b!5316052) (not b!5316023) (not b!5316173) (not bm!379207) (not d!1707689) (not d!1707797) (not bm!379223) (not d!1707799) (not d!1707767) (not b!5316198) (not bm!379193) (not b!5316104) (not b!5316165) tp_is_empty!39195 (not b!5316117) (not b!5316152) (not d!1707777) (not b!5316077) (not b!5316053) (not b!5316199) (not b!5316079) (not d!1707775))
(check-sat)
(get-model)

(assert (=> d!1707719 d!1707735))

(declare-fun d!1707985 () Bool)

(assert (=> d!1707985 (= (flatMap!698 z!1189 lambda!270979) (dynLambda!24145 lambda!270979 (h!67537 zl!343)))))

(assert (=> d!1707985 true))

(declare-fun _$13!1882 () Unit!153402)

(assert (=> d!1707985 (= (choose!39784 z!1189 (h!67537 zl!343) lambda!270979) _$13!1882)))

(declare-fun b_lambda!204529 () Bool)

(assert (=> (not b_lambda!204529) (not d!1707985)))

(declare-fun bs!1232379 () Bool)

(assert (= bs!1232379 d!1707985))

(assert (=> bs!1232379 m!6351852))

(assert (=> bs!1232379 m!6352066))

(assert (=> d!1707719 d!1707985))

(declare-fun d!1707993 () Bool)

(assert (=> d!1707993 (= (head!11398 s!2326) (h!67538 s!2326))))

(assert (=> b!5315987 d!1707993))

(declare-fun d!1707995 () Bool)

(declare-fun c!923814 () Bool)

(assert (=> d!1707995 (= c!923814 (isEmpty!33059 (tail!10495 (t!374421 s!2326))))))

(declare-fun e!3303378 () Bool)

(assert (=> d!1707995 (= (matchZipper!1215 (derivationStepZipper!1214 ((_ map or) lt!2171148 lt!2171145) (head!11398 (t!374421 s!2326))) (tail!10495 (t!374421 s!2326))) e!3303378)))

(declare-fun b!5316600 () Bool)

(assert (=> b!5316600 (= e!3303378 (nullableZipper!1340 (derivationStepZipper!1214 ((_ map or) lt!2171148 lt!2171145) (head!11398 (t!374421 s!2326)))))))

(declare-fun b!5316601 () Bool)

(assert (=> b!5316601 (= e!3303378 (matchZipper!1215 (derivationStepZipper!1214 (derivationStepZipper!1214 ((_ map or) lt!2171148 lt!2171145) (head!11398 (t!374421 s!2326))) (head!11398 (tail!10495 (t!374421 s!2326)))) (tail!10495 (tail!10495 (t!374421 s!2326)))))))

(assert (= (and d!1707995 c!923814) b!5316600))

(assert (= (and d!1707995 (not c!923814)) b!5316601))

(assert (=> d!1707995 m!6351978))

(declare-fun m!6352702 () Bool)

(assert (=> d!1707995 m!6352702))

(assert (=> b!5316600 m!6352246))

(declare-fun m!6352704 () Bool)

(assert (=> b!5316600 m!6352704))

(assert (=> b!5316601 m!6351978))

(declare-fun m!6352706 () Bool)

(assert (=> b!5316601 m!6352706))

(assert (=> b!5316601 m!6352246))

(assert (=> b!5316601 m!6352706))

(declare-fun m!6352708 () Bool)

(assert (=> b!5316601 m!6352708))

(assert (=> b!5316601 m!6351978))

(declare-fun m!6352710 () Bool)

(assert (=> b!5316601 m!6352710))

(assert (=> b!5316601 m!6352708))

(assert (=> b!5316601 m!6352710))

(declare-fun m!6352712 () Bool)

(assert (=> b!5316601 m!6352712))

(assert (=> b!5316080 d!1707995))

(declare-fun bs!1232397 () Bool)

(declare-fun d!1707997 () Bool)

(assert (= bs!1232397 (and d!1707997 b!5315464)))

(declare-fun lambda!271065 () Int)

(assert (=> bs!1232397 (= (= (head!11398 (t!374421 s!2326)) (h!67538 s!2326)) (= lambda!271065 lambda!270979))))

(assert (=> d!1707997 true))

(assert (=> d!1707997 (= (derivationStepZipper!1214 ((_ map or) lt!2171148 lt!2171145) (head!11398 (t!374421 s!2326))) (flatMap!698 ((_ map or) lt!2171148 lt!2171145) lambda!271065))))

(declare-fun bs!1232398 () Bool)

(assert (= bs!1232398 d!1707997))

(declare-fun m!6352714 () Bool)

(assert (=> bs!1232398 m!6352714))

(assert (=> b!5316080 d!1707997))

(declare-fun d!1707999 () Bool)

(assert (=> d!1707999 (= (head!11398 (t!374421 s!2326)) (h!67538 (t!374421 s!2326)))))

(assert (=> b!5316080 d!1707999))

(declare-fun d!1708001 () Bool)

(assert (=> d!1708001 (= (tail!10495 (t!374421 s!2326)) (t!374421 (t!374421 s!2326)))))

(assert (=> b!5316080 d!1708001))

(declare-fun d!1708005 () Bool)

(assert (=> d!1708005 (= (head!11399 (exprs!4855 (h!67537 zl!343))) (h!67536 (exprs!4855 (h!67537 zl!343))))))

(assert (=> b!5316146 d!1708005))

(assert (=> b!5315989 d!1707993))

(declare-fun bs!1232400 () Bool)

(declare-fun b!5316608 () Bool)

(assert (= bs!1232400 (and b!5316608 d!1707779)))

(declare-fun lambda!271066 () Int)

(assert (=> bs!1232400 (not (= lambda!271066 lambda!271024))))

(declare-fun bs!1232401 () Bool)

(assert (= bs!1232401 (and b!5316608 b!5315945)))

(assert (=> bs!1232401 (= (and (= (reg!15300 (regOne!30455 r!7292)) (reg!15300 r!7292)) (= (regOne!30455 r!7292) r!7292)) (= lambda!271066 lambda!271012))))

(declare-fun bs!1232402 () Bool)

(assert (= bs!1232402 (and b!5316608 b!5315457)))

(assert (=> bs!1232402 (not (= lambda!271066 lambda!270977))))

(declare-fun bs!1232403 () Bool)

(assert (= bs!1232403 (and b!5316608 d!1707775)))

(assert (=> bs!1232403 (not (= lambda!271066 lambda!271019))))

(declare-fun bs!1232404 () Bool)

(assert (= bs!1232404 (and b!5316608 b!5315949)))

(assert (=> bs!1232404 (not (= lambda!271066 lambda!271013))))

(assert (=> bs!1232402 (not (= lambda!271066 lambda!270978))))

(assert (=> bs!1232400 (not (= lambda!271066 lambda!271025))))

(assert (=> b!5316608 true))

(assert (=> b!5316608 true))

(declare-fun bs!1232406 () Bool)

(declare-fun b!5316612 () Bool)

(assert (= bs!1232406 (and b!5316612 d!1707779)))

(declare-fun lambda!271067 () Int)

(assert (=> bs!1232406 (not (= lambda!271067 lambda!271024))))

(declare-fun bs!1232409 () Bool)

(assert (= bs!1232409 (and b!5316612 b!5315457)))

(assert (=> bs!1232409 (not (= lambda!271067 lambda!270977))))

(declare-fun bs!1232411 () Bool)

(assert (= bs!1232411 (and b!5316612 b!5316608)))

(assert (=> bs!1232411 (not (= lambda!271067 lambda!271066))))

(declare-fun bs!1232414 () Bool)

(assert (= bs!1232414 (and b!5316612 b!5315945)))

(assert (=> bs!1232414 (not (= lambda!271067 lambda!271012))))

(declare-fun bs!1232417 () Bool)

(assert (= bs!1232417 (and b!5316612 d!1707775)))

(assert (=> bs!1232417 (not (= lambda!271067 lambda!271019))))

(declare-fun bs!1232419 () Bool)

(assert (= bs!1232419 (and b!5316612 b!5315949)))

(assert (=> bs!1232419 (= (and (= (regOne!30454 (regOne!30455 r!7292)) (regOne!30454 r!7292)) (= (regTwo!30454 (regOne!30455 r!7292)) (regTwo!30454 r!7292))) (= lambda!271067 lambda!271013))))

(assert (=> bs!1232409 (= (and (= (regOne!30454 (regOne!30455 r!7292)) (regOne!30454 r!7292)) (= (regTwo!30454 (regOne!30455 r!7292)) (regTwo!30454 r!7292))) (= lambda!271067 lambda!270978))))

(assert (=> bs!1232406 (= (and (= (regOne!30454 (regOne!30455 r!7292)) (regOne!30454 r!7292)) (= (regTwo!30454 (regOne!30455 r!7292)) (regTwo!30454 r!7292))) (= lambda!271067 lambda!271025))))

(assert (=> b!5316612 true))

(assert (=> b!5316612 true))

(declare-fun b!5316604 () Bool)

(declare-fun c!923817 () Bool)

(assert (=> b!5316604 (= c!923817 ((_ is Union!14971) (regOne!30455 r!7292)))))

(declare-fun e!3303382 () Bool)

(declare-fun e!3303380 () Bool)

(assert (=> b!5316604 (= e!3303382 e!3303380)))

(declare-fun b!5316605 () Bool)

(declare-fun e!3303381 () Bool)

(assert (=> b!5316605 (= e!3303381 (matchRSpec!2074 (regTwo!30455 (regOne!30455 r!7292)) s!2326))))

(declare-fun b!5316606 () Bool)

(declare-fun c!923820 () Bool)

(assert (=> b!5316606 (= c!923820 ((_ is ElementMatch!14971) (regOne!30455 r!7292)))))

(declare-fun e!3303385 () Bool)

(assert (=> b!5316606 (= e!3303385 e!3303382)))

(declare-fun call!379314 () Bool)

(declare-fun c!923818 () Bool)

(declare-fun bm!379309 () Bool)

(assert (=> bm!379309 (= call!379314 (Exists!2152 (ite c!923818 lambda!271066 lambda!271067)))))

(declare-fun b!5316607 () Bool)

(declare-fun e!3303383 () Bool)

(assert (=> b!5316607 (= e!3303380 e!3303383)))

(assert (=> b!5316607 (= c!923818 ((_ is Star!14971) (regOne!30455 r!7292)))))

(declare-fun e!3303379 () Bool)

(assert (=> b!5316608 (= e!3303379 call!379314)))

(declare-fun b!5316609 () Bool)

(declare-fun e!3303384 () Bool)

(declare-fun call!379315 () Bool)

(assert (=> b!5316609 (= e!3303384 call!379315)))

(declare-fun b!5316610 () Bool)

(assert (=> b!5316610 (= e!3303380 e!3303381)))

(declare-fun res!2255373 () Bool)

(assert (=> b!5316610 (= res!2255373 (matchRSpec!2074 (regOne!30455 (regOne!30455 r!7292)) s!2326))))

(assert (=> b!5316610 (=> res!2255373 e!3303381)))

(declare-fun bm!379310 () Bool)

(assert (=> bm!379310 (= call!379315 (isEmpty!33059 s!2326))))

(declare-fun b!5316611 () Bool)

(declare-fun res!2255374 () Bool)

(assert (=> b!5316611 (=> res!2255374 e!3303379)))

(assert (=> b!5316611 (= res!2255374 call!379315)))

(assert (=> b!5316611 (= e!3303383 e!3303379)))

(assert (=> b!5316612 (= e!3303383 call!379314)))

(declare-fun b!5316613 () Bool)

(assert (=> b!5316613 (= e!3303382 (= s!2326 (Cons!61090 (c!923507 (regOne!30455 r!7292)) Nil!61090)))))

(declare-fun d!1708009 () Bool)

(declare-fun c!923819 () Bool)

(assert (=> d!1708009 (= c!923819 ((_ is EmptyExpr!14971) (regOne!30455 r!7292)))))

(assert (=> d!1708009 (= (matchRSpec!2074 (regOne!30455 r!7292) s!2326) e!3303384)))

(declare-fun b!5316614 () Bool)

(assert (=> b!5316614 (= e!3303384 e!3303385)))

(declare-fun res!2255375 () Bool)

(assert (=> b!5316614 (= res!2255375 (not ((_ is EmptyLang!14971) (regOne!30455 r!7292))))))

(assert (=> b!5316614 (=> (not res!2255375) (not e!3303385))))

(assert (= (and d!1708009 c!923819) b!5316609))

(assert (= (and d!1708009 (not c!923819)) b!5316614))

(assert (= (and b!5316614 res!2255375) b!5316606))

(assert (= (and b!5316606 c!923820) b!5316613))

(assert (= (and b!5316606 (not c!923820)) b!5316604))

(assert (= (and b!5316604 c!923817) b!5316610))

(assert (= (and b!5316604 (not c!923817)) b!5316607))

(assert (= (and b!5316610 (not res!2255373)) b!5316605))

(assert (= (and b!5316607 c!923818) b!5316611))

(assert (= (and b!5316607 (not c!923818)) b!5316612))

(assert (= (and b!5316611 (not res!2255374)) b!5316608))

(assert (= (or b!5316608 b!5316612) bm!379309))

(assert (= (or b!5316609 b!5316611) bm!379310))

(declare-fun m!6352736 () Bool)

(assert (=> b!5316605 m!6352736))

(declare-fun m!6352738 () Bool)

(assert (=> bm!379309 m!6352738))

(declare-fun m!6352740 () Bool)

(assert (=> b!5316610 m!6352740))

(assert (=> bm!379310 m!6352156))

(assert (=> b!5315947 d!1708009))

(declare-fun d!1708021 () Bool)

(assert (=> d!1708021 (= (isEmpty!33059 s!2326) ((_ is Nil!61090) s!2326))))

(assert (=> d!1707761 d!1708021))

(assert (=> d!1707761 d!1707803))

(assert (=> bs!1232292 d!1707733))

(declare-fun bs!1232421 () Bool)

(declare-fun d!1708023 () Bool)

(assert (= bs!1232421 (and d!1708023 d!1707797)))

(declare-fun lambda!271069 () Int)

(assert (=> bs!1232421 (= lambda!271069 lambda!271032)))

(declare-fun bs!1232422 () Bool)

(assert (= bs!1232422 (and d!1708023 d!1707767)))

(assert (=> bs!1232422 (= lambda!271069 lambda!271016)))

(declare-fun bs!1232423 () Bool)

(assert (= bs!1232423 (and d!1708023 d!1707805)))

(assert (=> bs!1232423 (= lambda!271069 lambda!271035)))

(declare-fun bs!1232424 () Bool)

(assert (= bs!1232424 (and d!1708023 d!1707793)))

(assert (=> bs!1232424 (= lambda!271069 lambda!271026)))

(declare-fun bs!1232425 () Bool)

(assert (= bs!1232425 (and d!1708023 d!1707795)))

(assert (=> bs!1232425 (= lambda!271069 lambda!271029)))

(declare-fun b!5316640 () Bool)

(declare-fun e!3303403 () Regex!14971)

(declare-fun e!3303399 () Regex!14971)

(assert (=> b!5316640 (= e!3303403 e!3303399)))

(declare-fun c!923830 () Bool)

(assert (=> b!5316640 (= c!923830 ((_ is Cons!61088) (t!374419 (unfocusZipperList!413 zl!343))))))

(declare-fun b!5316641 () Bool)

(assert (=> b!5316641 (= e!3303399 (Union!14971 (h!67536 (t!374419 (unfocusZipperList!413 zl!343))) (generalisedUnion!900 (t!374419 (t!374419 (unfocusZipperList!413 zl!343))))))))

(declare-fun b!5316642 () Bool)

(declare-fun e!3303402 () Bool)

(declare-fun lt!2171261 () Regex!14971)

(assert (=> b!5316642 (= e!3303402 (isEmptyLang!883 lt!2171261))))

(declare-fun b!5316643 () Bool)

(declare-fun e!3303404 () Bool)

(assert (=> b!5316643 (= e!3303402 e!3303404)))

(declare-fun c!923832 () Bool)

(assert (=> b!5316643 (= c!923832 (isEmpty!33055 (tail!10496 (t!374419 (unfocusZipperList!413 zl!343)))))))

(declare-fun b!5316644 () Bool)

(declare-fun e!3303400 () Bool)

(assert (=> b!5316644 (= e!3303400 (isEmpty!33055 (t!374419 (t!374419 (unfocusZipperList!413 zl!343)))))))

(declare-fun e!3303401 () Bool)

(assert (=> d!1708023 e!3303401))

(declare-fun res!2255386 () Bool)

(assert (=> d!1708023 (=> (not res!2255386) (not e!3303401))))

(assert (=> d!1708023 (= res!2255386 (validRegex!6707 lt!2171261))))

(assert (=> d!1708023 (= lt!2171261 e!3303403)))

(declare-fun c!923829 () Bool)

(assert (=> d!1708023 (= c!923829 e!3303400)))

(declare-fun res!2255385 () Bool)

(assert (=> d!1708023 (=> (not res!2255385) (not e!3303400))))

(assert (=> d!1708023 (= res!2255385 ((_ is Cons!61088) (t!374419 (unfocusZipperList!413 zl!343))))))

(assert (=> d!1708023 (forall!14391 (t!374419 (unfocusZipperList!413 zl!343)) lambda!271069)))

(assert (=> d!1708023 (= (generalisedUnion!900 (t!374419 (unfocusZipperList!413 zl!343))) lt!2171261)))

(declare-fun b!5316645 () Bool)

(assert (=> b!5316645 (= e!3303401 e!3303402)))

(declare-fun c!923831 () Bool)

(assert (=> b!5316645 (= c!923831 (isEmpty!33055 (t!374419 (unfocusZipperList!413 zl!343))))))

(declare-fun b!5316646 () Bool)

(assert (=> b!5316646 (= e!3303403 (h!67536 (t!374419 (unfocusZipperList!413 zl!343))))))

(declare-fun b!5316647 () Bool)

(assert (=> b!5316647 (= e!3303404 (= lt!2171261 (head!11399 (t!374419 (unfocusZipperList!413 zl!343)))))))

(declare-fun b!5316648 () Bool)

(assert (=> b!5316648 (= e!3303404 (isUnion!315 lt!2171261))))

(declare-fun b!5316649 () Bool)

(assert (=> b!5316649 (= e!3303399 EmptyLang!14971)))

(assert (= (and d!1708023 res!2255385) b!5316644))

(assert (= (and d!1708023 c!923829) b!5316646))

(assert (= (and d!1708023 (not c!923829)) b!5316640))

(assert (= (and b!5316640 c!923830) b!5316641))

(assert (= (and b!5316640 (not c!923830)) b!5316649))

(assert (= (and d!1708023 res!2255386) b!5316645))

(assert (= (and b!5316645 c!923831) b!5316642))

(assert (= (and b!5316645 (not c!923831)) b!5316643))

(assert (= (and b!5316643 c!923832) b!5316647))

(assert (= (and b!5316643 (not c!923832)) b!5316648))

(declare-fun m!6352754 () Bool)

(assert (=> b!5316648 m!6352754))

(declare-fun m!6352756 () Bool)

(assert (=> b!5316642 m!6352756))

(declare-fun m!6352758 () Bool)

(assert (=> b!5316644 m!6352758))

(declare-fun m!6352762 () Bool)

(assert (=> b!5316643 m!6352762))

(assert (=> b!5316643 m!6352762))

(declare-fun m!6352764 () Bool)

(assert (=> b!5316643 m!6352764))

(declare-fun m!6352766 () Bool)

(assert (=> d!1708023 m!6352766))

(declare-fun m!6352768 () Bool)

(assert (=> d!1708023 m!6352768))

(declare-fun m!6352770 () Bool)

(assert (=> b!5316647 m!6352770))

(declare-fun m!6352774 () Bool)

(assert (=> b!5316641 m!6352774))

(assert (=> b!5316645 m!6352256))

(assert (=> b!5316102 d!1708023))

(declare-fun bs!1232426 () Bool)

(declare-fun d!1708027 () Bool)

(assert (= bs!1232426 (and d!1708027 d!1707797)))

(declare-fun lambda!271070 () Int)

(assert (=> bs!1232426 (= lambda!271070 lambda!271032)))

(declare-fun bs!1232427 () Bool)

(assert (= bs!1232427 (and d!1708027 d!1707767)))

(assert (=> bs!1232427 (= lambda!271070 lambda!271016)))

(declare-fun bs!1232428 () Bool)

(assert (= bs!1232428 (and d!1708027 d!1707805)))

(assert (=> bs!1232428 (= lambda!271070 lambda!271035)))

(declare-fun bs!1232429 () Bool)

(assert (= bs!1232429 (and d!1708027 d!1707793)))

(assert (=> bs!1232429 (= lambda!271070 lambda!271026)))

(declare-fun bs!1232430 () Bool)

(assert (= bs!1232430 (and d!1708027 d!1707795)))

(assert (=> bs!1232430 (= lambda!271070 lambda!271029)))

(declare-fun bs!1232431 () Bool)

(assert (= bs!1232431 (and d!1708027 d!1708023)))

(assert (=> bs!1232431 (= lambda!271070 lambda!271069)))

(assert (=> d!1708027 (= (inv!80674 (h!67537 (t!374420 zl!343))) (forall!14391 (exprs!4855 (h!67537 (t!374420 zl!343))) lambda!271070))))

(declare-fun bs!1232432 () Bool)

(assert (= bs!1232432 d!1708027))

(declare-fun m!6352782 () Bool)

(assert (=> bs!1232432 m!6352782))

(assert (=> b!5316172 d!1708027))

(declare-fun d!1708029 () Bool)

(assert (=> d!1708029 (= (isEmpty!33055 (tail!10496 (unfocusZipperList!413 zl!343))) ((_ is Nil!61088) (tail!10496 (unfocusZipperList!413 zl!343))))))

(assert (=> b!5316104 d!1708029))

(declare-fun d!1708031 () Bool)

(assert (=> d!1708031 (= (tail!10496 (unfocusZipperList!413 zl!343)) (t!374419 (unfocusZipperList!413 zl!343)))))

(assert (=> b!5316104 d!1708031))

(declare-fun d!1708033 () Bool)

(declare-fun lambda!271073 () Int)

(declare-fun exists!2007 ((InoxSet Context!8710) Int) Bool)

(assert (=> d!1708033 (= (nullableZipper!1340 lt!2171145) (exists!2007 lt!2171145 lambda!271073))))

(declare-fun bs!1232433 () Bool)

(assert (= bs!1232433 d!1708033))

(declare-fun m!6352784 () Bool)

(assert (=> bs!1232433 m!6352784))

(assert (=> b!5315607 d!1708033))

(assert (=> b!5316148 d!1707737))

(declare-fun d!1708035 () Bool)

(assert (=> d!1708035 (= (isEmpty!33059 (tail!10495 s!2326)) ((_ is Nil!61090) (tail!10495 s!2326)))))

(assert (=> b!5315991 d!1708035))

(declare-fun d!1708037 () Bool)

(assert (=> d!1708037 (= (tail!10495 s!2326) (t!374421 s!2326))))

(assert (=> b!5315991 d!1708037))

(declare-fun d!1708039 () Bool)

(assert (=> d!1708039 (= ($colon$colon!1390 (exprs!4855 (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343)))))) (ite (or c!923657 c!923658) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 r!7292)))) (Cons!61088 (ite (or c!923657 c!923658) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 r!7292))) (exprs!4855 (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))))))))

(assert (=> bm!379208 d!1708039))

(declare-fun d!1708041 () Bool)

(declare-fun res!2255389 () Bool)

(declare-fun e!3303437 () Bool)

(assert (=> d!1708041 (=> res!2255389 e!3303437)))

(assert (=> d!1708041 (= res!2255389 ((_ is ElementMatch!14971) lt!2171238))))

(assert (=> d!1708041 (= (validRegex!6707 lt!2171238) e!3303437)))

(declare-fun b!5316743 () Bool)

(declare-fun e!3303436 () Bool)

(declare-fun e!3303439 () Bool)

(assert (=> b!5316743 (= e!3303436 e!3303439)))

(declare-fun res!2255391 () Bool)

(assert (=> b!5316743 (= res!2255391 (not (nullable!5140 (reg!15300 lt!2171238))))))

(assert (=> b!5316743 (=> (not res!2255391) (not e!3303439))))

(declare-fun c!923840 () Bool)

(declare-fun c!923841 () Bool)

(declare-fun bm!379324 () Bool)

(declare-fun call!379331 () Bool)

(assert (=> bm!379324 (= call!379331 (validRegex!6707 (ite c!923841 (reg!15300 lt!2171238) (ite c!923840 (regOne!30455 lt!2171238) (regOne!30454 lt!2171238)))))))

(declare-fun b!5316744 () Bool)

(declare-fun e!3303433 () Bool)

(declare-fun call!379330 () Bool)

(assert (=> b!5316744 (= e!3303433 call!379330)))

(declare-fun b!5316745 () Bool)

(assert (=> b!5316745 (= e!3303439 call!379331)))

(declare-fun b!5316746 () Bool)

(declare-fun res!2255392 () Bool)

(declare-fun e!3303435 () Bool)

(assert (=> b!5316746 (=> res!2255392 e!3303435)))

(assert (=> b!5316746 (= res!2255392 (not ((_ is Concat!23816) lt!2171238)))))

(declare-fun e!3303432 () Bool)

(assert (=> b!5316746 (= e!3303432 e!3303435)))

(declare-fun b!5316747 () Bool)

(declare-fun res!2255388 () Bool)

(declare-fun e!3303438 () Bool)

(assert (=> b!5316747 (=> (not res!2255388) (not e!3303438))))

(declare-fun call!379329 () Bool)

(assert (=> b!5316747 (= res!2255388 call!379329)))

(assert (=> b!5316747 (= e!3303432 e!3303438)))

(declare-fun b!5316748 () Bool)

(assert (=> b!5316748 (= e!3303437 e!3303436)))

(assert (=> b!5316748 (= c!923841 ((_ is Star!14971) lt!2171238))))

(declare-fun b!5316749 () Bool)

(assert (=> b!5316749 (= e!3303438 call!379330)))

(declare-fun bm!379325 () Bool)

(assert (=> bm!379325 (= call!379329 call!379331)))

(declare-fun b!5316750 () Bool)

(assert (=> b!5316750 (= e!3303435 e!3303433)))

(declare-fun res!2255390 () Bool)

(assert (=> b!5316750 (=> (not res!2255390) (not e!3303433))))

(assert (=> b!5316750 (= res!2255390 call!379329)))

(declare-fun b!5316751 () Bool)

(assert (=> b!5316751 (= e!3303436 e!3303432)))

(assert (=> b!5316751 (= c!923840 ((_ is Union!14971) lt!2171238))))

(declare-fun bm!379326 () Bool)

(assert (=> bm!379326 (= call!379330 (validRegex!6707 (ite c!923840 (regTwo!30455 lt!2171238) (regTwo!30454 lt!2171238))))))

(assert (= (and d!1708041 (not res!2255389)) b!5316748))

(assert (= (and b!5316748 c!923841) b!5316743))

(assert (= (and b!5316748 (not c!923841)) b!5316751))

(assert (= (and b!5316743 res!2255391) b!5316745))

(assert (= (and b!5316751 c!923840) b!5316747))

(assert (= (and b!5316751 (not c!923840)) b!5316746))

(assert (= (and b!5316747 res!2255388) b!5316749))

(assert (= (and b!5316746 (not res!2255392)) b!5316750))

(assert (= (and b!5316750 res!2255390) b!5316744))

(assert (= (or b!5316749 b!5316744) bm!379326))

(assert (= (or b!5316747 b!5316750) bm!379325))

(assert (= (or b!5316745 bm!379325) bm!379324))

(declare-fun m!6352786 () Bool)

(assert (=> b!5316743 m!6352786))

(declare-fun m!6352788 () Bool)

(assert (=> bm!379324 m!6352788))

(declare-fun m!6352790 () Bool)

(assert (=> bm!379326 m!6352790))

(assert (=> d!1707805 d!1708041))

(declare-fun d!1708043 () Bool)

(declare-fun res!2255397 () Bool)

(declare-fun e!3303457 () Bool)

(assert (=> d!1708043 (=> res!2255397 e!3303457)))

(assert (=> d!1708043 (= res!2255397 ((_ is Nil!61088) (exprs!4855 (h!67537 zl!343))))))

(assert (=> d!1708043 (= (forall!14391 (exprs!4855 (h!67537 zl!343)) lambda!271035) e!3303457)))

(declare-fun b!5316790 () Bool)

(declare-fun e!3303458 () Bool)

(assert (=> b!5316790 (= e!3303457 e!3303458)))

(declare-fun res!2255398 () Bool)

(assert (=> b!5316790 (=> (not res!2255398) (not e!3303458))))

(declare-fun dynLambda!24147 (Int Regex!14971) Bool)

(assert (=> b!5316790 (= res!2255398 (dynLambda!24147 lambda!271035 (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5316791 () Bool)

(assert (=> b!5316791 (= e!3303458 (forall!14391 (t!374419 (exprs!4855 (h!67537 zl!343))) lambda!271035))))

(assert (= (and d!1708043 (not res!2255397)) b!5316790))

(assert (= (and b!5316790 res!2255398) b!5316791))

(declare-fun b_lambda!204543 () Bool)

(assert (=> (not b_lambda!204543) (not b!5316790)))

(declare-fun m!6352804 () Bool)

(assert (=> b!5316790 m!6352804))

(declare-fun m!6352806 () Bool)

(assert (=> b!5316791 m!6352806))

(assert (=> d!1707805 d!1708043))

(declare-fun d!1708055 () Bool)

(assert (=> d!1708055 (= (nullable!5140 r!7292) (nullableFct!1492 r!7292))))

(declare-fun bs!1232439 () Bool)

(assert (= bs!1232439 d!1708055))

(declare-fun m!6352808 () Bool)

(assert (=> bs!1232439 m!6352808))

(assert (=> b!5315983 d!1708055))

(declare-fun bs!1232440 () Bool)

(declare-fun b!5316796 () Bool)

(assert (= bs!1232440 (and b!5316796 d!1707779)))

(declare-fun lambda!271074 () Int)

(assert (=> bs!1232440 (not (= lambda!271074 lambda!271024))))

(declare-fun bs!1232441 () Bool)

(assert (= bs!1232441 (and b!5316796 b!5315457)))

(assert (=> bs!1232441 (not (= lambda!271074 lambda!270977))))

(declare-fun bs!1232442 () Bool)

(assert (= bs!1232442 (and b!5316796 b!5316608)))

(assert (=> bs!1232442 (= (and (= (reg!15300 (regTwo!30455 r!7292)) (reg!15300 (regOne!30455 r!7292))) (= (regTwo!30455 r!7292) (regOne!30455 r!7292))) (= lambda!271074 lambda!271066))))

(declare-fun bs!1232443 () Bool)

(assert (= bs!1232443 (and b!5316796 b!5315945)))

(assert (=> bs!1232443 (= (and (= (reg!15300 (regTwo!30455 r!7292)) (reg!15300 r!7292)) (= (regTwo!30455 r!7292) r!7292)) (= lambda!271074 lambda!271012))))

(declare-fun bs!1232444 () Bool)

(assert (= bs!1232444 (and b!5316796 d!1707775)))

(assert (=> bs!1232444 (not (= lambda!271074 lambda!271019))))

(declare-fun bs!1232445 () Bool)

(assert (= bs!1232445 (and b!5316796 b!5315949)))

(assert (=> bs!1232445 (not (= lambda!271074 lambda!271013))))

(assert (=> bs!1232441 (not (= lambda!271074 lambda!270978))))

(assert (=> bs!1232440 (not (= lambda!271074 lambda!271025))))

(declare-fun bs!1232446 () Bool)

(assert (= bs!1232446 (and b!5316796 b!5316612)))

(assert (=> bs!1232446 (not (= lambda!271074 lambda!271067))))

(assert (=> b!5316796 true))

(assert (=> b!5316796 true))

(declare-fun bs!1232447 () Bool)

(declare-fun b!5316800 () Bool)

(assert (= bs!1232447 (and b!5316800 d!1707779)))

(declare-fun lambda!271075 () Int)

(assert (=> bs!1232447 (not (= lambda!271075 lambda!271024))))

(declare-fun bs!1232448 () Bool)

(assert (= bs!1232448 (and b!5316800 b!5315457)))

(assert (=> bs!1232448 (not (= lambda!271075 lambda!270977))))

(declare-fun bs!1232449 () Bool)

(assert (= bs!1232449 (and b!5316800 b!5316796)))

(assert (=> bs!1232449 (not (= lambda!271075 lambda!271074))))

(declare-fun bs!1232450 () Bool)

(assert (= bs!1232450 (and b!5316800 b!5316608)))

(assert (=> bs!1232450 (not (= lambda!271075 lambda!271066))))

(declare-fun bs!1232451 () Bool)

(assert (= bs!1232451 (and b!5316800 b!5315945)))

(assert (=> bs!1232451 (not (= lambda!271075 lambda!271012))))

(declare-fun bs!1232452 () Bool)

(assert (= bs!1232452 (and b!5316800 d!1707775)))

(assert (=> bs!1232452 (not (= lambda!271075 lambda!271019))))

(declare-fun bs!1232453 () Bool)

(assert (= bs!1232453 (and b!5316800 b!5315949)))

(assert (=> bs!1232453 (= (and (= (regOne!30454 (regTwo!30455 r!7292)) (regOne!30454 r!7292)) (= (regTwo!30454 (regTwo!30455 r!7292)) (regTwo!30454 r!7292))) (= lambda!271075 lambda!271013))))

(assert (=> bs!1232448 (= (and (= (regOne!30454 (regTwo!30455 r!7292)) (regOne!30454 r!7292)) (= (regTwo!30454 (regTwo!30455 r!7292)) (regTwo!30454 r!7292))) (= lambda!271075 lambda!270978))))

(assert (=> bs!1232447 (= (and (= (regOne!30454 (regTwo!30455 r!7292)) (regOne!30454 r!7292)) (= (regTwo!30454 (regTwo!30455 r!7292)) (regTwo!30454 r!7292))) (= lambda!271075 lambda!271025))))

(declare-fun bs!1232454 () Bool)

(assert (= bs!1232454 (and b!5316800 b!5316612)))

(assert (=> bs!1232454 (= (and (= (regOne!30454 (regTwo!30455 r!7292)) (regOne!30454 (regOne!30455 r!7292))) (= (regTwo!30454 (regTwo!30455 r!7292)) (regTwo!30454 (regOne!30455 r!7292)))) (= lambda!271075 lambda!271067))))

(assert (=> b!5316800 true))

(assert (=> b!5316800 true))

(declare-fun b!5316792 () Bool)

(declare-fun c!923842 () Bool)

(assert (=> b!5316792 (= c!923842 ((_ is Union!14971) (regTwo!30455 r!7292)))))

(declare-fun e!3303462 () Bool)

(declare-fun e!3303460 () Bool)

(assert (=> b!5316792 (= e!3303462 e!3303460)))

(declare-fun b!5316793 () Bool)

(declare-fun e!3303461 () Bool)

(assert (=> b!5316793 (= e!3303461 (matchRSpec!2074 (regTwo!30455 (regTwo!30455 r!7292)) s!2326))))

(declare-fun b!5316794 () Bool)

(declare-fun c!923845 () Bool)

(assert (=> b!5316794 (= c!923845 ((_ is ElementMatch!14971) (regTwo!30455 r!7292)))))

(declare-fun e!3303465 () Bool)

(assert (=> b!5316794 (= e!3303465 e!3303462)))

(declare-fun bm!379327 () Bool)

(declare-fun c!923843 () Bool)

(declare-fun call!379332 () Bool)

(assert (=> bm!379327 (= call!379332 (Exists!2152 (ite c!923843 lambda!271074 lambda!271075)))))

(declare-fun b!5316795 () Bool)

(declare-fun e!3303463 () Bool)

(assert (=> b!5316795 (= e!3303460 e!3303463)))

(assert (=> b!5316795 (= c!923843 ((_ is Star!14971) (regTwo!30455 r!7292)))))

(declare-fun e!3303459 () Bool)

(assert (=> b!5316796 (= e!3303459 call!379332)))

(declare-fun b!5316797 () Bool)

(declare-fun e!3303464 () Bool)

(declare-fun call!379333 () Bool)

(assert (=> b!5316797 (= e!3303464 call!379333)))

(declare-fun b!5316798 () Bool)

(assert (=> b!5316798 (= e!3303460 e!3303461)))

(declare-fun res!2255399 () Bool)

(assert (=> b!5316798 (= res!2255399 (matchRSpec!2074 (regOne!30455 (regTwo!30455 r!7292)) s!2326))))

(assert (=> b!5316798 (=> res!2255399 e!3303461)))

(declare-fun bm!379328 () Bool)

(assert (=> bm!379328 (= call!379333 (isEmpty!33059 s!2326))))

(declare-fun b!5316799 () Bool)

(declare-fun res!2255400 () Bool)

(assert (=> b!5316799 (=> res!2255400 e!3303459)))

(assert (=> b!5316799 (= res!2255400 call!379333)))

(assert (=> b!5316799 (= e!3303463 e!3303459)))

(assert (=> b!5316800 (= e!3303463 call!379332)))

(declare-fun b!5316801 () Bool)

(assert (=> b!5316801 (= e!3303462 (= s!2326 (Cons!61090 (c!923507 (regTwo!30455 r!7292)) Nil!61090)))))

(declare-fun d!1708057 () Bool)

(declare-fun c!923844 () Bool)

(assert (=> d!1708057 (= c!923844 ((_ is EmptyExpr!14971) (regTwo!30455 r!7292)))))

(assert (=> d!1708057 (= (matchRSpec!2074 (regTwo!30455 r!7292) s!2326) e!3303464)))

(declare-fun b!5316802 () Bool)

(assert (=> b!5316802 (= e!3303464 e!3303465)))

(declare-fun res!2255401 () Bool)

(assert (=> b!5316802 (= res!2255401 (not ((_ is EmptyLang!14971) (regTwo!30455 r!7292))))))

(assert (=> b!5316802 (=> (not res!2255401) (not e!3303465))))

(assert (= (and d!1708057 c!923844) b!5316797))

(assert (= (and d!1708057 (not c!923844)) b!5316802))

(assert (= (and b!5316802 res!2255401) b!5316794))

(assert (= (and b!5316794 c!923845) b!5316801))

(assert (= (and b!5316794 (not c!923845)) b!5316792))

(assert (= (and b!5316792 c!923842) b!5316798))

(assert (= (and b!5316792 (not c!923842)) b!5316795))

(assert (= (and b!5316798 (not res!2255399)) b!5316793))

(assert (= (and b!5316795 c!923843) b!5316799))

(assert (= (and b!5316795 (not c!923843)) b!5316800))

(assert (= (and b!5316799 (not res!2255400)) b!5316796))

(assert (= (or b!5316796 b!5316800) bm!379327))

(assert (= (or b!5316797 b!5316799) bm!379328))

(declare-fun m!6352810 () Bool)

(assert (=> b!5316793 m!6352810))

(declare-fun m!6352812 () Bool)

(assert (=> bm!379327 m!6352812))

(declare-fun m!6352814 () Bool)

(assert (=> b!5316798 m!6352814))

(assert (=> bm!379328 m!6352156))

(assert (=> b!5315942 d!1708057))

(declare-fun d!1708059 () Bool)

(assert (=> d!1708059 (= (isEmpty!33059 (t!374421 s!2326)) ((_ is Nil!61090) (t!374421 s!2326)))))

(assert (=> d!1707789 d!1708059))

(assert (=> b!5315985 d!1708035))

(assert (=> b!5315985 d!1708037))

(declare-fun d!1708061 () Bool)

(assert (=> d!1708061 (= (Exists!2152 (ite c!923642 lambda!271012 lambda!271013)) (choose!39787 (ite c!923642 lambda!271012 lambda!271013)))))

(declare-fun bs!1232455 () Bool)

(assert (= bs!1232455 d!1708061))

(declare-fun m!6352816 () Bool)

(assert (=> bs!1232455 m!6352816))

(assert (=> bm!379201 d!1708061))

(declare-fun d!1708063 () Bool)

(assert (=> d!1708063 true))

(assert (=> d!1708063 true))

(declare-fun res!2255404 () Bool)

(assert (=> d!1708063 (= (choose!39787 lambda!270978) res!2255404)))

(assert (=> d!1707777 d!1708063))

(declare-fun d!1708065 () Bool)

(assert (=> d!1708065 (= ($colon$colon!1390 (exprs!4855 lt!2171153) (ite (or c!923581 c!923582) (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (h!67536 (exprs!4855 (h!67537 zl!343))))) (Cons!61088 (ite (or c!923581 c!923582) (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (h!67536 (exprs!4855 (h!67537 zl!343)))) (exprs!4855 lt!2171153)))))

(assert (=> bm!379171 d!1708065))

(declare-fun d!1708067 () Bool)

(assert (=> d!1708067 (= (nullable!5140 (reg!15300 r!7292)) (nullableFct!1492 (reg!15300 r!7292)))))

(declare-fun bs!1232456 () Bool)

(assert (= bs!1232456 d!1708067))

(declare-fun m!6352818 () Bool)

(assert (=> bs!1232456 m!6352818))

(assert (=> b!5316117 d!1708067))

(declare-fun b!5316803 () Bool)

(declare-fun e!3303471 () (InoxSet Context!8710))

(declare-fun call!379336 () (InoxSet Context!8710))

(assert (=> b!5316803 (= e!3303471 call!379336)))

(declare-fun call!379335 () (InoxSet Context!8710))

(declare-fun call!379338 () List!61212)

(declare-fun bm!379329 () Bool)

(declare-fun c!923846 () Bool)

(assert (=> bm!379329 (= call!379335 (derivationStepZipperDown!419 (ite c!923846 (regOne!30455 (h!67536 (exprs!4855 lt!2171153))) (regOne!30454 (h!67536 (exprs!4855 lt!2171153)))) (ite c!923846 (Context!8711 (t!374419 (exprs!4855 lt!2171153))) (Context!8711 call!379338)) (h!67538 s!2326)))))

(declare-fun b!5316804 () Bool)

(declare-fun e!3303468 () (InoxSet Context!8710))

(assert (=> b!5316804 (= e!3303468 call!379336)))

(declare-fun bm!379330 () Bool)

(declare-fun call!379337 () List!61212)

(declare-fun call!379334 () (InoxSet Context!8710))

(declare-fun c!923849 () Bool)

(declare-fun c!923850 () Bool)

(assert (=> bm!379330 (= call!379334 (derivationStepZipperDown!419 (ite c!923846 (regTwo!30455 (h!67536 (exprs!4855 lt!2171153))) (ite c!923849 (regTwo!30454 (h!67536 (exprs!4855 lt!2171153))) (ite c!923850 (regOne!30454 (h!67536 (exprs!4855 lt!2171153))) (reg!15300 (h!67536 (exprs!4855 lt!2171153)))))) (ite (or c!923846 c!923849) (Context!8711 (t!374419 (exprs!4855 lt!2171153))) (Context!8711 call!379337)) (h!67538 s!2326)))))

(declare-fun bm!379331 () Bool)

(assert (=> bm!379331 (= call!379338 ($colon$colon!1390 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 lt!2171153)))) (ite (or c!923849 c!923850) (regTwo!30454 (h!67536 (exprs!4855 lt!2171153))) (h!67536 (exprs!4855 lt!2171153)))))))

(declare-fun b!5316805 () Bool)

(declare-fun e!3303469 () (InoxSet Context!8710))

(declare-fun e!3303467 () (InoxSet Context!8710))

(assert (=> b!5316805 (= e!3303469 e!3303467)))

(assert (=> b!5316805 (= c!923846 ((_ is Union!14971) (h!67536 (exprs!4855 lt!2171153))))))

(declare-fun b!5316806 () Bool)

(declare-fun c!923847 () Bool)

(assert (=> b!5316806 (= c!923847 ((_ is Star!14971) (h!67536 (exprs!4855 lt!2171153))))))

(assert (=> b!5316806 (= e!3303471 e!3303468)))

(declare-fun b!5316808 () Bool)

(declare-fun e!3303470 () (InoxSet Context!8710))

(declare-fun call!379339 () (InoxSet Context!8710))

(assert (=> b!5316808 (= e!3303470 ((_ map or) call!379335 call!379339))))

(declare-fun b!5316809 () Bool)

(declare-fun e!3303466 () Bool)

(assert (=> b!5316809 (= c!923849 e!3303466)))

(declare-fun res!2255405 () Bool)

(assert (=> b!5316809 (=> (not res!2255405) (not e!3303466))))

(assert (=> b!5316809 (= res!2255405 ((_ is Concat!23816) (h!67536 (exprs!4855 lt!2171153))))))

(assert (=> b!5316809 (= e!3303467 e!3303470)))

(declare-fun bm!379332 () Bool)

(assert (=> bm!379332 (= call!379339 call!379334)))

(declare-fun b!5316810 () Bool)

(assert (=> b!5316810 (= e!3303466 (nullable!5140 (regOne!30454 (h!67536 (exprs!4855 lt!2171153)))))))

(declare-fun b!5316811 () Bool)

(assert (=> b!5316811 (= e!3303468 ((as const (Array Context!8710 Bool)) false))))

(declare-fun bm!379333 () Bool)

(assert (=> bm!379333 (= call!379336 call!379339)))

(declare-fun b!5316812 () Bool)

(assert (=> b!5316812 (= e!3303469 (store ((as const (Array Context!8710 Bool)) false) (Context!8711 (t!374419 (exprs!4855 lt!2171153))) true))))

(declare-fun b!5316813 () Bool)

(assert (=> b!5316813 (= e!3303470 e!3303471)))

(assert (=> b!5316813 (= c!923850 ((_ is Concat!23816) (h!67536 (exprs!4855 lt!2171153))))))

(declare-fun bm!379334 () Bool)

(assert (=> bm!379334 (= call!379337 call!379338)))

(declare-fun d!1708069 () Bool)

(declare-fun c!923848 () Bool)

(assert (=> d!1708069 (= c!923848 (and ((_ is ElementMatch!14971) (h!67536 (exprs!4855 lt!2171153))) (= (c!923507 (h!67536 (exprs!4855 lt!2171153))) (h!67538 s!2326))))))

(assert (=> d!1708069 (= (derivationStepZipperDown!419 (h!67536 (exprs!4855 lt!2171153)) (Context!8711 (t!374419 (exprs!4855 lt!2171153))) (h!67538 s!2326)) e!3303469)))

(declare-fun b!5316807 () Bool)

(assert (=> b!5316807 (= e!3303467 ((_ map or) call!379335 call!379334))))

(assert (= (and d!1708069 c!923848) b!5316812))

(assert (= (and d!1708069 (not c!923848)) b!5316805))

(assert (= (and b!5316805 c!923846) b!5316807))

(assert (= (and b!5316805 (not c!923846)) b!5316809))

(assert (= (and b!5316809 res!2255405) b!5316810))

(assert (= (and b!5316809 c!923849) b!5316808))

(assert (= (and b!5316809 (not c!923849)) b!5316813))

(assert (= (and b!5316813 c!923850) b!5316803))

(assert (= (and b!5316813 (not c!923850)) b!5316806))

(assert (= (and b!5316806 c!923847) b!5316804))

(assert (= (and b!5316806 (not c!923847)) b!5316811))

(assert (= (or b!5316803 b!5316804) bm!379334))

(assert (= (or b!5316803 b!5316804) bm!379333))

(assert (= (or b!5316808 bm!379334) bm!379331))

(assert (= (or b!5316808 bm!379333) bm!379332))

(assert (= (or b!5316807 bm!379332) bm!379330))

(assert (= (or b!5316807 b!5316808) bm!379329))

(declare-fun m!6352820 () Bool)

(assert (=> b!5316812 m!6352820))

(declare-fun m!6352822 () Bool)

(assert (=> bm!379330 m!6352822))

(declare-fun m!6352824 () Bool)

(assert (=> b!5316810 m!6352824))

(declare-fun m!6352826 () Bool)

(assert (=> bm!379331 m!6352826))

(declare-fun m!6352828 () Bool)

(assert (=> bm!379329 m!6352828))

(assert (=> bm!379192 d!1708069))

(declare-fun b!5316814 () Bool)

(declare-fun e!3303477 () (InoxSet Context!8710))

(declare-fun call!379342 () (InoxSet Context!8710))

(assert (=> b!5316814 (= e!3303477 call!379342)))

(declare-fun call!379344 () List!61212)

(declare-fun bm!379335 () Bool)

(declare-fun call!379341 () (InoxSet Context!8710))

(declare-fun c!923851 () Bool)

(assert (=> bm!379335 (= call!379341 (derivationStepZipperDown!419 (ite c!923851 (regOne!30455 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (regOne!30454 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))))) (ite c!923851 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (Context!8711 call!379344)) (h!67538 s!2326)))))

(declare-fun b!5316815 () Bool)

(declare-fun e!3303474 () (InoxSet Context!8710))

(assert (=> b!5316815 (= e!3303474 call!379342)))

(declare-fun bm!379336 () Bool)

(declare-fun call!379340 () (InoxSet Context!8710))

(declare-fun call!379343 () List!61212)

(declare-fun c!923855 () Bool)

(declare-fun c!923854 () Bool)

(assert (=> bm!379336 (= call!379340 (derivationStepZipperDown!419 (ite c!923851 (regTwo!30455 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (ite c!923854 (regTwo!30454 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (ite c!923855 (regOne!30454 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (reg!15300 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))))))) (ite (or c!923851 c!923854) (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (Context!8711 call!379343)) (h!67538 s!2326)))))

(declare-fun bm!379337 () Bool)

(assert (=> bm!379337 (= call!379344 ($colon$colon!1390 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))))) (ite (or c!923854 c!923855) (regTwo!30454 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))))))))

(declare-fun b!5316816 () Bool)

(declare-fun e!3303475 () (InoxSet Context!8710))

(declare-fun e!3303473 () (InoxSet Context!8710))

(assert (=> b!5316816 (= e!3303475 e!3303473)))

(assert (=> b!5316816 (= c!923851 ((_ is Union!14971) (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))))))

(declare-fun b!5316817 () Bool)

(declare-fun c!923852 () Bool)

(assert (=> b!5316817 (= c!923852 ((_ is Star!14971) (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))))))

(assert (=> b!5316817 (= e!3303477 e!3303474)))

(declare-fun b!5316819 () Bool)

(declare-fun e!3303476 () (InoxSet Context!8710))

(declare-fun call!379345 () (InoxSet Context!8710))

(assert (=> b!5316819 (= e!3303476 ((_ map or) call!379341 call!379345))))

(declare-fun b!5316820 () Bool)

(declare-fun e!3303472 () Bool)

(assert (=> b!5316820 (= c!923854 e!3303472)))

(declare-fun res!2255406 () Bool)

(assert (=> b!5316820 (=> (not res!2255406) (not e!3303472))))

(assert (=> b!5316820 (= res!2255406 ((_ is Concat!23816) (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))))))

(assert (=> b!5316820 (= e!3303473 e!3303476)))

(declare-fun bm!379338 () Bool)

(assert (=> bm!379338 (= call!379345 call!379340)))

(declare-fun b!5316821 () Bool)

(assert (=> b!5316821 (= e!3303472 (nullable!5140 (regOne!30454 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))))))))

(declare-fun b!5316822 () Bool)

(assert (=> b!5316822 (= e!3303474 ((as const (Array Context!8710 Bool)) false))))

(declare-fun bm!379339 () Bool)

(assert (=> bm!379339 (= call!379342 call!379345)))

(declare-fun b!5316823 () Bool)

(assert (=> b!5316823 (= e!3303475 (store ((as const (Array Context!8710 Bool)) false) (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) true))))

(declare-fun b!5316824 () Bool)

(assert (=> b!5316824 (= e!3303476 e!3303477)))

(assert (=> b!5316824 (= c!923855 ((_ is Concat!23816) (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))))))

(declare-fun bm!379340 () Bool)

(assert (=> bm!379340 (= call!379343 call!379344)))

(declare-fun d!1708071 () Bool)

(declare-fun c!923853 () Bool)

(assert (=> d!1708071 (= c!923853 (and ((_ is ElementMatch!14971) (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (= (c!923507 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (h!67538 s!2326))))))

(assert (=> d!1708071 (= (derivationStepZipperDown!419 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))) (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (h!67538 s!2326)) e!3303475)))

(declare-fun b!5316818 () Bool)

(assert (=> b!5316818 (= e!3303473 ((_ map or) call!379341 call!379340))))

(assert (= (and d!1708071 c!923853) b!5316823))

(assert (= (and d!1708071 (not c!923853)) b!5316816))

(assert (= (and b!5316816 c!923851) b!5316818))

(assert (= (and b!5316816 (not c!923851)) b!5316820))

(assert (= (and b!5316820 res!2255406) b!5316821))

(assert (= (and b!5316820 c!923854) b!5316819))

(assert (= (and b!5316820 (not c!923854)) b!5316824))

(assert (= (and b!5316824 c!923855) b!5316814))

(assert (= (and b!5316824 (not c!923855)) b!5316817))

(assert (= (and b!5316817 c!923852) b!5316815))

(assert (= (and b!5316817 (not c!923852)) b!5316822))

(assert (= (or b!5316814 b!5316815) bm!379340))

(assert (= (or b!5316814 b!5316815) bm!379339))

(assert (= (or b!5316819 bm!379340) bm!379337))

(assert (= (or b!5316819 bm!379339) bm!379338))

(assert (= (or b!5316818 bm!379338) bm!379336))

(assert (= (or b!5316818 b!5316819) bm!379335))

(declare-fun m!6352830 () Bool)

(assert (=> b!5316823 m!6352830))

(declare-fun m!6352832 () Bool)

(assert (=> bm!379336 m!6352832))

(declare-fun m!6352834 () Bool)

(assert (=> b!5316821 m!6352834))

(declare-fun m!6352836 () Bool)

(assert (=> bm!379337 m!6352836))

(declare-fun m!6352838 () Bool)

(assert (=> bm!379335 m!6352838))

(assert (=> bm!379182 d!1708071))

(declare-fun d!1708073 () Bool)

(declare-fun res!2255407 () Bool)

(declare-fun e!3303478 () Bool)

(assert (=> d!1708073 (=> res!2255407 e!3303478)))

(assert (=> d!1708073 (= res!2255407 ((_ is Nil!61088) (exprs!4855 setElem!34195)))))

(assert (=> d!1708073 (= (forall!14391 (exprs!4855 setElem!34195) lambda!271016) e!3303478)))

(declare-fun b!5316825 () Bool)

(declare-fun e!3303479 () Bool)

(assert (=> b!5316825 (= e!3303478 e!3303479)))

(declare-fun res!2255408 () Bool)

(assert (=> b!5316825 (=> (not res!2255408) (not e!3303479))))

(assert (=> b!5316825 (= res!2255408 (dynLambda!24147 lambda!271016 (h!67536 (exprs!4855 setElem!34195))))))

(declare-fun b!5316826 () Bool)

(assert (=> b!5316826 (= e!3303479 (forall!14391 (t!374419 (exprs!4855 setElem!34195)) lambda!271016))))

(assert (= (and d!1708073 (not res!2255407)) b!5316825))

(assert (= (and b!5316825 res!2255408) b!5316826))

(declare-fun b_lambda!204545 () Bool)

(assert (=> (not b_lambda!204545) (not b!5316825)))

(declare-fun m!6352840 () Bool)

(assert (=> b!5316825 m!6352840))

(declare-fun m!6352842 () Bool)

(assert (=> b!5316826 m!6352842))

(assert (=> d!1707767 d!1708073))

(declare-fun b!5316827 () Bool)

(declare-fun e!3303486 () Bool)

(declare-fun lt!2171262 () Bool)

(assert (=> b!5316827 (= e!3303486 (not lt!2171262))))

(declare-fun b!5316828 () Bool)

(declare-fun res!2255414 () Bool)

(declare-fun e!3303482 () Bool)

(assert (=> b!5316828 (=> res!2255414 e!3303482)))

(declare-fun e!3303485 () Bool)

(assert (=> b!5316828 (= res!2255414 e!3303485)))

(declare-fun res!2255411 () Bool)

(assert (=> b!5316828 (=> (not res!2255411) (not e!3303485))))

(assert (=> b!5316828 (= res!2255411 lt!2171262)))

(declare-fun b!5316829 () Bool)

(declare-fun e!3303484 () Bool)

(assert (=> b!5316829 (= e!3303482 e!3303484)))

(declare-fun res!2255416 () Bool)

(assert (=> b!5316829 (=> (not res!2255416) (not e!3303484))))

(assert (=> b!5316829 (= res!2255416 (not lt!2171262))))

(declare-fun b!5316830 () Bool)

(declare-fun e!3303481 () Bool)

(assert (=> b!5316830 (= e!3303481 (nullable!5140 (regTwo!30454 r!7292)))))

(declare-fun b!5316831 () Bool)

(assert (=> b!5316831 (= e!3303481 (matchR!7156 (derivativeStep!4161 (regTwo!30454 r!7292) (head!11398 (_2!35473 (get!21011 lt!2171212)))) (tail!10495 (_2!35473 (get!21011 lt!2171212)))))))

(declare-fun b!5316832 () Bool)

(declare-fun res!2255412 () Bool)

(declare-fun e!3303480 () Bool)

(assert (=> b!5316832 (=> res!2255412 e!3303480)))

(assert (=> b!5316832 (= res!2255412 (not (isEmpty!33059 (tail!10495 (_2!35473 (get!21011 lt!2171212))))))))

(declare-fun d!1708075 () Bool)

(declare-fun e!3303483 () Bool)

(assert (=> d!1708075 e!3303483))

(declare-fun c!923857 () Bool)

(assert (=> d!1708075 (= c!923857 ((_ is EmptyExpr!14971) (regTwo!30454 r!7292)))))

(assert (=> d!1708075 (= lt!2171262 e!3303481)))

(declare-fun c!923856 () Bool)

(assert (=> d!1708075 (= c!923856 (isEmpty!33059 (_2!35473 (get!21011 lt!2171212))))))

(assert (=> d!1708075 (validRegex!6707 (regTwo!30454 r!7292))))

(assert (=> d!1708075 (= (matchR!7156 (regTwo!30454 r!7292) (_2!35473 (get!21011 lt!2171212))) lt!2171262)))

(declare-fun b!5316833 () Bool)

(declare-fun res!2255410 () Bool)

(assert (=> b!5316833 (=> res!2255410 e!3303482)))

(assert (=> b!5316833 (= res!2255410 (not ((_ is ElementMatch!14971) (regTwo!30454 r!7292))))))

(assert (=> b!5316833 (= e!3303486 e!3303482)))

(declare-fun b!5316834 () Bool)

(assert (=> b!5316834 (= e!3303480 (not (= (head!11398 (_2!35473 (get!21011 lt!2171212))) (c!923507 (regTwo!30454 r!7292)))))))

(declare-fun b!5316835 () Bool)

(assert (=> b!5316835 (= e!3303483 e!3303486)))

(declare-fun c!923858 () Bool)

(assert (=> b!5316835 (= c!923858 ((_ is EmptyLang!14971) (regTwo!30454 r!7292)))))

(declare-fun b!5316836 () Bool)

(assert (=> b!5316836 (= e!3303485 (= (head!11398 (_2!35473 (get!21011 lt!2171212))) (c!923507 (regTwo!30454 r!7292))))))

(declare-fun b!5316837 () Bool)

(declare-fun call!379346 () Bool)

(assert (=> b!5316837 (= e!3303483 (= lt!2171262 call!379346))))

(declare-fun b!5316838 () Bool)

(declare-fun res!2255413 () Bool)

(assert (=> b!5316838 (=> (not res!2255413) (not e!3303485))))

(assert (=> b!5316838 (= res!2255413 (isEmpty!33059 (tail!10495 (_2!35473 (get!21011 lt!2171212)))))))

(declare-fun b!5316839 () Bool)

(assert (=> b!5316839 (= e!3303484 e!3303480)))

(declare-fun res!2255409 () Bool)

(assert (=> b!5316839 (=> res!2255409 e!3303480)))

(assert (=> b!5316839 (= res!2255409 call!379346)))

(declare-fun b!5316840 () Bool)

(declare-fun res!2255415 () Bool)

(assert (=> b!5316840 (=> (not res!2255415) (not e!3303485))))

(assert (=> b!5316840 (= res!2255415 (not call!379346))))

(declare-fun bm!379341 () Bool)

(assert (=> bm!379341 (= call!379346 (isEmpty!33059 (_2!35473 (get!21011 lt!2171212))))))

(assert (= (and d!1708075 c!923856) b!5316830))

(assert (= (and d!1708075 (not c!923856)) b!5316831))

(assert (= (and d!1708075 c!923857) b!5316837))

(assert (= (and d!1708075 (not c!923857)) b!5316835))

(assert (= (and b!5316835 c!923858) b!5316827))

(assert (= (and b!5316835 (not c!923858)) b!5316833))

(assert (= (and b!5316833 (not res!2255410)) b!5316828))

(assert (= (and b!5316828 res!2255411) b!5316840))

(assert (= (and b!5316840 res!2255415) b!5316838))

(assert (= (and b!5316838 res!2255413) b!5316836))

(assert (= (and b!5316828 (not res!2255414)) b!5316829))

(assert (= (and b!5316829 res!2255416) b!5316839))

(assert (= (and b!5316839 (not res!2255409)) b!5316832))

(assert (= (and b!5316832 (not res!2255412)) b!5316834))

(assert (= (or b!5316837 b!5316840 b!5316839) bm!379341))

(declare-fun m!6352844 () Bool)

(assert (=> bm!379341 m!6352844))

(assert (=> d!1708075 m!6352844))

(declare-fun m!6352846 () Bool)

(assert (=> d!1708075 m!6352846))

(declare-fun m!6352848 () Bool)

(assert (=> b!5316831 m!6352848))

(assert (=> b!5316831 m!6352848))

(declare-fun m!6352850 () Bool)

(assert (=> b!5316831 m!6352850))

(declare-fun m!6352852 () Bool)

(assert (=> b!5316831 m!6352852))

(assert (=> b!5316831 m!6352850))

(assert (=> b!5316831 m!6352852))

(declare-fun m!6352854 () Bool)

(assert (=> b!5316831 m!6352854))

(declare-fun m!6352856 () Bool)

(assert (=> b!5316830 m!6352856))

(assert (=> b!5316832 m!6352852))

(assert (=> b!5316832 m!6352852))

(declare-fun m!6352858 () Bool)

(assert (=> b!5316832 m!6352858))

(assert (=> b!5316836 m!6352848))

(assert (=> b!5316838 m!6352852))

(assert (=> b!5316838 m!6352852))

(assert (=> b!5316838 m!6352858))

(assert (=> b!5316834 m!6352848))

(assert (=> b!5316058 d!1708075))

(declare-fun d!1708077 () Bool)

(assert (=> d!1708077 (= (get!21011 lt!2171212) (v!51110 lt!2171212))))

(assert (=> b!5316058 d!1708077))

(declare-fun d!1708079 () Bool)

(assert (=> d!1708079 (= (isConcat!398 lt!2171238) ((_ is Concat!23816) lt!2171238))))

(assert (=> b!5316155 d!1708079))

(declare-fun d!1708081 () Bool)

(assert (=> d!1708081 (= (isDefined!11785 lt!2171212) (not (isEmpty!33060 lt!2171212)))))

(declare-fun bs!1232457 () Bool)

(assert (= bs!1232457 d!1708081))

(declare-fun m!6352860 () Bool)

(assert (=> bs!1232457 m!6352860))

(assert (=> d!1707771 d!1708081))

(declare-fun b!5316841 () Bool)

(declare-fun e!3303493 () Bool)

(declare-fun lt!2171263 () Bool)

(assert (=> b!5316841 (= e!3303493 (not lt!2171263))))

(declare-fun b!5316842 () Bool)

(declare-fun res!2255422 () Bool)

(declare-fun e!3303489 () Bool)

(assert (=> b!5316842 (=> res!2255422 e!3303489)))

(declare-fun e!3303492 () Bool)

(assert (=> b!5316842 (= res!2255422 e!3303492)))

(declare-fun res!2255419 () Bool)

(assert (=> b!5316842 (=> (not res!2255419) (not e!3303492))))

(assert (=> b!5316842 (= res!2255419 lt!2171263)))

(declare-fun b!5316843 () Bool)

(declare-fun e!3303491 () Bool)

(assert (=> b!5316843 (= e!3303489 e!3303491)))

(declare-fun res!2255424 () Bool)

(assert (=> b!5316843 (=> (not res!2255424) (not e!3303491))))

(assert (=> b!5316843 (= res!2255424 (not lt!2171263))))

(declare-fun b!5316844 () Bool)

(declare-fun e!3303488 () Bool)

(assert (=> b!5316844 (= e!3303488 (nullable!5140 (regOne!30454 r!7292)))))

(declare-fun b!5316845 () Bool)

(assert (=> b!5316845 (= e!3303488 (matchR!7156 (derivativeStep!4161 (regOne!30454 r!7292) (head!11398 Nil!61090)) (tail!10495 Nil!61090)))))

(declare-fun b!5316846 () Bool)

(declare-fun res!2255420 () Bool)

(declare-fun e!3303487 () Bool)

(assert (=> b!5316846 (=> res!2255420 e!3303487)))

(assert (=> b!5316846 (= res!2255420 (not (isEmpty!33059 (tail!10495 Nil!61090))))))

(declare-fun d!1708083 () Bool)

(declare-fun e!3303490 () Bool)

(assert (=> d!1708083 e!3303490))

(declare-fun c!923860 () Bool)

(assert (=> d!1708083 (= c!923860 ((_ is EmptyExpr!14971) (regOne!30454 r!7292)))))

(assert (=> d!1708083 (= lt!2171263 e!3303488)))

(declare-fun c!923859 () Bool)

(assert (=> d!1708083 (= c!923859 (isEmpty!33059 Nil!61090))))

(assert (=> d!1708083 (validRegex!6707 (regOne!30454 r!7292))))

(assert (=> d!1708083 (= (matchR!7156 (regOne!30454 r!7292) Nil!61090) lt!2171263)))

(declare-fun b!5316847 () Bool)

(declare-fun res!2255418 () Bool)

(assert (=> b!5316847 (=> res!2255418 e!3303489)))

(assert (=> b!5316847 (= res!2255418 (not ((_ is ElementMatch!14971) (regOne!30454 r!7292))))))

(assert (=> b!5316847 (= e!3303493 e!3303489)))

(declare-fun b!5316848 () Bool)

(assert (=> b!5316848 (= e!3303487 (not (= (head!11398 Nil!61090) (c!923507 (regOne!30454 r!7292)))))))

(declare-fun b!5316849 () Bool)

(assert (=> b!5316849 (= e!3303490 e!3303493)))

(declare-fun c!923861 () Bool)

(assert (=> b!5316849 (= c!923861 ((_ is EmptyLang!14971) (regOne!30454 r!7292)))))

(declare-fun b!5316850 () Bool)

(assert (=> b!5316850 (= e!3303492 (= (head!11398 Nil!61090) (c!923507 (regOne!30454 r!7292))))))

(declare-fun b!5316851 () Bool)

(declare-fun call!379347 () Bool)

(assert (=> b!5316851 (= e!3303490 (= lt!2171263 call!379347))))

(declare-fun b!5316852 () Bool)

(declare-fun res!2255421 () Bool)

(assert (=> b!5316852 (=> (not res!2255421) (not e!3303492))))

(assert (=> b!5316852 (= res!2255421 (isEmpty!33059 (tail!10495 Nil!61090)))))

(declare-fun b!5316853 () Bool)

(assert (=> b!5316853 (= e!3303491 e!3303487)))

(declare-fun res!2255417 () Bool)

(assert (=> b!5316853 (=> res!2255417 e!3303487)))

(assert (=> b!5316853 (= res!2255417 call!379347)))

(declare-fun b!5316854 () Bool)

(declare-fun res!2255423 () Bool)

(assert (=> b!5316854 (=> (not res!2255423) (not e!3303492))))

(assert (=> b!5316854 (= res!2255423 (not call!379347))))

(declare-fun bm!379342 () Bool)

(assert (=> bm!379342 (= call!379347 (isEmpty!33059 Nil!61090))))

(assert (= (and d!1708083 c!923859) b!5316844))

(assert (= (and d!1708083 (not c!923859)) b!5316845))

(assert (= (and d!1708083 c!923860) b!5316851))

(assert (= (and d!1708083 (not c!923860)) b!5316849))

(assert (= (and b!5316849 c!923861) b!5316841))

(assert (= (and b!5316849 (not c!923861)) b!5316847))

(assert (= (and b!5316847 (not res!2255418)) b!5316842))

(assert (= (and b!5316842 res!2255419) b!5316854))

(assert (= (and b!5316854 res!2255423) b!5316852))

(assert (= (and b!5316852 res!2255421) b!5316850))

(assert (= (and b!5316842 (not res!2255422)) b!5316843))

(assert (= (and b!5316843 res!2255424) b!5316853))

(assert (= (and b!5316853 (not res!2255417)) b!5316846))

(assert (= (and b!5316846 (not res!2255420)) b!5316848))

(assert (= (or b!5316851 b!5316854 b!5316853) bm!379342))

(declare-fun m!6352862 () Bool)

(assert (=> bm!379342 m!6352862))

(assert (=> d!1708083 m!6352862))

(assert (=> d!1708083 m!6352202))

(declare-fun m!6352864 () Bool)

(assert (=> b!5316845 m!6352864))

(assert (=> b!5316845 m!6352864))

(declare-fun m!6352866 () Bool)

(assert (=> b!5316845 m!6352866))

(declare-fun m!6352868 () Bool)

(assert (=> b!5316845 m!6352868))

(assert (=> b!5316845 m!6352866))

(assert (=> b!5316845 m!6352868))

(declare-fun m!6352870 () Bool)

(assert (=> b!5316845 m!6352870))

(declare-fun m!6352872 () Bool)

(assert (=> b!5316844 m!6352872))

(assert (=> b!5316846 m!6352868))

(assert (=> b!5316846 m!6352868))

(declare-fun m!6352874 () Bool)

(assert (=> b!5316846 m!6352874))

(assert (=> b!5316850 m!6352864))

(assert (=> b!5316852 m!6352868))

(assert (=> b!5316852 m!6352868))

(assert (=> b!5316852 m!6352874))

(assert (=> b!5316848 m!6352864))

(assert (=> d!1707771 d!1708083))

(declare-fun d!1708085 () Bool)

(declare-fun res!2255426 () Bool)

(declare-fun e!3303498 () Bool)

(assert (=> d!1708085 (=> res!2255426 e!3303498)))

(assert (=> d!1708085 (= res!2255426 ((_ is ElementMatch!14971) (regOne!30454 r!7292)))))

(assert (=> d!1708085 (= (validRegex!6707 (regOne!30454 r!7292)) e!3303498)))

(declare-fun b!5316855 () Bool)

(declare-fun e!3303497 () Bool)

(declare-fun e!3303500 () Bool)

(assert (=> b!5316855 (= e!3303497 e!3303500)))

(declare-fun res!2255428 () Bool)

(assert (=> b!5316855 (= res!2255428 (not (nullable!5140 (reg!15300 (regOne!30454 r!7292)))))))

(assert (=> b!5316855 (=> (not res!2255428) (not e!3303500))))

(declare-fun c!923863 () Bool)

(declare-fun call!379350 () Bool)

(declare-fun bm!379343 () Bool)

(declare-fun c!923862 () Bool)

(assert (=> bm!379343 (= call!379350 (validRegex!6707 (ite c!923863 (reg!15300 (regOne!30454 r!7292)) (ite c!923862 (regOne!30455 (regOne!30454 r!7292)) (regOne!30454 (regOne!30454 r!7292))))))))

(declare-fun b!5316856 () Bool)

(declare-fun e!3303495 () Bool)

(declare-fun call!379349 () Bool)

(assert (=> b!5316856 (= e!3303495 call!379349)))

(declare-fun b!5316857 () Bool)

(assert (=> b!5316857 (= e!3303500 call!379350)))

(declare-fun b!5316858 () Bool)

(declare-fun res!2255429 () Bool)

(declare-fun e!3303496 () Bool)

(assert (=> b!5316858 (=> res!2255429 e!3303496)))

(assert (=> b!5316858 (= res!2255429 (not ((_ is Concat!23816) (regOne!30454 r!7292))))))

(declare-fun e!3303494 () Bool)

(assert (=> b!5316858 (= e!3303494 e!3303496)))

(declare-fun b!5316859 () Bool)

(declare-fun res!2255425 () Bool)

(declare-fun e!3303499 () Bool)

(assert (=> b!5316859 (=> (not res!2255425) (not e!3303499))))

(declare-fun call!379348 () Bool)

(assert (=> b!5316859 (= res!2255425 call!379348)))

(assert (=> b!5316859 (= e!3303494 e!3303499)))

(declare-fun b!5316860 () Bool)

(assert (=> b!5316860 (= e!3303498 e!3303497)))

(assert (=> b!5316860 (= c!923863 ((_ is Star!14971) (regOne!30454 r!7292)))))

(declare-fun b!5316861 () Bool)

(assert (=> b!5316861 (= e!3303499 call!379349)))

(declare-fun bm!379344 () Bool)

(assert (=> bm!379344 (= call!379348 call!379350)))

(declare-fun b!5316862 () Bool)

(assert (=> b!5316862 (= e!3303496 e!3303495)))

(declare-fun res!2255427 () Bool)

(assert (=> b!5316862 (=> (not res!2255427) (not e!3303495))))

(assert (=> b!5316862 (= res!2255427 call!379348)))

(declare-fun b!5316863 () Bool)

(assert (=> b!5316863 (= e!3303497 e!3303494)))

(assert (=> b!5316863 (= c!923862 ((_ is Union!14971) (regOne!30454 r!7292)))))

(declare-fun bm!379345 () Bool)

(assert (=> bm!379345 (= call!379349 (validRegex!6707 (ite c!923862 (regTwo!30455 (regOne!30454 r!7292)) (regTwo!30454 (regOne!30454 r!7292)))))))

(assert (= (and d!1708085 (not res!2255426)) b!5316860))

(assert (= (and b!5316860 c!923863) b!5316855))

(assert (= (and b!5316860 (not c!923863)) b!5316863))

(assert (= (and b!5316855 res!2255428) b!5316857))

(assert (= (and b!5316863 c!923862) b!5316859))

(assert (= (and b!5316863 (not c!923862)) b!5316858))

(assert (= (and b!5316859 res!2255425) b!5316861))

(assert (= (and b!5316858 (not res!2255429)) b!5316862))

(assert (= (and b!5316862 res!2255427) b!5316856))

(assert (= (or b!5316861 b!5316856) bm!379345))

(assert (= (or b!5316859 b!5316862) bm!379344))

(assert (= (or b!5316857 bm!379344) bm!379343))

(declare-fun m!6352876 () Bool)

(assert (=> b!5316855 m!6352876))

(declare-fun m!6352878 () Bool)

(assert (=> bm!379343 m!6352878))

(declare-fun m!6352880 () Bool)

(assert (=> bm!379345 m!6352880))

(assert (=> d!1707771 d!1708085))

(declare-fun d!1708087 () Bool)

(assert (=> d!1708087 true))

(declare-fun setRes!34208 () Bool)

(assert (=> d!1708087 setRes!34208))

(declare-fun condSetEmpty!34208 () Bool)

(declare-fun res!2255432 () (InoxSet Context!8710))

(assert (=> d!1708087 (= condSetEmpty!34208 (= res!2255432 ((as const (Array Context!8710 Bool)) false)))))

(assert (=> d!1708087 (= (choose!39785 z!1189 lambda!270979) res!2255432)))

(declare-fun setIsEmpty!34208 () Bool)

(assert (=> setIsEmpty!34208 setRes!34208))

(declare-fun setElem!34208 () Context!8710)

(declare-fun e!3303503 () Bool)

(declare-fun setNonEmpty!34208 () Bool)

(declare-fun tp!1480706 () Bool)

(assert (=> setNonEmpty!34208 (= setRes!34208 (and tp!1480706 (inv!80674 setElem!34208) e!3303503))))

(declare-fun setRest!34208 () (InoxSet Context!8710))

(assert (=> setNonEmpty!34208 (= res!2255432 ((_ map or) (store ((as const (Array Context!8710 Bool)) false) setElem!34208 true) setRest!34208))))

(declare-fun b!5316866 () Bool)

(declare-fun tp!1480707 () Bool)

(assert (=> b!5316866 (= e!3303503 tp!1480707)))

(assert (= (and d!1708087 condSetEmpty!34208) setIsEmpty!34208))

(assert (= (and d!1708087 (not condSetEmpty!34208)) setNonEmpty!34208))

(assert (= setNonEmpty!34208 b!5316866))

(declare-fun m!6352882 () Bool)

(assert (=> setNonEmpty!34208 m!6352882))

(assert (=> d!1707735 d!1708087))

(declare-fun d!1708089 () Bool)

(assert (=> d!1708089 (= (nullable!5140 (reg!15300 (regOne!30454 (regOne!30454 r!7292)))) (nullableFct!1492 (reg!15300 (regOne!30454 (regOne!30454 r!7292)))))))

(declare-fun bs!1232458 () Bool)

(assert (= bs!1232458 d!1708089))

(declare-fun m!6352884 () Bool)

(assert (=> bs!1232458 m!6352884))

(assert (=> b!5316023 d!1708089))

(declare-fun d!1708091 () Bool)

(declare-fun res!2255433 () Bool)

(declare-fun e!3303504 () Bool)

(assert (=> d!1708091 (=> res!2255433 e!3303504)))

(assert (=> d!1708091 (= res!2255433 ((_ is Nil!61088) (exprs!4855 (h!67537 zl!343))))))

(assert (=> d!1708091 (= (forall!14391 (exprs!4855 (h!67537 zl!343)) lambda!271026) e!3303504)))

(declare-fun b!5316867 () Bool)

(declare-fun e!3303505 () Bool)

(assert (=> b!5316867 (= e!3303504 e!3303505)))

(declare-fun res!2255434 () Bool)

(assert (=> b!5316867 (=> (not res!2255434) (not e!3303505))))

(assert (=> b!5316867 (= res!2255434 (dynLambda!24147 lambda!271026 (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5316868 () Bool)

(assert (=> b!5316868 (= e!3303505 (forall!14391 (t!374419 (exprs!4855 (h!67537 zl!343))) lambda!271026))))

(assert (= (and d!1708091 (not res!2255433)) b!5316867))

(assert (= (and b!5316867 res!2255434) b!5316868))

(declare-fun b_lambda!204547 () Bool)

(assert (=> (not b_lambda!204547) (not b!5316867)))

(declare-fun m!6352886 () Bool)

(assert (=> b!5316867 m!6352886))

(declare-fun m!6352888 () Bool)

(assert (=> b!5316868 m!6352888))

(assert (=> d!1707793 d!1708091))

(declare-fun d!1708093 () Bool)

(declare-fun res!2255435 () Bool)

(declare-fun e!3303506 () Bool)

(assert (=> d!1708093 (=> res!2255435 e!3303506)))

(assert (=> d!1708093 (= res!2255435 ((_ is Nil!61088) lt!2171232))))

(assert (=> d!1708093 (= (forall!14391 lt!2171232 lambda!271032) e!3303506)))

(declare-fun b!5316869 () Bool)

(declare-fun e!3303507 () Bool)

(assert (=> b!5316869 (= e!3303506 e!3303507)))

(declare-fun res!2255436 () Bool)

(assert (=> b!5316869 (=> (not res!2255436) (not e!3303507))))

(assert (=> b!5316869 (= res!2255436 (dynLambda!24147 lambda!271032 (h!67536 lt!2171232)))))

(declare-fun b!5316870 () Bool)

(assert (=> b!5316870 (= e!3303507 (forall!14391 (t!374419 lt!2171232) lambda!271032))))

(assert (= (and d!1708093 (not res!2255435)) b!5316869))

(assert (= (and b!5316869 res!2255436) b!5316870))

(declare-fun b_lambda!204549 () Bool)

(assert (=> (not b_lambda!204549) (not b!5316869)))

(declare-fun m!6352890 () Bool)

(assert (=> b!5316869 m!6352890))

(declare-fun m!6352892 () Bool)

(assert (=> b!5316870 m!6352892))

(assert (=> d!1707797 d!1708093))

(declare-fun d!1708095 () Bool)

(assert (=> d!1708095 (= (isEmpty!33055 (t!374419 (unfocusZipperList!413 zl!343))) ((_ is Nil!61088) (t!374419 (unfocusZipperList!413 zl!343))))))

(assert (=> b!5316105 d!1708095))

(assert (=> d!1707785 d!1707789))

(assert (=> d!1707785 d!1707787))

(declare-fun e!3303510 () Bool)

(declare-fun d!1708097 () Bool)

(assert (=> d!1708097 (= (matchZipper!1215 ((_ map or) lt!2171148 lt!2171145) (t!374421 s!2326)) e!3303510)))

(declare-fun res!2255439 () Bool)

(assert (=> d!1708097 (=> res!2255439 e!3303510)))

(assert (=> d!1708097 (= res!2255439 (matchZipper!1215 lt!2171148 (t!374421 s!2326)))))

(assert (=> d!1708097 true))

(declare-fun _$48!988 () Unit!153402)

(assert (=> d!1708097 (= (choose!39791 lt!2171148 lt!2171145 (t!374421 s!2326)) _$48!988)))

(declare-fun b!5316873 () Bool)

(assert (=> b!5316873 (= e!3303510 (matchZipper!1215 lt!2171145 (t!374421 s!2326)))))

(assert (= (and d!1708097 (not res!2255439)) b!5316873))

(assert (=> d!1708097 m!6351878))

(assert (=> d!1708097 m!6351876))

(assert (=> b!5316873 m!6351830))

(assert (=> d!1707785 d!1708097))

(declare-fun bs!1232459 () Bool)

(declare-fun d!1708099 () Bool)

(assert (= bs!1232459 (and d!1708099 d!1707797)))

(declare-fun lambda!271076 () Int)

(assert (=> bs!1232459 (= lambda!271076 lambda!271032)))

(declare-fun bs!1232460 () Bool)

(assert (= bs!1232460 (and d!1708099 d!1707767)))

(assert (=> bs!1232460 (= lambda!271076 lambda!271016)))

(declare-fun bs!1232461 () Bool)

(assert (= bs!1232461 (and d!1708099 d!1707805)))

(assert (=> bs!1232461 (= lambda!271076 lambda!271035)))

(declare-fun bs!1232462 () Bool)

(assert (= bs!1232462 (and d!1708099 d!1707793)))

(assert (=> bs!1232462 (= lambda!271076 lambda!271026)))

(declare-fun bs!1232463 () Bool)

(assert (= bs!1232463 (and d!1708099 d!1707795)))

(assert (=> bs!1232463 (= lambda!271076 lambda!271029)))

(declare-fun bs!1232464 () Bool)

(assert (= bs!1232464 (and d!1708099 d!1708027)))

(assert (=> bs!1232464 (= lambda!271076 lambda!271070)))

(declare-fun bs!1232465 () Bool)

(assert (= bs!1232465 (and d!1708099 d!1708023)))

(assert (=> bs!1232465 (= lambda!271076 lambda!271069)))

(assert (=> d!1708099 (= (inv!80674 setElem!34201) (forall!14391 (exprs!4855 setElem!34201) lambda!271076))))

(declare-fun bs!1232466 () Bool)

(assert (= bs!1232466 d!1708099))

(declare-fun m!6352894 () Bool)

(assert (=> bs!1232466 m!6352894))

(assert (=> setNonEmpty!34201 d!1708099))

(assert (=> d!1707787 d!1708059))

(declare-fun b!5316888 () Bool)

(declare-fun e!3303526 () Bool)

(declare-fun call!379356 () Bool)

(assert (=> b!5316888 (= e!3303526 call!379356)))

(declare-fun bm!379350 () Bool)

(declare-fun c!923866 () Bool)

(assert (=> bm!379350 (= call!379356 (nullable!5140 (ite c!923866 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))))))

(declare-fun bm!379351 () Bool)

(declare-fun call!379355 () Bool)

(assert (=> bm!379351 (= call!379355 (nullable!5140 (ite c!923866 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))))))

(declare-fun b!5316889 () Bool)

(declare-fun e!3303524 () Bool)

(declare-fun e!3303528 () Bool)

(assert (=> b!5316889 (= e!3303524 e!3303528)))

(declare-fun res!2255452 () Bool)

(assert (=> b!5316889 (=> res!2255452 e!3303528)))

(assert (=> b!5316889 (= res!2255452 ((_ is Star!14971) (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5316890 () Bool)

(declare-fun e!3303523 () Bool)

(assert (=> b!5316890 (= e!3303523 call!379356)))

(declare-fun b!5316891 () Bool)

(declare-fun e!3303527 () Bool)

(assert (=> b!5316891 (= e!3303527 e!3303526)))

(declare-fun res!2255451 () Bool)

(assert (=> b!5316891 (= res!2255451 call!379355)))

(assert (=> b!5316891 (=> (not res!2255451) (not e!3303526))))

(declare-fun b!5316893 () Bool)

(declare-fun e!3303525 () Bool)

(assert (=> b!5316893 (= e!3303525 e!3303524)))

(declare-fun res!2255450 () Bool)

(assert (=> b!5316893 (=> (not res!2255450) (not e!3303524))))

(assert (=> b!5316893 (= res!2255450 (and (not ((_ is EmptyLang!14971) (h!67536 (exprs!4855 (h!67537 zl!343))))) (not ((_ is ElementMatch!14971) (h!67536 (exprs!4855 (h!67537 zl!343)))))))))

(declare-fun b!5316894 () Bool)

(assert (=> b!5316894 (= e!3303528 e!3303527)))

(assert (=> b!5316894 (= c!923866 ((_ is Union!14971) (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5316892 () Bool)

(assert (=> b!5316892 (= e!3303527 e!3303523)))

(declare-fun res!2255453 () Bool)

(assert (=> b!5316892 (= res!2255453 call!379355)))

(assert (=> b!5316892 (=> res!2255453 e!3303523)))

(declare-fun d!1708101 () Bool)

(declare-fun res!2255454 () Bool)

(assert (=> d!1708101 (=> res!2255454 e!3303525)))

(assert (=> d!1708101 (= res!2255454 ((_ is EmptyExpr!14971) (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(assert (=> d!1708101 (= (nullableFct!1492 (h!67536 (exprs!4855 (h!67537 zl!343)))) e!3303525)))

(assert (= (and d!1708101 (not res!2255454)) b!5316893))

(assert (= (and b!5316893 res!2255450) b!5316889))

(assert (= (and b!5316889 (not res!2255452)) b!5316894))

(assert (= (and b!5316894 c!923866) b!5316892))

(assert (= (and b!5316894 (not c!923866)) b!5316891))

(assert (= (and b!5316892 (not res!2255453)) b!5316890))

(assert (= (and b!5316891 res!2255451) b!5316888))

(assert (= (or b!5316890 b!5316888) bm!379350))

(assert (= (or b!5316892 b!5316891) bm!379351))

(declare-fun m!6352896 () Bool)

(assert (=> bm!379350 m!6352896))

(declare-fun m!6352898 () Bool)

(assert (=> bm!379351 m!6352898))

(assert (=> d!1707705 d!1708101))

(assert (=> bm!379205 d!1708021))

(declare-fun d!1708103 () Bool)

(assert (=> d!1708103 (= (nullable!5140 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343))))) (nullableFct!1492 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343))))))))

(declare-fun bs!1232467 () Bool)

(assert (= bs!1232467 d!1708103))

(declare-fun m!6352900 () Bool)

(assert (=> bs!1232467 m!6352900))

(assert (=> b!5315718 d!1708103))

(declare-fun b!5316895 () Bool)

(declare-fun e!3303532 () Bool)

(declare-fun call!379358 () Bool)

(assert (=> b!5316895 (= e!3303532 call!379358)))

(declare-fun bm!379352 () Bool)

(declare-fun c!923867 () Bool)

(assert (=> bm!379352 (= call!379358 (nullable!5140 (ite c!923867 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))))))))

(declare-fun bm!379353 () Bool)

(declare-fun call!379357 () Bool)

(assert (=> bm!379353 (= call!379357 (nullable!5140 (ite c!923867 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))))))

(declare-fun b!5316896 () Bool)

(declare-fun e!3303530 () Bool)

(declare-fun e!3303534 () Bool)

(assert (=> b!5316896 (= e!3303530 e!3303534)))

(declare-fun res!2255457 () Bool)

(assert (=> b!5316896 (=> res!2255457 e!3303534)))

(assert (=> b!5316896 (= res!2255457 ((_ is Star!14971) (regOne!30454 (regOne!30454 r!7292))))))

(declare-fun b!5316897 () Bool)

(declare-fun e!3303529 () Bool)

(assert (=> b!5316897 (= e!3303529 call!379358)))

(declare-fun b!5316898 () Bool)

(declare-fun e!3303533 () Bool)

(assert (=> b!5316898 (= e!3303533 e!3303532)))

(declare-fun res!2255456 () Bool)

(assert (=> b!5316898 (= res!2255456 call!379357)))

(assert (=> b!5316898 (=> (not res!2255456) (not e!3303532))))

(declare-fun b!5316900 () Bool)

(declare-fun e!3303531 () Bool)

(assert (=> b!5316900 (= e!3303531 e!3303530)))

(declare-fun res!2255455 () Bool)

(assert (=> b!5316900 (=> (not res!2255455) (not e!3303530))))

(assert (=> b!5316900 (= res!2255455 (and (not ((_ is EmptyLang!14971) (regOne!30454 (regOne!30454 r!7292)))) (not ((_ is ElementMatch!14971) (regOne!30454 (regOne!30454 r!7292))))))))

(declare-fun b!5316901 () Bool)

(assert (=> b!5316901 (= e!3303534 e!3303533)))

(assert (=> b!5316901 (= c!923867 ((_ is Union!14971) (regOne!30454 (regOne!30454 r!7292))))))

(declare-fun b!5316899 () Bool)

(assert (=> b!5316899 (= e!3303533 e!3303529)))

(declare-fun res!2255458 () Bool)

(assert (=> b!5316899 (= res!2255458 call!379357)))

(assert (=> b!5316899 (=> res!2255458 e!3303529)))

(declare-fun d!1708105 () Bool)

(declare-fun res!2255459 () Bool)

(assert (=> d!1708105 (=> res!2255459 e!3303531)))

(assert (=> d!1708105 (= res!2255459 ((_ is EmptyExpr!14971) (regOne!30454 (regOne!30454 r!7292))))))

(assert (=> d!1708105 (= (nullableFct!1492 (regOne!30454 (regOne!30454 r!7292))) e!3303531)))

(assert (= (and d!1708105 (not res!2255459)) b!5316900))

(assert (= (and b!5316900 res!2255455) b!5316896))

(assert (= (and b!5316896 (not res!2255457)) b!5316901))

(assert (= (and b!5316901 c!923867) b!5316899))

(assert (= (and b!5316901 (not c!923867)) b!5316898))

(assert (= (and b!5316899 (not res!2255458)) b!5316897))

(assert (= (and b!5316898 res!2255456) b!5316895))

(assert (= (or b!5316897 b!5316895) bm!379352))

(assert (= (or b!5316899 b!5316898) bm!379353))

(declare-fun m!6352902 () Bool)

(assert (=> bm!379352 m!6352902))

(declare-fun m!6352904 () Bool)

(assert (=> bm!379353 m!6352904))

(assert (=> d!1707799 d!1708105))

(declare-fun b!5316912 () Bool)

(declare-fun res!2255465 () Bool)

(declare-fun e!3303539 () Bool)

(assert (=> b!5316912 (=> (not res!2255465) (not e!3303539))))

(declare-fun lt!2171266 () List!61214)

(declare-fun size!39763 (List!61214) Int)

(assert (=> b!5316912 (= res!2255465 (= (size!39763 lt!2171266) (+ (size!39763 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090))) (size!39763 (t!374421 s!2326)))))))

(declare-fun b!5316910 () Bool)

(declare-fun e!3303540 () List!61214)

(assert (=> b!5316910 (= e!3303540 (t!374421 s!2326))))

(declare-fun d!1708107 () Bool)

(assert (=> d!1708107 e!3303539))

(declare-fun res!2255464 () Bool)

(assert (=> d!1708107 (=> (not res!2255464) (not e!3303539))))

(declare-fun content!10889 (List!61214) (InoxSet C!30212))

(assert (=> d!1708107 (= res!2255464 (= (content!10889 lt!2171266) ((_ map or) (content!10889 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090))) (content!10889 (t!374421 s!2326)))))))

(assert (=> d!1708107 (= lt!2171266 e!3303540)))

(declare-fun c!923870 () Bool)

(assert (=> d!1708107 (= c!923870 ((_ is Nil!61090) (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090))))))

(assert (=> d!1708107 (= (++!13320 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090)) (t!374421 s!2326)) lt!2171266)))

(declare-fun b!5316911 () Bool)

(assert (=> b!5316911 (= e!3303540 (Cons!61090 (h!67538 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090))) (++!13320 (t!374421 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090))) (t!374421 s!2326))))))

(declare-fun b!5316913 () Bool)

(assert (=> b!5316913 (= e!3303539 (or (not (= (t!374421 s!2326) Nil!61090)) (= lt!2171266 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090)))))))

(assert (= (and d!1708107 c!923870) b!5316910))

(assert (= (and d!1708107 (not c!923870)) b!5316911))

(assert (= (and d!1708107 res!2255464) b!5316912))

(assert (= (and b!5316912 res!2255465) b!5316913))

(declare-fun m!6352906 () Bool)

(assert (=> b!5316912 m!6352906))

(assert (=> b!5316912 m!6352204))

(declare-fun m!6352908 () Bool)

(assert (=> b!5316912 m!6352908))

(declare-fun m!6352910 () Bool)

(assert (=> b!5316912 m!6352910))

(declare-fun m!6352912 () Bool)

(assert (=> d!1708107 m!6352912))

(assert (=> d!1708107 m!6352204))

(declare-fun m!6352914 () Bool)

(assert (=> d!1708107 m!6352914))

(declare-fun m!6352916 () Bool)

(assert (=> d!1708107 m!6352916))

(declare-fun m!6352918 () Bool)

(assert (=> b!5316911 m!6352918))

(assert (=> b!5316056 d!1708107))

(declare-fun b!5316916 () Bool)

(declare-fun res!2255467 () Bool)

(declare-fun e!3303541 () Bool)

(assert (=> b!5316916 (=> (not res!2255467) (not e!3303541))))

(declare-fun lt!2171267 () List!61214)

(assert (=> b!5316916 (= res!2255467 (= (size!39763 lt!2171267) (+ (size!39763 Nil!61090) (size!39763 (Cons!61090 (h!67538 s!2326) Nil!61090)))))))

(declare-fun b!5316914 () Bool)

(declare-fun e!3303542 () List!61214)

(assert (=> b!5316914 (= e!3303542 (Cons!61090 (h!67538 s!2326) Nil!61090))))

(declare-fun d!1708109 () Bool)

(assert (=> d!1708109 e!3303541))

(declare-fun res!2255466 () Bool)

(assert (=> d!1708109 (=> (not res!2255466) (not e!3303541))))

(assert (=> d!1708109 (= res!2255466 (= (content!10889 lt!2171267) ((_ map or) (content!10889 Nil!61090) (content!10889 (Cons!61090 (h!67538 s!2326) Nil!61090)))))))

(assert (=> d!1708109 (= lt!2171267 e!3303542)))

(declare-fun c!923871 () Bool)

(assert (=> d!1708109 (= c!923871 ((_ is Nil!61090) Nil!61090))))

(assert (=> d!1708109 (= (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090)) lt!2171267)))

(declare-fun b!5316915 () Bool)

(assert (=> b!5316915 (= e!3303542 (Cons!61090 (h!67538 Nil!61090) (++!13320 (t!374421 Nil!61090) (Cons!61090 (h!67538 s!2326) Nil!61090))))))

(declare-fun b!5316917 () Bool)

(assert (=> b!5316917 (= e!3303541 (or (not (= (Cons!61090 (h!67538 s!2326) Nil!61090) Nil!61090)) (= lt!2171267 Nil!61090)))))

(assert (= (and d!1708109 c!923871) b!5316914))

(assert (= (and d!1708109 (not c!923871)) b!5316915))

(assert (= (and d!1708109 res!2255466) b!5316916))

(assert (= (and b!5316916 res!2255467) b!5316917))

(declare-fun m!6352920 () Bool)

(assert (=> b!5316916 m!6352920))

(declare-fun m!6352922 () Bool)

(assert (=> b!5316916 m!6352922))

(declare-fun m!6352924 () Bool)

(assert (=> b!5316916 m!6352924))

(declare-fun m!6352926 () Bool)

(assert (=> d!1708109 m!6352926))

(declare-fun m!6352928 () Bool)

(assert (=> d!1708109 m!6352928))

(declare-fun m!6352930 () Bool)

(assert (=> d!1708109 m!6352930))

(declare-fun m!6352932 () Bool)

(assert (=> b!5316915 m!6352932))

(assert (=> b!5316056 d!1708109))

(declare-fun d!1708111 () Bool)

(assert (=> d!1708111 (= (++!13320 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090)) (t!374421 s!2326)) s!2326)))

(declare-fun lt!2171270 () Unit!153402)

(declare-fun choose!39793 (List!61214 C!30212 List!61214 List!61214) Unit!153402)

(assert (=> d!1708111 (= lt!2171270 (choose!39793 Nil!61090 (h!67538 s!2326) (t!374421 s!2326) s!2326))))

(assert (=> d!1708111 (= (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) (t!374421 s!2326))) s!2326)))

(assert (=> d!1708111 (= (lemmaMoveElementToOtherListKeepsConcatEq!1735 Nil!61090 (h!67538 s!2326) (t!374421 s!2326) s!2326) lt!2171270)))

(declare-fun bs!1232468 () Bool)

(assert (= bs!1232468 d!1708111))

(assert (=> bs!1232468 m!6352204))

(assert (=> bs!1232468 m!6352204))

(assert (=> bs!1232468 m!6352206))

(declare-fun m!6352934 () Bool)

(assert (=> bs!1232468 m!6352934))

(declare-fun m!6352936 () Bool)

(assert (=> bs!1232468 m!6352936))

(assert (=> b!5316056 d!1708111))

(declare-fun d!1708113 () Bool)

(declare-fun e!3303543 () Bool)

(assert (=> d!1708113 e!3303543))

(declare-fun res!2255469 () Bool)

(assert (=> d!1708113 (=> res!2255469 e!3303543)))

(declare-fun e!3303547 () Bool)

(assert (=> d!1708113 (= res!2255469 e!3303547)))

(declare-fun res!2255472 () Bool)

(assert (=> d!1708113 (=> (not res!2255472) (not e!3303547))))

(declare-fun lt!2171271 () Option!15082)

(assert (=> d!1708113 (= res!2255472 (isDefined!11785 lt!2171271))))

(declare-fun e!3303545 () Option!15082)

(assert (=> d!1708113 (= lt!2171271 e!3303545)))

(declare-fun c!923872 () Bool)

(declare-fun e!3303546 () Bool)

(assert (=> d!1708113 (= c!923872 e!3303546)))

(declare-fun res!2255471 () Bool)

(assert (=> d!1708113 (=> (not res!2255471) (not e!3303546))))

(assert (=> d!1708113 (= res!2255471 (matchR!7156 (regOne!30454 r!7292) (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090))))))

(assert (=> d!1708113 (validRegex!6707 (regOne!30454 r!7292))))

(assert (=> d!1708113 (= (findConcatSeparation!1496 (regOne!30454 r!7292) (regTwo!30454 r!7292) (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090)) (t!374421 s!2326) s!2326) lt!2171271)))

(declare-fun b!5316918 () Bool)

(assert (=> b!5316918 (= e!3303543 (not (isDefined!11785 lt!2171271)))))

(declare-fun b!5316919 () Bool)

(assert (=> b!5316919 (= e!3303545 (Some!15081 (tuple2!64341 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090)) (t!374421 s!2326))))))

(declare-fun b!5316920 () Bool)

(assert (=> b!5316920 (= e!3303546 (matchR!7156 (regTwo!30454 r!7292) (t!374421 s!2326)))))

(declare-fun b!5316921 () Bool)

(assert (=> b!5316921 (= e!3303547 (= (++!13320 (_1!35473 (get!21011 lt!2171271)) (_2!35473 (get!21011 lt!2171271))) s!2326))))

(declare-fun b!5316922 () Bool)

(declare-fun e!3303544 () Option!15082)

(assert (=> b!5316922 (= e!3303544 None!15081)))

(declare-fun b!5316923 () Bool)

(declare-fun res!2255470 () Bool)

(assert (=> b!5316923 (=> (not res!2255470) (not e!3303547))))

(assert (=> b!5316923 (= res!2255470 (matchR!7156 (regOne!30454 r!7292) (_1!35473 (get!21011 lt!2171271))))))

(declare-fun b!5316924 () Bool)

(declare-fun lt!2171272 () Unit!153402)

(declare-fun lt!2171273 () Unit!153402)

(assert (=> b!5316924 (= lt!2171272 lt!2171273)))

(assert (=> b!5316924 (= (++!13320 (++!13320 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090)) (Cons!61090 (h!67538 (t!374421 s!2326)) Nil!61090)) (t!374421 (t!374421 s!2326))) s!2326)))

(assert (=> b!5316924 (= lt!2171273 (lemmaMoveElementToOtherListKeepsConcatEq!1735 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090)) (h!67538 (t!374421 s!2326)) (t!374421 (t!374421 s!2326)) s!2326))))

(assert (=> b!5316924 (= e!3303544 (findConcatSeparation!1496 (regOne!30454 r!7292) (regTwo!30454 r!7292) (++!13320 (++!13320 Nil!61090 (Cons!61090 (h!67538 s!2326) Nil!61090)) (Cons!61090 (h!67538 (t!374421 s!2326)) Nil!61090)) (t!374421 (t!374421 s!2326)) s!2326))))

(declare-fun b!5316925 () Bool)

(assert (=> b!5316925 (= e!3303545 e!3303544)))

(declare-fun c!923873 () Bool)

(assert (=> b!5316925 (= c!923873 ((_ is Nil!61090) (t!374421 s!2326)))))

(declare-fun b!5316926 () Bool)

(declare-fun res!2255468 () Bool)

(assert (=> b!5316926 (=> (not res!2255468) (not e!3303547))))

(assert (=> b!5316926 (= res!2255468 (matchR!7156 (regTwo!30454 r!7292) (_2!35473 (get!21011 lt!2171271))))))

(assert (= (and d!1708113 res!2255471) b!5316920))

(assert (= (and d!1708113 c!923872) b!5316919))

(assert (= (and d!1708113 (not c!923872)) b!5316925))

(assert (= (and b!5316925 c!923873) b!5316922))

(assert (= (and b!5316925 (not c!923873)) b!5316924))

(assert (= (and d!1708113 res!2255472) b!5316923))

(assert (= (and b!5316923 res!2255470) b!5316926))

(assert (= (and b!5316926 res!2255468) b!5316921))

(assert (= (and d!1708113 (not res!2255469)) b!5316918))

(declare-fun m!6352938 () Bool)

(assert (=> b!5316923 m!6352938))

(declare-fun m!6352940 () Bool)

(assert (=> b!5316923 m!6352940))

(assert (=> b!5316926 m!6352938))

(declare-fun m!6352942 () Bool)

(assert (=> b!5316926 m!6352942))

(assert (=> b!5316921 m!6352938))

(declare-fun m!6352944 () Bool)

(assert (=> b!5316921 m!6352944))

(declare-fun m!6352946 () Bool)

(assert (=> d!1708113 m!6352946))

(assert (=> d!1708113 m!6352204))

(declare-fun m!6352948 () Bool)

(assert (=> d!1708113 m!6352948))

(assert (=> d!1708113 m!6352202))

(assert (=> b!5316924 m!6352204))

(declare-fun m!6352950 () Bool)

(assert (=> b!5316924 m!6352950))

(assert (=> b!5316924 m!6352950))

(declare-fun m!6352952 () Bool)

(assert (=> b!5316924 m!6352952))

(assert (=> b!5316924 m!6352204))

(declare-fun m!6352954 () Bool)

(assert (=> b!5316924 m!6352954))

(assert (=> b!5316924 m!6352950))

(declare-fun m!6352956 () Bool)

(assert (=> b!5316924 m!6352956))

(assert (=> b!5316918 m!6352946))

(declare-fun m!6352958 () Bool)

(assert (=> b!5316920 m!6352958))

(assert (=> b!5316056 d!1708113))

(declare-fun b!5316927 () Bool)

(declare-fun e!3303550 () (InoxSet Context!8710))

(declare-fun call!379359 () (InoxSet Context!8710))

(assert (=> b!5316927 (= e!3303550 call!379359)))

(declare-fun b!5316928 () Bool)

(declare-fun e!3303549 () Bool)

(assert (=> b!5316928 (= e!3303549 (nullable!5140 (h!67536 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343))))))))))

(declare-fun bm!379354 () Bool)

(assert (=> bm!379354 (= call!379359 (derivationStepZipperDown!419 (h!67536 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343)))))) (Context!8711 (t!374419 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343))))))) (h!67538 s!2326)))))

(declare-fun b!5316930 () Bool)

(declare-fun e!3303548 () (InoxSet Context!8710))

(assert (=> b!5316930 (= e!3303548 e!3303550)))

(declare-fun c!923874 () Bool)

(assert (=> b!5316930 (= c!923874 ((_ is Cons!61088) (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343)))))))))

(declare-fun b!5316931 () Bool)

(assert (=> b!5316931 (= e!3303548 ((_ map or) call!379359 (derivationStepZipperUp!343 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343))))))) (h!67538 s!2326))))))

(declare-fun b!5316929 () Bool)

(assert (=> b!5316929 (= e!3303550 ((as const (Array Context!8710 Bool)) false))))

(declare-fun d!1708115 () Bool)

(declare-fun c!923875 () Bool)

(assert (=> d!1708115 (= c!923875 e!3303549)))

(declare-fun res!2255473 () Bool)

(assert (=> d!1708115 (=> (not res!2255473) (not e!3303549))))

(assert (=> d!1708115 (= res!2255473 ((_ is Cons!61088) (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343)))))))))

(assert (=> d!1708115 (= (derivationStepZipperUp!343 (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343)))) (h!67538 s!2326)) e!3303548)))

(assert (= (and d!1708115 res!2255473) b!5316928))

(assert (= (and d!1708115 c!923875) b!5316931))

(assert (= (and d!1708115 (not c!923875)) b!5316930))

(assert (= (and b!5316930 c!923874) b!5316927))

(assert (= (and b!5316930 (not c!923874)) b!5316929))

(assert (= (or b!5316931 b!5316927) bm!379354))

(declare-fun m!6352960 () Bool)

(assert (=> b!5316928 m!6352960))

(declare-fun m!6352962 () Bool)

(assert (=> bm!379354 m!6352962))

(declare-fun m!6352964 () Bool)

(assert (=> b!5316931 m!6352964))

(assert (=> b!5315799 d!1708115))

(declare-fun d!1708117 () Bool)

(assert (=> d!1708117 (= (isUnion!315 lt!2171229) ((_ is Union!14971) lt!2171229))))

(assert (=> b!5316109 d!1708117))

(declare-fun d!1708119 () Bool)

(declare-fun res!2255475 () Bool)

(declare-fun e!3303555 () Bool)

(assert (=> d!1708119 (=> res!2255475 e!3303555)))

(assert (=> d!1708119 (= res!2255475 ((_ is ElementMatch!14971) (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292))))))

(assert (=> d!1708119 (= (validRegex!6707 (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292))) e!3303555)))

(declare-fun b!5316932 () Bool)

(declare-fun e!3303554 () Bool)

(declare-fun e!3303557 () Bool)

(assert (=> b!5316932 (= e!3303554 e!3303557)))

(declare-fun res!2255477 () Bool)

(assert (=> b!5316932 (= res!2255477 (not (nullable!5140 (reg!15300 (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292))))))))

(assert (=> b!5316932 (=> (not res!2255477) (not e!3303557))))

(declare-fun c!923876 () Bool)

(declare-fun bm!379355 () Bool)

(declare-fun call!379362 () Bool)

(declare-fun c!923877 () Bool)

(assert (=> bm!379355 (= call!379362 (validRegex!6707 (ite c!923877 (reg!15300 (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292))) (ite c!923876 (regOne!30455 (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292))) (regOne!30454 (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292)))))))))

(declare-fun b!5316933 () Bool)

(declare-fun e!3303552 () Bool)

(declare-fun call!379361 () Bool)

(assert (=> b!5316933 (= e!3303552 call!379361)))

(declare-fun b!5316934 () Bool)

(assert (=> b!5316934 (= e!3303557 call!379362)))

(declare-fun b!5316935 () Bool)

(declare-fun res!2255478 () Bool)

(declare-fun e!3303553 () Bool)

(assert (=> b!5316935 (=> res!2255478 e!3303553)))

(assert (=> b!5316935 (= res!2255478 (not ((_ is Concat!23816) (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292)))))))

(declare-fun e!3303551 () Bool)

(assert (=> b!5316935 (= e!3303551 e!3303553)))

(declare-fun b!5316936 () Bool)

(declare-fun res!2255474 () Bool)

(declare-fun e!3303556 () Bool)

(assert (=> b!5316936 (=> (not res!2255474) (not e!3303556))))

(declare-fun call!379360 () Bool)

(assert (=> b!5316936 (= res!2255474 call!379360)))

(assert (=> b!5316936 (= e!3303551 e!3303556)))

(declare-fun b!5316937 () Bool)

(assert (=> b!5316937 (= e!3303555 e!3303554)))

(assert (=> b!5316937 (= c!923877 ((_ is Star!14971) (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292))))))

(declare-fun b!5316938 () Bool)

(assert (=> b!5316938 (= e!3303556 call!379361)))

(declare-fun bm!379356 () Bool)

(assert (=> bm!379356 (= call!379360 call!379362)))

(declare-fun b!5316939 () Bool)

(assert (=> b!5316939 (= e!3303553 e!3303552)))

(declare-fun res!2255476 () Bool)

(assert (=> b!5316939 (=> (not res!2255476) (not e!3303552))))

(assert (=> b!5316939 (= res!2255476 call!379360)))

(declare-fun b!5316940 () Bool)

(assert (=> b!5316940 (= e!3303554 e!3303551)))

(assert (=> b!5316940 (= c!923876 ((_ is Union!14971) (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292))))))

(declare-fun bm!379357 () Bool)

(assert (=> bm!379357 (= call!379361 (validRegex!6707 (ite c!923876 (regTwo!30455 (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292))) (regTwo!30454 (ite c!923688 (regTwo!30455 r!7292) (regTwo!30454 r!7292))))))))

(assert (= (and d!1708119 (not res!2255475)) b!5316937))

(assert (= (and b!5316937 c!923877) b!5316932))

(assert (= (and b!5316937 (not c!923877)) b!5316940))

(assert (= (and b!5316932 res!2255477) b!5316934))

(assert (= (and b!5316940 c!923876) b!5316936))

(assert (= (and b!5316940 (not c!923876)) b!5316935))

(assert (= (and b!5316936 res!2255474) b!5316938))

(assert (= (and b!5316935 (not res!2255478)) b!5316939))

(assert (= (and b!5316939 res!2255476) b!5316933))

(assert (= (or b!5316938 b!5316933) bm!379357))

(assert (= (or b!5316936 b!5316939) bm!379356))

(assert (= (or b!5316934 bm!379356) bm!379355))

(declare-fun m!6352966 () Bool)

(assert (=> b!5316932 m!6352966))

(declare-fun m!6352968 () Bool)

(assert (=> bm!379355 m!6352968))

(declare-fun m!6352970 () Bool)

(assert (=> bm!379357 m!6352970))

(assert (=> bm!379223 d!1708119))

(assert (=> d!1707689 d!1708059))

(declare-fun d!1708121 () Bool)

(declare-fun c!923878 () Bool)

(assert (=> d!1708121 (= c!923878 (isEmpty!33059 (tail!10495 (t!374421 s!2326))))))

(declare-fun e!3303558 () Bool)

(assert (=> d!1708121 (= (matchZipper!1215 (derivationStepZipper!1214 lt!2171148 (head!11398 (t!374421 s!2326))) (tail!10495 (t!374421 s!2326))) e!3303558)))

(declare-fun b!5316941 () Bool)

(assert (=> b!5316941 (= e!3303558 (nullableZipper!1340 (derivationStepZipper!1214 lt!2171148 (head!11398 (t!374421 s!2326)))))))

(declare-fun b!5316942 () Bool)

(assert (=> b!5316942 (= e!3303558 (matchZipper!1215 (derivationStepZipper!1214 (derivationStepZipper!1214 lt!2171148 (head!11398 (t!374421 s!2326))) (head!11398 (tail!10495 (t!374421 s!2326)))) (tail!10495 (tail!10495 (t!374421 s!2326)))))))

(assert (= (and d!1708121 c!923878) b!5316941))

(assert (= (and d!1708121 (not c!923878)) b!5316942))

(assert (=> d!1708121 m!6351978))

(assert (=> d!1708121 m!6352702))

(assert (=> b!5316941 m!6352240))

(declare-fun m!6352972 () Bool)

(assert (=> b!5316941 m!6352972))

(assert (=> b!5316942 m!6351978))

(assert (=> b!5316942 m!6352706))

(assert (=> b!5316942 m!6352240))

(assert (=> b!5316942 m!6352706))

(declare-fun m!6352974 () Bool)

(assert (=> b!5316942 m!6352974))

(assert (=> b!5316942 m!6351978))

(assert (=> b!5316942 m!6352710))

(assert (=> b!5316942 m!6352974))

(assert (=> b!5316942 m!6352710))

(declare-fun m!6352976 () Bool)

(assert (=> b!5316942 m!6352976))

(assert (=> b!5316078 d!1708121))

(declare-fun bs!1232469 () Bool)

(declare-fun d!1708123 () Bool)

(assert (= bs!1232469 (and d!1708123 b!5315464)))

(declare-fun lambda!271077 () Int)

(assert (=> bs!1232469 (= (= (head!11398 (t!374421 s!2326)) (h!67538 s!2326)) (= lambda!271077 lambda!270979))))

(declare-fun bs!1232470 () Bool)

(assert (= bs!1232470 (and d!1708123 d!1707997)))

(assert (=> bs!1232470 (= lambda!271077 lambda!271065)))

(assert (=> d!1708123 true))

(assert (=> d!1708123 (= (derivationStepZipper!1214 lt!2171148 (head!11398 (t!374421 s!2326))) (flatMap!698 lt!2171148 lambda!271077))))

(declare-fun bs!1232471 () Bool)

(assert (= bs!1232471 d!1708123))

(declare-fun m!6352978 () Bool)

(assert (=> bs!1232471 m!6352978))

(assert (=> b!5316078 d!1708123))

(assert (=> b!5316078 d!1707999))

(assert (=> b!5316078 d!1708001))

(declare-fun b!5316943 () Bool)

(declare-fun e!3303561 () (InoxSet Context!8710))

(declare-fun call!379363 () (InoxSet Context!8710))

(assert (=> b!5316943 (= e!3303561 call!379363)))

(declare-fun b!5316944 () Bool)

(declare-fun e!3303560 () Bool)

(assert (=> b!5316944 (= e!3303560 (nullable!5140 (h!67536 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))))))))))

(declare-fun bm!379358 () Bool)

(assert (=> bm!379358 (= call!379363 (derivationStepZipperDown!419 (h!67536 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))))) (Context!8711 (t!374419 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))))))) (h!67538 s!2326)))))

(declare-fun b!5316946 () Bool)

(declare-fun e!3303559 () (InoxSet Context!8710))

(assert (=> b!5316946 (= e!3303559 e!3303561)))

(declare-fun c!923879 () Bool)

(assert (=> b!5316946 (= c!923879 ((_ is Cons!61088) (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))))))))

(declare-fun b!5316947 () Bool)

(assert (=> b!5316947 (= e!3303559 ((_ map or) call!379363 (derivationStepZipperUp!343 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))))))) (h!67538 s!2326))))))

(declare-fun b!5316945 () Bool)

(assert (=> b!5316945 (= e!3303561 ((as const (Array Context!8710 Bool)) false))))

(declare-fun d!1708125 () Bool)

(declare-fun c!923880 () Bool)

(assert (=> d!1708125 (= c!923880 e!3303560)))

(declare-fun res!2255479 () Bool)

(assert (=> d!1708125 (=> (not res!2255479) (not e!3303560))))

(assert (=> d!1708125 (= res!2255479 ((_ is Cons!61088) (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))))))))

(assert (=> d!1708125 (= (derivationStepZipperUp!343 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (h!67538 s!2326)) e!3303559)))

(assert (= (and d!1708125 res!2255479) b!5316944))

(assert (= (and d!1708125 c!923880) b!5316947))

(assert (= (and d!1708125 (not c!923880)) b!5316946))

(assert (= (and b!5316946 c!923879) b!5316943))

(assert (= (and b!5316946 (not c!923879)) b!5316945))

(assert (= (or b!5316947 b!5316943) bm!379358))

(declare-fun m!6352980 () Bool)

(assert (=> b!5316944 m!6352980))

(declare-fun m!6352982 () Bool)

(assert (=> bm!379358 m!6352982))

(declare-fun m!6352984 () Bool)

(assert (=> b!5316947 m!6352984))

(assert (=> b!5315760 d!1708125))

(assert (=> d!1707763 d!1707761))

(assert (=> d!1707763 d!1707741))

(declare-fun d!1708127 () Bool)

(assert (=> d!1708127 (= (matchR!7156 r!7292 s!2326) (matchRSpec!2074 r!7292 s!2326))))

(assert (=> d!1708127 true))

(declare-fun _$88!3608 () Unit!153402)

(assert (=> d!1708127 (= (choose!39786 r!7292 s!2326) _$88!3608)))

(declare-fun bs!1232472 () Bool)

(assert (= bs!1232472 d!1708127))

(assert (=> bs!1232472 m!6351866))

(assert (=> bs!1232472 m!6351864))

(assert (=> d!1707763 d!1708127))

(assert (=> d!1707763 d!1707803))

(declare-fun d!1708129 () Bool)

(declare-fun res!2255481 () Bool)

(declare-fun e!3303566 () Bool)

(assert (=> d!1708129 (=> res!2255481 e!3303566)))

(assert (=> d!1708129 (= res!2255481 ((_ is ElementMatch!14971) (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292)))))))

(assert (=> d!1708129 (= (validRegex!6707 (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292)))) e!3303566)))

(declare-fun b!5316948 () Bool)

(declare-fun e!3303565 () Bool)

(declare-fun e!3303568 () Bool)

(assert (=> b!5316948 (= e!3303565 e!3303568)))

(declare-fun res!2255483 () Bool)

(assert (=> b!5316948 (= res!2255483 (not (nullable!5140 (reg!15300 (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292)))))))))

(assert (=> b!5316948 (=> (not res!2255483) (not e!3303568))))

(declare-fun call!379366 () Bool)

(declare-fun c!923882 () Bool)

(declare-fun c!923881 () Bool)

(declare-fun bm!379359 () Bool)

(assert (=> bm!379359 (= call!379366 (validRegex!6707 (ite c!923882 (reg!15300 (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292)))) (ite c!923881 (regOne!30455 (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292)))) (regOne!30454 (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292))))))))))

(declare-fun b!5316949 () Bool)

(declare-fun e!3303563 () Bool)

(declare-fun call!379365 () Bool)

(assert (=> b!5316949 (= e!3303563 call!379365)))

(declare-fun b!5316950 () Bool)

(assert (=> b!5316950 (= e!3303568 call!379366)))

(declare-fun b!5316951 () Bool)

(declare-fun res!2255484 () Bool)

(declare-fun e!3303564 () Bool)

(assert (=> b!5316951 (=> res!2255484 e!3303564)))

(assert (=> b!5316951 (= res!2255484 (not ((_ is Concat!23816) (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292))))))))

(declare-fun e!3303562 () Bool)

(assert (=> b!5316951 (= e!3303562 e!3303564)))

(declare-fun b!5316952 () Bool)

(declare-fun res!2255480 () Bool)

(declare-fun e!3303567 () Bool)

(assert (=> b!5316952 (=> (not res!2255480) (not e!3303567))))

(declare-fun call!379364 () Bool)

(assert (=> b!5316952 (= res!2255480 call!379364)))

(assert (=> b!5316952 (= e!3303562 e!3303567)))

(declare-fun b!5316953 () Bool)

(assert (=> b!5316953 (= e!3303566 e!3303565)))

(assert (=> b!5316953 (= c!923882 ((_ is Star!14971) (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292)))))))

(declare-fun b!5316954 () Bool)

(assert (=> b!5316954 (= e!3303567 call!379365)))

(declare-fun bm!379360 () Bool)

(assert (=> bm!379360 (= call!379364 call!379366)))

(declare-fun b!5316955 () Bool)

(assert (=> b!5316955 (= e!3303564 e!3303563)))

(declare-fun res!2255482 () Bool)

(assert (=> b!5316955 (=> (not res!2255482) (not e!3303563))))

(assert (=> b!5316955 (= res!2255482 call!379364)))

(declare-fun b!5316956 () Bool)

(assert (=> b!5316956 (= e!3303565 e!3303562)))

(assert (=> b!5316956 (= c!923881 ((_ is Union!14971) (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292)))))))

(declare-fun bm!379361 () Bool)

(assert (=> bm!379361 (= call!379365 (validRegex!6707 (ite c!923881 (regTwo!30455 (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292)))) (regTwo!30454 (ite c!923689 (reg!15300 r!7292) (ite c!923688 (regOne!30455 r!7292) (regOne!30454 r!7292)))))))))

(assert (= (and d!1708129 (not res!2255481)) b!5316953))

(assert (= (and b!5316953 c!923882) b!5316948))

(assert (= (and b!5316953 (not c!923882)) b!5316956))

(assert (= (and b!5316948 res!2255483) b!5316950))

(assert (= (and b!5316956 c!923881) b!5316952))

(assert (= (and b!5316956 (not c!923881)) b!5316951))

(assert (= (and b!5316952 res!2255480) b!5316954))

(assert (= (and b!5316951 (not res!2255484)) b!5316955))

(assert (= (and b!5316955 res!2255482) b!5316949))

(assert (= (or b!5316954 b!5316949) bm!379361))

(assert (= (or b!5316952 b!5316955) bm!379360))

(assert (= (or b!5316950 bm!379360) bm!379359))

(declare-fun m!6352986 () Bool)

(assert (=> b!5316948 m!6352986))

(declare-fun m!6352988 () Bool)

(assert (=> bm!379359 m!6352988))

(declare-fun m!6352990 () Bool)

(assert (=> bm!379361 m!6352990))

(assert (=> bm!379221 d!1708129))

(assert (=> d!1707775 d!1707771))

(declare-fun d!1708131 () Bool)

(assert (=> d!1708131 (= (Exists!2152 lambda!271019) (choose!39787 lambda!271019))))

(declare-fun bs!1232473 () Bool)

(assert (= bs!1232473 d!1708131))

(declare-fun m!6352992 () Bool)

(assert (=> bs!1232473 m!6352992))

(assert (=> d!1707775 d!1708131))

(assert (=> d!1707775 d!1708085))

(assert (=> d!1707775 d!1707781))

(declare-fun bs!1232474 () Bool)

(declare-fun d!1708133 () Bool)

(assert (= bs!1232474 (and d!1708133 b!5315457)))

(declare-fun lambda!271080 () Int)

(assert (=> bs!1232474 (= lambda!271080 lambda!270977)))

(declare-fun bs!1232475 () Bool)

(assert (= bs!1232475 (and d!1708133 b!5316796)))

(assert (=> bs!1232475 (not (= lambda!271080 lambda!271074))))

(declare-fun bs!1232476 () Bool)

(assert (= bs!1232476 (and d!1708133 d!1707779)))

(assert (=> bs!1232476 (= lambda!271080 lambda!271024)))

(declare-fun bs!1232477 () Bool)

(assert (= bs!1232477 (and d!1708133 b!5316800)))

(assert (=> bs!1232477 (not (= lambda!271080 lambda!271075))))

(declare-fun bs!1232478 () Bool)

(assert (= bs!1232478 (and d!1708133 b!5316608)))

(assert (=> bs!1232478 (not (= lambda!271080 lambda!271066))))

(declare-fun bs!1232479 () Bool)

(assert (= bs!1232479 (and d!1708133 b!5315945)))

(assert (=> bs!1232479 (not (= lambda!271080 lambda!271012))))

(declare-fun bs!1232480 () Bool)

(assert (= bs!1232480 (and d!1708133 d!1707775)))

(assert (=> bs!1232480 (= lambda!271080 lambda!271019)))

(declare-fun bs!1232481 () Bool)

(assert (= bs!1232481 (and d!1708133 b!5315949)))

(assert (=> bs!1232481 (not (= lambda!271080 lambda!271013))))

(assert (=> bs!1232474 (not (= lambda!271080 lambda!270978))))

(assert (=> bs!1232476 (not (= lambda!271080 lambda!271025))))

(declare-fun bs!1232482 () Bool)

(assert (= bs!1232482 (and d!1708133 b!5316612)))

(assert (=> bs!1232482 (not (= lambda!271080 lambda!271067))))

(assert (=> d!1708133 true))

(assert (=> d!1708133 true))

(assert (=> d!1708133 true))

(assert (=> d!1708133 (= (isDefined!11785 (findConcatSeparation!1496 (regOne!30454 r!7292) (regTwo!30454 r!7292) Nil!61090 s!2326 s!2326)) (Exists!2152 lambda!271080))))

(assert (=> d!1708133 true))

(declare-fun _$89!1510 () Unit!153402)

(assert (=> d!1708133 (= (choose!39788 (regOne!30454 r!7292) (regTwo!30454 r!7292) s!2326) _$89!1510)))

(declare-fun bs!1232483 () Bool)

(assert (= bs!1232483 d!1708133))

(assert (=> bs!1232483 m!6351834))

(assert (=> bs!1232483 m!6351834))

(assert (=> bs!1232483 m!6351836))

(declare-fun m!6352994 () Bool)

(assert (=> bs!1232483 m!6352994))

(assert (=> d!1707775 d!1708133))

(declare-fun d!1708135 () Bool)

(assert (=> d!1708135 (= (nullable!5140 (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))) (nullableFct!1492 (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))))

(declare-fun bs!1232484 () Bool)

(assert (= bs!1232484 d!1708135))

(declare-fun m!6352996 () Bool)

(assert (=> bs!1232484 m!6352996))

(assert (=> b!5316001 d!1708135))

(declare-fun b!5316961 () Bool)

(declare-fun e!3303573 () (InoxSet Context!8710))

(declare-fun call!379367 () (InoxSet Context!8710))

(assert (=> b!5316961 (= e!3303573 call!379367)))

(declare-fun b!5316962 () Bool)

(declare-fun e!3303572 () Bool)

(assert (=> b!5316962 (= e!3303572 (nullable!5140 (h!67536 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 lt!2171153)))))))))

(declare-fun bm!379362 () Bool)

(assert (=> bm!379362 (= call!379367 (derivationStepZipperDown!419 (h!67536 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 lt!2171153))))) (Context!8711 (t!374419 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 lt!2171153)))))) (h!67538 s!2326)))))

(declare-fun b!5316964 () Bool)

(declare-fun e!3303571 () (InoxSet Context!8710))

(assert (=> b!5316964 (= e!3303571 e!3303573)))

(declare-fun c!923883 () Bool)

(assert (=> b!5316964 (= c!923883 ((_ is Cons!61088) (exprs!4855 (Context!8711 (t!374419 (exprs!4855 lt!2171153))))))))

(declare-fun b!5316965 () Bool)

(assert (=> b!5316965 (= e!3303571 ((_ map or) call!379367 (derivationStepZipperUp!343 (Context!8711 (t!374419 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 lt!2171153)))))) (h!67538 s!2326))))))

(declare-fun b!5316963 () Bool)

(assert (=> b!5316963 (= e!3303573 ((as const (Array Context!8710 Bool)) false))))

(declare-fun d!1708137 () Bool)

(declare-fun c!923884 () Bool)

(assert (=> d!1708137 (= c!923884 e!3303572)))

(declare-fun res!2255489 () Bool)

(assert (=> d!1708137 (=> (not res!2255489) (not e!3303572))))

(assert (=> d!1708137 (= res!2255489 ((_ is Cons!61088) (exprs!4855 (Context!8711 (t!374419 (exprs!4855 lt!2171153))))))))

(assert (=> d!1708137 (= (derivationStepZipperUp!343 (Context!8711 (t!374419 (exprs!4855 lt!2171153))) (h!67538 s!2326)) e!3303571)))

(assert (= (and d!1708137 res!2255489) b!5316962))

(assert (= (and d!1708137 c!923884) b!5316965))

(assert (= (and d!1708137 (not c!923884)) b!5316964))

(assert (= (and b!5316964 c!923883) b!5316961))

(assert (= (and b!5316964 (not c!923883)) b!5316963))

(assert (= (or b!5316965 b!5316961) bm!379362))

(declare-fun m!6352998 () Bool)

(assert (=> b!5316962 m!6352998))

(declare-fun m!6353000 () Bool)

(assert (=> bm!379362 m!6353000))

(declare-fun m!6353002 () Bool)

(assert (=> b!5316965 m!6353002))

(assert (=> b!5315793 d!1708137))

(assert (=> b!5316076 d!1707689))

(declare-fun d!1708139 () Bool)

(assert (=> d!1708139 (= (Exists!2152 lambda!271024) (choose!39787 lambda!271024))))

(declare-fun bs!1232485 () Bool)

(assert (= bs!1232485 d!1708139))

(declare-fun m!6353004 () Bool)

(assert (=> bs!1232485 m!6353004))

(assert (=> d!1707779 d!1708139))

(declare-fun d!1708141 () Bool)

(assert (=> d!1708141 (= (Exists!2152 lambda!271025) (choose!39787 lambda!271025))))

(declare-fun bs!1232486 () Bool)

(assert (= bs!1232486 d!1708141))

(declare-fun m!6353006 () Bool)

(assert (=> bs!1232486 m!6353006))

(assert (=> d!1707779 d!1708141))

(declare-fun bs!1232487 () Bool)

(declare-fun d!1708143 () Bool)

(assert (= bs!1232487 (and d!1708143 b!5315457)))

(declare-fun lambda!271085 () Int)

(assert (=> bs!1232487 (= lambda!271085 lambda!270977)))

(declare-fun bs!1232488 () Bool)

(assert (= bs!1232488 (and d!1708143 b!5316796)))

(assert (=> bs!1232488 (not (= lambda!271085 lambda!271074))))

(declare-fun bs!1232489 () Bool)

(assert (= bs!1232489 (and d!1708143 d!1707779)))

(assert (=> bs!1232489 (= lambda!271085 lambda!271024)))

(declare-fun bs!1232490 () Bool)

(assert (= bs!1232490 (and d!1708143 b!5316800)))

(assert (=> bs!1232490 (not (= lambda!271085 lambda!271075))))

(declare-fun bs!1232491 () Bool)

(assert (= bs!1232491 (and d!1708143 b!5316608)))

(assert (=> bs!1232491 (not (= lambda!271085 lambda!271066))))

(declare-fun bs!1232492 () Bool)

(assert (= bs!1232492 (and d!1708143 b!5315945)))

(assert (=> bs!1232492 (not (= lambda!271085 lambda!271012))))

(declare-fun bs!1232493 () Bool)

(assert (= bs!1232493 (and d!1708143 d!1707775)))

(assert (=> bs!1232493 (= lambda!271085 lambda!271019)))

(declare-fun bs!1232494 () Bool)

(assert (= bs!1232494 (and d!1708143 b!5315949)))

(assert (=> bs!1232494 (not (= lambda!271085 lambda!271013))))

(declare-fun bs!1232495 () Bool)

(assert (= bs!1232495 (and d!1708143 d!1708133)))

(assert (=> bs!1232495 (= lambda!271085 lambda!271080)))

(assert (=> bs!1232487 (not (= lambda!271085 lambda!270978))))

(assert (=> bs!1232489 (not (= lambda!271085 lambda!271025))))

(declare-fun bs!1232496 () Bool)

(assert (= bs!1232496 (and d!1708143 b!5316612)))

(assert (=> bs!1232496 (not (= lambda!271085 lambda!271067))))

(assert (=> d!1708143 true))

(assert (=> d!1708143 true))

(assert (=> d!1708143 true))

(declare-fun lambda!271086 () Int)

(assert (=> bs!1232487 (not (= lambda!271086 lambda!270977))))

(assert (=> bs!1232488 (not (= lambda!271086 lambda!271074))))

(assert (=> bs!1232489 (not (= lambda!271086 lambda!271024))))

(assert (=> bs!1232490 (= (and (= (regOne!30454 r!7292) (regOne!30454 (regTwo!30455 r!7292))) (= (regTwo!30454 r!7292) (regTwo!30454 (regTwo!30455 r!7292)))) (= lambda!271086 lambda!271075))))

(declare-fun bs!1232497 () Bool)

(assert (= bs!1232497 d!1708143))

(assert (=> bs!1232497 (not (= lambda!271086 lambda!271085))))

(assert (=> bs!1232491 (not (= lambda!271086 lambda!271066))))

(assert (=> bs!1232492 (not (= lambda!271086 lambda!271012))))

(assert (=> bs!1232493 (not (= lambda!271086 lambda!271019))))

(assert (=> bs!1232494 (= lambda!271086 lambda!271013)))

(assert (=> bs!1232495 (not (= lambda!271086 lambda!271080))))

(assert (=> bs!1232487 (= lambda!271086 lambda!270978)))

(assert (=> bs!1232489 (= lambda!271086 lambda!271025)))

(assert (=> bs!1232496 (= (and (= (regOne!30454 r!7292) (regOne!30454 (regOne!30455 r!7292))) (= (regTwo!30454 r!7292) (regTwo!30454 (regOne!30455 r!7292)))) (= lambda!271086 lambda!271067))))

(assert (=> d!1708143 true))

(assert (=> d!1708143 true))

(assert (=> d!1708143 true))

(assert (=> d!1708143 (= (Exists!2152 lambda!271085) (Exists!2152 lambda!271086))))

(assert (=> d!1708143 true))

(declare-fun _$90!1134 () Unit!153402)

(assert (=> d!1708143 (= (choose!39789 (regOne!30454 r!7292) (regTwo!30454 r!7292) s!2326) _$90!1134)))

(declare-fun m!6353008 () Bool)

(assert (=> bs!1232497 m!6353008))

(declare-fun m!6353010 () Bool)

(assert (=> bs!1232497 m!6353010))

(assert (=> d!1707779 d!1708143))

(assert (=> d!1707779 d!1708085))

(declare-fun d!1708145 () Bool)

(declare-fun c!923885 () Bool)

(assert (=> d!1708145 (= c!923885 (isEmpty!33059 (tail!10495 (t!374421 s!2326))))))

(declare-fun e!3303578 () Bool)

(assert (=> d!1708145 (= (matchZipper!1215 (derivationStepZipper!1214 lt!2171145 (head!11398 (t!374421 s!2326))) (tail!10495 (t!374421 s!2326))) e!3303578)))

(declare-fun b!5316974 () Bool)

(assert (=> b!5316974 (= e!3303578 (nullableZipper!1340 (derivationStepZipper!1214 lt!2171145 (head!11398 (t!374421 s!2326)))))))

(declare-fun b!5316975 () Bool)

(assert (=> b!5316975 (= e!3303578 (matchZipper!1215 (derivationStepZipper!1214 (derivationStepZipper!1214 lt!2171145 (head!11398 (t!374421 s!2326))) (head!11398 (tail!10495 (t!374421 s!2326)))) (tail!10495 (tail!10495 (t!374421 s!2326)))))))

(assert (= (and d!1708145 c!923885) b!5316974))

(assert (= (and d!1708145 (not c!923885)) b!5316975))

(assert (=> d!1708145 m!6351978))

(assert (=> d!1708145 m!6352702))

(assert (=> b!5316974 m!6351976))

(declare-fun m!6353012 () Bool)

(assert (=> b!5316974 m!6353012))

(assert (=> b!5316975 m!6351978))

(assert (=> b!5316975 m!6352706))

(assert (=> b!5316975 m!6351976))

(assert (=> b!5316975 m!6352706))

(declare-fun m!6353014 () Bool)

(assert (=> b!5316975 m!6353014))

(assert (=> b!5316975 m!6351978))

(assert (=> b!5316975 m!6352710))

(assert (=> b!5316975 m!6353014))

(assert (=> b!5316975 m!6352710))

(declare-fun m!6353016 () Bool)

(assert (=> b!5316975 m!6353016))

(assert (=> b!5315608 d!1708145))

(declare-fun bs!1232498 () Bool)

(declare-fun d!1708147 () Bool)

(assert (= bs!1232498 (and d!1708147 b!5315464)))

(declare-fun lambda!271087 () Int)

(assert (=> bs!1232498 (= (= (head!11398 (t!374421 s!2326)) (h!67538 s!2326)) (= lambda!271087 lambda!270979))))

(declare-fun bs!1232499 () Bool)

(assert (= bs!1232499 (and d!1708147 d!1707997)))

(assert (=> bs!1232499 (= lambda!271087 lambda!271065)))

(declare-fun bs!1232500 () Bool)

(assert (= bs!1232500 (and d!1708147 d!1708123)))

(assert (=> bs!1232500 (= lambda!271087 lambda!271077)))

(assert (=> d!1708147 true))

(assert (=> d!1708147 (= (derivationStepZipper!1214 lt!2171145 (head!11398 (t!374421 s!2326))) (flatMap!698 lt!2171145 lambda!271087))))

(declare-fun bs!1232501 () Bool)

(assert (= bs!1232501 d!1708147))

(declare-fun m!6353018 () Bool)

(assert (=> bs!1232501 m!6353018))

(assert (=> b!5315608 d!1708147))

(assert (=> b!5315608 d!1707999))

(assert (=> b!5315608 d!1708001))

(assert (=> bm!379202 d!1708021))

(assert (=> b!5316050 d!1708081))

(declare-fun b!5316976 () Bool)

(declare-fun e!3303585 () Bool)

(declare-fun lt!2171274 () Bool)

(assert (=> b!5316976 (= e!3303585 (not lt!2171274))))

(declare-fun b!5316977 () Bool)

(declare-fun res!2255503 () Bool)

(declare-fun e!3303581 () Bool)

(assert (=> b!5316977 (=> res!2255503 e!3303581)))

(declare-fun e!3303584 () Bool)

(assert (=> b!5316977 (= res!2255503 e!3303584)))

(declare-fun res!2255500 () Bool)

(assert (=> b!5316977 (=> (not res!2255500) (not e!3303584))))

(assert (=> b!5316977 (= res!2255500 lt!2171274)))

(declare-fun b!5316978 () Bool)

(declare-fun e!3303583 () Bool)

(assert (=> b!5316978 (= e!3303581 e!3303583)))

(declare-fun res!2255505 () Bool)

(assert (=> b!5316978 (=> (not res!2255505) (not e!3303583))))

(assert (=> b!5316978 (= res!2255505 (not lt!2171274))))

(declare-fun b!5316979 () Bool)

(declare-fun e!3303580 () Bool)

(assert (=> b!5316979 (= e!3303580 (nullable!5140 (regTwo!30454 r!7292)))))

(declare-fun b!5316980 () Bool)

(assert (=> b!5316980 (= e!3303580 (matchR!7156 (derivativeStep!4161 (regTwo!30454 r!7292) (head!11398 s!2326)) (tail!10495 s!2326)))))

(declare-fun b!5316981 () Bool)

(declare-fun res!2255501 () Bool)

(declare-fun e!3303579 () Bool)

(assert (=> b!5316981 (=> res!2255501 e!3303579)))

(assert (=> b!5316981 (= res!2255501 (not (isEmpty!33059 (tail!10495 s!2326))))))

(declare-fun d!1708149 () Bool)

(declare-fun e!3303582 () Bool)

(assert (=> d!1708149 e!3303582))

(declare-fun c!923887 () Bool)

(assert (=> d!1708149 (= c!923887 ((_ is EmptyExpr!14971) (regTwo!30454 r!7292)))))

(assert (=> d!1708149 (= lt!2171274 e!3303580)))

(declare-fun c!923886 () Bool)

(assert (=> d!1708149 (= c!923886 (isEmpty!33059 s!2326))))

(assert (=> d!1708149 (validRegex!6707 (regTwo!30454 r!7292))))

(assert (=> d!1708149 (= (matchR!7156 (regTwo!30454 r!7292) s!2326) lt!2171274)))

(declare-fun b!5316982 () Bool)

(declare-fun res!2255499 () Bool)

(assert (=> b!5316982 (=> res!2255499 e!3303581)))

(assert (=> b!5316982 (= res!2255499 (not ((_ is ElementMatch!14971) (regTwo!30454 r!7292))))))

(assert (=> b!5316982 (= e!3303585 e!3303581)))

(declare-fun b!5316983 () Bool)

(assert (=> b!5316983 (= e!3303579 (not (= (head!11398 s!2326) (c!923507 (regTwo!30454 r!7292)))))))

(declare-fun b!5316984 () Bool)

(assert (=> b!5316984 (= e!3303582 e!3303585)))

(declare-fun c!923888 () Bool)

(assert (=> b!5316984 (= c!923888 ((_ is EmptyLang!14971) (regTwo!30454 r!7292)))))

(declare-fun b!5316985 () Bool)

(assert (=> b!5316985 (= e!3303584 (= (head!11398 s!2326) (c!923507 (regTwo!30454 r!7292))))))

(declare-fun b!5316986 () Bool)

(declare-fun call!379368 () Bool)

(assert (=> b!5316986 (= e!3303582 (= lt!2171274 call!379368))))

(declare-fun b!5316987 () Bool)

(declare-fun res!2255502 () Bool)

(assert (=> b!5316987 (=> (not res!2255502) (not e!3303584))))

(assert (=> b!5316987 (= res!2255502 (isEmpty!33059 (tail!10495 s!2326)))))

(declare-fun b!5316988 () Bool)

(assert (=> b!5316988 (= e!3303583 e!3303579)))

(declare-fun res!2255498 () Bool)

(assert (=> b!5316988 (=> res!2255498 e!3303579)))

(assert (=> b!5316988 (= res!2255498 call!379368)))

(declare-fun b!5316989 () Bool)

(declare-fun res!2255504 () Bool)

(assert (=> b!5316989 (=> (not res!2255504) (not e!3303584))))

(assert (=> b!5316989 (= res!2255504 (not call!379368))))

(declare-fun bm!379363 () Bool)

(assert (=> bm!379363 (= call!379368 (isEmpty!33059 s!2326))))

(assert (= (and d!1708149 c!923886) b!5316979))

(assert (= (and d!1708149 (not c!923886)) b!5316980))

(assert (= (and d!1708149 c!923887) b!5316986))

(assert (= (and d!1708149 (not c!923887)) b!5316984))

(assert (= (and b!5316984 c!923888) b!5316976))

(assert (= (and b!5316984 (not c!923888)) b!5316982))

(assert (= (and b!5316982 (not res!2255499)) b!5316977))

(assert (= (and b!5316977 res!2255500) b!5316989))

(assert (= (and b!5316989 res!2255504) b!5316987))

(assert (= (and b!5316987 res!2255502) b!5316985))

(assert (= (and b!5316977 (not res!2255503)) b!5316978))

(assert (= (and b!5316978 res!2255505) b!5316988))

(assert (= (and b!5316988 (not res!2255498)) b!5316981))

(assert (= (and b!5316981 (not res!2255501)) b!5316983))

(assert (= (or b!5316986 b!5316989 b!5316988) bm!379363))

(assert (=> bm!379363 m!6352156))

(assert (=> d!1708149 m!6352156))

(assert (=> d!1708149 m!6352846))

(assert (=> b!5316980 m!6352158))

(assert (=> b!5316980 m!6352158))

(declare-fun m!6353020 () Bool)

(assert (=> b!5316980 m!6353020))

(assert (=> b!5316980 m!6352162))

(assert (=> b!5316980 m!6353020))

(assert (=> b!5316980 m!6352162))

(declare-fun m!6353022 () Bool)

(assert (=> b!5316980 m!6353022))

(assert (=> b!5316979 m!6352856))

(assert (=> b!5316981 m!6352162))

(assert (=> b!5316981 m!6352162))

(assert (=> b!5316981 m!6352168))

(assert (=> b!5316985 m!6352158))

(assert (=> b!5316987 m!6352162))

(assert (=> b!5316987 m!6352162))

(assert (=> b!5316987 m!6352168))

(assert (=> b!5316983 m!6352158))

(assert (=> b!5316052 d!1708149))

(declare-fun bs!1232502 () Bool)

(declare-fun d!1708151 () Bool)

(assert (= bs!1232502 (and d!1708151 d!1707797)))

(declare-fun lambda!271088 () Int)

(assert (=> bs!1232502 (= lambda!271088 lambda!271032)))

(declare-fun bs!1232503 () Bool)

(assert (= bs!1232503 (and d!1708151 d!1707767)))

(assert (=> bs!1232503 (= lambda!271088 lambda!271016)))

(declare-fun bs!1232504 () Bool)

(assert (= bs!1232504 (and d!1708151 d!1707805)))

(assert (=> bs!1232504 (= lambda!271088 lambda!271035)))

(declare-fun bs!1232505 () Bool)

(assert (= bs!1232505 (and d!1708151 d!1708099)))

(assert (=> bs!1232505 (= lambda!271088 lambda!271076)))

(declare-fun bs!1232506 () Bool)

(assert (= bs!1232506 (and d!1708151 d!1707793)))

(assert (=> bs!1232506 (= lambda!271088 lambda!271026)))

(declare-fun bs!1232507 () Bool)

(assert (= bs!1232507 (and d!1708151 d!1707795)))

(assert (=> bs!1232507 (= lambda!271088 lambda!271029)))

(declare-fun bs!1232508 () Bool)

(assert (= bs!1232508 (and d!1708151 d!1708027)))

(assert (=> bs!1232508 (= lambda!271088 lambda!271070)))

(declare-fun bs!1232509 () Bool)

(assert (= bs!1232509 (and d!1708151 d!1708023)))

(assert (=> bs!1232509 (= lambda!271088 lambda!271069)))

(declare-fun b!5316990 () Bool)

(declare-fun e!3303588 () Bool)

(declare-fun lt!2171275 () Regex!14971)

(assert (=> b!5316990 (= e!3303588 (= lt!2171275 (head!11399 (t!374419 (exprs!4855 (h!67537 zl!343))))))))

(declare-fun b!5316992 () Bool)

(declare-fun e!3303589 () Bool)

(assert (=> b!5316992 (= e!3303589 (isEmpty!33055 (t!374419 (t!374419 (exprs!4855 (h!67537 zl!343))))))))

(declare-fun b!5316993 () Bool)

(declare-fun e!3303587 () Regex!14971)

(assert (=> b!5316993 (= e!3303587 (Concat!23816 (h!67536 (t!374419 (exprs!4855 (h!67537 zl!343)))) (generalisedConcat!640 (t!374419 (t!374419 (exprs!4855 (h!67537 zl!343)))))))))

(declare-fun b!5316994 () Bool)

(declare-fun e!3303591 () Bool)

(assert (=> b!5316994 (= e!3303591 e!3303588)))

(declare-fun c!923890 () Bool)

(assert (=> b!5316994 (= c!923890 (isEmpty!33055 (tail!10496 (t!374419 (exprs!4855 (h!67537 zl!343))))))))

(declare-fun b!5316995 () Bool)

(assert (=> b!5316995 (= e!3303587 EmptyExpr!14971)))

(declare-fun e!3303586 () Bool)

(assert (=> d!1708151 e!3303586))

(declare-fun res!2255506 () Bool)

(assert (=> d!1708151 (=> (not res!2255506) (not e!3303586))))

(assert (=> d!1708151 (= res!2255506 (validRegex!6707 lt!2171275))))

(declare-fun e!3303590 () Regex!14971)

(assert (=> d!1708151 (= lt!2171275 e!3303590)))

(declare-fun c!923892 () Bool)

(assert (=> d!1708151 (= c!923892 e!3303589)))

(declare-fun res!2255507 () Bool)

(assert (=> d!1708151 (=> (not res!2255507) (not e!3303589))))

(assert (=> d!1708151 (= res!2255507 ((_ is Cons!61088) (t!374419 (exprs!4855 (h!67537 zl!343)))))))

(assert (=> d!1708151 (forall!14391 (t!374419 (exprs!4855 (h!67537 zl!343))) lambda!271088)))

(assert (=> d!1708151 (= (generalisedConcat!640 (t!374419 (exprs!4855 (h!67537 zl!343)))) lt!2171275)))

(declare-fun b!5316991 () Bool)

(assert (=> b!5316991 (= e!3303590 (h!67536 (t!374419 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5316996 () Bool)

(assert (=> b!5316996 (= e!3303591 (isEmptyExpr!875 lt!2171275))))

(declare-fun b!5316997 () Bool)

(assert (=> b!5316997 (= e!3303590 e!3303587)))

(declare-fun c!923889 () Bool)

(assert (=> b!5316997 (= c!923889 ((_ is Cons!61088) (t!374419 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5316998 () Bool)

(assert (=> b!5316998 (= e!3303586 e!3303591)))

(declare-fun c!923891 () Bool)

(assert (=> b!5316998 (= c!923891 (isEmpty!33055 (t!374419 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5316999 () Bool)

(assert (=> b!5316999 (= e!3303588 (isConcat!398 lt!2171275))))

(assert (= (and d!1708151 res!2255507) b!5316992))

(assert (= (and d!1708151 c!923892) b!5316991))

(assert (= (and d!1708151 (not c!923892)) b!5316997))

(assert (= (and b!5316997 c!923889) b!5316993))

(assert (= (and b!5316997 (not c!923889)) b!5316995))

(assert (= (and d!1708151 res!2255506) b!5316998))

(assert (= (and b!5316998 c!923891) b!5316996))

(assert (= (and b!5316998 (not c!923891)) b!5316994))

(assert (= (and b!5316994 c!923890) b!5316990))

(assert (= (and b!5316994 (not c!923890)) b!5316999))

(declare-fun m!6353024 () Bool)

(assert (=> b!5316992 m!6353024))

(declare-fun m!6353026 () Bool)

(assert (=> b!5316993 m!6353026))

(declare-fun m!6353028 () Bool)

(assert (=> b!5316996 m!6353028))

(declare-fun m!6353030 () Bool)

(assert (=> b!5316999 m!6353030))

(declare-fun m!6353032 () Bool)

(assert (=> b!5316990 m!6353032))

(declare-fun m!6353034 () Bool)

(assert (=> b!5316994 m!6353034))

(assert (=> b!5316994 m!6353034))

(declare-fun m!6353036 () Bool)

(assert (=> b!5316994 m!6353036))

(declare-fun m!6353038 () Bool)

(assert (=> d!1708151 m!6353038))

(declare-fun m!6353040 () Bool)

(assert (=> d!1708151 m!6353040))

(assert (=> b!5316998 m!6351862))

(assert (=> b!5316149 d!1708151))

(assert (=> b!5315796 d!1707705))

(declare-fun d!1708153 () Bool)

(assert (=> d!1708153 (= (isEmptyLang!883 lt!2171229) ((_ is EmptyLang!14971) lt!2171229))))

(assert (=> b!5316103 d!1708153))

(declare-fun d!1708155 () Bool)

(declare-fun res!2255509 () Bool)

(declare-fun e!3303596 () Bool)

(assert (=> d!1708155 (=> res!2255509 e!3303596)))

(assert (=> d!1708155 (= res!2255509 ((_ is ElementMatch!14971) (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))))))))

(assert (=> d!1708155 (= (validRegex!6707 (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))))) e!3303596)))

(declare-fun b!5317000 () Bool)

(declare-fun e!3303595 () Bool)

(declare-fun e!3303598 () Bool)

(assert (=> b!5317000 (= e!3303595 e!3303598)))

(declare-fun res!2255511 () Bool)

(assert (=> b!5317000 (= res!2255511 (not (nullable!5140 (reg!15300 (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))))))))))

(assert (=> b!5317000 (=> (not res!2255511) (not e!3303598))))

(declare-fun call!379371 () Bool)

(declare-fun c!923894 () Bool)

(declare-fun c!923893 () Bool)

(declare-fun bm!379364 () Bool)

(assert (=> bm!379364 (= call!379371 (validRegex!6707 (ite c!923894 (reg!15300 (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))))) (ite c!923893 (regOne!30455 (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))))) (regOne!30454 (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292)))))))))))

(declare-fun b!5317001 () Bool)

(declare-fun e!3303593 () Bool)

(declare-fun call!379370 () Bool)

(assert (=> b!5317001 (= e!3303593 call!379370)))

(declare-fun b!5317002 () Bool)

(assert (=> b!5317002 (= e!3303598 call!379371)))

(declare-fun b!5317003 () Bool)

(declare-fun res!2255512 () Bool)

(declare-fun e!3303594 () Bool)

(assert (=> b!5317003 (=> res!2255512 e!3303594)))

(assert (=> b!5317003 (= res!2255512 (not ((_ is Concat!23816) (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292)))))))))

(declare-fun e!3303592 () Bool)

(assert (=> b!5317003 (= e!3303592 e!3303594)))

(declare-fun b!5317004 () Bool)

(declare-fun res!2255508 () Bool)

(declare-fun e!3303597 () Bool)

(assert (=> b!5317004 (=> (not res!2255508) (not e!3303597))))

(declare-fun call!379369 () Bool)

(assert (=> b!5317004 (= res!2255508 call!379369)))

(assert (=> b!5317004 (= e!3303592 e!3303597)))

(declare-fun b!5317005 () Bool)

(assert (=> b!5317005 (= e!3303596 e!3303595)))

(assert (=> b!5317005 (= c!923894 ((_ is Star!14971) (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))))))))

(declare-fun b!5317006 () Bool)

(assert (=> b!5317006 (= e!3303597 call!379370)))

(declare-fun bm!379365 () Bool)

(assert (=> bm!379365 (= call!379369 call!379371)))

(declare-fun b!5317007 () Bool)

(assert (=> b!5317007 (= e!3303594 e!3303593)))

(declare-fun res!2255510 () Bool)

(assert (=> b!5317007 (=> (not res!2255510) (not e!3303593))))

(assert (=> b!5317007 (= res!2255510 call!379369)))

(declare-fun b!5317008 () Bool)

(assert (=> b!5317008 (= e!3303595 e!3303592)))

(assert (=> b!5317008 (= c!923893 ((_ is Union!14971) (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))))))))

(declare-fun bm!379366 () Bool)

(assert (=> bm!379366 (= call!379370 (validRegex!6707 (ite c!923893 (regTwo!30455 (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))))) (regTwo!30454 (ite c!923663 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))))))))))

(assert (= (and d!1708155 (not res!2255509)) b!5317005))

(assert (= (and b!5317005 c!923894) b!5317000))

(assert (= (and b!5317005 (not c!923894)) b!5317008))

(assert (= (and b!5317000 res!2255511) b!5317002))

(assert (= (and b!5317008 c!923893) b!5317004))

(assert (= (and b!5317008 (not c!923893)) b!5317003))

(assert (= (and b!5317004 res!2255508) b!5317006))

(assert (= (and b!5317003 (not res!2255512)) b!5317007))

(assert (= (and b!5317007 res!2255510) b!5317001))

(assert (= (or b!5317006 b!5317001) bm!379366))

(assert (= (or b!5317004 b!5317007) bm!379365))

(assert (= (or b!5317002 bm!379365) bm!379364))

(declare-fun m!6353042 () Bool)

(assert (=> b!5317000 m!6353042))

(declare-fun m!6353044 () Bool)

(assert (=> bm!379364 m!6353044))

(declare-fun m!6353046 () Bool)

(assert (=> bm!379366 m!6353046))

(assert (=> bm!379220 d!1708155))

(declare-fun d!1708157 () Bool)

(declare-fun res!2255517 () Bool)

(declare-fun e!3303603 () Bool)

(assert (=> d!1708157 (=> res!2255517 e!3303603)))

(assert (=> d!1708157 (= res!2255517 ((_ is Nil!61089) lt!2171223))))

(assert (=> d!1708157 (= (noDuplicate!1295 lt!2171223) e!3303603)))

(declare-fun b!5317013 () Bool)

(declare-fun e!3303604 () Bool)

(assert (=> b!5317013 (= e!3303603 e!3303604)))

(declare-fun res!2255518 () Bool)

(assert (=> b!5317013 (=> (not res!2255518) (not e!3303604))))

(declare-fun contains!19707 (List!61213 Context!8710) Bool)

(assert (=> b!5317013 (= res!2255518 (not (contains!19707 (t!374420 lt!2171223) (h!67537 lt!2171223))))))

(declare-fun b!5317014 () Bool)

(assert (=> b!5317014 (= e!3303604 (noDuplicate!1295 (t!374420 lt!2171223)))))

(assert (= (and d!1708157 (not res!2255517)) b!5317013))

(assert (= (and b!5317013 res!2255518) b!5317014))

(declare-fun m!6353048 () Bool)

(assert (=> b!5317013 m!6353048))

(declare-fun m!6353050 () Bool)

(assert (=> b!5317014 m!6353050))

(assert (=> d!1707783 d!1708157))

(declare-fun d!1708159 () Bool)

(declare-fun e!3303612 () Bool)

(assert (=> d!1708159 e!3303612))

(declare-fun res!2255523 () Bool)

(assert (=> d!1708159 (=> (not res!2255523) (not e!3303612))))

(declare-fun res!2255524 () List!61213)

(assert (=> d!1708159 (= res!2255523 (noDuplicate!1295 res!2255524))))

(declare-fun e!3303613 () Bool)

(assert (=> d!1708159 e!3303613))

(assert (=> d!1708159 (= (choose!39790 z!1189) res!2255524)))

(declare-fun b!5317022 () Bool)

(declare-fun e!3303611 () Bool)

(declare-fun tp!1480713 () Bool)

(assert (=> b!5317022 (= e!3303611 tp!1480713)))

(declare-fun tp!1480712 () Bool)

(declare-fun b!5317021 () Bool)

(assert (=> b!5317021 (= e!3303613 (and (inv!80674 (h!67537 res!2255524)) e!3303611 tp!1480712))))

(declare-fun b!5317023 () Bool)

(assert (=> b!5317023 (= e!3303612 (= (content!10887 res!2255524) z!1189))))

(assert (= b!5317021 b!5317022))

(assert (= (and d!1708159 ((_ is Cons!61089) res!2255524)) b!5317021))

(assert (= (and d!1708159 res!2255523) b!5317023))

(declare-fun m!6353052 () Bool)

(assert (=> d!1708159 m!6353052))

(declare-fun m!6353054 () Bool)

(assert (=> b!5317021 m!6353054))

(declare-fun m!6353056 () Bool)

(assert (=> b!5317023 m!6353056))

(assert (=> d!1707783 d!1708159))

(declare-fun b!5317024 () Bool)

(declare-fun e!3303619 () (InoxSet Context!8710))

(declare-fun call!379374 () (InoxSet Context!8710))

(assert (=> b!5317024 (= e!3303619 call!379374)))

(declare-fun call!379373 () (InoxSet Context!8710))

(declare-fun call!379376 () List!61212)

(declare-fun bm!379367 () Bool)

(declare-fun c!923895 () Bool)

(assert (=> bm!379367 (= call!379373 (derivationStepZipperDown!419 (ite c!923895 (regOne!30455 (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))) (regOne!30454 (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343))))))) (ite c!923895 (ite c!923578 lt!2171153 (Context!8711 call!379178)) (Context!8711 call!379376)) (h!67538 s!2326)))))

(declare-fun b!5317025 () Bool)

(declare-fun e!3303616 () (InoxSet Context!8710))

(assert (=> b!5317025 (= e!3303616 call!379374)))

(declare-fun c!923899 () Bool)

(declare-fun c!923898 () Bool)

(declare-fun call!379375 () List!61212)

(declare-fun call!379372 () (InoxSet Context!8710))

(declare-fun bm!379368 () Bool)

(assert (=> bm!379368 (= call!379372 (derivationStepZipperDown!419 (ite c!923895 (regTwo!30455 (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))) (ite c!923898 (regTwo!30454 (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))) (ite c!923899 (regOne!30454 (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))) (reg!15300 (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343))))))))) (ite (or c!923895 c!923898) (ite c!923578 lt!2171153 (Context!8711 call!379178)) (Context!8711 call!379375)) (h!67538 s!2326)))))

(declare-fun bm!379369 () Bool)

(assert (=> bm!379369 (= call!379376 ($colon$colon!1390 (exprs!4855 (ite c!923578 lt!2171153 (Context!8711 call!379178))) (ite (or c!923898 c!923899) (regTwo!30454 (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))) (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343))))))))))

(declare-fun b!5317026 () Bool)

(declare-fun e!3303617 () (InoxSet Context!8710))

(declare-fun e!3303615 () (InoxSet Context!8710))

(assert (=> b!5317026 (= e!3303617 e!3303615)))

(assert (=> b!5317026 (= c!923895 ((_ is Union!14971) (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))))))

(declare-fun b!5317027 () Bool)

(declare-fun c!923896 () Bool)

(assert (=> b!5317027 (= c!923896 ((_ is Star!14971) (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))))))

(assert (=> b!5317027 (= e!3303619 e!3303616)))

(declare-fun b!5317029 () Bool)

(declare-fun e!3303618 () (InoxSet Context!8710))

(declare-fun call!379377 () (InoxSet Context!8710))

(assert (=> b!5317029 (= e!3303618 ((_ map or) call!379373 call!379377))))

(declare-fun b!5317030 () Bool)

(declare-fun e!3303614 () Bool)

(assert (=> b!5317030 (= c!923898 e!3303614)))

(declare-fun res!2255525 () Bool)

(assert (=> b!5317030 (=> (not res!2255525) (not e!3303614))))

(assert (=> b!5317030 (= res!2255525 ((_ is Concat!23816) (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))))))

(assert (=> b!5317030 (= e!3303615 e!3303618)))

(declare-fun bm!379370 () Bool)

(assert (=> bm!379370 (= call!379377 call!379372)))

(declare-fun b!5317031 () Bool)

(assert (=> b!5317031 (= e!3303614 (nullable!5140 (regOne!30454 (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343))))))))))

(declare-fun b!5317032 () Bool)

(assert (=> b!5317032 (= e!3303616 ((as const (Array Context!8710 Bool)) false))))

(declare-fun bm!379371 () Bool)

(assert (=> bm!379371 (= call!379374 call!379377)))

(declare-fun b!5317033 () Bool)

(assert (=> b!5317033 (= e!3303617 (store ((as const (Array Context!8710 Bool)) false) (ite c!923578 lt!2171153 (Context!8711 call!379178)) true))))

(declare-fun b!5317034 () Bool)

(assert (=> b!5317034 (= e!3303618 e!3303619)))

(assert (=> b!5317034 (= c!923899 ((_ is Concat!23816) (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))))))

(declare-fun bm!379372 () Bool)

(assert (=> bm!379372 (= call!379375 call!379376)))

(declare-fun c!923897 () Bool)

(declare-fun d!1708161 () Bool)

(assert (=> d!1708161 (= c!923897 (and ((_ is ElementMatch!14971) (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))) (= (c!923507 (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))))) (h!67538 s!2326))))))

(assert (=> d!1708161 (= (derivationStepZipperDown!419 (ite c!923578 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343))))) (ite c!923578 lt!2171153 (Context!8711 call!379178)) (h!67538 s!2326)) e!3303617)))

(declare-fun b!5317028 () Bool)

(assert (=> b!5317028 (= e!3303615 ((_ map or) call!379373 call!379372))))

(assert (= (and d!1708161 c!923897) b!5317033))

(assert (= (and d!1708161 (not c!923897)) b!5317026))

(assert (= (and b!5317026 c!923895) b!5317028))

(assert (= (and b!5317026 (not c!923895)) b!5317030))

(assert (= (and b!5317030 res!2255525) b!5317031))

(assert (= (and b!5317030 c!923898) b!5317029))

(assert (= (and b!5317030 (not c!923898)) b!5317034))

(assert (= (and b!5317034 c!923899) b!5317024))

(assert (= (and b!5317034 (not c!923899)) b!5317027))

(assert (= (and b!5317027 c!923896) b!5317025))

(assert (= (and b!5317027 (not c!923896)) b!5317032))

(assert (= (or b!5317024 b!5317025) bm!379372))

(assert (= (or b!5317024 b!5317025) bm!379371))

(assert (= (or b!5317029 bm!379372) bm!379369))

(assert (= (or b!5317029 bm!379371) bm!379370))

(assert (= (or b!5317028 bm!379370) bm!379368))

(assert (= (or b!5317028 b!5317029) bm!379367))

(declare-fun m!6353058 () Bool)

(assert (=> b!5317033 m!6353058))

(declare-fun m!6353060 () Bool)

(assert (=> bm!379368 m!6353060))

(declare-fun m!6353062 () Bool)

(assert (=> b!5317031 m!6353062))

(declare-fun m!6353064 () Bool)

(assert (=> bm!379369 m!6353064))

(declare-fun m!6353066 () Bool)

(assert (=> bm!379367 m!6353066))

(assert (=> bm!379169 d!1708161))

(declare-fun d!1708163 () Bool)

(assert (=> d!1708163 (= (nullable!5140 (h!67536 (exprs!4855 lt!2171153))) (nullableFct!1492 (h!67536 (exprs!4855 lt!2171153))))))

(declare-fun bs!1232510 () Bool)

(assert (= bs!1232510 d!1708163))

(declare-fun m!6353068 () Bool)

(assert (=> bs!1232510 m!6353068))

(assert (=> b!5315790 d!1708163))

(assert (=> b!5316115 d!1707805))

(declare-fun bs!1232511 () Bool)

(declare-fun d!1708165 () Bool)

(assert (= bs!1232511 (and d!1708165 d!1707797)))

(declare-fun lambda!271089 () Int)

(assert (=> bs!1232511 (= lambda!271089 lambda!271032)))

(declare-fun bs!1232512 () Bool)

(assert (= bs!1232512 (and d!1708165 d!1707767)))

(assert (=> bs!1232512 (= lambda!271089 lambda!271016)))

(declare-fun bs!1232513 () Bool)

(assert (= bs!1232513 (and d!1708165 d!1707805)))

(assert (=> bs!1232513 (= lambda!271089 lambda!271035)))

(declare-fun bs!1232514 () Bool)

(assert (= bs!1232514 (and d!1708165 d!1708099)))

(assert (=> bs!1232514 (= lambda!271089 lambda!271076)))

(declare-fun bs!1232515 () Bool)

(assert (= bs!1232515 (and d!1708165 d!1708151)))

(assert (=> bs!1232515 (= lambda!271089 lambda!271088)))

(declare-fun bs!1232516 () Bool)

(assert (= bs!1232516 (and d!1708165 d!1707793)))

(assert (=> bs!1232516 (= lambda!271089 lambda!271026)))

(declare-fun bs!1232517 () Bool)

(assert (= bs!1232517 (and d!1708165 d!1707795)))

(assert (=> bs!1232517 (= lambda!271089 lambda!271029)))

(declare-fun bs!1232518 () Bool)

(assert (= bs!1232518 (and d!1708165 d!1708027)))

(assert (=> bs!1232518 (= lambda!271089 lambda!271070)))

(declare-fun bs!1232519 () Bool)

(assert (= bs!1232519 (and d!1708165 d!1708023)))

(assert (=> bs!1232519 (= lambda!271089 lambda!271069)))

(declare-fun lt!2171276 () List!61212)

(assert (=> d!1708165 (forall!14391 lt!2171276 lambda!271089)))

(declare-fun e!3303620 () List!61212)

(assert (=> d!1708165 (= lt!2171276 e!3303620)))

(declare-fun c!923900 () Bool)

(assert (=> d!1708165 (= c!923900 ((_ is Cons!61089) (t!374420 zl!343)))))

(assert (=> d!1708165 (= (unfocusZipperList!413 (t!374420 zl!343)) lt!2171276)))

(declare-fun b!5317035 () Bool)

(assert (=> b!5317035 (= e!3303620 (Cons!61088 (generalisedConcat!640 (exprs!4855 (h!67537 (t!374420 zl!343)))) (unfocusZipperList!413 (t!374420 (t!374420 zl!343)))))))

(declare-fun b!5317036 () Bool)

(assert (=> b!5317036 (= e!3303620 Nil!61088)))

(assert (= (and d!1708165 c!923900) b!5317035))

(assert (= (and d!1708165 (not c!923900)) b!5317036))

(declare-fun m!6353070 () Bool)

(assert (=> d!1708165 m!6353070))

(declare-fun m!6353072 () Bool)

(assert (=> b!5317035 m!6353072))

(declare-fun m!6353074 () Bool)

(assert (=> b!5317035 m!6353074))

(assert (=> b!5316115 d!1708165))

(declare-fun b!5317037 () Bool)

(declare-fun e!3303627 () Bool)

(declare-fun lt!2171277 () Bool)

(assert (=> b!5317037 (= e!3303627 (not lt!2171277))))

(declare-fun b!5317038 () Bool)

(declare-fun res!2255531 () Bool)

(declare-fun e!3303623 () Bool)

(assert (=> b!5317038 (=> res!2255531 e!3303623)))

(declare-fun e!3303626 () Bool)

(assert (=> b!5317038 (= res!2255531 e!3303626)))

(declare-fun res!2255528 () Bool)

(assert (=> b!5317038 (=> (not res!2255528) (not e!3303626))))

(assert (=> b!5317038 (= res!2255528 lt!2171277)))

(declare-fun b!5317039 () Bool)

(declare-fun e!3303625 () Bool)

(assert (=> b!5317039 (= e!3303623 e!3303625)))

(declare-fun res!2255533 () Bool)

(assert (=> b!5317039 (=> (not res!2255533) (not e!3303625))))

(assert (=> b!5317039 (= res!2255533 (not lt!2171277))))

(declare-fun b!5317040 () Bool)

(declare-fun e!3303622 () Bool)

(assert (=> b!5317040 (= e!3303622 (nullable!5140 (derivativeStep!4161 r!7292 (head!11398 s!2326))))))

(declare-fun b!5317041 () Bool)

(assert (=> b!5317041 (= e!3303622 (matchR!7156 (derivativeStep!4161 (derivativeStep!4161 r!7292 (head!11398 s!2326)) (head!11398 (tail!10495 s!2326))) (tail!10495 (tail!10495 s!2326))))))

(declare-fun b!5317042 () Bool)

(declare-fun res!2255529 () Bool)

(declare-fun e!3303621 () Bool)

(assert (=> b!5317042 (=> res!2255529 e!3303621)))

(assert (=> b!5317042 (= res!2255529 (not (isEmpty!33059 (tail!10495 (tail!10495 s!2326)))))))

(declare-fun d!1708167 () Bool)

(declare-fun e!3303624 () Bool)

(assert (=> d!1708167 e!3303624))

(declare-fun c!923902 () Bool)

(assert (=> d!1708167 (= c!923902 ((_ is EmptyExpr!14971) (derivativeStep!4161 r!7292 (head!11398 s!2326))))))

(assert (=> d!1708167 (= lt!2171277 e!3303622)))

(declare-fun c!923901 () Bool)

(assert (=> d!1708167 (= c!923901 (isEmpty!33059 (tail!10495 s!2326)))))

(assert (=> d!1708167 (validRegex!6707 (derivativeStep!4161 r!7292 (head!11398 s!2326)))))

(assert (=> d!1708167 (= (matchR!7156 (derivativeStep!4161 r!7292 (head!11398 s!2326)) (tail!10495 s!2326)) lt!2171277)))

(declare-fun b!5317043 () Bool)

(declare-fun res!2255527 () Bool)

(assert (=> b!5317043 (=> res!2255527 e!3303623)))

(assert (=> b!5317043 (= res!2255527 (not ((_ is ElementMatch!14971) (derivativeStep!4161 r!7292 (head!11398 s!2326)))))))

(assert (=> b!5317043 (= e!3303627 e!3303623)))

(declare-fun b!5317044 () Bool)

(assert (=> b!5317044 (= e!3303621 (not (= (head!11398 (tail!10495 s!2326)) (c!923507 (derivativeStep!4161 r!7292 (head!11398 s!2326))))))))

(declare-fun b!5317045 () Bool)

(assert (=> b!5317045 (= e!3303624 e!3303627)))

(declare-fun c!923903 () Bool)

(assert (=> b!5317045 (= c!923903 ((_ is EmptyLang!14971) (derivativeStep!4161 r!7292 (head!11398 s!2326))))))

(declare-fun b!5317046 () Bool)

(assert (=> b!5317046 (= e!3303626 (= (head!11398 (tail!10495 s!2326)) (c!923507 (derivativeStep!4161 r!7292 (head!11398 s!2326)))))))

(declare-fun b!5317047 () Bool)

(declare-fun call!379378 () Bool)

(assert (=> b!5317047 (= e!3303624 (= lt!2171277 call!379378))))

(declare-fun b!5317048 () Bool)

(declare-fun res!2255530 () Bool)

(assert (=> b!5317048 (=> (not res!2255530) (not e!3303626))))

(assert (=> b!5317048 (= res!2255530 (isEmpty!33059 (tail!10495 (tail!10495 s!2326))))))

(declare-fun b!5317049 () Bool)

(assert (=> b!5317049 (= e!3303625 e!3303621)))

(declare-fun res!2255526 () Bool)

(assert (=> b!5317049 (=> res!2255526 e!3303621)))

(assert (=> b!5317049 (= res!2255526 call!379378)))

(declare-fun b!5317050 () Bool)

(declare-fun res!2255532 () Bool)

(assert (=> b!5317050 (=> (not res!2255532) (not e!3303626))))

(assert (=> b!5317050 (= res!2255532 (not call!379378))))

(declare-fun bm!379373 () Bool)

(assert (=> bm!379373 (= call!379378 (isEmpty!33059 (tail!10495 s!2326)))))

(assert (= (and d!1708167 c!923901) b!5317040))

(assert (= (and d!1708167 (not c!923901)) b!5317041))

(assert (= (and d!1708167 c!923902) b!5317047))

(assert (= (and d!1708167 (not c!923902)) b!5317045))

(assert (= (and b!5317045 c!923903) b!5317037))

(assert (= (and b!5317045 (not c!923903)) b!5317043))

(assert (= (and b!5317043 (not res!2255527)) b!5317038))

(assert (= (and b!5317038 res!2255528) b!5317050))

(assert (= (and b!5317050 res!2255532) b!5317048))

(assert (= (and b!5317048 res!2255530) b!5317046))

(assert (= (and b!5317038 (not res!2255531)) b!5317039))

(assert (= (and b!5317039 res!2255533) b!5317049))

(assert (= (and b!5317049 (not res!2255526)) b!5317042))

(assert (= (and b!5317042 (not res!2255529)) b!5317044))

(assert (= (or b!5317047 b!5317050 b!5317049) bm!379373))

(assert (=> bm!379373 m!6352162))

(assert (=> bm!379373 m!6352168))

(assert (=> d!1708167 m!6352162))

(assert (=> d!1708167 m!6352168))

(assert (=> d!1708167 m!6352160))

(declare-fun m!6353076 () Bool)

(assert (=> d!1708167 m!6353076))

(assert (=> b!5317041 m!6352162))

(declare-fun m!6353078 () Bool)

(assert (=> b!5317041 m!6353078))

(assert (=> b!5317041 m!6352160))

(assert (=> b!5317041 m!6353078))

(declare-fun m!6353080 () Bool)

(assert (=> b!5317041 m!6353080))

(assert (=> b!5317041 m!6352162))

(declare-fun m!6353082 () Bool)

(assert (=> b!5317041 m!6353082))

(assert (=> b!5317041 m!6353080))

(assert (=> b!5317041 m!6353082))

(declare-fun m!6353084 () Bool)

(assert (=> b!5317041 m!6353084))

(assert (=> b!5317040 m!6352160))

(declare-fun m!6353086 () Bool)

(assert (=> b!5317040 m!6353086))

(assert (=> b!5317042 m!6352162))

(assert (=> b!5317042 m!6353082))

(assert (=> b!5317042 m!6353082))

(declare-fun m!6353088 () Bool)

(assert (=> b!5317042 m!6353088))

(assert (=> b!5317046 m!6352162))

(assert (=> b!5317046 m!6353078))

(assert (=> b!5317048 m!6352162))

(assert (=> b!5317048 m!6353082))

(assert (=> b!5317048 m!6353082))

(assert (=> b!5317048 m!6353088))

(assert (=> b!5317044 m!6352162))

(assert (=> b!5317044 m!6353078))

(assert (=> b!5315984 d!1708167))

(declare-fun bm!379382 () Bool)

(declare-fun call!379388 () Regex!14971)

(declare-fun call!379389 () Regex!14971)

(assert (=> bm!379382 (= call!379388 call!379389)))

(declare-fun b!5317071 () Bool)

(declare-fun e!3303639 () Regex!14971)

(declare-fun e!3303638 () Regex!14971)

(assert (=> b!5317071 (= e!3303639 e!3303638)))

(declare-fun c!923917 () Bool)

(assert (=> b!5317071 (= c!923917 ((_ is ElementMatch!14971) r!7292))))

(declare-fun bm!379383 () Bool)

(declare-fun call!379390 () Regex!14971)

(assert (=> bm!379383 (= call!379390 call!379388)))

(declare-fun b!5317072 () Bool)

(declare-fun c!923916 () Bool)

(assert (=> b!5317072 (= c!923916 ((_ is Union!14971) r!7292))))

(declare-fun e!3303641 () Regex!14971)

(assert (=> b!5317072 (= e!3303638 e!3303641)))

(declare-fun b!5317073 () Bool)

(declare-fun e!3303642 () Regex!14971)

(assert (=> b!5317073 (= e!3303642 (Union!14971 (Concat!23816 call!379390 (regTwo!30454 r!7292)) EmptyLang!14971))))

(declare-fun d!1708169 () Bool)

(declare-fun lt!2171280 () Regex!14971)

(assert (=> d!1708169 (validRegex!6707 lt!2171280)))

(assert (=> d!1708169 (= lt!2171280 e!3303639)))

(declare-fun c!923914 () Bool)

(assert (=> d!1708169 (= c!923914 (or ((_ is EmptyExpr!14971) r!7292) ((_ is EmptyLang!14971) r!7292)))))

(assert (=> d!1708169 (validRegex!6707 r!7292)))

(assert (=> d!1708169 (= (derivativeStep!4161 r!7292 (head!11398 s!2326)) lt!2171280)))

(declare-fun b!5317074 () Bool)

(declare-fun c!923918 () Bool)

(assert (=> b!5317074 (= c!923918 (nullable!5140 (regOne!30454 r!7292)))))

(declare-fun e!3303640 () Regex!14971)

(assert (=> b!5317074 (= e!3303640 e!3303642)))

(declare-fun b!5317075 () Bool)

(assert (=> b!5317075 (= e!3303638 (ite (= (head!11398 s!2326) (c!923507 r!7292)) EmptyExpr!14971 EmptyLang!14971))))

(declare-fun b!5317076 () Bool)

(declare-fun call!379387 () Regex!14971)

(assert (=> b!5317076 (= e!3303642 (Union!14971 (Concat!23816 call!379387 (regTwo!30454 r!7292)) call!379390))))

(declare-fun c!923915 () Bool)

(declare-fun bm!379384 () Bool)

(assert (=> bm!379384 (= call!379389 (derivativeStep!4161 (ite c!923916 (regTwo!30455 r!7292) (ite c!923915 (reg!15300 r!7292) (ite c!923918 (regTwo!30454 r!7292) (regOne!30454 r!7292)))) (head!11398 s!2326)))))

(declare-fun b!5317077 () Bool)

(assert (=> b!5317077 (= e!3303641 (Union!14971 call!379387 call!379389))))

(declare-fun b!5317078 () Bool)

(assert (=> b!5317078 (= e!3303639 EmptyLang!14971)))

(declare-fun b!5317079 () Bool)

(assert (=> b!5317079 (= e!3303640 (Concat!23816 call!379388 r!7292))))

(declare-fun bm!379385 () Bool)

(assert (=> bm!379385 (= call!379387 (derivativeStep!4161 (ite c!923916 (regOne!30455 r!7292) (regOne!30454 r!7292)) (head!11398 s!2326)))))

(declare-fun b!5317080 () Bool)

(assert (=> b!5317080 (= e!3303641 e!3303640)))

(assert (=> b!5317080 (= c!923915 ((_ is Star!14971) r!7292))))

(assert (= (and d!1708169 c!923914) b!5317078))

(assert (= (and d!1708169 (not c!923914)) b!5317071))

(assert (= (and b!5317071 c!923917) b!5317075))

(assert (= (and b!5317071 (not c!923917)) b!5317072))

(assert (= (and b!5317072 c!923916) b!5317077))

(assert (= (and b!5317072 (not c!923916)) b!5317080))

(assert (= (and b!5317080 c!923915) b!5317079))

(assert (= (and b!5317080 (not c!923915)) b!5317074))

(assert (= (and b!5317074 c!923918) b!5317076))

(assert (= (and b!5317074 (not c!923918)) b!5317073))

(assert (= (or b!5317076 b!5317073) bm!379383))

(assert (= (or b!5317079 bm!379383) bm!379382))

(assert (= (or b!5317077 bm!379382) bm!379384))

(assert (= (or b!5317077 b!5317076) bm!379385))

(declare-fun m!6353090 () Bool)

(assert (=> d!1708169 m!6353090))

(assert (=> d!1708169 m!6351886))

(assert (=> b!5317074 m!6352872))

(assert (=> bm!379384 m!6352158))

(declare-fun m!6353092 () Bool)

(assert (=> bm!379384 m!6353092))

(assert (=> bm!379385 m!6352158))

(declare-fun m!6353094 () Bool)

(assert (=> bm!379385 m!6353094))

(assert (=> b!5315984 d!1708169))

(assert (=> b!5315984 d!1707993))

(assert (=> b!5315984 d!1708037))

(declare-fun d!1708171 () Bool)

(assert (=> d!1708171 (= (isEmpty!33060 (findConcatSeparation!1496 (regOne!30454 r!7292) (regTwo!30454 r!7292) Nil!61090 s!2326 s!2326)) (not ((_ is Some!15081) (findConcatSeparation!1496 (regOne!30454 r!7292) (regTwo!30454 r!7292) Nil!61090 s!2326 s!2326))))))

(assert (=> d!1707781 d!1708171))

(declare-fun d!1708173 () Bool)

(declare-fun c!923921 () Bool)

(assert (=> d!1708173 (= c!923921 ((_ is Nil!61089) lt!2171223))))

(declare-fun e!3303645 () (InoxSet Context!8710))

(assert (=> d!1708173 (= (content!10887 lt!2171223) e!3303645)))

(declare-fun b!5317085 () Bool)

(assert (=> b!5317085 (= e!3303645 ((as const (Array Context!8710 Bool)) false))))

(declare-fun b!5317086 () Bool)

(assert (=> b!5317086 (= e!3303645 ((_ map or) (store ((as const (Array Context!8710 Bool)) false) (h!67537 lt!2171223) true) (content!10887 (t!374420 lt!2171223))))))

(assert (= (and d!1708173 c!923921) b!5317085))

(assert (= (and d!1708173 (not c!923921)) b!5317086))

(declare-fun m!6353096 () Bool)

(assert (=> b!5317086 m!6353096))

(declare-fun m!6353098 () Bool)

(assert (=> b!5317086 m!6353098))

(assert (=> b!5316073 d!1708173))

(declare-fun d!1708175 () Bool)

(assert (=> d!1708175 (= (nullable!5140 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))) (nullableFct!1492 (h!67536 (exprs!4855 (Context!8711 (Cons!61088 (h!67536 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343)))))))))))

(declare-fun bs!1232520 () Bool)

(assert (= bs!1232520 d!1708175))

(declare-fun m!6353100 () Bool)

(assert (=> bs!1232520 m!6353100))

(assert (=> b!5315757 d!1708175))

(declare-fun bs!1232521 () Bool)

(declare-fun d!1708177 () Bool)

(assert (= bs!1232521 (and d!1708177 d!1708033)))

(declare-fun lambda!271090 () Int)

(assert (=> bs!1232521 (= lambda!271090 lambda!271073)))

(assert (=> d!1708177 (= (nullableZipper!1340 ((_ map or) lt!2171148 lt!2171145)) (exists!2007 ((_ map or) lt!2171148 lt!2171145) lambda!271090))))

(declare-fun bs!1232522 () Bool)

(assert (= bs!1232522 d!1708177))

(declare-fun m!6353102 () Bool)

(assert (=> bs!1232522 m!6353102))

(assert (=> b!5316079 d!1708177))

(declare-fun b!5317087 () Bool)

(declare-fun e!3303651 () (InoxSet Context!8710))

(declare-fun call!379393 () (InoxSet Context!8710))

(assert (=> b!5317087 (= e!3303651 call!379393)))

(declare-fun bm!379386 () Bool)

(declare-fun c!923922 () Bool)

(declare-fun call!379395 () List!61212)

(declare-fun call!379392 () (InoxSet Context!8710))

(assert (=> bm!379386 (= call!379392 (derivationStepZipperDown!419 (ite c!923922 (regOne!30455 (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343)))))))) (regOne!30454 (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343))))))))) (ite c!923922 (ite (or c!923578 c!923581) lt!2171153 (Context!8711 call!379177)) (Context!8711 call!379395)) (h!67538 s!2326)))))

(declare-fun b!5317088 () Bool)

(declare-fun e!3303648 () (InoxSet Context!8710))

(assert (=> b!5317088 (= e!3303648 call!379393)))

(declare-fun call!379394 () List!61212)

(declare-fun c!923925 () Bool)

(declare-fun c!923926 () Bool)

(declare-fun bm!379387 () Bool)

(declare-fun call!379391 () (InoxSet Context!8710))

(assert (=> bm!379387 (= call!379391 (derivationStepZipperDown!419 (ite c!923922 (regTwo!30455 (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343)))))))) (ite c!923925 (regTwo!30454 (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343)))))))) (ite c!923926 (regOne!30454 (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343)))))))) (reg!15300 (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343))))))))))) (ite (or c!923922 c!923925) (ite (or c!923578 c!923581) lt!2171153 (Context!8711 call!379177)) (Context!8711 call!379394)) (h!67538 s!2326)))))

(declare-fun bm!379388 () Bool)

(assert (=> bm!379388 (= call!379395 ($colon$colon!1390 (exprs!4855 (ite (or c!923578 c!923581) lt!2171153 (Context!8711 call!379177))) (ite (or c!923925 c!923926) (regTwo!30454 (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343)))))))) (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343))))))))))))

(declare-fun b!5317089 () Bool)

(declare-fun e!3303649 () (InoxSet Context!8710))

(declare-fun e!3303647 () (InoxSet Context!8710))

(assert (=> b!5317089 (= e!3303649 e!3303647)))

(assert (=> b!5317089 (= c!923922 ((_ is Union!14971) (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343)))))))))))

(declare-fun b!5317090 () Bool)

(declare-fun c!923923 () Bool)

(assert (=> b!5317090 (= c!923923 ((_ is Star!14971) (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343)))))))))))

(assert (=> b!5317090 (= e!3303651 e!3303648)))

(declare-fun b!5317092 () Bool)

(declare-fun e!3303650 () (InoxSet Context!8710))

(declare-fun call!379396 () (InoxSet Context!8710))

(assert (=> b!5317092 (= e!3303650 ((_ map or) call!379392 call!379396))))

(declare-fun b!5317093 () Bool)

(declare-fun e!3303646 () Bool)

(assert (=> b!5317093 (= c!923925 e!3303646)))

(declare-fun res!2255534 () Bool)

(assert (=> b!5317093 (=> (not res!2255534) (not e!3303646))))

(assert (=> b!5317093 (= res!2255534 ((_ is Concat!23816) (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343)))))))))))

(assert (=> b!5317093 (= e!3303647 e!3303650)))

(declare-fun bm!379389 () Bool)

(assert (=> bm!379389 (= call!379396 call!379391)))

(declare-fun b!5317094 () Bool)

(assert (=> b!5317094 (= e!3303646 (nullable!5140 (regOne!30454 (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343))))))))))))

(declare-fun b!5317095 () Bool)

(assert (=> b!5317095 (= e!3303648 ((as const (Array Context!8710 Bool)) false))))

(declare-fun bm!379390 () Bool)

(assert (=> bm!379390 (= call!379393 call!379396)))

(declare-fun b!5317096 () Bool)

(assert (=> b!5317096 (= e!3303649 (store ((as const (Array Context!8710 Bool)) false) (ite (or c!923578 c!923581) lt!2171153 (Context!8711 call!379177)) true))))

(declare-fun b!5317097 () Bool)

(assert (=> b!5317097 (= e!3303650 e!3303651)))

(assert (=> b!5317097 (= c!923926 ((_ is Concat!23816) (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343)))))))))))

(declare-fun bm!379391 () Bool)

(assert (=> bm!379391 (= call!379394 call!379395)))

(declare-fun c!923924 () Bool)

(declare-fun d!1708179 () Bool)

(assert (=> d!1708179 (= c!923924 (and ((_ is ElementMatch!14971) (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343)))))))) (= (c!923507 (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343)))))))) (h!67538 s!2326))))))

(assert (=> d!1708179 (= (derivationStepZipperDown!419 (ite c!923578 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923581 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923582 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343))))))) (ite (or c!923578 c!923581) lt!2171153 (Context!8711 call!379177)) (h!67538 s!2326)) e!3303649)))

(declare-fun b!5317091 () Bool)

(assert (=> b!5317091 (= e!3303647 ((_ map or) call!379392 call!379391))))

(assert (= (and d!1708179 c!923924) b!5317096))

(assert (= (and d!1708179 (not c!923924)) b!5317089))

(assert (= (and b!5317089 c!923922) b!5317091))

(assert (= (and b!5317089 (not c!923922)) b!5317093))

(assert (= (and b!5317093 res!2255534) b!5317094))

(assert (= (and b!5317093 c!923925) b!5317092))

(assert (= (and b!5317093 (not c!923925)) b!5317097))

(assert (= (and b!5317097 c!923926) b!5317087))

(assert (= (and b!5317097 (not c!923926)) b!5317090))

(assert (= (and b!5317090 c!923923) b!5317088))

(assert (= (and b!5317090 (not c!923923)) b!5317095))

(assert (= (or b!5317087 b!5317088) bm!379391))

(assert (= (or b!5317087 b!5317088) bm!379390))

(assert (= (or b!5317092 bm!379391) bm!379388))

(assert (= (or b!5317092 bm!379390) bm!379389))

(assert (= (or b!5317091 bm!379389) bm!379387))

(assert (= (or b!5317091 b!5317092) bm!379386))

(declare-fun m!6353104 () Bool)

(assert (=> b!5317096 m!6353104))

(declare-fun m!6353106 () Bool)

(assert (=> bm!379387 m!6353106))

(declare-fun m!6353108 () Bool)

(assert (=> b!5317094 m!6353108))

(declare-fun m!6353110 () Bool)

(assert (=> bm!379388 m!6353110))

(declare-fun m!6353112 () Bool)

(assert (=> bm!379386 m!6353112))

(assert (=> bm!379170 d!1708179))

(declare-fun d!1708181 () Bool)

(declare-fun res!2255536 () Bool)

(declare-fun e!3303656 () Bool)

(assert (=> d!1708181 (=> res!2255536 e!3303656)))

(assert (=> d!1708181 (= res!2255536 ((_ is ElementMatch!14971) lt!2171229))))

(assert (=> d!1708181 (= (validRegex!6707 lt!2171229) e!3303656)))

(declare-fun b!5317098 () Bool)

(declare-fun e!3303655 () Bool)

(declare-fun e!3303658 () Bool)

(assert (=> b!5317098 (= e!3303655 e!3303658)))

(declare-fun res!2255538 () Bool)

(assert (=> b!5317098 (= res!2255538 (not (nullable!5140 (reg!15300 lt!2171229))))))

(assert (=> b!5317098 (=> (not res!2255538) (not e!3303658))))

(declare-fun c!923928 () Bool)

(declare-fun c!923927 () Bool)

(declare-fun bm!379392 () Bool)

(declare-fun call!379399 () Bool)

(assert (=> bm!379392 (= call!379399 (validRegex!6707 (ite c!923928 (reg!15300 lt!2171229) (ite c!923927 (regOne!30455 lt!2171229) (regOne!30454 lt!2171229)))))))

(declare-fun b!5317099 () Bool)

(declare-fun e!3303653 () Bool)

(declare-fun call!379398 () Bool)

(assert (=> b!5317099 (= e!3303653 call!379398)))

(declare-fun b!5317100 () Bool)

(assert (=> b!5317100 (= e!3303658 call!379399)))

(declare-fun b!5317101 () Bool)

(declare-fun res!2255539 () Bool)

(declare-fun e!3303654 () Bool)

(assert (=> b!5317101 (=> res!2255539 e!3303654)))

(assert (=> b!5317101 (= res!2255539 (not ((_ is Concat!23816) lt!2171229)))))

(declare-fun e!3303652 () Bool)

(assert (=> b!5317101 (= e!3303652 e!3303654)))

(declare-fun b!5317102 () Bool)

(declare-fun res!2255535 () Bool)

(declare-fun e!3303657 () Bool)

(assert (=> b!5317102 (=> (not res!2255535) (not e!3303657))))

(declare-fun call!379397 () Bool)

(assert (=> b!5317102 (= res!2255535 call!379397)))

(assert (=> b!5317102 (= e!3303652 e!3303657)))

(declare-fun b!5317103 () Bool)

(assert (=> b!5317103 (= e!3303656 e!3303655)))

(assert (=> b!5317103 (= c!923928 ((_ is Star!14971) lt!2171229))))

(declare-fun b!5317104 () Bool)

(assert (=> b!5317104 (= e!3303657 call!379398)))

(declare-fun bm!379393 () Bool)

(assert (=> bm!379393 (= call!379397 call!379399)))

(declare-fun b!5317105 () Bool)

(assert (=> b!5317105 (= e!3303654 e!3303653)))

(declare-fun res!2255537 () Bool)

(assert (=> b!5317105 (=> (not res!2255537) (not e!3303653))))

(assert (=> b!5317105 (= res!2255537 call!379397)))

(declare-fun b!5317106 () Bool)

(assert (=> b!5317106 (= e!3303655 e!3303652)))

(assert (=> b!5317106 (= c!923927 ((_ is Union!14971) lt!2171229))))

(declare-fun bm!379394 () Bool)

(assert (=> bm!379394 (= call!379398 (validRegex!6707 (ite c!923927 (regTwo!30455 lt!2171229) (regTwo!30454 lt!2171229))))))

(assert (= (and d!1708181 (not res!2255536)) b!5317103))

(assert (= (and b!5317103 c!923928) b!5317098))

(assert (= (and b!5317103 (not c!923928)) b!5317106))

(assert (= (and b!5317098 res!2255538) b!5317100))

(assert (= (and b!5317106 c!923927) b!5317102))

(assert (= (and b!5317106 (not c!923927)) b!5317101))

(assert (= (and b!5317102 res!2255535) b!5317104))

(assert (= (and b!5317101 (not res!2255539)) b!5317105))

(assert (= (and b!5317105 res!2255537) b!5317099))

(assert (= (or b!5317104 b!5317099) bm!379394))

(assert (= (or b!5317102 b!5317105) bm!379393))

(assert (= (or b!5317100 bm!379393) bm!379392))

(declare-fun m!6353114 () Bool)

(assert (=> b!5317098 m!6353114))

(declare-fun m!6353116 () Bool)

(assert (=> bm!379392 m!6353116))

(declare-fun m!6353118 () Bool)

(assert (=> bm!379394 m!6353118))

(assert (=> d!1707795 d!1708181))

(declare-fun d!1708183 () Bool)

(declare-fun res!2255540 () Bool)

(declare-fun e!3303659 () Bool)

(assert (=> d!1708183 (=> res!2255540 e!3303659)))

(assert (=> d!1708183 (= res!2255540 ((_ is Nil!61088) (unfocusZipperList!413 zl!343)))))

(assert (=> d!1708183 (= (forall!14391 (unfocusZipperList!413 zl!343) lambda!271029) e!3303659)))

(declare-fun b!5317107 () Bool)

(declare-fun e!3303660 () Bool)

(assert (=> b!5317107 (= e!3303659 e!3303660)))

(declare-fun res!2255541 () Bool)

(assert (=> b!5317107 (=> (not res!2255541) (not e!3303660))))

(assert (=> b!5317107 (= res!2255541 (dynLambda!24147 lambda!271029 (h!67536 (unfocusZipperList!413 zl!343))))))

(declare-fun b!5317108 () Bool)

(assert (=> b!5317108 (= e!3303660 (forall!14391 (t!374419 (unfocusZipperList!413 zl!343)) lambda!271029))))

(assert (= (and d!1708183 (not res!2255540)) b!5317107))

(assert (= (and b!5317107 res!2255541) b!5317108))

(declare-fun b_lambda!204551 () Bool)

(assert (=> (not b_lambda!204551) (not b!5317107)))

(declare-fun m!6353120 () Bool)

(assert (=> b!5317107 m!6353120))

(declare-fun m!6353122 () Bool)

(assert (=> b!5317108 m!6353122))

(assert (=> d!1707795 d!1708183))

(declare-fun d!1708185 () Bool)

(declare-fun res!2255543 () Bool)

(declare-fun e!3303665 () Bool)

(assert (=> d!1708185 (=> res!2255543 e!3303665)))

(assert (=> d!1708185 (= res!2255543 ((_ is ElementMatch!14971) lt!2171235))))

(assert (=> d!1708185 (= (validRegex!6707 lt!2171235) e!3303665)))

(declare-fun b!5317109 () Bool)

(declare-fun e!3303664 () Bool)

(declare-fun e!3303667 () Bool)

(assert (=> b!5317109 (= e!3303664 e!3303667)))

(declare-fun res!2255545 () Bool)

(assert (=> b!5317109 (= res!2255545 (not (nullable!5140 (reg!15300 lt!2171235))))))

(assert (=> b!5317109 (=> (not res!2255545) (not e!3303667))))

(declare-fun c!923929 () Bool)

(declare-fun bm!379395 () Bool)

(declare-fun c!923930 () Bool)

(declare-fun call!379402 () Bool)

(assert (=> bm!379395 (= call!379402 (validRegex!6707 (ite c!923930 (reg!15300 lt!2171235) (ite c!923929 (regOne!30455 lt!2171235) (regOne!30454 lt!2171235)))))))

(declare-fun b!5317110 () Bool)

(declare-fun e!3303662 () Bool)

(declare-fun call!379401 () Bool)

(assert (=> b!5317110 (= e!3303662 call!379401)))

(declare-fun b!5317111 () Bool)

(assert (=> b!5317111 (= e!3303667 call!379402)))

(declare-fun b!5317112 () Bool)

(declare-fun res!2255546 () Bool)

(declare-fun e!3303663 () Bool)

(assert (=> b!5317112 (=> res!2255546 e!3303663)))

(assert (=> b!5317112 (= res!2255546 (not ((_ is Concat!23816) lt!2171235)))))

(declare-fun e!3303661 () Bool)

(assert (=> b!5317112 (= e!3303661 e!3303663)))

(declare-fun b!5317113 () Bool)

(declare-fun res!2255542 () Bool)

(declare-fun e!3303666 () Bool)

(assert (=> b!5317113 (=> (not res!2255542) (not e!3303666))))

(declare-fun call!379400 () Bool)

(assert (=> b!5317113 (= res!2255542 call!379400)))

(assert (=> b!5317113 (= e!3303661 e!3303666)))

(declare-fun b!5317114 () Bool)

(assert (=> b!5317114 (= e!3303665 e!3303664)))

(assert (=> b!5317114 (= c!923930 ((_ is Star!14971) lt!2171235))))

(declare-fun b!5317115 () Bool)

(assert (=> b!5317115 (= e!3303666 call!379401)))

(declare-fun bm!379396 () Bool)

(assert (=> bm!379396 (= call!379400 call!379402)))

(declare-fun b!5317116 () Bool)

(assert (=> b!5317116 (= e!3303663 e!3303662)))

(declare-fun res!2255544 () Bool)

(assert (=> b!5317116 (=> (not res!2255544) (not e!3303662))))

(assert (=> b!5317116 (= res!2255544 call!379400)))

(declare-fun b!5317117 () Bool)

(assert (=> b!5317117 (= e!3303664 e!3303661)))

(assert (=> b!5317117 (= c!923929 ((_ is Union!14971) lt!2171235))))

(declare-fun bm!379397 () Bool)

(assert (=> bm!379397 (= call!379401 (validRegex!6707 (ite c!923929 (regTwo!30455 lt!2171235) (regTwo!30454 lt!2171235))))))

(assert (= (and d!1708185 (not res!2255543)) b!5317114))

(assert (= (and b!5317114 c!923930) b!5317109))

(assert (= (and b!5317114 (not c!923930)) b!5317117))

(assert (= (and b!5317109 res!2255545) b!5317111))

(assert (= (and b!5317117 c!923929) b!5317113))

(assert (= (and b!5317117 (not c!923929)) b!5317112))

(assert (= (and b!5317113 res!2255542) b!5317115))

(assert (= (and b!5317112 (not res!2255546)) b!5317116))

(assert (= (and b!5317116 res!2255544) b!5317110))

(assert (= (or b!5317115 b!5317110) bm!379397))

(assert (= (or b!5317113 b!5317116) bm!379396))

(assert (= (or b!5317111 bm!379396) bm!379395))

(declare-fun m!6353124 () Bool)

(assert (=> b!5317109 m!6353124))

(declare-fun m!6353126 () Bool)

(assert (=> bm!379395 m!6353126))

(declare-fun m!6353128 () Bool)

(assert (=> bm!379397 m!6353128))

(assert (=> d!1707801 d!1708185))

(assert (=> d!1707801 d!1707795))

(assert (=> d!1707801 d!1707797))

(declare-fun b!5317118 () Bool)

(declare-fun e!3303673 () (InoxSet Context!8710))

(declare-fun call!379405 () (InoxSet Context!8710))

(assert (=> b!5317118 (= e!3303673 call!379405)))

(declare-fun call!379407 () List!61212)

(declare-fun c!923931 () Bool)

(declare-fun call!379404 () (InoxSet Context!8710))

(declare-fun bm!379398 () Bool)

(assert (=> bm!379398 (= call!379404 (derivationStepZipperDown!419 (ite c!923931 (regOne!30455 (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))) (regOne!30454 (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))) (ite c!923931 (ite c!923654 (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379215)) (Context!8711 call!379407)) (h!67538 s!2326)))))

(declare-fun b!5317119 () Bool)

(declare-fun e!3303670 () (InoxSet Context!8710))

(assert (=> b!5317119 (= e!3303670 call!379405)))

(declare-fun call!379406 () List!61212)

(declare-fun c!923935 () Bool)

(declare-fun call!379403 () (InoxSet Context!8710))

(declare-fun bm!379399 () Bool)

(declare-fun c!923934 () Bool)

(assert (=> bm!379399 (= call!379403 (derivationStepZipperDown!419 (ite c!923931 (regTwo!30455 (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))) (ite c!923934 (regTwo!30454 (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))) (ite c!923935 (regOne!30454 (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))) (reg!15300 (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))))) (ite (or c!923931 c!923934) (ite c!923654 (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379215)) (Context!8711 call!379406)) (h!67538 s!2326)))))

(declare-fun bm!379400 () Bool)

(assert (=> bm!379400 (= call!379407 ($colon$colon!1390 (exprs!4855 (ite c!923654 (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379215))) (ite (or c!923934 c!923935) (regTwo!30454 (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))) (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))))))

(declare-fun b!5317120 () Bool)

(declare-fun e!3303671 () (InoxSet Context!8710))

(declare-fun e!3303669 () (InoxSet Context!8710))

(assert (=> b!5317120 (= e!3303671 e!3303669)))

(assert (=> b!5317120 (= c!923931 ((_ is Union!14971) (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))))))

(declare-fun b!5317121 () Bool)

(declare-fun c!923932 () Bool)

(assert (=> b!5317121 (= c!923932 ((_ is Star!14971) (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))))))

(assert (=> b!5317121 (= e!3303673 e!3303670)))

(declare-fun b!5317123 () Bool)

(declare-fun e!3303672 () (InoxSet Context!8710))

(declare-fun call!379408 () (InoxSet Context!8710))

(assert (=> b!5317123 (= e!3303672 ((_ map or) call!379404 call!379408))))

(declare-fun b!5317124 () Bool)

(declare-fun e!3303668 () Bool)

(assert (=> b!5317124 (= c!923934 e!3303668)))

(declare-fun res!2255547 () Bool)

(assert (=> b!5317124 (=> (not res!2255547) (not e!3303668))))

(assert (=> b!5317124 (= res!2255547 ((_ is Concat!23816) (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))))))

(assert (=> b!5317124 (= e!3303669 e!3303672)))

(declare-fun bm!379401 () Bool)

(assert (=> bm!379401 (= call!379408 call!379403)))

(declare-fun b!5317125 () Bool)

(assert (=> b!5317125 (= e!3303668 (nullable!5140 (regOne!30454 (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))))))

(declare-fun b!5317126 () Bool)

(assert (=> b!5317126 (= e!3303670 ((as const (Array Context!8710 Bool)) false))))

(declare-fun bm!379402 () Bool)

(assert (=> bm!379402 (= call!379405 call!379408)))

(declare-fun b!5317127 () Bool)

(assert (=> b!5317127 (= e!3303671 (store ((as const (Array Context!8710 Bool)) false) (ite c!923654 (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379215)) true))))

(declare-fun b!5317128 () Bool)

(assert (=> b!5317128 (= e!3303672 e!3303673)))

(assert (=> b!5317128 (= c!923935 ((_ is Concat!23816) (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))))))

(declare-fun bm!379403 () Bool)

(assert (=> bm!379403 (= call!379406 call!379407)))

(declare-fun c!923933 () Bool)

(declare-fun d!1708187 () Bool)

(assert (=> d!1708187 (= c!923933 (and ((_ is ElementMatch!14971) (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))) (= (c!923507 (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))) (h!67538 s!2326))))))

(assert (=> d!1708187 (= (derivationStepZipperDown!419 (ite c!923654 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))) (ite c!923654 (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379215)) (h!67538 s!2326)) e!3303671)))

(declare-fun b!5317122 () Bool)

(assert (=> b!5317122 (= e!3303669 ((_ map or) call!379404 call!379403))))

(assert (= (and d!1708187 c!923933) b!5317127))

(assert (= (and d!1708187 (not c!923933)) b!5317120))

(assert (= (and b!5317120 c!923931) b!5317122))

(assert (= (and b!5317120 (not c!923931)) b!5317124))

(assert (= (and b!5317124 res!2255547) b!5317125))

(assert (= (and b!5317124 c!923934) b!5317123))

(assert (= (and b!5317124 (not c!923934)) b!5317128))

(assert (= (and b!5317128 c!923935) b!5317118))

(assert (= (and b!5317128 (not c!923935)) b!5317121))

(assert (= (and b!5317121 c!923932) b!5317119))

(assert (= (and b!5317121 (not c!923932)) b!5317126))

(assert (= (or b!5317118 b!5317119) bm!379403))

(assert (= (or b!5317118 b!5317119) bm!379402))

(assert (= (or b!5317123 bm!379403) bm!379400))

(assert (= (or b!5317123 bm!379402) bm!379401))

(assert (= (or b!5317122 bm!379401) bm!379399))

(assert (= (or b!5317122 b!5317123) bm!379398))

(declare-fun m!6353130 () Bool)

(assert (=> b!5317127 m!6353130))

(declare-fun m!6353132 () Bool)

(assert (=> bm!379399 m!6353132))

(declare-fun m!6353134 () Bool)

(assert (=> b!5317125 m!6353134))

(declare-fun m!6353136 () Bool)

(assert (=> bm!379400 m!6353136))

(declare-fun m!6353138 () Bool)

(assert (=> bm!379398 m!6353138))

(assert (=> bm!379206 d!1708187))

(declare-fun d!1708189 () Bool)

(assert (=> d!1708189 true))

(assert (=> d!1708189 true))

(declare-fun res!2255548 () Bool)

(assert (=> d!1708189 (= (choose!39787 lambda!270977) res!2255548)))

(assert (=> d!1707773 d!1708189))

(declare-fun d!1708191 () Bool)

(declare-fun res!2255550 () Bool)

(declare-fun e!3303678 () Bool)

(assert (=> d!1708191 (=> res!2255550 e!3303678)))

(assert (=> d!1708191 (= res!2255550 ((_ is ElementMatch!14971) (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))))))

(assert (=> d!1708191 (= (validRegex!6707 (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))) e!3303678)))

(declare-fun b!5317129 () Bool)

(declare-fun e!3303677 () Bool)

(declare-fun e!3303680 () Bool)

(assert (=> b!5317129 (= e!3303677 e!3303680)))

(declare-fun res!2255552 () Bool)

(assert (=> b!5317129 (= res!2255552 (not (nullable!5140 (reg!15300 (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))))))))

(assert (=> b!5317129 (=> (not res!2255552) (not e!3303680))))

(declare-fun call!379411 () Bool)

(declare-fun c!923937 () Bool)

(declare-fun bm!379404 () Bool)

(declare-fun c!923936 () Bool)

(assert (=> bm!379404 (= call!379411 (validRegex!6707 (ite c!923937 (reg!15300 (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))) (ite c!923936 (regOne!30455 (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))) (regOne!30454 (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))))))))))

(declare-fun b!5317130 () Bool)

(declare-fun e!3303675 () Bool)

(declare-fun call!379410 () Bool)

(assert (=> b!5317130 (= e!3303675 call!379410)))

(declare-fun b!5317131 () Bool)

(assert (=> b!5317131 (= e!3303680 call!379411)))

(declare-fun b!5317132 () Bool)

(declare-fun res!2255553 () Bool)

(declare-fun e!3303676 () Bool)

(assert (=> b!5317132 (=> res!2255553 e!3303676)))

(assert (=> b!5317132 (= res!2255553 (not ((_ is Concat!23816) (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292))))))))))

(declare-fun e!3303674 () Bool)

(assert (=> b!5317132 (= e!3303674 e!3303676)))

(declare-fun b!5317133 () Bool)

(declare-fun res!2255549 () Bool)

(declare-fun e!3303679 () Bool)

(assert (=> b!5317133 (=> (not res!2255549) (not e!3303679))))

(declare-fun call!379409 () Bool)

(assert (=> b!5317133 (= res!2255549 call!379409)))

(assert (=> b!5317133 (= e!3303674 e!3303679)))

(declare-fun b!5317134 () Bool)

(assert (=> b!5317134 (= e!3303678 e!3303677)))

(assert (=> b!5317134 (= c!923937 ((_ is Star!14971) (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))))))

(declare-fun b!5317135 () Bool)

(assert (=> b!5317135 (= e!3303679 call!379410)))

(declare-fun bm!379405 () Bool)

(assert (=> bm!379405 (= call!379409 call!379411)))

(declare-fun b!5317136 () Bool)

(assert (=> b!5317136 (= e!3303676 e!3303675)))

(declare-fun res!2255551 () Bool)

(assert (=> b!5317136 (=> (not res!2255551) (not e!3303675))))

(assert (=> b!5317136 (= res!2255551 call!379409)))

(declare-fun b!5317137 () Bool)

(assert (=> b!5317137 (= e!3303677 e!3303674)))

(assert (=> b!5317137 (= c!923936 ((_ is Union!14971) (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))))))

(declare-fun bm!379406 () Bool)

(assert (=> bm!379406 (= call!379410 (validRegex!6707 (ite c!923936 (regTwo!30455 (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))) (regTwo!30454 (ite c!923664 (reg!15300 (regOne!30454 (regOne!30454 r!7292))) (ite c!923663 (regOne!30455 (regOne!30454 (regOne!30454 r!7292))) (regOne!30454 (regOne!30454 (regOne!30454 r!7292)))))))))))

(assert (= (and d!1708191 (not res!2255550)) b!5317134))

(assert (= (and b!5317134 c!923937) b!5317129))

(assert (= (and b!5317134 (not c!923937)) b!5317137))

(assert (= (and b!5317129 res!2255552) b!5317131))

(assert (= (and b!5317137 c!923936) b!5317133))

(assert (= (and b!5317137 (not c!923936)) b!5317132))

(assert (= (and b!5317133 res!2255549) b!5317135))

(assert (= (and b!5317132 (not res!2255553)) b!5317136))

(assert (= (and b!5317136 res!2255551) b!5317130))

(assert (= (or b!5317135 b!5317130) bm!379406))

(assert (= (or b!5317133 b!5317136) bm!379405))

(assert (= (or b!5317131 bm!379405) bm!379404))

(declare-fun m!6353140 () Bool)

(assert (=> b!5317129 m!6353140))

(declare-fun m!6353142 () Bool)

(assert (=> bm!379404 m!6353142))

(declare-fun m!6353144 () Bool)

(assert (=> bm!379406 m!6353144))

(assert (=> bm!379218 d!1708191))

(declare-fun b!5317138 () Bool)

(declare-fun e!3303686 () (InoxSet Context!8710))

(declare-fun call!379414 () (InoxSet Context!8710))

(assert (=> b!5317138 (= e!3303686 call!379414)))

(declare-fun call!379416 () List!61212)

(declare-fun c!923938 () Bool)

(declare-fun bm!379407 () Bool)

(declare-fun call!379413 () (InoxSet Context!8710))

(assert (=> bm!379407 (= call!379413 (derivationStepZipperDown!419 (ite c!923938 (regOne!30455 (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))) (regOne!30454 (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292)))))))) (ite c!923938 (ite (or c!923654 c!923657) (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379214)) (Context!8711 call!379416)) (h!67538 s!2326)))))

(declare-fun b!5317139 () Bool)

(declare-fun e!3303683 () (InoxSet Context!8710))

(assert (=> b!5317139 (= e!3303683 call!379414)))

(declare-fun bm!379408 () Bool)

(declare-fun c!923942 () Bool)

(declare-fun call!379412 () (InoxSet Context!8710))

(declare-fun call!379415 () List!61212)

(declare-fun c!923941 () Bool)

(assert (=> bm!379408 (= call!379412 (derivationStepZipperDown!419 (ite c!923938 (regTwo!30455 (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))) (ite c!923941 (regTwo!30454 (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))) (ite c!923942 (regOne!30454 (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))) (reg!15300 (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292)))))))))) (ite (or c!923938 c!923941) (ite (or c!923654 c!923657) (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379214)) (Context!8711 call!379415)) (h!67538 s!2326)))))

(declare-fun bm!379409 () Bool)

(assert (=> bm!379409 (= call!379416 ($colon$colon!1390 (exprs!4855 (ite (or c!923654 c!923657) (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379214))) (ite (or c!923941 c!923942) (regTwo!30454 (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))) (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292)))))))))))

(declare-fun b!5317140 () Bool)

(declare-fun e!3303684 () (InoxSet Context!8710))

(declare-fun e!3303682 () (InoxSet Context!8710))

(assert (=> b!5317140 (= e!3303684 e!3303682)))

(assert (=> b!5317140 (= c!923938 ((_ is Union!14971) (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))))))

(declare-fun b!5317141 () Bool)

(declare-fun c!923939 () Bool)

(assert (=> b!5317141 (= c!923939 ((_ is Star!14971) (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))))))

(assert (=> b!5317141 (= e!3303686 e!3303683)))

(declare-fun b!5317143 () Bool)

(declare-fun e!3303685 () (InoxSet Context!8710))

(declare-fun call!379417 () (InoxSet Context!8710))

(assert (=> b!5317143 (= e!3303685 ((_ map or) call!379413 call!379417))))

(declare-fun b!5317144 () Bool)

(declare-fun e!3303681 () Bool)

(assert (=> b!5317144 (= c!923941 e!3303681)))

(declare-fun res!2255554 () Bool)

(assert (=> b!5317144 (=> (not res!2255554) (not e!3303681))))

(assert (=> b!5317144 (= res!2255554 ((_ is Concat!23816) (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))))))

(assert (=> b!5317144 (= e!3303682 e!3303685)))

(declare-fun bm!379410 () Bool)

(assert (=> bm!379410 (= call!379417 call!379412)))

(declare-fun b!5317145 () Bool)

(assert (=> b!5317145 (= e!3303681 (nullable!5140 (regOne!30454 (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292)))))))))))

(declare-fun b!5317146 () Bool)

(assert (=> b!5317146 (= e!3303683 ((as const (Array Context!8710 Bool)) false))))

(declare-fun bm!379411 () Bool)

(assert (=> bm!379411 (= call!379414 call!379417)))

(declare-fun b!5317147 () Bool)

(assert (=> b!5317147 (= e!3303684 (store ((as const (Array Context!8710 Bool)) false) (ite (or c!923654 c!923657) (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379214)) true))))

(declare-fun b!5317148 () Bool)

(assert (=> b!5317148 (= e!3303685 e!3303686)))

(assert (=> b!5317148 (= c!923942 ((_ is Concat!23816) (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))))))

(declare-fun bm!379412 () Bool)

(assert (=> bm!379412 (= call!379415 call!379416)))

(declare-fun c!923940 () Bool)

(declare-fun d!1708193 () Bool)

(assert (=> d!1708193 (= c!923940 (and ((_ is ElementMatch!14971) (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))) (= (c!923507 (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292))))))) (h!67538 s!2326))))))

(assert (=> d!1708193 (= (derivationStepZipperDown!419 (ite c!923654 (regTwo!30455 (regOne!30454 (regOne!30454 r!7292))) (ite c!923657 (regTwo!30454 (regOne!30454 (regOne!30454 r!7292))) (ite c!923658 (regOne!30454 (regOne!30454 (regOne!30454 r!7292))) (reg!15300 (regOne!30454 (regOne!30454 r!7292)))))) (ite (or c!923654 c!923657) (Context!8711 (Cons!61088 (regTwo!30454 (regOne!30454 r!7292)) (t!374419 (exprs!4855 (h!67537 zl!343))))) (Context!8711 call!379214)) (h!67538 s!2326)) e!3303684)))

(declare-fun b!5317142 () Bool)

(assert (=> b!5317142 (= e!3303682 ((_ map or) call!379413 call!379412))))

(assert (= (and d!1708193 c!923940) b!5317147))

(assert (= (and d!1708193 (not c!923940)) b!5317140))

(assert (= (and b!5317140 c!923938) b!5317142))

(assert (= (and b!5317140 (not c!923938)) b!5317144))

(assert (= (and b!5317144 res!2255554) b!5317145))

(assert (= (and b!5317144 c!923941) b!5317143))

(assert (= (and b!5317144 (not c!923941)) b!5317148))

(assert (= (and b!5317148 c!923942) b!5317138))

(assert (= (and b!5317148 (not c!923942)) b!5317141))

(assert (= (and b!5317141 c!923939) b!5317139))

(assert (= (and b!5317141 (not c!923939)) b!5317146))

(assert (= (or b!5317138 b!5317139) bm!379412))

(assert (= (or b!5317138 b!5317139) bm!379411))

(assert (= (or b!5317143 bm!379412) bm!379409))

(assert (= (or b!5317143 bm!379411) bm!379410))

(assert (= (or b!5317142 bm!379410) bm!379408))

(assert (= (or b!5317142 b!5317143) bm!379407))

(declare-fun m!6353146 () Bool)

(assert (=> b!5317147 m!6353146))

(declare-fun m!6353148 () Bool)

(assert (=> bm!379408 m!6353148))

(declare-fun m!6353150 () Bool)

(assert (=> b!5317145 m!6353150))

(declare-fun m!6353152 () Bool)

(assert (=> bm!379409 m!6353152))

(declare-fun m!6353154 () Bool)

(assert (=> bm!379407 m!6353154))

(assert (=> bm!379207 d!1708193))

(declare-fun d!1708195 () Bool)

(assert (=> d!1708195 (= (isEmpty!33055 (tail!10496 (exprs!4855 (h!67537 zl!343)))) ((_ is Nil!61088) (tail!10496 (exprs!4855 (h!67537 zl!343)))))))

(assert (=> b!5316150 d!1708195))

(declare-fun d!1708197 () Bool)

(assert (=> d!1708197 (= (tail!10496 (exprs!4855 (h!67537 zl!343))) (t!374419 (exprs!4855 (h!67537 zl!343))))))

(assert (=> b!5316150 d!1708197))

(declare-fun b!5317151 () Bool)

(declare-fun res!2255556 () Bool)

(declare-fun e!3303687 () Bool)

(assert (=> b!5317151 (=> (not res!2255556) (not e!3303687))))

(declare-fun lt!2171281 () List!61214)

(assert (=> b!5317151 (= res!2255556 (= (size!39763 lt!2171281) (+ (size!39763 (_1!35473 (get!21011 lt!2171212))) (size!39763 (_2!35473 (get!21011 lt!2171212))))))))

(declare-fun b!5317149 () Bool)

(declare-fun e!3303688 () List!61214)

(assert (=> b!5317149 (= e!3303688 (_2!35473 (get!21011 lt!2171212)))))

(declare-fun d!1708199 () Bool)

(assert (=> d!1708199 e!3303687))

(declare-fun res!2255555 () Bool)

(assert (=> d!1708199 (=> (not res!2255555) (not e!3303687))))

(assert (=> d!1708199 (= res!2255555 (= (content!10889 lt!2171281) ((_ map or) (content!10889 (_1!35473 (get!21011 lt!2171212))) (content!10889 (_2!35473 (get!21011 lt!2171212))))))))

(assert (=> d!1708199 (= lt!2171281 e!3303688)))

(declare-fun c!923943 () Bool)

(assert (=> d!1708199 (= c!923943 ((_ is Nil!61090) (_1!35473 (get!21011 lt!2171212))))))

(assert (=> d!1708199 (= (++!13320 (_1!35473 (get!21011 lt!2171212)) (_2!35473 (get!21011 lt!2171212))) lt!2171281)))

(declare-fun b!5317150 () Bool)

(assert (=> b!5317150 (= e!3303688 (Cons!61090 (h!67538 (_1!35473 (get!21011 lt!2171212))) (++!13320 (t!374421 (_1!35473 (get!21011 lt!2171212))) (_2!35473 (get!21011 lt!2171212)))))))

(declare-fun b!5317152 () Bool)

(assert (=> b!5317152 (= e!3303687 (or (not (= (_2!35473 (get!21011 lt!2171212)) Nil!61090)) (= lt!2171281 (_1!35473 (get!21011 lt!2171212)))))))

(assert (= (and d!1708199 c!923943) b!5317149))

(assert (= (and d!1708199 (not c!923943)) b!5317150))

(assert (= (and d!1708199 res!2255555) b!5317151))

(assert (= (and b!5317151 res!2255556) b!5317152))

(declare-fun m!6353156 () Bool)

(assert (=> b!5317151 m!6353156))

(declare-fun m!6353158 () Bool)

(assert (=> b!5317151 m!6353158))

(declare-fun m!6353160 () Bool)

(assert (=> b!5317151 m!6353160))

(declare-fun m!6353162 () Bool)

(assert (=> d!1708199 m!6353162))

(declare-fun m!6353164 () Bool)

(assert (=> d!1708199 m!6353164))

(declare-fun m!6353166 () Bool)

(assert (=> d!1708199 m!6353166))

(declare-fun m!6353168 () Bool)

(assert (=> b!5317150 m!6353168))

(assert (=> b!5316053 d!1708199))

(assert (=> b!5316053 d!1708077))

(declare-fun b!5317153 () Bool)

(declare-fun e!3303694 () (InoxSet Context!8710))

(declare-fun call!379420 () (InoxSet Context!8710))

(assert (=> b!5317153 (= e!3303694 call!379420)))

(declare-fun c!923944 () Bool)

(declare-fun bm!379413 () Bool)

(declare-fun call!379419 () (InoxSet Context!8710))

(declare-fun call!379422 () List!61212)

(assert (=> bm!379413 (= call!379419 (derivationStepZipperDown!419 (ite c!923944 (regOne!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343))))) (ite c!923944 (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343)))) (Context!8711 call!379422)) (h!67538 s!2326)))))

(declare-fun b!5317154 () Bool)

(declare-fun e!3303691 () (InoxSet Context!8710))

(assert (=> b!5317154 (= e!3303691 call!379420)))

(declare-fun bm!379414 () Bool)

(declare-fun call!379418 () (InoxSet Context!8710))

(declare-fun call!379421 () List!61212)

(declare-fun c!923947 () Bool)

(declare-fun c!923948 () Bool)

(assert (=> bm!379414 (= call!379418 (derivationStepZipperDown!419 (ite c!923944 (regTwo!30455 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923947 (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (ite c!923948 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (reg!15300 (h!67536 (exprs!4855 (h!67537 zl!343))))))) (ite (or c!923944 c!923947) (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343)))) (Context!8711 call!379421)) (h!67538 s!2326)))))

(declare-fun bm!379415 () Bool)

(assert (=> bm!379415 (= call!379422 ($colon$colon!1390 (exprs!4855 (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343))))) (ite (or c!923947 c!923948) (regTwo!30454 (h!67536 (exprs!4855 (h!67537 zl!343)))) (h!67536 (exprs!4855 (h!67537 zl!343))))))))

(declare-fun b!5317155 () Bool)

(declare-fun e!3303692 () (InoxSet Context!8710))

(declare-fun e!3303690 () (InoxSet Context!8710))

(assert (=> b!5317155 (= e!3303692 e!3303690)))

(assert (=> b!5317155 (= c!923944 ((_ is Union!14971) (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun b!5317156 () Bool)

(declare-fun c!923945 () Bool)

(assert (=> b!5317156 (= c!923945 ((_ is Star!14971) (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(assert (=> b!5317156 (= e!3303694 e!3303691)))

(declare-fun b!5317158 () Bool)

(declare-fun e!3303693 () (InoxSet Context!8710))

(declare-fun call!379423 () (InoxSet Context!8710))

(assert (=> b!5317158 (= e!3303693 ((_ map or) call!379419 call!379423))))

(declare-fun b!5317159 () Bool)

(declare-fun e!3303689 () Bool)

(assert (=> b!5317159 (= c!923947 e!3303689)))

(declare-fun res!2255557 () Bool)

(assert (=> b!5317159 (=> (not res!2255557) (not e!3303689))))

(assert (=> b!5317159 (= res!2255557 ((_ is Concat!23816) (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(assert (=> b!5317159 (= e!3303690 e!3303693)))

(declare-fun bm!379416 () Bool)

(assert (=> bm!379416 (= call!379423 call!379418)))

(declare-fun b!5317160 () Bool)

(assert (=> b!5317160 (= e!3303689 (nullable!5140 (regOne!30454 (h!67536 (exprs!4855 (h!67537 zl!343))))))))

(declare-fun b!5317161 () Bool)

(assert (=> b!5317161 (= e!3303691 ((as const (Array Context!8710 Bool)) false))))

(declare-fun bm!379417 () Bool)

(assert (=> bm!379417 (= call!379420 call!379423)))

(declare-fun b!5317162 () Bool)

(assert (=> b!5317162 (= e!3303692 (store ((as const (Array Context!8710 Bool)) false) (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343)))) true))))

(declare-fun b!5317163 () Bool)

(assert (=> b!5317163 (= e!3303693 e!3303694)))

(assert (=> b!5317163 (= c!923948 ((_ is Concat!23816) (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun bm!379418 () Bool)

(assert (=> bm!379418 (= call!379421 call!379422)))

(declare-fun d!1708201 () Bool)

(declare-fun c!923946 () Bool)

(assert (=> d!1708201 (= c!923946 (and ((_ is ElementMatch!14971) (h!67536 (exprs!4855 (h!67537 zl!343)))) (= (c!923507 (h!67536 (exprs!4855 (h!67537 zl!343)))) (h!67538 s!2326))))))

(assert (=> d!1708201 (= (derivationStepZipperDown!419 (h!67536 (exprs!4855 (h!67537 zl!343))) (Context!8711 (t!374419 (exprs!4855 (h!67537 zl!343)))) (h!67538 s!2326)) e!3303692)))

(declare-fun b!5317157 () Bool)

(assert (=> b!5317157 (= e!3303690 ((_ map or) call!379419 call!379418))))

(assert (= (and d!1708201 c!923946) b!5317162))

(assert (= (and d!1708201 (not c!923946)) b!5317155))

(assert (= (and b!5317155 c!923944) b!5317157))

(assert (= (and b!5317155 (not c!923944)) b!5317159))

(assert (= (and b!5317159 res!2255557) b!5317160))

(assert (= (and b!5317159 c!923947) b!5317158))

(assert (= (and b!5317159 (not c!923947)) b!5317163))

(assert (= (and b!5317163 c!923948) b!5317153))

(assert (= (and b!5317163 (not c!923948)) b!5317156))

(assert (= (and b!5317156 c!923945) b!5317154))

(assert (= (and b!5317156 (not c!923945)) b!5317161))

(assert (= (or b!5317153 b!5317154) bm!379418))

(assert (= (or b!5317153 b!5317154) bm!379417))

(assert (= (or b!5317158 bm!379418) bm!379415))

(assert (= (or b!5317158 bm!379417) bm!379416))

(assert (= (or b!5317157 bm!379416) bm!379414))

(assert (= (or b!5317157 b!5317158) bm!379413))

(declare-fun m!6353170 () Bool)

(assert (=> b!5317162 m!6353170))

(declare-fun m!6353172 () Bool)

(assert (=> bm!379414 m!6353172))

(assert (=> b!5317160 m!6352002))

(declare-fun m!6353174 () Bool)

(assert (=> bm!379415 m!6353174))

(declare-fun m!6353176 () Bool)

(assert (=> bm!379413 m!6353176))

(assert (=> bm!379193 d!1708201))

(declare-fun b!5317164 () Bool)

(declare-fun e!3303701 () Bool)

(declare-fun lt!2171282 () Bool)

(assert (=> b!5317164 (= e!3303701 (not lt!2171282))))

(declare-fun b!5317165 () Bool)

(declare-fun res!2255563 () Bool)

(declare-fun e!3303697 () Bool)

(assert (=> b!5317165 (=> res!2255563 e!3303697)))

(declare-fun e!3303700 () Bool)

(assert (=> b!5317165 (= res!2255563 e!3303700)))

(declare-fun res!2255560 () Bool)

(assert (=> b!5317165 (=> (not res!2255560) (not e!3303700))))

(assert (=> b!5317165 (= res!2255560 lt!2171282)))

(declare-fun b!5317166 () Bool)

(declare-fun e!3303699 () Bool)

(assert (=> b!5317166 (= e!3303697 e!3303699)))

(declare-fun res!2255565 () Bool)

(assert (=> b!5317166 (=> (not res!2255565) (not e!3303699))))

(assert (=> b!5317166 (= res!2255565 (not lt!2171282))))

(declare-fun b!5317167 () Bool)

(declare-fun e!3303696 () Bool)

(assert (=> b!5317167 (= e!3303696 (nullable!5140 (regOne!30454 r!7292)))))

(declare-fun b!5317168 () Bool)

(assert (=> b!5317168 (= e!3303696 (matchR!7156 (derivativeStep!4161 (regOne!30454 r!7292) (head!11398 (_1!35473 (get!21011 lt!2171212)))) (tail!10495 (_1!35473 (get!21011 lt!2171212)))))))

(declare-fun b!5317169 () Bool)

(declare-fun res!2255561 () Bool)

(declare-fun e!3303695 () Bool)

(assert (=> b!5317169 (=> res!2255561 e!3303695)))

(assert (=> b!5317169 (= res!2255561 (not (isEmpty!33059 (tail!10495 (_1!35473 (get!21011 lt!2171212))))))))

(declare-fun d!1708203 () Bool)

(declare-fun e!3303698 () Bool)

(assert (=> d!1708203 e!3303698))

(declare-fun c!923950 () Bool)

(assert (=> d!1708203 (= c!923950 ((_ is EmptyExpr!14971) (regOne!30454 r!7292)))))

(assert (=> d!1708203 (= lt!2171282 e!3303696)))

(declare-fun c!923949 () Bool)

(assert (=> d!1708203 (= c!923949 (isEmpty!33059 (_1!35473 (get!21011 lt!2171212))))))

(assert (=> d!1708203 (validRegex!6707 (regOne!30454 r!7292))))

(assert (=> d!1708203 (= (matchR!7156 (regOne!30454 r!7292) (_1!35473 (get!21011 lt!2171212))) lt!2171282)))

(declare-fun b!5317170 () Bool)

(declare-fun res!2255559 () Bool)

(assert (=> b!5317170 (=> res!2255559 e!3303697)))

(assert (=> b!5317170 (= res!2255559 (not ((_ is ElementMatch!14971) (regOne!30454 r!7292))))))

(assert (=> b!5317170 (= e!3303701 e!3303697)))

(declare-fun b!5317171 () Bool)

(assert (=> b!5317171 (= e!3303695 (not (= (head!11398 (_1!35473 (get!21011 lt!2171212))) (c!923507 (regOne!30454 r!7292)))))))

(declare-fun b!5317172 () Bool)

(assert (=> b!5317172 (= e!3303698 e!3303701)))

(declare-fun c!923951 () Bool)

(assert (=> b!5317172 (= c!923951 ((_ is EmptyLang!14971) (regOne!30454 r!7292)))))

(declare-fun b!5317173 () Bool)

(assert (=> b!5317173 (= e!3303700 (= (head!11398 (_1!35473 (get!21011 lt!2171212))) (c!923507 (regOne!30454 r!7292))))))

(declare-fun b!5317174 () Bool)

(declare-fun call!379424 () Bool)

(assert (=> b!5317174 (= e!3303698 (= lt!2171282 call!379424))))

(declare-fun b!5317175 () Bool)

(declare-fun res!2255562 () Bool)

(assert (=> b!5317175 (=> (not res!2255562) (not e!3303700))))

(assert (=> b!5317175 (= res!2255562 (isEmpty!33059 (tail!10495 (_1!35473 (get!21011 lt!2171212)))))))

(declare-fun b!5317176 () Bool)

(assert (=> b!5317176 (= e!3303699 e!3303695)))

(declare-fun res!2255558 () Bool)

(assert (=> b!5317176 (=> res!2255558 e!3303695)))

(assert (=> b!5317176 (= res!2255558 call!379424)))

(declare-fun b!5317177 () Bool)

(declare-fun res!2255564 () Bool)

(assert (=> b!5317177 (=> (not res!2255564) (not e!3303700))))

(assert (=> b!5317177 (= res!2255564 (not call!379424))))

(declare-fun bm!379419 () Bool)

(assert (=> bm!379419 (= call!379424 (isEmpty!33059 (_1!35473 (get!21011 lt!2171212))))))

(assert (= (and d!1708203 c!923949) b!5317167))

(assert (= (and d!1708203 (not c!923949)) b!5317168))

(assert (= (and d!1708203 c!923950) b!5317174))

(assert (= (and d!1708203 (not c!923950)) b!5317172))

(assert (= (and b!5317172 c!923951) b!5317164))

(assert (= (and b!5317172 (not c!923951)) b!5317170))

(assert (= (and b!5317170 (not res!2255559)) b!5317165))

(assert (= (and b!5317165 res!2255560) b!5317177))

(assert (= (and b!5317177 res!2255564) b!5317175))

(assert (= (and b!5317175 res!2255562) b!5317173))

(assert (= (and b!5317165 (not res!2255563)) b!5317166))

(assert (= (and b!5317166 res!2255565) b!5317176))

(assert (= (and b!5317176 (not res!2255558)) b!5317169))

(assert (= (and b!5317169 (not res!2255561)) b!5317171))

(assert (= (or b!5317174 b!5317177 b!5317176) bm!379419))

(declare-fun m!6353178 () Bool)

(assert (=> bm!379419 m!6353178))

(assert (=> d!1708203 m!6353178))

(assert (=> d!1708203 m!6352202))

(declare-fun m!6353180 () Bool)

(assert (=> b!5317168 m!6353180))

(assert (=> b!5317168 m!6353180))

(declare-fun m!6353182 () Bool)

(assert (=> b!5317168 m!6353182))

(declare-fun m!6353184 () Bool)

(assert (=> b!5317168 m!6353184))

(assert (=> b!5317168 m!6353182))

(assert (=> b!5317168 m!6353184))

(declare-fun m!6353186 () Bool)

(assert (=> b!5317168 m!6353186))

(assert (=> b!5317167 m!6352872))

(assert (=> b!5317169 m!6353184))

(assert (=> b!5317169 m!6353184))

(declare-fun m!6353188 () Bool)

(assert (=> b!5317169 m!6353188))

(assert (=> b!5317173 m!6353180))

(assert (=> b!5317175 m!6353184))

(assert (=> b!5317175 m!6353184))

(assert (=> b!5317175 m!6353188))

(assert (=> b!5317171 m!6353180))

(assert (=> b!5316055 d!1708203))

(assert (=> b!5316055 d!1708077))

(declare-fun d!1708205 () Bool)

(assert (=> d!1708205 (= (isEmpty!33055 (unfocusZipperList!413 zl!343)) ((_ is Nil!61088) (unfocusZipperList!413 zl!343)))))

(assert (=> b!5316106 d!1708205))

(declare-fun bs!1232523 () Bool)

(declare-fun d!1708207 () Bool)

(assert (= bs!1232523 (and d!1708207 d!1708033)))

(declare-fun lambda!271091 () Int)

(assert (=> bs!1232523 (= lambda!271091 lambda!271073)))

(declare-fun bs!1232524 () Bool)

(assert (= bs!1232524 (and d!1708207 d!1708177)))

(assert (=> bs!1232524 (= lambda!271091 lambda!271090)))

(assert (=> d!1708207 (= (nullableZipper!1340 lt!2171148) (exists!2007 lt!2171148 lambda!271091))))

(declare-fun bs!1232525 () Bool)

(assert (= bs!1232525 d!1708207))

(declare-fun m!6353190 () Bool)

(assert (=> bs!1232525 m!6353190))

(assert (=> b!5316077 d!1708207))

(declare-fun d!1708209 () Bool)

(assert (=> d!1708209 (= (head!11399 (unfocusZipperList!413 zl!343)) (h!67536 (unfocusZipperList!413 zl!343)))))

(assert (=> b!5316108 d!1708209))

(declare-fun d!1708211 () Bool)

(assert (=> d!1708211 (= (isEmptyExpr!875 lt!2171238) ((_ is EmptyExpr!14971) lt!2171238))))

(assert (=> b!5316152 d!1708211))

(declare-fun d!1708213 () Bool)

(assert (=> d!1708213 (= (isEmpty!33055 (exprs!4855 (h!67537 zl!343))) ((_ is Nil!61088) (exprs!4855 (h!67537 zl!343))))))

(assert (=> b!5316154 d!1708213))

(declare-fun b!5317180 () Bool)

(declare-fun e!3303702 () Bool)

(declare-fun tp!1480717 () Bool)

(assert (=> b!5317180 (= e!3303702 tp!1480717)))

(declare-fun b!5317179 () Bool)

(declare-fun tp!1480716 () Bool)

(declare-fun tp!1480714 () Bool)

(assert (=> b!5317179 (= e!3303702 (and tp!1480716 tp!1480714))))

(declare-fun b!5317181 () Bool)

(declare-fun tp!1480718 () Bool)

(declare-fun tp!1480715 () Bool)

(assert (=> b!5317181 (= e!3303702 (and tp!1480718 tp!1480715))))

(assert (=> b!5316187 (= tp!1480513 e!3303702)))

(declare-fun b!5317178 () Bool)

(assert (=> b!5317178 (= e!3303702 tp_is_empty!39195)))

(assert (= (and b!5316187 ((_ is ElementMatch!14971) (regOne!30455 (regOne!30454 r!7292)))) b!5317178))

(assert (= (and b!5316187 ((_ is Concat!23816) (regOne!30455 (regOne!30454 r!7292)))) b!5317179))

(assert (= (and b!5316187 ((_ is Star!14971) (regOne!30455 (regOne!30454 r!7292)))) b!5317180))

(assert (= (and b!5316187 ((_ is Union!14971) (regOne!30455 (regOne!30454 r!7292)))) b!5317181))

(declare-fun b!5317184 () Bool)

(declare-fun e!3303703 () Bool)

(declare-fun tp!1480722 () Bool)

(assert (=> b!5317184 (= e!3303703 tp!1480722)))

(declare-fun b!5317183 () Bool)

(declare-fun tp!1480721 () Bool)

(declare-fun tp!1480719 () Bool)

(assert (=> b!5317183 (= e!3303703 (and tp!1480721 tp!1480719))))

(declare-fun b!5317185 () Bool)

(declare-fun tp!1480723 () Bool)

(declare-fun tp!1480720 () Bool)

(assert (=> b!5317185 (= e!3303703 (and tp!1480723 tp!1480720))))

(assert (=> b!5316187 (= tp!1480510 e!3303703)))

(declare-fun b!5317182 () Bool)

(assert (=> b!5317182 (= e!3303703 tp_is_empty!39195)))

(assert (= (and b!5316187 ((_ is ElementMatch!14971) (regTwo!30455 (regOne!30454 r!7292)))) b!5317182))

(assert (= (and b!5316187 ((_ is Concat!23816) (regTwo!30455 (regOne!30454 r!7292)))) b!5317183))

(assert (= (and b!5316187 ((_ is Star!14971) (regTwo!30455 (regOne!30454 r!7292)))) b!5317184))

(assert (= (and b!5316187 ((_ is Union!14971) (regTwo!30455 (regOne!30454 r!7292)))) b!5317185))

(declare-fun b!5317188 () Bool)

(declare-fun e!3303704 () Bool)

(declare-fun tp!1480727 () Bool)

(assert (=> b!5317188 (= e!3303704 tp!1480727)))

(declare-fun b!5317187 () Bool)

(declare-fun tp!1480726 () Bool)

(declare-fun tp!1480724 () Bool)

(assert (=> b!5317187 (= e!3303704 (and tp!1480726 tp!1480724))))

(declare-fun b!5317189 () Bool)

(declare-fun tp!1480728 () Bool)

(declare-fun tp!1480725 () Bool)

(assert (=> b!5317189 (= e!3303704 (and tp!1480728 tp!1480725))))

(assert (=> b!5316186 (= tp!1480512 e!3303704)))

(declare-fun b!5317186 () Bool)

(assert (=> b!5317186 (= e!3303704 tp_is_empty!39195)))

(assert (= (and b!5316186 ((_ is ElementMatch!14971) (reg!15300 (regOne!30454 r!7292)))) b!5317186))

(assert (= (and b!5316186 ((_ is Concat!23816) (reg!15300 (regOne!30454 r!7292)))) b!5317187))

(assert (= (and b!5316186 ((_ is Star!14971) (reg!15300 (regOne!30454 r!7292)))) b!5317188))

(assert (= (and b!5316186 ((_ is Union!14971) (reg!15300 (regOne!30454 r!7292)))) b!5317189))

(declare-fun b!5317190 () Bool)

(declare-fun e!3303705 () Bool)

(declare-fun tp!1480729 () Bool)

(assert (=> b!5317190 (= e!3303705 (and tp_is_empty!39195 tp!1480729))))

(assert (=> b!5316165 (= tp!1480492 e!3303705)))

(assert (= (and b!5316165 ((_ is Cons!61090) (t!374421 (t!374421 s!2326)))) b!5317190))

(declare-fun b!5317192 () Bool)

(declare-fun e!3303707 () Bool)

(declare-fun tp!1480730 () Bool)

(assert (=> b!5317192 (= e!3303707 tp!1480730)))

(declare-fun b!5317191 () Bool)

(declare-fun tp!1480731 () Bool)

(declare-fun e!3303706 () Bool)

(assert (=> b!5317191 (= e!3303706 (and (inv!80674 (h!67537 (t!374420 (t!374420 zl!343)))) e!3303707 tp!1480731))))

(assert (=> b!5316172 (= tp!1480498 e!3303706)))

(assert (= b!5317191 b!5317192))

(assert (= (and b!5316172 ((_ is Cons!61089) (t!374420 (t!374420 zl!343)))) b!5317191))

(declare-fun m!6353192 () Bool)

(assert (=> b!5317191 m!6353192))

(declare-fun b!5317195 () Bool)

(declare-fun e!3303708 () Bool)

(declare-fun tp!1480735 () Bool)

(assert (=> b!5317195 (= e!3303708 tp!1480735)))

(declare-fun b!5317194 () Bool)

(declare-fun tp!1480734 () Bool)

(declare-fun tp!1480732 () Bool)

(assert (=> b!5317194 (= e!3303708 (and tp!1480734 tp!1480732))))

(declare-fun b!5317196 () Bool)

(declare-fun tp!1480736 () Bool)

(declare-fun tp!1480733 () Bool)

(assert (=> b!5317196 (= e!3303708 (and tp!1480736 tp!1480733))))

(assert (=> b!5316207 (= tp!1480539 e!3303708)))

(declare-fun b!5317193 () Bool)

(assert (=> b!5317193 (= e!3303708 tp_is_empty!39195)))

(assert (= (and b!5316207 ((_ is ElementMatch!14971) (regOne!30454 (reg!15300 r!7292)))) b!5317193))

(assert (= (and b!5316207 ((_ is Concat!23816) (regOne!30454 (reg!15300 r!7292)))) b!5317194))

(assert (= (and b!5316207 ((_ is Star!14971) (regOne!30454 (reg!15300 r!7292)))) b!5317195))

(assert (= (and b!5316207 ((_ is Union!14971) (regOne!30454 (reg!15300 r!7292)))) b!5317196))

(declare-fun b!5317199 () Bool)

(declare-fun e!3303709 () Bool)

(declare-fun tp!1480740 () Bool)

(assert (=> b!5317199 (= e!3303709 tp!1480740)))

(declare-fun b!5317198 () Bool)

(declare-fun tp!1480739 () Bool)

(declare-fun tp!1480737 () Bool)

(assert (=> b!5317198 (= e!3303709 (and tp!1480739 tp!1480737))))

(declare-fun b!5317200 () Bool)

(declare-fun tp!1480741 () Bool)

(declare-fun tp!1480738 () Bool)

(assert (=> b!5317200 (= e!3303709 (and tp!1480741 tp!1480738))))

(assert (=> b!5316207 (= tp!1480537 e!3303709)))

(declare-fun b!5317197 () Bool)

(assert (=> b!5317197 (= e!3303709 tp_is_empty!39195)))

(assert (= (and b!5316207 ((_ is ElementMatch!14971) (regTwo!30454 (reg!15300 r!7292)))) b!5317197))

(assert (= (and b!5316207 ((_ is Concat!23816) (regTwo!30454 (reg!15300 r!7292)))) b!5317198))

(assert (= (and b!5316207 ((_ is Star!14971) (regTwo!30454 (reg!15300 r!7292)))) b!5317199))

(assert (= (and b!5316207 ((_ is Union!14971) (regTwo!30454 (reg!15300 r!7292)))) b!5317200))

(declare-fun b!5317203 () Bool)

(declare-fun e!3303710 () Bool)

(declare-fun tp!1480745 () Bool)

(assert (=> b!5317203 (= e!3303710 tp!1480745)))

(declare-fun b!5317202 () Bool)

(declare-fun tp!1480744 () Bool)

(declare-fun tp!1480742 () Bool)

(assert (=> b!5317202 (= e!3303710 (and tp!1480744 tp!1480742))))

(declare-fun b!5317204 () Bool)

(declare-fun tp!1480746 () Bool)

(declare-fun tp!1480743 () Bool)

(assert (=> b!5317204 (= e!3303710 (and tp!1480746 tp!1480743))))

(assert (=> b!5316208 (= tp!1480540 e!3303710)))

(declare-fun b!5317201 () Bool)

(assert (=> b!5317201 (= e!3303710 tp_is_empty!39195)))

(assert (= (and b!5316208 ((_ is ElementMatch!14971) (reg!15300 (reg!15300 r!7292)))) b!5317201))

(assert (= (and b!5316208 ((_ is Concat!23816) (reg!15300 (reg!15300 r!7292)))) b!5317202))

(assert (= (and b!5316208 ((_ is Star!14971) (reg!15300 (reg!15300 r!7292)))) b!5317203))

(assert (= (and b!5316208 ((_ is Union!14971) (reg!15300 (reg!15300 r!7292)))) b!5317204))

(declare-fun b!5317207 () Bool)

(declare-fun e!3303711 () Bool)

(declare-fun tp!1480750 () Bool)

(assert (=> b!5317207 (= e!3303711 tp!1480750)))

(declare-fun b!5317206 () Bool)

(declare-fun tp!1480749 () Bool)

(declare-fun tp!1480747 () Bool)

(assert (=> b!5317206 (= e!3303711 (and tp!1480749 tp!1480747))))

(declare-fun b!5317208 () Bool)

(declare-fun tp!1480751 () Bool)

(declare-fun tp!1480748 () Bool)

(assert (=> b!5317208 (= e!3303711 (and tp!1480751 tp!1480748))))

(assert (=> b!5316193 (= tp!1480521 e!3303711)))

(declare-fun b!5317205 () Bool)

(assert (=> b!5317205 (= e!3303711 tp_is_empty!39195)))

(assert (= (and b!5316193 ((_ is ElementMatch!14971) (regOne!30454 (regOne!30455 r!7292)))) b!5317205))

(assert (= (and b!5316193 ((_ is Concat!23816) (regOne!30454 (regOne!30455 r!7292)))) b!5317206))

(assert (= (and b!5316193 ((_ is Star!14971) (regOne!30454 (regOne!30455 r!7292)))) b!5317207))

(assert (= (and b!5316193 ((_ is Union!14971) (regOne!30454 (regOne!30455 r!7292)))) b!5317208))

(declare-fun b!5317211 () Bool)

(declare-fun e!3303712 () Bool)

(declare-fun tp!1480755 () Bool)

(assert (=> b!5317211 (= e!3303712 tp!1480755)))

(declare-fun b!5317210 () Bool)

(declare-fun tp!1480754 () Bool)

(declare-fun tp!1480752 () Bool)

(assert (=> b!5317210 (= e!3303712 (and tp!1480754 tp!1480752))))

(declare-fun b!5317212 () Bool)

(declare-fun tp!1480756 () Bool)

(declare-fun tp!1480753 () Bool)

(assert (=> b!5317212 (= e!3303712 (and tp!1480756 tp!1480753))))

(assert (=> b!5316193 (= tp!1480519 e!3303712)))

(declare-fun b!5317209 () Bool)

(assert (=> b!5317209 (= e!3303712 tp_is_empty!39195)))

(assert (= (and b!5316193 ((_ is ElementMatch!14971) (regTwo!30454 (regOne!30455 r!7292)))) b!5317209))

(assert (= (and b!5316193 ((_ is Concat!23816) (regTwo!30454 (regOne!30455 r!7292)))) b!5317210))

(assert (= (and b!5316193 ((_ is Star!14971) (regTwo!30454 (regOne!30455 r!7292)))) b!5317211))

(assert (= (and b!5316193 ((_ is Union!14971) (regTwo!30454 (regOne!30455 r!7292)))) b!5317212))

(declare-fun b!5317215 () Bool)

(declare-fun e!3303713 () Bool)

(declare-fun tp!1480760 () Bool)

(assert (=> b!5317215 (= e!3303713 tp!1480760)))

(declare-fun b!5317214 () Bool)

(declare-fun tp!1480759 () Bool)

(declare-fun tp!1480757 () Bool)

(assert (=> b!5317214 (= e!3303713 (and tp!1480759 tp!1480757))))

(declare-fun b!5317216 () Bool)

(declare-fun tp!1480761 () Bool)

(declare-fun tp!1480758 () Bool)

(assert (=> b!5317216 (= e!3303713 (and tp!1480761 tp!1480758))))

(assert (=> b!5316209 (= tp!1480541 e!3303713)))

(declare-fun b!5317213 () Bool)

(assert (=> b!5317213 (= e!3303713 tp_is_empty!39195)))

(assert (= (and b!5316209 ((_ is ElementMatch!14971) (regOne!30455 (reg!15300 r!7292)))) b!5317213))

(assert (= (and b!5316209 ((_ is Concat!23816) (regOne!30455 (reg!15300 r!7292)))) b!5317214))

(assert (= (and b!5316209 ((_ is Star!14971) (regOne!30455 (reg!15300 r!7292)))) b!5317215))

(assert (= (and b!5316209 ((_ is Union!14971) (regOne!30455 (reg!15300 r!7292)))) b!5317216))

(declare-fun b!5317219 () Bool)

(declare-fun e!3303714 () Bool)

(declare-fun tp!1480765 () Bool)

(assert (=> b!5317219 (= e!3303714 tp!1480765)))

(declare-fun b!5317218 () Bool)

(declare-fun tp!1480764 () Bool)

(declare-fun tp!1480762 () Bool)

(assert (=> b!5317218 (= e!3303714 (and tp!1480764 tp!1480762))))

(declare-fun b!5317220 () Bool)

(declare-fun tp!1480766 () Bool)

(declare-fun tp!1480763 () Bool)

(assert (=> b!5317220 (= e!3303714 (and tp!1480766 tp!1480763))))

(assert (=> b!5316209 (= tp!1480538 e!3303714)))

(declare-fun b!5317217 () Bool)

(assert (=> b!5317217 (= e!3303714 tp_is_empty!39195)))

(assert (= (and b!5316209 ((_ is ElementMatch!14971) (regTwo!30455 (reg!15300 r!7292)))) b!5317217))

(assert (= (and b!5316209 ((_ is Concat!23816) (regTwo!30455 (reg!15300 r!7292)))) b!5317218))

(assert (= (and b!5316209 ((_ is Star!14971) (regTwo!30455 (reg!15300 r!7292)))) b!5317219))

(assert (= (and b!5316209 ((_ is Union!14971) (regTwo!30455 (reg!15300 r!7292)))) b!5317220))

(declare-fun b!5317223 () Bool)

(declare-fun e!3303715 () Bool)

(declare-fun tp!1480770 () Bool)

(assert (=> b!5317223 (= e!3303715 tp!1480770)))

(declare-fun b!5317222 () Bool)

(declare-fun tp!1480769 () Bool)

(declare-fun tp!1480767 () Bool)

(assert (=> b!5317222 (= e!3303715 (and tp!1480769 tp!1480767))))

(declare-fun b!5317224 () Bool)

(declare-fun tp!1480771 () Bool)

(declare-fun tp!1480768 () Bool)

(assert (=> b!5317224 (= e!3303715 (and tp!1480771 tp!1480768))))

(assert (=> b!5316195 (= tp!1480523 e!3303715)))

(declare-fun b!5317221 () Bool)

(assert (=> b!5317221 (= e!3303715 tp_is_empty!39195)))

(assert (= (and b!5316195 ((_ is ElementMatch!14971) (regOne!30455 (regOne!30455 r!7292)))) b!5317221))

(assert (= (and b!5316195 ((_ is Concat!23816) (regOne!30455 (regOne!30455 r!7292)))) b!5317222))

(assert (= (and b!5316195 ((_ is Star!14971) (regOne!30455 (regOne!30455 r!7292)))) b!5317223))

(assert (= (and b!5316195 ((_ is Union!14971) (regOne!30455 (regOne!30455 r!7292)))) b!5317224))

(declare-fun b!5317227 () Bool)

(declare-fun e!3303716 () Bool)

(declare-fun tp!1480775 () Bool)

(assert (=> b!5317227 (= e!3303716 tp!1480775)))

(declare-fun b!5317226 () Bool)

(declare-fun tp!1480774 () Bool)

(declare-fun tp!1480772 () Bool)

(assert (=> b!5317226 (= e!3303716 (and tp!1480774 tp!1480772))))

(declare-fun b!5317228 () Bool)

(declare-fun tp!1480776 () Bool)

(declare-fun tp!1480773 () Bool)

(assert (=> b!5317228 (= e!3303716 (and tp!1480776 tp!1480773))))

(assert (=> b!5316195 (= tp!1480520 e!3303716)))

(declare-fun b!5317225 () Bool)

(assert (=> b!5317225 (= e!3303716 tp_is_empty!39195)))

(assert (= (and b!5316195 ((_ is ElementMatch!14971) (regTwo!30455 (regOne!30455 r!7292)))) b!5317225))

(assert (= (and b!5316195 ((_ is Concat!23816) (regTwo!30455 (regOne!30455 r!7292)))) b!5317226))

(assert (= (and b!5316195 ((_ is Star!14971) (regTwo!30455 (regOne!30455 r!7292)))) b!5317227))

(assert (= (and b!5316195 ((_ is Union!14971) (regTwo!30455 (regOne!30455 r!7292)))) b!5317228))

(declare-fun b!5317231 () Bool)

(declare-fun e!3303717 () Bool)

(declare-fun tp!1480780 () Bool)

(assert (=> b!5317231 (= e!3303717 tp!1480780)))

(declare-fun b!5317230 () Bool)

(declare-fun tp!1480779 () Bool)

(declare-fun tp!1480777 () Bool)

(assert (=> b!5317230 (= e!3303717 (and tp!1480779 tp!1480777))))

(declare-fun b!5317232 () Bool)

(declare-fun tp!1480781 () Bool)

(declare-fun tp!1480778 () Bool)

(assert (=> b!5317232 (= e!3303717 (and tp!1480781 tp!1480778))))

(assert (=> b!5316194 (= tp!1480522 e!3303717)))

(declare-fun b!5317229 () Bool)

(assert (=> b!5317229 (= e!3303717 tp_is_empty!39195)))

(assert (= (and b!5316194 ((_ is ElementMatch!14971) (reg!15300 (regOne!30455 r!7292)))) b!5317229))

(assert (= (and b!5316194 ((_ is Concat!23816) (reg!15300 (regOne!30455 r!7292)))) b!5317230))

(assert (= (and b!5316194 ((_ is Star!14971) (reg!15300 (regOne!30455 r!7292)))) b!5317231))

(assert (= (and b!5316194 ((_ is Union!14971) (reg!15300 (regOne!30455 r!7292)))) b!5317232))

(declare-fun b!5317235 () Bool)

(declare-fun e!3303718 () Bool)

(declare-fun tp!1480785 () Bool)

(assert (=> b!5317235 (= e!3303718 tp!1480785)))

(declare-fun b!5317234 () Bool)

(declare-fun tp!1480784 () Bool)

(declare-fun tp!1480782 () Bool)

(assert (=> b!5317234 (= e!3303718 (and tp!1480784 tp!1480782))))

(declare-fun b!5317236 () Bool)

(declare-fun tp!1480786 () Bool)

(declare-fun tp!1480783 () Bool)

(assert (=> b!5317236 (= e!3303718 (and tp!1480786 tp!1480783))))

(assert (=> b!5316185 (= tp!1480511 e!3303718)))

(declare-fun b!5317233 () Bool)

(assert (=> b!5317233 (= e!3303718 tp_is_empty!39195)))

(assert (= (and b!5316185 ((_ is ElementMatch!14971) (regOne!30454 (regOne!30454 r!7292)))) b!5317233))

(assert (= (and b!5316185 ((_ is Concat!23816) (regOne!30454 (regOne!30454 r!7292)))) b!5317234))

(assert (= (and b!5316185 ((_ is Star!14971) (regOne!30454 (regOne!30454 r!7292)))) b!5317235))

(assert (= (and b!5316185 ((_ is Union!14971) (regOne!30454 (regOne!30454 r!7292)))) b!5317236))

(declare-fun b!5317239 () Bool)

(declare-fun e!3303719 () Bool)

(declare-fun tp!1480790 () Bool)

(assert (=> b!5317239 (= e!3303719 tp!1480790)))

(declare-fun b!5317238 () Bool)

(declare-fun tp!1480789 () Bool)

(declare-fun tp!1480787 () Bool)

(assert (=> b!5317238 (= e!3303719 (and tp!1480789 tp!1480787))))

(declare-fun b!5317240 () Bool)

(declare-fun tp!1480791 () Bool)

(declare-fun tp!1480788 () Bool)

(assert (=> b!5317240 (= e!3303719 (and tp!1480791 tp!1480788))))

(assert (=> b!5316185 (= tp!1480509 e!3303719)))

(declare-fun b!5317237 () Bool)

(assert (=> b!5317237 (= e!3303719 tp_is_empty!39195)))

(assert (= (and b!5316185 ((_ is ElementMatch!14971) (regTwo!30454 (regOne!30454 r!7292)))) b!5317237))

(assert (= (and b!5316185 ((_ is Concat!23816) (regTwo!30454 (regOne!30454 r!7292)))) b!5317238))

(assert (= (and b!5316185 ((_ is Star!14971) (regTwo!30454 (regOne!30454 r!7292)))) b!5317239))

(assert (= (and b!5316185 ((_ is Union!14971) (regTwo!30454 (regOne!30454 r!7292)))) b!5317240))

(declare-fun b!5317243 () Bool)

(declare-fun e!3303720 () Bool)

(declare-fun tp!1480795 () Bool)

(assert (=> b!5317243 (= e!3303720 tp!1480795)))

(declare-fun b!5317242 () Bool)

(declare-fun tp!1480794 () Bool)

(declare-fun tp!1480792 () Bool)

(assert (=> b!5317242 (= e!3303720 (and tp!1480794 tp!1480792))))

(declare-fun b!5317244 () Bool)

(declare-fun tp!1480796 () Bool)

(declare-fun tp!1480793 () Bool)

(assert (=> b!5317244 (= e!3303720 (and tp!1480796 tp!1480793))))

(assert (=> b!5316191 (= tp!1480518 e!3303720)))

(declare-fun b!5317241 () Bool)

(assert (=> b!5317241 (= e!3303720 tp_is_empty!39195)))

(assert (= (and b!5316191 ((_ is ElementMatch!14971) (regOne!30455 (regTwo!30454 r!7292)))) b!5317241))

(assert (= (and b!5316191 ((_ is Concat!23816) (regOne!30455 (regTwo!30454 r!7292)))) b!5317242))

(assert (= (and b!5316191 ((_ is Star!14971) (regOne!30455 (regTwo!30454 r!7292)))) b!5317243))

(assert (= (and b!5316191 ((_ is Union!14971) (regOne!30455 (regTwo!30454 r!7292)))) b!5317244))

(declare-fun b!5317247 () Bool)

(declare-fun e!3303721 () Bool)

(declare-fun tp!1480800 () Bool)

(assert (=> b!5317247 (= e!3303721 tp!1480800)))

(declare-fun b!5317246 () Bool)

(declare-fun tp!1480799 () Bool)

(declare-fun tp!1480797 () Bool)

(assert (=> b!5317246 (= e!3303721 (and tp!1480799 tp!1480797))))

(declare-fun b!5317248 () Bool)

(declare-fun tp!1480801 () Bool)

(declare-fun tp!1480798 () Bool)

(assert (=> b!5317248 (= e!3303721 (and tp!1480801 tp!1480798))))

(assert (=> b!5316191 (= tp!1480515 e!3303721)))

(declare-fun b!5317245 () Bool)

(assert (=> b!5317245 (= e!3303721 tp_is_empty!39195)))

(assert (= (and b!5316191 ((_ is ElementMatch!14971) (regTwo!30455 (regTwo!30454 r!7292)))) b!5317245))

(assert (= (and b!5316191 ((_ is Concat!23816) (regTwo!30455 (regTwo!30454 r!7292)))) b!5317246))

(assert (= (and b!5316191 ((_ is Star!14971) (regTwo!30455 (regTwo!30454 r!7292)))) b!5317247))

(assert (= (and b!5316191 ((_ is Union!14971) (regTwo!30455 (regTwo!30454 r!7292)))) b!5317248))

(declare-fun b!5317251 () Bool)

(declare-fun e!3303722 () Bool)

(declare-fun tp!1480805 () Bool)

(assert (=> b!5317251 (= e!3303722 tp!1480805)))

(declare-fun b!5317250 () Bool)

(declare-fun tp!1480804 () Bool)

(declare-fun tp!1480802 () Bool)

(assert (=> b!5317250 (= e!3303722 (and tp!1480804 tp!1480802))))

(declare-fun b!5317252 () Bool)

(declare-fun tp!1480806 () Bool)

(declare-fun tp!1480803 () Bool)

(assert (=> b!5317252 (= e!3303722 (and tp!1480806 tp!1480803))))

(assert (=> b!5316200 (= tp!1480529 e!3303722)))

(declare-fun b!5317249 () Bool)

(assert (=> b!5317249 (= e!3303722 tp_is_empty!39195)))

(assert (= (and b!5316200 ((_ is ElementMatch!14971) (h!67536 (exprs!4855 setElem!34195)))) b!5317249))

(assert (= (and b!5316200 ((_ is Concat!23816) (h!67536 (exprs!4855 setElem!34195)))) b!5317250))

(assert (= (and b!5316200 ((_ is Star!14971) (h!67536 (exprs!4855 setElem!34195)))) b!5317251))

(assert (= (and b!5316200 ((_ is Union!14971) (h!67536 (exprs!4855 setElem!34195)))) b!5317252))

(declare-fun b!5317253 () Bool)

(declare-fun e!3303723 () Bool)

(declare-fun tp!1480807 () Bool)

(declare-fun tp!1480808 () Bool)

(assert (=> b!5317253 (= e!3303723 (and tp!1480807 tp!1480808))))

(assert (=> b!5316200 (= tp!1480530 e!3303723)))

(assert (= (and b!5316200 ((_ is Cons!61088) (t!374419 (exprs!4855 setElem!34195)))) b!5317253))

(declare-fun condSetEmpty!34209 () Bool)

(assert (=> setNonEmpty!34201 (= condSetEmpty!34209 (= setRest!34201 ((as const (Array Context!8710 Bool)) false)))))

(declare-fun setRes!34209 () Bool)

(assert (=> setNonEmpty!34201 (= tp!1480535 setRes!34209)))

(declare-fun setIsEmpty!34209 () Bool)

(assert (=> setIsEmpty!34209 setRes!34209))

(declare-fun setNonEmpty!34209 () Bool)

(declare-fun e!3303724 () Bool)

(declare-fun tp!1480809 () Bool)

(declare-fun setElem!34209 () Context!8710)

(assert (=> setNonEmpty!34209 (= setRes!34209 (and tp!1480809 (inv!80674 setElem!34209) e!3303724))))

(declare-fun setRest!34209 () (InoxSet Context!8710))

(assert (=> setNonEmpty!34209 (= setRest!34201 ((_ map or) (store ((as const (Array Context!8710 Bool)) false) setElem!34209 true) setRest!34209))))

(declare-fun b!5317254 () Bool)

(declare-fun tp!1480810 () Bool)

(assert (=> b!5317254 (= e!3303724 tp!1480810)))

(assert (= (and setNonEmpty!34201 condSetEmpty!34209) setIsEmpty!34209))

(assert (= (and setNonEmpty!34201 (not condSetEmpty!34209)) setNonEmpty!34209))

(assert (= setNonEmpty!34209 b!5317254))

(declare-fun m!6353194 () Bool)

(assert (=> setNonEmpty!34209 m!6353194))

(declare-fun b!5317255 () Bool)

(declare-fun e!3303725 () Bool)

(declare-fun tp!1480811 () Bool)

(declare-fun tp!1480812 () Bool)

(assert (=> b!5317255 (= e!3303725 (and tp!1480811 tp!1480812))))

(assert (=> b!5316173 (= tp!1480497 e!3303725)))

(assert (= (and b!5316173 ((_ is Cons!61088) (exprs!4855 (h!67537 (t!374420 zl!343))))) b!5317255))

(declare-fun b!5317258 () Bool)

(declare-fun e!3303726 () Bool)

(declare-fun tp!1480816 () Bool)

(assert (=> b!5317258 (= e!3303726 tp!1480816)))

(declare-fun b!5317257 () Bool)

(declare-fun tp!1480815 () Bool)

(declare-fun tp!1480813 () Bool)

(assert (=> b!5317257 (= e!3303726 (and tp!1480815 tp!1480813))))

(declare-fun b!5317259 () Bool)

(declare-fun tp!1480817 () Bool)

(declare-fun tp!1480814 () Bool)

(assert (=> b!5317259 (= e!3303726 (and tp!1480817 tp!1480814))))

(assert (=> b!5316197 (= tp!1480526 e!3303726)))

(declare-fun b!5317256 () Bool)

(assert (=> b!5317256 (= e!3303726 tp_is_empty!39195)))

(assert (= (and b!5316197 ((_ is ElementMatch!14971) (regOne!30454 (regTwo!30455 r!7292)))) b!5317256))

(assert (= (and b!5316197 ((_ is Concat!23816) (regOne!30454 (regTwo!30455 r!7292)))) b!5317257))

(assert (= (and b!5316197 ((_ is Star!14971) (regOne!30454 (regTwo!30455 r!7292)))) b!5317258))

(assert (= (and b!5316197 ((_ is Union!14971) (regOne!30454 (regTwo!30455 r!7292)))) b!5317259))

(declare-fun b!5317262 () Bool)

(declare-fun e!3303727 () Bool)

(declare-fun tp!1480821 () Bool)

(assert (=> b!5317262 (= e!3303727 tp!1480821)))

(declare-fun b!5317261 () Bool)

(declare-fun tp!1480820 () Bool)

(declare-fun tp!1480818 () Bool)

(assert (=> b!5317261 (= e!3303727 (and tp!1480820 tp!1480818))))

(declare-fun b!5317263 () Bool)

(declare-fun tp!1480822 () Bool)

(declare-fun tp!1480819 () Bool)

(assert (=> b!5317263 (= e!3303727 (and tp!1480822 tp!1480819))))

(assert (=> b!5316197 (= tp!1480524 e!3303727)))

(declare-fun b!5317260 () Bool)

(assert (=> b!5317260 (= e!3303727 tp_is_empty!39195)))

(assert (= (and b!5316197 ((_ is ElementMatch!14971) (regTwo!30454 (regTwo!30455 r!7292)))) b!5317260))

(assert (= (and b!5316197 ((_ is Concat!23816) (regTwo!30454 (regTwo!30455 r!7292)))) b!5317261))

(assert (= (and b!5316197 ((_ is Star!14971) (regTwo!30454 (regTwo!30455 r!7292)))) b!5317262))

(assert (= (and b!5316197 ((_ is Union!14971) (regTwo!30454 (regTwo!30455 r!7292)))) b!5317263))

(declare-fun b!5317264 () Bool)

(declare-fun e!3303728 () Bool)

(declare-fun tp!1480823 () Bool)

(declare-fun tp!1480824 () Bool)

(assert (=> b!5317264 (= e!3303728 (and tp!1480823 tp!1480824))))

(assert (=> b!5316205 (= tp!1480536 e!3303728)))

(assert (= (and b!5316205 ((_ is Cons!61088) (exprs!4855 setElem!34201))) b!5317264))

(declare-fun b!5317267 () Bool)

(declare-fun e!3303729 () Bool)

(declare-fun tp!1480828 () Bool)

(assert (=> b!5317267 (= e!3303729 tp!1480828)))

(declare-fun b!5317266 () Bool)

(declare-fun tp!1480827 () Bool)

(declare-fun tp!1480825 () Bool)

(assert (=> b!5317266 (= e!3303729 (and tp!1480827 tp!1480825))))

(declare-fun b!5317268 () Bool)

(declare-fun tp!1480829 () Bool)

(declare-fun tp!1480826 () Bool)

(assert (=> b!5317268 (= e!3303729 (and tp!1480829 tp!1480826))))

(assert (=> b!5316198 (= tp!1480527 e!3303729)))

(declare-fun b!5317265 () Bool)

(assert (=> b!5317265 (= e!3303729 tp_is_empty!39195)))

(assert (= (and b!5316198 ((_ is ElementMatch!14971) (reg!15300 (regTwo!30455 r!7292)))) b!5317265))

(assert (= (and b!5316198 ((_ is Concat!23816) (reg!15300 (regTwo!30455 r!7292)))) b!5317266))

(assert (= (and b!5316198 ((_ is Star!14971) (reg!15300 (regTwo!30455 r!7292)))) b!5317267))

(assert (= (and b!5316198 ((_ is Union!14971) (reg!15300 (regTwo!30455 r!7292)))) b!5317268))

(declare-fun b!5317271 () Bool)

(declare-fun e!3303730 () Bool)

(declare-fun tp!1480833 () Bool)

(assert (=> b!5317271 (= e!3303730 tp!1480833)))

(declare-fun b!5317270 () Bool)

(declare-fun tp!1480832 () Bool)

(declare-fun tp!1480830 () Bool)

(assert (=> b!5317270 (= e!3303730 (and tp!1480832 tp!1480830))))

(declare-fun b!5317272 () Bool)

(declare-fun tp!1480834 () Bool)

(declare-fun tp!1480831 () Bool)

(assert (=> b!5317272 (= e!3303730 (and tp!1480834 tp!1480831))))

(assert (=> b!5316189 (= tp!1480516 e!3303730)))

(declare-fun b!5317269 () Bool)

(assert (=> b!5317269 (= e!3303730 tp_is_empty!39195)))

(assert (= (and b!5316189 ((_ is ElementMatch!14971) (regOne!30454 (regTwo!30454 r!7292)))) b!5317269))

(assert (= (and b!5316189 ((_ is Concat!23816) (regOne!30454 (regTwo!30454 r!7292)))) b!5317270))

(assert (= (and b!5316189 ((_ is Star!14971) (regOne!30454 (regTwo!30454 r!7292)))) b!5317271))

(assert (= (and b!5316189 ((_ is Union!14971) (regOne!30454 (regTwo!30454 r!7292)))) b!5317272))

(declare-fun b!5317275 () Bool)

(declare-fun e!3303731 () Bool)

(declare-fun tp!1480838 () Bool)

(assert (=> b!5317275 (= e!3303731 tp!1480838)))

(declare-fun b!5317274 () Bool)

(declare-fun tp!1480837 () Bool)

(declare-fun tp!1480835 () Bool)

(assert (=> b!5317274 (= e!3303731 (and tp!1480837 tp!1480835))))

(declare-fun b!5317276 () Bool)

(declare-fun tp!1480839 () Bool)

(declare-fun tp!1480836 () Bool)

(assert (=> b!5317276 (= e!3303731 (and tp!1480839 tp!1480836))))

(assert (=> b!5316189 (= tp!1480514 e!3303731)))

(declare-fun b!5317273 () Bool)

(assert (=> b!5317273 (= e!3303731 tp_is_empty!39195)))

(assert (= (and b!5316189 ((_ is ElementMatch!14971) (regTwo!30454 (regTwo!30454 r!7292)))) b!5317273))

(assert (= (and b!5316189 ((_ is Concat!23816) (regTwo!30454 (regTwo!30454 r!7292)))) b!5317274))

(assert (= (and b!5316189 ((_ is Star!14971) (regTwo!30454 (regTwo!30454 r!7292)))) b!5317275))

(assert (= (and b!5316189 ((_ is Union!14971) (regTwo!30454 (regTwo!30454 r!7292)))) b!5317276))

(declare-fun b!5317279 () Bool)

(declare-fun e!3303732 () Bool)

(declare-fun tp!1480843 () Bool)

(assert (=> b!5317279 (= e!3303732 tp!1480843)))

(declare-fun b!5317278 () Bool)

(declare-fun tp!1480842 () Bool)

(declare-fun tp!1480840 () Bool)

(assert (=> b!5317278 (= e!3303732 (and tp!1480842 tp!1480840))))

(declare-fun b!5317280 () Bool)

(declare-fun tp!1480844 () Bool)

(declare-fun tp!1480841 () Bool)

(assert (=> b!5317280 (= e!3303732 (and tp!1480844 tp!1480841))))

(assert (=> b!5316190 (= tp!1480517 e!3303732)))

(declare-fun b!5317277 () Bool)

(assert (=> b!5317277 (= e!3303732 tp_is_empty!39195)))

(assert (= (and b!5316190 ((_ is ElementMatch!14971) (reg!15300 (regTwo!30454 r!7292)))) b!5317277))

(assert (= (and b!5316190 ((_ is Concat!23816) (reg!15300 (regTwo!30454 r!7292)))) b!5317278))

(assert (= (and b!5316190 ((_ is Star!14971) (reg!15300 (regTwo!30454 r!7292)))) b!5317279))

(assert (= (and b!5316190 ((_ is Union!14971) (reg!15300 (regTwo!30454 r!7292)))) b!5317280))

(declare-fun b!5317283 () Bool)

(declare-fun e!3303733 () Bool)

(declare-fun tp!1480848 () Bool)

(assert (=> b!5317283 (= e!3303733 tp!1480848)))

(declare-fun b!5317282 () Bool)

(declare-fun tp!1480847 () Bool)

(declare-fun tp!1480845 () Bool)

(assert (=> b!5317282 (= e!3303733 (and tp!1480847 tp!1480845))))

(declare-fun b!5317284 () Bool)

(declare-fun tp!1480849 () Bool)

(declare-fun tp!1480846 () Bool)

(assert (=> b!5317284 (= e!3303733 (and tp!1480849 tp!1480846))))

(assert (=> b!5316160 (= tp!1480488 e!3303733)))

(declare-fun b!5317281 () Bool)

(assert (=> b!5317281 (= e!3303733 tp_is_empty!39195)))

(assert (= (and b!5316160 ((_ is ElementMatch!14971) (h!67536 (exprs!4855 (h!67537 zl!343))))) b!5317281))

(assert (= (and b!5316160 ((_ is Concat!23816) (h!67536 (exprs!4855 (h!67537 zl!343))))) b!5317282))

(assert (= (and b!5316160 ((_ is Star!14971) (h!67536 (exprs!4855 (h!67537 zl!343))))) b!5317283))

(assert (= (and b!5316160 ((_ is Union!14971) (h!67536 (exprs!4855 (h!67537 zl!343))))) b!5317284))

(declare-fun b!5317285 () Bool)

(declare-fun e!3303734 () Bool)

(declare-fun tp!1480850 () Bool)

(declare-fun tp!1480851 () Bool)

(assert (=> b!5317285 (= e!3303734 (and tp!1480850 tp!1480851))))

(assert (=> b!5316160 (= tp!1480489 e!3303734)))

(assert (= (and b!5316160 ((_ is Cons!61088) (t!374419 (exprs!4855 (h!67537 zl!343))))) b!5317285))

(declare-fun b!5317288 () Bool)

(declare-fun e!3303735 () Bool)

(declare-fun tp!1480855 () Bool)

(assert (=> b!5317288 (= e!3303735 tp!1480855)))

(declare-fun b!5317287 () Bool)

(declare-fun tp!1480854 () Bool)

(declare-fun tp!1480852 () Bool)

(assert (=> b!5317287 (= e!3303735 (and tp!1480854 tp!1480852))))

(declare-fun b!5317289 () Bool)

(declare-fun tp!1480856 () Bool)

(declare-fun tp!1480853 () Bool)

(assert (=> b!5317289 (= e!3303735 (and tp!1480856 tp!1480853))))

(assert (=> b!5316199 (= tp!1480528 e!3303735)))

(declare-fun b!5317286 () Bool)

(assert (=> b!5317286 (= e!3303735 tp_is_empty!39195)))

(assert (= (and b!5316199 ((_ is ElementMatch!14971) (regOne!30455 (regTwo!30455 r!7292)))) b!5317286))

(assert (= (and b!5316199 ((_ is Concat!23816) (regOne!30455 (regTwo!30455 r!7292)))) b!5317287))

(assert (= (and b!5316199 ((_ is Star!14971) (regOne!30455 (regTwo!30455 r!7292)))) b!5317288))

(assert (= (and b!5316199 ((_ is Union!14971) (regOne!30455 (regTwo!30455 r!7292)))) b!5317289))

(declare-fun b!5317292 () Bool)

(declare-fun e!3303736 () Bool)

(declare-fun tp!1480860 () Bool)

(assert (=> b!5317292 (= e!3303736 tp!1480860)))

(declare-fun b!5317291 () Bool)

(declare-fun tp!1480859 () Bool)

(declare-fun tp!1480857 () Bool)

(assert (=> b!5317291 (= e!3303736 (and tp!1480859 tp!1480857))))

(declare-fun b!5317293 () Bool)

(declare-fun tp!1480861 () Bool)

(declare-fun tp!1480858 () Bool)

(assert (=> b!5317293 (= e!3303736 (and tp!1480861 tp!1480858))))

(assert (=> b!5316199 (= tp!1480525 e!3303736)))

(declare-fun b!5317290 () Bool)

(assert (=> b!5317290 (= e!3303736 tp_is_empty!39195)))

(assert (= (and b!5316199 ((_ is ElementMatch!14971) (regTwo!30455 (regTwo!30455 r!7292)))) b!5317290))

(assert (= (and b!5316199 ((_ is Concat!23816) (regTwo!30455 (regTwo!30455 r!7292)))) b!5317291))

(assert (= (and b!5316199 ((_ is Star!14971) (regTwo!30455 (regTwo!30455 r!7292)))) b!5317292))

(assert (= (and b!5316199 ((_ is Union!14971) (regTwo!30455 (regTwo!30455 r!7292)))) b!5317293))

(declare-fun b_lambda!204553 () Bool)

(assert (= b_lambda!204543 (or d!1707805 b_lambda!204553)))

(declare-fun bs!1232526 () Bool)

(declare-fun d!1708215 () Bool)

(assert (= bs!1232526 (and d!1708215 d!1707805)))

(assert (=> bs!1232526 (= (dynLambda!24147 lambda!271035 (h!67536 (exprs!4855 (h!67537 zl!343)))) (validRegex!6707 (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(declare-fun m!6353196 () Bool)

(assert (=> bs!1232526 m!6353196))

(assert (=> b!5316790 d!1708215))

(declare-fun b_lambda!204555 () Bool)

(assert (= b_lambda!204529 (or b!5315464 b_lambda!204555)))

(assert (=> d!1707985 d!1707807))

(declare-fun b_lambda!204557 () Bool)

(assert (= b_lambda!204551 (or d!1707795 b_lambda!204557)))

(declare-fun bs!1232527 () Bool)

(declare-fun d!1708217 () Bool)

(assert (= bs!1232527 (and d!1708217 d!1707795)))

(assert (=> bs!1232527 (= (dynLambda!24147 lambda!271029 (h!67536 (unfocusZipperList!413 zl!343))) (validRegex!6707 (h!67536 (unfocusZipperList!413 zl!343))))))

(declare-fun m!6353198 () Bool)

(assert (=> bs!1232527 m!6353198))

(assert (=> b!5317107 d!1708217))

(declare-fun b_lambda!204559 () Bool)

(assert (= b_lambda!204547 (or d!1707793 b_lambda!204559)))

(declare-fun bs!1232528 () Bool)

(declare-fun d!1708219 () Bool)

(assert (= bs!1232528 (and d!1708219 d!1707793)))

(assert (=> bs!1232528 (= (dynLambda!24147 lambda!271026 (h!67536 (exprs!4855 (h!67537 zl!343)))) (validRegex!6707 (h!67536 (exprs!4855 (h!67537 zl!343)))))))

(assert (=> bs!1232528 m!6353196))

(assert (=> b!5316867 d!1708219))

(declare-fun b_lambda!204561 () Bool)

(assert (= b_lambda!204549 (or d!1707797 b_lambda!204561)))

(declare-fun bs!1232529 () Bool)

(declare-fun d!1708221 () Bool)

(assert (= bs!1232529 (and d!1708221 d!1707797)))

(assert (=> bs!1232529 (= (dynLambda!24147 lambda!271032 (h!67536 lt!2171232)) (validRegex!6707 (h!67536 lt!2171232)))))

(declare-fun m!6353200 () Bool)

(assert (=> bs!1232529 m!6353200))

(assert (=> b!5316869 d!1708221))

(declare-fun b_lambda!204563 () Bool)

(assert (= b_lambda!204545 (or d!1707767 b_lambda!204563)))

(declare-fun bs!1232530 () Bool)

(declare-fun d!1708223 () Bool)

(assert (= bs!1232530 (and d!1708223 d!1707767)))

(assert (=> bs!1232530 (= (dynLambda!24147 lambda!271016 (h!67536 (exprs!4855 setElem!34195))) (validRegex!6707 (h!67536 (exprs!4855 setElem!34195))))))

(declare-fun m!6353202 () Bool)

(assert (=> bs!1232530 m!6353202))

(assert (=> b!5316825 d!1708223))

(check-sat (not b!5316981) (not b!5317227) (not b_lambda!204561) (not d!1708081) (not b!5317181) (not bs!1232528) (not b!5316855) (not b!5317258) (not b!5317185) (not b!5316928) (not b!5317145) (not d!1707997) (not d!1708145) (not b!5316868) (not bm!379352) (not b!5317208) (not b!5316870) (not d!1708127) (not b!5316605) (not d!1708067) (not b!5317000) (not setNonEmpty!34208) (not bm!379368) (not b!5317173) (not b!5317268) (not b!5317226) (not b!5316996) (not b!5316918) (not bs!1232527) (not b!5317040) (not b!5317252) (not b!5317232) (not b!5316948) (not b!5317035) (not b!5317246) (not bm!379386) (not b!5316983) (not bm!379373) (not b!5317108) (not b!5317288) (not d!1708151) (not b!5316826) (not b!5317214) (not bm!379353) (not bm!379415) (not b!5317253) (not d!1708109) (not d!1707995) (not b!5317196) (not b!5317190) (not d!1708199) (not b!5317262) (not b!5316980) (not bm!379359) (not b!5317171) (not d!1708167) (not b!5317264) (not b!5316791) (not bm!379343) (not b!5317199) (not b!5317220) (not b!5317180) (not b!5316644) (not b!5317275) (not b_lambda!204515) (not bm!379406) (not b!5317187) (not d!1708111) (not b!5317194) (not b!5316834) (not b!5317183) (not b!5317184) (not b!5317013) (not bm!379363) (not b!5317228) (not b!5317207) (not b!5317234) (not d!1708055) (not b!5317044) (not b!5317250) (not bm!379342) (not b!5317191) (not bm!379407) (not b!5317243) (not b!5316942) (not bm!379366) (not b!5316830) (not bm!379395) (not bm!379361) (not b!5317291) (not d!1708121) (not b!5316923) (not b!5317272) (not b!5317271) (not b!5317267) (not b!5317257) (not b!5317216) (not d!1708203) (not b!5317218) (not b!5316848) (not d!1708163) (not bm!379335) (not b!5317292) (not d!1708113) (not b!5317125) (not b!5316821) (not b!5317285) (not bm!379369) (not b!5316798) (not b!5317042) (not b!5316866) (not bm!379408) (not bm!379357) (not bm!379392) (not b!5317240) (not d!1708061) (not b!5316998) (not b!5317293) (not b!5316846) (not b!5316932) (not bm!379336) (not b_lambda!204559) (not d!1708177) (not b!5317169) (not b!5317151) (not d!1708075) (not b!5317023) (not bm!379414) (not d!1708169) (not d!1708149) (not b!5317094) (not bm!379309) (not d!1708123) (not b!5317251) (not bs!1232530) (not b!5317254) (not b!5317195) (not b!5317188) (not b!5316975) (not b!5317248) (not b!5316941) (not b!5317231) (not b!5317014) (not b!5316916) (not d!1708139) (not bm!379394) (not b!5316915) (not b!5317247) (not b!5316947) (not b!5317200) (not b!5316743) (not bm!379413) (not bs!1232526) (not b!5317230) (not bm!379327) (not b!5317129) (not b!5317021) (not b_lambda!204555) (not b!5317210) (not b!5317274) (not b!5317266) (not bm!379350) (not b!5317022) (not b!5316924) (not bm!379358) (not b!5316643) (not b!5316965) (not b!5317048) (not b!5316962) (not b!5317031) (not b!5317278) (not b!5316610) (not b!5317168) (not b!5316921) (not b!5316645) (not bm!379419) (not bm!379387) (not b!5317255) (not b!5316844) (not b!5317242) (not b!5317204) (not b!5317270) (not bm!379328) (not bm!379337) (not b!5316852) (not b!5317280) (not b!5316831) (not d!1708033) (not b!5317263) (not bm!379367) (not b!5316994) (not b!5316911) (not d!1708165) (not d!1708103) (not b!5316810) (not b!5316999) (not b!5316931) (not b!5317284) (not d!1708175) (not bm!379355) (not b!5316845) (not b!5317109) (not d!1708135) (not b!5316838) (not b!5316912) (not b!5317212) (not bm!379385) (not b!5317215) (not b!5317192) (not bm!379400) (not d!1708131) (not d!1708097) (not b!5317287) (not b!5316642) (not bm!379384) (not b!5317276) (not bm!379345) (not b!5317202) (not d!1708107) (not b!5317238) (not bm!379310) (not b!5316993) (not b!5316601) (not b!5317223) (not d!1708133) (not b!5317224) (not b!5316793) (not bm!379324) (not b!5316920) (not b!5317222) (not bs!1232529) (not bm!379362) (not b!5317282) (not b!5316600) (not b!5317175) (not b!5317259) (not bm!379351) (not b!5317150) (not d!1708083) (not bm!379326) (not bm!379364) (not b!5316647) (not b!5317203) (not d!1708159) (not d!1708147) (not d!1708089) (not b!5317046) (not b!5316990) (not d!1708141) (not b!5317283) (not d!1708143) (not b!5317211) (not d!1708099) (not b!5317244) (not bm!379397) (not d!1708027) (not b!5316992) (not b!5317261) (not bm!379404) (not b!5317098) (not b!5317279) (not b_lambda!204553) (not b!5317041) (not b!5317179) (not bm!379399) (not b!5317086) (not bm!379388) (not b!5316648) (not bm!379330) (not b!5316944) (not b!5317189) (not b!5316979) (not b!5316926) (not b_lambda!204563) (not b!5316985) (not b!5317160) (not b!5317239) (not b!5317074) (not b!5317236) (not b!5316850) tp_is_empty!39195 (not bm!379341) (not b!5316641) (not bm!379354) (not b!5316873) (not b!5317206) (not d!1708207) (not d!1707985) (not b!5317289) (not b!5316974) (not b_lambda!204557) (not b!5317219) (not b!5317167) (not b!5316987) (not b!5316832) (not d!1708023) (not setNonEmpty!34209) (not bm!379398) (not bm!379331) (not b!5316836) (not bm!379329) (not b!5317235) (not b!5317198) (not bm!379409))
(check-sat)
