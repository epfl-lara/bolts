; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717098 () Bool)

(assert start!717098)

(declare-fun b!7342172 () Bool)

(declare-fun e!4396456 () Bool)

(declare-fun e!4396455 () Bool)

(assert (=> b!7342172 (= e!4396456 e!4396455)))

(declare-fun res!2965977 () Bool)

(assert (=> b!7342172 (=> (not res!2965977) (not e!4396455))))

(declare-datatypes ((C!38510 0))(
  ( (C!38511 (val!29615 Int)) )
))
(declare-datatypes ((Regex!19118 0))(
  ( (ElementMatch!19118 (c!1363790 C!38510)) (Concat!27963 (regOne!38748 Regex!19118) (regTwo!38748 Regex!19118)) (EmptyExpr!19118) (Star!19118 (reg!19447 Regex!19118)) (EmptyLang!19118) (Union!19118 (regOne!38749 Regex!19118) (regTwo!38749 Regex!19118)) )
))
(declare-datatypes ((List!71614 0))(
  ( (Nil!71490) (Cons!71490 (h!77938 Regex!19118) (t!386009 List!71614)) )
))
(declare-datatypes ((Context!16116 0))(
  ( (Context!16117 (exprs!8558 List!71614)) )
))
(declare-fun cWitness!61 () Context!16116)

(declare-fun lt!2610312 () (Set Context!16116))

(assert (=> b!7342172 (= res!2965977 (set.member cWitness!61 lt!2610312))))

(declare-fun r1!2370 () Regex!19118)

(declare-fun c!10362 () C!38510)

(declare-fun ct1!282 () Context!16116)

(declare-fun derivationStepZipperDown!2944 (Regex!19118 Context!16116 C!38510) (Set Context!16116))

(assert (=> b!7342172 (= lt!2610312 (derivationStepZipperDown!2944 r1!2370 ct1!282 c!10362))))

(declare-fun b!7342173 () Bool)

(declare-fun e!4396454 () Bool)

(assert (=> b!7342173 (= e!4396455 e!4396454)))

(declare-fun res!2965978 () Bool)

(assert (=> b!7342173 (=> (not res!2965978) (not e!4396454))))

(assert (=> b!7342173 (= res!2965978 (and (or (not (is-ElementMatch!19118 r1!2370)) (not (= c!10362 (c!1363790 r1!2370)))) (is-Union!19118 r1!2370)))))

(declare-fun lt!2610311 () (Set Context!16116))

(declare-fun ct2!378 () Context!16116)

(declare-fun ++!16936 (List!71614 List!71614) List!71614)

