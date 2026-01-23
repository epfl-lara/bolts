; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!231856 () Bool)

(assert start!231856)

(declare-fun b!2362093 () Bool)

(declare-fun e!1508633 () Bool)

(declare-fun tp!755384 () Bool)

(assert (=> b!2362093 (= e!1508633 tp!755384)))

(declare-fun b!2362094 () Bool)

(declare-fun tp!755386 () Bool)

(declare-fun tp!755387 () Bool)

(assert (=> b!2362094 (= e!1508633 (and tp!755386 tp!755387))))

(declare-fun b!2362095 () Bool)

(declare-fun tp!755383 () Bool)

(declare-fun tp!755382 () Bool)

(assert (=> b!2362095 (= e!1508633 (and tp!755383 tp!755382))))

(declare-fun b!2362096 () Bool)

(declare-fun res!1002484 () Bool)

(declare-fun e!1508631 () Bool)

(assert (=> b!2362096 (=> (not res!1002484) (not e!1508631))))

(declare-datatypes ((C!13978 0))(
  ( (C!13979 (val!8231 Int)) )
))
(declare-datatypes ((Regex!6910 0))(
  ( (ElementMatch!6910 (c!375432 C!13978)) (Concat!11546 (regOne!14332 Regex!6910) (regTwo!14332 Regex!6910)) (EmptyExpr!6910) (Star!6910 (reg!7239 Regex!6910)) (EmptyLang!6910) (Union!6910 (regOne!14333 Regex!6910) (regTwo!14333 Regex!6910)) )
))
(declare-fun r!13927 () Regex!6910)

(declare-datatypes ((List!28060 0))(
  ( (Nil!27962) (Cons!27962 (h!33363 Regex!6910) (t!208037 List!28060)) )
))
(declare-fun l!9164 () List!28060)

(declare-fun generalisedConcat!11 (List!28060) Regex!6910)

(assert (=> b!2362096 (= res!1002484 (= r!13927 (generalisedConcat!11 l!9164)))))

(declare-fun res!1002483 () Bool)

(assert (=> start!231856 (=> (not res!1002483) (not e!1508631))))

(declare-fun lambda!86888 () Int)

(declare-fun forall!5544 (List!28060 Int) Bool)

(assert (=> start!231856 (= res!1002483 (forall!5544 l!9164 lambda!86888))))

(assert (=> start!231856 e!1508631))

(declare-fun e!1508632 () Bool)

(assert (=> start!231856 e!1508632))

(assert (=> start!231856 e!1508633))

(declare-fun b!2362097 () Bool)

(declare-fun tp_is_empty!11233 () Bool)

(assert (=> b!2362097 (= e!1508633 tp_is_empty!11233)))

(declare-fun b!2362098 () Bool)

(assert (=> b!2362098 (= e!1508631 false)))

(declare-fun b!2362099 () Bool)

(declare-fun tp!755385 () Bool)

(declare-fun tp!755388 () Bool)

(assert (=> b!2362099 (= e!1508632 (and tp!755385 tp!755388))))

(assert (= (and start!231856 res!1002483) b!2362096))

(assert (= (and b!2362096 res!1002484) b!2362098))

(assert (= (and start!231856 (is-Cons!27962 l!9164)) b!2362099))

(assert (= (and start!231856 (is-ElementMatch!6910 r!13927)) b!2362097))

(assert (= (and start!231856 (is-Concat!11546 r!13927)) b!2362094))

(assert (= (and start!231856 (is-Star!6910 r!13927)) b!2362093))

(assert (= (and start!231856 (is-Union!6910 r!13927)) b!2362095))

(declare-fun m!2774247 () Bool)

(assert (=> b!2362096 m!2774247))

(declare-fun m!2774249 () Bool)

(assert (=> start!231856 m!2774249))

(push 1)

(assert (not b!2362099))

(assert tp_is_empty!11233)

(assert (not b!2362096))

(assert (not b!2362094))

(assert (not start!231856))

(assert (not b!2362093))

(assert (not b!2362095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

