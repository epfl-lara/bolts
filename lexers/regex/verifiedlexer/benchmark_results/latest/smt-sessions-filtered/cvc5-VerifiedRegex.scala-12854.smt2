; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710104 () Bool)

(assert start!710104)

(declare-fun b!7273628 () Bool)

(assert (=> b!7273628 true))

(declare-fun b!7273624 () Bool)

(declare-fun res!2948458 () Bool)

(declare-fun e!4361729 () Bool)

(assert (=> b!7273624 (=> (not res!2948458) (not e!4361729))))

(declare-datatypes ((C!37906 0))(
  ( (C!37907 (val!28901 Int)) )
))
(declare-datatypes ((List!70947 0))(
  ( (Nil!70823) (Cons!70823 (h!77271 C!37906) (t!385019 List!70947)) )
))
(declare-fun s!7854 () List!70947)

(assert (=> b!7273624 (= res!2948458 (is-Cons!70823 s!7854))))

(declare-fun res!2948460 () Bool)

(assert (=> start!710104 (=> (not res!2948460) (not e!4361729))))

(declare-datatypes ((Regex!18816 0))(
  ( (ElementMatch!18816 (c!1354304 C!37906)) (Concat!27661 (regOne!38144 Regex!18816) (regTwo!38144 Regex!18816)) (EmptyExpr!18816) (Star!18816 (reg!19145 Regex!18816)) (EmptyLang!18816) (Union!18816 (regOne!38145 Regex!18816) (regTwo!38145 Regex!18816)) )
))
(declare-datatypes ((List!70948 0))(
  ( (Nil!70824) (Cons!70824 (h!77272 Regex!18816) (t!385020 List!70948)) )
))
(declare-datatypes ((Context!15512 0))(
  ( (Context!15513 (exprs!8256 List!70948)) )
))
(declare-fun ct2!346 () Context!15512)

(declare-fun matchZipper!3720 ((Set Context!15512) List!70947) Bool)

(assert (=> start!710104 (= res!2948460 (matchZipper!3720 (set.insert ct2!346 (as set.empty (Set Context!15512))) s!7854))))

(assert (=> start!710104 e!4361729))

(declare-fun e!4361726 () Bool)

(declare-fun inv!90051 (Context!15512) Bool)

(assert (=> start!710104 (and (inv!90051 ct2!346) e!4361726)))

(declare-fun e!4361727 () Bool)

(assert (=> start!710104 e!4361727))

(declare-fun ct1!250 () Context!15512)

(declare-fun e!4361728 () Bool)

(assert (=> start!710104 (and (inv!90051 ct1!250) e!4361728)))

(declare-fun b!7273625 () Bool)

(declare-fun tp_is_empty!47097 () Bool)

(declare-fun tp!2041515 () Bool)

(assert (=> b!7273625 (= e!4361727 (and tp_is_empty!47097 tp!2041515))))

(declare-fun b!7273626 () Bool)

(declare-fun tp!2041514 () Bool)

(assert (=> b!7273626 (= e!4361728 tp!2041514)))

(declare-fun b!7273627 () Bool)

(declare-fun res!2948459 () Bool)

(assert (=> b!7273627 (=> (not res!2948459) (not e!4361729))))

(declare-fun nullableContext!306 (Context!15512) Bool)

(assert (=> b!7273627 (= res!2948459 (nullableContext!306 ct1!250))))

(assert (=> b!7273628 (= e!4361729 (not true))))

(declare-fun lambda!449334 () Int)

(declare-datatypes ((Unit!164250 0))(
  ( (Unit!164251) )
))
(declare-fun lt!2596300 () Unit!164250)

(declare-fun lemmaConcatPreservesForall!1573 (List!70948 List!70948 Int) Unit!164250)

(assert (=> b!7273628 (= lt!2596300 (lemmaConcatPreservesForall!1573 (exprs!8256 ct1!250) (exprs!8256 ct2!346) lambda!449334))))

(declare-fun lambda!449335 () Int)

(declare-fun lt!2596306 () (Set Context!15512))

(declare-fun lt!2596304 () Context!15512)

(declare-fun flatMap!2929 ((Set Context!15512) Int) (Set Context!15512))

(declare-fun derivationStepZipperUp!2586 (Context!15512 C!37906) (Set Context!15512))

(assert (=> b!7273628 (= (flatMap!2929 lt!2596306 lambda!449335) (derivationStepZipperUp!2586 lt!2596304 (h!77271 s!7854)))))

(declare-fun lt!2596307 () Unit!164250)

