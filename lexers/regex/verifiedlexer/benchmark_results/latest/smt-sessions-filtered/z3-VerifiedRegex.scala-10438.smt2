; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539488 () Bool)

(assert start!539488)

(declare-fun b!5113858 () Bool)

(declare-fun e!3189428 () Bool)

(declare-fun tp_is_empty!37607 () Bool)

(declare-fun tp!1426808 () Bool)

(assert (=> b!5113858 (= e!3189428 (and tp_is_empty!37607 tp!1426808))))

(declare-fun b!5113859 () Bool)

(declare-fun e!3189432 () Bool)

(declare-fun tp!1426804 () Bool)

(assert (=> b!5113859 (= e!3189432 (and tp_is_empty!37607 tp!1426804))))

(declare-fun b!5113860 () Bool)

(declare-fun res!2176900 () Bool)

(declare-fun e!3189438 () Bool)

(assert (=> b!5113860 (=> res!2176900 e!3189438)))

(declare-datatypes ((C!28600 0))(
  ( (C!28601 (val!23952 Int)) )
))
(declare-datatypes ((List!59229 0))(
  ( (Nil!59105) (Cons!59105 (h!65553 C!28600) (t!372232 List!59229)) )
))
(declare-fun lt!2106628 () List!59229)

(declare-fun lt!2106638 () C!28600)

(declare-fun $colon$colon!1113 (List!59229 C!28600) List!59229)

(declare-fun tail!10036 (List!59229) List!59229)

(assert (=> b!5113860 (= res!2176900 (not (= lt!2106628 ($colon$colon!1113 (tail!10036 lt!2106628) lt!2106638))))))

(declare-fun b!5113861 () Bool)

(declare-fun lt!2106630 () List!59229)

(assert (=> b!5113861 (= e!3189438 (not (= lt!2106630 Nil!59105)))))

(declare-datatypes ((Regex!14167 0))(
  ( (ElementMatch!14167 (c!878645 C!28600)) (Concat!23012 (regOne!28846 Regex!14167) (regTwo!28846 Regex!14167)) (EmptyExpr!14167) (Star!14167 (reg!14496 Regex!14167)) (EmptyLang!14167) (Union!14167 (regOne!28847 Regex!14167) (regTwo!28847 Regex!14167)) )
))
(declare-datatypes ((List!59230 0))(
  ( (Nil!59106) (Cons!59106 (h!65554 Regex!14167) (t!372233 List!59230)) )
))
(declare-datatypes ((Context!7102 0))(
  ( (Context!7103 (exprs!4051 List!59230)) )
))
(declare-fun setElem!29942 () Context!7102)

(declare-fun e!3189436 () Bool)

(declare-fun setNonEmpty!29941 () Bool)

(declare-fun setRes!29941 () Bool)

(declare-fun tp!1426805 () Bool)

(declare-fun inv!78598 (Context!7102) Bool)

(assert (=> setNonEmpty!29941 (= setRes!29941 (and tp!1426805 (inv!78598 setElem!29942) e!3189436))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4463 () (InoxSet Context!7102))

(declare-fun setRest!29942 () (InoxSet Context!7102))

(assert (=> setNonEmpty!29941 (= z!4463 ((_ map or) (store ((as const (Array Context!7102 Bool)) false) setElem!29942 true) setRest!29942))))

(declare-fun b!5113862 () Bool)

(declare-fun res!2176905 () Bool)

(declare-fun e!3189433 () Bool)

(assert (=> b!5113862 (=> res!2176905 e!3189433)))

(declare-fun input!5745 () List!59229)

(declare-fun testedP!265 () List!59229)

(declare-fun ++!12992 (List!59229 List!59229) List!59229)

(assert (=> b!5113862 (= res!2176905 (not (= (++!12992 testedP!265 lt!2106630) input!5745)))))

(declare-fun b!5113863 () Bool)

(declare-fun res!2176894 () Bool)

(declare-fun e!3189430 () Bool)

(assert (=> b!5113863 (=> res!2176894 e!3189430)))

(declare-fun lt!2106623 () Int)

(declare-fun size!39473 (List!59229) Int)

(assert (=> b!5113863 (= res!2176894 (>= lt!2106623 (size!39473 input!5745)))))

(declare-fun b!5113864 () Bool)

(declare-fun res!2176899 () Bool)

(declare-fun e!3189439 () Bool)

(assert (=> b!5113864 (=> (not res!2176899) (not e!3189439))))

(declare-fun baseZ!46 () (InoxSet Context!7102))

(declare-fun knownP!20 () List!59229)

(declare-fun matchZipper!835 ((InoxSet Context!7102) List!59229) Bool)

(assert (=> b!5113864 (= res!2176899 (matchZipper!835 baseZ!46 knownP!20))))

(declare-fun b!5113865 () Bool)

(declare-fun e!3189437 () Bool)

(declare-fun tp!1426809 () Bool)

(assert (=> b!5113865 (= e!3189437 tp!1426809)))

(declare-fun b!5113866 () Bool)

(declare-fun res!2176909 () Bool)

(assert (=> b!5113866 (=> res!2176909 e!3189438)))

(declare-fun lt!2106627 () List!59229)

(assert (=> b!5113866 (= res!2176909 (not (= lt!2106627 knownP!20)))))

(declare-fun b!5113867 () Bool)

(declare-fun e!3189429 () Bool)

(assert (=> b!5113867 (= e!3189429 e!3189439)))

(declare-fun res!2176903 () Bool)

(assert (=> b!5113867 (=> (not res!2176903) (not e!3189439))))

(declare-fun lt!2106637 () Int)

(assert (=> b!5113867 (= res!2176903 (>= lt!2106637 lt!2106623))))

(assert (=> b!5113867 (= lt!2106623 (size!39473 testedP!265))))

(assert (=> b!5113867 (= lt!2106637 (size!39473 knownP!20))))

(declare-fun b!5113868 () Bool)

(declare-fun e!3189434 () Bool)

(assert (=> b!5113868 (= e!3189433 e!3189434)))

(declare-fun res!2176897 () Bool)

(assert (=> b!5113868 (=> res!2176897 e!3189434)))

(declare-fun lt!2106624 () List!59229)

(assert (=> b!5113868 (= res!2176897 (not (= lt!2106624 input!5745)))))

(declare-fun lt!2106622 () List!59229)

(assert (=> b!5113868 (= lt!2106622 lt!2106624)))

(declare-fun lt!2106635 () List!59229)

(assert (=> b!5113868 (= lt!2106624 (++!12992 testedP!265 lt!2106635))))

(declare-fun lt!2106634 () List!59229)

(assert (=> b!5113868 (= lt!2106635 (++!12992 lt!2106628 lt!2106634))))

(declare-datatypes ((Unit!150221 0))(
  ( (Unit!150222) )
))
(declare-fun lt!2106625 () Unit!150221)

(declare-fun lemmaConcatAssociativity!2750 (List!59229 List!59229 List!59229) Unit!150221)

(assert (=> b!5113868 (= lt!2106625 (lemmaConcatAssociativity!2750 testedP!265 lt!2106628 lt!2106634))))

(declare-fun b!5113869 () Bool)

(declare-fun e!3189435 () Bool)

(declare-fun tp!1426807 () Bool)

(assert (=> b!5113869 (= e!3189435 (and tp_is_empty!37607 tp!1426807))))

(declare-fun b!5113870 () Bool)

(assert (=> b!5113870 (= e!3189439 (not e!3189430))))

(declare-fun res!2176896 () Bool)

(assert (=> b!5113870 (=> res!2176896 e!3189430)))

(assert (=> b!5113870 (= res!2176896 (not (matchZipper!835 z!4463 lt!2106628)))))

(declare-fun getSuffix!3246 (List!59229 List!59229) List!59229)

(assert (=> b!5113870 (= lt!2106628 (getSuffix!3246 knownP!20 testedP!265))))

(declare-fun isPrefix!5572 (List!59229 List!59229) Bool)

(assert (=> b!5113870 (isPrefix!5572 testedP!265 knownP!20)))

(declare-fun lt!2106631 () Unit!150221)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!709 (List!59229 List!59229 List!59229) Unit!150221)

(assert (=> b!5113870 (= lt!2106631 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!709 knownP!20 testedP!265 input!5745))))

(declare-fun b!5113871 () Bool)

(declare-fun e!3189431 () Bool)

(assert (=> b!5113871 (= e!3189430 e!3189431)))

(declare-fun res!2176910 () Bool)

(assert (=> b!5113871 (=> res!2176910 e!3189431)))

(assert (=> b!5113871 (= res!2176910 (not (= (++!12992 knownP!20 lt!2106634) input!5745)))))

(assert (=> b!5113871 (= lt!2106634 (getSuffix!3246 input!5745 knownP!20))))

(declare-fun lt!2106621 () List!59229)

(declare-fun lt!2106633 () List!59229)

(assert (=> b!5113871 (= lt!2106621 (getSuffix!3246 knownP!20 lt!2106633))))

(assert (=> b!5113871 (isPrefix!5572 lt!2106633 knownP!20)))

(declare-fun lt!2106636 () Unit!150221)

(assert (=> b!5113871 (= lt!2106636 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!709 knownP!20 lt!2106633 input!5745))))

(declare-fun derivationZipper!66 ((InoxSet Context!7102) List!59229) (InoxSet Context!7102))

(declare-fun derivationStepZipper!802 ((InoxSet Context!7102) C!28600) (InoxSet Context!7102))

(assert (=> b!5113871 (= (derivationZipper!66 baseZ!46 lt!2106633) (derivationStepZipper!802 z!4463 lt!2106638))))

(declare-fun lt!2106626 () Unit!150221)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!27 ((InoxSet Context!7102) (InoxSet Context!7102) List!59229 C!28600) Unit!150221)

(assert (=> b!5113871 (= lt!2106626 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!27 baseZ!46 z!4463 testedP!265 lt!2106638))))

(assert (=> b!5113871 (isPrefix!5572 lt!2106633 input!5745)))

(declare-fun lt!2106629 () Unit!150221)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!962 (List!59229 List!59229) Unit!150221)

(assert (=> b!5113871 (= lt!2106629 (lemmaAddHeadSuffixToPrefixStillPrefix!962 testedP!265 input!5745))))

(assert (=> b!5113871 (= lt!2106633 (++!12992 testedP!265 (Cons!59105 lt!2106638 Nil!59105)))))

(declare-fun head!10895 (List!59229) C!28600)

(assert (=> b!5113871 (= lt!2106638 (head!10895 lt!2106630))))

(assert (=> b!5113871 (= lt!2106630 (getSuffix!3246 input!5745 testedP!265))))

(declare-fun res!2176901 () Bool)

(assert (=> start!539488 (=> (not res!2176901) (not e!3189429))))

(assert (=> start!539488 (= res!2176901 (isPrefix!5572 testedP!265 input!5745))))

(assert (=> start!539488 e!3189429))

(assert (=> start!539488 e!3189428))

(declare-fun condSetEmpty!29942 () Bool)

(assert (=> start!539488 (= condSetEmpty!29942 (= z!4463 ((as const (Array Context!7102 Bool)) false)))))

(assert (=> start!539488 setRes!29941))

(assert (=> start!539488 e!3189432))

(declare-fun condSetEmpty!29941 () Bool)

(assert (=> start!539488 (= condSetEmpty!29941 (= baseZ!46 ((as const (Array Context!7102 Bool)) false)))))

(declare-fun setRes!29942 () Bool)

