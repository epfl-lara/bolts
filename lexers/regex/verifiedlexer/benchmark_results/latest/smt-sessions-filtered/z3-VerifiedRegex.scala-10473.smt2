; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540764 () Bool)

(assert start!540764)

(declare-fun b!5122970 () Bool)

(declare-fun res!2181511 () Bool)

(declare-fun e!3195022 () Bool)

(assert (=> b!5122970 (=> res!2181511 e!3195022)))

(declare-fun lt!2112330 () Int)

(declare-fun lt!2112325 () Int)

(assert (=> b!5122970 (= res!2181511 (= lt!2112330 lt!2112325))))

(declare-fun b!5122971 () Bool)

(declare-fun e!3195015 () Bool)

(declare-fun tp!1429281 () Bool)

(assert (=> b!5122971 (= e!3195015 tp!1429281)))

(declare-fun b!5122972 () Bool)

(declare-fun e!3195027 () Bool)

(declare-fun e!3195016 () Bool)

(assert (=> b!5122972 (= e!3195027 e!3195016)))

(declare-fun res!2181502 () Bool)

(assert (=> b!5122972 (=> (not res!2181502) (not e!3195016))))

(assert (=> b!5122972 (= res!2181502 (>= lt!2112325 lt!2112330))))

(declare-datatypes ((C!28740 0))(
  ( (C!28741 (val!24022 Int)) )
))
(declare-datatypes ((List!59399 0))(
  ( (Nil!59275) (Cons!59275 (h!65723 C!28740) (t!372420 List!59399)) )
))
(declare-fun testedP!265 () List!59399)

(declare-fun size!39543 (List!59399) Int)

(assert (=> b!5122972 (= lt!2112330 (size!39543 testedP!265))))

(declare-fun knownP!20 () List!59399)

(assert (=> b!5122972 (= lt!2112325 (size!39543 knownP!20))))

(declare-fun b!5122973 () Bool)

(declare-fun res!2181503 () Bool)

(declare-fun e!3195025 () Bool)

(assert (=> b!5122973 (=> res!2181503 e!3195025)))

(declare-fun input!5745 () List!59399)

(declare-fun lt!2112331 () List!59399)

(declare-fun ++!13050 (List!59399 List!59399) List!59399)

(assert (=> b!5122973 (= res!2181503 (not (= (++!13050 testedP!265 lt!2112331) input!5745)))))

(declare-datatypes ((Regex!14237 0))(
  ( (ElementMatch!14237 (c!880369 C!28740)) (Concat!23082 (regOne!28986 Regex!14237) (regTwo!28986 Regex!14237)) (EmptyExpr!14237) (Star!14237 (reg!14566 Regex!14237)) (EmptyLang!14237) (Union!14237 (regOne!28987 Regex!14237) (regTwo!28987 Regex!14237)) )
))
(declare-datatypes ((List!59400 0))(
  ( (Nil!59276) (Cons!59276 (h!65724 Regex!14237) (t!372421 List!59400)) )
))
(declare-datatypes ((Context!7242 0))(
  ( (Context!7243 (exprs!4121 List!59400)) )
))
(declare-fun setElem!30502 () Context!7242)

(declare-fun setRes!30501 () Bool)

(declare-fun tp!1429277 () Bool)

(declare-fun e!3195024 () Bool)

(declare-fun setNonEmpty!30501 () Bool)

(declare-fun inv!78773 (Context!7242) Bool)

(assert (=> setNonEmpty!30501 (= setRes!30501 (and tp!1429277 (inv!78773 setElem!30502) e!3195024))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!46 () (InoxSet Context!7242))

(declare-fun setRest!30501 () (InoxSet Context!7242))

(assert (=> setNonEmpty!30501 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7242 Bool)) false) setElem!30502 true) setRest!30501))))

(declare-fun res!2181509 () Bool)

(assert (=> start!540764 (=> (not res!2181509) (not e!3195027))))

(declare-fun isPrefix!5642 (List!59399 List!59399) Bool)

(assert (=> start!540764 (= res!2181509 (isPrefix!5642 testedP!265 input!5745))))

(assert (=> start!540764 e!3195027))

(declare-fun e!3195014 () Bool)

(assert (=> start!540764 e!3195014))

(declare-fun condSetEmpty!30502 () Bool)

(declare-fun z!4463 () (InoxSet Context!7242))

(assert (=> start!540764 (= condSetEmpty!30502 (= z!4463 ((as const (Array Context!7242 Bool)) false)))))

(declare-fun setRes!30502 () Bool)

(assert (=> start!540764 setRes!30502))

(declare-fun e!3195021 () Bool)

(assert (=> start!540764 e!3195021))

(declare-fun condSetEmpty!30501 () Bool)

(assert (=> start!540764 (= condSetEmpty!30501 (= baseZ!46 ((as const (Array Context!7242 Bool)) false)))))

(assert (=> start!540764 setRes!30501))

(declare-fun e!3195026 () Bool)

(assert (=> start!540764 e!3195026))

(declare-fun b!5122974 () Bool)

(declare-fun res!2181508 () Bool)

(declare-fun e!3195023 () Bool)

(assert (=> b!5122974 (=> res!2181508 e!3195023)))

(declare-fun lt!2112336 () List!59399)

(assert (=> b!5122974 (= res!2181508 (not (= lt!2112336 knownP!20)))))

(declare-fun b!5122975 () Bool)

(declare-fun tp_is_empty!37747 () Bool)

(declare-fun tp!1429276 () Bool)

(assert (=> b!5122975 (= e!3195021 (and tp_is_empty!37747 tp!1429276))))

(declare-fun setIsEmpty!30501 () Bool)

(assert (=> setIsEmpty!30501 setRes!30502))

(declare-fun b!5122976 () Bool)

(declare-fun e!3195020 () Bool)

(assert (=> b!5122976 (= e!3195022 e!3195020)))

(declare-fun res!2181507 () Bool)

(assert (=> b!5122976 (=> res!2181507 e!3195020)))

(declare-fun lt!2112334 () List!59399)

(assert (=> b!5122976 (= res!2181507 (not (= (++!13050 knownP!20 lt!2112334) input!5745)))))

(declare-fun getSuffix!3314 (List!59399 List!59399) List!59399)

(assert (=> b!5122976 (= lt!2112334 (getSuffix!3314 input!5745 knownP!20))))

(declare-fun lt!2112320 () List!59399)

(declare-fun lt!2112314 () List!59399)

(assert (=> b!5122976 (= lt!2112320 (getSuffix!3314 knownP!20 lt!2112314))))

(assert (=> b!5122976 (isPrefix!5642 lt!2112314 knownP!20)))

(declare-datatypes ((Unit!150417 0))(
  ( (Unit!150418) )
))
(declare-fun lt!2112323 () Unit!150417)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!777 (List!59399 List!59399 List!59399) Unit!150417)

(assert (=> b!5122976 (= lt!2112323 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!777 knownP!20 lt!2112314 input!5745))))

(declare-fun lt!2112324 () (InoxSet Context!7242))

(declare-fun derivationZipper!134 ((InoxSet Context!7242) List!59399) (InoxSet Context!7242))

(assert (=> b!5122976 (= (derivationZipper!134 baseZ!46 lt!2112314) lt!2112324)))

(declare-fun lt!2112326 () C!28740)

(declare-fun derivationStepZipper!860 ((InoxSet Context!7242) C!28740) (InoxSet Context!7242))

(assert (=> b!5122976 (= lt!2112324 (derivationStepZipper!860 z!4463 lt!2112326))))

(declare-fun lt!2112332 () Unit!150417)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!81 ((InoxSet Context!7242) (InoxSet Context!7242) List!59399 C!28740) Unit!150417)

(assert (=> b!5122976 (= lt!2112332 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!81 baseZ!46 z!4463 testedP!265 lt!2112326))))

(assert (=> b!5122976 (isPrefix!5642 lt!2112314 input!5745)))

(declare-fun lt!2112321 () Unit!150417)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1016 (List!59399 List!59399) Unit!150417)

(assert (=> b!5122976 (= lt!2112321 (lemmaAddHeadSuffixToPrefixStillPrefix!1016 testedP!265 input!5745))))

(declare-fun lt!2112317 () List!59399)

(assert (=> b!5122976 (= lt!2112314 (++!13050 testedP!265 lt!2112317))))

(assert (=> b!5122976 (= lt!2112317 (Cons!59275 lt!2112326 Nil!59275))))

(declare-fun head!10953 (List!59399) C!28740)

(assert (=> b!5122976 (= lt!2112326 (head!10953 lt!2112331))))

(assert (=> b!5122976 (= lt!2112331 (getSuffix!3314 input!5745 testedP!265))))

(declare-fun b!5122977 () Bool)

(declare-fun tp!1429278 () Bool)

(assert (=> b!5122977 (= e!3195026 (and tp_is_empty!37747 tp!1429278))))

(declare-fun b!5122978 () Bool)

(declare-fun res!2181504 () Bool)

(declare-fun e!3195019 () Bool)

(assert (=> b!5122978 (=> res!2181504 e!3195019)))

(assert (=> b!5122978 (= res!2181504 (< lt!2112325 (size!39543 lt!2112314)))))

(declare-fun b!5122979 () Bool)

(declare-fun res!2181513 () Bool)

(assert (=> b!5122979 (=> (not res!2181513) (not e!3195016))))

(declare-fun matchZipper!905 ((InoxSet Context!7242) List!59399) Bool)

(assert (=> b!5122979 (= res!2181513 (matchZipper!905 baseZ!46 knownP!20))))

(declare-fun b!5122980 () Bool)

(declare-fun res!2181499 () Bool)

(assert (=> b!5122980 (=> res!2181499 e!3195022)))

(assert (=> b!5122980 (= res!2181499 (>= lt!2112330 (size!39543 input!5745)))))

(declare-fun setIsEmpty!30502 () Bool)

(assert (=> setIsEmpty!30502 setRes!30501))

(declare-fun b!5122981 () Bool)

(declare-fun tp!1429280 () Bool)

(assert (=> b!5122981 (= e!3195014 (and tp_is_empty!37747 tp!1429280))))

(declare-fun b!5122982 () Bool)

(declare-fun res!2181512 () Bool)

(assert (=> b!5122982 (=> res!2181512 e!3195022)))

(declare-fun lostCauseZipper!1119 ((InoxSet Context!7242)) Bool)

(assert (=> b!5122982 (= res!2181512 (lostCauseZipper!1119 z!4463))))

(declare-fun b!5122983 () Bool)

(declare-fun res!2181510 () Bool)

(assert (=> b!5122983 (=> (not res!2181510) (not e!3195027))))

(assert (=> b!5122983 (= res!2181510 (isPrefix!5642 knownP!20 input!5745))))

(declare-fun b!5122984 () Bool)

(assert (=> b!5122984 (= e!3195020 e!3195025)))

(declare-fun res!2181496 () Bool)

(assert (=> b!5122984 (=> res!2181496 e!3195025)))

(declare-fun lt!2112322 () List!59399)

(assert (=> b!5122984 (= res!2181496 (not (= lt!2112322 input!5745)))))

(assert (=> b!5122984 (= lt!2112322 (++!13050 lt!2112336 lt!2112334))))

(declare-fun lt!2112333 () List!59399)

(assert (=> b!5122984 (= lt!2112336 (++!13050 testedP!265 lt!2112333))))

(declare-fun tp!1429275 () Bool)

(declare-fun setElem!30501 () Context!7242)

(declare-fun setNonEmpty!30502 () Bool)

(assert (=> setNonEmpty!30502 (= setRes!30502 (and tp!1429275 (inv!78773 setElem!30501) e!3195015))))

(declare-fun setRest!30502 () (InoxSet Context!7242))

(assert (=> setNonEmpty!30502 (= z!4463 ((_ map or) (store ((as const (Array Context!7242 Bool)) false) setElem!30501 true) setRest!30502))))

(declare-fun b!5122985 () Bool)

(declare-fun e!3195018 () Bool)

(assert (=> b!5122985 (= e!3195018 e!3195023)))

(declare-fun res!2181501 () Bool)

(assert (=> b!5122985 (=> res!2181501 e!3195023)))

(declare-fun lt!2112313 () List!59399)

(declare-fun $colon$colon!1151 (List!59399 C!28740) List!59399)

(assert (=> b!5122985 (= res!2181501 (not (= lt!2112333 ($colon$colon!1151 lt!2112313 lt!2112326))))))

(declare-fun tail!10088 (List!59399) List!59399)

(assert (=> b!5122985 (= lt!2112313 (tail!10088 lt!2112333))))

(declare-fun b!5122986 () Bool)

(declare-fun e!3195013 () Bool)

(assert (=> b!5122986 (= e!3195023 e!3195013)))

(declare-fun res!2181514 () Bool)

(assert (=> b!5122986 (=> res!2181514 e!3195013)))

(declare-fun lt!2112315 () List!59399)

(assert (=> b!5122986 (= res!2181514 (not (= lt!2112315 knownP!20)))))

(assert (=> b!5122986 (= lt!2112315 (++!13050 lt!2112314 lt!2112320))))

(declare-fun b!5122987 () Bool)

(assert (=> b!5122987 (= e!3195013 e!3195019)))

(declare-fun res!2181497 () Bool)

(assert (=> b!5122987 (=> res!2181497 e!3195019)))

(assert (=> b!5122987 (= res!2181497 (not (= lt!2112313 lt!2112320)))))

(declare-fun lt!2112327 () List!59399)

(assert (=> b!5122987 (= lt!2112327 lt!2112333)))

(declare-fun lt!2112316 () Unit!150417)

(declare-fun lemmaSamePrefixThenSameSuffix!2660 (List!59399 List!59399 List!59399 List!59399 List!59399) Unit!150417)

(assert (=> b!5122987 (= lt!2112316 (lemmaSamePrefixThenSameSuffix!2660 testedP!265 lt!2112327 testedP!265 lt!2112333 knownP!20))))

(assert (=> b!5122987 (= lt!2112315 (++!13050 testedP!265 lt!2112327))))

(assert (=> b!5122987 (= lt!2112327 (++!13050 lt!2112317 lt!2112320))))

(declare-fun lt!2112335 () Unit!150417)

(declare-fun lemmaConcatAssociativity!2794 (List!59399 List!59399 List!59399) Unit!150417)

(assert (=> b!5122987 (= lt!2112335 (lemmaConcatAssociativity!2794 testedP!265 lt!2112317 lt!2112320))))

(declare-fun b!5122988 () Bool)

(declare-fun e!3195017 () Bool)

(assert (=> b!5122988 (= e!3195025 e!3195017)))

(declare-fun res!2181506 () Bool)

(assert (=> b!5122988 (=> res!2181506 e!3195017)))

(declare-fun lt!2112329 () List!59399)

(assert (=> b!5122988 (= res!2181506 (not (= lt!2112329 input!5745)))))

(assert (=> b!5122988 (= lt!2112322 lt!2112329)))

(declare-fun lt!2112328 () List!59399)

(assert (=> b!5122988 (= lt!2112329 (++!13050 testedP!265 lt!2112328))))

(assert (=> b!5122988 (= lt!2112328 (++!13050 lt!2112333 lt!2112334))))

(declare-fun lt!2112318 () Unit!150417)

(assert (=> b!5122988 (= lt!2112318 (lemmaConcatAssociativity!2794 testedP!265 lt!2112333 lt!2112334))))

(declare-fun b!5122989 () Bool)

(assert (=> b!5122989 (= e!3195016 (not e!3195022))))

(declare-fun res!2181498 () Bool)

(assert (=> b!5122989 (=> res!2181498 e!3195022)))

(assert (=> b!5122989 (= res!2181498 (not (matchZipper!905 z!4463 lt!2112333)))))

(assert (=> b!5122989 (= lt!2112333 (getSuffix!3314 knownP!20 testedP!265))))

(assert (=> b!5122989 (isPrefix!5642 testedP!265 knownP!20)))

(declare-fun lt!2112319 () Unit!150417)

(assert (=> b!5122989 (= lt!2112319 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!777 knownP!20 testedP!265 input!5745))))

(declare-fun b!5122990 () Bool)

(assert (=> b!5122990 (= e!3195017 e!3195018)))

(declare-fun res!2181500 () Bool)

(assert (=> b!5122990 (=> res!2181500 e!3195018)))

(assert (=> b!5122990 (= res!2181500 (not (= (head!10953 lt!2112333) lt!2112326)))))

(assert (=> b!5122990 (= lt!2112328 lt!2112331)))

(declare-fun lt!2112312 () Unit!150417)

(assert (=> b!5122990 (= lt!2112312 (lemmaSamePrefixThenSameSuffix!2660 testedP!265 lt!2112328 testedP!265 lt!2112331 input!5745))))

(declare-fun b!5122991 () Bool)

(assert (=> b!5122991 (= e!3195019 (matchZipper!905 lt!2112324 lt!2112320))))

(declare-fun b!5122992 () Bool)

(declare-fun tp!1429279 () Bool)

(assert (=> b!5122992 (= e!3195024 tp!1429279)))

(declare-fun b!5122993 () Bool)

(declare-fun res!2181505 () Bool)

(assert (=> b!5122993 (=> res!2181505 e!3195022)))

(assert (=> b!5122993 (= res!2181505 (not (= (derivationZipper!134 baseZ!46 testedP!265) z!4463)))))

(assert (= (and start!540764 res!2181509) b!5122983))

(assert (= (and b!5122983 res!2181510) b!5122972))

(assert (= (and b!5122972 res!2181502) b!5122979))

(assert (= (and b!5122979 res!2181513) b!5122989))

(assert (= (and b!5122989 (not res!2181498)) b!5122993))

(assert (= (and b!5122993 (not res!2181505)) b!5122982))

(assert (= (and b!5122982 (not res!2181512)) b!5122970))

(assert (= (and b!5122970 (not res!2181511)) b!5122980))

(assert (= (and b!5122980 (not res!2181499)) b!5122976))

(assert (= (and b!5122976 (not res!2181507)) b!5122984))

(assert (= (and b!5122984 (not res!2181496)) b!5122973))

(assert (= (and b!5122973 (not res!2181503)) b!5122988))

(assert (= (and b!5122988 (not res!2181506)) b!5122990))

(assert (= (and b!5122990 (not res!2181500)) b!5122985))

(assert (= (and b!5122985 (not res!2181501)) b!5122974))

(assert (= (and b!5122974 (not res!2181508)) b!5122986))

(assert (= (and b!5122986 (not res!2181514)) b!5122987))

(assert (= (and b!5122987 (not res!2181497)) b!5122978))

(assert (= (and b!5122978 (not res!2181504)) b!5122991))

(get-info :version)

(assert (= (and start!540764 ((_ is Cons!59275) input!5745)) b!5122981))

(assert (= (and start!540764 condSetEmpty!30502) setIsEmpty!30501))

(assert (= (and start!540764 (not condSetEmpty!30502)) setNonEmpty!30502))

(assert (= setNonEmpty!30502 b!5122971))

(assert (= (and start!540764 ((_ is Cons!59275) testedP!265)) b!5122975))

(assert (= (and start!540764 condSetEmpty!30501) setIsEmpty!30502))

(assert (= (and start!540764 (not condSetEmpty!30501)) setNonEmpty!30501))

(assert (= setNonEmpty!30501 b!5122992))

(assert (= (and start!540764 ((_ is Cons!59275) knownP!20)) b!5122977))

(declare-fun m!6184618 () Bool)

(assert (=> b!5122988 m!6184618))

(declare-fun m!6184620 () Bool)

(assert (=> b!5122988 m!6184620))

(declare-fun m!6184622 () Bool)

(assert (=> b!5122988 m!6184622))

(declare-fun m!6184624 () Bool)

(assert (=> b!5122991 m!6184624))

(declare-fun m!6184626 () Bool)

(assert (=> b!5122987 m!6184626))

(declare-fun m!6184628 () Bool)

(assert (=> b!5122987 m!6184628))

(declare-fun m!6184630 () Bool)

(assert (=> b!5122987 m!6184630))

(declare-fun m!6184632 () Bool)

(assert (=> b!5122987 m!6184632))

(declare-fun m!6184634 () Bool)

(assert (=> b!5122972 m!6184634))

(declare-fun m!6184636 () Bool)

(assert (=> b!5122972 m!6184636))

(declare-fun m!6184638 () Bool)

(assert (=> setNonEmpty!30502 m!6184638))

(declare-fun m!6184640 () Bool)

(assert (=> b!5122993 m!6184640))

(declare-fun m!6184642 () Bool)

(assert (=> b!5122984 m!6184642))

(declare-fun m!6184644 () Bool)

(assert (=> b!5122984 m!6184644))

(declare-fun m!6184646 () Bool)

(assert (=> b!5122989 m!6184646))

(declare-fun m!6184648 () Bool)

(assert (=> b!5122989 m!6184648))

(declare-fun m!6184650 () Bool)

(assert (=> b!5122989 m!6184650))

(declare-fun m!6184652 () Bool)

(assert (=> b!5122989 m!6184652))

(declare-fun m!6184654 () Bool)

(assert (=> b!5122976 m!6184654))

(declare-fun m!6184656 () Bool)

(assert (=> b!5122976 m!6184656))

(declare-fun m!6184658 () Bool)

(assert (=> b!5122976 m!6184658))

(declare-fun m!6184660 () Bool)

(assert (=> b!5122976 m!6184660))

(declare-fun m!6184662 () Bool)

(assert (=> b!5122976 m!6184662))

(declare-fun m!6184664 () Bool)

(assert (=> b!5122976 m!6184664))

(declare-fun m!6184666 () Bool)

(assert (=> b!5122976 m!6184666))

(declare-fun m!6184668 () Bool)

(assert (=> b!5122976 m!6184668))

(declare-fun m!6184670 () Bool)

(assert (=> b!5122976 m!6184670))

(declare-fun m!6184672 () Bool)

(assert (=> b!5122976 m!6184672))

(declare-fun m!6184674 () Bool)

(assert (=> b!5122976 m!6184674))

(declare-fun m!6184676 () Bool)

(assert (=> b!5122976 m!6184676))

(declare-fun m!6184678 () Bool)

(assert (=> b!5122976 m!6184678))

(declare-fun m!6184680 () Bool)

(assert (=> b!5122980 m!6184680))

(declare-fun m!6184682 () Bool)

(assert (=> b!5122990 m!6184682))

(declare-fun m!6184684 () Bool)

(assert (=> b!5122990 m!6184684))

(declare-fun m!6184686 () Bool)

(assert (=> b!5122973 m!6184686))

(declare-fun m!6184688 () Bool)

(assert (=> b!5122983 m!6184688))

(declare-fun m!6184690 () Bool)

(assert (=> b!5122979 m!6184690))

(declare-fun m!6184692 () Bool)

(assert (=> start!540764 m!6184692))

(declare-fun m!6184694 () Bool)

(assert (=> b!5122986 m!6184694))

(declare-fun m!6184696 () Bool)

(assert (=> b!5122978 m!6184696))

(declare-fun m!6184698 () Bool)

(assert (=> setNonEmpty!30501 m!6184698))

(declare-fun m!6184700 () Bool)

(assert (=> b!5122982 m!6184700))

(declare-fun m!6184702 () Bool)

(assert (=> b!5122985 m!6184702))

(declare-fun m!6184704 () Bool)

(assert (=> b!5122985 m!6184704))

(check-sat (not b!5122983) (not b!5122982) (not b!5122981) (not b!5122991) (not b!5122985) (not start!540764) (not b!5122990) (not b!5122978) (not b!5122987) (not b!5122976) (not b!5122986) (not b!5122992) (not setNonEmpty!30502) (not b!5122993) tp_is_empty!37747 (not b!5122971) (not b!5122973) (not b!5122988) (not b!5122977) (not b!5122984) (not b!5122989) (not setNonEmpty!30501) (not b!5122975) (not b!5122972) (not b!5122979) (not b!5122980))
(check-sat)
(get-model)

(declare-fun d!1656026 () Bool)

(declare-fun lt!2112342 () Int)

(assert (=> d!1656026 (>= lt!2112342 0)))

(declare-fun e!3195033 () Int)

(assert (=> d!1656026 (= lt!2112342 e!3195033)))

(declare-fun c!880375 () Bool)

(assert (=> d!1656026 (= c!880375 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656026 (= (size!39543 testedP!265) lt!2112342)))

(declare-fun b!5123004 () Bool)

(assert (=> b!5123004 (= e!3195033 0)))

(declare-fun b!5123005 () Bool)

(assert (=> b!5123005 (= e!3195033 (+ 1 (size!39543 (t!372420 testedP!265))))))

(assert (= (and d!1656026 c!880375) b!5123004))

(assert (= (and d!1656026 (not c!880375)) b!5123005))

(declare-fun m!6184708 () Bool)

(assert (=> b!5123005 m!6184708))

(assert (=> b!5122972 d!1656026))

(declare-fun d!1656032 () Bool)

(declare-fun lt!2112345 () Int)

(assert (=> d!1656032 (>= lt!2112345 0)))

(declare-fun e!3195038 () Int)

(assert (=> d!1656032 (= lt!2112345 e!3195038)))

(declare-fun c!880376 () Bool)

(assert (=> d!1656032 (= c!880376 ((_ is Nil!59275) knownP!20))))

(assert (=> d!1656032 (= (size!39543 knownP!20) lt!2112345)))

(declare-fun b!5123012 () Bool)

(assert (=> b!5123012 (= e!3195038 0)))

(declare-fun b!5123013 () Bool)

(assert (=> b!5123013 (= e!3195038 (+ 1 (size!39543 (t!372420 knownP!20))))))

(assert (= (and d!1656032 c!880376) b!5123012))

(assert (= (and d!1656032 (not c!880376)) b!5123013))

(declare-fun m!6184710 () Bool)

(assert (=> b!5123013 m!6184710))

(assert (=> b!5122972 d!1656032))

(declare-fun d!1656034 () Bool)

(declare-fun c!880384 () Bool)

(declare-fun isEmpty!31947 (List!59399) Bool)

(assert (=> d!1656034 (= c!880384 (isEmpty!31947 lt!2112333))))

(declare-fun e!3195054 () Bool)

(assert (=> d!1656034 (= (matchZipper!905 z!4463 lt!2112333) e!3195054)))

(declare-fun b!5123040 () Bool)

(declare-fun nullableZipper!1034 ((InoxSet Context!7242)) Bool)

(assert (=> b!5123040 (= e!3195054 (nullableZipper!1034 z!4463))))

(declare-fun b!5123041 () Bool)

(assert (=> b!5123041 (= e!3195054 (matchZipper!905 (derivationStepZipper!860 z!4463 (head!10953 lt!2112333)) (tail!10088 lt!2112333)))))

(assert (= (and d!1656034 c!880384) b!5123040))

(assert (= (and d!1656034 (not c!880384)) b!5123041))

(declare-fun m!6184734 () Bool)

(assert (=> d!1656034 m!6184734))

(declare-fun m!6184736 () Bool)

(assert (=> b!5123040 m!6184736))

(assert (=> b!5123041 m!6184682))

(assert (=> b!5123041 m!6184682))

(declare-fun m!6184738 () Bool)

(assert (=> b!5123041 m!6184738))

(assert (=> b!5123041 m!6184704))

(assert (=> b!5123041 m!6184738))

(assert (=> b!5123041 m!6184704))

(declare-fun m!6184740 () Bool)

(assert (=> b!5123041 m!6184740))

(assert (=> b!5122989 d!1656034))

(declare-fun d!1656040 () Bool)

(declare-fun lt!2112362 () List!59399)

(assert (=> d!1656040 (= (++!13050 testedP!265 lt!2112362) knownP!20)))

(declare-fun e!3195061 () List!59399)

(assert (=> d!1656040 (= lt!2112362 e!3195061)))

(declare-fun c!880388 () Bool)

(assert (=> d!1656040 (= c!880388 ((_ is Cons!59275) testedP!265))))

(assert (=> d!1656040 (>= (size!39543 knownP!20) (size!39543 testedP!265))))

(assert (=> d!1656040 (= (getSuffix!3314 knownP!20 testedP!265) lt!2112362)))

(declare-fun b!5123052 () Bool)

(assert (=> b!5123052 (= e!3195061 (getSuffix!3314 (tail!10088 knownP!20) (t!372420 testedP!265)))))

(declare-fun b!5123053 () Bool)

(assert (=> b!5123053 (= e!3195061 knownP!20)))

(assert (= (and d!1656040 c!880388) b!5123052))

(assert (= (and d!1656040 (not c!880388)) b!5123053))

(declare-fun m!6184762 () Bool)

(assert (=> d!1656040 m!6184762))

(assert (=> d!1656040 m!6184636))

(assert (=> d!1656040 m!6184634))

(declare-fun m!6184764 () Bool)

(assert (=> b!5123052 m!6184764))

(assert (=> b!5123052 m!6184764))

(declare-fun m!6184766 () Bool)

(assert (=> b!5123052 m!6184766))

(assert (=> b!5122989 d!1656040))

(declare-fun d!1656050 () Bool)

(declare-fun e!3195074 () Bool)

(assert (=> d!1656050 e!3195074))

(declare-fun res!2181551 () Bool)

(assert (=> d!1656050 (=> res!2181551 e!3195074)))

(declare-fun lt!2112370 () Bool)

(assert (=> d!1656050 (= res!2181551 (not lt!2112370))))

(declare-fun e!3195073 () Bool)

(assert (=> d!1656050 (= lt!2112370 e!3195073)))

(declare-fun res!2181549 () Bool)

(assert (=> d!1656050 (=> res!2181549 e!3195073)))

(assert (=> d!1656050 (= res!2181549 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656050 (= (isPrefix!5642 testedP!265 knownP!20) lt!2112370)))

(declare-fun b!5123068 () Bool)

(declare-fun e!3195072 () Bool)

(assert (=> b!5123068 (= e!3195073 e!3195072)))

(declare-fun res!2181552 () Bool)

(assert (=> b!5123068 (=> (not res!2181552) (not e!3195072))))

(assert (=> b!5123068 (= res!2181552 (not ((_ is Nil!59275) knownP!20)))))

(declare-fun b!5123071 () Bool)

(assert (=> b!5123071 (= e!3195074 (>= (size!39543 knownP!20) (size!39543 testedP!265)))))

(declare-fun b!5123069 () Bool)

(declare-fun res!2181550 () Bool)

(assert (=> b!5123069 (=> (not res!2181550) (not e!3195072))))

(assert (=> b!5123069 (= res!2181550 (= (head!10953 testedP!265) (head!10953 knownP!20)))))

(declare-fun b!5123070 () Bool)

(assert (=> b!5123070 (= e!3195072 (isPrefix!5642 (tail!10088 testedP!265) (tail!10088 knownP!20)))))

(assert (= (and d!1656050 (not res!2181549)) b!5123068))

(assert (= (and b!5123068 res!2181552) b!5123069))

(assert (= (and b!5123069 res!2181550) b!5123070))

(assert (= (and d!1656050 (not res!2181551)) b!5123071))

(assert (=> b!5123071 m!6184636))

(assert (=> b!5123071 m!6184634))

(declare-fun m!6184780 () Bool)

(assert (=> b!5123069 m!6184780))

(declare-fun m!6184782 () Bool)

(assert (=> b!5123069 m!6184782))

(declare-fun m!6184784 () Bool)

(assert (=> b!5123070 m!6184784))

(assert (=> b!5123070 m!6184764))

(assert (=> b!5123070 m!6184784))

(assert (=> b!5123070 m!6184764))

(declare-fun m!6184786 () Bool)

(assert (=> b!5123070 m!6184786))

(assert (=> b!5122989 d!1656050))

(declare-fun d!1656058 () Bool)

(assert (=> d!1656058 (isPrefix!5642 testedP!265 knownP!20)))

(declare-fun lt!2112373 () Unit!150417)

(declare-fun choose!37679 (List!59399 List!59399 List!59399) Unit!150417)

(assert (=> d!1656058 (= lt!2112373 (choose!37679 knownP!20 testedP!265 input!5745))))

(assert (=> d!1656058 (isPrefix!5642 knownP!20 input!5745)))

(assert (=> d!1656058 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!777 knownP!20 testedP!265 input!5745) lt!2112373)))

(declare-fun bs!1193275 () Bool)

(assert (= bs!1193275 d!1656058))

(assert (=> bs!1193275 m!6184650))

(declare-fun m!6184788 () Bool)

(assert (=> bs!1193275 m!6184788))

(assert (=> bs!1193275 m!6184688))

(assert (=> b!5122989 d!1656058))

(declare-fun d!1656060 () Bool)

(declare-fun lt!2112374 () Int)

(assert (=> d!1656060 (>= lt!2112374 0)))

(declare-fun e!3195075 () Int)

(assert (=> d!1656060 (= lt!2112374 e!3195075)))

(declare-fun c!880393 () Bool)

(assert (=> d!1656060 (= c!880393 ((_ is Nil!59275) input!5745))))

(assert (=> d!1656060 (= (size!39543 input!5745) lt!2112374)))

(declare-fun b!5123072 () Bool)

(assert (=> b!5123072 (= e!3195075 0)))

(declare-fun b!5123073 () Bool)

(assert (=> b!5123073 (= e!3195075 (+ 1 (size!39543 (t!372420 input!5745))))))

(assert (= (and d!1656060 c!880393) b!5123072))

(assert (= (and d!1656060 (not c!880393)) b!5123073))

(declare-fun m!6184790 () Bool)

(assert (=> b!5123073 m!6184790))

(assert (=> b!5122980 d!1656060))

(declare-fun b!5123082 () Bool)

(declare-fun e!3195081 () List!59399)

(assert (=> b!5123082 (= e!3195081 lt!2112328)))

(declare-fun b!5123084 () Bool)

(declare-fun res!2181557 () Bool)

(declare-fun e!3195080 () Bool)

(assert (=> b!5123084 (=> (not res!2181557) (not e!3195080))))

(declare-fun lt!2112377 () List!59399)

(assert (=> b!5123084 (= res!2181557 (= (size!39543 lt!2112377) (+ (size!39543 testedP!265) (size!39543 lt!2112328))))))

(declare-fun d!1656062 () Bool)

(assert (=> d!1656062 e!3195080))

(declare-fun res!2181558 () Bool)

(assert (=> d!1656062 (=> (not res!2181558) (not e!3195080))))

(declare-fun content!10541 (List!59399) (InoxSet C!28740))

(assert (=> d!1656062 (= res!2181558 (= (content!10541 lt!2112377) ((_ map or) (content!10541 testedP!265) (content!10541 lt!2112328))))))

(assert (=> d!1656062 (= lt!2112377 e!3195081)))

(declare-fun c!880396 () Bool)