(declare-fun lemmaFlatMapOnSingletonSet!2329 ((Set Context!15512) Context!15512 Int) Unit!164250)

(assert (=> b!7273628 (= lt!2596307 (lemmaFlatMapOnSingletonSet!2329 lt!2596306 lt!2596304 lambda!449335))))

(assert (=> b!7273628 (= lt!2596306 (set.insert lt!2596304 (as set.empty (Set Context!15512))))))

(declare-fun lt!2596305 () Unit!164250)

(assert (=> b!7273628 (= lt!2596305 (lemmaConcatPreservesForall!1573 (exprs!8256 ct1!250) (exprs!8256 ct2!346) lambda!449334))))

(declare-fun lt!2596301 () Unit!164250)

(assert (=> b!7273628 (= lt!2596301 (lemmaConcatPreservesForall!1573 (exprs!8256 ct1!250) (exprs!8256 ct2!346) lambda!449334))))

(declare-fun lt!2596302 () (Set Context!15512))

(assert (=> b!7273628 (= (flatMap!2929 lt!2596302 lambda!449335) (derivationStepZipperUp!2586 ct1!250 (h!77271 s!7854)))))

(declare-fun lt!2596303 () Unit!164250)

(assert (=> b!7273628 (= lt!2596303 (lemmaFlatMapOnSingletonSet!2329 lt!2596302 ct1!250 lambda!449335))))

(assert (=> b!7273628 (= lt!2596302 (set.insert ct1!250 (as set.empty (Set Context!15512))))))

(declare-fun lt!2596308 () (Set Context!15512))

(assert (=> b!7273628 (= lt!2596308 (derivationStepZipperUp!2586 lt!2596304 (h!77271 s!7854)))))

(declare-fun ++!16716 (List!70948 List!70948) List!70948)

(assert (=> b!7273628 (= lt!2596304 (Context!15513 (++!16716 (exprs!8256 ct1!250) (exprs!8256 ct2!346))))))

(declare-fun lt!2596309 () Unit!164250)

(assert (=> b!7273628 (= lt!2596309 (lemmaConcatPreservesForall!1573 (exprs!8256 ct1!250) (exprs!8256 ct2!346) lambda!449334))))

(declare-fun b!7273629 () Bool)

(declare-fun tp!2041513 () Bool)

(assert (=> b!7273629 (= e!4361726 tp!2041513)))

(assert (= (and start!710104 res!2948460) b!7273627))

(assert (= (and b!7273627 res!2948459) b!7273624))

(assert (= (and b!7273624 res!2948458) b!7273628))

(assert (= start!710104 b!7273629))

(assert (= (and start!710104 (is-Cons!70823 s!7854)) b!7273625))

(assert (= start!710104 b!7273626))

(declare-fun m!7960194 () Bool)

(assert (=> start!710104 m!7960194))

(assert (=> start!710104 m!7960194))

(declare-fun m!7960196 () Bool)

(assert (=> start!710104 m!7960196))

(declare-fun m!7960198 () Bool)

(assert (=> start!710104 m!7960198))

(declare-fun m!7960200 () Bool)

(assert (=> start!710104 m!7960200))

(declare-fun m!7960202 () Bool)

(assert (=> b!7273627 m!7960202))

(declare-fun m!7960204 () Bool)

(assert (=> b!7273628 m!7960204))

(declare-fun m!7960206 () Bool)

(assert (=> b!7273628 m!7960206))

(declare-fun m!7960208 () Bool)

(assert (=> b!7273628 m!7960208))

(declare-fun m!7960210 () Bool)

(assert (=> b!7273628 m!7960210))

(assert (=> b!7273628 m!7960206))

(declare-fun m!7960212 () Bool)

(assert (=> b!7273628 m!7960212))

(declare-fun m!7960214 () Bool)

(assert (=> b!7273628 m!7960214))

(declare-fun m!7960216 () Bool)

(assert (=> b!7273628 m!7960216))

(declare-fun m!7960218 () Bool)

(assert (=> b!7273628 m!7960218))

(declare-fun m!7960220 () Bool)

(assert (=> b!7273628 m!7960220))

(assert (=> b!7273628 m!7960206))

(declare-fun m!7960222 () Bool)

(assert (=> b!7273628 m!7960222))

(assert (=> b!7273628 m!7960206))

(push 1)

(assert (not b!7273629))

(assert (not start!710104))

(assert (not b!7273625))

(assert (not b!7273626))

(assert tp_is_empty!47097)

(assert (not b!7273627))

(assert (not b!7273628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

