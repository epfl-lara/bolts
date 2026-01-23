; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!555398 () Bool)

(assert start!555398)

(declare-fun b!5258502 () Bool)

(assert (=> b!5258502 true))

(assert (=> b!5258502 true))

(declare-fun lambda!265050 () Int)

(declare-fun lambda!265049 () Int)

(assert (=> b!5258502 (not (= lambda!265050 lambda!265049))))

(assert (=> b!5258502 true))

(assert (=> b!5258502 true))

(declare-fun b!5258517 () Bool)

(assert (=> b!5258517 true))

(declare-fun b!5258477 () Bool)

(declare-datatypes ((Unit!153014 0))(
  ( (Unit!153015) )
))
(declare-fun e!3271210 () Unit!153014)

(declare-fun Unit!153016 () Unit!153014)

(assert (=> b!5258477 (= e!3271210 Unit!153016)))

(declare-fun b!5258478 () Bool)

(declare-fun e!3271207 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30020 0))(
  ( (C!30021 (val!24712 Int)) )
))
(declare-datatypes ((Regex!14875 0))(
  ( (ElementMatch!14875 (c!910123 C!30020)) (Concat!23720 (regOne!30262 Regex!14875) (regTwo!30262 Regex!14875)) (EmptyExpr!14875) (Star!14875 (reg!15204 Regex!14875)) (EmptyLang!14875) (Union!14875 (regOne!30263 Regex!14875) (regTwo!30263 Regex!14875)) )
))
(declare-datatypes ((List!60924 0))(
  ( (Nil!60800) (Cons!60800 (h!67248 Regex!14875) (t!374107 List!60924)) )
))
(declare-datatypes ((Context!8518 0))(
  ( (Context!8519 (exprs!4759 List!60924)) )
))
(declare-fun lt!2155063 () (InoxSet Context!8518))

(declare-datatypes ((List!60925 0))(
  ( (Nil!60801) (Cons!60801 (h!67249 C!30020) (t!374108 List!60925)) )
))
(declare-fun s!2326 () List!60925)

(declare-fun matchZipper!1119 ((InoxSet Context!8518) List!60925) Bool)

(assert (=> b!5258478 (= e!3271207 (matchZipper!1119 lt!2155063 s!2326))))

(declare-fun b!5258479 () Bool)

(declare-fun e!3271197 () Unit!153014)

(declare-fun Unit!153017 () Unit!153014)

(assert (=> b!5258479 (= e!3271197 Unit!153017)))

(declare-fun b!5258480 () Bool)

(declare-fun Unit!153018 () Unit!153014)

(assert (=> b!5258480 (= e!3271210 Unit!153018)))

(declare-fun lt!2155062 () (InoxSet Context!8518))

(declare-fun lt!2155052 () (InoxSet Context!8518))

(declare-fun lt!2155037 () Unit!153014)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!112 ((InoxSet Context!8518) (InoxSet Context!8518) List!60925) Unit!153014)

(assert (=> b!5258480 (= lt!2155037 (lemmaZipperConcatMatchesSameAsBothZippers!112 lt!2155062 lt!2155052 (t!374108 s!2326)))))

(declare-fun res!2231524 () Bool)

(assert (=> b!5258480 (= res!2231524 (matchZipper!1119 lt!2155062 (t!374108 s!2326)))))

(declare-fun e!3271218 () Bool)

(assert (=> b!5258480 (=> res!2231524 e!3271218)))

(assert (=> b!5258480 (= (matchZipper!1119 ((_ map or) lt!2155062 lt!2155052) (t!374108 s!2326)) e!3271218)))

(declare-fun b!5258481 () Bool)

(declare-fun e!3271204 () Bool)

(declare-fun tp!1470170 () Bool)

(declare-fun tp!1470172 () Bool)

(assert (=> b!5258481 (= e!3271204 (and tp!1470170 tp!1470172))))

(declare-fun b!5258482 () Bool)

(declare-fun e!3271205 () Bool)

(declare-fun tp!1470168 () Bool)

(assert (=> b!5258482 (= e!3271205 tp!1470168)))

(declare-fun b!5258483 () Bool)

(declare-fun res!2231500 () Bool)

(declare-fun e!3271194 () Bool)

(assert (=> b!5258483 (=> (not res!2231500) (not e!3271194))))

(declare-fun z!1189 () (InoxSet Context!8518))

(declare-datatypes ((List!60926 0))(
  ( (Nil!60802) (Cons!60802 (h!67250 Context!8518) (t!374109 List!60926)) )
))
(declare-fun zl!343 () List!60926)

(declare-fun toList!8659 ((InoxSet Context!8518)) List!60926)

(assert (=> b!5258483 (= res!2231500 (= (toList!8659 z!1189) zl!343))))

(declare-fun b!5258484 () Bool)

(declare-fun tp_is_empty!39003 () Bool)

(assert (=> b!5258484 (= e!3271204 tp_is_empty!39003)))

(declare-fun b!5258485 () Bool)

(declare-fun e!3271209 () Bool)

(declare-fun lt!2155060 () (InoxSet Context!8518))

(assert (=> b!5258485 (= e!3271209 (matchZipper!1119 lt!2155060 (t!374108 s!2326)))))

(declare-fun b!5258486 () Bool)

(declare-fun Unit!153019 () Unit!153014)

(assert (=> b!5258486 (= e!3271197 Unit!153019)))

(declare-fun lt!2155056 () Unit!153014)

(declare-fun lt!2155041 () (InoxSet Context!8518))

