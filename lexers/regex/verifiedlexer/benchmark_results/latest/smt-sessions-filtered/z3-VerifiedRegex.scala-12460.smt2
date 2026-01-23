; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694580 () Bool)

(assert start!694580)

(declare-fun b!7130017 () Bool)

(declare-fun e!4284784 () Bool)

(declare-datatypes ((C!36376 0))(
  ( (C!36377 (val!28114 Int)) )
))
(declare-datatypes ((List!69160 0))(
  ( (Nil!69036) (Cons!69036 (h!75484 C!36376) (t!383137 List!69160)) )
))
(declare-fun s1Rec!140 () List!69160)

(declare-fun s!7390 () List!69160)

(declare-fun isPrefix!5922 (List!69160 List!69160) Bool)

(assert (=> b!7130017 (= e!4284784 (isPrefix!5922 s1Rec!140 s!7390))))

(declare-fun b!7130018 () Bool)

(declare-fun e!4284786 () Bool)

(declare-fun e!4284777 () Bool)

(assert (=> b!7130018 (= e!4284786 e!4284777)))

(declare-fun res!2909191 () Bool)

(assert (=> b!7130018 (=> (not res!2909191) (not e!4284777))))

(declare-fun lt!2564067 () List!69160)

(assert (=> b!7130018 (= res!2909191 (= lt!2564067 s!7390))))

(declare-fun s1!1688 () List!69160)

(declare-fun s2!1620 () List!69160)

(declare-fun ++!16191 (List!69160 List!69160) List!69160)

(assert (=> b!7130018 (= lt!2564067 (++!16191 s1!1688 s2!1620))))

(declare-fun b!7130020 () Bool)

(declare-fun e!4284778 () Bool)

(declare-fun tp!1964800 () Bool)

(assert (=> b!7130020 (= e!4284778 tp!1964800)))

(declare-fun setIsEmpty!51954 () Bool)

(declare-fun setRes!51954 () Bool)

(assert (=> setIsEmpty!51954 setRes!51954))

(declare-fun b!7130021 () Bool)

(declare-datatypes ((Unit!162945 0))(
  ( (Unit!162946) )
))
(declare-fun e!4284776 () Unit!162945)

(declare-fun Unit!162947 () Unit!162945)

(assert (=> b!7130021 (= e!4284776 Unit!162947)))

(declare-fun b!7130022 () Bool)

(declare-fun e!4284779 () Bool)

(declare-fun tp_is_empty!45707 () Bool)

(declare-fun tp!1964797 () Bool)

(assert (=> b!7130022 (= e!4284779 (and tp_is_empty!45707 tp!1964797))))

(declare-fun b!7130023 () Bool)

(declare-fun e!4284780 () Bool)

(assert (=> b!7130023 (= e!4284780 (not e!4284784))))

(declare-fun res!2909190 () Bool)

(assert (=> b!7130023 (=> res!2909190 e!4284784)))

(declare-fun size!41478 (List!69160) Int)

(assert (=> b!7130023 (= res!2909190 (not (= (size!41478 s1Rec!140) (size!41478 s1!1688))))))

(declare-fun lt!2564075 () List!69160)

(declare-fun lt!2564073 () List!69160)

(assert (=> b!7130023 (isPrefix!5922 lt!2564075 lt!2564073)))

(declare-fun lt!2564068 () Unit!162945)

(declare-fun s2Rec!140 () List!69160)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3635 (List!69160 List!69160) Unit!162945)

(assert (=> b!7130023 (= lt!2564068 (lemmaConcatTwoListThenFirstIsPrefix!3635 lt!2564075 (t!383137 s2Rec!140)))))

(assert (=> b!7130023 (= lt!2564073 s!7390)))

(assert (=> b!7130023 (= lt!2564073 (++!16191 lt!2564075 (t!383137 s2Rec!140)))))

(assert (=> b!7130023 (= lt!2564075 (++!16191 s1Rec!140 (Cons!69036 (h!75484 s2Rec!140) Nil!69036)))))

(declare-fun lt!2564070 () Unit!162945)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3013 (List!69160 C!36376 List!69160 List!69160) Unit!162945)

