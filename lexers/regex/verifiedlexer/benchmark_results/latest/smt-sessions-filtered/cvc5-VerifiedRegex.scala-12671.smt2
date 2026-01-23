; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701040 () Bool)

(assert start!701040)

(declare-fun b_free!133855 () Bool)

(declare-fun b_next!134645 () Bool)

(assert (=> start!701040 (= b_free!133855 (not b_next!134645))))

(declare-fun tp!2032981 () Bool)

(declare-fun b_and!351077 () Bool)

(assert (=> start!701040 (= tp!2032981 b_and!351077)))

(assert (=> start!701040 false))

(assert (=> start!701040 true))

(declare-fun e!4333306 () Bool)

(assert (=> start!701040 e!4333306))

(assert (=> start!701040 tp!2032981))

(declare-fun b!7228803 () Bool)

(declare-fun e!4333307 () Bool)

(declare-fun tp!2032980 () Bool)

(assert (=> b!7228803 (= e!4333307 tp!2032980)))

(declare-datatypes ((C!37174 0))(
  ( (C!37175 (val!28535 Int)) )
))
(declare-datatypes ((Regex!18450 0))(
  ( (ElementMatch!18450 (c!1341171 C!37174)) (Concat!27295 (regOne!37412 Regex!18450) (regTwo!37412 Regex!18450)) (EmptyExpr!18450) (Star!18450 (reg!18779 Regex!18450)) (EmptyLang!18450) (Union!18450 (regOne!37413 Regex!18450) (regTwo!37413 Regex!18450)) )
))
(declare-datatypes ((List!69988 0))(
  ( (Nil!69864) (Cons!69864 (h!76312 Regex!18450) (t!384019 List!69988)) )
))
(declare-datatypes ((Context!14780 0))(
  ( (Context!14781 (exprs!7890 List!69988)) )
))
(declare-datatypes ((List!69989 0))(
  ( (Nil!69865) (Cons!69865 (h!76313 Context!14780) (t!384020 List!69989)) )
))
(declare-fun l!7021 () List!69989)

(declare-fun tp!2032979 () Bool)

(declare-fun b!7228802 () Bool)

(declare-fun inv!89136 (Context!14780) Bool)

(assert (=> b!7228802 (= e!4333306 (and (inv!89136 (h!76313 l!7021)) e!4333307 tp!2032979))))

(assert (= b!7228802 b!7228803))

(assert (= (and start!701040 (is-Cons!69865 l!7021)) b!7228802))

(declare-fun m!7897090 () Bool)

(assert (=> b!7228802 m!7897090))

(push 1)

(assert (not b!7228802))

(assert (not b!7228803))

(assert b_and!351077)

(assert (not b_next!134645))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351077)

(assert (not b_next!134645))

(check-sat)

(pop 1)

