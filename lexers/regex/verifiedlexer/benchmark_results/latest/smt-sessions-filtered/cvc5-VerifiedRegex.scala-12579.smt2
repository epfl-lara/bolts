; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697482 () Bool)

(assert start!697482)

(declare-fun res!2917846 () Bool)

(declare-fun e!4298736 () Bool)

(assert (=> start!697482 (=> (not res!2917846) (not e!4298736))))

(declare-datatypes ((C!36806 0))(
  ( (C!36807 (val!28351 Int)) )
))
(declare-datatypes ((Regex!18266 0))(
  ( (ElementMatch!18266 (c!1333579 C!36806)) (Concat!27111 (regOne!37044 Regex!18266) (regTwo!37044 Regex!18266)) (EmptyExpr!18266) (Star!18266 (reg!18595 Regex!18266)) (EmptyLang!18266) (Union!18266 (regOne!37045 Regex!18266) (regTwo!37045 Regex!18266)) )
))
(declare-datatypes ((List!69570 0))(
  ( (Nil!69446) (Cons!69446 (h!75894 Regex!18266) (t!383587 List!69570)) )
))
(declare-fun l!9132 () List!69570)

(declare-fun lambda!436375 () Int)

(declare-fun forall!17106 (List!69570 Int) Bool)

(assert (=> start!697482 (= res!2917846 (forall!17106 l!9132 lambda!436375))))

(assert (=> start!697482 e!4298736))

(declare-fun e!4298735 () Bool)

(assert (=> start!697482 e!4298735))

(declare-fun b!7155948 () Bool)

(assert (=> b!7155948 (= e!4298736 false)))

(declare-fun lt!2569187 () Regex!18266)

(declare-fun generalisedUnion!2729 (List!69570) Regex!18266)

(assert (=> b!7155948 (= lt!2569187 (generalisedUnion!2729 l!9132))))

(declare-fun b!7155949 () Bool)

(declare-fun tp!1978726 () Bool)

(declare-fun tp!1978727 () Bool)

(assert (=> b!7155949 (= e!4298735 (and tp!1978726 tp!1978727))))

(assert (= (and start!697482 res!2917846) b!7155948))

(assert (= (and start!697482 (is-Cons!69446 l!9132)) b!7155949))

(declare-fun m!7862728 () Bool)

(assert (=> start!697482 m!7862728))

(declare-fun m!7862730 () Bool)

(assert (=> b!7155948 m!7862730))

(push 1)

(assert (not start!697482))

(assert (not b!7155948))

(assert (not b!7155949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

