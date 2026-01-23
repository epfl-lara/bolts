; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694576 () Bool)

(assert start!694576)

(declare-fun b!7129904 () Bool)

(declare-fun e!4284697 () Bool)

(declare-fun e!4284698 () Bool)

(assert (=> b!7129904 (= e!4284697 e!4284698)))

(declare-fun res!2909131 () Bool)

(assert (=> b!7129904 (=> (not res!2909131) (not e!4284698))))

(declare-datatypes ((C!36372 0))(
  ( (C!36373 (val!28112 Int)) )
))
(declare-datatypes ((List!69156 0))(
  ( (Nil!69032) (Cons!69032 (h!75480 C!36372) (t!383133 List!69156)) )
))
(declare-fun lt!2564015 () List!69156)

(declare-fun s!7390 () List!69156)

(assert (=> b!7129904 (= res!2909131 (= lt!2564015 s!7390))))

(declare-fun s1!1688 () List!69156)

(declare-fun s2!1620 () List!69156)

(declare-fun ++!16189 (List!69156 List!69156) List!69156)

(assert (=> b!7129904 (= lt!2564015 (++!16189 s1!1688 s2!1620))))

(declare-fun res!2909134 () Bool)

(assert (=> start!694576 (=> (not res!2909134) (not e!4284697))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18051 0))(
  ( (ElementMatch!18051 (c!1329973 C!36372)) (Concat!26896 (regOne!36614 Regex!18051) (regTwo!36614 Regex!18051)) (EmptyExpr!18051) (Star!18051 (reg!18380 Regex!18051)) (EmptyLang!18051) (Union!18051 (regOne!36615 Regex!18051) (regTwo!36615 Regex!18051)) )
))
(declare-datatypes ((List!69157 0))(
  ( (Nil!69033) (Cons!69033 (h!75481 Regex!18051) (t!383134 List!69157)) )
))
(declare-datatypes ((Context!14090 0))(
  ( (Context!14091 (exprs!7545 List!69157)) )
))
(declare-fun z1!552 () (InoxSet Context!14090))

(declare-fun matchZipper!3307 ((InoxSet Context!14090) List!69156) Bool)

(assert (=> start!694576 (= res!2909134 (matchZipper!3307 z1!552 s1!1688))))

(assert (=> start!694576 e!4284697))

(declare-fun e!4284709 () Bool)

(assert (=> start!694576 e!4284709))

(declare-fun condSetEmpty!51943 () Bool)

(assert (=> start!694576 (= condSetEmpty!51943 (= z1!552 ((as const (Array Context!14090 Bool)) false)))))

(declare-fun setRes!51942 () Bool)

(assert (=> start!694576 setRes!51942))

(declare-fun e!4284707 () Bool)

(assert (=> start!694576 e!4284707))

(declare-fun condSetEmpty!51942 () Bool)

(declare-fun z2!471 () (InoxSet Context!14090))

(assert (=> start!694576 (= condSetEmpty!51942 (= z2!471 ((as const (Array Context!14090 Bool)) false)))))

(declare-fun setRes!51943 () Bool)

(assert (=> start!694576 setRes!51943))

(declare-fun e!4284705 () Bool)

(assert (=> start!694576 e!4284705))

(declare-fun e!4284700 () Bool)

(assert (=> start!694576 e!4284700))

(declare-fun e!4284699 () Bool)

(assert (=> start!694576 e!4284699))

(declare-fun b!7129905 () Bool)

(declare-fun e!4284704 () Bool)

(assert (=> b!7129905 (= e!4284698 e!4284704)))

(declare-fun res!2909128 () Bool)

(assert (=> b!7129905 (=> (not res!2909128) (not e!4284704))))

(declare-fun lt!2564011 () List!69156)

(assert (=> b!7129905 (= res!2909128 (= lt!2564011 s!7390))))

(declare-fun s1Rec!140 () List!69156)

(declare-fun s2Rec!140 () List!69156)

(assert (=> b!7129905 (= lt!2564011 (++!16189 s1Rec!140 s2Rec!140))))

(declare-fun b!7129906 () Bool)