(assert (=> b!5258486 (= lt!2155056 (lemmaZipperConcatMatchesSameAsBothZippers!112 lt!2155041 lt!2155052 (t!374108 s!2326)))))

(declare-fun res!2231510 () Bool)

(declare-fun lt!2155021 () Bool)

(assert (=> b!5258486 (= res!2231510 lt!2155021)))

(declare-fun e!3271203 () Bool)

(assert (=> b!5258486 (=> res!2231510 e!3271203)))

(assert (=> b!5258486 (= (matchZipper!1119 ((_ map or) lt!2155041 lt!2155052) (t!374108 s!2326)) e!3271203)))

(declare-fun b!5258487 () Bool)

(declare-fun res!2231499 () Bool)

(declare-fun e!3271199 () Bool)

(assert (=> b!5258487 (=> res!2231499 e!3271199)))

(declare-fun isEmpty!32743 (List!60924) Bool)

(assert (=> b!5258487 (= res!2231499 (isEmpty!32743 (t!374107 (exprs!4759 (h!67250 zl!343)))))))

(declare-fun b!5258488 () Bool)

(declare-fun e!3271214 () Bool)

(declare-fun e!3271215 () Bool)

(assert (=> b!5258488 (= e!3271214 e!3271215)))

(declare-fun res!2231502 () Bool)

(assert (=> b!5258488 (=> res!2231502 e!3271215)))

(declare-fun lt!2155061 () Int)

(declare-fun lt!2155057 () Int)

(assert (=> b!5258488 (= res!2231502 (>= lt!2155061 lt!2155057))))

(declare-fun zipperDepthTotal!56 (List!60926) Int)

(assert (=> b!5258488 (= lt!2155057 (zipperDepthTotal!56 zl!343))))

(declare-fun lt!2155065 () List!60926)

(assert (=> b!5258488 (= lt!2155061 (zipperDepthTotal!56 lt!2155065))))

(declare-fun lt!2155036 () Context!8518)

(assert (=> b!5258488 (= lt!2155065 (Cons!60802 lt!2155036 Nil!60802))))

(declare-fun e!3271212 () Bool)

(declare-fun tp!1470164 () Bool)

(declare-fun b!5258489 () Bool)

(declare-fun inv!80434 (Context!8518) Bool)

(assert (=> b!5258489 (= e!3271212 (and (inv!80434 (h!67250 zl!343)) e!3271205 tp!1470164))))

(declare-fun b!5258490 () Bool)

(declare-fun e!3271201 () Bool)

(declare-fun tp!1470167 () Bool)

(assert (=> b!5258490 (= e!3271201 tp!1470167)))

(declare-fun b!5258491 () Bool)

(declare-fun tp!1470166 () Bool)

(assert (=> b!5258491 (= e!3271204 tp!1470166)))

(declare-fun b!5258492 () Bool)

(declare-fun res!2231503 () Bool)

(declare-fun e!3271219 () Bool)

(assert (=> b!5258492 (=> res!2231503 e!3271219)))

(declare-fun r!7292 () Regex!14875)

(get-info :version)

(assert (=> b!5258492 (= res!2231503 (or ((_ is EmptyExpr!14875) r!7292) ((_ is EmptyLang!14875) r!7292) ((_ is ElementMatch!14875) r!7292) ((_ is Union!14875) r!7292) (not ((_ is Concat!23720) r!7292))))))

(declare-fun b!5258493 () Bool)

(declare-fun tp!1470165 () Bool)

(declare-fun tp!1470169 () Bool)

(assert (=> b!5258493 (= e!3271204 (and tp!1470165 tp!1470169))))

(declare-fun b!5258494 () Bool)

(declare-fun e!3271200 () Bool)

(assert (=> b!5258494 (= e!3271200 e!3271214)))

(declare-fun res!2231517 () Bool)

(assert (=> b!5258494 (=> res!2231517 e!3271214)))

(declare-fun lt!2155013 () Bool)

(assert (=> b!5258494 (= res!2231517 (not (= lt!2155013 e!3271207)))))

(declare-fun res!2231514 () Bool)

(assert (=> b!5258494 (=> res!2231514 e!3271207)))

(declare-fun lt!2155016 () Bool)

(assert (=> b!5258494 (= res!2231514 lt!2155016)))

(assert (=> b!5258494 (= lt!2155013 (matchZipper!1119 z!1189 s!2326))))

(declare-fun lt!2155031 () (InoxSet Context!8518))

(assert (=> b!5258494 (= lt!2155016 (matchZipper!1119 lt!2155031 s!2326))))

(declare-fun lt!2155043 () Unit!153014)

(declare-fun e!3271216 () Unit!153014)

(assert (=> b!5258494 (= lt!2155043 e!3271216)))

(declare-fun c!910121 () Bool)

(declare-fun nullable!5044 (Regex!14875) Bool)

(assert (=> b!5258494 (= c!910121 (nullable!5044 (regTwo!30263 (regOne!30262 r!7292))))))

(declare-fun lambda!265051 () Int)

(declare-fun lt!2155064 () Context!8518)

(declare-fun flatMap!602 ((InoxSet Context!8518) Int) (InoxSet Context!8518))

(declare-fun derivationStepZipperUp!247 (Context!8518 C!30020) (InoxSet Context!8518))

(assert (=> b!5258494 (= (flatMap!602 lt!2155063 lambda!265051) (derivationStepZipperUp!247 lt!2155064 (h!67249 s!2326)))))

(declare-fun lt!2155046 () Unit!153014)

(declare-fun lemmaFlatMapOnSingletonSet!134 ((InoxSet Context!8518) Context!8518 Int) Unit!153014)

