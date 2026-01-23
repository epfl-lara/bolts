; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719902 () Bool)

(assert start!719902)

(declare-fun b!7378522 () Bool)

(declare-fun e!4416835 () Bool)

(declare-fun tp!2098325 () Bool)

(assert (=> b!7378522 (= e!4416835 tp!2098325)))

(declare-fun b!7378524 () Bool)

(declare-fun e!4416833 () Bool)

(declare-fun tp!2098323 () Bool)

(assert (=> b!7378524 (= e!4416833 tp!2098323)))

(declare-fun b!7378525 () Bool)

(declare-fun res!2976323 () Bool)

(declare-fun e!4416832 () Bool)

(assert (=> b!7378525 (=> (not res!2976323) (not e!4416832))))

(declare-datatypes ((C!38898 0))(
  ( (C!38899 (val!29809 Int)) )
))
(declare-datatypes ((Regex!19312 0))(
  ( (ElementMatch!19312 (c!1371470 C!38898)) (Concat!28157 (regOne!39136 Regex!19312) (regTwo!39136 Regex!19312)) (EmptyExpr!19312) (Star!19312 (reg!19641 Regex!19312)) (EmptyLang!19312) (Union!19312 (regOne!39137 Regex!19312) (regTwo!39137 Regex!19312)) )
))
(declare-fun r1!2370 () Regex!19312)

(declare-fun c!10362 () C!38898)

(declare-datatypes ((List!71808 0))(
  ( (Nil!71684) (Cons!71684 (h!78132 Regex!19312) (t!386293 List!71808)) )
))
(declare-datatypes ((Context!16504 0))(
  ( (Context!16505 (exprs!8752 List!71808)) )
))
(declare-fun cWitness!61 () Context!16504)

(declare-fun ct1!282 () Context!16504)

(declare-fun derivationStepZipperDown!3138 (Regex!19312 Context!16504 C!38898) (Set Context!16504))

(assert (=> b!7378525 (= res!2976323 (set.member cWitness!61 (derivationStepZipperDown!3138 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7378526 () Bool)

(declare-fun tp!2098324 () Bool)

(declare-fun tp!2098327 () Bool)

(assert (=> b!7378526 (= e!4416835 (and tp!2098324 tp!2098327))))

(declare-fun b!7378527 () Bool)

(assert (=> b!7378527 (= e!4416832 false)))

(declare-fun lt!2616709 () (Set Context!16504))

(declare-fun ct2!378 () Context!16504)

(declare-fun ++!17128 (List!71808 List!71808) List!71808)

(assert (=> b!7378527 (= lt!2616709 (derivationStepZipperDown!3138 r1!2370 (Context!16505 (++!17128 (exprs!8752 ct1!282) (exprs!8752 ct2!378))) c!10362))))

(declare-fun lambda!458468 () Int)

(declare-datatypes ((Unit!165573 0))(
  ( (Unit!165574) )
))
(declare-fun lt!2616708 () Unit!165573)

(declare-fun lemmaConcatPreservesForall!1985 (List!71808 List!71808 Int) Unit!165573)

(assert (=> b!7378527 (= lt!2616708 (lemmaConcatPreservesForall!1985 (exprs!8752 ct1!282) (exprs!8752 ct2!378) lambda!458468))))

(declare-fun b!7378528 () Bool)

(declare-fun e!4416831 () Bool)

(declare-fun tp!2098321 () Bool)

(assert (=> b!7378528 (= e!4416831 tp!2098321)))

(declare-fun b!7378529 () Bool)

(declare-fun tp_is_empty!48869 () Bool)

(assert (=> b!7378529 (= e!4416835 tp_is_empty!48869)))

(declare-fun b!7378530 () Bool)

(declare-fun e!4416834 () Bool)

(declare-fun tp!2098322 () Bool)

(assert (=> b!7378530 (= e!4416834 tp!2098322)))

(declare-fun res!2976324 () Bool)

(assert (=> start!719902 (=> (not res!2976324) (not e!4416832))))

(declare-fun validRegex!9908 (Regex!19312) Bool)

(assert (=> start!719902 (= res!2976324 (validRegex!9908 r1!2370))))

(assert (=> start!719902 e!4416832))

(assert (=> start!719902 tp_is_empty!48869))

(declare-fun inv!91621 (Context!16504) Bool)

(assert (=> start!719902 (and (inv!91621 cWitness!61) e!4416831)))

(assert (=> start!719902 (and (inv!91621 ct1!282) e!4416834)))

(assert (=> start!719902 e!4416835))

(assert (=> start!719902 (and (inv!91621 ct2!378) e!4416833)))

(declare-fun b!7378523 () Bool)

(declare-fun tp!2098320 () Bool)

(declare-fun tp!2098326 () Bool)

(assert (=> b!7378523 (= e!4416835 (and tp!2098320 tp!2098326))))

(assert (= (and start!719902 res!2976324) b!7378525))

(assert (= (and b!7378525 res!2976323) b!7378527))

(assert (= start!719902 b!7378528))

(assert (= start!719902 b!7378530))

(assert (= (and start!719902 (is-ElementMatch!19312 r1!2370)) b!7378529))

(assert (= (and start!719902 (is-Concat!28157 r1!2370)) b!7378523))

(assert (= (and start!719902 (is-Star!19312 r1!2370)) b!7378522))

(assert (= (and start!719902 (is-Union!19312 r1!2370)) b!7378526))

(assert (= start!719902 b!7378524))

(declare-fun m!8029654 () Bool)

(assert (=> b!7378525 m!8029654))

(declare-fun m!8029656 () Bool)

(assert (=> b!7378525 m!8029656))

(declare-fun m!8029658 () Bool)

(assert (=> b!7378527 m!8029658))

(declare-fun m!8029660 () Bool)

(assert (=> b!7378527 m!8029660))

(declare-fun m!8029662 () Bool)

(assert (=> b!7378527 m!8029662))

(declare-fun m!8029664 () Bool)

(assert (=> start!719902 m!8029664))

(declare-fun m!8029666 () Bool)

(assert (=> start!719902 m!8029666))

(declare-fun m!8029668 () Bool)

(assert (=> start!719902 m!8029668))

(declare-fun m!8029670 () Bool)

(assert (=> start!719902 m!8029670))

(push 1)

(assert (not b!7378525))

(assert (not b!7378523))

(assert (not b!7378528))

(assert (not b!7378524))

(assert (not b!7378530))

(assert (not b!7378522))

(assert (not b!7378526))

(assert (not start!719902))

(assert (not b!7378527))

(assert tp_is_empty!48869)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