(declare-fun res!2909127 () Bool)

(assert (=> b!7129906 (=> (not res!2909127) (not e!4284704))))

(get-info :version)

(assert (=> b!7129906 (= res!2909127 (not ((_ is Nil!69032) s2Rec!140)))))

(declare-fun b!7129907 () Bool)

(declare-fun res!2909130 () Bool)

(assert (=> b!7129907 (=> (not res!2909130) (not e!4284697))))

(assert (=> b!7129907 (= res!2909130 (matchZipper!3307 z2!471 s2!1620))))

(declare-fun b!7129908 () Bool)

(declare-datatypes ((Unit!162937 0))(
  ( (Unit!162938) )
))
(declare-fun e!4284701 () Unit!162937)

(declare-fun Unit!162939 () Unit!162937)

(assert (=> b!7129908 (= e!4284701 Unit!162939)))

(declare-fun setIsEmpty!51942 () Bool)

(assert (=> setIsEmpty!51942 setRes!51943))

(declare-fun setIsEmpty!51943 () Bool)

(assert (=> setIsEmpty!51943 setRes!51942))

(declare-fun b!7129909 () Bool)

(declare-fun e!4284703 () Bool)

(assert (=> b!7129909 (= e!4284704 (not e!4284703))))

(declare-fun res!2909132 () Bool)

(assert (=> b!7129909 (=> res!2909132 e!4284703)))

(declare-fun size!41476 (List!69156) Int)

(assert (=> b!7129909 (= res!2909132 (not (= (size!41476 s1Rec!140) (size!41476 s1!1688))))))

(declare-fun lt!2564014 () List!69156)

(declare-fun lt!2564007 () List!69156)

(declare-fun isPrefix!5920 (List!69156 List!69156) Bool)

(assert (=> b!7129909 (isPrefix!5920 lt!2564014 lt!2564007)))

(declare-fun lt!2564010 () Unit!162937)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3633 (List!69156 List!69156) Unit!162937)

(assert (=> b!7129909 (= lt!2564010 (lemmaConcatTwoListThenFirstIsPrefix!3633 lt!2564014 (t!383133 s2Rec!140)))))

(assert (=> b!7129909 (= lt!2564007 s!7390)))

(assert (=> b!7129909 (= lt!2564007 (++!16189 lt!2564014 (t!383133 s2Rec!140)))))

(assert (=> b!7129909 (= lt!2564014 (++!16189 s1Rec!140 (Cons!69032 (h!75480 s2Rec!140) Nil!69032)))))

(declare-fun lt!2564008 () Unit!162937)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3011 (List!69156 C!36372 List!69156 List!69156) Unit!162937)

(assert (=> b!7129909 (= lt!2564008 (lemmaMoveElementToOtherListKeepsConcatEq!3011 s1Rec!140 (h!75480 s2Rec!140) (t!383133 s2Rec!140) s!7390))))

(declare-fun lt!2564016 () Unit!162937)

(assert (=> b!7129909 (= lt!2564016 e!4284701)))

(declare-fun c!1329972 () Bool)

(assert (=> b!7129909 (= c!1329972 (= s1Rec!140 s1!1688))))

(assert (=> b!7129909 (isPrefix!5920 s1Rec!140 lt!2564011)))

(declare-fun lt!2564013 () Unit!162937)

(assert (=> b!7129909 (= lt!2564013 (lemmaConcatTwoListThenFirstIsPrefix!3633 s1Rec!140 s2Rec!140))))

(assert (=> b!7129909 (isPrefix!5920 s1!1688 lt!2564015)))

(declare-fun lt!2564012 () Unit!162937)

(assert (=> b!7129909 (= lt!2564012 (lemmaConcatTwoListThenFirstIsPrefix!3633 s1!1688 s2!1620))))

(declare-fun b!7129910 () Bool)

(declare-fun tp_is_empty!45703 () Bool)

(declare-fun tp!1964746 () Bool)

(assert (=> b!7129910 (= e!4284705 (and tp_is_empty!45703 tp!1964746))))

(declare-fun b!7129911 () Bool)

(declare-fun tp!1964740 () Bool)