(assert (=> b!5258494 (= lt!2155046 (lemmaFlatMapOnSingletonSet!134 lt!2155063 lt!2155064 lambda!265051))))

(declare-fun lt!2155028 () (InoxSet Context!8518))

(assert (=> b!5258494 (= lt!2155028 (derivationStepZipperUp!247 lt!2155064 (h!67249 s!2326)))))

(declare-fun lt!2155042 () Unit!153014)

(assert (=> b!5258494 (= lt!2155042 e!3271197)))

(declare-fun c!910122 () Bool)

(assert (=> b!5258494 (= c!910122 (nullable!5044 (regOne!30263 (regOne!30262 r!7292))))))

(assert (=> b!5258494 (= (flatMap!602 lt!2155031 lambda!265051) (derivationStepZipperUp!247 lt!2155036 (h!67249 s!2326)))))

(declare-fun lt!2155054 () Unit!153014)

(assert (=> b!5258494 (= lt!2155054 (lemmaFlatMapOnSingletonSet!134 lt!2155031 lt!2155036 lambda!265051))))

(declare-fun lt!2155022 () (InoxSet Context!8518))

(assert (=> b!5258494 (= lt!2155022 (derivationStepZipperUp!247 lt!2155036 (h!67249 s!2326)))))

(assert (=> b!5258494 (= lt!2155063 (store ((as const (Array Context!8518 Bool)) false) lt!2155064 true))))

(declare-fun lt!2155044 () List!60924)

(assert (=> b!5258494 (= lt!2155064 (Context!8519 lt!2155044))))

(assert (=> b!5258494 (= lt!2155044 (Cons!60800 (regTwo!30263 (regOne!30262 r!7292)) (t!374107 (exprs!4759 (h!67250 zl!343)))))))

(assert (=> b!5258494 (= lt!2155031 (store ((as const (Array Context!8518 Bool)) false) lt!2155036 true))))

(declare-fun lt!2155050 () List!60924)

(assert (=> b!5258494 (= lt!2155036 (Context!8519 lt!2155050))))

(assert (=> b!5258494 (= lt!2155050 (Cons!60800 (regOne!30263 (regOne!30262 r!7292)) (t!374107 (exprs!4759 (h!67250 zl!343)))))))

(declare-fun b!5258495 () Bool)

(declare-fun e!3271202 () Bool)

(assert (=> b!5258495 (= e!3271202 (not e!3271219))))

(declare-fun res!2231511 () Bool)

(assert (=> b!5258495 (=> res!2231511 e!3271219)))

(assert (=> b!5258495 (= res!2231511 (not ((_ is Cons!60802) zl!343)))))

(declare-fun lt!2155018 () Bool)

(declare-fun matchRSpec!1978 (Regex!14875 List!60925) Bool)

(assert (=> b!5258495 (= lt!2155018 (matchRSpec!1978 r!7292 s!2326))))

(declare-fun matchR!7060 (Regex!14875 List!60925) Bool)

(assert (=> b!5258495 (= lt!2155018 (matchR!7060 r!7292 s!2326))))

(declare-fun lt!2155035 () Unit!153014)

(declare-fun mainMatchTheorem!1978 (Regex!14875 List!60925) Unit!153014)

(assert (=> b!5258495 (= lt!2155035 (mainMatchTheorem!1978 r!7292 s!2326))))

(declare-fun b!5258496 () Bool)

(declare-fun e!3271217 () Bool)

(declare-fun e!3271220 () Bool)

(assert (=> b!5258496 (= e!3271217 e!3271220)))

(declare-fun res!2231525 () Bool)

(assert (=> b!5258496 (=> res!2231525 e!3271220)))

(declare-fun lt!2155049 () (InoxSet Context!8518))

(assert (=> b!5258496 (= res!2231525 (not (= lt!2155062 lt!2155049)))))

(assert (=> b!5258496 (= lt!2155049 ((_ map or) lt!2155041 lt!2155060))))

(declare-fun lt!2155032 () Context!8518)

(declare-fun derivationStepZipperDown!323 (Regex!14875 Context!8518 C!30020) (InoxSet Context!8518))

(assert (=> b!5258496 (= lt!2155060 (derivationStepZipperDown!323 (regTwo!30263 (regOne!30262 r!7292)) lt!2155032 (h!67249 s!2326)))))

(assert (=> b!5258496 (= lt!2155041 (derivationStepZipperDown!323 (regOne!30263 (regOne!30262 r!7292)) lt!2155032 (h!67249 s!2326)))))

(declare-fun b!5258497 () Bool)

(declare-fun res!2231521 () Bool)

(assert (=> b!5258497 (=> res!2231521 e!3271219)))

(assert (=> b!5258497 (= res!2231521 (not ((_ is Cons!60800) (exprs!4759 (h!67250 zl!343)))))))

(declare-fun b!5258498 () Bool)

(declare-fun e!3271211 () Bool)

(declare-fun e!3271195 () Bool)

(assert (=> b!5258498 (= e!3271211 e!3271195)))

(declare-fun res!2231506 () Bool)

(assert (=> b!5258498 (=> res!2231506 e!3271195)))

(declare-fun lt!2155045 () Regex!14875)

(assert (=> b!5258498 (= res!2231506 (not (= r!7292 lt!2155045)))))

(assert (=> b!5258498 (= lt!2155045 (Concat!23720 (Union!14875 (regOne!30263 (regOne!30262 r!7292)) (regTwo!30263 (regOne!30262 r!7292))) (regTwo!30262 r!7292)))))

(declare-fun b!5258499 () Bool)