(assert (=> start!539488 setRes!29942))

(assert (=> start!539488 e!3189435))

(declare-fun setIsEmpty!29941 () Bool)

(assert (=> setIsEmpty!29941 setRes!29942))

(declare-fun b!5113872 () Bool)

(declare-fun tp!1426803 () Bool)

(assert (=> b!5113872 (= e!3189436 tp!1426803)))

(declare-fun b!5113873 () Bool)

(assert (=> b!5113873 (= e!3189434 e!3189438)))

(declare-fun res!2176895 () Bool)

(assert (=> b!5113873 (=> res!2176895 e!3189438)))

(assert (=> b!5113873 (= res!2176895 (not (= (head!10895 lt!2106628) lt!2106638)))))

(assert (=> b!5113873 (= lt!2106635 lt!2106630)))

(declare-fun lt!2106632 () Unit!150221)

(declare-fun lemmaSamePrefixThenSameSuffix!2618 (List!59229 List!59229 List!59229 List!59229 List!59229) Unit!150221)

(assert (=> b!5113873 (= lt!2106632 (lemmaSamePrefixThenSameSuffix!2618 testedP!265 lt!2106635 testedP!265 lt!2106630 input!5745))))

(declare-fun b!5113874 () Bool)

(declare-fun res!2176898 () Bool)

(assert (=> b!5113874 (=> (not res!2176898) (not e!3189429))))

(assert (=> b!5113874 (= res!2176898 (isPrefix!5572 knownP!20 input!5745))))

(declare-fun setElem!29941 () Context!7102)

(declare-fun tp!1426806 () Bool)

(declare-fun setNonEmpty!29942 () Bool)

(assert (=> setNonEmpty!29942 (= setRes!29942 (and tp!1426806 (inv!78598 setElem!29941) e!3189437))))

(declare-fun setRest!29941 () (InoxSet Context!7102))

(assert (=> setNonEmpty!29942 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7102 Bool)) false) setElem!29941 true) setRest!29941))))

(declare-fun b!5113875 () Bool)

(declare-fun res!2176904 () Bool)

(assert (=> b!5113875 (=> res!2176904 e!3189438)))

(assert (=> b!5113875 (= res!2176904 (not (= (++!12992 lt!2106633 lt!2106621) knownP!20)))))

(declare-fun b!5113876 () Bool)

(declare-fun res!2176908 () Bool)

(assert (=> b!5113876 (=> res!2176908 e!3189430)))

(assert (=> b!5113876 (= res!2176908 (not (= (derivationZipper!66 baseZ!46 testedP!265) z!4463)))))

(declare-fun setIsEmpty!29942 () Bool)

(assert (=> setIsEmpty!29942 setRes!29941))

(declare-fun b!5113877 () Bool)

(declare-fun res!2176907 () Bool)

(assert (=> b!5113877 (=> res!2176907 e!3189430)))

(declare-fun lostCauseZipper!1053 ((InoxSet Context!7102)) Bool)

(assert (=> b!5113877 (= res!2176907 (lostCauseZipper!1053 z!4463))))

(declare-fun b!5113878 () Bool)

(declare-fun res!2176906 () Bool)

(assert (=> b!5113878 (=> res!2176906 e!3189430)))

(assert (=> b!5113878 (= res!2176906 (= lt!2106623 lt!2106637))))

(declare-fun b!5113879 () Bool)

(assert (=> b!5113879 (= e!3189431 e!3189433)))

(declare-fun res!2176902 () Bool)

(assert (=> b!5113879 (=> res!2176902 e!3189433)))

(assert (=> b!5113879 (= res!2176902 (not (= lt!2106622 input!5745)))))

(assert (=> b!5113879 (= lt!2106622 (++!12992 lt!2106627 lt!2106634))))

(assert (=> b!5113879 (= lt!2106627 (++!12992 testedP!265 lt!2106628))))

(assert (= (and start!539488 res!2176901) b!5113874))

(assert (= (and b!5113874 res!2176898) b!5113867))

(assert (= (and b!5113867 res!2176903) b!5113864))

(assert (= (and b!5113864 res!2176899) b!5113870))

(assert (= (and b!5113870 (not res!2176896)) b!5113876))

(assert (= (and b!5113876 (not res!2176908)) b!5113877))

(assert (= (and b!5113877 (not res!2176907)) b!5113878))

(assert (= (and b!5113878 (not res!2176906)) b!5113863))

(assert (= (and b!5113863 (not res!2176894)) b!5113871))

(assert (= (and b!5113871 (not res!2176910)) b!5113879))

(assert (= (and b!5113879 (not res!2176902)) b!5113862))

(assert (= (and b!5113862 (not res!2176905)) b!5113868))

(assert (= (and b!5113868 (not res!2176897)) b!5113873))

(assert (= (and b!5113873 (not res!2176895)) b!5113860))

(assert (= (and b!5113860 (not res!2176900)) b!5113866))

(assert (= (and b!5113866 (not res!2176909)) b!5113875))

(assert (= (and b!5113875 (not res!2176904)) b!5113861))

(get-info :version)

(assert (= (and start!539488 ((_ is Cons!59105) input!5745)) b!5113858))

(assert (= (and start!539488 condSetEmpty!29942) setIsEmpty!29942))

(assert (= (and start!539488 (not condSetEmpty!29942)) setNonEmpty!29941))

(assert (= setNonEmpty!29941 b!5113872))

(assert (= (and start!539488 ((_ is Cons!59105) testedP!265)) b!5113859))

(assert (= (and start!539488 condSetEmpty!29941) setIsEmpty!29941))

(assert (= (and start!539488 (not condSetEmpty!29941)) setNonEmpty!29942))

(assert (= setNonEmpty!29942 b!5113865))

(assert (= (and start!539488 ((_ is Cons!59105) knownP!20)) b!5113869))

(declare-fun m!6172218 () Bool)

(assert (=> b!5113875 m!6172218))

(declare-fun m!6172220 () Bool)

(assert (=> b!5113862 m!6172220))

(declare-fun m!6172222 () Bool)

(assert (=> b!5113860 m!6172222))

(assert (=> b!5113860 m!6172222))

(declare-fun m!6172224 () Bool)

(assert (=> b!5113860 m!6172224))

(declare-fun m!6172226 () Bool)

(assert (=> b!5113879 m!6172226))

(declare-fun m!6172228 () Bool)

(assert (=> b!5113879 m!6172228))

(declare-fun m!6172230 () Bool)

(assert (=> b!5113868 m!6172230))

(declare-fun m!6172232 () Bool)

(assert (=> b!5113868 m!6172232))

(declare-fun m!6172234 () Bool)

(assert (=> b!5113868 m!6172234))

(declare-fun m!6172236 () Bool)

(assert (=> b!5113864 m!6172236))

(declare-fun m!6172238 () Bool)

(assert (=> b!5113871 m!6172238))

(declare-fun m!6172240 () Bool)

(assert (=> b!5113871 m!6172240))

(declare-fun m!6172242 () Bool)

(assert (=> b!5113871 m!6172242))

(declare-fun m!6172244 () Bool)

(assert (=> b!5113871 m!6172244))

(declare-fun m!6172246 () Bool)

(assert (=> b!5113871 m!6172246))

(declare-fun m!6172248 () Bool)

(assert (=> b!5113871 m!6172248))

(declare-fun m!6172250 () Bool)

(assert (=> b!5113871 m!6172250))

(declare-fun m!6172252 () Bool)

(assert (=> b!5113871 m!6172252))

(declare-fun m!6172254 () Bool)

(assert (=> b!5113871 m!6172254))

(declare-fun m!6172256 () Bool)

(assert (=> b!5113871 m!6172256))

(declare-fun m!6172258 () Bool)

(assert (=> b!5113871 m!6172258))

(declare-fun m!6172260 () Bool)

(assert (=> b!5113871 m!6172260))

(declare-fun m!6172262 () Bool)

(assert (=> b!5113871 m!6172262))

(declare-fun m!6172264 () Bool)

(assert (=> b!5113873 m!6172264))

(declare-fun m!6172266 () Bool)

(assert (=> b!5113873 m!6172266))

(declare-fun m!6172268 () Bool)

(assert (=> start!539488 m!6172268))

(declare-fun m!6172270 () Bool)

(assert (=> b!5113877 m!6172270))

(declare-fun m!6172272 () Bool)

(assert (=> setNonEmpty!29942 m!6172272))

(declare-fun m!6172274 () Bool)

(assert (=> b!5113870 m!6172274))

(declare-fun m!6172276 () Bool)

(assert (=> b!5113870 m!6172276))

(declare-fun m!6172278 () Bool)

(assert (=> b!5113870 m!6172278))

(declare-fun m!6172280 () Bool)

(assert (=> b!5113870 m!6172280))

(declare-fun m!6172282 () Bool)

(assert (=> b!5113867 m!6172282))

(declare-fun m!6172284 () Bool)

(assert (=> b!5113867 m!6172284))

(declare-fun m!6172286 () Bool)

(assert (=> b!5113876 m!6172286))

(declare-fun m!6172288 () Bool)

(assert (=> setNonEmpty!29941 m!6172288))

(declare-fun m!6172290 () Bool)

(assert (=> b!5113863 m!6172290))

(declare-fun m!6172292 () Bool)

(assert (=> b!5113874 m!6172292))

(check-sat tp_is_empty!37607 (not b!5113877) (not b!5113865) (not b!5113862) (not b!5113859) (not b!5113869) (not b!5113872) (not b!5113875) (not b!5113863) (not start!539488) (not b!5113870) (not setNonEmpty!29941) (not b!5113874) (not b!5113860) (not setNonEmpty!29942) (not b!5113864) (not b!5113868) (not b!5113867) (not b!5113871) (not b!5113858) (not b!5113873) (not b!5113876) (not b!5113879))
(check-sat)
(get-model)

(declare-fun b!5113906 () Bool)

(declare-fun e!3189455 () Bool)

(assert (=> b!5113906 (= e!3189455 (isPrefix!5572 (tail!10036 knownP!20) (tail!10036 input!5745)))))

(declare-fun b!5113904 () Bool)

(declare-fun e!3189456 () Bool)

(assert (=> b!5113904 (= e!3189456 e!3189455)))

(declare-fun res!2176927 () Bool)

(assert (=> b!5113904 (=> (not res!2176927) (not e!3189455))))

(assert (=> b!5113904 (= res!2176927 (not ((_ is Nil!59105) input!5745)))))

(declare-fun b!5113907 () Bool)

(declare-fun e!3189454 () Bool)

(assert (=> b!5113907 (= e!3189454 (>= (size!39473 input!5745) (size!39473 knownP!20)))))

(declare-fun b!5113905 () Bool)

(declare-fun res!2176930 () Bool)

(assert (=> b!5113905 (=> (not res!2176930) (not e!3189455))))

(assert (=> b!5113905 (= res!2176930 (= (head!10895 knownP!20) (head!10895 input!5745)))))

(declare-fun d!1652717 () Bool)

(assert (=> d!1652717 e!3189454))

(declare-fun res!2176928 () Bool)

(assert (=> d!1652717 (=> res!2176928 e!3189454)))

(declare-fun lt!2106645 () Bool)

(assert (=> d!1652717 (= res!2176928 (not lt!2106645))))

(assert (=> d!1652717 (= lt!2106645 e!3189456)))

(declare-fun res!2176929 () Bool)

(assert (=> d!1652717 (=> res!2176929 e!3189456)))

