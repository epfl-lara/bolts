; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540904 () Bool)

(assert start!540904)

(declare-fun b!5123929 () Bool)

(declare-fun e!3195582 () Bool)

(declare-fun e!3195575 () Bool)

(assert (=> b!5123929 (= e!3195582 e!3195575)))

(declare-fun res!2181885 () Bool)

(assert (=> b!5123929 (=> res!2181885 e!3195575)))

(declare-datatypes ((C!28744 0))(
  ( (C!28745 (val!24024 Int)) )
))
(declare-datatypes ((List!59405 0))(
  ( (Nil!59281) (Cons!59281 (h!65729 C!28744) (t!372428 List!59405)) )
))
(declare-fun lt!2112762 () List!59405)

(declare-fun input!5745 () List!59405)

(assert (=> b!5123929 (= res!2181885 (not (= lt!2112762 input!5745)))))

(declare-fun lt!2112772 () List!59405)

(declare-fun lt!2112760 () List!59405)

(declare-fun ++!13052 (List!59405 List!59405) List!59405)

(assert (=> b!5123929 (= lt!2112762 (++!13052 lt!2112772 lt!2112760))))

(declare-fun testedP!265 () List!59405)

(declare-fun lt!2112753 () List!59405)

(assert (=> b!5123929 (= lt!2112772 (++!13052 testedP!265 lt!2112753))))

(declare-fun b!5123930 () Bool)

(declare-fun res!2181872 () Bool)

(declare-fun e!3195569 () Bool)

(assert (=> b!5123930 (=> res!2181872 e!3195569)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14239 0))(
  ( (ElementMatch!14239 (c!880639 C!28744)) (Concat!23084 (regOne!28990 Regex!14239) (regTwo!28990 Regex!14239)) (EmptyExpr!14239) (Star!14239 (reg!14568 Regex!14239)) (EmptyLang!14239) (Union!14239 (regOne!28991 Regex!14239) (regTwo!28991 Regex!14239)) )
))
(declare-datatypes ((List!59406 0))(
  ( (Nil!59282) (Cons!59282 (h!65730 Regex!14239) (t!372429 List!59406)) )
))
(declare-datatypes ((Context!7246 0))(
  ( (Context!7247 (exprs!4123 List!59406)) )
))
(declare-fun z!4463 () (InoxSet Context!7246))

(declare-fun baseZ!46 () (InoxSet Context!7246))

(declare-fun derivationZipper!136 ((InoxSet Context!7246) List!59405) (InoxSet Context!7246))

(assert (=> b!5123930 (= res!2181872 (not (= (derivationZipper!136 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5123931 () Bool)

(declare-fun res!2181881 () Bool)

(assert (=> b!5123931 (=> res!2181881 e!3195569)))

(declare-fun lt!2112747 () Int)

(declare-fun lt!2112758 () Int)

(assert (=> b!5123931 (= res!2181881 (= lt!2112747 lt!2112758))))

(declare-fun b!5123932 () Bool)

(declare-fun res!2181888 () Bool)

(declare-fun e!3195583 () Bool)

(assert (=> b!5123932 (=> (not res!2181888) (not e!3195583))))

(declare-fun knownP!20 () List!59405)

(declare-fun isPrefix!5644 (List!59405 List!59405) Bool)

(assert (=> b!5123932 (= res!2181888 (isPrefix!5644 knownP!20 input!5745))))

(declare-fun b!5123933 () Bool)

(declare-fun res!2181871 () Bool)

(declare-fun e!3195576 () Bool)

(assert (=> b!5123933 (=> (not res!2181871) (not e!3195576))))

(declare-fun matchZipper!907 ((InoxSet Context!7246) List!59405) Bool)

(assert (=> b!5123933 (= res!2181871 (matchZipper!907 baseZ!46 knownP!20))))

(declare-fun e!3195568 () Bool)

(declare-fun tp!1429431 () Bool)

(declare-fun setElem!30525 () Context!7246)

(declare-fun setRes!30525 () Bool)

(declare-fun setNonEmpty!30525 () Bool)

(declare-fun inv!78778 (Context!7246) Bool)

(assert (=> setNonEmpty!30525 (= setRes!30525 (and tp!1429431 (inv!78778 setElem!30525) e!3195568))))

(declare-fun setRest!30526 () (InoxSet Context!7246))

(assert (=> setNonEmpty!30525 (= z!4463 ((_ map or) (store ((as const (Array Context!7246 Bool)) false) setElem!30525 true) setRest!30526))))

(declare-fun b!5123934 () Bool)

(declare-fun res!2181882 () Bool)

(declare-fun e!3195580 () Bool)

(assert (=> b!5123934 (=> res!2181882 e!3195580)))

(declare-fun lt!2112764 () (InoxSet Context!7246))

(declare-fun lt!2112748 () List!59405)

(assert (=> b!5123934 (= res!2181882 (not (matchZipper!907 lt!2112764 lt!2112748)))))

(declare-fun b!5123935 () Bool)

(declare-fun e!3195571 () Bool)

(declare-fun tp_is_empty!37751 () Bool)

(declare-fun tp!1429429 () Bool)

(assert (=> b!5123935 (= e!3195571 (and tp_is_empty!37751 tp!1429429))))

(declare-fun b!5123936 () Bool)

(declare-fun e!3195578 () Bool)

(declare-fun tp!1429435 () Bool)

(assert (=> b!5123936 (= e!3195578 (and tp_is_empty!37751 tp!1429435))))

(declare-fun res!2181877 () Bool)

(assert (=> start!540904 (=> (not res!2181877) (not e!3195583))))

(assert (=> start!540904 (= res!2181877 (isPrefix!5644 testedP!265 input!5745))))

(assert (=> start!540904 e!3195583))

(declare-fun e!3195577 () Bool)

(assert (=> start!540904 e!3195577))

(declare-fun condSetEmpty!30525 () Bool)

(assert (=> start!540904 (= condSetEmpty!30525 (= z!4463 ((as const (Array Context!7246 Bool)) false)))))

(assert (=> start!540904 setRes!30525))

(assert (=> start!540904 e!3195571))

(declare-fun condSetEmpty!30526 () Bool)

(assert (=> start!540904 (= condSetEmpty!30526 (= baseZ!46 ((as const (Array Context!7246 Bool)) false)))))

(declare-fun setRes!30526 () Bool)

(assert (=> start!540904 setRes!30526))

(assert (=> start!540904 e!3195578))

(declare-fun b!5123937 () Bool)

(assert (=> b!5123937 (= e!3195583 e!3195576)))

(declare-fun res!2181886 () Bool)

(assert (=> b!5123937 (=> (not res!2181886) (not e!3195576))))

(assert (=> b!5123937 (= res!2181886 (>= lt!2112758 lt!2112747))))

(declare-fun size!39545 (List!59405) Int)

(assert (=> b!5123937 (= lt!2112747 (size!39545 testedP!265))))

(assert (=> b!5123937 (= lt!2112758 (size!39545 knownP!20))))

(declare-fun b!5123938 () Bool)

(declare-fun e!3195570 () Bool)

(declare-fun e!3195572 () Bool)

(assert (=> b!5123938 (= e!3195570 e!3195572)))

(declare-fun res!2181879 () Bool)

(assert (=> b!5123938 (=> res!2181879 e!3195572)))

(declare-fun lt!2112771 () List!59405)

(assert (=> b!5123938 (= res!2181879 (not (= lt!2112771 lt!2112748)))))

(declare-fun lt!2112749 () List!59405)

(assert (=> b!5123938 (= lt!2112749 lt!2112753)))

(declare-datatypes ((Unit!150425 0))(
  ( (Unit!150426) )
))
(declare-fun lt!2112759 () Unit!150425)

(declare-fun lemmaSamePrefixThenSameSuffix!2662 (List!59405 List!59405 List!59405 List!59405 List!59405) Unit!150425)

(assert (=> b!5123938 (= lt!2112759 (lemmaSamePrefixThenSameSuffix!2662 testedP!265 lt!2112749 testedP!265 lt!2112753 knownP!20))))

(declare-fun lt!2112751 () List!59405)

(assert (=> b!5123938 (= lt!2112751 (++!13052 testedP!265 lt!2112749))))

(declare-fun lt!2112768 () List!59405)

(assert (=> b!5123938 (= lt!2112749 (++!13052 lt!2112768 lt!2112748))))

(declare-fun lt!2112767 () Unit!150425)

(declare-fun lemmaConcatAssociativity!2796 (List!59405 List!59405 List!59405) Unit!150425)

(assert (=> b!5123938 (= lt!2112767 (lemmaConcatAssociativity!2796 testedP!265 lt!2112768 lt!2112748))))

(declare-fun b!5123939 () Bool)

(declare-fun tp!1429432 () Bool)

(assert (=> b!5123939 (= e!3195568 tp!1429432)))

(declare-fun b!5123940 () Bool)

(declare-fun lt!2112769 () Int)

(assert (=> b!5123940 (= e!3195580 (< (- lt!2112758 lt!2112769) (- lt!2112758 lt!2112747)))))

(declare-fun e!3195573 () Bool)

(declare-fun setNonEmpty!30526 () Bool)

(declare-fun setElem!30526 () Context!7246)

(declare-fun tp!1429434 () Bool)

(assert (=> setNonEmpty!30526 (= setRes!30526 (and tp!1429434 (inv!78778 setElem!30526) e!3195573))))

(declare-fun setRest!30525 () (InoxSet Context!7246))

(assert (=> setNonEmpty!30526 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7246 Bool)) false) setElem!30526 true) setRest!30525))))

(declare-fun b!5123941 () Bool)

(assert (=> b!5123941 (= e!3195569 e!3195582)))

(declare-fun res!2181874 () Bool)

(assert (=> b!5123941 (=> res!2181874 e!3195582)))

(assert (=> b!5123941 (= res!2181874 (not (= (++!13052 knownP!20 lt!2112760) input!5745)))))

(declare-fun getSuffix!3316 (List!59405 List!59405) List!59405)

(assert (=> b!5123941 (= lt!2112760 (getSuffix!3316 input!5745 knownP!20))))

(declare-fun lt!2112766 () List!59405)

(assert (=> b!5123941 (= lt!2112748 (getSuffix!3316 knownP!20 lt!2112766))))

(assert (=> b!5123941 (isPrefix!5644 lt!2112766 knownP!20)))

(declare-fun lt!2112755 () Unit!150425)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!779 (List!59405 List!59405 List!59405) Unit!150425)

(assert (=> b!5123941 (= lt!2112755 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!779 knownP!20 lt!2112766 input!5745))))

(assert (=> b!5123941 (= (derivationZipper!136 baseZ!46 lt!2112766) lt!2112764)))

(declare-fun lt!2112765 () C!28744)

(declare-fun derivationStepZipper!862 ((InoxSet Context!7246) C!28744) (InoxSet Context!7246))

(assert (=> b!5123941 (= lt!2112764 (derivationStepZipper!862 z!4463 lt!2112765))))

(declare-fun lt!2112750 () Unit!150425)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!83 ((InoxSet Context!7246) (InoxSet Context!7246) List!59405 C!28744) Unit!150425)

(assert (=> b!5123941 (= lt!2112750 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!83 baseZ!46 z!4463 testedP!265 lt!2112765))))

(assert (=> b!5123941 (isPrefix!5644 lt!2112766 input!5745)))

(declare-fun lt!2112761 () Unit!150425)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1018 (List!59405 List!59405) Unit!150425)

(assert (=> b!5123941 (= lt!2112761 (lemmaAddHeadSuffixToPrefixStillPrefix!1018 testedP!265 input!5745))))

(assert (=> b!5123941 (= lt!2112766 (++!13052 testedP!265 lt!2112768))))

(assert (=> b!5123941 (= lt!2112768 (Cons!59281 lt!2112765 Nil!59281))))

(declare-fun lt!2112752 () List!59405)

(declare-fun head!10955 (List!59405) C!28744)

(assert (=> b!5123941 (= lt!2112765 (head!10955 lt!2112752))))

(assert (=> b!5123941 (= lt!2112752 (getSuffix!3316 input!5745 testedP!265))))

(declare-fun b!5123942 () Bool)

(declare-fun e!3195581 () Bool)

(assert (=> b!5123942 (= e!3195575 e!3195581)))

(declare-fun res!2181873 () Bool)

(assert (=> b!5123942 (=> res!2181873 e!3195581)))

(declare-fun lt!2112756 () List!59405)

(assert (=> b!5123942 (= res!2181873 (not (= lt!2112756 input!5745)))))

(assert (=> b!5123942 (= lt!2112762 lt!2112756)))

(declare-fun lt!2112754 () List!59405)

(assert (=> b!5123942 (= lt!2112756 (++!13052 testedP!265 lt!2112754))))

(assert (=> b!5123942 (= lt!2112754 (++!13052 lt!2112753 lt!2112760))))

(declare-fun lt!2112770 () Unit!150425)

(assert (=> b!5123942 (= lt!2112770 (lemmaConcatAssociativity!2796 testedP!265 lt!2112753 lt!2112760))))

(declare-fun b!5123943 () Bool)

(assert (=> b!5123943 (= e!3195572 e!3195580)))

(declare-fun res!2181878 () Bool)

(assert (=> b!5123943 (=> res!2181878 e!3195580)))

(assert (=> b!5123943 (= res!2181878 (< lt!2112758 lt!2112769))))

(assert (=> b!5123943 (= lt!2112769 (size!39545 lt!2112766))))

(declare-fun b!5123944 () Bool)

(declare-fun res!2181870 () Bool)

(assert (=> b!5123944 (=> res!2181870 e!3195569)))

(declare-fun lostCauseZipper!1121 ((InoxSet Context!7246)) Bool)

(assert (=> b!5123944 (= res!2181870 (lostCauseZipper!1121 z!4463))))

(declare-fun setIsEmpty!30525 () Bool)

(assert (=> setIsEmpty!30525 setRes!30526))

(declare-fun b!5123945 () Bool)

(declare-fun res!2181876 () Bool)

(assert (=> b!5123945 (=> res!2181876 e!3195569)))

(assert (=> b!5123945 (= res!2181876 (>= lt!2112747 (size!39545 input!5745)))))

(declare-fun b!5123946 () Bool)

(declare-fun e!3195579 () Bool)

(assert (=> b!5123946 (= e!3195579 e!3195570)))

(declare-fun res!2181883 () Bool)

(assert (=> b!5123946 (=> res!2181883 e!3195570)))

(assert (=> b!5123946 (= res!2181883 (not (= lt!2112751 knownP!20)))))

(assert (=> b!5123946 (= lt!2112751 (++!13052 lt!2112766 lt!2112748))))

(declare-fun b!5123947 () Bool)

(declare-fun e!3195574 () Bool)

(assert (=> b!5123947 (= e!3195581 e!3195574)))

(declare-fun res!2181875 () Bool)

(assert (=> b!5123947 (=> res!2181875 e!3195574)))

(assert (=> b!5123947 (= res!2181875 (not (= (head!10955 lt!2112753) lt!2112765)))))

(assert (=> b!5123947 (= lt!2112754 lt!2112752)))

(declare-fun lt!2112763 () Unit!150425)

(assert (=> b!5123947 (= lt!2112763 (lemmaSamePrefixThenSameSuffix!2662 testedP!265 lt!2112754 testedP!265 lt!2112752 input!5745))))

(declare-fun b!5123948 () Bool)

(declare-fun tp!1429433 () Bool)

(assert (=> b!5123948 (= e!3195573 tp!1429433)))

(declare-fun b!5123949 () Bool)

(declare-fun res!2181869 () Bool)

(assert (=> b!5123949 (=> res!2181869 e!3195579)))

(assert (=> b!5123949 (= res!2181869 (not (= lt!2112772 knownP!20)))))

(declare-fun b!5123950 () Bool)

(declare-fun res!2181884 () Bool)

(assert (=> b!5123950 (=> res!2181884 e!3195575)))

(assert (=> b!5123950 (= res!2181884 (not (= (++!13052 testedP!265 lt!2112752) input!5745)))))

(declare-fun b!5123951 () Bool)

(declare-fun tp!1429430 () Bool)

(assert (=> b!5123951 (= e!3195577 (and tp_is_empty!37751 tp!1429430))))

(declare-fun setIsEmpty!30526 () Bool)

(assert (=> setIsEmpty!30526 setRes!30525))

(declare-fun b!5123952 () Bool)

(assert (=> b!5123952 (= e!3195576 (not e!3195569))))

(declare-fun res!2181880 () Bool)

(assert (=> b!5123952 (=> res!2181880 e!3195569)))

(assert (=> b!5123952 (= res!2181880 (not (matchZipper!907 z!4463 lt!2112753)))))

(assert (=> b!5123952 (= lt!2112753 (getSuffix!3316 knownP!20 testedP!265))))

(assert (=> b!5123952 (isPrefix!5644 testedP!265 knownP!20)))

(declare-fun lt!2112757 () Unit!150425)

(assert (=> b!5123952 (= lt!2112757 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!779 knownP!20 testedP!265 input!5745))))

(declare-fun b!5123953 () Bool)

(assert (=> b!5123953 (= e!3195574 e!3195579)))

(declare-fun res!2181887 () Bool)

(assert (=> b!5123953 (=> res!2181887 e!3195579)))

(declare-fun $colon$colon!1153 (List!59405 C!28744) List!59405)

(assert (=> b!5123953 (= res!2181887 (not (= lt!2112753 ($colon$colon!1153 lt!2112771 lt!2112765))))))

(declare-fun tail!10090 (List!59405) List!59405)

(assert (=> b!5123953 (= lt!2112771 (tail!10090 lt!2112753))))

(assert (= (and start!540904 res!2181877) b!5123932))

(assert (= (and b!5123932 res!2181888) b!5123937))

(assert (= (and b!5123937 res!2181886) b!5123933))

(assert (= (and b!5123933 res!2181871) b!5123952))

(assert (= (and b!5123952 (not res!2181880)) b!5123930))

(assert (= (and b!5123930 (not res!2181872)) b!5123944))

(assert (= (and b!5123944 (not res!2181870)) b!5123931))

(assert (= (and b!5123931 (not res!2181881)) b!5123945))

(assert (= (and b!5123945 (not res!2181876)) b!5123941))

(assert (= (and b!5123941 (not res!2181874)) b!5123929))

(assert (= (and b!5123929 (not res!2181885)) b!5123950))

(assert (= (and b!5123950 (not res!2181884)) b!5123942))

(assert (= (and b!5123942 (not res!2181873)) b!5123947))

(assert (= (and b!5123947 (not res!2181875)) b!5123953))

(assert (= (and b!5123953 (not res!2181887)) b!5123949))

(assert (= (and b!5123949 (not res!2181869)) b!5123946))

(assert (= (and b!5123946 (not res!2181883)) b!5123938))

(assert (= (and b!5123938 (not res!2181879)) b!5123943))

(assert (= (and b!5123943 (not res!2181878)) b!5123934))

(assert (= (and b!5123934 (not res!2181882)) b!5123940))

(get-info :version)

(assert (= (and start!540904 ((_ is Cons!59281) input!5745)) b!5123951))

(assert (= (and start!540904 condSetEmpty!30525) setIsEmpty!30526))

(assert (= (and start!540904 (not condSetEmpty!30525)) setNonEmpty!30525))

(assert (= setNonEmpty!30525 b!5123939))

(assert (= (and start!540904 ((_ is Cons!59281) testedP!265)) b!5123935))

(assert (= (and start!540904 condSetEmpty!30526) setIsEmpty!30525))

(assert (= (and start!540904 (not condSetEmpty!30526)) setNonEmpty!30526))

(assert (= setNonEmpty!30526 b!5123948))

(assert (= (and start!540904 ((_ is Cons!59281) knownP!20)) b!5123936))

(declare-fun m!6186198 () Bool)

(assert (=> b!5123933 m!6186198))

(declare-fun m!6186200 () Bool)

(assert (=> setNonEmpty!30525 m!6186200))

(declare-fun m!6186202 () Bool)

(assert (=> start!540904 m!6186202))

(declare-fun m!6186204 () Bool)

(assert (=> b!5123943 m!6186204))

(declare-fun m!6186206 () Bool)

(assert (=> b!5123946 m!6186206))

(declare-fun m!6186208 () Bool)

(assert (=> b!5123953 m!6186208))

(declare-fun m!6186210 () Bool)

(assert (=> b!5123953 m!6186210))

(declare-fun m!6186212 () Bool)

(assert (=> b!5123950 m!6186212))

(declare-fun m!6186214 () Bool)

(assert (=> b!5123944 m!6186214))

(declare-fun m!6186216 () Bool)

(assert (=> b!5123938 m!6186216))

(declare-fun m!6186218 () Bool)

(assert (=> b!5123938 m!6186218))

(declare-fun m!6186220 () Bool)

(assert (=> b!5123938 m!6186220))

(declare-fun m!6186222 () Bool)

(assert (=> b!5123938 m!6186222))

(declare-fun m!6186224 () Bool)

(assert (=> b!5123937 m!6186224))

(declare-fun m!6186226 () Bool)

(assert (=> b!5123937 m!6186226))

(declare-fun m!6186228 () Bool)

(assert (=> b!5123952 m!6186228))

(declare-fun m!6186230 () Bool)

(assert (=> b!5123952 m!6186230))

(declare-fun m!6186232 () Bool)

(assert (=> b!5123952 m!6186232))

(declare-fun m!6186234 () Bool)

(assert (=> b!5123952 m!6186234))

(declare-fun m!6186236 () Bool)

(assert (=> b!5123929 m!6186236))

(declare-fun m!6186238 () Bool)

(assert (=> b!5123929 m!6186238))

(declare-fun m!6186240 () Bool)

(assert (=> b!5123930 m!6186240))

(declare-fun m!6186242 () Bool)

(assert (=> b!5123942 m!6186242))

(declare-fun m!6186244 () Bool)

(assert (=> b!5123942 m!6186244))

(declare-fun m!6186246 () Bool)

(assert (=> b!5123942 m!6186246))

(declare-fun m!6186248 () Bool)

(assert (=> b!5123941 m!6186248))

(declare-fun m!6186250 () Bool)

(assert (=> b!5123941 m!6186250))

(declare-fun m!6186252 () Bool)

(assert (=> b!5123941 m!6186252))

(declare-fun m!6186254 () Bool)

(assert (=> b!5123941 m!6186254))

(declare-fun m!6186256 () Bool)

(assert (=> b!5123941 m!6186256))

(declare-fun m!6186258 () Bool)

(assert (=> b!5123941 m!6186258))

(declare-fun m!6186260 () Bool)

(assert (=> b!5123941 m!6186260))

(declare-fun m!6186262 () Bool)

(assert (=> b!5123941 m!6186262))

(declare-fun m!6186264 () Bool)

(assert (=> b!5123941 m!6186264))

(declare-fun m!6186266 () Bool)

(assert (=> b!5123941 m!6186266))

(declare-fun m!6186268 () Bool)

(assert (=> b!5123941 m!6186268))

(declare-fun m!6186270 () Bool)

(assert (=> b!5123941 m!6186270))

(declare-fun m!6186272 () Bool)

(assert (=> b!5123941 m!6186272))

(declare-fun m!6186274 () Bool)

(assert (=> b!5123934 m!6186274))

(declare-fun m!6186276 () Bool)

(assert (=> b!5123932 m!6186276))

(declare-fun m!6186278 () Bool)

(assert (=> setNonEmpty!30526 m!6186278))

(declare-fun m!6186280 () Bool)

(assert (=> b!5123945 m!6186280))

(declare-fun m!6186282 () Bool)

(assert (=> b!5123947 m!6186282))

(declare-fun m!6186284 () Bool)

(assert (=> b!5123947 m!6186284))

(check-sat (not b!5123932) (not b!5123945) (not b!5123947) (not b!5123951) (not setNonEmpty!30526) (not b!5123946) (not start!540904) (not b!5123943) (not b!5123934) (not b!5123948) tp_is_empty!37751 (not b!5123939) (not b!5123938) (not b!5123936) (not b!5123929) (not b!5123933) (not b!5123941) (not b!5123944) (not b!5123942) (not b!5123950) (not b!5123930) (not b!5123952) (not b!5123953) (not b!5123935) (not setNonEmpty!30525) (not b!5123937))
(check-sat)
(get-model)

(declare-fun d!1656703 () Bool)

(declare-fun lt!2112787 () List!59405)

(assert (=> d!1656703 (= (++!13052 testedP!265 lt!2112787) input!5745)))

(declare-fun e!3195604 () List!59405)

(assert (=> d!1656703 (= lt!2112787 e!3195604)))

(declare-fun c!880651 () Bool)

(assert (=> d!1656703 (= c!880651 ((_ is Cons!59281) testedP!265))))

(assert (=> d!1656703 (>= (size!39545 input!5745) (size!39545 testedP!265))))

(assert (=> d!1656703 (= (getSuffix!3316 input!5745 testedP!265) lt!2112787)))

(declare-fun b!5123988 () Bool)

(assert (=> b!5123988 (= e!3195604 (getSuffix!3316 (tail!10090 input!5745) (t!372428 testedP!265)))))

(declare-fun b!5123989 () Bool)

(assert (=> b!5123989 (= e!3195604 input!5745)))

(assert (= (and d!1656703 c!880651) b!5123988))

(assert (= (and d!1656703 (not c!880651)) b!5123989))

(declare-fun m!6186312 () Bool)

(assert (=> d!1656703 m!6186312))

(assert (=> d!1656703 m!6186280))

(assert (=> d!1656703 m!6186224))

(declare-fun m!6186314 () Bool)

(assert (=> b!5123988 m!6186314))

(assert (=> b!5123988 m!6186314))

(declare-fun m!6186316 () Bool)

(assert (=> b!5123988 m!6186316))

(assert (=> b!5123941 d!1656703))

(declare-fun lt!2112790 () List!59405)

(declare-fun e!3195610 () Bool)

(declare-fun b!5124001 () Bool)

(assert (=> b!5124001 (= e!3195610 (or (not (= lt!2112760 Nil!59281)) (= lt!2112790 knownP!20)))))

(declare-fun b!5123998 () Bool)

(declare-fun e!3195609 () List!59405)

(assert (=> b!5123998 (= e!3195609 lt!2112760)))

(declare-fun d!1656709 () Bool)

(assert (=> d!1656709 e!3195610))

(declare-fun res!2181906 () Bool)

(assert (=> d!1656709 (=> (not res!2181906) (not e!3195610))))

(declare-fun content!10545 (List!59405) (InoxSet C!28744))

(assert (=> d!1656709 (= res!2181906 (= (content!10545 lt!2112790) ((_ map or) (content!10545 knownP!20) (content!10545 lt!2112760))))))

(assert (=> d!1656709 (= lt!2112790 e!3195609)))

(declare-fun c!880654 () Bool)

(assert (=> d!1656709 (= c!880654 ((_ is Nil!59281) knownP!20))))

(assert (=> d!1656709 (= (++!13052 knownP!20 lt!2112760) lt!2112790)))

(declare-fun b!5124000 () Bool)

(declare-fun res!2181905 () Bool)

(assert (=> b!5124000 (=> (not res!2181905) (not e!3195610))))

(assert (=> b!5124000 (= res!2181905 (= (size!39545 lt!2112790) (+ (size!39545 knownP!20) (size!39545 lt!2112760))))))

(declare-fun b!5123999 () Bool)

(assert (=> b!5123999 (= e!3195609 (Cons!59281 (h!65729 knownP!20) (++!13052 (t!372428 knownP!20) lt!2112760)))))

(assert (= (and d!1656709 c!880654) b!5123998))

(assert (= (and d!1656709 (not c!880654)) b!5123999))

(assert (= (and d!1656709 res!2181906) b!5124000))

(assert (= (and b!5124000 res!2181905) b!5124001))

(declare-fun m!6186318 () Bool)

(assert (=> d!1656709 m!6186318))

(declare-fun m!6186320 () Bool)

(assert (=> d!1656709 m!6186320))

(declare-fun m!6186322 () Bool)

(assert (=> d!1656709 m!6186322))

(declare-fun m!6186324 () Bool)

(assert (=> b!5124000 m!6186324))

(assert (=> b!5124000 m!6186226))

(declare-fun m!6186326 () Bool)

(assert (=> b!5124000 m!6186326))

(declare-fun m!6186328 () Bool)

(assert (=> b!5123999 m!6186328))

(assert (=> b!5123941 d!1656709))

(declare-fun d!1656711 () Bool)

(declare-fun e!3195618 () Bool)

(assert (=> d!1656711 e!3195618))

(declare-fun res!2181915 () Bool)

(assert (=> d!1656711 (=> res!2181915 e!3195618)))

(declare-fun lt!2112793 () Bool)

(assert (=> d!1656711 (= res!2181915 (not lt!2112793))))

(declare-fun e!3195619 () Bool)

(assert (=> d!1656711 (= lt!2112793 e!3195619)))

(declare-fun res!2181916 () Bool)

(assert (=> d!1656711 (=> res!2181916 e!3195619)))

(assert (=> d!1656711 (= res!2181916 ((_ is Nil!59281) lt!2112766))))

(assert (=> d!1656711 (= (isPrefix!5644 lt!2112766 knownP!20) lt!2112793)))

(declare-fun b!5124010 () Bool)

(declare-fun e!3195617 () Bool)

(assert (=> b!5124010 (= e!3195619 e!3195617)))

(declare-fun res!2181918 () Bool)

(assert (=> b!5124010 (=> (not res!2181918) (not e!3195617))))

(assert (=> b!5124010 (= res!2181918 (not ((_ is Nil!59281) knownP!20)))))

(declare-fun b!5124011 () Bool)

(declare-fun res!2181917 () Bool)

(assert (=> b!5124011 (=> (not res!2181917) (not e!3195617))))

(assert (=> b!5124011 (= res!2181917 (= (head!10955 lt!2112766) (head!10955 knownP!20)))))

(declare-fun b!5124012 () Bool)

(assert (=> b!5124012 (= e!3195617 (isPrefix!5644 (tail!10090 lt!2112766) (tail!10090 knownP!20)))))

(declare-fun b!5124013 () Bool)

(assert (=> b!5124013 (= e!3195618 (>= (size!39545 knownP!20) (size!39545 lt!2112766)))))

(assert (= (and d!1656711 (not res!2181916)) b!5124010))

(assert (= (and b!5124010 res!2181918) b!5124011))

(assert (= (and b!5124011 res!2181917) b!5124012))

(assert (= (and d!1656711 (not res!2181915)) b!5124013))

(declare-fun m!6186330 () Bool)

(assert (=> b!5124011 m!6186330))

(declare-fun m!6186332 () Bool)

(assert (=> b!5124011 m!6186332))

(declare-fun m!6186334 () Bool)

(assert (=> b!5124012 m!6186334))

(declare-fun m!6186336 () Bool)

(assert (=> b!5124012 m!6186336))

(assert (=> b!5124012 m!6186334))

(assert (=> b!5124012 m!6186336))

(declare-fun m!6186338 () Bool)

(assert (=> b!5124012 m!6186338))

(assert (=> b!5124013 m!6186226))

(assert (=> b!5124013 m!6186204))

(assert (=> b!5123941 d!1656711))

(declare-fun d!1656713 () Bool)

(assert (=> d!1656713 (isPrefix!5644 lt!2112766 knownP!20)))

(declare-fun lt!2112796 () Unit!150425)

(declare-fun choose!37696 (List!59405 List!59405 List!59405) Unit!150425)

(assert (=> d!1656713 (= lt!2112796 (choose!37696 knownP!20 lt!2112766 input!5745))))

(assert (=> d!1656713 (isPrefix!5644 knownP!20 input!5745)))

(assert (=> d!1656713 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!779 knownP!20 lt!2112766 input!5745) lt!2112796)))

(declare-fun bs!1193475 () Bool)

(assert (= bs!1193475 d!1656713))

(assert (=> bs!1193475 m!6186260))

(declare-fun m!6186340 () Bool)

(assert (=> bs!1193475 m!6186340))

(assert (=> bs!1193475 m!6186276))

(assert (=> b!5123941 d!1656713))

(declare-fun d!1656715 () Bool)

(declare-fun e!3195621 () Bool)

(assert (=> d!1656715 e!3195621))

(declare-fun res!2181919 () Bool)

(assert (=> d!1656715 (=> res!2181919 e!3195621)))

(declare-fun lt!2112797 () Bool)

(assert (=> d!1656715 (= res!2181919 (not lt!2112797))))

(declare-fun e!3195622 () Bool)

(assert (=> d!1656715 (= lt!2112797 e!3195622)))

(declare-fun res!2181920 () Bool)

(assert (=> d!1656715 (=> res!2181920 e!3195622)))

(assert (=> d!1656715 (= res!2181920 ((_ is Nil!59281) lt!2112766))))

(assert (=> d!1656715 (= (isPrefix!5644 lt!2112766 input!5745) lt!2112797)))

(declare-fun b!5124014 () Bool)

(declare-fun e!3195620 () Bool)

(assert (=> b!5124014 (= e!3195622 e!3195620)))

(declare-fun res!2181922 () Bool)

(assert (=> b!5124014 (=> (not res!2181922) (not e!3195620))))

(assert (=> b!5124014 (= res!2181922 (not ((_ is Nil!59281) input!5745)))))

(declare-fun b!5124015 () Bool)

(declare-fun res!2181921 () Bool)

(assert (=> b!5124015 (=> (not res!2181921) (not e!3195620))))

(assert (=> b!5124015 (= res!2181921 (= (head!10955 lt!2112766) (head!10955 input!5745)))))

(declare-fun b!5124016 () Bool)

(assert (=> b!5124016 (= e!3195620 (isPrefix!5644 (tail!10090 lt!2112766) (tail!10090 input!5745)))))

(declare-fun b!5124017 () Bool)

(assert (=> b!5124017 (= e!3195621 (>= (size!39545 input!5745) (size!39545 lt!2112766)))))

(assert (= (and d!1656715 (not res!2181920)) b!5124014))

(assert (= (and b!5124014 res!2181922) b!5124015))

(assert (= (and b!5124015 res!2181921) b!5124016))

(assert (= (and d!1656715 (not res!2181919)) b!5124017))

(assert (=> b!5124015 m!6186330))

(declare-fun m!6186342 () Bool)

(assert (=> b!5124015 m!6186342))

(assert (=> b!5124016 m!6186334))

(assert (=> b!5124016 m!6186314))

(assert (=> b!5124016 m!6186334))

(assert (=> b!5124016 m!6186314))

(declare-fun m!6186344 () Bool)

(assert (=> b!5124016 m!6186344))

(assert (=> b!5124017 m!6186280))

(assert (=> b!5124017 m!6186204))

(assert (=> b!5123941 d!1656715))

(declare-fun b!5124021 () Bool)

(declare-fun e!3195624 () Bool)

(declare-fun lt!2112798 () List!59405)

(assert (=> b!5124021 (= e!3195624 (or (not (= lt!2112768 Nil!59281)) (= lt!2112798 testedP!265)))))

(declare-fun b!5124018 () Bool)

(declare-fun e!3195623 () List!59405)

(assert (=> b!5124018 (= e!3195623 lt!2112768)))

(declare-fun d!1656717 () Bool)

(assert (=> d!1656717 e!3195624))

(declare-fun res!2181924 () Bool)

(assert (=> d!1656717 (=> (not res!2181924) (not e!3195624))))

(assert (=> d!1656717 (= res!2181924 (= (content!10545 lt!2112798) ((_ map or) (content!10545 testedP!265) (content!10545 lt!2112768))))))

(assert (=> d!1656717 (= lt!2112798 e!3195623)))

(declare-fun c!880655 () Bool)

