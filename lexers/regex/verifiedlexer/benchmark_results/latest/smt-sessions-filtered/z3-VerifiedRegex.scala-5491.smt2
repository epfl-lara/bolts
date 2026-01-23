; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277674 () Bool)

(assert start!277674)

(declare-fun b!2850982 () Bool)

(assert (=> b!2850982 true))

(assert (=> b!2850982 true))

(declare-fun b!2850980 () Bool)

(declare-fun e!1806446 () Bool)

(declare-fun tp_is_empty!14811 () Bool)

(assert (=> b!2850980 (= e!1806446 tp_is_empty!14811)))

(declare-fun b!2850981 () Bool)

(declare-fun res!1185111 () Bool)

(declare-fun e!1806439 () Bool)

(assert (=> b!2850981 (=> (not res!1185111) (not e!1806439))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17256 0))(
  ( (C!17257 (val!10662 Int)) )
))
(declare-datatypes ((Regex!8537 0))(
  ( (ElementMatch!8537 (c!459728 C!17256)) (Concat!13858 (regOne!17586 Regex!8537) (regTwo!17586 Regex!8537)) (EmptyExpr!8537) (Star!8537 (reg!8866 Regex!8537)) (EmptyLang!8537) (Union!8537 (regOne!17587 Regex!8537) (regTwo!17587 Regex!8537)) )
))
(declare-datatypes ((List!34076 0))(
  ( (Nil!33952) (Cons!33952 (h!39372 Regex!8537) (t!233107 List!34076)) )
))
(declare-datatypes ((Context!5094 0))(
  ( (Context!5095 (exprs!3047 List!34076)) )
))
(declare-fun z!809 () (InoxSet Context!5094))

(declare-datatypes ((List!34077 0))(
  ( (Nil!33953) (Cons!33953 (h!39373 C!17256) (t!233108 List!34077)) )
))
(declare-fun prefix!862 () List!34077)

(declare-fun prefixMatchZipper!269 ((InoxSet Context!5094) List!34077) Bool)

(assert (=> b!2850981 (= res!1185111 (not (prefixMatchZipper!269 z!809 prefix!862)))))

(declare-fun e!1806448 () Bool)

(assert (=> b!2850982 (= e!1806439 (not e!1806448))))

(declare-fun res!1185108 () Bool)

(assert (=> b!2850982 (=> res!1185108 e!1806448)))

(declare-fun lambda!104827 () Int)

(declare-fun Exists!1265 (Int) Bool)

(assert (=> b!2850982 (= res!1185108 (not (Exists!1265 lambda!104827)))))

(assert (=> b!2850982 (Exists!1265 lambda!104827)))

(declare-datatypes ((Unit!47649 0))(
  ( (Unit!47650) )
))
(declare-fun lt!1013447 () Unit!47649)

(declare-fun r!5723 () Regex!8537)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!313 (Regex!8537 List!34077) Unit!47649)

(assert (=> b!2850982 (= lt!1013447 (lemmaPrefixMatchThenExistsStringThatMatches!313 r!5723 prefix!862))))

(declare-fun b!2850983 () Bool)

(declare-fun e!1806444 () Bool)

(assert (=> b!2850983 (= e!1806448 e!1806444)))

(declare-fun res!1185109 () Bool)

(assert (=> b!2850983 (=> res!1185109 e!1806444)))

(declare-fun lt!1013449 () List!34077)

(declare-fun matchR!3670 (Regex!8537 List!34077) Bool)

(assert (=> b!2850983 (= res!1185109 (not (matchR!3670 r!5723 lt!1013449)))))

(declare-fun pickWitness!286 (Int) List!34077)

(assert (=> b!2850983 (= lt!1013449 (pickWitness!286 lambda!104827))))

(declare-fun b!2850984 () Bool)

(declare-fun tp!915957 () Bool)

(declare-fun tp!915955 () Bool)

(assert (=> b!2850984 (= e!1806446 (and tp!915957 tp!915955))))

(declare-fun b!2850985 () Bool)

(declare-fun e!1806445 () Bool)

(declare-fun tp!915960 () Bool)

(assert (=> b!2850985 (= e!1806445 tp!915960)))

(declare-fun b!2850986 () Bool)

(declare-fun e!1806440 () Bool)

(assert (=> b!2850986 (= e!1806440 (not (prefixMatchZipper!269 z!809 prefix!862)))))

