; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!577214 () Bool)

(assert start!577214)

(declare-fun b!5531382 () Bool)

(assert (=> b!5531382 true))

(assert (=> b!5531382 true))

(declare-fun lambda!296930 () Int)

(declare-fun lambda!296929 () Int)

(assert (=> b!5531382 (not (= lambda!296930 lambda!296929))))

(assert (=> b!5531382 true))

(assert (=> b!5531382 true))

(declare-fun b!5531380 () Bool)

(assert (=> b!5531380 true))

(declare-fun b!5531377 () Bool)

(declare-fun e!3419281 () Bool)

(declare-fun tp!1521551 () Bool)

(assert (=> b!5531377 (= e!3419281 tp!1521551)))

(declare-fun b!5531379 () Bool)

(declare-fun res!2355093 () Bool)

(declare-fun e!3419275 () Bool)

(assert (=> b!5531379 (=> res!2355093 e!3419275)))

(declare-datatypes ((C!31304 0))(
  ( (C!31305 (val!25354 Int)) )
))
(declare-datatypes ((Regex!15517 0))(
  ( (ElementMatch!15517 (c!968045 C!31304)) (Concat!24362 (regOne!31546 Regex!15517) (regTwo!31546 Regex!15517)) (EmptyExpr!15517) (Star!15517 (reg!15846 Regex!15517)) (EmptyLang!15517) (Union!15517 (regOne!31547 Regex!15517) (regTwo!31547 Regex!15517)) )
))
(declare-fun r!7292 () Regex!15517)

(declare-datatypes ((List!62850 0))(
  ( (Nil!62726) (Cons!62726 (h!69174 Regex!15517) (t!376109 List!62850)) )
))
(declare-datatypes ((Context!9802 0))(
  ( (Context!9803 (exprs!5401 List!62850)) )
))
(declare-datatypes ((List!62851 0))(
  ( (Nil!62727) (Cons!62727 (h!69175 Context!9802) (t!376110 List!62851)) )
))
(declare-fun zl!343 () List!62851)

(declare-fun generalisedConcat!1132 (List!62850) Regex!15517)

(assert (=> b!5531379 (= res!2355093 (not (= r!7292 (generalisedConcat!1132 (exprs!5401 (h!69175 zl!343))))))))

(declare-fun e!3419284 () Bool)

(declare-fun e!3419279 () Bool)

(assert (=> b!5531380 (= e!3419284 e!3419279)))

(declare-fun res!2355079 () Bool)

(assert (=> b!5531380 (=> res!2355079 e!3419279)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2248529 () (InoxSet Context!9802))

(declare-fun lt!2248518 () (InoxSet Context!9802))

(assert (=> b!5531380 (= res!2355079 (not (= lt!2248529 lt!2248518)))))

(declare-datatypes ((List!62852 0))(
  ( (Nil!62728) (Cons!62728 (h!69176 C!31304) (t!376111 List!62852)) )
))
(declare-fun s!2326 () List!62852)

(declare-fun z!1189 () (InoxSet Context!9802))

(declare-fun lambda!296931 () Int)

(declare-fun flatMap!1130 ((InoxSet Context!9802) Int) (InoxSet Context!9802))

(declare-fun derivationStepZipperUp!785 (Context!9802 C!31304) (InoxSet Context!9802))

(assert (=> b!5531380 (= (flatMap!1130 z!1189 lambda!296931) (derivationStepZipperUp!785 (h!69175 zl!343) (h!69176 s!2326)))))

(declare-datatypes ((Unit!155494 0))(
  ( (Unit!155495) )
))
(declare-fun lt!2248527 () Unit!155494)

(declare-fun lemmaFlatMapOnSingletonSet!662 ((InoxSet Context!9802) Context!9802 Int) Unit!155494)

(assert (=> b!5531380 (= lt!2248527 (lemmaFlatMapOnSingletonSet!662 z!1189 (h!69175 zl!343) lambda!296931))))

(declare-fun b!5531381 () Bool)

(declare-fun e!3419285 () Bool)

(declare-fun e!3419288 () Bool)

(assert (=> b!5531381 (= e!3419285 e!3419288)))

(declare-fun res!2355089 () Bool)

(assert (=> b!5531381 (=> res!2355089 e!3419288)))

(declare-fun lt!2248523 () (InoxSet Context!9802))

(assert (=> b!5531381 (= res!2355089 (not (= lt!2248529 lt!2248523)))))

(declare-fun lt!2248521 () (InoxSet Context!9802))

(declare-fun lt!2248510 () (InoxSet Context!9802))

(assert (=> b!5531381 (= lt!2248523 ((_ map or) lt!2248521 lt!2248510))))

(declare-fun e!3419276 () Bool)

(assert (=> b!5531382 (= e!3419275 e!3419276)))

(declare-fun res!2355083 () Bool)

(assert (=> b!5531382 (=> res!2355083 e!3419276)))

(declare-fun lt!2248522 () Bool)

(declare-fun lt!2248500 () Bool)

(get-info :version)

(assert (=> b!5531382 (= res!2355083 (or (not (= lt!2248522 lt!2248500)) ((_ is Nil!62728) s!2326)))))

(declare-fun Exists!2617 (Int) Bool)

(assert (=> b!5531382 (= (Exists!2617 lambda!296929) (Exists!2617 lambda!296930))))

(declare-fun lt!2248501 () Unit!155494)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1246 (Regex!15517 Regex!15517 List!62852) Unit!155494)

