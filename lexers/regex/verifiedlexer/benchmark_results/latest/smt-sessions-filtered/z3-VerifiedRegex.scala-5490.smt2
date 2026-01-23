; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277670 () Bool)

(assert start!277670)

(declare-fun b!2850867 () Bool)

(assert (=> b!2850867 true))

(assert (=> b!2850867 true))

(declare-fun tp!915902 () Bool)

(declare-datatypes ((C!17252 0))(
  ( (C!17253 (val!10660 Int)) )
))
(declare-datatypes ((Regex!8535 0))(
  ( (ElementMatch!8535 (c!459726 C!17252)) (Concat!13856 (regOne!17582 Regex!8535) (regTwo!17582 Regex!8535)) (EmptyExpr!8535) (Star!8535 (reg!8864 Regex!8535)) (EmptyLang!8535) (Union!8535 (regOne!17583 Regex!8535) (regTwo!17583 Regex!8535)) )
))
(declare-datatypes ((List!34070 0))(
  ( (Nil!33946) (Cons!33946 (h!39366 Regex!8535) (t!233101 List!34070)) )
))
(declare-datatypes ((Context!5090 0))(
  ( (Context!5091 (exprs!3045 List!34070)) )
))
(declare-fun setElem!25108 () Context!5090)

(declare-fun e!1806376 () Bool)

(declare-fun setNonEmpty!25108 () Bool)

(declare-fun setRes!25108 () Bool)

(declare-fun inv!45974 (Context!5090) Bool)

(assert (=> setNonEmpty!25108 (= setRes!25108 (and tp!915902 (inv!45974 setElem!25108) e!1806376))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!809 () (InoxSet Context!5090))

(declare-fun setRest!25108 () (InoxSet Context!5090))

(assert (=> setNonEmpty!25108 (= z!809 ((_ map or) (store ((as const (Array Context!5090 Bool)) false) setElem!25108 true) setRest!25108))))

(declare-fun b!2850859 () Bool)

(declare-fun e!1806373 () Bool)

(assert (=> b!2850859 (= e!1806373 true)))

(declare-fun lt!1013417 () Bool)

(declare-fun r!5723 () Regex!8535)

(declare-fun lambda!104813 () Int)

(declare-datatypes ((List!34071 0))(
  ( (Nil!33947) (Cons!33947 (h!39367 C!17252) (t!233102 List!34071)) )
))
(declare-fun matchR!3668 (Regex!8535 List!34071) Bool)

(declare-fun pickWitness!284 (Int) List!34071)

(assert (=> b!2850859 (= lt!1013417 (matchR!3668 r!5723 (pickWitness!284 lambda!104813)))))

(declare-fun b!2850860 () Bool)

(declare-fun res!1185044 () Bool)

(declare-fun e!1806368 () Bool)

(assert (=> b!2850860 (=> (not res!1185044) (not e!1806368))))

(declare-datatypes ((List!34072 0))(
  ( (Nil!33948) (Cons!33948 (h!39368 Context!5090) (t!233103 List!34072)) )
))
(declare-fun zl!222 () List!34072)

(declare-fun unfocusZipper!207 (List!34072) Regex!8535)

(assert (=> b!2850860 (= res!1185044 (= r!5723 (unfocusZipper!207 zl!222)))))

(declare-fun b!2850861 () Bool)

(declare-fun e!1806375 () Bool)

(declare-fun tp!915897 () Bool)

(declare-fun tp!915896 () Bool)

(assert (=> b!2850861 (= e!1806375 (and tp!915897 tp!915896))))

(declare-fun b!2850862 () Bool)

(declare-fun tp_is_empty!14807 () Bool)

(assert (=> b!2850862 (= e!1806375 tp_is_empty!14807)))

(declare-fun b!2850863 () Bool)

(declare-fun e!1806369 () Bool)

(assert (=> b!2850863 (= e!1806368 e!1806369)))

(declare-fun res!1185050 () Bool)

(assert (=> b!2850863 (=> (not res!1185050) (not e!1806369))))

(declare-fun e!1806370 () Bool)

(assert (=> b!2850863 (= res!1185050 e!1806370)))

(declare-fun res!1185045 () Bool)

(assert (=> b!2850863 (=> res!1185045 e!1806370)))

(declare-fun lt!1013418 () Bool)

(assert (=> b!2850863 (= res!1185045 lt!1013418)))

(declare-fun prefix!862 () List!34071)

(declare-fun prefixMatch!843 (Regex!8535 List!34071) Bool)

(assert (=> b!2850863 (= lt!1013418 (prefixMatch!843 r!5723 prefix!862))))

(declare-fun b!2850864 () Bool)

(declare-fun tp!915901 () Bool)

(assert (=> b!2850864 (= e!1806376 tp!915901)))

(declare-fun b!2850865 () Bool)

(declare-fun res!1185043 () Bool)

(assert (=> b!2850865 (=> (not res!1185043) (not e!1806369))))

(assert (=> b!2850865 (= res!1185043 lt!1013418)))

(declare-fun b!2850866 () Bool)

(declare-fun e!1806371 () Bool)

(declare-fun tp!915903 () Bool)

(assert (=> b!2850866 (= e!1806371 (and tp_is_empty!14807 tp!915903))))

(assert (=> b!2850867 (= e!1806369 (not e!1806373))))

(declare-fun res!1185047 () Bool)

(assert (=> b!2850867 (=> res!1185047 e!1806373)))

(declare-fun Exists!1263 (Int) Bool)

(assert (=> b!2850867 (= res!1185047 (not (Exists!1263 lambda!104813)))))

(assert (=> b!2850867 (Exists!1263 lambda!104813)))

(declare-datatypes ((Unit!47645 0))(
  ( (Unit!47646) )
))
(declare-fun lt!1013419 () Unit!47645)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!311 (Regex!8535 List!34071) Unit!47645)

