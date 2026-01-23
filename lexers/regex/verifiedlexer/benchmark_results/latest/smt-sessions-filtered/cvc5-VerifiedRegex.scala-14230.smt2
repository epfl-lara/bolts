; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744818 () Bool)

(assert start!744818)

(declare-datatypes ((C!42790 0))(
  ( (C!42791 (val!31857 Int)) )
))
(declare-datatypes ((Regex!21232 0))(
  ( (ElementMatch!21232 (c!1449469 C!42790)) (Concat!30077 (regOne!42976 Regex!21232) (regTwo!42976 Regex!21232)) (EmptyExpr!21232) (Star!21232 (reg!21561 Regex!21232)) (EmptyLang!21232) (Union!21232 (regOne!42977 Regex!21232) (regTwo!42977 Regex!21232)) )
))
(declare-datatypes ((List!74103 0))(
  ( (Nil!73979) (Cons!73979 (h!80427 Regex!21232) (t!388838 List!74103)) )
))
(declare-datatypes ((Context!17096 0))(
  ( (Context!17097 (exprs!9048 List!74103)) )
))
(declare-datatypes ((List!74104 0))(
  ( (Nil!73980) (Cons!73980 (h!80428 Context!17096) (t!388839 List!74104)) )
))
(declare-fun zl!160 () List!74104)

(assert (=> start!744818 false))

(declare-fun e!4661119 () Bool)

(assert (=> start!744818 e!4661119))

(declare-fun b!7897024 () Bool)

(declare-fun e!4661120 () Bool)

(declare-fun tp!2352683 () Bool)

(assert (=> b!7897024 (= e!4661120 tp!2352683)))

(declare-fun b!7897023 () Bool)

(declare-fun tp!2352684 () Bool)

(declare-fun inv!94971 (Context!17096) Bool)

(assert (=> b!7897023 (= e!4661119 (and (inv!94971 (h!80428 zl!160)) e!4661120 tp!2352684))))

(assert (= b!7897023 b!7897024))

(assert (= (and start!744818 (is-Cons!73980 zl!160)) b!7897023))

(declare-fun m!8272336 () Bool)

(assert (=> b!7897023 m!8272336))

(push 1)

(assert (not b!7897023))

(assert (not b!7897024))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

