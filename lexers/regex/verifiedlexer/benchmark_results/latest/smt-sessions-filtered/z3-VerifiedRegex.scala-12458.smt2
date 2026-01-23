; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694572 () Bool)

(assert start!694572)

(declare-fun b!7129797 () Bool)

(declare-fun e!4284621 () Bool)

(declare-fun tp!1964688 () Bool)

(assert (=> b!7129797 (= e!4284621 tp!1964688)))

(declare-fun b!7129798 () Bool)

(declare-fun e!4284631 () Bool)

(declare-fun tp!1964689 () Bool)

(assert (=> b!7129798 (= e!4284631 tp!1964689)))

(declare-fun b!7129799 () Bool)

(declare-fun e!4284629 () Bool)

(declare-fun e!4284630 () Bool)

(assert (=> b!7129799 (= e!4284629 e!4284630)))

(declare-fun res!2909076 () Bool)

(assert (=> b!7129799 (=> (not res!2909076) (not e!4284630))))

(declare-datatypes ((C!36368 0))(
  ( (C!36369 (val!28110 Int)) )
))
(declare-datatypes ((List!69152 0))(
  ( (Nil!69028) (Cons!69028 (h!75476 C!36368) (t!383129 List!69152)) )
))
(declare-fun lt!2563953 () List!69152)

(declare-fun s!7390 () List!69152)

(assert (=> b!7129799 (= res!2909076 (= lt!2563953 s!7390))))

(declare-fun s1!1688 () List!69152)

(declare-fun s2!1620 () List!69152)

(declare-fun ++!16187 (List!69152 List!69152) List!69152)

(assert (=> b!7129799 (= lt!2563953 (++!16187 s1!1688 s2!1620))))

(declare-fun setIsEmpty!51930 () Bool)

(declare-fun setRes!51931 () Bool)

(assert (=> setIsEmpty!51930 setRes!51931))

(declare-fun b!7129800 () Bool)

(declare-fun res!2909080 () Bool)

(declare-fun e!4284625 () Bool)

(assert (=> b!7129800 (=> (not res!2909080) (not e!4284625))))

(declare-fun e!4284628 () Bool)

(assert (=> b!7129800 (= res!2909080 e!4284628)))

(declare-fun res!2909077 () Bool)

(assert (=> b!7129800 (=> res!2909077 e!4284628)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18049 0))(
  ( (ElementMatch!18049 (c!1329965 C!36368)) (Concat!26894 (regOne!36610 Regex!18049) (regTwo!36610 Regex!18049)) (EmptyExpr!18049) (Star!18049 (reg!18378 Regex!18049)) (EmptyLang!18049) (Union!18049 (regOne!36611 Regex!18049) (regTwo!36611 Regex!18049)) )
))
(declare-datatypes ((List!69153 0))(
  ( (Nil!69029) (Cons!69029 (h!75477 Regex!18049) (t!383130 List!69153)) )
))
(declare-datatypes ((Context!14086 0))(
  ( (Context!14087 (exprs!7543 List!69153)) )
))
(declare-fun z1!552 () (InoxSet Context!14086))

(declare-fun s1Rec!140 () List!69152)

(declare-fun matchZipper!3305 ((InoxSet Context!14086) List!69152) Bool)

(assert (=> b!7129800 (= res!2909077 (not (matchZipper!3305 z1!552 s1Rec!140)))))

(declare-fun b!7129801 () Bool)

(declare-fun e!4284623 () Bool)

(declare-fun tp_is_empty!45699 () Bool)

(declare-fun tp!1964691 () Bool)

(assert (=> b!7129801 (= e!4284623 (and tp_is_empty!45699 tp!1964691))))

(declare-fun b!7129802 () Bool)

(declare-fun e!4284627 () Bool)

(declare-fun tp!1964685 () Bool)

(assert (=> b!7129802 (= e!4284627 (and tp_is_empty!45699 tp!1964685))))

(declare-fun b!7129803 () Bool)

(declare-fun e!4284620 () Bool)

(declare-fun tp!1964693 () Bool)

(assert (=> b!7129803 (= e!4284620 (and tp_is_empty!45699 tp!1964693))))

(declare-fun res!2909078 () Bool)

(assert (=> start!694572 (=> (not res!2909078) (not e!4284629))))

(assert (=> start!694572 (= res!2909078 (matchZipper!3305 z1!552 s1!1688))))

(assert (=> start!694572 e!4284629))

(assert (=> start!694572 e!4284620))

(declare-fun condSetEmpty!51931 () Bool)

(assert (=> start!694572 (= condSetEmpty!51931 (= z1!552 ((as const (Array Context!14086 Bool)) false)))))

(declare-fun setRes!51930 () Bool)