(assert (=> b!5258499 (= e!3271194 e!3271202)))

(declare-fun res!2231512 () Bool)

(assert (=> b!5258499 (=> (not res!2231512) (not e!3271202))))

(declare-fun lt!2155026 () Regex!14875)

(assert (=> b!5258499 (= res!2231512 (= r!7292 lt!2155026))))

(declare-fun unfocusZipper!617 (List!60926) Regex!14875)

(assert (=> b!5258499 (= lt!2155026 (unfocusZipper!617 zl!343))))

(declare-fun b!5258500 () Bool)

(declare-fun Unit!153020 () Unit!153014)

(assert (=> b!5258500 (= e!3271216 Unit!153020)))

(declare-fun lt!2155059 () Unit!153014)

(assert (=> b!5258500 (= lt!2155059 (lemmaZipperConcatMatchesSameAsBothZippers!112 lt!2155060 lt!2155052 (t!374108 s!2326)))))

(declare-fun res!2231522 () Bool)

(assert (=> b!5258500 (= res!2231522 (matchZipper!1119 lt!2155060 (t!374108 s!2326)))))

(declare-fun e!3271208 () Bool)

(assert (=> b!5258500 (=> res!2231522 e!3271208)))

(assert (=> b!5258500 (= (matchZipper!1119 ((_ map or) lt!2155060 lt!2155052) (t!374108 s!2326)) e!3271208)))

(declare-fun b!5258501 () Bool)

(declare-fun res!2231519 () Bool)

(assert (=> b!5258501 (=> res!2231519 e!3271219)))

(declare-fun isEmpty!32744 (List!60926) Bool)

(assert (=> b!5258501 (= res!2231519 (not (isEmpty!32744 (t!374109 zl!343))))))

(assert (=> b!5258502 (= e!3271219 e!3271199)))

(declare-fun res!2231505 () Bool)

(assert (=> b!5258502 (=> res!2231505 e!3271199)))

(declare-fun lt!2155017 () Bool)

(assert (=> b!5258502 (= res!2231505 (or (not (= lt!2155018 lt!2155017)) ((_ is Nil!60801) s!2326)))))

(declare-fun Exists!2056 (Int) Bool)

(assert (=> b!5258502 (= (Exists!2056 lambda!265049) (Exists!2056 lambda!265050))))

(declare-fun lt!2155014 () Unit!153014)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!710 (Regex!14875 Regex!14875 List!60925) Unit!153014)

(assert (=> b!5258502 (= lt!2155014 (lemmaExistCutMatchRandMatchRSpecEquivalent!710 (regOne!30262 r!7292) (regTwo!30262 r!7292) s!2326))))

(assert (=> b!5258502 (= lt!2155017 (Exists!2056 lambda!265049))))

(declare-datatypes ((tuple2!64148 0))(
  ( (tuple2!64149 (_1!35377 List!60925) (_2!35377 List!60925)) )
))
(declare-datatypes ((Option!14986 0))(
  ( (None!14985) (Some!14985 (v!51014 tuple2!64148)) )
))
(declare-fun isDefined!11689 (Option!14986) Bool)

(declare-fun findConcatSeparation!1400 (Regex!14875 Regex!14875 List!60925 List!60925 List!60925) Option!14986)

(assert (=> b!5258502 (= lt!2155017 (isDefined!11689 (findConcatSeparation!1400 (regOne!30262 r!7292) (regTwo!30262 r!7292) Nil!60801 s!2326 s!2326)))))

(declare-fun lt!2155033 () Unit!153014)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1164 (Regex!14875 Regex!14875 List!60925) Unit!153014)

(assert (=> b!5258502 (= lt!2155033 (lemmaFindConcatSeparationEquivalentToExists!1164 (regOne!30262 r!7292) (regTwo!30262 r!7292) s!2326))))

(declare-fun b!5258503 () Bool)

(declare-fun res!2231518 () Bool)

(assert (=> b!5258503 (=> res!2231518 e!3271219)))

(declare-fun generalisedConcat!544 (List!60924) Regex!14875)

(assert (=> b!5258503 (= res!2231518 (not (= r!7292 (generalisedConcat!544 (exprs!4759 (h!67250 zl!343))))))))

(declare-fun b!5258504 () Bool)

(declare-fun e!3271213 () Bool)

(declare-fun tp!1470173 () Bool)

(assert (=> b!5258504 (= e!3271213 (and tp_is_empty!39003 tp!1470173))))

(declare-fun b!5258505 () Bool)

(declare-fun e!3271206 () Bool)

(assert (=> b!5258505 (= e!3271195 e!3271206)))

(declare-fun res!2231509 () Bool)

(assert (=> b!5258505 (=> res!2231509 e!3271206)))

(declare-fun lt!2155048 () Regex!14875)

(declare-fun lt!2155055 () Regex!14875)

(declare-fun lt!2155023 () Regex!14875)

(assert (=> b!5258505 (= res!2231509 (or (not (= lt!2155023 (Concat!23720 (regOne!30263 (regOne!30262 r!7292)) lt!2155048))) (not (= lt!2155055 (Concat!23720 (regTwo!30263 (regOne!30262 r!7292)) lt!2155048))) (not (= (regTwo!30262 r!7292) lt!2155048))))))

(assert (=> b!5258505 (= lt!2155048 (generalisedConcat!544 (t!374107 (exprs!4759 (h!67250 zl!343)))))))

(declare-fun b!5258506 () Bool)

(declare-fun e!3271198 () Bool)

(assert (=> b!5258506 (= e!3271198 (not (matchZipper!1119 lt!2155060 (t!374108 s!2326))))))