(assert (=> b!7130023 (= lt!2564070 (lemmaMoveElementToOtherListKeepsConcatEq!3013 s1Rec!140 (h!75484 s2Rec!140) (t!383137 s2Rec!140) s!7390))))

(declare-fun lt!2564076 () Unit!162945)

(assert (=> b!7130023 (= lt!2564076 e!4284776)))

(declare-fun c!1329980 () Bool)

(assert (=> b!7130023 (= c!1329980 (= s1Rec!140 s1!1688))))

(declare-fun lt!2564072 () List!69160)

(assert (=> b!7130023 (isPrefix!5922 s1Rec!140 lt!2564072)))

(declare-fun lt!2564069 () Unit!162945)

(assert (=> b!7130023 (= lt!2564069 (lemmaConcatTwoListThenFirstIsPrefix!3635 s1Rec!140 s2Rec!140))))

(assert (=> b!7130023 (isPrefix!5922 s1!1688 lt!2564067)))

(declare-fun lt!2564074 () Unit!162945)

(assert (=> b!7130023 (= lt!2564074 (lemmaConcatTwoListThenFirstIsPrefix!3635 s1!1688 s2!1620))))

(declare-fun b!7130024 () Bool)

(declare-fun e!4284781 () Bool)

(declare-fun tp!1964794 () Bool)

(assert (=> b!7130024 (= e!4284781 (and tp_is_empty!45707 tp!1964794))))

(declare-fun b!7130025 () Bool)

(declare-fun res!2909186 () Bool)

(assert (=> b!7130025 (=> (not res!2909186) (not e!4284780))))

(declare-fun e!4284785 () Bool)

(assert (=> b!7130025 (= res!2909186 e!4284785)))

(declare-fun res!2909189 () Bool)

(assert (=> b!7130025 (=> res!2909189 e!4284785)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18053 0))(
  ( (ElementMatch!18053 (c!1329981 C!36376)) (Concat!26898 (regOne!36618 Regex!18053) (regTwo!36618 Regex!18053)) (EmptyExpr!18053) (Star!18053 (reg!18382 Regex!18053)) (EmptyLang!18053) (Union!18053 (regOne!36619 Regex!18053) (regTwo!36619 Regex!18053)) )
))
(declare-datatypes ((List!69161 0))(
  ( (Nil!69037) (Cons!69037 (h!75485 Regex!18053) (t!383138 List!69161)) )
))
(declare-datatypes ((Context!14094 0))(
  ( (Context!14095 (exprs!7547 List!69161)) )
))
(declare-fun z1!552 () (InoxSet Context!14094))

(declare-fun matchZipper!3309 ((InoxSet Context!14094) List!69160) Bool)

(assert (=> b!7130025 (= res!2909189 (not (matchZipper!3309 z1!552 s1Rec!140)))))

(declare-fun b!7130026 () Bool)

(declare-fun e!4284782 () Bool)

(declare-fun tp!1964801 () Bool)

(assert (=> b!7130026 (= e!4284782 tp!1964801)))

(declare-fun setIsEmpty!51955 () Bool)

(declare-fun setRes!51955 () Bool)

(assert (=> setIsEmpty!51955 setRes!51955))

(declare-fun b!7130019 () Bool)

(declare-fun res!2909188 () Bool)

(assert (=> b!7130019 (=> (not res!2909188) (not e!4284780))))

(get-info :version)

(assert (=> b!7130019 (= res!2909188 (not ((_ is Nil!69036) s2Rec!140)))))

(declare-fun res!2909194 () Bool)

(assert (=> start!694580 (=> (not res!2909194) (not e!4284786))))

(assert (=> start!694580 (= res!2909194 (matchZipper!3309 z1!552 s1!1688))))

(assert (=> start!694580 e!4284786))

(declare-fun e!4284783 () Bool)

(assert (=> start!694580 e!4284783))

(declare-fun condSetEmpty!51955 () Bool)

(assert (=> start!694580 (= condSetEmpty!51955 (= z1!552 ((as const (Array Context!14094 Bool)) false)))))

(assert (=> start!694580 setRes!51954))

(declare-fun e!4284775 () Bool)

(assert (=> start!694580 e!4284775))

(declare-fun condSetEmpty!51954 () Bool)

(declare-fun z2!471 () (InoxSet Context!14094))

