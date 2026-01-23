; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540340 () Bool)

(assert start!540340)

(declare-fun b!5119618 () Bool)

(declare-fun e!3192978 () Bool)

(declare-fun tp!1428279 () Bool)

(assert (=> b!5119618 (= e!3192978 tp!1428279)))

(declare-fun b!5119619 () Bool)

(declare-fun e!3192986 () Bool)

(declare-fun e!3192975 () Bool)

(assert (=> b!5119619 (= e!3192986 (not e!3192975))))

(declare-fun res!2179937 () Bool)

(assert (=> b!5119619 (=> res!2179937 e!3192975)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28688 0))(
  ( (C!28689 (val!23996 Int)) )
))
(declare-datatypes ((Regex!14211 0))(
  ( (ElementMatch!14211 (c!879727 C!28688)) (Concat!23056 (regOne!28934 Regex!14211) (regTwo!28934 Regex!14211)) (EmptyExpr!14211) (Star!14211 (reg!14540 Regex!14211)) (EmptyLang!14211) (Union!14211 (regOne!28935 Regex!14211) (regTwo!28935 Regex!14211)) )
))
(declare-datatypes ((List!59341 0))(
  ( (Nil!59217) (Cons!59217 (h!65665 Regex!14211) (t!372358 List!59341)) )
))
(declare-datatypes ((Context!7190 0))(
  ( (Context!7191 (exprs!4095 List!59341)) )
))
(declare-fun z!4463 () (InoxSet Context!7190))

(declare-datatypes ((List!59342 0))(
  ( (Nil!59218) (Cons!59218 (h!65666 C!28688) (t!372359 List!59342)) )
))
(declare-fun lt!2110705 () List!59342)

(declare-fun matchZipper!879 ((InoxSet Context!7190) List!59342) Bool)

(assert (=> b!5119619 (= res!2179937 (not (matchZipper!879 z!4463 lt!2110705)))))

(declare-fun knownP!20 () List!59342)

(declare-fun testedP!265 () List!59342)

(declare-fun getSuffix!3290 (List!59342 List!59342) List!59342)

(assert (=> b!5119619 (= lt!2110705 (getSuffix!3290 knownP!20 testedP!265))))

(declare-fun isPrefix!5616 (List!59342 List!59342) Bool)

(assert (=> b!5119619 (isPrefix!5616 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150357 0))(
  ( (Unit!150358) )
))
(declare-fun lt!2110693 () Unit!150357)

(declare-fun input!5745 () List!59342)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!753 (List!59342 List!59342 List!59342) Unit!150357)

(assert (=> b!5119619 (= lt!2110693 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!753 knownP!20 testedP!265 input!5745))))

(declare-fun b!5119620 () Bool)

(declare-fun res!2179938 () Bool)

(assert (=> b!5119620 (=> (not res!2179938) (not e!3192986))))

(declare-fun baseZ!46 () (InoxSet Context!7190))

(assert (=> b!5119620 (= res!2179938 (matchZipper!879 baseZ!46 knownP!20))))

(declare-fun b!5119621 () Bool)

(declare-fun res!2179929 () Bool)

(declare-fun e!3192983 () Bool)

(assert (=> b!5119621 (=> res!2179929 e!3192983)))

(declare-fun lt!2110704 () List!59342)

(declare-fun ++!13036 (List!59342 List!59342) List!59342)

(assert (=> b!5119621 (= res!2179929 (not (= (++!13036 testedP!265 lt!2110704) input!5745)))))

(declare-fun setIsEmpty!30309 () Bool)

(declare-fun setRes!30310 () Bool)

(assert (=> setIsEmpty!30309 setRes!30310))

(declare-fun b!5119622 () Bool)

(declare-fun e!3192985 () Bool)

(declare-fun e!3192981 () Bool)

(assert (=> b!5119622 (= e!3192985 e!3192981)))

(declare-fun res!2179943 () Bool)

(assert (=> b!5119622 (=> res!2179943 e!3192981)))

(declare-fun lt!2110691 () List!59342)

(declare-fun lt!2110701 () C!28688)

(declare-fun $colon$colon!1141 (List!59342 C!28688) List!59342)

(assert (=> b!5119622 (= res!2179943 (not (= lt!2110705 ($colon$colon!1141 lt!2110691 lt!2110701))))))

(declare-fun tail!10076 (List!59342) List!59342)

(assert (=> b!5119622 (= lt!2110691 (tail!10076 lt!2110705))))

(declare-fun b!5119623 () Bool)

(declare-fun e!3192976 () Bool)

(declare-fun lt!2110690 () List!59342)

(assert (=> b!5119623 (= e!3192976 (= lt!2110691 lt!2110690))))

(declare-fun lt!2110706 () List!59342)

(assert (=> b!5119623 (= lt!2110706 lt!2110705)))

(declare-fun lt!2110696 () Unit!150357)

(declare-fun lemmaSamePrefixThenSameSuffix!2650 (List!59342 List!59342 List!59342 List!59342 List!59342) Unit!150357)

(assert (=> b!5119623 (= lt!2110696 (lemmaSamePrefixThenSameSuffix!2650 testedP!265 lt!2110706 testedP!265 lt!2110705 knownP!20))))

(declare-fun lt!2110692 () List!59342)

(assert (=> b!5119623 (= lt!2110692 (++!13036 testedP!265 lt!2110706))))

(declare-fun lt!2110702 () List!59342)

(assert (=> b!5119623 (= lt!2110706 (++!13036 lt!2110702 lt!2110690))))

(declare-fun lt!2110683 () Unit!150357)

(declare-fun lemmaConcatAssociativity!2784 (List!59342 List!59342 List!59342) Unit!150357)

(assert (=> b!5119623 (= lt!2110683 (lemmaConcatAssociativity!2784 testedP!265 lt!2110702 lt!2110690))))

(declare-fun b!5119624 () Bool)

(declare-fun res!2179930 () Bool)

(assert (=> b!5119624 (=> res!2179930 e!3192981)))

(declare-fun lt!2110694 () List!59342)

(assert (=> b!5119624 (= res!2179930 (not (= lt!2110694 knownP!20)))))

(declare-fun res!2179935 () Bool)

(declare-fun e!3192980 () Bool)

(assert (=> start!540340 (=> (not res!2179935) (not e!3192980))))

(assert (=> start!540340 (= res!2179935 (isPrefix!5616 testedP!265 input!5745))))

(assert (=> start!540340 e!3192980))

(declare-fun e!3192984 () Bool)

(assert (=> start!540340 e!3192984))

(declare-fun condSetEmpty!30309 () Bool)

(assert (=> start!540340 (= condSetEmpty!30309 (= z!4463 ((as const (Array Context!7190 Bool)) false)))))

(assert (=> start!540340 setRes!30310))

(declare-fun e!3192982 () Bool)

(assert (=> start!540340 e!3192982))

(declare-fun condSetEmpty!30310 () Bool)

(assert (=> start!540340 (= condSetEmpty!30310 (= baseZ!46 ((as const (Array Context!7190 Bool)) false)))))

(declare-fun setRes!30309 () Bool)

(assert (=> start!540340 setRes!30309))

(declare-fun e!3192987 () Bool)

(assert (=> start!540340 e!3192987))

(declare-fun b!5119625 () Bool)

(declare-fun e!3192977 () Bool)

(assert (=> b!5119625 (= e!3192977 e!3192983)))

(declare-fun res!2179944 () Bool)

(assert (=> b!5119625 (=> res!2179944 e!3192983)))

(declare-fun lt!2110686 () List!59342)

(assert (=> b!5119625 (= res!2179944 (not (= lt!2110686 input!5745)))))

(declare-fun lt!2110697 () List!59342)

(assert (=> b!5119625 (= lt!2110686 (++!13036 lt!2110694 lt!2110697))))

(assert (=> b!5119625 (= lt!2110694 (++!13036 testedP!265 lt!2110705))))

(declare-fun setElem!30309 () Context!7190)

(declare-fun setNonEmpty!30309 () Bool)

(declare-fun tp!1428277 () Bool)

(declare-fun inv!78708 (Context!7190) Bool)

(assert (=> setNonEmpty!30309 (= setRes!30309 (and tp!1428277 (inv!78708 setElem!30309) e!3192978))))

(declare-fun setRest!30310 () (InoxSet Context!7190))

(assert (=> setNonEmpty!30309 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7190 Bool)) false) setElem!30309 true) setRest!30310))))

(declare-fun b!5119626 () Bool)

(declare-fun tp_is_empty!37695 () Bool)

(declare-fun tp!1428275 () Bool)

(assert (=> b!5119626 (= e!3192982 (and tp_is_empty!37695 tp!1428275))))

(declare-fun b!5119627 () Bool)

(declare-fun e!3192974 () Bool)

(assert (=> b!5119627 (= e!3192974 e!3192985)))

(declare-fun res!2179933 () Bool)

(assert (=> b!5119627 (=> res!2179933 e!3192985)))

(declare-fun head!10939 (List!59342) C!28688)

(assert (=> b!5119627 (= res!2179933 (not (= (head!10939 lt!2110705) lt!2110701)))))

(declare-fun lt!2110700 () List!59342)

(assert (=> b!5119627 (= lt!2110700 lt!2110704)))

(declare-fun lt!2110699 () Unit!150357)

(assert (=> b!5119627 (= lt!2110699 (lemmaSamePrefixThenSameSuffix!2650 testedP!265 lt!2110700 testedP!265 lt!2110704 input!5745))))

(declare-fun setIsEmpty!30310 () Bool)

(assert (=> setIsEmpty!30310 setRes!30309))

(declare-fun b!5119628 () Bool)

(assert (=> b!5119628 (= e!3192983 e!3192974)))

(declare-fun res!2179942 () Bool)

(assert (=> b!5119628 (=> res!2179942 e!3192974)))

(declare-fun lt!2110698 () List!59342)

(assert (=> b!5119628 (= res!2179942 (not (= lt!2110698 input!5745)))))

(assert (=> b!5119628 (= lt!2110686 lt!2110698)))

(assert (=> b!5119628 (= lt!2110698 (++!13036 testedP!265 lt!2110700))))

(assert (=> b!5119628 (= lt!2110700 (++!13036 lt!2110705 lt!2110697))))

(declare-fun lt!2110685 () Unit!150357)

(assert (=> b!5119628 (= lt!2110685 (lemmaConcatAssociativity!2784 testedP!265 lt!2110705 lt!2110697))))

(declare-fun b!5119629 () Bool)

(assert (=> b!5119629 (= e!3192975 e!3192977)))

(declare-fun res!2179940 () Bool)

(assert (=> b!5119629 (=> res!2179940 e!3192977)))

(assert (=> b!5119629 (= res!2179940 (not (= (++!13036 knownP!20 lt!2110697) input!5745)))))

(assert (=> b!5119629 (= lt!2110697 (getSuffix!3290 input!5745 knownP!20))))

(declare-fun lt!2110688 () List!59342)

(assert (=> b!5119629 (= lt!2110690 (getSuffix!3290 knownP!20 lt!2110688))))

(assert (=> b!5119629 (isPrefix!5616 lt!2110688 knownP!20)))

(declare-fun lt!2110689 () Unit!150357)

(assert (=> b!5119629 (= lt!2110689 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!753 knownP!20 lt!2110688 input!5745))))

(declare-fun derivationZipper!110 ((InoxSet Context!7190) List!59342) (InoxSet Context!7190))

(declare-fun derivationStepZipper!846 ((InoxSet Context!7190) C!28688) (InoxSet Context!7190))

(assert (=> b!5119629 (= (derivationZipper!110 baseZ!46 lt!2110688) (derivationStepZipper!846 z!4463 lt!2110701))))

(declare-fun lt!2110687 () Unit!150357)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!67 ((InoxSet Context!7190) (InoxSet Context!7190) List!59342 C!28688) Unit!150357)

(assert (=> b!5119629 (= lt!2110687 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!67 baseZ!46 z!4463 testedP!265 lt!2110701))))

(assert (=> b!5119629 (isPrefix!5616 lt!2110688 input!5745)))

(declare-fun lt!2110684 () Unit!150357)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1002 (List!59342 List!59342) Unit!150357)

(assert (=> b!5119629 (= lt!2110684 (lemmaAddHeadSuffixToPrefixStillPrefix!1002 testedP!265 input!5745))))

(assert (=> b!5119629 (= lt!2110688 (++!13036 testedP!265 lt!2110702))))

(assert (=> b!5119629 (= lt!2110702 (Cons!59218 lt!2110701 Nil!59218))))

(assert (=> b!5119629 (= lt!2110701 (head!10939 lt!2110704))))

(assert (=> b!5119629 (= lt!2110704 (getSuffix!3290 input!5745 testedP!265))))

(declare-fun b!5119630 () Bool)

(declare-fun res!2179939 () Bool)

(assert (=> b!5119630 (=> res!2179939 e!3192975)))

(declare-fun lt!2110703 () Int)

(declare-fun lt!2110695 () Int)

(assert (=> b!5119630 (= res!2179939 (= lt!2110703 lt!2110695))))

(declare-fun b!5119631 () Bool)

(declare-fun res!2179936 () Bool)

(assert (=> b!5119631 (=> res!2179936 e!3192975)))

(assert (=> b!5119631 (= res!2179936 (not (= (derivationZipper!110 baseZ!46 testedP!265) z!4463)))))

(declare-fun setNonEmpty!30310 () Bool)

(declare-fun e!3192979 () Bool)

(declare-fun setElem!30310 () Context!7190)

(declare-fun tp!1428278 () Bool)

(assert (=> setNonEmpty!30310 (= setRes!30310 (and tp!1428278 (inv!78708 setElem!30310) e!3192979))))

(declare-fun setRest!30309 () (InoxSet Context!7190))

(assert (=> setNonEmpty!30310 (= z!4463 ((_ map or) (store ((as const (Array Context!7190 Bool)) false) setElem!30310 true) setRest!30309))))

(declare-fun b!5119632 () Bool)

(declare-fun res!2179934 () Bool)

(assert (=> b!5119632 (=> (not res!2179934) (not e!3192980))))

(assert (=> b!5119632 (= res!2179934 (isPrefix!5616 knownP!20 input!5745))))

(declare-fun b!5119633 () Bool)

(declare-fun tp!1428273 () Bool)

(assert (=> b!5119633 (= e!3192979 tp!1428273)))

(declare-fun b!5119634 () Bool)

(assert (=> b!5119634 (= e!3192980 e!3192986)))

(declare-fun res!2179932 () Bool)

(assert (=> b!5119634 (=> (not res!2179932) (not e!3192986))))

(assert (=> b!5119634 (= res!2179932 (>= lt!2110695 lt!2110703))))

(declare-fun size!39517 (List!59342) Int)

(assert (=> b!5119634 (= lt!2110703 (size!39517 testedP!265))))

(assert (=> b!5119634 (= lt!2110695 (size!39517 knownP!20))))

(declare-fun b!5119635 () Bool)

(declare-fun tp!1428274 () Bool)

(assert (=> b!5119635 (= e!3192984 (and tp_is_empty!37695 tp!1428274))))

(declare-fun b!5119636 () Bool)

(declare-fun res!2179931 () Bool)

(assert (=> b!5119636 (=> res!2179931 e!3192975)))

(assert (=> b!5119636 (= res!2179931 (>= lt!2110703 (size!39517 input!5745)))))

(declare-fun b!5119637 () Bool)

(assert (=> b!5119637 (= e!3192981 e!3192976)))

(declare-fun res!2179941 () Bool)

(assert (=> b!5119637 (=> res!2179941 e!3192976)))

(assert (=> b!5119637 (= res!2179941 (not (= lt!2110692 knownP!20)))))

(assert (=> b!5119637 (= lt!2110692 (++!13036 lt!2110688 lt!2110690))))

(declare-fun b!5119638 () Bool)

(declare-fun tp!1428276 () Bool)

(assert (=> b!5119638 (= e!3192987 (and tp_is_empty!37695 tp!1428276))))

(declare-fun b!5119639 () Bool)

(declare-fun res!2179928 () Bool)

(assert (=> b!5119639 (=> res!2179928 e!3192975)))

(declare-fun lostCauseZipper!1097 ((InoxSet Context!7190)) Bool)

(assert (=> b!5119639 (= res!2179928 (lostCauseZipper!1097 z!4463))))

(assert (= (and start!540340 res!2179935) b!5119632))

(assert (= (and b!5119632 res!2179934) b!5119634))

(assert (= (and b!5119634 res!2179932) b!5119620))

(assert (= (and b!5119620 res!2179938) b!5119619))

(assert (= (and b!5119619 (not res!2179937)) b!5119631))

(assert (= (and b!5119631 (not res!2179936)) b!5119639))

(assert (= (and b!5119639 (not res!2179928)) b!5119630))

(assert (= (and b!5119630 (not res!2179939)) b!5119636))

(assert (= (and b!5119636 (not res!2179931)) b!5119629))

(assert (= (and b!5119629 (not res!2179940)) b!5119625))

(assert (= (and b!5119625 (not res!2179944)) b!5119621))

(assert (= (and b!5119621 (not res!2179929)) b!5119628))

(assert (= (and b!5119628 (not res!2179942)) b!5119627))

(assert (= (and b!5119627 (not res!2179933)) b!5119622))

(assert (= (and b!5119622 (not res!2179943)) b!5119624))

(assert (= (and b!5119624 (not res!2179930)) b!5119637))

(assert (= (and b!5119637 (not res!2179941)) b!5119623))

(get-info :version)

(assert (= (and start!540340 ((_ is Cons!59218) input!5745)) b!5119635))

(assert (= (and start!540340 condSetEmpty!30309) setIsEmpty!30309))

(assert (= (and start!540340 (not condSetEmpty!30309)) setNonEmpty!30310))

(assert (= setNonEmpty!30310 b!5119633))

(assert (= (and start!540340 ((_ is Cons!59218) testedP!265)) b!5119626))

(assert (= (and start!540340 condSetEmpty!30310) setIsEmpty!30310))

(assert (= (and start!540340 (not condSetEmpty!30310)) setNonEmpty!30309))

(assert (= setNonEmpty!30309 b!5119618))

(assert (= (and start!540340 ((_ is Cons!59218) knownP!20)) b!5119638))

(declare-fun m!6180114 () Bool)

(assert (=> b!5119620 m!6180114))

(declare-fun m!6180116 () Bool)

(assert (=> b!5119631 m!6180116))

(declare-fun m!6180118 () Bool)

(assert (=> b!5119625 m!6180118))

(declare-fun m!6180120 () Bool)

(assert (=> b!5119625 m!6180120))

(declare-fun m!6180122 () Bool)

(assert (=> b!5119629 m!6180122))

(declare-fun m!6180124 () Bool)

(assert (=> b!5119629 m!6180124))

(declare-fun m!6180126 () Bool)

(assert (=> b!5119629 m!6180126))

(declare-fun m!6180128 () Bool)

(assert (=> b!5119629 m!6180128))

(declare-fun m!6180130 () Bool)

(assert (=> b!5119629 m!6180130))

(declare-fun m!6180132 () Bool)

(assert (=> b!5119629 m!6180132))

(declare-fun m!6180134 () Bool)

(assert (=> b!5119629 m!6180134))

(declare-fun m!6180136 () Bool)

(assert (=> b!5119629 m!6180136))

(declare-fun m!6180138 () Bool)

(assert (=> b!5119629 m!6180138))

(declare-fun m!6180140 () Bool)

(assert (=> b!5119629 m!6180140))

(declare-fun m!6180142 () Bool)

(assert (=> b!5119629 m!6180142))

(declare-fun m!6180144 () Bool)

(assert (=> b!5119629 m!6180144))

(declare-fun m!6180146 () Bool)

(assert (=> b!5119629 m!6180146))

(declare-fun m!6180148 () Bool)

(assert (=> start!540340 m!6180148))

(declare-fun m!6180150 () Bool)

(assert (=> b!5119634 m!6180150))

(declare-fun m!6180152 () Bool)

(assert (=> b!5119634 m!6180152))

(declare-fun m!6180154 () Bool)

(assert (=> b!5119623 m!6180154))

(declare-fun m!6180156 () Bool)

(assert (=> b!5119623 m!6180156))

(declare-fun m!6180158 () Bool)

(assert (=> b!5119623 m!6180158))

(declare-fun m!6180160 () Bool)

(assert (=> b!5119623 m!6180160))

(declare-fun m!6180162 () Bool)

(assert (=> b!5119632 m!6180162))

(declare-fun m!6180164 () Bool)

(assert (=> b!5119627 m!6180164))

(declare-fun m!6180166 () Bool)

(assert (=> b!5119627 m!6180166))

(declare-fun m!6180168 () Bool)

(assert (=> b!5119639 m!6180168))

(declare-fun m!6180170 () Bool)

(assert (=> b!5119621 m!6180170))

(declare-fun m!6180172 () Bool)

(assert (=> b!5119619 m!6180172))

(declare-fun m!6180174 () Bool)

(assert (=> b!5119619 m!6180174))

(declare-fun m!6180176 () Bool)

(assert (=> b!5119619 m!6180176))

(declare-fun m!6180178 () Bool)

(assert (=> b!5119619 m!6180178))

(declare-fun m!6180180 () Bool)

(assert (=> b!5119636 m!6180180))

(declare-fun m!6180182 () Bool)

(assert (=> setNonEmpty!30310 m!6180182))

(declare-fun m!6180184 () Bool)

(assert (=> b!5119637 m!6180184))

(declare-fun m!6180186 () Bool)

(assert (=> b!5119628 m!6180186))

(declare-fun m!6180188 () Bool)

(assert (=> b!5119628 m!6180188))

(declare-fun m!6180190 () Bool)

(assert (=> b!5119628 m!6180190))

(declare-fun m!6180192 () Bool)

(assert (=> setNonEmpty!30309 m!6180192))

(declare-fun m!6180194 () Bool)

(assert (=> b!5119622 m!6180194))

(declare-fun m!6180196 () Bool)

(assert (=> b!5119622 m!6180196))

(check-sat (not b!5119638) (not b!5119620) (not b!5119631) (not b!5119629) (not start!540340) (not b!5119619) (not b!5119627) (not setNonEmpty!30310) (not setNonEmpty!30309) tp_is_empty!37695 (not b!5119618) (not b!5119625) (not b!5119635) (not b!5119622) (not b!5119632) (not b!5119626) (not b!5119628) (not b!5119637) (not b!5119634) (not b!5119633) (not b!5119621) (not b!5119639) (not b!5119623) (not b!5119636))
(check-sat)
(get-model)

(declare-fun d!1654445 () Bool)

(assert (=> d!1654445 (= (head!10939 lt!2110705) (h!65666 lt!2110705))))

(assert (=> b!5119627 d!1654445))

(declare-fun d!1654447 () Bool)

(assert (=> d!1654447 (= lt!2110700 lt!2110704)))

(declare-fun lt!2110709 () Unit!150357)

(declare-fun choose!37628 (List!59342 List!59342 List!59342 List!59342 List!59342) Unit!150357)

(assert (=> d!1654447 (= lt!2110709 (choose!37628 testedP!265 lt!2110700 testedP!265 lt!2110704 input!5745))))

(assert (=> d!1654447 (isPrefix!5616 testedP!265 input!5745)))

(assert (=> d!1654447 (= (lemmaSamePrefixThenSameSuffix!2650 testedP!265 lt!2110700 testedP!265 lt!2110704 input!5745) lt!2110709)))

(declare-fun bs!1192596 () Bool)

(assert (= bs!1192596 d!1654447))

(declare-fun m!6180198 () Bool)

(assert (=> bs!1192596 m!6180198))

(assert (=> bs!1192596 m!6180148))

(assert (=> b!5119627 d!1654447))

(declare-fun d!1654449 () Bool)

(declare-fun lt!2110712 () Int)

(assert (=> d!1654449 (>= lt!2110712 0)))

(declare-fun e!3192990 () Int)

(assert (=> d!1654449 (= lt!2110712 e!3192990)))

(declare-fun c!879730 () Bool)

(assert (=> d!1654449 (= c!879730 ((_ is Nil!59218) input!5745))))

(assert (=> d!1654449 (= (size!39517 input!5745) lt!2110712)))

(declare-fun b!5119644 () Bool)

(assert (=> b!5119644 (= e!3192990 0)))

(declare-fun b!5119645 () Bool)

(assert (=> b!5119645 (= e!3192990 (+ 1 (size!39517 (t!372359 input!5745))))))

(assert (= (and d!1654449 c!879730) b!5119644))

(assert (= (and d!1654449 (not c!879730)) b!5119645))

(declare-fun m!6180200 () Bool)

(assert (=> b!5119645 m!6180200))

(assert (=> b!5119636 d!1654449))

(declare-fun d!1654451 () Bool)

(declare-fun lambda!251221 () Int)

(declare-fun forall!13609 (List!59341 Int) Bool)

(assert (=> d!1654451 (= (inv!78708 setElem!30309) (forall!13609 (exprs!4095 setElem!30309) lambda!251221))))

(declare-fun bs!1192597 () Bool)

(assert (= bs!1192597 d!1654451))

(declare-fun m!6180202 () Bool)

(assert (=> bs!1192597 m!6180202))

(assert (=> setNonEmpty!30309 d!1654451))

(declare-fun d!1654455 () Bool)

(declare-fun lt!2110717 () Int)

(assert (=> d!1654455 (>= lt!2110717 0)))

(declare-fun e!3192993 () Int)

(assert (=> d!1654455 (= lt!2110717 e!3192993)))

(declare-fun c!879735 () Bool)

(assert (=> d!1654455 (= c!879735 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654455 (= (size!39517 testedP!265) lt!2110717)))

(declare-fun b!5119650 () Bool)

(assert (=> b!5119650 (= e!3192993 0)))

(declare-fun b!5119651 () Bool)

(assert (=> b!5119651 (= e!3192993 (+ 1 (size!39517 (t!372359 testedP!265))))))

(assert (= (and d!1654455 c!879735) b!5119650))

(assert (= (and d!1654455 (not c!879735)) b!5119651))

(declare-fun m!6180204 () Bool)

(assert (=> b!5119651 m!6180204))

(assert (=> b!5119634 d!1654455))

(declare-fun d!1654457 () Bool)

(declare-fun lt!2110718 () Int)

(assert (=> d!1654457 (>= lt!2110718 0)))

(declare-fun e!3192994 () Int)

(assert (=> d!1654457 (= lt!2110718 e!3192994)))

(declare-fun c!879736 () Bool)

(assert (=> d!1654457 (= c!879736 ((_ is Nil!59218) knownP!20))))

(assert (=> d!1654457 (= (size!39517 knownP!20) lt!2110718)))

(declare-fun b!5119652 () Bool)

(assert (=> b!5119652 (= e!3192994 0)))

(declare-fun b!5119653 () Bool)

(assert (=> b!5119653 (= e!3192994 (+ 1 (size!39517 (t!372359 knownP!20))))))

(assert (= (and d!1654457 c!879736) b!5119652))

(assert (= (and d!1654457 (not c!879736)) b!5119653))

(declare-fun m!6180206 () Bool)

(assert (=> b!5119653 m!6180206))

(assert (=> b!5119634 d!1654457))

(declare-fun b!5119662 () Bool)

(declare-fun e!3193000 () List!59342)

(assert (=> b!5119662 (= e!3193000 lt!2110700)))

(declare-fun b!5119664 () Bool)

(declare-fun res!2179950 () Bool)

(declare-fun e!3192999 () Bool)

(assert (=> b!5119664 (=> (not res!2179950) (not e!3192999))))

(declare-fun lt!2110721 () List!59342)

(assert (=> b!5119664 (= res!2179950 (= (size!39517 lt!2110721) (+ (size!39517 testedP!265) (size!39517 lt!2110700))))))

(declare-fun b!5119665 () Bool)

(assert (=> b!5119665 (= e!3192999 (or (not (= lt!2110700 Nil!59218)) (= lt!2110721 testedP!265)))))

(declare-fun b!5119663 () Bool)

(assert (=> b!5119663 (= e!3193000 (Cons!59218 (h!65666 testedP!265) (++!13036 (t!372359 testedP!265) lt!2110700)))))

(declare-fun d!1654459 () Bool)

(assert (=> d!1654459 e!3192999))

(declare-fun res!2179949 () Bool)

(assert (=> d!1654459 (=> (not res!2179949) (not e!3192999))))

(declare-fun content!10530 (List!59342) (InoxSet C!28688))

(assert (=> d!1654459 (= res!2179949 (= (content!10530 lt!2110721) ((_ map or) (content!10530 testedP!265) (content!10530 lt!2110700))))))

(assert (=> d!1654459 (= lt!2110721 e!3193000)))

(declare-fun c!879739 () Bool)

(assert (=> d!1654459 (= c!879739 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654459 (= (++!13036 testedP!265 lt!2110700) lt!2110721)))

(assert (= (and d!1654459 c!879739) b!5119662))

(assert (= (and d!1654459 (not c!879739)) b!5119663))

(assert (= (and d!1654459 res!2179949) b!5119664))

(assert (= (and b!5119664 res!2179950) b!5119665))

(declare-fun m!6180208 () Bool)

(assert (=> b!5119664 m!6180208))

(assert (=> b!5119664 m!6180150))

(declare-fun m!6180210 () Bool)

(assert (=> b!5119664 m!6180210))

(declare-fun m!6180212 () Bool)

(assert (=> b!5119663 m!6180212))

(declare-fun m!6180214 () Bool)

(assert (=> d!1654459 m!6180214))

(declare-fun m!6180216 () Bool)

(assert (=> d!1654459 m!6180216))

(declare-fun m!6180218 () Bool)

(assert (=> d!1654459 m!6180218))

(assert (=> b!5119628 d!1654459))

(declare-fun b!5119666 () Bool)

(declare-fun e!3193002 () List!59342)

(assert (=> b!5119666 (= e!3193002 lt!2110697)))

(declare-fun b!5119668 () Bool)

(declare-fun res!2179952 () Bool)

(declare-fun e!3193001 () Bool)

(assert (=> b!5119668 (=> (not res!2179952) (not e!3193001))))

(declare-fun lt!2110722 () List!59342)

(assert (=> b!5119668 (= res!2179952 (= (size!39517 lt!2110722) (+ (size!39517 lt!2110705) (size!39517 lt!2110697))))))

(declare-fun b!5119669 () Bool)

(assert (=> b!5119669 (= e!3193001 (or (not (= lt!2110697 Nil!59218)) (= lt!2110722 lt!2110705)))))

(declare-fun b!5119667 () Bool)

(assert (=> b!5119667 (= e!3193002 (Cons!59218 (h!65666 lt!2110705) (++!13036 (t!372359 lt!2110705) lt!2110697)))))

(declare-fun d!1654461 () Bool)

(assert (=> d!1654461 e!3193001))

(declare-fun res!2179951 () Bool)

(assert (=> d!1654461 (=> (not res!2179951) (not e!3193001))))

(assert (=> d!1654461 (= res!2179951 (= (content!10530 lt!2110722) ((_ map or) (content!10530 lt!2110705) (content!10530 lt!2110697))))))

(assert (=> d!1654461 (= lt!2110722 e!3193002)))

(declare-fun c!879740 () Bool)

(assert (=> d!1654461 (= c!879740 ((_ is Nil!59218) lt!2110705))))

(assert (=> d!1654461 (= (++!13036 lt!2110705 lt!2110697) lt!2110722)))

(assert (= (and d!1654461 c!879740) b!5119666))

(assert (= (and d!1654461 (not c!879740)) b!5119667))

(assert (= (and d!1654461 res!2179951) b!5119668))

(assert (= (and b!5119668 res!2179952) b!5119669))

(declare-fun m!6180220 () Bool)

(assert (=> b!5119668 m!6180220))

(declare-fun m!6180222 () Bool)

(assert (=> b!5119668 m!6180222))

(declare-fun m!6180224 () Bool)

(assert (=> b!5119668 m!6180224))

(declare-fun m!6180226 () Bool)

(assert (=> b!5119667 m!6180226))

(declare-fun m!6180228 () Bool)

(assert (=> d!1654461 m!6180228))

(declare-fun m!6180230 () Bool)

(assert (=> d!1654461 m!6180230))

(declare-fun m!6180232 () Bool)

(assert (=> d!1654461 m!6180232))

(assert (=> b!5119628 d!1654461))

(declare-fun d!1654463 () Bool)

(assert (=> d!1654463 (= (++!13036 (++!13036 testedP!265 lt!2110705) lt!2110697) (++!13036 testedP!265 (++!13036 lt!2110705 lt!2110697)))))

(declare-fun lt!2110725 () Unit!150357)

(declare-fun choose!37629 (List!59342 List!59342 List!59342) Unit!150357)

(assert (=> d!1654463 (= lt!2110725 (choose!37629 testedP!265 lt!2110705 lt!2110697))))

(assert (=> d!1654463 (= (lemmaConcatAssociativity!2784 testedP!265 lt!2110705 lt!2110697) lt!2110725)))

(declare-fun bs!1192598 () Bool)

(assert (= bs!1192598 d!1654463))

(assert (=> bs!1192598 m!6180120))

(declare-fun m!6180234 () Bool)

(assert (=> bs!1192598 m!6180234))

(assert (=> bs!1192598 m!6180188))

(assert (=> bs!1192598 m!6180188))

(declare-fun m!6180236 () Bool)

(assert (=> bs!1192598 m!6180236))

(assert (=> bs!1192598 m!6180120))

(declare-fun m!6180238 () Bool)

(assert (=> bs!1192598 m!6180238))

(assert (=> b!5119628 d!1654463))

(declare-fun b!5119670 () Bool)

(declare-fun e!3193004 () List!59342)

(assert (=> b!5119670 (= e!3193004 lt!2110704)))

(declare-fun b!5119672 () Bool)

(declare-fun res!2179954 () Bool)

(declare-fun e!3193003 () Bool)

(assert (=> b!5119672 (=> (not res!2179954) (not e!3193003))))

(declare-fun lt!2110726 () List!59342)

(assert (=> b!5119672 (= res!2179954 (= (size!39517 lt!2110726) (+ (size!39517 testedP!265) (size!39517 lt!2110704))))))

(declare-fun b!5119673 () Bool)

(assert (=> b!5119673 (= e!3193003 (or (not (= lt!2110704 Nil!59218)) (= lt!2110726 testedP!265)))))

(declare-fun b!5119671 () Bool)

(assert (=> b!5119671 (= e!3193004 (Cons!59218 (h!65666 testedP!265) (++!13036 (t!372359 testedP!265) lt!2110704)))))

(declare-fun d!1654465 () Bool)

(assert (=> d!1654465 e!3193003))

(declare-fun res!2179953 () Bool)

(assert (=> d!1654465 (=> (not res!2179953) (not e!3193003))))

(assert (=> d!1654465 (= res!2179953 (= (content!10530 lt!2110726) ((_ map or) (content!10530 testedP!265) (content!10530 lt!2110704))))))

(assert (=> d!1654465 (= lt!2110726 e!3193004)))

(declare-fun c!879741 () Bool)

(assert (=> d!1654465 (= c!879741 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654465 (= (++!13036 testedP!265 lt!2110704) lt!2110726)))

(assert (= (and d!1654465 c!879741) b!5119670))

(assert (= (and d!1654465 (not c!879741)) b!5119671))

(assert (= (and d!1654465 res!2179953) b!5119672))

(assert (= (and b!5119672 res!2179954) b!5119673))

(declare-fun m!6180240 () Bool)

(assert (=> b!5119672 m!6180240))

(assert (=> b!5119672 m!6180150))

(declare-fun m!6180242 () Bool)

(assert (=> b!5119672 m!6180242))

(declare-fun m!6180244 () Bool)

(assert (=> b!5119671 m!6180244))

(declare-fun m!6180246 () Bool)

(assert (=> d!1654465 m!6180246))

(assert (=> d!1654465 m!6180216))

(declare-fun m!6180248 () Bool)

(assert (=> d!1654465 m!6180248))

(assert (=> b!5119621 d!1654465))

(declare-fun d!1654467 () Bool)

(declare-fun lt!2110729 () List!59342)

(assert (=> d!1654467 (= (++!13036 testedP!265 lt!2110729) input!5745)))

(declare-fun e!3193007 () List!59342)

(assert (=> d!1654467 (= lt!2110729 e!3193007)))

(declare-fun c!879744 () Bool)

(assert (=> d!1654467 (= c!879744 ((_ is Cons!59218) testedP!265))))

(assert (=> d!1654467 (>= (size!39517 input!5745) (size!39517 testedP!265))))

(assert (=> d!1654467 (= (getSuffix!3290 input!5745 testedP!265) lt!2110729)))

(declare-fun b!5119678 () Bool)

(assert (=> b!5119678 (= e!3193007 (getSuffix!3290 (tail!10076 input!5745) (t!372359 testedP!265)))))

(declare-fun b!5119679 () Bool)

(assert (=> b!5119679 (= e!3193007 input!5745)))

(assert (= (and d!1654467 c!879744) b!5119678))

(assert (= (and d!1654467 (not c!879744)) b!5119679))

(declare-fun m!6180250 () Bool)

(assert (=> d!1654467 m!6180250))

(assert (=> d!1654467 m!6180180))

(assert (=> d!1654467 m!6180150))

(declare-fun m!6180252 () Bool)

(assert (=> b!5119678 m!6180252))

(assert (=> b!5119678 m!6180252))

(declare-fun m!6180254 () Bool)

(assert (=> b!5119678 m!6180254))

(assert (=> b!5119629 d!1654467))

(declare-fun d!1654469 () Bool)

(assert (=> d!1654469 (= (derivationZipper!110 baseZ!46 (++!13036 testedP!265 (Cons!59218 lt!2110701 Nil!59218))) (derivationStepZipper!846 z!4463 lt!2110701))))

(declare-fun lt!2110744 () Unit!150357)

(declare-fun choose!37630 ((InoxSet Context!7190) (InoxSet Context!7190) List!59342 C!28688) Unit!150357)

(assert (=> d!1654469 (= lt!2110744 (choose!37630 baseZ!46 z!4463 testedP!265 lt!2110701))))

(assert (=> d!1654469 (= (derivationZipper!110 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1654469 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!67 baseZ!46 z!4463 testedP!265 lt!2110701) lt!2110744)))

(declare-fun bs!1192599 () Bool)

(assert (= bs!1192599 d!1654469))

(assert (=> bs!1192599 m!6180116))

(declare-fun m!6180256 () Bool)

(assert (=> bs!1192599 m!6180256))

(declare-fun m!6180258 () Bool)

(assert (=> bs!1192599 m!6180258))

(assert (=> bs!1192599 m!6180128))

(assert (=> bs!1192599 m!6180256))

(declare-fun m!6180260 () Bool)

(assert (=> bs!1192599 m!6180260))

(assert (=> b!5119629 d!1654469))

(declare-fun d!1654471 () Bool)

(assert (=> d!1654471 true))

(declare-fun lambda!251239 () Int)

(declare-fun flatMap!358 ((InoxSet Context!7190) Int) (InoxSet Context!7190))

(assert (=> d!1654471 (= (derivationStepZipper!846 z!4463 lt!2110701) (flatMap!358 z!4463 lambda!251239))))

(declare-fun bs!1192603 () Bool)

(assert (= bs!1192603 d!1654471))

(declare-fun m!6180262 () Bool)

(assert (=> bs!1192603 m!6180262))

(assert (=> b!5119629 d!1654471))

(declare-fun d!1654473 () Bool)

(assert (=> d!1654473 (isPrefix!5616 lt!2110688 knownP!20)))

(declare-fun lt!2110755 () Unit!150357)

(declare-fun choose!37631 (List!59342 List!59342 List!59342) Unit!150357)

(assert (=> d!1654473 (= lt!2110755 (choose!37631 knownP!20 lt!2110688 input!5745))))

(assert (=> d!1654473 (isPrefix!5616 knownP!20 input!5745)))

(assert (=> d!1654473 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!753 knownP!20 lt!2110688 input!5745) lt!2110755)))

(declare-fun bs!1192604 () Bool)

(assert (= bs!1192604 d!1654473))

(assert (=> bs!1192604 m!6180134))

(declare-fun m!6180278 () Bool)

(assert (=> bs!1192604 m!6180278))

(assert (=> bs!1192604 m!6180162))

(assert (=> b!5119629 d!1654473))

(declare-fun d!1654477 () Bool)

(declare-fun c!879759 () Bool)

(assert (=> d!1654477 (= c!879759 ((_ is Cons!59218) lt!2110688))))

(declare-fun e!3193019 () (InoxSet Context!7190))

(assert (=> d!1654477 (= (derivationZipper!110 baseZ!46 lt!2110688) e!3193019)))

(declare-fun b!5119694 () Bool)

(assert (=> b!5119694 (= e!3193019 (derivationZipper!110 (derivationStepZipper!846 baseZ!46 (h!65666 lt!2110688)) (t!372359 lt!2110688)))))

(declare-fun b!5119695 () Bool)

(assert (=> b!5119695 (= e!3193019 baseZ!46)))

(assert (= (and d!1654477 c!879759) b!5119694))

(assert (= (and d!1654477 (not c!879759)) b!5119695))

(declare-fun m!6180280 () Bool)

(assert (=> b!5119694 m!6180280))

(assert (=> b!5119694 m!6180280))

(declare-fun m!6180282 () Bool)

(assert (=> b!5119694 m!6180282))

(assert (=> b!5119629 d!1654477))

(declare-fun d!1654479 () Bool)

(assert (=> d!1654479 (isPrefix!5616 (++!13036 testedP!265 (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218)) input!5745)))

(declare-fun lt!2110761 () Unit!150357)

(declare-fun choose!37633 (List!59342 List!59342) Unit!150357)

(assert (=> d!1654479 (= lt!2110761 (choose!37633 testedP!265 input!5745))))

(assert (=> d!1654479 (isPrefix!5616 testedP!265 input!5745)))

(assert (=> d!1654479 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1002 testedP!265 input!5745) lt!2110761)))

