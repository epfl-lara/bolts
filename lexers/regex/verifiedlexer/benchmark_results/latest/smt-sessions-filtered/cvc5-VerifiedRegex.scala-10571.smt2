; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544118 () Bool)

(assert start!544118)

(declare-fun b!5138634 () Bool)

(declare-fun e!3205148 () Bool)

(declare-fun tp!1433186 () Bool)

(declare-fun tp!1433187 () Bool)

(assert (=> b!5138634 (= e!3205148 (and tp!1433186 tp!1433187))))

(declare-fun b!5138635 () Bool)

(declare-fun tp!1433189 () Bool)

(assert (=> b!5138635 (= e!3205148 tp!1433189)))

(declare-fun b!5138636 () Bool)

(declare-fun e!3205150 () Bool)

(declare-fun e!3205149 () Bool)

(assert (=> b!5138636 (= e!3205150 (not e!3205149))))

(declare-fun res!2188530 () Bool)

(assert (=> b!5138636 (=> res!2188530 e!3205149)))

(declare-datatypes ((C!29130 0))(
  ( (C!29131 (val!24217 Int)) )
))
(declare-datatypes ((Regex!14432 0))(
  ( (ElementMatch!14432 (c!884864 C!29130)) (Concat!23277 (regOne!29376 Regex!14432) (regTwo!29376 Regex!14432)) (EmptyExpr!14432) (Star!14432 (reg!14761 Regex!14432)) (EmptyLang!14432) (Union!14432 (regOne!29377 Regex!14432) (regTwo!29377 Regex!14432)) )
))
(declare-datatypes ((List!59802 0))(
  ( (Nil!59678) (Cons!59678 (h!66126 Regex!14432) (t!372833 List!59802)) )
))
(declare-datatypes ((Context!7632 0))(
  ( (Context!7633 (exprs!4316 List!59802)) )
))
(declare-fun lt!2120026 () (Set Context!7632))

(declare-fun lambda!256303 () Int)

(declare-fun forall!13902 ((Set Context!7632) Int) Bool)

(assert (=> b!5138636 (= res!2188530 (not (forall!13902 lt!2120026 lambda!256303)))))

(declare-fun lt!2120029 () (Set Context!7632))

(declare-fun lostCauseZipper!1248 ((Set Context!7632)) Bool)

(assert (=> b!5138636 (lostCauseZipper!1248 lt!2120029)))

(declare-fun ctx!100 () Context!7632)

(declare-fun expr!117 () Regex!14432)

(declare-fun a!1296 () C!29130)

(declare-fun derivationStepZipperDown!129 (Regex!14432 Context!7632 C!29130) (Set Context!7632))