(assert (=> d!1656062 (= c!880396 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656062 (= (++!13050 testedP!265 lt!2112328) lt!2112377)))

(declare-fun b!5123085 () Bool)

(assert (=> b!5123085 (= e!3195080 (or (not (= lt!2112328 Nil!59275)) (= lt!2112377 testedP!265)))))

(declare-fun b!5123083 () Bool)

(assert (=> b!5123083 (= e!3195081 (Cons!59275 (h!65723 testedP!265) (++!13050 (t!372420 testedP!265) lt!2112328)))))

(assert (= (and d!1656062 c!880396) b!5123082))

(assert (= (and d!1656062 (not c!880396)) b!5123083))

(assert (= (and d!1656062 res!2181558) b!5123084))

(assert (= (and b!5123084 res!2181557) b!5123085))

(declare-fun m!6184792 () Bool)

(assert (=> b!5123084 m!6184792))

(assert (=> b!5123084 m!6184634))

(declare-fun m!6184794 () Bool)

(assert (=> b!5123084 m!6184794))

(declare-fun m!6184796 () Bool)

(assert (=> d!1656062 m!6184796))

(declare-fun m!6184798 () Bool)

(assert (=> d!1656062 m!6184798))

(declare-fun m!6184800 () Bool)

(assert (=> d!1656062 m!6184800))

(declare-fun m!6184802 () Bool)

(assert (=> b!5123083 m!6184802))

(assert (=> b!5122988 d!1656062))

(declare-fun b!5123086 () Bool)

(declare-fun e!3195083 () List!59399)

(assert (=> b!5123086 (= e!3195083 lt!2112334)))

(declare-fun b!5123088 () Bool)

(declare-fun res!2181559 () Bool)

(declare-fun e!3195082 () Bool)

(assert (=> b!5123088 (=> (not res!2181559) (not e!3195082))))

(declare-fun lt!2112378 () List!59399)

(assert (=> b!5123088 (= res!2181559 (= (size!39543 lt!2112378) (+ (size!39543 lt!2112333) (size!39543 lt!2112334))))))

(declare-fun d!1656064 () Bool)

(assert (=> d!1656064 e!3195082))

(declare-fun res!2181560 () Bool)

(assert (=> d!1656064 (=> (not res!2181560) (not e!3195082))))

(assert (=> d!1656064 (= res!2181560 (= (content!10541 lt!2112378) ((_ map or) (content!10541 lt!2112333) (content!10541 lt!2112334))))))

(assert (=> d!1656064 (= lt!2112378 e!3195083)))

(declare-fun c!880397 () Bool)

(assert (=> d!1656064 (= c!880397 ((_ is Nil!59275) lt!2112333))))

(assert (=> d!1656064 (= (++!13050 lt!2112333 lt!2112334) lt!2112378)))

(declare-fun b!5123089 () Bool)

(assert (=> b!5123089 (= e!3195082 (or (not (= lt!2112334 Nil!59275)) (= lt!2112378 lt!2112333)))))

(declare-fun b!5123087 () Bool)

(assert (=> b!5123087 (= e!3195083 (Cons!59275 (h!65723 lt!2112333) (++!13050 (t!372420 lt!2112333) lt!2112334)))))

(assert (= (and d!1656064 c!880397) b!5123086))

(assert (= (and d!1656064 (not c!880397)) b!5123087))

(assert (= (and d!1656064 res!2181560) b!5123088))

(assert (= (and b!5123088 res!2181559) b!5123089))

(declare-fun m!6184804 () Bool)

(assert (=> b!5123088 m!6184804))

(declare-fun m!6184806 () Bool)

(assert (=> b!5123088 m!6184806))

(declare-fun m!6184808 () Bool)

(assert (=> b!5123088 m!6184808))

(declare-fun m!6184810 () Bool)

(assert (=> d!1656064 m!6184810))

(declare-fun m!6184812 () Bool)

(assert (=> d!1656064 m!6184812))

(declare-fun m!6184814 () Bool)

(assert (=> d!1656064 m!6184814))

(declare-fun m!6184816 () Bool)

(assert (=> b!5123087 m!6184816))

(assert (=> b!5122988 d!1656064))

(declare-fun d!1656066 () Bool)

(assert (=> d!1656066 (= (++!13050 (++!13050 testedP!265 lt!2112333) lt!2112334) (++!13050 testedP!265 (++!13050 lt!2112333 lt!2112334)))))

(declare-fun lt!2112381 () Unit!150417)

(declare-fun choose!37681 (List!59399 List!59399 List!59399) Unit!150417)

(assert (=> d!1656066 (= lt!2112381 (choose!37681 testedP!265 lt!2112333 lt!2112334))))

(assert (=> d!1656066 (= (lemmaConcatAssociativity!2794 testedP!265 lt!2112333 lt!2112334) lt!2112381)))

(declare-fun bs!1193276 () Bool)

(assert (= bs!1193276 d!1656066))

(assert (=> bs!1193276 m!6184620))

(assert (=> bs!1193276 m!6184644))

(declare-fun m!6184818 () Bool)

(assert (=> bs!1193276 m!6184818))

(assert (=> bs!1193276 m!6184620))

(declare-fun m!6184820 () Bool)

(assert (=> bs!1193276 m!6184820))

(assert (=> bs!1193276 m!6184644))

(declare-fun m!6184822 () Bool)

(assert (=> bs!1193276 m!6184822))

(assert (=> b!5122988 d!1656066))

(declare-fun d!1656068 () Bool)

(declare-fun c!880398 () Bool)

(assert (=> d!1656068 (= c!880398 (isEmpty!31947 knownP!20))))

(declare-fun e!3195084 () Bool)

(assert (=> d!1656068 (= (matchZipper!905 baseZ!46 knownP!20) e!3195084)))

(declare-fun b!5123090 () Bool)

(assert (=> b!5123090 (= e!3195084 (nullableZipper!1034 baseZ!46))))

(declare-fun b!5123091 () Bool)

(assert (=> b!5123091 (= e!3195084 (matchZipper!905 (derivationStepZipper!860 baseZ!46 (head!10953 knownP!20)) (tail!10088 knownP!20)))))

(assert (= (and d!1656068 c!880398) b!5123090))

(assert (= (and d!1656068 (not c!880398)) b!5123091))

(declare-fun m!6184824 () Bool)

(assert (=> d!1656068 m!6184824))

(declare-fun m!6184826 () Bool)

(assert (=> b!5123090 m!6184826))

(assert (=> b!5123091 m!6184782))

(assert (=> b!5123091 m!6184782))

(declare-fun m!6184828 () Bool)

(assert (=> b!5123091 m!6184828))

(assert (=> b!5123091 m!6184764))

(assert (=> b!5123091 m!6184828))

(assert (=> b!5123091 m!6184764))

(declare-fun m!6184830 () Bool)

(assert (=> b!5123091 m!6184830))

(assert (=> b!5122979 d!1656068))

(declare-fun d!1656070 () Bool)

(assert (=> d!1656070 (= lt!2112327 lt!2112333)))

(declare-fun lt!2112384 () Unit!150417)

(declare-fun choose!37682 (List!59399 List!59399 List!59399 List!59399 List!59399) Unit!150417)

(assert (=> d!1656070 (= lt!2112384 (choose!37682 testedP!265 lt!2112327 testedP!265 lt!2112333 knownP!20))))

(assert (=> d!1656070 (isPrefix!5642 testedP!265 knownP!20)))

(assert (=> d!1656070 (= (lemmaSamePrefixThenSameSuffix!2660 testedP!265 lt!2112327 testedP!265 lt!2112333 knownP!20) lt!2112384)))

(declare-fun bs!1193277 () Bool)

(assert (= bs!1193277 d!1656070))

(declare-fun m!6184832 () Bool)

(assert (=> bs!1193277 m!6184832))

(assert (=> bs!1193277 m!6184650))

(assert (=> b!5122987 d!1656070))

(declare-fun b!5123092 () Bool)

(declare-fun e!3195086 () List!59399)

(assert (=> b!5123092 (= e!3195086 lt!2112327)))

(declare-fun b!5123094 () Bool)

(declare-fun res!2181561 () Bool)

(declare-fun e!3195085 () Bool)

(assert (=> b!5123094 (=> (not res!2181561) (not e!3195085))))

(declare-fun lt!2112385 () List!59399)

(assert (=> b!5123094 (= res!2181561 (= (size!39543 lt!2112385) (+ (size!39543 testedP!265) (size!39543 lt!2112327))))))

(declare-fun d!1656072 () Bool)

(assert (=> d!1656072 e!3195085))

(declare-fun res!2181562 () Bool)

(assert (=> d!1656072 (=> (not res!2181562) (not e!3195085))))

(assert (=> d!1656072 (= res!2181562 (= (content!10541 lt!2112385) ((_ map or) (content!10541 testedP!265) (content!10541 lt!2112327))))))

(assert (=> d!1656072 (= lt!2112385 e!3195086)))

(declare-fun c!880399 () Bool)

(assert (=> d!1656072 (= c!880399 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656072 (= (++!13050 testedP!265 lt!2112327) lt!2112385)))

(declare-fun b!5123095 () Bool)

(assert (=> b!5123095 (= e!3195085 (or (not (= lt!2112327 Nil!59275)) (= lt!2112385 testedP!265)))))

(declare-fun b!5123093 () Bool)

(assert (=> b!5123093 (= e!3195086 (Cons!59275 (h!65723 testedP!265) (++!13050 (t!372420 testedP!265) lt!2112327)))))

(assert (= (and d!1656072 c!880399) b!5123092))

(assert (= (and d!1656072 (not c!880399)) b!5123093))

(assert (= (and d!1656072 res!2181562) b!5123094))

(assert (= (and b!5123094 res!2181561) b!5123095))

(declare-fun m!6184834 () Bool)

(assert (=> b!5123094 m!6184834))

(assert (=> b!5123094 m!6184634))

(declare-fun m!6184836 () Bool)

(assert (=> b!5123094 m!6184836))

(declare-fun m!6184838 () Bool)

(assert (=> d!1656072 m!6184838))

(assert (=> d!1656072 m!6184798))

(declare-fun m!6184840 () Bool)

(assert (=> d!1656072 m!6184840))

(declare-fun m!6184842 () Bool)

(assert (=> b!5123093 m!6184842))

(assert (=> b!5122987 d!1656072))

(declare-fun b!5123096 () Bool)

(declare-fun e!3195088 () List!59399)

(assert (=> b!5123096 (= e!3195088 lt!2112320)))

(declare-fun b!5123098 () Bool)

(declare-fun res!2181563 () Bool)

(declare-fun e!3195087 () Bool)

(assert (=> b!5123098 (=> (not res!2181563) (not e!3195087))))

(declare-fun lt!2112386 () List!59399)

(assert (=> b!5123098 (= res!2181563 (= (size!39543 lt!2112386) (+ (size!39543 lt!2112317) (size!39543 lt!2112320))))))

(declare-fun d!1656074 () Bool)

(assert (=> d!1656074 e!3195087))

(declare-fun res!2181564 () Bool)

(assert (=> d!1656074 (=> (not res!2181564) (not e!3195087))))

(assert (=> d!1656074 (= res!2181564 (= (content!10541 lt!2112386) ((_ map or) (content!10541 lt!2112317) (content!10541 lt!2112320))))))

(assert (=> d!1656074 (= lt!2112386 e!3195088)))

(declare-fun c!880400 () Bool)

(assert (=> d!1656074 (= c!880400 ((_ is Nil!59275) lt!2112317))))

(assert (=> d!1656074 (= (++!13050 lt!2112317 lt!2112320) lt!2112386)))

(declare-fun b!5123099 () Bool)

(assert (=> b!5123099 (= e!3195087 (or (not (= lt!2112320 Nil!59275)) (= lt!2112386 lt!2112317)))))

(declare-fun b!5123097 () Bool)

(assert (=> b!5123097 (= e!3195088 (Cons!59275 (h!65723 lt!2112317) (++!13050 (t!372420 lt!2112317) lt!2112320)))))

(assert (= (and d!1656074 c!880400) b!5123096))

(assert (= (and d!1656074 (not c!880400)) b!5123097))

(assert (= (and d!1656074 res!2181564) b!5123098))

(assert (= (and b!5123098 res!2181563) b!5123099))

(declare-fun m!6184844 () Bool)

(assert (=> b!5123098 m!6184844))

(declare-fun m!6184846 () Bool)

(assert (=> b!5123098 m!6184846))

(declare-fun m!6184848 () Bool)

(assert (=> b!5123098 m!6184848))

(declare-fun m!6184850 () Bool)

(assert (=> d!1656074 m!6184850))

(declare-fun m!6184852 () Bool)

(assert (=> d!1656074 m!6184852))

(declare-fun m!6184854 () Bool)

(assert (=> d!1656074 m!6184854))

(declare-fun m!6184856 () Bool)

(assert (=> b!5123097 m!6184856))

(assert (=> b!5122987 d!1656074))

(declare-fun d!1656076 () Bool)

(assert (=> d!1656076 (= (++!13050 (++!13050 testedP!265 lt!2112317) lt!2112320) (++!13050 testedP!265 (++!13050 lt!2112317 lt!2112320)))))

(declare-fun lt!2112387 () Unit!150417)

(assert (=> d!1656076 (= lt!2112387 (choose!37681 testedP!265 lt!2112317 lt!2112320))))

(assert (=> d!1656076 (= (lemmaConcatAssociativity!2794 testedP!265 lt!2112317 lt!2112320) lt!2112387)))

(declare-fun bs!1193278 () Bool)

(assert (= bs!1193278 d!1656076))

(assert (=> bs!1193278 m!6184630))

(assert (=> bs!1193278 m!6184658))

(declare-fun m!6184858 () Bool)

(assert (=> bs!1193278 m!6184858))

(assert (=> bs!1193278 m!6184630))

(declare-fun m!6184860 () Bool)

(assert (=> bs!1193278 m!6184860))

(assert (=> bs!1193278 m!6184658))

(declare-fun m!6184862 () Bool)

(assert (=> bs!1193278 m!6184862))

(assert (=> b!5122987 d!1656076))

(declare-fun d!1656078 () Bool)

(declare-fun lt!2112388 () Int)

(assert (=> d!1656078 (>= lt!2112388 0)))

(declare-fun e!3195089 () Int)

(assert (=> d!1656078 (= lt!2112388 e!3195089)))

(declare-fun c!880401 () Bool)

(assert (=> d!1656078 (= c!880401 ((_ is Nil!59275) lt!2112314))))

(assert (=> d!1656078 (= (size!39543 lt!2112314) lt!2112388)))

(declare-fun b!5123100 () Bool)

(assert (=> b!5123100 (= e!3195089 0)))

(declare-fun b!5123101 () Bool)

(assert (=> b!5123101 (= e!3195089 (+ 1 (size!39543 (t!372420 lt!2112314))))))

(assert (= (and d!1656078 c!880401) b!5123100))

(assert (= (and d!1656078 (not c!880401)) b!5123101))

(declare-fun m!6184864 () Bool)

(assert (=> b!5123101 m!6184864))

(assert (=> b!5122978 d!1656078))

(declare-fun b!5123102 () Bool)

(declare-fun e!3195091 () List!59399)

(assert (=> b!5123102 (= e!3195091 lt!2112320)))

(declare-fun b!5123104 () Bool)

(declare-fun res!2181565 () Bool)

(declare-fun e!3195090 () Bool)

(assert (=> b!5123104 (=> (not res!2181565) (not e!3195090))))

(declare-fun lt!2112389 () List!59399)

(assert (=> b!5123104 (= res!2181565 (= (size!39543 lt!2112389) (+ (size!39543 lt!2112314) (size!39543 lt!2112320))))))

(declare-fun d!1656080 () Bool)

(assert (=> d!1656080 e!3195090))

(declare-fun res!2181566 () Bool)

(assert (=> d!1656080 (=> (not res!2181566) (not e!3195090))))

(assert (=> d!1656080 (= res!2181566 (= (content!10541 lt!2112389) ((_ map or) (content!10541 lt!2112314) (content!10541 lt!2112320))))))

(assert (=> d!1656080 (= lt!2112389 e!3195091)))

(declare-fun c!880402 () Bool)

(assert (=> d!1656080 (= c!880402 ((_ is Nil!59275) lt!2112314))))

(assert (=> d!1656080 (= (++!13050 lt!2112314 lt!2112320) lt!2112389)))

(declare-fun b!5123105 () Bool)

(assert (=> b!5123105 (= e!3195090 (or (not (= lt!2112320 Nil!59275)) (= lt!2112389 lt!2112314)))))

(declare-fun b!5123103 () Bool)

(assert (=> b!5123103 (= e!3195091 (Cons!59275 (h!65723 lt!2112314) (++!13050 (t!372420 lt!2112314) lt!2112320)))))

(assert (= (and d!1656080 c!880402) b!5123102))

(assert (= (and d!1656080 (not c!880402)) b!5123103))

(assert (= (and d!1656080 res!2181566) b!5123104))

(assert (= (and b!5123104 res!2181565) b!5123105))

(declare-fun m!6184866 () Bool)

(assert (=> b!5123104 m!6184866))

(assert (=> b!5123104 m!6184696))

(assert (=> b!5123104 m!6184848))

(declare-fun m!6184868 () Bool)

(assert (=> d!1656080 m!6184868))

(declare-fun m!6184870 () Bool)

(assert (=> d!1656080 m!6184870))

(assert (=> d!1656080 m!6184854))

(declare-fun m!6184872 () Bool)

(assert (=> b!5123103 m!6184872))

(assert (=> b!5122986 d!1656080))

(declare-fun d!1656082 () Bool)

(assert (=> d!1656082 (= ($colon$colon!1151 lt!2112313 lt!2112326) (Cons!59275 lt!2112326 lt!2112313))))

(assert (=> b!5122985 d!1656082))

(declare-fun d!1656084 () Bool)

(assert (=> d!1656084 (= (tail!10088 lt!2112333) (t!372420 lt!2112333))))

(assert (=> b!5122985 d!1656084))

(declare-fun d!1656086 () Bool)

(declare-fun lt!2112390 () List!59399)

(assert (=> d!1656086 (= (++!13050 testedP!265 lt!2112390) input!5745)))

(declare-fun e!3195092 () List!59399)

(assert (=> d!1656086 (= lt!2112390 e!3195092)))

(declare-fun c!880403 () Bool)

(assert (=> d!1656086 (= c!880403 ((_ is Cons!59275) testedP!265))))

(assert (=> d!1656086 (>= (size!39543 input!5745) (size!39543 testedP!265))))

(assert (=> d!1656086 (= (getSuffix!3314 input!5745 testedP!265) lt!2112390)))

(declare-fun b!5123106 () Bool)

(assert (=> b!5123106 (= e!3195092 (getSuffix!3314 (tail!10088 input!5745) (t!372420 testedP!265)))))

(declare-fun b!5123107 () Bool)

(assert (=> b!5123107 (= e!3195092 input!5745)))

(assert (= (and d!1656086 c!880403) b!5123106))

(assert (= (and d!1656086 (not c!880403)) b!5123107))

(declare-fun m!6184874 () Bool)

(assert (=> d!1656086 m!6184874))

(assert (=> d!1656086 m!6184680))

(assert (=> d!1656086 m!6184634))

(declare-fun m!6184876 () Bool)

(assert (=> b!5123106 m!6184876))

(assert (=> b!5123106 m!6184876))

(declare-fun m!6184878 () Bool)

(assert (=> b!5123106 m!6184878))

(assert (=> b!5122976 d!1656086))

(declare-fun d!1656088 () Bool)

(assert (=> d!1656088 (= (head!10953 lt!2112331) (h!65723 lt!2112331))))

(assert (=> b!5122976 d!1656088))

(declare-fun d!1656090 () Bool)

(assert (=> d!1656090 (isPrefix!5642 lt!2112314 knownP!20)))

(declare-fun lt!2112391 () Unit!150417)

(assert (=> d!1656090 (= lt!2112391 (choose!37679 knownP!20 lt!2112314 input!5745))))

(assert (=> d!1656090 (isPrefix!5642 knownP!20 input!5745)))

(assert (=> d!1656090 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!777 knownP!20 lt!2112314 input!5745) lt!2112391)))

(declare-fun bs!1193279 () Bool)

(assert (= bs!1193279 d!1656090))

(assert (=> bs!1193279 m!6184676))

(declare-fun m!6184880 () Bool)

(assert (=> bs!1193279 m!6184880))

(assert (=> bs!1193279 m!6184688))

(assert (=> b!5122976 d!1656090))

(declare-fun d!1656092 () Bool)

(declare-fun e!3195095 () Bool)

(assert (=> d!1656092 e!3195095))

(declare-fun res!2181569 () Bool)

(assert (=> d!1656092 (=> res!2181569 e!3195095)))

(declare-fun lt!2112392 () Bool)

(assert (=> d!1656092 (= res!2181569 (not lt!2112392))))

(declare-fun e!3195094 () Bool)

(assert (=> d!1656092 (= lt!2112392 e!3195094)))

(declare-fun res!2181567 () Bool)

(assert (=> d!1656092 (=> res!2181567 e!3195094)))

(assert (=> d!1656092 (= res!2181567 ((_ is Nil!59275) lt!2112314))))

(assert (=> d!1656092 (= (isPrefix!5642 lt!2112314 input!5745) lt!2112392)))

(declare-fun b!5123108 () Bool)

(declare-fun e!3195093 () Bool)

(assert (=> b!5123108 (= e!3195094 e!3195093)))

(declare-fun res!2181570 () Bool)

(assert (=> b!5123108 (=> (not res!2181570) (not e!3195093))))

(assert (=> b!5123108 (= res!2181570 (not ((_ is Nil!59275) input!5745)))))

(declare-fun b!5123111 () Bool)

(assert (=> b!5123111 (= e!3195095 (>= (size!39543 input!5745) (size!39543 lt!2112314)))))

(declare-fun b!5123109 () Bool)

(declare-fun res!2181568 () Bool)

(assert (=> b!5123109 (=> (not res!2181568) (not e!3195093))))

(assert (=> b!5123109 (= res!2181568 (= (head!10953 lt!2112314) (head!10953 input!5745)))))

(declare-fun b!5123110 () Bool)

(assert (=> b!5123110 (= e!3195093 (isPrefix!5642 (tail!10088 lt!2112314) (tail!10088 input!5745)))))

(assert (= (and d!1656092 (not res!2181567)) b!5123108))

(assert (= (and b!5123108 res!2181570) b!5123109))

(assert (= (and b!5123109 res!2181568) b!5123110))

(assert (= (and d!1656092 (not res!2181569)) b!5123111))

(assert (=> b!5123111 m!6184680))

(assert (=> b!5123111 m!6184696))

(declare-fun m!6184882 () Bool)

(assert (=> b!5123109 m!6184882))

(declare-fun m!6184884 () Bool)

(assert (=> b!5123109 m!6184884))

(declare-fun m!6184886 () Bool)

(assert (=> b!5123110 m!6184886))

(assert (=> b!5123110 m!6184876))

(assert (=> b!5123110 m!6184886))

(assert (=> b!5123110 m!6184876))

(declare-fun m!6184888 () Bool)

(assert (=> b!5123110 m!6184888))

(assert (=> b!5122976 d!1656092))

(declare-fun d!1656094 () Bool)

(assert (=> d!1656094 true))

(declare-fun lambda!251519 () Int)

(declare-fun flatMap!365 ((InoxSet Context!7242) Int) (InoxSet Context!7242))

(assert (=> d!1656094 (= (derivationStepZipper!860 z!4463 lt!2112326) (flatMap!365 z!4463 lambda!251519))))

(declare-fun bs!1193292 () Bool)

(assert (= bs!1193292 d!1656094))

(declare-fun m!6185076 () Bool)

(assert (=> bs!1193292 m!6185076))

(assert (=> b!5122976 d!1656094))

(declare-fun d!1656162 () Bool)

(declare-fun lt!2112442 () List!59399)

(assert (=> d!1656162 (= (++!13050 lt!2112314 lt!2112442) knownP!20)))

(declare-fun e!3195154 () List!59399)

(assert (=> d!1656162 (= lt!2112442 e!3195154)))

(declare-fun c!880440 () Bool)

(assert (=> d!1656162 (= c!880440 ((_ is Cons!59275) lt!2112314))))

(assert (=> d!1656162 (>= (size!39543 knownP!20) (size!39543 lt!2112314))))

(assert (=> d!1656162 (= (getSuffix!3314 knownP!20 lt!2112314) lt!2112442)))

(declare-fun b!5123213 () Bool)

(assert (=> b!5123213 (= e!3195154 (getSuffix!3314 (tail!10088 knownP!20) (t!372420 lt!2112314)))))

(declare-fun b!5123214 () Bool)

(assert (=> b!5123214 (= e!3195154 knownP!20)))

(assert (= (and d!1656162 c!880440) b!5123213))

(assert (= (and d!1656162 (not c!880440)) b!5123214))

(declare-fun m!6185078 () Bool)

(assert (=> d!1656162 m!6185078))

(assert (=> d!1656162 m!6184636))

(assert (=> d!1656162 m!6184696))

(assert (=> b!5123213 m!6184764))

(assert (=> b!5123213 m!6184764))

(declare-fun m!6185080 () Bool)

(assert (=> b!5123213 m!6185080))

(assert (=> b!5122976 d!1656162))

(declare-fun d!1656164 () Bool)

(declare-fun c!880443 () Bool)

(assert (=> d!1656164 (= c!880443 ((_ is Cons!59275) lt!2112314))))

(declare-fun e!3195157 () (InoxSet Context!7242))

(assert (=> d!1656164 (= (derivationZipper!134 baseZ!46 lt!2112314) e!3195157)))

(declare-fun b!5123219 () Bool)

(assert (=> b!5123219 (= e!3195157 (derivationZipper!134 (derivationStepZipper!860 baseZ!46 (h!65723 lt!2112314)) (t!372420 lt!2112314)))))

(declare-fun b!5123220 () Bool)

(assert (=> b!5123220 (= e!3195157 baseZ!46)))

(assert (= (and d!1656164 c!880443) b!5123219))

(assert (= (and d!1656164 (not c!880443)) b!5123220))

(declare-fun m!6185082 () Bool)

(assert (=> b!5123219 m!6185082))

(assert (=> b!5123219 m!6185082))

(declare-fun m!6185084 () Bool)

(assert (=> b!5123219 m!6185084))

(assert (=> b!5122976 d!1656164))

(declare-fun d!1656166 () Bool)

(assert (=> d!1656166 (= (derivationZipper!134 baseZ!46 (++!13050 testedP!265 (Cons!59275 lt!2112326 Nil!59275))) (derivationStepZipper!860 z!4463 lt!2112326))))

(declare-fun lt!2112445 () Unit!150417)

(declare-fun choose!37684 ((InoxSet Context!7242) (InoxSet Context!7242) List!59399 C!28740) Unit!150417)

(assert (=> d!1656166 (= lt!2112445 (choose!37684 baseZ!46 z!4463 testedP!265 lt!2112326))))

(assert (=> d!1656166 (= (derivationZipper!134 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1656166 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!81 baseZ!46 z!4463 testedP!265 lt!2112326) lt!2112445)))

(declare-fun bs!1193293 () Bool)

(assert (= bs!1193293 d!1656166))

(declare-fun m!6185086 () Bool)

(assert (=> bs!1193293 m!6185086))

(declare-fun m!6185088 () Bool)

(assert (=> bs!1193293 m!6185088))

(assert (=> bs!1193293 m!6184640))

(assert (=> bs!1193293 m!6185086))

(declare-fun m!6185090 () Bool)

(assert (=> bs!1193293 m!6185090))

(assert (=> bs!1193293 m!6184664))

(assert (=> b!5122976 d!1656166))

(declare-fun d!1656168 () Bool)

(assert (=> d!1656168 (isPrefix!5642 (++!13050 testedP!265 (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275)) input!5745)))

(declare-fun lt!2112448 () Unit!150417)

(declare-fun choose!37685 (List!59399 List!59399) Unit!150417)

(assert (=> d!1656168 (= lt!2112448 (choose!37685 testedP!265 input!5745))))

(assert (=> d!1656168 (isPrefix!5642 testedP!265 input!5745)))

(assert (=> d!1656168 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1016 testedP!265 input!5745) lt!2112448)))

(declare-fun bs!1193294 () Bool)

(assert (= bs!1193294 d!1656168))

(declare-fun m!6185092 () Bool)

(assert (=> bs!1193294 m!6185092))

(assert (=> bs!1193294 m!6184668))

(declare-fun m!6185094 () Bool)

(assert (=> bs!1193294 m!6185094))

(assert (=> bs!1193294 m!6184668))

(declare-fun m!6185096 () Bool)

(assert (=> bs!1193294 m!6185096))

(assert (=> bs!1193294 m!6184692))

(assert (=> bs!1193294 m!6185092))

(declare-fun m!6185098 () Bool)

(assert (=> bs!1193294 m!6185098))

(assert (=> b!5122976 d!1656168))

(declare-fun d!1656170 () Bool)

(declare-fun lt!2112449 () List!59399)

(assert (=> d!1656170 (= (++!13050 knownP!20 lt!2112449) input!5745)))

(declare-fun e!3195158 () List!59399)

(assert (=> d!1656170 (= lt!2112449 e!3195158)))

(declare-fun c!880445 () Bool)

(assert (=> d!1656170 (= c!880445 ((_ is Cons!59275) knownP!20))))

(assert (=> d!1656170 (>= (size!39543 input!5745) (size!39543 knownP!20))))

(assert (=> d!1656170 (= (getSuffix!3314 input!5745 knownP!20) lt!2112449)))

(declare-fun b!5123221 () Bool)

(assert (=> b!5123221 (= e!3195158 (getSuffix!3314 (tail!10088 input!5745) (t!372420 knownP!20)))))

(declare-fun b!5123222 () Bool)

(assert (=> b!5123222 (= e!3195158 input!5745)))

(assert (= (and d!1656170 c!880445) b!5123221))

(assert (= (and d!1656170 (not c!880445)) b!5123222))

(declare-fun m!6185100 () Bool)

(assert (=> d!1656170 m!6185100))

(assert (=> d!1656170 m!6184680))

(assert (=> d!1656170 m!6184636))

(assert (=> b!5123221 m!6184876))

(assert (=> b!5123221 m!6184876))

(declare-fun m!6185102 () Bool)

(assert (=> b!5123221 m!6185102))

(assert (=> b!5122976 d!1656170))

(declare-fun b!5123223 () Bool)

(declare-fun e!3195160 () List!59399)

(assert (=> b!5123223 (= e!3195160 lt!2112334)))

(declare-fun b!5123225 () Bool)

(declare-fun res!2181597 () Bool)

(declare-fun e!3195159 () Bool)

(assert (=> b!5123225 (=> (not res!2181597) (not e!3195159))))

(declare-fun lt!2112450 () List!59399)

(assert (=> b!5123225 (= res!2181597 (= (size!39543 lt!2112450) (+ (size!39543 knownP!20) (size!39543 lt!2112334))))))

(declare-fun d!1656172 () Bool)

(assert (=> d!1656172 e!3195159))

(declare-fun res!2181598 () Bool)

(assert (=> d!1656172 (=> (not res!2181598) (not e!3195159))))

(assert (=> d!1656172 (= res!2181598 (= (content!10541 lt!2112450) ((_ map or) (content!10541 knownP!20) (content!10541 lt!2112334))))))

(assert (=> d!1656172 (= lt!2112450 e!3195160)))

(declare-fun c!880446 () Bool)

(assert (=> d!1656172 (= c!880446 ((_ is Nil!59275) knownP!20))))

(assert (=> d!1656172 (= (++!13050 knownP!20 lt!2112334) lt!2112450)))

(declare-fun b!5123226 () Bool)

(assert (=> b!5123226 (= e!3195159 (or (not (= lt!2112334 Nil!59275)) (= lt!2112450 knownP!20)))))

(declare-fun b!5123224 () Bool)

(assert (=> b!5123224 (= e!3195160 (Cons!59275 (h!65723 knownP!20) (++!13050 (t!372420 knownP!20) lt!2112334)))))

(assert (= (and d!1656172 c!880446) b!5123223))

(assert (= (and d!1656172 (not c!880446)) b!5123224))

(assert (= (and d!1656172 res!2181598) b!5123225))

(assert (= (and b!5123225 res!2181597) b!5123226))

(declare-fun m!6185104 () Bool)

(assert (=> b!5123225 m!6185104))

(assert (=> b!5123225 m!6184636))

(assert (=> b!5123225 m!6184808))

(declare-fun m!6185106 () Bool)

(assert (=> d!1656172 m!6185106))

(declare-fun m!6185108 () Bool)

(assert (=> d!1656172 m!6185108))

(assert (=> d!1656172 m!6184814))

(declare-fun m!6185110 () Bool)

(assert (=> b!5123224 m!6185110))

(assert (=> b!5122976 d!1656172))

(declare-fun b!5123227 () Bool)

(declare-fun e!3195162 () List!59399)

(assert (=> b!5123227 (= e!3195162 lt!2112317)))

(declare-fun b!5123229 () Bool)

(declare-fun res!2181599 () Bool)

(declare-fun e!3195161 () Bool)

(assert (=> b!5123229 (=> (not res!2181599) (not e!3195161))))

(declare-fun lt!2112451 () List!59399)

(assert (=> b!5123229 (= res!2181599 (= (size!39543 lt!2112451) (+ (size!39543 testedP!265) (size!39543 lt!2112317))))))

(declare-fun d!1656174 () Bool)

(assert (=> d!1656174 e!3195161))

(declare-fun res!2181600 () Bool)

(assert (=> d!1656174 (=> (not res!2181600) (not e!3195161))))

(assert (=> d!1656174 (= res!2181600 (= (content!10541 lt!2112451) ((_ map or) (content!10541 testedP!265) (content!10541 lt!2112317))))))

(assert (=> d!1656174 (= lt!2112451 e!3195162)))

(declare-fun c!880447 () Bool)

