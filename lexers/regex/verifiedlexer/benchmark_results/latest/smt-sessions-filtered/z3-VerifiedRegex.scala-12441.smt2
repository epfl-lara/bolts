; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694228 () Bool)

(assert start!694228)

(declare-datatypes ((C!36300 0))(
  ( (C!36301 (val!28076 Int)) )
))
(declare-datatypes ((Regex!18015 0))(
  ( (ElementMatch!18015 (c!1329369 C!36300)) (Concat!26860 (regOne!36542 Regex!18015) (regTwo!36542 Regex!18015)) (EmptyExpr!18015) (Star!18015 (reg!18344 Regex!18015)) (EmptyLang!18015) (Union!18015 (regOne!36543 Regex!18015) (regTwo!36543 Regex!18015)) )
))
(declare-datatypes ((List!69081 0))(
  ( (Nil!68957) (Cons!68957 (h!75405 Regex!18015) (t!383058 List!69081)) )
))
(declare-datatypes ((Context!14018 0))(
  ( (Context!14019 (exprs!7509 List!69081)) )
))
(declare-fun setElem!51655 () Context!14018)

(declare-fun e!4282199 () Bool)

(declare-fun tp!1962836 () Bool)

(declare-fun setRes!51654 () Bool)

(declare-fun setNonEmpty!51654 () Bool)

(declare-fun inv!88065 (Context!14018) Bool)

