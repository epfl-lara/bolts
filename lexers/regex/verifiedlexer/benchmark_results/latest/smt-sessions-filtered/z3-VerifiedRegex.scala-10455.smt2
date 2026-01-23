; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540056 () Bool)

(assert start!540056)

(declare-fun tp!1427898 () Bool)

(declare-fun setRes!30218 () Bool)

(declare-datatypes ((C!28668 0))(
  ( (C!28669 (val!23986 Int)) )
))
(declare-datatypes ((Regex!14201 0))(
  ( (ElementMatch!14201 (c!879379 C!28668)) (Concat!23046 (regOne!28914 Regex!14201) (regTwo!28914 Regex!14201)) (EmptyExpr!14201) (Star!14201 (reg!14530 Regex!14201)) (EmptyLang!14201) (Union!14201 (regOne!28915 Regex!14201) (regTwo!28915 Regex!14201)) )
))
(declare-datatypes ((List!59314 0))(
  ( (Nil!59190) (Cons!59190 (h!65638 Regex!14201) (t!372325 List!59314)) )
))
(declare-datatypes ((Context!7170 0))(
  ( (Context!7171 (exprs!4085 List!59314)) )
))
(declare-fun setElem!30217 () Context!7170)

(declare-fun setNonEmpty!30217 () Bool)

(declare-fun e!3191981 () Bool)

(declare-fun inv!78683 (Context!7170) Bool)

(assert (=> setNonEmpty!30217 (= setRes!30218 (and tp!1427898 (inv!78683 setElem!30217) e!3191981))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4463 () (InoxSet Context!7170))

(declare-fun setRest!30218 () (InoxSet Context!7170))

(assert (=> setNonEmpty!30217 (= z!4463 ((_ map or) (store ((as const (Array Context!7170 Bool)) false) setElem!30217 true) setRest!30218))))

(declare-fun b!5117964 () Bool)

(declare-fun tp!1427900 () Bool)

(assert (=> b!5117964 (= e!3191981 tp!1427900)))

(declare-fun setElem!30218 () Context!7170)

(declare-fun setNonEmpty!30218 () Bool)

(declare-fun e!3191977 () Bool)

(declare-fun setRes!30217 () Bool)

(declare-fun tp!1427897 () Bool)

(assert (=> setNonEmpty!30218 (= setRes!30217 (and tp!1427897 (inv!78683 setElem!30218) e!3191977))))

(declare-fun baseZ!46 () (InoxSet Context!7170))

(declare-fun setRest!30217 () (InoxSet Context!7170))

(assert (=> setNonEmpty!30218 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7170 Bool)) false) setElem!30218 true) setRest!30217))))

(declare-fun b!5117965 () Bool)

(declare-fun e!3191979 () Bool)

(declare-fun e!3191982 () Bool)

(assert (=> b!5117965 (= e!3191979 (not e!3191982))))

(declare-fun res!2179101 () Bool)

(assert (=> b!5117965 (=> res!2179101 e!3191982)))

(declare-datatypes ((List!59315 0))(
  ( (Nil!59191) (Cons!59191 (h!65639 C!28668) (t!372326 List!59315)) )
))
(declare-fun lt!2109588 () List!59315)

(declare-fun matchZipper!869 ((InoxSet Context!7170) List!59315) Bool)

(assert (=> b!5117965 (= res!2179101 (not (matchZipper!869 z!4463 lt!2109588)))))

(declare-fun knownP!20 () List!59315)

(declare-fun testedP!265 () List!59315)

(declare-fun getSuffix!3280 (List!59315 List!59315) List!59315)

(assert (=> b!5117965 (= lt!2109588 (getSuffix!3280 knownP!20 testedP!265))))

(declare-fun isPrefix!5606 (List!59315 List!59315) Bool)

(assert (=> b!5117965 (isPrefix!5606 testedP!265 knownP!20)))

(declare-fun input!5745 () List!59315)

(declare-datatypes ((Unit!150323 0))(
  ( (Unit!150324) )
))
(declare-fun lt!2109590 () Unit!150323)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!743 (List!59315 List!59315 List!59315) Unit!150323)

(assert (=> b!5117965 (= lt!2109590 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!743 knownP!20 testedP!265 input!5745))))

(declare-fun b!5117966 () Bool)

(declare-fun e!3191983 () Bool)

(assert (=> b!5117966 (= e!3191982 e!3191983)))

(declare-fun res!2179104 () Bool)

(assert (=> b!5117966 (=> res!2179104 e!3191983)))

(declare-fun lt!2109576 () List!59315)

(declare-fun ++!13026 (List!59315 List!59315) List!59315)

(assert (=> b!5117966 (= res!2179104 (not (= (++!13026 knownP!20 lt!2109576) input!5745)))))

(assert (=> b!5117966 (= lt!2109576 (getSuffix!3280 input!5745 knownP!20))))

(declare-fun lt!2109591 () List!59315)

(declare-fun lt!2109589 () List!59315)

(assert (=> b!5117966 (= lt!2109591 (getSuffix!3280 knownP!20 lt!2109589))))

(assert (=> b!5117966 (isPrefix!5606 lt!2109589 knownP!20)))

(declare-fun lt!2109578 () Unit!150323)

(assert (=> b!5117966 (= lt!2109578 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!743 knownP!20 lt!2109589 input!5745))))

(declare-fun lt!2109583 () C!28668)

(declare-fun derivationZipper!100 ((InoxSet Context!7170) List!59315) (InoxSet Context!7170))

(declare-fun derivationStepZipper!836 ((InoxSet Context!7170) C!28668) (InoxSet Context!7170))

(assert (=> b!5117966 (= (derivationZipper!100 baseZ!46 lt!2109589) (derivationStepZipper!836 z!4463 lt!2109583))))

(declare-fun lt!2109582 () Unit!150323)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!57 ((InoxSet Context!7170) (InoxSet Context!7170) List!59315 C!28668) Unit!150323)

(assert (=> b!5117966 (= lt!2109582 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!57 baseZ!46 z!4463 testedP!265 lt!2109583))))

(assert (=> b!5117966 (isPrefix!5606 lt!2109589 input!5745)))

(declare-fun lt!2109577 () Unit!150323)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!992 (List!59315 List!59315) Unit!150323)

(assert (=> b!5117966 (= lt!2109577 (lemmaAddHeadSuffixToPrefixStillPrefix!992 testedP!265 input!5745))))

(assert (=> b!5117966 (= lt!2109589 (++!13026 testedP!265 (Cons!59191 lt!2109583 Nil!59191)))))

(declare-fun lt!2109584 () List!59315)

(declare-fun head!10929 (List!59315) C!28668)

(assert (=> b!5117966 (= lt!2109583 (head!10929 lt!2109584))))

(assert (=> b!5117966 (= lt!2109584 (getSuffix!3280 input!5745 testedP!265))))

(declare-fun b!5117967 () Bool)

(declare-fun res!2179095 () Bool)

(declare-fun e!3191978 () Bool)

(assert (=> b!5117967 (=> res!2179095 e!3191978)))

(assert (=> b!5117967 (= res!2179095 (not (= (++!13026 testedP!265 lt!2109584) input!5745)))))

(declare-fun b!5117968 () Bool)

(declare-fun res!2179099 () Bool)

(assert (=> b!5117968 (=> res!2179099 e!3191982)))

(declare-fun lostCauseZipper!1087 ((InoxSet Context!7170)) Bool)

(assert (=> b!5117968 (= res!2179099 (lostCauseZipper!1087 z!4463))))

(declare-fun b!5117969 () Bool)

(declare-fun e!3191980 () Bool)

(assert (=> b!5117969 (= e!3191978 e!3191980)))

(declare-fun res!2179097 () Bool)

(assert (=> b!5117969 (=> res!2179097 e!3191980)))

(declare-fun lt!2109592 () List!59315)

(assert (=> b!5117969 (= res!2179097 (not (= lt!2109592 input!5745)))))

(declare-fun lt!2109579 () List!59315)

(assert (=> b!5117969 (= lt!2109579 lt!2109592)))

(declare-fun lt!2109586 () List!59315)

(assert (=> b!5117969 (= lt!2109592 (++!13026 testedP!265 lt!2109586))))

(assert (=> b!5117969 (= lt!2109586 (++!13026 lt!2109588 lt!2109576))))

(declare-fun lt!2109581 () Unit!150323)

(declare-fun lemmaConcatAssociativity!2774 (List!59315 List!59315 List!59315) Unit!150323)

(assert (=> b!5117969 (= lt!2109581 (lemmaConcatAssociativity!2774 testedP!265 lt!2109588 lt!2109576))))

(declare-fun b!5117970 () Bool)

(declare-fun e!3191987 () Bool)

(declare-fun tp_is_empty!37675 () Bool)

(declare-fun tp!1427899 () Bool)

(assert (=> b!5117970 (= e!3191987 (and tp_is_empty!37675 tp!1427899))))

(declare-fun b!5117971 () Bool)

(declare-fun res!2179092 () Bool)

(declare-fun e!3191984 () Bool)

(assert (=> b!5117971 (=> (not res!2179092) (not e!3191984))))

(assert (=> b!5117971 (= res!2179092 (isPrefix!5606 knownP!20 input!5745))))

(declare-fun b!5117972 () Bool)

(assert (=> b!5117972 (= e!3191984 e!3191979)))

(declare-fun res!2179102 () Bool)

(assert (=> b!5117972 (=> (not res!2179102) (not e!3191979))))

(declare-fun lt!2109587 () Int)

(declare-fun lt!2109585 () Int)

(assert (=> b!5117972 (= res!2179102 (>= lt!2109587 lt!2109585))))

(declare-fun size!39507 (List!59315) Int)

(assert (=> b!5117972 (= lt!2109585 (size!39507 testedP!265))))

(assert (=> b!5117972 (= lt!2109587 (size!39507 knownP!20))))

(declare-fun b!5117973 () Bool)

(declare-fun tp!1427896 () Bool)

(assert (=> b!5117973 (= e!3191977 tp!1427896)))

(declare-fun b!5117974 () Bool)

(declare-fun res!2179096 () Bool)

(assert (=> b!5117974 (=> res!2179096 e!3191982)))

(assert (=> b!5117974 (= res!2179096 (>= lt!2109585 (size!39507 input!5745)))))

(declare-fun b!5117975 () Bool)

(declare-fun e!3191985 () Bool)

(declare-fun tp!1427901 () Bool)

(assert (=> b!5117975 (= e!3191985 (and tp_is_empty!37675 tp!1427901))))

(declare-fun setIsEmpty!30217 () Bool)

(assert (=> setIsEmpty!30217 setRes!30217))

(declare-fun setIsEmpty!30218 () Bool)

(assert (=> setIsEmpty!30218 setRes!30218))

(declare-fun res!2179093 () Bool)

(assert (=> start!540056 (=> (not res!2179093) (not e!3191984))))

