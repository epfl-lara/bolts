; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!708266 () Bool)

(assert start!708266)

(declare-fun b!7264068 () Bool)

(assert (=> b!7264068 true))

(declare-fun b!7264061 () Bool)

(declare-fun res!2945101 () Bool)

(declare-fun e!4356096 () Bool)

(assert (=> b!7264061 (=> (not res!2945101) (not e!4356096))))

(declare-datatypes ((C!37788 0))(
  ( (C!37789 (val!28842 Int)) )
))
(declare-datatypes ((List!70829 0))(
  ( (Nil!70705) (Cons!70705 (h!77153 C!37788) (t!384895 List!70829)) )
))
(declare-fun s!7854 () List!70829)

(get-info :version)

(assert (=> b!7264061 (= res!2945101 ((_ is Cons!70705) s!7854))))

(declare-fun b!7264062 () Bool)

(declare-fun e!4356097 () Bool)

(declare-fun tp_is_empty!46979 () Bool)

(declare-fun tp!2040121 () Bool)

(assert (=> b!7264062 (= e!4356097 (and tp_is_empty!46979 tp!2040121))))

(declare-fun b!7264063 () Bool)

(declare-fun e!4356098 () Bool)

(declare-fun tp!2040120 () Bool)

(assert (=> b!7264063 (= e!4356098 tp!2040120)))

(declare-fun b!7264064 () Bool)

(declare-fun e!4356095 () Bool)

(declare-datatypes ((Regex!18757 0))(
  ( (ElementMatch!18757 (c!1351445 C!37788)) (Concat!27602 (regOne!38026 Regex!18757) (regTwo!38026 Regex!18757)) (EmptyExpr!18757) (Star!18757 (reg!19086 Regex!18757)) (EmptyLang!18757) (Union!18757 (regOne!38027 Regex!18757) (regTwo!38027 Regex!18757)) )
))
(declare-datatypes ((List!70830 0))(
  ( (Nil!70706) (Cons!70706 (h!77154 Regex!18757) (t!384896 List!70830)) )
))
(declare-datatypes ((Context!15394 0))(
  ( (Context!15395 (exprs!8197 List!70830)) )
))
(declare-fun ct1!250 () Context!15394)

(assert (=> b!7264064 (= e!4356095 (not (= (exprs!8197 ct1!250) Nil!70706)))))

(declare-fun b!7264065 () Bool)

(declare-fun res!2945102 () Bool)

(assert (=> b!7264065 (=> res!2945102 e!4356095)))

(assert (=> b!7264065 (= res!2945102 (not ((_ is Cons!70706) (exprs!8197 ct1!250))))))

(declare-fun b!7264066 () Bool)

(declare-fun res!2945099 () Bool)

(assert (=> b!7264066 (=> (not res!2945099) (not e!4356096))))

(declare-fun nullableContext!247 (Context!15394) Bool)

(assert (=> b!7264066 (= res!2945099 (nullableContext!247 ct1!250))))

(declare-fun b!7264067 () Bool)

(declare-fun res!2945100 () Bool)

(assert (=> b!7264067 (=> res!2945100 e!4356095)))

(declare-fun isEmpty!40637 (List!70830) Bool)

(assert (=> b!7264067 (= res!2945100 (isEmpty!40637 (exprs!8197 ct1!250)))))

(declare-fun res!2945098 () Bool)

(assert (=> start!708266 (=> (not res!2945098) (not e!4356096))))

(declare-fun ct2!346 () Context!15394)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3661 ((InoxSet Context!15394) List!70829) Bool)

