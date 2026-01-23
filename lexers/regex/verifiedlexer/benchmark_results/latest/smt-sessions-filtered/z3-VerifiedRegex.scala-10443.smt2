; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539780 () Bool)

(assert start!539780)

(declare-fun b!5115640 () Bool)

(declare-fun e!3190499 () Bool)

(declare-fun e!3190498 () Bool)

(assert (=> b!5115640 (= e!3190499 e!3190498)))

(declare-fun res!2177839 () Bool)

(assert (=> b!5115640 (=> res!2177839 e!3190498)))

(declare-datatypes ((C!28620 0))(
  ( (C!28621 (val!23962 Int)) )
))
(declare-datatypes ((List!59257 0))(
  ( (Nil!59133) (Cons!59133 (h!65581 C!28620) (t!372268 List!59257)) )
))
(declare-fun lt!2107883 () List!59257)

(declare-fun lt!2107894 () List!59257)

(assert (=> b!5115640 (= res!2177839 (not (= lt!2107883 lt!2107894)))))

(declare-fun lt!2107875 () List!59257)

(declare-fun lt!2107869 () List!59257)

(assert (=> b!5115640 (= lt!2107875 lt!2107869)))

(declare-fun testedP!265 () List!59257)

(declare-datatypes ((Unit!150257 0))(
  ( (Unit!150258) )
))
(declare-fun lt!2107886 () Unit!150257)

(declare-fun knownP!20 () List!59257)

(declare-fun lemmaSamePrefixThenSameSuffix!2628 (List!59257 List!59257 List!59257 List!59257 List!59257) Unit!150257)

(assert (=> b!5115640 (= lt!2107886 (lemmaSamePrefixThenSameSuffix!2628 testedP!265 lt!2107875 testedP!265 lt!2107869 knownP!20))))

(declare-fun lt!2107892 () List!59257)

(declare-fun ++!13002 (List!59257 List!59257) List!59257)

(assert (=> b!5115640 (= lt!2107892 (++!13002 testedP!265 lt!2107875))))

(declare-fun lt!2107877 () List!59257)

(assert (=> b!5115640 (= lt!2107875 (++!13002 lt!2107877 lt!2107894))))

(declare-fun lt!2107885 () Unit!150257)

(declare-fun lemmaConcatAssociativity!2760 (List!59257 List!59257 List!59257) Unit!150257)

(assert (=> b!5115640 (= lt!2107885 (lemmaConcatAssociativity!2760 testedP!265 lt!2107877 lt!2107894))))

(declare-fun setNonEmpty!30033 () Bool)

(declare-fun e!3190504 () Bool)

(declare-datatypes ((Regex!14177 0))(
  ( (ElementMatch!14177 (c!879011 C!28620)) (Concat!23022 (regOne!28866 Regex!14177) (regTwo!28866 Regex!14177)) (EmptyExpr!14177) (Star!14177 (reg!14506 Regex!14177)) (EmptyLang!14177) (Union!14177 (regOne!28867 Regex!14177) (regTwo!28867 Regex!14177)) )
))
(declare-datatypes ((List!59258 0))(
  ( (Nil!59134) (Cons!59134 (h!65582 Regex!14177) (t!372269 List!59258)) )
))
(declare-datatypes ((Context!7122 0))(
  ( (Context!7123 (exprs!4061 List!59258)) )
))
(declare-fun setElem!30034 () Context!7122)

(declare-fun setRes!30034 () Bool)

(declare-fun tp!1427187 () Bool)

(declare-fun inv!78623 (Context!7122) Bool)