(declare-fun bs!1192605 () Bool)

(assert (= bs!1192605 d!1654479))

(declare-fun m!6180298 () Bool)

(assert (=> bs!1192605 m!6180298))

(declare-fun m!6180300 () Bool)

(assert (=> bs!1192605 m!6180300))

(assert (=> bs!1192605 m!6180148))

(assert (=> bs!1192605 m!6180122))

(declare-fun m!6180302 () Bool)

(assert (=> bs!1192605 m!6180302))

(declare-fun m!6180304 () Bool)

(assert (=> bs!1192605 m!6180304))

(assert (=> bs!1192605 m!6180298))

(assert (=> bs!1192605 m!6180122))

(assert (=> b!5119629 d!1654479))

(declare-fun b!5119702 () Bool)

(declare-fun e!3193023 () List!59342)

(assert (=> b!5119702 (= e!3193023 lt!2110697)))

(declare-fun b!5119704 () Bool)

(declare-fun res!2179962 () Bool)

(declare-fun e!3193022 () Bool)

(assert (=> b!5119704 (=> (not res!2179962) (not e!3193022))))

(declare-fun lt!2110762 () List!59342)

(assert (=> b!5119704 (= res!2179962 (= (size!39517 lt!2110762) (+ (size!39517 knownP!20) (size!39517 lt!2110697))))))

(declare-fun b!5119705 () Bool)

(assert (=> b!5119705 (= e!3193022 (or (not (= lt!2110697 Nil!59218)) (= lt!2110762 knownP!20)))))

(declare-fun b!5119703 () Bool)

(assert (=> b!5119703 (= e!3193023 (Cons!59218 (h!65666 knownP!20) (++!13036 (t!372359 knownP!20) lt!2110697)))))

(declare-fun d!1654483 () Bool)

(assert (=> d!1654483 e!3193022))

(declare-fun res!2179961 () Bool)

(assert (=> d!1654483 (=> (not res!2179961) (not e!3193022))))

(assert (=> d!1654483 (= res!2179961 (= (content!10530 lt!2110762) ((_ map or) (content!10530 knownP!20) (content!10530 lt!2110697))))))

(assert (=> d!1654483 (= lt!2110762 e!3193023)))

(declare-fun c!879761 () Bool)

(assert (=> d!1654483 (= c!879761 ((_ is Nil!59218) knownP!20))))

(assert (=> d!1654483 (= (++!13036 knownP!20 lt!2110697) lt!2110762)))

(assert (= (and d!1654483 c!879761) b!5119702))

(assert (= (and d!1654483 (not c!879761)) b!5119703))

(assert (= (and d!1654483 res!2179961) b!5119704))

(assert (= (and b!5119704 res!2179962) b!5119705))

(declare-fun m!6180306 () Bool)

(assert (=> b!5119704 m!6180306))

(assert (=> b!5119704 m!6180152))

(assert (=> b!5119704 m!6180224))

(declare-fun m!6180308 () Bool)

(assert (=> b!5119703 m!6180308))

(declare-fun m!6180310 () Bool)

(assert (=> d!1654483 m!6180310))

(declare-fun m!6180312 () Bool)

(assert (=> d!1654483 m!6180312))

(assert (=> d!1654483 m!6180232))

(assert (=> b!5119629 d!1654483))

(declare-fun b!5119717 () Bool)

(declare-fun e!3193032 () Bool)

(assert (=> b!5119717 (= e!3193032 (>= (size!39517 input!5745) (size!39517 lt!2110688)))))

(declare-fun d!1654485 () Bool)

(assert (=> d!1654485 e!3193032))

(declare-fun res!2179972 () Bool)

(assert (=> d!1654485 (=> res!2179972 e!3193032)))

(declare-fun lt!2110767 () Bool)

(assert (=> d!1654485 (= res!2179972 (not lt!2110767))))

(declare-fun e!3193030 () Bool)

(assert (=> d!1654485 (= lt!2110767 e!3193030)))

(declare-fun res!2179971 () Bool)

(assert (=> d!1654485 (=> res!2179971 e!3193030)))

(assert (=> d!1654485 (= res!2179971 ((_ is Nil!59218) lt!2110688))))

(assert (=> d!1654485 (= (isPrefix!5616 lt!2110688 input!5745) lt!2110767)))

(declare-fun b!5119716 () Bool)

(declare-fun e!3193031 () Bool)

(assert (=> b!5119716 (= e!3193031 (isPrefix!5616 (tail!10076 lt!2110688) (tail!10076 input!5745)))))

(declare-fun b!5119714 () Bool)

(assert (=> b!5119714 (= e!3193030 e!3193031)))

(declare-fun res!2179973 () Bool)

(assert (=> b!5119714 (=> (not res!2179973) (not e!3193031))))

(assert (=> b!5119714 (= res!2179973 (not ((_ is Nil!59218) input!5745)))))

(declare-fun b!5119715 () Bool)

(declare-fun res!2179974 () Bool)

(assert (=> b!5119715 (=> (not res!2179974) (not e!3193031))))

(assert (=> b!5119715 (= res!2179974 (= (head!10939 lt!2110688) (head!10939 input!5745)))))

(assert (= (and d!1654485 (not res!2179971)) b!5119714))

(assert (= (and b!5119714 res!2179973) b!5119715))

(assert (= (and b!5119715 res!2179974) b!5119716))

(assert (= (and d!1654485 (not res!2179972)) b!5119717))

(assert (=> b!5119717 m!6180180))

(declare-fun m!6180316 () Bool)

(assert (=> b!5119717 m!6180316))

(declare-fun m!6180318 () Bool)

(assert (=> b!5119716 m!6180318))

(assert (=> b!5119716 m!6180252))

(assert (=> b!5119716 m!6180318))

(assert (=> b!5119716 m!6180252))

(declare-fun m!6180320 () Bool)

(assert (=> b!5119716 m!6180320))

(declare-fun m!6180322 () Bool)

(assert (=> b!5119715 m!6180322))

(declare-fun m!6180324 () Bool)

(assert (=> b!5119715 m!6180324))

(assert (=> b!5119629 d!1654485))

(declare-fun d!1654491 () Bool)

(declare-fun lt!2110769 () List!59342)

(assert (=> d!1654491 (= (++!13036 lt!2110688 lt!2110769) knownP!20)))

(declare-fun e!3193033 () List!59342)

(assert (=> d!1654491 (= lt!2110769 e!3193033)))

(declare-fun c!879762 () Bool)

(assert (=> d!1654491 (= c!879762 ((_ is Cons!59218) lt!2110688))))

(assert (=> d!1654491 (>= (size!39517 knownP!20) (size!39517 lt!2110688))))

(assert (=> d!1654491 (= (getSuffix!3290 knownP!20 lt!2110688) lt!2110769)))

(declare-fun b!5119718 () Bool)

(assert (=> b!5119718 (= e!3193033 (getSuffix!3290 (tail!10076 knownP!20) (t!372359 lt!2110688)))))

(declare-fun b!5119719 () Bool)

(assert (=> b!5119719 (= e!3193033 knownP!20)))

(assert (= (and d!1654491 c!879762) b!5119718))

(assert (= (and d!1654491 (not c!879762)) b!5119719))

(declare-fun m!6180328 () Bool)

(assert (=> d!1654491 m!6180328))

(assert (=> d!1654491 m!6180152))

(assert (=> d!1654491 m!6180316))

(declare-fun m!6180330 () Bool)

(assert (=> b!5119718 m!6180330))

(assert (=> b!5119718 m!6180330))

(declare-fun m!6180332 () Bool)

(assert (=> b!5119718 m!6180332))

(assert (=> b!5119629 d!1654491))

(declare-fun b!5119720 () Bool)

(declare-fun e!3193035 () List!59342)

(assert (=> b!5119720 (= e!3193035 lt!2110702)))

(declare-fun b!5119722 () Bool)

(declare-fun res!2179976 () Bool)

(declare-fun e!3193034 () Bool)

(assert (=> b!5119722 (=> (not res!2179976) (not e!3193034))))

(declare-fun lt!2110770 () List!59342)

(assert (=> b!5119722 (= res!2179976 (= (size!39517 lt!2110770) (+ (size!39517 testedP!265) (size!39517 lt!2110702))))))

(declare-fun b!5119723 () Bool)

(assert (=> b!5119723 (= e!3193034 (or (not (= lt!2110702 Nil!59218)) (= lt!2110770 testedP!265)))))

(declare-fun b!5119721 () Bool)

(assert (=> b!5119721 (= e!3193035 (Cons!59218 (h!65666 testedP!265) (++!13036 (t!372359 testedP!265) lt!2110702)))))

(declare-fun d!1654495 () Bool)

(assert (=> d!1654495 e!3193034))

(declare-fun res!2179975 () Bool)

(assert (=> d!1654495 (=> (not res!2179975) (not e!3193034))))

(assert (=> d!1654495 (= res!2179975 (= (content!10530 lt!2110770) ((_ map or) (content!10530 testedP!265) (content!10530 lt!2110702))))))

(assert (=> d!1654495 (= lt!2110770 e!3193035)))

(declare-fun c!879763 () Bool)

(assert (=> d!1654495 (= c!879763 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654495 (= (++!13036 testedP!265 lt!2110702) lt!2110770)))

(assert (= (and d!1654495 c!879763) b!5119720))

(assert (= (and d!1654495 (not c!879763)) b!5119721))

(assert (= (and d!1654495 res!2179975) b!5119722))

(assert (= (and b!5119722 res!2179976) b!5119723))

(declare-fun m!6180334 () Bool)

(assert (=> b!5119722 m!6180334))

(assert (=> b!5119722 m!6180150))

(declare-fun m!6180336 () Bool)

(assert (=> b!5119722 m!6180336))

(declare-fun m!6180338 () Bool)

(assert (=> b!5119721 m!6180338))

(declare-fun m!6180340 () Bool)

(assert (=> d!1654495 m!6180340))

(assert (=> d!1654495 m!6180216))

(declare-fun m!6180342 () Bool)

(assert (=> d!1654495 m!6180342))

(assert (=> b!5119629 d!1654495))

(declare-fun d!1654497 () Bool)

(assert (=> d!1654497 (= (head!10939 lt!2110704) (h!65666 lt!2110704))))

(assert (=> b!5119629 d!1654497))

(declare-fun b!5119727 () Bool)

(declare-fun e!3193038 () Bool)

(assert (=> b!5119727 (= e!3193038 (>= (size!39517 knownP!20) (size!39517 lt!2110688)))))

(declare-fun d!1654499 () Bool)

(assert (=> d!1654499 e!3193038))

(declare-fun res!2179978 () Bool)

(assert (=> d!1654499 (=> res!2179978 e!3193038)))

(declare-fun lt!2110771 () Bool)

(assert (=> d!1654499 (= res!2179978 (not lt!2110771))))

(declare-fun e!3193036 () Bool)

(assert (=> d!1654499 (= lt!2110771 e!3193036)))

(declare-fun res!2179977 () Bool)

(assert (=> d!1654499 (=> res!2179977 e!3193036)))

(assert (=> d!1654499 (= res!2179977 ((_ is Nil!59218) lt!2110688))))

(assert (=> d!1654499 (= (isPrefix!5616 lt!2110688 knownP!20) lt!2110771)))

(declare-fun b!5119726 () Bool)

(declare-fun e!3193037 () Bool)

(assert (=> b!5119726 (= e!3193037 (isPrefix!5616 (tail!10076 lt!2110688) (tail!10076 knownP!20)))))

(declare-fun b!5119724 () Bool)

(assert (=> b!5119724 (= e!3193036 e!3193037)))

(declare-fun res!2179979 () Bool)

(assert (=> b!5119724 (=> (not res!2179979) (not e!3193037))))

(assert (=> b!5119724 (= res!2179979 (not ((_ is Nil!59218) knownP!20)))))

(declare-fun b!5119725 () Bool)

(declare-fun res!2179980 () Bool)

(assert (=> b!5119725 (=> (not res!2179980) (not e!3193037))))

(assert (=> b!5119725 (= res!2179980 (= (head!10939 lt!2110688) (head!10939 knownP!20)))))

(assert (= (and d!1654499 (not res!2179977)) b!5119724))

(assert (= (and b!5119724 res!2179979) b!5119725))

(assert (= (and b!5119725 res!2179980) b!5119726))

(assert (= (and d!1654499 (not res!2179978)) b!5119727))

(assert (=> b!5119727 m!6180152))

(assert (=> b!5119727 m!6180316))

(assert (=> b!5119726 m!6180318))

(assert (=> b!5119726 m!6180330))

(assert (=> b!5119726 m!6180318))

(assert (=> b!5119726 m!6180330))

(declare-fun m!6180344 () Bool)

(assert (=> b!5119726 m!6180344))

(assert (=> b!5119725 m!6180322))

(declare-fun m!6180346 () Bool)

(assert (=> b!5119725 m!6180346))

(assert (=> b!5119629 d!1654499))

(declare-fun d!1654501 () Bool)

(declare-fun lt!2110772 () List!59342)

(assert (=> d!1654501 (= (++!13036 knownP!20 lt!2110772) input!5745)))

(declare-fun e!3193039 () List!59342)

(assert (=> d!1654501 (= lt!2110772 e!3193039)))

(declare-fun c!879764 () Bool)

(assert (=> d!1654501 (= c!879764 ((_ is Cons!59218) knownP!20))))

(assert (=> d!1654501 (>= (size!39517 input!5745) (size!39517 knownP!20))))

(assert (=> d!1654501 (= (getSuffix!3290 input!5745 knownP!20) lt!2110772)))

(declare-fun b!5119728 () Bool)

(assert (=> b!5119728 (= e!3193039 (getSuffix!3290 (tail!10076 input!5745) (t!372359 knownP!20)))))

(declare-fun b!5119729 () Bool)

(assert (=> b!5119729 (= e!3193039 input!5745)))

(assert (= (and d!1654501 c!879764) b!5119728))

(assert (= (and d!1654501 (not c!879764)) b!5119729))

(declare-fun m!6180348 () Bool)

(assert (=> d!1654501 m!6180348))

(assert (=> d!1654501 m!6180180))

(assert (=> d!1654501 m!6180152))

(assert (=> b!5119728 m!6180252))

(assert (=> b!5119728 m!6180252))

(declare-fun m!6180350 () Bool)

(assert (=> b!5119728 m!6180350))

(assert (=> b!5119629 d!1654501))

(declare-fun d!1654503 () Bool)

(declare-fun c!879770 () Bool)

(declare-fun isEmpty!31936 (List!59342) Bool)

(assert (=> d!1654503 (= c!879770 (isEmpty!31936 lt!2110705))))

(declare-fun e!3193045 () Bool)

(assert (=> d!1654503 (= (matchZipper!879 z!4463 lt!2110705) e!3193045)))

(declare-fun b!5119740 () Bool)

(declare-fun nullableZipper!1028 ((InoxSet Context!7190)) Bool)

(assert (=> b!5119740 (= e!3193045 (nullableZipper!1028 z!4463))))

(declare-fun b!5119741 () Bool)

(assert (=> b!5119741 (= e!3193045 (matchZipper!879 (derivationStepZipper!846 z!4463 (head!10939 lt!2110705)) (tail!10076 lt!2110705)))))

(assert (= (and d!1654503 c!879770) b!5119740))

(assert (= (and d!1654503 (not c!879770)) b!5119741))

(declare-fun m!6180364 () Bool)

(assert (=> d!1654503 m!6180364))

(declare-fun m!6180366 () Bool)

(assert (=> b!5119740 m!6180366))

(assert (=> b!5119741 m!6180164))

(assert (=> b!5119741 m!6180164))

(declare-fun m!6180368 () Bool)

(assert (=> b!5119741 m!6180368))

(assert (=> b!5119741 m!6180196))

(assert (=> b!5119741 m!6180368))

(assert (=> b!5119741 m!6180196))

(declare-fun m!6180370 () Bool)

(assert (=> b!5119741 m!6180370))

(assert (=> b!5119619 d!1654503))

(declare-fun d!1654507 () Bool)

(declare-fun lt!2110773 () List!59342)

(assert (=> d!1654507 (= (++!13036 testedP!265 lt!2110773) knownP!20)))

(declare-fun e!3193048 () List!59342)

(assert (=> d!1654507 (= lt!2110773 e!3193048)))

(declare-fun c!879773 () Bool)

(assert (=> d!1654507 (= c!879773 ((_ is Cons!59218) testedP!265))))

(assert (=> d!1654507 (>= (size!39517 knownP!20) (size!39517 testedP!265))))

(assert (=> d!1654507 (= (getSuffix!3290 knownP!20 testedP!265) lt!2110773)))

(declare-fun b!5119746 () Bool)

(assert (=> b!5119746 (= e!3193048 (getSuffix!3290 (tail!10076 knownP!20) (t!372359 testedP!265)))))

(declare-fun b!5119747 () Bool)

(assert (=> b!5119747 (= e!3193048 knownP!20)))

(assert (= (and d!1654507 c!879773) b!5119746))

(assert (= (and d!1654507 (not c!879773)) b!5119747))

(declare-fun m!6180372 () Bool)

(assert (=> d!1654507 m!6180372))

(assert (=> d!1654507 m!6180152))

(assert (=> d!1654507 m!6180150))

(assert (=> b!5119746 m!6180330))

(assert (=> b!5119746 m!6180330))

(declare-fun m!6180374 () Bool)

(assert (=> b!5119746 m!6180374))

(assert (=> b!5119619 d!1654507))

(declare-fun b!5119751 () Bool)

(declare-fun e!3193051 () Bool)

(assert (=> b!5119751 (= e!3193051 (>= (size!39517 knownP!20) (size!39517 testedP!265)))))

(declare-fun d!1654509 () Bool)

(assert (=> d!1654509 e!3193051))

(declare-fun res!2179982 () Bool)

(assert (=> d!1654509 (=> res!2179982 e!3193051)))

(declare-fun lt!2110774 () Bool)

(assert (=> d!1654509 (= res!2179982 (not lt!2110774))))

(declare-fun e!3193049 () Bool)

(assert (=> d!1654509 (= lt!2110774 e!3193049)))

(declare-fun res!2179981 () Bool)

(assert (=> d!1654509 (=> res!2179981 e!3193049)))

(assert (=> d!1654509 (= res!2179981 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654509 (= (isPrefix!5616 testedP!265 knownP!20) lt!2110774)))

(declare-fun b!5119750 () Bool)

(declare-fun e!3193050 () Bool)

(assert (=> b!5119750 (= e!3193050 (isPrefix!5616 (tail!10076 testedP!265) (tail!10076 knownP!20)))))

(declare-fun b!5119748 () Bool)

(assert (=> b!5119748 (= e!3193049 e!3193050)))

(declare-fun res!2179983 () Bool)

(assert (=> b!5119748 (=> (not res!2179983) (not e!3193050))))

(assert (=> b!5119748 (= res!2179983 (not ((_ is Nil!59218) knownP!20)))))

(declare-fun b!5119749 () Bool)

(declare-fun res!2179984 () Bool)

(assert (=> b!5119749 (=> (not res!2179984) (not e!3193050))))

(assert (=> b!5119749 (= res!2179984 (= (head!10939 testedP!265) (head!10939 knownP!20)))))

(assert (= (and d!1654509 (not res!2179981)) b!5119748))

(assert (= (and b!5119748 res!2179983) b!5119749))

(assert (= (and b!5119749 res!2179984) b!5119750))

(assert (= (and d!1654509 (not res!2179982)) b!5119751))

(assert (=> b!5119751 m!6180152))

(assert (=> b!5119751 m!6180150))

(declare-fun m!6180376 () Bool)

(assert (=> b!5119750 m!6180376))

(assert (=> b!5119750 m!6180330))

(assert (=> b!5119750 m!6180376))

(assert (=> b!5119750 m!6180330))

(declare-fun m!6180378 () Bool)

(assert (=> b!5119750 m!6180378))

(declare-fun m!6180380 () Bool)

(assert (=> b!5119749 m!6180380))

(assert (=> b!5119749 m!6180346))

(assert (=> b!5119619 d!1654509))

(declare-fun d!1654511 () Bool)

(assert (=> d!1654511 (isPrefix!5616 testedP!265 knownP!20)))

(declare-fun lt!2110775 () Unit!150357)

(assert (=> d!1654511 (= lt!2110775 (choose!37631 knownP!20 testedP!265 input!5745))))

(assert (=> d!1654511 (isPrefix!5616 knownP!20 input!5745)))

(assert (=> d!1654511 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!753 knownP!20 testedP!265 input!5745) lt!2110775)))

(declare-fun bs!1192608 () Bool)

(assert (= bs!1192608 d!1654511))

(assert (=> bs!1192608 m!6180176))

(declare-fun m!6180386 () Bool)

(assert (=> bs!1192608 m!6180386))

(assert (=> bs!1192608 m!6180162))

(assert (=> b!5119619 d!1654511))

(declare-fun b!5119754 () Bool)

(declare-fun e!3193054 () List!59342)

(assert (=> b!5119754 (= e!3193054 lt!2110690)))

(declare-fun b!5119756 () Bool)

(declare-fun res!2179986 () Bool)

(declare-fun e!3193053 () Bool)

(assert (=> b!5119756 (=> (not res!2179986) (not e!3193053))))

(declare-fun lt!2110777 () List!59342)

(assert (=> b!5119756 (= res!2179986 (= (size!39517 lt!2110777) (+ (size!39517 lt!2110688) (size!39517 lt!2110690))))))

(declare-fun b!5119757 () Bool)

(assert (=> b!5119757 (= e!3193053 (or (not (= lt!2110690 Nil!59218)) (= lt!2110777 lt!2110688)))))

(declare-fun b!5119755 () Bool)

(assert (=> b!5119755 (= e!3193054 (Cons!59218 (h!65666 lt!2110688) (++!13036 (t!372359 lt!2110688) lt!2110690)))))

(declare-fun d!1654515 () Bool)

(assert (=> d!1654515 e!3193053))

(declare-fun res!2179985 () Bool)

(assert (=> d!1654515 (=> (not res!2179985) (not e!3193053))))

(assert (=> d!1654515 (= res!2179985 (= (content!10530 lt!2110777) ((_ map or) (content!10530 lt!2110688) (content!10530 lt!2110690))))))

(assert (=> d!1654515 (= lt!2110777 e!3193054)))

(declare-fun c!879775 () Bool)

(assert (=> d!1654515 (= c!879775 ((_ is Nil!59218) lt!2110688))))

(assert (=> d!1654515 (= (++!13036 lt!2110688 lt!2110690) lt!2110777)))

(assert (= (and d!1654515 c!879775) b!5119754))

(assert (= (and d!1654515 (not c!879775)) b!5119755))

(assert (= (and d!1654515 res!2179985) b!5119756))

(assert (= (and b!5119756 res!2179986) b!5119757))

(declare-fun m!6180390 () Bool)

(assert (=> b!5119756 m!6180390))

(assert (=> b!5119756 m!6180316))

(declare-fun m!6180392 () Bool)

(assert (=> b!5119756 m!6180392))

(declare-fun m!6180394 () Bool)

(assert (=> b!5119755 m!6180394))

(declare-fun m!6180396 () Bool)

(assert (=> d!1654515 m!6180396))

(declare-fun m!6180398 () Bool)

(assert (=> d!1654515 m!6180398))

(declare-fun m!6180400 () Bool)

(assert (=> d!1654515 m!6180400))

(assert (=> b!5119637 d!1654515))

(declare-fun b!5119765 () Bool)

(declare-fun e!3193059 () Bool)

(assert (=> b!5119765 (= e!3193059 (>= (size!39517 input!5745) (size!39517 testedP!265)))))

(declare-fun d!1654519 () Bool)

(assert (=> d!1654519 e!3193059))

(declare-fun res!2179990 () Bool)

(assert (=> d!1654519 (=> res!2179990 e!3193059)))

(declare-fun lt!2110779 () Bool)

(assert (=> d!1654519 (= res!2179990 (not lt!2110779))))

(declare-fun e!3193057 () Bool)

(assert (=> d!1654519 (= lt!2110779 e!3193057)))

(declare-fun res!2179989 () Bool)

(assert (=> d!1654519 (=> res!2179989 e!3193057)))

