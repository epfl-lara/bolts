; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707762 () Bool)

(assert start!707762)

(assert (=> start!707762 false))

(declare-fun e!4354531 () Bool)

(assert (=> start!707762 e!4354531))

(declare-fun e!4354530 () Bool)

(assert (=> start!707762 e!4354530))

(declare-fun b!7261722 () Bool)

(declare-fun e!4354529 () Bool)

(declare-fun tp!2039281 () Bool)

(assert (=> b!7261722 (= e!4354529 tp!2039281)))

(declare-fun tp!2039280 () Bool)

(declare-fun b!7261721 () Bool)

(declare-datatypes ((C!37690 0))(
  ( (C!37691 (val!28793 Int)) )
))
(declare-datatypes ((Regex!18708 0))(
  ( (ElementMatch!18708 (c!1350950 C!37690)) (Concat!27553 (regOne!37928 Regex!18708) (regTwo!37928 Regex!18708)) (EmptyExpr!18708) (Star!18708 (reg!19037 Regex!18708)) (EmptyLang!18708) (Union!18708 (regOne!37929 Regex!18708) (regTwo!37929 Regex!18708)) )
))
(declare-datatypes ((List!70703 0))(
  ( (Nil!70579) (Cons!70579 (h!77027 Regex!18708) (t!384769 List!70703)) )
))
(declare-datatypes ((Context!15296 0))(
  ( (Context!15297 (exprs!8148 List!70703)) )
))
(declare-datatypes ((List!70704 0))(
  ( (Nil!70580) (Cons!70580 (h!77028 Context!15296) (t!384770 List!70704)) )
))
(declare-fun zl!1664 () List!70704)

(declare-fun inv!89781 (Context!15296) Bool)

(assert (=> b!7261721 (= e!4354531 (and (inv!89781 (h!77028 zl!1664)) e!4354529 tp!2039280))))

(declare-fun b!7261723 () Bool)

(declare-fun tp_is_empty!46881 () Bool)

(declare-fun tp!2039279 () Bool)

(assert (=> b!7261723 (= e!4354530 (and tp_is_empty!46881 tp!2039279))))

(assert (= b!7261721 b!7261722))

(assert (= (and start!707762 (is-Cons!70580 zl!1664)) b!7261721))

(declare-datatypes ((List!70705 0))(
  ( (Nil!70581) (Cons!70581 (h!77029 C!37690) (t!384771 List!70705)) )
))
(declare-fun s!7912 () List!70705)

(assert (= (and start!707762 (is-Cons!70581 s!7912)) b!7261723))

(declare-fun m!7946358 () Bool)

(assert (=> b!7261721 m!7946358))

(push 1)

(assert (not b!7261721))

(assert (not b!7261722))

(assert (not b!7261723))

(assert tp_is_empty!46881)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