(assert (=> setNonEmpty!30033 (= setRes!30034 (and tp!1427187 (inv!78623 setElem!30034) e!3190504))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4463 () (InoxSet Context!7122))

(declare-fun setRest!30033 () (InoxSet Context!7122))

(assert (=> setNonEmpty!30033 (= z!4463 ((_ map or) (store ((as const (Array Context!7122 Bool)) false) setElem!30034 true) setRest!30033))))

(declare-fun b!5115641 () Bool)

(declare-fun e!3190511 () Bool)

(declare-fun e!3190508 () Bool)

(assert (=> b!5115641 (= e!3190511 e!3190508)))

(declare-fun res!2177835 () Bool)

(assert (=> b!5115641 (=> res!2177835 e!3190508)))

(declare-fun lt!2107872 () List!59257)

(declare-fun input!5745 () List!59257)

(assert (=> b!5115641 (= res!2177835 (not (= lt!2107872 input!5745)))))

(declare-fun lt!2107881 () List!59257)

(assert (=> b!5115641 (= lt!2107881 lt!2107872)))

(declare-fun lt!2107880 () List!59257)

(assert (=> b!5115641 (= lt!2107872 (++!13002 testedP!265 lt!2107880))))

(declare-fun lt!2107889 () List!59257)

(assert (=> b!5115641 (= lt!2107880 (++!13002 lt!2107869 lt!2107889))))

(declare-fun lt!2107884 () Unit!150257)

(assert (=> b!5115641 (= lt!2107884 (lemmaConcatAssociativity!2760 testedP!265 lt!2107869 lt!2107889))))

(declare-fun setIsEmpty!30033 () Bool)

(assert (=> setIsEmpty!30033 setRes!30034))

(declare-fun b!5115643 () Bool)

(declare-fun res!2177825 () Bool)

(declare-fun e!3190505 () Bool)

(assert (=> b!5115643 (=> res!2177825 e!3190505)))

(declare-fun lt!2107887 () Int)

(declare-fun lt!2107871 () Int)

(assert (=> b!5115643 (= res!2177825 (= lt!2107887 lt!2107871))))

(declare-fun b!5115644 () Bool)

(declare-fun tp!1427181 () Bool)

(assert (=> b!5115644 (= e!3190504 tp!1427181)))

(declare-fun b!5115645 () Bool)

(declare-fun e!3190501 () Bool)

(declare-fun tp!1427185 () Bool)

(assert (=> b!5115645 (= e!3190501 tp!1427185)))

(declare-fun b!5115646 () Bool)

(declare-fun e!3190510 () Bool)

(declare-fun tp_is_empty!37627 () Bool)

(declare-fun tp!1427184 () Bool)

(assert (=> b!5115646 (= e!3190510 (and tp_is_empty!37627 tp!1427184))))

(declare-fun b!5115647 () Bool)

(declare-fun res!2177840 () Bool)

(declare-fun e!3190500 () Bool)

(assert (=> b!5115647 (=> (not res!2177840) (not e!3190500))))

(declare-fun baseZ!46 () (InoxSet Context!7122))

(declare-fun matchZipper!845 ((InoxSet Context!7122) List!59257) Bool)

(assert (=> b!5115647 (= res!2177840 (matchZipper!845 baseZ!46 knownP!20))))

(declare-fun b!5115648 () Bool)

(declare-fun res!2177830 () Bool)

(assert (=> b!5115648 (=> res!2177830 e!3190505)))

(declare-fun lostCauseZipper!1063 ((InoxSet Context!7122)) Bool)

(assert (=> b!5115648 (= res!2177830 (lostCauseZipper!1063 z!4463))))

(declare-fun b!5115649 () Bool)

(assert (=> b!5115649 (= e!3190500 (not e!3190505))))

(declare-fun res!2177837 () Bool)

(assert (=> b!5115649 (=> res!2177837 e!3190505)))

(assert (=> b!5115649 (= res!2177837 (not (matchZipper!845 z!4463 lt!2107869)))))

(declare-fun getSuffix!3256 (List!59257 List!59257) List!59257)

(assert (=> b!5115649 (= lt!2107869 (getSuffix!3256 knownP!20 testedP!265))))

(declare-fun isPrefix!5582 (List!59257 List!59257) Bool)

(assert (=> b!5115649 (isPrefix!5582 testedP!265 knownP!20)))

(declare-fun lt!2107873 () Unit!150257)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!719 (List!59257 List!59257 List!59257) Unit!150257)

(assert (=> b!5115649 (= lt!2107873 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!719 knownP!20 testedP!265 input!5745))))

(declare-fun b!5115650 () Bool)

(declare-fun res!2177834 () Bool)