(assert (=> b!5531382 (= lt!2248501 (lemmaExistCutMatchRandMatchRSpecEquivalent!1246 (regOne!31546 r!7292) (regTwo!31546 r!7292) s!2326))))

(assert (=> b!5531382 (= lt!2248500 (Exists!2617 lambda!296929))))

(declare-datatypes ((tuple2!65228 0))(
  ( (tuple2!65229 (_1!35917 List!62852) (_2!35917 List!62852)) )
))
(declare-datatypes ((Option!15526 0))(
  ( (None!15525) (Some!15525 (v!51562 tuple2!65228)) )
))
(declare-fun isDefined!12229 (Option!15526) Bool)

(declare-fun findConcatSeparation!1940 (Regex!15517 Regex!15517 List!62852 List!62852 List!62852) Option!15526)

(assert (=> b!5531382 (= lt!2248500 (isDefined!12229 (findConcatSeparation!1940 (regOne!31546 r!7292) (regTwo!31546 r!7292) Nil!62728 s!2326 s!2326)))))

(declare-fun lt!2248525 () Unit!155494)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1704 (Regex!15517 Regex!15517 List!62852) Unit!155494)

(assert (=> b!5531382 (= lt!2248525 (lemmaFindConcatSeparationEquivalentToExists!1704 (regOne!31546 r!7292) (regTwo!31546 r!7292) s!2326))))

(declare-fun b!5531383 () Bool)

(assert (=> b!5531383 (= e!3419276 e!3419284)))

(declare-fun res!2355100 () Bool)

(assert (=> b!5531383 (=> res!2355100 e!3419284)))

(declare-fun lt!2248514 () (InoxSet Context!9802))

(assert (=> b!5531383 (= res!2355100 (not (= lt!2248514 lt!2248518)))))

(declare-fun lt!2248515 () Context!9802)

(declare-fun derivationStepZipperDown!859 (Regex!15517 Context!9802 C!31304) (InoxSet Context!9802))

(assert (=> b!5531383 (= lt!2248518 (derivationStepZipperDown!859 r!7292 lt!2248515 (h!69176 s!2326)))))

(assert (=> b!5531383 (= lt!2248515 (Context!9803 Nil!62726))))

(declare-fun lt!2248507 () Context!9802)

(assert (=> b!5531383 (= lt!2248514 (derivationStepZipperUp!785 lt!2248507 (h!69176 s!2326)))))

(assert (=> b!5531383 (= lt!2248507 (Context!9803 (Cons!62726 r!7292 Nil!62726)))))