(assert (=> start!694572 setRes!51930))

(declare-fun e!4284626 () Bool)

(assert (=> start!694572 e!4284626))

(declare-fun condSetEmpty!51930 () Bool)

(declare-fun z2!471 () (InoxSet Context!14086))

(assert (=> start!694572 (= condSetEmpty!51930 (= z2!471 ((as const (Array Context!14086 Bool)) false)))))

(assert (=> start!694572 setRes!51931))

(declare-fun e!4284622 () Bool)

(assert (=> start!694572 e!4284622))

(assert (=> start!694572 e!4284627))

(assert (=> start!694572 e!4284623))

(declare-fun setIsEmpty!51931 () Bool)

(assert (=> setIsEmpty!51931 setRes!51930))

(declare-fun b!7129804 () Bool)

(declare-fun res!2909079 () Bool)

(assert (=> b!7129804 (=> (not res!2909079) (not e!4284625))))

(declare-fun s2Rec!140 () List!69152)

(get-info :version)

(assert (=> b!7129804 (= res!2909079 (not ((_ is Nil!69028) s2Rec!140)))))

(declare-fun b!7129805 () Bool)

(assert (=> b!7129805 (= e!4284630 e!4284625)))

(declare-fun res!2909081 () Bool)

(assert (=> b!7129805 (=> (not res!2909081) (not e!4284625))))

(declare-fun lt!2563952 () List!69152)

(assert (=> b!7129805 (= res!2909081 (= lt!2563952 s!7390))))

(assert (=> b!7129805 (= lt!2563952 (++!16187 s1Rec!140 s2Rec!140))))

(declare-fun setElem!51931 () Context!14086)

(declare-fun tp!1964687 () Bool)

(declare-fun setNonEmpty!51930 () Bool)

(declare-fun inv!88150 (Context!14086) Bool)

(assert (=> setNonEmpty!51930 (= setRes!51931 (and tp!1964687 (inv!88150 setElem!51931) e!4284621))))

(declare-fun setRest!51931 () (InoxSet Context!14086))

(assert (=> setNonEmpty!51930 (= z2!471 ((_ map or) (store ((as const (Array Context!14086 Bool)) false) setElem!51931 true) setRest!51931))))

(declare-fun b!7129806 () Bool)

(declare-fun res!2909075 () Bool)

(assert (=> b!7129806 (=> (not res!2909075) (not e!4284630))))

(declare-fun isPrefix!5918 (List!69152 List!69152) Bool)

(assert (=> b!7129806 (= res!2909075 (isPrefix!5918 s1Rec!140 s1!1688))))

(declare-fun b!7129807 () Bool)

(declare-datatypes ((Unit!162929 0))(
  ( (Unit!162930) )
))
(declare-fun e!4284624 () Unit!162929)

(declare-fun Unit!162931 () Unit!162929)

(assert (=> b!7129807 (= e!4284624 Unit!162931)))

(declare-fun b!7129808 () Bool)

(declare-fun Unit!162932 () Unit!162929)

(assert (=> b!7129808 (= e!4284624 Unit!162932)))

(declare-fun lt!2563956 () Unit!162929)

(declare-fun lemmaSamePrefixThenSameSuffix!2729 (List!69152 List!69152 List!69152 List!69152 List!69152) Unit!162929)