(assert (=> b!7129911 (= e!4284707 (and tp_is_empty!45703 tp!1964740))))

(declare-fun b!7129912 () Bool)

(declare-fun tp!1964747 () Bool)

(assert (=> b!7129912 (= e!4284700 (and tp_is_empty!45703 tp!1964747))))

(declare-fun b!7129913 () Bool)

(declare-fun res!2909133 () Bool)

(assert (=> b!7129913 (=> (not res!2909133) (not e!4284698))))

(assert (=> b!7129913 (= res!2909133 (isPrefix!5920 s1Rec!140 s1!1688))))

(declare-fun b!7129914 () Bool)

(declare-fun e!4284706 () Bool)

(declare-fun tp!1964741 () Bool)

(assert (=> b!7129914 (= e!4284706 tp!1964741)))

(declare-fun b!7129915 () Bool)

(declare-fun e!4284708 () Bool)

(declare-fun tp!1964744 () Bool)

(assert (=> b!7129915 (= e!4284708 tp!1964744)))

(declare-fun b!7129916 () Bool)

(assert (=> b!7129916 (= e!4284703 (isPrefix!5920 s1!1688 s!7390))))

(declare-fun b!7129917 () Bool)

(declare-fun Unit!162940 () Unit!162937)

(assert (=> b!7129917 (= e!4284701 Unit!162940)))

(declare-fun lt!2564009 () Unit!162937)

(declare-fun lemmaSamePrefixThenSameSuffix!2731 (List!69156 List!69156 List!69156 List!69156 List!69156) Unit!162937)

