; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277626 () Bool)

(assert start!277626)

(declare-fun b!2849722 () Bool)

(declare-fun res!1184506 () Bool)

(declare-fun e!1805745 () Bool)

(assert (=> b!2849722 (=> (not res!1184506) (not e!1805745))))

(declare-datatypes ((C!17208 0))(
  ( (C!17209 (val!10638 Int)) )
))
(declare-datatypes ((Regex!8513 0))(
  ( (ElementMatch!8513 (c!459704 C!17208)) (Concat!13834 (regOne!17538 Regex!8513) (regTwo!17538 Regex!8513)) (EmptyExpr!8513) (Star!8513 (reg!8842 Regex!8513)) (EmptyLang!8513) (Union!8513 (regOne!17539 Regex!8513) (regTwo!17539 Regex!8513)) )
))
(declare-fun r!5723 () Regex!8513)

(declare-datatypes ((List!34004 0))(
  ( (Nil!33880) (Cons!33880 (h!39300 Regex!8513) (t!233035 List!34004)) )
))
(declare-datatypes ((Context!5046 0))(
  ( (Context!5047 (exprs!3023 List!34004)) )
))
(declare-datatypes ((List!34005 0))(
  ( (Nil!33881) (Cons!33881 (h!39301 Context!5046) (t!233036 List!34005)) )
))
(declare-fun zl!222 () List!34005)

(declare-fun unfocusZipper!185 (List!34005) Regex!8513)

(assert (=> b!2849722 (= res!1184506 (= r!5723 (unfocusZipper!185 zl!222)))))

(declare-fun b!2849723 () Bool)

(declare-fun e!1805747 () Bool)

(declare-fun tp!915235 () Bool)

(declare-fun tp!915237 () Bool)

(assert (=> b!2849723 (= e!1805747 (and tp!915235 tp!915237))))

(declare-fun b!2849724 () Bool)

(declare-fun res!1184505 () Bool)

