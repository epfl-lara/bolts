; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708764 () Bool)

(assert start!708764)

(declare-fun b!7266751 () Bool)

(assert (=> b!7266751 true))

(declare-fun b!7266744 () Bool)

(declare-fun e!4357704 () Bool)

(declare-fun tp!2040567 () Bool)

(assert (=> b!7266744 (= e!4357704 tp!2040567)))

(declare-fun b!7266745 () Bool)

(declare-fun res!2946030 () Bool)

(declare-fun e!4357702 () Bool)

(assert (=> b!7266745 (=> res!2946030 e!4357702)))

(declare-datatypes ((C!37814 0))(
  ( (C!37815 (val!28855 Int)) )
))
(declare-datatypes ((Regex!18770 0))(
  ( (ElementMatch!18770 (c!1352222 C!37814)) (Concat!27615 (regOne!38052 Regex!18770) (regTwo!38052 Regex!18770)) (EmptyExpr!18770) (Star!18770 (reg!19099 Regex!18770)) (EmptyLang!18770) (Union!18770 (regOne!38053 Regex!18770) (regTwo!38053 Regex!18770)) )
))
(declare-datatypes ((List!70855 0))(
  ( (Nil!70731) (Cons!70731 (h!77179 Regex!18770) (t!384925 List!70855)) )
))
(declare-datatypes ((Context!15420 0))(
  ( (Context!15421 (exprs!8210 List!70855)) )
))
(declare-fun lt!2592552 () (Set Context!15420))

(declare-fun lt!2592555 () Context!15420)

(declare-datatypes ((List!70856 0))(
  ( (Nil!70732) (Cons!70732 (h!77180 C!37814) (t!384926 List!70856)) )
))
(declare-fun s!7854 () List!70856)

(declare-fun ct1!250 () Context!15420)

(declare-fun derivationStepZipperDown!2704 (Regex!18770 Context!15420 C!37814) (Set Context!15420))

(declare-fun derivationStepZipperUp!2540 (Context!15420 C!37814) (Set Context!15420))

(assert (=> b!7266745 (= res!2946030 (not (= lt!2592552 (set.union (derivationStepZipperDown!2704 (h!77179 (exprs!8210 ct1!250)) lt!2592555 (h!77180 s!7854)) (derivationStepZipperUp!2540 lt!2592555 (h!77180 s!7854))))))))

(declare-fun b!7266746 () Bool)

(declare-fun e!4357699 () Bool)

(assert (=> b!7266746 (= e!4357699 e!4357702)))

(declare-fun res!2946031 () Bool)

(assert (=> b!7266746 (=> res!2946031 e!4357702)))

(declare-fun nullable!7970 (Regex!18770) Bool)

(assert (=> b!7266746 (= res!2946031 (not (nullable!7970 (h!77179 (exprs!8210 ct1!250)))))))

(assert (=> b!7266746 (= lt!2592552 (derivationStepZipperUp!2540 ct1!250 (h!77180 s!7854)))))

(declare-fun lt!2592557 () List!70855)

(assert (=> b!7266746 (= lt!2592555 (Context!15421 lt!2592557))))

(declare-fun tail!14449 (List!70855) List!70855)

(assert (=> b!7266746 (= lt!2592557 (tail!14449 (exprs!8210 ct1!250)))))

(declare-fun b!7266747 () Bool)

(declare-fun e!4357703 () Bool)

(declare-fun tp!2040568 () Bool)

(assert (=> b!7266747 (= e!4357703 tp!2040568)))

(declare-fun b!7266749 () Bool)

(declare-fun res!2946029 () Bool)

(declare-fun e!4357700 () Bool)

(assert (=> b!7266749 (=> (not res!2946029) (not e!4357700))))

(assert (=> b!7266749 (= res!2946029 (is-Cons!70732 s!7854))))

(declare-fun b!7266750 () Bool)

(declare-fun e!4357698 () Bool)

(assert (=> b!7266750 (= e!4357702 e!4357698)))

(declare-fun res!2946035 () Bool)

(assert (=> b!7266750 (=> res!2946035 e!4357698)))

(declare-fun lt!2592560 () (Set Context!15420))

(declare-fun lt!2592548 () Context!15420)

(assert (=> b!7266750 (= res!2946035 (not (= lt!2592560 (set.union (derivationStepZipperDown!2704 (h!77179 (exprs!8210 ct1!250)) lt!2592548 (h!77180 s!7854)) (derivationStepZipperUp!2540 lt!2592548 (h!77180 s!7854))))))))

(declare-fun ct2!346 () Context!15420)

(declare-fun ++!16670 (List!70855 List!70855) List!70855)

(assert (=> b!7266750 (= lt!2592548 (Context!15421 (++!16670 lt!2592557 (exprs!8210 ct2!346))))))

(declare-fun lambda!447534 () Int)

(declare-datatypes ((Unit!164158 0))(
  ( (Unit!164159) )
))
(declare-fun lt!2592554 () Unit!164158)