(assert (=> d!1654519 (= res!2179989 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654519 (= (isPrefix!5616 testedP!265 input!5745) lt!2110779)))

(declare-fun b!5119764 () Bool)

(declare-fun e!3193058 () Bool)

(assert (=> b!5119764 (= e!3193058 (isPrefix!5616 (tail!10076 testedP!265) (tail!10076 input!5745)))))

(declare-fun b!5119762 () Bool)

(assert (=> b!5119762 (= e!3193057 e!3193058)))

(declare-fun res!2179991 () Bool)

(assert (=> b!5119762 (=> (not res!2179991) (not e!3193058))))

(assert (=> b!5119762 (= res!2179991 (not ((_ is Nil!59218) input!5745)))))

(declare-fun b!5119763 () Bool)

(declare-fun res!2179992 () Bool)

(assert (=> b!5119763 (=> (not res!2179992) (not e!3193058))))

(assert (=> b!5119763 (= res!2179992 (= (head!10939 testedP!265) (head!10939 input!5745)))))

(assert (= (and d!1654519 (not res!2179989)) b!5119762))

(assert (= (and b!5119762 res!2179991) b!5119763))

(assert (= (and b!5119763 res!2179992) b!5119764))

(assert (= (and d!1654519 (not res!2179990)) b!5119765))

(assert (=> b!5119765 m!6180180))

(assert (=> b!5119765 m!6180150))

(assert (=> b!5119764 m!6180376))

(assert (=> b!5119764 m!6180252))

(assert (=> b!5119764 m!6180376))

(assert (=> b!5119764 m!6180252))

(declare-fun m!6180414 () Bool)

(assert (=> b!5119764 m!6180414))

(assert (=> b!5119763 m!6180380))

(assert (=> b!5119763 m!6180324))

(assert (=> start!540340 d!1654519))

(declare-fun d!1654523 () Bool)

(declare-fun c!879778 () Bool)

(assert (=> d!1654523 (= c!879778 (isEmpty!31936 knownP!20))))

(declare-fun e!3193062 () Bool)

(assert (=> d!1654523 (= (matchZipper!879 baseZ!46 knownP!20) e!3193062)))

(declare-fun b!5119770 () Bool)

(assert (=> b!5119770 (= e!3193062 (nullableZipper!1028 baseZ!46))))

(declare-fun b!5119771 () Bool)

(assert (=> b!5119771 (= e!3193062 (matchZipper!879 (derivationStepZipper!846 baseZ!46 (head!10939 knownP!20)) (tail!10076 knownP!20)))))

(assert (= (and d!1654523 c!879778) b!5119770))

(assert (= (and d!1654523 (not c!879778)) b!5119771))

(declare-fun m!6180426 () Bool)

(assert (=> d!1654523 m!6180426))

(declare-fun m!6180428 () Bool)

(assert (=> b!5119770 m!6180428))

(assert (=> b!5119771 m!6180346))

(assert (=> b!5119771 m!6180346))

(declare-fun m!6180430 () Bool)

(assert (=> b!5119771 m!6180430))

(assert (=> b!5119771 m!6180330))

(assert (=> b!5119771 m!6180430))

(assert (=> b!5119771 m!6180330))

(declare-fun m!6180432 () Bool)

(assert (=> b!5119771 m!6180432))

(assert (=> b!5119620 d!1654523))

(declare-fun d!1654527 () Bool)

(assert (=> d!1654527 (= ($colon$colon!1141 lt!2110691 lt!2110701) (Cons!59218 lt!2110701 lt!2110691))))

(assert (=> b!5119622 d!1654527))

(declare-fun d!1654529 () Bool)

(assert (=> d!1654529 (= (tail!10076 lt!2110705) (t!372359 lt!2110705))))

(assert (=> b!5119622 d!1654529))

(declare-fun d!1654531 () Bool)

(declare-fun c!879779 () Bool)

(assert (=> d!1654531 (= c!879779 ((_ is Cons!59218) testedP!265))))

(declare-fun e!3193063 () (InoxSet Context!7190))

(assert (=> d!1654531 (= (derivationZipper!110 baseZ!46 testedP!265) e!3193063)))

(declare-fun b!5119772 () Bool)

(assert (=> b!5119772 (= e!3193063 (derivationZipper!110 (derivationStepZipper!846 baseZ!46 (h!65666 testedP!265)) (t!372359 testedP!265)))))

(declare-fun b!5119773 () Bool)

(assert (=> b!5119773 (= e!3193063 baseZ!46)))

(assert (= (and d!1654531 c!879779) b!5119772))

(assert (= (and d!1654531 (not c!879779)) b!5119773))

(declare-fun m!6180434 () Bool)

(assert (=> b!5119772 m!6180434))

(assert (=> b!5119772 m!6180434))

(declare-fun m!6180436 () Bool)

(assert (=> b!5119772 m!6180436))

(assert (=> b!5119631 d!1654531))

(declare-fun d!1654533 () Bool)

(assert (=> d!1654533 (= lt!2110706 lt!2110705)))

(declare-fun lt!2110783 () Unit!150357)

(assert (=> d!1654533 (= lt!2110783 (choose!37628 testedP!265 lt!2110706 testedP!265 lt!2110705 knownP!20))))

(assert (=> d!1654533 (isPrefix!5616 testedP!265 knownP!20)))

(assert (=> d!1654533 (= (lemmaSamePrefixThenSameSuffix!2650 testedP!265 lt!2110706 testedP!265 lt!2110705 knownP!20) lt!2110783)))

(declare-fun bs!1192610 () Bool)

(assert (= bs!1192610 d!1654533))

(declare-fun m!6180438 () Bool)

(assert (=> bs!1192610 m!6180438))

(assert (=> bs!1192610 m!6180176))

(assert (=> b!5119623 d!1654533))

(declare-fun b!5119774 () Bool)

(declare-fun e!3193065 () List!59342)

(assert (=> b!5119774 (= e!3193065 lt!2110706)))

(declare-fun b!5119776 () Bool)

(declare-fun res!2179996 () Bool)

(declare-fun e!3193064 () Bool)

(assert (=> b!5119776 (=> (not res!2179996) (not e!3193064))))

(declare-fun lt!2110784 () List!59342)

(assert (=> b!5119776 (= res!2179996 (= (size!39517 lt!2110784) (+ (size!39517 testedP!265) (size!39517 lt!2110706))))))

(declare-fun b!5119777 () Bool)

(assert (=> b!5119777 (= e!3193064 (or (not (= lt!2110706 Nil!59218)) (= lt!2110784 testedP!265)))))

(declare-fun b!5119775 () Bool)

(assert (=> b!5119775 (= e!3193065 (Cons!59218 (h!65666 testedP!265) (++!13036 (t!372359 testedP!265) lt!2110706)))))

(declare-fun d!1654535 () Bool)

(assert (=> d!1654535 e!3193064))

(declare-fun res!2179995 () Bool)

(assert (=> d!1654535 (=> (not res!2179995) (not e!3193064))))

(assert (=> d!1654535 (= res!2179995 (= (content!10530 lt!2110784) ((_ map or) (content!10530 testedP!265) (content!10530 lt!2110706))))))

(assert (=> d!1654535 (= lt!2110784 e!3193065)))

(declare-fun c!879780 () Bool)

(assert (=> d!1654535 (= c!879780 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654535 (= (++!13036 testedP!265 lt!2110706) lt!2110784)))

(assert (= (and d!1654535 c!879780) b!5119774))

(assert (= (and d!1654535 (not c!879780)) b!5119775))

(assert (= (and d!1654535 res!2179995) b!5119776))

(assert (= (and b!5119776 res!2179996) b!5119777))

(declare-fun m!6180440 () Bool)

(assert (=> b!5119776 m!6180440))

(assert (=> b!5119776 m!6180150))

(declare-fun m!6180442 () Bool)

(assert (=> b!5119776 m!6180442))

(declare-fun m!6180444 () Bool)

(assert (=> b!5119775 m!6180444))

(declare-fun m!6180446 () Bool)

(assert (=> d!1654535 m!6180446))

(assert (=> d!1654535 m!6180216))

(declare-fun m!6180448 () Bool)

(assert (=> d!1654535 m!6180448))

(assert (=> b!5119623 d!1654535))

(declare-fun b!5119778 () Bool)

(declare-fun e!3193067 () List!59342)

(assert (=> b!5119778 (= e!3193067 lt!2110690)))

(declare-fun b!5119780 () Bool)

(declare-fun res!2179998 () Bool)

(declare-fun e!3193066 () Bool)

(assert (=> b!5119780 (=> (not res!2179998) (not e!3193066))))

(declare-fun lt!2110786 () List!59342)

(assert (=> b!5119780 (= res!2179998 (= (size!39517 lt!2110786) (+ (size!39517 lt!2110702) (size!39517 lt!2110690))))))

(declare-fun b!5119781 () Bool)

(assert (=> b!5119781 (= e!3193066 (or (not (= lt!2110690 Nil!59218)) (= lt!2110786 lt!2110702)))))

(declare-fun b!5119779 () Bool)

(assert (=> b!5119779 (= e!3193067 (Cons!59218 (h!65666 lt!2110702) (++!13036 (t!372359 lt!2110702) lt!2110690)))))

(declare-fun d!1654537 () Bool)

(assert (=> d!1654537 e!3193066))

(declare-fun res!2179997 () Bool)

(assert (=> d!1654537 (=> (not res!2179997) (not e!3193066))))

(assert (=> d!1654537 (= res!2179997 (= (content!10530 lt!2110786) ((_ map or) (content!10530 lt!2110702) (content!10530 lt!2110690))))))

(assert (=> d!1654537 (= lt!2110786 e!3193067)))

(declare-fun c!879781 () Bool)

(assert (=> d!1654537 (= c!879781 ((_ is Nil!59218) lt!2110702))))

(assert (=> d!1654537 (= (++!13036 lt!2110702 lt!2110690) lt!2110786)))

(assert (= (and d!1654537 c!879781) b!5119778))

(assert (= (and d!1654537 (not c!879781)) b!5119779))

(assert (= (and d!1654537 res!2179997) b!5119780))

(assert (= (and b!5119780 res!2179998) b!5119781))

(declare-fun m!6180456 () Bool)

(assert (=> b!5119780 m!6180456))

(assert (=> b!5119780 m!6180336))

(assert (=> b!5119780 m!6180392))

(declare-fun m!6180458 () Bool)

(assert (=> b!5119779 m!6180458))

(declare-fun m!6180460 () Bool)

(assert (=> d!1654537 m!6180460))

(assert (=> d!1654537 m!6180342))

(assert (=> d!1654537 m!6180400))

(assert (=> b!5119623 d!1654537))

(declare-fun d!1654541 () Bool)

(assert (=> d!1654541 (= (++!13036 (++!13036 testedP!265 lt!2110702) lt!2110690) (++!13036 testedP!265 (++!13036 lt!2110702 lt!2110690)))))

(declare-fun lt!2110787 () Unit!150357)

(assert (=> d!1654541 (= lt!2110787 (choose!37629 testedP!265 lt!2110702 lt!2110690))))

(assert (=> d!1654541 (= (lemmaConcatAssociativity!2784 testedP!265 lt!2110702 lt!2110690) lt!2110787)))

(declare-fun bs!1192612 () Bool)

(assert (= bs!1192612 d!1654541))

(assert (=> bs!1192612 m!6180126))

(declare-fun m!6180462 () Bool)

(assert (=> bs!1192612 m!6180462))

(assert (=> bs!1192612 m!6180158))

(assert (=> bs!1192612 m!6180158))

(declare-fun m!6180464 () Bool)

(assert (=> bs!1192612 m!6180464))

(assert (=> bs!1192612 m!6180126))

(declare-fun m!6180466 () Bool)

(assert (=> bs!1192612 m!6180466))

(assert (=> b!5119623 d!1654541))

(declare-fun bs!1192615 () Bool)

(declare-fun b!5119816 () Bool)

(declare-fun d!1654543 () Bool)

(assert (= bs!1192615 (and b!5119816 d!1654543)))

(declare-fun lambda!251257 () Int)

(declare-fun lambda!251256 () Int)

(assert (=> bs!1192615 (not (= lambda!251257 lambda!251256))))

(declare-fun bs!1192616 () Bool)

(declare-fun b!5119817 () Bool)

(assert (= bs!1192616 (and b!5119817 d!1654543)))

(declare-fun lambda!251258 () Int)

(assert (=> bs!1192616 (not (= lambda!251258 lambda!251256))))

(declare-fun bs!1192617 () Bool)

(assert (= bs!1192617 (and b!5119817 b!5119816)))

(assert (=> bs!1192617 (= lambda!251258 lambda!251257)))

(declare-fun bm!356624 () Bool)

(declare-datatypes ((List!59344 0))(
  ( (Nil!59220) (Cons!59220 (h!65668 Context!7190) (t!372363 List!59344)) )
))
(declare-fun lt!2110820 () List!59344)

(declare-fun call!356628 () Bool)

(declare-fun lt!2110821 () List!59344)

(declare-fun c!879801 () Bool)

(declare-fun exists!1475 (List!59344 Int) Bool)

(assert (=> bm!356624 (= call!356628 (exists!1475 (ite c!879801 lt!2110821 lt!2110820) (ite c!879801 lambda!251257 lambda!251258)))))

(declare-fun lt!2110815 () Bool)

(declare-datatypes ((Option!14698 0))(
  ( (None!14697) (Some!14697 (v!50710 List!59342)) )
))
(declare-fun isEmpty!31937 (Option!14698) Bool)

(declare-fun getLanguageWitness!815 ((InoxSet Context!7190)) Option!14698)

(assert (=> d!1654543 (= lt!2110815 (isEmpty!31937 (getLanguageWitness!815 z!4463)))))

(declare-fun forall!13612 ((InoxSet Context!7190) Int) Bool)

(assert (=> d!1654543 (= lt!2110815 (forall!13612 z!4463 lambda!251256))))

(declare-fun lt!2110819 () Unit!150357)

(declare-fun e!3193092 () Unit!150357)

(assert (=> d!1654543 (= lt!2110819 e!3193092)))

(assert (=> d!1654543 (= c!879801 (not (forall!13612 z!4463 lambda!251256)))))

(assert (=> d!1654543 (= (lostCauseZipper!1097 z!4463) lt!2110815)))

(declare-fun bm!356623 () Bool)

(declare-fun call!356629 () List!59344)

(declare-fun toList!8264 ((InoxSet Context!7190)) List!59344)

(assert (=> bm!356623 (= call!356629 (toList!8264 z!4463))))

(declare-fun Unit!150361 () Unit!150357)

(assert (=> b!5119816 (= e!3193092 Unit!150361)))

(assert (=> b!5119816 (= lt!2110821 call!356629)))

(declare-fun lt!2110817 () Unit!150357)

(declare-fun lemmaNotForallThenExists!338 (List!59344 Int) Unit!150357)

(assert (=> b!5119816 (= lt!2110817 (lemmaNotForallThenExists!338 lt!2110821 lambda!251256))))

(assert (=> b!5119816 call!356628))

(declare-fun lt!2110822 () Unit!150357)

(assert (=> b!5119816 (= lt!2110822 lt!2110817)))

(declare-fun Unit!150362 () Unit!150357)

(assert (=> b!5119817 (= e!3193092 Unit!150362)))

(assert (=> b!5119817 (= lt!2110820 call!356629)))

(declare-fun lt!2110816 () Unit!150357)

(declare-fun lemmaForallThenNotExists!321 (List!59344 Int) Unit!150357)

(assert (=> b!5119817 (= lt!2110816 (lemmaForallThenNotExists!321 lt!2110820 lambda!251256))))

(assert (=> b!5119817 (not call!356628)))

(declare-fun lt!2110818 () Unit!150357)

(assert (=> b!5119817 (= lt!2110818 lt!2110816)))

(assert (= (and d!1654543 c!879801) b!5119816))

(assert (= (and d!1654543 (not c!879801)) b!5119817))

(assert (= (or b!5119816 b!5119817) bm!356623))

(assert (= (or b!5119816 b!5119817) bm!356624))

(declare-fun m!6180500 () Bool)

(assert (=> bm!356624 m!6180500))

(declare-fun m!6180502 () Bool)

(assert (=> bm!356623 m!6180502))

(declare-fun m!6180504 () Bool)

(assert (=> d!1654543 m!6180504))

(assert (=> d!1654543 m!6180504))

(declare-fun m!6180506 () Bool)

(assert (=> d!1654543 m!6180506))

(declare-fun m!6180508 () Bool)

(assert (=> d!1654543 m!6180508))

(assert (=> d!1654543 m!6180508))

(declare-fun m!6180510 () Bool)

(assert (=> b!5119816 m!6180510))

(declare-fun m!6180512 () Bool)

(assert (=> b!5119817 m!6180512))

(assert (=> b!5119639 d!1654543))

(declare-fun b!5119822 () Bool)

(declare-fun e!3193097 () List!59342)

(assert (=> b!5119822 (= e!3193097 lt!2110697)))

(declare-fun b!5119824 () Bool)

(declare-fun res!2180018 () Bool)

(declare-fun e!3193096 () Bool)

(assert (=> b!5119824 (=> (not res!2180018) (not e!3193096))))

(declare-fun lt!2110827 () List!59342)

(assert (=> b!5119824 (= res!2180018 (= (size!39517 lt!2110827) (+ (size!39517 lt!2110694) (size!39517 lt!2110697))))))

(declare-fun b!5119825 () Bool)

(assert (=> b!5119825 (= e!3193096 (or (not (= lt!2110697 Nil!59218)) (= lt!2110827 lt!2110694)))))

(declare-fun b!5119823 () Bool)

(assert (=> b!5119823 (= e!3193097 (Cons!59218 (h!65666 lt!2110694) (++!13036 (t!372359 lt!2110694) lt!2110697)))))

(declare-fun d!1654561 () Bool)

(assert (=> d!1654561 e!3193096))

(declare-fun res!2180017 () Bool)

(assert (=> d!1654561 (=> (not res!2180017) (not e!3193096))))

(assert (=> d!1654561 (= res!2180017 (= (content!10530 lt!2110827) ((_ map or) (content!10530 lt!2110694) (content!10530 lt!2110697))))))

(assert (=> d!1654561 (= lt!2110827 e!3193097)))

(declare-fun c!879802 () Bool)

(assert (=> d!1654561 (= c!879802 ((_ is Nil!59218) lt!2110694))))

(assert (=> d!1654561 (= (++!13036 lt!2110694 lt!2110697) lt!2110827)))

(assert (= (and d!1654561 c!879802) b!5119822))

(assert (= (and d!1654561 (not c!879802)) b!5119823))

(assert (= (and d!1654561 res!2180017) b!5119824))

(assert (= (and b!5119824 res!2180018) b!5119825))

(declare-fun m!6180516 () Bool)

(assert (=> b!5119824 m!6180516))

(declare-fun m!6180520 () Bool)

(assert (=> b!5119824 m!6180520))

(assert (=> b!5119824 m!6180224))

(declare-fun m!6180524 () Bool)

(assert (=> b!5119823 m!6180524))

(declare-fun m!6180530 () Bool)

(assert (=> d!1654561 m!6180530))

(declare-fun m!6180534 () Bool)

(assert (=> d!1654561 m!6180534))

(assert (=> d!1654561 m!6180232))

(assert (=> b!5119625 d!1654561))

(declare-fun b!5119830 () Bool)

(declare-fun e!3193101 () List!59342)

(assert (=> b!5119830 (= e!3193101 lt!2110705)))

(declare-fun b!5119832 () Bool)

(declare-fun res!2180022 () Bool)

(declare-fun e!3193100 () Bool)

(assert (=> b!5119832 (=> (not res!2180022) (not e!3193100))))

(declare-fun lt!2110829 () List!59342)

(assert (=> b!5119832 (= res!2180022 (= (size!39517 lt!2110829) (+ (size!39517 testedP!265) (size!39517 lt!2110705))))))

(declare-fun b!5119833 () Bool)

(assert (=> b!5119833 (= e!3193100 (or (not (= lt!2110705 Nil!59218)) (= lt!2110829 testedP!265)))))

(declare-fun b!5119831 () Bool)

(assert (=> b!5119831 (= e!3193101 (Cons!59218 (h!65666 testedP!265) (++!13036 (t!372359 testedP!265) lt!2110705)))))

(declare-fun d!1654567 () Bool)

(assert (=> d!1654567 e!3193100))

(declare-fun res!2180021 () Bool)

(assert (=> d!1654567 (=> (not res!2180021) (not e!3193100))))

(assert (=> d!1654567 (= res!2180021 (= (content!10530 lt!2110829) ((_ map or) (content!10530 testedP!265) (content!10530 lt!2110705))))))

(assert (=> d!1654567 (= lt!2110829 e!3193101)))

(declare-fun c!879804 () Bool)

(assert (=> d!1654567 (= c!879804 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654567 (= (++!13036 testedP!265 lt!2110705) lt!2110829)))

(assert (= (and d!1654567 c!879804) b!5119830))

(assert (= (and d!1654567 (not c!879804)) b!5119831))

(assert (= (and d!1654567 res!2180021) b!5119832))

(assert (= (and b!5119832 res!2180022) b!5119833))

(declare-fun m!6180538 () Bool)

(assert (=> b!5119832 m!6180538))

(assert (=> b!5119832 m!6180150))

(assert (=> b!5119832 m!6180222))

(declare-fun m!6180540 () Bool)

(assert (=> b!5119831 m!6180540))

(declare-fun m!6180542 () Bool)

(assert (=> d!1654567 m!6180542))

(assert (=> d!1654567 m!6180216))

(assert (=> d!1654567 m!6180230))

(assert (=> b!5119625 d!1654567))

(declare-fun bs!1192619 () Bool)

(declare-fun d!1654569 () Bool)

(assert (= bs!1192619 (and d!1654569 d!1654451)))

(declare-fun lambda!251259 () Int)

(assert (=> bs!1192619 (= lambda!251259 lambda!251221)))

(assert (=> d!1654569 (= (inv!78708 setElem!30310) (forall!13609 (exprs!4095 setElem!30310) lambda!251259))))

(declare-fun bs!1192620 () Bool)

(assert (= bs!1192620 d!1654569))

(declare-fun m!6180544 () Bool)

(assert (=> bs!1192620 m!6180544))

(assert (=> setNonEmpty!30310 d!1654569))

(declare-fun b!5119837 () Bool)

(declare-fun e!3193104 () Bool)

(assert (=> b!5119837 (= e!3193104 (>= (size!39517 input!5745) (size!39517 knownP!20)))))

(declare-fun d!1654571 () Bool)

(assert (=> d!1654571 e!3193104))

(declare-fun res!2180024 () Bool)

(assert (=> d!1654571 (=> res!2180024 e!3193104)))

(declare-fun lt!2110830 () Bool)

(assert (=> d!1654571 (= res!2180024 (not lt!2110830))))

(declare-fun e!3193102 () Bool)

(assert (=> d!1654571 (= lt!2110830 e!3193102)))

(declare-fun res!2180023 () Bool)

(assert (=> d!1654571 (=> res!2180023 e!3193102)))

(assert (=> d!1654571 (= res!2180023 ((_ is Nil!59218) knownP!20))))

(assert (=> d!1654571 (= (isPrefix!5616 knownP!20 input!5745) lt!2110830)))

(declare-fun b!5119836 () Bool)

(declare-fun e!3193103 () Bool)

(assert (=> b!5119836 (= e!3193103 (isPrefix!5616 (tail!10076 knownP!20) (tail!10076 input!5745)))))

(declare-fun b!5119834 () Bool)

(assert (=> b!5119834 (= e!3193102 e!3193103)))

(declare-fun res!2180025 () Bool)

(assert (=> b!5119834 (=> (not res!2180025) (not e!3193103))))

(assert (=> b!5119834 (= res!2180025 (not ((_ is Nil!59218) input!5745)))))

(declare-fun b!5119835 () Bool)

(declare-fun res!2180026 () Bool)

(assert (=> b!5119835 (=> (not res!2180026) (not e!3193103))))

(assert (=> b!5119835 (= res!2180026 (= (head!10939 knownP!20) (head!10939 input!5745)))))

(assert (= (and d!1654571 (not res!2180023)) b!5119834))

(assert (= (and b!5119834 res!2180025) b!5119835))

(assert (= (and b!5119835 res!2180026) b!5119836))

(assert (= (and d!1654571 (not res!2180024)) b!5119837))

(assert (=> b!5119837 m!6180180))

(assert (=> b!5119837 m!6180152))

(assert (=> b!5119836 m!6180330))

(assert (=> b!5119836 m!6180252))

(assert (=> b!5119836 m!6180330))

(assert (=> b!5119836 m!6180252))

(declare-fun m!6180546 () Bool)

(assert (=> b!5119836 m!6180546))

(assert (=> b!5119835 m!6180346))

(assert (=> b!5119835 m!6180324))

(assert (=> b!5119632 d!1654571))

(declare-fun b!5119842 () Bool)

(declare-fun e!3193107 () Bool)

(declare-fun tp!1428282 () Bool)

(assert (=> b!5119842 (= e!3193107 (and tp_is_empty!37695 tp!1428282))))

(assert (=> b!5119635 (= tp!1428274 e!3193107)))

(assert (= (and b!5119635 ((_ is Cons!59218) (t!372359 input!5745))) b!5119842))

(declare-fun b!5119847 () Bool)

(declare-fun e!3193110 () Bool)

(declare-fun tp!1428287 () Bool)

(declare-fun tp!1428288 () Bool)

(assert (=> b!5119847 (= e!3193110 (and tp!1428287 tp!1428288))))

(assert (=> b!5119618 (= tp!1428279 e!3193110)))

(assert (= (and b!5119618 ((_ is Cons!59217) (exprs!4095 setElem!30309))) b!5119847))

(declare-fun condSetEmpty!30313 () Bool)

(assert (=> setNonEmpty!30309 (= condSetEmpty!30313 (= setRest!30310 ((as const (Array Context!7190 Bool)) false)))))

(declare-fun setRes!30313 () Bool)

(assert (=> setNonEmpty!30309 (= tp!1428277 setRes!30313)))

(declare-fun setIsEmpty!30313 () Bool)

(assert (=> setIsEmpty!30313 setRes!30313))

(declare-fun e!3193113 () Bool)

(declare-fun setElem!30313 () Context!7190)

(declare-fun setNonEmpty!30313 () Bool)

(declare-fun tp!1428293 () Bool)

(assert (=> setNonEmpty!30313 (= setRes!30313 (and tp!1428293 (inv!78708 setElem!30313) e!3193113))))

(declare-fun setRest!30313 () (InoxSet Context!7190))

(assert (=> setNonEmpty!30313 (= setRest!30310 ((_ map or) (store ((as const (Array Context!7190 Bool)) false) setElem!30313 true) setRest!30313))))

(declare-fun b!5119852 () Bool)

(declare-fun tp!1428294 () Bool)

(assert (=> b!5119852 (= e!3193113 tp!1428294)))

(assert (= (and setNonEmpty!30309 condSetEmpty!30313) setIsEmpty!30313))

(assert (= (and setNonEmpty!30309 (not condSetEmpty!30313)) setNonEmpty!30313))

(assert (= setNonEmpty!30313 b!5119852))

(declare-fun m!6180556 () Bool)

(assert (=> setNonEmpty!30313 m!6180556))

(declare-fun b!5119853 () Bool)

(declare-fun e!3193114 () Bool)

(declare-fun tp!1428295 () Bool)

(assert (=> b!5119853 (= e!3193114 (and tp_is_empty!37695 tp!1428295))))

(assert (=> b!5119626 (= tp!1428275 e!3193114)))

(assert (= (and b!5119626 ((_ is Cons!59218) (t!372359 testedP!265))) b!5119853))

(declare-fun b!5119854 () Bool)

(declare-fun e!3193115 () Bool)

(declare-fun tp!1428296 () Bool)

(assert (=> b!5119854 (= e!3193115 (and tp_is_empty!37695 tp!1428296))))

(assert (=> b!5119638 (= tp!1428276 e!3193115)))

(assert (= (and b!5119638 ((_ is Cons!59218) (t!372359 knownP!20))) b!5119854))

(declare-fun b!5119855 () Bool)

(declare-fun e!3193116 () Bool)

(declare-fun tp!1428297 () Bool)

(declare-fun tp!1428298 () Bool)

(assert (=> b!5119855 (= e!3193116 (and tp!1428297 tp!1428298))))

(assert (=> b!5119633 (= tp!1428273 e!3193116)))

(assert (= (and b!5119633 ((_ is Cons!59217) (exprs!4095 setElem!30310))) b!5119855))

(declare-fun condSetEmpty!30314 () Bool)

(assert (=> setNonEmpty!30310 (= condSetEmpty!30314 (= setRest!30309 ((as const (Array Context!7190 Bool)) false)))))

(declare-fun setRes!30314 () Bool)

(assert (=> setNonEmpty!30310 (= tp!1428278 setRes!30314)))

(declare-fun setIsEmpty!30314 () Bool)

(assert (=> setIsEmpty!30314 setRes!30314))

(declare-fun setNonEmpty!30314 () Bool)

(declare-fun setElem!30314 () Context!7190)

(declare-fun tp!1428299 () Bool)

(declare-fun e!3193117 () Bool)

(assert (=> setNonEmpty!30314 (= setRes!30314 (and tp!1428299 (inv!78708 setElem!30314) e!3193117))))

(declare-fun setRest!30314 () (InoxSet Context!7190))

(assert (=> setNonEmpty!30314 (= setRest!30309 ((_ map or) (store ((as const (Array Context!7190 Bool)) false) setElem!30314 true) setRest!30314))))

(declare-fun b!5119856 () Bool)

(declare-fun tp!1428300 () Bool)

(assert (=> b!5119856 (= e!3193117 tp!1428300)))

(assert (= (and setNonEmpty!30310 condSetEmpty!30314) setIsEmpty!30314))

(assert (= (and setNonEmpty!30310 (not condSetEmpty!30314)) setNonEmpty!30314))

(assert (= setNonEmpty!30314 b!5119856))

(declare-fun m!6180558 () Bool)

(assert (=> setNonEmpty!30314 m!6180558))

(check-sat (not b!5119854) (not d!1654535) (not b!5119664) (not b!5119837) (not b!5119772) (not b!5119853) (not d!1654541) (not b!5119756) (not b!5119671) (not b!5119847) (not d!1654465) (not b!5119836) (not d!1654463) (not b!5119775) (not bm!356624) (not b!5119764) (not d!1654507) (not b!5119771) (not d!1654491) (not b!5119704) (not d!1654567) (not b!5119817) (not b!5119725) (not b!5119755) (not b!5119740) (not d!1654569) (not b!5119780) (not b!5119779) (not d!1654523) (not d!1654473) (not b!5119770) (not b!5119750) (not b!5119852) (not d!1654479) (not b!5119721) (not b!5119835) (not b!5119842) (not b!5119726) (not b!5119703) (not b!5119722) (not b!5119668) (not b!5119663) (not d!1654461) (not b!5119855) (not d!1654533) (not d!1654511) (not b!5119672) (not d!1654503) (not b!5119718) (not d!1654483) (not d!1654561) (not b!5119776) (not b!5119741) (not d!1654543) tp_is_empty!37695 (not b!5119823) (not setNonEmpty!30314) (not d!1654467) (not b!5119746) (not b!5119749) (not b!5119715) (not d!1654459) (not b!5119716) (not setNonEmpty!30313) (not b!5119717) (not d!1654537) (not b!5119651) (not b!5119832) (not d!1654469) (not b!5119765) (not b!5119816) (not b!5119763) (not b!5119667) (not d!1654515) (not b!5119653) (not d!1654451) (not d!1654447) (not b!5119645) (not b!5119694) (not b!5119856) (not bm!356623) (not b!5119824) (not b!5119751) (not d!1654501) (not d!1654495) (not b!5119831) (not b!5119727) (not b!5119678) (not b!5119728) (not d!1654471))
(check-sat)
(get-model)

(declare-fun bs!1192626 () Bool)

(declare-fun d!1654613 () Bool)

(assert (= bs!1192626 (and d!1654613 d!1654543)))

(declare-fun lambda!251265 () Int)

(assert (=> bs!1192626 (not (= lambda!251265 lambda!251256))))

(declare-fun bs!1192627 () Bool)

(assert (= bs!1192627 (and d!1654613 b!5119816)))

(assert (=> bs!1192627 (not (= lambda!251265 lambda!251257))))

(declare-fun bs!1192628 () Bool)

(assert (= bs!1192628 (and d!1654613 b!5119817)))

(assert (=> bs!1192628 (not (= lambda!251265 lambda!251258))))

(declare-fun exists!1476 ((InoxSet Context!7190) Int) Bool)

(assert (=> d!1654613 (= (nullableZipper!1028 baseZ!46) (exists!1476 baseZ!46 lambda!251265))))

(declare-fun bs!1192629 () Bool)

(assert (= bs!1192629 d!1654613))

(declare-fun m!6180658 () Bool)

(assert (=> bs!1192629 m!6180658))

(assert (=> b!5119770 d!1654613))

(declare-fun d!1654615 () Bool)

(declare-fun c!879820 () Bool)

(assert (=> d!1654615 (= c!879820 ((_ is Cons!59218) (t!372359 lt!2110688)))))

(declare-fun e!3193156 () (InoxSet Context!7190))

(assert (=> d!1654615 (= (derivationZipper!110 (derivationStepZipper!846 baseZ!46 (h!65666 lt!2110688)) (t!372359 lt!2110688)) e!3193156)))

(declare-fun b!5119922 () Bool)

(assert (=> b!5119922 (= e!3193156 (derivationZipper!110 (derivationStepZipper!846 (derivationStepZipper!846 baseZ!46 (h!65666 lt!2110688)) (h!65666 (t!372359 lt!2110688))) (t!372359 (t!372359 lt!2110688))))))

(declare-fun b!5119923 () Bool)

(assert (=> b!5119923 (= e!3193156 (derivationStepZipper!846 baseZ!46 (h!65666 lt!2110688)))))

(assert (= (and d!1654615 c!879820) b!5119922))

(assert (= (and d!1654615 (not c!879820)) b!5119923))

(assert (=> b!5119922 m!6180280))

(declare-fun m!6180660 () Bool)

(assert (=> b!5119922 m!6180660))

(assert (=> b!5119922 m!6180660))

(declare-fun m!6180662 () Bool)

(assert (=> b!5119922 m!6180662))

(assert (=> b!5119694 d!1654615))

(declare-fun bs!1192630 () Bool)

(declare-fun d!1654617 () Bool)

(assert (= bs!1192630 (and d!1654617 d!1654471)))

(declare-fun lambda!251266 () Int)

(assert (=> bs!1192630 (= (= (h!65666 lt!2110688) lt!2110701) (= lambda!251266 lambda!251239))))

(assert (=> d!1654617 true))

(assert (=> d!1654617 (= (derivationStepZipper!846 baseZ!46 (h!65666 lt!2110688)) (flatMap!358 baseZ!46 lambda!251266))))

(declare-fun bs!1192631 () Bool)

(assert (= bs!1192631 d!1654617))

(declare-fun m!6180664 () Bool)

(assert (=> bs!1192631 m!6180664))

(assert (=> b!5119694 d!1654617))

(assert (=> b!5119751 d!1654457))

(assert (=> b!5119751 d!1654455))

(declare-fun b!5119924 () Bool)

(declare-fun e!3193158 () List!59342)

(assert (=> b!5119924 (= e!3193158 lt!2110706)))

(declare-fun b!5119926 () Bool)

(declare-fun res!2180050 () Bool)

(declare-fun e!3193157 () Bool)

(assert (=> b!5119926 (=> (not res!2180050) (not e!3193157))))

(declare-fun lt!2110851 () List!59342)

(assert (=> b!5119926 (= res!2180050 (= (size!39517 lt!2110851) (+ (size!39517 (t!372359 testedP!265)) (size!39517 lt!2110706))))))

(declare-fun b!5119927 () Bool)

(assert (=> b!5119927 (= e!3193157 (or (not (= lt!2110706 Nil!59218)) (= lt!2110851 (t!372359 testedP!265))))))

(declare-fun b!5119925 () Bool)

(assert (=> b!5119925 (= e!3193158 (Cons!59218 (h!65666 (t!372359 testedP!265)) (++!13036 (t!372359 (t!372359 testedP!265)) lt!2110706)))))

(declare-fun d!1654619 () Bool)

(assert (=> d!1654619 e!3193157))

(declare-fun res!2180049 () Bool)

(assert (=> d!1654619 (=> (not res!2180049) (not e!3193157))))

(assert (=> d!1654619 (= res!2180049 (= (content!10530 lt!2110851) ((_ map or) (content!10530 (t!372359 testedP!265)) (content!10530 lt!2110706))))))

(assert (=> d!1654619 (= lt!2110851 e!3193158)))

(declare-fun c!879821 () Bool)

(assert (=> d!1654619 (= c!879821 ((_ is Nil!59218) (t!372359 testedP!265)))))

(assert (=> d!1654619 (= (++!13036 (t!372359 testedP!265) lt!2110706) lt!2110851)))

(assert (= (and d!1654619 c!879821) b!5119924))

(assert (= (and d!1654619 (not c!879821)) b!5119925))

(assert (= (and d!1654619 res!2180049) b!5119926))

(assert (= (and b!5119926 res!2180050) b!5119927))

(declare-fun m!6180666 () Bool)

(assert (=> b!5119926 m!6180666))

(assert (=> b!5119926 m!6180204))

(assert (=> b!5119926 m!6180442))

(declare-fun m!6180668 () Bool)

(assert (=> b!5119925 m!6180668))

(declare-fun m!6180670 () Bool)

(assert (=> d!1654619 m!6180670))

(declare-fun m!6180672 () Bool)

(assert (=> d!1654619 m!6180672))

(assert (=> d!1654619 m!6180448))

(assert (=> b!5119775 d!1654619))

(declare-fun d!1654621 () Bool)

(declare-fun c!879824 () Bool)

(assert (=> d!1654621 (= c!879824 ((_ is Nil!59218) lt!2110721))))

(declare-fun e!3193161 () (InoxSet C!28688))

(assert (=> d!1654621 (= (content!10530 lt!2110721) e!3193161)))

(declare-fun b!5119932 () Bool)

(assert (=> b!5119932 (= e!3193161 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5119933 () Bool)

(assert (=> b!5119933 (= e!3193161 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110721) true) (content!10530 (t!372359 lt!2110721))))))

(assert (= (and d!1654621 c!879824) b!5119932))

(assert (= (and d!1654621 (not c!879824)) b!5119933))

(declare-fun m!6180674 () Bool)

(assert (=> b!5119933 m!6180674))

(declare-fun m!6180676 () Bool)

(assert (=> b!5119933 m!6180676))

(assert (=> d!1654459 d!1654621))

(declare-fun d!1654623 () Bool)

(declare-fun c!879825 () Bool)

(assert (=> d!1654623 (= c!879825 ((_ is Nil!59218) testedP!265))))

(declare-fun e!3193162 () (InoxSet C!28688))

(assert (=> d!1654623 (= (content!10530 testedP!265) e!3193162)))

(declare-fun b!5119934 () Bool)

(assert (=> b!5119934 (= e!3193162 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5119935 () Bool)

(assert (=> b!5119935 (= e!3193162 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 testedP!265) true) (content!10530 (t!372359 testedP!265))))))

(assert (= (and d!1654623 c!879825) b!5119934))

(assert (= (and d!1654623 (not c!879825)) b!5119935))

(declare-fun m!6180678 () Bool)

(assert (=> b!5119935 m!6180678))

(assert (=> b!5119935 m!6180672))

(assert (=> d!1654459 d!1654623))

(declare-fun d!1654625 () Bool)

(declare-fun c!879826 () Bool)

(assert (=> d!1654625 (= c!879826 ((_ is Nil!59218) lt!2110700))))

(declare-fun e!3193163 () (InoxSet C!28688))

(assert (=> d!1654625 (= (content!10530 lt!2110700) e!3193163)))

(declare-fun b!5119936 () Bool)

(assert (=> b!5119936 (= e!3193163 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5119937 () Bool)

(assert (=> b!5119937 (= e!3193163 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110700) true) (content!10530 (t!372359 lt!2110700))))))

