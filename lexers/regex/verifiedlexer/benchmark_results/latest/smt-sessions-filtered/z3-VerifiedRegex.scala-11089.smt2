; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573774 () Bool)

(assert start!573774)

(declare-fun b!5488360 () Bool)

(assert (=> b!5488360 true))

(declare-fun b!5488363 () Bool)

(assert (=> b!5488363 true))

(declare-fun bs!1267142 () Bool)

(declare-fun b!5488347 () Bool)

(assert (= bs!1267142 (and b!5488347 b!5488363)))

(declare-fun lambda!293639 () Int)

(declare-fun lambda!293638 () Int)

(assert (=> bs!1267142 (not (= lambda!293639 lambda!293638))))

(assert (=> b!5488347 true))

(declare-fun b!5488345 () Bool)

(declare-fun e!3396111 () Bool)

(declare-fun e!3396104 () Bool)

(assert (=> b!5488345 (= e!3396111 e!3396104)))

(declare-fun res!2340661 () Bool)

(assert (=> b!5488345 (=> res!2340661 e!3396104)))

(declare-fun lt!2241539 () Int)

(declare-datatypes ((C!31120 0))(
  ( (C!31121 (val!25262 Int)) )
))
(declare-datatypes ((Regex!15425 0))(
  ( (ElementMatch!15425 (c!958585 C!31120)) (Concat!24270 (regOne!31362 Regex!15425) (regTwo!31362 Regex!15425)) (EmptyExpr!15425) (Star!15425 (reg!15754 Regex!15425)) (EmptyLang!15425) (Union!15425 (regOne!31363 Regex!15425) (regTwo!31363 Regex!15425)) )
))
(declare-datatypes ((List!62574 0))(
  ( (Nil!62450) (Cons!62450 (h!68898 Regex!15425) (t!375805 List!62574)) )
))
(declare-datatypes ((Context!9618 0))(
  ( (Context!9619 (exprs!5309 List!62574)) )
))
(declare-datatypes ((List!62575 0))(
  ( (Nil!62451) (Cons!62451 (h!68899 Context!9618) (t!375806 List!62575)) )
))
(declare-fun lt!2241544 () List!62575)

(declare-fun zipperDepthTotal!200 (List!62575) Int)

(assert (=> b!5488345 (= res!2340661 (<= lt!2241539 (zipperDepthTotal!200 lt!2241544)))))

(declare-fun lt!2241535 () Context!9618)

(assert (=> b!5488345 (= lt!2241544 (Cons!62451 lt!2241535 Nil!62451))))

(declare-fun lt!2241537 () Int)

(assert (=> b!5488345 (< lt!2241537 lt!2241539)))

(declare-fun zl!343 () List!62575)

(assert (=> b!5488345 (= lt!2241539 (zipperDepthTotal!200 zl!343))))

(declare-fun contextDepthTotal!180 (Context!9618) Int)

(assert (=> b!5488345 (= lt!2241537 (contextDepthTotal!180 lt!2241535))))

(declare-datatypes ((Unit!155306 0))(
  ( (Unit!155307) )
))
(declare-fun lt!2241549 () Unit!155306)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!8 (List!62575 Context!9618) Unit!155306)

(assert (=> b!5488345 (= lt!2241549 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!8 zl!343 lt!2241535))))

(declare-fun getWitness!889 (List!62575 Int) Context!9618)

(assert (=> b!5488345 (= lt!2241535 (getWitness!889 zl!343 lambda!293638))))

(declare-fun b!5488346 () Bool)

(declare-fun e!3396107 () Bool)

(declare-fun tp_is_empty!40103 () Bool)

(assert (=> b!5488346 (= e!3396107 tp_is_empty!40103)))

(assert (=> b!5488347 (= e!3396104 true)))

(declare-datatypes ((List!62576 0))(
  ( (Nil!62452) (Cons!62452 (h!68900 C!31120) (t!375807 List!62576)) )
))
(declare-fun s!2326 () List!62576)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!1611 ((InoxSet Context!9618) List!62576) Bool)

(declare-fun content!11224 (List!62575) (InoxSet Context!9618))