(declare-fun derivationStepZipper!1622 ((InoxSet Context!9802) C!31304) (InoxSet Context!9802))

(assert (=> b!5531383 (= lt!2248529 (derivationStepZipper!1622 z!1189 (h!69176 s!2326)))))

(declare-fun tp!1521553 () Bool)

(declare-fun setRes!36803 () Bool)

(declare-fun setElem!36803 () Context!9802)

(declare-fun setNonEmpty!36803 () Bool)

(declare-fun inv!82039 (Context!9802) Bool)

(assert (=> setNonEmpty!36803 (= setRes!36803 (and tp!1521553 (inv!82039 setElem!36803) e!3419281))))

(declare-fun setRest!36803 () (InoxSet Context!9802))

(assert (=> setNonEmpty!36803 (= z!1189 ((_ map or) (store ((as const (Array Context!9802 Bool)) false) setElem!36803 true) setRest!36803))))

(declare-fun b!5531384 () Bool)

(declare-fun e!3419278 () Bool)

(declare-fun e!3419282 () Bool)

(assert (=> b!5531384 (= e!3419278 e!3419282)))

(declare-fun res!2355078 () Bool)

(assert (=> b!5531384 (=> res!2355078 e!3419282)))

(declare-fun lt!2248519 () Int)

(declare-fun lt!2248516 () Int)

(assert (=> b!5531384 (= res!2355078 (>= lt!2248519 lt!2248516))))

(declare-fun contextDepth!113 (Context!9802) Int)

(assert (=> b!5531384 (= lt!2248516 (contextDepth!113 lt!2248507))))

(declare-fun lt!2248512 () Context!9802)

(assert (=> b!5531384 (= lt!2248519 (contextDepth!113 lt!2248512))))

(declare-fun b!5531385 () Bool)

(declare-fun res!2355090 () Bool)

(declare-fun e!3419280 () Bool)

(assert (=> b!5531385 (=> res!2355090 e!3419280)))

(declare-fun lt!2248504 () Context!9802)

(declare-fun lt!2248528 () Int)

(declare-fun zipperDepth!200 (List!62851) Int)

(assert (=> b!5531385 (= res!2355090 (>= (zipperDepth!200 (Cons!62727 lt!2248504 Nil!62727)) lt!2248528))))

(declare-fun b!5531386 () Bool)

(declare-fun e!3419273 () Bool)

(declare-fun tp_is_empty!40287 () Bool)

(declare-fun tp!1521558 () Bool)

(assert (=> b!5531386 (= e!3419273 (and tp_is_empty!40287 tp!1521558))))

(declare-fun b!5531387 () Bool)

(declare-fun res!2355094 () Bool)

(assert (=> b!5531387 (=> res!2355094 e!3419275)))

(assert (=> b!5531387 (= res!2355094 (or ((_ is EmptyExpr!15517) r!7292) ((_ is EmptyLang!15517) r!7292) ((_ is ElementMatch!15517) r!7292) ((_ is Union!15517) r!7292) (not ((_ is Concat!24362) r!7292))))))

(declare-fun b!5531388 () Bool)

(assert (=> b!5531388 (= e!3419282 e!3419280)))

(declare-fun res!2355097 () Bool)

(assert (=> b!5531388 (=> res!2355097 e!3419280)))

(declare-fun lt!2248526 () Int)

(assert (=> b!5531388 (= res!2355097 (>= lt!2248526 lt!2248528))))

(assert (=> b!5531388 (= lt!2248528 (zipperDepth!200 (Cons!62727 lt!2248507 Nil!62727)))))

(assert (=> b!5531388 (= lt!2248526 (zipperDepth!200 (Cons!62727 lt!2248512 Nil!62727)))))

(declare-fun b!5531389 () Bool)

(declare-fun res!2355085 () Bool)

(assert (=> b!5531389 (=> res!2355085 e!3419275)))

(declare-fun generalisedUnion!1380 (List!62850) Regex!15517)

(declare-fun unfocusZipperList!945 (List!62851) List!62850)

