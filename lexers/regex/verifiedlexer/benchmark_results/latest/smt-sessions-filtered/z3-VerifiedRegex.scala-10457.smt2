; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540192 () Bool)

(assert start!540192)

(declare-fun b!5118713 () Bool)

(declare-fun e!3192438 () Bool)

(declare-datatypes ((C!28676 0))(
  ( (C!28677 (val!23990 Int)) )
))
(declare-datatypes ((List!59325 0))(
  ( (Nil!59201) (Cons!59201 (h!65649 C!28676) (t!372338 List!59325)) )
))
(declare-fun lt!2110060 () List!59325)

(declare-fun knownP!20 () List!59325)

(assert (=> b!5118713 (= e!3192438 (= lt!2110060 knownP!20))))

(declare-fun b!5118714 () Bool)

(declare-fun res!2179456 () Bool)

(declare-fun e!3192433 () Bool)

(assert (=> b!5118714 (=> res!2179456 e!3192433)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14205 0))(
  ( (ElementMatch!14205 (c!879551 C!28676)) (Concat!23050 (regOne!28922 Regex!14205) (regTwo!28922 Regex!14205)) (EmptyExpr!14205) (Star!14205 (reg!14534 Regex!14205)) (EmptyLang!14205) (Union!14205 (regOne!28923 Regex!14205) (regTwo!28923 Regex!14205)) )
))
(declare-datatypes ((List!59326 0))(
  ( (Nil!59202) (Cons!59202 (h!65650 Regex!14205) (t!372339 List!59326)) )
))
(declare-datatypes ((Context!7178 0))(
  ( (Context!7179 (exprs!4089 List!59326)) )
))
(declare-fun z!4463 () (InoxSet Context!7178))

(declare-fun testedP!265 () List!59325)

(declare-fun baseZ!46 () (InoxSet Context!7178))

(declare-fun derivationZipper!104 ((InoxSet Context!7178) List!59325) (InoxSet Context!7178))

(assert (=> b!5118714 (= res!2179456 (not (= (derivationZipper!104 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5118715 () Bool)

(declare-fun e!3192435 () Bool)

(declare-fun e!3192437 () Bool)

(assert (=> b!5118715 (= e!3192435 e!3192437)))

(declare-fun res!2179450 () Bool)

(assert (=> b!5118715 (=> res!2179450 e!3192437)))

(declare-fun lt!2110056 () List!59325)

(declare-fun input!5745 () List!59325)

(assert (=> b!5118715 (= res!2179450 (not (= lt!2110056 input!5745)))))

(declare-fun lt!2110062 () List!59325)

(assert (=> b!5118715 (= lt!2110062 lt!2110056)))

(declare-fun lt!2110057 () List!59325)

(declare-fun ++!13030 (List!59325 List!59325) List!59325)

(assert (=> b!5118715 (= lt!2110056 (++!13030 testedP!265 lt!2110057))))

(declare-fun lt!2110069 () List!59325)

(declare-fun lt!2110068 () List!59325)

(assert (=> b!5118715 (= lt!2110057 (++!13030 lt!2110069 lt!2110068))))

(declare-datatypes ((Unit!150337 0))(
  ( (Unit!150338) )
))
(declare-fun lt!2110064 () Unit!150337)

(declare-fun lemmaConcatAssociativity!2778 (List!59325 List!59325 List!59325) Unit!150337)

(assert (=> b!5118715 (= lt!2110064 (lemmaConcatAssociativity!2778 testedP!265 lt!2110069 lt!2110068))))

(declare-fun b!5118716 () Bool)

(declare-fun e!3192440 () Bool)

(declare-fun tp!1428068 () Bool)

(assert (=> b!5118716 (= e!3192440 tp!1428068)))

(declare-fun b!5118717 () Bool)

(declare-fun e!3192436 () Bool)

(assert (=> b!5118717 (= e!3192436 e!3192435)))

(declare-fun res!2179458 () Bool)

(assert (=> b!5118717 (=> res!2179458 e!3192435)))

(assert (=> b!5118717 (= res!2179458 (not (= lt!2110062 input!5745)))))

(assert (=> b!5118717 (= lt!2110062 (++!13030 lt!2110060 lt!2110068))))

(assert (=> b!5118717 (= lt!2110060 (++!13030 testedP!265 lt!2110069))))

(declare-fun setIsEmpty!30257 () Bool)

(declare-fun setRes!30258 () Bool)

(assert (=> setIsEmpty!30257 setRes!30258))

(declare-fun b!5118712 () Bool)

(declare-fun res!2179457 () Bool)

(assert (=> b!5118712 (=> res!2179457 e!3192433)))

(declare-fun lostCauseZipper!1091 ((InoxSet Context!7178)) Bool)

(assert (=> b!5118712 (= res!2179457 (lostCauseZipper!1091 z!4463))))

(declare-fun res!2179455 () Bool)

(declare-fun e!3192443 () Bool)

(assert (=> start!540192 (=> (not res!2179455) (not e!3192443))))

(declare-fun isPrefix!5610 (List!59325 List!59325) Bool)

(assert (=> start!540192 (= res!2179455 (isPrefix!5610 testedP!265 input!5745))))

(assert (=> start!540192 e!3192443))

(declare-fun e!3192441 () Bool)

(assert (=> start!540192 e!3192441))

(declare-fun condSetEmpty!30258 () Bool)

(assert (=> start!540192 (= condSetEmpty!30258 (= z!4463 ((as const (Array Context!7178 Bool)) false)))))

(declare-fun setRes!30257 () Bool)

(assert (=> start!540192 setRes!30257))

(declare-fun e!3192432 () Bool)

(assert (=> start!540192 e!3192432))

(declare-fun condSetEmpty!30257 () Bool)

(assert (=> start!540192 (= condSetEmpty!30257 (= baseZ!46 ((as const (Array Context!7178 Bool)) false)))))

(assert (=> start!540192 setRes!30258))

(declare-fun e!3192439 () Bool)

(assert (=> start!540192 e!3192439))

(declare-fun setIsEmpty!30258 () Bool)

(assert (=> setIsEmpty!30258 setRes!30257))

(declare-fun b!5118718 () Bool)

(declare-fun tp_is_empty!37683 () Bool)

(declare-fun tp!1428067 () Bool)

(assert (=> b!5118718 (= e!3192432 (and tp_is_empty!37683 tp!1428067))))

(declare-fun b!5118719 () Bool)

(assert (=> b!5118719 (= e!3192433 e!3192436)))

(declare-fun res!2179461 () Bool)

(assert (=> b!5118719 (=> res!2179461 e!3192436)))

(assert (=> b!5118719 (= res!2179461 (not (= (++!13030 knownP!20 lt!2110068) input!5745)))))

(declare-fun getSuffix!3284 (List!59325 List!59325) List!59325)

(assert (=> b!5118719 (= lt!2110068 (getSuffix!3284 input!5745 knownP!20))))

(declare-fun lt!2110054 () List!59325)

(declare-fun lt!2110063 () List!59325)

(assert (=> b!5118719 (= lt!2110054 (getSuffix!3284 knownP!20 lt!2110063))))

(assert (=> b!5118719 (isPrefix!5610 lt!2110063 knownP!20)))

(declare-fun lt!2110066 () Unit!150337)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!747 (List!59325 List!59325 List!59325) Unit!150337)

(assert (=> b!5118719 (= lt!2110066 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!747 knownP!20 lt!2110063 input!5745))))

(declare-fun lt!2110065 () C!28676)

(declare-fun derivationStepZipper!840 ((InoxSet Context!7178) C!28676) (InoxSet Context!7178))

(assert (=> b!5118719 (= (derivationZipper!104 baseZ!46 lt!2110063) (derivationStepZipper!840 z!4463 lt!2110065))))

(declare-fun lt!2110058 () Unit!150337)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!61 ((InoxSet Context!7178) (InoxSet Context!7178) List!59325 C!28676) Unit!150337)

(assert (=> b!5118719 (= lt!2110058 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!61 baseZ!46 z!4463 testedP!265 lt!2110065))))

(assert (=> b!5118719 (isPrefix!5610 lt!2110063 input!5745)))

(declare-fun lt!2110070 () Unit!150337)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!996 (List!59325 List!59325) Unit!150337)

(assert (=> b!5118719 (= lt!2110070 (lemmaAddHeadSuffixToPrefixStillPrefix!996 testedP!265 input!5745))))

(assert (=> b!5118719 (= lt!2110063 (++!13030 testedP!265 (Cons!59201 lt!2110065 Nil!59201)))))

(declare-fun lt!2110059 () List!59325)

(declare-fun head!10933 (List!59325) C!28676)

(assert (=> b!5118719 (= lt!2110065 (head!10933 lt!2110059))))

(assert (=> b!5118719 (= lt!2110059 (getSuffix!3284 input!5745 testedP!265))))

(declare-fun b!5118720 () Bool)

(declare-fun res!2179462 () Bool)

(assert (=> b!5118720 (=> (not res!2179462) (not e!3192443))))

(assert (=> b!5118720 (= res!2179462 (isPrefix!5610 knownP!20 input!5745))))

(declare-fun b!5118721 () Bool)

(assert (=> b!5118721 (= e!3192437 e!3192438)))

(declare-fun res!2179451 () Bool)

(assert (=> b!5118721 (=> res!2179451 e!3192438)))

(assert (=> b!5118721 (= res!2179451 (not (= (head!10933 lt!2110069) lt!2110065)))))

(assert (=> b!5118721 (= lt!2110057 lt!2110059)))

(declare-fun lt!2110061 () Unit!150337)

(declare-fun lemmaSamePrefixThenSameSuffix!2644 (List!59325 List!59325 List!59325 List!59325 List!59325) Unit!150337)

(assert (=> b!5118721 (= lt!2110061 (lemmaSamePrefixThenSameSuffix!2644 testedP!265 lt!2110057 testedP!265 lt!2110059 input!5745))))

(declare-fun b!5118722 () Bool)

(declare-fun e!3192442 () Bool)

(declare-fun tp!1428069 () Bool)

(assert (=> b!5118722 (= e!3192442 tp!1428069)))

(declare-fun tp!1428064 () Bool)

(declare-fun setNonEmpty!30257 () Bool)

(declare-fun setElem!30257 () Context!7178)

(declare-fun inv!78693 (Context!7178) Bool)

(assert (=> setNonEmpty!30257 (= setRes!30257 (and tp!1428064 (inv!78693 setElem!30257) e!3192442))))

(declare-fun setRest!30258 () (InoxSet Context!7178))

(assert (=> setNonEmpty!30257 (= z!4463 ((_ map or) (store ((as const (Array Context!7178 Bool)) false) setElem!30257 true) setRest!30258))))

(declare-fun b!5118723 () Bool)

(declare-fun tp!1428066 () Bool)

(assert (=> b!5118723 (= e!3192439 (and tp_is_empty!37683 tp!1428066))))

(declare-fun setElem!30258 () Context!7178)

(declare-fun tp!1428065 () Bool)

(declare-fun setNonEmpty!30258 () Bool)