(declare-fun b!5258507 () Bool)

(declare-fun e!3271196 () Bool)

(assert (=> b!5258507 (= e!3271215 e!3271196)))

(declare-fun res!2231523 () Bool)

(assert (=> b!5258507 (=> res!2231523 e!3271196)))

(declare-fun lt!2155051 () List!60926)

(assert (=> b!5258507 (= res!2231523 (>= (zipperDepthTotal!56 lt!2155051) lt!2155057))))

(assert (=> b!5258507 (= lt!2155051 (Cons!60802 lt!2155064 Nil!60802))))

(declare-fun res!2231507 () Bool)

(assert (=> start!555398 (=> (not res!2231507) (not e!3271194))))

(declare-fun validRegex!6611 (Regex!14875) Bool)

(assert (=> start!555398 (= res!2231507 (validRegex!6611 r!7292))))

(assert (=> start!555398 e!3271194))

(assert (=> start!555398 e!3271204))

(declare-fun condSetEmpty!33605 () Bool)

(assert (=> start!555398 (= condSetEmpty!33605 (= z!1189 ((as const (Array Context!8518 Bool)) false)))))

(declare-fun setRes!33605 () Bool)

(assert (=> start!555398 setRes!33605))

(assert (=> start!555398 e!3271212))

(assert (=> start!555398 e!3271213))

(declare-fun tp!1470171 () Bool)

(declare-fun setElem!33605 () Context!8518)

(declare-fun setNonEmpty!33605 () Bool)

(assert (=> setNonEmpty!33605 (= setRes!33605 (and tp!1470171 (inv!80434 setElem!33605) e!3271201))))

(declare-fun setRest!33605 () (InoxSet Context!8518))

(assert (=> setNonEmpty!33605 (= z!1189 ((_ map or) (store ((as const (Array Context!8518 Bool)) false) setElem!33605 true) setRest!33605))))

(declare-fun b!5258508 () Bool)

(assert (=> b!5258508 (= e!3271196 e!3271211)))

(declare-fun res!2231501 () Bool)

(assert (=> b!5258508 (=> res!2231501 e!3271211)))

(declare-fun lt!2155025 () Bool)

(declare-fun lt!2155024 () Bool)

(assert (=> b!5258508 (= res!2231501 (and (not (= lt!2155013 lt!2155025)) (not lt!2155024)))))

(assert (=> b!5258508 (= lt!2155024 (matchRSpec!1978 lt!2155055 s!2326))))

(declare-fun lt!2155066 () Unit!153014)

(assert (=> b!5258508 (= lt!2155066 (mainMatchTheorem!1978 lt!2155055 s!2326))))

(assert (=> b!5258508 (= lt!2155025 (matchRSpec!1978 lt!2155023 s!2326))))

(declare-fun lt!2155020 () Unit!153014)

(assert (=> b!5258508 (= lt!2155020 (mainMatchTheorem!1978 lt!2155023 s!2326))))

(assert (=> b!5258508 (= lt!2155024 (matchZipper!1119 lt!2155063 s!2326))))

(assert (=> b!5258508 (= lt!2155024 (matchR!7060 lt!2155055 s!2326))))

(declare-fun lt!2155047 () Unit!153014)

(declare-fun theoremZipperRegexEquiv!309 ((InoxSet Context!8518) List!60926 Regex!14875 List!60925) Unit!153014)

(assert (=> b!5258508 (= lt!2155047 (theoremZipperRegexEquiv!309 lt!2155063 lt!2155051 lt!2155055 s!2326))))

(assert (=> b!5258508 (= lt!2155055 (generalisedConcat!544 lt!2155044))))

(assert (=> b!5258508 (= lt!2155025 lt!2155016)))

(assert (=> b!5258508 (= lt!2155025 (matchR!7060 lt!2155023 s!2326))))

(declare-fun lt!2155039 () Unit!153014)

(assert (=> b!5258508 (= lt!2155039 (theoremZipperRegexEquiv!309 lt!2155031 lt!2155065 lt!2155023 s!2326))))

(assert (=> b!5258508 (= lt!2155023 (generalisedConcat!544 lt!2155050))))

(declare-fun b!5258509 () Bool)

(assert (=> b!5258509 (= e!3271206 true)))

(declare-fun lt!2155015 () Bool)

(assert (=> b!5258509 (= lt!2155015 (matchRSpec!1978 lt!2155045 s!2326))))

(declare-fun lt!2155038 () Unit!153014)

(assert (=> b!5258509 (= lt!2155038 (mainMatchTheorem!1978 lt!2155045 s!2326))))

(declare-fun lt!2155053 () Bool)

(declare-fun lt!2155027 () Regex!14875)

(assert (=> b!5258509 (= lt!2155053 (matchRSpec!1978 lt!2155027 s!2326))))

(declare-fun lt!2155034 () Unit!153014)

(assert (=> b!5258509 (= lt!2155034 (mainMatchTheorem!1978 lt!2155027 s!2326))))

(assert (=> b!5258509 (= lt!2155015 lt!2155053)))

(assert (=> b!5258509 (= lt!2155053 (matchR!7060 lt!2155027 s!2326))))

(assert (=> b!5258509 (= lt!2155015 (matchR!7060 lt!2155045 s!2326))))

(assert (=> b!5258509 (= lt!2155027 (Union!14875 (Concat!23720 (regOne!30263 (regOne!30262 r!7292)) (regTwo!30262 r!7292)) (Concat!23720 (regTwo!30263 (regOne!30262 r!7292)) (regTwo!30262 r!7292))))))