(declare-fun lemmaConcatPreservesForall!1527 (List!70855 List!70855 Int) Unit!164158)

(assert (=> b!7266750 (= lt!2592554 (lemmaConcatPreservesForall!1527 lt!2592557 (exprs!8210 ct2!346) lambda!447534))))

(declare-fun lt!2592562 () Unit!164158)

(assert (=> b!7266750 (= lt!2592562 (lemmaConcatPreservesForall!1527 lt!2592557 (exprs!8210 ct2!346) lambda!447534))))

(assert (=> b!7266751 (= e!4357700 (not e!4357699))))

(declare-fun res!2946032 () Bool)

(assert (=> b!7266751 (=> res!2946032 e!4357699)))

(declare-fun lt!2592556 () (Set Context!15420))

(declare-fun derivationStepZipper!3510 ((Set Context!15420) C!37814) (Set Context!15420))

(assert (=> b!7266751 (= res!2946032 (not (= lt!2592560 (derivationStepZipper!3510 lt!2592556 (h!77180 s!7854)))))))

(declare-fun lt!2592558 () Unit!164158)

(assert (=> b!7266751 (= lt!2592558 (lemmaConcatPreservesForall!1527 (exprs!8210 ct1!250) (exprs!8210 ct2!346) lambda!447534))))

(declare-fun lambda!447535 () Int)

(declare-fun lt!2592564 () Context!15420)

(declare-fun flatMap!2883 ((Set Context!15420) Int) (Set Context!15420))

(assert (=> b!7266751 (= (flatMap!2883 lt!2592556 lambda!447535) (derivationStepZipperUp!2540 lt!2592564 (h!77180 s!7854)))))

(declare-fun lt!2592550 () Unit!164158)

(declare-fun lemmaFlatMapOnSingletonSet!2283 ((Set Context!15420) Context!15420 Int) Unit!164158)

(assert (=> b!7266751 (= lt!2592550 (lemmaFlatMapOnSingletonSet!2283 lt!2592556 lt!2592564 lambda!447535))))

(assert (=> b!7266751 (= lt!2592556 (set.insert lt!2592564 (as set.empty (Set Context!15420))))))

(declare-fun lt!2592561 () Unit!164158)

(assert (=> b!7266751 (= lt!2592561 (lemmaConcatPreservesForall!1527 (exprs!8210 ct1!250) (exprs!8210 ct2!346) lambda!447534))))

(declare-fun lt!2592559 () Unit!164158)

(assert (=> b!7266751 (= lt!2592559 (lemmaConcatPreservesForall!1527 (exprs!8210 ct1!250) (exprs!8210 ct2!346) lambda!447534))))

(declare-fun lt!2592563 () (Set Context!15420))

(assert (=> b!7266751 (= (flatMap!2883 lt!2592563 lambda!447535) (derivationStepZipperUp!2540 ct1!250 (h!77180 s!7854)))))

(declare-fun lt!2592551 () Unit!164158)

(assert (=> b!7266751 (= lt!2592551 (lemmaFlatMapOnSingletonSet!2283 lt!2592563 ct1!250 lambda!447535))))

(assert (=> b!7266751 (= lt!2592563 (set.insert ct1!250 (as set.empty (Set Context!15420))))))

(assert (=> b!7266751 (= lt!2592560 (derivationStepZipperUp!2540 lt!2592564 (h!77180 s!7854)))))

(assert (=> b!7266751 (= lt!2592564 (Context!15421 (++!16670 (exprs!8210 ct1!250) (exprs!8210 ct2!346))))))

(declare-fun lt!2592549 () Unit!164158)

(assert (=> b!7266751 (= lt!2592549 (lemmaConcatPreservesForall!1527 (exprs!8210 ct1!250) (exprs!8210 ct2!346) lambda!447534))))

(declare-fun b!7266752 () Bool)

(declare-fun res!2946028 () Bool)

(assert (=> b!7266752 (=> (not res!2946028) (not e!4357700))))

(declare-fun nullableContext!260 (Context!15420) Bool)

(assert (=> b!7266752 (= res!2946028 (nullableContext!260 ct1!250))))

(declare-fun b!7266753 () Bool)

(declare-fun res!2946036 () Bool)

(assert (=> b!7266753 (=> res!2946036 e!4357699)))

(declare-fun isEmpty!40661 (List!70855) Bool)

(assert (=> b!7266753 (= res!2946036 (isEmpty!40661 (exprs!8210 ct1!250)))))

(declare-fun b!7266748 () Bool)

(declare-fun e!4357701 () Bool)

(declare-fun tp_is_empty!47005 () Bool)

(declare-fun tp!2040569 () Bool)

(assert (=> b!7266748 (= e!4357701 (and tp_is_empty!47005 tp!2040569))))

(declare-fun res!2946034 () Bool)

(assert (=> start!708764 (=> (not res!2946034) (not e!4357700))))