(assert (=> setNonEmpty!30258 (= setRes!30258 (and tp!1428065 (inv!78693 setElem!30258) e!3192440))))

(declare-fun setRest!30257 () (InoxSet Context!7178))

(assert (=> setNonEmpty!30258 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7178 Bool)) false) setElem!30258 true) setRest!30257))))

(declare-fun b!5118724 () Bool)

(declare-fun e!3192434 () Bool)

(assert (=> b!5118724 (= e!3192434 (not e!3192433))))

(declare-fun res!2179452 () Bool)

(assert (=> b!5118724 (=> res!2179452 e!3192433)))

(declare-fun matchZipper!873 ((InoxSet Context!7178) List!59325) Bool)

(assert (=> b!5118724 (= res!2179452 (not (matchZipper!873 z!4463 lt!2110069)))))

(assert (=> b!5118724 (= lt!2110069 (getSuffix!3284 knownP!20 testedP!265))))

(assert (=> b!5118724 (isPrefix!5610 testedP!265 knownP!20)))

(declare-fun lt!2110055 () Unit!150337)

(assert (=> b!5118724 (= lt!2110055 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!747 knownP!20 testedP!265 input!5745))))

(declare-fun b!5118725 () Bool)

(declare-fun res!2179460 () Bool)

(assert (=> b!5118725 (=> res!2179460 e!3192435)))

(assert (=> b!5118725 (= res!2179460 (not (= (++!13030 testedP!265 lt!2110059) input!5745)))))

(declare-fun b!5118726 () Bool)

(declare-fun res!2179449 () Bool)

(assert (=> b!5118726 (=> res!2179449 e!3192438)))

(declare-fun $colon$colon!1135 (List!59325 C!28676) List!59325)

(declare-fun tail!10070 (List!59325) List!59325)

(assert (=> b!5118726 (= res!2179449 (not (= lt!2110069 ($colon$colon!1135 (tail!10070 lt!2110069) lt!2110065))))))

(declare-fun b!5118727 () Bool)

(declare-fun res!2179454 () Bool)

(assert (=> b!5118727 (=> (not res!2179454) (not e!3192434))))

(assert (=> b!5118727 (= res!2179454 (matchZipper!873 baseZ!46 knownP!20))))

(declare-fun b!5118728 () Bool)

(declare-fun tp!1428063 () Bool)

(assert (=> b!5118728 (= e!3192441 (and tp_is_empty!37683 tp!1428063))))

(declare-fun b!5118729 () Bool)

(declare-fun res!2179459 () Bool)

(assert (=> b!5118729 (=> res!2179459 e!3192433)))

(declare-fun lt!2110067 () Int)

(declare-fun size!39511 (List!59325) Int)

(assert (=> b!5118729 (= res!2179459 (>= lt!2110067 (size!39511 input!5745)))))

(declare-fun b!5118730 () Bool)

(assert (=> b!5118730 (= e!3192443 e!3192434)))

(declare-fun res!2179453 () Bool)

(assert (=> b!5118730 (=> (not res!2179453) (not e!3192434))))

(declare-fun lt!2110053 () Int)

(assert (=> b!5118730 (= res!2179453 (>= lt!2110053 lt!2110067))))

(assert (=> b!5118730 (= lt!2110067 (size!39511 testedP!265))))

(assert (=> b!5118730 (= lt!2110053 (size!39511 knownP!20))))

(declare-fun b!5118731 () Bool)

(declare-fun res!2179448 () Bool)

(assert (=> b!5118731 (=> res!2179448 e!3192433)))

(assert (=> b!5118731 (= res!2179448 (= lt!2110067 lt!2110053))))

(assert (= (and start!540192 res!2179455) b!5118720))

(assert (= (and b!5118720 res!2179462) b!5118730))

(assert (= (and b!5118730 res!2179453) b!5118727))

(assert (= (and b!5118727 res!2179454) b!5118724))

(assert (= (and b!5118724 (not res!2179452)) b!5118714))

(assert (= (and b!5118714 (not res!2179456)) b!5118712))

(assert (= (and b!5118712 (not res!2179457)) b!5118731))

(assert (= (and b!5118731 (not res!2179448)) b!5118729))

(assert (= (and b!5118729 (not res!2179459)) b!5118719))

(assert (= (and b!5118719 (not res!2179461)) b!5118717))

(assert (= (and b!5118717 (not res!2179458)) b!5118725))

(assert (= (and b!5118725 (not res!2179460)) b!5118715))

(assert (= (and b!5118715 (not res!2179450)) b!5118721))

(assert (= (and b!5118721 (not res!2179451)) b!5118726))

(assert (= (and b!5118726 (not res!2179449)) b!5118713))

(get-info :version)

(assert (= (and start!540192 ((_ is Cons!59201) input!5745)) b!5118728))

(assert (= (and start!540192 condSetEmpty!30258) setIsEmpty!30258))

(assert (= (and start!540192 (not condSetEmpty!30258)) setNonEmpty!30257))

(assert (= setNonEmpty!30257 b!5118722))

(assert (= (and start!540192 ((_ is Cons!59201) testedP!265)) b!5118718))

(assert (= (and start!540192 condSetEmpty!30257) setIsEmpty!30257))

(assert (= (and start!540192 (not condSetEmpty!30257)) setNonEmpty!30258))

(assert (= setNonEmpty!30258 b!5118716))

(assert (= (and start!540192 ((_ is Cons!59201) knownP!20)) b!5118723))

(declare-fun m!6178860 () Bool)

(assert (=> b!5118720 m!6178860))

(declare-fun m!6178862 () Bool)

(assert (=> b!5118719 m!6178862))

(declare-fun m!6178864 () Bool)

(assert (=> b!5118719 m!6178864))

(declare-fun m!6178866 () Bool)

(assert (=> b!5118719 m!6178866))

(declare-fun m!6178868 () Bool)

(assert (=> b!5118719 m!6178868))

(declare-fun m!6178870 () Bool)

(assert (=> b!5118719 m!6178870))

(declare-fun m!6178872 () Bool)

(assert (=> b!5118719 m!6178872))

(declare-fun m!6178874 () Bool)

(assert (=> b!5118719 m!6178874))

(declare-fun m!6178876 () Bool)

(assert (=> b!5118719 m!6178876))

(declare-fun m!6178878 () Bool)

(assert (=> b!5118719 m!6178878))

(declare-fun m!6178880 () Bool)

(assert (=> b!5118719 m!6178880))

(declare-fun m!6178882 () Bool)

(assert (=> b!5118719 m!6178882))

(declare-fun m!6178884 () Bool)

(assert (=> b!5118719 m!6178884))

(declare-fun m!6178886 () Bool)

(assert (=> b!5118719 m!6178886))

(declare-fun m!6178888 () Bool)

(assert (=> b!5118730 m!6178888))

(declare-fun m!6178890 () Bool)

(assert (=> b!5118730 m!6178890))

(declare-fun m!6178892 () Bool)

(assert (=> setNonEmpty!30258 m!6178892))

(declare-fun m!6178894 () Bool)

(assert (=> setNonEmpty!30257 m!6178894))

(declare-fun m!6178896 () Bool)

(assert (=> b!5118727 m!6178896))

(declare-fun m!6178898 () Bool)

(assert (=> b!5118721 m!6178898))

(declare-fun m!6178900 () Bool)

(assert (=> b!5118721 m!6178900))

(declare-fun m!6178902 () Bool)

(assert (=> b!5118724 m!6178902))

(declare-fun m!6178904 () Bool)

(assert (=> b!5118724 m!6178904))

(declare-fun m!6178906 () Bool)

(assert (=> b!5118724 m!6178906))

(declare-fun m!6178908 () Bool)

(assert (=> b!5118724 m!6178908))

(declare-fun m!6178910 () Bool)

(assert (=> b!5118712 m!6178910))

(declare-fun m!6178912 () Bool)

(assert (=> start!540192 m!6178912))

(declare-fun m!6178914 () Bool)

(assert (=> b!5118725 m!6178914))

(declare-fun m!6178916 () Bool)

(assert (=> b!5118715 m!6178916))

(declare-fun m!6178918 () Bool)

(assert (=> b!5118715 m!6178918))

(declare-fun m!6178920 () Bool)

(assert (=> b!5118715 m!6178920))

(declare-fun m!6178922 () Bool)

(assert (=> b!5118726 m!6178922))

(assert (=> b!5118726 m!6178922))

(declare-fun m!6178924 () Bool)

(assert (=> b!5118726 m!6178924))

(declare-fun m!6178926 () Bool)

(assert (=> b!5118714 m!6178926))

(declare-fun m!6178928 () Bool)

(assert (=> b!5118729 m!6178928))

(declare-fun m!6178930 () Bool)

(assert (=> b!5118717 m!6178930))

(declare-fun m!6178932 () Bool)

(assert (=> b!5118717 m!6178932))

(check-sat (not b!5118724) (not b!5118728) (not b!5118717) tp_is_empty!37683 (not b!5118715) (not b!5118716) (not b!5118730) (not b!5118721) (not setNonEmpty!30258) (not b!5118729) (not b!5118726) (not setNonEmpty!30257) (not b!5118725) (not start!540192) (not b!5118720) (not b!5118723) (not b!5118722) (not b!5118714) (not b!5118727) (not b!5118719) (not b!5118712) (not b!5118718))
(check-sat)
(get-model)

(declare-fun d!1654142 () Bool)

(declare-fun lambda!251136 () Int)

(declare-fun forall!13601 (List!59326 Int) Bool)

(assert (=> d!1654142 (= (inv!78693 setElem!30258) (forall!13601 (exprs!4089 setElem!30258) lambda!251136))))

(declare-fun bs!1192543 () Bool)

(assert (= bs!1192543 d!1654142))

(declare-fun m!6179080 () Bool)

(assert (=> bs!1192543 m!6179080))

(assert (=> setNonEmpty!30258 d!1654142))

(declare-fun b!5118839 () Bool)

(declare-fun e!3192504 () Bool)

(assert (=> b!5118839 (= e!3192504 (>= (size!39511 input!5745) (size!39511 testedP!265)))))

(declare-fun d!1654198 () Bool)

(assert (=> d!1654198 e!3192504))

(declare-fun res!2179514 () Bool)

(assert (=> d!1654198 (=> res!2179514 e!3192504)))

(declare-fun lt!2110112 () Bool)

(assert (=> d!1654198 (= res!2179514 (not lt!2110112))))

(declare-fun e!3192505 () Bool)

(assert (=> d!1654198 (= lt!2110112 e!3192505)))

(declare-fun res!2179515 () Bool)

(assert (=> d!1654198 (=> res!2179515 e!3192505)))

(assert (=> d!1654198 (= res!2179515 ((_ is Nil!59201) testedP!265))))

(assert (=> d!1654198 (= (isPrefix!5610 testedP!265 input!5745) lt!2110112)))

(declare-fun b!5118838 () Bool)

(declare-fun e!3192503 () Bool)

