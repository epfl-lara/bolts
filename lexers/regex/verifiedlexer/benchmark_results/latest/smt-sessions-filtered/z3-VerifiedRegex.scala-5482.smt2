; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277638 () Bool)

(assert start!277638)

(declare-fun b!2850039 () Bool)

(assert (=> b!2850039 true))

(declare-fun condSetEmpty!25048 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17220 0))(
  ( (C!17221 (val!10644 Int)) )
))
(declare-datatypes ((Regex!8519 0))(
  ( (ElementMatch!8519 (c!459710 C!17220)) (Concat!13840 (regOne!17550 Regex!8519) (regTwo!17550 Regex!8519)) (EmptyExpr!8519) (Star!8519 (reg!8848 Regex!8519)) (EmptyLang!8519) (Union!8519 (regOne!17551 Regex!8519) (regTwo!17551 Regex!8519)) )
))
(declare-datatypes ((List!34022 0))(
  ( (Nil!33898) (Cons!33898 (h!39318 Regex!8519) (t!233053 List!34022)) )
))
(declare-datatypes ((Context!5058 0))(
  ( (Context!5059 (exprs!3029 List!34022)) )
))
(declare-fun z!809 () (InoxSet Context!5058))

(assert (=> b!2850039 (= condSetEmpty!25048 (= z!809 ((as const (Array Context!5058 Bool)) false)))))

(declare-fun setRes!25048 () Bool)

(assert (=> b!2850039 setRes!25048))

(declare-fun setIsEmpty!25048 () Bool)

(assert (=> setIsEmpty!25048 setRes!25048))

(declare-fun setNonEmpty!25048 () Bool)

(assert (=> setNonEmpty!25048 (= setRes!25048 true)))

(declare-fun setElem!25048 () Context!5058)

(declare-fun setRest!25048 () (InoxSet Context!5058))

(assert (=> setNonEmpty!25048 (= z!809 ((_ map or) (store ((as const (Array Context!5058 Bool)) false) setElem!25048 true) setRest!25048))))

(assert (= (and b!2850039 condSetEmpty!25048) setIsEmpty!25048))

(assert (= (and b!2850039 (not condSetEmpty!25048)) setNonEmpty!25048))

(declare-fun b!2850034 () Bool)

(declare-fun res!1184654 () Bool)

(declare-fun e!1805912 () Bool)

(assert (=> b!2850034 (=> (not res!1184654) (not e!1805912))))

(declare-datatypes ((List!34023 0))(
  ( (Nil!33899) (Cons!33899 (h!39319 C!17220) (t!233054 List!34023)) )
))
(declare-fun prefix!862 () List!34023)

(declare-fun prefixMatchZipper!251 ((InoxSet Context!5058) List!34023) Bool)

(assert (=> b!2850034 (= res!1184654 (prefixMatchZipper!251 z!809 prefix!862))))

(declare-fun tp!915415 () Bool)

(declare-fun setElem!25045 () Context!5058)

(declare-fun e!1805914 () Bool)

(declare-fun setRes!25045 () Bool)

(declare-fun setNonEmpty!25045 () Bool)

(declare-fun inv!45934 (Context!5058) Bool)

(assert (=> setNonEmpty!25045 (= setRes!25045 (and tp!915415 (inv!45934 setElem!25045) e!1805914))))

(declare-fun setRest!25045 () (InoxSet Context!5058))

(assert (=> setNonEmpty!25045 (= z!809 ((_ map or) (store ((as const (Array Context!5058 Bool)) false) setElem!25045 true) setRest!25045))))

(declare-fun b!2850035 () Bool)

(declare-fun e!1805913 () Bool)

(declare-fun tp!915420 () Bool)

(assert (=> b!2850035 (= e!1805913 tp!915420)))

(declare-fun b!2850036 () Bool)

(declare-fun e!1805910 () Bool)

(assert (=> b!2850036 (= e!1805910 true)))

(declare-fun r!5723 () Regex!8519)

(declare-fun lt!1013291 () List!34023)

(declare-fun matchR!3662 (Regex!8519 List!34023) Bool)

(assert (=> b!2850036 (matchR!3662 r!5723 lt!1013291)))

