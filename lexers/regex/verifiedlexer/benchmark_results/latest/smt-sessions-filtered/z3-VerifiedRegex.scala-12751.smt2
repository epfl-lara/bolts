; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704760 () Bool)

(assert start!704760)

(declare-fun b!7246679 () Bool)

(declare-fun e!4344980 () Bool)

(declare-fun e!4344978 () Bool)

(assert (=> b!7246679 (= e!4344980 (not e!4344978))))

(declare-fun res!2939377 () Bool)

(assert (=> b!7246679 (=> res!2939377 e!4344978)))

(declare-datatypes ((C!37496 0))(
  ( (C!37497 (val!28696 Int)) )
))
(declare-datatypes ((Regex!18611 0))(
  ( (ElementMatch!18611 (c!1346245 C!37496)) (Concat!27456 (regOne!37734 Regex!18611) (regTwo!37734 Regex!18611)) (EmptyExpr!18611) (Star!18611 (reg!18940 Regex!18611)) (EmptyLang!18611) (Union!18611 (regOne!37735 Regex!18611) (regTwo!37735 Regex!18611)) )
))
(declare-datatypes ((List!70420 0))(
  ( (Nil!70296) (Cons!70296 (h!76744 Regex!18611) (t!384472 List!70420)) )
))
(declare-datatypes ((Context!15102 0))(
  ( (Context!15103 (exprs!8051 List!70420)) )
))
(declare-fun lt!2582941 () Context!15102)

(declare-fun ct2!328 () Context!15102)

(assert (=> b!7246679 (= res!2939377 (not (= lt!2582941 ct2!328)))))

(declare-fun ct1!232 () Context!15102)

(declare-datatypes ((Unit!163805 0))(
  ( (Unit!163806) )
))
(declare-fun lt!2582938 () Unit!163805)

(declare-fun lambda!443241 () Int)

(declare-fun lemmaConcatPreservesForall!1418 (List!70420 List!70420 Int) Unit!163805)

(assert (=> b!7246679 (= lt!2582938 (lemmaConcatPreservesForall!1418 (exprs!8051 ct1!232) (exprs!8051 ct2!328) lambda!443241))))

(declare-datatypes ((List!70421 0))(
  ( (Nil!70297) (Cons!70297 (h!76745 C!37496) (t!384473 List!70421)) )
))
(declare-fun s1!1971 () List!70421)

(declare-fun isEmpty!40489 (List!70421) Bool)

(assert (=> b!7246679 (isEmpty!40489 s1!1971)))

(declare-fun lt!2582936 () Unit!163805)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2582940 () (InoxSet Context!15102))

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!56 ((InoxSet Context!15102) List!70421) Unit!163805)

(assert (=> b!7246679 (= lt!2582936 (lemmaZipperOfEmptyContextMatchesEmptyString!56 lt!2582940 s1!1971))))

(declare-fun b!7246680 () Bool)

(declare-fun res!2939378 () Bool)

(declare-fun e!4344984 () Bool)

(assert (=> b!7246680 (=> (not res!2939378) (not e!4344984))))

(declare-fun s2!1849 () List!70421)

(declare-fun matchZipper!3521 ((InoxSet Context!15102) List!70421) Bool)

