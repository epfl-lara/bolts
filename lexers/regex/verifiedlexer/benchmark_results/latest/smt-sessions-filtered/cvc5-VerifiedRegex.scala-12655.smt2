; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700814 () Bool)

(assert start!700814)

(declare-fun res!2932371 () Bool)

(declare-fun e!4332172 () Bool)

(assert (=> start!700814 (=> (not res!2932371) (not e!4332172))))

(declare-datatypes ((C!37110 0))(
  ( (C!37111 (val!28503 Int)) )
))
(declare-datatypes ((Regex!18418 0))(
  ( (ElementMatch!18418 (c!1340676 C!37110)) (Concat!27263 (regOne!37348 Regex!18418) (regTwo!37348 Regex!18418)) (EmptyExpr!18418) (Star!18418 (reg!18747 Regex!18418)) (EmptyLang!18418) (Union!18418 (regOne!37349 Regex!18418) (regTwo!37349 Regex!18418)) )
))
(declare-datatypes ((List!69956 0))(
  ( (Nil!69832) (Cons!69832 (h!76280 Regex!18418) (t!383987 List!69956)) )
))
(declare-datatypes ((Context!14740 0))(
  ( (Context!14741 (exprs!7870 List!69956)) )
))
(declare-fun c!7037 () Context!14740)

(assert (=> start!700814 (= res!2932371 (is-Cons!69832 (exprs!7870 c!7037)))))

(assert (=> start!700814 e!4332172))

(declare-fun e!4332173 () Bool)

(declare-fun inv!89068 (Context!14740) Bool)

(assert (=> start!700814 (and (inv!89068 c!7037) e!4332173)))

(declare-fun b!7226890 () Bool)

(assert (=> b!7226890 (= e!4332172 false)))

(declare-fun lt!2572177 () Int)

(declare-fun contextDepth!329 (Context!14740) Int)

(assert (=> b!7226890 (= lt!2572177 (contextDepth!329 (Context!14741 (t!383987 (exprs!7870 c!7037)))))))

(declare-fun lt!2572178 () Int)

(declare-fun regexDepth!407 (Regex!18418) Int)

(assert (=> b!7226890 (= lt!2572178 (regexDepth!407 (h!76280 (exprs!7870 c!7037))))))

(declare-fun b!7226891 () Bool)

(declare-fun tp!2032469 () Bool)

(assert (=> b!7226891 (= e!4332173 tp!2032469)))

(assert (= (and start!700814 res!2932371) b!7226890))

(assert (= start!700814 b!7226891))

(declare-fun m!7896166 () Bool)

(assert (=> start!700814 m!7896166))

(declare-fun m!7896168 () Bool)

(assert (=> b!7226890 m!7896168))

(declare-fun m!7896170 () Bool)

(assert (=> b!7226890 m!7896170))

(push 1)

(assert (not b!7226890))

(assert (not start!700814))

(assert (not b!7226891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