(assert (=> b!5118838 (= e!3192503 (isPrefix!5610 (tail!10070 testedP!265) (tail!10070 input!5745)))))

(declare-fun b!5118836 () Bool)

(assert (=> b!5118836 (= e!3192505 e!3192503)))

(declare-fun res!2179513 () Bool)

(assert (=> b!5118836 (=> (not res!2179513) (not e!3192503))))

(assert (=> b!5118836 (= res!2179513 (not ((_ is Nil!59201) input!5745)))))

(declare-fun b!5118837 () Bool)

(declare-fun res!2179516 () Bool)

(assert (=> b!5118837 (=> (not res!2179516) (not e!3192503))))

(assert (=> b!5118837 (= res!2179516 (= (head!10933 testedP!265) (head!10933 input!5745)))))

(assert (= (and d!1654198 (not res!2179515)) b!5118836))

(assert (= (and b!5118836 res!2179513) b!5118837))

(assert (= (and b!5118837 res!2179516) b!5118838))

(assert (= (and d!1654198 (not res!2179514)) b!5118839))

(assert (=> b!5118839 m!6178928))

(assert (=> b!5118839 m!6178888))

(declare-fun m!6179098 () Bool)

(assert (=> b!5118838 m!6179098))

(declare-fun m!6179100 () Bool)

(assert (=> b!5118838 m!6179100))

(assert (=> b!5118838 m!6179098))

(assert (=> b!5118838 m!6179100))

(declare-fun m!6179104 () Bool)

(assert (=> b!5118838 m!6179104))

(declare-fun m!6179106 () Bool)

(assert (=> b!5118837 m!6179106))

(declare-fun m!6179108 () Bool)

(assert (=> b!5118837 m!6179108))

(assert (=> start!540192 d!1654198))

(declare-fun b!5118854 () Bool)

(declare-fun e!3192514 () List!59325)

(assert (=> b!5118854 (= e!3192514 lt!2110068)))

(declare-fun b!5118855 () Bool)

(assert (=> b!5118855 (= e!3192514 (Cons!59201 (h!65649 lt!2110060) (++!13030 (t!372338 lt!2110060) lt!2110068)))))

(declare-fun b!5118856 () Bool)

(declare-fun res!2179526 () Bool)

(declare-fun e!3192515 () Bool)

(assert (=> b!5118856 (=> (not res!2179526) (not e!3192515))))

(declare-fun lt!2110118 () List!59325)

(assert (=> b!5118856 (= res!2179526 (= (size!39511 lt!2110118) (+ (size!39511 lt!2110060) (size!39511 lt!2110068))))))

(declare-fun d!1654206 () Bool)

(assert (=> d!1654206 e!3192515))

(declare-fun res!2179525 () Bool)

(assert (=> d!1654206 (=> (not res!2179525) (not e!3192515))))

(declare-fun content!10527 (List!59325) (InoxSet C!28676))

(assert (=> d!1654206 (= res!2179525 (= (content!10527 lt!2110118) ((_ map or) (content!10527 lt!2110060) (content!10527 lt!2110068))))))

(assert (=> d!1654206 (= lt!2110118 e!3192514)))

(declare-fun c!879584 () Bool)

(assert (=> d!1654206 (= c!879584 ((_ is Nil!59201) lt!2110060))))

(assert (=> d!1654206 (= (++!13030 lt!2110060 lt!2110068) lt!2110118)))

(declare-fun b!5118857 () Bool)

(assert (=> b!5118857 (= e!3192515 (or (not (= lt!2110068 Nil!59201)) (= lt!2110118 lt!2110060)))))

(assert (= (and d!1654206 c!879584) b!5118854))

(assert (= (and d!1654206 (not c!879584)) b!5118855))

(assert (= (and d!1654206 res!2179525) b!5118856))

(assert (= (and b!5118856 res!2179526) b!5118857))

(declare-fun m!6179116 () Bool)

(assert (=> b!5118855 m!6179116))

(declare-fun m!6179118 () Bool)

(assert (=> b!5118856 m!6179118))

(declare-fun m!6179120 () Bool)

(assert (=> b!5118856 m!6179120))

(declare-fun m!6179122 () Bool)

(assert (=> b!5118856 m!6179122))

(declare-fun m!6179124 () Bool)

(assert (=> d!1654206 m!6179124))

(declare-fun m!6179126 () Bool)

(assert (=> d!1654206 m!6179126))

(declare-fun m!6179128 () Bool)

(assert (=> d!1654206 m!6179128))

(assert (=> b!5118717 d!1654206))

(declare-fun b!5118858 () Bool)

(declare-fun e!3192516 () List!59325)

(assert (=> b!5118858 (= e!3192516 lt!2110069)))

(declare-fun b!5118859 () Bool)

(assert (=> b!5118859 (= e!3192516 (Cons!59201 (h!65649 testedP!265) (++!13030 (t!372338 testedP!265) lt!2110069)))))

(declare-fun b!5118860 () Bool)

(declare-fun res!2179528 () Bool)

(declare-fun e!3192517 () Bool)

(assert (=> b!5118860 (=> (not res!2179528) (not e!3192517))))

(declare-fun lt!2110119 () List!59325)

(assert (=> b!5118860 (= res!2179528 (= (size!39511 lt!2110119) (+ (size!39511 testedP!265) (size!39511 lt!2110069))))))

(declare-fun d!1654214 () Bool)

(assert (=> d!1654214 e!3192517))

(declare-fun res!2179527 () Bool)

(assert (=> d!1654214 (=> (not res!2179527) (not e!3192517))))

(assert (=> d!1654214 (= res!2179527 (= (content!10527 lt!2110119) ((_ map or) (content!10527 testedP!265) (content!10527 lt!2110069))))))

(assert (=> d!1654214 (= lt!2110119 e!3192516)))

(declare-fun c!879585 () Bool)

(assert (=> d!1654214 (= c!879585 ((_ is Nil!59201) testedP!265))))

(assert (=> d!1654214 (= (++!13030 testedP!265 lt!2110069) lt!2110119)))

(declare-fun b!5118861 () Bool)

(assert (=> b!5118861 (= e!3192517 (or (not (= lt!2110069 Nil!59201)) (= lt!2110119 testedP!265)))))

(assert (= (and d!1654214 c!879585) b!5118858))

(assert (= (and d!1654214 (not c!879585)) b!5118859))

(assert (= (and d!1654214 res!2179527) b!5118860))

(assert (= (and b!5118860 res!2179528) b!5118861))

(declare-fun m!6179130 () Bool)

(assert (=> b!5118859 m!6179130))

(declare-fun m!6179132 () Bool)

(assert (=> b!5118860 m!6179132))

(assert (=> b!5118860 m!6178888))

(declare-fun m!6179134 () Bool)

(assert (=> b!5118860 m!6179134))

(declare-fun m!6179136 () Bool)

(assert (=> d!1654214 m!6179136))

(declare-fun m!6179138 () Bool)

(assert (=> d!1654214 m!6179138))

(declare-fun m!6179140 () Bool)

(assert (=> d!1654214 m!6179140))

(assert (=> b!5118717 d!1654214))

(declare-fun d!1654216 () Bool)

(declare-fun c!879588 () Bool)

(declare-fun isEmpty!31927 (List!59325) Bool)

(assert (=> d!1654216 (= c!879588 (isEmpty!31927 lt!2110069))))

(declare-fun e!3192520 () Bool)

(assert (=> d!1654216 (= (matchZipper!873 z!4463 lt!2110069) e!3192520)))

(declare-fun b!5118866 () Bool)

(declare-fun nullableZipper!1024 ((InoxSet Context!7178)) Bool)

(assert (=> b!5118866 (= e!3192520 (nullableZipper!1024 z!4463))))

(declare-fun b!5118867 () Bool)

(assert (=> b!5118867 (= e!3192520 (matchZipper!873 (derivationStepZipper!840 z!4463 (head!10933 lt!2110069)) (tail!10070 lt!2110069)))))

(assert (= (and d!1654216 c!879588) b!5118866))

(assert (= (and d!1654216 (not c!879588)) b!5118867))

(declare-fun m!6179142 () Bool)

(assert (=> d!1654216 m!6179142))

(declare-fun m!6179144 () Bool)

(assert (=> b!5118866 m!6179144))

(assert (=> b!5118867 m!6178898))

(assert (=> b!5118867 m!6178898))

(declare-fun m!6179146 () Bool)

(assert (=> b!5118867 m!6179146))

(assert (=> b!5118867 m!6178922))

(assert (=> b!5118867 m!6179146))

(assert (=> b!5118867 m!6178922))

(declare-fun m!6179148 () Bool)

(assert (=> b!5118867 m!6179148))

(assert (=> b!5118724 d!1654216))

(declare-fun d!1654218 () Bool)

(declare-fun lt!2110132 () List!59325)

(assert (=> d!1654218 (= (++!13030 testedP!265 lt!2110132) knownP!20)))

(declare-fun e!3192525 () List!59325)

(assert (=> d!1654218 (= lt!2110132 e!3192525)))

(declare-fun c!879597 () Bool)

(assert (=> d!1654218 (= c!879597 ((_ is Cons!59201) testedP!265))))

(assert (=> d!1654218 (>= (size!39511 knownP!20) (size!39511 testedP!265))))

(assert (=> d!1654218 (= (getSuffix!3284 knownP!20 testedP!265) lt!2110132)))

(declare-fun b!5118876 () Bool)

(assert (=> b!5118876 (= e!3192525 (getSuffix!3284 (tail!10070 knownP!20) (t!372338 testedP!265)))))

(declare-fun b!5118877 () Bool)

(assert (=> b!5118877 (= e!3192525 knownP!20)))

(assert (= (and d!1654218 c!879597) b!5118876))

(assert (= (and d!1654218 (not c!879597)) b!5118877))

(declare-fun m!6179150 () Bool)

(assert (=> d!1654218 m!6179150))

(assert (=> d!1654218 m!6178890))

(assert (=> d!1654218 m!6178888))

(declare-fun m!6179152 () Bool)

(assert (=> b!5118876 m!6179152))

(assert (=> b!5118876 m!6179152))

(declare-fun m!6179154 () Bool)

(assert (=> b!5118876 m!6179154))

(assert (=> b!5118724 d!1654218))

(declare-fun b!5118881 () Bool)

(declare-fun e!3192529 () Bool)

(assert (=> b!5118881 (= e!3192529 (>= (size!39511 knownP!20) (size!39511 testedP!265)))))

(declare-fun d!1654220 () Bool)

(assert (=> d!1654220 e!3192529))

(declare-fun res!2179530 () Bool)

(assert (=> d!1654220 (=> res!2179530 e!3192529)))

(declare-fun lt!2110133 () Bool)

(assert (=> d!1654220 (= res!2179530 (not lt!2110133))))

(declare-fun e!3192530 () Bool)

(assert (=> d!1654220 (= lt!2110133 e!3192530)))

(declare-fun res!2179531 () Bool)

(assert (=> d!1654220 (=> res!2179531 e!3192530)))

