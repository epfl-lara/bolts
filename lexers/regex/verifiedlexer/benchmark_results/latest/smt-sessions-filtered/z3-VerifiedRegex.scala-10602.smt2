; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544918 () Bool)

(assert start!544918)

(declare-fun b!5149441 () Bool)

(declare-fun e!3210328 () Bool)

(declare-fun tp!1439755 () Bool)

(declare-fun tp!1439756 () Bool)

(assert (=> b!5149441 (= e!3210328 (and tp!1439755 tp!1439756))))

(declare-fun b!5149442 () Bool)

(declare-fun e!3210325 () Bool)

(declare-fun e!3210324 () Bool)

(assert (=> b!5149442 (= e!3210325 (not e!3210324))))

(declare-fun res!2191408 () Bool)

(assert (=> b!5149442 (=> res!2191408 e!3210324)))

(declare-datatypes ((C!29256 0))(
  ( (C!29257 (val!24280 Int)) )
))
(declare-datatypes ((Regex!14495 0))(
  ( (ElementMatch!14495 (c!886380 C!29256)) (Concat!23340 (regOne!29502 Regex!14495) (regTwo!29502 Regex!14495)) (EmptyExpr!14495) (Star!14495 (reg!14824 Regex!14495)) (EmptyLang!14495) (Union!14495 (regOne!29503 Regex!14495) (regTwo!29503 Regex!14495)) )
))
(declare-fun expr!117 () Regex!14495)

(declare-fun validRegex!6350 (Regex!14495) Bool)

(assert (=> b!5149442 (= res!2191408 (not (validRegex!6350 (regTwo!29502 expr!117))))))

(declare-fun lostCause!1542 (Regex!14495) Bool)

(assert (=> b!5149442 (not (lostCause!1542 (regOne!29502 expr!117)))))

(declare-datatypes ((Unit!151193 0))(
  ( (Unit!151194) )
))
(declare-fun lt!2121187 () Unit!151193)

(declare-fun lemmaNullableThenNotLostCause!84 (Regex!14495) Unit!151193)

(assert (=> b!5149442 (= lt!2121187 (lemmaNullableThenNotLostCause!84 (regOne!29502 expr!117)))))

(declare-fun b!5149443 () Bool)

(declare-fun tp_is_empty!38139 () Bool)

(assert (=> b!5149443 (= e!3210328 tp_is_empty!38139)))

(declare-fun b!5149445 () Bool)

(assert (=> b!5149445 (= e!3210324 true)))

(declare-datatypes ((List!59903 0))(
  ( (Nil!59779) (Cons!59779 (h!66227 Regex!14495) (t!372946 List!59903)) )
))
(declare-datatypes ((Context!7758 0))(
  ( (Context!7759 (exprs!4379 List!59903)) )
))
(declare-fun lt!2121188 () Context!7758)

(declare-fun a!1296 () C!29256)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1281 ((InoxSet Context!7758)) Bool)

(declare-fun derivationStepZipperDown!162 (Regex!14495 Context!7758 C!29256) (InoxSet Context!7758))

(assert (=> b!5149445 (lostCauseZipper!1281 (derivationStepZipperDown!162 (regOne!29502 expr!117) lt!2121188 a!1296))))

(declare-fun lt!2121189 () Unit!151193)

(declare-fun lemmaLostCauseFixPointDerivDown!52 (Regex!14495 Context!7758 C!29256) Unit!151193)

(assert (=> b!5149445 (= lt!2121189 (lemmaLostCauseFixPointDerivDown!52 (regOne!29502 expr!117) lt!2121188 a!1296))))

(declare-fun ctx!100 () Context!7758)

(declare-fun $colon$colon!1217 (List!59903 Regex!14495) List!59903)

(assert (=> b!5149445 (= lt!2121188 (Context!7759 ($colon$colon!1217 (exprs!4379 ctx!100) (regTwo!29502 expr!117))))))

(declare-fun b!5149446 () Bool)

(declare-fun tp!1439757 () Bool)

(declare-fun tp!1439759 () Bool)

(assert (=> b!5149446 (= e!3210328 (and tp!1439757 tp!1439759))))

(declare-fun b!5149447 () Bool)

(declare-fun e!3210326 () Bool)

(declare-fun tp!1439758 () Bool)

(assert (=> b!5149447 (= e!3210326 tp!1439758)))

(declare-fun b!5149448 () Bool)

