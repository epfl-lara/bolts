; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277910 () Bool)

(assert start!277910)

(declare-fun b!2853509 () Bool)

(assert (=> b!2853509 true))

(assert (=> b!2853509 true))

(declare-fun setIsEmpty!25248 () Bool)

(declare-fun setRes!25248 () Bool)

(assert (=> setIsEmpty!25248 setRes!25248))

(declare-fun b!2853494 () Bool)

(declare-fun e!1807847 () Bool)

(declare-fun tp!917201 () Bool)

(declare-fun tp!917206 () Bool)

(assert (=> b!2853494 (= e!1807847 (and tp!917201 tp!917206))))

(declare-fun b!2853495 () Bool)

(declare-fun tp!917208 () Bool)

(declare-fun tp!917199 () Bool)

(assert (=> b!2853495 (= e!1807847 (and tp!917208 tp!917199))))

(declare-fun res!1186151 () Bool)

(declare-fun e!1807848 () Bool)

(assert (=> start!277910 (=> (not res!1186151) (not e!1807848))))

(declare-datatypes ((C!17308 0))(
  ( (C!17309 (val!10688 Int)) )
))
(declare-datatypes ((Regex!8563 0))(
  ( (ElementMatch!8563 (c!459922 C!17308)) (Concat!13884 (regOne!17638 Regex!8563) (regTwo!17638 Regex!8563)) (EmptyExpr!8563) (Star!8563 (reg!8892 Regex!8563)) (EmptyLang!8563) (Union!8563 (regOne!17639 Regex!8563) (regTwo!17639 Regex!8563)) )
))
(declare-fun r!5723 () Regex!8563)

(declare-fun validRegex!3433 (Regex!8563) Bool)

(assert (=> start!277910 (= res!1186151 (validRegex!3433 r!5723))))

(assert (=> start!277910 e!1807848))

(assert (=> start!277910 e!1807847))

(declare-fun condSetEmpty!25248 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!34154 0))(
  ( (Nil!34030) (Cons!34030 (h!39450 Regex!8563) (t!233185 List!34154)) )
))
(declare-datatypes ((Context!5146 0))(
  ( (Context!5147 (exprs!3073 List!34154)) )
))
(declare-fun z!809 () (InoxSet Context!5146))

(assert (=> start!277910 (= condSetEmpty!25248 (= z!809 ((as const (Array Context!5146 Bool)) false)))))

(assert (=> start!277910 setRes!25248))

(declare-fun e!1807849 () Bool)

(assert (=> start!277910 e!1807849))

(declare-fun e!1807845 () Bool)

(assert (=> start!277910 e!1807845))

(declare-fun tp!917203 () Bool)

(declare-fun b!2853496 () Bool)

(declare-fun e!1807846 () Bool)

(declare-datatypes ((List!34155 0))(
  ( (Nil!34031) (Cons!34031 (h!39451 Context!5146) (t!233186 List!34155)) )
))
(declare-fun zl!222 () List!34155)

(declare-fun inv!46044 (Context!5146) Bool)

(assert (=> b!2853496 (= e!1807849 (and (inv!46044 (h!39451 zl!222)) e!1807846 tp!917203))))

(declare-fun b!2853497 () Bool)

(declare-fun res!1186154 () Bool)

(declare-fun e!1807854 () Bool)

(assert (=> b!2853497 (=> (not res!1186154) (not e!1807854))))

(declare-datatypes ((List!34156 0))(
  ( (Nil!34032) (Cons!34032 (h!39452 C!17308) (t!233187 List!34156)) )
))
(declare-fun prefix!862 () List!34156)

(declare-fun prefixMatchZipper!295 ((InoxSet Context!5146) List!34156) Bool)

(assert (=> b!2853497 (= res!1186154 (not (prefixMatchZipper!295 z!809 prefix!862)))))

(declare-fun tp!917202 () Bool)

(declare-fun setNonEmpty!25248 () Bool)

(declare-fun setElem!25248 () Context!5146)

(declare-fun e!1807852 () Bool)

(assert (=> setNonEmpty!25248 (= setRes!25248 (and tp!917202 (inv!46044 setElem!25248) e!1807852))))

(declare-fun setRest!25248 () (InoxSet Context!5146))

(assert (=> setNonEmpty!25248 (= z!809 ((_ map or) (store ((as const (Array Context!5146 Bool)) false) setElem!25248 true) setRest!25248))))

