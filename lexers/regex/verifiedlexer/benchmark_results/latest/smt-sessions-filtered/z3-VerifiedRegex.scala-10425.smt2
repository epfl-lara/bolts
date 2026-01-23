; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539024 () Bool)

(assert start!539024)

(declare-fun b!5110862 () Bool)

(declare-fun res!2175398 () Bool)

(declare-fun e!3187623 () Bool)

(assert (=> b!5110862 (=> (not res!2175398) (not e!3187623))))

(declare-datatypes ((C!28548 0))(
  ( (C!28549 (val!23926 Int)) )
))
(declare-datatypes ((List!59164 0))(
  ( (Nil!59040) (Cons!59040 (h!65488 C!28548) (t!372165 List!59164)) )
))
(declare-fun knownP!20 () List!59164)

(declare-fun input!5745 () List!59164)

(declare-fun isPrefix!5546 (List!59164 List!59164) Bool)

(assert (=> b!5110862 (= res!2175398 (isPrefix!5546 knownP!20 input!5745))))

(declare-fun res!2175399 () Bool)

(assert (=> start!539024 (=> (not res!2175399) (not e!3187623))))

(declare-fun testedP!265 () List!59164)

(assert (=> start!539024 (= res!2175399 (isPrefix!5546 testedP!265 input!5745))))

(assert (=> start!539024 e!3187623))

(declare-fun e!3187619 () Bool)

(assert (=> start!539024 e!3187619))

(declare-fun condSetEmpty!29730 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14141 0))(
  ( (ElementMatch!14141 (c!878059 C!28548)) (Concat!22986 (regOne!28794 Regex!14141) (regTwo!28794 Regex!14141)) (EmptyExpr!14141) (Star!14141 (reg!14470 Regex!14141)) (EmptyLang!14141) (Union!14141 (regOne!28795 Regex!14141) (regTwo!28795 Regex!14141)) )
))
(declare-datatypes ((List!59165 0))(
  ( (Nil!59041) (Cons!59041 (h!65489 Regex!14141) (t!372166 List!59165)) )
))
(declare-datatypes ((Context!7050 0))(
  ( (Context!7051 (exprs!4025 List!59165)) )
))
(declare-fun z!4463 () (InoxSet Context!7050))

(assert (=> start!539024 (= condSetEmpty!29730 (= z!4463 ((as const (Array Context!7050 Bool)) false)))))

(declare-fun setRes!29730 () Bool)

(assert (=> start!539024 setRes!29730))

(declare-fun e!3187622 () Bool)

(assert (=> start!539024 e!3187622))

(declare-fun condSetEmpty!29729 () Bool)

(declare-fun baseZ!46 () (InoxSet Context!7050))

(assert (=> start!539024 (= condSetEmpty!29729 (= baseZ!46 ((as const (Array Context!7050 Bool)) false)))))

(declare-fun setRes!29729 () Bool)

(assert (=> start!539024 setRes!29729))

(declare-fun e!3187620 () Bool)

(assert (=> start!539024 e!3187620))

(declare-fun b!5110863 () Bool)

(declare-fun res!2175395 () Bool)

(declare-fun e!3187624 () Bool)

(assert (=> b!5110863 (=> res!2175395 e!3187624)))

(declare-fun lt!2104734 () Int)

(declare-fun lt!2104735 () Int)

(assert (=> b!5110863 (= res!2175395 (= lt!2104734 lt!2104735))))

(declare-fun b!5110864 () Bool)

(assert (=> b!5110864 (= e!3187624 true)))

(declare-fun lt!2104737 () List!59164)

(assert (=> b!5110864 (isPrefix!5546 lt!2104737 input!5745)))

(declare-datatypes ((Unit!150143 0))(
  ( (Unit!150144) )
))
(declare-fun lt!2104736 () Unit!150143)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!936 (List!59164 List!59164) Unit!150143)

(assert (=> b!5110864 (= lt!2104736 (lemmaAddHeadSuffixToPrefixStillPrefix!936 testedP!265 input!5745))))

(declare-fun ++!12966 (List!59164 List!59164) List!59164)

(declare-fun head!10869 (List!59164) C!28548)

(declare-fun getSuffix!3220 (List!59164 List!59164) List!59164)

(assert (=> b!5110864 (= lt!2104737 (++!12966 testedP!265 (Cons!59040 (head!10869 (getSuffix!3220 input!5745 testedP!265)) Nil!59040)))))