(assert (=> d!1656717 (= c!880655 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1656717 (= (++!13052 testedP!265 lt!2112768) lt!2112798)))

(declare-fun b!5124020 () Bool)

(declare-fun res!2181923 () Bool)

(assert (=> b!5124020 (=> (not res!2181923) (not e!3195624))))

(assert (=> b!5124020 (= res!2181923 (= (size!39545 lt!2112798) (+ (size!39545 testedP!265) (size!39545 lt!2112768))))))

(declare-fun b!5124019 () Bool)

(assert (=> b!5124019 (= e!3195623 (Cons!59281 (h!65729 testedP!265) (++!13052 (t!372428 testedP!265) lt!2112768)))))

(assert (= (and d!1656717 c!880655) b!5124018))

(assert (= (and d!1656717 (not c!880655)) b!5124019))

(assert (= (and d!1656717 res!2181924) b!5124020))

(assert (= (and b!5124020 res!2181923) b!5124021))

(declare-fun m!6186346 () Bool)

(assert (=> d!1656717 m!6186346))

(declare-fun m!6186348 () Bool)

(assert (=> d!1656717 m!6186348))

(declare-fun m!6186350 () Bool)

(assert (=> d!1656717 m!6186350))

(declare-fun m!6186352 () Bool)

(assert (=> b!5124020 m!6186352))

(assert (=> b!5124020 m!6186224))

(declare-fun m!6186354 () Bool)

(assert (=> b!5124020 m!6186354))

(declare-fun m!6186356 () Bool)

(assert (=> b!5124019 m!6186356))

(assert (=> b!5123941 d!1656717))

(declare-fun d!1656719 () Bool)

(assert (=> d!1656719 (isPrefix!5644 (++!13052 testedP!265 (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281)) input!5745)))

(declare-fun lt!2112801 () Unit!150425)

(declare-fun choose!37697 (List!59405 List!59405) Unit!150425)

(assert (=> d!1656719 (= lt!2112801 (choose!37697 testedP!265 input!5745))))

(assert (=> d!1656719 (isPrefix!5644 testedP!265 input!5745)))

(assert (=> d!1656719 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1018 testedP!265 input!5745) lt!2112801)))

(declare-fun bs!1193476 () Bool)

(assert (= bs!1193476 d!1656719))

(assert (=> bs!1193476 m!6186202))

(declare-fun m!6186358 () Bool)

(assert (=> bs!1193476 m!6186358))

(declare-fun m!6186360 () Bool)

(assert (=> bs!1193476 m!6186360))

(assert (=> bs!1193476 m!6186358))

(assert (=> bs!1193476 m!6186266))

(declare-fun m!6186362 () Bool)

(assert (=> bs!1193476 m!6186362))

(assert (=> bs!1193476 m!6186266))

(declare-fun m!6186364 () Bool)

(assert (=> bs!1193476 m!6186364))

(assert (=> b!5123941 d!1656719))

(declare-fun d!1656721 () Bool)

(declare-fun lt!2112802 () List!59405)

(assert (=> d!1656721 (= (++!13052 knownP!20 lt!2112802) input!5745)))

(declare-fun e!3195625 () List!59405)

(assert (=> d!1656721 (= lt!2112802 e!3195625)))

(declare-fun c!880656 () Bool)

(assert (=> d!1656721 (= c!880656 ((_ is Cons!59281) knownP!20))))

(assert (=> d!1656721 (>= (size!39545 input!5745) (size!39545 knownP!20))))

(assert (=> d!1656721 (= (getSuffix!3316 input!5745 knownP!20) lt!2112802)))

(declare-fun b!5124022 () Bool)

(assert (=> b!5124022 (= e!3195625 (getSuffix!3316 (tail!10090 input!5745) (t!372428 knownP!20)))))

(declare-fun b!5124023 () Bool)

(assert (=> b!5124023 (= e!3195625 input!5745)))

(assert (= (and d!1656721 c!880656) b!5124022))

(assert (= (and d!1656721 (not c!880656)) b!5124023))

(declare-fun m!6186366 () Bool)

(assert (=> d!1656721 m!6186366))

(assert (=> d!1656721 m!6186280))

(assert (=> d!1656721 m!6186226))

(assert (=> b!5124022 m!6186314))

(assert (=> b!5124022 m!6186314))

(declare-fun m!6186368 () Bool)

(assert (=> b!5124022 m!6186368))

(assert (=> b!5123941 d!1656721))

(declare-fun d!1656723 () Bool)

(assert (=> d!1656723 (= (head!10955 lt!2112752) (h!65729 lt!2112752))))

(assert (=> b!5123941 d!1656723))

(declare-fun d!1656725 () Bool)

(assert (=> d!1656725 true))

(declare-fun lambda!251619 () Int)

(declare-fun flatMap!366 ((InoxSet Context!7246) Int) (InoxSet Context!7246))

(assert (=> d!1656725 (= (derivationStepZipper!862 z!4463 lt!2112765) (flatMap!366 z!4463 lambda!251619))))

(declare-fun bs!1193491 () Bool)

(assert (= bs!1193491 d!1656725))

(declare-fun m!6186586 () Bool)

(assert (=> bs!1193491 m!6186586))

(assert (=> b!5123941 d!1656725))

(declare-fun d!1656803 () Bool)

(assert (=> d!1656803 (= (derivationZipper!136 baseZ!46 (++!13052 testedP!265 (Cons!59281 lt!2112765 Nil!59281))) (derivationStepZipper!862 z!4463 lt!2112765))))

(declare-fun lt!2112866 () Unit!150425)

(declare-fun choose!37698 ((InoxSet Context!7246) (InoxSet Context!7246) List!59405 C!28744) Unit!150425)

(assert (=> d!1656803 (= lt!2112866 (choose!37698 baseZ!46 z!4463 testedP!265 lt!2112765))))

(assert (=> d!1656803 (= (derivationZipper!136 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1656803 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!83 baseZ!46 z!4463 testedP!265 lt!2112765) lt!2112866)))

(declare-fun bs!1193492 () Bool)

(assert (= bs!1193492 d!1656803))

(declare-fun m!6186588 () Bool)

(assert (=> bs!1193492 m!6186588))

(declare-fun m!6186590 () Bool)

(assert (=> bs!1193492 m!6186590))

(assert (=> bs!1193492 m!6186254))

(declare-fun m!6186592 () Bool)

(assert (=> bs!1193492 m!6186592))

(assert (=> bs!1193492 m!6186240))

(assert (=> bs!1193492 m!6186588))

(assert (=> b!5123941 d!1656803))

(declare-fun d!1656805 () Bool)

(declare-fun c!880700 () Bool)

(assert (=> d!1656805 (= c!880700 ((_ is Cons!59281) lt!2112766))))

(declare-fun e!3195696 () (InoxSet Context!7246))

(assert (=> d!1656805 (= (derivationZipper!136 baseZ!46 lt!2112766) e!3195696)))

(declare-fun b!5124145 () Bool)

(assert (=> b!5124145 (= e!3195696 (derivationZipper!136 (derivationStepZipper!862 baseZ!46 (h!65729 lt!2112766)) (t!372428 lt!2112766)))))

(declare-fun b!5124146 () Bool)

(assert (=> b!5124146 (= e!3195696 baseZ!46)))

(assert (= (and d!1656805 c!880700) b!5124145))

(assert (= (and d!1656805 (not c!880700)) b!5124146))

(declare-fun m!6186594 () Bool)

(assert (=> b!5124145 m!6186594))

(assert (=> b!5124145 m!6186594))

(declare-fun m!6186596 () Bool)

(assert (=> b!5124145 m!6186596))

(assert (=> b!5123941 d!1656805))

(declare-fun d!1656807 () Bool)

(declare-fun lt!2112867 () List!59405)

(assert (=> d!1656807 (= (++!13052 lt!2112766 lt!2112867) knownP!20)))

(declare-fun e!3195697 () List!59405)

(assert (=> d!1656807 (= lt!2112867 e!3195697)))

(declare-fun c!880701 () Bool)

(assert (=> d!1656807 (= c!880701 ((_ is Cons!59281) lt!2112766))))

(assert (=> d!1656807 (>= (size!39545 knownP!20) (size!39545 lt!2112766))))

(assert (=> d!1656807 (= (getSuffix!3316 knownP!20 lt!2112766) lt!2112867)))

(declare-fun b!5124147 () Bool)

(assert (=> b!5124147 (= e!3195697 (getSuffix!3316 (tail!10090 knownP!20) (t!372428 lt!2112766)))))

(declare-fun b!5124148 () Bool)

(assert (=> b!5124148 (= e!3195697 knownP!20)))

(assert (= (and d!1656807 c!880701) b!5124147))

(assert (= (and d!1656807 (not c!880701)) b!5124148))

(declare-fun m!6186598 () Bool)

(assert (=> d!1656807 m!6186598))

(assert (=> d!1656807 m!6186226))

(assert (=> d!1656807 m!6186204))

(assert (=> b!5124147 m!6186336))

(assert (=> b!5124147 m!6186336))

(declare-fun m!6186600 () Bool)

(assert (=> b!5124147 m!6186600))

(assert (=> b!5123941 d!1656807))

(declare-fun d!1656809 () Bool)

(declare-fun e!3195699 () Bool)

(assert (=> d!1656809 e!3195699))

(declare-fun res!2181965 () Bool)

(assert (=> d!1656809 (=> res!2181965 e!3195699)))

(declare-fun lt!2112868 () Bool)

(assert (=> d!1656809 (= res!2181965 (not lt!2112868))))

(declare-fun e!3195700 () Bool)

(assert (=> d!1656809 (= lt!2112868 e!3195700)))

(declare-fun res!2181966 () Bool)

(assert (=> d!1656809 (=> res!2181966 e!3195700)))

(assert (=> d!1656809 (= res!2181966 ((_ is Nil!59281) knownP!20))))

(assert (=> d!1656809 (= (isPrefix!5644 knownP!20 input!5745) lt!2112868)))

(declare-fun b!5124149 () Bool)

(declare-fun e!3195698 () Bool)

(assert (=> b!5124149 (= e!3195700 e!3195698)))

(declare-fun res!2181968 () Bool)

(assert (=> b!5124149 (=> (not res!2181968) (not e!3195698))))

(assert (=> b!5124149 (= res!2181968 (not ((_ is Nil!59281) input!5745)))))

(declare-fun b!5124150 () Bool)

(declare-fun res!2181967 () Bool)

(assert (=> b!5124150 (=> (not res!2181967) (not e!3195698))))

(assert (=> b!5124150 (= res!2181967 (= (head!10955 knownP!20) (head!10955 input!5745)))))

(declare-fun b!5124151 () Bool)

(assert (=> b!5124151 (= e!3195698 (isPrefix!5644 (tail!10090 knownP!20) (tail!10090 input!5745)))))

(declare-fun b!5124152 () Bool)

(assert (=> b!5124152 (= e!3195699 (>= (size!39545 input!5745) (size!39545 knownP!20)))))

(assert (= (and d!1656809 (not res!2181966)) b!5124149))

(assert (= (and b!5124149 res!2181968) b!5124150))

(assert (= (and b!5124150 res!2181967) b!5124151))

(assert (= (and d!1656809 (not res!2181965)) b!5124152))

(assert (=> b!5124150 m!6186332))

(assert (=> b!5124150 m!6186342))

(assert (=> b!5124151 m!6186336))

(assert (=> b!5124151 m!6186314))

(assert (=> b!5124151 m!6186336))

(assert (=> b!5124151 m!6186314))

(declare-fun m!6186602 () Bool)

(assert (=> b!5124151 m!6186602))

(assert (=> b!5124152 m!6186280))

(assert (=> b!5124152 m!6186226))

(assert (=> b!5123932 d!1656809))

(declare-fun d!1656811 () Bool)

(declare-fun c!880704 () Bool)

(declare-fun isEmpty!31952 (List!59405) Bool)

(assert (=> d!1656811 (= c!880704 (isEmpty!31952 knownP!20))))

(declare-fun e!3195703 () Bool)

(assert (=> d!1656811 (= (matchZipper!907 baseZ!46 knownP!20) e!3195703)))

(declare-fun b!5124157 () Bool)

(declare-fun nullableZipper!1036 ((InoxSet Context!7246)) Bool)

(assert (=> b!5124157 (= e!3195703 (nullableZipper!1036 baseZ!46))))

(declare-fun b!5124158 () Bool)

(assert (=> b!5124158 (= e!3195703 (matchZipper!907 (derivationStepZipper!862 baseZ!46 (head!10955 knownP!20)) (tail!10090 knownP!20)))))

(assert (= (and d!1656811 c!880704) b!5124157))

(assert (= (and d!1656811 (not c!880704)) b!5124158))

(declare-fun m!6186604 () Bool)

(assert (=> d!1656811 m!6186604))

(declare-fun m!6186606 () Bool)

(assert (=> b!5124157 m!6186606))

(assert (=> b!5124158 m!6186332))

(assert (=> b!5124158 m!6186332))

(declare-fun m!6186608 () Bool)

(assert (=> b!5124158 m!6186608))

(assert (=> b!5124158 m!6186336))

(assert (=> b!5124158 m!6186608))

(assert (=> b!5124158 m!6186336))

(declare-fun m!6186610 () Bool)

(assert (=> b!5124158 m!6186610))

(assert (=> b!5123933 d!1656811))

(declare-fun b!5124162 () Bool)

(declare-fun e!3195705 () Bool)

(declare-fun lt!2112869 () List!59405)

(assert (=> b!5124162 (= e!3195705 (or (not (= lt!2112754 Nil!59281)) (= lt!2112869 testedP!265)))))

(declare-fun b!5124159 () Bool)

(declare-fun e!3195704 () List!59405)

(assert (=> b!5124159 (= e!3195704 lt!2112754)))

(declare-fun d!1656813 () Bool)

(assert (=> d!1656813 e!3195705))

(declare-fun res!2181970 () Bool)

(assert (=> d!1656813 (=> (not res!2181970) (not e!3195705))))

(assert (=> d!1656813 (= res!2181970 (= (content!10545 lt!2112869) ((_ map or) (content!10545 testedP!265) (content!10545 lt!2112754))))))

(assert (=> d!1656813 (= lt!2112869 e!3195704)))

(declare-fun c!880705 () Bool)