(assert (=> start!694580 (= condSetEmpty!51954 (= z2!471 ((as const (Array Context!14094 Bool)) false)))))

(assert (=> start!694580 setRes!51955))

(assert (=> start!694580 e!4284779))

(declare-fun e!4284787 () Bool)

(assert (=> start!694580 e!4284787))

(assert (=> start!694580 e!4284781))

(declare-fun b!7130027 () Bool)

(declare-fun tp!1964799 () Bool)

(assert (=> b!7130027 (= e!4284783 (and tp_is_empty!45707 tp!1964799))))

(declare-fun setNonEmpty!51954 () Bool)

(declare-fun setElem!51955 () Context!14094)

(declare-fun tp!1964795 () Bool)

(declare-fun inv!88160 (Context!14094) Bool)

(assert (=> setNonEmpty!51954 (= setRes!51955 (and tp!1964795 (inv!88160 setElem!51955) e!4284778))))

(declare-fun setRest!51955 () (InoxSet Context!14094))

(assert (=> setNonEmpty!51954 (= z2!471 ((_ map or) (store ((as const (Array Context!14094 Bool)) false) setElem!51955 true) setRest!51955))))

(declare-fun b!7130028 () Bool)

(declare-fun res!2909187 () Bool)

(assert (=> b!7130028 (=> res!2909187 e!4284784)))

(assert (=> b!7130028 (= res!2909187 (not (isPrefix!5922 s1!1688 s!7390)))))

(declare-fun setNonEmpty!51955 () Bool)

(declare-fun tp!1964793 () Bool)

(declare-fun setElem!51954 () Context!14094)

(assert (=> setNonEmpty!51955 (= setRes!51954 (and tp!1964793 (inv!88160 setElem!51954) e!4284782))))

(declare-fun setRest!51954 () (InoxSet Context!14094))

(assert (=> setNonEmpty!51955 (= z1!552 ((_ map or) (store ((as const (Array Context!14094 Bool)) false) setElem!51954 true) setRest!51954))))

(declare-fun b!7130029 () Bool)

(declare-fun Unit!162948 () Unit!162945)

(assert (=> b!7130029 (= e!4284776 Unit!162948)))

(declare-fun lt!2564071 () Unit!162945)

(declare-fun lemmaSamePrefixThenSameSuffix!2733 (List!69160 List!69160 List!69160 List!69160 List!69160) Unit!162945)

