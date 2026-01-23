; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!231852 () Bool)

(assert start!231852)

(declare-fun res!1002475 () Bool)

(declare-fun e!1508617 () Bool)

(assert (=> start!231852 (=> (not res!1002475) (not e!1508617))))

(declare-datatypes ((C!13974 0))(
  ( (C!13975 (val!8229 Int)) )
))
(declare-datatypes ((Regex!6908 0))(
  ( (ElementMatch!6908 (c!375430 C!13974)) (Concat!11544 (regOne!14328 Regex!6908) (regTwo!14328 Regex!6908)) (EmptyExpr!6908) (Star!6908 (reg!7237 Regex!6908)) (EmptyLang!6908) (Union!6908 (regOne!14329 Regex!6908) (regTwo!14329 Regex!6908)) )
))
(declare-datatypes ((List!28058 0))(
  ( (Nil!27960) (Cons!27960 (h!33361 Regex!6908) (t!208035 List!28058)) )
))
(declare-fun l!9164 () List!28058)

(declare-fun lambda!86880 () Int)

(declare-fun forall!5542 (List!28058 Int) Bool)

(assert (=> start!231852 (= res!1002475 (forall!5542 l!9164 lambda!86880))))

(assert (=> start!231852 e!1508617))

(declare-fun e!1508618 () Bool)

(assert (=> start!231852 e!1508618))

(declare-fun b!2362071 () Bool)

(assert (=> b!2362071 (= e!1508617 (not (forall!5542 l!9164 lambda!86880)))))

(declare-fun b!2362072 () Bool)

(declare-fun tp!755361 () Bool)

(declare-fun tp!755360 () Bool)

(assert (=> b!2362072 (= e!1508618 (and tp!755361 tp!755360))))

(assert (= (and start!231852 res!1002475) b!2362071))

(assert (= (and start!231852 (is-Cons!27960 l!9164)) b!2362072))

(declare-fun m!2774243 () Bool)

(assert (=> start!231852 m!2774243))

(assert (=> b!2362071 m!2774243))

(push 1)

(assert (not start!231852))

(assert (not b!2362071))

(assert (not b!2362072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

