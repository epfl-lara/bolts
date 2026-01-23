; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544188 () Bool)

(assert start!544188)

(declare-fun b!5139388 () Bool)

(declare-fun res!2188856 () Bool)

(declare-fun e!3205534 () Bool)

(assert (=> b!5139388 (=> (not res!2188856) (not e!3205534))))

(declare-fun e!3205532 () Bool)

(assert (=> b!5139388 (= res!2188856 e!3205532)))

(declare-fun res!2188852 () Bool)

(assert (=> b!5139388 (=> res!2188852 e!3205532)))

(declare-datatypes ((C!29160 0))(
  ( (C!29161 (val!24232 Int)) )
))
(declare-datatypes ((Regex!14447 0))(
  ( (ElementMatch!14447 (c!884973 C!29160)) (Concat!23292 (regOne!29406 Regex!14447) (regTwo!29406 Regex!14447)) (EmptyExpr!14447) (Star!14447 (reg!14776 Regex!14447)) (EmptyLang!14447) (Union!14447 (regOne!29407 Regex!14447) (regTwo!29407 Regex!14447)) )
))
(declare-fun expr!117 () Regex!14447)

(declare-fun lostCause!1446 (Regex!14447) Bool)

(assert (=> b!5139388 (= res!2188852 (lostCause!1446 expr!117))))

(declare-fun b!5139389 () Bool)

(declare-fun e!3205533 () Bool)

(declare-fun tp!1433540 () Bool)

(declare-fun tp!1433539 () Bool)

(assert (=> b!5139389 (= e!3205533 (and tp!1433540 tp!1433539))))

(declare-fun b!5139390 () Bool)

(declare-fun e!3205536 () Bool)

(assert (=> b!5139390 (= e!3205534 (not e!3205536))))

(declare-fun res!2188853 () Bool)

(assert (=> b!5139390 (=> res!2188853 e!3205536)))

(declare-fun validRegex!6302 (Regex!14447) Bool)

(assert (=> b!5139390 (= res!2188853 (not (validRegex!6302 (regTwo!29406 expr!117))))))

(assert (=> b!5139390 (not (lostCause!1446 (regOne!29406 expr!117)))))

(declare-datatypes ((Unit!151085 0))(
  ( (Unit!151086) )
))
(declare-fun lt!2120274 () Unit!151085)

(declare-fun lemmaNullableThenNotLostCause!70 (Regex!14447) Unit!151085)

(assert (=> b!5139390 (= lt!2120274 (lemmaNullableThenNotLostCause!70 (regOne!29406 expr!117)))))

(declare-fun b!5139391 () Bool)

(declare-fun e!3205537 () Bool)

(assert (=> b!5139391 (= e!3205537 true)))

(declare-fun lt!2120276 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!59821 0))(
  ( (Nil!59697) (Cons!59697 (h!66145 Regex!14447) (t!372854 List!59821)) )
))
(declare-datatypes ((Context!7662 0))(
  ( (Context!7663 (exprs!4331 List!59821)) )
))
(declare-fun lt!2120275 () (InoxSet Context!7662))

(declare-fun lambda!256366 () Int)

(declare-fun forall!13911 ((InoxSet Context!7662) Int) Bool)

(assert (=> b!5139391 (= lt!2120276 (forall!13911 lt!2120275 lambda!256366))))

(declare-fun b!5139392 () Bool)

(declare-fun res!2188855 () Bool)

(assert (=> b!5139392 (=> (not res!2188855) (not e!3205534))))

(declare-fun a!1296 () C!29160)

(get-info :version)

(assert (=> b!5139392 (= res!2188855 (and (or (not ((_ is ElementMatch!14447) expr!117)) (not (= (c!884973 expr!117) a!1296))) (not ((_ is Union!14447) expr!117)) ((_ is Concat!23292) expr!117)))))

(declare-fun b!5139393 () Bool)

(declare-fun res!2188850 () Bool)

(assert (=> b!5139393 (=> (not res!2188850) (not e!3205534))))

(declare-fun nullable!4806 (Regex!14447) Bool)

(assert (=> b!5139393 (= res!2188850 (nullable!4806 (regOne!29406 expr!117)))))

(declare-fun b!5139394 () Bool)

(assert (=> b!5139394 (= e!3205536 e!3205537)))

(declare-fun res!2188851 () Bool)

(assert (=> b!5139394 (=> res!2188851 e!3205537)))

(declare-fun lt!2120272 () (InoxSet Context!7662))

(assert (=> b!5139394 (= res!2188851 (not (forall!13911 lt!2120272 lambda!256366)))))

(declare-fun lostCauseZipper!1259 ((InoxSet Context!7662)) Bool)

(assert (=> b!5139394 (lostCauseZipper!1259 lt!2120275)))

(declare-fun ctx!100 () Context!7662)

(declare-fun derivationStepZipperDown!140 (Regex!14447 Context!7662 C!29160) (InoxSet Context!7662))

