; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277642 () Bool)

(assert start!277642)

(declare-fun b!2850155 () Bool)

(assert (=> b!2850155 true))

(declare-fun condSetEmpty!25060 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17224 0))(
  ( (C!17225 (val!10646 Int)) )
))
(declare-datatypes ((Regex!8521 0))(
  ( (ElementMatch!8521 (c!459712 C!17224)) (Concat!13842 (regOne!17554 Regex!8521) (regTwo!17554 Regex!8521)) (EmptyExpr!8521) (Star!8521 (reg!8850 Regex!8521)) (EmptyLang!8521) (Union!8521 (regOne!17555 Regex!8521) (regTwo!17555 Regex!8521)) )
))
(declare-datatypes ((List!34028 0))(
  ( (Nil!33904) (Cons!33904 (h!39324 Regex!8521) (t!233059 List!34028)) )
))
(declare-datatypes ((Context!5062 0))(
  ( (Context!5063 (exprs!3031 List!34028)) )
))
(declare-fun z!809 () (InoxSet Context!5062))

(assert (=> b!2850155 (= condSetEmpty!25060 (= z!809 ((as const (Array Context!5062 Bool)) false)))))

(declare-fun setRes!25060 () Bool)

(assert (=> b!2850155 setRes!25060))

(declare-fun setIsEmpty!25060 () Bool)

(assert (=> setIsEmpty!25060 setRes!25060))

(declare-fun setNonEmpty!25060 () Bool)

(assert (=> setNonEmpty!25060 (= setRes!25060 true)))

(declare-fun setElem!25060 () Context!5062)

(declare-fun setRest!25060 () (InoxSet Context!5062))

(assert (=> setNonEmpty!25060 (= z!809 ((_ map or) (store ((as const (Array Context!5062 Bool)) false) setElem!25060 true) setRest!25060))))

(assert (= (and b!2850155 condSetEmpty!25060) setIsEmpty!25060))

(assert (= (and b!2850155 (not condSetEmpty!25060)) setNonEmpty!25060))

(declare-fun setIsEmpty!25057 () Bool)

(declare-fun setRes!25057 () Bool)

(assert (=> setIsEmpty!25057 setRes!25057))

(declare-fun b!2850144 () Bool)

(declare-fun e!1805969 () Bool)

(declare-fun tp!915475 () Bool)

(assert (=> b!2850144 (= e!1805969 tp!915475)))

(declare-fun b!2850145 () Bool)

(declare-fun res!1184705 () Bool)

(declare-fun e!1805976 () Bool)

(assert (=> b!2850145 (=> (not res!1184705) (not e!1805976))))

(declare-fun r!5723 () Regex!8521)

(declare-datatypes ((List!34029 0))(
  ( (Nil!33905) (Cons!33905 (h!39325 Context!5062) (t!233060 List!34029)) )
))
(declare-fun zl!222 () List!34029)

(declare-fun unfocusZipper!193 (List!34029) Regex!8521)

(assert (=> b!2850145 (= res!1184705 (= r!5723 (unfocusZipper!193 zl!222)))))

(declare-fun b!2850146 () Bool)

(declare-fun res!1184707 () Bool)

(assert (=> b!2850146 (=> (not res!1184707) (not e!1805976))))

(declare-fun toList!1934 ((InoxSet Context!5062)) List!34029)

(assert (=> b!2850146 (= res!1184707 (= (toList!1934 z!809) zl!222))))

(declare-fun b!2850147 () Bool)

(declare-fun e!1805975 () Bool)

(declare-fun tp_is_empty!14779 () Bool)

(declare-fun tp!915476 () Bool)

(assert (=> b!2850147 (= e!1805975 (and tp_is_empty!14779 tp!915476))))

(declare-fun b!2850148 () Bool)

(declare-fun e!1805972 () Bool)

(declare-fun tp!915477 () Bool)

(assert (=> b!2850148 (= e!1805972 tp!915477)))

(declare-fun b!2850149 () Bool)

(declare-fun e!1805970 () Bool)

(declare-fun tp!915478 () Bool)

(declare-fun tp!915481 () Bool)

(assert (=> b!2850149 (= e!1805970 (and tp!915478 tp!915481))))

(declare-fun b!2850150 () Bool)

(declare-fun res!1184708 () Bool)

