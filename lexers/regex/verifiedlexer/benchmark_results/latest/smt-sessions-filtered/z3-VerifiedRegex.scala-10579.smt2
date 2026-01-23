; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544192 () Bool)

(assert start!544192)

(declare-fun b!5139465 () Bool)

(declare-fun e!3205571 () Bool)

(declare-fun e!3205569 () Bool)

(assert (=> b!5139465 (= e!3205571 e!3205569)))

(declare-fun res!2188903 () Bool)

(assert (=> b!5139465 (=> res!2188903 e!3205569)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29164 0))(
  ( (C!29165 (val!24234 Int)) )
))
(declare-datatypes ((Regex!14449 0))(
  ( (ElementMatch!14449 (c!884979 C!29164)) (Concat!23294 (regOne!29410 Regex!14449) (regTwo!29410 Regex!14449)) (EmptyExpr!14449) (Star!14449 (reg!14778 Regex!14449)) (EmptyLang!14449) (Union!14449 (regOne!29411 Regex!14449) (regTwo!29411 Regex!14449)) )
))
(declare-datatypes ((List!59823 0))(
  ( (Nil!59699) (Cons!59699 (h!66147 Regex!14449) (t!372856 List!59823)) )
))
(declare-datatypes ((Context!7666 0))(
  ( (Context!7667 (exprs!4333 List!59823)) )
))
(declare-fun lt!2120317 () (InoxSet Context!7666))

(declare-fun lambda!256372 () Int)

(declare-fun forall!13913 ((InoxSet Context!7666) Int) Bool)

(assert (=> b!5139465 (= res!2188903 (not (forall!13913 lt!2120317 lambda!256372)))))

(declare-fun lt!2120320 () (InoxSet Context!7666))

(declare-fun lostCauseZipper!1261 ((InoxSet Context!7666)) Bool)

(assert (=> b!5139465 (lostCauseZipper!1261 lt!2120320)))

(declare-fun ctx!100 () Context!7666)

(declare-fun expr!117 () Regex!14449)

(declare-fun a!1296 () C!29164)

(declare-fun derivationStepZipperDown!142 (Regex!14449 Context!7666 C!29164) (InoxSet Context!7666))