(assert (=> b!5139394 (= lt!2120275 (derivationStepZipperDown!140 (regTwo!29406 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120273 () Unit!151085)

(declare-fun lemmaLostCauseFixPointDerivDown!32 (Regex!14447 Context!7662 C!29160) Unit!151085)

(assert (=> b!5139394 (= lt!2120273 (lemmaLostCauseFixPointDerivDown!32 (regTwo!29406 expr!117) ctx!100 a!1296))))

(assert (=> b!5139394 (lostCauseZipper!1259 lt!2120272)))

(declare-fun lt!2120278 () Context!7662)

(assert (=> b!5139394 (= lt!2120272 (derivationStepZipperDown!140 (regOne!29406 expr!117) lt!2120278 a!1296))))

(declare-fun lt!2120277 () Unit!151085)

(assert (=> b!5139394 (= lt!2120277 (lemmaLostCauseFixPointDerivDown!32 (regOne!29406 expr!117) lt!2120278 a!1296))))

(declare-fun $colon$colon!1185 (List!59821 Regex!14447) List!59821)

(assert (=> b!5139394 (= lt!2120278 (Context!7663 ($colon$colon!1185 (exprs!4331 ctx!100) (regTwo!29406 expr!117))))))

(declare-fun b!5139395 () Bool)

(declare-fun tp!1433536 () Bool)

(assert (=> b!5139395 (= e!3205533 tp!1433536)))

(declare-fun b!5139396 () Bool)

(declare-fun tp_is_empty!38043 () Bool)

(assert (=> b!5139396 (= e!3205533 tp_is_empty!38043)))

(declare-fun res!2188854 () Bool)

(assert (=> start!544188 (=> (not res!2188854) (not e!3205534))))

(assert (=> start!544188 (= res!2188854 (validRegex!6302 expr!117))))

(assert (=> start!544188 e!3205534))

(assert (=> start!544188 e!3205533))

(declare-fun e!3205535 () Bool)

(declare-fun inv!79298 (Context!7662) Bool)

(assert (=> start!544188 (and (inv!79298 ctx!100) e!3205535)))

(assert (=> start!544188 tp_is_empty!38043))

(declare-fun b!5139397 () Bool)

(declare-fun lostCause!1447 (Context!7662) Bool)

(assert (=> b!5139397 (= e!3205532 (lostCause!1447 ctx!100))))

(declare-fun b!5139398 () Bool)

(declare-fun tp!1433538 () Bool)

(assert (=> b!5139398 (= e!3205535 tp!1433538)))

(declare-fun b!5139399 () Bool)

(declare-fun tp!1433537 () Bool)

(declare-fun tp!1433541 () Bool)

(assert (=> b!5139399 (= e!3205533 (and tp!1433537 tp!1433541))))

(assert (= (and start!544188 res!2188854) b!5139388))

(assert (= (and b!5139388 (not res!2188852)) b!5139397))

(assert (= (and b!5139388 res!2188856) b!5139392))

(assert (= (and b!5139392 res!2188855) b!5139393))

(assert (= (and b!5139393 res!2188850) b!5139390))

(assert (= (and b!5139390 (not res!2188853)) b!5139394))

(assert (= (and b!5139394 (not res!2188851)) b!5139391))

(assert (= (and start!544188 ((_ is ElementMatch!14447) expr!117)) b!5139396))

(assert (= (and start!544188 ((_ is Concat!23292) expr!117)) b!5139389))

(assert (= (and start!544188 ((_ is Star!14447) expr!117)) b!5139395))

(assert (= (and start!544188 ((_ is Union!14447) expr!117)) b!5139399))

(assert (= start!544188 b!5139398))

(declare-fun m!6203934 () Bool)

(assert (=> b!5139390 m!6203934))

(declare-fun m!6203936 () Bool)

(assert (=> b!5139390 m!6203936))

(declare-fun m!6203938 () Bool)

(assert (=> b!5139390 m!6203938))

(declare-fun m!6203940 () Bool)

(assert (=> start!544188 m!6203940))

(declare-fun m!6203942 () Bool)

(assert (=> start!544188 m!6203942))

(declare-fun m!6203944 () Bool)

(assert (=> b!5139397 m!6203944))

(declare-fun m!6203946 () Bool)

(assert (=> b!5139394 m!6203946))

(declare-fun m!6203948 () Bool)

(assert (=> b!5139394 m!6203948))

(declare-fun m!6203950 () Bool)

(assert (=> b!5139394 m!6203950))

(declare-fun m!6203952 () Bool)

(assert (=> b!5139394 m!6203952))

(declare-fun m!6203954 () Bool)

(assert (=> b!5139394 m!6203954))

(declare-fun m!6203956 () Bool)

(assert (=> b!5139394 m!6203956))

(declare-fun m!6203958 () Bool)

(assert (=> b!5139394 m!6203958))

(declare-fun m!6203960 () Bool)

(assert (=> b!5139394 m!6203960))

(declare-fun m!6203962 () Bool)

(assert (=> b!5139391 m!6203962))

(declare-fun m!6203964 () Bool)

(assert (=> b!5139388 m!6203964))

(declare-fun m!6203966 () Bool)

(assert (=> b!5139393 m!6203966))

(check-sat (not b!5139390) (not b!5139391) (not b!5139398) (not b!5139393) tp_is_empty!38043 (not b!5139389) (not b!5139397) (not b!5139388) (not b!5139399) (not b!5139395) (not start!544188) (not b!5139394))
(check-sat)
