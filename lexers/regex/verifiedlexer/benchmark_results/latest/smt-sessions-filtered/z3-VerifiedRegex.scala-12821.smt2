; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!708182 () Bool)

(assert start!708182)

(declare-fun b!7263700 () Bool)

(assert (=> b!7263700 true))

(declare-fun res!2944956 () Bool)

(declare-fun e!4355874 () Bool)

(assert (=> start!708182 (=> (not res!2944956) (not e!4355874))))

(declare-datatypes ((C!37776 0))(
  ( (C!37777 (val!28836 Int)) )
))
(declare-datatypes ((Regex!18751 0))(
  ( (ElementMatch!18751 (c!1351355 C!37776)) (Concat!27596 (regOne!38014 Regex!18751) (regTwo!38014 Regex!18751)) (EmptyExpr!18751) (Star!18751 (reg!19080 Regex!18751)) (EmptyLang!18751) (Union!18751 (regOne!38015 Regex!18751) (regTwo!38015 Regex!18751)) )
))
(declare-datatypes ((List!70817 0))(
  ( (Nil!70693) (Cons!70693 (h!77141 Regex!18751) (t!384883 List!70817)) )
))
(declare-datatypes ((Context!15382 0))(
  ( (Context!15383 (exprs!8191 List!70817)) )
))
(declare-fun ct2!346 () Context!15382)

(declare-datatypes ((List!70818 0))(
  ( (Nil!70694) (Cons!70694 (h!77142 C!37776) (t!384884 List!70818)) )
))
(declare-fun s!7854 () List!70818)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3655 ((InoxSet Context!15382) List!70818) Bool)

(assert (=> start!708182 (= res!2944956 (matchZipper!3655 (store ((as const (Array Context!15382 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!708182 e!4355874))

(declare-fun e!4355873 () Bool)

(declare-fun inv!89887 (Context!15382) Bool)

(assert (=> start!708182 (and (inv!89887 ct2!346) e!4355873)))

(declare-fun e!4355875 () Bool)

(assert (=> start!708182 e!4355875))

(declare-fun ct1!250 () Context!15382)

(declare-fun e!4355872 () Bool)

(assert (=> start!708182 (and (inv!89887 ct1!250) e!4355872)))

(declare-fun b!7263696 () Bool)

(declare-fun res!2944955 () Bool)

(assert (=> b!7263696 (=> (not res!2944955) (not e!4355874))))

(get-info :version)

(assert (=> b!7263696 (= res!2944955 ((_ is Cons!70694) s!7854))))

(declare-fun b!7263697 () Bool)

(declare-fun tp!2040023 () Bool)

(assert (=> b!7263697 (= e!4355872 tp!2040023)))

(declare-fun b!7263698 () Bool)

(declare-fun res!2944957 () Bool)

(assert (=> b!7263698 (=> (not res!2944957) (not e!4355874))))

(declare-fun nullableContext!241 (Context!15382) Bool)

(assert (=> b!7263698 (= res!2944957 (nullableContext!241 ct1!250))))

(declare-fun b!7263699 () Bool)

(declare-fun tp_is_empty!46967 () Bool)

(declare-fun tp!2040024 () Bool)

(assert (=> b!7263699 (= e!4355875 (and tp_is_empty!46967 tp!2040024))))

(assert (=> b!7263700 (= e!4355874 (not true))))

(declare-datatypes ((Unit!164120 0))(
  ( (Unit!164121) )
))
(declare-fun lt!2591645 () Unit!164120)

(declare-fun lambda!447060 () Int)

(declare-fun lemmaConcatPreservesForall!1508 (List!70817 List!70817 Int) Unit!164120)

(assert (=> b!7263700 (= lt!2591645 (lemmaConcatPreservesForall!1508 (exprs!8191 ct1!250) (exprs!8191 ct2!346) lambda!447060))))

(declare-fun lt!2591649 () Unit!164120)

(assert (=> b!7263700 (= lt!2591649 (lemmaConcatPreservesForall!1508 (exprs!8191 ct1!250) (exprs!8191 ct2!346) lambda!447060))))

(declare-fun lambda!447061 () Int)

(declare-fun lt!2591646 () (InoxSet Context!15382))

(declare-fun flatMap!2864 ((InoxSet Context!15382) Int) (InoxSet Context!15382))

(declare-fun derivationStepZipperUp!2521 (Context!15382 C!37776) (InoxSet Context!15382))

(assert (=> b!7263700 (= (flatMap!2864 lt!2591646 lambda!447061) (derivationStepZipperUp!2521 ct1!250 (h!77142 s!7854)))))

(declare-fun lt!2591644 () Unit!164120)

(declare-fun lemmaFlatMapOnSingletonSet!2264 ((InoxSet Context!15382) Context!15382 Int) Unit!164120)

(assert (=> b!7263700 (= lt!2591644 (lemmaFlatMapOnSingletonSet!2264 lt!2591646 ct1!250 lambda!447061))))

(assert (=> b!7263700 (= lt!2591646 (store ((as const (Array Context!15382 Bool)) false) ct1!250 true))))

(declare-fun lt!2591647 () (InoxSet Context!15382))

(declare-fun ++!16651 (List!70817 List!70817) List!70817)

(assert (=> b!7263700 (= lt!2591647 (derivationStepZipperUp!2521 (Context!15383 (++!16651 (exprs!8191 ct1!250) (exprs!8191 ct2!346))) (h!77142 s!7854)))))

(declare-fun lt!2591648 () Unit!164120)

(assert (=> b!7263700 (= lt!2591648 (lemmaConcatPreservesForall!1508 (exprs!8191 ct1!250) (exprs!8191 ct2!346) lambda!447060))))

(declare-fun b!7263701 () Bool)

(declare-fun tp!2040022 () Bool)

(assert (=> b!7263701 (= e!4355873 tp!2040022)))

(assert (= (and start!708182 res!2944956) b!7263698))

(assert (= (and b!7263698 res!2944957) b!7263696))

(assert (= (and b!7263696 res!2944955) b!7263700))

(assert (= start!708182 b!7263701))

(assert (= (and start!708182 ((_ is Cons!70694) s!7854)) b!7263699))

(assert (= start!708182 b!7263697))

(declare-fun m!7948346 () Bool)

(assert (=> start!708182 m!7948346))

(assert (=> start!708182 m!7948346))

(declare-fun m!7948348 () Bool)

(assert (=> start!708182 m!7948348))

(declare-fun m!7948350 () Bool)

(assert (=> start!708182 m!7948350))

(declare-fun m!7948352 () Bool)

(assert (=> start!708182 m!7948352))

(declare-fun m!7948354 () Bool)

(assert (=> b!7263698 m!7948354))

(declare-fun m!7948356 () Bool)

(assert (=> b!7263700 m!7948356))

(declare-fun m!7948358 () Bool)

(assert (=> b!7263700 m!7948358))

(declare-fun m!7948360 () Bool)

(assert (=> b!7263700 m!7948360))

(declare-fun m!7948362 () Bool)

(assert (=> b!7263700 m!7948362))

(declare-fun m!7948364 () Bool)

(assert (=> b!7263700 m!7948364))

(declare-fun m!7948366 () Bool)

(assert (=> b!7263700 m!7948366))

(assert (=> b!7263700 m!7948358))

(assert (=> b!7263700 m!7948358))

(declare-fun m!7948368 () Bool)

(assert (=> b!7263700 m!7948368))

(check-sat (not b!7263701) (not b!7263698) tp_is_empty!46967 (not b!7263700) (not b!7263699) (not b!7263697) (not start!708182))
(check-sat)