(assert (=> b!7129917 (= lt!2564009 (lemmaSamePrefixThenSameSuffix!2731 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7129917 false))

(declare-fun b!7129918 () Bool)

(declare-fun tp!1964739 () Bool)

(assert (=> b!7129918 (= e!4284699 (and tp_is_empty!45703 tp!1964739))))

(declare-fun b!7129919 () Bool)

(declare-fun e!4284702 () Bool)

(assert (=> b!7129919 (= e!4284702 (not (matchZipper!3307 z2!471 s2Rec!140)))))

(declare-fun b!7129920 () Bool)

(declare-fun tp!1964745 () Bool)

(assert (=> b!7129920 (= e!4284709 (and tp_is_empty!45703 tp!1964745))))

(declare-fun b!7129921 () Bool)

(declare-fun res!2909129 () Bool)

(assert (=> b!7129921 (=> (not res!2909129) (not e!4284704))))

(assert (=> b!7129921 (= res!2909129 e!4284702)))

(declare-fun res!2909135 () Bool)

(assert (=> b!7129921 (=> res!2909135 e!4284702)))

(assert (=> b!7129921 (= res!2909135 (not (matchZipper!3307 z1!552 s1Rec!140)))))

(declare-fun setElem!51942 () Context!14090)

(declare-fun setNonEmpty!51942 () Bool)

(declare-fun tp!1964743 () Bool)

(declare-fun inv!88155 (Context!14090) Bool)

(assert (=> setNonEmpty!51942 (= setRes!51942 (and tp!1964743 (inv!88155 setElem!51942) e!4284706))))

(declare-fun setRest!51942 () (InoxSet Context!14090))

(assert (=> setNonEmpty!51942 (= z1!552 ((_ map or) (store ((as const (Array Context!14090 Bool)) false) setElem!51942 true) setRest!51942))))

(declare-fun setNonEmpty!51943 () Bool)

(declare-fun setElem!51943 () Context!14090)

(declare-fun tp!1964742 () Bool)

(assert (=> setNonEmpty!51943 (= setRes!51943 (and tp!1964742 (inv!88155 setElem!51943) e!4284708))))

(declare-fun setRest!51943 () (InoxSet Context!14090))

(assert (=> setNonEmpty!51943 (= z2!471 ((_ map or) (store ((as const (Array Context!14090 Bool)) false) setElem!51943 true) setRest!51943))))

(assert (= (and start!694576 res!2909134) b!7129907))

(assert (= (and b!7129907 res!2909130) b!7129904))

(assert (= (and b!7129904 res!2909131) b!7129913))

(assert (= (and b!7129913 res!2909133) b!7129905))

(assert (= (and b!7129905 res!2909128) b!7129921))

(assert (= (and b!7129921 (not res!2909135)) b!7129919))

(assert (= (and b!7129921 res!2909129) b!7129906))

(assert (= (and b!7129906 res!2909127) b!7129909))

(assert (= (and b!7129909 c!1329972) b!7129917))

(assert (= (and b!7129909 (not c!1329972)) b!7129908))

(assert (= (and b!7129909 (not res!2909132)) b!7129916))

(assert (= (and start!694576 ((_ is Cons!69032) s1Rec!140)) b!7129920))

(assert (= (and start!694576 condSetEmpty!51943) setIsEmpty!51943))

(assert (= (and start!694576 (not condSetEmpty!51943)) setNonEmpty!51942))

(assert (= setNonEmpty!51942 b!7129914))

(assert (= (and start!694576 ((_ is Cons!69032) s2Rec!140)) b!7129911))

(assert (= (and start!694576 condSetEmpty!51942) setIsEmpty!51942))

(assert (= (and start!694576 (not condSetEmpty!51942)) setNonEmpty!51943))

(assert (= setNonEmpty!51943 b!7129915))

(assert (= (and start!694576 ((_ is Cons!69032) s2!1620)) b!7129910))

(assert (= (and start!694576 ((_ is Cons!69032) s1!1688)) b!7129912))

(assert (= (and start!694576 ((_ is Cons!69032) s!7390)) b!7129918))

(declare-fun m!7846888 () Bool)

(assert (=> b!7129917 m!7846888))

(declare-fun m!7846890 () Bool)

(assert (=> setNonEmpty!51942 m!7846890))

(declare-fun m!7846892 () Bool)

(assert (=> b!7129905 m!7846892))

(declare-fun m!7846894 () Bool)

(assert (=> b!7129904 m!7846894))

(declare-fun m!7846896 () Bool)

(assert (=> b!7129913 m!7846896))

(declare-fun m!7846898 () Bool)

(assert (=> b!7129921 m!7846898))

(declare-fun m!7846900 () Bool)

(assert (=> b!7129909 m!7846900))

(declare-fun m!7846902 () Bool)

(assert (=> b!7129909 m!7846902))

(declare-fun m!7846904 () Bool)

(assert (=> b!7129909 m!7846904))

(declare-fun m!7846906 () Bool)

(assert (=> b!7129909 m!7846906))

(declare-fun m!7846908 () Bool)

(assert (=> b!7129909 m!7846908))

(declare-fun m!7846910 () Bool)

(assert (=> b!7129909 m!7846910))

(declare-fun m!7846912 () Bool)

(assert (=> b!7129909 m!7846912))

(declare-fun m!7846914 () Bool)

(assert (=> b!7129909 m!7846914))

(declare-fun m!7846916 () Bool)

(assert (=> b!7129909 m!7846916))

(declare-fun m!7846918 () Bool)

(assert (=> b!7129909 m!7846918))

(declare-fun m!7846920 () Bool)

(assert (=> b!7129909 m!7846920))

(declare-fun m!7846922 () Bool)

(assert (=> b!7129919 m!7846922))

(declare-fun m!7846924 () Bool)

(assert (=> start!694576 m!7846924))

(declare-fun m!7846926 () Bool)

(assert (=> b!7129916 m!7846926))

(declare-fun m!7846928 () Bool)

(assert (=> b!7129907 m!7846928))

(declare-fun m!7846930 () Bool)

(assert (=> setNonEmpty!51943 m!7846930))

(check-sat (not setNonEmpty!51943) (not start!694576) (not b!7129909) (not b!7129911) (not b!7129910) (not b!7129920) (not b!7129912) (not b!7129918) (not b!7129921) (not b!7129916) (not setNonEmpty!51942) (not b!7129904) (not b!7129915) (not b!7129907) (not b!7129905) (not b!7129917) tp_is_empty!45703 (not b!7129919) (not b!7129913) (not b!7129914))
(check-sat)
