; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715560 () Bool)

(assert start!715560)

(declare-fun b!7329047 () Bool)

(declare-fun e!4388510 () Bool)

(declare-fun tp!2080982 () Bool)

(assert (=> b!7329047 (= e!4388510 tp!2080982)))

(declare-fun b!7329044 () Bool)

(declare-fun e!4388509 () Bool)

(assert (=> b!7329044 (= e!4388509 false)))

(declare-datatypes ((C!38310 0))(
  ( (C!38311 (val!29515 Int)) )
))
(declare-datatypes ((Regex!19018 0))(
  ( (ElementMatch!19018 (c!1360661 C!38310)) (Concat!27863 (regOne!38548 Regex!19018) (regTwo!38548 Regex!19018)) (EmptyExpr!19018) (Star!19018 (reg!19347 Regex!19018)) (EmptyLang!19018) (Union!19018 (regOne!38549 Regex!19018) (regTwo!38549 Regex!19018)) )
))
(declare-datatypes ((List!71514 0))(
  ( (Nil!71390) (Cons!71390 (h!77838 Regex!19018) (t!385901 List!71514)) )
))
(declare-fun lt!2607166 () List!71514)

(declare-datatypes ((Context!15916 0))(
  ( (Context!15917 (exprs!8458 List!71514)) )
))
(declare-fun ct1!256 () Context!15916)

(declare-fun ct2!352 () Context!15916)

(declare-fun ++!16842 (List!71514 List!71514) List!71514)

(assert (=> b!7329044 (= lt!2607166 (++!16842 (exprs!8458 ct1!256) (exprs!8458 ct2!352)))))

(declare-datatypes ((Unit!165001 0))(
  ( (Unit!165002) )
))
(declare-fun lt!2607165 () Unit!165001)

(declare-fun lambda!454451 () Int)

(declare-fun lemmaConcatPreservesForall!1699 (List!71514 List!71514 Int) Unit!165001)

(assert (=> b!7329044 (= lt!2607165 (lemmaConcatPreservesForall!1699 (exprs!8458 ct1!256) (exprs!8458 ct2!352) lambda!454451))))

(declare-fun b!7329046 () Bool)

(declare-fun e!4388508 () Bool)

(declare-fun tp!2080984 () Bool)

(assert (=> b!7329046 (= e!4388508 tp!2080984)))

(declare-fun b!7329045 () Bool)

(declare-fun e!4388511 () Bool)

(declare-fun tp!2080983 () Bool)

(assert (=> b!7329045 (= e!4388511 tp!2080983)))

(declare-fun res!2962135 () Bool)

(assert (=> start!715560 (=> (not res!2962135) (not e!4388509))))

(declare-fun c!10305 () C!38310)

(declare-fun cWitness!35 () Context!15916)

(declare-fun derivationStepZipperUp!2698 (Context!15916 C!38310) (Set Context!15916))

(assert (=> start!715560 (= res!2962135 (set.member cWitness!35 (derivationStepZipperUp!2698 ct1!256 c!10305)))))

(assert (=> start!715560 e!4388509))

(declare-fun inv!90886 (Context!15916) Bool)

(assert (=> start!715560 (and (inv!90886 cWitness!35) e!4388511)))

(assert (=> start!715560 (and (inv!90886 ct1!256) e!4388508)))

(declare-fun tp_is_empty!48281 () Bool)

(assert (=> start!715560 tp_is_empty!48281))

(assert (=> start!715560 (and (inv!90886 ct2!352) e!4388510)))

(assert (= (and start!715560 res!2962135) b!7329044))

(assert (= start!715560 b!7329045))

(assert (= start!715560 b!7329046))

(assert (= start!715560 b!7329047))

(declare-fun m!7995128 () Bool)

(assert (=> b!7329044 m!7995128))

(declare-fun m!7995130 () Bool)

(assert (=> b!7329044 m!7995130))

(declare-fun m!7995132 () Bool)

(assert (=> start!715560 m!7995132))

(declare-fun m!7995134 () Bool)

(assert (=> start!715560 m!7995134))

(declare-fun m!7995136 () Bool)

(assert (=> start!715560 m!7995136))

(declare-fun m!7995138 () Bool)

(assert (=> start!715560 m!7995138))

(declare-fun m!7995140 () Bool)

(assert (=> start!715560 m!7995140))

(push 1)

(assert (not b!7329046))

(assert (not start!715560))

(assert (not b!7329045))

(assert (not b!7329047))

(assert tp_is_empty!48281)

(assert (not b!7329044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