(assert (=> d!1652717 (= res!2176929 ((_ is Nil!59105) knownP!20))))

(assert (=> d!1652717 (= (isPrefix!5572 knownP!20 input!5745) lt!2106645)))

(assert (= (and d!1652717 (not res!2176929)) b!5113904))

(assert (= (and b!5113904 res!2176927) b!5113905))

(assert (= (and b!5113905 res!2176930) b!5113906))

(assert (= (and d!1652717 (not res!2176928)) b!5113907))

(declare-fun m!6172320 () Bool)

(assert (=> b!5113906 m!6172320))

(declare-fun m!6172322 () Bool)

(assert (=> b!5113906 m!6172322))

(assert (=> b!5113906 m!6172320))

(assert (=> b!5113906 m!6172322))

(declare-fun m!6172324 () Bool)

(assert (=> b!5113906 m!6172324))

(assert (=> b!5113907 m!6172290))

(assert (=> b!5113907 m!6172284))

(declare-fun m!6172326 () Bool)

(assert (=> b!5113905 m!6172326))

(declare-fun m!6172328 () Bool)

(assert (=> b!5113905 m!6172328))

(assert (=> b!5113874 d!1652717))

(declare-fun d!1652723 () Bool)

(declare-fun c!878655 () Bool)

(declare-fun isEmpty!31888 (List!59229) Bool)

(assert (=> d!1652723 (= c!878655 (isEmpty!31888 knownP!20))))

(declare-fun e!3189471 () Bool)

(assert (=> d!1652723 (= (matchZipper!835 baseZ!46 knownP!20) e!3189471)))

(declare-fun b!5113930 () Bool)

(declare-fun nullableZipper!1004 ((InoxSet Context!7102)) Bool)

(assert (=> b!5113930 (= e!3189471 (nullableZipper!1004 baseZ!46))))

(declare-fun b!5113931 () Bool)

(assert (=> b!5113931 (= e!3189471 (matchZipper!835 (derivationStepZipper!802 baseZ!46 (head!10895 knownP!20)) (tail!10036 knownP!20)))))

(assert (= (and d!1652723 c!878655) b!5113930))

(assert (= (and d!1652723 (not c!878655)) b!5113931))

(declare-fun m!6172342 () Bool)

(assert (=> d!1652723 m!6172342))

(declare-fun m!6172344 () Bool)

(assert (=> b!5113930 m!6172344))

(assert (=> b!5113931 m!6172326))

(assert (=> b!5113931 m!6172326))

(declare-fun m!6172346 () Bool)

(assert (=> b!5113931 m!6172346))

(assert (=> b!5113931 m!6172320))

(assert (=> b!5113931 m!6172346))

(assert (=> b!5113931 m!6172320))

(declare-fun m!6172350 () Bool)

(assert (=> b!5113931 m!6172350))

(assert (=> b!5113864 d!1652723))

(declare-fun d!1652729 () Bool)

(declare-fun lambda!250683 () Int)

(declare-fun forall!13563 (List!59230 Int) Bool)

(assert (=> d!1652729 (= (inv!78598 setElem!29941) (forall!13563 (exprs!4051 setElem!29941) lambda!250683))))

(declare-fun bs!1192251 () Bool)

(assert (= bs!1192251 d!1652729))

(declare-fun m!6172516 () Bool)

(assert (=> bs!1192251 m!6172516))

(assert (=> setNonEmpty!29942 d!1652729))

(declare-fun b!5114040 () Bool)

(declare-fun e!3189536 () List!59229)

(assert (=> b!5114040 (= e!3189536 (Cons!59105 (h!65553 lt!2106633) (++!12992 (t!372232 lt!2106633) lt!2106621)))))

(declare-fun d!1652797 () Bool)

(declare-fun e!3189537 () Bool)

(assert (=> d!1652797 e!3189537))

(declare-fun res!2176976 () Bool)

(assert (=> d!1652797 (=> (not res!2176976) (not e!3189537))))

(declare-fun lt!2106712 () List!59229)

(declare-fun content!10507 (List!59229) (InoxSet C!28600))

(assert (=> d!1652797 (= res!2176976 (= (content!10507 lt!2106712) ((_ map or) (content!10507 lt!2106633) (content!10507 lt!2106621))))))

(assert (=> d!1652797 (= lt!2106712 e!3189536)))

(declare-fun c!878694 () Bool)

(assert (=> d!1652797 (= c!878694 ((_ is Nil!59105) lt!2106633))))

(assert (=> d!1652797 (= (++!12992 lt!2106633 lt!2106621) lt!2106712)))

(declare-fun b!5114039 () Bool)

(assert (=> b!5114039 (= e!3189536 lt!2106621)))

(declare-fun b!5114041 () Bool)

(declare-fun res!2176975 () Bool)

(assert (=> b!5114041 (=> (not res!2176975) (not e!3189537))))

(assert (=> b!5114041 (= res!2176975 (= (size!39473 lt!2106712) (+ (size!39473 lt!2106633) (size!39473 lt!2106621))))))

(declare-fun b!5114042 () Bool)

(assert (=> b!5114042 (= e!3189537 (or (not (= lt!2106621 Nil!59105)) (= lt!2106712 lt!2106633)))))

(assert (= (and d!1652797 c!878694) b!5114039))

(assert (= (and d!1652797 (not c!878694)) b!5114040))

(assert (= (and d!1652797 res!2176976) b!5114041))

(assert (= (and b!5114041 res!2176975) b!5114042))

(declare-fun m!6172518 () Bool)

(assert (=> b!5114040 m!6172518))

(declare-fun m!6172520 () Bool)

(assert (=> d!1652797 m!6172520))

(declare-fun m!6172522 () Bool)

(assert (=> d!1652797 m!6172522))

(declare-fun m!6172524 () Bool)

(assert (=> d!1652797 m!6172524))

(declare-fun m!6172526 () Bool)

(assert (=> b!5114041 m!6172526))

(declare-fun m!6172528 () Bool)

(assert (=> b!5114041 m!6172528))

(declare-fun m!6172530 () Bool)

(assert (=> b!5114041 m!6172530))

(assert (=> b!5113875 d!1652797))

(declare-fun b!5114045 () Bool)

(declare-fun e!3189539 () Bool)

(assert (=> b!5114045 (= e!3189539 (isPrefix!5572 (tail!10036 testedP!265) (tail!10036 input!5745)))))

(declare-fun b!5114043 () Bool)

(declare-fun e!3189540 () Bool)

(assert (=> b!5114043 (= e!3189540 e!3189539)))

(declare-fun res!2176977 () Bool)

(assert (=> b!5114043 (=> (not res!2176977) (not e!3189539))))

(assert (=> b!5114043 (= res!2176977 (not ((_ is Nil!59105) input!5745)))))

(declare-fun b!5114046 () Bool)

(declare-fun e!3189538 () Bool)

(assert (=> b!5114046 (= e!3189538 (>= (size!39473 input!5745) (size!39473 testedP!265)))))

(declare-fun b!5114044 () Bool)

(declare-fun res!2176980 () Bool)

(assert (=> b!5114044 (=> (not res!2176980) (not e!3189539))))

(assert (=> b!5114044 (= res!2176980 (= (head!10895 testedP!265) (head!10895 input!5745)))))

(declare-fun d!1652799 () Bool)

(assert (=> d!1652799 e!3189538))

(declare-fun res!2176978 () Bool)

(assert (=> d!1652799 (=> res!2176978 e!3189538)))

(declare-fun lt!2106713 () Bool)

(assert (=> d!1652799 (= res!2176978 (not lt!2106713))))

(assert (=> d!1652799 (= lt!2106713 e!3189540)))

(declare-fun res!2176979 () Bool)

(assert (=> d!1652799 (=> res!2176979 e!3189540)))

(assert (=> d!1652799 (= res!2176979 ((_ is Nil!59105) testedP!265))))

(assert (=> d!1652799 (= (isPrefix!5572 testedP!265 input!5745) lt!2106713)))

(assert (= (and d!1652799 (not res!2176979)) b!5114043))

(assert (= (and b!5114043 res!2176977) b!5114044))

(assert (= (and b!5114044 res!2176980) b!5114045))

(assert (= (and d!1652799 (not res!2176978)) b!5114046))

(declare-fun m!6172532 () Bool)

(assert (=> b!5114045 m!6172532))

(assert (=> b!5114045 m!6172322))

(assert (=> b!5114045 m!6172532))

(assert (=> b!5114045 m!6172322))

(declare-fun m!6172534 () Bool)

(assert (=> b!5114045 m!6172534))

(assert (=> b!5114046 m!6172290))

(assert (=> b!5114046 m!6172282))

(declare-fun m!6172536 () Bool)

(assert (=> b!5114044 m!6172536))

(assert (=> b!5114044 m!6172328))

(assert (=> start!539488 d!1652799))

(declare-fun b!5114048 () Bool)

(declare-fun e!3189541 () List!59229)

(assert (=> b!5114048 (= e!3189541 (Cons!59105 (h!65553 testedP!265) (++!12992 (t!372232 testedP!265) lt!2106630)))))

(declare-fun d!1652801 () Bool)

(declare-fun e!3189542 () Bool)

(assert (=> d!1652801 e!3189542))

(declare-fun res!2176982 () Bool)

(assert (=> d!1652801 (=> (not res!2176982) (not e!3189542))))

(declare-fun lt!2106714 () List!59229)

(assert (=> d!1652801 (= res!2176982 (= (content!10507 lt!2106714) ((_ map or) (content!10507 testedP!265) (content!10507 lt!2106630))))))

(assert (=> d!1652801 (= lt!2106714 e!3189541)))

(declare-fun c!878695 () Bool)

(assert (=> d!1652801 (= c!878695 ((_ is Nil!59105) testedP!265))))

(assert (=> d!1652801 (= (++!12992 testedP!265 lt!2106630) lt!2106714)))

(declare-fun b!5114047 () Bool)

(assert (=> b!5114047 (= e!3189541 lt!2106630)))

(declare-fun b!5114049 () Bool)

(declare-fun res!2176981 () Bool)

(assert (=> b!5114049 (=> (not res!2176981) (not e!3189542))))

(assert (=> b!5114049 (= res!2176981 (= (size!39473 lt!2106714) (+ (size!39473 testedP!265) (size!39473 lt!2106630))))))

(declare-fun b!5114050 () Bool)

(assert (=> b!5114050 (= e!3189542 (or (not (= lt!2106630 Nil!59105)) (= lt!2106714 testedP!265)))))

(assert (= (and d!1652801 c!878695) b!5114047))

(assert (= (and d!1652801 (not c!878695)) b!5114048))

(assert (= (and d!1652801 res!2176982) b!5114049))

(assert (= (and b!5114049 res!2176981) b!5114050))

(declare-fun m!6172538 () Bool)

(assert (=> b!5114048 m!6172538))

(declare-fun m!6172540 () Bool)

(assert (=> d!1652801 m!6172540))

(declare-fun m!6172542 () Bool)

(assert (=> d!1652801 m!6172542))

(declare-fun m!6172544 () Bool)

(assert (=> d!1652801 m!6172544))

(declare-fun m!6172546 () Bool)

(assert (=> b!5114049 m!6172546))

(assert (=> b!5114049 m!6172282))

(declare-fun m!6172548 () Bool)

(assert (=> b!5114049 m!6172548))

(assert (=> b!5113862 d!1652801))

(declare-fun d!1652803 () Bool)

(declare-fun lt!2106717 () Int)