(assert (=> d!1656813 (= c!880705 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1656813 (= (++!13052 testedP!265 lt!2112754) lt!2112869)))

(declare-fun b!5124161 () Bool)

(declare-fun res!2181969 () Bool)

(assert (=> b!5124161 (=> (not res!2181969) (not e!3195705))))

(assert (=> b!5124161 (= res!2181969 (= (size!39545 lt!2112869) (+ (size!39545 testedP!265) (size!39545 lt!2112754))))))

(declare-fun b!5124160 () Bool)

(assert (=> b!5124160 (= e!3195704 (Cons!59281 (h!65729 testedP!265) (++!13052 (t!372428 testedP!265) lt!2112754)))))

(assert (= (and d!1656813 c!880705) b!5124159))

(assert (= (and d!1656813 (not c!880705)) b!5124160))

(assert (= (and d!1656813 res!2181970) b!5124161))

(assert (= (and b!5124161 res!2181969) b!5124162))

(declare-fun m!6186612 () Bool)

(assert (=> d!1656813 m!6186612))

(assert (=> d!1656813 m!6186348))

(declare-fun m!6186614 () Bool)

(assert (=> d!1656813 m!6186614))

(declare-fun m!6186616 () Bool)

(assert (=> b!5124161 m!6186616))

(assert (=> b!5124161 m!6186224))

(declare-fun m!6186618 () Bool)

(assert (=> b!5124161 m!6186618))

(declare-fun m!6186620 () Bool)

(assert (=> b!5124160 m!6186620))

(assert (=> b!5123942 d!1656813))

(declare-fun e!3195707 () Bool)

(declare-fun b!5124166 () Bool)

(declare-fun lt!2112870 () List!59405)

(assert (=> b!5124166 (= e!3195707 (or (not (= lt!2112760 Nil!59281)) (= lt!2112870 lt!2112753)))))

(declare-fun b!5124163 () Bool)

(declare-fun e!3195706 () List!59405)

(assert (=> b!5124163 (= e!3195706 lt!2112760)))

(declare-fun d!1656815 () Bool)

(assert (=> d!1656815 e!3195707))

(declare-fun res!2181972 () Bool)

(assert (=> d!1656815 (=> (not res!2181972) (not e!3195707))))

(assert (=> d!1656815 (= res!2181972 (= (content!10545 lt!2112870) ((_ map or) (content!10545 lt!2112753) (content!10545 lt!2112760))))))

(assert (=> d!1656815 (= lt!2112870 e!3195706)))

(declare-fun c!880706 () Bool)

(assert (=> d!1656815 (= c!880706 ((_ is Nil!59281) lt!2112753))))

(assert (=> d!1656815 (= (++!13052 lt!2112753 lt!2112760) lt!2112870)))

(declare-fun b!5124165 () Bool)

(declare-fun res!2181971 () Bool)

(assert (=> b!5124165 (=> (not res!2181971) (not e!3195707))))

(assert (=> b!5124165 (= res!2181971 (= (size!39545 lt!2112870) (+ (size!39545 lt!2112753) (size!39545 lt!2112760))))))

(declare-fun b!5124164 () Bool)

(assert (=> b!5124164 (= e!3195706 (Cons!59281 (h!65729 lt!2112753) (++!13052 (t!372428 lt!2112753) lt!2112760)))))

(assert (= (and d!1656815 c!880706) b!5124163))

(assert (= (and d!1656815 (not c!880706)) b!5124164))

(assert (= (and d!1656815 res!2181972) b!5124165))

(assert (= (and b!5124165 res!2181971) b!5124166))

(declare-fun m!6186622 () Bool)

(assert (=> d!1656815 m!6186622))

(declare-fun m!6186624 () Bool)

(assert (=> d!1656815 m!6186624))

(assert (=> d!1656815 m!6186322))

(declare-fun m!6186626 () Bool)

(assert (=> b!5124165 m!6186626))

(declare-fun m!6186628 () Bool)

(assert (=> b!5124165 m!6186628))

(assert (=> b!5124165 m!6186326))

(declare-fun m!6186630 () Bool)

(assert (=> b!5124164 m!6186630))

(assert (=> b!5123942 d!1656815))

(declare-fun d!1656817 () Bool)

(assert (=> d!1656817 (= (++!13052 (++!13052 testedP!265 lt!2112753) lt!2112760) (++!13052 testedP!265 (++!13052 lt!2112753 lt!2112760)))))

(declare-fun lt!2112873 () Unit!150425)

(declare-fun choose!37702 (List!59405 List!59405 List!59405) Unit!150425)

(assert (=> d!1656817 (= lt!2112873 (choose!37702 testedP!265 lt!2112753 lt!2112760))))

(assert (=> d!1656817 (= (lemmaConcatAssociativity!2796 testedP!265 lt!2112753 lt!2112760) lt!2112873)))

(declare-fun bs!1193493 () Bool)

(assert (= bs!1193493 d!1656817))

(declare-fun m!6186632 () Bool)

(assert (=> bs!1193493 m!6186632))

(assert (=> bs!1193493 m!6186238))

(assert (=> bs!1193493 m!6186244))

(assert (=> bs!1193493 m!6186244))

(declare-fun m!6186634 () Bool)

(assert (=> bs!1193493 m!6186634))

(assert (=> bs!1193493 m!6186238))

(declare-fun m!6186636 () Bool)

(assert (=> bs!1193493 m!6186636))

(assert (=> b!5123942 d!1656817))

(declare-fun d!1656819 () Bool)

(declare-fun lt!2112876 () Int)

(assert (=> d!1656819 (>= lt!2112876 0)))

(declare-fun e!3195710 () Int)

(assert (=> d!1656819 (= lt!2112876 e!3195710)))

(declare-fun c!880709 () Bool)

(assert (=> d!1656819 (= c!880709 ((_ is Nil!59281) lt!2112766))))

(assert (=> d!1656819 (= (size!39545 lt!2112766) lt!2112876)))

(declare-fun b!5124171 () Bool)

(assert (=> b!5124171 (= e!3195710 0)))

(declare-fun b!5124172 () Bool)

(assert (=> b!5124172 (= e!3195710 (+ 1 (size!39545 (t!372428 lt!2112766))))))

(assert (= (and d!1656819 c!880709) b!5124171))

(assert (= (and d!1656819 (not c!880709)) b!5124172))

(declare-fun m!6186638 () Bool)

(assert (=> b!5124172 m!6186638))

(assert (=> b!5123943 d!1656819))

(declare-fun d!1656821 () Bool)

(declare-fun lambda!251622 () Int)

(declare-fun forall!13633 (List!59406 Int) Bool)

(assert (=> d!1656821 (= (inv!78778 setElem!30525) (forall!13633 (exprs!4123 setElem!30525) lambda!251622))))

(declare-fun bs!1193494 () Bool)

(assert (= bs!1193494 d!1656821))

(declare-fun m!6186640 () Bool)

(assert (=> bs!1193494 m!6186640))

(assert (=> setNonEmpty!30525 d!1656821))

(declare-fun d!1656823 () Bool)

(declare-fun c!880710 () Bool)

(assert (=> d!1656823 (= c!880710 ((_ is Cons!59281) testedP!265))))

(declare-fun e!3195711 () (InoxSet Context!7246))

(assert (=> d!1656823 (= (derivationZipper!136 baseZ!46 testedP!265) e!3195711)))

(declare-fun b!5124173 () Bool)

(assert (=> b!5124173 (= e!3195711 (derivationZipper!136 (derivationStepZipper!862 baseZ!46 (h!65729 testedP!265)) (t!372428 testedP!265)))))

(declare-fun b!5124174 () Bool)

(assert (=> b!5124174 (= e!3195711 baseZ!46)))

(assert (= (and d!1656823 c!880710) b!5124173))

(assert (= (and d!1656823 (not c!880710)) b!5124174))

(declare-fun m!6186642 () Bool)

(assert (=> b!5124173 m!6186642))

(assert (=> b!5124173 m!6186642))

(declare-fun m!6186644 () Bool)

(assert (=> b!5124173 m!6186644))

(assert (=> b!5123930 d!1656823))

(declare-fun lt!2112877 () List!59405)

(declare-fun b!5124178 () Bool)

(declare-fun e!3195713 () Bool)

(assert (=> b!5124178 (= e!3195713 (or (not (= lt!2112752 Nil!59281)) (= lt!2112877 testedP!265)))))

(declare-fun b!5124175 () Bool)

(declare-fun e!3195712 () List!59405)

(assert (=> b!5124175 (= e!3195712 lt!2112752)))

(declare-fun d!1656825 () Bool)

(assert (=> d!1656825 e!3195713))

(declare-fun res!2181974 () Bool)

(assert (=> d!1656825 (=> (not res!2181974) (not e!3195713))))

(assert (=> d!1656825 (= res!2181974 (= (content!10545 lt!2112877) ((_ map or) (content!10545 testedP!265) (content!10545 lt!2112752))))))

(assert (=> d!1656825 (= lt!2112877 e!3195712)))

(declare-fun c!880711 () Bool)

(assert (=> d!1656825 (= c!880711 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1656825 (= (++!13052 testedP!265 lt!2112752) lt!2112877)))

(declare-fun b!5124177 () Bool)

(declare-fun res!2181973 () Bool)

(assert (=> b!5124177 (=> (not res!2181973) (not e!3195713))))

(assert (=> b!5124177 (= res!2181973 (= (size!39545 lt!2112877) (+ (size!39545 testedP!265) (size!39545 lt!2112752))))))

(declare-fun b!5124176 () Bool)

(assert (=> b!5124176 (= e!3195712 (Cons!59281 (h!65729 testedP!265) (++!13052 (t!372428 testedP!265) lt!2112752)))))

(assert (= (and d!1656825 c!880711) b!5124175))

(assert (= (and d!1656825 (not c!880711)) b!5124176))

(assert (= (and d!1656825 res!2181974) b!5124177))

(assert (= (and b!5124177 res!2181973) b!5124178))

(declare-fun m!6186646 () Bool)

(assert (=> d!1656825 m!6186646))

(assert (=> d!1656825 m!6186348))

(declare-fun m!6186648 () Bool)

(assert (=> d!1656825 m!6186648))

(declare-fun m!6186650 () Bool)

(assert (=> b!5124177 m!6186650))

(assert (=> b!5124177 m!6186224))

(declare-fun m!6186652 () Bool)

(assert (=> b!5124177 m!6186652))

(declare-fun m!6186654 () Bool)

(assert (=> b!5124176 m!6186654))

(assert (=> b!5123950 d!1656825))

(declare-fun bs!1193495 () Bool)

(declare-fun d!1656827 () Bool)

(assert (= bs!1193495 (and d!1656827 d!1656821)))

(declare-fun lambda!251623 () Int)

(assert (=> bs!1193495 (= lambda!251623 lambda!251622)))

(assert (=> d!1656827 (= (inv!78778 setElem!30526) (forall!13633 (exprs!4123 setElem!30526) lambda!251623))))

(declare-fun bs!1193496 () Bool)

(assert (= bs!1193496 d!1656827))

(declare-fun m!6186656 () Bool)

(assert (=> bs!1193496 m!6186656))

(assert (=> setNonEmpty!30526 d!1656827))

(declare-fun d!1656829 () Bool)

(declare-fun lt!2112878 () Int)

(assert (=> d!1656829 (>= lt!2112878 0)))

(declare-fun e!3195714 () Int)

(assert (=> d!1656829 (= lt!2112878 e!3195714)))

(declare-fun c!880712 () Bool)

(assert (=> d!1656829 (= c!880712 ((_ is Nil!59281) input!5745))))

(assert (=> d!1656829 (= (size!39545 input!5745) lt!2112878)))

(declare-fun b!5124179 () Bool)

(assert (=> b!5124179 (= e!3195714 0)))

(declare-fun b!5124180 () Bool)

(assert (=> b!5124180 (= e!3195714 (+ 1 (size!39545 (t!372428 input!5745))))))

(assert (= (and d!1656829 c!880712) b!5124179))

(assert (= (and d!1656829 (not c!880712)) b!5124180))

(declare-fun m!6186658 () Bool)

(assert (=> b!5124180 m!6186658))

(assert (=> b!5123945 d!1656829))

(declare-fun e!3195716 () Bool)

(declare-fun lt!2112879 () List!59405)

(declare-fun b!5124184 () Bool)

(assert (=> b!5124184 (= e!3195716 (or (not (= lt!2112748 Nil!59281)) (= lt!2112879 lt!2112766)))))

(declare-fun b!5124181 () Bool)

(declare-fun e!3195715 () List!59405)

(assert (=> b!5124181 (= e!3195715 lt!2112748)))

(declare-fun d!1656831 () Bool)

(assert (=> d!1656831 e!3195716))

(declare-fun res!2181976 () Bool)

(assert (=> d!1656831 (=> (not res!2181976) (not e!3195716))))

(assert (=> d!1656831 (= res!2181976 (= (content!10545 lt!2112879) ((_ map or) (content!10545 lt!2112766) (content!10545 lt!2112748))))))

(assert (=> d!1656831 (= lt!2112879 e!3195715)))

(declare-fun c!880713 () Bool)

(assert (=> d!1656831 (= c!880713 ((_ is Nil!59281) lt!2112766))))

(assert (=> d!1656831 (= (++!13052 lt!2112766 lt!2112748) lt!2112879)))

(declare-fun b!5124183 () Bool)

(declare-fun res!2181975 () Bool)

(assert (=> b!5124183 (=> (not res!2181975) (not e!3195716))))

(assert (=> b!5124183 (= res!2181975 (= (size!39545 lt!2112879) (+ (size!39545 lt!2112766) (size!39545 lt!2112748))))))

(declare-fun b!5124182 () Bool)

(assert (=> b!5124182 (= e!3195715 (Cons!59281 (h!65729 lt!2112766) (++!13052 (t!372428 lt!2112766) lt!2112748)))))

(assert (= (and d!1656831 c!880713) b!5124181))

(assert (= (and d!1656831 (not c!880713)) b!5124182))

(assert (= (and d!1656831 res!2181976) b!5124183))

(assert (= (and b!5124183 res!2181975) b!5124184))

(declare-fun m!6186660 () Bool)

(assert (=> d!1656831 m!6186660))

(declare-fun m!6186662 () Bool)

(assert (=> d!1656831 m!6186662))

(declare-fun m!6186664 () Bool)

(assert (=> d!1656831 m!6186664))

(declare-fun m!6186666 () Bool)

(assert (=> b!5124183 m!6186666))

(assert (=> b!5124183 m!6186204))

(declare-fun m!6186668 () Bool)

(assert (=> b!5124183 m!6186668))

(declare-fun m!6186670 () Bool)

(assert (=> b!5124182 m!6186670))

(assert (=> b!5123946 d!1656831))

(declare-fun d!1656833 () Bool)

(declare-fun lt!2112880 () Int)

(assert (=> d!1656833 (>= lt!2112880 0)))

(declare-fun e!3195717 () Int)

(assert (=> d!1656833 (= lt!2112880 e!3195717)))

(declare-fun c!880714 () Bool)

(assert (=> d!1656833 (= c!880714 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1656833 (= (size!39545 testedP!265) lt!2112880)))

(declare-fun b!5124185 () Bool)

(assert (=> b!5124185 (= e!3195717 0)))

(declare-fun b!5124186 () Bool)

(assert (=> b!5124186 (= e!3195717 (+ 1 (size!39545 (t!372428 testedP!265))))))

(assert (= (and d!1656833 c!880714) b!5124185))

(assert (= (and d!1656833 (not c!880714)) b!5124186))

(declare-fun m!6186672 () Bool)

(assert (=> b!5124186 m!6186672))

(assert (=> b!5123937 d!1656833))

(declare-fun d!1656835 () Bool)

(declare-fun lt!2112881 () Int)

(assert (=> d!1656835 (>= lt!2112881 0)))

(declare-fun e!3195718 () Int)

(assert (=> d!1656835 (= lt!2112881 e!3195718)))

(declare-fun c!880715 () Bool)

(assert (=> d!1656835 (= c!880715 ((_ is Nil!59281) knownP!20))))

(assert (=> d!1656835 (= (size!39545 knownP!20) lt!2112881)))

(declare-fun b!5124187 () Bool)

(assert (=> b!5124187 (= e!3195718 0)))

(declare-fun b!5124188 () Bool)

(assert (=> b!5124188 (= e!3195718 (+ 1 (size!39545 (t!372428 knownP!20))))))

(assert (= (and d!1656835 c!880715) b!5124187))

(assert (= (and d!1656835 (not c!880715)) b!5124188))

(declare-fun m!6186674 () Bool)

(assert (=> b!5124188 m!6186674))

(assert (=> b!5123937 d!1656835))

(declare-fun d!1656837 () Bool)

(assert (=> d!1656837 (= lt!2112749 lt!2112753)))

(declare-fun lt!2112884 () Unit!150425)

(declare-fun choose!37704 (List!59405 List!59405 List!59405 List!59405 List!59405) Unit!150425)

(assert (=> d!1656837 (= lt!2112884 (choose!37704 testedP!265 lt!2112749 testedP!265 lt!2112753 knownP!20))))

(assert (=> d!1656837 (isPrefix!5644 testedP!265 knownP!20)))

(assert (=> d!1656837 (= (lemmaSamePrefixThenSameSuffix!2662 testedP!265 lt!2112749 testedP!265 lt!2112753 knownP!20) lt!2112884)))

(declare-fun bs!1193497 () Bool)

(assert (= bs!1193497 d!1656837))

(declare-fun m!6186676 () Bool)

(assert (=> bs!1193497 m!6186676))

(assert (=> bs!1193497 m!6186232))

(assert (=> b!5123938 d!1656837))

(declare-fun e!3195720 () Bool)

(declare-fun b!5124192 () Bool)

(declare-fun lt!2112885 () List!59405)

(assert (=> b!5124192 (= e!3195720 (or (not (= lt!2112749 Nil!59281)) (= lt!2112885 testedP!265)))))

(declare-fun b!5124189 () Bool)

(declare-fun e!3195719 () List!59405)

(assert (=> b!5124189 (= e!3195719 lt!2112749)))

(declare-fun d!1656839 () Bool)

(assert (=> d!1656839 e!3195720))

(declare-fun res!2181978 () Bool)

(assert (=> d!1656839 (=> (not res!2181978) (not e!3195720))))

(assert (=> d!1656839 (= res!2181978 (= (content!10545 lt!2112885) ((_ map or) (content!10545 testedP!265) (content!10545 lt!2112749))))))

(assert (=> d!1656839 (= lt!2112885 e!3195719)))

(declare-fun c!880716 () Bool)

(assert (=> d!1656839 (= c!880716 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1656839 (= (++!13052 testedP!265 lt!2112749) lt!2112885)))

(declare-fun b!5124191 () Bool)

(declare-fun res!2181977 () Bool)

(assert (=> b!5124191 (=> (not res!2181977) (not e!3195720))))

(assert (=> b!5124191 (= res!2181977 (= (size!39545 lt!2112885) (+ (size!39545 testedP!265) (size!39545 lt!2112749))))))

(declare-fun b!5124190 () Bool)

(assert (=> b!5124190 (= e!3195719 (Cons!59281 (h!65729 testedP!265) (++!13052 (t!372428 testedP!265) lt!2112749)))))

(assert (= (and d!1656839 c!880716) b!5124189))

(assert (= (and d!1656839 (not c!880716)) b!5124190))

(assert (= (and d!1656839 res!2181978) b!5124191))

(assert (= (and b!5124191 res!2181977) b!5124192))

(declare-fun m!6186678 () Bool)

(assert (=> d!1656839 m!6186678))

(assert (=> d!1656839 m!6186348))

(declare-fun m!6186680 () Bool)

(assert (=> d!1656839 m!6186680))

(declare-fun m!6186682 () Bool)

(assert (=> b!5124191 m!6186682))

(assert (=> b!5124191 m!6186224))

(declare-fun m!6186684 () Bool)

(assert (=> b!5124191 m!6186684))

(declare-fun m!6186686 () Bool)

(assert (=> b!5124190 m!6186686))

(assert (=> b!5123938 d!1656839))

(declare-fun e!3195722 () Bool)

(declare-fun lt!2112886 () List!59405)

(declare-fun b!5124196 () Bool)

(assert (=> b!5124196 (= e!3195722 (or (not (= lt!2112748 Nil!59281)) (= lt!2112886 lt!2112768)))))

(declare-fun b!5124193 () Bool)

(declare-fun e!3195721 () List!59405)

(assert (=> b!5124193 (= e!3195721 lt!2112748)))

(declare-fun d!1656841 () Bool)

(assert (=> d!1656841 e!3195722))

(declare-fun res!2181980 () Bool)

(assert (=> d!1656841 (=> (not res!2181980) (not e!3195722))))

(assert (=> d!1656841 (= res!2181980 (= (content!10545 lt!2112886) ((_ map or) (content!10545 lt!2112768) (content!10545 lt!2112748))))))

(assert (=> d!1656841 (= lt!2112886 e!3195721)))

(declare-fun c!880717 () Bool)

(assert (=> d!1656841 (= c!880717 ((_ is Nil!59281) lt!2112768))))

(assert (=> d!1656841 (= (++!13052 lt!2112768 lt!2112748) lt!2112886)))

(declare-fun b!5124195 () Bool)

(declare-fun res!2181979 () Bool)

(assert (=> b!5124195 (=> (not res!2181979) (not e!3195722))))

(assert (=> b!5124195 (= res!2181979 (= (size!39545 lt!2112886) (+ (size!39545 lt!2112768) (size!39545 lt!2112748))))))

(declare-fun b!5124194 () Bool)

(assert (=> b!5124194 (= e!3195721 (Cons!59281 (h!65729 lt!2112768) (++!13052 (t!372428 lt!2112768) lt!2112748)))))

(assert (= (and d!1656841 c!880717) b!5124193))

(assert (= (and d!1656841 (not c!880717)) b!5124194))

(assert (= (and d!1656841 res!2181980) b!5124195))

(assert (= (and b!5124195 res!2181979) b!5124196))

(declare-fun m!6186688 () Bool)

(assert (=> d!1656841 m!6186688))

(assert (=> d!1656841 m!6186350))

(assert (=> d!1656841 m!6186664))

(declare-fun m!6186690 () Bool)

(assert (=> b!5124195 m!6186690))

(assert (=> b!5124195 m!6186354))

(assert (=> b!5124195 m!6186668))

(declare-fun m!6186692 () Bool)

(assert (=> b!5124194 m!6186692))

(assert (=> b!5123938 d!1656841))

(declare-fun d!1656843 () Bool)

(assert (=> d!1656843 (= (++!13052 (++!13052 testedP!265 lt!2112768) lt!2112748) (++!13052 testedP!265 (++!13052 lt!2112768 lt!2112748)))))

(declare-fun lt!2112887 () Unit!150425)

(assert (=> d!1656843 (= lt!2112887 (choose!37702 testedP!265 lt!2112768 lt!2112748))))

(assert (=> d!1656843 (= (lemmaConcatAssociativity!2796 testedP!265 lt!2112768 lt!2112748) lt!2112887)))

(declare-fun bs!1193498 () Bool)

(assert (= bs!1193498 d!1656843))

(declare-fun m!6186694 () Bool)

(assert (=> bs!1193498 m!6186694))

(assert (=> bs!1193498 m!6186250))

(assert (=> bs!1193498 m!6186220))

(assert (=> bs!1193498 m!6186220))

(declare-fun m!6186696 () Bool)

(assert (=> bs!1193498 m!6186696))

(assert (=> bs!1193498 m!6186250))

(declare-fun m!6186698 () Bool)

(assert (=> bs!1193498 m!6186698))

(assert (=> b!5123938 d!1656843))

(declare-fun b!5124200 () Bool)

(declare-fun e!3195724 () Bool)

(declare-fun lt!2112888 () List!59405)

(assert (=> b!5124200 (= e!3195724 (or (not (= lt!2112760 Nil!59281)) (= lt!2112888 lt!2112772)))))

(declare-fun b!5124197 () Bool)

(declare-fun e!3195723 () List!59405)

(assert (=> b!5124197 (= e!3195723 lt!2112760)))

(declare-fun d!1656845 () Bool)

(assert (=> d!1656845 e!3195724))

(declare-fun res!2181982 () Bool)

(assert (=> d!1656845 (=> (not res!2181982) (not e!3195724))))

(assert (=> d!1656845 (= res!2181982 (= (content!10545 lt!2112888) ((_ map or) (content!10545 lt!2112772) (content!10545 lt!2112760))))))

(assert (=> d!1656845 (= lt!2112888 e!3195723)))

(declare-fun c!880718 () Bool)

(assert (=> d!1656845 (= c!880718 ((_ is Nil!59281) lt!2112772))))

(assert (=> d!1656845 (= (++!13052 lt!2112772 lt!2112760) lt!2112888)))

(declare-fun b!5124199 () Bool)

(declare-fun res!2181981 () Bool)

(assert (=> b!5124199 (=> (not res!2181981) (not e!3195724))))

(assert (=> b!5124199 (= res!2181981 (= (size!39545 lt!2112888) (+ (size!39545 lt!2112772) (size!39545 lt!2112760))))))

(declare-fun b!5124198 () Bool)

(assert (=> b!5124198 (= e!3195723 (Cons!59281 (h!65729 lt!2112772) (++!13052 (t!372428 lt!2112772) lt!2112760)))))

(assert (= (and d!1656845 c!880718) b!5124197))

(assert (= (and d!1656845 (not c!880718)) b!5124198))

(assert (= (and d!1656845 res!2181982) b!5124199))

(assert (= (and b!5124199 res!2181981) b!5124200))

(declare-fun m!6186700 () Bool)

(assert (=> d!1656845 m!6186700))

(declare-fun m!6186702 () Bool)

(assert (=> d!1656845 m!6186702))

(assert (=> d!1656845 m!6186322))

(declare-fun m!6186704 () Bool)

(assert (=> b!5124199 m!6186704))

(declare-fun m!6186706 () Bool)

(assert (=> b!5124199 m!6186706))

(assert (=> b!5124199 m!6186326))

(declare-fun m!6186708 () Bool)

(assert (=> b!5124198 m!6186708))

(assert (=> b!5123929 d!1656845))

(declare-fun lt!2112889 () List!59405)

(declare-fun b!5124204 () Bool)

(declare-fun e!3195726 () Bool)

(assert (=> b!5124204 (= e!3195726 (or (not (= lt!2112753 Nil!59281)) (= lt!2112889 testedP!265)))))

(declare-fun b!5124201 () Bool)

(declare-fun e!3195725 () List!59405)

(assert (=> b!5124201 (= e!3195725 lt!2112753)))

(declare-fun d!1656847 () Bool)

(assert (=> d!1656847 e!3195726))

(declare-fun res!2181984 () Bool)

(assert (=> d!1656847 (=> (not res!2181984) (not e!3195726))))

(assert (=> d!1656847 (= res!2181984 (= (content!10545 lt!2112889) ((_ map or) (content!10545 testedP!265) (content!10545 lt!2112753))))))

(assert (=> d!1656847 (= lt!2112889 e!3195725)))

(declare-fun c!880719 () Bool)

(assert (=> d!1656847 (= c!880719 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1656847 (= (++!13052 testedP!265 lt!2112753) lt!2112889)))

(declare-fun b!5124203 () Bool)

(declare-fun res!2181983 () Bool)

(assert (=> b!5124203 (=> (not res!2181983) (not e!3195726))))

(assert (=> b!5124203 (= res!2181983 (= (size!39545 lt!2112889) (+ (size!39545 testedP!265) (size!39545 lt!2112753))))))

(declare-fun b!5124202 () Bool)

(assert (=> b!5124202 (= e!3195725 (Cons!59281 (h!65729 testedP!265) (++!13052 (t!372428 testedP!265) lt!2112753)))))

(assert (= (and d!1656847 c!880719) b!5124201))

(assert (= (and d!1656847 (not c!880719)) b!5124202))

(assert (= (and d!1656847 res!2181984) b!5124203))

(assert (= (and b!5124203 res!2181983) b!5124204))

(declare-fun m!6186710 () Bool)

(assert (=> d!1656847 m!6186710))

(assert (=> d!1656847 m!6186348))

(assert (=> d!1656847 m!6186624))

(declare-fun m!6186712 () Bool)

(assert (=> b!5124203 m!6186712))

(assert (=> b!5124203 m!6186224))

(assert (=> b!5124203 m!6186628))

(declare-fun m!6186714 () Bool)

(assert (=> b!5124202 m!6186714))

(assert (=> b!5123929 d!1656847))

(declare-fun d!1656849 () Bool)

(assert (=> d!1656849 (= (head!10955 lt!2112753) (h!65729 lt!2112753))))

(assert (=> b!5123947 d!1656849))

(declare-fun d!1656851 () Bool)

(assert (=> d!1656851 (= lt!2112754 lt!2112752)))

(declare-fun lt!2112890 () Unit!150425)

(assert (=> d!1656851 (= lt!2112890 (choose!37704 testedP!265 lt!2112754 testedP!265 lt!2112752 input!5745))))

(assert (=> d!1656851 (isPrefix!5644 testedP!265 input!5745)))

(assert (=> d!1656851 (= (lemmaSamePrefixThenSameSuffix!2662 testedP!265 lt!2112754 testedP!265 lt!2112752 input!5745) lt!2112890)))

(declare-fun bs!1193499 () Bool)

(assert (= bs!1193499 d!1656851))

(declare-fun m!6186716 () Bool)

(assert (=> bs!1193499 m!6186716))

(assert (=> bs!1193499 m!6186202))

(assert (=> b!5123947 d!1656851))

(declare-fun d!1656853 () Bool)

(declare-fun c!880720 () Bool)

(assert (=> d!1656853 (= c!880720 (isEmpty!31952 lt!2112748))))

(declare-fun e!3195727 () Bool)

(assert (=> d!1656853 (= (matchZipper!907 lt!2112764 lt!2112748) e!3195727)))

(declare-fun b!5124205 () Bool)

(assert (=> b!5124205 (= e!3195727 (nullableZipper!1036 lt!2112764))))

(declare-fun b!5124206 () Bool)

(assert (=> b!5124206 (= e!3195727 (matchZipper!907 (derivationStepZipper!862 lt!2112764 (head!10955 lt!2112748)) (tail!10090 lt!2112748)))))

(assert (= (and d!1656853 c!880720) b!5124205))

(assert (= (and d!1656853 (not c!880720)) b!5124206))

(declare-fun m!6186718 () Bool)

(assert (=> d!1656853 m!6186718))

(declare-fun m!6186720 () Bool)

(assert (=> b!5124205 m!6186720))

(declare-fun m!6186722 () Bool)

(assert (=> b!5124206 m!6186722))

(assert (=> b!5124206 m!6186722))

(declare-fun m!6186724 () Bool)

(assert (=> b!5124206 m!6186724))

(declare-fun m!6186726 () Bool)

(assert (=> b!5124206 m!6186726))

(assert (=> b!5124206 m!6186724))

(assert (=> b!5124206 m!6186726))

(declare-fun m!6186728 () Bool)

(assert (=> b!5124206 m!6186728))

(assert (=> b!5123934 d!1656853))

(declare-fun d!1656855 () Bool)

(declare-fun c!880721 () Bool)

(assert (=> d!1656855 (= c!880721 (isEmpty!31952 lt!2112753))))

(declare-fun e!3195728 () Bool)

(assert (=> d!1656855 (= (matchZipper!907 z!4463 lt!2112753) e!3195728)))

(declare-fun b!5124207 () Bool)

(assert (=> b!5124207 (= e!3195728 (nullableZipper!1036 z!4463))))

(declare-fun b!5124208 () Bool)

(assert (=> b!5124208 (= e!3195728 (matchZipper!907 (derivationStepZipper!862 z!4463 (head!10955 lt!2112753)) (tail!10090 lt!2112753)))))

(assert (= (and d!1656855 c!880721) b!5124207))

(assert (= (and d!1656855 (not c!880721)) b!5124208))

(declare-fun m!6186730 () Bool)

(assert (=> d!1656855 m!6186730))

(declare-fun m!6186732 () Bool)

(assert (=> b!5124207 m!6186732))

(assert (=> b!5124208 m!6186282))

(assert (=> b!5124208 m!6186282))

(declare-fun m!6186734 () Bool)

(assert (=> b!5124208 m!6186734))

(assert (=> b!5124208 m!6186210))

(assert (=> b!5124208 m!6186734))

(assert (=> b!5124208 m!6186210))

(declare-fun m!6186736 () Bool)

(assert (=> b!5124208 m!6186736))

(assert (=> b!5123952 d!1656855))

(declare-fun d!1656857 () Bool)

(declare-fun lt!2112891 () List!59405)

(assert (=> d!1656857 (= (++!13052 testedP!265 lt!2112891) knownP!20)))

(declare-fun e!3195729 () List!59405)

(assert (=> d!1656857 (= lt!2112891 e!3195729)))

(declare-fun c!880722 () Bool)

(assert (=> d!1656857 (= c!880722 ((_ is Cons!59281) testedP!265))))

(assert (=> d!1656857 (>= (size!39545 knownP!20) (size!39545 testedP!265))))

(assert (=> d!1656857 (= (getSuffix!3316 knownP!20 testedP!265) lt!2112891)))

(declare-fun b!5124209 () Bool)

(assert (=> b!5124209 (= e!3195729 (getSuffix!3316 (tail!10090 knownP!20) (t!372428 testedP!265)))))

(declare-fun b!5124210 () Bool)

(assert (=> b!5124210 (= e!3195729 knownP!20)))

(assert (= (and d!1656857 c!880722) b!5124209))

(assert (= (and d!1656857 (not c!880722)) b!5124210))

(declare-fun m!6186738 () Bool)

(assert (=> d!1656857 m!6186738))

(assert (=> d!1656857 m!6186226))

(assert (=> d!1656857 m!6186224))

(assert (=> b!5124209 m!6186336))

(assert (=> b!5124209 m!6186336))

(declare-fun m!6186740 () Bool)

(assert (=> b!5124209 m!6186740))

(assert (=> b!5123952 d!1656857))

(declare-fun d!1656859 () Bool)

(declare-fun e!3195731 () Bool)

(assert (=> d!1656859 e!3195731))

(declare-fun res!2181985 () Bool)

(assert (=> d!1656859 (=> res!2181985 e!3195731)))

(declare-fun lt!2112892 () Bool)

(assert (=> d!1656859 (= res!2181985 (not lt!2112892))))

(declare-fun e!3195732 () Bool)

(assert (=> d!1656859 (= lt!2112892 e!3195732)))

(declare-fun res!2181986 () Bool)

(assert (=> d!1656859 (=> res!2181986 e!3195732)))

(assert (=> d!1656859 (= res!2181986 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1656859 (= (isPrefix!5644 testedP!265 knownP!20) lt!2112892)))

(declare-fun b!5124211 () Bool)

(declare-fun e!3195730 () Bool)

(assert (=> b!5124211 (= e!3195732 e!3195730)))

(declare-fun res!2181988 () Bool)

(assert (=> b!5124211 (=> (not res!2181988) (not e!3195730))))

(assert (=> b!5124211 (= res!2181988 (not ((_ is Nil!59281) knownP!20)))))

(declare-fun b!5124212 () Bool)

(declare-fun res!2181987 () Bool)

(assert (=> b!5124212 (=> (not res!2181987) (not e!3195730))))

(assert (=> b!5124212 (= res!2181987 (= (head!10955 testedP!265) (head!10955 knownP!20)))))

(declare-fun b!5124213 () Bool)

(assert (=> b!5124213 (= e!3195730 (isPrefix!5644 (tail!10090 testedP!265) (tail!10090 knownP!20)))))

(declare-fun b!5124214 () Bool)

(assert (=> b!5124214 (= e!3195731 (>= (size!39545 knownP!20) (size!39545 testedP!265)))))

(assert (= (and d!1656859 (not res!2181986)) b!5124211))

(assert (= (and b!5124211 res!2181988) b!5124212))

(assert (= (and b!5124212 res!2181987) b!5124213))

(assert (= (and d!1656859 (not res!2181985)) b!5124214))

(declare-fun m!6186742 () Bool)

(assert (=> b!5124212 m!6186742))

(assert (=> b!5124212 m!6186332))

(declare-fun m!6186744 () Bool)

(assert (=> b!5124213 m!6186744))

(assert (=> b!5124213 m!6186336))

(assert (=> b!5124213 m!6186744))

(assert (=> b!5124213 m!6186336))

(declare-fun m!6186746 () Bool)

(assert (=> b!5124213 m!6186746))

(assert (=> b!5124214 m!6186226))

(assert (=> b!5124214 m!6186224))

(assert (=> b!5123952 d!1656859))

(declare-fun d!1656861 () Bool)

(assert (=> d!1656861 (isPrefix!5644 testedP!265 knownP!20)))

(declare-fun lt!2112893 () Unit!150425)

(assert (=> d!1656861 (= lt!2112893 (choose!37696 knownP!20 testedP!265 input!5745))))

(assert (=> d!1656861 (isPrefix!5644 knownP!20 input!5745)))

(assert (=> d!1656861 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!779 knownP!20 testedP!265 input!5745) lt!2112893)))

(declare-fun bs!1193500 () Bool)

(assert (= bs!1193500 d!1656861))

(assert (=> bs!1193500 m!6186232))

(declare-fun m!6186748 () Bool)

(assert (=> bs!1193500 m!6186748))

(assert (=> bs!1193500 m!6186276))

(assert (=> b!5123952 d!1656861))

(declare-fun d!1656863 () Bool)

(assert (=> d!1656863 (= ($colon$colon!1153 lt!2112771 lt!2112765) (Cons!59281 lt!2112765 lt!2112771))))

(assert (=> b!5123953 d!1656863))

(declare-fun d!1656865 () Bool)

(assert (=> d!1656865 (= (tail!10090 lt!2112753) (t!372428 lt!2112753))))

(assert (=> b!5123953 d!1656865))

(declare-fun d!1656867 () Bool)

(declare-fun e!3195734 () Bool)

(assert (=> d!1656867 e!3195734))

(declare-fun res!2181989 () Bool)

(assert (=> d!1656867 (=> res!2181989 e!3195734)))

(declare-fun lt!2112894 () Bool)

(assert (=> d!1656867 (= res!2181989 (not lt!2112894))))

(declare-fun e!3195735 () Bool)

(assert (=> d!1656867 (= lt!2112894 e!3195735)))

(declare-fun res!2181990 () Bool)

(assert (=> d!1656867 (=> res!2181990 e!3195735)))

(assert (=> d!1656867 (= res!2181990 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1656867 (= (isPrefix!5644 testedP!265 input!5745) lt!2112894)))

(declare-fun b!5124215 () Bool)

(declare-fun e!3195733 () Bool)

(assert (=> b!5124215 (= e!3195735 e!3195733)))

(declare-fun res!2181992 () Bool)

(assert (=> b!5124215 (=> (not res!2181992) (not e!3195733))))

(assert (=> b!5124215 (= res!2181992 (not ((_ is Nil!59281) input!5745)))))

(declare-fun b!5124216 () Bool)

(declare-fun res!2181991 () Bool)

(assert (=> b!5124216 (=> (not res!2181991) (not e!3195733))))

(assert (=> b!5124216 (= res!2181991 (= (head!10955 testedP!265) (head!10955 input!5745)))))

(declare-fun b!5124217 () Bool)

(assert (=> b!5124217 (= e!3195733 (isPrefix!5644 (tail!10090 testedP!265) (tail!10090 input!5745)))))

(declare-fun b!5124218 () Bool)

(assert (=> b!5124218 (= e!3195734 (>= (size!39545 input!5745) (size!39545 testedP!265)))))

(assert (= (and d!1656867 (not res!2181990)) b!5124215))

(assert (= (and b!5124215 res!2181992) b!5124216))

(assert (= (and b!5124216 res!2181991) b!5124217))

(assert (= (and d!1656867 (not res!2181989)) b!5124218))

(assert (=> b!5124216 m!6186742))

(assert (=> b!5124216 m!6186342))

(assert (=> b!5124217 m!6186744))

(assert (=> b!5124217 m!6186314))

(assert (=> b!5124217 m!6186744))

(assert (=> b!5124217 m!6186314))

(declare-fun m!6186750 () Bool)

(assert (=> b!5124217 m!6186750))

(assert (=> b!5124218 m!6186280))

(assert (=> b!5124218 m!6186224))

(assert (=> start!540904 d!1656867))

(declare-fun bs!1193501 () Bool)

(declare-fun b!5124223 () Bool)

(declare-fun d!1656869 () Bool)

(assert (= bs!1193501 (and b!5124223 d!1656869)))

(declare-fun lambda!251637 () Int)

(declare-fun lambda!251636 () Int)

(assert (=> bs!1193501 (not (= lambda!251637 lambda!251636))))

(declare-fun bs!1193502 () Bool)

(declare-fun b!5124224 () Bool)

(assert (= bs!1193502 (and b!5124224 d!1656869)))

(declare-fun lambda!251638 () Int)

(assert (=> bs!1193502 (not (= lambda!251638 lambda!251636))))

(declare-fun bs!1193503 () Bool)

(assert (= bs!1193503 (and b!5124224 b!5124223)))

(assert (=> bs!1193503 (= lambda!251638 lambda!251637)))

(declare-fun e!3195742 () Unit!150425)

(declare-fun Unit!150429 () Unit!150425)

(assert (=> b!5124223 (= e!3195742 Unit!150429)))

(declare-datatypes ((List!59408 0))(
  ( (Nil!59284) (Cons!59284 (h!65732 Context!7246) (t!372433 List!59408)) )
))
(declare-fun lt!2112917 () List!59408)

(declare-fun call!356700 () List!59408)

(assert (=> b!5124223 (= lt!2112917 call!356700)))

(declare-fun lt!2112912 () Unit!150425)

(declare-fun lemmaNotForallThenExists!346 (List!59408 Int) Unit!150425)

(assert (=> b!5124223 (= lt!2112912 (lemmaNotForallThenExists!346 lt!2112917 lambda!251636))))

(declare-fun call!356701 () Bool)

(assert (=> b!5124223 call!356701))

(declare-fun lt!2112918 () Unit!150425)

(assert (=> b!5124223 (= lt!2112918 lt!2112912)))

(declare-fun bm!356695 () Bool)

(declare-fun toList!8272 ((InoxSet Context!7246)) List!59408)

(assert (=> bm!356695 (= call!356700 (toList!8272 z!4463))))

(declare-fun lt!2112915 () Bool)

(declare-datatypes ((Option!14706 0))(
  ( (None!14705) (Some!14705 (v!50718 List!59405)) )
))
(declare-fun isEmpty!31953 (Option!14706) Bool)

(declare-fun getLanguageWitness!831 ((InoxSet Context!7246)) Option!14706)

(assert (=> d!1656869 (= lt!2112915 (isEmpty!31953 (getLanguageWitness!831 z!4463)))))

(declare-fun forall!13634 ((InoxSet Context!7246) Int) Bool)

(assert (=> d!1656869 (= lt!2112915 (forall!13634 z!4463 lambda!251636))))

(declare-fun lt!2112911 () Unit!150425)

(assert (=> d!1656869 (= lt!2112911 e!3195742)))

(declare-fun c!880733 () Bool)

(assert (=> d!1656869 (= c!880733 (not (forall!13634 z!4463 lambda!251636)))))

(assert (=> d!1656869 (= (lostCauseZipper!1121 z!4463) lt!2112915)))

(declare-fun lt!2112914 () List!59408)

(declare-fun bm!356696 () Bool)

(declare-fun exists!1491 (List!59408 Int) Bool)

(assert (=> bm!356696 (= call!356701 (exists!1491 (ite c!880733 lt!2112917 lt!2112914) (ite c!880733 lambda!251637 lambda!251638)))))

(declare-fun Unit!150430 () Unit!150425)

(assert (=> b!5124224 (= e!3195742 Unit!150430)))

(assert (=> b!5124224 (= lt!2112914 call!356700)))

(declare-fun lt!2112916 () Unit!150425)

(declare-fun lemmaForallThenNotExists!329 (List!59408 Int) Unit!150425)

(assert (=> b!5124224 (= lt!2112916 (lemmaForallThenNotExists!329 lt!2112914 lambda!251636))))

(assert (=> b!5124224 (not call!356701)))

(declare-fun lt!2112913 () Unit!150425)

(assert (=> b!5124224 (= lt!2112913 lt!2112916)))

(assert (= (and d!1656869 c!880733) b!5124223))

(assert (= (and d!1656869 (not c!880733)) b!5124224))

(assert (= (or b!5124223 b!5124224) bm!356695))

(assert (= (or b!5124223 b!5124224) bm!356696))

(declare-fun m!6186752 () Bool)

(assert (=> bm!356695 m!6186752))

(declare-fun m!6186754 () Bool)

(assert (=> b!5124224 m!6186754))

(declare-fun m!6186756 () Bool)

(assert (=> bm!356696 m!6186756))

(declare-fun m!6186758 () Bool)

(assert (=> b!5124223 m!6186758))

(declare-fun m!6186760 () Bool)

(assert (=> d!1656869 m!6186760))

(assert (=> d!1656869 m!6186760))

(declare-fun m!6186762 () Bool)

(assert (=> d!1656869 m!6186762))

(declare-fun m!6186764 () Bool)

(assert (=> d!1656869 m!6186764))

(assert (=> d!1656869 m!6186764))

(assert (=> b!5123944 d!1656869))

(declare-fun b!5124229 () Bool)

(declare-fun e!3195745 () Bool)

(declare-fun tp!1429459 () Bool)

(assert (=> b!5124229 (= e!3195745 (and tp_is_empty!37751 tp!1429459))))

(assert (=> b!5123951 (= tp!1429430 e!3195745)))

(assert (= (and b!5123951 ((_ is Cons!59281) (t!372428 input!5745))) b!5124229))

(declare-fun condSetEmpty!30533 () Bool)

(assert (=> setNonEmpty!30525 (= condSetEmpty!30533 (= setRest!30526 ((as const (Array Context!7246 Bool)) false)))))

(declare-fun setRes!30533 () Bool)

(assert (=> setNonEmpty!30525 (= tp!1429431 setRes!30533)))

(declare-fun setIsEmpty!30533 () Bool)

(assert (=> setIsEmpty!30533 setRes!30533))

(declare-fun setNonEmpty!30533 () Bool)

(declare-fun e!3195748 () Bool)

(declare-fun setElem!30533 () Context!7246)

(declare-fun tp!1429465 () Bool)

(assert (=> setNonEmpty!30533 (= setRes!30533 (and tp!1429465 (inv!78778 setElem!30533) e!3195748))))

(declare-fun setRest!30533 () (InoxSet Context!7246))

(assert (=> setNonEmpty!30533 (= setRest!30526 ((_ map or) (store ((as const (Array Context!7246 Bool)) false) setElem!30533 true) setRest!30533))))

(declare-fun b!5124234 () Bool)

(declare-fun tp!1429464 () Bool)

(assert (=> b!5124234 (= e!3195748 tp!1429464)))

(assert (= (and setNonEmpty!30525 condSetEmpty!30533) setIsEmpty!30533))

(assert (= (and setNonEmpty!30525 (not condSetEmpty!30533)) setNonEmpty!30533))

(assert (= setNonEmpty!30533 b!5124234))

(declare-fun m!6186766 () Bool)

(assert (=> setNonEmpty!30533 m!6186766))

(declare-fun b!5124239 () Bool)

(declare-fun e!3195751 () Bool)

(declare-fun tp!1429470 () Bool)

(declare-fun tp!1429471 () Bool)

(assert (=> b!5124239 (= e!3195751 (and tp!1429470 tp!1429471))))

(assert (=> b!5123948 (= tp!1429433 e!3195751)))

(assert (= (and b!5123948 ((_ is Cons!59282) (exprs!4123 setElem!30526))) b!5124239))

(declare-fun b!5124240 () Bool)

(declare-fun e!3195752 () Bool)

(declare-fun tp!1429472 () Bool)

(declare-fun tp!1429473 () Bool)

(assert (=> b!5124240 (= e!3195752 (and tp!1429472 tp!1429473))))

(assert (=> b!5123939 (= tp!1429432 e!3195752)))

(assert (= (and b!5123939 ((_ is Cons!59282) (exprs!4123 setElem!30525))) b!5124240))

(declare-fun b!5124241 () Bool)

(declare-fun e!3195753 () Bool)

(declare-fun tp!1429474 () Bool)

(assert (=> b!5124241 (= e!3195753 (and tp_is_empty!37751 tp!1429474))))

(assert (=> b!5123935 (= tp!1429429 e!3195753)))

(assert (= (and b!5123935 ((_ is Cons!59281) (t!372428 testedP!265))) b!5124241))

(declare-fun b!5124242 () Bool)

(declare-fun e!3195754 () Bool)

(declare-fun tp!1429475 () Bool)

(assert (=> b!5124242 (= e!3195754 (and tp_is_empty!37751 tp!1429475))))

(assert (=> b!5123936 (= tp!1429435 e!3195754)))

(assert (= (and b!5123936 ((_ is Cons!59281) (t!372428 knownP!20))) b!5124242))

(declare-fun condSetEmpty!30534 () Bool)

(assert (=> setNonEmpty!30526 (= condSetEmpty!30534 (= setRest!30525 ((as const (Array Context!7246 Bool)) false)))))

(declare-fun setRes!30534 () Bool)

(assert (=> setNonEmpty!30526 (= tp!1429434 setRes!30534)))

(declare-fun setIsEmpty!30534 () Bool)

(assert (=> setIsEmpty!30534 setRes!30534))

(declare-fun tp!1429477 () Bool)

(declare-fun setElem!30534 () Context!7246)

(declare-fun e!3195755 () Bool)

(declare-fun setNonEmpty!30534 () Bool)

(assert (=> setNonEmpty!30534 (= setRes!30534 (and tp!1429477 (inv!78778 setElem!30534) e!3195755))))

(declare-fun setRest!30534 () (InoxSet Context!7246))

(assert (=> setNonEmpty!30534 (= setRest!30525 ((_ map or) (store ((as const (Array Context!7246 Bool)) false) setElem!30534 true) setRest!30534))))

(declare-fun b!5124243 () Bool)

(declare-fun tp!1429476 () Bool)

(assert (=> b!5124243 (= e!3195755 tp!1429476)))

(assert (= (and setNonEmpty!30526 condSetEmpty!30534) setIsEmpty!30534))

(assert (= (and setNonEmpty!30526 (not condSetEmpty!30534)) setNonEmpty!30534))

(assert (= setNonEmpty!30534 b!5124243))

(declare-fun m!6186768 () Bool)

(assert (=> setNonEmpty!30534 m!6186768))

(check-sat (not b!5124218) (not d!1656857) (not b!5124212) (not b!5124240) (not b!5124017) (not d!1656821) (not b!5124019) (not b!5124020) (not b!5124150) (not b!5123988) (not b!5124243) (not d!1656719) (not b!5124239) (not b!5124216) (not d!1656841) (not d!1656851) (not d!1656853) tp_is_empty!37751 (not b!5124190) (not b!5124188) (not b!5124199) (not b!5124191) (not b!5124013) (not b!5124229) (not b!5124194) (not b!5124209) (not b!5124015) (not b!5124234) (not b!5124177) (not d!1656813) (not b!5124145) (not d!1656709) (not d!1656845) (not d!1656807) (not d!1656837) (not d!1656717) (not d!1656817) (not d!1656725) (not d!1656839) (not b!5124207) (not b!5124202) (not b!5124205) (not b!5124161) (not b!5124016) (not b!5124176) (not d!1656825) (not b!5124214) (not d!1656811) (not setNonEmpty!30533) (not d!1656847) (not b!5124203) (not b!5124242) (not b!5124186) (not b!5124022) (not b!5124000) (not d!1656803) (not d!1656815) (not b!5124198) (not b!5124172) (not d!1656831) (not b!5124173) (not b!5124147) (not b!5124206) (not b!5124195) (not d!1656861) (not bm!356695) (not b!5124011) (not b!5124152) (not setNonEmpty!30534) (not d!1656869) (not b!5124160) (not b!5124217) (not b!5124180) (not d!1656721) (not d!1656827) (not b!5124151) (not b!5124012) (not b!5124165) (not b!5124158) (not b!5124224) (not d!1656703) (not bm!356696) (not b!5124183) (not d!1656855) (not b!5124182) (not b!5124157) (not b!5124164) (not b!5123999) (not b!5124241) (not d!1656843) (not b!5124223) (not b!5124213) (not d!1656713) (not b!5124208))
(check-sat)
(get-model)

(declare-fun d!1656875 () Bool)

(declare-fun res!2181997 () Bool)

(declare-fun e!3195761 () Bool)

(assert (=> d!1656875 (=> res!2181997 e!3195761)))

(assert (=> d!1656875 (= res!2181997 ((_ is Nil!59282) (exprs!4123 setElem!30526)))))

(assert (=> d!1656875 (= (forall!13633 (exprs!4123 setElem!30526) lambda!251623) e!3195761)))

(declare-fun b!5124250 () Bool)

(declare-fun e!3195762 () Bool)

(assert (=> b!5124250 (= e!3195761 e!3195762)))

(declare-fun res!2181998 () Bool)

(assert (=> b!5124250 (=> (not res!2181998) (not e!3195762))))

(declare-fun dynLambda!23610 (Int Regex!14239) Bool)

(assert (=> b!5124250 (= res!2181998 (dynLambda!23610 lambda!251623 (h!65730 (exprs!4123 setElem!30526))))))

(declare-fun b!5124251 () Bool)

(assert (=> b!5124251 (= e!3195762 (forall!13633 (t!372429 (exprs!4123 setElem!30526)) lambda!251623))))

(assert (= (and d!1656875 (not res!2181997)) b!5124250))

(assert (= (and b!5124250 res!2181998) b!5124251))

(declare-fun b_lambda!199033 () Bool)

(assert (=> (not b_lambda!199033) (not b!5124250)))

(declare-fun m!6186784 () Bool)

(assert (=> b!5124250 m!6186784))

(declare-fun m!6186786 () Bool)

(assert (=> b!5124251 m!6186786))

(assert (=> d!1656827 d!1656875))

(declare-fun bs!1193507 () Bool)

(declare-fun d!1656883 () Bool)

(assert (= bs!1193507 (and d!1656883 d!1656869)))

(declare-fun lambda!251642 () Int)

(assert (=> bs!1193507 (not (= lambda!251642 lambda!251636))))

(declare-fun bs!1193508 () Bool)

(assert (= bs!1193508 (and d!1656883 b!5124223)))

(assert (=> bs!1193508 (not (= lambda!251642 lambda!251637))))

(declare-fun bs!1193509 () Bool)

(assert (= bs!1193509 (and d!1656883 b!5124224)))

(assert (=> bs!1193509 (not (= lambda!251642 lambda!251638))))

(assert (=> d!1656883 true))

(declare-fun order!26799 () Int)

(declare-fun dynLambda!23611 (Int Int) Int)

(assert (=> d!1656883 (< (dynLambda!23611 order!26799 lambda!251636) (dynLambda!23611 order!26799 lambda!251642))))

(assert (=> d!1656883 (exists!1491 lt!2112917 lambda!251642)))

(declare-fun lt!2112923 () Unit!150425)

(declare-fun choose!37705 (List!59408 Int) Unit!150425)

(assert (=> d!1656883 (= lt!2112923 (choose!37705 lt!2112917 lambda!251636))))

(declare-fun forall!13635 (List!59408 Int) Bool)

(assert (=> d!1656883 (not (forall!13635 lt!2112917 lambda!251636))))

(assert (=> d!1656883 (= (lemmaNotForallThenExists!346 lt!2112917 lambda!251636) lt!2112923)))

(declare-fun bs!1193510 () Bool)

(assert (= bs!1193510 d!1656883))

(declare-fun m!6186808 () Bool)

(assert (=> bs!1193510 m!6186808))

(declare-fun m!6186810 () Bool)

(assert (=> bs!1193510 m!6186810))

(declare-fun m!6186812 () Bool)

(assert (=> bs!1193510 m!6186812))

(assert (=> b!5124223 d!1656883))

(assert (=> b!5124214 d!1656835))

(assert (=> b!5124214 d!1656833))

(assert (=> b!5124017 d!1656829))

(assert (=> b!5124017 d!1656819))

(declare-fun b!5124265 () Bool)

(declare-fun lt!2112924 () List!59405)

(declare-fun e!3195770 () Bool)

(assert (=> b!5124265 (= e!3195770 (or (not (= lt!2112754 Nil!59281)) (= lt!2112924 (t!372428 testedP!265))))))

(declare-fun b!5124262 () Bool)

(declare-fun e!3195769 () List!59405)

(assert (=> b!5124262 (= e!3195769 lt!2112754)))

(declare-fun d!1656891 () Bool)

(assert (=> d!1656891 e!3195770))

(declare-fun res!2182004 () Bool)

(assert (=> d!1656891 (=> (not res!2182004) (not e!3195770))))

(assert (=> d!1656891 (= res!2182004 (= (content!10545 lt!2112924) ((_ map or) (content!10545 (t!372428 testedP!265)) (content!10545 lt!2112754))))))

(assert (=> d!1656891 (= lt!2112924 e!3195769)))

(declare-fun c!880737 () Bool)

(assert (=> d!1656891 (= c!880737 ((_ is Nil!59281) (t!372428 testedP!265)))))

(assert (=> d!1656891 (= (++!13052 (t!372428 testedP!265) lt!2112754) lt!2112924)))

(declare-fun b!5124264 () Bool)

(declare-fun res!2182003 () Bool)

(assert (=> b!5124264 (=> (not res!2182003) (not e!3195770))))

(assert (=> b!5124264 (= res!2182003 (= (size!39545 lt!2112924) (+ (size!39545 (t!372428 testedP!265)) (size!39545 lt!2112754))))))

(declare-fun b!5124263 () Bool)

(assert (=> b!5124263 (= e!3195769 (Cons!59281 (h!65729 (t!372428 testedP!265)) (++!13052 (t!372428 (t!372428 testedP!265)) lt!2112754)))))

(assert (= (and d!1656891 c!880737) b!5124262))

(assert (= (and d!1656891 (not c!880737)) b!5124263))

(assert (= (and d!1656891 res!2182004) b!5124264))

(assert (= (and b!5124264 res!2182003) b!5124265))

(declare-fun m!6186814 () Bool)

(assert (=> d!1656891 m!6186814))

(declare-fun m!6186816 () Bool)

(assert (=> d!1656891 m!6186816))

(assert (=> d!1656891 m!6186614))

(declare-fun m!6186818 () Bool)

(assert (=> b!5124264 m!6186818))

(assert (=> b!5124264 m!6186672))

(assert (=> b!5124264 m!6186618))

(declare-fun m!6186820 () Bool)

(assert (=> b!5124263 m!6186820))

(assert (=> b!5124160 d!1656891))

(assert (=> d!1656713 d!1656711))

(declare-fun d!1656893 () Bool)

(assert (=> d!1656893 (isPrefix!5644 lt!2112766 knownP!20)))

(assert (=> d!1656893 true))

(declare-fun _$69!374 () Unit!150425)

(assert (=> d!1656893 (= (choose!37696 knownP!20 lt!2112766 input!5745) _$69!374)))

(declare-fun bs!1193512 () Bool)

(assert (= bs!1193512 d!1656893))

(assert (=> bs!1193512 m!6186260))

(assert (=> d!1656713 d!1656893))

(assert (=> d!1656713 d!1656809))

(declare-fun d!1656897 () Bool)

(declare-fun e!3195773 () Bool)

(assert (=> d!1656897 e!3195773))

(declare-fun res!2182007 () Bool)

(assert (=> d!1656897 (=> (not res!2182007) (not e!3195773))))

(declare-fun lt!2112927 () List!59408)

(declare-fun noDuplicate!1079 (List!59408) Bool)

(assert (=> d!1656897 (= res!2182007 (noDuplicate!1079 lt!2112927))))

(declare-fun choose!37706 ((InoxSet Context!7246)) List!59408)

(assert (=> d!1656897 (= lt!2112927 (choose!37706 z!4463))))

(assert (=> d!1656897 (= (toList!8272 z!4463) lt!2112927)))

(declare-fun b!5124268 () Bool)

(declare-fun content!10546 (List!59408) (InoxSet Context!7246))

(assert (=> b!5124268 (= e!3195773 (= (content!10546 lt!2112927) z!4463))))

(assert (= (and d!1656897 res!2182007) b!5124268))

(declare-fun m!6186822 () Bool)

(assert (=> d!1656897 m!6186822))

(declare-fun m!6186824 () Bool)

(assert (=> d!1656897 m!6186824))

(declare-fun m!6186826 () Bool)

(assert (=> b!5124268 m!6186826))

(assert (=> bm!356695 d!1656897))

(declare-fun d!1656899 () Bool)

(assert (=> d!1656899 (= (head!10955 lt!2112766) (h!65729 lt!2112766))))

(assert (=> b!5124015 d!1656899))

(declare-fun d!1656901 () Bool)

(assert (=> d!1656901 (= (head!10955 input!5745) (h!65729 input!5745))))

(assert (=> b!5124015 d!1656901))

(declare-fun d!1656903 () Bool)

(declare-fun lt!2112928 () Int)

(assert (=> d!1656903 (>= lt!2112928 0)))

(declare-fun e!3195774 () Int)

(assert (=> d!1656903 (= lt!2112928 e!3195774)))

(declare-fun c!880740 () Bool)

(assert (=> d!1656903 (= c!880740 ((_ is Nil!59281) lt!2112798))))

(assert (=> d!1656903 (= (size!39545 lt!2112798) lt!2112928)))

(declare-fun b!5124269 () Bool)

(assert (=> b!5124269 (= e!3195774 0)))

(declare-fun b!5124270 () Bool)

(assert (=> b!5124270 (= e!3195774 (+ 1 (size!39545 (t!372428 lt!2112798))))))

(assert (= (and d!1656903 c!880740) b!5124269))

(assert (= (and d!1656903 (not c!880740)) b!5124270))

(declare-fun m!6186828 () Bool)

(assert (=> b!5124270 m!6186828))

(assert (=> b!5124020 d!1656903))

(assert (=> b!5124020 d!1656833))

(declare-fun d!1656905 () Bool)

(declare-fun lt!2112929 () Int)

(assert (=> d!1656905 (>= lt!2112929 0)))

(declare-fun e!3195775 () Int)

(assert (=> d!1656905 (= lt!2112929 e!3195775)))

(declare-fun c!880741 () Bool)

(assert (=> d!1656905 (= c!880741 ((_ is Nil!59281) lt!2112768))))

(assert (=> d!1656905 (= (size!39545 lt!2112768) lt!2112929)))

(declare-fun b!5124271 () Bool)

(assert (=> b!5124271 (= e!3195775 0)))

(declare-fun b!5124272 () Bool)

(assert (=> b!5124272 (= e!3195775 (+ 1 (size!39545 (t!372428 lt!2112768))))))

(assert (= (and d!1656905 c!880741) b!5124271))

(assert (= (and d!1656905 (not c!880741)) b!5124272))

(declare-fun m!6186830 () Bool)

(assert (=> b!5124272 m!6186830))

(assert (=> b!5124020 d!1656905))

(declare-fun d!1656907 () Bool)

(declare-fun lt!2112930 () Int)

(assert (=> d!1656907 (>= lt!2112930 0)))

(declare-fun e!3195776 () Int)

(assert (=> d!1656907 (= lt!2112930 e!3195776)))

(declare-fun c!880742 () Bool)

(assert (=> d!1656907 (= c!880742 ((_ is Nil!59281) lt!2112790))))

(assert (=> d!1656907 (= (size!39545 lt!2112790) lt!2112930)))

(declare-fun b!5124273 () Bool)

(assert (=> b!5124273 (= e!3195776 0)))

(declare-fun b!5124274 () Bool)

(assert (=> b!5124274 (= e!3195776 (+ 1 (size!39545 (t!372428 lt!2112790))))))

(assert (= (and d!1656907 c!880742) b!5124273))

(assert (= (and d!1656907 (not c!880742)) b!5124274))

(declare-fun m!6186832 () Bool)

(assert (=> b!5124274 m!6186832))

(assert (=> b!5124000 d!1656907))

(assert (=> b!5124000 d!1656835))

(declare-fun d!1656909 () Bool)

(declare-fun lt!2112931 () Int)

(assert (=> d!1656909 (>= lt!2112931 0)))

(declare-fun e!3195777 () Int)

(assert (=> d!1656909 (= lt!2112931 e!3195777)))

(declare-fun c!880743 () Bool)

(assert (=> d!1656909 (= c!880743 ((_ is Nil!59281) lt!2112760))))

(assert (=> d!1656909 (= (size!39545 lt!2112760) lt!2112931)))

(declare-fun b!5124275 () Bool)

(assert (=> b!5124275 (= e!3195777 0)))

(declare-fun b!5124276 () Bool)

(assert (=> b!5124276 (= e!3195777 (+ 1 (size!39545 (t!372428 lt!2112760))))))

(assert (= (and d!1656909 c!880743) b!5124275))

(assert (= (and d!1656909 (not c!880743)) b!5124276))

(declare-fun m!6186834 () Bool)

(assert (=> b!5124276 m!6186834))

(assert (=> b!5124000 d!1656909))

(declare-fun e!3195779 () Bool)

(declare-fun b!5124280 () Bool)

(declare-fun lt!2112932 () List!59405)

(assert (=> b!5124280 (= e!3195779 (or (not (= lt!2112787 Nil!59281)) (= lt!2112932 testedP!265)))))

(declare-fun b!5124277 () Bool)

(declare-fun e!3195778 () List!59405)

(assert (=> b!5124277 (= e!3195778 lt!2112787)))

(declare-fun d!1656911 () Bool)

(assert (=> d!1656911 e!3195779))

(declare-fun res!2182009 () Bool)

(assert (=> d!1656911 (=> (not res!2182009) (not e!3195779))))

(assert (=> d!1656911 (= res!2182009 (= (content!10545 lt!2112932) ((_ map or) (content!10545 testedP!265) (content!10545 lt!2112787))))))

(assert (=> d!1656911 (= lt!2112932 e!3195778)))

(declare-fun c!880744 () Bool)

(assert (=> d!1656911 (= c!880744 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1656911 (= (++!13052 testedP!265 lt!2112787) lt!2112932)))

(declare-fun b!5124279 () Bool)

(declare-fun res!2182008 () Bool)

(assert (=> b!5124279 (=> (not res!2182008) (not e!3195779))))

(assert (=> b!5124279 (= res!2182008 (= (size!39545 lt!2112932) (+ (size!39545 testedP!265) (size!39545 lt!2112787))))))

(declare-fun b!5124278 () Bool)

(assert (=> b!5124278 (= e!3195778 (Cons!59281 (h!65729 testedP!265) (++!13052 (t!372428 testedP!265) lt!2112787)))))

(assert (= (and d!1656911 c!880744) b!5124277))

(assert (= (and d!1656911 (not c!880744)) b!5124278))

(assert (= (and d!1656911 res!2182009) b!5124279))

(assert (= (and b!5124279 res!2182008) b!5124280))

(declare-fun m!6186836 () Bool)

(assert (=> d!1656911 m!6186836))

(assert (=> d!1656911 m!6186348))

(declare-fun m!6186838 () Bool)

(assert (=> d!1656911 m!6186838))

(declare-fun m!6186840 () Bool)

(assert (=> b!5124279 m!6186840))

(assert (=> b!5124279 m!6186224))

(declare-fun m!6186842 () Bool)

(assert (=> b!5124279 m!6186842))

(declare-fun m!6186844 () Bool)

(assert (=> b!5124278 m!6186844))

(assert (=> d!1656703 d!1656911))

(assert (=> d!1656703 d!1656829))

(assert (=> d!1656703 d!1656833))

(declare-fun d!1656913 () Bool)

(assert (=> d!1656913 (= (++!13052 (++!13052 testedP!265 lt!2112753) lt!2112760) (++!13052 testedP!265 (++!13052 lt!2112753 lt!2112760)))))

(assert (=> d!1656913 true))

(declare-fun _$52!2370 () Unit!150425)

(assert (=> d!1656913 (= (choose!37702 testedP!265 lt!2112753 lt!2112760) _$52!2370)))

(declare-fun bs!1193517 () Bool)

(assert (= bs!1193517 d!1656913))

(assert (=> bs!1193517 m!6186238))

(assert (=> bs!1193517 m!6186238))

(assert (=> bs!1193517 m!6186636))

(assert (=> bs!1193517 m!6186244))

(assert (=> bs!1193517 m!6186244))

(assert (=> bs!1193517 m!6186634))

(assert (=> d!1656817 d!1656913))

(assert (=> d!1656817 d!1656815))

(declare-fun b!5124286 () Bool)

(declare-fun e!3195782 () Bool)

(declare-fun lt!2112934 () List!59405)

(assert (=> b!5124286 (= e!3195782 (or (not (= lt!2112760 Nil!59281)) (= lt!2112934 (++!13052 testedP!265 lt!2112753))))))

(declare-fun b!5124283 () Bool)

(declare-fun e!3195781 () List!59405)

(assert (=> b!5124283 (= e!3195781 lt!2112760)))

(declare-fun d!1656919 () Bool)

(assert (=> d!1656919 e!3195782))

(declare-fun res!2182011 () Bool)

(assert (=> d!1656919 (=> (not res!2182011) (not e!3195782))))

(assert (=> d!1656919 (= res!2182011 (= (content!10545 lt!2112934) ((_ map or) (content!10545 (++!13052 testedP!265 lt!2112753)) (content!10545 lt!2112760))))))

(assert (=> d!1656919 (= lt!2112934 e!3195781)))

(declare-fun c!880746 () Bool)

(assert (=> d!1656919 (= c!880746 ((_ is Nil!59281) (++!13052 testedP!265 lt!2112753)))))

(assert (=> d!1656919 (= (++!13052 (++!13052 testedP!265 lt!2112753) lt!2112760) lt!2112934)))

(declare-fun b!5124285 () Bool)

(declare-fun res!2182010 () Bool)

(assert (=> b!5124285 (=> (not res!2182010) (not e!3195782))))

(assert (=> b!5124285 (= res!2182010 (= (size!39545 lt!2112934) (+ (size!39545 (++!13052 testedP!265 lt!2112753)) (size!39545 lt!2112760))))))

(declare-fun b!5124284 () Bool)

(assert (=> b!5124284 (= e!3195781 (Cons!59281 (h!65729 (++!13052 testedP!265 lt!2112753)) (++!13052 (t!372428 (++!13052 testedP!265 lt!2112753)) lt!2112760)))))

(assert (= (and d!1656919 c!880746) b!5124283))

(assert (= (and d!1656919 (not c!880746)) b!5124284))

(assert (= (and d!1656919 res!2182011) b!5124285))

(assert (= (and b!5124285 res!2182010) b!5124286))

(declare-fun m!6186850 () Bool)

(assert (=> d!1656919 m!6186850))

(assert (=> d!1656919 m!6186238))

(declare-fun m!6186852 () Bool)

(assert (=> d!1656919 m!6186852))

(assert (=> d!1656919 m!6186322))

(declare-fun m!6186854 () Bool)

(assert (=> b!5124285 m!6186854))

(assert (=> b!5124285 m!6186238))

(declare-fun m!6186856 () Bool)

(assert (=> b!5124285 m!6186856))

(assert (=> b!5124285 m!6186326))

(declare-fun m!6186858 () Bool)

(assert (=> b!5124284 m!6186858))

(assert (=> d!1656817 d!1656919))

(declare-fun lt!2112935 () List!59405)

(declare-fun b!5124290 () Bool)

(declare-fun e!3195784 () Bool)

(assert (=> b!5124290 (= e!3195784 (or (not (= (++!13052 lt!2112753 lt!2112760) Nil!59281)) (= lt!2112935 testedP!265)))))

(declare-fun b!5124287 () Bool)

(declare-fun e!3195783 () List!59405)

(assert (=> b!5124287 (= e!3195783 (++!13052 lt!2112753 lt!2112760))))

(declare-fun d!1656923 () Bool)

(assert (=> d!1656923 e!3195784))

(declare-fun res!2182013 () Bool)

(assert (=> d!1656923 (=> (not res!2182013) (not e!3195784))))

(assert (=> d!1656923 (= res!2182013 (= (content!10545 lt!2112935) ((_ map or) (content!10545 testedP!265) (content!10545 (++!13052 lt!2112753 lt!2112760)))))))

(assert (=> d!1656923 (= lt!2112935 e!3195783)))

(declare-fun c!880747 () Bool)

(assert (=> d!1656923 (= c!880747 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1656923 (= (++!13052 testedP!265 (++!13052 lt!2112753 lt!2112760)) lt!2112935)))

(declare-fun b!5124289 () Bool)

(declare-fun res!2182012 () Bool)

(assert (=> b!5124289 (=> (not res!2182012) (not e!3195784))))

(assert (=> b!5124289 (= res!2182012 (= (size!39545 lt!2112935) (+ (size!39545 testedP!265) (size!39545 (++!13052 lt!2112753 lt!2112760)))))))

(declare-fun b!5124288 () Bool)

(assert (=> b!5124288 (= e!3195783 (Cons!59281 (h!65729 testedP!265) (++!13052 (t!372428 testedP!265) (++!13052 lt!2112753 lt!2112760))))))

(assert (= (and d!1656923 c!880747) b!5124287))

(assert (= (and d!1656923 (not c!880747)) b!5124288))

(assert (= (and d!1656923 res!2182013) b!5124289))

(assert (= (and b!5124289 res!2182012) b!5124290))

(declare-fun m!6186860 () Bool)

(assert (=> d!1656923 m!6186860))

(assert (=> d!1656923 m!6186348))

(assert (=> d!1656923 m!6186244))

(declare-fun m!6186862 () Bool)

(assert (=> d!1656923 m!6186862))

(declare-fun m!6186864 () Bool)

(assert (=> b!5124289 m!6186864))

(assert (=> b!5124289 m!6186224))

(assert (=> b!5124289 m!6186244))

(declare-fun m!6186866 () Bool)

(assert (=> b!5124289 m!6186866))

(assert (=> b!5124288 m!6186244))

(declare-fun m!6186868 () Bool)

(assert (=> b!5124288 m!6186868))

(assert (=> d!1656817 d!1656923))

(assert (=> d!1656817 d!1656847))

(declare-fun d!1656925 () Bool)

(declare-fun e!3195786 () Bool)

(assert (=> d!1656925 e!3195786))

(declare-fun res!2182014 () Bool)

(assert (=> d!1656925 (=> res!2182014 e!3195786)))

(declare-fun lt!2112936 () Bool)

(assert (=> d!1656925 (= res!2182014 (not lt!2112936))))

(declare-fun e!3195787 () Bool)

(assert (=> d!1656925 (= lt!2112936 e!3195787)))

(declare-fun res!2182015 () Bool)

(assert (=> d!1656925 (=> res!2182015 e!3195787)))

(assert (=> d!1656925 (= res!2182015 ((_ is Nil!59281) (tail!10090 testedP!265)))))

(assert (=> d!1656925 (= (isPrefix!5644 (tail!10090 testedP!265) (tail!10090 input!5745)) lt!2112936)))

(declare-fun b!5124291 () Bool)

(declare-fun e!3195785 () Bool)

(assert (=> b!5124291 (= e!3195787 e!3195785)))

(declare-fun res!2182017 () Bool)

(assert (=> b!5124291 (=> (not res!2182017) (not e!3195785))))

(assert (=> b!5124291 (= res!2182017 (not ((_ is Nil!59281) (tail!10090 input!5745))))))

(declare-fun b!5124292 () Bool)

(declare-fun res!2182016 () Bool)

(assert (=> b!5124292 (=> (not res!2182016) (not e!3195785))))

(assert (=> b!5124292 (= res!2182016 (= (head!10955 (tail!10090 testedP!265)) (head!10955 (tail!10090 input!5745))))))

(declare-fun b!5124293 () Bool)

(assert (=> b!5124293 (= e!3195785 (isPrefix!5644 (tail!10090 (tail!10090 testedP!265)) (tail!10090 (tail!10090 input!5745))))))

(declare-fun b!5124294 () Bool)

(assert (=> b!5124294 (= e!3195786 (>= (size!39545 (tail!10090 input!5745)) (size!39545 (tail!10090 testedP!265))))))

(assert (= (and d!1656925 (not res!2182015)) b!5124291))

(assert (= (and b!5124291 res!2182017) b!5124292))

(assert (= (and b!5124292 res!2182016) b!5124293))

(assert (= (and d!1656925 (not res!2182014)) b!5124294))

(assert (=> b!5124292 m!6186744))

(declare-fun m!6186870 () Bool)

(assert (=> b!5124292 m!6186870))

(assert (=> b!5124292 m!6186314))

(declare-fun m!6186872 () Bool)

(assert (=> b!5124292 m!6186872))

(assert (=> b!5124293 m!6186744))

(declare-fun m!6186874 () Bool)

(assert (=> b!5124293 m!6186874))

(assert (=> b!5124293 m!6186314))

(declare-fun m!6186876 () Bool)

(assert (=> b!5124293 m!6186876))

(assert (=> b!5124293 m!6186874))

(assert (=> b!5124293 m!6186876))

(declare-fun m!6186878 () Bool)

(assert (=> b!5124293 m!6186878))

(assert (=> b!5124294 m!6186314))

(declare-fun m!6186880 () Bool)

(assert (=> b!5124294 m!6186880))

(assert (=> b!5124294 m!6186744))

(declare-fun m!6186882 () Bool)

(assert (=> b!5124294 m!6186882))

(assert (=> b!5124217 d!1656925))

(declare-fun d!1656927 () Bool)

(assert (=> d!1656927 (= (tail!10090 testedP!265) (t!372428 testedP!265))))

(assert (=> b!5124217 d!1656927))

(declare-fun d!1656929 () Bool)

(assert (=> d!1656929 (= (tail!10090 input!5745) (t!372428 input!5745))))

(assert (=> b!5124217 d!1656929))

(declare-fun lt!2112937 () List!59405)

(declare-fun e!3195791 () Bool)

(declare-fun b!5124302 () Bool)

(assert (=> b!5124302 (= e!3195791 (or (not (= lt!2112748 Nil!59281)) (= lt!2112937 (t!372428 lt!2112768))))))

(declare-fun b!5124299 () Bool)

(declare-fun e!3195790 () List!59405)

(assert (=> b!5124299 (= e!3195790 lt!2112748)))

(declare-fun d!1656931 () Bool)

(assert (=> d!1656931 e!3195791))

(declare-fun res!2182019 () Bool)

(assert (=> d!1656931 (=> (not res!2182019) (not e!3195791))))

(assert (=> d!1656931 (= res!2182019 (= (content!10545 lt!2112937) ((_ map or) (content!10545 (t!372428 lt!2112768)) (content!10545 lt!2112748))))))

(assert (=> d!1656931 (= lt!2112937 e!3195790)))

(declare-fun c!880750 () Bool)

(assert (=> d!1656931 (= c!880750 ((_ is Nil!59281) (t!372428 lt!2112768)))))

(assert (=> d!1656931 (= (++!13052 (t!372428 lt!2112768) lt!2112748) lt!2112937)))

(declare-fun b!5124301 () Bool)

(declare-fun res!2182018 () Bool)

(assert (=> b!5124301 (=> (not res!2182018) (not e!3195791))))

(assert (=> b!5124301 (= res!2182018 (= (size!39545 lt!2112937) (+ (size!39545 (t!372428 lt!2112768)) (size!39545 lt!2112748))))))

(declare-fun b!5124300 () Bool)

(assert (=> b!5124300 (= e!3195790 (Cons!59281 (h!65729 (t!372428 lt!2112768)) (++!13052 (t!372428 (t!372428 lt!2112768)) lt!2112748)))))

(assert (= (and d!1656931 c!880750) b!5124299))

(assert (= (and d!1656931 (not c!880750)) b!5124300))

(assert (= (and d!1656931 res!2182019) b!5124301))

(assert (= (and b!5124301 res!2182018) b!5124302))

(declare-fun m!6186884 () Bool)

(assert (=> d!1656931 m!6186884))

(declare-fun m!6186886 () Bool)

(assert (=> d!1656931 m!6186886))

(assert (=> d!1656931 m!6186664))

(declare-fun m!6186888 () Bool)

(assert (=> b!5124301 m!6186888))

(assert (=> b!5124301 m!6186830))

(assert (=> b!5124301 m!6186668))

(declare-fun m!6186890 () Bool)

(assert (=> b!5124300 m!6186890))

(assert (=> b!5124194 d!1656931))

(declare-fun d!1656933 () Bool)

(declare-fun lt!2112938 () Int)

(assert (=> d!1656933 (>= lt!2112938 0)))

(declare-fun e!3195792 () Int)

(assert (=> d!1656933 (= lt!2112938 e!3195792)))

(declare-fun c!880751 () Bool)

(assert (=> d!1656933 (= c!880751 ((_ is Nil!59281) lt!2112885))))

(assert (=> d!1656933 (= (size!39545 lt!2112885) lt!2112938)))

(declare-fun b!5124303 () Bool)

(assert (=> b!5124303 (= e!3195792 0)))

(declare-fun b!5124304 () Bool)

(assert (=> b!5124304 (= e!3195792 (+ 1 (size!39545 (t!372428 lt!2112885))))))

(assert (= (and d!1656933 c!880751) b!5124303))

(assert (= (and d!1656933 (not c!880751)) b!5124304))

(declare-fun m!6186892 () Bool)

(assert (=> b!5124304 m!6186892))

(assert (=> b!5124191 d!1656933))

(assert (=> b!5124191 d!1656833))

(declare-fun d!1656935 () Bool)

(declare-fun lt!2112939 () Int)

(assert (=> d!1656935 (>= lt!2112939 0)))

(declare-fun e!3195793 () Int)

(assert (=> d!1656935 (= lt!2112939 e!3195793)))

(declare-fun c!880752 () Bool)

(assert (=> d!1656935 (= c!880752 ((_ is Nil!59281) lt!2112749))))

(assert (=> d!1656935 (= (size!39545 lt!2112749) lt!2112939)))

(declare-fun b!5124305 () Bool)

(assert (=> b!5124305 (= e!3195793 0)))

(declare-fun b!5124306 () Bool)

(assert (=> b!5124306 (= e!3195793 (+ 1 (size!39545 (t!372428 lt!2112749))))))

(assert (= (and d!1656935 c!880752) b!5124305))

(assert (= (and d!1656935 (not c!880752)) b!5124306))

(declare-fun m!6186894 () Bool)

(assert (=> b!5124306 m!6186894))

(assert (=> b!5124191 d!1656935))

(declare-fun d!1656937 () Bool)

(declare-fun c!880753 () Bool)

(assert (=> d!1656937 (= c!880753 ((_ is Cons!59281) (t!372428 testedP!265)))))

(declare-fun e!3195794 () (InoxSet Context!7246))

(assert (=> d!1656937 (= (derivationZipper!136 (derivationStepZipper!862 baseZ!46 (h!65729 testedP!265)) (t!372428 testedP!265)) e!3195794)))

(declare-fun b!5124307 () Bool)

(assert (=> b!5124307 (= e!3195794 (derivationZipper!136 (derivationStepZipper!862 (derivationStepZipper!862 baseZ!46 (h!65729 testedP!265)) (h!65729 (t!372428 testedP!265))) (t!372428 (t!372428 testedP!265))))))

(declare-fun b!5124308 () Bool)

(assert (=> b!5124308 (= e!3195794 (derivationStepZipper!862 baseZ!46 (h!65729 testedP!265)))))

(assert (= (and d!1656937 c!880753) b!5124307))

(assert (= (and d!1656937 (not c!880753)) b!5124308))

(assert (=> b!5124307 m!6186642))

(declare-fun m!6186896 () Bool)

(assert (=> b!5124307 m!6186896))

(assert (=> b!5124307 m!6186896))

(declare-fun m!6186898 () Bool)

(assert (=> b!5124307 m!6186898))

(assert (=> b!5124173 d!1656937))

(declare-fun bs!1193518 () Bool)

(declare-fun d!1656939 () Bool)

(assert (= bs!1193518 (and d!1656939 d!1656725)))

(declare-fun lambda!251646 () Int)

(assert (=> bs!1193518 (= (= (h!65729 testedP!265) lt!2112765) (= lambda!251646 lambda!251619))))

(assert (=> d!1656939 true))

(assert (=> d!1656939 (= (derivationStepZipper!862 baseZ!46 (h!65729 testedP!265)) (flatMap!366 baseZ!46 lambda!251646))))

(declare-fun bs!1193519 () Bool)

(assert (= bs!1193519 d!1656939))

(declare-fun m!6186904 () Bool)

(assert (=> bs!1193519 m!6186904))

(assert (=> b!5124173 d!1656939))

(declare-fun d!1656943 () Bool)

(declare-fun res!2182020 () Bool)

(declare-fun e!3195797 () Bool)

(assert (=> d!1656943 (=> res!2182020 e!3195797)))

(assert (=> d!1656943 (= res!2182020 ((_ is Nil!59282) (exprs!4123 setElem!30525)))))

(assert (=> d!1656943 (= (forall!13633 (exprs!4123 setElem!30525) lambda!251622) e!3195797)))

(declare-fun b!5124313 () Bool)

(declare-fun e!3195798 () Bool)

(assert (=> b!5124313 (= e!3195797 e!3195798)))

(declare-fun res!2182021 () Bool)

(assert (=> b!5124313 (=> (not res!2182021) (not e!3195798))))

(assert (=> b!5124313 (= res!2182021 (dynLambda!23610 lambda!251622 (h!65730 (exprs!4123 setElem!30525))))))

(declare-fun b!5124314 () Bool)

(assert (=> b!5124314 (= e!3195798 (forall!13633 (t!372429 (exprs!4123 setElem!30525)) lambda!251622))))

(assert (= (and d!1656943 (not res!2182020)) b!5124313))

(assert (= (and b!5124313 res!2182021) b!5124314))

(declare-fun b_lambda!199035 () Bool)

(assert (=> (not b_lambda!199035) (not b!5124313)))

(declare-fun m!6186910 () Bool)

(assert (=> b!5124313 m!6186910))

(declare-fun m!6186912 () Bool)

(assert (=> b!5124314 m!6186912))

(assert (=> d!1656821 d!1656943))

(declare-fun d!1656947 () Bool)

(assert (=> d!1656947 (= (head!10955 testedP!265) (h!65729 testedP!265))))

(assert (=> b!5124212 d!1656947))

(declare-fun d!1656949 () Bool)

(assert (=> d!1656949 (= (head!10955 knownP!20) (h!65729 knownP!20))))

(assert (=> b!5124212 d!1656949))

(declare-fun d!1656951 () Bool)

(assert (=> d!1656951 (= lt!2112754 lt!2112752)))

(assert (=> d!1656951 true))

(declare-fun _$63!1268 () Unit!150425)

(assert (=> d!1656951 (= (choose!37704 testedP!265 lt!2112754 testedP!265 lt!2112752 input!5745) _$63!1268)))

(assert (=> d!1656851 d!1656951))

(assert (=> d!1656851 d!1656867))

(declare-fun d!1656955 () Bool)

(declare-fun c!880763 () Bool)

(assert (=> d!1656955 (= c!880763 ((_ is Nil!59281) lt!2112869))))

(declare-fun e!3195806 () (InoxSet C!28744))

(assert (=> d!1656955 (= (content!10545 lt!2112869) e!3195806)))

(declare-fun b!5124329 () Bool)

(assert (=> b!5124329 (= e!3195806 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124330 () Bool)

(assert (=> b!5124330 (= e!3195806 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112869) true) (content!10545 (t!372428 lt!2112869))))))

(assert (= (and d!1656955 c!880763) b!5124329))

(assert (= (and d!1656955 (not c!880763)) b!5124330))

(declare-fun m!6186938 () Bool)

(assert (=> b!5124330 m!6186938))

(declare-fun m!6186940 () Bool)

(assert (=> b!5124330 m!6186940))

(assert (=> d!1656813 d!1656955))

(declare-fun d!1656967 () Bool)

(declare-fun c!880765 () Bool)

(assert (=> d!1656967 (= c!880765 ((_ is Nil!59281) testedP!265))))

(declare-fun e!3195808 () (InoxSet C!28744))

(assert (=> d!1656967 (= (content!10545 testedP!265) e!3195808)))

(declare-fun b!5124333 () Bool)

(assert (=> b!5124333 (= e!3195808 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124334 () Bool)

(assert (=> b!5124334 (= e!3195808 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 testedP!265) true) (content!10545 (t!372428 testedP!265))))))

(assert (= (and d!1656967 c!880765) b!5124333))

(assert (= (and d!1656967 (not c!880765)) b!5124334))

(declare-fun m!6186944 () Bool)

(assert (=> b!5124334 m!6186944))

(assert (=> b!5124334 m!6186816))

(assert (=> d!1656813 d!1656967))

(declare-fun d!1656969 () Bool)

(declare-fun c!880766 () Bool)

(assert (=> d!1656969 (= c!880766 ((_ is Nil!59281) lt!2112754))))

(declare-fun e!3195809 () (InoxSet C!28744))

(assert (=> d!1656969 (= (content!10545 lt!2112754) e!3195809)))

(declare-fun b!5124335 () Bool)

(assert (=> b!5124335 (= e!3195809 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124336 () Bool)

(assert (=> b!5124336 (= e!3195809 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112754) true) (content!10545 (t!372428 lt!2112754))))))

(assert (= (and d!1656969 c!880766) b!5124335))

(assert (= (and d!1656969 (not c!880766)) b!5124336))

(declare-fun m!6186948 () Bool)

(assert (=> b!5124336 m!6186948))

(declare-fun m!6186950 () Bool)

(assert (=> b!5124336 m!6186950))

(assert (=> d!1656813 d!1656969))

(declare-fun d!1656973 () Bool)

(declare-fun c!880768 () Bool)

(assert (=> d!1656973 (= c!880768 (isEmpty!31952 (tail!10090 lt!2112748)))))

(declare-fun e!3195811 () Bool)

(assert (=> d!1656973 (= (matchZipper!907 (derivationStepZipper!862 lt!2112764 (head!10955 lt!2112748)) (tail!10090 lt!2112748)) e!3195811)))

(declare-fun b!5124339 () Bool)

(assert (=> b!5124339 (= e!3195811 (nullableZipper!1036 (derivationStepZipper!862 lt!2112764 (head!10955 lt!2112748))))))

(declare-fun b!5124340 () Bool)

(assert (=> b!5124340 (= e!3195811 (matchZipper!907 (derivationStepZipper!862 (derivationStepZipper!862 lt!2112764 (head!10955 lt!2112748)) (head!10955 (tail!10090 lt!2112748))) (tail!10090 (tail!10090 lt!2112748))))))

(assert (= (and d!1656973 c!880768) b!5124339))

(assert (= (and d!1656973 (not c!880768)) b!5124340))

(assert (=> d!1656973 m!6186726))

(declare-fun m!6186954 () Bool)

(assert (=> d!1656973 m!6186954))

(assert (=> b!5124339 m!6186724))

(declare-fun m!6186956 () Bool)

(assert (=> b!5124339 m!6186956))

(assert (=> b!5124340 m!6186726))

(declare-fun m!6186958 () Bool)

(assert (=> b!5124340 m!6186958))

(assert (=> b!5124340 m!6186724))

(assert (=> b!5124340 m!6186958))

(declare-fun m!6186960 () Bool)

(assert (=> b!5124340 m!6186960))

(assert (=> b!5124340 m!6186726))

(declare-fun m!6186962 () Bool)

(assert (=> b!5124340 m!6186962))

(assert (=> b!5124340 m!6186960))

(assert (=> b!5124340 m!6186962))

(declare-fun m!6186964 () Bool)

(assert (=> b!5124340 m!6186964))

(assert (=> b!5124206 d!1656973))

(declare-fun bs!1193520 () Bool)

(declare-fun d!1656977 () Bool)

(assert (= bs!1193520 (and d!1656977 d!1656725)))

(declare-fun lambda!251647 () Int)

(assert (=> bs!1193520 (= (= (head!10955 lt!2112748) lt!2112765) (= lambda!251647 lambda!251619))))

(declare-fun bs!1193521 () Bool)

(assert (= bs!1193521 (and d!1656977 d!1656939)))

(assert (=> bs!1193521 (= (= (head!10955 lt!2112748) (h!65729 testedP!265)) (= lambda!251647 lambda!251646))))

(assert (=> d!1656977 true))

(assert (=> d!1656977 (= (derivationStepZipper!862 lt!2112764 (head!10955 lt!2112748)) (flatMap!366 lt!2112764 lambda!251647))))

(declare-fun bs!1193522 () Bool)

(assert (= bs!1193522 d!1656977))

(declare-fun m!6186976 () Bool)

(assert (=> bs!1193522 m!6186976))

(assert (=> b!5124206 d!1656977))

(declare-fun d!1656981 () Bool)

(assert (=> d!1656981 (= (head!10955 lt!2112748) (h!65729 lt!2112748))))

(assert (=> b!5124206 d!1656981))

(declare-fun d!1656983 () Bool)

(assert (=> d!1656983 (= (tail!10090 lt!2112748) (t!372428 lt!2112748))))

(assert (=> b!5124206 d!1656983))

(declare-fun bs!1193523 () Bool)

(declare-fun d!1656985 () Bool)

(assert (= bs!1193523 (and d!1656985 d!1656821)))

(declare-fun lambda!251648 () Int)

(assert (=> bs!1193523 (= lambda!251648 lambda!251622)))

(declare-fun bs!1193524 () Bool)

(assert (= bs!1193524 (and d!1656985 d!1656827)))

(assert (=> bs!1193524 (= lambda!251648 lambda!251623)))

(assert (=> d!1656985 (= (inv!78778 setElem!30533) (forall!13633 (exprs!4123 setElem!30533) lambda!251648))))

(declare-fun bs!1193525 () Bool)

(assert (= bs!1193525 d!1656985))

(declare-fun m!6186982 () Bool)

(assert (=> bs!1193525 m!6186982))

(assert (=> setNonEmpty!30533 d!1656985))

(declare-fun d!1656987 () Bool)

(declare-fun c!880771 () Bool)

(assert (=> d!1656987 (= c!880771 ((_ is Nil!59281) lt!2112886))))

(declare-fun e!3195815 () (InoxSet C!28744))

(assert (=> d!1656987 (= (content!10545 lt!2112886) e!3195815)))

(declare-fun b!5124347 () Bool)

(assert (=> b!5124347 (= e!3195815 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124348 () Bool)

(assert (=> b!5124348 (= e!3195815 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112886) true) (content!10545 (t!372428 lt!2112886))))))

(assert (= (and d!1656987 c!880771) b!5124347))

(assert (= (and d!1656987 (not c!880771)) b!5124348))

(declare-fun m!6186986 () Bool)

(assert (=> b!5124348 m!6186986))

(declare-fun m!6186988 () Bool)

(assert (=> b!5124348 m!6186988))

(assert (=> d!1656841 d!1656987))

(declare-fun d!1656991 () Bool)

(declare-fun c!880773 () Bool)

(assert (=> d!1656991 (= c!880773 ((_ is Nil!59281) lt!2112768))))

(declare-fun e!3195817 () (InoxSet C!28744))

(assert (=> d!1656991 (= (content!10545 lt!2112768) e!3195817)))

(declare-fun b!5124351 () Bool)

(assert (=> b!5124351 (= e!3195817 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124352 () Bool)

(assert (=> b!5124352 (= e!3195817 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112768) true) (content!10545 (t!372428 lt!2112768))))))

(assert (= (and d!1656991 c!880773) b!5124351))

(assert (= (and d!1656991 (not c!880773)) b!5124352))

(declare-fun m!6186992 () Bool)

(assert (=> b!5124352 m!6186992))

(assert (=> b!5124352 m!6186886))

(assert (=> d!1656841 d!1656991))

(declare-fun d!1656995 () Bool)

(declare-fun c!880775 () Bool)

(assert (=> d!1656995 (= c!880775 ((_ is Nil!59281) lt!2112748))))

(declare-fun e!3195819 () (InoxSet C!28744))

(assert (=> d!1656995 (= (content!10545 lt!2112748) e!3195819)))

(declare-fun b!5124354 () Bool)

(assert (=> b!5124354 (= e!3195819 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124356 () Bool)

(assert (=> b!5124356 (= e!3195819 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112748) true) (content!10545 (t!372428 lt!2112748))))))

(assert (= (and d!1656995 c!880775) b!5124354))

(assert (= (and d!1656995 (not c!880775)) b!5124356))

(declare-fun m!6186994 () Bool)

(assert (=> b!5124356 m!6186994))

(declare-fun m!6186996 () Bool)

(assert (=> b!5124356 m!6186996))

(assert (=> d!1656841 d!1656995))

(declare-fun d!1656997 () Bool)

(declare-fun lt!2112947 () Int)

(assert (=> d!1656997 (>= lt!2112947 0)))

(declare-fun e!3195820 () Int)

(assert (=> d!1656997 (= lt!2112947 e!3195820)))

(declare-fun c!880776 () Bool)

(assert (=> d!1656997 (= c!880776 ((_ is Nil!59281) (t!372428 lt!2112766)))))

(assert (=> d!1656997 (= (size!39545 (t!372428 lt!2112766)) lt!2112947)))

(declare-fun b!5124357 () Bool)

(assert (=> b!5124357 (= e!3195820 0)))

(declare-fun b!5124358 () Bool)

(assert (=> b!5124358 (= e!3195820 (+ 1 (size!39545 (t!372428 (t!372428 lt!2112766)))))))

(assert (= (and d!1656997 c!880776) b!5124357))

(assert (= (and d!1656997 (not c!880776)) b!5124358))

(declare-fun m!6187000 () Bool)

(assert (=> b!5124358 m!6187000))

(assert (=> b!5124172 d!1656997))

(declare-fun d!1657001 () Bool)

(assert (=> d!1657001 (isPrefix!5644 (++!13052 testedP!265 (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281)) input!5745)))

(assert (=> d!1657001 true))

(declare-fun _$65!1775 () Unit!150425)

(assert (=> d!1657001 (= (choose!37697 testedP!265 input!5745) _$65!1775)))

(declare-fun bs!1193527 () Bool)

(assert (= bs!1193527 d!1657001))

(assert (=> bs!1193527 m!6186266))

(assert (=> bs!1193527 m!6186266))

(assert (=> bs!1193527 m!6186364))

(assert (=> bs!1193527 m!6186358))

(assert (=> bs!1193527 m!6186358))

(assert (=> bs!1193527 m!6186360))

(assert (=> d!1656719 d!1657001))

(declare-fun d!1657007 () Bool)

(assert (=> d!1657007 (= (head!10955 (getSuffix!3316 input!5745 testedP!265)) (h!65729 (getSuffix!3316 input!5745 testedP!265)))))

(assert (=> d!1656719 d!1657007))

(declare-fun b!5124370 () Bool)

(declare-fun lt!2112950 () List!59405)

(declare-fun e!3195826 () Bool)

(assert (=> b!5124370 (= e!3195826 (or (not (= (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281) Nil!59281)) (= lt!2112950 testedP!265)))))

(declare-fun b!5124367 () Bool)

(declare-fun e!3195825 () List!59405)

(assert (=> b!5124367 (= e!3195825 (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281))))

(declare-fun d!1657009 () Bool)

(assert (=> d!1657009 e!3195826))

(declare-fun res!2182029 () Bool)

(assert (=> d!1657009 (=> (not res!2182029) (not e!3195826))))

(assert (=> d!1657009 (= res!2182029 (= (content!10545 lt!2112950) ((_ map or) (content!10545 testedP!265) (content!10545 (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281)))))))

(assert (=> d!1657009 (= lt!2112950 e!3195825)))

(declare-fun c!880779 () Bool)

(assert (=> d!1657009 (= c!880779 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1657009 (= (++!13052 testedP!265 (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281)) lt!2112950)))

(declare-fun b!5124369 () Bool)

(declare-fun res!2182028 () Bool)

(assert (=> b!5124369 (=> (not res!2182028) (not e!3195826))))

(assert (=> b!5124369 (= res!2182028 (= (size!39545 lt!2112950) (+ (size!39545 testedP!265) (size!39545 (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281)))))))

(declare-fun b!5124368 () Bool)

(assert (=> b!5124368 (= e!3195825 (Cons!59281 (h!65729 testedP!265) (++!13052 (t!372428 testedP!265) (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281))))))

(assert (= (and d!1657009 c!880779) b!5124367))

(assert (= (and d!1657009 (not c!880779)) b!5124368))

(assert (= (and d!1657009 res!2182029) b!5124369))

(assert (= (and b!5124369 res!2182028) b!5124370))

(declare-fun m!6187024 () Bool)

(assert (=> d!1657009 m!6187024))

(assert (=> d!1657009 m!6186348))

(declare-fun m!6187026 () Bool)

(assert (=> d!1657009 m!6187026))

(declare-fun m!6187028 () Bool)

(assert (=> b!5124369 m!6187028))

(assert (=> b!5124369 m!6186224))

(declare-fun m!6187030 () Bool)

(assert (=> b!5124369 m!6187030))

(declare-fun m!6187032 () Bool)

(assert (=> b!5124368 m!6187032))

(assert (=> d!1656719 d!1657009))

(assert (=> d!1656719 d!1656867))

(assert (=> d!1656719 d!1656703))

(declare-fun d!1657013 () Bool)

(declare-fun e!3195831 () Bool)

(assert (=> d!1657013 e!3195831))

(declare-fun res!2182034 () Bool)

(assert (=> d!1657013 (=> res!2182034 e!3195831)))

(declare-fun lt!2112952 () Bool)

(assert (=> d!1657013 (= res!2182034 (not lt!2112952))))

(declare-fun e!3195832 () Bool)

(assert (=> d!1657013 (= lt!2112952 e!3195832)))

(declare-fun res!2182035 () Bool)

(assert (=> d!1657013 (=> res!2182035 e!3195832)))

(assert (=> d!1657013 (= res!2182035 ((_ is Nil!59281) (++!13052 testedP!265 (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281))))))

(assert (=> d!1657013 (= (isPrefix!5644 (++!13052 testedP!265 (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281)) input!5745) lt!2112952)))

(declare-fun b!5124375 () Bool)

(declare-fun e!3195830 () Bool)

(assert (=> b!5124375 (= e!3195832 e!3195830)))

(declare-fun res!2182037 () Bool)

(assert (=> b!5124375 (=> (not res!2182037) (not e!3195830))))

(assert (=> b!5124375 (= res!2182037 (not ((_ is Nil!59281) input!5745)))))

(declare-fun b!5124376 () Bool)

(declare-fun res!2182036 () Bool)

(assert (=> b!5124376 (=> (not res!2182036) (not e!3195830))))

(assert (=> b!5124376 (= res!2182036 (= (head!10955 (++!13052 testedP!265 (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281))) (head!10955 input!5745)))))

(declare-fun b!5124377 () Bool)

(assert (=> b!5124377 (= e!3195830 (isPrefix!5644 (tail!10090 (++!13052 testedP!265 (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281))) (tail!10090 input!5745)))))

(declare-fun b!5124378 () Bool)

(assert (=> b!5124378 (= e!3195831 (>= (size!39545 input!5745) (size!39545 (++!13052 testedP!265 (Cons!59281 (head!10955 (getSuffix!3316 input!5745 testedP!265)) Nil!59281)))))))

(assert (= (and d!1657013 (not res!2182035)) b!5124375))

(assert (= (and b!5124375 res!2182037) b!5124376))

(assert (= (and b!5124376 res!2182036) b!5124377))

(assert (= (and d!1657013 (not res!2182034)) b!5124378))

(assert (=> b!5124376 m!6186358))

(declare-fun m!6187036 () Bool)

(assert (=> b!5124376 m!6187036))

(assert (=> b!5124376 m!6186342))

(assert (=> b!5124377 m!6186358))

(declare-fun m!6187040 () Bool)

(assert (=> b!5124377 m!6187040))

(assert (=> b!5124377 m!6186314))

(assert (=> b!5124377 m!6187040))

(assert (=> b!5124377 m!6186314))

(declare-fun m!6187046 () Bool)

(assert (=> b!5124377 m!6187046))

(assert (=> b!5124378 m!6186280))

(assert (=> b!5124378 m!6186358))

(declare-fun m!6187048 () Bool)

(assert (=> b!5124378 m!6187048))

(assert (=> d!1656719 d!1657013))

(declare-fun d!1657015 () Bool)

(declare-fun c!880780 () Bool)

(assert (=> d!1657015 (= c!880780 (isEmpty!31952 (tail!10090 knownP!20)))))

(declare-fun e!3195833 () Bool)

(assert (=> d!1657015 (= (matchZipper!907 (derivationStepZipper!862 baseZ!46 (head!10955 knownP!20)) (tail!10090 knownP!20)) e!3195833)))

(declare-fun b!5124379 () Bool)

(assert (=> b!5124379 (= e!3195833 (nullableZipper!1036 (derivationStepZipper!862 baseZ!46 (head!10955 knownP!20))))))

(declare-fun b!5124380 () Bool)

(assert (=> b!5124380 (= e!3195833 (matchZipper!907 (derivationStepZipper!862 (derivationStepZipper!862 baseZ!46 (head!10955 knownP!20)) (head!10955 (tail!10090 knownP!20))) (tail!10090 (tail!10090 knownP!20))))))

(assert (= (and d!1657015 c!880780) b!5124379))

(assert (= (and d!1657015 (not c!880780)) b!5124380))

(assert (=> d!1657015 m!6186336))

(declare-fun m!6187052 () Bool)

(assert (=> d!1657015 m!6187052))

(assert (=> b!5124379 m!6186608))

(declare-fun m!6187054 () Bool)

(assert (=> b!5124379 m!6187054))

(assert (=> b!5124380 m!6186336))

(declare-fun m!6187056 () Bool)

(assert (=> b!5124380 m!6187056))

(assert (=> b!5124380 m!6186608))

(assert (=> b!5124380 m!6187056))

(declare-fun m!6187058 () Bool)

(assert (=> b!5124380 m!6187058))

(assert (=> b!5124380 m!6186336))

(declare-fun m!6187060 () Bool)

(assert (=> b!5124380 m!6187060))

(assert (=> b!5124380 m!6187058))

(assert (=> b!5124380 m!6187060))

(declare-fun m!6187062 () Bool)

(assert (=> b!5124380 m!6187062))

(assert (=> b!5124158 d!1657015))

(declare-fun bs!1193532 () Bool)

(declare-fun d!1657021 () Bool)

(assert (= bs!1193532 (and d!1657021 d!1656725)))

(declare-fun lambda!251650 () Int)

(assert (=> bs!1193532 (= (= (head!10955 knownP!20) lt!2112765) (= lambda!251650 lambda!251619))))

(declare-fun bs!1193533 () Bool)

(assert (= bs!1193533 (and d!1657021 d!1656939)))

(assert (=> bs!1193533 (= (= (head!10955 knownP!20) (h!65729 testedP!265)) (= lambda!251650 lambda!251646))))

(declare-fun bs!1193534 () Bool)

(assert (= bs!1193534 (and d!1657021 d!1656977)))

(assert (=> bs!1193534 (= (= (head!10955 knownP!20) (head!10955 lt!2112748)) (= lambda!251650 lambda!251647))))

(assert (=> d!1657021 true))

(assert (=> d!1657021 (= (derivationStepZipper!862 baseZ!46 (head!10955 knownP!20)) (flatMap!366 baseZ!46 lambda!251650))))

(declare-fun bs!1193535 () Bool)

(assert (= bs!1193535 d!1657021))

(declare-fun m!6187074 () Bool)

(assert (=> bs!1193535 m!6187074))

(assert (=> b!5124158 d!1657021))

(assert (=> b!5124158 d!1656949))

(declare-fun d!1657025 () Bool)

(assert (=> d!1657025 (= (tail!10090 knownP!20) (t!372428 knownP!20))))

(assert (=> b!5124158 d!1657025))

(declare-fun d!1657027 () Bool)

(declare-fun e!3195837 () Bool)

(assert (=> d!1657027 e!3195837))

(declare-fun res!2182040 () Bool)

(assert (=> d!1657027 (=> res!2182040 e!3195837)))

(declare-fun lt!2112954 () Bool)

(assert (=> d!1657027 (= res!2182040 (not lt!2112954))))

(declare-fun e!3195838 () Bool)

(assert (=> d!1657027 (= lt!2112954 e!3195838)))

(declare-fun res!2182041 () Bool)

(assert (=> d!1657027 (=> res!2182041 e!3195838)))

(assert (=> d!1657027 (= res!2182041 ((_ is Nil!59281) (tail!10090 knownP!20)))))

(assert (=> d!1657027 (= (isPrefix!5644 (tail!10090 knownP!20) (tail!10090 input!5745)) lt!2112954)))

(declare-fun b!5124385 () Bool)

(declare-fun e!3195836 () Bool)

(assert (=> b!5124385 (= e!3195838 e!3195836)))

(declare-fun res!2182043 () Bool)

(assert (=> b!5124385 (=> (not res!2182043) (not e!3195836))))

(assert (=> b!5124385 (= res!2182043 (not ((_ is Nil!59281) (tail!10090 input!5745))))))

(declare-fun b!5124386 () Bool)

(declare-fun res!2182042 () Bool)

(assert (=> b!5124386 (=> (not res!2182042) (not e!3195836))))

(assert (=> b!5124386 (= res!2182042 (= (head!10955 (tail!10090 knownP!20)) (head!10955 (tail!10090 input!5745))))))

(declare-fun b!5124387 () Bool)

(assert (=> b!5124387 (= e!3195836 (isPrefix!5644 (tail!10090 (tail!10090 knownP!20)) (tail!10090 (tail!10090 input!5745))))))

(declare-fun b!5124388 () Bool)

(assert (=> b!5124388 (= e!3195837 (>= (size!39545 (tail!10090 input!5745)) (size!39545 (tail!10090 knownP!20))))))

(assert (= (and d!1657027 (not res!2182041)) b!5124385))

(assert (= (and b!5124385 res!2182043) b!5124386))

(assert (= (and b!5124386 res!2182042) b!5124387))

(assert (= (and d!1657027 (not res!2182040)) b!5124388))

(assert (=> b!5124386 m!6186336))

(assert (=> b!5124386 m!6187056))

(assert (=> b!5124386 m!6186314))

(assert (=> b!5124386 m!6186872))

(assert (=> b!5124387 m!6186336))

(assert (=> b!5124387 m!6187060))

(assert (=> b!5124387 m!6186314))

(assert (=> b!5124387 m!6186876))

(assert (=> b!5124387 m!6187060))

(assert (=> b!5124387 m!6186876))

(declare-fun m!6187076 () Bool)

(assert (=> b!5124387 m!6187076))

(assert (=> b!5124388 m!6186314))

(assert (=> b!5124388 m!6186880))

(assert (=> b!5124388 m!6186336))

(declare-fun m!6187078 () Bool)

(assert (=> b!5124388 m!6187078))

(assert (=> b!5124151 d!1657027))

(assert (=> b!5124151 d!1657025))

(assert (=> b!5124151 d!1656929))

(declare-fun e!3195842 () Bool)

(declare-fun b!5124396 () Bool)

(declare-fun lt!2112956 () List!59405)

(assert (=> b!5124396 (= e!3195842 (or (not (= lt!2112753 Nil!59281)) (= lt!2112956 (t!372428 testedP!265))))))

(declare-fun b!5124393 () Bool)

(declare-fun e!3195841 () List!59405)

(assert (=> b!5124393 (= e!3195841 lt!2112753)))

(declare-fun d!1657031 () Bool)

(assert (=> d!1657031 e!3195842))

(declare-fun res!2182047 () Bool)

(assert (=> d!1657031 (=> (not res!2182047) (not e!3195842))))

(assert (=> d!1657031 (= res!2182047 (= (content!10545 lt!2112956) ((_ map or) (content!10545 (t!372428 testedP!265)) (content!10545 lt!2112753))))))

(assert (=> d!1657031 (= lt!2112956 e!3195841)))

(declare-fun c!880783 () Bool)

(assert (=> d!1657031 (= c!880783 ((_ is Nil!59281) (t!372428 testedP!265)))))

(assert (=> d!1657031 (= (++!13052 (t!372428 testedP!265) lt!2112753) lt!2112956)))

(declare-fun b!5124395 () Bool)

(declare-fun res!2182046 () Bool)

(assert (=> b!5124395 (=> (not res!2182046) (not e!3195842))))

(assert (=> b!5124395 (= res!2182046 (= (size!39545 lt!2112956) (+ (size!39545 (t!372428 testedP!265)) (size!39545 lt!2112753))))))

(declare-fun b!5124394 () Bool)

(assert (=> b!5124394 (= e!3195841 (Cons!59281 (h!65729 (t!372428 testedP!265)) (++!13052 (t!372428 (t!372428 testedP!265)) lt!2112753)))))

(assert (= (and d!1657031 c!880783) b!5124393))

(assert (= (and d!1657031 (not c!880783)) b!5124394))

(assert (= (and d!1657031 res!2182047) b!5124395))

(assert (= (and b!5124395 res!2182046) b!5124396))

(declare-fun m!6187080 () Bool)

(assert (=> d!1657031 m!6187080))

(assert (=> d!1657031 m!6186816))

(assert (=> d!1657031 m!6186624))

(declare-fun m!6187082 () Bool)

(assert (=> b!5124395 m!6187082))

(assert (=> b!5124395 m!6186672))

(assert (=> b!5124395 m!6186628))

(declare-fun m!6187086 () Bool)

(assert (=> b!5124394 m!6187086))

(assert (=> b!5124202 d!1657031))

(assert (=> b!5124013 d!1656835))

(assert (=> b!5124013 d!1656819))

(declare-fun lt!2112957 () List!59405)

(declare-fun e!3195844 () Bool)

(declare-fun b!5124400 () Bool)

(assert (=> b!5124400 (= e!3195844 (or (not (= lt!2112752 Nil!59281)) (= lt!2112957 (t!372428 testedP!265))))))

(declare-fun b!5124397 () Bool)

(declare-fun e!3195843 () List!59405)

(assert (=> b!5124397 (= e!3195843 lt!2112752)))

(declare-fun d!1657033 () Bool)

(assert (=> d!1657033 e!3195844))

(declare-fun res!2182049 () Bool)

(assert (=> d!1657033 (=> (not res!2182049) (not e!3195844))))

(assert (=> d!1657033 (= res!2182049 (= (content!10545 lt!2112957) ((_ map or) (content!10545 (t!372428 testedP!265)) (content!10545 lt!2112752))))))

(assert (=> d!1657033 (= lt!2112957 e!3195843)))

(declare-fun c!880784 () Bool)

(assert (=> d!1657033 (= c!880784 ((_ is Nil!59281) (t!372428 testedP!265)))))

(assert (=> d!1657033 (= (++!13052 (t!372428 testedP!265) lt!2112752) lt!2112957)))

(declare-fun b!5124399 () Bool)

(declare-fun res!2182048 () Bool)

(assert (=> b!5124399 (=> (not res!2182048) (not e!3195844))))

(assert (=> b!5124399 (= res!2182048 (= (size!39545 lt!2112957) (+ (size!39545 (t!372428 testedP!265)) (size!39545 lt!2112752))))))

(declare-fun b!5124398 () Bool)

(assert (=> b!5124398 (= e!3195843 (Cons!59281 (h!65729 (t!372428 testedP!265)) (++!13052 (t!372428 (t!372428 testedP!265)) lt!2112752)))))

(assert (= (and d!1657033 c!880784) b!5124397))

(assert (= (and d!1657033 (not c!880784)) b!5124398))

(assert (= (and d!1657033 res!2182049) b!5124399))

(assert (= (and b!5124399 res!2182048) b!5124400))

(declare-fun m!6187096 () Bool)

(assert (=> d!1657033 m!6187096))

(assert (=> d!1657033 m!6186816))

(assert (=> d!1657033 m!6186648))

(declare-fun m!6187098 () Bool)

(assert (=> b!5124399 m!6187098))

(assert (=> b!5124399 m!6186672))

(assert (=> b!5124399 m!6186652))

(declare-fun m!6187100 () Bool)

(assert (=> b!5124398 m!6187100))

(assert (=> b!5124176 d!1657033))

(declare-fun lt!2112958 () List!59405)

(declare-fun b!5124404 () Bool)

(declare-fun e!3195846 () Bool)

(assert (=> b!5124404 (= e!3195846 (or (not (= lt!2112760 Nil!59281)) (= lt!2112958 (t!372428 lt!2112772))))))

(declare-fun b!5124401 () Bool)

(declare-fun e!3195845 () List!59405)

(assert (=> b!5124401 (= e!3195845 lt!2112760)))

(declare-fun d!1657037 () Bool)

(assert (=> d!1657037 e!3195846))

(declare-fun res!2182051 () Bool)

(assert (=> d!1657037 (=> (not res!2182051) (not e!3195846))))

(assert (=> d!1657037 (= res!2182051 (= (content!10545 lt!2112958) ((_ map or) (content!10545 (t!372428 lt!2112772)) (content!10545 lt!2112760))))))

(assert (=> d!1657037 (= lt!2112958 e!3195845)))

(declare-fun c!880785 () Bool)

(assert (=> d!1657037 (= c!880785 ((_ is Nil!59281) (t!372428 lt!2112772)))))

(assert (=> d!1657037 (= (++!13052 (t!372428 lt!2112772) lt!2112760) lt!2112958)))

(declare-fun b!5124403 () Bool)

(declare-fun res!2182050 () Bool)

(assert (=> b!5124403 (=> (not res!2182050) (not e!3195846))))

(assert (=> b!5124403 (= res!2182050 (= (size!39545 lt!2112958) (+ (size!39545 (t!372428 lt!2112772)) (size!39545 lt!2112760))))))

(declare-fun b!5124402 () Bool)

(assert (=> b!5124402 (= e!3195845 (Cons!59281 (h!65729 (t!372428 lt!2112772)) (++!13052 (t!372428 (t!372428 lt!2112772)) lt!2112760)))))

(assert (= (and d!1657037 c!880785) b!5124401))

(assert (= (and d!1657037 (not c!880785)) b!5124402))

(assert (= (and d!1657037 res!2182051) b!5124403))

(assert (= (and b!5124403 res!2182050) b!5124404))

(declare-fun m!6187102 () Bool)

(assert (=> d!1657037 m!6187102))

(declare-fun m!6187104 () Bool)

(assert (=> d!1657037 m!6187104))

(assert (=> d!1657037 m!6186322))

(declare-fun m!6187106 () Bool)

(assert (=> b!5124403 m!6187106))

(declare-fun m!6187108 () Bool)

(assert (=> b!5124403 m!6187108))

(assert (=> b!5124403 m!6186326))

(declare-fun m!6187110 () Bool)

(assert (=> b!5124402 m!6187110))

(assert (=> b!5124198 d!1657037))

(declare-fun e!3195848 () Bool)

(declare-fun b!5124408 () Bool)

(declare-fun lt!2112959 () List!59405)

(assert (=> b!5124408 (= e!3195848 (or (not (= lt!2112748 Nil!59281)) (= lt!2112959 (t!372428 lt!2112766))))))

(declare-fun b!5124405 () Bool)

(declare-fun e!3195847 () List!59405)

(assert (=> b!5124405 (= e!3195847 lt!2112748)))

(declare-fun d!1657039 () Bool)

(assert (=> d!1657039 e!3195848))

(declare-fun res!2182053 () Bool)

(assert (=> d!1657039 (=> (not res!2182053) (not e!3195848))))

(assert (=> d!1657039 (= res!2182053 (= (content!10545 lt!2112959) ((_ map or) (content!10545 (t!372428 lt!2112766)) (content!10545 lt!2112748))))))

(assert (=> d!1657039 (= lt!2112959 e!3195847)))

(declare-fun c!880786 () Bool)

(assert (=> d!1657039 (= c!880786 ((_ is Nil!59281) (t!372428 lt!2112766)))))

(assert (=> d!1657039 (= (++!13052 (t!372428 lt!2112766) lt!2112748) lt!2112959)))

(declare-fun b!5124407 () Bool)

(declare-fun res!2182052 () Bool)

(assert (=> b!5124407 (=> (not res!2182052) (not e!3195848))))

(assert (=> b!5124407 (= res!2182052 (= (size!39545 lt!2112959) (+ (size!39545 (t!372428 lt!2112766)) (size!39545 lt!2112748))))))

(declare-fun b!5124406 () Bool)

(assert (=> b!5124406 (= e!3195847 (Cons!59281 (h!65729 (t!372428 lt!2112766)) (++!13052 (t!372428 (t!372428 lt!2112766)) lt!2112748)))))

(assert (= (and d!1657039 c!880786) b!5124405))

(assert (= (and d!1657039 (not c!880786)) b!5124406))

(assert (= (and d!1657039 res!2182053) b!5124407))

(assert (= (and b!5124407 res!2182052) b!5124408))

(declare-fun m!6187114 () Bool)

(assert (=> d!1657039 m!6187114))

(declare-fun m!6187116 () Bool)

(assert (=> d!1657039 m!6187116))

(assert (=> d!1657039 m!6186664))

(declare-fun m!6187118 () Bool)

(assert (=> b!5124407 m!6187118))

(assert (=> b!5124407 m!6186638))

(assert (=> b!5124407 m!6186668))

(declare-fun m!6187120 () Bool)

(assert (=> b!5124406 m!6187120))

(assert (=> b!5124182 d!1657039))

(declare-fun b!5124412 () Bool)

(declare-fun lt!2112960 () List!59405)

(declare-fun e!3195850 () Bool)

(assert (=> b!5124412 (= e!3195850 (or (not (= lt!2112760 Nil!59281)) (= lt!2112960 (t!372428 lt!2112753))))))

(declare-fun b!5124409 () Bool)

(declare-fun e!3195849 () List!59405)

(assert (=> b!5124409 (= e!3195849 lt!2112760)))

(declare-fun d!1657045 () Bool)

(assert (=> d!1657045 e!3195850))

(declare-fun res!2182055 () Bool)

(assert (=> d!1657045 (=> (not res!2182055) (not e!3195850))))

(assert (=> d!1657045 (= res!2182055 (= (content!10545 lt!2112960) ((_ map or) (content!10545 (t!372428 lt!2112753)) (content!10545 lt!2112760))))))

(assert (=> d!1657045 (= lt!2112960 e!3195849)))

(declare-fun c!880787 () Bool)

(assert (=> d!1657045 (= c!880787 ((_ is Nil!59281) (t!372428 lt!2112753)))))

(assert (=> d!1657045 (= (++!13052 (t!372428 lt!2112753) lt!2112760) lt!2112960)))

(declare-fun b!5124411 () Bool)

(declare-fun res!2182054 () Bool)

(assert (=> b!5124411 (=> (not res!2182054) (not e!3195850))))

(assert (=> b!5124411 (= res!2182054 (= (size!39545 lt!2112960) (+ (size!39545 (t!372428 lt!2112753)) (size!39545 lt!2112760))))))

(declare-fun b!5124410 () Bool)

(assert (=> b!5124410 (= e!3195849 (Cons!59281 (h!65729 (t!372428 lt!2112753)) (++!13052 (t!372428 (t!372428 lt!2112753)) lt!2112760)))))

(assert (= (and d!1657045 c!880787) b!5124409))

(assert (= (and d!1657045 (not c!880787)) b!5124410))

(assert (= (and d!1657045 res!2182055) b!5124411))

(assert (= (and b!5124411 res!2182054) b!5124412))

(declare-fun m!6187122 () Bool)

(assert (=> d!1657045 m!6187122))

(declare-fun m!6187124 () Bool)

(assert (=> d!1657045 m!6187124))

(assert (=> d!1657045 m!6186322))

(declare-fun m!6187126 () Bool)

(assert (=> b!5124411 m!6187126))

(declare-fun m!6187128 () Bool)

(assert (=> b!5124411 m!6187128))

(assert (=> b!5124411 m!6186326))

(declare-fun m!6187130 () Bool)

(assert (=> b!5124410 m!6187130))

(assert (=> b!5124164 d!1657045))

(declare-fun d!1657047 () Bool)

(declare-fun lt!2112961 () Int)

(assert (=> d!1657047 (>= lt!2112961 0)))

(declare-fun e!3195851 () Int)

(assert (=> d!1657047 (= lt!2112961 e!3195851)))

(declare-fun c!880788 () Bool)

(assert (=> d!1657047 (= c!880788 ((_ is Nil!59281) lt!2112869))))

(assert (=> d!1657047 (= (size!39545 lt!2112869) lt!2112961)))

(declare-fun b!5124413 () Bool)

(assert (=> b!5124413 (= e!3195851 0)))

(declare-fun b!5124414 () Bool)

(assert (=> b!5124414 (= e!3195851 (+ 1 (size!39545 (t!372428 lt!2112869))))))

(assert (= (and d!1657047 c!880788) b!5124413))

(assert (= (and d!1657047 (not c!880788)) b!5124414))

(declare-fun m!6187132 () Bool)

(assert (=> b!5124414 m!6187132))

(assert (=> b!5124161 d!1657047))

(assert (=> b!5124161 d!1656833))

(declare-fun d!1657049 () Bool)

(declare-fun lt!2112962 () Int)

(assert (=> d!1657049 (>= lt!2112962 0)))

(declare-fun e!3195852 () Int)

(assert (=> d!1657049 (= lt!2112962 e!3195852)))

(declare-fun c!880789 () Bool)

(assert (=> d!1657049 (= c!880789 ((_ is Nil!59281) lt!2112754))))

(assert (=> d!1657049 (= (size!39545 lt!2112754) lt!2112962)))

(declare-fun b!5124415 () Bool)

(assert (=> b!5124415 (= e!3195852 0)))

(declare-fun b!5124416 () Bool)

(assert (=> b!5124416 (= e!3195852 (+ 1 (size!39545 (t!372428 lt!2112754))))))

(assert (= (and d!1657049 c!880789) b!5124415))

(assert (= (and d!1657049 (not c!880789)) b!5124416))

(declare-fun m!6187134 () Bool)

(assert (=> b!5124416 m!6187134))

(assert (=> b!5124161 d!1657049))

(declare-fun d!1657051 () Bool)

(declare-fun c!880790 () Bool)

(assert (=> d!1657051 (= c!880790 ((_ is Nil!59281) lt!2112790))))

(declare-fun e!3195853 () (InoxSet C!28744))

(assert (=> d!1657051 (= (content!10545 lt!2112790) e!3195853)))

(declare-fun b!5124417 () Bool)

(assert (=> b!5124417 (= e!3195853 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124418 () Bool)

(assert (=> b!5124418 (= e!3195853 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112790) true) (content!10545 (t!372428 lt!2112790))))))

(assert (= (and d!1657051 c!880790) b!5124417))

(assert (= (and d!1657051 (not c!880790)) b!5124418))

(declare-fun m!6187136 () Bool)

(assert (=> b!5124418 m!6187136))

(declare-fun m!6187138 () Bool)

(assert (=> b!5124418 m!6187138))

(assert (=> d!1656709 d!1657051))

(declare-fun d!1657053 () Bool)

(declare-fun c!880791 () Bool)

(assert (=> d!1657053 (= c!880791 ((_ is Nil!59281) knownP!20))))

(declare-fun e!3195854 () (InoxSet C!28744))

(assert (=> d!1657053 (= (content!10545 knownP!20) e!3195854)))

(declare-fun b!5124419 () Bool)

(assert (=> b!5124419 (= e!3195854 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124420 () Bool)

(assert (=> b!5124420 (= e!3195854 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 knownP!20) true) (content!10545 (t!372428 knownP!20))))))