(assert (=> b!7129808 (= lt!2563956 (lemmaSamePrefixThenSameSuffix!2729 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7129808 false))

(declare-fun b!7129809 () Bool)

(declare-fun tp!1964690 () Bool)

(assert (=> b!7129809 (= e!4284622 (and tp_is_empty!45699 tp!1964690))))

(declare-fun setElem!51930 () Context!14086)

(declare-fun setNonEmpty!51931 () Bool)

(declare-fun tp!1964686 () Bool)

(assert (=> setNonEmpty!51931 (= setRes!51930 (and tp!1964686 (inv!88150 setElem!51930) e!4284631))))

(declare-fun setRest!51930 () (InoxSet Context!14086))

(assert (=> setNonEmpty!51931 (= z1!552 ((_ map or) (store ((as const (Array Context!14086 Bool)) false) setElem!51930 true) setRest!51930))))

(declare-fun b!7129810 () Bool)

(declare-fun tp!1964692 () Bool)

(assert (=> b!7129810 (= e!4284626 (and tp_is_empty!45699 tp!1964692))))

(declare-fun b!7129811 () Bool)

(assert (=> b!7129811 (= e!4284625 (not (= (++!16187 s1Rec!140 s2Rec!140) s!7390)))))

(declare-fun lt!2563951 () Unit!162929)

(assert (=> b!7129811 (= lt!2563951 e!4284624)))

(declare-fun c!1329964 () Bool)

(assert (=> b!7129811 (= c!1329964 (= s1Rec!140 s1!1688))))

(assert (=> b!7129811 (isPrefix!5918 s1Rec!140 lt!2563952)))

(declare-fun lt!2563955 () Unit!162929)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3631 (List!69152 List!69152) Unit!162929)

(assert (=> b!7129811 (= lt!2563955 (lemmaConcatTwoListThenFirstIsPrefix!3631 s1Rec!140 s2Rec!140))))

(assert (=> b!7129811 (isPrefix!5918 s1!1688 lt!2563953)))

(declare-fun lt!2563954 () Unit!162929)

(assert (=> b!7129811 (= lt!2563954 (lemmaConcatTwoListThenFirstIsPrefix!3631 s1!1688 s2!1620))))

(declare-fun b!7129812 () Bool)

(declare-fun res!2909074 () Bool)

(assert (=> b!7129812 (=> (not res!2909074) (not e!4284629))))

(assert (=> b!7129812 (= res!2909074 (matchZipper!3305 z2!471 s2!1620))))

(declare-fun b!7129813 () Bool)

(assert (=> b!7129813 (= e!4284628 (not (matchZipper!3305 z2!471 s2Rec!140)))))

(assert (= (and start!694572 res!2909078) b!7129812))

(assert (= (and b!7129812 res!2909074) b!7129799))

(assert (= (and b!7129799 res!2909076) b!7129806))

(assert (= (and b!7129806 res!2909075) b!7129805))

(assert (= (and b!7129805 res!2909081) b!7129800))

(assert (= (and b!7129800 (not res!2909077)) b!7129813))

(assert (= (and b!7129800 res!2909080) b!7129804))

(assert (= (and b!7129804 res!2909079) b!7129811))

(assert (= (and b!7129811 c!1329964) b!7129808))

(assert (= (and b!7129811 (not c!1329964)) b!7129807))

(assert (= (and start!694572 ((_ is Cons!69028) s1Rec!140)) b!7129803))

(assert (= (and start!694572 condSetEmpty!51931) setIsEmpty!51931))

(assert (= (and start!694572 (not condSetEmpty!51931)) setNonEmpty!51931))

(assert (= setNonEmpty!51931 b!7129798))

(assert (= (and start!694572 ((_ is Cons!69028) s2Rec!140)) b!7129810))

(assert (= (and start!694572 condSetEmpty!51930) setIsEmpty!51930))

(assert (= (and start!694572 (not condSetEmpty!51930)) setNonEmpty!51930))

(assert (= setNonEmpty!51930 b!7129797))

(assert (= (and start!694572 ((_ is Cons!69028) s2!1620)) b!7129809))

(assert (= (and start!694572 ((_ is Cons!69028) s1!1688)) b!7129802))

(assert (= (and start!694572 ((_ is Cons!69028) s!7390)) b!7129801))

(declare-fun m!7846816 () Bool)

(assert (=> setNonEmpty!51931 m!7846816))

(declare-fun m!7846818 () Bool)

(assert (=> b!7129811 m!7846818))

(declare-fun m!7846820 () Bool)

(assert (=> b!7129811 m!7846820))

(declare-fun m!7846822 () Bool)

(assert (=> b!7129811 m!7846822))

(declare-fun m!7846824 () Bool)

(assert (=> b!7129811 m!7846824))

(declare-fun m!7846826 () Bool)

(assert (=> b!7129811 m!7846826))

(declare-fun m!7846828 () Bool)

(assert (=> setNonEmpty!51930 m!7846828))

(declare-fun m!7846830 () Bool)

(assert (=> b!7129800 m!7846830))

(declare-fun m!7846832 () Bool)

(assert (=> b!7129812 m!7846832))

(declare-fun m!7846834 () Bool)

(assert (=> start!694572 m!7846834))

(declare-fun m!7846836 () Bool)

(assert (=> b!7129813 m!7846836))

(declare-fun m!7846838 () Bool)

(assert (=> b!7129799 m!7846838))

(declare-fun m!7846840 () Bool)

(assert (=> b!7129808 m!7846840))

(assert (=> b!7129805 m!7846820))

(declare-fun m!7846842 () Bool)

(assert (=> b!7129806 m!7846842))

(check-sat (not b!7129810) (not b!7129812) (not b!7129802) (not b!7129798) (not setNonEmpty!51931) (not b!7129808) (not setNonEmpty!51930) (not b!7129811) tp_is_empty!45699 (not b!7129809) (not b!7129801) (not b!7129813) (not b!7129799) (not b!7129803) (not b!7129806) (not b!7129797) (not b!7129805) (not b!7129800) (not start!694572))
(check-sat)
