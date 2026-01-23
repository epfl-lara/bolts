; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277914 () Bool)

(assert start!277914)

(declare-fun res!1186197 () Bool)

(declare-fun e!1807907 () Bool)

(assert (=> start!277914 (=> (not res!1186197) (not e!1807907))))

(declare-datatypes ((C!17312 0))(
  ( (C!17313 (val!10690 Int)) )
))
(declare-datatypes ((Regex!8565 0))(
  ( (ElementMatch!8565 (c!459924 C!17312)) (Concat!13886 (regOne!17642 Regex!8565) (regTwo!17642 Regex!8565)) (EmptyExpr!8565) (Star!8565 (reg!8894 Regex!8565)) (EmptyLang!8565) (Union!8565 (regOne!17643 Regex!8565) (regTwo!17643 Regex!8565)) )
))
(declare-fun r!5723 () Regex!8565)

(declare-fun validRegex!3435 (Regex!8565) Bool)

(assert (=> start!277914 (= res!1186197 (validRegex!3435 r!5723))))

(assert (=> start!277914 e!1807907))

(declare-fun e!1807901 () Bool)

(assert (=> start!277914 e!1807901))

(declare-fun condSetEmpty!25254 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!34160 0))(
  ( (Nil!34036) (Cons!34036 (h!39456 Regex!8565) (t!233191 List!34160)) )
))
(declare-datatypes ((Context!5150 0))(
  ( (Context!5151 (exprs!3075 List!34160)) )
))
(declare-fun z!809 () (InoxSet Context!5150))

(assert (=> start!277914 (= condSetEmpty!25254 (= z!809 ((as const (Array Context!5150 Bool)) false)))))

(declare-fun setRes!25254 () Bool)

(assert (=> start!277914 setRes!25254))

(declare-fun e!1807906 () Bool)

(assert (=> start!277914 e!1807906))

(declare-fun e!1807902 () Bool)

(assert (=> start!277914 e!1807902))

(declare-fun b!2853590 () Bool)

(declare-fun res!1186200 () Bool)

(assert (=> b!2853590 (=> (not res!1186200) (not e!1807907))))

(declare-datatypes ((List!34161 0))(
  ( (Nil!34037) (Cons!34037 (h!39457 Context!5150) (t!233192 List!34161)) )
))
(declare-fun zl!222 () List!34161)

(declare-fun toList!1978 ((InoxSet Context!5150)) List!34161)

(assert (=> b!2853590 (= res!1186200 (= (toList!1978 z!809) zl!222))))

(declare-fun b!2853591 () Bool)

(declare-fun res!1186199 () Bool)

(declare-fun e!1807900 () Bool)

(assert (=> b!2853591 (=> (not res!1186199) (not e!1807900))))

(declare-fun e!1807904 () Bool)

(assert (=> b!2853591 (= res!1186199 e!1807904)))

(declare-fun res!1186198 () Bool)

(assert (=> b!2853591 (=> res!1186198 e!1807904)))

(declare-fun lt!1013797 () Bool)

(assert (=> b!2853591 (= res!1186198 (not lt!1013797))))

(declare-fun b!2853592 () Bool)

(assert (=> b!2853592 (= e!1807907 e!1807900)))

(declare-fun res!1186196 () Bool)

(assert (=> b!2853592 (=> (not res!1186196) (not e!1807900))))

(declare-fun e!1807903 () Bool)

(assert (=> b!2853592 (= res!1186196 e!1807903)))

(declare-fun res!1186195 () Bool)

(assert (=> b!2853592 (=> res!1186195 e!1807903)))

(assert (=> b!2853592 (= res!1186195 lt!1013797)))

(declare-datatypes ((List!34162 0))(
  ( (Nil!34038) (Cons!34038 (h!39458 C!17312) (t!233193 List!34162)) )
))
(declare-fun prefix!862 () List!34162)

(declare-fun prefixMatch!873 (Regex!8565 List!34162) Bool)

(assert (=> b!2853592 (= lt!1013797 (prefixMatch!873 r!5723 prefix!862))))

(declare-fun b!2853593 () Bool)

(declare-fun res!1186194 () Bool)

(assert (=> b!2853593 (=> (not res!1186194) (not e!1807907))))

(declare-fun unfocusZipper!237 (List!34161) Regex!8565)

(assert (=> b!2853593 (= res!1186194 (= r!5723 (unfocusZipper!237 zl!222)))))

(declare-fun b!2853594 () Bool)

(declare-fun tp_is_empty!14867 () Bool)

(assert (=> b!2853594 (= e!1807901 tp_is_empty!14867)))

(declare-fun b!2853595 () Bool)

(declare-fun tp!917262 () Bool)

(assert (=> b!2853595 (= e!1807901 tp!917262)))

(declare-fun b!2853596 () Bool)

(declare-fun tp!917260 () Bool)

(assert (=> b!2853596 (= e!1807902 (and tp_is_empty!14867 tp!917260))))