(assert (=> b!5115650 (=> res!2177834 e!3190498)))

(declare-fun lt!2107893 () List!59257)

(declare-fun size!39483 (List!59257) Int)

(assert (=> b!5115650 (= res!2177834 (< lt!2107871 (size!39483 lt!2107893)))))

(declare-fun b!5115651 () Bool)

(declare-fun e!3190506 () Bool)

(assert (=> b!5115651 (= e!3190506 e!3190500)))

(declare-fun res!2177836 () Bool)

(assert (=> b!5115651 (=> (not res!2177836) (not e!3190500))))

(assert (=> b!5115651 (= res!2177836 (>= lt!2107871 lt!2107887))))

(assert (=> b!5115651 (= lt!2107887 (size!39483 testedP!265))))

(assert (=> b!5115651 (= lt!2107871 (size!39483 knownP!20))))

(declare-fun b!5115652 () Bool)

(declare-fun e!3190509 () Bool)

(assert (=> b!5115652 (= e!3190509 e!3190499)))

(declare-fun res!2177828 () Bool)

(assert (=> b!5115652 (=> res!2177828 e!3190499)))

(assert (=> b!5115652 (= res!2177828 (not (= lt!2107892 knownP!20)))))

(assert (=> b!5115652 (= lt!2107892 (++!13002 lt!2107893 lt!2107894))))

(declare-fun b!5115653 () Bool)

(declare-fun res!2177824 () Bool)

(assert (=> b!5115653 (=> res!2177824 e!3190511)))

(declare-fun lt!2107870 () List!59257)

(assert (=> b!5115653 (= res!2177824 (not (= (++!13002 testedP!265 lt!2107870) input!5745)))))

(declare-fun b!5115654 () Bool)

(declare-fun e!3190502 () Bool)

(declare-fun tp!1427186 () Bool)

(assert (=> b!5115654 (= e!3190502 (and tp_is_empty!37627 tp!1427186))))

(declare-fun b!5115655 () Bool)

(declare-fun res!2177823 () Bool)

(assert (=> b!5115655 (=> res!2177823 e!3190505)))

(assert (=> b!5115655 (= res!2177823 (>= lt!2107887 (size!39483 input!5745)))))

(declare-fun b!5115656 () Bool)

(declare-fun res!2177832 () Bool)

(assert (=> b!5115656 (=> res!2177832 e!3190509)))

(declare-fun lt!2107879 () List!59257)

(assert (=> b!5115656 (= res!2177832 (not (= lt!2107879 knownP!20)))))

(declare-fun b!5115657 () Bool)

(declare-fun e!3190497 () Bool)

(assert (=> b!5115657 (= e!3190497 e!3190509)))

(declare-fun res!2177827 () Bool)

(assert (=> b!5115657 (=> res!2177827 e!3190509)))

(declare-fun lt!2107891 () C!28620)

(declare-fun $colon$colon!1123 (List!59257 C!28620) List!59257)

(assert (=> b!5115657 (= res!2177827 (not (= lt!2107869 ($colon$colon!1123 lt!2107883 lt!2107891))))))

(declare-fun tail!10046 (List!59257) List!59257)

(assert (=> b!5115657 (= lt!2107883 (tail!10046 lt!2107869))))

(declare-fun res!2177822 () Bool)

(assert (=> start!539780 (=> (not res!2177822) (not e!3190506))))

(assert (=> start!539780 (= res!2177822 (isPrefix!5582 testedP!265 input!5745))))

(assert (=> start!539780 e!3190506))

(declare-fun e!3190503 () Bool)

(assert (=> start!539780 e!3190503))

(declare-fun condSetEmpty!30033 () Bool)

(assert (=> start!539780 (= condSetEmpty!30033 (= z!4463 ((as const (Array Context!7122 Bool)) false)))))

(assert (=> start!539780 setRes!30034))

(assert (=> start!539780 e!3190502))

(declare-fun condSetEmpty!30034 () Bool)

(assert (=> start!539780 (= condSetEmpty!30034 (= baseZ!46 ((as const (Array Context!7122 Bool)) false)))))

(declare-fun setRes!30033 () Bool)

