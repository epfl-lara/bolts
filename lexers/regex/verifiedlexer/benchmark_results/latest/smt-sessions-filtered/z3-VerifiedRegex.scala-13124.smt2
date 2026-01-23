; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!717328 () Bool)

(assert start!717328)

(declare-fun b!7345125 () Bool)

(declare-fun e!4398149 () Bool)

(declare-fun tp!2085993 () Bool)

(assert (=> b!7345125 (= e!4398149 tp!2085993)))

(declare-fun b!7345126 () Bool)

(declare-fun e!4398147 () Bool)

(declare-fun tp!2085995 () Bool)

(assert (=> b!7345126 (= e!4398147 tp!2085995)))

(declare-fun b!7345127 () Bool)

(declare-fun e!4398150 () Bool)

(declare-fun tp!2085988 () Bool)

(declare-fun tp!2085990 () Bool)

(assert (=> b!7345127 (= e!4398150 (and tp!2085988 tp!2085990))))

(declare-fun b!7345128 () Bool)

(declare-fun res!2966800 () Bool)

(declare-fun e!4398145 () Bool)

(assert (=> b!7345128 (=> (not res!2966800) (not e!4398145))))

(declare-datatypes ((C!38548 0))(
  ( (C!38549 (val!29634 Int)) )
))
(declare-datatypes ((Regex!19137 0))(
  ( (ElementMatch!19137 (c!1364427 C!38548)) (Concat!27982 (regOne!38786 Regex!19137) (regTwo!38786 Regex!19137)) (EmptyExpr!19137) (Star!19137 (reg!19466 Regex!19137)) (EmptyLang!19137) (Union!19137 (regOne!38787 Regex!19137) (regTwo!38787 Regex!19137)) )
))
(declare-fun r1!2370 () Regex!19137)

(declare-fun validRegex!9733 (Regex!19137) Bool)

(assert (=> b!7345128 (= res!2966800 (validRegex!9733 (regTwo!38786 r1!2370)))))

(declare-fun res!2966802 () Bool)

(declare-fun e!4398144 () Bool)

(assert (=> start!717328 (=> (not res!2966802) (not e!4398144))))

(assert (=> start!717328 (= res!2966802 (validRegex!9733 r1!2370))))

(assert (=> start!717328 e!4398144))

(declare-fun tp_is_empty!48519 () Bool)

(assert (=> start!717328 tp_is_empty!48519))

(declare-datatypes ((List!71633 0))(
  ( (Nil!71509) (Cons!71509 (h!77957 Regex!19137) (t!386028 List!71633)) )
))
(declare-datatypes ((Context!16154 0))(
  ( (Context!16155 (exprs!8577 List!71633)) )
))
(declare-fun cWitness!61 () Context!16154)

(declare-fun e!4398146 () Bool)

(declare-fun inv!91182 (Context!16154) Bool)

(assert (=> start!717328 (and (inv!91182 cWitness!61) e!4398146)))

(declare-fun ct1!282 () Context!16154)

(assert (=> start!717328 (and (inv!91182 ct1!282) e!4398147)))

(assert (=> start!717328 e!4398150))

(declare-fun ct2!378 () Context!16154)

(assert (=> start!717328 (and (inv!91182 ct2!378) e!4398149)))

(declare-fun b!7345129 () Bool)

(declare-fun res!2966799 () Bool)

