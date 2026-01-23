; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538812 () Bool)

(assert start!538812)

(declare-fun b!5109771 () Bool)

(declare-fun res!2174946 () Bool)

(declare-fun e!3186954 () Bool)

(assert (=> b!5109771 (=> (not res!2174946) (not e!3186954))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28532 0))(
  ( (C!28533 (val!23918 Int)) )
))
(declare-datatypes ((Regex!14133 0))(
  ( (ElementMatch!14133 (c!877821 C!28532)) (Concat!22978 (regOne!28778 Regex!14133) (regTwo!28778 Regex!14133)) (EmptyExpr!14133) (Star!14133 (reg!14462 Regex!14133)) (EmptyLang!14133) (Union!14133 (regOne!28779 Regex!14133) (regTwo!28779 Regex!14133)) )
))
(declare-datatypes ((List!59144 0))(
  ( (Nil!59020) (Cons!59020 (h!65468 Regex!14133) (t!372145 List!59144)) )
))
(declare-datatypes ((Context!7034 0))(
  ( (Context!7035 (exprs!4017 List!59144)) )
))
(declare-fun baseZ!46 () (InoxSet Context!7034))

(declare-datatypes ((List!59145 0))(
  ( (Nil!59021) (Cons!59021 (h!65469 C!28532) (t!372146 List!59145)) )
))
(declare-fun knownP!20 () List!59145)

(declare-fun matchZipper!801 ((InoxSet Context!7034) List!59145) Bool)

(assert (=> b!5109771 (= res!2174946 (matchZipper!801 baseZ!46 knownP!20))))

(declare-fun b!5109772 () Bool)

(declare-fun e!3186952 () Bool)

(declare-fun tp_is_empty!37539 () Bool)

(declare-fun tp!1425577 () Bool)

(assert (=> b!5109772 (= e!3186952 (and tp_is_empty!37539 tp!1425577))))

(declare-fun setIsEmpty!29657 () Bool)

(declare-fun setRes!29658 () Bool)

(assert (=> setIsEmpty!29657 setRes!29658))

(declare-fun setIsEmpty!29658 () Bool)

(declare-fun setRes!29657 () Bool)

(assert (=> setIsEmpty!29658 setRes!29657))

(declare-fun b!5109773 () Bool)

(declare-fun res!2174942 () Bool)

(declare-fun e!3186956 () Bool)

(assert (=> b!5109773 (=> res!2174942 e!3186956)))

(declare-fun z!4463 () (InoxSet Context!7034))

(declare-fun lostCauseZipper!1019 ((InoxSet Context!7034)) Bool)

(assert (=> b!5109773 (= res!2174942 (lostCauseZipper!1019 z!4463))))

(declare-fun b!5109774 () Bool)

(assert (=> b!5109774 (= e!3186956 true)))

(declare-fun lt!2104332 () Int)

(declare-fun input!5745 () List!59145)

(declare-fun size!39439 (List!59145) Int)

(assert (=> b!5109774 (= lt!2104332 (size!39439 input!5745))))

(declare-fun b!5109775 () Bool)

(declare-fun e!3186958 () Bool)

(declare-fun tp!1425573 () Bool)

(assert (=> b!5109775 (= e!3186958 tp!1425573)))

(declare-fun b!5109776 () Bool)

(declare-fun res!2174943 () Bool)

(declare-fun e!3186957 () Bool)

(assert (=> b!5109776 (=> (not res!2174943) (not e!3186957))))

(declare-fun isPrefix!5538 (List!59145 List!59145) Bool)

(assert (=> b!5109776 (= res!2174943 (isPrefix!5538 knownP!20 input!5745))))

(declare-fun b!5109777 () Bool)

(declare-fun e!3186955 () Bool)

(declare-fun tp!1425574 () Bool)

(assert (=> b!5109777 (= e!3186955 (and tp_is_empty!37539 tp!1425574))))

(declare-fun e!3186953 () Bool)

(declare-fun tp!1425572 () Bool)

(declare-fun setNonEmpty!29657 () Bool)

(declare-fun setElem!29657 () Context!7034)

(declare-fun inv!78513 (Context!7034) Bool)

(assert (=> setNonEmpty!29657 (= setRes!29657 (and tp!1425572 (inv!78513 setElem!29657) e!3186953))))

(declare-fun setRest!29658 () (InoxSet Context!7034))

(assert (=> setNonEmpty!29657 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7034 Bool)) false) setElem!29657 true) setRest!29658))))

(declare-fun b!5109778 () Bool)

(assert (=> b!5109778 (= e!3186954 (not e!3186956))))

(declare-fun res!2174940 () Bool)

(assert (=> b!5109778 (=> res!2174940 e!3186956)))

(declare-fun testedP!265 () List!59145)

(declare-fun getSuffix!3212 (List!59145 List!59145) List!59145)

(assert (=> b!5109778 (= res!2174940 (not (matchZipper!801 z!4463 (getSuffix!3212 knownP!20 testedP!265))))))

(assert (=> b!5109778 (isPrefix!5538 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150119 0))(
  ( (Unit!150120) )
))
(declare-fun lt!2104334 () Unit!150119)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!675 (List!59145 List!59145 List!59145) Unit!150119)

(assert (=> b!5109778 (= lt!2104334 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!675 knownP!20 testedP!265 input!5745))))

(declare-fun res!2174944 () Bool)

(assert (=> start!538812 (=> (not res!2174944) (not e!3186957))))

(assert (=> start!538812 (= res!2174944 (isPrefix!5538 testedP!265 input!5745))))

(assert (=> start!538812 e!3186957))

(assert (=> start!538812 e!3186955))

(declare-fun condSetEmpty!29657 () Bool)

(assert (=> start!538812 (= condSetEmpty!29657 (= z!4463 ((as const (Array Context!7034 Bool)) false)))))