(assert (=> d!1656174 (= c!880447 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656174 (= (++!13050 testedP!265 lt!2112317) lt!2112451)))

(declare-fun b!5123230 () Bool)

(assert (=> b!5123230 (= e!3195161 (or (not (= lt!2112317 Nil!59275)) (= lt!2112451 testedP!265)))))

(declare-fun b!5123228 () Bool)

(assert (=> b!5123228 (= e!3195162 (Cons!59275 (h!65723 testedP!265) (++!13050 (t!372420 testedP!265) lt!2112317)))))

(assert (= (and d!1656174 c!880447) b!5123227))

(assert (= (and d!1656174 (not c!880447)) b!5123228))

(assert (= (and d!1656174 res!2181600) b!5123229))

(assert (= (and b!5123229 res!2181599) b!5123230))

(declare-fun m!6185112 () Bool)

(assert (=> b!5123229 m!6185112))

(assert (=> b!5123229 m!6184634))

(assert (=> b!5123229 m!6184846))

(declare-fun m!6185114 () Bool)

(assert (=> d!1656174 m!6185114))

(assert (=> d!1656174 m!6184798))

(assert (=> d!1656174 m!6184852))

(declare-fun m!6185116 () Bool)

(assert (=> b!5123228 m!6185116))

(assert (=> b!5122976 d!1656174))

(declare-fun d!1656176 () Bool)

(declare-fun e!3195165 () Bool)

(assert (=> d!1656176 e!3195165))

(declare-fun res!2181603 () Bool)

(assert (=> d!1656176 (=> res!2181603 e!3195165)))

(declare-fun lt!2112452 () Bool)

(assert (=> d!1656176 (= res!2181603 (not lt!2112452))))

(declare-fun e!3195164 () Bool)

(assert (=> d!1656176 (= lt!2112452 e!3195164)))

(declare-fun res!2181601 () Bool)

(assert (=> d!1656176 (=> res!2181601 e!3195164)))

(assert (=> d!1656176 (= res!2181601 ((_ is Nil!59275) lt!2112314))))

(assert (=> d!1656176 (= (isPrefix!5642 lt!2112314 knownP!20) lt!2112452)))

(declare-fun b!5123231 () Bool)

(declare-fun e!3195163 () Bool)

(assert (=> b!5123231 (= e!3195164 e!3195163)))

(declare-fun res!2181604 () Bool)

(assert (=> b!5123231 (=> (not res!2181604) (not e!3195163))))

(assert (=> b!5123231 (= res!2181604 (not ((_ is Nil!59275) knownP!20)))))

(declare-fun b!5123234 () Bool)

(assert (=> b!5123234 (= e!3195165 (>= (size!39543 knownP!20) (size!39543 lt!2112314)))))

(declare-fun b!5123232 () Bool)

(declare-fun res!2181602 () Bool)

(assert (=> b!5123232 (=> (not res!2181602) (not e!3195163))))

(assert (=> b!5123232 (= res!2181602 (= (head!10953 lt!2112314) (head!10953 knownP!20)))))

(declare-fun b!5123233 () Bool)

(assert (=> b!5123233 (= e!3195163 (isPrefix!5642 (tail!10088 lt!2112314) (tail!10088 knownP!20)))))

(assert (= (and d!1656176 (not res!2181601)) b!5123231))

(assert (= (and b!5123231 res!2181604) b!5123232))

(assert (= (and b!5123232 res!2181602) b!5123233))

(assert (= (and d!1656176 (not res!2181603)) b!5123234))

(assert (=> b!5123234 m!6184636))

(assert (=> b!5123234 m!6184696))

(assert (=> b!5123232 m!6184882))

(assert (=> b!5123232 m!6184782))

(assert (=> b!5123233 m!6184886))

(assert (=> b!5123233 m!6184764))

(assert (=> b!5123233 m!6184886))

(assert (=> b!5123233 m!6184764))

(declare-fun m!6185118 () Bool)

(assert (=> b!5123233 m!6185118))

(assert (=> b!5122976 d!1656176))

(declare-fun d!1656178 () Bool)

(declare-fun lambda!251522 () Int)

(declare-fun forall!13627 (List!59400 Int) Bool)

(assert (=> d!1656178 (= (inv!78773 setElem!30501) (forall!13627 (exprs!4121 setElem!30501) lambda!251522))))

(declare-fun bs!1193295 () Bool)

(assert (= bs!1193295 d!1656178))

(declare-fun m!6185120 () Bool)

(assert (=> bs!1193295 m!6185120))

(assert (=> setNonEmpty!30502 d!1656178))

(declare-fun d!1656180 () Bool)

(declare-fun e!3195168 () Bool)

(assert (=> d!1656180 e!3195168))

(declare-fun res!2181607 () Bool)

(assert (=> d!1656180 (=> res!2181607 e!3195168)))

(declare-fun lt!2112453 () Bool)

(assert (=> d!1656180 (= res!2181607 (not lt!2112453))))

(declare-fun e!3195167 () Bool)

(assert (=> d!1656180 (= lt!2112453 e!3195167)))

(declare-fun res!2181605 () Bool)

(assert (=> d!1656180 (=> res!2181605 e!3195167)))

(assert (=> d!1656180 (= res!2181605 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656180 (= (isPrefix!5642 testedP!265 input!5745) lt!2112453)))

(declare-fun b!5123235 () Bool)

(declare-fun e!3195166 () Bool)

(assert (=> b!5123235 (= e!3195167 e!3195166)))

(declare-fun res!2181608 () Bool)

(assert (=> b!5123235 (=> (not res!2181608) (not e!3195166))))

(assert (=> b!5123235 (= res!2181608 (not ((_ is Nil!59275) input!5745)))))

(declare-fun b!5123238 () Bool)

(assert (=> b!5123238 (= e!3195168 (>= (size!39543 input!5745) (size!39543 testedP!265)))))

(declare-fun b!5123236 () Bool)

(declare-fun res!2181606 () Bool)

(assert (=> b!5123236 (=> (not res!2181606) (not e!3195166))))

(assert (=> b!5123236 (= res!2181606 (= (head!10953 testedP!265) (head!10953 input!5745)))))

(declare-fun b!5123237 () Bool)

(assert (=> b!5123237 (= e!3195166 (isPrefix!5642 (tail!10088 testedP!265) (tail!10088 input!5745)))))

(assert (= (and d!1656180 (not res!2181605)) b!5123235))

(assert (= (and b!5123235 res!2181608) b!5123236))

(assert (= (and b!5123236 res!2181606) b!5123237))

(assert (= (and d!1656180 (not res!2181607)) b!5123238))

(assert (=> b!5123238 m!6184680))

(assert (=> b!5123238 m!6184634))

(assert (=> b!5123236 m!6184780))

(assert (=> b!5123236 m!6184884))

(assert (=> b!5123237 m!6184784))

(assert (=> b!5123237 m!6184876))

(assert (=> b!5123237 m!6184784))

(assert (=> b!5123237 m!6184876))

(declare-fun m!6185122 () Bool)

(assert (=> b!5123237 m!6185122))

(assert (=> start!540764 d!1656180))

(declare-fun b!5123239 () Bool)

(declare-fun e!3195170 () List!59399)

(assert (=> b!5123239 (= e!3195170 lt!2112334)))

(declare-fun b!5123241 () Bool)

(declare-fun res!2181609 () Bool)

(declare-fun e!3195169 () Bool)

(assert (=> b!5123241 (=> (not res!2181609) (not e!3195169))))

(declare-fun lt!2112454 () List!59399)

(assert (=> b!5123241 (= res!2181609 (= (size!39543 lt!2112454) (+ (size!39543 lt!2112336) (size!39543 lt!2112334))))))

(declare-fun d!1656182 () Bool)

(assert (=> d!1656182 e!3195169))

(declare-fun res!2181610 () Bool)

(assert (=> d!1656182 (=> (not res!2181610) (not e!3195169))))

(assert (=> d!1656182 (= res!2181610 (= (content!10541 lt!2112454) ((_ map or) (content!10541 lt!2112336) (content!10541 lt!2112334))))))

(assert (=> d!1656182 (= lt!2112454 e!3195170)))

(declare-fun c!880448 () Bool)

(assert (=> d!1656182 (= c!880448 ((_ is Nil!59275) lt!2112336))))

(assert (=> d!1656182 (= (++!13050 lt!2112336 lt!2112334) lt!2112454)))

(declare-fun b!5123242 () Bool)

(assert (=> b!5123242 (= e!3195169 (or (not (= lt!2112334 Nil!59275)) (= lt!2112454 lt!2112336)))))

(declare-fun b!5123240 () Bool)

(assert (=> b!5123240 (= e!3195170 (Cons!59275 (h!65723 lt!2112336) (++!13050 (t!372420 lt!2112336) lt!2112334)))))

(assert (= (and d!1656182 c!880448) b!5123239))

(assert (= (and d!1656182 (not c!880448)) b!5123240))

(assert (= (and d!1656182 res!2181610) b!5123241))

(assert (= (and b!5123241 res!2181609) b!5123242))

(declare-fun m!6185124 () Bool)

(assert (=> b!5123241 m!6185124))

(declare-fun m!6185126 () Bool)

(assert (=> b!5123241 m!6185126))

(assert (=> b!5123241 m!6184808))

(declare-fun m!6185128 () Bool)

(assert (=> d!1656182 m!6185128))

(declare-fun m!6185130 () Bool)

(assert (=> d!1656182 m!6185130))

(assert (=> d!1656182 m!6184814))

(declare-fun m!6185132 () Bool)

(assert (=> b!5123240 m!6185132))

(assert (=> b!5122984 d!1656182))

(declare-fun b!5123243 () Bool)

(declare-fun e!3195172 () List!59399)

(assert (=> b!5123243 (= e!3195172 lt!2112333)))

(declare-fun b!5123245 () Bool)

(declare-fun res!2181611 () Bool)

(declare-fun e!3195171 () Bool)

(assert (=> b!5123245 (=> (not res!2181611) (not e!3195171))))

(declare-fun lt!2112455 () List!59399)

(assert (=> b!5123245 (= res!2181611 (= (size!39543 lt!2112455) (+ (size!39543 testedP!265) (size!39543 lt!2112333))))))

(declare-fun d!1656184 () Bool)

(assert (=> d!1656184 e!3195171))

(declare-fun res!2181612 () Bool)

(assert (=> d!1656184 (=> (not res!2181612) (not e!3195171))))

(assert (=> d!1656184 (= res!2181612 (= (content!10541 lt!2112455) ((_ map or) (content!10541 testedP!265) (content!10541 lt!2112333))))))

(assert (=> d!1656184 (= lt!2112455 e!3195172)))

(declare-fun c!880449 () Bool)

(assert (=> d!1656184 (= c!880449 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656184 (= (++!13050 testedP!265 lt!2112333) lt!2112455)))

(declare-fun b!5123246 () Bool)

(assert (=> b!5123246 (= e!3195171 (or (not (= lt!2112333 Nil!59275)) (= lt!2112455 testedP!265)))))

(declare-fun b!5123244 () Bool)

(assert (=> b!5123244 (= e!3195172 (Cons!59275 (h!65723 testedP!265) (++!13050 (t!372420 testedP!265) lt!2112333)))))

(assert (= (and d!1656184 c!880449) b!5123243))

(assert (= (and d!1656184 (not c!880449)) b!5123244))

(assert (= (and d!1656184 res!2181612) b!5123245))

(assert (= (and b!5123245 res!2181611) b!5123246))

(declare-fun m!6185134 () Bool)

(assert (=> b!5123245 m!6185134))

(assert (=> b!5123245 m!6184634))

(assert (=> b!5123245 m!6184806))

(declare-fun m!6185136 () Bool)

(assert (=> d!1656184 m!6185136))

(assert (=> d!1656184 m!6184798))

(assert (=> d!1656184 m!6184812))

(declare-fun m!6185138 () Bool)

(assert (=> b!5123244 m!6185138))

(assert (=> b!5122984 d!1656184))

(declare-fun d!1656186 () Bool)

(declare-fun c!880450 () Bool)

(assert (=> d!1656186 (= c!880450 ((_ is Cons!59275) testedP!265))))

(declare-fun e!3195173 () (InoxSet Context!7242))

(assert (=> d!1656186 (= (derivationZipper!134 baseZ!46 testedP!265) e!3195173)))

(declare-fun b!5123247 () Bool)

(assert (=> b!5123247 (= e!3195173 (derivationZipper!134 (derivationStepZipper!860 baseZ!46 (h!65723 testedP!265)) (t!372420 testedP!265)))))

(declare-fun b!5123248 () Bool)

(assert (=> b!5123248 (= e!3195173 baseZ!46)))

(assert (= (and d!1656186 c!880450) b!5123247))

(assert (= (and d!1656186 (not c!880450)) b!5123248))

(declare-fun m!6185140 () Bool)

(assert (=> b!5123247 m!6185140))

(assert (=> b!5123247 m!6185140))

(declare-fun m!6185142 () Bool)

(assert (=> b!5123247 m!6185142))

(assert (=> b!5122993 d!1656186))

(declare-fun d!1656188 () Bool)

(declare-fun e!3195176 () Bool)

(assert (=> d!1656188 e!3195176))

(declare-fun res!2181615 () Bool)

(assert (=> d!1656188 (=> res!2181615 e!3195176)))

(declare-fun lt!2112456 () Bool)

(assert (=> d!1656188 (= res!2181615 (not lt!2112456))))

(declare-fun e!3195175 () Bool)

(assert (=> d!1656188 (= lt!2112456 e!3195175)))

(declare-fun res!2181613 () Bool)

(assert (=> d!1656188 (=> res!2181613 e!3195175)))

(assert (=> d!1656188 (= res!2181613 ((_ is Nil!59275) knownP!20))))

(assert (=> d!1656188 (= (isPrefix!5642 knownP!20 input!5745) lt!2112456)))

(declare-fun b!5123249 () Bool)

(declare-fun e!3195174 () Bool)

(assert (=> b!5123249 (= e!3195175 e!3195174)))

(declare-fun res!2181616 () Bool)

(assert (=> b!5123249 (=> (not res!2181616) (not e!3195174))))

(assert (=> b!5123249 (= res!2181616 (not ((_ is Nil!59275) input!5745)))))

(declare-fun b!5123252 () Bool)

(assert (=> b!5123252 (= e!3195176 (>= (size!39543 input!5745) (size!39543 knownP!20)))))

(declare-fun b!5123250 () Bool)

(declare-fun res!2181614 () Bool)

(assert (=> b!5123250 (=> (not res!2181614) (not e!3195174))))

(assert (=> b!5123250 (= res!2181614 (= (head!10953 knownP!20) (head!10953 input!5745)))))

(declare-fun b!5123251 () Bool)

(assert (=> b!5123251 (= e!3195174 (isPrefix!5642 (tail!10088 knownP!20) (tail!10088 input!5745)))))

(assert (= (and d!1656188 (not res!2181613)) b!5123249))

(assert (= (and b!5123249 res!2181616) b!5123250))

(assert (= (and b!5123250 res!2181614) b!5123251))

(assert (= (and d!1656188 (not res!2181615)) b!5123252))

(assert (=> b!5123252 m!6184680))

(assert (=> b!5123252 m!6184636))

(assert (=> b!5123250 m!6184782))

(assert (=> b!5123250 m!6184884))

(assert (=> b!5123251 m!6184764))

(assert (=> b!5123251 m!6184876))

(assert (=> b!5123251 m!6184764))

(assert (=> b!5123251 m!6184876))

(declare-fun m!6185144 () Bool)

(assert (=> b!5123251 m!6185144))

(assert (=> b!5122983 d!1656188))

(declare-fun bs!1193296 () Bool)

(declare-fun b!5123257 () Bool)

(declare-fun d!1656190 () Bool)

(assert (= bs!1193296 (and b!5123257 d!1656190)))

(declare-fun lambda!251536 () Int)

(declare-fun lambda!251535 () Int)

(assert (=> bs!1193296 (not (= lambda!251536 lambda!251535))))

(declare-fun bs!1193297 () Bool)

(declare-fun b!5123258 () Bool)

(assert (= bs!1193297 (and b!5123258 d!1656190)))

(declare-fun lambda!251537 () Int)

(assert (=> bs!1193297 (not (= lambda!251537 lambda!251535))))

(declare-fun bs!1193298 () Bool)

(assert (= bs!1193298 (and b!5123258 b!5123257)))

(assert (=> bs!1193298 (= lambda!251537 lambda!251536)))

(declare-fun lt!2112474 () Bool)

(declare-datatypes ((Option!14704 0))(
  ( (None!14703) (Some!14703 (v!50716 List!59399)) )
))
(declare-fun isEmpty!31949 (Option!14704) Bool)

(declare-fun getLanguageWitness!827 ((InoxSet Context!7242)) Option!14704)

(assert (=> d!1656190 (= lt!2112474 (isEmpty!31949 (getLanguageWitness!827 z!4463)))))

(declare-fun forall!13628 ((InoxSet Context!7242) Int) Bool)

(assert (=> d!1656190 (= lt!2112474 (forall!13628 z!4463 lambda!251535))))

(declare-fun lt!2112476 () Unit!150417)

(declare-fun e!3195183 () Unit!150417)

(assert (=> d!1656190 (= lt!2112476 e!3195183)))

(declare-fun c!880461 () Bool)

(assert (=> d!1656190 (= c!880461 (not (forall!13628 z!4463 lambda!251535)))))

(assert (=> d!1656190 (= (lostCauseZipper!1119 z!4463) lt!2112474)))

(declare-datatypes ((List!59402 0))(
  ( (Nil!59278) (Cons!59278 (h!65726 Context!7242) (t!372425 List!59402)) )
))
(declare-fun lt!2112477 () List!59402)

(declare-fun lt!2112480 () List!59402)

(declare-fun bm!356684 () Bool)

(declare-fun call!356688 () Bool)

(declare-fun exists!1487 (List!59402 Int) Bool)

(assert (=> bm!356684 (= call!356688 (exists!1487 (ite c!880461 lt!2112480 lt!2112477) (ite c!880461 lambda!251536 lambda!251537)))))

(declare-fun Unit!150421 () Unit!150417)

(assert (=> b!5123257 (= e!3195183 Unit!150421)))

(declare-fun call!356689 () List!59402)

(assert (=> b!5123257 (= lt!2112480 call!356689)))

(declare-fun lt!2112478 () Unit!150417)

(declare-fun lemmaNotForallThenExists!344 (List!59402 Int) Unit!150417)

(assert (=> b!5123257 (= lt!2112478 (lemmaNotForallThenExists!344 lt!2112480 lambda!251535))))

(assert (=> b!5123257 call!356688))

(declare-fun lt!2112479 () Unit!150417)

(assert (=> b!5123257 (= lt!2112479 lt!2112478)))

(declare-fun Unit!150422 () Unit!150417)

(assert (=> b!5123258 (= e!3195183 Unit!150422)))

(assert (=> b!5123258 (= lt!2112477 call!356689)))

(declare-fun lt!2112473 () Unit!150417)

(declare-fun lemmaForallThenNotExists!327 (List!59402 Int) Unit!150417)

(assert (=> b!5123258 (= lt!2112473 (lemmaForallThenNotExists!327 lt!2112477 lambda!251535))))

(assert (=> b!5123258 (not call!356688)))

(declare-fun lt!2112475 () Unit!150417)

(assert (=> b!5123258 (= lt!2112475 lt!2112473)))

(declare-fun bm!356683 () Bool)

(declare-fun toList!8270 ((InoxSet Context!7242)) List!59402)

(assert (=> bm!356683 (= call!356689 (toList!8270 z!4463))))

(assert (= (and d!1656190 c!880461) b!5123257))

(assert (= (and d!1656190 (not c!880461)) b!5123258))

(assert (= (or b!5123257 b!5123258) bm!356683))

(assert (= (or b!5123257 b!5123258) bm!356684))

(declare-fun m!6185146 () Bool)

(assert (=> bm!356683 m!6185146))

(declare-fun m!6185148 () Bool)

(assert (=> b!5123257 m!6185148))

(declare-fun m!6185150 () Bool)

(assert (=> d!1656190 m!6185150))

(assert (=> d!1656190 m!6185150))

(declare-fun m!6185152 () Bool)

(assert (=> d!1656190 m!6185152))

(declare-fun m!6185154 () Bool)

(assert (=> d!1656190 m!6185154))

(assert (=> d!1656190 m!6185154))

(declare-fun m!6185156 () Bool)

(assert (=> bm!356684 m!6185156))

(declare-fun m!6185158 () Bool)

(assert (=> b!5123258 m!6185158))

(assert (=> b!5122982 d!1656190))

(declare-fun bs!1193299 () Bool)

(declare-fun d!1656192 () Bool)

(assert (= bs!1193299 (and d!1656192 d!1656178)))

(declare-fun lambda!251538 () Int)

(assert (=> bs!1193299 (= lambda!251538 lambda!251522)))

(assert (=> d!1656192 (= (inv!78773 setElem!30502) (forall!13627 (exprs!4121 setElem!30502) lambda!251538))))

(declare-fun bs!1193300 () Bool)

(assert (= bs!1193300 d!1656192))

(declare-fun m!6185160 () Bool)

(assert (=> bs!1193300 m!6185160))

(assert (=> setNonEmpty!30501 d!1656192))

(declare-fun d!1656194 () Bool)

(declare-fun c!880462 () Bool)

(assert (=> d!1656194 (= c!880462 (isEmpty!31947 lt!2112320))))

(declare-fun e!3195184 () Bool)

(assert (=> d!1656194 (= (matchZipper!905 lt!2112324 lt!2112320) e!3195184)))

(declare-fun b!5123259 () Bool)

(assert (=> b!5123259 (= e!3195184 (nullableZipper!1034 lt!2112324))))

(declare-fun b!5123260 () Bool)

(assert (=> b!5123260 (= e!3195184 (matchZipper!905 (derivationStepZipper!860 lt!2112324 (head!10953 lt!2112320)) (tail!10088 lt!2112320)))))

(assert (= (and d!1656194 c!880462) b!5123259))

(assert (= (and d!1656194 (not c!880462)) b!5123260))

(declare-fun m!6185162 () Bool)

(assert (=> d!1656194 m!6185162))

(declare-fun m!6185164 () Bool)

(assert (=> b!5123259 m!6185164))

(declare-fun m!6185166 () Bool)

(assert (=> b!5123260 m!6185166))

(assert (=> b!5123260 m!6185166))

(declare-fun m!6185168 () Bool)

(assert (=> b!5123260 m!6185168))

(declare-fun m!6185170 () Bool)

(assert (=> b!5123260 m!6185170))

(assert (=> b!5123260 m!6185168))

(assert (=> b!5123260 m!6185170))

(declare-fun m!6185172 () Bool)

(assert (=> b!5123260 m!6185172))

(assert (=> b!5122991 d!1656194))

(declare-fun b!5123261 () Bool)

(declare-fun e!3195186 () List!59399)

(assert (=> b!5123261 (= e!3195186 lt!2112331)))

(declare-fun b!5123263 () Bool)

(declare-fun res!2181617 () Bool)

(declare-fun e!3195185 () Bool)

(assert (=> b!5123263 (=> (not res!2181617) (not e!3195185))))

(declare-fun lt!2112481 () List!59399)

(assert (=> b!5123263 (= res!2181617 (= (size!39543 lt!2112481) (+ (size!39543 testedP!265) (size!39543 lt!2112331))))))

(declare-fun d!1656196 () Bool)

(assert (=> d!1656196 e!3195185))

(declare-fun res!2181618 () Bool)

(assert (=> d!1656196 (=> (not res!2181618) (not e!3195185))))

(assert (=> d!1656196 (= res!2181618 (= (content!10541 lt!2112481) ((_ map or) (content!10541 testedP!265) (content!10541 lt!2112331))))))

(assert (=> d!1656196 (= lt!2112481 e!3195186)))

(declare-fun c!880463 () Bool)

(assert (=> d!1656196 (= c!880463 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656196 (= (++!13050 testedP!265 lt!2112331) lt!2112481)))

(declare-fun b!5123264 () Bool)

(assert (=> b!5123264 (= e!3195185 (or (not (= lt!2112331 Nil!59275)) (= lt!2112481 testedP!265)))))

(declare-fun b!5123262 () Bool)

(assert (=> b!5123262 (= e!3195186 (Cons!59275 (h!65723 testedP!265) (++!13050 (t!372420 testedP!265) lt!2112331)))))

(assert (= (and d!1656196 c!880463) b!5123261))

(assert (= (and d!1656196 (not c!880463)) b!5123262))

(assert (= (and d!1656196 res!2181618) b!5123263))

(assert (= (and b!5123263 res!2181617) b!5123264))

(declare-fun m!6185174 () Bool)

(assert (=> b!5123263 m!6185174))

(assert (=> b!5123263 m!6184634))

(declare-fun m!6185176 () Bool)

(assert (=> b!5123263 m!6185176))

(declare-fun m!6185178 () Bool)

(assert (=> d!1656196 m!6185178))

(assert (=> d!1656196 m!6184798))

(declare-fun m!6185180 () Bool)

(assert (=> d!1656196 m!6185180))

(declare-fun m!6185182 () Bool)

(assert (=> b!5123262 m!6185182))

(assert (=> b!5122973 d!1656196))

(declare-fun d!1656198 () Bool)

(assert (=> d!1656198 (= (head!10953 lt!2112333) (h!65723 lt!2112333))))

(assert (=> b!5122990 d!1656198))

(declare-fun d!1656200 () Bool)

(assert (=> d!1656200 (= lt!2112328 lt!2112331)))

(declare-fun lt!2112482 () Unit!150417)

(assert (=> d!1656200 (= lt!2112482 (choose!37682 testedP!265 lt!2112328 testedP!265 lt!2112331 input!5745))))

(assert (=> d!1656200 (isPrefix!5642 testedP!265 input!5745)))

(assert (=> d!1656200 (= (lemmaSamePrefixThenSameSuffix!2660 testedP!265 lt!2112328 testedP!265 lt!2112331 input!5745) lt!2112482)))

(declare-fun bs!1193301 () Bool)

(assert (= bs!1193301 d!1656200))

(declare-fun m!6185184 () Bool)

(assert (=> bs!1193301 m!6185184))

(assert (=> bs!1193301 m!6184692))

(assert (=> b!5122990 d!1656200))

(declare-fun condSetEmpty!30509 () Bool)

(assert (=> setNonEmpty!30502 (= condSetEmpty!30509 (= setRest!30502 ((as const (Array Context!7242 Bool)) false)))))

(declare-fun setRes!30509 () Bool)

(assert (=> setNonEmpty!30502 (= tp!1429275 setRes!30509)))

(declare-fun setIsEmpty!30509 () Bool)

(assert (=> setIsEmpty!30509 setRes!30509))

(declare-fun e!3195189 () Bool)

(declare-fun setNonEmpty!30509 () Bool)

(declare-fun setElem!30509 () Context!7242)

(declare-fun tp!1429308 () Bool)

(assert (=> setNonEmpty!30509 (= setRes!30509 (and tp!1429308 (inv!78773 setElem!30509) e!3195189))))

(declare-fun setRest!30509 () (InoxSet Context!7242))

(assert (=> setNonEmpty!30509 (= setRest!30502 ((_ map or) (store ((as const (Array Context!7242 Bool)) false) setElem!30509 true) setRest!30509))))

(declare-fun b!5123269 () Bool)

(declare-fun tp!1429307 () Bool)

(assert (=> b!5123269 (= e!3195189 tp!1429307)))

(assert (= (and setNonEmpty!30502 condSetEmpty!30509) setIsEmpty!30509))

(assert (= (and setNonEmpty!30502 (not condSetEmpty!30509)) setNonEmpty!30509))

(assert (= setNonEmpty!30509 b!5123269))

(declare-fun m!6185186 () Bool)

(assert (=> setNonEmpty!30509 m!6185186))

(declare-fun b!5123274 () Bool)

(declare-fun e!3195192 () Bool)

(declare-fun tp!1429313 () Bool)

(declare-fun tp!1429314 () Bool)

(assert (=> b!5123274 (= e!3195192 (and tp!1429313 tp!1429314))))

(assert (=> b!5122971 (= tp!1429281 e!3195192)))

(assert (= (and b!5122971 ((_ is Cons!59276) (exprs!4121 setElem!30501))) b!5123274))

(declare-fun b!5123279 () Bool)

(declare-fun e!3195195 () Bool)

(declare-fun tp!1429317 () Bool)

(assert (=> b!5123279 (= e!3195195 (and tp_is_empty!37747 tp!1429317))))

(assert (=> b!5122975 (= tp!1429276 e!3195195)))

(assert (= (and b!5122975 ((_ is Cons!59275) (t!372420 testedP!265))) b!5123279))

(declare-fun b!5123280 () Bool)

(declare-fun e!3195196 () Bool)

(declare-fun tp!1429318 () Bool)

(declare-fun tp!1429319 () Bool)

(assert (=> b!5123280 (= e!3195196 (and tp!1429318 tp!1429319))))

(assert (=> b!5122992 (= tp!1429279 e!3195196)))

(assert (= (and b!5122992 ((_ is Cons!59276) (exprs!4121 setElem!30502))) b!5123280))

(declare-fun condSetEmpty!30510 () Bool)

(assert (=> setNonEmpty!30501 (= condSetEmpty!30510 (= setRest!30501 ((as const (Array Context!7242 Bool)) false)))))

(declare-fun setRes!30510 () Bool)

(assert (=> setNonEmpty!30501 (= tp!1429277 setRes!30510)))

(declare-fun setIsEmpty!30510 () Bool)

(assert (=> setIsEmpty!30510 setRes!30510))

(declare-fun setNonEmpty!30510 () Bool)

(declare-fun setElem!30510 () Context!7242)

(declare-fun tp!1429321 () Bool)

(declare-fun e!3195197 () Bool)

(assert (=> setNonEmpty!30510 (= setRes!30510 (and tp!1429321 (inv!78773 setElem!30510) e!3195197))))

(declare-fun setRest!30510 () (InoxSet Context!7242))

(assert (=> setNonEmpty!30510 (= setRest!30501 ((_ map or) (store ((as const (Array Context!7242 Bool)) false) setElem!30510 true) setRest!30510))))

(declare-fun b!5123281 () Bool)

(declare-fun tp!1429320 () Bool)

(assert (=> b!5123281 (= e!3195197 tp!1429320)))

(assert (= (and setNonEmpty!30501 condSetEmpty!30510) setIsEmpty!30510))

(assert (= (and setNonEmpty!30501 (not condSetEmpty!30510)) setNonEmpty!30510))

(assert (= setNonEmpty!30510 b!5123281))

(declare-fun m!6185188 () Bool)

(assert (=> setNonEmpty!30510 m!6185188))

(declare-fun b!5123282 () Bool)

(declare-fun e!3195198 () Bool)

(declare-fun tp!1429322 () Bool)

(assert (=> b!5123282 (= e!3195198 (and tp_is_empty!37747 tp!1429322))))

(assert (=> b!5122977 (= tp!1429278 e!3195198)))

(assert (= (and b!5122977 ((_ is Cons!59275) (t!372420 knownP!20))) b!5123282))

(declare-fun b!5123283 () Bool)

(declare-fun e!3195199 () Bool)

(declare-fun tp!1429323 () Bool)

(assert (=> b!5123283 (= e!3195199 (and tp_is_empty!37747 tp!1429323))))

(assert (=> b!5122981 (= tp!1429280 e!3195199)))

(assert (= (and b!5122981 ((_ is Cons!59275) (t!372420 input!5745))) b!5123283))

(check-sat (not b!5123257) (not b!5123269) (not b!5123088) (not b!5123219) (not d!1656080) (not b!5123073) (not d!1656184) (not b!5123110) (not b!5123225) (not d!1656086) (not b!5123090) (not b!5123040) (not b!5123101) (not b!5123283) (not b!5123013) (not d!1656192) (not b!5123279) (not b!5123274) (not d!1656076) (not d!1656066) (not d!1656058) (not d!1656172) (not b!5123236) (not b!5123247) (not b!5123233) (not b!5123240) (not d!1656040) (not b!5123244) (not b!5123094) (not b!5123083) (not b!5123260) (not d!1656074) tp_is_empty!37747 (not d!1656168) (not b!5123234) (not b!5123106) (not b!5123241) (not d!1656190) (not b!5123111) (not d!1656162) (not b!5123280) (not b!5123237) (not b!5123213) (not d!1656090) (not b!5123258) (not b!5123228) (not d!1656174) (not setNonEmpty!30509) (not d!1656170) (not d!1656062) (not b!5123232) (not b!5123245) (not d!1656166) (not b!5123259) (not b!5123221) (not b!5123087) (not b!5123281) (not b!5123252) (not d!1656064) (not b!5123069) (not b!5123071) (not b!5123098) (not b!5123052) (not d!1656068) (not b!5123224) (not d!1656034) (not b!5123263) (not b!5123250) (not b!5123229) (not bm!356684) (not b!5123262) (not b!5123005) (not d!1656178) (not b!5123109) (not b!5123041) (not d!1656094) (not setNonEmpty!30510) (not b!5123093) (not b!5123097) (not d!1656070) (not b!5123104) (not b!5123103) (not b!5123091) (not b!5123282) (not bm!356683) (not b!5123251) (not d!1656200) (not b!5123084) (not d!1656182) (not d!1656196) (not d!1656194) (not b!5123238) (not d!1656072) (not b!5123070))
(check-sat)
(get-model)

(declare-fun bs!1193302 () Bool)

(declare-fun d!1656202 () Bool)

(assert (= bs!1193302 (and d!1656202 d!1656178)))

(declare-fun lambda!251539 () Int)

(assert (=> bs!1193302 (= lambda!251539 lambda!251522)))

(declare-fun bs!1193303 () Bool)

(assert (= bs!1193303 (and d!1656202 d!1656192)))

(assert (=> bs!1193303 (= lambda!251539 lambda!251538)))

(assert (=> d!1656202 (= (inv!78773 setElem!30509) (forall!13627 (exprs!4121 setElem!30509) lambda!251539))))

(declare-fun bs!1193304 () Bool)

(assert (= bs!1193304 d!1656202))

(declare-fun m!6185190 () Bool)

(assert (=> bs!1193304 m!6185190))

(assert (=> setNonEmpty!30509 d!1656202))

(declare-fun d!1656204 () Bool)

(declare-fun c!880466 () Bool)

(assert (=> d!1656204 (= c!880466 ((_ is Nil!59275) lt!2112454))))

(declare-fun e!3195202 () (InoxSet C!28740))

(assert (=> d!1656204 (= (content!10541 lt!2112454) e!3195202)))

(declare-fun b!5123288 () Bool)

(assert (=> b!5123288 (= e!3195202 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123289 () Bool)

(assert (=> b!5123289 (= e!3195202 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112454) true) (content!10541 (t!372420 lt!2112454))))))

(assert (= (and d!1656204 c!880466) b!5123288))

(assert (= (and d!1656204 (not c!880466)) b!5123289))

(declare-fun m!6185192 () Bool)

(assert (=> b!5123289 m!6185192))

(declare-fun m!6185194 () Bool)

(assert (=> b!5123289 m!6185194))

(assert (=> d!1656182 d!1656204))

(declare-fun d!1656206 () Bool)

(declare-fun c!880467 () Bool)

(assert (=> d!1656206 (= c!880467 ((_ is Nil!59275) lt!2112336))))

(declare-fun e!3195203 () (InoxSet C!28740))

(assert (=> d!1656206 (= (content!10541 lt!2112336) e!3195203)))

(declare-fun b!5123290 () Bool)

(assert (=> b!5123290 (= e!3195203 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123291 () Bool)

(assert (=> b!5123291 (= e!3195203 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112336) true) (content!10541 (t!372420 lt!2112336))))))

(assert (= (and d!1656206 c!880467) b!5123290))

(assert (= (and d!1656206 (not c!880467)) b!5123291))

(declare-fun m!6185196 () Bool)

(assert (=> b!5123291 m!6185196))

(declare-fun m!6185198 () Bool)

(assert (=> b!5123291 m!6185198))

(assert (=> d!1656182 d!1656206))

(declare-fun d!1656208 () Bool)

(declare-fun c!880468 () Bool)

(assert (=> d!1656208 (= c!880468 ((_ is Nil!59275) lt!2112334))))

(declare-fun e!3195204 () (InoxSet C!28740))

(assert (=> d!1656208 (= (content!10541 lt!2112334) e!3195204)))

(declare-fun b!5123292 () Bool)

(assert (=> b!5123292 (= e!3195204 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123293 () Bool)

(assert (=> b!5123293 (= e!3195204 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112334) true) (content!10541 (t!372420 lt!2112334))))))

(assert (= (and d!1656208 c!880468) b!5123292))

(assert (= (and d!1656208 (not c!880468)) b!5123293))

(declare-fun m!6185200 () Bool)

(assert (=> b!5123293 m!6185200))

(declare-fun m!6185202 () Bool)

(assert (=> b!5123293 m!6185202))

(assert (=> d!1656182 d!1656208))

(declare-fun d!1656210 () Bool)

(declare-fun c!880469 () Bool)

(assert (=> d!1656210 (= c!880469 ((_ is Nil!59275) lt!2112386))))

(declare-fun e!3195205 () (InoxSet C!28740))

(assert (=> d!1656210 (= (content!10541 lt!2112386) e!3195205)))

(declare-fun b!5123294 () Bool)

(assert (=> b!5123294 (= e!3195205 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123295 () Bool)

(assert (=> b!5123295 (= e!3195205 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112386) true) (content!10541 (t!372420 lt!2112386))))))

(assert (= (and d!1656210 c!880469) b!5123294))

(assert (= (and d!1656210 (not c!880469)) b!5123295))

(declare-fun m!6185204 () Bool)

(assert (=> b!5123295 m!6185204))

(declare-fun m!6185206 () Bool)

(assert (=> b!5123295 m!6185206))

(assert (=> d!1656074 d!1656210))

(declare-fun d!1656212 () Bool)

(declare-fun c!880470 () Bool)

(assert (=> d!1656212 (= c!880470 ((_ is Nil!59275) lt!2112317))))

(declare-fun e!3195206 () (InoxSet C!28740))

(assert (=> d!1656212 (= (content!10541 lt!2112317) e!3195206)))

(declare-fun b!5123296 () Bool)

(assert (=> b!5123296 (= e!3195206 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123297 () Bool)

(assert (=> b!5123297 (= e!3195206 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112317) true) (content!10541 (t!372420 lt!2112317))))))

(assert (= (and d!1656212 c!880470) b!5123296))

(assert (= (and d!1656212 (not c!880470)) b!5123297))

(declare-fun m!6185208 () Bool)

(assert (=> b!5123297 m!6185208))

(declare-fun m!6185210 () Bool)

(assert (=> b!5123297 m!6185210))

(assert (=> d!1656074 d!1656212))

(declare-fun d!1656214 () Bool)

(declare-fun c!880471 () Bool)