(declare-fun b!5110865 () Bool)

(declare-fun e!3187618 () Bool)

(assert (=> b!5110865 (= e!3187623 e!3187618)))

(declare-fun res!2175401 () Bool)

(assert (=> b!5110865 (=> (not res!2175401) (not e!3187618))))

(assert (=> b!5110865 (= res!2175401 (>= lt!2104735 lt!2104734))))

(declare-fun size!39447 (List!59164) Int)

(assert (=> b!5110865 (= lt!2104734 (size!39447 testedP!265))))

(assert (=> b!5110865 (= lt!2104735 (size!39447 knownP!20))))

(declare-fun b!5110866 () Bool)

(declare-fun res!2175400 () Bool)

(assert (=> b!5110866 (=> (not res!2175400) (not e!3187618))))

(declare-fun matchZipper!809 ((InoxSet Context!7050) List!59164) Bool)

(assert (=> b!5110866 (= res!2175400 (matchZipper!809 baseZ!46 knownP!20))))

(declare-fun tp!1425968 () Bool)

(declare-fun setElem!29730 () Context!7050)

(declare-fun setNonEmpty!29729 () Bool)

(declare-fun e!3187625 () Bool)

(declare-fun inv!78533 (Context!7050) Bool)

(assert (=> setNonEmpty!29729 (= setRes!29729 (and tp!1425968 (inv!78533 setElem!29730) e!3187625))))

(declare-fun setRest!29730 () (InoxSet Context!7050))

(assert (=> setNonEmpty!29729 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7050 Bool)) false) setElem!29730 true) setRest!29730))))

(declare-fun b!5110867 () Bool)

(assert (=> b!5110867 (= e!3187618 (not e!3187624))))

(declare-fun res!2175397 () Bool)

(assert (=> b!5110867 (=> res!2175397 e!3187624)))

(assert (=> b!5110867 (= res!2175397 (not (matchZipper!809 z!4463 (getSuffix!3220 knownP!20 testedP!265))))))

(assert (=> b!5110867 (isPrefix!5546 testedP!265 knownP!20)))

(declare-fun lt!2104738 () Unit!150143)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!683 (List!59164 List!59164 List!59164) Unit!150143)

(assert (=> b!5110867 (= lt!2104738 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!683 knownP!20 testedP!265 input!5745))))

(declare-fun b!5110868 () Bool)

(declare-fun tp_is_empty!37555 () Bool)

(declare-fun tp!1425969 () Bool)

(assert (=> b!5110868 (= e!3187620 (and tp_is_empty!37555 tp!1425969))))

(declare-fun e!3187621 () Bool)

(declare-fun tp!1425964 () Bool)

(declare-fun setNonEmpty!29730 () Bool)

(declare-fun setElem!29729 () Context!7050)

(assert (=> setNonEmpty!29730 (= setRes!29730 (and tp!1425964 (inv!78533 setElem!29729) e!3187621))))

(declare-fun setRest!29729 () (InoxSet Context!7050))

(assert (=> setNonEmpty!29730 (= z!4463 ((_ map or) (store ((as const (Array Context!7050 Bool)) false) setElem!29729 true) setRest!29729))))

(declare-fun b!5110869 () Bool)

(declare-fun res!2175396 () Bool)

(assert (=> b!5110869 (=> res!2175396 e!3187624)))

(assert (=> b!5110869 (= res!2175396 (>= lt!2104734 (size!39447 input!5745)))))

(declare-fun b!5110870 () Bool)

(declare-fun tp!1425963 () Bool)

(assert (=> b!5110870 (= e!3187622 (and tp_is_empty!37555 tp!1425963))))

(declare-fun b!5110871 () Bool)

(declare-fun tp!1425965 () Bool)

(assert (=> b!5110871 (= e!3187619 (and tp_is_empty!37555 tp!1425965))))

(declare-fun setIsEmpty!29729 () Bool)

(assert (=> setIsEmpty!29729 setRes!29729))

(declare-fun b!5110872 () Bool)

(declare-fun res!2175394 () Bool)

(assert (=> b!5110872 (=> res!2175394 e!3187624)))

(declare-fun derivationZipper!40 ((InoxSet Context!7050) List!59164) (InoxSet Context!7050))