(assert (= (and d!1654625 c!879826) b!5119936))

(assert (= (and d!1654625 (not c!879826)) b!5119937))

(declare-fun m!6180680 () Bool)

(assert (=> b!5119937 m!6180680))

(declare-fun m!6180682 () Bool)

(assert (=> b!5119937 m!6180682))

(assert (=> d!1654459 d!1654625))

(assert (=> b!5119837 d!1654449))

(assert (=> b!5119837 d!1654457))

(assert (=> d!1654541 d!1654537))

(declare-fun b!5119938 () Bool)

(declare-fun e!3193165 () List!59342)

(assert (=> b!5119938 (= e!3193165 (++!13036 lt!2110702 lt!2110690))))

(declare-fun b!5119940 () Bool)

(declare-fun res!2180052 () Bool)

(declare-fun e!3193164 () Bool)

(assert (=> b!5119940 (=> (not res!2180052) (not e!3193164))))

(declare-fun lt!2110852 () List!59342)

(assert (=> b!5119940 (= res!2180052 (= (size!39517 lt!2110852) (+ (size!39517 testedP!265) (size!39517 (++!13036 lt!2110702 lt!2110690)))))))

(declare-fun b!5119941 () Bool)

(assert (=> b!5119941 (= e!3193164 (or (not (= (++!13036 lt!2110702 lt!2110690) Nil!59218)) (= lt!2110852 testedP!265)))))

(declare-fun b!5119939 () Bool)

(assert (=> b!5119939 (= e!3193165 (Cons!59218 (h!65666 testedP!265) (++!13036 (t!372359 testedP!265) (++!13036 lt!2110702 lt!2110690))))))

(declare-fun d!1654627 () Bool)

(assert (=> d!1654627 e!3193164))

(declare-fun res!2180051 () Bool)

(assert (=> d!1654627 (=> (not res!2180051) (not e!3193164))))

(assert (=> d!1654627 (= res!2180051 (= (content!10530 lt!2110852) ((_ map or) (content!10530 testedP!265) (content!10530 (++!13036 lt!2110702 lt!2110690)))))))

(assert (=> d!1654627 (= lt!2110852 e!3193165)))

(declare-fun c!879827 () Bool)

(assert (=> d!1654627 (= c!879827 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654627 (= (++!13036 testedP!265 (++!13036 lt!2110702 lt!2110690)) lt!2110852)))

(assert (= (and d!1654627 c!879827) b!5119938))

(assert (= (and d!1654627 (not c!879827)) b!5119939))

(assert (= (and d!1654627 res!2180051) b!5119940))

(assert (= (and b!5119940 res!2180052) b!5119941))

(declare-fun m!6180684 () Bool)

(assert (=> b!5119940 m!6180684))

(assert (=> b!5119940 m!6180150))

(assert (=> b!5119940 m!6180158))

(declare-fun m!6180686 () Bool)

(assert (=> b!5119940 m!6180686))

(assert (=> b!5119939 m!6180158))

(declare-fun m!6180688 () Bool)

(assert (=> b!5119939 m!6180688))

(declare-fun m!6180690 () Bool)

(assert (=> d!1654627 m!6180690))

(assert (=> d!1654627 m!6180216))

(assert (=> d!1654627 m!6180158))

(declare-fun m!6180692 () Bool)

(assert (=> d!1654627 m!6180692))

(assert (=> d!1654541 d!1654627))

(assert (=> d!1654541 d!1654495))

(declare-fun d!1654629 () Bool)

(assert (=> d!1654629 (= (++!13036 (++!13036 testedP!265 lt!2110702) lt!2110690) (++!13036 testedP!265 (++!13036 lt!2110702 lt!2110690)))))

(assert (=> d!1654629 true))

(declare-fun _$52!2351 () Unit!150357)

(assert (=> d!1654629 (= (choose!37629 testedP!265 lt!2110702 lt!2110690) _$52!2351)))

(declare-fun bs!1192632 () Bool)

(assert (= bs!1192632 d!1654629))

(assert (=> bs!1192632 m!6180126))

(assert (=> bs!1192632 m!6180126))

(assert (=> bs!1192632 m!6180462))

(assert (=> bs!1192632 m!6180158))

(assert (=> bs!1192632 m!6180158))

(assert (=> bs!1192632 m!6180464))

(assert (=> d!1654541 d!1654629))

(declare-fun b!5119942 () Bool)

(declare-fun e!3193167 () List!59342)

(assert (=> b!5119942 (= e!3193167 lt!2110690)))

(declare-fun b!5119944 () Bool)

(declare-fun res!2180054 () Bool)

(declare-fun e!3193166 () Bool)

(assert (=> b!5119944 (=> (not res!2180054) (not e!3193166))))

(declare-fun lt!2110853 () List!59342)

(assert (=> b!5119944 (= res!2180054 (= (size!39517 lt!2110853) (+ (size!39517 (++!13036 testedP!265 lt!2110702)) (size!39517 lt!2110690))))))

(declare-fun b!5119945 () Bool)

(assert (=> b!5119945 (= e!3193166 (or (not (= lt!2110690 Nil!59218)) (= lt!2110853 (++!13036 testedP!265 lt!2110702))))))

(declare-fun b!5119943 () Bool)

(assert (=> b!5119943 (= e!3193167 (Cons!59218 (h!65666 (++!13036 testedP!265 lt!2110702)) (++!13036 (t!372359 (++!13036 testedP!265 lt!2110702)) lt!2110690)))))

(declare-fun d!1654631 () Bool)

(assert (=> d!1654631 e!3193166))

(declare-fun res!2180053 () Bool)

(assert (=> d!1654631 (=> (not res!2180053) (not e!3193166))))

(assert (=> d!1654631 (= res!2180053 (= (content!10530 lt!2110853) ((_ map or) (content!10530 (++!13036 testedP!265 lt!2110702)) (content!10530 lt!2110690))))))

(assert (=> d!1654631 (= lt!2110853 e!3193167)))

(declare-fun c!879828 () Bool)

(assert (=> d!1654631 (= c!879828 ((_ is Nil!59218) (++!13036 testedP!265 lt!2110702)))))

(assert (=> d!1654631 (= (++!13036 (++!13036 testedP!265 lt!2110702) lt!2110690) lt!2110853)))

(assert (= (and d!1654631 c!879828) b!5119942))

(assert (= (and d!1654631 (not c!879828)) b!5119943))

(assert (= (and d!1654631 res!2180053) b!5119944))

(assert (= (and b!5119944 res!2180054) b!5119945))

(declare-fun m!6180694 () Bool)

(assert (=> b!5119944 m!6180694))

(assert (=> b!5119944 m!6180126))

(declare-fun m!6180696 () Bool)

(assert (=> b!5119944 m!6180696))

(assert (=> b!5119944 m!6180392))

(declare-fun m!6180698 () Bool)

(assert (=> b!5119943 m!6180698))

(declare-fun m!6180700 () Bool)

(assert (=> d!1654631 m!6180700))

(assert (=> d!1654631 m!6180126))

(declare-fun m!6180702 () Bool)

(assert (=> d!1654631 m!6180702))

(assert (=> d!1654631 m!6180400))

(assert (=> d!1654541 d!1654631))

(declare-fun b!5119946 () Bool)

(declare-fun e!3193169 () List!59342)

(assert (=> b!5119946 (= e!3193169 lt!2110690)))

(declare-fun b!5119948 () Bool)

(declare-fun res!2180056 () Bool)

(declare-fun e!3193168 () Bool)

(assert (=> b!5119948 (=> (not res!2180056) (not e!3193168))))

(declare-fun lt!2110854 () List!59342)

(assert (=> b!5119948 (= res!2180056 (= (size!39517 lt!2110854) (+ (size!39517 (t!372359 lt!2110702)) (size!39517 lt!2110690))))))

(declare-fun b!5119949 () Bool)

(assert (=> b!5119949 (= e!3193168 (or (not (= lt!2110690 Nil!59218)) (= lt!2110854 (t!372359 lt!2110702))))))

(declare-fun b!5119947 () Bool)

(assert (=> b!5119947 (= e!3193169 (Cons!59218 (h!65666 (t!372359 lt!2110702)) (++!13036 (t!372359 (t!372359 lt!2110702)) lt!2110690)))))

(declare-fun d!1654633 () Bool)

(assert (=> d!1654633 e!3193168))

(declare-fun res!2180055 () Bool)

(assert (=> d!1654633 (=> (not res!2180055) (not e!3193168))))

(assert (=> d!1654633 (= res!2180055 (= (content!10530 lt!2110854) ((_ map or) (content!10530 (t!372359 lt!2110702)) (content!10530 lt!2110690))))))

(assert (=> d!1654633 (= lt!2110854 e!3193169)))

(declare-fun c!879829 () Bool)

(assert (=> d!1654633 (= c!879829 ((_ is Nil!59218) (t!372359 lt!2110702)))))

(assert (=> d!1654633 (= (++!13036 (t!372359 lt!2110702) lt!2110690) lt!2110854)))

(assert (= (and d!1654633 c!879829) b!5119946))

(assert (= (and d!1654633 (not c!879829)) b!5119947))

(assert (= (and d!1654633 res!2180055) b!5119948))

(assert (= (and b!5119948 res!2180056) b!5119949))

(declare-fun m!6180704 () Bool)

(assert (=> b!5119948 m!6180704))

(declare-fun m!6180706 () Bool)

(assert (=> b!5119948 m!6180706))

(assert (=> b!5119948 m!6180392))

(declare-fun m!6180708 () Bool)

(assert (=> b!5119947 m!6180708))

(declare-fun m!6180710 () Bool)

(assert (=> d!1654633 m!6180710))

(declare-fun m!6180712 () Bool)

(assert (=> d!1654633 m!6180712))

(assert (=> d!1654633 m!6180400))

(assert (=> b!5119779 d!1654633))

(declare-fun d!1654635 () Bool)

(declare-fun lt!2110855 () List!59342)

(assert (=> d!1654635 (= (++!13036 (t!372359 testedP!265) lt!2110855) (tail!10076 knownP!20))))

(declare-fun e!3193170 () List!59342)

(assert (=> d!1654635 (= lt!2110855 e!3193170)))

(declare-fun c!879830 () Bool)

(assert (=> d!1654635 (= c!879830 ((_ is Cons!59218) (t!372359 testedP!265)))))

(assert (=> d!1654635 (>= (size!39517 (tail!10076 knownP!20)) (size!39517 (t!372359 testedP!265)))))

(assert (=> d!1654635 (= (getSuffix!3290 (tail!10076 knownP!20) (t!372359 testedP!265)) lt!2110855)))

(declare-fun b!5119950 () Bool)

(assert (=> b!5119950 (= e!3193170 (getSuffix!3290 (tail!10076 (tail!10076 knownP!20)) (t!372359 (t!372359 testedP!265))))))

(declare-fun b!5119951 () Bool)

(assert (=> b!5119951 (= e!3193170 (tail!10076 knownP!20))))

(assert (= (and d!1654635 c!879830) b!5119950))

(assert (= (and d!1654635 (not c!879830)) b!5119951))

(declare-fun m!6180714 () Bool)

(assert (=> d!1654635 m!6180714))

(assert (=> d!1654635 m!6180330))

(declare-fun m!6180716 () Bool)

(assert (=> d!1654635 m!6180716))

(assert (=> d!1654635 m!6180204))

(assert (=> b!5119950 m!6180330))

(declare-fun m!6180718 () Bool)

(assert (=> b!5119950 m!6180718))

(assert (=> b!5119950 m!6180718))

(declare-fun m!6180720 () Bool)

(assert (=> b!5119950 m!6180720))

(assert (=> b!5119746 d!1654635))

(declare-fun d!1654637 () Bool)

(assert (=> d!1654637 (= (tail!10076 knownP!20) (t!372359 knownP!20))))

(assert (=> b!5119746 d!1654637))

(declare-fun d!1654639 () Bool)

(declare-fun c!879831 () Bool)

(assert (=> d!1654639 (= c!879831 ((_ is Nil!59218) lt!2110777))))

(declare-fun e!3193171 () (InoxSet C!28688))

(assert (=> d!1654639 (= (content!10530 lt!2110777) e!3193171)))

(declare-fun b!5119952 () Bool)

(assert (=> b!5119952 (= e!3193171 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5119953 () Bool)

(assert (=> b!5119953 (= e!3193171 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110777) true) (content!10530 (t!372359 lt!2110777))))))

(assert (= (and d!1654639 c!879831) b!5119952))

(assert (= (and d!1654639 (not c!879831)) b!5119953))

(declare-fun m!6180722 () Bool)

(assert (=> b!5119953 m!6180722))

(declare-fun m!6180724 () Bool)

(assert (=> b!5119953 m!6180724))

(assert (=> d!1654515 d!1654639))

(declare-fun d!1654641 () Bool)

(declare-fun c!879832 () Bool)

(assert (=> d!1654641 (= c!879832 ((_ is Nil!59218) lt!2110688))))

(declare-fun e!3193172 () (InoxSet C!28688))

(assert (=> d!1654641 (= (content!10530 lt!2110688) e!3193172)))

(declare-fun b!5119954 () Bool)

(assert (=> b!5119954 (= e!3193172 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5119955 () Bool)

(assert (=> b!5119955 (= e!3193172 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110688) true) (content!10530 (t!372359 lt!2110688))))))

(assert (= (and d!1654641 c!879832) b!5119954))

(assert (= (and d!1654641 (not c!879832)) b!5119955))

(declare-fun m!6180726 () Bool)

(assert (=> b!5119955 m!6180726))

(declare-fun m!6180728 () Bool)

(assert (=> b!5119955 m!6180728))

(assert (=> d!1654515 d!1654641))

(declare-fun d!1654643 () Bool)

(declare-fun c!879833 () Bool)

(assert (=> d!1654643 (= c!879833 ((_ is Nil!59218) lt!2110690))))

(declare-fun e!3193173 () (InoxSet C!28688))

(assert (=> d!1654643 (= (content!10530 lt!2110690) e!3193173)))

(declare-fun b!5119956 () Bool)

(assert (=> b!5119956 (= e!3193173 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5119957 () Bool)

(assert (=> b!5119957 (= e!3193173 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110690) true) (content!10530 (t!372359 lt!2110690))))))

(assert (= (and d!1654643 c!879833) b!5119956))

(assert (= (and d!1654643 (not c!879833)) b!5119957))

(declare-fun m!6180730 () Bool)

(assert (=> b!5119957 m!6180730))

(declare-fun m!6180732 () Bool)

(assert (=> b!5119957 m!6180732))

(assert (=> d!1654515 d!1654643))

(declare-fun bs!1192633 () Bool)

(declare-fun d!1654645 () Bool)

(assert (= bs!1192633 (and d!1654645 d!1654451)))

(declare-fun lambda!251267 () Int)

(assert (=> bs!1192633 (= lambda!251267 lambda!251221)))

(declare-fun bs!1192634 () Bool)

(assert (= bs!1192634 (and d!1654645 d!1654569)))

(assert (=> bs!1192634 (= lambda!251267 lambda!251259)))

(assert (=> d!1654645 (= (inv!78708 setElem!30313) (forall!13609 (exprs!4095 setElem!30313) lambda!251267))))

(declare-fun bs!1192635 () Bool)

(assert (= bs!1192635 d!1654645))

(declare-fun m!6180734 () Bool)

(assert (=> bs!1192635 m!6180734))

(assert (=> setNonEmpty!30313 d!1654645))

(declare-fun d!1654647 () Bool)

(declare-fun res!2180061 () Bool)

(declare-fun e!3193178 () Bool)

(assert (=> d!1654647 (=> res!2180061 e!3193178)))

(assert (=> d!1654647 (= res!2180061 ((_ is Nil!59217) (exprs!4095 setElem!30310)))))

(assert (=> d!1654647 (= (forall!13609 (exprs!4095 setElem!30310) lambda!251259) e!3193178)))

(declare-fun b!5119962 () Bool)

(declare-fun e!3193179 () Bool)

(assert (=> b!5119962 (= e!3193178 e!3193179)))

(declare-fun res!2180062 () Bool)

(assert (=> b!5119962 (=> (not res!2180062) (not e!3193179))))

(declare-fun dynLambda!23596 (Int Regex!14211) Bool)

(assert (=> b!5119962 (= res!2180062 (dynLambda!23596 lambda!251259 (h!65665 (exprs!4095 setElem!30310))))))

(declare-fun b!5119963 () Bool)

(assert (=> b!5119963 (= e!3193179 (forall!13609 (t!372358 (exprs!4095 setElem!30310)) lambda!251259))))

(assert (= (and d!1654647 (not res!2180061)) b!5119962))

(assert (= (and b!5119962 res!2180062) b!5119963))

(declare-fun b_lambda!198909 () Bool)

(assert (=> (not b_lambda!198909) (not b!5119962)))

(declare-fun m!6180736 () Bool)

(assert (=> b!5119962 m!6180736))

(declare-fun m!6180738 () Bool)

(assert (=> b!5119963 m!6180738))

(assert (=> d!1654569 d!1654647))

(declare-fun d!1654649 () Bool)

(declare-fun c!879834 () Bool)

(assert (=> d!1654649 (= c!879834 ((_ is Nil!59218) lt!2110786))))

(declare-fun e!3193180 () (InoxSet C!28688))

(assert (=> d!1654649 (= (content!10530 lt!2110786) e!3193180)))

(declare-fun b!5119964 () Bool)

(assert (=> b!5119964 (= e!3193180 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5119965 () Bool)

(assert (=> b!5119965 (= e!3193180 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110786) true) (content!10530 (t!372359 lt!2110786))))))

(assert (= (and d!1654649 c!879834) b!5119964))

(assert (= (and d!1654649 (not c!879834)) b!5119965))

(declare-fun m!6180740 () Bool)

(assert (=> b!5119965 m!6180740))

(declare-fun m!6180742 () Bool)

(assert (=> b!5119965 m!6180742))

(assert (=> d!1654537 d!1654649))

(declare-fun d!1654651 () Bool)

(declare-fun c!879835 () Bool)

(assert (=> d!1654651 (= c!879835 ((_ is Nil!59218) lt!2110702))))

(declare-fun e!3193181 () (InoxSet C!28688))

(assert (=> d!1654651 (= (content!10530 lt!2110702) e!3193181)))

(declare-fun b!5119966 () Bool)

(assert (=> b!5119966 (= e!3193181 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5119967 () Bool)

(assert (=> b!5119967 (= e!3193181 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110702) true) (content!10530 (t!372359 lt!2110702))))))

(assert (= (and d!1654651 c!879835) b!5119966))

(assert (= (and d!1654651 (not c!879835)) b!5119967))

(declare-fun m!6180744 () Bool)

(assert (=> b!5119967 m!6180744))

(assert (=> b!5119967 m!6180712))

(assert (=> d!1654537 d!1654651))

(assert (=> d!1654537 d!1654643))

(declare-fun d!1654653 () Bool)

(declare-fun e!3193184 () Bool)

(assert (=> d!1654653 e!3193184))

(declare-fun res!2180065 () Bool)

(assert (=> d!1654653 (=> (not res!2180065) (not e!3193184))))

(declare-fun lt!2110858 () List!59344)

(declare-fun noDuplicate!1073 (List!59344) Bool)

(assert (=> d!1654653 (= res!2180065 (noDuplicate!1073 lt!2110858))))

(declare-fun choose!37638 ((InoxSet Context!7190)) List!59344)

(assert (=> d!1654653 (= lt!2110858 (choose!37638 z!4463))))

(assert (=> d!1654653 (= (toList!8264 z!4463) lt!2110858)))

(declare-fun b!5119970 () Bool)

(declare-fun content!10532 (List!59344) (InoxSet Context!7190))

(assert (=> b!5119970 (= e!3193184 (= (content!10532 lt!2110858) z!4463))))

(assert (= (and d!1654653 res!2180065) b!5119970))

(declare-fun m!6180746 () Bool)

(assert (=> d!1654653 m!6180746))

(declare-fun m!6180748 () Bool)

(assert (=> d!1654653 m!6180748))

(declare-fun m!6180750 () Bool)

(assert (=> b!5119970 m!6180750))

(assert (=> bm!356623 d!1654653))

(declare-fun b!5119974 () Bool)

(declare-fun e!3193187 () Bool)

(assert (=> b!5119974 (= e!3193187 (>= (size!39517 (tail!10076 input!5745)) (size!39517 (tail!10076 lt!2110688))))))

(declare-fun d!1654655 () Bool)

(assert (=> d!1654655 e!3193187))

(declare-fun res!2180067 () Bool)

(assert (=> d!1654655 (=> res!2180067 e!3193187)))

(declare-fun lt!2110859 () Bool)

(assert (=> d!1654655 (= res!2180067 (not lt!2110859))))

(declare-fun e!3193185 () Bool)

(assert (=> d!1654655 (= lt!2110859 e!3193185)))

(declare-fun res!2180066 () Bool)

(assert (=> d!1654655 (=> res!2180066 e!3193185)))

(assert (=> d!1654655 (= res!2180066 ((_ is Nil!59218) (tail!10076 lt!2110688)))))

(assert (=> d!1654655 (= (isPrefix!5616 (tail!10076 lt!2110688) (tail!10076 input!5745)) lt!2110859)))

(declare-fun b!5119973 () Bool)

(declare-fun e!3193186 () Bool)

(assert (=> b!5119973 (= e!3193186 (isPrefix!5616 (tail!10076 (tail!10076 lt!2110688)) (tail!10076 (tail!10076 input!5745))))))

(declare-fun b!5119971 () Bool)

(assert (=> b!5119971 (= e!3193185 e!3193186)))

(declare-fun res!2180068 () Bool)

(assert (=> b!5119971 (=> (not res!2180068) (not e!3193186))))

(assert (=> b!5119971 (= res!2180068 (not ((_ is Nil!59218) (tail!10076 input!5745))))))

(declare-fun b!5119972 () Bool)

(declare-fun res!2180069 () Bool)

(assert (=> b!5119972 (=> (not res!2180069) (not e!3193186))))

(assert (=> b!5119972 (= res!2180069 (= (head!10939 (tail!10076 lt!2110688)) (head!10939 (tail!10076 input!5745))))))

(assert (= (and d!1654655 (not res!2180066)) b!5119971))

(assert (= (and b!5119971 res!2180068) b!5119972))

(assert (= (and b!5119972 res!2180069) b!5119973))

(assert (= (and d!1654655 (not res!2180067)) b!5119974))

(assert (=> b!5119974 m!6180252))

(declare-fun m!6180752 () Bool)

(assert (=> b!5119974 m!6180752))

(assert (=> b!5119974 m!6180318))

(declare-fun m!6180754 () Bool)

(assert (=> b!5119974 m!6180754))

(assert (=> b!5119973 m!6180318))

(declare-fun m!6180756 () Bool)

(assert (=> b!5119973 m!6180756))

(assert (=> b!5119973 m!6180252))

(declare-fun m!6180758 () Bool)

(assert (=> b!5119973 m!6180758))

(assert (=> b!5119973 m!6180756))

(assert (=> b!5119973 m!6180758))

(declare-fun m!6180760 () Bool)

(assert (=> b!5119973 m!6180760))

(assert (=> b!5119972 m!6180318))

(declare-fun m!6180762 () Bool)

(assert (=> b!5119972 m!6180762))

(assert (=> b!5119972 m!6180252))

(declare-fun m!6180764 () Bool)

(assert (=> b!5119972 m!6180764))

(assert (=> b!5119716 d!1654655))

(declare-fun d!1654657 () Bool)

(assert (=> d!1654657 (= (tail!10076 lt!2110688) (t!372359 lt!2110688))))

(assert (=> b!5119716 d!1654657))

(declare-fun d!1654659 () Bool)

(assert (=> d!1654659 (= (tail!10076 input!5745) (t!372359 input!5745))))

(assert (=> b!5119716 d!1654659))

(declare-fun d!1654661 () Bool)

(declare-fun lt!2110860 () Int)

(assert (=> d!1654661 (>= lt!2110860 0)))

(declare-fun e!3193188 () Int)

(assert (=> d!1654661 (= lt!2110860 e!3193188)))

(declare-fun c!879836 () Bool)

(assert (=> d!1654661 (= c!879836 ((_ is Nil!59218) (t!372359 knownP!20)))))

(assert (=> d!1654661 (= (size!39517 (t!372359 knownP!20)) lt!2110860)))

(declare-fun b!5119975 () Bool)

(assert (=> b!5119975 (= e!3193188 0)))

(declare-fun b!5119976 () Bool)

(assert (=> b!5119976 (= e!3193188 (+ 1 (size!39517 (t!372359 (t!372359 knownP!20)))))))

(assert (= (and d!1654661 c!879836) b!5119975))

(assert (= (and d!1654661 (not c!879836)) b!5119976))

(declare-fun m!6180766 () Bool)

(assert (=> b!5119976 m!6180766))

(assert (=> b!5119653 d!1654661))

(declare-fun b!5119977 () Bool)

(declare-fun e!3193190 () List!59342)

(assert (=> b!5119977 (= e!3193190 lt!2110697)))

(declare-fun b!5119979 () Bool)

(declare-fun res!2180071 () Bool)

(declare-fun e!3193189 () Bool)

(assert (=> b!5119979 (=> (not res!2180071) (not e!3193189))))

(declare-fun lt!2110861 () List!59342)

(assert (=> b!5119979 (= res!2180071 (= (size!39517 lt!2110861) (+ (size!39517 (t!372359 knownP!20)) (size!39517 lt!2110697))))))

(declare-fun b!5119980 () Bool)

(assert (=> b!5119980 (= e!3193189 (or (not (= lt!2110697 Nil!59218)) (= lt!2110861 (t!372359 knownP!20))))))

(declare-fun b!5119978 () Bool)

(assert (=> b!5119978 (= e!3193190 (Cons!59218 (h!65666 (t!372359 knownP!20)) (++!13036 (t!372359 (t!372359 knownP!20)) lt!2110697)))))

(declare-fun d!1654663 () Bool)

(assert (=> d!1654663 e!3193189))

(declare-fun res!2180070 () Bool)

(assert (=> d!1654663 (=> (not res!2180070) (not e!3193189))))

(assert (=> d!1654663 (= res!2180070 (= (content!10530 lt!2110861) ((_ map or) (content!10530 (t!372359 knownP!20)) (content!10530 lt!2110697))))))

(assert (=> d!1654663 (= lt!2110861 e!3193190)))

(declare-fun c!879837 () Bool)

(assert (=> d!1654663 (= c!879837 ((_ is Nil!59218) (t!372359 knownP!20)))))

(assert (=> d!1654663 (= (++!13036 (t!372359 knownP!20) lt!2110697) lt!2110861)))

(assert (= (and d!1654663 c!879837) b!5119977))

(assert (= (and d!1654663 (not c!879837)) b!5119978))

(assert (= (and d!1654663 res!2180070) b!5119979))

(assert (= (and b!5119979 res!2180071) b!5119980))

(declare-fun m!6180768 () Bool)

(assert (=> b!5119979 m!6180768))

(assert (=> b!5119979 m!6180206))

(assert (=> b!5119979 m!6180224))

(declare-fun m!6180770 () Bool)

(assert (=> b!5119978 m!6180770))

(declare-fun m!6180772 () Bool)

(assert (=> d!1654663 m!6180772))

(declare-fun m!6180774 () Bool)

(assert (=> d!1654663 m!6180774))

(assert (=> d!1654663 m!6180232))

(assert (=> b!5119703 d!1654663))

(declare-fun b!5119984 () Bool)

(declare-fun e!3193193 () Bool)

(assert (=> b!5119984 (= e!3193193 (>= (size!39517 (tail!10076 knownP!20)) (size!39517 (tail!10076 lt!2110688))))))

(declare-fun d!1654665 () Bool)

(assert (=> d!1654665 e!3193193))

(declare-fun res!2180073 () Bool)

(assert (=> d!1654665 (=> res!2180073 e!3193193)))

(declare-fun lt!2110862 () Bool)

(assert (=> d!1654665 (= res!2180073 (not lt!2110862))))

(declare-fun e!3193191 () Bool)

(assert (=> d!1654665 (= lt!2110862 e!3193191)))

(declare-fun res!2180072 () Bool)

(assert (=> d!1654665 (=> res!2180072 e!3193191)))

(assert (=> d!1654665 (= res!2180072 ((_ is Nil!59218) (tail!10076 lt!2110688)))))

(assert (=> d!1654665 (= (isPrefix!5616 (tail!10076 lt!2110688) (tail!10076 knownP!20)) lt!2110862)))

(declare-fun b!5119983 () Bool)

(declare-fun e!3193192 () Bool)

(assert (=> b!5119983 (= e!3193192 (isPrefix!5616 (tail!10076 (tail!10076 lt!2110688)) (tail!10076 (tail!10076 knownP!20))))))

(declare-fun b!5119981 () Bool)

(assert (=> b!5119981 (= e!3193191 e!3193192)))

(declare-fun res!2180074 () Bool)

(assert (=> b!5119981 (=> (not res!2180074) (not e!3193192))))

(assert (=> b!5119981 (= res!2180074 (not ((_ is Nil!59218) (tail!10076 knownP!20))))))

(declare-fun b!5119982 () Bool)

(declare-fun res!2180075 () Bool)

(assert (=> b!5119982 (=> (not res!2180075) (not e!3193192))))

(assert (=> b!5119982 (= res!2180075 (= (head!10939 (tail!10076 lt!2110688)) (head!10939 (tail!10076 knownP!20))))))

(assert (= (and d!1654665 (not res!2180072)) b!5119981))

(assert (= (and b!5119981 res!2180074) b!5119982))

(assert (= (and b!5119982 res!2180075) b!5119983))

(assert (= (and d!1654665 (not res!2180073)) b!5119984))

(assert (=> b!5119984 m!6180330))

(assert (=> b!5119984 m!6180716))

(assert (=> b!5119984 m!6180318))

(assert (=> b!5119984 m!6180754))

(assert (=> b!5119983 m!6180318))

(assert (=> b!5119983 m!6180756))

(assert (=> b!5119983 m!6180330))

(assert (=> b!5119983 m!6180718))

(assert (=> b!5119983 m!6180756))

(assert (=> b!5119983 m!6180718))

(declare-fun m!6180776 () Bool)

(assert (=> b!5119983 m!6180776))

(assert (=> b!5119982 m!6180318))

(assert (=> b!5119982 m!6180762))

(assert (=> b!5119982 m!6180330))

(declare-fun m!6180778 () Bool)

(assert (=> b!5119982 m!6180778))

(assert (=> b!5119726 d!1654665))

(assert (=> b!5119726 d!1654657))

(assert (=> b!5119726 d!1654637))

(declare-fun bs!1192636 () Bool)

(declare-fun d!1654667 () Bool)

(assert (= bs!1192636 (and d!1654667 d!1654543)))

(declare-fun lambda!251268 () Int)

(assert (=> bs!1192636 (not (= lambda!251268 lambda!251256))))

(declare-fun bs!1192637 () Bool)

(assert (= bs!1192637 (and d!1654667 b!5119816)))

(assert (=> bs!1192637 (not (= lambda!251268 lambda!251257))))

(declare-fun bs!1192638 () Bool)

(assert (= bs!1192638 (and d!1654667 b!5119817)))

(assert (=> bs!1192638 (not (= lambda!251268 lambda!251258))))

(declare-fun bs!1192639 () Bool)

(assert (= bs!1192639 (and d!1654667 d!1654613)))

(assert (=> bs!1192639 (= lambda!251268 lambda!251265)))

(assert (=> d!1654667 (= (nullableZipper!1028 z!4463) (exists!1476 z!4463 lambda!251268))))