(assert (=> d!1656214 (= c!880471 ((_ is Nil!59275) lt!2112320))))

(declare-fun e!3195207 () (InoxSet C!28740))

(assert (=> d!1656214 (= (content!10541 lt!2112320) e!3195207)))

(declare-fun b!5123298 () Bool)

(assert (=> b!5123298 (= e!3195207 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123299 () Bool)

(assert (=> b!5123299 (= e!3195207 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112320) true) (content!10541 (t!372420 lt!2112320))))))

(assert (= (and d!1656214 c!880471) b!5123298))

(assert (= (and d!1656214 (not c!880471)) b!5123299))

(declare-fun m!6185212 () Bool)

(assert (=> b!5123299 m!6185212))

(declare-fun m!6185214 () Bool)

(assert (=> b!5123299 m!6185214))

(assert (=> d!1656074 d!1656214))

(declare-fun d!1656216 () Bool)

(declare-fun e!3195210 () Bool)

(assert (=> d!1656216 e!3195210))

(declare-fun res!2181621 () Bool)

(assert (=> d!1656216 (=> res!2181621 e!3195210)))

(declare-fun lt!2112483 () Bool)

(assert (=> d!1656216 (= res!2181621 (not lt!2112483))))

(declare-fun e!3195209 () Bool)

(assert (=> d!1656216 (= lt!2112483 e!3195209)))

(declare-fun res!2181619 () Bool)

(assert (=> d!1656216 (=> res!2181619 e!3195209)))

(assert (=> d!1656216 (= res!2181619 ((_ is Nil!59275) (tail!10088 knownP!20)))))

(assert (=> d!1656216 (= (isPrefix!5642 (tail!10088 knownP!20) (tail!10088 input!5745)) lt!2112483)))

(declare-fun b!5123300 () Bool)

(declare-fun e!3195208 () Bool)

(assert (=> b!5123300 (= e!3195209 e!3195208)))

(declare-fun res!2181622 () Bool)

(assert (=> b!5123300 (=> (not res!2181622) (not e!3195208))))

(assert (=> b!5123300 (= res!2181622 (not ((_ is Nil!59275) (tail!10088 input!5745))))))

(declare-fun b!5123303 () Bool)

(assert (=> b!5123303 (= e!3195210 (>= (size!39543 (tail!10088 input!5745)) (size!39543 (tail!10088 knownP!20))))))

(declare-fun b!5123301 () Bool)

(declare-fun res!2181620 () Bool)

(assert (=> b!5123301 (=> (not res!2181620) (not e!3195208))))

(assert (=> b!5123301 (= res!2181620 (= (head!10953 (tail!10088 knownP!20)) (head!10953 (tail!10088 input!5745))))))

(declare-fun b!5123302 () Bool)

(assert (=> b!5123302 (= e!3195208 (isPrefix!5642 (tail!10088 (tail!10088 knownP!20)) (tail!10088 (tail!10088 input!5745))))))

(assert (= (and d!1656216 (not res!2181619)) b!5123300))

(assert (= (and b!5123300 res!2181622) b!5123301))

(assert (= (and b!5123301 res!2181620) b!5123302))

(assert (= (and d!1656216 (not res!2181621)) b!5123303))

(assert (=> b!5123303 m!6184876))

(declare-fun m!6185216 () Bool)

(assert (=> b!5123303 m!6185216))

(assert (=> b!5123303 m!6184764))

(declare-fun m!6185218 () Bool)

(assert (=> b!5123303 m!6185218))

(assert (=> b!5123301 m!6184764))

(declare-fun m!6185220 () Bool)

(assert (=> b!5123301 m!6185220))

(assert (=> b!5123301 m!6184876))

(declare-fun m!6185222 () Bool)

(assert (=> b!5123301 m!6185222))

(assert (=> b!5123302 m!6184764))

(declare-fun m!6185224 () Bool)

(assert (=> b!5123302 m!6185224))

(assert (=> b!5123302 m!6184876))

(declare-fun m!6185226 () Bool)

(assert (=> b!5123302 m!6185226))

(assert (=> b!5123302 m!6185224))

(assert (=> b!5123302 m!6185226))

(declare-fun m!6185228 () Bool)

(assert (=> b!5123302 m!6185228))

(assert (=> b!5123251 d!1656216))

(declare-fun d!1656218 () Bool)

(assert (=> d!1656218 (= (tail!10088 knownP!20) (t!372420 knownP!20))))

(assert (=> b!5123251 d!1656218))

(declare-fun d!1656220 () Bool)

(assert (=> d!1656220 (= (tail!10088 input!5745) (t!372420 input!5745))))

(assert (=> b!5123251 d!1656220))

(declare-fun d!1656222 () Bool)

(declare-fun c!880472 () Bool)

(assert (=> d!1656222 (= c!880472 ((_ is Nil!59275) lt!2112451))))

(declare-fun e!3195211 () (InoxSet C!28740))

(assert (=> d!1656222 (= (content!10541 lt!2112451) e!3195211)))

(declare-fun b!5123304 () Bool)

(assert (=> b!5123304 (= e!3195211 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123305 () Bool)

(assert (=> b!5123305 (= e!3195211 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112451) true) (content!10541 (t!372420 lt!2112451))))))

(assert (= (and d!1656222 c!880472) b!5123304))

(assert (= (and d!1656222 (not c!880472)) b!5123305))

(declare-fun m!6185230 () Bool)

(assert (=> b!5123305 m!6185230))

(declare-fun m!6185232 () Bool)

(assert (=> b!5123305 m!6185232))

(assert (=> d!1656174 d!1656222))

(declare-fun d!1656224 () Bool)

(declare-fun c!880473 () Bool)

(assert (=> d!1656224 (= c!880473 ((_ is Nil!59275) testedP!265))))

(declare-fun e!3195212 () (InoxSet C!28740))

(assert (=> d!1656224 (= (content!10541 testedP!265) e!3195212)))

(declare-fun b!5123306 () Bool)

(assert (=> b!5123306 (= e!3195212 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123307 () Bool)

(assert (=> b!5123307 (= e!3195212 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 testedP!265) true) (content!10541 (t!372420 testedP!265))))))

(assert (= (and d!1656224 c!880473) b!5123306))

(assert (= (and d!1656224 (not c!880473)) b!5123307))

(declare-fun m!6185234 () Bool)

(assert (=> b!5123307 m!6185234))

(declare-fun m!6185236 () Bool)

(assert (=> b!5123307 m!6185236))

(assert (=> d!1656174 d!1656224))

(assert (=> d!1656174 d!1656212))

(declare-fun b!5123308 () Bool)

(declare-fun e!3195214 () List!59399)

(assert (=> b!5123308 (= e!3195214 lt!2112334)))

(declare-fun b!5123310 () Bool)

(declare-fun res!2181623 () Bool)

(declare-fun e!3195213 () Bool)

(assert (=> b!5123310 (=> (not res!2181623) (not e!3195213))))

(declare-fun lt!2112484 () List!59399)

(assert (=> b!5123310 (= res!2181623 (= (size!39543 lt!2112484) (+ (size!39543 (t!372420 lt!2112333)) (size!39543 lt!2112334))))))

(declare-fun d!1656226 () Bool)

(assert (=> d!1656226 e!3195213))

(declare-fun res!2181624 () Bool)

(assert (=> d!1656226 (=> (not res!2181624) (not e!3195213))))

(assert (=> d!1656226 (= res!2181624 (= (content!10541 lt!2112484) ((_ map or) (content!10541 (t!372420 lt!2112333)) (content!10541 lt!2112334))))))

(assert (=> d!1656226 (= lt!2112484 e!3195214)))

(declare-fun c!880474 () Bool)

(assert (=> d!1656226 (= c!880474 ((_ is Nil!59275) (t!372420 lt!2112333)))))

(assert (=> d!1656226 (= (++!13050 (t!372420 lt!2112333) lt!2112334) lt!2112484)))

(declare-fun b!5123311 () Bool)

(assert (=> b!5123311 (= e!3195213 (or (not (= lt!2112334 Nil!59275)) (= lt!2112484 (t!372420 lt!2112333))))))

(declare-fun b!5123309 () Bool)

(assert (=> b!5123309 (= e!3195214 (Cons!59275 (h!65723 (t!372420 lt!2112333)) (++!13050 (t!372420 (t!372420 lt!2112333)) lt!2112334)))))

(assert (= (and d!1656226 c!880474) b!5123308))

(assert (= (and d!1656226 (not c!880474)) b!5123309))

(assert (= (and d!1656226 res!2181624) b!5123310))

(assert (= (and b!5123310 res!2181623) b!5123311))

(declare-fun m!6185238 () Bool)

(assert (=> b!5123310 m!6185238))

(declare-fun m!6185240 () Bool)

(assert (=> b!5123310 m!6185240))

(assert (=> b!5123310 m!6184808))

(declare-fun m!6185242 () Bool)

(assert (=> d!1656226 m!6185242))

(declare-fun m!6185244 () Bool)

(assert (=> d!1656226 m!6185244))

(assert (=> d!1656226 m!6184814))

(declare-fun m!6185246 () Bool)

(assert (=> b!5123309 m!6185246))

(assert (=> b!5123087 d!1656226))

(assert (=> b!5123238 d!1656060))

(assert (=> b!5123238 d!1656026))

(declare-fun bs!1193305 () Bool)

(declare-fun d!1656228 () Bool)

(assert (= bs!1193305 (and d!1656228 d!1656190)))

(declare-fun lambda!251542 () Int)

(assert (=> bs!1193305 (not (= lambda!251542 lambda!251535))))

(declare-fun bs!1193306 () Bool)

(assert (= bs!1193306 (and d!1656228 b!5123257)))

(assert (=> bs!1193306 (not (= lambda!251542 lambda!251536))))

(declare-fun bs!1193307 () Bool)

(assert (= bs!1193307 (and d!1656228 b!5123258)))

(assert (=> bs!1193307 (not (= lambda!251542 lambda!251537))))

(assert (=> d!1656228 true))

(declare-fun order!26795 () Int)

(declare-fun dynLambda!23606 (Int Int) Int)

(assert (=> d!1656228 (< (dynLambda!23606 order!26795 (ite c!880461 lambda!251536 lambda!251537)) (dynLambda!23606 order!26795 lambda!251542))))

(declare-fun forall!13629 (List!59402 Int) Bool)

(assert (=> d!1656228 (= (exists!1487 (ite c!880461 lt!2112480 lt!2112477) (ite c!880461 lambda!251536 lambda!251537)) (not (forall!13629 (ite c!880461 lt!2112480 lt!2112477) lambda!251542)))))

(declare-fun bs!1193308 () Bool)

(assert (= bs!1193308 d!1656228))

(declare-fun m!6185248 () Bool)

(assert (=> bs!1193308 m!6185248))

(assert (=> bm!356684 d!1656228))

(declare-fun bs!1193309 () Bool)

(declare-fun d!1656230 () Bool)

(assert (= bs!1193309 (and d!1656230 d!1656190)))

(declare-fun lambda!251545 () Int)

(assert (=> bs!1193309 (not (= lambda!251545 lambda!251535))))

(declare-fun bs!1193310 () Bool)

(assert (= bs!1193310 (and d!1656230 b!5123257)))

(assert (=> bs!1193310 (not (= lambda!251545 lambda!251536))))

(declare-fun bs!1193311 () Bool)

(assert (= bs!1193311 (and d!1656230 b!5123258)))

(assert (=> bs!1193311 (not (= lambda!251545 lambda!251537))))

(declare-fun bs!1193312 () Bool)

(assert (= bs!1193312 (and d!1656230 d!1656228)))

(assert (=> bs!1193312 (not (= lambda!251545 lambda!251542))))

(declare-fun exists!1488 ((InoxSet Context!7242) Int) Bool)

(assert (=> d!1656230 (= (nullableZipper!1034 z!4463) (exists!1488 z!4463 lambda!251545))))

(declare-fun bs!1193313 () Bool)

(assert (= bs!1193313 d!1656230))

(declare-fun m!6185250 () Bool)

(assert (=> bs!1193313 m!6185250))

(assert (=> b!5123040 d!1656230))

(declare-fun d!1656232 () Bool)

(declare-fun lt!2112485 () Int)

(assert (=> d!1656232 (>= lt!2112485 0)))

(declare-fun e!3195215 () Int)

(assert (=> d!1656232 (= lt!2112485 e!3195215)))

(declare-fun c!880477 () Bool)

(assert (=> d!1656232 (= c!880477 ((_ is Nil!59275) lt!2112377))))

(assert (=> d!1656232 (= (size!39543 lt!2112377) lt!2112485)))

(declare-fun b!5123314 () Bool)

(assert (=> b!5123314 (= e!3195215 0)))

(declare-fun b!5123315 () Bool)

(assert (=> b!5123315 (= e!3195215 (+ 1 (size!39543 (t!372420 lt!2112377))))))

(assert (= (and d!1656232 c!880477) b!5123314))

(assert (= (and d!1656232 (not c!880477)) b!5123315))

(declare-fun m!6185252 () Bool)

(assert (=> b!5123315 m!6185252))

(assert (=> b!5123084 d!1656232))

(assert (=> b!5123084 d!1656026))

(declare-fun d!1656234 () Bool)

(declare-fun lt!2112486 () Int)

(assert (=> d!1656234 (>= lt!2112486 0)))

(declare-fun e!3195216 () Int)

(assert (=> d!1656234 (= lt!2112486 e!3195216)))

(declare-fun c!880478 () Bool)

(assert (=> d!1656234 (= c!880478 ((_ is Nil!59275) lt!2112328))))

(assert (=> d!1656234 (= (size!39543 lt!2112328) lt!2112486)))

(declare-fun b!5123316 () Bool)

(assert (=> b!5123316 (= e!3195216 0)))

(declare-fun b!5123317 () Bool)

(assert (=> b!5123317 (= e!3195216 (+ 1 (size!39543 (t!372420 lt!2112328))))))

(assert (= (and d!1656234 c!880478) b!5123316))

(assert (= (and d!1656234 (not c!880478)) b!5123317))

(declare-fun m!6185254 () Bool)

(assert (=> b!5123317 m!6185254))

(assert (=> b!5123084 d!1656234))

(assert (=> b!5123071 d!1656032))

(assert (=> b!5123071 d!1656026))

(declare-fun d!1656236 () Bool)

(assert (=> d!1656236 (= (head!10953 testedP!265) (h!65723 testedP!265))))

(assert (=> b!5123236 d!1656236))

(declare-fun d!1656238 () Bool)

(assert (=> d!1656238 (= (head!10953 input!5745) (h!65723 input!5745))))

(assert (=> b!5123236 d!1656238))

(declare-fun d!1656240 () Bool)

(declare-fun c!880479 () Bool)

(assert (=> d!1656240 (= c!880479 ((_ is Cons!59275) (++!13050 testedP!265 (Cons!59275 lt!2112326 Nil!59275))))))

(declare-fun e!3195217 () (InoxSet Context!7242))

(assert (=> d!1656240 (= (derivationZipper!134 baseZ!46 (++!13050 testedP!265 (Cons!59275 lt!2112326 Nil!59275))) e!3195217)))

(declare-fun b!5123318 () Bool)

(assert (=> b!5123318 (= e!3195217 (derivationZipper!134 (derivationStepZipper!860 baseZ!46 (h!65723 (++!13050 testedP!265 (Cons!59275 lt!2112326 Nil!59275)))) (t!372420 (++!13050 testedP!265 (Cons!59275 lt!2112326 Nil!59275)))))))

(declare-fun b!5123319 () Bool)

(assert (=> b!5123319 (= e!3195217 baseZ!46)))

(assert (= (and d!1656240 c!880479) b!5123318))

(assert (= (and d!1656240 (not c!880479)) b!5123319))

(declare-fun m!6185256 () Bool)

(assert (=> b!5123318 m!6185256))

(assert (=> b!5123318 m!6185256))

(declare-fun m!6185258 () Bool)

(assert (=> b!5123318 m!6185258))

(assert (=> d!1656166 d!1656240))

(assert (=> d!1656166 d!1656186))

(declare-fun b!5123320 () Bool)

(declare-fun e!3195219 () List!59399)

(assert (=> b!5123320 (= e!3195219 (Cons!59275 lt!2112326 Nil!59275))))

(declare-fun b!5123322 () Bool)

(declare-fun res!2181625 () Bool)

(declare-fun e!3195218 () Bool)

(assert (=> b!5123322 (=> (not res!2181625) (not e!3195218))))

(declare-fun lt!2112487 () List!59399)

(assert (=> b!5123322 (= res!2181625 (= (size!39543 lt!2112487) (+ (size!39543 testedP!265) (size!39543 (Cons!59275 lt!2112326 Nil!59275)))))))

(declare-fun d!1656242 () Bool)

(assert (=> d!1656242 e!3195218))

(declare-fun res!2181626 () Bool)

(assert (=> d!1656242 (=> (not res!2181626) (not e!3195218))))

(assert (=> d!1656242 (= res!2181626 (= (content!10541 lt!2112487) ((_ map or) (content!10541 testedP!265) (content!10541 (Cons!59275 lt!2112326 Nil!59275)))))))

(assert (=> d!1656242 (= lt!2112487 e!3195219)))

(declare-fun c!880480 () Bool)

(assert (=> d!1656242 (= c!880480 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656242 (= (++!13050 testedP!265 (Cons!59275 lt!2112326 Nil!59275)) lt!2112487)))

(declare-fun b!5123323 () Bool)

(assert (=> b!5123323 (= e!3195218 (or (not (= (Cons!59275 lt!2112326 Nil!59275) Nil!59275)) (= lt!2112487 testedP!265)))))

(declare-fun b!5123321 () Bool)

(assert (=> b!5123321 (= e!3195219 (Cons!59275 (h!65723 testedP!265) (++!13050 (t!372420 testedP!265) (Cons!59275 lt!2112326 Nil!59275))))))

(assert (= (and d!1656242 c!880480) b!5123320))

(assert (= (and d!1656242 (not c!880480)) b!5123321))

(assert (= (and d!1656242 res!2181626) b!5123322))

(assert (= (and b!5123322 res!2181625) b!5123323))

(declare-fun m!6185260 () Bool)

(assert (=> b!5123322 m!6185260))

(assert (=> b!5123322 m!6184634))

(declare-fun m!6185262 () Bool)

(assert (=> b!5123322 m!6185262))

(declare-fun m!6185264 () Bool)

(assert (=> d!1656242 m!6185264))

(assert (=> d!1656242 m!6184798))

(declare-fun m!6185266 () Bool)

(assert (=> d!1656242 m!6185266))

(declare-fun m!6185268 () Bool)

(assert (=> b!5123321 m!6185268))

(assert (=> d!1656166 d!1656242))

(assert (=> d!1656166 d!1656094))

(declare-fun d!1656244 () Bool)

(assert (=> d!1656244 (= (derivationZipper!134 baseZ!46 (++!13050 testedP!265 (Cons!59275 lt!2112326 Nil!59275))) (derivationStepZipper!860 z!4463 lt!2112326))))

(assert (=> d!1656244 true))

(declare-fun _$83!245 () Unit!150417)

(assert (=> d!1656244 (= (choose!37684 baseZ!46 z!4463 testedP!265 lt!2112326) _$83!245)))

(declare-fun bs!1193314 () Bool)

(assert (= bs!1193314 d!1656244))

(assert (=> bs!1193314 m!6185086))

(assert (=> bs!1193314 m!6185086))

(assert (=> bs!1193314 m!6185090))

(assert (=> bs!1193314 m!6184664))

(assert (=> d!1656166 d!1656244))

(declare-fun d!1656246 () Bool)

(declare-fun lt!2112488 () Int)

(assert (=> d!1656246 (>= lt!2112488 0)))

(declare-fun e!3195220 () Int)

(assert (=> d!1656246 (= lt!2112488 e!3195220)))

(declare-fun c!880482 () Bool)

(assert (=> d!1656246 (= c!880482 ((_ is Nil!59275) (t!372420 knownP!20)))))

(assert (=> d!1656246 (= (size!39543 (t!372420 knownP!20)) lt!2112488)))

(declare-fun b!5123324 () Bool)

(assert (=> b!5123324 (= e!3195220 0)))

(declare-fun b!5123325 () Bool)

(assert (=> b!5123325 (= e!3195220 (+ 1 (size!39543 (t!372420 (t!372420 knownP!20)))))))

(assert (= (and d!1656246 c!880482) b!5123324))

(assert (= (and d!1656246 (not c!880482)) b!5123325))

(declare-fun m!6185270 () Bool)

(assert (=> b!5123325 m!6185270))

(assert (=> b!5123013 d!1656246))

(declare-fun bs!1193315 () Bool)

(declare-fun d!1656248 () Bool)

(assert (= bs!1193315 (and d!1656248 d!1656190)))

(declare-fun lambda!251548 () Int)

(assert (=> bs!1193315 (not (= lambda!251548 lambda!251535))))

(declare-fun bs!1193316 () Bool)

(assert (= bs!1193316 (and d!1656248 d!1656230)))

(assert (=> bs!1193316 (not (= lambda!251548 lambda!251545))))

(declare-fun bs!1193317 () Bool)

(assert (= bs!1193317 (and d!1656248 b!5123258)))

(assert (=> bs!1193317 (not (= lambda!251548 lambda!251537))))

(declare-fun bs!1193318 () Bool)

(assert (= bs!1193318 (and d!1656248 b!5123257)))

(assert (=> bs!1193318 (not (= lambda!251548 lambda!251536))))

(declare-fun bs!1193319 () Bool)

(assert (= bs!1193319 (and d!1656248 d!1656228)))

(assert (=> bs!1193319 (= (= lambda!251535 (ite c!880461 lambda!251536 lambda!251537)) (= lambda!251548 lambda!251542))))

(assert (=> d!1656248 true))

(assert (=> d!1656248 (< (dynLambda!23606 order!26795 lambda!251535) (dynLambda!23606 order!26795 lambda!251548))))

(assert (=> d!1656248 (not (exists!1487 lt!2112477 lambda!251548))))

(declare-fun lt!2112491 () Unit!150417)

(declare-fun choose!37686 (List!59402 Int) Unit!150417)

(assert (=> d!1656248 (= lt!2112491 (choose!37686 lt!2112477 lambda!251535))))

(assert (=> d!1656248 (forall!13629 lt!2112477 lambda!251535)))

(assert (=> d!1656248 (= (lemmaForallThenNotExists!327 lt!2112477 lambda!251535) lt!2112491)))

(declare-fun bs!1193320 () Bool)

(assert (= bs!1193320 d!1656248))

(declare-fun m!6185272 () Bool)

(assert (=> bs!1193320 m!6185272))

(declare-fun m!6185274 () Bool)

(assert (=> bs!1193320 m!6185274))

(declare-fun m!6185276 () Bool)

(assert (=> bs!1193320 m!6185276))

(assert (=> b!5123258 d!1656248))

(declare-fun d!1656250 () Bool)

(declare-fun lt!2112492 () List!59399)

(assert (=> d!1656250 (= (++!13050 (t!372420 testedP!265) lt!2112492) (tail!10088 input!5745))))

(declare-fun e!3195223 () List!59399)

(assert (=> d!1656250 (= lt!2112492 e!3195223)))

(declare-fun c!880483 () Bool)

(assert (=> d!1656250 (= c!880483 ((_ is Cons!59275) (t!372420 testedP!265)))))

(assert (=> d!1656250 (>= (size!39543 (tail!10088 input!5745)) (size!39543 (t!372420 testedP!265)))))

(assert (=> d!1656250 (= (getSuffix!3314 (tail!10088 input!5745) (t!372420 testedP!265)) lt!2112492)))

(declare-fun b!5123326 () Bool)

(assert (=> b!5123326 (= e!3195223 (getSuffix!3314 (tail!10088 (tail!10088 input!5745)) (t!372420 (t!372420 testedP!265))))))

(declare-fun b!5123327 () Bool)

(assert (=> b!5123327 (= e!3195223 (tail!10088 input!5745))))

(assert (= (and d!1656250 c!880483) b!5123326))

(assert (= (and d!1656250 (not c!880483)) b!5123327))

(declare-fun m!6185278 () Bool)

(assert (=> d!1656250 m!6185278))

(assert (=> d!1656250 m!6184876))

(assert (=> d!1656250 m!6185216))

(assert (=> d!1656250 m!6184708))

(assert (=> b!5123326 m!6184876))

(assert (=> b!5123326 m!6185226))

(assert (=> b!5123326 m!6185226))

(declare-fun m!6185280 () Bool)

(assert (=> b!5123326 m!6185280))

(assert (=> b!5123106 d!1656250))

(assert (=> b!5123106 d!1656220))

(declare-fun bs!1193321 () Bool)

(declare-fun d!1656252 () Bool)

(assert (= bs!1193321 (and d!1656252 d!1656248)))

(declare-fun lambda!251549 () Int)

(assert (=> bs!1193321 (not (= lambda!251549 lambda!251548))))

(declare-fun bs!1193322 () Bool)

(assert (= bs!1193322 (and d!1656252 d!1656190)))

(assert (=> bs!1193322 (not (= lambda!251549 lambda!251535))))

(declare-fun bs!1193323 () Bool)

(assert (= bs!1193323 (and d!1656252 d!1656230)))

(assert (=> bs!1193323 (= lambda!251549 lambda!251545)))

(declare-fun bs!1193324 () Bool)

(assert (= bs!1193324 (and d!1656252 b!5123258)))

(assert (=> bs!1193324 (not (= lambda!251549 lambda!251537))))

(declare-fun bs!1193325 () Bool)

(assert (= bs!1193325 (and d!1656252 b!5123257)))

(assert (=> bs!1193325 (not (= lambda!251549 lambda!251536))))

(declare-fun bs!1193326 () Bool)

(assert (= bs!1193326 (and d!1656252 d!1656228)))

(assert (=> bs!1193326 (not (= lambda!251549 lambda!251542))))

(assert (=> d!1656252 (= (nullableZipper!1034 baseZ!46) (exists!1488 baseZ!46 lambda!251549))))

(declare-fun bs!1193327 () Bool)

(assert (= bs!1193327 d!1656252))

(declare-fun m!6185282 () Bool)

(assert (=> bs!1193327 m!6185282))

(assert (=> b!5123090 d!1656252))

(assert (=> b!5123069 d!1656236))

(declare-fun d!1656254 () Bool)

(assert (=> d!1656254 (= (head!10953 knownP!20) (h!65723 knownP!20))))

(assert (=> b!5123069 d!1656254))

(declare-fun d!1656256 () Bool)

(declare-fun choose!37687 ((InoxSet Context!7242) Int) (InoxSet Context!7242))

(assert (=> d!1656256 (= (flatMap!365 z!4463 lambda!251519) (choose!37687 z!4463 lambda!251519))))

(declare-fun bs!1193328 () Bool)

(assert (= bs!1193328 d!1656256))

(declare-fun m!6185284 () Bool)

(assert (=> bs!1193328 m!6185284))

(assert (=> d!1656094 d!1656256))

(declare-fun d!1656258 () Bool)

(declare-fun lt!2112493 () List!59399)

(assert (=> d!1656258 (= (++!13050 (t!372420 knownP!20) lt!2112493) (tail!10088 input!5745))))

(declare-fun e!3195224 () List!59399)

(assert (=> d!1656258 (= lt!2112493 e!3195224)))

(declare-fun c!880484 () Bool)

(assert (=> d!1656258 (= c!880484 ((_ is Cons!59275) (t!372420 knownP!20)))))

(assert (=> d!1656258 (>= (size!39543 (tail!10088 input!5745)) (size!39543 (t!372420 knownP!20)))))

(assert (=> d!1656258 (= (getSuffix!3314 (tail!10088 input!5745) (t!372420 knownP!20)) lt!2112493)))

(declare-fun b!5123328 () Bool)

(assert (=> b!5123328 (= e!3195224 (getSuffix!3314 (tail!10088 (tail!10088 input!5745)) (t!372420 (t!372420 knownP!20))))))

(declare-fun b!5123329 () Bool)

(assert (=> b!5123329 (= e!3195224 (tail!10088 input!5745))))

(assert (= (and d!1656258 c!880484) b!5123328))

(assert (= (and d!1656258 (not c!880484)) b!5123329))

(declare-fun m!6185286 () Bool)

(assert (=> d!1656258 m!6185286))

(assert (=> d!1656258 m!6184876))

(assert (=> d!1656258 m!6185216))

(assert (=> d!1656258 m!6184710))

(assert (=> b!5123328 m!6184876))

(assert (=> b!5123328 m!6185226))

(assert (=> b!5123328 m!6185226))

(declare-fun m!6185288 () Bool)

(assert (=> b!5123328 m!6185288))

(assert (=> b!5123221 d!1656258))

(assert (=> b!5123221 d!1656220))

(declare-fun d!1656260 () Bool)

(declare-fun c!880485 () Bool)

(assert (=> d!1656260 (= c!880485 ((_ is Nil!59275) lt!2112378))))

(declare-fun e!3195225 () (InoxSet C!28740))

(assert (=> d!1656260 (= (content!10541 lt!2112378) e!3195225)))

(declare-fun b!5123330 () Bool)

(assert (=> b!5123330 (= e!3195225 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123331 () Bool)

(assert (=> b!5123331 (= e!3195225 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112378) true) (content!10541 (t!372420 lt!2112378))))))

(assert (= (and d!1656260 c!880485) b!5123330))

(assert (= (and d!1656260 (not c!880485)) b!5123331))

(declare-fun m!6185290 () Bool)

(assert (=> b!5123331 m!6185290))

(declare-fun m!6185292 () Bool)

(assert (=> b!5123331 m!6185292))

(assert (=> d!1656064 d!1656260))

(declare-fun d!1656262 () Bool)

(declare-fun c!880486 () Bool)

(assert (=> d!1656262 (= c!880486 ((_ is Nil!59275) lt!2112333))))

(declare-fun e!3195226 () (InoxSet C!28740))

(assert (=> d!1656262 (= (content!10541 lt!2112333) e!3195226)))

(declare-fun b!5123332 () Bool)

(assert (=> b!5123332 (= e!3195226 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123333 () Bool)

(assert (=> b!5123333 (= e!3195226 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112333) true) (content!10541 (t!372420 lt!2112333))))))

(assert (= (and d!1656262 c!880486) b!5123332))

(assert (= (and d!1656262 (not c!880486)) b!5123333))

(declare-fun m!6185294 () Bool)

(assert (=> b!5123333 m!6185294))

(assert (=> b!5123333 m!6185244))

(assert (=> d!1656064 d!1656262))

(assert (=> d!1656064 d!1656208))

(declare-fun b!5123334 () Bool)

(declare-fun e!3195228 () List!59399)

(assert (=> b!5123334 (= e!3195228 lt!2112390)))

(declare-fun b!5123336 () Bool)

(declare-fun res!2181627 () Bool)

(declare-fun e!3195227 () Bool)

(assert (=> b!5123336 (=> (not res!2181627) (not e!3195227))))

(declare-fun lt!2112494 () List!59399)

(assert (=> b!5123336 (= res!2181627 (= (size!39543 lt!2112494) (+ (size!39543 testedP!265) (size!39543 lt!2112390))))))

(declare-fun d!1656264 () Bool)

(assert (=> d!1656264 e!3195227))

(declare-fun res!2181628 () Bool)

(assert (=> d!1656264 (=> (not res!2181628) (not e!3195227))))

(assert (=> d!1656264 (= res!2181628 (= (content!10541 lt!2112494) ((_ map or) (content!10541 testedP!265) (content!10541 lt!2112390))))))

(assert (=> d!1656264 (= lt!2112494 e!3195228)))

(declare-fun c!880487 () Bool)