(assert (=> d!1652803 (>= lt!2106717 0)))

(declare-fun e!3189545 () Int)

(assert (=> d!1652803 (= lt!2106717 e!3189545)))

(declare-fun c!878698 () Bool)

(assert (=> d!1652803 (= c!878698 ((_ is Nil!59105) input!5745))))

(assert (=> d!1652803 (= (size!39473 input!5745) lt!2106717)))

(declare-fun b!5114055 () Bool)

(assert (=> b!5114055 (= e!3189545 0)))

(declare-fun b!5114056 () Bool)

(assert (=> b!5114056 (= e!3189545 (+ 1 (size!39473 (t!372232 input!5745))))))

(assert (= (and d!1652803 c!878698) b!5114055))

(assert (= (and d!1652803 (not c!878698)) b!5114056))

(declare-fun m!6172550 () Bool)

(assert (=> b!5114056 m!6172550))

(assert (=> b!5113863 d!1652803))

(declare-fun d!1652805 () Bool)

(assert (=> d!1652805 (= (head!10895 lt!2106628) (h!65553 lt!2106628))))

(assert (=> b!5113873 d!1652805))

(declare-fun d!1652807 () Bool)

(assert (=> d!1652807 (= lt!2106635 lt!2106630)))

(declare-fun lt!2106720 () Unit!150221)

(declare-fun choose!37530 (List!59229 List!59229 List!59229 List!59229 List!59229) Unit!150221)

(assert (=> d!1652807 (= lt!2106720 (choose!37530 testedP!265 lt!2106635 testedP!265 lt!2106630 input!5745))))

(assert (=> d!1652807 (isPrefix!5572 testedP!265 input!5745)))

(assert (=> d!1652807 (= (lemmaSamePrefixThenSameSuffix!2618 testedP!265 lt!2106635 testedP!265 lt!2106630 input!5745) lt!2106720)))

(declare-fun bs!1192252 () Bool)

(assert (= bs!1192252 d!1652807))

(declare-fun m!6172552 () Bool)

(assert (=> bs!1192252 m!6172552))

(assert (=> bs!1192252 m!6172268))

(assert (=> b!5113873 d!1652807))

(declare-fun d!1652809 () Bool)

(assert (=> d!1652809 (= ($colon$colon!1113 (tail!10036 lt!2106628) lt!2106638) (Cons!59105 lt!2106638 (tail!10036 lt!2106628)))))

(assert (=> b!5113860 d!1652809))

(declare-fun d!1652811 () Bool)

(assert (=> d!1652811 (= (tail!10036 lt!2106628) (t!372232 lt!2106628))))

(assert (=> b!5113860 d!1652811))

(declare-fun bs!1192253 () Bool)

(declare-fun b!5114061 () Bool)

(declare-fun d!1652813 () Bool)

(assert (= bs!1192253 (and b!5114061 d!1652813)))

(declare-fun lambda!250697 () Int)

(declare-fun lambda!250696 () Int)

(assert (=> bs!1192253 (not (= lambda!250697 lambda!250696))))

(declare-fun bs!1192254 () Bool)

(declare-fun b!5114062 () Bool)

(assert (= bs!1192254 (and b!5114062 d!1652813)))

(declare-fun lambda!250698 () Int)

(assert (=> bs!1192254 (not (= lambda!250698 lambda!250696))))

(declare-fun bs!1192255 () Bool)

(assert (= bs!1192255 (and b!5114062 b!5114061)))

(assert (=> bs!1192255 (= lambda!250698 lambda!250697)))

(declare-fun e!3189552 () Unit!150221)

(declare-fun Unit!150225 () Unit!150221)

(assert (=> b!5114061 (= e!3189552 Unit!150225)))

(declare-datatypes ((List!59232 0))(
  ( (Nil!59108) (Cons!59108 (h!65556 Context!7102) (t!372237 List!59232)) )
))
(declare-fun lt!2106741 () List!59232)

(declare-fun call!356473 () List!59232)

(assert (=> b!5114061 (= lt!2106741 call!356473)))

(declare-fun lt!2106743 () Unit!150221)

(declare-fun lemmaNotForallThenExists!314 (List!59232 Int) Unit!150221)

(assert (=> b!5114061 (= lt!2106743 (lemmaNotForallThenExists!314 lt!2106741 lambda!250696))))

(declare-fun call!356472 () Bool)

(assert (=> b!5114061 call!356472))

(declare-fun lt!2106744 () Unit!150221)

(assert (=> b!5114061 (= lt!2106744 lt!2106743)))

(declare-fun lt!2106740 () Bool)

(declare-datatypes ((Option!14674 0))(
  ( (None!14673) (Some!14673 (v!50686 List!59229)) )
))
(declare-fun isEmpty!31889 (Option!14674) Bool)

(declare-fun getLanguageWitness!791 ((InoxSet Context!7102)) Option!14674)

(assert (=> d!1652813 (= lt!2106740 (isEmpty!31889 (getLanguageWitness!791 z!4463)))))

(declare-fun forall!13564 ((InoxSet Context!7102) Int) Bool)

(assert (=> d!1652813 (= lt!2106740 (forall!13564 z!4463 lambda!250696))))

(declare-fun lt!2106739 () Unit!150221)

(assert (=> d!1652813 (= lt!2106739 e!3189552)))

(declare-fun c!878709 () Bool)

(assert (=> d!1652813 (= c!878709 (not (forall!13564 z!4463 lambda!250696)))))

(assert (=> d!1652813 (= (lostCauseZipper!1053 z!4463) lt!2106740)))

(declare-fun Unit!150226 () Unit!150221)

(assert (=> b!5114062 (= e!3189552 Unit!150226)))

(declare-fun lt!2106738 () List!59232)

(assert (=> b!5114062 (= lt!2106738 call!356473)))

(declare-fun lt!2106737 () Unit!150221)

(declare-fun lemmaForallThenNotExists!297 (List!59232 Int) Unit!150221)

(assert (=> b!5114062 (= lt!2106737 (lemmaForallThenNotExists!297 lt!2106738 lambda!250696))))

(assert (=> b!5114062 (not call!356472)))

(declare-fun lt!2106742 () Unit!150221)

(assert (=> b!5114062 (= lt!2106742 lt!2106737)))

(declare-fun bm!356468 () Bool)

(declare-fun exists!1451 (List!59232 Int) Bool)

(assert (=> bm!356468 (= call!356472 (exists!1451 (ite c!878709 lt!2106741 lt!2106738) (ite c!878709 lambda!250697 lambda!250698)))))

(declare-fun bm!356467 () Bool)

(declare-fun toList!8240 ((InoxSet Context!7102)) List!59232)

(assert (=> bm!356467 (= call!356473 (toList!8240 z!4463))))

(assert (= (and d!1652813 c!878709) b!5114061))

(assert (= (and d!1652813 (not c!878709)) b!5114062))

(assert (= (or b!5114061 b!5114062) bm!356467))

(assert (= (or b!5114061 b!5114062) bm!356468))

(declare-fun m!6172554 () Bool)

(assert (=> b!5114062 m!6172554))

(declare-fun m!6172556 () Bool)

(assert (=> bm!356467 m!6172556))

(declare-fun m!6172558 () Bool)

(assert (=> bm!356468 m!6172558))

(declare-fun m!6172560 () Bool)

(assert (=> d!1652813 m!6172560))

(assert (=> d!1652813 m!6172560))

(declare-fun m!6172562 () Bool)

(assert (=> d!1652813 m!6172562))

(declare-fun m!6172564 () Bool)

(assert (=> d!1652813 m!6172564))

(assert (=> d!1652813 m!6172564))

(declare-fun m!6172566 () Bool)

(assert (=> b!5114061 m!6172566))

(assert (=> b!5113877 d!1652813))

(declare-fun d!1652815 () Bool)

(declare-fun c!878710 () Bool)

(assert (=> d!1652815 (= c!878710 (isEmpty!31888 lt!2106628))))

(declare-fun e!3189553 () Bool)

(assert (=> d!1652815 (= (matchZipper!835 z!4463 lt!2106628) e!3189553)))

(declare-fun b!5114063 () Bool)

(assert (=> b!5114063 (= e!3189553 (nullableZipper!1004 z!4463))))

(declare-fun b!5114064 () Bool)

(assert (=> b!5114064 (= e!3189553 (matchZipper!835 (derivationStepZipper!802 z!4463 (head!10895 lt!2106628)) (tail!10036 lt!2106628)))))

(assert (= (and d!1652815 c!878710) b!5114063))

(assert (= (and d!1652815 (not c!878710)) b!5114064))

(declare-fun m!6172568 () Bool)

(assert (=> d!1652815 m!6172568))

(declare-fun m!6172570 () Bool)

(assert (=> b!5114063 m!6172570))

(assert (=> b!5114064 m!6172264))

(assert (=> b!5114064 m!6172264))

(declare-fun m!6172572 () Bool)

(assert (=> b!5114064 m!6172572))

(assert (=> b!5114064 m!6172222))

(assert (=> b!5114064 m!6172572))

(assert (=> b!5114064 m!6172222))

(declare-fun m!6172574 () Bool)

(assert (=> b!5114064 m!6172574))

(assert (=> b!5113870 d!1652815))

(declare-fun d!1652817 () Bool)

(declare-fun lt!2106747 () List!59229)

(assert (=> d!1652817 (= (++!12992 testedP!265 lt!2106747) knownP!20)))

(declare-fun e!3189556 () List!59229)

(assert (=> d!1652817 (= lt!2106747 e!3189556)))

(declare-fun c!878713 () Bool)

(assert (=> d!1652817 (= c!878713 ((_ is Cons!59105) testedP!265))))

(assert (=> d!1652817 (>= (size!39473 knownP!20) (size!39473 testedP!265))))

(assert (=> d!1652817 (= (getSuffix!3246 knownP!20 testedP!265) lt!2106747)))

(declare-fun b!5114069 () Bool)

(assert (=> b!5114069 (= e!3189556 (getSuffix!3246 (tail!10036 knownP!20) (t!372232 testedP!265)))))

(declare-fun b!5114070 () Bool)

(assert (=> b!5114070 (= e!3189556 knownP!20)))

(assert (= (and d!1652817 c!878713) b!5114069))

(assert (= (and d!1652817 (not c!878713)) b!5114070))

(declare-fun m!6172576 () Bool)

(assert (=> d!1652817 m!6172576))

(assert (=> d!1652817 m!6172284))

(assert (=> d!1652817 m!6172282))

(assert (=> b!5114069 m!6172320))

(assert (=> b!5114069 m!6172320))

(declare-fun m!6172578 () Bool)

(assert (=> b!5114069 m!6172578))

(assert (=> b!5113870 d!1652817))

(declare-fun b!5114073 () Bool)

(declare-fun e!3189558 () Bool)

(assert (=> b!5114073 (= e!3189558 (isPrefix!5572 (tail!10036 testedP!265) (tail!10036 knownP!20)))))

(declare-fun b!5114071 () Bool)

(declare-fun e!3189559 () Bool)

(assert (=> b!5114071 (= e!3189559 e!3189558)))

(declare-fun res!2176983 () Bool)

(assert (=> b!5114071 (=> (not res!2176983) (not e!3189558))))

(assert (=> b!5114071 (= res!2176983 (not ((_ is Nil!59105) knownP!20)))))

(declare-fun b!5114074 () Bool)

(declare-fun e!3189557 () Bool)