(declare-fun res!1185113 () Bool)

(declare-fun e!1806441 () Bool)

(assert (=> start!277674 (=> (not res!1185113) (not e!1806441))))

(declare-fun validRegex!3407 (Regex!8537) Bool)

(assert (=> start!277674 (= res!1185113 (validRegex!3407 r!5723))))

(assert (=> start!277674 e!1806441))

(assert (=> start!277674 e!1806446))

(declare-fun condSetEmpty!25114 () Bool)

(assert (=> start!277674 (= condSetEmpty!25114 (= z!809 ((as const (Array Context!5094 Bool)) false)))))

(declare-fun setRes!25114 () Bool)

(assert (=> start!277674 setRes!25114))

(declare-fun e!1806442 () Bool)

(assert (=> start!277674 e!1806442))

(declare-fun e!1806447 () Bool)

(assert (=> start!277674 e!1806447))

(declare-fun b!2850987 () Bool)

(assert (=> b!2850987 (= e!1806444 true)))

(declare-fun lt!1013448 () Bool)

(declare-fun isPrefix!2653 (List!34077 List!34077) Bool)

(assert (=> b!2850987 (= lt!1013448 (isPrefix!2653 prefix!862 lt!1013449))))

(declare-fun matchZipper!407 ((InoxSet Context!5094) List!34077) Bool)

(assert (=> b!2850987 (matchZipper!407 z!809 lt!1013449)))

(declare-fun lt!1013446 () Unit!47649)

(declare-datatypes ((List!34078 0))(
  ( (Nil!33954) (Cons!33954 (h!39374 Context!5094) (t!233109 List!34078)) )
))
(declare-fun zl!222 () List!34078)

(declare-fun theoremZipperRegexEquiv!95 ((InoxSet Context!5094) List!34078 Regex!8537 List!34077) Unit!47649)

(assert (=> b!2850987 (= lt!1013446 (theoremZipperRegexEquiv!95 z!809 zl!222 r!5723 lt!1013449))))

(declare-fun b!2850988 () Bool)

(declare-fun tp!915958 () Bool)

(declare-fun tp!915959 () Bool)

(assert (=> b!2850988 (= e!1806446 (and tp!915958 tp!915959))))

(declare-fun tp!915963 () Bool)

(declare-fun e!1806443 () Bool)

(declare-fun b!2850989 () Bool)

(declare-fun inv!45979 (Context!5094) Bool)

(assert (=> b!2850989 (= e!1806442 (and (inv!45979 (h!39374 zl!222)) e!1806443 tp!915963))))

(declare-fun b!2850990 () Bool)

(declare-fun tp!915956 () Bool)

(assert (=> b!2850990 (= e!1806443 tp!915956)))

(declare-fun b!2850991 () Bool)

(declare-fun res!1185115 () Bool)

(assert (=> b!2850991 (=> (not res!1185115) (not e!1806441))))

(declare-fun unfocusZipper!209 (List!34078) Regex!8537)

(assert (=> b!2850991 (= res!1185115 (= r!5723 (unfocusZipper!209 zl!222)))))

(declare-fun b!2850992 () Bool)

(declare-fun tp!915964 () Bool)

(assert (=> b!2850992 (= e!1806447 (and tp_is_empty!14811 tp!915964))))

(declare-fun b!2850993 () Bool)

(declare-fun res!1185110 () Bool)

(assert (=> b!2850993 (=> (not res!1185110) (not e!1806439))))

(declare-fun lt!1013445 () Bool)

(assert (=> b!2850993 (= res!1185110 lt!1013445)))

(declare-fun b!2850994 () Bool)

(declare-fun res!1185114 () Bool)

(assert (=> b!2850994 (=> (not res!1185114) (not e!1806441))))

(declare-fun toList!1950 ((InoxSet Context!5094)) List!34078)

(assert (=> b!2850994 (= res!1185114 (= (toList!1950 z!809) zl!222))))

(declare-fun b!2850995 () Bool)

(declare-fun tp!915961 () Bool)

(assert (=> b!2850995 (= e!1806446 tp!915961)))

(declare-fun setIsEmpty!25114 () Bool)

(assert (=> setIsEmpty!25114 setRes!25114))

(declare-fun b!2850996 () Bool)

(assert (=> b!2850996 (= e!1806441 e!1806439)))

(declare-fun res!1185116 () Bool)