(assert (= (and d!1657053 c!880791) b!5124419))

(assert (= (and d!1657053 (not c!880791)) b!5124420))

(declare-fun m!6187140 () Bool)

(assert (=> b!5124420 m!6187140))

(declare-fun m!6187142 () Bool)

(assert (=> b!5124420 m!6187142))

(assert (=> d!1656709 d!1657053))

(declare-fun d!1657055 () Bool)

(declare-fun c!880792 () Bool)

(assert (=> d!1657055 (= c!880792 ((_ is Nil!59281) lt!2112760))))

(declare-fun e!3195855 () (InoxSet C!28744))

(assert (=> d!1657055 (= (content!10545 lt!2112760) e!3195855)))

(declare-fun b!5124421 () Bool)

(assert (=> b!5124421 (= e!3195855 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124422 () Bool)

(assert (=> b!5124422 (= e!3195855 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112760) true) (content!10545 (t!372428 lt!2112760))))))

(assert (= (and d!1657055 c!880792) b!5124421))

(assert (= (and d!1657055 (not c!880792)) b!5124422))

(declare-fun m!6187144 () Bool)

(assert (=> b!5124422 m!6187144))

(declare-fun m!6187146 () Bool)

(assert (=> b!5124422 m!6187146))

(assert (=> d!1656709 d!1657055))