(assert (=> b!2849724 (=> (not res!1184505) (not e!1805745))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!809 () (InoxSet Context!5046))

(declare-fun toList!1926 ((InoxSet Context!5046)) List!34005)

(assert (=> b!2849724 (= res!1184505 (= (toList!1926 z!809) zl!222))))

(declare-fun res!1184504 () Bool)

(assert (=> start!277626 (=> (not res!1184504) (not e!1805745))))

(declare-fun validRegex!3383 (Regex!8513) Bool)

(assert (=> start!277626 (= res!1184504 (validRegex!3383 r!5723))))

(assert (=> start!277626 e!1805745))

(assert (=> start!277626 e!1805747))

(declare-fun condSetEmpty!25012 () Bool)

(assert (=> start!277626 (= condSetEmpty!25012 (= z!809 ((as const (Array Context!5046 Bool)) false)))))

(declare-fun setRes!25012 () Bool)

(assert (=> start!277626 setRes!25012))

(declare-fun e!1805743 () Bool)

(assert (=> start!277626 e!1805743))

(declare-fun e!1805746 () Bool)

(assert (=> start!277626 e!1805746))

(declare-fun b!2849725 () Bool)

(declare-fun tp_is_empty!14763 () Bool)

(declare-fun tp!915240 () Bool)

(assert (=> b!2849725 (= e!1805746 (and tp_is_empty!14763 tp!915240))))

(declare-fun b!2849726 () Bool)

(declare-fun res!1184502 () Bool)

(assert (=> b!2849726 (=> (not res!1184502) (not e!1805745))))

(declare-datatypes ((List!34006 0))(
  ( (Nil!33882) (Cons!33882 (h!39302 C!17208) (t!233037 List!34006)) )
))
(declare-fun prefix!862 () List!34006)

(declare-fun prefixMatchZipper!245 ((InoxSet Context!5046) List!34006) Bool)

(assert (=> b!2849726 (= res!1184502 (prefixMatchZipper!245 z!809 prefix!862))))

(declare-fun b!2849727 () Bool)

(declare-fun e!1805748 () Bool)

(declare-fun tp!915239 () Bool)

(assert (=> b!2849727 (= e!1805748 tp!915239)))

(declare-fun b!2849728 () Bool)

(assert (=> b!2849728 (= e!1805745 false)))

(declare-fun b!2849729 () Bool)

(declare-fun e!1805744 () Bool)

(declare-fun tp!915241 () Bool)

(assert (=> b!2849729 (= e!1805744 tp!915241)))

(declare-fun b!2849730 () Bool)

(declare-fun tp!915238 () Bool)

(declare-fun tp!915236 () Bool)

(assert (=> b!2849730 (= e!1805747 (and tp!915238 tp!915236))))

(declare-fun setIsEmpty!25012 () Bool)

(assert (=> setIsEmpty!25012 setRes!25012))

(declare-fun b!2849731 () Bool)

(declare-fun tp!915244 () Bool)

(assert (=> b!2849731 (= e!1805747 tp!915244)))

(declare-fun b!2849732 () Bool)

(declare-fun tp!915242 () Bool)

(declare-fun inv!45919 (Context!5046) Bool)

(assert (=> b!2849732 (= e!1805743 (and (inv!45919 (h!39301 zl!222)) e!1805748 tp!915242))))

(declare-fun b!2849733 () Bool)

(assert (=> b!2849733 (= e!1805747 tp_is_empty!14763)))

(declare-fun b!2849734 () Bool)

(declare-fun res!1184503 () Bool)

(assert (=> b!2849734 (=> (not res!1184503) (not e!1805745))))

(declare-fun prefixMatch!821 (Regex!8513 List!34006) Bool)

(assert (=> b!2849734 (= res!1184503 (not (prefixMatch!821 r!5723 prefix!862)))))

(declare-fun setNonEmpty!25012 () Bool)

(declare-fun setElem!25012 () Context!5046)

(declare-fun tp!915243 () Bool)

(assert (=> setNonEmpty!25012 (= setRes!25012 (and tp!915243 (inv!45919 setElem!25012) e!1805744))))

(declare-fun setRest!25012 () (InoxSet Context!5046))

(assert (=> setNonEmpty!25012 (= z!809 ((_ map or) (store ((as const (Array Context!5046 Bool)) false) setElem!25012 true) setRest!25012))))

(assert (= (and start!277626 res!1184504) b!2849724))

(assert (= (and b!2849724 res!1184505) b!2849722))

(assert (= (and b!2849722 res!1184506) b!2849734))

(assert (= (and b!2849734 res!1184503) b!2849726))

(assert (= (and b!2849726 res!1184502) b!2849728))

(get-info :version)

(assert (= (and start!277626 ((_ is ElementMatch!8513) r!5723)) b!2849733))

(assert (= (and start!277626 ((_ is Concat!13834) r!5723)) b!2849730))

(assert (= (and start!277626 ((_ is Star!8513) r!5723)) b!2849731))

(assert (= (and start!277626 ((_ is Union!8513) r!5723)) b!2849723))

(assert (= (and start!277626 condSetEmpty!25012) setIsEmpty!25012))

(assert (= (and start!277626 (not condSetEmpty!25012)) setNonEmpty!25012))

(assert (= setNonEmpty!25012 b!2849729))

(assert (= b!2849732 b!2849727))

(assert (= (and start!277626 ((_ is Cons!33881) zl!222)) b!2849732))

(assert (= (and start!277626 ((_ is Cons!33882) prefix!862)) b!2849725))

(declare-fun m!3276351 () Bool)

(assert (=> b!2849734 m!3276351))

(declare-fun m!3276353 () Bool)

(assert (=> start!277626 m!3276353))

(declare-fun m!3276355 () Bool)

(assert (=> b!2849732 m!3276355))

(declare-fun m!3276357 () Bool)

(assert (=> b!2849722 m!3276357))

(declare-fun m!3276359 () Bool)

(assert (=> setNonEmpty!25012 m!3276359))

(declare-fun m!3276361 () Bool)

(assert (=> b!2849724 m!3276361))

(declare-fun m!3276363 () Bool)

(assert (=> b!2849726 m!3276363))

(check-sat (not b!2849734) (not b!2849731) (not b!2849732) (not start!277626) (not b!2849722) (not setNonEmpty!25012) (not b!2849723) (not b!2849727) tp_is_empty!14763 (not b!2849724) (not b!2849730) (not b!2849726) (not b!2849725) (not b!2849729))
(check-sat)