(assert (=> b!5114074 (= e!3189557 (>= (size!39473 knownP!20) (size!39473 testedP!265)))))

(declare-fun b!5114072 () Bool)

(declare-fun res!2176986 () Bool)

(assert (=> b!5114072 (=> (not res!2176986) (not e!3189558))))

(assert (=> b!5114072 (= res!2176986 (= (head!10895 testedP!265) (head!10895 knownP!20)))))

(declare-fun d!1652819 () Bool)

(assert (=> d!1652819 e!3189557))

(declare-fun res!2176984 () Bool)

(assert (=> d!1652819 (=> res!2176984 e!3189557)))

(declare-fun lt!2106748 () Bool)

(assert (=> d!1652819 (= res!2176984 (not lt!2106748))))

(assert (=> d!1652819 (= lt!2106748 e!3189559)))

(declare-fun res!2176985 () Bool)

(assert (=> d!1652819 (=> res!2176985 e!3189559)))

(assert (=> d!1652819 (= res!2176985 ((_ is Nil!59105) testedP!265))))

(assert (=> d!1652819 (= (isPrefix!5572 testedP!265 knownP!20) lt!2106748)))

(assert (= (and d!1652819 (not res!2176985)) b!5114071))

(assert (= (and b!5114071 res!2176983) b!5114072))

(assert (= (and b!5114072 res!2176986) b!5114073))

(assert (= (and d!1652819 (not res!2176984)) b!5114074))

(assert (=> b!5114073 m!6172532))

(assert (=> b!5114073 m!6172320))

(assert (=> b!5114073 m!6172532))

(assert (=> b!5114073 m!6172320))

(declare-fun m!6172580 () Bool)

(assert (=> b!5114073 m!6172580))

(assert (=> b!5114074 m!6172284))

(assert (=> b!5114074 m!6172282))

(assert (=> b!5114072 m!6172536))

(assert (=> b!5114072 m!6172326))

(assert (=> b!5113870 d!1652819))

(declare-fun d!1652821 () Bool)

(assert (=> d!1652821 (isPrefix!5572 testedP!265 knownP!20)))

(declare-fun lt!2106751 () Unit!150221)

(declare-fun choose!37533 (List!59229 List!59229 List!59229) Unit!150221)

(assert (=> d!1652821 (= lt!2106751 (choose!37533 knownP!20 testedP!265 input!5745))))

(assert (=> d!1652821 (isPrefix!5572 knownP!20 input!5745)))

(assert (=> d!1652821 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!709 knownP!20 testedP!265 input!5745) lt!2106751)))

(declare-fun bs!1192256 () Bool)

(assert (= bs!1192256 d!1652821))

(assert (=> bs!1192256 m!6172278))

(declare-fun m!6172582 () Bool)

(assert (=> bs!1192256 m!6172582))

(assert (=> bs!1192256 m!6172292))

(assert (=> b!5113870 d!1652821))

(declare-fun d!1652823 () Bool)

(declare-fun lt!2106752 () List!59229)

(assert (=> d!1652823 (= (++!12992 testedP!265 lt!2106752) input!5745)))

(declare-fun e!3189560 () List!59229)

(assert (=> d!1652823 (= lt!2106752 e!3189560)))

(declare-fun c!878714 () Bool)

(assert (=> d!1652823 (= c!878714 ((_ is Cons!59105) testedP!265))))

(assert (=> d!1652823 (>= (size!39473 input!5745) (size!39473 testedP!265))))

(assert (=> d!1652823 (= (getSuffix!3246 input!5745 testedP!265) lt!2106752)))

(declare-fun b!5114075 () Bool)

(assert (=> b!5114075 (= e!3189560 (getSuffix!3246 (tail!10036 input!5745) (t!372232 testedP!265)))))

(declare-fun b!5114076 () Bool)

(assert (=> b!5114076 (= e!3189560 input!5745)))

(assert (= (and d!1652823 c!878714) b!5114075))

(assert (= (and d!1652823 (not c!878714)) b!5114076))

(declare-fun m!6172584 () Bool)

(assert (=> d!1652823 m!6172584))

(assert (=> d!1652823 m!6172290))

(assert (=> d!1652823 m!6172282))

(assert (=> b!5114075 m!6172322))

(assert (=> b!5114075 m!6172322))

(declare-fun m!6172586 () Bool)

(assert (=> b!5114075 m!6172586))

(assert (=> b!5113871 d!1652823))

(declare-fun b!5114079 () Bool)

(declare-fun e!3189562 () Bool)

(assert (=> b!5114079 (= e!3189562 (isPrefix!5572 (tail!10036 lt!2106633) (tail!10036 input!5745)))))

(declare-fun b!5114077 () Bool)

(declare-fun e!3189563 () Bool)

(assert (=> b!5114077 (= e!3189563 e!3189562)))

(declare-fun res!2176987 () Bool)

(assert (=> b!5114077 (=> (not res!2176987) (not e!3189562))))

(assert (=> b!5114077 (= res!2176987 (not ((_ is Nil!59105) input!5745)))))

(declare-fun b!5114080 () Bool)

(declare-fun e!3189561 () Bool)

(assert (=> b!5114080 (= e!3189561 (>= (size!39473 input!5745) (size!39473 lt!2106633)))))

(declare-fun b!5114078 () Bool)

(declare-fun res!2176990 () Bool)

(assert (=> b!5114078 (=> (not res!2176990) (not e!3189562))))

(assert (=> b!5114078 (= res!2176990 (= (head!10895 lt!2106633) (head!10895 input!5745)))))

(declare-fun d!1652825 () Bool)

(assert (=> d!1652825 e!3189561))

(declare-fun res!2176988 () Bool)

(assert (=> d!1652825 (=> res!2176988 e!3189561)))

(declare-fun lt!2106753 () Bool)

(assert (=> d!1652825 (= res!2176988 (not lt!2106753))))

(assert (=> d!1652825 (= lt!2106753 e!3189563)))

(declare-fun res!2176989 () Bool)

(assert (=> d!1652825 (=> res!2176989 e!3189563)))

(assert (=> d!1652825 (= res!2176989 ((_ is Nil!59105) lt!2106633))))

(assert (=> d!1652825 (= (isPrefix!5572 lt!2106633 input!5745) lt!2106753)))

(assert (= (and d!1652825 (not res!2176989)) b!5114077))

(assert (= (and b!5114077 res!2176987) b!5114078))

(assert (= (and b!5114078 res!2176990) b!5114079))

(assert (= (and d!1652825 (not res!2176988)) b!5114080))

(declare-fun m!6172588 () Bool)

(assert (=> b!5114079 m!6172588))

(assert (=> b!5114079 m!6172322))

(assert (=> b!5114079 m!6172588))

(assert (=> b!5114079 m!6172322))

(declare-fun m!6172590 () Bool)

(assert (=> b!5114079 m!6172590))

(assert (=> b!5114080 m!6172290))

(assert (=> b!5114080 m!6172528))

(declare-fun m!6172592 () Bool)

(assert (=> b!5114078 m!6172592))

(assert (=> b!5114078 m!6172328))

(assert (=> b!5113871 d!1652825))

(declare-fun b!5114082 () Bool)

(declare-fun e!3189564 () List!59229)

(assert (=> b!5114082 (= e!3189564 (Cons!59105 (h!65553 knownP!20) (++!12992 (t!372232 knownP!20) lt!2106634)))))

(declare-fun d!1652827 () Bool)

(declare-fun e!3189565 () Bool)

(assert (=> d!1652827 e!3189565))

(declare-fun res!2176992 () Bool)

(assert (=> d!1652827 (=> (not res!2176992) (not e!3189565))))

(declare-fun lt!2106754 () List!59229)

(assert (=> d!1652827 (= res!2176992 (= (content!10507 lt!2106754) ((_ map or) (content!10507 knownP!20) (content!10507 lt!2106634))))))

(assert (=> d!1652827 (= lt!2106754 e!3189564)))

(declare-fun c!878715 () Bool)

(assert (=> d!1652827 (= c!878715 ((_ is Nil!59105) knownP!20))))

(assert (=> d!1652827 (= (++!12992 knownP!20 lt!2106634) lt!2106754)))

(declare-fun b!5114081 () Bool)

(assert (=> b!5114081 (= e!3189564 lt!2106634)))

(declare-fun b!5114083 () Bool)

(declare-fun res!2176991 () Bool)

(assert (=> b!5114083 (=> (not res!2176991) (not e!3189565))))

(assert (=> b!5114083 (= res!2176991 (= (size!39473 lt!2106754) (+ (size!39473 knownP!20) (size!39473 lt!2106634))))))

(declare-fun b!5114084 () Bool)

(assert (=> b!5114084 (= e!3189565 (or (not (= lt!2106634 Nil!59105)) (= lt!2106754 knownP!20)))))

(assert (= (and d!1652827 c!878715) b!5114081))

(assert (= (and d!1652827 (not c!878715)) b!5114082))

(assert (= (and d!1652827 res!2176992) b!5114083))

(assert (= (and b!5114083 res!2176991) b!5114084))

(declare-fun m!6172594 () Bool)

(assert (=> b!5114082 m!6172594))

(declare-fun m!6172596 () Bool)

(assert (=> d!1652827 m!6172596))

(declare-fun m!6172598 () Bool)

(assert (=> d!1652827 m!6172598))

(declare-fun m!6172600 () Bool)

(assert (=> d!1652827 m!6172600))

(declare-fun m!6172602 () Bool)

(assert (=> b!5114083 m!6172602))

(assert (=> b!5114083 m!6172284))

(declare-fun m!6172604 () Bool)

(assert (=> b!5114083 m!6172604))

(assert (=> b!5113871 d!1652827))

(declare-fun d!1652829 () Bool)

(assert (=> d!1652829 (= (derivationZipper!66 baseZ!46 (++!12992 testedP!265 (Cons!59105 lt!2106638 Nil!59105))) (derivationStepZipper!802 z!4463 lt!2106638))))

(declare-fun lt!2106757 () Unit!150221)

(declare-fun choose!37534 ((InoxSet Context!7102) (InoxSet Context!7102) List!59229 C!28600) Unit!150221)

(assert (=> d!1652829 (= lt!2106757 (choose!37534 baseZ!46 z!4463 testedP!265 lt!2106638))))

(assert (=> d!1652829 (= (derivationZipper!66 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1652829 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!27 baseZ!46 z!4463 testedP!265 lt!2106638) lt!2106757)))

(declare-fun bs!1192257 () Bool)

(assert (= bs!1192257 d!1652829))

(assert (=> bs!1192257 m!6172256))

(assert (=> bs!1192257 m!6172262))

(assert (=> bs!1192257 m!6172286))

(declare-fun m!6172606 () Bool)

(assert (=> bs!1192257 m!6172606))

(assert (=> bs!1192257 m!6172262))

(declare-fun m!6172608 () Bool)

(assert (=> bs!1192257 m!6172608))

(assert (=> b!5113871 d!1652829))

(declare-fun d!1652831 () Bool)

(declare-fun lt!2106758 () List!59229)

(assert (=> d!1652831 (= (++!12992 lt!2106633 lt!2106758) knownP!20)))

(declare-fun e!3189566 () List!59229)

(assert (=> d!1652831 (= lt!2106758 e!3189566)))

(declare-fun c!878717 () Bool)

(assert (=> d!1652831 (= c!878717 ((_ is Cons!59105) lt!2106633))))

(assert (=> d!1652831 (>= (size!39473 knownP!20) (size!39473 lt!2106633))))