(assert (=> start!540056 (= res!2179093 (isPrefix!5606 testedP!265 input!5745))))

(assert (=> start!540056 e!3191984))

(assert (=> start!540056 e!3191985))

(declare-fun condSetEmpty!30218 () Bool)

(assert (=> start!540056 (= condSetEmpty!30218 (= z!4463 ((as const (Array Context!7170 Bool)) false)))))

(assert (=> start!540056 setRes!30218))

(declare-fun e!3191986 () Bool)

(assert (=> start!540056 e!3191986))

(declare-fun condSetEmpty!30217 () Bool)

(assert (=> start!540056 (= condSetEmpty!30217 (= baseZ!46 ((as const (Array Context!7170 Bool)) false)))))

(assert (=> start!540056 setRes!30217))

(assert (=> start!540056 e!3191987))

(declare-fun b!5117976 () Bool)

(declare-fun tp!1427895 () Bool)

(assert (=> b!5117976 (= e!3191986 (and tp_is_empty!37675 tp!1427895))))

(declare-fun b!5117977 () Bool)

(declare-fun res!2179094 () Bool)

(assert (=> b!5117977 (=> res!2179094 e!3191982)))

(assert (=> b!5117977 (= res!2179094 (not (= (derivationZipper!100 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5117978 () Bool)

(assert (=> b!5117978 (= e!3191980 (= (head!10929 lt!2109588) lt!2109583))))

(assert (=> b!5117978 (= lt!2109586 lt!2109584)))

(declare-fun lt!2109580 () Unit!150323)

(declare-fun lemmaSamePrefixThenSameSuffix!2640 (List!59315 List!59315 List!59315 List!59315 List!59315) Unit!150323)

(assert (=> b!5117978 (= lt!2109580 (lemmaSamePrefixThenSameSuffix!2640 testedP!265 lt!2109586 testedP!265 lt!2109584 input!5745))))

(declare-fun b!5117979 () Bool)

(declare-fun res!2179103 () Bool)

(assert (=> b!5117979 (=> res!2179103 e!3191982)))

(assert (=> b!5117979 (= res!2179103 (= lt!2109585 lt!2109587))))

(declare-fun b!5117980 () Bool)

(assert (=> b!5117980 (= e!3191983 e!3191978)))

(declare-fun res!2179098 () Bool)

(assert (=> b!5117980 (=> res!2179098 e!3191978)))

(assert (=> b!5117980 (= res!2179098 (not (= lt!2109579 input!5745)))))

(assert (=> b!5117980 (= lt!2109579 (++!13026 (++!13026 testedP!265 lt!2109588) lt!2109576))))

(declare-fun b!5117981 () Bool)

(declare-fun res!2179100 () Bool)

(assert (=> b!5117981 (=> (not res!2179100) (not e!3191979))))

(assert (=> b!5117981 (= res!2179100 (matchZipper!869 baseZ!46 knownP!20))))

(assert (= (and start!540056 res!2179093) b!5117971))

(assert (= (and b!5117971 res!2179092) b!5117972))

(assert (= (and b!5117972 res!2179102) b!5117981))

(assert (= (and b!5117981 res!2179100) b!5117965))

(assert (= (and b!5117965 (not res!2179101)) b!5117977))

(assert (= (and b!5117977 (not res!2179094)) b!5117968))

(assert (= (and b!5117968 (not res!2179099)) b!5117979))

(assert (= (and b!5117979 (not res!2179103)) b!5117974))

(assert (= (and b!5117974 (not res!2179096)) b!5117966))

(assert (= (and b!5117966 (not res!2179104)) b!5117980))

(assert (= (and b!5117980 (not res!2179098)) b!5117967))

(assert (= (and b!5117967 (not res!2179095)) b!5117969))

(assert (= (and b!5117969 (not res!2179097)) b!5117978))

(get-info :version)

(assert (= (and start!540056 ((_ is Cons!59191) input!5745)) b!5117975))

(assert (= (and start!540056 condSetEmpty!30218) setIsEmpty!30218))

(assert (= (and start!540056 (not condSetEmpty!30218)) setNonEmpty!30217))

(assert (= setNonEmpty!30217 b!5117964))

(assert (= (and start!540056 ((_ is Cons!59191) testedP!265)) b!5117976))

(assert (= (and start!540056 condSetEmpty!30217) setIsEmpty!30217))

(assert (= (and start!540056 (not condSetEmpty!30217)) setNonEmpty!30218))

(assert (= setNonEmpty!30218 b!5117973))

(assert (= (and start!540056 ((_ is Cons!59191) knownP!20)) b!5117970))

(declare-fun m!6177804 () Bool)

(assert (=> b!5117965 m!6177804))

(declare-fun m!6177806 () Bool)

(assert (=> b!5117965 m!6177806))

(declare-fun m!6177808 () Bool)

(assert (=> b!5117965 m!6177808))

(declare-fun m!6177810 () Bool)

(assert (=> b!5117965 m!6177810))

(declare-fun m!6177812 () Bool)

(assert (=> b!5117972 m!6177812))

(declare-fun m!6177814 () Bool)

(assert (=> b!5117972 m!6177814))

(declare-fun m!6177816 () Bool)

(assert (=> b!5117967 m!6177816))

(declare-fun m!6177818 () Bool)

(assert (=> b!5117968 m!6177818))

(declare-fun m!6177820 () Bool)

(assert (=> b!5117980 m!6177820))

(assert (=> b!5117980 m!6177820))

(declare-fun m!6177822 () Bool)

(assert (=> b!5117980 m!6177822))

(declare-fun m!6177824 () Bool)

(assert (=> b!5117971 m!6177824))

(declare-fun m!6177826 () Bool)

(assert (=> start!540056 m!6177826))

(declare-fun m!6177828 () Bool)

(assert (=> b!5117966 m!6177828))

(declare-fun m!6177830 () Bool)

(assert (=> b!5117966 m!6177830))

(declare-fun m!6177832 () Bool)

(assert (=> b!5117966 m!6177832))

(declare-fun m!6177834 () Bool)

(assert (=> b!5117966 m!6177834))

(declare-fun m!6177836 () Bool)

(assert (=> b!5117966 m!6177836))

(declare-fun m!6177838 () Bool)

(assert (=> b!5117966 m!6177838))

(declare-fun m!6177840 () Bool)

(assert (=> b!5117966 m!6177840))

(declare-fun m!6177842 () Bool)

(assert (=> b!5117966 m!6177842))

(declare-fun m!6177844 () Bool)

(assert (=> b!5117966 m!6177844))

(declare-fun m!6177846 () Bool)

(assert (=> b!5117966 m!6177846))

(declare-fun m!6177848 () Bool)

(assert (=> b!5117966 m!6177848))

(declare-fun m!6177850 () Bool)

(assert (=> b!5117966 m!6177850))

(declare-fun m!6177852 () Bool)

(assert (=> b!5117966 m!6177852))

(declare-fun m!6177854 () Bool)

(assert (=> b!5117981 m!6177854))

(declare-fun m!6177856 () Bool)

(assert (=> b!5117974 m!6177856))

(declare-fun m!6177858 () Bool)

(assert (=> b!5117969 m!6177858))

(declare-fun m!6177860 () Bool)

(assert (=> b!5117969 m!6177860))

(declare-fun m!6177862 () Bool)

(assert (=> b!5117969 m!6177862))

(declare-fun m!6177864 () Bool)

(assert (=> b!5117977 m!6177864))

(declare-fun m!6177866 () Bool)

(assert (=> b!5117978 m!6177866))

(declare-fun m!6177868 () Bool)

(assert (=> b!5117978 m!6177868))

(declare-fun m!6177870 () Bool)

(assert (=> setNonEmpty!30218 m!6177870))

(declare-fun m!6177872 () Bool)

(assert (=> setNonEmpty!30217 m!6177872))

(check-sat (not b!5117972) (not b!5117977) (not setNonEmpty!30217) (not start!540056) (not b!5117967) (not b!5117965) (not b!5117970) (not b!5117973) (not b!5117981) (not b!5117971) (not b!5117968) (not setNonEmpty!30218) (not b!5117969) tp_is_empty!37675 (not b!5117974) (not b!5117978) (not b!5117980) (not b!5117976) (not b!5117966) (not b!5117964) (not b!5117975))
(check-sat)
(get-model)

(declare-fun b!5117991 () Bool)

(declare-fun e!3191993 () List!59315)

(assert (=> b!5117991 (= e!3191993 (Cons!59191 (h!65639 testedP!265) (++!13026 (t!372326 testedP!265) lt!2109586)))))

(declare-fun e!3191992 () Bool)

(declare-fun lt!2109595 () List!59315)

(declare-fun b!5117993 () Bool)

(assert (=> b!5117993 (= e!3191992 (or (not (= lt!2109586 Nil!59191)) (= lt!2109595 testedP!265)))))

(declare-fun b!5117992 () Bool)

(declare-fun res!2179109 () Bool)

(assert (=> b!5117992 (=> (not res!2179109) (not e!3191992))))

(assert (=> b!5117992 (= res!2179109 (= (size!39507 lt!2109595) (+ (size!39507 testedP!265) (size!39507 lt!2109586))))))

(declare-fun d!1653852 () Bool)

(assert (=> d!1653852 e!3191992))

(declare-fun res!2179110 () Bool)

(assert (=> d!1653852 (=> (not res!2179110) (not e!3191992))))

(declare-fun content!10522 (List!59315) (InoxSet C!28668))

(assert (=> d!1653852 (= res!2179110 (= (content!10522 lt!2109595) ((_ map or) (content!10522 testedP!265) (content!10522 lt!2109586))))))

(assert (=> d!1653852 (= lt!2109595 e!3191993)))

(declare-fun c!879382 () Bool)

(assert (=> d!1653852 (= c!879382 ((_ is Nil!59191) testedP!265))))

(assert (=> d!1653852 (= (++!13026 testedP!265 lt!2109586) lt!2109595)))

(declare-fun b!5117990 () Bool)

(assert (=> b!5117990 (= e!3191993 lt!2109586)))

(assert (= (and d!1653852 c!879382) b!5117990))

(assert (= (and d!1653852 (not c!879382)) b!5117991))

(assert (= (and d!1653852 res!2179110) b!5117992))

(assert (= (and b!5117992 res!2179109) b!5117993))

(declare-fun m!6177874 () Bool)

(assert (=> b!5117991 m!6177874))

(declare-fun m!6177876 () Bool)

(assert (=> b!5117992 m!6177876))

(assert (=> b!5117992 m!6177812))

(declare-fun m!6177878 () Bool)

(assert (=> b!5117992 m!6177878))

(declare-fun m!6177880 () Bool)

(assert (=> d!1653852 m!6177880))

(declare-fun m!6177882 () Bool)

(assert (=> d!1653852 m!6177882))

(declare-fun m!6177884 () Bool)

(assert (=> d!1653852 m!6177884))

(assert (=> b!5117969 d!1653852))

(declare-fun b!5117995 () Bool)

(declare-fun e!3191995 () List!59315)

(assert (=> b!5117995 (= e!3191995 (Cons!59191 (h!65639 lt!2109588) (++!13026 (t!372326 lt!2109588) lt!2109576)))))

(declare-fun b!5117997 () Bool)

(declare-fun lt!2109596 () List!59315)

(declare-fun e!3191994 () Bool)

(assert (=> b!5117997 (= e!3191994 (or (not (= lt!2109576 Nil!59191)) (= lt!2109596 lt!2109588)))))

(declare-fun b!5117996 () Bool)

(declare-fun res!2179111 () Bool)

(assert (=> b!5117996 (=> (not res!2179111) (not e!3191994))))

(assert (=> b!5117996 (= res!2179111 (= (size!39507 lt!2109596) (+ (size!39507 lt!2109588) (size!39507 lt!2109576))))))

(declare-fun d!1653854 () Bool)

(assert (=> d!1653854 e!3191994))

(declare-fun res!2179112 () Bool)

(assert (=> d!1653854 (=> (not res!2179112) (not e!3191994))))

(assert (=> d!1653854 (= res!2179112 (= (content!10522 lt!2109596) ((_ map or) (content!10522 lt!2109588) (content!10522 lt!2109576))))))

(assert (=> d!1653854 (= lt!2109596 e!3191995)))

(declare-fun c!879383 () Bool)

(assert (=> d!1653854 (= c!879383 ((_ is Nil!59191) lt!2109588))))

(assert (=> d!1653854 (= (++!13026 lt!2109588 lt!2109576) lt!2109596)))

(declare-fun b!5117994 () Bool)

(assert (=> b!5117994 (= e!3191995 lt!2109576)))

(assert (= (and d!1653854 c!879383) b!5117994))

(assert (= (and d!1653854 (not c!879383)) b!5117995))

(assert (= (and d!1653854 res!2179112) b!5117996))

(assert (= (and b!5117996 res!2179111) b!5117997))

(declare-fun m!6177886 () Bool)

(assert (=> b!5117995 m!6177886))

(declare-fun m!6177888 () Bool)

(assert (=> b!5117996 m!6177888))

(declare-fun m!6177890 () Bool)

(assert (=> b!5117996 m!6177890))

(declare-fun m!6177892 () Bool)

(assert (=> b!5117996 m!6177892))

(declare-fun m!6177894 () Bool)

(assert (=> d!1653854 m!6177894))

(declare-fun m!6177896 () Bool)

(assert (=> d!1653854 m!6177896))

(declare-fun m!6177898 () Bool)

(assert (=> d!1653854 m!6177898))

(assert (=> b!5117969 d!1653854))

(declare-fun d!1653856 () Bool)

(assert (=> d!1653856 (= (++!13026 (++!13026 testedP!265 lt!2109588) lt!2109576) (++!13026 testedP!265 (++!13026 lt!2109588 lt!2109576)))))

(declare-fun lt!2109599 () Unit!150323)

(declare-fun choose!37591 (List!59315 List!59315 List!59315) Unit!150323)

(assert (=> d!1653856 (= lt!2109599 (choose!37591 testedP!265 lt!2109588 lt!2109576))))

(assert (=> d!1653856 (= (lemmaConcatAssociativity!2774 testedP!265 lt!2109588 lt!2109576) lt!2109599)))

(declare-fun bs!1192482 () Bool)

(assert (= bs!1192482 d!1653856))

(declare-fun m!6177900 () Bool)

(assert (=> bs!1192482 m!6177900))

(assert (=> bs!1192482 m!6177820))

(assert (=> bs!1192482 m!6177822))

(assert (=> bs!1192482 m!6177860))

(declare-fun m!6177902 () Bool)

(assert (=> bs!1192482 m!6177902))

(assert (=> bs!1192482 m!6177820))

(assert (=> bs!1192482 m!6177860))

(assert (=> b!5117969 d!1653856))

(declare-fun bs!1192483 () Bool)

(declare-fun b!5118038 () Bool)

(declare-fun d!1653858 () Bool)

(assert (= bs!1192483 (and b!5118038 d!1653858)))

(declare-fun lambda!251056 () Int)

(declare-fun lambda!251055 () Int)

(assert (=> bs!1192483 (not (= lambda!251056 lambda!251055))))

(declare-fun bs!1192484 () Bool)

(declare-fun b!5118039 () Bool)

(assert (= bs!1192484 (and b!5118039 d!1653858)))

(declare-fun lambda!251057 () Int)

(assert (=> bs!1192484 (not (= lambda!251057 lambda!251055))))

(declare-fun bs!1192485 () Bool)

(assert (= bs!1192485 (and b!5118039 b!5118038)))

(assert (=> bs!1192485 (= lambda!251057 lambda!251056)))

(declare-fun call!356574 () Bool)

(declare-fun c!879403 () Bool)

(declare-fun bm!356570 () Bool)

(declare-datatypes ((List!59316 0))(
  ( (Nil!59192) (Cons!59192 (h!65640 Context!7170) (t!372327 List!59316)) )
))
(declare-fun lt!2109629 () List!59316)

(declare-fun lt!2109628 () List!59316)

(declare-fun exists!1467 (List!59316 Int) Bool)

(assert (=> bm!356570 (= call!356574 (exists!1467 (ite c!879403 lt!2109628 lt!2109629) (ite c!879403 lambda!251056 lambda!251057)))))

(declare-fun e!3192024 () Unit!150323)

(declare-fun Unit!150325 () Unit!150323)

(assert (=> b!5118038 (= e!3192024 Unit!150325)))

(declare-fun call!356575 () List!59316)

(assert (=> b!5118038 (= lt!2109628 call!356575)))

(declare-fun lt!2109627 () Unit!150323)

(declare-fun lemmaNotForallThenExists!330 (List!59316 Int) Unit!150323)

(assert (=> b!5118038 (= lt!2109627 (lemmaNotForallThenExists!330 lt!2109628 lambda!251055))))

(assert (=> b!5118038 call!356574))

(declare-fun lt!2109630 () Unit!150323)

(assert (=> b!5118038 (= lt!2109630 lt!2109627)))

(declare-fun lt!2109634 () Bool)

(declare-datatypes ((Option!14690 0))(
  ( (None!14689) (Some!14689 (v!50702 List!59315)) )
))
(declare-fun isEmpty!31920 (Option!14690) Bool)

(declare-fun getLanguageWitness!807 ((InoxSet Context!7170)) Option!14690)

(assert (=> d!1653858 (= lt!2109634 (isEmpty!31920 (getLanguageWitness!807 z!4463)))))

(declare-fun forall!13595 ((InoxSet Context!7170) Int) Bool)

(assert (=> d!1653858 (= lt!2109634 (forall!13595 z!4463 lambda!251055))))

(declare-fun lt!2109631 () Unit!150323)

(assert (=> d!1653858 (= lt!2109631 e!3192024)))

(assert (=> d!1653858 (= c!879403 (not (forall!13595 z!4463 lambda!251055)))))

(assert (=> d!1653858 (= (lostCauseZipper!1087 z!4463) lt!2109634)))

(declare-fun bm!356569 () Bool)

(declare-fun toList!8256 ((InoxSet Context!7170)) List!59316)

(assert (=> bm!356569 (= call!356575 (toList!8256 z!4463))))

(declare-fun Unit!150326 () Unit!150323)

(assert (=> b!5118039 (= e!3192024 Unit!150326)))

(assert (=> b!5118039 (= lt!2109629 call!356575)))

(declare-fun lt!2109633 () Unit!150323)

(declare-fun lemmaForallThenNotExists!313 (List!59316 Int) Unit!150323)

(assert (=> b!5118039 (= lt!2109633 (lemmaForallThenNotExists!313 lt!2109629 lambda!251055))))

(assert (=> b!5118039 (not call!356574)))

(declare-fun lt!2109632 () Unit!150323)

(assert (=> b!5118039 (= lt!2109632 lt!2109633)))

(assert (= (and d!1653858 c!879403) b!5118038))

(assert (= (and d!1653858 (not c!879403)) b!5118039))

(assert (= (or b!5118038 b!5118039) bm!356569))

(assert (= (or b!5118038 b!5118039) bm!356570))

(declare-fun m!6177942 () Bool)

(assert (=> bm!356569 m!6177942))

(declare-fun m!6177944 () Bool)

(assert (=> b!5118039 m!6177944))

(declare-fun m!6177946 () Bool)

(assert (=> b!5118038 m!6177946))

(declare-fun m!6177948 () Bool)

(assert (=> bm!356570 m!6177948))

(declare-fun m!6177950 () Bool)

(assert (=> d!1653858 m!6177950))

(assert (=> d!1653858 m!6177950))

(declare-fun m!6177952 () Bool)

(assert (=> d!1653858 m!6177952))

(declare-fun m!6177954 () Bool)

(assert (=> d!1653858 m!6177954))

(assert (=> d!1653858 m!6177954))

(assert (=> b!5117968 d!1653858))

(declare-fun d!1653874 () Bool)

(declare-fun c!879406 () Bool)

(assert (=> d!1653874 (= c!879406 ((_ is Cons!59191) testedP!265))))

(declare-fun e!3192027 () (InoxSet Context!7170))

(assert (=> d!1653874 (= (derivationZipper!100 baseZ!46 testedP!265) e!3192027)))

(declare-fun b!5118044 () Bool)

(assert (=> b!5118044 (= e!3192027 (derivationZipper!100 (derivationStepZipper!836 baseZ!46 (h!65639 testedP!265)) (t!372326 testedP!265)))))

(declare-fun b!5118045 () Bool)

(assert (=> b!5118045 (= e!3192027 baseZ!46)))

(assert (= (and d!1653874 c!879406) b!5118044))

(assert (= (and d!1653874 (not c!879406)) b!5118045))

(declare-fun m!6177956 () Bool)

(assert (=> b!5118044 m!6177956))

(assert (=> b!5118044 m!6177956))

(declare-fun m!6177958 () Bool)

(assert (=> b!5118044 m!6177958))

(assert (=> b!5117977 d!1653874))

(declare-fun b!5118047 () Bool)

(declare-fun e!3192029 () List!59315)

(assert (=> b!5118047 (= e!3192029 (Cons!59191 (h!65639 testedP!265) (++!13026 (t!372326 testedP!265) lt!2109584)))))

(declare-fun lt!2109635 () List!59315)

(declare-fun e!3192028 () Bool)

(declare-fun b!5118049 () Bool)

(assert (=> b!5118049 (= e!3192028 (or (not (= lt!2109584 Nil!59191)) (= lt!2109635 testedP!265)))))

(declare-fun b!5118048 () Bool)

(declare-fun res!2179135 () Bool)

(assert (=> b!5118048 (=> (not res!2179135) (not e!3192028))))

(assert (=> b!5118048 (= res!2179135 (= (size!39507 lt!2109635) (+ (size!39507 testedP!265) (size!39507 lt!2109584))))))

(declare-fun d!1653876 () Bool)

(assert (=> d!1653876 e!3192028))

(declare-fun res!2179136 () Bool)

(assert (=> d!1653876 (=> (not res!2179136) (not e!3192028))))

(assert (=> d!1653876 (= res!2179136 (= (content!10522 lt!2109635) ((_ map or) (content!10522 testedP!265) (content!10522 lt!2109584))))))

(assert (=> d!1653876 (= lt!2109635 e!3192029)))

(declare-fun c!879407 () Bool)

(assert (=> d!1653876 (= c!879407 ((_ is Nil!59191) testedP!265))))

(assert (=> d!1653876 (= (++!13026 testedP!265 lt!2109584) lt!2109635)))

(declare-fun b!5118046 () Bool)

(assert (=> b!5118046 (= e!3192029 lt!2109584)))

(assert (= (and d!1653876 c!879407) b!5118046))

(assert (= (and d!1653876 (not c!879407)) b!5118047))

(assert (= (and d!1653876 res!2179136) b!5118048))

(assert (= (and b!5118048 res!2179135) b!5118049))

(declare-fun m!6177960 () Bool)

(assert (=> b!5118047 m!6177960))

(declare-fun m!6177962 () Bool)

(assert (=> b!5118048 m!6177962))

(assert (=> b!5118048 m!6177812))

(declare-fun m!6177964 () Bool)

(assert (=> b!5118048 m!6177964))

(declare-fun m!6177966 () Bool)

(assert (=> d!1653876 m!6177966))

(assert (=> d!1653876 m!6177882))

(declare-fun m!6177968 () Bool)

(assert (=> d!1653876 m!6177968))

(assert (=> b!5117967 d!1653876))

(declare-fun d!1653878 () Bool)

(declare-fun lt!2109638 () List!59315)

(assert (=> d!1653878 (= (++!13026 testedP!265 lt!2109638) input!5745)))

(declare-fun e!3192032 () List!59315)

(assert (=> d!1653878 (= lt!2109638 e!3192032)))

(declare-fun c!879410 () Bool)

(assert (=> d!1653878 (= c!879410 ((_ is Cons!59191) testedP!265))))

(assert (=> d!1653878 (>= (size!39507 input!5745) (size!39507 testedP!265))))

(assert (=> d!1653878 (= (getSuffix!3280 input!5745 testedP!265) lt!2109638)))

(declare-fun b!5118054 () Bool)

(declare-fun tail!10065 (List!59315) List!59315)

(assert (=> b!5118054 (= e!3192032 (getSuffix!3280 (tail!10065 input!5745) (t!372326 testedP!265)))))

(declare-fun b!5118055 () Bool)

(assert (=> b!5118055 (= e!3192032 input!5745)))

(assert (= (and d!1653878 c!879410) b!5118054))

(assert (= (and d!1653878 (not c!879410)) b!5118055))

(declare-fun m!6177970 () Bool)

(assert (=> d!1653878 m!6177970))

(assert (=> d!1653878 m!6177856))

(assert (=> d!1653878 m!6177812))

(declare-fun m!6177972 () Bool)

(assert (=> b!5118054 m!6177972))

(assert (=> b!5118054 m!6177972))

(declare-fun m!6177974 () Bool)

(assert (=> b!5118054 m!6177974))

(assert (=> b!5117966 d!1653878))

(declare-fun d!1653880 () Bool)

(declare-fun c!879411 () Bool)

(assert (=> d!1653880 (= c!879411 ((_ is Cons!59191) lt!2109589))))

(declare-fun e!3192033 () (InoxSet Context!7170))

(assert (=> d!1653880 (= (derivationZipper!100 baseZ!46 lt!2109589) e!3192033)))

(declare-fun b!5118056 () Bool)

(assert (=> b!5118056 (= e!3192033 (derivationZipper!100 (derivationStepZipper!836 baseZ!46 (h!65639 lt!2109589)) (t!372326 lt!2109589)))))

(declare-fun b!5118057 () Bool)

(assert (=> b!5118057 (= e!3192033 baseZ!46)))

(assert (= (and d!1653880 c!879411) b!5118056))

(assert (= (and d!1653880 (not c!879411)) b!5118057))

(declare-fun m!6177976 () Bool)

(assert (=> b!5118056 m!6177976))

(assert (=> b!5118056 m!6177976))

(declare-fun m!6177978 () Bool)

(assert (=> b!5118056 m!6177978))

(assert (=> b!5117966 d!1653880))

(declare-fun b!5118068 () Bool)

(declare-fun e!3192041 () Bool)

(assert (=> b!5118068 (= e!3192041 (isPrefix!5606 (tail!10065 lt!2109589) (tail!10065 input!5745)))))

(declare-fun d!1653882 () Bool)

(declare-fun e!3192042 () Bool)

(assert (=> d!1653882 e!3192042))

(declare-fun res!2179147 () Bool)

(assert (=> d!1653882 (=> res!2179147 e!3192042)))

(declare-fun lt!2109641 () Bool)

(assert (=> d!1653882 (= res!2179147 (not lt!2109641))))

(declare-fun e!3192040 () Bool)

(assert (=> d!1653882 (= lt!2109641 e!3192040)))

(declare-fun res!2179146 () Bool)

(assert (=> d!1653882 (=> res!2179146 e!3192040)))

(assert (=> d!1653882 (= res!2179146 ((_ is Nil!59191) lt!2109589))))

(assert (=> d!1653882 (= (isPrefix!5606 lt!2109589 input!5745) lt!2109641)))

(declare-fun b!5118069 () Bool)

(assert (=> b!5118069 (= e!3192042 (>= (size!39507 input!5745) (size!39507 lt!2109589)))))

(declare-fun b!5118067 () Bool)

(declare-fun res!2179145 () Bool)

(assert (=> b!5118067 (=> (not res!2179145) (not e!3192041))))

(assert (=> b!5118067 (= res!2179145 (= (head!10929 lt!2109589) (head!10929 input!5745)))))

(declare-fun b!5118066 () Bool)

(assert (=> b!5118066 (= e!3192040 e!3192041)))

(declare-fun res!2179148 () Bool)

(assert (=> b!5118066 (=> (not res!2179148) (not e!3192041))))

(assert (=> b!5118066 (= res!2179148 (not ((_ is Nil!59191) input!5745)))))

(assert (= (and d!1653882 (not res!2179146)) b!5118066))

(assert (= (and b!5118066 res!2179148) b!5118067))

(assert (= (and b!5118067 res!2179145) b!5118068))

(assert (= (and d!1653882 (not res!2179147)) b!5118069))

(declare-fun m!6177980 () Bool)

(assert (=> b!5118068 m!6177980))

(assert (=> b!5118068 m!6177972))

(assert (=> b!5118068 m!6177980))

(assert (=> b!5118068 m!6177972))

(declare-fun m!6177982 () Bool)

(assert (=> b!5118068 m!6177982))

(assert (=> b!5118069 m!6177856))

(declare-fun m!6177984 () Bool)

(assert (=> b!5118069 m!6177984))

(declare-fun m!6177986 () Bool)

(assert (=> b!5118067 m!6177986))

(declare-fun m!6177988 () Bool)

(assert (=> b!5118067 m!6177988))

(assert (=> b!5117966 d!1653882))

(declare-fun d!1653884 () Bool)

(assert (=> d!1653884 (= (head!10929 lt!2109584) (h!65639 lt!2109584))))

(assert (=> b!5117966 d!1653884))

(declare-fun d!1653886 () Bool)

(assert (=> d!1653886 (isPrefix!5606 lt!2109589 knownP!20)))

(declare-fun lt!2109644 () Unit!150323)

(declare-fun choose!37592 (List!59315 List!59315 List!59315) Unit!150323)

(assert (=> d!1653886 (= lt!2109644 (choose!37592 knownP!20 lt!2109589 input!5745))))

(assert (=> d!1653886 (isPrefix!5606 knownP!20 input!5745)))

(assert (=> d!1653886 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!743 knownP!20 lt!2109589 input!5745) lt!2109644)))

(declare-fun bs!1192486 () Bool)

(assert (= bs!1192486 d!1653886))

(assert (=> bs!1192486 m!6177844))

(declare-fun m!6177990 () Bool)

(assert (=> bs!1192486 m!6177990))

(assert (=> bs!1192486 m!6177824))

(assert (=> b!5117966 d!1653886))

(declare-fun d!1653888 () Bool)

(assert (=> d!1653888 (isPrefix!5606 (++!13026 testedP!265 (Cons!59191 (head!10929 (getSuffix!3280 input!5745 testedP!265)) Nil!59191)) input!5745)))

(declare-fun lt!2109647 () Unit!150323)

(declare-fun choose!37593 (List!59315 List!59315) Unit!150323)

(assert (=> d!1653888 (= lt!2109647 (choose!37593 testedP!265 input!5745))))

(assert (=> d!1653888 (isPrefix!5606 testedP!265 input!5745)))

(assert (=> d!1653888 (= (lemmaAddHeadSuffixToPrefixStillPrefix!992 testedP!265 input!5745) lt!2109647)))

(declare-fun bs!1192487 () Bool)

(assert (= bs!1192487 d!1653888))

(declare-fun m!6177992 () Bool)

(assert (=> bs!1192487 m!6177992))

(declare-fun m!6177994 () Bool)

(assert (=> bs!1192487 m!6177994))

(assert (=> bs!1192487 m!6177994))

(declare-fun m!6177996 () Bool)

(assert (=> bs!1192487 m!6177996))

(assert (=> bs!1192487 m!6177828))

(declare-fun m!6177998 () Bool)

(assert (=> bs!1192487 m!6177998))

(assert (=> bs!1192487 m!6177826))

(assert (=> bs!1192487 m!6177828))

(assert (=> b!5117966 d!1653888))

(declare-fun d!1653890 () Bool)

(declare-fun lt!2109648 () List!59315)

(assert (=> d!1653890 (= (++!13026 knownP!20 lt!2109648) input!5745)))

(declare-fun e!3192043 () List!59315)

(assert (=> d!1653890 (= lt!2109648 e!3192043)))

(declare-fun c!879412 () Bool)

(assert (=> d!1653890 (= c!879412 ((_ is Cons!59191) knownP!20))))

(assert (=> d!1653890 (>= (size!39507 input!5745) (size!39507 knownP!20))))

(assert (=> d!1653890 (= (getSuffix!3280 input!5745 knownP!20) lt!2109648)))

(declare-fun b!5118070 () Bool)

(assert (=> b!5118070 (= e!3192043 (getSuffix!3280 (tail!10065 input!5745) (t!372326 knownP!20)))))

(declare-fun b!5118071 () Bool)

(assert (=> b!5118071 (= e!3192043 input!5745)))

(assert (= (and d!1653890 c!879412) b!5118070))

(assert (= (and d!1653890 (not c!879412)) b!5118071))

(declare-fun m!6178000 () Bool)

(assert (=> d!1653890 m!6178000))

(assert (=> d!1653890 m!6177856))

(assert (=> d!1653890 m!6177814))

(assert (=> b!5118070 m!6177972))

(assert (=> b!5118070 m!6177972))

(declare-fun m!6178002 () Bool)

(assert (=> b!5118070 m!6178002))

(assert (=> b!5117966 d!1653890))

(declare-fun b!5118073 () Bool)

(declare-fun e!3192045 () List!59315)

(assert (=> b!5118073 (= e!3192045 (Cons!59191 (h!65639 testedP!265) (++!13026 (t!372326 testedP!265) (Cons!59191 lt!2109583 Nil!59191))))))

(declare-fun lt!2109649 () List!59315)

(declare-fun e!3192044 () Bool)

(declare-fun b!5118075 () Bool)

(assert (=> b!5118075 (= e!3192044 (or (not (= (Cons!59191 lt!2109583 Nil!59191) Nil!59191)) (= lt!2109649 testedP!265)))))

(declare-fun b!5118074 () Bool)

(declare-fun res!2179149 () Bool)

(assert (=> b!5118074 (=> (not res!2179149) (not e!3192044))))

(assert (=> b!5118074 (= res!2179149 (= (size!39507 lt!2109649) (+ (size!39507 testedP!265) (size!39507 (Cons!59191 lt!2109583 Nil!59191)))))))

(declare-fun d!1653892 () Bool)

(assert (=> d!1653892 e!3192044))

(declare-fun res!2179150 () Bool)

(assert (=> d!1653892 (=> (not res!2179150) (not e!3192044))))

(assert (=> d!1653892 (= res!2179150 (= (content!10522 lt!2109649) ((_ map or) (content!10522 testedP!265) (content!10522 (Cons!59191 lt!2109583 Nil!59191)))))))

(assert (=> d!1653892 (= lt!2109649 e!3192045)))

(declare-fun c!879413 () Bool)

(assert (=> d!1653892 (= c!879413 ((_ is Nil!59191) testedP!265))))

(assert (=> d!1653892 (= (++!13026 testedP!265 (Cons!59191 lt!2109583 Nil!59191)) lt!2109649)))

(declare-fun b!5118072 () Bool)

(assert (=> b!5118072 (= e!3192045 (Cons!59191 lt!2109583 Nil!59191))))

(assert (= (and d!1653892 c!879413) b!5118072))

(assert (= (and d!1653892 (not c!879413)) b!5118073))

(assert (= (and d!1653892 res!2179150) b!5118074))

(assert (= (and b!5118074 res!2179149) b!5118075))

(declare-fun m!6178004 () Bool)

(assert (=> b!5118073 m!6178004))

(declare-fun m!6178006 () Bool)

(assert (=> b!5118074 m!6178006))

(assert (=> b!5118074 m!6177812))

(declare-fun m!6178008 () Bool)

(assert (=> b!5118074 m!6178008))

(declare-fun m!6178010 () Bool)

(assert (=> d!1653892 m!6178010))

(assert (=> d!1653892 m!6177882))

(declare-fun m!6178012 () Bool)

(assert (=> d!1653892 m!6178012))

(assert (=> b!5117966 d!1653892))

(declare-fun d!1653894 () Bool)

(declare-fun lt!2109650 () List!59315)

(assert (=> d!1653894 (= (++!13026 lt!2109589 lt!2109650) knownP!20)))

(declare-fun e!3192046 () List!59315)

(assert (=> d!1653894 (= lt!2109650 e!3192046)))

(declare-fun c!879414 () Bool)

(assert (=> d!1653894 (= c!879414 ((_ is Cons!59191) lt!2109589))))

(assert (=> d!1653894 (>= (size!39507 knownP!20) (size!39507 lt!2109589))))

(assert (=> d!1653894 (= (getSuffix!3280 knownP!20 lt!2109589) lt!2109650)))

(declare-fun b!5118076 () Bool)

(assert (=> b!5118076 (= e!3192046 (getSuffix!3280 (tail!10065 knownP!20) (t!372326 lt!2109589)))))

(declare-fun b!5118077 () Bool)

(assert (=> b!5118077 (= e!3192046 knownP!20)))

(assert (= (and d!1653894 c!879414) b!5118076))

(assert (= (and d!1653894 (not c!879414)) b!5118077))

(declare-fun m!6178014 () Bool)

(assert (=> d!1653894 m!6178014))

(assert (=> d!1653894 m!6177814))

(assert (=> d!1653894 m!6177984))

(declare-fun m!6178016 () Bool)

(assert (=> b!5118076 m!6178016))

(assert (=> b!5118076 m!6178016))

(declare-fun m!6178018 () Bool)

(assert (=> b!5118076 m!6178018))

(assert (=> b!5117966 d!1653894))

(declare-fun b!5118080 () Bool)

(declare-fun e!3192048 () Bool)

(assert (=> b!5118080 (= e!3192048 (isPrefix!5606 (tail!10065 lt!2109589) (tail!10065 knownP!20)))))

(declare-fun d!1653896 () Bool)

(declare-fun e!3192049 () Bool)

(assert (=> d!1653896 e!3192049))

(declare-fun res!2179153 () Bool)

(assert (=> d!1653896 (=> res!2179153 e!3192049)))

(declare-fun lt!2109651 () Bool)

(assert (=> d!1653896 (= res!2179153 (not lt!2109651))))

(declare-fun e!3192047 () Bool)

(assert (=> d!1653896 (= lt!2109651 e!3192047)))

(declare-fun res!2179152 () Bool)

(assert (=> d!1653896 (=> res!2179152 e!3192047)))

(assert (=> d!1653896 (= res!2179152 ((_ is Nil!59191) lt!2109589))))

(assert (=> d!1653896 (= (isPrefix!5606 lt!2109589 knownP!20) lt!2109651)))

(declare-fun b!5118081 () Bool)

(assert (=> b!5118081 (= e!3192049 (>= (size!39507 knownP!20) (size!39507 lt!2109589)))))

(declare-fun b!5118079 () Bool)

(declare-fun res!2179151 () Bool)

(assert (=> b!5118079 (=> (not res!2179151) (not e!3192048))))

(assert (=> b!5118079 (= res!2179151 (= (head!10929 lt!2109589) (head!10929 knownP!20)))))

(declare-fun b!5118078 () Bool)

(assert (=> b!5118078 (= e!3192047 e!3192048)))

(declare-fun res!2179154 () Bool)

(assert (=> b!5118078 (=> (not res!2179154) (not e!3192048))))

(assert (=> b!5118078 (= res!2179154 (not ((_ is Nil!59191) knownP!20)))))

(assert (= (and d!1653896 (not res!2179152)) b!5118078))

(assert (= (and b!5118078 res!2179154) b!5118079))

(assert (= (and b!5118079 res!2179151) b!5118080))

(assert (= (and d!1653896 (not res!2179153)) b!5118081))

(assert (=> b!5118080 m!6177980))

(assert (=> b!5118080 m!6178016))

(assert (=> b!5118080 m!6177980))

(assert (=> b!5118080 m!6178016))

(declare-fun m!6178020 () Bool)

(assert (=> b!5118080 m!6178020))

(assert (=> b!5118081 m!6177814))

(assert (=> b!5118081 m!6177984))

(assert (=> b!5118079 m!6177986))

(declare-fun m!6178022 () Bool)

(assert (=> b!5118079 m!6178022))

(assert (=> b!5117966 d!1653896))

(declare-fun d!1653898 () Bool)

(assert (=> d!1653898 (= (derivationZipper!100 baseZ!46 (++!13026 testedP!265 (Cons!59191 lt!2109583 Nil!59191))) (derivationStepZipper!836 z!4463 lt!2109583))))

(declare-fun lt!2109654 () Unit!150323)

(declare-fun choose!37594 ((InoxSet Context!7170) (InoxSet Context!7170) List!59315 C!28668) Unit!150323)

(assert (=> d!1653898 (= lt!2109654 (choose!37594 baseZ!46 z!4463 testedP!265 lt!2109583))))

(assert (=> d!1653898 (= (derivationZipper!100 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1653898 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!57 baseZ!46 z!4463 testedP!265 lt!2109583) lt!2109654)))

(declare-fun bs!1192488 () Bool)

(assert (= bs!1192488 d!1653898))

(assert (=> bs!1192488 m!6177834))

(assert (=> bs!1192488 m!6177864))

(assert (=> bs!1192488 m!6177846))

(assert (=> bs!1192488 m!6177834))

(declare-fun m!6178024 () Bool)

(assert (=> bs!1192488 m!6178024))

(declare-fun m!6178026 () Bool)

(assert (=> bs!1192488 m!6178026))

(assert (=> b!5117966 d!1653898))

(declare-fun d!1653900 () Bool)

(assert (=> d!1653900 true))

(declare-fun lambda!251060 () Int)

(declare-fun flatMap!350 ((InoxSet Context!7170) Int) (InoxSet Context!7170))

(assert (=> d!1653900 (= (derivationStepZipper!836 z!4463 lt!2109583) (flatMap!350 z!4463 lambda!251060))))

(declare-fun bs!1192489 () Bool)

(assert (= bs!1192489 d!1653900))

(declare-fun m!6178028 () Bool)

(assert (=> bs!1192489 m!6178028))

(assert (=> b!5117966 d!1653900))

(declare-fun b!5118085 () Bool)

(declare-fun e!3192051 () List!59315)

(assert (=> b!5118085 (= e!3192051 (Cons!59191 (h!65639 knownP!20) (++!13026 (t!372326 knownP!20) lt!2109576)))))

(declare-fun b!5118087 () Bool)

(declare-fun lt!2109655 () List!59315)

(declare-fun e!3192050 () Bool)

(assert (=> b!5118087 (= e!3192050 (or (not (= lt!2109576 Nil!59191)) (= lt!2109655 knownP!20)))))

(declare-fun b!5118086 () Bool)

(declare-fun res!2179155 () Bool)

(assert (=> b!5118086 (=> (not res!2179155) (not e!3192050))))

(assert (=> b!5118086 (= res!2179155 (= (size!39507 lt!2109655) (+ (size!39507 knownP!20) (size!39507 lt!2109576))))))

(declare-fun d!1653902 () Bool)

(assert (=> d!1653902 e!3192050))

(declare-fun res!2179156 () Bool)

(assert (=> d!1653902 (=> (not res!2179156) (not e!3192050))))

(assert (=> d!1653902 (= res!2179156 (= (content!10522 lt!2109655) ((_ map or) (content!10522 knownP!20) (content!10522 lt!2109576))))))

(assert (=> d!1653902 (= lt!2109655 e!3192051)))

(declare-fun c!879418 () Bool)

(assert (=> d!1653902 (= c!879418 ((_ is Nil!59191) knownP!20))))

(assert (=> d!1653902 (= (++!13026 knownP!20 lt!2109576) lt!2109655)))

(declare-fun b!5118084 () Bool)

(assert (=> b!5118084 (= e!3192051 lt!2109576)))

(assert (= (and d!1653902 c!879418) b!5118084))

(assert (= (and d!1653902 (not c!879418)) b!5118085))

(assert (= (and d!1653902 res!2179156) b!5118086))

(assert (= (and b!5118086 res!2179155) b!5118087))

(declare-fun m!6178030 () Bool)

(assert (=> b!5118085 m!6178030))

(declare-fun m!6178032 () Bool)

(assert (=> b!5118086 m!6178032))

(assert (=> b!5118086 m!6177814))

(assert (=> b!5118086 m!6177892))

(declare-fun m!6178034 () Bool)

(assert (=> d!1653902 m!6178034))

(declare-fun m!6178036 () Bool)

(assert (=> d!1653902 m!6178036))

(assert (=> d!1653902 m!6177898))

(assert (=> b!5117966 d!1653902))

(declare-fun d!1653904 () Bool)

(declare-fun c!879421 () Bool)

(declare-fun isEmpty!31921 (List!59315) Bool)

(assert (=> d!1653904 (= c!879421 (isEmpty!31921 lt!2109588))))

(declare-fun e!3192054 () Bool)

(assert (=> d!1653904 (= (matchZipper!869 z!4463 lt!2109588) e!3192054)))

(declare-fun b!5118092 () Bool)

(declare-fun nullableZipper!1020 ((InoxSet Context!7170)) Bool)

(assert (=> b!5118092 (= e!3192054 (nullableZipper!1020 z!4463))))

(declare-fun b!5118093 () Bool)

(assert (=> b!5118093 (= e!3192054 (matchZipper!869 (derivationStepZipper!836 z!4463 (head!10929 lt!2109588)) (tail!10065 lt!2109588)))))

(assert (= (and d!1653904 c!879421) b!5118092))

(assert (= (and d!1653904 (not c!879421)) b!5118093))

(declare-fun m!6178038 () Bool)

(assert (=> d!1653904 m!6178038))

(declare-fun m!6178040 () Bool)

(assert (=> b!5118092 m!6178040))

(assert (=> b!5118093 m!6177866))

(assert (=> b!5118093 m!6177866))

(declare-fun m!6178042 () Bool)

(assert (=> b!5118093 m!6178042))

(declare-fun m!6178044 () Bool)

(assert (=> b!5118093 m!6178044))

(assert (=> b!5118093 m!6178042))

(assert (=> b!5118093 m!6178044))

(declare-fun m!6178046 () Bool)

(assert (=> b!5118093 m!6178046))

(assert (=> b!5117965 d!1653904))

(declare-fun d!1653906 () Bool)

(declare-fun lt!2109656 () List!59315)

(assert (=> d!1653906 (= (++!13026 testedP!265 lt!2109656) knownP!20)))

(declare-fun e!3192055 () List!59315)

(assert (=> d!1653906 (= lt!2109656 e!3192055)))

(declare-fun c!879422 () Bool)

(assert (=> d!1653906 (= c!879422 ((_ is Cons!59191) testedP!265))))

(assert (=> d!1653906 (>= (size!39507 knownP!20) (size!39507 testedP!265))))

(assert (=> d!1653906 (= (getSuffix!3280 knownP!20 testedP!265) lt!2109656)))

(declare-fun b!5118094 () Bool)

(assert (=> b!5118094 (= e!3192055 (getSuffix!3280 (tail!10065 knownP!20) (t!372326 testedP!265)))))

(declare-fun b!5118095 () Bool)

(assert (=> b!5118095 (= e!3192055 knownP!20)))

(assert (= (and d!1653906 c!879422) b!5118094))

(assert (= (and d!1653906 (not c!879422)) b!5118095))

(declare-fun m!6178048 () Bool)

(assert (=> d!1653906 m!6178048))

(assert (=> d!1653906 m!6177814))

(assert (=> d!1653906 m!6177812))

(assert (=> b!5118094 m!6178016))

(assert (=> b!5118094 m!6178016))

(declare-fun m!6178050 () Bool)

(assert (=> b!5118094 m!6178050))

(assert (=> b!5117965 d!1653906))

(declare-fun b!5118098 () Bool)

(declare-fun e!3192057 () Bool)

(assert (=> b!5118098 (= e!3192057 (isPrefix!5606 (tail!10065 testedP!265) (tail!10065 knownP!20)))))

(declare-fun d!1653908 () Bool)

(declare-fun e!3192058 () Bool)

(assert (=> d!1653908 e!3192058))

(declare-fun res!2179159 () Bool)

(assert (=> d!1653908 (=> res!2179159 e!3192058)))

(declare-fun lt!2109657 () Bool)

(assert (=> d!1653908 (= res!2179159 (not lt!2109657))))

(declare-fun e!3192056 () Bool)

(assert (=> d!1653908 (= lt!2109657 e!3192056)))

(declare-fun res!2179158 () Bool)

(assert (=> d!1653908 (=> res!2179158 e!3192056)))

(assert (=> d!1653908 (= res!2179158 ((_ is Nil!59191) testedP!265))))

(assert (=> d!1653908 (= (isPrefix!5606 testedP!265 knownP!20) lt!2109657)))

(declare-fun b!5118099 () Bool)

(assert (=> b!5118099 (= e!3192058 (>= (size!39507 knownP!20) (size!39507 testedP!265)))))

(declare-fun b!5118097 () Bool)

(declare-fun res!2179157 () Bool)

(assert (=> b!5118097 (=> (not res!2179157) (not e!3192057))))

(assert (=> b!5118097 (= res!2179157 (= (head!10929 testedP!265) (head!10929 knownP!20)))))

(declare-fun b!5118096 () Bool)

(assert (=> b!5118096 (= e!3192056 e!3192057)))

(declare-fun res!2179160 () Bool)

(assert (=> b!5118096 (=> (not res!2179160) (not e!3192057))))

(assert (=> b!5118096 (= res!2179160 (not ((_ is Nil!59191) knownP!20)))))

(assert (= (and d!1653908 (not res!2179158)) b!5118096))

(assert (= (and b!5118096 res!2179160) b!5118097))

(assert (= (and b!5118097 res!2179157) b!5118098))

(assert (= (and d!1653908 (not res!2179159)) b!5118099))

(declare-fun m!6178052 () Bool)

(assert (=> b!5118098 m!6178052))

(assert (=> b!5118098 m!6178016))

(assert (=> b!5118098 m!6178052))

(assert (=> b!5118098 m!6178016))

(declare-fun m!6178054 () Bool)

(assert (=> b!5118098 m!6178054))

(assert (=> b!5118099 m!6177814))

(assert (=> b!5118099 m!6177812))

(declare-fun m!6178056 () Bool)

(assert (=> b!5118097 m!6178056))

(assert (=> b!5118097 m!6178022))

(assert (=> b!5117965 d!1653908))

(declare-fun d!1653910 () Bool)

(assert (=> d!1653910 (isPrefix!5606 testedP!265 knownP!20)))

(declare-fun lt!2109658 () Unit!150323)

(assert (=> d!1653910 (= lt!2109658 (choose!37592 knownP!20 testedP!265 input!5745))))

(assert (=> d!1653910 (isPrefix!5606 knownP!20 input!5745)))

(assert (=> d!1653910 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!743 knownP!20 testedP!265 input!5745) lt!2109658)))

(declare-fun bs!1192490 () Bool)

(assert (= bs!1192490 d!1653910))

(assert (=> bs!1192490 m!6177808))

(declare-fun m!6178058 () Bool)

(assert (=> bs!1192490 m!6178058))

(assert (=> bs!1192490 m!6177824))

(assert (=> b!5117965 d!1653910))

(declare-fun d!1653912 () Bool)

(declare-fun lambda!251063 () Int)

(declare-fun forall!13596 (List!59314 Int) Bool)

(assert (=> d!1653912 (= (inv!78683 setElem!30218) (forall!13596 (exprs!4085 setElem!30218) lambda!251063))))

(declare-fun bs!1192491 () Bool)

(assert (= bs!1192491 d!1653912))

(declare-fun m!6178060 () Bool)

(assert (=> bs!1192491 m!6178060))

(assert (=> setNonEmpty!30218 d!1653912))

(declare-fun d!1653914 () Bool)

(declare-fun lt!2109661 () Int)

(assert (=> d!1653914 (>= lt!2109661 0)))

(declare-fun e!3192061 () Int)

(assert (=> d!1653914 (= lt!2109661 e!3192061)))

(declare-fun c!879425 () Bool)

(assert (=> d!1653914 (= c!879425 ((_ is Nil!59191) input!5745))))

(assert (=> d!1653914 (= (size!39507 input!5745) lt!2109661)))

(declare-fun b!5118104 () Bool)

(assert (=> b!5118104 (= e!3192061 0)))

(declare-fun b!5118105 () Bool)

(assert (=> b!5118105 (= e!3192061 (+ 1 (size!39507 (t!372326 input!5745))))))

(assert (= (and d!1653914 c!879425) b!5118104))

(assert (= (and d!1653914 (not c!879425)) b!5118105))

(declare-fun m!6178062 () Bool)

(assert (=> b!5118105 m!6178062))

(assert (=> b!5117974 d!1653914))

(declare-fun bs!1192492 () Bool)

(declare-fun d!1653916 () Bool)

(assert (= bs!1192492 (and d!1653916 d!1653912)))

(declare-fun lambda!251064 () Int)

(assert (=> bs!1192492 (= lambda!251064 lambda!251063)))

(assert (=> d!1653916 (= (inv!78683 setElem!30217) (forall!13596 (exprs!4085 setElem!30217) lambda!251064))))

(declare-fun bs!1192493 () Bool)

(assert (= bs!1192493 d!1653916))

(declare-fun m!6178064 () Bool)

(assert (=> bs!1192493 m!6178064))

(assert (=> setNonEmpty!30217 d!1653916))

(declare-fun d!1653918 () Bool)

(declare-fun lt!2109662 () Int)

(assert (=> d!1653918 (>= lt!2109662 0)))

(declare-fun e!3192062 () Int)

(assert (=> d!1653918 (= lt!2109662 e!3192062)))

(declare-fun c!879426 () Bool)

(assert (=> d!1653918 (= c!879426 ((_ is Nil!59191) testedP!265))))

(assert (=> d!1653918 (= (size!39507 testedP!265) lt!2109662)))

(declare-fun b!5118106 () Bool)

(assert (=> b!5118106 (= e!3192062 0)))

(declare-fun b!5118107 () Bool)

(assert (=> b!5118107 (= e!3192062 (+ 1 (size!39507 (t!372326 testedP!265))))))

(assert (= (and d!1653918 c!879426) b!5118106))

(assert (= (and d!1653918 (not c!879426)) b!5118107))

(declare-fun m!6178066 () Bool)

(assert (=> b!5118107 m!6178066))

(assert (=> b!5117972 d!1653918))

(declare-fun d!1653920 () Bool)

(declare-fun lt!2109663 () Int)

(assert (=> d!1653920 (>= lt!2109663 0)))

(declare-fun e!3192063 () Int)

(assert (=> d!1653920 (= lt!2109663 e!3192063)))

(declare-fun c!879427 () Bool)

(assert (=> d!1653920 (= c!879427 ((_ is Nil!59191) knownP!20))))

(assert (=> d!1653920 (= (size!39507 knownP!20) lt!2109663)))

(declare-fun b!5118108 () Bool)

(assert (=> b!5118108 (= e!3192063 0)))

(declare-fun b!5118109 () Bool)

(assert (=> b!5118109 (= e!3192063 (+ 1 (size!39507 (t!372326 knownP!20))))))

(assert (= (and d!1653920 c!879427) b!5118108))

(assert (= (and d!1653920 (not c!879427)) b!5118109))

(declare-fun m!6178068 () Bool)

(assert (=> b!5118109 m!6178068))

(assert (=> b!5117972 d!1653920))

(declare-fun d!1653922 () Bool)

(declare-fun c!879428 () Bool)

(assert (=> d!1653922 (= c!879428 (isEmpty!31921 knownP!20))))

(declare-fun e!3192064 () Bool)

(assert (=> d!1653922 (= (matchZipper!869 baseZ!46 knownP!20) e!3192064)))

(declare-fun b!5118110 () Bool)

(assert (=> b!5118110 (= e!3192064 (nullableZipper!1020 baseZ!46))))

(declare-fun b!5118111 () Bool)

(assert (=> b!5118111 (= e!3192064 (matchZipper!869 (derivationStepZipper!836 baseZ!46 (head!10929 knownP!20)) (tail!10065 knownP!20)))))

(assert (= (and d!1653922 c!879428) b!5118110))

(assert (= (and d!1653922 (not c!879428)) b!5118111))

(declare-fun m!6178070 () Bool)

(assert (=> d!1653922 m!6178070))

(declare-fun m!6178072 () Bool)

(assert (=> b!5118110 m!6178072))

(assert (=> b!5118111 m!6178022))

(assert (=> b!5118111 m!6178022))

(declare-fun m!6178074 () Bool)

(assert (=> b!5118111 m!6178074))

(assert (=> b!5118111 m!6178016))

(assert (=> b!5118111 m!6178074))

(assert (=> b!5118111 m!6178016))

(declare-fun m!6178076 () Bool)

(assert (=> b!5118111 m!6178076))

(assert (=> b!5117981 d!1653922))

(declare-fun b!5118113 () Bool)

(declare-fun e!3192066 () List!59315)

(assert (=> b!5118113 (= e!3192066 (Cons!59191 (h!65639 (++!13026 testedP!265 lt!2109588)) (++!13026 (t!372326 (++!13026 testedP!265 lt!2109588)) lt!2109576)))))

(declare-fun lt!2109664 () List!59315)

(declare-fun e!3192065 () Bool)

(declare-fun b!5118115 () Bool)

(assert (=> b!5118115 (= e!3192065 (or (not (= lt!2109576 Nil!59191)) (= lt!2109664 (++!13026 testedP!265 lt!2109588))))))

(declare-fun b!5118114 () Bool)

(declare-fun res!2179161 () Bool)

(assert (=> b!5118114 (=> (not res!2179161) (not e!3192065))))

(assert (=> b!5118114 (= res!2179161 (= (size!39507 lt!2109664) (+ (size!39507 (++!13026 testedP!265 lt!2109588)) (size!39507 lt!2109576))))))

(declare-fun d!1653924 () Bool)

(assert (=> d!1653924 e!3192065))

(declare-fun res!2179162 () Bool)

(assert (=> d!1653924 (=> (not res!2179162) (not e!3192065))))

(assert (=> d!1653924 (= res!2179162 (= (content!10522 lt!2109664) ((_ map or) (content!10522 (++!13026 testedP!265 lt!2109588)) (content!10522 lt!2109576))))))

(assert (=> d!1653924 (= lt!2109664 e!3192066)))

(declare-fun c!879429 () Bool)

(assert (=> d!1653924 (= c!879429 ((_ is Nil!59191) (++!13026 testedP!265 lt!2109588)))))

(assert (=> d!1653924 (= (++!13026 (++!13026 testedP!265 lt!2109588) lt!2109576) lt!2109664)))

(declare-fun b!5118112 () Bool)

(assert (=> b!5118112 (= e!3192066 lt!2109576)))

(assert (= (and d!1653924 c!879429) b!5118112))

(assert (= (and d!1653924 (not c!879429)) b!5118113))

(assert (= (and d!1653924 res!2179162) b!5118114))

(assert (= (and b!5118114 res!2179161) b!5118115))

(declare-fun m!6178078 () Bool)

(assert (=> b!5118113 m!6178078))

(declare-fun m!6178080 () Bool)

(assert (=> b!5118114 m!6178080))

(assert (=> b!5118114 m!6177820))

(declare-fun m!6178082 () Bool)

(assert (=> b!5118114 m!6178082))

(assert (=> b!5118114 m!6177892))

(declare-fun m!6178084 () Bool)

(assert (=> d!1653924 m!6178084))

(assert (=> d!1653924 m!6177820))

(declare-fun m!6178086 () Bool)

(assert (=> d!1653924 m!6178086))

(assert (=> d!1653924 m!6177898))

(assert (=> b!5117980 d!1653924))

(declare-fun b!5118117 () Bool)

(declare-fun e!3192068 () List!59315)

(assert (=> b!5118117 (= e!3192068 (Cons!59191 (h!65639 testedP!265) (++!13026 (t!372326 testedP!265) lt!2109588)))))

(declare-fun lt!2109665 () List!59315)

(declare-fun b!5118119 () Bool)

(declare-fun e!3192067 () Bool)

(assert (=> b!5118119 (= e!3192067 (or (not (= lt!2109588 Nil!59191)) (= lt!2109665 testedP!265)))))

(declare-fun b!5118118 () Bool)

(declare-fun res!2179163 () Bool)

(assert (=> b!5118118 (=> (not res!2179163) (not e!3192067))))

(assert (=> b!5118118 (= res!2179163 (= (size!39507 lt!2109665) (+ (size!39507 testedP!265) (size!39507 lt!2109588))))))

(declare-fun d!1653926 () Bool)

(assert (=> d!1653926 e!3192067))

(declare-fun res!2179164 () Bool)

(assert (=> d!1653926 (=> (not res!2179164) (not e!3192067))))

(assert (=> d!1653926 (= res!2179164 (= (content!10522 lt!2109665) ((_ map or) (content!10522 testedP!265) (content!10522 lt!2109588))))))

(assert (=> d!1653926 (= lt!2109665 e!3192068)))

(declare-fun c!879430 () Bool)

(assert (=> d!1653926 (= c!879430 ((_ is Nil!59191) testedP!265))))

(assert (=> d!1653926 (= (++!13026 testedP!265 lt!2109588) lt!2109665)))

(declare-fun b!5118116 () Bool)

(assert (=> b!5118116 (= e!3192068 lt!2109588)))

(assert (= (and d!1653926 c!879430) b!5118116))

(assert (= (and d!1653926 (not c!879430)) b!5118117))

(assert (= (and d!1653926 res!2179164) b!5118118))

(assert (= (and b!5118118 res!2179163) b!5118119))

(declare-fun m!6178088 () Bool)

(assert (=> b!5118117 m!6178088))

(declare-fun m!6178090 () Bool)

(assert (=> b!5118118 m!6178090))

(assert (=> b!5118118 m!6177812))

(assert (=> b!5118118 m!6177890))

(declare-fun m!6178092 () Bool)

(assert (=> d!1653926 m!6178092))

(assert (=> d!1653926 m!6177882))

(assert (=> d!1653926 m!6177896))

(assert (=> b!5117980 d!1653926))

(declare-fun b!5118122 () Bool)

(declare-fun e!3192070 () Bool)

(assert (=> b!5118122 (= e!3192070 (isPrefix!5606 (tail!10065 testedP!265) (tail!10065 input!5745)))))

(declare-fun d!1653928 () Bool)

(declare-fun e!3192071 () Bool)

(assert (=> d!1653928 e!3192071))

(declare-fun res!2179167 () Bool)

(assert (=> d!1653928 (=> res!2179167 e!3192071)))

(declare-fun lt!2109666 () Bool)

(assert (=> d!1653928 (= res!2179167 (not lt!2109666))))

(declare-fun e!3192069 () Bool)

(assert (=> d!1653928 (= lt!2109666 e!3192069)))

(declare-fun res!2179166 () Bool)

(assert (=> d!1653928 (=> res!2179166 e!3192069)))

(assert (=> d!1653928 (= res!2179166 ((_ is Nil!59191) testedP!265))))

(assert (=> d!1653928 (= (isPrefix!5606 testedP!265 input!5745) lt!2109666)))

(declare-fun b!5118123 () Bool)

(assert (=> b!5118123 (= e!3192071 (>= (size!39507 input!5745) (size!39507 testedP!265)))))

(declare-fun b!5118121 () Bool)

(declare-fun res!2179165 () Bool)

(assert (=> b!5118121 (=> (not res!2179165) (not e!3192070))))

(assert (=> b!5118121 (= res!2179165 (= (head!10929 testedP!265) (head!10929 input!5745)))))

(declare-fun b!5118120 () Bool)

(assert (=> b!5118120 (= e!3192069 e!3192070)))

(declare-fun res!2179168 () Bool)

(assert (=> b!5118120 (=> (not res!2179168) (not e!3192070))))

(assert (=> b!5118120 (= res!2179168 (not ((_ is Nil!59191) input!5745)))))

(assert (= (and d!1653928 (not res!2179166)) b!5118120))

(assert (= (and b!5118120 res!2179168) b!5118121))

(assert (= (and b!5118121 res!2179165) b!5118122))

(assert (= (and d!1653928 (not res!2179167)) b!5118123))

(assert (=> b!5118122 m!6178052))

(assert (=> b!5118122 m!6177972))

(assert (=> b!5118122 m!6178052))

(assert (=> b!5118122 m!6177972))

(declare-fun m!6178094 () Bool)

(assert (=> b!5118122 m!6178094))

(assert (=> b!5118123 m!6177856))

(assert (=> b!5118123 m!6177812))

(assert (=> b!5118121 m!6178056))

(assert (=> b!5118121 m!6177988))

(assert (=> start!540056 d!1653928))

(declare-fun b!5118126 () Bool)

(declare-fun e!3192073 () Bool)

(assert (=> b!5118126 (= e!3192073 (isPrefix!5606 (tail!10065 knownP!20) (tail!10065 input!5745)))))

(declare-fun d!1653930 () Bool)

(declare-fun e!3192074 () Bool)

(assert (=> d!1653930 e!3192074))

(declare-fun res!2179171 () Bool)

(assert (=> d!1653930 (=> res!2179171 e!3192074)))

(declare-fun lt!2109667 () Bool)

(assert (=> d!1653930 (= res!2179171 (not lt!2109667))))

(declare-fun e!3192072 () Bool)

(assert (=> d!1653930 (= lt!2109667 e!3192072)))

(declare-fun res!2179170 () Bool)

(assert (=> d!1653930 (=> res!2179170 e!3192072)))

(assert (=> d!1653930 (= res!2179170 ((_ is Nil!59191) knownP!20))))

(assert (=> d!1653930 (= (isPrefix!5606 knownP!20 input!5745) lt!2109667)))

(declare-fun b!5118127 () Bool)

(assert (=> b!5118127 (= e!3192074 (>= (size!39507 input!5745) (size!39507 knownP!20)))))

(declare-fun b!5118125 () Bool)

(declare-fun res!2179169 () Bool)

(assert (=> b!5118125 (=> (not res!2179169) (not e!3192073))))

(assert (=> b!5118125 (= res!2179169 (= (head!10929 knownP!20) (head!10929 input!5745)))))

(declare-fun b!5118124 () Bool)

(assert (=> b!5118124 (= e!3192072 e!3192073)))

(declare-fun res!2179172 () Bool)

(assert (=> b!5118124 (=> (not res!2179172) (not e!3192073))))

(assert (=> b!5118124 (= res!2179172 (not ((_ is Nil!59191) input!5745)))))

(assert (= (and d!1653930 (not res!2179170)) b!5118124))

(assert (= (and b!5118124 res!2179172) b!5118125))

(assert (= (and b!5118125 res!2179169) b!5118126))

(assert (= (and d!1653930 (not res!2179171)) b!5118127))

(assert (=> b!5118126 m!6178016))

(assert (=> b!5118126 m!6177972))

(assert (=> b!5118126 m!6178016))

(assert (=> b!5118126 m!6177972))

(declare-fun m!6178096 () Bool)

(assert (=> b!5118126 m!6178096))

(assert (=> b!5118127 m!6177856))

(assert (=> b!5118127 m!6177814))

(assert (=> b!5118125 m!6178022))

(assert (=> b!5118125 m!6177988))

(assert (=> b!5117971 d!1653930))

(declare-fun d!1653932 () Bool)

(assert (=> d!1653932 (= (head!10929 lt!2109588) (h!65639 lt!2109588))))

(assert (=> b!5117978 d!1653932))

(declare-fun d!1653934 () Bool)

(assert (=> d!1653934 (= lt!2109586 lt!2109584)))

(declare-fun lt!2109670 () Unit!150323)

(declare-fun choose!37595 (List!59315 List!59315 List!59315 List!59315 List!59315) Unit!150323)

(assert (=> d!1653934 (= lt!2109670 (choose!37595 testedP!265 lt!2109586 testedP!265 lt!2109584 input!5745))))

(assert (=> d!1653934 (isPrefix!5606 testedP!265 input!5745)))

(assert (=> d!1653934 (= (lemmaSamePrefixThenSameSuffix!2640 testedP!265 lt!2109586 testedP!265 lt!2109584 input!5745) lt!2109670)))

(declare-fun bs!1192494 () Bool)

(assert (= bs!1192494 d!1653934))

(declare-fun m!6178098 () Bool)

(assert (=> bs!1192494 m!6178098))

(assert (=> bs!1192494 m!6177826))

(assert (=> b!5117978 d!1653934))

(declare-fun b!5118132 () Bool)

(declare-fun e!3192077 () Bool)

(declare-fun tp!1427906 () Bool)

(declare-fun tp!1427907 () Bool)

(assert (=> b!5118132 (= e!3192077 (and tp!1427906 tp!1427907))))

(assert (=> b!5117964 (= tp!1427900 e!3192077)))

(assert (= (and b!5117964 ((_ is Cons!59190) (exprs!4085 setElem!30217))) b!5118132))

(declare-fun b!5118137 () Bool)

(declare-fun e!3192080 () Bool)

(declare-fun tp!1427910 () Bool)

(assert (=> b!5118137 (= e!3192080 (and tp_is_empty!37675 tp!1427910))))

(assert (=> b!5117976 (= tp!1427895 e!3192080)))

(assert (= (and b!5117976 ((_ is Cons!59191) (t!372326 testedP!265))) b!5118137))

(declare-fun condSetEmpty!30221 () Bool)

(assert (=> setNonEmpty!30217 (= condSetEmpty!30221 (= setRest!30218 ((as const (Array Context!7170 Bool)) false)))))

(declare-fun setRes!30221 () Bool)

(assert (=> setNonEmpty!30217 (= tp!1427898 setRes!30221)))

(declare-fun setIsEmpty!30221 () Bool)

(assert (=> setIsEmpty!30221 setRes!30221))

(declare-fun setNonEmpty!30221 () Bool)

(declare-fun e!3192083 () Bool)

(declare-fun tp!1427916 () Bool)

(declare-fun setElem!30221 () Context!7170)

(assert (=> setNonEmpty!30221 (= setRes!30221 (and tp!1427916 (inv!78683 setElem!30221) e!3192083))))

(declare-fun setRest!30221 () (InoxSet Context!7170))

(assert (=> setNonEmpty!30221 (= setRest!30218 ((_ map or) (store ((as const (Array Context!7170 Bool)) false) setElem!30221 true) setRest!30221))))

(declare-fun b!5118142 () Bool)

(declare-fun tp!1427915 () Bool)

(assert (=> b!5118142 (= e!3192083 tp!1427915)))

(assert (= (and setNonEmpty!30217 condSetEmpty!30221) setIsEmpty!30221))

(assert (= (and setNonEmpty!30217 (not condSetEmpty!30221)) setNonEmpty!30221))

(assert (= setNonEmpty!30221 b!5118142))

(declare-fun m!6178100 () Bool)

(assert (=> setNonEmpty!30221 m!6178100))

(declare-fun b!5118143 () Bool)

(declare-fun e!3192084 () Bool)

(declare-fun tp!1427917 () Bool)

(declare-fun tp!1427918 () Bool)

(assert (=> b!5118143 (= e!3192084 (and tp!1427917 tp!1427918))))

(assert (=> b!5117973 (= tp!1427896 e!3192084)))

(assert (= (and b!5117973 ((_ is Cons!59190) (exprs!4085 setElem!30218))) b!5118143))

(declare-fun b!5118144 () Bool)

(declare-fun e!3192085 () Bool)

(declare-fun tp!1427919 () Bool)

(assert (=> b!5118144 (= e!3192085 (and tp_is_empty!37675 tp!1427919))))

(assert (=> b!5117970 (= tp!1427899 e!3192085)))

(assert (= (and b!5117970 ((_ is Cons!59191) (t!372326 knownP!20))) b!5118144))

(declare-fun condSetEmpty!30222 () Bool)

(assert (=> setNonEmpty!30218 (= condSetEmpty!30222 (= setRest!30217 ((as const (Array Context!7170 Bool)) false)))))

(declare-fun setRes!30222 () Bool)

(assert (=> setNonEmpty!30218 (= tp!1427897 setRes!30222)))

(declare-fun setIsEmpty!30222 () Bool)

(assert (=> setIsEmpty!30222 setRes!30222))

(declare-fun e!3192086 () Bool)

(declare-fun setElem!30222 () Context!7170)

(declare-fun tp!1427921 () Bool)

(declare-fun setNonEmpty!30222 () Bool)

(assert (=> setNonEmpty!30222 (= setRes!30222 (and tp!1427921 (inv!78683 setElem!30222) e!3192086))))

(declare-fun setRest!30222 () (InoxSet Context!7170))

(assert (=> setNonEmpty!30222 (= setRest!30217 ((_ map or) (store ((as const (Array Context!7170 Bool)) false) setElem!30222 true) setRest!30222))))

(declare-fun b!5118145 () Bool)

(declare-fun tp!1427920 () Bool)

(assert (=> b!5118145 (= e!3192086 tp!1427920)))

(assert (= (and setNonEmpty!30218 condSetEmpty!30222) setIsEmpty!30222))

(assert (= (and setNonEmpty!30218 (not condSetEmpty!30222)) setNonEmpty!30222))

(assert (= setNonEmpty!30222 b!5118145))

(declare-fun m!6178102 () Bool)

(assert (=> setNonEmpty!30222 m!6178102))

(declare-fun b!5118146 () Bool)

(declare-fun e!3192087 () Bool)

(declare-fun tp!1427922 () Bool)

(assert (=> b!5118146 (= e!3192087 (and tp_is_empty!37675 tp!1427922))))

(assert (=> b!5117975 (= tp!1427901 e!3192087)))

(assert (= (and b!5117975 ((_ is Cons!59191) (t!372326 input!5745))) b!5118146))

(check-sat (not b!5118117) (not d!1653924) (not b!5118146) (not b!5118111) (not b!5118056) (not d!1653876) (not b!5118142) (not b!5118085) (not b!5118132) (not d!1653922) (not b!5118144) (not b!5118107) (not b!5118105) (not b!5118054) (not b!5118097) (not d!1653898) (not b!5118086) (not b!5118047) (not b!5118067) (not b!5118114) (not d!1653856) (not b!5118113) (not d!1653916) (not d!1653934) (not b!5118092) (not b!5118073) (not b!5118110) (not b!5118099) (not b!5118127) (not d!1653890) (not d!1653888) (not d!1653886) (not b!5118123) (not d!1653906) (not b!5117995) (not d!1653854) (not b!5118074) (not b!5118121) (not b!5118070) (not b!5118068) (not setNonEmpty!30221) (not b!5117996) (not bm!356570) (not b!5118081) (not d!1653904) (not b!5118069) (not b!5118094) (not d!1653894) (not b!5118126) (not d!1653910) (not b!5118143) (not b!5118137) (not b!5118080) (not b!5118048) (not b!5118044) (not d!1653902) (not b!5118118) tp_is_empty!37675 (not d!1653892) (not b!5118039) (not d!1653926) (not b!5118109) (not d!1653852) (not b!5118098) (not b!5118125) (not b!5117991) (not b!5118038) (not b!5117992) (not d!1653858) (not b!5118076) (not bm!356569) (not d!1653912) (not d!1653900) (not d!1653878) (not setNonEmpty!30222) (not b!5118093) (not b!5118145) (not b!5118122) (not b!5118079))
(check-sat)
