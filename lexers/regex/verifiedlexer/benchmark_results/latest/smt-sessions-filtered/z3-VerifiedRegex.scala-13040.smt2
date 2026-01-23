; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714562 () Bool)

(assert start!714562)

(declare-fun res!2959912 () Bool)

(declare-fun e!4384467 () Bool)

(assert (=> start!714562 (=> (not res!2959912) (not e!4384467))))

(declare-datatypes ((C!38212 0))(
  ( (C!38213 (val!29466 Int)) )
))
(declare-fun c!10305 () C!38212)

(declare-datatypes ((Regex!18969 0))(
  ( (ElementMatch!18969 (c!1358934 C!38212)) (Concat!27814 (regOne!38450 Regex!18969) (regTwo!38450 Regex!18969)) (EmptyExpr!18969) (Star!18969 (reg!19298 Regex!18969)) (EmptyLang!18969) (Union!18969 (regOne!38451 Regex!18969) (regTwo!38451 Regex!18969)) )
))
(declare-datatypes ((List!71465 0))(
  ( (Nil!71341) (Cons!71341 (h!77789 Regex!18969) (t!385848 List!71465)) )
))
(declare-datatypes ((Context!15818 0))(
  ( (Context!15819 (exprs!8409 List!71465)) )
))
(declare-fun cWitness!35 () Context!15818)

(declare-fun ct1!256 () Context!15818)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperUp!2649 (Context!15818 C!38212) (InoxSet Context!15818))

(assert (=> start!714562 (= res!2959912 (select (derivationStepZipperUp!2649 ct1!256 c!10305) cWitness!35))))

(assert (=> start!714562 e!4384467))

(declare-fun e!4384465 () Bool)

(declare-fun inv!90762 (Context!15818) Bool)

(assert (=> start!714562 (and (inv!90762 cWitness!35) e!4384465)))

(declare-fun e!4384468 () Bool)

(assert (=> start!714562 (and (inv!90762 ct1!256) e!4384468)))

(declare-fun tp_is_empty!48183 () Bool)

(assert (=> start!714562 tp_is_empty!48183))

(declare-fun ct2!352 () Context!15818)

(declare-fun e!4384469 () Bool)

(assert (=> start!714562 (and (inv!90762 ct2!352) e!4384469)))

(declare-fun b!7322687 () Bool)

(declare-fun tp!2079979 () Bool)

(assert (=> b!7322687 (= e!4384465 tp!2079979)))

(declare-fun b!7322688 () Bool)

(declare-fun e!4384464 () Bool)

(declare-fun e!4384466 () Bool)

(assert (=> b!7322688 (= e!4384464 e!4384466)))

(declare-fun res!2959914 () Bool)

(assert (=> b!7322688 (=> (not res!2959914) (not e!4384466))))

(declare-fun nullable!8073 (Regex!18969) Bool)

(assert (=> b!7322688 (= res!2959914 (nullable!8073 (h!77789 (exprs!8409 ct1!256))))))

(declare-fun lt!2604916 () Context!15818)

(declare-fun lt!2604914 () (InoxSet Context!15818))

(declare-fun derivationStepZipperDown!2800 (Regex!18969 Context!15818 C!38212) (InoxSet Context!15818))

(assert (=> b!7322688 (= lt!2604914 (derivationStepZipperDown!2800 (h!77789 (exprs!8409 ct1!256)) lt!2604916 c!10305))))

(declare-fun tail!14658 (List!71465) List!71465)

(assert (=> b!7322688 (= lt!2604916 (Context!15819 (tail!14658 (exprs!8409 ct1!256))))))

(declare-fun b!7322689 () Bool)

(declare-fun res!2959913 () Bool)

(assert (=> b!7322689 (=> (not res!2959913) (not e!4384464))))

(declare-fun isEmpty!40887 (List!71465) Bool)

(assert (=> b!7322689 (= res!2959913 (not (isEmpty!40887 (exprs!8409 ct1!256))))))

(declare-fun b!7322690 () Bool)

(assert (=> b!7322690 (= e!4384467 e!4384464)))

(declare-fun res!2959911 () Bool)

(assert (=> b!7322690 (=> (not res!2959911) (not e!4384464))))

(get-info :version)

(assert (=> b!7322690 (= res!2959911 ((_ is Cons!71341) (exprs!8409 ct1!256)))))

(declare-fun lt!2604912 () List!71465)

(declare-fun ++!16793 (List!71465 List!71465) List!71465)

(assert (=> b!7322690 (= lt!2604912 (++!16793 (exprs!8409 ct1!256) (exprs!8409 ct2!352)))))

(declare-datatypes ((Unit!164903 0))(
  ( (Unit!164904) )
))
(declare-fun lt!2604913 () Unit!164903)

(declare-fun lambda!453616 () Int)

(declare-fun lemmaConcatPreservesForall!1650 (List!71465 List!71465 Int) Unit!164903)

(assert (=> b!7322690 (= lt!2604913 (lemmaConcatPreservesForall!1650 (exprs!8409 ct1!256) (exprs!8409 ct2!352) lambda!453616))))

(declare-fun b!7322691 () Bool)

(assert (=> b!7322691 (= e!4384466 false)))

(declare-fun lt!2604915 () (InoxSet Context!15818))

(assert (=> b!7322691 (= lt!2604915 (derivationStepZipperUp!2649 lt!2604916 c!10305))))

(declare-fun b!7322692 () Bool)

(declare-fun tp!2079978 () Bool)

(assert (=> b!7322692 (= e!4384469 tp!2079978)))

(declare-fun b!7322693 () Bool)

(declare-fun tp!2079977 () Bool)

(assert (=> b!7322693 (= e!4384468 tp!2079977)))

(assert (= (and start!714562 res!2959912) b!7322690))

(assert (= (and b!7322690 res!2959911) b!7322689))

(assert (= (and b!7322689 res!2959913) b!7322688))

(assert (= (and b!7322688 res!2959914) b!7322691))

(assert (= start!714562 b!7322687))

(assert (= start!714562 b!7322693))

(assert (= start!714562 b!7322692))

(declare-fun m!7988100 () Bool)

(assert (=> b!7322689 m!7988100))

(declare-fun m!7988102 () Bool)

(assert (=> b!7322688 m!7988102))

(declare-fun m!7988104 () Bool)

(assert (=> b!7322688 m!7988104))

(declare-fun m!7988106 () Bool)

(assert (=> b!7322688 m!7988106))

(declare-fun m!7988108 () Bool)

(assert (=> b!7322690 m!7988108))

(declare-fun m!7988110 () Bool)

(assert (=> b!7322690 m!7988110))

(declare-fun m!7988112 () Bool)

(assert (=> b!7322691 m!7988112))

(declare-fun m!7988114 () Bool)

(assert (=> start!714562 m!7988114))

(declare-fun m!7988116 () Bool)

(assert (=> start!714562 m!7988116))

(declare-fun m!7988118 () Bool)

(assert (=> start!714562 m!7988118))

(declare-fun m!7988120 () Bool)

(assert (=> start!714562 m!7988120))

(declare-fun m!7988122 () Bool)

(assert (=> start!714562 m!7988122))

(check-sat (not b!7322690) (not b!7322689) (not b!7322693) (not b!7322691) (not b!7322687) tp_is_empty!48183 (not b!7322692) (not b!7322688) (not start!714562))
(check-sat)
