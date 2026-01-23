; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700688 () Bool)

(assert start!700688)

(declare-fun res!2932205 () Bool)

(declare-fun e!4331742 () Bool)

(assert (=> start!700688 (=> (not res!2932205) (not e!4331742))))

(declare-datatypes ((C!37078 0))(
  ( (C!37079 (val!28487 Int)) )
))
(declare-datatypes ((Regex!18402 0))(
  ( (ElementMatch!18402 (c!1340512 C!37078)) (Concat!27247 (regOne!37316 Regex!18402) (regTwo!37316 Regex!18402)) (EmptyExpr!18402) (Star!18402 (reg!18731 Regex!18402)) (EmptyLang!18402) (Union!18402 (regOne!37317 Regex!18402) (regTwo!37317 Regex!18402)) )
))
(declare-datatypes ((List!69924 0))(
  ( (Nil!69800) (Cons!69800 (h!76248 Regex!18402) (t!383955 List!69924)) )
))
(declare-datatypes ((Context!14708 0))(
  ( (Context!14709 (exprs!7854 List!69924)) )
))
(declare-datatypes ((List!69925 0))(
  ( (Nil!69801) (Cons!69801 (h!76249 Context!14708) (t!383956 List!69925)) )
))
(declare-fun zl!166 () List!69925)

(assert (=> start!700688 (= res!2932205 (is-Cons!69801 zl!166))))

(assert (=> start!700688 e!4331742))

(declare-fun e!4331740 () Bool)

(assert (=> start!700688 e!4331740))

(declare-fun b!7226282 () Bool)

(assert (=> b!7226282 (= e!4331742 false)))

(declare-fun lt!2571850 () Int)

(declare-fun zipperDepth!425 (List!69925) Int)

(assert (=> b!7226282 (= lt!2571850 (zipperDepth!425 (t!383956 zl!166)))))

(declare-fun lt!2571849 () Int)

(declare-fun contextDepth!314 (Context!14708) Int)

(assert (=> b!7226282 (= lt!2571849 (contextDepth!314 (h!76249 zl!166)))))

(declare-fun b!7226284 () Bool)

(declare-fun e!4331741 () Bool)

(declare-fun tp!2032231 () Bool)

(assert (=> b!7226284 (= e!4331741 tp!2032231)))

(declare-fun tp!2032232 () Bool)

(declare-fun b!7226283 () Bool)

(declare-fun inv!89028 (Context!14708) Bool)

(assert (=> b!7226283 (= e!4331740 (and (inv!89028 (h!76249 zl!166)) e!4331741 tp!2032232))))

(assert (= (and start!700688 res!2932205) b!7226282))

(assert (= b!7226283 b!7226284))

(assert (= (and start!700688 (is-Cons!69801 zl!166)) b!7226283))

(declare-fun m!7895744 () Bool)

(assert (=> b!7226282 m!7895744))

(declare-fun m!7895746 () Bool)

(assert (=> b!7226282 m!7895746))

(declare-fun m!7895748 () Bool)

(assert (=> b!7226283 m!7895748))

(push 1)

(assert (not b!7226283))

(assert (not b!7226282))

(assert (not b!7226284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

