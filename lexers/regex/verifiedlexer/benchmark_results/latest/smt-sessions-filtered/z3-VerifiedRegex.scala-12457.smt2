; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694568 () Bool)

(assert start!694568)

(declare-fun setIsEmpty!51918 () Bool)

(declare-fun setRes!51918 () Bool)

(assert (=> setIsEmpty!51918 setRes!51918))

(declare-fun b!7129696 () Bool)

(declare-fun e!4284558 () Bool)

(declare-fun tp_is_empty!45695 () Bool)

(declare-fun tp!1964633 () Bool)

(assert (=> b!7129696 (= e!4284558 (and tp_is_empty!45695 tp!1964633))))

(declare-fun b!7129697 () Bool)

(declare-fun e!4284553 () Bool)

(declare-fun tp!1964637 () Bool)

(assert (=> b!7129697 (= e!4284553 (and tp_is_empty!45695 tp!1964637))))

(declare-fun b!7129698 () Bool)

(declare-fun res!2909025 () Bool)

(declare-fun e!4284557 () Bool)

(assert (=> b!7129698 (=> (not res!2909025) (not e!4284557))))

(declare-fun e!4284551 () Bool)

(assert (=> b!7129698 (= res!2909025 e!4284551)))

(declare-fun res!2909026 () Bool)

(assert (=> b!7129698 (=> res!2909026 e!4284551)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36364 0))(
  ( (C!36365 (val!28108 Int)) )
))
(declare-datatypes ((Regex!18047 0))(
  ( (ElementMatch!18047 (c!1329957 C!36364)) (Concat!26892 (regOne!36606 Regex!18047) (regTwo!36606 Regex!18047)) (EmptyExpr!18047) (Star!18047 (reg!18376 Regex!18047)) (EmptyLang!18047) (Union!18047 (regOne!36607 Regex!18047) (regTwo!36607 Regex!18047)) )
))
(declare-datatypes ((List!69148 0))(
  ( (Nil!69024) (Cons!69024 (h!75472 Regex!18047) (t!383125 List!69148)) )
))
(declare-datatypes ((Context!14082 0))(
  ( (Context!14083 (exprs!7541 List!69148)) )
))
(declare-fun z1!552 () (InoxSet Context!14082))

(declare-datatypes ((List!69149 0))(
  ( (Nil!69025) (Cons!69025 (h!75473 C!36364) (t!383126 List!69149)) )
))
(declare-fun s1Rec!140 () List!69149)

(declare-fun matchZipper!3303 ((InoxSet Context!14082) List!69149) Bool)

(assert (=> b!7129698 (= res!2909026 (not (matchZipper!3303 z1!552 s1Rec!140)))))

(declare-fun setIsEmpty!51919 () Bool)

(declare-fun setRes!51919 () Bool)

(assert (=> setIsEmpty!51919 setRes!51919))

(declare-fun setElem!51919 () Context!14082)

(declare-fun setNonEmpty!51918 () Bool)

(declare-fun e!4284556 () Bool)

(declare-fun tp!1964639 () Bool)

(declare-fun inv!88145 (Context!14082) Bool)

(assert (=> setNonEmpty!51918 (= setRes!51919 (and tp!1964639 (inv!88145 setElem!51919) e!4284556))))

(declare-fun setRest!51919 () (InoxSet Context!14082))

(assert (=> setNonEmpty!51918 (= z1!552 ((_ map or) (store ((as const (Array Context!14082 Bool)) false) setElem!51919 true) setRest!51919))))

(declare-fun b!7129699 () Bool)

(declare-fun e!4284548 () Bool)

(declare-fun tp!1964638 () Bool)

(assert (=> b!7129699 (= e!4284548 (and tp_is_empty!45695 tp!1964638))))

(declare-fun b!7129700 () Bool)

(declare-fun e!4284552 () Bool)

(assert (=> b!7129700 (= e!4284557 (not e!4284552))))

(declare-fun res!2909030 () Bool)

(assert (=> b!7129700 (=> res!2909030 e!4284552)))

(declare-fun s1!1688 () List!69149)

(assert (=> b!7129700 (= res!2909030 (not (= s1Rec!140 s1!1688)))))

(declare-fun lt!2563919 () List!69149)

(declare-fun isPrefix!5916 (List!69149 List!69149) Bool)

(assert (=> b!7129700 (isPrefix!5916 s1Rec!140 lt!2563919)))

(declare-datatypes ((Unit!162923 0))(
  ( (Unit!162924) )
))
(declare-fun lt!2563918 () Unit!162923)

