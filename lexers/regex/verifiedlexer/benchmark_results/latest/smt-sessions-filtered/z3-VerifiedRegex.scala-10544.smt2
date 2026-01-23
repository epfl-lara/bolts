; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543116 () Bool)

(assert start!543116)

(declare-fun b!5133435 () Bool)

(declare-fun res!2186542 () Bool)

(declare-fun e!3201832 () Bool)

(assert (=> b!5133435 (=> (not res!2186542) (not e!3201832))))

(declare-datatypes ((C!29024 0))(
  ( (C!29025 (val!24164 Int)) )
))
(declare-datatypes ((Regex!14379 0))(
  ( (ElementMatch!14379 (c!883494 C!29024)) (Concat!23224 (regOne!29270 Regex!14379) (regTwo!29270 Regex!14379)) (EmptyExpr!14379) (Star!14379 (reg!14708 Regex!14379)) (EmptyLang!14379) (Union!14379 (regOne!29271 Regex!14379) (regTwo!29271 Regex!14379)) )
))
(declare-datatypes ((List!59698 0))(
  ( (Nil!59574) (Cons!59574 (h!66022 Regex!14379) (t!372725 List!59698)) )
))
(declare-datatypes ((Context!7526 0))(
  ( (Context!7527 (exprs!4263 List!59698)) )
))
(declare-fun ctx!74 () Context!7526)

(declare-fun nullable!4754 (Regex!14379) Bool)

(assert (=> b!5133435 (= res!2186542 (nullable!4754 (h!66022 (exprs!4263 ctx!74))))))

(declare-fun b!5133436 () Bool)

(declare-fun res!2186543 () Bool)

(assert (=> b!5133436 (=> (not res!2186543) (not e!3201832))))

(get-info :version)

(assert (=> b!5133436 (= res!2186543 ((_ is Cons!59574) (exprs!4263 ctx!74)))))

(declare-fun res!2186541 () Bool)

(assert (=> start!543116 (=> (not res!2186541) (not e!3201832))))

(declare-fun lostCause!1322 (Context!7526) Bool)

(assert (=> start!543116 (= res!2186541 (lostCause!1322 ctx!74))))

(assert (=> start!543116 e!3201832))

(declare-fun e!3201830 () Bool)

(declare-fun inv!79128 (Context!7526) Bool)

(assert (=> start!543116 (and (inv!79128 ctx!74) e!3201830)))

(declare-fun tp_is_empty!37923 () Bool)

(assert (=> start!543116 tp_is_empty!37923))

(declare-fun b!5133437 () Bool)

(declare-fun e!3201831 () Bool)

(assert (=> b!5133437 (= e!3201831 true)))

(declare-fun lt!2118571 () Bool)

(declare-fun lt!2118570 () Context!7526)

(assert (=> b!5133437 (= lt!2118571 (lostCause!1322 lt!2118570))))

(declare-fun b!5133438 () Bool)

(declare-fun tp!1431975 () Bool)

(assert (=> b!5133438 (= e!3201830 tp!1431975)))

(declare-fun b!5133439 () Bool)

(assert (=> b!5133439 (= e!3201832 (not e!3201831))))

(declare-fun res!2186544 () Bool)

(assert (=> b!5133439 (=> res!2186544 e!3201831)))

(declare-fun validRegex!6243 (Regex!14379) Bool)

(assert (=> b!5133439 (= res!2186544 (not (validRegex!6243 (h!66022 (exprs!4263 ctx!74)))))))

(declare-fun a!1252 () C!29024)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1219 ((InoxSet Context!7526)) Bool)

(declare-fun derivationStepZipperUp!77 (Context!7526 C!29024) (InoxSet Context!7526))

(assert (=> b!5133439 (lostCauseZipper!1219 (derivationStepZipperUp!77 lt!2118570 a!1252))))

(declare-datatypes ((Unit!150905 0))(
  ( (Unit!150906) )
))
(declare-fun lt!2118568 () Unit!150905)

(declare-fun lemmaLostCauseFixPointDerivUp!10 (Context!7526 C!29024) Unit!150905)

(assert (=> b!5133439 (= lt!2118568 (lemmaLostCauseFixPointDerivUp!10 lt!2118570 a!1252))))

(assert (=> b!5133439 (= lt!2118570 (Context!7527 (t!372725 (exprs!4263 ctx!74))))))

(declare-fun lostCause!1323 (Regex!14379) Bool)

(assert (=> b!5133439 (not (lostCause!1323 (h!66022 (exprs!4263 ctx!74))))))

(declare-fun lt!2118569 () Unit!150905)

(declare-fun lemmaNullableThenNotLostCause!36 (Regex!14379) Unit!150905)

(assert (=> b!5133439 (= lt!2118569 (lemmaNullableThenNotLostCause!36 (h!66022 (exprs!4263 ctx!74))))))

(assert (= (and start!543116 res!2186541) b!5133436))

(assert (= (and b!5133436 res!2186543) b!5133435))

(assert (= (and b!5133435 res!2186542) b!5133439))

(assert (= (and b!5133439 (not res!2186544)) b!5133437))

(assert (= start!543116 b!5133438))

(declare-fun m!6199598 () Bool)

(assert (=> b!5133435 m!6199598))

(declare-fun m!6199600 () Bool)

(assert (=> start!543116 m!6199600))

(declare-fun m!6199602 () Bool)

(assert (=> start!543116 m!6199602))

(declare-fun m!6199604 () Bool)

(assert (=> b!5133437 m!6199604))

(declare-fun m!6199606 () Bool)

(assert (=> b!5133439 m!6199606))

(declare-fun m!6199608 () Bool)

(assert (=> b!5133439 m!6199608))

(declare-fun m!6199610 () Bool)

(assert (=> b!5133439 m!6199610))

(assert (=> b!5133439 m!6199608))

(declare-fun m!6199612 () Bool)

(assert (=> b!5133439 m!6199612))

(declare-fun m!6199614 () Bool)

(assert (=> b!5133439 m!6199614))

(declare-fun m!6199616 () Bool)

(assert (=> b!5133439 m!6199616))

(check-sat tp_is_empty!37923 (not b!5133439) (not b!5133435) (not b!5133437) (not start!543116) (not b!5133438))
(check-sat)
