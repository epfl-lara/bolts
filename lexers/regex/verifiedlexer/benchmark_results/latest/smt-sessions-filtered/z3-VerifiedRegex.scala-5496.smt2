; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277734 () Bool)

(assert start!277734)

(declare-fun b!2851713 () Bool)

(assert (=> b!2851713 true))

(assert (=> b!2851713 true))

(declare-fun res!1185394 () Bool)

(declare-fun e!1806841 () Bool)

(assert (=> start!277734 (=> (not res!1185394) (not e!1806841))))

(declare-datatypes ((C!17276 0))(
  ( (C!17277 (val!10672 Int)) )
))
(declare-datatypes ((Regex!8547 0))(
  ( (ElementMatch!8547 (c!459768 C!17276)) (Concat!13868 (regOne!17606 Regex!8547) (regTwo!17606 Regex!8547)) (EmptyExpr!8547) (Star!8547 (reg!8876 Regex!8547)) (EmptyLang!8547) (Union!8547 (regOne!17607 Regex!8547) (regTwo!17607 Regex!8547)) )
))
(declare-fun r!5723 () Regex!8547)

(declare-fun validRegex!3417 (Regex!8547) Bool)

(assert (=> start!277734 (= res!1185394 (validRegex!3417 r!5723))))

(assert (=> start!277734 e!1806841))

(declare-fun e!1806842 () Bool)

(assert (=> start!277734 e!1806842))

(declare-fun condSetEmpty!25166 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!34106 0))(
  ( (Nil!33982) (Cons!33982 (h!39402 Regex!8547) (t!233137 List!34106)) )
))
(declare-datatypes ((Context!5114 0))(
  ( (Context!5115 (exprs!3057 List!34106)) )
))
(declare-fun z!809 () (InoxSet Context!5114))

(assert (=> start!277734 (= condSetEmpty!25166 (= z!809 ((as const (Array Context!5114 Bool)) false)))))

(declare-fun setRes!25166 () Bool)

(assert (=> start!277734 setRes!25166))

(declare-fun e!1806840 () Bool)

(assert (=> start!277734 e!1806840))

(declare-fun e!1806845 () Bool)

(assert (=> start!277734 e!1806845))

(declare-fun b!2851702 () Bool)

(declare-fun res!1185390 () Bool)

(assert (=> b!2851702 (=> (not res!1185390) (not e!1806841))))

(declare-datatypes ((List!34107 0))(
  ( (Nil!33983) (Cons!33983 (h!39403 Context!5114) (t!233138 List!34107)) )
))
(declare-fun zl!222 () List!34107)

(declare-fun unfocusZipper!219 (List!34107) Regex!8547)

(assert (=> b!2851702 (= res!1185390 (= r!5723 (unfocusZipper!219 zl!222)))))

(declare-fun b!2851703 () Bool)

(declare-fun tp!916378 () Bool)

(declare-fun tp!916375 () Bool)

(assert (=> b!2851703 (= e!1806842 (and tp!916378 tp!916375))))

(declare-fun b!2851704 () Bool)

(declare-fun tp!916376 () Bool)

(assert (=> b!2851704 (= e!1806842 tp!916376)))

(declare-fun e!1806843 () Bool)

(declare-fun tp!916372 () Bool)

(declare-fun b!2851705 () Bool)

(declare-fun inv!46004 (Context!5114) Bool)

(assert (=> b!2851705 (= e!1806840 (and (inv!46004 (h!39403 zl!222)) e!1806843 tp!916372))))

(declare-fun b!2851706 () Bool)

(declare-fun res!1185391 () Bool)

(declare-fun e!1806846 () Bool)

(assert (=> b!2851706 (=> (not res!1185391) (not e!1806846))))

(declare-datatypes ((List!34108 0))(
  ( (Nil!33984) (Cons!33984 (h!39404 C!17276) (t!233139 List!34108)) )
))
(declare-fun prefix!862 () List!34108)

(declare-fun prefixMatchZipper!279 ((InoxSet Context!5114) List!34108) Bool)

(assert (=> b!2851706 (= res!1185391 (not (prefixMatchZipper!279 z!809 prefix!862)))))

(declare-fun b!2851707 () Bool)

(assert (=> b!2851707 (= e!1806841 e!1806846)))

(declare-fun res!1185393 () Bool)

(assert (=> b!2851707 (=> (not res!1185393) (not e!1806846))))

(declare-fun e!1806839 () Bool)

(assert (=> b!2851707 (= res!1185393 e!1806839)))

(declare-fun res!1185392 () Bool)

(assert (=> b!2851707 (=> res!1185392 e!1806839)))

(declare-fun lt!1013539 () Bool)

(assert (=> b!2851707 (= res!1185392 lt!1013539)))

(declare-fun prefixMatch!855 (Regex!8547 List!34108) Bool)

(assert (=> b!2851707 (= lt!1013539 (prefixMatch!855 r!5723 prefix!862))))

(declare-fun tp!916379 () Bool)

(declare-fun e!1806844 () Bool)

(declare-fun setElem!25166 () Context!5114)

(declare-fun setNonEmpty!25166 () Bool)

(assert (=> setNonEmpty!25166 (= setRes!25166 (and tp!916379 (inv!46004 setElem!25166) e!1806844))))

