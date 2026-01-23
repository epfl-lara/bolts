; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277782 () Bool)

(assert start!277782)

(declare-fun b!2852228 () Bool)

(assert (=> b!2852228 true))

(assert (=> b!2852228 true))

(declare-fun tp!916609 () Bool)

(declare-datatypes ((C!17284 0))(
  ( (C!17285 (val!10676 Int)) )
))
(declare-datatypes ((Regex!8551 0))(
  ( (ElementMatch!8551 (c!459814 C!17284)) (Concat!13872 (regOne!17614 Regex!8551) (regTwo!17614 Regex!8551)) (EmptyExpr!8551) (Star!8551 (reg!8880 Regex!8551)) (EmptyLang!8551) (Union!8551 (regOne!17615 Regex!8551) (regTwo!17615 Regex!8551)) )
))
(declare-datatypes ((List!34118 0))(
  ( (Nil!33994) (Cons!33994 (h!39414 Regex!8551) (t!233149 List!34118)) )
))
(declare-datatypes ((Context!5122 0))(
  ( (Context!5123 (exprs!3061 List!34118)) )
))
(declare-datatypes ((List!34119 0))(
  ( (Nil!33995) (Cons!33995 (h!39415 Context!5122) (t!233150 List!34119)) )
))
(declare-fun zl!222 () List!34119)

(declare-fun e!1807129 () Bool)

(declare-fun b!2852220 () Bool)

(declare-fun e!1807138 () Bool)

(declare-fun inv!46014 (Context!5122) Bool)

(assert (=> b!2852220 (= e!1807138 (and (inv!46014 (h!39415 zl!222)) e!1807129 tp!916609))))

(declare-fun b!2852221 () Bool)

(declare-fun res!1185607 () Bool)

(declare-fun e!1807135 () Bool)

(assert (=> b!2852221 (=> (not res!1185607) (not e!1807135))))

(declare-fun lt!1013602 () Bool)

(assert (=> b!2852221 (= res!1185607 lt!1013602)))

(declare-fun b!2852222 () Bool)

(declare-fun e!1807132 () Bool)

(declare-fun e!1807133 () Bool)

(assert (=> b!2852222 (= e!1807132 e!1807133)))

(declare-fun res!1185606 () Bool)

(assert (=> b!2852222 (=> res!1185606 e!1807133)))

(declare-fun r!5723 () Regex!8551)

(declare-datatypes ((List!34120 0))(
  ( (Nil!33996) (Cons!33996 (h!39416 C!17284) (t!233151 List!34120)) )
))
(declare-fun lt!1013605 () List!34120)

(declare-fun matchR!3676 (Regex!8551 List!34120) Bool)

(assert (=> b!2852222 (= res!1185606 (not (matchR!3676 r!5723 lt!1013605)))))

(declare-fun lambda!104931 () Int)

(declare-fun pickWitness!294 (Int) List!34120)

(assert (=> b!2852222 (= lt!1013605 (pickWitness!294 lambda!104931))))

(declare-fun b!2852223 () Bool)

(declare-fun res!1185610 () Bool)

(declare-fun e!1807134 () Bool)

(assert (=> b!2852223 (=> (not res!1185610) (not e!1807134))))

(declare-fun unfocusZipper!223 (List!34119) Regex!8551)

(assert (=> b!2852223 (= res!1185610 (= r!5723 (unfocusZipper!223 zl!222)))))

(declare-fun b!2852224 () Bool)