(assert (=> b!7246680 (= res!2939378 (matchZipper!3521 (store ((as const (Array Context!15102 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7246681 () Bool)

(assert (=> b!7246681 (= e!4344984 e!4344980)))

(declare-fun res!2939380 () Bool)

(assert (=> b!7246681 (=> (not res!2939380) (not e!4344980))))

(get-info :version)

(assert (=> b!7246681 (= res!2939380 ((_ is Nil!70296) (exprs!8051 ct1!232)))))

(declare-fun ++!16490 (List!70420 List!70420) List!70420)

(assert (=> b!7246681 (= lt!2582941 (Context!15103 (++!16490 (exprs!8051 ct1!232) (exprs!8051 ct2!328))))))

(declare-fun lt!2582937 () Unit!163805)

(assert (=> b!7246681 (= lt!2582937 (lemmaConcatPreservesForall!1418 (exprs!8051 ct1!232) (exprs!8051 ct2!328) lambda!443241))))

(declare-fun b!7246682 () Bool)

(declare-fun e!4344981 () Bool)

(declare-fun tp!2036599 () Bool)

(assert (=> b!7246682 (= e!4344981 tp!2036599)))

(declare-fun res!2939381 () Bool)

(assert (=> start!704760 (=> (not res!2939381) (not e!4344984))))

(assert (=> start!704760 (= res!2939381 (matchZipper!3521 lt!2582940 s1!1971))))

(assert (=> start!704760 (= lt!2582940 (store ((as const (Array Context!15102 Bool)) false) ct1!232 true))))

(assert (=> start!704760 e!4344984))

(declare-fun e!4344979 () Bool)

(declare-fun inv!89537 (Context!15102) Bool)

(assert (=> start!704760 (and (inv!89537 ct1!232) e!4344979)))

(declare-fun e!4344983 () Bool)

(assert (=> start!704760 e!4344983))

(declare-fun e!4344982 () Bool)

(assert (=> start!704760 e!4344982))

(assert (=> start!704760 (and (inv!89537 ct2!328) e!4344981)))

(declare-fun b!7246683 () Bool)

(declare-fun tp_is_empty!46687 () Bool)

(declare-fun tp!2036597 () Bool)

(assert (=> b!7246683 (= e!4344983 (and tp_is_empty!46687 tp!2036597))))

(declare-fun b!7246684 () Bool)

(declare-fun tp!2036600 () Bool)

(assert (=> b!7246684 (= e!4344979 tp!2036600)))

(declare-fun b!7246685 () Bool)

(declare-fun res!2939379 () Bool)

(assert (=> b!7246685 (=> res!2939379 e!4344978)))

(declare-fun ++!16491 (List!70421 List!70421) List!70421)

(assert (=> b!7246685 (= res!2939379 (not (= (++!16491 s1!1971 s2!1849) s2!1849)))))

(declare-fun b!7246686 () Bool)

(declare-fun tp!2036598 () Bool)

(assert (=> b!7246686 (= e!4344982 (and tp_is_empty!46687 tp!2036598))))

(declare-fun b!7246687 () Bool)

(assert (=> b!7246687 (= e!4344978 (inv!89537 lt!2582941))))

(declare-fun lt!2582939 () Unit!163805)

(assert (=> b!7246687 (= lt!2582939 (lemmaConcatPreservesForall!1418 (exprs!8051 ct1!232) (exprs!8051 ct2!328) lambda!443241))))

(assert (= (and start!704760 res!2939381) b!7246680))

(assert (= (and b!7246680 res!2939378) b!7246681))

(assert (= (and b!7246681 res!2939380) b!7246679))

(assert (= (and b!7246679 (not res!2939377)) b!7246685))

(assert (= (and b!7246685 (not res!2939379)) b!7246687))

(assert (= start!704760 b!7246684))

(assert (= (and start!704760 ((_ is Cons!70297) s1!1971)) b!7246683))

(assert (= (and start!704760 ((_ is Cons!70297) s2!1849)) b!7246686))

(assert (= start!704760 b!7246682))

(declare-fun m!7923550 () Bool)

(assert (=> b!7246680 m!7923550))

(assert (=> b!7246680 m!7923550))

(declare-fun m!7923552 () Bool)

(assert (=> b!7246680 m!7923552))

(declare-fun m!7923554 () Bool)

(assert (=> b!7246685 m!7923554))

(declare-fun m!7923556 () Bool)

(assert (=> b!7246687 m!7923556))

(declare-fun m!7923558 () Bool)

(assert (=> b!7246687 m!7923558))

(assert (=> b!7246679 m!7923558))

(declare-fun m!7923560 () Bool)

(assert (=> b!7246679 m!7923560))

(declare-fun m!7923562 () Bool)

(assert (=> b!7246679 m!7923562))

(declare-fun m!7923564 () Bool)

(assert (=> start!704760 m!7923564))

(declare-fun m!7923566 () Bool)

(assert (=> start!704760 m!7923566))

(declare-fun m!7923568 () Bool)

(assert (=> start!704760 m!7923568))

(declare-fun m!7923570 () Bool)

(assert (=> start!704760 m!7923570))

(declare-fun m!7923572 () Bool)

(assert (=> b!7246681 m!7923572))

(assert (=> b!7246681 m!7923558))

(check-sat (not b!7246681) (not b!7246685) (not b!7246683) (not b!7246687) (not b!7246686) (not b!7246679) (not b!7246680) (not b!7246682) (not b!7246684) (not start!704760) tp_is_empty!46687)
(check-sat)
