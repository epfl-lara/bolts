; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!722390 () Bool)

(assert start!722390)

(declare-fun b!7433441 () Bool)

(declare-fun res!2985058 () Bool)

(declare-fun e!4439751 () Bool)

(assert (=> b!7433441 (=> (not res!2985058) (not e!4439751))))

(declare-datatypes ((C!39124 0))(
  ( (C!39125 (val!29936 Int)) )
))
(declare-datatypes ((Regex!19425 0))(
  ( (ElementMatch!19425 (c!1376243 C!39124)) (Concat!28270 (regOne!39362 Regex!19425) (regTwo!39362 Regex!19425)) (EmptyExpr!19425) (Star!19425 (reg!19754 Regex!19425)) (EmptyLang!19425) (Union!19425 (regOne!39363 Regex!19425) (regTwo!39363 Regex!19425)) )
))
(declare-datatypes ((List!72058 0))(
  ( (Nil!71934) (Cons!71934 (h!78382 Regex!19425) (t!386619 List!72058)) )
))
(declare-datatypes ((Context!16730 0))(
  ( (Context!16731 (exprs!8865 List!72058)) )
))
(declare-fun c!10532 () Context!16730)

(declare-fun isEmpty!41079 (List!72058) Bool)

(declare-fun tail!14844 (List!72058) List!72058)

(assert (=> b!7433441 (= res!2985058 (isEmpty!41079 (tail!14844 (exprs!8865 c!10532))))))

(declare-fun b!7433442 () Bool)

(declare-fun res!2985056 () Bool)

(assert (=> b!7433442 (=> (not res!2985056) (not e!4439751))))

(assert (=> b!7433442 (= res!2985056 (not (isEmpty!41079 (exprs!8865 c!10532))))))

(declare-fun b!7433443 () Bool)

(declare-datatypes ((List!72059 0))(
  ( (Nil!71935) (Cons!71935 (h!78383 C!39124) (t!386620 List!72059)) )
))
(declare-fun s!7927 () List!72059)

(declare-fun a!2228 () C!39124)

(get-info :version)

(assert (=> b!7433443 (= e!4439751 (and (or (not ((_ is Cons!71935) s!7927)) (not (= (h!78383 s!7927) a!2228))) (or (not ((_ is Cons!71935) s!7927)) (= (h!78383 s!7927) a!2228)) (not ((_ is Nil!71935) s!7927))))))

(declare-fun setIsEmpty!56411 () Bool)

(declare-fun setRes!56411 () Bool)

(assert (=> setIsEmpty!56411 setRes!56411))

(declare-fun b!7433444 () Bool)

(declare-fun e!4439750 () Bool)

(declare-fun tp_is_empty!49113 () Bool)

(declare-fun tp!2145107 () Bool)

(assert (=> b!7433444 (= e!4439750 (and tp_is_empty!49113 tp!2145107))))

(declare-fun b!7433445 () Bool)

(declare-fun e!4439748 () Bool)

(declare-fun tp!2145109 () Bool)

(assert (=> b!7433445 (= e!4439748 tp!2145109)))

(declare-fun setNonEmpty!56411 () Bool)

(declare-fun setElem!56411 () Context!16730)

(declare-fun tp!2145110 () Bool)

(declare-fun inv!91923 (Context!16730) Bool)

(assert (=> setNonEmpty!56411 (= setRes!56411 (and tp!2145110 (inv!91923 setElem!56411) e!4439748))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3451 () (InoxSet Context!16730))

(declare-fun setRest!56411 () (InoxSet Context!16730))

(assert (=> setNonEmpty!56411 (= z!3451 ((_ map or) (store ((as const (Array Context!16730 Bool)) false) setElem!56411 true) setRest!56411))))

(declare-fun res!2985057 () Bool)

(assert (=> start!722390 (=> (not res!2985057) (not e!4439751))))

(assert (=> start!722390 (= res!2985057 (= z!3451 (store ((as const (Array Context!16730 Bool)) false) c!10532 true)))))

(assert (=> start!722390 e!4439751))

(declare-fun condSetEmpty!56411 () Bool)

(assert (=> start!722390 (= condSetEmpty!56411 (= z!3451 ((as const (Array Context!16730 Bool)) false)))))

(assert (=> start!722390 setRes!56411))

(declare-fun e!4439749 () Bool)

(assert (=> start!722390 (and (inv!91923 c!10532) e!4439749)))

(assert (=> start!722390 tp_is_empty!49113))

(assert (=> start!722390 e!4439750))

(declare-fun b!7433446 () Bool)

(declare-fun tp!2145108 () Bool)

(assert (=> b!7433446 (= e!4439749 tp!2145108)))

(declare-fun b!7433447 () Bool)

(declare-fun res!2985055 () Bool)

(assert (=> b!7433447 (=> (not res!2985055) (not e!4439751))))

(declare-fun head!15243 (List!72058) Regex!19425)

(assert (=> b!7433447 (= res!2985055 (= (head!15243 (exprs!8865 c!10532)) (ElementMatch!19425 a!2228)))))

(assert (= (and start!722390 res!2985057) b!7433442))

(assert (= (and b!7433442 res!2985056) b!7433447))

(assert (= (and b!7433447 res!2985055) b!7433441))

(assert (= (and b!7433441 res!2985058) b!7433443))

(assert (= (and start!722390 condSetEmpty!56411) setIsEmpty!56411))

(assert (= (and start!722390 (not condSetEmpty!56411)) setNonEmpty!56411))

(assert (= setNonEmpty!56411 b!7433445))

(assert (= start!722390 b!7433446))

(assert (= (and start!722390 ((_ is Cons!71935) s!7927)) b!7433444))

(declare-fun m!8049682 () Bool)

(assert (=> b!7433441 m!8049682))

(assert (=> b!7433441 m!8049682))

(declare-fun m!8049684 () Bool)

(assert (=> b!7433441 m!8049684))

(declare-fun m!8049686 () Bool)

(assert (=> b!7433442 m!8049686))

(declare-fun m!8049688 () Bool)

(assert (=> start!722390 m!8049688))

(declare-fun m!8049690 () Bool)

(assert (=> start!722390 m!8049690))

(declare-fun m!8049692 () Bool)

(assert (=> setNonEmpty!56411 m!8049692))

(declare-fun m!8049694 () Bool)

(assert (=> b!7433447 m!8049694))

(check-sat (not b!7433445) (not b!7433444) tp_is_empty!49113 (not start!722390) (not b!7433447) (not b!7433446) (not setNonEmpty!56411) (not b!7433442) (not b!7433441))
(check-sat)