(assert (=> start!539780 setRes!30033))

(assert (=> start!539780 e!3190510))

(declare-fun b!5115642 () Bool)

(assert (=> b!5115642 (= e!3190498 true)))

(declare-fun lt!2107890 () Bool)

(declare-fun lt!2107874 () (InoxSet Context!7122))

(assert (=> b!5115642 (= lt!2107890 (matchZipper!845 lt!2107874 lt!2107894))))

(declare-fun b!5115658 () Bool)

(assert (=> b!5115658 (= e!3190508 e!3190497)))

(declare-fun res!2177833 () Bool)

(assert (=> b!5115658 (=> res!2177833 e!3190497)))

(declare-fun head!10905 (List!59257) C!28620)

(assert (=> b!5115658 (= res!2177833 (not (= (head!10905 lt!2107869) lt!2107891)))))

(assert (=> b!5115658 (= lt!2107880 lt!2107870)))

(declare-fun lt!2107888 () Unit!150257)

(assert (=> b!5115658 (= lt!2107888 (lemmaSamePrefixThenSameSuffix!2628 testedP!265 lt!2107880 testedP!265 lt!2107870 input!5745))))

(declare-fun b!5115659 () Bool)

(declare-fun e!3190507 () Bool)

(assert (=> b!5115659 (= e!3190507 e!3190511)))

(declare-fun res!2177838 () Bool)

(assert (=> b!5115659 (=> res!2177838 e!3190511)))

(assert (=> b!5115659 (= res!2177838 (not (= lt!2107881 input!5745)))))

(assert (=> b!5115659 (= lt!2107881 (++!13002 lt!2107879 lt!2107889))))

(assert (=> b!5115659 (= lt!2107879 (++!13002 testedP!265 lt!2107869))))

(declare-fun b!5115660 () Bool)

(declare-fun res!2177829 () Bool)

(assert (=> b!5115660 (=> res!2177829 e!3190505)))

(declare-fun derivationZipper!76 ((InoxSet Context!7122) List!59257) (InoxSet Context!7122))

(assert (=> b!5115660 (= res!2177829 (not (= (derivationZipper!76 baseZ!46 testedP!265) z!4463)))))

(declare-fun setNonEmpty!30034 () Bool)

(declare-fun tp!1427182 () Bool)

(declare-fun setElem!30033 () Context!7122)

(assert (=> setNonEmpty!30034 (= setRes!30033 (and tp!1427182 (inv!78623 setElem!30033) e!3190501))))

(declare-fun setRest!30034 () (InoxSet Context!7122))

(assert (=> setNonEmpty!30034 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7122 Bool)) false) setElem!30033 true) setRest!30034))))

(declare-fun b!5115661 () Bool)

(assert (=> b!5115661 (= e!3190505 e!3190507)))

(declare-fun res!2177831 () Bool)

(assert (=> b!5115661 (=> res!2177831 e!3190507)))

(assert (=> b!5115661 (= res!2177831 (not (= (++!13002 knownP!20 lt!2107889) input!5745)))))

(assert (=> b!5115661 (= lt!2107889 (getSuffix!3256 input!5745 knownP!20))))

(assert (=> b!5115661 (= lt!2107894 (getSuffix!3256 knownP!20 lt!2107893))))

(assert (=> b!5115661 (isPrefix!5582 lt!2107893 knownP!20)))

(declare-fun lt!2107876 () Unit!150257)

(assert (=> b!5115661 (= lt!2107876 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!719 knownP!20 lt!2107893 input!5745))))

(assert (=> b!5115661 (= (derivationZipper!76 baseZ!46 lt!2107893) lt!2107874)))

(declare-fun derivationStepZipper!812 ((InoxSet Context!7122) C!28620) (InoxSet Context!7122))

(assert (=> b!5115661 (= lt!2107874 (derivationStepZipper!812 z!4463 lt!2107891))))

(declare-fun lt!2107882 () Unit!150257)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!37 ((InoxSet Context!7122) (InoxSet Context!7122) List!59257 C!28620) Unit!150257)

(assert (=> b!5115661 (= lt!2107882 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!37 baseZ!46 z!4463 testedP!265 lt!2107891))))