(assert (=> setNonEmpty!51654 (= setRes!51654 (and tp!1962836 (inv!88065 setElem!51655) e!4282199))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z2!471 () (InoxSet Context!14018))

(declare-fun setRest!51655 () (InoxSet Context!14018))

(assert (=> setNonEmpty!51654 (= z2!471 ((_ map or) (store ((as const (Array Context!14018 Bool)) false) setElem!51655 true) setRest!51655))))

(declare-fun b!7125775 () Bool)

(declare-fun e!4282198 () Bool)

(declare-fun tp_is_empty!45631 () Bool)

(declare-fun tp!1962831 () Bool)

(assert (=> b!7125775 (= e!4282198 (and tp_is_empty!45631 tp!1962831))))

(declare-fun setIsEmpty!51654 () Bool)

(declare-fun setRes!51655 () Bool)

(assert (=> setIsEmpty!51654 setRes!51655))

(declare-fun b!7125776 () Bool)

(declare-fun e!4282201 () Bool)

(declare-fun tp!1962835 () Bool)

(assert (=> b!7125776 (= e!4282201 (and tp_is_empty!45631 tp!1962835))))

(declare-fun b!7125777 () Bool)

(declare-fun e!4282191 () Bool)

(declare-fun e!4282203 () Bool)

(assert (=> b!7125777 (= e!4282191 e!4282203)))

(declare-fun res!2907611 () Bool)

(assert (=> b!7125777 (=> (not res!2907611) (not e!4282203))))

(declare-datatypes ((List!69082 0))(
  ( (Nil!68958) (Cons!68958 (h!75406 C!36300) (t!383059 List!69082)) )
))
(declare-fun lt!2563213 () List!69082)

(declare-fun s!7390 () List!69082)

(assert (=> b!7125777 (= res!2907611 (= lt!2563213 s!7390))))

(declare-fun s1!1688 () List!69082)

(declare-fun s2!1620 () List!69082)

(declare-fun ++!16153 (List!69082 List!69082) List!69082)

(assert (=> b!7125777 (= lt!2563213 (++!16153 s1!1688 s2!1620))))

(declare-fun b!7125778 () Bool)

(declare-fun e!4282192 () Bool)

(declare-fun tp!1962833 () Bool)

(assert (=> b!7125778 (= e!4282192 (and tp_is_empty!45631 tp!1962833))))

(declare-fun res!2907606 () Bool)

(assert (=> start!694228 (=> (not res!2907606) (not e!4282191))))

(declare-fun z1!552 () (InoxSet Context!14018))

(declare-fun matchZipper!3271 ((InoxSet Context!14018) List!69082) Bool)

(assert (=> start!694228 (= res!2907606 (matchZipper!3271 z1!552 s1!1688))))

(assert (=> start!694228 e!4282191))

(assert (=> start!694228 e!4282192))

(declare-fun condSetEmpty!51655 () Bool)

(assert (=> start!694228 (= condSetEmpty!51655 (= z1!552 ((as const (Array Context!14018 Bool)) false)))))

(assert (=> start!694228 setRes!51655))

(assert (=> start!694228 e!4282198))

(declare-fun condSetEmpty!51654 () Bool)

(assert (=> start!694228 (= condSetEmpty!51654 (= z2!471 ((as const (Array Context!14018 Bool)) false)))))

(assert (=> start!694228 setRes!51654))

(assert (=> start!694228 e!4282201))

(declare-fun e!4282197 () Bool)

(assert (=> start!694228 e!4282197))

(declare-fun e!4282193 () Bool)

(assert (=> start!694228 e!4282193))

(declare-fun setNonEmpty!51655 () Bool)

(declare-fun tp!1962837 () Bool)

(declare-fun e!4282200 () Bool)

(declare-fun setElem!51654 () Context!14018)

(assert (=> setNonEmpty!51655 (= setRes!51655 (and tp!1962837 (inv!88065 setElem!51654) e!4282200))))

(declare-fun setRest!51654 () (InoxSet Context!14018))

(assert (=> setNonEmpty!51655 (= z1!552 ((_ map or) (store ((as const (Array Context!14018 Bool)) false) setElem!51654 true) setRest!51654))))

(declare-fun setIsEmpty!51655 () Bool)

(assert (=> setIsEmpty!51655 setRes!51654))

(declare-fun b!7125779 () Bool)

(declare-fun e!4282194 () Bool)

(assert (=> b!7125779 (= e!4282194 true)))

(declare-fun lt!2563208 () Bool)

(declare-fun s1Rec!140 () List!69082)

(declare-fun isPrefix!5884 (List!69082 List!69082) Bool)

(assert (=> b!7125779 (= lt!2563208 (isPrefix!5884 s1Rec!140 s!7390))))

(declare-fun b!7125780 () Bool)

(declare-fun res!2907609 () Bool)

(assert (=> b!7125780 (=> (not res!2907609) (not e!4282203))))

(assert (=> b!7125780 (= res!2907609 (isPrefix!5884 s1Rec!140 s1!1688))))

(declare-fun b!7125781 () Bool)

(declare-fun tp!1962838 () Bool)

(assert (=> b!7125781 (= e!4282193 (and tp_is_empty!45631 tp!1962838))))

(declare-fun b!7125782 () Bool)

(declare-fun res!2907603 () Bool)

(assert (=> b!7125782 (=> (not res!2907603) (not e!4282191))))

(assert (=> b!7125782 (= res!2907603 (matchZipper!3271 z2!471 s2!1620))))

(declare-fun b!7125783 () Bool)

(declare-fun res!2907610 () Bool)

(declare-fun e!4282196 () Bool)

(assert (=> b!7125783 (=> (not res!2907610) (not e!4282196))))

(declare-fun e!4282202 () Bool)

(assert (=> b!7125783 (= res!2907610 e!4282202)))

(declare-fun res!2907605 () Bool)

(assert (=> b!7125783 (=> res!2907605 e!4282202)))

(assert (=> b!7125783 (= res!2907605 (not (matchZipper!3271 z1!552 s1Rec!140)))))

(declare-fun b!7125784 () Bool)

(declare-fun tp!1962834 () Bool)

(assert (=> b!7125784 (= e!4282197 (and tp_is_empty!45631 tp!1962834))))

(declare-fun b!7125785 () Bool)

(assert (=> b!7125785 (= e!4282196 (not e!4282194))))

(declare-fun res!2907608 () Bool)

(assert (=> b!7125785 (=> res!2907608 e!4282194)))

(declare-fun size!41452 (List!69082) Int)

(assert (=> b!7125785 (= res!2907608 (not (= (size!41452 s1Rec!140) (size!41452 s1!1688))))))

(declare-fun lt!2563218 () List!69082)

(declare-fun lt!2563216 () List!69082)

(assert (=> b!7125785 (isPrefix!5884 lt!2563218 lt!2563216)))

(declare-datatypes ((Unit!162865 0))(
  ( (Unit!162866) )
))
(declare-fun lt!2563209 () Unit!162865)

(declare-fun s2Rec!140 () List!69082)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3615 (List!69082 List!69082) Unit!162865)

