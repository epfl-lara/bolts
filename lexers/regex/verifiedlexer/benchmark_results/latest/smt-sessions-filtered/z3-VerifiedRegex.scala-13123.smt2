; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!717324 () Bool)

(assert start!717324)

(declare-fun b!7345051 () Bool)

(declare-fun e!4398108 () Bool)

(assert (=> b!7345051 (= e!4398108 false)))

(declare-datatypes ((C!38544 0))(
  ( (C!38545 (val!29632 Int)) )
))
(declare-fun c!10362 () C!38544)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19135 0))(
  ( (ElementMatch!19135 (c!1364425 C!38544)) (Concat!27980 (regOne!38782 Regex!19135) (regTwo!38782 Regex!19135)) (EmptyExpr!19135) (Star!19135 (reg!19464 Regex!19135)) (EmptyLang!19135) (Union!19135 (regOne!38783 Regex!19135) (regTwo!38783 Regex!19135)) )
))
(declare-datatypes ((List!71631 0))(
  ( (Nil!71507) (Cons!71507 (h!77955 Regex!19135) (t!386026 List!71631)) )
))
(declare-datatypes ((Context!16150 0))(
  ( (Context!16151 (exprs!8575 List!71631)) )
))
(declare-fun lt!2610909 () (InoxSet Context!16150))

(declare-fun ct1!282 () Context!16150)

(declare-fun r1!2370 () Regex!19135)

(declare-fun ct2!378 () Context!16150)

(declare-fun derivationStepZipperDown!2961 (Regex!19135 Context!16150 C!38544) (InoxSet Context!16150))

(declare-fun ++!16953 (List!71631 List!71631) List!71631)

(assert (=> b!7345051 (= lt!2610909 (derivationStepZipperDown!2961 r1!2370 (Context!16151 (++!16953 (exprs!8575 ct1!282) (exprs!8575 ct2!378))) c!10362))))

(declare-fun lambda!456005 () Int)

(declare-datatypes ((Unit!165223 0))(
  ( (Unit!165224) )
))
(declare-fun lt!2610908 () Unit!165223)

(declare-fun lemmaConcatPreservesForall!1810 (List!71631 List!71631 Int) Unit!165223)

(assert (=> b!7345051 (= lt!2610908 (lemmaConcatPreservesForall!1810 (exprs!8575 ct1!282) (exprs!8575 ct2!378) lambda!456005))))

(declare-fun b!7345052 () Bool)

(declare-fun e!4398105 () Bool)

(declare-fun tp!2085942 () Bool)

(declare-fun tp!2085943 () Bool)

(assert (=> b!7345052 (= e!4398105 (and tp!2085942 tp!2085943))))

(declare-fun b!7345053 () Bool)

(declare-fun tp!2085947 () Bool)

(assert (=> b!7345053 (= e!4398105 tp!2085947)))

(declare-fun res!2966767 () Bool)

(assert (=> start!717324 (=> (not res!2966767) (not e!4398108))))

(declare-fun validRegex!9731 (Regex!19135) Bool)

(assert (=> start!717324 (= res!2966767 (validRegex!9731 r1!2370))))

(assert (=> start!717324 e!4398108))

(declare-fun tp_is_empty!48515 () Bool)

(assert (=> start!717324 tp_is_empty!48515))

(declare-fun cWitness!61 () Context!16150)

(declare-fun e!4398104 () Bool)

(declare-fun inv!91177 (Context!16150) Bool)

(assert (=> start!717324 (and (inv!91177 cWitness!61) e!4398104)))

(declare-fun e!4398107 () Bool)

(assert (=> start!717324 (and (inv!91177 ct1!282) e!4398107)))

(assert (=> start!717324 e!4398105))

(declare-fun e!4398106 () Bool)

(assert (=> start!717324 (and (inv!91177 ct2!378) e!4398106)))

(declare-fun b!7345054 () Bool)

(declare-fun tp!2085946 () Bool)

(declare-fun tp!2085944 () Bool)

(assert (=> b!7345054 (= e!4398105 (and tp!2085946 tp!2085944))))

(declare-fun b!7345055 () Bool)

(declare-fun res!2966768 () Bool)

(assert (=> b!7345055 (=> (not res!2966768) (not e!4398108))))

(assert (=> b!7345055 (= res!2966768 (select (derivationStepZipperDown!2961 r1!2370 ct1!282 c!10362) cWitness!61))))

(declare-fun b!7345056 () Bool)

(declare-fun tp!2085940 () Bool)

(assert (=> b!7345056 (= e!4398104 tp!2085940)))

(declare-fun b!7345057 () Bool)

(declare-fun tp!2085945 () Bool)

(assert (=> b!7345057 (= e!4398106 tp!2085945)))

(declare-fun b!7345058 () Bool)

(assert (=> b!7345058 (= e!4398105 tp_is_empty!48515)))

(declare-fun b!7345059 () Bool)

(declare-fun tp!2085941 () Bool)

(assert (=> b!7345059 (= e!4398107 tp!2085941)))

(assert (= (and start!717324 res!2966767) b!7345055))

(assert (= (and b!7345055 res!2966768) b!7345051))

(assert (= start!717324 b!7345056))

(assert (= start!717324 b!7345059))

(get-info :version)

(assert (= (and start!717324 ((_ is ElementMatch!19135) r1!2370)) b!7345058))

(assert (= (and start!717324 ((_ is Concat!27980) r1!2370)) b!7345054))

(assert (= (and start!717324 ((_ is Star!19135) r1!2370)) b!7345053))

(assert (= (and start!717324 ((_ is Union!19135) r1!2370)) b!7345052))

(assert (= start!717324 b!7345057))

(declare-fun m!8007568 () Bool)

(assert (=> b!7345051 m!8007568))

(declare-fun m!8007570 () Bool)

(assert (=> b!7345051 m!8007570))

(declare-fun m!8007572 () Bool)

(assert (=> b!7345051 m!8007572))

(declare-fun m!8007574 () Bool)

(assert (=> start!717324 m!8007574))

(declare-fun m!8007576 () Bool)

(assert (=> start!717324 m!8007576))

(declare-fun m!8007578 () Bool)

(assert (=> start!717324 m!8007578))

(declare-fun m!8007580 () Bool)

(assert (=> start!717324 m!8007580))

(declare-fun m!8007582 () Bool)

(assert (=> b!7345055 m!8007582))

(declare-fun m!8007584 () Bool)

(assert (=> b!7345055 m!8007584))

(check-sat tp_is_empty!48515 (not b!7345056) (not b!7345055) (not b!7345052) (not b!7345059) (not b!7345051) (not b!7345054) (not b!7345053) (not start!717324) (not b!7345057))
(check-sat)