(assert (=> b!5531389 (= res!2355085 (not (= r!7292 (generalisedUnion!1380 (unfocusZipperList!945 zl!343)))))))

(declare-fun b!5531390 () Bool)

(declare-fun e!3419277 () Bool)

(declare-fun tp!1521554 () Bool)

(declare-fun tp!1521557 () Bool)

(assert (=> b!5531390 (= e!3419277 (and tp!1521554 tp!1521557))))

(declare-fun b!5531378 () Bool)

(assert (=> b!5531378 (= e!3419288 e!3419278)))

(declare-fun res!2355087 () Bool)

(assert (=> b!5531378 (=> res!2355087 e!3419278)))

(declare-fun lt!2248506 () Bool)

(declare-fun matchZipper!1675 ((InoxSet Context!9802) List!62852) Bool)

(assert (=> b!5531378 (= res!2355087 (not (= lt!2248506 (matchZipper!1675 lt!2248529 (t!376111 s!2326)))))))

(declare-fun lt!2248511 () Bool)

(assert (=> b!5531378 (= lt!2248511 lt!2248506)))

(declare-fun e!3419286 () Bool)

(assert (=> b!5531378 (= lt!2248506 e!3419286)))

(declare-fun res!2355095 () Bool)

(assert (=> b!5531378 (=> res!2355095 e!3419286)))

(declare-fun lt!2248520 () Bool)

(assert (=> b!5531378 (= res!2355095 lt!2248520)))

(assert (=> b!5531378 (= lt!2248511 (matchZipper!1675 lt!2248523 (t!376111 s!2326)))))

(assert (=> b!5531378 (= lt!2248520 (matchZipper!1675 lt!2248521 (t!376111 s!2326)))))

(declare-fun lt!2248517 () Unit!155494)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!564 ((InoxSet Context!9802) (InoxSet Context!9802) List!62852) Unit!155494)

(assert (=> b!5531378 (= lt!2248517 (lemmaZipperConcatMatchesSameAsBothZippers!564 lt!2248521 lt!2248510 (t!376111 s!2326)))))

(declare-fun res!2355088 () Bool)

(declare-fun e!3419274 () Bool)

(assert (=> start!577214 (=> (not res!2355088) (not e!3419274))))

(declare-fun validRegex!7253 (Regex!15517) Bool)

(assert (=> start!577214 (= res!2355088 (validRegex!7253 r!7292))))

(assert (=> start!577214 e!3419274))

(assert (=> start!577214 e!3419277))

(declare-fun condSetEmpty!36803 () Bool)

(assert (=> start!577214 (= condSetEmpty!36803 (= z!1189 ((as const (Array Context!9802 Bool)) false)))))

(assert (=> start!577214 setRes!36803))

(declare-fun e!3419283 () Bool)

(assert (=> start!577214 e!3419283))

(assert (=> start!577214 e!3419273))

(declare-fun b!5531391 () Bool)

(declare-fun res!2355086 () Bool)

(assert (=> b!5531391 (=> res!2355086 e!3419278)))

(declare-fun lt!2248499 () (InoxSet Context!9802))

(assert (=> b!5531391 (= res!2355086 (not (= (matchZipper!1675 lt!2248499 s!2326) (matchZipper!1675 (derivationStepZipper!1622 lt!2248499 (h!69176 s!2326)) (t!376111 s!2326)))))))

(declare-fun b!5531392 () Bool)

(declare-fun res!2355099 () Bool)

(assert (=> b!5531392 (=> (not res!2355099) (not e!3419274))))

(declare-fun toList!9301 ((InoxSet Context!9802)) List!62851)

(assert (=> b!5531392 (= res!2355099 (= (toList!9301 z!1189) zl!343))))

(declare-fun b!5531393 () Bool)

(declare-fun res!2355098 () Bool)

(assert (=> b!5531393 (=> (not res!2355098) (not e!3419274))))

(declare-fun unfocusZipper!1259 (List!62851) Regex!15517)

(assert (=> b!5531393 (= res!2355098 (= r!7292 (unfocusZipper!1259 zl!343)))))