(assert (=> d!1654220 (= res!2179531 ((_ is Nil!59201) testedP!265))))

(assert (=> d!1654220 (= (isPrefix!5610 testedP!265 knownP!20) lt!2110133)))

(declare-fun b!5118880 () Bool)

(declare-fun e!3192528 () Bool)

(assert (=> b!5118880 (= e!3192528 (isPrefix!5610 (tail!10070 testedP!265) (tail!10070 knownP!20)))))

(declare-fun b!5118878 () Bool)

(assert (=> b!5118878 (= e!3192530 e!3192528)))

(declare-fun res!2179529 () Bool)

(assert (=> b!5118878 (=> (not res!2179529) (not e!3192528))))

(assert (=> b!5118878 (= res!2179529 (not ((_ is Nil!59201) knownP!20)))))

(declare-fun b!5118879 () Bool)

(declare-fun res!2179532 () Bool)

(assert (=> b!5118879 (=> (not res!2179532) (not e!3192528))))

(assert (=> b!5118879 (= res!2179532 (= (head!10933 testedP!265) (head!10933 knownP!20)))))

(assert (= (and d!1654220 (not res!2179531)) b!5118878))

(assert (= (and b!5118878 res!2179529) b!5118879))

(assert (= (and b!5118879 res!2179532) b!5118880))

(assert (= (and d!1654220 (not res!2179530)) b!5118881))

(assert (=> b!5118881 m!6178890))

(assert (=> b!5118881 m!6178888))

(assert (=> b!5118880 m!6179098))

(assert (=> b!5118880 m!6179152))

(assert (=> b!5118880 m!6179098))

(assert (=> b!5118880 m!6179152))

(declare-fun m!6179156 () Bool)

(assert (=> b!5118880 m!6179156))

(assert (=> b!5118879 m!6179106))

(declare-fun m!6179158 () Bool)

(assert (=> b!5118879 m!6179158))

(assert (=> b!5118724 d!1654220))

(declare-fun d!1654222 () Bool)

(assert (=> d!1654222 (isPrefix!5610 testedP!265 knownP!20)))

(declare-fun lt!2110142 () Unit!150337)

(declare-fun choose!37610 (List!59325 List!59325 List!59325) Unit!150337)

(assert (=> d!1654222 (= lt!2110142 (choose!37610 knownP!20 testedP!265 input!5745))))

(assert (=> d!1654222 (isPrefix!5610 knownP!20 input!5745)))

(assert (=> d!1654222 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!747 knownP!20 testedP!265 input!5745) lt!2110142)))

(declare-fun bs!1192547 () Bool)

(assert (= bs!1192547 d!1654222))

(assert (=> bs!1192547 m!6178906))

(declare-fun m!6179160 () Bool)

(assert (=> bs!1192547 m!6179160))

(assert (=> bs!1192547 m!6178860))

(assert (=> b!5118724 d!1654222))

(declare-fun d!1654224 () Bool)

(declare-fun c!879605 () Bool)

(assert (=> d!1654224 (= c!879605 ((_ is Cons!59201) testedP!265))))

(declare-fun e!3192536 () (InoxSet Context!7178))

(assert (=> d!1654224 (= (derivationZipper!104 baseZ!46 testedP!265) e!3192536)))

(declare-fun b!5118888 () Bool)

(assert (=> b!5118888 (= e!3192536 (derivationZipper!104 (derivationStepZipper!840 baseZ!46 (h!65649 testedP!265)) (t!372338 testedP!265)))))

(declare-fun b!5118889 () Bool)

(assert (=> b!5118889 (= e!3192536 baseZ!46)))

(assert (= (and d!1654224 c!879605) b!5118888))

(assert (= (and d!1654224 (not c!879605)) b!5118889))

(declare-fun m!6179162 () Bool)

(assert (=> b!5118888 m!6179162))

(assert (=> b!5118888 m!6179162))

(declare-fun m!6179164 () Bool)

(assert (=> b!5118888 m!6179164))

(assert (=> b!5118714 d!1654224))

(declare-fun b!5118890 () Bool)

(declare-fun e!3192537 () List!59325)

(assert (=> b!5118890 (= e!3192537 lt!2110057)))

(declare-fun b!5118891 () Bool)

(assert (=> b!5118891 (= e!3192537 (Cons!59201 (h!65649 testedP!265) (++!13030 (t!372338 testedP!265) lt!2110057)))))

(declare-fun b!5118892 () Bool)

(declare-fun res!2179534 () Bool)

(declare-fun e!3192538 () Bool)

(assert (=> b!5118892 (=> (not res!2179534) (not e!3192538))))

(declare-fun lt!2110151 () List!59325)

(assert (=> b!5118892 (= res!2179534 (= (size!39511 lt!2110151) (+ (size!39511 testedP!265) (size!39511 lt!2110057))))))

(declare-fun d!1654226 () Bool)

(assert (=> d!1654226 e!3192538))

(declare-fun res!2179533 () Bool)

(assert (=> d!1654226 (=> (not res!2179533) (not e!3192538))))

(assert (=> d!1654226 (= res!2179533 (= (content!10527 lt!2110151) ((_ map or) (content!10527 testedP!265) (content!10527 lt!2110057))))))

(assert (=> d!1654226 (= lt!2110151 e!3192537)))

(declare-fun c!879606 () Bool)

(assert (=> d!1654226 (= c!879606 ((_ is Nil!59201) testedP!265))))

(assert (=> d!1654226 (= (++!13030 testedP!265 lt!2110057) lt!2110151)))

(declare-fun b!5118893 () Bool)

(assert (=> b!5118893 (= e!3192538 (or (not (= lt!2110057 Nil!59201)) (= lt!2110151 testedP!265)))))

(assert (= (and d!1654226 c!879606) b!5118890))

(assert (= (and d!1654226 (not c!879606)) b!5118891))

(assert (= (and d!1654226 res!2179533) b!5118892))

(assert (= (and b!5118892 res!2179534) b!5118893))

(declare-fun m!6179166 () Bool)

(assert (=> b!5118891 m!6179166))

(declare-fun m!6179168 () Bool)

(assert (=> b!5118892 m!6179168))

(assert (=> b!5118892 m!6178888))

(declare-fun m!6179170 () Bool)

(assert (=> b!5118892 m!6179170))

(declare-fun m!6179172 () Bool)

(assert (=> d!1654226 m!6179172))

(assert (=> d!1654226 m!6179138))

(declare-fun m!6179174 () Bool)

(assert (=> d!1654226 m!6179174))

(assert (=> b!5118715 d!1654226))

(declare-fun b!5118894 () Bool)

(declare-fun e!3192539 () List!59325)

(assert (=> b!5118894 (= e!3192539 lt!2110068)))

(declare-fun b!5118895 () Bool)

(assert (=> b!5118895 (= e!3192539 (Cons!59201 (h!65649 lt!2110069) (++!13030 (t!372338 lt!2110069) lt!2110068)))))

(declare-fun b!5118896 () Bool)

(declare-fun res!2179536 () Bool)

(declare-fun e!3192540 () Bool)

(assert (=> b!5118896 (=> (not res!2179536) (not e!3192540))))

(declare-fun lt!2110152 () List!59325)

(assert (=> b!5118896 (= res!2179536 (= (size!39511 lt!2110152) (+ (size!39511 lt!2110069) (size!39511 lt!2110068))))))

(declare-fun d!1654228 () Bool)

(assert (=> d!1654228 e!3192540))

(declare-fun res!2179535 () Bool)

(assert (=> d!1654228 (=> (not res!2179535) (not e!3192540))))

(assert (=> d!1654228 (= res!2179535 (= (content!10527 lt!2110152) ((_ map or) (content!10527 lt!2110069) (content!10527 lt!2110068))))))

(assert (=> d!1654228 (= lt!2110152 e!3192539)))

(declare-fun c!879607 () Bool)

(assert (=> d!1654228 (= c!879607 ((_ is Nil!59201) lt!2110069))))

(assert (=> d!1654228 (= (++!13030 lt!2110069 lt!2110068) lt!2110152)))

(declare-fun b!5118897 () Bool)

(assert (=> b!5118897 (= e!3192540 (or (not (= lt!2110068 Nil!59201)) (= lt!2110152 lt!2110069)))))

(assert (= (and d!1654228 c!879607) b!5118894))

(assert (= (and d!1654228 (not c!879607)) b!5118895))

(assert (= (and d!1654228 res!2179535) b!5118896))

(assert (= (and b!5118896 res!2179536) b!5118897))

(declare-fun m!6179176 () Bool)

(assert (=> b!5118895 m!6179176))

(declare-fun m!6179178 () Bool)

(assert (=> b!5118896 m!6179178))

(assert (=> b!5118896 m!6179134))

(assert (=> b!5118896 m!6179122))

(declare-fun m!6179180 () Bool)

(assert (=> d!1654228 m!6179180))

(assert (=> d!1654228 m!6179140))

(assert (=> d!1654228 m!6179128))

(assert (=> b!5118715 d!1654228))

(declare-fun d!1654230 () Bool)

(assert (=> d!1654230 (= (++!13030 (++!13030 testedP!265 lt!2110069) lt!2110068) (++!13030 testedP!265 (++!13030 lt!2110069 lt!2110068)))))

(declare-fun lt!2110156 () Unit!150337)

(declare-fun choose!37612 (List!59325 List!59325 List!59325) Unit!150337)

(assert (=> d!1654230 (= lt!2110156 (choose!37612 testedP!265 lt!2110069 lt!2110068))))

(assert (=> d!1654230 (= (lemmaConcatAssociativity!2778 testedP!265 lt!2110069 lt!2110068) lt!2110156)))

(declare-fun bs!1192553 () Bool)

(assert (= bs!1192553 d!1654230))

(declare-fun m!6179200 () Bool)

(assert (=> bs!1192553 m!6179200))

(assert (=> bs!1192553 m!6178918))

(declare-fun m!6179202 () Bool)

(assert (=> bs!1192553 m!6179202))

(assert (=> bs!1192553 m!6178918))

(assert (=> bs!1192553 m!6178932))

(assert (=> bs!1192553 m!6178932))

(declare-fun m!6179204 () Bool)

(assert (=> bs!1192553 m!6179204))

(assert (=> b!5118715 d!1654230))

(declare-fun bs!1192554 () Bool)

(declare-fun d!1654240 () Bool)

(assert (= bs!1192554 (and d!1654240 d!1654142)))

(declare-fun lambda!251156 () Int)

(assert (=> bs!1192554 (= lambda!251156 lambda!251136)))

(assert (=> d!1654240 (= (inv!78693 setElem!30257) (forall!13601 (exprs!4089 setElem!30257) lambda!251156))))

(declare-fun bs!1192555 () Bool)

(assert (= bs!1192555 d!1654240))

(declare-fun m!6179206 () Bool)

(assert (=> bs!1192555 m!6179206))

(assert (=> setNonEmpty!30257 d!1654240))

(declare-fun b!5118912 () Bool)

(declare-fun e!3192548 () Bool)