(assert (=> b!5138636 (= lt!2120029 (derivationStepZipperDown!129 (regTwo!29377 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151051 0))(
  ( (Unit!151052) )
))
(declare-fun lt!2120025 () Unit!151051)

(declare-fun lemmaLostCauseFixPointDerivDown!21 (Regex!14432 Context!7632 C!29130) Unit!151051)

(assert (=> b!5138636 (= lt!2120025 (lemmaLostCauseFixPointDerivDown!21 (regTwo!29377 expr!117) ctx!100 a!1296))))

(assert (=> b!5138636 (lostCauseZipper!1248 lt!2120026)))

(assert (=> b!5138636 (= lt!2120026 (derivationStepZipperDown!129 (regOne!29377 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120027 () Unit!151051)

(assert (=> b!5138636 (= lt!2120027 (lemmaLostCauseFixPointDerivDown!21 (regOne!29377 expr!117) ctx!100 a!1296))))

(declare-fun b!5138637 () Bool)

(declare-fun tp!1433185 () Bool)

(declare-fun tp!1433184 () Bool)

(assert (=> b!5138637 (= e!3205148 (and tp!1433185 tp!1433184))))

(declare-fun res!2188529 () Bool)

(assert (=> start!544118 (=> (not res!2188529) (not e!3205150))))

(declare-fun validRegex!6287 (Regex!14432) Bool)

(assert (=> start!544118 (= res!2188529 (validRegex!6287 expr!117))))

(assert (=> start!544118 e!3205150))

(assert (=> start!544118 e!3205148))

(declare-fun e!3205152 () Bool)

(declare-fun inv!79262 (Context!7632) Bool)

(assert (=> start!544118 (and (inv!79262 ctx!100) e!3205152)))

(declare-fun tp_is_empty!38013 () Bool)

(assert (=> start!544118 tp_is_empty!38013))

(declare-fun b!5138638 () Bool)

(declare-fun res!2188531 () Bool)

(assert (=> b!5138638 (=> (not res!2188531) (not e!3205150))))

(assert (=> b!5138638 (= res!2188531 (and (or (not (is-ElementMatch!14432 expr!117)) (not (= (c!884864 expr!117) a!1296))) (is-Union!14432 expr!117)))))

(declare-fun b!5138639 () Bool)

(declare-fun tp!1433188 () Bool)

(assert (=> b!5138639 (= e!3205152 tp!1433188)))

(declare-fun b!5138640 () Bool)

(assert (=> b!5138640 (= e!3205148 tp_is_empty!38013)))

(declare-fun b!5138641 () Bool)

(declare-fun e!3205151 () Bool)

(declare-fun lostCause!1416 (Context!7632) Bool)

(assert (=> b!5138641 (= e!3205151 (lostCause!1416 ctx!100))))

(declare-fun b!5138642 () Bool)

(declare-fun res!2188527 () Bool)

(assert (=> b!5138642 (=> (not res!2188527) (not e!3205150))))

(assert (=> b!5138642 (= res!2188527 e!3205151)))

(declare-fun res!2188528 () Bool)

(assert (=> b!5138642 (=> res!2188528 e!3205151)))

(declare-fun lostCause!1417 (Regex!14432) Bool)

(assert (=> b!5138642 (= res!2188528 (lostCause!1417 expr!117))))

(declare-fun b!5138643 () Bool)

(assert (=> b!5138643 (= e!3205149 true)))

(declare-fun lt!2120028 () Bool)

(assert (=> b!5138643 (= lt!2120028 (forall!13902 lt!2120029 lambda!256303))))

(assert (= (and start!544118 res!2188529) b!5138642))

(assert (= (and b!5138642 (not res!2188528)) b!5138641))

(assert (= (and b!5138642 res!2188527) b!5138638))

(assert (= (and b!5138638 res!2188531) b!5138636))

(assert (= (and b!5138636 (not res!2188530)) b!5138643))

(assert (= (and start!544118 (is-ElementMatch!14432 expr!117)) b!5138640))

(assert (= (and start!544118 (is-Concat!23277 expr!117)) b!5138634))

(assert (= (and start!544118 (is-Star!14432 expr!117)) b!5138635))

(assert (= (and start!544118 (is-Union!14432 expr!117)) b!5138637))

(assert (= start!544118 b!5138639))

(declare-fun m!6203396 () Bool)

(assert (=> b!5138642 m!6203396))

(declare-fun m!6203398 () Bool)

(assert (=> b!5138641 m!6203398))

(declare-fun m!6203400 () Bool)

(assert (=> b!5138643 m!6203400))

(declare-fun m!6203402 () Bool)

(assert (=> start!544118 m!6203402))

(declare-fun m!6203404 () Bool)

(assert (=> start!544118 m!6203404))

(declare-fun m!6203406 () Bool)

(assert (=> b!5138636 m!6203406))

(declare-fun m!6203408 () Bool)

(assert (=> b!5138636 m!6203408))

(declare-fun m!6203410 () Bool)

(assert (=> b!5138636 m!6203410))

(declare-fun m!6203412 () Bool)

(assert (=> b!5138636 m!6203412))

(declare-fun m!6203414 () Bool)

(assert (=> b!5138636 m!6203414))

(declare-fun m!6203416 () Bool)

(assert (=> b!5138636 m!6203416))

(declare-fun m!6203418 () Bool)

(assert (=> b!5138636 m!6203418))

(push 1)

(assert (not b!5138636))

(assert (not b!5138643))

(assert (not b!5138637))

(assert (not b!5138634))

(assert tp_is_empty!38013)

(assert (not b!5138639))

(assert (not b!5138642))

(assert (not b!5138635))

(assert (not start!544118))

(assert (not b!5138641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

