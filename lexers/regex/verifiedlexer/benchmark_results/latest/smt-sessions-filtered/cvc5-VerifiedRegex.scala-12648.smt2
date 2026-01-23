; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700692 () Bool)

(assert start!700692)

(declare-fun b!7226307 () Bool)

(assert (=> b!7226307 true))

(declare-fun b!7226304 () Bool)

(declare-fun e!4331761 () Bool)

(declare-datatypes ((C!37082 0))(
  ( (C!37083 (val!28489 Int)) )
))
(declare-datatypes ((Regex!18404 0))(
  ( (ElementMatch!18404 (c!1340514 C!37082)) (Concat!27249 (regOne!37320 Regex!18404) (regTwo!37320 Regex!18404)) (EmptyExpr!18404) (Star!18404 (reg!18733 Regex!18404)) (EmptyLang!18404) (Union!18404 (regOne!37321 Regex!18404) (regTwo!37321 Regex!18404)) )
))
(declare-datatypes ((List!69928 0))(
  ( (Nil!69804) (Cons!69804 (h!76252 Regex!18404) (t!383959 List!69928)) )
))
(declare-datatypes ((Context!14712 0))(
  ( (Context!14713 (exprs!7856 List!69928)) )
))
(declare-datatypes ((List!69929 0))(
  ( (Nil!69805) (Cons!69805 (h!76253 Context!14712) (t!383960 List!69929)) )
))
(declare-fun zl!166 () List!69929)

(declare-fun lambda!438409 () Int)

(declare-fun forall!17226 (List!69929 Int) Bool)

(assert (=> b!7226304 (= e!4331761 (not (forall!17226 (t!383960 zl!166) lambda!438409)))))

(declare-fun b!7226305 () Bool)

(declare-fun e!4331762 () Bool)

(declare-fun tp!2032244 () Bool)

(assert (=> b!7226305 (= e!4331762 tp!2032244)))

(declare-fun b!7226306 () Bool)

(declare-fun e!4331763 () Bool)

(assert (=> b!7226306 (= e!4331763 e!4331761)))

(declare-fun res!2932215 () Bool)

(assert (=> b!7226306 (=> (not res!2932215) (not e!4331761))))

(declare-fun lt!2571861 () Int)

(declare-fun lt!2571862 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!7226306 (= res!2932215 (>= (maxBigInt!0 lt!2571861 lt!2571862) lt!2571862))))

(declare-fun zipperDepth!427 (List!69929) Int)

(assert (=> b!7226306 (= lt!2571862 (zipperDepth!427 (t!383960 zl!166)))))

(declare-fun contextDepth!316 (Context!14712) Int)

(assert (=> b!7226306 (= lt!2571861 (contextDepth!316 (h!76253 zl!166)))))

(declare-fun res!2932216 () Bool)

(assert (=> b!7226307 (=> (not res!2932216) (not e!4331761))))

(assert (=> b!7226307 (= res!2932216 (forall!17226 (t!383960 zl!166) lambda!438409))))

(declare-fun b!7226308 () Bool)

(declare-fun e!4331760 () Bool)

(declare-fun tp!2032243 () Bool)

(declare-fun inv!89033 (Context!14712) Bool)

(assert (=> b!7226308 (= e!4331760 (and (inv!89033 (h!76253 zl!166)) e!4331762 tp!2032243))))

(declare-fun res!2932217 () Bool)

(assert (=> start!700692 (=> (not res!2932217) (not e!4331763))))

(assert (=> start!700692 (= res!2932217 (is-Cons!69805 zl!166))))

(assert (=> start!700692 e!4331763))

(assert (=> start!700692 e!4331760))

(assert (= (and start!700692 res!2932217) b!7226306))

(assert (= (and b!7226306 res!2932215) b!7226307))

(assert (= (and b!7226307 res!2932216) b!7226304))

(assert (= b!7226308 b!7226305))

(assert (= (and start!700692 (is-Cons!69805 zl!166)) b!7226308))

(declare-fun m!7895756 () Bool)

(assert (=> b!7226304 m!7895756))

(declare-fun m!7895758 () Bool)

(assert (=> b!7226306 m!7895758))

(declare-fun m!7895760 () Bool)

(assert (=> b!7226306 m!7895760))

(declare-fun m!7895762 () Bool)

(assert (=> b!7226306 m!7895762))

(assert (=> b!7226307 m!7895756))

(declare-fun m!7895764 () Bool)

(assert (=> b!7226308 m!7895764))

(push 1)

(assert (not b!7226305))

(assert (not b!7226306))

(assert (not b!7226304))

(assert (not b!7226308))

(assert (not b!7226307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