(assert (=> b!2850867 (= lt!1013419 (lemmaPrefixMatchThenExistsStringThatMatches!311 r!5723 prefix!862))))

(declare-fun b!2850868 () Bool)

(declare-fun res!1185048 () Bool)

(assert (=> b!2850868 (=> (not res!1185048) (not e!1806369))))

(declare-fun prefixMatchZipper!267 ((InoxSet Context!5090) List!34071) Bool)

(assert (=> b!2850868 (= res!1185048 (not (prefixMatchZipper!267 z!809 prefix!862)))))

(declare-fun b!2850869 () Bool)

(declare-fun tp!915895 () Bool)

(declare-fun tp!915900 () Bool)

(assert (=> b!2850869 (= e!1806375 (and tp!915895 tp!915900))))

(declare-fun b!2850870 () Bool)

(assert (=> b!2850870 (= e!1806370 (not (prefixMatchZipper!267 z!809 prefix!862)))))

(declare-fun b!2850871 () Bool)

(declare-fun tp!915904 () Bool)

(assert (=> b!2850871 (= e!1806375 tp!915904)))

(declare-fun e!1806374 () Bool)

(declare-fun e!1806372 () Bool)

(declare-fun b!2850872 () Bool)

(declare-fun tp!915899 () Bool)

(assert (=> b!2850872 (= e!1806372 (and (inv!45974 (h!39368 zl!222)) e!1806374 tp!915899))))

(declare-fun b!2850873 () Bool)

(declare-fun tp!915898 () Bool)

(assert (=> b!2850873 (= e!1806374 tp!915898)))

(declare-fun setIsEmpty!25108 () Bool)

(assert (=> setIsEmpty!25108 setRes!25108))

(declare-fun res!1185049 () Bool)

(assert (=> start!277670 (=> (not res!1185049) (not e!1806368))))