(declare-fun s2Rec!140 () List!69149)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3629 (List!69149 List!69149) Unit!162923)

(assert (=> b!7129700 (= lt!2563918 (lemmaConcatTwoListThenFirstIsPrefix!3629 s1Rec!140 s2Rec!140))))

(declare-fun lt!2563917 () List!69149)

(assert (=> b!7129700 (isPrefix!5916 s1!1688 lt!2563917)))

(declare-fun lt!2563920 () Unit!162923)

(declare-fun s2!1620 () List!69149)

(assert (=> b!7129700 (= lt!2563920 (lemmaConcatTwoListThenFirstIsPrefix!3629 s1!1688 s2!1620))))

(declare-fun b!7129701 () Bool)

(assert (=> b!7129701 (= e!4284552 false)))

(assert (=> b!7129701 (= s2!1620 s2Rec!140)))

(declare-fun lt!2563916 () Unit!162923)

(declare-fun s!7390 () List!69149)

(declare-fun lemmaSamePrefixThenSameSuffix!2727 (List!69149 List!69149 List!69149 List!69149 List!69149) Unit!162923)

(assert (=> b!7129701 (= lt!2563916 (lemmaSamePrefixThenSameSuffix!2727 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(declare-fun b!7129702 () Bool)

(declare-fun res!2909028 () Bool)

(declare-fun e!4284559 () Bool)

(assert (=> b!7129702 (=> (not res!2909028) (not e!4284559))))

(assert (=> b!7129702 (= res!2909028 (isPrefix!5916 s1Rec!140 s1!1688))))

(declare-fun b!7129703 () Bool)

(declare-fun e!4284554 () Bool)

(declare-fun tp!1964636 () Bool)

(assert (=> b!7129703 (= e!4284554 (and tp_is_empty!45695 tp!1964636))))

(declare-fun b!7129704 () Bool)

(declare-fun z2!471 () (InoxSet Context!14082))

(assert (=> b!7129704 (= e!4284551 (not (matchZipper!3303 z2!471 s2Rec!140)))))

(declare-fun b!7129705 () Bool)

(declare-fun res!2909032 () Bool)

(assert (=> b!7129705 (=> (not res!2909032) (not e!4284557))))

(get-info :version)

(assert (=> b!7129705 (= res!2909032 (not ((_ is Nil!69025) s2Rec!140)))))

(declare-fun b!7129706 () Bool)

(declare-fun tp!1964635 () Bool)

(assert (=> b!7129706 (= e!4284556 tp!1964635)))

(declare-fun b!7129707 () Bool)

(declare-fun e!4284550 () Bool)

(declare-fun tp!1964632 () Bool)

(assert (=> b!7129707 (= e!4284550 tp!1964632)))

(declare-fun b!7129708 () Bool)

(declare-fun res!2909031 () Bool)

(declare-fun e!4284555 () Bool)

(assert (=> b!7129708 (=> (not res!2909031) (not e!4284555))))

(assert (=> b!7129708 (= res!2909031 (matchZipper!3303 z2!471 s2!1620))))

(declare-fun b!7129709 () Bool)

(assert (=> b!7129709 (= e!4284559 e!4284557)))

(declare-fun res!2909027 () Bool)

(assert (=> b!7129709 (=> (not res!2909027) (not e!4284557))))

(assert (=> b!7129709 (= res!2909027 (= lt!2563919 s!7390))))

(declare-fun ++!16185 (List!69149 List!69149) List!69149)

(assert (=> b!7129709 (= lt!2563919 (++!16185 s1Rec!140 s2Rec!140))))

(declare-fun res!2909029 () Bool)

(assert (=> start!694568 (=> (not res!2909029) (not e!4284555))))

(assert (=> start!694568 (= res!2909029 (matchZipper!3303 z1!552 s1!1688))))

(assert (=> start!694568 e!4284555))

(assert (=> start!694568 e!4284558))

(declare-fun condSetEmpty!51919 () Bool)

(assert (=> start!694568 (= condSetEmpty!51919 (= z1!552 ((as const (Array Context!14082 Bool)) false)))))

(assert (=> start!694568 setRes!51919))

(declare-fun e!4284549 () Bool)

(assert (=> start!694568 e!4284549))

(declare-fun condSetEmpty!51918 () Bool)

(assert (=> start!694568 (= condSetEmpty!51918 (= z2!471 ((as const (Array Context!14082 Bool)) false)))))

(assert (=> start!694568 setRes!51918))

(assert (=> start!694568 e!4284548))

(assert (=> start!694568 e!4284553))

(assert (=> start!694568 e!4284554))

(declare-fun b!7129710 () Bool)

(declare-fun tp!1964634 () Bool)

(assert (=> b!7129710 (= e!4284549 (and tp_is_empty!45695 tp!1964634))))

(declare-fun setElem!51918 () Context!14082)

(declare-fun tp!1964631 () Bool)

(declare-fun setNonEmpty!51919 () Bool)

(assert (=> setNonEmpty!51919 (= setRes!51918 (and tp!1964631 (inv!88145 setElem!51918) e!4284550))))

(declare-fun setRest!51918 () (InoxSet Context!14082))

(assert (=> setNonEmpty!51919 (= z2!471 ((_ map or) (store ((as const (Array Context!14082 Bool)) false) setElem!51918 true) setRest!51918))))

(declare-fun b!7129711 () Bool)

(assert (=> b!7129711 (= e!4284555 e!4284559)))

(declare-fun res!2909033 () Bool)

(assert (=> b!7129711 (=> (not res!2909033) (not e!4284559))))

(assert (=> b!7129711 (= res!2909033 (= lt!2563917 s!7390))))

(assert (=> b!7129711 (= lt!2563917 (++!16185 s1!1688 s2!1620))))

(assert (= (and start!694568 res!2909029) b!7129708))

(assert (= (and b!7129708 res!2909031) b!7129711))

(assert (= (and b!7129711 res!2909033) b!7129702))

(assert (= (and b!7129702 res!2909028) b!7129709))

(assert (= (and b!7129709 res!2909027) b!7129698))

(assert (= (and b!7129698 (not res!2909026)) b!7129704))

(assert (= (and b!7129698 res!2909025) b!7129705))

(assert (= (and b!7129705 res!2909032) b!7129700))

(assert (= (and b!7129700 (not res!2909030)) b!7129701))

(assert (= (and start!694568 ((_ is Cons!69025) s1Rec!140)) b!7129696))

(assert (= (and start!694568 condSetEmpty!51919) setIsEmpty!51919))

(assert (= (and start!694568 (not condSetEmpty!51919)) setNonEmpty!51918))

(assert (= setNonEmpty!51918 b!7129706))

(assert (= (and start!694568 ((_ is Cons!69025) s2Rec!140)) b!7129710))

(assert (= (and start!694568 condSetEmpty!51918) setIsEmpty!51918))

(assert (= (and start!694568 (not condSetEmpty!51918)) setNonEmpty!51919))

(assert (= setNonEmpty!51919 b!7129707))

(assert (= (and start!694568 ((_ is Cons!69025) s2!1620)) b!7129699))

(assert (= (and start!694568 ((_ is Cons!69025) s1!1688)) b!7129697))

(assert (= (and start!694568 ((_ is Cons!69025) s!7390)) b!7129703))

(declare-fun m!7846760 () Bool)

(assert (=> setNonEmpty!51919 m!7846760))

(declare-fun m!7846762 () Bool)

(assert (=> b!7129698 m!7846762))

(declare-fun m!7846764 () Bool)

(assert (=> b!7129709 m!7846764))

(declare-fun m!7846766 () Bool)

(assert (=> b!7129700 m!7846766))

(declare-fun m!7846768 () Bool)

(assert (=> b!7129700 m!7846768))

(declare-fun m!7846770 () Bool)

(assert (=> b!7129700 m!7846770))

(declare-fun m!7846772 () Bool)

(assert (=> b!7129700 m!7846772))

(declare-fun m!7846774 () Bool)

(assert (=> b!7129701 m!7846774))

(declare-fun m!7846776 () Bool)

(assert (=> b!7129704 m!7846776))

(declare-fun m!7846778 () Bool)

(assert (=> start!694568 m!7846778))

(declare-fun m!7846780 () Bool)

(assert (=> b!7129711 m!7846780))

(declare-fun m!7846782 () Bool)

(assert (=> setNonEmpty!51918 m!7846782))

(declare-fun m!7846784 () Bool)

(assert (=> b!7129702 m!7846784))

(declare-fun m!7846786 () Bool)

(assert (=> b!7129708 m!7846786))

(check-sat (not b!7129706) (not b!7129710) (not b!7129703) (not setNonEmpty!51919) (not b!7129711) (not b!7129707) (not b!7129697) (not setNonEmpty!51918) (not b!7129698) (not b!7129709) tp_is_empty!45695 (not b!7129702) (not b!7129708) (not b!7129696) (not start!694568) (not b!7129701) (not b!7129704) (not b!7129699) (not b!7129700))
(check-sat)