(assert (=> b!2850150 (=> (not res!1184708) (not e!1805976))))

(declare-datatypes ((List!34030 0))(
  ( (Nil!33906) (Cons!33906 (h!39326 C!17224) (t!233061 List!34030)) )
))
(declare-fun prefix!862 () List!34030)

(declare-fun prefixMatchZipper!253 ((InoxSet Context!5062) List!34030) Bool)

(assert (=> b!2850150 (= res!1184708 (prefixMatchZipper!253 z!809 prefix!862))))

(declare-fun tp!915484 () Bool)

(declare-fun setElem!25057 () Context!5062)

(declare-fun setNonEmpty!25057 () Bool)

(declare-fun inv!45939 (Context!5062) Bool)

(assert (=> setNonEmpty!25057 (= setRes!25057 (and tp!915484 (inv!45939 setElem!25057) e!1805969))))

(declare-fun setRest!25057 () (InoxSet Context!5062))

(assert (=> setNonEmpty!25057 (= z!809 ((_ map or) (store ((as const (Array Context!5062 Bool)) false) setElem!25057 true) setRest!25057))))

(declare-fun b!2850151 () Bool)

(assert (=> b!2850151 (= e!1805970 tp_is_empty!14779)))

(declare-fun b!2850152 () Bool)

(declare-fun e!1805971 () Bool)

(declare-fun e!1805974 () Bool)

(assert (=> b!2850152 (= e!1805971 e!1805974)))

(declare-fun res!1184709 () Bool)

(assert (=> b!2850152 (=> res!1184709 e!1805974)))

(declare-fun lt!1013316 () List!34030)

(declare-fun matchZipper!403 ((InoxSet Context!5062) List!34030) Bool)

(assert (=> b!2850152 (= res!1184709 (not (matchZipper!403 z!809 lt!1013316)))))

(declare-fun lambda!104751 () Int)

(declare-fun pickWitness!278 (Int) List!34030)

(assert (=> b!2850152 (= lt!1013316 (pickWitness!278 lambda!104751))))

(declare-fun res!1184704 () Bool)

(assert (=> start!277642 (=> (not res!1184704) (not e!1805976))))

(declare-fun validRegex!3391 (Regex!8521) Bool)

(assert (=> start!277642 (= res!1184704 (validRegex!3391 r!5723))))

(assert (=> start!277642 e!1805976))

(assert (=> start!277642 e!1805970))

(declare-fun condSetEmpty!25057 () Bool)

(assert (=> start!277642 (= condSetEmpty!25057 (= z!809 ((as const (Array Context!5062 Bool)) false)))))

(assert (=> start!277642 setRes!25057))

(declare-fun e!1805973 () Bool)

(assert (=> start!277642 e!1805973))

(assert (=> start!277642 e!1805975))

(declare-fun tp!915479 () Bool)

(declare-fun b!2850153 () Bool)

(assert (=> b!2850153 (= e!1805973 (and (inv!45939 (h!39325 zl!222)) e!1805972 tp!915479))))

(declare-fun b!2850154 () Bool)

(declare-fun res!1184706 () Bool)

(assert (=> b!2850154 (=> (not res!1184706) (not e!1805976))))

(declare-fun prefixMatch!829 (Regex!8521 List!34030) Bool)

(assert (=> b!2850154 (= res!1184706 (not (prefixMatch!829 r!5723 prefix!862)))))

(assert (=> b!2850155 (= e!1805976 (not e!1805971))))

(declare-fun res!1184710 () Bool)

(assert (=> b!2850155 (=> res!1184710 e!1805971)))

(declare-fun Exists!1253 (Int) Bool)

(assert (=> b!2850155 (= res!1184710 (not (Exists!1253 lambda!104751)))))

(assert (=> b!2850155 (Exists!1253 lambda!104751)))

(declare-datatypes ((Unit!47625 0))(
  ( (Unit!47626) )
))
(declare-fun lt!1013314 () Unit!47625)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!301 ((InoxSet Context!5062) List!34030) Unit!47625)

(assert (=> b!2850155 (= lt!1013314 (lemmaPrefixMatchThenExistsStringThatMatches!301 z!809 prefix!862))))

(declare-fun b!2850156 () Bool)

(declare-fun tp!915483 () Bool)