(declare-fun d!1657057 () Bool)

(assert (=> d!1657057 (= (isEmpty!31952 lt!2112748) ((_ is Nil!59281) lt!2112748))))

(assert (=> d!1656853 d!1657057))

(declare-fun bs!1193543 () Bool)

(declare-fun d!1657059 () Bool)

(assert (= bs!1193543 (and d!1657059 d!1656869)))

(declare-fun lambda!251657 () Int)

(assert (=> bs!1193543 (not (= lambda!251657 lambda!251636))))

(declare-fun bs!1193545 () Bool)

(assert (= bs!1193545 (and d!1657059 b!5124223)))

(assert (=> bs!1193545 (not (= lambda!251657 lambda!251637))))

(declare-fun bs!1193546 () Bool)

(assert (= bs!1193546 (and d!1657059 b!5124224)))

(assert (=> bs!1193546 (not (= lambda!251657 lambda!251638))))

(declare-fun bs!1193548 () Bool)

(assert (= bs!1193548 (and d!1657059 d!1656883)))

(assert (=> bs!1193548 (not (= lambda!251657 lambda!251642))))

(declare-fun exists!1493 ((InoxSet Context!7246) Int) Bool)

(assert (=> d!1657059 (= (nullableZipper!1036 z!4463) (exists!1493 z!4463 lambda!251657))))