(assert (=> b!5488347 (matchZipper!1611 (content!11224 zl!343) s!2326)))

(declare-fun lt!2241542 () Unit!155306)

(declare-fun lemmaExistsMatchingContextThenMatchingString!18 (List!62575 List!62576) Unit!155306)

(assert (=> b!5488347 (= lt!2241542 (lemmaExistsMatchingContextThenMatchingString!18 zl!343 s!2326))))

(declare-fun z!1189 () (InoxSet Context!9618))

(declare-fun exists!2075 ((InoxSet Context!9618) Int) Bool)

(assert (=> b!5488347 (exists!2075 z!1189 lambda!293639)))

(declare-fun lt!2241543 () Unit!155306)

(declare-fun lemmaContainsThenExists!67 ((InoxSet Context!9618) Context!9618 Int) Unit!155306)

(assert (=> b!5488347 (= lt!2241543 (lemmaContainsThenExists!67 z!1189 lt!2241535 lambda!293639))))

(declare-fun lt!2241546 () (InoxSet Context!9618))

(assert (=> b!5488347 (matchZipper!1611 lt!2241546 s!2326)))

(declare-fun lt!2241538 () Regex!15425)

(declare-fun lt!2241541 () Unit!155306)

(declare-fun theoremZipperRegexEquiv!597 ((InoxSet Context!9618) List!62575 Regex!15425 List!62576) Unit!155306)

(assert (=> b!5488347 (= lt!2241541 (theoremZipperRegexEquiv!597 lt!2241546 lt!2241544 lt!2241538 s!2326))))

(assert (=> b!5488347 (= lt!2241546 (store ((as const (Array Context!9618 Bool)) false) lt!2241535 true))))

(declare-fun setIsEmpty!36243 () Bool)

(declare-fun setRes!36243 () Bool)

(assert (=> setIsEmpty!36243 setRes!36243))

(declare-fun b!5488348 () Bool)

(declare-fun e!3396105 () Bool)

(declare-fun isEmpty!34315 (List!62575) Bool)

(assert (=> b!5488348 (= e!3396105 (isEmpty!34315 (t!375806 zl!343)))))

(declare-fun b!5488349 () Bool)

(declare-fun e!3396109 () Bool)

(declare-fun e!3396102 () Bool)

(assert (=> b!5488349 (= e!3396109 e!3396102)))

(declare-fun res!2340670 () Bool)

(assert (=> b!5488349 (=> res!2340670 e!3396102)))

(declare-fun lt!2241545 () List!62574)

(declare-fun contains!19749 (List!62574 Regex!15425) Bool)

(assert (=> b!5488349 (= res!2340670 (not (contains!19749 lt!2241545 lt!2241538)))))

(declare-fun lambda!293637 () Int)

(declare-fun getWitness!890 (List!62574 Int) Regex!15425)

(assert (=> b!5488349 (= lt!2241538 (getWitness!890 lt!2241545 lambda!293637))))

(declare-fun e!3396106 () Bool)

(declare-fun tp!1508554 () Bool)

(declare-fun b!5488350 () Bool)

(declare-fun e!3396108 () Bool)

(declare-fun inv!81809 (Context!9618) Bool)

(assert (=> b!5488350 (= e!3396108 (and (inv!81809 (h!68899 zl!343)) e!3396106 tp!1508554))))

(declare-fun b!5488351 () Bool)

(declare-fun res!2340663 () Bool)

(declare-fun e!3396110 () Bool)

(assert (=> b!5488351 (=> (not res!2340663) (not e!3396110))))

(declare-fun toList!9209 ((InoxSet Context!9618)) List!62575)

(assert (=> b!5488351 (= res!2340663 (= (toList!9209 z!1189) zl!343))))

(declare-fun b!5488352 () Bool)

(declare-fun tp!1508557 () Bool)

(assert (=> b!5488352 (= e!3396107 tp!1508557)))

(declare-fun b!5488353 () Bool)

(declare-fun e!3396112 () Bool)

(assert (=> b!5488353 (= e!3396110 (not e!3396112))))

(declare-fun res!2340667 () Bool)

(assert (=> b!5488353 (=> res!2340667 e!3396112)))