(declare-fun b!5531394 () Bool)

(declare-fun res!2355082 () Bool)

(assert (=> b!5531394 (=> res!2355082 e!3419275)))

(declare-fun isEmpty!34517 (List!62851) Bool)

(assert (=> b!5531394 (= res!2355082 (not (isEmpty!34517 (t!376110 zl!343))))))

(declare-fun b!5531395 () Bool)

(assert (=> b!5531395 (= e!3419277 tp_is_empty!40287)))

(declare-fun b!5531396 () Bool)

(declare-fun res!2355084 () Bool)

(assert (=> b!5531396 (=> res!2355084 e!3419280)))

(assert (=> b!5531396 (= res!2355084 (>= (contextDepth!113 lt!2248504) lt!2248516))))

(declare-fun b!5531397 () Bool)

(declare-fun res!2355077 () Bool)

(assert (=> b!5531397 (=> res!2355077 e!3419278)))

(declare-fun lt!2248505 () (InoxSet Context!9802))

(assert (=> b!5531397 (= res!2355077 (not (= (matchZipper!1675 lt!2248505 s!2326) (matchZipper!1675 (derivationStepZipper!1622 lt!2248505 (h!69176 s!2326)) (t!376111 s!2326)))))))

(declare-fun b!5531398 () Bool)

(declare-fun res!2355080 () Bool)

(assert (=> b!5531398 (=> res!2355080 e!3419275)))

(assert (=> b!5531398 (= res!2355080 (not ((_ is Cons!62726) (exprs!5401 (h!69175 zl!343)))))))

(declare-fun b!5531399 () Bool)

(declare-fun e!3419287 () Bool)

(declare-fun tp!1521559 () Bool)

(assert (=> b!5531399 (= e!3419287 tp!1521559)))

(declare-fun b!5531400 () Bool)

(assert (=> b!5531400 (= e!3419279 e!3419285)))

(declare-fun res!2355091 () Bool)

(assert (=> b!5531400 (=> res!2355091 e!3419285)))

(declare-fun nullable!5551 (Regex!15517) Bool)

(assert (=> b!5531400 (= res!2355091 (not (nullable!5551 (regOne!31546 r!7292))))))

(assert (=> b!5531400 (= lt!2248510 (derivationStepZipperDown!859 (regTwo!31546 r!7292) lt!2248515 (h!69176 s!2326)))))

(assert (=> b!5531400 (= lt!2248521 (derivationStepZipperDown!859 (regOne!31546 r!7292) lt!2248504 (h!69176 s!2326)))))

(assert (=> b!5531400 (= (flatMap!1130 lt!2248505 lambda!296931) (derivationStepZipperUp!785 lt!2248504 (h!69176 s!2326)))))

(declare-fun lt!2248513 () Unit!155494)

(assert (=> b!5531400 (= lt!2248513 (lemmaFlatMapOnSingletonSet!662 lt!2248505 lt!2248504 lambda!296931))))

(assert (=> b!5531400 (= (flatMap!1130 lt!2248499 lambda!296931) (derivationStepZipperUp!785 lt!2248512 (h!69176 s!2326)))))

(declare-fun lt!2248524 () Unit!155494)

(assert (=> b!5531400 (= lt!2248524 (lemmaFlatMapOnSingletonSet!662 lt!2248499 lt!2248512 lambda!296931))))

(declare-fun lt!2248503 () (InoxSet Context!9802))

(assert (=> b!5531400 (= lt!2248503 (derivationStepZipperUp!785 lt!2248504 (h!69176 s!2326)))))

(declare-fun lt!2248508 () (InoxSet Context!9802))

(assert (=> b!5531400 (= lt!2248508 (derivationStepZipperUp!785 lt!2248512 (h!69176 s!2326)))))

(assert (=> b!5531400 (= lt!2248505 (store ((as const (Array Context!9802 Bool)) false) lt!2248504 true))))

(declare-fun lt!2248502 () List!62850)

(assert (=> b!5531400 (= lt!2248504 (Context!9803 lt!2248502))))