(assert (=> b!5118912 (= e!3192548 (>= (size!39511 input!5745) (size!39511 knownP!20)))))

(declare-fun d!1654242 () Bool)

(assert (=> d!1654242 e!3192548))

(declare-fun res!2179538 () Bool)

(assert (=> d!1654242 (=> res!2179538 e!3192548)))

(declare-fun lt!2110157 () Bool)

(assert (=> d!1654242 (= res!2179538 (not lt!2110157))))

(declare-fun e!3192549 () Bool)

(assert (=> d!1654242 (= lt!2110157 e!3192549)))

(declare-fun res!2179539 () Bool)

(assert (=> d!1654242 (=> res!2179539 e!3192549)))

(assert (=> d!1654242 (= res!2179539 ((_ is Nil!59201) knownP!20))))

(assert (=> d!1654242 (= (isPrefix!5610 knownP!20 input!5745) lt!2110157)))

(declare-fun b!5118911 () Bool)

(declare-fun e!3192547 () Bool)

(assert (=> b!5118911 (= e!3192547 (isPrefix!5610 (tail!10070 knownP!20) (tail!10070 input!5745)))))

(declare-fun b!5118909 () Bool)

(assert (=> b!5118909 (= e!3192549 e!3192547)))

(declare-fun res!2179537 () Bool)

(assert (=> b!5118909 (=> (not res!2179537) (not e!3192547))))

(assert (=> b!5118909 (= res!2179537 (not ((_ is Nil!59201) input!5745)))))

(declare-fun b!5118910 () Bool)

(declare-fun res!2179540 () Bool)

(assert (=> b!5118910 (=> (not res!2179540) (not e!3192547))))

(assert (=> b!5118910 (= res!2179540 (= (head!10933 knownP!20) (head!10933 input!5745)))))

(assert (= (and d!1654242 (not res!2179539)) b!5118909))

(assert (= (and b!5118909 res!2179537) b!5118910))

(assert (= (and b!5118910 res!2179540) b!5118911))

(assert (= (and d!1654242 (not res!2179538)) b!5118912))

(assert (=> b!5118912 m!6178928))

(assert (=> b!5118912 m!6178890))

(assert (=> b!5118911 m!6179152))

(assert (=> b!5118911 m!6179100))

(assert (=> b!5118911 m!6179152))

(assert (=> b!5118911 m!6179100))

(declare-fun m!6179208 () Bool)

(assert (=> b!5118911 m!6179208))

(assert (=> b!5118910 m!6179158))

(assert (=> b!5118910 m!6179108))

(assert (=> b!5118720 d!1654242))

(declare-fun d!1654244 () Bool)

(declare-fun lt!2110158 () List!59325)

(assert (=> d!1654244 (= (++!13030 testedP!265 lt!2110158) input!5745)))

(declare-fun e!3192552 () List!59325)

(assert (=> d!1654244 (= lt!2110158 e!3192552)))

(declare-fun c!879609 () Bool)

(assert (=> d!1654244 (= c!879609 ((_ is Cons!59201) testedP!265))))

(assert (=> d!1654244 (>= (size!39511 input!5745) (size!39511 testedP!265))))

(assert (=> d!1654244 (= (getSuffix!3284 input!5745 testedP!265) lt!2110158)))

(declare-fun b!5118917 () Bool)

(assert (=> b!5118917 (= e!3192552 (getSuffix!3284 (tail!10070 input!5745) (t!372338 testedP!265)))))

(declare-fun b!5118918 () Bool)

(assert (=> b!5118918 (= e!3192552 input!5745)))

(assert (= (and d!1654244 c!879609) b!5118917))

(assert (= (and d!1654244 (not c!879609)) b!5118918))

(declare-fun m!6179210 () Bool)

(assert (=> d!1654244 m!6179210))

(assert (=> d!1654244 m!6178928))

(assert (=> d!1654244 m!6178888))

(assert (=> b!5118917 m!6179100))

(assert (=> b!5118917 m!6179100))

(declare-fun m!6179212 () Bool)

(assert (=> b!5118917 m!6179212))

(assert (=> b!5118719 d!1654244))

(declare-fun d!1654246 () Bool)

(declare-fun c!879610 () Bool)

(assert (=> d!1654246 (= c!879610 ((_ is Cons!59201) lt!2110063))))

(declare-fun e!3192555 () (InoxSet Context!7178))

(assert (=> d!1654246 (= (derivationZipper!104 baseZ!46 lt!2110063) e!3192555)))

(declare-fun b!5118921 () Bool)

(assert (=> b!5118921 (= e!3192555 (derivationZipper!104 (derivationStepZipper!840 baseZ!46 (h!65649 lt!2110063)) (t!372338 lt!2110063)))))

(declare-fun b!5118922 () Bool)

(assert (=> b!5118922 (= e!3192555 baseZ!46)))

(assert (= (and d!1654246 c!879610) b!5118921))

(assert (= (and d!1654246 (not c!879610)) b!5118922))

(declare-fun m!6179214 () Bool)

(assert (=> b!5118921 m!6179214))

(assert (=> b!5118921 m!6179214))

(declare-fun m!6179216 () Bool)

(assert (=> b!5118921 m!6179216))

(assert (=> b!5118719 d!1654246))

(declare-fun b!5118923 () Bool)

(declare-fun e!3192556 () List!59325)

(assert (=> b!5118923 (= e!3192556 (Cons!59201 lt!2110065 Nil!59201))))

(declare-fun b!5118924 () Bool)

(assert (=> b!5118924 (= e!3192556 (Cons!59201 (h!65649 testedP!265) (++!13030 (t!372338 testedP!265) (Cons!59201 lt!2110065 Nil!59201))))))

(declare-fun b!5118925 () Bool)

(declare-fun res!2179542 () Bool)

(declare-fun e!3192557 () Bool)

(assert (=> b!5118925 (=> (not res!2179542) (not e!3192557))))

(declare-fun lt!2110159 () List!59325)

(assert (=> b!5118925 (= res!2179542 (= (size!39511 lt!2110159) (+ (size!39511 testedP!265) (size!39511 (Cons!59201 lt!2110065 Nil!59201)))))))

(declare-fun d!1654248 () Bool)

(assert (=> d!1654248 e!3192557))

(declare-fun res!2179541 () Bool)

(assert (=> d!1654248 (=> (not res!2179541) (not e!3192557))))

(assert (=> d!1654248 (= res!2179541 (= (content!10527 lt!2110159) ((_ map or) (content!10527 testedP!265) (content!10527 (Cons!59201 lt!2110065 Nil!59201)))))))

(assert (=> d!1654248 (= lt!2110159 e!3192556)))

(declare-fun c!879611 () Bool)

(assert (=> d!1654248 (= c!879611 ((_ is Nil!59201) testedP!265))))

(assert (=> d!1654248 (= (++!13030 testedP!265 (Cons!59201 lt!2110065 Nil!59201)) lt!2110159)))

(declare-fun b!5118926 () Bool)

(assert (=> b!5118926 (= e!3192557 (or (not (= (Cons!59201 lt!2110065 Nil!59201) Nil!59201)) (= lt!2110159 testedP!265)))))

(assert (= (and d!1654248 c!879611) b!5118923))

(assert (= (and d!1654248 (not c!879611)) b!5118924))

(assert (= (and d!1654248 res!2179541) b!5118925))

(assert (= (and b!5118925 res!2179542) b!5118926))

(declare-fun m!6179220 () Bool)

(assert (=> b!5118924 m!6179220))

(declare-fun m!6179222 () Bool)

(assert (=> b!5118925 m!6179222))

(assert (=> b!5118925 m!6178888))

(declare-fun m!6179224 () Bool)

(assert (=> b!5118925 m!6179224))

(declare-fun m!6179226 () Bool)

(assert (=> d!1654248 m!6179226))

(assert (=> d!1654248 m!6179138))

(declare-fun m!6179228 () Bool)

(assert (=> d!1654248 m!6179228))

(assert (=> b!5118719 d!1654248))

(declare-fun b!5118930 () Bool)

(declare-fun e!3192561 () List!59325)

(assert (=> b!5118930 (= e!3192561 lt!2110068)))

(declare-fun b!5118931 () Bool)

(assert (=> b!5118931 (= e!3192561 (Cons!59201 (h!65649 knownP!20) (++!13030 (t!372338 knownP!20) lt!2110068)))))

(declare-fun b!5118932 () Bool)

(declare-fun res!2179544 () Bool)

(declare-fun e!3192562 () Bool)

(assert (=> b!5118932 (=> (not res!2179544) (not e!3192562))))

(declare-fun lt!2110160 () List!59325)

(assert (=> b!5118932 (= res!2179544 (= (size!39511 lt!2110160) (+ (size!39511 knownP!20) (size!39511 lt!2110068))))))

(declare-fun d!1654250 () Bool)

(assert (=> d!1654250 e!3192562))

(declare-fun res!2179543 () Bool)

(assert (=> d!1654250 (=> (not res!2179543) (not e!3192562))))

(assert (=> d!1654250 (= res!2179543 (= (content!10527 lt!2110160) ((_ map or) (content!10527 knownP!20) (content!10527 lt!2110068))))))

(assert (=> d!1654250 (= lt!2110160 e!3192561)))

(declare-fun c!879612 () Bool)

(assert (=> d!1654250 (= c!879612 ((_ is Nil!59201) knownP!20))))

(assert (=> d!1654250 (= (++!13030 knownP!20 lt!2110068) lt!2110160)))

(declare-fun b!5118933 () Bool)

(assert (=> b!5118933 (= e!3192562 (or (not (= lt!2110068 Nil!59201)) (= lt!2110160 knownP!20)))))

(assert (= (and d!1654250 c!879612) b!5118930))

(assert (= (and d!1654250 (not c!879612)) b!5118931))

(assert (= (and d!1654250 res!2179543) b!5118932))

(assert (= (and b!5118932 res!2179544) b!5118933))

(declare-fun m!6179232 () Bool)

(assert (=> b!5118931 m!6179232))

(declare-fun m!6179234 () Bool)

(assert (=> b!5118932 m!6179234))

(assert (=> b!5118932 m!6178890))

(assert (=> b!5118932 m!6179122))

(declare-fun m!6179236 () Bool)

(assert (=> d!1654250 m!6179236))

(declare-fun m!6179238 () Bool)

(assert (=> d!1654250 m!6179238))

(assert (=> d!1654250 m!6179128))

(assert (=> b!5118719 d!1654250))

(declare-fun b!5118938 () Bool)

(declare-fun e!3192565 () Bool)

(assert (=> b!5118938 (= e!3192565 (>= (size!39511 input!5745) (size!39511 lt!2110063)))))

(declare-fun d!1654252 () Bool)

(assert (=> d!1654252 e!3192565))

(declare-fun res!2179546 () Bool)

(assert (=> d!1654252 (=> res!2179546 e!3192565)))

(declare-fun lt!2110161 () Bool)

(assert (=> d!1654252 (= res!2179546 (not lt!2110161))))

(declare-fun e!3192566 () Bool)