(declare-fun lt!2155030 () Unit!153014)

(declare-fun lemmaConcatDistributesInUnion!20 (Regex!14875 Regex!14875 Regex!14875 List!60925) Unit!153014)

(assert (=> b!5258509 (= lt!2155030 (lemmaConcatDistributesInUnion!20 (regOne!30263 (regOne!30262 r!7292)) (regTwo!30263 (regOne!30262 r!7292)) (regTwo!30262 r!7292) s!2326))))

(declare-fun b!5258510 () Bool)

(assert (=> b!5258510 (= e!3271218 (matchZipper!1119 lt!2155052 (t!374108 s!2326)))))

(declare-fun b!5258511 () Bool)

(assert (=> b!5258511 (= e!3271220 e!3271200)))

(declare-fun res!2231520 () Bool)

(assert (=> b!5258511 (=> res!2231520 e!3271200)))

(assert (=> b!5258511 (= res!2231520 e!3271198)))

(declare-fun res!2231516 () Bool)

(assert (=> b!5258511 (=> (not res!2231516) (not e!3271198))))

(assert (=> b!5258511 (= res!2231516 (not (= (matchZipper!1119 lt!2155062 (t!374108 s!2326)) lt!2155021)))))

(assert (=> b!5258511 (= (matchZipper!1119 lt!2155049 (t!374108 s!2326)) e!3271209)))

(declare-fun res!2231508 () Bool)

(assert (=> b!5258511 (=> res!2231508 e!3271209)))

(assert (=> b!5258511 (= res!2231508 lt!2155021)))

(assert (=> b!5258511 (= lt!2155021 (matchZipper!1119 lt!2155041 (t!374108 s!2326)))))

(declare-fun lt!2155040 () Unit!153014)

(assert (=> b!5258511 (= lt!2155040 (lemmaZipperConcatMatchesSameAsBothZippers!112 lt!2155041 lt!2155060 (t!374108 s!2326)))))

(declare-fun b!5258512 () Bool)

(assert (=> b!5258512 (= e!3271203 (matchZipper!1119 lt!2155052 (t!374108 s!2326)))))

(declare-fun b!5258513 () Bool)

(declare-fun Unit!153021 () Unit!153014)

(assert (=> b!5258513 (= e!3271216 Unit!153021)))

(declare-fun b!5258514 () Bool)

(assert (=> b!5258514 (= e!3271208 (matchZipper!1119 lt!2155052 (t!374108 s!2326)))))

(declare-fun b!5258515 () Bool)

(declare-fun res!2231504 () Bool)

(assert (=> b!5258515 (=> res!2231504 e!3271214)))

(assert (=> b!5258515 (= res!2231504 (or (not (= lt!2155026 r!7292)) (not (= (exprs!4759 (h!67250 zl!343)) (Cons!60800 (regOne!30262 r!7292) (t!374107 (exprs!4759 (h!67250 zl!343))))))))))

(declare-fun b!5258516 () Bool)

(declare-fun res!2231515 () Bool)

(assert (=> b!5258516 (=> res!2231515 e!3271219)))

(declare-fun generalisedUnion!804 (List!60924) Regex!14875)

(declare-fun unfocusZipperList!317 (List!60926) List!60924)

(assert (=> b!5258516 (= res!2231515 (not (= r!7292 (generalisedUnion!804 (unfocusZipperList!317 zl!343)))))))

(declare-fun setIsEmpty!33605 () Bool)

(assert (=> setIsEmpty!33605 setRes!33605))

(assert (=> b!5258517 (= e!3271199 e!3271217)))

(declare-fun res!2231513 () Bool)

(assert (=> b!5258517 (=> res!2231513 e!3271217)))

(assert (=> b!5258517 (= res!2231513 (or (and ((_ is ElementMatch!14875) (regOne!30262 r!7292)) (= (c!910123 (regOne!30262 r!7292)) (h!67249 s!2326))) (not ((_ is Union!14875) (regOne!30262 r!7292)))))))

(declare-fun lt!2155019 () Unit!153014)

(assert (=> b!5258517 (= lt!2155019 e!3271210)))

(declare-fun c!910120 () Bool)

(assert (=> b!5258517 (= c!910120 (nullable!5044 (h!67248 (exprs!4759 (h!67250 zl!343)))))))

(assert (=> b!5258517 (= (flatMap!602 z!1189 lambda!265051) (derivationStepZipperUp!247 (h!67250 zl!343) (h!67249 s!2326)))))

(declare-fun lt!2155029 () Unit!153014)

(assert (=> b!5258517 (= lt!2155029 (lemmaFlatMapOnSingletonSet!134 z!1189 (h!67250 zl!343) lambda!265051))))

(assert (=> b!5258517 (= lt!2155052 (derivationStepZipperUp!247 lt!2155032 (h!67249 s!2326)))))

(assert (=> b!5258517 (= lt!2155062 (derivationStepZipperDown!323 (h!67248 (exprs!4759 (h!67250 zl!343))) lt!2155032 (h!67249 s!2326)))))

(assert (=> b!5258517 (= lt!2155032 (Context!8519 (t!374107 (exprs!4759 (h!67250 zl!343)))))))

(declare-fun lt!2155058 () (InoxSet Context!8518))

(assert (=> b!5258517 (= lt!2155058 (derivationStepZipperUp!247 (Context!8519 (Cons!60800 (h!67248 (exprs!4759 (h!67250 zl!343))) (t!374107 (exprs!4759 (h!67250 zl!343))))) (h!67249 s!2326)))))

(assert (= (and start!555398 res!2231507) b!5258483))