(assert (=> b!5531400 (= lt!2248499 (store ((as const (Array Context!9802 Bool)) false) lt!2248512 true))))

(assert (=> b!5531400 (= lt!2248512 (Context!9803 (Cons!62726 (regOne!31546 r!7292) lt!2248502)))))

(assert (=> b!5531400 (= lt!2248502 (Cons!62726 (regTwo!31546 r!7292) Nil!62726))))

(declare-fun setIsEmpty!36803 () Bool)

(assert (=> setIsEmpty!36803 setRes!36803))

(declare-fun b!5531401 () Bool)

(declare-fun res!2355096 () Bool)

(assert (=> b!5531401 (=> res!2355096 e!3419276)))

(declare-fun isEmpty!34518 (List!62850) Bool)

(assert (=> b!5531401 (= res!2355096 (not (isEmpty!34518 (t!376109 (exprs!5401 (h!69175 zl!343))))))))

(declare-fun b!5531402 () Bool)

(declare-fun tp!1521550 () Bool)

(declare-fun tp!1521552 () Bool)

(assert (=> b!5531402 (= e!3419277 (and tp!1521550 tp!1521552))))

(declare-fun b!5531403 () Bool)

(declare-fun regexDepth!217 (Regex!15517) Int)

(assert (=> b!5531403 (= e!3419280 (= (regexDepth!217 r!7292) (regexDepth!217 (Concat!24362 (regOne!31546 r!7292) (regTwo!31546 r!7292)))))))

(declare-fun b!5531404 () Bool)

(declare-fun tp!1521555 () Bool)

(assert (=> b!5531404 (= e!3419277 tp!1521555)))

(declare-fun b!5531405 () Bool)

(declare-fun tp!1521556 () Bool)

(assert (=> b!5531405 (= e!3419283 (and (inv!82039 (h!69175 zl!343)) e!3419287 tp!1521556))))

(declare-fun b!5531406 () Bool)

(assert (=> b!5531406 (= e!3419274 (not e!3419275))))

(declare-fun res!2355092 () Bool)

(assert (=> b!5531406 (=> res!2355092 e!3419275)))

(assert (=> b!5531406 (= res!2355092 (not ((_ is Cons!62727) zl!343)))))

(declare-fun matchRSpec!2620 (Regex!15517 List!62852) Bool)

(assert (=> b!5531406 (= lt!2248522 (matchRSpec!2620 r!7292 s!2326))))

(declare-fun matchR!7702 (Regex!15517 List!62852) Bool)

(assert (=> b!5531406 (= lt!2248522 (matchR!7702 r!7292 s!2326))))

(declare-fun lt!2248509 () Unit!155494)

(declare-fun mainMatchTheorem!2620 (Regex!15517 List!62852) Unit!155494)

(assert (=> b!5531406 (= lt!2248509 (mainMatchTheorem!2620 r!7292 s!2326))))

(declare-fun b!5531407 () Bool)

(assert (=> b!5531407 (= e!3419286 (matchZipper!1675 lt!2248510 (t!376111 s!2326)))))

(declare-fun b!5531408 () Bool)

(declare-fun res!2355081 () Bool)

(assert (=> b!5531408 (=> res!2355081 e!3419278)))

(assert (=> b!5531408 (= res!2355081 (or (not (= lt!2248508 ((_ map or) lt!2248521 lt!2248503))) (not (= lt!2248508 lt!2248523)) (not (= lt!2248508 lt!2248529))))))

(assert (= (and start!577214 res!2355088) b!5531392))

(assert (= (and b!5531392 res!2355099) b!5531393))

(assert (= (and b!5531393 res!2355098) b!5531406))

(assert (= (and b!5531406 (not res!2355092)) b!5531394))

(assert (= (and b!5531394 (not res!2355082)) b!5531379))

(assert (= (and b!5531379 (not res!2355093)) b!5531398))

(assert (= (and b!5531398 (not res!2355080)) b!5531389))

(assert (= (and b!5531389 (not res!2355085)) b!5531387))