(assert (=> d!1656264 (= c!880487 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656264 (= (++!13050 testedP!265 lt!2112390) lt!2112494)))

(declare-fun b!5123337 () Bool)

(assert (=> b!5123337 (= e!3195227 (or (not (= lt!2112390 Nil!59275)) (= lt!2112494 testedP!265)))))

(declare-fun b!5123335 () Bool)

(assert (=> b!5123335 (= e!3195228 (Cons!59275 (h!65723 testedP!265) (++!13050 (t!372420 testedP!265) lt!2112390)))))

(assert (= (and d!1656264 c!880487) b!5123334))

(assert (= (and d!1656264 (not c!880487)) b!5123335))

(assert (= (and d!1656264 res!2181628) b!5123336))

(assert (= (and b!5123336 res!2181627) b!5123337))

(declare-fun m!6185296 () Bool)

(assert (=> b!5123336 m!6185296))

(assert (=> b!5123336 m!6184634))

(declare-fun m!6185298 () Bool)

(assert (=> b!5123336 m!6185298))

(declare-fun m!6185300 () Bool)

(assert (=> d!1656264 m!6185300))

(assert (=> d!1656264 m!6184798))

(declare-fun m!6185302 () Bool)

(assert (=> d!1656264 m!6185302))

(declare-fun m!6185304 () Bool)

(assert (=> b!5123335 m!6185304))

(assert (=> d!1656086 d!1656264))

(assert (=> d!1656086 d!1656060))

(assert (=> d!1656086 d!1656026))

(declare-fun d!1656266 () Bool)

(declare-fun lt!2112495 () Int)

(assert (=> d!1656266 (>= lt!2112495 0)))

(declare-fun e!3195229 () Int)

(assert (=> d!1656266 (= lt!2112495 e!3195229)))

(declare-fun c!880488 () Bool)

(assert (=> d!1656266 (= c!880488 ((_ is Nil!59275) lt!2112454))))

(assert (=> d!1656266 (= (size!39543 lt!2112454) lt!2112495)))

(declare-fun b!5123338 () Bool)

(assert (=> b!5123338 (= e!3195229 0)))

(declare-fun b!5123339 () Bool)

(assert (=> b!5123339 (= e!3195229 (+ 1 (size!39543 (t!372420 lt!2112454))))))

(assert (= (and d!1656266 c!880488) b!5123338))

(assert (= (and d!1656266 (not c!880488)) b!5123339))

(declare-fun m!6185306 () Bool)

(assert (=> b!5123339 m!6185306))

(assert (=> b!5123241 d!1656266))

(declare-fun d!1656268 () Bool)

(declare-fun lt!2112496 () Int)

(assert (=> d!1656268 (>= lt!2112496 0)))

(declare-fun e!3195230 () Int)

(assert (=> d!1656268 (= lt!2112496 e!3195230)))

(declare-fun c!880489 () Bool)

(assert (=> d!1656268 (= c!880489 ((_ is Nil!59275) lt!2112336))))

(assert (=> d!1656268 (= (size!39543 lt!2112336) lt!2112496)))

(declare-fun b!5123340 () Bool)

(assert (=> b!5123340 (= e!3195230 0)))

(declare-fun b!5123341 () Bool)

(assert (=> b!5123341 (= e!3195230 (+ 1 (size!39543 (t!372420 lt!2112336))))))

(assert (= (and d!1656268 c!880489) b!5123340))

(assert (= (and d!1656268 (not c!880489)) b!5123341))

(declare-fun m!6185308 () Bool)

(assert (=> b!5123341 m!6185308))

(assert (=> b!5123241 d!1656268))

(declare-fun d!1656270 () Bool)

(declare-fun lt!2112497 () Int)

(assert (=> d!1656270 (>= lt!2112497 0)))

(declare-fun e!3195231 () Int)

(assert (=> d!1656270 (= lt!2112497 e!3195231)))

(declare-fun c!880490 () Bool)

(assert (=> d!1656270 (= c!880490 ((_ is Nil!59275) lt!2112334))))

(assert (=> d!1656270 (= (size!39543 lt!2112334) lt!2112497)))

(declare-fun b!5123342 () Bool)

(assert (=> b!5123342 (= e!3195231 0)))

(declare-fun b!5123343 () Bool)

(assert (=> b!5123343 (= e!3195231 (+ 1 (size!39543 (t!372420 lt!2112334))))))

(assert (= (and d!1656270 c!880490) b!5123342))

(assert (= (and d!1656270 (not c!880490)) b!5123343))

(declare-fun m!6185310 () Bool)

(assert (=> b!5123343 m!6185310))

(assert (=> b!5123241 d!1656270))

(declare-fun d!1656272 () Bool)

(declare-fun res!2181633 () Bool)

(declare-fun e!3195236 () Bool)

(assert (=> d!1656272 (=> res!2181633 e!3195236)))

(assert (=> d!1656272 (= res!2181633 ((_ is Nil!59276) (exprs!4121 setElem!30501)))))

(assert (=> d!1656272 (= (forall!13627 (exprs!4121 setElem!30501) lambda!251522) e!3195236)))

(declare-fun b!5123348 () Bool)

(declare-fun e!3195237 () Bool)

(assert (=> b!5123348 (= e!3195236 e!3195237)))

(declare-fun res!2181634 () Bool)

(assert (=> b!5123348 (=> (not res!2181634) (not e!3195237))))

(declare-fun dynLambda!23607 (Int Regex!14237) Bool)

(assert (=> b!5123348 (= res!2181634 (dynLambda!23607 lambda!251522 (h!65724 (exprs!4121 setElem!30501))))))

(declare-fun b!5123349 () Bool)

(assert (=> b!5123349 (= e!3195237 (forall!13627 (t!372421 (exprs!4121 setElem!30501)) lambda!251522))))

(assert (= (and d!1656272 (not res!2181633)) b!5123348))

(assert (= (and b!5123348 res!2181634) b!5123349))

(declare-fun b_lambda!199017 () Bool)

(assert (=> (not b_lambda!199017) (not b!5123348)))

(declare-fun m!6185312 () Bool)

(assert (=> b!5123348 m!6185312))

(declare-fun m!6185314 () Bool)

(assert (=> b!5123349 m!6185314))

(assert (=> d!1656178 d!1656272))

(declare-fun b!5123350 () Bool)

(declare-fun e!3195239 () List!59399)

(assert (=> b!5123350 (= e!3195239 lt!2112331)))

(declare-fun b!5123352 () Bool)

(declare-fun res!2181635 () Bool)

(declare-fun e!3195238 () Bool)

(assert (=> b!5123352 (=> (not res!2181635) (not e!3195238))))

(declare-fun lt!2112498 () List!59399)

(assert (=> b!5123352 (= res!2181635 (= (size!39543 lt!2112498) (+ (size!39543 (t!372420 testedP!265)) (size!39543 lt!2112331))))))

(declare-fun d!1656274 () Bool)

(assert (=> d!1656274 e!3195238))

(declare-fun res!2181636 () Bool)

(assert (=> d!1656274 (=> (not res!2181636) (not e!3195238))))

(assert (=> d!1656274 (= res!2181636 (= (content!10541 lt!2112498) ((_ map or) (content!10541 (t!372420 testedP!265)) (content!10541 lt!2112331))))))

(assert (=> d!1656274 (= lt!2112498 e!3195239)))

(declare-fun c!880491 () Bool)

(assert (=> d!1656274 (= c!880491 ((_ is Nil!59275) (t!372420 testedP!265)))))

(assert (=> d!1656274 (= (++!13050 (t!372420 testedP!265) lt!2112331) lt!2112498)))

(declare-fun b!5123353 () Bool)

(assert (=> b!5123353 (= e!3195238 (or (not (= lt!2112331 Nil!59275)) (= lt!2112498 (t!372420 testedP!265))))))

(declare-fun b!5123351 () Bool)

(assert (=> b!5123351 (= e!3195239 (Cons!59275 (h!65723 (t!372420 testedP!265)) (++!13050 (t!372420 (t!372420 testedP!265)) lt!2112331)))))

(assert (= (and d!1656274 c!880491) b!5123350))

(assert (= (and d!1656274 (not c!880491)) b!5123351))

(assert (= (and d!1656274 res!2181636) b!5123352))

(assert (= (and b!5123352 res!2181635) b!5123353))

(declare-fun m!6185316 () Bool)

(assert (=> b!5123352 m!6185316))

(assert (=> b!5123352 m!6184708))

(assert (=> b!5123352 m!6185176))

(declare-fun m!6185318 () Bool)

(assert (=> d!1656274 m!6185318))

(assert (=> d!1656274 m!6185236))

(assert (=> d!1656274 m!6185180))

(declare-fun m!6185320 () Bool)

(assert (=> b!5123351 m!6185320))

(assert (=> b!5123262 d!1656274))

(declare-fun d!1656276 () Bool)

(declare-fun lt!2112499 () List!59399)

(assert (=> d!1656276 (= (++!13050 (t!372420 lt!2112314) lt!2112499) (tail!10088 knownP!20))))

(declare-fun e!3195240 () List!59399)

(assert (=> d!1656276 (= lt!2112499 e!3195240)))

(declare-fun c!880492 () Bool)

(assert (=> d!1656276 (= c!880492 ((_ is Cons!59275) (t!372420 lt!2112314)))))

(assert (=> d!1656276 (>= (size!39543 (tail!10088 knownP!20)) (size!39543 (t!372420 lt!2112314)))))

(assert (=> d!1656276 (= (getSuffix!3314 (tail!10088 knownP!20) (t!372420 lt!2112314)) lt!2112499)))

(declare-fun b!5123354 () Bool)

(assert (=> b!5123354 (= e!3195240 (getSuffix!3314 (tail!10088 (tail!10088 knownP!20)) (t!372420 (t!372420 lt!2112314))))))

(declare-fun b!5123355 () Bool)

(assert (=> b!5123355 (= e!3195240 (tail!10088 knownP!20))))

(assert (= (and d!1656276 c!880492) b!5123354))

(assert (= (and d!1656276 (not c!880492)) b!5123355))

(declare-fun m!6185322 () Bool)

(assert (=> d!1656276 m!6185322))

(assert (=> d!1656276 m!6184764))

(assert (=> d!1656276 m!6185218))

(assert (=> d!1656276 m!6184864))

(assert (=> b!5123354 m!6184764))

(assert (=> b!5123354 m!6185224))

(assert (=> b!5123354 m!6185224))

(declare-fun m!6185324 () Bool)

(assert (=> b!5123354 m!6185324))

(assert (=> b!5123213 d!1656276))

(assert (=> b!5123213 d!1656218))

(declare-fun b!5123356 () Bool)

(declare-fun e!3195242 () List!59399)

(assert (=> b!5123356 (= e!3195242 lt!2112333)))

(declare-fun b!5123358 () Bool)

(declare-fun res!2181637 () Bool)

(declare-fun e!3195241 () Bool)

(assert (=> b!5123358 (=> (not res!2181637) (not e!3195241))))

(declare-fun lt!2112500 () List!59399)

(assert (=> b!5123358 (= res!2181637 (= (size!39543 lt!2112500) (+ (size!39543 (t!372420 testedP!265)) (size!39543 lt!2112333))))))

(declare-fun d!1656278 () Bool)

(assert (=> d!1656278 e!3195241))

(declare-fun res!2181638 () Bool)

(assert (=> d!1656278 (=> (not res!2181638) (not e!3195241))))

(assert (=> d!1656278 (= res!2181638 (= (content!10541 lt!2112500) ((_ map or) (content!10541 (t!372420 testedP!265)) (content!10541 lt!2112333))))))

(assert (=> d!1656278 (= lt!2112500 e!3195242)))

(declare-fun c!880493 () Bool)

(assert (=> d!1656278 (= c!880493 ((_ is Nil!59275) (t!372420 testedP!265)))))

(assert (=> d!1656278 (= (++!13050 (t!372420 testedP!265) lt!2112333) lt!2112500)))

(declare-fun b!5123359 () Bool)

(assert (=> b!5123359 (= e!3195241 (or (not (= lt!2112333 Nil!59275)) (= lt!2112500 (t!372420 testedP!265))))))

(declare-fun b!5123357 () Bool)

(assert (=> b!5123357 (= e!3195242 (Cons!59275 (h!65723 (t!372420 testedP!265)) (++!13050 (t!372420 (t!372420 testedP!265)) lt!2112333)))))

(assert (= (and d!1656278 c!880493) b!5123356))

(assert (= (and d!1656278 (not c!880493)) b!5123357))

(assert (= (and d!1656278 res!2181638) b!5123358))

(assert (= (and b!5123358 res!2181637) b!5123359))

(declare-fun m!6185326 () Bool)

(assert (=> b!5123358 m!6185326))

(assert (=> b!5123358 m!6184708))

(assert (=> b!5123358 m!6184806))

(declare-fun m!6185328 () Bool)

(assert (=> d!1656278 m!6185328))

(assert (=> d!1656278 m!6185236))

(assert (=> d!1656278 m!6184812))

(declare-fun m!6185330 () Bool)

(assert (=> b!5123357 m!6185330))

(assert (=> b!5123244 d!1656278))

(declare-fun b!5123360 () Bool)

(declare-fun e!3195244 () List!59399)

(assert (=> b!5123360 (= e!3195244 lt!2112449)))

(declare-fun b!5123362 () Bool)

(declare-fun res!2181639 () Bool)

(declare-fun e!3195243 () Bool)

(assert (=> b!5123362 (=> (not res!2181639) (not e!3195243))))

(declare-fun lt!2112501 () List!59399)

(assert (=> b!5123362 (= res!2181639 (= (size!39543 lt!2112501) (+ (size!39543 knownP!20) (size!39543 lt!2112449))))))

(declare-fun d!1656280 () Bool)

(assert (=> d!1656280 e!3195243))

(declare-fun res!2181640 () Bool)

(assert (=> d!1656280 (=> (not res!2181640) (not e!3195243))))

(assert (=> d!1656280 (= res!2181640 (= (content!10541 lt!2112501) ((_ map or) (content!10541 knownP!20) (content!10541 lt!2112449))))))

(assert (=> d!1656280 (= lt!2112501 e!3195244)))

(declare-fun c!880494 () Bool)

(assert (=> d!1656280 (= c!880494 ((_ is Nil!59275) knownP!20))))

(assert (=> d!1656280 (= (++!13050 knownP!20 lt!2112449) lt!2112501)))

(declare-fun b!5123363 () Bool)

(assert (=> b!5123363 (= e!3195243 (or (not (= lt!2112449 Nil!59275)) (= lt!2112501 knownP!20)))))

(declare-fun b!5123361 () Bool)

(assert (=> b!5123361 (= e!3195244 (Cons!59275 (h!65723 knownP!20) (++!13050 (t!372420 knownP!20) lt!2112449)))))

(assert (= (and d!1656280 c!880494) b!5123360))

(assert (= (and d!1656280 (not c!880494)) b!5123361))

(assert (= (and d!1656280 res!2181640) b!5123362))

(assert (= (and b!5123362 res!2181639) b!5123363))

(declare-fun m!6185332 () Bool)

(assert (=> b!5123362 m!6185332))

(assert (=> b!5123362 m!6184636))

(declare-fun m!6185334 () Bool)

(assert (=> b!5123362 m!6185334))

(declare-fun m!6185336 () Bool)

(assert (=> d!1656280 m!6185336))

(assert (=> d!1656280 m!6185108))

(declare-fun m!6185338 () Bool)

(assert (=> d!1656280 m!6185338))

(declare-fun m!6185340 () Bool)

(assert (=> b!5123361 m!6185340))

(assert (=> d!1656170 d!1656280))

(assert (=> d!1656170 d!1656060))

(assert (=> d!1656170 d!1656032))

(declare-fun b!5123364 () Bool)

(declare-fun e!3195246 () List!59399)

(assert (=> b!5123364 (= e!3195246 lt!2112320)))

(declare-fun b!5123366 () Bool)

(declare-fun res!2181641 () Bool)

(declare-fun e!3195245 () Bool)

(assert (=> b!5123366 (=> (not res!2181641) (not e!3195245))))

(declare-fun lt!2112502 () List!59399)

(assert (=> b!5123366 (= res!2181641 (= (size!39543 lt!2112502) (+ (size!39543 (t!372420 lt!2112314)) (size!39543 lt!2112320))))))

(declare-fun d!1656282 () Bool)

(assert (=> d!1656282 e!3195245))

(declare-fun res!2181642 () Bool)

(assert (=> d!1656282 (=> (not res!2181642) (not e!3195245))))

(assert (=> d!1656282 (= res!2181642 (= (content!10541 lt!2112502) ((_ map or) (content!10541 (t!372420 lt!2112314)) (content!10541 lt!2112320))))))

(assert (=> d!1656282 (= lt!2112502 e!3195246)))

(declare-fun c!880495 () Bool)

(assert (=> d!1656282 (= c!880495 ((_ is Nil!59275) (t!372420 lt!2112314)))))

(assert (=> d!1656282 (= (++!13050 (t!372420 lt!2112314) lt!2112320) lt!2112502)))

(declare-fun b!5123367 () Bool)

(assert (=> b!5123367 (= e!3195245 (or (not (= lt!2112320 Nil!59275)) (= lt!2112502 (t!372420 lt!2112314))))))

(declare-fun b!5123365 () Bool)

(assert (=> b!5123365 (= e!3195246 (Cons!59275 (h!65723 (t!372420 lt!2112314)) (++!13050 (t!372420 (t!372420 lt!2112314)) lt!2112320)))))

(assert (= (and d!1656282 c!880495) b!5123364))

(assert (= (and d!1656282 (not c!880495)) b!5123365))

(assert (= (and d!1656282 res!2181642) b!5123366))

(assert (= (and b!5123366 res!2181641) b!5123367))

(declare-fun m!6185342 () Bool)

(assert (=> b!5123366 m!6185342))

(assert (=> b!5123366 m!6184864))

(assert (=> b!5123366 m!6184848))

(declare-fun m!6185344 () Bool)

(assert (=> d!1656282 m!6185344))

(declare-fun m!6185346 () Bool)

(assert (=> d!1656282 m!6185346))

(assert (=> d!1656282 m!6184854))

(declare-fun m!6185348 () Bool)

(assert (=> b!5123365 m!6185348))

(assert (=> b!5123103 d!1656282))

(declare-fun bs!1193329 () Bool)

(declare-fun d!1656284 () Bool)

(assert (= bs!1193329 (and d!1656284 d!1656178)))

(declare-fun lambda!251550 () Int)

(assert (=> bs!1193329 (= lambda!251550 lambda!251522)))

(declare-fun bs!1193330 () Bool)

(assert (= bs!1193330 (and d!1656284 d!1656192)))

(assert (=> bs!1193330 (= lambda!251550 lambda!251538)))

(declare-fun bs!1193331 () Bool)

(assert (= bs!1193331 (and d!1656284 d!1656202)))

(assert (=> bs!1193331 (= lambda!251550 lambda!251539)))

(assert (=> d!1656284 (= (inv!78773 setElem!30510) (forall!13627 (exprs!4121 setElem!30510) lambda!251550))))

(declare-fun bs!1193332 () Bool)

(assert (= bs!1193332 d!1656284))

(declare-fun m!6185350 () Bool)

(assert (=> bs!1193332 m!6185350))

(assert (=> setNonEmpty!30510 d!1656284))

(declare-fun bs!1193333 () Bool)

(declare-fun d!1656286 () Bool)

(assert (= bs!1193333 (and d!1656286 d!1656248)))

(declare-fun lambda!251551 () Int)

(assert (=> bs!1193333 (not (= lambda!251551 lambda!251548))))

(declare-fun bs!1193334 () Bool)

(assert (= bs!1193334 (and d!1656286 d!1656190)))

(assert (=> bs!1193334 (not (= lambda!251551 lambda!251535))))

(declare-fun bs!1193335 () Bool)

(assert (= bs!1193335 (and d!1656286 d!1656230)))

(assert (=> bs!1193335 (= lambda!251551 lambda!251545)))

(declare-fun bs!1193336 () Bool)

(assert (= bs!1193336 (and d!1656286 d!1656252)))

(assert (=> bs!1193336 (= lambda!251551 lambda!251549)))

(declare-fun bs!1193337 () Bool)

(assert (= bs!1193337 (and d!1656286 b!5123258)))

(assert (=> bs!1193337 (not (= lambda!251551 lambda!251537))))

(declare-fun bs!1193338 () Bool)

(assert (= bs!1193338 (and d!1656286 b!5123257)))

(assert (=> bs!1193338 (not (= lambda!251551 lambda!251536))))

(declare-fun bs!1193339 () Bool)

(assert (= bs!1193339 (and d!1656286 d!1656228)))

(assert (=> bs!1193339 (not (= lambda!251551 lambda!251542))))

(assert (=> d!1656286 (= (nullableZipper!1034 lt!2112324) (exists!1488 lt!2112324 lambda!251551))))

(declare-fun bs!1193340 () Bool)

(assert (= bs!1193340 d!1656286))

(declare-fun m!6185352 () Bool)

(assert (=> bs!1193340 m!6185352))

(assert (=> b!5123259 d!1656286))

(declare-fun b!5123368 () Bool)

(declare-fun e!3195248 () List!59399)

(assert (=> b!5123368 (= e!3195248 lt!2112334)))

(declare-fun b!5123370 () Bool)

(declare-fun res!2181643 () Bool)

(declare-fun e!3195247 () Bool)

(assert (=> b!5123370 (=> (not res!2181643) (not e!3195247))))

(declare-fun lt!2112503 () List!59399)

(assert (=> b!5123370 (= res!2181643 (= (size!39543 lt!2112503) (+ (size!39543 (t!372420 knownP!20)) (size!39543 lt!2112334))))))

(declare-fun d!1656288 () Bool)

(assert (=> d!1656288 e!3195247))

(declare-fun res!2181644 () Bool)

(assert (=> d!1656288 (=> (not res!2181644) (not e!3195247))))

(assert (=> d!1656288 (= res!2181644 (= (content!10541 lt!2112503) ((_ map or) (content!10541 (t!372420 knownP!20)) (content!10541 lt!2112334))))))

(assert (=> d!1656288 (= lt!2112503 e!3195248)))

(declare-fun c!880496 () Bool)

(assert (=> d!1656288 (= c!880496 ((_ is Nil!59275) (t!372420 knownP!20)))))

(assert (=> d!1656288 (= (++!13050 (t!372420 knownP!20) lt!2112334) lt!2112503)))

(declare-fun b!5123371 () Bool)

(assert (=> b!5123371 (= e!3195247 (or (not (= lt!2112334 Nil!59275)) (= lt!2112503 (t!372420 knownP!20))))))

(declare-fun b!5123369 () Bool)

(assert (=> b!5123369 (= e!3195248 (Cons!59275 (h!65723 (t!372420 knownP!20)) (++!13050 (t!372420 (t!372420 knownP!20)) lt!2112334)))))

(assert (= (and d!1656288 c!880496) b!5123368))

(assert (= (and d!1656288 (not c!880496)) b!5123369))

(assert (= (and d!1656288 res!2181644) b!5123370))

(assert (= (and b!5123370 res!2181643) b!5123371))

(declare-fun m!6185354 () Bool)

(assert (=> b!5123370 m!6185354))

(assert (=> b!5123370 m!6184710))

(assert (=> b!5123370 m!6184808))

(declare-fun m!6185356 () Bool)

(assert (=> d!1656288 m!6185356))

(declare-fun m!6185358 () Bool)

(assert (=> d!1656288 m!6185358))

(assert (=> d!1656288 m!6184814))

(declare-fun m!6185360 () Bool)

(assert (=> b!5123369 m!6185360))

(assert (=> b!5123224 d!1656288))

(declare-fun d!1656290 () Bool)

(declare-fun lt!2112504 () Int)

(assert (=> d!1656290 (>= lt!2112504 0)))

(declare-fun e!3195249 () Int)

(assert (=> d!1656290 (= lt!2112504 e!3195249)))

(declare-fun c!880497 () Bool)

(assert (=> d!1656290 (= c!880497 ((_ is Nil!59275) lt!2112386))))

(assert (=> d!1656290 (= (size!39543 lt!2112386) lt!2112504)))

(declare-fun b!5123372 () Bool)

(assert (=> b!5123372 (= e!3195249 0)))

(declare-fun b!5123373 () Bool)

(assert (=> b!5123373 (= e!3195249 (+ 1 (size!39543 (t!372420 lt!2112386))))))

(assert (= (and d!1656290 c!880497) b!5123372))

(assert (= (and d!1656290 (not c!880497)) b!5123373))

(declare-fun m!6185362 () Bool)

(assert (=> b!5123373 m!6185362))

(assert (=> b!5123098 d!1656290))

(declare-fun d!1656292 () Bool)

(declare-fun lt!2112505 () Int)

(assert (=> d!1656292 (>= lt!2112505 0)))

(declare-fun e!3195250 () Int)

(assert (=> d!1656292 (= lt!2112505 e!3195250)))

(declare-fun c!880498 () Bool)

(assert (=> d!1656292 (= c!880498 ((_ is Nil!59275) lt!2112317))))

(assert (=> d!1656292 (= (size!39543 lt!2112317) lt!2112505)))

(declare-fun b!5123374 () Bool)

(assert (=> b!5123374 (= e!3195250 0)))

(declare-fun b!5123375 () Bool)

(assert (=> b!5123375 (= e!3195250 (+ 1 (size!39543 (t!372420 lt!2112317))))))

(assert (= (and d!1656292 c!880498) b!5123374))

(assert (= (and d!1656292 (not c!880498)) b!5123375))

(declare-fun m!6185364 () Bool)

(assert (=> b!5123375 m!6185364))

(assert (=> b!5123098 d!1656292))

(declare-fun d!1656294 () Bool)

(declare-fun lt!2112506 () Int)

(assert (=> d!1656294 (>= lt!2112506 0)))

(declare-fun e!3195251 () Int)

(assert (=> d!1656294 (= lt!2112506 e!3195251)))

(declare-fun c!880499 () Bool)

(assert (=> d!1656294 (= c!880499 ((_ is Nil!59275) lt!2112320))))

(assert (=> d!1656294 (= (size!39543 lt!2112320) lt!2112506)))

(declare-fun b!5123376 () Bool)

(assert (=> b!5123376 (= e!3195251 0)))

(declare-fun b!5123377 () Bool)

(assert (=> b!5123377 (= e!3195251 (+ 1 (size!39543 (t!372420 lt!2112320))))))

(assert (= (and d!1656294 c!880499) b!5123376))

(assert (= (and d!1656294 (not c!880499)) b!5123377))

(declare-fun m!6185366 () Bool)

(assert (=> b!5123377 m!6185366))

(assert (=> b!5123098 d!1656294))

(declare-fun d!1656296 () Bool)

(declare-fun c!880500 () Bool)

(assert (=> d!1656296 (= c!880500 ((_ is Nil!59275) lt!2112377))))

(declare-fun e!3195252 () (InoxSet C!28740))

(assert (=> d!1656296 (= (content!10541 lt!2112377) e!3195252)))

(declare-fun b!5123378 () Bool)

(assert (=> b!5123378 (= e!3195252 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123379 () Bool)

(assert (=> b!5123379 (= e!3195252 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112377) true) (content!10541 (t!372420 lt!2112377))))))

(assert (= (and d!1656296 c!880500) b!5123378))

(assert (= (and d!1656296 (not c!880500)) b!5123379))

(declare-fun m!6185368 () Bool)

(assert (=> b!5123379 m!6185368))

(declare-fun m!6185370 () Bool)

(assert (=> b!5123379 m!6185370))

(assert (=> d!1656062 d!1656296))

(assert (=> d!1656062 d!1656224))

(declare-fun d!1656298 () Bool)

(declare-fun c!880501 () Bool)

(assert (=> d!1656298 (= c!880501 ((_ is Nil!59275) lt!2112328))))

(declare-fun e!3195253 () (InoxSet C!28740))

(assert (=> d!1656298 (= (content!10541 lt!2112328) e!3195253)))

(declare-fun b!5123380 () Bool)

(assert (=> b!5123380 (= e!3195253 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123381 () Bool)

(assert (=> b!5123381 (= e!3195253 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112328) true) (content!10541 (t!372420 lt!2112328))))))

(assert (= (and d!1656298 c!880501) b!5123380))

(assert (= (and d!1656298 (not c!880501)) b!5123381))

(declare-fun m!6185372 () Bool)

(assert (=> b!5123381 m!6185372))

(declare-fun m!6185374 () Bool)

(assert (=> b!5123381 m!6185374))

(assert (=> d!1656062 d!1656298))

(declare-fun b!5123382 () Bool)

(declare-fun e!3195255 () List!59399)

(assert (=> b!5123382 (= e!3195255 lt!2112327)))

(declare-fun b!5123384 () Bool)

(declare-fun res!2181645 () Bool)

(declare-fun e!3195254 () Bool)

(assert (=> b!5123384 (=> (not res!2181645) (not e!3195254))))

(declare-fun lt!2112507 () List!59399)

(assert (=> b!5123384 (= res!2181645 (= (size!39543 lt!2112507) (+ (size!39543 (t!372420 testedP!265)) (size!39543 lt!2112327))))))

(declare-fun d!1656300 () Bool)

(assert (=> d!1656300 e!3195254))

(declare-fun res!2181646 () Bool)

(assert (=> d!1656300 (=> (not res!2181646) (not e!3195254))))

(assert (=> d!1656300 (= res!2181646 (= (content!10541 lt!2112507) ((_ map or) (content!10541 (t!372420 testedP!265)) (content!10541 lt!2112327))))))

(assert (=> d!1656300 (= lt!2112507 e!3195255)))

(declare-fun c!880502 () Bool)

(assert (=> d!1656300 (= c!880502 ((_ is Nil!59275) (t!372420 testedP!265)))))

(assert (=> d!1656300 (= (++!13050 (t!372420 testedP!265) lt!2112327) lt!2112507)))

(declare-fun b!5123385 () Bool)

(assert (=> b!5123385 (= e!3195254 (or (not (= lt!2112327 Nil!59275)) (= lt!2112507 (t!372420 testedP!265))))))

(declare-fun b!5123383 () Bool)

(assert (=> b!5123383 (= e!3195255 (Cons!59275 (h!65723 (t!372420 testedP!265)) (++!13050 (t!372420 (t!372420 testedP!265)) lt!2112327)))))

(assert (= (and d!1656300 c!880502) b!5123382))

(assert (= (and d!1656300 (not c!880502)) b!5123383))

(assert (= (and d!1656300 res!2181646) b!5123384))

(assert (= (and b!5123384 res!2181645) b!5123385))

(declare-fun m!6185376 () Bool)

(assert (=> b!5123384 m!6185376))

(assert (=> b!5123384 m!6184708))

(assert (=> b!5123384 m!6184836))

(declare-fun m!6185378 () Bool)

(assert (=> d!1656300 m!6185378))

(assert (=> d!1656300 m!6185236))

(assert (=> d!1656300 m!6184840))

(declare-fun m!6185380 () Bool)

(assert (=> b!5123383 m!6185380))

(assert (=> b!5123093 d!1656300))

(declare-fun d!1656302 () Bool)

(declare-fun lt!2112508 () Int)

(assert (=> d!1656302 (>= lt!2112508 0)))

(declare-fun e!3195256 () Int)

(assert (=> d!1656302 (= lt!2112508 e!3195256)))

(declare-fun c!880503 () Bool)

(assert (=> d!1656302 (= c!880503 ((_ is Nil!59275) lt!2112451))))

(assert (=> d!1656302 (= (size!39543 lt!2112451) lt!2112508)))

(declare-fun b!5123386 () Bool)

(assert (=> b!5123386 (= e!3195256 0)))

(declare-fun b!5123387 () Bool)

(assert (=> b!5123387 (= e!3195256 (+ 1 (size!39543 (t!372420 lt!2112451))))))

(assert (= (and d!1656302 c!880503) b!5123386))

(assert (= (and d!1656302 (not c!880503)) b!5123387))

(declare-fun m!6185382 () Bool)

(assert (=> b!5123387 m!6185382))

(assert (=> b!5123229 d!1656302))

(assert (=> b!5123229 d!1656026))

(assert (=> b!5123229 d!1656292))

(assert (=> b!5123234 d!1656032))

(assert (=> b!5123234 d!1656078))

(declare-fun d!1656304 () Bool)

(assert (=> d!1656304 (= (head!10953 lt!2112314) (h!65723 lt!2112314))))

(assert (=> b!5123232 d!1656304))

(assert (=> b!5123232 d!1656254))

(declare-fun b!5123388 () Bool)

(declare-fun e!3195258 () List!59399)

(assert (=> b!5123388 (= e!3195258 lt!2112442)))

(declare-fun b!5123390 () Bool)

(declare-fun res!2181647 () Bool)

(declare-fun e!3195257 () Bool)

(assert (=> b!5123390 (=> (not res!2181647) (not e!3195257))))

(declare-fun lt!2112509 () List!59399)

(assert (=> b!5123390 (= res!2181647 (= (size!39543 lt!2112509) (+ (size!39543 lt!2112314) (size!39543 lt!2112442))))))

(declare-fun d!1656306 () Bool)

(assert (=> d!1656306 e!3195257))

(declare-fun res!2181648 () Bool)

(assert (=> d!1656306 (=> (not res!2181648) (not e!3195257))))

(assert (=> d!1656306 (= res!2181648 (= (content!10541 lt!2112509) ((_ map or) (content!10541 lt!2112314) (content!10541 lt!2112442))))))

(assert (=> d!1656306 (= lt!2112509 e!3195258)))

(declare-fun c!880504 () Bool)

(assert (=> d!1656306 (= c!880504 ((_ is Nil!59275) lt!2112314))))

(assert (=> d!1656306 (= (++!13050 lt!2112314 lt!2112442) lt!2112509)))

(declare-fun b!5123391 () Bool)

(assert (=> b!5123391 (= e!3195257 (or (not (= lt!2112442 Nil!59275)) (= lt!2112509 lt!2112314)))))

(declare-fun b!5123389 () Bool)

(assert (=> b!5123389 (= e!3195258 (Cons!59275 (h!65723 lt!2112314) (++!13050 (t!372420 lt!2112314) lt!2112442)))))

(assert (= (and d!1656306 c!880504) b!5123388))

(assert (= (and d!1656306 (not c!880504)) b!5123389))

(assert (= (and d!1656306 res!2181648) b!5123390))

(assert (= (and b!5123390 res!2181647) b!5123391))

(declare-fun m!6185384 () Bool)

(assert (=> b!5123390 m!6185384))

(assert (=> b!5123390 m!6184696))

(declare-fun m!6185386 () Bool)

(assert (=> b!5123390 m!6185386))

(declare-fun m!6185388 () Bool)

(assert (=> d!1656306 m!6185388))

(assert (=> d!1656306 m!6184870))

(declare-fun m!6185390 () Bool)

(assert (=> d!1656306 m!6185390))

(declare-fun m!6185392 () Bool)

(assert (=> b!5123389 m!6185392))

(assert (=> d!1656162 d!1656306))

(assert (=> d!1656162 d!1656032))

(assert (=> d!1656162 d!1656078))

(assert (=> b!5123111 d!1656060))

(assert (=> b!5123111 d!1656078))

(declare-fun d!1656308 () Bool)

(assert (=> d!1656308 (= lt!2112327 lt!2112333)))

(assert (=> d!1656308 true))

(declare-fun _$63!1260 () Unit!150417)

(assert (=> d!1656308 (= (choose!37682 testedP!265 lt!2112327 testedP!265 lt!2112333 knownP!20) _$63!1260)))

(assert (=> d!1656070 d!1656308))

(assert (=> d!1656070 d!1656050))

(declare-fun d!1656310 () Bool)

(declare-fun lt!2112510 () Int)

(assert (=> d!1656310 (>= lt!2112510 0)))

(declare-fun e!3195259 () Int)

(assert (=> d!1656310 (= lt!2112510 e!3195259)))

(declare-fun c!880505 () Bool)

(assert (=> d!1656310 (= c!880505 ((_ is Nil!59275) (t!372420 testedP!265)))))

(assert (=> d!1656310 (= (size!39543 (t!372420 testedP!265)) lt!2112510)))

(declare-fun b!5123392 () Bool)

(assert (=> b!5123392 (= e!3195259 0)))

(declare-fun b!5123393 () Bool)

(assert (=> b!5123393 (= e!3195259 (+ 1 (size!39543 (t!372420 (t!372420 testedP!265)))))))

(assert (= (and d!1656310 c!880505) b!5123392))

(assert (= (and d!1656310 (not c!880505)) b!5123393))

(declare-fun m!6185394 () Bool)

(assert (=> b!5123393 m!6185394))

(assert (=> b!5123005 d!1656310))

(declare-fun d!1656312 () Bool)

(assert (=> d!1656312 (= (++!13050 (++!13050 testedP!265 lt!2112317) lt!2112320) (++!13050 testedP!265 (++!13050 lt!2112317 lt!2112320)))))

(assert (=> d!1656312 true))

(declare-fun _$52!2359 () Unit!150417)

(assert (=> d!1656312 (= (choose!37681 testedP!265 lt!2112317 lt!2112320) _$52!2359)))

(declare-fun bs!1193341 () Bool)

(assert (= bs!1193341 d!1656312))

(assert (=> bs!1193341 m!6184658))

(assert (=> bs!1193341 m!6184658))

(assert (=> bs!1193341 m!6184858))

(assert (=> bs!1193341 m!6184630))

(assert (=> bs!1193341 m!6184630))

(assert (=> bs!1193341 m!6184860))

(assert (=> d!1656076 d!1656312))

(declare-fun b!5123394 () Bool)

(declare-fun e!3195261 () List!59399)

(assert (=> b!5123394 (= e!3195261 (++!13050 lt!2112317 lt!2112320))))

(declare-fun b!5123396 () Bool)

(declare-fun res!2181649 () Bool)

(declare-fun e!3195260 () Bool)

(assert (=> b!5123396 (=> (not res!2181649) (not e!3195260))))

(declare-fun lt!2112511 () List!59399)

(assert (=> b!5123396 (= res!2181649 (= (size!39543 lt!2112511) (+ (size!39543 testedP!265) (size!39543 (++!13050 lt!2112317 lt!2112320)))))))

(declare-fun d!1656314 () Bool)

(assert (=> d!1656314 e!3195260))

(declare-fun res!2181650 () Bool)

(assert (=> d!1656314 (=> (not res!2181650) (not e!3195260))))

(assert (=> d!1656314 (= res!2181650 (= (content!10541 lt!2112511) ((_ map or) (content!10541 testedP!265) (content!10541 (++!13050 lt!2112317 lt!2112320)))))))

(assert (=> d!1656314 (= lt!2112511 e!3195261)))

(declare-fun c!880506 () Bool)

