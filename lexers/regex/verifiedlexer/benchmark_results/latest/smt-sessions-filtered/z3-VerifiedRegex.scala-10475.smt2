; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541044 () Bool)

(assert start!541044)

(declare-fun b!5124879 () Bool)

(declare-fun res!2182234 () Bool)

(declare-fun e!3196132 () Bool)

(assert (=> b!5124879 (=> res!2182234 e!3196132)))

(declare-datatypes ((C!28748 0))(
  ( (C!28749 (val!24026 Int)) )
))
(declare-datatypes ((List!59411 0))(
  ( (Nil!59287) (Cons!59287 (h!65735 C!28748) (t!372436 List!59411)) )
))
(declare-fun input!5745 () List!59411)

(declare-fun lt!2113191 () List!59411)

(declare-fun testedP!265 () List!59411)

(declare-fun ++!13054 (List!59411 List!59411) List!59411)

(assert (=> b!5124879 (= res!2182234 (not (= (++!13054 testedP!265 lt!2113191) input!5745)))))

(declare-fun b!5124880 () Bool)

(declare-fun res!2182247 () Bool)

(declare-fun e!3196130 () Bool)

(assert (=> b!5124880 (=> (not res!2182247) (not e!3196130))))

(declare-fun knownP!20 () List!59411)

(declare-fun isPrefix!5646 (List!59411 List!59411) Bool)

(assert (=> b!5124880 (= res!2182247 (isPrefix!5646 knownP!20 input!5745))))

(declare-fun b!5124881 () Bool)

(declare-fun e!3196137 () Bool)

(declare-fun tp_is_empty!37755 () Bool)

(declare-fun tp!1429584 () Bool)

(assert (=> b!5124881 (= e!3196137 (and tp_is_empty!37755 tp!1429584))))

(declare-fun e!3196127 () Bool)

(declare-fun setRes!30549 () Bool)

(declare-fun tp!1429589 () Bool)

(declare-datatypes ((Regex!14241 0))(
  ( (ElementMatch!14241 (c!880909 C!28748)) (Concat!23086 (regOne!28994 Regex!14241) (regTwo!28994 Regex!14241)) (EmptyExpr!14241) (Star!14241 (reg!14570 Regex!14241)) (EmptyLang!14241) (Union!14241 (regOne!28995 Regex!14241) (regTwo!28995 Regex!14241)) )
))
(declare-datatypes ((List!59412 0))(
  ( (Nil!59288) (Cons!59288 (h!65736 Regex!14241) (t!372437 List!59412)) )
))
(declare-datatypes ((Context!7250 0))(
  ( (Context!7251 (exprs!4125 List!59412)) )
))
(declare-fun setElem!30549 () Context!7250)

(declare-fun setNonEmpty!30549 () Bool)

(declare-fun inv!78783 (Context!7250) Bool)

(assert (=> setNonEmpty!30549 (= setRes!30549 (and tp!1429589 (inv!78783 setElem!30549) e!3196127))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!46 () (InoxSet Context!7250))

(declare-fun setRest!30549 () (InoxSet Context!7250))

(assert (=> setNonEmpty!30549 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7250 Bool)) false) setElem!30549 true) setRest!30549))))

(declare-fun b!5124882 () Bool)

(declare-fun e!3196138 () Bool)

(declare-fun tp!1429583 () Bool)

(assert (=> b!5124882 (= e!3196138 (and tp_is_empty!37755 tp!1429583))))

(declare-fun b!5124883 () Bool)

(declare-fun res!2182236 () Bool)

(declare-fun e!3196134 () Bool)

(assert (=> b!5124883 (=> (not res!2182236) (not e!3196134))))

(declare-fun matchZipper!909 ((InoxSet Context!7250) List!59411) Bool)

(assert (=> b!5124883 (= res!2182236 (matchZipper!909 baseZ!46 knownP!20))))

(declare-fun tp!1429585 () Bool)

(declare-fun e!3196126 () Bool)

(declare-fun setNonEmpty!30550 () Bool)

(declare-fun setElem!30550 () Context!7250)

(declare-fun setRes!30550 () Bool)

(assert (=> setNonEmpty!30550 (= setRes!30550 (and tp!1429585 (inv!78783 setElem!30550) e!3196126))))

(declare-fun z!4463 () (InoxSet Context!7250))

(declare-fun setRest!30550 () (InoxSet Context!7250))

(assert (=> setNonEmpty!30550 (= z!4463 ((_ map or) (store ((as const (Array Context!7250 Bool)) false) setElem!30550 true) setRest!30550))))

(declare-fun b!5124884 () Bool)

(declare-fun res!2182244 () Bool)

(declare-fun e!3196131 () Bool)

(assert (=> b!5124884 (=> res!2182244 e!3196131)))

(declare-fun lt!2113208 () Int)

(declare-fun lt!2113212 () Int)

(assert (=> b!5124884 (= res!2182244 (= lt!2113208 lt!2113212))))

(declare-fun lt!2113198 () Int)

(declare-fun b!5124885 () Bool)

(declare-fun e!3196135 () Bool)

(declare-fun size!39547 (List!59411) Int)

(declare-datatypes ((tuple2!63640 0))(
  ( (tuple2!63641 (_1!35123 List!59411) (_2!35123 List!59411)) )
))
(declare-fun findLongestMatchInnerZipper!201 ((InoxSet Context!7250) List!59411 Int List!59411 List!59411 Int) tuple2!63640)

(assert (=> b!5124885 (= e!3196135 (>= (size!39547 (_1!35123 (findLongestMatchInnerZipper!201 z!4463 testedP!265 lt!2113208 lt!2113191 input!5745 lt!2113198))) lt!2113212))))

(declare-fun lt!2113196 () (InoxSet Context!7250))

(declare-fun lt!2113214 () List!59411)

(declare-fun getSuffix!3318 (List!59411 List!59411) List!59411)

(assert (=> b!5124885 (>= (size!39547 (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 lt!2113198))) lt!2113212)))

(declare-datatypes ((Unit!150433 0))(
  ( (Unit!150434) )
))
(declare-fun lt!2113211 () Unit!150433)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!15 ((InoxSet Context!7250) (InoxSet Context!7250) List!59411 List!59411 List!59411) Unit!150433)

(assert (=> b!5124885 (= lt!2113211 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!15 baseZ!46 lt!2113196 input!5745 lt!2113214 knownP!20))))

(declare-fun b!5124886 () Bool)

(declare-fun e!3196139 () Bool)

(declare-fun e!3196136 () Bool)

(assert (=> b!5124886 (= e!3196139 e!3196136)))

(declare-fun res!2182237 () Bool)

(assert (=> b!5124886 (=> res!2182237 e!3196136)))

(declare-fun lt!2113194 () C!28748)

(declare-fun lt!2113207 () List!59411)

(declare-fun lt!2113188 () List!59411)

(declare-fun $colon$colon!1155 (List!59411 C!28748) List!59411)

(assert (=> b!5124886 (= res!2182237 (not (= lt!2113207 ($colon$colon!1155 lt!2113188 lt!2113194))))))

(declare-fun tail!10092 (List!59411) List!59411)

(assert (=> b!5124886 (= lt!2113188 (tail!10092 lt!2113207))))

(declare-fun b!5124887 () Bool)

(assert (=> b!5124887 (= e!3196130 e!3196134)))

(declare-fun res!2182235 () Bool)

(assert (=> b!5124887 (=> (not res!2182235) (not e!3196134))))

(assert (=> b!5124887 (= res!2182235 (>= lt!2113212 lt!2113208))))

(assert (=> b!5124887 (= lt!2113208 (size!39547 testedP!265))))

(assert (=> b!5124887 (= lt!2113212 (size!39547 knownP!20))))

(declare-fun b!5124888 () Bool)

(declare-fun tp!1429587 () Bool)

(assert (=> b!5124888 (= e!3196127 tp!1429587)))

(declare-fun b!5124889 () Bool)

(declare-fun e!3196133 () Bool)

(assert (=> b!5124889 (= e!3196133 e!3196132)))

(declare-fun res!2182248 () Bool)

(assert (=> b!5124889 (=> res!2182248 e!3196132)))

(declare-fun lt!2113192 () List!59411)

(assert (=> b!5124889 (= res!2182248 (not (= lt!2113192 input!5745)))))

(declare-fun lt!2113200 () List!59411)

(declare-fun lt!2113195 () List!59411)

(assert (=> b!5124889 (= lt!2113192 (++!13054 lt!2113200 lt!2113195))))

(assert (=> b!5124889 (= lt!2113200 (++!13054 testedP!265 lt!2113207))))

(declare-fun res!2182238 () Bool)

(assert (=> start!541044 (=> (not res!2182238) (not e!3196130))))

(assert (=> start!541044 (= res!2182238 (isPrefix!5646 testedP!265 input!5745))))

(assert (=> start!541044 e!3196130))

(assert (=> start!541044 e!3196137))

(declare-fun condSetEmpty!30549 () Bool)

(assert (=> start!541044 (= condSetEmpty!30549 (= z!4463 ((as const (Array Context!7250 Bool)) false)))))

(assert (=> start!541044 setRes!30550))

(declare-fun e!3196128 () Bool)

(assert (=> start!541044 e!3196128))

(declare-fun condSetEmpty!30550 () Bool)

(assert (=> start!541044 (= condSetEmpty!30550 (= baseZ!46 ((as const (Array Context!7250 Bool)) false)))))

(assert (=> start!541044 setRes!30549))

(assert (=> start!541044 e!3196138))

(declare-fun b!5124890 () Bool)

(declare-fun e!3196129 () Bool)

(assert (=> b!5124890 (= e!3196129 e!3196135)))

(declare-fun res!2182241 () Bool)

(assert (=> b!5124890 (=> res!2182241 e!3196135)))

(declare-fun lt!2113197 () List!59411)

(assert (=> b!5124890 (= res!2182241 (not (= lt!2113188 lt!2113197)))))

(declare-fun lt!2113193 () List!59411)

(assert (=> b!5124890 (= lt!2113193 lt!2113207)))

(declare-fun lt!2113209 () Unit!150433)

(declare-fun lemmaSamePrefixThenSameSuffix!2664 (List!59411 List!59411 List!59411 List!59411 List!59411) Unit!150433)

(assert (=> b!5124890 (= lt!2113209 (lemmaSamePrefixThenSameSuffix!2664 testedP!265 lt!2113193 testedP!265 lt!2113207 knownP!20))))

(declare-fun lt!2113202 () List!59411)

(assert (=> b!5124890 (= lt!2113202 (++!13054 testedP!265 lt!2113193))))

(declare-fun lt!2113189 () List!59411)

(assert (=> b!5124890 (= lt!2113193 (++!13054 lt!2113189 lt!2113197))))

(declare-fun lt!2113210 () Unit!150433)

(declare-fun lemmaConcatAssociativity!2798 (List!59411 List!59411 List!59411) Unit!150433)

(assert (=> b!5124890 (= lt!2113210 (lemmaConcatAssociativity!2798 testedP!265 lt!2113189 lt!2113197))))

(declare-fun b!5124891 () Bool)

(declare-fun res!2182250 () Bool)

(assert (=> b!5124891 (=> res!2182250 e!3196136)))

(assert (=> b!5124891 (= res!2182250 (not (= lt!2113200 knownP!20)))))

(declare-fun b!5124892 () Bool)

(declare-fun tp!1429586 () Bool)

(assert (=> b!5124892 (= e!3196126 tp!1429586)))

(declare-fun b!5124893 () Bool)

(assert (=> b!5124893 (= e!3196136 e!3196129)))

(declare-fun res!2182243 () Bool)

(assert (=> b!5124893 (=> res!2182243 e!3196129)))

(assert (=> b!5124893 (= res!2182243 (not (= lt!2113202 knownP!20)))))

(assert (=> b!5124893 (= lt!2113202 (++!13054 lt!2113214 lt!2113197))))

(declare-fun b!5124894 () Bool)

(declare-fun res!2182249 () Bool)

(assert (=> b!5124894 (=> res!2182249 e!3196131)))

(declare-fun lostCauseZipper!1123 ((InoxSet Context!7250)) Bool)

(assert (=> b!5124894 (= res!2182249 (lostCauseZipper!1123 z!4463))))

(declare-fun b!5124895 () Bool)

(assert (=> b!5124895 (= e!3196134 (not e!3196131))))

(declare-fun res!2182242 () Bool)

(assert (=> b!5124895 (=> res!2182242 e!3196131)))

(assert (=> b!5124895 (= res!2182242 (not (matchZipper!909 z!4463 lt!2113207)))))

(assert (=> b!5124895 (= lt!2113207 (getSuffix!3318 knownP!20 testedP!265))))

(assert (=> b!5124895 (isPrefix!5646 testedP!265 knownP!20)))

(declare-fun lt!2113203 () Unit!150433)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!781 (List!59411 List!59411 List!59411) Unit!150433)

(assert (=> b!5124895 (= lt!2113203 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!781 knownP!20 testedP!265 input!5745))))

(declare-fun b!5124896 () Bool)

(declare-fun e!3196124 () Bool)

(assert (=> b!5124896 (= e!3196132 e!3196124)))

(declare-fun res!2182246 () Bool)

(assert (=> b!5124896 (=> res!2182246 e!3196124)))

(declare-fun lt!2113199 () List!59411)

(assert (=> b!5124896 (= res!2182246 (not (= lt!2113199 input!5745)))))

(assert (=> b!5124896 (= lt!2113192 lt!2113199)))

(declare-fun lt!2113213 () List!59411)

(assert (=> b!5124896 (= lt!2113199 (++!13054 testedP!265 lt!2113213))))

(assert (=> b!5124896 (= lt!2113213 (++!13054 lt!2113207 lt!2113195))))

(declare-fun lt!2113190 () Unit!150433)

(assert (=> b!5124896 (= lt!2113190 (lemmaConcatAssociativity!2798 testedP!265 lt!2113207 lt!2113195))))

(declare-fun setIsEmpty!30549 () Bool)

(assert (=> setIsEmpty!30549 setRes!30550))

(declare-fun b!5124897 () Bool)

(assert (=> b!5124897 (= e!3196124 e!3196139)))

(declare-fun res!2182245 () Bool)

(assert (=> b!5124897 (=> res!2182245 e!3196139)))

(declare-fun head!10957 (List!59411) C!28748)

(assert (=> b!5124897 (= res!2182245 (not (= (head!10957 lt!2113207) lt!2113194)))))

(assert (=> b!5124897 (= lt!2113213 lt!2113191)))

(declare-fun lt!2113205 () Unit!150433)

(assert (=> b!5124897 (= lt!2113205 (lemmaSamePrefixThenSameSuffix!2664 testedP!265 lt!2113213 testedP!265 lt!2113191 input!5745))))

(declare-fun b!5124898 () Bool)

(declare-fun tp!1429588 () Bool)

(assert (=> b!5124898 (= e!3196128 (and tp_is_empty!37755 tp!1429588))))

(declare-fun b!5124899 () Bool)

(declare-fun res!2182233 () Bool)

(assert (=> b!5124899 (=> res!2182233 e!3196131)))

(declare-fun derivationZipper!138 ((InoxSet Context!7250) List!59411) (InoxSet Context!7250))

(assert (=> b!5124899 (= res!2182233 (not (= (derivationZipper!138 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5124900 () Bool)

(declare-fun e!3196125 () Bool)

(assert (=> b!5124900 (= e!3196131 e!3196125)))

(declare-fun res!2182239 () Bool)

(assert (=> b!5124900 (=> res!2182239 e!3196125)))

(assert (=> b!5124900 (= res!2182239 (>= lt!2113208 lt!2113198))))

(assert (=> b!5124900 (= lt!2113198 (size!39547 input!5745))))

(declare-fun b!5124901 () Bool)

(assert (=> b!5124901 (= e!3196125 e!3196133)))

(declare-fun res!2182240 () Bool)

(assert (=> b!5124901 (=> res!2182240 e!3196133)))

(assert (=> b!5124901 (= res!2182240 (not (= (++!13054 knownP!20 lt!2113195) input!5745)))))

(assert (=> b!5124901 (= lt!2113195 (getSuffix!3318 input!5745 knownP!20))))

(assert (=> b!5124901 (= lt!2113197 (getSuffix!3318 knownP!20 lt!2113214))))

(assert (=> b!5124901 (isPrefix!5646 lt!2113214 knownP!20)))

(declare-fun lt!2113204 () Unit!150433)

(assert (=> b!5124901 (= lt!2113204 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!781 knownP!20 lt!2113214 input!5745))))

(assert (=> b!5124901 (= (derivationZipper!138 baseZ!46 lt!2113214) lt!2113196)))

(declare-fun derivationStepZipper!864 ((InoxSet Context!7250) C!28748) (InoxSet Context!7250))

(assert (=> b!5124901 (= lt!2113196 (derivationStepZipper!864 z!4463 lt!2113194))))

(declare-fun lt!2113201 () Unit!150433)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!85 ((InoxSet Context!7250) (InoxSet Context!7250) List!59411 C!28748) Unit!150433)

(assert (=> b!5124901 (= lt!2113201 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!85 baseZ!46 z!4463 testedP!265 lt!2113194))))

(assert (=> b!5124901 (isPrefix!5646 lt!2113214 input!5745)))

(declare-fun lt!2113206 () Unit!150433)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1020 (List!59411 List!59411) Unit!150433)

(assert (=> b!5124901 (= lt!2113206 (lemmaAddHeadSuffixToPrefixStillPrefix!1020 testedP!265 input!5745))))

(assert (=> b!5124901 (= lt!2113214 (++!13054 testedP!265 lt!2113189))))

(assert (=> b!5124901 (= lt!2113189 (Cons!59287 lt!2113194 Nil!59287))))

(assert (=> b!5124901 (= lt!2113194 (head!10957 lt!2113191))))

(assert (=> b!5124901 (= lt!2113191 (getSuffix!3318 input!5745 testedP!265))))

(declare-fun setIsEmpty!30550 () Bool)

(assert (=> setIsEmpty!30550 setRes!30549))

(assert (= (and start!541044 res!2182238) b!5124880))

(assert (= (and b!5124880 res!2182247) b!5124887))

(assert (= (and b!5124887 res!2182235) b!5124883))

(assert (= (and b!5124883 res!2182236) b!5124895))

(assert (= (and b!5124895 (not res!2182242)) b!5124899))

(assert (= (and b!5124899 (not res!2182233)) b!5124894))

(assert (= (and b!5124894 (not res!2182249)) b!5124884))

(assert (= (and b!5124884 (not res!2182244)) b!5124900))

(assert (= (and b!5124900 (not res!2182239)) b!5124901))

(assert (= (and b!5124901 (not res!2182240)) b!5124889))

(assert (= (and b!5124889 (not res!2182248)) b!5124879))

(assert (= (and b!5124879 (not res!2182234)) b!5124896))

(assert (= (and b!5124896 (not res!2182246)) b!5124897))

(assert (= (and b!5124897 (not res!2182245)) b!5124886))

(assert (= (and b!5124886 (not res!2182237)) b!5124891))

(assert (= (and b!5124891 (not res!2182250)) b!5124893))

(assert (= (and b!5124893 (not res!2182243)) b!5124890))

(assert (= (and b!5124890 (not res!2182241)) b!5124885))

(get-info :version)

(assert (= (and start!541044 ((_ is Cons!59287) input!5745)) b!5124881))

(assert (= (and start!541044 condSetEmpty!30549) setIsEmpty!30549))

(assert (= (and start!541044 (not condSetEmpty!30549)) setNonEmpty!30550))

(assert (= setNonEmpty!30550 b!5124892))

(assert (= (and start!541044 ((_ is Cons!59287) testedP!265)) b!5124898))

(assert (= (and start!541044 condSetEmpty!30550) setIsEmpty!30550))

(assert (= (and start!541044 (not condSetEmpty!30550)) setNonEmpty!30549))

(assert (= setNonEmpty!30549 b!5124888))

(assert (= (and start!541044 ((_ is Cons!59287) knownP!20)) b!5124882))

(declare-fun m!6187788 () Bool)

(assert (=> b!5124889 m!6187788))

(declare-fun m!6187790 () Bool)

(assert (=> b!5124889 m!6187790))

(declare-fun m!6187792 () Bool)

(assert (=> b!5124883 m!6187792))

(declare-fun m!6187794 () Bool)

(assert (=> b!5124879 m!6187794))

(declare-fun m!6187796 () Bool)

(assert (=> b!5124890 m!6187796))

(declare-fun m!6187798 () Bool)

(assert (=> b!5124890 m!6187798))

(declare-fun m!6187800 () Bool)

(assert (=> b!5124890 m!6187800))

(declare-fun m!6187802 () Bool)

(assert (=> b!5124890 m!6187802))

(declare-fun m!6187804 () Bool)

(assert (=> setNonEmpty!30549 m!6187804))

(declare-fun m!6187806 () Bool)

(assert (=> b!5124880 m!6187806))

(declare-fun m!6187808 () Bool)

(assert (=> b!5124896 m!6187808))

(declare-fun m!6187810 () Bool)

(assert (=> b!5124896 m!6187810))

(declare-fun m!6187812 () Bool)

(assert (=> b!5124896 m!6187812))

(declare-fun m!6187814 () Bool)

(assert (=> b!5124885 m!6187814))

(declare-fun m!6187816 () Bool)

(assert (=> b!5124885 m!6187816))

(declare-fun m!6187818 () Bool)

(assert (=> b!5124885 m!6187818))

(declare-fun m!6187820 () Bool)

(assert (=> b!5124885 m!6187820))

(declare-fun m!6187822 () Bool)

(assert (=> b!5124885 m!6187822))

(declare-fun m!6187824 () Bool)

(assert (=> b!5124885 m!6187824))

(assert (=> b!5124885 m!6187820))

(declare-fun m!6187826 () Bool)

(assert (=> b!5124885 m!6187826))

(assert (=> b!5124885 m!6187824))

(declare-fun m!6187828 () Bool)

(assert (=> b!5124886 m!6187828))

(declare-fun m!6187830 () Bool)

(assert (=> b!5124886 m!6187830))

(declare-fun m!6187832 () Bool)

(assert (=> b!5124901 m!6187832))

(declare-fun m!6187834 () Bool)

(assert (=> b!5124901 m!6187834))

(declare-fun m!6187836 () Bool)

(assert (=> b!5124901 m!6187836))

(declare-fun m!6187838 () Bool)

(assert (=> b!5124901 m!6187838))

(declare-fun m!6187840 () Bool)

(assert (=> b!5124901 m!6187840))

(declare-fun m!6187842 () Bool)

(assert (=> b!5124901 m!6187842))

(declare-fun m!6187844 () Bool)

(assert (=> b!5124901 m!6187844))

(declare-fun m!6187846 () Bool)

(assert (=> b!5124901 m!6187846))

(declare-fun m!6187848 () Bool)

(assert (=> b!5124901 m!6187848))

(declare-fun m!6187850 () Bool)

(assert (=> b!5124901 m!6187850))

(declare-fun m!6187852 () Bool)

(assert (=> b!5124901 m!6187852))

(declare-fun m!6187854 () Bool)

(assert (=> b!5124901 m!6187854))

(declare-fun m!6187856 () Bool)

(assert (=> b!5124901 m!6187856))

(declare-fun m!6187858 () Bool)

(assert (=> setNonEmpty!30550 m!6187858))

(declare-fun m!6187860 () Bool)

(assert (=> b!5124899 m!6187860))

(declare-fun m!6187862 () Bool)

(assert (=> b!5124900 m!6187862))

(declare-fun m!6187864 () Bool)

(assert (=> b!5124887 m!6187864))

(declare-fun m!6187866 () Bool)

(assert (=> b!5124887 m!6187866))

(declare-fun m!6187868 () Bool)

(assert (=> b!5124894 m!6187868))

(declare-fun m!6187870 () Bool)

(assert (=> start!541044 m!6187870))

(declare-fun m!6187872 () Bool)

(assert (=> b!5124895 m!6187872))

(declare-fun m!6187874 () Bool)

(assert (=> b!5124895 m!6187874))

(declare-fun m!6187876 () Bool)

(assert (=> b!5124895 m!6187876))

(declare-fun m!6187878 () Bool)

(assert (=> b!5124895 m!6187878))

(declare-fun m!6187880 () Bool)

(assert (=> b!5124893 m!6187880))

(declare-fun m!6187882 () Bool)

(assert (=> b!5124897 m!6187882))

(declare-fun m!6187884 () Bool)

(assert (=> b!5124897 m!6187884))

(check-sat (not b!5124895) (not b!5124896) (not b!5124886) (not b!5124893) (not b!5124887) (not b!5124890) (not start!541044) (not b!5124897) (not b!5124882) (not b!5124889) (not b!5124885) (not b!5124892) (not setNonEmpty!30549) (not b!5124900) (not b!5124894) (not b!5124881) (not b!5124883) (not setNonEmpty!30550) (not b!5124879) (not b!5124880) (not b!5124888) tp_is_empty!37755 (not b!5124899) (not b!5124898) (not b!5124901))
(check-sat)
(get-model)

(declare-fun d!1657374 () Bool)

(declare-fun c!880923 () Bool)

(declare-fun isEmpty!31956 (List!59411) Bool)

(assert (=> d!1657374 (= c!880923 (isEmpty!31956 knownP!20))))

(declare-fun e!3196167 () Bool)

(assert (=> d!1657374 (= (matchZipper!909 baseZ!46 knownP!20) e!3196167)))

(declare-fun b!5124950 () Bool)

(declare-fun nullableZipper!1038 ((InoxSet Context!7250)) Bool)

(assert (=> b!5124950 (= e!3196167 (nullableZipper!1038 baseZ!46))))

(declare-fun b!5124951 () Bool)

(assert (=> b!5124951 (= e!3196167 (matchZipper!909 (derivationStepZipper!864 baseZ!46 (head!10957 knownP!20)) (tail!10092 knownP!20)))))

(assert (= (and d!1657374 c!880923) b!5124950))

(assert (= (and d!1657374 (not c!880923)) b!5124951))

(declare-fun m!6187954 () Bool)

(assert (=> d!1657374 m!6187954))

(declare-fun m!6187956 () Bool)

(assert (=> b!5124950 m!6187956))

(declare-fun m!6187958 () Bool)

(assert (=> b!5124951 m!6187958))

(assert (=> b!5124951 m!6187958))

(declare-fun m!6187960 () Bool)

(assert (=> b!5124951 m!6187960))

(declare-fun m!6187962 () Bool)

(assert (=> b!5124951 m!6187962))

(assert (=> b!5124951 m!6187960))

(assert (=> b!5124951 m!6187962))

(declare-fun m!6187964 () Bool)

(assert (=> b!5124951 m!6187964))

(assert (=> b!5124883 d!1657374))

(declare-fun bs!1193686 () Bool)

(declare-fun b!5125024 () Bool)

(declare-fun d!1657386 () Bool)

(assert (= bs!1193686 (and b!5125024 d!1657386)))

(declare-fun lambda!251726 () Int)

(declare-fun lambda!251725 () Int)

(assert (=> bs!1193686 (not (= lambda!251726 lambda!251725))))

(declare-fun bs!1193687 () Bool)

(declare-fun b!5125025 () Bool)

(assert (= bs!1193687 (and b!5125025 d!1657386)))

(declare-fun lambda!251727 () Int)

(assert (=> bs!1193687 (not (= lambda!251727 lambda!251725))))

(declare-fun bs!1193688 () Bool)

(assert (= bs!1193688 (and b!5125025 b!5125024)))

(assert (=> bs!1193688 (= lambda!251727 lambda!251726)))

(declare-fun e!3196213 () Unit!150433)

(declare-fun Unit!150440 () Unit!150433)

(assert (=> b!5125024 (= e!3196213 Unit!150440)))

(declare-datatypes ((List!59414 0))(
  ( (Nil!59290) (Cons!59290 (h!65738 Context!7250) (t!372441 List!59414)) )
))
(declare-fun lt!2113329 () List!59414)

(declare-fun call!356712 () List!59414)

(assert (=> b!5125024 (= lt!2113329 call!356712)))

(declare-fun lt!2113333 () Unit!150433)

(declare-fun lemmaNotForallThenExists!348 (List!59414 Int) Unit!150433)

(assert (=> b!5125024 (= lt!2113333 (lemmaNotForallThenExists!348 lt!2113329 lambda!251725))))

(declare-fun call!356713 () Bool)

(assert (=> b!5125024 call!356713))

(declare-fun lt!2113332 () Unit!150433)

(assert (=> b!5125024 (= lt!2113332 lt!2113333)))

(declare-fun lt!2113327 () Bool)

(declare-datatypes ((Option!14708 0))(
  ( (None!14707) (Some!14707 (v!50720 List!59411)) )
))
(declare-fun isEmpty!31957 (Option!14708) Bool)

(declare-fun getLanguageWitness!835 ((InoxSet Context!7250)) Option!14708)

(assert (=> d!1657386 (= lt!2113327 (isEmpty!31957 (getLanguageWitness!835 z!4463)))))

(declare-fun forall!13638 ((InoxSet Context!7250) Int) Bool)

(assert (=> d!1657386 (= lt!2113327 (forall!13638 z!4463 lambda!251725))))

(declare-fun lt!2113334 () Unit!150433)

(assert (=> d!1657386 (= lt!2113334 e!3196213)))

(declare-fun c!880972 () Bool)

(assert (=> d!1657386 (= c!880972 (not (forall!13638 z!4463 lambda!251725)))))

(assert (=> d!1657386 (= (lostCauseZipper!1123 z!4463) lt!2113327)))

(declare-fun lt!2113328 () List!59414)

(declare-fun bm!356708 () Bool)

(declare-fun exists!1495 (List!59414 Int) Bool)

(assert (=> bm!356708 (= call!356713 (exists!1495 (ite c!880972 lt!2113329 lt!2113328) (ite c!880972 lambda!251726 lambda!251727)))))

(declare-fun Unit!150442 () Unit!150433)

(assert (=> b!5125025 (= e!3196213 Unit!150442)))

(assert (=> b!5125025 (= lt!2113328 call!356712)))

(declare-fun lt!2113330 () Unit!150433)

(declare-fun lemmaForallThenNotExists!331 (List!59414 Int) Unit!150433)

(assert (=> b!5125025 (= lt!2113330 (lemmaForallThenNotExists!331 lt!2113328 lambda!251725))))

(assert (=> b!5125025 (not call!356713)))

(declare-fun lt!2113331 () Unit!150433)

(assert (=> b!5125025 (= lt!2113331 lt!2113330)))

(declare-fun bm!356707 () Bool)

(declare-fun toList!8274 ((InoxSet Context!7250)) List!59414)

(assert (=> bm!356707 (= call!356712 (toList!8274 z!4463))))

(assert (= (and d!1657386 c!880972) b!5125024))

(assert (= (and d!1657386 (not c!880972)) b!5125025))

(assert (= (or b!5125024 b!5125025) bm!356707))

(assert (= (or b!5125024 b!5125025) bm!356708))

(declare-fun m!6188066 () Bool)

(assert (=> bm!356708 m!6188066))

(declare-fun m!6188068 () Bool)

(assert (=> b!5125024 m!6188068))

(declare-fun m!6188070 () Bool)

(assert (=> b!5125025 m!6188070))

(declare-fun m!6188072 () Bool)

(assert (=> d!1657386 m!6188072))

(assert (=> d!1657386 m!6188072))

(declare-fun m!6188074 () Bool)

(assert (=> d!1657386 m!6188074))

(declare-fun m!6188076 () Bool)

(assert (=> d!1657386 m!6188076))

(assert (=> d!1657386 m!6188076))

(declare-fun m!6188078 () Bool)

(assert (=> bm!356707 m!6188078))

(assert (=> b!5124894 d!1657386))

(declare-fun d!1657428 () Bool)

(declare-fun lambda!251730 () Int)

(declare-fun forall!13639 (List!59412 Int) Bool)

(assert (=> d!1657428 (= (inv!78783 setElem!30550) (forall!13639 (exprs!4125 setElem!30550) lambda!251730))))

(declare-fun bs!1193689 () Bool)

(assert (= bs!1193689 d!1657428))

(declare-fun m!6188080 () Bool)

(assert (=> bs!1193689 m!6188080))

(assert (=> setNonEmpty!30550 d!1657428))

(declare-fun b!5125049 () Bool)

(declare-fun lt!2113357 () List!59411)

(declare-fun e!3196227 () Bool)

(assert (=> b!5125049 (= e!3196227 (or (not (= lt!2113197 Nil!59287)) (= lt!2113357 lt!2113214)))))

(declare-fun d!1657430 () Bool)

(assert (=> d!1657430 e!3196227))

(declare-fun res!2182293 () Bool)

(assert (=> d!1657430 (=> (not res!2182293) (not e!3196227))))

(declare-fun content!10549 (List!59411) (InoxSet C!28748))

(assert (=> d!1657430 (= res!2182293 (= (content!10549 lt!2113357) ((_ map or) (content!10549 lt!2113214) (content!10549 lt!2113197))))))

(declare-fun e!3196226 () List!59411)

(assert (=> d!1657430 (= lt!2113357 e!3196226)))

(declare-fun c!880979 () Bool)

(assert (=> d!1657430 (= c!880979 ((_ is Nil!59287) lt!2113214))))

(assert (=> d!1657430 (= (++!13054 lt!2113214 lt!2113197) lt!2113357)))

(declare-fun b!5125048 () Bool)

(declare-fun res!2182294 () Bool)

(assert (=> b!5125048 (=> (not res!2182294) (not e!3196227))))

(assert (=> b!5125048 (= res!2182294 (= (size!39547 lt!2113357) (+ (size!39547 lt!2113214) (size!39547 lt!2113197))))))

(declare-fun b!5125047 () Bool)

(assert (=> b!5125047 (= e!3196226 (Cons!59287 (h!65735 lt!2113214) (++!13054 (t!372436 lt!2113214) lt!2113197)))))

(declare-fun b!5125046 () Bool)

(assert (=> b!5125046 (= e!3196226 lt!2113197)))

(assert (= (and d!1657430 c!880979) b!5125046))

(assert (= (and d!1657430 (not c!880979)) b!5125047))

(assert (= (and d!1657430 res!2182293) b!5125048))

(assert (= (and b!5125048 res!2182294) b!5125049))

(declare-fun m!6188082 () Bool)

(assert (=> d!1657430 m!6188082))

(declare-fun m!6188084 () Bool)

(assert (=> d!1657430 m!6188084))

(declare-fun m!6188086 () Bool)

(assert (=> d!1657430 m!6188086))

(declare-fun m!6188088 () Bool)

(assert (=> b!5125048 m!6188088))

(assert (=> b!5125048 m!6187824))

(declare-fun m!6188090 () Bool)

(assert (=> b!5125048 m!6188090))

(declare-fun m!6188092 () Bool)

(assert (=> b!5125047 m!6188092))

(assert (=> b!5124893 d!1657430))

(declare-fun d!1657432 () Bool)

(declare-fun c!880980 () Bool)

(assert (=> d!1657432 (= c!880980 (isEmpty!31956 lt!2113207))))

(declare-fun e!3196228 () Bool)

(assert (=> d!1657432 (= (matchZipper!909 z!4463 lt!2113207) e!3196228)))

(declare-fun b!5125050 () Bool)

(assert (=> b!5125050 (= e!3196228 (nullableZipper!1038 z!4463))))

(declare-fun b!5125051 () Bool)

(assert (=> b!5125051 (= e!3196228 (matchZipper!909 (derivationStepZipper!864 z!4463 (head!10957 lt!2113207)) (tail!10092 lt!2113207)))))

(assert (= (and d!1657432 c!880980) b!5125050))

(assert (= (and d!1657432 (not c!880980)) b!5125051))

(declare-fun m!6188094 () Bool)

(assert (=> d!1657432 m!6188094))

(declare-fun m!6188096 () Bool)

(assert (=> b!5125050 m!6188096))

(assert (=> b!5125051 m!6187882))

(assert (=> b!5125051 m!6187882))

(declare-fun m!6188098 () Bool)

(assert (=> b!5125051 m!6188098))

(assert (=> b!5125051 m!6187830))

(assert (=> b!5125051 m!6188098))

(assert (=> b!5125051 m!6187830))

(declare-fun m!6188100 () Bool)

(assert (=> b!5125051 m!6188100))

(assert (=> b!5124895 d!1657432))

(declare-fun d!1657434 () Bool)

(declare-fun lt!2113386 () List!59411)

(assert (=> d!1657434 (= (++!13054 testedP!265 lt!2113386) knownP!20)))

(declare-fun e!3196239 () List!59411)

(assert (=> d!1657434 (= lt!2113386 e!3196239)))

(declare-fun c!880989 () Bool)

(assert (=> d!1657434 (= c!880989 ((_ is Cons!59287) testedP!265))))

(assert (=> d!1657434 (>= (size!39547 knownP!20) (size!39547 testedP!265))))

(assert (=> d!1657434 (= (getSuffix!3318 knownP!20 testedP!265) lt!2113386)))

(declare-fun b!5125070 () Bool)

(assert (=> b!5125070 (= e!3196239 (getSuffix!3318 (tail!10092 knownP!20) (t!372436 testedP!265)))))

(declare-fun b!5125071 () Bool)

(assert (=> b!5125071 (= e!3196239 knownP!20)))

(assert (= (and d!1657434 c!880989) b!5125070))

(assert (= (and d!1657434 (not c!880989)) b!5125071))

(declare-fun m!6188102 () Bool)

(assert (=> d!1657434 m!6188102))

(assert (=> d!1657434 m!6187866))

(assert (=> d!1657434 m!6187864))

(assert (=> b!5125070 m!6187962))

(assert (=> b!5125070 m!6187962))

(declare-fun m!6188104 () Bool)

(assert (=> b!5125070 m!6188104))

(assert (=> b!5124895 d!1657434))

(declare-fun b!5125083 () Bool)

(declare-fun res!2182307 () Bool)

(declare-fun e!3196249 () Bool)

(assert (=> b!5125083 (=> (not res!2182307) (not e!3196249))))

(assert (=> b!5125083 (= res!2182307 (= (head!10957 testedP!265) (head!10957 knownP!20)))))

(declare-fun b!5125082 () Bool)

(declare-fun e!3196247 () Bool)

(assert (=> b!5125082 (= e!3196247 e!3196249)))

(declare-fun res!2182305 () Bool)

(assert (=> b!5125082 (=> (not res!2182305) (not e!3196249))))

(assert (=> b!5125082 (= res!2182305 (not ((_ is Nil!59287) knownP!20)))))

(declare-fun b!5125085 () Bool)

(declare-fun e!3196248 () Bool)

(assert (=> b!5125085 (= e!3196248 (>= (size!39547 knownP!20) (size!39547 testedP!265)))))

(declare-fun b!5125084 () Bool)

(assert (=> b!5125084 (= e!3196249 (isPrefix!5646 (tail!10092 testedP!265) (tail!10092 knownP!20)))))

(declare-fun d!1657436 () Bool)

(assert (=> d!1657436 e!3196248))

(declare-fun res!2182306 () Bool)

(assert (=> d!1657436 (=> res!2182306 e!3196248)))

(declare-fun lt!2113390 () Bool)

(assert (=> d!1657436 (= res!2182306 (not lt!2113390))))

(assert (=> d!1657436 (= lt!2113390 e!3196247)))

(declare-fun res!2182308 () Bool)

(assert (=> d!1657436 (=> res!2182308 e!3196247)))

(assert (=> d!1657436 (= res!2182308 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1657436 (= (isPrefix!5646 testedP!265 knownP!20) lt!2113390)))

(assert (= (and d!1657436 (not res!2182308)) b!5125082))

(assert (= (and b!5125082 res!2182305) b!5125083))

(assert (= (and b!5125083 res!2182307) b!5125084))

(assert (= (and d!1657436 (not res!2182306)) b!5125085))

(declare-fun m!6188156 () Bool)

(assert (=> b!5125083 m!6188156))

(assert (=> b!5125083 m!6187958))

(assert (=> b!5125085 m!6187866))

(assert (=> b!5125085 m!6187864))

(declare-fun m!6188158 () Bool)

(assert (=> b!5125084 m!6188158))

(assert (=> b!5125084 m!6187962))

(assert (=> b!5125084 m!6188158))

(assert (=> b!5125084 m!6187962))

(declare-fun m!6188160 () Bool)

(assert (=> b!5125084 m!6188160))

(assert (=> b!5124895 d!1657436))

(declare-fun d!1657442 () Bool)

(assert (=> d!1657442 (isPrefix!5646 testedP!265 knownP!20)))

(declare-fun lt!2113393 () Unit!150433)

(declare-fun choose!37721 (List!59411 List!59411 List!59411) Unit!150433)

(assert (=> d!1657442 (= lt!2113393 (choose!37721 knownP!20 testedP!265 input!5745))))

(assert (=> d!1657442 (isPrefix!5646 knownP!20 input!5745)))

(assert (=> d!1657442 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!781 knownP!20 testedP!265 input!5745) lt!2113393)))

(declare-fun bs!1193690 () Bool)

(assert (= bs!1193690 d!1657442))

(assert (=> bs!1193690 m!6187876))

(declare-fun m!6188162 () Bool)

(assert (=> bs!1193690 m!6188162))

(assert (=> bs!1193690 m!6187806))

(assert (=> b!5124895 d!1657442))

(declare-fun d!1657444 () Bool)

(assert (=> d!1657444 (= ($colon$colon!1155 lt!2113188 lt!2113194) (Cons!59287 lt!2113194 lt!2113188))))

(assert (=> b!5124886 d!1657444))

(declare-fun d!1657446 () Bool)

(assert (=> d!1657446 (= (tail!10092 lt!2113207) (t!372436 lt!2113207))))

(assert (=> b!5124886 d!1657446))

(declare-fun e!3196251 () Bool)

(declare-fun lt!2113394 () List!59411)

(declare-fun b!5125089 () Bool)

(assert (=> b!5125089 (= e!3196251 (or (not (= lt!2113213 Nil!59287)) (= lt!2113394 testedP!265)))))

(declare-fun d!1657448 () Bool)

(assert (=> d!1657448 e!3196251))

(declare-fun res!2182309 () Bool)

(assert (=> d!1657448 (=> (not res!2182309) (not e!3196251))))

(assert (=> d!1657448 (= res!2182309 (= (content!10549 lt!2113394) ((_ map or) (content!10549 testedP!265) (content!10549 lt!2113213))))))

(declare-fun e!3196250 () List!59411)

(assert (=> d!1657448 (= lt!2113394 e!3196250)))

(declare-fun c!880991 () Bool)

(assert (=> d!1657448 (= c!880991 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1657448 (= (++!13054 testedP!265 lt!2113213) lt!2113394)))

(declare-fun b!5125088 () Bool)

(declare-fun res!2182310 () Bool)

(assert (=> b!5125088 (=> (not res!2182310) (not e!3196251))))

(assert (=> b!5125088 (= res!2182310 (= (size!39547 lt!2113394) (+ (size!39547 testedP!265) (size!39547 lt!2113213))))))

(declare-fun b!5125087 () Bool)

(assert (=> b!5125087 (= e!3196250 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) lt!2113213)))))

(declare-fun b!5125086 () Bool)

(assert (=> b!5125086 (= e!3196250 lt!2113213)))

(assert (= (and d!1657448 c!880991) b!5125086))

(assert (= (and d!1657448 (not c!880991)) b!5125087))

(assert (= (and d!1657448 res!2182309) b!5125088))

(assert (= (and b!5125088 res!2182310) b!5125089))

(declare-fun m!6188164 () Bool)

(assert (=> d!1657448 m!6188164))

(declare-fun m!6188166 () Bool)

(assert (=> d!1657448 m!6188166))

(declare-fun m!6188168 () Bool)

(assert (=> d!1657448 m!6188168))

(declare-fun m!6188170 () Bool)

(assert (=> b!5125088 m!6188170))

(assert (=> b!5125088 m!6187864))

(declare-fun m!6188172 () Bool)

(assert (=> b!5125088 m!6188172))

(declare-fun m!6188174 () Bool)

(assert (=> b!5125087 m!6188174))

(assert (=> b!5124896 d!1657448))

(declare-fun lt!2113395 () List!59411)

(declare-fun b!5125093 () Bool)

(declare-fun e!3196253 () Bool)

(assert (=> b!5125093 (= e!3196253 (or (not (= lt!2113195 Nil!59287)) (= lt!2113395 lt!2113207)))))

(declare-fun d!1657450 () Bool)

(assert (=> d!1657450 e!3196253))

(declare-fun res!2182311 () Bool)

(assert (=> d!1657450 (=> (not res!2182311) (not e!3196253))))

(assert (=> d!1657450 (= res!2182311 (= (content!10549 lt!2113395) ((_ map or) (content!10549 lt!2113207) (content!10549 lt!2113195))))))

(declare-fun e!3196252 () List!59411)

(assert (=> d!1657450 (= lt!2113395 e!3196252)))

(declare-fun c!880992 () Bool)

(assert (=> d!1657450 (= c!880992 ((_ is Nil!59287) lt!2113207))))

(assert (=> d!1657450 (= (++!13054 lt!2113207 lt!2113195) lt!2113395)))

(declare-fun b!5125092 () Bool)

(declare-fun res!2182312 () Bool)

(assert (=> b!5125092 (=> (not res!2182312) (not e!3196253))))

(assert (=> b!5125092 (= res!2182312 (= (size!39547 lt!2113395) (+ (size!39547 lt!2113207) (size!39547 lt!2113195))))))

(declare-fun b!5125091 () Bool)

(assert (=> b!5125091 (= e!3196252 (Cons!59287 (h!65735 lt!2113207) (++!13054 (t!372436 lt!2113207) lt!2113195)))))

(declare-fun b!5125090 () Bool)

(assert (=> b!5125090 (= e!3196252 lt!2113195)))

(assert (= (and d!1657450 c!880992) b!5125090))

(assert (= (and d!1657450 (not c!880992)) b!5125091))

(assert (= (and d!1657450 res!2182311) b!5125092))

(assert (= (and b!5125092 res!2182312) b!5125093))

(declare-fun m!6188176 () Bool)

(assert (=> d!1657450 m!6188176))

(declare-fun m!6188178 () Bool)

(assert (=> d!1657450 m!6188178))

(declare-fun m!6188180 () Bool)

(assert (=> d!1657450 m!6188180))

(declare-fun m!6188182 () Bool)

(assert (=> b!5125092 m!6188182))

(declare-fun m!6188184 () Bool)

(assert (=> b!5125092 m!6188184))

(declare-fun m!6188186 () Bool)

(assert (=> b!5125092 m!6188186))

(declare-fun m!6188188 () Bool)

(assert (=> b!5125091 m!6188188))

(assert (=> b!5124896 d!1657450))

(declare-fun d!1657452 () Bool)

(assert (=> d!1657452 (= (++!13054 (++!13054 testedP!265 lt!2113207) lt!2113195) (++!13054 testedP!265 (++!13054 lt!2113207 lt!2113195)))))

(declare-fun lt!2113398 () Unit!150433)

(declare-fun choose!37722 (List!59411 List!59411 List!59411) Unit!150433)

(assert (=> d!1657452 (= lt!2113398 (choose!37722 testedP!265 lt!2113207 lt!2113195))))

(assert (=> d!1657452 (= (lemmaConcatAssociativity!2798 testedP!265 lt!2113207 lt!2113195) lt!2113398)))

(declare-fun bs!1193691 () Bool)

(assert (= bs!1193691 d!1657452))

(assert (=> bs!1193691 m!6187790))

(declare-fun m!6188190 () Bool)

(assert (=> bs!1193691 m!6188190))

(assert (=> bs!1193691 m!6187810))

(assert (=> bs!1193691 m!6187790))

(declare-fun m!6188192 () Bool)

(assert (=> bs!1193691 m!6188192))

(assert (=> bs!1193691 m!6187810))

(declare-fun m!6188194 () Bool)

(assert (=> bs!1193691 m!6188194))

(assert (=> b!5124896 d!1657452))

(declare-fun d!1657454 () Bool)

(declare-fun lt!2113403 () Int)

(assert (=> d!1657454 (>= lt!2113403 0)))

(declare-fun e!3196256 () Int)

(assert (=> d!1657454 (= lt!2113403 e!3196256)))

(declare-fun c!880995 () Bool)

(assert (=> d!1657454 (= c!880995 ((_ is Nil!59287) (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 lt!2113198))))))

(assert (=> d!1657454 (= (size!39547 (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 lt!2113198))) lt!2113403)))

(declare-fun b!5125098 () Bool)

(assert (=> b!5125098 (= e!3196256 0)))

(declare-fun b!5125099 () Bool)

(assert (=> b!5125099 (= e!3196256 (+ 1 (size!39547 (t!372436 (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 lt!2113198))))))))

(assert (= (and d!1657454 c!880995) b!5125098))

(assert (= (and d!1657454 (not c!880995)) b!5125099))

(declare-fun m!6188196 () Bool)

(assert (=> b!5125099 m!6188196))

(assert (=> b!5124885 d!1657454))

(declare-fun b!5125193 () Bool)

(declare-fun e!3196316 () Bool)

(declare-fun e!3196319 () Bool)

(assert (=> b!5125193 (= e!3196316 e!3196319)))

(declare-fun res!2182337 () Bool)

(assert (=> b!5125193 (=> res!2182337 e!3196319)))

(declare-fun lt!2113499 () tuple2!63640)

(assert (=> b!5125193 (= res!2182337 (isEmpty!31956 (_1!35123 lt!2113499)))))

(declare-fun d!1657456 () Bool)

(assert (=> d!1657456 e!3196316))

(declare-fun res!2182338 () Bool)

(assert (=> d!1657456 (=> (not res!2182338) (not e!3196316))))

(assert (=> d!1657456 (= res!2182338 (= (++!13054 (_1!35123 lt!2113499) (_2!35123 lt!2113499)) input!5745))))

(declare-fun e!3196312 () tuple2!63640)

(assert (=> d!1657456 (= lt!2113499 e!3196312)))

(declare-fun c!881026 () Bool)

(assert (=> d!1657456 (= c!881026 (lostCauseZipper!1123 lt!2113196))))

(declare-fun lt!2113495 () Unit!150433)

(declare-fun Unit!150445 () Unit!150433)

(assert (=> d!1657456 (= lt!2113495 Unit!150445)))

(assert (=> d!1657456 (= (getSuffix!3318 input!5745 lt!2113214) (getSuffix!3318 input!5745 lt!2113214))))

(declare-fun lt!2113516 () Unit!150433)

(declare-fun lt!2113496 () Unit!150433)

(assert (=> d!1657456 (= lt!2113516 lt!2113496)))

(declare-fun lt!2113513 () List!59411)

(assert (=> d!1657456 (= (getSuffix!3318 input!5745 lt!2113214) lt!2113513)))

(assert (=> d!1657456 (= lt!2113496 (lemmaSamePrefixThenSameSuffix!2664 lt!2113214 (getSuffix!3318 input!5745 lt!2113214) lt!2113214 lt!2113513 input!5745))))

(assert (=> d!1657456 (= lt!2113513 (getSuffix!3318 input!5745 lt!2113214))))

(declare-fun lt!2113500 () Unit!150433)

(declare-fun lt!2113511 () Unit!150433)

(assert (=> d!1657456 (= lt!2113500 lt!2113511)))

(assert (=> d!1657456 (isPrefix!5646 lt!2113214 (++!13054 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3558 (List!59411 List!59411) Unit!150433)

(assert (=> d!1657456 (= lt!2113511 (lemmaConcatTwoListThenFirstIsPrefix!3558 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)))))

(assert (=> d!1657456 (= (++!13054 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)) input!5745)))

(assert (=> d!1657456 (= (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 lt!2113198) lt!2113499)))

(declare-fun b!5125194 () Bool)

(declare-fun e!3196318 () tuple2!63640)

(declare-fun e!3196317 () tuple2!63640)

(assert (=> b!5125194 (= e!3196318 e!3196317)))

(declare-fun lt!2113510 () tuple2!63640)

(declare-fun call!356763 () tuple2!63640)

(assert (=> b!5125194 (= lt!2113510 call!356763)))

(declare-fun c!881025 () Bool)

(assert (=> b!5125194 (= c!881025 (isEmpty!31956 (_1!35123 lt!2113510)))))

(declare-fun b!5125195 () Bool)

(assert (=> b!5125195 (= e!3196319 (>= (size!39547 (_1!35123 lt!2113499)) (size!39547 lt!2113214)))))

(declare-fun b!5125196 () Bool)

(declare-fun e!3196313 () Unit!150433)

(declare-fun Unit!150446 () Unit!150433)

(assert (=> b!5125196 (= e!3196313 Unit!150446)))

(declare-fun lt!2113515 () List!59411)

(declare-fun call!356762 () List!59411)

(declare-fun bm!356757 () Bool)

(declare-fun call!356766 () (InoxSet Context!7250))

(assert (=> bm!356757 (= call!356763 (findLongestMatchInnerZipper!201 call!356766 lt!2113515 (+ (size!39547 lt!2113214) 1) call!356762 input!5745 lt!2113198))))

(declare-fun b!5125197 () Bool)

(assert (=> b!5125197 (= e!3196317 (tuple2!63641 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)))))

(declare-fun bm!356758 () Bool)

(declare-fun call!356768 () C!28748)

(assert (=> bm!356758 (= call!356766 (derivationStepZipper!864 lt!2113196 call!356768))))

(declare-fun b!5125198 () Bool)

(declare-fun Unit!150447 () Unit!150433)

(assert (=> b!5125198 (= e!3196313 Unit!150447)))

(declare-fun lt!2113505 () Unit!150433)

(declare-fun call!356767 () Unit!150433)

(assert (=> b!5125198 (= lt!2113505 call!356767)))

(declare-fun call!356764 () Bool)

(assert (=> b!5125198 call!356764))

(declare-fun lt!2113519 () Unit!150433)

(assert (=> b!5125198 (= lt!2113519 lt!2113505)))

(declare-fun lt!2113507 () Unit!150433)

(declare-fun call!356769 () Unit!150433)

(assert (=> b!5125198 (= lt!2113507 call!356769)))

(assert (=> b!5125198 (= input!5745 lt!2113214)))

(declare-fun lt!2113508 () Unit!150433)

(assert (=> b!5125198 (= lt!2113508 lt!2113507)))

(assert (=> b!5125198 false))

(declare-fun bm!356759 () Bool)

(declare-fun call!356765 () Bool)

(assert (=> bm!356759 (= call!356765 (nullableZipper!1038 lt!2113196))))

(declare-fun b!5125199 () Bool)

(assert (=> b!5125199 (= e!3196312 (tuple2!63641 Nil!59287 input!5745))))

(declare-fun bm!356760 () Bool)

(declare-fun lemmaIsPrefixRefl!3706 (List!59411 List!59411) Unit!150433)

(assert (=> bm!356760 (= call!356767 (lemmaIsPrefixRefl!3706 input!5745 input!5745))))

(declare-fun bm!356761 () Bool)

(assert (=> bm!356761 (= call!356768 (head!10957 (getSuffix!3318 input!5745 lt!2113214)))))

(declare-fun b!5125200 () Bool)

(declare-fun c!881023 () Bool)

(assert (=> b!5125200 (= c!881023 call!356765)))

(declare-fun lt!2113502 () Unit!150433)

(declare-fun lt!2113498 () Unit!150433)

(assert (=> b!5125200 (= lt!2113502 lt!2113498)))

(assert (=> b!5125200 (= input!5745 lt!2113214)))

(assert (=> b!5125200 (= lt!2113498 call!356769)))

(declare-fun lt!2113517 () Unit!150433)

(declare-fun lt!2113506 () Unit!150433)

(assert (=> b!5125200 (= lt!2113517 lt!2113506)))

(assert (=> b!5125200 call!356764))

(assert (=> b!5125200 (= lt!2113506 call!356767)))

(declare-fun e!3196314 () tuple2!63640)

(declare-fun e!3196315 () tuple2!63640)

(assert (=> b!5125200 (= e!3196314 e!3196315)))

(declare-fun bm!356762 () Bool)

(assert (=> bm!356762 (= call!356764 (isPrefix!5646 input!5745 input!5745))))

(declare-fun b!5125201 () Bool)

(declare-fun c!881022 () Bool)

(assert (=> b!5125201 (= c!881022 call!356765)))

(declare-fun lt!2113501 () Unit!150433)

(declare-fun lt!2113512 () Unit!150433)

(assert (=> b!5125201 (= lt!2113501 lt!2113512)))

(declare-fun lt!2113503 () C!28748)

(declare-fun lt!2113497 () List!59411)

(assert (=> b!5125201 (= (++!13054 (++!13054 lt!2113214 (Cons!59287 lt!2113503 Nil!59287)) lt!2113497) input!5745)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1545 (List!59411 C!28748 List!59411 List!59411) Unit!150433)

(assert (=> b!5125201 (= lt!2113512 (lemmaMoveElementToOtherListKeepsConcatEq!1545 lt!2113214 lt!2113503 lt!2113497 input!5745))))

(assert (=> b!5125201 (= lt!2113497 (tail!10092 (getSuffix!3318 input!5745 lt!2113214)))))

(assert (=> b!5125201 (= lt!2113503 (head!10957 (getSuffix!3318 input!5745 lt!2113214)))))

(declare-fun lt!2113494 () Unit!150433)

(declare-fun lt!2113504 () Unit!150433)

(assert (=> b!5125201 (= lt!2113494 lt!2113504)))

(assert (=> b!5125201 (isPrefix!5646 (++!13054 lt!2113214 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287)) input!5745)))

(assert (=> b!5125201 (= lt!2113504 (lemmaAddHeadSuffixToPrefixStillPrefix!1020 lt!2113214 input!5745))))

(assert (=> b!5125201 (= lt!2113515 (++!13054 lt!2113214 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287)))))

(declare-fun lt!2113518 () Unit!150433)

(assert (=> b!5125201 (= lt!2113518 e!3196313)))

(declare-fun c!881024 () Bool)

(assert (=> b!5125201 (= c!881024 (= (size!39547 lt!2113214) (size!39547 input!5745)))))

(declare-fun lt!2113509 () Unit!150433)

(declare-fun lt!2113514 () Unit!150433)

(assert (=> b!5125201 (= lt!2113509 lt!2113514)))

(assert (=> b!5125201 (<= (size!39547 lt!2113214) (size!39547 input!5745))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!860 (List!59411 List!59411) Unit!150433)

(assert (=> b!5125201 (= lt!2113514 (lemmaIsPrefixThenSmallerEqSize!860 lt!2113214 input!5745))))

(assert (=> b!5125201 (= e!3196314 e!3196318)))

(declare-fun bm!356763 () Bool)

(assert (=> bm!356763 (= call!356762 (tail!10092 (getSuffix!3318 input!5745 lt!2113214)))))

(declare-fun b!5125202 () Bool)

(assert (=> b!5125202 (= e!3196315 (tuple2!63641 lt!2113214 Nil!59287))))

(declare-fun b!5125203 () Bool)

(assert (=> b!5125203 (= e!3196317 lt!2113510)))

(declare-fun bm!356764 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1350 (List!59411 List!59411 List!59411) Unit!150433)

(assert (=> bm!356764 (= call!356769 (lemmaIsPrefixSameLengthThenSameList!1350 input!5745 lt!2113214 input!5745))))

(declare-fun b!5125204 () Bool)

(assert (=> b!5125204 (= e!3196312 e!3196314)))

(declare-fun c!881021 () Bool)

(assert (=> b!5125204 (= c!881021 (= (size!39547 lt!2113214) lt!2113198))))

(declare-fun b!5125205 () Bool)

(assert (=> b!5125205 (= e!3196315 (tuple2!63641 Nil!59287 input!5745))))

(declare-fun b!5125206 () Bool)

(assert (=> b!5125206 (= e!3196318 call!356763)))

(assert (= (and d!1657456 c!881026) b!5125199))

(assert (= (and d!1657456 (not c!881026)) b!5125204))

(assert (= (and b!5125204 c!881021) b!5125200))

(assert (= (and b!5125204 (not c!881021)) b!5125201))

(assert (= (and b!5125200 c!881023) b!5125202))

(assert (= (and b!5125200 (not c!881023)) b!5125205))

(assert (= (and b!5125201 c!881024) b!5125198))

(assert (= (and b!5125201 (not c!881024)) b!5125196))

(assert (= (and b!5125201 c!881022) b!5125194))

(assert (= (and b!5125201 (not c!881022)) b!5125206))

(assert (= (and b!5125194 c!881025) b!5125197))

(assert (= (and b!5125194 (not c!881025)) b!5125203))

(assert (= (or b!5125194 b!5125206) bm!356763))

(assert (= (or b!5125194 b!5125206) bm!356761))

(assert (= (or b!5125194 b!5125206) bm!356758))

(assert (= (or b!5125194 b!5125206) bm!356757))

(assert (= (or b!5125200 b!5125198) bm!356762))

(assert (= (or b!5125200 b!5125198) bm!356760))

(assert (= (or b!5125200 b!5125201) bm!356759))

(assert (= (or b!5125200 b!5125198) bm!356764))

(assert (= (and d!1657456 res!2182338) b!5125193))

(assert (= (and b!5125193 (not res!2182337)) b!5125195))

(declare-fun m!6188304 () Bool)

(assert (=> bm!356762 m!6188304))

(assert (=> d!1657456 m!6187820))

(declare-fun m!6188306 () Bool)

(assert (=> d!1657456 m!6188306))

(assert (=> d!1657456 m!6187820))

(declare-fun m!6188308 () Bool)

(assert (=> d!1657456 m!6188308))

(assert (=> d!1657456 m!6188306))

(declare-fun m!6188310 () Bool)

(assert (=> d!1657456 m!6188310))

(assert (=> d!1657456 m!6187820))

(declare-fun m!6188312 () Bool)

(assert (=> d!1657456 m!6188312))

(assert (=> d!1657456 m!6187820))

(declare-fun m!6188314 () Bool)

(assert (=> d!1657456 m!6188314))

(declare-fun m!6188316 () Bool)

(assert (=> d!1657456 m!6188316))

(assert (=> bm!356763 m!6187820))

(declare-fun m!6188318 () Bool)

(assert (=> bm!356763 m!6188318))

(declare-fun m!6188320 () Bool)

(assert (=> bm!356757 m!6188320))

(declare-fun m!6188322 () Bool)

(assert (=> b!5125195 m!6188322))

(assert (=> b!5125195 m!6187824))

(declare-fun m!6188324 () Bool)

(assert (=> b!5125193 m!6188324))

(declare-fun m!6188326 () Bool)

(assert (=> bm!356759 m!6188326))

(declare-fun m!6188328 () Bool)

(assert (=> bm!356758 m!6188328))

(assert (=> bm!356761 m!6187820))

(declare-fun m!6188330 () Bool)

(assert (=> bm!356761 m!6188330))

(declare-fun m!6188332 () Bool)

(assert (=> bm!356764 m!6188332))

(declare-fun m!6188334 () Bool)

(assert (=> b!5125201 m!6188334))

(declare-fun m!6188336 () Bool)

(assert (=> b!5125201 m!6188336))

(assert (=> b!5125201 m!6187820))

(assert (=> b!5125201 m!6188318))

(assert (=> b!5125201 m!6187862))

(assert (=> b!5125201 m!6187820))

(assert (=> b!5125201 m!6188330))

(declare-fun m!6188338 () Bool)

(assert (=> b!5125201 m!6188338))

(declare-fun m!6188340 () Bool)

(assert (=> b!5125201 m!6188340))

(assert (=> b!5125201 m!6187824))

(assert (=> b!5125201 m!6188338))

(assert (=> b!5125201 m!6188334))

(declare-fun m!6188342 () Bool)

(assert (=> b!5125201 m!6188342))

(assert (=> b!5125201 m!6187820))

(assert (=> b!5125201 m!6188330))

(assert (=> b!5125201 m!6188338))

(assert (=> b!5125201 m!6187820))

(declare-fun m!6188344 () Bool)

(assert (=> b!5125201 m!6188344))

(declare-fun m!6188346 () Bool)

(assert (=> b!5125201 m!6188346))

(declare-fun m!6188348 () Bool)

(assert (=> b!5125194 m!6188348))

(declare-fun m!6188350 () Bool)

(assert (=> bm!356760 m!6188350))

(assert (=> b!5124885 d!1657456))

(declare-fun d!1657492 () Bool)

(declare-fun lt!2113520 () Int)

(assert (=> d!1657492 (>= lt!2113520 0)))

(declare-fun e!3196320 () Int)

(assert (=> d!1657492 (= lt!2113520 e!3196320)))

(declare-fun c!881027 () Bool)

(assert (=> d!1657492 (= c!881027 ((_ is Nil!59287) lt!2113214))))

(assert (=> d!1657492 (= (size!39547 lt!2113214) lt!2113520)))

(declare-fun b!5125207 () Bool)

(assert (=> b!5125207 (= e!3196320 0)))

(declare-fun b!5125208 () Bool)

(assert (=> b!5125208 (= e!3196320 (+ 1 (size!39547 (t!372436 lt!2113214))))))

(assert (= (and d!1657492 c!881027) b!5125207))

(assert (= (and d!1657492 (not c!881027)) b!5125208))

(declare-fun m!6188352 () Bool)

(assert (=> b!5125208 m!6188352))

(assert (=> b!5124885 d!1657492))

(declare-fun d!1657494 () Bool)

(declare-fun lt!2113521 () Int)

(assert (=> d!1657494 (>= lt!2113521 0)))

(declare-fun e!3196321 () Int)

(assert (=> d!1657494 (= lt!2113521 e!3196321)))

(declare-fun c!881028 () Bool)

(assert (=> d!1657494 (= c!881028 ((_ is Nil!59287) (_1!35123 (findLongestMatchInnerZipper!201 z!4463 testedP!265 lt!2113208 lt!2113191 input!5745 lt!2113198))))))

(assert (=> d!1657494 (= (size!39547 (_1!35123 (findLongestMatchInnerZipper!201 z!4463 testedP!265 lt!2113208 lt!2113191 input!5745 lt!2113198))) lt!2113521)))

(declare-fun b!5125209 () Bool)

(assert (=> b!5125209 (= e!3196321 0)))

(declare-fun b!5125210 () Bool)

(assert (=> b!5125210 (= e!3196321 (+ 1 (size!39547 (t!372436 (_1!35123 (findLongestMatchInnerZipper!201 z!4463 testedP!265 lt!2113208 lt!2113191 input!5745 lt!2113198))))))))

(assert (= (and d!1657494 c!881028) b!5125209))

(assert (= (and d!1657494 (not c!881028)) b!5125210))

(declare-fun m!6188354 () Bool)

(assert (=> b!5125210 m!6188354))

(assert (=> b!5124885 d!1657494))

(declare-fun b!5125211 () Bool)

(declare-fun e!3196326 () Bool)

(declare-fun e!3196329 () Bool)

(assert (=> b!5125211 (= e!3196326 e!3196329)))

(declare-fun res!2182339 () Bool)

(assert (=> b!5125211 (=> res!2182339 e!3196329)))

(declare-fun lt!2113527 () tuple2!63640)

(assert (=> b!5125211 (= res!2182339 (isEmpty!31956 (_1!35123 lt!2113527)))))

(declare-fun d!1657496 () Bool)

(assert (=> d!1657496 e!3196326))

(declare-fun res!2182340 () Bool)

(assert (=> d!1657496 (=> (not res!2182340) (not e!3196326))))

(assert (=> d!1657496 (= res!2182340 (= (++!13054 (_1!35123 lt!2113527) (_2!35123 lt!2113527)) input!5745))))

(declare-fun e!3196322 () tuple2!63640)

(assert (=> d!1657496 (= lt!2113527 e!3196322)))

(declare-fun c!881034 () Bool)

(assert (=> d!1657496 (= c!881034 (lostCauseZipper!1123 z!4463))))

(declare-fun lt!2113523 () Unit!150433)

(declare-fun Unit!150448 () Unit!150433)

(assert (=> d!1657496 (= lt!2113523 Unit!150448)))

(assert (=> d!1657496 (= (getSuffix!3318 input!5745 testedP!265) lt!2113191)))

(declare-fun lt!2113544 () Unit!150433)

(declare-fun lt!2113524 () Unit!150433)

(assert (=> d!1657496 (= lt!2113544 lt!2113524)))

(declare-fun lt!2113541 () List!59411)

(assert (=> d!1657496 (= lt!2113191 lt!2113541)))

(assert (=> d!1657496 (= lt!2113524 (lemmaSamePrefixThenSameSuffix!2664 testedP!265 lt!2113191 testedP!265 lt!2113541 input!5745))))

(assert (=> d!1657496 (= lt!2113541 (getSuffix!3318 input!5745 testedP!265))))

(declare-fun lt!2113528 () Unit!150433)

(declare-fun lt!2113539 () Unit!150433)

(assert (=> d!1657496 (= lt!2113528 lt!2113539)))

(assert (=> d!1657496 (isPrefix!5646 testedP!265 (++!13054 testedP!265 lt!2113191))))

(assert (=> d!1657496 (= lt!2113539 (lemmaConcatTwoListThenFirstIsPrefix!3558 testedP!265 lt!2113191))))

(assert (=> d!1657496 (= (++!13054 testedP!265 lt!2113191) input!5745)))

(assert (=> d!1657496 (= (findLongestMatchInnerZipper!201 z!4463 testedP!265 lt!2113208 lt!2113191 input!5745 lt!2113198) lt!2113527)))

(declare-fun b!5125212 () Bool)

(declare-fun e!3196328 () tuple2!63640)

(declare-fun e!3196327 () tuple2!63640)

(assert (=> b!5125212 (= e!3196328 e!3196327)))

(declare-fun lt!2113538 () tuple2!63640)

(declare-fun call!356771 () tuple2!63640)

(assert (=> b!5125212 (= lt!2113538 call!356771)))

(declare-fun c!881033 () Bool)

(assert (=> b!5125212 (= c!881033 (isEmpty!31956 (_1!35123 lt!2113538)))))

(declare-fun b!5125213 () Bool)

(assert (=> b!5125213 (= e!3196329 (>= (size!39547 (_1!35123 lt!2113527)) (size!39547 testedP!265)))))

(declare-fun b!5125214 () Bool)

(declare-fun e!3196323 () Unit!150433)

(declare-fun Unit!150449 () Unit!150433)

(assert (=> b!5125214 (= e!3196323 Unit!150449)))

(declare-fun call!356770 () List!59411)

(declare-fun bm!356765 () Bool)

(declare-fun lt!2113543 () List!59411)

(declare-fun call!356774 () (InoxSet Context!7250))

(assert (=> bm!356765 (= call!356771 (findLongestMatchInnerZipper!201 call!356774 lt!2113543 (+ lt!2113208 1) call!356770 input!5745 lt!2113198))))

(declare-fun b!5125215 () Bool)

(assert (=> b!5125215 (= e!3196327 (tuple2!63641 testedP!265 lt!2113191))))

(declare-fun bm!356766 () Bool)

(declare-fun call!356776 () C!28748)

(assert (=> bm!356766 (= call!356774 (derivationStepZipper!864 z!4463 call!356776))))

(declare-fun b!5125216 () Bool)

(declare-fun Unit!150450 () Unit!150433)

(assert (=> b!5125216 (= e!3196323 Unit!150450)))

(declare-fun lt!2113533 () Unit!150433)

(declare-fun call!356775 () Unit!150433)

(assert (=> b!5125216 (= lt!2113533 call!356775)))

(declare-fun call!356772 () Bool)

(assert (=> b!5125216 call!356772))

(declare-fun lt!2113547 () Unit!150433)

(assert (=> b!5125216 (= lt!2113547 lt!2113533)))

(declare-fun lt!2113535 () Unit!150433)

(declare-fun call!356777 () Unit!150433)

(assert (=> b!5125216 (= lt!2113535 call!356777)))

(assert (=> b!5125216 (= input!5745 testedP!265)))

(declare-fun lt!2113536 () Unit!150433)

(assert (=> b!5125216 (= lt!2113536 lt!2113535)))

(assert (=> b!5125216 false))

(declare-fun bm!356767 () Bool)

(declare-fun call!356773 () Bool)

(assert (=> bm!356767 (= call!356773 (nullableZipper!1038 z!4463))))

(declare-fun b!5125217 () Bool)

(assert (=> b!5125217 (= e!3196322 (tuple2!63641 Nil!59287 input!5745))))

(declare-fun bm!356768 () Bool)

(assert (=> bm!356768 (= call!356775 (lemmaIsPrefixRefl!3706 input!5745 input!5745))))

(declare-fun bm!356769 () Bool)

(assert (=> bm!356769 (= call!356776 (head!10957 lt!2113191))))

(declare-fun b!5125218 () Bool)

(declare-fun c!881031 () Bool)

(assert (=> b!5125218 (= c!881031 call!356773)))

(declare-fun lt!2113530 () Unit!150433)

(declare-fun lt!2113526 () Unit!150433)

(assert (=> b!5125218 (= lt!2113530 lt!2113526)))

(assert (=> b!5125218 (= input!5745 testedP!265)))

(assert (=> b!5125218 (= lt!2113526 call!356777)))

(declare-fun lt!2113545 () Unit!150433)

(declare-fun lt!2113534 () Unit!150433)

(assert (=> b!5125218 (= lt!2113545 lt!2113534)))

(assert (=> b!5125218 call!356772))

(assert (=> b!5125218 (= lt!2113534 call!356775)))

(declare-fun e!3196324 () tuple2!63640)

(declare-fun e!3196325 () tuple2!63640)

(assert (=> b!5125218 (= e!3196324 e!3196325)))

(declare-fun bm!356770 () Bool)

(assert (=> bm!356770 (= call!356772 (isPrefix!5646 input!5745 input!5745))))

(declare-fun b!5125219 () Bool)

(declare-fun c!881030 () Bool)

(assert (=> b!5125219 (= c!881030 call!356773)))

(declare-fun lt!2113529 () Unit!150433)

(declare-fun lt!2113540 () Unit!150433)

(assert (=> b!5125219 (= lt!2113529 lt!2113540)))

(declare-fun lt!2113525 () List!59411)

(declare-fun lt!2113531 () C!28748)

(assert (=> b!5125219 (= (++!13054 (++!13054 testedP!265 (Cons!59287 lt!2113531 Nil!59287)) lt!2113525) input!5745)))

(assert (=> b!5125219 (= lt!2113540 (lemmaMoveElementToOtherListKeepsConcatEq!1545 testedP!265 lt!2113531 lt!2113525 input!5745))))

(assert (=> b!5125219 (= lt!2113525 (tail!10092 lt!2113191))))

(assert (=> b!5125219 (= lt!2113531 (head!10957 lt!2113191))))

(declare-fun lt!2113522 () Unit!150433)

(declare-fun lt!2113532 () Unit!150433)

(assert (=> b!5125219 (= lt!2113522 lt!2113532)))

(assert (=> b!5125219 (isPrefix!5646 (++!13054 testedP!265 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287)) input!5745)))

(assert (=> b!5125219 (= lt!2113532 (lemmaAddHeadSuffixToPrefixStillPrefix!1020 testedP!265 input!5745))))

(assert (=> b!5125219 (= lt!2113543 (++!13054 testedP!265 (Cons!59287 (head!10957 lt!2113191) Nil!59287)))))

(declare-fun lt!2113546 () Unit!150433)

(assert (=> b!5125219 (= lt!2113546 e!3196323)))

(declare-fun c!881032 () Bool)

(assert (=> b!5125219 (= c!881032 (= (size!39547 testedP!265) (size!39547 input!5745)))))

(declare-fun lt!2113537 () Unit!150433)

(declare-fun lt!2113542 () Unit!150433)

(assert (=> b!5125219 (= lt!2113537 lt!2113542)))

(assert (=> b!5125219 (<= (size!39547 testedP!265) (size!39547 input!5745))))

(assert (=> b!5125219 (= lt!2113542 (lemmaIsPrefixThenSmallerEqSize!860 testedP!265 input!5745))))

(assert (=> b!5125219 (= e!3196324 e!3196328)))

(declare-fun bm!356771 () Bool)

(assert (=> bm!356771 (= call!356770 (tail!10092 lt!2113191))))

(declare-fun b!5125220 () Bool)

(assert (=> b!5125220 (= e!3196325 (tuple2!63641 testedP!265 Nil!59287))))

(declare-fun b!5125221 () Bool)

(assert (=> b!5125221 (= e!3196327 lt!2113538)))

(declare-fun bm!356772 () Bool)

(assert (=> bm!356772 (= call!356777 (lemmaIsPrefixSameLengthThenSameList!1350 input!5745 testedP!265 input!5745))))

(declare-fun b!5125222 () Bool)

(assert (=> b!5125222 (= e!3196322 e!3196324)))

(declare-fun c!881029 () Bool)

(assert (=> b!5125222 (= c!881029 (= lt!2113208 lt!2113198))))

(declare-fun b!5125223 () Bool)

(assert (=> b!5125223 (= e!3196325 (tuple2!63641 Nil!59287 input!5745))))

(declare-fun b!5125224 () Bool)

(assert (=> b!5125224 (= e!3196328 call!356771)))

(assert (= (and d!1657496 c!881034) b!5125217))

(assert (= (and d!1657496 (not c!881034)) b!5125222))

(assert (= (and b!5125222 c!881029) b!5125218))

(assert (= (and b!5125222 (not c!881029)) b!5125219))

(assert (= (and b!5125218 c!881031) b!5125220))

(assert (= (and b!5125218 (not c!881031)) b!5125223))

(assert (= (and b!5125219 c!881032) b!5125216))

(assert (= (and b!5125219 (not c!881032)) b!5125214))

(assert (= (and b!5125219 c!881030) b!5125212))

(assert (= (and b!5125219 (not c!881030)) b!5125224))

(assert (= (and b!5125212 c!881033) b!5125215))

(assert (= (and b!5125212 (not c!881033)) b!5125221))

(assert (= (or b!5125212 b!5125224) bm!356771))

(assert (= (or b!5125212 b!5125224) bm!356769))

(assert (= (or b!5125212 b!5125224) bm!356766))

(assert (= (or b!5125212 b!5125224) bm!356765))

(assert (= (or b!5125218 b!5125216) bm!356770))

(assert (= (or b!5125218 b!5125216) bm!356768))

(assert (= (or b!5125218 b!5125219) bm!356767))

(assert (= (or b!5125218 b!5125216) bm!356772))

(assert (= (and d!1657496 res!2182340) b!5125211))

(assert (= (and b!5125211 (not res!2182339)) b!5125213))

(assert (=> bm!356770 m!6188304))

(assert (=> d!1657496 m!6187794))

(assert (=> d!1657496 m!6187832))

(assert (=> d!1657496 m!6187868))

(assert (=> d!1657496 m!6187794))

(declare-fun m!6188356 () Bool)

(assert (=> d!1657496 m!6188356))

(declare-fun m!6188358 () Bool)

(assert (=> d!1657496 m!6188358))

(declare-fun m!6188360 () Bool)

(assert (=> d!1657496 m!6188360))

(declare-fun m!6188362 () Bool)

(assert (=> d!1657496 m!6188362))

(declare-fun m!6188364 () Bool)

(assert (=> bm!356771 m!6188364))

(declare-fun m!6188366 () Bool)

(assert (=> bm!356765 m!6188366))

(declare-fun m!6188368 () Bool)

(assert (=> b!5125213 m!6188368))

(assert (=> b!5125213 m!6187864))

(declare-fun m!6188370 () Bool)

(assert (=> b!5125211 m!6188370))

(assert (=> bm!356767 m!6188096))

(declare-fun m!6188372 () Bool)

(assert (=> bm!356766 m!6188372))

(assert (=> bm!356769 m!6187852))

(declare-fun m!6188374 () Bool)

(assert (=> bm!356772 m!6188374))

(declare-fun m!6188376 () Bool)

(assert (=> b!5125219 m!6188376))

(declare-fun m!6188378 () Bool)

(assert (=> b!5125219 m!6188378))

(assert (=> b!5125219 m!6188364))

(assert (=> b!5125219 m!6187862))

(assert (=> b!5125219 m!6187832))

(declare-fun m!6188380 () Bool)

(assert (=> b!5125219 m!6188380))

(declare-fun m!6188382 () Bool)

(assert (=> b!5125219 m!6188382))

(declare-fun m!6188384 () Bool)

(assert (=> b!5125219 m!6188384))

(assert (=> b!5125219 m!6187864))

(assert (=> b!5125219 m!6188382))

(assert (=> b!5125219 m!6188376))

(assert (=> b!5125219 m!6187856))

(assert (=> b!5125219 m!6187852))

(declare-fun m!6188386 () Bool)

(assert (=> b!5125219 m!6188386))

(assert (=> b!5125219 m!6187832))

(declare-fun m!6188388 () Bool)

(assert (=> b!5125219 m!6188388))

(declare-fun m!6188390 () Bool)

(assert (=> b!5125219 m!6188390))

(declare-fun m!6188392 () Bool)

(assert (=> b!5125212 m!6188392))

(assert (=> bm!356768 m!6188350))

(assert (=> b!5124885 d!1657496))

(declare-fun d!1657498 () Bool)

(assert (=> d!1657498 (>= (size!39547 (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 (size!39547 input!5745)))) (size!39547 knownP!20))))

(declare-fun lt!2113550 () Unit!150433)

(declare-fun choose!37723 ((InoxSet Context!7250) (InoxSet Context!7250) List!59411 List!59411 List!59411) Unit!150433)

(assert (=> d!1657498 (= lt!2113550 (choose!37723 baseZ!46 lt!2113196 input!5745 lt!2113214 knownP!20))))

(assert (=> d!1657498 (isPrefix!5646 lt!2113214 input!5745)))

(assert (=> d!1657498 (= (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!15 baseZ!46 lt!2113196 input!5745 lt!2113214 knownP!20) lt!2113550)))

(declare-fun bs!1193698 () Bool)

(assert (= bs!1193698 d!1657498))

(assert (=> bs!1193698 m!6187862))

(assert (=> bs!1193698 m!6187866))

(declare-fun m!6188394 () Bool)

(assert (=> bs!1193698 m!6188394))

(assert (=> bs!1193698 m!6187824))

(assert (=> bs!1193698 m!6187840))

(assert (=> bs!1193698 m!6187820))

(declare-fun m!6188396 () Bool)

(assert (=> bs!1193698 m!6188396))

(assert (=> bs!1193698 m!6187824))

(assert (=> bs!1193698 m!6187820))

(assert (=> bs!1193698 m!6187862))

(declare-fun m!6188398 () Bool)

(assert (=> bs!1193698 m!6188398))

(assert (=> b!5124885 d!1657498))

(declare-fun d!1657500 () Bool)

(declare-fun lt!2113551 () List!59411)

(assert (=> d!1657500 (= (++!13054 lt!2113214 lt!2113551) input!5745)))

(declare-fun e!3196330 () List!59411)

(assert (=> d!1657500 (= lt!2113551 e!3196330)))

(declare-fun c!881035 () Bool)

(assert (=> d!1657500 (= c!881035 ((_ is Cons!59287) lt!2113214))))

(assert (=> d!1657500 (>= (size!39547 input!5745) (size!39547 lt!2113214))))

(assert (=> d!1657500 (= (getSuffix!3318 input!5745 lt!2113214) lt!2113551)))

(declare-fun b!5125225 () Bool)

(assert (=> b!5125225 (= e!3196330 (getSuffix!3318 (tail!10092 input!5745) (t!372436 lt!2113214)))))

(declare-fun b!5125226 () Bool)

(assert (=> b!5125226 (= e!3196330 input!5745)))

(assert (= (and d!1657500 c!881035) b!5125225))

(assert (= (and d!1657500 (not c!881035)) b!5125226))

(declare-fun m!6188400 () Bool)

(assert (=> d!1657500 m!6188400))

(assert (=> d!1657500 m!6187862))

(assert (=> d!1657500 m!6187824))

(declare-fun m!6188402 () Bool)

(assert (=> b!5125225 m!6188402))

(assert (=> b!5125225 m!6188402))

(declare-fun m!6188404 () Bool)

(assert (=> b!5125225 m!6188404))

(assert (=> b!5124885 d!1657500))

(declare-fun d!1657502 () Bool)

(assert (=> d!1657502 (= (head!10957 lt!2113207) (h!65735 lt!2113207))))

(assert (=> b!5124897 d!1657502))

(declare-fun d!1657504 () Bool)

(assert (=> d!1657504 (= lt!2113213 lt!2113191)))

(declare-fun lt!2113554 () Unit!150433)

(declare-fun choose!37724 (List!59411 List!59411 List!59411 List!59411 List!59411) Unit!150433)

(assert (=> d!1657504 (= lt!2113554 (choose!37724 testedP!265 lt!2113213 testedP!265 lt!2113191 input!5745))))

(assert (=> d!1657504 (isPrefix!5646 testedP!265 input!5745)))

(assert (=> d!1657504 (= (lemmaSamePrefixThenSameSuffix!2664 testedP!265 lt!2113213 testedP!265 lt!2113191 input!5745) lt!2113554)))

(declare-fun bs!1193699 () Bool)

(assert (= bs!1193699 d!1657504))

(declare-fun m!6188406 () Bool)

(assert (=> bs!1193699 m!6188406))

(assert (=> bs!1193699 m!6187870))

(assert (=> b!5124897 d!1657504))

(declare-fun d!1657506 () Bool)

(declare-fun lt!2113555 () Int)

(assert (=> d!1657506 (>= lt!2113555 0)))

(declare-fun e!3196331 () Int)

(assert (=> d!1657506 (= lt!2113555 e!3196331)))

(declare-fun c!881036 () Bool)

(assert (=> d!1657506 (= c!881036 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1657506 (= (size!39547 testedP!265) lt!2113555)))

(declare-fun b!5125227 () Bool)

(assert (=> b!5125227 (= e!3196331 0)))

(declare-fun b!5125228 () Bool)

(assert (=> b!5125228 (= e!3196331 (+ 1 (size!39547 (t!372436 testedP!265))))))

(assert (= (and d!1657506 c!881036) b!5125227))

(assert (= (and d!1657506 (not c!881036)) b!5125228))

(declare-fun m!6188408 () Bool)

(assert (=> b!5125228 m!6188408))

(assert (=> b!5124887 d!1657506))

(declare-fun d!1657508 () Bool)

(declare-fun lt!2113556 () Int)

(assert (=> d!1657508 (>= lt!2113556 0)))

(declare-fun e!3196332 () Int)

(assert (=> d!1657508 (= lt!2113556 e!3196332)))

(declare-fun c!881037 () Bool)

(assert (=> d!1657508 (= c!881037 ((_ is Nil!59287) knownP!20))))

(assert (=> d!1657508 (= (size!39547 knownP!20) lt!2113556)))

(declare-fun b!5125229 () Bool)

(assert (=> b!5125229 (= e!3196332 0)))

(declare-fun b!5125230 () Bool)

(assert (=> b!5125230 (= e!3196332 (+ 1 (size!39547 (t!372436 knownP!20))))))

(assert (= (and d!1657508 c!881037) b!5125229))

(assert (= (and d!1657508 (not c!881037)) b!5125230))

(declare-fun m!6188410 () Bool)

(assert (=> b!5125230 m!6188410))

(assert (=> b!5124887 d!1657508))

(declare-fun b!5125232 () Bool)

(declare-fun res!2182343 () Bool)

(declare-fun e!3196335 () Bool)

(assert (=> b!5125232 (=> (not res!2182343) (not e!3196335))))

(assert (=> b!5125232 (= res!2182343 (= (head!10957 knownP!20) (head!10957 input!5745)))))

(declare-fun b!5125231 () Bool)

(declare-fun e!3196333 () Bool)

(assert (=> b!5125231 (= e!3196333 e!3196335)))

(declare-fun res!2182341 () Bool)

(assert (=> b!5125231 (=> (not res!2182341) (not e!3196335))))

(assert (=> b!5125231 (= res!2182341 (not ((_ is Nil!59287) input!5745)))))

(declare-fun b!5125234 () Bool)

(declare-fun e!3196334 () Bool)

(assert (=> b!5125234 (= e!3196334 (>= (size!39547 input!5745) (size!39547 knownP!20)))))

(declare-fun b!5125233 () Bool)

(assert (=> b!5125233 (= e!3196335 (isPrefix!5646 (tail!10092 knownP!20) (tail!10092 input!5745)))))

(declare-fun d!1657510 () Bool)

(assert (=> d!1657510 e!3196334))

(declare-fun res!2182342 () Bool)

(assert (=> d!1657510 (=> res!2182342 e!3196334)))

(declare-fun lt!2113557 () Bool)

(assert (=> d!1657510 (= res!2182342 (not lt!2113557))))

(assert (=> d!1657510 (= lt!2113557 e!3196333)))

(declare-fun res!2182344 () Bool)

(assert (=> d!1657510 (=> res!2182344 e!3196333)))

(assert (=> d!1657510 (= res!2182344 ((_ is Nil!59287) knownP!20))))

(assert (=> d!1657510 (= (isPrefix!5646 knownP!20 input!5745) lt!2113557)))

(assert (= (and d!1657510 (not res!2182344)) b!5125231))

(assert (= (and b!5125231 res!2182341) b!5125232))

(assert (= (and b!5125232 res!2182343) b!5125233))

(assert (= (and d!1657510 (not res!2182342)) b!5125234))

(assert (=> b!5125232 m!6187958))

(declare-fun m!6188412 () Bool)

(assert (=> b!5125232 m!6188412))

(assert (=> b!5125234 m!6187862))

(assert (=> b!5125234 m!6187866))

(assert (=> b!5125233 m!6187962))

(assert (=> b!5125233 m!6188402))

(assert (=> b!5125233 m!6187962))

(assert (=> b!5125233 m!6188402))

(declare-fun m!6188414 () Bool)

(assert (=> b!5125233 m!6188414))

(assert (=> b!5124880 d!1657510))

(declare-fun lt!2113558 () List!59411)

(declare-fun e!3196337 () Bool)

(declare-fun b!5125238 () Bool)

(assert (=> b!5125238 (= e!3196337 (or (not (= lt!2113191 Nil!59287)) (= lt!2113558 testedP!265)))))

(declare-fun d!1657512 () Bool)

(assert (=> d!1657512 e!3196337))

(declare-fun res!2182345 () Bool)

(assert (=> d!1657512 (=> (not res!2182345) (not e!3196337))))

(assert (=> d!1657512 (= res!2182345 (= (content!10549 lt!2113558) ((_ map or) (content!10549 testedP!265) (content!10549 lt!2113191))))))

(declare-fun e!3196336 () List!59411)

(assert (=> d!1657512 (= lt!2113558 e!3196336)))

(declare-fun c!881038 () Bool)

(assert (=> d!1657512 (= c!881038 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1657512 (= (++!13054 testedP!265 lt!2113191) lt!2113558)))

(declare-fun b!5125237 () Bool)

(declare-fun res!2182346 () Bool)

(assert (=> b!5125237 (=> (not res!2182346) (not e!3196337))))

(assert (=> b!5125237 (= res!2182346 (= (size!39547 lt!2113558) (+ (size!39547 testedP!265) (size!39547 lt!2113191))))))

(declare-fun b!5125236 () Bool)

(assert (=> b!5125236 (= e!3196336 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) lt!2113191)))))

(declare-fun b!5125235 () Bool)

(assert (=> b!5125235 (= e!3196336 lt!2113191)))

(assert (= (and d!1657512 c!881038) b!5125235))

(assert (= (and d!1657512 (not c!881038)) b!5125236))

(assert (= (and d!1657512 res!2182345) b!5125237))

(assert (= (and b!5125237 res!2182346) b!5125238))

(declare-fun m!6188416 () Bool)

(assert (=> d!1657512 m!6188416))

(assert (=> d!1657512 m!6188166))

(declare-fun m!6188418 () Bool)

(assert (=> d!1657512 m!6188418))

(declare-fun m!6188420 () Bool)

(assert (=> b!5125237 m!6188420))

(assert (=> b!5125237 m!6187864))

(declare-fun m!6188422 () Bool)

(assert (=> b!5125237 m!6188422))

(declare-fun m!6188424 () Bool)

(assert (=> b!5125236 m!6188424))

(assert (=> b!5124879 d!1657512))

(declare-fun d!1657514 () Bool)

(assert (=> d!1657514 (= lt!2113193 lt!2113207)))

(declare-fun lt!2113559 () Unit!150433)

(assert (=> d!1657514 (= lt!2113559 (choose!37724 testedP!265 lt!2113193 testedP!265 lt!2113207 knownP!20))))

(assert (=> d!1657514 (isPrefix!5646 testedP!265 knownP!20)))

(assert (=> d!1657514 (= (lemmaSamePrefixThenSameSuffix!2664 testedP!265 lt!2113193 testedP!265 lt!2113207 knownP!20) lt!2113559)))

(declare-fun bs!1193700 () Bool)

(assert (= bs!1193700 d!1657514))

(declare-fun m!6188426 () Bool)

(assert (=> bs!1193700 m!6188426))

(assert (=> bs!1193700 m!6187876))

(assert (=> b!5124890 d!1657514))

(declare-fun b!5125242 () Bool)

(declare-fun e!3196339 () Bool)

(declare-fun lt!2113560 () List!59411)

(assert (=> b!5125242 (= e!3196339 (or (not (= lt!2113193 Nil!59287)) (= lt!2113560 testedP!265)))))

(declare-fun d!1657516 () Bool)

(assert (=> d!1657516 e!3196339))

(declare-fun res!2182347 () Bool)

(assert (=> d!1657516 (=> (not res!2182347) (not e!3196339))))

(assert (=> d!1657516 (= res!2182347 (= (content!10549 lt!2113560) ((_ map or) (content!10549 testedP!265) (content!10549 lt!2113193))))))

(declare-fun e!3196338 () List!59411)

(assert (=> d!1657516 (= lt!2113560 e!3196338)))

(declare-fun c!881039 () Bool)

(assert (=> d!1657516 (= c!881039 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1657516 (= (++!13054 testedP!265 lt!2113193) lt!2113560)))

(declare-fun b!5125241 () Bool)

(declare-fun res!2182348 () Bool)

(assert (=> b!5125241 (=> (not res!2182348) (not e!3196339))))

(assert (=> b!5125241 (= res!2182348 (= (size!39547 lt!2113560) (+ (size!39547 testedP!265) (size!39547 lt!2113193))))))

(declare-fun b!5125240 () Bool)

(assert (=> b!5125240 (= e!3196338 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) lt!2113193)))))

(declare-fun b!5125239 () Bool)

(assert (=> b!5125239 (= e!3196338 lt!2113193)))

(assert (= (and d!1657516 c!881039) b!5125239))

(assert (= (and d!1657516 (not c!881039)) b!5125240))

(assert (= (and d!1657516 res!2182347) b!5125241))

(assert (= (and b!5125241 res!2182348) b!5125242))

(declare-fun m!6188428 () Bool)

(assert (=> d!1657516 m!6188428))

(assert (=> d!1657516 m!6188166))

(declare-fun m!6188430 () Bool)

(assert (=> d!1657516 m!6188430))

(declare-fun m!6188432 () Bool)

(assert (=> b!5125241 m!6188432))

(assert (=> b!5125241 m!6187864))

(declare-fun m!6188434 () Bool)

(assert (=> b!5125241 m!6188434))

(declare-fun m!6188436 () Bool)

(assert (=> b!5125240 m!6188436))

(assert (=> b!5124890 d!1657516))

(declare-fun e!3196341 () Bool)

(declare-fun b!5125246 () Bool)

(declare-fun lt!2113561 () List!59411)

(assert (=> b!5125246 (= e!3196341 (or (not (= lt!2113197 Nil!59287)) (= lt!2113561 lt!2113189)))))

(declare-fun d!1657518 () Bool)

(assert (=> d!1657518 e!3196341))

(declare-fun res!2182349 () Bool)

(assert (=> d!1657518 (=> (not res!2182349) (not e!3196341))))

(assert (=> d!1657518 (= res!2182349 (= (content!10549 lt!2113561) ((_ map or) (content!10549 lt!2113189) (content!10549 lt!2113197))))))

(declare-fun e!3196340 () List!59411)

(assert (=> d!1657518 (= lt!2113561 e!3196340)))

(declare-fun c!881040 () Bool)

(assert (=> d!1657518 (= c!881040 ((_ is Nil!59287) lt!2113189))))

(assert (=> d!1657518 (= (++!13054 lt!2113189 lt!2113197) lt!2113561)))

(declare-fun b!5125245 () Bool)

(declare-fun res!2182350 () Bool)

(assert (=> b!5125245 (=> (not res!2182350) (not e!3196341))))

(assert (=> b!5125245 (= res!2182350 (= (size!39547 lt!2113561) (+ (size!39547 lt!2113189) (size!39547 lt!2113197))))))

(declare-fun b!5125244 () Bool)

(assert (=> b!5125244 (= e!3196340 (Cons!59287 (h!65735 lt!2113189) (++!13054 (t!372436 lt!2113189) lt!2113197)))))

(declare-fun b!5125243 () Bool)

(assert (=> b!5125243 (= e!3196340 lt!2113197)))

(assert (= (and d!1657518 c!881040) b!5125243))

(assert (= (and d!1657518 (not c!881040)) b!5125244))

(assert (= (and d!1657518 res!2182349) b!5125245))

(assert (= (and b!5125245 res!2182350) b!5125246))

(declare-fun m!6188438 () Bool)

(assert (=> d!1657518 m!6188438))

(declare-fun m!6188440 () Bool)

(assert (=> d!1657518 m!6188440))

(assert (=> d!1657518 m!6188086))

(declare-fun m!6188442 () Bool)

(assert (=> b!5125245 m!6188442))

(declare-fun m!6188444 () Bool)

(assert (=> b!5125245 m!6188444))

(assert (=> b!5125245 m!6188090))

(declare-fun m!6188446 () Bool)

(assert (=> b!5125244 m!6188446))

(assert (=> b!5124890 d!1657518))

(declare-fun d!1657520 () Bool)

(assert (=> d!1657520 (= (++!13054 (++!13054 testedP!265 lt!2113189) lt!2113197) (++!13054 testedP!265 (++!13054 lt!2113189 lt!2113197)))))

(declare-fun lt!2113562 () Unit!150433)

(assert (=> d!1657520 (= lt!2113562 (choose!37722 testedP!265 lt!2113189 lt!2113197))))

(assert (=> d!1657520 (= (lemmaConcatAssociativity!2798 testedP!265 lt!2113189 lt!2113197) lt!2113562)))

(declare-fun bs!1193701 () Bool)

(assert (= bs!1193701 d!1657520))

(assert (=> bs!1193701 m!6187846))

(declare-fun m!6188448 () Bool)

(assert (=> bs!1193701 m!6188448))

(assert (=> bs!1193701 m!6187800))

(assert (=> bs!1193701 m!6187846))

(declare-fun m!6188450 () Bool)

(assert (=> bs!1193701 m!6188450))

(assert (=> bs!1193701 m!6187800))

(declare-fun m!6188452 () Bool)

(assert (=> bs!1193701 m!6188452))

(assert (=> b!5124890 d!1657520))

(declare-fun b!5125248 () Bool)

(declare-fun res!2182353 () Bool)

(declare-fun e!3196344 () Bool)

(assert (=> b!5125248 (=> (not res!2182353) (not e!3196344))))

(assert (=> b!5125248 (= res!2182353 (= (head!10957 testedP!265) (head!10957 input!5745)))))

(declare-fun b!5125247 () Bool)

(declare-fun e!3196342 () Bool)

(assert (=> b!5125247 (= e!3196342 e!3196344)))

(declare-fun res!2182351 () Bool)

(assert (=> b!5125247 (=> (not res!2182351) (not e!3196344))))

(assert (=> b!5125247 (= res!2182351 (not ((_ is Nil!59287) input!5745)))))

(declare-fun b!5125250 () Bool)

(declare-fun e!3196343 () Bool)

(assert (=> b!5125250 (= e!3196343 (>= (size!39547 input!5745) (size!39547 testedP!265)))))

(declare-fun b!5125249 () Bool)

(assert (=> b!5125249 (= e!3196344 (isPrefix!5646 (tail!10092 testedP!265) (tail!10092 input!5745)))))

(declare-fun d!1657522 () Bool)

(assert (=> d!1657522 e!3196343))

(declare-fun res!2182352 () Bool)

(assert (=> d!1657522 (=> res!2182352 e!3196343)))

(declare-fun lt!2113563 () Bool)

(assert (=> d!1657522 (= res!2182352 (not lt!2113563))))

(assert (=> d!1657522 (= lt!2113563 e!3196342)))

(declare-fun res!2182354 () Bool)

(assert (=> d!1657522 (=> res!2182354 e!3196342)))

(assert (=> d!1657522 (= res!2182354 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1657522 (= (isPrefix!5646 testedP!265 input!5745) lt!2113563)))

(assert (= (and d!1657522 (not res!2182354)) b!5125247))

(assert (= (and b!5125247 res!2182351) b!5125248))

(assert (= (and b!5125248 res!2182353) b!5125249))

(assert (= (and d!1657522 (not res!2182352)) b!5125250))

(assert (=> b!5125248 m!6188156))

(assert (=> b!5125248 m!6188412))

(assert (=> b!5125250 m!6187862))

(assert (=> b!5125250 m!6187864))

(assert (=> b!5125249 m!6188158))

(assert (=> b!5125249 m!6188402))

(assert (=> b!5125249 m!6188158))

(assert (=> b!5125249 m!6188402))

(declare-fun m!6188454 () Bool)

(assert (=> b!5125249 m!6188454))

(assert (=> start!541044 d!1657522))

(declare-fun d!1657524 () Bool)

(declare-fun c!881043 () Bool)

(assert (=> d!1657524 (= c!881043 ((_ is Cons!59287) testedP!265))))

(declare-fun e!3196347 () (InoxSet Context!7250))

(assert (=> d!1657524 (= (derivationZipper!138 baseZ!46 testedP!265) e!3196347)))

(declare-fun b!5125255 () Bool)

(assert (=> b!5125255 (= e!3196347 (derivationZipper!138 (derivationStepZipper!864 baseZ!46 (h!65735 testedP!265)) (t!372436 testedP!265)))))

(declare-fun b!5125256 () Bool)

(assert (=> b!5125256 (= e!3196347 baseZ!46)))

(assert (= (and d!1657524 c!881043) b!5125255))

(assert (= (and d!1657524 (not c!881043)) b!5125256))

(declare-fun m!6188456 () Bool)

(assert (=> b!5125255 m!6188456))

(assert (=> b!5125255 m!6188456))

(declare-fun m!6188458 () Bool)

(assert (=> b!5125255 m!6188458))

(assert (=> b!5124899 d!1657524))

(declare-fun b!5125260 () Bool)

(declare-fun lt!2113564 () List!59411)

(declare-fun e!3196349 () Bool)

(assert (=> b!5125260 (= e!3196349 (or (not (= lt!2113195 Nil!59287)) (= lt!2113564 lt!2113200)))))

(declare-fun d!1657526 () Bool)

(assert (=> d!1657526 e!3196349))

(declare-fun res!2182355 () Bool)

(assert (=> d!1657526 (=> (not res!2182355) (not e!3196349))))

(assert (=> d!1657526 (= res!2182355 (= (content!10549 lt!2113564) ((_ map or) (content!10549 lt!2113200) (content!10549 lt!2113195))))))

(declare-fun e!3196348 () List!59411)

(assert (=> d!1657526 (= lt!2113564 e!3196348)))

(declare-fun c!881044 () Bool)

(assert (=> d!1657526 (= c!881044 ((_ is Nil!59287) lt!2113200))))

(assert (=> d!1657526 (= (++!13054 lt!2113200 lt!2113195) lt!2113564)))

(declare-fun b!5125259 () Bool)

(declare-fun res!2182356 () Bool)

(assert (=> b!5125259 (=> (not res!2182356) (not e!3196349))))

(assert (=> b!5125259 (= res!2182356 (= (size!39547 lt!2113564) (+ (size!39547 lt!2113200) (size!39547 lt!2113195))))))

(declare-fun b!5125258 () Bool)

(assert (=> b!5125258 (= e!3196348 (Cons!59287 (h!65735 lt!2113200) (++!13054 (t!372436 lt!2113200) lt!2113195)))))

(declare-fun b!5125257 () Bool)

(assert (=> b!5125257 (= e!3196348 lt!2113195)))

(assert (= (and d!1657526 c!881044) b!5125257))

(assert (= (and d!1657526 (not c!881044)) b!5125258))

(assert (= (and d!1657526 res!2182355) b!5125259))

(assert (= (and b!5125259 res!2182356) b!5125260))

(declare-fun m!6188460 () Bool)

(assert (=> d!1657526 m!6188460))

(declare-fun m!6188462 () Bool)

(assert (=> d!1657526 m!6188462))

(assert (=> d!1657526 m!6188180))

(declare-fun m!6188464 () Bool)

(assert (=> b!5125259 m!6188464))

(declare-fun m!6188466 () Bool)

(assert (=> b!5125259 m!6188466))

(assert (=> b!5125259 m!6188186))

(declare-fun m!6188468 () Bool)

(assert (=> b!5125258 m!6188468))

(assert (=> b!5124889 d!1657526))

(declare-fun b!5125264 () Bool)

(declare-fun lt!2113565 () List!59411)

(declare-fun e!3196351 () Bool)

(assert (=> b!5125264 (= e!3196351 (or (not (= lt!2113207 Nil!59287)) (= lt!2113565 testedP!265)))))

(declare-fun d!1657528 () Bool)

(assert (=> d!1657528 e!3196351))

(declare-fun res!2182357 () Bool)

(assert (=> d!1657528 (=> (not res!2182357) (not e!3196351))))

(assert (=> d!1657528 (= res!2182357 (= (content!10549 lt!2113565) ((_ map or) (content!10549 testedP!265) (content!10549 lt!2113207))))))

(declare-fun e!3196350 () List!59411)

(assert (=> d!1657528 (= lt!2113565 e!3196350)))

(declare-fun c!881045 () Bool)

(assert (=> d!1657528 (= c!881045 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1657528 (= (++!13054 testedP!265 lt!2113207) lt!2113565)))

(declare-fun b!5125263 () Bool)

(declare-fun res!2182358 () Bool)

(assert (=> b!5125263 (=> (not res!2182358) (not e!3196351))))

(assert (=> b!5125263 (= res!2182358 (= (size!39547 lt!2113565) (+ (size!39547 testedP!265) (size!39547 lt!2113207))))))

(declare-fun b!5125262 () Bool)

(assert (=> b!5125262 (= e!3196350 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) lt!2113207)))))

(declare-fun b!5125261 () Bool)

(assert (=> b!5125261 (= e!3196350 lt!2113207)))

(assert (= (and d!1657528 c!881045) b!5125261))

(assert (= (and d!1657528 (not c!881045)) b!5125262))

(assert (= (and d!1657528 res!2182357) b!5125263))

(assert (= (and b!5125263 res!2182358) b!5125264))

(declare-fun m!6188470 () Bool)

(assert (=> d!1657528 m!6188470))

(assert (=> d!1657528 m!6188166))

(assert (=> d!1657528 m!6188178))

(declare-fun m!6188472 () Bool)

(assert (=> b!5125263 m!6188472))

(assert (=> b!5125263 m!6187864))

(assert (=> b!5125263 m!6188184))

(declare-fun m!6188474 () Bool)

(assert (=> b!5125262 m!6188474))

(assert (=> b!5124889 d!1657528))

(declare-fun d!1657530 () Bool)

(declare-fun lt!2113566 () List!59411)

(assert (=> d!1657530 (= (++!13054 testedP!265 lt!2113566) input!5745)))

(declare-fun e!3196352 () List!59411)

(assert (=> d!1657530 (= lt!2113566 e!3196352)))

(declare-fun c!881046 () Bool)

(assert (=> d!1657530 (= c!881046 ((_ is Cons!59287) testedP!265))))

(assert (=> d!1657530 (>= (size!39547 input!5745) (size!39547 testedP!265))))

(assert (=> d!1657530 (= (getSuffix!3318 input!5745 testedP!265) lt!2113566)))

(declare-fun b!5125265 () Bool)

(assert (=> b!5125265 (= e!3196352 (getSuffix!3318 (tail!10092 input!5745) (t!372436 testedP!265)))))

(declare-fun b!5125266 () Bool)

(assert (=> b!5125266 (= e!3196352 input!5745)))

(assert (= (and d!1657530 c!881046) b!5125265))

(assert (= (and d!1657530 (not c!881046)) b!5125266))

(declare-fun m!6188476 () Bool)

(assert (=> d!1657530 m!6188476))

(assert (=> d!1657530 m!6187862))

(assert (=> d!1657530 m!6187864))

(assert (=> b!5125265 m!6188402))

(assert (=> b!5125265 m!6188402))

(declare-fun m!6188478 () Bool)

(assert (=> b!5125265 m!6188478))

(assert (=> b!5124901 d!1657530))

(declare-fun d!1657532 () Bool)

(assert (=> d!1657532 (isPrefix!5646 lt!2113214 knownP!20)))

(declare-fun lt!2113567 () Unit!150433)

(assert (=> d!1657532 (= lt!2113567 (choose!37721 knownP!20 lt!2113214 input!5745))))

(assert (=> d!1657532 (isPrefix!5646 knownP!20 input!5745)))

(assert (=> d!1657532 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!781 knownP!20 lt!2113214 input!5745) lt!2113567)))

(declare-fun bs!1193702 () Bool)

(assert (= bs!1193702 d!1657532))

(assert (=> bs!1193702 m!6187844))

(declare-fun m!6188480 () Bool)

(assert (=> bs!1193702 m!6188480))

(assert (=> bs!1193702 m!6187806))

(assert (=> b!5124901 d!1657532))

(declare-fun b!5125268 () Bool)

(declare-fun res!2182361 () Bool)

(declare-fun e!3196355 () Bool)

(assert (=> b!5125268 (=> (not res!2182361) (not e!3196355))))

(assert (=> b!5125268 (= res!2182361 (= (head!10957 lt!2113214) (head!10957 input!5745)))))

(declare-fun b!5125267 () Bool)

(declare-fun e!3196353 () Bool)

(assert (=> b!5125267 (= e!3196353 e!3196355)))

(declare-fun res!2182359 () Bool)

(assert (=> b!5125267 (=> (not res!2182359) (not e!3196355))))

(assert (=> b!5125267 (= res!2182359 (not ((_ is Nil!59287) input!5745)))))

(declare-fun b!5125270 () Bool)

(declare-fun e!3196354 () Bool)

(assert (=> b!5125270 (= e!3196354 (>= (size!39547 input!5745) (size!39547 lt!2113214)))))

(declare-fun b!5125269 () Bool)

(assert (=> b!5125269 (= e!3196355 (isPrefix!5646 (tail!10092 lt!2113214) (tail!10092 input!5745)))))

(declare-fun d!1657534 () Bool)

(assert (=> d!1657534 e!3196354))

(declare-fun res!2182360 () Bool)

(assert (=> d!1657534 (=> res!2182360 e!3196354)))

(declare-fun lt!2113568 () Bool)

(assert (=> d!1657534 (= res!2182360 (not lt!2113568))))

(assert (=> d!1657534 (= lt!2113568 e!3196353)))

(declare-fun res!2182362 () Bool)

(assert (=> d!1657534 (=> res!2182362 e!3196353)))

(assert (=> d!1657534 (= res!2182362 ((_ is Nil!59287) lt!2113214))))

(assert (=> d!1657534 (= (isPrefix!5646 lt!2113214 input!5745) lt!2113568)))

(assert (= (and d!1657534 (not res!2182362)) b!5125267))

(assert (= (and b!5125267 res!2182359) b!5125268))

(assert (= (and b!5125268 res!2182361) b!5125269))

(assert (= (and d!1657534 (not res!2182360)) b!5125270))

(declare-fun m!6188482 () Bool)

(assert (=> b!5125268 m!6188482))

(assert (=> b!5125268 m!6188412))

(assert (=> b!5125270 m!6187862))

(assert (=> b!5125270 m!6187824))

(declare-fun m!6188484 () Bool)

(assert (=> b!5125269 m!6188484))

(assert (=> b!5125269 m!6188402))

(assert (=> b!5125269 m!6188484))

(assert (=> b!5125269 m!6188402))

(declare-fun m!6188486 () Bool)

(assert (=> b!5125269 m!6188486))

(assert (=> b!5124901 d!1657534))

(declare-fun b!5125272 () Bool)

(declare-fun res!2182365 () Bool)

(declare-fun e!3196358 () Bool)

(assert (=> b!5125272 (=> (not res!2182365) (not e!3196358))))

(assert (=> b!5125272 (= res!2182365 (= (head!10957 lt!2113214) (head!10957 knownP!20)))))

(declare-fun b!5125271 () Bool)

(declare-fun e!3196356 () Bool)

(assert (=> b!5125271 (= e!3196356 e!3196358)))

(declare-fun res!2182363 () Bool)

(assert (=> b!5125271 (=> (not res!2182363) (not e!3196358))))

(assert (=> b!5125271 (= res!2182363 (not ((_ is Nil!59287) knownP!20)))))

(declare-fun b!5125274 () Bool)

(declare-fun e!3196357 () Bool)

(assert (=> b!5125274 (= e!3196357 (>= (size!39547 knownP!20) (size!39547 lt!2113214)))))

(declare-fun b!5125273 () Bool)

(assert (=> b!5125273 (= e!3196358 (isPrefix!5646 (tail!10092 lt!2113214) (tail!10092 knownP!20)))))

(declare-fun d!1657536 () Bool)

(assert (=> d!1657536 e!3196357))

(declare-fun res!2182364 () Bool)

(assert (=> d!1657536 (=> res!2182364 e!3196357)))

(declare-fun lt!2113569 () Bool)

(assert (=> d!1657536 (= res!2182364 (not lt!2113569))))

(assert (=> d!1657536 (= lt!2113569 e!3196356)))

(declare-fun res!2182366 () Bool)

(assert (=> d!1657536 (=> res!2182366 e!3196356)))

(assert (=> d!1657536 (= res!2182366 ((_ is Nil!59287) lt!2113214))))

(assert (=> d!1657536 (= (isPrefix!5646 lt!2113214 knownP!20) lt!2113569)))

(assert (= (and d!1657536 (not res!2182366)) b!5125271))

(assert (= (and b!5125271 res!2182363) b!5125272))

(assert (= (and b!5125272 res!2182365) b!5125273))

(assert (= (and d!1657536 (not res!2182364)) b!5125274))

(assert (=> b!5125272 m!6188482))

(assert (=> b!5125272 m!6187958))

(assert (=> b!5125274 m!6187866))

(assert (=> b!5125274 m!6187824))

(assert (=> b!5125273 m!6188484))

(assert (=> b!5125273 m!6187962))

(assert (=> b!5125273 m!6188484))

(assert (=> b!5125273 m!6187962))

(declare-fun m!6188488 () Bool)

(assert (=> b!5125273 m!6188488))

(assert (=> b!5124901 d!1657536))

(declare-fun d!1657538 () Bool)

(declare-fun lt!2113570 () List!59411)

(assert (=> d!1657538 (= (++!13054 lt!2113214 lt!2113570) knownP!20)))

(declare-fun e!3196359 () List!59411)

(assert (=> d!1657538 (= lt!2113570 e!3196359)))

(declare-fun c!881047 () Bool)

(assert (=> d!1657538 (= c!881047 ((_ is Cons!59287) lt!2113214))))

(assert (=> d!1657538 (>= (size!39547 knownP!20) (size!39547 lt!2113214))))

(assert (=> d!1657538 (= (getSuffix!3318 knownP!20 lt!2113214) lt!2113570)))

(declare-fun b!5125275 () Bool)

(assert (=> b!5125275 (= e!3196359 (getSuffix!3318 (tail!10092 knownP!20) (t!372436 lt!2113214)))))

(declare-fun b!5125276 () Bool)

(assert (=> b!5125276 (= e!3196359 knownP!20)))

(assert (= (and d!1657538 c!881047) b!5125275))

(assert (= (and d!1657538 (not c!881047)) b!5125276))

(declare-fun m!6188490 () Bool)

(assert (=> d!1657538 m!6188490))

(assert (=> d!1657538 m!6187866))

(assert (=> d!1657538 m!6187824))

(assert (=> b!5125275 m!6187962))

(assert (=> b!5125275 m!6187962))

(declare-fun m!6188492 () Bool)

(assert (=> b!5125275 m!6188492))

(assert (=> b!5124901 d!1657538))

(declare-fun b!5125280 () Bool)

(declare-fun e!3196361 () Bool)

(declare-fun lt!2113571 () List!59411)

(assert (=> b!5125280 (= e!3196361 (or (not (= lt!2113195 Nil!59287)) (= lt!2113571 knownP!20)))))

(declare-fun d!1657540 () Bool)

(assert (=> d!1657540 e!3196361))

(declare-fun res!2182367 () Bool)

(assert (=> d!1657540 (=> (not res!2182367) (not e!3196361))))

(assert (=> d!1657540 (= res!2182367 (= (content!10549 lt!2113571) ((_ map or) (content!10549 knownP!20) (content!10549 lt!2113195))))))

(declare-fun e!3196360 () List!59411)

(assert (=> d!1657540 (= lt!2113571 e!3196360)))

(declare-fun c!881048 () Bool)

(assert (=> d!1657540 (= c!881048 ((_ is Nil!59287) knownP!20))))

(assert (=> d!1657540 (= (++!13054 knownP!20 lt!2113195) lt!2113571)))

(declare-fun b!5125279 () Bool)

(declare-fun res!2182368 () Bool)

(assert (=> b!5125279 (=> (not res!2182368) (not e!3196361))))

(assert (=> b!5125279 (= res!2182368 (= (size!39547 lt!2113571) (+ (size!39547 knownP!20) (size!39547 lt!2113195))))))

(declare-fun b!5125278 () Bool)

(assert (=> b!5125278 (= e!3196360 (Cons!59287 (h!65735 knownP!20) (++!13054 (t!372436 knownP!20) lt!2113195)))))

(declare-fun b!5125277 () Bool)

(assert (=> b!5125277 (= e!3196360 lt!2113195)))

(assert (= (and d!1657540 c!881048) b!5125277))

(assert (= (and d!1657540 (not c!881048)) b!5125278))

(assert (= (and d!1657540 res!2182367) b!5125279))

(assert (= (and b!5125279 res!2182368) b!5125280))

(declare-fun m!6188494 () Bool)

(assert (=> d!1657540 m!6188494))

(declare-fun m!6188496 () Bool)

(assert (=> d!1657540 m!6188496))

(assert (=> d!1657540 m!6188180))

(declare-fun m!6188498 () Bool)

(assert (=> b!5125279 m!6188498))

(assert (=> b!5125279 m!6187866))

(assert (=> b!5125279 m!6188186))

(declare-fun m!6188500 () Bool)

(assert (=> b!5125278 m!6188500))

(assert (=> b!5124901 d!1657540))

(declare-fun d!1657542 () Bool)

(declare-fun lt!2113572 () List!59411)

(assert (=> d!1657542 (= (++!13054 knownP!20 lt!2113572) input!5745)))

(declare-fun e!3196362 () List!59411)

(assert (=> d!1657542 (= lt!2113572 e!3196362)))

(declare-fun c!881049 () Bool)

(assert (=> d!1657542 (= c!881049 ((_ is Cons!59287) knownP!20))))

(assert (=> d!1657542 (>= (size!39547 input!5745) (size!39547 knownP!20))))

(assert (=> d!1657542 (= (getSuffix!3318 input!5745 knownP!20) lt!2113572)))

(declare-fun b!5125281 () Bool)

(assert (=> b!5125281 (= e!3196362 (getSuffix!3318 (tail!10092 input!5745) (t!372436 knownP!20)))))

(declare-fun b!5125282 () Bool)

(assert (=> b!5125282 (= e!3196362 input!5745)))

(assert (= (and d!1657542 c!881049) b!5125281))

(assert (= (and d!1657542 (not c!881049)) b!5125282))

(declare-fun m!6188502 () Bool)

(assert (=> d!1657542 m!6188502))

(assert (=> d!1657542 m!6187862))

(assert (=> d!1657542 m!6187866))

(assert (=> b!5125281 m!6188402))

(assert (=> b!5125281 m!6188402))

(declare-fun m!6188504 () Bool)

(assert (=> b!5125281 m!6188504))

(assert (=> b!5124901 d!1657542))

(declare-fun d!1657544 () Bool)

(assert (=> d!1657544 true))

(declare-fun lambda!251737 () Int)

(declare-fun flatMap!369 ((InoxSet Context!7250) Int) (InoxSet Context!7250))

(assert (=> d!1657544 (= (derivationStepZipper!864 z!4463 lt!2113194) (flatMap!369 z!4463 lambda!251737))))

(declare-fun bs!1193703 () Bool)

(assert (= bs!1193703 d!1657544))

(declare-fun m!6188506 () Bool)

(assert (=> bs!1193703 m!6188506))

(assert (=> b!5124901 d!1657544))

(declare-fun d!1657546 () Bool)

(assert (=> d!1657546 (= (derivationZipper!138 baseZ!46 (++!13054 testedP!265 (Cons!59287 lt!2113194 Nil!59287))) (derivationStepZipper!864 z!4463 lt!2113194))))

(declare-fun lt!2113575 () Unit!150433)

(declare-fun choose!37725 ((InoxSet Context!7250) (InoxSet Context!7250) List!59411 C!28748) Unit!150433)

(assert (=> d!1657546 (= lt!2113575 (choose!37725 baseZ!46 z!4463 testedP!265 lt!2113194))))

(assert (=> d!1657546 (= (derivationZipper!138 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1657546 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!85 baseZ!46 z!4463 testedP!265 lt!2113194) lt!2113575)))

(declare-fun bs!1193704 () Bool)

(assert (= bs!1193704 d!1657546))

(declare-fun m!6188508 () Bool)

(assert (=> bs!1193704 m!6188508))

(assert (=> bs!1193704 m!6187860))

(declare-fun m!6188510 () Bool)

(assert (=> bs!1193704 m!6188510))

(assert (=> bs!1193704 m!6188510))

(declare-fun m!6188512 () Bool)

(assert (=> bs!1193704 m!6188512))

(assert (=> bs!1193704 m!6187848))

(assert (=> b!5124901 d!1657546))

(declare-fun d!1657548 () Bool)

(assert (=> d!1657548 (= (head!10957 lt!2113191) (h!65735 lt!2113191))))

(assert (=> b!5124901 d!1657548))

(declare-fun e!3196364 () Bool)

(declare-fun b!5125288 () Bool)

(declare-fun lt!2113576 () List!59411)

(assert (=> b!5125288 (= e!3196364 (or (not (= lt!2113189 Nil!59287)) (= lt!2113576 testedP!265)))))

(declare-fun d!1657550 () Bool)

(assert (=> d!1657550 e!3196364))

(declare-fun res!2182369 () Bool)

(assert (=> d!1657550 (=> (not res!2182369) (not e!3196364))))

(assert (=> d!1657550 (= res!2182369 (= (content!10549 lt!2113576) ((_ map or) (content!10549 testedP!265) (content!10549 lt!2113189))))))

(declare-fun e!3196363 () List!59411)

(assert (=> d!1657550 (= lt!2113576 e!3196363)))

(declare-fun c!881053 () Bool)

(assert (=> d!1657550 (= c!881053 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1657550 (= (++!13054 testedP!265 lt!2113189) lt!2113576)))

(declare-fun b!5125287 () Bool)

(declare-fun res!2182370 () Bool)

(assert (=> b!5125287 (=> (not res!2182370) (not e!3196364))))

(assert (=> b!5125287 (= res!2182370 (= (size!39547 lt!2113576) (+ (size!39547 testedP!265) (size!39547 lt!2113189))))))

(declare-fun b!5125286 () Bool)

(assert (=> b!5125286 (= e!3196363 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) lt!2113189)))))

(declare-fun b!5125285 () Bool)

(assert (=> b!5125285 (= e!3196363 lt!2113189)))

(assert (= (and d!1657550 c!881053) b!5125285))

(assert (= (and d!1657550 (not c!881053)) b!5125286))

(assert (= (and d!1657550 res!2182369) b!5125287))

(assert (= (and b!5125287 res!2182370) b!5125288))

(declare-fun m!6188514 () Bool)

(assert (=> d!1657550 m!6188514))

(assert (=> d!1657550 m!6188166))

(assert (=> d!1657550 m!6188440))

(declare-fun m!6188516 () Bool)

(assert (=> b!5125287 m!6188516))

(assert (=> b!5125287 m!6187864))

(assert (=> b!5125287 m!6188444))

(declare-fun m!6188518 () Bool)

(assert (=> b!5125286 m!6188518))

(assert (=> b!5124901 d!1657550))

(declare-fun d!1657552 () Bool)

(assert (=> d!1657552 (isPrefix!5646 (++!13054 testedP!265 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287)) input!5745)))

(declare-fun lt!2113579 () Unit!150433)

(declare-fun choose!37726 (List!59411 List!59411) Unit!150433)

(assert (=> d!1657552 (= lt!2113579 (choose!37726 testedP!265 input!5745))))

(assert (=> d!1657552 (isPrefix!5646 testedP!265 input!5745)))

(assert (=> d!1657552 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1020 testedP!265 input!5745) lt!2113579)))

(declare-fun bs!1193705 () Bool)

(assert (= bs!1193705 d!1657552))

(assert (=> bs!1193705 m!6187870))

(assert (=> bs!1193705 m!6187832))

(assert (=> bs!1193705 m!6188380))

(declare-fun m!6188520 () Bool)

(assert (=> bs!1193705 m!6188520))

(assert (=> bs!1193705 m!6187832))

(assert (=> bs!1193705 m!6188382))

(assert (=> bs!1193705 m!6188382))

(assert (=> bs!1193705 m!6188384))

(assert (=> b!5124901 d!1657552))

(declare-fun d!1657554 () Bool)

(declare-fun c!881054 () Bool)

(assert (=> d!1657554 (= c!881054 ((_ is Cons!59287) lt!2113214))))

(declare-fun e!3196365 () (InoxSet Context!7250))

(assert (=> d!1657554 (= (derivationZipper!138 baseZ!46 lt!2113214) e!3196365)))

(declare-fun b!5125289 () Bool)

(assert (=> b!5125289 (= e!3196365 (derivationZipper!138 (derivationStepZipper!864 baseZ!46 (h!65735 lt!2113214)) (t!372436 lt!2113214)))))

(declare-fun b!5125290 () Bool)

(assert (=> b!5125290 (= e!3196365 baseZ!46)))

(assert (= (and d!1657554 c!881054) b!5125289))

(assert (= (and d!1657554 (not c!881054)) b!5125290))

(declare-fun m!6188522 () Bool)

(assert (=> b!5125289 m!6188522))

(assert (=> b!5125289 m!6188522))

(declare-fun m!6188524 () Bool)

(assert (=> b!5125289 m!6188524))

(assert (=> b!5124901 d!1657554))

(declare-fun bs!1193706 () Bool)

(declare-fun d!1657556 () Bool)

(assert (= bs!1193706 (and d!1657556 d!1657428)))

(declare-fun lambda!251738 () Int)

(assert (=> bs!1193706 (= lambda!251738 lambda!251730)))

(assert (=> d!1657556 (= (inv!78783 setElem!30549) (forall!13639 (exprs!4125 setElem!30549) lambda!251738))))

(declare-fun bs!1193707 () Bool)

(assert (= bs!1193707 d!1657556))

(declare-fun m!6188526 () Bool)

(assert (=> bs!1193707 m!6188526))

(assert (=> setNonEmpty!30549 d!1657556))

(declare-fun d!1657558 () Bool)

(declare-fun lt!2113580 () Int)

(assert (=> d!1657558 (>= lt!2113580 0)))

(declare-fun e!3196366 () Int)

(assert (=> d!1657558 (= lt!2113580 e!3196366)))

(declare-fun c!881055 () Bool)

(assert (=> d!1657558 (= c!881055 ((_ is Nil!59287) input!5745))))

(assert (=> d!1657558 (= (size!39547 input!5745) lt!2113580)))

(declare-fun b!5125291 () Bool)

(assert (=> b!5125291 (= e!3196366 0)))

(declare-fun b!5125292 () Bool)

(assert (=> b!5125292 (= e!3196366 (+ 1 (size!39547 (t!372436 input!5745))))))

(assert (= (and d!1657558 c!881055) b!5125291))

(assert (= (and d!1657558 (not c!881055)) b!5125292))

(declare-fun m!6188528 () Bool)

(assert (=> b!5125292 m!6188528))

(assert (=> b!5124900 d!1657558))

(declare-fun b!5125297 () Bool)

(declare-fun e!3196369 () Bool)

(declare-fun tp!1429615 () Bool)

(declare-fun tp!1429616 () Bool)

(assert (=> b!5125297 (= e!3196369 (and tp!1429615 tp!1429616))))

(assert (=> b!5124892 (= tp!1429586 e!3196369)))

(assert (= (and b!5124892 ((_ is Cons!59288) (exprs!4125 setElem!30550))) b!5125297))

(declare-fun b!5125302 () Bool)

(declare-fun e!3196372 () Bool)

(declare-fun tp!1429619 () Bool)

(assert (=> b!5125302 (= e!3196372 (and tp_is_empty!37755 tp!1429619))))

(assert (=> b!5124882 (= tp!1429583 e!3196372)))

(assert (= (and b!5124882 ((_ is Cons!59287) (t!372436 knownP!20))) b!5125302))

(declare-fun b!5125303 () Bool)

(declare-fun e!3196373 () Bool)

(declare-fun tp!1429620 () Bool)

(assert (=> b!5125303 (= e!3196373 (and tp_is_empty!37755 tp!1429620))))

(assert (=> b!5124898 (= tp!1429588 e!3196373)))

(assert (= (and b!5124898 ((_ is Cons!59287) (t!372436 testedP!265))) b!5125303))

(declare-fun condSetEmpty!30557 () Bool)

(assert (=> setNonEmpty!30550 (= condSetEmpty!30557 (= setRest!30550 ((as const (Array Context!7250 Bool)) false)))))

(declare-fun setRes!30557 () Bool)

(assert (=> setNonEmpty!30550 (= tp!1429585 setRes!30557)))

(declare-fun setIsEmpty!30557 () Bool)

(assert (=> setIsEmpty!30557 setRes!30557))

(declare-fun tp!1429625 () Bool)

(declare-fun e!3196376 () Bool)

(declare-fun setElem!30557 () Context!7250)

(declare-fun setNonEmpty!30557 () Bool)

(assert (=> setNonEmpty!30557 (= setRes!30557 (and tp!1429625 (inv!78783 setElem!30557) e!3196376))))

(declare-fun setRest!30557 () (InoxSet Context!7250))

(assert (=> setNonEmpty!30557 (= setRest!30550 ((_ map or) (store ((as const (Array Context!7250 Bool)) false) setElem!30557 true) setRest!30557))))

(declare-fun b!5125308 () Bool)

(declare-fun tp!1429626 () Bool)

(assert (=> b!5125308 (= e!3196376 tp!1429626)))

(assert (= (and setNonEmpty!30550 condSetEmpty!30557) setIsEmpty!30557))

(assert (= (and setNonEmpty!30550 (not condSetEmpty!30557)) setNonEmpty!30557))

(assert (= setNonEmpty!30557 b!5125308))

(declare-fun m!6188530 () Bool)

(assert (=> setNonEmpty!30557 m!6188530))

(declare-fun b!5125309 () Bool)

(declare-fun e!3196377 () Bool)

(declare-fun tp!1429627 () Bool)

(declare-fun tp!1429628 () Bool)

(assert (=> b!5125309 (= e!3196377 (and tp!1429627 tp!1429628))))

(assert (=> b!5124888 (= tp!1429587 e!3196377)))

(assert (= (and b!5124888 ((_ is Cons!59288) (exprs!4125 setElem!30549))) b!5125309))

(declare-fun b!5125310 () Bool)

(declare-fun e!3196378 () Bool)

(declare-fun tp!1429629 () Bool)

(assert (=> b!5125310 (= e!3196378 (and tp_is_empty!37755 tp!1429629))))

(assert (=> b!5124881 (= tp!1429584 e!3196378)))

(assert (= (and b!5124881 ((_ is Cons!59287) (t!372436 input!5745))) b!5125310))

(declare-fun condSetEmpty!30558 () Bool)

(assert (=> setNonEmpty!30549 (= condSetEmpty!30558 (= setRest!30549 ((as const (Array Context!7250 Bool)) false)))))

(declare-fun setRes!30558 () Bool)

(assert (=> setNonEmpty!30549 (= tp!1429589 setRes!30558)))

(declare-fun setIsEmpty!30558 () Bool)

(assert (=> setIsEmpty!30558 setRes!30558))

(declare-fun tp!1429630 () Bool)

(declare-fun setNonEmpty!30558 () Bool)

(declare-fun setElem!30558 () Context!7250)

(declare-fun e!3196379 () Bool)

(assert (=> setNonEmpty!30558 (= setRes!30558 (and tp!1429630 (inv!78783 setElem!30558) e!3196379))))

(declare-fun setRest!30558 () (InoxSet Context!7250))

(assert (=> setNonEmpty!30558 (= setRest!30549 ((_ map or) (store ((as const (Array Context!7250 Bool)) false) setElem!30558 true) setRest!30558))))

(declare-fun b!5125311 () Bool)

(declare-fun tp!1429631 () Bool)

(assert (=> b!5125311 (= e!3196379 tp!1429631)))

(assert (= (and setNonEmpty!30549 condSetEmpty!30558) setIsEmpty!30558))

(assert (= (and setNonEmpty!30549 (not condSetEmpty!30558)) setNonEmpty!30558))

(assert (= setNonEmpty!30558 b!5125311))

(declare-fun m!6188532 () Bool)

(assert (=> setNonEmpty!30558 m!6188532))

(check-sat (not b!5125213) (not d!1657518) (not b!5125278) (not d!1657434) (not d!1657504) (not d!1657528) (not b!5125272) (not bm!356771) (not d!1657544) (not d!1657540) (not b!5125024) (not bm!356758) (not b!5125088) (not b!5125240) (not b!5125255) (not d!1657550) (not b!5125303) (not b!5125268) (not b!5125087) (not b!5125237) (not b!5125311) (not bm!356708) (not b!5125308) (not b!5125250) (not bm!356766) (not b!5125195) (not b!5125309) (not b!5125274) (not b!5125084) (not b!5125233) (not d!1657430) (not d!1657552) (not b!5125047) (not bm!356770) (not d!1657546) (not d!1657450) (not b!5124950) (not b!5125292) (not b!5125051) (not d!1657428) (not b!5125281) (not b!5125275) (not b!5125241) (not b!5125262) (not d!1657520) (not b!5125194) (not b!5125302) (not b!5125085) (not b!5125232) (not b!5125025) (not b!5125225) (not d!1657498) (not d!1657432) (not b!5125050) (not d!1657374) (not b!5125234) (not bm!356767) (not setNonEmpty!30557) (not b!5125091) (not b!5125263) (not b!5125211) (not b!5125248) (not d!1657538) (not b!5125289) (not b!5125048) (not d!1657500) (not b!5125099) (not d!1657532) (not bm!356761) (not b!5125210) (not bm!356764) (not b!5125228) (not d!1657514) (not b!5125219) (not b!5125070) (not d!1657526) (not b!5125245) (not b!5125279) (not d!1657516) (not d!1657448) (not d!1657456) (not b!5125297) (not bm!356763) (not b!5125310) (not d!1657556) (not b!5125208) (not b!5125083) (not d!1657542) (not b!5125092) (not bm!356760) (not b!5125236) (not d!1657452) (not b!5125230) tp_is_empty!37755 (not b!5125259) (not bm!356769) (not d!1657530) (not b!5125249) (not bm!356765) (not bm!356707) (not b!5125201) (not d!1657496) (not b!5125258) (not b!5125269) (not b!5124951) (not bm!356772) (not bm!356757) (not b!5125212) (not b!5125273) (not b!5125270) (not d!1657386) (not b!5125265) (not bm!356762) (not d!1657442) (not b!5125193) (not d!1657512) (not bm!356768) (not b!5125286) (not b!5125287) (not setNonEmpty!30558) (not bm!356759) (not b!5125244))
(check-sat)
(get-model)

(declare-fun bs!1193846 () Bool)

(declare-fun d!1657888 () Bool)

(assert (= bs!1193846 (and d!1657888 d!1657386)))

(declare-fun lambda!251773 () Int)

(assert (=> bs!1193846 (not (= lambda!251773 lambda!251725))))

(declare-fun bs!1193847 () Bool)

(assert (= bs!1193847 (and d!1657888 b!5125024)))

(assert (=> bs!1193847 (not (= lambda!251773 lambda!251726))))

(declare-fun bs!1193848 () Bool)

(assert (= bs!1193848 (and d!1657888 b!5125025)))

(assert (=> bs!1193848 (not (= lambda!251773 lambda!251727))))

(assert (=> d!1657888 true))

(declare-fun order!26805 () Int)

(declare-fun dynLambda!23614 (Int Int) Int)

(assert (=> d!1657888 (< (dynLambda!23614 order!26805 lambda!251725) (dynLambda!23614 order!26805 lambda!251773))))

(assert (=> d!1657888 (not (exists!1495 lt!2113328 lambda!251773))))

(declare-fun lt!2113778 () Unit!150433)

(declare-fun choose!37731 (List!59414 Int) Unit!150433)

(assert (=> d!1657888 (= lt!2113778 (choose!37731 lt!2113328 lambda!251725))))

(declare-fun forall!13642 (List!59414 Int) Bool)

(assert (=> d!1657888 (forall!13642 lt!2113328 lambda!251725)))

(assert (=> d!1657888 (= (lemmaForallThenNotExists!331 lt!2113328 lambda!251725) lt!2113778)))

(declare-fun bs!1193849 () Bool)

(assert (= bs!1193849 d!1657888))

(declare-fun m!6189302 () Bool)

(assert (=> bs!1193849 m!6189302))

(declare-fun m!6189304 () Bool)

(assert (=> bs!1193849 m!6189304))

(declare-fun m!6189306 () Bool)

(assert (=> bs!1193849 m!6189306))

(assert (=> b!5125025 d!1657888))

(declare-fun d!1657890 () Bool)

(declare-fun lt!2113779 () Int)

(assert (=> d!1657890 (>= lt!2113779 0)))

(declare-fun e!3196588 () Int)

(assert (=> d!1657890 (= lt!2113779 e!3196588)))

(declare-fun c!881177 () Bool)

(assert (=> d!1657890 (= c!881177 ((_ is Nil!59287) (t!372436 (_1!35123 (findLongestMatchInnerZipper!201 z!4463 testedP!265 lt!2113208 lt!2113191 input!5745 lt!2113198)))))))

(assert (=> d!1657890 (= (size!39547 (t!372436 (_1!35123 (findLongestMatchInnerZipper!201 z!4463 testedP!265 lt!2113208 lt!2113191 input!5745 lt!2113198)))) lt!2113779)))

(declare-fun b!5125684 () Bool)

(assert (=> b!5125684 (= e!3196588 0)))

(declare-fun b!5125685 () Bool)

(assert (=> b!5125685 (= e!3196588 (+ 1 (size!39547 (t!372436 (t!372436 (_1!35123 (findLongestMatchInnerZipper!201 z!4463 testedP!265 lt!2113208 lt!2113191 input!5745 lt!2113198)))))))))

(assert (= (and d!1657890 c!881177) b!5125684))

(assert (= (and d!1657890 (not c!881177)) b!5125685))

(declare-fun m!6189308 () Bool)

(assert (=> b!5125685 m!6189308))

(assert (=> b!5125210 d!1657890))

(declare-fun d!1657892 () Bool)

(assert (=> d!1657892 (= (isEmpty!31956 (_1!35123 lt!2113510)) ((_ is Nil!59287) (_1!35123 lt!2113510)))))

(assert (=> b!5125194 d!1657892))

(declare-fun lt!2113780 () List!59411)

(declare-fun b!5125689 () Bool)

(declare-fun e!3196590 () Bool)

(assert (=> b!5125689 (= e!3196590 (or (not (= lt!2113197 Nil!59287)) (= lt!2113780 (t!372436 lt!2113214))))))

(declare-fun d!1657894 () Bool)

(assert (=> d!1657894 e!3196590))

(declare-fun res!2182488 () Bool)

(assert (=> d!1657894 (=> (not res!2182488) (not e!3196590))))

(assert (=> d!1657894 (= res!2182488 (= (content!10549 lt!2113780) ((_ map or) (content!10549 (t!372436 lt!2113214)) (content!10549 lt!2113197))))))

(declare-fun e!3196589 () List!59411)

(assert (=> d!1657894 (= lt!2113780 e!3196589)))

(declare-fun c!881178 () Bool)

(assert (=> d!1657894 (= c!881178 ((_ is Nil!59287) (t!372436 lt!2113214)))))

(assert (=> d!1657894 (= (++!13054 (t!372436 lt!2113214) lt!2113197) lt!2113780)))

(declare-fun b!5125688 () Bool)

(declare-fun res!2182489 () Bool)

(assert (=> b!5125688 (=> (not res!2182489) (not e!3196590))))

(assert (=> b!5125688 (= res!2182489 (= (size!39547 lt!2113780) (+ (size!39547 (t!372436 lt!2113214)) (size!39547 lt!2113197))))))

(declare-fun b!5125687 () Bool)

(assert (=> b!5125687 (= e!3196589 (Cons!59287 (h!65735 (t!372436 lt!2113214)) (++!13054 (t!372436 (t!372436 lt!2113214)) lt!2113197)))))

(declare-fun b!5125686 () Bool)

(assert (=> b!5125686 (= e!3196589 lt!2113197)))

(assert (= (and d!1657894 c!881178) b!5125686))

(assert (= (and d!1657894 (not c!881178)) b!5125687))

(assert (= (and d!1657894 res!2182488) b!5125688))

(assert (= (and b!5125688 res!2182489) b!5125689))

(declare-fun m!6189310 () Bool)

(assert (=> d!1657894 m!6189310))

(declare-fun m!6189312 () Bool)

(assert (=> d!1657894 m!6189312))

(assert (=> d!1657894 m!6188086))

(declare-fun m!6189314 () Bool)

(assert (=> b!5125688 m!6189314))

(assert (=> b!5125688 m!6188352))

(assert (=> b!5125688 m!6188090))

(declare-fun m!6189316 () Bool)

(assert (=> b!5125687 m!6189316))

(assert (=> b!5125047 d!1657894))

(declare-fun d!1657896 () Bool)

(declare-fun c!881181 () Bool)

(assert (=> d!1657896 (= c!881181 ((_ is Nil!59287) lt!2113565))))

(declare-fun e!3196593 () (InoxSet C!28748))

(assert (=> d!1657896 (= (content!10549 lt!2113565) e!3196593)))

(declare-fun b!5125694 () Bool)

(assert (=> b!5125694 (= e!3196593 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125695 () Bool)

(assert (=> b!5125695 (= e!3196593 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113565) true) (content!10549 (t!372436 lt!2113565))))))

(assert (= (and d!1657896 c!881181) b!5125694))

(assert (= (and d!1657896 (not c!881181)) b!5125695))

(declare-fun m!6189318 () Bool)

(assert (=> b!5125695 m!6189318))

(declare-fun m!6189320 () Bool)

(assert (=> b!5125695 m!6189320))

(assert (=> d!1657528 d!1657896))

(declare-fun d!1657898 () Bool)

(declare-fun c!881182 () Bool)

(assert (=> d!1657898 (= c!881182 ((_ is Nil!59287) testedP!265))))

(declare-fun e!3196594 () (InoxSet C!28748))

(assert (=> d!1657898 (= (content!10549 testedP!265) e!3196594)))

(declare-fun b!5125696 () Bool)

(assert (=> b!5125696 (= e!3196594 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125697 () Bool)

(assert (=> b!5125697 (= e!3196594 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 testedP!265) true) (content!10549 (t!372436 testedP!265))))))

(assert (= (and d!1657898 c!881182) b!5125696))

(assert (= (and d!1657898 (not c!881182)) b!5125697))

(declare-fun m!6189322 () Bool)

(assert (=> b!5125697 m!6189322))

(declare-fun m!6189324 () Bool)

(assert (=> b!5125697 m!6189324))

(assert (=> d!1657528 d!1657898))

(declare-fun d!1657900 () Bool)

(declare-fun c!881183 () Bool)

(assert (=> d!1657900 (= c!881183 ((_ is Nil!59287) lt!2113207))))

(declare-fun e!3196595 () (InoxSet C!28748))

(assert (=> d!1657900 (= (content!10549 lt!2113207) e!3196595)))

(declare-fun b!5125698 () Bool)

(assert (=> b!5125698 (= e!3196595 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125699 () Bool)

(assert (=> b!5125699 (= e!3196595 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113207) true) (content!10549 (t!372436 lt!2113207))))))

(assert (= (and d!1657900 c!881183) b!5125698))

(assert (= (and d!1657900 (not c!881183)) b!5125699))

(declare-fun m!6189326 () Bool)

(assert (=> b!5125699 m!6189326))

(declare-fun m!6189328 () Bool)

(assert (=> b!5125699 m!6189328))

(assert (=> d!1657528 d!1657900))

(assert (=> bm!356769 d!1657548))

(declare-fun d!1657902 () Bool)

(assert (=> d!1657902 (= (isEmpty!31957 (getLanguageWitness!835 z!4463)) (not ((_ is Some!14707) (getLanguageWitness!835 z!4463))))))

(assert (=> d!1657386 d!1657902))

(declare-fun bs!1193850 () Bool)

(declare-fun d!1657904 () Bool)

(assert (= bs!1193850 (and d!1657904 d!1657386)))

(declare-fun lambda!251780 () Int)

(assert (=> bs!1193850 (not (= lambda!251780 lambda!251725))))

(declare-fun bs!1193851 () Bool)

(assert (= bs!1193851 (and d!1657904 b!5125024)))

(assert (=> bs!1193851 (= lambda!251780 lambda!251726)))

(declare-fun bs!1193852 () Bool)

(assert (= bs!1193852 (and d!1657904 b!5125025)))

(assert (=> bs!1193852 (= lambda!251780 lambda!251727)))

(declare-fun bs!1193853 () Bool)

(assert (= bs!1193853 (and d!1657904 d!1657888)))

(assert (=> bs!1193853 (not (= lambda!251780 lambda!251773))))

(declare-fun lt!2113783 () Option!14708)

(declare-fun isDefined!11518 (Option!14708) Bool)

(declare-fun exists!1497 ((InoxSet Context!7250) Int) Bool)

(assert (=> d!1657904 (= (isDefined!11518 lt!2113783) (exists!1497 z!4463 lambda!251780))))

(declare-fun e!3196598 () Option!14708)

(assert (=> d!1657904 (= lt!2113783 e!3196598)))

(declare-fun c!881192 () Bool)

(assert (=> d!1657904 (= c!881192 (exists!1497 z!4463 lambda!251780))))

(assert (=> d!1657904 (= (getLanguageWitness!835 z!4463) lt!2113783)))

(declare-fun b!5125704 () Bool)

(declare-fun getLanguageWitness!837 (Context!7250) Option!14708)

(declare-fun getWitness!681 ((InoxSet Context!7250) Int) Context!7250)

(assert (=> b!5125704 (= e!3196598 (getLanguageWitness!837 (getWitness!681 z!4463 lambda!251780)))))

(declare-fun b!5125705 () Bool)

(assert (=> b!5125705 (= e!3196598 None!14707)))

(assert (= (and d!1657904 c!881192) b!5125704))

(assert (= (and d!1657904 (not c!881192)) b!5125705))

(declare-fun m!6189330 () Bool)

(assert (=> d!1657904 m!6189330))

(declare-fun m!6189332 () Bool)

(assert (=> d!1657904 m!6189332))

(assert (=> d!1657904 m!6189332))

(declare-fun m!6189334 () Bool)

(assert (=> b!5125704 m!6189334))

(assert (=> b!5125704 m!6189334))

(declare-fun m!6189336 () Bool)

(assert (=> b!5125704 m!6189336))

(assert (=> d!1657386 d!1657904))

(declare-fun d!1657906 () Bool)

(declare-fun lt!2113786 () Bool)

(assert (=> d!1657906 (= lt!2113786 (forall!13642 (toList!8274 z!4463) lambda!251725))))

(declare-fun choose!37733 ((InoxSet Context!7250) Int) Bool)

(assert (=> d!1657906 (= lt!2113786 (choose!37733 z!4463 lambda!251725))))

(assert (=> d!1657906 (= (forall!13638 z!4463 lambda!251725) lt!2113786)))

(declare-fun bs!1193854 () Bool)

(assert (= bs!1193854 d!1657906))

(assert (=> bs!1193854 m!6188078))

(assert (=> bs!1193854 m!6188078))

(declare-fun m!6189338 () Bool)

(assert (=> bs!1193854 m!6189338))

(declare-fun m!6189340 () Bool)

(assert (=> bs!1193854 m!6189340))

(assert (=> d!1657386 d!1657906))

(declare-fun bs!1193855 () Bool)

(declare-fun d!1657908 () Bool)

(assert (= bs!1193855 (and d!1657908 d!1657386)))

(declare-fun lambda!251783 () Int)

(assert (=> bs!1193855 (not (= lambda!251783 lambda!251725))))

(declare-fun bs!1193856 () Bool)

(assert (= bs!1193856 (and d!1657908 d!1657888)))

(assert (=> bs!1193856 (= (= (ite c!880972 lambda!251726 lambda!251727) lambda!251725) (= lambda!251783 lambda!251773))))

(declare-fun bs!1193857 () Bool)

(assert (= bs!1193857 (and d!1657908 b!5125024)))

(assert (=> bs!1193857 (not (= lambda!251783 lambda!251726))))

(declare-fun bs!1193858 () Bool)

(assert (= bs!1193858 (and d!1657908 b!5125025)))

(assert (=> bs!1193858 (not (= lambda!251783 lambda!251727))))

(declare-fun bs!1193859 () Bool)

(assert (= bs!1193859 (and d!1657908 d!1657904)))

(assert (=> bs!1193859 (not (= lambda!251783 lambda!251780))))

(assert (=> d!1657908 true))

(assert (=> d!1657908 (< (dynLambda!23614 order!26805 (ite c!880972 lambda!251726 lambda!251727)) (dynLambda!23614 order!26805 lambda!251783))))

(assert (=> d!1657908 (= (exists!1495 (ite c!880972 lt!2113329 lt!2113328) (ite c!880972 lambda!251726 lambda!251727)) (not (forall!13642 (ite c!880972 lt!2113329 lt!2113328) lambda!251783)))))

(declare-fun bs!1193860 () Bool)

(assert (= bs!1193860 d!1657908))

(declare-fun m!6189342 () Bool)

(assert (=> bs!1193860 m!6189342))

(assert (=> bm!356708 d!1657908))

(assert (=> d!1657496 d!1657530))

(declare-fun d!1657910 () Bool)

(assert (=> d!1657910 (= lt!2113191 lt!2113541)))

(declare-fun lt!2113787 () Unit!150433)

(assert (=> d!1657910 (= lt!2113787 (choose!37724 testedP!265 lt!2113191 testedP!265 lt!2113541 input!5745))))

(assert (=> d!1657910 (isPrefix!5646 testedP!265 input!5745)))

(assert (=> d!1657910 (= (lemmaSamePrefixThenSameSuffix!2664 testedP!265 lt!2113191 testedP!265 lt!2113541 input!5745) lt!2113787)))

(declare-fun bs!1193861 () Bool)

(assert (= bs!1193861 d!1657910))

(declare-fun m!6189344 () Bool)

(assert (=> bs!1193861 m!6189344))

(assert (=> bs!1193861 m!6187870))

(assert (=> d!1657496 d!1657910))

(declare-fun d!1657912 () Bool)

(assert (=> d!1657912 (isPrefix!5646 testedP!265 (++!13054 testedP!265 lt!2113191))))

(declare-fun lt!2113790 () Unit!150433)

(declare-fun choose!37734 (List!59411 List!59411) Unit!150433)

(assert (=> d!1657912 (= lt!2113790 (choose!37734 testedP!265 lt!2113191))))

(assert (=> d!1657912 (= (lemmaConcatTwoListThenFirstIsPrefix!3558 testedP!265 lt!2113191) lt!2113790)))

(declare-fun bs!1193862 () Bool)

(assert (= bs!1193862 d!1657912))

(assert (=> bs!1193862 m!6187794))

(assert (=> bs!1193862 m!6187794))

(assert (=> bs!1193862 m!6188356))

(declare-fun m!6189346 () Bool)

(assert (=> bs!1193862 m!6189346))

(assert (=> d!1657496 d!1657912))

(assert (=> d!1657496 d!1657386))

(assert (=> d!1657496 d!1657512))

(declare-fun b!5125707 () Bool)

(declare-fun res!2182492 () Bool)

(declare-fun e!3196601 () Bool)

(assert (=> b!5125707 (=> (not res!2182492) (not e!3196601))))

(assert (=> b!5125707 (= res!2182492 (= (head!10957 testedP!265) (head!10957 (++!13054 testedP!265 lt!2113191))))))

(declare-fun b!5125706 () Bool)

(declare-fun e!3196599 () Bool)

(assert (=> b!5125706 (= e!3196599 e!3196601)))

(declare-fun res!2182490 () Bool)

(assert (=> b!5125706 (=> (not res!2182490) (not e!3196601))))

(assert (=> b!5125706 (= res!2182490 (not ((_ is Nil!59287) (++!13054 testedP!265 lt!2113191))))))

(declare-fun b!5125709 () Bool)

(declare-fun e!3196600 () Bool)

(assert (=> b!5125709 (= e!3196600 (>= (size!39547 (++!13054 testedP!265 lt!2113191)) (size!39547 testedP!265)))))

(declare-fun b!5125708 () Bool)

(assert (=> b!5125708 (= e!3196601 (isPrefix!5646 (tail!10092 testedP!265) (tail!10092 (++!13054 testedP!265 lt!2113191))))))

(declare-fun d!1657914 () Bool)

(assert (=> d!1657914 e!3196600))

(declare-fun res!2182491 () Bool)

(assert (=> d!1657914 (=> res!2182491 e!3196600)))

(declare-fun lt!2113791 () Bool)

(assert (=> d!1657914 (= res!2182491 (not lt!2113791))))

(assert (=> d!1657914 (= lt!2113791 e!3196599)))

(declare-fun res!2182493 () Bool)

(assert (=> d!1657914 (=> res!2182493 e!3196599)))

(assert (=> d!1657914 (= res!2182493 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1657914 (= (isPrefix!5646 testedP!265 (++!13054 testedP!265 lt!2113191)) lt!2113791)))

(assert (= (and d!1657914 (not res!2182493)) b!5125706))

(assert (= (and b!5125706 res!2182490) b!5125707))

(assert (= (and b!5125707 res!2182492) b!5125708))

(assert (= (and d!1657914 (not res!2182491)) b!5125709))

(assert (=> b!5125707 m!6188156))

(assert (=> b!5125707 m!6187794))

(declare-fun m!6189348 () Bool)

(assert (=> b!5125707 m!6189348))

(assert (=> b!5125709 m!6187794))

(declare-fun m!6189350 () Bool)

(assert (=> b!5125709 m!6189350))

(assert (=> b!5125709 m!6187864))

(assert (=> b!5125708 m!6188158))

(assert (=> b!5125708 m!6187794))

(declare-fun m!6189352 () Bool)

(assert (=> b!5125708 m!6189352))

(assert (=> b!5125708 m!6188158))

(assert (=> b!5125708 m!6189352))

(declare-fun m!6189354 () Bool)

(assert (=> b!5125708 m!6189354))

(assert (=> d!1657496 d!1657914))

(declare-fun b!5125713 () Bool)

(declare-fun e!3196603 () Bool)

(declare-fun lt!2113792 () List!59411)

(assert (=> b!5125713 (= e!3196603 (or (not (= (_2!35123 lt!2113527) Nil!59287)) (= lt!2113792 (_1!35123 lt!2113527))))))

(declare-fun d!1657916 () Bool)

(assert (=> d!1657916 e!3196603))

(declare-fun res!2182494 () Bool)

(assert (=> d!1657916 (=> (not res!2182494) (not e!3196603))))

(assert (=> d!1657916 (= res!2182494 (= (content!10549 lt!2113792) ((_ map or) (content!10549 (_1!35123 lt!2113527)) (content!10549 (_2!35123 lt!2113527)))))))

(declare-fun e!3196602 () List!59411)

(assert (=> d!1657916 (= lt!2113792 e!3196602)))

(declare-fun c!881193 () Bool)

(assert (=> d!1657916 (= c!881193 ((_ is Nil!59287) (_1!35123 lt!2113527)))))

(assert (=> d!1657916 (= (++!13054 (_1!35123 lt!2113527) (_2!35123 lt!2113527)) lt!2113792)))

(declare-fun b!5125712 () Bool)

(declare-fun res!2182495 () Bool)

(assert (=> b!5125712 (=> (not res!2182495) (not e!3196603))))

(assert (=> b!5125712 (= res!2182495 (= (size!39547 lt!2113792) (+ (size!39547 (_1!35123 lt!2113527)) (size!39547 (_2!35123 lt!2113527)))))))

(declare-fun b!5125711 () Bool)

(assert (=> b!5125711 (= e!3196602 (Cons!59287 (h!65735 (_1!35123 lt!2113527)) (++!13054 (t!372436 (_1!35123 lt!2113527)) (_2!35123 lt!2113527))))))

(declare-fun b!5125710 () Bool)

(assert (=> b!5125710 (= e!3196602 (_2!35123 lt!2113527))))

(assert (= (and d!1657916 c!881193) b!5125710))

(assert (= (and d!1657916 (not c!881193)) b!5125711))

(assert (= (and d!1657916 res!2182494) b!5125712))

(assert (= (and b!5125712 res!2182495) b!5125713))

(declare-fun m!6189356 () Bool)

(assert (=> d!1657916 m!6189356))

(declare-fun m!6189358 () Bool)

(assert (=> d!1657916 m!6189358))

(declare-fun m!6189360 () Bool)

(assert (=> d!1657916 m!6189360))

(declare-fun m!6189362 () Bool)

(assert (=> b!5125712 m!6189362))

(assert (=> b!5125712 m!6188368))

(declare-fun m!6189364 () Bool)

(assert (=> b!5125712 m!6189364))

(declare-fun m!6189366 () Bool)

(assert (=> b!5125711 m!6189366))

(assert (=> d!1657496 d!1657916))

(declare-fun d!1657918 () Bool)

(declare-fun lt!2113793 () Int)

(assert (=> d!1657918 (>= lt!2113793 0)))

(declare-fun e!3196604 () Int)

(assert (=> d!1657918 (= lt!2113793 e!3196604)))

(declare-fun c!881194 () Bool)

(assert (=> d!1657918 (= c!881194 ((_ is Nil!59287) lt!2113560))))

(assert (=> d!1657918 (= (size!39547 lt!2113560) lt!2113793)))

(declare-fun b!5125714 () Bool)

(assert (=> b!5125714 (= e!3196604 0)))

(declare-fun b!5125715 () Bool)

(assert (=> b!5125715 (= e!3196604 (+ 1 (size!39547 (t!372436 lt!2113560))))))

(assert (= (and d!1657918 c!881194) b!5125714))

(assert (= (and d!1657918 (not c!881194)) b!5125715))

(declare-fun m!6189368 () Bool)

(assert (=> b!5125715 m!6189368))

(assert (=> b!5125241 d!1657918))

(assert (=> b!5125241 d!1657506))

(declare-fun d!1657920 () Bool)

(declare-fun lt!2113794 () Int)

(assert (=> d!1657920 (>= lt!2113794 0)))

(declare-fun e!3196605 () Int)

(assert (=> d!1657920 (= lt!2113794 e!3196605)))

(declare-fun c!881195 () Bool)

(assert (=> d!1657920 (= c!881195 ((_ is Nil!59287) lt!2113193))))

(assert (=> d!1657920 (= (size!39547 lt!2113193) lt!2113794)))

(declare-fun b!5125716 () Bool)

(assert (=> b!5125716 (= e!3196605 0)))

(declare-fun b!5125717 () Bool)

(assert (=> b!5125717 (= e!3196605 (+ 1 (size!39547 (t!372436 lt!2113193))))))

(assert (= (and d!1657920 c!881195) b!5125716))

(assert (= (and d!1657920 (not c!881195)) b!5125717))

(declare-fun m!6189370 () Bool)

(assert (=> b!5125717 m!6189370))

(assert (=> b!5125241 d!1657920))

(declare-fun e!3196607 () Bool)

(declare-fun lt!2113795 () List!59411)

(declare-fun b!5125721 () Bool)

(assert (=> b!5125721 (= e!3196607 (or (not (= lt!2113197 Nil!59287)) (= lt!2113795 (t!372436 lt!2113189))))))

(declare-fun d!1657922 () Bool)

(assert (=> d!1657922 e!3196607))

(declare-fun res!2182496 () Bool)

(assert (=> d!1657922 (=> (not res!2182496) (not e!3196607))))

(assert (=> d!1657922 (= res!2182496 (= (content!10549 lt!2113795) ((_ map or) (content!10549 (t!372436 lt!2113189)) (content!10549 lt!2113197))))))

(declare-fun e!3196606 () List!59411)

(assert (=> d!1657922 (= lt!2113795 e!3196606)))

(declare-fun c!881196 () Bool)

(assert (=> d!1657922 (= c!881196 ((_ is Nil!59287) (t!372436 lt!2113189)))))

(assert (=> d!1657922 (= (++!13054 (t!372436 lt!2113189) lt!2113197) lt!2113795)))

(declare-fun b!5125720 () Bool)

(declare-fun res!2182497 () Bool)

(assert (=> b!5125720 (=> (not res!2182497) (not e!3196607))))

(assert (=> b!5125720 (= res!2182497 (= (size!39547 lt!2113795) (+ (size!39547 (t!372436 lt!2113189)) (size!39547 lt!2113197))))))

(declare-fun b!5125719 () Bool)

(assert (=> b!5125719 (= e!3196606 (Cons!59287 (h!65735 (t!372436 lt!2113189)) (++!13054 (t!372436 (t!372436 lt!2113189)) lt!2113197)))))

(declare-fun b!5125718 () Bool)

(assert (=> b!5125718 (= e!3196606 lt!2113197)))

(assert (= (and d!1657922 c!881196) b!5125718))

(assert (= (and d!1657922 (not c!881196)) b!5125719))

(assert (= (and d!1657922 res!2182496) b!5125720))

(assert (= (and b!5125720 res!2182497) b!5125721))

(declare-fun m!6189372 () Bool)

(assert (=> d!1657922 m!6189372))

(declare-fun m!6189374 () Bool)

(assert (=> d!1657922 m!6189374))

(assert (=> d!1657922 m!6188086))

(declare-fun m!6189376 () Bool)

(assert (=> b!5125720 m!6189376))

(declare-fun m!6189378 () Bool)

(assert (=> b!5125720 m!6189378))

(assert (=> b!5125720 m!6188090))

(declare-fun m!6189380 () Bool)

(assert (=> b!5125719 m!6189380))

(assert (=> b!5125244 d!1657922))

(declare-fun d!1657924 () Bool)

(declare-fun c!881197 () Bool)

(assert (=> d!1657924 (= c!881197 ((_ is Cons!59287) (t!372436 testedP!265)))))

(declare-fun e!3196608 () (InoxSet Context!7250))

(assert (=> d!1657924 (= (derivationZipper!138 (derivationStepZipper!864 baseZ!46 (h!65735 testedP!265)) (t!372436 testedP!265)) e!3196608)))

(declare-fun b!5125722 () Bool)

(assert (=> b!5125722 (= e!3196608 (derivationZipper!138 (derivationStepZipper!864 (derivationStepZipper!864 baseZ!46 (h!65735 testedP!265)) (h!65735 (t!372436 testedP!265))) (t!372436 (t!372436 testedP!265))))))

(declare-fun b!5125723 () Bool)

(assert (=> b!5125723 (= e!3196608 (derivationStepZipper!864 baseZ!46 (h!65735 testedP!265)))))

(assert (= (and d!1657924 c!881197) b!5125722))

(assert (= (and d!1657924 (not c!881197)) b!5125723))

(assert (=> b!5125722 m!6188456))

(declare-fun m!6189382 () Bool)

(assert (=> b!5125722 m!6189382))

(assert (=> b!5125722 m!6189382))

(declare-fun m!6189384 () Bool)

(assert (=> b!5125722 m!6189384))

(assert (=> b!5125255 d!1657924))

(declare-fun bs!1193863 () Bool)

(declare-fun d!1657926 () Bool)

(assert (= bs!1193863 (and d!1657926 d!1657544)))

(declare-fun lambda!251784 () Int)

(assert (=> bs!1193863 (= (= (h!65735 testedP!265) lt!2113194) (= lambda!251784 lambda!251737))))

(assert (=> d!1657926 true))

(assert (=> d!1657926 (= (derivationStepZipper!864 baseZ!46 (h!65735 testedP!265)) (flatMap!369 baseZ!46 lambda!251784))))

(declare-fun bs!1193864 () Bool)

(assert (= bs!1193864 d!1657926))

(declare-fun m!6189386 () Bool)

(assert (=> bs!1193864 m!6189386))

(assert (=> b!5125255 d!1657926))

(declare-fun d!1657928 () Bool)

(declare-fun c!881198 () Bool)

(assert (=> d!1657928 (= c!881198 (isEmpty!31956 (tail!10092 knownP!20)))))

(declare-fun e!3196609 () Bool)

(assert (=> d!1657928 (= (matchZipper!909 (derivationStepZipper!864 baseZ!46 (head!10957 knownP!20)) (tail!10092 knownP!20)) e!3196609)))

(declare-fun b!5125724 () Bool)

(assert (=> b!5125724 (= e!3196609 (nullableZipper!1038 (derivationStepZipper!864 baseZ!46 (head!10957 knownP!20))))))

(declare-fun b!5125725 () Bool)

(assert (=> b!5125725 (= e!3196609 (matchZipper!909 (derivationStepZipper!864 (derivationStepZipper!864 baseZ!46 (head!10957 knownP!20)) (head!10957 (tail!10092 knownP!20))) (tail!10092 (tail!10092 knownP!20))))))

(assert (= (and d!1657928 c!881198) b!5125724))

(assert (= (and d!1657928 (not c!881198)) b!5125725))

(assert (=> d!1657928 m!6187962))

(declare-fun m!6189388 () Bool)

(assert (=> d!1657928 m!6189388))

(assert (=> b!5125724 m!6187960))

(declare-fun m!6189390 () Bool)

(assert (=> b!5125724 m!6189390))

(assert (=> b!5125725 m!6187962))

(declare-fun m!6189392 () Bool)

(assert (=> b!5125725 m!6189392))

(assert (=> b!5125725 m!6187960))

(assert (=> b!5125725 m!6189392))

(declare-fun m!6189394 () Bool)

(assert (=> b!5125725 m!6189394))

(assert (=> b!5125725 m!6187962))

(declare-fun m!6189396 () Bool)

(assert (=> b!5125725 m!6189396))

(assert (=> b!5125725 m!6189394))

(assert (=> b!5125725 m!6189396))

(declare-fun m!6189398 () Bool)

(assert (=> b!5125725 m!6189398))

(assert (=> b!5124951 d!1657928))

(declare-fun bs!1193865 () Bool)

(declare-fun d!1657930 () Bool)

(assert (= bs!1193865 (and d!1657930 d!1657544)))

(declare-fun lambda!251785 () Int)

(assert (=> bs!1193865 (= (= (head!10957 knownP!20) lt!2113194) (= lambda!251785 lambda!251737))))

(declare-fun bs!1193866 () Bool)

(assert (= bs!1193866 (and d!1657930 d!1657926)))

(assert (=> bs!1193866 (= (= (head!10957 knownP!20) (h!65735 testedP!265)) (= lambda!251785 lambda!251784))))

(assert (=> d!1657930 true))

(assert (=> d!1657930 (= (derivationStepZipper!864 baseZ!46 (head!10957 knownP!20)) (flatMap!369 baseZ!46 lambda!251785))))

(declare-fun bs!1193867 () Bool)

(assert (= bs!1193867 d!1657930))

(declare-fun m!6189400 () Bool)

(assert (=> bs!1193867 m!6189400))

(assert (=> b!5124951 d!1657930))

(declare-fun d!1657932 () Bool)

(assert (=> d!1657932 (= (head!10957 knownP!20) (h!65735 knownP!20))))

(assert (=> b!5124951 d!1657932))

(declare-fun d!1657934 () Bool)

(assert (=> d!1657934 (= (tail!10092 knownP!20) (t!372436 knownP!20))))

(assert (=> b!5124951 d!1657934))

(declare-fun d!1657936 () Bool)

(assert (=> d!1657936 (= (head!10957 testedP!265) (h!65735 testedP!265))))

(assert (=> b!5125248 d!1657936))

(declare-fun d!1657938 () Bool)

(assert (=> d!1657938 (= (head!10957 input!5745) (h!65735 input!5745))))

(assert (=> b!5125248 d!1657938))

(declare-fun d!1657940 () Bool)

(declare-fun c!881199 () Bool)

(assert (=> d!1657940 (= c!881199 ((_ is Nil!59287) lt!2113561))))

(declare-fun e!3196610 () (InoxSet C!28748))

(assert (=> d!1657940 (= (content!10549 lt!2113561) e!3196610)))

(declare-fun b!5125726 () Bool)

(assert (=> b!5125726 (= e!3196610 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125727 () Bool)

(assert (=> b!5125727 (= e!3196610 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113561) true) (content!10549 (t!372436 lt!2113561))))))

(assert (= (and d!1657940 c!881199) b!5125726))

(assert (= (and d!1657940 (not c!881199)) b!5125727))

(declare-fun m!6189402 () Bool)

(assert (=> b!5125727 m!6189402))

(declare-fun m!6189404 () Bool)

(assert (=> b!5125727 m!6189404))

(assert (=> d!1657518 d!1657940))

(declare-fun d!1657942 () Bool)

(declare-fun c!881200 () Bool)

(assert (=> d!1657942 (= c!881200 ((_ is Nil!59287) lt!2113189))))

(declare-fun e!3196611 () (InoxSet C!28748))

(assert (=> d!1657942 (= (content!10549 lt!2113189) e!3196611)))

(declare-fun b!5125728 () Bool)

(assert (=> b!5125728 (= e!3196611 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125729 () Bool)

(assert (=> b!5125729 (= e!3196611 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113189) true) (content!10549 (t!372436 lt!2113189))))))

(assert (= (and d!1657942 c!881200) b!5125728))

(assert (= (and d!1657942 (not c!881200)) b!5125729))

(declare-fun m!6189406 () Bool)

(assert (=> b!5125729 m!6189406))

(assert (=> b!5125729 m!6189374))

(assert (=> d!1657518 d!1657942))

(declare-fun d!1657944 () Bool)

(declare-fun c!881201 () Bool)

(assert (=> d!1657944 (= c!881201 ((_ is Nil!59287) lt!2113197))))

(declare-fun e!3196612 () (InoxSet C!28748))

(assert (=> d!1657944 (= (content!10549 lt!2113197) e!3196612)))

(declare-fun b!5125730 () Bool)

(assert (=> b!5125730 (= e!3196612 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125731 () Bool)

(assert (=> b!5125731 (= e!3196612 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113197) true) (content!10549 (t!372436 lt!2113197))))))

(assert (= (and d!1657944 c!881201) b!5125730))

(assert (= (and d!1657944 (not c!881201)) b!5125731))

(declare-fun m!6189408 () Bool)

(assert (=> b!5125731 m!6189408))

(declare-fun m!6189410 () Bool)

(assert (=> b!5125731 m!6189410))

(assert (=> d!1657518 d!1657944))

(declare-fun e!3196614 () Bool)

(declare-fun b!5125735 () Bool)

(declare-fun lt!2113796 () List!59411)

(assert (=> b!5125735 (= e!3196614 (or (not (= lt!2113191 Nil!59287)) (= lt!2113796 (t!372436 testedP!265))))))

(declare-fun d!1657946 () Bool)

(assert (=> d!1657946 e!3196614))

(declare-fun res!2182498 () Bool)

(assert (=> d!1657946 (=> (not res!2182498) (not e!3196614))))

(assert (=> d!1657946 (= res!2182498 (= (content!10549 lt!2113796) ((_ map or) (content!10549 (t!372436 testedP!265)) (content!10549 lt!2113191))))))

(declare-fun e!3196613 () List!59411)

(assert (=> d!1657946 (= lt!2113796 e!3196613)))

(declare-fun c!881202 () Bool)

(assert (=> d!1657946 (= c!881202 ((_ is Nil!59287) (t!372436 testedP!265)))))

(assert (=> d!1657946 (= (++!13054 (t!372436 testedP!265) lt!2113191) lt!2113796)))

(declare-fun b!5125734 () Bool)

(declare-fun res!2182499 () Bool)

(assert (=> b!5125734 (=> (not res!2182499) (not e!3196614))))

(assert (=> b!5125734 (= res!2182499 (= (size!39547 lt!2113796) (+ (size!39547 (t!372436 testedP!265)) (size!39547 lt!2113191))))))

(declare-fun b!5125733 () Bool)

(assert (=> b!5125733 (= e!3196613 (Cons!59287 (h!65735 (t!372436 testedP!265)) (++!13054 (t!372436 (t!372436 testedP!265)) lt!2113191)))))

(declare-fun b!5125732 () Bool)

(assert (=> b!5125732 (= e!3196613 lt!2113191)))

(assert (= (and d!1657946 c!881202) b!5125732))

(assert (= (and d!1657946 (not c!881202)) b!5125733))

(assert (= (and d!1657946 res!2182498) b!5125734))

(assert (= (and b!5125734 res!2182499) b!5125735))

(declare-fun m!6189412 () Bool)

(assert (=> d!1657946 m!6189412))

(assert (=> d!1657946 m!6189324))

(assert (=> d!1657946 m!6188418))

(declare-fun m!6189414 () Bool)

(assert (=> b!5125734 m!6189414))

(assert (=> b!5125734 m!6188408))

(assert (=> b!5125734 m!6188422))

(declare-fun m!6189416 () Bool)

(assert (=> b!5125733 m!6189416))

(assert (=> b!5125236 d!1657946))

(declare-fun d!1657948 () Bool)

(assert (=> d!1657948 (= input!5745 lt!2113214)))

(declare-fun lt!2113799 () Unit!150433)

(declare-fun choose!37737 (List!59411 List!59411 List!59411) Unit!150433)

(assert (=> d!1657948 (= lt!2113799 (choose!37737 input!5745 lt!2113214 input!5745))))

(assert (=> d!1657948 (isPrefix!5646 input!5745 input!5745)))

(assert (=> d!1657948 (= (lemmaIsPrefixSameLengthThenSameList!1350 input!5745 lt!2113214 input!5745) lt!2113799)))

(declare-fun bs!1193868 () Bool)

(assert (= bs!1193868 d!1657948))

(declare-fun m!6189418 () Bool)

(assert (=> bs!1193868 m!6189418))

(assert (=> bs!1193868 m!6188304))

(assert (=> bm!356764 d!1657948))

(declare-fun d!1657950 () Bool)

(declare-fun choose!37738 ((InoxSet Context!7250) Int) (InoxSet Context!7250))

(assert (=> d!1657950 (= (flatMap!369 z!4463 lambda!251737) (choose!37738 z!4463 lambda!251737))))

(declare-fun bs!1193869 () Bool)

(assert (= bs!1193869 d!1657950))

(declare-fun m!6189420 () Bool)

(assert (=> bs!1193869 m!6189420))

(assert (=> d!1657544 d!1657950))

(declare-fun d!1657952 () Bool)

(declare-fun c!881203 () Bool)

(assert (=> d!1657952 (= c!881203 ((_ is Nil!59287) lt!2113558))))

(declare-fun e!3196615 () (InoxSet C!28748))

(assert (=> d!1657952 (= (content!10549 lt!2113558) e!3196615)))

(declare-fun b!5125736 () Bool)

(assert (=> b!5125736 (= e!3196615 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125737 () Bool)

(assert (=> b!5125737 (= e!3196615 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113558) true) (content!10549 (t!372436 lt!2113558))))))

(assert (= (and d!1657952 c!881203) b!5125736))

(assert (= (and d!1657952 (not c!881203)) b!5125737))

(declare-fun m!6189422 () Bool)

(assert (=> b!5125737 m!6189422))

(declare-fun m!6189424 () Bool)

(assert (=> b!5125737 m!6189424))

(assert (=> d!1657512 d!1657952))

(assert (=> d!1657512 d!1657898))

(declare-fun d!1657954 () Bool)

(declare-fun c!881204 () Bool)

(assert (=> d!1657954 (= c!881204 ((_ is Nil!59287) lt!2113191))))

(declare-fun e!3196616 () (InoxSet C!28748))

(assert (=> d!1657954 (= (content!10549 lt!2113191) e!3196616)))

(declare-fun b!5125738 () Bool)

(assert (=> b!5125738 (= e!3196616 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125739 () Bool)

(assert (=> b!5125739 (= e!3196616 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113191) true) (content!10549 (t!372436 lt!2113191))))))

(assert (= (and d!1657954 c!881204) b!5125738))

(assert (= (and d!1657954 (not c!881204)) b!5125739))

(declare-fun m!6189426 () Bool)

(assert (=> b!5125739 m!6189426))

(declare-fun m!6189428 () Bool)

(assert (=> b!5125739 m!6189428))

(assert (=> d!1657512 d!1657954))

(declare-fun d!1657956 () Bool)

(assert (=> d!1657956 (isPrefix!5646 input!5745 input!5745)))

(declare-fun lt!2113802 () Unit!150433)

(declare-fun choose!37739 (List!59411 List!59411) Unit!150433)

(assert (=> d!1657956 (= lt!2113802 (choose!37739 input!5745 input!5745))))

(assert (=> d!1657956 (= (lemmaIsPrefixRefl!3706 input!5745 input!5745) lt!2113802)))

(declare-fun bs!1193870 () Bool)

(assert (= bs!1193870 d!1657956))

(assert (=> bs!1193870 m!6188304))

(declare-fun m!6189430 () Bool)

(assert (=> bs!1193870 m!6189430))

(assert (=> bm!356760 d!1657956))

(declare-fun b!5125743 () Bool)

(declare-fun e!3196618 () Bool)

(declare-fun lt!2113803 () List!59411)

(assert (=> b!5125743 (= e!3196618 (or (not (= lt!2113570 Nil!59287)) (= lt!2113803 lt!2113214)))))

(declare-fun d!1657958 () Bool)

(assert (=> d!1657958 e!3196618))

(declare-fun res!2182500 () Bool)

(assert (=> d!1657958 (=> (not res!2182500) (not e!3196618))))

(assert (=> d!1657958 (= res!2182500 (= (content!10549 lt!2113803) ((_ map or) (content!10549 lt!2113214) (content!10549 lt!2113570))))))

(declare-fun e!3196617 () List!59411)

(assert (=> d!1657958 (= lt!2113803 e!3196617)))

(declare-fun c!881205 () Bool)

(assert (=> d!1657958 (= c!881205 ((_ is Nil!59287) lt!2113214))))

(assert (=> d!1657958 (= (++!13054 lt!2113214 lt!2113570) lt!2113803)))

(declare-fun b!5125742 () Bool)

(declare-fun res!2182501 () Bool)

(assert (=> b!5125742 (=> (not res!2182501) (not e!3196618))))

(assert (=> b!5125742 (= res!2182501 (= (size!39547 lt!2113803) (+ (size!39547 lt!2113214) (size!39547 lt!2113570))))))

(declare-fun b!5125741 () Bool)

(assert (=> b!5125741 (= e!3196617 (Cons!59287 (h!65735 lt!2113214) (++!13054 (t!372436 lt!2113214) lt!2113570)))))

(declare-fun b!5125740 () Bool)

(assert (=> b!5125740 (= e!3196617 lt!2113570)))

(assert (= (and d!1657958 c!881205) b!5125740))

(assert (= (and d!1657958 (not c!881205)) b!5125741))

(assert (= (and d!1657958 res!2182500) b!5125742))

(assert (= (and b!5125742 res!2182501) b!5125743))

(declare-fun m!6189432 () Bool)

(assert (=> d!1657958 m!6189432))

(assert (=> d!1657958 m!6188084))

(declare-fun m!6189434 () Bool)

(assert (=> d!1657958 m!6189434))

(declare-fun m!6189436 () Bool)

(assert (=> b!5125742 m!6189436))

(assert (=> b!5125742 m!6187824))

(declare-fun m!6189438 () Bool)

(assert (=> b!5125742 m!6189438))

(declare-fun m!6189440 () Bool)

(assert (=> b!5125741 m!6189440))

(assert (=> d!1657538 d!1657958))

(assert (=> d!1657538 d!1657508))

(assert (=> d!1657538 d!1657492))

(declare-fun d!1657960 () Bool)

(declare-fun lt!2113804 () Int)

(assert (=> d!1657960 (>= lt!2113804 0)))

(declare-fun e!3196619 () Int)

(assert (=> d!1657960 (= lt!2113804 e!3196619)))

(declare-fun c!881206 () Bool)

(assert (=> d!1657960 (= c!881206 ((_ is Nil!59287) lt!2113565))))

(assert (=> d!1657960 (= (size!39547 lt!2113565) lt!2113804)))

(declare-fun b!5125744 () Bool)

(assert (=> b!5125744 (= e!3196619 0)))

(declare-fun b!5125745 () Bool)

(assert (=> b!5125745 (= e!3196619 (+ 1 (size!39547 (t!372436 lt!2113565))))))

(assert (= (and d!1657960 c!881206) b!5125744))

(assert (= (and d!1657960 (not c!881206)) b!5125745))

(declare-fun m!6189442 () Bool)

(assert (=> b!5125745 m!6189442))

(assert (=> b!5125263 d!1657960))

(assert (=> b!5125263 d!1657506))

(declare-fun d!1657962 () Bool)

(declare-fun lt!2113805 () Int)

(assert (=> d!1657962 (>= lt!2113805 0)))

(declare-fun e!3196620 () Int)

(assert (=> d!1657962 (= lt!2113805 e!3196620)))

(declare-fun c!881207 () Bool)

(assert (=> d!1657962 (= c!881207 ((_ is Nil!59287) lt!2113207))))

(assert (=> d!1657962 (= (size!39547 lt!2113207) lt!2113805)))

(declare-fun b!5125746 () Bool)

(assert (=> b!5125746 (= e!3196620 0)))

(declare-fun b!5125747 () Bool)

(assert (=> b!5125747 (= e!3196620 (+ 1 (size!39547 (t!372436 lt!2113207))))))

(assert (= (and d!1657962 c!881207) b!5125746))

(assert (= (and d!1657962 (not c!881207)) b!5125747))

(declare-fun m!6189444 () Bool)

(assert (=> b!5125747 m!6189444))

(assert (=> b!5125263 d!1657962))

(assert (=> d!1657532 d!1657536))

(declare-fun d!1657964 () Bool)

(assert (=> d!1657964 (isPrefix!5646 lt!2113214 knownP!20)))

(assert (=> d!1657964 true))

(declare-fun _$69!383 () Unit!150433)

(assert (=> d!1657964 (= (choose!37721 knownP!20 lt!2113214 input!5745) _$69!383)))

(declare-fun bs!1193871 () Bool)

(assert (= bs!1193871 d!1657964))

(assert (=> bs!1193871 m!6187844))

(assert (=> d!1657532 d!1657964))

(assert (=> d!1657532 d!1657510))

(declare-fun e!3196622 () Bool)

(declare-fun b!5125751 () Bool)

(declare-fun lt!2113806 () List!59411)

(assert (=> b!5125751 (= e!3196622 (or (not (= lt!2113195 Nil!59287)) (= lt!2113806 (t!372436 lt!2113207))))))

(declare-fun d!1657966 () Bool)

(assert (=> d!1657966 e!3196622))

(declare-fun res!2182502 () Bool)

(assert (=> d!1657966 (=> (not res!2182502) (not e!3196622))))

(assert (=> d!1657966 (= res!2182502 (= (content!10549 lt!2113806) ((_ map or) (content!10549 (t!372436 lt!2113207)) (content!10549 lt!2113195))))))

(declare-fun e!3196621 () List!59411)

(assert (=> d!1657966 (= lt!2113806 e!3196621)))

(declare-fun c!881208 () Bool)

(assert (=> d!1657966 (= c!881208 ((_ is Nil!59287) (t!372436 lt!2113207)))))

(assert (=> d!1657966 (= (++!13054 (t!372436 lt!2113207) lt!2113195) lt!2113806)))

(declare-fun b!5125750 () Bool)

(declare-fun res!2182503 () Bool)

(assert (=> b!5125750 (=> (not res!2182503) (not e!3196622))))

(assert (=> b!5125750 (= res!2182503 (= (size!39547 lt!2113806) (+ (size!39547 (t!372436 lt!2113207)) (size!39547 lt!2113195))))))

(declare-fun b!5125749 () Bool)

(assert (=> b!5125749 (= e!3196621 (Cons!59287 (h!65735 (t!372436 lt!2113207)) (++!13054 (t!372436 (t!372436 lt!2113207)) lt!2113195)))))

(declare-fun b!5125748 () Bool)

(assert (=> b!5125748 (= e!3196621 lt!2113195)))

(assert (= (and d!1657966 c!881208) b!5125748))

(assert (= (and d!1657966 (not c!881208)) b!5125749))

(assert (= (and d!1657966 res!2182502) b!5125750))

(assert (= (and b!5125750 res!2182503) b!5125751))

(declare-fun m!6189446 () Bool)

(assert (=> d!1657966 m!6189446))

(assert (=> d!1657966 m!6189328))

(assert (=> d!1657966 m!6188180))

(declare-fun m!6189448 () Bool)

(assert (=> b!5125750 m!6189448))

(assert (=> b!5125750 m!6189444))

(assert (=> b!5125750 m!6188186))

(declare-fun m!6189450 () Bool)

(assert (=> b!5125749 m!6189450))

(assert (=> b!5125091 d!1657966))

(declare-fun d!1657968 () Bool)

(declare-fun c!881209 () Bool)

(assert (=> d!1657968 (= c!881209 ((_ is Cons!59287) (t!372436 lt!2113214)))))

(declare-fun e!3196623 () (InoxSet Context!7250))

(assert (=> d!1657968 (= (derivationZipper!138 (derivationStepZipper!864 baseZ!46 (h!65735 lt!2113214)) (t!372436 lt!2113214)) e!3196623)))

(declare-fun b!5125752 () Bool)

(assert (=> b!5125752 (= e!3196623 (derivationZipper!138 (derivationStepZipper!864 (derivationStepZipper!864 baseZ!46 (h!65735 lt!2113214)) (h!65735 (t!372436 lt!2113214))) (t!372436 (t!372436 lt!2113214))))))

(declare-fun b!5125753 () Bool)

(assert (=> b!5125753 (= e!3196623 (derivationStepZipper!864 baseZ!46 (h!65735 lt!2113214)))))

(assert (= (and d!1657968 c!881209) b!5125752))

(assert (= (and d!1657968 (not c!881209)) b!5125753))

(assert (=> b!5125752 m!6188522))

(declare-fun m!6189452 () Bool)

(assert (=> b!5125752 m!6189452))

(assert (=> b!5125752 m!6189452))

(declare-fun m!6189454 () Bool)

(assert (=> b!5125752 m!6189454))

(assert (=> b!5125289 d!1657968))

(declare-fun bs!1193872 () Bool)

(declare-fun d!1657970 () Bool)

(assert (= bs!1193872 (and d!1657970 d!1657544)))

(declare-fun lambda!251786 () Int)

(assert (=> bs!1193872 (= (= (h!65735 lt!2113214) lt!2113194) (= lambda!251786 lambda!251737))))

(declare-fun bs!1193873 () Bool)

(assert (= bs!1193873 (and d!1657970 d!1657926)))

(assert (=> bs!1193873 (= (= (h!65735 lt!2113214) (h!65735 testedP!265)) (= lambda!251786 lambda!251784))))

(declare-fun bs!1193874 () Bool)

(assert (= bs!1193874 (and d!1657970 d!1657930)))

(assert (=> bs!1193874 (= (= (h!65735 lt!2113214) (head!10957 knownP!20)) (= lambda!251786 lambda!251785))))

(assert (=> d!1657970 true))

(assert (=> d!1657970 (= (derivationStepZipper!864 baseZ!46 (h!65735 lt!2113214)) (flatMap!369 baseZ!46 lambda!251786))))

(declare-fun bs!1193875 () Bool)

(assert (= bs!1193875 d!1657970))

(declare-fun m!6189456 () Bool)

(assert (=> bs!1193875 m!6189456))

(assert (=> b!5125289 d!1657970))

(assert (=> b!5125201 d!1657500))

(declare-fun d!1657972 () Bool)

(assert (=> d!1657972 (= (head!10957 (getSuffix!3318 input!5745 lt!2113214)) (h!65735 (getSuffix!3318 input!5745 lt!2113214)))))

(assert (=> b!5125201 d!1657972))

(declare-fun b!5125757 () Bool)

(declare-fun e!3196625 () Bool)

(declare-fun lt!2113807 () List!59411)

(assert (=> b!5125757 (= e!3196625 (or (not (= (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287) Nil!59287)) (= lt!2113807 lt!2113214)))))

(declare-fun d!1657974 () Bool)

(assert (=> d!1657974 e!3196625))

(declare-fun res!2182504 () Bool)

(assert (=> d!1657974 (=> (not res!2182504) (not e!3196625))))

(assert (=> d!1657974 (= res!2182504 (= (content!10549 lt!2113807) ((_ map or) (content!10549 lt!2113214) (content!10549 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287)))))))

(declare-fun e!3196624 () List!59411)

(assert (=> d!1657974 (= lt!2113807 e!3196624)))

(declare-fun c!881210 () Bool)

(assert (=> d!1657974 (= c!881210 ((_ is Nil!59287) lt!2113214))))

(assert (=> d!1657974 (= (++!13054 lt!2113214 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287)) lt!2113807)))

(declare-fun b!5125756 () Bool)

(declare-fun res!2182505 () Bool)

(assert (=> b!5125756 (=> (not res!2182505) (not e!3196625))))

(assert (=> b!5125756 (= res!2182505 (= (size!39547 lt!2113807) (+ (size!39547 lt!2113214) (size!39547 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287)))))))

(declare-fun b!5125755 () Bool)

(assert (=> b!5125755 (= e!3196624 (Cons!59287 (h!65735 lt!2113214) (++!13054 (t!372436 lt!2113214) (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287))))))

(declare-fun b!5125754 () Bool)

(assert (=> b!5125754 (= e!3196624 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287))))

(assert (= (and d!1657974 c!881210) b!5125754))

(assert (= (and d!1657974 (not c!881210)) b!5125755))

(assert (= (and d!1657974 res!2182504) b!5125756))

(assert (= (and b!5125756 res!2182505) b!5125757))

(declare-fun m!6189458 () Bool)

(assert (=> d!1657974 m!6189458))

(assert (=> d!1657974 m!6188084))

(declare-fun m!6189460 () Bool)

(assert (=> d!1657974 m!6189460))

(declare-fun m!6189462 () Bool)

(assert (=> b!5125756 m!6189462))

(assert (=> b!5125756 m!6187824))

(declare-fun m!6189464 () Bool)

(assert (=> b!5125756 m!6189464))

(declare-fun m!6189466 () Bool)

(assert (=> b!5125755 m!6189466))

(assert (=> b!5125201 d!1657974))

(declare-fun d!1657976 () Bool)

(assert (=> d!1657976 (= (++!13054 (++!13054 lt!2113214 (Cons!59287 lt!2113503 Nil!59287)) lt!2113497) input!5745)))

(declare-fun lt!2113810 () Unit!150433)

(declare-fun choose!37740 (List!59411 C!28748 List!59411 List!59411) Unit!150433)

(assert (=> d!1657976 (= lt!2113810 (choose!37740 lt!2113214 lt!2113503 lt!2113497 input!5745))))

(assert (=> d!1657976 (= (++!13054 lt!2113214 (Cons!59287 lt!2113503 lt!2113497)) input!5745)))

(assert (=> d!1657976 (= (lemmaMoveElementToOtherListKeepsConcatEq!1545 lt!2113214 lt!2113503 lt!2113497 input!5745) lt!2113810)))

(declare-fun bs!1193876 () Bool)

(assert (= bs!1193876 d!1657976))

(assert (=> bs!1193876 m!6188334))

(assert (=> bs!1193876 m!6188334))

(assert (=> bs!1193876 m!6188336))

(declare-fun m!6189468 () Bool)

(assert (=> bs!1193876 m!6189468))

(declare-fun m!6189470 () Bool)

(assert (=> bs!1193876 m!6189470))

(assert (=> b!5125201 d!1657976))

(declare-fun d!1657978 () Bool)

(assert (=> d!1657978 (isPrefix!5646 (++!13054 lt!2113214 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287)) input!5745)))

(declare-fun lt!2113811 () Unit!150433)

(assert (=> d!1657978 (= lt!2113811 (choose!37726 lt!2113214 input!5745))))

(assert (=> d!1657978 (isPrefix!5646 lt!2113214 input!5745)))

(assert (=> d!1657978 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1020 lt!2113214 input!5745) lt!2113811)))

(declare-fun bs!1193877 () Bool)

(assert (= bs!1193877 d!1657978))

(assert (=> bs!1193877 m!6187840))

(assert (=> bs!1193877 m!6187820))

(assert (=> bs!1193877 m!6188330))

(declare-fun m!6189472 () Bool)

(assert (=> bs!1193877 m!6189472))

(assert (=> bs!1193877 m!6187820))

(assert (=> bs!1193877 m!6188338))

(assert (=> bs!1193877 m!6188338))

(assert (=> bs!1193877 m!6188340))

(assert (=> b!5125201 d!1657978))

(declare-fun d!1657980 () Bool)

(assert (=> d!1657980 (<= (size!39547 lt!2113214) (size!39547 input!5745))))

(declare-fun lt!2113814 () Unit!150433)

(declare-fun choose!37741 (List!59411 List!59411) Unit!150433)

(assert (=> d!1657980 (= lt!2113814 (choose!37741 lt!2113214 input!5745))))

(assert (=> d!1657980 (isPrefix!5646 lt!2113214 input!5745)))

(assert (=> d!1657980 (= (lemmaIsPrefixThenSmallerEqSize!860 lt!2113214 input!5745) lt!2113814)))

(declare-fun bs!1193878 () Bool)

(assert (= bs!1193878 d!1657980))

(assert (=> bs!1193878 m!6187824))

(assert (=> bs!1193878 m!6187862))

(declare-fun m!6189474 () Bool)

(assert (=> bs!1193878 m!6189474))

(assert (=> bs!1193878 m!6187840))

(assert (=> b!5125201 d!1657980))

(assert (=> b!5125201 d!1657492))

(declare-fun lt!2113815 () List!59411)

(declare-fun b!5125761 () Bool)

(declare-fun e!3196627 () Bool)

(assert (=> b!5125761 (= e!3196627 (or (not (= lt!2113497 Nil!59287)) (= lt!2113815 (++!13054 lt!2113214 (Cons!59287 lt!2113503 Nil!59287)))))))

(declare-fun d!1657982 () Bool)

(assert (=> d!1657982 e!3196627))

(declare-fun res!2182506 () Bool)

(assert (=> d!1657982 (=> (not res!2182506) (not e!3196627))))

(assert (=> d!1657982 (= res!2182506 (= (content!10549 lt!2113815) ((_ map or) (content!10549 (++!13054 lt!2113214 (Cons!59287 lt!2113503 Nil!59287))) (content!10549 lt!2113497))))))

(declare-fun e!3196626 () List!59411)

(assert (=> d!1657982 (= lt!2113815 e!3196626)))

(declare-fun c!881211 () Bool)

(assert (=> d!1657982 (= c!881211 ((_ is Nil!59287) (++!13054 lt!2113214 (Cons!59287 lt!2113503 Nil!59287))))))

(assert (=> d!1657982 (= (++!13054 (++!13054 lt!2113214 (Cons!59287 lt!2113503 Nil!59287)) lt!2113497) lt!2113815)))

(declare-fun b!5125760 () Bool)

(declare-fun res!2182507 () Bool)

(assert (=> b!5125760 (=> (not res!2182507) (not e!3196627))))

(assert (=> b!5125760 (= res!2182507 (= (size!39547 lt!2113815) (+ (size!39547 (++!13054 lt!2113214 (Cons!59287 lt!2113503 Nil!59287))) (size!39547 lt!2113497))))))

(declare-fun b!5125759 () Bool)

(assert (=> b!5125759 (= e!3196626 (Cons!59287 (h!65735 (++!13054 lt!2113214 (Cons!59287 lt!2113503 Nil!59287))) (++!13054 (t!372436 (++!13054 lt!2113214 (Cons!59287 lt!2113503 Nil!59287))) lt!2113497)))))

(declare-fun b!5125758 () Bool)

(assert (=> b!5125758 (= e!3196626 lt!2113497)))

(assert (= (and d!1657982 c!881211) b!5125758))

(assert (= (and d!1657982 (not c!881211)) b!5125759))

(assert (= (and d!1657982 res!2182506) b!5125760))

(assert (= (and b!5125760 res!2182507) b!5125761))

(declare-fun m!6189476 () Bool)

(assert (=> d!1657982 m!6189476))

(assert (=> d!1657982 m!6188334))

(declare-fun m!6189478 () Bool)

(assert (=> d!1657982 m!6189478))

(declare-fun m!6189480 () Bool)

(assert (=> d!1657982 m!6189480))

(declare-fun m!6189482 () Bool)

(assert (=> b!5125760 m!6189482))

(assert (=> b!5125760 m!6188334))

(declare-fun m!6189484 () Bool)

(assert (=> b!5125760 m!6189484))

(declare-fun m!6189486 () Bool)

(assert (=> b!5125760 m!6189486))

(declare-fun m!6189488 () Bool)

(assert (=> b!5125759 m!6189488))

(assert (=> b!5125201 d!1657982))

(declare-fun b!5125765 () Bool)

(declare-fun lt!2113816 () List!59411)

(declare-fun e!3196629 () Bool)

(assert (=> b!5125765 (= e!3196629 (or (not (= (Cons!59287 lt!2113503 Nil!59287) Nil!59287)) (= lt!2113816 lt!2113214)))))

(declare-fun d!1657984 () Bool)

(assert (=> d!1657984 e!3196629))

(declare-fun res!2182508 () Bool)

(assert (=> d!1657984 (=> (not res!2182508) (not e!3196629))))

(assert (=> d!1657984 (= res!2182508 (= (content!10549 lt!2113816) ((_ map or) (content!10549 lt!2113214) (content!10549 (Cons!59287 lt!2113503 Nil!59287)))))))

(declare-fun e!3196628 () List!59411)

(assert (=> d!1657984 (= lt!2113816 e!3196628)))

(declare-fun c!881212 () Bool)

(assert (=> d!1657984 (= c!881212 ((_ is Nil!59287) lt!2113214))))

(assert (=> d!1657984 (= (++!13054 lt!2113214 (Cons!59287 lt!2113503 Nil!59287)) lt!2113816)))

(declare-fun b!5125764 () Bool)

(declare-fun res!2182509 () Bool)

(assert (=> b!5125764 (=> (not res!2182509) (not e!3196629))))

(assert (=> b!5125764 (= res!2182509 (= (size!39547 lt!2113816) (+ (size!39547 lt!2113214) (size!39547 (Cons!59287 lt!2113503 Nil!59287)))))))

(declare-fun b!5125763 () Bool)

(assert (=> b!5125763 (= e!3196628 (Cons!59287 (h!65735 lt!2113214) (++!13054 (t!372436 lt!2113214) (Cons!59287 lt!2113503 Nil!59287))))))

(declare-fun b!5125762 () Bool)

(assert (=> b!5125762 (= e!3196628 (Cons!59287 lt!2113503 Nil!59287))))

(assert (= (and d!1657984 c!881212) b!5125762))

(assert (= (and d!1657984 (not c!881212)) b!5125763))

(assert (= (and d!1657984 res!2182508) b!5125764))

(assert (= (and b!5125764 res!2182509) b!5125765))

(declare-fun m!6189490 () Bool)

(assert (=> d!1657984 m!6189490))

(assert (=> d!1657984 m!6188084))

(declare-fun m!6189492 () Bool)

(assert (=> d!1657984 m!6189492))

(declare-fun m!6189494 () Bool)

(assert (=> b!5125764 m!6189494))

(assert (=> b!5125764 m!6187824))

(declare-fun m!6189496 () Bool)

(assert (=> b!5125764 m!6189496))

(declare-fun m!6189498 () Bool)

(assert (=> b!5125763 m!6189498))

(assert (=> b!5125201 d!1657984))

(declare-fun b!5125767 () Bool)

(declare-fun res!2182512 () Bool)

(declare-fun e!3196632 () Bool)

(assert (=> b!5125767 (=> (not res!2182512) (not e!3196632))))

(assert (=> b!5125767 (= res!2182512 (= (head!10957 (++!13054 lt!2113214 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287))) (head!10957 input!5745)))))

(declare-fun b!5125766 () Bool)

(declare-fun e!3196630 () Bool)

(assert (=> b!5125766 (= e!3196630 e!3196632)))

(declare-fun res!2182510 () Bool)

(assert (=> b!5125766 (=> (not res!2182510) (not e!3196632))))

(assert (=> b!5125766 (= res!2182510 (not ((_ is Nil!59287) input!5745)))))

(declare-fun b!5125769 () Bool)

(declare-fun e!3196631 () Bool)

(assert (=> b!5125769 (= e!3196631 (>= (size!39547 input!5745) (size!39547 (++!13054 lt!2113214 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287)))))))

(declare-fun b!5125768 () Bool)

(assert (=> b!5125768 (= e!3196632 (isPrefix!5646 (tail!10092 (++!13054 lt!2113214 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287))) (tail!10092 input!5745)))))

(declare-fun d!1657986 () Bool)

(assert (=> d!1657986 e!3196631))

(declare-fun res!2182511 () Bool)

(assert (=> d!1657986 (=> res!2182511 e!3196631)))

(declare-fun lt!2113817 () Bool)

(assert (=> d!1657986 (= res!2182511 (not lt!2113817))))

(assert (=> d!1657986 (= lt!2113817 e!3196630)))

(declare-fun res!2182513 () Bool)

(assert (=> d!1657986 (=> res!2182513 e!3196630)))

(assert (=> d!1657986 (= res!2182513 ((_ is Nil!59287) (++!13054 lt!2113214 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287))))))

(assert (=> d!1657986 (= (isPrefix!5646 (++!13054 lt!2113214 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287)) input!5745) lt!2113817)))

(assert (= (and d!1657986 (not res!2182513)) b!5125766))

(assert (= (and b!5125766 res!2182510) b!5125767))

(assert (= (and b!5125767 res!2182512) b!5125768))

(assert (= (and d!1657986 (not res!2182511)) b!5125769))

(assert (=> b!5125767 m!6188338))

(declare-fun m!6189500 () Bool)

(assert (=> b!5125767 m!6189500))

(assert (=> b!5125767 m!6188412))

(assert (=> b!5125769 m!6187862))

(assert (=> b!5125769 m!6188338))

(declare-fun m!6189502 () Bool)

(assert (=> b!5125769 m!6189502))

(assert (=> b!5125768 m!6188338))

(declare-fun m!6189504 () Bool)

(assert (=> b!5125768 m!6189504))

(assert (=> b!5125768 m!6188402))

(assert (=> b!5125768 m!6189504))

(assert (=> b!5125768 m!6188402))

(declare-fun m!6189506 () Bool)

(assert (=> b!5125768 m!6189506))

(assert (=> b!5125201 d!1657986))

(assert (=> b!5125201 d!1657558))

(declare-fun d!1657988 () Bool)

(assert (=> d!1657988 (= (tail!10092 (getSuffix!3318 input!5745 lt!2113214)) (t!372436 (getSuffix!3318 input!5745 lt!2113214)))))

(assert (=> b!5125201 d!1657988))

(declare-fun d!1657990 () Bool)

(declare-fun lt!2113818 () List!59411)

(assert (=> d!1657990 (= (++!13054 (t!372436 lt!2113214) lt!2113818) (tail!10092 knownP!20))))

(declare-fun e!3196633 () List!59411)

(assert (=> d!1657990 (= lt!2113818 e!3196633)))

(declare-fun c!881213 () Bool)

(assert (=> d!1657990 (= c!881213 ((_ is Cons!59287) (t!372436 lt!2113214)))))

(assert (=> d!1657990 (>= (size!39547 (tail!10092 knownP!20)) (size!39547 (t!372436 lt!2113214)))))

(assert (=> d!1657990 (= (getSuffix!3318 (tail!10092 knownP!20) (t!372436 lt!2113214)) lt!2113818)))

(declare-fun b!5125770 () Bool)

(assert (=> b!5125770 (= e!3196633 (getSuffix!3318 (tail!10092 (tail!10092 knownP!20)) (t!372436 (t!372436 lt!2113214))))))

(declare-fun b!5125771 () Bool)

(assert (=> b!5125771 (= e!3196633 (tail!10092 knownP!20))))

(assert (= (and d!1657990 c!881213) b!5125770))

(assert (= (and d!1657990 (not c!881213)) b!5125771))

(declare-fun m!6189508 () Bool)

(assert (=> d!1657990 m!6189508))

(assert (=> d!1657990 m!6187962))

(declare-fun m!6189510 () Bool)

(assert (=> d!1657990 m!6189510))

(assert (=> d!1657990 m!6188352))

(assert (=> b!5125770 m!6187962))

(assert (=> b!5125770 m!6189396))

(assert (=> b!5125770 m!6189396))

(declare-fun m!6189512 () Bool)

(assert (=> b!5125770 m!6189512))

(assert (=> b!5125275 d!1657990))

(assert (=> b!5125275 d!1657934))

(declare-fun d!1657992 () Bool)

(declare-fun lt!2113819 () Int)

(assert (=> d!1657992 (>= lt!2113819 0)))

(declare-fun e!3196634 () Int)

(assert (=> d!1657992 (= lt!2113819 e!3196634)))

(declare-fun c!881214 () Bool)

(assert (=> d!1657992 (= c!881214 ((_ is Nil!59287) lt!2113561))))

(assert (=> d!1657992 (= (size!39547 lt!2113561) lt!2113819)))

(declare-fun b!5125772 () Bool)

(assert (=> b!5125772 (= e!3196634 0)))

(declare-fun b!5125773 () Bool)

(assert (=> b!5125773 (= e!3196634 (+ 1 (size!39547 (t!372436 lt!2113561))))))

(assert (= (and d!1657992 c!881214) b!5125772))

(assert (= (and d!1657992 (not c!881214)) b!5125773))

(declare-fun m!6189514 () Bool)

(assert (=> b!5125773 m!6189514))

(assert (=> b!5125245 d!1657992))

(declare-fun d!1657994 () Bool)

(declare-fun lt!2113820 () Int)

(assert (=> d!1657994 (>= lt!2113820 0)))

(declare-fun e!3196635 () Int)

(assert (=> d!1657994 (= lt!2113820 e!3196635)))

(declare-fun c!881215 () Bool)

(assert (=> d!1657994 (= c!881215 ((_ is Nil!59287) lt!2113189))))

(assert (=> d!1657994 (= (size!39547 lt!2113189) lt!2113820)))

(declare-fun b!5125774 () Bool)

(assert (=> b!5125774 (= e!3196635 0)))

(declare-fun b!5125775 () Bool)

(assert (=> b!5125775 (= e!3196635 (+ 1 (size!39547 (t!372436 lt!2113189))))))

(assert (= (and d!1657994 c!881215) b!5125774))

(assert (= (and d!1657994 (not c!881215)) b!5125775))

(assert (=> b!5125775 m!6189378))

(assert (=> b!5125245 d!1657994))

(declare-fun d!1657996 () Bool)

(declare-fun lt!2113821 () Int)

(assert (=> d!1657996 (>= lt!2113821 0)))

(declare-fun e!3196636 () Int)

(assert (=> d!1657996 (= lt!2113821 e!3196636)))

(declare-fun c!881216 () Bool)

(assert (=> d!1657996 (= c!881216 ((_ is Nil!59287) lt!2113197))))

(assert (=> d!1657996 (= (size!39547 lt!2113197) lt!2113821)))

(declare-fun b!5125776 () Bool)

(assert (=> b!5125776 (= e!3196636 0)))

(declare-fun b!5125777 () Bool)

(assert (=> b!5125777 (= e!3196636 (+ 1 (size!39547 (t!372436 lt!2113197))))))

(assert (= (and d!1657996 c!881216) b!5125776))

(assert (= (and d!1657996 (not c!881216)) b!5125777))

(declare-fun m!6189516 () Bool)

(assert (=> b!5125777 m!6189516))

(assert (=> b!5125245 d!1657996))

(declare-fun d!1657998 () Bool)

(declare-fun c!881217 () Bool)

(assert (=> d!1657998 (= c!881217 ((_ is Nil!59287) lt!2113395))))

(declare-fun e!3196637 () (InoxSet C!28748))

(assert (=> d!1657998 (= (content!10549 lt!2113395) e!3196637)))

(declare-fun b!5125778 () Bool)

(assert (=> b!5125778 (= e!3196637 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125779 () Bool)

(assert (=> b!5125779 (= e!3196637 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113395) true) (content!10549 (t!372436 lt!2113395))))))

(assert (= (and d!1657998 c!881217) b!5125778))

(assert (= (and d!1657998 (not c!881217)) b!5125779))

(declare-fun m!6189518 () Bool)

(assert (=> b!5125779 m!6189518))

(declare-fun m!6189520 () Bool)

(assert (=> b!5125779 m!6189520))

(assert (=> d!1657450 d!1657998))

(assert (=> d!1657450 d!1657900))

(declare-fun d!1658000 () Bool)

(declare-fun c!881218 () Bool)

(assert (=> d!1658000 (= c!881218 ((_ is Nil!59287) lt!2113195))))

(declare-fun e!3196638 () (InoxSet C!28748))

(assert (=> d!1658000 (= (content!10549 lt!2113195) e!3196638)))

(declare-fun b!5125780 () Bool)

(assert (=> b!5125780 (= e!3196638 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125781 () Bool)

(assert (=> b!5125781 (= e!3196638 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113195) true) (content!10549 (t!372436 lt!2113195))))))

(assert (= (and d!1658000 c!881218) b!5125780))

(assert (= (and d!1658000 (not c!881218)) b!5125781))

(declare-fun m!6189522 () Bool)

(assert (=> b!5125781 m!6189522))

(declare-fun m!6189524 () Bool)

(assert (=> b!5125781 m!6189524))

(assert (=> d!1657450 d!1658000))

(declare-fun b!5125783 () Bool)

(declare-fun res!2182516 () Bool)

(declare-fun e!3196641 () Bool)

(assert (=> b!5125783 (=> (not res!2182516) (not e!3196641))))

(assert (=> b!5125783 (= res!2182516 (= (head!10957 (tail!10092 lt!2113214)) (head!10957 (tail!10092 input!5745))))))

(declare-fun b!5125782 () Bool)

(declare-fun e!3196639 () Bool)

(assert (=> b!5125782 (= e!3196639 e!3196641)))

(declare-fun res!2182514 () Bool)

(assert (=> b!5125782 (=> (not res!2182514) (not e!3196641))))

(assert (=> b!5125782 (= res!2182514 (not ((_ is Nil!59287) (tail!10092 input!5745))))))

(declare-fun b!5125785 () Bool)

(declare-fun e!3196640 () Bool)

(assert (=> b!5125785 (= e!3196640 (>= (size!39547 (tail!10092 input!5745)) (size!39547 (tail!10092 lt!2113214))))))

(declare-fun b!5125784 () Bool)

(assert (=> b!5125784 (= e!3196641 (isPrefix!5646 (tail!10092 (tail!10092 lt!2113214)) (tail!10092 (tail!10092 input!5745))))))

(declare-fun d!1658002 () Bool)

(assert (=> d!1658002 e!3196640))

(declare-fun res!2182515 () Bool)

(assert (=> d!1658002 (=> res!2182515 e!3196640)))

(declare-fun lt!2113822 () Bool)

(assert (=> d!1658002 (= res!2182515 (not lt!2113822))))

(assert (=> d!1658002 (= lt!2113822 e!3196639)))

(declare-fun res!2182517 () Bool)

(assert (=> d!1658002 (=> res!2182517 e!3196639)))

(assert (=> d!1658002 (= res!2182517 ((_ is Nil!59287) (tail!10092 lt!2113214)))))

(assert (=> d!1658002 (= (isPrefix!5646 (tail!10092 lt!2113214) (tail!10092 input!5745)) lt!2113822)))

(assert (= (and d!1658002 (not res!2182517)) b!5125782))

(assert (= (and b!5125782 res!2182514) b!5125783))

(assert (= (and b!5125783 res!2182516) b!5125784))

(assert (= (and d!1658002 (not res!2182515)) b!5125785))

(assert (=> b!5125783 m!6188484))

(declare-fun m!6189526 () Bool)

(assert (=> b!5125783 m!6189526))

(assert (=> b!5125783 m!6188402))

(declare-fun m!6189528 () Bool)

(assert (=> b!5125783 m!6189528))

(assert (=> b!5125785 m!6188402))

(declare-fun m!6189530 () Bool)

(assert (=> b!5125785 m!6189530))

(assert (=> b!5125785 m!6188484))

(declare-fun m!6189532 () Bool)

(assert (=> b!5125785 m!6189532))

(assert (=> b!5125784 m!6188484))

(declare-fun m!6189534 () Bool)

(assert (=> b!5125784 m!6189534))

(assert (=> b!5125784 m!6188402))

(declare-fun m!6189536 () Bool)

(assert (=> b!5125784 m!6189536))

(assert (=> b!5125784 m!6189534))

(assert (=> b!5125784 m!6189536))

(declare-fun m!6189538 () Bool)

(assert (=> b!5125784 m!6189538))

(assert (=> b!5125269 d!1658002))

(declare-fun d!1658004 () Bool)

(assert (=> d!1658004 (= (tail!10092 lt!2113214) (t!372436 lt!2113214))))

(assert (=> b!5125269 d!1658004))

(declare-fun d!1658006 () Bool)

(assert (=> d!1658006 (= (tail!10092 input!5745) (t!372436 input!5745))))

(assert (=> b!5125269 d!1658006))

(declare-fun bs!1193879 () Bool)

(declare-fun d!1658008 () Bool)

(assert (= bs!1193879 (and d!1658008 d!1657544)))

(declare-fun lambda!251787 () Int)

(assert (=> bs!1193879 (= (= call!356768 lt!2113194) (= lambda!251787 lambda!251737))))

(declare-fun bs!1193880 () Bool)

(assert (= bs!1193880 (and d!1658008 d!1657926)))

(assert (=> bs!1193880 (= (= call!356768 (h!65735 testedP!265)) (= lambda!251787 lambda!251784))))

(declare-fun bs!1193881 () Bool)

(assert (= bs!1193881 (and d!1658008 d!1657930)))

(assert (=> bs!1193881 (= (= call!356768 (head!10957 knownP!20)) (= lambda!251787 lambda!251785))))

(declare-fun bs!1193882 () Bool)

(assert (= bs!1193882 (and d!1658008 d!1657970)))

(assert (=> bs!1193882 (= (= call!356768 (h!65735 lt!2113214)) (= lambda!251787 lambda!251786))))

(assert (=> d!1658008 true))

(assert (=> d!1658008 (= (derivationStepZipper!864 lt!2113196 call!356768) (flatMap!369 lt!2113196 lambda!251787))))

(declare-fun bs!1193883 () Bool)

(assert (= bs!1193883 d!1658008))

(declare-fun m!6189540 () Bool)

(assert (=> bs!1193883 m!6189540))

(assert (=> bm!356758 d!1658008))

(assert (=> b!5125274 d!1657508))

(assert (=> b!5125274 d!1657492))

(declare-fun b!5125789 () Bool)

(declare-fun lt!2113823 () List!59411)

(declare-fun e!3196643 () Bool)

(assert (=> b!5125789 (= e!3196643 (or (not (= lt!2113386 Nil!59287)) (= lt!2113823 testedP!265)))))

(declare-fun d!1658010 () Bool)

(assert (=> d!1658010 e!3196643))

(declare-fun res!2182518 () Bool)

(assert (=> d!1658010 (=> (not res!2182518) (not e!3196643))))

(assert (=> d!1658010 (= res!2182518 (= (content!10549 lt!2113823) ((_ map or) (content!10549 testedP!265) (content!10549 lt!2113386))))))

(declare-fun e!3196642 () List!59411)

(assert (=> d!1658010 (= lt!2113823 e!3196642)))

(declare-fun c!881219 () Bool)

(assert (=> d!1658010 (= c!881219 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1658010 (= (++!13054 testedP!265 lt!2113386) lt!2113823)))

(declare-fun b!5125788 () Bool)

(declare-fun res!2182519 () Bool)

(assert (=> b!5125788 (=> (not res!2182519) (not e!3196643))))

(assert (=> b!5125788 (= res!2182519 (= (size!39547 lt!2113823) (+ (size!39547 testedP!265) (size!39547 lt!2113386))))))

(declare-fun b!5125787 () Bool)

(assert (=> b!5125787 (= e!3196642 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) lt!2113386)))))

(declare-fun b!5125786 () Bool)

(assert (=> b!5125786 (= e!3196642 lt!2113386)))

(assert (= (and d!1658010 c!881219) b!5125786))

(assert (= (and d!1658010 (not c!881219)) b!5125787))

(assert (= (and d!1658010 res!2182518) b!5125788))

(assert (= (and b!5125788 res!2182519) b!5125789))

(declare-fun m!6189542 () Bool)

(assert (=> d!1658010 m!6189542))

(assert (=> d!1658010 m!6188166))

(declare-fun m!6189544 () Bool)

(assert (=> d!1658010 m!6189544))

(declare-fun m!6189546 () Bool)

(assert (=> b!5125788 m!6189546))

(assert (=> b!5125788 m!6187864))

(declare-fun m!6189548 () Bool)

(assert (=> b!5125788 m!6189548))

(declare-fun m!6189550 () Bool)

(assert (=> b!5125787 m!6189550))

(assert (=> d!1657434 d!1658010))

(assert (=> d!1657434 d!1657508))

(assert (=> d!1657434 d!1657506))

(assert (=> d!1657442 d!1657436))

(declare-fun d!1658012 () Bool)

(assert (=> d!1658012 (isPrefix!5646 testedP!265 knownP!20)))

(assert (=> d!1658012 true))

(declare-fun _$69!384 () Unit!150433)

(assert (=> d!1658012 (= (choose!37721 knownP!20 testedP!265 input!5745) _$69!384)))

(declare-fun bs!1193884 () Bool)

(assert (= bs!1193884 d!1658012))

(assert (=> bs!1193884 m!6187876))

(assert (=> d!1657442 d!1658012))

(assert (=> d!1657442 d!1657510))

(declare-fun d!1658014 () Bool)

(declare-fun lt!2113824 () Int)

(assert (=> d!1658014 (>= lt!2113824 0)))

(declare-fun e!3196644 () Int)

(assert (=> d!1658014 (= lt!2113824 e!3196644)))

(declare-fun c!881220 () Bool)

(assert (=> d!1658014 (= c!881220 ((_ is Nil!59287) (t!372436 testedP!265)))))

(assert (=> d!1658014 (= (size!39547 (t!372436 testedP!265)) lt!2113824)))

(declare-fun b!5125790 () Bool)

(assert (=> b!5125790 (= e!3196644 0)))

(declare-fun b!5125791 () Bool)

(assert (=> b!5125791 (= e!3196644 (+ 1 (size!39547 (t!372436 (t!372436 testedP!265)))))))

(assert (= (and d!1658014 c!881220) b!5125790))

(assert (= (and d!1658014 (not c!881220)) b!5125791))

(declare-fun m!6189552 () Bool)

(assert (=> b!5125791 m!6189552))

(assert (=> b!5125228 d!1658014))

(declare-fun d!1658016 () Bool)

(declare-fun c!881221 () Bool)

(assert (=> d!1658016 (= c!881221 ((_ is Nil!59287) lt!2113571))))

(declare-fun e!3196645 () (InoxSet C!28748))

(assert (=> d!1658016 (= (content!10549 lt!2113571) e!3196645)))

(declare-fun b!5125792 () Bool)

(assert (=> b!5125792 (= e!3196645 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125793 () Bool)

(assert (=> b!5125793 (= e!3196645 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113571) true) (content!10549 (t!372436 lt!2113571))))))

(assert (= (and d!1658016 c!881221) b!5125792))

(assert (= (and d!1658016 (not c!881221)) b!5125793))

(declare-fun m!6189554 () Bool)

(assert (=> b!5125793 m!6189554))

(declare-fun m!6189556 () Bool)

(assert (=> b!5125793 m!6189556))

(assert (=> d!1657540 d!1658016))

(declare-fun d!1658018 () Bool)

(declare-fun c!881222 () Bool)

(assert (=> d!1658018 (= c!881222 ((_ is Nil!59287) knownP!20))))

(declare-fun e!3196646 () (InoxSet C!28748))

(assert (=> d!1658018 (= (content!10549 knownP!20) e!3196646)))

(declare-fun b!5125794 () Bool)

(assert (=> b!5125794 (= e!3196646 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125795 () Bool)

(assert (=> b!5125795 (= e!3196646 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 knownP!20) true) (content!10549 (t!372436 knownP!20))))))

(assert (= (and d!1658018 c!881222) b!5125794))

(assert (= (and d!1658018 (not c!881222)) b!5125795))

(declare-fun m!6189558 () Bool)

(assert (=> b!5125795 m!6189558))

(declare-fun m!6189560 () Bool)

(assert (=> b!5125795 m!6189560))

(assert (=> d!1657540 d!1658018))

(assert (=> d!1657540 d!1658000))

(declare-fun d!1658020 () Bool)

(declare-fun c!881223 () Bool)

(assert (=> d!1658020 (= c!881223 (isEmpty!31956 (tail!10092 lt!2113207)))))

(declare-fun e!3196647 () Bool)

(assert (=> d!1658020 (= (matchZipper!909 (derivationStepZipper!864 z!4463 (head!10957 lt!2113207)) (tail!10092 lt!2113207)) e!3196647)))

(declare-fun b!5125796 () Bool)

(assert (=> b!5125796 (= e!3196647 (nullableZipper!1038 (derivationStepZipper!864 z!4463 (head!10957 lt!2113207))))))

(declare-fun b!5125797 () Bool)

(assert (=> b!5125797 (= e!3196647 (matchZipper!909 (derivationStepZipper!864 (derivationStepZipper!864 z!4463 (head!10957 lt!2113207)) (head!10957 (tail!10092 lt!2113207))) (tail!10092 (tail!10092 lt!2113207))))))

(assert (= (and d!1658020 c!881223) b!5125796))

(assert (= (and d!1658020 (not c!881223)) b!5125797))

(assert (=> d!1658020 m!6187830))

(declare-fun m!6189562 () Bool)

(assert (=> d!1658020 m!6189562))

(assert (=> b!5125796 m!6188098))

(declare-fun m!6189564 () Bool)

(assert (=> b!5125796 m!6189564))

(assert (=> b!5125797 m!6187830))

(declare-fun m!6189566 () Bool)

(assert (=> b!5125797 m!6189566))

(assert (=> b!5125797 m!6188098))

(assert (=> b!5125797 m!6189566))

(declare-fun m!6189568 () Bool)

(assert (=> b!5125797 m!6189568))

(assert (=> b!5125797 m!6187830))

(declare-fun m!6189570 () Bool)

(assert (=> b!5125797 m!6189570))

(assert (=> b!5125797 m!6189568))

(assert (=> b!5125797 m!6189570))

(declare-fun m!6189572 () Bool)

(assert (=> b!5125797 m!6189572))

(assert (=> b!5125051 d!1658020))

(declare-fun bs!1193885 () Bool)

(declare-fun d!1658022 () Bool)

(assert (= bs!1193885 (and d!1658022 d!1657926)))

(declare-fun lambda!251788 () Int)

(assert (=> bs!1193885 (= (= (head!10957 lt!2113207) (h!65735 testedP!265)) (= lambda!251788 lambda!251784))))

(declare-fun bs!1193886 () Bool)

(assert (= bs!1193886 (and d!1658022 d!1658008)))

(assert (=> bs!1193886 (= (= (head!10957 lt!2113207) call!356768) (= lambda!251788 lambda!251787))))

(declare-fun bs!1193887 () Bool)

(assert (= bs!1193887 (and d!1658022 d!1657970)))

(assert (=> bs!1193887 (= (= (head!10957 lt!2113207) (h!65735 lt!2113214)) (= lambda!251788 lambda!251786))))

(declare-fun bs!1193888 () Bool)

(assert (= bs!1193888 (and d!1658022 d!1657544)))

(assert (=> bs!1193888 (= (= (head!10957 lt!2113207) lt!2113194) (= lambda!251788 lambda!251737))))

(declare-fun bs!1193889 () Bool)

(assert (= bs!1193889 (and d!1658022 d!1657930)))

(assert (=> bs!1193889 (= (= (head!10957 lt!2113207) (head!10957 knownP!20)) (= lambda!251788 lambda!251785))))

(assert (=> d!1658022 true))

(assert (=> d!1658022 (= (derivationStepZipper!864 z!4463 (head!10957 lt!2113207)) (flatMap!369 z!4463 lambda!251788))))

(declare-fun bs!1193890 () Bool)

(assert (= bs!1193890 d!1658022))

(declare-fun m!6189574 () Bool)

(assert (=> bs!1193890 m!6189574))

(assert (=> b!5125051 d!1658022))

(assert (=> b!5125051 d!1657502))

(assert (=> b!5125051 d!1657446))

(declare-fun b!5125801 () Bool)

(declare-fun e!3196649 () Bool)

(declare-fun lt!2113825 () List!59411)

(assert (=> b!5125801 (= e!3196649 (or (not (= lt!2113551 Nil!59287)) (= lt!2113825 lt!2113214)))))

(declare-fun d!1658024 () Bool)

(assert (=> d!1658024 e!3196649))

(declare-fun res!2182520 () Bool)

(assert (=> d!1658024 (=> (not res!2182520) (not e!3196649))))

(assert (=> d!1658024 (= res!2182520 (= (content!10549 lt!2113825) ((_ map or) (content!10549 lt!2113214) (content!10549 lt!2113551))))))

(declare-fun e!3196648 () List!59411)

(assert (=> d!1658024 (= lt!2113825 e!3196648)))

(declare-fun c!881224 () Bool)

(assert (=> d!1658024 (= c!881224 ((_ is Nil!59287) lt!2113214))))

(assert (=> d!1658024 (= (++!13054 lt!2113214 lt!2113551) lt!2113825)))

(declare-fun b!5125800 () Bool)

(declare-fun res!2182521 () Bool)

(assert (=> b!5125800 (=> (not res!2182521) (not e!3196649))))

(assert (=> b!5125800 (= res!2182521 (= (size!39547 lt!2113825) (+ (size!39547 lt!2113214) (size!39547 lt!2113551))))))

(declare-fun b!5125799 () Bool)

(assert (=> b!5125799 (= e!3196648 (Cons!59287 (h!65735 lt!2113214) (++!13054 (t!372436 lt!2113214) lt!2113551)))))

(declare-fun b!5125798 () Bool)

(assert (=> b!5125798 (= e!3196648 lt!2113551)))

(assert (= (and d!1658024 c!881224) b!5125798))

(assert (= (and d!1658024 (not c!881224)) b!5125799))

(assert (= (and d!1658024 res!2182520) b!5125800))

(assert (= (and b!5125800 res!2182521) b!5125801))

(declare-fun m!6189576 () Bool)

(assert (=> d!1658024 m!6189576))

(assert (=> d!1658024 m!6188084))

(declare-fun m!6189578 () Bool)

(assert (=> d!1658024 m!6189578))

(declare-fun m!6189580 () Bool)

(assert (=> b!5125800 m!6189580))

(assert (=> b!5125800 m!6187824))

(declare-fun m!6189582 () Bool)

(assert (=> b!5125800 m!6189582))

(declare-fun m!6189584 () Bool)

(assert (=> b!5125799 m!6189584))

(assert (=> d!1657500 d!1658024))

(assert (=> d!1657500 d!1657558))

(assert (=> d!1657500 d!1657492))

(declare-fun d!1658026 () Bool)

(assert (=> d!1658026 (= (isEmpty!31956 (_1!35123 lt!2113499)) ((_ is Nil!59287) (_1!35123 lt!2113499)))))

(assert (=> b!5125193 d!1658026))

(assert (=> bm!356768 d!1657956))

(declare-fun d!1658028 () Bool)

(declare-fun c!881225 () Bool)

(assert (=> d!1658028 (= c!881225 ((_ is Nil!59287) lt!2113564))))

(declare-fun e!3196650 () (InoxSet C!28748))

(assert (=> d!1658028 (= (content!10549 lt!2113564) e!3196650)))

(declare-fun b!5125802 () Bool)

(assert (=> b!5125802 (= e!3196650 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125803 () Bool)

(assert (=> b!5125803 (= e!3196650 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113564) true) (content!10549 (t!372436 lt!2113564))))))

(assert (= (and d!1658028 c!881225) b!5125802))

(assert (= (and d!1658028 (not c!881225)) b!5125803))

(declare-fun m!6189586 () Bool)

(assert (=> b!5125803 m!6189586))

(declare-fun m!6189588 () Bool)

(assert (=> b!5125803 m!6189588))

(assert (=> d!1657526 d!1658028))

(declare-fun d!1658030 () Bool)

(declare-fun c!881226 () Bool)

(assert (=> d!1658030 (= c!881226 ((_ is Nil!59287) lt!2113200))))

(declare-fun e!3196651 () (InoxSet C!28748))

(assert (=> d!1658030 (= (content!10549 lt!2113200) e!3196651)))

(declare-fun b!5125804 () Bool)

(assert (=> b!5125804 (= e!3196651 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125805 () Bool)

(assert (=> b!5125805 (= e!3196651 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113200) true) (content!10549 (t!372436 lt!2113200))))))

(assert (= (and d!1658030 c!881226) b!5125804))

(assert (= (and d!1658030 (not c!881226)) b!5125805))

(declare-fun m!6189590 () Bool)

(assert (=> b!5125805 m!6189590))

(declare-fun m!6189592 () Bool)

(assert (=> b!5125805 m!6189592))

(assert (=> d!1657526 d!1658030))

(assert (=> d!1657526 d!1658000))

(declare-fun d!1658032 () Bool)

(declare-fun e!3196654 () Bool)

(assert (=> d!1658032 e!3196654))

(declare-fun res!2182524 () Bool)

(assert (=> d!1658032 (=> (not res!2182524) (not e!3196654))))

(declare-fun lt!2113828 () List!59414)

(declare-fun noDuplicate!1082 (List!59414) Bool)

(assert (=> d!1658032 (= res!2182524 (noDuplicate!1082 lt!2113828))))

(declare-fun choose!37744 ((InoxSet Context!7250)) List!59414)

(assert (=> d!1658032 (= lt!2113828 (choose!37744 z!4463))))

(assert (=> d!1658032 (= (toList!8274 z!4463) lt!2113828)))

(declare-fun b!5125808 () Bool)

(declare-fun content!10551 (List!59414) (InoxSet Context!7250))

(assert (=> b!5125808 (= e!3196654 (= (content!10551 lt!2113828) z!4463))))

(assert (= (and d!1658032 res!2182524) b!5125808))

(declare-fun m!6189594 () Bool)

(assert (=> d!1658032 m!6189594))

(declare-fun m!6189596 () Bool)

(assert (=> d!1658032 m!6189596))

(declare-fun m!6189598 () Bool)

(assert (=> b!5125808 m!6189598))

(assert (=> bm!356707 d!1658032))

(declare-fun e!3196656 () Bool)

(declare-fun lt!2113829 () List!59411)

(declare-fun b!5125812 () Bool)

(assert (=> b!5125812 (= e!3196656 (or (not (= lt!2113193 Nil!59287)) (= lt!2113829 (t!372436 testedP!265))))))

(declare-fun d!1658034 () Bool)

(assert (=> d!1658034 e!3196656))

(declare-fun res!2182525 () Bool)

(assert (=> d!1658034 (=> (not res!2182525) (not e!3196656))))

(assert (=> d!1658034 (= res!2182525 (= (content!10549 lt!2113829) ((_ map or) (content!10549 (t!372436 testedP!265)) (content!10549 lt!2113193))))))

(declare-fun e!3196655 () List!59411)

(assert (=> d!1658034 (= lt!2113829 e!3196655)))

(declare-fun c!881227 () Bool)

(assert (=> d!1658034 (= c!881227 ((_ is Nil!59287) (t!372436 testedP!265)))))

(assert (=> d!1658034 (= (++!13054 (t!372436 testedP!265) lt!2113193) lt!2113829)))

(declare-fun b!5125811 () Bool)

(declare-fun res!2182526 () Bool)

(assert (=> b!5125811 (=> (not res!2182526) (not e!3196656))))

(assert (=> b!5125811 (= res!2182526 (= (size!39547 lt!2113829) (+ (size!39547 (t!372436 testedP!265)) (size!39547 lt!2113193))))))

(declare-fun b!5125810 () Bool)

(assert (=> b!5125810 (= e!3196655 (Cons!59287 (h!65735 (t!372436 testedP!265)) (++!13054 (t!372436 (t!372436 testedP!265)) lt!2113193)))))

(declare-fun b!5125809 () Bool)

(assert (=> b!5125809 (= e!3196655 lt!2113193)))

(assert (= (and d!1658034 c!881227) b!5125809))

(assert (= (and d!1658034 (not c!881227)) b!5125810))

(assert (= (and d!1658034 res!2182525) b!5125811))

(assert (= (and b!5125811 res!2182526) b!5125812))

(declare-fun m!6189600 () Bool)

(assert (=> d!1658034 m!6189600))

(assert (=> d!1658034 m!6189324))

(assert (=> d!1658034 m!6188430))

(declare-fun m!6189602 () Bool)

(assert (=> b!5125811 m!6189602))

(assert (=> b!5125811 m!6188408))

(assert (=> b!5125811 m!6188434))

(declare-fun m!6189604 () Bool)

(assert (=> b!5125810 m!6189604))

(assert (=> b!5125240 d!1658034))

(assert (=> b!5125234 d!1657558))

(assert (=> b!5125234 d!1657508))

(declare-fun bs!1193891 () Bool)

(declare-fun d!1658036 () Bool)

(assert (= bs!1193891 (and d!1658036 d!1657386)))

(declare-fun lambda!251791 () Int)

(assert (=> bs!1193891 (not (= lambda!251791 lambda!251725))))

(declare-fun bs!1193892 () Bool)

(assert (= bs!1193892 (and d!1658036 d!1657888)))

(assert (=> bs!1193892 (not (= lambda!251791 lambda!251773))))

(declare-fun bs!1193893 () Bool)

(assert (= bs!1193893 (and d!1658036 b!5125024)))

(assert (=> bs!1193893 (not (= lambda!251791 lambda!251726))))

(declare-fun bs!1193894 () Bool)

(assert (= bs!1193894 (and d!1658036 b!5125025)))

(assert (=> bs!1193894 (not (= lambda!251791 lambda!251727))))

(declare-fun bs!1193895 () Bool)

(assert (= bs!1193895 (and d!1658036 d!1657904)))

(assert (=> bs!1193895 (not (= lambda!251791 lambda!251780))))

(declare-fun bs!1193896 () Bool)

(assert (= bs!1193896 (and d!1658036 d!1657908)))

(assert (=> bs!1193896 (not (= lambda!251791 lambda!251783))))

(assert (=> d!1658036 (= (nullableZipper!1038 baseZ!46) (exists!1497 baseZ!46 lambda!251791))))

(declare-fun bs!1193897 () Bool)

(assert (= bs!1193897 d!1658036))

(declare-fun m!6189606 () Bool)

(assert (=> bs!1193897 m!6189606))

(assert (=> b!5124950 d!1658036))

(declare-fun d!1658038 () Bool)

(declare-fun lt!2113830 () Int)

(assert (=> d!1658038 (>= lt!2113830 0)))

(declare-fun e!3196657 () Int)

(assert (=> d!1658038 (= lt!2113830 e!3196657)))

(declare-fun c!881230 () Bool)

(assert (=> d!1658038 (= c!881230 ((_ is Nil!59287) (_1!35123 lt!2113527)))))

(assert (=> d!1658038 (= (size!39547 (_1!35123 lt!2113527)) lt!2113830)))

(declare-fun b!5125813 () Bool)

(assert (=> b!5125813 (= e!3196657 0)))

(declare-fun b!5125814 () Bool)

(assert (=> b!5125814 (= e!3196657 (+ 1 (size!39547 (t!372436 (_1!35123 lt!2113527)))))))

(assert (= (and d!1658038 c!881230) b!5125813))

(assert (= (and d!1658038 (not c!881230)) b!5125814))

(declare-fun m!6189608 () Bool)

(assert (=> b!5125814 m!6189608))

(assert (=> b!5125213 d!1658038))

(assert (=> b!5125213 d!1657506))

(assert (=> d!1657456 d!1657500))

(declare-fun b!5125818 () Bool)

(declare-fun e!3196659 () Bool)

(declare-fun lt!2113831 () List!59411)

(assert (=> b!5125818 (= e!3196659 (or (not (= (_2!35123 lt!2113499) Nil!59287)) (= lt!2113831 (_1!35123 lt!2113499))))))

(declare-fun d!1658040 () Bool)

(assert (=> d!1658040 e!3196659))

(declare-fun res!2182527 () Bool)

(assert (=> d!1658040 (=> (not res!2182527) (not e!3196659))))

(assert (=> d!1658040 (= res!2182527 (= (content!10549 lt!2113831) ((_ map or) (content!10549 (_1!35123 lt!2113499)) (content!10549 (_2!35123 lt!2113499)))))))

(declare-fun e!3196658 () List!59411)

(assert (=> d!1658040 (= lt!2113831 e!3196658)))

(declare-fun c!881231 () Bool)

(assert (=> d!1658040 (= c!881231 ((_ is Nil!59287) (_1!35123 lt!2113499)))))

(assert (=> d!1658040 (= (++!13054 (_1!35123 lt!2113499) (_2!35123 lt!2113499)) lt!2113831)))

(declare-fun b!5125817 () Bool)

(declare-fun res!2182528 () Bool)

(assert (=> b!5125817 (=> (not res!2182528) (not e!3196659))))

(assert (=> b!5125817 (= res!2182528 (= (size!39547 lt!2113831) (+ (size!39547 (_1!35123 lt!2113499)) (size!39547 (_2!35123 lt!2113499)))))))

(declare-fun b!5125816 () Bool)

(assert (=> b!5125816 (= e!3196658 (Cons!59287 (h!65735 (_1!35123 lt!2113499)) (++!13054 (t!372436 (_1!35123 lt!2113499)) (_2!35123 lt!2113499))))))

(declare-fun b!5125815 () Bool)

(assert (=> b!5125815 (= e!3196658 (_2!35123 lt!2113499))))

(assert (= (and d!1658040 c!881231) b!5125815))

(assert (= (and d!1658040 (not c!881231)) b!5125816))

(assert (= (and d!1658040 res!2182527) b!5125817))

(assert (= (and b!5125817 res!2182528) b!5125818))

(declare-fun m!6189610 () Bool)

(assert (=> d!1658040 m!6189610))

(declare-fun m!6189612 () Bool)

(assert (=> d!1658040 m!6189612))

(declare-fun m!6189614 () Bool)

(assert (=> d!1658040 m!6189614))

(declare-fun m!6189616 () Bool)

(assert (=> b!5125817 m!6189616))

(assert (=> b!5125817 m!6188322))

(declare-fun m!6189618 () Bool)

(assert (=> b!5125817 m!6189618))

(declare-fun m!6189620 () Bool)

(assert (=> b!5125816 m!6189620))

(assert (=> d!1657456 d!1658040))

(declare-fun lt!2113832 () List!59411)

(declare-fun e!3196661 () Bool)

(declare-fun b!5125822 () Bool)

(assert (=> b!5125822 (= e!3196661 (or (not (= (getSuffix!3318 input!5745 lt!2113214) Nil!59287)) (= lt!2113832 lt!2113214)))))

(declare-fun d!1658042 () Bool)

(assert (=> d!1658042 e!3196661))

(declare-fun res!2182529 () Bool)

(assert (=> d!1658042 (=> (not res!2182529) (not e!3196661))))

(assert (=> d!1658042 (= res!2182529 (= (content!10549 lt!2113832) ((_ map or) (content!10549 lt!2113214) (content!10549 (getSuffix!3318 input!5745 lt!2113214)))))))

(declare-fun e!3196660 () List!59411)

(assert (=> d!1658042 (= lt!2113832 e!3196660)))

(declare-fun c!881232 () Bool)

(assert (=> d!1658042 (= c!881232 ((_ is Nil!59287) lt!2113214))))

(assert (=> d!1658042 (= (++!13054 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)) lt!2113832)))

(declare-fun b!5125821 () Bool)

(declare-fun res!2182530 () Bool)

(assert (=> b!5125821 (=> (not res!2182530) (not e!3196661))))

(assert (=> b!5125821 (= res!2182530 (= (size!39547 lt!2113832) (+ (size!39547 lt!2113214) (size!39547 (getSuffix!3318 input!5745 lt!2113214)))))))

(declare-fun b!5125820 () Bool)

(assert (=> b!5125820 (= e!3196660 (Cons!59287 (h!65735 lt!2113214) (++!13054 (t!372436 lt!2113214) (getSuffix!3318 input!5745 lt!2113214))))))

(declare-fun b!5125819 () Bool)

(assert (=> b!5125819 (= e!3196660 (getSuffix!3318 input!5745 lt!2113214))))

(assert (= (and d!1658042 c!881232) b!5125819))

(assert (= (and d!1658042 (not c!881232)) b!5125820))

(assert (= (and d!1658042 res!2182529) b!5125821))

(assert (= (and b!5125821 res!2182530) b!5125822))

(declare-fun m!6189622 () Bool)

(assert (=> d!1658042 m!6189622))

(assert (=> d!1658042 m!6188084))

(assert (=> d!1658042 m!6187820))

(declare-fun m!6189624 () Bool)

(assert (=> d!1658042 m!6189624))

(declare-fun m!6189626 () Bool)

(assert (=> b!5125821 m!6189626))

(assert (=> b!5125821 m!6187824))

(assert (=> b!5125821 m!6187820))

(declare-fun m!6189628 () Bool)

(assert (=> b!5125821 m!6189628))

(assert (=> b!5125820 m!6187820))

(declare-fun m!6189630 () Bool)

(assert (=> b!5125820 m!6189630))

(assert (=> d!1657456 d!1658042))

(declare-fun d!1658044 () Bool)

(assert (=> d!1658044 (= (getSuffix!3318 input!5745 lt!2113214) lt!2113513)))

(declare-fun lt!2113833 () Unit!150433)

(assert (=> d!1658044 (= lt!2113833 (choose!37724 lt!2113214 (getSuffix!3318 input!5745 lt!2113214) lt!2113214 lt!2113513 input!5745))))

(assert (=> d!1658044 (isPrefix!5646 lt!2113214 input!5745)))

(assert (=> d!1658044 (= (lemmaSamePrefixThenSameSuffix!2664 lt!2113214 (getSuffix!3318 input!5745 lt!2113214) lt!2113214 lt!2113513 input!5745) lt!2113833)))

(declare-fun bs!1193898 () Bool)

(assert (= bs!1193898 d!1658044))

(assert (=> bs!1193898 m!6187820))

(declare-fun m!6189632 () Bool)

(assert (=> bs!1193898 m!6189632))

(assert (=> bs!1193898 m!6187840))

(assert (=> d!1657456 d!1658044))

(declare-fun d!1658046 () Bool)

(assert (=> d!1658046 (isPrefix!5646 lt!2113214 (++!13054 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)))))

(declare-fun lt!2113834 () Unit!150433)

(assert (=> d!1658046 (= lt!2113834 (choose!37734 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)))))

(assert (=> d!1658046 (= (lemmaConcatTwoListThenFirstIsPrefix!3558 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)) lt!2113834)))

(declare-fun bs!1193899 () Bool)

(assert (= bs!1193899 d!1658046))

(assert (=> bs!1193899 m!6187820))

(assert (=> bs!1193899 m!6188306))

(assert (=> bs!1193899 m!6188306))

(assert (=> bs!1193899 m!6188310))

(assert (=> bs!1193899 m!6187820))

(declare-fun m!6189634 () Bool)

(assert (=> bs!1193899 m!6189634))

(assert (=> d!1657456 d!1658046))

(declare-fun b!5125824 () Bool)

(declare-fun res!2182533 () Bool)

(declare-fun e!3196664 () Bool)

(assert (=> b!5125824 (=> (not res!2182533) (not e!3196664))))

(assert (=> b!5125824 (= res!2182533 (= (head!10957 lt!2113214) (head!10957 (++!13054 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)))))))

(declare-fun b!5125823 () Bool)

(declare-fun e!3196662 () Bool)

(assert (=> b!5125823 (= e!3196662 e!3196664)))

(declare-fun res!2182531 () Bool)

(assert (=> b!5125823 (=> (not res!2182531) (not e!3196664))))

(assert (=> b!5125823 (= res!2182531 (not ((_ is Nil!59287) (++!13054 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)))))))

(declare-fun b!5125826 () Bool)

(declare-fun e!3196663 () Bool)

(assert (=> b!5125826 (= e!3196663 (>= (size!39547 (++!13054 lt!2113214 (getSuffix!3318 input!5745 lt!2113214))) (size!39547 lt!2113214)))))

(declare-fun b!5125825 () Bool)

(assert (=> b!5125825 (= e!3196664 (isPrefix!5646 (tail!10092 lt!2113214) (tail!10092 (++!13054 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)))))))

(declare-fun d!1658048 () Bool)

(assert (=> d!1658048 e!3196663))

(declare-fun res!2182532 () Bool)

(assert (=> d!1658048 (=> res!2182532 e!3196663)))

(declare-fun lt!2113835 () Bool)

(assert (=> d!1658048 (= res!2182532 (not lt!2113835))))

(assert (=> d!1658048 (= lt!2113835 e!3196662)))

(declare-fun res!2182534 () Bool)

(assert (=> d!1658048 (=> res!2182534 e!3196662)))

(assert (=> d!1658048 (= res!2182534 ((_ is Nil!59287) lt!2113214))))

(assert (=> d!1658048 (= (isPrefix!5646 lt!2113214 (++!13054 lt!2113214 (getSuffix!3318 input!5745 lt!2113214))) lt!2113835)))

(assert (= (and d!1658048 (not res!2182534)) b!5125823))

(assert (= (and b!5125823 res!2182531) b!5125824))

(assert (= (and b!5125824 res!2182533) b!5125825))

(assert (= (and d!1658048 (not res!2182532)) b!5125826))

(assert (=> b!5125824 m!6188482))

(assert (=> b!5125824 m!6188306))

(declare-fun m!6189636 () Bool)

(assert (=> b!5125824 m!6189636))

(assert (=> b!5125826 m!6188306))

(declare-fun m!6189638 () Bool)

(assert (=> b!5125826 m!6189638))

(assert (=> b!5125826 m!6187824))

(assert (=> b!5125825 m!6188484))

(assert (=> b!5125825 m!6188306))

(declare-fun m!6189640 () Bool)

(assert (=> b!5125825 m!6189640))

(assert (=> b!5125825 m!6188484))

(assert (=> b!5125825 m!6189640))

(declare-fun m!6189642 () Bool)

(assert (=> b!5125825 m!6189642))

(assert (=> d!1657456 d!1658048))

(declare-fun bs!1193900 () Bool)

(declare-fun d!1658050 () Bool)

(assert (= bs!1193900 (and d!1658050 d!1657386)))

(declare-fun lambda!251792 () Int)

(assert (=> bs!1193900 (= lambda!251792 lambda!251725)))

(declare-fun bs!1193901 () Bool)

(assert (= bs!1193901 (and d!1658050 d!1657888)))

(assert (=> bs!1193901 (not (= lambda!251792 lambda!251773))))

(declare-fun bs!1193902 () Bool)

(assert (= bs!1193902 (and d!1658050 b!5125024)))

(assert (=> bs!1193902 (not (= lambda!251792 lambda!251726))))

(declare-fun bs!1193903 () Bool)

(assert (= bs!1193903 (and d!1658050 b!5125025)))

(assert (=> bs!1193903 (not (= lambda!251792 lambda!251727))))

(declare-fun bs!1193904 () Bool)

(assert (= bs!1193904 (and d!1658050 d!1658036)))

(assert (=> bs!1193904 (not (= lambda!251792 lambda!251791))))

(declare-fun bs!1193905 () Bool)

(assert (= bs!1193905 (and d!1658050 d!1657904)))

(assert (=> bs!1193905 (not (= lambda!251792 lambda!251780))))

(declare-fun bs!1193906 () Bool)

(assert (= bs!1193906 (and d!1658050 d!1657908)))

(assert (=> bs!1193906 (not (= lambda!251792 lambda!251783))))

(declare-fun bs!1193907 () Bool)

(declare-fun b!5125827 () Bool)

(assert (= bs!1193907 (and b!5125827 d!1657386)))

(declare-fun lambda!251793 () Int)

(assert (=> bs!1193907 (not (= lambda!251793 lambda!251725))))

(declare-fun bs!1193908 () Bool)

(assert (= bs!1193908 (and b!5125827 d!1657888)))

(assert (=> bs!1193908 (not (= lambda!251793 lambda!251773))))

(declare-fun bs!1193909 () Bool)

(assert (= bs!1193909 (and b!5125827 b!5125024)))

(assert (=> bs!1193909 (= lambda!251793 lambda!251726)))

(declare-fun bs!1193910 () Bool)

(assert (= bs!1193910 (and b!5125827 b!5125025)))

(assert (=> bs!1193910 (= lambda!251793 lambda!251727)))

(declare-fun bs!1193911 () Bool)

(assert (= bs!1193911 (and b!5125827 d!1658036)))

(assert (=> bs!1193911 (not (= lambda!251793 lambda!251791))))

(declare-fun bs!1193912 () Bool)

(assert (= bs!1193912 (and b!5125827 d!1657908)))

(assert (=> bs!1193912 (not (= lambda!251793 lambda!251783))))

(declare-fun bs!1193913 () Bool)

(assert (= bs!1193913 (and b!5125827 d!1657904)))

(assert (=> bs!1193913 (= lambda!251793 lambda!251780)))

(declare-fun bs!1193914 () Bool)

(assert (= bs!1193914 (and b!5125827 d!1658050)))

(assert (=> bs!1193914 (not (= lambda!251793 lambda!251792))))

(declare-fun bs!1193915 () Bool)

(declare-fun b!5125828 () Bool)

(assert (= bs!1193915 (and b!5125828 d!1657386)))

(declare-fun lambda!251794 () Int)

(assert (=> bs!1193915 (not (= lambda!251794 lambda!251725))))

(declare-fun bs!1193916 () Bool)

(assert (= bs!1193916 (and b!5125828 d!1657888)))

(assert (=> bs!1193916 (not (= lambda!251794 lambda!251773))))

(declare-fun bs!1193917 () Bool)

(assert (= bs!1193917 (and b!5125828 b!5125024)))

(assert (=> bs!1193917 (= lambda!251794 lambda!251726)))

(declare-fun bs!1193918 () Bool)

(assert (= bs!1193918 (and b!5125828 b!5125827)))

(assert (=> bs!1193918 (= lambda!251794 lambda!251793)))

(declare-fun bs!1193919 () Bool)

(assert (= bs!1193919 (and b!5125828 b!5125025)))

(assert (=> bs!1193919 (= lambda!251794 lambda!251727)))

(declare-fun bs!1193920 () Bool)

(assert (= bs!1193920 (and b!5125828 d!1658036)))

(assert (=> bs!1193920 (not (= lambda!251794 lambda!251791))))

(declare-fun bs!1193921 () Bool)

(assert (= bs!1193921 (and b!5125828 d!1657908)))

(assert (=> bs!1193921 (not (= lambda!251794 lambda!251783))))

(declare-fun bs!1193922 () Bool)

(assert (= bs!1193922 (and b!5125828 d!1657904)))

(assert (=> bs!1193922 (= lambda!251794 lambda!251780)))

(declare-fun bs!1193923 () Bool)

(assert (= bs!1193923 (and b!5125828 d!1658050)))

(assert (=> bs!1193923 (not (= lambda!251794 lambda!251792))))

(declare-fun e!3196665 () Unit!150433)

(declare-fun Unit!150462 () Unit!150433)

(assert (=> b!5125827 (= e!3196665 Unit!150462)))

(declare-fun lt!2113838 () List!59414)

(declare-fun call!356804 () List!59414)

(assert (=> b!5125827 (= lt!2113838 call!356804)))

(declare-fun lt!2113842 () Unit!150433)

(assert (=> b!5125827 (= lt!2113842 (lemmaNotForallThenExists!348 lt!2113838 lambda!251792))))

(declare-fun call!356805 () Bool)

(assert (=> b!5125827 call!356805))

(declare-fun lt!2113841 () Unit!150433)

(assert (=> b!5125827 (= lt!2113841 lt!2113842)))

(declare-fun lt!2113836 () Bool)

(assert (=> d!1658050 (= lt!2113836 (isEmpty!31957 (getLanguageWitness!835 lt!2113196)))))

(assert (=> d!1658050 (= lt!2113836 (forall!13638 lt!2113196 lambda!251792))))

(declare-fun lt!2113843 () Unit!150433)

(assert (=> d!1658050 (= lt!2113843 e!3196665)))

(declare-fun c!881233 () Bool)

(assert (=> d!1658050 (= c!881233 (not (forall!13638 lt!2113196 lambda!251792)))))

(assert (=> d!1658050 (= (lostCauseZipper!1123 lt!2113196) lt!2113836)))

(declare-fun bm!356800 () Bool)

(declare-fun lt!2113837 () List!59414)

(assert (=> bm!356800 (= call!356805 (exists!1495 (ite c!881233 lt!2113838 lt!2113837) (ite c!881233 lambda!251793 lambda!251794)))))

(declare-fun Unit!150463 () Unit!150433)

(assert (=> b!5125828 (= e!3196665 Unit!150463)))

(assert (=> b!5125828 (= lt!2113837 call!356804)))

(declare-fun lt!2113839 () Unit!150433)

(assert (=> b!5125828 (= lt!2113839 (lemmaForallThenNotExists!331 lt!2113837 lambda!251792))))

(assert (=> b!5125828 (not call!356805)))

(declare-fun lt!2113840 () Unit!150433)

(assert (=> b!5125828 (= lt!2113840 lt!2113839)))

(declare-fun bm!356799 () Bool)

(assert (=> bm!356799 (= call!356804 (toList!8274 lt!2113196))))

(assert (= (and d!1658050 c!881233) b!5125827))

(assert (= (and d!1658050 (not c!881233)) b!5125828))

(assert (= (or b!5125827 b!5125828) bm!356799))

(assert (= (or b!5125827 b!5125828) bm!356800))

(declare-fun m!6189644 () Bool)

(assert (=> bm!356800 m!6189644))

(declare-fun m!6189646 () Bool)

(assert (=> b!5125827 m!6189646))

(declare-fun m!6189648 () Bool)

(assert (=> b!5125828 m!6189648))

(declare-fun m!6189650 () Bool)

(assert (=> d!1658050 m!6189650))

(assert (=> d!1658050 m!6189650))

(declare-fun m!6189652 () Bool)

(assert (=> d!1658050 m!6189652))

(declare-fun m!6189654 () Bool)

(assert (=> d!1658050 m!6189654))

(assert (=> d!1658050 m!6189654))

(declare-fun m!6189656 () Bool)

(assert (=> bm!356799 m!6189656))

(assert (=> d!1657456 d!1658050))

(declare-fun d!1658052 () Bool)

(assert (=> d!1658052 (isPrefix!5646 (++!13054 testedP!265 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287)) input!5745)))

(assert (=> d!1658052 true))

(declare-fun _$65!1784 () Unit!150433)

(assert (=> d!1658052 (= (choose!37726 testedP!265 input!5745) _$65!1784)))

(declare-fun bs!1193924 () Bool)

(assert (= bs!1193924 d!1658052))

(assert (=> bs!1193924 m!6187832))

(assert (=> bs!1193924 m!6187832))

(assert (=> bs!1193924 m!6188380))

(assert (=> bs!1193924 m!6188382))

(assert (=> bs!1193924 m!6188382))

(assert (=> bs!1193924 m!6188384))

(assert (=> d!1657552 d!1658052))

(declare-fun d!1658054 () Bool)

(assert (=> d!1658054 (= (head!10957 (getSuffix!3318 input!5745 testedP!265)) (h!65735 (getSuffix!3318 input!5745 testedP!265)))))

(assert (=> d!1657552 d!1658054))

(declare-fun b!5125832 () Bool)

(declare-fun e!3196667 () Bool)

(declare-fun lt!2113844 () List!59411)

(assert (=> b!5125832 (= e!3196667 (or (not (= (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287) Nil!59287)) (= lt!2113844 testedP!265)))))

(declare-fun d!1658056 () Bool)

(assert (=> d!1658056 e!3196667))

(declare-fun res!2182535 () Bool)

(assert (=> d!1658056 (=> (not res!2182535) (not e!3196667))))

(assert (=> d!1658056 (= res!2182535 (= (content!10549 lt!2113844) ((_ map or) (content!10549 testedP!265) (content!10549 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287)))))))

(declare-fun e!3196666 () List!59411)

(assert (=> d!1658056 (= lt!2113844 e!3196666)))

(declare-fun c!881234 () Bool)

(assert (=> d!1658056 (= c!881234 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1658056 (= (++!13054 testedP!265 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287)) lt!2113844)))

(declare-fun b!5125831 () Bool)

(declare-fun res!2182536 () Bool)

(assert (=> b!5125831 (=> (not res!2182536) (not e!3196667))))

(assert (=> b!5125831 (= res!2182536 (= (size!39547 lt!2113844) (+ (size!39547 testedP!265) (size!39547 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287)))))))

(declare-fun b!5125830 () Bool)

(assert (=> b!5125830 (= e!3196666 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287))))))

(declare-fun b!5125829 () Bool)

(assert (=> b!5125829 (= e!3196666 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287))))

(assert (= (and d!1658056 c!881234) b!5125829))

(assert (= (and d!1658056 (not c!881234)) b!5125830))

(assert (= (and d!1658056 res!2182535) b!5125831))

(assert (= (and b!5125831 res!2182536) b!5125832))

(declare-fun m!6189658 () Bool)

(assert (=> d!1658056 m!6189658))

(assert (=> d!1658056 m!6188166))

(declare-fun m!6189660 () Bool)

(assert (=> d!1658056 m!6189660))

(declare-fun m!6189662 () Bool)

(assert (=> b!5125831 m!6189662))

(assert (=> b!5125831 m!6187864))

(declare-fun m!6189664 () Bool)

(assert (=> b!5125831 m!6189664))

(declare-fun m!6189666 () Bool)

(assert (=> b!5125830 m!6189666))

(assert (=> d!1657552 d!1658056))

(assert (=> d!1657552 d!1657522))

(assert (=> d!1657552 d!1657530))

(declare-fun b!5125834 () Bool)

(declare-fun res!2182539 () Bool)

(declare-fun e!3196670 () Bool)

(assert (=> b!5125834 (=> (not res!2182539) (not e!3196670))))

(assert (=> b!5125834 (= res!2182539 (= (head!10957 (++!13054 testedP!265 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287))) (head!10957 input!5745)))))

(declare-fun b!5125833 () Bool)

(declare-fun e!3196668 () Bool)

(assert (=> b!5125833 (= e!3196668 e!3196670)))

(declare-fun res!2182537 () Bool)

(assert (=> b!5125833 (=> (not res!2182537) (not e!3196670))))

(assert (=> b!5125833 (= res!2182537 (not ((_ is Nil!59287) input!5745)))))

(declare-fun b!5125836 () Bool)

(declare-fun e!3196669 () Bool)

(assert (=> b!5125836 (= e!3196669 (>= (size!39547 input!5745) (size!39547 (++!13054 testedP!265 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287)))))))

(declare-fun b!5125835 () Bool)

(assert (=> b!5125835 (= e!3196670 (isPrefix!5646 (tail!10092 (++!13054 testedP!265 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287))) (tail!10092 input!5745)))))

(declare-fun d!1658058 () Bool)

(assert (=> d!1658058 e!3196669))

(declare-fun res!2182538 () Bool)

(assert (=> d!1658058 (=> res!2182538 e!3196669)))

(declare-fun lt!2113845 () Bool)

(assert (=> d!1658058 (= res!2182538 (not lt!2113845))))

(assert (=> d!1658058 (= lt!2113845 e!3196668)))

(declare-fun res!2182540 () Bool)

(assert (=> d!1658058 (=> res!2182540 e!3196668)))

(assert (=> d!1658058 (= res!2182540 ((_ is Nil!59287) (++!13054 testedP!265 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287))))))

(assert (=> d!1658058 (= (isPrefix!5646 (++!13054 testedP!265 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 testedP!265)) Nil!59287)) input!5745) lt!2113845)))

(assert (= (and d!1658058 (not res!2182540)) b!5125833))

(assert (= (and b!5125833 res!2182537) b!5125834))

(assert (= (and b!5125834 res!2182539) b!5125835))

(assert (= (and d!1658058 (not res!2182538)) b!5125836))

(assert (=> b!5125834 m!6188382))

(declare-fun m!6189668 () Bool)

(assert (=> b!5125834 m!6189668))

(assert (=> b!5125834 m!6188412))

(assert (=> b!5125836 m!6187862))

(assert (=> b!5125836 m!6188382))

(declare-fun m!6189670 () Bool)

(assert (=> b!5125836 m!6189670))

(assert (=> b!5125835 m!6188382))

(declare-fun m!6189672 () Bool)

(assert (=> b!5125835 m!6189672))

(assert (=> b!5125835 m!6188402))

(assert (=> b!5125835 m!6189672))

(assert (=> b!5125835 m!6188402))

(declare-fun m!6189674 () Bool)

(assert (=> b!5125835 m!6189674))

(assert (=> d!1657552 d!1658058))

(declare-fun d!1658060 () Bool)

(declare-fun c!881235 () Bool)

(assert (=> d!1658060 (= c!881235 ((_ is Nil!59287) lt!2113560))))

(declare-fun e!3196671 () (InoxSet C!28748))

(assert (=> d!1658060 (= (content!10549 lt!2113560) e!3196671)))

(declare-fun b!5125837 () Bool)

(assert (=> b!5125837 (= e!3196671 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125838 () Bool)

(assert (=> b!5125838 (= e!3196671 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113560) true) (content!10549 (t!372436 lt!2113560))))))

(assert (= (and d!1658060 c!881235) b!5125837))

(assert (= (and d!1658060 (not c!881235)) b!5125838))

(declare-fun m!6189676 () Bool)

(assert (=> b!5125838 m!6189676))

(declare-fun m!6189678 () Bool)

(assert (=> b!5125838 m!6189678))

(assert (=> d!1657516 d!1658060))

(assert (=> d!1657516 d!1657898))

(declare-fun d!1658062 () Bool)

(declare-fun c!881236 () Bool)

(assert (=> d!1658062 (= c!881236 ((_ is Nil!59287) lt!2113193))))

(declare-fun e!3196672 () (InoxSet C!28748))

(assert (=> d!1658062 (= (content!10549 lt!2113193) e!3196672)))

(declare-fun b!5125839 () Bool)

(assert (=> b!5125839 (= e!3196672 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125840 () Bool)

(assert (=> b!5125840 (= e!3196672 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113193) true) (content!10549 (t!372436 lt!2113193))))))

(assert (= (and d!1658062 c!881236) b!5125839))

(assert (= (and d!1658062 (not c!881236)) b!5125840))

(declare-fun m!6189680 () Bool)

(assert (=> b!5125840 m!6189680))

(declare-fun m!6189682 () Bool)

(assert (=> b!5125840 m!6189682))

(assert (=> d!1657516 d!1658062))

(declare-fun d!1658064 () Bool)

(assert (=> d!1658064 (= (isEmpty!31956 lt!2113207) ((_ is Nil!59287) lt!2113207))))

(assert (=> d!1657432 d!1658064))

(declare-fun bs!1193925 () Bool)

(declare-fun d!1658066 () Bool)

(assert (= bs!1193925 (and d!1658066 d!1657428)))

(declare-fun lambda!251795 () Int)

(assert (=> bs!1193925 (= lambda!251795 lambda!251730)))

(declare-fun bs!1193926 () Bool)

(assert (= bs!1193926 (and d!1658066 d!1657556)))

(assert (=> bs!1193926 (= lambda!251795 lambda!251738)))

(assert (=> d!1658066 (= (inv!78783 setElem!30558) (forall!13639 (exprs!4125 setElem!30558) lambda!251795))))

(declare-fun bs!1193927 () Bool)

(assert (= bs!1193927 d!1658066))

(declare-fun m!6189684 () Bool)

(assert (=> bs!1193927 m!6189684))

(assert (=> setNonEmpty!30558 d!1658066))

(declare-fun bs!1193928 () Bool)

(declare-fun d!1658068 () Bool)

(assert (= bs!1193928 (and d!1658068 d!1657926)))

(declare-fun lambda!251796 () Int)

(assert (=> bs!1193928 (= (= call!356776 (h!65735 testedP!265)) (= lambda!251796 lambda!251784))))

(declare-fun bs!1193929 () Bool)

(assert (= bs!1193929 (and d!1658068 d!1658008)))

(assert (=> bs!1193929 (= (= call!356776 call!356768) (= lambda!251796 lambda!251787))))

(declare-fun bs!1193930 () Bool)

(assert (= bs!1193930 (and d!1658068 d!1658022)))

(assert (=> bs!1193930 (= (= call!356776 (head!10957 lt!2113207)) (= lambda!251796 lambda!251788))))

(declare-fun bs!1193931 () Bool)

(assert (= bs!1193931 (and d!1658068 d!1657970)))

(assert (=> bs!1193931 (= (= call!356776 (h!65735 lt!2113214)) (= lambda!251796 lambda!251786))))

(declare-fun bs!1193932 () Bool)

(assert (= bs!1193932 (and d!1658068 d!1657544)))

(assert (=> bs!1193932 (= (= call!356776 lt!2113194) (= lambda!251796 lambda!251737))))

(declare-fun bs!1193933 () Bool)

(assert (= bs!1193933 (and d!1658068 d!1657930)))

(assert (=> bs!1193933 (= (= call!356776 (head!10957 knownP!20)) (= lambda!251796 lambda!251785))))

(assert (=> d!1658068 true))

(assert (=> d!1658068 (= (derivationStepZipper!864 z!4463 call!356776) (flatMap!369 z!4463 lambda!251796))))

(declare-fun bs!1193934 () Bool)

(assert (= bs!1193934 d!1658068))

(declare-fun m!6189686 () Bool)

(assert (=> bs!1193934 m!6189686))

(assert (=> bm!356766 d!1658068))

(declare-fun d!1658070 () Bool)

(declare-fun res!2182545 () Bool)

(declare-fun e!3196677 () Bool)

(assert (=> d!1658070 (=> res!2182545 e!3196677)))

(assert (=> d!1658070 (= res!2182545 ((_ is Nil!59288) (exprs!4125 setElem!30549)))))

(assert (=> d!1658070 (= (forall!13639 (exprs!4125 setElem!30549) lambda!251738) e!3196677)))

(declare-fun b!5125845 () Bool)

(declare-fun e!3196678 () Bool)

(assert (=> b!5125845 (= e!3196677 e!3196678)))

(declare-fun res!2182546 () Bool)

(assert (=> b!5125845 (=> (not res!2182546) (not e!3196678))))

(declare-fun dynLambda!23617 (Int Regex!14241) Bool)

(assert (=> b!5125845 (= res!2182546 (dynLambda!23617 lambda!251738 (h!65736 (exprs!4125 setElem!30549))))))

(declare-fun b!5125846 () Bool)

(assert (=> b!5125846 (= e!3196678 (forall!13639 (t!372437 (exprs!4125 setElem!30549)) lambda!251738))))

(assert (= (and d!1658070 (not res!2182545)) b!5125845))

(assert (= (and b!5125845 res!2182546) b!5125846))

(declare-fun b_lambda!199057 () Bool)

(assert (=> (not b_lambda!199057) (not b!5125845)))

(declare-fun m!6189688 () Bool)

(assert (=> b!5125845 m!6189688))

(declare-fun m!6189690 () Bool)

(assert (=> b!5125846 m!6189690))

(assert (=> d!1657556 d!1658070))

(declare-fun d!1658072 () Bool)

(declare-fun lt!2113846 () Int)

(assert (=> d!1658072 (>= lt!2113846 0)))

(declare-fun e!3196679 () Int)

(assert (=> d!1658072 (= lt!2113846 e!3196679)))

(declare-fun c!881237 () Bool)

(assert (=> d!1658072 (= c!881237 ((_ is Nil!59287) lt!2113564))))

(assert (=> d!1658072 (= (size!39547 lt!2113564) lt!2113846)))

(declare-fun b!5125847 () Bool)

(assert (=> b!5125847 (= e!3196679 0)))

(declare-fun b!5125848 () Bool)

(assert (=> b!5125848 (= e!3196679 (+ 1 (size!39547 (t!372436 lt!2113564))))))

(assert (= (and d!1658072 c!881237) b!5125847))

(assert (= (and d!1658072 (not c!881237)) b!5125848))

(declare-fun m!6189692 () Bool)

(assert (=> b!5125848 m!6189692))

(assert (=> b!5125259 d!1658072))

(declare-fun d!1658074 () Bool)

(declare-fun lt!2113847 () Int)

(assert (=> d!1658074 (>= lt!2113847 0)))

(declare-fun e!3196680 () Int)

(assert (=> d!1658074 (= lt!2113847 e!3196680)))

(declare-fun c!881238 () Bool)

(assert (=> d!1658074 (= c!881238 ((_ is Nil!59287) lt!2113200))))

(assert (=> d!1658074 (= (size!39547 lt!2113200) lt!2113847)))

(declare-fun b!5125849 () Bool)

(assert (=> b!5125849 (= e!3196680 0)))

(declare-fun b!5125850 () Bool)

(assert (=> b!5125850 (= e!3196680 (+ 1 (size!39547 (t!372436 lt!2113200))))))

(assert (= (and d!1658074 c!881238) b!5125849))

(assert (= (and d!1658074 (not c!881238)) b!5125850))

(declare-fun m!6189694 () Bool)

(assert (=> b!5125850 m!6189694))

(assert (=> b!5125259 d!1658074))

(declare-fun d!1658076 () Bool)

(declare-fun lt!2113848 () Int)

(assert (=> d!1658076 (>= lt!2113848 0)))

(declare-fun e!3196681 () Int)

(assert (=> d!1658076 (= lt!2113848 e!3196681)))

(declare-fun c!881239 () Bool)

(assert (=> d!1658076 (= c!881239 ((_ is Nil!59287) lt!2113195))))

(assert (=> d!1658076 (= (size!39547 lt!2113195) lt!2113848)))

(declare-fun b!5125851 () Bool)

(assert (=> b!5125851 (= e!3196681 0)))

(declare-fun b!5125852 () Bool)

(assert (=> b!5125852 (= e!3196681 (+ 1 (size!39547 (t!372436 lt!2113195))))))

(assert (= (and d!1658076 c!881239) b!5125851))

(assert (= (and d!1658076 (not c!881239)) b!5125852))

(declare-fun m!6189696 () Bool)

(assert (=> b!5125852 m!6189696))

(assert (=> b!5125259 d!1658076))

(assert (=> d!1657498 d!1657500))

(assert (=> d!1657498 d!1657492))

(assert (=> d!1657498 d!1657508))

(assert (=> d!1657498 d!1657558))

(declare-fun d!1658078 () Bool)

(assert (=> d!1658078 (>= (size!39547 (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 (size!39547 input!5745)))) (size!39547 knownP!20))))

(assert (=> d!1658078 true))

(declare-fun _$77!1058 () Unit!150433)

(assert (=> d!1658078 (= (choose!37723 baseZ!46 lt!2113196 input!5745 lt!2113214 knownP!20) _$77!1058)))

(declare-fun bs!1193935 () Bool)

(assert (= bs!1193935 d!1658078))

(assert (=> bs!1193935 m!6187820))

(assert (=> bs!1193935 m!6188394))

(assert (=> bs!1193935 m!6187866))

(assert (=> bs!1193935 m!6187862))

(assert (=> bs!1193935 m!6187824))

(assert (=> bs!1193935 m!6187824))

(assert (=> bs!1193935 m!6187820))

(assert (=> bs!1193935 m!6187862))

(assert (=> bs!1193935 m!6188398))

(assert (=> d!1657498 d!1658078))

(declare-fun d!1658080 () Bool)

(declare-fun lt!2113849 () Int)

(assert (=> d!1658080 (>= lt!2113849 0)))

(declare-fun e!3196682 () Int)

(assert (=> d!1658080 (= lt!2113849 e!3196682)))

(declare-fun c!881240 () Bool)

(assert (=> d!1658080 (= c!881240 ((_ is Nil!59287) (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 (size!39547 input!5745)))))))

(assert (=> d!1658080 (= (size!39547 (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 (size!39547 input!5745)))) lt!2113849)))

(declare-fun b!5125853 () Bool)

(assert (=> b!5125853 (= e!3196682 0)))

(declare-fun b!5125854 () Bool)

(assert (=> b!5125854 (= e!3196682 (+ 1 (size!39547 (t!372436 (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 (size!39547 input!5745)))))))))

(assert (= (and d!1658080 c!881240) b!5125853))

(assert (= (and d!1658080 (not c!881240)) b!5125854))

(declare-fun m!6189698 () Bool)

(assert (=> b!5125854 m!6189698))

(assert (=> d!1657498 d!1658080))

(declare-fun b!5125855 () Bool)

(declare-fun e!3196687 () Bool)

(declare-fun e!3196690 () Bool)

(assert (=> b!5125855 (= e!3196687 e!3196690)))

(declare-fun res!2182547 () Bool)

(assert (=> b!5125855 (=> res!2182547 e!3196690)))

(declare-fun lt!2113855 () tuple2!63640)

(assert (=> b!5125855 (= res!2182547 (isEmpty!31956 (_1!35123 lt!2113855)))))

(declare-fun d!1658082 () Bool)

(assert (=> d!1658082 e!3196687))

(declare-fun res!2182548 () Bool)

(assert (=> d!1658082 (=> (not res!2182548) (not e!3196687))))

(assert (=> d!1658082 (= res!2182548 (= (++!13054 (_1!35123 lt!2113855) (_2!35123 lt!2113855)) input!5745))))

(declare-fun e!3196683 () tuple2!63640)

(assert (=> d!1658082 (= lt!2113855 e!3196683)))

(declare-fun c!881246 () Bool)

(assert (=> d!1658082 (= c!881246 (lostCauseZipper!1123 lt!2113196))))

(declare-fun lt!2113851 () Unit!150433)

(declare-fun Unit!150464 () Unit!150433)

(assert (=> d!1658082 (= lt!2113851 Unit!150464)))

(assert (=> d!1658082 (= (getSuffix!3318 input!5745 lt!2113214) (getSuffix!3318 input!5745 lt!2113214))))

(declare-fun lt!2113872 () Unit!150433)

(declare-fun lt!2113852 () Unit!150433)

(assert (=> d!1658082 (= lt!2113872 lt!2113852)))

(declare-fun lt!2113869 () List!59411)

(assert (=> d!1658082 (= (getSuffix!3318 input!5745 lt!2113214) lt!2113869)))

(assert (=> d!1658082 (= lt!2113852 (lemmaSamePrefixThenSameSuffix!2664 lt!2113214 (getSuffix!3318 input!5745 lt!2113214) lt!2113214 lt!2113869 input!5745))))

(assert (=> d!1658082 (= lt!2113869 (getSuffix!3318 input!5745 lt!2113214))))

(declare-fun lt!2113856 () Unit!150433)

(declare-fun lt!2113867 () Unit!150433)

(assert (=> d!1658082 (= lt!2113856 lt!2113867)))

(assert (=> d!1658082 (isPrefix!5646 lt!2113214 (++!13054 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)))))

(assert (=> d!1658082 (= lt!2113867 (lemmaConcatTwoListThenFirstIsPrefix!3558 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)))))

(assert (=> d!1658082 (= (++!13054 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)) input!5745)))

(assert (=> d!1658082 (= (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 (size!39547 input!5745)) lt!2113855)))

(declare-fun b!5125856 () Bool)

(declare-fun e!3196689 () tuple2!63640)

(declare-fun e!3196688 () tuple2!63640)

(assert (=> b!5125856 (= e!3196689 e!3196688)))

(declare-fun lt!2113866 () tuple2!63640)

(declare-fun call!356807 () tuple2!63640)

(assert (=> b!5125856 (= lt!2113866 call!356807)))

(declare-fun c!881245 () Bool)

(assert (=> b!5125856 (= c!881245 (isEmpty!31956 (_1!35123 lt!2113866)))))

(declare-fun b!5125857 () Bool)

(assert (=> b!5125857 (= e!3196690 (>= (size!39547 (_1!35123 lt!2113855)) (size!39547 lt!2113214)))))

(declare-fun b!5125858 () Bool)

(declare-fun e!3196684 () Unit!150433)

(declare-fun Unit!150465 () Unit!150433)

(assert (=> b!5125858 (= e!3196684 Unit!150465)))

(declare-fun bm!356801 () Bool)

(declare-fun lt!2113871 () List!59411)

(declare-fun call!356806 () List!59411)

(declare-fun call!356810 () (InoxSet Context!7250))

(assert (=> bm!356801 (= call!356807 (findLongestMatchInnerZipper!201 call!356810 lt!2113871 (+ (size!39547 lt!2113214) 1) call!356806 input!5745 (size!39547 input!5745)))))

(declare-fun b!5125859 () Bool)

(assert (=> b!5125859 (= e!3196688 (tuple2!63641 lt!2113214 (getSuffix!3318 input!5745 lt!2113214)))))

(declare-fun bm!356802 () Bool)

(declare-fun call!356812 () C!28748)

(assert (=> bm!356802 (= call!356810 (derivationStepZipper!864 lt!2113196 call!356812))))

(declare-fun b!5125860 () Bool)

(declare-fun Unit!150466 () Unit!150433)

(assert (=> b!5125860 (= e!3196684 Unit!150466)))

(declare-fun lt!2113861 () Unit!150433)

(declare-fun call!356811 () Unit!150433)

(assert (=> b!5125860 (= lt!2113861 call!356811)))

(declare-fun call!356808 () Bool)

(assert (=> b!5125860 call!356808))

(declare-fun lt!2113875 () Unit!150433)

(assert (=> b!5125860 (= lt!2113875 lt!2113861)))

(declare-fun lt!2113863 () Unit!150433)

(declare-fun call!356813 () Unit!150433)

(assert (=> b!5125860 (= lt!2113863 call!356813)))

(assert (=> b!5125860 (= input!5745 lt!2113214)))

(declare-fun lt!2113864 () Unit!150433)

(assert (=> b!5125860 (= lt!2113864 lt!2113863)))

(assert (=> b!5125860 false))

(declare-fun bm!356803 () Bool)

(declare-fun call!356809 () Bool)

(assert (=> bm!356803 (= call!356809 (nullableZipper!1038 lt!2113196))))

(declare-fun b!5125861 () Bool)

(assert (=> b!5125861 (= e!3196683 (tuple2!63641 Nil!59287 input!5745))))

(declare-fun bm!356804 () Bool)

(assert (=> bm!356804 (= call!356811 (lemmaIsPrefixRefl!3706 input!5745 input!5745))))

(declare-fun bm!356805 () Bool)

(assert (=> bm!356805 (= call!356812 (head!10957 (getSuffix!3318 input!5745 lt!2113214)))))

(declare-fun b!5125862 () Bool)

(declare-fun c!881243 () Bool)

(assert (=> b!5125862 (= c!881243 call!356809)))

(declare-fun lt!2113858 () Unit!150433)

(declare-fun lt!2113854 () Unit!150433)

(assert (=> b!5125862 (= lt!2113858 lt!2113854)))

(assert (=> b!5125862 (= input!5745 lt!2113214)))

(assert (=> b!5125862 (= lt!2113854 call!356813)))

(declare-fun lt!2113873 () Unit!150433)

(declare-fun lt!2113862 () Unit!150433)

(assert (=> b!5125862 (= lt!2113873 lt!2113862)))

(assert (=> b!5125862 call!356808))

(assert (=> b!5125862 (= lt!2113862 call!356811)))

(declare-fun e!3196685 () tuple2!63640)

(declare-fun e!3196686 () tuple2!63640)

(assert (=> b!5125862 (= e!3196685 e!3196686)))

(declare-fun bm!356806 () Bool)

(assert (=> bm!356806 (= call!356808 (isPrefix!5646 input!5745 input!5745))))

(declare-fun b!5125863 () Bool)

(declare-fun c!881242 () Bool)

(assert (=> b!5125863 (= c!881242 call!356809)))

(declare-fun lt!2113857 () Unit!150433)

(declare-fun lt!2113868 () Unit!150433)

(assert (=> b!5125863 (= lt!2113857 lt!2113868)))

(declare-fun lt!2113853 () List!59411)

(declare-fun lt!2113859 () C!28748)

(assert (=> b!5125863 (= (++!13054 (++!13054 lt!2113214 (Cons!59287 lt!2113859 Nil!59287)) lt!2113853) input!5745)))

(assert (=> b!5125863 (= lt!2113868 (lemmaMoveElementToOtherListKeepsConcatEq!1545 lt!2113214 lt!2113859 lt!2113853 input!5745))))

(assert (=> b!5125863 (= lt!2113853 (tail!10092 (getSuffix!3318 input!5745 lt!2113214)))))

(assert (=> b!5125863 (= lt!2113859 (head!10957 (getSuffix!3318 input!5745 lt!2113214)))))

(declare-fun lt!2113850 () Unit!150433)

(declare-fun lt!2113860 () Unit!150433)

(assert (=> b!5125863 (= lt!2113850 lt!2113860)))

(assert (=> b!5125863 (isPrefix!5646 (++!13054 lt!2113214 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287)) input!5745)))

(assert (=> b!5125863 (= lt!2113860 (lemmaAddHeadSuffixToPrefixStillPrefix!1020 lt!2113214 input!5745))))

(assert (=> b!5125863 (= lt!2113871 (++!13054 lt!2113214 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113214)) Nil!59287)))))

(declare-fun lt!2113874 () Unit!150433)

(assert (=> b!5125863 (= lt!2113874 e!3196684)))

(declare-fun c!881244 () Bool)

(assert (=> b!5125863 (= c!881244 (= (size!39547 lt!2113214) (size!39547 input!5745)))))

(declare-fun lt!2113865 () Unit!150433)

(declare-fun lt!2113870 () Unit!150433)

(assert (=> b!5125863 (= lt!2113865 lt!2113870)))

(assert (=> b!5125863 (<= (size!39547 lt!2113214) (size!39547 input!5745))))

(assert (=> b!5125863 (= lt!2113870 (lemmaIsPrefixThenSmallerEqSize!860 lt!2113214 input!5745))))

(assert (=> b!5125863 (= e!3196685 e!3196689)))

(declare-fun bm!356807 () Bool)

(assert (=> bm!356807 (= call!356806 (tail!10092 (getSuffix!3318 input!5745 lt!2113214)))))

(declare-fun b!5125864 () Bool)

(assert (=> b!5125864 (= e!3196686 (tuple2!63641 lt!2113214 Nil!59287))))

(declare-fun b!5125865 () Bool)

(assert (=> b!5125865 (= e!3196688 lt!2113866)))

(declare-fun bm!356808 () Bool)

(assert (=> bm!356808 (= call!356813 (lemmaIsPrefixSameLengthThenSameList!1350 input!5745 lt!2113214 input!5745))))

(declare-fun b!5125866 () Bool)

(assert (=> b!5125866 (= e!3196683 e!3196685)))

(declare-fun c!881241 () Bool)

(assert (=> b!5125866 (= c!881241 (= (size!39547 lt!2113214) (size!39547 input!5745)))))

(declare-fun b!5125867 () Bool)

(assert (=> b!5125867 (= e!3196686 (tuple2!63641 Nil!59287 input!5745))))

(declare-fun b!5125868 () Bool)

(assert (=> b!5125868 (= e!3196689 call!356807)))

(assert (= (and d!1658082 c!881246) b!5125861))

(assert (= (and d!1658082 (not c!881246)) b!5125866))

(assert (= (and b!5125866 c!881241) b!5125862))

(assert (= (and b!5125866 (not c!881241)) b!5125863))

(assert (= (and b!5125862 c!881243) b!5125864))

(assert (= (and b!5125862 (not c!881243)) b!5125867))

(assert (= (and b!5125863 c!881244) b!5125860))

(assert (= (and b!5125863 (not c!881244)) b!5125858))

(assert (= (and b!5125863 c!881242) b!5125856))

(assert (= (and b!5125863 (not c!881242)) b!5125868))

(assert (= (and b!5125856 c!881245) b!5125859))

(assert (= (and b!5125856 (not c!881245)) b!5125865))

(assert (= (or b!5125856 b!5125868) bm!356807))

(assert (= (or b!5125856 b!5125868) bm!356805))

(assert (= (or b!5125856 b!5125868) bm!356802))

(assert (= (or b!5125856 b!5125868) bm!356801))

(assert (= (or b!5125862 b!5125860) bm!356806))

(assert (= (or b!5125862 b!5125860) bm!356804))

(assert (= (or b!5125862 b!5125863) bm!356803))

(assert (= (or b!5125862 b!5125860) bm!356808))

(assert (= (and d!1658082 res!2182548) b!5125855))

(assert (= (and b!5125855 (not res!2182547)) b!5125857))

(assert (=> bm!356806 m!6188304))

(assert (=> d!1658082 m!6187820))

(assert (=> d!1658082 m!6188306))

(assert (=> d!1658082 m!6187820))

(assert (=> d!1658082 m!6188308))

(assert (=> d!1658082 m!6188306))

(assert (=> d!1658082 m!6188310))

(assert (=> d!1658082 m!6187820))

(declare-fun m!6189700 () Bool)

(assert (=> d!1658082 m!6189700))

(assert (=> d!1658082 m!6187820))

(assert (=> d!1658082 m!6188314))

(declare-fun m!6189702 () Bool)

(assert (=> d!1658082 m!6189702))

(assert (=> bm!356807 m!6187820))

(assert (=> bm!356807 m!6188318))

(assert (=> bm!356801 m!6187862))

(declare-fun m!6189704 () Bool)

(assert (=> bm!356801 m!6189704))

(declare-fun m!6189706 () Bool)

(assert (=> b!5125857 m!6189706))

(assert (=> b!5125857 m!6187824))

(declare-fun m!6189708 () Bool)

(assert (=> b!5125855 m!6189708))

(assert (=> bm!356803 m!6188326))

(declare-fun m!6189710 () Bool)

(assert (=> bm!356802 m!6189710))

(assert (=> bm!356805 m!6187820))

(assert (=> bm!356805 m!6188330))

(assert (=> bm!356808 m!6188332))

(declare-fun m!6189712 () Bool)

(assert (=> b!5125863 m!6189712))

(declare-fun m!6189714 () Bool)

(assert (=> b!5125863 m!6189714))

(assert (=> b!5125863 m!6187820))

(assert (=> b!5125863 m!6188318))

(assert (=> b!5125863 m!6187862))

(assert (=> b!5125863 m!6187820))

(assert (=> b!5125863 m!6188330))

(assert (=> b!5125863 m!6188338))

(assert (=> b!5125863 m!6188340))

(assert (=> b!5125863 m!6187824))

(assert (=> b!5125863 m!6188338))

(assert (=> b!5125863 m!6189712))

(assert (=> b!5125863 m!6188342))

(assert (=> b!5125863 m!6187820))

(assert (=> b!5125863 m!6188330))

(assert (=> b!5125863 m!6188338))

(assert (=> b!5125863 m!6187820))

(declare-fun m!6189716 () Bool)

(assert (=> b!5125863 m!6189716))

(assert (=> b!5125863 m!6188346))

(declare-fun m!6189718 () Bool)

(assert (=> b!5125856 m!6189718))

(assert (=> bm!356804 m!6188350))

(assert (=> d!1657498 d!1658082))

(assert (=> d!1657498 d!1657534))

(declare-fun b!5125872 () Bool)

(declare-fun lt!2113876 () List!59411)

(declare-fun e!3196692 () Bool)

(assert (=> b!5125872 (= e!3196692 (or (not (= lt!2113207 Nil!59287)) (= lt!2113876 (t!372436 testedP!265))))))

(declare-fun d!1658084 () Bool)

(assert (=> d!1658084 e!3196692))

(declare-fun res!2182549 () Bool)

(assert (=> d!1658084 (=> (not res!2182549) (not e!3196692))))

(assert (=> d!1658084 (= res!2182549 (= (content!10549 lt!2113876) ((_ map or) (content!10549 (t!372436 testedP!265)) (content!10549 lt!2113207))))))

(declare-fun e!3196691 () List!59411)

(assert (=> d!1658084 (= lt!2113876 e!3196691)))

(declare-fun c!881247 () Bool)

(assert (=> d!1658084 (= c!881247 ((_ is Nil!59287) (t!372436 testedP!265)))))

(assert (=> d!1658084 (= (++!13054 (t!372436 testedP!265) lt!2113207) lt!2113876)))

(declare-fun b!5125871 () Bool)

(declare-fun res!2182550 () Bool)

(assert (=> b!5125871 (=> (not res!2182550) (not e!3196692))))

(assert (=> b!5125871 (= res!2182550 (= (size!39547 lt!2113876) (+ (size!39547 (t!372436 testedP!265)) (size!39547 lt!2113207))))))

(declare-fun b!5125870 () Bool)

(assert (=> b!5125870 (= e!3196691 (Cons!59287 (h!65735 (t!372436 testedP!265)) (++!13054 (t!372436 (t!372436 testedP!265)) lt!2113207)))))

(declare-fun b!5125869 () Bool)

(assert (=> b!5125869 (= e!3196691 lt!2113207)))

(assert (= (and d!1658084 c!881247) b!5125869))

(assert (= (and d!1658084 (not c!881247)) b!5125870))

(assert (= (and d!1658084 res!2182549) b!5125871))

(assert (= (and b!5125871 res!2182550) b!5125872))

(declare-fun m!6189720 () Bool)

(assert (=> d!1658084 m!6189720))

(assert (=> d!1658084 m!6189324))

(assert (=> d!1658084 m!6188178))

(declare-fun m!6189722 () Bool)

(assert (=> b!5125871 m!6189722))

(assert (=> b!5125871 m!6188408))

(assert (=> b!5125871 m!6188184))

(declare-fun m!6189724 () Bool)

(assert (=> b!5125870 m!6189724))

(assert (=> b!5125262 d!1658084))

(declare-fun d!1658086 () Bool)

(declare-fun lt!2113877 () Int)

(assert (=> d!1658086 (>= lt!2113877 0)))

(declare-fun e!3196693 () Int)

(assert (=> d!1658086 (= lt!2113877 e!3196693)))

(declare-fun c!881248 () Bool)

(assert (=> d!1658086 (= c!881248 ((_ is Nil!59287) (t!372436 (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 lt!2113198)))))))

(assert (=> d!1658086 (= (size!39547 (t!372436 (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 lt!2113198)))) lt!2113877)))

(declare-fun b!5125873 () Bool)

(assert (=> b!5125873 (= e!3196693 0)))

(declare-fun b!5125874 () Bool)

(assert (=> b!5125874 (= e!3196693 (+ 1 (size!39547 (t!372436 (t!372436 (_1!35123 (findLongestMatchInnerZipper!201 lt!2113196 lt!2113214 (size!39547 lt!2113214) (getSuffix!3318 input!5745 lt!2113214) input!5745 lt!2113198)))))))))

(assert (= (and d!1658086 c!881248) b!5125873))

(assert (= (and d!1658086 (not c!881248)) b!5125874))

(declare-fun m!6189726 () Bool)

(assert (=> b!5125874 m!6189726))

(assert (=> b!5125099 d!1658086))

(assert (=> b!5125085 d!1657508))

(assert (=> b!5125085 d!1657506))

(declare-fun d!1658088 () Bool)

(declare-fun lt!2113878 () Int)

(assert (=> d!1658088 (>= lt!2113878 0)))

(declare-fun e!3196694 () Int)

(assert (=> d!1658088 (= lt!2113878 e!3196694)))

(declare-fun c!881249 () Bool)

(assert (=> d!1658088 (= c!881249 ((_ is Nil!59287) (t!372436 lt!2113214)))))

(assert (=> d!1658088 (= (size!39547 (t!372436 lt!2113214)) lt!2113878)))

(declare-fun b!5125875 () Bool)

(assert (=> b!5125875 (= e!3196694 0)))

(declare-fun b!5125876 () Bool)

(assert (=> b!5125876 (= e!3196694 (+ 1 (size!39547 (t!372436 (t!372436 lt!2113214)))))))

(assert (= (and d!1658088 c!881249) b!5125875))

(assert (= (and d!1658088 (not c!881249)) b!5125876))

(declare-fun m!6189728 () Bool)

(assert (=> b!5125876 m!6189728))

(assert (=> b!5125208 d!1658088))

(declare-fun b!5125878 () Bool)

(declare-fun res!2182553 () Bool)

(declare-fun e!3196697 () Bool)

(assert (=> b!5125878 (=> (not res!2182553) (not e!3196697))))

(assert (=> b!5125878 (= res!2182553 (= (head!10957 input!5745) (head!10957 input!5745)))))

(declare-fun b!5125877 () Bool)

(declare-fun e!3196695 () Bool)

(assert (=> b!5125877 (= e!3196695 e!3196697)))

(declare-fun res!2182551 () Bool)

(assert (=> b!5125877 (=> (not res!2182551) (not e!3196697))))

(assert (=> b!5125877 (= res!2182551 (not ((_ is Nil!59287) input!5745)))))

(declare-fun b!5125880 () Bool)

(declare-fun e!3196696 () Bool)

(assert (=> b!5125880 (= e!3196696 (>= (size!39547 input!5745) (size!39547 input!5745)))))

(declare-fun b!5125879 () Bool)

(assert (=> b!5125879 (= e!3196697 (isPrefix!5646 (tail!10092 input!5745) (tail!10092 input!5745)))))

(declare-fun d!1658090 () Bool)

(assert (=> d!1658090 e!3196696))

(declare-fun res!2182552 () Bool)

(assert (=> d!1658090 (=> res!2182552 e!3196696)))

(declare-fun lt!2113879 () Bool)

(assert (=> d!1658090 (= res!2182552 (not lt!2113879))))

(assert (=> d!1658090 (= lt!2113879 e!3196695)))

(declare-fun res!2182554 () Bool)

(assert (=> d!1658090 (=> res!2182554 e!3196695)))

(assert (=> d!1658090 (= res!2182554 ((_ is Nil!59287) input!5745))))

(assert (=> d!1658090 (= (isPrefix!5646 input!5745 input!5745) lt!2113879)))

(assert (= (and d!1658090 (not res!2182554)) b!5125877))

(assert (= (and b!5125877 res!2182551) b!5125878))

(assert (= (and b!5125878 res!2182553) b!5125879))

(assert (= (and d!1658090 (not res!2182552)) b!5125880))

(assert (=> b!5125878 m!6188412))

(assert (=> b!5125878 m!6188412))

(assert (=> b!5125880 m!6187862))

(assert (=> b!5125880 m!6187862))

(assert (=> b!5125879 m!6188402))

(assert (=> b!5125879 m!6188402))

(assert (=> b!5125879 m!6188402))

(assert (=> b!5125879 m!6188402))

(declare-fun m!6189730 () Bool)

(assert (=> b!5125879 m!6189730))

(assert (=> bm!356762 d!1658090))

(declare-fun d!1658092 () Bool)

(assert (=> d!1658092 (= (isEmpty!31956 knownP!20) ((_ is Nil!59287) knownP!20))))

(assert (=> d!1657374 d!1658092))

(declare-fun b!5125882 () Bool)

(declare-fun res!2182557 () Bool)

(declare-fun e!3196700 () Bool)

(assert (=> b!5125882 (=> (not res!2182557) (not e!3196700))))

(assert (=> b!5125882 (= res!2182557 (= (head!10957 (tail!10092 lt!2113214)) (head!10957 (tail!10092 knownP!20))))))

(declare-fun b!5125881 () Bool)

(declare-fun e!3196698 () Bool)

(assert (=> b!5125881 (= e!3196698 e!3196700)))

(declare-fun res!2182555 () Bool)

(assert (=> b!5125881 (=> (not res!2182555) (not e!3196700))))

(assert (=> b!5125881 (= res!2182555 (not ((_ is Nil!59287) (tail!10092 knownP!20))))))

(declare-fun b!5125884 () Bool)

(declare-fun e!3196699 () Bool)

(assert (=> b!5125884 (= e!3196699 (>= (size!39547 (tail!10092 knownP!20)) (size!39547 (tail!10092 lt!2113214))))))

(declare-fun b!5125883 () Bool)

(assert (=> b!5125883 (= e!3196700 (isPrefix!5646 (tail!10092 (tail!10092 lt!2113214)) (tail!10092 (tail!10092 knownP!20))))))

(declare-fun d!1658094 () Bool)

(assert (=> d!1658094 e!3196699))

(declare-fun res!2182556 () Bool)

(assert (=> d!1658094 (=> res!2182556 e!3196699)))

(declare-fun lt!2113880 () Bool)

(assert (=> d!1658094 (= res!2182556 (not lt!2113880))))

(assert (=> d!1658094 (= lt!2113880 e!3196698)))

(declare-fun res!2182558 () Bool)

(assert (=> d!1658094 (=> res!2182558 e!3196698)))

(assert (=> d!1658094 (= res!2182558 ((_ is Nil!59287) (tail!10092 lt!2113214)))))

(assert (=> d!1658094 (= (isPrefix!5646 (tail!10092 lt!2113214) (tail!10092 knownP!20)) lt!2113880)))

(assert (= (and d!1658094 (not res!2182558)) b!5125881))

(assert (= (and b!5125881 res!2182555) b!5125882))

(assert (= (and b!5125882 res!2182557) b!5125883))

(assert (= (and d!1658094 (not res!2182556)) b!5125884))

(assert (=> b!5125882 m!6188484))

(assert (=> b!5125882 m!6189526))

(assert (=> b!5125882 m!6187962))

(assert (=> b!5125882 m!6189392))

(assert (=> b!5125884 m!6187962))

(assert (=> b!5125884 m!6189510))

(assert (=> b!5125884 m!6188484))

(assert (=> b!5125884 m!6189532))

(assert (=> b!5125883 m!6188484))

(assert (=> b!5125883 m!6189534))

(assert (=> b!5125883 m!6187962))

(assert (=> b!5125883 m!6189396))

(assert (=> b!5125883 m!6189534))

(assert (=> b!5125883 m!6189396))

(declare-fun m!6189732 () Bool)

(assert (=> b!5125883 m!6189732))

(assert (=> b!5125273 d!1658094))

(assert (=> b!5125273 d!1658004))

(assert (=> b!5125273 d!1657934))

(declare-fun d!1658096 () Bool)

(assert (=> d!1658096 (= (head!10957 lt!2113214) (h!65735 lt!2113214))))

(assert (=> b!5125268 d!1658096))

(assert (=> b!5125268 d!1657938))

(declare-fun d!1658098 () Bool)

(assert (=> d!1658098 (= (tail!10092 lt!2113191) (t!372436 lt!2113191))))

(assert (=> bm!356771 d!1658098))

(declare-fun d!1658100 () Bool)

(declare-fun lt!2113881 () Int)

(assert (=> d!1658100 (>= lt!2113881 0)))

(declare-fun e!3196701 () Int)

(assert (=> d!1658100 (= lt!2113881 e!3196701)))

(declare-fun c!881250 () Bool)

(assert (=> d!1658100 (= c!881250 ((_ is Nil!59287) (t!372436 knownP!20)))))

(assert (=> d!1658100 (= (size!39547 (t!372436 knownP!20)) lt!2113881)))

(declare-fun b!5125885 () Bool)

(assert (=> b!5125885 (= e!3196701 0)))

(declare-fun b!5125886 () Bool)

(assert (=> b!5125886 (= e!3196701 (+ 1 (size!39547 (t!372436 (t!372436 knownP!20)))))))

(assert (= (and d!1658100 c!881250) b!5125885))

(assert (= (and d!1658100 (not c!881250)) b!5125886))

(declare-fun m!6189734 () Bool)

(assert (=> b!5125886 m!6189734))

(assert (=> b!5125230 d!1658100))

(declare-fun d!1658102 () Bool)

(declare-fun lt!2113882 () Int)

(assert (=> d!1658102 (>= lt!2113882 0)))

(declare-fun e!3196702 () Int)

(assert (=> d!1658102 (= lt!2113882 e!3196702)))

(declare-fun c!881251 () Bool)

(assert (=> d!1658102 (= c!881251 ((_ is Nil!59287) lt!2113571))))

(assert (=> d!1658102 (= (size!39547 lt!2113571) lt!2113882)))

(declare-fun b!5125887 () Bool)

(assert (=> b!5125887 (= e!3196702 0)))

(declare-fun b!5125888 () Bool)

(assert (=> b!5125888 (= e!3196702 (+ 1 (size!39547 (t!372436 lt!2113571))))))

(assert (= (and d!1658102 c!881251) b!5125887))

(assert (= (and d!1658102 (not c!881251)) b!5125888))

(declare-fun m!6189736 () Bool)

(assert (=> b!5125888 m!6189736))

(assert (=> b!5125279 d!1658102))

(assert (=> b!5125279 d!1657508))

(assert (=> b!5125279 d!1658076))

(declare-fun lt!2113883 () List!59411)

(declare-fun b!5125892 () Bool)

(declare-fun e!3196704 () Bool)

(assert (=> b!5125892 (= e!3196704 (or (not (= lt!2113566 Nil!59287)) (= lt!2113883 testedP!265)))))

(declare-fun d!1658104 () Bool)

(assert (=> d!1658104 e!3196704))

(declare-fun res!2182559 () Bool)

(assert (=> d!1658104 (=> (not res!2182559) (not e!3196704))))

(assert (=> d!1658104 (= res!2182559 (= (content!10549 lt!2113883) ((_ map or) (content!10549 testedP!265) (content!10549 lt!2113566))))))

(declare-fun e!3196703 () List!59411)

(assert (=> d!1658104 (= lt!2113883 e!3196703)))

(declare-fun c!881252 () Bool)

(assert (=> d!1658104 (= c!881252 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1658104 (= (++!13054 testedP!265 lt!2113566) lt!2113883)))

(declare-fun b!5125891 () Bool)

(declare-fun res!2182560 () Bool)

(assert (=> b!5125891 (=> (not res!2182560) (not e!3196704))))

(assert (=> b!5125891 (= res!2182560 (= (size!39547 lt!2113883) (+ (size!39547 testedP!265) (size!39547 lt!2113566))))))

(declare-fun b!5125890 () Bool)

(assert (=> b!5125890 (= e!3196703 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) lt!2113566)))))

(declare-fun b!5125889 () Bool)

(assert (=> b!5125889 (= e!3196703 lt!2113566)))

(assert (= (and d!1658104 c!881252) b!5125889))

(assert (= (and d!1658104 (not c!881252)) b!5125890))

(assert (= (and d!1658104 res!2182559) b!5125891))

(assert (= (and b!5125891 res!2182560) b!5125892))

(declare-fun m!6189738 () Bool)

(assert (=> d!1658104 m!6189738))

(assert (=> d!1658104 m!6188166))

(declare-fun m!6189740 () Bool)

(assert (=> d!1658104 m!6189740))

(declare-fun m!6189742 () Bool)

(assert (=> b!5125891 m!6189742))

(assert (=> b!5125891 m!6187864))

(declare-fun m!6189744 () Bool)

(assert (=> b!5125891 m!6189744))

(declare-fun m!6189746 () Bool)

(assert (=> b!5125890 m!6189746))

(assert (=> d!1657530 d!1658104))

(assert (=> d!1657530 d!1657558))

(assert (=> d!1657530 d!1657506))

(declare-fun d!1658106 () Bool)

(declare-fun c!881253 () Bool)

(assert (=> d!1658106 (= c!881253 ((_ is Nil!59287) lt!2113357))))

(declare-fun e!3196705 () (InoxSet C!28748))

(assert (=> d!1658106 (= (content!10549 lt!2113357) e!3196705)))

(declare-fun b!5125893 () Bool)

(assert (=> b!5125893 (= e!3196705 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125894 () Bool)

(assert (=> b!5125894 (= e!3196705 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113357) true) (content!10549 (t!372436 lt!2113357))))))

(assert (= (and d!1658106 c!881253) b!5125893))

(assert (= (and d!1658106 (not c!881253)) b!5125894))

(declare-fun m!6189748 () Bool)

(assert (=> b!5125894 m!6189748))

(declare-fun m!6189750 () Bool)

(assert (=> b!5125894 m!6189750))

(assert (=> d!1657430 d!1658106))

(declare-fun d!1658108 () Bool)

(declare-fun c!881254 () Bool)

(assert (=> d!1658108 (= c!881254 ((_ is Nil!59287) lt!2113214))))

(declare-fun e!3196706 () (InoxSet C!28748))

(assert (=> d!1658108 (= (content!10549 lt!2113214) e!3196706)))

(declare-fun b!5125895 () Bool)

(assert (=> b!5125895 (= e!3196706 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125896 () Bool)

(assert (=> b!5125896 (= e!3196706 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113214) true) (content!10549 (t!372436 lt!2113214))))))

(assert (= (and d!1658108 c!881254) b!5125895))

(assert (= (and d!1658108 (not c!881254)) b!5125896))

(declare-fun m!6189752 () Bool)

(assert (=> b!5125896 m!6189752))

(assert (=> b!5125896 m!6189312))

(assert (=> d!1657430 d!1658108))

(assert (=> d!1657430 d!1657944))

(declare-fun d!1658110 () Bool)

(declare-fun c!881255 () Bool)

(assert (=> d!1658110 (= c!881255 ((_ is Nil!59287) lt!2113394))))

(declare-fun e!3196707 () (InoxSet C!28748))

(assert (=> d!1658110 (= (content!10549 lt!2113394) e!3196707)))

(declare-fun b!5125897 () Bool)

(assert (=> b!5125897 (= e!3196707 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125898 () Bool)

(assert (=> b!5125898 (= e!3196707 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113394) true) (content!10549 (t!372436 lt!2113394))))))

(assert (= (and d!1658110 c!881255) b!5125897))

(assert (= (and d!1658110 (not c!881255)) b!5125898))

(declare-fun m!6189754 () Bool)

(assert (=> b!5125898 m!6189754))

(declare-fun m!6189756 () Bool)

(assert (=> b!5125898 m!6189756))

(assert (=> d!1657448 d!1658110))

(assert (=> d!1657448 d!1657898))

(declare-fun d!1658112 () Bool)

(declare-fun c!881256 () Bool)

(assert (=> d!1658112 (= c!881256 ((_ is Nil!59287) lt!2113213))))

(declare-fun e!3196708 () (InoxSet C!28748))

(assert (=> d!1658112 (= (content!10549 lt!2113213) e!3196708)))

(declare-fun b!5125899 () Bool)

(assert (=> b!5125899 (= e!3196708 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125900 () Bool)

(assert (=> b!5125900 (= e!3196708 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113213) true) (content!10549 (t!372436 lt!2113213))))))

(assert (= (and d!1658112 c!881256) b!5125899))

(assert (= (and d!1658112 (not c!881256)) b!5125900))

(declare-fun m!6189758 () Bool)

(assert (=> b!5125900 m!6189758))

(declare-fun m!6189760 () Bool)

(assert (=> b!5125900 m!6189760))

(assert (=> d!1657448 d!1658112))

(declare-fun d!1658114 () Bool)

(declare-fun lt!2113884 () List!59411)

(assert (=> d!1658114 (= (++!13054 (t!372436 knownP!20) lt!2113884) (tail!10092 input!5745))))

(declare-fun e!3196709 () List!59411)

(assert (=> d!1658114 (= lt!2113884 e!3196709)))

(declare-fun c!881257 () Bool)

(assert (=> d!1658114 (= c!881257 ((_ is Cons!59287) (t!372436 knownP!20)))))

(assert (=> d!1658114 (>= (size!39547 (tail!10092 input!5745)) (size!39547 (t!372436 knownP!20)))))

(assert (=> d!1658114 (= (getSuffix!3318 (tail!10092 input!5745) (t!372436 knownP!20)) lt!2113884)))

(declare-fun b!5125901 () Bool)

(assert (=> b!5125901 (= e!3196709 (getSuffix!3318 (tail!10092 (tail!10092 input!5745)) (t!372436 (t!372436 knownP!20))))))

(declare-fun b!5125902 () Bool)

(assert (=> b!5125902 (= e!3196709 (tail!10092 input!5745))))

(assert (= (and d!1658114 c!881257) b!5125901))

(assert (= (and d!1658114 (not c!881257)) b!5125902))

(declare-fun m!6189762 () Bool)

(assert (=> d!1658114 m!6189762))

(assert (=> d!1658114 m!6188402))

(assert (=> d!1658114 m!6189530))

(assert (=> d!1658114 m!6188410))

(assert (=> b!5125901 m!6188402))

(assert (=> b!5125901 m!6189536))

(assert (=> b!5125901 m!6189536))

(declare-fun m!6189764 () Bool)

(assert (=> b!5125901 m!6189764))

(assert (=> b!5125281 d!1658114))

(assert (=> b!5125281 d!1658006))

(declare-fun b!5125904 () Bool)

(declare-fun res!2182563 () Bool)

(declare-fun e!3196712 () Bool)

(assert (=> b!5125904 (=> (not res!2182563) (not e!3196712))))

(assert (=> b!5125904 (= res!2182563 (= (head!10957 (tail!10092 knownP!20)) (head!10957 (tail!10092 input!5745))))))

(declare-fun b!5125903 () Bool)

(declare-fun e!3196710 () Bool)

(assert (=> b!5125903 (= e!3196710 e!3196712)))

(declare-fun res!2182561 () Bool)

(assert (=> b!5125903 (=> (not res!2182561) (not e!3196712))))

(assert (=> b!5125903 (= res!2182561 (not ((_ is Nil!59287) (tail!10092 input!5745))))))

(declare-fun b!5125906 () Bool)

(declare-fun e!3196711 () Bool)

(assert (=> b!5125906 (= e!3196711 (>= (size!39547 (tail!10092 input!5745)) (size!39547 (tail!10092 knownP!20))))))

(declare-fun b!5125905 () Bool)

(assert (=> b!5125905 (= e!3196712 (isPrefix!5646 (tail!10092 (tail!10092 knownP!20)) (tail!10092 (tail!10092 input!5745))))))

(declare-fun d!1658116 () Bool)

(assert (=> d!1658116 e!3196711))

(declare-fun res!2182562 () Bool)

(assert (=> d!1658116 (=> res!2182562 e!3196711)))

(declare-fun lt!2113885 () Bool)

(assert (=> d!1658116 (= res!2182562 (not lt!2113885))))

(assert (=> d!1658116 (= lt!2113885 e!3196710)))

(declare-fun res!2182564 () Bool)

(assert (=> d!1658116 (=> res!2182564 e!3196710)))

(assert (=> d!1658116 (= res!2182564 ((_ is Nil!59287) (tail!10092 knownP!20)))))

(assert (=> d!1658116 (= (isPrefix!5646 (tail!10092 knownP!20) (tail!10092 input!5745)) lt!2113885)))

(assert (= (and d!1658116 (not res!2182564)) b!5125903))

(assert (= (and b!5125903 res!2182561) b!5125904))

(assert (= (and b!5125904 res!2182563) b!5125905))

(assert (= (and d!1658116 (not res!2182562)) b!5125906))

(assert (=> b!5125904 m!6187962))

(assert (=> b!5125904 m!6189392))

(assert (=> b!5125904 m!6188402))

(assert (=> b!5125904 m!6189528))

(assert (=> b!5125906 m!6188402))

(assert (=> b!5125906 m!6189530))

(assert (=> b!5125906 m!6187962))

(assert (=> b!5125906 m!6189510))

(assert (=> b!5125905 m!6187962))

(assert (=> b!5125905 m!6189396))

(assert (=> b!5125905 m!6188402))

(assert (=> b!5125905 m!6189536))

(assert (=> b!5125905 m!6189396))

(assert (=> b!5125905 m!6189536))

(declare-fun m!6189766 () Bool)

(assert (=> b!5125905 m!6189766))

(assert (=> b!5125233 d!1658116))

(assert (=> b!5125233 d!1657934))

(assert (=> b!5125233 d!1658006))

(declare-fun d!1658118 () Bool)

(declare-fun lt!2113886 () List!59411)

(assert (=> d!1658118 (= (++!13054 (t!372436 testedP!265) lt!2113886) (tail!10092 input!5745))))

(declare-fun e!3196713 () List!59411)

(assert (=> d!1658118 (= lt!2113886 e!3196713)))

(declare-fun c!881258 () Bool)

(assert (=> d!1658118 (= c!881258 ((_ is Cons!59287) (t!372436 testedP!265)))))

(assert (=> d!1658118 (>= (size!39547 (tail!10092 input!5745)) (size!39547 (t!372436 testedP!265)))))

(assert (=> d!1658118 (= (getSuffix!3318 (tail!10092 input!5745) (t!372436 testedP!265)) lt!2113886)))

(declare-fun b!5125907 () Bool)

(assert (=> b!5125907 (= e!3196713 (getSuffix!3318 (tail!10092 (tail!10092 input!5745)) (t!372436 (t!372436 testedP!265))))))

(declare-fun b!5125908 () Bool)

(assert (=> b!5125908 (= e!3196713 (tail!10092 input!5745))))

(assert (= (and d!1658118 c!881258) b!5125907))

(assert (= (and d!1658118 (not c!881258)) b!5125908))

(declare-fun m!6189768 () Bool)

(assert (=> d!1658118 m!6189768))

(assert (=> d!1658118 m!6188402))

(assert (=> d!1658118 m!6189530))

(assert (=> d!1658118 m!6188408))

(assert (=> b!5125907 m!6188402))

(assert (=> b!5125907 m!6189536))

(assert (=> b!5125907 m!6189536))

(declare-fun m!6189770 () Bool)

(assert (=> b!5125907 m!6189770))

(assert (=> b!5125265 d!1658118))

(assert (=> b!5125265 d!1658006))

(declare-fun bs!1193936 () Bool)

(declare-fun d!1658120 () Bool)

(assert (= bs!1193936 (and d!1658120 d!1657386)))

(declare-fun lambda!251799 () Int)

(assert (=> bs!1193936 (not (= lambda!251799 lambda!251725))))

(declare-fun bs!1193937 () Bool)

(assert (= bs!1193937 (and d!1658120 d!1657888)))

(assert (=> bs!1193937 (= lambda!251799 lambda!251773)))

(declare-fun bs!1193938 () Bool)

(assert (= bs!1193938 (and d!1658120 b!5125024)))

(assert (=> bs!1193938 (not (= lambda!251799 lambda!251726))))

(declare-fun bs!1193939 () Bool)

(assert (= bs!1193939 (and d!1658120 b!5125828)))

(assert (=> bs!1193939 (not (= lambda!251799 lambda!251794))))

(declare-fun bs!1193940 () Bool)

(assert (= bs!1193940 (and d!1658120 b!5125827)))

(assert (=> bs!1193940 (not (= lambda!251799 lambda!251793))))

(declare-fun bs!1193941 () Bool)

(assert (= bs!1193941 (and d!1658120 b!5125025)))

(assert (=> bs!1193941 (not (= lambda!251799 lambda!251727))))

(declare-fun bs!1193942 () Bool)

(assert (= bs!1193942 (and d!1658120 d!1658036)))

(assert (=> bs!1193942 (not (= lambda!251799 lambda!251791))))

(declare-fun bs!1193943 () Bool)

(assert (= bs!1193943 (and d!1658120 d!1657908)))

(assert (=> bs!1193943 (= (= lambda!251725 (ite c!880972 lambda!251726 lambda!251727)) (= lambda!251799 lambda!251783))))

(declare-fun bs!1193944 () Bool)

(assert (= bs!1193944 (and d!1658120 d!1657904)))

(assert (=> bs!1193944 (not (= lambda!251799 lambda!251780))))

(declare-fun bs!1193945 () Bool)

(assert (= bs!1193945 (and d!1658120 d!1658050)))

(assert (=> bs!1193945 (not (= lambda!251799 lambda!251792))))

(assert (=> d!1658120 true))

(assert (=> d!1658120 (< (dynLambda!23614 order!26805 lambda!251725) (dynLambda!23614 order!26805 lambda!251799))))

(assert (=> d!1658120 (exists!1495 lt!2113329 lambda!251799)))

(declare-fun lt!2113889 () Unit!150433)

(declare-fun choose!37746 (List!59414 Int) Unit!150433)

(assert (=> d!1658120 (= lt!2113889 (choose!37746 lt!2113329 lambda!251725))))

(assert (=> d!1658120 (not (forall!13642 lt!2113329 lambda!251725))))

(assert (=> d!1658120 (= (lemmaNotForallThenExists!348 lt!2113329 lambda!251725) lt!2113889)))

(declare-fun bs!1193946 () Bool)

(assert (= bs!1193946 d!1658120))

(declare-fun m!6189772 () Bool)

(assert (=> bs!1193946 m!6189772))

(declare-fun m!6189774 () Bool)

(assert (=> bs!1193946 m!6189774))

(declare-fun m!6189776 () Bool)

(assert (=> bs!1193946 m!6189776))

(assert (=> b!5125024 d!1658120))

(assert (=> b!5125250 d!1657558))

(assert (=> b!5125250 d!1657506))

(declare-fun bs!1193947 () Bool)

(declare-fun d!1658122 () Bool)

(assert (= bs!1193947 (and d!1658122 d!1657386)))

(declare-fun lambda!251800 () Int)

(assert (=> bs!1193947 (not (= lambda!251800 lambda!251725))))

(declare-fun bs!1193948 () Bool)

(assert (= bs!1193948 (and d!1658122 d!1657888)))

(assert (=> bs!1193948 (not (= lambda!251800 lambda!251773))))

(declare-fun bs!1193949 () Bool)

(assert (= bs!1193949 (and d!1658122 b!5125024)))

(assert (=> bs!1193949 (not (= lambda!251800 lambda!251726))))

(declare-fun bs!1193950 () Bool)

(assert (= bs!1193950 (and d!1658122 d!1658120)))

(assert (=> bs!1193950 (not (= lambda!251800 lambda!251799))))

(declare-fun bs!1193951 () Bool)

(assert (= bs!1193951 (and d!1658122 b!5125828)))

(assert (=> bs!1193951 (not (= lambda!251800 lambda!251794))))

(declare-fun bs!1193952 () Bool)

(assert (= bs!1193952 (and d!1658122 b!5125827)))

(assert (=> bs!1193952 (not (= lambda!251800 lambda!251793))))

(declare-fun bs!1193953 () Bool)

(assert (= bs!1193953 (and d!1658122 b!5125025)))

(assert (=> bs!1193953 (not (= lambda!251800 lambda!251727))))

(declare-fun bs!1193954 () Bool)

(assert (= bs!1193954 (and d!1658122 d!1658036)))

(assert (=> bs!1193954 (= lambda!251800 lambda!251791)))

(declare-fun bs!1193955 () Bool)

(assert (= bs!1193955 (and d!1658122 d!1657908)))

(assert (=> bs!1193955 (not (= lambda!251800 lambda!251783))))

(declare-fun bs!1193956 () Bool)

(assert (= bs!1193956 (and d!1658122 d!1657904)))

(assert (=> bs!1193956 (not (= lambda!251800 lambda!251780))))

(declare-fun bs!1193957 () Bool)

(assert (= bs!1193957 (and d!1658122 d!1658050)))

(assert (=> bs!1193957 (not (= lambda!251800 lambda!251792))))

(assert (=> d!1658122 (= (nullableZipper!1038 z!4463) (exists!1497 z!4463 lambda!251800))))

(declare-fun bs!1193958 () Bool)

(assert (= bs!1193958 d!1658122))

(declare-fun m!6189778 () Bool)

(assert (=> bs!1193958 m!6189778))

(assert (=> b!5125050 d!1658122))

(declare-fun d!1658124 () Bool)

(declare-fun c!881259 () Bool)

(assert (=> d!1658124 (= c!881259 ((_ is Nil!59287) lt!2113576))))

(declare-fun e!3196716 () (InoxSet C!28748))

(assert (=> d!1658124 (= (content!10549 lt!2113576) e!3196716)))

(declare-fun b!5125909 () Bool)

(assert (=> b!5125909 (= e!3196716 ((as const (Array C!28748 Bool)) false))))

(declare-fun b!5125910 () Bool)

(assert (=> b!5125910 (= e!3196716 ((_ map or) (store ((as const (Array C!28748 Bool)) false) (h!65735 lt!2113576) true) (content!10549 (t!372436 lt!2113576))))))

(assert (= (and d!1658124 c!881259) b!5125909))

(assert (= (and d!1658124 (not c!881259)) b!5125910))

(declare-fun m!6189780 () Bool)

(assert (=> b!5125910 m!6189780))

(declare-fun m!6189782 () Bool)

(assert (=> b!5125910 m!6189782))

(assert (=> d!1657550 d!1658124))

(assert (=> d!1657550 d!1657898))

(assert (=> d!1657550 d!1657942))

(declare-fun lt!2113890 () List!59411)

(declare-fun b!5125914 () Bool)

(declare-fun e!3196718 () Bool)

(assert (=> b!5125914 (= e!3196718 (or (not (= lt!2113572 Nil!59287)) (= lt!2113890 knownP!20)))))

(declare-fun d!1658126 () Bool)

(assert (=> d!1658126 e!3196718))

(declare-fun res!2182565 () Bool)

(assert (=> d!1658126 (=> (not res!2182565) (not e!3196718))))

(assert (=> d!1658126 (= res!2182565 (= (content!10549 lt!2113890) ((_ map or) (content!10549 knownP!20) (content!10549 lt!2113572))))))

(declare-fun e!3196717 () List!59411)

(assert (=> d!1658126 (= lt!2113890 e!3196717)))

(declare-fun c!881260 () Bool)

(assert (=> d!1658126 (= c!881260 ((_ is Nil!59287) knownP!20))))

(assert (=> d!1658126 (= (++!13054 knownP!20 lt!2113572) lt!2113890)))

(declare-fun b!5125913 () Bool)

(declare-fun res!2182566 () Bool)

(assert (=> b!5125913 (=> (not res!2182566) (not e!3196718))))

(assert (=> b!5125913 (= res!2182566 (= (size!39547 lt!2113890) (+ (size!39547 knownP!20) (size!39547 lt!2113572))))))

(declare-fun b!5125912 () Bool)

(assert (=> b!5125912 (= e!3196717 (Cons!59287 (h!65735 knownP!20) (++!13054 (t!372436 knownP!20) lt!2113572)))))

(declare-fun b!5125911 () Bool)

(assert (=> b!5125911 (= e!3196717 lt!2113572)))

(assert (= (and d!1658126 c!881260) b!5125911))

(assert (= (and d!1658126 (not c!881260)) b!5125912))

(assert (= (and d!1658126 res!2182565) b!5125913))

(assert (= (and b!5125913 res!2182566) b!5125914))

(declare-fun m!6189784 () Bool)

(assert (=> d!1658126 m!6189784))

(assert (=> d!1658126 m!6188496))

(declare-fun m!6189786 () Bool)

(assert (=> d!1658126 m!6189786))

(declare-fun m!6189788 () Bool)

(assert (=> b!5125913 m!6189788))

(assert (=> b!5125913 m!6187866))

(declare-fun m!6189790 () Bool)

(assert (=> b!5125913 m!6189790))

(declare-fun m!6189792 () Bool)

(assert (=> b!5125912 m!6189792))

(assert (=> d!1657542 d!1658126))

(assert (=> d!1657542 d!1657558))

(assert (=> d!1657542 d!1657508))

(declare-fun d!1658128 () Bool)

(assert (=> d!1658128 (= input!5745 testedP!265)))

(declare-fun lt!2113891 () Unit!150433)

(assert (=> d!1658128 (= lt!2113891 (choose!37737 input!5745 testedP!265 input!5745))))

(assert (=> d!1658128 (isPrefix!5646 input!5745 input!5745)))

(assert (=> d!1658128 (= (lemmaIsPrefixSameLengthThenSameList!1350 input!5745 testedP!265 input!5745) lt!2113891)))

(declare-fun bs!1193959 () Bool)

(assert (= bs!1193959 d!1658128))

(declare-fun m!6189794 () Bool)

(assert (=> bs!1193959 m!6189794))

(assert (=> bs!1193959 m!6188304))

(assert (=> bm!356772 d!1658128))

(declare-fun d!1658130 () Bool)

(declare-fun lt!2113892 () Int)

(assert (=> d!1658130 (>= lt!2113892 0)))

(declare-fun e!3196719 () Int)

(assert (=> d!1658130 (= lt!2113892 e!3196719)))

(declare-fun c!881261 () Bool)

(assert (=> d!1658130 (= c!881261 ((_ is Nil!59287) (t!372436 input!5745)))))

(assert (=> d!1658130 (= (size!39547 (t!372436 input!5745)) lt!2113892)))

(declare-fun b!5125915 () Bool)

(assert (=> b!5125915 (= e!3196719 0)))

(declare-fun b!5125916 () Bool)

(assert (=> b!5125916 (= e!3196719 (+ 1 (size!39547 (t!372436 (t!372436 input!5745)))))))

(assert (= (and d!1658130 c!881261) b!5125915))

(assert (= (and d!1658130 (not c!881261)) b!5125916))

(declare-fun m!6189796 () Bool)

(assert (=> b!5125916 m!6189796))

(assert (=> b!5125292 d!1658130))

(declare-fun lt!2113893 () List!59411)

(declare-fun e!3196721 () Bool)

(declare-fun b!5125920 () Bool)

(assert (=> b!5125920 (= e!3196721 (or (not (= lt!2113195 Nil!59287)) (= lt!2113893 (t!372436 lt!2113200))))))

(declare-fun d!1658132 () Bool)

(assert (=> d!1658132 e!3196721))

(declare-fun res!2182567 () Bool)

(assert (=> d!1658132 (=> (not res!2182567) (not e!3196721))))

(assert (=> d!1658132 (= res!2182567 (= (content!10549 lt!2113893) ((_ map or) (content!10549 (t!372436 lt!2113200)) (content!10549 lt!2113195))))))

(declare-fun e!3196720 () List!59411)

(assert (=> d!1658132 (= lt!2113893 e!3196720)))

(declare-fun c!881262 () Bool)

(assert (=> d!1658132 (= c!881262 ((_ is Nil!59287) (t!372436 lt!2113200)))))

(assert (=> d!1658132 (= (++!13054 (t!372436 lt!2113200) lt!2113195) lt!2113893)))

(declare-fun b!5125919 () Bool)

(declare-fun res!2182568 () Bool)

(assert (=> b!5125919 (=> (not res!2182568) (not e!3196721))))

(assert (=> b!5125919 (= res!2182568 (= (size!39547 lt!2113893) (+ (size!39547 (t!372436 lt!2113200)) (size!39547 lt!2113195))))))

(declare-fun b!5125918 () Bool)

(assert (=> b!5125918 (= e!3196720 (Cons!59287 (h!65735 (t!372436 lt!2113200)) (++!13054 (t!372436 (t!372436 lt!2113200)) lt!2113195)))))

(declare-fun b!5125917 () Bool)

(assert (=> b!5125917 (= e!3196720 lt!2113195)))

(assert (= (and d!1658132 c!881262) b!5125917))

(assert (= (and d!1658132 (not c!881262)) b!5125918))

(assert (= (and d!1658132 res!2182567) b!5125919))

(assert (= (and b!5125919 res!2182568) b!5125920))

(declare-fun m!6189798 () Bool)

(assert (=> d!1658132 m!6189798))

(assert (=> d!1658132 m!6189592))

(assert (=> d!1658132 m!6188180))

(declare-fun m!6189800 () Bool)

(assert (=> b!5125919 m!6189800))

(assert (=> b!5125919 m!6189694))

(assert (=> b!5125919 m!6188186))

(declare-fun m!6189802 () Bool)

(assert (=> b!5125918 m!6189802))

(assert (=> b!5125258 d!1658132))

(declare-fun d!1658134 () Bool)

(declare-fun lt!2113894 () Int)

(assert (=> d!1658134 (>= lt!2113894 0)))

(declare-fun e!3196722 () Int)

(assert (=> d!1658134 (= lt!2113894 e!3196722)))

(declare-fun c!881263 () Bool)

(assert (=> d!1658134 (= c!881263 ((_ is Nil!59287) lt!2113394))))

(assert (=> d!1658134 (= (size!39547 lt!2113394) lt!2113894)))

(declare-fun b!5125921 () Bool)

(assert (=> b!5125921 (= e!3196722 0)))

(declare-fun b!5125922 () Bool)

(assert (=> b!5125922 (= e!3196722 (+ 1 (size!39547 (t!372436 lt!2113394))))))

(assert (= (and d!1658134 c!881263) b!5125921))

(assert (= (and d!1658134 (not c!881263)) b!5125922))

(declare-fun m!6189804 () Bool)

(assert (=> b!5125922 m!6189804))

(assert (=> b!5125088 d!1658134))

(assert (=> b!5125088 d!1657506))

(declare-fun d!1658136 () Bool)

(declare-fun lt!2113895 () Int)

(assert (=> d!1658136 (>= lt!2113895 0)))

(declare-fun e!3196723 () Int)

(assert (=> d!1658136 (= lt!2113895 e!3196723)))

(declare-fun c!881264 () Bool)

(assert (=> d!1658136 (= c!881264 ((_ is Nil!59287) lt!2113213))))

(assert (=> d!1658136 (= (size!39547 lt!2113213) lt!2113895)))

(declare-fun b!5125923 () Bool)

(assert (=> b!5125923 (= e!3196723 0)))

(declare-fun b!5125924 () Bool)

(assert (=> b!5125924 (= e!3196723 (+ 1 (size!39547 (t!372436 lt!2113213))))))

(assert (= (and d!1658136 c!881264) b!5125923))

(assert (= (and d!1658136 (not c!881264)) b!5125924))

(declare-fun m!6189806 () Bool)

(assert (=> b!5125924 m!6189806))

(assert (=> b!5125088 d!1658136))

(declare-fun b!5125926 () Bool)

(declare-fun res!2182571 () Bool)

(declare-fun e!3196726 () Bool)

(assert (=> b!5125926 (=> (not res!2182571) (not e!3196726))))

(assert (=> b!5125926 (= res!2182571 (= (head!10957 (tail!10092 testedP!265)) (head!10957 (tail!10092 knownP!20))))))

(declare-fun b!5125925 () Bool)

(declare-fun e!3196724 () Bool)

(assert (=> b!5125925 (= e!3196724 e!3196726)))

(declare-fun res!2182569 () Bool)

(assert (=> b!5125925 (=> (not res!2182569) (not e!3196726))))

(assert (=> b!5125925 (= res!2182569 (not ((_ is Nil!59287) (tail!10092 knownP!20))))))

(declare-fun b!5125928 () Bool)

(declare-fun e!3196725 () Bool)

(assert (=> b!5125928 (= e!3196725 (>= (size!39547 (tail!10092 knownP!20)) (size!39547 (tail!10092 testedP!265))))))

(declare-fun b!5125927 () Bool)

(assert (=> b!5125927 (= e!3196726 (isPrefix!5646 (tail!10092 (tail!10092 testedP!265)) (tail!10092 (tail!10092 knownP!20))))))

(declare-fun d!1658138 () Bool)

(assert (=> d!1658138 e!3196725))

(declare-fun res!2182570 () Bool)

(assert (=> d!1658138 (=> res!2182570 e!3196725)))

(declare-fun lt!2113896 () Bool)

(assert (=> d!1658138 (= res!2182570 (not lt!2113896))))

(assert (=> d!1658138 (= lt!2113896 e!3196724)))

(declare-fun res!2182572 () Bool)

(assert (=> d!1658138 (=> res!2182572 e!3196724)))

(assert (=> d!1658138 (= res!2182572 ((_ is Nil!59287) (tail!10092 testedP!265)))))

(assert (=> d!1658138 (= (isPrefix!5646 (tail!10092 testedP!265) (tail!10092 knownP!20)) lt!2113896)))

(assert (= (and d!1658138 (not res!2182572)) b!5125925))

(assert (= (and b!5125925 res!2182569) b!5125926))

(assert (= (and b!5125926 res!2182571) b!5125927))

(assert (= (and d!1658138 (not res!2182570)) b!5125928))

(assert (=> b!5125926 m!6188158))

(declare-fun m!6189808 () Bool)

(assert (=> b!5125926 m!6189808))

(assert (=> b!5125926 m!6187962))

(assert (=> b!5125926 m!6189392))

(assert (=> b!5125928 m!6187962))

(assert (=> b!5125928 m!6189510))

(assert (=> b!5125928 m!6188158))

(declare-fun m!6189810 () Bool)

(assert (=> b!5125928 m!6189810))

(assert (=> b!5125927 m!6188158))

(declare-fun m!6189812 () Bool)

(assert (=> b!5125927 m!6189812))

(assert (=> b!5125927 m!6187962))

(assert (=> b!5125927 m!6189396))

(assert (=> b!5125927 m!6189812))

(assert (=> b!5125927 m!6189396))

(declare-fun m!6189814 () Bool)

(assert (=> b!5125927 m!6189814))

(assert (=> b!5125084 d!1658138))

(declare-fun d!1658140 () Bool)

(assert (=> d!1658140 (= (tail!10092 testedP!265) (t!372436 testedP!265))))

(assert (=> b!5125084 d!1658140))

(assert (=> b!5125084 d!1657934))

(declare-fun d!1658142 () Bool)

(declare-fun lt!2113897 () List!59411)

(assert (=> d!1658142 (= (++!13054 (t!372436 testedP!265) lt!2113897) (tail!10092 knownP!20))))

(declare-fun e!3196727 () List!59411)

(assert (=> d!1658142 (= lt!2113897 e!3196727)))

(declare-fun c!881265 () Bool)

(assert (=> d!1658142 (= c!881265 ((_ is Cons!59287) (t!372436 testedP!265)))))

(assert (=> d!1658142 (>= (size!39547 (tail!10092 knownP!20)) (size!39547 (t!372436 testedP!265)))))

(assert (=> d!1658142 (= (getSuffix!3318 (tail!10092 knownP!20) (t!372436 testedP!265)) lt!2113897)))

(declare-fun b!5125929 () Bool)

(assert (=> b!5125929 (= e!3196727 (getSuffix!3318 (tail!10092 (tail!10092 knownP!20)) (t!372436 (t!372436 testedP!265))))))

(declare-fun b!5125930 () Bool)

(assert (=> b!5125930 (= e!3196727 (tail!10092 knownP!20))))

(assert (= (and d!1658142 c!881265) b!5125929))

(assert (= (and d!1658142 (not c!881265)) b!5125930))

(declare-fun m!6189816 () Bool)

(assert (=> d!1658142 m!6189816))

(assert (=> d!1658142 m!6187962))

(assert (=> d!1658142 m!6189510))

(assert (=> d!1658142 m!6188408))

(assert (=> b!5125929 m!6187962))

(assert (=> b!5125929 m!6189396))

(assert (=> b!5125929 m!6189396))

(declare-fun m!6189818 () Bool)

(assert (=> b!5125929 m!6189818))

(assert (=> b!5125070 d!1658142))

(assert (=> b!5125070 d!1657934))

(declare-fun d!1658144 () Bool)

(assert (=> d!1658144 (= (isEmpty!31956 (_1!35123 lt!2113538)) ((_ is Nil!59287) (_1!35123 lt!2113538)))))

(assert (=> b!5125212 d!1658144))

(declare-fun d!1658146 () Bool)

(declare-fun res!2182573 () Bool)

(declare-fun e!3196728 () Bool)

(assert (=> d!1658146 (=> res!2182573 e!3196728)))

(assert (=> d!1658146 (= res!2182573 ((_ is Nil!59288) (exprs!4125 setElem!30550)))))

(assert (=> d!1658146 (= (forall!13639 (exprs!4125 setElem!30550) lambda!251730) e!3196728)))

(declare-fun b!5125931 () Bool)

(declare-fun e!3196729 () Bool)

(assert (=> b!5125931 (= e!3196728 e!3196729)))

(declare-fun res!2182574 () Bool)

(assert (=> b!5125931 (=> (not res!2182574) (not e!3196729))))

(assert (=> b!5125931 (= res!2182574 (dynLambda!23617 lambda!251730 (h!65736 (exprs!4125 setElem!30550))))))

(declare-fun b!5125932 () Bool)

(assert (=> b!5125932 (= e!3196729 (forall!13639 (t!372437 (exprs!4125 setElem!30550)) lambda!251730))))

(assert (= (and d!1658146 (not res!2182573)) b!5125931))

(assert (= (and b!5125931 res!2182574) b!5125932))

(declare-fun b_lambda!199059 () Bool)

(assert (=> (not b_lambda!199059) (not b!5125931)))

(declare-fun m!6189820 () Bool)

(assert (=> b!5125931 m!6189820))

(declare-fun m!6189822 () Bool)

(assert (=> b!5125932 m!6189822))

(assert (=> d!1657428 d!1658146))

(declare-fun d!1658148 () Bool)

(declare-fun lt!2113898 () List!59411)

(assert (=> d!1658148 (= (++!13054 (t!372436 lt!2113214) lt!2113898) (tail!10092 input!5745))))

(declare-fun e!3196730 () List!59411)

(assert (=> d!1658148 (= lt!2113898 e!3196730)))

(declare-fun c!881266 () Bool)

(assert (=> d!1658148 (= c!881266 ((_ is Cons!59287) (t!372436 lt!2113214)))))

(assert (=> d!1658148 (>= (size!39547 (tail!10092 input!5745)) (size!39547 (t!372436 lt!2113214)))))

(assert (=> d!1658148 (= (getSuffix!3318 (tail!10092 input!5745) (t!372436 lt!2113214)) lt!2113898)))

(declare-fun b!5125933 () Bool)

(assert (=> b!5125933 (= e!3196730 (getSuffix!3318 (tail!10092 (tail!10092 input!5745)) (t!372436 (t!372436 lt!2113214))))))

(declare-fun b!5125934 () Bool)

(assert (=> b!5125934 (= e!3196730 (tail!10092 input!5745))))

(assert (= (and d!1658148 c!881266) b!5125933))

(assert (= (and d!1658148 (not c!881266)) b!5125934))

(declare-fun m!6189824 () Bool)

(assert (=> d!1658148 m!6189824))

(assert (=> d!1658148 m!6188402))

(assert (=> d!1658148 m!6189530))

(assert (=> d!1658148 m!6188352))

(assert (=> b!5125933 m!6188402))

(assert (=> b!5125933 m!6189536))

(assert (=> b!5125933 m!6189536))

(declare-fun m!6189826 () Bool)

(assert (=> b!5125933 m!6189826))

(assert (=> b!5125225 d!1658148))

(assert (=> b!5125225 d!1658006))

(declare-fun b!5125935 () Bool)

(declare-fun e!3196735 () Bool)

(declare-fun e!3196738 () Bool)

(assert (=> b!5125935 (= e!3196735 e!3196738)))

(declare-fun res!2182575 () Bool)

(assert (=> b!5125935 (=> res!2182575 e!3196738)))

(declare-fun lt!2113904 () tuple2!63640)

(assert (=> b!5125935 (= res!2182575 (isEmpty!31956 (_1!35123 lt!2113904)))))

(declare-fun d!1658150 () Bool)

(assert (=> d!1658150 e!3196735))

(declare-fun res!2182576 () Bool)

(assert (=> d!1658150 (=> (not res!2182576) (not e!3196735))))

(assert (=> d!1658150 (= res!2182576 (= (++!13054 (_1!35123 lt!2113904) (_2!35123 lt!2113904)) input!5745))))

(declare-fun e!3196731 () tuple2!63640)

(assert (=> d!1658150 (= lt!2113904 e!3196731)))

(declare-fun c!881272 () Bool)

(assert (=> d!1658150 (= c!881272 (lostCauseZipper!1123 call!356766))))

(declare-fun lt!2113900 () Unit!150433)

(declare-fun Unit!150467 () Unit!150433)

(assert (=> d!1658150 (= lt!2113900 Unit!150467)))

(assert (=> d!1658150 (= (getSuffix!3318 input!5745 lt!2113515) call!356762)))

(declare-fun lt!2113921 () Unit!150433)

(declare-fun lt!2113901 () Unit!150433)

(assert (=> d!1658150 (= lt!2113921 lt!2113901)))

(declare-fun lt!2113918 () List!59411)

(assert (=> d!1658150 (= call!356762 lt!2113918)))

(assert (=> d!1658150 (= lt!2113901 (lemmaSamePrefixThenSameSuffix!2664 lt!2113515 call!356762 lt!2113515 lt!2113918 input!5745))))

(assert (=> d!1658150 (= lt!2113918 (getSuffix!3318 input!5745 lt!2113515))))

(declare-fun lt!2113905 () Unit!150433)

(declare-fun lt!2113916 () Unit!150433)

(assert (=> d!1658150 (= lt!2113905 lt!2113916)))

(assert (=> d!1658150 (isPrefix!5646 lt!2113515 (++!13054 lt!2113515 call!356762))))

(assert (=> d!1658150 (= lt!2113916 (lemmaConcatTwoListThenFirstIsPrefix!3558 lt!2113515 call!356762))))

(assert (=> d!1658150 (= (++!13054 lt!2113515 call!356762) input!5745)))

(assert (=> d!1658150 (= (findLongestMatchInnerZipper!201 call!356766 lt!2113515 (+ (size!39547 lt!2113214) 1) call!356762 input!5745 lt!2113198) lt!2113904)))

(declare-fun b!5125936 () Bool)

(declare-fun e!3196737 () tuple2!63640)

(declare-fun e!3196736 () tuple2!63640)

(assert (=> b!5125936 (= e!3196737 e!3196736)))

(declare-fun lt!2113915 () tuple2!63640)

(declare-fun call!356815 () tuple2!63640)

(assert (=> b!5125936 (= lt!2113915 call!356815)))

(declare-fun c!881271 () Bool)

(assert (=> b!5125936 (= c!881271 (isEmpty!31956 (_1!35123 lt!2113915)))))

(declare-fun b!5125937 () Bool)

(assert (=> b!5125937 (= e!3196738 (>= (size!39547 (_1!35123 lt!2113904)) (size!39547 lt!2113515)))))

(declare-fun b!5125938 () Bool)

(declare-fun e!3196732 () Unit!150433)

(declare-fun Unit!150468 () Unit!150433)

(assert (=> b!5125938 (= e!3196732 Unit!150468)))

(declare-fun lt!2113920 () List!59411)

(declare-fun call!356814 () List!59411)

(declare-fun bm!356809 () Bool)

(declare-fun call!356818 () (InoxSet Context!7250))

(assert (=> bm!356809 (= call!356815 (findLongestMatchInnerZipper!201 call!356818 lt!2113920 (+ (size!39547 lt!2113214) 1 1) call!356814 input!5745 lt!2113198))))

(declare-fun b!5125939 () Bool)

(assert (=> b!5125939 (= e!3196736 (tuple2!63641 lt!2113515 call!356762))))

(declare-fun bm!356810 () Bool)

(declare-fun call!356820 () C!28748)

(assert (=> bm!356810 (= call!356818 (derivationStepZipper!864 call!356766 call!356820))))

(declare-fun b!5125940 () Bool)

(declare-fun Unit!150469 () Unit!150433)

(assert (=> b!5125940 (= e!3196732 Unit!150469)))

(declare-fun lt!2113910 () Unit!150433)

(declare-fun call!356819 () Unit!150433)

(assert (=> b!5125940 (= lt!2113910 call!356819)))

(declare-fun call!356816 () Bool)

(assert (=> b!5125940 call!356816))

(declare-fun lt!2113924 () Unit!150433)

(assert (=> b!5125940 (= lt!2113924 lt!2113910)))

(declare-fun lt!2113912 () Unit!150433)

(declare-fun call!356821 () Unit!150433)

(assert (=> b!5125940 (= lt!2113912 call!356821)))

(assert (=> b!5125940 (= input!5745 lt!2113515)))

(declare-fun lt!2113913 () Unit!150433)

(assert (=> b!5125940 (= lt!2113913 lt!2113912)))

(assert (=> b!5125940 false))

(declare-fun bm!356811 () Bool)

(declare-fun call!356817 () Bool)

(assert (=> bm!356811 (= call!356817 (nullableZipper!1038 call!356766))))

(declare-fun b!5125941 () Bool)

(assert (=> b!5125941 (= e!3196731 (tuple2!63641 Nil!59287 input!5745))))

(declare-fun bm!356812 () Bool)

(assert (=> bm!356812 (= call!356819 (lemmaIsPrefixRefl!3706 input!5745 input!5745))))

(declare-fun bm!356813 () Bool)

(assert (=> bm!356813 (= call!356820 (head!10957 call!356762))))

(declare-fun b!5125942 () Bool)

(declare-fun c!881269 () Bool)

(assert (=> b!5125942 (= c!881269 call!356817)))

(declare-fun lt!2113907 () Unit!150433)

(declare-fun lt!2113903 () Unit!150433)

(assert (=> b!5125942 (= lt!2113907 lt!2113903)))

(assert (=> b!5125942 (= input!5745 lt!2113515)))

(assert (=> b!5125942 (= lt!2113903 call!356821)))

(declare-fun lt!2113922 () Unit!150433)

(declare-fun lt!2113911 () Unit!150433)

(assert (=> b!5125942 (= lt!2113922 lt!2113911)))

(assert (=> b!5125942 call!356816))

(assert (=> b!5125942 (= lt!2113911 call!356819)))

(declare-fun e!3196733 () tuple2!63640)

(declare-fun e!3196734 () tuple2!63640)

(assert (=> b!5125942 (= e!3196733 e!3196734)))

(declare-fun bm!356814 () Bool)

(assert (=> bm!356814 (= call!356816 (isPrefix!5646 input!5745 input!5745))))

(declare-fun b!5125943 () Bool)

(declare-fun c!881268 () Bool)

(assert (=> b!5125943 (= c!881268 call!356817)))

(declare-fun lt!2113906 () Unit!150433)

(declare-fun lt!2113917 () Unit!150433)

(assert (=> b!5125943 (= lt!2113906 lt!2113917)))

(declare-fun lt!2113908 () C!28748)

(declare-fun lt!2113902 () List!59411)

(assert (=> b!5125943 (= (++!13054 (++!13054 lt!2113515 (Cons!59287 lt!2113908 Nil!59287)) lt!2113902) input!5745)))

(assert (=> b!5125943 (= lt!2113917 (lemmaMoveElementToOtherListKeepsConcatEq!1545 lt!2113515 lt!2113908 lt!2113902 input!5745))))

(assert (=> b!5125943 (= lt!2113902 (tail!10092 call!356762))))

(assert (=> b!5125943 (= lt!2113908 (head!10957 call!356762))))

(declare-fun lt!2113899 () Unit!150433)

(declare-fun lt!2113909 () Unit!150433)

(assert (=> b!5125943 (= lt!2113899 lt!2113909)))

(assert (=> b!5125943 (isPrefix!5646 (++!13054 lt!2113515 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113515)) Nil!59287)) input!5745)))

(assert (=> b!5125943 (= lt!2113909 (lemmaAddHeadSuffixToPrefixStillPrefix!1020 lt!2113515 input!5745))))

(assert (=> b!5125943 (= lt!2113920 (++!13054 lt!2113515 (Cons!59287 (head!10957 call!356762) Nil!59287)))))

(declare-fun lt!2113923 () Unit!150433)

(assert (=> b!5125943 (= lt!2113923 e!3196732)))

(declare-fun c!881270 () Bool)

(assert (=> b!5125943 (= c!881270 (= (size!39547 lt!2113515) (size!39547 input!5745)))))

(declare-fun lt!2113914 () Unit!150433)

(declare-fun lt!2113919 () Unit!150433)

(assert (=> b!5125943 (= lt!2113914 lt!2113919)))

(assert (=> b!5125943 (<= (size!39547 lt!2113515) (size!39547 input!5745))))

(assert (=> b!5125943 (= lt!2113919 (lemmaIsPrefixThenSmallerEqSize!860 lt!2113515 input!5745))))

(assert (=> b!5125943 (= e!3196733 e!3196737)))

(declare-fun bm!356815 () Bool)

(assert (=> bm!356815 (= call!356814 (tail!10092 call!356762))))

(declare-fun b!5125944 () Bool)

(assert (=> b!5125944 (= e!3196734 (tuple2!63641 lt!2113515 Nil!59287))))

(declare-fun b!5125945 () Bool)

(assert (=> b!5125945 (= e!3196736 lt!2113915)))

(declare-fun bm!356816 () Bool)

(assert (=> bm!356816 (= call!356821 (lemmaIsPrefixSameLengthThenSameList!1350 input!5745 lt!2113515 input!5745))))

(declare-fun b!5125946 () Bool)

(assert (=> b!5125946 (= e!3196731 e!3196733)))

(declare-fun c!881267 () Bool)

(assert (=> b!5125946 (= c!881267 (= (+ (size!39547 lt!2113214) 1) lt!2113198))))

(declare-fun b!5125947 () Bool)

(assert (=> b!5125947 (= e!3196734 (tuple2!63641 Nil!59287 input!5745))))

(declare-fun b!5125948 () Bool)

(assert (=> b!5125948 (= e!3196737 call!356815)))

(assert (= (and d!1658150 c!881272) b!5125941))

(assert (= (and d!1658150 (not c!881272)) b!5125946))

(assert (= (and b!5125946 c!881267) b!5125942))

(assert (= (and b!5125946 (not c!881267)) b!5125943))

(assert (= (and b!5125942 c!881269) b!5125944))

(assert (= (and b!5125942 (not c!881269)) b!5125947))

(assert (= (and b!5125943 c!881270) b!5125940))

(assert (= (and b!5125943 (not c!881270)) b!5125938))

(assert (= (and b!5125943 c!881268) b!5125936))

(assert (= (and b!5125943 (not c!881268)) b!5125948))

(assert (= (and b!5125936 c!881271) b!5125939))

(assert (= (and b!5125936 (not c!881271)) b!5125945))

(assert (= (or b!5125936 b!5125948) bm!356815))

(assert (= (or b!5125936 b!5125948) bm!356813))

(assert (= (or b!5125936 b!5125948) bm!356810))

(assert (= (or b!5125936 b!5125948) bm!356809))

(assert (= (or b!5125942 b!5125940) bm!356814))

(assert (= (or b!5125942 b!5125940) bm!356812))

(assert (= (or b!5125942 b!5125943) bm!356811))

(assert (= (or b!5125942 b!5125940) bm!356816))

(assert (= (and d!1658150 res!2182576) b!5125935))

(assert (= (and b!5125935 (not res!2182575)) b!5125937))

(assert (=> bm!356814 m!6188304))

(declare-fun m!6189828 () Bool)

(assert (=> d!1658150 m!6189828))

(declare-fun m!6189830 () Bool)

(assert (=> d!1658150 m!6189830))

(declare-fun m!6189832 () Bool)

(assert (=> d!1658150 m!6189832))

(assert (=> d!1658150 m!6189828))

(declare-fun m!6189834 () Bool)

(assert (=> d!1658150 m!6189834))

(declare-fun m!6189836 () Bool)

(assert (=> d!1658150 m!6189836))

(declare-fun m!6189838 () Bool)

(assert (=> d!1658150 m!6189838))

(declare-fun m!6189840 () Bool)

(assert (=> d!1658150 m!6189840))

(declare-fun m!6189842 () Bool)

(assert (=> bm!356815 m!6189842))

(declare-fun m!6189844 () Bool)

(assert (=> bm!356809 m!6189844))

(declare-fun m!6189846 () Bool)

(assert (=> b!5125937 m!6189846))

(declare-fun m!6189848 () Bool)

(assert (=> b!5125937 m!6189848))

(declare-fun m!6189850 () Bool)

(assert (=> b!5125935 m!6189850))

(declare-fun m!6189852 () Bool)

(assert (=> bm!356811 m!6189852))

(declare-fun m!6189854 () Bool)

(assert (=> bm!356810 m!6189854))

(declare-fun m!6189856 () Bool)

(assert (=> bm!356813 m!6189856))

(declare-fun m!6189858 () Bool)

(assert (=> bm!356816 m!6189858))

(declare-fun m!6189860 () Bool)

(assert (=> b!5125943 m!6189860))

(declare-fun m!6189862 () Bool)

(assert (=> b!5125943 m!6189862))

(assert (=> b!5125943 m!6189842))

(assert (=> b!5125943 m!6187862))

(assert (=> b!5125943 m!6189830))

(declare-fun m!6189864 () Bool)

(assert (=> b!5125943 m!6189864))

(declare-fun m!6189866 () Bool)

(assert (=> b!5125943 m!6189866))

(declare-fun m!6189868 () Bool)

(assert (=> b!5125943 m!6189868))

(assert (=> b!5125943 m!6189848))

(assert (=> b!5125943 m!6189866))

(assert (=> b!5125943 m!6189860))

(declare-fun m!6189870 () Bool)

(assert (=> b!5125943 m!6189870))

(assert (=> b!5125943 m!6189856))

(declare-fun m!6189872 () Bool)

(assert (=> b!5125943 m!6189872))

(assert (=> b!5125943 m!6189830))

(declare-fun m!6189874 () Bool)

(assert (=> b!5125943 m!6189874))

(declare-fun m!6189876 () Bool)

(assert (=> b!5125943 m!6189876))

(declare-fun m!6189878 () Bool)

(assert (=> b!5125936 m!6189878))

(assert (=> bm!356812 m!6188350))

(assert (=> bm!356757 d!1658150))

(assert (=> b!5125272 d!1658096))

(assert (=> b!5125272 d!1657932))

(declare-fun e!3196740 () Bool)

(declare-fun lt!2113925 () List!59411)

(declare-fun b!5125952 () Bool)

(assert (=> b!5125952 (= e!3196740 (or (not (= (Cons!59287 (head!10957 lt!2113191) Nil!59287) Nil!59287)) (= lt!2113925 testedP!265)))))

(declare-fun d!1658152 () Bool)

(assert (=> d!1658152 e!3196740))

(declare-fun res!2182577 () Bool)

(assert (=> d!1658152 (=> (not res!2182577) (not e!3196740))))

(assert (=> d!1658152 (= res!2182577 (= (content!10549 lt!2113925) ((_ map or) (content!10549 testedP!265) (content!10549 (Cons!59287 (head!10957 lt!2113191) Nil!59287)))))))

(declare-fun e!3196739 () List!59411)

(assert (=> d!1658152 (= lt!2113925 e!3196739)))

(declare-fun c!881273 () Bool)

(assert (=> d!1658152 (= c!881273 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1658152 (= (++!13054 testedP!265 (Cons!59287 (head!10957 lt!2113191) Nil!59287)) lt!2113925)))

(declare-fun b!5125951 () Bool)

(declare-fun res!2182578 () Bool)

(assert (=> b!5125951 (=> (not res!2182578) (not e!3196740))))

(assert (=> b!5125951 (= res!2182578 (= (size!39547 lt!2113925) (+ (size!39547 testedP!265) (size!39547 (Cons!59287 (head!10957 lt!2113191) Nil!59287)))))))

(declare-fun b!5125950 () Bool)

(assert (=> b!5125950 (= e!3196739 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) (Cons!59287 (head!10957 lt!2113191) Nil!59287))))))

(declare-fun b!5125949 () Bool)

(assert (=> b!5125949 (= e!3196739 (Cons!59287 (head!10957 lt!2113191) Nil!59287))))

(assert (= (and d!1658152 c!881273) b!5125949))

(assert (= (and d!1658152 (not c!881273)) b!5125950))

(assert (= (and d!1658152 res!2182577) b!5125951))

(assert (= (and b!5125951 res!2182578) b!5125952))

(declare-fun m!6189880 () Bool)

(assert (=> d!1658152 m!6189880))

(assert (=> d!1658152 m!6188166))

(declare-fun m!6189882 () Bool)

(assert (=> d!1658152 m!6189882))

(declare-fun m!6189884 () Bool)

(assert (=> b!5125951 m!6189884))

(assert (=> b!5125951 m!6187864))

(declare-fun m!6189886 () Bool)

(assert (=> b!5125951 m!6189886))

(declare-fun m!6189888 () Bool)

(assert (=> b!5125950 m!6189888))

(assert (=> b!5125219 d!1658152))

(assert (=> b!5125219 d!1657506))

(assert (=> b!5125219 d!1657548))

(assert (=> b!5125219 d!1657552))

(declare-fun e!3196742 () Bool)

(declare-fun b!5125956 () Bool)

(declare-fun lt!2113926 () List!59411)

(assert (=> b!5125956 (= e!3196742 (or (not (= (Cons!59287 lt!2113531 Nil!59287) Nil!59287)) (= lt!2113926 testedP!265)))))

(declare-fun d!1658154 () Bool)

(assert (=> d!1658154 e!3196742))

(declare-fun res!2182579 () Bool)

(assert (=> d!1658154 (=> (not res!2182579) (not e!3196742))))

(assert (=> d!1658154 (= res!2182579 (= (content!10549 lt!2113926) ((_ map or) (content!10549 testedP!265) (content!10549 (Cons!59287 lt!2113531 Nil!59287)))))))

(declare-fun e!3196741 () List!59411)

(assert (=> d!1658154 (= lt!2113926 e!3196741)))

(declare-fun c!881274 () Bool)

(assert (=> d!1658154 (= c!881274 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1658154 (= (++!13054 testedP!265 (Cons!59287 lt!2113531 Nil!59287)) lt!2113926)))

(declare-fun b!5125955 () Bool)

(declare-fun res!2182580 () Bool)

(assert (=> b!5125955 (=> (not res!2182580) (not e!3196742))))

(assert (=> b!5125955 (= res!2182580 (= (size!39547 lt!2113926) (+ (size!39547 testedP!265) (size!39547 (Cons!59287 lt!2113531 Nil!59287)))))))

(declare-fun b!5125954 () Bool)

(assert (=> b!5125954 (= e!3196741 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) (Cons!59287 lt!2113531 Nil!59287))))))

(declare-fun b!5125953 () Bool)

(assert (=> b!5125953 (= e!3196741 (Cons!59287 lt!2113531 Nil!59287))))

(assert (= (and d!1658154 c!881274) b!5125953))

(assert (= (and d!1658154 (not c!881274)) b!5125954))

(assert (= (and d!1658154 res!2182579) b!5125955))

(assert (= (and b!5125955 res!2182580) b!5125956))

(declare-fun m!6189890 () Bool)

(assert (=> d!1658154 m!6189890))

(assert (=> d!1658154 m!6188166))

(declare-fun m!6189892 () Bool)

(assert (=> d!1658154 m!6189892))

(declare-fun m!6189894 () Bool)

(assert (=> b!5125955 m!6189894))

(assert (=> b!5125955 m!6187864))

(declare-fun m!6189896 () Bool)

(assert (=> b!5125955 m!6189896))

(declare-fun m!6189898 () Bool)

(assert (=> b!5125954 m!6189898))

(assert (=> b!5125219 d!1658154))

(assert (=> b!5125219 d!1658054))

(assert (=> b!5125219 d!1657558))

(assert (=> b!5125219 d!1658056))

(assert (=> b!5125219 d!1657530))

(assert (=> b!5125219 d!1658058))

(declare-fun d!1658156 () Bool)

(assert (=> d!1658156 (= (++!13054 (++!13054 testedP!265 (Cons!59287 lt!2113531 Nil!59287)) lt!2113525) input!5745)))

(declare-fun lt!2113927 () Unit!150433)

(assert (=> d!1658156 (= lt!2113927 (choose!37740 testedP!265 lt!2113531 lt!2113525 input!5745))))

(assert (=> d!1658156 (= (++!13054 testedP!265 (Cons!59287 lt!2113531 lt!2113525)) input!5745)))

(assert (=> d!1658156 (= (lemmaMoveElementToOtherListKeepsConcatEq!1545 testedP!265 lt!2113531 lt!2113525 input!5745) lt!2113927)))

(declare-fun bs!1193960 () Bool)

(assert (= bs!1193960 d!1658156))

(assert (=> bs!1193960 m!6188376))

(assert (=> bs!1193960 m!6188376))

(assert (=> bs!1193960 m!6188378))

(declare-fun m!6189900 () Bool)

(assert (=> bs!1193960 m!6189900))

(declare-fun m!6189902 () Bool)

(assert (=> bs!1193960 m!6189902))

(assert (=> b!5125219 d!1658156))

(declare-fun b!5125960 () Bool)

(declare-fun lt!2113928 () List!59411)

(declare-fun e!3196744 () Bool)

(assert (=> b!5125960 (= e!3196744 (or (not (= lt!2113525 Nil!59287)) (= lt!2113928 (++!13054 testedP!265 (Cons!59287 lt!2113531 Nil!59287)))))))

(declare-fun d!1658158 () Bool)

(assert (=> d!1658158 e!3196744))

(declare-fun res!2182581 () Bool)

(assert (=> d!1658158 (=> (not res!2182581) (not e!3196744))))

(assert (=> d!1658158 (= res!2182581 (= (content!10549 lt!2113928) ((_ map or) (content!10549 (++!13054 testedP!265 (Cons!59287 lt!2113531 Nil!59287))) (content!10549 lt!2113525))))))

(declare-fun e!3196743 () List!59411)

(assert (=> d!1658158 (= lt!2113928 e!3196743)))

(declare-fun c!881275 () Bool)

(assert (=> d!1658158 (= c!881275 ((_ is Nil!59287) (++!13054 testedP!265 (Cons!59287 lt!2113531 Nil!59287))))))

(assert (=> d!1658158 (= (++!13054 (++!13054 testedP!265 (Cons!59287 lt!2113531 Nil!59287)) lt!2113525) lt!2113928)))

(declare-fun b!5125959 () Bool)

(declare-fun res!2182582 () Bool)

(assert (=> b!5125959 (=> (not res!2182582) (not e!3196744))))

(assert (=> b!5125959 (= res!2182582 (= (size!39547 lt!2113928) (+ (size!39547 (++!13054 testedP!265 (Cons!59287 lt!2113531 Nil!59287))) (size!39547 lt!2113525))))))

(declare-fun b!5125958 () Bool)

(assert (=> b!5125958 (= e!3196743 (Cons!59287 (h!65735 (++!13054 testedP!265 (Cons!59287 lt!2113531 Nil!59287))) (++!13054 (t!372436 (++!13054 testedP!265 (Cons!59287 lt!2113531 Nil!59287))) lt!2113525)))))

(declare-fun b!5125957 () Bool)

(assert (=> b!5125957 (= e!3196743 lt!2113525)))

(assert (= (and d!1658158 c!881275) b!5125957))

(assert (= (and d!1658158 (not c!881275)) b!5125958))

(assert (= (and d!1658158 res!2182581) b!5125959))

(assert (= (and b!5125959 res!2182582) b!5125960))

(declare-fun m!6189904 () Bool)

(assert (=> d!1658158 m!6189904))

(assert (=> d!1658158 m!6188376))

(declare-fun m!6189906 () Bool)

(assert (=> d!1658158 m!6189906))

(declare-fun m!6189908 () Bool)

(assert (=> d!1658158 m!6189908))

(declare-fun m!6189910 () Bool)

(assert (=> b!5125959 m!6189910))

(assert (=> b!5125959 m!6188376))

(declare-fun m!6189912 () Bool)

(assert (=> b!5125959 m!6189912))

(declare-fun m!6189914 () Bool)

(assert (=> b!5125959 m!6189914))

(declare-fun m!6189916 () Bool)

(assert (=> b!5125958 m!6189916))

(assert (=> b!5125219 d!1658158))

(declare-fun d!1658160 () Bool)

(assert (=> d!1658160 (<= (size!39547 testedP!265) (size!39547 input!5745))))

(declare-fun lt!2113929 () Unit!150433)

(assert (=> d!1658160 (= lt!2113929 (choose!37741 testedP!265 input!5745))))

(assert (=> d!1658160 (isPrefix!5646 testedP!265 input!5745)))

(assert (=> d!1658160 (= (lemmaIsPrefixThenSmallerEqSize!860 testedP!265 input!5745) lt!2113929)))

(declare-fun bs!1193961 () Bool)

(assert (= bs!1193961 d!1658160))

(assert (=> bs!1193961 m!6187864))

(assert (=> bs!1193961 m!6187862))

(declare-fun m!6189918 () Bool)

(assert (=> bs!1193961 m!6189918))

(assert (=> bs!1193961 m!6187870))

(assert (=> b!5125219 d!1658160))

(assert (=> b!5125219 d!1658098))

(declare-fun d!1658162 () Bool)

(declare-fun lt!2113930 () Int)

(assert (=> d!1658162 (>= lt!2113930 0)))

(declare-fun e!3196745 () Int)

(assert (=> d!1658162 (= lt!2113930 e!3196745)))

(declare-fun c!881276 () Bool)

(assert (=> d!1658162 (= c!881276 ((_ is Nil!59287) lt!2113576))))

(assert (=> d!1658162 (= (size!39547 lt!2113576) lt!2113930)))

(declare-fun b!5125961 () Bool)

(assert (=> b!5125961 (= e!3196745 0)))

(declare-fun b!5125962 () Bool)

(assert (=> b!5125962 (= e!3196745 (+ 1 (size!39547 (t!372436 lt!2113576))))))

(assert (= (and d!1658162 c!881276) b!5125961))

(assert (= (and d!1658162 (not c!881276)) b!5125962))

(declare-fun m!6189920 () Bool)

(assert (=> b!5125962 m!6189920))

(assert (=> b!5125287 d!1658162))

(assert (=> b!5125287 d!1657506))

(assert (=> b!5125287 d!1657994))

(declare-fun b!5125966 () Bool)

(declare-fun e!3196747 () Bool)

(declare-fun lt!2113931 () List!59411)

(assert (=> b!5125966 (= e!3196747 (or (not (= lt!2113195 Nil!59287)) (= lt!2113931 (t!372436 knownP!20))))))

(declare-fun d!1658164 () Bool)

(assert (=> d!1658164 e!3196747))

(declare-fun res!2182583 () Bool)

(assert (=> d!1658164 (=> (not res!2182583) (not e!3196747))))

(assert (=> d!1658164 (= res!2182583 (= (content!10549 lt!2113931) ((_ map or) (content!10549 (t!372436 knownP!20)) (content!10549 lt!2113195))))))

(declare-fun e!3196746 () List!59411)

(assert (=> d!1658164 (= lt!2113931 e!3196746)))

(declare-fun c!881277 () Bool)

(assert (=> d!1658164 (= c!881277 ((_ is Nil!59287) (t!372436 knownP!20)))))

(assert (=> d!1658164 (= (++!13054 (t!372436 knownP!20) lt!2113195) lt!2113931)))

(declare-fun b!5125965 () Bool)

(declare-fun res!2182584 () Bool)

(assert (=> b!5125965 (=> (not res!2182584) (not e!3196747))))

(assert (=> b!5125965 (= res!2182584 (= (size!39547 lt!2113931) (+ (size!39547 (t!372436 knownP!20)) (size!39547 lt!2113195))))))

(declare-fun b!5125964 () Bool)

(assert (=> b!5125964 (= e!3196746 (Cons!59287 (h!65735 (t!372436 knownP!20)) (++!13054 (t!372436 (t!372436 knownP!20)) lt!2113195)))))

(declare-fun b!5125963 () Bool)

(assert (=> b!5125963 (= e!3196746 lt!2113195)))

(assert (= (and d!1658164 c!881277) b!5125963))

(assert (= (and d!1658164 (not c!881277)) b!5125964))

(assert (= (and d!1658164 res!2182583) b!5125965))

(assert (= (and b!5125965 res!2182584) b!5125966))

(declare-fun m!6189922 () Bool)

(assert (=> d!1658164 m!6189922))

(assert (=> d!1658164 m!6189560))

(assert (=> d!1658164 m!6188180))

(declare-fun m!6189924 () Bool)

(assert (=> b!5125965 m!6189924))

(assert (=> b!5125965 m!6188410))

(assert (=> b!5125965 m!6188186))

(declare-fun m!6189926 () Bool)

(assert (=> b!5125964 m!6189926))

(assert (=> b!5125278 d!1658164))

(declare-fun bs!1193962 () Bool)

(declare-fun d!1658166 () Bool)

(assert (= bs!1193962 (and d!1658166 d!1657386)))

(declare-fun lambda!251801 () Int)

(assert (=> bs!1193962 (not (= lambda!251801 lambda!251725))))

(declare-fun bs!1193963 () Bool)

(assert (= bs!1193963 (and d!1658166 d!1657888)))

(assert (=> bs!1193963 (not (= lambda!251801 lambda!251773))))

(declare-fun bs!1193964 () Bool)

(assert (= bs!1193964 (and d!1658166 b!5125024)))

(assert (=> bs!1193964 (not (= lambda!251801 lambda!251726))))

(declare-fun bs!1193965 () Bool)

(assert (= bs!1193965 (and d!1658166 d!1658122)))

(assert (=> bs!1193965 (= lambda!251801 lambda!251800)))

(declare-fun bs!1193966 () Bool)

(assert (= bs!1193966 (and d!1658166 d!1658120)))

(assert (=> bs!1193966 (not (= lambda!251801 lambda!251799))))

(declare-fun bs!1193967 () Bool)

(assert (= bs!1193967 (and d!1658166 b!5125828)))

(assert (=> bs!1193967 (not (= lambda!251801 lambda!251794))))

(declare-fun bs!1193968 () Bool)

(assert (= bs!1193968 (and d!1658166 b!5125827)))

(assert (=> bs!1193968 (not (= lambda!251801 lambda!251793))))

(declare-fun bs!1193969 () Bool)

(assert (= bs!1193969 (and d!1658166 b!5125025)))

(assert (=> bs!1193969 (not (= lambda!251801 lambda!251727))))

(declare-fun bs!1193970 () Bool)

(assert (= bs!1193970 (and d!1658166 d!1658036)))

(assert (=> bs!1193970 (= lambda!251801 lambda!251791)))

(declare-fun bs!1193971 () Bool)

(assert (= bs!1193971 (and d!1658166 d!1657908)))

(assert (=> bs!1193971 (not (= lambda!251801 lambda!251783))))

(declare-fun bs!1193972 () Bool)

(assert (= bs!1193972 (and d!1658166 d!1657904)))

(assert (=> bs!1193972 (not (= lambda!251801 lambda!251780))))

(declare-fun bs!1193973 () Bool)

(assert (= bs!1193973 (and d!1658166 d!1658050)))

(assert (=> bs!1193973 (not (= lambda!251801 lambda!251792))))

(assert (=> d!1658166 (= (nullableZipper!1038 lt!2113196) (exists!1497 lt!2113196 lambda!251801))))

(declare-fun bs!1193974 () Bool)

(assert (= bs!1193974 d!1658166))

(declare-fun m!6189928 () Bool)

(assert (=> bs!1193974 m!6189928))

(assert (=> bm!356759 d!1658166))

(assert (=> bm!356767 d!1658122))

(assert (=> b!5125232 d!1657932))

(assert (=> b!5125232 d!1657938))

(declare-fun d!1658168 () Bool)

(declare-fun lt!2113932 () Int)

(assert (=> d!1658168 (>= lt!2113932 0)))

(declare-fun e!3196748 () Int)

(assert (=> d!1658168 (= lt!2113932 e!3196748)))

(declare-fun c!881278 () Bool)

(assert (=> d!1658168 (= c!881278 ((_ is Nil!59287) lt!2113357))))

(assert (=> d!1658168 (= (size!39547 lt!2113357) lt!2113932)))

(declare-fun b!5125967 () Bool)

(assert (=> b!5125967 (= e!3196748 0)))

(declare-fun b!5125968 () Bool)

(assert (=> b!5125968 (= e!3196748 (+ 1 (size!39547 (t!372436 lt!2113357))))))

(assert (= (and d!1658168 c!881278) b!5125967))

(assert (= (and d!1658168 (not c!881278)) b!5125968))

(declare-fun m!6189930 () Bool)

(assert (=> b!5125968 m!6189930))

(assert (=> b!5125048 d!1658168))

(assert (=> b!5125048 d!1657492))

(assert (=> b!5125048 d!1657996))

(declare-fun d!1658170 () Bool)

(declare-fun lt!2113933 () Int)

(assert (=> d!1658170 (>= lt!2113933 0)))

(declare-fun e!3196749 () Int)

(assert (=> d!1658170 (= lt!2113933 e!3196749)))

(declare-fun c!881279 () Bool)

(assert (=> d!1658170 (= c!881279 ((_ is Nil!59287) (_1!35123 lt!2113499)))))

(assert (=> d!1658170 (= (size!39547 (_1!35123 lt!2113499)) lt!2113933)))

(declare-fun b!5125969 () Bool)

(assert (=> b!5125969 (= e!3196749 0)))

(declare-fun b!5125970 () Bool)

(assert (=> b!5125970 (= e!3196749 (+ 1 (size!39547 (t!372436 (_1!35123 lt!2113499)))))))

(assert (= (and d!1658170 c!881279) b!5125969))

(assert (= (and d!1658170 (not c!881279)) b!5125970))

(declare-fun m!6189932 () Bool)

(assert (=> b!5125970 m!6189932))

(assert (=> b!5125195 d!1658170))

(assert (=> b!5125195 d!1657492))

(assert (=> bm!356763 d!1657988))

(declare-fun b!5125971 () Bool)

(declare-fun e!3196754 () Bool)

(declare-fun e!3196757 () Bool)

(assert (=> b!5125971 (= e!3196754 e!3196757)))

(declare-fun res!2182585 () Bool)

(assert (=> b!5125971 (=> res!2182585 e!3196757)))

(declare-fun lt!2113939 () tuple2!63640)

(assert (=> b!5125971 (= res!2182585 (isEmpty!31956 (_1!35123 lt!2113939)))))

(declare-fun d!1658172 () Bool)

(assert (=> d!1658172 e!3196754))

(declare-fun res!2182586 () Bool)

(assert (=> d!1658172 (=> (not res!2182586) (not e!3196754))))

(assert (=> d!1658172 (= res!2182586 (= (++!13054 (_1!35123 lt!2113939) (_2!35123 lt!2113939)) input!5745))))

(declare-fun e!3196750 () tuple2!63640)

(assert (=> d!1658172 (= lt!2113939 e!3196750)))

(declare-fun c!881285 () Bool)

(assert (=> d!1658172 (= c!881285 (lostCauseZipper!1123 call!356774))))

(declare-fun lt!2113935 () Unit!150433)

(declare-fun Unit!150470 () Unit!150433)

(assert (=> d!1658172 (= lt!2113935 Unit!150470)))

(assert (=> d!1658172 (= (getSuffix!3318 input!5745 lt!2113543) call!356770)))

(declare-fun lt!2113956 () Unit!150433)

(declare-fun lt!2113936 () Unit!150433)

(assert (=> d!1658172 (= lt!2113956 lt!2113936)))

(declare-fun lt!2113953 () List!59411)

(assert (=> d!1658172 (= call!356770 lt!2113953)))

(assert (=> d!1658172 (= lt!2113936 (lemmaSamePrefixThenSameSuffix!2664 lt!2113543 call!356770 lt!2113543 lt!2113953 input!5745))))

(assert (=> d!1658172 (= lt!2113953 (getSuffix!3318 input!5745 lt!2113543))))

(declare-fun lt!2113940 () Unit!150433)

(declare-fun lt!2113951 () Unit!150433)

(assert (=> d!1658172 (= lt!2113940 lt!2113951)))

(assert (=> d!1658172 (isPrefix!5646 lt!2113543 (++!13054 lt!2113543 call!356770))))

(assert (=> d!1658172 (= lt!2113951 (lemmaConcatTwoListThenFirstIsPrefix!3558 lt!2113543 call!356770))))

(assert (=> d!1658172 (= (++!13054 lt!2113543 call!356770) input!5745)))

(assert (=> d!1658172 (= (findLongestMatchInnerZipper!201 call!356774 lt!2113543 (+ lt!2113208 1) call!356770 input!5745 lt!2113198) lt!2113939)))

(declare-fun b!5125972 () Bool)

(declare-fun e!3196756 () tuple2!63640)

(declare-fun e!3196755 () tuple2!63640)

(assert (=> b!5125972 (= e!3196756 e!3196755)))

(declare-fun lt!2113950 () tuple2!63640)

(declare-fun call!356823 () tuple2!63640)

(assert (=> b!5125972 (= lt!2113950 call!356823)))

(declare-fun c!881284 () Bool)

(assert (=> b!5125972 (= c!881284 (isEmpty!31956 (_1!35123 lt!2113950)))))

(declare-fun b!5125973 () Bool)

(assert (=> b!5125973 (= e!3196757 (>= (size!39547 (_1!35123 lt!2113939)) (size!39547 lt!2113543)))))

(declare-fun b!5125974 () Bool)

(declare-fun e!3196751 () Unit!150433)

(declare-fun Unit!150471 () Unit!150433)

(assert (=> b!5125974 (= e!3196751 Unit!150471)))

(declare-fun bm!356817 () Bool)

(declare-fun lt!2113955 () List!59411)

(declare-fun call!356826 () (InoxSet Context!7250))

(declare-fun call!356822 () List!59411)

(assert (=> bm!356817 (= call!356823 (findLongestMatchInnerZipper!201 call!356826 lt!2113955 (+ lt!2113208 1 1) call!356822 input!5745 lt!2113198))))

(declare-fun b!5125975 () Bool)

(assert (=> b!5125975 (= e!3196755 (tuple2!63641 lt!2113543 call!356770))))

(declare-fun bm!356818 () Bool)

(declare-fun call!356828 () C!28748)

(assert (=> bm!356818 (= call!356826 (derivationStepZipper!864 call!356774 call!356828))))

(declare-fun b!5125976 () Bool)

(declare-fun Unit!150472 () Unit!150433)

(assert (=> b!5125976 (= e!3196751 Unit!150472)))

(declare-fun lt!2113945 () Unit!150433)

(declare-fun call!356827 () Unit!150433)

(assert (=> b!5125976 (= lt!2113945 call!356827)))

(declare-fun call!356824 () Bool)

(assert (=> b!5125976 call!356824))

(declare-fun lt!2113959 () Unit!150433)

(assert (=> b!5125976 (= lt!2113959 lt!2113945)))

(declare-fun lt!2113947 () Unit!150433)

(declare-fun call!356829 () Unit!150433)

(assert (=> b!5125976 (= lt!2113947 call!356829)))

(assert (=> b!5125976 (= input!5745 lt!2113543)))

(declare-fun lt!2113948 () Unit!150433)

(assert (=> b!5125976 (= lt!2113948 lt!2113947)))

(assert (=> b!5125976 false))

(declare-fun bm!356819 () Bool)

(declare-fun call!356825 () Bool)

(assert (=> bm!356819 (= call!356825 (nullableZipper!1038 call!356774))))

(declare-fun b!5125977 () Bool)

(assert (=> b!5125977 (= e!3196750 (tuple2!63641 Nil!59287 input!5745))))

(declare-fun bm!356820 () Bool)

(assert (=> bm!356820 (= call!356827 (lemmaIsPrefixRefl!3706 input!5745 input!5745))))

(declare-fun bm!356821 () Bool)

(assert (=> bm!356821 (= call!356828 (head!10957 call!356770))))

(declare-fun b!5125978 () Bool)

(declare-fun c!881282 () Bool)

(assert (=> b!5125978 (= c!881282 call!356825)))

(declare-fun lt!2113942 () Unit!150433)

(declare-fun lt!2113938 () Unit!150433)

(assert (=> b!5125978 (= lt!2113942 lt!2113938)))

(assert (=> b!5125978 (= input!5745 lt!2113543)))

(assert (=> b!5125978 (= lt!2113938 call!356829)))

(declare-fun lt!2113957 () Unit!150433)

(declare-fun lt!2113946 () Unit!150433)

(assert (=> b!5125978 (= lt!2113957 lt!2113946)))

(assert (=> b!5125978 call!356824))

(assert (=> b!5125978 (= lt!2113946 call!356827)))

(declare-fun e!3196752 () tuple2!63640)

(declare-fun e!3196753 () tuple2!63640)

(assert (=> b!5125978 (= e!3196752 e!3196753)))

(declare-fun bm!356822 () Bool)

(assert (=> bm!356822 (= call!356824 (isPrefix!5646 input!5745 input!5745))))

(declare-fun b!5125979 () Bool)

(declare-fun c!881281 () Bool)

(assert (=> b!5125979 (= c!881281 call!356825)))

(declare-fun lt!2113941 () Unit!150433)

(declare-fun lt!2113952 () Unit!150433)

(assert (=> b!5125979 (= lt!2113941 lt!2113952)))

(declare-fun lt!2113937 () List!59411)

(declare-fun lt!2113943 () C!28748)

(assert (=> b!5125979 (= (++!13054 (++!13054 lt!2113543 (Cons!59287 lt!2113943 Nil!59287)) lt!2113937) input!5745)))

(assert (=> b!5125979 (= lt!2113952 (lemmaMoveElementToOtherListKeepsConcatEq!1545 lt!2113543 lt!2113943 lt!2113937 input!5745))))

(assert (=> b!5125979 (= lt!2113937 (tail!10092 call!356770))))

(assert (=> b!5125979 (= lt!2113943 (head!10957 call!356770))))

(declare-fun lt!2113934 () Unit!150433)

(declare-fun lt!2113944 () Unit!150433)

(assert (=> b!5125979 (= lt!2113934 lt!2113944)))

(assert (=> b!5125979 (isPrefix!5646 (++!13054 lt!2113543 (Cons!59287 (head!10957 (getSuffix!3318 input!5745 lt!2113543)) Nil!59287)) input!5745)))

(assert (=> b!5125979 (= lt!2113944 (lemmaAddHeadSuffixToPrefixStillPrefix!1020 lt!2113543 input!5745))))

(assert (=> b!5125979 (= lt!2113955 (++!13054 lt!2113543 (Cons!59287 (head!10957 call!356770) Nil!59287)))))

(declare-fun lt!2113958 () Unit!150433)

(assert (=> b!5125979 (= lt!2113958 e!3196751)))

(declare-fun c!881283 () Bool)

(assert (=> b!5125979 (= c!881283 (= (size!39547 lt!2113543) (size!39547 input!5745)))))

(declare-fun lt!2113949 () Unit!150433)

(declare-fun lt!2113954 () Unit!150433)

(assert (=> b!5125979 (= lt!2113949 lt!2113954)))

(assert (=> b!5125979 (<= (size!39547 lt!2113543) (size!39547 input!5745))))

(assert (=> b!5125979 (= lt!2113954 (lemmaIsPrefixThenSmallerEqSize!860 lt!2113543 input!5745))))

(assert (=> b!5125979 (= e!3196752 e!3196756)))

(declare-fun bm!356823 () Bool)

(assert (=> bm!356823 (= call!356822 (tail!10092 call!356770))))

(declare-fun b!5125980 () Bool)

(assert (=> b!5125980 (= e!3196753 (tuple2!63641 lt!2113543 Nil!59287))))

(declare-fun b!5125981 () Bool)

(assert (=> b!5125981 (= e!3196755 lt!2113950)))

(declare-fun bm!356824 () Bool)

(assert (=> bm!356824 (= call!356829 (lemmaIsPrefixSameLengthThenSameList!1350 input!5745 lt!2113543 input!5745))))

(declare-fun b!5125982 () Bool)

(assert (=> b!5125982 (= e!3196750 e!3196752)))

(declare-fun c!881280 () Bool)

(assert (=> b!5125982 (= c!881280 (= (+ lt!2113208 1) lt!2113198))))

(declare-fun b!5125983 () Bool)

(assert (=> b!5125983 (= e!3196753 (tuple2!63641 Nil!59287 input!5745))))

(declare-fun b!5125984 () Bool)

(assert (=> b!5125984 (= e!3196756 call!356823)))

(assert (= (and d!1658172 c!881285) b!5125977))

(assert (= (and d!1658172 (not c!881285)) b!5125982))

(assert (= (and b!5125982 c!881280) b!5125978))

(assert (= (and b!5125982 (not c!881280)) b!5125979))

(assert (= (and b!5125978 c!881282) b!5125980))

(assert (= (and b!5125978 (not c!881282)) b!5125983))

(assert (= (and b!5125979 c!881283) b!5125976))

(assert (= (and b!5125979 (not c!881283)) b!5125974))

(assert (= (and b!5125979 c!881281) b!5125972))

(assert (= (and b!5125979 (not c!881281)) b!5125984))

(assert (= (and b!5125972 c!881284) b!5125975))

(assert (= (and b!5125972 (not c!881284)) b!5125981))

(assert (= (or b!5125972 b!5125984) bm!356823))

(assert (= (or b!5125972 b!5125984) bm!356821))

(assert (= (or b!5125972 b!5125984) bm!356818))

(assert (= (or b!5125972 b!5125984) bm!356817))

(assert (= (or b!5125978 b!5125976) bm!356822))

(assert (= (or b!5125978 b!5125976) bm!356820))

(assert (= (or b!5125978 b!5125979) bm!356819))

(assert (= (or b!5125978 b!5125976) bm!356824))

(assert (= (and d!1658172 res!2182586) b!5125971))

(assert (= (and b!5125971 (not res!2182585)) b!5125973))

(assert (=> bm!356822 m!6188304))

(declare-fun m!6189934 () Bool)

(assert (=> d!1658172 m!6189934))

(declare-fun m!6189936 () Bool)

(assert (=> d!1658172 m!6189936))

(declare-fun m!6189938 () Bool)

(assert (=> d!1658172 m!6189938))

(assert (=> d!1658172 m!6189934))

(declare-fun m!6189940 () Bool)

(assert (=> d!1658172 m!6189940))

(declare-fun m!6189942 () Bool)

(assert (=> d!1658172 m!6189942))

(declare-fun m!6189944 () Bool)

(assert (=> d!1658172 m!6189944))

(declare-fun m!6189946 () Bool)

(assert (=> d!1658172 m!6189946))

(declare-fun m!6189948 () Bool)

(assert (=> bm!356823 m!6189948))

(declare-fun m!6189950 () Bool)

(assert (=> bm!356817 m!6189950))

(declare-fun m!6189952 () Bool)

(assert (=> b!5125973 m!6189952))

(declare-fun m!6189954 () Bool)

(assert (=> b!5125973 m!6189954))

(declare-fun m!6189956 () Bool)

(assert (=> b!5125971 m!6189956))

(declare-fun m!6189958 () Bool)

(assert (=> bm!356819 m!6189958))

(declare-fun m!6189960 () Bool)

(assert (=> bm!356818 m!6189960))

(declare-fun m!6189962 () Bool)

(assert (=> bm!356821 m!6189962))

(declare-fun m!6189964 () Bool)

(assert (=> bm!356824 m!6189964))

(declare-fun m!6189966 () Bool)

(assert (=> b!5125979 m!6189966))

(declare-fun m!6189968 () Bool)

(assert (=> b!5125979 m!6189968))

(assert (=> b!5125979 m!6189948))

(assert (=> b!5125979 m!6187862))

(assert (=> b!5125979 m!6189936))

(declare-fun m!6189970 () Bool)

(assert (=> b!5125979 m!6189970))

(declare-fun m!6189972 () Bool)

(assert (=> b!5125979 m!6189972))

(declare-fun m!6189974 () Bool)

(assert (=> b!5125979 m!6189974))

(assert (=> b!5125979 m!6189954))

(assert (=> b!5125979 m!6189972))

(assert (=> b!5125979 m!6189966))

(declare-fun m!6189976 () Bool)

(assert (=> b!5125979 m!6189976))

(assert (=> b!5125979 m!6189962))

(declare-fun m!6189978 () Bool)

(assert (=> b!5125979 m!6189978))

(assert (=> b!5125979 m!6189936))

(declare-fun m!6189980 () Bool)

(assert (=> b!5125979 m!6189980))

(declare-fun m!6189982 () Bool)

(assert (=> b!5125979 m!6189982))

(declare-fun m!6189984 () Bool)

(assert (=> b!5125972 m!6189984))

(assert (=> bm!356820 m!6188350))

(assert (=> bm!356765 d!1658172))

(declare-fun b!5125986 () Bool)

(declare-fun res!2182589 () Bool)

(declare-fun e!3196760 () Bool)

(assert (=> b!5125986 (=> (not res!2182589) (not e!3196760))))

(assert (=> b!5125986 (= res!2182589 (= (head!10957 (tail!10092 testedP!265)) (head!10957 (tail!10092 input!5745))))))

(declare-fun b!5125985 () Bool)

(declare-fun e!3196758 () Bool)

(assert (=> b!5125985 (= e!3196758 e!3196760)))

(declare-fun res!2182587 () Bool)

(assert (=> b!5125985 (=> (not res!2182587) (not e!3196760))))

(assert (=> b!5125985 (= res!2182587 (not ((_ is Nil!59287) (tail!10092 input!5745))))))

(declare-fun b!5125988 () Bool)

(declare-fun e!3196759 () Bool)

(assert (=> b!5125988 (= e!3196759 (>= (size!39547 (tail!10092 input!5745)) (size!39547 (tail!10092 testedP!265))))))

(declare-fun b!5125987 () Bool)

(assert (=> b!5125987 (= e!3196760 (isPrefix!5646 (tail!10092 (tail!10092 testedP!265)) (tail!10092 (tail!10092 input!5745))))))

(declare-fun d!1658174 () Bool)

(assert (=> d!1658174 e!3196759))

(declare-fun res!2182588 () Bool)

(assert (=> d!1658174 (=> res!2182588 e!3196759)))

(declare-fun lt!2113960 () Bool)

(assert (=> d!1658174 (= res!2182588 (not lt!2113960))))

(assert (=> d!1658174 (= lt!2113960 e!3196758)))

(declare-fun res!2182590 () Bool)

(assert (=> d!1658174 (=> res!2182590 e!3196758)))

(assert (=> d!1658174 (= res!2182590 ((_ is Nil!59287) (tail!10092 testedP!265)))))

(assert (=> d!1658174 (= (isPrefix!5646 (tail!10092 testedP!265) (tail!10092 input!5745)) lt!2113960)))

(assert (= (and d!1658174 (not res!2182590)) b!5125985))

(assert (= (and b!5125985 res!2182587) b!5125986))

(assert (= (and b!5125986 res!2182589) b!5125987))

(assert (= (and d!1658174 (not res!2182588)) b!5125988))

(assert (=> b!5125986 m!6188158))

(assert (=> b!5125986 m!6189808))

(assert (=> b!5125986 m!6188402))

(assert (=> b!5125986 m!6189528))

(assert (=> b!5125988 m!6188402))

(assert (=> b!5125988 m!6189530))

(assert (=> b!5125988 m!6188158))

(assert (=> b!5125988 m!6189810))

(assert (=> b!5125987 m!6188158))

(assert (=> b!5125987 m!6189812))

(assert (=> b!5125987 m!6188402))

(assert (=> b!5125987 m!6189536))

(assert (=> b!5125987 m!6189812))

(assert (=> b!5125987 m!6189536))

(declare-fun m!6189986 () Bool)

(assert (=> b!5125987 m!6189986))

(assert (=> b!5125249 d!1658174))

(assert (=> b!5125249 d!1658140))

(assert (=> b!5125249 d!1658006))

(declare-fun d!1658176 () Bool)

(assert (=> d!1658176 (= (++!13054 (++!13054 testedP!265 lt!2113189) lt!2113197) (++!13054 testedP!265 (++!13054 lt!2113189 lt!2113197)))))

(assert (=> d!1658176 true))

(declare-fun _$52!2379 () Unit!150433)

(assert (=> d!1658176 (= (choose!37722 testedP!265 lt!2113189 lt!2113197) _$52!2379)))

(declare-fun bs!1193975 () Bool)

(assert (= bs!1193975 d!1658176))

(assert (=> bs!1193975 m!6187846))

(assert (=> bs!1193975 m!6187846))

(assert (=> bs!1193975 m!6188448))

(assert (=> bs!1193975 m!6187800))

(assert (=> bs!1193975 m!6187800))

(assert (=> bs!1193975 m!6188452))

(assert (=> d!1657520 d!1658176))

(declare-fun e!3196762 () Bool)

(declare-fun b!5125992 () Bool)

(declare-fun lt!2113961 () List!59411)

(assert (=> b!5125992 (= e!3196762 (or (not (= (++!13054 lt!2113189 lt!2113197) Nil!59287)) (= lt!2113961 testedP!265)))))

(declare-fun d!1658178 () Bool)

(assert (=> d!1658178 e!3196762))

(declare-fun res!2182591 () Bool)

(assert (=> d!1658178 (=> (not res!2182591) (not e!3196762))))

(assert (=> d!1658178 (= res!2182591 (= (content!10549 lt!2113961) ((_ map or) (content!10549 testedP!265) (content!10549 (++!13054 lt!2113189 lt!2113197)))))))

(declare-fun e!3196761 () List!59411)

(assert (=> d!1658178 (= lt!2113961 e!3196761)))

(declare-fun c!881286 () Bool)

(assert (=> d!1658178 (= c!881286 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1658178 (= (++!13054 testedP!265 (++!13054 lt!2113189 lt!2113197)) lt!2113961)))

(declare-fun b!5125991 () Bool)

(declare-fun res!2182592 () Bool)

(assert (=> b!5125991 (=> (not res!2182592) (not e!3196762))))

(assert (=> b!5125991 (= res!2182592 (= (size!39547 lt!2113961) (+ (size!39547 testedP!265) (size!39547 (++!13054 lt!2113189 lt!2113197)))))))

(declare-fun b!5125990 () Bool)

(assert (=> b!5125990 (= e!3196761 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) (++!13054 lt!2113189 lt!2113197))))))

(declare-fun b!5125989 () Bool)

(assert (=> b!5125989 (= e!3196761 (++!13054 lt!2113189 lt!2113197))))

(assert (= (and d!1658178 c!881286) b!5125989))

(assert (= (and d!1658178 (not c!881286)) b!5125990))

(assert (= (and d!1658178 res!2182591) b!5125991))

(assert (= (and b!5125991 res!2182592) b!5125992))

(declare-fun m!6189988 () Bool)

(assert (=> d!1658178 m!6189988))

(assert (=> d!1658178 m!6188166))

(assert (=> d!1658178 m!6187800))

(declare-fun m!6189990 () Bool)

(assert (=> d!1658178 m!6189990))

(declare-fun m!6189992 () Bool)

(assert (=> b!5125991 m!6189992))

(assert (=> b!5125991 m!6187864))

(assert (=> b!5125991 m!6187800))

(declare-fun m!6189994 () Bool)

(assert (=> b!5125991 m!6189994))

(assert (=> b!5125990 m!6187800))

(declare-fun m!6189996 () Bool)

(assert (=> b!5125990 m!6189996))

(assert (=> d!1657520 d!1658178))

(assert (=> d!1657520 d!1657550))

(assert (=> d!1657520 d!1657518))

(declare-fun e!3196764 () Bool)

(declare-fun b!5125996 () Bool)

(declare-fun lt!2113962 () List!59411)

(assert (=> b!5125996 (= e!3196764 (or (not (= lt!2113197 Nil!59287)) (= lt!2113962 (++!13054 testedP!265 lt!2113189))))))

(declare-fun d!1658180 () Bool)

(assert (=> d!1658180 e!3196764))

(declare-fun res!2182593 () Bool)

(assert (=> d!1658180 (=> (not res!2182593) (not e!3196764))))

(assert (=> d!1658180 (= res!2182593 (= (content!10549 lt!2113962) ((_ map or) (content!10549 (++!13054 testedP!265 lt!2113189)) (content!10549 lt!2113197))))))

(declare-fun e!3196763 () List!59411)

(assert (=> d!1658180 (= lt!2113962 e!3196763)))

(declare-fun c!881287 () Bool)

(assert (=> d!1658180 (= c!881287 ((_ is Nil!59287) (++!13054 testedP!265 lt!2113189)))))

(assert (=> d!1658180 (= (++!13054 (++!13054 testedP!265 lt!2113189) lt!2113197) lt!2113962)))

(declare-fun b!5125995 () Bool)

(declare-fun res!2182594 () Bool)

(assert (=> b!5125995 (=> (not res!2182594) (not e!3196764))))

(assert (=> b!5125995 (= res!2182594 (= (size!39547 lt!2113962) (+ (size!39547 (++!13054 testedP!265 lt!2113189)) (size!39547 lt!2113197))))))

(declare-fun b!5125994 () Bool)

(assert (=> b!5125994 (= e!3196763 (Cons!59287 (h!65735 (++!13054 testedP!265 lt!2113189)) (++!13054 (t!372436 (++!13054 testedP!265 lt!2113189)) lt!2113197)))))

(declare-fun b!5125993 () Bool)

(assert (=> b!5125993 (= e!3196763 lt!2113197)))

(assert (= (and d!1658180 c!881287) b!5125993))

(assert (= (and d!1658180 (not c!881287)) b!5125994))

(assert (= (and d!1658180 res!2182593) b!5125995))

(assert (= (and b!5125995 res!2182594) b!5125996))

(declare-fun m!6189998 () Bool)

(assert (=> d!1658180 m!6189998))

(assert (=> d!1658180 m!6187846))

(declare-fun m!6190000 () Bool)

(assert (=> d!1658180 m!6190000))

(assert (=> d!1658180 m!6188086))

(declare-fun m!6190002 () Bool)

(assert (=> b!5125995 m!6190002))

(assert (=> b!5125995 m!6187846))

(declare-fun m!6190004 () Bool)

(assert (=> b!5125995 m!6190004))

(assert (=> b!5125995 m!6188090))

(declare-fun m!6190006 () Bool)

(assert (=> b!5125994 m!6190006))

(assert (=> d!1657520 d!1658180))

(declare-fun d!1658182 () Bool)

(declare-fun lt!2113963 () Int)

(assert (=> d!1658182 (>= lt!2113963 0)))

(declare-fun e!3196765 () Int)

(assert (=> d!1658182 (= lt!2113963 e!3196765)))

(declare-fun c!881288 () Bool)

(assert (=> d!1658182 (= c!881288 ((_ is Nil!59287) lt!2113558))))

(assert (=> d!1658182 (= (size!39547 lt!2113558) lt!2113963)))

(declare-fun b!5125997 () Bool)

(assert (=> b!5125997 (= e!3196765 0)))

(declare-fun b!5125998 () Bool)

(assert (=> b!5125998 (= e!3196765 (+ 1 (size!39547 (t!372436 lt!2113558))))))

(assert (= (and d!1658182 c!881288) b!5125997))

(assert (= (and d!1658182 (not c!881288)) b!5125998))

(declare-fun m!6190008 () Bool)

(assert (=> b!5125998 m!6190008))

(assert (=> b!5125237 d!1658182))

(assert (=> b!5125237 d!1657506))

(declare-fun d!1658184 () Bool)

(declare-fun lt!2113964 () Int)

(assert (=> d!1658184 (>= lt!2113964 0)))

(declare-fun e!3196766 () Int)

(assert (=> d!1658184 (= lt!2113964 e!3196766)))

(declare-fun c!881289 () Bool)

(assert (=> d!1658184 (= c!881289 ((_ is Nil!59287) lt!2113191))))

(assert (=> d!1658184 (= (size!39547 lt!2113191) lt!2113964)))

(declare-fun b!5125999 () Bool)

(assert (=> b!5125999 (= e!3196766 0)))

(declare-fun b!5126000 () Bool)

(assert (=> b!5126000 (= e!3196766 (+ 1 (size!39547 (t!372436 lt!2113191))))))

(assert (= (and d!1658184 c!881289) b!5125999))

(assert (= (and d!1658184 (not c!881289)) b!5126000))

(declare-fun m!6190010 () Bool)

(assert (=> b!5126000 m!6190010))

(assert (=> b!5125237 d!1658184))

(assert (=> d!1657546 d!1657524))

(declare-fun b!5126004 () Bool)

(declare-fun lt!2113965 () List!59411)

(declare-fun e!3196768 () Bool)

(assert (=> b!5126004 (= e!3196768 (or (not (= (Cons!59287 lt!2113194 Nil!59287) Nil!59287)) (= lt!2113965 testedP!265)))))

(declare-fun d!1658186 () Bool)

(assert (=> d!1658186 e!3196768))

(declare-fun res!2182595 () Bool)

(assert (=> d!1658186 (=> (not res!2182595) (not e!3196768))))

(assert (=> d!1658186 (= res!2182595 (= (content!10549 lt!2113965) ((_ map or) (content!10549 testedP!265) (content!10549 (Cons!59287 lt!2113194 Nil!59287)))))))

(declare-fun e!3196767 () List!59411)

(assert (=> d!1658186 (= lt!2113965 e!3196767)))

(declare-fun c!881290 () Bool)

(assert (=> d!1658186 (= c!881290 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1658186 (= (++!13054 testedP!265 (Cons!59287 lt!2113194 Nil!59287)) lt!2113965)))

(declare-fun b!5126003 () Bool)

(declare-fun res!2182596 () Bool)

(assert (=> b!5126003 (=> (not res!2182596) (not e!3196768))))

(assert (=> b!5126003 (= res!2182596 (= (size!39547 lt!2113965) (+ (size!39547 testedP!265) (size!39547 (Cons!59287 lt!2113194 Nil!59287)))))))

(declare-fun b!5126002 () Bool)

(assert (=> b!5126002 (= e!3196767 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) (Cons!59287 lt!2113194 Nil!59287))))))

(declare-fun b!5126001 () Bool)

(assert (=> b!5126001 (= e!3196767 (Cons!59287 lt!2113194 Nil!59287))))

(assert (= (and d!1658186 c!881290) b!5126001))

(assert (= (and d!1658186 (not c!881290)) b!5126002))

(assert (= (and d!1658186 res!2182595) b!5126003))

(assert (= (and b!5126003 res!2182596) b!5126004))

(declare-fun m!6190012 () Bool)

(assert (=> d!1658186 m!6190012))

(assert (=> d!1658186 m!6188166))

(declare-fun m!6190014 () Bool)

(assert (=> d!1658186 m!6190014))

(declare-fun m!6190016 () Bool)

(assert (=> b!5126003 m!6190016))

(assert (=> b!5126003 m!6187864))

(declare-fun m!6190018 () Bool)

(assert (=> b!5126003 m!6190018))

(declare-fun m!6190020 () Bool)

(assert (=> b!5126002 m!6190020))

(assert (=> d!1657546 d!1658186))

(assert (=> d!1657546 d!1657544))

(declare-fun d!1658188 () Bool)

(declare-fun c!881291 () Bool)

(assert (=> d!1658188 (= c!881291 ((_ is Cons!59287) (++!13054 testedP!265 (Cons!59287 lt!2113194 Nil!59287))))))

(declare-fun e!3196769 () (InoxSet Context!7250))

(assert (=> d!1658188 (= (derivationZipper!138 baseZ!46 (++!13054 testedP!265 (Cons!59287 lt!2113194 Nil!59287))) e!3196769)))

(declare-fun b!5126005 () Bool)

(assert (=> b!5126005 (= e!3196769 (derivationZipper!138 (derivationStepZipper!864 baseZ!46 (h!65735 (++!13054 testedP!265 (Cons!59287 lt!2113194 Nil!59287)))) (t!372436 (++!13054 testedP!265 (Cons!59287 lt!2113194 Nil!59287)))))))

(declare-fun b!5126006 () Bool)

(assert (=> b!5126006 (= e!3196769 baseZ!46)))

(assert (= (and d!1658188 c!881291) b!5126005))

(assert (= (and d!1658188 (not c!881291)) b!5126006))

(declare-fun m!6190022 () Bool)

(assert (=> b!5126005 m!6190022))

(assert (=> b!5126005 m!6190022))

(declare-fun m!6190024 () Bool)

(assert (=> b!5126005 m!6190024))

(assert (=> d!1657546 d!1658188))

(declare-fun d!1658190 () Bool)

(assert (=> d!1658190 (= (derivationZipper!138 baseZ!46 (++!13054 testedP!265 (Cons!59287 lt!2113194 Nil!59287))) (derivationStepZipper!864 z!4463 lt!2113194))))

(assert (=> d!1658190 true))

(declare-fun _$83!260 () Unit!150433)

(assert (=> d!1658190 (= (choose!37725 baseZ!46 z!4463 testedP!265 lt!2113194) _$83!260)))

(declare-fun bs!1193976 () Bool)

(assert (= bs!1193976 d!1658190))

(assert (=> bs!1193976 m!6188510))

(assert (=> bs!1193976 m!6188510))

(assert (=> bs!1193976 m!6188512))

(assert (=> bs!1193976 m!6187848))

(assert (=> d!1657546 d!1658190))

(declare-fun bs!1193977 () Bool)

(declare-fun d!1658192 () Bool)

(assert (= bs!1193977 (and d!1658192 d!1657428)))

(declare-fun lambda!251802 () Int)

(assert (=> bs!1193977 (= lambda!251802 lambda!251730)))

(declare-fun bs!1193978 () Bool)

(assert (= bs!1193978 (and d!1658192 d!1657556)))

(assert (=> bs!1193978 (= lambda!251802 lambda!251738)))

(declare-fun bs!1193979 () Bool)

(assert (= bs!1193979 (and d!1658192 d!1658066)))

(assert (=> bs!1193979 (= lambda!251802 lambda!251795)))

(assert (=> d!1658192 (= (inv!78783 setElem!30557) (forall!13639 (exprs!4125 setElem!30557) lambda!251802))))

(declare-fun bs!1193980 () Bool)

(assert (= bs!1193980 d!1658192))

(declare-fun m!6190026 () Bool)

(assert (=> bs!1193980 m!6190026))

(assert (=> setNonEmpty!30557 d!1658192))

(declare-fun d!1658194 () Bool)

(assert (=> d!1658194 (= lt!2113213 lt!2113191)))

(assert (=> d!1658194 true))

(declare-fun _$63!1280 () Unit!150433)

(assert (=> d!1658194 (= (choose!37724 testedP!265 lt!2113213 testedP!265 lt!2113191 input!5745) _$63!1280)))

(assert (=> d!1657504 d!1658194))

(assert (=> d!1657504 d!1657522))

(declare-fun lt!2113966 () List!59411)

(declare-fun e!3196771 () Bool)

(declare-fun b!5126010 () Bool)

(assert (=> b!5126010 (= e!3196771 (or (not (= lt!2113213 Nil!59287)) (= lt!2113966 (t!372436 testedP!265))))))

(declare-fun d!1658196 () Bool)

(assert (=> d!1658196 e!3196771))

(declare-fun res!2182597 () Bool)

(assert (=> d!1658196 (=> (not res!2182597) (not e!3196771))))

(assert (=> d!1658196 (= res!2182597 (= (content!10549 lt!2113966) ((_ map or) (content!10549 (t!372436 testedP!265)) (content!10549 lt!2113213))))))

(declare-fun e!3196770 () List!59411)

(assert (=> d!1658196 (= lt!2113966 e!3196770)))

(declare-fun c!881293 () Bool)

(assert (=> d!1658196 (= c!881293 ((_ is Nil!59287) (t!372436 testedP!265)))))

(assert (=> d!1658196 (= (++!13054 (t!372436 testedP!265) lt!2113213) lt!2113966)))

(declare-fun b!5126009 () Bool)

(declare-fun res!2182598 () Bool)

(assert (=> b!5126009 (=> (not res!2182598) (not e!3196771))))

(assert (=> b!5126009 (= res!2182598 (= (size!39547 lt!2113966) (+ (size!39547 (t!372436 testedP!265)) (size!39547 lt!2113213))))))

(declare-fun b!5126008 () Bool)

(assert (=> b!5126008 (= e!3196770 (Cons!59287 (h!65735 (t!372436 testedP!265)) (++!13054 (t!372436 (t!372436 testedP!265)) lt!2113213)))))

(declare-fun b!5126007 () Bool)

(assert (=> b!5126007 (= e!3196770 lt!2113213)))

(assert (= (and d!1658196 c!881293) b!5126007))

(assert (= (and d!1658196 (not c!881293)) b!5126008))

(assert (= (and d!1658196 res!2182597) b!5126009))

(assert (= (and b!5126009 res!2182598) b!5126010))

(declare-fun m!6190028 () Bool)

(assert (=> d!1658196 m!6190028))

(assert (=> d!1658196 m!6189324))

(assert (=> d!1658196 m!6188168))

(declare-fun m!6190030 () Bool)

(assert (=> b!5126009 m!6190030))

(assert (=> b!5126009 m!6188408))

(assert (=> b!5126009 m!6188172))

(declare-fun m!6190032 () Bool)

(assert (=> b!5126008 m!6190032))

(assert (=> b!5125087 d!1658196))

(assert (=> d!1657452 d!1657528))

(declare-fun d!1658198 () Bool)

(assert (=> d!1658198 (= (++!13054 (++!13054 testedP!265 lt!2113207) lt!2113195) (++!13054 testedP!265 (++!13054 lt!2113207 lt!2113195)))))

(assert (=> d!1658198 true))

(declare-fun _$52!2380 () Unit!150433)

(assert (=> d!1658198 (= (choose!37722 testedP!265 lt!2113207 lt!2113195) _$52!2380)))

(declare-fun bs!1193981 () Bool)

(assert (= bs!1193981 d!1658198))

(assert (=> bs!1193981 m!6187790))

(assert (=> bs!1193981 m!6187790))

(assert (=> bs!1193981 m!6188190))

(assert (=> bs!1193981 m!6187810))

(assert (=> bs!1193981 m!6187810))

(assert (=> bs!1193981 m!6188194))

(assert (=> d!1657452 d!1658198))

(declare-fun b!5126014 () Bool)

(declare-fun e!3196773 () Bool)

(declare-fun lt!2113967 () List!59411)

(assert (=> b!5126014 (= e!3196773 (or (not (= (++!13054 lt!2113207 lt!2113195) Nil!59287)) (= lt!2113967 testedP!265)))))

(declare-fun d!1658200 () Bool)

(assert (=> d!1658200 e!3196773))

(declare-fun res!2182599 () Bool)

(assert (=> d!1658200 (=> (not res!2182599) (not e!3196773))))

(assert (=> d!1658200 (= res!2182599 (= (content!10549 lt!2113967) ((_ map or) (content!10549 testedP!265) (content!10549 (++!13054 lt!2113207 lt!2113195)))))))

(declare-fun e!3196772 () List!59411)

(assert (=> d!1658200 (= lt!2113967 e!3196772)))

(declare-fun c!881294 () Bool)

(assert (=> d!1658200 (= c!881294 ((_ is Nil!59287) testedP!265))))

(assert (=> d!1658200 (= (++!13054 testedP!265 (++!13054 lt!2113207 lt!2113195)) lt!2113967)))

(declare-fun b!5126013 () Bool)

(declare-fun res!2182600 () Bool)

(assert (=> b!5126013 (=> (not res!2182600) (not e!3196773))))

(assert (=> b!5126013 (= res!2182600 (= (size!39547 lt!2113967) (+ (size!39547 testedP!265) (size!39547 (++!13054 lt!2113207 lt!2113195)))))))

(declare-fun b!5126012 () Bool)

(assert (=> b!5126012 (= e!3196772 (Cons!59287 (h!65735 testedP!265) (++!13054 (t!372436 testedP!265) (++!13054 lt!2113207 lt!2113195))))))

(declare-fun b!5126011 () Bool)

(assert (=> b!5126011 (= e!3196772 (++!13054 lt!2113207 lt!2113195))))

(assert (= (and d!1658200 c!881294) b!5126011))

(assert (= (and d!1658200 (not c!881294)) b!5126012))

(assert (= (and d!1658200 res!2182599) b!5126013))

(assert (= (and b!5126013 res!2182600) b!5126014))

(declare-fun m!6190034 () Bool)

(assert (=> d!1658200 m!6190034))

(assert (=> d!1658200 m!6188166))

(assert (=> d!1658200 m!6187810))

(declare-fun m!6190036 () Bool)

(assert (=> d!1658200 m!6190036))

(declare-fun m!6190038 () Bool)

(assert (=> b!5126013 m!6190038))

(assert (=> b!5126013 m!6187864))

(assert (=> b!5126013 m!6187810))

(declare-fun m!6190040 () Bool)

(assert (=> b!5126013 m!6190040))

(assert (=> b!5126012 m!6187810))

(declare-fun m!6190042 () Bool)

(assert (=> b!5126012 m!6190042))

(assert (=> d!1657452 d!1658200))

(declare-fun lt!2113968 () List!59411)

(declare-fun e!3196775 () Bool)

(declare-fun b!5126018 () Bool)

(assert (=> b!5126018 (= e!3196775 (or (not (= lt!2113195 Nil!59287)) (= lt!2113968 (++!13054 testedP!265 lt!2113207))))))

(declare-fun d!1658202 () Bool)

(assert (=> d!1658202 e!3196775))

(declare-fun res!2182601 () Bool)

(assert (=> d!1658202 (=> (not res!2182601) (not e!3196775))))

(assert (=> d!1658202 (= res!2182601 (= (content!10549 lt!2113968) ((_ map or) (content!10549 (++!13054 testedP!265 lt!2113207)) (content!10549 lt!2113195))))))

(declare-fun e!3196774 () List!59411)

(assert (=> d!1658202 (= lt!2113968 e!3196774)))

(declare-fun c!881295 () Bool)

(assert (=> d!1658202 (= c!881295 ((_ is Nil!59287) (++!13054 testedP!265 lt!2113207)))))

(assert (=> d!1658202 (= (++!13054 (++!13054 testedP!265 lt!2113207) lt!2113195) lt!2113968)))

(declare-fun b!5126017 () Bool)

(declare-fun res!2182602 () Bool)

(assert (=> b!5126017 (=> (not res!2182602) (not e!3196775))))

(assert (=> b!5126017 (= res!2182602 (= (size!39547 lt!2113968) (+ (size!39547 (++!13054 testedP!265 lt!2113207)) (size!39547 lt!2113195))))))

(declare-fun b!5126016 () Bool)

(assert (=> b!5126016 (= e!3196774 (Cons!59287 (h!65735 (++!13054 testedP!265 lt!2113207)) (++!13054 (t!372436 (++!13054 testedP!265 lt!2113207)) lt!2113195)))))

(declare-fun b!5126015 () Bool)

(assert (=> b!5126015 (= e!3196774 lt!2113195)))

(assert (= (and d!1658202 c!881295) b!5126015))

(assert (= (and d!1658202 (not c!881295)) b!5126016))

(assert (= (and d!1658202 res!2182601) b!5126017))

(assert (= (and b!5126017 res!2182602) b!5126018))

(declare-fun m!6190044 () Bool)

(assert (=> d!1658202 m!6190044))

(assert (=> d!1658202 m!6187790))

(declare-fun m!6190046 () Bool)

(assert (=> d!1658202 m!6190046))

(assert (=> d!1658202 m!6188180))

(declare-fun m!6190048 () Bool)

(assert (=> b!5126017 m!6190048))

(assert (=> b!5126017 m!6187790))

(declare-fun m!6190050 () Bool)

(assert (=> b!5126017 m!6190050))

(assert (=> b!5126017 m!6188186))

(declare-fun m!6190052 () Bool)

(assert (=> b!5126016 m!6190052))

(assert (=> d!1657452 d!1658202))

(assert (=> d!1657452 d!1657450))

(declare-fun d!1658204 () Bool)

(assert (=> d!1658204 (= lt!2113193 lt!2113207)))

(assert (=> d!1658204 true))

(declare-fun _$63!1281 () Unit!150433)

(assert (=> d!1658204 (= (choose!37724 testedP!265 lt!2113193 testedP!265 lt!2113207 knownP!20) _$63!1281)))

(assert (=> d!1657514 d!1658204))

(assert (=> d!1657514 d!1657436))

(assert (=> bm!356761 d!1657972))

(assert (=> b!5125083 d!1657936))

(assert (=> b!5125083 d!1657932))

(declare-fun d!1658206 () Bool)

(assert (=> d!1658206 (= (isEmpty!31956 (_1!35123 lt!2113527)) ((_ is Nil!59287) (_1!35123 lt!2113527)))))

(assert (=> b!5125211 d!1658206))

(declare-fun d!1658208 () Bool)

(declare-fun lt!2113969 () Int)

(assert (=> d!1658208 (>= lt!2113969 0)))

(declare-fun e!3196776 () Int)

(assert (=> d!1658208 (= lt!2113969 e!3196776)))

(declare-fun c!881296 () Bool)

(assert (=> d!1658208 (= c!881296 ((_ is Nil!59287) lt!2113395))))

(assert (=> d!1658208 (= (size!39547 lt!2113395) lt!2113969)))

(declare-fun b!5126019 () Bool)

(assert (=> b!5126019 (= e!3196776 0)))

(declare-fun b!5126020 () Bool)

(assert (=> b!5126020 (= e!3196776 (+ 1 (size!39547 (t!372436 lt!2113395))))))

(assert (= (and d!1658208 c!881296) b!5126019))

(assert (= (and d!1658208 (not c!881296)) b!5126020))

(declare-fun m!6190054 () Bool)

(assert (=> b!5126020 m!6190054))

(assert (=> b!5125092 d!1658208))

(assert (=> b!5125092 d!1657962))

(assert (=> b!5125092 d!1658076))

(assert (=> bm!356770 d!1658090))

(declare-fun b!5126024 () Bool)

(declare-fun lt!2113970 () List!59411)

(declare-fun e!3196778 () Bool)

(assert (=> b!5126024 (= e!3196778 (or (not (= lt!2113189 Nil!59287)) (= lt!2113970 (t!372436 testedP!265))))))

(declare-fun d!1658210 () Bool)

(assert (=> d!1658210 e!3196778))

(declare-fun res!2182603 () Bool)

(assert (=> d!1658210 (=> (not res!2182603) (not e!3196778))))

(assert (=> d!1658210 (= res!2182603 (= (content!10549 lt!2113970) ((_ map or) (content!10549 (t!372436 testedP!265)) (content!10549 lt!2113189))))))

(declare-fun e!3196777 () List!59411)

(assert (=> d!1658210 (= lt!2113970 e!3196777)))

(declare-fun c!881297 () Bool)

(assert (=> d!1658210 (= c!881297 ((_ is Nil!59287) (t!372436 testedP!265)))))

(assert (=> d!1658210 (= (++!13054 (t!372436 testedP!265) lt!2113189) lt!2113970)))

(declare-fun b!5126023 () Bool)

(declare-fun res!2182604 () Bool)

(assert (=> b!5126023 (=> (not res!2182604) (not e!3196778))))

(assert (=> b!5126023 (= res!2182604 (= (size!39547 lt!2113970) (+ (size!39547 (t!372436 testedP!265)) (size!39547 lt!2113189))))))

(declare-fun b!5126022 () Bool)

(assert (=> b!5126022 (= e!3196777 (Cons!59287 (h!65735 (t!372436 testedP!265)) (++!13054 (t!372436 (t!372436 testedP!265)) lt!2113189)))))

(declare-fun b!5126021 () Bool)

(assert (=> b!5126021 (= e!3196777 lt!2113189)))

(assert (= (and d!1658210 c!881297) b!5126021))

(assert (= (and d!1658210 (not c!881297)) b!5126022))

(assert (= (and d!1658210 res!2182603) b!5126023))

(assert (= (and b!5126023 res!2182604) b!5126024))

(declare-fun m!6190056 () Bool)

(assert (=> d!1658210 m!6190056))

(assert (=> d!1658210 m!6189324))

(assert (=> d!1658210 m!6188440))

(declare-fun m!6190058 () Bool)

(assert (=> b!5126023 m!6190058))

(assert (=> b!5126023 m!6188408))

(assert (=> b!5126023 m!6188444))

(declare-fun m!6190060 () Bool)

(assert (=> b!5126022 m!6190060))

(assert (=> b!5125286 d!1658210))

(assert (=> b!5125270 d!1657558))

(assert (=> b!5125270 d!1657492))

(declare-fun b!5126037 () Bool)

(declare-fun e!3196781 () Bool)

(declare-fun tp!1429677 () Bool)

(assert (=> b!5126037 (= e!3196781 tp!1429677)))

(declare-fun b!5126035 () Bool)

(assert (=> b!5126035 (= e!3196781 tp_is_empty!37755)))

(assert (=> b!5125297 (= tp!1429615 e!3196781)))

(declare-fun b!5126036 () Bool)

(declare-fun tp!1429681 () Bool)

(declare-fun tp!1429679 () Bool)

(assert (=> b!5126036 (= e!3196781 (and tp!1429681 tp!1429679))))

(declare-fun b!5126038 () Bool)

(declare-fun tp!1429678 () Bool)

(declare-fun tp!1429680 () Bool)

(assert (=> b!5126038 (= e!3196781 (and tp!1429678 tp!1429680))))

(assert (= (and b!5125297 ((_ is ElementMatch!14241) (h!65736 (exprs!4125 setElem!30550)))) b!5126035))

(assert (= (and b!5125297 ((_ is Concat!23086) (h!65736 (exprs!4125 setElem!30550)))) b!5126036))

(assert (= (and b!5125297 ((_ is Star!14241) (h!65736 (exprs!4125 setElem!30550)))) b!5126037))

(assert (= (and b!5125297 ((_ is Union!14241) (h!65736 (exprs!4125 setElem!30550)))) b!5126038))

(declare-fun b!5126039 () Bool)

(declare-fun e!3196782 () Bool)

(declare-fun tp!1429682 () Bool)

(declare-fun tp!1429683 () Bool)

(assert (=> b!5126039 (= e!3196782 (and tp!1429682 tp!1429683))))

(assert (=> b!5125297 (= tp!1429616 e!3196782)))

(assert (= (and b!5125297 ((_ is Cons!59288) (t!372437 (exprs!4125 setElem!30550)))) b!5126039))

(declare-fun b!5126040 () Bool)

(declare-fun e!3196783 () Bool)

(declare-fun tp!1429684 () Bool)

(declare-fun tp!1429685 () Bool)

(assert (=> b!5126040 (= e!3196783 (and tp!1429684 tp!1429685))))

(assert (=> b!5125308 (= tp!1429626 e!3196783)))

(assert (= (and b!5125308 ((_ is Cons!59288) (exprs!4125 setElem!30557))) b!5126040))

(declare-fun b!5126043 () Bool)

(declare-fun e!3196784 () Bool)

(declare-fun tp!1429686 () Bool)

(assert (=> b!5126043 (= e!3196784 tp!1429686)))

(declare-fun b!5126041 () Bool)

(assert (=> b!5126041 (= e!3196784 tp_is_empty!37755)))

(assert (=> b!5125309 (= tp!1429627 e!3196784)))

(declare-fun b!5126042 () Bool)

(declare-fun tp!1429690 () Bool)

(declare-fun tp!1429688 () Bool)

(assert (=> b!5126042 (= e!3196784 (and tp!1429690 tp!1429688))))

(declare-fun b!5126044 () Bool)

(declare-fun tp!1429687 () Bool)

(declare-fun tp!1429689 () Bool)

(assert (=> b!5126044 (= e!3196784 (and tp!1429687 tp!1429689))))

(assert (= (and b!5125309 ((_ is ElementMatch!14241) (h!65736 (exprs!4125 setElem!30549)))) b!5126041))

(assert (= (and b!5125309 ((_ is Concat!23086) (h!65736 (exprs!4125 setElem!30549)))) b!5126042))

(assert (= (and b!5125309 ((_ is Star!14241) (h!65736 (exprs!4125 setElem!30549)))) b!5126043))

(assert (= (and b!5125309 ((_ is Union!14241) (h!65736 (exprs!4125 setElem!30549)))) b!5126044))

(declare-fun b!5126045 () Bool)

(declare-fun e!3196785 () Bool)

(declare-fun tp!1429691 () Bool)

(declare-fun tp!1429692 () Bool)

(assert (=> b!5126045 (= e!3196785 (and tp!1429691 tp!1429692))))

(assert (=> b!5125309 (= tp!1429628 e!3196785)))

(assert (= (and b!5125309 ((_ is Cons!59288) (t!372437 (exprs!4125 setElem!30549)))) b!5126045))

(declare-fun b!5126046 () Bool)

(declare-fun e!3196786 () Bool)

(declare-fun tp!1429693 () Bool)

(assert (=> b!5126046 (= e!3196786 (and tp_is_empty!37755 tp!1429693))))

(assert (=> b!5125303 (= tp!1429620 e!3196786)))

(assert (= (and b!5125303 ((_ is Cons!59287) (t!372436 (t!372436 testedP!265)))) b!5126046))

(declare-fun condSetEmpty!30561 () Bool)

(assert (=> setNonEmpty!30558 (= condSetEmpty!30561 (= setRest!30558 ((as const (Array Context!7250 Bool)) false)))))

(declare-fun setRes!30561 () Bool)

(assert (=> setNonEmpty!30558 (= tp!1429630 setRes!30561)))

(declare-fun setIsEmpty!30561 () Bool)

(assert (=> setIsEmpty!30561 setRes!30561))

(declare-fun setElem!30561 () Context!7250)

(declare-fun tp!1429694 () Bool)

(declare-fun setNonEmpty!30561 () Bool)

(declare-fun e!3196787 () Bool)

(assert (=> setNonEmpty!30561 (= setRes!30561 (and tp!1429694 (inv!78783 setElem!30561) e!3196787))))

(declare-fun setRest!30561 () (InoxSet Context!7250))

(assert (=> setNonEmpty!30561 (= setRest!30558 ((_ map or) (store ((as const (Array Context!7250 Bool)) false) setElem!30561 true) setRest!30561))))

(declare-fun b!5126047 () Bool)

(declare-fun tp!1429695 () Bool)

(assert (=> b!5126047 (= e!3196787 tp!1429695)))

(assert (= (and setNonEmpty!30558 condSetEmpty!30561) setIsEmpty!30561))

(assert (= (and setNonEmpty!30558 (not condSetEmpty!30561)) setNonEmpty!30561))

(assert (= setNonEmpty!30561 b!5126047))

(declare-fun m!6190062 () Bool)

(assert (=> setNonEmpty!30561 m!6190062))

(declare-fun b!5126048 () Bool)

(declare-fun e!3196788 () Bool)

(declare-fun tp!1429696 () Bool)

(declare-fun tp!1429697 () Bool)

(assert (=> b!5126048 (= e!3196788 (and tp!1429696 tp!1429697))))

(assert (=> b!5125311 (= tp!1429631 e!3196788)))

(assert (= (and b!5125311 ((_ is Cons!59288) (exprs!4125 setElem!30558))) b!5126048))

(declare-fun b!5126049 () Bool)

(declare-fun e!3196789 () Bool)

(declare-fun tp!1429698 () Bool)

(assert (=> b!5126049 (= e!3196789 (and tp_is_empty!37755 tp!1429698))))

(assert (=> b!5125302 (= tp!1429619 e!3196789)))

(assert (= (and b!5125302 ((_ is Cons!59287) (t!372436 (t!372436 knownP!20)))) b!5126049))

(declare-fun b!5126050 () Bool)

(declare-fun e!3196790 () Bool)

(declare-fun tp!1429699 () Bool)

(assert (=> b!5126050 (= e!3196790 (and tp_is_empty!37755 tp!1429699))))

(assert (=> b!5125310 (= tp!1429629 e!3196790)))

(assert (= (and b!5125310 ((_ is Cons!59287) (t!372436 (t!372436 input!5745)))) b!5126050))

(declare-fun condSetEmpty!30562 () Bool)

(assert (=> setNonEmpty!30557 (= condSetEmpty!30562 (= setRest!30557 ((as const (Array Context!7250 Bool)) false)))))

(declare-fun setRes!30562 () Bool)

(assert (=> setNonEmpty!30557 (= tp!1429625 setRes!30562)))

(declare-fun setIsEmpty!30562 () Bool)

(assert (=> setIsEmpty!30562 setRes!30562))

(declare-fun setElem!30562 () Context!7250)

(declare-fun tp!1429700 () Bool)

(declare-fun e!3196791 () Bool)

(declare-fun setNonEmpty!30562 () Bool)

(assert (=> setNonEmpty!30562 (= setRes!30562 (and tp!1429700 (inv!78783 setElem!30562) e!3196791))))

(declare-fun setRest!30562 () (InoxSet Context!7250))

(assert (=> setNonEmpty!30562 (= setRest!30557 ((_ map or) (store ((as const (Array Context!7250 Bool)) false) setElem!30562 true) setRest!30562))))

(declare-fun b!5126051 () Bool)

(declare-fun tp!1429701 () Bool)

(assert (=> b!5126051 (= e!3196791 tp!1429701)))

(assert (= (and setNonEmpty!30557 condSetEmpty!30562) setIsEmpty!30562))

(assert (= (and setNonEmpty!30557 (not condSetEmpty!30562)) setNonEmpty!30562))

(assert (= setNonEmpty!30562 b!5126051))

(declare-fun m!6190064 () Bool)

(assert (=> setNonEmpty!30562 m!6190064))

(declare-fun b_lambda!199061 () Bool)

(assert (= b_lambda!199059 (or d!1657428 b_lambda!199061)))

(declare-fun bs!1193982 () Bool)

(declare-fun d!1658212 () Bool)

(assert (= bs!1193982 (and d!1658212 d!1657428)))

(declare-fun validRegex!6217 (Regex!14241) Bool)

(assert (=> bs!1193982 (= (dynLambda!23617 lambda!251730 (h!65736 (exprs!4125 setElem!30550))) (validRegex!6217 (h!65736 (exprs!4125 setElem!30550))))))

(declare-fun m!6190066 () Bool)

(assert (=> bs!1193982 m!6190066))

(assert (=> b!5125931 d!1658212))

(declare-fun b_lambda!199063 () Bool)

(assert (= b_lambda!199057 (or d!1657556 b_lambda!199063)))

(declare-fun bs!1193983 () Bool)

(declare-fun d!1658214 () Bool)

(assert (= bs!1193983 (and d!1658214 d!1657556)))

(assert (=> bs!1193983 (= (dynLambda!23617 lambda!251738 (h!65736 (exprs!4125 setElem!30549))) (validRegex!6217 (h!65736 (exprs!4125 setElem!30549))))))

(declare-fun m!6190068 () Bool)

(assert (=> bs!1193983 m!6190068))

(assert (=> b!5125845 d!1658214))

(check-sat (not b!5125907) (not b!5126044) (not b!5125958) (not d!1658202) (not d!1658132) (not d!1658022) (not b!5126043) (not d!1658196) (not b!5126049) (not b!5126050) (not b!5125879) (not b!5125971) (not bm!356815) (not d!1657980) (not b!5125987) (not d!1657926) (not b!5125950) (not bm!356806) (not d!1658040) (not b!5125787) (not b!5125797) (not b!5125972) (not b!5126036) (not b!5125727) (not b!5125979) (not d!1658020) (not d!1658010) (not b!5125926) (not d!1658178) (not d!1658210) (not d!1657908) (not b!5125922) (not d!1658042) (not b!5125990) (not d!1657904) (not b!5125901) (not b!5126039) (not b!5125855) (not d!1658156) (not b!5126023) (not b!5125783) (not b!5125826) (not d!1658186) (not b!5125891) (not b!5125954) (not b!5125959) (not b!5125685) (not d!1657916) (not d!1658126) (not b!5126020) (not bm!356812) (not b!5125884) (not b!5125709) (not d!1657948) (not d!1658078) (not d!1658046) (not b!5125777) (not b!5125773) (not b!5126047) (not bm!356820) (not d!1658050) (not b!5126042) (not b!5125905) (not b!5125816) (not bm!356805) (not b!5125784) (not b!5125687) (not b!5126008) (not bm!356818) (not b!5125791) (not d!1658200) (not bm!356802) (not d!1657970) (not bm!356824) (not b!5125830) (not b!5125814) (not b!5125827) (not d!1657966) (not b!5125910) (not b!5125810) (not b!5125699) (not b!5125888) (not d!1658180) (not b!5125717) (not b!5125739) (not b!5125900) (not d!1657964) (not b!5125882) (not d!1658154) (not b!5125733) (not d!1657910) (not b!5125769) (not b!5126045) (not d!1658190) (not b!5125836) (not b!5125755) (not b!5125852) (not b!5126012) (not b!5125734) (not d!1657984) (not b!5126037) (not b!5125779) (not b!5125995) (not d!1658012) (not d!1658158) (not b!5125800) (not bm!356821) (not b!5125856) (not b!5125712) (not b!5125991) (not bm!356823) (not bm!356810) (not b!5125768) (not bm!356817) (not b!5125781) (not b!5125775) (not b!5125870) (not b!5125793) (not d!1657930) (not d!1657978) (not d!1658164) (not d!1658052) (not b!5125742) (not d!1658142) (not bm!356811) (not b!5125749) (not b!5125767) (not d!1658008) (not d!1658166) (not d!1658044) (not b!5125986) (not b!5125817) (not b!5126051) (not b!5125756) (not b!5125898) (not b!5125962) (not b!5125886) (not b!5125820) (not b!5125964) (not b!5126046) (not b!5126009) (not b!5125929) (not b!5125805) (not b!5125927) (not b!5125937) (not b!5125894) (not b!5125808) (not bm!356803) (not b!5125724) (not b!5125932) (not b!5125968) (not d!1658160) (not b!5126005) (not d!1658152) (not b!5125729) (not d!1657982) (not b!5125970) (not d!1658056) (not b!5125695) (not b!5126022) (not bm!356807) (not b!5125965) (not b!5125834) (not b!5125936) (not b!5125933) (not b!5126038) (not d!1658066) (not d!1658084) (not d!1657888) (not b!5125719) (not b!5125722) (not b_lambda!199063) (not b!5125935) (not b!5125763) (not bm!356801) (not d!1658104) (not b!5125752) (not b!5125848) (not d!1657946) (not d!1658068) (not b!5125943) (not bm!356822) (not b!5125799) (not b!5125876) (not b!5125725) (not b!5126040) (not bs!1193982) (not bm!356799) (not b!5125825) (not b!5125928) (not d!1658128) (not b!5126013) (not b!5125918) (not b!5125731) (not b!5125846) (not b!5125955) (not b!5125811) (not b!5125759) (not b!5125708) (not b!5125715) (not d!1657990) (not b_lambda!199061) (not b!5125912) (not b!5125737) (not b!5125750) (not b!5125854) (not b!5125994) (not b!5125916) (not b!5125824) (not bm!356814) (not b!5125878) (not b!5126048) (not b!5125863) (not d!1658082) (not d!1658114) (not d!1657974) (not b!5126016) (not b!5125720) (not b!5125835) tp_is_empty!37755 (not b!5125840) (not bm!356800) (not d!1658034) (not b!5125906) (not b!5125896) (not b!5125924) (not b!5125904) (not b!5125838) (not b!5125747) (not b!5125871) (not b!5125883) (not b!5125880) (not d!1657906) (not bm!356816) (not d!1657950) (not d!1658122) (not d!1658148) (not d!1658118) (not b!5125796) (not d!1657956) (not d!1657912) (not d!1657928) (not b!5125890) (not d!1658032) (not b!5125828) (not b!5125711) (not b!5125821) (not b!5125760) (not bm!356813) (not b!5125770) (not bm!356819) (not b!5126002) (not b!5125788) (not b!5126017) (not bm!356808) (not bm!356809) (not b!5125988) (not d!1657976) (not d!1658192) (not b!5125951) (not b!5125919) (not d!1658120) (not b!5125785) (not bs!1193983) (not b!5125741) (not b!5125704) (not d!1658198) (not b!5125764) (not d!1657958) (not b!5125857) (not b!5125745) (not b!5126003) (not b!5125973) (not b!5125831) (not d!1658176) (not d!1658150) (not b!5125688) (not b!5125913) (not b!5125697) (not b!5125850) (not b!5125874) (not d!1657894) (not d!1658024) (not b!5125998) (not d!1658036) (not d!1657922) (not b!5126000) (not setNonEmpty!30562) (not bm!356804) (not setNonEmpty!30561) (not b!5125707) (not b!5125803) (not d!1658172) (not b!5125795))
(check-sat)
