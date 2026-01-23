; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277654 () Bool)

(assert start!277654)

(declare-fun tp!915661 () Bool)

(declare-fun e!1806125 () Bool)

(declare-fun setNonEmpty!25084 () Bool)

(declare-fun setRes!25084 () Bool)

(declare-datatypes ((C!17236 0))(
  ( (C!17237 (val!10652 Int)) )
))
(declare-datatypes ((Regex!8527 0))(
  ( (ElementMatch!8527 (c!459718 C!17236)) (Concat!13848 (regOne!17566 Regex!8527) (regTwo!17566 Regex!8527)) (EmptyExpr!8527) (Star!8527 (reg!8856 Regex!8527)) (EmptyLang!8527) (Union!8527 (regOne!17567 Regex!8527) (regTwo!17567 Regex!8527)) )
))
(declare-datatypes ((List!34046 0))(
  ( (Nil!33922) (Cons!33922 (h!39342 Regex!8527) (t!233077 List!34046)) )
))
(declare-datatypes ((Context!5074 0))(
  ( (Context!5075 (exprs!3037 List!34046)) )
))
(declare-fun setElem!25084 () Context!5074)

(declare-fun inv!45954 (Context!5074) Bool)

(assert (=> setNonEmpty!25084 (= setRes!25084 (and tp!915661 (inv!45954 setElem!25084) e!1806125))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!809 () (InoxSet Context!5074))

(declare-fun setRest!25084 () (InoxSet Context!5074))

(assert (=> setNonEmpty!25084 (= z!809 ((_ map or) (store ((as const (Array Context!5074 Bool)) false) setElem!25084 true) setRest!25084))))

(declare-fun b!2850415 () Bool)

(declare-fun e!1806120 () Bool)

(declare-fun tp_is_empty!14791 () Bool)

(assert (=> b!2850415 (= e!1806120 tp_is_empty!14791)))

(declare-fun setIsEmpty!25084 () Bool)

(assert (=> setIsEmpty!25084 setRes!25084))

(declare-fun b!2850416 () Bool)

(declare-fun res!1184821 () Bool)

(declare-fun e!1806122 () Bool)

(assert (=> b!2850416 (=> (not res!1184821) (not e!1806122))))

(declare-fun r!5723 () Regex!8527)

(declare-datatypes ((List!34047 0))(
  ( (Nil!33923) (Cons!33923 (h!39343 Context!5074) (t!233078 List!34047)) )
))
(declare-fun zl!222 () List!34047)

(declare-fun unfocusZipper!199 (List!34047) Regex!8527)

(assert (=> b!2850416 (= res!1184821 (= r!5723 (unfocusZipper!199 zl!222)))))

(declare-fun b!2850417 () Bool)

(declare-fun e!1806126 () Bool)

(declare-fun tp!915659 () Bool)

(assert (=> b!2850417 (= e!1806126 (and tp_is_empty!14791 tp!915659))))

(declare-fun b!2850418 () Bool)

(declare-fun tp!915664 () Bool)

(declare-fun tp!915655 () Bool)

(assert (=> b!2850418 (= e!1806120 (and tp!915664 tp!915655))))

(declare-fun b!2850419 () Bool)

(declare-fun tp!915658 () Bool)

(declare-fun tp!915660 () Bool)

(assert (=> b!2850419 (= e!1806120 (and tp!915658 tp!915660))))

(declare-fun b!2850420 () Bool)

(declare-fun e!1806119 () Bool)

(assert (=> b!2850420 (= e!1806119 false)))

(declare-fun lt!1013358 () Bool)

(declare-datatypes ((List!34048 0))(
  ( (Nil!33924) (Cons!33924 (h!39344 C!17236) (t!233079 List!34048)) )
))
(declare-fun prefix!862 () List!34048)

(declare-fun prefixMatchZipper!259 ((InoxSet Context!5074) List!34048) Bool)

(assert (=> b!2850420 (= lt!1013358 (prefixMatchZipper!259 z!809 prefix!862))))

(declare-fun res!1184824 () Bool)

(assert (=> start!277654 (=> (not res!1184824) (not e!1806122))))

(declare-fun validRegex!3397 (Regex!8527) Bool)

(assert (=> start!277654 (= res!1184824 (validRegex!3397 r!5723))))

(assert (=> start!277654 e!1806122))

(assert (=> start!277654 e!1806120))

(declare-fun condSetEmpty!25084 () Bool)

(assert (=> start!277654 (= condSetEmpty!25084 (= z!809 ((as const (Array Context!5074 Bool)) false)))))

(assert (=> start!277654 setRes!25084))

(declare-fun e!1806121 () Bool)

(assert (=> start!277654 e!1806121))

(assert (=> start!277654 e!1806126))

(declare-fun e!1806123 () Bool)

(declare-fun tp!915662 () Bool)

(declare-fun b!2850421 () Bool)

(assert (=> b!2850421 (= e!1806121 (and (inv!45954 (h!39343 zl!222)) e!1806123 tp!915662))))

(declare-fun b!2850422 () Bool)

(declare-fun tp!915657 () Bool)

(assert (=> b!2850422 (= e!1806125 tp!915657)))

(declare-fun b!2850423 () Bool)

(declare-fun tp!915663 () Bool)

(assert (=> b!2850423 (= e!1806120 tp!915663)))

(declare-fun b!2850424 () Bool)

(declare-fun res!1184819 () Bool)

(assert (=> b!2850424 (=> (not res!1184819) (not e!1806122))))

(declare-fun toList!1940 ((InoxSet Context!5074)) List!34047)

(assert (=> b!2850424 (= res!1184819 (= (toList!1940 z!809) zl!222))))

(declare-fun b!2850425 () Bool)

(declare-fun tp!915656 () Bool)

(assert (=> b!2850425 (= e!1806123 tp!915656)))

(declare-fun b!2850426 () Bool)

(declare-fun res!1184822 () Bool)

(assert (=> b!2850426 (=> (not res!1184822) (not e!1806119))))

(declare-fun lt!1013359 () Bool)

(assert (=> b!2850426 (= res!1184822 lt!1013359)))

(declare-fun b!2850427 () Bool)

(declare-fun e!1806124 () Bool)

(assert (=> b!2850427 (= e!1806124 (not (prefixMatchZipper!259 z!809 prefix!862)))))

(declare-fun b!2850428 () Bool)

(assert (=> b!2850428 (= e!1806122 e!1806119)))

(declare-fun res!1184820 () Bool)

(assert (=> b!2850428 (=> (not res!1184820) (not e!1806119))))

(assert (=> b!2850428 (= res!1184820 e!1806124)))

(declare-fun res!1184823 () Bool)

(assert (=> b!2850428 (=> res!1184823 e!1806124)))

(assert (=> b!2850428 (= res!1184823 lt!1013359)))

(declare-fun prefixMatch!835 (Regex!8527 List!34048) Bool)

(assert (=> b!2850428 (= lt!1013359 (prefixMatch!835 r!5723 prefix!862))))

(assert (= (and start!277654 res!1184824) b!2850424))

(assert (= (and b!2850424 res!1184819) b!2850416))

(assert (= (and b!2850416 res!1184821) b!2850428))

(assert (= (and b!2850428 (not res!1184823)) b!2850427))

(assert (= (and b!2850428 res!1184820) b!2850426))

(assert (= (and b!2850426 res!1184822) b!2850420))

(get-info :version)

(assert (= (and start!277654 ((_ is ElementMatch!8527) r!5723)) b!2850415))

(assert (= (and start!277654 ((_ is Concat!13848) r!5723)) b!2850419))

(assert (= (and start!277654 ((_ is Star!8527) r!5723)) b!2850423))

(assert (= (and start!277654 ((_ is Union!8527) r!5723)) b!2850418))

(assert (= (and start!277654 condSetEmpty!25084) setIsEmpty!25084))

(assert (= (and start!277654 (not condSetEmpty!25084)) setNonEmpty!25084))

(assert (= setNonEmpty!25084 b!2850422))

(assert (= b!2850421 b!2850425))

(assert (= (and start!277654 ((_ is Cons!33923) zl!222)) b!2850421))

(assert (= (and start!277654 ((_ is Cons!33924) prefix!862)) b!2850417))

(declare-fun m!3276651 () Bool)

(assert (=> start!277654 m!3276651))

(declare-fun m!3276653 () Bool)

(assert (=> b!2850427 m!3276653))

(declare-fun m!3276655 () Bool)

(assert (=> b!2850416 m!3276655))

(assert (=> b!2850420 m!3276653))

(declare-fun m!3276657 () Bool)

(assert (=> b!2850428 m!3276657))

(declare-fun m!3276659 () Bool)

(assert (=> b!2850424 m!3276659))

(declare-fun m!3276661 () Bool)

(assert (=> b!2850421 m!3276661))

(declare-fun m!3276663 () Bool)

(assert (=> setNonEmpty!25084 m!3276663))

(check-sat (not setNonEmpty!25084) (not b!2850422) tp_is_empty!14791 (not start!277654) (not b!2850416) (not b!2850419) (not b!2850420) (not b!2850417) (not b!2850428) (not b!2850421) (not b!2850425) (not b!2850418) (not b!2850427) (not b!2850423) (not b!2850424))
(check-sat)