(assert (=> b!5139465 (= lt!2120320 (derivationStepZipperDown!142 (regTwo!29410 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151089 0))(
  ( (Unit!151090) )
))
(declare-fun lt!2120316 () Unit!151089)

(declare-fun lemmaLostCauseFixPointDerivDown!34 (Regex!14449 Context!7666 C!29164) Unit!151089)

(assert (=> b!5139465 (= lt!2120316 (lemmaLostCauseFixPointDerivDown!34 (regTwo!29410 expr!117) ctx!100 a!1296))))

(assert (=> b!5139465 (lostCauseZipper!1261 lt!2120317)))

(declare-fun lt!2120314 () Context!7666)

(assert (=> b!5139465 (= lt!2120317 (derivationStepZipperDown!142 (regOne!29410 expr!117) lt!2120314 a!1296))))

(declare-fun lt!2120315 () Unit!151089)

(assert (=> b!5139465 (= lt!2120315 (lemmaLostCauseFixPointDerivDown!34 (regOne!29410 expr!117) lt!2120314 a!1296))))

(declare-fun $colon$colon!1187 (List!59823 Regex!14449) List!59823)

(assert (=> b!5139465 (= lt!2120314 (Context!7667 ($colon$colon!1187 (exprs!4333 ctx!100) (regTwo!29410 expr!117))))))

(declare-fun b!5139466 () Bool)

(declare-fun e!3205568 () Bool)

(declare-fun tp!1433575 () Bool)

(declare-fun tp!1433577 () Bool)

(assert (=> b!5139466 (= e!3205568 (and tp!1433575 tp!1433577))))

(declare-fun b!5139467 () Bool)

(declare-fun e!3205572 () Bool)

(declare-fun tp!1433574 () Bool)

(assert (=> b!5139467 (= e!3205572 tp!1433574)))

(declare-fun b!5139468 () Bool)

(declare-fun tp!1433573 () Bool)

(declare-fun tp!1433572 () Bool)

(assert (=> b!5139468 (= e!3205568 (and tp!1433573 tp!1433572))))

(declare-fun b!5139469 () Bool)

(declare-fun tp!1433576 () Bool)

(assert (=> b!5139469 (= e!3205568 tp!1433576)))

(declare-fun b!5139470 () Bool)

(declare-fun e!3205573 () Bool)

(assert (=> b!5139470 (= e!3205573 (not e!3205571))))

(declare-fun res!2188899 () Bool)

(assert (=> b!5139470 (=> res!2188899 e!3205571)))

(declare-fun validRegex!6304 (Regex!14449) Bool)

(assert (=> b!5139470 (= res!2188899 (not (validRegex!6304 (regTwo!29410 expr!117))))))

(declare-fun lostCause!1450 (Regex!14449) Bool)

(assert (=> b!5139470 (not (lostCause!1450 (regOne!29410 expr!117)))))

(declare-fun lt!2120319 () Unit!151089)

(declare-fun lemmaNullableThenNotLostCause!72 (Regex!14449) Unit!151089)

(assert (=> b!5139470 (= lt!2120319 (lemmaNullableThenNotLostCause!72 (regOne!29410 expr!117)))))

(declare-fun b!5139471 () Bool)

(declare-fun res!2188904 () Bool)

(assert (=> b!5139471 (=> (not res!2188904) (not e!3205573))))

(get-info :version)

(assert (=> b!5139471 (= res!2188904 (and (or (not ((_ is ElementMatch!14449) expr!117)) (not (= (c!884979 expr!117) a!1296))) (not ((_ is Union!14449) expr!117)) ((_ is Concat!23294) expr!117)))))

(declare-fun b!5139472 () Bool)

(assert (=> b!5139472 (= e!3205569 true)))

(assert (=> b!5139472 (forall!13913 ((_ map or) lt!2120317 lt!2120320) lambda!256372)))

(declare-fun lt!2120318 () Unit!151089)

(declare-fun lemmaConcatPreservesForall!136 ((InoxSet Context!7666) (InoxSet Context!7666) Int) Unit!151089)

(assert (=> b!5139472 (= lt!2120318 (lemmaConcatPreservesForall!136 lt!2120317 lt!2120320 lambda!256372))))

(declare-fun b!5139473 () Bool)

(declare-fun tp_is_empty!38047 () Bool)

(assert (=> b!5139473 (= e!3205568 tp_is_empty!38047)))

(declare-fun res!2188898 () Bool)

(assert (=> start!544192 (=> (not res!2188898) (not e!3205573))))

(assert (=> start!544192 (= res!2188898 (validRegex!6304 expr!117))))

(assert (=> start!544192 e!3205573))

(assert (=> start!544192 e!3205568))

(declare-fun inv!79303 (Context!7666) Bool)

(assert (=> start!544192 (and (inv!79303 ctx!100) e!3205572)))

(assert (=> start!544192 tp_is_empty!38047))

(declare-fun b!5139474 () Bool)

(declare-fun res!2188900 () Bool)

(assert (=> b!5139474 (=> (not res!2188900) (not e!3205573))))

(declare-fun e!3205570 () Bool)

(assert (=> b!5139474 (= res!2188900 e!3205570)))

(declare-fun res!2188897 () Bool)

(assert (=> b!5139474 (=> res!2188897 e!3205570)))

(assert (=> b!5139474 (= res!2188897 (lostCause!1450 expr!117))))

(declare-fun b!5139475 () Bool)

(declare-fun lostCause!1451 (Context!7666) Bool)

(assert (=> b!5139475 (= e!3205570 (lostCause!1451 ctx!100))))

(declare-fun b!5139476 () Bool)

(declare-fun res!2188901 () Bool)

(assert (=> b!5139476 (=> res!2188901 e!3205569)))

(assert (=> b!5139476 (= res!2188901 (not (forall!13913 lt!2120320 lambda!256372)))))

(declare-fun b!5139477 () Bool)

(declare-fun res!2188902 () Bool)

(assert (=> b!5139477 (=> (not res!2188902) (not e!3205573))))

(declare-fun nullable!4808 (Regex!14449) Bool)

(assert (=> b!5139477 (= res!2188902 (nullable!4808 (regOne!29410 expr!117)))))

(assert (= (and start!544192 res!2188898) b!5139474))

(assert (= (and b!5139474 (not res!2188897)) b!5139475))

(assert (= (and b!5139474 res!2188900) b!5139471))

(assert (= (and b!5139471 res!2188904) b!5139477))

(assert (= (and b!5139477 res!2188902) b!5139470))

(assert (= (and b!5139470 (not res!2188899)) b!5139465))

(assert (= (and b!5139465 (not res!2188903)) b!5139476))

(assert (= (and b!5139476 (not res!2188901)) b!5139472))

(assert (= (and start!544192 ((_ is ElementMatch!14449) expr!117)) b!5139473))

(assert (= (and start!544192 ((_ is Concat!23294) expr!117)) b!5139468))

(assert (= (and start!544192 ((_ is Star!14449) expr!117)) b!5139469))

(assert (= (and start!544192 ((_ is Union!14449) expr!117)) b!5139466))

(assert (= start!544192 b!5139467))

(declare-fun m!6204006 () Bool)

(assert (=> b!5139472 m!6204006))

(declare-fun m!6204008 () Bool)

(assert (=> b!5139472 m!6204008))

(declare-fun m!6204010 () Bool)

(assert (=> b!5139474 m!6204010))

(declare-fun m!6204012 () Bool)

(assert (=> b!5139465 m!6204012))

(declare-fun m!6204014 () Bool)

(assert (=> b!5139465 m!6204014))

(declare-fun m!6204016 () Bool)

(assert (=> b!5139465 m!6204016))

(declare-fun m!6204018 () Bool)

(assert (=> b!5139465 m!6204018))

(declare-fun m!6204020 () Bool)

(assert (=> b!5139465 m!6204020))

(declare-fun m!6204022 () Bool)

(assert (=> b!5139465 m!6204022))

(declare-fun m!6204024 () Bool)

(assert (=> b!5139465 m!6204024))

(declare-fun m!6204026 () Bool)

(assert (=> b!5139465 m!6204026))

(declare-fun m!6204028 () Bool)

(assert (=> b!5139470 m!6204028))

(declare-fun m!6204030 () Bool)

(assert (=> b!5139470 m!6204030))

(declare-fun m!6204032 () Bool)

(assert (=> b!5139470 m!6204032))

(declare-fun m!6204034 () Bool)

(assert (=> start!544192 m!6204034))

(declare-fun m!6204036 () Bool)

(assert (=> start!544192 m!6204036))

(declare-fun m!6204038 () Bool)

(assert (=> b!5139476 m!6204038))

(declare-fun m!6204040 () Bool)

(assert (=> b!5139475 m!6204040))

(declare-fun m!6204042 () Bool)

(assert (=> b!5139477 m!6204042))

(check-sat tp_is_empty!38047 (not b!5139468) (not b!5139472) (not b!5139477) (not b!5139466) (not b!5139465) (not b!5139475) (not b!5139470) (not b!5139467) (not b!5139474) (not start!544192) (not b!5139469) (not b!5139476))
(check-sat)