(declare-fun bs!1192640 () Bool)

(assert (= bs!1192640 d!1654667))

(declare-fun m!6180780 () Bool)

(assert (=> bs!1192640 m!6180780))

(assert (=> b!5119740 d!1654667))

(declare-fun d!1654669 () Bool)

(assert (=> d!1654669 (= (head!10939 knownP!20) (h!65666 knownP!20))))

(assert (=> b!5119835 d!1654669))

(declare-fun d!1654671 () Bool)

(assert (=> d!1654671 (= (head!10939 input!5745) (h!65666 input!5745))))

(assert (=> b!5119835 d!1654671))

(declare-fun b!5119985 () Bool)

(declare-fun e!3193195 () List!59342)

(assert (=> b!5119985 (= e!3193195 lt!2110773)))

(declare-fun b!5119987 () Bool)

(declare-fun res!2180077 () Bool)

(declare-fun e!3193194 () Bool)

(assert (=> b!5119987 (=> (not res!2180077) (not e!3193194))))

(declare-fun lt!2110863 () List!59342)

(assert (=> b!5119987 (= res!2180077 (= (size!39517 lt!2110863) (+ (size!39517 testedP!265) (size!39517 lt!2110773))))))

(declare-fun b!5119988 () Bool)

(assert (=> b!5119988 (= e!3193194 (or (not (= lt!2110773 Nil!59218)) (= lt!2110863 testedP!265)))))

(declare-fun b!5119986 () Bool)

(assert (=> b!5119986 (= e!3193195 (Cons!59218 (h!65666 testedP!265) (++!13036 (t!372359 testedP!265) lt!2110773)))))

(declare-fun d!1654673 () Bool)

(assert (=> d!1654673 e!3193194))

(declare-fun res!2180076 () Bool)

(assert (=> d!1654673 (=> (not res!2180076) (not e!3193194))))

(assert (=> d!1654673 (= res!2180076 (= (content!10530 lt!2110863) ((_ map or) (content!10530 testedP!265) (content!10530 lt!2110773))))))

(assert (=> d!1654673 (= lt!2110863 e!3193195)))

(declare-fun c!879838 () Bool)

(assert (=> d!1654673 (= c!879838 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654673 (= (++!13036 testedP!265 lt!2110773) lt!2110863)))

(assert (= (and d!1654673 c!879838) b!5119985))

(assert (= (and d!1654673 (not c!879838)) b!5119986))

(assert (= (and d!1654673 res!2180076) b!5119987))

(assert (= (and b!5119987 res!2180077) b!5119988))

(declare-fun m!6180782 () Bool)

(assert (=> b!5119987 m!6180782))

(assert (=> b!5119987 m!6180150))

(declare-fun m!6180784 () Bool)

(assert (=> b!5119987 m!6180784))

(declare-fun m!6180786 () Bool)

(assert (=> b!5119986 m!6180786))

(declare-fun m!6180788 () Bool)

(assert (=> d!1654673 m!6180788))

(assert (=> d!1654673 m!6180216))

(declare-fun m!6180790 () Bool)

(assert (=> d!1654673 m!6180790))

(assert (=> d!1654507 d!1654673))

(assert (=> d!1654507 d!1654457))

(assert (=> d!1654507 d!1654455))

(declare-fun d!1654675 () Bool)

(assert (=> d!1654675 (= (head!10939 testedP!265) (h!65666 testedP!265))))

(assert (=> b!5119749 d!1654675))

(assert (=> b!5119749 d!1654669))

(declare-fun b!5119992 () Bool)

(declare-fun e!3193198 () Bool)

(assert (=> b!5119992 (= e!3193198 (>= (size!39517 (tail!10076 input!5745)) (size!39517 (tail!10076 testedP!265))))))

(declare-fun d!1654677 () Bool)

(assert (=> d!1654677 e!3193198))

(declare-fun res!2180079 () Bool)

(assert (=> d!1654677 (=> res!2180079 e!3193198)))

(declare-fun lt!2110864 () Bool)

(assert (=> d!1654677 (= res!2180079 (not lt!2110864))))

(declare-fun e!3193196 () Bool)

(assert (=> d!1654677 (= lt!2110864 e!3193196)))

(declare-fun res!2180078 () Bool)

(assert (=> d!1654677 (=> res!2180078 e!3193196)))

(assert (=> d!1654677 (= res!2180078 ((_ is Nil!59218) (tail!10076 testedP!265)))))

(assert (=> d!1654677 (= (isPrefix!5616 (tail!10076 testedP!265) (tail!10076 input!5745)) lt!2110864)))

(declare-fun b!5119991 () Bool)

(declare-fun e!3193197 () Bool)

(assert (=> b!5119991 (= e!3193197 (isPrefix!5616 (tail!10076 (tail!10076 testedP!265)) (tail!10076 (tail!10076 input!5745))))))

(declare-fun b!5119989 () Bool)

(assert (=> b!5119989 (= e!3193196 e!3193197)))

(declare-fun res!2180080 () Bool)

(assert (=> b!5119989 (=> (not res!2180080) (not e!3193197))))

(assert (=> b!5119989 (= res!2180080 (not ((_ is Nil!59218) (tail!10076 input!5745))))))

(declare-fun b!5119990 () Bool)

(declare-fun res!2180081 () Bool)

(assert (=> b!5119990 (=> (not res!2180081) (not e!3193197))))

(assert (=> b!5119990 (= res!2180081 (= (head!10939 (tail!10076 testedP!265)) (head!10939 (tail!10076 input!5745))))))

(assert (= (and d!1654677 (not res!2180078)) b!5119989))

(assert (= (and b!5119989 res!2180080) b!5119990))

(assert (= (and b!5119990 res!2180081) b!5119991))

(assert (= (and d!1654677 (not res!2180079)) b!5119992))

(assert (=> b!5119992 m!6180252))

(assert (=> b!5119992 m!6180752))

(assert (=> b!5119992 m!6180376))

(declare-fun m!6180792 () Bool)

(assert (=> b!5119992 m!6180792))

(assert (=> b!5119991 m!6180376))

(declare-fun m!6180794 () Bool)

(assert (=> b!5119991 m!6180794))

(assert (=> b!5119991 m!6180252))

(assert (=> b!5119991 m!6180758))

(assert (=> b!5119991 m!6180794))

(assert (=> b!5119991 m!6180758))

(declare-fun m!6180796 () Bool)

(assert (=> b!5119991 m!6180796))

(assert (=> b!5119990 m!6180376))

(declare-fun m!6180798 () Bool)

(assert (=> b!5119990 m!6180798))

(assert (=> b!5119990 m!6180252))

(assert (=> b!5119990 m!6180764))

(assert (=> b!5119764 d!1654677))

(declare-fun d!1654679 () Bool)

(assert (=> d!1654679 (= (tail!10076 testedP!265) (t!372359 testedP!265))))

(assert (=> b!5119764 d!1654679))

(assert (=> b!5119764 d!1654659))

(declare-fun d!1654681 () Bool)

(declare-fun lt!2110865 () Int)

(assert (=> d!1654681 (>= lt!2110865 0)))

(declare-fun e!3193199 () Int)

(assert (=> d!1654681 (= lt!2110865 e!3193199)))

(declare-fun c!879839 () Bool)

(assert (=> d!1654681 (= c!879839 ((_ is Nil!59218) lt!2110721))))

(assert (=> d!1654681 (= (size!39517 lt!2110721) lt!2110865)))

(declare-fun b!5119993 () Bool)

(assert (=> b!5119993 (= e!3193199 0)))

(declare-fun b!5119994 () Bool)

(assert (=> b!5119994 (= e!3193199 (+ 1 (size!39517 (t!372359 lt!2110721))))))

(assert (= (and d!1654681 c!879839) b!5119993))

(assert (= (and d!1654681 (not c!879839)) b!5119994))

(declare-fun m!6180800 () Bool)

(assert (=> b!5119994 m!6180800))

(assert (=> b!5119664 d!1654681))

(assert (=> b!5119664 d!1654455))

(declare-fun d!1654683 () Bool)

(declare-fun lt!2110866 () Int)

(assert (=> d!1654683 (>= lt!2110866 0)))

(declare-fun e!3193200 () Int)

(assert (=> d!1654683 (= lt!2110866 e!3193200)))

(declare-fun c!879840 () Bool)

(assert (=> d!1654683 (= c!879840 ((_ is Nil!59218) lt!2110700))))

(assert (=> d!1654683 (= (size!39517 lt!2110700) lt!2110866)))

(declare-fun b!5119995 () Bool)

(assert (=> b!5119995 (= e!3193200 0)))

(declare-fun b!5119996 () Bool)

(assert (=> b!5119996 (= e!3193200 (+ 1 (size!39517 (t!372359 lt!2110700))))))

(assert (= (and d!1654683 c!879840) b!5119995))

(assert (= (and d!1654683 (not c!879840)) b!5119996))

(declare-fun m!6180802 () Bool)

(assert (=> b!5119996 m!6180802))

(assert (=> b!5119664 d!1654683))

(declare-fun d!1654685 () Bool)

(assert (=> d!1654685 (= (isEmpty!31937 (getLanguageWitness!815 z!4463)) (not ((_ is Some!14697) (getLanguageWitness!815 z!4463))))))

(assert (=> d!1654543 d!1654685))

(declare-fun bs!1192641 () Bool)

(declare-fun d!1654687 () Bool)

(assert (= bs!1192641 (and d!1654687 d!1654667)))

(declare-fun lambda!251275 () Int)

(assert (=> bs!1192641 (not (= lambda!251275 lambda!251268))))

(declare-fun bs!1192642 () Bool)

(assert (= bs!1192642 (and d!1654687 d!1654613)))

(assert (=> bs!1192642 (not (= lambda!251275 lambda!251265))))

(declare-fun bs!1192643 () Bool)

(assert (= bs!1192643 (and d!1654687 b!5119816)))

(assert (=> bs!1192643 (= lambda!251275 lambda!251257)))

(declare-fun bs!1192644 () Bool)

(assert (= bs!1192644 (and d!1654687 b!5119817)))

(assert (=> bs!1192644 (= lambda!251275 lambda!251258)))

(declare-fun bs!1192645 () Bool)

(assert (= bs!1192645 (and d!1654687 d!1654543)))

(assert (=> bs!1192645 (not (= lambda!251275 lambda!251256))))

(declare-fun lt!2110869 () Option!14698)

(declare-fun isDefined!11509 (Option!14698) Bool)

(assert (=> d!1654687 (= (isDefined!11509 lt!2110869) (exists!1476 z!4463 lambda!251275))))

(declare-fun e!3193203 () Option!14698)

(assert (=> d!1654687 (= lt!2110869 e!3193203)))

(declare-fun c!879849 () Bool)

(assert (=> d!1654687 (= c!879849 (exists!1476 z!4463 lambda!251275))))

(assert (=> d!1654687 (= (getLanguageWitness!815 z!4463) lt!2110869)))

(declare-fun b!5120001 () Bool)

(declare-fun getLanguageWitness!816 (Context!7190) Option!14698)

(declare-fun getWitness!670 ((InoxSet Context!7190) Int) Context!7190)

(assert (=> b!5120001 (= e!3193203 (getLanguageWitness!816 (getWitness!670 z!4463 lambda!251275)))))

(declare-fun b!5120002 () Bool)

(assert (=> b!5120002 (= e!3193203 None!14697)))

(assert (= (and d!1654687 c!879849) b!5120001))

(assert (= (and d!1654687 (not c!879849)) b!5120002))

(declare-fun m!6180804 () Bool)

(assert (=> d!1654687 m!6180804))

(declare-fun m!6180806 () Bool)

(assert (=> d!1654687 m!6180806))

(assert (=> d!1654687 m!6180806))

(declare-fun m!6180808 () Bool)

(assert (=> b!5120001 m!6180808))

(assert (=> b!5120001 m!6180808))

(declare-fun m!6180810 () Bool)

(assert (=> b!5120001 m!6180810))

(assert (=> d!1654543 d!1654687))

(declare-fun d!1654689 () Bool)

(declare-fun lt!2110872 () Bool)

(declare-fun forall!13613 (List!59344 Int) Bool)

(assert (=> d!1654689 (= lt!2110872 (forall!13613 (toList!8264 z!4463) lambda!251256))))

(declare-fun choose!37639 ((InoxSet Context!7190) Int) Bool)

(assert (=> d!1654689 (= lt!2110872 (choose!37639 z!4463 lambda!251256))))

(assert (=> d!1654689 (= (forall!13612 z!4463 lambda!251256) lt!2110872)))

(declare-fun bs!1192646 () Bool)

(assert (= bs!1192646 d!1654689))

(assert (=> bs!1192646 m!6180502))

(assert (=> bs!1192646 m!6180502))

(declare-fun m!6180812 () Bool)

(assert (=> bs!1192646 m!6180812))

(declare-fun m!6180814 () Bool)

(assert (=> bs!1192646 m!6180814))

(assert (=> d!1654543 d!1654689))

(declare-fun d!1654691 () Bool)

(declare-fun lt!2110873 () Int)

(assert (=> d!1654691 (>= lt!2110873 0)))

(declare-fun e!3193204 () Int)

(assert (=> d!1654691 (= lt!2110873 e!3193204)))

(declare-fun c!879850 () Bool)

(assert (=> d!1654691 (= c!879850 ((_ is Nil!59218) lt!2110827))))

(assert (=> d!1654691 (= (size!39517 lt!2110827) lt!2110873)))

(declare-fun b!5120003 () Bool)

(assert (=> b!5120003 (= e!3193204 0)))

(declare-fun b!5120004 () Bool)

(assert (=> b!5120004 (= e!3193204 (+ 1 (size!39517 (t!372359 lt!2110827))))))

(assert (= (and d!1654691 c!879850) b!5120003))

(assert (= (and d!1654691 (not c!879850)) b!5120004))

(declare-fun m!6180816 () Bool)

(assert (=> b!5120004 m!6180816))

(assert (=> b!5119824 d!1654691))

(declare-fun d!1654693 () Bool)

(declare-fun lt!2110874 () Int)

(assert (=> d!1654693 (>= lt!2110874 0)))

(declare-fun e!3193205 () Int)

(assert (=> d!1654693 (= lt!2110874 e!3193205)))

(declare-fun c!879851 () Bool)

(assert (=> d!1654693 (= c!879851 ((_ is Nil!59218) lt!2110694))))

(assert (=> d!1654693 (= (size!39517 lt!2110694) lt!2110874)))

(declare-fun b!5120005 () Bool)

(assert (=> b!5120005 (= e!3193205 0)))

(declare-fun b!5120006 () Bool)

(assert (=> b!5120006 (= e!3193205 (+ 1 (size!39517 (t!372359 lt!2110694))))))

(assert (= (and d!1654693 c!879851) b!5120005))

(assert (= (and d!1654693 (not c!879851)) b!5120006))

(declare-fun m!6180818 () Bool)

(assert (=> b!5120006 m!6180818))

(assert (=> b!5119824 d!1654693))

(declare-fun d!1654695 () Bool)

(declare-fun lt!2110875 () Int)

(assert (=> d!1654695 (>= lt!2110875 0)))

(declare-fun e!3193206 () Int)

(assert (=> d!1654695 (= lt!2110875 e!3193206)))

(declare-fun c!879852 () Bool)

(assert (=> d!1654695 (= c!879852 ((_ is Nil!59218) lt!2110697))))

(assert (=> d!1654695 (= (size!39517 lt!2110697) lt!2110875)))

(declare-fun b!5120007 () Bool)

(assert (=> b!5120007 (= e!3193206 0)))

(declare-fun b!5120008 () Bool)

(assert (=> b!5120008 (= e!3193206 (+ 1 (size!39517 (t!372359 lt!2110697))))))

(assert (= (and d!1654695 c!879852) b!5120007))

(assert (= (and d!1654695 (not c!879852)) b!5120008))

(declare-fun m!6180820 () Bool)

(assert (=> b!5120008 m!6180820))

(assert (=> b!5119824 d!1654695))

(assert (=> d!1654511 d!1654509))

(declare-fun d!1654697 () Bool)

(assert (=> d!1654697 (isPrefix!5616 testedP!265 knownP!20)))

(assert (=> d!1654697 true))

(declare-fun _$69!349 () Unit!150357)

(assert (=> d!1654697 (= (choose!37631 knownP!20 testedP!265 input!5745) _$69!349)))

(declare-fun bs!1192647 () Bool)

(assert (= bs!1192647 d!1654697))

(assert (=> bs!1192647 m!6180176))

(assert (=> d!1654511 d!1654697))

(assert (=> d!1654511 d!1654571))

(declare-fun b!5120009 () Bool)

(declare-fun e!3193208 () List!59342)

(assert (=> b!5120009 (= e!3193208 lt!2110690)))

(declare-fun b!5120011 () Bool)

(declare-fun res!2180083 () Bool)

(declare-fun e!3193207 () Bool)

(assert (=> b!5120011 (=> (not res!2180083) (not e!3193207))))

(declare-fun lt!2110876 () List!59342)

(assert (=> b!5120011 (= res!2180083 (= (size!39517 lt!2110876) (+ (size!39517 (t!372359 lt!2110688)) (size!39517 lt!2110690))))))

(declare-fun b!5120012 () Bool)

(assert (=> b!5120012 (= e!3193207 (or (not (= lt!2110690 Nil!59218)) (= lt!2110876 (t!372359 lt!2110688))))))

(declare-fun b!5120010 () Bool)

(assert (=> b!5120010 (= e!3193208 (Cons!59218 (h!65666 (t!372359 lt!2110688)) (++!13036 (t!372359 (t!372359 lt!2110688)) lt!2110690)))))

(declare-fun d!1654699 () Bool)

(assert (=> d!1654699 e!3193207))

(declare-fun res!2180082 () Bool)

(assert (=> d!1654699 (=> (not res!2180082) (not e!3193207))))

(assert (=> d!1654699 (= res!2180082 (= (content!10530 lt!2110876) ((_ map or) (content!10530 (t!372359 lt!2110688)) (content!10530 lt!2110690))))))

(assert (=> d!1654699 (= lt!2110876 e!3193208)))

(declare-fun c!879853 () Bool)

(assert (=> d!1654699 (= c!879853 ((_ is Nil!59218) (t!372359 lt!2110688)))))

(assert (=> d!1654699 (= (++!13036 (t!372359 lt!2110688) lt!2110690) lt!2110876)))

(assert (= (and d!1654699 c!879853) b!5120009))

(assert (= (and d!1654699 (not c!879853)) b!5120010))

(assert (= (and d!1654699 res!2180082) b!5120011))

(assert (= (and b!5120011 res!2180083) b!5120012))

(declare-fun m!6180822 () Bool)

(assert (=> b!5120011 m!6180822))

(declare-fun m!6180824 () Bool)

(assert (=> b!5120011 m!6180824))

(assert (=> b!5120011 m!6180392))

(declare-fun m!6180826 () Bool)

(assert (=> b!5120010 m!6180826))

(declare-fun m!6180828 () Bool)

(assert (=> d!1654699 m!6180828))

(assert (=> d!1654699 m!6180728))

(assert (=> d!1654699 m!6180400))

(assert (=> b!5119755 d!1654699))

(declare-fun d!1654701 () Bool)

(declare-fun lt!2110877 () Int)

(assert (=> d!1654701 (>= lt!2110877 0)))

(declare-fun e!3193209 () Int)

(assert (=> d!1654701 (= lt!2110877 e!3193209)))

(declare-fun c!879854 () Bool)

(assert (=> d!1654701 (= c!879854 ((_ is Nil!59218) lt!2110726))))

(assert (=> d!1654701 (= (size!39517 lt!2110726) lt!2110877)))

(declare-fun b!5120013 () Bool)

(assert (=> b!5120013 (= e!3193209 0)))

(declare-fun b!5120014 () Bool)

(assert (=> b!5120014 (= e!3193209 (+ 1 (size!39517 (t!372359 lt!2110726))))))

(assert (= (and d!1654701 c!879854) b!5120013))

(assert (= (and d!1654701 (not c!879854)) b!5120014))

(declare-fun m!6180830 () Bool)

(assert (=> b!5120014 m!6180830))

(assert (=> b!5119672 d!1654701))

(assert (=> b!5119672 d!1654455))

(declare-fun d!1654703 () Bool)

(declare-fun lt!2110878 () Int)

(assert (=> d!1654703 (>= lt!2110878 0)))

(declare-fun e!3193210 () Int)

(assert (=> d!1654703 (= lt!2110878 e!3193210)))

(declare-fun c!879855 () Bool)

(assert (=> d!1654703 (= c!879855 ((_ is Nil!59218) lt!2110704))))

(assert (=> d!1654703 (= (size!39517 lt!2110704) lt!2110878)))

(declare-fun b!5120015 () Bool)

(assert (=> b!5120015 (= e!3193210 0)))

(declare-fun b!5120016 () Bool)

(assert (=> b!5120016 (= e!3193210 (+ 1 (size!39517 (t!372359 lt!2110704))))))

(assert (= (and d!1654703 c!879855) b!5120015))

(assert (= (and d!1654703 (not c!879855)) b!5120016))

(declare-fun m!6180832 () Bool)

(assert (=> b!5120016 m!6180832))

(assert (=> b!5119672 d!1654703))

(declare-fun d!1654705 () Bool)

(assert (=> d!1654705 (= (head!10939 lt!2110688) (h!65666 lt!2110688))))

(assert (=> b!5119715 d!1654705))

(assert (=> b!5119715 d!1654671))

(declare-fun b!5120017 () Bool)

(declare-fun e!3193212 () List!59342)

(assert (=> b!5120017 (= e!3193212 lt!2110697)))

(declare-fun b!5120019 () Bool)

(declare-fun res!2180085 () Bool)

(declare-fun e!3193211 () Bool)

(assert (=> b!5120019 (=> (not res!2180085) (not e!3193211))))

(declare-fun lt!2110879 () List!59342)

(assert (=> b!5120019 (= res!2180085 (= (size!39517 lt!2110879) (+ (size!39517 (t!372359 lt!2110705)) (size!39517 lt!2110697))))))

(declare-fun b!5120020 () Bool)

(assert (=> b!5120020 (= e!3193211 (or (not (= lt!2110697 Nil!59218)) (= lt!2110879 (t!372359 lt!2110705))))))

(declare-fun b!5120018 () Bool)

(assert (=> b!5120018 (= e!3193212 (Cons!59218 (h!65666 (t!372359 lt!2110705)) (++!13036 (t!372359 (t!372359 lt!2110705)) lt!2110697)))))

(declare-fun d!1654707 () Bool)

(assert (=> d!1654707 e!3193211))

(declare-fun res!2180084 () Bool)

(assert (=> d!1654707 (=> (not res!2180084) (not e!3193211))))

(assert (=> d!1654707 (= res!2180084 (= (content!10530 lt!2110879) ((_ map or) (content!10530 (t!372359 lt!2110705)) (content!10530 lt!2110697))))))

(assert (=> d!1654707 (= lt!2110879 e!3193212)))

(declare-fun c!879856 () Bool)

(assert (=> d!1654707 (= c!879856 ((_ is Nil!59218) (t!372359 lt!2110705)))))

(assert (=> d!1654707 (= (++!13036 (t!372359 lt!2110705) lt!2110697) lt!2110879)))

(assert (= (and d!1654707 c!879856) b!5120017))

(assert (= (and d!1654707 (not c!879856)) b!5120018))

(assert (= (and d!1654707 res!2180084) b!5120019))

(assert (= (and b!5120019 res!2180085) b!5120020))

(declare-fun m!6180834 () Bool)

(assert (=> b!5120019 m!6180834))

(declare-fun m!6180836 () Bool)

(assert (=> b!5120019 m!6180836))

(assert (=> b!5120019 m!6180224))

(declare-fun m!6180838 () Bool)

(assert (=> b!5120018 m!6180838))

(declare-fun m!6180840 () Bool)

(assert (=> d!1654707 m!6180840))

(declare-fun m!6180842 () Bool)

(assert (=> d!1654707 m!6180842))

(assert (=> d!1654707 m!6180232))

(assert (=> b!5119667 d!1654707))

(declare-fun d!1654709 () Bool)

(declare-fun lt!2110880 () Int)

(assert (=> d!1654709 (>= lt!2110880 0)))

(declare-fun e!3193213 () Int)

(assert (=> d!1654709 (= lt!2110880 e!3193213)))

(declare-fun c!879857 () Bool)

(assert (=> d!1654709 (= c!879857 ((_ is Nil!59218) lt!2110770))))

(assert (=> d!1654709 (= (size!39517 lt!2110770) lt!2110880)))

(declare-fun b!5120021 () Bool)

(assert (=> b!5120021 (= e!3193213 0)))

(declare-fun b!5120022 () Bool)

(assert (=> b!5120022 (= e!3193213 (+ 1 (size!39517 (t!372359 lt!2110770))))))

(assert (= (and d!1654709 c!879857) b!5120021))

(assert (= (and d!1654709 (not c!879857)) b!5120022))

(declare-fun m!6180844 () Bool)

(assert (=> b!5120022 m!6180844))

(assert (=> b!5119722 d!1654709))

(assert (=> b!5119722 d!1654455))

(declare-fun d!1654711 () Bool)

(declare-fun lt!2110881 () Int)

(assert (=> d!1654711 (>= lt!2110881 0)))

(declare-fun e!3193214 () Int)

(assert (=> d!1654711 (= lt!2110881 e!3193214)))

(declare-fun c!879858 () Bool)

(assert (=> d!1654711 (= c!879858 ((_ is Nil!59218) lt!2110702))))

(assert (=> d!1654711 (= (size!39517 lt!2110702) lt!2110881)))

(declare-fun b!5120023 () Bool)

(assert (=> b!5120023 (= e!3193214 0)))

(declare-fun b!5120024 () Bool)

(assert (=> b!5120024 (= e!3193214 (+ 1 (size!39517 (t!372359 lt!2110702))))))

(assert (= (and d!1654711 c!879858) b!5120023))

(assert (= (and d!1654711 (not c!879858)) b!5120024))

(assert (=> b!5120024 m!6180706))

(assert (=> b!5119722 d!1654711))

(declare-fun b!5120025 () Bool)

(declare-fun e!3193216 () List!59342)

(assert (=> b!5120025 (= e!3193216 lt!2110729)))

(declare-fun b!5120027 () Bool)

(declare-fun res!2180087 () Bool)

(declare-fun e!3193215 () Bool)

(assert (=> b!5120027 (=> (not res!2180087) (not e!3193215))))

(declare-fun lt!2110882 () List!59342)

(assert (=> b!5120027 (= res!2180087 (= (size!39517 lt!2110882) (+ (size!39517 testedP!265) (size!39517 lt!2110729))))))

(declare-fun b!5120028 () Bool)

(assert (=> b!5120028 (= e!3193215 (or (not (= lt!2110729 Nil!59218)) (= lt!2110882 testedP!265)))))

(declare-fun b!5120026 () Bool)

(assert (=> b!5120026 (= e!3193216 (Cons!59218 (h!65666 testedP!265) (++!13036 (t!372359 testedP!265) lt!2110729)))))

(declare-fun d!1654713 () Bool)

(assert (=> d!1654713 e!3193215))

(declare-fun res!2180086 () Bool)

(assert (=> d!1654713 (=> (not res!2180086) (not e!3193215))))

(assert (=> d!1654713 (= res!2180086 (= (content!10530 lt!2110882) ((_ map or) (content!10530 testedP!265) (content!10530 lt!2110729))))))

(assert (=> d!1654713 (= lt!2110882 e!3193216)))

(declare-fun c!879859 () Bool)

(assert (=> d!1654713 (= c!879859 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654713 (= (++!13036 testedP!265 lt!2110729) lt!2110882)))

(assert (= (and d!1654713 c!879859) b!5120025))

(assert (= (and d!1654713 (not c!879859)) b!5120026))

(assert (= (and d!1654713 res!2180086) b!5120027))

(assert (= (and b!5120027 res!2180087) b!5120028))

(declare-fun m!6180846 () Bool)

(assert (=> b!5120027 m!6180846))

(assert (=> b!5120027 m!6180150))

(declare-fun m!6180848 () Bool)

(assert (=> b!5120027 m!6180848))

(declare-fun m!6180850 () Bool)

(assert (=> b!5120026 m!6180850))

(declare-fun m!6180852 () Bool)

(assert (=> d!1654713 m!6180852))

(assert (=> d!1654713 m!6180216))

(declare-fun m!6180854 () Bool)

(assert (=> d!1654713 m!6180854))

(assert (=> d!1654467 d!1654713))

(assert (=> d!1654467 d!1654449))

(assert (=> d!1654467 d!1654455))

(declare-fun d!1654715 () Bool)

(declare-fun c!879860 () Bool)

(assert (=> d!1654715 (= c!879860 ((_ is Nil!59218) lt!2110722))))

(declare-fun e!3193217 () (InoxSet C!28688))

(assert (=> d!1654715 (= (content!10530 lt!2110722) e!3193217)))

(declare-fun b!5120029 () Bool)

(assert (=> b!5120029 (= e!3193217 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120030 () Bool)

(assert (=> b!5120030 (= e!3193217 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110722) true) (content!10530 (t!372359 lt!2110722))))))

(assert (= (and d!1654715 c!879860) b!5120029))

(assert (= (and d!1654715 (not c!879860)) b!5120030))

(declare-fun m!6180856 () Bool)

(assert (=> b!5120030 m!6180856))

(declare-fun m!6180858 () Bool)

(assert (=> b!5120030 m!6180858))

(assert (=> d!1654461 d!1654715))

(declare-fun d!1654717 () Bool)

(declare-fun c!879861 () Bool)

(assert (=> d!1654717 (= c!879861 ((_ is Nil!59218) lt!2110705))))

(declare-fun e!3193218 () (InoxSet C!28688))

(assert (=> d!1654717 (= (content!10530 lt!2110705) e!3193218)))

(declare-fun b!5120031 () Bool)

(assert (=> b!5120031 (= e!3193218 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120032 () Bool)

(assert (=> b!5120032 (= e!3193218 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110705) true) (content!10530 (t!372359 lt!2110705))))))

(assert (= (and d!1654717 c!879861) b!5120031))

(assert (= (and d!1654717 (not c!879861)) b!5120032))

(declare-fun m!6180860 () Bool)

(assert (=> b!5120032 m!6180860))

(assert (=> b!5120032 m!6180842))

(assert (=> d!1654461 d!1654717))

(declare-fun d!1654719 () Bool)

(declare-fun c!879862 () Bool)

(assert (=> d!1654719 (= c!879862 ((_ is Nil!59218) lt!2110697))))

(declare-fun e!3193219 () (InoxSet C!28688))

(assert (=> d!1654719 (= (content!10530 lt!2110697) e!3193219)))

(declare-fun b!5120033 () Bool)

(assert (=> b!5120033 (= e!3193219 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120034 () Bool)

(assert (=> b!5120034 (= e!3193219 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110697) true) (content!10530 (t!372359 lt!2110697))))))

(assert (= (and d!1654719 c!879862) b!5120033))

(assert (= (and d!1654719 (not c!879862)) b!5120034))

(declare-fun m!6180862 () Bool)

(assert (=> b!5120034 m!6180862))

(declare-fun m!6180864 () Bool)

(assert (=> b!5120034 m!6180864))

(assert (=> d!1654461 d!1654719))

(declare-fun d!1654721 () Bool)

(declare-fun lt!2110883 () Int)

(assert (=> d!1654721 (>= lt!2110883 0)))

(declare-fun e!3193220 () Int)

(assert (=> d!1654721 (= lt!2110883 e!3193220)))

(declare-fun c!879863 () Bool)

(assert (=> d!1654721 (= c!879863 ((_ is Nil!59218) (t!372359 testedP!265)))))

(assert (=> d!1654721 (= (size!39517 (t!372359 testedP!265)) lt!2110883)))

(declare-fun b!5120035 () Bool)

(assert (=> b!5120035 (= e!3193220 0)))

(declare-fun b!5120036 () Bool)

(assert (=> b!5120036 (= e!3193220 (+ 1 (size!39517 (t!372359 (t!372359 testedP!265)))))))

(assert (= (and d!1654721 c!879863) b!5120035))

(assert (= (and d!1654721 (not c!879863)) b!5120036))

(declare-fun m!6180866 () Bool)

(assert (=> b!5120036 m!6180866))

(assert (=> b!5119651 d!1654721))

(declare-fun b!5120037 () Bool)

(declare-fun e!3193222 () List!59342)

(assert (=> b!5120037 (= e!3193222 lt!2110769)))

(declare-fun b!5120039 () Bool)

(declare-fun res!2180089 () Bool)

(declare-fun e!3193221 () Bool)

(assert (=> b!5120039 (=> (not res!2180089) (not e!3193221))))

(declare-fun lt!2110884 () List!59342)

(assert (=> b!5120039 (= res!2180089 (= (size!39517 lt!2110884) (+ (size!39517 lt!2110688) (size!39517 lt!2110769))))))

(declare-fun b!5120040 () Bool)

(assert (=> b!5120040 (= e!3193221 (or (not (= lt!2110769 Nil!59218)) (= lt!2110884 lt!2110688)))))

(declare-fun b!5120038 () Bool)

(assert (=> b!5120038 (= e!3193222 (Cons!59218 (h!65666 lt!2110688) (++!13036 (t!372359 lt!2110688) lt!2110769)))))

(declare-fun d!1654723 () Bool)

(assert (=> d!1654723 e!3193221))

(declare-fun res!2180088 () Bool)

(assert (=> d!1654723 (=> (not res!2180088) (not e!3193221))))

(assert (=> d!1654723 (= res!2180088 (= (content!10530 lt!2110884) ((_ map or) (content!10530 lt!2110688) (content!10530 lt!2110769))))))

(assert (=> d!1654723 (= lt!2110884 e!3193222)))

(declare-fun c!879864 () Bool)

(assert (=> d!1654723 (= c!879864 ((_ is Nil!59218) lt!2110688))))

(assert (=> d!1654723 (= (++!13036 lt!2110688 lt!2110769) lt!2110884)))

(assert (= (and d!1654723 c!879864) b!5120037))

(assert (= (and d!1654723 (not c!879864)) b!5120038))

(assert (= (and d!1654723 res!2180088) b!5120039))

(assert (= (and b!5120039 res!2180089) b!5120040))

(declare-fun m!6180868 () Bool)

(assert (=> b!5120039 m!6180868))

(assert (=> b!5120039 m!6180316))