(assert (=> b!5488353 (= res!2340667 e!3396105)))

(declare-fun res!2340658 () Bool)

(assert (=> b!5488353 (=> (not res!2340658) (not e!3396105))))

(get-info :version)

(assert (=> b!5488353 (= res!2340658 ((_ is Cons!62451) zl!343))))

(declare-fun lt!2241536 () Bool)

(declare-fun r!7292 () Regex!15425)

(declare-fun matchRSpec!2528 (Regex!15425 List!62576) Bool)

(assert (=> b!5488353 (= lt!2241536 (matchRSpec!2528 r!7292 s!2326))))

(declare-fun matchR!7610 (Regex!15425 List!62576) Bool)

(assert (=> b!5488353 (= lt!2241536 (matchR!7610 r!7292 s!2326))))

(declare-fun lt!2241547 () Unit!155306)

(declare-fun mainMatchTheorem!2528 (Regex!15425 List!62576) Unit!155306)

(assert (=> b!5488353 (= lt!2241547 (mainMatchTheorem!2528 r!7292 s!2326))))

(declare-fun b!5488354 () Bool)

(declare-fun res!2340668 () Bool)

(assert (=> b!5488354 (=> res!2340668 e!3396102)))

(declare-fun validRegex!7161 (Regex!15425) Bool)

(assert (=> b!5488354 (= res!2340668 (not (validRegex!7161 lt!2241538)))))

(declare-fun b!5488355 () Bool)

(declare-fun tp!1508550 () Bool)

(declare-fun tp!1508553 () Bool)

(assert (=> b!5488355 (= e!3396107 (and tp!1508550 tp!1508553))))

(declare-fun b!5488356 () Bool)

(declare-fun e!3396101 () Bool)

(declare-fun tp!1508555 () Bool)

(assert (=> b!5488356 (= e!3396101 (and tp_is_empty!40103 tp!1508555))))

(declare-fun b!5488357 () Bool)

(declare-fun res!2340659 () Bool)

(assert (=> b!5488357 (=> (not res!2340659) (not e!3396110))))

(declare-fun unfocusZipper!1167 (List!62575) Regex!15425)

(assert (=> b!5488357 (= res!2340659 (= r!7292 (unfocusZipper!1167 zl!343)))))

(declare-fun b!5488358 () Bool)

(declare-fun res!2340666 () Bool)

(assert (=> b!5488358 (=> res!2340666 e!3396112)))

(assert (=> b!5488358 (= res!2340666 (isEmpty!34315 (t!375806 zl!343)))))

(declare-fun b!5488359 () Bool)

(declare-fun tp!1508558 () Bool)

(declare-fun tp!1508552 () Bool)

(assert (=> b!5488359 (= e!3396107 (and tp!1508558 tp!1508552))))

(assert (=> b!5488360 (= e!3396112 e!3396109)))

(declare-fun res!2340665 () Bool)

(assert (=> b!5488360 (=> res!2340665 e!3396109)))

(assert (=> b!5488360 (= res!2340665 (not lt!2241536))))

(declare-fun exists!2076 (List!62574 Int) Bool)

(assert (=> b!5488360 (= lt!2241536 (exists!2076 lt!2241545 lambda!293637))))

(declare-fun lt!2241548 () Unit!155306)

(declare-fun matchRGenUnionSpec!258 (Regex!15425 List!62574 List!62576) Unit!155306)

(assert (=> b!5488360 (= lt!2241548 (matchRGenUnionSpec!258 r!7292 lt!2241545 s!2326))))

(declare-fun unfocusZipperList!857 (List!62575) List!62574)

(assert (=> b!5488360 (= lt!2241545 (unfocusZipperList!857 zl!343))))

(declare-fun b!5488361 () Bool)

(declare-fun e!3396103 () Bool)

(declare-fun tp!1508556 () Bool)

(assert (=> b!5488361 (= e!3396103 tp!1508556)))

(declare-fun b!5488362 () Bool)

(declare-fun res!2340657 () Bool)

(assert (=> b!5488362 (=> res!2340657 e!3396102)))