(declare-fun setIsEmpty!25254 () Bool)

(assert (=> setIsEmpty!25254 setRes!25254))

(declare-fun tp!917266 () Bool)

(declare-fun e!1807905 () Bool)

(declare-fun setElem!25254 () Context!5150)

(declare-fun setNonEmpty!25254 () Bool)

(declare-fun inv!46049 (Context!5150) Bool)

(assert (=> setNonEmpty!25254 (= setRes!25254 (and tp!917266 (inv!46049 setElem!25254) e!1807905))))

(declare-fun setRest!25254 () (InoxSet Context!5150))

(assert (=> setNonEmpty!25254 (= z!809 ((_ map or) (store ((as const (Array Context!5150 Bool)) false) setElem!25254 true) setRest!25254))))

(declare-fun b!2853597 () Bool)

(declare-fun prefixMatchZipper!297 ((InoxSet Context!5150) List!34162) Bool)

(assert (=> b!2853597 (= e!1807900 (not (= lt!1013797 (prefixMatchZipper!297 z!809 prefix!862))))))

(declare-fun b!2853598 () Bool)

(assert (=> b!2853598 (= e!1807903 (not (prefixMatchZipper!297 z!809 prefix!862)))))

(declare-fun e!1807908 () Bool)

(declare-fun b!2853599 () Bool)

(declare-fun tp!917263 () Bool)

(assert (=> b!2853599 (= e!1807906 (and (inv!46049 (h!39457 zl!222)) e!1807908 tp!917263))))

(declare-fun b!2853600 () Bool)

(declare-fun tp!917267 () Bool)

(assert (=> b!2853600 (= e!1807905 tp!917267)))

(declare-fun b!2853601 () Bool)

(assert (=> b!2853601 (= e!1807904 (prefixMatchZipper!297 z!809 prefix!862))))

(declare-fun b!2853602 () Bool)

(declare-fun tp!917265 () Bool)

(declare-fun tp!917259 () Bool)

(assert (=> b!2853602 (= e!1807901 (and tp!917265 tp!917259))))

(declare-fun b!2853603 () Bool)

(declare-fun tp!917268 () Bool)

(declare-fun tp!917264 () Bool)

(assert (=> b!2853603 (= e!1807901 (and tp!917268 tp!917264))))

(declare-fun b!2853604 () Bool)

(declare-fun tp!917261 () Bool)

(assert (=> b!2853604 (= e!1807908 tp!917261)))

(assert (= (and start!277914 res!1186197) b!2853590))

(assert (= (and b!2853590 res!1186200) b!2853593))

(assert (= (and b!2853593 res!1186194) b!2853592))

(assert (= (and b!2853592 (not res!1186195)) b!2853598))

(assert (= (and b!2853592 res!1186196) b!2853591))

(assert (= (and b!2853591 (not res!1186198)) b!2853601))

(assert (= (and b!2853591 res!1186199) b!2853597))

(get-info :version)

(assert (= (and start!277914 ((_ is ElementMatch!8565) r!5723)) b!2853594))

(assert (= (and start!277914 ((_ is Concat!13886) r!5723)) b!2853602))

(assert (= (and start!277914 ((_ is Star!8565) r!5723)) b!2853595))

(assert (= (and start!277914 ((_ is Union!8565) r!5723)) b!2853603))

(assert (= (and start!277914 condSetEmpty!25254) setIsEmpty!25254))

(assert (= (and start!277914 (not condSetEmpty!25254)) setNonEmpty!25254))

(assert (= setNonEmpty!25254 b!2853600))

(assert (= b!2853599 b!2853604))

(assert (= (and start!277914 ((_ is Cons!34037) zl!222)) b!2853599))

(assert (= (and start!277914 ((_ is Cons!34038) prefix!862)) b!2853596))

(declare-fun m!3278095 () Bool)

(assert (=> b!2853593 m!3278095))

(declare-fun m!3278097 () Bool)

(assert (=> b!2853598 m!3278097))

(assert (=> b!2853597 m!3278097))

(declare-fun m!3278099 () Bool)

(assert (=> b!2853599 m!3278099))

(assert (=> b!2853601 m!3278097))

(declare-fun m!3278101 () Bool)

(assert (=> b!2853592 m!3278101))

(declare-fun m!3278103 () Bool)

(assert (=> start!277914 m!3278103))

(declare-fun m!3278105 () Bool)

(assert (=> setNonEmpty!25254 m!3278105))

(declare-fun m!3278107 () Bool)

(assert (=> b!2853590 m!3278107))

(check-sat (not b!2853593) (not b!2853600) (not start!277914) (not b!2853590) (not b!2853597) (not b!2853598) (not b!2853599) (not b!2853596) (not b!2853602) (not b!2853603) (not setNonEmpty!25254) tp_is_empty!14867 (not b!2853595) (not b!2853604) (not b!2853592) (not b!2853601))
(check-sat)