(declare-fun bs!1193549 () Bool)

(assert (= bs!1193549 d!1657059))

(declare-fun m!6187148 () Bool)

(assert (=> bs!1193549 m!6187148))

(assert (=> b!5124207 d!1657059))

(assert (=> b!5124011 d!1656899))

(assert (=> b!5124011 d!1656949))

(declare-fun bs!1193551 () Bool)

(declare-fun d!1657061 () Bool)

(assert (= bs!1193551 (and d!1657061 d!1656821)))

(declare-fun lambda!251658 () Int)

(assert (=> bs!1193551 (= lambda!251658 lambda!251622)))

(declare-fun bs!1193552 () Bool)

(assert (= bs!1193552 (and d!1657061 d!1656827)))

(assert (=> bs!1193552 (= lambda!251658 lambda!251623)))

(declare-fun bs!1193553 () Bool)

(assert (= bs!1193553 (and d!1657061 d!1656985)))

(assert (=> bs!1193553 (= lambda!251658 lambda!251648)))

(assert (=> d!1657061 (= (inv!78778 setElem!30534) (forall!13633 (exprs!4123 setElem!30534) lambda!251658))))

(declare-fun bs!1193554 () Bool)

(assert (= bs!1193554 d!1657061))

(declare-fun m!6187152 () Bool)

(assert (=> bs!1193554 m!6187152))

(assert (=> setNonEmpty!30534 d!1657061))

(declare-fun d!1657065 () Bool)

(declare-fun e!3195859 () Bool)

(assert (=> d!1657065 e!3195859))

(declare-fun res!2182058 () Bool)

(assert (=> d!1657065 (=> res!2182058 e!3195859)))

(declare-fun lt!2112964 () Bool)

(assert (=> d!1657065 (= res!2182058 (not lt!2112964))))

(declare-fun e!3195860 () Bool)

(assert (=> d!1657065 (= lt!2112964 e!3195860)))

(declare-fun res!2182059 () Bool)

(assert (=> d!1657065 (=> res!2182059 e!3195860)))

(assert (=> d!1657065 (= res!2182059 ((_ is Nil!59281) (tail!10090 lt!2112766)))))

(assert (=> d!1657065 (= (isPrefix!5644 (tail!10090 lt!2112766) (tail!10090 input!5745)) lt!2112964)))

(declare-fun b!5124429 () Bool)

(declare-fun e!3195858 () Bool)

(assert (=> b!5124429 (= e!3195860 e!3195858)))

(declare-fun res!2182061 () Bool)

(assert (=> b!5124429 (=> (not res!2182061) (not e!3195858))))

(assert (=> b!5124429 (= res!2182061 (not ((_ is Nil!59281) (tail!10090 input!5745))))))

(declare-fun b!5124430 () Bool)

(declare-fun res!2182060 () Bool)

(assert (=> b!5124430 (=> (not res!2182060) (not e!3195858))))

(assert (=> b!5124430 (= res!2182060 (= (head!10955 (tail!10090 lt!2112766)) (head!10955 (tail!10090 input!5745))))))

(declare-fun b!5124431 () Bool)

(assert (=> b!5124431 (= e!3195858 (isPrefix!5644 (tail!10090 (tail!10090 lt!2112766)) (tail!10090 (tail!10090 input!5745))))))

(declare-fun b!5124432 () Bool)

(assert (=> b!5124432 (= e!3195859 (>= (size!39545 (tail!10090 input!5745)) (size!39545 (tail!10090 lt!2112766))))))

(assert (= (and d!1657065 (not res!2182059)) b!5124429))

(assert (= (and b!5124429 res!2182061) b!5124430))

(assert (= (and b!5124430 res!2182060) b!5124431))

(assert (= (and d!1657065 (not res!2182058)) b!5124432))

(assert (=> b!5124430 m!6186334))

(declare-fun m!6187156 () Bool)

(assert (=> b!5124430 m!6187156))

(assert (=> b!5124430 m!6186314))

(assert (=> b!5124430 m!6186872))

(assert (=> b!5124431 m!6186334))

(declare-fun m!6187158 () Bool)

(assert (=> b!5124431 m!6187158))

(assert (=> b!5124431 m!6186314))

(assert (=> b!5124431 m!6186876))

(assert (=> b!5124431 m!6187158))

(assert (=> b!5124431 m!6186876))

(declare-fun m!6187164 () Bool)

(assert (=> b!5124431 m!6187164))

(assert (=> b!5124432 m!6186314))

(assert (=> b!5124432 m!6186880))

(assert (=> b!5124432 m!6186334))

(declare-fun m!6187168 () Bool)

(assert (=> b!5124432 m!6187168))

(assert (=> b!5124016 d!1657065))

(declare-fun d!1657067 () Bool)

(assert (=> d!1657067 (= (tail!10090 lt!2112766) (t!372428 lt!2112766))))

(assert (=> b!5124016 d!1657067))

(assert (=> b!5124016 d!1656929))

(declare-fun d!1657071 () Bool)

(declare-fun lt!2112965 () List!59405)

(assert (=> d!1657071 (= (++!13052 (t!372428 testedP!265) lt!2112965) (tail!10090 knownP!20))))

(declare-fun e!3195863 () List!59405)

(assert (=> d!1657071 (= lt!2112965 e!3195863)))

(declare-fun c!880796 () Bool)

(assert (=> d!1657071 (= c!880796 ((_ is Cons!59281) (t!372428 testedP!265)))))

(assert (=> d!1657071 (>= (size!39545 (tail!10090 knownP!20)) (size!39545 (t!372428 testedP!265)))))

(assert (=> d!1657071 (= (getSuffix!3316 (tail!10090 knownP!20) (t!372428 testedP!265)) lt!2112965)))

(declare-fun b!5124433 () Bool)

(assert (=> b!5124433 (= e!3195863 (getSuffix!3316 (tail!10090 (tail!10090 knownP!20)) (t!372428 (t!372428 testedP!265))))))

(declare-fun b!5124434 () Bool)

(assert (=> b!5124434 (= e!3195863 (tail!10090 knownP!20))))

(assert (= (and d!1657071 c!880796) b!5124433))

(assert (= (and d!1657071 (not c!880796)) b!5124434))

(declare-fun m!6187170 () Bool)

(assert (=> d!1657071 m!6187170))

(assert (=> d!1657071 m!6186336))

(assert (=> d!1657071 m!6187078))

(assert (=> d!1657071 m!6186672))

(assert (=> b!5124433 m!6186336))

(assert (=> b!5124433 m!6187060))

(assert (=> b!5124433 m!6187060))

(declare-fun m!6187172 () Bool)

(assert (=> b!5124433 m!6187172))

(assert (=> b!5124209 d!1657071))

(assert (=> b!5124209 d!1657025))

(declare-fun bs!1193555 () Bool)

(declare-fun d!1657073 () Bool)

(assert (= bs!1193555 (and d!1657073 b!5124223)))

(declare-fun lambda!251661 () Int)

(assert (=> bs!1193555 (not (= lambda!251661 lambda!251637))))

(declare-fun bs!1193556 () Bool)

(assert (= bs!1193556 (and d!1657073 b!5124224)))

(assert (=> bs!1193556 (not (= lambda!251661 lambda!251638))))

(declare-fun bs!1193557 () Bool)

(assert (= bs!1193557 (and d!1657073 d!1656883)))

(assert (=> bs!1193557 (= lambda!251661 lambda!251642)))

(declare-fun bs!1193558 () Bool)

(assert (= bs!1193558 (and d!1657073 d!1656869)))

(assert (=> bs!1193558 (not (= lambda!251661 lambda!251636))))

(declare-fun bs!1193559 () Bool)

(assert (= bs!1193559 (and d!1657073 d!1657059)))

(assert (=> bs!1193559 (not (= lambda!251661 lambda!251657))))

(assert (=> d!1657073 true))

(assert (=> d!1657073 (< (dynLambda!23611 order!26799 lambda!251636) (dynLambda!23611 order!26799 lambda!251661))))

(assert (=> d!1657073 (not (exists!1491 lt!2112914 lambda!251661))))

(declare-fun lt!2112973 () Unit!150425)

(declare-fun choose!37708 (List!59408 Int) Unit!150425)

(assert (=> d!1657073 (= lt!2112973 (choose!37708 lt!2112914 lambda!251636))))

(assert (=> d!1657073 (forall!13635 lt!2112914 lambda!251636)))

(assert (=> d!1657073 (= (lemmaForallThenNotExists!329 lt!2112914 lambda!251636) lt!2112973)))

(declare-fun bs!1193560 () Bool)

(assert (= bs!1193560 d!1657073))

(declare-fun m!6187212 () Bool)

(assert (=> bs!1193560 m!6187212))

(declare-fun m!6187214 () Bool)

(assert (=> bs!1193560 m!6187214))

(declare-fun m!6187216 () Bool)

(assert (=> bs!1193560 m!6187216))

(assert (=> b!5124224 d!1657073))

(declare-fun d!1657089 () Bool)

(assert (=> d!1657089 (= (isEmpty!31953 (getLanguageWitness!831 z!4463)) (not ((_ is Some!14705) (getLanguageWitness!831 z!4463))))))

(assert (=> d!1656869 d!1657089))

(declare-fun bs!1193571 () Bool)

(declare-fun d!1657091 () Bool)

(assert (= bs!1193571 (and d!1657091 d!1657073)))

(declare-fun lambda!251672 () Int)

(assert (=> bs!1193571 (not (= lambda!251672 lambda!251661))))

(declare-fun bs!1193572 () Bool)

(assert (= bs!1193572 (and d!1657091 b!5124223)))

(assert (=> bs!1193572 (= lambda!251672 lambda!251637)))

(declare-fun bs!1193573 () Bool)

(assert (= bs!1193573 (and d!1657091 b!5124224)))

(assert (=> bs!1193573 (= lambda!251672 lambda!251638)))

(declare-fun bs!1193574 () Bool)

(assert (= bs!1193574 (and d!1657091 d!1656883)))

(assert (=> bs!1193574 (not (= lambda!251672 lambda!251642))))

(declare-fun bs!1193575 () Bool)

(assert (= bs!1193575 (and d!1657091 d!1656869)))

(assert (=> bs!1193575 (not (= lambda!251672 lambda!251636))))

(declare-fun bs!1193576 () Bool)

(assert (= bs!1193576 (and d!1657091 d!1657059)))

(assert (=> bs!1193576 (not (= lambda!251672 lambda!251657))))

(declare-fun lt!2112985 () Option!14706)

(declare-fun isDefined!11515 (Option!14706) Bool)

(assert (=> d!1657091 (= (isDefined!11515 lt!2112985) (exists!1493 z!4463 lambda!251672))))

(declare-fun e!3195893 () Option!14706)

(assert (=> d!1657091 (= lt!2112985 e!3195893)))

(declare-fun c!880817 () Bool)

(assert (=> d!1657091 (= c!880817 (exists!1493 z!4463 lambda!251672))))

(assert (=> d!1657091 (= (getLanguageWitness!831 z!4463) lt!2112985)))

(declare-fun b!5124483 () Bool)

(declare-fun getLanguageWitness!832 (Context!7246) Option!14706)

(declare-fun getWitness!678 ((InoxSet Context!7246) Int) Context!7246)

(assert (=> b!5124483 (= e!3195893 (getLanguageWitness!832 (getWitness!678 z!4463 lambda!251672)))))

(declare-fun b!5124484 () Bool)

(assert (=> b!5124484 (= e!3195893 None!14705)))

(assert (= (and d!1657091 c!880817) b!5124483))

(assert (= (and d!1657091 (not c!880817)) b!5124484))

(declare-fun m!6187264 () Bool)

(assert (=> d!1657091 m!6187264))

(declare-fun m!6187266 () Bool)

(assert (=> d!1657091 m!6187266))

(assert (=> d!1657091 m!6187266))

(declare-fun m!6187268 () Bool)

(assert (=> b!5124483 m!6187268))

(assert (=> b!5124483 m!6187268))

(declare-fun m!6187270 () Bool)

(assert (=> b!5124483 m!6187270))

(assert (=> d!1656869 d!1657091))

(declare-fun d!1657123 () Bool)

(declare-fun lt!2112993 () Bool)

(assert (=> d!1657123 (= lt!2112993 (forall!13635 (toList!8272 z!4463) lambda!251636))))

(declare-fun choose!37709 ((InoxSet Context!7246) Int) Bool)

(assert (=> d!1657123 (= lt!2112993 (choose!37709 z!4463 lambda!251636))))

(assert (=> d!1657123 (= (forall!13634 z!4463 lambda!251636) lt!2112993)))

(declare-fun bs!1193586 () Bool)

(assert (= bs!1193586 d!1657123))

(assert (=> bs!1193586 m!6186752))

(assert (=> bs!1193586 m!6186752))

(declare-fun m!6187290 () Bool)

(assert (=> bs!1193586 m!6187290))

(declare-fun m!6187292 () Bool)

(assert (=> bs!1193586 m!6187292))

(assert (=> d!1656869 d!1657123))

(declare-fun d!1657139 () Bool)

(declare-fun choose!37710 ((InoxSet Context!7246) Int) (InoxSet Context!7246))

(assert (=> d!1657139 (= (flatMap!366 z!4463 lambda!251619) (choose!37710 z!4463 lambda!251619))))

(declare-fun bs!1193587 () Bool)

(assert (= bs!1193587 d!1657139))

(declare-fun m!6187306 () Bool)

(assert (=> bs!1193587 m!6187306))

(assert (=> d!1656725 d!1657139))

(declare-fun d!1657145 () Bool)

(declare-fun lt!2112995 () Int)

(assert (=> d!1657145 (>= lt!2112995 0)))

(declare-fun e!3195906 () Int)

(assert (=> d!1657145 (= lt!2112995 e!3195906)))

(declare-fun c!880828 () Bool)

(assert (=> d!1657145 (= c!880828 ((_ is Nil!59281) (t!372428 testedP!265)))))

(assert (=> d!1657145 (= (size!39545 (t!372428 testedP!265)) lt!2112995)))

(declare-fun b!5124509 () Bool)

(assert (=> b!5124509 (= e!3195906 0)))

(declare-fun b!5124510 () Bool)

(assert (=> b!5124510 (= e!3195906 (+ 1 (size!39545 (t!372428 (t!372428 testedP!265)))))))

(assert (= (and d!1657145 c!880828) b!5124509))

(assert (= (and d!1657145 (not c!880828)) b!5124510))

(declare-fun m!6187312 () Bool)

(assert (=> b!5124510 m!6187312))

(assert (=> b!5124186 d!1657145))

(declare-fun d!1657149 () Bool)

(declare-fun e!3195908 () Bool)

(assert (=> d!1657149 e!3195908))

(declare-fun res!2182086 () Bool)

(assert (=> d!1657149 (=> res!2182086 e!3195908)))

(declare-fun lt!2112996 () Bool)

(assert (=> d!1657149 (= res!2182086 (not lt!2112996))))

(declare-fun e!3195909 () Bool)

(assert (=> d!1657149 (= lt!2112996 e!3195909)))

(declare-fun res!2182087 () Bool)

(assert (=> d!1657149 (=> res!2182087 e!3195909)))

(assert (=> d!1657149 (= res!2182087 ((_ is Nil!59281) (tail!10090 testedP!265)))))

(assert (=> d!1657149 (= (isPrefix!5644 (tail!10090 testedP!265) (tail!10090 knownP!20)) lt!2112996)))

(declare-fun b!5124511 () Bool)

(declare-fun e!3195907 () Bool)

(assert (=> b!5124511 (= e!3195909 e!3195907)))

(declare-fun res!2182089 () Bool)

(assert (=> b!5124511 (=> (not res!2182089) (not e!3195907))))

(assert (=> b!5124511 (= res!2182089 (not ((_ is Nil!59281) (tail!10090 knownP!20))))))

(declare-fun b!5124512 () Bool)

(declare-fun res!2182088 () Bool)

(assert (=> b!5124512 (=> (not res!2182088) (not e!3195907))))

(assert (=> b!5124512 (= res!2182088 (= (head!10955 (tail!10090 testedP!265)) (head!10955 (tail!10090 knownP!20))))))

(declare-fun b!5124513 () Bool)

(assert (=> b!5124513 (= e!3195907 (isPrefix!5644 (tail!10090 (tail!10090 testedP!265)) (tail!10090 (tail!10090 knownP!20))))))

(declare-fun b!5124514 () Bool)

(assert (=> b!5124514 (= e!3195908 (>= (size!39545 (tail!10090 knownP!20)) (size!39545 (tail!10090 testedP!265))))))

(assert (= (and d!1657149 (not res!2182087)) b!5124511))

(assert (= (and b!5124511 res!2182089) b!5124512))

(assert (= (and b!5124512 res!2182088) b!5124513))

(assert (= (and d!1657149 (not res!2182086)) b!5124514))

(assert (=> b!5124512 m!6186744))

(assert (=> b!5124512 m!6186870))

(assert (=> b!5124512 m!6186336))

(assert (=> b!5124512 m!6187056))

(assert (=> b!5124513 m!6186744))

(assert (=> b!5124513 m!6186874))

(assert (=> b!5124513 m!6186336))

(assert (=> b!5124513 m!6187060))

(assert (=> b!5124513 m!6186874))

(assert (=> b!5124513 m!6187060))

(declare-fun m!6187316 () Bool)

(assert (=> b!5124513 m!6187316))

(assert (=> b!5124514 m!6186336))

(assert (=> b!5124514 m!6187078))

(assert (=> b!5124514 m!6186744))

(assert (=> b!5124514 m!6186882))

(assert (=> b!5124213 d!1657149))

(assert (=> b!5124213 d!1656927))

(assert (=> b!5124213 d!1657025))

(declare-fun d!1657153 () Bool)

(declare-fun lt!2112997 () Int)

(assert (=> d!1657153 (>= lt!2112997 0)))

(declare-fun e!3195911 () Int)

(assert (=> d!1657153 (= lt!2112997 e!3195911)))

(declare-fun c!880830 () Bool)

(assert (=> d!1657153 (= c!880830 ((_ is Nil!59281) lt!2112886))))

(assert (=> d!1657153 (= (size!39545 lt!2112886) lt!2112997)))

(declare-fun b!5124517 () Bool)

(assert (=> b!5124517 (= e!3195911 0)))

(declare-fun b!5124518 () Bool)

(assert (=> b!5124518 (= e!3195911 (+ 1 (size!39545 (t!372428 lt!2112886))))))

(assert (= (and d!1657153 c!880830) b!5124517))

(assert (= (and d!1657153 (not c!880830)) b!5124518))

(declare-fun m!6187322 () Bool)

(assert (=> b!5124518 m!6187322))

(assert (=> b!5124195 d!1657153))

(assert (=> b!5124195 d!1656905))

(declare-fun d!1657155 () Bool)

(declare-fun lt!2112998 () Int)

(assert (=> d!1657155 (>= lt!2112998 0)))

(declare-fun e!3195912 () Int)

(assert (=> d!1657155 (= lt!2112998 e!3195912)))

(declare-fun c!880831 () Bool)

(assert (=> d!1657155 (= c!880831 ((_ is Nil!59281) lt!2112748))))

(assert (=> d!1657155 (= (size!39545 lt!2112748) lt!2112998)))

(declare-fun b!5124519 () Bool)

(assert (=> b!5124519 (= e!3195912 0)))

(declare-fun b!5124520 () Bool)

(assert (=> b!5124520 (= e!3195912 (+ 1 (size!39545 (t!372428 lt!2112748))))))

(assert (= (and d!1657155 c!880831) b!5124519))

(assert (= (and d!1657155 (not c!880831)) b!5124520))

(declare-fun m!6187332 () Bool)

(assert (=> b!5124520 m!6187332))

(assert (=> b!5124195 d!1657155))

(declare-fun d!1657159 () Bool)

(declare-fun c!880832 () Bool)

(assert (=> d!1657159 (= c!880832 ((_ is Cons!59281) (t!372428 lt!2112766)))))

(declare-fun e!3195913 () (InoxSet Context!7246))

(assert (=> d!1657159 (= (derivationZipper!136 (derivationStepZipper!862 baseZ!46 (h!65729 lt!2112766)) (t!372428 lt!2112766)) e!3195913)))

(declare-fun b!5124521 () Bool)

(assert (=> b!5124521 (= e!3195913 (derivationZipper!136 (derivationStepZipper!862 (derivationStepZipper!862 baseZ!46 (h!65729 lt!2112766)) (h!65729 (t!372428 lt!2112766))) (t!372428 (t!372428 lt!2112766))))))

(declare-fun b!5124522 () Bool)

(assert (=> b!5124522 (= e!3195913 (derivationStepZipper!862 baseZ!46 (h!65729 lt!2112766)))))

(assert (= (and d!1657159 c!880832) b!5124521))

(assert (= (and d!1657159 (not c!880832)) b!5124522))

(assert (=> b!5124521 m!6186594))

(declare-fun m!6187334 () Bool)

(assert (=> b!5124521 m!6187334))

(assert (=> b!5124521 m!6187334))

(declare-fun m!6187336 () Bool)

(assert (=> b!5124521 m!6187336))

(assert (=> b!5124145 d!1657159))

(declare-fun bs!1193601 () Bool)

(declare-fun d!1657161 () Bool)

(assert (= bs!1193601 (and d!1657161 d!1656725)))

(declare-fun lambda!251677 () Int)

(assert (=> bs!1193601 (= (= (h!65729 lt!2112766) lt!2112765) (= lambda!251677 lambda!251619))))

(declare-fun bs!1193602 () Bool)

(assert (= bs!1193602 (and d!1657161 d!1656939)))

(assert (=> bs!1193602 (= (= (h!65729 lt!2112766) (h!65729 testedP!265)) (= lambda!251677 lambda!251646))))

(declare-fun bs!1193603 () Bool)

(assert (= bs!1193603 (and d!1657161 d!1656977)))

(assert (=> bs!1193603 (= (= (h!65729 lt!2112766) (head!10955 lt!2112748)) (= lambda!251677 lambda!251647))))

(declare-fun bs!1193604 () Bool)

(assert (= bs!1193604 (and d!1657161 d!1657021)))

(assert (=> bs!1193604 (= (= (h!65729 lt!2112766) (head!10955 knownP!20)) (= lambda!251677 lambda!251650))))

(assert (=> d!1657161 true))

(assert (=> d!1657161 (= (derivationStepZipper!862 baseZ!46 (h!65729 lt!2112766)) (flatMap!366 baseZ!46 lambda!251677))))

(declare-fun bs!1193605 () Bool)

(assert (= bs!1193605 d!1657161))

(declare-fun m!6187348 () Bool)

(assert (=> bs!1193605 m!6187348))

(assert (=> b!5124145 d!1657161))

(declare-fun bs!1193606 () Bool)

(declare-fun d!1657169 () Bool)

(assert (= bs!1193606 (and d!1657169 d!1657073)))

(declare-fun lambda!251680 () Int)

(assert (=> bs!1193606 (= (= (ite c!880733 lambda!251637 lambda!251638) lambda!251636) (= lambda!251680 lambda!251661))))

(declare-fun bs!1193607 () Bool)

(assert (= bs!1193607 (and d!1657169 b!5124223)))

(assert (=> bs!1193607 (not (= lambda!251680 lambda!251637))))

(declare-fun bs!1193608 () Bool)

(assert (= bs!1193608 (and d!1657169 b!5124224)))

(assert (=> bs!1193608 (not (= lambda!251680 lambda!251638))))

(declare-fun bs!1193609 () Bool)

(assert (= bs!1193609 (and d!1657169 d!1656883)))

(assert (=> bs!1193609 (= (= (ite c!880733 lambda!251637 lambda!251638) lambda!251636) (= lambda!251680 lambda!251642))))

(declare-fun bs!1193610 () Bool)

(assert (= bs!1193610 (and d!1657169 d!1657091)))

(assert (=> bs!1193610 (not (= lambda!251680 lambda!251672))))

(declare-fun bs!1193611 () Bool)

(assert (= bs!1193611 (and d!1657169 d!1656869)))

(assert (=> bs!1193611 (not (= lambda!251680 lambda!251636))))

(declare-fun bs!1193612 () Bool)

(assert (= bs!1193612 (and d!1657169 d!1657059)))

(assert (=> bs!1193612 (not (= lambda!251680 lambda!251657))))

(assert (=> d!1657169 true))

(assert (=> d!1657169 (< (dynLambda!23611 order!26799 (ite c!880733 lambda!251637 lambda!251638)) (dynLambda!23611 order!26799 lambda!251680))))

(assert (=> d!1657169 (= (exists!1491 (ite c!880733 lt!2112917 lt!2112914) (ite c!880733 lambda!251637 lambda!251638)) (not (forall!13635 (ite c!880733 lt!2112917 lt!2112914) lambda!251680)))))

(declare-fun bs!1193613 () Bool)

(assert (= bs!1193613 d!1657169))

(declare-fun m!6187360 () Bool)

(assert (=> bs!1193613 m!6187360))

(assert (=> bm!356696 d!1657169))

(declare-fun d!1657177 () Bool)

(declare-fun c!880838 () Bool)

(assert (=> d!1657177 (= c!880838 ((_ is Nil!59281) lt!2112877))))

(declare-fun e!3195919 () (InoxSet C!28744))

(assert (=> d!1657177 (= (content!10545 lt!2112877) e!3195919)))

(declare-fun b!5124533 () Bool)

(assert (=> b!5124533 (= e!3195919 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124534 () Bool)

(assert (=> b!5124534 (= e!3195919 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112877) true) (content!10545 (t!372428 lt!2112877))))))

(assert (= (and d!1657177 c!880838) b!5124533))

(assert (= (and d!1657177 (not c!880838)) b!5124534))

(declare-fun m!6187362 () Bool)

(assert (=> b!5124534 m!6187362))

(declare-fun m!6187364 () Bool)

(assert (=> b!5124534 m!6187364))

(assert (=> d!1656825 d!1657177))

(assert (=> d!1656825 d!1656967))

(declare-fun d!1657179 () Bool)

(declare-fun c!880840 () Bool)

(assert (=> d!1657179 (= c!880840 ((_ is Nil!59281) lt!2112752))))

(declare-fun e!3195920 () (InoxSet C!28744))

(assert (=> d!1657179 (= (content!10545 lt!2112752) e!3195920)))

(declare-fun b!5124535 () Bool)

(assert (=> b!5124535 (= e!3195920 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124536 () Bool)

(assert (=> b!5124536 (= e!3195920 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112752) true) (content!10545 (t!372428 lt!2112752))))))

(assert (= (and d!1657179 c!880840) b!5124535))

(assert (= (and d!1657179 (not c!880840)) b!5124536))

(declare-fun m!6187366 () Bool)

(assert (=> b!5124536 m!6187366))

(declare-fun m!6187368 () Bool)

(assert (=> b!5124536 m!6187368))

(assert (=> d!1656825 d!1657179))

(declare-fun d!1657181 () Bool)

(declare-fun c!880841 () Bool)

(assert (=> d!1657181 (= c!880841 ((_ is Nil!59281) lt!2112879))))

(declare-fun e!3195921 () (InoxSet C!28744))

(assert (=> d!1657181 (= (content!10545 lt!2112879) e!3195921)))

(declare-fun b!5124537 () Bool)

(assert (=> b!5124537 (= e!3195921 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124538 () Bool)

(assert (=> b!5124538 (= e!3195921 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112879) true) (content!10545 (t!372428 lt!2112879))))))

(assert (= (and d!1657181 c!880841) b!5124537))

(assert (= (and d!1657181 (not c!880841)) b!5124538))

(declare-fun m!6187370 () Bool)

(assert (=> b!5124538 m!6187370))

(declare-fun m!6187372 () Bool)

(assert (=> b!5124538 m!6187372))

(assert (=> d!1656831 d!1657181))

(declare-fun d!1657183 () Bool)

(declare-fun c!880842 () Bool)

(assert (=> d!1657183 (= c!880842 ((_ is Nil!59281) lt!2112766))))

(declare-fun e!3195922 () (InoxSet C!28744))

(assert (=> d!1657183 (= (content!10545 lt!2112766) e!3195922)))

(declare-fun b!5124539 () Bool)

(assert (=> b!5124539 (= e!3195922 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124540 () Bool)

(assert (=> b!5124540 (= e!3195922 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112766) true) (content!10545 (t!372428 lt!2112766))))))

(assert (= (and d!1657183 c!880842) b!5124539))

(assert (= (and d!1657183 (not c!880842)) b!5124540))

(declare-fun m!6187374 () Bool)

(assert (=> b!5124540 m!6187374))

(assert (=> b!5124540 m!6187116))

(assert (=> d!1656831 d!1657183))

(assert (=> d!1656831 d!1656995))

(declare-fun d!1657185 () Bool)

(declare-fun c!880843 () Bool)

(assert (=> d!1657185 (= c!880843 ((_ is Nil!59281) lt!2112870))))

(declare-fun e!3195923 () (InoxSet C!28744))

(assert (=> d!1657185 (= (content!10545 lt!2112870) e!3195923)))

(declare-fun b!5124541 () Bool)

(assert (=> b!5124541 (= e!3195923 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124542 () Bool)

(assert (=> b!5124542 (= e!3195923 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112870) true) (content!10545 (t!372428 lt!2112870))))))

(assert (= (and d!1657185 c!880843) b!5124541))

(assert (= (and d!1657185 (not c!880843)) b!5124542))

(declare-fun m!6187376 () Bool)

(assert (=> b!5124542 m!6187376))

(declare-fun m!6187378 () Bool)

(assert (=> b!5124542 m!6187378))

(assert (=> d!1656815 d!1657185))

(declare-fun d!1657187 () Bool)

(declare-fun c!880844 () Bool)

(assert (=> d!1657187 (= c!880844 ((_ is Nil!59281) lt!2112753))))

(declare-fun e!3195924 () (InoxSet C!28744))

(assert (=> d!1657187 (= (content!10545 lt!2112753) e!3195924)))

(declare-fun b!5124543 () Bool)

(assert (=> b!5124543 (= e!3195924 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124544 () Bool)

(assert (=> b!5124544 (= e!3195924 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112753) true) (content!10545 (t!372428 lt!2112753))))))

(assert (= (and d!1657187 c!880844) b!5124543))

(assert (= (and d!1657187 (not c!880844)) b!5124544))

(declare-fun m!6187380 () Bool)

(assert (=> b!5124544 m!6187380))

(assert (=> b!5124544 m!6187124))

(assert (=> d!1656815 d!1657187))

(assert (=> d!1656815 d!1657055))

(declare-fun b!5124552 () Bool)

(declare-fun e!3195928 () Bool)

(declare-fun lt!2113000 () List!59405)

(assert (=> b!5124552 (= e!3195928 (or (not (= lt!2112749 Nil!59281)) (= lt!2113000 (t!372428 testedP!265))))))

(declare-fun b!5124549 () Bool)

(declare-fun e!3195927 () List!59405)

(assert (=> b!5124549 (= e!3195927 lt!2112749)))

(declare-fun d!1657191 () Bool)

(assert (=> d!1657191 e!3195928))

(declare-fun res!2182093 () Bool)

(assert (=> d!1657191 (=> (not res!2182093) (not e!3195928))))

(assert (=> d!1657191 (= res!2182093 (= (content!10545 lt!2113000) ((_ map or) (content!10545 (t!372428 testedP!265)) (content!10545 lt!2112749))))))

(assert (=> d!1657191 (= lt!2113000 e!3195927)))

(declare-fun c!880846 () Bool)

(assert (=> d!1657191 (= c!880846 ((_ is Nil!59281) (t!372428 testedP!265)))))

(assert (=> d!1657191 (= (++!13052 (t!372428 testedP!265) lt!2112749) lt!2113000)))

(declare-fun b!5124551 () Bool)

(declare-fun res!2182092 () Bool)

(assert (=> b!5124551 (=> (not res!2182092) (not e!3195928))))

(assert (=> b!5124551 (= res!2182092 (= (size!39545 lt!2113000) (+ (size!39545 (t!372428 testedP!265)) (size!39545 lt!2112749))))))

(declare-fun b!5124550 () Bool)

(assert (=> b!5124550 (= e!3195927 (Cons!59281 (h!65729 (t!372428 testedP!265)) (++!13052 (t!372428 (t!372428 testedP!265)) lt!2112749)))))

(assert (= (and d!1657191 c!880846) b!5124549))

(assert (= (and d!1657191 (not c!880846)) b!5124550))

(assert (= (and d!1657191 res!2182093) b!5124551))

(assert (= (and b!5124551 res!2182092) b!5124552))

(declare-fun m!6187392 () Bool)

(assert (=> d!1657191 m!6187392))

(assert (=> d!1657191 m!6186816))

(assert (=> d!1657191 m!6186680))

(declare-fun m!6187394 () Bool)

(assert (=> b!5124551 m!6187394))

(assert (=> b!5124551 m!6186672))

(assert (=> b!5124551 m!6186684))

(declare-fun m!6187396 () Bool)

(assert (=> b!5124550 m!6187396))

(assert (=> b!5124190 d!1657191))

(assert (=> b!5124216 d!1656947))

(assert (=> b!5124216 d!1656901))

(declare-fun d!1657195 () Bool)

(declare-fun c!880848 () Bool)

(assert (=> d!1657195 (= c!880848 ((_ is Nil!59281) lt!2112889))))

(declare-fun e!3195930 () (InoxSet C!28744))

(assert (=> d!1657195 (= (content!10545 lt!2112889) e!3195930)))

(declare-fun b!5124555 () Bool)

(assert (=> b!5124555 (= e!3195930 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124556 () Bool)

(assert (=> b!5124556 (= e!3195930 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112889) true) (content!10545 (t!372428 lt!2112889))))))

(assert (= (and d!1657195 c!880848) b!5124555))

(assert (= (and d!1657195 (not c!880848)) b!5124556))

(declare-fun m!6187400 () Bool)

(assert (=> b!5124556 m!6187400))

(declare-fun m!6187402 () Bool)

(assert (=> b!5124556 m!6187402))

(assert (=> d!1656847 d!1657195))

(assert (=> d!1656847 d!1656967))

(assert (=> d!1656847 d!1657187))

(declare-fun lt!2113002 () List!59405)

(declare-fun b!5124562 () Bool)

(declare-fun e!3195933 () Bool)

(assert (=> b!5124562 (= e!3195933 (or (not (= lt!2112760 Nil!59281)) (= lt!2113002 (t!372428 knownP!20))))))

(declare-fun b!5124559 () Bool)

(declare-fun e!3195932 () List!59405)

(assert (=> b!5124559 (= e!3195932 lt!2112760)))

(declare-fun d!1657199 () Bool)

(assert (=> d!1657199 e!3195933))

(declare-fun res!2182095 () Bool)

(assert (=> d!1657199 (=> (not res!2182095) (not e!3195933))))

