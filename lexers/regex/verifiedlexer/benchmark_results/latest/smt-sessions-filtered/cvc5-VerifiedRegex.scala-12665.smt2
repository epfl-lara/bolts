; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700984 () Bool)

(assert start!700984)

(assert (=> start!700984 false))

(assert (=> start!700984 true))

(declare-fun e!4333092 () Bool)

(assert (=> start!700984 e!4333092))

(declare-fun b!7228368 () Bool)

(declare-fun tp!2032695 () Bool)

(declare-fun tp!2032696 () Bool)

(assert (=> b!7228368 (= e!4333092 (and tp!2032695 tp!2032696))))

(declare-datatypes ((C!37150 0))(
  ( (C!37151 (val!28523 Int)) )
))
(declare-datatypes ((Regex!18438 0))(
  ( (ElementMatch!18438 (c!1341145 C!37150)) (Concat!27283 (regOne!37388 Regex!18438) (regTwo!37388 Regex!18438)) (EmptyExpr!18438) (Star!18438 (reg!18767 Regex!18438)) (EmptyLang!18438) (Union!18438 (regOne!37389 Regex!18438) (regTwo!37389 Regex!18438)) )
))
(declare-datatypes ((List!69976 0))(
  ( (Nil!69852) (Cons!69852 (h!76300 Regex!18438) (t!384007 List!69976)) )
))
(declare-fun l!7017 () List!69976)

(assert (= (and start!700984 (is-Cons!69852 l!7017)) b!7228368))

(push 1)

(assert (not b!7228368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