(assert (=> b!7130029 (= lt!2564071 (lemmaSamePrefixThenSameSuffix!2733 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7130029 false))

(declare-fun b!7130030 () Bool)

(declare-fun res!2909192 () Bool)

(assert (=> b!7130030 (=> (not res!2909192) (not e!4284777))))

(assert (=> b!7130030 (= res!2909192 (isPrefix!5922 s1Rec!140 s1!1688))))

(declare-fun b!7130031 () Bool)

(declare-fun res!2909193 () Bool)

(assert (=> b!7130031 (=> (not res!2909193) (not e!4284786))))

(assert (=> b!7130031 (= res!2909193 (matchZipper!3309 z2!471 s2!1620))))

(declare-fun b!7130032 () Bool)

(declare-fun tp!1964796 () Bool)

(assert (=> b!7130032 (= e!4284775 (and tp_is_empty!45707 tp!1964796))))

(declare-fun b!7130033 () Bool)

(assert (=> b!7130033 (= e!4284785 (not (matchZipper!3309 z2!471 s2Rec!140)))))

(declare-fun b!7130034 () Bool)

(assert (=> b!7130034 (= e!4284777 e!4284780)))

(declare-fun res!2909195 () Bool)

(assert (=> b!7130034 (=> (not res!2909195) (not e!4284780))))

(assert (=> b!7130034 (= res!2909195 (= lt!2564072 s!7390))))

(assert (=> b!7130034 (= lt!2564072 (++!16191 s1Rec!140 s2Rec!140))))

(declare-fun b!7130035 () Bool)

(declare-fun tp!1964798 () Bool)

(assert (=> b!7130035 (= e!4284787 (and tp_is_empty!45707 tp!1964798))))

(assert (= (and start!694580 res!2909194) b!7130031))

(assert (= (and b!7130031 res!2909193) b!7130018))

(assert (= (and b!7130018 res!2909191) b!7130030))

(assert (= (and b!7130030 res!2909192) b!7130034))

(assert (= (and b!7130034 res!2909195) b!7130025))

(assert (= (and b!7130025 (not res!2909189)) b!7130033))

(assert (= (and b!7130025 res!2909186) b!7130019))

(assert (= (and b!7130019 res!2909188) b!7130023))

(assert (= (and b!7130023 c!1329980) b!7130029))

(assert (= (and b!7130023 (not c!1329980)) b!7130021))

(assert (= (and b!7130023 (not res!2909190)) b!7130028))

(assert (= (and b!7130028 (not res!2909187)) b!7130017))

(assert (= (and start!694580 ((_ is Cons!69036) s1Rec!140)) b!7130027))

(assert (= (and start!694580 condSetEmpty!51955) setIsEmpty!51954))

(assert (= (and start!694580 (not condSetEmpty!51955)) setNonEmpty!51955))

(assert (= setNonEmpty!51955 b!7130026))

(assert (= (and start!694580 ((_ is Cons!69036) s2Rec!140)) b!7130032))

(assert (= (and start!694580 condSetEmpty!51954) setIsEmpty!51955))

(assert (= (and start!694580 (not condSetEmpty!51954)) setNonEmpty!51954))

(assert (= setNonEmpty!51954 b!7130020))

(assert (= (and start!694580 ((_ is Cons!69036) s2!1620)) b!7130022))

(assert (= (and start!694580 ((_ is Cons!69036) s1!1688)) b!7130035))

(assert (= (and start!694580 ((_ is Cons!69036) s!7390)) b!7130024))

(declare-fun m!7846978 () Bool)

(assert (=> b!7130030 m!7846978))

(declare-fun m!7846980 () Bool)

(assert (=> b!7130031 m!7846980))

(declare-fun m!7846982 () Bool)

(assert (=> b!7130025 m!7846982))

(declare-fun m!7846984 () Bool)

(assert (=> start!694580 m!7846984))

(declare-fun m!7846986 () Bool)

(assert (=> setNonEmpty!51955 m!7846986))

(declare-fun m!7846988 () Bool)

(assert (=> setNonEmpty!51954 m!7846988))

(declare-fun m!7846990 () Bool)

(assert (=> b!7130017 m!7846990))

(declare-fun m!7846992 () Bool)

(assert (=> b!7130028 m!7846992))

(declare-fun m!7846994 () Bool)

(assert (=> b!7130034 m!7846994))

(declare-fun m!7846996 () Bool)

(assert (=> b!7130029 m!7846996))

(declare-fun m!7846998 () Bool)

(assert (=> b!7130018 m!7846998))

(declare-fun m!7847000 () Bool)

(assert (=> b!7130033 m!7847000))

(declare-fun m!7847002 () Bool)

(assert (=> b!7130023 m!7847002))

(declare-fun m!7847004 () Bool)

(assert (=> b!7130023 m!7847004))

(declare-fun m!7847006 () Bool)

(assert (=> b!7130023 m!7847006))

(declare-fun m!7847008 () Bool)

(assert (=> b!7130023 m!7847008))

(declare-fun m!7847010 () Bool)

(assert (=> b!7130023 m!7847010))

(declare-fun m!7847012 () Bool)

(assert (=> b!7130023 m!7847012))

(declare-fun m!7847014 () Bool)

(assert (=> b!7130023 m!7847014))

(declare-fun m!7847016 () Bool)

(assert (=> b!7130023 m!7847016))

(declare-fun m!7847018 () Bool)

(assert (=> b!7130023 m!7847018))

(declare-fun m!7847020 () Bool)

(assert (=> b!7130023 m!7847020))

(declare-fun m!7847022 () Bool)

(assert (=> b!7130023 m!7847022))

(check-sat (not b!7130027) (not b!7130033) (not b!7130025) (not b!7130035) (not b!7130023) (not b!7130018) (not b!7130032) (not b!7130022) (not start!694580) (not b!7130029) (not b!7130024) (not b!7130020) tp_is_empty!45707 (not setNonEmpty!51954) (not b!7130031) (not b!7130026) (not b!7130034) (not b!7130030) (not setNonEmpty!51955) (not b!7130017) (not b!7130028))
(check-sat)