(assert (=> d!1654252 (= lt!2110161 e!3192566)))

(declare-fun res!2179547 () Bool)

(assert (=> d!1654252 (=> res!2179547 e!3192566)))

(assert (=> d!1654252 (= res!2179547 ((_ is Nil!59201) lt!2110063))))

(assert (=> d!1654252 (= (isPrefix!5610 lt!2110063 input!5745) lt!2110161)))

(declare-fun b!5118937 () Bool)

(declare-fun e!3192564 () Bool)

(assert (=> b!5118937 (= e!3192564 (isPrefix!5610 (tail!10070 lt!2110063) (tail!10070 input!5745)))))

(declare-fun b!5118935 () Bool)

(assert (=> b!5118935 (= e!3192566 e!3192564)))

(declare-fun res!2179545 () Bool)

(assert (=> b!5118935 (=> (not res!2179545) (not e!3192564))))

(assert (=> b!5118935 (= res!2179545 (not ((_ is Nil!59201) input!5745)))))

(declare-fun b!5118936 () Bool)

(declare-fun res!2179548 () Bool)

(assert (=> b!5118936 (=> (not res!2179548) (not e!3192564))))

(assert (=> b!5118936 (= res!2179548 (= (head!10933 lt!2110063) (head!10933 input!5745)))))

(assert (= (and d!1654252 (not res!2179547)) b!5118935))

(assert (= (and b!5118935 res!2179545) b!5118936))

(assert (= (and b!5118936 res!2179548) b!5118937))

(assert (= (and d!1654252 (not res!2179546)) b!5118938))

(assert (=> b!5118938 m!6178928))

(declare-fun m!6179240 () Bool)

(assert (=> b!5118938 m!6179240))

(declare-fun m!6179242 () Bool)

(assert (=> b!5118937 m!6179242))

(assert (=> b!5118937 m!6179100))

(assert (=> b!5118937 m!6179242))

(assert (=> b!5118937 m!6179100))

(declare-fun m!6179244 () Bool)

(assert (=> b!5118937 m!6179244))

(declare-fun m!6179246 () Bool)

(assert (=> b!5118936 m!6179246))

(assert (=> b!5118936 m!6179108))

(assert (=> b!5118719 d!1654252))

(declare-fun d!1654254 () Bool)

(declare-fun lt!2110162 () List!59325)

(assert (=> d!1654254 (= (++!13030 lt!2110063 lt!2110162) knownP!20)))

(declare-fun e!3192567 () List!59325)

(assert (=> d!1654254 (= lt!2110162 e!3192567)))

(declare-fun c!879613 () Bool)

(assert (=> d!1654254 (= c!879613 ((_ is Cons!59201) lt!2110063))))

(assert (=> d!1654254 (>= (size!39511 knownP!20) (size!39511 lt!2110063))))

(assert (=> d!1654254 (= (getSuffix!3284 knownP!20 lt!2110063) lt!2110162)))

(declare-fun b!5118939 () Bool)

(assert (=> b!5118939 (= e!3192567 (getSuffix!3284 (tail!10070 knownP!20) (t!372338 lt!2110063)))))

(declare-fun b!5118940 () Bool)

(assert (=> b!5118940 (= e!3192567 knownP!20)))

(assert (= (and d!1654254 c!879613) b!5118939))

(assert (= (and d!1654254 (not c!879613)) b!5118940))

(declare-fun m!6179248 () Bool)

(assert (=> d!1654254 m!6179248))

(assert (=> d!1654254 m!6178890))

(assert (=> d!1654254 m!6179240))

(assert (=> b!5118939 m!6179152))

(assert (=> b!5118939 m!6179152))

(declare-fun m!6179250 () Bool)

(assert (=> b!5118939 m!6179250))

(assert (=> b!5118719 d!1654254))

(declare-fun d!1654256 () Bool)

(assert (=> d!1654256 (= (derivationZipper!104 baseZ!46 (++!13030 testedP!265 (Cons!59201 lt!2110065 Nil!59201))) (derivationStepZipper!840 z!4463 lt!2110065))))

(declare-fun lt!2110165 () Unit!150337)

(declare-fun choose!37614 ((InoxSet Context!7178) (InoxSet Context!7178) List!59325 C!28676) Unit!150337)

(assert (=> d!1654256 (= lt!2110165 (choose!37614 baseZ!46 z!4463 testedP!265 lt!2110065))))

(assert (=> d!1654256 (= (derivationZipper!104 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1654256 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!61 baseZ!46 z!4463 testedP!265 lt!2110065) lt!2110165)))

(declare-fun bs!1192556 () Bool)

(assert (= bs!1192556 d!1654256))

(declare-fun m!6179252 () Bool)

(assert (=> bs!1192556 m!6179252))

(assert (=> bs!1192556 m!6178874))

(assert (=> bs!1192556 m!6178862))

(assert (=> bs!1192556 m!6178926))

(assert (=> bs!1192556 m!6178874))

(declare-fun m!6179254 () Bool)

(assert (=> bs!1192556 m!6179254))

(assert (=> b!5118719 d!1654256))

(declare-fun d!1654258 () Bool)

(declare-fun lt!2110166 () List!59325)

(assert (=> d!1654258 (= (++!13030 knownP!20 lt!2110166) input!5745)))

(declare-fun e!3192568 () List!59325)

(assert (=> d!1654258 (= lt!2110166 e!3192568)))

(declare-fun c!879615 () Bool)

(assert (=> d!1654258 (= c!879615 ((_ is Cons!59201) knownP!20))))

(assert (=> d!1654258 (>= (size!39511 input!5745) (size!39511 knownP!20))))

(assert (=> d!1654258 (= (getSuffix!3284 input!5745 knownP!20) lt!2110166)))

(declare-fun b!5118941 () Bool)

(assert (=> b!5118941 (= e!3192568 (getSuffix!3284 (tail!10070 input!5745) (t!372338 knownP!20)))))

(declare-fun b!5118942 () Bool)

(assert (=> b!5118942 (= e!3192568 input!5745)))

(assert (= (and d!1654258 c!879615) b!5118941))

(assert (= (and d!1654258 (not c!879615)) b!5118942))

(declare-fun m!6179256 () Bool)

(assert (=> d!1654258 m!6179256))

(assert (=> d!1654258 m!6178928))

(assert (=> d!1654258 m!6178890))

(assert (=> b!5118941 m!6179100))

(assert (=> b!5118941 m!6179100))

(declare-fun m!6179258 () Bool)

(assert (=> b!5118941 m!6179258))

(assert (=> b!5118719 d!1654258))

(declare-fun d!1654260 () Bool)

(assert (=> d!1654260 (isPrefix!5610 lt!2110063 knownP!20)))

(declare-fun lt!2110167 () Unit!150337)

(assert (=> d!1654260 (= lt!2110167 (choose!37610 knownP!20 lt!2110063 input!5745))))

(assert (=> d!1654260 (isPrefix!5610 knownP!20 input!5745)))

(assert (=> d!1654260 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!747 knownP!20 lt!2110063 input!5745) lt!2110167)))

(declare-fun bs!1192557 () Bool)

(assert (= bs!1192557 d!1654260))

(assert (=> bs!1192557 m!6178884))

(declare-fun m!6179260 () Bool)

(assert (=> bs!1192557 m!6179260))

(assert (=> bs!1192557 m!6178860))

(assert (=> b!5118719 d!1654260))

(declare-fun d!1654262 () Bool)

(assert (=> d!1654262 (isPrefix!5610 (++!13030 testedP!265 (Cons!59201 (head!10933 (getSuffix!3284 input!5745 testedP!265)) Nil!59201)) input!5745)))

(declare-fun lt!2110170 () Unit!150337)

(declare-fun choose!37615 (List!59325 List!59325) Unit!150337)

(assert (=> d!1654262 (= lt!2110170 (choose!37615 testedP!265 input!5745))))

(assert (=> d!1654262 (isPrefix!5610 testedP!265 input!5745)))

(assert (=> d!1654262 (= (lemmaAddHeadSuffixToPrefixStillPrefix!996 testedP!265 input!5745) lt!2110170)))

(declare-fun bs!1192558 () Bool)

(assert (= bs!1192558 d!1654262))

(assert (=> bs!1192558 m!6178880))

(declare-fun m!6179262 () Bool)

(assert (=> bs!1192558 m!6179262))

(declare-fun m!6179264 () Bool)

(assert (=> bs!1192558 m!6179264))

(assert (=> bs!1192558 m!6178912))

(assert (=> bs!1192558 m!6179264))

(declare-fun m!6179266 () Bool)

(assert (=> bs!1192558 m!6179266))

(assert (=> bs!1192558 m!6178880))

(declare-fun m!6179268 () Bool)

(assert (=> bs!1192558 m!6179268))

(assert (=> b!5118719 d!1654262))

(declare-fun d!1654264 () Bool)

(assert (=> d!1654264 true))

(declare-fun lambda!251159 () Int)

(declare-fun flatMap!355 ((InoxSet Context!7178) Int) (InoxSet Context!7178))

(assert (=> d!1654264 (= (derivationStepZipper!840 z!4463 lt!2110065) (flatMap!355 z!4463 lambda!251159))))

(declare-fun bs!1192559 () Bool)

(assert (= bs!1192559 d!1654264))

(declare-fun m!6179270 () Bool)

(assert (=> bs!1192559 m!6179270))

(assert (=> b!5118719 d!1654264))

(declare-fun d!1654266 () Bool)

(assert (=> d!1654266 (= (head!10933 lt!2110059) (h!65649 lt!2110059))))

(assert (=> b!5118719 d!1654266))

(declare-fun b!5118948 () Bool)

(declare-fun e!3192570 () Bool)

(assert (=> b!5118948 (= e!3192570 (>= (size!39511 knownP!20) (size!39511 lt!2110063)))))

(declare-fun d!1654268 () Bool)

(assert (=> d!1654268 e!3192570))

(declare-fun res!2179550 () Bool)

(assert (=> d!1654268 (=> res!2179550 e!3192570)))

(declare-fun lt!2110171 () Bool)

(assert (=> d!1654268 (= res!2179550 (not lt!2110171))))

(declare-fun e!3192571 () Bool)

(assert (=> d!1654268 (= lt!2110171 e!3192571)))

(declare-fun res!2179551 () Bool)

(assert (=> d!1654268 (=> res!2179551 e!3192571)))

(assert (=> d!1654268 (= res!2179551 ((_ is Nil!59201) lt!2110063))))

(assert (=> d!1654268 (= (isPrefix!5610 lt!2110063 knownP!20) lt!2110171)))

(declare-fun b!5118947 () Bool)

(declare-fun e!3192569 () Bool)

(assert (=> b!5118947 (= e!3192569 (isPrefix!5610 (tail!10070 lt!2110063) (tail!10070 knownP!20)))))

(declare-fun b!5118945 () Bool)

(assert (=> b!5118945 (= e!3192571 e!3192569)))

(declare-fun res!2179549 () Bool)

(assert (=> b!5118945 (=> (not res!2179549) (not e!3192569))))