(declare-fun m!6180870 () Bool)

(assert (=> b!5120039 m!6180870))

(declare-fun m!6180872 () Bool)

(assert (=> b!5120038 m!6180872))

(declare-fun m!6180874 () Bool)

(assert (=> d!1654723 m!6180874))

(assert (=> d!1654723 m!6180398))

(declare-fun m!6180876 () Bool)

(assert (=> d!1654723 m!6180876))

(assert (=> d!1654491 d!1654723))

(assert (=> d!1654491 d!1654457))

(declare-fun d!1654725 () Bool)

(declare-fun lt!2110885 () Int)

(assert (=> d!1654725 (>= lt!2110885 0)))

(declare-fun e!3193223 () Int)

(assert (=> d!1654725 (= lt!2110885 e!3193223)))

(declare-fun c!879865 () Bool)

(assert (=> d!1654725 (= c!879865 ((_ is Nil!59218) lt!2110688))))

(assert (=> d!1654725 (= (size!39517 lt!2110688) lt!2110885)))

(declare-fun b!5120041 () Bool)

(assert (=> b!5120041 (= e!3193223 0)))

(declare-fun b!5120042 () Bool)

(assert (=> b!5120042 (= e!3193223 (+ 1 (size!39517 (t!372359 lt!2110688))))))

(assert (= (and d!1654725 c!879865) b!5120041))

(assert (= (and d!1654725 (not c!879865)) b!5120042))

(assert (=> b!5120042 m!6180824))

(assert (=> d!1654491 d!1654725))

(declare-fun b!5120046 () Bool)

(declare-fun e!3193226 () Bool)

(assert (=> b!5120046 (= e!3193226 (>= (size!39517 (tail!10076 input!5745)) (size!39517 (tail!10076 knownP!20))))))

(declare-fun d!1654727 () Bool)

(assert (=> d!1654727 e!3193226))

(declare-fun res!2180091 () Bool)

(assert (=> d!1654727 (=> res!2180091 e!3193226)))

(declare-fun lt!2110886 () Bool)

(assert (=> d!1654727 (= res!2180091 (not lt!2110886))))

(declare-fun e!3193224 () Bool)

(assert (=> d!1654727 (= lt!2110886 e!3193224)))

(declare-fun res!2180090 () Bool)

(assert (=> d!1654727 (=> res!2180090 e!3193224)))

(assert (=> d!1654727 (= res!2180090 ((_ is Nil!59218) (tail!10076 knownP!20)))))

(assert (=> d!1654727 (= (isPrefix!5616 (tail!10076 knownP!20) (tail!10076 input!5745)) lt!2110886)))

(declare-fun b!5120045 () Bool)

(declare-fun e!3193225 () Bool)

(assert (=> b!5120045 (= e!3193225 (isPrefix!5616 (tail!10076 (tail!10076 knownP!20)) (tail!10076 (tail!10076 input!5745))))))

(declare-fun b!5120043 () Bool)

(assert (=> b!5120043 (= e!3193224 e!3193225)))

(declare-fun res!2180092 () Bool)

(assert (=> b!5120043 (=> (not res!2180092) (not e!3193225))))

(assert (=> b!5120043 (= res!2180092 (not ((_ is Nil!59218) (tail!10076 input!5745))))))

(declare-fun b!5120044 () Bool)

(declare-fun res!2180093 () Bool)

(assert (=> b!5120044 (=> (not res!2180093) (not e!3193225))))

(assert (=> b!5120044 (= res!2180093 (= (head!10939 (tail!10076 knownP!20)) (head!10939 (tail!10076 input!5745))))))

(assert (= (and d!1654727 (not res!2180090)) b!5120043))

(assert (= (and b!5120043 res!2180092) b!5120044))

(assert (= (and b!5120044 res!2180093) b!5120045))

(assert (= (and d!1654727 (not res!2180091)) b!5120046))

(assert (=> b!5120046 m!6180252))

(assert (=> b!5120046 m!6180752))

(assert (=> b!5120046 m!6180330))

(assert (=> b!5120046 m!6180716))

(assert (=> b!5120045 m!6180330))

(assert (=> b!5120045 m!6180718))

(assert (=> b!5120045 m!6180252))

(assert (=> b!5120045 m!6180758))

(assert (=> b!5120045 m!6180718))

(assert (=> b!5120045 m!6180758))

(declare-fun m!6180878 () Bool)

(assert (=> b!5120045 m!6180878))

(assert (=> b!5120044 m!6180330))

(assert (=> b!5120044 m!6180778))

(assert (=> b!5120044 m!6180252))

(assert (=> b!5120044 m!6180764))

(assert (=> b!5119836 d!1654727))

(assert (=> b!5119836 d!1654637))

(assert (=> b!5119836 d!1654659))

(declare-fun d!1654729 () Bool)

(declare-fun c!879866 () Bool)

(assert (=> d!1654729 (= c!879866 (isEmpty!31936 (tail!10076 knownP!20)))))

(declare-fun e!3193227 () Bool)

(assert (=> d!1654729 (= (matchZipper!879 (derivationStepZipper!846 baseZ!46 (head!10939 knownP!20)) (tail!10076 knownP!20)) e!3193227)))

(declare-fun b!5120047 () Bool)

(assert (=> b!5120047 (= e!3193227 (nullableZipper!1028 (derivationStepZipper!846 baseZ!46 (head!10939 knownP!20))))))

(declare-fun b!5120048 () Bool)

(assert (=> b!5120048 (= e!3193227 (matchZipper!879 (derivationStepZipper!846 (derivationStepZipper!846 baseZ!46 (head!10939 knownP!20)) (head!10939 (tail!10076 knownP!20))) (tail!10076 (tail!10076 knownP!20))))))

(assert (= (and d!1654729 c!879866) b!5120047))

(assert (= (and d!1654729 (not c!879866)) b!5120048))

(assert (=> d!1654729 m!6180330))

(declare-fun m!6180880 () Bool)

(assert (=> d!1654729 m!6180880))

(assert (=> b!5120047 m!6180430))

(declare-fun m!6180882 () Bool)

(assert (=> b!5120047 m!6180882))

(assert (=> b!5120048 m!6180330))

(assert (=> b!5120048 m!6180778))

(assert (=> b!5120048 m!6180430))

(assert (=> b!5120048 m!6180778))

(declare-fun m!6180884 () Bool)

(assert (=> b!5120048 m!6180884))

(assert (=> b!5120048 m!6180330))

(assert (=> b!5120048 m!6180718))

(assert (=> b!5120048 m!6180884))

(assert (=> b!5120048 m!6180718))

(declare-fun m!6180886 () Bool)

(assert (=> b!5120048 m!6180886))

(assert (=> b!5119771 d!1654729))

(declare-fun bs!1192648 () Bool)

(declare-fun d!1654731 () Bool)

(assert (= bs!1192648 (and d!1654731 d!1654471)))

(declare-fun lambda!251276 () Int)

(assert (=> bs!1192648 (= (= (head!10939 knownP!20) lt!2110701) (= lambda!251276 lambda!251239))))

(declare-fun bs!1192649 () Bool)

(assert (= bs!1192649 (and d!1654731 d!1654617)))

(assert (=> bs!1192649 (= (= (head!10939 knownP!20) (h!65666 lt!2110688)) (= lambda!251276 lambda!251266))))

(assert (=> d!1654731 true))

(assert (=> d!1654731 (= (derivationStepZipper!846 baseZ!46 (head!10939 knownP!20)) (flatMap!358 baseZ!46 lambda!251276))))

(declare-fun bs!1192650 () Bool)

(assert (= bs!1192650 d!1654731))

(declare-fun m!6180888 () Bool)

(assert (=> bs!1192650 m!6180888))

(assert (=> b!5119771 d!1654731))

(assert (=> b!5119771 d!1654669))

(assert (=> b!5119771 d!1654637))

(declare-fun d!1654733 () Bool)

(declare-fun c!879867 () Bool)

(assert (=> d!1654733 (= c!879867 ((_ is Nil!59218) lt!2110827))))

(declare-fun e!3193228 () (InoxSet C!28688))

(assert (=> d!1654733 (= (content!10530 lt!2110827) e!3193228)))

(declare-fun b!5120049 () Bool)

(assert (=> b!5120049 (= e!3193228 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120050 () Bool)

(assert (=> b!5120050 (= e!3193228 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110827) true) (content!10530 (t!372359 lt!2110827))))))

(assert (= (and d!1654733 c!879867) b!5120049))

(assert (= (and d!1654733 (not c!879867)) b!5120050))

(declare-fun m!6180890 () Bool)

(assert (=> b!5120050 m!6180890))

(declare-fun m!6180892 () Bool)

(assert (=> b!5120050 m!6180892))

(assert (=> d!1654561 d!1654733))

(declare-fun d!1654735 () Bool)

(declare-fun c!879868 () Bool)

(assert (=> d!1654735 (= c!879868 ((_ is Nil!59218) lt!2110694))))

(declare-fun e!3193229 () (InoxSet C!28688))

(assert (=> d!1654735 (= (content!10530 lt!2110694) e!3193229)))

(declare-fun b!5120051 () Bool)

(assert (=> b!5120051 (= e!3193229 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120052 () Bool)

(assert (=> b!5120052 (= e!3193229 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110694) true) (content!10530 (t!372359 lt!2110694))))))

(assert (= (and d!1654735 c!879868) b!5120051))

(assert (= (and d!1654735 (not c!879868)) b!5120052))

(declare-fun m!6180894 () Bool)

(assert (=> b!5120052 m!6180894))

(declare-fun m!6180896 () Bool)

(assert (=> b!5120052 m!6180896))

(assert (=> d!1654561 d!1654735))

(assert (=> d!1654561 d!1654719))

(declare-fun d!1654737 () Bool)

(declare-fun lt!2110887 () Int)

(assert (=> d!1654737 (>= lt!2110887 0)))

(declare-fun e!3193230 () Int)

(assert (=> d!1654737 (= lt!2110887 e!3193230)))

(declare-fun c!879869 () Bool)

(assert (=> d!1654737 (= c!879869 ((_ is Nil!59218) lt!2110784))))

(assert (=> d!1654737 (= (size!39517 lt!2110784) lt!2110887)))

(declare-fun b!5120053 () Bool)

(assert (=> b!5120053 (= e!3193230 0)))

(declare-fun b!5120054 () Bool)

(assert (=> b!5120054 (= e!3193230 (+ 1 (size!39517 (t!372359 lt!2110784))))))

(assert (= (and d!1654737 c!879869) b!5120053))

(assert (= (and d!1654737 (not c!879869)) b!5120054))

(declare-fun m!6180898 () Bool)

(assert (=> b!5120054 m!6180898))

(assert (=> b!5119776 d!1654737))

(assert (=> b!5119776 d!1654455))

(declare-fun d!1654739 () Bool)

(declare-fun lt!2110888 () Int)

(assert (=> d!1654739 (>= lt!2110888 0)))

(declare-fun e!3193231 () Int)

(assert (=> d!1654739 (= lt!2110888 e!3193231)))

(declare-fun c!879870 () Bool)

(assert (=> d!1654739 (= c!879870 ((_ is Nil!59218) lt!2110706))))

(assert (=> d!1654739 (= (size!39517 lt!2110706) lt!2110888)))

(declare-fun b!5120055 () Bool)

(assert (=> b!5120055 (= e!3193231 0)))

(declare-fun b!5120056 () Bool)

(assert (=> b!5120056 (= e!3193231 (+ 1 (size!39517 (t!372359 lt!2110706))))))

(assert (= (and d!1654739 c!879870) b!5120055))

(assert (= (and d!1654739 (not c!879870)) b!5120056))

(declare-fun m!6180900 () Bool)

(assert (=> b!5120056 m!6180900))

(assert (=> b!5119776 d!1654739))

(declare-fun bs!1192651 () Bool)

(declare-fun d!1654741 () Bool)

(assert (= bs!1192651 (and d!1654741 d!1654451)))

(declare-fun lambda!251277 () Int)

(assert (=> bs!1192651 (= lambda!251277 lambda!251221)))

(declare-fun bs!1192652 () Bool)

(assert (= bs!1192652 (and d!1654741 d!1654569)))

(assert (=> bs!1192652 (= lambda!251277 lambda!251259)))

(declare-fun bs!1192653 () Bool)

(assert (= bs!1192653 (and d!1654741 d!1654645)))

(assert (=> bs!1192653 (= lambda!251277 lambda!251267)))

(assert (=> d!1654741 (= (inv!78708 setElem!30314) (forall!13609 (exprs!4095 setElem!30314) lambda!251277))))

(declare-fun bs!1192654 () Bool)

(assert (= bs!1192654 d!1654741))

(declare-fun m!6180902 () Bool)

(assert (=> bs!1192654 m!6180902))

(assert (=> setNonEmpty!30314 d!1654741))

(declare-fun d!1654743 () Bool)

(declare-fun lt!2110889 () Int)

(assert (=> d!1654743 (>= lt!2110889 0)))

(declare-fun e!3193232 () Int)

(assert (=> d!1654743 (= lt!2110889 e!3193232)))

(declare-fun c!879871 () Bool)

(assert (=> d!1654743 (= c!879871 ((_ is Nil!59218) lt!2110786))))

(assert (=> d!1654743 (= (size!39517 lt!2110786) lt!2110889)))

(declare-fun b!5120057 () Bool)

(assert (=> b!5120057 (= e!3193232 0)))

(declare-fun b!5120058 () Bool)

(assert (=> b!5120058 (= e!3193232 (+ 1 (size!39517 (t!372359 lt!2110786))))))

(assert (= (and d!1654743 c!879871) b!5120057))

(assert (= (and d!1654743 (not c!879871)) b!5120058))

(declare-fun m!6180904 () Bool)

(assert (=> b!5120058 m!6180904))

(assert (=> b!5119780 d!1654743))

(assert (=> b!5119780 d!1654711))

(declare-fun d!1654745 () Bool)

(declare-fun lt!2110890 () Int)

(assert (=> d!1654745 (>= lt!2110890 0)))

(declare-fun e!3193233 () Int)

(assert (=> d!1654745 (= lt!2110890 e!3193233)))

(declare-fun c!879872 () Bool)

(assert (=> d!1654745 (= c!879872 ((_ is Nil!59218) lt!2110690))))

(assert (=> d!1654745 (= (size!39517 lt!2110690) lt!2110890)))

(declare-fun b!5120059 () Bool)

(assert (=> b!5120059 (= e!3193233 0)))

(declare-fun b!5120060 () Bool)

(assert (=> b!5120060 (= e!3193233 (+ 1 (size!39517 (t!372359 lt!2110690))))))

(assert (= (and d!1654745 c!879872) b!5120059))

(assert (= (and d!1654745 (not c!879872)) b!5120060))

(declare-fun m!6180906 () Bool)

(assert (=> b!5120060 m!6180906))

(assert (=> b!5119780 d!1654745))

(declare-fun d!1654747 () Bool)

(declare-fun c!879873 () Bool)

(assert (=> d!1654747 (= c!879873 ((_ is Cons!59218) (t!372359 testedP!265)))))

(declare-fun e!3193234 () (InoxSet Context!7190))

(assert (=> d!1654747 (= (derivationZipper!110 (derivationStepZipper!846 baseZ!46 (h!65666 testedP!265)) (t!372359 testedP!265)) e!3193234)))

(declare-fun b!5120061 () Bool)

(assert (=> b!5120061 (= e!3193234 (derivationZipper!110 (derivationStepZipper!846 (derivationStepZipper!846 baseZ!46 (h!65666 testedP!265)) (h!65666 (t!372359 testedP!265))) (t!372359 (t!372359 testedP!265))))))

(declare-fun b!5120062 () Bool)

(assert (=> b!5120062 (= e!3193234 (derivationStepZipper!846 baseZ!46 (h!65666 testedP!265)))))

(assert (= (and d!1654747 c!879873) b!5120061))

(assert (= (and d!1654747 (not c!879873)) b!5120062))

(assert (=> b!5120061 m!6180434))

(declare-fun m!6180908 () Bool)

(assert (=> b!5120061 m!6180908))

(assert (=> b!5120061 m!6180908))

(declare-fun m!6180910 () Bool)

(assert (=> b!5120061 m!6180910))

(assert (=> b!5119772 d!1654747))

(declare-fun bs!1192655 () Bool)

(declare-fun d!1654749 () Bool)

(assert (= bs!1192655 (and d!1654749 d!1654471)))

(declare-fun lambda!251278 () Int)

(assert (=> bs!1192655 (= (= (h!65666 testedP!265) lt!2110701) (= lambda!251278 lambda!251239))))

(declare-fun bs!1192656 () Bool)

(assert (= bs!1192656 (and d!1654749 d!1654617)))

(assert (=> bs!1192656 (= (= (h!65666 testedP!265) (h!65666 lt!2110688)) (= lambda!251278 lambda!251266))))

(declare-fun bs!1192657 () Bool)

(assert (= bs!1192657 (and d!1654749 d!1654731)))

(assert (=> bs!1192657 (= (= (h!65666 testedP!265) (head!10939 knownP!20)) (= lambda!251278 lambda!251276))))

(assert (=> d!1654749 true))

(assert (=> d!1654749 (= (derivationStepZipper!846 baseZ!46 (h!65666 testedP!265)) (flatMap!358 baseZ!46 lambda!251278))))

(declare-fun bs!1192658 () Bool)

(assert (= bs!1192658 d!1654749))

(declare-fun m!6180912 () Bool)

(assert (=> bs!1192658 m!6180912))

(assert (=> b!5119772 d!1654749))

(declare-fun d!1654751 () Bool)

(assert (=> d!1654751 (= (isEmpty!31936 lt!2110705) ((_ is Nil!59218) lt!2110705))))

(assert (=> d!1654503 d!1654751))

(declare-fun d!1654753 () Bool)

(declare-fun lt!2110891 () Int)

(assert (=> d!1654753 (>= lt!2110891 0)))

(declare-fun e!3193235 () Int)

(assert (=> d!1654753 (= lt!2110891 e!3193235)))

(declare-fun c!879874 () Bool)

(assert (=> d!1654753 (= c!879874 ((_ is Nil!59218) lt!2110829))))

(assert (=> d!1654753 (= (size!39517 lt!2110829) lt!2110891)))

(declare-fun b!5120063 () Bool)

(assert (=> b!5120063 (= e!3193235 0)))

(declare-fun b!5120064 () Bool)

(assert (=> b!5120064 (= e!3193235 (+ 1 (size!39517 (t!372359 lt!2110829))))))

(assert (= (and d!1654753 c!879874) b!5120063))

(assert (= (and d!1654753 (not c!879874)) b!5120064))

(declare-fun m!6180914 () Bool)

(assert (=> b!5120064 m!6180914))

(assert (=> b!5119832 d!1654753))

(assert (=> b!5119832 d!1654455))

(declare-fun d!1654755 () Bool)

(declare-fun lt!2110892 () Int)

(assert (=> d!1654755 (>= lt!2110892 0)))

(declare-fun e!3193236 () Int)

(assert (=> d!1654755 (= lt!2110892 e!3193236)))

(declare-fun c!879875 () Bool)

(assert (=> d!1654755 (= c!879875 ((_ is Nil!59218) lt!2110705))))

(assert (=> d!1654755 (= (size!39517 lt!2110705) lt!2110892)))

(declare-fun b!5120065 () Bool)

(assert (=> b!5120065 (= e!3193236 0)))

(declare-fun b!5120066 () Bool)

(assert (=> b!5120066 (= e!3193236 (+ 1 (size!39517 (t!372359 lt!2110705))))))

(assert (= (and d!1654755 c!879875) b!5120065))

(assert (= (and d!1654755 (not c!879875)) b!5120066))

(assert (=> b!5120066 m!6180836))

(assert (=> b!5119832 d!1654755))

(declare-fun bs!1192659 () Bool)

(declare-fun d!1654757 () Bool)

(assert (= bs!1192659 (and d!1654757 d!1654667)))

(declare-fun lambda!251281 () Int)

(assert (=> bs!1192659 (not (= lambda!251281 lambda!251268))))

(declare-fun bs!1192660 () Bool)

(assert (= bs!1192660 (and d!1654757 d!1654613)))

(assert (=> bs!1192660 (not (= lambda!251281 lambda!251265))))

(declare-fun bs!1192661 () Bool)

(assert (= bs!1192661 (and d!1654757 b!5119816)))

(assert (=> bs!1192661 (not (= lambda!251281 lambda!251257))))

(declare-fun bs!1192662 () Bool)

(assert (= bs!1192662 (and d!1654757 d!1654687)))

(assert (=> bs!1192662 (not (= lambda!251281 lambda!251275))))

(declare-fun bs!1192663 () Bool)

(assert (= bs!1192663 (and d!1654757 b!5119817)))

(assert (=> bs!1192663 (not (= lambda!251281 lambda!251258))))

(declare-fun bs!1192664 () Bool)

(assert (= bs!1192664 (and d!1654757 d!1654543)))

(assert (=> bs!1192664 (not (= lambda!251281 lambda!251256))))

(assert (=> d!1654757 true))

(declare-fun order!26787 () Int)

(declare-fun dynLambda!23599 (Int Int) Int)

(assert (=> d!1654757 (< (dynLambda!23599 order!26787 lambda!251256) (dynLambda!23599 order!26787 lambda!251281))))

(assert (=> d!1654757 (not (exists!1475 lt!2110820 lambda!251281))))

(declare-fun lt!2110898 () Unit!150357)

(declare-fun choose!37642 (List!59344 Int) Unit!150357)

(assert (=> d!1654757 (= lt!2110898 (choose!37642 lt!2110820 lambda!251256))))

(assert (=> d!1654757 (forall!13613 lt!2110820 lambda!251256)))

(assert (=> d!1654757 (= (lemmaForallThenNotExists!321 lt!2110820 lambda!251256) lt!2110898)))

(declare-fun bs!1192665 () Bool)

(assert (= bs!1192665 d!1654757))

(declare-fun m!6180932 () Bool)

(assert (=> bs!1192665 m!6180932))

(declare-fun m!6180934 () Bool)

(assert (=> bs!1192665 m!6180934))

(declare-fun m!6180936 () Bool)

(assert (=> bs!1192665 m!6180936))

(assert (=> b!5119817 d!1654757))

(declare-fun d!1654773 () Bool)

(assert (=> d!1654773 (= lt!2110700 lt!2110704)))

(assert (=> d!1654773 true))

(declare-fun _$63!1252 () Unit!150357)

(assert (=> d!1654773 (= (choose!37628 testedP!265 lt!2110700 testedP!265 lt!2110704 input!5745) _$63!1252)))

(assert (=> d!1654447 d!1654773))

(assert (=> d!1654447 d!1654519))

(declare-fun bs!1192666 () Bool)

(declare-fun d!1654781 () Bool)

(assert (= bs!1192666 (and d!1654781 d!1654757)))

(declare-fun lambda!251284 () Int)

(assert (=> bs!1192666 (= (= (ite c!879801 lambda!251257 lambda!251258) lambda!251256) (= lambda!251284 lambda!251281))))

(declare-fun bs!1192667 () Bool)

(assert (= bs!1192667 (and d!1654781 d!1654667)))

(assert (=> bs!1192667 (not (= lambda!251284 lambda!251268))))

(declare-fun bs!1192668 () Bool)

(assert (= bs!1192668 (and d!1654781 d!1654613)))

(assert (=> bs!1192668 (not (= lambda!251284 lambda!251265))))

(declare-fun bs!1192669 () Bool)

(assert (= bs!1192669 (and d!1654781 b!5119816)))

(assert (=> bs!1192669 (not (= lambda!251284 lambda!251257))))

(declare-fun bs!1192670 () Bool)

(assert (= bs!1192670 (and d!1654781 d!1654687)))

(assert (=> bs!1192670 (not (= lambda!251284 lambda!251275))))

(declare-fun bs!1192671 () Bool)

(assert (= bs!1192671 (and d!1654781 b!5119817)))

(assert (=> bs!1192671 (not (= lambda!251284 lambda!251258))))

(declare-fun bs!1192672 () Bool)

(assert (= bs!1192672 (and d!1654781 d!1654543)))

(assert (=> bs!1192672 (not (= lambda!251284 lambda!251256))))

(assert (=> d!1654781 true))

(assert (=> d!1654781 (< (dynLambda!23599 order!26787 (ite c!879801 lambda!251257 lambda!251258)) (dynLambda!23599 order!26787 lambda!251284))))

(assert (=> d!1654781 (= (exists!1475 (ite c!879801 lt!2110821 lt!2110820) (ite c!879801 lambda!251257 lambda!251258)) (not (forall!13613 (ite c!879801 lt!2110821 lt!2110820) lambda!251284)))))

(declare-fun bs!1192673 () Bool)

(assert (= bs!1192673 d!1654781))

(declare-fun m!6180978 () Bool)

(assert (=> bs!1192673 m!6180978))

(assert (=> bm!356624 d!1654781))

(assert (=> b!5119717 d!1654449))

(assert (=> b!5119717 d!1654725))

(declare-fun d!1654791 () Bool)

(declare-fun c!879888 () Bool)

(assert (=> d!1654791 (= c!879888 (isEmpty!31936 (tail!10076 lt!2110705)))))

(declare-fun e!3193255 () Bool)

(assert (=> d!1654791 (= (matchZipper!879 (derivationStepZipper!846 z!4463 (head!10939 lt!2110705)) (tail!10076 lt!2110705)) e!3193255)))

(declare-fun b!5120101 () Bool)

(assert (=> b!5120101 (= e!3193255 (nullableZipper!1028 (derivationStepZipper!846 z!4463 (head!10939 lt!2110705))))))

(declare-fun b!5120102 () Bool)

(assert (=> b!5120102 (= e!3193255 (matchZipper!879 (derivationStepZipper!846 (derivationStepZipper!846 z!4463 (head!10939 lt!2110705)) (head!10939 (tail!10076 lt!2110705))) (tail!10076 (tail!10076 lt!2110705))))))

(assert (= (and d!1654791 c!879888) b!5120101))

(assert (= (and d!1654791 (not c!879888)) b!5120102))

(assert (=> d!1654791 m!6180196))

(declare-fun m!6180980 () Bool)

(assert (=> d!1654791 m!6180980))

(assert (=> b!5120101 m!6180368))

(declare-fun m!6180982 () Bool)

(assert (=> b!5120101 m!6180982))

(assert (=> b!5120102 m!6180196))

(declare-fun m!6180984 () Bool)

(assert (=> b!5120102 m!6180984))

(assert (=> b!5120102 m!6180368))

(assert (=> b!5120102 m!6180984))

(declare-fun m!6180986 () Bool)

(assert (=> b!5120102 m!6180986))

(assert (=> b!5120102 m!6180196))

(declare-fun m!6180988 () Bool)

(assert (=> b!5120102 m!6180988))

(assert (=> b!5120102 m!6180986))

(assert (=> b!5120102 m!6180988))

(declare-fun m!6180990 () Bool)

(assert (=> b!5120102 m!6180990))

(assert (=> b!5119741 d!1654791))

(declare-fun bs!1192674 () Bool)

(declare-fun d!1654793 () Bool)

(assert (= bs!1192674 (and d!1654793 d!1654471)))

(declare-fun lambda!251285 () Int)

(assert (=> bs!1192674 (= (= (head!10939 lt!2110705) lt!2110701) (= lambda!251285 lambda!251239))))

(declare-fun bs!1192675 () Bool)

(assert (= bs!1192675 (and d!1654793 d!1654617)))

(assert (=> bs!1192675 (= (= (head!10939 lt!2110705) (h!65666 lt!2110688)) (= lambda!251285 lambda!251266))))

(declare-fun bs!1192676 () Bool)

(assert (= bs!1192676 (and d!1654793 d!1654731)))

(assert (=> bs!1192676 (= (= (head!10939 lt!2110705) (head!10939 knownP!20)) (= lambda!251285 lambda!251276))))

(declare-fun bs!1192677 () Bool)

(assert (= bs!1192677 (and d!1654793 d!1654749)))

(assert (=> bs!1192677 (= (= (head!10939 lt!2110705) (h!65666 testedP!265)) (= lambda!251285 lambda!251278))))

(assert (=> d!1654793 true))

(assert (=> d!1654793 (= (derivationStepZipper!846 z!4463 (head!10939 lt!2110705)) (flatMap!358 z!4463 lambda!251285))))

(declare-fun bs!1192679 () Bool)

(assert (= bs!1192679 d!1654793))

(declare-fun m!6180992 () Bool)

(assert (=> bs!1192679 m!6180992))

(assert (=> b!5119741 d!1654793))

(assert (=> b!5119741 d!1654445))

(assert (=> b!5119741 d!1654529))

(declare-fun d!1654795 () Bool)

(assert (=> d!1654795 (= (isEmpty!31936 knownP!20) ((_ is Nil!59218) knownP!20))))

(assert (=> d!1654523 d!1654795))

(declare-fun d!1654799 () Bool)

(declare-fun lt!2110904 () Int)

(assert (=> d!1654799 (>= lt!2110904 0)))

(declare-fun e!3193259 () Int)

(assert (=> d!1654799 (= lt!2110904 e!3193259)))

(declare-fun c!879889 () Bool)

(assert (=> d!1654799 (= c!879889 ((_ is Nil!59218) lt!2110762))))

(assert (=> d!1654799 (= (size!39517 lt!2110762) lt!2110904)))

(declare-fun b!5120107 () Bool)

(assert (=> b!5120107 (= e!3193259 0)))

(declare-fun b!5120108 () Bool)

(assert (=> b!5120108 (= e!3193259 (+ 1 (size!39517 (t!372359 lt!2110762))))))

(assert (= (and d!1654799 c!879889) b!5120107))

(assert (= (and d!1654799 (not c!879889)) b!5120108))

(declare-fun m!6180994 () Bool)

(assert (=> b!5120108 m!6180994))

(assert (=> b!5119704 d!1654799))

(assert (=> b!5119704 d!1654457))

(assert (=> b!5119704 d!1654695))

(assert (=> d!1654473 d!1654499))

(declare-fun d!1654801 () Bool)

(assert (=> d!1654801 (isPrefix!5616 lt!2110688 knownP!20)))

(assert (=> d!1654801 true))

(declare-fun _$69!350 () Unit!150357)

(assert (=> d!1654801 (= (choose!37631 knownP!20 lt!2110688 input!5745) _$69!350)))

(declare-fun bs!1192680 () Bool)

(assert (= bs!1192680 d!1654801))

(assert (=> bs!1192680 m!6180134))

(assert (=> d!1654473 d!1654801))

(assert (=> d!1654473 d!1654571))

(assert (=> b!5119725 d!1654705))

(assert (=> b!5119725 d!1654669))

(declare-fun b!5120112 () Bool)

(declare-fun e!3193262 () Bool)

(assert (=> b!5120112 (= e!3193262 (>= (size!39517 (tail!10076 knownP!20)) (size!39517 (tail!10076 testedP!265))))))

(declare-fun d!1654803 () Bool)

(assert (=> d!1654803 e!3193262))

(declare-fun res!2180107 () Bool)

(assert (=> d!1654803 (=> res!2180107 e!3193262)))

(declare-fun lt!2110905 () Bool)

(assert (=> d!1654803 (= res!2180107 (not lt!2110905))))

(declare-fun e!3193260 () Bool)

(assert (=> d!1654803 (= lt!2110905 e!3193260)))

(declare-fun res!2180106 () Bool)

(assert (=> d!1654803 (=> res!2180106 e!3193260)))

(assert (=> d!1654803 (= res!2180106 ((_ is Nil!59218) (tail!10076 testedP!265)))))

(assert (=> d!1654803 (= (isPrefix!5616 (tail!10076 testedP!265) (tail!10076 knownP!20)) lt!2110905)))

(declare-fun b!5120111 () Bool)

(declare-fun e!3193261 () Bool)

(assert (=> b!5120111 (= e!3193261 (isPrefix!5616 (tail!10076 (tail!10076 testedP!265)) (tail!10076 (tail!10076 knownP!20))))))

(declare-fun b!5120109 () Bool)

(assert (=> b!5120109 (= e!3193260 e!3193261)))

(declare-fun res!2180108 () Bool)

(assert (=> b!5120109 (=> (not res!2180108) (not e!3193261))))

(assert (=> b!5120109 (= res!2180108 (not ((_ is Nil!59218) (tail!10076 knownP!20))))))

(declare-fun b!5120110 () Bool)

(declare-fun res!2180109 () Bool)

(assert (=> b!5120110 (=> (not res!2180109) (not e!3193261))))

(assert (=> b!5120110 (= res!2180109 (= (head!10939 (tail!10076 testedP!265)) (head!10939 (tail!10076 knownP!20))))))

(assert (= (and d!1654803 (not res!2180106)) b!5120109))

(assert (= (and b!5120109 res!2180108) b!5120110))

(assert (= (and b!5120110 res!2180109) b!5120111))

(assert (= (and d!1654803 (not res!2180107)) b!5120112))

(assert (=> b!5120112 m!6180330))

(assert (=> b!5120112 m!6180716))

(assert (=> b!5120112 m!6180376))

(assert (=> b!5120112 m!6180792))

(assert (=> b!5120111 m!6180376))

(assert (=> b!5120111 m!6180794))

(assert (=> b!5120111 m!6180330))

(assert (=> b!5120111 m!6180718))

(assert (=> b!5120111 m!6180794))

(assert (=> b!5120111 m!6180718))

(declare-fun m!6181010 () Bool)

(assert (=> b!5120111 m!6181010))

(assert (=> b!5120110 m!6180376))

(assert (=> b!5120110 m!6180798))

(assert (=> b!5120110 m!6180330))

(assert (=> b!5120110 m!6180778))

(assert (=> b!5119750 d!1654803))

(assert (=> b!5119750 d!1654679))

(assert (=> b!5119750 d!1654637))

(assert (=> b!5119727 d!1654457))

(assert (=> b!5119727 d!1654725))

(declare-fun d!1654813 () Bool)

(declare-fun c!879892 () Bool)

(assert (=> d!1654813 (= c!879892 ((_ is Nil!59218) lt!2110762))))

(declare-fun e!3193265 () (InoxSet C!28688))

(assert (=> d!1654813 (= (content!10530 lt!2110762) e!3193265)))

(declare-fun b!5120117 () Bool)

(assert (=> b!5120117 (= e!3193265 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120118 () Bool)

(assert (=> b!5120118 (= e!3193265 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110762) true) (content!10530 (t!372359 lt!2110762))))))

(assert (= (and d!1654813 c!879892) b!5120117))

