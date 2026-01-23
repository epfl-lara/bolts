; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540504 () Bool)

(assert start!540504)

(declare-fun tp!1428671 () Bool)

(declare-fun setRes!30400 () Bool)

(declare-fun e!3193766 () Bool)

(declare-datatypes ((C!28716 0))(
  ( (C!28717 (val!24010 Int)) )
))
(declare-datatypes ((Regex!14225 0))(
  ( (ElementMatch!14225 (c!880003 C!28716)) (Concat!23070 (regOne!28962 Regex!14225) (regTwo!28962 Regex!14225)) (EmptyExpr!14225) (Star!14225 (reg!14554 Regex!14225)) (EmptyLang!14225) (Union!14225 (regOne!28963 Regex!14225) (regTwo!28963 Regex!14225)) )
))
(declare-datatypes ((List!59371 0))(
  ( (Nil!59247) (Cons!59247 (h!65695 Regex!14225) (t!372390 List!59371)) )
))
(declare-datatypes ((Context!7218 0))(
  ( (Context!7219 (exprs!4109 List!59371)) )
))
(declare-fun setElem!30399 () Context!7218)

(declare-fun setNonEmpty!30399 () Bool)

(declare-fun inv!78743 (Context!7218) Bool)

(assert (=> setNonEmpty!30399 (= setRes!30400 (and tp!1428671 (inv!78743 setElem!30399) e!3193766))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!46 () (InoxSet Context!7218))

(declare-fun setRest!30400 () (InoxSet Context!7218))

(assert (=> setNonEmpty!30399 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7218 Bool)) false) setElem!30399 true) setRest!30400))))

(declare-fun b!5120928 () Bool)

(declare-fun res!2180495 () Bool)

(declare-fun e!3193764 () Bool)

(assert (=> b!5120928 (=> res!2180495 e!3193764)))

(declare-fun z!4463 () (InoxSet Context!7218))

(declare-fun lostCauseZipper!1107 ((InoxSet Context!7218)) Bool)

(assert (=> b!5120928 (= res!2180495 (lostCauseZipper!1107 z!4463))))

(declare-fun res!2180492 () Bool)

(declare-fun e!3193767 () Bool)

(assert (=> start!540504 (=> (not res!2180492) (not e!3193767))))

(declare-datatypes ((List!59372 0))(
  ( (Nil!59248) (Cons!59248 (h!65696 C!28716) (t!372391 List!59372)) )
))
(declare-fun testedP!265 () List!59372)

(declare-fun input!5745 () List!59372)

(declare-fun isPrefix!5630 (List!59372 List!59372) Bool)

(assert (=> start!540504 (= res!2180492 (isPrefix!5630 testedP!265 input!5745))))

(assert (=> start!540504 e!3193767))

(declare-fun e!3193770 () Bool)

(assert (=> start!540504 e!3193770))

(declare-fun condSetEmpty!30399 () Bool)

(assert (=> start!540504 (= condSetEmpty!30399 (= z!4463 ((as const (Array Context!7218 Bool)) false)))))

(declare-fun setRes!30399 () Bool)

(assert (=> start!540504 setRes!30399))

(declare-fun e!3193765 () Bool)

(assert (=> start!540504 e!3193765))

(declare-fun condSetEmpty!30400 () Bool)

(assert (=> start!540504 (= condSetEmpty!30400 (= baseZ!46 ((as const (Array Context!7218 Bool)) false)))))

(assert (=> start!540504 setRes!30400))

(declare-fun e!3193768 () Bool)

(assert (=> start!540504 e!3193768))

(declare-fun setIsEmpty!30399 () Bool)

(assert (=> setIsEmpty!30399 setRes!30400))

(declare-fun b!5120929 () Bool)

(declare-fun e!3193771 () Bool)

(assert (=> b!5120929 (= e!3193771 (not e!3193764))))

(declare-fun res!2180497 () Bool)

(assert (=> b!5120929 (=> res!2180497 e!3193764)))

(declare-fun knownP!20 () List!59372)

(declare-fun matchZipper!893 ((InoxSet Context!7218) List!59372) Bool)

(declare-fun getSuffix!3302 (List!59372 List!59372) List!59372)

(assert (=> b!5120929 (= res!2180497 (not (matchZipper!893 z!4463 (getSuffix!3302 knownP!20 testedP!265))))))

(assert (=> b!5120929 (isPrefix!5630 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150385 0))(
  ( (Unit!150386) )
))
(declare-fun lt!2111170 () Unit!150385)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!765 (List!59372 List!59372 List!59372) Unit!150385)

(assert (=> b!5120929 (= lt!2111170 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!765 knownP!20 testedP!265 input!5745))))