(declare-datatypes ((Unit!47621 0))(
  ( (Unit!47622) )
))
(declare-fun lt!1013293 () Unit!47621)

(declare-datatypes ((List!34024 0))(
  ( (Nil!33900) (Cons!33900 (h!39320 Context!5058) (t!233055 List!34024)) )
))
(declare-fun zl!222 () List!34024)

(declare-fun theoremZipperRegexEquiv!89 ((InoxSet Context!5058) List!34024 Regex!8519 List!34023) Unit!47621)

(assert (=> b!2850036 (= lt!1013293 (theoremZipperRegexEquiv!89 z!809 zl!222 r!5723 lt!1013291))))

(declare-fun b!2850037 () Bool)

(declare-fun res!1184653 () Bool)

(assert (=> b!2850037 (=> (not res!1184653) (not e!1805912))))

(declare-fun toList!1932 ((InoxSet Context!5058)) List!34024)

(assert (=> b!2850037 (= res!1184653 (= (toList!1932 z!809) zl!222))))

(declare-fun e!1805909 () Bool)

(declare-fun tp!915417 () Bool)

(declare-fun b!2850038 () Bool)

(assert (=> b!2850038 (= e!1805909 (and (inv!45934 (h!39320 zl!222)) e!1805913 tp!915417))))

(declare-fun e!1805915 () Bool)

(assert (=> b!2850039 (= e!1805912 (not e!1805915))))

(declare-fun res!1184652 () Bool)

(assert (=> b!2850039 (=> res!1184652 e!1805915)))

(declare-fun lambda!104737 () Int)

(declare-fun Exists!1251 (Int) Bool)

(assert (=> b!2850039 (= res!1184652 (not (Exists!1251 lambda!104737)))))

(assert (=> b!2850039 (Exists!1251 lambda!104737)))

(declare-fun lt!1013292 () Unit!47621)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!299 ((InoxSet Context!5058) List!34023) Unit!47621)

(assert (=> b!2850039 (= lt!1013292 (lemmaPrefixMatchThenExistsStringThatMatches!299 z!809 prefix!862))))

(declare-fun b!2850040 () Bool)

(declare-fun e!1805911 () Bool)

(declare-fun tp!915423 () Bool)

(declare-fun tp!915424 () Bool)

(assert (=> b!2850040 (= e!1805911 (and tp!915423 tp!915424))))

(declare-fun b!2850041 () Bool)

(declare-fun res!1184650 () Bool)

(assert (=> b!2850041 (=> (not res!1184650) (not e!1805912))))

(declare-fun prefixMatch!827 (Regex!8519 List!34023) Bool)

(assert (=> b!2850041 (= res!1184650 (not (prefixMatch!827 r!5723 prefix!862)))))

(declare-fun b!2850042 () Bool)

(declare-fun e!1805916 () Bool)

(declare-fun tp_is_empty!14775 () Bool)

(declare-fun tp!915416 () Bool)

(assert (=> b!2850042 (= e!1805916 (and tp_is_empty!14775 tp!915416))))

(declare-fun b!2850043 () Bool)

(declare-fun tp!915419 () Bool)

(assert (=> b!2850043 (= e!1805911 tp!915419)))

(declare-fun b!2850044 () Bool)

(declare-fun tp!915422 () Bool)

(declare-fun tp!915418 () Bool)

(assert (=> b!2850044 (= e!1805911 (and tp!915422 tp!915418))))

(declare-fun b!2850045 () Bool)

(declare-fun res!1184656 () Bool)

(assert (=> b!2850045 (=> (not res!1184656) (not e!1805912))))

(declare-fun unfocusZipper!191 (List!34024) Regex!8519)

(assert (=> b!2850045 (= res!1184656 (= r!5723 (unfocusZipper!191 zl!222)))))

(declare-fun b!2850046 () Bool)

(assert (=> b!2850046 (= e!1805911 tp_is_empty!14775)))

(declare-fun b!2850047 () Bool)

(declare-fun tp!915421 () Bool)

(assert (=> b!2850047 (= e!1805914 tp!915421)))

(declare-fun b!2850048 () Bool)

(assert (=> b!2850048 (= e!1805915 e!1805910)))

(declare-fun res!1184651 () Bool)

(assert (=> b!2850048 (=> res!1184651 e!1805910)))

