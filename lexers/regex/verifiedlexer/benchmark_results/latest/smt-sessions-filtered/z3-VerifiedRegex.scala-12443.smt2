; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694236 () Bool)

(assert start!694236)

(declare-fun b!7126015 () Bool)

(declare-fun e!4282364 () Bool)

(declare-fun e!4282362 () Bool)

(assert (=> b!7126015 (= e!4282364 e!4282362)))

(declare-fun res!2907713 () Bool)

(assert (=> b!7126015 (=> (not res!2907713) (not e!4282362))))

(declare-datatypes ((C!36308 0))(
  ( (C!36309 (val!28080 Int)) )
))
(declare-datatypes ((List!69089 0))(
  ( (Nil!68965) (Cons!68965 (h!75413 C!36308) (t!383066 List!69089)) )
))
(declare-fun lt!2563374 () List!69089)

(declare-fun s!7390 () List!69089)

(assert (=> b!7126015 (= res!2907713 (= lt!2563374 s!7390))))

(declare-fun s1Rec!140 () List!69089)

(declare-fun s2Rec!140 () List!69089)

(declare-fun ++!16157 (List!69089 List!69089) List!69089)

(assert (=> b!7126015 (= lt!2563374 (++!16157 s1Rec!140 s2Rec!140))))

(declare-fun b!7126017 () Bool)

(declare-fun res!2907715 () Bool)

(declare-fun e!4282353 () Bool)

(assert (=> b!7126017 (=> (not res!2907715) (not e!4282353))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18019 0))(
  ( (ElementMatch!18019 (c!1329397 C!36308)) (Concat!26864 (regOne!36550 Regex!18019) (regTwo!36550 Regex!18019)) (EmptyExpr!18019) (Star!18019 (reg!18348 Regex!18019)) (EmptyLang!18019) (Union!18019 (regOne!36551 Regex!18019) (regTwo!36551 Regex!18019)) )
))
(declare-datatypes ((List!69090 0))(
  ( (Nil!68966) (Cons!68966 (h!75414 Regex!18019) (t!383067 List!69090)) )
))
(declare-datatypes ((Context!14026 0))(
  ( (Context!14027 (exprs!7513 List!69090)) )
))
(declare-fun z2!471 () (InoxSet Context!14026))

(declare-fun s2!1620 () List!69089)

(declare-fun matchZipper!3275 ((InoxSet Context!14026) List!69089) Bool)

(assert (=> b!7126017 (= res!2907715 (matchZipper!3275 z2!471 s2!1620))))

(declare-fun b!7126018 () Bool)

(declare-datatypes ((Unit!162887 0))(
  ( (Unit!162888) )
))
(declare-fun e!4282355 () Unit!162887)

(declare-fun Unit!162889 () Unit!162887)

(assert (=> b!7126018 (= e!4282355 Unit!162889)))

(declare-fun lt!2563372 () Unit!162887)

(declare-fun s1!1688 () List!69089)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1443 (List!69089 List!69089 List!69089) Unit!162887)

(assert (=> b!7126018 (= lt!2563372 (lemmaIsPrefixSameLengthThenSameList!1443 s1!1688 s1Rec!140 s!7390))))

(assert (=> b!7126018 false))

(declare-fun setIsEmpty!51678 () Bool)

(declare-fun setRes!51679 () Bool)

(assert (=> setIsEmpty!51678 setRes!51679))

(declare-fun b!7126019 () Bool)

(declare-fun e!4282359 () Unit!162887)

(declare-fun Unit!162890 () Unit!162887)

(assert (=> b!7126019 (= e!4282359 Unit!162890)))

(declare-fun lt!2563363 () Unit!162887)

(declare-fun lemmaSamePrefixThenSameSuffix!2723 (List!69089 List!69089 List!69089 List!69089 List!69089) Unit!162887)