(declare-fun res!2191409 () Bool)

(assert (=> b!5149448 (=> (not res!2191409) (not e!3210325))))

(declare-fun e!3210327 () Bool)

(assert (=> b!5149448 (= res!2191409 e!3210327)))

(declare-fun res!2191410 () Bool)

(assert (=> b!5149448 (=> res!2191410 e!3210327)))

(assert (=> b!5149448 (= res!2191410 (lostCause!1542 expr!117))))

(declare-fun b!5149449 () Bool)

(declare-fun lostCause!1543 (Context!7758) Bool)

(assert (=> b!5149449 (= e!3210327 (lostCause!1543 ctx!100))))

(declare-fun b!5149444 () Bool)

(declare-fun res!2191406 () Bool)

(assert (=> b!5149444 (=> (not res!2191406) (not e!3210325))))

(declare-fun nullable!4851 (Regex!14495) Bool)

(assert (=> b!5149444 (= res!2191406 (nullable!4851 (regOne!29502 expr!117)))))

(declare-fun res!2191407 () Bool)

(assert (=> start!544918 (=> (not res!2191407) (not e!3210325))))

(assert (=> start!544918 (= res!2191407 (validRegex!6350 expr!117))))

(assert (=> start!544918 e!3210325))

(assert (=> start!544918 e!3210328))

(declare-fun inv!79418 (Context!7758) Bool)

(assert (=> start!544918 (and (inv!79418 ctx!100) e!3210326)))

(assert (=> start!544918 tp_is_empty!38139))

(declare-fun b!5149450 () Bool)

(declare-fun res!2191405 () Bool)

(assert (=> b!5149450 (=> (not res!2191405) (not e!3210325))))

(get-info :version)

(assert (=> b!5149450 (= res!2191405 (and (or (not ((_ is ElementMatch!14495) expr!117)) (not (= (c!886380 expr!117) a!1296))) (not ((_ is Union!14495) expr!117)) ((_ is Concat!23340) expr!117)))))

(declare-fun b!5149451 () Bool)

(declare-fun tp!1439754 () Bool)

(assert (=> b!5149451 (= e!3210328 tp!1439754)))

(assert (= (and start!544918 res!2191407) b!5149448))

(assert (= (and b!5149448 (not res!2191410)) b!5149449))

(assert (= (and b!5149448 res!2191409) b!5149450))

(assert (= (and b!5149450 res!2191405) b!5149444))

(assert (= (and b!5149444 res!2191406) b!5149442))

(assert (= (and b!5149442 (not res!2191408)) b!5149445))

(assert (= (and start!544918 ((_ is ElementMatch!14495) expr!117)) b!5149443))

(assert (= (and start!544918 ((_ is Concat!23340) expr!117)) b!5149446))

(assert (= (and start!544918 ((_ is Star!14495) expr!117)) b!5149451))

(assert (= (and start!544918 ((_ is Union!14495) expr!117)) b!5149441))

(assert (= start!544918 b!5149447))

(declare-fun m!6207704 () Bool)

(assert (=> b!5149445 m!6207704))

(assert (=> b!5149445 m!6207704))

(declare-fun m!6207706 () Bool)

(assert (=> b!5149445 m!6207706))

(declare-fun m!6207708 () Bool)

(assert (=> b!5149445 m!6207708))

(declare-fun m!6207710 () Bool)

(assert (=> b!5149445 m!6207710))

(declare-fun m!6207712 () Bool)

(assert (=> b!5149444 m!6207712))

(declare-fun m!6207714 () Bool)

(assert (=> start!544918 m!6207714))

(declare-fun m!6207716 () Bool)

(assert (=> start!544918 m!6207716))

(declare-fun m!6207718 () Bool)

(assert (=> b!5149448 m!6207718))

(declare-fun m!6207720 () Bool)

(assert (=> b!5149449 m!6207720))

(declare-fun m!6207722 () Bool)

(assert (=> b!5149442 m!6207722))

(declare-fun m!6207724 () Bool)

(assert (=> b!5149442 m!6207724))

(declare-fun m!6207726 () Bool)

(assert (=> b!5149442 m!6207726))

(check-sat (not b!5149446) (not b!5149442) (not b!5149451) (not b!5149444) tp_is_empty!38139 (not b!5149447) (not b!5149441) (not b!5149445) (not b!5149449) (not b!5149448) (not start!544918))
(check-sat)