(declare-fun matchZipper!401 ((InoxSet Context!5058) List!34023) Bool)

(assert (=> b!2850048 (= res!1184651 (not (matchZipper!401 z!809 lt!1013291)))))

(declare-fun pickWitness!276 (Int) List!34023)

(assert (=> b!2850048 (= lt!1013291 (pickWitness!276 lambda!104737))))

(declare-fun setIsEmpty!25045 () Bool)

(assert (=> setIsEmpty!25045 setRes!25045))

(declare-fun res!1184655 () Bool)

(assert (=> start!277638 (=> (not res!1184655) (not e!1805912))))

(declare-fun validRegex!3389 (Regex!8519) Bool)

(assert (=> start!277638 (= res!1184655 (validRegex!3389 r!5723))))

(assert (=> start!277638 e!1805912))

(assert (=> start!277638 e!1805911))

(declare-fun condSetEmpty!25045 () Bool)

(assert (=> start!277638 (= condSetEmpty!25045 (= z!809 ((as const (Array Context!5058 Bool)) false)))))

(assert (=> start!277638 setRes!25045))

(assert (=> start!277638 e!1805909))

(assert (=> start!277638 e!1805916))

(assert (= (and start!277638 res!1184655) b!2850037))

(assert (= (and b!2850037 res!1184653) b!2850045))

(assert (= (and b!2850045 res!1184656) b!2850041))

(assert (= (and b!2850041 res!1184650) b!2850034))

(assert (= (and b!2850034 res!1184654) b!2850039))

(assert (= (and b!2850039 (not res!1184652)) b!2850048))

(assert (= (and b!2850048 (not res!1184651)) b!2850036))

(get-info :version)

(assert (= (and start!277638 ((_ is ElementMatch!8519) r!5723)) b!2850046))

(assert (= (and start!277638 ((_ is Concat!13840) r!5723)) b!2850040))

(assert (= (and start!277638 ((_ is Star!8519) r!5723)) b!2850043))

(assert (= (and start!277638 ((_ is Union!8519) r!5723)) b!2850044))

(assert (= (and start!277638 condSetEmpty!25045) setIsEmpty!25045))

(assert (= (and start!277638 (not condSetEmpty!25045)) setNonEmpty!25045))

(assert (= setNonEmpty!25045 b!2850047))

(assert (= b!2850038 b!2850035))

(assert (= (and start!277638 ((_ is Cons!33900) zl!222)) b!2850038))

(assert (= (and start!277638 ((_ is Cons!33899) prefix!862)) b!2850042))

(declare-fun m!3276471 () Bool)

(assert (=> start!277638 m!3276471))

(declare-fun m!3276473 () Bool)

(assert (=> b!2850038 m!3276473))

(declare-fun m!3276475 () Bool)

(assert (=> b!2850048 m!3276475))

(declare-fun m!3276477 () Bool)

(assert (=> b!2850048 m!3276477))

(declare-fun m!3276479 () Bool)

(assert (=> b!2850034 m!3276479))

(declare-fun m!3276481 () Bool)

(assert (=> b!2850037 m!3276481))

(declare-fun m!3276483 () Bool)

(assert (=> b!2850045 m!3276483))

(declare-fun m!3276485 () Bool)

(assert (=> b!2850041 m!3276485))

(declare-fun m!3276487 () Bool)

(assert (=> setNonEmpty!25045 m!3276487))

(declare-fun m!3276489 () Bool)

(assert (=> b!2850039 m!3276489))

(assert (=> b!2850039 m!3276489))

(declare-fun m!3276491 () Bool)

(assert (=> b!2850039 m!3276491))

(declare-fun m!3276493 () Bool)

(assert (=> b!2850036 m!3276493))

(declare-fun m!3276495 () Bool)

(assert (=> b!2850036 m!3276495))

(check-sat (not b!2850047) (not b!2850044) (not setNonEmpty!25045) (not b!2850042) (not b!2850043) (not b!2850035) (not b!2850041) (not b!2850039) (not setNonEmpty!25048) (not b!2850034) (not start!277638) (not b!2850048) (not b!2850036) (not b!2850045) tp_is_empty!14775 (not b!2850038) (not b!2850040) (not b!2850037))
(check-sat)