(assert (=> b!7345129 (=> (not res!2966799) (not e!4398145))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2610926 () (InoxSet Context!16154))

(declare-fun c!10362 () C!38548)

(declare-fun derivationStepZipperDown!2963 (Regex!19137 Context!16154 C!38548) (InoxSet Context!16154))

(declare-fun $colon$colon!3135 (List!71633 Regex!19137) List!71633)

(assert (=> b!7345129 (= res!2966799 (= lt!2610926 ((_ map or) (derivationStepZipperDown!2963 (regOne!38786 r1!2370) (Context!16155 ($colon$colon!3135 (exprs!8577 ct1!282) (regTwo!38786 r1!2370))) c!10362) (derivationStepZipperDown!2963 (regTwo!38786 r1!2370) ct1!282 c!10362))))))

(declare-fun b!7345130 () Bool)

(declare-fun e!4398148 () Bool)

(assert (=> b!7345130 (= e!4398148 e!4398145)))

(declare-fun res!2966801 () Bool)

(assert (=> b!7345130 (=> (not res!2966801) (not e!4398145))))

(get-info :version)

(assert (=> b!7345130 (= res!2966801 (and (or (not ((_ is ElementMatch!19137) r1!2370)) (not (= c!10362 (c!1364427 r1!2370)))) (not ((_ is Union!19137) r1!2370)) ((_ is Concat!27982) r1!2370)))))

(declare-fun lt!2610927 () (InoxSet Context!16154))

(declare-fun ++!16955 (List!71633 List!71633) List!71633)

(assert (=> b!7345130 (= lt!2610927 (derivationStepZipperDown!2963 r1!2370 (Context!16155 (++!16955 (exprs!8577 ct1!282) (exprs!8577 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165227 0))(
  ( (Unit!165228) )
))
(declare-fun lt!2610925 () Unit!165227)

(declare-fun lambda!456011 () Int)

(declare-fun lemmaConcatPreservesForall!1812 (List!71633 List!71633 Int) Unit!165227)

(assert (=> b!7345130 (= lt!2610925 (lemmaConcatPreservesForall!1812 (exprs!8577 ct1!282) (exprs!8577 ct2!378) lambda!456011))))

(declare-fun b!7345131 () Bool)

(declare-fun tp!2085994 () Bool)

(assert (=> b!7345131 (= e!4398146 tp!2085994)))

(declare-fun b!7345132 () Bool)

(assert (=> b!7345132 (= e!4398150 tp_is_empty!48519)))

(declare-fun b!7345133 () Bool)

(declare-fun tp!2085989 () Bool)

(declare-fun tp!2085991 () Bool)

(assert (=> b!7345133 (= e!4398150 (and tp!2085989 tp!2085991))))

(declare-fun b!7345134 () Bool)

(assert (=> b!7345134 (= e!4398145 false)))

(declare-fun b!7345135 () Bool)

(assert (=> b!7345135 (= e!4398144 e!4398148)))

(declare-fun res!2966804 () Bool)

(assert (=> b!7345135 (=> (not res!2966804) (not e!4398148))))

(assert (=> b!7345135 (= res!2966804 (select lt!2610926 cWitness!61))))

(assert (=> b!7345135 (= lt!2610926 (derivationStepZipperDown!2963 r1!2370 ct1!282 c!10362))))

(declare-fun b!7345136 () Bool)

(declare-fun res!2966803 () Bool)

(assert (=> b!7345136 (=> (not res!2966803) (not e!4398145))))

(declare-fun nullable!8228 (Regex!19137) Bool)

(assert (=> b!7345136 (= res!2966803 (nullable!8228 (regOne!38786 r1!2370)))))

(declare-fun b!7345137 () Bool)

(declare-fun tp!2085992 () Bool)

(assert (=> b!7345137 (= e!4398150 tp!2085992)))

(assert (= (and start!717328 res!2966802) b!7345135))

(assert (= (and b!7345135 res!2966804) b!7345130))

(assert (= (and b!7345130 res!2966801) b!7345136))

(assert (= (and b!7345136 res!2966803) b!7345128))

(assert (= (and b!7345128 res!2966800) b!7345129))

(assert (= (and b!7345129 res!2966799) b!7345134))

(assert (= start!717328 b!7345131))

(assert (= start!717328 b!7345126))

(assert (= (and start!717328 ((_ is ElementMatch!19137) r1!2370)) b!7345132))

(assert (= (and start!717328 ((_ is Concat!27982) r1!2370)) b!7345127))

(assert (= (and start!717328 ((_ is Star!19137) r1!2370)) b!7345137))

(assert (= (and start!717328 ((_ is Union!19137) r1!2370)) b!7345133))

(assert (= start!717328 b!7345125))

(declare-fun m!8007614 () Bool)

(assert (=> b!7345129 m!8007614))

(declare-fun m!8007616 () Bool)

(assert (=> b!7345129 m!8007616))

(declare-fun m!8007618 () Bool)

(assert (=> b!7345129 m!8007618))

(declare-fun m!8007620 () Bool)

(assert (=> b!7345128 m!8007620))

(declare-fun m!8007622 () Bool)

(assert (=> b!7345136 m!8007622))

(declare-fun m!8007624 () Bool)

(assert (=> start!717328 m!8007624))

(declare-fun m!8007626 () Bool)

(assert (=> start!717328 m!8007626))

(declare-fun m!8007628 () Bool)

(assert (=> start!717328 m!8007628))

(declare-fun m!8007630 () Bool)

(assert (=> start!717328 m!8007630))

(declare-fun m!8007632 () Bool)

(assert (=> b!7345130 m!8007632))

(declare-fun m!8007634 () Bool)

(assert (=> b!7345130 m!8007634))

(declare-fun m!8007636 () Bool)

(assert (=> b!7345130 m!8007636))

(declare-fun m!8007638 () Bool)

(assert (=> b!7345135 m!8007638))

(declare-fun m!8007640 () Bool)

(assert (=> b!7345135 m!8007640))

(check-sat (not b!7345129) (not b!7345128) (not b!7345135) (not start!717328) tp_is_empty!48519 (not b!7345137) (not b!7345125) (not b!7345130) (not b!7345127) (not b!7345126) (not b!7345131) (not b!7345133) (not b!7345136))
(check-sat)