(declare-fun tp!915482 () Bool)

(assert (=> b!2850156 (= e!1805970 (and tp!915483 tp!915482))))

(declare-fun b!2850157 () Bool)

(assert (=> b!2850157 (= e!1805974 true)))

(declare-fun lt!1013315 () Bool)

(declare-fun isPrefix!2651 (List!34030 List!34030) Bool)

(assert (=> b!2850157 (= lt!1013315 (isPrefix!2651 prefix!862 lt!1013316))))

(declare-fun matchR!3664 (Regex!8521 List!34030) Bool)

(assert (=> b!2850157 (matchR!3664 r!5723 lt!1013316)))

(declare-fun lt!1013317 () Unit!47625)

(declare-fun theoremZipperRegexEquiv!91 ((InoxSet Context!5062) List!34029 Regex!8521 List!34030) Unit!47625)

(assert (=> b!2850157 (= lt!1013317 (theoremZipperRegexEquiv!91 z!809 zl!222 r!5723 lt!1013316))))

(declare-fun b!2850158 () Bool)

(declare-fun tp!915480 () Bool)

(assert (=> b!2850158 (= e!1805970 tp!915480)))

(assert (= (and start!277642 res!1184704) b!2850146))

(assert (= (and b!2850146 res!1184707) b!2850145))

(assert (= (and b!2850145 res!1184705) b!2850154))

(assert (= (and b!2850154 res!1184706) b!2850150))

(assert (= (and b!2850150 res!1184708) b!2850155))

(assert (= (and b!2850155 (not res!1184710)) b!2850152))

(assert (= (and b!2850152 (not res!1184709)) b!2850157))

(get-info :version)

(assert (= (and start!277642 ((_ is ElementMatch!8521) r!5723)) b!2850151))

(assert (= (and start!277642 ((_ is Concat!13842) r!5723)) b!2850156))

(assert (= (and start!277642 ((_ is Star!8521) r!5723)) b!2850158))

(assert (= (and start!277642 ((_ is Union!8521) r!5723)) b!2850149))

(assert (= (and start!277642 condSetEmpty!25057) setIsEmpty!25057))

(assert (= (and start!277642 (not condSetEmpty!25057)) setNonEmpty!25057))

(assert (= setNonEmpty!25057 b!2850144))

(assert (= b!2850153 b!2850148))

(assert (= (and start!277642 ((_ is Cons!33905) zl!222)) b!2850153))

(assert (= (and start!277642 ((_ is Cons!33906) prefix!862)) b!2850147))

(declare-fun m!3276525 () Bool)

(assert (=> b!2850154 m!3276525))

(declare-fun m!3276527 () Bool)

(assert (=> setNonEmpty!25057 m!3276527))

(declare-fun m!3276529 () Bool)

(assert (=> b!2850155 m!3276529))

(assert (=> b!2850155 m!3276529))

(declare-fun m!3276531 () Bool)

(assert (=> b!2850155 m!3276531))

(declare-fun m!3276533 () Bool)

(assert (=> b!2850146 m!3276533))

(declare-fun m!3276535 () Bool)

(assert (=> b!2850145 m!3276535))

(declare-fun m!3276537 () Bool)

(assert (=> b!2850153 m!3276537))

(declare-fun m!3276539 () Bool)

(assert (=> start!277642 m!3276539))

(declare-fun m!3276541 () Bool)

(assert (=> b!2850157 m!3276541))

(declare-fun m!3276543 () Bool)

(assert (=> b!2850157 m!3276543))

(declare-fun m!3276545 () Bool)

(assert (=> b!2850157 m!3276545))

(declare-fun m!3276547 () Bool)

(assert (=> b!2850150 m!3276547))

(declare-fun m!3276549 () Bool)

(assert (=> b!2850152 m!3276549))

(declare-fun m!3276551 () Bool)

(assert (=> b!2850152 m!3276551))

(check-sat (not b!2850155) (not b!2850147) (not b!2850152) (not b!2850148) (not setNonEmpty!25057) (not b!2850149) (not b!2850150) (not start!277642) (not b!2850158) (not b!2850146) (not b!2850156) (not b!2850144) (not setNonEmpty!25060) (not b!2850154) tp_is_empty!14779 (not b!2850145) (not b!2850153) (not b!2850157))
(check-sat)