(declare-fun validRegex!3405 (Regex!8535) Bool)

(assert (=> start!277670 (= res!1185049 (validRegex!3405 r!5723))))

(assert (=> start!277670 e!1806368))

(assert (=> start!277670 e!1806375))

(declare-fun condSetEmpty!25108 () Bool)

(assert (=> start!277670 (= condSetEmpty!25108 (= z!809 ((as const (Array Context!5090 Bool)) false)))))

(assert (=> start!277670 setRes!25108))

(assert (=> start!277670 e!1806372))

(assert (=> start!277670 e!1806371))

(declare-fun b!2850874 () Bool)

(declare-fun res!1185046 () Bool)

(assert (=> b!2850874 (=> (not res!1185046) (not e!1806368))))

(declare-fun toList!1948 ((InoxSet Context!5090)) List!34072)

(assert (=> b!2850874 (= res!1185046 (= (toList!1948 z!809) zl!222))))

(assert (= (and start!277670 res!1185049) b!2850874))

(assert (= (and b!2850874 res!1185046) b!2850860))

(assert (= (and b!2850860 res!1185044) b!2850863))

(assert (= (and b!2850863 (not res!1185045)) b!2850870))

(assert (= (and b!2850863 res!1185050) b!2850865))

(assert (= (and b!2850865 res!1185043) b!2850868))

(assert (= (and b!2850868 res!1185048) b!2850867))

(assert (= (and b!2850867 (not res!1185047)) b!2850859))

(get-info :version)

(assert (= (and start!277670 ((_ is ElementMatch!8535) r!5723)) b!2850862))

(assert (= (and start!277670 ((_ is Concat!13856) r!5723)) b!2850861))

(assert (= (and start!277670 ((_ is Star!8535) r!5723)) b!2850871))

(assert (= (and start!277670 ((_ is Union!8535) r!5723)) b!2850869))

(assert (= (and start!277670 condSetEmpty!25108) setIsEmpty!25108))

(assert (= (and start!277670 (not condSetEmpty!25108)) setNonEmpty!25108))

(assert (= setNonEmpty!25108 b!2850864))

(assert (= b!2850872 b!2850873))

(assert (= (and start!277670 ((_ is Cons!33948) zl!222)) b!2850872))

(assert (= (and start!277670 ((_ is Cons!33947) prefix!862)) b!2850866))

(declare-fun m!3276799 () Bool)

(assert (=> b!2850868 m!3276799))

(declare-fun m!3276801 () Bool)

(assert (=> start!277670 m!3276801))

(declare-fun m!3276803 () Bool)

(assert (=> setNonEmpty!25108 m!3276803))

(declare-fun m!3276805 () Bool)

(assert (=> b!2850860 m!3276805))

(assert (=> b!2850870 m!3276799))

(declare-fun m!3276807 () Bool)

(assert (=> b!2850874 m!3276807))

(declare-fun m!3276809 () Bool)

(assert (=> b!2850859 m!3276809))

(assert (=> b!2850859 m!3276809))

(declare-fun m!3276811 () Bool)

(assert (=> b!2850859 m!3276811))

(declare-fun m!3276813 () Bool)

(assert (=> b!2850872 m!3276813))

(declare-fun m!3276815 () Bool)

(assert (=> b!2850863 m!3276815))

(declare-fun m!3276817 () Bool)

(assert (=> b!2850867 m!3276817))

(assert (=> b!2850867 m!3276817))

(declare-fun m!3276819 () Bool)

(assert (=> b!2850867 m!3276819))

(check-sat (not start!277670) (not b!2850864) (not b!2850866) (not b!2850861) (not b!2850859) (not b!2850867) tp_is_empty!14807 (not b!2850871) (not b!2850860) (not b!2850868) (not b!2850873) (not b!2850870) (not b!2850872) (not b!2850869) (not b!2850874) (not setNonEmpty!25108) (not b!2850863))
(check-sat)