(assert (=> b!7125785 (= lt!2563209 (lemmaConcatTwoListThenFirstIsPrefix!3615 lt!2563218 (t!383059 s2Rec!140)))))

(assert (=> b!7125785 (= lt!2563216 s!7390)))

(assert (=> b!7125785 (= lt!2563216 (++!16153 lt!2563218 (t!383059 s2Rec!140)))))

(assert (=> b!7125785 (= lt!2563218 (++!16153 s1Rec!140 (Cons!68958 (h!75406 s2Rec!140) Nil!68958)))))

(declare-fun lt!2563210 () Unit!162865)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3001 (List!69082 C!36300 List!69082 List!69082) Unit!162865)

(assert (=> b!7125785 (= lt!2563210 (lemmaMoveElementToOtherListKeepsConcatEq!3001 s1Rec!140 (h!75406 s2Rec!140) (t!383059 s2Rec!140) s!7390))))

(declare-fun lt!2563217 () Unit!162865)

(declare-fun e!4282195 () Unit!162865)

(assert (=> b!7125785 (= lt!2563217 e!4282195)))

(declare-fun c!1329368 () Bool)

(assert (=> b!7125785 (= c!1329368 (= s1Rec!140 s1!1688))))

(declare-fun lt!2563214 () List!69082)

(assert (=> b!7125785 (isPrefix!5884 s1Rec!140 lt!2563214)))

(declare-fun lt!2563211 () Unit!162865)

(assert (=> b!7125785 (= lt!2563211 (lemmaConcatTwoListThenFirstIsPrefix!3615 s1Rec!140 s2Rec!140))))

(assert (=> b!7125785 (isPrefix!5884 s1!1688 lt!2563213)))

(declare-fun lt!2563212 () Unit!162865)

(assert (=> b!7125785 (= lt!2563212 (lemmaConcatTwoListThenFirstIsPrefix!3615 s1!1688 s2!1620))))

(declare-fun b!7125786 () Bool)

(declare-fun res!2907602 () Bool)

(assert (=> b!7125786 (=> (not res!2907602) (not e!4282196))))

(get-info :version)

(assert (=> b!7125786 (= res!2907602 (not ((_ is Nil!68958) s2Rec!140)))))

(declare-fun b!7125787 () Bool)

(declare-fun Unit!162867 () Unit!162865)

(assert (=> b!7125787 (= e!4282195 Unit!162867)))

(declare-fun b!7125788 () Bool)

(declare-fun tp!1962839 () Bool)

(assert (=> b!7125788 (= e!4282200 tp!1962839)))

(declare-fun b!7125789 () Bool)

(assert (=> b!7125789 (= e!4282202 (not (matchZipper!3271 z2!471 s2Rec!140)))))

(declare-fun b!7125790 () Bool)

(declare-fun tp!1962832 () Bool)

(assert (=> b!7125790 (= e!4282199 tp!1962832)))

(declare-fun b!7125791 () Bool)

(declare-fun res!2907604 () Bool)

(assert (=> b!7125791 (=> res!2907604 e!4282194)))

(assert (=> b!7125791 (= res!2907604 (not (isPrefix!5884 s1!1688 s!7390)))))

(declare-fun b!7125792 () Bool)

(declare-fun Unit!162868 () Unit!162865)

(assert (=> b!7125792 (= e!4282195 Unit!162868)))

(declare-fun lt!2563215 () Unit!162865)

(declare-fun lemmaSamePrefixThenSameSuffix!2719 (List!69082 List!69082 List!69082 List!69082 List!69082) Unit!162865)