(assert (= (and b!5258483 res!2231500) b!5258499))

(assert (= (and b!5258499 res!2231512) b!5258495))

(assert (= (and b!5258495 (not res!2231511)) b!5258501))

(assert (= (and b!5258501 (not res!2231519)) b!5258503))

(assert (= (and b!5258503 (not res!2231518)) b!5258497))

(assert (= (and b!5258497 (not res!2231521)) b!5258516))

(assert (= (and b!5258516 (not res!2231515)) b!5258492))

(assert (= (and b!5258492 (not res!2231503)) b!5258502))

(assert (= (and b!5258502 (not res!2231505)) b!5258487))

(assert (= (and b!5258487 (not res!2231499)) b!5258517))

(assert (= (and b!5258517 c!910120) b!5258480))

(assert (= (and b!5258517 (not c!910120)) b!5258477))

(assert (= (and b!5258480 (not res!2231524)) b!5258510))

(assert (= (and b!5258517 (not res!2231513)) b!5258496))

(assert (= (and b!5258496 (not res!2231525)) b!5258511))

(assert (= (and b!5258511 (not res!2231508)) b!5258485))

(assert (= (and b!5258511 res!2231516) b!5258506))

(assert (= (and b!5258511 (not res!2231520)) b!5258494))

(assert (= (and b!5258494 c!910122) b!5258486))

(assert (= (and b!5258494 (not c!910122)) b!5258479))

(assert (= (and b!5258486 (not res!2231510)) b!5258512))

(assert (= (and b!5258494 c!910121) b!5258500))

(assert (= (and b!5258494 (not c!910121)) b!5258513))

(assert (= (and b!5258500 (not res!2231522)) b!5258514))

(assert (= (and b!5258494 (not res!2231514)) b!5258478))

(assert (= (and b!5258494 (not res!2231517)) b!5258515))

(assert (= (and b!5258515 (not res!2231504)) b!5258488))

(assert (= (and b!5258488 (not res!2231502)) b!5258507))

(assert (= (and b!5258507 (not res!2231523)) b!5258508))

(assert (= (and b!5258508 (not res!2231501)) b!5258498))

(assert (= (and b!5258498 (not res!2231506)) b!5258505))

(assert (= (and b!5258505 (not res!2231509)) b!5258509))

(assert (= (and start!555398 ((_ is ElementMatch!14875) r!7292)) b!5258484))

(assert (= (and start!555398 ((_ is Concat!23720) r!7292)) b!5258493))

(assert (= (and start!555398 ((_ is Star!14875) r!7292)) b!5258491))

(assert (= (and start!555398 ((_ is Union!14875) r!7292)) b!5258481))

(assert (= (and start!555398 condSetEmpty!33605) setIsEmpty!33605))

(assert (= (and start!555398 (not condSetEmpty!33605)) setNonEmpty!33605))

(assert (= setNonEmpty!33605 b!5258490))

(assert (= b!5258489 b!5258482))

(assert (= (and start!555398 ((_ is Cons!60802) zl!343)) b!5258489))

(assert (= (and start!555398 ((_ is Cons!60801) s!2326)) b!5258504))

(declare-fun m!6300708 () Bool)

(assert (=> b!5258499 m!6300708))

(declare-fun m!6300710 () Bool)

(assert (=> b!5258506 m!6300710))

(declare-fun m!6300712 () Bool)

(assert (=> b!5258478 m!6300712))

(declare-fun m!6300714 () Bool)

(assert (=> b!5258489 m!6300714))

(declare-fun m!6300716 () Bool)

(assert (=> b!5258514 m!6300716))

(declare-fun m!6300718 () Bool)

(assert (=> b!5258509 m!6300718))

(declare-fun m!6300720 () Bool)

(assert (=> b!5258509 m!6300720))

(declare-fun m!6300722 () Bool)

(assert (=> b!5258509 m!6300722))

(declare-fun m!6300724 () Bool)

(assert (=> b!5258509 m!6300724))

(declare-fun m!6300726 () Bool)

(assert (=> b!5258509 m!6300726))

(declare-fun m!6300728 () Bool)

(assert (=> b!5258509 m!6300728))

(declare-fun m!6300730 () Bool)

(assert (=> b!5258509 m!6300730))

(declare-fun m!6300732 () Bool)

(assert (=> start!555398 m!6300732))

(declare-fun m!6300734 () Bool)

(assert (=> b!5258511 m!6300734))

(declare-fun m!6300736 () Bool)

(assert (=> b!5258511 m!6300736))

(declare-fun m!6300738 () Bool)

(assert (=> b!5258511 m!6300738))

(declare-fun m!6300740 () Bool)

(assert (=> b!5258511 m!6300740))

(declare-fun m!6300742 () Bool)

(assert (=> b!5258500 m!6300742))

(assert (=> b!5258500 m!6300710))

(declare-fun m!6300744 () Bool)

(assert (=> b!5258500 m!6300744))

(declare-fun m!6300746 () Bool)

(assert (=> b!5258486 m!6300746))

(declare-fun m!6300748 () Bool)

(assert (=> b!5258486 m!6300748))

(declare-fun m!6300750 () Bool)

(assert (=> b!5258516 m!6300750))

(assert (=> b!5258516 m!6300750))

(declare-fun m!6300752 () Bool)

(assert (=> b!5258516 m!6300752))

(declare-fun m!6300754 () Bool)

(assert (=> b!5258505 m!6300754))

(declare-fun m!6300756 () Bool)

(assert (=> b!5258496 m!6300756))

(declare-fun m!6300758 () Bool)

(assert (=> b!5258496 m!6300758))