(assert (=> b!2850996 (=> (not res!1185116) (not e!1806439))))

(assert (=> b!2850996 (= res!1185116 e!1806440)))

(declare-fun res!1185112 () Bool)

(assert (=> b!2850996 (=> res!1185112 e!1806440)))

(assert (=> b!2850996 (= res!1185112 lt!1013445)))

(declare-fun prefixMatch!845 (Regex!8537 List!34077) Bool)

(assert (=> b!2850996 (= lt!1013445 (prefixMatch!845 r!5723 prefix!862))))

(declare-fun setElem!25114 () Context!5094)

(declare-fun tp!915962 () Bool)

(declare-fun setNonEmpty!25114 () Bool)

(assert (=> setNonEmpty!25114 (= setRes!25114 (and tp!915962 (inv!45979 setElem!25114) e!1806445))))

(declare-fun setRest!25114 () (InoxSet Context!5094))

(assert (=> setNonEmpty!25114 (= z!809 ((_ map or) (store ((as const (Array Context!5094 Bool)) false) setElem!25114 true) setRest!25114))))

(assert (= (and start!277674 res!1185113) b!2850994))

(assert (= (and b!2850994 res!1185114) b!2850991))

(assert (= (and b!2850991 res!1185115) b!2850996))

(assert (= (and b!2850996 (not res!1185112)) b!2850986))

(assert (= (and b!2850996 res!1185116) b!2850993))

(assert (= (and b!2850993 res!1185110) b!2850981))

(assert (= (and b!2850981 res!1185111) b!2850982))

(assert (= (and b!2850982 (not res!1185108)) b!2850983))

(assert (= (and b!2850983 (not res!1185109)) b!2850987))

(get-info :version)

(assert (= (and start!277674 ((_ is ElementMatch!8537) r!5723)) b!2850980))

(assert (= (and start!277674 ((_ is Concat!13858) r!5723)) b!2850988))

(assert (= (and start!277674 ((_ is Star!8537) r!5723)) b!2850995))

(assert (= (and start!277674 ((_ is Union!8537) r!5723)) b!2850984))

(assert (= (and start!277674 condSetEmpty!25114) setIsEmpty!25114))

(assert (= (and start!277674 (not condSetEmpty!25114)) setNonEmpty!25114))

(assert (= setNonEmpty!25114 b!2850985))

(assert (= b!2850989 b!2850990))

(assert (= (and start!277674 ((_ is Cons!33954) zl!222)) b!2850989))

(assert (= (and start!277674 ((_ is Cons!33953) prefix!862)) b!2850992))

(declare-fun m!3276849 () Bool)

(assert (=> b!2850991 m!3276849))

(declare-fun m!3276851 () Bool)

(assert (=> start!277674 m!3276851))

(declare-fun m!3276853 () Bool)

(assert (=> b!2850986 m!3276853))

(declare-fun m!3276855 () Bool)

(assert (=> b!2850989 m!3276855))

(declare-fun m!3276857 () Bool)

(assert (=> setNonEmpty!25114 m!3276857))

(assert (=> b!2850981 m!3276853))

(declare-fun m!3276859 () Bool)

(assert (=> b!2850987 m!3276859))

(declare-fun m!3276861 () Bool)

(assert (=> b!2850987 m!3276861))

(declare-fun m!3276863 () Bool)

(assert (=> b!2850987 m!3276863))

(declare-fun m!3276865 () Bool)

(assert (=> b!2850982 m!3276865))

(assert (=> b!2850982 m!3276865))

(declare-fun m!3276867 () Bool)

(assert (=> b!2850982 m!3276867))

(declare-fun m!3276869 () Bool)

(assert (=> b!2850996 m!3276869))

(declare-fun m!3276871 () Bool)

(assert (=> b!2850983 m!3276871))

(declare-fun m!3276873 () Bool)

(assert (=> b!2850983 m!3276873))

(declare-fun m!3276875 () Bool)

(assert (=> b!2850994 m!3276875))

(check-sat (not start!277674) (not b!2850995) (not b!2850989) (not b!2850988) tp_is_empty!14811 (not b!2850985) (not b!2850986) (not b!2850983) (not b!2850981) (not b!2850996) (not b!2850992) (not b!2850991) (not b!2850987) (not b!2850984) (not b!2850990) (not b!2850994) (not b!2850982) (not setNonEmpty!25114))
(check-sat)
