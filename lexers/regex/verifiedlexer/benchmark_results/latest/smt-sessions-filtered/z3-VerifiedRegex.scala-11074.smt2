; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573586 () Bool)

(assert start!573586)

(declare-fun b!5485352 () Bool)

(declare-fun res!2339122 () Bool)

(declare-fun e!3394463 () Bool)

(assert (=> b!5485352 (=> res!2339122 e!3394463)))

(declare-datatypes ((C!31060 0))(
  ( (C!31061 (val!25232 Int)) )
))
(declare-datatypes ((Regex!15395 0))(
  ( (ElementMatch!15395 (c!958335 C!31060)) (Concat!24240 (regOne!31302 Regex!15395) (regTwo!31302 Regex!15395)) (EmptyExpr!15395) (Star!15395 (reg!15724 Regex!15395)) (EmptyLang!15395) (Union!15395 (regOne!31303 Regex!15395) (regTwo!31303 Regex!15395)) )
))
(declare-datatypes ((List!62484 0))(
  ( (Nil!62360) (Cons!62360 (h!68808 Regex!15395) (t!375715 List!62484)) )
))
(declare-datatypes ((Context!9558 0))(
  ( (Context!9559 (exprs!5279 List!62484)) )
))
(declare-datatypes ((List!62485 0))(
  ( (Nil!62361) (Cons!62361 (h!68809 Context!9558) (t!375716 List!62485)) )
))
(declare-fun zl!343 () List!62485)

(declare-datatypes ((List!62486 0))(
  ( (Nil!62362) (Cons!62362 (h!68810 C!31060) (t!375717 List!62486)) )
))
(declare-fun s!2326 () List!62486)

(get-info :version)

(assert (=> b!5485352 (= res!2339122 (or (not ((_ is Cons!62361) zl!343)) ((_ is Nil!62362) s!2326) (not (= zl!343 (Cons!62361 (h!68809 zl!343) (t!375716 zl!343))))))))

(declare-fun setNonEmpty!36141 () Bool)

(declare-fun setRes!36141 () Bool)

(declare-fun tp!1507340 () Bool)

(declare-fun setElem!36141 () Context!9558)

(declare-fun e!3394467 () Bool)

(declare-fun inv!81734 (Context!9558) Bool)

(assert (=> setNonEmpty!36141 (= setRes!36141 (and tp!1507340 (inv!81734 setElem!36141) e!3394467))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9558))

(declare-fun setRest!36141 () (InoxSet Context!9558))

(assert (=> setNonEmpty!36141 (= z!1189 ((_ map or) (store ((as const (Array Context!9558 Bool)) false) setElem!36141 true) setRest!36141))))

(declare-fun b!5485353 () Bool)

(declare-fun e!3394466 () Bool)

(declare-fun tp!1507345 () Bool)

(declare-fun tp!1507347 () Bool)

(assert (=> b!5485353 (= e!3394466 (and tp!1507345 tp!1507347))))

(declare-fun b!5485354 () Bool)

(declare-fun e!3394464 () Bool)

(declare-fun isEmpty!34281 (List!62485) Bool)

(assert (=> b!5485354 (= e!3394464 (isEmpty!34281 (t!375716 zl!343)))))

(declare-fun setIsEmpty!36141 () Bool)

(assert (=> setIsEmpty!36141 setRes!36141))

(declare-fun res!2339115 () Bool)

(declare-fun e!3394462 () Bool)

(assert (=> start!573586 (=> (not res!2339115) (not e!3394462))))

(declare-fun r!7292 () Regex!15395)

(declare-fun validRegex!7131 (Regex!15395) Bool)

(assert (=> start!573586 (= res!2339115 (validRegex!7131 r!7292))))

(assert (=> start!573586 e!3394462))

(assert (=> start!573586 e!3394466))

(declare-fun condSetEmpty!36141 () Bool)

(assert (=> start!573586 (= condSetEmpty!36141 (= z!1189 ((as const (Array Context!9558 Bool)) false)))))

(assert (=> start!573586 setRes!36141))

(declare-fun e!3394470 () Bool)