(assert (=> d!1657199 (= res!2182095 (= (content!10545 lt!2113002) ((_ map or) (content!10545 (t!372428 knownP!20)) (content!10545 lt!2112760))))))

(assert (=> d!1657199 (= lt!2113002 e!3195932)))

(declare-fun c!880850 () Bool)

(assert (=> d!1657199 (= c!880850 ((_ is Nil!59281) (t!372428 knownP!20)))))

(assert (=> d!1657199 (= (++!13052 (t!372428 knownP!20) lt!2112760) lt!2113002)))

(declare-fun b!5124561 () Bool)

(declare-fun res!2182094 () Bool)

(assert (=> b!5124561 (=> (not res!2182094) (not e!3195933))))

(assert (=> b!5124561 (= res!2182094 (= (size!39545 lt!2113002) (+ (size!39545 (t!372428 knownP!20)) (size!39545 lt!2112760))))))

(declare-fun b!5124560 () Bool)

(assert (=> b!5124560 (= e!3195932 (Cons!59281 (h!65729 (t!372428 knownP!20)) (++!13052 (t!372428 (t!372428 knownP!20)) lt!2112760)))))

(assert (= (and d!1657199 c!880850) b!5124559))

(assert (= (and d!1657199 (not c!880850)) b!5124560))

(assert (= (and d!1657199 res!2182095) b!5124561))

(assert (= (and b!5124561 res!2182094) b!5124562))

(declare-fun m!6187410 () Bool)

(assert (=> d!1657199 m!6187410))

(assert (=> d!1657199 m!6187142))

(assert (=> d!1657199 m!6186322))

(declare-fun m!6187412 () Bool)

(assert (=> b!5124561 m!6187412))

(assert (=> b!5124561 m!6186674))

(assert (=> b!5124561 m!6186326))

(declare-fun m!6187414 () Bool)

(assert (=> b!5124560 m!6187414))

(assert (=> b!5123999 d!1657199))

(declare-fun lt!2113003 () List!59405)

(declare-fun e!3195936 () Bool)

(declare-fun b!5124568 () Bool)

(assert (=> b!5124568 (= e!3195936 (or (not (= lt!2112891 Nil!59281)) (= lt!2113003 testedP!265)))))

(declare-fun b!5124565 () Bool)

(declare-fun e!3195935 () List!59405)

(assert (=> b!5124565 (= e!3195935 lt!2112891)))

(declare-fun d!1657205 () Bool)

(assert (=> d!1657205 e!3195936))

(declare-fun res!2182097 () Bool)

(assert (=> d!1657205 (=> (not res!2182097) (not e!3195936))))

(assert (=> d!1657205 (= res!2182097 (= (content!10545 lt!2113003) ((_ map or) (content!10545 testedP!265) (content!10545 lt!2112891))))))

(assert (=> d!1657205 (= lt!2113003 e!3195935)))

(declare-fun c!880852 () Bool)

(assert (=> d!1657205 (= c!880852 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1657205 (= (++!13052 testedP!265 lt!2112891) lt!2113003)))

(declare-fun b!5124567 () Bool)

(declare-fun res!2182096 () Bool)

(assert (=> b!5124567 (=> (not res!2182096) (not e!3195936))))

(assert (=> b!5124567 (= res!2182096 (= (size!39545 lt!2113003) (+ (size!39545 testedP!265) (size!39545 lt!2112891))))))

(declare-fun b!5124566 () Bool)

(assert (=> b!5124566 (= e!3195935 (Cons!59281 (h!65729 testedP!265) (++!13052 (t!372428 testedP!265) lt!2112891)))))

(assert (= (and d!1657205 c!880852) b!5124565))

(assert (= (and d!1657205 (not c!880852)) b!5124566))

(assert (= (and d!1657205 res!2182097) b!5124567))

(assert (= (and b!5124567 res!2182096) b!5124568))

(declare-fun m!6187416 () Bool)

(assert (=> d!1657205 m!6187416))

(assert (=> d!1657205 m!6186348))

(declare-fun m!6187418 () Bool)

(assert (=> d!1657205 m!6187418))

(declare-fun m!6187420 () Bool)

(assert (=> b!5124567 m!6187420))

(assert (=> b!5124567 m!6186224))

(declare-fun m!6187422 () Bool)

(assert (=> b!5124567 m!6187422))

(declare-fun m!6187424 () Bool)

(assert (=> b!5124566 m!6187424))

(assert (=> d!1656857 d!1657205))

(assert (=> d!1656857 d!1656835))

(assert (=> d!1656857 d!1656833))

(declare-fun d!1657207 () Bool)

(assert (=> d!1657207 (= lt!2112749 lt!2112753)))

(assert (=> d!1657207 true))

(declare-fun _$63!1272 () Unit!150425)

(assert (=> d!1657207 (= (choose!37704 testedP!265 lt!2112749 testedP!265 lt!2112753 knownP!20) _$63!1272)))

(assert (=> d!1656837 d!1657207))

(assert (=> d!1656837 d!1656859))

(declare-fun d!1657209 () Bool)

(declare-fun c!880853 () Bool)

(assert (=> d!1657209 (= c!880853 ((_ is Nil!59281) lt!2112888))))

(declare-fun e!3195937 () (InoxSet C!28744))

(assert (=> d!1657209 (= (content!10545 lt!2112888) e!3195937)))

(declare-fun b!5124569 () Bool)

(assert (=> b!5124569 (= e!3195937 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124570 () Bool)

(assert (=> b!5124570 (= e!3195937 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112888) true) (content!10545 (t!372428 lt!2112888))))))

(assert (= (and d!1657209 c!880853) b!5124569))

(assert (= (and d!1657209 (not c!880853)) b!5124570))

(declare-fun m!6187426 () Bool)

(assert (=> b!5124570 m!6187426))

(declare-fun m!6187428 () Bool)

(assert (=> b!5124570 m!6187428))

(assert (=> d!1656845 d!1657209))

(declare-fun d!1657211 () Bool)

(declare-fun c!880854 () Bool)

(assert (=> d!1657211 (= c!880854 ((_ is Nil!59281) lt!2112772))))

(declare-fun e!3195938 () (InoxSet C!28744))

(assert (=> d!1657211 (= (content!10545 lt!2112772) e!3195938)))

(declare-fun b!5124571 () Bool)

(assert (=> b!5124571 (= e!3195938 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124572 () Bool)

(assert (=> b!5124572 (= e!3195938 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112772) true) (content!10545 (t!372428 lt!2112772))))))

(assert (= (and d!1657211 c!880854) b!5124571))

(assert (= (and d!1657211 (not c!880854)) b!5124572))

(declare-fun m!6187430 () Bool)

(assert (=> b!5124572 m!6187430))

(assert (=> b!5124572 m!6187104))

(assert (=> d!1656845 d!1657211))

(assert (=> d!1656845 d!1657055))

(declare-fun e!3195940 () Bool)

(declare-fun lt!2113004 () List!59405)

(declare-fun b!5124576 () Bool)

(assert (=> b!5124576 (= e!3195940 (or (not (= lt!2112768 Nil!59281)) (= lt!2113004 (t!372428 testedP!265))))))

(declare-fun b!5124573 () Bool)

(declare-fun e!3195939 () List!59405)

(assert (=> b!5124573 (= e!3195939 lt!2112768)))

(declare-fun d!1657213 () Bool)

(assert (=> d!1657213 e!3195940))

(declare-fun res!2182099 () Bool)

(assert (=> d!1657213 (=> (not res!2182099) (not e!3195940))))

(assert (=> d!1657213 (= res!2182099 (= (content!10545 lt!2113004) ((_ map or) (content!10545 (t!372428 testedP!265)) (content!10545 lt!2112768))))))

(assert (=> d!1657213 (= lt!2113004 e!3195939)))

(declare-fun c!880855 () Bool)

(assert (=> d!1657213 (= c!880855 ((_ is Nil!59281) (t!372428 testedP!265)))))

(assert (=> d!1657213 (= (++!13052 (t!372428 testedP!265) lt!2112768) lt!2113004)))

(declare-fun b!5124575 () Bool)

(declare-fun res!2182098 () Bool)

(assert (=> b!5124575 (=> (not res!2182098) (not e!3195940))))

(assert (=> b!5124575 (= res!2182098 (= (size!39545 lt!2113004) (+ (size!39545 (t!372428 testedP!265)) (size!39545 lt!2112768))))))

(declare-fun b!5124574 () Bool)

(assert (=> b!5124574 (= e!3195939 (Cons!59281 (h!65729 (t!372428 testedP!265)) (++!13052 (t!372428 (t!372428 testedP!265)) lt!2112768)))))

(assert (= (and d!1657213 c!880855) b!5124573))

(assert (= (and d!1657213 (not c!880855)) b!5124574))

(assert (= (and d!1657213 res!2182099) b!5124575))

(assert (= (and b!5124575 res!2182098) b!5124576))

(declare-fun m!6187432 () Bool)

(assert (=> d!1657213 m!6187432))

(assert (=> d!1657213 m!6186816))

(assert (=> d!1657213 m!6186350))

(declare-fun m!6187434 () Bool)

(assert (=> b!5124575 m!6187434))

(assert (=> b!5124575 m!6186672))

(assert (=> b!5124575 m!6186354))

(declare-fun m!6187436 () Bool)

(assert (=> b!5124574 m!6187436))

(assert (=> b!5124019 d!1657213))

(assert (=> b!5124218 d!1656829))

(assert (=> b!5124218 d!1656833))

(declare-fun d!1657215 () Bool)

(assert (=> d!1657215 (= (isEmpty!31952 knownP!20) ((_ is Nil!59281) knownP!20))))

(assert (=> d!1656811 d!1657215))

(declare-fun d!1657217 () Bool)

(declare-fun lt!2113005 () List!59405)

(assert (=> d!1657217 (= (++!13052 (t!372428 knownP!20) lt!2113005) (tail!10090 input!5745))))

(declare-fun e!3195941 () List!59405)

(assert (=> d!1657217 (= lt!2113005 e!3195941)))

(declare-fun c!880856 () Bool)

(assert (=> d!1657217 (= c!880856 ((_ is Cons!59281) (t!372428 knownP!20)))))

(assert (=> d!1657217 (>= (size!39545 (tail!10090 input!5745)) (size!39545 (t!372428 knownP!20)))))

(assert (=> d!1657217 (= (getSuffix!3316 (tail!10090 input!5745) (t!372428 knownP!20)) lt!2113005)))

(declare-fun b!5124577 () Bool)

(assert (=> b!5124577 (= e!3195941 (getSuffix!3316 (tail!10090 (tail!10090 input!5745)) (t!372428 (t!372428 knownP!20))))))

(declare-fun b!5124578 () Bool)

(assert (=> b!5124578 (= e!3195941 (tail!10090 input!5745))))

(assert (= (and d!1657217 c!880856) b!5124577))

(assert (= (and d!1657217 (not c!880856)) b!5124578))

(declare-fun m!6187438 () Bool)

(assert (=> d!1657217 m!6187438))

(assert (=> d!1657217 m!6186314))

(assert (=> d!1657217 m!6186880))

(assert (=> d!1657217 m!6186674))

(assert (=> b!5124577 m!6186314))

(assert (=> b!5124577 m!6186876))

(assert (=> b!5124577 m!6186876))

(declare-fun m!6187440 () Bool)

(assert (=> b!5124577 m!6187440))

(assert (=> b!5124022 d!1657217))

(assert (=> b!5124022 d!1656929))

(declare-fun d!1657223 () Bool)

(declare-fun lt!2113007 () List!59405)

(assert (=> d!1657223 (= (++!13052 (t!372428 testedP!265) lt!2113007) (tail!10090 input!5745))))

(declare-fun e!3195944 () List!59405)

(assert (=> d!1657223 (= lt!2113007 e!3195944)))

(declare-fun c!880858 () Bool)

(assert (=> d!1657223 (= c!880858 ((_ is Cons!59281) (t!372428 testedP!265)))))

(assert (=> d!1657223 (>= (size!39545 (tail!10090 input!5745)) (size!39545 (t!372428 testedP!265)))))

(assert (=> d!1657223 (= (getSuffix!3316 (tail!10090 input!5745) (t!372428 testedP!265)) lt!2113007)))

(declare-fun b!5124583 () Bool)

(assert (=> b!5124583 (= e!3195944 (getSuffix!3316 (tail!10090 (tail!10090 input!5745)) (t!372428 (t!372428 testedP!265))))))

(declare-fun b!5124584 () Bool)

(assert (=> b!5124584 (= e!3195944 (tail!10090 input!5745))))

(assert (= (and d!1657223 c!880858) b!5124583))

(assert (= (and d!1657223 (not c!880858)) b!5124584))

(declare-fun m!6187442 () Bool)

(assert (=> d!1657223 m!6187442))

(assert (=> d!1657223 m!6186314))

(assert (=> d!1657223 m!6186880))

(assert (=> d!1657223 m!6186672))

(assert (=> b!5124583 m!6186314))

(assert (=> b!5124583 m!6186876))

(assert (=> b!5124583 m!6186876))

(declare-fun m!6187452 () Bool)

(assert (=> b!5124583 m!6187452))

(assert (=> b!5123988 d!1657223))

(assert (=> b!5123988 d!1656929))

(declare-fun d!1657225 () Bool)

(declare-fun lt!2113008 () Int)

(assert (=> d!1657225 (>= lt!2113008 0)))

(declare-fun e!3195945 () Int)

(assert (=> d!1657225 (= lt!2113008 e!3195945)))

(declare-fun c!880859 () Bool)

(assert (=> d!1657225 (= c!880859 ((_ is Nil!59281) (t!372428 knownP!20)))))

(assert (=> d!1657225 (= (size!39545 (t!372428 knownP!20)) lt!2113008)))

(declare-fun b!5124585 () Bool)

(assert (=> b!5124585 (= e!3195945 0)))

(declare-fun b!5124586 () Bool)

(assert (=> b!5124586 (= e!3195945 (+ 1 (size!39545 (t!372428 (t!372428 knownP!20)))))))

(assert (= (and d!1657225 c!880859) b!5124585))

(assert (= (and d!1657225 (not c!880859)) b!5124586))

(declare-fun m!6187456 () Bool)

(assert (=> b!5124586 m!6187456))

(assert (=> b!5124188 d!1657225))

(declare-fun bs!1193616 () Bool)

(declare-fun d!1657229 () Bool)

(assert (= bs!1193616 (and d!1657229 d!1657073)))

(declare-fun lambda!251681 () Int)

(assert (=> bs!1193616 (not (= lambda!251681 lambda!251661))))

(declare-fun bs!1193617 () Bool)

(assert (= bs!1193617 (and d!1657229 b!5124223)))

(assert (=> bs!1193617 (not (= lambda!251681 lambda!251637))))

(declare-fun bs!1193618 () Bool)

(assert (= bs!1193618 (and d!1657229 b!5124224)))

(assert (=> bs!1193618 (not (= lambda!251681 lambda!251638))))

(declare-fun bs!1193619 () Bool)

(assert (= bs!1193619 (and d!1657229 d!1656883)))

(assert (=> bs!1193619 (not (= lambda!251681 lambda!251642))))

(declare-fun bs!1193620 () Bool)

(assert (= bs!1193620 (and d!1657229 d!1657091)))

(assert (=> bs!1193620 (not (= lambda!251681 lambda!251672))))

(declare-fun bs!1193621 () Bool)

(assert (= bs!1193621 (and d!1657229 d!1656869)))

(assert (=> bs!1193621 (not (= lambda!251681 lambda!251636))))

(declare-fun bs!1193622 () Bool)

(assert (= bs!1193622 (and d!1657229 d!1657169)))

(assert (=> bs!1193622 (not (= lambda!251681 lambda!251680))))

(declare-fun bs!1193623 () Bool)

(assert (= bs!1193623 (and d!1657229 d!1657059)))

(assert (=> bs!1193623 (= lambda!251681 lambda!251657)))

(assert (=> d!1657229 (= (nullableZipper!1036 lt!2112764) (exists!1493 lt!2112764 lambda!251681))))

(declare-fun bs!1193624 () Bool)

(assert (= bs!1193624 d!1657229))

(declare-fun m!6187466 () Bool)

(assert (=> bs!1193624 m!6187466))

(assert (=> b!5124205 d!1657229))

(declare-fun d!1657233 () Bool)

(declare-fun lt!2113010 () Int)

(assert (=> d!1657233 (>= lt!2113010 0)))

(declare-fun e!3195949 () Int)

(assert (=> d!1657233 (= lt!2113010 e!3195949)))

(declare-fun c!880860 () Bool)

(assert (=> d!1657233 (= c!880860 ((_ is Nil!59281) (t!372428 input!5745)))))

(assert (=> d!1657233 (= (size!39545 (t!372428 input!5745)) lt!2113010)))

(declare-fun b!5124591 () Bool)

(assert (=> b!5124591 (= e!3195949 0)))

(declare-fun b!5124592 () Bool)

(assert (=> b!5124592 (= e!3195949 (+ 1 (size!39545 (t!372428 (t!372428 input!5745)))))))

(assert (= (and d!1657233 c!880860) b!5124591))

(assert (= (and d!1657233 (not c!880860)) b!5124592))

(declare-fun m!6187468 () Bool)

(assert (=> b!5124592 m!6187468))

(assert (=> b!5124180 d!1657233))

(declare-fun d!1657235 () Bool)

(declare-fun lt!2113011 () Int)

(assert (=> d!1657235 (>= lt!2113011 0)))

(declare-fun e!3195950 () Int)

(assert (=> d!1657235 (= lt!2113011 e!3195950)))

(declare-fun c!880861 () Bool)

(assert (=> d!1657235 (= c!880861 ((_ is Nil!59281) lt!2112877))))

(assert (=> d!1657235 (= (size!39545 lt!2112877) lt!2113011)))

(declare-fun b!5124593 () Bool)

(assert (=> b!5124593 (= e!3195950 0)))

(declare-fun b!5124594 () Bool)

(assert (=> b!5124594 (= e!3195950 (+ 1 (size!39545 (t!372428 lt!2112877))))))

(assert (= (and d!1657235 c!880861) b!5124593))

(assert (= (and d!1657235 (not c!880861)) b!5124594))

(declare-fun m!6187470 () Bool)

(assert (=> b!5124594 m!6187470))

(assert (=> b!5124177 d!1657235))

(assert (=> b!5124177 d!1656833))

(declare-fun d!1657239 () Bool)

(declare-fun lt!2113012 () Int)

(assert (=> d!1657239 (>= lt!2113012 0)))

(declare-fun e!3195951 () Int)

(assert (=> d!1657239 (= lt!2113012 e!3195951)))

(declare-fun c!880862 () Bool)

(assert (=> d!1657239 (= c!880862 ((_ is Nil!59281) lt!2112752))))

(assert (=> d!1657239 (= (size!39545 lt!2112752) lt!2113012)))

(declare-fun b!5124595 () Bool)

(assert (=> b!5124595 (= e!3195951 0)))

(declare-fun b!5124596 () Bool)

(assert (=> b!5124596 (= e!3195951 (+ 1 (size!39545 (t!372428 lt!2112752))))))

(assert (= (and d!1657239 c!880862) b!5124595))

(assert (= (and d!1657239 (not c!880862)) b!5124596))

(declare-fun m!6187472 () Bool)

(assert (=> b!5124596 m!6187472))

(assert (=> b!5124177 d!1657239))

(declare-fun d!1657241 () Bool)

(declare-fun c!880863 () Bool)

(assert (=> d!1657241 (= c!880863 ((_ is Nil!59281) lt!2112885))))

(declare-fun e!3195952 () (InoxSet C!28744))

(assert (=> d!1657241 (= (content!10545 lt!2112885) e!3195952)))

(declare-fun b!5124597 () Bool)

(assert (=> b!5124597 (= e!3195952 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124598 () Bool)

(assert (=> b!5124598 (= e!3195952 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112885) true) (content!10545 (t!372428 lt!2112885))))))

(assert (= (and d!1657241 c!880863) b!5124597))

(assert (= (and d!1657241 (not c!880863)) b!5124598))

(declare-fun m!6187474 () Bool)

(assert (=> b!5124598 m!6187474))

(declare-fun m!6187476 () Bool)

(assert (=> b!5124598 m!6187476))

(assert (=> d!1656839 d!1657241))

(assert (=> d!1656839 d!1656967))

(declare-fun d!1657243 () Bool)

(declare-fun c!880864 () Bool)

(assert (=> d!1657243 (= c!880864 ((_ is Nil!59281) lt!2112749))))

(declare-fun e!3195953 () (InoxSet C!28744))

(assert (=> d!1657243 (= (content!10545 lt!2112749) e!3195953)))

(declare-fun b!5124599 () Bool)

(assert (=> b!5124599 (= e!3195953 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124600 () Bool)

(assert (=> b!5124600 (= e!3195953 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112749) true) (content!10545 (t!372428 lt!2112749))))))

(assert (= (and d!1657243 c!880864) b!5124599))

(assert (= (and d!1657243 (not c!880864)) b!5124600))

(declare-fun m!6187478 () Bool)

(assert (=> b!5124600 m!6187478))

(declare-fun m!6187480 () Bool)

(assert (=> b!5124600 m!6187480))

(assert (=> d!1656839 d!1657243))

(declare-fun d!1657245 () Bool)

(declare-fun lt!2113013 () List!59405)

(assert (=> d!1657245 (= (++!13052 (t!372428 lt!2112766) lt!2113013) (tail!10090 knownP!20))))

(declare-fun e!3195954 () List!59405)

(assert (=> d!1657245 (= lt!2113013 e!3195954)))

(declare-fun c!880865 () Bool)

(assert (=> d!1657245 (= c!880865 ((_ is Cons!59281) (t!372428 lt!2112766)))))

(assert (=> d!1657245 (>= (size!39545 (tail!10090 knownP!20)) (size!39545 (t!372428 lt!2112766)))))

(assert (=> d!1657245 (= (getSuffix!3316 (tail!10090 knownP!20) (t!372428 lt!2112766)) lt!2113013)))

(declare-fun b!5124601 () Bool)

(assert (=> b!5124601 (= e!3195954 (getSuffix!3316 (tail!10090 (tail!10090 knownP!20)) (t!372428 (t!372428 lt!2112766))))))

(declare-fun b!5124602 () Bool)

(assert (=> b!5124602 (= e!3195954 (tail!10090 knownP!20))))

(assert (= (and d!1657245 c!880865) b!5124601))

(assert (= (and d!1657245 (not c!880865)) b!5124602))

(declare-fun m!6187482 () Bool)

(assert (=> d!1657245 m!6187482))

(assert (=> d!1657245 m!6186336))

(assert (=> d!1657245 m!6187078))

(assert (=> d!1657245 m!6186638))

(assert (=> b!5124601 m!6186336))

(assert (=> b!5124601 m!6187060))

(assert (=> b!5124601 m!6187060))

(declare-fun m!6187484 () Bool)

(assert (=> b!5124601 m!6187484))

(assert (=> b!5124147 d!1657245))

(assert (=> b!5124147 d!1657025))

(assert (=> d!1656803 d!1656823))

(assert (=> d!1656803 d!1656725))

(declare-fun b!5124606 () Bool)

(declare-fun lt!2113014 () List!59405)

(declare-fun e!3195956 () Bool)

(assert (=> b!5124606 (= e!3195956 (or (not (= (Cons!59281 lt!2112765 Nil!59281) Nil!59281)) (= lt!2113014 testedP!265)))))

(declare-fun b!5124603 () Bool)

(declare-fun e!3195955 () List!59405)

(assert (=> b!5124603 (= e!3195955 (Cons!59281 lt!2112765 Nil!59281))))

(declare-fun d!1657247 () Bool)

(assert (=> d!1657247 e!3195956))

(declare-fun res!2182107 () Bool)

(assert (=> d!1657247 (=> (not res!2182107) (not e!3195956))))

(assert (=> d!1657247 (= res!2182107 (= (content!10545 lt!2113014) ((_ map or) (content!10545 testedP!265) (content!10545 (Cons!59281 lt!2112765 Nil!59281)))))))

(assert (=> d!1657247 (= lt!2113014 e!3195955)))

(declare-fun c!880866 () Bool)