(assert (=> d!1656314 (= c!880506 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656314 (= (++!13050 testedP!265 (++!13050 lt!2112317 lt!2112320)) lt!2112511)))

(declare-fun b!5123397 () Bool)

(assert (=> b!5123397 (= e!3195260 (or (not (= (++!13050 lt!2112317 lt!2112320) Nil!59275)) (= lt!2112511 testedP!265)))))

(declare-fun b!5123395 () Bool)

(assert (=> b!5123395 (= e!3195261 (Cons!59275 (h!65723 testedP!265) (++!13050 (t!372420 testedP!265) (++!13050 lt!2112317 lt!2112320))))))

(assert (= (and d!1656314 c!880506) b!5123394))

(assert (= (and d!1656314 (not c!880506)) b!5123395))

(assert (= (and d!1656314 res!2181650) b!5123396))

(assert (= (and b!5123396 res!2181649) b!5123397))

(declare-fun m!6185396 () Bool)

(assert (=> b!5123396 m!6185396))

(assert (=> b!5123396 m!6184634))

(assert (=> b!5123396 m!6184630))

(declare-fun m!6185398 () Bool)

(assert (=> b!5123396 m!6185398))

(declare-fun m!6185400 () Bool)

(assert (=> d!1656314 m!6185400))

(assert (=> d!1656314 m!6184798))

(assert (=> d!1656314 m!6184630))

(declare-fun m!6185402 () Bool)

(assert (=> d!1656314 m!6185402))

(assert (=> b!5123395 m!6184630))

(declare-fun m!6185404 () Bool)

(assert (=> b!5123395 m!6185404))

(assert (=> d!1656076 d!1656314))

(declare-fun b!5123398 () Bool)

(declare-fun e!3195263 () List!59399)

(assert (=> b!5123398 (= e!3195263 lt!2112320)))

(declare-fun b!5123400 () Bool)

(declare-fun res!2181651 () Bool)

(declare-fun e!3195262 () Bool)

(assert (=> b!5123400 (=> (not res!2181651) (not e!3195262))))

(declare-fun lt!2112512 () List!59399)

(assert (=> b!5123400 (= res!2181651 (= (size!39543 lt!2112512) (+ (size!39543 (++!13050 testedP!265 lt!2112317)) (size!39543 lt!2112320))))))

(declare-fun d!1656316 () Bool)

(assert (=> d!1656316 e!3195262))

(declare-fun res!2181652 () Bool)

(assert (=> d!1656316 (=> (not res!2181652) (not e!3195262))))

(assert (=> d!1656316 (= res!2181652 (= (content!10541 lt!2112512) ((_ map or) (content!10541 (++!13050 testedP!265 lt!2112317)) (content!10541 lt!2112320))))))

(assert (=> d!1656316 (= lt!2112512 e!3195263)))

(declare-fun c!880507 () Bool)

(assert (=> d!1656316 (= c!880507 ((_ is Nil!59275) (++!13050 testedP!265 lt!2112317)))))

(assert (=> d!1656316 (= (++!13050 (++!13050 testedP!265 lt!2112317) lt!2112320) lt!2112512)))

(declare-fun b!5123401 () Bool)

(assert (=> b!5123401 (= e!3195262 (or (not (= lt!2112320 Nil!59275)) (= lt!2112512 (++!13050 testedP!265 lt!2112317))))))

(declare-fun b!5123399 () Bool)

(assert (=> b!5123399 (= e!3195263 (Cons!59275 (h!65723 (++!13050 testedP!265 lt!2112317)) (++!13050 (t!372420 (++!13050 testedP!265 lt!2112317)) lt!2112320)))))

(assert (= (and d!1656316 c!880507) b!5123398))

(assert (= (and d!1656316 (not c!880507)) b!5123399))

(assert (= (and d!1656316 res!2181652) b!5123400))

(assert (= (and b!5123400 res!2181651) b!5123401))

(declare-fun m!6185406 () Bool)

(assert (=> b!5123400 m!6185406))

(assert (=> b!5123400 m!6184658))

(declare-fun m!6185408 () Bool)

(assert (=> b!5123400 m!6185408))

(assert (=> b!5123400 m!6184848))

(declare-fun m!6185410 () Bool)

(assert (=> d!1656316 m!6185410))

(assert (=> d!1656316 m!6184658))

(declare-fun m!6185412 () Bool)

(assert (=> d!1656316 m!6185412))

(assert (=> d!1656316 m!6184854))

(declare-fun m!6185414 () Bool)

(assert (=> b!5123399 m!6185414))

(assert (=> d!1656076 d!1656316))

(assert (=> d!1656076 d!1656174))

(assert (=> d!1656076 d!1656074))

(assert (=> b!5123109 d!1656304))

(assert (=> b!5123109 d!1656238))

(declare-fun d!1656318 () Bool)

(declare-fun lt!2112513 () List!59399)

(assert (=> d!1656318 (= (++!13050 (t!372420 testedP!265) lt!2112513) (tail!10088 knownP!20))))

(declare-fun e!3195264 () List!59399)

(assert (=> d!1656318 (= lt!2112513 e!3195264)))

(declare-fun c!880508 () Bool)

(assert (=> d!1656318 (= c!880508 ((_ is Cons!59275) (t!372420 testedP!265)))))

(assert (=> d!1656318 (>= (size!39543 (tail!10088 knownP!20)) (size!39543 (t!372420 testedP!265)))))

(assert (=> d!1656318 (= (getSuffix!3314 (tail!10088 knownP!20) (t!372420 testedP!265)) lt!2112513)))

(declare-fun b!5123402 () Bool)

(assert (=> b!5123402 (= e!3195264 (getSuffix!3314 (tail!10088 (tail!10088 knownP!20)) (t!372420 (t!372420 testedP!265))))))

(declare-fun b!5123403 () Bool)

(assert (=> b!5123403 (= e!3195264 (tail!10088 knownP!20))))

(assert (= (and d!1656318 c!880508) b!5123402))

(assert (= (and d!1656318 (not c!880508)) b!5123403))

(declare-fun m!6185416 () Bool)

(assert (=> d!1656318 m!6185416))

(assert (=> d!1656318 m!6184764))

(assert (=> d!1656318 m!6185218))

(assert (=> d!1656318 m!6184708))

(assert (=> b!5123402 m!6184764))

(assert (=> b!5123402 m!6185224))

(assert (=> b!5123402 m!6185224))

(declare-fun m!6185418 () Bool)

(assert (=> b!5123402 m!6185418))

(assert (=> b!5123052 d!1656318))

(assert (=> b!5123052 d!1656218))

(declare-fun d!1656320 () Bool)

(declare-fun lt!2112514 () Int)

(assert (=> d!1656320 (>= lt!2112514 0)))

(declare-fun e!3195265 () Int)

(assert (=> d!1656320 (= lt!2112514 e!3195265)))

(declare-fun c!880509 () Bool)

(assert (=> d!1656320 (= c!880509 ((_ is Nil!59275) (t!372420 input!5745)))))

(assert (=> d!1656320 (= (size!39543 (t!372420 input!5745)) lt!2112514)))

(declare-fun b!5123404 () Bool)

(assert (=> b!5123404 (= e!3195265 0)))

(declare-fun b!5123405 () Bool)

(assert (=> b!5123405 (= e!3195265 (+ 1 (size!39543 (t!372420 (t!372420 input!5745)))))))

(assert (= (and d!1656320 c!880509) b!5123404))

(assert (= (and d!1656320 (not c!880509)) b!5123405))

(declare-fun m!6185420 () Bool)

(assert (=> b!5123405 m!6185420))

(assert (=> b!5123073 d!1656320))

(declare-fun d!1656322 () Bool)

(assert (=> d!1656322 (= (isEmpty!31949 (getLanguageWitness!827 z!4463)) (not ((_ is Some!14703) (getLanguageWitness!827 z!4463))))))

(assert (=> d!1656190 d!1656322))

(declare-fun bs!1193342 () Bool)

(declare-fun d!1656324 () Bool)

(assert (= bs!1193342 (and d!1656324 d!1656248)))

(declare-fun lambda!251558 () Int)

(assert (=> bs!1193342 (not (= lambda!251558 lambda!251548))))

(declare-fun bs!1193343 () Bool)

(assert (= bs!1193343 (and d!1656324 d!1656190)))

(assert (=> bs!1193343 (not (= lambda!251558 lambda!251535))))

(declare-fun bs!1193344 () Bool)

(assert (= bs!1193344 (and d!1656324 d!1656230)))

(assert (=> bs!1193344 (not (= lambda!251558 lambda!251545))))

(declare-fun bs!1193345 () Bool)

(assert (= bs!1193345 (and d!1656324 d!1656252)))

(assert (=> bs!1193345 (not (= lambda!251558 lambda!251549))))

(declare-fun bs!1193346 () Bool)

(assert (= bs!1193346 (and d!1656324 b!5123258)))

(assert (=> bs!1193346 (= lambda!251558 lambda!251537)))

(declare-fun bs!1193347 () Bool)

(assert (= bs!1193347 (and d!1656324 b!5123257)))

(assert (=> bs!1193347 (= lambda!251558 lambda!251536)))

(declare-fun bs!1193348 () Bool)

(assert (= bs!1193348 (and d!1656324 d!1656286)))

(assert (=> bs!1193348 (not (= lambda!251558 lambda!251551))))

(declare-fun bs!1193349 () Bool)

(assert (= bs!1193349 (and d!1656324 d!1656228)))

(assert (=> bs!1193349 (not (= lambda!251558 lambda!251542))))

(declare-fun lt!2112517 () Option!14704)

(declare-fun isDefined!11513 (Option!14704) Bool)

(assert (=> d!1656324 (= (isDefined!11513 lt!2112517) (exists!1488 z!4463 lambda!251558))))

(declare-fun e!3195268 () Option!14704)

(assert (=> d!1656324 (= lt!2112517 e!3195268)))

(declare-fun c!880518 () Bool)

(assert (=> d!1656324 (= c!880518 (exists!1488 z!4463 lambda!251558))))

(assert (=> d!1656324 (= (getLanguageWitness!827 z!4463) lt!2112517)))

(declare-fun b!5123410 () Bool)

(declare-fun getLanguageWitness!828 (Context!7242) Option!14704)

(declare-fun getWitness!676 ((InoxSet Context!7242) Int) Context!7242)

(assert (=> b!5123410 (= e!3195268 (getLanguageWitness!828 (getWitness!676 z!4463 lambda!251558)))))

(declare-fun b!5123411 () Bool)

(assert (=> b!5123411 (= e!3195268 None!14703)))

(assert (= (and d!1656324 c!880518) b!5123410))

(assert (= (and d!1656324 (not c!880518)) b!5123411))

(declare-fun m!6185422 () Bool)

(assert (=> d!1656324 m!6185422))

(declare-fun m!6185424 () Bool)

(assert (=> d!1656324 m!6185424))

(assert (=> d!1656324 m!6185424))

(declare-fun m!6185426 () Bool)

(assert (=> b!5123410 m!6185426))

(assert (=> b!5123410 m!6185426))

(declare-fun m!6185428 () Bool)

(assert (=> b!5123410 m!6185428))

(assert (=> d!1656190 d!1656324))

(declare-fun d!1656326 () Bool)

(declare-fun lt!2112520 () Bool)

(assert (=> d!1656326 (= lt!2112520 (forall!13629 (toList!8270 z!4463) lambda!251535))))

(declare-fun choose!37688 ((InoxSet Context!7242) Int) Bool)

(assert (=> d!1656326 (= lt!2112520 (choose!37688 z!4463 lambda!251535))))

(assert (=> d!1656326 (= (forall!13628 z!4463 lambda!251535) lt!2112520)))

(declare-fun bs!1193350 () Bool)

(assert (= bs!1193350 d!1656326))

(assert (=> bs!1193350 m!6185146))

(assert (=> bs!1193350 m!6185146))

(declare-fun m!6185430 () Bool)

(assert (=> bs!1193350 m!6185430))

(declare-fun m!6185432 () Bool)

(assert (=> bs!1193350 m!6185432))

(assert (=> d!1656190 d!1656326))

(declare-fun d!1656328 () Bool)

(declare-fun c!880519 () Bool)

(assert (=> d!1656328 (= c!880519 ((_ is Nil!59275) lt!2112481))))

(declare-fun e!3195269 () (InoxSet C!28740))

(assert (=> d!1656328 (= (content!10541 lt!2112481) e!3195269)))

(declare-fun b!5123412 () Bool)

(assert (=> b!5123412 (= e!3195269 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123413 () Bool)

(assert (=> b!5123413 (= e!3195269 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112481) true) (content!10541 (t!372420 lt!2112481))))))

(assert (= (and d!1656328 c!880519) b!5123412))

(assert (= (and d!1656328 (not c!880519)) b!5123413))

(declare-fun m!6185434 () Bool)

(assert (=> b!5123413 m!6185434))

(declare-fun m!6185436 () Bool)

(assert (=> b!5123413 m!6185436))

(assert (=> d!1656196 d!1656328))

(assert (=> d!1656196 d!1656224))

(declare-fun d!1656330 () Bool)

(declare-fun c!880520 () Bool)

(assert (=> d!1656330 (= c!880520 ((_ is Nil!59275) lt!2112331))))

(declare-fun e!3195270 () (InoxSet C!28740))

(assert (=> d!1656330 (= (content!10541 lt!2112331) e!3195270)))

(declare-fun b!5123414 () Bool)

(assert (=> b!5123414 (= e!3195270 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123415 () Bool)

(assert (=> b!5123415 (= e!3195270 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112331) true) (content!10541 (t!372420 lt!2112331))))))

(assert (= (and d!1656330 c!880520) b!5123414))

(assert (= (and d!1656330 (not c!880520)) b!5123415))

(declare-fun m!6185438 () Bool)

(assert (=> b!5123415 m!6185438))

(declare-fun m!6185440 () Bool)

(assert (=> b!5123415 m!6185440))

(assert (=> d!1656196 d!1656330))

(declare-fun d!1656332 () Bool)

(declare-fun c!880521 () Bool)

(assert (=> d!1656332 (= c!880521 ((_ is Nil!59275) lt!2112455))))

(declare-fun e!3195271 () (InoxSet C!28740))

(assert (=> d!1656332 (= (content!10541 lt!2112455) e!3195271)))

(declare-fun b!5123416 () Bool)

(assert (=> b!5123416 (= e!3195271 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123417 () Bool)

(assert (=> b!5123417 (= e!3195271 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112455) true) (content!10541 (t!372420 lt!2112455))))))

(assert (= (and d!1656332 c!880521) b!5123416))

(assert (= (and d!1656332 (not c!880521)) b!5123417))

(declare-fun m!6185442 () Bool)

(assert (=> b!5123417 m!6185442))

(declare-fun m!6185444 () Bool)

(assert (=> b!5123417 m!6185444))

(assert (=> d!1656184 d!1656332))

(assert (=> d!1656184 d!1656224))

(assert (=> d!1656184 d!1656262))

(declare-fun d!1656334 () Bool)

(declare-fun c!880522 () Bool)

(assert (=> d!1656334 (= c!880522 ((_ is Nil!59275) lt!2112389))))

(declare-fun e!3195272 () (InoxSet C!28740))

(assert (=> d!1656334 (= (content!10541 lt!2112389) e!3195272)))

(declare-fun b!5123418 () Bool)

(assert (=> b!5123418 (= e!3195272 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123419 () Bool)

(assert (=> b!5123419 (= e!3195272 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112389) true) (content!10541 (t!372420 lt!2112389))))))

(assert (= (and d!1656334 c!880522) b!5123418))

(assert (= (and d!1656334 (not c!880522)) b!5123419))

(declare-fun m!6185446 () Bool)

(assert (=> b!5123419 m!6185446))

(declare-fun m!6185448 () Bool)

(assert (=> b!5123419 m!6185448))

(assert (=> d!1656080 d!1656334))

(declare-fun d!1656336 () Bool)

(declare-fun c!880523 () Bool)

(assert (=> d!1656336 (= c!880523 ((_ is Nil!59275) lt!2112314))))

(declare-fun e!3195273 () (InoxSet C!28740))

(assert (=> d!1656336 (= (content!10541 lt!2112314) e!3195273)))

(declare-fun b!5123420 () Bool)

(assert (=> b!5123420 (= e!3195273 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123421 () Bool)

(assert (=> b!5123421 (= e!3195273 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112314) true) (content!10541 (t!372420 lt!2112314))))))

(assert (= (and d!1656336 c!880523) b!5123420))

(assert (= (and d!1656336 (not c!880523)) b!5123421))

(declare-fun m!6185450 () Bool)

(assert (=> b!5123421 m!6185450))

(assert (=> b!5123421 m!6185346))

(assert (=> d!1656080 d!1656336))

(assert (=> d!1656080 d!1656214))

(declare-fun d!1656338 () Bool)

(declare-fun c!880524 () Bool)

(assert (=> d!1656338 (= c!880524 ((_ is Cons!59275) (t!372420 testedP!265)))))

(declare-fun e!3195274 () (InoxSet Context!7242))

(assert (=> d!1656338 (= (derivationZipper!134 (derivationStepZipper!860 baseZ!46 (h!65723 testedP!265)) (t!372420 testedP!265)) e!3195274)))

(declare-fun b!5123422 () Bool)

(assert (=> b!5123422 (= e!3195274 (derivationZipper!134 (derivationStepZipper!860 (derivationStepZipper!860 baseZ!46 (h!65723 testedP!265)) (h!65723 (t!372420 testedP!265))) (t!372420 (t!372420 testedP!265))))))

(declare-fun b!5123423 () Bool)

(assert (=> b!5123423 (= e!3195274 (derivationStepZipper!860 baseZ!46 (h!65723 testedP!265)))))

(assert (= (and d!1656338 c!880524) b!5123422))

(assert (= (and d!1656338 (not c!880524)) b!5123423))

(assert (=> b!5123422 m!6185140))

(declare-fun m!6185452 () Bool)

(assert (=> b!5123422 m!6185452))

(assert (=> b!5123422 m!6185452))

(declare-fun m!6185454 () Bool)

(assert (=> b!5123422 m!6185454))

(assert (=> b!5123247 d!1656338))

(declare-fun bs!1193351 () Bool)

(declare-fun d!1656340 () Bool)

(assert (= bs!1193351 (and d!1656340 d!1656094)))

(declare-fun lambda!251559 () Int)

(assert (=> bs!1193351 (= (= (h!65723 testedP!265) lt!2112326) (= lambda!251559 lambda!251519))))

(assert (=> d!1656340 true))

(assert (=> d!1656340 (= (derivationStepZipper!860 baseZ!46 (h!65723 testedP!265)) (flatMap!365 baseZ!46 lambda!251559))))

(declare-fun bs!1193352 () Bool)

(assert (= bs!1193352 d!1656340))

(declare-fun m!6185456 () Bool)

(assert (=> bs!1193352 m!6185456))

(assert (=> b!5123247 d!1656340))

(declare-fun d!1656342 () Bool)

(declare-fun c!880525 () Bool)

(assert (=> d!1656342 (= c!880525 ((_ is Nil!59275) lt!2112450))))

(declare-fun e!3195275 () (InoxSet C!28740))

(assert (=> d!1656342 (= (content!10541 lt!2112450) e!3195275)))

(declare-fun b!5123424 () Bool)

(assert (=> b!5123424 (= e!3195275 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123425 () Bool)

(assert (=> b!5123425 (= e!3195275 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112450) true) (content!10541 (t!372420 lt!2112450))))))

(assert (= (and d!1656342 c!880525) b!5123424))

(assert (= (and d!1656342 (not c!880525)) b!5123425))

(declare-fun m!6185458 () Bool)

(assert (=> b!5123425 m!6185458))

(declare-fun m!6185460 () Bool)

(assert (=> b!5123425 m!6185460))

(assert (=> d!1656172 d!1656342))

(declare-fun d!1656344 () Bool)

(declare-fun c!880526 () Bool)

(assert (=> d!1656344 (= c!880526 ((_ is Nil!59275) knownP!20))))

(declare-fun e!3195276 () (InoxSet C!28740))

(assert (=> d!1656344 (= (content!10541 knownP!20) e!3195276)))

(declare-fun b!5123426 () Bool)

(assert (=> b!5123426 (= e!3195276 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123427 () Bool)

(assert (=> b!5123427 (= e!3195276 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 knownP!20) true) (content!10541 (t!372420 knownP!20))))))

(assert (= (and d!1656344 c!880526) b!5123426))

(assert (= (and d!1656344 (not c!880526)) b!5123427))

(declare-fun m!6185462 () Bool)

(assert (=> b!5123427 m!6185462))

(assert (=> b!5123427 m!6185358))

(assert (=> d!1656172 d!1656344))

(assert (=> d!1656172 d!1656208))

(declare-fun d!1656346 () Bool)

(declare-fun lt!2112521 () Int)

(assert (=> d!1656346 (>= lt!2112521 0)))

(declare-fun e!3195277 () Int)

(assert (=> d!1656346 (= lt!2112521 e!3195277)))

(declare-fun c!880527 () Bool)

(assert (=> d!1656346 (= c!880527 ((_ is Nil!59275) lt!2112378))))

(assert (=> d!1656346 (= (size!39543 lt!2112378) lt!2112521)))

(declare-fun b!5123428 () Bool)

(assert (=> b!5123428 (= e!3195277 0)))

(declare-fun b!5123429 () Bool)

(assert (=> b!5123429 (= e!3195277 (+ 1 (size!39543 (t!372420 lt!2112378))))))

(assert (= (and d!1656346 c!880527) b!5123428))

(assert (= (and d!1656346 (not c!880527)) b!5123429))

(declare-fun m!6185464 () Bool)

(assert (=> b!5123429 m!6185464))

(assert (=> b!5123088 d!1656346))

(declare-fun d!1656348 () Bool)

(declare-fun lt!2112522 () Int)

(assert (=> d!1656348 (>= lt!2112522 0)))

(declare-fun e!3195278 () Int)

(assert (=> d!1656348 (= lt!2112522 e!3195278)))

(declare-fun c!880528 () Bool)

(assert (=> d!1656348 (= c!880528 ((_ is Nil!59275) lt!2112333))))

(assert (=> d!1656348 (= (size!39543 lt!2112333) lt!2112522)))

(declare-fun b!5123430 () Bool)

(assert (=> b!5123430 (= e!3195278 0)))

(declare-fun b!5123431 () Bool)

(assert (=> b!5123431 (= e!3195278 (+ 1 (size!39543 (t!372420 lt!2112333))))))

(assert (= (and d!1656348 c!880528) b!5123430))

(assert (= (and d!1656348 (not c!880528)) b!5123431))

(assert (=> b!5123431 m!6185240))

(assert (=> b!5123088 d!1656348))

(assert (=> b!5123088 d!1656270))

(declare-fun d!1656350 () Bool)

(declare-fun c!880529 () Bool)

(assert (=> d!1656350 (= c!880529 ((_ is Nil!59275) lt!2112385))))

(declare-fun e!3195279 () (InoxSet C!28740))

(assert (=> d!1656350 (= (content!10541 lt!2112385) e!3195279)))

(declare-fun b!5123432 () Bool)

(assert (=> b!5123432 (= e!3195279 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123433 () Bool)

(assert (=> b!5123433 (= e!3195279 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112385) true) (content!10541 (t!372420 lt!2112385))))))

(assert (= (and d!1656350 c!880529) b!5123432))

(assert (= (and d!1656350 (not c!880529)) b!5123433))

(declare-fun m!6185466 () Bool)

(assert (=> b!5123433 m!6185466))

(declare-fun m!6185468 () Bool)

(assert (=> b!5123433 m!6185468))

(assert (=> d!1656072 d!1656350))

(assert (=> d!1656072 d!1656224))

(declare-fun d!1656352 () Bool)

(declare-fun c!880530 () Bool)

(assert (=> d!1656352 (= c!880530 ((_ is Nil!59275) lt!2112327))))

(declare-fun e!3195280 () (InoxSet C!28740))

(assert (=> d!1656352 (= (content!10541 lt!2112327) e!3195280)))

(declare-fun b!5123434 () Bool)

(assert (=> b!5123434 (= e!3195280 ((as const (Array C!28740 Bool)) false))))

(declare-fun b!5123435 () Bool)

(assert (=> b!5123435 (= e!3195280 ((_ map or) (store ((as const (Array C!28740 Bool)) false) (h!65723 lt!2112327) true) (content!10541 (t!372420 lt!2112327))))))

(assert (= (and d!1656352 c!880530) b!5123434))

(assert (= (and d!1656352 (not c!880530)) b!5123435))

(declare-fun m!6185470 () Bool)

(assert (=> b!5123435 m!6185470))

(declare-fun m!6185472 () Bool)

(assert (=> b!5123435 m!6185472))

(assert (=> d!1656072 d!1656352))

(assert (=> b!5123252 d!1656060))

(assert (=> b!5123252 d!1656032))

(assert (=> b!5123250 d!1656254))

(assert (=> b!5123250 d!1656238))

(declare-fun d!1656354 () Bool)

(declare-fun c!880531 () Bool)

(assert (=> d!1656354 (= c!880531 (isEmpty!31947 (tail!10088 lt!2112333)))))

(declare-fun e!3195281 () Bool)

(assert (=> d!1656354 (= (matchZipper!905 (derivationStepZipper!860 z!4463 (head!10953 lt!2112333)) (tail!10088 lt!2112333)) e!3195281)))

(declare-fun b!5123436 () Bool)

(assert (=> b!5123436 (= e!3195281 (nullableZipper!1034 (derivationStepZipper!860 z!4463 (head!10953 lt!2112333))))))

(declare-fun b!5123437 () Bool)

(assert (=> b!5123437 (= e!3195281 (matchZipper!905 (derivationStepZipper!860 (derivationStepZipper!860 z!4463 (head!10953 lt!2112333)) (head!10953 (tail!10088 lt!2112333))) (tail!10088 (tail!10088 lt!2112333))))))

(assert (= (and d!1656354 c!880531) b!5123436))

(assert (= (and d!1656354 (not c!880531)) b!5123437))

(assert (=> d!1656354 m!6184704))

(declare-fun m!6185474 () Bool)

(assert (=> d!1656354 m!6185474))

(assert (=> b!5123436 m!6184738))

(declare-fun m!6185476 () Bool)

(assert (=> b!5123436 m!6185476))

(assert (=> b!5123437 m!6184704))

(declare-fun m!6185478 () Bool)

(assert (=> b!5123437 m!6185478))

(assert (=> b!5123437 m!6184738))

(assert (=> b!5123437 m!6185478))

(declare-fun m!6185480 () Bool)

(assert (=> b!5123437 m!6185480))

(assert (=> b!5123437 m!6184704))

(declare-fun m!6185482 () Bool)

(assert (=> b!5123437 m!6185482))

(assert (=> b!5123437 m!6185480))

(assert (=> b!5123437 m!6185482))

(declare-fun m!6185484 () Bool)

(assert (=> b!5123437 m!6185484))

(assert (=> b!5123041 d!1656354))

(declare-fun bs!1193353 () Bool)

(declare-fun d!1656356 () Bool)

(assert (= bs!1193353 (and d!1656356 d!1656094)))

(declare-fun lambda!251560 () Int)

(assert (=> bs!1193353 (= (= (head!10953 lt!2112333) lt!2112326) (= lambda!251560 lambda!251519))))

(declare-fun bs!1193354 () Bool)

(assert (= bs!1193354 (and d!1656356 d!1656340)))

(assert (=> bs!1193354 (= (= (head!10953 lt!2112333) (h!65723 testedP!265)) (= lambda!251560 lambda!251559))))

(assert (=> d!1656356 true))

(assert (=> d!1656356 (= (derivationStepZipper!860 z!4463 (head!10953 lt!2112333)) (flatMap!365 z!4463 lambda!251560))))

(declare-fun bs!1193355 () Bool)

(assert (= bs!1193355 d!1656356))

(declare-fun m!6185486 () Bool)

(assert (=> bs!1193355 m!6185486))

(assert (=> b!5123041 d!1656356))

(assert (=> b!5123041 d!1656198))

(assert (=> b!5123041 d!1656084))

(declare-fun d!1656358 () Bool)

(declare-fun lt!2112523 () Int)

(assert (=> d!1656358 (>= lt!2112523 0)))

(declare-fun e!3195282 () Int)

(assert (=> d!1656358 (= lt!2112523 e!3195282)))

(declare-fun c!880532 () Bool)

(assert (=> d!1656358 (= c!880532 ((_ is Nil!59275) (t!372420 lt!2112314)))))

(assert (=> d!1656358 (= (size!39543 (t!372420 lt!2112314)) lt!2112523)))

(declare-fun b!5123438 () Bool)

(assert (=> b!5123438 (= e!3195282 0)))

(declare-fun b!5123439 () Bool)

(assert (=> b!5123439 (= e!3195282 (+ 1 (size!39543 (t!372420 (t!372420 lt!2112314)))))))

(assert (= (and d!1656358 c!880532) b!5123438))

(assert (= (and d!1656358 (not c!880532)) b!5123439))

(declare-fun m!6185488 () Bool)

(assert (=> b!5123439 m!6185488))

(assert (=> b!5123101 d!1656358))

(declare-fun d!1656360 () Bool)

(declare-fun res!2181653 () Bool)

(declare-fun e!3195283 () Bool)

(assert (=> d!1656360 (=> res!2181653 e!3195283)))

(assert (=> d!1656360 (= res!2181653 ((_ is Nil!59276) (exprs!4121 setElem!30502)))))

(assert (=> d!1656360 (= (forall!13627 (exprs!4121 setElem!30502) lambda!251538) e!3195283)))

(declare-fun b!5123440 () Bool)

(declare-fun e!3195284 () Bool)

(assert (=> b!5123440 (= e!3195283 e!3195284)))

(declare-fun res!2181654 () Bool)

(assert (=> b!5123440 (=> (not res!2181654) (not e!3195284))))

(assert (=> b!5123440 (= res!2181654 (dynLambda!23607 lambda!251538 (h!65724 (exprs!4121 setElem!30502))))))

(declare-fun b!5123441 () Bool)

(assert (=> b!5123441 (= e!3195284 (forall!13627 (t!372421 (exprs!4121 setElem!30502)) lambda!251538))))

(assert (= (and d!1656360 (not res!2181653)) b!5123440))

(assert (= (and b!5123440 res!2181654) b!5123441))

(declare-fun b_lambda!199019 () Bool)

(assert (=> (not b_lambda!199019) (not b!5123440)))

(declare-fun m!6185490 () Bool)

(assert (=> b!5123440 m!6185490))

(declare-fun m!6185492 () Bool)

(assert (=> b!5123441 m!6185492))

(assert (=> d!1656192 d!1656360))

(declare-fun d!1656362 () Bool)

(declare-fun e!3195287 () Bool)

(assert (=> d!1656362 e!3195287))

(declare-fun res!2181657 () Bool)

(assert (=> d!1656362 (=> (not res!2181657) (not e!3195287))))

(declare-fun lt!2112526 () List!59402)

(declare-fun noDuplicate!1077 (List!59402) Bool)

(assert (=> d!1656362 (= res!2181657 (noDuplicate!1077 lt!2112526))))

(declare-fun choose!37689 ((InoxSet Context!7242)) List!59402)

(assert (=> d!1656362 (= lt!2112526 (choose!37689 z!4463))))

(assert (=> d!1656362 (= (toList!8270 z!4463) lt!2112526)))

(declare-fun b!5123444 () Bool)

(declare-fun content!10542 (List!59402) (InoxSet Context!7242))

(assert (=> b!5123444 (= e!3195287 (= (content!10542 lt!2112526) z!4463))))

(assert (= (and d!1656362 res!2181657) b!5123444))

(declare-fun m!6185494 () Bool)

(assert (=> d!1656362 m!6185494))

(declare-fun m!6185496 () Bool)

(assert (=> d!1656362 m!6185496))

(declare-fun m!6185498 () Bool)

(assert (=> b!5123444 m!6185498))

(assert (=> bm!356683 d!1656362))

(declare-fun b!5123445 () Bool)

(declare-fun e!3195289 () List!59399)

(assert (=> b!5123445 (= e!3195289 lt!2112328)))

(declare-fun b!5123447 () Bool)

(declare-fun res!2181658 () Bool)

(declare-fun e!3195288 () Bool)

(assert (=> b!5123447 (=> (not res!2181658) (not e!3195288))))

(declare-fun lt!2112527 () List!59399)

(assert (=> b!5123447 (= res!2181658 (= (size!39543 lt!2112527) (+ (size!39543 (t!372420 testedP!265)) (size!39543 lt!2112328))))))

(declare-fun d!1656364 () Bool)

(assert (=> d!1656364 e!3195288))

(declare-fun res!2181659 () Bool)

(assert (=> d!1656364 (=> (not res!2181659) (not e!3195288))))

(assert (=> d!1656364 (= res!2181659 (= (content!10541 lt!2112527) ((_ map or) (content!10541 (t!372420 testedP!265)) (content!10541 lt!2112328))))))

(assert (=> d!1656364 (= lt!2112527 e!3195289)))

(declare-fun c!880533 () Bool)

(assert (=> d!1656364 (= c!880533 ((_ is Nil!59275) (t!372420 testedP!265)))))

(assert (=> d!1656364 (= (++!13050 (t!372420 testedP!265) lt!2112328) lt!2112527)))

(declare-fun b!5123448 () Bool)

(assert (=> b!5123448 (= e!3195288 (or (not (= lt!2112328 Nil!59275)) (= lt!2112527 (t!372420 testedP!265))))))

(declare-fun b!5123446 () Bool)

(assert (=> b!5123446 (= e!3195289 (Cons!59275 (h!65723 (t!372420 testedP!265)) (++!13050 (t!372420 (t!372420 testedP!265)) lt!2112328)))))

(assert (= (and d!1656364 c!880533) b!5123445))

(assert (= (and d!1656364 (not c!880533)) b!5123446))

(assert (= (and d!1656364 res!2181659) b!5123447))

(assert (= (and b!5123447 res!2181658) b!5123448))

(declare-fun m!6185500 () Bool)

(assert (=> b!5123447 m!6185500))

(assert (=> b!5123447 m!6184708))

(assert (=> b!5123447 m!6184794))

(declare-fun m!6185502 () Bool)

(assert (=> d!1656364 m!6185502))

(assert (=> d!1656364 m!6185236))

(assert (=> d!1656364 m!6184800))

(declare-fun m!6185504 () Bool)

(assert (=> b!5123446 m!6185504))

(assert (=> b!5123083 d!1656364))

(declare-fun d!1656366 () Bool)

(declare-fun e!3195292 () Bool)

(assert (=> d!1656366 e!3195292))

(declare-fun res!2181662 () Bool)

(assert (=> d!1656366 (=> res!2181662 e!3195292)))

(declare-fun lt!2112528 () Bool)

(assert (=> d!1656366 (= res!2181662 (not lt!2112528))))

(declare-fun e!3195291 () Bool)

(assert (=> d!1656366 (= lt!2112528 e!3195291)))

(declare-fun res!2181660 () Bool)

(assert (=> d!1656366 (=> res!2181660 e!3195291)))

(assert (=> d!1656366 (= res!2181660 ((_ is Nil!59275) (tail!10088 testedP!265)))))

(assert (=> d!1656366 (= (isPrefix!5642 (tail!10088 testedP!265) (tail!10088 input!5745)) lt!2112528)))

(declare-fun b!5123449 () Bool)

(declare-fun e!3195290 () Bool)

(assert (=> b!5123449 (= e!3195291 e!3195290)))

(declare-fun res!2181663 () Bool)

(assert (=> b!5123449 (=> (not res!2181663) (not e!3195290))))

(assert (=> b!5123449 (= res!2181663 (not ((_ is Nil!59275) (tail!10088 input!5745))))))

(declare-fun b!5123452 () Bool)

(assert (=> b!5123452 (= e!3195292 (>= (size!39543 (tail!10088 input!5745)) (size!39543 (tail!10088 testedP!265))))))

(declare-fun b!5123450 () Bool)

(declare-fun res!2181661 () Bool)

(assert (=> b!5123450 (=> (not res!2181661) (not e!3195290))))

(assert (=> b!5123450 (= res!2181661 (= (head!10953 (tail!10088 testedP!265)) (head!10953 (tail!10088 input!5745))))))

(declare-fun b!5123451 () Bool)

(assert (=> b!5123451 (= e!3195290 (isPrefix!5642 (tail!10088 (tail!10088 testedP!265)) (tail!10088 (tail!10088 input!5745))))))

(assert (= (and d!1656366 (not res!2181660)) b!5123449))

(assert (= (and b!5123449 res!2181663) b!5123450))

(assert (= (and b!5123450 res!2181661) b!5123451))

(assert (= (and d!1656366 (not res!2181662)) b!5123452))

(assert (=> b!5123452 m!6184876))

(assert (=> b!5123452 m!6185216))

(assert (=> b!5123452 m!6184784))

(declare-fun m!6185506 () Bool)

(assert (=> b!5123452 m!6185506))

(assert (=> b!5123450 m!6184784))

