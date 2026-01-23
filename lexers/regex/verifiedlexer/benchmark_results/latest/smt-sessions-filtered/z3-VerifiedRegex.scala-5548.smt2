; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279036 () Bool)

(assert start!279036)

(declare-fun b!2864125 () Bool)

(declare-fun condSetEmpty!25515 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17484 0))(
  ( (C!17485 (val!10776 Int)) )
))
(declare-datatypes ((Regex!8651 0))(
  ( (ElementMatch!8651 (c!461788 C!17484)) (Concat!13972 (regOne!17814 Regex!8651) (regTwo!17814 Regex!8651)) (EmptyExpr!8651) (Star!8651 (reg!8980 Regex!8651)) (EmptyLang!8651) (Union!8651 (regOne!17815 Regex!8651) (regTwo!17815 Regex!8651)) )
))
(declare-datatypes ((List!34291 0))(
  ( (Nil!34167) (Cons!34167 (h!39587 Regex!8651) (t!233332 List!34291)) )
))
(declare-datatypes ((Context!5222 0))(
  ( (Context!5223 (exprs!3111 List!34291)) )
))
(declare-fun lt!1015295 () (InoxSet Context!5222))

(assert (=> b!2864125 (= condSetEmpty!25515 (= lt!1015295 ((as const (Array Context!5222 Bool)) false)))))

(declare-fun setRes!25515 () Bool)

(assert (=> b!2864125 setRes!25515))

(declare-fun setIsEmpty!25515 () Bool)

(assert (=> setIsEmpty!25515 setRes!25515))

(declare-fun setNonEmpty!25515 () Bool)

(assert (=> setNonEmpty!25515 (= setRes!25515 true)))

(declare-fun setElem!25515 () Context!5222)

(declare-fun setRest!25515 () (InoxSet Context!5222))

(assert (=> setNonEmpty!25515 (= lt!1015295 ((_ map or) (store ((as const (Array Context!5222 Bool)) false) setElem!25515 true) setRest!25515))))

(assert (= (and b!2864125 condSetEmpty!25515) setIsEmpty!25515))

(assert (= (and b!2864125 (not condSetEmpty!25515)) setNonEmpty!25515))

(assert (=> b!2864125 true))

(declare-fun res!1189060 () Bool)

(declare-fun e!1813121 () Bool)

(assert (=> start!279036 (=> (not res!1189060) (not e!1813121))))

(declare-fun z!960 () (InoxSet Context!5222))

(declare-datatypes ((List!34292 0))(
  ( (Nil!34168) (Cons!34168 (h!39588 C!17484) (t!233333 List!34292)) )
))
(declare-fun prefix!919 () List!34292)

(declare-fun prefixMatchZipper!333 ((InoxSet Context!5222) List!34292) Bool)

(assert (=> start!279036 (= res!1189060 (prefixMatchZipper!333 z!960 prefix!919))))

(assert (=> start!279036 e!1813121))

(declare-fun condSetEmpty!25512 () Bool)

(assert (=> start!279036 (= condSetEmpty!25512 (= z!960 ((as const (Array Context!5222 Bool)) false)))))

(declare-fun setRes!25512 () Bool)

(assert (=> start!279036 setRes!25512))

(declare-fun e!1813120 () Bool)

(assert (=> start!279036 e!1813120))

(declare-fun b!2864123 () Bool)

(declare-fun e!1813119 () Bool)

(declare-fun tp!922367 () Bool)

(assert (=> b!2864123 (= e!1813119 tp!922367)))

(declare-fun b!2864124 () Bool)

(declare-fun res!1189059 () Bool)

(assert (=> b!2864124 (=> (not res!1189059) (not e!1813121))))

(get-info :version)

(assert (=> b!2864124 (= res!1189059 (not ((_ is Nil!34168) prefix!919)))))

(declare-fun lambda!105707 () Int)

(declare-fun Exists!1327 (Int) Bool)

(assert (=> b!2864125 (= e!1813121 (not (Exists!1327 lambda!105707)))))

(assert (=> b!2864125 (Exists!1327 lambda!105707)))

(declare-datatypes ((Unit!47829 0))(
  ( (Unit!47830) )
))
(declare-fun lt!1015294 () Unit!47829)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!371 ((InoxSet Context!5222) List!34292) Unit!47829)

(assert (=> b!2864125 (= lt!1015294 (lemmaPrefixMatchThenExistsStringThatMatches!371 lt!1015295 (t!233333 prefix!919)))))

(declare-fun derivationStepZipper!449 ((InoxSet Context!5222) C!17484) (InoxSet Context!5222))

(assert (=> b!2864125 (= lt!1015295 (derivationStepZipper!449 z!960 (h!39588 prefix!919)))))

(declare-fun setIsEmpty!25512 () Bool)

(assert (=> setIsEmpty!25512 setRes!25512))

(declare-fun tp!922368 () Bool)

(declare-fun setNonEmpty!25512 () Bool)

(declare-fun setElem!25512 () Context!5222)

(declare-fun inv!46214 (Context!5222) Bool)

(assert (=> setNonEmpty!25512 (= setRes!25512 (and tp!922368 (inv!46214 setElem!25512) e!1813119))))

(declare-fun setRest!25512 () (InoxSet Context!5222))

(assert (=> setNonEmpty!25512 (= z!960 ((_ map or) (store ((as const (Array Context!5222 Bool)) false) setElem!25512 true) setRest!25512))))

(declare-fun b!2864126 () Bool)

(declare-fun tp_is_empty!15039 () Bool)

(declare-fun tp!922366 () Bool)

(assert (=> b!2864126 (= e!1813120 (and tp_is_empty!15039 tp!922366))))

(assert (= (and start!279036 res!1189060) b!2864124))

(assert (= (and b!2864124 res!1189059) b!2864125))

(assert (= (and start!279036 condSetEmpty!25512) setIsEmpty!25512))

(assert (= (and start!279036 (not condSetEmpty!25512)) setNonEmpty!25512))

(assert (= setNonEmpty!25512 b!2864123))

(assert (= (and start!279036 ((_ is Cons!34168) prefix!919)) b!2864126))

(declare-fun m!3283739 () Bool)

(assert (=> start!279036 m!3283739))

(declare-fun m!3283741 () Bool)

(assert (=> b!2864125 m!3283741))

(assert (=> b!2864125 m!3283741))

(declare-fun m!3283743 () Bool)

(assert (=> b!2864125 m!3283743))

(declare-fun m!3283745 () Bool)

(assert (=> b!2864125 m!3283745))

(declare-fun m!3283747 () Bool)

(assert (=> setNonEmpty!25512 m!3283747))

(check-sat (not setNonEmpty!25515) (not b!2864123) (not start!279036) (not b!2864126) (not setNonEmpty!25512) tp_is_empty!15039 (not b!2864125))
(check-sat)
