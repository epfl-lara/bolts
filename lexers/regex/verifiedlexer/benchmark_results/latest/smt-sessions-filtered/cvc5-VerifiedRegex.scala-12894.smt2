; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711966 () Bool)

(assert start!711966)

(declare-fun b!7310761 () Bool)

(declare-fun lambda!451485 () Int)

(declare-fun lambda!451484 () Int)

(assert (=> b!7310761 (not (= lambda!451485 lambda!451484))))

(declare-fun b!7310758 () Bool)

(declare-fun e!4375731 () Bool)

(assert (=> b!7310758 (= e!4375731 false)))

(declare-datatypes ((C!38066 0))(
  ( (C!38067 (val!28981 Int)) )
))
(declare-datatypes ((Regex!18896 0))(
  ( (ElementMatch!18896 (c!1357467 C!38066)) (Concat!27741 (regOne!38304 Regex!18896) (regTwo!38304 Regex!18896)) (EmptyExpr!18896) (Star!18896 (reg!19225 Regex!18896)) (EmptyLang!18896) (Union!18896 (regOne!38305 Regex!18896) (regTwo!38305 Regex!18896)) )
))
(declare-datatypes ((List!71111 0))(
  ( (Nil!70987) (Cons!70987 (h!77435 Regex!18896) (t!385189 List!71111)) )
))
(declare-datatypes ((Context!15672 0))(
  ( (Context!15673 (exprs!8336 List!71111)) )
))
(declare-fun ct2!346 () Context!15672)

(declare-datatypes ((Unit!164390 0))(
  ( (Unit!164391) )
))
(declare-fun lt!2600150 () Unit!164390)

(declare-fun ct1!250 () Context!15672)

(declare-fun lemmaConcatPreservesForall!1643 (List!71111 List!71111 Int) Unit!164390)

(assert (=> b!7310758 (= lt!2600150 (lemmaConcatPreservesForall!1643 (exprs!8336 ct1!250) (exprs!8336 ct2!346) lambda!451485))))

(declare-fun b!7310759 () Bool)

(declare-fun res!2953248 () Bool)

(declare-fun e!4375729 () Bool)

(assert (=> b!7310759 (=> (not res!2953248) (not e!4375729))))

(declare-fun nullableContext!386 (Context!15672) Bool)

(assert (=> b!7310759 (= res!2953248 (nullableContext!386 ct2!346))))

(declare-fun res!2953245 () Bool)

(assert (=> start!711966 (=> (not res!2953245) (not e!4375729))))

(declare-datatypes ((List!71112 0))(
  ( (Nil!70988) (Cons!70988 (h!77436 C!38066) (t!385190 List!71112)) )
))
(declare-fun s!7854 () List!71112)

(declare-fun matchZipper!3800 ((Set Context!15672) List!71112) Bool)

(assert (=> start!711966 (= res!2953245 (matchZipper!3800 (set.insert ct2!346 (as set.empty (Set Context!15672))) s!7854))))

(assert (=> start!711966 e!4375729))

(declare-fun e!4375730 () Bool)

(declare-fun inv!90251 (Context!15672) Bool)

(assert (=> start!711966 (and (inv!90251 ct2!346) e!4375730)))

(declare-fun e!4375732 () Bool)

(assert (=> start!711966 e!4375732))

(declare-fun e!4375728 () Bool)

(assert (=> start!711966 (and (inv!90251 ct1!250) e!4375728)))

(declare-fun b!7310760 () Bool)

(declare-fun tp_is_empty!47257 () Bool)

(declare-fun tp!2074856 () Bool)

(assert (=> b!7310760 (= e!4375732 (and tp_is_empty!47257 tp!2074856))))

(assert (=> b!7310761 (= e!4375729 e!4375731)))

(declare-fun res!2953247 () Bool)

(assert (=> b!7310761 (=> (not res!2953247) (not e!4375731))))

(declare-fun ++!16786 (List!71111 List!71111) List!71111)

(assert (=> b!7310761 (= res!2953247 (matchZipper!3800 (set.insert (Context!15673 (++!16786 (exprs!8336 ct1!250) (exprs!8336 ct2!346))) (as set.empty (Set Context!15672))) s!7854))))

(declare-fun lt!2600151 () Unit!164390)

(assert (=> b!7310761 (= lt!2600151 (lemmaConcatPreservesForall!1643 (exprs!8336 ct1!250) (exprs!8336 ct2!346) lambda!451485))))

(declare-fun lt!2600152 () Unit!164390)

(assert (=> b!7310761 (= lt!2600152 (lemmaConcatPreservesForall!1643 (exprs!8336 ct1!250) (exprs!8336 ct2!346) lambda!451484))))

(declare-fun b!7310762 () Bool)

(declare-fun res!2953249 () Bool)

(assert (=> b!7310762 (=> (not res!2953249) (not e!4375729))))

(assert (=> b!7310762 (= res!2953249 (not (is-Cons!70988 s!7854)))))

(declare-fun b!7310763 () Bool)

(declare-fun tp!2074858 () Bool)

(assert (=> b!7310763 (= e!4375730 tp!2074858)))

(declare-fun b!7310764 () Bool)

(declare-fun tp!2074857 () Bool)

(assert (=> b!7310764 (= e!4375728 tp!2074857)))

(declare-fun b!7310765 () Bool)

(declare-fun res!2953246 () Bool)

(assert (=> b!7310765 (=> (not res!2953246) (not e!4375729))))

(assert (=> b!7310765 (= res!2953246 (nullableContext!386 ct1!250))))

(assert (= (and start!711966 res!2953245) b!7310765))

(assert (= (and b!7310765 res!2953246) b!7310762))

(assert (= (and b!7310762 res!2953249) b!7310759))

(assert (= (and b!7310759 res!2953248) b!7310761))

(assert (= (and b!7310761 res!2953247) b!7310758))

(assert (= start!711966 b!7310763))

(assert (= (and start!711966 (is-Cons!70988 s!7854)) b!7310760))

(assert (= start!711966 b!7310764))

(declare-fun m!7974708 () Bool)

(assert (=> start!711966 m!7974708))

(assert (=> start!711966 m!7974708))

(declare-fun m!7974710 () Bool)

(assert (=> start!711966 m!7974710))

(declare-fun m!7974712 () Bool)

(assert (=> start!711966 m!7974712))

(declare-fun m!7974714 () Bool)

(assert (=> start!711966 m!7974714))

(declare-fun m!7974716 () Bool)

(assert (=> b!7310759 m!7974716))

(declare-fun m!7974718 () Bool)

(assert (=> b!7310758 m!7974718))

(declare-fun m!7974720 () Bool)

(assert (=> b!7310765 m!7974720))

(declare-fun m!7974722 () Bool)

(assert (=> b!7310761 m!7974722))

(declare-fun m!7974724 () Bool)

(assert (=> b!7310761 m!7974724))

(declare-fun m!7974726 () Bool)

(assert (=> b!7310761 m!7974726))

(assert (=> b!7310761 m!7974722))

(declare-fun m!7974728 () Bool)

(assert (=> b!7310761 m!7974728))

(assert (=> b!7310761 m!7974718))

(push 1)

(assert (not b!7310764))

(assert (not b!7310763))

(assert (not b!7310758))

(assert (not b!7310760))

(assert (not b!7310765))

(assert (not b!7310759))

(assert tp_is_empty!47257)

(assert (not start!711966))

(assert (not b!7310761))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