(declare-fun setRest!25166 () (InoxSet Context!5114))

(assert (=> setNonEmpty!25166 (= z!809 ((_ map or) (store ((as const (Array Context!5114 Bool)) false) setElem!25166 true) setRest!25166))))

(declare-fun b!2851708 () Bool)

(declare-fun tp!916380 () Bool)

(declare-fun tp!916377 () Bool)

(assert (=> b!2851708 (= e!1806842 (and tp!916380 tp!916377))))

(declare-fun b!2851709 () Bool)

(assert (=> b!2851709 (= e!1806839 (not (prefixMatchZipper!279 z!809 prefix!862)))))

(declare-fun setIsEmpty!25166 () Bool)

(assert (=> setIsEmpty!25166 setRes!25166))

(declare-fun b!2851710 () Bool)

(declare-fun tp_is_empty!14831 () Bool)

(assert (=> b!2851710 (= e!1806842 tp_is_empty!14831)))

(declare-fun b!2851711 () Bool)

(declare-fun tp!916371 () Bool)

(assert (=> b!2851711 (= e!1806845 (and tp_is_empty!14831 tp!916371))))

(declare-fun b!2851712 () Bool)

(declare-fun res!1185396 () Bool)

(assert (=> b!2851712 (=> (not res!1185396) (not e!1806846))))

(assert (=> b!2851712 (= res!1185396 lt!1013539)))

(declare-fun lambda!104889 () Int)

(declare-fun Exists!1273 (Int) Bool)

(assert (=> b!2851713 (= e!1806846 (not (Exists!1273 lambda!104889)))))

(assert (=> b!2851713 (Exists!1273 lambda!104889)))

(declare-datatypes ((Unit!47665 0))(
  ( (Unit!47666) )
))
(declare-fun lt!1013538 () Unit!47665)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!321 (Regex!8547 List!34108) Unit!47665)

(assert (=> b!2851713 (= lt!1013538 (lemmaPrefixMatchThenExistsStringThatMatches!321 r!5723 prefix!862))))

(declare-fun b!2851714 () Bool)

(declare-fun tp!916373 () Bool)

(assert (=> b!2851714 (= e!1806844 tp!916373)))

(declare-fun b!2851715 () Bool)

(declare-fun res!1185395 () Bool)

(assert (=> b!2851715 (=> (not res!1185395) (not e!1806841))))

(declare-fun toList!1960 ((InoxSet Context!5114)) List!34107)

(assert (=> b!2851715 (= res!1185395 (= (toList!1960 z!809) zl!222))))

(declare-fun b!2851716 () Bool)

(declare-fun tp!916374 () Bool)

(assert (=> b!2851716 (= e!1806843 tp!916374)))

(assert (= (and start!277734 res!1185394) b!2851715))

(assert (= (and b!2851715 res!1185395) b!2851702))

(assert (= (and b!2851702 res!1185390) b!2851707))

(assert (= (and b!2851707 (not res!1185392)) b!2851709))

(assert (= (and b!2851707 res!1185393) b!2851712))

(assert (= (and b!2851712 res!1185396) b!2851706))

(assert (= (and b!2851706 res!1185391) b!2851713))

(get-info :version)

(assert (= (and start!277734 ((_ is ElementMatch!8547) r!5723)) b!2851710))

(assert (= (and start!277734 ((_ is Concat!13868) r!5723)) b!2851703))

(assert (= (and start!277734 ((_ is Star!8547) r!5723)) b!2851704))

(assert (= (and start!277734 ((_ is Union!8547) r!5723)) b!2851708))

(assert (= (and start!277734 condSetEmpty!25166) setIsEmpty!25166))

(assert (= (and start!277734 (not condSetEmpty!25166)) setNonEmpty!25166))

(assert (= setNonEmpty!25166 b!2851714))

(assert (= b!2851705 b!2851716))

(assert (= (and start!277734 ((_ is Cons!33983) zl!222)) b!2851705))

(assert (= (and start!277734 ((_ is Cons!33984) prefix!862)) b!2851711))

(declare-fun m!3277199 () Bool)

(assert (=> b!2851713 m!3277199))

(assert (=> b!2851713 m!3277199))

(declare-fun m!3277201 () Bool)

(assert (=> b!2851713 m!3277201))

(declare-fun m!3277203 () Bool)

(assert (=> b!2851707 m!3277203))

(declare-fun m!3277205 () Bool)

(assert (=> b!2851715 m!3277205))

(declare-fun m!3277207 () Bool)

(assert (=> b!2851709 m!3277207))

(declare-fun m!3277209 () Bool)

(assert (=> start!277734 m!3277209))

(declare-fun m!3277211 () Bool)

(assert (=> setNonEmpty!25166 m!3277211))

(assert (=> b!2851706 m!3277207))

(declare-fun m!3277213 () Bool)

(assert (=> b!2851702 m!3277213))

(declare-fun m!3277215 () Bool)

(assert (=> b!2851705 m!3277215))

(check-sat (not start!277734) tp_is_empty!14831 (not b!2851714) (not b!2851703) (not b!2851711) (not b!2851704) (not b!2851702) (not b!2851715) (not b!2851705) (not b!2851716) (not b!2851708) (not b!2851707) (not b!2851706) (not b!2851713) (not setNonEmpty!25166) (not b!2851709))
(check-sat)