(assert (=> b!7342173 (= lt!2610311 (derivationStepZipperDown!2944 r1!2370 (Context!16117 (++!16936 (exprs!8558 ct1!282) (exprs!8558 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165189 0))(
  ( (Unit!165190) )
))
(declare-fun lt!2610310 () Unit!165189)

(declare-fun lambda!455728 () Int)

(declare-fun lemmaConcatPreservesForall!1793 (List!71614 List!71614 Int) Unit!165189)

(assert (=> b!7342173 (= lt!2610310 (lemmaConcatPreservesForall!1793 (exprs!8558 ct1!282) (exprs!8558 ct2!378) lambda!455728))))

(declare-fun b!7342174 () Bool)

(declare-fun e!4396453 () Bool)

(declare-fun tp!2084905 () Bool)

(assert (=> b!7342174 (= e!4396453 tp!2084905)))

(declare-fun b!7342175 () Bool)

(declare-fun tp!2084903 () Bool)

(declare-fun tp!2084909 () Bool)

(assert (=> b!7342175 (= e!4396453 (and tp!2084903 tp!2084909))))

(declare-fun b!7342176 () Bool)

(declare-fun tp!2084904 () Bool)

(declare-fun tp!2084908 () Bool)

(assert (=> b!7342176 (= e!4396453 (and tp!2084904 tp!2084908))))

(declare-fun res!2965976 () Bool)

(assert (=> start!717098 (=> (not res!2965976) (not e!4396456))))

(declare-fun validRegex!9714 (Regex!19118) Bool)

(assert (=> start!717098 (= res!2965976 (validRegex!9714 r1!2370))))

(assert (=> start!717098 e!4396456))

(declare-fun tp_is_empty!48481 () Bool)

(assert (=> start!717098 tp_is_empty!48481))

(declare-fun e!4396451 () Bool)

(declare-fun inv!91136 (Context!16116) Bool)

(assert (=> start!717098 (and (inv!91136 cWitness!61) e!4396451)))

(declare-fun e!4396452 () Bool)

(assert (=> start!717098 (and (inv!91136 ct1!282) e!4396452)))

(assert (=> start!717098 e!4396453))

(declare-fun e!4396457 () Bool)

(assert (=> start!717098 (and (inv!91136 ct2!378) e!4396457)))

(declare-fun b!7342177 () Bool)

(assert (=> b!7342177 (= e!4396453 tp_is_empty!48481)))

(declare-fun b!7342178 () Bool)

(declare-fun tp!2084906 () Bool)

(assert (=> b!7342178 (= e!4396457 tp!2084906)))

(declare-fun b!7342179 () Bool)

(declare-fun tp!2084907 () Bool)

(assert (=> b!7342179 (= e!4396452 tp!2084907)))

(declare-fun b!7342180 () Bool)

(declare-fun tp!2084902 () Bool)

(assert (=> b!7342180 (= e!4396451 tp!2084902)))

(declare-fun b!7342181 () Bool)

(assert (=> b!7342181 (= e!4396454 false)))

(declare-fun b!7342182 () Bool)

(declare-fun res!2965975 () Bool)

(assert (=> b!7342182 (=> (not res!2965975) (not e!4396454))))

(assert (=> b!7342182 (= res!2965975 (= lt!2610312 (set.union (derivationStepZipperDown!2944 (regOne!38749 r1!2370) ct1!282 c!10362) (derivationStepZipperDown!2944 (regTwo!38749 r1!2370) ct1!282 c!10362))))))

(assert (= (and start!717098 res!2965976) b!7342172))

(assert (= (and b!7342172 res!2965977) b!7342173))

(assert (= (and b!7342173 res!2965978) b!7342182))

(assert (= (and b!7342182 res!2965975) b!7342181))

(assert (= start!717098 b!7342180))

(assert (= start!717098 b!7342179))

(assert (= (and start!717098 (is-ElementMatch!19118 r1!2370)) b!7342177))

(assert (= (and start!717098 (is-Concat!27963 r1!2370)) b!7342175))

(assert (= (and start!717098 (is-Star!19118 r1!2370)) b!7342174))

(assert (= (and start!717098 (is-Union!19118 r1!2370)) b!7342176))

(assert (= start!717098 b!7342178))

(declare-fun m!8005590 () Bool)

(assert (=> b!7342172 m!8005590))

(declare-fun m!8005592 () Bool)

(assert (=> b!7342172 m!8005592))

(declare-fun m!8005594 () Bool)

(assert (=> b!7342173 m!8005594))

(declare-fun m!8005596 () Bool)

(assert (=> b!7342173 m!8005596))

(declare-fun m!8005598 () Bool)

(assert (=> b!7342173 m!8005598))

(declare-fun m!8005600 () Bool)

(assert (=> start!717098 m!8005600))

(declare-fun m!8005602 () Bool)

(assert (=> start!717098 m!8005602))

(declare-fun m!8005604 () Bool)

(assert (=> start!717098 m!8005604))

(declare-fun m!8005606 () Bool)

(assert (=> start!717098 m!8005606))

(declare-fun m!8005608 () Bool)

(assert (=> b!7342182 m!8005608))

(declare-fun m!8005610 () Bool)

(assert (=> b!7342182 m!8005610))

(push 1)

(assert (not b!7342179))

(assert (not b!7342174))

(assert (not b!7342180))

(assert (not b!7342172))

(assert (not b!7342176))

(assert (not b!7342173))

(assert tp_is_empty!48481)

(assert (not b!7342182))

(assert (not b!7342178))

(assert (not start!717098))

(assert (not b!7342175))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

