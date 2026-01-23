; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!722668 () Bool)

(assert start!722668)

(declare-datatypes ((C!39168 0))(
  ( (C!39169 (val!29958 Int)) )
))
(declare-datatypes ((Regex!19447 0))(
  ( (ElementMatch!19447 (c!1376933 C!39168)) (Concat!28292 (regOne!39406 Regex!19447) (regTwo!39406 Regex!19447)) (EmptyExpr!19447) (Star!19447 (reg!19776 Regex!19447)) (EmptyLang!19447) (Union!19447 (regOne!39407 Regex!19447) (regTwo!39407 Regex!19447)) )
))
(declare-datatypes ((List!72112 0))(
  ( (Nil!71988) (Cons!71988 (h!78436 Regex!19447) (t!386675 List!72112)) )
))
(declare-datatypes ((Context!16774 0))(
  ( (Context!16775 (exprs!8887 List!72112)) )
))
(declare-fun setElem!56543 () Context!16774)

(declare-fun e!4442841 () Bool)

(declare-fun tp!2150498 () Bool)

(declare-fun setRes!56543 () Bool)

(declare-fun setNonEmpty!56543 () Bool)

(declare-fun inv!91978 (Context!16774) Bool)

(assert (=> setNonEmpty!56543 (= setRes!56543 (and tp!2150498 (inv!91978 setElem!56543) e!4442841))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3488 () (InoxSet Context!16774))

(declare-fun setRest!56543 () (InoxSet Context!16774))

(assert (=> setNonEmpty!56543 (= z!3488 ((_ map or) (store ((as const (Array Context!16774 Bool)) false) setElem!56543 true) setRest!56543))))

(declare-fun b!7440208 () Bool)

(declare-fun e!4442840 () Bool)

(declare-fun tp_is_empty!49153 () Bool)

(declare-fun tp!2150496 () Bool)

(assert (=> b!7440208 (= e!4442840 (and tp_is_empty!49153 tp!2150496))))

(declare-fun setIsEmpty!56543 () Bool)

(assert (=> setIsEmpty!56543 setRes!56543))

(declare-fun b!7440210 () Bool)

(declare-fun e!4442842 () Bool)

(declare-fun lt!2619316 () Context!16774)

(assert (=> b!7440210 (= e!4442842 (not (inv!91978 lt!2619316)))))

(declare-fun b!7440209 () Bool)

(declare-fun tp!2150497 () Bool)

(assert (=> b!7440209 (= e!4442841 tp!2150497)))

(declare-fun res!2986211 () Bool)

(assert (=> start!722668 (=> (not res!2986211) (not e!4442842))))

(declare-datatypes ((List!72113 0))(
  ( (Nil!71989) (Cons!71989 (h!78437 C!39168) (t!386676 List!72113)) )
))
(declare-fun s!7945 () List!72113)

(get-info :version)

(assert (=> start!722668 (= res!2986211 (and (= z!3488 (store ((as const (Array Context!16774 Bool)) false) lt!2619316 true)) ((_ is Cons!71989) s!7945)))))

(assert (=> start!722668 (= lt!2619316 (Context!16775 Nil!71988))))

(assert (=> start!722668 e!4442842))

(declare-fun condSetEmpty!56543 () Bool)

(assert (=> start!722668 (= condSetEmpty!56543 (= z!3488 ((as const (Array Context!16774 Bool)) false)))))

(assert (=> start!722668 setRes!56543))

(assert (=> start!722668 e!4442840))

(assert (= (and start!722668 res!2986211) b!7440210))

(assert (= (and start!722668 condSetEmpty!56543) setIsEmpty!56543))

(assert (= (and start!722668 (not condSetEmpty!56543)) setNonEmpty!56543))

(assert (= setNonEmpty!56543 b!7440209))

(assert (= (and start!722668 ((_ is Cons!71989) s!7945)) b!7440208))

(declare-fun m!8052458 () Bool)

(assert (=> setNonEmpty!56543 m!8052458))

(declare-fun m!8052460 () Bool)

(assert (=> b!7440210 m!8052460))

(declare-fun m!8052462 () Bool)

(assert (=> start!722668 m!8052462))

(check-sat (not b!7440210) tp_is_empty!49153 (not b!7440209) (not setNonEmpty!56543) (not b!7440208))
(check-sat)