(declare-fun m!6300760 () Bool)

(assert (=> b!5258503 m!6300760))

(declare-fun m!6300762 () Bool)

(assert (=> setNonEmpty!33605 m!6300762))

(declare-fun m!6300764 () Bool)

(assert (=> b!5258517 m!6300764))

(declare-fun m!6300766 () Bool)

(assert (=> b!5258517 m!6300766))

(declare-fun m!6300768 () Bool)

(assert (=> b!5258517 m!6300768))

(declare-fun m!6300770 () Bool)

(assert (=> b!5258517 m!6300770))

(declare-fun m!6300772 () Bool)

(assert (=> b!5258517 m!6300772))

(declare-fun m!6300774 () Bool)

(assert (=> b!5258517 m!6300774))

(declare-fun m!6300776 () Bool)

(assert (=> b!5258517 m!6300776))

(declare-fun m!6300778 () Bool)

(assert (=> b!5258487 m!6300778))

(declare-fun m!6300780 () Bool)

(assert (=> b!5258480 m!6300780))

(assert (=> b!5258480 m!6300734))

(declare-fun m!6300782 () Bool)

(assert (=> b!5258480 m!6300782))

(declare-fun m!6300784 () Bool)

(assert (=> b!5258483 m!6300784))

(declare-fun m!6300786 () Bool)

(assert (=> b!5258495 m!6300786))

(declare-fun m!6300788 () Bool)

(assert (=> b!5258495 m!6300788))

(declare-fun m!6300790 () Bool)

(assert (=> b!5258495 m!6300790))

(declare-fun m!6300792 () Bool)

(assert (=> b!5258501 m!6300792))

(declare-fun m!6300794 () Bool)

(assert (=> b!5258507 m!6300794))

(declare-fun m!6300796 () Bool)

(assert (=> b!5258508 m!6300796))

(declare-fun m!6300798 () Bool)

(assert (=> b!5258508 m!6300798))

(declare-fun m!6300800 () Bool)

(assert (=> b!5258508 m!6300800))

(declare-fun m!6300802 () Bool)

(assert (=> b!5258508 m!6300802))

(declare-fun m!6300804 () Bool)

(assert (=> b!5258508 m!6300804))

(declare-fun m!6300806 () Bool)

(assert (=> b!5258508 m!6300806))

(declare-fun m!6300808 () Bool)

(assert (=> b!5258508 m!6300808))

(declare-fun m!6300810 () Bool)

(assert (=> b!5258508 m!6300810))

(declare-fun m!6300812 () Bool)

(assert (=> b!5258508 m!6300812))

(assert (=> b!5258508 m!6300712))

(declare-fun m!6300814 () Bool)

(assert (=> b!5258508 m!6300814))

(assert (=> b!5258512 m!6300716))

(assert (=> b!5258510 m!6300716))

(declare-fun m!6300816 () Bool)

(assert (=> b!5258488 m!6300816))

(declare-fun m!6300818 () Bool)

(assert (=> b!5258488 m!6300818))

(assert (=> b!5258485 m!6300710))

(declare-fun m!6300820 () Bool)

(assert (=> b!5258494 m!6300820))

(declare-fun m!6300822 () Bool)

(assert (=> b!5258494 m!6300822))

(declare-fun m!6300824 () Bool)

(assert (=> b!5258494 m!6300824))

(declare-fun m!6300826 () Bool)

(assert (=> b!5258494 m!6300826))

(declare-fun m!6300828 () Bool)

(assert (=> b!5258494 m!6300828))

(declare-fun m!6300830 () Bool)

(assert (=> b!5258494 m!6300830))

(declare-fun m!6300832 () Bool)

(assert (=> b!5258494 m!6300832))

(declare-fun m!6300834 () Bool)

(assert (=> b!5258494 m!6300834))

(declare-fun m!6300836 () Bool)

(assert (=> b!5258494 m!6300836))

(declare-fun m!6300838 () Bool)

(assert (=> b!5258494 m!6300838))

(declare-fun m!6300840 () Bool)

(assert (=> b!5258494 m!6300840))

(declare-fun m!6300842 () Bool)

(assert (=> b!5258494 m!6300842))

(declare-fun m!6300844 () Bool)

(assert (=> b!5258502 m!6300844))

(declare-fun m!6300846 () Bool)

(assert (=> b!5258502 m!6300846))

(declare-fun m!6300848 () Bool)

(assert (=> b!5258502 m!6300848))

(assert (=> b!5258502 m!6300844))

(declare-fun m!6300850 () Bool)

(assert (=> b!5258502 m!6300850))

(declare-fun m!6300852 () Bool)

(assert (=> b!5258502 m!6300852))

(assert (=> b!5258502 m!6300846))

(declare-fun m!6300854 () Bool)

(assert (=> b!5258502 m!6300854))

(check-sat (not b!5258489) (not b!5258488) (not b!5258502) (not b!5258482) (not b!5258514) (not b!5258493) (not b!5258485) (not b!5258491) (not b!5258509) (not b!5258496) (not b!5258481) (not b!5258508) (not b!5258501) (not b!5258480) (not b!5258487) (not b!5258511) tp_is_empty!39003 (not start!555398) (not b!5258517) (not b!5258507) (not b!5258495) (not b!5258503) (not b!5258504) (not b!5258486) (not b!5258478) (not setNonEmpty!33605) (not b!5258505) (not b!5258483) (not b!5258510) (not b!5258499) (not b!5258500) (not b!5258494) (not b!5258490) (not b!5258512) (not b!5258516) (not b!5258506))
(check-sat)