(declare-fun matchZipper!3674 ((Set Context!15420) List!70856) Bool)

(assert (=> start!708764 (= res!2946034 (matchZipper!3674 (set.insert ct2!346 (as set.empty (Set Context!15420))) s!7854))))

(assert (=> start!708764 e!4357700))

(declare-fun inv!89936 (Context!15420) Bool)

(assert (=> start!708764 (and (inv!89936 ct2!346) e!4357704)))

(assert (=> start!708764 e!4357701))

(assert (=> start!708764 (and (inv!89936 ct1!250) e!4357703)))

(declare-fun b!7266754 () Bool)

(assert (=> b!7266754 (= e!4357698 true)))

(declare-fun lt!2592553 () Bool)

(assert (=> b!7266754 (= lt!2592553 (nullableContext!260 lt!2592555))))

(declare-fun b!7266755 () Bool)

(declare-fun res!2946033 () Bool)

(assert (=> b!7266755 (=> res!2946033 e!4357699)))

(assert (=> b!7266755 (= res!2946033 (not (is-Cons!70731 (exprs!8210 ct1!250))))))

(assert (= (and start!708764 res!2946034) b!7266752))

(assert (= (and b!7266752 res!2946028) b!7266749))

(assert (= (and b!7266749 res!2946029) b!7266751))

(assert (= (and b!7266751 (not res!2946032)) b!7266755))

(assert (= (and b!7266755 (not res!2946033)) b!7266753))

(assert (= (and b!7266753 (not res!2946036)) b!7266746))

(assert (= (and b!7266746 (not res!2946031)) b!7266745))

(assert (= (and b!7266745 (not res!2946030)) b!7266750))

(assert (= (and b!7266750 (not res!2946035)) b!7266754))

(assert (= start!708764 b!7266744))

(assert (= (and start!708764 (is-Cons!70732 s!7854)) b!7266748))

(assert (= start!708764 b!7266747))

(declare-fun m!7951406 () Bool)

(assert (=> b!7266746 m!7951406))

(declare-fun m!7951408 () Bool)

(assert (=> b!7266746 m!7951408))

(declare-fun m!7951410 () Bool)

(assert (=> b!7266746 m!7951410))

(declare-fun m!7951412 () Bool)

(assert (=> b!7266754 m!7951412))

(declare-fun m!7951414 () Bool)

(assert (=> b!7266753 m!7951414))

(declare-fun m!7951416 () Bool)

(assert (=> b!7266751 m!7951416))

(declare-fun m!7951418 () Bool)

(assert (=> b!7266751 m!7951418))

(declare-fun m!7951420 () Bool)

(assert (=> b!7266751 m!7951420))

(declare-fun m!7951422 () Bool)

(assert (=> b!7266751 m!7951422))

(declare-fun m!7951424 () Bool)

(assert (=> b!7266751 m!7951424))

(assert (=> b!7266751 m!7951422))

(declare-fun m!7951426 () Bool)

(assert (=> b!7266751 m!7951426))

(assert (=> b!7266751 m!7951422))

(declare-fun m!7951428 () Bool)

(assert (=> b!7266751 m!7951428))

(declare-fun m!7951430 () Bool)

(assert (=> b!7266751 m!7951430))

(assert (=> b!7266751 m!7951422))

(assert (=> b!7266751 m!7951408))

(declare-fun m!7951432 () Bool)

(assert (=> b!7266751 m!7951432))

(declare-fun m!7951434 () Bool)

(assert (=> b!7266751 m!7951434))

(declare-fun m!7951436 () Bool)

(assert (=> b!7266750 m!7951436))

(declare-fun m!7951438 () Bool)

(assert (=> b!7266750 m!7951438))

(declare-fun m!7951440 () Bool)

(assert (=> b!7266750 m!7951440))

(assert (=> b!7266750 m!7951440))

(declare-fun m!7951442 () Bool)

(assert (=> b!7266750 m!7951442))

(declare-fun m!7951444 () Bool)

(assert (=> b!7266752 m!7951444))

(declare-fun m!7951446 () Bool)

(assert (=> b!7266745 m!7951446))

(declare-fun m!7951448 () Bool)

(assert (=> b!7266745 m!7951448))

(declare-fun m!7951450 () Bool)

(assert (=> start!708764 m!7951450))

(assert (=> start!708764 m!7951450))

(declare-fun m!7951452 () Bool)

(assert (=> start!708764 m!7951452))

(declare-fun m!7951454 () Bool)

(assert (=> start!708764 m!7951454))

(declare-fun m!7951456 () Bool)

(assert (=> start!708764 m!7951456))

(push 1)

(assert (not b!7266752))

(assert (not start!708764))

(assert (not b!7266751))

(assert tp_is_empty!47005)

(assert (not b!7266747))

(assert (not b!7266744))

(assert (not b!7266745))

(assert (not b!7266754))

(assert (not b!7266753))

(assert (not b!7266748))

(assert (not b!7266746))

(assert (not b!7266750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