(assert (=> b!5110872 (= res!2175394 (not (= (derivationZipper!40 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5110873 () Bool)

(declare-fun res!2175402 () Bool)

(assert (=> b!5110873 (=> res!2175402 e!3187624)))

(declare-fun lostCauseZipper!1027 ((InoxSet Context!7050)) Bool)

(assert (=> b!5110873 (= res!2175402 (lostCauseZipper!1027 z!4463))))

(declare-fun setIsEmpty!29730 () Bool)

(assert (=> setIsEmpty!29730 setRes!29730))

(declare-fun b!5110874 () Bool)

(declare-fun tp!1425967 () Bool)

(assert (=> b!5110874 (= e!3187625 tp!1425967)))

(declare-fun b!5110875 () Bool)

(declare-fun tp!1425966 () Bool)

(assert (=> b!5110875 (= e!3187621 tp!1425966)))

(assert (= (and start!539024 res!2175399) b!5110862))

(assert (= (and b!5110862 res!2175398) b!5110865))

(assert (= (and b!5110865 res!2175401) b!5110866))

(assert (= (and b!5110866 res!2175400) b!5110867))

(assert (= (and b!5110867 (not res!2175397)) b!5110872))

(assert (= (and b!5110872 (not res!2175394)) b!5110873))

(assert (= (and b!5110873 (not res!2175402)) b!5110863))

(assert (= (and b!5110863 (not res!2175395)) b!5110869))

(assert (= (and b!5110869 (not res!2175396)) b!5110864))

(get-info :version)

(assert (= (and start!539024 ((_ is Cons!59040) input!5745)) b!5110871))

(assert (= (and start!539024 condSetEmpty!29730) setIsEmpty!29730))

(assert (= (and start!539024 (not condSetEmpty!29730)) setNonEmpty!29730))

(assert (= setNonEmpty!29730 b!5110875))

(assert (= (and start!539024 ((_ is Cons!59040) testedP!265)) b!5110870))

(assert (= (and start!539024 condSetEmpty!29729) setIsEmpty!29729))

(assert (= (and start!539024 (not condSetEmpty!29729)) setNonEmpty!29729))

(assert (= setNonEmpty!29729 b!5110874))

(assert (= (and start!539024 ((_ is Cons!59040) knownP!20)) b!5110868))

(declare-fun m!6168276 () Bool)

(assert (=> b!5110862 m!6168276))

(declare-fun m!6168278 () Bool)

(assert (=> b!5110872 m!6168278))

(declare-fun m!6168280 () Bool)

(assert (=> b!5110869 m!6168280))

(declare-fun m!6168282 () Bool)

(assert (=> b!5110865 m!6168282))

(declare-fun m!6168284 () Bool)

(assert (=> b!5110865 m!6168284))

(declare-fun m!6168286 () Bool)

(assert (=> b!5110864 m!6168286))

(assert (=> b!5110864 m!6168286))

(declare-fun m!6168288 () Bool)

(assert (=> b!5110864 m!6168288))

(declare-fun m!6168290 () Bool)

(assert (=> b!5110864 m!6168290))

(declare-fun m!6168292 () Bool)

(assert (=> b!5110864 m!6168292))

(declare-fun m!6168294 () Bool)

(assert (=> b!5110864 m!6168294))

(declare-fun m!6168296 () Bool)

(assert (=> start!539024 m!6168296))

(declare-fun m!6168298 () Bool)

(assert (=> setNonEmpty!29729 m!6168298))

(declare-fun m!6168300 () Bool)

(assert (=> b!5110867 m!6168300))

(assert (=> b!5110867 m!6168300))

(declare-fun m!6168302 () Bool)

(assert (=> b!5110867 m!6168302))

(declare-fun m!6168304 () Bool)

(assert (=> b!5110867 m!6168304))

(declare-fun m!6168306 () Bool)

(assert (=> b!5110867 m!6168306))

(declare-fun m!6168308 () Bool)

(assert (=> b!5110866 m!6168308))

(declare-fun m!6168310 () Bool)

(assert (=> b!5110873 m!6168310))

(declare-fun m!6168312 () Bool)

(assert (=> setNonEmpty!29730 m!6168312))

(check-sat tp_is_empty!37555 (not b!5110870) (not b!5110865) (not b!5110862) (not b!5110875) (not setNonEmpty!29730) (not b!5110872) (not b!5110871) (not b!5110864) (not b!5110866) (not b!5110874) (not b!5110873) (not b!5110867) (not b!5110868) (not b!5110869) (not start!539024) (not setNonEmpty!29729))
(check-sat)