(assert (=> start!708266 (= res!2945098 (matchZipper!3661 (store ((as const (Array Context!15394 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!708266 e!4356096))

(declare-fun e!4356099 () Bool)

(declare-fun inv!89902 (Context!15394) Bool)

(assert (=> start!708266 (and (inv!89902 ct2!346) e!4356099)))

(assert (=> start!708266 e!4356097))

(assert (=> start!708266 (and (inv!89902 ct1!250) e!4356098)))

(assert (=> b!7264068 (= e!4356096 (not e!4356095))))

(declare-fun res!2945103 () Bool)

(assert (=> b!7264068 (=> res!2945103 e!4356095)))

(declare-fun lt!2591856 () (InoxSet Context!15394))

(declare-fun lt!2591852 () (InoxSet Context!15394))

(declare-fun derivationStepZipper!3497 ((InoxSet Context!15394) C!37788) (InoxSet Context!15394))

(assert (=> b!7264068 (= res!2945103 (not (= lt!2591852 (derivationStepZipper!3497 lt!2591856 (h!77153 s!7854)))))))

(declare-fun lambda!447172 () Int)

(declare-datatypes ((Unit!164132 0))(
  ( (Unit!164133) )
))
(declare-fun lt!2591851 () Unit!164132)

(declare-fun lemmaConcatPreservesForall!1514 (List!70830 List!70830 Int) Unit!164132)

(assert (=> b!7264068 (= lt!2591851 (lemmaConcatPreservesForall!1514 (exprs!8197 ct1!250) (exprs!8197 ct2!346) lambda!447172))))

(declare-fun lambda!447173 () Int)

(declare-fun lt!2591853 () Context!15394)

(declare-fun flatMap!2870 ((InoxSet Context!15394) Int) (InoxSet Context!15394))

(declare-fun derivationStepZipperUp!2527 (Context!15394 C!37788) (InoxSet Context!15394))

(assert (=> b!7264068 (= (flatMap!2870 lt!2591856 lambda!447173) (derivationStepZipperUp!2527 lt!2591853 (h!77153 s!7854)))))

(declare-fun lt!2591854 () Unit!164132)

(declare-fun lemmaFlatMapOnSingletonSet!2270 ((InoxSet Context!15394) Context!15394 Int) Unit!164132)

(assert (=> b!7264068 (= lt!2591854 (lemmaFlatMapOnSingletonSet!2270 lt!2591856 lt!2591853 lambda!447173))))

(assert (=> b!7264068 (= lt!2591856 (store ((as const (Array Context!15394 Bool)) false) lt!2591853 true))))

(declare-fun lt!2591855 () Unit!164132)

(assert (=> b!7264068 (= lt!2591855 (lemmaConcatPreservesForall!1514 (exprs!8197 ct1!250) (exprs!8197 ct2!346) lambda!447172))))

(declare-fun lt!2591857 () Unit!164132)

(assert (=> b!7264068 (= lt!2591857 (lemmaConcatPreservesForall!1514 (exprs!8197 ct1!250) (exprs!8197 ct2!346) lambda!447172))))

(declare-fun lt!2591850 () (InoxSet Context!15394))

(assert (=> b!7264068 (= (flatMap!2870 lt!2591850 lambda!447173) (derivationStepZipperUp!2527 ct1!250 (h!77153 s!7854)))))

(declare-fun lt!2591849 () Unit!164132)

(assert (=> b!7264068 (= lt!2591849 (lemmaFlatMapOnSingletonSet!2270 lt!2591850 ct1!250 lambda!447173))))

(assert (=> b!7264068 (= lt!2591850 (store ((as const (Array Context!15394 Bool)) false) ct1!250 true))))

(assert (=> b!7264068 (= lt!2591852 (derivationStepZipperUp!2527 lt!2591853 (h!77153 s!7854)))))

(declare-fun ++!16657 (List!70830 List!70830) List!70830)

(assert (=> b!7264068 (= lt!2591853 (Context!15395 (++!16657 (exprs!8197 ct1!250) (exprs!8197 ct2!346))))))

(declare-fun lt!2591848 () Unit!164132)

(assert (=> b!7264068 (= lt!2591848 (lemmaConcatPreservesForall!1514 (exprs!8197 ct1!250) (exprs!8197 ct2!346) lambda!447172))))

(declare-fun b!7264069 () Bool)

(declare-fun tp!2040122 () Bool)

(assert (=> b!7264069 (= e!4356099 tp!2040122)))

(assert (= (and start!708266 res!2945098) b!7264066))

(assert (= (and b!7264066 res!2945099) b!7264061))

(assert (= (and b!7264061 res!2945101) b!7264068))

(assert (= (and b!7264068 (not res!2945103)) b!7264065))

(assert (= (and b!7264065 (not res!2945102)) b!7264067))

(assert (= (and b!7264067 (not res!2945100)) b!7264064))

(assert (= start!708266 b!7264069))

(assert (= (and start!708266 ((_ is Cons!70705) s!7854)) b!7264062))

(assert (= start!708266 b!7264063))

(declare-fun m!7948812 () Bool)

(assert (=> b!7264066 m!7948812))

(declare-fun m!7948814 () Bool)

(assert (=> b!7264067 m!7948814))

(declare-fun m!7948816 () Bool)

(assert (=> start!708266 m!7948816))

(assert (=> start!708266 m!7948816))

(declare-fun m!7948818 () Bool)

(assert (=> start!708266 m!7948818))

(declare-fun m!7948820 () Bool)

(assert (=> start!708266 m!7948820))

(declare-fun m!7948822 () Bool)

(assert (=> start!708266 m!7948822))

(declare-fun m!7948824 () Bool)

(assert (=> b!7264068 m!7948824))

(declare-fun m!7948826 () Bool)

(assert (=> b!7264068 m!7948826))

(declare-fun m!7948828 () Bool)

(assert (=> b!7264068 m!7948828))

(declare-fun m!7948830 () Bool)

(assert (=> b!7264068 m!7948830))

(declare-fun m!7948832 () Bool)

(assert (=> b!7264068 m!7948832))

(declare-fun m!7948834 () Bool)

(assert (=> b!7264068 m!7948834))

(assert (=> b!7264068 m!7948826))

(declare-fun m!7948836 () Bool)

(assert (=> b!7264068 m!7948836))

(declare-fun m!7948838 () Bool)

(assert (=> b!7264068 m!7948838))

(assert (=> b!7264068 m!7948826))

(declare-fun m!7948840 () Bool)

(assert (=> b!7264068 m!7948840))

(declare-fun m!7948842 () Bool)

(assert (=> b!7264068 m!7948842))

(assert (=> b!7264068 m!7948826))

(declare-fun m!7948844 () Bool)

(assert (=> b!7264068 m!7948844))

(check-sat (not b!7264066) (not b!7264069) (not b!7264067) (not b!7264062) (not start!708266) (not b!7264068) tp_is_empty!46979 (not b!7264063))
(check-sat)