(assert (=> b!7125792 (= lt!2563215 (lemmaSamePrefixThenSameSuffix!2719 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7125792 false))

(declare-fun b!7125793 () Bool)

(assert (=> b!7125793 (= e!4282203 e!4282196)))

(declare-fun res!2907607 () Bool)

(assert (=> b!7125793 (=> (not res!2907607) (not e!4282196))))

(assert (=> b!7125793 (= res!2907607 (= lt!2563214 s!7390))))

(assert (=> b!7125793 (= lt!2563214 (++!16153 s1Rec!140 s2Rec!140))))

(assert (= (and start!694228 res!2907606) b!7125782))

(assert (= (and b!7125782 res!2907603) b!7125777))

(assert (= (and b!7125777 res!2907611) b!7125780))

(assert (= (and b!7125780 res!2907609) b!7125793))

(assert (= (and b!7125793 res!2907607) b!7125783))

(assert (= (and b!7125783 (not res!2907605)) b!7125789))

(assert (= (and b!7125783 res!2907610) b!7125786))

(assert (= (and b!7125786 res!2907602) b!7125785))

(assert (= (and b!7125785 c!1329368) b!7125792))

(assert (= (and b!7125785 (not c!1329368)) b!7125787))

(assert (= (and b!7125785 (not res!2907608)) b!7125791))

(assert (= (and b!7125791 (not res!2907604)) b!7125779))

(assert (= (and start!694228 ((_ is Cons!68958) s1Rec!140)) b!7125778))

(assert (= (and start!694228 condSetEmpty!51655) setIsEmpty!51654))

(assert (= (and start!694228 (not condSetEmpty!51655)) setNonEmpty!51655))

(assert (= setNonEmpty!51655 b!7125788))

(assert (= (and start!694228 ((_ is Cons!68958) s2Rec!140)) b!7125775))

(assert (= (and start!694228 condSetEmpty!51654) setIsEmpty!51655))

(assert (= (and start!694228 (not condSetEmpty!51654)) setNonEmpty!51654))

(assert (= setNonEmpty!51654 b!7125790))

(assert (= (and start!694228 ((_ is Cons!68958) s2!1620)) b!7125776))

(assert (= (and start!694228 ((_ is Cons!68958) s1!1688)) b!7125784))

(assert (= (and start!694228 ((_ is Cons!68958) s!7390)) b!7125781))

(declare-fun m!7842742 () Bool)

(assert (=> b!7125780 m!7842742))

(declare-fun m!7842744 () Bool)

(assert (=> b!7125777 m!7842744))

(declare-fun m!7842746 () Bool)

(assert (=> start!694228 m!7842746))

(declare-fun m!7842748 () Bool)

(assert (=> b!7125782 m!7842748))

(declare-fun m!7842750 () Bool)

(assert (=> b!7125789 m!7842750))

(declare-fun m!7842752 () Bool)

(assert (=> b!7125793 m!7842752))

(declare-fun m!7842754 () Bool)

(assert (=> b!7125785 m!7842754))

(declare-fun m!7842756 () Bool)

(assert (=> b!7125785 m!7842756))

(declare-fun m!7842758 () Bool)

(assert (=> b!7125785 m!7842758))

(declare-fun m!7842760 () Bool)

(assert (=> b!7125785 m!7842760))

(declare-fun m!7842762 () Bool)

(assert (=> b!7125785 m!7842762))

(declare-fun m!7842764 () Bool)

(assert (=> b!7125785 m!7842764))

(declare-fun m!7842766 () Bool)

(assert (=> b!7125785 m!7842766))

(declare-fun m!7842768 () Bool)

(assert (=> b!7125785 m!7842768))

(declare-fun m!7842770 () Bool)

(assert (=> b!7125785 m!7842770))

(declare-fun m!7842772 () Bool)

(assert (=> b!7125785 m!7842772))

(declare-fun m!7842774 () Bool)

(assert (=> b!7125785 m!7842774))

(declare-fun m!7842776 () Bool)

(assert (=> b!7125791 m!7842776))

(declare-fun m!7842778 () Bool)

(assert (=> setNonEmpty!51655 m!7842778))

(declare-fun m!7842780 () Bool)

(assert (=> b!7125779 m!7842780))

(declare-fun m!7842782 () Bool)

(assert (=> b!7125783 m!7842782))

(declare-fun m!7842784 () Bool)

(assert (=> b!7125792 m!7842784))

(declare-fun m!7842786 () Bool)

(assert (=> setNonEmpty!51654 m!7842786))

(check-sat (not b!7125793) (not b!7125777) (not b!7125783) (not start!694228) (not setNonEmpty!51655) (not b!7125779) (not b!7125776) (not b!7125778) (not b!7125791) (not b!7125775) (not b!7125789) tp_is_empty!45631 (not b!7125780) (not b!7125781) (not b!7125788) (not b!7125785) (not b!7125792) (not b!7125784) (not b!7125790) (not setNonEmpty!51654) (not b!7125782))
(check-sat)