(assert (=> b!5118945 (= res!2179549 (not ((_ is Nil!59201) knownP!20)))))

(declare-fun b!5118946 () Bool)

(declare-fun res!2179552 () Bool)

(assert (=> b!5118946 (=> (not res!2179552) (not e!3192569))))

(assert (=> b!5118946 (= res!2179552 (= (head!10933 lt!2110063) (head!10933 knownP!20)))))

(assert (= (and d!1654268 (not res!2179551)) b!5118945))

(assert (= (and b!5118945 res!2179549) b!5118946))

(assert (= (and b!5118946 res!2179552) b!5118947))

(assert (= (and d!1654268 (not res!2179550)) b!5118948))

(assert (=> b!5118948 m!6178890))

(assert (=> b!5118948 m!6179240))

(assert (=> b!5118947 m!6179242))

(assert (=> b!5118947 m!6179152))

(assert (=> b!5118947 m!6179242))

(assert (=> b!5118947 m!6179152))

(declare-fun m!6179272 () Bool)

(assert (=> b!5118947 m!6179272))

(assert (=> b!5118946 m!6179246))

(assert (=> b!5118946 m!6179158))

(assert (=> b!5118719 d!1654268))

(declare-fun d!1654270 () Bool)

(assert (=> d!1654270 (= (head!10933 lt!2110069) (h!65649 lt!2110069))))

(assert (=> b!5118721 d!1654270))

(declare-fun d!1654272 () Bool)

(assert (=> d!1654272 (= lt!2110057 lt!2110059)))

(declare-fun lt!2110174 () Unit!150337)

(declare-fun choose!37617 (List!59325 List!59325 List!59325 List!59325 List!59325) Unit!150337)

(assert (=> d!1654272 (= lt!2110174 (choose!37617 testedP!265 lt!2110057 testedP!265 lt!2110059 input!5745))))

(assert (=> d!1654272 (isPrefix!5610 testedP!265 input!5745)))

(assert (=> d!1654272 (= (lemmaSamePrefixThenSameSuffix!2644 testedP!265 lt!2110057 testedP!265 lt!2110059 input!5745) lt!2110174)))

(declare-fun bs!1192560 () Bool)

(assert (= bs!1192560 d!1654272))

(declare-fun m!6179274 () Bool)

(assert (=> bs!1192560 m!6179274))

(assert (=> bs!1192560 m!6178912))

(assert (=> b!5118721 d!1654272))

(declare-fun d!1654274 () Bool)

(declare-fun lt!2110177 () Int)

(assert (=> d!1654274 (>= lt!2110177 0)))

(declare-fun e!3192574 () Int)

(assert (=> d!1654274 (= lt!2110177 e!3192574)))

(declare-fun c!879620 () Bool)

(assert (=> d!1654274 (= c!879620 ((_ is Nil!59201) testedP!265))))

(assert (=> d!1654274 (= (size!39511 testedP!265) lt!2110177)))

(declare-fun b!5118953 () Bool)

(assert (=> b!5118953 (= e!3192574 0)))

(declare-fun b!5118954 () Bool)

(assert (=> b!5118954 (= e!3192574 (+ 1 (size!39511 (t!372338 testedP!265))))))

(assert (= (and d!1654274 c!879620) b!5118953))

(assert (= (and d!1654274 (not c!879620)) b!5118954))

(declare-fun m!6179276 () Bool)

(assert (=> b!5118954 m!6179276))

(assert (=> b!5118730 d!1654274))

(declare-fun d!1654276 () Bool)

(declare-fun lt!2110178 () Int)

(assert (=> d!1654276 (>= lt!2110178 0)))

(declare-fun e!3192575 () Int)

(assert (=> d!1654276 (= lt!2110178 e!3192575)))

(declare-fun c!879621 () Bool)

(assert (=> d!1654276 (= c!879621 ((_ is Nil!59201) knownP!20))))

(assert (=> d!1654276 (= (size!39511 knownP!20) lt!2110178)))

(declare-fun b!5118955 () Bool)

(assert (=> b!5118955 (= e!3192575 0)))

(declare-fun b!5118956 () Bool)

(assert (=> b!5118956 (= e!3192575 (+ 1 (size!39511 (t!372338 knownP!20))))))

(assert (= (and d!1654276 c!879621) b!5118955))

(assert (= (and d!1654276 (not c!879621)) b!5118956))

(declare-fun m!6179278 () Bool)

(assert (=> b!5118956 m!6179278))

(assert (=> b!5118730 d!1654276))

(declare-fun d!1654278 () Bool)

(declare-fun lt!2110179 () Int)

(assert (=> d!1654278 (>= lt!2110179 0)))

(declare-fun e!3192576 () Int)

(assert (=> d!1654278 (= lt!2110179 e!3192576)))

(declare-fun c!879622 () Bool)

(assert (=> d!1654278 (= c!879622 ((_ is Nil!59201) input!5745))))

(assert (=> d!1654278 (= (size!39511 input!5745) lt!2110179)))

(declare-fun b!5118957 () Bool)

(assert (=> b!5118957 (= e!3192576 0)))

(declare-fun b!5118958 () Bool)

(assert (=> b!5118958 (= e!3192576 (+ 1 (size!39511 (t!372338 input!5745))))))

(assert (= (and d!1654278 c!879622) b!5118957))

(assert (= (and d!1654278 (not c!879622)) b!5118958))

(declare-fun m!6179280 () Bool)

(assert (=> b!5118958 m!6179280))

(assert (=> b!5118729 d!1654278))

(declare-fun bs!1192561 () Bool)

(declare-fun b!5118963 () Bool)

(declare-fun d!1654280 () Bool)

(assert (= bs!1192561 (and b!5118963 d!1654280)))

(declare-fun lambda!251173 () Int)

(declare-fun lambda!251172 () Int)

(assert (=> bs!1192561 (not (= lambda!251173 lambda!251172))))

(declare-fun bs!1192562 () Bool)

(declare-fun b!5118964 () Bool)

(assert (= bs!1192562 (and b!5118964 d!1654280)))

(declare-fun lambda!251174 () Int)

(assert (=> bs!1192562 (not (= lambda!251174 lambda!251172))))

(declare-fun bs!1192563 () Bool)

(assert (= bs!1192563 (and b!5118964 b!5118963)))

(assert (=> bs!1192563 (= lambda!251174 lambda!251173)))

(declare-fun lt!2110196 () Bool)

(declare-datatypes ((Option!14693 0))(
  ( (None!14692) (Some!14692 (v!50705 List!59325)) )
))
(declare-fun isEmpty!31928 (Option!14693) Bool)

(declare-fun getLanguageWitness!810 ((InoxSet Context!7178)) Option!14693)

(assert (=> d!1654280 (= lt!2110196 (isEmpty!31928 (getLanguageWitness!810 z!4463)))))

(declare-fun forall!13602 ((InoxSet Context!7178) Int) Bool)

(assert (=> d!1654280 (= lt!2110196 (forall!13602 z!4463 lambda!251172))))

(declare-fun lt!2110202 () Unit!150337)

(declare-fun e!3192583 () Unit!150337)

(assert (=> d!1654280 (= lt!2110202 e!3192583)))

(declare-fun c!879633 () Bool)

(assert (=> d!1654280 (= c!879633 (not (forall!13602 z!4463 lambda!251172)))))

(assert (=> d!1654280 (= (lostCauseZipper!1091 z!4463) lt!2110196)))

(declare-fun Unit!150339 () Unit!150337)

(assert (=> b!5118963 (= e!3192583 Unit!150339)))

(declare-datatypes ((List!59327 0))(
  ( (Nil!59203) (Cons!59203 (h!65651 Context!7178) (t!372342 List!59327)) )
))
(declare-fun lt!2110201 () List!59327)

(declare-fun call!356604 () List!59327)

(assert (=> b!5118963 (= lt!2110201 call!356604)))

(declare-fun lt!2110199 () Unit!150337)

(declare-fun lemmaNotForallThenExists!333 (List!59327 Int) Unit!150337)

(assert (=> b!5118963 (= lt!2110199 (lemmaNotForallThenExists!333 lt!2110201 lambda!251172))))

(declare-fun call!356605 () Bool)

(assert (=> b!5118963 call!356605))

(declare-fun lt!2110200 () Unit!150337)

(assert (=> b!5118963 (= lt!2110200 lt!2110199)))

(declare-fun Unit!150340 () Unit!150337)

(assert (=> b!5118964 (= e!3192583 Unit!150340)))

(declare-fun lt!2110198 () List!59327)

(assert (=> b!5118964 (= lt!2110198 call!356604)))

(declare-fun lt!2110197 () Unit!150337)

(declare-fun lemmaForallThenNotExists!316 (List!59327 Int) Unit!150337)

(assert (=> b!5118964 (= lt!2110197 (lemmaForallThenNotExists!316 lt!2110198 lambda!251172))))

(assert (=> b!5118964 (not call!356605)))

(declare-fun lt!2110203 () Unit!150337)

(assert (=> b!5118964 (= lt!2110203 lt!2110197)))

(declare-fun bm!356599 () Bool)

(declare-fun toList!8259 ((InoxSet Context!7178)) List!59327)

(assert (=> bm!356599 (= call!356604 (toList!8259 z!4463))))

(declare-fun bm!356600 () Bool)

(declare-fun exists!1470 (List!59327 Int) Bool)

(assert (=> bm!356600 (= call!356605 (exists!1470 (ite c!879633 lt!2110201 lt!2110198) (ite c!879633 lambda!251173 lambda!251174)))))

(assert (= (and d!1654280 c!879633) b!5118963))

(assert (= (and d!1654280 (not c!879633)) b!5118964))

(assert (= (or b!5118963 b!5118964) bm!356599))

(assert (= (or b!5118963 b!5118964) bm!356600))

(declare-fun m!6179282 () Bool)

(assert (=> bm!356599 m!6179282))

(declare-fun m!6179284 () Bool)

(assert (=> b!5118964 m!6179284))

(declare-fun m!6179286 () Bool)

(assert (=> d!1654280 m!6179286))

(assert (=> d!1654280 m!6179286))

(declare-fun m!6179288 () Bool)

(assert (=> d!1654280 m!6179288))

(declare-fun m!6179290 () Bool)

(assert (=> d!1654280 m!6179290))

(assert (=> d!1654280 m!6179290))

(declare-fun m!6179292 () Bool)

(assert (=> bm!356600 m!6179292))

(declare-fun m!6179294 () Bool)

(assert (=> b!5118963 m!6179294))

(assert (=> b!5118712 d!1654280))

(declare-fun d!1654282 () Bool)

(assert (=> d!1654282 (= ($colon$colon!1135 (tail!10070 lt!2110069) lt!2110065) (Cons!59201 lt!2110065 (tail!10070 lt!2110069)))))

(assert (=> b!5118726 d!1654282))

(declare-fun d!1654284 () Bool)

(assert (=> d!1654284 (= (tail!10070 lt!2110069) (t!372338 lt!2110069))))

(assert (=> b!5118726 d!1654284))

