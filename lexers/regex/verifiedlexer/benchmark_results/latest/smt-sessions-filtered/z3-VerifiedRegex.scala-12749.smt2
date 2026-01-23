; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704728 () Bool)

(assert start!704728)

(declare-fun b!7246522 () Bool)

(declare-fun e!4344867 () Bool)

(declare-fun tp!2036527 () Bool)

(assert (=> b!7246522 (= e!4344867 tp!2036527)))

(declare-fun b!7246524 () Bool)

(declare-fun res!2939320 () Bool)

(declare-fun e!4344868 () Bool)

(assert (=> b!7246524 (=> (not res!2939320) (not e!4344868))))

(declare-datatypes ((C!37488 0))(
  ( (C!37489 (val!28692 Int)) )
))
(declare-datatypes ((Regex!18607 0))(
  ( (ElementMatch!18607 (c!1346227 C!37488)) (Concat!27452 (regOne!37726 Regex!18607) (regTwo!37726 Regex!18607)) (EmptyExpr!18607) (Star!18607 (reg!18936 Regex!18607)) (EmptyLang!18607) (Union!18607 (regOne!37727 Regex!18607) (regTwo!37727 Regex!18607)) )
))
(declare-datatypes ((List!70412 0))(
  ( (Nil!70288) (Cons!70288 (h!76736 Regex!18607) (t!384464 List!70412)) )
))
(declare-datatypes ((Context!15094 0))(
  ( (Context!15095 (exprs!8047 List!70412)) )
))
(declare-fun ct2!328 () Context!15094)

(declare-datatypes ((List!70413 0))(
  ( (Nil!70289) (Cons!70289 (h!76737 C!37488) (t!384465 List!70413)) )
))
(declare-fun s2!1849 () List!70413)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3517 ((InoxSet Context!15094) List!70413) Bool)

(assert (=> b!7246524 (= res!2939320 (matchZipper!3517 (store ((as const (Array Context!15094 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7246525 () Bool)

(declare-fun ct1!232 () Context!15094)

(declare-fun lt!2582856 () (InoxSet Context!15094))

(get-info :version)

(assert (=> b!7246525 (= e!4344868 (and ((_ is Nil!70288) (exprs!8047 ct1!232)) (not (= lt!2582856 (store ((as const (Array Context!15094 Bool)) false) (Context!15095 Nil!70288) true)))))))

(declare-fun lt!2582857 () List!70412)

(declare-fun ++!16485 (List!70412 List!70412) List!70412)

(assert (=> b!7246525 (= lt!2582857 (++!16485 (exprs!8047 ct1!232) (exprs!8047 ct2!328)))))

(declare-fun lambda!443207 () Int)

(declare-datatypes ((Unit!163797 0))(
  ( (Unit!163798) )
))
(declare-fun lt!2582855 () Unit!163797)

(declare-fun lemmaConcatPreservesForall!1414 (List!70412 List!70412 Int) Unit!163797)

(assert (=> b!7246525 (= lt!2582855 (lemmaConcatPreservesForall!1414 (exprs!8047 ct1!232) (exprs!8047 ct2!328) lambda!443207))))

(declare-fun b!7246526 () Bool)

(declare-fun e!4344870 () Bool)

(declare-fun tp!2036526 () Bool)

(assert (=> b!7246526 (= e!4344870 tp!2036526)))

(declare-fun b!7246527 () Bool)

(declare-fun e!4344869 () Bool)

(declare-fun tp_is_empty!46679 () Bool)

(declare-fun tp!2036528 () Bool)

(assert (=> b!7246527 (= e!4344869 (and tp_is_empty!46679 tp!2036528))))

(declare-fun res!2939321 () Bool)

(assert (=> start!704728 (=> (not res!2939321) (not e!4344868))))

(declare-fun s1!1971 () List!70413)

(assert (=> start!704728 (= res!2939321 (matchZipper!3517 lt!2582856 s1!1971))))

(assert (=> start!704728 (= lt!2582856 (store ((as const (Array Context!15094 Bool)) false) ct1!232 true))))

(assert (=> start!704728 e!4344868))

(declare-fun inv!89527 (Context!15094) Bool)

(assert (=> start!704728 (and (inv!89527 ct1!232) e!4344870)))

(declare-fun e!4344866 () Bool)

(assert (=> start!704728 e!4344866))

(assert (=> start!704728 e!4344869))

(assert (=> start!704728 (and (inv!89527 ct2!328) e!4344867)))

(declare-fun b!7246523 () Bool)

(declare-fun tp!2036525 () Bool)

(assert (=> b!7246523 (= e!4344866 (and tp_is_empty!46679 tp!2036525))))

(assert (= (and start!704728 res!2939321) b!7246524))

(assert (= (and b!7246524 res!2939320) b!7246525))

(assert (= start!704728 b!7246526))

(assert (= (and start!704728 ((_ is Cons!70289) s1!1971)) b!7246523))

(assert (= (and start!704728 ((_ is Cons!70289) s2!1849)) b!7246527))

(assert (= start!704728 b!7246522))

(declare-fun m!7923366 () Bool)

(assert (=> b!7246524 m!7923366))

(assert (=> b!7246524 m!7923366))

(declare-fun m!7923368 () Bool)

(assert (=> b!7246524 m!7923368))

(declare-fun m!7923370 () Bool)

(assert (=> b!7246525 m!7923370))

(declare-fun m!7923372 () Bool)

(assert (=> b!7246525 m!7923372))

(declare-fun m!7923374 () Bool)

(assert (=> start!704728 m!7923374))

(declare-fun m!7923376 () Bool)

(assert (=> start!704728 m!7923376))

(declare-fun m!7923378 () Bool)

(assert (=> start!704728 m!7923378))

(declare-fun m!7923380 () Bool)

(assert (=> start!704728 m!7923380))

(check-sat (not b!7246522) (not b!7246524) (not b!7246523) tp_is_empty!46679 (not b!7246525) (not start!704728) (not b!7246527) (not b!7246526))
(check-sat)