(assert (= (and b!5531387 (not res!2355094)) b!5531382))

(assert (= (and b!5531382 (not res!2355083)) b!5531401))

(assert (= (and b!5531401 (not res!2355096)) b!5531383))

(assert (= (and b!5531383 (not res!2355100)) b!5531380))

(assert (= (and b!5531380 (not res!2355079)) b!5531400))

(assert (= (and b!5531400 (not res!2355091)) b!5531381))

(assert (= (and b!5531381 (not res!2355089)) b!5531378))

(assert (= (and b!5531378 (not res!2355095)) b!5531407))

(assert (= (and b!5531378 (not res!2355087)) b!5531408))

(assert (= (and b!5531408 (not res!2355081)) b!5531391))

(assert (= (and b!5531391 (not res!2355086)) b!5531397))

(assert (= (and b!5531397 (not res!2355077)) b!5531384))

(assert (= (and b!5531384 (not res!2355078)) b!5531388))

(assert (= (and b!5531388 (not res!2355097)) b!5531396))

(assert (= (and b!5531396 (not res!2355084)) b!5531385))

(assert (= (and b!5531385 (not res!2355090)) b!5531403))

(assert (= (and start!577214 ((_ is ElementMatch!15517) r!7292)) b!5531395))

(assert (= (and start!577214 ((_ is Concat!24362) r!7292)) b!5531390))

(assert (= (and start!577214 ((_ is Star!15517) r!7292)) b!5531404))

(assert (= (and start!577214 ((_ is Union!15517) r!7292)) b!5531402))

(assert (= (and start!577214 condSetEmpty!36803) setIsEmpty!36803))

(assert (= (and start!577214 (not condSetEmpty!36803)) setNonEmpty!36803))

(assert (= setNonEmpty!36803 b!5531377))

(assert (= b!5531405 b!5531399))

(assert (= (and start!577214 ((_ is Cons!62727) zl!343)) b!5531405))

(assert (= (and start!577214 ((_ is Cons!62728) s!2326)) b!5531386))

(declare-fun m!6533358 () Bool)

(assert (=> b!5531379 m!6533358))

(declare-fun m!6533360 () Bool)

(assert (=> start!577214 m!6533360))

(declare-fun m!6533362 () Bool)

(assert (=> b!5531400 m!6533362))

(declare-fun m!6533364 () Bool)

(assert (=> b!5531400 m!6533364))

(declare-fun m!6533366 () Bool)

(assert (=> b!5531400 m!6533366))

(declare-fun m!6533368 () Bool)

(assert (=> b!5531400 m!6533368))

(declare-fun m!6533370 () Bool)

(assert (=> b!5531400 m!6533370))

(declare-fun m!6533372 () Bool)

(assert (=> b!5531400 m!6533372))

(declare-fun m!6533374 () Bool)

(assert (=> b!5531400 m!6533374))

(declare-fun m!6533376 () Bool)

(assert (=> b!5531400 m!6533376))

(declare-fun m!6533378 () Bool)

(assert (=> b!5531400 m!6533378))

(declare-fun m!6533380 () Bool)

(assert (=> b!5531400 m!6533380))

(declare-fun m!6533382 () Bool)

(assert (=> b!5531400 m!6533382))

(declare-fun m!6533384 () Bool)

(assert (=> b!5531388 m!6533384))

(declare-fun m!6533386 () Bool)

(assert (=> b!5531388 m!6533386))

(declare-fun m!6533388 () Bool)

(assert (=> b!5531393 m!6533388))

(declare-fun m!6533390 () Bool)

(assert (=> b!5531380 m!6533390))

(declare-fun m!6533392 () Bool)

(assert (=> b!5531380 m!6533392))

(declare-fun m!6533394 () Bool)

(assert (=> b!5531380 m!6533394))

(declare-fun m!6533396 () Bool)

(assert (=> b!5531396 m!6533396))

(declare-fun m!6533398 () Bool)

(assert (=> b!5531397 m!6533398))

(declare-fun m!6533400 () Bool)