(declare-fun m!6185508 () Bool)

(assert (=> b!5123450 m!6185508))

(assert (=> b!5123450 m!6184876))

(assert (=> b!5123450 m!6185222))

(assert (=> b!5123451 m!6184784))

(declare-fun m!6185510 () Bool)

(assert (=> b!5123451 m!6185510))

(assert (=> b!5123451 m!6184876))

(assert (=> b!5123451 m!6185226))

(assert (=> b!5123451 m!6185510))

(assert (=> b!5123451 m!6185226))

(declare-fun m!6185512 () Bool)

(assert (=> b!5123451 m!6185512))

(assert (=> b!5123237 d!1656366))

(declare-fun d!1656368 () Bool)

(assert (=> d!1656368 (= (tail!10088 testedP!265) (t!372420 testedP!265))))

(assert (=> b!5123237 d!1656368))

(assert (=> b!5123237 d!1656220))

(assert (=> d!1656066 d!1656184))

(declare-fun d!1656370 () Bool)

(assert (=> d!1656370 (= (++!13050 (++!13050 testedP!265 lt!2112333) lt!2112334) (++!13050 testedP!265 (++!13050 lt!2112333 lt!2112334)))))

(assert (=> d!1656370 true))

(declare-fun _$52!2360 () Unit!150417)

(assert (=> d!1656370 (= (choose!37681 testedP!265 lt!2112333 lt!2112334) _$52!2360)))

(declare-fun bs!1193356 () Bool)

(assert (= bs!1193356 d!1656370))

(assert (=> bs!1193356 m!6184644))

(assert (=> bs!1193356 m!6184644))

(assert (=> bs!1193356 m!6184818))

(assert (=> bs!1193356 m!6184620))

(assert (=> bs!1193356 m!6184620))

(assert (=> bs!1193356 m!6184820))

(assert (=> d!1656066 d!1656370))

(assert (=> d!1656066 d!1656064))

(declare-fun b!5123453 () Bool)

(declare-fun e!3195294 () List!59399)

(assert (=> b!5123453 (= e!3195294 (++!13050 lt!2112333 lt!2112334))))

(declare-fun b!5123455 () Bool)

(declare-fun res!2181664 () Bool)

(declare-fun e!3195293 () Bool)

(assert (=> b!5123455 (=> (not res!2181664) (not e!3195293))))

(declare-fun lt!2112529 () List!59399)

(assert (=> b!5123455 (= res!2181664 (= (size!39543 lt!2112529) (+ (size!39543 testedP!265) (size!39543 (++!13050 lt!2112333 lt!2112334)))))))

(declare-fun d!1656372 () Bool)

(assert (=> d!1656372 e!3195293))

(declare-fun res!2181665 () Bool)

(assert (=> d!1656372 (=> (not res!2181665) (not e!3195293))))

(assert (=> d!1656372 (= res!2181665 (= (content!10541 lt!2112529) ((_ map or) (content!10541 testedP!265) (content!10541 (++!13050 lt!2112333 lt!2112334)))))))

(assert (=> d!1656372 (= lt!2112529 e!3195294)))

(declare-fun c!880534 () Bool)