(assert (=> b!5115661 (isPrefix!5582 lt!2107893 input!5745)))

(declare-fun lt!2107878 () Unit!150257)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!972 (List!59257 List!59257) Unit!150257)

(assert (=> b!5115661 (= lt!2107878 (lemmaAddHeadSuffixToPrefixStillPrefix!972 testedP!265 input!5745))))

(assert (=> b!5115661 (= lt!2107893 (++!13002 testedP!265 lt!2107877))))

(assert (=> b!5115661 (= lt!2107877 (Cons!59133 lt!2107891 Nil!59133))))

(assert (=> b!5115661 (= lt!2107891 (head!10905 lt!2107870))))

(assert (=> b!5115661 (= lt!2107870 (getSuffix!3256 input!5745 testedP!265))))

(declare-fun setIsEmpty!30034 () Bool)

(assert (=> setIsEmpty!30034 setRes!30033))

(declare-fun b!5115662 () Bool)

(declare-fun tp!1427183 () Bool)

(assert (=> b!5115662 (= e!3190503 (and tp_is_empty!37627 tp!1427183))))

(declare-fun b!5115663 () Bool)

(declare-fun res!2177826 () Bool)

(assert (=> b!5115663 (=> (not res!2177826) (not e!3190506))))

(assert (=> b!5115663 (= res!2177826 (isPrefix!5582 knownP!20 input!5745))))

(assert (= (and start!539780 res!2177822) b!5115663))

(assert (= (and b!5115663 res!2177826) b!5115651))

(assert (= (and b!5115651 res!2177836) b!5115647))

(assert (= (and b!5115647 res!2177840) b!5115649))

(assert (= (and b!5115649 (not res!2177837)) b!5115660))

(assert (= (and b!5115660 (not res!2177829)) b!5115648))

(assert (= (and b!5115648 (not res!2177830)) b!5115643))

(assert (= (and b!5115643 (not res!2177825)) b!5115655))

(assert (= (and b!5115655 (not res!2177823)) b!5115661))

(assert (= (and b!5115661 (not res!2177831)) b!5115659))

(assert (= (and b!5115659 (not res!2177838)) b!5115653))

(assert (= (and b!5115653 (not res!2177824)) b!5115641))

(assert (= (and b!5115641 (not res!2177835)) b!5115658))

(assert (= (and b!5115658 (not res!2177833)) b!5115657))

(assert (= (and b!5115657 (not res!2177827)) b!5115656))

(assert (= (and b!5115656 (not res!2177832)) b!5115652))

(assert (= (and b!5115652 (not res!2177828)) b!5115640))

(assert (= (and b!5115640 (not res!2177839)) b!5115650))

(assert (= (and b!5115650 (not res!2177834)) b!5115642))

(get-info :version)

(assert (= (and start!539780 ((_ is Cons!59133) input!5745)) b!5115662))

(assert (= (and start!539780 condSetEmpty!30033) setIsEmpty!30033))

(assert (= (and start!539780 (not condSetEmpty!30033)) setNonEmpty!30033))

(assert (= setNonEmpty!30033 b!5115644))

(assert (= (and start!539780 ((_ is Cons!59133) testedP!265)) b!5115654))

(assert (= (and start!539780 condSetEmpty!30034) setIsEmpty!30034))

(assert (= (and start!539780 (not condSetEmpty!30034)) setNonEmpty!30034))

(assert (= setNonEmpty!30034 b!5115645))

(assert (= (and start!539780 ((_ is Cons!59133) knownP!20)) b!5115646))

(declare-fun m!6174826 () Bool)

(assert (=> b!5115661 m!6174826))

(declare-fun m!6174828 () Bool)

(assert (=> b!5115661 m!6174828))

(declare-fun m!6174830 () Bool)

(assert (=> b!5115661 m!6174830))

(declare-fun m!6174832 () Bool)

(assert (=> b!5115661 m!6174832))

(declare-fun m!6174834 () Bool)

(assert (=> b!5115661 m!6174834))

(declare-fun m!6174836 () Bool)

(assert (=> b!5115661 m!6174836))