(declare-fun b!5120930 () Bool)

(declare-fun tp_is_empty!37723 () Bool)

(declare-fun tp!1428673 () Bool)

(assert (=> b!5120930 (= e!3193765 (and tp_is_empty!37723 tp!1428673))))

(declare-fun b!5120931 () Bool)

(declare-fun res!2180493 () Bool)

(assert (=> b!5120931 (=> res!2180493 e!3193764)))

(declare-fun lt!2111165 () Int)

(declare-fun lt!2111167 () Int)

(assert (=> b!5120931 (= res!2180493 (= lt!2111165 lt!2111167))))

(declare-fun b!5120932 () Bool)

(assert (=> b!5120932 (= e!3193767 e!3193771)))

(declare-fun res!2180491 () Bool)

(assert (=> b!5120932 (=> (not res!2180491) (not e!3193771))))

(assert (=> b!5120932 (= res!2180491 (>= lt!2111167 lt!2111165))))

(declare-fun size!39531 (List!59372) Int)

(assert (=> b!5120932 (= lt!2111165 (size!39531 testedP!265))))

(assert (=> b!5120932 (= lt!2111167 (size!39531 knownP!20))))

(declare-fun b!5120933 () Bool)

(declare-fun tp!1428672 () Bool)

(assert (=> b!5120933 (= e!3193770 (and tp_is_empty!37723 tp!1428672))))

(declare-fun b!5120934 () Bool)

(assert (=> b!5120934 (= e!3193764 (<= lt!2111165 lt!2111167))))

(declare-fun lt!2111166 () C!28716)

(declare-fun lt!2111168 () List!59372)

(declare-fun derivationZipper!122 ((InoxSet Context!7218) List!59372) (InoxSet Context!7218))

(declare-fun derivationStepZipper!848 ((InoxSet Context!7218) C!28716) (InoxSet Context!7218))

(assert (=> b!5120934 (= (derivationZipper!122 baseZ!46 lt!2111168) (derivationStepZipper!848 z!4463 lt!2111166))))

(declare-fun lt!2111164 () Unit!150385)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!69 ((InoxSet Context!7218) (InoxSet Context!7218) List!59372 C!28716) Unit!150385)

(assert (=> b!5120934 (= lt!2111164 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!69 baseZ!46 z!4463 testedP!265 lt!2111166))))

(assert (=> b!5120934 (isPrefix!5630 lt!2111168 input!5745)))

(declare-fun lt!2111169 () Unit!150385)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1004 (List!59372 List!59372) Unit!150385)

(assert (=> b!5120934 (= lt!2111169 (lemmaAddHeadSuffixToPrefixStillPrefix!1004 testedP!265 input!5745))))

(declare-fun ++!13038 (List!59372 List!59372) List!59372)

(assert (=> b!5120934 (= lt!2111168 (++!13038 testedP!265 (Cons!59248 lt!2111166 Nil!59248)))))

(declare-fun head!10941 (List!59372) C!28716)

(assert (=> b!5120934 (= lt!2111166 (head!10941 (getSuffix!3302 input!5745 testedP!265)))))

(declare-fun b!5120935 () Bool)

(declare-fun res!2180496 () Bool)

(assert (=> b!5120935 (=> res!2180496 e!3193764)))

(assert (=> b!5120935 (= res!2180496 (>= lt!2111165 (size!39531 input!5745)))))

(declare-fun b!5120936 () Bool)

(declare-fun res!2180494 () Bool)

(assert (=> b!5120936 (=> res!2180494 e!3193764)))