(assert (= (and d!1654813 (not c!879892)) b!5120118))

(declare-fun m!6181018 () Bool)

(assert (=> b!5120118 m!6181018))

(declare-fun m!6181020 () Bool)

(assert (=> b!5120118 m!6181020))

(assert (=> d!1654483 d!1654813))

(declare-fun d!1654817 () Bool)

(declare-fun c!879894 () Bool)

(assert (=> d!1654817 (= c!879894 ((_ is Nil!59218) knownP!20))))

(declare-fun e!3193267 () (InoxSet C!28688))

(assert (=> d!1654817 (= (content!10530 knownP!20) e!3193267)))

(declare-fun b!5120121 () Bool)

(assert (=> b!5120121 (= e!3193267 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120122 () Bool)

(assert (=> b!5120122 (= e!3193267 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 knownP!20) true) (content!10530 (t!372359 knownP!20))))))

(assert (= (and d!1654817 c!879894) b!5120121))

(assert (= (and d!1654817 (not c!879894)) b!5120122))

(declare-fun m!6181026 () Bool)

(assert (=> b!5120122 m!6181026))

(assert (=> b!5120122 m!6180774))

(assert (=> d!1654483 d!1654817))

(assert (=> d!1654483 d!1654719))

(declare-fun d!1654821 () Bool)

(declare-fun choose!37643 ((InoxSet Context!7190) Int) (InoxSet Context!7190))

(assert (=> d!1654821 (= (flatMap!358 z!4463 lambda!251239) (choose!37643 z!4463 lambda!251239))))

(declare-fun bs!1192681 () Bool)

(assert (= bs!1192681 d!1654821))

(declare-fun m!6181028 () Bool)

(assert (=> bs!1192681 m!6181028))

(assert (=> d!1654471 d!1654821))

(assert (=> b!5119763 d!1654675))

(assert (=> b!5119763 d!1654671))

(declare-fun d!1654825 () Bool)

(assert (=> d!1654825 (isPrefix!5616 (++!13036 testedP!265 (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218)) input!5745)))

(assert (=> d!1654825 true))

(declare-fun _$65!1757 () Unit!150357)

(assert (=> d!1654825 (= (choose!37633 testedP!265 input!5745) _$65!1757)))

(declare-fun bs!1192682 () Bool)

(assert (= bs!1192682 d!1654825))

(assert (=> bs!1192682 m!6180122))

(assert (=> bs!1192682 m!6180122))

(assert (=> bs!1192682 m!6180302))

(assert (=> bs!1192682 m!6180298))

(assert (=> bs!1192682 m!6180298))

(assert (=> bs!1192682 m!6180300))

(assert (=> d!1654479 d!1654825))

(declare-fun d!1654843 () Bool)

(assert (=> d!1654843 (= (head!10939 (getSuffix!3290 input!5745 testedP!265)) (h!65666 (getSuffix!3290 input!5745 testedP!265)))))

(assert (=> d!1654479 d!1654843))

(declare-fun b!5120139 () Bool)

(declare-fun e!3193278 () List!59342)

(assert (=> b!5120139 (= e!3193278 (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218))))

(declare-fun b!5120141 () Bool)

(declare-fun res!2180117 () Bool)

(declare-fun e!3193277 () Bool)

(assert (=> b!5120141 (=> (not res!2180117) (not e!3193277))))

(declare-fun lt!2110908 () List!59342)

(assert (=> b!5120141 (= res!2180117 (= (size!39517 lt!2110908) (+ (size!39517 testedP!265) (size!39517 (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218)))))))

(declare-fun b!5120142 () Bool)

(assert (=> b!5120142 (= e!3193277 (or (not (= (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218) Nil!59218)) (= lt!2110908 testedP!265)))))

(declare-fun b!5120140 () Bool)

(assert (=> b!5120140 (= e!3193278 (Cons!59218 (h!65666 testedP!265) (++!13036 (t!372359 testedP!265) (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218))))))

(declare-fun d!1654845 () Bool)

(assert (=> d!1654845 e!3193277))

(declare-fun res!2180116 () Bool)

(assert (=> d!1654845 (=> (not res!2180116) (not e!3193277))))

(assert (=> d!1654845 (= res!2180116 (= (content!10530 lt!2110908) ((_ map or) (content!10530 testedP!265) (content!10530 (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218)))))))

(assert (=> d!1654845 (= lt!2110908 e!3193278)))

(declare-fun c!879900 () Bool)

(assert (=> d!1654845 (= c!879900 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654845 (= (++!13036 testedP!265 (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218)) lt!2110908)))

(assert (= (and d!1654845 c!879900) b!5120139))

(assert (= (and d!1654845 (not c!879900)) b!5120140))

(assert (= (and d!1654845 res!2180116) b!5120141))

(assert (= (and b!5120141 res!2180117) b!5120142))

(declare-fun m!6181066 () Bool)

(assert (=> b!5120141 m!6181066))

(assert (=> b!5120141 m!6180150))

(declare-fun m!6181068 () Bool)

(assert (=> b!5120141 m!6181068))

(declare-fun m!6181070 () Bool)

(assert (=> b!5120140 m!6181070))

(declare-fun m!6181072 () Bool)

(assert (=> d!1654845 m!6181072))

(assert (=> d!1654845 m!6180216))

(declare-fun m!6181074 () Bool)

(assert (=> d!1654845 m!6181074))

(assert (=> d!1654479 d!1654845))

(assert (=> d!1654479 d!1654519))

(assert (=> d!1654479 d!1654467))

(declare-fun b!5120150 () Bool)

(declare-fun e!3193283 () Bool)

(assert (=> b!5120150 (= e!3193283 (>= (size!39517 input!5745) (size!39517 (++!13036 testedP!265 (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218)))))))

(declare-fun d!1654849 () Bool)

(assert (=> d!1654849 e!3193283))

(declare-fun res!2180121 () Bool)

(assert (=> d!1654849 (=> res!2180121 e!3193283)))

(declare-fun lt!2110910 () Bool)

(assert (=> d!1654849 (= res!2180121 (not lt!2110910))))

(declare-fun e!3193281 () Bool)

(assert (=> d!1654849 (= lt!2110910 e!3193281)))

(declare-fun res!2180120 () Bool)

(assert (=> d!1654849 (=> res!2180120 e!3193281)))

(assert (=> d!1654849 (= res!2180120 ((_ is Nil!59218) (++!13036 testedP!265 (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218))))))

(assert (=> d!1654849 (= (isPrefix!5616 (++!13036 testedP!265 (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218)) input!5745) lt!2110910)))

(declare-fun b!5120149 () Bool)

(declare-fun e!3193282 () Bool)

(assert (=> b!5120149 (= e!3193282 (isPrefix!5616 (tail!10076 (++!13036 testedP!265 (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218))) (tail!10076 input!5745)))))

(declare-fun b!5120147 () Bool)

(assert (=> b!5120147 (= e!3193281 e!3193282)))

(declare-fun res!2180122 () Bool)

(assert (=> b!5120147 (=> (not res!2180122) (not e!3193282))))

(assert (=> b!5120147 (= res!2180122 (not ((_ is Nil!59218) input!5745)))))

(declare-fun b!5120148 () Bool)

(declare-fun res!2180123 () Bool)

(assert (=> b!5120148 (=> (not res!2180123) (not e!3193282))))

(assert (=> b!5120148 (= res!2180123 (= (head!10939 (++!13036 testedP!265 (Cons!59218 (head!10939 (getSuffix!3290 input!5745 testedP!265)) Nil!59218))) (head!10939 input!5745)))))

(assert (= (and d!1654849 (not res!2180120)) b!5120147))

(assert (= (and b!5120147 res!2180122) b!5120148))

(assert (= (and b!5120148 res!2180123) b!5120149))

(assert (= (and d!1654849 (not res!2180121)) b!5120150))

(assert (=> b!5120150 m!6180180))

(assert (=> b!5120150 m!6180298))

(declare-fun m!6181082 () Bool)

(assert (=> b!5120150 m!6181082))

(assert (=> b!5120149 m!6180298))

(declare-fun m!6181084 () Bool)

(assert (=> b!5120149 m!6181084))

(assert (=> b!5120149 m!6180252))

(assert (=> b!5120149 m!6181084))

(assert (=> b!5120149 m!6180252))

(declare-fun m!6181086 () Bool)

(assert (=> b!5120149 m!6181086))

(assert (=> b!5120148 m!6180298))

(declare-fun m!6181088 () Bool)

(assert (=> b!5120148 m!6181088))

(assert (=> b!5120148 m!6180324))

(assert (=> d!1654479 d!1654849))

(declare-fun b!5120153 () Bool)

(declare-fun e!3193286 () List!59342)

(assert (=> b!5120153 (= e!3193286 lt!2110697)))

(declare-fun b!5120155 () Bool)

(declare-fun res!2180125 () Bool)

(declare-fun e!3193285 () Bool)

(assert (=> b!5120155 (=> (not res!2180125) (not e!3193285))))

(declare-fun lt!2110912 () List!59342)

(assert (=> b!5120155 (= res!2180125 (= (size!39517 lt!2110912) (+ (size!39517 (++!13036 testedP!265 lt!2110705)) (size!39517 lt!2110697))))))

(declare-fun b!5120156 () Bool)

(assert (=> b!5120156 (= e!3193285 (or (not (= lt!2110697 Nil!59218)) (= lt!2110912 (++!13036 testedP!265 lt!2110705))))))

(declare-fun b!5120154 () Bool)

(assert (=> b!5120154 (= e!3193286 (Cons!59218 (h!65666 (++!13036 testedP!265 lt!2110705)) (++!13036 (t!372359 (++!13036 testedP!265 lt!2110705)) lt!2110697)))))

(declare-fun d!1654855 () Bool)

(assert (=> d!1654855 e!3193285))

(declare-fun res!2180124 () Bool)

(assert (=> d!1654855 (=> (not res!2180124) (not e!3193285))))

(assert (=> d!1654855 (= res!2180124 (= (content!10530 lt!2110912) ((_ map or) (content!10530 (++!13036 testedP!265 lt!2110705)) (content!10530 lt!2110697))))))

(assert (=> d!1654855 (= lt!2110912 e!3193286)))

(declare-fun c!879903 () Bool)

(assert (=> d!1654855 (= c!879903 ((_ is Nil!59218) (++!13036 testedP!265 lt!2110705)))))

(assert (=> d!1654855 (= (++!13036 (++!13036 testedP!265 lt!2110705) lt!2110697) lt!2110912)))

(assert (= (and d!1654855 c!879903) b!5120153))

(assert (= (and d!1654855 (not c!879903)) b!5120154))

(assert (= (and d!1654855 res!2180124) b!5120155))

(assert (= (and b!5120155 res!2180125) b!5120156))

(declare-fun m!6181090 () Bool)

(assert (=> b!5120155 m!6181090))

(assert (=> b!5120155 m!6180120))

(declare-fun m!6181092 () Bool)

(assert (=> b!5120155 m!6181092))

(assert (=> b!5120155 m!6180224))

(declare-fun m!6181094 () Bool)

(assert (=> b!5120154 m!6181094))

(declare-fun m!6181096 () Bool)

(assert (=> d!1654855 m!6181096))

(assert (=> d!1654855 m!6180120))

(declare-fun m!6181098 () Bool)

(assert (=> d!1654855 m!6181098))

(assert (=> d!1654855 m!6180232))

(assert (=> d!1654463 d!1654855))

(assert (=> d!1654463 d!1654461))

(declare-fun d!1654857 () Bool)

(assert (=> d!1654857 (= (++!13036 (++!13036 testedP!265 lt!2110705) lt!2110697) (++!13036 testedP!265 (++!13036 lt!2110705 lt!2110697)))))

(assert (=> d!1654857 true))

(declare-fun _$52!2355 () Unit!150357)

(assert (=> d!1654857 (= (choose!37629 testedP!265 lt!2110705 lt!2110697) _$52!2355)))

(declare-fun bs!1192684 () Bool)

(assert (= bs!1192684 d!1654857))

(assert (=> bs!1192684 m!6180120))

(assert (=> bs!1192684 m!6180120))

(assert (=> bs!1192684 m!6180234))

(assert (=> bs!1192684 m!6180188))

(assert (=> bs!1192684 m!6180188))

(assert (=> bs!1192684 m!6180236))

(assert (=> d!1654463 d!1654857))

(assert (=> d!1654463 d!1654567))

(declare-fun b!5120157 () Bool)

(declare-fun e!3193288 () List!59342)

(assert (=> b!5120157 (= e!3193288 (++!13036 lt!2110705 lt!2110697))))

(declare-fun b!5120159 () Bool)

(declare-fun res!2180127 () Bool)

(declare-fun e!3193287 () Bool)

(assert (=> b!5120159 (=> (not res!2180127) (not e!3193287))))

(declare-fun lt!2110913 () List!59342)

(assert (=> b!5120159 (= res!2180127 (= (size!39517 lt!2110913) (+ (size!39517 testedP!265) (size!39517 (++!13036 lt!2110705 lt!2110697)))))))

(declare-fun b!5120160 () Bool)

(assert (=> b!5120160 (= e!3193287 (or (not (= (++!13036 lt!2110705 lt!2110697) Nil!59218)) (= lt!2110913 testedP!265)))))

(declare-fun b!5120158 () Bool)

(assert (=> b!5120158 (= e!3193288 (Cons!59218 (h!65666 testedP!265) (++!13036 (t!372359 testedP!265) (++!13036 lt!2110705 lt!2110697))))))

(declare-fun d!1654859 () Bool)

(assert (=> d!1654859 e!3193287))

(declare-fun res!2180126 () Bool)

(assert (=> d!1654859 (=> (not res!2180126) (not e!3193287))))

(assert (=> d!1654859 (= res!2180126 (= (content!10530 lt!2110913) ((_ map or) (content!10530 testedP!265) (content!10530 (++!13036 lt!2110705 lt!2110697)))))))

(assert (=> d!1654859 (= lt!2110913 e!3193288)))

(declare-fun c!879904 () Bool)

(assert (=> d!1654859 (= c!879904 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654859 (= (++!13036 testedP!265 (++!13036 lt!2110705 lt!2110697)) lt!2110913)))

(assert (= (and d!1654859 c!879904) b!5120157))

(assert (= (and d!1654859 (not c!879904)) b!5120158))

(assert (= (and d!1654859 res!2180126) b!5120159))

(assert (= (and b!5120159 res!2180127) b!5120160))

(declare-fun m!6181100 () Bool)

(assert (=> b!5120159 m!6181100))

(assert (=> b!5120159 m!6180150))

(assert (=> b!5120159 m!6180188))

(declare-fun m!6181102 () Bool)

(assert (=> b!5120159 m!6181102))

(assert (=> b!5120158 m!6180188))

(declare-fun m!6181104 () Bool)

(assert (=> b!5120158 m!6181104))

(declare-fun m!6181106 () Bool)

(assert (=> d!1654859 m!6181106))

(assert (=> d!1654859 m!6180216))

(assert (=> d!1654859 m!6180188))

(declare-fun m!6181108 () Bool)

(assert (=> d!1654859 m!6181108))

(assert (=> d!1654463 d!1654859))

(declare-fun d!1654861 () Bool)

(declare-fun res!2180128 () Bool)

(declare-fun e!3193291 () Bool)

(assert (=> d!1654861 (=> res!2180128 e!3193291)))

(assert (=> d!1654861 (= res!2180128 ((_ is Nil!59217) (exprs!4095 setElem!30309)))))

(assert (=> d!1654861 (= (forall!13609 (exprs!4095 setElem!30309) lambda!251221) e!3193291)))

(declare-fun b!5120161 () Bool)

(declare-fun e!3193292 () Bool)

(assert (=> b!5120161 (= e!3193291 e!3193292)))

(declare-fun res!2180129 () Bool)

(assert (=> b!5120161 (=> (not res!2180129) (not e!3193292))))

(assert (=> b!5120161 (= res!2180129 (dynLambda!23596 lambda!251221 (h!65665 (exprs!4095 setElem!30309))))))

(declare-fun b!5120162 () Bool)

(assert (=> b!5120162 (= e!3193292 (forall!13609 (t!372358 (exprs!4095 setElem!30309)) lambda!251221))))

(assert (= (and d!1654861 (not res!2180128)) b!5120161))

(assert (= (and b!5120161 res!2180129) b!5120162))

(declare-fun b_lambda!198911 () Bool)

(assert (=> (not b_lambda!198911) (not b!5120161)))

(declare-fun m!6181110 () Bool)

(assert (=> b!5120161 m!6181110))

(declare-fun m!6181112 () Bool)

(assert (=> b!5120162 m!6181112))

(assert (=> d!1654451 d!1654861))

(assert (=> b!5119765 d!1654449))

(assert (=> b!5119765 d!1654455))

(declare-fun b!5120163 () Bool)

(declare-fun e!3193294 () List!59342)

(assert (=> b!5120163 (= e!3193294 lt!2110700)))

(declare-fun b!5120165 () Bool)

(declare-fun res!2180131 () Bool)

(declare-fun e!3193293 () Bool)

(assert (=> b!5120165 (=> (not res!2180131) (not e!3193293))))

(declare-fun lt!2110916 () List!59342)

(assert (=> b!5120165 (= res!2180131 (= (size!39517 lt!2110916) (+ (size!39517 (t!372359 testedP!265)) (size!39517 lt!2110700))))))

(declare-fun b!5120166 () Bool)

(assert (=> b!5120166 (= e!3193293 (or (not (= lt!2110700 Nil!59218)) (= lt!2110916 (t!372359 testedP!265))))))

(declare-fun b!5120164 () Bool)

(assert (=> b!5120164 (= e!3193294 (Cons!59218 (h!65666 (t!372359 testedP!265)) (++!13036 (t!372359 (t!372359 testedP!265)) lt!2110700)))))

(declare-fun d!1654863 () Bool)

(assert (=> d!1654863 e!3193293))

(declare-fun res!2180130 () Bool)

(assert (=> d!1654863 (=> (not res!2180130) (not e!3193293))))

(assert (=> d!1654863 (= res!2180130 (= (content!10530 lt!2110916) ((_ map or) (content!10530 (t!372359 testedP!265)) (content!10530 lt!2110700))))))

(assert (=> d!1654863 (= lt!2110916 e!3193294)))

(declare-fun c!879905 () Bool)

(assert (=> d!1654863 (= c!879905 ((_ is Nil!59218) (t!372359 testedP!265)))))

(assert (=> d!1654863 (= (++!13036 (t!372359 testedP!265) lt!2110700) lt!2110916)))

(assert (= (and d!1654863 c!879905) b!5120163))

(assert (= (and d!1654863 (not c!879905)) b!5120164))

(assert (= (and d!1654863 res!2180130) b!5120165))

(assert (= (and b!5120165 res!2180131) b!5120166))

(declare-fun m!6181114 () Bool)

(assert (=> b!5120165 m!6181114))

(assert (=> b!5120165 m!6180204))

(assert (=> b!5120165 m!6180210))

(declare-fun m!6181116 () Bool)

(assert (=> b!5120164 m!6181116))

(declare-fun m!6181118 () Bool)

(assert (=> d!1654863 m!6181118))

(assert (=> d!1654863 m!6180672))

(assert (=> d!1654863 m!6180218))

(assert (=> b!5119663 d!1654863))

(declare-fun b!5120167 () Bool)

(declare-fun e!3193296 () List!59342)

(assert (=> b!5120167 (= e!3193296 lt!2110697)))

(declare-fun b!5120169 () Bool)

(declare-fun res!2180133 () Bool)

(declare-fun e!3193295 () Bool)

(assert (=> b!5120169 (=> (not res!2180133) (not e!3193295))))

(declare-fun lt!2110917 () List!59342)

(assert (=> b!5120169 (= res!2180133 (= (size!39517 lt!2110917) (+ (size!39517 (t!372359 lt!2110694)) (size!39517 lt!2110697))))))

(declare-fun b!5120170 () Bool)

(assert (=> b!5120170 (= e!3193295 (or (not (= lt!2110697 Nil!59218)) (= lt!2110917 (t!372359 lt!2110694))))))

(declare-fun b!5120168 () Bool)

(assert (=> b!5120168 (= e!3193296 (Cons!59218 (h!65666 (t!372359 lt!2110694)) (++!13036 (t!372359 (t!372359 lt!2110694)) lt!2110697)))))

(declare-fun d!1654865 () Bool)

(assert (=> d!1654865 e!3193295))

(declare-fun res!2180132 () Bool)

(assert (=> d!1654865 (=> (not res!2180132) (not e!3193295))))

(assert (=> d!1654865 (= res!2180132 (= (content!10530 lt!2110917) ((_ map or) (content!10530 (t!372359 lt!2110694)) (content!10530 lt!2110697))))))

(assert (=> d!1654865 (= lt!2110917 e!3193296)))

(declare-fun c!879906 () Bool)

(assert (=> d!1654865 (= c!879906 ((_ is Nil!59218) (t!372359 lt!2110694)))))

(assert (=> d!1654865 (= (++!13036 (t!372359 lt!2110694) lt!2110697) lt!2110917)))

(assert (= (and d!1654865 c!879906) b!5120167))

(assert (= (and d!1654865 (not c!879906)) b!5120168))

(assert (= (and d!1654865 res!2180132) b!5120169))

(assert (= (and b!5120169 res!2180133) b!5120170))

(declare-fun m!6181120 () Bool)

(assert (=> b!5120169 m!6181120))

(assert (=> b!5120169 m!6180818))

(assert (=> b!5120169 m!6180224))

(declare-fun m!6181122 () Bool)

(assert (=> b!5120168 m!6181122))

(declare-fun m!6181124 () Bool)

(assert (=> d!1654865 m!6181124))

(assert (=> d!1654865 m!6180896))

(assert (=> d!1654865 m!6180232))

(assert (=> b!5119823 d!1654865))

(declare-fun d!1654867 () Bool)

(declare-fun lt!2110919 () List!59342)

(assert (=> d!1654867 (= (++!13036 (t!372359 lt!2110688) lt!2110919) (tail!10076 knownP!20))))

(declare-fun e!3193297 () List!59342)

(assert (=> d!1654867 (= lt!2110919 e!3193297)))

(declare-fun c!879907 () Bool)

(assert (=> d!1654867 (= c!879907 ((_ is Cons!59218) (t!372359 lt!2110688)))))

(assert (=> d!1654867 (>= (size!39517 (tail!10076 knownP!20)) (size!39517 (t!372359 lt!2110688)))))

(assert (=> d!1654867 (= (getSuffix!3290 (tail!10076 knownP!20) (t!372359 lt!2110688)) lt!2110919)))

(declare-fun b!5120173 () Bool)

(assert (=> b!5120173 (= e!3193297 (getSuffix!3290 (tail!10076 (tail!10076 knownP!20)) (t!372359 (t!372359 lt!2110688))))))

(declare-fun b!5120174 () Bool)

(assert (=> b!5120174 (= e!3193297 (tail!10076 knownP!20))))

(assert (= (and d!1654867 c!879907) b!5120173))

(assert (= (and d!1654867 (not c!879907)) b!5120174))

(declare-fun m!6181126 () Bool)

(assert (=> d!1654867 m!6181126))

(assert (=> d!1654867 m!6180330))

(assert (=> d!1654867 m!6180716))

(assert (=> d!1654867 m!6180824))

(assert (=> b!5120173 m!6180330))

(assert (=> b!5120173 m!6180718))

(assert (=> b!5120173 m!6180718))

(declare-fun m!6181128 () Bool)

(assert (=> b!5120173 m!6181128))

(assert (=> b!5119718 d!1654867))

(assert (=> b!5119718 d!1654637))

(declare-fun d!1654869 () Bool)

(declare-fun lt!2110920 () Int)

(assert (=> d!1654869 (>= lt!2110920 0)))

(declare-fun e!3193298 () Int)

(assert (=> d!1654869 (= lt!2110920 e!3193298)))

(declare-fun c!879908 () Bool)

(assert (=> d!1654869 (= c!879908 ((_ is Nil!59218) lt!2110722))))

(assert (=> d!1654869 (= (size!39517 lt!2110722) lt!2110920)))

(declare-fun b!5120175 () Bool)

(assert (=> b!5120175 (= e!3193298 0)))

(declare-fun b!5120176 () Bool)

(assert (=> b!5120176 (= e!3193298 (+ 1 (size!39517 (t!372359 lt!2110722))))))

(assert (= (and d!1654869 c!879908) b!5120175))

(assert (= (and d!1654869 (not c!879908)) b!5120176))

(declare-fun m!6181130 () Bool)

(assert (=> b!5120176 m!6181130))

(assert (=> b!5119668 d!1654869))

(assert (=> b!5119668 d!1654755))

(assert (=> b!5119668 d!1654695))

(declare-fun b!5120177 () Bool)

(declare-fun e!3193300 () List!59342)

(assert (=> b!5120177 (= e!3193300 lt!2110702)))

(declare-fun b!5120179 () Bool)

(declare-fun res!2180135 () Bool)

(declare-fun e!3193299 () Bool)

(assert (=> b!5120179 (=> (not res!2180135) (not e!3193299))))

(declare-fun lt!2110921 () List!59342)

(assert (=> b!5120179 (= res!2180135 (= (size!39517 lt!2110921) (+ (size!39517 (t!372359 testedP!265)) (size!39517 lt!2110702))))))

(declare-fun b!5120180 () Bool)

(assert (=> b!5120180 (= e!3193299 (or (not (= lt!2110702 Nil!59218)) (= lt!2110921 (t!372359 testedP!265))))))

(declare-fun b!5120178 () Bool)

(assert (=> b!5120178 (= e!3193300 (Cons!59218 (h!65666 (t!372359 testedP!265)) (++!13036 (t!372359 (t!372359 testedP!265)) lt!2110702)))))

(declare-fun d!1654871 () Bool)

(assert (=> d!1654871 e!3193299))

(declare-fun res!2180134 () Bool)

(assert (=> d!1654871 (=> (not res!2180134) (not e!3193299))))

(assert (=> d!1654871 (= res!2180134 (= (content!10530 lt!2110921) ((_ map or) (content!10530 (t!372359 testedP!265)) (content!10530 lt!2110702))))))

(assert (=> d!1654871 (= lt!2110921 e!3193300)))

(declare-fun c!879909 () Bool)

(assert (=> d!1654871 (= c!879909 ((_ is Nil!59218) (t!372359 testedP!265)))))

(assert (=> d!1654871 (= (++!13036 (t!372359 testedP!265) lt!2110702) lt!2110921)))

(assert (= (and d!1654871 c!879909) b!5120177))

(assert (= (and d!1654871 (not c!879909)) b!5120178))

(assert (= (and d!1654871 res!2180134) b!5120179))

(assert (= (and b!5120179 res!2180135) b!5120180))

(declare-fun m!6181142 () Bool)

(assert (=> b!5120179 m!6181142))

(assert (=> b!5120179 m!6180204))

(assert (=> b!5120179 m!6180336))

(declare-fun m!6181144 () Bool)

(assert (=> b!5120178 m!6181144))

(declare-fun m!6181146 () Bool)

(assert (=> d!1654871 m!6181146))

(assert (=> d!1654871 m!6180672))

(assert (=> d!1654871 m!6180342))

(assert (=> b!5119721 d!1654871))

(declare-fun d!1654877 () Bool)

(declare-fun lt!2110922 () Int)

(assert (=> d!1654877 (>= lt!2110922 0)))

(declare-fun e!3193303 () Int)

(assert (=> d!1654877 (= lt!2110922 e!3193303)))

(declare-fun c!879912 () Bool)

(assert (=> d!1654877 (= c!879912 ((_ is Nil!59218) lt!2110777))))

(assert (=> d!1654877 (= (size!39517 lt!2110777) lt!2110922)))

(declare-fun b!5120185 () Bool)

(assert (=> b!5120185 (= e!3193303 0)))

(declare-fun b!5120186 () Bool)

(assert (=> b!5120186 (= e!3193303 (+ 1 (size!39517 (t!372359 lt!2110777))))))

(assert (= (and d!1654877 c!879912) b!5120185))

(assert (= (and d!1654877 (not c!879912)) b!5120186))

(declare-fun m!6181152 () Bool)

(assert (=> b!5120186 m!6181152))

(assert (=> b!5119756 d!1654877))

(assert (=> b!5119756 d!1654725))

(assert (=> b!5119756 d!1654745))

(declare-fun d!1654881 () Bool)

(declare-fun c!879913 () Bool)

(assert (=> d!1654881 (= c!879913 ((_ is Nil!59218) lt!2110784))))

(declare-fun e!3193304 () (InoxSet C!28688))

(assert (=> d!1654881 (= (content!10530 lt!2110784) e!3193304)))

(declare-fun b!5120187 () Bool)

(assert (=> b!5120187 (= e!3193304 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120188 () Bool)

(assert (=> b!5120188 (= e!3193304 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110784) true) (content!10530 (t!372359 lt!2110784))))))

(assert (= (and d!1654881 c!879913) b!5120187))

(assert (= (and d!1654881 (not c!879913)) b!5120188))

(declare-fun m!6181154 () Bool)

(assert (=> b!5120188 m!6181154))

(declare-fun m!6181156 () Bool)

(assert (=> b!5120188 m!6181156))

(assert (=> d!1654535 d!1654881))

(assert (=> d!1654535 d!1654623))

(declare-fun d!1654883 () Bool)

(declare-fun c!879914 () Bool)

(assert (=> d!1654883 (= c!879914 ((_ is Nil!59218) lt!2110706))))

(declare-fun e!3193305 () (InoxSet C!28688))

(assert (=> d!1654883 (= (content!10530 lt!2110706) e!3193305)))

(declare-fun b!5120189 () Bool)

(assert (=> b!5120189 (= e!3193305 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120190 () Bool)

(assert (=> b!5120190 (= e!3193305 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110706) true) (content!10530 (t!372359 lt!2110706))))))

(assert (= (and d!1654883 c!879914) b!5120189))

(assert (= (and d!1654883 (not c!879914)) b!5120190))

(declare-fun m!6181158 () Bool)

(assert (=> b!5120190 m!6181158))

(declare-fun m!6181160 () Bool)

(assert (=> b!5120190 m!6181160))

(assert (=> d!1654535 d!1654883))

(declare-fun b!5120191 () Bool)

(declare-fun e!3193307 () List!59342)

(assert (=> b!5120191 (= e!3193307 lt!2110705)))

(declare-fun b!5120193 () Bool)

(declare-fun res!2180137 () Bool)

(declare-fun e!3193306 () Bool)

(assert (=> b!5120193 (=> (not res!2180137) (not e!3193306))))

(declare-fun lt!2110923 () List!59342)

(assert (=> b!5120193 (= res!2180137 (= (size!39517 lt!2110923) (+ (size!39517 (t!372359 testedP!265)) (size!39517 lt!2110705))))))

(declare-fun b!5120194 () Bool)

(assert (=> b!5120194 (= e!3193306 (or (not (= lt!2110705 Nil!59218)) (= lt!2110923 (t!372359 testedP!265))))))

(declare-fun b!5120192 () Bool)

(assert (=> b!5120192 (= e!3193307 (Cons!59218 (h!65666 (t!372359 testedP!265)) (++!13036 (t!372359 (t!372359 testedP!265)) lt!2110705)))))

(declare-fun d!1654885 () Bool)

(assert (=> d!1654885 e!3193306))

(declare-fun res!2180136 () Bool)

(assert (=> d!1654885 (=> (not res!2180136) (not e!3193306))))

(assert (=> d!1654885 (= res!2180136 (= (content!10530 lt!2110923) ((_ map or) (content!10530 (t!372359 testedP!265)) (content!10530 lt!2110705))))))

(assert (=> d!1654885 (= lt!2110923 e!3193307)))

(declare-fun c!879915 () Bool)

(assert (=> d!1654885 (= c!879915 ((_ is Nil!59218) (t!372359 testedP!265)))))

(assert (=> d!1654885 (= (++!13036 (t!372359 testedP!265) lt!2110705) lt!2110923)))

(assert (= (and d!1654885 c!879915) b!5120191))

(assert (= (and d!1654885 (not c!879915)) b!5120192))

(assert (= (and d!1654885 res!2180136) b!5120193))

(assert (= (and b!5120193 res!2180137) b!5120194))

(declare-fun m!6181162 () Bool)

(assert (=> b!5120193 m!6181162))

(assert (=> b!5120193 m!6180204))

(assert (=> b!5120193 m!6180222))

(declare-fun m!6181164 () Bool)

(assert (=> b!5120192 m!6181164))

(declare-fun m!6181166 () Bool)

(assert (=> d!1654885 m!6181166))

(assert (=> d!1654885 m!6180672))

(assert (=> d!1654885 m!6180230))

(assert (=> b!5119831 d!1654885))

(declare-fun bs!1192689 () Bool)

(declare-fun d!1654887 () Bool)

(assert (= bs!1192689 (and d!1654887 d!1654757)))

(declare-fun lambda!251291 () Int)

(assert (=> bs!1192689 (= lambda!251291 lambda!251281)))

(declare-fun bs!1192690 () Bool)

(assert (= bs!1192690 (and d!1654887 d!1654667)))

(assert (=> bs!1192690 (not (= lambda!251291 lambda!251268))))

(declare-fun bs!1192691 () Bool)

(assert (= bs!1192691 (and d!1654887 d!1654781)))

(assert (=> bs!1192691 (= (= lambda!251256 (ite c!879801 lambda!251257 lambda!251258)) (= lambda!251291 lambda!251284))))

(declare-fun bs!1192692 () Bool)

(assert (= bs!1192692 (and d!1654887 d!1654613)))

(assert (=> bs!1192692 (not (= lambda!251291 lambda!251265))))

(declare-fun bs!1192693 () Bool)

(assert (= bs!1192693 (and d!1654887 b!5119816)))

(assert (=> bs!1192693 (not (= lambda!251291 lambda!251257))))

(declare-fun bs!1192694 () Bool)

(assert (= bs!1192694 (and d!1654887 d!1654687)))

(assert (=> bs!1192694 (not (= lambda!251291 lambda!251275))))

(declare-fun bs!1192695 () Bool)

(assert (= bs!1192695 (and d!1654887 b!5119817)))

(assert (=> bs!1192695 (not (= lambda!251291 lambda!251258))))

(declare-fun bs!1192696 () Bool)

(assert (= bs!1192696 (and d!1654887 d!1654543)))

(assert (=> bs!1192696 (not (= lambda!251291 lambda!251256))))

(assert (=> d!1654887 true))