(assert (=> d!1657247 (= c!880866 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1657247 (= (++!13052 testedP!265 (Cons!59281 lt!2112765 Nil!59281)) lt!2113014)))

(declare-fun b!5124605 () Bool)

(declare-fun res!2182106 () Bool)

(assert (=> b!5124605 (=> (not res!2182106) (not e!3195956))))

(assert (=> b!5124605 (= res!2182106 (= (size!39545 lt!2113014) (+ (size!39545 testedP!265) (size!39545 (Cons!59281 lt!2112765 Nil!59281)))))))

(declare-fun b!5124604 () Bool)

(assert (=> b!5124604 (= e!3195955 (Cons!59281 (h!65729 testedP!265) (++!13052 (t!372428 testedP!265) (Cons!59281 lt!2112765 Nil!59281))))))

(assert (= (and d!1657247 c!880866) b!5124603))

(assert (= (and d!1657247 (not c!880866)) b!5124604))

(assert (= (and d!1657247 res!2182107) b!5124605))

(assert (= (and b!5124605 res!2182106) b!5124606))

(declare-fun m!6187486 () Bool)

(assert (=> d!1657247 m!6187486))

(assert (=> d!1657247 m!6186348))

(declare-fun m!6187488 () Bool)

(assert (=> d!1657247 m!6187488))

(declare-fun m!6187490 () Bool)

(assert (=> b!5124605 m!6187490))

(assert (=> b!5124605 m!6186224))

(declare-fun m!6187492 () Bool)

(assert (=> b!5124605 m!6187492))

(declare-fun m!6187494 () Bool)

(assert (=> b!5124604 m!6187494))

(assert (=> d!1656803 d!1657247))

(declare-fun d!1657249 () Bool)

(declare-fun c!880867 () Bool)

(assert (=> d!1657249 (= c!880867 ((_ is Cons!59281) (++!13052 testedP!265 (Cons!59281 lt!2112765 Nil!59281))))))

(declare-fun e!3195957 () (InoxSet Context!7246))

(assert (=> d!1657249 (= (derivationZipper!136 baseZ!46 (++!13052 testedP!265 (Cons!59281 lt!2112765 Nil!59281))) e!3195957)))

(declare-fun b!5124607 () Bool)

(assert (=> b!5124607 (= e!3195957 (derivationZipper!136 (derivationStepZipper!862 baseZ!46 (h!65729 (++!13052 testedP!265 (Cons!59281 lt!2112765 Nil!59281)))) (t!372428 (++!13052 testedP!265 (Cons!59281 lt!2112765 Nil!59281)))))))

(declare-fun b!5124608 () Bool)

(assert (=> b!5124608 (= e!3195957 baseZ!46)))

(assert (= (and d!1657249 c!880867) b!5124607))

(assert (= (and d!1657249 (not c!880867)) b!5124608))

(declare-fun m!6187496 () Bool)

(assert (=> b!5124607 m!6187496))

(assert (=> b!5124607 m!6187496))

(declare-fun m!6187498 () Bool)

(assert (=> b!5124607 m!6187498))

(assert (=> d!1656803 d!1657249))

(declare-fun d!1657251 () Bool)

(assert (=> d!1657251 (= (derivationZipper!136 baseZ!46 (++!13052 testedP!265 (Cons!59281 lt!2112765 Nil!59281))) (derivationStepZipper!862 z!4463 lt!2112765))))

(assert (=> d!1657251 true))

(declare-fun _$83!254 () Unit!150425)

(assert (=> d!1657251 (= (choose!37698 baseZ!46 z!4463 testedP!265 lt!2112765) _$83!254)))

(declare-fun bs!1193625 () Bool)

(assert (= bs!1193625 d!1657251))

(assert (=> bs!1193625 m!6186588))

(assert (=> bs!1193625 m!6186588))

(assert (=> bs!1193625 m!6186590))

(assert (=> bs!1193625 m!6186254))

(assert (=> d!1656803 d!1657251))

(declare-fun d!1657253 () Bool)

(declare-fun e!3195961 () Bool)

(assert (=> d!1657253 e!3195961))

(declare-fun res!2182108 () Bool)

(assert (=> d!1657253 (=> res!2182108 e!3195961)))

(declare-fun lt!2113017 () Bool)

(assert (=> d!1657253 (= res!2182108 (not lt!2113017))))

(declare-fun e!3195962 () Bool)

(assert (=> d!1657253 (= lt!2113017 e!3195962)))

(declare-fun res!2182109 () Bool)

(assert (=> d!1657253 (=> res!2182109 e!3195962)))

(assert (=> d!1657253 (= res!2182109 ((_ is Nil!59281) (tail!10090 lt!2112766)))))

(assert (=> d!1657253 (= (isPrefix!5644 (tail!10090 lt!2112766) (tail!10090 knownP!20)) lt!2113017)))

(declare-fun b!5124613 () Bool)

(declare-fun e!3195960 () Bool)

(assert (=> b!5124613 (= e!3195962 e!3195960)))

(declare-fun res!2182111 () Bool)

(assert (=> b!5124613 (=> (not res!2182111) (not e!3195960))))

(assert (=> b!5124613 (= res!2182111 (not ((_ is Nil!59281) (tail!10090 knownP!20))))))

(declare-fun b!5124614 () Bool)

(declare-fun res!2182110 () Bool)

(assert (=> b!5124614 (=> (not res!2182110) (not e!3195960))))

(assert (=> b!5124614 (= res!2182110 (= (head!10955 (tail!10090 lt!2112766)) (head!10955 (tail!10090 knownP!20))))))

(declare-fun b!5124615 () Bool)

(assert (=> b!5124615 (= e!3195960 (isPrefix!5644 (tail!10090 (tail!10090 lt!2112766)) (tail!10090 (tail!10090 knownP!20))))))

(declare-fun b!5124616 () Bool)

(assert (=> b!5124616 (= e!3195961 (>= (size!39545 (tail!10090 knownP!20)) (size!39545 (tail!10090 lt!2112766))))))

(assert (= (and d!1657253 (not res!2182109)) b!5124613))

(assert (= (and b!5124613 res!2182111) b!5124614))

(assert (= (and b!5124614 res!2182110) b!5124615))

(assert (= (and d!1657253 (not res!2182108)) b!5124616))

(assert (=> b!5124614 m!6186334))

(assert (=> b!5124614 m!6187156))

(assert (=> b!5124614 m!6186336))

(assert (=> b!5124614 m!6187056))

(assert (=> b!5124615 m!6186334))

(assert (=> b!5124615 m!6187158))

(assert (=> b!5124615 m!6186336))

(assert (=> b!5124615 m!6187060))

(assert (=> b!5124615 m!6187158))

(assert (=> b!5124615 m!6187060))

(declare-fun m!6187500 () Bool)

(assert (=> b!5124615 m!6187500))

(assert (=> b!5124616 m!6186336))

(assert (=> b!5124616 m!6187078))

(assert (=> b!5124616 m!6186334))

(assert (=> b!5124616 m!6187168))

(assert (=> b!5124012 d!1657253))

(assert (=> b!5124012 d!1657067))

(assert (=> b!5124012 d!1657025))

(declare-fun b!5124620 () Bool)

(declare-fun e!3195964 () Bool)

(declare-fun lt!2113018 () List!59405)

(assert (=> b!5124620 (= e!3195964 (or (not (= lt!2112748 Nil!59281)) (= lt!2113018 (++!13052 testedP!265 lt!2112768))))))

(declare-fun b!5124617 () Bool)

(declare-fun e!3195963 () List!59405)

(assert (=> b!5124617 (= e!3195963 lt!2112748)))

(declare-fun d!1657255 () Bool)

(assert (=> d!1657255 e!3195964))

(declare-fun res!2182113 () Bool)

(assert (=> d!1657255 (=> (not res!2182113) (not e!3195964))))

(assert (=> d!1657255 (= res!2182113 (= (content!10545 lt!2113018) ((_ map or) (content!10545 (++!13052 testedP!265 lt!2112768)) (content!10545 lt!2112748))))))

(assert (=> d!1657255 (= lt!2113018 e!3195963)))

(declare-fun c!880877 () Bool)

(assert (=> d!1657255 (= c!880877 ((_ is Nil!59281) (++!13052 testedP!265 lt!2112768)))))

(assert (=> d!1657255 (= (++!13052 (++!13052 testedP!265 lt!2112768) lt!2112748) lt!2113018)))

(declare-fun b!5124619 () Bool)

(declare-fun res!2182112 () Bool)

(assert (=> b!5124619 (=> (not res!2182112) (not e!3195964))))

(assert (=> b!5124619 (= res!2182112 (= (size!39545 lt!2113018) (+ (size!39545 (++!13052 testedP!265 lt!2112768)) (size!39545 lt!2112748))))))

(declare-fun b!5124618 () Bool)

(assert (=> b!5124618 (= e!3195963 (Cons!59281 (h!65729 (++!13052 testedP!265 lt!2112768)) (++!13052 (t!372428 (++!13052 testedP!265 lt!2112768)) lt!2112748)))))

(assert (= (and d!1657255 c!880877) b!5124617))

(assert (= (and d!1657255 (not c!880877)) b!5124618))

(assert (= (and d!1657255 res!2182113) b!5124619))

(assert (= (and b!5124619 res!2182112) b!5124620))

(declare-fun m!6187502 () Bool)

(assert (=> d!1657255 m!6187502))

(assert (=> d!1657255 m!6186250))

(declare-fun m!6187504 () Bool)

(assert (=> d!1657255 m!6187504))

(assert (=> d!1657255 m!6186664))

(declare-fun m!6187506 () Bool)

(assert (=> b!5124619 m!6187506))

(assert (=> b!5124619 m!6186250))

(declare-fun m!6187508 () Bool)

(assert (=> b!5124619 m!6187508))

(assert (=> b!5124619 m!6186668))

(declare-fun m!6187510 () Bool)

(assert (=> b!5124618 m!6187510))

(assert (=> d!1656843 d!1657255))

(assert (=> d!1656843 d!1656841))

(declare-fun d!1657257 () Bool)

(assert (=> d!1657257 (= (++!13052 (++!13052 testedP!265 lt!2112768) lt!2112748) (++!13052 testedP!265 (++!13052 lt!2112768 lt!2112748)))))

(assert (=> d!1657257 true))

(declare-fun _$52!2372 () Unit!150425)

(assert (=> d!1657257 (= (choose!37702 testedP!265 lt!2112768 lt!2112748) _$52!2372)))

(declare-fun bs!1193626 () Bool)

(assert (= bs!1193626 d!1657257))

(assert (=> bs!1193626 m!6186250))

(assert (=> bs!1193626 m!6186250))

(assert (=> bs!1193626 m!6186698))

(assert (=> bs!1193626 m!6186220))

(assert (=> bs!1193626 m!6186220))

(assert (=> bs!1193626 m!6186696))

(assert (=> d!1656843 d!1657257))

(assert (=> d!1656843 d!1656717))

(declare-fun b!5124626 () Bool)

(declare-fun e!3195967 () Bool)

(declare-fun lt!2113020 () List!59405)

(assert (=> b!5124626 (= e!3195967 (or (not (= (++!13052 lt!2112768 lt!2112748) Nil!59281)) (= lt!2113020 testedP!265)))))

(declare-fun b!5124623 () Bool)

(declare-fun e!3195966 () List!59405)

(assert (=> b!5124623 (= e!3195966 (++!13052 lt!2112768 lt!2112748))))

(declare-fun d!1657259 () Bool)

(assert (=> d!1657259 e!3195967))

(declare-fun res!2182115 () Bool)

(assert (=> d!1657259 (=> (not res!2182115) (not e!3195967))))

(assert (=> d!1657259 (= res!2182115 (= (content!10545 lt!2113020) ((_ map or) (content!10545 testedP!265) (content!10545 (++!13052 lt!2112768 lt!2112748)))))))

(assert (=> d!1657259 (= lt!2113020 e!3195966)))

(declare-fun c!880879 () Bool)

(assert (=> d!1657259 (= c!880879 ((_ is Nil!59281) testedP!265))))

(assert (=> d!1657259 (= (++!13052 testedP!265 (++!13052 lt!2112768 lt!2112748)) lt!2113020)))

(declare-fun b!5124625 () Bool)

(declare-fun res!2182114 () Bool)

(assert (=> b!5124625 (=> (not res!2182114) (not e!3195967))))

(assert (=> b!5124625 (= res!2182114 (= (size!39545 lt!2113020) (+ (size!39545 testedP!265) (size!39545 (++!13052 lt!2112768 lt!2112748)))))))

(declare-fun b!5124624 () Bool)

(assert (=> b!5124624 (= e!3195966 (Cons!59281 (h!65729 testedP!265) (++!13052 (t!372428 testedP!265) (++!13052 lt!2112768 lt!2112748))))))

(assert (= (and d!1657259 c!880879) b!5124623))

(assert (= (and d!1657259 (not c!880879)) b!5124624))

(assert (= (and d!1657259 res!2182115) b!5124625))

(assert (= (and b!5124625 res!2182114) b!5124626))

(declare-fun m!6187512 () Bool)

(assert (=> d!1657259 m!6187512))

(assert (=> d!1657259 m!6186348))

(assert (=> d!1657259 m!6186220))

(declare-fun m!6187514 () Bool)

(assert (=> d!1657259 m!6187514))

(declare-fun m!6187516 () Bool)

(assert (=> b!5124625 m!6187516))

(assert (=> b!5124625 m!6186224))

(assert (=> b!5124625 m!6186220))

(declare-fun m!6187518 () Bool)

(assert (=> b!5124625 m!6187518))

(assert (=> b!5124624 m!6186220))

(declare-fun m!6187520 () Bool)

(assert (=> b!5124624 m!6187520))

(assert (=> d!1656843 d!1657259))

(declare-fun d!1657261 () Bool)

(declare-fun lt!2113021 () Int)

(assert (=> d!1657261 (>= lt!2113021 0)))

(declare-fun e!3195968 () Int)

(assert (=> d!1657261 (= lt!2113021 e!3195968)))

(declare-fun c!880880 () Bool)

(assert (=> d!1657261 (= c!880880 ((_ is Nil!59281) lt!2112888))))

(assert (=> d!1657261 (= (size!39545 lt!2112888) lt!2113021)))

(declare-fun b!5124627 () Bool)

(assert (=> b!5124627 (= e!3195968 0)))

(declare-fun b!5124628 () Bool)

(assert (=> b!5124628 (= e!3195968 (+ 1 (size!39545 (t!372428 lt!2112888))))))

(assert (= (and d!1657261 c!880880) b!5124627))

(assert (= (and d!1657261 (not c!880880)) b!5124628))

(declare-fun m!6187522 () Bool)

(assert (=> b!5124628 m!6187522))

(assert (=> b!5124199 d!1657261))

(declare-fun d!1657263 () Bool)

(declare-fun lt!2113022 () Int)

(assert (=> d!1657263 (>= lt!2113022 0)))

(declare-fun e!3195969 () Int)

(assert (=> d!1657263 (= lt!2113022 e!3195969)))

(declare-fun c!880881 () Bool)

(assert (=> d!1657263 (= c!880881 ((_ is Nil!59281) lt!2112772))))

(assert (=> d!1657263 (= (size!39545 lt!2112772) lt!2113022)))

(declare-fun b!5124629 () Bool)

(assert (=> b!5124629 (= e!3195969 0)))

(declare-fun b!5124630 () Bool)

(assert (=> b!5124630 (= e!3195969 (+ 1 (size!39545 (t!372428 lt!2112772))))))

(assert (= (and d!1657263 c!880881) b!5124629))

(assert (= (and d!1657263 (not c!880881)) b!5124630))

(assert (=> b!5124630 m!6187108))

(assert (=> b!5124199 d!1657263))

(assert (=> b!5124199 d!1656909))

(assert (=> b!5124152 d!1656829))

(assert (=> b!5124152 d!1656835))

(declare-fun lt!2113023 () List!59405)

(declare-fun e!3195971 () Bool)

(declare-fun b!5124634 () Bool)

(assert (=> b!5124634 (= e!3195971 (or (not (= lt!2112802 Nil!59281)) (= lt!2113023 knownP!20)))))

(declare-fun b!5124631 () Bool)

(declare-fun e!3195970 () List!59405)

(assert (=> b!5124631 (= e!3195970 lt!2112802)))

(declare-fun d!1657265 () Bool)

(assert (=> d!1657265 e!3195971))

(declare-fun res!2182117 () Bool)

(assert (=> d!1657265 (=> (not res!2182117) (not e!3195971))))

(assert (=> d!1657265 (= res!2182117 (= (content!10545 lt!2113023) ((_ map or) (content!10545 knownP!20) (content!10545 lt!2112802))))))

(assert (=> d!1657265 (= lt!2113023 e!3195970)))

(declare-fun c!880882 () Bool)

(assert (=> d!1657265 (= c!880882 ((_ is Nil!59281) knownP!20))))

(assert (=> d!1657265 (= (++!13052 knownP!20 lt!2112802) lt!2113023)))

(declare-fun b!5124633 () Bool)

(declare-fun res!2182116 () Bool)

(assert (=> b!5124633 (=> (not res!2182116) (not e!3195971))))

(assert (=> b!5124633 (= res!2182116 (= (size!39545 lt!2113023) (+ (size!39545 knownP!20) (size!39545 lt!2112802))))))

(declare-fun b!5124632 () Bool)

(assert (=> b!5124632 (= e!3195970 (Cons!59281 (h!65729 knownP!20) (++!13052 (t!372428 knownP!20) lt!2112802)))))

(assert (= (and d!1657265 c!880882) b!5124631))

(assert (= (and d!1657265 (not c!880882)) b!5124632))

(assert (= (and d!1657265 res!2182117) b!5124633))

(assert (= (and b!5124633 res!2182116) b!5124634))

(declare-fun m!6187532 () Bool)

(assert (=> d!1657265 m!6187532))

(assert (=> d!1657265 m!6186320))

(declare-fun m!6187534 () Bool)

(assert (=> d!1657265 m!6187534))

(declare-fun m!6187536 () Bool)

(assert (=> b!5124633 m!6187536))

(assert (=> b!5124633 m!6186226))

(declare-fun m!6187538 () Bool)

(assert (=> b!5124633 m!6187538))

(declare-fun m!6187540 () Bool)

(assert (=> b!5124632 m!6187540))

(assert (=> d!1656721 d!1657265))

(assert (=> d!1656721 d!1656829))

(assert (=> d!1656721 d!1656835))

(declare-fun d!1657269 () Bool)

(assert (=> d!1657269 (= (isEmpty!31952 lt!2112753) ((_ is Nil!59281) lt!2112753))))

(assert (=> d!1656855 d!1657269))

(declare-fun d!1657271 () Bool)

(declare-fun c!880883 () Bool)

(assert (=> d!1657271 (= c!880883 ((_ is Nil!59281) lt!2112798))))

(declare-fun e!3195972 () (InoxSet C!28744))

(assert (=> d!1657271 (= (content!10545 lt!2112798) e!3195972)))

(declare-fun b!5124635 () Bool)

(assert (=> b!5124635 (= e!3195972 ((as const (Array C!28744 Bool)) false))))

(declare-fun b!5124636 () Bool)

(assert (=> b!5124636 (= e!3195972 ((_ map or) (store ((as const (Array C!28744 Bool)) false) (h!65729 lt!2112798) true) (content!10545 (t!372428 lt!2112798))))))

(assert (= (and d!1657271 c!880883) b!5124635))

(assert (= (and d!1657271 (not c!880883)) b!5124636))

(declare-fun m!6187542 () Bool)

(assert (=> b!5124636 m!6187542))

(declare-fun m!6187544 () Bool)

(assert (=> b!5124636 m!6187544))

(assert (=> d!1656717 d!1657271))

(assert (=> d!1656717 d!1656967))

(assert (=> d!1656717 d!1656991))

(declare-fun d!1657273 () Bool)

(declare-fun c!880884 () Bool)

(assert (=> d!1657273 (= c!880884 (isEmpty!31952 (tail!10090 lt!2112753)))))

(declare-fun e!3195973 () Bool)

(assert (=> d!1657273 (= (matchZipper!907 (derivationStepZipper!862 z!4463 (head!10955 lt!2112753)) (tail!10090 lt!2112753)) e!3195973)))

(declare-fun b!5124637 () Bool)

(assert (=> b!5124637 (= e!3195973 (nullableZipper!1036 (derivationStepZipper!862 z!4463 (head!10955 lt!2112753))))))

(declare-fun b!5124638 () Bool)

(assert (=> b!5124638 (= e!3195973 (matchZipper!907 (derivationStepZipper!862 (derivationStepZipper!862 z!4463 (head!10955 lt!2112753)) (head!10955 (tail!10090 lt!2112753))) (tail!10090 (tail!10090 lt!2112753))))))

(assert (= (and d!1657273 c!880884) b!5124637))

(assert (= (and d!1657273 (not c!880884)) b!5124638))

(assert (=> d!1657273 m!6186210))

(declare-fun m!6187546 () Bool)

(assert (=> d!1657273 m!6187546))

(assert (=> b!5124637 m!6186734))

(declare-fun m!6187548 () Bool)

(assert (=> b!5124637 m!6187548))

(assert (=> b!5124638 m!6186210))

(declare-fun m!6187550 () Bool)

(assert (=> b!5124638 m!6187550))

(assert (=> b!5124638 m!6186734))

(assert (=> b!5124638 m!6187550))

(declare-fun m!6187552 () Bool)

(assert (=> b!5124638 m!6187552))

(assert (=> b!5124638 m!6186210))

(declare-fun m!6187554 () Bool)

(assert (=> b!5124638 m!6187554))

(assert (=> b!5124638 m!6187552))

(assert (=> b!5124638 m!6187554))

(declare-fun m!6187556 () Bool)

(assert (=> b!5124638 m!6187556))

(assert (=> b!5124208 d!1657273))

(declare-fun bs!1193635 () Bool)

(declare-fun d!1657275 () Bool)

(assert (= bs!1193635 (and d!1657275 d!1656977)))

(declare-fun lambda!251689 () Int)

(assert (=> bs!1193635 (= (= (head!10955 lt!2112753) (head!10955 lt!2112748)) (= lambda!251689 lambda!251647))))

(declare-fun bs!1193636 () Bool)

(assert (= bs!1193636 (and d!1657275 d!1657021)))

(assert (=> bs!1193636 (= (= (head!10955 lt!2112753) (head!10955 knownP!20)) (= lambda!251689 lambda!251650))))

(declare-fun bs!1193637 () Bool)

(assert (= bs!1193637 (and d!1657275 d!1656939)))

(assert (=> bs!1193637 (= (= (head!10955 lt!2112753) (h!65729 testedP!265)) (= lambda!251689 lambda!251646))))

(declare-fun bs!1193638 () Bool)

(assert (= bs!1193638 (and d!1657275 d!1657161)))

(assert (=> bs!1193638 (= (= (head!10955 lt!2112753) (h!65729 lt!2112766)) (= lambda!251689 lambda!251677))))

(declare-fun bs!1193639 () Bool)

(assert (= bs!1193639 (and d!1657275 d!1656725)))

(assert (=> bs!1193639 (= (= (head!10955 lt!2112753) lt!2112765) (= lambda!251689 lambda!251619))))

(assert (=> d!1657275 true))

(assert (=> d!1657275 (= (derivationStepZipper!862 z!4463 (head!10955 lt!2112753)) (flatMap!366 z!4463 lambda!251689))))

(declare-fun bs!1193640 () Bool)

(assert (= bs!1193640 d!1657275))

(declare-fun m!6187558 () Bool)

(assert (=> bs!1193640 m!6187558))

(assert (=> b!5124208 d!1657275))

(assert (=> b!5124208 d!1656849))

(assert (=> b!5124208 d!1656865))

(declare-fun d!1657277 () Bool)

(declare-fun lt!2113027 () Int)

(assert (=> d!1657277 (>= lt!2113027 0)))

(declare-fun e!3195974 () Int)

(assert (=> d!1657277 (= lt!2113027 e!3195974)))

(declare-fun c!880885 () Bool)

(assert (=> d!1657277 (= c!880885 ((_ is Nil!59281) lt!2112879))))

(assert (=> d!1657277 (= (size!39545 lt!2112879) lt!2113027)))

(declare-fun b!5124639 () Bool)

(assert (=> b!5124639 (= e!3195974 0)))

(declare-fun b!5124640 () Bool)

(assert (=> b!5124640 (= e!3195974 (+ 1 (size!39545 (t!372428 lt!2112879))))))

(assert (= (and d!1657277 c!880885) b!5124639))

(assert (= (and d!1657277 (not c!880885)) b!5124640))

(declare-fun m!6187564 () Bool)

(assert (=> b!5124640 m!6187564))

(assert (=> b!5124183 d!1657277))

(assert (=> b!5124183 d!1656819))

(assert (=> b!5124183 d!1657155))

(declare-fun d!1657281 () Bool)

(declare-fun lt!2113028 () Int)

(assert (=> d!1657281 (>= lt!2113028 0)))

(declare-fun e!3195976 () Int)

(assert (=> d!1657281 (= lt!2113028 e!3195976)))

(declare-fun c!880887 () Bool)

(assert (=> d!1657281 (= c!880887 ((_ is Nil!59281) lt!2112870))))

(assert (=> d!1657281 (= (size!39545 lt!2112870) lt!2113028)))

(declare-fun b!5124643 () Bool)

(assert (=> b!5124643 (= e!3195976 0)))

(declare-fun b!5124644 () Bool)

(assert (=> b!5124644 (= e!3195976 (+ 1 (size!39545 (t!372428 lt!2112870))))))

(assert (= (and d!1657281 c!880887) b!5124643))

(assert (= (and d!1657281 (not c!880887)) b!5124644))

(declare-fun m!6187566 () Bool)

(assert (=> b!5124644 m!6187566))

(assert (=> b!5124165 d!1657281))

(declare-fun d!1657285 () Bool)

(declare-fun lt!2113029 () Int)

(assert (=> d!1657285 (>= lt!2113029 0)))

(declare-fun e!3195977 () Int)

(assert (=> d!1657285 (= lt!2113029 e!3195977)))

(declare-fun c!880888 () Bool)

(assert (=> d!1657285 (= c!880888 ((_ is Nil!59281) lt!2112753))))

(assert (=> d!1657285 (= (size!39545 lt!2112753) lt!2113029)))

(declare-fun b!5124645 () Bool)

(assert (=> b!5124645 (= e!3195977 0)))

(declare-fun b!5124646 () Bool)

(assert (=> b!5124646 (= e!3195977 (+ 1 (size!39545 (t!372428 lt!2112753))))))

(assert (= (and d!1657285 c!880888) b!5124645))

(assert (= (and d!1657285 (not c!880888)) b!5124646))

(assert (=> b!5124646 m!6187128))

(assert (=> b!5124165 d!1657285))

(assert (=> b!5124165 d!1656909))

(assert (=> d!1656861 d!1656859))

(declare-fun d!1657289 () Bool)

(assert (=> d!1657289 (isPrefix!5644 testedP!265 knownP!20)))

(assert (=> d!1657289 true))

(declare-fun _$69!376 () Unit!150425)

(assert (=> d!1657289 (= (choose!37696 knownP!20 testedP!265 input!5745) _$69!376)))

(declare-fun bs!1193642 () Bool)

(assert (= bs!1193642 d!1657289))

(assert (=> bs!1193642 m!6186232))

(assert (=> d!1656861 d!1657289))

(assert (=> d!1656861 d!1656809))

(declare-fun bs!1193643 () Bool)

(declare-fun d!1657293 () Bool)

(assert (= bs!1193643 (and d!1657293 d!1657073)))

(declare-fun lambda!251690 () Int)

(assert (=> bs!1193643 (not (= lambda!251690 lambda!251661))))

(declare-fun bs!1193644 () Bool)

(assert (= bs!1193644 (and d!1657293 b!5124223)))

(assert (=> bs!1193644 (not (= lambda!251690 lambda!251637))))

(declare-fun bs!1193645 () Bool)

(assert (= bs!1193645 (and d!1657293 b!5124224)))

(assert (=> bs!1193645 (not (= lambda!251690 lambda!251638))))

(declare-fun bs!1193646 () Bool)

(assert (= bs!1193646 (and d!1657293 d!1656883)))

(assert (=> bs!1193646 (not (= lambda!251690 lambda!251642))))

(declare-fun bs!1193647 () Bool)

(assert (= bs!1193647 (and d!1657293 d!1657091)))

(assert (=> bs!1193647 (not (= lambda!251690 lambda!251672))))

(declare-fun bs!1193648 () Bool)

(assert (= bs!1193648 (and d!1657293 d!1656869)))

(assert (=> bs!1193648 (not (= lambda!251690 lambda!251636))))

(declare-fun bs!1193649 () Bool)

(assert (= bs!1193649 (and d!1657293 d!1657169)))

(assert (=> bs!1193649 (not (= lambda!251690 lambda!251680))))

(declare-fun bs!1193650 () Bool)

(assert (= bs!1193650 (and d!1657293 d!1657059)))

(assert (=> bs!1193650 (= lambda!251690 lambda!251657)))

(declare-fun bs!1193651 () Bool)

(assert (= bs!1193651 (and d!1657293 d!1657229)))

(assert (=> bs!1193651 (= lambda!251690 lambda!251681)))

(assert (=> d!1657293 (= (nullableZipper!1036 baseZ!46) (exists!1493 baseZ!46 lambda!251690))))

(declare-fun bs!1193652 () Bool)

(assert (= bs!1193652 d!1657293))

(declare-fun m!6187588 () Bool)

(assert (=> bs!1193652 m!6187588))

(assert (=> b!5124157 d!1657293))

(assert (=> b!5124150 d!1656949))

(assert (=> b!5124150 d!1656901))

(declare-fun d!1657301 () Bool)

(declare-fun lt!2113033 () Int)

(assert (=> d!1657301 (>= lt!2113033 0)))

(declare-fun e!3195982 () Int)

(assert (=> d!1657301 (= lt!2113033 e!3195982)))

(declare-fun c!880893 () Bool)

(assert (=> d!1657301 (= c!880893 ((_ is Nil!59281) lt!2112889))))

(assert (=> d!1657301 (= (size!39545 lt!2112889) lt!2113033)))

(declare-fun b!5124655 () Bool)

(assert (=> b!5124655 (= e!3195982 0)))

(declare-fun b!5124656 () Bool)

(assert (=> b!5124656 (= e!3195982 (+ 1 (size!39545 (t!372428 lt!2112889))))))

(assert (= (and d!1657301 c!880893) b!5124655))

(assert (= (and d!1657301 (not c!880893)) b!5124656))

(declare-fun m!6187590 () Bool)

(assert (=> b!5124656 m!6187590))

(assert (=> b!5124203 d!1657301))

(assert (=> b!5124203 d!1656833))

(assert (=> b!5124203 d!1657285))

(declare-fun e!3195984 () Bool)

(declare-fun b!5124660 () Bool)

(declare-fun lt!2113034 () List!59405)

(assert (=> b!5124660 (= e!3195984 (or (not (= lt!2112867 Nil!59281)) (= lt!2113034 lt!2112766)))))

(declare-fun b!5124657 () Bool)

(declare-fun e!3195983 () List!59405)

(assert (=> b!5124657 (= e!3195983 lt!2112867)))

(declare-fun d!1657303 () Bool)

(assert (=> d!1657303 e!3195984))

(declare-fun res!2182119 () Bool)

(assert (=> d!1657303 (=> (not res!2182119) (not e!3195984))))

(assert (=> d!1657303 (= res!2182119 (= (content!10545 lt!2113034) ((_ map or) (content!10545 lt!2112766) (content!10545 lt!2112867))))))

(assert (=> d!1657303 (= lt!2113034 e!3195983)))

(declare-fun c!880894 () Bool)

(assert (=> d!1657303 (= c!880894 ((_ is Nil!59281) lt!2112766))))

(assert (=> d!1657303 (= (++!13052 lt!2112766 lt!2112867) lt!2113034)))

(declare-fun b!5124659 () Bool)

(declare-fun res!2182118 () Bool)

(assert (=> b!5124659 (=> (not res!2182118) (not e!3195984))))

(assert (=> b!5124659 (= res!2182118 (= (size!39545 lt!2113034) (+ (size!39545 lt!2112766) (size!39545 lt!2112867))))))

(declare-fun b!5124658 () Bool)

(assert (=> b!5124658 (= e!3195983 (Cons!59281 (h!65729 lt!2112766) (++!13052 (t!372428 lt!2112766) lt!2112867)))))

(assert (= (and d!1657303 c!880894) b!5124657))

(assert (= (and d!1657303 (not c!880894)) b!5124658))

(assert (= (and d!1657303 res!2182119) b!5124659))

(assert (= (and b!5124659 res!2182118) b!5124660))

(declare-fun m!6187594 () Bool)

(assert (=> d!1657303 m!6187594))

(assert (=> d!1657303 m!6186662))

(declare-fun m!6187596 () Bool)

(assert (=> d!1657303 m!6187596))

(declare-fun m!6187598 () Bool)

(assert (=> b!5124659 m!6187598))

(assert (=> b!5124659 m!6186204))

(declare-fun m!6187600 () Bool)

(assert (=> b!5124659 m!6187600))

(declare-fun m!6187602 () Bool)

(assert (=> b!5124658 m!6187602))

(assert (=> d!1656807 d!1657303))

(assert (=> d!1656807 d!1656835))

(assert (=> d!1656807 d!1656819))

(declare-fun b!5124661 () Bool)

(declare-fun e!3195985 () Bool)

(declare-fun tp!1429478 () Bool)

(assert (=> b!5124661 (= e!3195985 (and tp_is_empty!37751 tp!1429478))))

(assert (=> b!5124241 (= tp!1429474 e!3195985)))

(assert (= (and b!5124241 ((_ is Cons!59281) (t!372428 (t!372428 testedP!265)))) b!5124661))

(declare-fun b!5124662 () Bool)

(declare-fun e!3195986 () Bool)

(declare-fun tp!1429479 () Bool)

(declare-fun tp!1429480 () Bool)

(assert (=> b!5124662 (= e!3195986 (and tp!1429479 tp!1429480))))

(assert (=> b!5124234 (= tp!1429464 e!3195986)))

(assert (= (and b!5124234 ((_ is Cons!59282) (exprs!4123 setElem!30533))) b!5124662))

(declare-fun condSetEmpty!30535 () Bool)

(assert (=> setNonEmpty!30533 (= condSetEmpty!30535 (= setRest!30533 ((as const (Array Context!7246 Bool)) false)))))

(declare-fun setRes!30535 () Bool)

(assert (=> setNonEmpty!30533 (= tp!1429465 setRes!30535)))

(declare-fun setIsEmpty!30535 () Bool)

(assert (=> setIsEmpty!30535 setRes!30535))

(declare-fun e!3195987 () Bool)

(declare-fun tp!1429482 () Bool)

(declare-fun setNonEmpty!30535 () Bool)

(declare-fun setElem!30535 () Context!7246)

(assert (=> setNonEmpty!30535 (= setRes!30535 (and tp!1429482 (inv!78778 setElem!30535) e!3195987))))

(declare-fun setRest!30535 () (InoxSet Context!7246))

(assert (=> setNonEmpty!30535 (= setRest!30533 ((_ map or) (store ((as const (Array Context!7246 Bool)) false) setElem!30535 true) setRest!30535))))

(declare-fun b!5124663 () Bool)

(declare-fun tp!1429481 () Bool)

(assert (=> b!5124663 (= e!3195987 tp!1429481)))

(assert (= (and setNonEmpty!30533 condSetEmpty!30535) setIsEmpty!30535))

(assert (= (and setNonEmpty!30533 (not condSetEmpty!30535)) setNonEmpty!30535))

(assert (= setNonEmpty!30535 b!5124663))

(declare-fun m!6187604 () Bool)

(assert (=> setNonEmpty!30535 m!6187604))

(declare-fun b!5124679 () Bool)

(declare-fun e!3195993 () Bool)

(declare-fun tp!1429497 () Bool)

(assert (=> b!5124679 (= e!3195993 tp!1429497)))

(declare-fun b!5124680 () Bool)

(declare-fun tp!1429493 () Bool)

(declare-fun tp!1429495 () Bool)

(assert (=> b!5124680 (= e!3195993 (and tp!1429493 tp!1429495))))

(declare-fun b!5124678 () Bool)

(declare-fun tp!1429494 () Bool)

(declare-fun tp!1429496 () Bool)

(assert (=> b!5124678 (= e!3195993 (and tp!1429494 tp!1429496))))

(declare-fun b!5124677 () Bool)

(assert (=> b!5124677 (= e!3195993 tp_is_empty!37751)))

(assert (=> b!5124239 (= tp!1429470 e!3195993)))

(assert (= (and b!5124239 ((_ is ElementMatch!14239) (h!65730 (exprs!4123 setElem!30526)))) b!5124677))

(assert (= (and b!5124239 ((_ is Concat!23084) (h!65730 (exprs!4123 setElem!30526)))) b!5124678))

(assert (= (and b!5124239 ((_ is Star!14239) (h!65730 (exprs!4123 setElem!30526)))) b!5124679))

(assert (= (and b!5124239 ((_ is Union!14239) (h!65730 (exprs!4123 setElem!30526)))) b!5124680))

(declare-fun b!5124681 () Bool)

(declare-fun e!3195994 () Bool)

(declare-fun tp!1429498 () Bool)

(declare-fun tp!1429499 () Bool)

(assert (=> b!5124681 (= e!3195994 (and tp!1429498 tp!1429499))))

(assert (=> b!5124239 (= tp!1429471 e!3195994)))

(assert (= (and b!5124239 ((_ is Cons!59282) (t!372429 (exprs!4123 setElem!30526)))) b!5124681))

(declare-fun b!5124682 () Bool)

(declare-fun e!3195995 () Bool)

(declare-fun tp!1429500 () Bool)

(assert (=> b!5124682 (= e!3195995 (and tp_is_empty!37751 tp!1429500))))

(assert (=> b!5124242 (= tp!1429475 e!3195995)))

(assert (= (and b!5124242 ((_ is Cons!59281) (t!372428 (t!372428 knownP!20)))) b!5124682))

(declare-fun b!5124683 () Bool)

(declare-fun e!3195996 () Bool)

(declare-fun tp!1429501 () Bool)

(declare-fun tp!1429502 () Bool)

(assert (=> b!5124683 (= e!3195996 (and tp!1429501 tp!1429502))))

(assert (=> b!5124243 (= tp!1429476 e!3195996)))

(assert (= (and b!5124243 ((_ is Cons!59282) (exprs!4123 setElem!30534))) b!5124683))

(declare-fun b!5124686 () Bool)

(declare-fun e!3195997 () Bool)

(declare-fun tp!1429507 () Bool)

(assert (=> b!5124686 (= e!3195997 tp!1429507)))

(declare-fun b!5124687 () Bool)

(declare-fun tp!1429503 () Bool)

(declare-fun tp!1429505 () Bool)

(assert (=> b!5124687 (= e!3195997 (and tp!1429503 tp!1429505))))

(declare-fun b!5124685 () Bool)

(declare-fun tp!1429504 () Bool)

(declare-fun tp!1429506 () Bool)

(assert (=> b!5124685 (= e!3195997 (and tp!1429504 tp!1429506))))

(declare-fun b!5124684 () Bool)

(assert (=> b!5124684 (= e!3195997 tp_is_empty!37751)))

(assert (=> b!5124240 (= tp!1429472 e!3195997)))

(assert (= (and b!5124240 ((_ is ElementMatch!14239) (h!65730 (exprs!4123 setElem!30525)))) b!5124684))

(assert (= (and b!5124240 ((_ is Concat!23084) (h!65730 (exprs!4123 setElem!30525)))) b!5124685))

(assert (= (and b!5124240 ((_ is Star!14239) (h!65730 (exprs!4123 setElem!30525)))) b!5124686))

(assert (= (and b!5124240 ((_ is Union!14239) (h!65730 (exprs!4123 setElem!30525)))) b!5124687))

(declare-fun b!5124692 () Bool)

(declare-fun e!3196001 () Bool)

(declare-fun tp!1429508 () Bool)

(declare-fun tp!1429509 () Bool)

(assert (=> b!5124692 (= e!3196001 (and tp!1429508 tp!1429509))))

(assert (=> b!5124240 (= tp!1429473 e!3196001)))

(assert (= (and b!5124240 ((_ is Cons!59282) (t!372429 (exprs!4123 setElem!30525)))) b!5124692))

(declare-fun condSetEmpty!30536 () Bool)

(assert (=> setNonEmpty!30534 (= condSetEmpty!30536 (= setRest!30534 ((as const (Array Context!7246 Bool)) false)))))

(declare-fun setRes!30536 () Bool)

(assert (=> setNonEmpty!30534 (= tp!1429477 setRes!30536)))

(declare-fun setIsEmpty!30536 () Bool)

(assert (=> setIsEmpty!30536 setRes!30536))

(declare-fun setElem!30536 () Context!7246)

(declare-fun setNonEmpty!30536 () Bool)

(declare-fun tp!1429511 () Bool)

(declare-fun e!3196002 () Bool)

(assert (=> setNonEmpty!30536 (= setRes!30536 (and tp!1429511 (inv!78778 setElem!30536) e!3196002))))

(declare-fun setRest!30536 () (InoxSet Context!7246))

(assert (=> setNonEmpty!30536 (= setRest!30534 ((_ map or) (store ((as const (Array Context!7246 Bool)) false) setElem!30536 true) setRest!30536))))

(declare-fun b!5124693 () Bool)

(declare-fun tp!1429510 () Bool)

(assert (=> b!5124693 (= e!3196002 tp!1429510)))

(assert (= (and setNonEmpty!30534 condSetEmpty!30536) setIsEmpty!30536))

(assert (= (and setNonEmpty!30534 (not condSetEmpty!30536)) setNonEmpty!30536))

(assert (= setNonEmpty!30536 b!5124693))

(declare-fun m!6187614 () Bool)

(assert (=> setNonEmpty!30536 m!6187614))

(declare-fun b!5124694 () Bool)

(declare-fun e!3196003 () Bool)

(declare-fun tp!1429512 () Bool)

(assert (=> b!5124694 (= e!3196003 (and tp_is_empty!37751 tp!1429512))))

(assert (=> b!5124229 (= tp!1429459 e!3196003)))

(assert (= (and b!5124229 ((_ is Cons!59281) (t!372428 (t!372428 input!5745)))) b!5124694))

(declare-fun b_lambda!199037 () Bool)

(assert (= b_lambda!199035 (or d!1656821 b_lambda!199037)))

(declare-fun bs!1193659 () Bool)

(declare-fun d!1657321 () Bool)

(assert (= bs!1193659 (and d!1657321 d!1656821)))

(declare-fun validRegex!6214 (Regex!14239) Bool)

(assert (=> bs!1193659 (= (dynLambda!23610 lambda!251622 (h!65730 (exprs!4123 setElem!30525))) (validRegex!6214 (h!65730 (exprs!4123 setElem!30525))))))

(declare-fun m!6187616 () Bool)

(assert (=> bs!1193659 m!6187616))

(assert (=> b!5124313 d!1657321))

(declare-fun b_lambda!199039 () Bool)

(assert (= b_lambda!199033 (or d!1656827 b_lambda!199039)))

(declare-fun bs!1193660 () Bool)

(declare-fun d!1657323 () Bool)

(assert (= bs!1193660 (and d!1657323 d!1656827)))

(assert (=> bs!1193660 (= (dynLambda!23610 lambda!251623 (h!65730 (exprs!4123 setElem!30526))) (validRegex!6214 (h!65730 (exprs!4123 setElem!30526))))))

(declare-fun m!6187618 () Bool)

(assert (=> bs!1193660 m!6187618))

(assert (=> b!5124250 d!1657323))

(check-sat (not b!5124402) (not b!5124285) (not b!5124399) (not b!5124307) (not b!5124618) (not b!5124560) (not b!5124276) (not b!5124380) (not b!5124430) (not d!1657213) (not b!5124512) (not d!1657091) (not b!5124520) (not b!5124598) (not b!5124534) (not b!5124330) (not d!1656913) (not b_lambda!199037) (not d!1657015) (not b!5124314) (not d!1656897) (not d!1657021) (not b!5124270) tp_is_empty!37751 (not b!5124336) (not b!5124561) (not b!5124284) (not b!5124377) (not b!5124386) (not b!5124279) (not b!5124644) (not b!5124619) (not b!5124418) (not b!5124369) (not d!1657061) (not b!5124604) (not b!5124586) (not b!5124624) (not b!5124678) (not d!1657247) (not d!1657039) (not d!1657191) (not b!5124340) (not d!1656923) (not b!5124411) (not d!1657031) (not d!1657205) (not b!5124376) (not b!5124513) (not b!5124292) (not b!5124637) (not d!1657033) (not b!5124264) (not d!1657255) (not b!5124556) (not b!5124679) (not b!5124567) (not b!5124268) (not b!5124433) (not b!5124394) (not b!5124288) (not b!5124289) (not b!5124628) (not b!5124656) (not b!5124388) (not d!1656919) (not b!5124536) (not b!5124601) (not d!1656931) (not b!5124630) (not b!5124422) (not b!5124540) (not b!5124514) (not b!5124663) (not d!1656939) (not b!5124577) (not b!5124358) (not b!5124416) (not d!1657273) (not d!1657257) (not b!5124278) (not d!1657199) (not b!5124638) (not d!1657123) (not b!5124693) (not b!5124274) (not b!5124575) (not b!5124521) (not b!5124607) (not d!1657059) (not b!5124594) (not b!5124632) (not b!5124410) (not b!5124681) (not b!5124570) (not d!1657245) (not d!1657045) (not b!5124614) (not setNonEmpty!30536) (not b!5124339) (not b!5124356) (not b!5124694) (not b!5124398) (not b!5124596) (not b!5124431) (not b!5124640) (not d!1657293) (not b!5124251) (not b!5124662) (not b!5124378) (not bs!1193659) (not d!1657275) (not b!5124633) (not b!5124572) (not d!1657265) (not b!5124583) (not b!5124692) (not b!5124518) (not d!1657259) (not d!1656977) (not b!5124414) (not d!1657217) (not d!1657169) (not b!5124406) (not d!1656883) (not b!5124300) (not b!5124348) (not b!5124352) (not bs!1193660) (not d!1656911) (not b!5124682) (not b!5124306) (not b!5124334) (not b!5124680) (not b!5124625) (not b!5124661) (not d!1657001) (not b!5124272) (not b!5124293) (not d!1657289) (not b!5124685) (not b!5124304) (not b!5124636) (not b!5124592) (not d!1657229) (not b!5124659) (not b!5124605) (not b!5124387) (not b!5124616) (not setNonEmpty!30535) (not b!5124551) (not b!5124403) (not b!5124420) (not d!1656985) (not d!1656973) (not b!5124294) (not b!5124407) (not d!1657303) (not b!5124615) (not d!1657139) (not b!5124687) (not b!5124646) (not b!5124301) (not b!5124432) (not b!5124574) (not b!5124550) (not b!5124395) (not d!1657161) (not b!5124538) (not b!5124600) (not b!5124544) (not b!5124542) (not d!1656891) (not b_lambda!199039) (not b!5124263) (not d!1657073) (not d!1657223) (not b!5124510) (not b!5124686) (not b!5124368) (not b!5124379) (not b!5124683) (not d!1657071) (not b!5124658) (not d!1656893) (not b!5124566) (not d!1657037) (not d!1657251) (not b!5124483) (not d!1657009))
(check-sat)