(assert (=> b!5531397 m!6533400))

(assert (=> b!5531397 m!6533400))

(declare-fun m!6533402 () Bool)

(assert (=> b!5531397 m!6533402))

(declare-fun m!6533404 () Bool)

(assert (=> b!5531385 m!6533404))

(declare-fun m!6533406 () Bool)

(assert (=> b!5531394 m!6533406))

(declare-fun m!6533408 () Bool)

(assert (=> b!5531378 m!6533408))

(declare-fun m!6533410 () Bool)

(assert (=> b!5531378 m!6533410))

(declare-fun m!6533412 () Bool)

(assert (=> b!5531378 m!6533412))

(declare-fun m!6533414 () Bool)

(assert (=> b!5531378 m!6533414))

(declare-fun m!6533416 () Bool)

(assert (=> b!5531403 m!6533416))

(declare-fun m!6533418 () Bool)

(assert (=> b!5531403 m!6533418))

(declare-fun m!6533420 () Bool)

(assert (=> b!5531383 m!6533420))

(declare-fun m!6533422 () Bool)

(assert (=> b!5531383 m!6533422))

(declare-fun m!6533424 () Bool)

(assert (=> b!5531383 m!6533424))

(declare-fun m!6533426 () Bool)

(assert (=> b!5531391 m!6533426))

(declare-fun m!6533428 () Bool)

(assert (=> b!5531391 m!6533428))

(assert (=> b!5531391 m!6533428))

(declare-fun m!6533430 () Bool)

(assert (=> b!5531391 m!6533430))

(declare-fun m!6533432 () Bool)

(assert (=> b!5531384 m!6533432))

(declare-fun m!6533434 () Bool)

(assert (=> b!5531384 m!6533434))

(declare-fun m!6533436 () Bool)

(assert (=> setNonEmpty!36803 m!6533436))

(declare-fun m!6533438 () Bool)

(assert (=> b!5531407 m!6533438))

(declare-fun m!6533440 () Bool)

(assert (=> b!5531389 m!6533440))

(assert (=> b!5531389 m!6533440))

(declare-fun m!6533442 () Bool)

(assert (=> b!5531389 m!6533442))

(declare-fun m!6533444 () Bool)

(assert (=> b!5531401 m!6533444))

(declare-fun m!6533446 () Bool)

(assert (=> b!5531392 m!6533446))

(declare-fun m!6533448 () Bool)

(assert (=> b!5531405 m!6533448))

(declare-fun m!6533450 () Bool)

(assert (=> b!5531406 m!6533450))

(declare-fun m!6533452 () Bool)

(assert (=> b!5531406 m!6533452))

(declare-fun m!6533454 () Bool)

(assert (=> b!5531406 m!6533454))

(declare-fun m!6533456 () Bool)

(assert (=> b!5531382 m!6533456))

(declare-fun m!6533458 () Bool)

(assert (=> b!5531382 m!6533458))

(declare-fun m!6533460 () Bool)

(assert (=> b!5531382 m!6533460))

(declare-fun m!6533462 () Bool)

(assert (=> b!5531382 m!6533462))

(assert (=> b!5531382 m!6533456))

(declare-fun m!6533464 () Bool)

(assert (=> b!5531382 m!6533464))

(declare-fun m!6533466 () Bool)

(assert (=> b!5531382 m!6533466))

(assert (=> b!5531382 m!6533460))

(check-sat (not setNonEmpty!36803) (not b!5531378) (not b!5531407) tp_is_empty!40287 (not b!5531391) (not b!5531377) (not b!5531400) (not b!5531397) (not b!5531388) (not b!5531386) (not start!577214) (not b!5531404) (not b!5531385) (not b!5531383) (not b!5531396) (not b!5531393) (not b!5531401) (not b!5531390) (not b!5531389) (not b!5531384) (not b!5531402) (not b!5531380) (not b!5531403) (not b!5531379) (not b!5531406) (not b!5531399) (not b!5531394) (not b!5531405) (not b!5531392) (not b!5531382))
(check-sat)