(assert (=> b!5120936 (= res!2180494 (not (= (derivationZipper!122 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5120937 () Bool)

(declare-fun tp!1428670 () Bool)

(assert (=> b!5120937 (= e!3193768 (and tp_is_empty!37723 tp!1428670))))

(declare-fun setIsEmpty!30400 () Bool)

(assert (=> setIsEmpty!30400 setRes!30399))

(declare-fun b!5120938 () Bool)

(declare-fun res!2180490 () Bool)

(assert (=> b!5120938 (=> (not res!2180490) (not e!3193767))))

(assert (=> b!5120938 (= res!2180490 (isPrefix!5630 knownP!20 input!5745))))

(declare-fun b!5120939 () Bool)

(declare-fun res!2180498 () Bool)

(assert (=> b!5120939 (=> (not res!2180498) (not e!3193771))))

(assert (=> b!5120939 (= res!2180498 (matchZipper!893 baseZ!46 knownP!20))))

(declare-fun setElem!30400 () Context!7218)

(declare-fun tp!1428667 () Bool)

(declare-fun setNonEmpty!30400 () Bool)

(declare-fun e!3193769 () Bool)

(assert (=> setNonEmpty!30400 (= setRes!30399 (and tp!1428667 (inv!78743 setElem!30400) e!3193769))))

(declare-fun setRest!30399 () (InoxSet Context!7218))

(assert (=> setNonEmpty!30400 (= z!4463 ((_ map or) (store ((as const (Array Context!7218 Bool)) false) setElem!30400 true) setRest!30399))))

(declare-fun b!5120940 () Bool)

(declare-fun tp!1428669 () Bool)

(assert (=> b!5120940 (= e!3193766 tp!1428669)))

(declare-fun b!5120941 () Bool)

(declare-fun tp!1428668 () Bool)

(assert (=> b!5120941 (= e!3193769 tp!1428668)))

(assert (= (and start!540504 res!2180492) b!5120938))

(assert (= (and b!5120938 res!2180490) b!5120932))

(assert (= (and b!5120932 res!2180491) b!5120939))

(assert (= (and b!5120939 res!2180498) b!5120929))

(assert (= (and b!5120929 (not res!2180497)) b!5120936))

(assert (= (and b!5120936 (not res!2180494)) b!5120928))

(assert (= (and b!5120928 (not res!2180495)) b!5120931))

(assert (= (and b!5120931 (not res!2180493)) b!5120935))

(assert (= (and b!5120935 (not res!2180496)) b!5120934))

(get-info :version)

(assert (= (and start!540504 ((_ is Cons!59248) input!5745)) b!5120933))

(assert (= (and start!540504 condSetEmpty!30399) setIsEmpty!30400))

(assert (= (and start!540504 (not condSetEmpty!30399)) setNonEmpty!30400))

(assert (= setNonEmpty!30400 b!5120941))

(assert (= (and start!540504 ((_ is Cons!59248) testedP!265)) b!5120930))

(assert (= (and start!540504 condSetEmpty!30400) setIsEmpty!30399))

(assert (= (and start!540504 (not condSetEmpty!30400)) setNonEmpty!30399))

(assert (= setNonEmpty!30399 b!5120940))

(assert (= (and start!540504 ((_ is Cons!59248) knownP!20)) b!5120937))

(declare-fun m!6181918 () Bool)

(assert (=> b!5120938 m!6181918))

(declare-fun m!6181920 () Bool)

(assert (=> b!5120934 m!6181920))

(assert (=> b!5120934 m!6181920))

(declare-fun m!6181922 () Bool)

(assert (=> b!5120934 m!6181922))

(declare-fun m!6181924 () Bool)

(assert (=> b!5120934 m!6181924))

(declare-fun m!6181926 () Bool)

(assert (=> b!5120934 m!6181926))

(declare-fun m!6181928 () Bool)

(assert (=> b!5120934 m!6181928))

(declare-fun m!6181930 () Bool)

(assert (=> b!5120934 m!6181930))

(declare-fun m!6181932 () Bool)

(assert (=> b!5120934 m!6181932))

(declare-fun m!6181934 () Bool)

(assert (=> b!5120934 m!6181934))

(declare-fun m!6181936 () Bool)

(assert (=> b!5120939 m!6181936))

(declare-fun m!6181938 () Bool)

(assert (=> start!540504 m!6181938))

(declare-fun m!6181940 () Bool)

(assert (=> b!5120936 m!6181940))

(declare-fun m!6181942 () Bool)

(assert (=> b!5120932 m!6181942))

(declare-fun m!6181944 () Bool)

(assert (=> b!5120932 m!6181944))

(declare-fun m!6181946 () Bool)

(assert (=> b!5120928 m!6181946))

(declare-fun m!6181948 () Bool)

(assert (=> setNonEmpty!30399 m!6181948))

(declare-fun m!6181950 () Bool)

(assert (=> setNonEmpty!30400 m!6181950))

(declare-fun m!6181952 () Bool)

(assert (=> b!5120935 m!6181952))

(declare-fun m!6181954 () Bool)

(assert (=> b!5120929 m!6181954))

(assert (=> b!5120929 m!6181954))

(declare-fun m!6181956 () Bool)

(assert (=> b!5120929 m!6181956))

(declare-fun m!6181958 () Bool)

(assert (=> b!5120929 m!6181958))

(declare-fun m!6181960 () Bool)

(assert (=> b!5120929 m!6181960))

(check-sat (not b!5120932) (not b!5120933) (not setNonEmpty!30399) (not b!5120940) (not b!5120934) tp_is_empty!37723 (not b!5120941) (not b!5120938) (not start!540504) (not b!5120936) (not b!5120928) (not setNonEmpty!30400) (not b!5120937) (not b!5120935) (not b!5120930) (not b!5120939) (not b!5120929))
(check-sat)