(assert (=> start!573586 e!3394470))

(declare-fun e!3394469 () Bool)

(assert (=> start!573586 e!3394469))

(declare-fun b!5485355 () Bool)

(declare-fun e!3394468 () Bool)

(assert (=> b!5485355 (= e!3394463 e!3394468)))

(declare-fun res!2339114 () Bool)

(assert (=> b!5485355 (=> res!2339114 e!3394468)))

(declare-fun lt!2240782 () List!62484)

(declare-fun lambda!293213 () Int)

(declare-fun forall!14622 (List!62484 Int) Bool)

(assert (=> b!5485355 (= res!2339114 (not (forall!14622 lt!2240782 lambda!293213)))))

(declare-fun unfocusZipperList!827 (List!62485) List!62484)

(assert (=> b!5485355 (= lt!2240782 (unfocusZipperList!827 zl!343))))

(declare-fun b!5485356 () Bool)

(declare-fun tp_is_empty!40043 () Bool)

(declare-fun tp!1507341 () Bool)

(assert (=> b!5485356 (= e!3394469 (and tp_is_empty!40043 tp!1507341))))

(declare-fun b!5485357 () Bool)

(declare-fun res!2339121 () Bool)

(assert (=> b!5485357 (=> (not res!2339121) (not e!3394462))))

(declare-fun unfocusZipper!1137 (List!62485) Regex!15395)

(assert (=> b!5485357 (= res!2339121 (= r!7292 (unfocusZipper!1137 zl!343)))))

(declare-fun tp!1507338 () Bool)

(declare-fun e!3394465 () Bool)

(declare-fun b!5485358 () Bool)

(assert (=> b!5485358 (= e!3394470 (and (inv!81734 (h!68809 zl!343)) e!3394465 tp!1507338))))

(declare-fun b!5485359 () Bool)

(declare-fun res!2339117 () Bool)

(assert (=> b!5485359 (=> res!2339117 e!3394468)))

(declare-fun generalisedUnion!1314 (List!62484) Regex!15395)

(assert (=> b!5485359 (= res!2339117 (not (= r!7292 (generalisedUnion!1314 lt!2240782))))))

(declare-fun b!5485360 () Bool)

(declare-fun tp!1507339 () Bool)

(assert (=> b!5485360 (= e!3394465 tp!1507339)))

(declare-fun b!5485361 () Bool)

(declare-fun tp!1507343 () Bool)

(declare-fun tp!1507346 () Bool)

(assert (=> b!5485361 (= e!3394466 (and tp!1507343 tp!1507346))))

(declare-fun b!5485362 () Bool)

(assert (=> b!5485362 (= e!3394462 (not e!3394463))))

(declare-fun res!2339118 () Bool)

(assert (=> b!5485362 (=> res!2339118 e!3394463)))

(assert (=> b!5485362 (= res!2339118 e!3394464)))

(declare-fun res!2339119 () Bool)

(assert (=> b!5485362 (=> (not res!2339119) (not e!3394464))))

(assert (=> b!5485362 (= res!2339119 ((_ is Cons!62361) zl!343))))

(declare-fun matchR!7580 (Regex!15395 List!62486) Bool)

(declare-fun matchRSpec!2498 (Regex!15395 List!62486) Bool)

(assert (=> b!5485362 (= (matchR!7580 r!7292 s!2326) (matchRSpec!2498 r!7292 s!2326))))

(declare-datatypes ((Unit!155244 0))(
  ( (Unit!155245) )
))
(declare-fun lt!2240783 () Unit!155244)

(declare-fun mainMatchTheorem!2498 (Regex!15395 List!62486) Unit!155244)

(assert (=> b!5485362 (= lt!2240783 (mainMatchTheorem!2498 r!7292 s!2326))))

(declare-fun b!5485363 () Bool)

(declare-fun res!2339116 () Bool)

(assert (=> b!5485363 (=> res!2339116 e!3394463)))

(assert (=> b!5485363 (= res!2339116 (isEmpty!34281 (t!375716 zl!343)))))