(assert (=> d!1654887 (< (dynLambda!23599 order!26787 lambda!251256) (dynLambda!23599 order!26787 lambda!251291))))

(assert (=> d!1654887 (exists!1475 lt!2110821 lambda!251291)))

(declare-fun lt!2110928 () Unit!150357)

(declare-fun choose!37644 (List!59344 Int) Unit!150357)

(assert (=> d!1654887 (= lt!2110928 (choose!37644 lt!2110821 lambda!251256))))

(assert (=> d!1654887 (not (forall!13613 lt!2110821 lambda!251256))))

(assert (=> d!1654887 (= (lemmaNotForallThenExists!338 lt!2110821 lambda!251256) lt!2110928)))

(declare-fun bs!1192697 () Bool)

(assert (= bs!1192697 d!1654887))

(declare-fun m!6181182 () Bool)

(assert (=> bs!1192697 m!6181182))

(declare-fun m!6181184 () Bool)

(assert (=> bs!1192697 m!6181184))

(declare-fun m!6181186 () Bool)

(assert (=> bs!1192697 m!6181186))

(assert (=> b!5119816 d!1654887))

(declare-fun b!5120207 () Bool)

(declare-fun e!3193320 () List!59342)

(assert (=> b!5120207 (= e!3193320 lt!2110704)))

(declare-fun b!5120209 () Bool)

(declare-fun res!2180147 () Bool)

(declare-fun e!3193319 () Bool)

(assert (=> b!5120209 (=> (not res!2180147) (not e!3193319))))

(declare-fun lt!2110929 () List!59342)

(assert (=> b!5120209 (= res!2180147 (= (size!39517 lt!2110929) (+ (size!39517 (t!372359 testedP!265)) (size!39517 lt!2110704))))))

(declare-fun b!5120210 () Bool)

(assert (=> b!5120210 (= e!3193319 (or (not (= lt!2110704 Nil!59218)) (= lt!2110929 (t!372359 testedP!265))))))

(declare-fun b!5120208 () Bool)

(assert (=> b!5120208 (= e!3193320 (Cons!59218 (h!65666 (t!372359 testedP!265)) (++!13036 (t!372359 (t!372359 testedP!265)) lt!2110704)))))

(declare-fun d!1654895 () Bool)

(assert (=> d!1654895 e!3193319))

(declare-fun res!2180146 () Bool)

(assert (=> d!1654895 (=> (not res!2180146) (not e!3193319))))

(assert (=> d!1654895 (= res!2180146 (= (content!10530 lt!2110929) ((_ map or) (content!10530 (t!372359 testedP!265)) (content!10530 lt!2110704))))))

(assert (=> d!1654895 (= lt!2110929 e!3193320)))

(declare-fun c!879918 () Bool)

(assert (=> d!1654895 (= c!879918 ((_ is Nil!59218) (t!372359 testedP!265)))))

(assert (=> d!1654895 (= (++!13036 (t!372359 testedP!265) lt!2110704) lt!2110929)))

(assert (= (and d!1654895 c!879918) b!5120207))

(assert (= (and d!1654895 (not c!879918)) b!5120208))

(assert (= (and d!1654895 res!2180146) b!5120209))

(assert (= (and b!5120209 res!2180147) b!5120210))

(declare-fun m!6181188 () Bool)

(assert (=> b!5120209 m!6181188))

(assert (=> b!5120209 m!6180204))

(assert (=> b!5120209 m!6180242))

(declare-fun m!6181192 () Bool)

(assert (=> b!5120208 m!6181192))

(declare-fun m!6181194 () Bool)

(assert (=> d!1654895 m!6181194))

(assert (=> d!1654895 m!6180672))

(assert (=> d!1654895 m!6180248))

(assert (=> b!5119671 d!1654895))

(declare-fun d!1654899 () Bool)

(declare-fun lt!2110930 () Int)

(assert (=> d!1654899 (>= lt!2110930 0)))

(declare-fun e!3193321 () Int)

(assert (=> d!1654899 (= lt!2110930 e!3193321)))

(declare-fun c!879919 () Bool)

(assert (=> d!1654899 (= c!879919 ((_ is Nil!59218) (t!372359 input!5745)))))

(assert (=> d!1654899 (= (size!39517 (t!372359 input!5745)) lt!2110930)))

(declare-fun b!5120211 () Bool)

(assert (=> b!5120211 (= e!3193321 0)))

(declare-fun b!5120212 () Bool)

(assert (=> b!5120212 (= e!3193321 (+ 1 (size!39517 (t!372359 (t!372359 input!5745)))))))

(assert (= (and d!1654899 c!879919) b!5120211))

(assert (= (and d!1654899 (not c!879919)) b!5120212))

(declare-fun m!6181196 () Bool)

(assert (=> b!5120212 m!6181196))

(assert (=> b!5119645 d!1654899))

(declare-fun d!1654901 () Bool)

(declare-fun c!879920 () Bool)

(assert (=> d!1654901 (= c!879920 ((_ is Nil!59218) lt!2110770))))

(declare-fun e!3193322 () (InoxSet C!28688))

(assert (=> d!1654901 (= (content!10530 lt!2110770) e!3193322)))

(declare-fun b!5120213 () Bool)

(assert (=> b!5120213 (= e!3193322 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120214 () Bool)

(assert (=> b!5120214 (= e!3193322 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110770) true) (content!10530 (t!372359 lt!2110770))))))

(assert (= (and d!1654901 c!879920) b!5120213))

(assert (= (and d!1654901 (not c!879920)) b!5120214))

(declare-fun m!6181198 () Bool)

(assert (=> b!5120214 m!6181198))

(declare-fun m!6181200 () Bool)

(assert (=> b!5120214 m!6181200))

(assert (=> d!1654495 d!1654901))

(assert (=> d!1654495 d!1654623))

(assert (=> d!1654495 d!1654651))

(declare-fun b!5120215 () Bool)

(declare-fun e!3193324 () List!59342)

(assert (=> b!5120215 (= e!3193324 lt!2110772)))

(declare-fun b!5120217 () Bool)

(declare-fun res!2180149 () Bool)

(declare-fun e!3193323 () Bool)

(assert (=> b!5120217 (=> (not res!2180149) (not e!3193323))))

(declare-fun lt!2110931 () List!59342)

(assert (=> b!5120217 (= res!2180149 (= (size!39517 lt!2110931) (+ (size!39517 knownP!20) (size!39517 lt!2110772))))))

(declare-fun b!5120218 () Bool)

(assert (=> b!5120218 (= e!3193323 (or (not (= lt!2110772 Nil!59218)) (= lt!2110931 knownP!20)))))

(declare-fun b!5120216 () Bool)

(assert (=> b!5120216 (= e!3193324 (Cons!59218 (h!65666 knownP!20) (++!13036 (t!372359 knownP!20) lt!2110772)))))

(declare-fun d!1654903 () Bool)

(assert (=> d!1654903 e!3193323))

(declare-fun res!2180148 () Bool)

(assert (=> d!1654903 (=> (not res!2180148) (not e!3193323))))

(assert (=> d!1654903 (= res!2180148 (= (content!10530 lt!2110931) ((_ map or) (content!10530 knownP!20) (content!10530 lt!2110772))))))

(assert (=> d!1654903 (= lt!2110931 e!3193324)))

(declare-fun c!879921 () Bool)

(assert (=> d!1654903 (= c!879921 ((_ is Nil!59218) knownP!20))))

(assert (=> d!1654903 (= (++!13036 knownP!20 lt!2110772) lt!2110931)))

(assert (= (and d!1654903 c!879921) b!5120215))

(assert (= (and d!1654903 (not c!879921)) b!5120216))

(assert (= (and d!1654903 res!2180148) b!5120217))

(assert (= (and b!5120217 res!2180149) b!5120218))

(declare-fun m!6181202 () Bool)

(assert (=> b!5120217 m!6181202))

(assert (=> b!5120217 m!6180152))

(declare-fun m!6181204 () Bool)

(assert (=> b!5120217 m!6181204))

(declare-fun m!6181206 () Bool)

(assert (=> b!5120216 m!6181206))

(declare-fun m!6181208 () Bool)

(assert (=> d!1654903 m!6181208))

(assert (=> d!1654903 m!6180312))

(declare-fun m!6181210 () Bool)

(assert (=> d!1654903 m!6181210))

(assert (=> d!1654501 d!1654903))

(assert (=> d!1654501 d!1654449))

(assert (=> d!1654501 d!1654457))

(declare-fun d!1654905 () Bool)

(assert (=> d!1654905 (= (derivationZipper!110 baseZ!46 (++!13036 testedP!265 (Cons!59218 lt!2110701 Nil!59218))) (derivationStepZipper!846 z!4463 lt!2110701))))

(assert (=> d!1654905 true))

(declare-fun _$83!236 () Unit!150357)

(assert (=> d!1654905 (= (choose!37630 baseZ!46 z!4463 testedP!265 lt!2110701) _$83!236)))

(declare-fun bs!1192704 () Bool)

(assert (= bs!1192704 d!1654905))

(assert (=> bs!1192704 m!6180256))

(assert (=> bs!1192704 m!6180256))

(assert (=> bs!1192704 m!6180260))

(assert (=> bs!1192704 m!6180128))

(assert (=> d!1654469 d!1654905))

(assert (=> d!1654469 d!1654471))

(assert (=> d!1654469 d!1654531))

(declare-fun b!5120225 () Bool)

(declare-fun e!3193330 () List!59342)

(assert (=> b!5120225 (= e!3193330 (Cons!59218 lt!2110701 Nil!59218))))

(declare-fun b!5120227 () Bool)

(declare-fun res!2180153 () Bool)

(declare-fun e!3193328 () Bool)

(assert (=> b!5120227 (=> (not res!2180153) (not e!3193328))))

(declare-fun lt!2110933 () List!59342)

(assert (=> b!5120227 (= res!2180153 (= (size!39517 lt!2110933) (+ (size!39517 testedP!265) (size!39517 (Cons!59218 lt!2110701 Nil!59218)))))))

(declare-fun b!5120228 () Bool)

(assert (=> b!5120228 (= e!3193328 (or (not (= (Cons!59218 lt!2110701 Nil!59218) Nil!59218)) (= lt!2110933 testedP!265)))))

(declare-fun b!5120226 () Bool)

(assert (=> b!5120226 (= e!3193330 (Cons!59218 (h!65666 testedP!265) (++!13036 (t!372359 testedP!265) (Cons!59218 lt!2110701 Nil!59218))))))

(declare-fun d!1654911 () Bool)

(assert (=> d!1654911 e!3193328))

(declare-fun res!2180152 () Bool)

(assert (=> d!1654911 (=> (not res!2180152) (not e!3193328))))

(assert (=> d!1654911 (= res!2180152 (= (content!10530 lt!2110933) ((_ map or) (content!10530 testedP!265) (content!10530 (Cons!59218 lt!2110701 Nil!59218)))))))

(assert (=> d!1654911 (= lt!2110933 e!3193330)))

(declare-fun c!879926 () Bool)

(assert (=> d!1654911 (= c!879926 ((_ is Nil!59218) testedP!265))))

(assert (=> d!1654911 (= (++!13036 testedP!265 (Cons!59218 lt!2110701 Nil!59218)) lt!2110933)))

(assert (= (and d!1654911 c!879926) b!5120225))

(assert (= (and d!1654911 (not c!879926)) b!5120226))

(assert (= (and d!1654911 res!2180152) b!5120227))

(assert (= (and b!5120227 res!2180153) b!5120228))

(declare-fun m!6181228 () Bool)

(assert (=> b!5120227 m!6181228))

(assert (=> b!5120227 m!6180150))

(declare-fun m!6181232 () Bool)

(assert (=> b!5120227 m!6181232))

(declare-fun m!6181236 () Bool)

(assert (=> b!5120226 m!6181236))

(declare-fun m!6181238 () Bool)

(assert (=> d!1654911 m!6181238))

(assert (=> d!1654911 m!6180216))

(declare-fun m!6181240 () Bool)

(assert (=> d!1654911 m!6181240))

(assert (=> d!1654469 d!1654911))

(declare-fun d!1654917 () Bool)

(declare-fun c!879928 () Bool)

(assert (=> d!1654917 (= c!879928 ((_ is Cons!59218) (++!13036 testedP!265 (Cons!59218 lt!2110701 Nil!59218))))))

(declare-fun e!3193332 () (InoxSet Context!7190))

(assert (=> d!1654917 (= (derivationZipper!110 baseZ!46 (++!13036 testedP!265 (Cons!59218 lt!2110701 Nil!59218))) e!3193332)))

(declare-fun b!5120233 () Bool)

(assert (=> b!5120233 (= e!3193332 (derivationZipper!110 (derivationStepZipper!846 baseZ!46 (h!65666 (++!13036 testedP!265 (Cons!59218 lt!2110701 Nil!59218)))) (t!372359 (++!13036 testedP!265 (Cons!59218 lt!2110701 Nil!59218)))))))

(declare-fun b!5120234 () Bool)

(assert (=> b!5120234 (= e!3193332 baseZ!46)))

(assert (= (and d!1654917 c!879928) b!5120233))

(assert (= (and d!1654917 (not c!879928)) b!5120234))

(declare-fun m!6181242 () Bool)

(assert (=> b!5120233 m!6181242))

(assert (=> b!5120233 m!6181242))

(declare-fun m!6181244 () Bool)

(assert (=> b!5120233 m!6181244))

(assert (=> d!1654469 d!1654917))

(declare-fun d!1654921 () Bool)

(declare-fun c!879930 () Bool)

(assert (=> d!1654921 (= c!879930 ((_ is Nil!59218) lt!2110829))))

(declare-fun e!3193335 () (InoxSet C!28688))

(assert (=> d!1654921 (= (content!10530 lt!2110829) e!3193335)))

(declare-fun b!5120239 () Bool)

(assert (=> b!5120239 (= e!3193335 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120240 () Bool)

(assert (=> b!5120240 (= e!3193335 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110829) true) (content!10530 (t!372359 lt!2110829))))))

(assert (= (and d!1654921 c!879930) b!5120239))

(assert (= (and d!1654921 (not c!879930)) b!5120240))

(declare-fun m!6181252 () Bool)

(assert (=> b!5120240 m!6181252))

(declare-fun m!6181254 () Bool)

(assert (=> b!5120240 m!6181254))

(assert (=> d!1654567 d!1654921))

(assert (=> d!1654567 d!1654623))

(assert (=> d!1654567 d!1654717))

(declare-fun d!1654925 () Bool)

(declare-fun c!879932 () Bool)

(assert (=> d!1654925 (= c!879932 ((_ is Nil!59218) lt!2110726))))

(declare-fun e!3193337 () (InoxSet C!28688))

(assert (=> d!1654925 (= (content!10530 lt!2110726) e!3193337)))

(declare-fun b!5120243 () Bool)

(assert (=> b!5120243 (= e!3193337 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120244 () Bool)

(assert (=> b!5120244 (= e!3193337 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110726) true) (content!10530 (t!372359 lt!2110726))))))

(assert (= (and d!1654925 c!879932) b!5120243))

(assert (= (and d!1654925 (not c!879932)) b!5120244))

(declare-fun m!6181258 () Bool)

(assert (=> b!5120244 m!6181258))

(declare-fun m!6181262 () Bool)

(assert (=> b!5120244 m!6181262))

(assert (=> d!1654465 d!1654925))

(assert (=> d!1654465 d!1654623))

(declare-fun d!1654929 () Bool)

(declare-fun c!879934 () Bool)

(assert (=> d!1654929 (= c!879934 ((_ is Nil!59218) lt!2110704))))

(declare-fun e!3193339 () (InoxSet C!28688))

(assert (=> d!1654929 (= (content!10530 lt!2110704) e!3193339)))

(declare-fun b!5120246 () Bool)

(assert (=> b!5120246 (= e!3193339 ((as const (Array C!28688 Bool)) false))))

(declare-fun b!5120248 () Bool)

(assert (=> b!5120248 (= e!3193339 ((_ map or) (store ((as const (Array C!28688 Bool)) false) (h!65666 lt!2110704) true) (content!10530 (t!372359 lt!2110704))))))

(assert (= (and d!1654929 c!879934) b!5120246))

(assert (= (and d!1654929 (not c!879934)) b!5120248))

(declare-fun m!6181266 () Bool)

(assert (=> b!5120248 m!6181266))

(declare-fun m!6181270 () Bool)

(assert (=> b!5120248 m!6181270))

(assert (=> d!1654465 d!1654929))

(declare-fun d!1654931 () Bool)

(declare-fun lt!2110937 () List!59342)

(assert (=> d!1654931 (= (++!13036 (t!372359 testedP!265) lt!2110937) (tail!10076 input!5745))))

(declare-fun e!3193341 () List!59342)

(assert (=> d!1654931 (= lt!2110937 e!3193341)))

(declare-fun c!879936 () Bool)

(assert (=> d!1654931 (= c!879936 ((_ is Cons!59218) (t!372359 testedP!265)))))

(assert (=> d!1654931 (>= (size!39517 (tail!10076 input!5745)) (size!39517 (t!372359 testedP!265)))))

(assert (=> d!1654931 (= (getSuffix!3290 (tail!10076 input!5745) (t!372359 testedP!265)) lt!2110937)))

(declare-fun b!5120251 () Bool)

(assert (=> b!5120251 (= e!3193341 (getSuffix!3290 (tail!10076 (tail!10076 input!5745)) (t!372359 (t!372359 testedP!265))))))

(declare-fun b!5120252 () Bool)

(assert (=> b!5120252 (= e!3193341 (tail!10076 input!5745))))

(assert (= (and d!1654931 c!879936) b!5120251))

(assert (= (and d!1654931 (not c!879936)) b!5120252))

(declare-fun m!6181274 () Bool)

(assert (=> d!1654931 m!6181274))

(assert (=> d!1654931 m!6180252))

(assert (=> d!1654931 m!6180752))

(assert (=> d!1654931 m!6180204))

(assert (=> b!5120251 m!6180252))

(assert (=> b!5120251 m!6180758))

(assert (=> b!5120251 m!6180758))

(declare-fun m!6181278 () Bool)

(assert (=> b!5120251 m!6181278))

(assert (=> b!5119678 d!1654931))

(assert (=> b!5119678 d!1654659))

(declare-fun d!1654939 () Bool)

(assert (=> d!1654939 (= lt!2110706 lt!2110705)))

(assert (=> d!1654939 true))

(declare-fun _$63!1257 () Unit!150357)

(assert (=> d!1654939 (= (choose!37628 testedP!265 lt!2110706 testedP!265 lt!2110705 knownP!20) _$63!1257)))

(assert (=> d!1654533 d!1654939))

(assert (=> d!1654533 d!1654509))

(declare-fun d!1654941 () Bool)

(declare-fun lt!2110940 () List!59342)

(assert (=> d!1654941 (= (++!13036 (t!372359 knownP!20) lt!2110940) (tail!10076 input!5745))))

(declare-fun e!3193345 () List!59342)

(assert (=> d!1654941 (= lt!2110940 e!3193345)))

(declare-fun c!879939 () Bool)

(assert (=> d!1654941 (= c!879939 ((_ is Cons!59218) (t!372359 knownP!20)))))

(assert (=> d!1654941 (>= (size!39517 (tail!10076 input!5745)) (size!39517 (t!372359 knownP!20)))))

(assert (=> d!1654941 (= (getSuffix!3290 (tail!10076 input!5745) (t!372359 knownP!20)) lt!2110940)))

(declare-fun b!5120259 () Bool)

(assert (=> b!5120259 (= e!3193345 (getSuffix!3290 (tail!10076 (tail!10076 input!5745)) (t!372359 (t!372359 knownP!20))))))

(declare-fun b!5120260 () Bool)

(assert (=> b!5120260 (= e!3193345 (tail!10076 input!5745))))

(assert (= (and d!1654941 c!879939) b!5120259))

(assert (= (and d!1654941 (not c!879939)) b!5120260))

(declare-fun m!6181290 () Bool)

(assert (=> d!1654941 m!6181290))

(assert (=> d!1654941 m!6180252))

(assert (=> d!1654941 m!6180752))

(assert (=> d!1654941 m!6180206))

(assert (=> b!5120259 m!6180252))

(assert (=> b!5120259 m!6180758))

(assert (=> b!5120259 m!6180758))

(declare-fun m!6181292 () Bool)

(assert (=> b!5120259 m!6181292))

(assert (=> b!5119728 d!1654941))

(assert (=> b!5119728 d!1654659))

(declare-fun b!5120265 () Bool)

(declare-fun e!3193348 () Bool)

(declare-fun tp!1428322 () Bool)

(declare-fun tp!1428323 () Bool)

(assert (=> b!5120265 (= e!3193348 (and tp!1428322 tp!1428323))))

(assert (=> b!5119856 (= tp!1428300 e!3193348)))

(assert (= (and b!5119856 ((_ is Cons!59217) (exprs!4095 setElem!30314))) b!5120265))

(declare-fun b!5120268 () Bool)

(declare-fun e!3193350 () Bool)

(declare-fun tp!1428324 () Bool)

(assert (=> b!5120268 (= e!3193350 (and tp_is_empty!37695 tp!1428324))))

(assert (=> b!5119842 (= tp!1428282 e!3193350)))

(assert (= (and b!5119842 ((_ is Cons!59218) (t!372359 (t!372359 input!5745)))) b!5120268))

(declare-fun b!5120282 () Bool)

(declare-fun e!3193353 () Bool)

(declare-fun tp!1428339 () Bool)

(declare-fun tp!1428335 () Bool)

(assert (=> b!5120282 (= e!3193353 (and tp!1428339 tp!1428335))))

(declare-fun b!5120279 () Bool)

(assert (=> b!5120279 (= e!3193353 tp_is_empty!37695)))

(declare-fun b!5120280 () Bool)

(declare-fun tp!1428337 () Bool)

(declare-fun tp!1428336 () Bool)

(assert (=> b!5120280 (= e!3193353 (and tp!1428337 tp!1428336))))

(assert (=> b!5119847 (= tp!1428287 e!3193353)))

(declare-fun b!5120281 () Bool)

(declare-fun tp!1428338 () Bool)

(assert (=> b!5120281 (= e!3193353 tp!1428338)))

(assert (= (and b!5119847 ((_ is ElementMatch!14211) (h!65665 (exprs!4095 setElem!30309)))) b!5120279))

(assert (= (and b!5119847 ((_ is Concat!23056) (h!65665 (exprs!4095 setElem!30309)))) b!5120280))

(assert (= (and b!5119847 ((_ is Star!14211) (h!65665 (exprs!4095 setElem!30309)))) b!5120281))

(assert (= (and b!5119847 ((_ is Union!14211) (h!65665 (exprs!4095 setElem!30309)))) b!5120282))

(declare-fun b!5120283 () Bool)

(declare-fun e!3193354 () Bool)

(declare-fun tp!1428340 () Bool)

(declare-fun tp!1428341 () Bool)

(assert (=> b!5120283 (= e!3193354 (and tp!1428340 tp!1428341))))

(assert (=> b!5119847 (= tp!1428288 e!3193354)))

(assert (= (and b!5119847 ((_ is Cons!59217) (t!372358 (exprs!4095 setElem!30309)))) b!5120283))

(declare-fun b!5120284 () Bool)

(declare-fun e!3193355 () Bool)

(declare-fun tp!1428342 () Bool)

(declare-fun tp!1428343 () Bool)

(assert (=> b!5120284 (= e!3193355 (and tp!1428342 tp!1428343))))

(assert (=> b!5119852 (= tp!1428294 e!3193355)))

(assert (= (and b!5119852 ((_ is Cons!59217) (exprs!4095 setElem!30313))) b!5120284))

(declare-fun b!5120288 () Bool)

(declare-fun e!3193356 () Bool)

(declare-fun tp!1428348 () Bool)

(declare-fun tp!1428344 () Bool)

(assert (=> b!5120288 (= e!3193356 (and tp!1428348 tp!1428344))))

(declare-fun b!5120285 () Bool)

(assert (=> b!5120285 (= e!3193356 tp_is_empty!37695)))

(declare-fun b!5120286 () Bool)

(declare-fun tp!1428346 () Bool)

(declare-fun tp!1428345 () Bool)

(assert (=> b!5120286 (= e!3193356 (and tp!1428346 tp!1428345))))

(assert (=> b!5119855 (= tp!1428297 e!3193356)))

(declare-fun b!5120287 () Bool)

(declare-fun tp!1428347 () Bool)

(assert (=> b!5120287 (= e!3193356 tp!1428347)))

(assert (= (and b!5119855 ((_ is ElementMatch!14211) (h!65665 (exprs!4095 setElem!30310)))) b!5120285))

(assert (= (and b!5119855 ((_ is Concat!23056) (h!65665 (exprs!4095 setElem!30310)))) b!5120286))

(assert (= (and b!5119855 ((_ is Star!14211) (h!65665 (exprs!4095 setElem!30310)))) b!5120287))

(assert (= (and b!5119855 ((_ is Union!14211) (h!65665 (exprs!4095 setElem!30310)))) b!5120288))

(declare-fun b!5120289 () Bool)

(declare-fun e!3193357 () Bool)

(declare-fun tp!1428349 () Bool)

(declare-fun tp!1428350 () Bool)

(assert (=> b!5120289 (= e!3193357 (and tp!1428349 tp!1428350))))

(assert (=> b!5119855 (= tp!1428298 e!3193357)))

(assert (= (and b!5119855 ((_ is Cons!59217) (t!372358 (exprs!4095 setElem!30310)))) b!5120289))

(declare-fun b!5120290 () Bool)

(declare-fun e!3193358 () Bool)

(declare-fun tp!1428351 () Bool)

(assert (=> b!5120290 (= e!3193358 (and tp_is_empty!37695 tp!1428351))))

(assert (=> b!5119854 (= tp!1428296 e!3193358)))

(assert (= (and b!5119854 ((_ is Cons!59218) (t!372359 (t!372359 knownP!20)))) b!5120290))

(declare-fun condSetEmpty!30319 () Bool)

(assert (=> setNonEmpty!30314 (= condSetEmpty!30319 (= setRest!30314 ((as const (Array Context!7190 Bool)) false)))))

(declare-fun setRes!30319 () Bool)

(assert (=> setNonEmpty!30314 (= tp!1428299 setRes!30319)))

(declare-fun setIsEmpty!30319 () Bool)

(assert (=> setIsEmpty!30319 setRes!30319))

(declare-fun setElem!30319 () Context!7190)

(declare-fun setNonEmpty!30319 () Bool)

(declare-fun e!3193359 () Bool)

(declare-fun tp!1428352 () Bool)

(assert (=> setNonEmpty!30319 (= setRes!30319 (and tp!1428352 (inv!78708 setElem!30319) e!3193359))))

(declare-fun setRest!30319 () (InoxSet Context!7190))

(assert (=> setNonEmpty!30319 (= setRest!30314 ((_ map or) (store ((as const (Array Context!7190 Bool)) false) setElem!30319 true) setRest!30319))))

(declare-fun b!5120291 () Bool)

(declare-fun tp!1428353 () Bool)

(assert (=> b!5120291 (= e!3193359 tp!1428353)))

(assert (= (and setNonEmpty!30314 condSetEmpty!30319) setIsEmpty!30319))

(assert (= (and setNonEmpty!30314 (not condSetEmpty!30319)) setNonEmpty!30319))

(assert (= setNonEmpty!30319 b!5120291))

(declare-fun m!6181312 () Bool)

(assert (=> setNonEmpty!30319 m!6181312))

(declare-fun b!5120292 () Bool)

(declare-fun e!3193360 () Bool)

(declare-fun tp!1428354 () Bool)

(assert (=> b!5120292 (= e!3193360 (and tp_is_empty!37695 tp!1428354))))

(assert (=> b!5119853 (= tp!1428295 e!3193360)))

(assert (= (and b!5119853 ((_ is Cons!59218) (t!372359 (t!372359 testedP!265)))) b!5120292))

(declare-fun condSetEmpty!30320 () Bool)

(assert (=> setNonEmpty!30313 (= condSetEmpty!30320 (= setRest!30313 ((as const (Array Context!7190 Bool)) false)))))

(declare-fun setRes!30320 () Bool)

(assert (=> setNonEmpty!30313 (= tp!1428293 setRes!30320)))

(declare-fun setIsEmpty!30320 () Bool)

(assert (=> setIsEmpty!30320 setRes!30320))

(declare-fun tp!1428355 () Bool)

(declare-fun e!3193361 () Bool)

(declare-fun setNonEmpty!30320 () Bool)

(declare-fun setElem!30320 () Context!7190)

(assert (=> setNonEmpty!30320 (= setRes!30320 (and tp!1428355 (inv!78708 setElem!30320) e!3193361))))

(declare-fun setRest!30320 () (InoxSet Context!7190))

(assert (=> setNonEmpty!30320 (= setRest!30313 ((_ map or) (store ((as const (Array Context!7190 Bool)) false) setElem!30320 true) setRest!30320))))

(declare-fun b!5120293 () Bool)

(declare-fun tp!1428356 () Bool)

(assert (=> b!5120293 (= e!3193361 tp!1428356)))

(assert (= (and setNonEmpty!30313 condSetEmpty!30320) setIsEmpty!30320))

(assert (= (and setNonEmpty!30313 (not condSetEmpty!30320)) setNonEmpty!30320))

(assert (= setNonEmpty!30320 b!5120293))

(declare-fun m!6181314 () Bool)

(assert (=> setNonEmpty!30320 m!6181314))

(declare-fun b_lambda!198915 () Bool)

(assert (= b_lambda!198909 (or d!1654569 b_lambda!198915)))

(declare-fun bs!1192707 () Bool)

(declare-fun d!1654953 () Bool)

(assert (= bs!1192707 (and d!1654953 d!1654569)))

(declare-fun validRegex!6210 (Regex!14211) Bool)

(assert (=> bs!1192707 (= (dynLambda!23596 lambda!251259 (h!65665 (exprs!4095 setElem!30310))) (validRegex!6210 (h!65665 (exprs!4095 setElem!30310))))))

(declare-fun m!6181316 () Bool)

(assert (=> bs!1192707 m!6181316))

(assert (=> b!5119962 d!1654953))

(declare-fun b_lambda!198917 () Bool)

(assert (= b_lambda!198911 (or d!1654451 b_lambda!198917)))

(declare-fun bs!1192708 () Bool)

(declare-fun d!1654955 () Bool)

(assert (= bs!1192708 (and d!1654955 d!1654451)))

(assert (=> bs!1192708 (= (dynLambda!23596 lambda!251221 (h!65665 (exprs!4095 setElem!30309))) (validRegex!6210 (h!65665 (exprs!4095 setElem!30309))))))

(declare-fun m!6181318 () Bool)

(assert (=> bs!1192708 m!6181318))

(assert (=> b!5120161 d!1654955))

(check-sat (not b!5120052) (not b!5120008) (not b!5120168) (not b!5120045) (not b!5120044) (not b!5120217) (not d!1654859) (not b!5120176) (not b_lambda!198915) (not b!5120011) (not b!5120034) (not b!5120214) (not d!1654867) (not b!5120016) (not b!5120024) (not d!1654863) (not b!5120149) (not b!5120014) (not bs!1192708) (not d!1654845) (not b!5119990) (not b!5120102) (not b!5119992) (not b!5120110) (not b!5119933) (not b!5120208) (not b!5119983) (not b!5120056) (not b!5119987) (not b!5120192) (not b!5120164) (not b!5120010) (not d!1654931) (not b!5119991) (not d!1654911) (not b!5120282) (not b!5120054) (not d!1654629) (not b!5120101) (not b!5120158) (not d!1654905) (not b!5120209) (not b!5119984) (not setNonEmpty!30319) (not b!5120061) (not d!1654723) (not d!1654613) (not d!1654941) (not b!5119979) (not d!1654619) (not d!1654617) (not d!1654663) (not b!5120283) (not b!5120173) (not b!5120288) (not b!5120032) (not b!5119925) (not b!5120026) (not b!5120280) (not d!1654729) (not d!1654645) (not b!5120027) (not b!5120019) (not b!5119978) (not b!5120244) (not b!5120188) (not b!5119996) (not b!5119935) (not b!5120046) (not d!1654903) (not b!5120047) (not setNonEmpty!30320) (not b!5120186) (not b!5120178) (not b!5119970) (not d!1654687) (not d!1654825) (not d!1654627) (not b!5120066) (not b!5120268) (not b!5120140) (not d!1654801) (not b_lambda!198917) (not d!1654791) (not d!1654689) (not b!5119937) (not b!5120233) (not b!5120159) (not d!1654887) (not b!5120292) (not b!5119972) (not b!5120286) (not b!5120265) (not b!5119955) (not b!5120118) (not b!5119976) (not b!5120281) (not d!1654635) (not b!5119943) (not d!1654653) (not b!5119940) (not b!5119973) (not b!5120108) (not b!5120162) (not d!1654855) tp_is_empty!37695 (not b!5119967) (not d!1654749) (not b!5120060) (not b!5120287) (not b!5120251) (not b!5120141) (not d!1654857) (not d!1654697) (not b!5120284) (not b!5119965) (not b!5119963) (not b!5119957) (not b!5120048) (not b!5119944) (not d!1654667) (not b!5120293) (not d!1654741) (not b!5119974) (not b!5119953) (not b!5120155) (not b!5120291) (not b!5120169) (not d!1654821) (not b!5120150) (not b!5120122) (not b!5120001) (not b!5120030) (not b!5119947) (not b!5120290) (not b!5120226) (not b!5120193) (not d!1654865) (not d!1654699) (not b!5120018) (not d!1654673) (not b!5120006) (not d!1654871) (not b!5119926) (not b!5120004) (not b!5120050) (not b!5120154) (not b!5120240) (not d!1654885) (not b!5119922) (not b!5120289) (not b!5119982) (not b!5120058) (not d!1654631) (not b!5120038) (not b!5120036) (not b!5119994) (not b!5120190) (not b!5120064) (not b!5119939) (not bs!1192707) (not d!1654633) (not b!5120042) (not b!5120179) (not b!5120216) (not d!1654707) (not d!1654793) (not b!5120111) (not b!5119950) (not d!1654731) (not b!5120259) (not b!5120148) (not b!5120212) (not d!1654713) (not d!1654757) (not d!1654781) (not b!5120165) (not d!1654895) (not b!5120022) (not b!5120227) (not b!5119948) (not b!5120112) (not b!5119986) (not b!5120039) (not b!5120248))
(check-sat)