(declare-fun m!6174838 () Bool)

(assert (=> b!5115661 m!6174838))

(declare-fun m!6174840 () Bool)

(assert (=> b!5115661 m!6174840))

(declare-fun m!6174842 () Bool)

(assert (=> b!5115661 m!6174842))

(declare-fun m!6174844 () Bool)

(assert (=> b!5115661 m!6174844))

(declare-fun m!6174846 () Bool)

(assert (=> b!5115661 m!6174846))

(declare-fun m!6174848 () Bool)

(assert (=> b!5115661 m!6174848))

(declare-fun m!6174850 () Bool)

(assert (=> b!5115661 m!6174850))

(declare-fun m!6174852 () Bool)

(assert (=> b!5115659 m!6174852))

(declare-fun m!6174854 () Bool)

(assert (=> b!5115659 m!6174854))

(declare-fun m!6174856 () Bool)

(assert (=> b!5115653 m!6174856))

(declare-fun m!6174858 () Bool)

(assert (=> b!5115641 m!6174858))

(declare-fun m!6174860 () Bool)

(assert (=> b!5115641 m!6174860))

(declare-fun m!6174862 () Bool)

(assert (=> b!5115641 m!6174862))

(declare-fun m!6174864 () Bool)

(assert (=> b!5115658 m!6174864))

(declare-fun m!6174866 () Bool)

(assert (=> b!5115658 m!6174866))

(declare-fun m!6174868 () Bool)

(assert (=> start!539780 m!6174868))

(declare-fun m!6174870 () Bool)

(assert (=> b!5115642 m!6174870))

(declare-fun m!6174872 () Bool)

(assert (=> b!5115657 m!6174872))

(declare-fun m!6174874 () Bool)

(assert (=> b!5115657 m!6174874))

(declare-fun m!6174876 () Bool)

(assert (=> b!5115651 m!6174876))

(declare-fun m!6174878 () Bool)

(assert (=> b!5115651 m!6174878))

(declare-fun m!6174880 () Bool)

(assert (=> b!5115649 m!6174880))

(declare-fun m!6174882 () Bool)

(assert (=> b!5115649 m!6174882))

(declare-fun m!6174884 () Bool)

(assert (=> b!5115649 m!6174884))

(declare-fun m!6174886 () Bool)

(assert (=> b!5115649 m!6174886))

(declare-fun m!6174888 () Bool)

(assert (=> b!5115652 m!6174888))

(declare-fun m!6174890 () Bool)

(assert (=> b!5115647 m!6174890))

(declare-fun m!6174892 () Bool)

(assert (=> b!5115660 m!6174892))

(declare-fun m!6174894 () Bool)

(assert (=> b!5115648 m!6174894))

(declare-fun m!6174896 () Bool)

(assert (=> b!5115655 m!6174896))

(declare-fun m!6174898 () Bool)

(assert (=> b!5115650 m!6174898))

(declare-fun m!6174900 () Bool)

(assert (=> setNonEmpty!30033 m!6174900))

(declare-fun m!6174902 () Bool)

(assert (=> b!5115640 m!6174902))

(declare-fun m!6174904 () Bool)

(assert (=> b!5115640 m!6174904))

(declare-fun m!6174906 () Bool)

(assert (=> b!5115640 m!6174906))

(declare-fun m!6174908 () Bool)

(assert (=> b!5115640 m!6174908))

(declare-fun m!6174910 () Bool)

(assert (=> b!5115663 m!6174910))

(declare-fun m!6174912 () Bool)

(assert (=> setNonEmpty!30034 m!6174912))

(check-sat (not b!5115648) (not b!5115654) (not b!5115645) (not b!5115653) (not b!5115652) (not b!5115647) (not b!5115661) (not b!5115644) (not b!5115642) (not b!5115660) (not b!5115640) (not b!5115658) (not b!5115663) (not b!5115646) (not b!5115641) (not b!5115657) tp_is_empty!37627 (not start!539780) (not setNonEmpty!30033) (not b!5115649) (not setNonEmpty!30034) (not b!5115659) (not b!5115650) (not b!5115655) (not b!5115651) (not b!5115662))
(check-sat)