(declare-fun b!5485364 () Bool)

(assert (=> b!5485364 (= e!3394466 tp_is_empty!40043)))

(declare-fun b!5485365 () Bool)

(assert (=> b!5485365 (= e!3394468 (forall!14622 lt!2240782 lambda!293213))))

(declare-fun b!5485366 () Bool)

(declare-fun tp!1507344 () Bool)

(assert (=> b!5485366 (= e!3394467 tp!1507344)))

(declare-fun b!5485367 () Bool)

(declare-fun tp!1507342 () Bool)

(assert (=> b!5485367 (= e!3394466 tp!1507342)))

(declare-fun b!5485368 () Bool)

(declare-fun res!2339120 () Bool)

(assert (=> b!5485368 (=> (not res!2339120) (not e!3394462))))

(declare-fun toList!9179 ((InoxSet Context!9558)) List!62485)

(assert (=> b!5485368 (= res!2339120 (= (toList!9179 z!1189) zl!343))))

(assert (= (and start!573586 res!2339115) b!5485368))

(assert (= (and b!5485368 res!2339120) b!5485357))

(assert (= (and b!5485357 res!2339121) b!5485362))

(assert (= (and b!5485362 res!2339119) b!5485354))

(assert (= (and b!5485362 (not res!2339118)) b!5485352))

(assert (= (and b!5485352 (not res!2339122)) b!5485363))

(assert (= (and b!5485363 (not res!2339116)) b!5485355))

(assert (= (and b!5485355 (not res!2339114)) b!5485359))

(assert (= (and b!5485359 (not res!2339117)) b!5485365))

(assert (= (and start!573586 ((_ is ElementMatch!15395) r!7292)) b!5485364))

(assert (= (and start!573586 ((_ is Concat!24240) r!7292)) b!5485361))

(assert (= (and start!573586 ((_ is Star!15395) r!7292)) b!5485367))

(assert (= (and start!573586 ((_ is Union!15395) r!7292)) b!5485353))

(assert (= (and start!573586 condSetEmpty!36141) setIsEmpty!36141))

(assert (= (and start!573586 (not condSetEmpty!36141)) setNonEmpty!36141))

(assert (= setNonEmpty!36141 b!5485366))

(assert (= b!5485358 b!5485360))

(assert (= (and start!573586 ((_ is Cons!62361) zl!343)) b!5485358))

(assert (= (and start!573586 ((_ is Cons!62362) s!2326)) b!5485356))

(declare-fun m!6500704 () Bool)

(assert (=> b!5485354 m!6500704))

(assert (=> b!5485363 m!6500704))

(declare-fun m!6500706 () Bool)

(assert (=> b!5485358 m!6500706))

(declare-fun m!6500708 () Bool)

(assert (=> setNonEmpty!36141 m!6500708))

(declare-fun m!6500710 () Bool)

(assert (=> b!5485365 m!6500710))

(declare-fun m!6500712 () Bool)

(assert (=> start!573586 m!6500712))

(assert (=> b!5485355 m!6500710))

(declare-fun m!6500714 () Bool)

(assert (=> b!5485355 m!6500714))

(declare-fun m!6500716 () Bool)

(assert (=> b!5485362 m!6500716))

(declare-fun m!6500718 () Bool)

(assert (=> b!5485362 m!6500718))

(declare-fun m!6500720 () Bool)

(assert (=> b!5485362 m!6500720))

(declare-fun m!6500722 () Bool)

(assert (=> b!5485368 m!6500722))

(declare-fun m!6500724 () Bool)

(assert (=> b!5485357 m!6500724))

(declare-fun m!6500726 () Bool)

(assert (=> b!5485359 m!6500726))

(check-sat (not b!5485360) (not b!5485361) (not setNonEmpty!36141) (not b!5485359) (not b!5485365) (not b!5485356) (not b!5485367) (not b!5485354) (not b!5485357) (not b!5485358) (not b!5485353) (not b!5485368) tp_is_empty!40043 (not b!5485366) (not b!5485362) (not b!5485355) (not b!5485363) (not start!573586))
(check-sat)