(declare-fun b!2853498 () Bool)

(declare-fun e!1807850 () Bool)

(assert (=> b!2853498 (= e!1807850 (not (prefixMatchZipper!295 z!809 prefix!862)))))

(declare-fun b!2853499 () Bool)

(declare-fun tp!917205 () Bool)

(assert (=> b!2853499 (= e!1807847 tp!917205)))

(declare-fun b!2853500 () Bool)

(assert (=> b!2853500 (= e!1807848 e!1807854)))

(declare-fun res!1186157 () Bool)

(assert (=> b!2853500 (=> (not res!1186157) (not e!1807854))))

(assert (=> b!2853500 (= res!1186157 e!1807850)))

(declare-fun res!1186150 () Bool)

(assert (=> b!2853500 (=> res!1186150 e!1807850)))

(declare-fun lt!1013788 () Bool)

(assert (=> b!2853500 (= res!1186150 lt!1013788)))

(declare-fun prefixMatch!871 (Regex!8563 List!34156) Bool)

(assert (=> b!2853500 (= lt!1013788 (prefixMatch!871 r!5723 prefix!862))))

(declare-fun b!2853501 () Bool)

(declare-fun e!1807853 () Bool)

(assert (=> b!2853501 (= e!1807853 false)))

(assert (=> b!2853501 false))

(declare-fun lt!1013790 () List!34156)

(declare-datatypes ((Unit!47689 0))(
  ( (Unit!47690) )
))
(declare-fun lt!1013791 () Unit!47689)

(declare-fun lemmaMatchThenPrefixMatchZipper!4 ((InoxSet Context!5146) List!34156 List!34156) Unit!47689)

(assert (=> b!2853501 (= lt!1013791 (lemmaMatchThenPrefixMatchZipper!4 z!809 prefix!862 lt!1013790))))

(declare-fun matchZipper!421 ((InoxSet Context!5146) List!34156) Bool)

(assert (=> b!2853501 (matchZipper!421 z!809 lt!1013790)))

(declare-fun lt!1013789 () Unit!47689)

(declare-fun theoremZipperRegexEquiv!107 ((InoxSet Context!5146) List!34155 Regex!8563 List!34156) Unit!47689)

(assert (=> b!2853501 (= lt!1013789 (theoremZipperRegexEquiv!107 z!809 zl!222 r!5723 lt!1013790))))

(declare-fun b!2853502 () Bool)

(declare-fun tp_is_empty!14863 () Bool)

(declare-fun tp!917200 () Bool)

(assert (=> b!2853502 (= e!1807845 (and tp_is_empty!14863 tp!917200))))

(declare-fun b!2853503 () Bool)

(declare-fun res!1186153 () Bool)

(assert (=> b!2853503 (=> (not res!1186153) (not e!1807848))))

(declare-fun toList!1976 ((InoxSet Context!5146)) List!34155)

(assert (=> b!2853503 (= res!1186153 (= (toList!1976 z!809) zl!222))))

(declare-fun b!2853504 () Bool)

(assert (=> b!2853504 (= e!1807847 tp_is_empty!14863)))

(declare-fun b!2853505 () Bool)

(declare-fun tp!917207 () Bool)

(assert (=> b!2853505 (= e!1807846 tp!917207)))

(declare-fun b!2853506 () Bool)

(declare-fun e!1807851 () Bool)

(assert (=> b!2853506 (= e!1807851 e!1807853)))

(declare-fun res!1186156 () Bool)

(assert (=> b!2853506 (=> res!1186156 e!1807853)))

(declare-fun matchR!3684 (Regex!8563 List!34156) Bool)

(assert (=> b!2853506 (= res!1186156 (not (matchR!3684 r!5723 lt!1013790)))))

(declare-fun lambda!105015 () Int)

(declare-fun pickWitness!302 (Int) List!34156)

(assert (=> b!2853506 (= lt!1013790 (pickWitness!302 lambda!105015))))

(declare-fun b!2853507 () Bool)

(declare-fun tp!917204 () Bool)

(assert (=> b!2853507 (= e!1807852 tp!917204)))

(declare-fun b!2853508 () Bool)

(declare-fun res!1186155 () Bool)

(assert (=> b!2853508 (=> (not res!1186155) (not e!1807854))))

(assert (=> b!2853508 (= res!1186155 lt!1013788)))

