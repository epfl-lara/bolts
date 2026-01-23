; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277850 () Bool)

(assert start!277850)

(declare-fun b!2852938 () Bool)

(declare-fun res!1185907 () Bool)

(declare-fun e!1807525 () Bool)

(assert (=> b!2852938 (=> (not res!1185907) (not e!1807525))))

(declare-datatypes ((C!17300 0))(
  ( (C!17301 (val!10684 Int)) )
))
(declare-datatypes ((Regex!8559 0))(
  ( (ElementMatch!8559 (c!459870 C!17300)) (Concat!13880 (regOne!17630 Regex!8559) (regTwo!17630 Regex!8559)) (EmptyExpr!8559) (Star!8559 (reg!8888 Regex!8559)) (EmptyLang!8559) (Union!8559 (regOne!17631 Regex!8559) (regTwo!17631 Regex!8559)) )
))
(declare-fun r!5723 () Regex!8559)

(declare-datatypes ((List!34142 0))(
  ( (Nil!34018) (Cons!34018 (h!39438 Regex!8559) (t!233173 List!34142)) )
))
(declare-datatypes ((Context!5138 0))(
  ( (Context!5139 (exprs!3069 List!34142)) )
))
(declare-datatypes ((List!34143 0))(
  ( (Nil!34019) (Cons!34019 (h!39439 Context!5138) (t!233174 List!34143)) )
))
(declare-fun zl!222 () List!34143)

(declare-fun unfocusZipper!231 (List!34143) Regex!8559)

(assert (=> b!2852938 (= res!1185907 (= r!5723 (unfocusZipper!231 zl!222)))))

(declare-fun setIsEmpty!25230 () Bool)

(declare-fun setRes!25230 () Bool)

(assert (=> setIsEmpty!25230 setRes!25230))

(declare-fun res!1185911 () Bool)

(assert (=> start!277850 (=> (not res!1185911) (not e!1807525))))

(declare-fun validRegex!3429 (Regex!8559) Bool)

(assert (=> start!277850 (= res!1185911 (validRegex!3429 r!5723))))

(assert (=> start!277850 e!1807525))

(declare-fun e!1807529 () Bool)

(assert (=> start!277850 e!1807529))

(declare-fun condSetEmpty!25230 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!809 () (InoxSet Context!5138))

(assert (=> start!277850 (= condSetEmpty!25230 (= z!809 ((as const (Array Context!5138 Bool)) false)))))

(assert (=> start!277850 setRes!25230))

(declare-fun e!1807532 () Bool)

(assert (=> start!277850 e!1807532))

(declare-fun e!1807527 () Bool)

(assert (=> start!277850 e!1807527))

(declare-fun b!2852939 () Bool)

(declare-fun tp!916965 () Bool)

(assert (=> b!2852939 (= e!1807529 tp!916965)))

(declare-fun b!2852940 () Bool)

(declare-fun tp!916964 () Bool)

(declare-fun tp!916972 () Bool)

(assert (=> b!2852940 (= e!1807529 (and tp!916964 tp!916972))))

(declare-fun e!1807526 () Bool)

(declare-fun tp!916971 () Bool)

(declare-fun b!2852941 () Bool)

(declare-fun inv!46034 (Context!5138) Bool)

(assert (=> b!2852941 (= e!1807532 (and (inv!46034 (h!39439 zl!222)) e!1807526 tp!916971))))

(declare-fun b!2852942 () Bool)

(declare-fun tp_is_empty!14855 () Bool)

(declare-fun tp!916963 () Bool)

(assert (=> b!2852942 (= e!1807527 (and tp_is_empty!14855 tp!916963))))

(declare-fun b!2852943 () Bool)

(declare-fun tp!916968 () Bool)

(assert (=> b!2852943 (= e!1807526 tp!916968)))

(declare-fun b!2852944 () Bool)

(declare-fun res!1185908 () Bool)

(declare-fun e!1807528 () Bool)

(assert (=> b!2852944 (=> (not res!1185908) (not e!1807528))))

(declare-datatypes ((List!34144 0))(
  ( (Nil!34020) (Cons!34020 (h!39440 C!17300) (t!233175 List!34144)) )
))
(declare-fun prefix!862 () List!34144)

(declare-fun prefixMatchZipper!291 ((InoxSet Context!5138) List!34144) Bool)

(assert (=> b!2852944 (= res!1185908 (not (prefixMatchZipper!291 z!809 prefix!862)))))

(declare-fun b!2852945 () Bool)

(declare-fun res!1185910 () Bool)

(assert (=> b!2852945 (=> (not res!1185910) (not e!1807528))))

(declare-fun lt!1013695 () Bool)

(assert (=> b!2852945 (= res!1185910 lt!1013695)))

(declare-fun b!2852946 () Bool)