(assert (=> b!5488362 (= res!2340657 (not (matchR!7610 lt!2241538 s!2326)))))

(assert (=> b!5488363 (= e!3396102 e!3396111)))

(declare-fun res!2340662 () Bool)

(assert (=> b!5488363 (=> res!2340662 e!3396111)))

(declare-fun exists!2077 (List!62575 Int) Bool)

(assert (=> b!5488363 (= res!2340662 (not (exists!2077 zl!343 lambda!293638)))))

(assert (=> b!5488363 (exists!2077 zl!343 lambda!293638)))

(declare-fun lt!2241540 () Unit!155306)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!16 (List!62575 Regex!15425) Unit!155306)

(assert (=> b!5488363 (= lt!2241540 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!16 zl!343 lt!2241538))))

(declare-fun res!2340664 () Bool)

(assert (=> start!573774 (=> (not res!2340664) (not e!3396110))))

(assert (=> start!573774 (= res!2340664 (validRegex!7161 r!7292))))

(assert (=> start!573774 e!3396110))

(assert (=> start!573774 e!3396107))

(declare-fun condSetEmpty!36243 () Bool)

(assert (=> start!573774 (= condSetEmpty!36243 (= z!1189 ((as const (Array Context!9618 Bool)) false)))))

(assert (=> start!573774 setRes!36243))

(assert (=> start!573774 e!3396108))

(assert (=> start!573774 e!3396101))

(declare-fun b!5488364 () Bool)

(declare-fun res!2340669 () Bool)

(assert (=> b!5488364 (=> res!2340669 e!3396112)))

(assert (=> b!5488364 (= res!2340669 (or (not ((_ is Cons!62451) zl!343)) ((_ is Nil!62452) s!2326) (not (= zl!343 (Cons!62451 (h!68899 zl!343) (t!375806 zl!343))))))))

(declare-fun b!5488365 () Bool)

(declare-fun tp!1508551 () Bool)

(assert (=> b!5488365 (= e!3396106 tp!1508551)))

(declare-fun tp!1508559 () Bool)

(declare-fun setElem!36243 () Context!9618)

(declare-fun setNonEmpty!36243 () Bool)

(assert (=> setNonEmpty!36243 (= setRes!36243 (and tp!1508559 (inv!81809 setElem!36243) e!3396103))))

(declare-fun setRest!36243 () (InoxSet Context!9618))

(assert (=> setNonEmpty!36243 (= z!1189 ((_ map or) (store ((as const (Array Context!9618 Bool)) false) setElem!36243 true) setRest!36243))))

(declare-fun b!5488366 () Bool)

(declare-fun res!2340660 () Bool)

(assert (=> b!5488366 (=> res!2340660 e!3396109)))

(assert (=> b!5488366 (= res!2340660 (not (exists!2076 lt!2241545 lambda!293637)))))

(assert (= (and start!573774 res!2340664) b!5488351))

(assert (= (and b!5488351 res!2340663) b!5488357))

(assert (= (and b!5488357 res!2340659) b!5488353))

(assert (= (and b!5488353 res!2340658) b!5488348))

(assert (= (and b!5488353 (not res!2340667)) b!5488364))

(assert (= (and b!5488364 (not res!2340669)) b!5488358))

(assert (= (and b!5488358 (not res!2340666)) b!5488360))

(assert (= (and b!5488360 (not res!2340665)) b!5488366))

(assert (= (and b!5488366 (not res!2340660)) b!5488349))

(assert (= (and b!5488349 (not res!2340670)) b!5488354))

(assert (= (and b!5488354 (not res!2340668)) b!5488362))

(assert (= (and b!5488362 (not res!2340657)) b!5488363))

(assert (= (and b!5488363 (not res!2340662)) b!5488345))

(assert (= (and b!5488345 (not res!2340661)) b!5488347))

(assert (= (and start!573774 ((_ is ElementMatch!15425) r!7292)) b!5488346))

(assert (= (and start!573774 ((_ is Concat!24270) r!7292)) b!5488359))

(assert (= (and start!573774 ((_ is Star!15425) r!7292)) b!5488352))