(assert (=> b!2853509 (= e!1807854 (not e!1807851))))

(declare-fun res!1186152 () Bool)

(assert (=> b!2853509 (=> res!1186152 e!1807851)))

(declare-fun Exists!1285 (Int) Bool)

(assert (=> b!2853509 (= res!1186152 (not (Exists!1285 lambda!105015)))))

(assert (=> b!2853509 (Exists!1285 lambda!105015)))

(declare-fun lt!1013787 () Unit!47689)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!333 (Regex!8563 List!34156) Unit!47689)

(assert (=> b!2853509 (= lt!1013787 (lemmaPrefixMatchThenExistsStringThatMatches!333 r!5723 prefix!862))))

(declare-fun b!2853510 () Bool)

(declare-fun res!1186158 () Bool)

(assert (=> b!2853510 (=> (not res!1186158) (not e!1807848))))

(declare-fun unfocusZipper!235 (List!34155) Regex!8563)

(assert (=> b!2853510 (= res!1186158 (= r!5723 (unfocusZipper!235 zl!222)))))

(assert (= (and start!277910 res!1186151) b!2853503))

(assert (= (and b!2853503 res!1186153) b!2853510))

(assert (= (and b!2853510 res!1186158) b!2853500))

(assert (= (and b!2853500 (not res!1186150)) b!2853498))

(assert (= (and b!2853500 res!1186157) b!2853508))

(assert (= (and b!2853508 res!1186155) b!2853497))

(assert (= (and b!2853497 res!1186154) b!2853509))

(assert (= (and b!2853509 (not res!1186152)) b!2853506))

(assert (= (and b!2853506 (not res!1186156)) b!2853501))

(get-info :version)

(assert (= (and start!277910 ((_ is ElementMatch!8563) r!5723)) b!2853504))

(assert (= (and start!277910 ((_ is Concat!13884) r!5723)) b!2853495))

(assert (= (and start!277910 ((_ is Star!8563) r!5723)) b!2853499))

(assert (= (and start!277910 ((_ is Union!8563) r!5723)) b!2853494))

(assert (= (and start!277910 condSetEmpty!25248) setIsEmpty!25248))

(assert (= (and start!277910 (not condSetEmpty!25248)) setNonEmpty!25248))

(assert (= setNonEmpty!25248 b!2853507))

(assert (= b!2853496 b!2853505))

(assert (= (and start!277910 ((_ is Cons!34031) zl!222)) b!2853496))

(assert (= (and start!277910 ((_ is Cons!34032) prefix!862)) b!2853502))

(declare-fun m!3278053 () Bool)

(assert (=> b!2853498 m!3278053))

(assert (=> b!2853497 m!3278053))

(declare-fun m!3278055 () Bool)

(assert (=> b!2853503 m!3278055))

(declare-fun m!3278057 () Bool)

(assert (=> b!2853509 m!3278057))

(assert (=> b!2853509 m!3278057))

(declare-fun m!3278059 () Bool)

(assert (=> b!2853509 m!3278059))

(declare-fun m!3278061 () Bool)

(assert (=> start!277910 m!3278061))

(declare-fun m!3278063 () Bool)

(assert (=> b!2853500 m!3278063))

(declare-fun m!3278065 () Bool)

(assert (=> b!2853510 m!3278065))

(declare-fun m!3278067 () Bool)

(assert (=> setNonEmpty!25248 m!3278067))

(declare-fun m!3278069 () Bool)

(assert (=> b!2853506 m!3278069))

(declare-fun m!3278071 () Bool)

(assert (=> b!2853506 m!3278071))

(declare-fun m!3278073 () Bool)

(assert (=> b!2853501 m!3278073))

(declare-fun m!3278075 () Bool)

(assert (=> b!2853501 m!3278075))

(declare-fun m!3278077 () Bool)

(assert (=> b!2853501 m!3278077))

(declare-fun m!3278079 () Bool)

(assert (=> b!2853496 m!3278079))

(check-sat (not b!2853505) (not b!2853502) (not b!2853494) (not b!2853501) tp_is_empty!14863 (not setNonEmpty!25248) (not b!2853496) (not b!2853498) (not b!2853495) (not b!2853503) (not b!2853509) (not b!2853506) (not b!2853497) (not b!2853499) (not b!2853507) (not b!2853500) (not start!277910) (not b!2853510))
(check-sat)