(assert (=> start!538812 setRes!29658))

(declare-fun e!3186959 () Bool)

(assert (=> start!538812 e!3186959))

(declare-fun condSetEmpty!29658 () Bool)

(assert (=> start!538812 (= condSetEmpty!29658 (= baseZ!46 ((as const (Array Context!7034 Bool)) false)))))

(assert (=> start!538812 setRes!29657))

(assert (=> start!538812 e!3186952))

(declare-fun b!5109779 () Bool)

(declare-fun tp!1425575 () Bool)

(assert (=> b!5109779 (= e!3186953 tp!1425575)))

(declare-fun b!5109780 () Bool)

(declare-fun res!2174939 () Bool)

(assert (=> b!5109780 (=> res!2174939 e!3186956)))

(declare-fun lt!2104333 () Int)

(declare-fun lt!2104331 () Int)

(assert (=> b!5109780 (= res!2174939 (= lt!2104333 lt!2104331))))

(declare-fun b!5109781 () Bool)

(declare-fun tp!1425576 () Bool)

(assert (=> b!5109781 (= e!3186959 (and tp_is_empty!37539 tp!1425576))))

(declare-fun b!5109782 () Bool)

(assert (=> b!5109782 (= e!3186957 e!3186954)))

(declare-fun res!2174945 () Bool)

(assert (=> b!5109782 (=> (not res!2174945) (not e!3186954))))

(assert (=> b!5109782 (= res!2174945 (>= lt!2104331 lt!2104333))))

(assert (=> b!5109782 (= lt!2104333 (size!39439 testedP!265))))

(assert (=> b!5109782 (= lt!2104331 (size!39439 knownP!20))))

(declare-fun setElem!29658 () Context!7034)

(declare-fun setNonEmpty!29658 () Bool)

(declare-fun tp!1425571 () Bool)

(assert (=> setNonEmpty!29658 (= setRes!29658 (and tp!1425571 (inv!78513 setElem!29658) e!3186958))))

(declare-fun setRest!29657 () (InoxSet Context!7034))

(assert (=> setNonEmpty!29658 (= z!4463 ((_ map or) (store ((as const (Array Context!7034 Bool)) false) setElem!29658 true) setRest!29657))))

(declare-fun b!5109783 () Bool)

(declare-fun res!2174941 () Bool)

(assert (=> b!5109783 (=> res!2174941 e!3186956)))

(declare-fun derivationZipper!32 ((InoxSet Context!7034) List!59145) (InoxSet Context!7034))

(assert (=> b!5109783 (= res!2174941 (not (= (derivationZipper!32 baseZ!46 testedP!265) z!4463)))))

(assert (= (and start!538812 res!2174944) b!5109776))

(assert (= (and b!5109776 res!2174943) b!5109782))

(assert (= (and b!5109782 res!2174945) b!5109771))

(assert (= (and b!5109771 res!2174946) b!5109778))

(assert (= (and b!5109778 (not res!2174940)) b!5109783))

(assert (= (and b!5109783 (not res!2174941)) b!5109773))

(assert (= (and b!5109773 (not res!2174942)) b!5109780))

(assert (= (and b!5109780 (not res!2174939)) b!5109774))

(get-info :version)

(assert (= (and start!538812 ((_ is Cons!59021) input!5745)) b!5109777))

(assert (= (and start!538812 condSetEmpty!29657) setIsEmpty!29657))

(assert (= (and start!538812 (not condSetEmpty!29657)) setNonEmpty!29658))

(assert (= setNonEmpty!29658 b!5109775))

(assert (= (and start!538812 ((_ is Cons!59021) testedP!265)) b!5109781))

(assert (= (and start!538812 condSetEmpty!29658) setIsEmpty!29658))

(assert (= (and start!538812 (not condSetEmpty!29658)) setNonEmpty!29657))

(assert (= setNonEmpty!29657 b!5109779))

(assert (= (and start!538812 ((_ is Cons!59021) knownP!20)) b!5109772))

(declare-fun m!6166950 () Bool)

(assert (=> b!5109776 m!6166950))

(declare-fun m!6166952 () Bool)

(assert (=> b!5109782 m!6166952))

(declare-fun m!6166954 () Bool)

(assert (=> b!5109782 m!6166954))

(declare-fun m!6166956 () Bool)

(assert (=> b!5109771 m!6166956))

(declare-fun m!6166958 () Bool)

(assert (=> setNonEmpty!29658 m!6166958))

(declare-fun m!6166960 () Bool)

(assert (=> setNonEmpty!29657 m!6166960))

(declare-fun m!6166962 () Bool)

(assert (=> b!5109778 m!6166962))

(assert (=> b!5109778 m!6166962))

(declare-fun m!6166964 () Bool)

(assert (=> b!5109778 m!6166964))

(declare-fun m!6166966 () Bool)

(assert (=> b!5109778 m!6166966))

(declare-fun m!6166968 () Bool)

(assert (=> b!5109778 m!6166968))

(declare-fun m!6166970 () Bool)

(assert (=> start!538812 m!6166970))

(declare-fun m!6166972 () Bool)

(assert (=> b!5109783 m!6166972))

(declare-fun m!6166974 () Bool)

(assert (=> b!5109774 m!6166974))

(declare-fun m!6166976 () Bool)

(assert (=> b!5109773 m!6166976))

(check-sat (not b!5109779) (not b!5109775) (not b!5109781) (not b!5109773) (not setNonEmpty!29657) (not b!5109772) (not b!5109777) (not b!5109782) (not b!5109776) (not start!538812) (not b!5109778) (not setNonEmpty!29658) tp_is_empty!37539 (not b!5109774) (not b!5109783) (not b!5109771))
(check-sat)