(assert (=> d!1652831 (= (getSuffix!3246 knownP!20 lt!2106633) lt!2106758)))

(declare-fun b!5114085 () Bool)

(assert (=> b!5114085 (= e!3189566 (getSuffix!3246 (tail!10036 knownP!20) (t!372232 lt!2106633)))))

(declare-fun b!5114086 () Bool)

(assert (=> b!5114086 (= e!3189566 knownP!20)))

(assert (= (and d!1652831 c!878717) b!5114085))

(assert (= (and d!1652831 (not c!878717)) b!5114086))

(declare-fun m!6172610 () Bool)

(assert (=> d!1652831 m!6172610))

(assert (=> d!1652831 m!6172284))

(assert (=> d!1652831 m!6172528))

(assert (=> b!5114085 m!6172320))

(assert (=> b!5114085 m!6172320))

(declare-fun m!6172612 () Bool)

(assert (=> b!5114085 m!6172612))

(assert (=> b!5113871 d!1652831))

(declare-fun d!1652833 () Bool)

(declare-fun lt!2106759 () List!59229)

(assert (=> d!1652833 (= (++!12992 knownP!20 lt!2106759) input!5745)))

(declare-fun e!3189567 () List!59229)

(assert (=> d!1652833 (= lt!2106759 e!3189567)))

(declare-fun c!878718 () Bool)

(assert (=> d!1652833 (= c!878718 ((_ is Cons!59105) knownP!20))))

(assert (=> d!1652833 (>= (size!39473 input!5745) (size!39473 knownP!20))))

(assert (=> d!1652833 (= (getSuffix!3246 input!5745 knownP!20) lt!2106759)))

(declare-fun b!5114087 () Bool)

(assert (=> b!5114087 (= e!3189567 (getSuffix!3246 (tail!10036 input!5745) (t!372232 knownP!20)))))

(declare-fun b!5114088 () Bool)

(assert (=> b!5114088 (= e!3189567 input!5745)))

(assert (= (and d!1652833 c!878718) b!5114087))

(assert (= (and d!1652833 (not c!878718)) b!5114088))

(declare-fun m!6172614 () Bool)

(assert (=> d!1652833 m!6172614))

(assert (=> d!1652833 m!6172290))

(assert (=> d!1652833 m!6172284))

(assert (=> b!5114087 m!6172322))

(assert (=> b!5114087 m!6172322))

(declare-fun m!6172616 () Bool)

(assert (=> b!5114087 m!6172616))

(assert (=> b!5113871 d!1652833))

(declare-fun d!1652835 () Bool)

(assert (=> d!1652835 (isPrefix!5572 lt!2106633 knownP!20)))

(declare-fun lt!2106760 () Unit!150221)

(assert (=> d!1652835 (= lt!2106760 (choose!37533 knownP!20 lt!2106633 input!5745))))

(assert (=> d!1652835 (isPrefix!5572 knownP!20 input!5745)))

(assert (=> d!1652835 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!709 knownP!20 lt!2106633 input!5745) lt!2106760)))

(declare-fun bs!1192258 () Bool)

(assert (= bs!1192258 d!1652835))

(assert (=> bs!1192258 m!6172240))

(declare-fun m!6172618 () Bool)

(assert (=> bs!1192258 m!6172618))

(assert (=> bs!1192258 m!6172292))

(assert (=> b!5113871 d!1652835))

(declare-fun b!5114091 () Bool)

(declare-fun e!3189569 () Bool)

(assert (=> b!5114091 (= e!3189569 (isPrefix!5572 (tail!10036 lt!2106633) (tail!10036 knownP!20)))))

(declare-fun b!5114089 () Bool)

(declare-fun e!3189570 () Bool)

(assert (=> b!5114089 (= e!3189570 e!3189569)))

(declare-fun res!2176993 () Bool)

(assert (=> b!5114089 (=> (not res!2176993) (not e!3189569))))

(assert (=> b!5114089 (= res!2176993 (not ((_ is Nil!59105) knownP!20)))))

(declare-fun b!5114092 () Bool)

(declare-fun e!3189568 () Bool)

(assert (=> b!5114092 (= e!3189568 (>= (size!39473 knownP!20) (size!39473 lt!2106633)))))

(declare-fun b!5114090 () Bool)

(declare-fun res!2176996 () Bool)

(assert (=> b!5114090 (=> (not res!2176996) (not e!3189569))))

(assert (=> b!5114090 (= res!2176996 (= (head!10895 lt!2106633) (head!10895 knownP!20)))))

(declare-fun d!1652837 () Bool)

(assert (=> d!1652837 e!3189568))

(declare-fun res!2176994 () Bool)

(assert (=> d!1652837 (=> res!2176994 e!3189568)))

(declare-fun lt!2106761 () Bool)

(assert (=> d!1652837 (= res!2176994 (not lt!2106761))))

(assert (=> d!1652837 (= lt!2106761 e!3189570)))

(declare-fun res!2176995 () Bool)

(assert (=> d!1652837 (=> res!2176995 e!3189570)))

(assert (=> d!1652837 (= res!2176995 ((_ is Nil!59105) lt!2106633))))

(assert (=> d!1652837 (= (isPrefix!5572 lt!2106633 knownP!20) lt!2106761)))

(assert (= (and d!1652837 (not res!2176995)) b!5114089))

(assert (= (and b!5114089 res!2176993) b!5114090))

(assert (= (and b!5114090 res!2176996) b!5114091))

(assert (= (and d!1652837 (not res!2176994)) b!5114092))

(assert (=> b!5114091 m!6172588))

(assert (=> b!5114091 m!6172320))

(assert (=> b!5114091 m!6172588))

(assert (=> b!5114091 m!6172320))

(declare-fun m!6172620 () Bool)

(assert (=> b!5114091 m!6172620))

(assert (=> b!5114092 m!6172284))

(assert (=> b!5114092 m!6172528))

(assert (=> b!5114090 m!6172592))

(assert (=> b!5114090 m!6172326))

(assert (=> b!5113871 d!1652837))

(declare-fun d!1652839 () Bool)

(assert (=> d!1652839 true))

(declare-fun lambda!250701 () Int)

(declare-fun flatMap!338 ((InoxSet Context!7102) Int) (InoxSet Context!7102))

(assert (=> d!1652839 (= (derivationStepZipper!802 z!4463 lt!2106638) (flatMap!338 z!4463 lambda!250701))))

(declare-fun bs!1192259 () Bool)

(assert (= bs!1192259 d!1652839))

(declare-fun m!6172622 () Bool)

(assert (=> bs!1192259 m!6172622))

(assert (=> b!5113871 d!1652839))

(declare-fun d!1652841 () Bool)

(declare-fun c!878723 () Bool)

(assert (=> d!1652841 (= c!878723 ((_ is Cons!59105) lt!2106633))))

(declare-fun e!3189573 () (InoxSet Context!7102))

(assert (=> d!1652841 (= (derivationZipper!66 baseZ!46 lt!2106633) e!3189573)))

(declare-fun b!5114099 () Bool)

(assert (=> b!5114099 (= e!3189573 (derivationZipper!66 (derivationStepZipper!802 baseZ!46 (h!65553 lt!2106633)) (t!372232 lt!2106633)))))

(declare-fun b!5114100 () Bool)

(assert (=> b!5114100 (= e!3189573 baseZ!46)))

(assert (= (and d!1652841 c!878723) b!5114099))

(assert (= (and d!1652841 (not c!878723)) b!5114100))

(declare-fun m!6172624 () Bool)

(assert (=> b!5114099 m!6172624))

(assert (=> b!5114099 m!6172624))

(declare-fun m!6172626 () Bool)

(assert (=> b!5114099 m!6172626))

(assert (=> b!5113871 d!1652841))

(declare-fun b!5114102 () Bool)

(declare-fun e!3189574 () List!59229)

(assert (=> b!5114102 (= e!3189574 (Cons!59105 (h!65553 testedP!265) (++!12992 (t!372232 testedP!265) (Cons!59105 lt!2106638 Nil!59105))))))

(declare-fun d!1652843 () Bool)

(declare-fun e!3189575 () Bool)

(assert (=> d!1652843 e!3189575))

(declare-fun res!2176998 () Bool)

(assert (=> d!1652843 (=> (not res!2176998) (not e!3189575))))

(declare-fun lt!2106762 () List!59229)

(assert (=> d!1652843 (= res!2176998 (= (content!10507 lt!2106762) ((_ map or) (content!10507 testedP!265) (content!10507 (Cons!59105 lt!2106638 Nil!59105)))))))

(assert (=> d!1652843 (= lt!2106762 e!3189574)))

(declare-fun c!878724 () Bool)

(assert (=> d!1652843 (= c!878724 ((_ is Nil!59105) testedP!265))))

(assert (=> d!1652843 (= (++!12992 testedP!265 (Cons!59105 lt!2106638 Nil!59105)) lt!2106762)))

(declare-fun b!5114101 () Bool)

(assert (=> b!5114101 (= e!3189574 (Cons!59105 lt!2106638 Nil!59105))))

(declare-fun b!5114103 () Bool)

(declare-fun res!2176997 () Bool)

(assert (=> b!5114103 (=> (not res!2176997) (not e!3189575))))

(assert (=> b!5114103 (= res!2176997 (= (size!39473 lt!2106762) (+ (size!39473 testedP!265) (size!39473 (Cons!59105 lt!2106638 Nil!59105)))))))

(declare-fun b!5114104 () Bool)

(assert (=> b!5114104 (= e!3189575 (or (not (= (Cons!59105 lt!2106638 Nil!59105) Nil!59105)) (= lt!2106762 testedP!265)))))

(assert (= (and d!1652843 c!878724) b!5114101))

(assert (= (and d!1652843 (not c!878724)) b!5114102))

(assert (= (and d!1652843 res!2176998) b!5114103))

(assert (= (and b!5114103 res!2176997) b!5114104))

(declare-fun m!6172628 () Bool)

(assert (=> b!5114102 m!6172628))

(declare-fun m!6172630 () Bool)

(assert (=> d!1652843 m!6172630))

(assert (=> d!1652843 m!6172542))

(declare-fun m!6172632 () Bool)

(assert (=> d!1652843 m!6172632))

(declare-fun m!6172634 () Bool)

(assert (=> b!5114103 m!6172634))

(assert (=> b!5114103 m!6172282))

(declare-fun m!6172636 () Bool)

(assert (=> b!5114103 m!6172636))

(assert (=> b!5113871 d!1652843))

(declare-fun d!1652845 () Bool)

(assert (=> d!1652845 (= (head!10895 lt!2106630) (h!65553 lt!2106630))))

(assert (=> b!5113871 d!1652845))

(declare-fun d!1652847 () Bool)

(assert (=> d!1652847 (isPrefix!5572 (++!12992 testedP!265 (Cons!59105 (head!10895 (getSuffix!3246 input!5745 testedP!265)) Nil!59105)) input!5745)))

(declare-fun lt!2106765 () Unit!150221)

(declare-fun choose!37535 (List!59229 List!59229) Unit!150221)

(assert (=> d!1652847 (= lt!2106765 (choose!37535 testedP!265 input!5745))))

(assert (=> d!1652847 (isPrefix!5572 testedP!265 input!5745)))

(assert (=> d!1652847 (= (lemmaAddHeadSuffixToPrefixStillPrefix!962 testedP!265 input!5745) lt!2106765)))

(declare-fun bs!1192260 () Bool)

(assert (= bs!1192260 d!1652847))