(assert (=> d!1656372 (= c!880534 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656372 (= (++!13050 testedP!265 (++!13050 lt!2112333 lt!2112334)) lt!2112529)))

(declare-fun b!5123456 () Bool)

(assert (=> b!5123456 (= e!3195293 (or (not (= (++!13050 lt!2112333 lt!2112334) Nil!59275)) (= lt!2112529 testedP!265)))))

(declare-fun b!5123454 () Bool)

(assert (=> b!5123454 (= e!3195294 (Cons!59275 (h!65723 testedP!265) (++!13050 (t!372420 testedP!265) (++!13050 lt!2112333 lt!2112334))))))

(assert (= (and d!1656372 c!880534) b!5123453))

(assert (= (and d!1656372 (not c!880534)) b!5123454))

(assert (= (and d!1656372 res!2181665) b!5123455))

(assert (= (and b!5123455 res!2181664) b!5123456))

(declare-fun m!6185514 () Bool)

(assert (=> b!5123455 m!6185514))

(assert (=> b!5123455 m!6184634))

(assert (=> b!5123455 m!6184620))

(declare-fun m!6185516 () Bool)

(assert (=> b!5123455 m!6185516))

(declare-fun m!6185518 () Bool)

(assert (=> d!1656372 m!6185518))

(assert (=> d!1656372 m!6184798))

(assert (=> d!1656372 m!6184620))

(declare-fun m!6185520 () Bool)

(assert (=> d!1656372 m!6185520))

(assert (=> b!5123454 m!6184620))

(declare-fun m!6185522 () Bool)

(assert (=> b!5123454 m!6185522))

(assert (=> d!1656066 d!1656372))

(declare-fun b!5123457 () Bool)

(declare-fun e!3195296 () List!59399)

(assert (=> b!5123457 (= e!3195296 lt!2112334)))

(declare-fun b!5123459 () Bool)

(declare-fun res!2181666 () Bool)

(declare-fun e!3195295 () Bool)

(assert (=> b!5123459 (=> (not res!2181666) (not e!3195295))))

(declare-fun lt!2112530 () List!59399)

(assert (=> b!5123459 (= res!2181666 (= (size!39543 lt!2112530) (+ (size!39543 (++!13050 testedP!265 lt!2112333)) (size!39543 lt!2112334))))))

(declare-fun d!1656374 () Bool)

(assert (=> d!1656374 e!3195295))

(declare-fun res!2181667 () Bool)

(assert (=> d!1656374 (=> (not res!2181667) (not e!3195295))))

(assert (=> d!1656374 (= res!2181667 (= (content!10541 lt!2112530) ((_ map or) (content!10541 (++!13050 testedP!265 lt!2112333)) (content!10541 lt!2112334))))))

(assert (=> d!1656374 (= lt!2112530 e!3195296)))

(declare-fun c!880535 () Bool)

(assert (=> d!1656374 (= c!880535 ((_ is Nil!59275) (++!13050 testedP!265 lt!2112333)))))

(assert (=> d!1656374 (= (++!13050 (++!13050 testedP!265 lt!2112333) lt!2112334) lt!2112530)))

(declare-fun b!5123460 () Bool)

(assert (=> b!5123460 (= e!3195295 (or (not (= lt!2112334 Nil!59275)) (= lt!2112530 (++!13050 testedP!265 lt!2112333))))))

(declare-fun b!5123458 () Bool)

(assert (=> b!5123458 (= e!3195296 (Cons!59275 (h!65723 (++!13050 testedP!265 lt!2112333)) (++!13050 (t!372420 (++!13050 testedP!265 lt!2112333)) lt!2112334)))))

(assert (= (and d!1656374 c!880535) b!5123457))

(assert (= (and d!1656374 (not c!880535)) b!5123458))

(assert (= (and d!1656374 res!2181667) b!5123459))

(assert (= (and b!5123459 res!2181666) b!5123460))

(declare-fun m!6185524 () Bool)

(assert (=> b!5123459 m!6185524))

(assert (=> b!5123459 m!6184644))

(declare-fun m!6185526 () Bool)

(assert (=> b!5123459 m!6185526))

(assert (=> b!5123459 m!6184808))

(declare-fun m!6185528 () Bool)

(assert (=> d!1656374 m!6185528))

(assert (=> d!1656374 m!6184644))

(declare-fun m!6185530 () Bool)

(assert (=> d!1656374 m!6185530))

(assert (=> d!1656374 m!6184814))

(declare-fun m!6185532 () Bool)

(assert (=> b!5123458 m!6185532))

(assert (=> d!1656066 d!1656374))

(declare-fun d!1656376 () Bool)

(declare-fun c!880536 () Bool)

(assert (=> d!1656376 (= c!880536 (isEmpty!31947 (tail!10088 knownP!20)))))

(declare-fun e!3195297 () Bool)

(assert (=> d!1656376 (= (matchZipper!905 (derivationStepZipper!860 baseZ!46 (head!10953 knownP!20)) (tail!10088 knownP!20)) e!3195297)))

(declare-fun b!5123461 () Bool)

(assert (=> b!5123461 (= e!3195297 (nullableZipper!1034 (derivationStepZipper!860 baseZ!46 (head!10953 knownP!20))))))

(declare-fun b!5123462 () Bool)

(assert (=> b!5123462 (= e!3195297 (matchZipper!905 (derivationStepZipper!860 (derivationStepZipper!860 baseZ!46 (head!10953 knownP!20)) (head!10953 (tail!10088 knownP!20))) (tail!10088 (tail!10088 knownP!20))))))

(assert (= (and d!1656376 c!880536) b!5123461))

(assert (= (and d!1656376 (not c!880536)) b!5123462))

(assert (=> d!1656376 m!6184764))

(declare-fun m!6185534 () Bool)

(assert (=> d!1656376 m!6185534))

(assert (=> b!5123461 m!6184828))

(declare-fun m!6185536 () Bool)

(assert (=> b!5123461 m!6185536))

(assert (=> b!5123462 m!6184764))

(assert (=> b!5123462 m!6185220))

(assert (=> b!5123462 m!6184828))

(assert (=> b!5123462 m!6185220))

(declare-fun m!6185538 () Bool)

(assert (=> b!5123462 m!6185538))

(assert (=> b!5123462 m!6184764))

(assert (=> b!5123462 m!6185224))

(assert (=> b!5123462 m!6185538))

(assert (=> b!5123462 m!6185224))

(declare-fun m!6185540 () Bool)

(assert (=> b!5123462 m!6185540))

(assert (=> b!5123091 d!1656376))

(declare-fun bs!1193357 () Bool)

(declare-fun d!1656378 () Bool)

(assert (= bs!1193357 (and d!1656378 d!1656094)))

(declare-fun lambda!251561 () Int)

(assert (=> bs!1193357 (= (= (head!10953 knownP!20) lt!2112326) (= lambda!251561 lambda!251519))))

(declare-fun bs!1193358 () Bool)

(assert (= bs!1193358 (and d!1656378 d!1656340)))

(assert (=> bs!1193358 (= (= (head!10953 knownP!20) (h!65723 testedP!265)) (= lambda!251561 lambda!251559))))

(declare-fun bs!1193359 () Bool)

(assert (= bs!1193359 (and d!1656378 d!1656356)))

(assert (=> bs!1193359 (= (= (head!10953 knownP!20) (head!10953 lt!2112333)) (= lambda!251561 lambda!251560))))

(assert (=> d!1656378 true))

(assert (=> d!1656378 (= (derivationStepZipper!860 baseZ!46 (head!10953 knownP!20)) (flatMap!365 baseZ!46 lambda!251561))))

(declare-fun bs!1193360 () Bool)

(assert (= bs!1193360 d!1656378))

(declare-fun m!6185542 () Bool)

(assert (=> bs!1193360 m!6185542))

(assert (=> b!5123091 d!1656378))

(assert (=> b!5123091 d!1656254))

(assert (=> b!5123091 d!1656218))

(declare-fun d!1656380 () Bool)

(declare-fun e!3195300 () Bool)

(assert (=> d!1656380 e!3195300))

(declare-fun res!2181670 () Bool)

(assert (=> d!1656380 (=> res!2181670 e!3195300)))

(declare-fun lt!2112531 () Bool)

(assert (=> d!1656380 (= res!2181670 (not lt!2112531))))

(declare-fun e!3195299 () Bool)

(assert (=> d!1656380 (= lt!2112531 e!3195299)))

(declare-fun res!2181668 () Bool)

(assert (=> d!1656380 (=> res!2181668 e!3195299)))

(assert (=> d!1656380 (= res!2181668 ((_ is Nil!59275) (tail!10088 testedP!265)))))

(assert (=> d!1656380 (= (isPrefix!5642 (tail!10088 testedP!265) (tail!10088 knownP!20)) lt!2112531)))

(declare-fun b!5123463 () Bool)

(declare-fun e!3195298 () Bool)

(assert (=> b!5123463 (= e!3195299 e!3195298)))

(declare-fun res!2181671 () Bool)

(assert (=> b!5123463 (=> (not res!2181671) (not e!3195298))))

(assert (=> b!5123463 (= res!2181671 (not ((_ is Nil!59275) (tail!10088 knownP!20))))))

(declare-fun b!5123466 () Bool)

(assert (=> b!5123466 (= e!3195300 (>= (size!39543 (tail!10088 knownP!20)) (size!39543 (tail!10088 testedP!265))))))

(declare-fun b!5123464 () Bool)

(declare-fun res!2181669 () Bool)

(assert (=> b!5123464 (=> (not res!2181669) (not e!3195298))))

(assert (=> b!5123464 (= res!2181669 (= (head!10953 (tail!10088 testedP!265)) (head!10953 (tail!10088 knownP!20))))))

(declare-fun b!5123465 () Bool)

(assert (=> b!5123465 (= e!3195298 (isPrefix!5642 (tail!10088 (tail!10088 testedP!265)) (tail!10088 (tail!10088 knownP!20))))))

(assert (= (and d!1656380 (not res!2181668)) b!5123463))

(assert (= (and b!5123463 res!2181671) b!5123464))

(assert (= (and b!5123464 res!2181669) b!5123465))

(assert (= (and d!1656380 (not res!2181670)) b!5123466))

(assert (=> b!5123466 m!6184764))

(assert (=> b!5123466 m!6185218))

(assert (=> b!5123466 m!6184784))

(assert (=> b!5123466 m!6185506))

(assert (=> b!5123464 m!6184784))

(assert (=> b!5123464 m!6185508))

(assert (=> b!5123464 m!6184764))

(assert (=> b!5123464 m!6185220))

(assert (=> b!5123465 m!6184784))

(assert (=> b!5123465 m!6185510))

(assert (=> b!5123465 m!6184764))

(assert (=> b!5123465 m!6185224))

(assert (=> b!5123465 m!6185510))

(assert (=> b!5123465 m!6185224))

(declare-fun m!6185544 () Bool)

(assert (=> b!5123465 m!6185544))

(assert (=> b!5123070 d!1656380))

(assert (=> b!5123070 d!1656368))

(assert (=> b!5123070 d!1656218))

(declare-fun bs!1193361 () Bool)

(declare-fun d!1656382 () Bool)

(assert (= bs!1193361 (and d!1656382 d!1656248)))

(declare-fun lambda!251564 () Int)

(assert (=> bs!1193361 (= lambda!251564 lambda!251548)))

(declare-fun bs!1193362 () Bool)

(assert (= bs!1193362 (and d!1656382 d!1656190)))

(assert (=> bs!1193362 (not (= lambda!251564 lambda!251535))))

(declare-fun bs!1193363 () Bool)

(assert (= bs!1193363 (and d!1656382 d!1656230)))

(assert (=> bs!1193363 (not (= lambda!251564 lambda!251545))))

(declare-fun bs!1193364 () Bool)

(assert (= bs!1193364 (and d!1656382 d!1656252)))

(assert (=> bs!1193364 (not (= lambda!251564 lambda!251549))))

(declare-fun bs!1193365 () Bool)

(assert (= bs!1193365 (and d!1656382 d!1656324)))

(assert (=> bs!1193365 (not (= lambda!251564 lambda!251558))))

(declare-fun bs!1193366 () Bool)

(assert (= bs!1193366 (and d!1656382 b!5123258)))

(assert (=> bs!1193366 (not (= lambda!251564 lambda!251537))))

(declare-fun bs!1193367 () Bool)

(assert (= bs!1193367 (and d!1656382 b!5123257)))

(assert (=> bs!1193367 (not (= lambda!251564 lambda!251536))))

(declare-fun bs!1193368 () Bool)

(assert (= bs!1193368 (and d!1656382 d!1656286)))

(assert (=> bs!1193368 (not (= lambda!251564 lambda!251551))))

(declare-fun bs!1193369 () Bool)

(assert (= bs!1193369 (and d!1656382 d!1656228)))

(assert (=> bs!1193369 (= (= lambda!251535 (ite c!880461 lambda!251536 lambda!251537)) (= lambda!251564 lambda!251542))))

(assert (=> d!1656382 true))

(assert (=> d!1656382 (< (dynLambda!23606 order!26795 lambda!251535) (dynLambda!23606 order!26795 lambda!251564))))

(assert (=> d!1656382 (exists!1487 lt!2112480 lambda!251564)))

(declare-fun lt!2112534 () Unit!150417)

(declare-fun choose!37691 (List!59402 Int) Unit!150417)

(assert (=> d!1656382 (= lt!2112534 (choose!37691 lt!2112480 lambda!251535))))

(assert (=> d!1656382 (not (forall!13629 lt!2112480 lambda!251535))))

(assert (=> d!1656382 (= (lemmaNotForallThenExists!344 lt!2112480 lambda!251535) lt!2112534)))

(declare-fun bs!1193370 () Bool)

(assert (= bs!1193370 d!1656382))

(declare-fun m!6185546 () Bool)

(assert (=> bs!1193370 m!6185546))

(declare-fun m!6185548 () Bool)

(assert (=> bs!1193370 m!6185548))

(declare-fun m!6185550 () Bool)

(assert (=> bs!1193370 m!6185550))

(assert (=> b!5123257 d!1656382))

(declare-fun d!1656384 () Bool)

(assert (=> d!1656384 (isPrefix!5642 (++!13050 testedP!265 (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275)) input!5745)))

(assert (=> d!1656384 true))

(declare-fun _$65!1769 () Unit!150417)

(assert (=> d!1656384 (= (choose!37685 testedP!265 input!5745) _$65!1769)))

(declare-fun bs!1193371 () Bool)

(assert (= bs!1193371 d!1656384))

(assert (=> bs!1193371 m!6184668))

(assert (=> bs!1193371 m!6184668))

(assert (=> bs!1193371 m!6185094))

(assert (=> bs!1193371 m!6185092))

(assert (=> bs!1193371 m!6185092))

(assert (=> bs!1193371 m!6185098))

(assert (=> d!1656168 d!1656384))

(declare-fun d!1656386 () Bool)

(assert (=> d!1656386 (= (head!10953 (getSuffix!3314 input!5745 testedP!265)) (h!65723 (getSuffix!3314 input!5745 testedP!265)))))

(assert (=> d!1656168 d!1656386))

(declare-fun b!5123467 () Bool)

(declare-fun e!3195304 () List!59399)

(assert (=> b!5123467 (= e!3195304 (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275))))

(declare-fun b!5123469 () Bool)

(declare-fun res!2181672 () Bool)

(declare-fun e!3195303 () Bool)

(assert (=> b!5123469 (=> (not res!2181672) (not e!3195303))))

(declare-fun lt!2112535 () List!59399)

(assert (=> b!5123469 (= res!2181672 (= (size!39543 lt!2112535) (+ (size!39543 testedP!265) (size!39543 (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275)))))))

(declare-fun d!1656388 () Bool)

(assert (=> d!1656388 e!3195303))

(declare-fun res!2181673 () Bool)

(assert (=> d!1656388 (=> (not res!2181673) (not e!3195303))))

(assert (=> d!1656388 (= res!2181673 (= (content!10541 lt!2112535) ((_ map or) (content!10541 testedP!265) (content!10541 (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275)))))))

(assert (=> d!1656388 (= lt!2112535 e!3195304)))

(declare-fun c!880537 () Bool)

(assert (=> d!1656388 (= c!880537 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656388 (= (++!13050 testedP!265 (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275)) lt!2112535)))

(declare-fun b!5123470 () Bool)

(assert (=> b!5123470 (= e!3195303 (or (not (= (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275) Nil!59275)) (= lt!2112535 testedP!265)))))

(declare-fun b!5123468 () Bool)

(assert (=> b!5123468 (= e!3195304 (Cons!59275 (h!65723 testedP!265) (++!13050 (t!372420 testedP!265) (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275))))))

(assert (= (and d!1656388 c!880537) b!5123467))

(assert (= (and d!1656388 (not c!880537)) b!5123468))

(assert (= (and d!1656388 res!2181673) b!5123469))

(assert (= (and b!5123469 res!2181672) b!5123470))

(declare-fun m!6185552 () Bool)

(assert (=> b!5123469 m!6185552))

(assert (=> b!5123469 m!6184634))

(declare-fun m!6185554 () Bool)

(assert (=> b!5123469 m!6185554))

(declare-fun m!6185556 () Bool)

(assert (=> d!1656388 m!6185556))

(assert (=> d!1656388 m!6184798))

(declare-fun m!6185558 () Bool)

(assert (=> d!1656388 m!6185558))

(declare-fun m!6185560 () Bool)

(assert (=> b!5123468 m!6185560))

(assert (=> d!1656168 d!1656388))

(assert (=> d!1656168 d!1656180))

(assert (=> d!1656168 d!1656086))

(declare-fun d!1656390 () Bool)

(declare-fun e!3195307 () Bool)

(assert (=> d!1656390 e!3195307))

(declare-fun res!2181676 () Bool)

(assert (=> d!1656390 (=> res!2181676 e!3195307)))

(declare-fun lt!2112536 () Bool)

(assert (=> d!1656390 (= res!2181676 (not lt!2112536))))

(declare-fun e!3195306 () Bool)

(assert (=> d!1656390 (= lt!2112536 e!3195306)))

(declare-fun res!2181674 () Bool)

(assert (=> d!1656390 (=> res!2181674 e!3195306)))

(assert (=> d!1656390 (= res!2181674 ((_ is Nil!59275) (++!13050 testedP!265 (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275))))))

(assert (=> d!1656390 (= (isPrefix!5642 (++!13050 testedP!265 (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275)) input!5745) lt!2112536)))

(declare-fun b!5123471 () Bool)

(declare-fun e!3195305 () Bool)

(assert (=> b!5123471 (= e!3195306 e!3195305)))

(declare-fun res!2181677 () Bool)

(assert (=> b!5123471 (=> (not res!2181677) (not e!3195305))))

(assert (=> b!5123471 (= res!2181677 (not ((_ is Nil!59275) input!5745)))))

(declare-fun b!5123474 () Bool)

(assert (=> b!5123474 (= e!3195307 (>= (size!39543 input!5745) (size!39543 (++!13050 testedP!265 (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275)))))))

(declare-fun b!5123472 () Bool)

(declare-fun res!2181675 () Bool)

(assert (=> b!5123472 (=> (not res!2181675) (not e!3195305))))

(assert (=> b!5123472 (= res!2181675 (= (head!10953 (++!13050 testedP!265 (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275))) (head!10953 input!5745)))))

(declare-fun b!5123473 () Bool)

(assert (=> b!5123473 (= e!3195305 (isPrefix!5642 (tail!10088 (++!13050 testedP!265 (Cons!59275 (head!10953 (getSuffix!3314 input!5745 testedP!265)) Nil!59275))) (tail!10088 input!5745)))))

(assert (= (and d!1656390 (not res!2181674)) b!5123471))

(assert (= (and b!5123471 res!2181677) b!5123472))

(assert (= (and b!5123472 res!2181675) b!5123473))

(assert (= (and d!1656390 (not res!2181676)) b!5123474))

(assert (=> b!5123474 m!6184680))

(assert (=> b!5123474 m!6185092))

(declare-fun m!6185562 () Bool)

(assert (=> b!5123474 m!6185562))

(assert (=> b!5123472 m!6185092))

(declare-fun m!6185564 () Bool)

(assert (=> b!5123472 m!6185564))

(assert (=> b!5123472 m!6184884))

(assert (=> b!5123473 m!6185092))

(declare-fun m!6185566 () Bool)

(assert (=> b!5123473 m!6185566))

(assert (=> b!5123473 m!6184876))

(assert (=> b!5123473 m!6185566))

(assert (=> b!5123473 m!6184876))

(declare-fun m!6185568 () Bool)

(assert (=> b!5123473 m!6185568))

(assert (=> d!1656168 d!1656390))

(declare-fun b!5123475 () Bool)

(declare-fun e!3195309 () List!59399)

(assert (=> b!5123475 (= e!3195309 lt!2112362)))

(declare-fun b!5123477 () Bool)

(declare-fun res!2181678 () Bool)

(declare-fun e!3195308 () Bool)

(assert (=> b!5123477 (=> (not res!2181678) (not e!3195308))))

(declare-fun lt!2112537 () List!59399)

(assert (=> b!5123477 (= res!2181678 (= (size!39543 lt!2112537) (+ (size!39543 testedP!265) (size!39543 lt!2112362))))))

(declare-fun d!1656392 () Bool)

(assert (=> d!1656392 e!3195308))

(declare-fun res!2181679 () Bool)

(assert (=> d!1656392 (=> (not res!2181679) (not e!3195308))))

(assert (=> d!1656392 (= res!2181679 (= (content!10541 lt!2112537) ((_ map or) (content!10541 testedP!265) (content!10541 lt!2112362))))))

(assert (=> d!1656392 (= lt!2112537 e!3195309)))

(declare-fun c!880538 () Bool)

(assert (=> d!1656392 (= c!880538 ((_ is Nil!59275) testedP!265))))

(assert (=> d!1656392 (= (++!13050 testedP!265 lt!2112362) lt!2112537)))

(declare-fun b!5123478 () Bool)

(assert (=> b!5123478 (= e!3195308 (or (not (= lt!2112362 Nil!59275)) (= lt!2112537 testedP!265)))))

(declare-fun b!5123476 () Bool)

(assert (=> b!5123476 (= e!3195309 (Cons!59275 (h!65723 testedP!265) (++!13050 (t!372420 testedP!265) lt!2112362)))))

(assert (= (and d!1656392 c!880538) b!5123475))

(assert (= (and d!1656392 (not c!880538)) b!5123476))

(assert (= (and d!1656392 res!2181679) b!5123477))

(assert (= (and b!5123477 res!2181678) b!5123478))

(declare-fun m!6185570 () Bool)

(assert (=> b!5123477 m!6185570))

(assert (=> b!5123477 m!6184634))

(declare-fun m!6185572 () Bool)

(assert (=> b!5123477 m!6185572))

(declare-fun m!6185574 () Bool)

(assert (=> d!1656392 m!6185574))

(assert (=> d!1656392 m!6184798))

(declare-fun m!6185576 () Bool)

(assert (=> d!1656392 m!6185576))

(declare-fun m!6185578 () Bool)

(assert (=> b!5123476 m!6185578))

(assert (=> d!1656040 d!1656392))

(assert (=> d!1656040 d!1656032))

(assert (=> d!1656040 d!1656026))

(declare-fun d!1656394 () Bool)

(assert (=> d!1656394 (= (isEmpty!31947 knownP!20) ((_ is Nil!59275) knownP!20))))

(assert (=> d!1656068 d!1656394))

(declare-fun d!1656396 () Bool)

(declare-fun lt!2112538 () Int)

(assert (=> d!1656396 (>= lt!2112538 0)))

(declare-fun e!3195310 () Int)

(assert (=> d!1656396 (= lt!2112538 e!3195310)))

(declare-fun c!880539 () Bool)

(assert (=> d!1656396 (= c!880539 ((_ is Nil!59275) lt!2112481))))

(assert (=> d!1656396 (= (size!39543 lt!2112481) lt!2112538)))

(declare-fun b!5123479 () Bool)

(assert (=> b!5123479 (= e!3195310 0)))

(declare-fun b!5123480 () Bool)

(assert (=> b!5123480 (= e!3195310 (+ 1 (size!39543 (t!372420 lt!2112481))))))

(assert (= (and d!1656396 c!880539) b!5123479))

(assert (= (and d!1656396 (not c!880539)) b!5123480))

(declare-fun m!6185580 () Bool)

(assert (=> b!5123480 m!6185580))

(assert (=> b!5123263 d!1656396))

(assert (=> b!5123263 d!1656026))

(declare-fun d!1656398 () Bool)

(declare-fun lt!2112539 () Int)

(assert (=> d!1656398 (>= lt!2112539 0)))

(declare-fun e!3195311 () Int)

(assert (=> d!1656398 (= lt!2112539 e!3195311)))

(declare-fun c!880540 () Bool)

(assert (=> d!1656398 (= c!880540 ((_ is Nil!59275) lt!2112331))))

(assert (=> d!1656398 (= (size!39543 lt!2112331) lt!2112539)))

(declare-fun b!5123481 () Bool)

(assert (=> b!5123481 (= e!3195311 0)))

(declare-fun b!5123482 () Bool)

(assert (=> b!5123482 (= e!3195311 (+ 1 (size!39543 (t!372420 lt!2112331))))))

(assert (= (and d!1656398 c!880540) b!5123481))

(assert (= (and d!1656398 (not c!880540)) b!5123482))

(declare-fun m!6185582 () Bool)

(assert (=> b!5123482 m!6185582))

(assert (=> b!5123263 d!1656398))

(declare-fun d!1656400 () Bool)

(declare-fun lt!2112540 () Int)

(assert (=> d!1656400 (>= lt!2112540 0)))

(declare-fun e!3195312 () Int)

(assert (=> d!1656400 (= lt!2112540 e!3195312)))

(declare-fun c!880541 () Bool)

(assert (=> d!1656400 (= c!880541 ((_ is Nil!59275) lt!2112389))))

(assert (=> d!1656400 (= (size!39543 lt!2112389) lt!2112540)))

(declare-fun b!5123483 () Bool)

(assert (=> b!5123483 (= e!3195312 0)))

(declare-fun b!5123484 () Bool)

(assert (=> b!5123484 (= e!3195312 (+ 1 (size!39543 (t!372420 lt!2112389))))))

(assert (= (and d!1656400 c!880541) b!5123483))

(assert (= (and d!1656400 (not c!880541)) b!5123484))

(declare-fun m!6185584 () Bool)

(assert (=> b!5123484 m!6185584))

(assert (=> b!5123104 d!1656400))

(assert (=> b!5123104 d!1656078))

(assert (=> b!5123104 d!1656294))

(declare-fun d!1656402 () Bool)

(declare-fun lt!2112541 () Int)

(assert (=> d!1656402 (>= lt!2112541 0)))

(declare-fun e!3195313 () Int)

(assert (=> d!1656402 (= lt!2112541 e!3195313)))

(declare-fun c!880542 () Bool)

(assert (=> d!1656402 (= c!880542 ((_ is Nil!59275) lt!2112455))))

(assert (=> d!1656402 (= (size!39543 lt!2112455) lt!2112541)))

(declare-fun b!5123485 () Bool)

(assert (=> b!5123485 (= e!3195313 0)))

(declare-fun b!5123486 () Bool)

(assert (=> b!5123486 (= e!3195313 (+ 1 (size!39543 (t!372420 lt!2112455))))))

(assert (= (and d!1656402 c!880542) b!5123485))

(assert (= (and d!1656402 (not c!880542)) b!5123486))

(declare-fun m!6185586 () Bool)

(assert (=> b!5123486 m!6185586))

(assert (=> b!5123245 d!1656402))

(assert (=> b!5123245 d!1656026))

(assert (=> b!5123245 d!1656348))

(declare-fun b!5123487 () Bool)

(declare-fun e!3195315 () List!59399)

(assert (=> b!5123487 (= e!3195315 lt!2112334)))

(declare-fun b!5123489 () Bool)

(declare-fun res!2181680 () Bool)

(declare-fun e!3195314 () Bool)

(assert (=> b!5123489 (=> (not res!2181680) (not e!3195314))))

(declare-fun lt!2112542 () List!59399)

(assert (=> b!5123489 (= res!2181680 (= (size!39543 lt!2112542) (+ (size!39543 (t!372420 lt!2112336)) (size!39543 lt!2112334))))))

(declare-fun d!1656404 () Bool)

(assert (=> d!1656404 e!3195314))

(declare-fun res!2181681 () Bool)

(assert (=> d!1656404 (=> (not res!2181681) (not e!3195314))))

(assert (=> d!1656404 (= res!2181681 (= (content!10541 lt!2112542) ((_ map or) (content!10541 (t!372420 lt!2112336)) (content!10541 lt!2112334))))))

(assert (=> d!1656404 (= lt!2112542 e!3195315)))

(declare-fun c!880543 () Bool)

(assert (=> d!1656404 (= c!880543 ((_ is Nil!59275) (t!372420 lt!2112336)))))

(assert (=> d!1656404 (= (++!13050 (t!372420 lt!2112336) lt!2112334) lt!2112542)))

(declare-fun b!5123490 () Bool)

(assert (=> b!5123490 (= e!3195314 (or (not (= lt!2112334 Nil!59275)) (= lt!2112542 (t!372420 lt!2112336))))))

(declare-fun b!5123488 () Bool)

(assert (=> b!5123488 (= e!3195315 (Cons!59275 (h!65723 (t!372420 lt!2112336)) (++!13050 (t!372420 (t!372420 lt!2112336)) lt!2112334)))))

(assert (= (and d!1656404 c!880543) b!5123487))

(assert (= (and d!1656404 (not c!880543)) b!5123488))

(assert (= (and d!1656404 res!2181681) b!5123489))

(assert (= (and b!5123489 res!2181680) b!5123490))

(declare-fun m!6185588 () Bool)

(assert (=> b!5123489 m!6185588))

(assert (=> b!5123489 m!6185308))

(assert (=> b!5123489 m!6184808))

(declare-fun m!6185590 () Bool)

(assert (=> d!1656404 m!6185590))

(assert (=> d!1656404 m!6185198))

(assert (=> d!1656404 m!6184814))

(declare-fun m!6185592 () Bool)

(assert (=> b!5123488 m!6185592))

(assert (=> b!5123240 d!1656404))

(declare-fun d!1656406 () Bool)

(declare-fun c!880544 () Bool)

(assert (=> d!1656406 (= c!880544 ((_ is Cons!59275) (t!372420 lt!2112314)))))

(declare-fun e!3195316 () (InoxSet Context!7242))

(assert (=> d!1656406 (= (derivationZipper!134 (derivationStepZipper!860 baseZ!46 (h!65723 lt!2112314)) (t!372420 lt!2112314)) e!3195316)))

(declare-fun b!5123491 () Bool)

(assert (=> b!5123491 (= e!3195316 (derivationZipper!134 (derivationStepZipper!860 (derivationStepZipper!860 baseZ!46 (h!65723 lt!2112314)) (h!65723 (t!372420 lt!2112314))) (t!372420 (t!372420 lt!2112314))))))

(declare-fun b!5123492 () Bool)

(assert (=> b!5123492 (= e!3195316 (derivationStepZipper!860 baseZ!46 (h!65723 lt!2112314)))))

(assert (= (and d!1656406 c!880544) b!5123491))

(assert (= (and d!1656406 (not c!880544)) b!5123492))

(assert (=> b!5123491 m!6185082))

(declare-fun m!6185594 () Bool)

(assert (=> b!5123491 m!6185594))

(assert (=> b!5123491 m!6185594))

(declare-fun m!6185596 () Bool)

(assert (=> b!5123491 m!6185596))

(assert (=> b!5123219 d!1656406))

(declare-fun bs!1193372 () Bool)

(declare-fun d!1656408 () Bool)

(assert (= bs!1193372 (and d!1656408 d!1656094)))

(declare-fun lambda!251565 () Int)

(assert (=> bs!1193372 (= (= (h!65723 lt!2112314) lt!2112326) (= lambda!251565 lambda!251519))))

(declare-fun bs!1193373 () Bool)

(assert (= bs!1193373 (and d!1656408 d!1656340)))

(assert (=> bs!1193373 (= (= (h!65723 lt!2112314) (h!65723 testedP!265)) (= lambda!251565 lambda!251559))))

(declare-fun bs!1193374 () Bool)

(assert (= bs!1193374 (and d!1656408 d!1656356)))

(assert (=> bs!1193374 (= (= (h!65723 lt!2112314) (head!10953 lt!2112333)) (= lambda!251565 lambda!251560))))

(declare-fun bs!1193375 () Bool)

(assert (= bs!1193375 (and d!1656408 d!1656378)))

(assert (=> bs!1193375 (= (= (h!65723 lt!2112314) (head!10953 knownP!20)) (= lambda!251565 lambda!251561))))

(assert (=> d!1656408 true))

(assert (=> d!1656408 (= (derivationStepZipper!860 baseZ!46 (h!65723 lt!2112314)) (flatMap!365 baseZ!46 lambda!251565))))

(declare-fun bs!1193376 () Bool)

(assert (= bs!1193376 d!1656408))

(declare-fun m!6185598 () Bool)

(assert (=> bs!1193376 m!6185598))

(assert (=> b!5123219 d!1656408))

(assert (=> d!1656090 d!1656176))

(declare-fun d!1656410 () Bool)

(assert (=> d!1656410 (isPrefix!5642 lt!2112314 knownP!20)))

(assert (=> d!1656410 true))

(declare-fun _$69!363 () Unit!150417)

(assert (=> d!1656410 (= (choose!37679 knownP!20 lt!2112314 input!5745) _$69!363)))

(declare-fun bs!1193377 () Bool)

(assert (= bs!1193377 d!1656410))

(assert (=> bs!1193377 m!6184676))

(assert (=> d!1656090 d!1656410))

(assert (=> d!1656090 d!1656188))

(declare-fun d!1656412 () Bool)

(declare-fun c!880545 () Bool)

(assert (=> d!1656412 (= c!880545 (isEmpty!31947 (tail!10088 lt!2112320)))))

(declare-fun e!3195317 () Bool)

(assert (=> d!1656412 (= (matchZipper!905 (derivationStepZipper!860 lt!2112324 (head!10953 lt!2112320)) (tail!10088 lt!2112320)) e!3195317)))

(declare-fun b!5123493 () Bool)

(assert (=> b!5123493 (= e!3195317 (nullableZipper!1034 (derivationStepZipper!860 lt!2112324 (head!10953 lt!2112320))))))

(declare-fun b!5123494 () Bool)

(assert (=> b!5123494 (= e!3195317 (matchZipper!905 (derivationStepZipper!860 (derivationStepZipper!860 lt!2112324 (head!10953 lt!2112320)) (head!10953 (tail!10088 lt!2112320))) (tail!10088 (tail!10088 lt!2112320))))))

(assert (= (and d!1656412 c!880545) b!5123493))

(assert (= (and d!1656412 (not c!880545)) b!5123494))

(assert (=> d!1656412 m!6185170))

(declare-fun m!6185600 () Bool)

(assert (=> d!1656412 m!6185600))

(assert (=> b!5123493 m!6185168))

(declare-fun m!6185602 () Bool)

(assert (=> b!5123493 m!6185602))

(assert (=> b!5123494 m!6185170))

(declare-fun m!6185604 () Bool)

(assert (=> b!5123494 m!6185604))

(assert (=> b!5123494 m!6185168))

(assert (=> b!5123494 m!6185604))

(declare-fun m!6185606 () Bool)

(assert (=> b!5123494 m!6185606))

(assert (=> b!5123494 m!6185170))

(declare-fun m!6185608 () Bool)

(assert (=> b!5123494 m!6185608))

(assert (=> b!5123494 m!6185606))

(assert (=> b!5123494 m!6185608))

(declare-fun m!6185610 () Bool)

(assert (=> b!5123494 m!6185610))

(assert (=> b!5123260 d!1656412))

(declare-fun bs!1193378 () Bool)

(declare-fun d!1656414 () Bool)

(assert (= bs!1193378 (and d!1656414 d!1656340)))

(declare-fun lambda!251566 () Int)

(assert (=> bs!1193378 (= (= (head!10953 lt!2112320) (h!65723 testedP!265)) (= lambda!251566 lambda!251559))))

(declare-fun bs!1193379 () Bool)

(assert (= bs!1193379 (and d!1656414 d!1656094)))

(assert (=> bs!1193379 (= (= (head!10953 lt!2112320) lt!2112326) (= lambda!251566 lambda!251519))))

(declare-fun bs!1193380 () Bool)

(assert (= bs!1193380 (and d!1656414 d!1656356)))

(assert (=> bs!1193380 (= (= (head!10953 lt!2112320) (head!10953 lt!2112333)) (= lambda!251566 lambda!251560))))

(declare-fun bs!1193381 () Bool)

(assert (= bs!1193381 (and d!1656414 d!1656408)))

(assert (=> bs!1193381 (= (= (head!10953 lt!2112320) (h!65723 lt!2112314)) (= lambda!251566 lambda!251565))))

(declare-fun bs!1193382 () Bool)

(assert (= bs!1193382 (and d!1656414 d!1656378)))

(assert (=> bs!1193382 (= (= (head!10953 lt!2112320) (head!10953 knownP!20)) (= lambda!251566 lambda!251561))))

(assert (=> d!1656414 true))

(assert (=> d!1656414 (= (derivationStepZipper!860 lt!2112324 (head!10953 lt!2112320)) (flatMap!365 lt!2112324 lambda!251566))))

(declare-fun bs!1193383 () Bool)

(assert (= bs!1193383 d!1656414))

(declare-fun m!6185612 () Bool)

(assert (=> bs!1193383 m!6185612))

(assert (=> b!5123260 d!1656414))

(declare-fun d!1656416 () Bool)

(assert (=> d!1656416 (= (head!10953 lt!2112320) (h!65723 lt!2112320))))

(assert (=> b!5123260 d!1656416))

(declare-fun d!1656418 () Bool)

(assert (=> d!1656418 (= (tail!10088 lt!2112320) (t!372420 lt!2112320))))

(assert (=> b!5123260 d!1656418))

(declare-fun d!1656420 () Bool)

(declare-fun lt!2112543 () Int)

(assert (=> d!1656420 (>= lt!2112543 0)))

(declare-fun e!3195318 () Int)

(assert (=> d!1656420 (= lt!2112543 e!3195318)))

(declare-fun c!880546 () Bool)

(assert (=> d!1656420 (= c!880546 ((_ is Nil!59275) lt!2112450))))

(assert (=> d!1656420 (= (size!39543 lt!2112450) lt!2112543)))

(declare-fun b!5123495 () Bool)

(assert (=> b!5123495 (= e!3195318 0)))

(declare-fun b!5123496 () Bool)

(assert (=> b!5123496 (= e!3195318 (+ 1 (size!39543 (t!372420 lt!2112450))))))

(assert (= (and d!1656420 c!880546) b!5123495))

(assert (= (and d!1656420 (not c!880546)) b!5123496))

(declare-fun m!6185614 () Bool)

(assert (=> b!5123496 m!6185614))

(assert (=> b!5123225 d!1656420))

(assert (=> b!5123225 d!1656032))

(assert (=> b!5123225 d!1656270))

(declare-fun b!5123497 () Bool)

(declare-fun e!3195320 () List!59399)

(assert (=> b!5123497 (= e!3195320 lt!2112320)))

(declare-fun b!5123499 () Bool)

(declare-fun res!2181682 () Bool)

(declare-fun e!3195319 () Bool)

(assert (=> b!5123499 (=> (not res!2181682) (not e!3195319))))

(declare-fun lt!2112544 () List!59399)

(assert (=> b!5123499 (= res!2181682 (= (size!39543 lt!2112544) (+ (size!39543 (t!372420 lt!2112317)) (size!39543 lt!2112320))))))

(declare-fun d!1656422 () Bool)

(assert (=> d!1656422 e!3195319))

(declare-fun res!2181683 () Bool)

(assert (=> d!1656422 (=> (not res!2181683) (not e!3195319))))

(assert (=> d!1656422 (= res!2181683 (= (content!10541 lt!2112544) ((_ map or) (content!10541 (t!372420 lt!2112317)) (content!10541 lt!2112320))))))

(assert (=> d!1656422 (= lt!2112544 e!3195320)))

(declare-fun c!880547 () Bool)

(assert (=> d!1656422 (= c!880547 ((_ is Nil!59275) (t!372420 lt!2112317)))))

(assert (=> d!1656422 (= (++!13050 (t!372420 lt!2112317) lt!2112320) lt!2112544)))

(declare-fun b!5123500 () Bool)

(assert (=> b!5123500 (= e!3195319 (or (not (= lt!2112320 Nil!59275)) (= lt!2112544 (t!372420 lt!2112317))))))

(declare-fun b!5123498 () Bool)

(assert (=> b!5123498 (= e!3195320 (Cons!59275 (h!65723 (t!372420 lt!2112317)) (++!13050 (t!372420 (t!372420 lt!2112317)) lt!2112320)))))

(assert (= (and d!1656422 c!880547) b!5123497))

(assert (= (and d!1656422 (not c!880547)) b!5123498))

(assert (= (and d!1656422 res!2181683) b!5123499))

(assert (= (and b!5123499 res!2181682) b!5123500))

(declare-fun m!6185616 () Bool)

(assert (=> b!5123499 m!6185616))

(assert (=> b!5123499 m!6185364))

(assert (=> b!5123499 m!6184848))

(declare-fun m!6185618 () Bool)

(assert (=> d!1656422 m!6185618))

(assert (=> d!1656422 m!6185210))

(assert (=> d!1656422 m!6184854))

(declare-fun m!6185620 () Bool)

(assert (=> b!5123498 m!6185620))

(assert (=> b!5123097 d!1656422))

(declare-fun d!1656424 () Bool)

(declare-fun lt!2112545 () Int)

(assert (=> d!1656424 (>= lt!2112545 0)))

(declare-fun e!3195321 () Int)

(assert (=> d!1656424 (= lt!2112545 e!3195321)))

(declare-fun c!880548 () Bool)

(assert (=> d!1656424 (= c!880548 ((_ is Nil!59275) lt!2112385))))

(assert (=> d!1656424 (= (size!39543 lt!2112385) lt!2112545)))

(declare-fun b!5123501 () Bool)

(assert (=> b!5123501 (= e!3195321 0)))

(declare-fun b!5123502 () Bool)

(assert (=> b!5123502 (= e!3195321 (+ 1 (size!39543 (t!372420 lt!2112385))))))

(assert (= (and d!1656424 c!880548) b!5123501))

(assert (= (and d!1656424 (not c!880548)) b!5123502))

(declare-fun m!6185622 () Bool)

(assert (=> b!5123502 m!6185622))

(assert (=> b!5123094 d!1656424))

(assert (=> b!5123094 d!1656026))

(declare-fun d!1656426 () Bool)

(declare-fun lt!2112546 () Int)

(assert (=> d!1656426 (>= lt!2112546 0)))

(declare-fun e!3195322 () Int)

(assert (=> d!1656426 (= lt!2112546 e!3195322)))

(declare-fun c!880549 () Bool)

(assert (=> d!1656426 (= c!880549 ((_ is Nil!59275) lt!2112327))))

(assert (=> d!1656426 (= (size!39543 lt!2112327) lt!2112546)))

(declare-fun b!5123503 () Bool)

(assert (=> b!5123503 (= e!3195322 0)))

(declare-fun b!5123504 () Bool)

(assert (=> b!5123504 (= e!3195322 (+ 1 (size!39543 (t!372420 lt!2112327))))))

(assert (= (and d!1656426 c!880549) b!5123503))

(assert (= (and d!1656426 (not c!880549)) b!5123504))

(declare-fun m!6185624 () Bool)

(assert (=> b!5123504 m!6185624))

(assert (=> b!5123094 d!1656426))

(declare-fun b!5123505 () Bool)

(declare-fun e!3195324 () List!59399)

(assert (=> b!5123505 (= e!3195324 lt!2112317)))

(declare-fun b!5123507 () Bool)

(declare-fun res!2181684 () Bool)

(declare-fun e!3195323 () Bool)

(assert (=> b!5123507 (=> (not res!2181684) (not e!3195323))))

(declare-fun lt!2112547 () List!59399)

(assert (=> b!5123507 (= res!2181684 (= (size!39543 lt!2112547) (+ (size!39543 (t!372420 testedP!265)) (size!39543 lt!2112317))))))

(declare-fun d!1656428 () Bool)

(assert (=> d!1656428 e!3195323))

(declare-fun res!2181685 () Bool)

(assert (=> d!1656428 (=> (not res!2181685) (not e!3195323))))

(assert (=> d!1656428 (= res!2181685 (= (content!10541 lt!2112547) ((_ map or) (content!10541 (t!372420 testedP!265)) (content!10541 lt!2112317))))))

(assert (=> d!1656428 (= lt!2112547 e!3195324)))

(declare-fun c!880550 () Bool)

(assert (=> d!1656428 (= c!880550 ((_ is Nil!59275) (t!372420 testedP!265)))))

(assert (=> d!1656428 (= (++!13050 (t!372420 testedP!265) lt!2112317) lt!2112547)))

(declare-fun b!5123508 () Bool)

(assert (=> b!5123508 (= e!3195323 (or (not (= lt!2112317 Nil!59275)) (= lt!2112547 (t!372420 testedP!265))))))

(declare-fun b!5123506 () Bool)

(assert (=> b!5123506 (= e!3195324 (Cons!59275 (h!65723 (t!372420 testedP!265)) (++!13050 (t!372420 (t!372420 testedP!265)) lt!2112317)))))

(assert (= (and d!1656428 c!880550) b!5123505))

(assert (= (and d!1656428 (not c!880550)) b!5123506))

(assert (= (and d!1656428 res!2181685) b!5123507))

(assert (= (and b!5123507 res!2181684) b!5123508))

(declare-fun m!6185626 () Bool)

(assert (=> b!5123507 m!6185626))

(assert (=> b!5123507 m!6184708))

(assert (=> b!5123507 m!6184846))

(declare-fun m!6185628 () Bool)

(assert (=> d!1656428 m!6185628))

(assert (=> d!1656428 m!6185236))

(assert (=> d!1656428 m!6184852))

(declare-fun m!6185630 () Bool)

(assert (=> b!5123506 m!6185630))

(assert (=> b!5123228 d!1656428))

(assert (=> d!1656058 d!1656050))

(declare-fun d!1656430 () Bool)

(assert (=> d!1656430 (isPrefix!5642 testedP!265 knownP!20)))

(assert (=> d!1656430 true))

(declare-fun _$69!364 () Unit!150417)

(assert (=> d!1656430 (= (choose!37679 knownP!20 testedP!265 input!5745) _$69!364)))

(declare-fun bs!1193384 () Bool)

(assert (= bs!1193384 d!1656430))

(assert (=> bs!1193384 m!6184650))

(assert (=> d!1656058 d!1656430))

(assert (=> d!1656058 d!1656188))

(declare-fun d!1656432 () Bool)

(declare-fun e!3195327 () Bool)

(assert (=> d!1656432 e!3195327))

(declare-fun res!2181688 () Bool)

(assert (=> d!1656432 (=> res!2181688 e!3195327)))

(declare-fun lt!2112548 () Bool)

(assert (=> d!1656432 (= res!2181688 (not lt!2112548))))

(declare-fun e!3195326 () Bool)

(assert (=> d!1656432 (= lt!2112548 e!3195326)))

(declare-fun res!2181686 () Bool)

(assert (=> d!1656432 (=> res!2181686 e!3195326)))

(assert (=> d!1656432 (= res!2181686 ((_ is Nil!59275) (tail!10088 lt!2112314)))))

(assert (=> d!1656432 (= (isPrefix!5642 (tail!10088 lt!2112314) (tail!10088 knownP!20)) lt!2112548)))

(declare-fun b!5123509 () Bool)

(declare-fun e!3195325 () Bool)

(assert (=> b!5123509 (= e!3195326 e!3195325)))

(declare-fun res!2181689 () Bool)

(assert (=> b!5123509 (=> (not res!2181689) (not e!3195325))))

(assert (=> b!5123509 (= res!2181689 (not ((_ is Nil!59275) (tail!10088 knownP!20))))))

(declare-fun b!5123512 () Bool)

(assert (=> b!5123512 (= e!3195327 (>= (size!39543 (tail!10088 knownP!20)) (size!39543 (tail!10088 lt!2112314))))))

(declare-fun b!5123510 () Bool)

(declare-fun res!2181687 () Bool)

(assert (=> b!5123510 (=> (not res!2181687) (not e!3195325))))

(assert (=> b!5123510 (= res!2181687 (= (head!10953 (tail!10088 lt!2112314)) (head!10953 (tail!10088 knownP!20))))))

(declare-fun b!5123511 () Bool)

(assert (=> b!5123511 (= e!3195325 (isPrefix!5642 (tail!10088 (tail!10088 lt!2112314)) (tail!10088 (tail!10088 knownP!20))))))

(assert (= (and d!1656432 (not res!2181686)) b!5123509))

(assert (= (and b!5123509 res!2181689) b!5123510))

(assert (= (and b!5123510 res!2181687) b!5123511))

(assert (= (and d!1656432 (not res!2181688)) b!5123512))

(assert (=> b!5123512 m!6184764))

(assert (=> b!5123512 m!6185218))

(assert (=> b!5123512 m!6184886))

(declare-fun m!6185632 () Bool)

(assert (=> b!5123512 m!6185632))

(assert (=> b!5123510 m!6184886))

(declare-fun m!6185634 () Bool)

(assert (=> b!5123510 m!6185634))

(assert (=> b!5123510 m!6184764))

(assert (=> b!5123510 m!6185220))

(assert (=> b!5123511 m!6184886))

(declare-fun m!6185636 () Bool)

(assert (=> b!5123511 m!6185636))

(assert (=> b!5123511 m!6184764))

(assert (=> b!5123511 m!6185224))

(assert (=> b!5123511 m!6185636))

(assert (=> b!5123511 m!6185224))

(declare-fun m!6185638 () Bool)

(assert (=> b!5123511 m!6185638))

(assert (=> b!5123233 d!1656432))

(declare-fun d!1656434 () Bool)

(assert (=> d!1656434 (= (tail!10088 lt!2112314) (t!372420 lt!2112314))))

(assert (=> b!5123233 d!1656434))

(assert (=> b!5123233 d!1656218))

(declare-fun d!1656436 () Bool)

(assert (=> d!1656436 (= lt!2112328 lt!2112331)))

(assert (=> d!1656436 true))

(declare-fun _$63!1261 () Unit!150417)

(assert (=> d!1656436 (= (choose!37682 testedP!265 lt!2112328 testedP!265 lt!2112331 input!5745) _$63!1261)))

(assert (=> d!1656200 d!1656436))

(assert (=> d!1656200 d!1656180))

(declare-fun d!1656438 () Bool)

(assert (=> d!1656438 (= (isEmpty!31947 lt!2112320) ((_ is Nil!59275) lt!2112320))))

(assert (=> d!1656194 d!1656438))

(declare-fun d!1656440 () Bool)

(declare-fun e!3195330 () Bool)

(assert (=> d!1656440 e!3195330))

(declare-fun res!2181692 () Bool)

(assert (=> d!1656440 (=> res!2181692 e!3195330)))

(declare-fun lt!2112549 () Bool)

(assert (=> d!1656440 (= res!2181692 (not lt!2112549))))

(declare-fun e!3195329 () Bool)

(assert (=> d!1656440 (= lt!2112549 e!3195329)))

(declare-fun res!2181690 () Bool)

(assert (=> d!1656440 (=> res!2181690 e!3195329)))

(assert (=> d!1656440 (= res!2181690 ((_ is Nil!59275) (tail!10088 lt!2112314)))))

(assert (=> d!1656440 (= (isPrefix!5642 (tail!10088 lt!2112314) (tail!10088 input!5745)) lt!2112549)))

(declare-fun b!5123513 () Bool)

(declare-fun e!3195328 () Bool)

(assert (=> b!5123513 (= e!3195329 e!3195328)))

(declare-fun res!2181693 () Bool)

(assert (=> b!5123513 (=> (not res!2181693) (not e!3195328))))

(assert (=> b!5123513 (= res!2181693 (not ((_ is Nil!59275) (tail!10088 input!5745))))))

(declare-fun b!5123516 () Bool)

(assert (=> b!5123516 (= e!3195330 (>= (size!39543 (tail!10088 input!5745)) (size!39543 (tail!10088 lt!2112314))))))

(declare-fun b!5123514 () Bool)

(declare-fun res!2181691 () Bool)

(assert (=> b!5123514 (=> (not res!2181691) (not e!3195328))))

(assert (=> b!5123514 (= res!2181691 (= (head!10953 (tail!10088 lt!2112314)) (head!10953 (tail!10088 input!5745))))))

(declare-fun b!5123515 () Bool)

(assert (=> b!5123515 (= e!3195328 (isPrefix!5642 (tail!10088 (tail!10088 lt!2112314)) (tail!10088 (tail!10088 input!5745))))))

(assert (= (and d!1656440 (not res!2181690)) b!5123513))

(assert (= (and b!5123513 res!2181693) b!5123514))

(assert (= (and b!5123514 res!2181691) b!5123515))

(assert (= (and d!1656440 (not res!2181692)) b!5123516))

(assert (=> b!5123516 m!6184876))

(assert (=> b!5123516 m!6185216))

(assert (=> b!5123516 m!6184886))

(assert (=> b!5123516 m!6185632))

(assert (=> b!5123514 m!6184886))

(assert (=> b!5123514 m!6185634))

(assert (=> b!5123514 m!6184876))

(assert (=> b!5123514 m!6185222))

(assert (=> b!5123515 m!6184886))

(assert (=> b!5123515 m!6185636))

(assert (=> b!5123515 m!6184876))

(assert (=> b!5123515 m!6185226))

(assert (=> b!5123515 m!6185636))

(assert (=> b!5123515 m!6185226))

(declare-fun m!6185640 () Bool)

(assert (=> b!5123515 m!6185640))

(assert (=> b!5123110 d!1656440))

(assert (=> b!5123110 d!1656434))

(assert (=> b!5123110 d!1656220))

(declare-fun d!1656442 () Bool)

(assert (=> d!1656442 (= (isEmpty!31947 lt!2112333) ((_ is Nil!59275) lt!2112333))))

(assert (=> d!1656034 d!1656442))

(declare-fun condSetEmpty!30511 () Bool)

(assert (=> setNonEmpty!30509 (= condSetEmpty!30511 (= setRest!30509 ((as const (Array Context!7242 Bool)) false)))))

(declare-fun setRes!30511 () Bool)

(assert (=> setNonEmpty!30509 (= tp!1429308 setRes!30511)))

(declare-fun setIsEmpty!30511 () Bool)

(assert (=> setIsEmpty!30511 setRes!30511))

(declare-fun setNonEmpty!30511 () Bool)

(declare-fun setElem!30511 () Context!7242)

(declare-fun tp!1429325 () Bool)

(declare-fun e!3195331 () Bool)

(assert (=> setNonEmpty!30511 (= setRes!30511 (and tp!1429325 (inv!78773 setElem!30511) e!3195331))))

(declare-fun setRest!30511 () (InoxSet Context!7242))

(assert (=> setNonEmpty!30511 (= setRest!30509 ((_ map or) (store ((as const (Array Context!7242 Bool)) false) setElem!30511 true) setRest!30511))))

(declare-fun b!5123517 () Bool)

(declare-fun tp!1429324 () Bool)

(assert (=> b!5123517 (= e!3195331 tp!1429324)))

(assert (= (and setNonEmpty!30509 condSetEmpty!30511) setIsEmpty!30511))

(assert (= (and setNonEmpty!30509 (not condSetEmpty!30511)) setNonEmpty!30511))

(assert (= setNonEmpty!30511 b!5123517))

(declare-fun m!6185642 () Bool)

(assert (=> setNonEmpty!30511 m!6185642))

(declare-fun b!5123531 () Bool)

(declare-fun e!3195334 () Bool)

(declare-fun tp!1429339 () Bool)

(declare-fun tp!1429340 () Bool)

(assert (=> b!5123531 (= e!3195334 (and tp!1429339 tp!1429340))))

(declare-fun b!5123528 () Bool)

(assert (=> b!5123528 (= e!3195334 tp_is_empty!37747)))

(declare-fun b!5123529 () Bool)

(declare-fun tp!1429338 () Bool)

(declare-fun tp!1429337 () Bool)

(assert (=> b!5123529 (= e!3195334 (and tp!1429338 tp!1429337))))

(assert (=> b!5123274 (= tp!1429313 e!3195334)))

(declare-fun b!5123530 () Bool)

(declare-fun tp!1429336 () Bool)

(assert (=> b!5123530 (= e!3195334 tp!1429336)))

(assert (= (and b!5123274 ((_ is ElementMatch!14237) (h!65724 (exprs!4121 setElem!30501)))) b!5123528))

(assert (= (and b!5123274 ((_ is Concat!23082) (h!65724 (exprs!4121 setElem!30501)))) b!5123529))

(assert (= (and b!5123274 ((_ is Star!14237) (h!65724 (exprs!4121 setElem!30501)))) b!5123530))

(assert (= (and b!5123274 ((_ is Union!14237) (h!65724 (exprs!4121 setElem!30501)))) b!5123531))

(declare-fun b!5123532 () Bool)

(declare-fun e!3195335 () Bool)

(declare-fun tp!1429341 () Bool)

(declare-fun tp!1429342 () Bool)

(assert (=> b!5123532 (= e!3195335 (and tp!1429341 tp!1429342))))

(assert (=> b!5123274 (= tp!1429314 e!3195335)))

(assert (= (and b!5123274 ((_ is Cons!59276) (t!372421 (exprs!4121 setElem!30501)))) b!5123532))

(declare-fun b!5123533 () Bool)

(declare-fun e!3195336 () Bool)

(declare-fun tp!1429343 () Bool)

(assert (=> b!5123533 (= e!3195336 (and tp_is_empty!37747 tp!1429343))))

(assert (=> b!5123279 (= tp!1429317 e!3195336)))

(assert (= (and b!5123279 ((_ is Cons!59275) (t!372420 (t!372420 testedP!265)))) b!5123533))

(declare-fun b!5123534 () Bool)

(declare-fun e!3195337 () Bool)

(declare-fun tp!1429344 () Bool)

(assert (=> b!5123534 (= e!3195337 (and tp_is_empty!37747 tp!1429344))))

(assert (=> b!5123283 (= tp!1429323 e!3195337)))

(assert (= (and b!5123283 ((_ is Cons!59275) (t!372420 (t!372420 input!5745)))) b!5123534))

(declare-fun b!5123538 () Bool)

(declare-fun e!3195338 () Bool)

(declare-fun tp!1429348 () Bool)

(declare-fun tp!1429349 () Bool)

(assert (=> b!5123538 (= e!3195338 (and tp!1429348 tp!1429349))))

(declare-fun b!5123535 () Bool)

(assert (=> b!5123535 (= e!3195338 tp_is_empty!37747)))

(declare-fun b!5123536 () Bool)

(declare-fun tp!1429347 () Bool)

(declare-fun tp!1429346 () Bool)

(assert (=> b!5123536 (= e!3195338 (and tp!1429347 tp!1429346))))

(assert (=> b!5123280 (= tp!1429318 e!3195338)))

(declare-fun b!5123537 () Bool)

(declare-fun tp!1429345 () Bool)

(assert (=> b!5123537 (= e!3195338 tp!1429345)))

(assert (= (and b!5123280 ((_ is ElementMatch!14237) (h!65724 (exprs!4121 setElem!30502)))) b!5123535))

(assert (= (and b!5123280 ((_ is Concat!23082) (h!65724 (exprs!4121 setElem!30502)))) b!5123536))

(assert (= (and b!5123280 ((_ is Star!14237) (h!65724 (exprs!4121 setElem!30502)))) b!5123537))

(assert (= (and b!5123280 ((_ is Union!14237) (h!65724 (exprs!4121 setElem!30502)))) b!5123538))

(declare-fun b!5123539 () Bool)

(declare-fun e!3195339 () Bool)

(declare-fun tp!1429350 () Bool)

(declare-fun tp!1429351 () Bool)

(assert (=> b!5123539 (= e!3195339 (and tp!1429350 tp!1429351))))

(assert (=> b!5123280 (= tp!1429319 e!3195339)))

(assert (= (and b!5123280 ((_ is Cons!59276) (t!372421 (exprs!4121 setElem!30502)))) b!5123539))

(declare-fun b!5123540 () Bool)

(declare-fun e!3195340 () Bool)

(declare-fun tp!1429352 () Bool)

(declare-fun tp!1429353 () Bool)

(assert (=> b!5123540 (= e!3195340 (and tp!1429352 tp!1429353))))

(assert (=> b!5123269 (= tp!1429307 e!3195340)))

(assert (= (and b!5123269 ((_ is Cons!59276) (exprs!4121 setElem!30509))) b!5123540))

(declare-fun condSetEmpty!30512 () Bool)

(assert (=> setNonEmpty!30510 (= condSetEmpty!30512 (= setRest!30510 ((as const (Array Context!7242 Bool)) false)))))

(declare-fun setRes!30512 () Bool)

(assert (=> setNonEmpty!30510 (= tp!1429321 setRes!30512)))

(declare-fun setIsEmpty!30512 () Bool)

(assert (=> setIsEmpty!30512 setRes!30512))

(declare-fun e!3195341 () Bool)

(declare-fun tp!1429355 () Bool)

(declare-fun setElem!30512 () Context!7242)

(declare-fun setNonEmpty!30512 () Bool)

(assert (=> setNonEmpty!30512 (= setRes!30512 (and tp!1429355 (inv!78773 setElem!30512) e!3195341))))

(declare-fun setRest!30512 () (InoxSet Context!7242))

(assert (=> setNonEmpty!30512 (= setRest!30510 ((_ map or) (store ((as const (Array Context!7242 Bool)) false) setElem!30512 true) setRest!30512))))

(declare-fun b!5123541 () Bool)

(declare-fun tp!1429354 () Bool)

(assert (=> b!5123541 (= e!3195341 tp!1429354)))

(assert (= (and setNonEmpty!30510 condSetEmpty!30512) setIsEmpty!30512))

(assert (= (and setNonEmpty!30510 (not condSetEmpty!30512)) setNonEmpty!30512))

(assert (= setNonEmpty!30512 b!5123541))

(declare-fun m!6185644 () Bool)

(assert (=> setNonEmpty!30512 m!6185644))

(declare-fun b!5123542 () Bool)

(declare-fun e!3195342 () Bool)

(declare-fun tp!1429356 () Bool)

(declare-fun tp!1429357 () Bool)

(assert (=> b!5123542 (= e!3195342 (and tp!1429356 tp!1429357))))

(assert (=> b!5123281 (= tp!1429320 e!3195342)))

(assert (= (and b!5123281 ((_ is Cons!59276) (exprs!4121 setElem!30510))) b!5123542))

(declare-fun b!5123543 () Bool)

(declare-fun e!3195343 () Bool)

(declare-fun tp!1429358 () Bool)

(assert (=> b!5123543 (= e!3195343 (and tp_is_empty!37747 tp!1429358))))

(assert (=> b!5123282 (= tp!1429322 e!3195343)))

(assert (= (and b!5123282 ((_ is Cons!59275) (t!372420 (t!372420 knownP!20)))) b!5123543))

(declare-fun b_lambda!199021 () Bool)

(assert (= b_lambda!199019 (or d!1656192 b_lambda!199021)))

(declare-fun bs!1193385 () Bool)

(declare-fun d!1656444 () Bool)

(assert (= bs!1193385 (and d!1656444 d!1656192)))

(declare-fun validRegex!6213 (Regex!14237) Bool)

(assert (=> bs!1193385 (= (dynLambda!23607 lambda!251538 (h!65724 (exprs!4121 setElem!30502))) (validRegex!6213 (h!65724 (exprs!4121 setElem!30502))))))

(declare-fun m!6185646 () Bool)

(assert (=> bs!1193385 m!6185646))

(assert (=> b!5123440 d!1656444))

(declare-fun b_lambda!199023 () Bool)

(assert (= b_lambda!199017 (or d!1656178 b_lambda!199023)))

(declare-fun bs!1193386 () Bool)

(declare-fun d!1656446 () Bool)

(assert (= bs!1193386 (and d!1656446 d!1656178)))

(assert (=> bs!1193386 (= (dynLambda!23607 lambda!251522 (h!65724 (exprs!4121 setElem!30501))) (validRegex!6213 (h!65724 (exprs!4121 setElem!30501))))))

(declare-fun m!6185648 () Bool)

(assert (=> bs!1193386 m!6185648))

(assert (=> b!5123348 d!1656446))

(check-sat (not d!1656280) (not b!5123529) (not d!1656318) (not b!5123459) (not b!5123331) (not d!1656410) (not d!1656284) (not b!5123498) (not b!5123328) (not b!5123297) (not b!5123357) (not d!1656274) (not b!5123295) (not b!5123419) (not b!5123302) (not b!5123476) (not d!1656422) (not b!5123510) (not d!1656264) (not b!5123489) (not d!1656340) (not b!5123358) (not d!1656388) (not b!5123402) (not b!5123437) (not b!5123433) (not d!1656372) (not d!1656300) (not b!5123450) (not b!5123466) (not d!1656324) (not b!5123343) (not b!5123462) (not b!5123436) (not b!5123333) (not b!5123504) (not d!1656430) (not b_lambda!199021) (not d!1656282) (not d!1656428) (not d!1656276) (not b!5123435) (not b!5123425) (not b!5123291) (not bs!1193386) (not b!5123507) (not b!5123405) (not b!5123530) (not b!5123455) (not b!5123399) (not b!5123451) (not d!1656226) (not b!5123310) (not b!5123389) (not b!5123536) (not b!5123474) (not b!5123539) (not b!5123515) (not b!5123370) (not b!5123488) (not b!5123494) (not b!5123493) (not b!5123410) (not b!5123486) (not b_lambda!199023) (not b!5123339) (not b!5123541) (not d!1656392) (not b!5123506) (not d!1656354) (not b!5123452) (not b!5123381) (not b!5123446) (not b!5123514) (not d!1656306) (not b!5123461) (not b!5123351) (not b!5123477) (not b!5123289) (not b!5123502) tp_is_empty!37747 (not b!5123395) (not b!5123384) (not b!5123354) (not d!1656248) (not b!5123465) (not b!5123361) (not d!1656408) (not b!5123321) (not b!5123326) (not b!5123538) (not bs!1193385) (not d!1656326) (not d!1656256) (not b!5123458) (not d!1656286) (not b!5123496) (not b!5123484) (not b!5123468) (not d!1656242) (not b!5123317) (not d!1656252) (not b!5123390) (not d!1656316) (not b!5123533) (not b!5123293) (not b!5123415) (not b!5123517) (not b!5123322) (not b!5123531) (not b!5123365) (not b!5123480) (not d!1656412) (not d!1656228) (not b!5123301) (not setNonEmpty!30512) (not b!5123482) (not b!5123400) (not b!5123469) (not b!5123499) (not d!1656362) (not b!5123309) (not b!5123349) (not b!5123413) (not b!5123439) (not d!1656404) (not d!1656374) (not d!1656414) (not b!5123421) (not b!5123299) (not d!1656288) (not setNonEmpty!30511) (not b!5123429) (not b!5123441) (not d!1656364) (not b!5123491) (not d!1656382) (not d!1656370) (not b!5123543) (not b!5123512) (not d!1656384) (not d!1656244) (not d!1656230) (not d!1656356) (not b!5123325) (not d!1656314) (not b!5123447) (not b!5123472) (not b!5123318) (not d!1656376) (not d!1656258) (not b!5123540) (not b!5123422) (not b!5123375) (not b!5123369) (not b!5123532) (not b!5123444) (not b!5123464) (not d!1656250) (not d!1656278) (not b!5123427) (not d!1656312) (not b!5123366) (not b!5123305) (not b!5123303) (not b!5123454) (not b!5123315) (not b!5123383) (not b!5123341) (not b!5123431) (not b!5123379) (not b!5123335) (not d!1656202) (not b!5123542) (not b!5123377) (not b!5123352) (not b!5123534) (not d!1656378) (not b!5123516) (not b!5123307) (not b!5123537) (not b!5123511) (not b!5123362) (not b!5123393) (not b!5123373) (not b!5123387) (not b!5123473) (not b!5123417) (not b!5123396) (not b!5123336))
(check-sat)