(assert (=> b!2852946 (= e!1807528 (not lt!1013695))))

(declare-fun b!2852947 () Bool)

(assert (=> b!2852947 (= e!1807525 e!1807528)))

(declare-fun res!1185912 () Bool)

(assert (=> b!2852947 (=> (not res!1185912) (not e!1807528))))

(declare-fun e!1807531 () Bool)

(assert (=> b!2852947 (= res!1185912 e!1807531)))

(declare-fun res!1185906 () Bool)

(assert (=> b!2852947 (=> res!1185906 e!1807531)))

(assert (=> b!2852947 (= res!1185906 lt!1013695)))

(declare-fun prefixMatch!867 (Regex!8559 List!34144) Bool)

(assert (=> b!2852947 (= lt!1013695 (prefixMatch!867 r!5723 prefix!862))))

(declare-fun b!2852948 () Bool)

(declare-fun tp!916966 () Bool)

(declare-fun tp!916969 () Bool)

(assert (=> b!2852948 (= e!1807529 (and tp!916966 tp!916969))))

(declare-fun b!2852949 () Bool)

(assert (=> b!2852949 (= e!1807531 (not (prefixMatchZipper!291 z!809 prefix!862)))))

(declare-fun b!2852950 () Bool)

(declare-fun res!1185909 () Bool)

(assert (=> b!2852950 (=> (not res!1185909) (not e!1807525))))

(declare-fun toList!1972 ((InoxSet Context!5138)) List!34143)

(assert (=> b!2852950 (= res!1185909 (= (toList!1972 z!809) zl!222))))

(declare-fun b!2852951 () Bool)

(declare-fun e!1807530 () Bool)

(declare-fun tp!916970 () Bool)

(assert (=> b!2852951 (= e!1807530 tp!916970)))

(declare-fun b!2852952 () Bool)

(assert (=> b!2852952 (= e!1807529 tp_is_empty!14855)))

(declare-fun setNonEmpty!25230 () Bool)

(declare-fun setElem!25230 () Context!5138)

(declare-fun tp!916967 () Bool)

(assert (=> setNonEmpty!25230 (= setRes!25230 (and tp!916967 (inv!46034 setElem!25230) e!1807530))))

(declare-fun setRest!25230 () (InoxSet Context!5138))

(assert (=> setNonEmpty!25230 (= z!809 ((_ map or) (store ((as const (Array Context!5138 Bool)) false) setElem!25230 true) setRest!25230))))

(assert (= (and start!277850 res!1185911) b!2852950))

(assert (= (and b!2852950 res!1185909) b!2852938))

(assert (= (and b!2852938 res!1185907) b!2852947))

(assert (= (and b!2852947 (not res!1185906)) b!2852949))

(assert (= (and b!2852947 res!1185912) b!2852945))

(assert (= (and b!2852945 res!1185910) b!2852944))

(assert (= (and b!2852944 res!1185908) b!2852946))

(get-info :version)

(assert (= (and start!277850 ((_ is ElementMatch!8559) r!5723)) b!2852952))

(assert (= (and start!277850 ((_ is Concat!13880) r!5723)) b!2852940))

(assert (= (and start!277850 ((_ is Star!8559) r!5723)) b!2852939))

(assert (= (and start!277850 ((_ is Union!8559) r!5723)) b!2852948))

(assert (= (and start!277850 condSetEmpty!25230) setIsEmpty!25230))

(assert (= (and start!277850 (not condSetEmpty!25230)) setNonEmpty!25230))

(assert (= setNonEmpty!25230 b!2852951))

(assert (= b!2852941 b!2852943))

(assert (= (and start!277850 ((_ is Cons!34019) zl!222)) b!2852941))

(assert (= (and start!277850 ((_ is Cons!34020) prefix!862)) b!2852942))

(declare-fun m!3277783 () Bool)

(assert (=> setNonEmpty!25230 m!3277783))

(declare-fun m!3277785 () Bool)

(assert (=> b!2852950 m!3277785))

(declare-fun m!3277787 () Bool)

(assert (=> b!2852944 m!3277787))

(declare-fun m!3277789 () Bool)

(assert (=> b!2852938 m!3277789))

(declare-fun m!3277791 () Bool)

(assert (=> b!2852947 m!3277791))

(assert (=> b!2852949 m!3277787))

(declare-fun m!3277793 () Bool)

(assert (=> b!2852941 m!3277793))

(declare-fun m!3277795 () Bool)

(assert (=> start!277850 m!3277795))

(check-sat tp_is_empty!14855 (not b!2852951) (not start!277850) (not b!2852941) (not b!2852940) (not b!2852944) (not b!2852947) (not b!2852939) (not b!2852948) (not setNonEmpty!25230) (not b!2852943) (not b!2852950) (not b!2852949) (not b!2852938) (not b!2852942))
(check-sat)