(assert (=> b!7126019 (= lt!2563363 (lemmaSamePrefixThenSameSuffix!2723 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7126019 false))

(declare-fun b!7126020 () Bool)

(declare-fun e!4282365 () Bool)

(declare-fun tp!1962942 () Bool)

(assert (=> b!7126020 (= e!4282365 tp!1962942)))

(declare-fun b!7126021 () Bool)

(declare-fun e!4282360 () Bool)

(declare-fun tp_is_empty!45639 () Bool)

(declare-fun tp!1962940 () Bool)

(assert (=> b!7126021 (= e!4282360 (and tp_is_empty!45639 tp!1962940))))

(declare-fun b!7126022 () Bool)

(declare-fun e!4282358 () Bool)

(assert (=> b!7126022 (= e!4282358 (not (matchZipper!3275 z2!471 s2Rec!140)))))

(declare-fun b!7126023 () Bool)

(declare-fun e!4282357 () Bool)

(declare-fun tp!1962943 () Bool)

(assert (=> b!7126023 (= e!4282357 tp!1962943)))

(declare-fun b!7126024 () Bool)

(declare-fun e!4282356 () Bool)

(declare-fun tp!1962945 () Bool)

(assert (=> b!7126024 (= e!4282356 (and tp_is_empty!45639 tp!1962945))))

(declare-fun b!7126025 () Bool)

(assert (=> b!7126025 (= e!4282362 (not true))))

(declare-fun lt!2563366 () List!69089)

(declare-fun isPrefix!5888 (List!69089 List!69089) Bool)

(assert (=> b!7126025 (isPrefix!5888 lt!2563366 s1!1688)))

(declare-fun lt!2563362 () Unit!162887)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!783 (List!69089 List!69089 List!69089) Unit!162887)

(assert (=> b!7126025 (= lt!2563362 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!783 s1!1688 lt!2563366 s!7390))))

(declare-fun lt!2563369 () Unit!162887)

(assert (=> b!7126025 (= lt!2563369 e!4282355)))

(declare-fun c!1329396 () Bool)

(declare-fun size!41456 (List!69089) Int)

(assert (=> b!7126025 (= c!1329396 (= (size!41456 s1Rec!140) (size!41456 s1!1688)))))

(declare-fun lt!2563370 () List!69089)

(assert (=> b!7126025 (isPrefix!5888 lt!2563366 lt!2563370)))

(declare-fun lt!2563367 () Unit!162887)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3619 (List!69089 List!69089) Unit!162887)

(assert (=> b!7126025 (= lt!2563367 (lemmaConcatTwoListThenFirstIsPrefix!3619 lt!2563366 (t!383066 s2Rec!140)))))

(assert (=> b!7126025 (= lt!2563370 s!7390)))

(assert (=> b!7126025 (= lt!2563370 (++!16157 lt!2563366 (t!383066 s2Rec!140)))))

(assert (=> b!7126025 (= lt!2563366 (++!16157 s1Rec!140 (Cons!68965 (h!75413 s2Rec!140) Nil!68965)))))

(declare-fun lt!2563368 () Unit!162887)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3005 (List!69089 C!36308 List!69089 List!69089) Unit!162887)

(assert (=> b!7126025 (= lt!2563368 (lemmaMoveElementToOtherListKeepsConcatEq!3005 s1Rec!140 (h!75413 s2Rec!140) (t!383066 s2Rec!140) s!7390))))

(declare-fun lt!2563364 () Unit!162887)

(assert (=> b!7126025 (= lt!2563364 e!4282359)))

(declare-fun c!1329395 () Bool)

(assert (=> b!7126025 (= c!1329395 (= s1Rec!140 s1!1688))))

(assert (=> b!7126025 (isPrefix!5888 s1Rec!140 lt!2563374)))

(declare-fun lt!2563371 () Unit!162887)

(assert (=> b!7126025 (= lt!2563371 (lemmaConcatTwoListThenFirstIsPrefix!3619 s1Rec!140 s2Rec!140))))

(declare-fun lt!2563365 () List!69089)

(assert (=> b!7126025 (isPrefix!5888 s1!1688 lt!2563365)))

(declare-fun lt!2563373 () Unit!162887)

(assert (=> b!7126025 (= lt!2563373 (lemmaConcatTwoListThenFirstIsPrefix!3619 s1!1688 s2!1620))))

(declare-fun b!7126026 () Bool)

(declare-fun res!2907712 () Bool)

(assert (=> b!7126026 (=> (not res!2907712) (not e!4282364))))

(assert (=> b!7126026 (= res!2907712 (isPrefix!5888 s1Rec!140 s1!1688))))

(declare-fun b!7126027 () Bool)

(declare-fun res!2907719 () Bool)

(assert (=> b!7126027 (=> (not res!2907719) (not e!4282362))))

(assert (=> b!7126027 (= res!2907719 e!4282358)))

(declare-fun res!2907718 () Bool)

(assert (=> b!7126027 (=> res!2907718 e!4282358)))