(declare-fun m!6172638 () Bool)

(assert (=> bs!1192260 m!6172638))

(declare-fun m!6172640 () Bool)

(assert (=> bs!1192260 m!6172640))

(assert (=> bs!1192260 m!6172238))

(assert (=> bs!1192260 m!6172238))

(declare-fun m!6172642 () Bool)

(assert (=> bs!1192260 m!6172642))

(assert (=> bs!1192260 m!6172268))

(assert (=> bs!1192260 m!6172638))

(declare-fun m!6172644 () Bool)

(assert (=> bs!1192260 m!6172644))

(assert (=> b!5113871 d!1652847))

(declare-fun bs!1192261 () Bool)

(declare-fun d!1652849 () Bool)

(assert (= bs!1192261 (and d!1652849 d!1652729)))

(declare-fun lambda!250702 () Int)

(assert (=> bs!1192261 (= lambda!250702 lambda!250683)))

(assert (=> d!1652849 (= (inv!78598 setElem!29942) (forall!13563 (exprs!4051 setElem!29942) lambda!250702))))

(declare-fun bs!1192262 () Bool)

(assert (= bs!1192262 d!1652849))

(declare-fun m!6172646 () Bool)

(assert (=> bs!1192262 m!6172646))

(assert (=> setNonEmpty!29941 d!1652849))

(declare-fun b!5114106 () Bool)

(declare-fun e!3189576 () List!59229)

(assert (=> b!5114106 (= e!3189576 (Cons!59105 (h!65553 lt!2106627) (++!12992 (t!372232 lt!2106627) lt!2106634)))))

(declare-fun d!1652851 () Bool)

(declare-fun e!3189577 () Bool)

(assert (=> d!1652851 e!3189577))

(declare-fun res!2177000 () Bool)

(assert (=> d!1652851 (=> (not res!2177000) (not e!3189577))))

(declare-fun lt!2106766 () List!59229)

(assert (=> d!1652851 (= res!2177000 (= (content!10507 lt!2106766) ((_ map or) (content!10507 lt!2106627) (content!10507 lt!2106634))))))

(assert (=> d!1652851 (= lt!2106766 e!3189576)))

(declare-fun c!878725 () Bool)

(assert (=> d!1652851 (= c!878725 ((_ is Nil!59105) lt!2106627))))

(assert (=> d!1652851 (= (++!12992 lt!2106627 lt!2106634) lt!2106766)))

(declare-fun b!5114105 () Bool)

(assert (=> b!5114105 (= e!3189576 lt!2106634)))

(declare-fun b!5114107 () Bool)

(declare-fun res!2176999 () Bool)

(assert (=> b!5114107 (=> (not res!2176999) (not e!3189577))))

(assert (=> b!5114107 (= res!2176999 (= (size!39473 lt!2106766) (+ (size!39473 lt!2106627) (size!39473 lt!2106634))))))

(declare-fun b!5114108 () Bool)

(assert (=> b!5114108 (= e!3189577 (or (not (= lt!2106634 Nil!59105)) (= lt!2106766 lt!2106627)))))

(assert (= (and d!1652851 c!878725) b!5114105))

(assert (= (and d!1652851 (not c!878725)) b!5114106))

(assert (= (and d!1652851 res!2177000) b!5114107))

(assert (= (and b!5114107 res!2176999) b!5114108))

(declare-fun m!6172648 () Bool)

(assert (=> b!5114106 m!6172648))

(declare-fun m!6172650 () Bool)

(assert (=> d!1652851 m!6172650))

(declare-fun m!6172652 () Bool)

(assert (=> d!1652851 m!6172652))

(assert (=> d!1652851 m!6172600))

(declare-fun m!6172654 () Bool)

(assert (=> b!5114107 m!6172654))

(declare-fun m!6172656 () Bool)

(assert (=> b!5114107 m!6172656))

(assert (=> b!5114107 m!6172604))

(assert (=> b!5113879 d!1652851))

(declare-fun b!5114110 () Bool)

(declare-fun e!3189578 () List!59229)

(assert (=> b!5114110 (= e!3189578 (Cons!59105 (h!65553 testedP!265) (++!12992 (t!372232 testedP!265) lt!2106628)))))

(declare-fun d!1652853 () Bool)

(declare-fun e!3189579 () Bool)

(assert (=> d!1652853 e!3189579))

(declare-fun res!2177002 () Bool)

(assert (=> d!1652853 (=> (not res!2177002) (not e!3189579))))

(declare-fun lt!2106767 () List!59229)

(assert (=> d!1652853 (= res!2177002 (= (content!10507 lt!2106767) ((_ map or) (content!10507 testedP!265) (content!10507 lt!2106628))))))

(assert (=> d!1652853 (= lt!2106767 e!3189578)))

(declare-fun c!878726 () Bool)

(assert (=> d!1652853 (= c!878726 ((_ is Nil!59105) testedP!265))))

(assert (=> d!1652853 (= (++!12992 testedP!265 lt!2106628) lt!2106767)))

(declare-fun b!5114109 () Bool)

(assert (=> b!5114109 (= e!3189578 lt!2106628)))

(declare-fun b!5114111 () Bool)

(declare-fun res!2177001 () Bool)

(assert (=> b!5114111 (=> (not res!2177001) (not e!3189579))))

(assert (=> b!5114111 (= res!2177001 (= (size!39473 lt!2106767) (+ (size!39473 testedP!265) (size!39473 lt!2106628))))))

(declare-fun b!5114112 () Bool)

(assert (=> b!5114112 (= e!3189579 (or (not (= lt!2106628 Nil!59105)) (= lt!2106767 testedP!265)))))

(assert (= (and d!1652853 c!878726) b!5114109))

(assert (= (and d!1652853 (not c!878726)) b!5114110))

(assert (= (and d!1652853 res!2177002) b!5114111))

(assert (= (and b!5114111 res!2177001) b!5114112))

(declare-fun m!6172658 () Bool)

(assert (=> b!5114110 m!6172658))

(declare-fun m!6172660 () Bool)

(assert (=> d!1652853 m!6172660))

(assert (=> d!1652853 m!6172542))

(declare-fun m!6172662 () Bool)

(assert (=> d!1652853 m!6172662))

(declare-fun m!6172664 () Bool)

(assert (=> b!5114111 m!6172664))

(assert (=> b!5114111 m!6172282))

(declare-fun m!6172666 () Bool)

(assert (=> b!5114111 m!6172666))

(assert (=> b!5113879 d!1652853))

(declare-fun d!1652855 () Bool)

(declare-fun lt!2106768 () Int)

(assert (=> d!1652855 (>= lt!2106768 0)))

(declare-fun e!3189580 () Int)

(assert (=> d!1652855 (= lt!2106768 e!3189580)))

(declare-fun c!878727 () Bool)

(assert (=> d!1652855 (= c!878727 ((_ is Nil!59105) testedP!265))))

(assert (=> d!1652855 (= (size!39473 testedP!265) lt!2106768)))

(declare-fun b!5114113 () Bool)

(assert (=> b!5114113 (= e!3189580 0)))

(declare-fun b!5114114 () Bool)

(assert (=> b!5114114 (= e!3189580 (+ 1 (size!39473 (t!372232 testedP!265))))))

(assert (= (and d!1652855 c!878727) b!5114113))

(assert (= (and d!1652855 (not c!878727)) b!5114114))

(declare-fun m!6172668 () Bool)

(assert (=> b!5114114 m!6172668))

(assert (=> b!5113867 d!1652855))

(declare-fun d!1652857 () Bool)

(declare-fun lt!2106769 () Int)

(assert (=> d!1652857 (>= lt!2106769 0)))

(declare-fun e!3189581 () Int)

(assert (=> d!1652857 (= lt!2106769 e!3189581)))

(declare-fun c!878728 () Bool)

(assert (=> d!1652857 (= c!878728 ((_ is Nil!59105) knownP!20))))

(assert (=> d!1652857 (= (size!39473 knownP!20) lt!2106769)))

(declare-fun b!5114115 () Bool)

(assert (=> b!5114115 (= e!3189581 0)))

(declare-fun b!5114116 () Bool)

(assert (=> b!5114116 (= e!3189581 (+ 1 (size!39473 (t!372232 knownP!20))))))

(assert (= (and d!1652857 c!878728) b!5114115))

(assert (= (and d!1652857 (not c!878728)) b!5114116))

(declare-fun m!6172670 () Bool)

(assert (=> b!5114116 m!6172670))

(assert (=> b!5113867 d!1652857))

(declare-fun d!1652859 () Bool)

(declare-fun c!878729 () Bool)

(assert (=> d!1652859 (= c!878729 ((_ is Cons!59105) testedP!265))))

(declare-fun e!3189582 () (InoxSet Context!7102))

(assert (=> d!1652859 (= (derivationZipper!66 baseZ!46 testedP!265) e!3189582)))

(declare-fun b!5114117 () Bool)

(assert (=> b!5114117 (= e!3189582 (derivationZipper!66 (derivationStepZipper!802 baseZ!46 (h!65553 testedP!265)) (t!372232 testedP!265)))))

(declare-fun b!5114118 () Bool)

(assert (=> b!5114118 (= e!3189582 baseZ!46)))

(assert (= (and d!1652859 c!878729) b!5114117))

(assert (= (and d!1652859 (not c!878729)) b!5114118))

(declare-fun m!6172672 () Bool)

(assert (=> b!5114117 m!6172672))

(assert (=> b!5114117 m!6172672))

(declare-fun m!6172674 () Bool)

(assert (=> b!5114117 m!6172674))

(assert (=> b!5113876 d!1652859))

(declare-fun b!5114120 () Bool)

(declare-fun e!3189583 () List!59229)

(assert (=> b!5114120 (= e!3189583 (Cons!59105 (h!65553 testedP!265) (++!12992 (t!372232 testedP!265) lt!2106635)))))

(declare-fun d!1652861 () Bool)

(declare-fun e!3189584 () Bool)

(assert (=> d!1652861 e!3189584))

(declare-fun res!2177004 () Bool)

(assert (=> d!1652861 (=> (not res!2177004) (not e!3189584))))

(declare-fun lt!2106770 () List!59229)

(assert (=> d!1652861 (= res!2177004 (= (content!10507 lt!2106770) ((_ map or) (content!10507 testedP!265) (content!10507 lt!2106635))))))

(assert (=> d!1652861 (= lt!2106770 e!3189583)))

(declare-fun c!878730 () Bool)

(assert (=> d!1652861 (= c!878730 ((_ is Nil!59105) testedP!265))))

(assert (=> d!1652861 (= (++!12992 testedP!265 lt!2106635) lt!2106770)))

(declare-fun b!5114119 () Bool)

(assert (=> b!5114119 (= e!3189583 lt!2106635)))

(declare-fun b!5114121 () Bool)

(declare-fun res!2177003 () Bool)

(assert (=> b!5114121 (=> (not res!2177003) (not e!3189584))))

(assert (=> b!5114121 (= res!2177003 (= (size!39473 lt!2106770) (+ (size!39473 testedP!265) (size!39473 lt!2106635))))))

(declare-fun b!5114122 () Bool)

(assert (=> b!5114122 (= e!3189584 (or (not (= lt!2106635 Nil!59105)) (= lt!2106770 testedP!265)))))

(assert (= (and d!1652861 c!878730) b!5114119))

(assert (= (and d!1652861 (not c!878730)) b!5114120))

(assert (= (and d!1652861 res!2177004) b!5114121))

