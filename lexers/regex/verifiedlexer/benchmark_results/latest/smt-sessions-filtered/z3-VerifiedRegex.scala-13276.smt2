; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!722394 () Bool)

(assert start!722394)

(declare-fun b!7433488 () Bool)

(declare-fun res!2985088 () Bool)

(declare-fun e!4439774 () Bool)

(assert (=> b!7433488 (=> (not res!2985088) (not e!4439774))))

(declare-datatypes ((C!39128 0))(
  ( (C!39129 (val!29938 Int)) )
))
(declare-datatypes ((Regex!19427 0))(
  ( (ElementMatch!19427 (c!1376245 C!39128)) (Concat!28272 (regOne!39366 Regex!19427) (regTwo!39366 Regex!19427)) (EmptyExpr!19427) (Star!19427 (reg!19756 Regex!19427)) (EmptyLang!19427) (Union!19427 (regOne!39367 Regex!19427) (regTwo!39367 Regex!19427)) )
))
(declare-datatypes ((List!72062 0))(
  ( (Nil!71938) (Cons!71938 (h!78386 Regex!19427) (t!386623 List!72062)) )
))
(declare-datatypes ((Context!16734 0))(
  ( (Context!16735 (exprs!8867 List!72062)) )
))
(declare-fun c!10532 () Context!16734)

(declare-fun a!2228 () C!39128)

(declare-fun head!15245 (List!72062) Regex!19427)

(assert (=> b!7433488 (= res!2985088 (= (head!15245 (exprs!8867 c!10532)) (ElementMatch!19427 a!2228)))))

(declare-fun b!7433489 () Bool)

(declare-fun e!4439773 () Bool)

(declare-fun tp_is_empty!49117 () Bool)

(declare-fun tp!2145134 () Bool)

(assert (=> b!7433489 (= e!4439773 (and tp_is_empty!49117 tp!2145134))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3451 () (InoxSet Context!16734))

(declare-datatypes ((List!72063 0))(
  ( (Nil!71939) (Cons!71939 (h!78387 C!39128) (t!386624 List!72063)) )
))
(declare-fun s!7927 () List!72063)

(declare-fun b!7433490 () Bool)

(declare-fun matchZipper!3821 ((InoxSet Context!16734) List!72063) Bool)

(assert (=> b!7433490 (= e!4439774 (not (= (matchZipper!3821 z!3451 s!7927) (= s!7927 (Cons!71939 a!2228 Nil!71939)))))))

(declare-fun b!7433491 () Bool)

(declare-fun e!4439772 () Bool)

(declare-fun tp!2145131 () Bool)

(assert (=> b!7433491 (= e!4439772 tp!2145131)))

(declare-fun b!7433492 () Bool)

(declare-fun res!2985084 () Bool)

(assert (=> b!7433492 (=> (not res!2985084) (not e!4439774))))

(get-info :version)

(assert (=> b!7433492 (= res!2985084 (and (or (not ((_ is Cons!71939) s!7927)) (not (= (h!78387 s!7927) a!2228))) (or (not ((_ is Cons!71939) s!7927)) (= (h!78387 s!7927) a!2228)) (not ((_ is Nil!71939) s!7927))))))

(declare-fun setIsEmpty!56417 () Bool)

(declare-fun setRes!56417 () Bool)

(assert (=> setIsEmpty!56417 setRes!56417))

(declare-fun b!7433493 () Bool)

(declare-fun res!2985087 () Bool)

(assert (=> b!7433493 (=> (not res!2985087) (not e!4439774))))

(declare-fun isEmpty!41081 (List!72062) Bool)

(declare-fun tail!14846 (List!72062) List!72062)

(assert (=> b!7433493 (= res!2985087 (isEmpty!41081 (tail!14846 (exprs!8867 c!10532))))))

(declare-fun b!7433494 () Bool)

(declare-fun res!2985085 () Bool)

(assert (=> b!7433494 (=> (not res!2985085) (not e!4439774))))

(assert (=> b!7433494 (= res!2985085 (not (isEmpty!41081 (exprs!8867 c!10532))))))

(declare-fun b!7433495 () Bool)

(declare-fun e!4439775 () Bool)

(declare-fun tp!2145133 () Bool)

(assert (=> b!7433495 (= e!4439775 tp!2145133)))

(declare-fun setElem!56417 () Context!16734)

(declare-fun tp!2145132 () Bool)

(declare-fun setNonEmpty!56417 () Bool)

(declare-fun inv!91928 (Context!16734) Bool)

(assert (=> setNonEmpty!56417 (= setRes!56417 (and tp!2145132 (inv!91928 setElem!56417) e!4439772))))

(declare-fun setRest!56417 () (InoxSet Context!16734))

(assert (=> setNonEmpty!56417 (= z!3451 ((_ map or) (store ((as const (Array Context!16734 Bool)) false) setElem!56417 true) setRest!56417))))

(declare-fun res!2985086 () Bool)

(assert (=> start!722394 (=> (not res!2985086) (not e!4439774))))

(assert (=> start!722394 (= res!2985086 (= z!3451 (store ((as const (Array Context!16734 Bool)) false) c!10532 true)))))

(assert (=> start!722394 e!4439774))

(declare-fun condSetEmpty!56417 () Bool)

(assert (=> start!722394 (= condSetEmpty!56417 (= z!3451 ((as const (Array Context!16734 Bool)) false)))))

(assert (=> start!722394 setRes!56417))

(assert (=> start!722394 (and (inv!91928 c!10532) e!4439775)))

(assert (=> start!722394 tp_is_empty!49117))

(assert (=> start!722394 e!4439773))

(assert (= (and start!722394 res!2985086) b!7433494))

(assert (= (and b!7433494 res!2985085) b!7433488))

(assert (= (and b!7433488 res!2985088) b!7433493))

(assert (= (and b!7433493 res!2985087) b!7433492))

(assert (= (and b!7433492 res!2985084) b!7433490))

(assert (= (and start!722394 condSetEmpty!56417) setIsEmpty!56417))

(assert (= (and start!722394 (not condSetEmpty!56417)) setNonEmpty!56417))

(assert (= setNonEmpty!56417 b!7433491))

(assert (= start!722394 b!7433495))

(assert (= (and start!722394 ((_ is Cons!71939) s!7927)) b!7433489))

(declare-fun m!8049712 () Bool)

(assert (=> b!7433494 m!8049712))

(declare-fun m!8049714 () Bool)

(assert (=> start!722394 m!8049714))

(declare-fun m!8049716 () Bool)

(assert (=> start!722394 m!8049716))

(declare-fun m!8049718 () Bool)

(assert (=> b!7433493 m!8049718))

(assert (=> b!7433493 m!8049718))

(declare-fun m!8049720 () Bool)

(assert (=> b!7433493 m!8049720))

(declare-fun m!8049722 () Bool)

(assert (=> setNonEmpty!56417 m!8049722))

(declare-fun m!8049724 () Bool)

(assert (=> b!7433490 m!8049724))

(declare-fun m!8049726 () Bool)

(assert (=> b!7433488 m!8049726))

(check-sat (not b!7433488) (not start!722394) tp_is_empty!49117 (not setNonEmpty!56417) (not b!7433494) (not b!7433489) (not b!7433495) (not b!7433493) (not b!7433491) (not b!7433490))
(check-sat)