(assert (= (and start!573774 ((_ is Union!15425) r!7292)) b!5488355))

(assert (= (and start!573774 condSetEmpty!36243) setIsEmpty!36243))

(assert (= (and start!573774 (not condSetEmpty!36243)) setNonEmpty!36243))

(assert (= setNonEmpty!36243 b!5488361))

(assert (= b!5488350 b!5488365))

(assert (= (and start!573774 ((_ is Cons!62451) zl!343)) b!5488350))

(assert (= (and start!573774 ((_ is Cons!62452) s!2326)) b!5488356))

(declare-fun m!6502238 () Bool)

(assert (=> b!5488345 m!6502238))

(declare-fun m!6502240 () Bool)

(assert (=> b!5488345 m!6502240))

(declare-fun m!6502242 () Bool)

(assert (=> b!5488345 m!6502242))

(declare-fun m!6502244 () Bool)

(assert (=> b!5488345 m!6502244))

(declare-fun m!6502246 () Bool)

(assert (=> b!5488345 m!6502246))

(declare-fun m!6502248 () Bool)

(assert (=> setNonEmpty!36243 m!6502248))

(declare-fun m!6502250 () Bool)

(assert (=> b!5488349 m!6502250))

(declare-fun m!6502252 () Bool)

(assert (=> b!5488349 m!6502252))

(declare-fun m!6502254 () Bool)

(assert (=> b!5488357 m!6502254))

(declare-fun m!6502256 () Bool)

(assert (=> b!5488351 m!6502256))

(declare-fun m!6502258 () Bool)

(assert (=> b!5488353 m!6502258))

(declare-fun m!6502260 () Bool)

(assert (=> b!5488353 m!6502260))

(declare-fun m!6502262 () Bool)

(assert (=> b!5488353 m!6502262))

(declare-fun m!6502264 () Bool)

(assert (=> b!5488362 m!6502264))

(declare-fun m!6502266 () Bool)

(assert (=> b!5488358 m!6502266))

(assert (=> b!5488348 m!6502266))

(declare-fun m!6502268 () Bool)

(assert (=> b!5488350 m!6502268))

(declare-fun m!6502270 () Bool)

(assert (=> b!5488347 m!6502270))

(declare-fun m!6502272 () Bool)

(assert (=> b!5488347 m!6502272))

(declare-fun m!6502274 () Bool)

(assert (=> b!5488347 m!6502274))

(declare-fun m!6502276 () Bool)

(assert (=> b!5488347 m!6502276))

(declare-fun m!6502278 () Bool)

(assert (=> b!5488347 m!6502278))

(declare-fun m!6502280 () Bool)

(assert (=> b!5488347 m!6502280))

(declare-fun m!6502282 () Bool)

(assert (=> b!5488347 m!6502282))

(declare-fun m!6502284 () Bool)

(assert (=> b!5488347 m!6502284))

(assert (=> b!5488347 m!6502276))

(declare-fun m!6502286 () Bool)

(assert (=> b!5488366 m!6502286))

(declare-fun m!6502288 () Bool)

(assert (=> b!5488363 m!6502288))

(assert (=> b!5488363 m!6502288))

(declare-fun m!6502290 () Bool)

(assert (=> b!5488363 m!6502290))

(declare-fun m!6502292 () Bool)

(assert (=> b!5488354 m!6502292))

(assert (=> b!5488360 m!6502286))

(declare-fun m!6502294 () Bool)

(assert (=> b!5488360 m!6502294))

(declare-fun m!6502296 () Bool)

(assert (=> b!5488360 m!6502296))

(declare-fun m!6502298 () Bool)

(assert (=> start!573774 m!6502298))

(check-sat tp_is_empty!40103 (not b!5488357) (not setNonEmpty!36243) (not b!5488349) (not b!5488365) (not b!5488355) (not b!5488363) (not b!5488350) (not b!5488345) (not b!5488351) (not b!5488354) (not b!5488362) (not b!5488356) (not b!5488366) (not b!5488348) (not b!5488359) (not b!5488352) (not b!5488353) (not start!573774) (not b!5488360) (not b!5488347) (not b!5488361) (not b!5488358))
(check-sat)