(declare-fun b!5118965 () Bool)

(declare-fun e!3192584 () List!59325)

(assert (=> b!5118965 (= e!3192584 lt!2110059)))

(declare-fun b!5118966 () Bool)

(assert (=> b!5118966 (= e!3192584 (Cons!59201 (h!65649 testedP!265) (++!13030 (t!372338 testedP!265) lt!2110059)))))

(declare-fun b!5118967 () Bool)

(declare-fun res!2179554 () Bool)

(declare-fun e!3192585 () Bool)

(assert (=> b!5118967 (=> (not res!2179554) (not e!3192585))))

(declare-fun lt!2110204 () List!59325)

(assert (=> b!5118967 (= res!2179554 (= (size!39511 lt!2110204) (+ (size!39511 testedP!265) (size!39511 lt!2110059))))))

(declare-fun d!1654286 () Bool)

(assert (=> d!1654286 e!3192585))

(declare-fun res!2179553 () Bool)

(assert (=> d!1654286 (=> (not res!2179553) (not e!3192585))))

(assert (=> d!1654286 (= res!2179553 (= (content!10527 lt!2110204) ((_ map or) (content!10527 testedP!265) (content!10527 lt!2110059))))))

(assert (=> d!1654286 (= lt!2110204 e!3192584)))

(declare-fun c!879634 () Bool)

(assert (=> d!1654286 (= c!879634 ((_ is Nil!59201) testedP!265))))

(assert (=> d!1654286 (= (++!13030 testedP!265 lt!2110059) lt!2110204)))

(declare-fun b!5118968 () Bool)

(assert (=> b!5118968 (= e!3192585 (or (not (= lt!2110059 Nil!59201)) (= lt!2110204 testedP!265)))))

(assert (= (and d!1654286 c!879634) b!5118965))

(assert (= (and d!1654286 (not c!879634)) b!5118966))

(assert (= (and d!1654286 res!2179553) b!5118967))

(assert (= (and b!5118967 res!2179554) b!5118968))

(declare-fun m!6179296 () Bool)

(assert (=> b!5118966 m!6179296))

(declare-fun m!6179298 () Bool)

(assert (=> b!5118967 m!6179298))

(assert (=> b!5118967 m!6178888))

(declare-fun m!6179300 () Bool)

(assert (=> b!5118967 m!6179300))

(declare-fun m!6179302 () Bool)

(assert (=> d!1654286 m!6179302))

(assert (=> d!1654286 m!6179138))

(declare-fun m!6179304 () Bool)

(assert (=> d!1654286 m!6179304))

(assert (=> b!5118725 d!1654286))

(declare-fun d!1654288 () Bool)

(declare-fun c!879635 () Bool)

(assert (=> d!1654288 (= c!879635 (isEmpty!31927 knownP!20))))

(declare-fun e!3192586 () Bool)

(assert (=> d!1654288 (= (matchZipper!873 baseZ!46 knownP!20) e!3192586)))

(declare-fun b!5118969 () Bool)

(assert (=> b!5118969 (= e!3192586 (nullableZipper!1024 baseZ!46))))

(declare-fun b!5118970 () Bool)

(assert (=> b!5118970 (= e!3192586 (matchZipper!873 (derivationStepZipper!840 baseZ!46 (head!10933 knownP!20)) (tail!10070 knownP!20)))))

(assert (= (and d!1654288 c!879635) b!5118969))

(assert (= (and d!1654288 (not c!879635)) b!5118970))

(declare-fun m!6179306 () Bool)

(assert (=> d!1654288 m!6179306))

(declare-fun m!6179308 () Bool)

(assert (=> b!5118969 m!6179308))

(assert (=> b!5118970 m!6179158))

(assert (=> b!5118970 m!6179158))

(declare-fun m!6179310 () Bool)

(assert (=> b!5118970 m!6179310))

(assert (=> b!5118970 m!6179152))

(assert (=> b!5118970 m!6179310))

(assert (=> b!5118970 m!6179152))

(declare-fun m!6179312 () Bool)

(assert (=> b!5118970 m!6179312))

(assert (=> b!5118727 d!1654288))

(declare-fun condSetEmpty!30265 () Bool)

(assert (=> setNonEmpty!30258 (= condSetEmpty!30265 (= setRest!30257 ((as const (Array Context!7178 Bool)) false)))))

(declare-fun setRes!30265 () Bool)

(assert (=> setNonEmpty!30258 (= tp!1428065 setRes!30265)))

(declare-fun setIsEmpty!30265 () Bool)

(assert (=> setIsEmpty!30265 setRes!30265))

(declare-fun setNonEmpty!30265 () Bool)

(declare-fun e!3192589 () Bool)

(declare-fun tp!1428095 () Bool)

(declare-fun setElem!30265 () Context!7178)

(assert (=> setNonEmpty!30265 (= setRes!30265 (and tp!1428095 (inv!78693 setElem!30265) e!3192589))))

(declare-fun setRest!30265 () (InoxSet Context!7178))

(assert (=> setNonEmpty!30265 (= setRest!30257 ((_ map or) (store ((as const (Array Context!7178 Bool)) false) setElem!30265 true) setRest!30265))))

(declare-fun b!5118975 () Bool)

(declare-fun tp!1428096 () Bool)

(assert (=> b!5118975 (= e!3192589 tp!1428096)))

(assert (= (and setNonEmpty!30258 condSetEmpty!30265) setIsEmpty!30265))

(assert (= (and setNonEmpty!30258 (not condSetEmpty!30265)) setNonEmpty!30265))

(assert (= setNonEmpty!30265 b!5118975))

(declare-fun m!6179314 () Bool)

(assert (=> setNonEmpty!30265 m!6179314))

(declare-fun b!5118980 () Bool)

(declare-fun e!3192592 () Bool)

(declare-fun tp!1428101 () Bool)

(declare-fun tp!1428102 () Bool)

(assert (=> b!5118980 (= e!3192592 (and tp!1428101 tp!1428102))))

(assert (=> b!5118716 (= tp!1428068 e!3192592)))

(assert (= (and b!5118716 ((_ is Cons!59202) (exprs!4089 setElem!30258))) b!5118980))

(declare-fun b!5118985 () Bool)

(declare-fun e!3192595 () Bool)

(declare-fun tp!1428105 () Bool)

(assert (=> b!5118985 (= e!3192595 (and tp_is_empty!37683 tp!1428105))))

(assert (=> b!5118728 (= tp!1428063 e!3192595)))

(assert (= (and b!5118728 ((_ is Cons!59201) (t!372338 input!5745))) b!5118985))

(declare-fun b!5118986 () Bool)

(declare-fun e!3192596 () Bool)

(declare-fun tp!1428106 () Bool)

(declare-fun tp!1428107 () Bool)

(assert (=> b!5118986 (= e!3192596 (and tp!1428106 tp!1428107))))

(assert (=> b!5118722 (= tp!1428069 e!3192596)))

(assert (= (and b!5118722 ((_ is Cons!59202) (exprs!4089 setElem!30257))) b!5118986))

(declare-fun b!5118987 () Bool)

(declare-fun e!3192597 () Bool)

(declare-fun tp!1428108 () Bool)

(assert (=> b!5118987 (= e!3192597 (and tp_is_empty!37683 tp!1428108))))

(assert (=> b!5118723 (= tp!1428066 e!3192597)))

(assert (= (and b!5118723 ((_ is Cons!59201) (t!372338 knownP!20))) b!5118987))

(declare-fun condSetEmpty!30266 () Bool)

(assert (=> setNonEmpty!30257 (= condSetEmpty!30266 (= setRest!30258 ((as const (Array Context!7178 Bool)) false)))))

(declare-fun setRes!30266 () Bool)

(assert (=> setNonEmpty!30257 (= tp!1428064 setRes!30266)))

(declare-fun setIsEmpty!30266 () Bool)

(assert (=> setIsEmpty!30266 setRes!30266))

(declare-fun e!3192598 () Bool)

(declare-fun setElem!30266 () Context!7178)

(declare-fun setNonEmpty!30266 () Bool)

(declare-fun tp!1428109 () Bool)

(assert (=> setNonEmpty!30266 (= setRes!30266 (and tp!1428109 (inv!78693 setElem!30266) e!3192598))))

(declare-fun setRest!30266 () (InoxSet Context!7178))

(assert (=> setNonEmpty!30266 (= setRest!30258 ((_ map or) (store ((as const (Array Context!7178 Bool)) false) setElem!30266 true) setRest!30266))))

(declare-fun b!5118988 () Bool)

(declare-fun tp!1428110 () Bool)

(assert (=> b!5118988 (= e!3192598 tp!1428110)))

(assert (= (and setNonEmpty!30257 condSetEmpty!30266) setIsEmpty!30266))

(assert (= (and setNonEmpty!30257 (not condSetEmpty!30266)) setNonEmpty!30266))

(assert (= setNonEmpty!30266 b!5118988))

(declare-fun m!6179316 () Bool)

(assert (=> setNonEmpty!30266 m!6179316))

(declare-fun b!5118989 () Bool)

(declare-fun e!3192599 () Bool)

(declare-fun tp!1428111 () Bool)

(assert (=> b!5118989 (= e!3192599 (and tp_is_empty!37683 tp!1428111))))

(assert (=> b!5118718 (= tp!1428067 e!3192599)))

(assert (= (and b!5118718 ((_ is Cons!59201) (t!372338 testedP!265))) b!5118989))

(check-sat (not d!1654206) (not setNonEmpty!30266) (not d!1654244) (not d!1654256) (not b!5118958) (not b!5118880) (not b!5118975) (not b!5118876) (not b!5118912) (not b!5118881) (not b!5118932) (not b!5118963) (not d!1654230) (not b!5118967) (not b!5118987) (not b!5118946) (not d!1654248) (not d!1654264) (not b!5118931) (not b!5118969) (not b!5118964) (not b!5118954) (not b!5118921) (not b!5118895) (not b!5118988) tp_is_empty!37683 (not b!5118948) (not b!5118970) (not d!1654240) (not b!5118938) (not d!1654222) (not b!5118910) (not d!1654260) (not setNonEmpty!30265) (not b!5118989) (not b!5118892) (not b!5118937) (not d!1654228) (not d!1654142) (not b!5118888) (not b!5118879) (not d!1654214) (not b!5118838) (not b!5118966) (not d!1654216) (not b!5118985) (not b!5118986) (not b!5118925) (not b!5118891) (not d!1654218) (not b!5118924) (not b!5118867) (not b!5118859) (not d!1654280) (not d!1654286) (not bm!356599) (not d!1654272) (not b!5118941) (not b!5118896) (not b!5118939) (not d!1654258) (not b!5118856) (not d!1654250) (not b!5118956) (not b!5118839) (not b!5118947) (not b!5118936) (not d!1654226) (not b!5118860) (not b!5118917) (not d!1654288) (not b!5118980) (not bm!356600) (not d!1654254) (not b!5118837) (not b!5118855) (not b!5118911) (not d!1654262) (not b!5118866))
(check-sat)