(assert (= (and b!5114121 res!2177003) b!5114122))

(declare-fun m!6172676 () Bool)

(assert (=> b!5114120 m!6172676))

(declare-fun m!6172678 () Bool)

(assert (=> d!1652861 m!6172678))

(assert (=> d!1652861 m!6172542))

(declare-fun m!6172680 () Bool)

(assert (=> d!1652861 m!6172680))

(declare-fun m!6172682 () Bool)

(assert (=> b!5114121 m!6172682))

(assert (=> b!5114121 m!6172282))

(declare-fun m!6172684 () Bool)

(assert (=> b!5114121 m!6172684))

(assert (=> b!5113868 d!1652861))

(declare-fun b!5114124 () Bool)

(declare-fun e!3189585 () List!59229)

(assert (=> b!5114124 (= e!3189585 (Cons!59105 (h!65553 lt!2106628) (++!12992 (t!372232 lt!2106628) lt!2106634)))))

(declare-fun d!1652863 () Bool)

(declare-fun e!3189586 () Bool)

(assert (=> d!1652863 e!3189586))

(declare-fun res!2177006 () Bool)

(assert (=> d!1652863 (=> (not res!2177006) (not e!3189586))))

(declare-fun lt!2106771 () List!59229)

(assert (=> d!1652863 (= res!2177006 (= (content!10507 lt!2106771) ((_ map or) (content!10507 lt!2106628) (content!10507 lt!2106634))))))

(assert (=> d!1652863 (= lt!2106771 e!3189585)))

(declare-fun c!878731 () Bool)

(assert (=> d!1652863 (= c!878731 ((_ is Nil!59105) lt!2106628))))

(assert (=> d!1652863 (= (++!12992 lt!2106628 lt!2106634) lt!2106771)))

(declare-fun b!5114123 () Bool)

(assert (=> b!5114123 (= e!3189585 lt!2106634)))

(declare-fun b!5114125 () Bool)

(declare-fun res!2177005 () Bool)

(assert (=> b!5114125 (=> (not res!2177005) (not e!3189586))))

(assert (=> b!5114125 (= res!2177005 (= (size!39473 lt!2106771) (+ (size!39473 lt!2106628) (size!39473 lt!2106634))))))

(declare-fun b!5114126 () Bool)

(assert (=> b!5114126 (= e!3189586 (or (not (= lt!2106634 Nil!59105)) (= lt!2106771 lt!2106628)))))

(assert (= (and d!1652863 c!878731) b!5114123))

(assert (= (and d!1652863 (not c!878731)) b!5114124))

(assert (= (and d!1652863 res!2177006) b!5114125))

(assert (= (and b!5114125 res!2177005) b!5114126))

(declare-fun m!6172686 () Bool)

(assert (=> b!5114124 m!6172686))

(declare-fun m!6172688 () Bool)

(assert (=> d!1652863 m!6172688))

(assert (=> d!1652863 m!6172662))

(assert (=> d!1652863 m!6172600))

(declare-fun m!6172690 () Bool)

(assert (=> b!5114125 m!6172690))

(assert (=> b!5114125 m!6172666))

(assert (=> b!5114125 m!6172604))

(assert (=> b!5113868 d!1652863))

(declare-fun d!1652865 () Bool)

(assert (=> d!1652865 (= (++!12992 (++!12992 testedP!265 lt!2106628) lt!2106634) (++!12992 testedP!265 (++!12992 lt!2106628 lt!2106634)))))

(declare-fun lt!2106774 () Unit!150221)

(declare-fun choose!37536 (List!59229 List!59229 List!59229) Unit!150221)

(assert (=> d!1652865 (= lt!2106774 (choose!37536 testedP!265 lt!2106628 lt!2106634))))

(assert (=> d!1652865 (= (lemmaConcatAssociativity!2750 testedP!265 lt!2106628 lt!2106634) lt!2106774)))

(declare-fun bs!1192263 () Bool)

(assert (= bs!1192263 d!1652865))

(assert (=> bs!1192263 m!6172228))

(declare-fun m!6172692 () Bool)

(assert (=> bs!1192263 m!6172692))

(declare-fun m!6172694 () Bool)

(assert (=> bs!1192263 m!6172694))

(assert (=> bs!1192263 m!6172232))

(declare-fun m!6172696 () Bool)

(assert (=> bs!1192263 m!6172696))

(assert (=> bs!1192263 m!6172232))

(assert (=> bs!1192263 m!6172228))

(assert (=> b!5113868 d!1652865))

(declare-fun b!5114131 () Bool)

(declare-fun e!3189589 () Bool)

(declare-fun tp!1426835 () Bool)

(declare-fun tp!1426836 () Bool)

(assert (=> b!5114131 (= e!3189589 (and tp!1426835 tp!1426836))))

(assert (=> b!5113865 (= tp!1426809 e!3189589)))

(assert (= (and b!5113865 ((_ is Cons!59106) (exprs!4051 setElem!29941))) b!5114131))

(declare-fun condSetEmpty!29949 () Bool)

(assert (=> setNonEmpty!29942 (= condSetEmpty!29949 (= setRest!29941 ((as const (Array Context!7102 Bool)) false)))))

(declare-fun setRes!29949 () Bool)

(assert (=> setNonEmpty!29942 (= tp!1426806 setRes!29949)))

(declare-fun setIsEmpty!29949 () Bool)

(assert (=> setIsEmpty!29949 setRes!29949))

(declare-fun setNonEmpty!29949 () Bool)

(declare-fun tp!1426842 () Bool)

(declare-fun setElem!29949 () Context!7102)

(declare-fun e!3189592 () Bool)

(assert (=> setNonEmpty!29949 (= setRes!29949 (and tp!1426842 (inv!78598 setElem!29949) e!3189592))))

(declare-fun setRest!29949 () (InoxSet Context!7102))

(assert (=> setNonEmpty!29949 (= setRest!29941 ((_ map or) (store ((as const (Array Context!7102 Bool)) false) setElem!29949 true) setRest!29949))))

(declare-fun b!5114136 () Bool)

(declare-fun tp!1426841 () Bool)

(assert (=> b!5114136 (= e!3189592 tp!1426841)))

(assert (= (and setNonEmpty!29942 condSetEmpty!29949) setIsEmpty!29949))

(assert (= (and setNonEmpty!29942 (not condSetEmpty!29949)) setNonEmpty!29949))

(assert (= setNonEmpty!29949 b!5114136))

(declare-fun m!6172698 () Bool)

(assert (=> setNonEmpty!29949 m!6172698))

(declare-fun condSetEmpty!29950 () Bool)

(assert (=> setNonEmpty!29941 (= condSetEmpty!29950 (= setRest!29942 ((as const (Array Context!7102 Bool)) false)))))

(declare-fun setRes!29950 () Bool)

(assert (=> setNonEmpty!29941 (= tp!1426805 setRes!29950)))

(declare-fun setIsEmpty!29950 () Bool)

(assert (=> setIsEmpty!29950 setRes!29950))

(declare-fun e!3189593 () Bool)

(declare-fun tp!1426844 () Bool)

(declare-fun setNonEmpty!29950 () Bool)

(declare-fun setElem!29950 () Context!7102)

(assert (=> setNonEmpty!29950 (= setRes!29950 (and tp!1426844 (inv!78598 setElem!29950) e!3189593))))

(declare-fun setRest!29950 () (InoxSet Context!7102))

(assert (=> setNonEmpty!29950 (= setRest!29942 ((_ map or) (store ((as const (Array Context!7102 Bool)) false) setElem!29950 true) setRest!29950))))

(declare-fun b!5114137 () Bool)

(declare-fun tp!1426843 () Bool)

(assert (=> b!5114137 (= e!3189593 tp!1426843)))

(assert (= (and setNonEmpty!29941 condSetEmpty!29950) setIsEmpty!29950))

(assert (= (and setNonEmpty!29941 (not condSetEmpty!29950)) setNonEmpty!29950))

(assert (= setNonEmpty!29950 b!5114137))

(declare-fun m!6172700 () Bool)

(assert (=> setNonEmpty!29950 m!6172700))

(declare-fun b!5114138 () Bool)

(declare-fun e!3189594 () Bool)

(declare-fun tp!1426845 () Bool)

(declare-fun tp!1426846 () Bool)

(assert (=> b!5114138 (= e!3189594 (and tp!1426845 tp!1426846))))

(assert (=> b!5113872 (= tp!1426803 e!3189594)))

(assert (= (and b!5113872 ((_ is Cons!59106) (exprs!4051 setElem!29942))) b!5114138))

(declare-fun b!5114143 () Bool)

(declare-fun e!3189597 () Bool)

(declare-fun tp!1426849 () Bool)

(assert (=> b!5114143 (= e!3189597 (and tp_is_empty!37607 tp!1426849))))

(assert (=> b!5113858 (= tp!1426808 e!3189597)))

(assert (= (and b!5113858 ((_ is Cons!59105) (t!372232 input!5745))) b!5114143))

(declare-fun b!5114144 () Bool)

(declare-fun e!3189598 () Bool)

(declare-fun tp!1426850 () Bool)

(assert (=> b!5114144 (= e!3189598 (and tp_is_empty!37607 tp!1426850))))

(assert (=> b!5113869 (= tp!1426807 e!3189598)))

(assert (= (and b!5113869 ((_ is Cons!59105) (t!372232 knownP!20))) b!5114144))

(declare-fun b!5114145 () Bool)

(declare-fun e!3189599 () Bool)

(declare-fun tp!1426851 () Bool)

(assert (=> b!5114145 (= e!3189599 (and tp_is_empty!37607 tp!1426851))))

(assert (=> b!5113859 (= tp!1426804 e!3189599)))

(assert (= (and b!5113859 ((_ is Cons!59105) (t!372232 testedP!265))) b!5114145))

(check-sat (not d!1652829) (not d!1652851) (not b!5114078) (not b!5113905) (not b!5114117) (not bm!356467) (not d!1652843) (not b!5114110) (not setNonEmpty!29949) (not b!5114111) (not b!5114040) (not b!5114114) (not b!5114044) tp_is_empty!37607 (not d!1652813) (not b!5114138) (not b!5114137) (not b!5114046) (not b!5114064) (not b!5114085) (not b!5114087) (not d!1652823) (not d!1652863) (not b!5113906) (not b!5114143) (not b!5114063) (not b!5114145) (not d!1652835) (not b!5114099) (not bm!356468) (not b!5114045) (not d!1652729) (not b!5114041) (not d!1652797) (not d!1652847) (not d!1652839) (not b!5114049) (not d!1652801) (not d!1652853) (not d!1652833) (not b!5114116) (not b!5114069) (not d!1652831) (not b!5114048) (not b!5114082) (not b!5114061) (not b!5114079) (not d!1652723) (not b!5114062) (not b!5114120) (not b!5114080) (not b!5114125) (not b!5114124) (not b!5114072) (not b!5114121) (not b!5114102) (not b!5114074) (not d!1652861) (not b!5114106) (not b!5113930) (not d!1652817) (not b!5114083) (not b!5114103) (not d!1652827) (not b!5114092) (not b!5114075) (not b!5114107) (not b!5114091) (not d!1652807) (not d!1652815) (not b!5114131) (not d!1652865) (not d!1652821) (not setNonEmpty!29950) (not b!5114144) (not b!5114090) (not b!5114136) (not b!5114056) (not b!5113907) (not b!5113931) (not d!1652849) (not b!5114073))
(check-sat)