(declare-fun z1!552 () (InoxSet Context!14026))

(assert (=> b!7126027 (= res!2907718 (not (matchZipper!3275 z1!552 s1Rec!140)))))

(declare-fun res!2907716 () Bool)

(assert (=> start!694236 (=> (not res!2907716) (not e!4282353))))

(assert (=> start!694236 (= res!2907716 (matchZipper!3275 z1!552 s1!1688))))

(assert (=> start!694236 e!4282353))

(declare-fun e!4282354 () Bool)

(assert (=> start!694236 e!4282354))

(declare-fun condSetEmpty!51679 () Bool)

(assert (=> start!694236 (= condSetEmpty!51679 (= z1!552 ((as const (Array Context!14026 Bool)) false)))))

(declare-fun setRes!51678 () Bool)

(assert (=> start!694236 setRes!51678))

(declare-fun e!4282363 () Bool)

(assert (=> start!694236 e!4282363))

(declare-fun condSetEmpty!51678 () Bool)

(assert (=> start!694236 (= condSetEmpty!51678 (= z2!471 ((as const (Array Context!14026 Bool)) false)))))

(assert (=> start!694236 setRes!51679))

(declare-fun e!4282361 () Bool)

(assert (=> start!694236 e!4282361))

(assert (=> start!694236 e!4282356))

(assert (=> start!694236 e!4282360))

(declare-fun b!7126016 () Bool)

(declare-fun tp!1962946 () Bool)

(assert (=> b!7126016 (= e!4282354 (and tp_is_empty!45639 tp!1962946))))

(declare-fun b!7126028 () Bool)

(declare-fun res!2907717 () Bool)

(assert (=> b!7126028 (=> (not res!2907717) (not e!4282362))))

(get-info :version)

(assert (=> b!7126028 (= res!2907717 (not ((_ is Nil!68965) s2Rec!140)))))

(declare-fun setElem!51679 () Context!14026)

(declare-fun tp!1962944 () Bool)

(declare-fun setNonEmpty!51678 () Bool)

(declare-fun inv!88075 (Context!14026) Bool)

(assert (=> setNonEmpty!51678 (= setRes!51679 (and tp!1962944 (inv!88075 setElem!51679) e!4282357))))

(declare-fun setRest!51678 () (InoxSet Context!14026))

(assert (=> setNonEmpty!51678 (= z2!471 ((_ map or) (store ((as const (Array Context!14026 Bool)) false) setElem!51679 true) setRest!51678))))

(declare-fun b!7126029 () Bool)

(declare-fun Unit!162891 () Unit!162887)

(assert (=> b!7126029 (= e!4282359 Unit!162891)))

(declare-fun setIsEmpty!51679 () Bool)

(assert (=> setIsEmpty!51679 setRes!51678))

(declare-fun b!7126030 () Bool)

(declare-fun Unit!162892 () Unit!162887)

(assert (=> b!7126030 (= e!4282355 Unit!162892)))

(declare-fun b!7126031 () Bool)

(declare-fun tp!1962941 () Bool)

(assert (=> b!7126031 (= e!4282361 (and tp_is_empty!45639 tp!1962941))))

(declare-fun b!7126032 () Bool)

(declare-fun tp!1962939 () Bool)

(assert (=> b!7126032 (= e!4282363 (and tp_is_empty!45639 tp!1962939))))

(declare-fun tp!1962947 () Bool)

(declare-fun setNonEmpty!51679 () Bool)

(declare-fun setElem!51678 () Context!14026)

(assert (=> setNonEmpty!51679 (= setRes!51678 (and tp!1962947 (inv!88075 setElem!51678) e!4282365))))

(declare-fun setRest!51679 () (InoxSet Context!14026))

(assert (=> setNonEmpty!51679 (= z1!552 ((_ map or) (store ((as const (Array Context!14026 Bool)) false) setElem!51678 true) setRest!51679))))

(declare-fun b!7126033 () Bool)

(assert (=> b!7126033 (= e!4282353 e!4282364)))

(declare-fun res!2907714 () Bool)

(assert (=> b!7126033 (=> (not res!2907714) (not e!4282364))))

(assert (=> b!7126033 (= res!2907714 (= lt!2563365 s!7390))))

(assert (=> b!7126033 (= lt!2563365 (++!16157 s1!1688 s2!1620))))

(assert (= (and start!694236 res!2907716) b!7126017))