(assert (=> b!2852224 (= e!1807133 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!809 () (InoxSet Context!5122))

(declare-fun matchZipper!413 ((InoxSet Context!5122) List!34120) Bool)

(assert (=> b!2852224 (matchZipper!413 z!809 lt!1013605)))

(declare-datatypes ((Unit!47673 0))(
  ( (Unit!47674) )
))
(declare-fun lt!1013603 () Unit!47673)

(declare-fun theoremZipperRegexEquiv!99 ((InoxSet Context!5122) List!34119 Regex!8551 List!34120) Unit!47673)

(assert (=> b!2852224 (= lt!1013603 (theoremZipperRegexEquiv!99 z!809 zl!222 r!5723 lt!1013605))))

(declare-fun b!2852225 () Bool)

(declare-fun res!1185604 () Bool)

(assert (=> b!2852225 (=> (not res!1185604) (not e!1807135))))

(declare-fun prefix!862 () List!34120)

(declare-fun prefixMatchZipper!283 ((InoxSet Context!5122) List!34120) Bool)

(assert (=> b!2852225 (= res!1185604 (not (prefixMatchZipper!283 z!809 prefix!862)))))

(declare-fun b!2852226 () Bool)

(declare-fun e!1807137 () Bool)

(declare-fun tp_is_empty!14839 () Bool)

(assert (=> b!2852226 (= e!1807137 tp_is_empty!14839)))

(assert (=> b!2852228 (= e!1807135 (not e!1807132))))

(declare-fun res!1185605 () Bool)

(assert (=> b!2852228 (=> res!1185605 e!1807132)))

(declare-fun Exists!1277 (Int) Bool)

(assert (=> b!2852228 (= res!1185605 (not (Exists!1277 lambda!104931)))))

(assert (=> b!2852228 (Exists!1277 lambda!104931)))

(declare-fun lt!1013604 () Unit!47673)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!325 (Regex!8551 List!34120) Unit!47673)

(assert (=> b!2852228 (= lt!1013604 (lemmaPrefixMatchThenExistsStringThatMatches!325 r!5723 prefix!862))))

(declare-fun b!2852229 () Bool)

(declare-fun tp!916611 () Bool)

(assert (=> b!2852229 (= e!1807129 tp!916611)))

(declare-fun b!2852230 () Bool)

(declare-fun tp!916616 () Bool)

(assert (=> b!2852230 (= e!1807137 tp!916616)))

(declare-fun b!2852231 () Bool)

(declare-fun res!1185612 () Bool)

(assert (=> b!2852231 (=> (not res!1185612) (not e!1807134))))

(declare-fun toList!1964 ((InoxSet Context!5122)) List!34119)

(assert (=> b!2852231 (= res!1185612 (= (toList!1964 z!809) zl!222))))

(declare-fun b!2852232 () Bool)

(assert (=> b!2852232 (= e!1807134 e!1807135)))

(declare-fun res!1185609 () Bool)

(assert (=> b!2852232 (=> (not res!1185609) (not e!1807135))))

(declare-fun e!1807130 () Bool)

(assert (=> b!2852232 (= res!1185609 e!1807130)))

(declare-fun res!1185608 () Bool)

(assert (=> b!2852232 (=> res!1185608 e!1807130)))

(assert (=> b!2852232 (= res!1185608 lt!1013602)))

(declare-fun prefixMatch!859 (Regex!8551 List!34120) Bool)

(assert (=> b!2852232 (= lt!1013602 (prefixMatch!859 r!5723 prefix!862))))

(declare-fun b!2852233 () Bool)

(assert (=> b!2852233 (= e!1807130 (not (prefixMatchZipper!283 z!809 prefix!862)))))

(declare-fun setIsEmpty!25184 () Bool)

(declare-fun setRes!25184 () Bool)

(assert (=> setIsEmpty!25184 setRes!25184))

(declare-fun b!2852234 () Bool)

(declare-fun tp!916613 () Bool)

(declare-fun tp!916608 () Bool)

(assert (=> b!2852234 (= e!1807137 (and tp!916613 tp!916608))))

(declare-fun e!1807131 () Bool)

(declare-fun setElem!25184 () Context!5122)

(declare-fun tp!916612 () Bool)

(declare-fun setNonEmpty!25184 () Bool)

(assert (=> setNonEmpty!25184 (= setRes!25184 (and tp!916612 (inv!46014 setElem!25184) e!1807131))))

(declare-fun setRest!25184 () (InoxSet Context!5122))

(assert (=> setNonEmpty!25184 (= z!809 ((_ map or) (store ((as const (Array Context!5122 Bool)) false) setElem!25184 true) setRest!25184))))

(declare-fun b!2852227 () Bool)

(declare-fun tp!916614 () Bool)

(assert (=> b!2852227 (= e!1807131 tp!916614)))

(declare-fun res!1185611 () Bool)

(assert (=> start!277782 (=> (not res!1185611) (not e!1807134))))

(declare-fun validRegex!3421 (Regex!8551) Bool)

(assert (=> start!277782 (= res!1185611 (validRegex!3421 r!5723))))

(assert (=> start!277782 e!1807134))

(assert (=> start!277782 e!1807137))

(declare-fun condSetEmpty!25184 () Bool)

(assert (=> start!277782 (= condSetEmpty!25184 (= z!809 ((as const (Array Context!5122 Bool)) false)))))

(assert (=> start!277782 setRes!25184))

(assert (=> start!277782 e!1807138))

(declare-fun e!1807136 () Bool)

(assert (=> start!277782 e!1807136))

(declare-fun b!2852235 () Bool)

(declare-fun tp!916615 () Bool)

(assert (=> b!2852235 (= e!1807136 (and tp_is_empty!14839 tp!916615))))

(declare-fun b!2852236 () Bool)

(declare-fun tp!916607 () Bool)

(declare-fun tp!916610 () Bool)

(assert (=> b!2852236 (= e!1807137 (and tp!916607 tp!916610))))

(assert (= (and start!277782 res!1185611) b!2852231))

(assert (= (and b!2852231 res!1185612) b!2852223))

(assert (= (and b!2852223 res!1185610) b!2852232))

(assert (= (and b!2852232 (not res!1185608)) b!2852233))

(assert (= (and b!2852232 res!1185609) b!2852221))

(assert (= (and b!2852221 res!1185607) b!2852225))

(assert (= (and b!2852225 res!1185604) b!2852228))

(assert (= (and b!2852228 (not res!1185605)) b!2852222))

(assert (= (and b!2852222 (not res!1185606)) b!2852224))

(get-info :version)

(assert (= (and start!277782 ((_ is ElementMatch!8551) r!5723)) b!2852226))

(assert (= (and start!277782 ((_ is Concat!13872) r!5723)) b!2852234))

(assert (= (and start!277782 ((_ is Star!8551) r!5723)) b!2852230))

(assert (= (and start!277782 ((_ is Union!8551) r!5723)) b!2852236))

(assert (= (and start!277782 condSetEmpty!25184) setIsEmpty!25184))

(assert (= (and start!277782 (not condSetEmpty!25184)) setNonEmpty!25184))

(assert (= setNonEmpty!25184 b!2852227))

(assert (= b!2852220 b!2852229))

(assert (= (and start!277782 ((_ is Cons!33995) zl!222)) b!2852220))

(assert (= (and start!277782 ((_ is Cons!33996) prefix!862)) b!2852235))

(declare-fun m!3277431 () Bool)

(assert (=> b!2852224 m!3277431))

(declare-fun m!3277433 () Bool)

(assert (=> b!2852224 m!3277433))

(declare-fun m!3277435 () Bool)

(assert (=> b!2852228 m!3277435))

(assert (=> b!2852228 m!3277435))

(declare-fun m!3277437 () Bool)

(assert (=> b!2852228 m!3277437))

(declare-fun m!3277439 () Bool)

(assert (=> b!2852233 m!3277439))

(declare-fun m!3277441 () Bool)

(assert (=> b!2852223 m!3277441))

(declare-fun m!3277443 () Bool)

(assert (=> b!2852220 m!3277443))

(declare-fun m!3277445 () Bool)

(assert (=> setNonEmpty!25184 m!3277445))

(declare-fun m!3277447 () Bool)

(assert (=> b!2852222 m!3277447))

(declare-fun m!3277449 () Bool)

(assert (=> b!2852222 m!3277449))

(declare-fun m!3277451 () Bool)

(assert (=> start!277782 m!3277451))

(declare-fun m!3277453 () Bool)

(assert (=> b!2852231 m!3277453))

(declare-fun m!3277455 () Bool)

(assert (=> b!2852232 m!3277455))

(assert (=> b!2852225 m!3277439))

(check-sat (not b!2852225) (not b!2852235) (not b!2852223) (not b!2852228) (not b!2852220) (not b!2852224) tp_is_empty!14839 (not b!2852222) (not b!2852230) (not b!2852229) (not b!2852236) (not b!2852233) (not b!2852227) (not b!2852231) (not setNonEmpty!25184) (not b!2852232) (not b!2852234) (not start!277782))
(check-sat)