(assert (= (and b!7126017 res!2907715) b!7126033))

(assert (= (and b!7126033 res!2907714) b!7126026))

(assert (= (and b!7126026 res!2907712) b!7126015))

(assert (= (and b!7126015 res!2907713) b!7126027))

(assert (= (and b!7126027 (not res!2907718)) b!7126022))

(assert (= (and b!7126027 res!2907719) b!7126028))

(assert (= (and b!7126028 res!2907717) b!7126025))

(assert (= (and b!7126025 c!1329395) b!7126019))

(assert (= (and b!7126025 (not c!1329395)) b!7126029))

(assert (= (and b!7126025 c!1329396) b!7126018))

(assert (= (and b!7126025 (not c!1329396)) b!7126030))

(assert (= (and start!694236 ((_ is Cons!68965) s1Rec!140)) b!7126016))

(assert (= (and start!694236 condSetEmpty!51679) setIsEmpty!51679))

(assert (= (and start!694236 (not condSetEmpty!51679)) setNonEmpty!51679))

(assert (= setNonEmpty!51679 b!7126020))

(assert (= (and start!694236 ((_ is Cons!68965) s2Rec!140)) b!7126032))

(assert (= (and start!694236 condSetEmpty!51678) setIsEmpty!51678))

(assert (= (and start!694236 (not condSetEmpty!51678)) setNonEmpty!51678))

(assert (= setNonEmpty!51678 b!7126023))

(assert (= (and start!694236 ((_ is Cons!68965) s2!1620)) b!7126031))

(assert (= (and start!694236 ((_ is Cons!68965) s1!1688)) b!7126024))

(assert (= (and start!694236 ((_ is Cons!68965) s!7390)) b!7126021))

(declare-fun m!7842936 () Bool)

(assert (=> b!7126019 m!7842936))

(declare-fun m!7842938 () Bool)

(assert (=> setNonEmpty!51678 m!7842938))

(declare-fun m!7842940 () Bool)

(assert (=> b!7126026 m!7842940))

(declare-fun m!7842942 () Bool)

(assert (=> setNonEmpty!51679 m!7842942))

(declare-fun m!7842944 () Bool)

(assert (=> b!7126018 m!7842944))

(declare-fun m!7842946 () Bool)

(assert (=> b!7126027 m!7842946))

(declare-fun m!7842948 () Bool)

(assert (=> b!7126033 m!7842948))

(declare-fun m!7842950 () Bool)

(assert (=> b!7126017 m!7842950))

(declare-fun m!7842952 () Bool)

(assert (=> b!7126025 m!7842952))

(declare-fun m!7842954 () Bool)

(assert (=> b!7126025 m!7842954))

(declare-fun m!7842956 () Bool)

(assert (=> b!7126025 m!7842956))

(declare-fun m!7842958 () Bool)

(assert (=> b!7126025 m!7842958))

(declare-fun m!7842960 () Bool)

(assert (=> b!7126025 m!7842960))

(declare-fun m!7842962 () Bool)

(assert (=> b!7126025 m!7842962))

(declare-fun m!7842964 () Bool)

(assert (=> b!7126025 m!7842964))

(declare-fun m!7842966 () Bool)

(assert (=> b!7126025 m!7842966))

(declare-fun m!7842968 () Bool)

(assert (=> b!7126025 m!7842968))

(declare-fun m!7842970 () Bool)

(assert (=> b!7126025 m!7842970))

(declare-fun m!7842972 () Bool)

(assert (=> b!7126025 m!7842972))

(declare-fun m!7842974 () Bool)

(assert (=> b!7126025 m!7842974))

(declare-fun m!7842976 () Bool)

(assert (=> b!7126025 m!7842976))

(declare-fun m!7842978 () Bool)

(assert (=> b!7126022 m!7842978))

(declare-fun m!7842980 () Bool)

(assert (=> b!7126015 m!7842980))

(declare-fun m!7842982 () Bool)

(assert (=> start!694236 m!7842982))

(check-sat (not b!7126032) (not b!7126023) (not b!7126027) (not b!7126025) tp_is_empty!45639 (not b!7126024) (not b!7126026) (not b!7126022) (not b!7126017) (not b!7126033) (not b!7126015) (not b!7126019) (not setNonEmpty!51678) (not b!7126016) (not setNonEmpty!51679) (not b!7126031) (not b!7126021) (not start!694236) (not b!7126018) (not b!7126020))
(check-sat)
